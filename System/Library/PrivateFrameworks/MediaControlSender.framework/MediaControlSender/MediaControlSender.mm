void sub_25856F664(_DWORD *a1)
{
  v1 = a1[2] + 1520698633 * ((2 * (a1 & 0x48FF6608) - a1 + 922786295) ^ 0x9CEE8172);
  v2 = (*(*a1 + 16) >> 3) & 0x3F;
  *(*a1 + 24 + v2) = 0x80;
  __asm { BRAA            X13, X17 }
}

uint64_t sub_25856F810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17, uint64_t a18, uint64_t a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v35 = v34 - 152;
  STACK[0xD28] = a17;
  *(v34 - 144) = (a20 + 2089148240) ^ (439532179 * ((v34 - 152) ^ 0xDEA63D82));
  (*(a1 + 8 * (a20 + 1120)))(v34 - 152);
  v36 = 2021301169 * ((217174587 - (v35 | 0xCF1D23B) + (v35 | 0xF30E2DC4)) ^ 0x78F87A64);
  STACK[0xD30] = a17;
  STACK[0xD28] = *(&off_286999DF0 + ((a20 + 519) ^ 0x3C7)) - 8;
  *(v34 - 136) = v36 + 469501837;
  *(v34 - 132) = (a20 + 227) ^ v36;
  (*(a34 + 8 * (a20 + 1083)))(v34 - 152);
  v37 = 2021301169 * ((~(v35 | 0x33F44066) + (v35 & 0x33F44066)) ^ 0x47FDE839);
  STACK[0xD28] = a12;
  *(v34 - 136) = v37 + 469501793;
  *(v34 - 132) = (a20 + 227) ^ v37;
  STACK[0xD30] = a17;
  (*(a34 + 8 * (a20 + 1083)))(v34 - 152);
  *a16 = *a17;
  LODWORD(STACK[0xC44]) = STACK[0xBEC];
  LODWORD(STACK[0xC48]) = STACK[0xBF0];
  STACK[0xC4C] = STACK[0xBF4];
  LODWORD(STACK[0xC54]) = STACK[0xBFC];
  v38 = *(a17 + 40);
  *(a16 + 24) = *(a17 + 24);
  *(a16 + 40) = v38;
  return (*(a34 + 8 * ((51 * ((((((a20 - 2009127629) & 0x77C0DBBD) - 494) | 0x304u) ^ 0x38ELL) == 64)) ^ (a20 - 2009127629) & 0x77C0DBBD)))(a34, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_25856FA6C@<X0>(int a1@<W1>, uint64_t a2@<X2>, int a3@<W4>, int a4@<W5>, int a5@<W8>)
{
  v10 = (v7 + 4 * v6);
  v11 = v6 + 1;
  *v10 = v10[397] ^ v8 ^ *(a2 + 4 * (*(v7 + 4 * v11) & 1)) ^ ((*(v7 + 4 * v11) & (((a5 - 434) | a1) + a3) | v5 & 0x80000000) >> 1);
  return (*(v9 + 8 * (((v11 == 227) * a4) ^ a5)))();
}

uint64_t sub_25856FACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, char a14, char a15, char a16, char a17, char a18, char a19, char a20, char a21, char a22, char a23, char a24, char a25, char a26, char a27)
{
  v30 = *(*(v27 + 8 * (v28 - 979)) - 4);
  a13 = -95 * *v30 - 25;
  a14 = -95 * v30[1] - 25;
  a15 = -95 * v30[2] - 25;
  a16 = v30[3] * (((3 * (v28 ^ 0x61) - 68) & 0x35) - 95) - 25;
  a17 = -95 * v30[4] - 25;
  a18 = -95 * v30[5] - 25;
  a19 = -95 * v30[6] - 25;
  a20 = -95 * v30[7] - 25;
  a21 = -95 * v30[8] - 25;
  a22 = -95 * v30[9] - 25;
  a23 = -95 * v30[10] - 25;
  a24 = -95 * v30[11] - 25;
  a25 = -95 * v30[12] - 25;
  a26 = -95 * v30[13] - 25;
  a27 = -95 * v30[14] - 25;
  v31 = (*(v29 + 8 * (v28 ^ 0x238)))();
  v32 = (*(v29 + 8 * (v28 + 509)))(0, &a13, v31);
  return (*(v29 + 8 * ((125 * (v32 == 0)) ^ v28)))(v32, v33, v34, v35, v36);
}

uint64_t sub_25856FC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, _DWORD *a17)
{
  *v20 = *a17;
  LODWORD(STACK[0xC44]) = STACK[0xBEC];
  LODWORD(STACK[0xC48]) = STACK[0xBF0];
  *(v17 + 2892) = *(v17 + 2804);
  LODWORD(STACK[0xC54]) = STACK[0xBFC];
  v21 = *(v18 - 88);
  *(v18 - 1) = *(v18 - 104);
  *v18 = v21;
  return (*(a3 + 8 * ((254 * (((16 * ((v19 | 0x100u) - 2)) ^ 0x37A0) != 32)) ^ ((v19 | 0x100) - 2))))();
}

uint64_t sub_25856FC0C@<X0>(uint64_t a1@<X1>, unsigned int *a2@<X3>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, _DWORD *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  *a18 = 1;
  v29 = *a2;
  *(v28 - 120) = a6;
  *(v28 - 144) = (a3 + 1804447514) ^ a7;
  *(v28 - 128) = ((a3 + 1804447475) ^ 0x59) + a7;
  *(v28 - 124) = a7 | 1;
  *(v28 - 104) = -310332759 - a7 + a3;
  *(v28 - 112) = a3 + 1804447475 - a7;
  *(v28 - 136) = v29 - a7;
  v30 = (*(a1 + 8 * (a3 ^ v27)))(v28 - 144);
  return (*(a27 + 8 * *(v28 - 108)))(v30);
}

uint64_t sub_25856FC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v31 = *(v26 + 4 * (v27 - 1));
  *(v26 + 4 * v27) = ((1566083941 * (v31 ^ (v31 >> 30))) ^ *(v26 + 4 * v27)) - v27;
  v32 = v30 - 152;
  *(v32 + 24) = a25;
  *(v30 - 112) = 1166607131 - v28 + v25;
  *(v32 + 8) = v27 + 1 - v28;
  *(v30 - 120) = v25 - 2038580541 - v28;
  *(v30 - 152) = (v25 - 2038580755) ^ v28;
  *(v30 - 136) = v28 + v25 - 2038580541 - 75;
  *(v30 - 132) = v28 ^ 1;
  v33 = (*(v29 + 8 * (v25 ^ 0xCB)))(v30 - 152);
  return (*(v29 + 8 * *(v30 - 116)))(v33);
}

uint64_t sub_25856FD00(uint64_t a1, int a2)
{
  v6 = (v4 + 32);
  v7 = (a1 + 32);
  v8 = *v7;
  *(v6 - 1) = *(v7 - 1);
  *v6 = v8;
  return (*(v5 + 8 * (((v3 != 32) * a2) ^ v2)))();
}

uint64_t sub_25856FD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  *(v23 - 136) = (v21 + 623) ^ (1021229753 * ((v23 - 144) ^ 0xBEEDBBEA));
  *(v23 - 132) = ((((a20 ^ 0xF7) - 43) ^ ((a20 ^ 0xA) + 42) ^ (a20 + ((v21 + 102) ^ 0x53) - 50)) - 119) ^ (-71 * ((v23 + 112) ^ 0xEA));
  *(v23 - 144) = a1;
  *(v23 - 120) = v22 + 144;
  *(v23 - 131) = 93 - -71 * ((v23 + 112) ^ 0xEA);
  v24 = (*(v20 + 8 * (v21 + 902)))(v23 - 144);
  return (*(v20 + 8 * ((79 * (*(v23 - 128) != 95751194)) ^ v21)))(v24);
}

uint64_t sub_25856FFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, _DWORD *a27, uint64_t a28, _DWORD *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, unint64_t a45, unint64_t a46)
{
  *a27 = *a29;
  a27[1] = a29[1];
  a27[2] = a29[2];
  a27[3] = a29[3];
  a27[4] = a29[4];
  a27[5] = a29[5];
  return (*(v47 + 8 * (((v46 - 830) * (a46 < a45)) ^ v46)))();
}

uint64_t sub_258570050@<X0>(int a1@<W8>)
{
  *(v2 - 7 + ~v5 + v3) = veor_s8(*(v1 - 7 + ~v5 + v3), 0x9C9C9C9C9C9C9C9CLL);
  v7 = ((a1 + 6) ^ 0xDDLL) + v5 == v3 - (v4 & 7);
  return (*(v6 + 8 * (((2 * v7) | (16 * v7)) ^ a1)))();
}

uint64_t sub_2585700A8@<X0>(int a1@<W8>)
{
  v6 = v1;
  v5 = a1 + 827685407 * (((&v5 | 0x157FA1F5) - &v5 + (&v5 & 0xEA805E08)) ^ 0xEFD23A5) + 615;
  result = (*(v2 + 8 * (a1 ^ 0x4F9)))(&v5);
  *(v3 + 4) = 95751194;
  return result;
}

uint64_t sub_258570114(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a1 + a8 - 1);
  v16 = (v15 ^ v13) + (v14 & (2 * v15)) - 12;
  v17 = v15 - 97;
  v18 = v15 + 3;
  if (((((((v8 + v9 - 96) ^ (v8 - 97)) + v11) & v12) ^ a4) & 0xFEu) <= v17)
  {
    v19 = v16;
  }

  else
  {
    v19 = v18;
  }

  return (*(v10 + 8 * ((((v19 - 100) < 6u) * a5) ^ (v8 + v9 - 352) ^ (v8 + 415))))();
}

uint64_t sub_25857019C()
{
  *(v4 - 152) = 55 * (((~(v4 + 88) | 0x28) + ((v4 + 88) | 0xD7)) ^ 0x9C) + (v0 + (v1 ^ 0xA1) - 5) * *(v2 + 6) + 5;
  *(v4 - 164) = (v1 + 1912812201) ^ (1511064119 * (((~(v4 - 168) | 0x3C1D5D28) + ((v4 - 168) | 0xC3E2A2D7)) ^ 0x4B9DFD9C));
  *(v4 - 160) = v2;
  v5 = (*(v3 + 8 * (v1 + 1328)))(v4 - 168);
  return (*(v3 + 8 * ((1223 * (*(v4 - 168) == 293435294)) ^ v1)))(v5);
}

uint64_t sub_258570334()
{
  v5 = (v1 + 314) - 1089 + v0;
  v6 = *(v2 + v5 - 15);
  v7 = *(v2 + v5 - 31);
  v8 = v4 - 184 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(v3 + 8 * ((52 * ((v0 & 0x7FFFFFE0) == 32)) ^ (v1 + 25))))();
}

uint64_t sub_258570390(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = a2 ^ v5;
  v11 = (v6 - v4) < 0x20 || v9 < 8;
  return (*(v8 + 8 * (((a4 + (v7 ^ 0xD240389F) + ((v7 - 1055) | 0x42A) - 1203) * v11) ^ v7)))();
}

uint64_t sub_2585703E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  (*(a4 + 8 * ((v34 + 790) ^ 0x58085595)))(a13 + 0x4094302000004DLL, 0x100004077774924);
  v35 = (*(a32 + 8 * ((v34 - 26) ^ 0x58085595)))();
  *v33 = v35;
  v33[1] = 1812433253 * ((v35 >> 30) ^ v35) + 1;
  return (*(a32 + 6096))(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, v32, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_2585704B4(uint64_t result)
{
  v1 = *(result + 8) ^ (44841361 * ((-2 - ((result | 0x365F344C) + (~result | 0xC9A0CBB3))) ^ 0xA9CE36EF));
  v2 = *result;
  *v2 = HIBYTE(v1) ^ 0x16;
  v2[1] = BYTE2(v1) ^ 0x44;
  v2[2] = BYTE1(v1) ^ 0xF6;
  v2[3] = v1 ^ 0x38;
  return result;
}

void Mib5yocT()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = *(&off_286999DF0 + ((-119 * (dword_27F93D430 ^ 0x98 ^ dword_27F948460)) ^ byte_2585D2120[byte_2585CFC50[(-119 * (dword_27F93D430 ^ 0x98 ^ dword_27F948460))] ^ 0x8D]) - 215);
  v1 = *(&off_286999DF0 + (*(off_286999E98 + (*(off_28699A160 + (-119 * ((dword_27F948460 + *v0) ^ 0x98))) ^ 0x7Au) - 8) ^ (-119 * ((dword_27F948460 + *v0) ^ 0x98))) + 91);
  v2 = (*(v1 - 4) - *v0) ^ &v4;
  *v0 = (1667229833 * v2) ^ 0xD89E539CF9C77798;
  *(v1 - 4) = 1667229833 * (v2 ^ 0xD89E539CF9C77798);
  v5[1] = 1159261966 - 439532179 * ((v5 + 563738863 - 2 * (v5 & 0x2199F8EF)) ^ 0xFF3FC56D);
  LOBYTE(v1) = -119 * ((*(v1 - 4) - *v0) ^ 0x98);
  v3 = *(&off_286999DF0 + ((-119 * (dword_27F93D430 ^ 0x98 ^ dword_27F948460)) ^ byte_2585C7280[byte_2585D2020[(-119 * (dword_27F93D430 ^ 0x98 ^ dword_27F948460))] ^ 0x29]) + 61);
  (*(v3 + 8 * ((*(off_286999EF8 + (*(off_28699A180 + v1 - 4) ^ 0x74u) - 12) ^ v1) + 1398)))(v5);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_25857075C@<X0>(uint64_t a1@<X3>, _OWORD *a2@<X4>, uint64_t a3@<X8>)
{
  v7 = a2[1];
  v8 = (a1 + a3);
  *v8 = *a2;
  v8[1] = v7;
  LODWORD(v8) = (v5 & 0x60) - v4 == -850;
  return (*(v6 + 8 * ((2 * v8) | (4 * v8) | v3)))();
}

uint64_t sub_258570AC0(int a1)
{
  *(v1 + 4) = 0x396965E2C380BFCLL;
  *v1 = 20;
  v3 = ((a1 - 1583722669) & 0x5E65B166) + 12;
  v5 = (4 << ((((a1 + 83) & 0x66) - 1) & 0x55 ^ 0x54)) >= 8 && v1 != -12;
  v6 = *(v2 + 8 * ((22 * v5) ^ v3));
  return v6(v6, 283, 156, -1172284735);
}

uint64_t sub_258570C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  *(v10 + 263) = (&a10 ^ 0xBA) * (&a10 + 17);
  *(v10 + 262) = (&a10 + ((v12 - 33) ^ 0x28)) * (&a10 ^ 0xBB);
  return (*(v11 + 8 * ((v12 - 68) ^ 0x4C)))();
}

uint64_t sub_258570CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, unsigned int a12, char *a13, uint64_t a14, uint64_t a15, int a16)
{
  a12 = v20 + 439532179 * ((((2 * &a12) | 0x581215C6) - &a12 - 738790115) ^ 0xF2AF3761) + 713;
  a14 = v17;
  a15 = v21 + v16;
  a13 = &a10;
  v22 = (*(v18 + 8 * (v20 + 1283)))(&a12);
  return (*(v18 + 8 * ((891 * (a16 == ((v20 - 795101498) & 0x2F644D1D ^ v19))) ^ v20)))(v22);
}

uint64_t sub_258570D48(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 12);
  *(v6 - 144) = (v5 + 1613849755) ^ (2072138273 * ((2 * ((v6 - 144) & 0x75CC798) - (v6 - 144) + 2023962727) ^ 0x91169A84));
  *(v6 - 135) = (v7 ^ 0xFC) - 33 * ((2 * ((v6 + 112) & 0x98) - (v6 + 112) + 103) ^ 0x84) + ((2 * v7) & 0xF8) + 48;
  *(v6 - 136) = ((((v3 ^ 0xF9) - 117) ^ ((v3 ^ 3) + 113) ^ ((v3 ^ 0x7B ^ (v5 + 120) ^ 3) - 110)) - 48) ^ (33 * ((2 * ((v6 + 112) & 0x98) - (v6 + 112) + 103) ^ 0x84));
  v8 = (*(v4 + 8 * (v5 + 976)))(v6 - 144);
  return (*(v4 + 8 * ((1783 * (*(v6 - 140) == 95751194)) ^ v5)))(v8, a2);
}

uint64_t sub_258570EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v12 + 1) = 5;
  *v11 = 0;
  v14 = bswap32(*(v10 + 8));
  v15 = (v14 + v10 + 11);
  *v15 = (&a9 ^ 0xBA) * (&a9 + 17);
  *(v15 - 1) = (&a9 + ((((v13 - 118) ^ 0x61) - 109) & 0xFB) + 90) * (&a9 ^ 0xBB);
  return (*(v9 + 8 * ((97 * (((v14 + 12) & (((v13 + 650) ^ 0x61u) + 0x1FFFFFCD5)) != 2)) ^ (v13 + 650) ^ 0x61)))();
}

uint64_t sub_258575FDC(unint64_t a1, unsigned int a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v12 = a1 < a7;
  *(v7 + v11) = a3;
  if (v12 == v11 + 1 > (v9 ^ a2) + a4)
  {
    v12 = v8 + v11 + 847 < a1;
  }

  return (*(v10 + 8 * ((2 * v12) | (8 * v12) | v9)))();
}

uint64_t sub_258576030()
{
  v4 = v3 + 1618189698 + ((v1 - 2105750990) & 0x7D83350D);
  v6 = v4 > 0xCB4A77CA && -884312053 - v0 > v4;
  return (*(v2 + 8 * ((28 * v6) ^ v1)))();
}

uint64_t sub_2585760D4@<X0>(unsigned int a1@<W0>, unsigned int a2@<W8>)
{
  v9 = a1 < v8;
  v10 = *(v4 + v6);
  v11 = v6 + 1;
  *(v3 + a2) = v10 - ((v10 << (((v5 - 82) ^ 0x11) & 0xB5)) & 0x38) - 100;
  if (v9 == v11 > v7)
  {
    v9 = v11 + v8 < a1;
  }

  return (*(v2 + 8 * (v5 | (4 * !v9))))();
}

uint64_t sub_258576148(__n128 a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v18.n128_u64[0] = 0x9C9C9C9C9C9C9C9CLL;
  v18.n128_u64[1] = 0x9C9C9C9C9C9C9C9CLL;
  return (*(v16 + 8 * ((228 * (a15 - ((((v15 + 350) ^ 0x369uLL) + v17) << ((6 * ((v15 + 94) ^ 0x43)) ^ 4u)) < 0x20)) ^ (v15 + 350))))(a1, a2, v18);
}

uint64_t sub_2585761D8@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W6>, int a5@<W8>)
{
  HIDWORD(v16) = a1 ^ v15;
  LODWORD(v16) = a1 ^ 0x68000000;
  v17 = (v7 ^ 0x20D8D07C) & (a4 ^ a5) ^ a4 & 0xB1F01719;
  v18 = (a3 ^ v14) + (v16 >> 27) + (*(v5 + 4 * (a2 + v11)) ^ v13) + (v17 & 0x57281115 ^ 0x46081014 ^ (v17 ^ 0x6EDFF8FE) & (v6 ^ 0x39FF298F) | a4 & 0x45045CF3 ^ 0x44041892 ^ (v7 ^ 0x2BD36469) & (a4 ^ v14)) + 142371045;
  v19 = (v18 ^ 0x461F53F6) & (2 * (v18 & 0x869F53F7)) ^ v18 & 0x869F53F7;
  v20 = ((2 * (v18 ^ 0x4F1152BA)) ^ 0x931C029A) & (v18 ^ 0x4F1152BA) ^ (2 * (v18 ^ 0x4F1152BA)) & v9;
  v21 = v20 ^ 0x48820145;
  v22 = (v20 ^ 0xC0008) & (4 * v19) ^ v19;
  v23 = ((4 * v21) ^ 0x26380534) & v21 ^ (4 * v21) & v9;
  v24 = (v23 ^ 0x80100) & (16 * v22) ^ v22;
  v25 = ((16 * (v23 ^ 0xC9860049)) ^ 0x98E014D0) & (v23 ^ 0xC9860049) ^ (16 * (v23 ^ 0xC9860049)) & (v9 - 12);
  v26 = v24 ^ (v9 + 1) ^ (v25 ^ 0x88800000) & (v24 << 8);
  return (*(v10 + 8 * ((29 * (a2 + 1 != v12 + 60)) ^ v8)))(v18 ^ (2 * ((v26 << 16) & 0x498E0000 ^ v26 ^ ((v26 << 16) ^ 0x14D0000) & (((v25 ^ 0x410E010D) << 8) & (v9 - 332) ^ 0x418E0000 ^ (((v25 ^ 0x410E010D) << 8) ^ 0xE010000) & (v25 ^ 0x410E010D)))) ^ 0x794C69F7);
}

uint64_t sub_2585766A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, _DWORD *a31, uint64_t a32)
{
  v38 = v33 - v34 - 146;
  v39 = (*(v32 + 8 * (v33 + 749)))(a31 + 4, 0);
  v40 = a31[4] + 1333457439 - ((2 * a31[4]) & 0x9EF5E43E);
  a31[1] = a31[6] + 1333457439 - ((v38 ^ 0xC6FDB1AB) & (2 * a31[6]));
  a31[2] = v40;
  v41 = v33 + 757;
  v42 = (*(a32 + 8 * v41))(v39);
  a31[3] = v42 + 1333457439 - ((2 * v42) & 0x9EF5E43E);
  v43 = (*(a32 + 8 * v41))();
  *a31 = v43 + 1333457439 - ((2 * v43) & 0x9EF5E43E);
  v44 = 1511064119 * ((v37 - 144) ^ 0x9D8EB5BC887F5F4ALL);
  v35[1] = (*a31 ^ 0x4F7AF21F) + ((1664525 * (*v35 ^ (*v35 >> 30))) ^ v35[1]);
  *(v37 - 144) = (v38 + 1683596189) ^ v44;
  *(v37 - 120) = 623 - v44;
  *(v37 - 128) = ((v38 + 1683596197) ^ 0x90) + v44;
  *(v37 - 124) = v44 | 1;
  *(v37 - 112) = v38 + 1683596197 - v44;
  *(v37 - 104) = -310332759 - v44 + v38;
  *(v37 - 136) = 2 - v44;
  v45 = (*(a32 + 8 * (v38 ^ v36)))(v37 - 144);
  return (*(a32 + 8 * *(v37 - 108)))(v45);
}

uint64_t sub_25857690C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  v32 = a1 - 4;
  v33 = (a1 + 1991425306) & 0x894D42DF;
  v34 = (a1 + 21) | 0x496;
  *(v31 - 120) = v30 + 12;
  *(v31 - 112) = a1 - 4 - 2021301169 * (((v31 - 144) & 0x520BC394 | ~((v31 - 144) | 0x520BC394)) ^ 0x26026BCB) + 595;
  *(v31 - 144) = a23;
  *(v31 - 136) = &a28;
  (*(v28 + 8 * ((a1 - 4) ^ 0x62F)))(v31 - 144);
  return (*(v28 + 8 * (((*(v31 - 128) == v29) * (v34 ^ v33 ^ 0x6CB)) ^ v32)))(a25);
}

uint64_t sub_258576A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, int a12, unsigned int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, __int16 a22)
{
  *v23 = v27;
  v29 = *v24;
  *(v29 + 3) = 16908633;
  *(v29 + 2) = 76;
  *v29 = 20550;
  *(v29 + 7) = 0;
  *(v29 + 8) = bswap32(((2 * (a14 ^ 0x4C1)) ^ 0x33E) + v25);
  *(v29 + 12) = *v22;
  *(v29 + 13) = 0;
  *(v29 + 14) = a11;
  *(v29 + 15) = 0;
  a22 = (((&a19 - 2 * (&a19 & 0x3935C7BE) - 14402) ^ 0xFA3C) * v28) ^ 0xE4F;
  a21 = (a14 - 37) ^ (((&a19 - 2 * (&a19 & 0x3935C7BE) + 959825854) ^ 0xE793FA3C) * v28);
  a19 = v29 + 16;
  v30 = (*(v26 + 8 * (a14 + 254)))(&a19);
  *(v29 + 32) = bswap32(a13);
  return (*(v26 + 8 * ((221 * (v25 == (((a14 - 45) ^ 0xF650CCEE) & (2 * v25)))) ^ a14)))(v30);
}

uint64_t sub_258576B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *a1 = 1498173510;
  *(a1 + 4) = v21 ^ 0x18;
  *(a1 + 5) = 513;
  *(a1 + 7) = 0;
  *(a1 + 8) = -2113929216;
  *(a1 + 12) = 2;
  *(a1 + 13) = *(v20 + 14);
  *(v24 - 128) = (v23 + 702) ^ (344723623 * ((((v24 - 144) | 0x52A8889B) - (v24 - 144) + ((v24 - 144) & 0xAD577760)) ^ 0xA50BE552));
  *(v24 - 140) = (4263 * ((((v24 - 144) | 0x889B) - (v24 - 144) + ((v24 - 144) & 0x7760)) ^ 0xE552)) ^ 0x32D6;
  *(v24 - 136) = a1 + 14;
  v26 = (*(v22 + 8 * (v23 + 1280)))(v24 - 144);
  *(a1 + 14) = 256;
  v27 = a1 - a20 - 118 < ((v23 + 12) ^ 0x13DuLL);
  return (*(v22 + 8 * ((4 * v27) | (8 * v27) | v23)))(v26);
}

uint64_t sub_258576F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, int a29, uint64_t a30, uint64_t a31, char a32)
{
  v62 = *(v34 + 8 * v32);
  v53 = &a32 + a30;
  v54 = *(a18 + 76);
  v56 = *(a18 + 80);
  v55 = *(a18 + 84);
  v57 = *(a18 + 96);
  if (v57 == 2)
  {
    v60 = (v33 + v38 + 568841313);
    v61 = ((*v60 ^ v39) << 24) | ((v60[1] ^ v39) << 16) | ((v60[2] ^ v39) << 8);
    *v53 = (v61 | v60[3] ^ v39) + v36 - 2 * ((v61 | v60[3] ^ v39) & 0x7EB2B15F ^ (v60[3] ^ v39) & 1);
    return (*(v34 + 8 * ((((v38 + 568841317) < 0x40) | (32 * ((v38 + 568841317) < 0x40))) ^ a29)))(v54);
  }

  else if (v57 == 1)
  {
    v59 = *(v33 + v38 + 568841313) ^ v39 | ((*(v33 + v38 + 568841313 + 1) ^ (v37 + 110)) << 8) | ((*(v33 + v38 + 568841313 + 2) ^ v39) << 16) | ((*(v33 + v38 + 568841313 + 3) ^ v39) << 24);
    *&v53[4 * (v35 ^ 0x879F518)] = v59 + v36 - ((2 * v59) & 0xFD6562BC);
    return (*(v34 + 8 * (((2 * ((v38 + 568841317) > 0x3F)) | (4 * ((v38 + 568841317) > 0x3F))) ^ (v37 - 515))))(v54);
  }

  else
  {
    v40 = (((*(a18 + 72) ^ 0xD896D8BA) + 661202758) ^ ((*(a18 + 72) ^ 0xEC8F9E92) + 326132078) ^ ((*(a18 + 72) ^ 0x5ACE7EB2) - 1523482290)) + (((*(a18 + 72) ^ 0x183A9245) - 406491717) ^ ((*(a18 + 72) ^ 0x24C580C9) - 616923337) ^ ((*(a18 + 72) ^ 0x52282A16) - 1378363926)) - 166019446;
    v41 = v40 ^ ((v40 ^ 0xD5FB4BDB) + 845740403) ^ ((v40 ^ 0xA1CC0881) + 1180678697) ^ ((v40 ^ 0x9384F273) + 1947680987) ^ ((v40 ^ 0xFFDFFC7F) + 407654103) ^ 0x76BB75CC;
    v42 = (((v54 ^ 0x528522C) - 86528556) ^ ((v54 ^ 0x30FA23E4) - 821699556) ^ ((v54 ^ 0x5B054952) - 1527073106)) + (((*(a18 + 76) ^ 0xEAF92146) + 352771770) ^ ((*(a18 + 76) ^ 0xEB9D4A14) + 342013420) ^ ((*(a18 + 76) ^ 0x6FB353C8) - 1874023368)) + 1013324049;
    v43 = (v42 ^ 0x3C4C3FA2) & (2 * (v42 & 0xA1485823)) ^ v42 & 0xA1485823 ^ (((((v42 & 0xA1485823) >> 12) & 1) << 13) | 0x10004600);
    v44 = (2 * (v42 ^ 0x3C4C3FA2)) & 0x9D046780 ^ 0x85042081 ^ ((2 * (v42 ^ 0x3C4C3FA2)) ^ 0x3A08CF02) & (v42 ^ 0x3C4C3FA2);
    v45 = (4 * v43) & 0x9D046780 ^ v43 ^ ((4 * v43) ^ 0x40011800) & v44;
    v46 = (4 * v44) & 0x9D046780 ^ 0x89046181 ^ ((4 * v44) ^ 0x74119E04) & v44;
    v47 = (16 * v45) & 0x9D046780 ^ v45 ^ ((16 * v45) ^ 0x46000) & v46;
    v48 = (16 * v46) & 0x9D046780 ^ 0xD000781 ^ ((16 * v46) ^ 0xD0467810) & v46;
    v49 = v47 ^ 0x89044181 ^ (v47 << 8) & 0x9D046700 ^ ((v47 << 8) ^ 0x4260000) & v48;
    *(a18 + 72) = v41;
    *(a18 + 76) = v42 ^ (2 * ((v49 << 16) & 0x1D040000 ^ v49 ^ ((v49 << 16) ^ 0x67810000) & ((v48 << 8) & 0x1D040000 ^ 0x19000000 ^ ((v48 << 8) ^ 0x4670000) & v48))) ^ 0xFF97AFBB;
    v50 = (((v56 ^ 0xF92989E8) + 114718232) ^ ((v56 ^ 0x7AE2EB2) - 128855730) ^ ((v56 ^ 0x90509FC0) + 1873764416)) + (((*(a18 + 80) ^ 0xFD978895) + 40400747) ^ ((*(a18 + 80) ^ 0xF400959E) + 201288290) ^ ((*(a18 + 80) ^ 0x67402591) - 1732257169)) + 1347799582;
    v51 = (((v55 ^ 0xD2BCEFB7) + 759369801) ^ ((v55 ^ 0x51383F5B) - 1362640731) ^ ((v55 ^ 0xED53E876) + 313268106)) + (((*(a18 + 84) ^ 0x5031034F) - 1345389391) ^ ((*(a18 + 84) ^ 0xA4971A3) - 172585379) ^ ((*(a18 + 84) ^ 0x34AF4A76) - 883903094)) - 71760699;
    *(a18 + 80) = v50 ^ ((v50 ^ 0x204CDC1D) - 1391166711) ^ ((v50 ^ 0x6F04C07E) - 497260692) ^ ((v50 ^ 0x52383B66) - 547316620) ^ ((v50 ^ 0x6FD77FEF) - 493889285) ^ 0x1C706070;
    *(a18 + 84) = v51 ^ ((v51 ^ 0x74F1D98B) - 1794853402) ^ ((v51 ^ 0xA6F394F6) + 1191639193) ^ ((v51 ^ 0x33E70113) - 770544258) ^ ((v51 ^ 0xFFEFDFFF) + 505066386) ^ 0x70DDAB0B;
    return v62(486801408, 2298757505, a18, a23, a22, HIDWORD(a21), 3834510960, 968312894, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
  }
}

uint64_t sub_2585770E8()
{
  if (v3 <= ((v4 + 218) ^ (v1 + 2131)) + v0)
  {
    v6 = 16 - v3;
  }

  else
  {
    v6 = 0;
  }

  v7 = (*(v5 + 8 * (v4 + 408)))(v3 + v6 + 56, 0x100004077774924);
  *v2 = v7;
  return (*(v5 + 8 * ((178 * (v7 != 0)) ^ v4)))(v7, v8, v9, v10, v11);
}

uint64_t sub_258577170(uint64_t a1, unsigned int a2, uint64_t a3, int a4, int a5, int a6, int a7, uint64_t a8)
{
  v18 = (v14 + 32 * a8);
  v19 = *(v11 + 9) * v12 % a2;
  *v18 = v8 + ((v16 + ((v19 + a5 - (v15 & (2 * v19))) << 10)) ^ (a4 + a6 - 502));
  *v9 += 1024;
  v20 = *(v11 + 9) * (v12 + 1) % a2;
  v18[1] = v8 + ((v16 + ((v20 + a5 - (v15 & (2 * v20))) << 10)) ^ a4);
  *v9 += 1024;
  v21 = *(v11 + 9) * (v12 + 2) % a2;
  v18[2] = v8 + ((v16 + ((v21 + a5 - (v15 & (2 * v21))) << 10)) ^ a4);
  *v9 += 1024;
  v22 = *(v11 + 9) * (v12 + 3) % a2;
  v18[3] = v8 + ((v16 + ((v22 + a5 - (v15 & (2 * v22))) << 10)) ^ a4);
  *v9 += 1024;
  return (*(v10 + 8 * (((a8 + 1 == v13) * v17) | a7)))();
}

uint64_t sub_25857738C@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v8 = v6 - 1;
  *(a2 + v8) = *(v3 + (v8 & 0xF)) ^ *(v2 + v8) ^ *((v8 & 0xF) + v4 + 2) ^ *((v8 & 0xF) + v5 + 6) ^ ((v8 & 0xF) * ((62 * (a1 ^ 0x62)) ^ 0x97));
  return (*(v7 + 8 * ((a1 - 110) | (8 * (v8 == 0)))))();
}

uint64_t sub_2585773F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, unint64_t a22, uint64_t a23, _DWORD *a24)
{
  *a24 = v26 + 1 - ((((v26 ^ 0x13FF) & v26) >> (__clz(v26 ^ 0x13FF | 1) ^ (((v28 - 126) ^ 0x95) - 75))) & 1);
  v29 = ((v25 ^ (v25 >> 11)) << 7) & 0x9D2C5680 ^ v25 ^ (v25 >> 11);
  *(*a20 + a22) ^= (v29 << (((v28 - 126) ^ 0x95) - 91)) & v27 ^ v29 ^ (((v29 << (((v28 - 126) ^ 0x95) - 91)) & v27 ^ v29) >> 18);
  return (*(v24 + 8 * ((v28 + 386) ^ 0x58085595 ^ (227 * (a22 < 0x1FC)))))();
}

uint64_t sub_2585774BC()
{
  v2 = (*(v0 + 8 * (v1 ^ 0x13D)))();
  v3 = (*(v0 + 8 * (v1 + 352)))();
  return (*(v0 + 8 * (((v2 == v3) * ((((v1 - 1217) | 0x10E) + 1086) ^ v1 ^ 0xC2)) ^ v1)))(v3, v4);
}

uint64_t sub_258577520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a5 + v8 + 16);
  v11 = (v7 + v8);
  *v11 = *(a5 + v8);
  v11[1] = v10;
  return (*(v9 + 8 * ((2 * (v5 == v8)) | (4 * (v5 == v8)) | v6)))();
}

uint64_t sub_258577554@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  v30 = 3 * (a1 ^ 0x222);
  *(a10 + 141) = (v30 - 4 + &a29) * (&a29 ^ 0xBA);
  *(a10 + 140) = (&a29 ^ 0xBB) * (&a29 + 18);
  return (*(v29 + 8 * (v30 ^ 0x30)))(a10);
}

void sub_2585775E8(uint64_t a1)
{
  v1 = *(a1 + 16) + 827685407 * (a1 ^ 0x1B828250);
  __asm { BRAA            X2, X17 }
}

uint64_t sub_258577748()
{
  if (v0)
  {
    v2 = 981;
  }

  else
  {
    v2 = 980;
  }

  return (*(v1 + 8 * v2))();
}

uint64_t sub_25857776C@<X0>(int a1@<W8>)
{
  v5 = (v2 ^ 0xFFFFFFFFFFFFFD3CLL ^ ((v3 - 1254) | 0x2C3u)) + v1;
  v6 = __CFADD__(a1, v5);
  v7 = HIDWORD(v5);
  v9 = v6 || v7 != 0;
  return (*(v4 + 8 * ((v9 * (((v3 - 1254) ^ 0xA6) - 156)) ^ v3)))();
}

uint64_t sub_2585777C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14)
{
  v18 = (*(v14 + 8 * (v16 + 1047)))(a13 - *(v15 + 14), 0x100004077774924);
  *v17 = v18;
  return (*(v14 + 8 * (((v18 != 0) * ((v16 + 368) ^ 0x34F)) ^ v16)))(a14);
}

uint64_t sub_258577828()
{
  *v1 = v3 - 352 + v1[623] - (((((v3 - 352) ^ v0) & v0) >> (__clz((v3 - 352) ^ v0 | 1) ^ 0x1F)) & 1) - 622;
  v5 = ~(((v3 - 740) ^ 0xFFFFFD7A) + v3 - 352) + v2 == ((v3 - 740) ^ 0xEB);
  return (*(v4 + 8 * (((2 * v5) | (16 * v5)) ^ (v3 - 740))))();
}

uint64_t sub_258577874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v35 = v32 ^ v33;
  *v34 = (v32 ^ v33) + 670542443 + (((a15 - v32) | (v32 - a15)) >> 31);
  (*(a3 + 8 * (v32 + 1533)))(a30);
  v36 = vld1q_dup_f32(v34);
  v37.i64[0] = 0x8000000080000000;
  v37.i64[1] = 0x8000000080000000;
  v38.i64[0] = 0x100000001;
  v38.i64[1] = 0x100000001;
  v39.i64[0] = *(v34 + 4);
  v39.i32[2] = *(v34 + 12);
  v40 = vextq_s8(v36, v39, 0xCuLL);
  v41 = v39;
  v41.i32[3] = *(v34 + 16);
  v42 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v41, vnegq_f32(v38)), vandq_s8(v40, v37)), 1uLL), *(v34 + 1588));
  v40.i32[0] = *(&STACK[0x4E8] + (*(v34 + 4) & (103 * (v35 ^ 0x5808559Fu) - 1029)));
  v40.i32[1] = *(&STACK[0x4E8] + (*(v34 + 8) & 1));
  v40.i32[2] = *(&STACK[0x4E8] + (*(v34 + 12) & 1));
  v40.i32[3] = *(&STACK[0x4E8] + (v41.i8[12] & 1));
  *v34 = veorq_s8(vaddq_s32(vsubq_s32(v42, vandq_s8(vaddq_s32(v42, v42), vdupq_n_s32(0x5168AEF6u))), vdupq_n_s32(0xA8B4577B)), v40);
  return (*(a32 + 8 * (v35 - 1476940142)))();
}

uint64_t sub_258577A98@<X0>(unint64_t a1@<X8>)
{
  v7 = a1 + v4;
  v8 = (v5 - 1197) & (v4 + 15);
  v9 = v1 - v4 + v8 + 1;
  v10 = v1 + v8 + 1;
  v11 = v8 + v2 + 2;
  v12 = v8 + v3;
  v13 = v12 + ((v5 + 254) ^ 0x5BELL) - v4;
  v14 = v12 + 4;
  v16 = v11 > a1 && v11 - v4 < v7;
  v18 = v10 > a1 && v9 < v7 || v16;
  if (v14 <= a1 || v13 >= v7)
  {
    v20 = v18;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 8 * ((78 * v20) ^ v5)))();
}

uint64_t sub_258577B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11, char a12, char a13, int a14, uint64_t a15)
{
  a15 = v17 + 12;
  a10 = v18;
  a11 = (v19 + 1104) ^ (1021229753 * ((2 * (&a10 & 0x5754798) - &a10 - 91572124) ^ 0x4467038E));
  a13 = 93 - -71 * ((2 * (&a10 & 0x98) - &a10 + 100) ^ 0x8E);
  a12 = ((v15 ^ 0x4D) + ((2 * v15) & 0xF3 ^ 0x60) - 17) ^ (-71 * ((2 * (&a10 & 0x98) - &a10 + 100) ^ 0x8E));
  (*(v16 + 8 * (v19 ^ 0x69B)))(&a10);
  return (*(v16 + 8 * (((a14 != 95751194) * (((v19 - 614228675) & 0x249C627D) + 312)) ^ v19)))(a1);
}

uint64_t sub_258577CB4()
{
  v6 = *v4;
  *(v3 - 1) = *(v4 - 1);
  *v3 = v6;
  return (*(v5 + 8 * (((v2 == 0) * v1) | v0)))();
}

uint64_t sub_258577D58(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a1 <= 0x30)
  {
    v7 = 48;
  }

  else
  {
    v7 = a1;
  }

  return (*(v5 + 8 * ((319 * (((((a5 + 106) ^ (v6 - 632)) + v7 + 1) & 0x7FFFFFC0) == v6)) ^ (a5 + 106))))();
}

uint64_t sub_258578188@<X0>(int a1@<W8>)
{
  v5 = *(v3 + 1);
  *v1 = 2;
  return (*(v4 + 8 * (((v5 == 72) * (v2 ^ 0x475)) ^ a1)))();
}

uint64_t sub_2585781C0@<X0>(_BYTE *a1@<X2>, unint64_t a2@<X6>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, _BYTE *a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  v44 = v42 - 849;
  v45 = (v44 - 2054160150) | 0x122688CD;
  v46 = v45 + 50;
  v87 = *(v43 + 8 * v44);
  v90 = (v45 - 758122958) & 0x957983A8;
  v89 = *(a42 + 18);
  v47 = *(a42 + 19);
  v48 = *(a3 - 12);
  v49 = *(a3 - 8);
  LOBYTE(v44) = *(a3 - 4);
  v50 = *(a3 - 3);
  v51 = *(a3 - 7);
  v52 = *(a3 - 11);
  LOBYTE(v45) = *(a3 - 15);
  v88 = (v46 & 0xA8 ^ 0xABu) % v47;
  v53 = *(a3 - 14);
  v54 = *(a3 - 6);
  v55 = *(a3 - 10);
  v56 = *(a3 - 2);
  v57 = *(a3 - 13);
  v58 = *(a3 - 9);
  v59 = *(a3 - 5);
  v60 = *(a3 - 1);
  v61 = *(a25 - 15) ^ *(*(a26 - 15) + (*a1 ^ (v90 - 12)));
  *a1 = v61 ^ a2;
  v62 = *(a25 - 11) ^ *(*(a26 - 11) + (v48 ^ a2));
  *(a3 - 12) = v62 ^ a2;
  v63 = *(a25 - 7) ^ *(*(a26 - 7) + (v49 ^ a2));
  *(a3 - 8) = v63 ^ a2;
  v64 = *(a25 - 3) ^ *(*(a26 - 3) + (v44 ^ a2));
  *(a3 - 4) = v64 ^ a2;
  LOBYTE(v44) = *(a25 - 2) ^ *(*(a26 - 2) + (v51 ^ a2));
  *(a3 - 3) = v44 ^ a2;
  v65 = *(a25 - 6) ^ *(*(a26 - 6) + (v52 ^ a2));
  *(a3 - 7) = v65 ^ a2;
  v66 = *(a25 - 10) ^ *(*(a26 - 10) + (v45 ^ a2));
  *(a3 - 11) = v66 ^ a2;
  LOBYTE(v45) = *(a25 - 14) ^ *(*(a26 - 14) + (v50 ^ a2));
  *(a3 - 15) = v45 ^ a2;
  v67 = *(a25 - 13) ^ *(*(a26 - 13) + (v54 ^ a2));
  *(a3 - 14) = v67 ^ a2;
  v68 = *(a25 - 5) ^ *(*(a26 - 5) + (v53 ^ a2));
  *(a3 - 6) = v68 ^ a2;
  v69 = *(a25 - 9) ^ *(*(a26 - 9) + (v56 ^ a2));
  *(a3 - 10) = v69 ^ a2;
  v70 = *(a25 - 1) ^ *(*(a26 - 1) + (v55 ^ a2));
  *(a3 - 2) = v70 ^ a2;
  v71 = *(a25 - 12) ^ *(*(a26 - 12) + (v58 ^ a2));
  *(a3 - 13) = v71 ^ a2;
  v72 = *(a25 - 8) ^ *(*(a26 - 8) + (v59 ^ a2));
  *(a3 - 9) = v72 ^ a2;
  v73 = *(a25 - 4) ^ *(*(a26 - 4) + (v60 ^ a2));
  *(a3 - 5) = v73 ^ a2;
  v74 = *a25 ^ *(*a26 + (v57 ^ a2));
  *(a3 - 1) = v74 ^ a2;
  v75 = (a42 + ((8 % v89) << 7));
  v76 = *(v75[148] + 4 * v45) ^ *(v75[147] + 4 * v61) ^ *(v75[149] + 4 * v67) ^ *(v75[150] + 4 * v71);
  *(a3 - 13) = HIBYTE(v76) ^ 0x9C;
  *(a3 - 14) = BYTE2(v76) ^ 0x9C;
  *(a3 - 15) = BYTE1(v76) ^ 0x9C;
  *a1 = v76 ^ 0x9C;
  v77 = &v75[4 * (v47 != 1) + 147];
  LODWORD(v77) = *(*(v77 + 8) + 4 * v66) ^ *(*v77 + 4 * v62) ^ *(*(v77 + 16) + 4 * v69) ^ *(*(v77 + 24) + 4 * v72);
  *(a3 - 9) = BYTE3(v77) - ((v77 >> 23) & 0x38) - 100;
  *(a3 - 10) = BYTE2(v77) - ((v77 >> 15) & 0x38) - 100;
  *(a3 - 11) = BYTE1(v77) - ((v77 >> 7) & 0x38) - 100;
  v78 = v77 ^ 0xFFFFFF9C;
  *(a3 - 12) = v77 ^ 0x9C;
  v79 = &v75[4 * (2 % v47) + 147];
  v80 = *(v79[1] + 4 * v65) ^ *(*v79 + 4 * v63) ^ *(v79[2] + 4 * v68) ^ *(v79[3] + 4 * v73);
  *(a3 - 5) = (~(v80 >> 23) | 0xC7) + HIBYTE(v80) - 99;
  *(a3 - 6) = BYTE2(v80) - ((v80 >> 15) & 0x38) - 100;
  *(a3 - 7) = BYTE1(v80) - ((v80 >> 7) & 0x38) - 100;
  *(a3 - 8) = v80 - ((2 * v80) & 0x38) - 100;
  v81 = &v75[4 * v88 + 147];
  v82 = *(*v81 + 4 * v64);
  v83 = *(*(v81 + 8) + 4 * v44);
  v84 = *(v81 + 16);
  LODWORD(v81) = *(*(v81 + 24) + 4 * v74);
  v85 = v82 ^ 0x8DBA06DE ^ v83 ^ *(v84 + 4 * v70) ^ (v81 - 1917188386 - ((2 * v81) & 0x1B740DBC));
  LODWORD(v81) = (v85 >> 8) - ((v85 >> 7) & 0x38);
  *(a3 - 1) = HIBYTE(v85) - ((v85 >> 23) & 0x38) - 100;
  *(a3 - 2) = BYTE2(v85) - ((v85 >> 15) & 0x38) - 100;
  *(a3 - 3) = v81 - 100;
  *(a3 - 4) = v85 - ((2 * v85) & 0x38) - 100;
  return (*(a32 + 8 * v90))(*(a32 + 8 * v90), 8, v90, (v81 - 100), v78, 0, a2, v75 + 147, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, v87, a31, a32, v88);
}

uint64_t sub_258578238(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _OWORD *a7)
{
  v10 = a7[1];
  *(v8 + a6) = *a7;
  *(v8 + a6 + 16) = v10;
  return (*(v9 + 8 * ((95 * (((((((v7 - 1103) | 0x220) ^ 0xFFFFFFC3) & a2) == 32) ^ (53 * (((v7 - 79) | 0x20) ^ 0x24))) & 1)) ^ ((v7 - 1103) | 0x220))))();
}

uint64_t sub_2585782A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v37 = v35 + v33 + 112;
  v38 = (*(v32 + 8 * (v33 | 0x146)))(&STACK[0x500], 0);
  v39 = LODWORD(STACK[0x508]) + 148739216 - ((2 * LODWORD(STACK[0x508])) & 0x11BB2920);
  LODWORD(STACK[0x4F8]) = LODWORD(STACK[0x500]) + (v37 ^ 0x50D5C105) - ((2 * LODWORD(STACK[0x500])) & 0x11BB2920);
  LODWORD(STACK[0x4F4]) = v39;
  v40 = (*(a32 + 8 * (v33 + 334)))(v38);
  LODWORD(STACK[0x4FC]) = v40 + 148739216 - ((2 * v40) & 0x11BB2920);
  v41 = (*(a32 + 8 * (v33 ^ 0x15E)))();
  LODWORD(STACK[0x4F0]) = v41 + 148739216 - ((2 * v41) & 0x11BB2920);
  v34[1] = (LODWORD(STACK[0x4F0]) ^ 0x8DD9490) + ((1664525 * (*v34 ^ (*v34 >> 30))) ^ v34[1]);
  *(v36 - 120) = a28;
  *(v36 - 144) = a29 ^ (v37 + 1905148400) ^ 0x51;
  *(v36 - 136) = 2 - a29;
  *(v36 - 104) = -310332759 - a29 + v37;
  *(v36 - 112) = v37 + 1905148400 - a29;
  *(v36 - 128) = ((v37 + 1905148400) ^ 0x70) + a29;
  *(v36 - 124) = a29 ^ 1;
  v42 = (*(a32 + 8 * (v37 - 1476939693)))(v36 - 144);
  return (*(a32 + 8 * *(v36 - 108)))(v42);
}

uint64_t sub_258578650(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27)
{
  v30 = 1021229753 * ((((v29 - 136) ^ 0x51507ACC) + 943157138 - 2 * (((v29 - 136) ^ 0x51507ACC) & 0x38376F92)) ^ 0xD78AAEB4);
  v31 = (*(v27 + 96) - ((2 * *(v27 + 96)) & 0x1CDE375C) + 242162606) ^ v30;
  *(v29 - 136) = v30 + a14;
  *(v29 - 132) = v31;
  *(v29 - 128) = v27;
  v32 = (*(v28 + 8 * (a3 + 1433)))(v29 - 136);
  return (*(v28 + 8 * ((75 * ((*(v27 + 68) & ((a27 + 499) ^ 0x20Bu)) + 64 > 0x3F)) ^ (a27 + 874))))(v32, a13);
}

uint64_t sub_258578760(char a1)
{
  v8 = v2 + 2;
  v9 = v5 - 2;
  *(v9 + 527) = ((v3 + v8) ^ a1) * (v3 + v8 + 17);
  *(v9 + v1) = ((v3 + v8) ^ 0xBB) * (v3 + v8 + 18);
  return (*(v6 + 8 * (v7 ^ (8 * (v4 == v8)))))();
}

uint64_t sub_25857876C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  *a1 = 256;
  memset((a1 + 8), 156, 48);
  *(a1 + 56) = 2627509404;
  memset((a1 + 64), 156, 48);
  *(a1 + 112) = 2627509404;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 131) = 0;
  *(a1 + 259) = (&a10 ^ 0xBA) * (&a10 + 17);
  *(a1 + 258) = (&a10 ^ 0xBB) * (&a10 + 18);
  return (*(v10 + 8 * ((57 * (((v11 - 774) ^ 0x1E8) != 128)) ^ (v11 - 302))))();
}

uint64_t sub_2585788A8@<X0>(uint64_t a1@<X8>)
{
  v5 = (v1 + (v3 << ((7 * (v4 ^ 0x41)) ^ 0x15u)));
  v7 = vld4_s8(v5);
  v8.val[0] = v7.val[3];
  v8.val[1] = v7.val[2];
  v8.val[2] = v7.val[1];
  v8.val[3] = v7.val[0];
  vst4_s8(v5, v8);
  return (*(a1 + 8 * ((((v2 & 0x1FFFFFFF8) - 8 == v3) | (8 * ((v2 & 0x1FFFFFFF8) - 8 == v3))) ^ v4)))();
}

uint64_t sub_25857890C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  v14 = ((a11 & 0x8DF06606) << (v11 ^ 0x1D)) & (a11 ^ 0x6DEA56A7) ^ a11 & 0x8DF06606;
  v15 = ((2 * (a11 ^ 0x6F6ADEAB)) ^ 0xC535715A) & (a11 ^ 0x6F6ADEAB) ^ (2 * (a11 ^ 0x6F6ADEAB)) & 0xE29AB8AC;
  v16 = v15 ^ 0x228A88A5;
  v17 = (v15 ^ 0x4008308D) & (4 * v14) ^ v14;
  v18 = ((4 * v16) ^ 0x8A6AE2B4) & v16 ^ (4 * v16) & 0xE29AB8AC;
  v19 = (v18 ^ 0x820AA0A9) & (16 * v17) ^ v17;
  v20 = ((16 * (v18 ^ 0x60901809)) ^ 0x29AB8AD0) & (v18 ^ 0x60901809) ^ (16 * (v18 ^ 0x60901809)) & 0xE29AB8A0;
  v21 = v19 ^ 0xE29AB8AD ^ (v20 ^ 0x208A882D) & (v19 << 8);
  v22 = (v21 << 16) & 0x629A0000 ^ v21 ^ ((v21 << 16) ^ 0x38AD0000) & (((v20 ^ 0xC210302D) << 8) & 0xE29A0000 ^ 0x60020000 ^ (((v20 ^ 0xC210302D) << 8) ^ 0x1AB80000) & (v20 ^ 0xC210302D));
  v23 = ((((v13 - 120) | 0xF7403CA9) - ((v13 - 120) & 0xF7403CA9)) ^ 0x49AD8743) * a5;
  *(v13 - 120) = v23 + v11 - 1083642136;
  *(v13 - 116) = v23 ^ a11 ^ (2 * v22) ^ 0x7BA0CF2;
  *(v13 - 112) = a7;
  v24 = (*(v12 + 8 * (v11 + 1470)))(v13 - 120);
  return (*(v12 + 8 * ((446 * ((*(a7 + 68) & ((2 * (v11 ^ 0x29E)) ^ 0x53Bu)) + 64 > 0x3F)) ^ v11 ^ 0x29E)))(v24);
}

uint64_t sub_258578B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v30 = v29 - 144;
  *(v29 - 144) = v26 + 2856;
  *(v29 - 136) = (v28 + 2089147696) ^ (439532179 * ((((v29 - 144) | 0x73FD012C) - (v29 - 144) + ((v29 - 144) & 0x8C02FED0)) ^ 0xAD5B3CAE));
  (*(v27 + 8 * (v28 + 576)))(v29 - 144);
  v31 = 2021301169 * ((((2 * v30) | 0x292B9992) - v30 - 345361609) ^ 0x9F639B69);
  *(v29 - 128) = v31 + 469501837;
  *(v29 - 124) = (v28 - 317) ^ v31;
  *(v29 - 144) = *(&off_286999DF0 + v28 - 862) - 8;
  *(v29 - 136) = v26 + 2856;
  (*(v27 + 8 * (v28 + 539)))(v29 - 144);
  v32 = 2021301169 * ((2 * (v30 & 0x7AF25DA0) - v30 + 84779614) ^ 0x8EFBF5FE);
  *(v29 - 144) = a26;
  *(v29 - 136) = v26 + 2856;
  *(v29 - 128) = v32 + 469501822;
  *(v29 - 124) = (v28 - 317) ^ v32;
  v33 = (*(v27 + 8 * (v28 ^ 0x625)))(v29 - 144);
  *(v26 + 2944) = *(v26 + 2856);
  LODWORD(STACK[0xC64]) = STACK[0xC0C];
  LODWORD(STACK[0xC68]) = STACK[0xC10];
  STACK[0xC6C] = STACK[0xC14];
  LODWORD(STACK[0xC74]) = STACK[0xC1C];
  v34 = *&STACK[0xC30];
  *&STACK[0xC78] = *&STACK[0xC20];
  *&STACK[0xC88] = v34;
  return (*(v27 + 8 * ((308 * (v28 == 999)) ^ (v28 - 223))))(v33);
}

uint64_t sub_258578DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, char a35, unsigned int a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, int a54)
{
  v59 = v57 + a36;
  *(v58 - 144) = v54 - 44841361 * ((2 * (((v58 - 144) ^ 0x498770B4) & 0x1F079048) - ((v58 - 144) ^ 0x498770B4) + 1626894261) ^ 0x4911E25D) + 1276;
  *(v58 - 120) = v59;
  *(v58 - 112) = &a54;
  *(v58 - 136) = a30;
  *(v58 - 128) = &a35;
  (*(v55 + 8 * (v54 ^ 0x615)))(v58 - 144);
  return (*(v55 + 8 * (((*(v58 - 104) == v56) * (((2 * v54) ^ 0x4A4) - 31)) ^ v54)))(a32);
}

uint64_t sub_258578E80@<X0>(int a1@<W0>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v8 = ((a1 ^ 0x2A0u) + 123 - 461) & (v6 + 15);
  v9 = -a3 - v6;
  v11 = a2 >= 0x10 && (v9 + v3 + v8 + 1) >= 0x10 && (v9 + v4 + v8 + 3) >= 0x10;
  v12 = v9 + v5 + v8 + 7;
  v14 = !v11 || v12 < 0x10;
  return (*(v7 + 8 * ((56 * v14) | a1)))();
}

uint64_t sub_258578EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, char a24, uint64_t a25, uint64_t a26, _BYTE *a27, _BYTE *a28, _BYTE *a29, uint64_t a30, int a31, uint64_t a32)
{
  v46 = v44 + 1;
  v47 = (a9 + 16);
  v48 = (v32 + 128);
  v49 = *(*(v48 - 15) + v42);
  *a8 = v49;
  v50 = *(*(v48 - 11) + v37);
  a8[4] = v50;
  v51 = *(*(v48 - 7) + v36);
  a8[8] = v51;
  v52 = *(*(v48 - 3) + v35);
  a8[12] = v52;
  v53 = *(*(v48 - 10) + v40);
  a8[1] = v53;
  v54 = *(*(v48 - 6) + v45);
  a8[5] = v54;
  v55 = *(*(v48 - 2) + a3);
  a8[9] = v55;
  v56 = *(*(v48 - 14) + a2);
  a8[13] = v56;
  v57 = *(*(v48 - 5) + a5);
  a8[2] = v57;
  v58 = *(*(v48 - 13) + v34);
  a8[10] = v58;
  v59 = *(*(v48 - 1) + v33);
  a8[6] = v59;
  v60 = *(*(v48 - 9) + a6);
  a8[14] = v60;
  v61 = *(*(v48 - 4) + a7);
  a8[15] = v61;
  v62 = *(*(v48 - 8) + a4);
  a8[11] = v62;
  v63 = *(*(v48 - 12) + v39);
  a8[7] = v63;
  v64 = *(*v48 + v43);
  a8[3] = v64;
  v65 = (a32 + ((v46 % v38) << 7));
  v66 = v65 + 147;
  LODWORD(v49) = *(v65[148] + 4 * v53) ^ *(v65[147] + 4 * v49) ^ *(v65[149] + 4 * v57) ^ *(v65[150] + 4 * v64);
  a8[3] = BYTE3(v49);
  a8[2] = v49 >> a24;
  *a8 = v49;
  v67 = *(v66[4 * a30 + 1] + 4 * v54) ^ *(v66[4 * a30] + 4 * v50) ^ *(v66[4 * a30 + 2] + 4 * v59) ^ *(v66[4 * a30 + 3] + 4 * v63);
  a8[7] = HIBYTE(v67);
  a8[6] = BYTE2(v67);
  a8[5] = BYTE1(v67);
  *a29 = v67;
  LODWORD(v51) = *(v66[4 * a26 + 1] + 4 * v55) ^ *(v66[4 * a26] + 4 * v51) ^ *(v66[4 * a26 + 2] + 4 * v58) ^ *(v66[4 * a26 + 3] + 4 * v62);
  a8[11] = BYTE3(v51);
  a8[10] = BYTE2(v51);
  a8[9] = BYTE1(v51);
  *a28 = v51;
  LODWORD(v52) = *(v66[4 * a25 + 1] + 4 * v56) ^ *(v66[4 * a25] + 4 * v52) ^ *(v66[4 * a25 + 2] + 4 * v60) ^ *(v66[4 * a25 + 3] + 4 * v61);
  a8[15] = BYTE3(v52);
  a8[14] = BYTE2(v52);
  a8[13] = BYTE1(v52);
  *a27 = v52;
  *a8 = *(v47 - 15) ^ v49;
  v68 = (*(v47 - 14) ^ BYTE1(v49));
  a8[1] = *(v47 - 14) ^ BYTE1(v49);
  a8[2] = *(v47 - 13) ^ (v49 >> a24);
  a8[3] = *(v47 - 12) ^ BYTE3(v49);
  *(a8 + 2) = *(v47 - 11) ^ v67;
  v69 = (*(v47 - 9) ^ BYTE2(v67));
  a8[6] = *(v47 - 9) ^ BYTE2(v67);
  v70 = (*(v47 - 8) ^ HIBYTE(v67));
  a8[7] = *(v47 - 8) ^ HIBYTE(v67);
  *(a8 + 4) = *(v47 - 7) ^ v51;
  v71 = (*(v47 - 5) ^ BYTE2(v51));
  a8[10] = *(v47 - 5) ^ BYTE2(v51);
  v72 = (*(v47 - 4) ^ BYTE3(v51));
  a8[11] = *(v47 - 4) ^ BYTE3(v51);
  a8[12] = *(v47 - 3) ^ v52;
  v73 = (*(v47 - 2) ^ BYTE1(v52));
  a8[13] = *(v47 - 2) ^ BYTE1(v52);
  a8[14] = *(v47 - 1) ^ BYTE2(v52);
  a8[15] = *v47 ^ BYTE3(v52);
  return (*(v41 + 8 * ((116 * (v46 != 8)) ^ a31)))(a1, v68, v73, v70, v71, v69, v72);
}

uint64_t sub_258578F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v34 = 15 * (v30 ^ 0x41);
  if (((a17 - v30) | (v30 - a17)) > v34 - 976)
  {
    v35 = 0x80000000;
  }

  else
  {
    v35 = 0x7FFFFFFF;
  }

  *v31 = v35;
  (*(v32 + 8 * (v30 + 1533)))(a30);
  v36 = v31[1];
  v37 = v31[412 * (v34 ^ 0x3CD) - 427] ^ 0x9461827D ^ ((v36 & 0x7FFFFFFE | *v31 & 0x80000000) >> 1) ^ *(v33 - 160 + 4 * (v36 & 1));
  v38 = v31[398] ^ 0x9461827D ^ ((v31[2] & 0x7FFFFFFE | v36 & 0x80000000) >> 1) ^ *(v33 - 160 + 4 * (v31[2] & 1));
  *v31 = v37;
  v31[1] = v38;
  return (*(v32 + 8 * (v34 - 514)))();
}

uint64_t sub_258579030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W4>, int a4@<W5>, int a5@<W8>)
{
  v8 = a1 < v5;
  *(v6 + (a5 - 469902835)) = -31;
  if (v8 == a5 + 228547249 < v5)
  {
    v8 = a5 + 228547249 < a1;
  }

  return (*(v7 + 8 * ((v8 * a3) ^ (a4 - 811))))(a1, a2, a5 + 228547249 < a1);
}

void sub_2585791A8(uint64_t a1)
{
  v1 = 1380645169 * ((a1 - 1692345465 - 2 * (a1 & 0x9B20DB87)) ^ 0x19E5D3D7);
  if (*(a1 + 16))
  {
    v2 = (*a1 ^ v1) == 947247454;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  __asm { BRAA            X10, X17 }
}

uint64_t sub_258579278(uint64_t a1)
{
  v6 = *(v1 + a1 - 1);
  v7 = v6 + (v5 ^ v2);
  if ((v6 - 97) >= 0x1A)
  {
    v7 = *(v1 + a1 - 1);
  }

  v8 = (v7 + ((v5 - 116) ^ v4)) > 5u;
  return (*(v3 + 8 * ((v8 | (4 * v8)) ^ v5)))();
}

uint64_t sub_258579280@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, char a6@<W8>)
{
  v15 = v6 & 0x78324094 ^ 0x97EDFF6F ^ (a1 ^ (((a2 - 665) | 0x406) - 384138301)) & (v6 ^ v12);
  v16 = ((a3 ^ 0xE6997711) + 426150127) ^ ((a3 ^ 0x381E901) - 58845441) ^ ((a3 ^ 0x8BCFA68A) + 1949325686);
  v17 = *(v7 + 4 * (*(v8 + a5 + v13) - 86));
  v18 = v16 + *(v9 + 4 * (a5 + v13)) + ((v15 + v12 - ((2 * v15) & 0xDDAE7134)) ^ a4);
  LOBYTE(v16) = *(v10 + a5 + v13);
  v19 = (v16 - 38) ^ 0xF4;
  v20 = (2 * ((v16 - 38) & 0x14)) & v19 ^ ((v16 - 38) & 0x14 | 0x60) ^ ((2 * ((v16 - 38) & 0x14)) & 0x67 | 0x80);
  v21 = (2 * v19) & 0xE0 ^ 0x20 ^ ((2 * v19) ^ 0xC0) & v19;
  v22 = (4 * v20) & 0xE0 ^ v20 ^ ((4 * v20) ^ 0x80) & v21;
  v23 = v18 - 1890723000 + (((v17 ^ 0x83FDF6AB) + 2080508245) ^ ((v17 ^ 0x7DD0D859) - 2110838873) ^ ((v17 ^ 0x9F9FAC) - 10461100));
  LOBYTE(v17) = v22 ^ (16 * v22) & 0xE0 ^ (16 * v22) & ((4 * v21) & 0xE0 ^ 0x60 ^ ((4 * v21) ^ 0x80) & v21) ^ 0x80;
  v24 = v23 ^ ((v23 ^ 0xDD78F2D6) + 238702861) ^ ((v23 ^ 0x255D94C4) - 165726433) ^ ((v23 ^ 0x6FA7C5C0) - 1125816805) ^ ((v23 ^ 0xBB3FFFF7) + 1753046062) ^ 0x2CBD5C25;
  v25 = (((a1 ^ 0x563503C1) - 1446314945) ^ ((a1 ^ 0x541EB64E) - 1411298894) ^ ((a1 ^ 0x6CFC8D15) - 1828490517)) - 827348262 + ((v24 << (((v16 - 38) ^ (2 * v17)) & 0x17 ^ 0x14) << (((v16 - 38) ^ (2 * v17)) & 8)) | (v24 >> (a6 - v16)));
  return (*(v11 + 8 * ((14 * (a5 + 1 == v14 + 64)) | a2)))(v25 ^ ((v25 ^ 0x20CF39AC) - 2132233196) ^ ((v25 ^ 0x596AD46D) - 112371245) ^ ((v25 ^ 0x5882606E) - 123343406) ^ ((v25 ^ 0x7EFFFFEF) - 556240303) ^ 0x310F4ADAu);
}

uint64_t sub_2585796D0@<X0>(int8x8_t *a1@<X8>)
{
  v5 = veor_s8(v2[1], 0x9C9C9C9C9C9C9C9CLL);
  *a1 = veor_s8(*v2, 0x9C9C9C9C9C9C9C9CLL);
  a1[1] = v5;
  return (*(v3 + 8 * ((281 * (((v1 + 1385846833) & 0xAD65A397) - 391 == (v4 & 0x70))) ^ (v1 - 418))))();
}

uint64_t sub_258579738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  v60 = (v54 - 34);
  v61 = v55 + v56 + v59;
  v62 = (v61 + v58 + 1);
  *v62 = (&a54 ^ 0xBA) * (&a54 + 17);
  *(v62 - 1) = (v60 ^ 0x35 ^ &a54 ^ 0x9D) * (&a54 + 18);
  return (*(a37 + 8 * ((38 * (v61 != ((v60 - 530) & v57))) ^ v60)))();
}

void sub_258579838()
{
  *(v0 - 144) = (((*(v0 - 192) - 287) | 0x44) - 721458040) ^ *(v0 - 208);
  *(v0 - 152) = *(v0 - 204) ^ 0x8E0A0EE4;
  *(v0 - 156) = *(v0 - 200) ^ 0xA86E211A;
  *(v0 - 148) = *(v0 - 196) ^ 0xE8E738F7;
  JUMPOUT(0x258574038);
}

uint64_t sub_258579960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23, _DWORD *a24, uint64_t a25, _DWORD *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  v41 = (-((v38 - 5120) ^ (v38 - 5120)) | (v38 - 5120)) >> 63;
  *a24 = v38 + 1;
  v42 = (((v37 >> (v41 + 10)) ^ v37) << 7) & 0x9D2C5680 ^ (v37 >> (v41 + 10)) ^ v37;
  v43 = v40 & (v42 << 15) ^ v42 ^ ((v40 & (v42 << 15) ^ v42) >> 18);
  v44 = &a37 + (a20 - 1);
  v45 = 1999407021 * ((*(*v39 + (*a26 & 0x777AA3AC)) ^ v44) & 0x7FFFFFFF);
  v46 = 1999407021 * (HIWORD(v45) ^ v45);
  LODWORD(v46) = *(off_286999E88 + (v46 >> 24) - 4) ^ *(off_28699A190 + (v46 >> 24) - 12) ^ *(off_286999F40 + (v46 >> 24) - 11) ^ v46 ^ (5 * (v46 >> 24));
  *v44 = v46 ^ v43;
  return (*(a1 + 8 * ((694 * (a20 == (v46 != v43))) ^ 0x12F)))();
}

uint64_t sub_258579C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(v9 + a7 + 16);
  *(v8 + a6) = *(v9 + a7);
  *(v8 + a6 + 16) = v12;
  return (*(v11 + 8 * ((((v7 & 0xFFFFFFFFFFFFFFE0) == 32) * (((v10 - 1183528328) & 0x468B37FB) + 667)) ^ v10)))();
}

uint64_t sub_258579D44@<X0>(uint64_t a1@<X1>, int a2@<W2>, int a3@<W8>, int8x16_t a4@<Q1>, int8x16_t a5@<Q4>, int8x16_t a6@<Q5>, int8x16_t a7@<Q6>, int32x4_t a8@<Q7>)
{
  v10 = (v9 + 908);
  v11 = vld1q_dup_f32(v10);
  v12 = (a3 - 1074291625) & 0xE8000FDF;
  a4.i32[0] = *(v9 + 912);
  a4.i32[1] = *(v9 + 4 * (v12 - 392) + 644);
  a4.i32[2] = *(v9 + 920);
  v13 = vextq_s8(v11, a4, 0xCuLL);
  v14 = a4;
  v14.i32[3] = *(v9 + 924);
  v15 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v14, a6), vandq_s8(v13, a5)), 1uLL), *v9);
  v13.i32[0] = *(v8 + 4 * (*(v9 + 912) & 1));
  v13.i32[1] = *(v8 + 4 * (*(v9 + 4 * (v12 - 392) + 644) & 1));
  v13.i32[2] = *(v8 + 4 * (*(v9 + 920) & 1));
  v13.i32[3] = *(v8 + 4 * (v14.i8[12] & 1));
  *(v9 + 908) = veorq_s8(vaddq_s32(vsubq_s32(v15, vandq_s8(vaddq_s32(v15, v15), a7)), a8), v13);
  return (*(a1 + 8 * ((a2 + a3 - 243) ^ 0xFA)))();
}

uint64_t sub_258579EA4@<X0>(uint64_t a1@<X8>)
{
  v6 = (v2 + 32);
  v7 = *(v6 - 88);
  *(v6 - 1) = *(v6 - 104);
  *v6 = v7;
  return (*(v3 + 8 * (((v1 + 32 == a1) * v4) ^ v5)))();
}

uint64_t sub_258579EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = (v7 - 986024607) & 0x3AC587F5;
  *(a3 + (v11 ^ 0xFFFFFE9F) + v8) = a6;
  return (*(v9 + 8 * (v11 ^ ((v6 == 1) * v10))))();
}

uint64_t sub_258579EDC(uint64_t result, double a2)
{
  v3 = LOBYTE(a2) | BYTE4(a2) | ((LODWORD(a2) | HIDWORD(a2)) >> 16);
  v4 = v3 | ((v3 & 0xF0) >> 4) | (((v3 | ((v3 & 0xF0) >> 4)) & 0xFC) >> 2);
  *(result + 40) = -42084 * (((v2 + 53) ^ 0x70) & (v4 | ((v4 & 0xFE) >> 1))) + 95751194;
  return result;
}

uint64_t sub_25857A164(uint64_t a1, uint64_t a2)
{
  v8 = v5 + 4 * (v3 + a2);
  *(v5 + 4 * (v3 + a2 + 27 * (v2 ^ 0x74u)) - 648) = v6 ^ __ROR4__(*(v8 - 32) ^ *(v8 - 12) ^ *(v8 - 56) ^ *(v8 - 64), 31);
  return (*(v7 + 8 * ((515 * (a2 + 1 == v4 + 80)) ^ v2)))(1772928543);
}

uint64_t sub_25857A1DC@<X0>(uint64_t a1@<X2>, unsigned int a2@<W8>)
{
  v7 = *(a1 + v3 + 16);
  v8 = (v5 + a2);
  *v8 = *(a1 + v3);
  v8[1] = v7;
  return (*(v6 + 8 * ((((v2 & 0xFFFFFFFFFFFFFFE0) == 32) * (v4 - 331)) ^ v4)))(a2 + 32, a1 + v3 + 48);
}

uint64_t sub_25857A224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, unsigned __int8 *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, _BYTE *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  *a34 ^= *a40 ^ 0x3A;
  a34[1] ^= (v46 + 93) ^ a40[1] ^ 0x95;
  a34[2] ^= a40[2] ^ 0x3A;
  a34[3] ^= a40[3] ^ 0x3A;
  a34[4] ^= a40[4] ^ 0x3A;
  a34[5] ^= a40[5] ^ 0x3A;
  a34[6] ^= a40[6] ^ 0x3A;
  a34[7] ^= a40[7] ^ 0x3A;
  a34[8] ^= a40[8] ^ 0x3A;
  a34[9] ^= a40[9] ^ 0x3A;
  a34[10] ^= a40[10] ^ 0x3A;
  a34[11] ^= a40[11] ^ 0x3A;
  a34[12] ^= a40[12] ^ 0x3A;
  a34[13] ^= a40[13] ^ 0x3A;
  a34[14] ^= a40[14] ^ 0x3A;
  v83 = a46 + 7;
  a34[15] ^= a40[15] ^ 0x3A;
  v87 = *(a45 + 18);
  v48 = a34[4];
  v49 = a34[8];
  v50 = a34[12];
  v51 = *(a45 + 19);
  v88 = v46 + 319;
  v86 = v51 != ((v46 + 63) ^ 0x90);
  v85 = 2 % v51;
  v52 = a34[1];
  v53 = a34[5];
  v54 = a34[9];
  v55 = a34[13];
  v84 = 3 % v51;
  v56 = a34[2];
  v57 = a34[10];
  v58 = a34[6];
  v59 = a34[14];
  v60 = a34[15];
  v61 = a34[11];
  v62 = a34[7];
  v63 = a34[3];
  v64 = *(*(a45 + 24) + *a34);
  *a34 = v64;
  v65 = *(*(a45 + 56) + v48);
  a34[4] = v65;
  v66 = *(*(a45 + 88) + v49);
  a34[8] = v66;
  v67 = *(*(a45 + 120) + v50);
  a34[12] = v67;
  v68 = *(*(a45 + 64) + v53);
  a34[1] = v68;
  v69 = *(*(a45 + 96) + v54);
  a34[5] = v69;
  v70 = *(*(a45 + 128) + v55);
  a34[9] = v70;
  v71 = *(*(a45 + 32) + v52);
  a34[13] = v71;
  v72 = *(*(a45 + 104) + v57);
  a34[2] = v72;
  v73 = *(*(a45 + 40) + v56);
  a34[10] = v73;
  v74 = *(*(a45 + 136) + v59);
  a34[6] = v74;
  v75 = *(*(a45 + 72) + v58);
  a34[14] = v75;
  v76 = *(*(a45 + 112) + v61);
  a34[15] = v76;
  v77 = *(*(a45 + 80) + v62);
  a34[11] = v77;
  v78 = *(*(a45 + 48) + v63);
  a34[7] = v78;
  v79 = *(*(a45 + 144) + v60);
  a34[3] = v79;
  v80 = (a45 + ((0 % v87) << 7));
  v81 = v80 + 147;
  LODWORD(v80) = *(v80[148] + 4 * v68) ^ *(v80[147] + 4 * v64) ^ *(v80[149] + 4 * v72) ^ *(v80[150] + 4 * v79);
  a34[3] = BYTE3(v80);
  a34[2] = BYTE2(v80);
  LODWORD(v72) = v80 >> ((v88 + 60) ^ 0xC5);
  a34[1] = v72;
  *a34 = v80;
  LODWORD(v61) = *(v81[4 * v86 + 1] + 4 * v69) ^ *(v81[4 * v86] + 4 * v65) ^ *(v81[4 * v86 + 2] + 4 * v74) ^ *(v81[4 * v86 + 3] + 4 * v78);
  LODWORD(v74) = BYTE3(v61);
  a34[7] = BYTE3(v61);
  LODWORD(v65) = WORD1(v61);
  a34[6] = BYTE2(v61);
  LODWORD(v64) = v61 >> 8;
  *(a34 + 2) = v61;
  LODWORD(v78) = *(v81[4 * v85 + 1] + 4 * v70) ^ *(v81[4 * v85] + 4 * v66) ^ *(v81[4 * v85 + 2] + 4 * v73) ^ *(v81[4 * v85 + 3] + 4 * v77);
  a34[11] = BYTE3(v78);
  a34[10] = BYTE2(v78);
  *(a34 + 4) = v78;
  LODWORD(v81) = *(v81[4 * v84 + 1] + 4 * v71) ^ *(v81[4 * v84] + 4 * v67) ^ *(v81[4 * v84 + 2] + 4 * v75) ^ *(v81[4 * v84 + 3] + 4 * v76);
  a34[15] = BYTE3(v81);
  a34[14] = BYTE2(v81);
  *(a34 + 6) = v81;
  *a34 = *(v83 - 7) ^ v80;
  a34[1] = *(v83 - 6) ^ v72;
  a34[2] = *(v83 - 5) ^ BYTE2(v80);
  a34[3] = *(v83 - 4) ^ BYTE3(v80);
  a34[4] = *(v83 - 3) ^ v61;
  LOBYTE(v61) = *(v83 - 2) ^ BYTE1(v61);
  a34[5] = *(v83 - 2) ^ v64;
  a34[6] = *(v83 - 1) ^ v65;
  a34[7] = *v83 ^ v74;
  *(a34 + 4) = *(v83 + 1) ^ v78;
  a34[10] = *(v83 + 3) ^ BYTE2(v78);
  a34[11] = *(v83 + 4) ^ BYTE3(v78);
  *(a34 + 6) = *(v83 + 5) ^ v81;
  a34[14] = *(v83 + 7) ^ BYTE2(v81);
  a34[15] = *(v83 + 8) ^ BYTE3(v81);
  return (*(v47 + 8 * (v88 ^ 0x3E)))(v61);
}

uint64_t sub_25857A39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  a69 = ((((v69 - 49) & 0xEF) + 43) ^ &a33) * (&a33 + 17);
  a68 = (&a33 ^ 0xBB) * (&a33 + 18);
  return (*(v70 + 8 * (v69 + 53)))(a21, 95751194);
}

_DWORD *sub_25857A428()
{
  v8 = 69 * v3[4] + 125;
  v9 = 63 * v3[5];
  v10 = v3[6];
  v11 = 1380645169 * ((~(v7 - 144) & 0x6C16114D | (v7 - 144) & 0x93E9EEB2) ^ 0xEED3191D);
  *(v7 - 136) = v5;
  *(v7 - 128) = v6;
  *(v7 - 116) = v11 + v0 + 1150;
  *(v7 - 143) = v8 ^ (49 * ((~(v7 + 112) & 0x4D | (v7 + 112) & 0xB2) ^ 0x1D));
  *(v7 - 140) = (v1 ^ ((v1 ^ 0xD48411AE) + 785310284) ^ ((v1 ^ 0x4AFDC6B3) - 1330170537) ^ ((v1 ^ 0x64376431) - 1635936299) ^ ((v1 ^ 0xFFFBBF36) + 95505620) ^ 0xC4CC7158) + v11;
  *(v7 - 120) = (v10 + ((v0 + 41) ^ 0x56)) ^ (49 * ((~(v7 + 112) & 0x4D | (v7 + 112) & 0xB2) ^ 0x1D));
  *(v7 - 144) = (v9 + 31) ^ (49 * ((~(v7 + 112) & 0x4D | (v7 + 112) & 0xB2) ^ 0x1D));
  (*(v2 + 8 * (v0 | 0x4DD)))(v7 - 144);
  result = v13;
  *v4 = -1;
  *v13 = v1;
  return result;
}

uint64_t sub_25857A5B4@<X0>(uint64_t a1@<X8>)
{
  v5 = v3 + a1;
  v6.i64[0] = 0x9C9C9C9C9C9C9C9CLL;
  v6.i64[1] = 0x9C9C9C9C9C9C9C9CLL;
  v7 = veorq_s8(*(v2 + a1 + 16), v6);
  *(v5 + 24) = veorq_s8(*(v2 + a1), v6);
  *(v5 + 40) = v7;
  return (*(v4 + 8 * ((336 * (a1 + 32 == 5 * (v1 ^ 0x471u) - 161)) ^ v1)))();
}

uint64_t sub_25857A644()
{
  v6 = (v0 + 32);
  v7 = (v3 + 32);
  v8 = *v6;
  *(v7 - 1) = *(v6 - 1);
  *v7 = v8;
  return (*(v5 + 8 * (((v2 == 32) * (3 * v4 - 989)) ^ v1)))();
}

uint64_t sub_25857A654@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v7 = (v6 + 4 * a2);
  v8 = v3 & 0x80000000;
  v9 = a2 + 1;
  v10 = *(v6 + 4 * v9);
  v11 = v7[397] ^ ((v10 & 0x7FFFFFFE | v8) >> 1);
  *v7 = (v11 + v4 - ((v2 - 428 + v5) & (2 * v11))) ^ *(&STACK[0x4E8] + (v10 & 1));
  return (*(a1 + 8 * (((4 * (v9 != 227)) | (16 * (v9 != 227))) ^ v2)))();
}

uint64_t sub_25857A6BC(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 8) == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  v1 = *a1 - 439532179 * ((-2 - ((a1 | 0xA1463DD2) + (~a1 | 0x5EB9C22D))) ^ 0x801FFFAF);
  return (*(*(&off_286999DF0 + (v1 ^ 0x36F)) + ((v3 * (((v1 - 1788050105) & 0x6A9377FF) - 289)) ^ v1)))();
}

uint64_t sub_25857A758()
{
  (*(v3 + 8 * ((v0 + 1006) ^ 0x600)))(*v2);
  *v2 = 0;
  *v1 = 0;
  return (v4 - 95751194);
}

void U4HBs()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = *(&off_286999DF0 + (*(off_286999E20 + (*(off_28699A038 + (-119 * (dword_27F9534A0 ^ 0x98 ^ dword_27F948460)) - 4) ^ 0xABu)) ^ (-119 * (dword_27F9534A0 ^ 0x98 ^ dword_27F948460))) - 119);
  v1 = *(&off_286999DF0 + (*(off_286999E98 + (*(off_28699A160 + (-119 * ((dword_27F948460 - *v0) ^ 0x98))) ^ 0x40u) - 8) ^ (-119 * ((dword_27F948460 - *v0) ^ 0x98))) + 2);
  v2 = *v0 - &v4 + *(v1 - 4);
  *v0 = (1667229833 * v2) ^ 0xD89E539CF9C77798;
  *(v1 - 4) = 1667229833 * (v2 ^ 0xD89E539CF9C77798);
  v5[1] = 1159261966 - 439532179 * (((v5 | 0xD9D1186A) - (v5 & 0xD9D1186A)) ^ 0x77725E8);
  LOBYTE(v1) = -119 * ((*(v1 - 4) - *v0) ^ 0x98);
  v3 = *(&off_286999DF0 + ((-119 * ((dword_27F948460 + dword_27F9534A0) ^ 0x98)) ^ byte_2585C7580[byte_2585D2320[(-119 * ((dword_27F948460 + dword_27F9534A0) ^ 0x98))] ^ 0x16]) - 65);
  (*(v3 + 8 * ((*(off_286999F10 + (*(off_28699A1C8 + v1) ^ 0x4Au) - 12) ^ v1) + 1346)))(v5);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_25857B7B4(uint64_t a1)
{
  v162 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = *(a1 + 8);
  v146 = (*v2 ^ 0xFDDFFDB3) + 2134761312 + ((2 * *v2) & 0xFBBFFB66);
  v147 = (v2[1] ^ 0xFDDFFDB3) + 2134761312 + ((2 * v2[1]) & 0xFBBFFB66);
  v148 = (v2[2] ^ 0xFDDFFDB3) + 2134761312 + ((2 * v2[2]) & 0xFBBFFB66);
  v149 = (v2[3] ^ 0xFDDFFDB3) + 2134761312 + ((2 * v2[3]) & 0xFBBFFB66);
  v150 = (v2[4] ^ 0xFDDFFDB3) + 2134761312 + ((2 * v2[4]) & 0xFBBFFB66);
  v151 = (v2[5] ^ 0xFDDFFDB3) + 2134761312 + ((2 * v2[5]) & 0xFBBFFB66);
  v152 = (v2[6] ^ 0xFDDFFDB3) + 2134761312 + ((2 * v2[6]) & 0xFBBFFB66);
  v153 = (v2[7] ^ 0xFDDFFDB3) + 2134761312 + ((2 * v2[7]) & 0xFBBFFB66);
  v154 = (v2[8] ^ 0xFDDFFDB3) + 2134761312 + ((2 * v2[8]) & 0xFBBFFB66);
  v155 = (v2[9] ^ 0xFDDFFDB3) + 2134761312 + ((2 * v2[9]) & 0xFBBFFB66);
  v156 = (v2[10] ^ 0xFDDFFDB3) + 2134761312 + ((2 * v2[10]) & 0xFBBFFB66);
  v157 = (v2[11] ^ 0xFDDFFDB3) + 2134761312 + ((2 * v2[11]) & 0xFBBFFB66);
  v158 = (v2[12] ^ 0xFDDFFDB3) + 2134761312 + ((2 * v2[12]) & 0xFBBFFB66);
  v159 = (v2[13] ^ 0xFDDFFDB3) + 2134761312 + ((2 * v2[13]) & 0xFBBFFB66);
  v160 = (v2[14] ^ 0xFDDFFDB3) + 2134761312 + ((2 * v2[14]) & 0xFBBFFB66);
  v161 = (v2[15] ^ 0xFDDFFDB3) + 2134761312 + ((2 * v2[15]) & 0xFBBFFB66);
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = *v1 + v146 - 1309286865 + ((((v4 & v3 | v5 & ~v3) ^ 0x4BDF2224) + 1089125756) ^ (((v4 & v3 | v5 & ~v3) ^ 0x5B9329B) + 244100549) ^ (((v4 & v3 | v5 & ~v3) ^ 0x4E6610BF) + 1163104225));
  v7 = 2 * (v6 & 0x9D2149D6);
  v8 = ((2 * (v6 ^ 0x680E95A0)) ^ 0xEA5FB8EC) & (v6 ^ 0x680E95A0) ^ (2 * (v6 ^ 0x680E95A0)) & 0xF52FDC76;
  v9 = v8 ^ 0x15204412;
  v10 = (v8 ^ 0xE00F0860) & (4 * (v7 & (v6 ^ 0x580C0584) ^ v6 & 0x9D2149D6)) ^ v7 & (v6 ^ 0x580C0584) ^ v6 & 0x9D2149D6;
  v11 = ((4 * v9) ^ 0xD4BF71D8) & v9 ^ (4 * v9) & 0xF52FDC74;
  v12 = (v11 ^ 0xD42F5040) & (16 * v10) ^ v10;
  v13 = ((16 * (v11 ^ 0x21008C26)) ^ 0x52FDC760) & (v11 ^ 0x21008C26) ^ (16 * (v11 ^ 0x21008C26)) & 0xF52FDC70;
  v14 = v12 ^ 0xF52FDC76 ^ (v13 ^ 0x502DC400) & (v12 << 8);
  v15 = v7 & (v6 ^ 0x999D25C7) ^ v6 & 0x9D2149D6;
  v16 = ((2 * (v6 ^ 0xA99D354F)) ^ 0x6978F932) & (v6 ^ 0xA99D354F) ^ (2 * (v6 ^ 0xA99D354F)) & 0x34BC7C98;
  v17 = (v16 ^ 0x20086810) & (4 * v15) ^ v15;
  v18 = ((4 * (v16 ^ 0x14840489)) ^ 0xD2F1F264) & (v16 ^ 0x14840489) ^ (4 * (v16 ^ 0x14840489)) & 0x34BC7C98;
  v19 = (v18 ^ 0x10B07000) & (16 * v17) ^ v17;
  v20 = ((16 * (v18 ^ 0x240C0C99)) ^ 0x4BC7C990) & (v18 ^ 0x240C0C99) ^ (16 * (v18 ^ 0x240C0C99)) & 0x34BC7C90;
  v21 = v19 ^ 0x34BC7C99 ^ (v20 ^ 0x844800) & (v19 << 8);
  v22 = ((((v14 << 16) & 0x2F0000 ^ v14 ^ ((v14 << 16) ^ 0x760000) & (((v13 ^ 0xA5021816) << 8) & 0x2F0000 ^ 0x230000 ^ (((v13 ^ 0xA5021816) << 8) ^ 0xDC0000) & (v13 ^ 0xA5021816))) << 8) ^ (v6 << 7)) & 0xFFFFFF80 | ((v6 ^ (2 * ((v21 << 16) & 0x34000000 ^ v21 ^ ((v21 << 16) ^ 0x7C000000) & ((((v20 ^ 0x34383409) << 8) ^ 0x3C7C0000) & (v20 ^ 0x34383409) ^ ((v20 ^ 0x34383409) << 8) & 0x34BC0000u)))) >> 25);
  v23 = v3 - 678865755 + (((v22 ^ 0xC897FAC) + 424728472) ^ ((v22 ^ 0x3A0F16AB) + 802602641) ^ ((v22 ^ 0xAFFEF449) - 1171825549));
  v24 = (1680509467 - v23) ^ v23 ^ ((v23 ^ 0xEBC216F2) + 1880580887) ^ ((v23 ^ 0x1916578E) - 2101140885) ^ ((v23 ^ 0x69013498) - 220970627);
  v25 = v3 & (v24 ^ 0x642A8A1B) | v4 & ~(v24 ^ 0x642A8A1B);
  v26 = v5 + v147 - 1283217695 + (((v25 ^ 0xD3AB766A) + 162832635) ^ ((v25 ^ 0x5760EEA6) - 1921042377) ^ ((v25 ^ 0x84CB98CC) + 1590971997));
  v27 = 2 * (v26 & 0xDE065CD1);
  v28 = ((2 * (v26 ^ 0x2E355D4C)) ^ 0xE066033A) & (v26 ^ 0x2E355D4C) ^ (2 * (v26 ^ 0x2E355D4C)) & 0xF033019C;
  v29 = v28 ^ 0x10110085;
  v30 = (v28 ^ 0xE0220108) & (4 * (v27 & (v26 ^ 0x9E355CCC) ^ v26 & 0xDE065CD1)) ^ v27 & (v26 ^ 0x9E355CCC) ^ v26 & 0xDE065CD1;
  v31 = ((4 * v29) ^ 0xC0CC0674) & v29 ^ (4 * v29) & 0xF033019C;
  v32 = (v31 ^ 0xC000001F) & (16 * v30) ^ v30;
  v33 = ((16 * (v31 ^ 0x30330189)) ^ 0x33019D0) & (v31 ^ 0x30330189) ^ (16 * (v31 ^ 0x30330189)) & 0xF0330190;
  v34 = v32 ^ 0xF033019D ^ (v33 ^ 0x300100) & (v32 << 8);
  v35 = v27 & (v26 ^ 0xDFE45C81) ^ v26 & 0xDE065CD1;
  v36 = ((2 * (v26 ^ 0xD7E04CA3)) ^ 0x13CC20E4) & (v26 ^ 0xD7E04CA3) ^ (2 * (v26 ^ 0xD7E04CA3)) & 0x9E61072;
  v37 = (v36 ^ 0x40) & (4 * v35) ^ v35;
  v38 = ((4 * (v36 ^ 0x8221012)) ^ 0x279841C8) & (v36 ^ 0x8221012) ^ (4 * (v36 ^ 0x8221012)) & 0x9E61070;
  v39 = v37 ^ 0x9E61072 ^ (v38 ^ 0x1800040) & (16 * v37);
  v40 = (16 * (v38 ^ 0x8661032)) & 0x9E61070 ^ 0x1861052 ^ ((16 * (v38 ^ 0x8661032)) ^ 0x9E610720) & (v38 ^ 0x8661032);
  v41 = (v39 << 8) & 0x9E61000 ^ v39 ^ ((v39 << 8) ^ 0xE6107200) & v40;
  v42 = ((((v34 << 16) & 0x30000 ^ v34 ^ ((v34 << 16) ^ 0x50000) & (((v33 ^ 0xF003000D) << 8) & 0xF0330000 ^ (((v33 ^ 0xF003000D) << 8) ^ 0x10000) & (v33 ^ 0xF003000D) ^ 0x20000)) << 13) ^ (v26 << 12)) & 0xFFFFF000 | ((v26 ^ (2 * ((v41 << 16) & 0x9E00000 ^ v41 ^ ((v41 << 16) ^ 0x700000) & ((v40 << 8) & 0x9E60000 ^ 0x9E00000 ^ ((v40 << 8) ^ 0x66100000) & v40)))) >> 20);
  v43 = (((v42 ^ 0x398AF0D0) + 1815606255) ^ ((v42 ^ 0x31D74DF4) + 1684688587) ^ ((v42 ^ 0x2DA301F4) + 2015232715)) + (((v24 ^ 0x3161EA74) + 215291622) ^ ((v24 ^ 0x398D5492) + 70887428) ^ ((v24 ^ 0x6CC634FD) + 1366476909));
  v44 = v43 + 907921798;
  v45 = (v24 ^ 0x642A8A1B) & (v43 + 907921798) | v3 & ~(v43 + 907921798);
  v46 = v4 + v148 + (((v45 ^ 0x1218AE47) + 690565390) ^ ((v45 ^ 0xC723FE38) - 65904269) ^ ((v45 ^ 0xD53B507F) - 301281482));
  HIDWORD(v47) = (v46 - 358272268) ^ (1664355203 - v46) ^ (((v46 - 358272268) ^ 0x2A50) + 27609) ^ (((v46 - 358272268) ^ 0xFFFFFC03) + 15756) ^ (((v46 - 358272268) ^ 0x17DB) + 22100);
  LODWORD(v47) = (((v46 - 358272268) ^ 0x480853F0) - 920415623) ^ (v46 - 358272268) ^ (((v46 - 358272268) ^ 0xCAA2574F) + 1267308232) ^ (((v46 - 358272268) ^ 0x385C500) - 2102524768) ^ (((v46 - 358272268) ^ 0xFFFBFFD8) + 2127576664);
  v48 = v43 - 1080797068 + ((((v47 >> 15) ^ 0x67EAD28D) + 1837981237) ^ (((v47 >> 15) ^ 0x3D298C42) + 927858940) ^ (((v47 >> 15) ^ 0x262DA367) + 743059423));
  v49 = v48 & (v24 ^ 0x642A8A1B ^ (v43 + 907921798)) ^ v24;
  v50 = v3 + v149 + 564095445 + (((v49 ^ 0x329B7F46) + 1070110428) ^ ((v49 ^ 0x3EAF6F7F) + 872187619) ^ ((v49 ^ 0x681E9A22) + 1699574720));
  v51 = 2 * (v50 & 0xB987247F);
  v52 = ((2 * (v50 ^ 0xAF948783)) ^ 0x2C2747F8) & (v50 ^ 0xAF948783) ^ (2 * (v50 ^ 0xAF948783)) & 0x1613A3FC;
  v53 = v52 ^ 0x1210A004;
  v54 = (v52 ^ 0x40103F8) & (4 * (v51 & (v50 ^ 0xBD96877F) ^ v50 & 0xB987247F)) ^ v51 & (v50 ^ 0xBD96877F) ^ v50 & 0xB987247F;
  v55 = ((4 * v53) ^ 0x584E8FF0) & v53 ^ (4 * v53) & 0x1613A3FC;
  v56 = v54 ^ 0x1613A3FC ^ (v55 ^ 0x100283F0) & (16 * v54);
  v57 = v51 & (v50 ^ 0xBD17857E) ^ v50 & 0xB987247F;
  v58 = ((2 * (v50 ^ 0xBC1DCD92)) ^ 0xB35D3DA) & (v50 ^ 0xBC1DCD92) ^ (2 * (v50 ^ 0xBC1DCD92)) & 0x59AE9EC;
  v59 = (v58 ^ 0x1081C8) & (4 * v57) ^ v57;
  v60 = ((4 * (v58 ^ 0x48A2825)) ^ 0x166BA7B4) & (v58 ^ 0x48A2825) ^ (4 * (v58 ^ 0x48A2825)) & 0x59AE9EC;
  v61 = (v60 ^ 0x40AA1A0) & (16 * v59) ^ v59;
  v62 = ((16 * (v60 ^ 0x1904849)) ^ 0x59AE9ED0) & (v60 ^ 0x1904849) ^ (16 * (v60 ^ 0x1904849)) & 0x59AE9E0;
  v63 = v61 ^ 0x59AE9ED ^ (v62 ^ 0x18A8800) & (v61 << 8);
  v64 = ((((v56 << 8) ^ v56 ^ (v56 << 8) & (((16 * v55) ^ 0x100) & v55 ^ (16 * v55) & 0x100)) << 23) ^ (v50 << 22)) & 0xFFC00000 | ((v50 ^ (2 * ((v63 << 16) & 0x59A0000 ^ v63 ^ ((v63 << 16) ^ 0x69ED0000) & (((v62 ^ 0x410612D) << 8) & 0x59A0000 ^ 0x5120000 ^ (((v62 ^ 0x410612D) << 8) ^ 0x1AE90000) & (v62 ^ 0x410612Du))))) >> 10);
  v65 = v48 + 313785323 + (((v64 ^ 0xE6F0197C) - 363825706) ^ ((v64 ^ 0xBB7B7EA3) - 1210379765) ^ ((v64 ^ 0xBC670F62) - 1329110068));
  HIDWORD(v47) = v150 + (((v24 ^ 0x6DD2CC87) + 1348874263) ^ ((v24 ^ 0x3D743F6D) + 12633085) ^ ((v24 ^ 0x348C79F1) + 154699105)) + 515882001 + ((v43 - ((2 * (v43 + 907921798)) & 0xB228BF60) + 254945590) ^ 0xD9145FB0 ^ v65 & (v48 ^ (v43 + 907921798)));
  LODWORD(v47) = HIDWORD(v47);
  v66 = (v47 >> 25) + v65;
  HIDWORD(v47) = v151 + v44 - 899028713 + ((v48 + 1517631221 + (~(2 * v48) | 0x4B159215) + 1) ^ 0x5A7536F5 ^ v66 & (v65 ^ v48));
  LODWORD(v47) = HIDWORD(v47);
  v67 = (v47 >> 20) + v66;
  HIDWORD(v47) = v152 + v48 + 722626816 + ((v65 - ((2 * v65) & 0x602BFCE0) - 1340735888) ^ 0xB015FE70 ^ v67 & (v66 ^ v65));
  LODWORD(v47) = HIDWORD(v47);
  v68 = (v47 >> 15) + v67;
  HIDWORD(v47) = v153 + v65 - 2144815122 + ((v66 - ((2 * v66) & 0xDE16E3E6) + 1863021043) ^ 0x6F0B71F3 ^ v68 & (v67 ^ v66));
  LODWORD(v47) = HIDWORD(v47);
  v69 = (v47 >> 10) + v68;
  HIDWORD(v47) = v154 + v66 - 329073723 + ((v67 - ((2 * v67) & 0x41A3057A) - 1596882243) ^ 0xA0D182BD ^ v69 & (v68 ^ v67));
  LODWORD(v47) = HIDWORD(v47);
  v70 = (v47 >> 25) + v69;
  HIDWORD(v47) = v155 + v67 + 237443740 + ((v68 - ((2 * v68) & 0xA2AFEABC) - 782764706) ^ 0xD157F55E ^ v70 & (v69 ^ v68));
  LODWORD(v47) = HIDWORD(v47);
  v71 = (v47 >> 20) + v70;
  HIDWORD(v47) = v156 + v68 - 2099151202 + ((v69 - ((2 * v69) & 0x73533078) - 1180067780) ^ 0xB9A9983C ^ v71 & (v70 ^ v69));
  LODWORD(v47) = HIDWORD(v47);
  v72 = (v47 >> 15) + v71;
  HIDWORD(v47) = v157 + v69 + 205453995 + (v71 & v72 | v70 & ~v72);
  LODWORD(v47) = HIDWORD(v47);
  v73 = (v47 >> 10) + v72;
  HIDWORD(v47) = v158 + v70 - 294505457 + (v72 & v73 | v71 & ~v73);
  LODWORD(v47) = HIDWORD(v47);
  v74 = (v47 >> 25) + v73;
  HIDWORD(v47) = v159 + v71 - 2139450240 + (v73 & v74 | v72 & ~v74);
  LODWORD(v47) = HIDWORD(v47);
  v75 = (v47 >> 20) + v74;
  HIDWORD(v47) = v160 + v72 + 693855867 + (v74 & v75 | v73 & ~v75);
  LODWORD(v47) = HIDWORD(v47);
  v76 = (v47 >> 15) + v75;
  HIDWORD(v47) = v161 + v73 - 862573810 + (v75 & v76 | v74 & ~v76);
  LODWORD(v47) = HIDWORD(v47);
  v77 = (v47 >> 10) + v76;
  HIDWORD(v47) = v147 + v74 + 2030061647 + (v77 & v75 | v76 & ~v75);
  LODWORD(v47) = HIDWORD(v47);
  v78 = (v47 >> 27) + v77;
  HIDWORD(v47) = v152 + v75 + 1126356525 + (v78 & v76 | v77 & ~v76);
  LODWORD(v47) = HIDWORD(v47);
  v79 = (v47 >> 23) + v78;
  HIDWORD(v47) = v157 + v76 - 1455391426 + (v79 & v77 | v78 & ~v77);
  LODWORD(v47) = HIDWORD(v47);
  v80 = (v47 >> 18) + v79;
  HIDWORD(v47) = v146 + v77 + 1821960855 + (v80 & v78 | v79 & ~v78);
  LODWORD(v47) = HIDWORD(v47);
  v81 = (v47 >> 12) + v80;
  HIDWORD(v47) = v151 + v78 + 1494299466 + (v81 & v79 | v80 & ~v79);
  LODWORD(v47) = HIDWORD(v47);
  v82 = (v47 >> 27) + v81;
  HIDWORD(v47) = v156 + v79 - 2061093056 + (v82 & v80 | v81 & ~v80);
  LODWORD(v47) = HIDWORD(v47);
  v83 = (v47 >> 23) + v82;
  HIDWORD(v47) = v161 + v80 + 1535379822 + (v83 & v81 | v82 & ~v81);
  LODWORD(v47) = HIDWORD(v47);
  v84 = (v47 >> 18) + v83;
  HIDWORD(v47) = v150 + v81 + 1790320309 + (v84 & v82 | v83 & ~v82);
  LODWORD(v47) = HIDWORD(v47);
  LODWORD(v2) = (v47 >> 12) + v84;
  HIDWORD(v47) = v155 + v82 - 1530662701 + (v2 & v83 | v84 & ~v83);
  LODWORD(v47) = HIDWORD(v47);
  v85 = (v47 >> 27) + v2;
  HIDWORD(v47) = v160 + v83 + 1176054467 + (v85 & v84 | v2 & ~v84);
  LODWORD(v47) = HIDWORD(v47);
  v86 = (v47 >> 23) + v85;
  HIDWORD(v47) = v149 + v84 + 2008494196 + (v86 & v2 | v85 & ~v2);
  LODWORD(v47) = HIDWORD(v47);
  v87 = (v47 >> 18) + v86;
  HIDWORD(v47) = v154 + v2 - 935577638 + (v87 & v85 | v86 & ~v85);
  LODWORD(v47) = HIDWORD(v47);
  v88 = (v47 >> 12) + v87;
  HIDWORD(v47) = v159 + v85 + 751176690 + (v88 & v86 | v87 & ~v86);
  LODWORD(v47) = HIDWORD(v47);
  v89 = (v47 >> 27) + v88;
  HIDWORD(v47) = v148 + v86 + 2144454373 + (v89 & v87 | v88 & ~v87);
  LODWORD(v47) = HIDWORD(v47);
  v90 = (v47 >> 23) + v89;
  HIDWORD(v47) = v153 + v87 - 363780666 + (v90 & v88 | v89 & ~v88);
  LODWORD(v47) = HIDWORD(v47);
  v91 = (v47 >> 18) + v90;
  HIDWORD(v47) = v158 + v88 + 269250423 + ((v91 ^ v90) & v89 ^ v90);
  LODWORD(v47) = HIDWORD(v47);
  LODWORD(v2) = *(&v146 + (v89 & 0xF));
  v92 = (v47 >> 12) + v91;
  *(&v146 + (v89 & 0xF)) = *(&v146 + (v92 & 0xF));
  *(&v146 + (v92 & 0xF)) = v2;
  v93 = *(&v146 + (v91 & 0xF));
  *(&v146 + (v91 & 0xF)) = *(&v146 + (v90 & 0xF));
  *(&v146 + (v90 & 0xF)) = v93;
  v94 = *(&v146 + (v89 >> 4));
  *(&v146 + (v89 >> 4)) = *(&v146 + (v92 >> 4));
  *(&v146 + (v92 >> 4)) = v94;
  v95 = (v89 >> 8) & 0xF;
  v96 = *(&v146 + v95);
  LODWORD(v2) = (v92 >> 8) & 0xF;
  *(&v146 + v95) = *(&v146 + v2);
  *(&v146 + v2) = v96;
  v97 = *(&v146 + (v89 >> 12));
  *(&v146 + (v89 >> 12)) = *(&v146 + (v92 >> 12));
  *(&v146 + (v92 >> 12)) = v97;
  HIDWORD(v47) = v151 + v89 - 2099487697 + (v92 ^ v91 ^ v90);
  LODWORD(v47) = HIDWORD(v47);
  LODWORD(v2) = (v47 >> 28) + v92;
  HIDWORD(v47) = v154 + v90 + 173283694 + (v2 ^ v92 ^ v91);
  LODWORD(v47) = HIDWORD(v47);
  v98 = (v47 >> 21) + v2;
  HIDWORD(v47) = v157 + v91 - 260078577 + (v2 ^ v92 ^ v98);
  LODWORD(v47) = HIDWORD(v47);
  v99 = (v47 >> 16) + v98;
  HIDWORD(v47) = v160 + v92 - 2134418695 + (v98 ^ v2 ^ v99);
  LODWORD(v47) = HIDWORD(v47);
  v100 = (v47 >> 9) + v99;
  HIDWORD(v47) = v147 + v2 + 664866097 + (v99 ^ v98 ^ v100);
  LODWORD(v47) = HIDWORD(v47);
  v101 = (v47 >> 28) + v100;
  HIDWORD(v47) = v150 + v98 - 826215786 + (v100 ^ v99 ^ v101);
  LODWORD(v47) = HIDWORD(v47);
  v102 = (v47 >> 21) + v101;
  HIDWORD(v47) = v153 + v99 + 2040360525 + (v101 ^ v100 ^ v102);
  LODWORD(v47) = HIDWORD(v47);
  v103 = (v47 >> 16) + v102;
  HIDWORD(v47) = v156 + v100 + 1101127517 + (v102 ^ v101 ^ v103);
  LODWORD(v47) = HIDWORD(v47);
  v104 = (v47 >> 9) + v103;
  HIDWORD(v47) = v159 + v101 - 1417829965 + (v103 ^ v102 ^ v104);
  LODWORD(v47) = HIDWORD(v47);
  v105 = (v47 >> 28) + v104;
  HIDWORD(v47) = v146 + v102 + 1837320935 + (v104 ^ v103 ^ v105);
  LODWORD(v47) = HIDWORD(v47);
  v106 = (v47 >> 21) + v105;
  HIDWORD(v47) = v149 + v103 + 1473336178 + (v105 ^ v104 ^ v106);
  LODWORD(v47) = HIDWORD(v47);
  v107 = (v47 >> 16) + v106;
  HIDWORD(v47) = v152 + v104 - 2023079950 + (v106 ^ v105 ^ v107);
  LODWORD(v47) = HIDWORD(v47);
  v108 = (v47 >> 9) + v107;
  HIDWORD(v47) = v155 + v105 + 1555493670 + (v107 ^ v106 ^ v108);
  LODWORD(v47) = HIDWORD(v47);
  v109 = (v47 >> 28) + v108;
  HIDWORD(v47) = v158 + v106 + 1774042322 + (v108 ^ v107 ^ v109);
  LODWORD(v47) = HIDWORD(v47);
  v110 = (v47 >> 21) + v109;
  HIDWORD(v47) = v161 + v107 - 1568366619 + (v109 ^ v108 ^ v110);
  LODWORD(v47) = HIDWORD(v47);
  v111 = (v47 >> 16) + v110;
  HIDWORD(v47) = v148 + v108 + 1200519506 + (v110 ^ v109 ^ v111);
  LODWORD(v47) = HIDWORD(v47);
  v112 = (v47 >> 9) + v111;
  HIDWORD(v47) = v146 + v109 + 1997227313 + ((v112 | ~v110) ^ v111);
  LODWORD(v47) = HIDWORD(v47);
  v113 = (v47 >> 26) + v112;
  HIDWORD(v47) = v153 + v110 - 972217724 + ((v113 | ~v111) ^ v112);
  LODWORD(v47) = HIDWORD(v47);
  v114 = (v47 >> 22) + v113;
  HIDWORD(v47) = v160 + v111 + 779503252 + ((v114 | ~v112) ^ v113);
  LODWORD(v47) = HIDWORD(v47);
  v115 = (v47 >> 17) + v114;
  HIDWORD(v47) = v151 + v112 + 2138424102 + ((v115 | ~v113) ^ v114);
  LODWORD(v47) = HIDWORD(v47);
  v116 = (v47 >> 11) + v115;
  HIDWORD(v47) = v158 + v113 - 398623568 + ((v116 | ~v114) ^ v115);
  LODWORD(v47) = HIDWORD(v47);
  v117 = (v47 >> 26) + v116;
  HIDWORD(v47) = v149 + v114 + 300871551 + ((v117 | ~v115) ^ v116);
  LODWORD(v47) = HIDWORD(v47);
  v118 = (v47 >> 22) + v117;
  HIDWORD(v47) = v156 + v115 - 2100160662 + ((v118 | ~v116) ^ v117);
  LODWORD(v47) = HIDWORD(v47);
  v119 = (v47 >> 17) + v118;
  HIDWORD(v47) = v147 + v116 + 140935358 + ((v119 | ~v117) ^ v118);
  LODWORD(v47) = HIDWORD(v47);
  v120 = (v47 >> 11) + v119;
  HIDWORD(v47) = v154 + v117 - 225795780 + ((v120 | ~v118) ^ v119);
  LODWORD(v47) = HIDWORD(v47);
  v121 = (v47 >> 26) + v120;
  HIDWORD(v47) = v161 + v118 - 2129720883 + ((v121 | ~v119) ^ v120);
  LODWORD(v47) = HIDWORD(v47);
  v122 = (v47 >> 22) + v121;
  HIDWORD(v47) = v152 + v119 + 635659777 + ((v122 | ~v120) ^ v121);
  LODWORD(v47) = HIDWORD(v47);
  v123 = (v47 >> 17) + v122;
  HIDWORD(v47) = v159 + v120 - 789957490 + ((v123 | ~v121) ^ v122);
  LODWORD(v47) = HIDWORD(v47);
  v124 = (v47 >> 11) + v123;
  HIDWORD(v47) = v150 + v121 + 2050335087 + ((v124 | ~v122) ^ v123);
  LODWORD(v47) = HIDWORD(v47);
  v125 = v124 + ((v47 >> 26) ^ 0xEFDFFFBD) + ((2 * (v47 >> 26)) & 0xDFBFFF7A) + 394209115;
  v126 = ((v125 ^ 0xDDD3EDE) - 176298438) ^ v125 ^ ((v125 ^ 0x3A8C7D72) - 1037261418) ^ ((v125 ^ 0x4FF1B34B) - 1219400787) ^ ((v125 ^ 0x7FFFD7FF) - 2023813351);
  HIDWORD(v47) = v157 + v122 + 1075647778 + ((v124 - ((2 * v124) & 0xAE8B69A4) - 683297582) ^ 0x28BA4B2D ^ (v126 ^ 0xF8A0D8E7) & v123);
  LODWORD(v47) = HIDWORD(v47);
  v127 = (((v126 ^ 0x93A148AA) - 1856856067) ^ ((v126 ^ 0x6E0762CD) + 1827976604) ^ ((v126 ^ 0xFAF90D7F) - 133506518)) + 1062947609 + (v47 >> 22);
  v128 = (v127 ^ 0xBAF7C497 ^ ((v127 ^ 0x648542D4) - 562919868) ^ ((v127 ^ 0xA16FF4D4) + 462958660) ^ ((v127 ^ 0xFF1CF2D6) + 1173042754) ^ ((v127 ^ 0x7FFE7FBE) - 989218006)) & v124 ^ v126;
  HIDWORD(v47) = v148 + v123 + 1733771745 + (((v128 ^ 0x38AFEF31) - 2039643119) ^ ((v128 ^ 0xF3398403) + 1308356387) ^ ((v128 ^ 0x3336B3D5) - 1913333515));
  LODWORD(v47) = HIDWORD(v47);
  v129 = v127 + 1912764822 + (v47 >> 17);
  LODWORD(v2) = (v129 ^ 0x6F16BB3) & (2 * (v129 & 0x48F54B02)) ^ v129 & 0x48F54B02;
  v130 = ((2 * (v129 ^ 0x773E9B7)) ^ 0x9F0D456A) & (v129 ^ 0x773E9B7) ^ (2 * (v129 ^ 0x773E9B7)) & 0x4F86A2B4;
  v131 = v130 ^ 0x4082A295;
  v132 = (v130 ^ 0x7040000) & (4 * v2) ^ v2;
  LODWORD(v2) = ((4 * v131) ^ 0x3E1A8AD4) & v131 ^ (4 * v131) & 0x4F86A2B4;
  v133 = (v2 ^ 0xE028280) & (16 * v132) ^ v132;
  LODWORD(v2) = ((16 * (v2 ^ 0x41842021)) ^ 0xF86A2B50) & (v2 ^ 0x41842021) ^ (16 * (v2 ^ 0x41842021)) & 0x4F86A2B0;
  v134 = v133 ^ 0x4F86A2B5 ^ (v2 ^ 0x48022200) & (v133 << 8);
  LODWORD(v2) = v129 ^ (2 * ((v134 << 16) & 0x4F860000 ^ v134 ^ ((v134 << 16) ^ 0x22B50000) & (((v2 ^ 0x78480A5) << 8) & 0x4F860000 ^ 0x49040000 ^ (((v2 ^ 0x78480A5) << 8) ^ 0x6A20000) & (v2 ^ 0x78480A5))));
  v135 = (v127 ^ 0xB2F794DC) & (2 * (v127 & 0xBAF7C498)) ^ v127 & 0xBAF7C498;
  v136 = ((2 * (v127 ^ 0xD6B19DEC)) ^ 0xD88CB2E8) & (v127 ^ 0xD6B19DEC) ^ (2 * (v127 ^ 0xD6B19DEC)) & 0x6C465974;
  v137 = v136 ^ 0x24424914;
  v138 = (v136 ^ 0x48041060) & (4 * v135) ^ v135;
  v139 = ((4 * v137) ^ 0xB11965D0) & v137 ^ (4 * v137) & 0x6C465974;
  v140 = (v139 ^ 0x20004140) & (16 * v138) ^ v138;
  v141 = ((16 * (v139 ^ 0x4C461824)) ^ 0xC4659740) & (v139 ^ 0x4C461824) ^ (16 * (v139 ^ 0x4C461824)) & 0x6C465970;
  v142 = v140 ^ 0x6C465974 ^ (v141 ^ 0x44441100) & (v140 << 8);
  v143 = v127 ^ (2 * ((v142 << 16) & 0x6C460000 ^ v142 ^ ((v142 << 16) ^ 0x59740000) & (((v141 ^ 0x28024834) << 8) & 0x6C460000 ^ 0x28060000 ^ (((v141 ^ 0x28024834) << 8) ^ 0x46590000) & (v141 ^ 0x28024834)))) ^ v2 & 0xA5A4908 ^ (v2 ^ 0x2D0FF197) & (v126 ^ 0xD056E10);
  HIDWORD(v47) = v155 + v124 + 826461382 + (((v143 ^ 0xE08CC97B) - 659806140) ^ ((v143 ^ 0x28511951) + 275904618) ^ ((v143 ^ 0xCDDB18A5) - 168035938));
  LODWORD(v47) = HIDWORD(v47);
  result = v1[1];
  *v1 = *v1 - 95219791 + (((v126 ^ 0x8BE4ABA9) - 1994949376) ^ ((v126 ^ 0x906F64A9) - 1835224064) ^ ((v126 ^ 0x1CD4E818) + 505888591));
  v1[1] = result + v129 + ((v47 >> 11) ^ 0x75DBDDFF) + ((2 * (v47 >> 11)) & 0xEBB7BBFE) - 753308413;
  v145 = v1[3] - 1158167400 + v127;
  v1[2] += 1224035074 + v129;
  v1[3] = v145;
  return result;
}

void IPaI1oem5iL()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *(&off_286999DF0 + ((-119 * (dword_27F93D438 ^ 0x98 ^ dword_27F948460)) ^ byte_2585C7480[byte_2585D2220[(-119 * (dword_27F93D438 ^ 0x98 ^ dword_27F948460))] ^ 0x74]) - 46);
  v1 = -119 * ((dword_27F948460 + *v0) ^ 0x98);
  v2 = *(&off_286999DF0 + (*(off_28699A010 + (*(off_28699A2E0 + v1 - 12) ^ 0x50u)) ^ v1) - 50);
  v3 = (*(v2 - 4) + *v0) ^ &v5;
  *v0 = 1667229833 * (v3 + 0x2761AC6306388868);
  *(v2 - 4) = 1667229833 * (v3 ^ 0xD89E539CF9C77798);
  v6[1] = 1159261966 - 439532179 * ((v6 - 2006973296 - 2 * (v6 & 0x88600490)) ^ 0x56C63912);
  LOBYTE(v2) = -119 * ((*(v2 - 4) + *v0) ^ 0x98);
  v4 = *(&off_286999DF0 + ((-119 * (dword_27F93D438 ^ 0x98 ^ dword_27F948460)) ^ byte_2585C7280[byte_2585D2020[(-119 * (dword_27F93D438 ^ 0x98 ^ dword_27F948460))] ^ 0x29]) + 61);
  (*(v4 + 8 * ((*(off_286999E20 + (*(off_28699A038 + v2 - 4) ^ 0xADu)) ^ v2) + 1283)))(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_25857D790()
{
  v5 = v4 - 128;
  v6 = *v0;
  v7 = v4 - 128;
  *v5 = v2 - 2021301169 * ((((v4 - 128) | 0x6B8B2BF0) - (v4 - 128) + ((v4 - 128) & 0x9474D408)) ^ 0xE07D7C50) + 1412063188;
  *(v5 + 8) = v28;
  (*(v3 + 8 * (v2 ^ 0x307)))(v4 - 128);
  v8 = 657053849 * ((-314755354 - (v7 | 0xED3D36E6) + (v7 | 0x12C2C919)) ^ 0x7B78DCD0);
  *v5 = v28;
  *(v4 - 120) = 190851422 - v8;
  *(v4 - 116) = v2 - 1899928345 - v8;
  *(v4 - 112) = &v15;
  (*(v3 + 8 * (v2 + 250)))(v4 - 128);
  v9 = 657053849 * ((v7 & 0x936A8509 | ~(v7 | 0x936A8509)) ^ 0x52F6F3F);
  *v5 = v28;
  *(v4 - 120) = 190851422 - v9;
  *(v4 - 116) = v2 - 1899928345 - v9;
  *(v4 - 112) = &v15 + 1;
  (*(v3 + 8 * (v2 + 250)))(v4 - 128);
  v10 = &v6[56 * *v6];
  v16[19] = v10[43] ^ 0x9C;
  v16[18] = v10[42] ^ 0x9C;
  v16[17] = v10[41] ^ 0x9C;
  v16[16] = v10[40] ^ 0x9C;
  v16[15] = v10[39] ^ 0x9C;
  v16[14] = v10[38] ^ 0x9C;
  v16[13] = v10[37] ^ 0x9C;
  v16[12] = v10[36] ^ 0x9C;
  v16[11] = v10[35] ^ 0x9C;
  v16[10] = v10[34] ^ 0x9C;
  v16[9] = v10[33] ^ 0x9C;
  v16[8] = v10[32] ^ 0x9C;
  v16[7] = v10[31] ^ 0x9C;
  v16[6] = v10[30] ^ 0x9C;
  v16[5] = v10[29] ^ 0x9C;
  v16[4] = v10[28] ^ 0x9C;
  v16[3] = v10[27] ^ 0x9C;
  v16[2] = v10[26] ^ 0x9C;
  v16[1] = v10[25] ^ 0x9C;
  v16[0] = v10[24] ^ 0x9C;
  *(v4 - 112) = v2 + 657053849 * ((((v4 - 128) | 0x4E5540C9) - ((v4 - 128) & 0x4E5540C9)) ^ 0x27EF5500) - 871;
  *(v4 - 104) = v16;
  *v5 = v17;
  *(v4 - 120) = v28;
  (*(v3 + 8 * (v2 ^ 0x329)))(v4 - 128);
  result = v18;
  v12 = v1[1] ^ v17[1] | *v1 ^ v17[0] | v1[2] ^ v17[2] | v1[3] ^ v17[3] | v1[4] ^ v17[4] | v1[5] ^ v17[5] | v1[6] ^ v17[6] | v1[7] ^ v17[7] | v1[8] ^ v17[8] | v1[9] ^ v17[9] | v1[10] ^ v18 | v1[11] ^ v19 | v1[12] ^ v20 | v1[13] ^ v21 | v1[14] ^ v22 | v1[15] ^ v23 | v1[16] ^ v24 | v1[17] ^ v25 | v1[18] ^ v26 | v1[19] ^ v27;
  v13 = v12 | ((v12 & 0xF0) >> 4) | (((v12 | ((v12 & 0xF0) >> 4)) & 0xFCu) >> 2);
  v14 = v13 & 1 | ((v13 & 2) != 0);
  *(v0 + 4) = -42084 * ((v14 ^ 0x1DDEFFFF) + 2 * v14) - 1932499018;
  return result;
}

uint64_t sub_25857DBC4(uint64_t result)
{
  v1 = *(result + 8);
  v2 = (v1[3] << 24) | (v1[2] << 16) | (v1[1] << 8);
  *result = (v2 | *v1) - 2 * ((v2 | *v1) & 0x1E94547F ^ *v1 & 0x1C) - 1634446237;
  return result;
}

uint64_t sub_25857DC14()
{
  v7 = (v1 - 32);
  v8 = (v2 - 32);
  v9 = *v8;
  *(v7 - 1) = *(v8 - 1);
  *v7 = v9;
  return (*(v6 + 8 * (((v0 == 32) * (((v3 + 1017) | v4) ^ v5)) ^ (v3 + 525))))();
}

void sub_25857DC24(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 8) == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v1 = *(a1 + 24) ^ (344723623 * ((2 * (a1 & 0x191F544B) - a1 + 1726000052) ^ 0x9143C67D));
  __asm { BRAA            X12, X17 }
}

uint64_t sub_25857DCD4@<X0>(char a1@<W8>)
{
  v6 = (v3 + (a1 & 0x3F) + 9);
  *(v6 - 1) = v5;
  *v6 = v5;
  return (*(v4 + 8 * ((((v2 & 0x30) == 16) * (((v1 + 206) | 0x46) ^ 0x139)) ^ v1)))();
}

uint64_t sub_25857DD24()
{
  v4 = *v0;
  *v3 = *v0;
  v5 = (v4 ^ 0xF2EFFEBE) + 1062694882 + ((2 * v4) & 0xE5DFFD7C);
  return (*(v1 + 8 * ((31 * ((((v5 ^ 0x14F1C3A8) - 649506056) ^ v5 ^ ((((v2 + 272644966) | 0xC20000C0) ^ (v2 + 1281509749) ^ v5) + 1402660753) ^ ((v5 ^ 0x55782531) - 1732201361) ^ ((v5 ^ 0xEDECFEF6) + 542404522)) != 843542176)) ^ v2)))();
}

uint64_t sub_25857DE48(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v4 = (*a1 ^ v1) == ((419 * (v2 ^ 0x48F)) ^ 0x5C5A086);
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  return (*(v3 + 8 * (v5 ^ v2)))();
}

uint64_t sub_25857DEB4@<X0>(uint64_t a1@<X8>)
{
  v5 = (((v3 - 255) | 1u) ^ 0x6CLL) - v1;
  v6 = *(v4 + v5 - 15);
  v7 = *(v4 + v5 - 31);
  v8 = a1 + v5;
  v9.i64[0] = 0x3838383838383838;
  v9.i64[1] = 0x3838383838383838;
  v10.i64[0] = 0x9C9C9C9C9C9C9C9CLL;
  v10.i64[1] = 0x9C9C9C9C9C9C9C9CLL;
  *(v8 - 15) = vaddq_s8(vsubq_s8(v6, vandq_s8(vaddq_s8(v6, v6), v9)), v10);
  *(v8 - 31) = vaddq_s8(vsubq_s8(v7, vandq_s8(vaddq_s8(v7, v7), v9)), v10);
  return (*(v2 + 8 * ((827 * (v1 == 96)) ^ v3)))();
}

uint64_t sub_25857DF2C(int a1, uint64_t a2)
{
  v6 = *(v4 + v2 + 72);
  v7 = ((((a1 - 618) | 0x41) ^ 0xAB7DBBA8) & (2 * v2)) + (v2 ^ 0x55BEDDF5) + v3;
  *(a2 + v7) = (HIBYTE(v6) ^ 0x6E) - ((2 * (HIBYTE(v6) ^ 0x6E)) & 0x38) - 100;
  *(a2 + v7 + 1) = (BYTE2(v6) ^ 0xD7) - ((2 * (BYTE2(v6) ^ 0xD7)) & 0x38) - 100;
  *(a2 + v7 + 2) = (BYTE1(v6) ^ 0x38) - 2 * ((BYTE1(v6) ^ 0x38) & 0x1F ^ BYTE1(v6) & 3) - 100;
  *(a2 + v7 + 3) = v6 ^ 6;
  return (*(v5 + 8 * ((1758 * (v2 + 4 < *(v4 + 92))) ^ a1)))();
}

uint64_t sub_25857DFFC()
{
  if (v1)
  {
    v4 = *((v2 ^ 0x5986922EB5DEE499) - 0x5986922EB5DEE481) == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = v4 || v0 == 0;
  return (*(v3 + 8 * ((2032 * ((v6 ^ 0xB5) & 1)) ^ 0x3FDu)))();
}

uint64_t sub_25857E070@<X0>(int a1@<W8>)
{
  v8 = v1 + 2;
  v9 = (v2 - 2);
  *v9 = (v8 ^ v5) * (v8 + 17);
  *(v9 - 1) = (v8 + v4 + 94) * (v8 ^ 0xBB);
  return (*(v7 + 8 * (((v3 == 2) * v6) ^ (a1 + 528))))();
}

uint64_t sub_25857E080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  (*(v52 + 8 * (v51 ^ 0x593)))(*(&off_286999DF0 + v51 - 874) - 12);
  (*(v52 + 8 * (v51 + 621)))(*(&off_286999DF0 + (v51 ^ 0x3B4)) - 4, &STACK[0xBF8], 16);
  HIDWORD(a35) = 0;
  v55 = 2072138273 * ((v54 + 1034793028 - 2 * ((v54 - 144) & 0x3DADB0D4)) ^ 0xD4181237);
  *(v54 - 136) = *(&off_286999DF0 + v51 - 800);
  *(v54 - 128) = &a51;
  *(v54 - 116) = 48936756 - v55;
  *(v54 - 112) = v55 + v51 - 701;
  *(v54 - 144) = &a35 + 4;
  (*(v52 + 8 * (v51 + 505)))(v54 - 144);
  return (*(v52 + 8 * (((*(v54 - 120) == v53) * (((v51 + 963837032) & 0xC68D04BE) - 536)) ^ (v51 - 904))))(a32);
}

uint64_t sub_25857E294(uint64_t a1, int a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  LODWORD(STACK[0x4E8]) = v34;
  LODWORD(STACK[0x4EC]) = 834463652;
  v36 = *a4;
  v37 = 1511064119 * ((v33 - ((v35 - 144) | v33) + ((v35 - 144) | 0x10D3567A4437AA24)) ^ 0x8D5DE3C6CC48F56ELL);
  *(v35 - 136) = -1511064119 * ((v33 - ((v35 - 144) | v33) + ((v35 - 144) | 0x10D3567A4437AA24)) ^ 0x8D5DE3C6CC48F56ELL);
  *(v35 - 112) = v36 ^ v37;
  v38 = v32 + 1383635278 - v37;
  *(v35 - 144) = v38;
  *(v35 - 120) = v38 - 127;
  *(v35 - 104) = (v32 + 1414764845) ^ v37;
  *(v35 - 128) = -1511064119 * ((v33 - ((v35 - 144) | v33) + ((v35 - 144) | 0x4437AA24)) ^ 0xCC48F56E);
  *(v35 - 124) = ((v32 + 1383635278) & 0xBAD8EFED) + v37;
  v39 = (*(a1 + 8 * (a2 + v32 + 901)))(v35 - 144);
  return (*(a32 + 8 * *(v35 - 100)))(v39);
}

uint64_t sub_25857E388@<X0>(int a1@<W8>)
{
  v4 = *(v2 + 2);
  *v1 = 3;
  return (*(v3 + 8 * (((v4 == 70) * (((a1 - 160) | 0x9A) ^ 0x5E4)) ^ a1)))();
}

void sub_25857E3CC(_DWORD *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *a1 - 439532179 * ((-2 - ((~a1 | 0x8BE41B99) + (a1 | 0x741BE466))) ^ 0x5542261B);
  v2 = *(&off_286999DF0 + (v1 - 1054));
  (*(v2 + 8 * (v1 ^ 0x29B)))(*(&off_286999DF0 + (v1 ^ 0x4A0)) - 12, v3, 21);
  (*(v2 + 8 * (v1 ^ 0x29B)))(*(&off_286999DF0 + (v1 ^ 0x4EF)) - 12, v4, 35);
  v5 = 0x18CC46F853C65F96;
  v6 = -122503457;
  v7 = 56;
  v8 = 8940;
  v9 = 8401;
  v10 = -113;
  __asm { BRAA            X14, X17 }
}

uint64_t sub_25857E630(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t (*a18)(void), _DWORD *a19)
{
  v23 = (((a19[22] ^ 0x80F772AC) + 2131266900) ^ ((a19[22] ^ 0xD47ACD46) + 730149562) ^ ((a19[22] ^ 0x3A5A8770) - 979011440)) + 128027626 + (((v20 ^ 0x43EFB3FE) - 1139782654) ^ ((v20 ^ 0x53EC9990) - 1408014736) ^ ((v20 ^ (18 * (v21 ^ 0xB5)) ^ 0x7ED411F2) - 2127827700));
  v24 = (v23 ^ 0x8588E149) & (2 * (v23 & 0xD60CE54A)) ^ v23 & 0xD60CE54A;
  v25 = ((2 * (v23 ^ 0x8D9063D9)) ^ 0xB7390D26) & (v23 ^ 0x8D9063D9) ^ (2 * (v23 ^ 0x8D9063D9)) & 0x5B9C8692;
  v26 = v25 ^ 0x48848291;
  v27 = (v25 ^ 0x10100400) & (4 * v24) ^ v24;
  v28 = ((4 * v26) ^ 0x6E721A4C) & v26 ^ (4 * v26) & 0x5B9C8690;
  v29 = (v28 ^ 0x4A100200) & (16 * v27) ^ v27;
  v30 = ((16 * (v28 ^ 0x118C8493)) ^ 0xB9C86930) & (v28 ^ 0x118C8493) ^ (16 * (v28 ^ 0x118C8493)) & 0x5B9C8690;
  v31 = v29 ^ 0x5B9C8693 ^ (v30 ^ 0x19880000) & (v29 << 8);
  a19[22] = v23 ^ (2 * ((v31 << 16) & 0x5B9C0000 ^ v31 ^ ((v31 << 16) ^ 0x6930000) & (((v30 ^ 0x42148683) << 8) & 0x5B9C0000 ^ 0x43180000 ^ (((v30 ^ 0x42148683) << 8) ^ 0x1C860000) & (v30 ^ 0x42148683)))) ^ 0xAC2D0F6;
  v32 = (((v19 ^ 0x41A23819) - 1101150233) ^ ((v19 ^ 0x30B8C7EE) - 817416174) ^ ((v19 ^ 0x1FCDC76D) - 533579629)) + (((a19[18] ^ 0x67605D66) - 1734368614) ^ ((a19[18] ^ 0x2983DFA1) - 696508321) ^ ((a19[18] ^ 0x2034BA5D) - 540326493)) + 1243200090;
  v33 = (v32 ^ 0x9BD6B699) & (2 * (v32 & 0x9394B6DA)) ^ v32 & 0x9394B6DA;
  v34 = ((2 * (v32 ^ 0x98FEDE89)) ^ 0x16D4D0A6) & (v32 ^ 0x98FEDE89) ^ (2 * (v32 ^ 0x98FEDE89)) & 0xB6A6852;
  v35 = v34 ^ 0x92A2851;
  v36 = (v34 ^ 0x2404000) & (4 * v33) ^ v33;
  v37 = ((4 * v35) ^ 0x2DA9A14C) & v35 ^ (4 * v35) & 0xB6A6850;
  v38 = (v37 ^ 0x9282040) & (16 * v36) ^ v36;
  v39 = ((16 * (v37 ^ 0x2424813)) ^ 0xB6A68530) & (v37 ^ 0x2424813) ^ (16 * (v37 ^ 0x2424813)) & 0xB6A6850;
  v40 = v38 ^ 0xB6A6853 ^ (v39 ^ 0x2220000) & (v38 << 8);
  v41 = v32 ^ (2 * ((v40 << 16) & 0xB6A0000 ^ v40 ^ ((v40 << 16) ^ 0x68530000) & (((v39 ^ 0x9486843) << 8) & 0xB6A0000 ^ 0x1020000 ^ (((v39 ^ 0x9486843) << 8) ^ 0x6A680000) & (v39 ^ 0x9486843))));
  v42 = (((a4 ^ 0x4F99B21A) - 1335472666) ^ ((a4 ^ 0xA4FEB427) + 1526811609) ^ ((a4 ^ 0x85B03EA7) + 2052047193)) + (((a19[19] ^ 0x2914FA51) - 689240657) ^ ((a19[19] ^ 0x35F531B8) - 905261496) ^ ((a19[19] ^ 0x7236F373) - 1916203891)) + 66585903;
  v43 = (v42 ^ 0xD5256900) & (2 * (v42 & 0xD9B66C05)) ^ v42 & 0xD9B66C05;
  v44 = ((2 * (v42 ^ 0x74497100)) ^ 0x5BFE3A0A) & (v42 ^ 0x74497100) ^ (2 * (v42 ^ 0x74497100)) & 0xADFF1D04;
  v45 = v44 ^ 0xA4010505;
  v46 = (v44 ^ 0x9FA1000) & (4 * v43) ^ v43;
  v47 = ((4 * v45) ^ 0xB7FC7414) & v45 ^ (4 * v45) & 0xADFF1D04;
  v48 = (v47 ^ 0xA5FC1400) & (16 * v46) ^ v46;
  v49 = ((16 * (v47 ^ 0x8030901)) ^ 0xDFF1D050) & (v47 ^ 0x8030901) ^ (16 * (v47 ^ 0x8030901)) & 0xADFF1D00;
  v50 = v48 ^ 0xADFF1D05 ^ (v49 ^ 0x8DF11000) & (v48 << 8);
  a19[18] = v41 ^ 0xFB135EE6;
  a19[19] = v42 ^ (2 * ((v50 << 16) & 0x2DFF0000 ^ v50 ^ ((v50 << 16) ^ 0x1D050000) & (((v49 ^ 0x200E0D05) << 8) & 0x2DFF0000 ^ 0xE20000 ^ (((v49 ^ 0x200E0D05) << 8) ^ 0x7F1D0000) & (v49 ^ 0x200E0D05)))) ^ 0xF6956E95;
  v51 = (((a2 ^ 0x2B0B5B96) - 722164630) ^ ((a2 ^ 0xE5BB28EC) + 440719124) ^ ((a2 ^ 0xA0674BE0) + 1603843104)) + (((a19[20] ^ 0x5035EA8) - 84106920) ^ ((a19[20] ^ 0x493EAAFF) - 1228843775) ^ ((a19[20] ^ 0x22EACCCD) - 585813197)) + 1420625938;
  v52 = (v51 ^ 0x21E140A8) & (2 * (v51 & 0x89016922)) ^ v51 & 0x89016922;
  v53 = ((2 * (v51 ^ 0x23E302EC)) ^ 0x55C4D79C) & (v51 ^ 0x23E302EC) ^ (2 * (v51 ^ 0x23E302EC)) & 0xAAE26BCE;
  v54 = v53 ^ 0xAA222842;
  v55 = (v53 ^ 0x4188) & (4 * v52) ^ v52;
  v56 = ((4 * v54) ^ 0xAB89AF38) & v54 ^ (4 * v54) & 0xAAE26BCC;
  v57 = (v56 ^ 0xAA802B00) & (16 * v55) ^ v55;
  v58 = ((16 * (v56 ^ 0x6240C6)) ^ 0xAE26BCE0) & (v56 ^ 0x6240C6) ^ (16 * (v56 ^ 0x6240C6)) & 0xAAE26BC0;
  v59 = v57 ^ 0xAAE26BCE ^ (v58 ^ 0xAA22280E) & (v57 << 8);
  v60 = v51 ^ (2 * ((v59 << 16) & 0x2AE20000 ^ v59 ^ ((v59 << 16) ^ 0x6BCE0000) & (((v58 ^ 0xC0430E) << 8) & 0x2AE20000 ^ 0x8800000 ^ (((v58 ^ 0xC0430E) << 8) ^ 0xE26B0000) & (v58 ^ 0xC0430E))));
  v61 = (((a3 ^ 0x4847BA98) - 1212660376) ^ ((a3 ^ 0x555003F8) - 1431307256) ^ ((a3 ^ 0x73C081FA) - 1941996026)) + (((a19[21] ^ 0x91B3F56A) + 1850477206) ^ ((a19[21] ^ 0xDD4B6F6D) + 582258835) ^ ((a19[21] ^ 0x222FA29D) - 573547165)) - 58613481;
  v62 = (v61 ^ 0xE5AAC1DC) & (2 * (v61 & 0xE12CD01D)) ^ v61 & 0xE12CD01D;
  v63 = ((2 * (v61 ^ 0x25E3C1FC)) ^ 0x899E23C2) & (v61 ^ 0x25E3C1FC) ^ (2 * (v61 ^ 0x25E3C1FC)) & 0xC4CF11E0;
  v64 = v63 ^ 0x44411021;
  v65 = (v63 ^ 0x808600C0) & (4 * v62) ^ v62;
  v66 = ((4 * v64) ^ 0x133C4784) & v64 ^ (4 * v64) & 0xC4CF11E0;
  v67 = (v66 ^ 0xC0180) & (16 * v65) ^ v65;
  v68 = ((16 * (v66 ^ 0xC4C31061)) ^ 0x4CF11E10) & (v66 ^ 0xC4C31061) ^ (16 * (v66 ^ 0xC4C31061)) & 0xC4CF11E0;
  v69 = v67 ^ 0xC4CF11E1 ^ (v68 ^ 0x44C11000) & (v67 << 8);
  a19[20] = v60 ^ 0xE7968624;
  a19[21] = v61 ^ (2 * ((v69 << 16) & 0x44CF0000 ^ v69 ^ ((v69 << 16) ^ 0x11E10000) & (((v68 ^ 0x800E01E1) << 8) & 0x44CF0000 ^ 0xCE0000 ^ (((v68 ^ 0x800E01E1) << 8) ^ 0x4F110000) & (v68 ^ 0x800E01E1)))) ^ 0x7E7CB45;
  return a18();
}

uint64_t sub_25857F054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v14 = *(v13 - 176);
  *(v13 - 244 + (v14 & 0x3F)) = 28;
  return (*(v12 + 8 * ((((v14 & 0x3Fu) > 0x37) * (((a12 & 0x4A845879) + 1069) ^ 0x539)) ^ a12 & 0x4A845879)))(v13 - 244, a2, a3, a4, a5, a6, 3834510960, 968312894, a9, a10);
}

uint64_t sub_25857F064(uint64_t result)
{
  v1 = *(result + 4) - 1520698633 * ((-2 - ((result | 0xD068A1EA) + (~result | 0x2F975E15))) ^ 0x84794690);
  v2 = *(result + 8);
  *v2 = HIBYTE(v1) ^ 0xBB;
  v2[1] = BYTE2(v1) ^ 0xE1;
  v2[2] = BYTE1(v1) ^ 0x9A;
  v2[3] = v1 ^ 0x74;
  return result;
}

uint64_t sub_25857F0DC(int a1)
{
  v6 = (a1 + 963) | 6;
  v3 = 1021229753 * ((1443929396 - ((v2 - 144) | 0x56109D34) + ((v2 - 144) | 0xA9EF62CB)) ^ 0x1702D921);
  *(v2 - 136) = v2 - 244;
  *(v2 - 144) = a1 - 1083643178 + v3 + 969;
  *(v2 - 140) = v3 ^ 0xE6F1BAC;
  v4 = (*(v1 + 8 * (a1 ^ 0x5BF)))(v2 - 144);
  return (*(v1 + 8 * ((((*(v2 - 176) & 0x3Fu) + 16 > ((8 * (v6 ^ 0x438) + 280012041) & 0xEF4F5FF6) - 1393) * (((8 * (v6 ^ 0x438) + 1074094927) & 0xBFFA9F72) - 458)) ^ (8 * (v6 ^ 0x438)))))(v4);
}

void sub_25857F1E4(uint64_t a1)
{
  v1 = 44841361 * ((2 * ((a1 ^ 0xA843183) & 0x4EB52F8) - (a1 ^ 0xA843183) + 2064952583) ^ 0x11FE61D8);
  v2 = *(a1 + 4) - v1;
  v3 = *(a1 + 8);
  v4 = *a1 ^ v1;
  v5 = (8 * (((v4 ^ 0x6654D17C) + 327022535) ^ v4 ^ ((v4 ^ 0xDE1C872) + 415821513) ^ ((v4 ^ 0x1EBC7F94) + 194337071) ^ ((v4 ^ 0x1FDFBFDF) + 183933286))) ^ 0x56B6CA28;
  v6 = *(v3 + 16);
  v7 = *(v3 + 20);
  *(v3 + 16) = v5 + v6;
  *(v3 + 20) = v7 + __CFADD__(v5, v6) + (((((v4 ^ 0x4807E253) - 584137494) ^ v4 ^ ((v4 ^ 0x86A2B2DB) + 327914594) ^ ((v4 ^ 0x1E845636) - 1951567731) ^ ((v4 ^ 0xBAF7DFFA) + 803141954)) >> 29) ^ 3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_25857F3CC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t (*a14)(void))
{
  v17 = (((v14[18] ^ 0x74442944) - 1950624068) ^ ((v14[18] ^ 0x272DA70E) - 657303310) ^ ((v14[18] ^ 0x3DBEB6D0) - 1035908816)) + (((a4 ^ 0x57581A1) - 91586977) ^ ((a4 ^ 0x2BB7F9EF) - 733477359) ^ ((a4 ^ 0x401540D4) - 1075134676)) + 1501096911;
  v18 = (v17 ^ 0xB125E151) & (2 * (v17 & 0x84358565)) ^ v17 & 0x84358565;
  v19 = ((2 * (v17 ^ 0xB90FE151)) ^ 0x7A74C868) & (v17 ^ 0xB90FE151) ^ (2 * (v17 ^ 0xB90FE151)) & 0x3D3A6434;
  v20 = v19 ^ 0x50A2414;
  v21 = (v19 ^ 0x30300020) & (4 * v18) ^ v18;
  v22 = ((4 * v20) ^ 0xF4E990D0) & v20 ^ (4 * v20) & 0x3D3A6434;
  v23 = (v22 ^ 0x34280010) & (16 * v21) ^ v21;
  v24 = ((16 * (v22 ^ 0x9126424)) ^ 0xD3A64340) & (v22 ^ 0x9126424) ^ (16 * (v22 ^ 0x9126424)) & 0x3D3A6430;
  v25 = v23 ^ 0x3D3A6434 ^ (v24 ^ 0x11224000) & (v23 << 8);
  v26 = v17 ^ (2 * ((v25 << 16) & 0x3D3A0000 ^ v25 ^ ((v25 << 16) ^ 0x64340000) & (((v24 ^ 0x2C182434) << 8) & 0x3D3A0000 ^ 0x51A0000 ^ (((v24 ^ 0x2C182434) << 8) ^ 0x3A640000) & (v24 ^ 0x2C182434))));
  v27 = (((v14[19] ^ 0x566E65D) - 90629725) ^ ((v14[19] ^ 0xFF93A723) + 7100637) ^ ((v14[19] ^ 0x942279E4) + 1809679900)) + (((v15 ^ 0xD138758B) + 784829045) ^ ((v15 ^ 0xE4D76EB) - 239957739) ^ ((v15 ^ 0xB1A23BFA) + 1314767878)) + 1113102158;
  v28 = (v27 ^ 0x1315DDF5) & (2 * (v27 & 0x9B55D9E6)) ^ v27 & 0x9B55D9E6;
  v29 = ((2 * (v27 ^ 0x171E5D31)) ^ 0x189709AE) & (v27 ^ 0x171E5D31) ^ (2 * (v27 ^ 0x171E5D31)) & 0x8C4B84D6;
  v30 = v29 ^ 0x84488451;
  v31 = (v29 ^ 0x80300C1) & (4 * v28) ^ v28;
  v32 = ((4 * v30) ^ 0x312E135C) & v30 ^ (4 * v30) & 0x8C4B84D4;
  v33 = (v32 ^ 0xA0040) & (16 * v31) ^ v31;
  v34 = ((16 * (v32 ^ 0x8C418483)) ^ 0xC4B84D70) & (v32 ^ 0x8C418483) ^ (16 * (v32 ^ 0x8C418483)) & 0x8C4B84D0;
  v35 = v33 ^ 0x8C4B84D7 ^ (v34 ^ 0x84080400) & (v33 << 8);
  v14[18] = v26 ^ 0xD8F67597;
  v14[19] = v27 ^ (2 * ((v35 << 16) & 0xC4B0000 ^ v35 ^ ((v35 << 16) ^ 0x4D70000) & (((v34 ^ 0x8438087) << 8) & 0xC4B0000 ^ 0x44B0000 ^ (((v34 ^ 0x8438087) << 8) ^ 0x4B840000) & (v34 ^ 0x8438087)))) ^ 0xE593E8D2;
  v36 = (((a5 ^ 0x197DA298) - 427664024) ^ ((a5 ^ 0x2191C203) - 563200515) ^ ((a5 ^ 0x563B5801) - 1446729729)) + (((v14[20] ^ 0x2D22F2ED) - 757265133) ^ ((v14[20] ^ 0x70F0CF56) - 1894829910) ^ ((v14[20] ^ 0x33050521) - 855967009)) - 110654786;
  v37 = (((v16 ^ 0x2558009E) - 626524318) ^ ((v16 ^ 0xD5FFD3AD) + 704654419) ^ ((v16 ^ 0x9E70EBA9) + 1636766807)) + (((v14[21] ^ 0x3CC28FDE) - 1019383774) ^ ((v14[21] ^ 0x8C3D3ACA) + 1942144310) ^ ((v14[21] ^ 0xDE288D8E) + 567767666)) + 1362068582;
  v14[20] = v36 ^ ((v36 ^ 0x1A7332E) - 438184612) ^ ((v36 ^ 0xFF73ACB) - 340665153) ^ ((v36 ^ 0x6A167B90) - 1907319322) ^ ((v36 ^ 0x7FFF6BFF) - 1682338421) ^ 0x756E2110;
  v14[21] = v37 ^ ((v37 ^ 0x2BCC9C32) - 1481477888) ^ ((v37 ^ 0x92C735F0) + 515496254) ^ ((v37 ^ 0xB179450F) + 1023912387) ^ ((v37 ^ 0x7BF3FFFF) - 141749453) ^ 0x1D562BA8;
  return a14();
}

uint64_t sub_25857F3DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(v4 + 32);
  v8 = *(v4 + 16);
  *(v6 - 220) = (a1 + 1373446178) & 0xAE22DF3B;
  v9 = veorq_s8(*v8, xmmword_2585D2470);
  *(v6 - 128) = veorq_s8(*v7, xmmword_2585D2460);
  *(v6 - 112) = v9;
  v10 = *(v5 + 8 * (a1 ^ (126 * (a4 == 0))));
  *(v6 - 224) = -42900;
  return v10(a1, a2, a3);
}

uint64_t sub_25857F450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, char a12, unsigned int a13)
{
  v16 = *(v15 + 7);
  a13 = v13 - 827685407 * (((&a11 | 0x4FD2D735) - (&a11 | 0xB02D28CA) - 1339217718) ^ 0x54505565) + 534;
  a12 = ((2 * v16) & 0xAE) - 31 * (((&a11 | 0x35) - (&a11 | 0xCA) - 54) ^ 0x65) + ((((v13 - 31) | 0x80) - 59) ^ v16) - 3;
  v17 = (*(v14 + 8 * (v13 ^ 0x4D8)))(&a11);
  return (*(v14 + 8 * ((874 * (a11 == 95751194)) ^ v13)))(v17);
}

uint64_t sub_25857F9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (v6 - 134303803) & 0x9FB7D9ED;
  *(a3 + v3) ^= *(a1 + v3) ^ (v10 + 109);
  return (*(v9 + 8 * ((((v3 + 1) < 0x10) * (v10 ^ v4 ^ v5 ^ (v10 - v7 + 26))) ^ (v8 + v10 - 1502))))();
}

uint64_t sub_25857FA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, unsigned int a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  v73 = *(v36 + 8 * (v35 - 50));
  v65 = &a34 + v34;
  v66 = *(a4 + 72);
  v68 = *(a4 + 80);
  v67 = *(a4 + 84);
  v69 = *(a4 + 96);
  if (v69 == 2)
  {
    v71 = (a4 + v37 + 2080691136);
    v72 = ((*v71 ^ v42) << 24) | ((v71[1] ^ v42) << 16) | ((v71[2] ^ v42) << 8);
    *v65 = (v72 | v71[3] ^ v42) + v41 - 2 * ((v72 | v71[3] ^ v42) & 0x7EB2B15F ^ (v71[3] ^ v42) & 1);
    return (*(v36 + 8 * ((449 * (v40 == 2080691136)) ^ a28)))(v66);
  }

  else if (v69 == 1)
  {
    v70 = *(v37 + 2080691136 + a4 + ((v39 - 72) | 0xCAu) - 223) ^ v42 | ((*(v37 + 2080691136 + a4 + 1) ^ v42) << 8) | ((*(v37 + 2080691136 + a4 + 2) ^ v42) << 16) | ((*(v37 + 2080691136 + a4 + 3) ^ v42) << 24);
    *v65 = v70 + v41 - ((2 * v70) & 0xFD6562BC);
    return (*(v36 + 8 * ((476 * (v40 == 2080691136)) ^ (v39 + 130))))(v66);
  }

  else
  {
    v43 = (((v66 ^ 0x50E47F2E) - 1357152046) ^ ((v66 ^ 0x18C74267) - 415711847) ^ ((v66 ^ 0x26F405D3) - 653526483)) + 1471087471 + (((*(a4 + 72) ^ 0xE251853A) + 497973958) ^ ((*(a4 + 72) ^ 0xE6E3BBAD) + 421282899) ^ ((*(a4 + 72) ^ 0x6A65060D) - 1785005581));
    v44 = (v43 ^ 0xC5FE6990) & (2 * (v43 & 0x85FF6DC5)) ^ v43 & 0x85FF6DC5;
    v45 = ((2 * (v43 ^ 0xC62E6112)) ^ 0x87A219AE) & (v43 ^ 0xC62E6112) ^ (2 * (v43 ^ 0xC62E6112)) & 0x43D10CD6;
    v46 = v45 ^ 0x40510451;
    v47 = (v45 ^ 0x3800804) & (4 * v44) ^ v44;
    v48 = ((4 * v46) ^ 0xF44335C) & v46 ^ (4 * v46) & 0x43D10CD4;
    v49 = (v48 ^ 0x3400050) & (16 * v47) ^ v47;
    v50 = ((16 * (v48 ^ 0x40910C83)) ^ 0x3D10CD70) & (v48 ^ 0x40910C83) ^ (16 * (v48 ^ 0x40910C83)) & 0x43D10CD0;
    v51 = v49 ^ 0x43D10CD7 ^ (v50 ^ 0x1100C00) & (v49 << 8);
    v52 = (v51 << 16) ^ 0xCD70000u;
    v53 = (((*(a4 + 76) ^ 0xAB2A5009) + 1423290359) ^ ((*(a4 + 76) ^ 0x7D5E1A90) - 2103319184) ^ ((*(a4 + 76) ^ 0xB8A37203) + 1197247997)) + (((*(a4 + 76) ^ 0x1420A0B8) - 337682616) ^ ((*(a4 + 76) ^ 0xB3A6B870) + 1280919440) ^ ((*(a4 + 76) ^ 0xC9512052) + 917430190)) - 9789646;
    *(a4 + 72) = v43 ^ (2 * ((v51 << 16) & 0x43D10000 ^ v51 ^ v52 & (((v50 ^ 0x42C10087) << 8) & 0x43D10000 ^ 0x2D10000 ^ (((v50 ^ 0x42C10087) << 8) ^ 0x510C0000) & (v50 ^ 0x42C10087)))) ^ 0x6D284CF1;
    *(a4 + 76) = v53 ^ ((v53 ^ 0x9CAA31F5) + 1122624501) ^ (v38 + (v53 ^ 0xA13C9521) + 3865) ^ ((v53 ^ 0xE3D546D5) + 1033278677) ^ ((v53 ^ 0xFFFFCFFF) + 565976575) ^ 0x4F6B1564;
    v54 = (((v68 ^ 0xD68FC1A) - 224984090) ^ ((v68 ^ 0x27FECAA4) - 671009444) ^ ((v68 ^ 0x44410E24) - 1145114148)) - 339780547 + (((*(a4 + 80) ^ 0xCD08DBED) + 855057427) ^ ((*(a4 + 80) ^ 0x23916B5A) - 596732762) ^ ((*(a4 + 80) ^ 0x804E882D) + 2142336979));
    v55 = (((v67 ^ 0x6CC1EB4B) - 1824648011) ^ ((v67 ^ 0xD45D61E7) + 732077593) ^ ((v67 ^ 0xD64BB236) + 699682250)) + 329340717 + (((*(a4 + 84) ^ 0x5A43AF0) - 94649072) ^ ((*(a4 + 84) ^ 0xC60E343C) + 972147652) ^ ((*(a4 + 84) ^ 0xAD7D3656) + 1384303018));
    v56 = (v55 ^ 0x8208D857) & (2 * (v55 & 0xCA0D1A07)) ^ v55 & 0xCA0D1A07;
    v57 = ((2 * (v55 ^ 0x610D851)) ^ 0x983B84AC) & (v55 ^ 0x610D851) ^ (2 * (v55 ^ 0x610D851)) & 0xCC1DC256;
    v58 = v57 ^ 0x44044252;
    v59 = (v57 ^ 0x8188004) & (4 * v56) ^ v56;
    v60 = ((4 * v58) ^ 0x30770958) & v58 ^ (4 * v58) & 0xCC1DC254;
    v61 = (v60 ^ 0x150050) & (16 * v59) ^ v59;
    v62 = ((16 * (v60 ^ 0xCC08C206)) ^ 0xC1DC2560) & (v60 ^ 0xCC08C206) ^ (16 * (v60 ^ 0xCC08C206)) & 0xCC1DC250;
    v63 = v61 ^ 0xCC1DC256 ^ (v62 ^ 0xC01C0000) & (v61 << 8);
    *(a4 + 80) = v54 ^ ((v54 ^ 0x65266BC5) - 1798734028) ^ ((v54 ^ 0xD4750E5F) + 630856362) ^ ((v54 ^ 0x843CF569) + 1976820128) ^ ((v54 ^ 0x3B7F7BFA) - 896504051) ^ 0x60C7D393;
    *(a4 + 84) = v55 ^ (2 * ((v63 << 16) & 0x4C1D0000 ^ v63 ^ ((v63 << 16) ^ 0x42560000) & (((v62 ^ 0xC01C216) << 8) & 0x4C1D0000 ^ 0x401D0000 ^ (((v62 ^ 0xC01C216) << 8) ^ 0x1DC20000) & (v62 ^ 0xC01C216)))) ^ 0xBCC9A631;
    return v73(v52, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }
}

uint64_t sub_25857FA80(double a1)
{
  *(v4 - 1) = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

uint64_t sub_25857FAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = (a11 + v12);
  *(v16 - 1) = v15;
  *v16 = v15;
  return (*(v14 + 8 * ((120 * ((((((v13 ^ 0x411) - 56) | 0x20) ^ 0x343 ^ ((((((v13 ^ 0x411) - 56) | 0x20u) ^ 0xFFFFFFFFFFFFFF43) & v11) == 16)) & 1) == 0)) ^ (((v13 ^ 0x411) - 56) | 0x20))))();
}

uint64_t sub_25857FB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48, int a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  v62 = 2033342611 * ((v61 - 168) ^ 0x56C08C4);
  *(v61 - 160) = v58;
  *(v61 - 152) = a36;
  *(v61 - 168) = &a58;
  *(v61 - 144) = ((a49 ^ 0x7559F5F5) - 806904192 + ((((v59 ^ 0xD) + 2097504163) ^ (v59 - 1749645500)) & (2 * a49))) ^ v62;
  *(v61 - 140) = v59 - v62 + 421;
  v63 = (*(v60 + 8 * (v59 ^ 0x487)))(v61 - 168);
  return (*(v60 + 8 * (v59 ^ (391 * (a49 == 3)))))(v63);
}

uint64_t sub_25857FE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(uint64_t))
{
  v16 = 1511064119 * ((v15 + 2023027774 - 2 * ((v15 - 120) & 0x7894F4B6)) ^ 0xF0EBABFC);
  *(v15 - 112) = a6;
  *(v15 - 120) = v12 - v16 - 260;
  *(v15 - 116) = (v13 ^ 0xD5EF6E4F) - v16 + ((2 * v13) & 0xDC9E) + 1874786300;
  v17 = (*(v14 + 8 * (v12 ^ 0x51C)))(v15 - 120);
  return a12(v17);
}

uint64_t sub_25857FF64()
{
  v3 = vdupq_n_s32(0x7EB2B15Fu);
  v4.i64[0] = 0x9C9C9C9C9C9C9C9CLL;
  v4.i64[1] = 0x9C9C9C9C9C9C9C9CLL;
  v5 = *(v1 + 96);
  if (v5 == 2)
  {
    v20 = vld4q_s8(v1);
    v16 = veorq_s8(v20.val[1], v4);
    _Q21 = vmovl_high_u8(v16);
    _Q20 = vmovl_u8(*v16.i8);
    __asm
    {
      SHLL2           V20.4S, V20.8H, #0x10
      SHLL2           V21.4S, V21.8H, #0x10
    }

    return (*(v0 + 8 * ((382 * (((((v2 + 176) | 2u) + 66) ^ 0x2D7B31ELL) == 47691644)) ^ ((v2 + 176) | 2))))(-47691627);
  }

  else
  {
    if (v5 != 1)
    {
      JUMPOUT(0x25859EF90);
    }

    v19 = vld4q_s8(v1);
    v6 = veorq_s8(v19.val[2], v4);
    _Q21 = vmovl_u8(*v6.i8);
    _Q20 = vmovl_high_u8(v6);
    __asm
    {
      SHLL2           V22.4S, V20.8H, #0x10
      SHLL2           V23.4S, V21.8H, #0x10
    }

    return (*(v0 + 8 * ((v2 - 1423409758) & 0x54D77FFE)))(-47691627, 47691643, v3);
  }
}

uint64_t sub_258580080@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v9.val[0].i64[0] = (v5 - v6 - 1) & 0xF;
  v9.val[0].i64[1] = (v5 - v6 + 14) & 0xF;
  v9.val[1].i64[0] = (v5 - v6 + 13) & 0xF;
  v9.val[1].i64[1] = (v5 - v6 + 12) & 0xF;
  v9.val[2].i64[0] = (v5 - v6 + 11) & 0xF;
  v9.val[2].i64[1] = (v5 - v6 + 10) & 0xF;
  v9.val[3].i64[0] = (v5 - v6 + (a1 ^ 8)) & 0xF;
  v9.val[3].i64[1] = (v5 - v6) & 0xF ^ 8;
  *(v5 + a2 - 8 - v6) = veor_s8(veor_s8(veor_s8(*(v2 + v9.val[0].i64[0] - 7), *(v5 + a2 - 8 - v6)), veor_s8(*(v9.val[0].i64[0] + v3 - 6), *(v9.val[0].i64[0] + v4 - 4))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v9, xmmword_2585D2450), 0xB5B5B5B5B5B5B5B5)));
  return (*(v7 + 8 * ((43 * (8 - (v5 & 0x18) != -v6)) ^ (a1 - 4))))(xmmword_2585D2450);
}

uint64_t sub_258580180(uint64_t result)
{
  v1 = 33 * ((-2 - ((result | 0x4F) + (~result | 0xB0))) ^ 0x53);
  if ((*(result + 9) + v1) == 46 && (*(result + 8) ^ v1) == 63)
  {
    v3 = 95751194;
  }

  else
  {
    v3 = 95709107;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_258580250(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *a1 ^ (2033342611 * ((a1 - 1867475177 - 2 * (a1 & 0x90B09717)) ^ 0x95DC9FD3));
  v2 = *(a1 + 8);
  v5 = (439532179 * (&v4 ^ 0xDEA63D82)) ^ (v1 - 1602431118);
  v4 = v2;
  return (*(*(&off_286999DF0 + (v1 ^ 0xDC090904)) + v1 + 603389058))(&v4);
}

uint64_t sub_25858037C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v9 = ((v5 - a4) ^ 0xFFFFFFFFFFFFFAE4) + v4;
  *(v8 + v9) = *(v6 + v9);
  return (*(v7 + 8 * ((1467 * (v9 == 0)) ^ (a3 + v5 + 274))))();
}

uint64_t sub_2585803B8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v22 = (a1 ^ a8) + v16 - ((2 * (a1 ^ a8)) & 0xDDAE7134);
  v23 = v18 + v14 + v12 - 730 - 705;
  v24 = (*(v9 + 4 * (*(v10 + v23) - 86)) ^ v17) + (a6 ^ v16) + *(v11 + 4 * v23) + (v22 ^ v8);
  v25 = (v24 ^ 0xF15681AA) & (2 * (v24 & v19)) ^ v24 & v19;
  v26 = ((2 * (v24 ^ 0x935E81BA)) ^ 0xCCB02922) & (v24 ^ 0x935E81BA) ^ (2 * (v24 ^ 0x935E81BA)) & 0x66581490;
  v27 = v26 ^ 0x22481491;
  v28 = (v26 ^ 0x46500000) & (4 * v25) ^ v25;
  v29 = ((4 * v27) ^ 0x99605244) & v27 ^ (4 * v27) & 0x66581490;
  v30 = (v29 ^ 0x401000) & (16 * v28) ^ v28;
  v31 = ((16 * (v29 ^ 0x66180491)) ^ 0x65814910) & (v29 ^ 0x66180491) ^ (16 * (v29 ^ 0x66180491)) & 0x66581490;
  v32 = v30 ^ 0x66581491 ^ (v31 ^ 0x64000000) & (v30 << 8);
  LOBYTE(v23) = *(v13 + v23);
  v33 = ((v23 + 85) ^ 0x51) & (2 * ((v23 + 85) & 0x99)) ^ (v23 + 85) & 0x99;
  LOBYTE(v27) = ((2 * ((v23 + 85) ^ 0x53)) ^ 0x94) & ((v23 + 85) ^ 0x53) ^ (2 * ((v23 + 85) ^ 0x53)) & 0xCA;
  v34 = (v23 + 85) ^ (2 * ((((4 * v27) ^ 0x28) & v27 ^ (4 * v27) & 0xC8) & (16 * (v27 & (4 * v33) ^ v33)) ^ v27 & (4 * v33) ^ v33)) ^ 0x94;
  v35 = v24 ^ (2 * ((v32 << 16) & 0x66580000 ^ v32 ^ ((v32 << 16) ^ 0x14910000) & (((v31 ^ 0x2581481) << 8) & 0x66580000 ^ 0x26480000 ^ (((v31 ^ 0x2581481) << 8) ^ 0x58140000) & (v31 ^ 0x2581481))));
  v36 = (((a1 ^ 0xD13F3300) + 784387328) ^ ((a1 ^ 0xFF902B70) + 7328912) ^ ((a1 ^ 0x407820EA) - 1081614570)) - 1027610646 + (((v35 ^ 0x3196BC09) << (v34 & 0x11 ^ 1) << (v34 & 0xE ^ 0xC)) | ((v35 ^ 0x3196BC09u) >> (50 - v23)));
  v37 = ((2 * (v36 ^ 0x9200EFE5)) ^ 0x7C2F7EAA) & (v36 ^ 0x9200EFE5) ^ (2 * (v36 ^ 0x9200EFE5)) & 0x3E17BF54;
  v38 = 4 * (v37 ^ 0x2108155);
  LODWORD(v23) = (v36 ^ 0x8A064EA5) & (2 * (v36 & 0xAC1750B0)) ^ v36 & 0xAC1750B0;
  v39 = (v38 ^ 0xF85EFD54) & (v37 ^ 0x2108155);
  v40 = (v37 ^ 0x30070600) & (4 * v23) ^ v23;
  LODWORD(v23) = v39 ^ v38 & 0x3E17BF54;
  v41 = (v23 ^ 0x3816BD40) & (16 * v40) ^ v40;
  LODWORD(v23) = ((16 * (v23 ^ 0x6010201)) ^ 0xE17BF550) & (v23 ^ 0x6010201) ^ (16 * (v23 ^ 0x6010201)) & 0x3E17BF50;
  v42 = v41 ^ 0x3E17BF55 ^ (v23 ^ 0x2013B500) & (v41 << 8);
  return (*(v15 + 8 * (((4 * (v14 + 1 == v20 + 48)) | (32 * (v14 + 1 == v20 + 48))) ^ v12)))(v36 ^ (2 * ((v42 << 16) & 0x3E170000 ^ v42 ^ ((v42 << 16) ^ 0x3F550000) & (((v23 ^ 0x1E040A05) << 8) & 0x3E170000 ^ 0x28000000 ^ (((v23 ^ 0x1E040A05) << 8) ^ 0x17BF0000) & (v23 ^ 0x1E040A05)))) ^ 0xC2C51680);
}

uint64_t sub_258580840(uint64_t result)
{
  v1 = 1511064119 * (result ^ 0x9D8EB5BC887F5F4ALL);
  v2 = *(result + 8) + v1;
  v3 = *(result + 32) ^ v1;
  v4 = *(result + 24) + v1;
  v5 = *result + v1;
  v6 = *(result + 20) - v1;
  v7 = *(result + 16) + v1;
  v8 = v2 == v3;
  v9 = v2 > v3;
  v10 = v8;
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

  *(result + 44) = v12 ^ v4;
  return result;
}

void sub_258580EA0(uint64_t a1)
{
  v1 = 1021229753 * ((a1 - 2 * (a1 & 0x532EAB36) + 1395567414) ^ 0xEDC310DC);
  v2 = *(a1 + 8) ^ v1;
  v4 = (*(a1 + 12) ^ v1) == 0x6B && *(a1 + 24) != 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_258580FC8@<X0>(int a1@<W8>)
{
  v5 = ~v2 + v1;
  v7 = __CFADD__(a1, v5) || v5 > ((73 * (v3 ^ 0xCAu) + 4294965672) ^ (7 * (v3 ^ 0x1Bu)));
  return (*(v4 + 8 * ((37 * v7) | v3)))();
}

uint64_t sub_2585810E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, unint64_t a33, uint64_t a34, uint64_t a35, int a36, char a37)
{
  *(v39 - 120) = v37 - 2021301169 * ((((v39 - 152) | 0x5032FBF) - ((v39 - 152) & 0x5032FBF)) ^ 0x8EF5781F) + 353;
  STACK[0xD40] = v38 + 12;
  STACK[0xD28] = a33;
  STACK[0xD30] = &a37;
  (*(a1 + 8 * (v37 ^ 0x721u)))(v39 - 152);
  return (*(a34 + 8 * (((*(v39 - 136) == 95751194) * ((v37 + 2104181934) & 0x8294BBF7 ^ 0x2EE)) ^ v37)))();
}

uint64_t sub_2585811AC@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  v4 = *(result + 16);
  *a2 = 0;
  v4[291] = v2;
  *a2 += 256;
  v4[293] = v2 + 256;
  *a2 = v3 + *a2 - 53;
  v4[295] = v2 + 512;
  *a2 += 256;
  v4[297] = v2 + 768;
  *a2 += 256;
  v4[299] = v2 + 1024;
  *a2 += 256;
  v4[301] = v2 + 1280;
  *a2 += 256;
  v4[303] = v2 + 1536;
  *a2 += 256;
  v4[305] = v2 + 1792;
  *a2 += 256;
  v4[307] = v2 + 2048;
  *a2 += 256;
  v4[309] = v2 + 2304;
  *a2 += 256;
  v4[311] = v2 + 2560;
  *a2 += 256;
  v4[313] = v2 + 2816;
  *a2 += 256;
  v4[315] = v2 + 3072;
  *a2 += 256;
  v4[317] = v2 + 3328;
  *a2 += 256;
  v4[319] = v2 + 3584;
  *a2 += 256;
  v4[321] = v2 + 3840;
  *a2 += 256;
  *(result + 32) = 95751194;
  return result;
}

uint64_t sub_258581360(uint64_t result)
{
  v1 = *(result + 4) ^ (344723623 * ((-1257572877 - (result | 0xB50AF5F3) + (result | 0x4AF50A0C)) ^ 0xBD5667C5));
  v2 = *(result + 8);
  *v2 = HIBYTE(v1) ^ 0xC7;
  v2[1] = BYTE2(v1) ^ 0xD9;
  v2[2] = BYTE1(v1) ^ 0x34;
  v2[3] = v1 ^ 0x77;
  return result;
}

uint64_t sub_258581898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, _BYTE *a27, uint64_t a28, uint64_t a29)
{
  *a27 = (v30 - ((2 * v30) & 0xD8) - 20) ^ 0xEC;
  v33 = 2021301169 * ((((v32 - 144) | 0x51787BEE) - ((v32 - 144) & 0x51787BEE)) ^ 0xDA8E2C4E);
  *(v32 - 128) = v33 + 469501789;
  *(v32 - 124) = (v31 - 317) ^ v33;
  *(v32 - 144) = a27;
  *(v32 - 136) = a29;
  (*(v29 + 8 * (v31 ^ 0x625)))(v32 - 144);
  *(v32 - 128) = v31 + 1520698633 * ((v32 + 1792317670 - 2 * ((v32 - 144) & 0x6AD49976)) ^ 0xC13A81F3) - 154;
  *(v32 - 144) = a28 + 16 * v30;
  *(v32 - 136) = a29;
  v34 = (*(v29 + 8 * (v31 ^ 0x634)))(v32 - 144);
  return (*(v29 + 8 * ((1691 * (((((v31 - 1365135323) & 0x515E4EFBu) - 672) ^ 0x49) + v30 == 9)) ^ v31)))(v34);
}

void sub_258581A40(_DWORD *a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *a1 ^ (1511064119 * ((((2 * a1) | 0xEDDB9742) - a1 + 152187999) ^ 0x7E9294EB));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_258581BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19, _DWORD *a20, uint64_t a21, uint64_t a22, _DWORD *a23, void *a24)
{
  *a20 = v25 + 1;
  v30 = (v27 - 910) | 0x228;
  v31 = v24 ^ (v24 >> 11) ^ (v27 - 974) ^ ((v27 - 975) ^ ((v24 ^ (v24 >> 11)) << 7)) & (v30 ^ 0x9D2C54E9) ^ (((((~(((v27 - 974) ^ 0x13FEu) + v27 - 975) + v25) ^ (v25 - (v27 - 975) - 5120)) - 1) & (((v27 - 974) ^ 0x13FEu) + v27 - 975 - v25) & 0x8000000000000000) == 0) ^ 0xDD8DE32D;
  v32 = (v31 << 15) & 0xEFC60000 ^ v31 ^ (((v31 << 15) & 0xEFC60000 ^ v31) >> 18) ^ 0x3C0BEC2F;
  v33 = (v26 + (a19 - 1));
  v34 = ((*(*a24 + (*a23 & 0x779C50BC)) ^ v33) & 0x7FFFFFFF) * ((v30 - 135) ^ 0x772C864F);
  v35 = 1999407021 * ((v34 >> (((v27 + 114) | 0x28) ^ 0x79)) ^ v34);
  LODWORD(v35) = *((v35 >> 24) + *(v28 + 8 * (v30 - 605)) + 2) ^ *(*(v28 + 8 * (v30 - 485)) + (v35 >> 24) - 4) ^ *(*(v28 + 8 * (v30 - 493)) + (v35 >> 24)) ^ v35 ^ (-49 * (v35 >> 24));
  *v33 = v35 ^ v32;
  return (*(v29 + 8 * ((1675 * (a19 == (v35 != v32))) ^ v30)))(4181469599);
}

uint64_t sub_258581DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int *a19)
{
  *v21 = 1;
  v23 = *a19;
  v24 = 1380645169 * ((((v22 - 152) | 0xE10C2BC7FF09C758) - ((v22 - 152) & 0xE10C2BC7FF09C758)) ^ 0xD24232037DCCCF08);
  *(v22 - 116) = ((v19 + 1379211384) ^ 0x6C) + v24;
  *(v22 - 152) = v24 + 5119;
  *(v22 - 124) = (v19 - 1738684836) ^ v24;
  *(v22 - 120) = (v19 + 1379211384) ^ v24;
  *(v22 - 128) = v19 + 1379211384 - v24 + 37;
  *(v22 - 144) = v24;
  *(v22 - 136) = v23 + v24;
  v25 = (*(v20 + 8 * ((v19 + 240) ^ 0x63E)))(v22 - 152);
  return (*(v20 + 8 * *(v22 - 112)))(v25);
}

uint64_t sub_258581F44@<X0>(unsigned int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = (a3 + a4);
  *v8 = v7;
  v8[1] = v7;
  return (*(v6 + 8 * (((((v5 + 330) | a1) - 1160 == (v4 & 0xFFFFFFFFFFFFFFF0)) * a2) ^ v5)))();
}

uint64_t sub_258581FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, uint64_t a22, _DWORD *a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v38 = (v34 - 972);
  v39 = 4 * (v35 ^ v33);
  v40 = 1999407021 * ((*(*a24 + (*a23 & 0x62164304)) ^ (a31 + v39)) & 0x7FFFFFFF);
  v41 = (v40 >> ((a21 & 0x2F) - 31)) ^ v40;
  v42 = 1999407021 * v41;
  *(a32 + v39) ^= *(a31 + v39) ^ (((((~v38 + v33) ^ (v37 - v38)) - 1) & (v38 - v33)) >> 63) ^ *(*(&off_286999DF0 + v34 - 928) + HIBYTE(v42)) ^ *(*(&off_286999DF0 + v34 - 876) + HIBYTE(v42) + 3) ^ *(*(&off_286999DF0 + a20) + ((1999407021 * v41) >> 24) - 1) ^ (-2018705408 * v41) ^ v42 ^ (-1311978215 * HIBYTE(v42));
  return (*(v36 + 8 * ((1645 * (v32 - 1 == ((65 * ((((a21 & 0x95A7272F) - 106) | 0x10A) ^ 0x3C0)) ^ 0x3CF))) ^ a21 & 0x95A7272F)))();
}

uint64_t sub_258582134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, char a32)
{
  v33 = a32 & 0x3F;
  *(&a23 + v33) = 28;
  return (*(v32 + 8 * (((v33 > 0x37) * (a21 + 185)) ^ (a21 - 762))))(a1, a2, a3);
}

uint64_t sub_258582440@<X0>(unsigned int a1@<W0>, unsigned int a2@<W8>)
{
  v8 = a1 < a2;
  *(v5 + v3 + 24) = *(v4 + v3);
  if (v8 == v3 + 1 > ((v7 - 1086433912) & 0x40C1AAEB ^ 0x88B26879))
  {
    v8 = v3 + 2001573133 < v2;
  }

  return (*(v6 + 8 * ((62 * v8) ^ v7)))();
}

uint64_t sub_2585825AC(uint64_t a1, int8x16_t *a2, uint64_t a3, unint64_t a4, int a5, double a6, __n128 a7, __n128 a8, __n128 a9, int8x16_t a10, double a11, int8x16_t a12)
{
  v18 = ((v16 + 105) ^ a4) & (v15 - 16);
  v20.i64[0] = vqtbl4q_s8(*(&a7 - 1), a10).u64[0];
  *&v20.i64[1] = a11;
  v21 = vrev64q_s8(vmulq_s8(v20, a12));
  *a2 = veorq_s8(veorq_s8(veorq_s8(*(v12 + v18 - 15), *a2), veorq_s8(*(v18 + v13 - 14), *(v18 + v14 - 12))), vextq_s8(v21, v21, 8uLL));
  return (*(v17 + 8 * (((a3 == 16) * a5) ^ v16)))(a1, a2 - 1);
}

uint64_t sub_2585825B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, _BYTE *a12, _BYTE *a13, uint64_t a14, _BYTE *a15, uint64_t a16, _BYTE *a17, uint64_t a18, uint64_t a19, uint64_t a20, _BYTE *a21, char a22, int a23, int a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  a13[3] = v35 ^ a24 ^ 0xA0 ^ 0x3E;
  a21[29] = BYTE1(v35) ^ 0x2F;
  v39 = ((((BYTE2(v35) ^ 0xAE) - 93) ^ 0xEA) - 109) ^ ((BYTE2(v35) ^ 0xAE) - 93) ^ 0xEA ^ *(a10 + (((BYTE2(v35) ^ 0xAE) - 93) ^ 0xA3));
  a21[5] = BYTE5(v35) ^ 9;
  *a17 = BYTE3(v35) ^ 0x4C;
  a21[22] = BYTE4(v35) ^ 0xAC;
  a13[7] = 89 * ((v39 | 0x73) & (~v39 | 0x8C));
  v40 = *(a9 + 806 + ((-47 * (BYTE6(v35) ^ 0x93)) ^ 0xA5));
  a17[4] = HIBYTE(v35) ^ 6;
  a13[1] = BYTE1(a1) ^ 0x8D;
  a15[23] = a1 ^ 0x5A;
  a15[28] = v40 ^ ((((((-47 * (BYTE6(v35) ^ 0x93)) ^ 0x28) + 94) ^ 0x4C | 0x65) - ((((-47 * (BYTE6(v35) ^ 0x93)) ^ 0x28) + 94) ^ 0x29)) | (((-47 * (BYTE6(v35) ^ 0x93)) ^ 0x28) + 94) ^ 0x4C);
  v41 = *(a9 + 806 + ((-47 * (BYTE2(a1) ^ 0x79)) ^ 0xA5));
  a12[8] = BYTE4(a1) ^ 0x57;
  a12[3] = BYTE5(a1) ^ 0xE;
  a13[2] = HIBYTE(a1) ^ 0x62;
  a15[21] = BYTE3(a1) ^ 0x8F;
  a12[6] = BYTE1(v37);
  a21[27] = BYTE3(v37);
  a13[4] = BYTE2(v37);
  a15[25] = BYTE5(v37);
  a15[18] = BYTE2(v34);
  *a13 = v37;
  a17[6] = BYTE4(v37);
  a21[23] = BYTE6(v37);
  a17[8] = BYTE4(v34);
  a21[24] = (((-47 * (BYTE2(a1) ^ 0x79)) ^ 0x28) + 94) ^ 0x4C ^ v41;
  a12[1] = BYTE6(a1) ^ 3;
  a13[6] = v34;
  a17[3] = HIBYTE(v36);
  a21[9] = BYTE3(v34);
  *a12 = BYTE5(v34);
  a13[5] = v34 >> (a22 & 8) >> (a22 & 8 ^ 8u);
  a15[20] = HIBYTE(v37);
  a17[7] = BYTE6(a5);
  a15[1] = v38 ^ 0x76;
  a12[7] = BYTE1(v38) ^ 0x4B;
  a17[2] = BYTE3(v33);
  a21[8] = BYTE4(v33);
  a21[6] = BYTE2(v38) ^ 0x18;
  v42 = (BYTE5(v33) - 93) ^ 0xEA ^ (((BYTE5(v33) - 93) ^ 0xEA) - 109) ^ 0x73 ^ *(a10 + ((BYTE5(v33) - 93) ^ 0xA3));
  a15[30] = HIBYTE(v33);
  a17[1] = BYTE6(v33);
  a17[5] = 89 * v42;
  *(*a19 + 4) = a11 + 1;
  return sub_2585702A4(a24 ^ 0x5A0u, a33, 0);
}

void sub_258582DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  *a1 = 1498173510;
  *(a1 + 4) = a20 ^ 0xFD;
  *(a1 + 5) = 1025;
  *(a1 + 7) = 0;
  *(a1 + 8) = 335544320;
  *(v26 - 120) = a1 + 12;
  *(v26 - 144) = a20 ^ (-111 * ((v26 + 112 - 2 * ((v26 + 112) & 0xA8) - 88) ^ 0xF4)) ^ 0xE1;
  *(v26 - 128) = -41 - -111 * ((v26 + 112 - 2 * ((v26 + 112) & 0xA8) - 88) ^ 0xF4);
  *(v26 - 136) = a19;
  *(v26 - 112) = 44841361 * ((v26 - 144 - 2 * ((v26 - 144) & 0xD19316A8) - 778889560) ^ 0xB1FDEBF4) + v21 - 546;
  (*(v20 + 8 * (v21 ^ 0x763)))(v26 - 144);
  *(a19 + 1) = 5;
  *v25 = a1;
  *v24 = v22;
  *v23 = 0;
  JUMPOUT(0x258582EC0);
}

uint64_t sub_2585831F0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, _BYTE *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, __int16 a43, unsigned __int8 a44, unsigned __int8 a45)
{
  HIDWORD(a14) = v46;
  v88 = v48;
  *v49 = *a2 ^ *v48;
  a2[17] = a2[1] ^ v45[17];
  a2[18] = a2[2] ^ v45[18];
  a2[19] = a2[3] ^ v45[19];
  a2[20] = a2[4] ^ v45[20];
  a2[21] = a2[5] ^ v45[21];
  a2[22] = a2[6] ^ v45[22];
  a2[23] = a2[7] ^ v45[23];
  a2[24] = a2[8] ^ v45[24];
  a2[25] = a2[9] ^ v45[25];
  a2[26] = a2[10] ^ v45[26];
  a2[27] = a2[11] ^ v45[27];
  a2[28] = a2[12] ^ v45[28];
  a2[29] = a2[13] ^ v45[29];
  a2[30] = a2[14] ^ v45[30];
  v89 = v49;
  v50 = v49;
  a2[31] = a2[15] ^ v45[31];
  v90 = *(a1 + 8 * v47);
  v51 = v49[4];
  v93 = v49 + 4;
  v52 = v49[8];
  v53 = v50[12];
  v92 = 2u % a45;
  v54 = v50[1];
  v55 = v50[5];
  v56 = v50[9];
  v57 = v50[13];
  v91 = 3u % a45;
  v58 = v50[2];
  v59 = v50[10];
  v60 = v50[6];
  v61 = v50[14];
  v62 = v50[15];
  v63 = v50[11];
  v64 = v50[7];
  v65 = v50[3];
  v94 = (v47 + 1383857892) & 0xAD8401D2;
  v66 = *(*(a8 - 3) + *v50);
  *v50 = v66;
  v67 = *(a8[1] + v51);
  v50[4] = v67;
  v68 = *(a8[5] + v52);
  v50[8] = v68;
  v69 = *(a8[9] + v53);
  v50[12] = v69;
  v70 = *(a8[2] + v55);
  v50[1] = v70;
  v71 = *(a8[6] + v56);
  v50[5] = v71;
  v72 = *(a8[10] + v57);
  v50[9] = v72;
  v73 = *(*(a8 - 2) + v54);
  v50[13] = v73;
  v74 = *(a8[7] + v59);
  v50[2] = v74;
  v75 = *(*(a8 - 1) + v58);
  v50[10] = v75;
  v76 = *(a8[11] + v61);
  v50[6] = v76;
  v77 = *(a8[3] + v60);
  v50[14] = v77;
  v78 = *(a8[8] + v63);
  v50[15] = v78;
  v79 = *(a8[4] + v64);
  v50[11] = v79;
  v80 = *(*a8 + v65);
  v50[7] = v80;
  v81 = *(a8[12] + v62);
  v50[3] = v81;
  v82 = (a27 + ((0u % a44) << 7));
  v83 = v82 + 147;
  LODWORD(v66) = *(v82[148] + 4 * v70) ^ *(v82[147] + 4 * v66) ^ *(v82[149] + 4 * v74) ^ *(v82[150] + 4 * v81);
  *v50 = v66;
  v84 = &v82[4 * (a45 != 1) + 147];
  LODWORD(v58) = *(v84[1] + 4 * v71) ^ *(*v84 + 4 * v67) ^ *(v84[2] + 4 * v76) ^ *(v84[3] + 4 * v80);
  v50[7] = BYTE3(v58);
  LODWORD(v82) = v58 >> ((9 * (v94 ^ 0x3D)) ^ 0xB7);
  v50[6] = v82;
  *v93 = v58;
  LODWORD(v71) = *(v83[4 * v92 + 1] + 4 * v72) ^ *(v83[4 * v92] + 4 * v68) ^ *(v83[4 * v92 + 2] + 4 * v75) ^ *(v83[4 * v92 + 3] + 4 * v79);
  v50[11] = BYTE3(v71);
  v50[10] = BYTE2(v71);
  *(v50 + 4) = v71;
  LODWORD(v72) = *(v83[4 * v91 + 1] + 4 * v73) ^ *(v83[4 * v91] + 4 * v69) ^ *(v83[4 * v91 + 2] + 4 * v77) ^ *(v83[4 * v91 + 3] + 4 * v78);
  v50[15] = BYTE3(v72);
  v50[14] = BYTE2(v72);
  *(v50 + 6) = v72;
  LOBYTE(v73) = *(a9 - 15) ^ v66;
  *v50 = v73;
  LODWORD(v77) = *(a9 - 14) ^ (v66 >> 8);
  v50[1] = *(a9 - 14) ^ BYTE1(v66);
  v50[2] = *(a9 - 13) ^ BYTE2(v66);
  v50[3] = *(a9 - 12) ^ BYTE3(v66);
  *(v50 + 2) = *(a9 - 11) ^ v58;
  v50[6] = *(a9 - 9) ^ v82;
  v85 = *(a9 - 8) ^ BYTE3(v58);
  v50[7] = *(a9 - 8) ^ BYTE3(v58);
  v50[8] = *(a9 - 7) ^ v71;
  v86 = *(a9 - 6) ^ (v71 >> 8);
  v50[9] = *(a9 - 6) ^ BYTE1(v71);
  v50[10] = *(a9 - 5) ^ BYTE2(v71);
  v50[11] = *(a9 - 4) ^ BYTE3(v71);
  *(v50 + 6) = *(a9 - 3) ^ v72;
  v50[14] = *(a9 - 1) ^ BYTE2(v72);
  v50[15] = *a9 ^ BYTE3(v72);
  return (*(a28 + 8 * v94))(a28, v73, v85, v50, v77, 0, 0, v86, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, v88, v89, v90);
}

uint64_t sub_258583320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, int a12, int a13)
{
  v17 = (((2 * (v13 ^ 0x78) + 106) & (2 * *(v15 + 5))) + (*(v15 + 5) ^ 0xFE)) ^ 0x80;
  a12 = 44841361 * ((((2 * &a11) | 0x88DC729E) - &a11 - 1148074319) ^ 0x2400C413) + 2039066836 + v13;
  a11 = v17 - -111 * ((((2 * &a11) | 0x9E) - &a11 - 79) ^ 0x13);
  v18 = (*(v14 + 8 * (v13 + 1242)))(&a11);
  return (*(v14 + 8 * ((1354 * (a13 == v16)) ^ v13)))(v18);
}

uint64_t sub_258583FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, _DWORD *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, _DWORD *a24, void *a25)
{
  v31 = (v28 - 1314) ^ 0x4B4;
  *a19 = 0;
  v32 = ((v25 ^ (v25 >> 11)) << 7) & 0x9D2C5680 ^ v25 ^ (v25 >> 11) ^ (v28 - 1314) ^ ((((v28 + 3804) ^ v26) & v26) >> (__clz((v28 + 3804) ^ v26 | 1) ^ 0x1F)) & (v28 - 1314);
  v33 = (v32 << (v31 - (v28 - 35) + 90)) & 0xEFC60000 ^ v32 ^ (((v32 << (v31 - (v28 - 35) + 90)) & 0xEFC60000 ^ v32) >> 18);
  v34 = (v27 + (a18 - 1));
  v35 = 1999407021 * ((*(*a25 + (*a24 & 0x15367BD8)) ^ v34) & ((v31 - 542172730) & 0x2050E39E ^ 0x7FFFFDE5));
  v36 = 1999407021 * (v35 ^ HIWORD(v35));
  v37 = v36 >> ((v28 - 34) ^ 0x19u);
  LOBYTE(v36) = *(*(v29 + 8 * (v31 - 1080)) + v37 - 12) ^ *(*(v29 + 8 * (v31 - 1099)) + v37 - 12) ^ *(*(v29 + 8 * (v31 - 1054)) + v37 - 6) ^ v36 ^ (63 * v37);
  *v34 = v36 ^ v33;
  return (*(v30 + 8 * ((418 * (a18 == (v36 != v33))) ^ v31)))();
}

uint64_t sub_258584000@<X0>(int8x8_t *a1@<X8>)
{
  v5 = veor_s8(v2[1], 0x9C9C9C9C9C9C9C9CLL);
  *a1 = veor_s8(*v2, 0x9C9C9C9C9C9C9C9CLL);
  a1[1] = v5;
  return (*(v3 + 8 * ((37 * (6 * (v1 ^ 0x2CFu) - 692 != (v4 & 0x70))) ^ (v1 + 355))))();
}

uint64_t sub_258584060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = (v7 + a7 + 84);
  v12 = *(v7 + v9 - 16);
  *(v11 - 1) = *(v7 + v9 - 32);
  *v11 = v12;
  return (*(v10 + 8 * ((((v7 & 0x7FFFFFE0) == 32) * (((v8 + 954) ^ 0x6B5) - 802)) | (v8 + 954))))();
}

uint64_t sub_2585840BC@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v6 = (a1 + a2);
  *v6 = v5;
  v6[1] = v5;
  return (*(v4 + 8 * ((216 * (((101 * (v3 ^ 0x265u)) ^ 0x531) == (v2 & 0xFFFFFFFFFFFFFFF0))) ^ v3)))();
}

uint64_t sub_258584110@<X0>(unsigned int a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = a3 + 1;
  *(v5 + 4 * v7 + 908) = *(a2 + 4 * (*(v5 + 4 * v7 + 912) & ((v3 - 710) ^ a1))) ^ *(v5 + 4 * v7) ^ ((*(v5 + 4 * v7 + 912) & 0x7FFFFFFE | v4 & 0x80000000) >> 1);
  return (*(v6 + 8 * ((v3 - 175) | (8 * (v7 != 395)))))();
}

uint64_t sub_258584164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, _DWORD *a23, unsigned int *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  *a23 = 1;
  v35 = 1511064119 * ((((2 * (v34 - 144)) | 0x13AE20010779F054) - (v34 - 144) + 0x7628EFFF7C4307D6) ^ 0x1459A5BC0BC3A760);
  *(v34 - 136) = *a24 - v35;
  *(v34 - 128) = ((v32 - 794453445) ^ 0x88) + v35;
  *(v34 - 124) = v35 ^ 1;
  *(v34 - 120) = 5119 - v35;
  *(v34 - 144) = v35 ^ (v32 - 794453445) ^ 0xE;
  *(v34 - 104) = -310332759 - v35 + v32;
  *(v34 - 112) = v32 - 794453445 - v35;
  (*(a4 + 8 * (v32 ^ v33)))(v34 - 144);
  return (*(a32 + 8 * *(v34 - 108)))(a32, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_2585842A8@<X0>(unsigned int a1@<W8>)
{
  *(v5 + v3 + 24) = *(v4 + v3) ^ 0x9C;
  v9 = v8 + v3;
  v10 = v3 + 1850607366 < v1;
  if (v7 < a1 != (v9 - 283) > 0x91B1F8FA)
  {
    v10 = v7 < a1;
  }

  return (*(v6 + 8 * ((v10 * v2) ^ v8)))();
}

uint64_t sub_258584318(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int8x16_t a8, int8x8_t a9)
{
  v14 = a3 - 8;
  v16.val[0].i64[0] = a6 & (v12 + v14 - 1);
  v16.val[0].i64[1] = (v12 + v14 + 14) & 0xF;
  v16.val[1].i64[0] = (v12 + v14 + 13) & 0xF;
  v16.val[1].i64[1] = (v12 + v14 + 12) & 0xF;
  v16.val[2].i64[0] = (v12 + v14 + 11) & 0xF;
  v16.val[2].i64[1] = (v12 + v14 + 10) & 0xF;
  v16.val[3].i64[0] = (v12 + v14 + 9) & 0xF;
  v16.val[3].i64[1] = (v12 + v14) & 0xF ^ 8;
  *(a4 - 8 + v12) = veor_s8(veor_s8(veor_s8(*(v9 + v16.val[0].i64[0] - 7), *(a5 - 8 + v12)), veor_s8(*(v16.val[0].i64[0] + v10 - 5), *(v16.val[0].i64[0] + v11 - 1))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v16, a8), a9)));
  return (*(v13 + 8 * (((a2 != v14) * a7) ^ a1)))();
}

uint64_t sub_258584360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, int a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, int a31)
{
  *v31 = v31[623] + ((v33 - 352) ^ 0xFFFFFD91) + (((-((~(v33 - 352) + v32) ^ (v36 - (v33 - 352))) | (~(v33 - 352) + v32)) & 0x8000000000000000) == 0) + 1;
  v38 = v37 - 152;
  *(v38 + 24) = a28;
  *(v37 - 136) = a29 + a31 + 125;
  *(v37 - 132) = a29 ^ 1;
  *(v37 - 152) = a29 ^ a25;
  *(v38 + 8) = (v35 + 1) - a29;
  *(v37 - 120) = a31 - a29;
  *(v37 - 112) = 1166607471 - a29 + v33;
  v39 = (*(v34 + 8 * (v33 + 537)))(v37 - 152);
  return (*(v34 + 8 * *(v37 - 116)))(v39);
}

uint64_t sub_2585843AC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X5>, int a3@<W8>)
{
  v8 = v4 < v3;
  *(a1 + a2) = 0;
  v9 = a2 + (a3 ^ v7) - 351;
  v10 = v3 + a2 + 1 < v4;
  if (v8 == v9 > v6)
  {
    v8 = v10;
  }

  return (*(v5 + 8 * ((v8 | (8 * v8)) ^ a3)))();
}

uint64_t sub_258584438(uint64_t a1, int a2)
{
  if (a1)
  {
    v3 = a2 == 0;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  return (*(v2 + 8 * ((8 * v4) | 0x331u)))();
}

uint64_t sub_2585844F4(uint64_t a1, uint64_t a2)
{
  v8 = (((v4 + 70) & 0xB7) - 88) * v2[5] + 31;
  v9 = ((2 * (v2[6] + 1)) & 0x38) + ((v2[6] + 1) ^ 0x1C);
  v10 = (v6 ^ 0xF300E3F4) & (2 * (v6 & 0xFA4AF3E6)) ^ v6 & 0xFA4AF3E6;
  v11 = ((2 * (v6 ^ 0xE310A07C)) ^ 0x32B4A734) & (v6 ^ 0xE310A07C) ^ (2 * (v6 ^ 0xE310A07C)) & 0x195A539A;
  v12 = v11 ^ 0x94A508A;
  v13 = (v11 ^ 0x10100310) & (4 * v10) ^ v10;
  v14 = ((4 * v12) ^ 0x65694E68) & v12 ^ (4 * v12) & 0x195A5398;
  v15 = (v14 ^ 0x1484200) & (16 * v13) ^ v13;
  v16 = ((16 * (v14 ^ 0x18121192)) ^ 0x95A539A0) & (v14 ^ 0x18121192) ^ (16 * (v14 ^ 0x18121192)) & 0x195A5390;
  v17 = v15 ^ 0x195A539A ^ (v16 ^ 0x11001100) & (v15 << 8);
  v18 = v6 ^ (2 * ((v17 << 16) & 0x195A0000 ^ v17 ^ ((v17 << 16) ^ 0x539A0000) & (((v16 ^ 0x85A421A) << 8) & 0x195A0000 ^ 0x1080000 ^ (((v16 ^ 0x85A421A) << 8) ^ 0x5A530000) & (v16 ^ 0x85A421A)))) ^ 0x2BB32990;
  v19 = 1380645169 * ((((v7 - 144) | 0x82D4E530) - ((v7 - 144) | 0x7D2B1ACF) + 2099976911) ^ 0x11ED60);
  *(v7 - 143) = (69 * v2[4] + 125) ^ (49 * ((((v7 + 112) | 0x30) - ((v7 + 112) | 0xCF) - 49) ^ 0x60));
  *(v7 - 116) = v19 + v4 + 1031;
  *(v7 - 140) = v18 + v19;
  *(v7 - 144) = v8 ^ (49 * ((((v7 + 112) | 0x30) - ((v7 + 112) | 0xCF) - 49) ^ 0x60));
  *(v7 - 120) = v9 ^ (49 * ((((v7 + 112) | 0x30) - ((v7 + 112) | 0xCF) - 49) ^ 0x60));
  *(v7 - 136) = v3;
  *(v7 - 128) = a2;
  (*(v5 + 8 * (v4 ^ 0x466)))(v7 - 144);
  result = v22;
  *v21 = -1;
  *(v22 + 52) = v6;
  return result;
}

uint64_t sub_258584758(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = v6 - 1;
  *(v5 + v9) = *(v4 + v9) ^ 0x9C;
  return (*(v8 + 8 * ((1262 * (v9 == 0)) ^ (a4 + v7 + 60))))();
}

uint64_t sub_258584794@<X0>(int a1@<W0>, int a2@<W2>, uint64_t a3@<X5>, int a4@<W8>)
{
  v15 = (v6 & 0xE0C318CF ^ 0x60C3188A ^ (a1 ^ 0x8E142055) & ((a2 - 385530734) & 0x16FABB72 ^ (v9 + 526) ^ v6) | a1 & 0x6F834024 ^ 0x1004024 ^ (a1 ^ 0x9128C765) & (v4 ^ 0x15478BE)) + (v7 ^ v9) + *(*(&off_286999DF0 + a2 - 492) + a3 + v11 - 1) + (*(v5 + 4 * (*(*(&off_286999DF0 + (a2 ^ 0x21F)) + a3 + v11 - 12) - 86)) ^ v10);
  v16 = (v15 ^ 0xF556542B) & (2 * (v15 & v12)) ^ v15 & v12;
  v17 = ((2 * (v15 ^ 0x1F5A747F)) ^ 0xD4B9C2A8) & (v15 ^ 0x1F5A747F) ^ (2 * (v15 ^ 0x1F5A747F)) & 0xEA5CE154;
  v18 = v17 ^ 0x2A442154;
  v19 = (v17 ^ 0xC258C000) & (4 * v16) ^ v16;
  v20 = ((4 * v18) ^ 0xA9738550) & v18 ^ (4 * v18) & 0xEA5CE154;
  v21 = (v20 ^ 0xA8508150) & (16 * v19) ^ v19;
  v22 = ((16 * (v20 ^ 0x420C6004)) ^ 0xA5CE1540) & (v20 ^ 0x420C6004) ^ (16 * (v20 ^ 0x420C6004)) & 0xEA5CE150;
  v23 = v22 ^ 0x4A10E014;
  v24 = v21 ^ 0xEA5CE154 ^ (v22 ^ 0xA04C0100) & (v21 << 8);
  v25 = *(*(&off_286999DF0 + (a2 ^ 0x24C)) + a3 + v11 - 12);
  v26 = (v24 << 16) & 0x6A5C0000 ^ v24 ^ ((v24 << 16) ^ 0x61540000) & ((v23 << 8) & 0x6A5C0000 ^ 0x221C0000 ^ ((v23 << 8) ^ 0x5CE10000) & v23);
  LOBYTE(v23) = (((v25 + 124) ^ 0xA5) - 43) ^ (v25 + 124) ^ (((v25 + 124) ^ 1) + 113) ^ (((v25 + 124) ^ 0xD5) - 91) ^ (-(v25 + 124) - 114);
  v27 = (((a1 ^ a4) - 1578554266) ^ ((a1 ^ 0xE5E41824) + 438036444) ^ ((a1 ^ 0xD525F324) + 718933212)) - 791275512 + (((v15 ^ (2 * v26) ^ 0xE1175783) << (v23 & 9 ^ 8) << (v23 & 0x16 ^ 6)) | ((v15 ^ (2 * v26) ^ 0xE1175783) >> (50 - v25)));
  v28 = (v27 ^ 0x5E4D3290) & (2 * (v27 & 0x9E012092)) ^ v27 & 0x9E012092;
  v29 = ((2 * (v27 ^ 0x4A4F7394)) ^ 0xA89CA60C) & (v27 ^ 0x4A4F7394) ^ (2 * (v27 ^ 0x4A4F7394)) & 0xD44E5306;
  v30 = v29 ^ 0x54425102;
  v31 = (v29 ^ 0x800C0200) & (4 * v28) ^ v28;
  v32 = ((4 * v30) ^ 0x51394C18) & v30 ^ (4 * v30) & 0xD44E5304;
  v33 = (v32 ^ 0x50084000) & (16 * v31) ^ v31;
  v34 = ((16 * (v32 ^ 0x84461306)) ^ 0x44E53060) & (v32 ^ 0x84461306) ^ (16 * (v32 ^ 0x84461306)) & 0xD44E5300;
  v35 = v33 ^ 0xD44E5306 ^ (v34 ^ 0x44441000) & (v33 << 8);
  return (*(v8 + 8 * ((31 * (a3 + 1 == v13 + 16)) ^ a2)))(v27 ^ (2 * ((v35 << 16) & 0x544E0000 ^ v35 ^ ((v35 << 16) ^ 0x53060000) & (((v34 ^ 0x900A4306) << 8) & 0x544E0000 ^ 0x100C0000 ^ (((v34 ^ 0x900A4306) << 8) ^ 0x4E530000) & (v34 ^ 0x900A4306)))) ^ 0xF846BE04);
}

void sub_258584C44(uint64_t a1)
{
  v1 = 1380645169 * ((-2 - ((a1 | 0x76940A81) + (~a1 | 0x896BF57E))) ^ 0xBAEFD2E);
  v2 = *a1 + v1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 24) - v1;
  v5 = (8 * (((v4 ^ 0x5F3EB7D5) + 193121654) ^ v4 ^ ((v4 ^ 0x5E1A1BF) + 291363616) ^ ((v4 ^ 0xE632D4A) + 450844651) ^ ((v4 ^ 0x1FFFBE7F) + 188990688))) ^ 0x5A1C2AF8;
  v6 = (v4 ^ 0x823C7010) & (2 * (v4 & 0x94BC7AA1)) ^ v4 & 0x94BC7AA1;
  v7 = ((2 * (v4 ^ 0x8A04C052)) ^ 0x3D7175E6) & (v4 ^ 0x8A04C052) ^ (2 * (v4 ^ 0x8A04C052)) & 0x1EB8BAF2;
  v8 = v7 ^ 0x2888A11;
  v9 = (v7 ^ 0x14383090) & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0x7AE2EBCC) & v8 ^ (4 * v8) & 0x1EB8BAF0;
  v11 = (v10 ^ 0x1AA0AAC0) & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x4181033)) ^ 0xEB8BAF30) & (v10 ^ 0x4181033) ^ (16 * (v10 ^ 0x4181033)) & 0x1EB8BAF0;
  v13 = *(v3 + 16);
  v14 = v11 ^ 0x1EB8BAF3 ^ (v12 ^ 0xA88AA00) & (v11 << 8);
  v15 = *(v3 + 20) + __CFADD__(v5, v13) + (((v4 ^ (2 * ((v14 << 16) & 0x10000000 ^ v14 ^ ((v14 << 16) ^ 0x30000000) & ((((v12 ^ 0x143010C3) << 8) ^ 0x38BA0000) & (v12 ^ 0x143010C3) ^ ((v12 ^ 0x143010C3) << 8) & 0x1EB80000)))) >> 29) ^ 4);
  *(v3 + 16) = v5 + v13;
  *(v3 + 20) = v15;
  __asm { BRAA            X10, X17 }
}

uint64_t sub_258584FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v76 = v73 - 507;
  v77 = (*(v75 + 8 * (v73 + 634)))(v74);
  *(&a57 + ((v76 - 389) | 0x288) - 524) = (&a53 ^ 0xBA) * (&a53 + 17);
  a73 = (&a53 ^ 0xBB) * (&a53 + 18);
  return (*(v75 + 8 * v76))(v77);
}

uint64_t sub_25858532C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, int a31, int a32, uint64_t a33)
{
  *v38 = ((v39 + 1476941205) ^ 0x26E) + v38[623] - (((-((~(v39 + 1476941205) + v35) ^ (v34 - (v39 + 1476941205))) | (~(v39 + 1476941205) + v35)) & 0x8000000000000000) == 0);
  *(v40 - 136) = v36;
  *(v40 - 128) = v36 + (v37 + 1);
  *(v40 - 144) = v36 | 3;
  *(v40 - 112) = a32 ^ v36;
  *(v40 - 108) = v36 + a32 + 61;
  *(v40 - 120) = a30 - v36;
  *(v40 - 116) = v36 ^ 0x985DC93B;
  v41 = (*(v33 + 12168))(v40 - 144);
  return (*(a33 + 8 * *(v40 - 104)))(v41);
}

uint64_t sub_25858537C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, int a29)
{
  v35 = (v29 + 4 * (a3 + v33));
  *v35 = v32 ^ (v31 + 739) ^ __ROR4__(*(v35 - 8) ^ *(v35 - 3) ^ *(v35 - 14) ^ *(v35 - 16), 31);
  return (*(v30 + 8 * ((347 * (a3 + 1 == v34 + 80)) ^ a29)))(a1, 568841313);
}

uint64_t sub_258585424(int a1)
{
  HIDWORD(v14) = a1 ^ v13;
  LODWORD(v14) = a1 ^ (v4 + 1744830292);
  v15 = (v5 ^ v12) + (v14 >> 27) + (((v3 ^ v2) + v12 - ((2 * (v3 ^ v2)) & 0xDDAE7134)) ^ v6) + (*(v1 + 4 * (v7 + v9)) ^ v11) + 782453876;
  return (*(v8 + 8 * ((822 * (v7 + 1 == v10 + 80)) ^ v4)))(v15 ^ ((v15 ^ 0xF7C4DE1B) + 1820044155) ^ ((v15 ^ 0xC6AD29DE) + 1561484480) ^ ((v15 ^ 0xAAD292A4) + 829286342) ^ ((v15 ^ 0xFFFBEFFF) + 1682217631) ^ 0xA97B204);
}

uint64_t sub_25858569C(int a1)
{
  *(v4 - 1) = v6;
  *v4 = v6;
  return (*(v5 + 8 * ((120 * (a1 & ~(v1 ^ (v3 == 0)))) ^ v2)))();
}

uint64_t sub_258585748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v14 = a8 + v11;
  v15 = (v11 - 1) & 0xF;
  v16 = v15 - v11 + ((((v12 + 1630211524) & 0x9ED4F57F) - 354) ^ 0x30CLL);
  v17 = v9 + v16;
  ++v15;
  v18 = v9 + v15;
  v19 = v8 + v16;
  v20 = v8 + v15;
  v21 = v10 + v16;
  v22 = v10 + v15;
  v24 = v18 > a8 && v17 < v14;
  if (v20 > a8 && v19 < v14)
  {
    v24 = 1;
  }

  v27 = v22 > a8 && v21 < v14 || v24;
  return (*(v13 + 8 * ((124 * v27) ^ v12)))();
}

void sub_2585857E8(uint64_t a1)
{
  v1 = *(a1 + 24) + 344723623 * ((a1 - 733831921 - 2 * (a1 & 0xD4429D0F)) ^ 0x23E1F0C6);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_258585904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, int a14, int a15, uint64_t a16, uint64_t a17, int *a18, unsigned int a19)
{
  v27 = (((&a16 ^ 0xE3D55D1B | 0x20585CEF) - (&a16 ^ 0xE3D55D1B) + ((&a16 ^ 0xE3D55D1B) & 0xDFA7A310)) ^ 0x2A38A317) * v21;
  a16 = v25;
  LODWORD(a17) = v27 ^ (v23 + 12);
  HIDWORD(a17) = v27 + v22 + 841;
  (*(v20 + 8 * (v22 ^ 0x4F4)))(&a16);
  v28 = 439532179 * ((&a16 & 0x72E4D1BA | ~(&a16 | 0x72E4D1BA)) ^ 0x53BD13C7);
  a19 = v28 ^ 0xBC6B3AAD;
  a17 = v25;
  a18 = &a12;
  LODWORD(a16) = v28 + v22 + 857;
  HIDWORD(a16) = 752870518 - v28;
  (*(v20 + 8 * (v22 ^ 0x754)))(&a16);
  v29 = *(v19 + 4);
  *v19 += a12;
  *(v19 + 4) = v29 + a13;
  v30 = *(v19 + 12);
  *(v19 + 8) += a14;
  *(v19 + 12) = v30 + a15;
  LODWORD(a18) = (v26 + v22 - 143) ^ (((((2 * &a16) | 0x4A69B00E) - &a16 - 624220167) ^ 0x9BD963ED) * v24);
  a16 = v19;
  a17 = v25;
  v31 = (*(v20 + 8 * (v22 + 1191)))(&a16);
  *(v19 + 24) = 0u;
  return (*(v20 + 8 * v22))(v31);
}

uint64_t sub_258585AF0@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v7 = v4 + v2;
  *(v7 + 24) = a2;
  *(v7 + 40) = a2;
  return (*(v5 + 8 * (((v2 + a1 == 845) * v3) ^ v6)))();
}

uint64_t sub_258585B94(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, char a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, int a33, char a34)
{
  *v34 += (((a31 ^ 1) - 104) ^ ((a31 ^ v40) + 19) ^ ((a31 ^ 0xA8) + 34 * (a6 ^ 0x8B) - 105)) + 68;
  if (v38 == 752870503)
  {
    v44 = v34;
  }

  else
  {
    v44 = v34 + 1;
  }

  *v44 += a28 + 92;
  v45 = v38 ^ 0x2CDFE466;
  v34[2 % v45] = (((v36 ^ 0x12) - 97) ^ ((v36 ^ 0x11) - 98) ^ ((v36 ^ 0xEC) + 97)) + v34[2 % v45] - 100;
  v34[3 % v45] += 92;
  v34[4 % v45] += ((((a34 - ((2 * a34) & 0x4A) + 37) ^ 0xE6) + 26) ^ (((a34 - ((2 * a34) & 0x4A) + 37) ^ a2) - 23) ^ (((a34 - ((2 * a34) & 0x4A) + 37) ^ 0xD4) + 44)) + 37;
  v34[5 % v45] = v39 + v34[5 % v45] - 43;
  v34[6 % v45] += (((v35 ^ 0x25) + 66) ^ ((v35 ^ 0xF3) - 104) ^ ((v35 ^ 0x6B) + 16)) + 38;
  v34[7 % v45] += v37;
  v34[8 % v45] = ((((v42 - (v43 & (2 * v42)) - 85) ^ 0x94) + 108) ^ (((v42 - (v43 & (2 * v42)) - 85) ^ 0xC9) + 55) ^ (((v42 - (v43 & (2 * v42)) - 85) ^ 0xF6) + 10)) + v34[8 % v45] - 85;
  v34[9 % v45] += v41;
  v34[0xA % (v38 ^ 0x2CDFE466u)] += a7;
  return sub_258585E08(198634436, 620966429, 3674000714, -620966429, a5, 620966429);
}

uint64_t sub_258585F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, int a28, uint64_t a29)
{
  *v29 = (v32 - 692) & 0x4A84B981 ^ v29[623] ^ ((((v32 - 692) ^ v31) & v31) >> (__clz((v32 - 692) ^ v31 | 1) ^ 0x1F)) & 1;
  v36 = v35 - 152;
  *(v36 + 24) = a26;
  *(v35 - 132) = v34 | 1;
  *(v35 - 120) = a29 - v34;
  *(v35 - 152) = a28 ^ v34;
  *(v35 - 136) = a27 + v34;
  *(v36 + 8) = (v30 + 1) - v34 - a29 + ((v32 - 692) ^ 0x26Eu) + 421140508;
  *(v35 - 112) = 1166607131 - v34 + v32;
  v37 = (*(v33 + 8 * (v32 + 197)))(v35 - 152);
  return (*(v33 + 8 * *(v35 - 116)))(v37);
}

uint64_t sub_258585F70@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t (*a19)(void))
{
  *a2 = *(STACK[0xA48] + a1);
  a2[4] = *(STACK[0xA88] + v30);
  a2[8] = *(STACK[0xAC8] + v31);
  a2[12] = *(STACK[0xB08] + v28);
  a2[1] = *(STACK[0xA98] + v21);
  a2[5] = *(STACK[0xAD8] + v25);
  a2[9] = *(STACK[0xB18] + a4);
  a2[13] = *(STACK[0xA58] + a3);
  a2[2] = *(STACK[0xAE8] + v27);
  a2[10] = *(STACK[0xA68] + v29);
  a2[6] = *(STACK[0xB28] + v26);
  a2[14] = *(STACK[0xAA8] + v24);
  a2[15] = *(STACK[0xAF8] + v22);
  a2[11] = *(STACK[0xAB8] + v23);
  a2[7] = *(STACK[0xA78] + v20);
  a2[3] = *(STACK[0xB38] + v19);
  return a19();
}

uint64_t sub_258586040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16, uint64_t a17, uint64_t a18)
{
  v25 = 1520698633 * (&a15 ^ 0xABEE1885);
  a17 = v21;
  a15 = v25 + 86895560;
  a16 = v25 + v19 - 309;
  (*(v20 + 8 * (v19 ^ 0x740)))(&a15);
  a15 = v19 - ((2 * (&a15 & 0x7FECB300) - &a15 + 1264894) ^ 0x8BE51B5E) * v24 + 1630749825;
  a17 = v21;
  a18 = v18;
  (*(v20 + 8 * (v19 ^ 0x491)))(&a15);
  return (*(v20 + 8 * ((774 * ((((((v19 + 1997422809) & 0x88F1BDBA) + 212) | 0x12) ^ 0xE403FA65) + v23 - v22 < (((((v19 + 1997422809) & 0x88F1BDBA) - 304) | 0x124) ^ 0xFFFFFEE4))) ^ (v19 + 1997422809) & 0x88F1BDBA)))((v23 - v22), v26, v27, v28, v29, v30, v31, v32, a9);
}

uint64_t sub_25858615C@<X0>(uint64_t a1@<X3>, uint64_t a2@<X6>, unsigned int a3@<W8>)
{
  v7 = *(a2 + v4 + 16);
  v8 = (a1 + a3);
  *v8 = *(a2 + v4);
  v8[1] = v7;
  return (*(v6 + 8 * ((400 * (((v5 - 213) | 0x180u) - 1400 == (v3 & 0xFFFFFFFFFFFFFFE0))) ^ v5)))();
}

void sub_2585861AC(uint64_t a1)
{
  v1 = *(a1 + 16) - 1520698633 * ((-2 - ((a1 | 0xA8EFB458) + (~a1 | 0x57104BA7))) ^ 0xFCFE5322);
  v2 = *(a1 + 8);
  v3 = (*(v2 + 16) >> 3) & 0x3F;
  *(v2 + 24 + v3) = 0x80;
  __asm { BRAA            X12, X17 }
}

uint64_t sub_2585863AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  *(a3 + 8) = -1626731838;
  *a3 = 0xB0A4976000000014;
  v11 = a3 + 12;
  v12 = ((v9 + 1014) | 0x2A) ^ (v8 - 1045);
  v13 = (v12 - 1289577988) & 0x7A9D2977;
  v14 = a8 + v12 + 639;
  if (a1)
  {
    v15 = v11 == 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = !v15;
  return (*(v10 + 8 * ((v16 * (v13 - 284)) ^ v14)))(a1, 2070412790, v11);
}

uint64_t sub_2585864A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v20 = *(a18 + 96);
  if (v20 == 2)
  {
    return (*(v18 + 8 * (((8 * (((*(a18 + 92) == 0) ^ (v19 - 73)) & 1)) & 0xEF | (16 * (((*(a18 + 92) == 0) ^ (v19 - 73)) & 1))) ^ (v19 - 841))))(675807489, 44, 3619159807, 2943352312, 110, 4294967255);
  }

  if (v20 != 1)
  {
    JUMPOUT(0x2585865C4);
  }

  return (*(v18 + 8 * (((*(a18 + 92) != 0) * (((v19 - 906) | 0x41) + 671)) ^ (v19 - 841))))(4292050912, 110, 900, 2139745162, 2155222974, 2146024412);
}

uint64_t sub_258586644@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v2 + a1 + 16);
  v6 = v3 + a1;
  *(v6 + 24) = *(v2 + a1);
  *(v6 + 40) = v5;
  return (*(v4 + 8 * (((a1 != 32) * (v1 - 462)) ^ v1)))();
}

uint64_t sub_2585866EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = v8 - 1;
  *(v7 + v11) = *(a7 + v11);
  return (*(v10 + 8 * (((v11 == 0) * ((v9 - 216) ^ 0x1C0)) ^ (v9 + 181))))();
}

uint64_t sub_2585867C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v4[v3 ^ 0x32BLL];
  v4[227] = *v4 ^ v5 ^ *(a3 + 4 * (v7 & 1)) ^ ((v7 & 0x7FFFFFFE | v4[227] & 0x80000000) >> 1);
  return (*(v6 + 8 * (v3 - 389)))(571);
}

uint64_t sub_258586830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, int a10)
{
  v10 = a10 + 392383258 > v14;
  if (v14 < 0x17634ADA != (a10 + 392383258) < 0x17634ADA)
  {
    v10 = (a10 + 392383258) < 0x17634ADA;
  }

  return (*(v12 + 8 * ((!v10 * (a7 - 67)) ^ (v13 - 632))))();
}

uint64_t sub_25858683C@<X0>(uint64_t a1@<X6>, char a2@<W8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = (a2 ^ 0xBA) * (a2 + 17);
  return (*(v4 + 8 * (((8 * ((v3 ^ (v5 == 0)) & 1)) & 0xDF | (32 * ((v3 ^ (v5 == 0)) & 1))) ^ v3)))();
}

uint64_t sub_258586920(double a1, int8x16_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int32x4_t a15, int8x16_t a16, int8x16_t a17)
{
  v20 = vld1q_dup_f32(v19);
  v21.i64[0] = 0x8000000080000000;
  v21.i64[1] = 0x8000000080000000;
  a2.i64[0] = *(v19 + 4);
  a2.i32[2] = *(v19 + 4 * (v17 + 1476941429) - 3376);
  v22 = vextq_s8(v20, a2, 0xCuLL);
  v23 = a2;
  v23.i32[3] = *(v19 + 16);
  v24 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v23, a17), vandq_s8(v22, v21)), 1uLL), *(v19 + 1588));
  v22.i32[0] = *(v18 + 4 * (*(v19 + 4) & 1));
  v22.i32[1] = *(v18 + 4 * (*(v19 + 8) & 1));
  v22.i32[2] = *(v18 + 4 * (*(v19 + 4 * (v17 + 1476941429) - 3376) & 1));
  v22.i32[3] = *(v18 + 4 * (v23.i8[12] & 1));
  *v19 = veorq_s8(vaddq_s32(vsubq_s32(v24, vandq_s8(vaddq_s32(v24, v24), a16)), a15), v22);
  return (*(a4 + 8 * (v17 + 1476941009)))();
}

uint64_t sub_25858692C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  *(v14 + v17 - 1) = (&a14 ^ 0xBA) * (&a14 + 17);
  *(v14 + v17 - 2) = ((v15 + 33) ^ &a14) * (&a14 + 18);
  return (*(v16 + 8 * ((1377 * ((v14 & 0xFFFFFFFE) == 2)) ^ v15)))(a1, 186);
}

void sub_258586B38()
{
  v11 = *MEMORY[0x277D85DE8];
  v0 = *(&off_286999DF0 + (*(off_286999E20 + (*(off_28699A038 + (-119 * ((dword_27F948460 - dword_27F93D428) ^ 0x98)) - 4) ^ 0xF9u)) ^ (-119 * ((dword_27F948460 - dword_27F93D428) ^ 0x98))) - 8);
  v1 = -119 * (*v0 ^ dword_27F948460 ^ 0x98);
  v2 = *(&off_286999DF0 + (*(off_28699A010 + (*(off_28699A2E0 + v1 - 12) ^ 0x5Bu)) ^ v1) + 65);
  v3 = (*(v2 - 4) - *v0) ^ &v10;
  v4 = 1667229833 * v3 - 0x2761AC6306388868;
  v5 = 1667229833 * (v3 ^ 0xD89E539CF9C77798);
  *v0 = v4;
  *(v2 - 4) = v5;
  LOBYTE(v5) = -119 * ((v5 + *v0) ^ 0x98);
  v6 = off_28699A240 - 12;
  v7 = off_286999FC8 - 12;
  **(&off_286999DF0 + (*(off_286999FC8 + (*(off_28699A240 + v5 - 12) ^ 0x29u) - 12) ^ v5) + 78) = 95751194;
  v8 = *(&off_286999DF0 + ((-119 * ((dword_27F948460 - dword_27F93D428) ^ 0x98)) ^ byte_2585C7280[byte_2585D2020[(-119 * ((dword_27F948460 - dword_27F93D428) ^ 0x98))] ^ 0x52]) + 124);
  v9 = (*(v8 + 8 * (((-119 * ((*(v2 - 4) + *v0) ^ 0x98)) ^ v7[v6[(-119 * ((*(v2 - 4) + *v0) ^ 0x98))] ^ 0x52]) + 1537)))(512, 0x100004077774924);
  **(&off_286999DF0 + ((-119 * (*v0 ^ 0x98 ^ *(v2 - 4))) ^ v7[v6[(-119 * (*v0 ^ 0x98 ^ *(v2 - 4)))] ^ 0x84]) - 101) = v9;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_258586DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, unsigned int a34)
{
  v38 = *(&a22 + v34 + 72);
  v39 = ((2 * v34) & 0xFFF7FFE8) + (v34 ^ 0xFFFBFFF4) + 262156;
  *(a11 + v39) = v38 ^ 6;
  *(a11 + v39 + 1) = ((v35 - 28) & 0x3E ^ BYTE1(v38) ^ 0x3E) - 2 * (((v35 - 28) & 0x3E ^ BYTE1(v38) ^ 0x3E) & 0x1D ^ BYTE1(v38) & 1) - 100;
  *(a11 + v39 + 2) = (BYTE2(v38) ^ 0xD7) - ((2 * (BYTE2(v38) ^ 0xD7)) & 0x38) - 100;
  *(a11 + v39 + 3) = (HIBYTE(v38) ^ 0x6E) - ((2 * (HIBYTE(v38) ^ 0x6E)) & 0x38) - 100;
  return (*(v37 + 8 * (((v34 + 4 >= a34) * v36) ^ v35)))();
}

uint64_t sub_258586EE0@<X0>(uint64_t a1@<X8>)
{
  v6 = *(v1 + a1 + 40);
  v7 = v3 + a1;
  *(v7 + 24) = *(v1 + a1 + 24);
  *(v7 + 40) = v6;
  return (*(v5 + 8 * (((a1 == 32) * (v2 ^ v4)) ^ v2)))();
}

uint64_t sub_258587164@<X0>(uint64_t a1@<X8>)
{
  v5 = (v2 + 4 * v3);
  v7 = vld4_s8(v5);
  v8.val[0] = v7.val[3];
  v8.val[1] = v7.val[2];
  v8.val[2] = v7.val[1];
  v8.val[3] = v7.val[0];
  vst4_s8(v5, v8);
  return (*(a1 + 8 * (((v3 - (v1 & 0x1FFFFFFF8) == -8) * (v4 - 436)) ^ v4)))();
}

uint64_t sub_2585871DC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = (v6 + a1);
  v8 = v7[2];
  v9 = v7[3];
  v10 = *v7;
  v11 = v7[1];
  v12 = vrev32q_s8(v7[-3]);
  v13 = vrev32q_s8(v7[-4]);
  v14 = vrev32q_s8(v7[-1]);
  v7[-2] = vrev32q_s8(v7[-2]);
  v7[-1] = v14;
  v7[-4] = v13;
  v7[-3] = v12;
  v7[2] = vrev32q_s8(v8);
  v7[3] = vrev32q_s8(v9);
  *v7 = vrev32q_s8(v10);
  v7[1] = vrev32q_s8(v11);
  return (*(a3 + 8 * (((v5 + v4 == 0) * a2) ^ (v3 + 141))))();
}

uint64_t sub_258587244(uint64_t a1, int a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  if (a2 == 25)
  {
    return (*(v8 + 8 * ((779 * (*(a1 + 8) == ((a8 - 51) ^ 0x26))) ^ (a8 - 767541476))))();
  }

  if (a2 == 40)
  {
    *a3 = 20;
    JUMPOUT(0x2585863E0);
  }

  return sub_2585858C4(4294925273);
}

uint64_t sub_2585872C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, unsigned int a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, int a21, int a22, uint64_t a23)
{
  v28 = 827685407 * ((~&a16 & 0x79AEB363 | &a16 & 0x86514C9C) ^ 0x622C3133);
  a22 = v27 - v28 - 774;
  a23 = a11;
  a16 = ((a13 ^ 0x4DD5F7FF) - 1209029520 + (v26 & 0x9BABEFFE)) ^ v28;
  a17 = v25;
  a18 = (31 * ((~&a16 & 0x63 | &a16 & 0x9C) ^ 0x33)) ^ 0x36;
  a19 = v23;
  a20 = v25 + 36;
  (*(v24 + 8 * (v27 + 478)))(&a16);
  return (*(v24 + 8 * ((417 * (a21 == ((((v27 - 978) | 0x14A) + 175) ^ 0x5B50E84))) ^ v27)))(a14);
}

uint64_t sub_2585873CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  v17 = 3 * (v13 ^ 0x4C7);
  *(v15 - 16) = *v14 - ((2 * *v14) & 0x38) - 100;
  v18 = (v15 - 16);
  v18[1] = v14[1] - ((2 * v14[1]) & 0x38) - 100;
  v18[2] = v14[2] - ((v14[2] << ((3 * (v17 ^ 0x7C)) ^ 0x14)) & 0x38) - 100;
  v18[3] = v14[3] - ((2 * v14[3]) & 0x38) - 100;
  v18[4] = v14[4] - ((2 * v14[4]) & 0x38) - 100;
  v18[5] = v14[5] - ((2 * v14[5]) & 0x38) - 100;
  v18[6] = v14[6] - ((2 * v14[6]) & 0x38) - 100;
  v18[7] = v14[7] - ((2 * v14[7]) & 0x38) - 100;
  v18[8] = v14[8] - ((2 * v14[8]) & 0x38) - 100;
  v18[9] = v14[9] - ((2 * v14[9]) & 0x38) - 100;
  v18[10] = v14[10] - ((2 * v14[10]) & 0x38) - 100;
  v18[11] = v14[11] - ((2 * v14[11]) & 0x38) - 100;
  v18[12] = v14[12] - ((2 * v14[12]) & 0x38) - 100;
  v18[13] = v14[13] - ((2 * v14[13]) & 0x38) - 100;
  v18[14] = v14[14] - ((2 * v14[14]) & 0x38) - 100;
  v18[15] = v14[15] - ((2 * v14[15]) & 0x38) - 100;
  return (*(v16 + 8 * ((220 * (a13 + v17 - 139 < 17)) ^ v17)))((a13 + v17 - 139), a2, a3, a4, a5);
}

uint64_t sub_2585873F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, int a16, int a17, _DWORD *a18, _DWORD *a19, int *a20, unsigned int a21)
{
  v27 = 2072138273 * ((((2 * &a18) | 0xB3731620) - &a18 + 642151664) ^ 0x300C29F3);
  a18 = v24;
  LODWORD(a19) = v27 ^ 0x5FA4E147;
  HIDWORD(a19) = v27 + v23 - 54;
  (*(v22 + 8 * (v23 + 237)))(&a18);
  v28 = 439532179 * ((&a18 - 563781787 - 2 * (&a18 & 0xDE655F65)) ^ 0xC362E7);
  LODWORD(a18) = v28 + v23 - 38;
  HIDWORD(a18) = 752870518 - v28;
  a21 = v28 ^ 0xBC6B3AAD;
  a19 = v24;
  a20 = &a14;
  (*(v22 + 8 * (v23 ^ 0x2D7)))(&a18);
  v29 = v21[1];
  *v21 += a14;
  v21[1] = v29 + a15;
  v30 = v21[3];
  v21[2] += a16;
  v21[3] = v30 + a17;
  a18 = v21;
  a19 = v24;
  LODWORD(a20) = (v23 + 599970933) ^ (1021229753 * (&a18 ^ 0xBEEDBBEA));
  (*(v22 + 8 * (v23 ^ 0x128)))(&a18);
  return (*(v22 + 8 * (((((84 * (v23 ^ 0xC3) - 5) ^ ((v26 - v25 - 1799587231) < 0xFFFFFFC0)) & 1) * ((176 * ((84 * (v23 ^ 0x4C3)) ^ 0x1FB)) ^ 0x1E2)) ^ (84 * (v23 ^ 0x4C3)))))((v26 - v25), v31, v32, v33, v34, v35, v36, v37, a9, a10);
}

uint64_t sub_2585875C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, unsigned int a43)
{
  v49 = *(v44 + 8 * (v43 - 762));
  if (a34 == 2)
  {
    return sub_2585A7ED4(a1, a32, HIDWORD(a32), HIDWORD(a31), 50);
  }

  if (a34 != 1)
  {
    JUMPOUT(0x25857E83CLL);
  }

  v47 = &a22 + v45 + 539671251;
  LODWORD(v47) = (*v47 ^ 0x9C) & 0xFFFF00FF | ((((BYTE4(a20) + 10) | 0x45) ^ 0xC9 ^ v47[1]) << 8) | ((v47[2] ^ 0x9C) << 16) | ((v47[3] ^ 0x9C) << 24);
  a43 = v47 + v46 - ((2 * v47) & 0xFD6562BC);
  LODWORD(a20) = HIDWORD(a20) - 36;
  return (*(v44 + 8 * ((97 * ((v45 + 539671255) > 0x3F)) ^ (HIDWORD(a20) - 466))))(4294901760, a32, HIDWORD(a32), HIDWORD(a31), 50, &a22, HIDWORD(a20), 1744830464, a9, a10, &a34 + 4, a12, a13, a14, a15, a16, a17, v49, &a22, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34);
}

uint64_t sub_258587628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, __int16 a33, char a34)
{
  v37 = *(&a34 + (v35 - 13) % 0xD2u);
  v38 = *(&a34 + (v35 - 57) % ((v34 - 108) ^ 0x1A6u));
  v39 = *(&a34 + (v35 - 155) % 0xD2u);
  *(&a34 + v35 % 0xD2u) = ((v38 >> 3) | (32 * v38)) + (((v37 >> 5) | (8 * v37)) ^ *(&a34 + v35 % 0xD2u)) - ((v39 >> 1) | (v39 << 7));
  return (*(v36 + 8 * ((992 * (v35 != 839)) ^ v34)))();
}

uint64_t sub_2585876EC@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v6 = v4 + v2;
  *(v6 + 24) = a2;
  *(v6 + 40) = a2;
  return (*(v5 + 8 * (((8 * ((a1 ^ 0x401) + v2 != 64)) | (16 * ((a1 ^ 0x401) + v2 != 64))) ^ v3)))();
}

uint64_t sub_258587D78@<X0>(char a1@<W8>)
{
  v5 = v1 - 1;
  *(v3 + v5) = ((((v2 + 86) & 0xF7) + 83) ^ a1) * (a1 + 17);
  return (*(v4 + 8 * ((429 * (v5 == 0)) ^ v2)))();
}

uint64_t sub_258587E38@<X0>(uint64_t result@<X0>, char a2@<W8>)
{
  v5 = *(v2 + 4) - v4;
  v6 = *(v2 + 24) ^ v4;
  v7 = *v2 ^ v4;
  v8 = *(v2 + 8);
  v9 = *(v2 + 16);
  *(result + 4) = -115 * (*(v2 + 1) ^ v4) + 39;
  *(result + 5) = -33 - 65 * v7;
  *(result + 6) = v6 + ((a2 + 54) ^ 0x44);
  *(result + 7) = v5 ^ 0x42;
  *(result + 8) = 0;
  *v9 = result;
  *v8 = v3;
  return result;
}

uint64_t sub_258587EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  v15 = (((a13 + 44) | 0x418) ^ 0x446u) & *(v13 + 68);
  *(v13 + v15) = 28;
  return (*(v14 + 8 * ((976 * (v15 > 0x37)) ^ a13)))();
}

uint64_t sub_258588414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, unsigned int a34)
{
  v37 = *(&a22 + v34 + 72);
  v38 = ((2 * v34) & 0xAACFB9F8) + (v34 ^ 0x5567DCFF) - 1432870143;
  *(a11 + v38) = (HIBYTE(v37) ^ 0x6E) - (((HIBYTE(v37) ^ 0x6E) << ((3 * (v35 ^ 0xEA)) ^ 7)) & 0x38) - 100;
  *(a11 + v38 + 1) = (BYTE2(v37) ^ 0xD7) - ((2 * (BYTE2(v37) ^ 0xD7)) & 0x38) - 100;
  *(a11 + v38 + 2) = (BYTE1(v37) ^ 0x38) - 2 * ((BYTE1(v37) ^ 0x38) & 0x1F ^ BYTE1(v37) & 3) - 100;
  *(a11 + v38 + 3) = v37 ^ 6;
  return (*(v36 + 8 * ((1531 * (v34 + 4 < a34)) ^ v35)))();
}

void sub_258588540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, _BYTE *a49, uint64_t a50)
{
  v57 = v50 - v53 + 69 * a49[4] + 111;
  v58 = 63 * a49[5] + 31;
  v59 = 1380645169 * ((v56 - 168) ^ 0x82C50850);
  *(v56 - 144) = (a49[6] + 29) ^ (49 * ((v56 + 88) ^ 0x50));
  *(v56 - 168) = v58 ^ (49 * ((v56 + 88) ^ 0x50));
  *(v56 - 160) = v54;
  *(v56 - 152) = a50;
  *(v56 - 140) = v59 + v50 + 1115;
  *(v56 - 164) = (v51 ^ ((v51 ^ 0x5EE2347A) - 1532442720) ^ ((v51 ^ 0xDFA9D00E) + 635642860) ^ ((v51 ^ 0x7B490791) - 2130447243) ^ ((v51 ^ 0xFFB7EFFF) + 100473883) ^ 0xC4CC7158) + v59;
  *(v56 - 167) = v57 ^ (49 * ((v56 + 88) ^ 0x50));
  (*(v55 + 8 * (v50 + 1210)))(v56 - 168);
  *v52 = -1;
  JUMPOUT(0x258577C6CLL);
}

uint64_t sub_2585886A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, _BYTE *a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  *a43 = (v47 - ((v47 << (((5 * (v48 ^ 0x24)) ^ 0x7C) + ((2 * v48) ^ 0xF4))) & 0xAA) + 85) ^ 0x55;
  v52 = 2021301169 * (v46 ^ 0x8BF657A0);
  *(v51 - 168) = a43;
  *(v51 - 160) = v49;
  *(v51 - 152) = v52 + 469501789;
  *(v51 - 148) = (v48 + 439) ^ v52;
  (*(v50 + 8 * (v48 + 1295)))(v51 - 168);
  *(v51 - 152) = v48 + 1520698633 * (((v46 | 0xD9CA133) + (~v46 | 0xF2635ECC)) ^ 0xA672B9B7) + 602;
  *(v51 - 168) = a46 + 16 * v47;
  *(v51 - 160) = v49;
  v53 = (*(v50 + 8 * (v48 | 0x520)))(v51 - 168);
  return (*(v50 + 8 * (v48 ^ (37 * (v47 != 8)))))(v53);
}

uint64_t sub_2585887A8@<X0>(uint64_t a1@<X8>)
{
  v4 = *v2;
  *v2 = v2[3];
  v2[3] = v4;
  v5 = v2[1];
  v2[1] = v2[2];
  v2[2] = v5;
  return (*(a1 + 8 * ((50 * (((v3 - 1321605389) & 0x4EC61CFF ^ 0xFFFFFB70) + v1 == 1604641079)) ^ v3)))();
}

uint64_t sub_25858885C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v31 = *(a4 + 96) - ((2 * *(a4 + 96)) & 0x1CDE375C) + 242162606;
  v32 = 1021229753 * ((976912778 - ((v30 - 136) | 0x3A3A818A) + ((v30 - 136) | 0xC5C57E75)) ^ 0x7B28C59F);
  *(v30 - 128) = a4;
  *(v30 - 136) = v32 + a15;
  *(v30 - 132) = v31 ^ v32;
  v33 = (*(v28 + 8 * a14))(v30 - 136);
  return (*(v28 + 8 * ((((*(a28 + 68) & a19) >= 0xFFFFFFC0) * (a20 - 475)) ^ (v29 + 296))))(v33);
}

void sub_258588990(uint64_t a1)
{
  v1 = *(a1 + 16) ^ (344723623 * ((2 * (a1 & 0x4945471D) - a1 - 1229276958) ^ 0x4119D52B));
  v2 = *(a1 + 8);
  v3 = *(&off_286999DF0 + (v1 ^ 0xDC));
  v4 = *(v2 + 68);
  *(v2 + (v4 & 0x3F)) = 28;
  __asm { BRAA            X12, X17 }
}

uint64_t sub_258588BB0(uint64_t a1)
{
  v7 = *(v1 + 40);
  v11 = v10;
  v13 = ((((&v11 | 0x65B9) - &v11 + (&v11 & 0x9A40)) ^ 0x583B) * v3) ^ 0xE43;
  v12 = (v5 + 996) ^ ((((&v11 | 0xD27965B9) - &v11 + (&v11 & 0x2D869A40)) ^ 0xCDF583B) * v3);
  result = (*(v4 + 8 * (v5 ^ 0x779)))(&v11);
  v2[130] = v10[3] % (3 * (v5 ^ 0x66) - 1);
  *(a1 + 3) = 16843609;
  *(a1 + 2) = 76;
  *a1 = 20550;
  *(a1 + 7) = 0;
  *(a1 + 8) = 0x4000000;
  *(a1 + 12) = 2;
  *(a1 + 14) = v2[130] & 3;
  *(a1 + 15) = -69;
  v2[1] = 2;
  v2[131] = 0;
  *v7 = a1;
  v9 = *(v1 + 8);
  **v1 = 16;
  *v9 = 1;
  *(v1 + 16) = 95751194;
  return result;
}

uint64_t sub_258588DDC(uint64_t a1)
{
  v8 = (v7 - 128);
  v9 = *(a1 + 24) + 56 * **(a1 + 24) + 24;
  v10 = v7 - 128;
  v11 = 1520698633 * ((2 * ((v7 - 128) & 0x6D18A098) - (v7 - 128) - 1830330526) ^ 0x390947E7);
  v8[2] = v15;
  *(v7 - 116) = 1289 * ((2 * ((v7 - 128) & 0xA098) - (v7 - 128) + 24418) ^ 0x47E7) + 15530;
  *(v7 - 120) = v2 - v11 + 74;
  *v8 = v9;
  *(v7 - 104) = v11 ^ 0x720F99FC;
  (*(v3 + 8 * (v2 + 863)))(v7 - 128);
  v12 = 1380645169 * ((867066963 - (v10 | 0x33AE6453) + (v10 | 0xCC519BAC)) ^ 0x4E9493FC);
  *(v7 - 120) = v15;
  *(v7 - 112) = v6;
  *(v7 - 128) = v12 ^ 0x3875D982;
  *(v7 - 124) = v2 + 245 + v12;
  (*(v3 + 8 * (v2 + 775)))(v7 - 128);
  v13 = 1380645169 * ((((2 * (v10 ^ 0x4496E6DA)) | 0xB1B1B01C) - (v10 ^ 0x4496E6DA) - 1490606094) ^ 0x9E8B3684);
  *(v7 - 120) = v15;
  *(v7 - 112) = v4;
  *(v7 - 128) = (((3 * (v2 ^ 0x32D)) ^ 0x2E4CA20C) + v5) ^ v13;
  *(v7 - 124) = v2 + 245 + v13;
  (*(v3 + 8 * (v2 ^ 0x77F)))(v7 - 128);
  *v8 = v1;
  *(v7 - 120) = v15;
  *(v7 - 112) = (v2 - 607) ^ (344723623 * ((((2 * (v7 - 128)) | 0xDBF2961E) - (v7 - 128) - 1845054223) ^ 0x9A5A26C6));
  return (*(v3 + 8 * (v2 ^ 0x4FF)))(v7 - 128);
}

uint64_t sub_258589700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  v35 = v32[1];
  v36 = v32[398] ^ ((v32[2] & 0x7FFFFFFE | v35 & 0x80000000) >> 1) ^ *(&a32 + (v32[2] & 1));
  *v32 = v32[(v33 - 254) ^ 0x5A8] ^ ((v35 & 0x7FFFFFFE | *v32 & 0x80000000) >> 1) ^ *(&a32 + (v35 & 1));
  v32[1] = v36;
  return (*(v34 + 8 * (v33 - 279)))();
}

uint64_t sub_258589708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, int a14, int a15, _DWORD *a16, uint64_t a17, int *a18, unsigned int a19)
{
  v25 = 1021229753 * ((2 * (&a16 & 0x15318840) - &a16 - 355567684) ^ 0x5423CC56);
  a17 = v23;
  LODWORD(a16) = v25 + 1369827689;
  HIDWORD(a16) = v25 + v24 + 340;
  (*(v20 + 8 * (v24 ^ 0x7BB)))(&a16);
  LODWORD(a18) = (v24 - 546253499) ^ (1380645169 * (((&a16 ^ 0xB4F897A4 | 0xD3C0B1E4) - (&a16 ^ 0xB4F897A4) + ((&a16 ^ 0xB4F897A4) & 0x2C3F4E18)) ^ 0xE5FD2E10));
  a16 = v19;
  a17 = v23;
  (*(v20 + 8 * (v24 + 1107)))(&a16);
  v26 = 439532179 * (((&a16 | 0x3389E23E) - &a16 + (&a16 & 0xCC761DC0)) ^ 0xED2FDFBC);
  a19 = v26 ^ 0xBC6B3AAD;
  LODWORD(a16) = v26 + v24 + 744;
  HIDWORD(a16) = 752870518 - v26;
  a17 = v23;
  a18 = &a12;
  v27 = (*(v20 + 8 * (v24 ^ 0x7A5)))(&a16);
  v28 = v19[1];
  *v19 += a12;
  v19[1] = v28 + a13;
  v29 = v19[3];
  v19[2] += a14;
  v19[3] = v29 + a15;
  return (*(v20 + 8 * ((161 * (v22 - v21 - 1792465285 < ((4 * (v24 ^ 0x1FD) - 12) ^ 0xFFFFFEDC))) ^ (4 * (v24 ^ 0x1FD)))))(v27);
}

uint64_t sub_2585899A0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v515 = v6;
  v8 = *(v7 - 220) + 439;
  *(v7 - 140) = v8 ^ 0x4CB;
  v9 = 48 * (v8 ^ 0x4CB);
  *(v7 - 132) = v9;
  v10 = *(&off_286999DF0 + (v8 ^ 0x450u));
  v11 = *(v10 + ((*(v7 - 112) - ((v9 ^ 0xE0) & (2 * *(v7 - 112)) & 0xF0u) + 16) ^ 0xDLL));
  v12 = (v11 ^ (((2 * v11) ^ 0x36) + 124) ^ 0xFC) << 24;
  v13 = *(&off_286999DF0 + v8 - 1142);
  v14 = *(v13 + (*(v7 - 111) ^ 0xDDLL));
  *(v7 - 136) = v5;
  HIDWORD(v15) = ~v14;
  LODWORD(v15) = (v14 ^ 0xFFFFFF9F) << 24;
  LOBYTE(v14) = v15 >> 27;
  v16 = *(&off_286999DF0 + (v8 ^ 0x49Eu)) - 4;
  v17 = *(&off_286999DF0 + (v8 ^ 0x4F1u));
  v18 = *(v17 + (*(v7 - 109) ^ 0xA0)) ^ 0x94;
  v19 = (((v16[*(v7 - 110) ^ 0x46] << 8) ^ 0x232AB4C4) & (v12 ^ 0x32AFFC4) | v12 & 0xDC000000) ^ 0x1C402010;
  v20 = *(v10 + (*(v7 - 108) ^ 0x59));
  v21 = *(v13 + (*(v7 - 107) ^ 0x53));
  HIDWORD(v15) = ~v21;
  LODWORD(v15) = (v21 ^ 0xFFFFFF9F) << 24;
  v22 = v15 >> 27;
  *(v7 - 148) = v20 ^ (((2 * v20) ^ 0x36) + 124);
  LOBYTE(v20) = *(v17 + (*(v7 - 105) ^ 0xDCLL)) ^ 0x94;
  v23 = v20 ^ (16 * v20 * v20);
  v24 = *(v10 + (*(v7 - 104) ^ 0x2DLL));
  v25 = *(v13 + (*(v7 - 103) ^ 0xABLL));
  HIDWORD(v15) = ~v25;
  LODWORD(v15) = (v25 ^ 0xFFFFFF9F) << 24;
  LOBYTE(v25) = v15 >> 27;
  v26 = *(v17 + (*(v7 - 101) ^ 0xELL)) ^ 0x94;
  v27 = *(v10 + (*(v7 - 100) ^ 0xFDLL));
  LOBYTE(v10) = v26 ^ (16 * v26 * v26);
  v28 = ((((2 * v24) ^ 0x36) + 124) ^ v24) << 24;
  v29 = ((v28 ^ 0x8092FFE7) & ((v16[*(v7 - 102) ^ 0x44] << 8) ^ 0x899640E7) | v28 & 0x76000000) ^ 0x70282410;
  LODWORD(v13) = *(v13 + (*(v7 - 99) ^ 0xC8));
  HIDWORD(v15) = ~v13;
  LODWORD(v15) = (v13 ^ 0xFFFFFF9F) << 24;
  v30 = v16[*(v7 - 106) ^ 0x9BLL];
  v31 = ((v28 ^ 0xE7) & 0xE7 ^ 0xFB) & ~v10 | v10 & 0xE3;
  LOBYTE(v28) = *(v17 + (*(v7 - 97) ^ 0xE2));
  v32 = v28 ^ 0x94 ^ (16 * (v28 ^ 0x94) * (v28 ^ 0x94));
  v33 = (v27 ^ 0xF4 ^ (((2 * v27) ^ 0x36) + 124)) - ((2 * (v27 ^ 0xF4 ^ (((2 * v27) ^ 0x36) + 124))) & 0x1B4);
  v34 = *(&off_286999DF0 + v8 - 1199) - 4;
  v35 = *&v34[4 * (v16[*(v7 - 98) ^ 0x61] ^ 0xA5)];
  v36 = v35 ^ (1051250462 - v35 - ((-2 * v35) & 0x7D519E3C)) ^ 0x3EA8CF1E ^ ((-v35 ^ (1499738856 - (v35 ^ 0x596432E8)) ^ 0x3919999E ^ (v35 - ((2 * v35) & 0x8DCCCCC2) - 957979039)) + 1);
  LODWORD(v16) = v36 + 1499738856;
  v37 = *(&off_286999DF0 + (v8 ^ 0x492u)) - 4;
  v38 = 16 * v36 + 1310644912;
  LOBYTE(v17) = v37[v32 ^ 0x6CLL] ^ v32;
  v39 = *(&off_286999DF0 + v8 - 1179) - 12;
  v40 = *(&off_286999DF0 + v8 - 1194) - 8;
  v41 = (v33 + 218) ^ *&v39[4 * ((v15 >> 27) ^ 0x81)] ^ *&v40[4 * ((v33 + 218) ^ 0xB)] ^ v16 ^ v17 ^ v38;
  v42 = HIBYTE(v19) ^ *&v39[4 * (v14 ^ 0x38)] ^ *&v40[4 * (HIBYTE(v19) ^ 0xD1)];
  v43 = *&v34[4 * (BYTE1(v19) ^ 0x4F)];
  v44 = *(&off_286999DF0 + v8 - 1123) - 4;
  v45 = *(&off_286999DF0 + (v8 ^ 0x4D0u)) - 8;
  v46 = *(&off_286999DF0 + v8 - 1182) - 4;
  v47 = *(&off_286999DF0 + (v8 ^ 0x4DFu)) - 12;
  v514 = v42 ^ v43 ^ (v37[(v18 ^ (16 * v18 * v18)) ^ 0x1BLL] ^ v18 ^ (16 * v18 * v18)) ^ (((16 * v43) ^ 0x96432E80) - 1210340304) ^ 0xB403696F;
  v48 = *&v45[4 * ((((((v41 ^ 0x7EF850C5) >> (v23 & 0x10)) - ((2 * ((v41 ^ 0x7EF850C5) >> (v23 & 0x10))) & 0xCC0C2CEC) - 435808650) ^ 0xE6061676) >> (v23 & 0x10 ^ 0x10)) ^ 0x65)] ^ __ROR4__(*&v46[4 * (BYTE1(v41) ^ 0x59)], 7) ^ *&v47[4 * (v41 ^ 0x84)] ^ v514 ^ ((HIBYTE(v41) ^ 0x63) - 31) ^ v44[HIBYTE(v41) ^ 0xCCLL] ^ 0xB8A3D8F7;
  LODWORD(v30) = *(v7 - 148) ^ 0xE ^ *&v34[4 * (v30 ^ 0x18)] ^ *&v39[4 * (v22 ^ 0x8B)] ^ *&v40[4 * (*(v7 - 148) ^ 0xC8)] ^ (((16 * *&v34[4 * (v30 ^ 0x18)]) ^ 0x96432E80) - 1210340304) ^ 0xBC818D2F;
  v49 = HIBYTE(v29);
  LODWORD(v40) = *&v40[4 * (HIBYTE(v29) ^ 0x3F)];
  LODWORD(v39) = *&v39[4 * (v25 ^ 7)];
  v50 = *&v34[4 * (-(BYTE1(v29) ^ 0x4E) ^ (85 - (BYTE1(v29) ^ 0x1B)) ^ 0x8FF224E2 ^ ((BYTE1(v29) ^ 0x4E) - 2 * ((BYTE1(v29) ^ 0x4E) & 0xFFFFFFF3 ^ (v29 >> 8) & 0x11) - 1879956254)) + 340];
  v51 = v30 ^ (v37[v23 ^ 0x4DLL] ^ v23);
  v52 = v40 ^ v49 ^ v39 ^ v50 ^ (v37[v10 ^ 0x6ELL] ^ v31) ^ (((16 * v50) ^ 0x96432E80) - 1210340304);
  *(v7 - 176) = v52;
  v513 = v51;
  *(v7 - 144) = v48;
  v53 = v51 ^ v48;
  *(v7 - 172) = v53;
  v54 = v53 ^ 0x2286A94;
  LODWORD(v30) = v53 ^ 0x2286A94 ^ v52 ^ 0x789B99ED;
  LODWORD(v34) = v30 ^ v41;
  *(v7 - 152) = v30;
  v55 = v48 ^ *&v45[4 * (BYTE2(v34) ^ 0xE)] ^ __ROR4__(*&v46[4 * (BYTE1(v34) ^ 0x11)], 7) ^ *&v47[4 * ((v30 ^ v41) ^ 0x96)] ^ ((((v34 ^ 0x106B18D7) >> 24) ^ 0x1D) - 31) ^ v44[((v34 ^ 0x106B18D7) >> 24) ^ 0xB2];
  v56 = v55 ^ 0x1F9A7C3B ^ v54;
  *(v7 - 180) = v56;
  v56 ^= 0x2A4C8ABu;
  v57 = v30 ^ __ROR4__(__ROR4__(v56, 10) ^ 0x873819CA, 22);
  LODWORD(v39) = v57 ^ 0x36C5B19 ^ v30 ^ v41 ^ 0x655BE89;
  v58 = *&v45[4 * (BYTE2(v39) ^ 0x48)];
  v512 = v55;
  v510 = *&v47[4 * (v57 ^ 0x19 ^ (v30 ^ v41) ^ 0x89 ^ 0xDF)] ^ __ROR4__(*&v46[4 * (BYTE1(v39) ^ 0x2E)], 7) ^ ((BYTE3(v39) ^ 0x49) - 31) ^ v44[(v39 >> 24) ^ 0xE6] ^ ((-(v58 ^ 0x10D0D1FD) ^ ((v55 ^ 0x3B0B2064) - (v58 ^ v55 ^ 0x2BDBF199)) ^ 0x45301BD4 ^ ((v58 ^ 0x10D0D1FD) - ((2 * (v58 ^ 0x10D0D1FD)) & 0x8A6037A8) + 1160780756)) + (v55 ^ 0x3B0B2064));
  v511 = v39;
  v59 = v510 ^ 0xEEF1FBF3 ^ v56;
  v60 = v59 ^ 0xA266499B;
  v61 = v59 ^ 0xA266499B ^ v30 ^ v41 ^ 0x655BE89;
  LODWORD(v40) = *&v45[4 * (BYTE2(v61) ^ 0x18)] ^ __ROR4__(*&v46[4 * (BYTE1(v61) ^ 0x47)], 7);
  LOBYTE(v58) = v44[HIBYTE(v61) ^ 0x22];
  *(v7 - 148) = v61 ^ 0x690A9359;
  v62 = v40 ^ *&v47[4 * (v59 ^ 0x9B ^ (v30 ^ v41) ^ 0x89 ^ 0x1C)] ^ v510 ^ 0xEEF1FBF3 ^ (((HIBYTE(v61) ^ 0x8D) - 31) & 0x55 | (30 - (HIBYTE(v61) ^ 0x8D)) & (v58 ^ 0x59)) ^ ((HIBYTE(v61) ^ 0x8D) - 31) & (v58 ^ 0xF3);
  LODWORD(v39) = v62 ^ 0x6E76103 ^ v57 ^ 0x36C5B19;
  LODWORD(v40) = *&v47[4 * (v39 ^ v61 ^ 0x59 ^ 0xA8)];
  v508 = v39;
  v509 = v59;
  v63 = *&v45[4 * (((v39 ^ v61 ^ 0x690A9359) >> 16) ^ 0xC6)] ^ __ROR4__(*&v46[4 * (((v39 ^ v61 ^ 0x9359) >> 8) ^ 0xB4)], 7) ^ v62 ^ 0x6E76103 ^ (((v39 ^ v61 ^ 0x690A9359) >> 24) - 31) ^ v44[((v39 ^ v61 ^ 0x690A9359) >> 24) ^ 0xAFLL] ^ ((((v40 ^ 0x1D9E701C) - (v40 ^ 0x73A9F64B)) ^ 0xFFFFFFFE) + (v40 ^ 0x1D9E701C));
  v506 = v59 ^ 0x444116BB ^ v62 ^ 0x6E76103;
  v507 = v39 ^ v61 ^ 0x690A9359;
  v64 = v507 ^ 0x62DA342D;
  v65 = v63 ^ v506 ^ v39;
  v503 = v507 ^ 0xCF050AD7 ^ v65;
  v504 = v63 ^ v506;
  v505 = v63 ^ 0xFF3F8748;
  LODWORD(v40) = *&v45[4 * (BYTE2(v503) ^ 0x54)] ^ __ROR4__(*&v46[4 * (BYTE1(v503) ^ 6)], 7) ^ *&v47[4 * (v503 ^ 0xC2)] ^ v63 ^ 0xFF3F8748 ^ ((HIBYTE(v503) ^ 0x51) - 31) ^ v44[HIBYTE(v503) ^ 0xFELL] ^ 0x11330DB2;
  v66 = v63 ^ v506 ^ 0x3822129C ^ v40;
  *(v7 - 156) = v40;
  LODWORD(v10) = *&v45[4 * (((v66 ^ v64) >> 16) ^ 0x1F)] ^ __ROR4__(*&v46[4 * (((v66 ^ v507 ^ 0x342D) >> 8) ^ 0xD7)], 7) ^ *&v47[4 * ((v66 ^ v64) ^ 0xD5)] ^ v40 ^ ((((v66 ^ v64) >> 24) ^ 0xDC) - 31) ^ v44[((v66 ^ v64) >> 24) ^ 0x73] ^ 0x46798FE5;
  v67 = v10 ^ v66 ^ 0xC7E3033D;
  v501 = v66;
  v502 = v65 ^ 0xF35ED129;
  LODWORD(v17) = v66 ^ v65 ^ 0xF35ED129;
  HIDWORD(v500) = v66 ^ v507 ^ 0x62DA342D ^ 0xC85AA0E9;
  LODWORD(v499) = v67 ^ v17;
  HIDWORD(v499) = v10 ^ v66;
  v68 = v67 ^ v17 ^ HIDWORD(v500);
  LODWORD(v30) = *&v45[4 * (BYTE2(v68) ^ 0xFA)] ^ __ROR4__(*&v46[4 * (BYTE1(v68) ^ 0x96)], 7) ^ *&v47[4 * ((v67 ^ v17 ^ BYTE4(v500)) ^ 0xD4)] ^ 0x7C71F1F0 ^ (-(v44[HIBYTE(v68) ^ 0x63] ^ ((HIBYTE(v68) ^ 0xCC) - 31) ^ 0xF3) - 1471447297);
  LODWORD(v500) = v10;
  LODWORD(v30) = (v30 - ((2 * v30) & 0xE6640AF2) - 214825607) ^ v10;
  LODWORD(v37) = ((v30 ^ 0x7801AA25) - ((2 * (v30 ^ 0x7801AA25)) & 0x16A0D744) - 1957663838) ^ v67;
  *(v7 - 228) = v37;
  LODWORD(v40) = ((v30 ^ 0x7801AA25) - 2 * ((v30 ^ 0x7801AA25) & 0x20EE203B ^ v30 & 8) + 552476723) ^ v17;
  HIDWORD(v498) = v68;
  v69 = (v40 - ((2 * v40) & 0x48134716) - 1542872181) ^ v68;
  v70 = v69 ^ 0x13840EC7;
  v71 = v69 ^ 0x39A01030;
  v72 = *&v46[4 * (((v69 ^ 0xEC7) >> 8) ^ 0x17)];
  HIDWORD(v15) = v72 ^ 0x1F;
  LODWORD(v15) = v72 ^ 0x69D04500;
  v73 = ((v15 >> 7) - ((2 * (v15 >> 7)) & 0xEEEEBF32) - 143171687) ^ *&v45[4 * (BYTE2(v70) ^ 0x41)];
  LODWORD(v498) = v30 ^ 0x7801AA25;
  LODWORD(v497) = (v73 - ((2 * v73) & 0x3B3CE038) + 496922652) ^ *&v47[4 * (v70 ^ 0xB6)] ^ v30 ^ 0x7801AA25 ^ ((HIBYTE(v70) ^ 0x37) - ((2 * (HIBYTE(v70) ^ 0x37) + 66) & 0x5E) - 112) ^ v44[HIBYTE(v70) ^ 0x98];
  *(v7 - 160) = v497 ^ 0x798390CF;
  LODWORD(v496) = v497 ^ 0x798390CF ^ v37;
  HIDWORD(v496) = v40 ^ 0x47362C2E;
  LODWORD(v30) = v496 ^ v40 ^ 0x47362C2E;
  *(v7 - 232) = v30;
  HIDWORD(v497) = v71;
  v74 = v30 ^ v71;
  LODWORD(v30) = *&v45[4 * (((v30 ^ v71) >> 16) ^ 0x77)];
  *(v7 - 164) = v74 ^ 0xBD1232D9;
  v75 = *&v46[4 * (((v74 ^ 0x32D9) >> 8) ^ 9)];
  HIDWORD(v15) = v75 ^ 0x1F;
  LODWORD(v15) = v75 ^ 0x69D04500;
  LODWORD(v30) = ((v15 >> 7) - ((2 * (v15 >> 7)) & 0xEEEEBF32) - 143171687) ^ v30;
  *(v7 - 168) = v44[((v74 ^ 0xBD1232D9) >> 24) ^ 0xB2] ^ ((((v74 ^ 0xBD1232D9) >> 24) ^ 0x1D) - ((2 * (((v74 ^ 0xBD1232D9) >> 24) ^ 0x1D) + 66) & 0x5E) - 112) ^ 0x5C ^ (v30 - ((2 * v30) & 0x3B3CE038) + 496922652) ^ *&v47[4 * (v74 ^ 0x98)];
  LODWORD(v495) = *(v7 - 172) ^ 0x9271653F;
  HIDWORD(v495) = *(v7 - 176) ^ 0xD9A8E754;
  v76 = v495 + HIDWORD(v495) - 1864625041;
  v77 = v495 + HIDWORD(v495) - 645243742;
  *(v7 - 176) = v76 - ((2 * v77) & 0xC2E20A78) - 1440789137;
  *(v7 - 172) = v76;
  v78 = v17 ^ 0xD1183EBF;
  LODWORD(v494) = *(v7 - 180) ^ 0x579ADC62;
  HIDWORD(v494) = (((v34 ^ 0x106B18D7) - (v34 ^ 0xCFF07792)) ^ 0xFFFFFFFE) + (v34 ^ 0x106B18D7);
  v79 = v77 - HIDWORD(v494) - (v74 ^ 0x8A47D29A);
  LODWORD(v493) = v57 ^ 0xEA86ED8B ^ v60;
  HIDWORD(v493) = v78;
  v80 = v79 + v494 + v78;
  HIDWORD(v492) = v41 ^ 0xBBB2B9A5;
  v81 = v80 + (v41 ^ 0xBBB2B9A5) + v493;
  *(v7 - 184) = v80 - 671699050;
  *(v7 - 188) = v80 - 671699050 + (v62 ^ 0x6CCA18D4) - 2 * ((v80 - 671699050) & (v62 ^ 0x6CCA18D4));
  *(v7 - 236) = v81 - 1136388552;
  LODWORD(v492) = v57 ^ 0xD17DA516;
  *(v7 - 240) = v81 - (v57 ^ 0xD17DA516) + 29877775;
  v82 = v77 - HIDWORD(v494) - 1013030001;
  v83 = v77 - HIDWORD(v494) - 347766256;
  if (v82 >= 0xD858E17F)
  {
    v84 = -665263745;
  }

  else
  {
    v83 = v77 - HIDWORD(v494) - 1013030001;
    v84 = 0;
  }

  *(v7 - 180) = v84;
  v85 = v83 == 0;
  v86 = *(v7 - 118) ^ 0xC9;
  v87 = *(&off_286999DF0 + *(v7 - 140)) - 12;
  *(v7 - 140) = (*(v7 - 124) ^ 0x4758B7B) - (*(v7 - 124) ^ 0xE8) - 2096493646 + *&v87[4 * (*(v7 - 124) ^ 0x6DLL)];
  v88 = *(&off_286999DF0 + v8 - 1175) - 8;
  v89 = *&v88[4 * (*(v7 - 127) ^ 0x46)];
  HIDWORD(v91) = v89 ^ 0x66E0C;
  LODWORD(v91) = v89 ^ 0xE0000000;
  v90 = v91 >> 23;
  v92 = *&v88[4 * (*(v7 - 119) ^ 0x3CLL)];
  HIDWORD(v91) = v92 ^ 0x66E0C;
  LODWORD(v91) = v92 ^ 0xE0000000;
  v93 = v91 >> 23;
  v94 = (*(v7 - 116) ^ 0x4758B78) + (*(v7 - 116) ^ 0xFFFFFF14) - 2096493646 + *&v87[4 * (*(v7 - 116) ^ 0x6ELL)];
  v95 = *&v88[4 * (*(v7 - 123) ^ 0xB8)];
  HIDWORD(v91) = v95 ^ 0x66E0C;
  LODWORD(v91) = v95 ^ 0xE0000000;
  v96 = v91 >> 23;
  v97 = *(&off_286999DF0 + v8 - 1180);
  LOBYTE(v95) = *(v97 + (*(v7 - 125) ^ 0xFDLL)) ^ 0xA0;
  v98 = v95 ^ (4 * v95 * v95);
  LOBYTE(v95) = *(v97 + (*(v7 - 113) ^ 0x37)) ^ 0xA0;
  v99 = v95 ^ (4 * v95 * v95);
  v490 = v88;
  v491 = v87;
  v100 = *&v88[4 * (*(v7 - 115) ^ 0xA8)];
  HIDWORD(v91) = v100 ^ 0x66E0C;
  LODWORD(v91) = v100 ^ 0xE0000000;
  v101 = v91 >> 23;
  v102 = *(v97 + (*(v7 - 117) ^ 7));
  v103 = v102 ^ (4 * (v102 ^ 0xA0) * (v102 ^ 0xA0));
  v104 = *(&off_286999DF0 + v8 - 1110) - 12;
  v105 = *&v104[4 * (*(v7 - 114) ^ 0xB4)];
  v489 = v97;
  v106 = v79 - 164461510;
  v107 = v79 - 1965116469;
  HIDWORD(v487) = ((v79 - 1965116469) ^ (1965116469 - v79) ^ (1800654959 - ((v79 - 1965116469) ^ 0x6B53D06F))) + 1800654959;
  v108 = (809723981 * *&v104[4 * v86]) ^ ((809723981 * *&v104[4 * v86]) >> 5) ^ ((809723981 * *&v104[4 * v86]) >> 1) ^ ((*(v7 - 120) ^ 0x4758BF8) - (*(v7 - 120) ^ 0x6B) - 2096493646 + *&v87[4 * (*(v7 - 120) ^ 0xEELL)]) ^ v93 ^ v103 ^ 0x57F8D133;
  LODWORD(v487) = v77 ^ 0xA5ED99F2;
  v109 = 809723981 * *&v104[4 * (*(v7 - 126) ^ 0xB3)];
  v110 = v90 ^ v109 ^ (v109 >> 1) ^ (v109 >> 5) ^ v98 ^ (*&v87[4 * (*(v7 - 128) ^ 0x80)] - (*(v7 - 128) ^ 5) + (*(v7 - 128) ^ 0x4758B96) - 2096493646) ^ 0x28D542C5;
  v488 = v104;
  v111 = *(v7 - 140) ^ v96 ^ (809723981 * *&v104[4 * (*(v7 - 122) ^ 0xD2)]) ^ ((809723981 * *&v104[4 * (*(v7 - 122) ^ 0xD2)]) >> 1) ^ ((809723981 * *&v104[4 * (*(v7 - 122) ^ 0xD2)]) >> 5) ^ (*(v97 + (*(v7 - 121) ^ 0x93)) ^ (4 * (*(v97 + (*(v7 - 121) ^ 0x93)) ^ 0xA0) * (*(v97 + (*(v7 - 121) ^ 0x93)) ^ 0xA0))) ^ 0x7CAE6F6D;
  HIDWORD(v91) = ((-1590427648 * v105) & 0xFF800000 | ((809723981 * v105) >> 14)) ^ ((322961408 * v105) | ((809723981 * v105) >> 10)) ^ 0x342A4655;
  LODWORD(v91) = HIDWORD(v91);
  v112 = (v94 + 1) ^ v101 ^ (809723981 * v105) ^ v99 ^ ((v91 >> 22) >> 1) ^ 0x525A7A88;
  *(v7 - 136) = (((*(v7 - 136) ^ 0x2B40CA0A) + 798056145) ^ ((*(v7 - 136) ^ 0x55B22DAE) + 1365490037) ^ ((*(v7 - 136) ^ 0x6FDE1FDC) + 1796180743)) - 431262231;
  HIDWORD(v486) = v107 ^ *(v7 - 152);
  LODWORD(v486) = *(v7 - 188) ^ *(v7 - 184);
  HIDWORD(v485) = *(v7 - 156) ^ *(v7 - 176);
  v113 = *(v7 - 180);
  if (!v85)
  {
    v113 = v82;
  }

  v114 = *(v7 - 168);
  v115 = *(v7 - 228) ^ 0x67823AEA ^ v114;
  LODWORD(v485) = v113 ^ v82 ^ *(v7 - 160) ^ v114;
  v116 = v115 ^ v106;
  HIDWORD(v484) = (v115 ^ v106) & 0xEFFFFFFF ^ v106;
  v117 = *(v7 - 132);
  v118 = v115 ^ *(v7 - 232);
  v119 = *(v7 - 172) & 2;
  *(v7 - 248) = a1;
  LODWORD(v483) = (v74 ^ 0x8A47D29A) - 2 * ((v74 ^ 0x8A47D29A) & 0x5D40ED99 ^ v74 & 1) - 582947432;
  v120 = *(v7 - 248);
  LODWORD(v482) = *(v7 - 240) ^ *(v7 - 144);
  HIDWORD(v481) = *(v7 - 236) ^ *(v7 - 148);
  LODWORD(v484) = v118;
  LODWORD(v481) = v118 ^ *(v7 - 164);
  HIDWORD(v483) = v119;
  LODWORD(v480) = v119 ^ 2;
  HIDWORD(v480) = -597557248;
  HIDWORD(v482) = v116 & 0x10000000;
  HIDWORD(a5) = -(v116 & 0x10000000);
  v121 = (v117 - 176) | 0x308;
  v122 = (v117 - 190) | 0x4CD;
  *(v7 - 144) = 8;
  *(v7 - 224) = 0;
  *(v7 - 220) = v121;
  *(v7 - 216) = v122;
  v123 = (v122 + v121 - 2033) & 0xA25D45CF ^ 0xA25D45CF;
  *(v7 - 152) = v123;
  v124 = *&v88[4 * (v120[v123] ^ 0x76)];
  v125 = -2096493646 - (v120[8] ^ 0x2D) + (v120[8] ^ 0x4758BBE) + *&v491[4 * (v120[8] ^ 0xA8)];
  HIDWORD(v127) = v124 ^ 0x66E0C;
  LODWORD(v127) = v124 ^ 0xE0000000;
  v126 = v127 >> 23;
  *(v7 - 148) = 7;
  LOBYTE(v124) = *(v489 + (v120[7] ^ 0xBCLL));
  *(v7 - 160) = 5;
  v128 = *&v88[4 * (v120[5] ^ 0xDFLL)];
  HIDWORD(v127) = v128 ^ 0x66E0C;
  LODWORD(v127) = v128 ^ 0xE0000000;
  v129 = v127 >> 23;
  *(v7 - 140) = 13;
  v130 = v120[13];
  *(v7 - 168) = 3;
  LODWORD(v130) = *&v88[4 * (v130 ^ 0x11)];
  v131 = v124 ^ (4 * (v124 ^ 0xA0) * (v124 ^ 0xA0));
  HIDWORD(v127) = v130 ^ 0x66E0C;
  LODWORD(v127) = v130 ^ 0xE0000000;
  v132 = v127 >> 23;
  LOBYTE(v119) = *(v489 + (v120[3] ^ 0x91));
  *(v7 - 156) = 11;
  v133 = *(v489 + (v120[11] ^ 0x14));
  LODWORD(v130) = *&v491[4 * (v120[4] ^ 0xA4)] - 2 * ((v120[4] ^ 0x4D) & (v120[4] ^ 0x21));
  *(v7 - 164) = 1;
  v134 = *&v88[4 * (v120[1] ^ 0xEDLL)];
  HIDWORD(v127) = v134 ^ 0x66E0C;
  LODWORD(v127) = v134 ^ 0xE0000000;
  *(v7 - 180) = 0;
  v135 = *v120;
  v136 = v135 ^ 0x4758BE3;
  v137 = v135 ^ 0x70;
  LODWORD(v135) = *&v491[4 * (v135 ^ 0xF5)];
  *(v7 - 176) = 12;
  v138 = v136 - 2096493646 + v135 - v137;
  LODWORD(v135) = (v120[12] ^ 0x4758B0E) - 2096493646 + *&v491[4 * (v120[12] ^ 0x18)] - (v120[12] ^ 0x9D);
  *(v7 - 172) = 2;
  v139 = 809723981 * *&v488[4 * (v120[2] ^ 0xD7)];
  v140 = (v119 ^ (4 * (v119 ^ 0xA0) * (v119 ^ 0xA0))) ^ 0xF0 ^ v110 ^ (v127 >> 23) ^ v139;
  *(v7 - 188) = 6;
  v141 = 809723981 * *&v488[4 * (v120[6] ^ 0x73)];
  v142 = v140 ^ (v139 >> 1) ^ (v139 >> 5) ^ v138;
  *(v7 - 192) = 10;
  v143 = v131 ^ 0xF0;
  v144 = v141 ^ v111 ^ (v141 >> 1) ^ (v141 >> 5);
  v145 = *&v488[4 * (v120[10] ^ 0x3FLL)];
  v146 = v144 ^ v143;
  *(v7 - 200) = -1570945585;
  *(v7 - 184) = 15;
  LODWORD(v130) = v129 ^ (v130 - 2021681339);
  LOBYTE(v129) = *(v489 + (v120[15] ^ 0x4DLL));
  v147 = 809723981 * v145;
  v148 = v146 ^ v130;
  LOBYTE(v146) = v129 ^ 0xA0 ^ (4 * (v129 ^ 0xA0) * (v129 ^ 0xA0));
  v149 = v148 - ((2 * v148) & 0xDB4888FC);
  *(v7 - 196) = 14;
  v150 = v108 ^ HIDWORD(v495) ^ v125;
  v151 = 809723981 * *&v488[4 * (v120[14] ^ 0xAALL)];
  v152 = (v149 - 308001666) ^ v513;
  v153 = v150 ^ v147 ^ v126 ^ (v147 >> 1) ^ (v147 >> 5);
  v154 = v153 ^ (v133 ^ (4 * (v133 ^ 0xA0) * (v133 ^ 0xA0))) ^ 0xF0;
  v155 = v112 ^ HIDWORD(v492) ^ v132 ^ v151 ^ (v151 >> 1) ^ (v151 >> 5) ^ v135;
  v156 = *(&off_286999DF0 + (v117 ^ 0xF5)) - 4;
  v157 = *&v156[4 * (BYTE2(v152) ^ 0xAA)];
  HIDWORD(v127) = v157 ^ 7;
  LODWORD(v127) = v157 ^ 0xE8A5580;
  v158 = v127 >> 4;
  *(v7 - 132) = v117;
  v159 = *(&off_286999DF0 + v117 - 31);
  v160 = *(v159 + 4 * ((v154 ^ 0x2333) >> 8));
  HIDWORD(v127) = v160 ^ 0xDA78;
  LODWORD(v127) = v160 ^ 0xA3BC0000;
  v161 = v155 ^ v146 ^ 0xFD859959;
  v162 = (v155 ^ v146 ^ 0x59);
  LODWORD(v135) = v162 - 582947432 - ((2 * v161) & 0x130);
  v163 = (v142 - ((2 * v142) & 0xCA4D4164) - 450453326) ^ v514;
  v164 = *(&off_286999DF0 + (v117 ^ 0xC0)) - 12;
  v165 = *&v164[4 * ((v163 ^ 0x9E930871) >> 24)] ^ 0x56FEC5C0;
  v166 = *(&off_286999DF0 + (v117 ^ 0x59));
  v167 = v165 ^ *(v7 - 240) ^ v158 ^ (v165 >> 3) & 0x211ED24 ^ *(v166 + 4 * (v162 ^ 0x79u)) ^ (v127 >> 17) ^ (4 * (v127 >> 17));
  v168 = *&v156[4 * (BYTE2(v153) ^ 0x4C)];
  HIDWORD(v127) = v168 ^ 7;
  LODWORD(v127) = v168 ^ 0xE8A5580;
  v169 = v127 >> 4;
  v170 = v167 ^ v135;
  v171 = *(v159 + 4 * BYTE1(v161));
  HIDWORD(v127) = v171 ^ 0xDA78;
  LODWORD(v127) = v171 ^ 0xA3BC0000;
  v172 = v127 >> 17;
  v173 = *&v164[4 * ((v152 ^ 0xBB67FDFB) >> 24)] ^ 0x56FEC5C0;
  v174 = *&v156[4 * BYTE2(v161)];
  HIDWORD(v127) = v174 ^ 7;
  LODWORD(v127) = v174 ^ 0xE8A5580;
  v175 = v127 >> 4;
  v176 = ((v163 ^ 0x71) - 582947432 - 2 * ((v163 ^ 0x9E930871) & 0x9E ^ v163 & 6)) ^ v495 ^ v173 ^ v169 ^ (v173 >> 3) & 0x211ED24 ^ *(v166 + 4 * (v163 ^ 8u)) ^ v172 ^ (4 * v172);
  v177 = *(v159 + 4 * ((v163 ^ 0x871) >> 8));
  HIDWORD(v127) = v177 ^ 0xDA78;
  LODWORD(v127) = v177 ^ 0xA3BC0000;
  v178 = v127 >> 17;
  v179 = *&v164[4 * ((v154 ^ 0x1F812333u) >> 24)] ^ 0x56FEC5C0;
  v180 = v175 ^ ((v149 + 126) ^ v513) ^ 0xFB ^ (v179 >> 3) & 0x211ED24 ^ (4 * v178);
  LODWORD(v130) = *&v156[4 * (BYTE2(v163) ^ 0x93)];
  HIDWORD(v127) = v130 ^ 7;
  LODWORD(v127) = v130 ^ 0xE8A5580;
  LODWORD(v130) = v127 >> 4;
  v181 = *(v159 + 4 * ((((v149 + 17534) ^ v513) >> 8) ^ 7u));
  HIDWORD(v127) = v181 ^ 0xDA78;
  LODWORD(v127) = v181 ^ 0xA3BC0000;
  v182 = v127 >> 17;
  v183 = v179 ^ HIDWORD(v487) ^ *(v166 + 4 * (((v149 + 126) ^ v513) ^ 0x82u)) ^ v178 ^ (v180 - 582947432 - ((2 * v180) & 0xBA81DB30));
  v184 = *&v164[4 * (HIBYTE(v155) ^ 0x7B)] ^ 0x56FEC5C0;
  LODWORD(v130) = (v184 >> 3) & 0x211ED24 ^ v130 ^ (4 * v182);
  v185 = v154 ^ 0x33 ^ HIDWORD(v494) ^ v184 ^ *(v166 + 4 * (v154 ^ 0x4Au)) ^ v182 ^ (v130 - 582947432 - ((2 * v130) & 0xBA81DB30));
  v186 = HIDWORD(v486) ^ (v183 - ((2 * v183) & 0x6D3B78FA) - 1231176579);
  *(v7 - 212) = v176;
  v187 = *&v156[4 * (((v176 ^ 0x23AC3AFCu) >> 16) ^ 0xCD)];
  HIDWORD(v127) = v187 ^ 7;
  LODWORD(v127) = v187 ^ 0xE8A5580;
  LODWORD(v130) = v127 >> 4;
  v188 = *(v159 + 4 * (BYTE1(v186) ^ 0x97u));
  HIDWORD(v127) = v188 ^ 0xDA78;
  LODWORD(v127) = v188 ^ 0xA3BC0000;
  v189 = v127 >> 17;
  *(v7 - 208) = -582947431;
  v190 = v482 ^ (v170 - ((2 * v170) & 0x137FEFCA) - 1983907867);
  v191 = *&v164[4 * ((v190 ^ 0x6EBC57CDu) >> 24)] ^ 0x56FEC5C0;
  LODWORD(v130) = (v191 >> 3) & 0x211ED24 ^ v191 ^ v130 ^ *(v166 + 4 * (v185 ^ 0x31u)) ^ v189;
  v192 = *&v156[4 * (BYTE2(v186) ^ 0xDA)];
  v193 = v130 ^ (4 * v189);
  HIDWORD(v127) = v192 ^ 7;
  LODWORD(v127) = v192 ^ 0xE8A5580;
  LODWORD(v130) = v127 >> 4;
  v194 = *(v159 + 4 * ((v185 ^ 0xDC48) >> 8));
  HIDWORD(v127) = v194 ^ 0xDA78;
  LODWORD(v127) = v194 ^ 0xA3BC0000;
  v195 = v127 >> 17;
  LODWORD(v135) = v193 ^ ((v185 ^ 0x48) - 582947431 + ~(2 * ((v185 ^ 0x11CDC48) & 0x99 ^ v185 & 1)));
  v196 = *&v156[4 * ((v185 ^ 0x11CDC48) >> 16)];
  HIDWORD(v127) = v196 ^ 7;
  LODWORD(v127) = v196 ^ 0xE8A5580;
  v197 = v127 >> 4;
  v198 = *(v159 + 4 * ((v190 ^ 0x57CD) >> 8));
  HIDWORD(v127) = v198 ^ 0xDA78;
  LODWORD(v127) = v198 ^ 0xA3BC0000;
  v199 = v127 >> 17;
  v200 = *&v156[4 * ((v190 ^ 0x6EBC57CDu) >> 16)];
  HIDWORD(v127) = v200 ^ 7;
  LODWORD(v127) = v200 ^ 0xE8A5580;
  v201 = v127 >> 4;
  v202 = *(v159 + 4 * ((v176 ^ 0x3AFC) >> 8));
  HIDWORD(v127) = v202 ^ 0xDA78;
  LODWORD(v127) = v202 ^ 0xA3BC0000;
  v203 = v127 >> 17;
  v204 = *&v164[4 * (HIBYTE(v185) ^ 0x87)] ^ 0x56FEC5C0;
  v205 = v201 ^ (v204 >> 3) & 0x211ED24 ^ (4 * v203);
  v206 = v205 - 582947432 - 2 * (v205 & 0x5D40ED99 ^ v201 & 1);
  v207 = ((v176 ^ 0xFC) - 582947432 - ((2 * (v176 ^ 0x23AC3AFC)) & 0x130)) ^ v492 ^ *(v166 + 4 * (v176 ^ 0x85u)) ^ v197;
  v208 = *&v164[4 * (HIBYTE(v186) ^ 0xEB)] ^ 0x56FEC5C0;
  v209 = v207 ^ v208 ^ v199 ^ (v208 >> 3) & 0x211ED24 ^ (4 * v199);
  v210 = v204 ^ v186 ^ v203 ^ *(v166 + 4 * (v186 ^ 0x74u)) ^ v206;
  v211 = *&v164[4 * ((v176 ^ 0x23AC3AFCu) >> 24)] ^ 0x56FEC5C0;
  v212 = ((v190 ^ 0xCD) - 582947432 - ((2 * (v190 ^ 0x6EBC57CD)) & 0x130)) ^ v494 ^ v211 ^ (v211 >> 3) & 0x211ED24 ^ *(v166 + 4 * (v190 ^ 0xB4u)) ^ v195 ^ v130 ^ (4 * v195);
  LODWORD(v130) = v210 - ((2 * v210) & 0x1C44F310);
  v213 = *&v156[4 * ((v212 ^ 0xC2321F13) >> 16)];
  HIDWORD(v127) = v213 ^ 7;
  LODWORD(v127) = v213 ^ 0xE8A5580;
  v214 = (v135 - ((2 * v135) & 0x53E7FE20) - 1443627248) ^ v512;
  BYTE1(v208) = BYTE1(v214) ^ 0xC6;
  v215 = *&v164[4 * ((v214 ^ 0xC8B3C600) >> 24)] ^ 0x56FEC5C0;
  v216 = (v127 >> 4) ^ v215 ^ (v215 >> 3) & 0x211ED24;
  v217 = *(v159 + 4 * ((v209 ^ 0xCCC2) >> 8));
  HIDWORD(v127) = v217 ^ 0xDA78;
  LODWORD(v127) = v217 ^ 0xA3BC0000;
  v218 = (v130 - 1910343288) ^ v511;
  LODWORD(v130) = v218 ^ 0x8288ED16;
  v219 = (v127 >> 17) ^ *(v166 + 4 * (v218 ^ 0x6Fu)) ^ (4 * (v127 >> 17)) ^ __ROR4__(__ROR4__(v216, 18) ^ 0xAF23C3F6, 14) ^ (v130 - 582947432 - ((2 * v130) & 0x130));
  v220 = *&v156[4 * (BYTE2(v209) ^ 0x85)];
  HIDWORD(v127) = v220 ^ 7;
  LODWORD(v127) = v220 ^ 0xE8A5580;
  v221 = v127 >> 4;
  v222 = *(v159 + 4 * ((v218 ^ 0xED16) >> 8));
  HIDWORD(v127) = v222 ^ 0xDA78;
  LODWORD(v127) = v222 ^ 0xA3BC0000;
  v223 = v127 >> 17;
  v224 = *&v164[4 * ((v212 ^ 0xC2321F13) >> 24)] ^ 0x56FEC5C0;
  v225 = (v224 >> 3) & 0x211ED24 ^ v224 ^ v221;
  BYTE2(v224) = BYTE2(v214) ^ 0x76;
  v226 = v225 ^ (v214 - 582947432 - ((2 * v214) & 0x130)) ^ *(v166 + 4 * (v214 ^ 0x79u)) ^ v223;
  v227 = *&v156[4 * BYTE2(v130)];
  v228 = v226 ^ (4 * v223);
  HIDWORD(v127) = v227 ^ 7;
  LODWORD(v127) = v227 ^ 0xE8A5580;
  v229 = v127 >> 4;
  v230 = *(v159 + 4 * BYTE1(v208));
  HIDWORD(v127) = v230 ^ 0xDA78;
  LODWORD(v127) = v230 ^ 0xA3BC0000;
  v231 = v127 >> 17;
  v232 = *&v156[4 * (BYTE2(v224) ^ 8)];
  HIDWORD(v127) = v232 ^ 7;
  LODWORD(v127) = v232 ^ 0xE8A5580;
  v233 = v127 >> 4;
  LODWORD(v135) = *(v159 + 4 * ((v212 ^ 0x1F13) >> 8));
  HIDWORD(v127) = v135 ^ 0xDA78;
  LODWORD(v127) = v135 ^ 0xA3BC0000;
  LODWORD(v130) = *&v164[4 * BYTE3(v130)] ^ 0x56FEC5C0;
  LODWORD(v130) = ((v209 ^ 0xC2) - 582947432 - 2 * ((v209 ^ 0xC848CCC2) & 0x99 ^ v209 & 1)) ^ *(v7 - 236) ^ *(v166 + 4 * (v209 ^ 0xBBu)) ^ v130 ^ v233 ^ (v130 >> 3) & 0x211ED24 ^ (v127 >> 17) ^ (4 * (v127 >> 17));
  v234 = v130 - ((2 * v130) & 0xF2EFBA08);
  LODWORD(v130) = *&v164[4 * ((v209 ^ 0xC848CCC2) >> 24)] ^ 0x56FEC5C0;
  v235 = (v228 - ((2 * v228) & 0x6E4817C2) - 1222374431) ^ v509;
  v236 = ((v212 ^ 0x13) - 582947432 - ((2 * (v212 ^ 0xC2321F13)) & 0x130)) ^ v493 ^ v130 ^ (v130 >> 3) & 0x211ED24 ^ *(v166 + 4 * (v212 ^ 0x6Au)) ^ v231 ^ v229 ^ (4 * v231);
  v237 = v235 ^ 0x4D861974;
  v238 = *&v156[4 * ((v235 ^ 0x4D861974) >> 16)];
  HIDWORD(v127) = v238 ^ 7;
  LODWORD(v127) = v238 ^ 0xE8A5580;
  v239 = (v219 + 2110910645 + (~(2 * v219) | 0x45C1E97)) ^ v510;
  v240 = (v219 - 3915 + (~(2 * v219) | 0x1E97)) ^ v510 ^ 0x1D8A;
  v241 = *&v164[4 * ((v239 ^ 0x2F1E1D8Au) >> 24)] ^ 0x56FEC5C0;
  v242 = v236 ^ 0x753D6C5C;
  v243 = *(v159 + 4 * ((v236 ^ 0x6C5C) >> 8));
  v244 = (v241 >> 3) & 0x211ED24 ^ v241 ^ (v127 >> 4);
  HIDWORD(v127) = v243 ^ 0xDA78;
  LODWORD(v127) = v243 ^ 0xA3BC0000;
  v245 = (v127 >> 17) ^ (4 * (v127 >> 17)) ^ 0xFBD4F51C;
  *(v7 - 204) = *(v7 - 136) < 0xFC48E28C;
  v246 = v244 & 0x40000;
  if ((v244 & 0x40000 & v245) != 0)
  {
    v246 = -v246;
  }

  v247 = v246 + v245;
  v248 = HIDWORD(v481) ^ (v234 - 109585148);
  v249 = *&v156[4 * BYTE2(v242)];
  HIDWORD(v251) = v249 ^ 7;
  LODWORD(v251) = v249 ^ 0xE8A5580;
  v250 = v251 >> 4;
  v252 = *(v159 + 4 * ((v248 ^ 0xB30D) >> 8));
  v253 = ((BYTE4(v481) ^ (v234 + 4)) ^ 0xD) - 582947432 - 2 * ((v248 ^ 0xDE87B30D) & 0x9A ^ v248 & 2);
  HIDWORD(v251) = v252 ^ 0xDA78;
  LODWORD(v251) = v252 ^ 0xA3BC0000;
  v254 = v240 - 582947432 - 2 * (v240 & 0xB8 ^ v239 & 0x20);
  v255 = v239 ^ 0x5E9C20D1;
  v256 = *&v164[4 * (HIBYTE(v235) ^ 0xCB)] ^ 0x56FEC5C0;
  v257 = v256 ^ v250 ^ *(v166 + 4 * (v255 ^ 0x22u)) ^ (v256 >> 3) & 0x211ED24 ^ (v251 >> 17) ^ (4 * (v251 >> 17)) ^ v254;
  v258 = *&v156[4 * ((v248 ^ 0xDE87B30D) >> 16)];
  HIDWORD(v251) = v258 ^ 7;
  LODWORD(v251) = v258 ^ 0xE8A5580;
  v259 = v251 >> 4;
  v260 = *&v164[4 * HIBYTE(v242)] ^ 0x56FEC5C0;
  HIDWORD(v251) = *(v159 + 4 * HIBYTE(v240));
  LODWORD(v251) = HIDWORD(v251);
  v261 = *&v156[4 * (BYTE2(v255) ^ 0x4F)];
  v262 = (v237 - 582947432 - ((2 * v237) & 0x130)) ^ v260 ^ 0x2219E3BA ^ (v260 >> 3) & 0x211ED24 ^ *(v166 + 4 * (v235 ^ 0xDu)) ^ (v251 >> 17) ^ v259 ^ (4 * (v251 >> 17));
  HIDWORD(v251) = v261 ^ 7;
  LODWORD(v251) = v261 ^ 0xE8A5580;
  v263 = ((*(v159 + 4 * BYTE1(v237)) ^ 0xA3BCDA78) >> (*(v159 + 4 * BYTE1(v237)) & 0x11 ^ 0x10) >> (*(v159 + 4 * BYTE1(v237)) & 0x11 ^ 1)) | (*(v159 + 4 * BYTE1(v237)) << 15) ^ 0x6D3C0000;
  v264 = *&v164[4 * (HIBYTE(v248) ^ 0x58)] ^ 0x56FEC5C0;
  v265 = v264 ^ (v242 - 582947432 - ((2 * v242) & 0x130)) ^ *(v166 + 4 * (v236 ^ 0x25u)) ^ (v251 >> 4) ^ (v264 >> 3) & 0x211ED24 ^ v263 ^ (4 * v263);
  v266 = v257 - ((2 * v257) & 0xA10E91F2);
  v267 = v262 - ((2 * v262) & 0x6288D1BC);
  v268 = v486 ^ *(v166 + 4 * (v248 ^ 0x74u)) ^ v244 & 0xFFFBFFFF ^ v253 ^ v247;
  v269 = (v266 - 796440327) ^ v506;
  v270 = *&v156[4 * ((v269 ^ 0x4EA3ADFAu) >> 16)];
  HIDWORD(v251) = v270 ^ 7;
  LODWORD(v251) = v270 ^ 0xE8A5580;
  v271 = v251 >> 4;
  v272 = (v267 + 826566878) ^ v508;
  v273 = *(v159 + 4 * (BYTE1(v272) ^ 0x4Eu));
  HIDWORD(v251) = v273 ^ 0xDA78;
  LODWORD(v251) = v273 ^ 0xA3BC0000;
  v274 = (v265 - ((2 * v265) & 0x90676BB4) - 936135206) ^ v507;
  v275 = *&v164[4 * (HIBYTE(v268) ^ 0x6F)] ^ 0x56FEC5C0;
  v276 = (v275 >> 3) & 0x211ED24 ^ v275 ^ *(v166 + 4 * (v274 ^ 0x47u)) ^ (v251 >> 17) ^ v271 ^ (4 * (v251 >> 17)) ^ ((v274 ^ 0x3E) - 582947432 - ((2 * (v274 ^ 0xB17BB3E)) & 0x130));
  v277 = *&v156[4 * (((v272 ^ 0xF00EB422) >> 16) ^ -((v272 ^ 0xF00EB422) >> 16) ^ (205 - (((v272 ^ 0xF00EB422) >> 16) ^ 0xCD))) + 820];
  HIDWORD(v251) = v277 ^ 7;
  LODWORD(v251) = v277 ^ 0xE8A5580;
  v278 = v251 >> 4;
  v279 = *(v159 + 4 * ((v274 ^ 0xBB3E) >> 8));
  HIDWORD(v251) = v279 ^ 0xDA78;
  LODWORD(v251) = v279 ^ 0xA3BC0000;
  v280 = v251 >> 17;
  v281 = v268 ^ 0xE9B9DEEB;
  v282 = *&v164[4 * ((v269 ^ 0x4EA3ADFAu) >> 24)] ^ 0x56FEC5C0;
  v283 = *&v156[4 * ((v274 ^ 0xB17BB3E) >> 16)];
  HIDWORD(v251) = v283 ^ 7;
  LODWORD(v251) = v283 ^ 0xE8A5580;
  v284 = v278 ^ v282 ^ ((v268 ^ 0xEB) - 582947432 - 2 * ((v268 ^ 0xE9B9DEEB) & 0x9C ^ v268 & 4)) ^ (v282 >> 3) & 0x211ED24 ^ *(v166 + 4 * (v268 ^ 0x92u)) ^ v280 ^ (4 * v280);
  v285 = *&v164[4 * (HIBYTE(v272) ^ 0x76)] ^ 0x56FEC5C0;
  v286 = (v285 >> 3) & 0x211ED24 ^ (v251 >> 4);
  v287 = *(v159 + 4 * BYTE1(v281));
  HIDWORD(v251) = v287 ^ 0xDA78;
  LODWORD(v251) = v287 ^ 0xA3BC0000;
  v288 = v285 ^ v269 ^ 0xFA ^ *(v166 + 4 * (v269 ^ 0x83u)) ^ (v251 >> 17) ^ ((v286 ^ (4 * (v251 >> 17))) - 582947432 - ((2 * (v286 ^ (4 * (v251 >> 17)))) & 0xBA81DB30));
  v289 = *(v159 + 4 * ((v269 ^ 0xADFA) >> 8));
  HIDWORD(v251) = v289 ^ 0xDA78;
  LODWORD(v251) = v289 ^ 0xA3BC0000;
  v290 = ((v272 ^ 0x22) - 582947432 - ((2 * v272) & 0x130)) ^ *(v166 + 4 * (v272 ^ 0x5Bu));
  v291 = *&v164[4 * (HIBYTE(v274) ^ 0x8D)] ^ 0x56FEC5C0;
  v292 = v291 ^ v290 ^ (v291 >> 3) & 0x211ED24 ^ (v251 >> 17) ^ (((*&v156[4 * BYTE2(v281)] ^ 0xE8A5587u) >> (*(v7 - 212) & 4) >> (*(v7 - 212) & 4 ^ 4)) + ((*&v156[4 * BYTE2(v281)] << 28) ^ 0x70000000)) ^ (4 * (v251 >> 17));
  v293 = v276 - ((2 * v276) & 0x48F10E5C);
  v294 = (v284 - ((2 * v284) & 0xD96B8D2E) - 323631465) ^ v504;
  v295 = v294 ^ 0xB5;
  v296 = *&v156[4 * (((v294 ^ 0x84C032B5) >> 16) ^ 0xB1)];
  v297 = v292 - ((2 * v292) & 0x1F0A328E);
  HIDWORD(v251) = v296 ^ 7;
  LODWORD(v251) = v296 ^ 0xE8A5580;
  v298 = v251 >> 4;
  v299 = (v288 - ((2 * v288) & 0xDB92D328) + 1841916308) ^ v502;
  v300 = v299 ^ 0x5887B30D;
  v301 = *(v159 + 4 * ((v299 ^ 0xB30D) >> 8));
  HIDWORD(v251) = v301 ^ 0xDA78;
  LODWORD(v251) = v301 ^ 0xA3BC0000;
  v302 = v251 >> 17;
  v303 = v294 ^ 0xADCA;
  v304 = (v294 ^ 0x48BCADCA) >> 24;
  v305 = v304 - 223;
  if (v304 < 0xDF)
  {
    v305 = (v294 ^ 0x48BCADCA) >> 24;
  }

  if (v304 <= 0xDE)
  {
    v306 = 0;
  }

  else
  {
    v306 = 223;
  }

  v307 = v305 + v306;
  v308 = (v297 - 1887102649) ^ v503;
  v309 = v308 ^ 0x9B33A5C9;
  v310 = (v308 ^ 0xC9) - 582947432 - ((2 * (v308 ^ 0x9B33A5C9)) & 0x130);
  v311 = (v293 - 1535604946) ^ v505;
  v312 = BYTE2(v311) ^ 0x20;
  v313 = *&v164[4 * ((v311 ^ 0xBF203D35) >> 24)] ^ 0x56FEC5C0;
  v314 = (v313 >> 3) & 0x211ED24 ^ v313 ^ *(v166 + 4 * (v308 ^ 0xB0u)) ^ v298 ^ v302 ^ (4 * v302);
  v315 = *&v156[4 * BYTE2(v300)];
  v316 = v314 ^ v310;
  HIDWORD(v318) = v315 ^ 7;
  LODWORD(v318) = v315 ^ 0xE8A5580;
  v317 = v318 >> 4;
  v319 = *(v159 + 4 * BYTE1(v309));
  HIDWORD(v318) = v319 ^ 0xDA78;
  LODWORD(v318) = v319 ^ 0xA3BC0000;
  v320 = *&v164[4 * (v307 ^ 0x86)] ^ 0x56FEC5C0;
  v321 = (v320 >> 3) & 0x211ED24 ^ v320 ^ v317 ^ *(v166 + 4 * (v311 ^ 0x4Cu)) ^ (v318 >> 17) ^ (4 * (v318 >> 17)) ^ ((v311 ^ 0x35) - 582947432 - 2 * ((v311 ^ 0xBF203D35) & 0x9A ^ v311 & 2));
  v322 = *(v159 + 4 * ((v311 ^ 0x3D35) >> 8));
  HIDWORD(v318) = v322 ^ 0xDA78;
  LODWORD(v318) = v322 ^ 0xA3BC0000;
  v323 = v318 >> 17;
  v324 = v303 - 582947432 - 2 * (v303 & 0x99 ^ v294 & 1);
  v325 = *(v159 + 4 * HIBYTE(v303));
  HIDWORD(v318) = v325 ^ 0xDA78;
  LODWORD(v318) = v325 ^ 0xA3BC0000;
  v326 = *&v164[4 * HIBYTE(v309)];
  v327 = v326 ^ (v300 - 582947432 - 2 * (v300 & 0xB8 ^ v299 & 0x20)) ^ (*&v156[4 * v312] >> 4) ^ *(v166 + 4 * (v299 ^ 0x74u)) ^ ((v326 >> 3) & 0x211ED24 | (*&v156[4 * v312] << 28)) ^ (v318 >> 17) ^ (4 * (v318 >> 17));
  v328 = *&v164[4 * HIBYTE(v300)] ^ 0x56FEC5C0;
  v329 = v324 ^ HIDWORD(v493) ^ v328 ^ (*&v156[4 * BYTE2(v309)] >> 4) ^ *(v166 + 4 * (v295 ^ 6u)) ^ ((v328 >> 3) & 0x211ED24 | (*&v156[4 * BYTE2(v309)] << 28)) ^ v323 ^ (4 * v323);
  v330 = v316 & 0x40;
  v331 = (v321 - ((2 * v321) & 0x9A4E934E) + 1294420391) ^ v501;
  if ((v316 & 0x40 & v487) != 0)
  {
    v330 = -v330;
  }

  v332 = *&v156[4 * ((v331 ^ 0xABA3ADFA) >> 16)];
  v333 = HIDWORD(v485) ^ v316 & 0xFFFFFFBF ^ (v330 + v487);
  HIDWORD(v335) = v332 ^ 7;
  LODWORD(v335) = v332 ^ 0xE8A5580;
  v334 = v335 >> 4;
  v336 = v329 ^ 0x58;
  v337 = *(v159 + 4 * (((v329 ^ 0xA558) >> 8) ^ 0xB3u));
  HIDWORD(v335) = v337 ^ 0xDA78;
  LODWORD(v335) = v337 ^ 0xA3BC0000;
  v338 = ((v327 ^ 0x2407A8B8) - ((2 * (v327 ^ 0x2407A8B8)) & 0x1240FCFA) + 153124477) ^ HIDWORD(v500);
  v339 = *&v164[4 * ((v333 ^ 0x6079485Fu) >> 24)] ^ 0x56FEC5C0;
  v340 = (v339 >> 3) & 0x211ED24 ^ v339 ^ *(v166 + 4 * (v338 ^ 0x74u)) ^ (v335 >> 17) ^ v334 ^ (4 * (v335 >> 17));
  v341 = v329 ^ 0x2ABDEC2E;
  v342 = *&v156[4 * ((v329 ^ 0x2ABDEC2Eu) >> 16)];
  HIDWORD(v335) = v342 ^ 7;
  LODWORD(v335) = v342 ^ 0xE8A5580;
  v343 = v335 >> 4;
  v344 = v340 ^ ((v338 ^ 0xD) - 582947432 - 2 * ((v338 ^ 0xDE87490D) & 0x9A ^ v338 & 2));
  v345 = *(v159 + 4 * (BYTE1(v338) ^ 0xB3u));
  HIDWORD(v335) = v345 ^ 0xDA78;
  LODWORD(v335) = v345 ^ 0xA3BC0000;
  v346 = v335 >> 17;
  v347 = *&v156[4 * ((v338 ^ 0xDE87490D) >> 16)];
  HIDWORD(v335) = v347 ^ 7;
  LODWORD(v335) = v347 ^ 0xE8A5580;
  v348 = v335 >> 4;
  v349 = *(v159 + 4 * (((v333 ^ 0x485F) >> 8) ^ 0xFAu));
  HIDWORD(v335) = v349 ^ 0xDA78;
  LODWORD(v335) = v349 ^ 0xA3BC0000;
  v350 = v335 >> 17;
  v351 = *&v164[4 * HIBYTE(v341)] ^ 0x56FEC5C0;
  v352 = *&v156[4 * ((v333 ^ 0x6079485Fu) >> 16)];
  HIDWORD(v335) = v352 ^ 7;
  LODWORD(v335) = v352 ^ 0xE8A5580;
  v353 = v335 >> 4;
  v354 = *(v159 + 4 * ((v331 ^ 0xADFA) >> 8));
  HIDWORD(v335) = v354 ^ 0xDA78;
  LODWORD(v335) = v354 ^ 0xA3BC0000;
  v355 = v351 ^ ((v331 ^ 0xFA) - 582947432 - 2 * ((v331 ^ 0xABA3ADFA) & 0x99 ^ v331 & 1)) ^ v348 ^ *(v166 + 4 * (v331 ^ 0x83u)) ^ (v351 >> 3) & 0x211ED24 ^ v350 ^ (4 * v350);
  v356 = (v341 & 2 | 0xC1100408) ^ v336 & 8 | v341 & 0xF5;
  v357 = v356 + *(v7 - 208) + ((2 * (v356 & 0xB8 ^ (v341 | 0xFFFFFFDF))) ^ 0x82000841);
  v358 = v344 - 214825607 - ((2 * v344) & 0xE6640AF2);
  v359 = v357 ^ *(v166 + 4 * (v336 ^ 0xFu));
  v360 = *&v164[4 * (HIBYTE(v338) ^ 0x58)] ^ 0x56FEC5C0;
  v361 = v360 ^ v359 ^ (v360 >> 3) & 0x211ED24 ^ v353 ^ (v335 >> 17) ^ (4 * (v335 >> 17));
  v362 = *&v164[4 * ((v331 ^ 0xABA3ADFA) >> 24)] ^ 0x56FEC5C0;
  v363 = (v362 >> 3) & 0x211ED24 ^ v362 ^ v343 ^ *(v166 + 4 * (v333 ^ 0x26u)) ^ v346 ^ ((v346 ^ 0x7EF53D47) << SBYTE4(v483) << v480) ^ ((v333 ^ 0x5F) - 582947432 - ((2 * (v333 ^ 0x6079485F)) & 0x130));
  v364 = (v363 - ((2 * v363) & 0x7C2A99BC) - 1105900322) ^ HIDWORD(v499);
  v365 = v364 ^ 0xD1D0D6DE;
  v366 = *&v156[4 * ((v364 ^ 0xD1D0D6DE) >> 16)];
  HIDWORD(v335) = v366 ^ 7;
  LODWORD(v335) = v366 ^ 0xE8A5580;
  v367 = v335 >> 4;
  v368 = (v355 - ((2 * v355) & 0x577C9722) - 1413592175) ^ v499;
  *(v7 - 208) = v368;
  v369 = v368 ^ 0x2B861974;
  v370 = *(v159 + 4 * ((v368 ^ 0x1974) >> 8));
  HIDWORD(v335) = v370 ^ 0xDA78;
  LODWORD(v335) = v370 ^ 0xA3BC0000;
  v371 = v335 >> 17;
  v372 = (v361 - ((2 * v361) & 0x9D10349C) - 829941170) ^ HIDWORD(v498);
  v373 = ((v361 - ((2 * v361) & 0x9C) + 78) ^ BYTE4(v498)) ^ 0x59853001;
  v374 = *&v156[4 * BYTE2(v369)];
  HIDWORD(v335) = v374 ^ 7;
  LODWORD(v335) = v374 ^ 0xE8A5580;
  v375 = v335 >> 4;
  v376 = v358 ^ v500;
  v377 = *&v164[4 * (((v358 ^ v500) >> 24) ^ 0xD9)] ^ 0x56FEC5C0;
  v378 = v367 ^ (v377 >> 3) & 0x211ED24 ^ (4 * v371);
  v379 = *(v159 + 4 * ((((v361 - ((2 * v361) & 0x349C) + 6734) ^ WORD2(v498) ^ 0x85DB) >> 8) ^ 0xB7u));
  v380 = v378 - 582947432 - 2 * (v378 & 0x5D40ED9B ^ v367 & 3);
  HIDWORD(v335) = v379 ^ 0xDA78;
  LODWORD(v335) = v379 ^ 0xA3BC0000;
  v381 = v335 >> 17;
  v382 = v376;
  v383 = v376 - 582947432 - ((2 * v376) & 0x130);
  v384 = *&v156[4 * (((v372 ^ 0x1F1785DB) >> 16) ^ 0x97)];
  HIDWORD(v335) = v384 ^ 7;
  LODWORD(v335) = v384 ^ 0xE8A5580;
  v385 = v335 >> 4;
  v386 = *(v159 + 4 * (BYTE1(v376) ^ 0x3Du));
  HIDWORD(v335) = v386 ^ 0xDA78;
  LODWORD(v335) = v386 ^ 0xA3BC0000;
  v387 = v335 >> 17;
  v388 = *&v164[4 * (HIBYTE(v372) ^ 0x86)];
  v389 = v388 & 0x7FFFFFFF ^ 0x13771046 ^ (v388 & 0x80000000 | 0x4589D586);
  v390 = *&v156[4 * (BYTE2(v376) ^ 0x20)];
  HIDWORD(v335) = v390 ^ 7;
  LODWORD(v335) = v390 ^ 0xE8A5580;
  v391 = v335 >> 4;
  v392 = *(v159 + 4 * ((v364 ^ 0xD6DE) >> 8));
  HIDWORD(v335) = v392 ^ 0xDA78;
  LODWORD(v335) = v392 ^ 0xA3BC0000;
  v393 = v335 >> 17;
  v394 = v391 ^ (4 * v393) ^ (v389 >> 3) & 0x211ED24;
  v395 = v377 ^ v498 ^ v371 ^ *(v166 + 4 * (v373 + 1501900966 - ((2 * v373) & 0xB30A614C))) ^ v380;
  v396 = *&v164[4 * HIBYTE(v369)] ^ 0x56FEC5C0;
  v397 = ((v364 ^ 0xDE) - 582947432 - 2 * ((v364 ^ 0xD1D0D6DE) & 0x99 ^ v364 & 1)) ^ HIDWORD(v496) ^ *(v166 + 4 * (v364 ^ 0xA7u)) ^ v396 ^ (v396 >> 3) & 0x211ED24 ^ v387 ^ v385 ^ (4 * v387);
  v398 = *&v164[4 * HIBYTE(v365)] ^ 0x56FEC5C0;
  v399 = v398 ^ *(v7 - 228) ^ *(v166 + 4 * (v382 ^ 0x4Cu)) ^ v375 ^ (v398 >> 3) & 0x211ED24 ^ v383 ^ v381 ^ (4 * (((v381 ^ 0x360651B6) & 0x40000 | 0x8F36CF1) ^ (v381 ^ 0x360651B6) & 0xFFFBFFFF));
  v400 = v369 ^ v71 ^ *(v166 + 4 * (*(v7 - 208) ^ 0xDu)) ^ v393 ^ v389 ^ (v394 - 582947432 - 2 * (v394 & 0x5D40ED9B ^ v391 & 3));
  v401 = *&v156[4 * (BYTE2(v399) ^ 0x64)];
  HIDWORD(v335) = v401 ^ 7;
  LODWORD(v335) = v401 ^ 0xE8A5580;
  v402 = v335 >> 4;
  v403 = *(v159 + 4 * ((v397 ^ 0xB30D) >> 8));
  HIDWORD(v335) = v403 ^ 0xDA78;
  LODWORD(v335) = v403 ^ 0xA3BC0000;
  v404 = v335 >> 17;
  v405 = (v369 ^ v71 ^ *(v166 + 4 * (*(v7 - 208) ^ 0xDu)) ^ v393 ^ v389 ^ (v394 - 104 - 2 * (v394 & 0x9B ^ v391 & 3)));
  v406 = *&v156[4 * (BYTE2(v397) ^ 0x87)];
  HIDWORD(v335) = v406 ^ 7;
  LODWORD(v335) = v406 ^ 0xE8A5580;
  v407 = *&v164[4 * ((v399 ^ 0x9CA93A73) >> 24)] ^ 0x56FEC5C0;
  v408 = *(v159 + 4 * (BYTE1(v400) ^ 0xB3u));
  v409 = (v407 >> 3) & 0x211ED24 ^ (v335 >> 4);
  HIDWORD(v335) = v408 ^ 0xDA78;
  LODWORD(v335) = v408 ^ 0xA3BC0000;
  v410 = v335 >> 17;
  v411 = *&v156[4 * (BYTE2(v400) ^ 0x87)];
  v412 = (v409 ^ (4 * v410)) - 582947432 - ((2 * (v409 ^ (4 * v410))) & 0xBA81DB30);
  HIDWORD(v335) = v411 ^ 7;
  LODWORD(v335) = v411 ^ 0xE8A5580;
  v413 = *&v164[4 * ((v397 ^ 0x534AB30D) >> 24)];
  v414 = ((v413 >> 3) & 0x211ED24 ^ 0x200E000 ^ (v335 >> 4)) - 2 * (((v413 >> 3) & 0x211ED24 ^ 0x200E000 ^ (v335 >> 4)) & 0x13771056 ^ (v335 >> 4) & 0x10) - 1820913594;
  HIDWORD(v335) = *(v159 + 4 * (BYTE1(v395) ^ 0x81u));
  LODWORD(v335) = HIDWORD(v335);
  v415 = v413 ^ 0xC598FDA6 ^ v414;
  v416 = (v335 >> 17) ^ 0x2219E3BA ^ (4 * (v335 >> 17));
  v417 = v415 + v416;
  v418 = v415 & v416;
  v419 = *&v164[4 * (HIBYTE(v395) ^ 0xE7)];
  LOBYTE(v361) = v395 ^ (v361 - ((2 * v361) & 0x9C) + 78) ^ BYTE4(v498) ^ 0xDB;
  v420 = *&v156[4 * (BYTE2(v395) ^ 0x95)];
  HIDWORD(v335) = v420 ^ 7;
  LODWORD(v335) = v420 ^ 0xE8A5580;
  v421 = v335 >> 4;
  v422 = *(v159 + 4 * (BYTE1(v399) ^ 0xC0u));
  HIDWORD(v335) = v422 ^ 0xDA78;
  LODWORD(v335) = v422 ^ 0xA3BC0000;
  v423 = *(v166 + 4 * (v399 ^ 0xAu));
  v424 = *(v7 - 248);
  v425 = (v399 ^ 0x73) - 582947432 - ((2 * (v399 ^ 0x9CA93A73)) & 0x130);
  v426 = v497 ^ v419 ^ 0x56FEC5C0 ^ v402 ^ ((v419 ^ 0x56FEC5C0u) >> 3) & 0x211ED24 ^ *(v166 + 4 * (v405 ^ 0x74u)) ^ v404 ^ (4 * v404) ^ (v400 - 582947432 - ((2 * v400) & 0x130)) ^ 0x240ADA99;
  v427 = v361 ^ v496 ^ v407 ^ *(v166 + 4 * (v361 ^ 0xA8u)) ^ v410 ^ v412;
  v428 = *&v164[4 * (HIBYTE(v400) ^ 0x58)] ^ 0x56FEC5C0;
  v429 = *(v7 - 232) ^ v425 ^ v423 ^ 0x926A3910 ^ (v417 - 2 * v418);
  v430 = v483 ^ v397 ^ 0xD ^ *(v166 + 4 * (v397 ^ 0x74u)) ^ v428 ^ v421 ^ (v428 >> 3) & 0x211ED24 ^ (v335 >> 17) ^ (4 * (v335 >> 17));
  v431 = HIBYTE(v426) ^ 0x5EF1B5E0;
  v432 = *(v7 - 132);
  v433 = *(&off_286999DF0 + (v432 ^ 0xAD)) - 4;
  v434 = *&v433[4 * (HIBYTE(v426) ^ 0xC0)];
  v435 = *(&off_286999DF0 + (v432 & 0x4473E8F)) - 12;
  v436 = *(&off_286999DF0 + (v432 ^ 0xF9)) - 12;
  v437 = *&v436[4 * (BYTE1(v429) ^ 0x95)] ^ *&v435[4 * (((v427 ^ 0x62BECC8C) >> 16) ^ 0x47)] ^ ((v427 ^ 0x62BECC8C) >> 16) ^ (BYTE1(v429) - 741406199 - ((v429 >> 7) & 0x12)) ^ ((v431 & 0x630B567 ^ v434 & 0x263CF767 | v431 & 0x58C10098 ^ v434 & 0xD9C30898) + 1136527611 - 2 * ((v431 & 0x630B567 ^ v434 & 0x263CF767 | v431 & 0x58C10098 ^ v434 & 0xD9C30898) & 0x43BE08FF ^ (v431 & 0x630B567 ^ v434 & 0x263CF767) & 4));
  v438 = v437 + 1888272063 - ((2 * v437) & 0xE1197D7E);
  v439 = v430 ^ 0xE3F91E96;
  v440 = ((v430 ^ 0x1E96) >> 8);
  v441 = v440 - 741406199 - (((v430 ^ 0xE3F91E96) >> 7) & 0x12);
  v442 = (v427 ^ 0x62BECC8C) >> 24;
  v443 = *&v436[4 * (v440 ^ 0x95)] ^ *&v433[4 * (v442 ^ 0xC0)] ^ v441 ^ (BYTE2(v429) + 1136527611 - ((v429 >> 15) & 0x1F6)) ^ *&v435[4 * (BYTE2(v429) ^ 0x47)];
  v444 = *(&off_286999DF0 + (v432 ^ 0xE9)) - 4;
  v445 = *&v433[4 * (HIBYTE(v429) ^ 0xC0)];
  v446 = (v443 + 1888272063 - ((2 * v443) & 0xE1197D7E)) ^ *&v444[4 * v426];
  v447 = (BYTE2(v439) + 1136527611 - ((v439 >> 15) & 0x1F6)) ^ (BYTE1(v426) - 741406199 - ((v426 >> 7) & 0x12)) ^ *&v435[4 * (BYTE2(v439) ^ 0x47)] ^ *&v436[4 * (BYTE1(v426) ^ 0x95)] ^ ((v445 ^ -v445 ^ ((HIBYTE(v429) ^ 0x5EF1B5E0) - (HIBYTE(v429) ^ 0x5EF1B5E0 ^ v445))) + (HIBYTE(v429) ^ 0x5EF1B5E0));
  v448 = HIBYTE(v439);
  LODWORD(v433) = *&v433[4 * (HIBYTE(v439) ^ 0xC0)];
  v449 = ((v427 ^ 0xCC8C) >> 8);
  LODWORD(v436) = *&v436[4 * (v449 ^ 0x95)];
  v450 = v449 - 741406199 - (((v427 ^ 0x62BECC8C) >> 7) & 0x12);
  v451 = *&v444[4 * v439];
  v452 = *&v444[4 * (v427 ^ 0xDD)];
  v453 = *&v444[4 * v429];
  v454 = v448 ^ (BYTE2(v426) + 1136527611 - ((v426 >> 15) & 0x1F6)) ^ v450 ^ v433 ^ *&v435[4 * (BYTE2(v426) ^ 0x47)] ^ v436;
  v455 = v454 + 1888272063 - ((2 * v454) & 0xE1197D7E);
  v456 = v442 ^ 0xE66DC5FD ^ v446;
  v457 = v485 ^ v451 ^ v438;
  v458 = v452 ^ v484 ^ (v447 + 1888272063 - ((2 * v447) & 0xE1197D7E));
  v459 = HIDWORD(v482);
  if ((v446 & HIDWORD(v482)) != 0)
  {
    v459 = HIDWORD(a5);
  }

  v460 = *(v7 - 200);
  v461 = HIDWORD(v484) ^ (v459 + v456);
  v462 = *(&off_286999DF0 + (v432 ^ 0xCA)) - 12;
  *(v424 + (((v460 ^ 0xA3538715) + 431644871) ^ ((v460 ^ 0x98AD59BF) + 574930541) ^ ((v460 ^ 0xC6B80407) + 2085741525)) - 1149430278 + ((((2 * v460) & 0xBE373EC0 ^ 0x72033F02) - 343328597) ^ (((2 * v460) & 0xBE373EC0 ^ 0xD861932A) + 1105958019) ^ (((2 * v460) & 0xBE373EC0 ^ 0xAE50A6A8) + 937074945))) = (-9 * v462[BYTE3(v461) ^ 0x43]) ^ 0xFD;
  v463 = v481 ^ v453 ^ v455;
  v464 = ((v463 >> 8) ^ 0x54) - ((v463 >> 8) ^ 0xB7);
  v465 = *(&off_286999DF0 + (v432 & 0x609DFB77)) - 8;
  *(v424 + *(v7 - 196)) = v465[BYTE1(v463) ^ 0x71] ^ (v464 - ((2 * v464) & 0x84) - 62) ^ 8;
  v466 = ((v458 >> 8) ^ 0x9D) - ((v458 >> 8) ^ 0x7E);
  *(v424 + *(v7 - 192)) = v465[BYTE1(v458) ^ 0xB8] ^ (v466 - ((2 * v466) & 0x84) - 62) ^ 0xF;
  *(v424 + *(v7 - 180)) = (-9 * v462[HIBYTE(v457) ^ 0x44]) ^ 0x85;
  v467 = (((v461 ^ 0xDB61D76) >> 8) ^ 0xE9) - (((v461 ^ 0xDB61D76) >> 8) ^ 0xA);
  *(v424 + *(v7 - 188)) = v465[((v461 ^ 0x1D76) >> 8) ^ 0xCCLL] ^ (v467 + (~(2 * v467) | 0x7B) - 61) ^ 0x58;
  v468 = *(&off_286999DF0 + v432 - 107) - 8;
  *(v424 + *(v7 - 168)) = ((v485 ^ v451 ^ v438) - ((2 * (v485 ^ v451 ^ v438)) & 0x26) - 109) ^ 0x73 ^ v468[(v485 ^ v451 ^ v438) ^ 0x29];
  v469 = *(&off_286999DF0 + (v432 ^ 0x9A)) - 4;
  HIDWORD(v470) = v469[BYTE2(v461) ^ 0x58];
  LODWORD(v470) = (HIDWORD(v470) ^ 0xF8) << 24;
  *(v424 + *(v7 - 160)) = (v470 >> 26) ^ 0xAB;
  *(v424 + *(v7 - 184)) = (v463 - ((2 * v463) & 0x26) - 109) ^ 0x1A ^ v468[v463 ^ 0xB8];
  HIDWORD(v470) = v469[BYTE2(v458) ^ 0xB7];
  LODWORD(v470) = (HIDWORD(v470) ^ 0xF8) << 24;
  *(v424 + *(v7 - 152)) = (v470 >> 26) ^ 0x59;
  *(v424 + *(v7 - 176)) = (-9 * v462[BYTE3(v463) ^ 0xEBLL]) ^ 0x13;
  *(v424 + *(v7 - 156)) = (v458 - ((2 * v458) & 0x26) - 109) ^ v468[v458 ^ 1] ^ 0x1E;
  *(v424 + *(v7 - 148)) = ((v461 ^ 0x76) - ((2 * (v461 ^ 0x76)) & 0x26) - 109) ^ 0xB6 ^ v468[v461 ^ 0x4FLL];
  *(v424 + *(v7 - 144)) = (-9 * v462[HIBYTE(v458) ^ 0x2ALL]) ^ 0x69;
  HIDWORD(v470) = v469[BYTE2(v457) ^ 0x20];
  LODWORD(v470) = (HIDWORD(v470) ^ 0xF8) << 24;
  *(v424 + *(v7 - 164)) = (v470 >> 26) ^ 0xC3;
  v471 = ((v457 >> 8) ^ 0x35) - ((v457 >> 8) ^ 0xD6);
  *(v424 + *(v7 - 172)) = (v471 - ((2 * v471) & 0x84) - 62) ^ 0x82 ^ v465[BYTE1(v457) ^ 0x10];
  HIDWORD(v470) = v469[BYTE2(v463) ^ 0x55];
  LODWORD(v470) = (HIDWORD(v470) ^ 0xF8) << 24;
  v472 = (((v460 ^ 0xB0B477C7) + 1330350137) ^ ((v460 ^ 0x83A8576B) + 2086119573) ^ ((v460 ^ 0x91416563) + 1857985181)) + 462819886;
  v473 = (v472 ^ 0x56A7B339) & (2 * (v472 & 0x86C733B1)) ^ v472 & 0x86C733B1;
  LODWORD(v468) = ((2 * (v472 ^ 0x5AA5B01B)) ^ 0xB8C50754) & (v472 ^ 0x5AA5B01B) ^ (2 * (v472 ^ 0x5AA5B01B)) & 0xDC6283AA;
  LODWORD(v462) = v468 ^ 0x442280AA;
  LODWORD(v468) = (v468 ^ 0x18000300) & (4 * v473) ^ v473;
  v474 = ((4 * v462) ^ 0x718A0EA8) & v462 ^ (4 * v462) & 0xDC6283A8;
  LODWORD(v468) = (v474 ^ 0x500202A0) & (16 * v468) ^ v468;
  v475 = ((16 * (v474 ^ 0x8C608102)) ^ 0xC6283AA0) & (v474 ^ 0x8C608102) ^ (16 * (v474 ^ 0x8C608102)) & 0xDC6283A0;
  LODWORD(v468) = v468 ^ 0xDC6283AA ^ (v475 ^ 0xC4200200) & (v468 << 8);
  LODWORD(v468) = v472 ^ (2 * ((v468 << 16) & 0x5C620000 ^ v468 ^ ((v468 << 16) ^ 0x3AA0000) & (((v475 ^ 0x1842810A) << 8) & 0xDC620000 ^ 0x1C600000 ^ (((v475 ^ 0x1842810A) << 8) ^ 0x62830000) & (v475 ^ 0x1842810A))));
  *(v424 + *(v7 - 140)) = (v470 >> 26) ^ 0xEA;
  v476 = (((v468 ^ 0x69E76698) + 168028238) ^ ((v468 ^ 0xAFCDE251) - 869700475) ^ ((v468 ^ 0xF86CB02C) - 1685569798)) - 1633277861;
  v477 = *(v7 - 204) ^ (v476 < 0xFC48E28C);
  v478 = v476 < *(v7 - 136);
  if (v477)
  {
    v478 = *(v7 - 204);
  }

  return (*(v515 + 8 * ((863 * v478) ^ v432)))(v465, v461, 132, v446, 38, 184, v463, 38, a2, a3, a4, a5, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, v498, v499, v500);
}

uint64_t sub_25858D45C()
{
  v5 = v2 + 681;
  v6 = (v1 + v3 + 41);
  *(v6 - 1) = 0u;
  *v6 = 0u;
  return (*(v4 + 8 * ((((v0 & 0xFFFFFFE0) != 32) * ((v5 - 480) ^ 0x15C)) | (v5 + 87))))();
}

void sub_25858D4A8(uint64_t a1, _BYTE *a2)
{
  v4 = *(v2 + 16);
  v3 = (v2 + 16);
  a2[16] = *a2 ^ v4;
  v5 = a2 + 16;
  v5[1] = *(v5 - 15) ^ v3[1];
  v5[2] = *(v5 - 14) ^ v3[2];
  v5[3] = *(v5 - 13) ^ v3[3];
  v5[4] = *(v5 - 12) ^ v3[4];
  v5[5] = *(v5 - 11) ^ v3[5];
  v5[6] = *(v5 - 10) ^ v3[6];
  v5[7] = *(v5 - 9) ^ v3[7];
  v5[8] = *(v5 - 8) ^ v3[8];
  v5[9] = *(v5 - 7) ^ v3[9];
  v5[10] = *(v5 - 6) ^ v3[10];
  v5[11] = *(v5 - 5) ^ v3[11];
  v5[12] = *(v5 - 4) ^ v3[12];
  v5[13] = *(v5 - 3) ^ v3[13];
  v5[14] = *(v5 - 2) ^ v3[14];
  v5[15] = *(v5 - 1) ^ v3[15];
  JUMPOUT(0x25858D5C8);
}

uint64_t sub_25858D9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned __int8 *a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v34 = 2 * a5;
  v27 = &a17;
  v28 = 2021301169 * (((v27 | 0x6A0C1E51) - v27 + (v27 & 0x95F3E1A8)) ^ 0xE1FA49F1);
  a18 = v25;
  a23 = v26;
  LODWORD(a19) = v23 - v28 - 104;
  a20 = a13;
  a21 = v25 + 36;
  LOBYTE(a17) = (-79 * (((v27 | 0x51) - v27 + (v27 & 0xA8)) ^ 0xF1)) ^ 0x5D;
  LODWORD(a22) = ((a5 ^ 0x1F293A9F) + ((2 * a5) & 0x3E52753E) - 352323584) ^ v28;
  (*(v24 + 8 * (v23 ^ 0x336)))(&a17);
  v30 = &a13[56 * *a13 + 8];
  v31 = 2072138273 * ((((2 * &a17) | 0x2A1C19B6) - &a17 + 1794241317) ^ 0x7CBBAE38);
  a21 = a11;
  a22 = v26;
  a19 = v30;
  LODWORD(a18) = (v23 - 954) ^ v31;
  HIDWORD(a18) = (v34 & 0xDEFDD7E0) - v31 + ((((v23 + 577673438) & 0xDD91674F) - 1369) & a5 ^ 0x6F7EEBF9) - 725745664;
  a17 = v26;
  v32 = (*(v24 + 8 * (v23 ^ 0x32D)))(&a17);
  return (*(v24 + 8 * ((44 * (a20 != 95751194)) ^ v23)))(v32);
}

uint64_t sub_25858E174(uint64_t a1, int8x16_t *a2, uint64_t a3, uint64_t a4, int a5, double a6, __n128 a7, __n128 a8, __n128 a9, int8x16_t a10, double a11, int8x16_t a12)
{
  v19 = (a1 ^ a4) & (v15 - 16);
  v20 = v17;
  v21.i64[0] = vqtbl4q_s8(*(&a7 - 1), a10).u64[0];
  *&v21.i64[1] = a11;
  v22 = vrev64q_s8(vmulq_s8(v21, a12));
  *a2 = veorq_s8(veorq_s8(veorq_s8(*(v13 + v19 - 15), *a2), veorq_s8(*(v12 + v19 - 15), *(v14 + v19 - 15))), vextq_s8(v22, v22, 8uLL));
  return (*(v18 + 8 * (((a3 != 16) * a5) ^ v16)))();
}

uint64_t sub_25858E180(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12)
{
  v14 = (a1 - 954) | 0xC0;
  v15 = (((a12 - 856683393) ^ 0xDF47C926) + 831835810) ^ (a12 - 856683393) ^ (((a12 - 856683393) ^ 0xB57EEC6E) + 1538124778) ^ (((a12 - 856683393) ^ 0x84EA20EB) + 1782129749 + *(v13 - 220)) ^ (((a12 - 856683393) ^ 0xFFFFFD1B ^ v14) + 288160349);
  v16 = (v14 - 992068005) & 0x3B21C3FC;
  *(v13 - 220) = v16;
  v17 = (v16 - 777) & v15;
  v19 = v15 != 288159864 && v17 == 8;
  v20 = *(v12 + 8 * ((2 * v19) | (16 * v19) | v14));
  *(v13 - 224) = -42899;
  return v20();
}

uint64_t sub_25858E2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, unint64_t a33, uint64_t a34, int a35, char a36, int a37, unsigned int a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, int a51)
{
  v54 = v52 + a38;
  STACK[0xD30] = a33;
  STACK[0xD38] = &a36;
  STACK[0xD48] = &a51;
  *(v53 - 152) = v51 - 44841361 * ((v53 - 152) ^ 0x606EFD5C) + 1032;
  STACK[0xD40] = v54;
  (*(a1 + 8 * (v51 + 1303)))(v53 - 152);
  return (*(a34 + 8 * (((*(v53 - 112) == 95751194) * ((9 * (v51 ^ 0x12E)) ^ 0x337)) | v51)))();
}

uint64_t sub_25858E3C0@<X0>(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  v7 = a1 + 2;
  v7[-1] = a2;
  *v7 = a2;
  return (*(v5 + 8 * (((v2 + 32 == v3) * v4) ^ v6)))();
}

uint64_t sub_25858E418@<X0>(int a1@<W7>, __int16 a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v8 = a2 & 0x597;
  v9 = a1 + ((v8 - 67913239) & 0xD2407FF0) + 412;
  a6 = (v8 - 790) ^ (1021229753 * ((((&a6 | 0x540C25F8) ^ 0xFFFFFFFE) - (~&a6 | 0xABF3DA07)) ^ 0x151E61ED));
  v10 = (*(v7 + 8 * (v8 + 538)))(&a6);
  return (*(v7 + 8 * (((a7 == 0) * (v9 ^ 0x15C)) ^ v8)))(v10);
}

uint64_t sub_25858E588@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>, __n128 a4@<Q1>, int8x16_t a5@<Q4>, uint64_t a6@<D5>, int8x16_t a7@<Q6>)
{
  v17 = v15 - 16;
  v18 = (v17 - 1) & 0xF;
  v20.i64[0] = vqtbl4q_s8(*(&a4 - 1), a5).u64[0];
  v20.i64[1] = a6;
  v21 = vrev64q_s8(vmulq_s8(v20, a7));
  *(a3 + v17) = veorq_s8(veorq_s8(veorq_s8(*(v11 + v18 - 15), *(v10 + v17)), veorq_s8(*(v18 + v12 - 13), *(v18 + v13 - 9))), vextq_s8(v21, v21, 8uLL));
  return (*(v16 + 8 * (((a1 == 16) * a2) ^ v14)))();
}

uint64_t sub_25858E600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, int a14, int a15, uint64_t a16, uint64_t a17, int *a18, unsigned int a19)
{
  v26 = *(v19 + 16);
  v27 = ((((2 * (&a16 ^ 0x6ACCA1B9)) | 0xA0292EF4) - (&a16 ^ 0x6ACCA1B9) + 803956870) ^ 0x536D9420) * v23;
  LODWORD(a17) = v27 ^ (v24 + 10);
  HIDWORD(a17) = v25 + 984 + v27;
  a16 = v22;
  (*(v21 + 8 * (v25 + 1275)))(&a16);
  v28 = *(v20 + 16) - ((2 * *(v20 + 16)) & 0x2C89EC70) + 373618232;
  v29 = 44841361 * ((((2 * &a16) | 0xABDEF60E) - &a16 - 1441757959) ^ 0x3581865B);
  a16 = v20 + 80;
  LODWORD(a17) = v28 ^ v29;
  HIDWORD(a17) = v25 + 564070517 - v29;
  (*(v21 + 8 * (v25 + 1411)))(&a16);
  v30 = *(v20 + 20) + ((v25 - 8) ^ 0x1644F697) - ((2 * *(v20 + 20)) & 0x2C89EC70);
  v31 = 44841361 * (((&a16 | 0x1D8D653A) - &a16 + (&a16 & 0xE2729AC0)) ^ 0x7DE39866);
  a16 = v20 + 84;
  LODWORD(a17) = v30 ^ v31;
  HIDWORD(a17) = v25 + 564070517 - v31;
  (*(v21 + 8 * (v25 ^ 0x68D)))(&a16);
  v32 = 439532179 * (((&a16 | 0xBDD9EF6B) - (&a16 & 0xBDD9EF6B)) ^ 0x637FD2E9);
  a19 = v32 ^ 0xBC6B3AAD;
  a17 = v22;
  a18 = &a12;
  LODWORD(a16) = v32 + v25 + 1000;
  HIDWORD(a16) = 752870518 - v32;
  (*(v21 + 8 * (v25 ^ 0x6A5)))(&a16);
  v33 = *(v20 + 4);
  *v20 += a12;
  *(v20 + 4) = v33 + a13;
  v34 = *(v20 + 12);
  *(v20 + 8) += a14;
  *(v20 + 12) = v34 + a15;
  a16 = v20;
  a17 = v22;
  LODWORD(a18) = (v25 + 599971971) ^ (1021229753 * (((&a16 | 0xE5E1CBE2) - &a16 + (&a16 & 0x1A1E3418)) ^ 0x5B0C7008));
  (*(v21 + 8 * (v25 ^ 0x55A)))(&a16);
  v35 = 2072138273 * (((&a16 | 0xCFEAE7B8) - (&a16 & 0xCFEAE7B8)) ^ 0x265F455B);
  a16 = v20;
  LODWORD(a17) = v35 ^ 0x5FA4E13B;
  HIDWORD(a17) = v25 + 984 + v35;
  (*(v21 + 8 * (v25 + 1275)))(&a16);
  *v26 = *v20 - ((2 * *v20) & 0x38) - 100;
  v26[1] = *(v20 + 1) - ((2 * *(v20 + 1)) & 0x38) - 100;
  v26[2] = *(v20 + 2) - ((2 * *(v20 + 2)) & 0x38) - 100;
  v26[3] = *(v20 + 3) - ((2 * *(v20 + 3)) & 0x38) - 100;
  v26[4] = *(v20 + 4) - ((2 * *(v20 + 4)) & 0x38) - 100;
  v26[5] = *(v20 + 5) - ((2 * *(v20 + 5)) & 0x38) - 100;
  v26[6] = *(v20 + 6) - ((2 * *(v20 + 6)) & 0x38) - 100;
  v26[7] = *(v20 + 7) - ((2 * *(v20 + 7)) & 0x38) - 100;
  v26[8] = *(v20 + 8) - ((2 * *(v20 + 8)) & 0x38) - 100;
  v26[9] = *(v20 + 9) - ((2 * *(v20 + 9)) & 0x38) - 100;
  v26[10] = *(v20 + 10) - ((2 * *(v20 + 10)) & 0x38) - 100;
  v26[11] = *(v20 + 11) - ((2 * *(v20 + 11)) & 0x38) - 100;
  v26[12] = *(v20 + 12) - ((2 * *(v20 + 12)) & 0x38) - 100;
  v26[13] = *(v20 + 13) - ((2 * *(v20 + 13)) & 0x38) - 100;
  v26[14] = *(v20 + 14) - ((2 * *(v20 + 14)) & 0x38) - 100;
  v26[15] = *(v20 + 15) - ((2 * *(v20 + 15)) & 0x38) - 100;
  v36 = 2072138273 * (((&a16 | 0xF3B53257) - &a16 + (&a16 & 0xC4ACDA8)) ^ 0x1A0090B4);
  a16 = v20;
  LODWORD(a17) = v36 ^ 0x5FA4E13B;
  HIDWORD(a17) = v25 + 984 + v36;
  (*(v21 + 8 * (v25 ^ 0x505)))(&a16);
  LODWORD(a18) = (v25 + 599971971) ^ (1021229753 * ((494415577 - (&a16 | 0x1D782ED9) + (&a16 | 0xE287D126)) ^ 0x5C6A6ACC));
  a16 = v20;
  a17 = v22;
  (*(v21 + 8 * (v25 ^ 0x55A)))(&a16);
  v37 = 2072138273 * (((&a16 | 0xA78FF1DC) - (&a16 & 0xA78FF1DC)) ^ 0x4E3A533F);
  LODWORD(a17) = v37 ^ 0x5FA4E13B;
  HIDWORD(a17) = v25 + 984 + v37;
  a16 = v20;
  v38 = (*(v21 + 8 * (v25 ^ 0x505)))(&a16);
  v26[4] = *v20 - ((2 * *v20) & 0x38) - 100;
  v26[5] = *(v20 + 1) - ((2 * *(v20 + 1)) & 0x38) - 100;
  v26[6] = *(v20 + 2) - ((2 * *(v20 + 2)) & 0x38) - 100;
  v26[7] = *(v20 + 3) - ((2 * *(v20 + 3)) & 0x38) - 100;
  v26[8] = *(v20 + 4) - ((2 * *(v20 + 4)) & 0x38) - 100;
  v26[9] = *(v20 + 5) - ((2 * *(v20 + 5)) & 0x38) - 100;
  v26[10] = *(v20 + 6) - ((2 * *(v20 + 6)) & 0x38) - 100;
  v26[11] = *(v20 + 7) - ((2 * *(v20 + 7)) & 0x38) - 100;
  v26[12] = *(v20 + 8) - ((2 * *(v20 + 8)) & 0x38) - 100;
  v26[13] = *(v20 + 9) - ((2 * *(v20 + 9)) & 0x38) - 100;
  v26[14] = *(v20 + 10) - ((2 * *(v20 + 10)) & 0x38) - 100;
  v26[15] = *(v20 + 11) - ((2 * *(v20 + 11)) & 0x38) - 100;
  v26[16] = *(v20 + 12) - ((2 * *(v20 + 12)) & 0x38) - 100;
  v26[17] = *(v20 + 13) - ((2 * *(v20 + 13)) & 0x38) - 100;
  v26[18] = *(v20 + 14) - ((2 * *(v20 + 14)) & 0x38) - 100;
  v26[19] = *(v20 + 15) - ((2 * *(v20 + 15)) & 0x38) - 100;
  *v20 = 0;
  *(v20 + 8) = 0;
  *(v20 + 16) = 0;
  *(v20 + 24) = 0u;
  *(v20 + 40) = 0u;
  v39 = ((v25 + 874) ^ 0x401) != 64;
  return (*(v21 + 8 * (((8 * v39) | (16 * v39)) ^ (v25 - 8))))(v38);
}

uint64_t sub_25858ED64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14, __int128 a15, __int128 a16)
{
  *(&a14 + 7) = 0u;
  *(&a15 + 7) = 0u;
  *(&a16 + 7) = 0;
  HIBYTE(a16) = 0;
  v18 = (*(v16 + 8 * (v17 + 512)))();
  v19 = (*(v16 + 8 * (v17 ^ 0x231)))(a10, &a14 + 7, 41, v18);
  return (*(v16 + 8 * (((v19 == 0) * (3 * ((v17 - 864794629) & 0x338BB7FF ^ 0x3A4) - 76)) ^ v17)))(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11);
}

uint64_t sub_25858EE30@<X0>(char a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v18 = &a15 + v16;
  *v18 = 0x9C9C9C9C9C9C9C9CLL;
  *(v18 + 1) = 0x9C9C9C9C9C9C9C9CLL;
  return (*(v17 + 8 * ((1356 * (((v15 - 637905317) & 0x2605AAFB) - 713 == (a1 & 0x30))) ^ v15)))();
}

uint64_t sub_25858EECC(__n128 a1)
{
  v3[-1] = a1;
  *v3 = a1;
  return (*(v5 + 8 * (((v4 != 0) * v2) | v1)))();
}

uint64_t sub_25858EF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, unsigned int a52, char a53)
{
  *(v56 - 144) = v53 + a52;
  *(v56 - 136) = &STACK[0x28C];
  *(v56 - 160) = a45;
  *(v56 - 152) = &a53;
  *(v56 - 168) = v54 - 44841361 * ((v56 - 902899561 - 2 * ((v56 - 168) & 0xCA2ED93F)) ^ 0xAA402463) + 883;
  v57 = (*(v55 + 8 * (v54 + 1154)))(v56 - 168);
  return (*(v55 + 8 * (((*(v56 - 128) == 95751194) * (v54 + 504)) ^ v54)))(v57);
}

uint64_t sub_25858F578@<X0>(_OWORD *a1@<X1>, char a2@<W3>, uint64_t a3@<X8>)
{
  v6 = a1[1];
  v7 = (v4 + a3);
  *v7 = *a1;
  v7[1] = v6;
  return (*(v5 + 8 * ((1503 * (((v3 + 606) ^ 0x3A5) == (a2 & 0x60))) ^ v3)))();
}

uint64_t sub_25858F5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, int *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v36 = (a30 + 4 * v31);
  v37 = *v36;
  v38 = (*(*a25 + (*a26 & 0xFFFFFFFF95130ABCLL)) ^ v36) & (v35 + 670542442);
  v39 = (1999407021 * v38) ^ ((1999407021 * v38) >> 16);
  LODWORD(v36) = 1999407021 * v39;
  *(a31 + 4 * v31) ^= v37 ^ (v33 - (v34 - 620) < ~(v34 - 620)) ^ *(*(&off_286999DF0 + (v35 ^ (v35 + 65))) + (v36 >> 24) - 2) ^ *(*(&off_286999DF0 + v34 - 547) + (v36 >> 24)) ^ *(*(&off_286999DF0 + (v35 ^ (v35 + 40))) + (v36 >> 24) - 1) ^ (-2018705408 * v39) ^ v36 ^ (98283633 * (v36 >> 24));
  return (*(a3 + 8 * ((504 * ((v35 ^ (v32 - 1 == v35 - 1476941205)) & 1)) ^ (v35 - 1476940444))))();
}

uint64_t sub_25858F714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, _DWORD *a23, uint64_t a24, uint64_t (*a25)(void))
{
  v30 = (((v27 ^ 0xBAB7273B) + 1162401989) ^ ((v27 ^ 0xE35079B5) + 481265227) ^ ((v27 ^ 0x37306614) - 925918740)) + (((a23[18] ^ 0x69573EEE) - 1767325422) ^ ((a23[18] ^ 0xA4B57D74) + 1531609740) ^ ((a23[18] ^ 0xA3357B00) + 1556776192)) + 1300431360;
  v31 = (v30 ^ 0xE2A6F24) & (2 * (v30 & 0x902B6F34)) ^ v30 & 0x902B6F34;
  v32 = ((2 * (v30 ^ 0xE7AE34C)) ^ 0x3CA318F0) & (v30 ^ 0xE7AE34C) ^ (2 * (v30 ^ 0xE7AE34C)) & 0x9E518C78;
  v33 = v32 ^ 0x82508408;
  v34 = (v32 ^ 0x10870) & (4 * v31) ^ v31;
  v35 = ((4 * v33) ^ 0x794631E0) & v33 ^ (4 * v33) & 0x9E518C78;
  v36 = (v35 ^ 0x18400060) & (16 * v34) ^ v34;
  v37 = ((16 * (v35 ^ 0x86118C18)) ^ 0xE518C780) & (v35 ^ 0x86118C18) ^ (16 * (v35 ^ 0x86118C18)) & 0x9E518C70;
  v38 = v36 ^ 0x9E518C78 ^ (v37 ^ 0x84108400) & (v36 << 8);
  v39 = (((v28 ^ 0xDF5054CB) + 548383541) ^ ((v28 ^ 0x3FE4F700) - 1071970048) ^ ((v28 ^ 0x8E639B51) + 1906074799)) + (((a23[19] ^ 0x9A7E055) - 161996885) ^ ((a23[19] ^ 0xCA26C46D) + 903429011) ^ ((a23[19] ^ 0xAD561CA2) + 1386865502)) + 635234345;
  a23[18] = v30 ^ (2 * ((v38 << 16) & 0x1E510000 ^ v38 ^ ((v38 << 16) ^ 0xC780000) & (((v37 ^ 0x1A410878) << 8) & 0x1E510000 ^ 0xE510000 ^ (((v37 ^ 0x1A410878) << 8) ^ 0x518C0000) & (v37 ^ 0x1A410878)))) ^ 0xDAFF4F5E;
  a23[19] = v39 ^ ((v39 ^ 0x5F5EBDA7) - 393268050) ^ ((v39 ^ 0xD2446B26) + 1704321581) ^ ((v39 ^ 0x33CB5F8B) - 2078615934) ^ ((v39 ^ 0xF6FFFFFF) + 1093564150) ^ 0x26F94E6F;
  v40 = (((v26 ^ 0x5145BF1C) - 1363525404) ^ ((v26 ^ 0xFC00658) - 264242776) ^ ((v26 ^ 0x305281DE) - 810713566)) + (((a23[20] ^ 0x1BFCAF7) - 29346551) ^ ((a23[20] ^ 0x498EAA0B) - 1234086411) ^ ((a23[20] ^ 0x26E65866) - 652630118)) + 222220383;
  v41 = (((v25 ^ 0xA6E65F25) + 1494851803) ^ ((v25 ^ 0x8060B642) + 2141145534) ^ ((v25 ^ 0x4851D1FD) - 1213321725)) + (((a23[21] ^ 0x63849EA2) - 1669635746) ^ ((a23[21] ^ 0x8B5F6E93) + 1956680045) ^ ((a23[21] ^ 0x860CC8AB) + 2045982549)) + 196850465;
  v42 = (v41 ^ 0x91E0BED2) & (2 * (v41 & 0xD1F2BE13)) ^ v41 & 0xD1F2BE13;
  v43 = ((2 * (v41 ^ 0x114486D6)) ^ 0x816C718A) & (v41 ^ 0x114486D6) ^ (2 * (v41 ^ 0x114486D6)) & 0xC0B638C4;
  v44 = v43 ^ 0x40920845;
  v45 = (v43 ^ 0x80043080) & (4 * v42) ^ v42;
  v46 = ((4 * v44) ^ 0x2D8E314) & v44 ^ (4 * v44) & 0xC0B638C4;
  v47 = v45 ^ 0xC0B638C5 ^ (v46 ^ 0x902000) & (16 * v45);
  v48 = (16 * (v46 ^ 0xC02618C1)) & 0xC0B638C0 ^ 0xC0943085 ^ ((16 * (v46 ^ 0xC02618C1)) ^ 0xB638C50) & (v46 ^ 0xC02618C1);
  v49 = (v47 << 8) & 0xC0B63800 ^ v47 ^ ((v47 << 8) ^ 0xB638C500) & v48;
  a23[20] = v40 ^ ((v40 ^ 0xA17F9744) + 1896888209) ^ ((v40 ^ 0x30BBE895) - 522958782) ^ ((v40 ^ 0x41A85F0C) - 1849163815) ^ ((v40 ^ 0xFFFC7FF6) + 798220067) ^ 0x414767B1;
  a23[21] = v41 ^ (2 * ((v49 << 16) & 0x40B60000 ^ v49 ^ ((v49 << 16) ^ 0x38C50000) & ((v48 << 8) & 0x40B60000 ^ 0x40860000 ^ ((v48 << 8) ^ 0x36380000) & v48))) ^ 0x3F21F703;
  return a25();
}

uint64_t sub_25858F768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, int a18, int a19, uint64_t a20, uint64_t a21)
{
  a18 = a11;
  a19 = a12 + v23 + 67;
  a20 = a14;
  (*(v22 + 8 * (v23 + 1208)))(&a18);
  a20 = a14;
  a21 = v21;
  a18 = a10 + v23 + 376;
  (*(v22 + 8 * (v23 + 1257)))(&a18);
  v24 = a17 - 469501901 >= ((v23 + 1663625563) & 0x9CD717BE ^ 0xFFFFFDFE);
  return (*(v22 + 8 * (((4 * v24) | (16 * v24)) ^ v23)))((a17 - 64));
}

uint64_t sub_25858F8A8()
{
  *(v5 - 160) = v2;
  *(v5 - 156) = 224998050;
  v6 = **(v1 + 8 * (v0 & 0x2FC2E4A7));
  v7 = v5 - 152;
  v8 = 1511064119 * ((v5 - 152 + v4 - 2 * ((v5 - 152) & v4)) ^ 0xC04F56F1A337486ELL);
  *(v5 - 112) = (v0 - 1403262221) ^ v8;
  *(v7 + 8) = v6 - v8;
  v9 = v0 - 2059732922 - v8;
  *(v5 - 132) = v8 + v0 - 2059732922 + 13;
  *(v5 - 128) = v9 + 105;
  *(v7 + 32) = v8;
  *(v5 - 152) = v9;
  *(v5 - 136) = -1511064119 * ((v5 - 152 + v4 - 2 * ((v5 - 152) & v4)) ^ 0xA337486E);
  v10 = (*(v3 + 8 * (v0 ^ 0x63B)))(v5 - 152);
  return (*(v3 + 8 * *(v5 - 108)))(v10);
}

uint64_t sub_25858F9C8@<X0>(int a1@<W1>, uint64_t a2@<X7>, uint64_t a3@<X8>)
{
  v10 = (a1 - 209) | 0xA4u;
  v11 = (((v10 - 1153) | 0x2C4u) ^ 0x2E8) & (v6 - v8 - 1);
  v13.val[0].i64[0] = v11;
  v13.val[0].i64[1] = (v6 - v8 + 14) & 0xF;
  v13.val[1].i64[0] = (v6 - v8 + 13) & 0xF;
  v13.val[1].i64[1] = (v6 - v8 + 12) & 0xF;
  v13.val[2].i64[0] = (v6 - v8 + 11) & 0xF;
  v13.val[2].i64[1] = (v6 - v8 + 10) & 0xF;
  v13.val[3].i64[0] = (v6 - v8 + 9) & 0xF;
  v13.val[3].i64[1] = (v6 - v8) & 0xF ^ 8;
  *(a2 + -8 - v8 + v6) = veor_s8(veor_s8(veor_s8(*(v5 + v11 - 7), *(a3 + -8 - v8 + v6)), veor_s8(*(v11 + v4 - 6), *(v11 + v3 - 3))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v13, xmmword_2585D2450), 0x2F2F2F2F2F2F2F2FLL)));
  return (*(v9 + 8 * ((117 * (((v10 - 1164) & v7) - 8 != v8)) ^ v10)))(xmmword_2585D2450);
}

uint64_t sub_25858FCF4@<X0>(uint64_t a1@<X8>)
{
  *(a1 + v2) = ((v1 ^ 0xBD) - 29) ^ *(v5 + v2);
  v7 = v2 + 1;
  v9 = v7 > 0xDB903840 || v7 + v3 >= v4;
  return (*(v6 + 8 * ((8 * v9) | (16 * v9) | v1)))();
}

void sub_25858FD40(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v27 = (((v26 ^ 0x3CCA2BD6) - 1019882454) ^ ((v26 ^ 0x971B38EC) + 1759823636) ^ ((a2 ^ 0x3AF9D6AF) + (v26 ^ 0xC5062BA0))) - 562761734 + (((*(a26 + 88) ^ 0xBC69150E) + 1133964018) ^ ((*(a26 + 88) ^ 0x53494856) - 1397311574) ^ ((*(a26 + 88) ^ 0x81F765C2) + 2114492990));
  *(a26 + 88) = v27 ^ ((v27 ^ 0x47BCF12) - 79540692) ^ ((v27 ^ 0xA9F27F9A) + 1456209572) ^ ((v27 ^ 0x5AB061B1) - 1517690743) ^ ((v27 ^ 0xF7FFAFFF) + 147205831) ^ 0x6E11465C;
  JUMPOUT(0x25858FE88);
}

uint64_t sub_258590650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = v12 ^ (v177 - ((2 * v177) & 0x131DC8BBCLL) - 0x5F163C4F6711BA22);
  v15 = (-v14 ^ ((v181 << 32) - (v14 ^ (v181 << 32))) ^ 0xDB229ECBD5E19297 ^ (v14 - ((2 * v14) & 0xB6453D97ABC3252ELL) + ((v13 + 525058) | 0x58005110u) - 0x24DD61348226C2FELL)) + (v181 << 32);
  v16 = a3 ^ a7;
  v17 = v15 ^ v10;
  v18 = a3 ^ v11 ^ 0xA017E3443878B67;
  v19 = (v17 ^ 0xAD2E76A347E6E925) & (v15 ^ 0x9E89BBB8401AA397);
  v20 = v18 ^ 0x1E38736D6121C29DLL ^ (a3 ^ a7) & 0x613D515E855DD51CLL ^ (v15 ^ 0x4B15193AB88974) & (a3 ^ a7 ^ 0xCC6B3F2486675E11);
  v21 = v15 & 0x9CA402E94BA01E5ALL;
  v22 = v11 & 0xB859BA7FC30B4C31 ^ v15 ^ 0x517FC469BEE45C49 ^ (v17 ^ 0x762C31CA30B244B1) & (v11 ^ 0x3689C42E2DA5B1E5);
  v23 = v21 ^ a3 ^ a7 ^ v19;
  v24 = (a3 ^ 0x5B90C48A8FA892C1) & (v11 ^ 0x3B3F5B7478E36F83) ^ a3 & 0xF24960A5AAB92199 ^ v17;
  v25 = (v22 - ((2 * v22) & 0x157DF0F91011996ALL) - 0x7541078377F7334BLL) ^ v23;
  v26 = ((((v23 ^ 0xAF14C2733998A3FCLL) - (v23 ^ 0xB997083F761F41F9)) ^ 0xFFFFFFFFFFFFFFFELL) + (v23 ^ 0xAF14C2733998A3FCLL)) ^ v20;
  v27 = (v18 ^ 0x1E38736D6121C29DLL) & 0xE9F31DB1CA9CBA7DLL ^ v11 ^ 0xA017E3443878B67 ^ (a3 ^ a7 ^ 0xDA67DD6AB3041B93) & (v18 ^ 0x98E7816F1E7557BCLL);
  v28 = (v24 ^ 0xF145F5A87BBFC6BDLL) - 1;
  v29 = v26 >> 28;
  if (((v28 & v24 & 0x8000000000000000) != 0) != v7)
  {
    v30 = 0;
  }

  else
  {
    v30 = v24 ^ 0xF145F5A87BBFC6BDLL;
  }

  v31 = ~(v26 >> 28) & 2;
  v32 = v26 ^ 0xF51230051CFD843 ^ (v26 >> 19) ^ ((v26 ^ 0xF51230051CFD843) << 36) ^ ((v26 ^ 0xF51230051CFD843) << 45) ^ 0x7329D9B4644E1A6BLL;
  v33 = v32 ^ v31;
  v34 = (v32 & v31) == 0;
  v35 = v32 - v31;
  if (!v34)
  {
    v33 = v35;
  }

  v36 = v27 ^ v24;
  *(&v38 + 1) = v27 ^ v24 ^ 0xE6961EE1EE9FC758;
  *&v38 = *(&v38 + 1) ^ (*(&v38 + 1) << 47);
  v37 = v38 >> 18;
  v39 = (v25 >> 61) ^ (v25 >> 39) ^ v25 ^ 0x1A6865C4CE9B0D40 ^ (8 * (v25 ^ 0x1A6865C4CE9B0D40)) ^ ((v25 ^ 0x1A6865C4CE9B0D40) << 25);
  *(&v38 + 1) = v37 ^ (*(&v38 + 1) << 36) ^ 0x22F03BB76BB9;
  *&v38 = v37 ^ 0xBEF1000000000000;
  v40 = (v36 >> 17) ^ (v36 >> 10) ^ ((v38 >> 46) - ((2 * (v38 >> 46)) & 0x12E319B192680C2CLL) + 0x9718CD8C9340616);
  v41 = v39 ^ 0x9E471D01DF0C752;
  v42 = v24 ^ 0xF145F5A87BBFC6BDLL ^ (v24 >> 1) ^ (v30 << 58) ^ (v30 >> 6) ^ (v30 << 63);
  v43 = v40 ^ 0xE2E8E5521E1C93E4;
  v44 = v39 ^ 0x9E471D01DF0C752 ^ v42;
  v45 = v20 ^ 0x8E303B0E54A1FE3CLL ^ (v20 >> 7) ^ ((v20 ^ 0x8E303B0E54A1FE3CLL) << 23) ^ ((v20 ^ 0x8E303B0E54A1FE3CLL) << 57) ^ (((v20 ^ 0x8E303B0E54A1FE3CLL) - ((2 * (v20 ^ 0x8E303B0E54A1FE3CLL)) & 0x325C6AFB856) + 0x192E357DC2BLL) >> 41);
  v46 = v45 ^ 0xBB6EE82C6281D52DLL ^ v29 & 0xFFFFFFFFFFFFFFFDLL ^ v33;
  v47 = v40 ^ 0xE2E8E5521E1C93E4 ^ v45 ^ 0xBB6EE82C6281D52DLL;
  v48 = v39 & 0x2E1794C1AEABB9D2 ^ (v39 ^ 0x8E8862AAC9BF0D22) & (v42 ^ 0x56B56E1593745A8CLL) ^ v46 ^ 0x3A1B5692AB98BF3BLL;
  v49 = v46 & 0x675942ECB4C2A3B7 ^ v47 ^ (v46 ^ 0x458D77A78AF1FD0BLL) & (v39 ^ 0x162EDFB98282516ALL);
  v50 = (v46 ^ 0x7A8FE123C6AD2645) & (v47 ^ 0xA77E364F989BED22);
  v51 = v47 & 0xC0FD697BB3A324B1;
  v52 = (v40 ^ 0xFFE45B47F8AFE817) & (v45 ^ 0x7602DE3A2C566540) ^ v40 & 0x771EBE4C30FF26BCLL ^ v44;
  v53 = (v44 ^ 0xFFCEE9AEE990292ELL) & (v40 ^ 0xF7EAD68775A744E6);
  v54 = v49 ^ v48;
  v55 = v49 ^ v48 ^ 0xA3C8FFDF85D5177;
  v56 = v44 & 0xF7F1723F72F7530ELL ^ v41 ^ v53 ^ v48;
  v57 = v51 ^ v43 ^ v52 ^ v50;
  v58 = v57 ^ 0x25DBA69B0958D1FALL;
  *(&v38 + 1) = ~v52;
  *&v38 = v52 ^ 0x18707B8A8F9F36FELL;
  v59 = (v38 >> 1) - ((2 * (v38 >> 1)) & 0x167AB059B0D7C76) - 0x7F4C2A7D327941C5;
  v60 = (((v57 >> 10) ^ (v57 >> 17) ^ 0xC4BF065382783030) & (((v57 ^ 0x25DBA69B0958D1FALL) << 54) ^ 0x34BFFFFFFFFFFFFFLL) | ((v57 ^ 0x25DBA69B0958D1FALL) << 54) & 0x3B40000000000000) ^ (v57 << 47) ^ 0x2ED541FCBF7EF656;
  v61 = (v60 - ((2 * v60) & 0x65DCDD68F63EAF4ALL) + 0x32EE6EB47B1F57A5) ^ v58;
  *(&v38 + 1) = v56 ^ 0x167D93B7FA482E9ALL;
  *&v38 = v56 ^ 0x4000000000000000;
  v62 = v38 >> 61;
  *(&v38 + 1) = v49 ^ 0x1B;
  *&v38 = v49 ^ 0x87B0B7EC6624C680;
  v63 = v38 >> 7;
  *(&v38 + 1) = v52 ^ 0x9110022F33BDE69ALL;
  *&v38 = v52;
  v64 = ((v59 ^ (v38 >> 6) ^ 0x14D2146CE7B8C2E0) - 2 * ((v59 ^ (v38 >> 6) ^ 0x14D2146CE7B8C2E0) & 0x96079A5BC22D07FLL ^ (v59 ^ (v38 >> 6)) & 0x1A) - 0x769F865A43DD2F9BLL) ^ v52 ^ 0x9110022F33BDE69ALL;
  *&v38 = __ROR8__(v56, 39);
  v65 = ((v62 ^ v38 ^ 0x6FF4905D34ACFB27) - ((2 * (v62 ^ v38 ^ 0x6FF4905D34ACFB27)) & 0xB5ED133F6B81FF2CLL) + 0x5AF6899FB5C0FF96) ^ v56;
  *(&v38 + 1) = v49 ^ 0x92EBB77F1F135B04;
  *&v38 = v49;
  v66 = (((v38 >> 41) ^ 0x49BC9BCECFC3D85BLL ^ v63) - ((2 * ((v38 >> 41) ^ 0x49BC9BCECFC3D85BLL ^ v63)) & 0x2AB60126F26F3B3ELL) + 0x155B009379379D9FLL) ^ v49 ^ 0x92EBB77F1F135B04;
  v67 = v65 ^ 0xC8B1A284F88D10CLL;
  v68 = v61 ^ 0x147D2CDEEA4 ^ v66;
  v69 = (((v54 >> 19) ^ 0x173C1CD274ECLL ^ (v55 << 36) ^ 0x8E1328BFB78722FBLL) - 2 * (((v54 >> 19) ^ 0x173C1CD274ECLL ^ (v55 << 36) ^ 0x8E1328BFB78722FBLL) & 0x4A94A864C0116234 ^ ((v54 >> 19) ^ 0x173C1CD274ECLL) & 4) - 0x356B579B3FEE9DD0) ^ (v54 >> 28) ^ 0xCA94A86739C4C89BLL;
  v70 = (v69 - ((2 * v69) & 0xFB536AAEA91F5144) + 0x7DA9B557548FA8A2) ^ (v55 << 45) ^ 0x5BD95557548FA8A2;
  v71 = v65 ^ 0xC8B1A284F88D10CLL ^ v64;
  v72 = v66 ^ v55 ^ (v70 - ((2 * v70) & 0x6B43AAAE91C2670ELL) + 0x35A1D55748E13387);
  v73 = (v65 ^ 0xC8B1A284F88D10CLL) & ~v72 ^ v68;
  v74 = v72 ^ (v65 ^ 0xF374E5D7B0772EF3) & v64;
  v75 = v74 ^ v67;
  v76 = v72 & ~v68;
  v77 = (v61 ^ 0xFFFFFEB82D32115BLL) & v66 ^ v71;
  v78 = v74 ^ 0x6E04C15915AB860ALL ^ v73;
  v79 = v77 ^ 0x7955EAEC4D48B80CLL;
  v80 = ((v61 ^ 0x147D2CDEEA4 ^ v71) + (v61 ^ 0x147D2CDEEA4 | ~v71) + 1) ^ 0x3278F838FE43D2BCLL ^ v75;
  v73 ^= 0x26974B18501E2B14uLL;
  v81 = v61 ^ v77 ^ 0x7370AD2F82FD2592 ^ v76;
  v82 = v79 ^ (v79 >> 6) ^ ((v77 ^ 0x7955EAEC4D48B80CLL) << (v75 & 0x3F ^ 0x3C) << (v75 & 0x3F ^ 3));
  v83 = v82 & ((v77 ^ 0x7955EAEC4D48B80CLL) >> 1);
  v84 = v82 + ((v77 ^ 0x7955EAEC4D48B80CLL) >> 1);
  *&v38 = __ROR8__(v81, 10);
  v85 = v80 ^ __ROR8__(v80, 61) ^ (v80 << 25) ^ (v80 >> 39);
  v86 = v73 ^ (v73 << 23) ^ (v73 << 57);
  v87 = (v81 ^ v38) & 0xCAB83156BAE07BA3 ^ (v81 << 47) & 0xCAB8000000000000 | (v81 ^ v38) & 0x3547CEA9451F845CLL ^ (v81 << 47) & 0x3547800000000000;
  v88 = (v73 >> 7) - (v86 ^ (v73 >> 7));
  v89 = (v84 - 2 * v83) ^ (v79 << 58);
  v90 = v86 ^ -v86;
  v91 = v87 ^ (v81 >> 17);
  v92 = v90 ^ v88;
  v93 = v89 ^ v85;
  v94 = v87 ^ ~(v81 >> 17);
  v95 = (v89 ^ v85) + 1;
  v96 = (v92 + (v73 >> 7)) ^ (v73 >> 41);
  v97 = ~(v89 ^ v85) & 0x80000000000000;
  if ((v95 & v97) != 0)
  {
    v97 = -v97;
  }

  v98 = -(v95 ^ v89 ^ v85 ^ ((v89 ^ v85 ^ v91) + v91)) ^ ~v93 & 0xFF7FFFFFFFFFFFFFLL ^ (v97 + v95);
  v99 = v78 ^ __ROR8__(v78, 19) ^ (v78 >> 28) ^ (v78 << 36) ^ v96;
  v100 = v98 + v94;
  v101 = v85 & ~v99 ^ v96 ^ v91;
  v102 = v89 & ~v85 ^ v99;
  v103 = v99 & ~(v96 ^ v91);
  v104 = v96 & ~v91;
  if (v89 == v85)
  {
    v100 = v91;
  }

  v105 = v93 ^ v104;
  v106 = v102 ^ 0x97F6A7E5F6E8F58ALL ^ v101;
  v107 = v91 ^ 0x44C9D571A5C4A51CLL ^ v103 ^ v105;
  v108 = v85 ^ 0x425764BB5877DA25 ^ v102 ^ v100 & ~v93;
  v109 = v106 << (v16 & 0x2D ^ 1u) << (v16 & 0x2D ^ 0x2Cu);
  v110 = (v107 >> 10) & 0x200000000000;
  if ((v110 & (v107 >> 17)) != 0)
  {
    v110 = -v110;
  }

  v111 = ((v107 ^ -v107 ^ ((v107 << 47) - ((v107 << 47) ^ v107))) + (v107 << 47)) ^ __ROR8__(v107, 10) & 0xFFFFDFFFFFFFFFFFLL ^ (v110 + (v107 >> 17));
  v112 = v101 ^ 0x70C7A8D3F3643DFDLL ^ ((v101 ^ 0x70C7A8D3F3643DFDLL) >> 7) ^ ((v101 ^ 0x70C7A8D3F3643DFDLL) << 23) ^ ((v101 ^ 0x70C7A8D3F3643DFDLL) << 57) ^ ((v101 ^ 0x70C7A8D3F3643DFDLL) >> 41);
  v113 = v106 ^ (v106 >> 19) ^ (v106 << 36) ^ (v106 >> 28) ^ v109 ^ v112;
  v114 = v108 ^ (v108 << 25) ^ (8 * v108) ^ (v108 >> 39) ^ (v108 >> 61);
  v115 = v105 ^ 0xD3DA1E3360BF843ALL ^ ((v105 ^ 0xD3DA1E3360BF843ALL) << 58) ^ (((v105 ^ 0xD3DA1E3360BF843ALL) >> 6) ^ ((v105 ^ 0xD3DA1E3360BF843ALL) >> 1) | (v105 << 63));
  v116 = __ROR8__(v114 & ~v113 ^ v111 ^ v112, 53);
  v117 = v114 ^ v115;
  v118 = v113 & ~(v111 ^ v112);
  v119 = v115 & ~v114 ^ v113;
  v120 = v111 & ~v117;
  v121 = v117 ^ v112 & ~v111;
  v122 = __ROR8__(v116 ^ 0x97E62E571D1093AFLL, 11) ^ 0x75F2FCC5CAE3A212;
  v123 = v122 ^ v119;
  v124 = v122 ^ v119 ^ 0x93C23431B76D41FLL;
  v125 = v124 << 45;
  v126 = v118 ^ v111 ^ v121;
  v127 = v121 ^ 0x6DC4FB0BD4FFFF44;
  v128 = v114 ^ 0x6005BE354A5BB0B2 ^ v120 ^ v119;
  v129 = (v121 ^ 0x6DC4FB0BD4FFFF44) >> 1;
  v34 = ((v124 << 45) & 0x1000000000000 & v123) == 0;
  v130 = (v124 << 45) & 0x1000000000000 ^ v123 ^ 0x93C23431B76D41FLL;
  if (!v34)
  {
    v130 = v124 - (v125 & 0x1000000000000);
  }

  v131 = v122 + 0x2DB5B6AF87F64351 - ((2 * v122) & 0x5B6B6D5F0FEC86A2);
  v132 = v126 ^ 0xF374A001D381B1FALL;
  v133 = v126 ^ 0xC8B5FFE2C7F423DLL;
  v134 = v126 ^ 0xF374A001D380BDC2;
  v135 = v127 ^ (v127 >> 6);
  v136 = (v124 >> 19) ^ (v124 >> 28) | v125 & 0xFFFEFFFFFFFFFFFFLL;
  v137 = v135 - (v135 ^ v129);
  v138 = v130 ^ v136;
  v139 = v129 & 0x4000000000000;
  v140 = v133 - v132;
  if ((v137 & v129 & 0x4000000000000) != 0)
  {
    v139 = -v139;
  }

  v141 = (v124 & 0xFFFFFFF) << 17;
  v142 = (v129 & 0xFFFBFFFFFFFFFFFFLL ^ -v129 ^ (v139 + v137)) + v135;
  v143 = (__ROR8__(__ROR8__(v140, 5) ^ 0x43F5E54EAFBB0A56, 59) ^ 0x8143562A089EB536) + v133;
  if (v101 == 0x70C7A8D3F3643DFDLL)
  {
    v144 = v134;
  }

  else
  {
    v144 = v143;
  }

  v145 = (v141 | (v138 << 45)) ^ (v138 >> 19) ^ 0xA6F9CBEF6C44A39BLL;
  v146 = v128 ^ (v128 >> 39) ^ (8 * v128) ^ ((v128 >> 61) | (v128 << 25));
  v147 = (v127 << 58) ^ (v121 << 63) ^ v142;
  v148 = v147 ^ v146;
  v149 = v134 ^ (v134 << 47) ^ __ROR8__(v134, 10) ^ (v144 >> 17);
  v150 = v131 ^ (v131 << 23) ^ (v131 >> 7) ^ (v131 >> 41) ^ (v131 << 57);
  v152 = __ROR8__(v145, 45);
  v151 = v150 ^ v152;
  v153 = v149 ^ v150;
  v154 = v150 ^ v152 ^ v147 & ~v146;
  v155 = (v147 ^ v146 ^ -(v147 ^ v146)) + (v147 ^ v146) + ~(2 * ((v147 ^ v146 ^ -(v147 ^ v146)) & (v147 ^ v146)));
  v156 = (v150 ^ v152 ^ 0xA0849DDAE322C831) & v146 ^ v149 ^ v150;
  v157 = v148 ^ v150 & ~v149;
  v158 = v155 & v149 ^ v146 ^ v154;
  v159 = v154 ^ 0x59934BC09910BFACLL ^ v156;
  v160 = (v158 ^ 0xE9B5AE543F0C5153) + 0x37D1179CA538DC21;
  v161 = 0xC82EE8635AC723DFLL;
  if ((v158 ^ 0xE9B5AE543F0C5153) < 0xC82EE8635AC723DFLL)
  {
    v160 = v158 ^ 0xE9B5AE543F0C5153;
    v161 = 0;
  }

  v162 = (v159 << 45) | v159;
  if (v160)
  {
    v163 = v158 ^ 0xE9B5AE543F0C5153;
  }

  else
  {
    v163 = v161;
  }

  v164 = ((v159 << 45) & v159 & 0xFFFFE00000000000 | (v159 >> 19)) ^ __ROR8__(v159, 28);
  *(&v165 + 1) = v163;
  *&v165 = v158 ^ 0xE9B5AE543F0C5153;
  v166 = v157 ^ ((v157 ^ 0x2D23F5ED560F5BC9) >> 1) ^ ((((v157 ^ 0x2D23F5ED560F5BC9) << 63) ^ ((v157 ^ 0x2D23F5ED560F5BC9) << 58)) & 0xFC00000000000000 | ((v157 ^ 0x2D23F5ED560F5BC9) >> 6));
  v167 = (v162 ^ -v162 ^ (v164 - (v164 ^ v162))) + v164;
  v168 = (v165 >> 61) ^ v158 ^ (v163 << 25);
  v169 = v168 ^ (v163 >> 39);
  v180[27] = BYTE5(v167);
  v180[9] = v167;
  v179[4] = BYTE4(v167);
  *(v176 + 20) = BYTE3(v167);
  v180[13] = BYTE1(v167);
  *(v176 + 11) = BYTE2(v167);
  v170 = *(v8 + ((((((BYTE6(v167) + 60) << 7) ^ 0x66DB32F0u) - 16) >> 7) ^ 0xCDB63DLL));
  v179[5] = v169 ^ 0x53;
  *(v176 + 17) = BYTE6(v168) ^ 0xB5;
  v179[2] = HIBYTE(v167);
  v180[12] = ((v168 ^ (v163 >> 39)) >> 24) ^ 0x3F;
  *v180 = ((((((BYTE6(v167) + 60) ^ 0x79) + ((BYTE6(v167) + 60) ^ 0xDC)) ^ v170) >> 4) | (16 * ((((BYTE6(v167) + 60) ^ 0x79) + ((BYTE6(v167) + 60) ^ 0xDC)) ^ v170))) ^ 0x30;
  v180[15] = BYTE4(v168) ^ 0x54;
  v180[14] = BYTE2(v169) ^ 0xC;
  v180[3] = BYTE1(v169) ^ 0x51;
  v180[17] = BYTE5(v168) ^ 0xAE;
  v180[22] = v157 ^ ((v157 ^ 0x2D23F5ED560F5BC9) >> 1) ^ ((v157 ^ 0x2D23F5ED560F5BC9) >> 6) ^ 0xC9;
  v180[19] = ((v157 ^ ((v157 ^ 0x2D23F5ED560F5BC9) >> 1) ^ ((v157 ^ 0x2D23F5ED560F5BC9) >> 6)) >> 8) ^ 0x5B;
  v180[2] = HIBYTE(v168) ^ 0xE9;
  LOBYTE(v167) = *(v9 + (((((v157 ^ ((v157 ^ 0x2D23F5ED560F5BC9) >> 1) ^ ((v157 ^ 0x2D23F5ED560F5BC9) >> 6)) >> 16) ^ 0xF) - 77) ^ 0x99));
  v180[24] = BYTE4(v166) ^ 0xED;
  v180[11] = HIBYTE(v166) ^ 0x2D;
  *(v176 + 25) = BYTE6(v166) ^ 0x23;
  *(v176 + 21) = ((v157 ^ ((v157 ^ 0x2D23F5ED560F5BC9) >> 1) ^ ((v157 ^ 0x2D23F5ED560F5BC9) >> 6)) >> 24) ^ 0x56;
  v171 = v149 ^ v157 ^ 0x29E1AB0124FF49E7 ^ (v151 ^ 0x5F7B62251CDD37CELL) & ~v153;
  result = 0x3115C989000458;
  v173 = (((v171 >> 17) ^ (v171 >> 10)) & 0xEEA3676FFFBA7 ^ (v171 ^ (v171 << 54)) & 0xC50EEA3676FFFBA7 | (v171 ^ (v171 << 54)) & 0x3AF115C989000458 ^ ((v171 >> 17) ^ (v171 >> 10)) & 0x3115C989000458) ^ (v171 << (v28 & 0x2F) << (v28 & 0x2F ^ 0x2F));
  *(v176 + 26) = v173;
  *(v176 + 19) = v167 ^ 0xC9;
  *v176 = BYTE3(v173);
  *(v176 + 16) = BYTE4(v173);
  *(v176 + 30) = BYTE2(v173);
  v180[16] = BYTE6(v173);
  v180[8] = BYTE1(v173);
  v180[26] = BYTE5(v173);
  *(v176 + 7) = BYTE5(v166) ^ 0xF5;
  v174 = v156 ^ 0x4734313A1F2B2857;
  *&v165 = __ROR8__(v174 ^ __ROR8__(v174, 7) ^ (v174 >> 41), 13);
  v180[29] = ((-8192 * (v165 ^ 0xDC23) + 24652) ^ ((v165 ^ 0x2657DB0F23DDC23) >> 51)) >> 8;
  v175 = (((v165 ^ 0x2657DB0F23DDC23) << 13) - (((v165 ^ 0x2657DB0F23DDC23) << 14) & 0x5F6C3C8F7708C000) - 0x5049E1B8447B9FB4) ^ ((v165 ^ 0x2657DB0F23DDC23) >> 51) ^ (v174 << 23);
  *(v176 + 18) = BYTE2(v175);
  *(v176 + 4) = ((v165 ^ 0x2657DB0F23DDC23) >> 51) ^ 0x4C;
  *(v176 + 10) = HIBYTE(v173);
  LODWORD(v173) = *(v178 + ((BYTE3(v175) + 91) ^ 0xEDLL));
  *(v176 + 1) = BYTE4(v175);
  *(v176 + 2) = ((((v173 >> 1) | (v173 << 7)) ^ 0xA4) >> 3) | (32 * (((v173 >> 1) | (v173 << 7)) ^ 0xA4));
  LOBYTE(v173) = *(v8 + ((BYTE5(v175) + 60) ^ 0x58));
  *(v176 + 28) = HIBYTE(v175);
  *(v176 + 3) = v175 >> (v169 & 0x30 ^ 0x10) >> ((((32 * ((8 * v169) & 0x80 | ((v169 & 0x20) != 0))) | (((8 * v169) & 0x80u) >> 3)) ^ 0x20) & 0x30);
  LOBYTE(v173) = (((BYTE5(v175) + 60) ^ 0x79) + ((BYTE5(v175) + 60) ^ 0xDC)) ^ v173;
  v180[10] = ((v173 >> 4) | (16 * v173)) ^ 0x30;
  *(v176 + 12) = v181 + 1;
  return result;
}

uint64_t sub_258591A8C@<X0>(char a1@<W8>)
{
  v6 = v1 - 1;
  *(v5 + v6) = (a1 ^ 0xBA) * (a1 + 17);
  return (*(v4 + 8 * (((v6 != 0) * v3) ^ v2)))();
}

void sub_258591AC0(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 32) == 0;
  }

  else
  {
    v2 = 1;
  }

  v5 = v2 || *(a1 + 16) == 0 || *(a1 + 8) == 0;
  v1 = *a1 + 44841361 * (((a1 | 0xE001BC97) - (a1 & 0xE001BC97)) ^ 0x806F41CB);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_258591C1C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v29 = *(v23 + 4 * (v26 - 1));
  *(v23 + 4 * v26) = *(a23 + 4 * v25) + v25 + ((1664525 * (v29 ^ (v29 >> 30))) ^ *(v23 + 4 * v26));
  *(v28 - 116) = v24 + a1 - 1032209126 + 13;
  v30 = (v28 - 152);
  *v30 = v24 + 623;
  *(v28 - 144) = v24;
  *(v28 - 128) = a1 - 1032209126 - v24 - 117;
  v30[2] = v26 + 1 + v24;
  *(v28 - 124) = (a1 - 1738684519) ^ v24;
  *(v28 - 120) = (a1 - 1032209126) ^ v24;
  v31 = (*(v27 + 8 * ((a1 + 897) ^ 0xD2)))(v28 - 152);
  return (*(v27 + 8 * *(v28 - 112)))(v31);
}

uint64_t sub_258591C24(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 4) ^ (-17735 * ((result & 0xCF16 | ~(result | 0xCF16)) ^ 0x8B03));
  *(v1 + 64) = 0;
  *(v1 + 92) = 0;
  *(v1 + 96) = v2 & 0x1FF ^ 0x1AE;
  v3 = v2 ^ 0xAE;
  if (v3 == 1)
  {
    v4 = 16;
    goto LABEL_5;
  }

  if (v3 == 2)
  {
    *(v1 + 88) = -1392125590;
    v4 = 20;
LABEL_5:
    *(v1 + 72) = 0x811A931309921B9BLL;
    *(v1 + 80) = 0x7EE56CECF66DE464;
    *(v1 + 92) = v4;
  }

  *(result + 16) = -1012751054;
  return result;
}

uint64_t sub_258591CE4(uint64_t a1, int a2, char a3, uint64_t a4, uint64_t a5, int a6, int a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v24 = (v20 + v22) & a3;
  v25 = *(a4 + v19 + 72);
  v26 = (a6 & (2 * v19)) + (v19 ^ a2) - 2147467262;
  *(a19 + v26) = (v24 - 87) ^ v25;
  *(a19 + v26 + 1) = (BYTE1(v25) ^ 0x38) - 2 * ((BYTE1(v25) ^ 0x38) & 0x1D ^ BYTE1(v25) & 1) - 100;
  *(a19 + v26 + 2) = (a8 ^ BYTE2(v25)) - ((2 * (a8 ^ BYTE2(v25))) & 0x38) - 100;
  *(a19 + v26 + 3) = (HIBYTE(v25) ^ 0x6E) - ((2 * (HIBYTE(v25) ^ 0x6E)) & 0x38) - 100;
  return (*(v23 + 8 * (((v19 + 4 < v21) * a7) ^ v20)))();
}

void sub_258591DE8(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 8) == 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = v2 || *a1 == 0;
  v1 = *(a1 + 32) + 2021301169 * ((-2 - ((a1 | 0x1C86D532) + (~a1 | 0xE3792ACD))) ^ 0x688F7D6D);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_258591EEC(int a1, int a2, int8x16_t a3, int8x16_t a4)
{
  v8 = v5 + 2;
  v9 = v7 + 2;
  v10 = vaddq_s8(vsubq_s8(*v8, vandq_s8(vaddq_s8(*v8, *v8), a3)), a4);
  v9[-1] = vaddq_s8(vsubq_s8(v8[-1], vandq_s8(vaddq_s8(v8[-1], v8[-1]), a3)), a4);
  *v9 = v10;
  return (*(v4 + 8 * (((v6 == 32) * a2) ^ a1)))();
}

uint64_t sub_258591EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  (*(v24 + 8 * SHIDWORD(a11)))(a12, 0x100004077774924);
  v25 = (*(v24 + 8 * a11))();
  *v21 = v25;
  v26 = 1812433253 * (v25 ^ (v25 >> 30)) + 1;
  v21[1] = v26;
  return (*(v24 + 8 * (((v23 - 935) | 0x400) ^ 0xF7)))(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, v22, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t sub_258592148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, _DWORD *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  v42 = (*(v40 + 8 * (v39 ^ 0x6C1)))(&a39, 0);
  (*(v40 + 8 * (v39 + 711)))(v42);
  v43 = (*(v40 + 8 * (v39 + 711)))();
  *a31 = v43 + 721190819 - ((2 * v43) & 0x55F8FF46);
  return sub_258592218(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, v41, a17, a18, a19, a20, a30 + 416468288, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_258592218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v39 = *(v32 + 4 * (v37 - 1));
  v40 = 1664525 * (v39 ^ (v39 >> 30)) - 870827293;
  v41 = (v40 ^ 0x3BE7A419) & (2 * (v40 & 0x33E7C51D)) ^ v40 & 0x33E7C51D;
  v42 = ((2 * (v40 ^ 0x7A2A2409)) ^ 0x939BC228) & (v40 ^ 0x7A2A2409) ^ (2 * (v40 ^ 0x7A2A2409)) & 0x49CDE114;
  v43 = v42 ^ 0x48442114;
  v44 = (v42 ^ 0x1890000) & (4 * v41) ^ v41;
  v45 = ((4 * v43) ^ 0x27378450) & v43 ^ (4 * v43) & 0x49CDE114;
  v46 = v44 ^ 0x49CDE114 ^ (v45 ^ 0x1058010) & (16 * v44);
  v47 = (16 * (v45 ^ 0x48C86104)) & 0x49CDE110 ^ 0x4101E014 ^ ((16 * (v45 ^ 0x48C86104)) ^ 0x9CDE1140) & (v45 ^ 0x48C86104);
  v48 = (v46 << 8) & 0x49CDE100 ^ v46 ^ ((v46 << 8) ^ 0xCDE11400) & v47;
  v49 = v40 ^ *(v32 + 4 * v37) ^ (2 * ((v48 << 16) & 0x49CD0000 ^ v48 ^ ((v48 << 16) ^ 0x61140000) & ((v47 << 8) & 0x49CD0000 ^ ((v47 << 8) ^ 0x4DE10000) & v47 ^ 0xC0000)));
  *(v32 + 4 * v37) = v36 + (((*(a31 + 4 * v36) ^ 0xC0620AAB) + 1067316565) ^ ((*(a31 + 4 * v36) ^ 0xC96CF807) + 915605497) ^ ((*(a31 + 4 * v36) ^ 0x23F28D0F) - 603098383)) - 1157037210 + (((v49 ^ 0x54D7D3D3) - 1965905701) ^ ((v49 ^ 0x8667F114) + 1482852894) ^ ((v49 ^ 0x634625F2) - 1119658244));
  *(v38 - 152) = v31 + 623;
  *(v34 + 16) = v37 + 1 + v31;
  *(v38 - 116) = ((v33 + 1772531059) ^ 0x42) + v31;
  *(v38 - 124) = (v33 - 1738685076) ^ v31;
  *(v38 - 120) = (v33 + 1772531059) ^ v31;
  *(v38 - 128) = ((v33 + 1772531059) ^ 0xB) - v31;
  *(v38 - 144) = v31;
  v50 = (*(v35 + 8 * (v33 ^ 0x63E)))(v38 - 152);
  return (*(v35 + 8 * *(v38 - 112)))(v50);
}

uint64_t sub_2585924E0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, unsigned __int8 a3@<W4>, uint64_t a4@<X7>, uint64_t a5@<X8>, __n128 a6@<Q1>, int8x16_t a7@<Q4>, uint64_t a8@<D5>, int8x16_t a9@<Q6>)
{
  v18 = a1 - 16;
  v19 = (v18 - 1) & 0xF;
  v21.i64[0] = vqtbl4q_s8(*(&a6 - 1), a7).u64[0];
  v21.i64[1] = a8;
  v22 = vrev64q_s8(vmulq_s8(v21, a9));
  *(a4 + v18) = veorq_s8(veorq_s8(veorq_s8(*(v14 + v19 - 15), *(a5 + v18)), veorq_s8(*(v19 + v13 - 14), *(v19 + v12 - 11))), vextq_s8(v22, v22, 8uLL));
  return (*(v17 + 8 * (((((a2 == 16) ^ a3) & 1) * v15) ^ v16)))();
}

void sub_2585924EC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = *(a1 + 48) == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v1 = *(a1 + 44) + 827685407 * (a1 ^ 0x1B828250);
  __asm { BRAA            X11, X17 }
}

void sub_25859263C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, int a12, char a13)
{
  v19 = *(a1 + 24) + 56 * **(a1 + 24) + 24;
  v20 = 1520698633 * ((2 * ((v18 - 128) & 0x725B6A20) - (v18 - 128) + 228890072) ^ 0xA64A8D5D);
  *(v18 - 116) = 1289 * ((2 * ((v18 - 128) & 0x6A20) - (v18 - 128) - 27176) ^ 0x8D5D) + 15530;
  *(v18 - 104) = v20 ^ 0x720F99FC;
  *(v18 - 120) = v14 - v20 - 483;
  *(v18 - 112) = &a13;
  *(v18 - 128) = v19;
  (*(v13 + 8 * (v14 ^ 0x2F2)))(v18 - 128);
  v21 = 1380645169 * ((v18 - 128) ^ 0x82C50850);
  *(v18 - 120) = &a13;
  *(v18 - 112) = v16;
  *(v18 - 128) = v21 ^ 0x3875D982;
  *(v18 - 124) = v14 - 312 + v21;
  (*(v13 + 8 * (v14 + 218)))(v18 - 128);
  v22 = 1380645169 * (((((v18 - 128) | 0x74EC46C) ^ 0xFFFFFFFE) - (~(v18 - 128) | 0xF8B13B93)) ^ 0x7A7433C3);
  *(v18 - 128) = (v17 + 850408687) ^ v22;
  *(v18 - 124) = v14 - 312 + v22;
  *(v18 - 120) = &a13;
  *(v18 - 112) = v15;
  (*(v13 + 8 * (v14 + 218)))(v18 - 128);
  *(v18 - 128) = (v14 - 1192) ^ (1511064119 * ((98245948 - ((v18 - 128) | 0x5DB1D3C) + ((v18 - 128) | 0xFA24E2C3)) ^ 0x725BBD89));
  *(v18 - 120) = &a10;
  *(v18 - 112) = &a13;
  (*(v13 + 8 * (v14 + 331)))(v18 - 128);
  JUMPOUT(0x258592808);
}

void sub_258592C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, int a12, int a13, uint64_t a14, uint64_t a15, int *a16, unsigned int a17)
{
  v22 = *(v17 + 16);
  v23 = 1021229753 * ((2 * ((&a14 ^ 0x8A279B67) & 0x60EA9272) - (&a14 ^ 0x8A279B67) - 1625985651) ^ 0xABDF4D00);
  LODWORD(a14) = v23 + 1369827687;
  HIDWORD(a14) = v21 + 435 + v23;
  a15 = v20;
  (*(v18 + 8 * (v21 ^ 0x754)))(&a14);
  v24 = *(v19 + 16);
  v25 = 1520698633 * (((&a14 | 0x2858E0CC) - &a14 + (&a14 & 0xD7A71F30)) ^ 0x83B6F849);
  LODWORD(a14) = v21 - 1712062300 + v25;
  HIDWORD(a14) = v25 + v24 - 1142842764 - ((2 * v24) & 0x77C334E8);
  a15 = v19 + 80;
  (*(v18 + 8 * (v21 ^ 0x711)))(&a14);
  v26 = 1520698633 * ((((2 * &a14) | 0x8BEFED50) - &a14 - 1173878440) ^ 0xEE19EE2D);
  v27 = v26 + *(v19 + 20) - 1142842764 - ((2 * *(v19 + 20)) & 0x77C334E8);
  LODWORD(a14) = v21 - 1712062300 + v26;
  HIDWORD(a14) = v27;
  a15 = v19 + 84;
  (*(v18 + 8 * (v21 + 1265)))(&a14);
  a14 = v19;
  a15 = v20;
  LODWORD(a16) = (v21 - 546253404) ^ (1380645169 * (&a14 ^ 0x82C50850));
  (*(v18 + 8 * (v21 + 1202)))(&a14);
  v28 = 439532179 * (&a14 ^ 0xDEA63D82);
  a15 = v20;
  a16 = &a10;
  a17 = v28 ^ 0xBC6B3AAD;
  LODWORD(a14) = v28 + v21 + 839;
  HIDWORD(a14) = 752870518 - v28;
  (*(v18 + 8 * (v21 + 1210)))(&a14);
  v29 = *(v19 + 4);
  *v19 += a10;
  *(v19 + 4) = v29 + a11;
  v30 = *(v19 + 12);
  *(v19 + 8) += a12;
  *(v19 + 12) = v30 + a13;
  v31 = 1021229753 * (&a14 ^ 0xBEEDBBEA);
  a15 = v19;
  LODWORD(a14) = v31 + 1369827677;
  HIDWORD(a14) = v21 + 435 + v31;
  (*(v18 + 8 * (v21 ^ 0x754)))(&a14);
  *v22 = *v19 - ((2 * *v19) & 0x38) - 100;
  v22[1] = *(v19 + 1) - ((2 * *(v19 + 1)) & 0x38) - 100;
  v22[2] = *(v19 + 2) - ((2 * *(v19 + 2)) & 0x38) - 100;
  v22[3] = *(v19 + 3) - ((2 * *(v19 + 3)) & 0x38) - 100;
  v22[4] = *(v19 + 4) - ((2 * *(v19 + 4)) & 0x38) - 100;
  v22[5] = *(v19 + 5) - ((2 * *(v19 + 5)) & 0x38) - 100;
  v22[6] = *(v19 + 6) - ((2 * *(v19 + 6)) & 0x38) - 100;
  v22[7] = *(v19 + 7) - ((2 * *(v19 + 7)) & 0x38) - 100;
  v22[8] = *(v19 + 8) - ((2 * *(v19 + 8)) & 0x38) - 100;
  v22[9] = *(v19 + 9) - ((2 * *(v19 + 9)) & 0x38) - 100;
  v22[10] = *(v19 + 10) - ((2 * *(v19 + 10)) & 0x38) - 100;
  v22[11] = *(v19 + 11) - ((2 * *(v19 + 11)) & 0x38) - 100;
  v22[12] = *(v19 + 12) - ((2 * *(v19 + 12)) & 0x38) - 100;
  v22[13] = *(v19 + 13) - ((2 * *(v19 + 13)) & 0x38) - 100;
  v22[14] = *(v19 + 14) - ((2 * *(v19 + 14)) & 0x38) - 100;
  v22[15] = *(v19 + 15) - ((2 * *(v19 + 15)) & 0x38) - 100;
  *v19 = 0;
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  JUMPOUT(0x2585930B8);
}

uint64_t sub_2585931F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, unint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v37 = *(&off_286999DF0 + a20 - 304);
  a36 = 0;
  v38 = 2072138273 * ((((2 * (v36 - 152)) | 0x320258E0) - (v36 - 152) - 419507312) ^ 0xF0B48E93);
  STACK[0xD38] = a33;
  STACK[0xD30] = v37;
  STACK[0xD28] = &a36;
  *(v36 - 124) = 48936756 - v38;
  *(v36 - 120) = v38 + a20 - 205;
  (*(a1 + 8 * (a20 ^ 0x437)))(v36 - 152);
  v47 = *(v36 - 128) == 95751194 && a36 == ((a20 - 1609613314) & 0x5FF0BF5B ^ 0x10D);
  return (*(a34 + 8 * ((1459 * v47) ^ (a20 - 166))))(a34, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_258593210(uint64_t result)
{
  v1 = 293393213;
  v2 = (*(result + 16) - 55 * ((2 * (result & 5) - result + 122) ^ 0x30));
  if (v2 > 0x2B)
  {
    if (v2 == 44)
    {
      v3 = -1744830464;
    }

    else
    {
      if (v2 != 57)
      {
        goto LABEL_13;
      }

      v3 = 335544320;
    }
  }

  else if (v2 == 18)
  {
    v3 = 0x4000000;
  }

  else
  {
    if (v2 != 31)
    {
      goto LABEL_13;
    }

    v3 = -2113929216;
  }

  if (*(*(result + 8) + 8) == v3)
  {
    v1 = 293435294;
  }

  else
  {
    v1 = 293393213;
  }

LABEL_13:
  *result = v1;
  return result;
}

void sub_2585932A4(uint64_t a1)
{
  v1 = 344723623 * ((-2 - ((~a1 | 0x24CBCBA) + (a1 | 0xFDB34345))) ^ 0xF5EFD173);
  v2 = *(a1 + 16) ^ v1;
  v3 = (*(a1 + 4) ^ v1);
  if (*(a1 + 8))
  {
    v4 = v3 == 12886;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  __asm { BRAA            X8, X17 }
}

void sub_2585933C0(uint64_t a1)
{
  (*(v1 + 12464))();
  (*(v1 + 12264))(a1);
  JUMPOUT(0x25859342CLL);
}

void sub_258593444(int a1@<W8>)
{
  if (a1 == 156965663)
  {
    v2 = 95751194;
  }

  else
  {
    v2 = 95709170;
  }

  *(v1 + 32) = v2;
}

uint64_t sub_258593570@<X0>(uint64_t a1@<X8>)
{
  *(a1 + v1) = *(v5 + v1);
  v7 = v1 + 1;
  v9 = v7 < 0x3BBBFDB1 && v7 + v2 < v4;
  return (*(v6 + 8 * ((v9 * (((v3 + 941917300) & 0xC7DB7BFF) + 1277)) ^ v3)))();
}

uint64_t sub_2585935C4()
{
  v5 = v1 - 1;
  *(v4 + v5) = (v0 ^ 0xBA) * (v0 + 17);
  return (*(v3 + 8 * ((1348 * (v5 == ((335 * (v2 ^ 0xF7u)) ^ 0x29ELL))) ^ v2)))();
}

uint64_t sub_258593994()
{
  v5 = (v1 + v3 + 41);
  *(v5 - 1) = 0u;
  *v5 = 0u;
  return (*(v4 + 8 * ((((v0 & 0xFFFFFFE0) == 32) * (v2 ^ 0x622)) ^ (v2 - 938))))();
}

uint64_t sub_2585939E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  *(v56 - 136) = v53 - 2021301169 * ((1292777895 - ((v56 - 168) | 0x4D0E39A7) + ((v56 - 168) | 0xB2F1C658)) ^ 0x390791F8) + 204;
  *(v56 - 144) = v52 + 12;
  *(v56 - 168) = a45;
  *(v56 - 160) = &a52;
  v57 = (*(v55 + 8 * (v53 + 1162)))(v56 - 168);
  return (*(v55 + 8 * (((*(v56 - 152) == 95751194) * (v54 + ((v53 - 1208026521) & 0xDFB78DCF) - 491)) ^ v53)))(v57);
}

uint64_t sub_258593BA8@<X0>(unsigned int a1@<W0>, unsigned int a2@<W8>)
{
  v9 = a1 < a2;
  *(v6 + v4 + 24) = *(v5 + v4) ^ 0x9C;
  if (v9 == v4 + 1 > 0x6A5201D0)
  {
    v9 = ((v8 + 1328454651) & 0xB0D165DF ^ 0x95ADFBFE) + v4 < v2;
  }

  return (*(v7 + 8 * ((v9 * v3) ^ v8)))();
}

void sub_258593D50(uint64_t a1)
{
  v1 = 2021301169 * ((((2 * a1) | 0x96D8B0F0) - a1 + 882091912) ^ 0x409A0FD8);
  v2 = *(a1 + 20) ^ v1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16) - v1;
  v5 = (v4 ^ 0xE0B3F4BB) & (2 * (v4 & 0xE403F8B3)) ^ v4 & 0xE403F8B3;
  v6 = ((2 * (v4 ^ 0x20B1C4D9)) ^ 0x896478D4) & (v4 ^ 0x20B1C4D9) ^ (2 * (v4 ^ 0x20B1C4D9)) & 0xC4B23C6A;
  v7 = v6 ^ 0x4492042A;
  v8 = (v6 ^ 0xC4802060) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0x12C8F1A8) & v7 ^ (4 * v7) & 0xC4B23C68;
  v10 = (v9 ^ 0x803020) & (16 * v8) ^ v8;
  v11 = ((16 * (v9 ^ 0xC4320C42)) ^ 0x4B23C6A0) & (v9 ^ 0xC4320C42) ^ (16 * (v9 ^ 0xC4320C42)) & 0xC4B23C60;
  v12 = v10 ^ 0xC4B23C6A ^ (v11 ^ 0x40220400) & (v10 << 8);
  v13 = (8 * v4) ^ (16 * ((v12 << 16) & 0x4B20000 ^ v12 ^ ((v12 << 16) ^ 0xC6A0000) & (((v11 ^ 0x8490384A) << 8) & 0x4B20000 ^ 0x4820000 ^ (((v11 ^ 0x8490384A) << 8) ^ 0x23C0000) & (v11 ^ 0x8490384A)))) ^ 0x291C0338;
  v14 = *(v3 + 16);
  v15 = *(v3 + 20);
  *(v3 + 16) = v13 + v14;
  *(v3 + 20) = v15 + __CFADD__(v13, v14) + ((((v4 ^ 0xE50AD118) + 17377707) ^ v4 ^ ((v4 ^ 0xE8DFA51C) + 215768495) ^ ((v4 ^ 0xE9D6A8B0) + 232083459) ^ ((v4 ^ 0xFFFFDBF8) + 469508940)) >> 29);
  __asm { BRAA            X11, X17 }
}

void sub_258593FE4()
{
  if (v0 == 396654075)
  {
    v2 = 95751194;
  }

  else
  {
    v2 = 95709170;
  }

  *(v1 + 24) = v2;
}

uint64_t sub_25859407C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v71 - 112) = v69 - 2021301169 * ((((v71 - 144) | 0x5E81621) + (~(v71 - 144) | 0xFA17E9DE)) ^ 0x8E1E4180) + 505;
  *(v71 - 120) = v70 + 12;
  *(v71 - 144) = &a68;
  *(v71 - 136) = &a31;
  (*(v68 + 8 * (v69 ^ 0x649)))(v71 - 144);
  return (*(v68 + 8 * ((859 * (*(v71 - 128) == (((v69 + 24) | 0xE) ^ 0x5B50C95))) ^ v69)))(a19);
}

uint64_t sub_25859412C@<X0>(int a1@<W7>, uint64_t a2@<X8>)
{
  v6 = a2 - 1;
  *(v4 + v6) = (v2 ^ 0xBA) * (v2 + 17);
  return (*(v5 + 8 * (((v6 == 0) * (a1 + ((v3 + 823238589) | 0x400A2A) + 1271)) ^ v3)))();
}

uint64_t sub_2585941D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27)
{
  v32 = 590 * (v30 ^ (v30 + 2));
  LODWORD(STACK[0x4F0]) ^= a27 ^ ((((v32 ^ (v30 - 1476941202) ^ 0xFFFFFB63 | v31) & (v30 - 1476941202 - v31) | (v32 ^ (v30 - 1476941202) ^ 0xFFFFFB63) & v31) & 0x80000000) == 0);
  return (*(v28 + 8 * (((((v29 == 1) ^ (v32 + 121)) & 1) * (v32 ^ 0x4A8)) ^ v32)))();
}

void sub_258594980(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = *a1 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v1 = *(a1 + 28) + 2033342611 * (((a1 | 0x4258DB85) - (a1 | 0xBDA7247A) - 1113119622) ^ 0x4734D341);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_258594BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14)
{
  v21 = *v14;
  v22 = ((&a11 & 0x74FF9F95 | ~(&a11 | 0x74FF9F95)) ^ 0x20EE78EF) * v17;
  a13 = v20;
  a11 = v18 + v22 + 10;
  a12 = v19 + 49 + v22;
  (*(v16 + 8 * (v19 ^ 0x4EA)))(&a11);
  v23 = *(v15 + 16) - ((2 * *(v15 + 16)) & 0x8FB268EE) - 942066569;
  v24 = 344723623 * (&a11 ^ 0xF7A36DC9);
  a13 = v15 + 80;
  a11 = v19 - 404582309 + v24;
  a12 = v23 ^ v24;
  (*(v16 + 8 * (v19 + 1249)))(&a11);
  v25 = *(v15 + 20) - ((2 * *(v15 + 20)) & 0x8FB268EE) - 942066569;
  v26 = 344723623 * (((&a11 | 0xD0D4F597) - &a11 + (&a11 & 0x2F2B0A68)) ^ 0x2777985E);
  a13 = v15 + 84;
  a11 = v19 - 404582309 + v26;
  a12 = v25 ^ v26;
  (*(v16 + 8 * (v19 ^ 0x721)))(&a11);
  a11 = 1630749402 - 2021301169 * ((&a11 + 1342215825 - 2 * (&a11 & 0x50009691)) ^ 0xDBF6C131) + v19 + 781;
  a13 = v20;
  a14 = v15;
  (*(v16 + 8 * (v19 + 1239)))(&a11);
  v27 = 1520698633 * (((&a11 | 0xD3CFEDBD) - (&a11 & 0xD3CFEDBD)) ^ 0x7821F538);
  a11 = v27 + 86895548;
  a12 = v19 + 49 + v27;
  a13 = v15;
  v28 = (*(v16 + 8 * (v19 ^ 0x4EA)))(&a11);
  *v21 = *v15;
  v21[1] = *(v15 + 1);
  v21[2] = *(v15 + 2);
  v21[3] = *(v15 + 3);
  v21[4] = *(v15 + 4);
  v21[5] = *(v15 + 5);
  v21[6] = *(v15 + 6);
  v21[7] = *(v15 + 7);
  v21[8] = *(v15 + 8);
  v21[9] = *(v15 + 9);
  v21[10] = *(v15 + 10);
  v21[11] = *(v15 + 11);
  v21[12] = *(v15 + 12);
  v21[13] = *(v15 + 13);
  v21[14] = *(v15 + 14);
  v21[15] = *(v15 + 15);
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 0;
  *(v15 + 24) = 0u;
  *(v15 + 40) = 0u;
  return (*(v16 + 8 * ((1415 * ((v19 ^ 0x21B) == 845)) ^ v19)))(v28);
}

uint64_t sub_258594EB0@<X0>(int a1@<W8>)
{
  *v1 = 0;
  v4 = *v2;
  *v1 = 1;
  return (*(v3 + 8 * ((1149 * (v4 == ((a1 - 6) ^ 0x9E))) ^ a1)))();
}

uint64_t sub_2585952F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char *a42, uint64_t a43, char *a44)
{
  v48 = v44 ^ 0x425u;
  v49 = v47 - 168;
  *(v47 - 160) = (v44 + 2089148417) ^ (439532179 * ((((2 * (v47 - 168)) | 0x91D8F61A) - (v47 - 168) + 924026099) ^ 0x164A468F));
  *(v47 - 168) = a44;
  (*(v46 + 8 * (v44 + 1297)))(v47 - 168);
  v50 = v44 + 404;
  v51 = 2021301169 * ((v49 & 0xAE04E14A | ~(v49 | 0xAE04E14A)) ^ 0xDA0D4915);
  *(v47 - 168) = *(v45 + 8 * (v44 ^ 0x9F)) - 8;
  *(v47 - 160) = a44;
  *(v47 - 152) = v51 + 469501837;
  *(v47 - 148) = (v44 + 404) ^ v51;
  v52 = v44 + 1260;
  (*(v46 + 8 * v52))(v47 - 168);
  v53 = 2021301169 * (((v49 | 0xB07439FE) - v49 + (v49 & 0x4F8BC600)) ^ 0x3B826E5E);
  *(v47 - 168) = a39;
  *(v47 - 160) = a44;
  *(v47 - 152) = v53 + 469501822;
  *(v47 - 148) = v50 ^ v53;
  v54 = (*(v46 + 8 * v52))(v47 - 168);
  *a42 = *a44;
  *(a42 + 1) = *(a44 + 1);
  *(a42 + 2) = *(a44 + 2);
  *(a42 + 3) = *(a44 + 3);
  *(a42 + 4) = *(a44 + 4);
  *(a42 + 5) = *(a44 + 5);
  return (*(v46 + 8 * (((v48 - 771) * (a42 - a44 < (v48 - 1203))) ^ v48)))(v54);
}

uint64_t sub_2585954C8@<X0>(uint64_t a1@<X3>, char a2@<W8>)
{
  v6 = (a1 + v2);
  *v6 = v5;
  v6[1] = v5;
  return (*(v4 + 8 * ((1963 * (((v3 - 178) ^ 0x1A2) == (a2 & 0x30))) ^ v3)))();
}

uint64_t sub_258595510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  *v30 = (v32 - ((2 * v32) & 0x96) - 53) ^ 0xCB;
  v36 = 2021301169 * ((v35 - 1045628768 - 2 * ((v35 - 144) & 0xC1ACF930)) ^ 0x4A5AAE90);
  *(v35 - 144) = v30;
  *(v35 - 136) = v34;
  *(v35 - 128) = v36 + 469501789;
  *(v35 - 124) = (v29 + 417) ^ v36;
  (*(v31 + 8 * (v29 ^ 0x50B)))(v35 - 144);
  *(v35 - 128) = v29 + 1520698633 * v33 + 580;
  *(v35 - 144) = a29 + 16 * v32;
  *(v35 - 136) = v34;
  v37 = (*(v31 + 8 * (v29 + 1290)))(v35 - 144);
  return (*(v31 + 8 * ((((139 * (((v29 + 953) | 0x4C) ^ 0x4EB)) ^ 0x347) * (v32 == 8)) ^ v29)))(v37);
}

uint64_t sub_258595610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, unsigned int a10, uint64_t a11, uint64_t a12)
{
  v18 = v12 - 234;
  *v13 = 0;
  v19 = v12 + 563861426;
  a11 = v14;
  LODWORD(a12) = v12 + 563861426 + (((&a9 | 0xE7804575) + (~&a9 | 0x187FBA8A)) ^ 0x6C7612D4) * v17;
  v20 = (v12 - 234) ^ 0x745;
  (*(v16 + 8 * v20))(&a9);
  *(v15 + 4) = a9;
  *v13 += 4;
  LODWORD(a12) = v19 + ((&a9 & 0x57687B3D | ~(&a9 | 0x57687B3D)) ^ 0x2361D362) * v17;
  a11 = v14 + 4;
  (*(v16 + 8 * v20))(&a9);
  v21 = a9;
  *v13 += 4;
  v22 = 1520698633 * (&a9 ^ 0xABEE1885);
  a12 = v15 + 12;
  a10 = (v21 ^ 0x4101BBA8) + v22;
  LODWORD(a11) = v22 + v18 - 21;
  v23 = (*(v16 + 8 * (v18 ^ 0x74D)))(&a9);
  return (*(v16 + 8 * ((220 * (a9 == v18 + 95750818)) ^ v18)))(v23);
}

uint64_t sub_258595768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  v32 = *(v28 + 96);
  if (v32 == 2)
  {
    return sub_2585958F8(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
  }

  if (v32 != 1)
  {
    JUMPOUT(0x2585ABEC0);
  }

  v33 = (*(v28 + v27 + 1772928543) ^ v26 | ((*(v28 + v27 + 1772928543 + 1) ^ v26) << 8)) & 0xFF00FFFF | (((30 * a26) ^ 0x86 ^ *(v28 + v27 + 1772928543 + 2)) << 16) | ((*(v28 + v27 + 1772928543 + 3) ^ v26) << 24);
  *v29 = v33 + v30 - ((2 * v33) & 0xFD6562BC);
  return (*(v31 + 8 * ((7 * ((v27 + 1772928547) < 0x40)) ^ (a3 + 985))))(8 * ((v27 + 1772928547) < 0x40), 443232135, 3, 1772928543, 1710013984, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_2585958F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v14 = (v6 + v8 + v10);
  v15 = ((*v14 ^ v9) << 24) | ((v14[1] ^ v9) << 16) | ((v14[2] ^ v9) << 8);
  LODWORD(v14) = (v15 | v14[3] ^ v9) + v12 - 2 * ((v15 | v14[3] ^ v9) & 0x7EB2B15F ^ (v14[3] ^ v9) & 1);
  v16 = ((2 * (v8 & 0x61 ^ 0xEAD4DA73)) ^ a6) & (v8 ^ 0x7C879B92) ^ v8 & 0x61 ^ 0xEAD4DA73 ^ ((2 * (v8 & 0x61 ^ 0xEAD4DA73)) & 0x801062 | 0x2A444001);
  v17 = ((2 * (v8 ^ 0x7C879B92)) ^ a6) & (v8 ^ 0x7C879B92) ^ ((2 * (v8 ^ 0x7C879B92)) & 0x100A72 | 0xC0008001);
  v18 = v16 ^ v17 & 0x140304EB ^ ((4 * v16) ^ 0x3E857CAA) & (v17 ^ 0x2AC45063);
  v19 = ((4 * v17) ^ 0x95D61566) & (v17 ^ 0x2AC45063) ^ v17 & 0x140304EB;
  v20 = v18 ^ v19 & 0x3EC754EB ^ ((16 * v18) ^ 0x938AF3DB) & (v19 ^ 0x2AC45063);
  v21 = ((16 * v19) ^ 0x928252DB) & (v19 ^ 0x2AC45063) ^ v19 & 0x3EC754EB;
  v22 = v20 ^ v21 & 0x3EC754EB ^ ((v20 << 8) ^ 0x2E4D44EB) & (v21 ^ 0x2AC45073);
  v23 = ((v21 << 8) ^ 0xFA9737EB) & (v21 ^ 0x2AC45073) ^ v21 & 0x3EC754EB;
  *(v11 + 4 * (((v8 ^ (2 * (v22 ^ v23 & 0x3EC754EB ^ ((v22 << 16) ^ 0xE4B454EB) & (v23 ^ 0x40100000) ^ ((v22 << 16) ^ 0xE4B454EB) & 0x6AD45062))) >> 2) ^ 0x59C9570)) = v14;
  return (*(v13 + 8 * ((248 * ((v8 + 4 + v10) < 0x40)) ^ v7)))();
}

uint64_t sub_258595FC8@<X0>(int a1@<W1>, uint64_t a2@<X6>, _BYTE *a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t (*a24)(void))
{
  *a3 = *(STACK[0xA48] + *a3);
  *(a2 - 12) = *(STACK[0xA88] + v24);
  *(a2 - 8) = *(STACK[0xAC8] + a1);
  *(a2 - 4) = *(STACK[0xB08] + v28);
  *(a2 - 3) = *(STACK[0xB18] + BYTE1(a1));
  *(a2 - 7) = *(STACK[0xAD8] + BYTE1(v24));
  *(a2 - 11) = *(STACK[0xA98] + *(a2 - 15));
  *(a2 - 15) = *(STACK[0xA58] + BYTE1(v28));
  v29 = *(a2 - 14);
  *(a2 - 14) = *(STACK[0xA68] + BYTE2(a1));
  *(a2 - 6) = *(STACK[0xAE8] + v29);
  *(a2 - 10) = *(STACK[0xAA8] + BYTE2(v28));
  *(a2 - 2) = *(STACK[0xB28] + BYTE2(v24));
  v30 = *(a2 - 13);
  *(a2 - 13) = *(STACK[0xA78] + v25);
  *(a2 - 9) = *(STACK[0xAB8] + v26);
  *(a2 - 5) = *(STACK[0xAF8] + v27);
  *(a2 - 1) = *(STACK[0xB38] + v30);
  return a24();
}

uint64_t sub_2585960CC@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  *a2 = 36864;
  *(result + 20) = 95751194;
  return result;
}

uint64_t sub_2585961FC@<X0>(uint64_t a1@<X2>, char a2@<W4>, int a3@<W5>, int a4@<W8>)
{
  v8 = (v6 + 4 * v5);
  v9 = v5 + 1;
  *v8 = *(a1 + 4 * (*(v6 + 4 * v9) & 1)) ^ v8[397] ^ ((*(v6 + 4 * v9) & 0x7FFFFFFE | v4 & 0x80000000) >> ((a4 ^ a2) - 34));
  return (*(v7 + 8 * (((v9 == 227) * a3) ^ a4)))();
}

uint64_t sub_258596328@<X0>(uint64_t a1@<X3>, char a2@<W5>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, unsigned int a30)
{
  v33 = v32[396] ^ ((*v32 & 0x7FFFFFFE | v32[623] & 0x80000000) >> 1);
  v32[623] = (v33 + v30 - ((v33 << ((a2 + a3 - 109) ^ (a2 - 1))) & (v31 + 602))) ^ *(&STACK[0x4E8] + (*v32 & 1));
  return (*(a1 + 8 * ((404 * (a30 > 0x26F)) ^ a3)))();
}

uint64_t sub_2585964A8(uint64_t a1, char a2, int a3)
{
  v9 = v5 + 2;
  v10 = (v7 - 2);
  *v10 = (v9 ^ a2) * (v9 + 17);
  *(v10 - 1) = (v9 ^ 0xBB) * (v9 + 18);
  return (*(v8 + 8 * (((v6 == 2) * a3) ^ v4)))();
}

uint64_t sub_2585964B8@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v5 = v2 + 8;
  v6 = v5[2];
  v7 = v5[3];
  v8 = *v5;
  v9 = v5[1];
  v10 = vrev32q_s8(v5[-3]);
  v11 = vrev32q_s8(v5[-4]);
  v12 = vrev32q_s8(v5[-1]);
  v5[-2] = vrev32q_s8(v5[-2]);
  v5[-1] = v12;
  v5[-4] = v11;
  v5[-3] = v10;
  v5[2] = vrev32q_s8(v6);
  v5[3] = vrev32q_s8(v7);
  *v5 = vrev32q_s8(v8);
  v5[1] = vrev32q_s8(v9);
  return (*(a2 + 8 * (((v3 == 32) * a1) ^ v4)))();
}

uint64_t sub_258596CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = 1511064119 * ((((v8 - 120) | 0x170AB28B) - (v8 - 120) + ((v8 - 120) & 0xE8F54D70)) ^ 0x9F75EDC1);
  *(v8 - 120) = v7 - v9 - 344;
  *(v8 - 116) = a5 - v9 + ((v7 - 809) | 0x380) + 221808956;
  *(v8 - 112) = v6;
  return (*(v5 + 8 * (v7 + 704)))(v8 - 120);
}

uint64_t sub_258596D84@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 + 127 - a1;
  v6 = *(v5 - 31);
  v7 = v2 + 127 - a1;
  v8.i64[0] = 0x3838383838383838;
  v8.i64[1] = 0x3838383838383838;
  v9.i64[0] = 0x9C9C9C9C9C9C9C9CLL;
  v9.i64[1] = 0x9C9C9C9C9C9C9C9CLL;
  *(v7 - 15) = vaddq_s8(vsubq_s8(*(v5 - 15), vandq_s8(vaddq_s8(*(v5 - 15), *(v5 - 15)), v8)), v9);
  *(v7 - 31) = vaddq_s8(vsubq_s8(v6, vandq_s8(vaddq_s8(v6, v6), v8)), v9);
  return (*(v4 + 8 * (((a1 == 96) * (v3 ^ 0x29D)) ^ v3)))();
}

void sub_258596DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  v10 = *(v8 + 16);
  v9 = (v8 + 16);
  a8[16] = *a8 ^ v10;
  v11 = a8 + 16;
  v11[1] = *(v11 - 15) ^ v9[1];
  v11[2] = *(v11 - 14) ^ v9[2];
  v11[3] = *(v11 - 13) ^ v9[3];
  v11[4] = *(v11 - 12) ^ v9[4];
  v11[5] = *(v11 - 11) ^ v9[5];
  v11[6] = *(v11 - 10) ^ v9[6];
  v11[7] = *(v11 - 9) ^ v9[7];
  v11[8] = *(v11 - 8) ^ v9[8];
  v11[9] = *(v11 - 7) ^ v9[9];
  v11[10] = *(v11 - 6) ^ v9[10];
  v11[11] = *(v11 - 5) ^ v9[11];
  v11[12] = *(v11 - 4) ^ v9[12];
  v11[13] = *(v11 - 3) ^ v9[13];
  v11[14] = *(v11 - 2) ^ v9[14];
  v11[15] = *(v11 - 1) ^ v9[15];
  JUMPOUT(0x258596FDCLL);
}

uint64_t sub_2585973A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = v11 + 32;
  v15 = (v14 ^ a2 ^ v10) + v8;
  v16 = *(a7 + v15 - 15);
  v17 = *(a7 + v15 - 31);
  v18 = v7 + v15;
  *(v18 - 15) = v16;
  *(v18 - 31) = v17;
  return (*(v13 + 8 * (((v12 == v14) * a3) ^ (v9 + 80))))();
}

void sub_2585973F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, _BYTE *a16, _BYTE *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, _BYTE *a24)
{
  *a16 ^= *a24 ^ 0x3A;
  a17[15] ^= a24[1] ^ 0x3A;
  a17[16] ^= a24[2] ^ 0x3A;
  a17[17] ^= a24[3] ^ 0x3A;
  a17[18] ^= (19 * (v24 ^ 0x6E)) ^ a24[4] ^ 0xE8;
  a17[19] ^= a24[5] ^ 0x3A;
  a17[20] ^= a24[6] ^ 0x3A;
  a17[21] ^= a24[7] ^ 0x3A;
  a17[22] ^= a24[8] ^ 0x3A;
  a17[23] ^= a24[9] ^ 0x3A;
  a17[24] ^= a24[10] ^ 0x3A;
  a17[25] ^= a24[11] ^ 0x3A;
  a17[26] ^= a24[12] ^ 0x3A;
  a17[27] ^= a24[13] ^ 0x3A;
  a17[28] ^= a24[14] ^ 0x3A;
  a17[29] ^= a24[15] ^ 0x3A;
  JUMPOUT(0x258596F0CLL);
}

uint64_t sub_2585976E0@<X0>(unsigned int a1@<W8>)
{
  if (v2)
  {
    v5 = v3 == (((a1 + 4302989) | 0x3110001A) ^ (v1 + 1307));
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  return (*(v4 + 8 * ((95 * v6) ^ a1)))();
}

uint64_t sub_258597724@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v9 = a2 + 563861812;
  v17 = a2 + 563861812 + 2021301169 * ((&v15 + 329060342 - 2 * (&v15 & 0x139D0FF6)) ^ 0x986B5856);
  v16 = v2;
  v10 = a2 ^ 0x6DD;
  (*(v8 + 8 * (a2 ^ 0x6DD)))(&v15);
  *v7 = v15;
  *v4 += 4;
  v17 = v9 + 2021301169 * ((&v15 & 0x3469836E | ~(&v15 | 0x3469836E)) ^ 0x40602B31);
  v16 = v6 + 8;
  (*(v8 + 8 * v10))(&v15);
  result = a1;
  v13 = v15;
  *v4 += 4;
  if ((((v13 ^ 0xD41CEA1E) + 736302562) ^ ((v13 ^ 0xBDE857DB) + 1108846629) ^ ((v13 ^ 0xF760E9A6) + (v5 ^ 0x89F1680))) == 0x616C5BB5)
  {
    v14 = 95751194;
  }

  else
  {
    v14 = v3 + 5;
  }

  *(a1 + 24) = v14;
  return result;
}

void sub_2585978B4(uint64_t a1)
{
  v1 = 44841361 * (((a1 | 0x674F04E) - (a1 | 0xF98B0FB1) - 108326991) ^ 0x661A0D12);
  v2 = *(a1 + 32) - v1;
  v4 = (*a1 ^ v1) == 0x1F && *(a1 + 24) != 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_258597A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10)
{
  v13 = v12 + 2129268190 < a10 + 1182020736;
  if ((a10 + 1182020736) < 0x7EEA0DDE != v12 > 0x8115F221)
  {
    v13 = (a10 + 1182020736) < 0x7EEA0DDE;
  }

  return (*(v10 + 8 * ((!v13 * (v11 - 350)) | v11)))();
}

void sub_258597ADC(uint64_t a1)
{
  v1 = 2021301169 * ((a1 + 498984030 - 2 * (a1 & 0x1DBDE45E)) ^ 0x964BB3FE);
  v2 = *(a1 + 16) + v1;
  if (*(a1 + 8))
  {
    v3 = *(a1 + 48) == 0;
  }

  else
  {
    v3 = 1;
  }

  v6 = v3 || *(a1 + 32) == 0 || (*(a1 + 40) ^ v1) == 170472095;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_258597BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, _BYTE *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  *a18 = (v38 - 101) ^ 0xB5 ^ (v36 - ((2 * v36) & 0x1C) + ((v38 + 96) ^ 0x8E));
  v40 = 2021301169 * ((v34 - (v35 | v34) + (v35 | 0x2E9BDD7)) ^ 0x891FEA77);
  STACK[0xD28] = a18;
  *(v39 - 136) = v40 + 469501789;
  *(v39 - 132) = (v38 + 106) ^ v40;
  STACK[0xD30] = v37;
  (*(a3 + 8 * (v38 + 962)))(v39 - 152);
  *(v39 - 136) = v38 + 1520698633 * (v35 ^ 0xABEE1885) + 269;
  STACK[0xD30] = v37;
  STACK[0xD28] = a19 + 16 * v36;
  v41 = (*(a34 + 8 * (v38 + 979)))(v39 - 152);
  return (*(a34 + 8 * (v38 ^ (98 * (v36 != 8)))))(v41);
}

void cp2g1b9ro()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *(&off_286999DF0 + (*(off_286999E20 + (*(off_28699A038 + (-119 * ((dword_27F948460 + dword_27F93D3E0) ^ 0x98)) - 4) ^ 0xADu)) ^ (-119 * ((dword_27F948460 + dword_27F93D3E0) ^ 0x98))) - 64);
  v1 = *(v0 - 4);
  v2 = *(&off_286999DF0 + (*(off_286999FC8 + (*(off_28699A240 + (-119 * ((dword_27F948460 + v1) ^ 0x98)) - 12) ^ 0x4Au) - 12) ^ (-119 * ((dword_27F948460 + v1) ^ 0x98))) - 24);
  v3 = (*(v2 - 4) - v1) ^ &v5;
  *(v0 - 4) = 1667229833 * v3 + 0x2761AC6306388868;
  *(v2 - 4) = 1667229833 * (v3 ^ 0xD89E539CF9C77798);
  v6[1] = 1159261966 - 439532179 * (((v6 | 0x1F52F4B7) - v6 + (v6 & 0xE0AD0B48)) ^ 0xC1F4C935);
  LOBYTE(v2) = -119 * ((*(v2 - 4) - *(v0 - 4)) ^ 0x98);
  v4 = *(&off_286999DF0 + ((-119 * (dword_27F93D3E0 ^ 0x98 ^ dword_27F948460)) ^ byte_2585CAAF0[byte_2585C7380[(-119 * (dword_27F93D3E0 ^ 0x98 ^ dword_27F948460))] ^ 0x50]) - 28);
  (*(v4 + 8 * ((*(off_286999E98 + (*(off_28699A160 + v2) ^ 0x8Du) - 8) ^ v2) + 1257)))(v6);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_258597EE8(uint64_t a1)
{
  v4 = *(a1 + 16);
  *v1 = 0;
  return (*(v2 + 8 * (((*(v4 + 17) == 1) * (((v3 - 164) | 0x83) + 487)) ^ v3)))();
}

void sub_258597F80(uint64_t a1)
{
  v1 = 344723623 * ((((2 * a1) | 0x2BF434D0) - a1 - 368712296) ^ 0xE25977A1);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_258598058@<X0>(int a1@<W8>)
{
  v5 = 5 * (a1 ^ 0x336);
  *v3 = v1;
  (*(v4 + 8 * (v5 ^ 0x70B)))();
  result = (*(v4 + 8 * ((v5 - 14) ^ 0x705)))();
  *(v2 + 8) = *v3;
  return result;
}

uint64_t sub_2585980E0(__n128 a1)
{
  v3[-1] = a1;
  *v3 = a1;
  return (*(v5 + 8 * (((v4 == 0) * v2) ^ v1)))();
}

uint64_t sub_258598114@<X0>(int a1@<W8>)
{
  v5 = *(v3 + 3);
  *v1 = 4;
  return (*(v4 + 8 * (((v5 == 87) * (v2 ^ 0x27D)) ^ a1)))();
}

uint64_t sub_258598A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t (*a20)(uint64_t))
{
  v23 = 1511064119 * ((((v22 - 136) | 0xE41B6F7E) - (v22 - 136) + ((v22 - 136) & 0x1BE49080)) ^ 0x6C643034);
  *(v22 - 128) = a4;
  *(v22 - 136) = v20 - v23 + 421;
  *(v22 - 132) = (a6 ^ 0x65FF66FF) - v23 + ((2 * a6) & 0xCBFECDFE) - 542179508;
  v24 = (*(v21 + 8 * (v20 ^ 0x647)))(v22 - 136);
  return a20(v24);
}

uint64_t sub_258598BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  v15 = (v14 + 4 * v9);
  v16 = v9 + 1;
  v17 = *(v14 + 4 * v16);
  v18 = v15[397] ^ ((v17 & 0x7FFFFFFE | (((v8 + a6) | a7) ^ a8) & v10) >> 1);
  *v15 = (v18 + v12 - (a5 & (2 * v18))) ^ *(v13 + 4 * (v17 & 1));
  return (*(a2 + 8 * (((v16 != 227) * v11) ^ v8)))();
}

void sub_258598C1C(_DWORD *a1)
{
  v1 = *a1 ^ (2033342611 * ((-2 - ((a1 | 0x84567C2) + (~a1 | 0xF7BA983D))) ^ 0xF2D690F9));
  __asm { BRAA            X11, X17 }
}

uint64_t sub_258598CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _BYTE *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  *a11 = *(v19 - 256);
  a11[1] = *(v19 - 255);
  a11[2] = *(v19 - 254);
  a11[3] = *(v19 - 253);
  a11[4] = *(v19 - 252);
  a11[5] = *(v19 - 251);
  a11[6] = *(v19 - 250);
  a11[7] = *(v19 - 249);
  a11[8] = *(v19 - 248);
  a11[9] = *(v19 - 247);
  a11[10] = *(v19 - 246);
  a11[11] = *(v19 - 245);
  a11[12] = *(v19 - 244);
  a11[13] = *(v19 - 243);
  a11[14] = *(v19 - 242);
  a11[15] = *(v19 - 241);
  return (*(a3 + 8 * ((494 * (((v18 + 323) ^ 0x4BB) - 53 < 16)) ^ (v18 + 323))))(a1, a2, a3, a4, a5, a6, a11 + 16, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_258598D9C@<X0>(unint64_t a1@<X6>, uint64_t a2@<X8>, uint64_t a3, _BYTE *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, __int16 a63)
{
  v126 = v65 + 936;
  v121 = *(v67 + 8 * v65);
  v125 = a64;
  v68 = *(a2 - 12);
  v69 = *(a2 - 8);
  v124 = a65 != 1;
  v70 = *(a2 - 4);
  v123 = 2u % a65;
  v71 = *(a2 - 3);
  v72 = *(a2 - 7);
  v73 = *(a2 - 11);
  v74 = *(a2 - 15);
  v122 = 3u % a65;
  v75 = *(a2 - 14);
  v76 = *(a2 - 6);
  v77 = *(a2 - 10);
  v78 = *(a2 - 2);
  v79 = *(a2 - 13);
  v80 = *(a2 - 9);
  v81 = *(a2 - 5);
  v82 = *(a2 - 1);
  v83 = *(a5 - 14);
  v84 = *(a4 - 15) ^ *(*(a5 - 15) + (*v66 ^ a1));
  *v66 = v84 ^ a1;
  v85 = *(a5 - 10);
  v86 = *(a4 - 11) ^ *(*(a5 - 11) + (v68 ^ a1));
  *(a2 - 12) = v86 ^ a1;
  v87 = *(a5 - 6);
  v88 = *(a4 - 7) ^ *(*(a5 - 7) + (((v126 - 114) ^ v69) ^ 0xD7u));
  *(a2 - 8) = v88 ^ a1;
  v89 = *(a5 - 2);
  v90 = *(a4 - 3) ^ *(*(a5 - 3) + (v70 ^ a1));
  *(a2 - 4) = v90 ^ a1;
  v91 = *(a4 - 2) ^ *(v89 + (v72 ^ a1));
  *(a2 - 3) = v91 ^ a1;
  v92 = *(a4 - 6) ^ *(v87 + (v73 ^ a1));
  *(a2 - 7) = v92 ^ a1;
  v93 = *(a4 - 10) ^ *(v85 + (v74 ^ a1));
  *(a2 - 11) = v93 ^ a1;
  v94 = *(a4 - 14) ^ *(v83 + (v71 ^ a1));
  *(a2 - 15) = v94 ^ a1;
  v95 = *(a5 - 12);
  LOBYTE(v83) = *(a4 - 13) ^ *(*(a5 - 13) + (v76 ^ a1));
  *(a2 - 14) = v83 ^ a1;
  v96 = v75 ^ a1;
  v97 = *(a5 - 4);
  LOBYTE(v96) = *(a4 - 5) ^ *(*(a5 - 5) + v96);
  *(a2 - 6) = v96 ^ a1;
  v98 = *(a5 - 8);
  LOBYTE(v85) = *(a4 - 9) ^ *(*(a5 - 9) + (v78 ^ a1));
  *(a2 - 10) = v85 ^ a1;
  v99 = v77 ^ a1;
  v100 = *a5;
  v101 = *(a4 - 1) ^ *(*(a5 - 1) + v99);
  *(a2 - 2) = v101 ^ a1;
  LOBYTE(v99) = *(a4 - 12) ^ *(v95 + (v80 ^ a1));
  *(a2 - 13) = v99 ^ a1;
  v102 = *(a4 - 8) ^ *(v98 + (v81 ^ a1));
  *(a2 - 9) = v102 ^ a1;
  v103 = *(a4 - 4) ^ *(v97 + (v82 ^ a1));
  *(a2 - 5) = v103 ^ a1;
  v104 = *a4 ^ *(v100 + (v79 ^ a1));
  *(a2 - 1) = v104 ^ a1;
  v105 = &a61 + 128 * (8 % v125);
  v106 = v105 + 1176;
  LODWORD(v99) = *(*(v105 + 148) + 4 * v94) ^ *(*(v105 + 147) + 4 * v84) ^ *(*(v105 + 149) + 4 * v83) ^ *(*(v105 + 150) + 4 * v99);
  v107 = BYTE3(v99) ^ 0xFFFFFF9C;
  *(a2 - 13) = BYTE3(v99) ^ 0x9C;
  v108 = WORD1(v99) ^ 0xFFFFFF9C;
  *(a2 - 14) = BYTE2(v99) ^ 0x9C;
  *(a2 - 15) = BYTE1(v99) ^ 0x9C;
  v109 = v99 ^ 0xFFFFFF9C;
  *v66 = v99 ^ 0x9C;
  v110 = &v106[4 * v124];
  v111 = *(v110[3] + 4 * v102);
  LODWORD(v110) = *(*v110 + 4 * v86) ^ 0xA5673BC2 ^ *(v110[1] + 4 * v93) ^ *(v110[2] + 4 * v85) ^ (v111 - 1519961150 - ((2 * v111) & 0x4ACE7784));
  *(a2 - 9) = BYTE3(v110) - ((v110 >> 23) & 0x38) - 100;
  *(a2 - 10) = BYTE2(v110) - ((v110 >> 15) & 0x38) - 100;
  *(a2 - 11) = BYTE1(v110) - ((v110 >> 7) & 0x38) - 100;
  *(a2 - 12) = v110 - ((2 * v110) & 0x38) - 100;
  v112 = &v106[4 * v123];
  v113 = *(v112[3] + 4 * v103);
  v114 = *(*v112 + 4 * v88) ^ 0xE00188C9 ^ *(v112[1] + 4 * v92) ^ *(v112[2] + 4 * v96) ^ (v113 - 536770359 - ((2 * v113) & 0xC0031192));
  *(a2 - 5) = HIBYTE(v114) - ((v114 >> 23) & 0x38) - 100;
  *(a2 - 6) = BYTE2(v114) - ((v114 >> 15) & 0x38) - 100;
  *(a2 - 7) = BYTE1(v114) - ((v114 >> 7) & 0x38) - 100;
  *(a2 - 8) = v114 - ((2 * v114) & 0x38) - 100;
  v115 = &v106[4 * v122];
  v116 = *(*v115 + 4 * v90);
  v117 = *(v115[1] + 4 * v91);
  v118 = *(v115[2] + 4 * v101);
  LODWORD(v115) = *(v115[3] + 4 * v104);
  v119 = v116 ^ 0x6F9322C ^ v117 ^ v118 ^ (v115 + 116994604 - ((2 * v115) & 0xDF26458));
  *(a2 - 1) = HIBYTE(v119) - ((v119 >> 23) & 0x38) - 100;
  *(a2 - 2) = BYTE2(v119) - ((v119 >> 15) & 0x38) - 100;
  *(a2 - 3) = BYTE1(v119) - ((v119 >> 7) & 0x38) - 100;
  *(a2 - 4) = v119 - ((2 * v119) & 0x38) - 100;
  return (*(v67 + 8 * v126))(*(v67 + 8 * v126), v108, v119 - ((2 * v119) & 0x38) - 100, v107, v109, HIWORD(v119) - ((v119 >> 15) & 0x38) - 100, a1, a5, a3, a4, a5, a6, a7, a8, v121, a10, a11, a12, a13, a14);
}

void sub_258599300(uint64_t a1)
{
  v1 = *(a1 + 28) - 1380645169 * ((~a1 & 0x2AEA8384 | a1 & 0xD5157C7B) ^ 0xA82F8BD4);
  v2 = *(&off_286999DF0 + (v1 ^ 0x521));
  v3 = *(v2 + 8 * ((((*(v2 + 8 * (v1 + 102)))(12, 0x10000403E1C8BA9) == 0) * ((v1 - 54) ^ 0x569)) ^ v1));
  __asm { BRAA            X9, X17 }
}

uint64_t sub_2585993C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, int a13, int a14, int a15, int a16, _DWORD *a17, uint64_t a18, int *a19, unsigned int a20)
{
  v25 = 1021229753 * ((&a17 - 448301325 - 2 * (&a17 & 0xE54776F3)) ^ 0x5BAACD19);
  a18 = v24;
  LODWORD(a17) = v25 + 1369827689;
  HIDWORD(a17) = v25 + v23 + 554;
  (*(v21 + 8 * (v23 + 1323)))(&a17);
  LODWORD(a19) = (v23 - 546253285) ^ (1380645169 * ((((2 * &a17) | 0x191F7418) - &a17 - 210745868) ^ 0x8E4AB25C));
  a17 = v20;
  a18 = v24;
  (*(v21 + 8 * (v23 + 1321)))(&a17);
  v26 = 439532179 * ((&a17 + 664181889 - 2 * (&a17 & 0x27969C81)) ^ 0xF930A103);
  a20 = v26 ^ 0xBC6B3AAD;
  a18 = v24;
  a19 = &a13;
  LODWORD(a17) = v26 + v23 + 958;
  HIDWORD(a17) = 752870518 - v26;
  v27 = (*(v21 + 8 * (v23 ^ 0x6F3)))(&a17);
  v28 = v20[1];
  *v20 += a13;
  v20[1] = v28 + a14;
  v29 = v20[3];
  v20[2] += a15;
  v20[3] = v29 + a16;
  return (*(v21 + 8 * ((457 * ((v22 + a12) > 0xFFFFFFBF)) ^ v23)))(v27);
}

uint64_t sub_25859959C@<X0>(uint64_t a1@<X8>)
{
  v8 = *(v6 + v3 + 8);
  v9 = (a1 + v3);
  *v9 = *(v6 + v3);
  v9[1] = v8;
  return (*(v7 + 8 * (((v3 + v2 - 312 == v1) * v5) ^ v4)))();
}

uint64_t sub_258599668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, _DWORD **a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, char a37)
{
  v43 = 3 * (v37 ^ 0xBC23E5D2);
  v44 = *a20;
  if (((v43 - 300) & *a20) != (v37 ^ 0xBC23E5D2) - v39 + 522 - 1476941205 || (v45 = *(&off_286999DF0 + v37 + 1138498219), v47 = *(v45 - 4), v46 = (v45 - 4), v47))
  {
    *a9 = 95709145;
    JUMPOUT(0x25859199CLL);
  }

  v48 = v43 + 264;
  *v46 = v44;
  v54 = *(&off_286999DF0 + (v43 ^ 0x1A6));
  *v54 = 255;
  *v44 |= ~v44[*v44 & 0x3ELL] << ((3 * (v37 ^ 0xD2) + 8) ^ 0x27);
  v44[4] |= ~v44[v44[4] & 0x3ELL] << 16;
  v44[8] |= ~v44[v44[8] & 0x3ELL] << 16;
  v44[12] |= ~v44[v44[12] & 0x3ELL] << 16;
  v44[16] |= ~v44[v44[16] & 0x3ELL] << 16;
  v44[20] |= ~v44[v44[20] & 0x3ELL] << 16;
  v44[24] |= ~v44[v44[24] & 0x3ELL] << 16;
  v44[28] |= ~v44[v44[28] & 0x3ELL] << 16;
  v44[32] |= ~v44[v44[32] & 0x3ELL] << 16;
  v44[36] |= ~v44[v44[36] & 0x3ELL] << 16;
  v44[40] |= ~v44[v44[40] & 0x3ELL] << 16;
  v44[44] |= ~v44[v44[44] & 0x3ELL] << 16;
  v44[48] |= ~v44[v44[48] & 0x3ELL] << 16;
  v44[52] |= ~v44[v44[52] & 0x3ELL] << 16;
  v44[56] |= ~v44[v44[56] & 0x3ELL] << 16;
  v44[60] |= ~v44[v44[60] & 0x3ELL] << 16;
  (*(v38 + 8 * (v43 + 1254)))(&a37, 0, 1024);
  *(v42 - 152) = &a37;
  v49 = (&a35 ^ 0xCEAFEEC36DF4FFFCLL) + 0x3150113C920B0004 + ((2 * &a35) & 0x9D5FDD86DBE9FFF8);
  LODWORD(a19) = v41 - 3049;
  return (*(a32 + 8 * ((((((v48 + 3786) | (v41 - 3049)) ^ 0x580855B5) == 32) * (((v48 - 400241336) & 0x17DB31AF) - 288)) ^ v48)))(a32, 2818026714, 1476941205, a24, (v41 - 3049), v50, v51, v52, a9, a10, a11, 0, ((v49 % 0x25) ^ 0xFFBF6BCFDFFFFFC3) + 2 * ((v49 % 0x25) & 3), a14, a15, a16, v40 + 908, a18, a19, a20, a21, a22, a23, a24, v46, v54);
}

uint64_t sub_2585999FC@<X0>(uint64_t a1@<X8>)
{
  v8 = *(v1 + a1 + 40);
  v9 = v2 + a1;
  *(v9 + 24) = *(v1 + a1 + 24);
  *(v9 + 40) = v8;
  return (*(v7 + 8 * (((a1 + ((v3 + v6) & v5) == 236) * v4) ^ v3)))();
}

uint64_t sub_258599A44(uint64_t a1)
{
  v160 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v144 = (*v2 ^ 0xAF6C7EF3) + 2146958320 + ((2 * *v2) & 0x5ED8FDE6);
  v145 = (v2[1] ^ 0xAF6C7EF3) + 2146958320 + ((2 * v2[1]) & 0x5ED8FDE6);
  v146 = (v2[2] ^ 0xAF6C7EF3) + 2146958320 + ((2 * v2[2]) & 0x5ED8FDE6);
  v147 = (v2[3] ^ 0xAF6C7EF3) + 2146958320 + ((2 * v2[3]) & 0x5ED8FDE6);
  v148 = (v2[4] ^ 0xAF6C7EF3) + 2146958320 + ((2 * v2[4]) & 0x5ED8FDE6);
  v149 = (v2[5] ^ 0xAF6C7EF3) + 2146958320 + ((2 * v2[5]) & 0x5ED8FDE6);
  v150 = (v2[6] ^ 0xAF6C7EF3) + 2146958320 + ((2 * v2[6]) & 0x5ED8FDE6);
  v151 = (v2[7] ^ 0xAF6C7EF3) + 2146958320 + ((2 * v2[7]) & 0x5ED8FDE6);
  v152 = (v2[8] ^ 0xAF6C7EF3) + 2146958320 + ((2 * v2[8]) & 0x5ED8FDE6);
  v153 = (v2[9] ^ 0xAF6C7EF3) + 2146958320 + ((2 * v2[9]) & 0x5ED8FDE6);
  v154 = (v2[10] ^ 0xAF6C7EF3) + 2146958320 + ((2 * v2[10]) & 0x5ED8FDE6);
  v155 = (v2[11] ^ 0xAF6C7EF3) + 2146958320 + ((2 * v2[11]) & 0x5ED8FDE6);
  v156 = (v2[12] ^ 0xAF6C7EF3) + 2146958320 + ((2 * v2[12]) & 0x5ED8FDE6);
  v157 = (v2[13] ^ 0xAF6C7EF3) + 2146958320 + ((2 * v2[13]) & 0x5ED8FDE6);
  v158 = (v2[14] ^ 0xAF6C7EF3) + 2146958320 + ((2 * v2[14]) & 0x5ED8FDE6);
  v159 = (v2[15] ^ 0xAF6C7EF3) + 2146958320 + ((2 * v2[15]) & 0x5ED8FDE6);
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  LODWORD(v2) = v144;
  v6 = *v1 + v144 - 430291097 + ((((v5 & v3 | v4 & ~v3) ^ 0xA7C920BE) - 2005366874) ^ (((v5 & v3 | v4 & ~v3) ^ 0xE297B2E2) - 853142022) ^ (((v5 & v3 | v4 & ~v3) ^ 0x455E925C) + 1794061640));
  HIDWORD(v7) = ((v6 ^ 0xB71E74D5) + 14962629) ^ v6 ^ ((v6 ^ 0x1AFCD96) + 5633672) ^ ((v6 ^ 0x14F8352) + 11909188) ^ ((v6 ^ 0x1FBFEFF) + 116207);
  LODWORD(v7) = ((v6 ^ 0xA1BE9C37) + 809805607) ^ v6 ^ ((v6 ^ 0xB9EF2D3A) + 672470572) ^ ((v6 ^ 0x89AB9B1C) + 408002574) ^ ((v6 ^ 0xFFFFEEFF) + 1845876207);
  v8 = v3 + 240858315 + ((((v7 >> 25) ^ 0x70070BE1) + 1973078106) ^ (((v7 >> 25) ^ 0x79B00652) + 2083374571) ^ (((v7 >> 25) ^ 0xB557A84) + 248035645));
  v9 = ((v8 ^ 0xA81374A1) + 1110860294) ^ v8 ^ ((v8 ^ 0xE661CE4E) + 205838571) ^ ((v8 ^ 0xA756AC4B) + 1299430128) ^ ((v8 ^ 0xFCFEFFFF) + 383510876);
  v10 = v3 & (v9 ^ 0x15DAE95B) | v5 & ~(v9 ^ 0x15DAE95B);
  v11 = v4 + v145 + 120844097 + (((v10 ^ 0x36C30A57) - 2098284870) ^ ((v10 ^ 0xF3AB9A19) + 1199974136) ^ ((v10 ^ 0xC568904E) + 1900358817));
  v12 = (v11 ^ 0xFDE90D23) & (2 * (v11 & 0xFE019043)) ^ v11 & 0xFE019043;
  v13 = ((2 * (v11 ^ 0x3DE82DA5)) ^ 0x87D37BCC) & (v11 ^ 0x3DE82DA5) ^ (2 * (v11 ^ 0x3DE82DA5)) & 0xC3E9BDE6;
  v14 = v13 ^ 0x40288422;
  v15 = (v13 ^ 0x80000104) & (4 * v12) ^ v12;
  v16 = ((4 * v14) ^ 0xFA6F798) & v14 ^ (4 * v14) & 0xC3E9BDE4;
  v17 = (v16 ^ 0x3A0B580) & (16 * v15) ^ v15;
  v18 = ((16 * (v16 ^ 0xC0490866)) ^ 0x3E9BDE60) & (v16 ^ 0xC0490866) ^ (16 * (v16 ^ 0xC0490866)) & 0xC3E9BDE0;
  v19 = v17 ^ 0xC3E9BDE6 ^ (v18 ^ 0x2899C00) & (v17 << 8);
  v20 = ((((v19 << 16) & 0x10000 ^ v19 ^ ((v19 << 16) ^ 0x60000) & ((((v18 ^ 0xC1602186) << 8) ^ 0x50000) & (v18 ^ 0xC1602186) ^ ((v18 ^ 0xC1602186) << 8) & 0x10000)) << 13) ^ (v11 << 12)) & 0xFFFFF000 | ((((v11 ^ 0x8579B6BB) + 2071471866) ^ v11 ^ ((v11 ^ 0x487F8F82) - 1233248319) ^ ((v11 ^ 0xB707AD7A) + 1225145658) ^ ((v11 ^ 0x7BFFFBFE) - 2046923842)) >> 20);
  v21 = (((v20 ^ 0x3056F27F) - 740471068) ^ ((v20 ^ 0xAC02FBC8) + 1334396757) ^ ((v20 ^ 0xB2ECF9A8) + 1365722421)) + (((v9 ^ 0xEB80356) + 110048448) ^ ((v9 ^ 0xC53D8AAF) - 854934201) ^ ((v9 ^ 0xDE5F60A2) - 697804980));
  v22 = v21 + 350147785;
  v23 = (v9 ^ 0x15DAE95B) & (v21 + 350147785) | v3 & ~(v21 + 350147785);
  v24 = v5 + v146 - 1908291785 + (((v23 ^ 0xDCBA6723) - 1416299997) ^ ((v23 ^ 0xAAE9EF81) - 574131583) ^ ((v23 ^ 0x765388A2) + 24974756));
  v25 = 2 * (v24 & 0xEF4B91BF);
  v26 = ((2 * (v24 ^ 0xE91D5D4D)) ^ 0xCAD99E4) & (v24 ^ 0xE91D5D4D) ^ (2 * (v24 ^ 0xE91D5D4D)) & 0x656CCF2;
  v27 = v26 ^ 0x2524412;
  v28 = (v26 ^ 0x40488E0) & (4 * (v25 & (v24 ^ 0xEF0B5D3F) ^ v24 & 0xEF4B91BF)) ^ v25 & (v24 ^ 0xEF0B5D3F) ^ v24 & 0xEF4B91BF;
  v29 = ((4 * v27) ^ 0x195B33C8) & v27 ^ (4 * v27) & 0x656CCF0;
  v30 = v28 ^ 0x656CCF2 ^ (v29 ^ 0x5200C0) & (16 * v28);
  v31 = v25 & (v24 ^ 0xEF6B99BE) ^ v24 & 0xEF4B91BF;
  v32 = ((2 * (v24 ^ 0x316CBBF6)) ^ 0xBC4E5492) & (v24 ^ 0x316CBBF6) ^ (2 * (v24 ^ 0x316CBBF6)) & 0xDE272A48;
  v33 = (v32 ^ 0x9C060000) & (4 * v31) ^ v31;
  v34 = ((4 * (v32 ^ 0x42212A49)) ^ 0x789CA924) & (v32 ^ 0x42212A49) ^ (4 * (v32 ^ 0x42212A49)) & 0xDE272A48;
  v35 = (v34 ^ 0x58042800) & (16 * v33) ^ v33;
  v36 = ((16 * (v34 ^ 0x86230249)) ^ 0xE272A490) & (v34 ^ 0x86230249) ^ (16 * (v34 ^ 0x86230249)) & 0xDE272A40;
  v37 = v35 ^ 0xDE272A49 ^ (v36 ^ 0xC2222000) & (v35 << 8);
  v38 = ((((v30 << 8) & 0xC00 ^ v30 ^ ((v30 << 8) ^ 0x3200) & (((16 * (v29 ^ 0x604CC32)) ^ 0xF00) & (v29 ^ 0x604CC32) ^ (16 * (v29 ^ 0x604CC32)) & 0xC00)) << 18) ^ (v24 << 17)) & 0xFFFE0000 | ((v24 ^ (2 * ((v37 << 16) & 0x5E270000 ^ v37 ^ ((v37 << 16) ^ 0x2A490000) & (((v36 ^ 0x1C050A49) << 8) & 0x5E270000 ^ 0x58050000 ^ (((v36 ^ 0x1C050A49) << 8) ^ 0x272A0000) & (v36 ^ 0x1C050A49))))) >> 15);
  v39 = v21 - 1717206301 + (((v38 ^ 0xFD1108AC) - 1767975097) ^ ((v38 ^ 0xD75C3F22) - 1126965047) ^ ((v38 ^ 0x3AFBB981) + 1366582892));
  v40 = v39 & (v9 ^ 0x15DAE95B ^ (v21 + 350147785)) ^ v9;
  v41 = v3 + v147 + 57620927 + (((v40 ^ 0x8F592D31) + 174186999) ^ ((v40 ^ 0xFF581DC3) + 2053165317) ^ ((v40 ^ 0x65DBD9A9) - 521988753));
  v42 = 2 * (v41 & 0xFE07F4AF);
  v43 = ((2 * (v41 ^ 0x8AE7B529)) ^ 0xE9C0830C) & (v41 ^ 0x8AE7B529) ^ (2 * (v41 ^ 0x8AE7B529)) & 0x74E04186;
  v44 = v43 ^ 0x14204082;
  v45 = v42 & (v41 ^ 0xFEE7F42F) ^ v41 & 0xFE07F4AF ^ 0x74E04186 ^ (v43 ^ 0x60000104) & (4 * (v42 & (v41 ^ 0xFEE7F42F) ^ v41 & 0xFE07F4AF));
  v46 = ((4 * v44) ^ 0xD3810618) & v44 ^ (4 * v44) & 0x74E04184;
  v47 = 16 * v45;
  v48 = (v46 ^ 0x24604186) & ((16 * v45) ^ 0x4E041860);
  v49 = v42 & (v41 ^ 0xFC97E68E) ^ v41 & 0xFE07F4AF;
  v50 = ((2 * (v41 ^ 0x9096CED2)) ^ 0xDD2274FA) & (v41 ^ 0x9096CED2) ^ (2 * (v41 ^ 0x9096CED2)) & 0x6E913A7C;
  v51 = (v50 ^ 0x48003078) & (4 * v49) ^ v49;
  v52 = ((4 * (v50 ^ 0x22910A05)) ^ 0xBA44E9F4) & (v50 ^ 0x22910A05) ^ (4 * (v50 ^ 0x22910A05)) & 0x6E913A7C;
  v53 = (v52 ^ 0x2A002870) & (16 * v51) ^ v51;
  v54 = ((16 * (v52 ^ 0x44911209)) ^ 0xE913A7D0) & (v52 ^ 0x44911209) ^ (16 * (v52 ^ 0x44911209)) & 0x6E913A70;
  v55 = v53 ^ 0x6E913A7D ^ (v54 ^ 0x68112200) & (v53 << 8);
  v56 = (((((v47 & 0x74E04180 ^ v45 ^ v48) << 8) ^ v47 & 0x74E04180 ^ v45 ^ v48 ^ ((v47 & 0x74E04180 ^ v45 ^ v48) << 8) & ((v46 ^ 0x86) & (16 * (v46 ^ 0x24604186)) ^ 0x100)) << 23) ^ (v41 << 22)) & 0xFFC00000 | ((v41 ^ (2 * ((v55 << 16) & 0x6E910000 ^ v55 ^ ((v55 << 16) ^ 0x3A7D0000) & (((v54 ^ 0x680182D) << 8) & 0x6E910000 ^ 0x6E810000 ^ (((v54 ^ 0x680182D) << 8) ^ 0x113A0000) & (v54 ^ 0x680182D))))) >> 10);
  v57 = v39 + 877295208 + (((v56 ^ 0x8BD87BC) + 735432652) ^ ((v56 ^ 0xB0EA8B4F) - 1820146887) ^ ((v56 ^ 0x508ACD13) + 1944225125));
  HIDWORD(v7) = v148 + (((v9 ^ 0xED835182) - 441162132) ^ ((v9 ^ 0x183DBDE3) + 269126155) ^ ((v9 ^ 0xE064053A) - 397200684)) - 1473661415 + ((v21 - ((2 * (v21 + 350147785)) & 0x94B25B90) + 1597506193) ^ 0x4A592DC8 ^ v57 & (v39 ^ (v21 + 350147785)));
  LODWORD(v7) = HIDWORD(v7);
  v58 = (v7 >> 25) + v57;
  HIDWORD(v7) = v149 + v22 + 404966215 + ((v39 - ((2 * v39) & 0xEF5F24E0) - 139488656) ^ 0xF7AF9270 ^ v58 & (v57 ^ v39));
  LODWORD(v7) = HIDWORD(v7);
  v59 = (v7 >> 20) + v58;
  HIDWORD(v7) = v150 + v39 + 2026621744 + ((v57 - ((2 * v57) & 0x2AAC0D3C) + 357959326) ^ 0x1556069E ^ v59 & (v58 ^ v57));
  LODWORD(v7) = HIDWORD(v7);
  v60 = (v7 >> 15) + v59;
  HIDWORD(v7) = v151 + v57 - 840820194 + ((v58 - ((2 * v58) & 0xDE771C2) + 116635873) ^ 0x6F3B8E1 ^ v60 & (v59 ^ v58));
  LODWORD(v7) = HIDWORD(v7);
  v61 = (v7 >> 10) + v60;
  HIDWORD(v7) = v152 + v58 + 974921205 + ((v59 - ((2 * v59) & 0x3943972) + 30022841) ^ 0x1CA1CB9 ^ v61 & (v60 ^ v59));
  LODWORD(v7) = HIDWORD(v7);
  v62 = (v7 >> 25) + v61;
  HIDWORD(v7) = v153 + v59 + 1541438668 + ((v60 - ((2 * v60) & 0x995A199E) - 861074225) ^ 0xCCAD0CCF ^ v62 & (v61 ^ v60));
  LODWORD(v7) = HIDWORD(v7);
  v63 = (v7 >> 20) + v62;
  HIDWORD(v7) = v154 + v60 - 795156274 + (v62 & v63 | v61 & ~v63);
  LODWORD(v7) = HIDWORD(v7);
  v64 = (v7 >> 15) + v63;
  HIDWORD(v7) = v155 + v61 + 1509448923 + (v63 & v64 | v62 & ~v64);
  LODWORD(v7) = HIDWORD(v7);
  v65 = (v7 >> 10) + v64;
  HIDWORD(v7) = v156 + v62 + 1009489471 + (v64 & v65 | v63 & ~v65);
  LODWORD(v7) = HIDWORD(v7);
  v66 = (v7 >> 25) + v65;
  HIDWORD(v7) = v157 + v63 - 835455312 + (v65 & v66 | v64 & ~v66);
  LODWORD(v7) = HIDWORD(v7);
  v67 = (v7 >> 20) + v66;
  HIDWORD(v7) = v158 + v64 + 1997850795 + (v66 & v67 | v65 & ~v67);
  LODWORD(v7) = HIDWORD(v7);
  v68 = (v7 >> 15) + v67;
  HIDWORD(v7) = v159 + v65 + 441421118 + (v67 & v68 | v66 & ~v68);
  LODWORD(v7) = HIDWORD(v7);
  v69 = (v7 >> 10) + v68;
  HIDWORD(v7) = v145 + v66 - 960910721 + (v69 & v67 | v68 & ~v67);
  LODWORD(v7) = HIDWORD(v7);
  v70 = (v7 >> 27) + v69;
  HIDWORD(v7) = v150 + v67 - 1864615843 + (v70 & v68 | v69 & ~v68);
  LODWORD(v7) = HIDWORD(v7);
  v71 = (v7 >> 23) + v70;
  HIDWORD(v7) = v155 + v68 - 151396498 + (v71 & v69 | v70 & ~v69);
  LODWORD(v7) = HIDWORD(v7);
  v72 = (v7 >> 18) + v71;
  HIDWORD(v7) = v144 + v69 - 1169011513 + (v72 & v70 | v71 & ~v70);
  LODWORD(v7) = HIDWORD(v7);
  v73 = (v7 >> 12) + v72;
  HIDWORD(v7) = v149 + v70 - 1496672902 + (v73 & v71 | v72 & ~v71);
  LODWORD(v7) = HIDWORD(v7);
  v74 = (v7 >> 27) + v73;
  HIDWORD(v7) = v154 + v71 - 757098128 + (v74 & v72 | v73 & ~v72);
  LODWORD(v7) = HIDWORD(v7);
  v75 = (v7 >> 23) + v74;
  HIDWORD(v7) = v159 + v72 - 1455592546 + (v75 & v73 | v74 & ~v73);
  LODWORD(v7) = HIDWORD(v7);
  v76 = (v7 >> 18) + v75;
  HIDWORD(v7) = v148 + v73 - 1200652059 + (v76 & v74 | v75 & ~v74);
  LODWORD(v7) = HIDWORD(v7);
  v77 = (v7 >> 12) + v76;
  HIDWORD(v7) = v153 + v74 - 226667773 + (v77 & v75 | v76 & ~v75);
  LODWORD(v7) = HIDWORD(v7);
  v78 = (v7 >> 27) + v77;
  HIDWORD(v7) = v158 + v75 - 1814917901 + (v78 & v76 | v77 & ~v76);
  LODWORD(v7) = HIDWORD(v7);
  v79 = (v7 >> 23) + v78;
  HIDWORD(v7) = v147 + v76 - 982478172 + (v79 & v77 | v78 & ~v77);
  LODWORD(v7) = HIDWORD(v7);
  v80 = (v7 >> 18) + v79;
  HIDWORD(v7) = v152 + v77 + 368417290 + (v80 & v78 | v79 & ~v78);
  LODWORD(v7) = HIDWORD(v7);
  v81 = (v7 >> 12) + v80;
  HIDWORD(v7) = v157 + v78 + 2055171618 + (v81 & v79 | v80 & ~v79);
  LODWORD(v7) = HIDWORD(v7);
  v82 = (v7 >> 27) + v81;
  HIDWORD(v7) = v146 + v79 - 846517995 + (v82 & v80 | v81 & ~v80);
  LODWORD(v7) = HIDWORD(v7);
  v83 = (v7 >> 23) + v82;
  HIDWORD(v7) = v151 + v80 + 940214262 + (v83 & v81 | v82 & ~v81);
  LODWORD(v7) = HIDWORD(v7);
  v84 = (v7 >> 18) + v83;
  HIDWORD(v7) = v156 + v81 + 1573245351 + ((v84 ^ v83) & v82 ^ v83);
  LODWORD(v7) = HIDWORD(v7);
  v144 = *(&v144 + (v82 & 0xF));
  *(&v144 + (v82 & 0xF)) = v2;
  v85 = (v7 >> 12) + v84;
  v86 = v145;
  v145 = *(&v144 + (v85 & 0xF));
  *(&v144 + (v85 & 0xF)) = v86;
  v87 = v146;
  v146 = *(&v144 + (v84 & 0xF));
  *(&v144 + (v84 & 0xF)) = v87;
  LODWORD(v2) = v147;
  v147 = *(&v144 + (v83 & 0xF));
  *(&v144 + (v83 & 0xF)) = v2;
  v88 = v148;
  v148 = *(&v144 + (v82 >> 4));
  *(&v144 + (v82 >> 4)) = v88;
  v89 = v149;
  v149 = *(&v144 + (v85 >> 4));
  *(&v144 + (v85 >> 4)) = v89;
  v90 = v150;
  v150 = *(&v144 + (v84 >> 4));
  *(&v144 + (v84 >> 4)) = v90;
  v91 = v151;
  v151 = *(&v144 + (v83 >> 4));
  *(&v144 + (v83 >> 4)) = v91;
  HIDWORD(v7) = v149 + v82 - 795492769 + (v85 ^ v84 ^ v83);
  LODWORD(v7) = HIDWORD(v7);
  v92 = (v7 >> 28) + v85;
  HIDWORD(v7) = v152 + v83 + 1477278622 + (v92 ^ v85 ^ v84);
  LODWORD(v7) = HIDWORD(v7);
  v93 = (v7 >> 21) + v92;
  HIDWORD(v7) = v155 + v84 + 1043916351 + (v92 ^ v85 ^ v93);
  LODWORD(v7) = HIDWORD(v7);
  v94 = (v7 >> 16) + v93;
  HIDWORD(v7) = v158 + v85 - 830423767 + (v93 ^ v92 ^ v94);
  LODWORD(v7) = HIDWORD(v7);
  v95 = (v7 >> 9) + v94;
  HIDWORD(v7) = v145 + v92 + 1968861025 + (v94 ^ v93 ^ v95);
  LODWORD(v7) = HIDWORD(v7);
  v96 = (v7 >> 28) + v95;
  HIDWORD(v7) = v148 + v93 + 477779142 + (v95 ^ v94 ^ v96);
  LODWORD(v7) = HIDWORD(v7);
  v97 = (v7 >> 21) + v96;
  HIDWORD(v7) = v151 + v94 - 950611843 + (v96 ^ v95 ^ v97);
  LODWORD(v7) = HIDWORD(v7);
  v98 = (v7 >> 16) + v97;
  HIDWORD(v7) = v154 + v95 - 1889844851 + (v97 ^ v96 ^ v98);
  LODWORD(v7) = HIDWORD(v7);
  v99 = (v7 >> 9) + v98;
  HIDWORD(v7) = v157 + v96 - 113835037 + (v98 ^ v97 ^ v99);
  LODWORD(v7) = HIDWORD(v7);
  v100 = (v7 >> 28) + v99;
  HIDWORD(v7) = v144 + v97 - 1153651433 + (v99 ^ v98 ^ v100);
  LODWORD(v7) = HIDWORD(v7);
  v101 = (v7 >> 21) + v100;
  HIDWORD(v7) = v147 + v98 - 1517636190 + (v100 ^ v99 ^ v101);
  LODWORD(v7) = HIDWORD(v7);
  v102 = (v7 >> 16) + v101;
  HIDWORD(v7) = v150 + v99 - 719085022 + (v101 ^ v100 ^ v102);
  LODWORD(v7) = HIDWORD(v7);
  v103 = (v7 >> 9) + v102;
  HIDWORD(v7) = v153 + v100 - 1435478698 + (v102 ^ v101 ^ v103);
  LODWORD(v7) = HIDWORD(v7);
  v104 = (v7 >> 28) + v103;
  HIDWORD(v7) = v156 + v101 - 1216930046 + (v103 ^ v102 ^ v104);
  LODWORD(v7) = HIDWORD(v7);
  v105 = (v7 >> 21) + v104;
  HIDWORD(v7) = v159 + v102 - 264371691 + (v104 ^ v103 ^ v105);
  LODWORD(v7) = HIDWORD(v7);
  v106 = (v7 >> 16) + v105;
  HIDWORD(v7) = v146 + v103 - 1790452862 + (v105 ^ v104 ^ v106);
  LODWORD(v7) = HIDWORD(v7);
  v107 = (v7 >> 9) + v106;
  HIDWORD(v7) = v144 + v104 - 993745055 + ((v107 | ~v105) ^ v106);
  LODWORD(v7) = HIDWORD(v7);
  v108 = (v7 >> 26) + v107;
  HIDWORD(v7) = v151 + v105 + 331777204 + ((v108 | ~v106) ^ v107);
  LODWORD(v7) = HIDWORD(v7);
  v109 = (v7 >> 22) + v108;
  HIDWORD(v7) = v158 + v106 + 2083498180 + ((v109 | ~v107) ^ v108);
  LODWORD(v7) = HIDWORD(v7);
  v110 = (v7 >> 17) + v109;
  HIDWORD(v7) = v149 + v107 - 852548266 + ((v110 | ~v108) ^ v109);
  LODWORD(v7) = HIDWORD(v7);
  v111 = (v7 >> 11) + v110;
  HIDWORD(v7) = v156 + v108 + 905371360 + ((v111 | ~v109) ^ v110);
  LODWORD(v7) = HIDWORD(v7);
  v112 = (v7 >> 26) + v111;
  HIDWORD(v7) = v147 + v109 + 1604866479 + ((v112 | ~v110) ^ v111);
  LODWORD(v7) = HIDWORD(v7);
  v113 = (v7 >> 22) + v112;
  HIDWORD(v7) = v154 + v110 - 796165734 + ((v113 | ~v111) ^ v112);
  LODWORD(v7) = HIDWORD(v7);
  v114 = (v7 >> 17) + v113;
  HIDWORD(v7) = v145 + v111 + 1444930286 + ((v114 | ~v112) ^ v113);
  LODWORD(v7) = HIDWORD(v7);
  v115 = (v7 >> 11) + v114;
  HIDWORD(v7) = v152 + v112 + 1078199148 + ((v115 | ~v113) ^ v114);
  LODWORD(v7) = HIDWORD(v7);
  v116 = (v7 >> 26) + v115;
  HIDWORD(v7) = v159 + v113 - 825725955 + ((v116 | ~v114) ^ v115);
  LODWORD(v7) = HIDWORD(v7);
  v117 = (v7 >> 22) + v116;
  HIDWORD(v7) = v150 + v114 + 1939654705 + ((v117 | ~v115) ^ v116);
  LODWORD(v7) = HIDWORD(v7);
  v118 = (v7 >> 17) + v117;
  HIDWORD(v7) = v157 + v115 + 514037438 + ((v118 | ~v116) ^ v117);
  LODWORD(v7) = HIDWORD(v7);
  v119 = (v7 >> 11) + v118;
  HIDWORD(v7) = v148 + v116 - 940637281 + ((v119 | ~v117) ^ v118);
  LODWORD(v7) = HIDWORD(v7);
  v120 = v119 + ((v7 >> 26) ^ 0xFBF94FDB) + ((2 * (v7 >> 26)) & 0xF7F29FB6) + 1971321336;
  v121 = ((v120 ^ 0xF6282385) + 2024707498) ^ v120 ^ ((v120 ^ 0xFC6D173E) + 1928044819) ^ ((v120 ^ 0xFC3809F) - 2126170444) ^ ((v120 ^ 0x74FFFDF7) - 92714020);
  HIDWORD(v7) = v155 + v117 - 1915324590 + ((v119 - ((2 * v119) & 0x8F06DAA6) + 1199795539) ^ 0xB87C92AC ^ (v121 ^ 0x8E86B62C) & v118);
  LODWORD(v7) = HIDWORD(v7);
  LODWORD(v2) = (((v121 ^ 0x81088111) - 507889683) ^ ((v121 ^ 0xE1EB0B65) - 2124825191) ^ ((v121 ^ 0x119AC3A7) + 1898476891)) - 88866447 + (v7 >> 22);
  v122 = (v2 ^ 0xF37FFF5F ^ ((v2 ^ 0xBE3A3415) + 1296419659) ^ ((v2 ^ 0x990DF181) + 1785859807) ^ ((v2 ^ 0x55482ACB) - 1506290283) ^ ((v2 ^ 0x7EFFEFFF) - 1920986975)) & v119 ^ v121;
  HIDWORD(v7) = v146 + v118 - 233141548 + (((v122 ^ 0xB1FECB03) + 908111917) ^ ((v122 ^ 0xC712718E) + 1087113890) ^ ((v122 ^ 0xF86A0CA1) + 2142533519));
  LODWORD(v7) = HIDWORD(v7);
  v123 = v2 + 1346282670 + (v7 >> 17);
  v124 = (v123 ^ 0x2B7410B3) & (2 * (v123 & 0xA3415AB2)) ^ v123 & 0xA3415AB2;
  v125 = ((2 * (v123 ^ 0x6BF604B7)) ^ 0x916EBC0A) & (v123 ^ 0x6BF604B7) ^ (2 * (v123 ^ 0x6BF604B7)) & 0xC8B75E04;
  v126 = v125 ^ 0x48914205;
  v127 = (v125 ^ 0x80061C00) & (4 * v124) ^ v124;
  v128 = ((4 * v126) ^ 0x22DD7814) & v126 ^ (4 * v126) & 0xC8B75E04;
  v129 = (v128 ^ 0x955800) & (16 * v127) ^ v127;
  v130 = ((16 * (v128 ^ 0xC8220601)) ^ 0x8B75E050) & (v128 ^ 0xC8220601) ^ (16 * (v128 ^ 0xC8220601)) & 0xC8B75E00;
  v131 = v129 ^ 0xC8B75E05 ^ (v130 ^ 0x88354000) & (v129 << 8);
  v132 = v123 ^ (2 * ((v131 << 16) & 0x48B70000 ^ v131 ^ ((v131 << 16) ^ 0x5E050000) & (((v130 ^ 0x40821E05) << 8) & 0x48B70000 ^ 0x48A10000 ^ (((v130 ^ 0x40821E05) << 8) ^ 0x375E0000) & (v130 ^ 0x40821E05))));
  v133 = (v2 ^ 0xF37FFE55) & (2 * (v2 & 0xF37FFF60)) ^ v2 & 0xF37FFF60;
  v134 = ((2 * (v2 ^ 0xB54CC2D5)) ^ 0x8C667B6A) & (v2 ^ 0xB54CC2D5) ^ (2 * (v2 ^ 0xB54CC2D5)) & 0x46333DB4;
  v135 = v134 ^ 0x42110495;
  v136 = (v134 ^ 0x4223900) & (4 * v133) ^ v133;
  v137 = ((4 * v135) ^ 0x18CCF6D4) & v135 ^ (4 * v135) & 0x46333DB4;
  v138 = (v137 ^ 0x3480) & (16 * v136) ^ v136;
  v139 = ((16 * (v137 ^ 0x46330921)) ^ 0x6333DB50) & (v137 ^ 0x46330921) ^ (16 * (v137 ^ 0x46330921)) & 0x46333DB0;
  v140 = v138 ^ 0x46333DB5 ^ (v139 ^ 0x42331900) & (v138 << 8);
  v141 = v2 ^ (2 * ((v140 << 16) & 0x46330000 ^ v140 ^ ((v140 << 16) ^ 0x3DB50000) & (((v139 ^ 0x40024A5) << 8) & 0x46330000 ^ 0x44020000 ^ (((v139 ^ 0x40024A5) << 8) ^ 0x333D0000) & (v139 ^ 0x40024A5)))) ^ v132 & 0x4E4D156 ^ (v132 ^ 0x5DDA1947) & (v121 ^ 0x759D9885);
  HIDWORD(v7) = v153 + v119 - 764643633 + (((v141 ^ 0xA1643F72) - 996821984) ^ ((v141 ^ 0xD91E69C6) - 1125129556) ^ ((v141 ^ 0xF43E3C07) - 1848658069));
  LODWORD(v7) = HIDWORD(v7);
  result = v1[1];
  *v1 = *v1 - 298581807 + (((v121 ^ 0x207A27E9) + 1086886165) ^ ((v121 ^ 0xA97509E4) - 909656294) ^ ((v121 ^ 0xF87667DE) - 1731931868));
  v1[1] = result + v123 + ((v7 >> 11) ^ 0x7FFBBECC) + ((2 * (v7 >> 11)) & 0xFFF77D98) + 591764454;
  v143 = v1[3] - 209715360 + v2;
  v1[2] = v1[2] - 1555998030 + v123;
  v1[3] = v143;
  return result;
}

void sub_25859B750(uint64_t a1)
{
  v1 = *(a1 + 8) + 1520698633 * ((~a1 & 0x93A70CC1 | a1 & 0x6C58F33E) ^ 0x38491444);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_25859B820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(a4 + v9) = *(a7 + v7);
  v12 = (v8 - 101) + v7 - 26 == v10;
  return (*(v11 + 8 * ((4 * v12) | (32 * v12) | v8)))();
}

uint64_t sub_25859B8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  *v38 = v38[623] + 1 - ((-((v35 - 624) ^ (v36 - 623)) | (v35 - 624)) >= 0);
  *(v39 - 128) = (v37 + 1) + v33;
  *(v39 - 144) = v33 | 3;
  *(v39 - 136) = v33;
  *(v39 - 112) = v34 ^ v33;
  *(v39 - 108) = (a27 ^ 1) + v33;
  *(v39 - 120) = (v34 ^ 0x1F) - v33;
  *(v39 - 116) = v33 ^ 0x985DC93B;
  v40 = (*(v32 + 12168))(v39 - 144);
  return (*(a32 + 8 * *(v39 - 104)))(v40);
}

uint64_t sub_25859BD14(__n128 a1)
{
  a1.n128_u16[0] = -25444;
  a1.n128_u8[2] = -100;
  a1.n128_u8[3] = -100;
  a1.n128_u8[4] = -100;
  a1.n128_u8[5] = -100;
  a1.n128_u8[6] = -100;
  a1.n128_u8[7] = -100;
  return sub_25859BD3C(a1);
}

uint64_t sub_25859BD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, int a56)
{
  (*(v58 + 8 * (v56 - 1749644851)))(a24);
  (*(v58 + 8 * (v56 - 1749644851)))(a23, &STACK[0xD28], 16);
  v60 = *(v57 + 8 * (v56 - 1749646272));
  a56 = 0;
  v61 = 2072138273 * ((~((v59 - 168) | 0x7235A825) + ((v59 - 168) & 0x7235A825)) ^ 0x647FF539);
  *(v59 - 140) = 48936756 - v61;
  *(v59 - 136) = v61 + v56 - 1749645985 - 188;
  *(v59 - 160) = v60;
  *(v59 - 152) = &STACK[0x280];
  *(v59 - 168) = &a56;
  v62 = (*(v58 + 8 * (v56 - 1749644967)))(v59 - 168);
  return (*(v58 + 8 * ((1303 * (*(v59 - 144) == v56 - 1653895197)) ^ (v56 - 1749645985))))(v62);
}

void sub_25859BEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v33 = (*(a1 + 8 * (v32 + 581)))(8);
  v48 = *(&off_286999DF0 + v32 - 761);
  *(v48 - 4) = v33;
  *v33 = 0x9595959595959595;
  v34 = (*(a32 + 8 * (v32 ^ 0x645u)))(9);
  v35 = *(&off_286999DF0 + v32 - 812);
  *v35 = v34;
  (*(a32 + 8 * (v32 + 653)))();
  v36 = (*(a32 + 8 * (v32 ^ 0x645u)))(31);
  v37 = *(&off_286999DF0 + (v32 ^ 0x3EFu));
  *(v37 - 4) = v36;
  v37 = (v37 - 4);
  (*(a32 + 8 * (v32 + 653)))();
  v38 = (*(a32 + 8 * (v32 + 581)))(9);
  v39 = *(&off_286999DF0 + (v32 ^ 0x30Eu));
  *(v39 - 4) = v38;
  v40 = v39;
  (*(a32 + 8 * (v32 + 653)))();
  *(*v37 + 4) = 0;
  v41 = *(&off_286999DF0 + v32 - 844);
  *(v41 + 12) = 0;
  v42 = *(v48 - 4);
  v43 = *(v40 - 4);
  v44 = *v37;
  v45 = *v35;
  v45[8] = -122;
  *(v41 + 29) = 51;
  v44[21] = 102;
  *(v42 + 7) = 1;
  *(v42 + 2) = -5453;
  v43[4] = 68;
  v45[1] = -34;
  v44[23] = 80;
  *(v41 + 5) = 96;
  *v43 = 88;
  *(v41 + 23) = -15;
  v44[28] = 79;
  v43[8] = -11;
  *(v41 + 6) = 34;
  v44[20] = 17;
  v44[25] = 83;
  *(v42 + 5) = -121;
  *v45 = 25;
  *(v41 + 22) = 39;
  v43[2] = 3;
  *(v42 + 1) = 26;
  *(v42 + 6) = 54;
  v44[18] = -109;
  v43[7] = 23;
  v44[30] = 59;
  *v42 = -44;
  *(v41 + 9) = -72;
  v45[3] = -113;
  *(v45 + 3) = -1200;
  *(v41 + 27) = 119;
  *(v41 + 8) = -36;
  *(v41 + 24) = 73;
  v43[6] = 47;
  v43[3] = -80;
  v43[1] = 73;
  v44[1] = -59;
  *(v42 + 4) = 99;
  v43[5] = -52;
  v46 = *v37;
  v47 = *v35;
  *(v41 + 17) = 36;
  *(v46 + 17) = 13;
  *v46 = -16;
  *(v46 + 13) = 4009;
  *(v46 + 27) = 31;
  *(v46 + 15) = 66;
  v47[5] = 45;
  *(v46 + 24) = -33;
  *(v41 + 26) = -39;
  v47[4] = 113;
  *(v46 + 11) = -105;
  *(v41 + 20) = -14;
  *(v41 + 25) = -86;
  *(v46 + 9) = -85;
  *(v46 + 29) = 34;
  *(v41 + 16) = 120;
  *(v46 + 22) = 77;
  *(v46 + 8) = -92;
  *(v41 + 11) = -39;
  v47[2] = -90;
  *(v41 + 2) = 58;
  *(v46 + 10) = 73;
  *(v41 + 1) = 79;
  *(v46 + 2) = -116;
  *(v41 + 7) = -15;
  *(v46 + 19) = -98;
  *(v41 + 3) = -119;
  *(v41 + 21) = -72;
  *(v46 + 12) = 32;
  *(v41 + 19) = 69;
  *(v46 + 3) = 52;
  *v41 = 105;
  *(v41 + 18) = -105;
  *(v46 + 16) = 32;
  *(v41 + 28) = -15;
  *(v41 + 10) = -17;
  *(v46 + 26) = -121;
  *(v41 + 4) = 72;
  *(v41 + 30) = -15;
  JUMPOUT(0x25859C840);
}

uint64_t sub_25859C9D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = v11 - 1;
  *(a8 + v14) ^= *(v9 + (v14 & 0xF)) ^ *(v8 + (v14 & 0xF)) ^ (-73 * (v14 & 0xF)) ^ *(v10 + (v14 & 0xF));
  return (*(v13 + 8 * ((202 * (v14 != 0)) ^ (v12 - 534))))();
}

uint64_t sub_25859CA6C@<X0>(unsigned int a1@<W8>)
{
  v7 = *(v2 + (v3 + v5 + 1176) % a1);
  v8 = *(v2 + (v3 + v5 + 1146) % a1);
  v9 = *(v2 + (v3 + v5 + 1006) % a1);
  *(v2 + (v3 + v5 + (v1 ^ 0x1Du)) % a1) ^= (((v7 >> 7) | (2 * v7)) - 2 * (((v7 >> 7) | (2 * v7)) & 7) + 7) ^ (((v8 >> 2) | (v8 << 6)) + (~(2 * ((v8 >> 2) | (v8 << 6))) | 0x37) + 101) ^ (((v9 >> 3) | (32 * v9)) - ((2 * ((v9 >> 3) | (32 * v9))) & 0x8C) - 58) ^ 0xA5;
  return (*(v6 + 8 * ((366 * (v5 + 1 == v4 + 256)) ^ v1)))();
}

uint64_t sub_25859CB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t (*a15)(void))
{
  *a8 = *(STACK[0xA68] + v22);
  a8[4] = *(STACK[0xAA8] + v19);
  a8[8] = *(STACK[0xAE8] + v18);
  a8[12] = *(STACK[0xB28] + v17);
  a8[1] = *(STACK[0xAB8] + v21);
  a8[5] = *(STACK[0xAF8] + v24);
  a8[9] = *(STACK[0xB38] + a3);
  a8[13] = *(STACK[0xA78] + a2);
  a8[2] = *(STACK[0xB08] + a5);
  a8[10] = *(STACK[0xA88] + v16);
  a8[6] = *(STACK[0xB48] + v15);
  a8[14] = *(STACK[0xAC8] + a6);
  a8[15] = *(STACK[0xB18] + a7);
  a8[11] = *(STACK[0xAD8] + a4);
  a8[7] = *(STACK[0xA98] + v20);
  a8[3] = *(STACK[0xB58] + v23);
  return a15();
}

uint64_t sub_25859CC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, unsigned int a11, char a12, int a13)
{
  v18 = *(v15 + 6);
  a11 = v13 - 439532179 * (((&a11 | 0x80567B32) - (&a11 | 0x7FA984CD) + 2141816013) ^ 0x5EF046B0) - 723453752;
  a12 = -109 * (((&a11 | 0x32) - (&a11 | 0xCD) - 51) ^ 0xB0) + (v18 ^ 0xEC) + ((2 * v18) & 0xD8) + 92;
  v19 = (*(v14 + 8 * (v13 + 1232)))(&a11);
  return (*(v14 + 8 * ((1017 * (a13 == ((v17 | 0x280) ^ (v16 + 878)))) ^ v13)))(v19);
}

uint64_t sub_25859CD0C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + v4) = *(v6 + v4) ^ 0x9C;
  v9 = v4 + 1 < 0xE2CD386E && ((743 * (v1 ^ 0x3F1)) ^ v2) + v4 < v3;
  return (*(v7 + 8 * ((v9 * v5) ^ v1)))();
}

uint64_t sub_25859D084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22)
{
  v27 = v22[623];
  if (v23 - (v24 - 692) >= ~(v24 - 692))
  {
    ++v27;
  }

  *v22 = v27;
  return (*(v26 + 8 * (((~(((a22 & 0xAD5EE7EF) - 953648223) & (v24 - 692)) + v25 == 0) * (((((a22 & 0xAD5EE7EF) + 1871402064) & 0x9074AF63) - 1083) ^ ((a22 & 0xAD5EE7EF) - 1431373896) & 0x555106D8)) ^ a22 & 0xAD5EE7EF)))();
}

uint64_t sub_25859D0C8()
{
  v2 = v0 & 0xB45C577;
  v3 = (*(v1 + 8 * ((v0 & 0xB45C577u) + 463)))(16, 0x10000403E1C8BA9) != 0;
  return (*(v1 + 8 * ((v3 * (((v2 - 812) ^ 0xFFFFFE26) + v2 - 760)) ^ v2)))();
}

uint64_t sub_25859D404(double a1, double a2, int8x16_t a3, int8x16_t a4)
{
  v13 = (v6 + (v8 + v7));
  v14 = *v13;
  v15 = v13[1];
  v16 = (v5 + v8);
  *v16 = vaddq_s8(vsubq_s8(v14, vandq_s8(vaddq_s8(v14, v14), a4)), a3);
  v16[1] = vaddq_s8(vsubq_s8(v15, vandq_s8(vaddq_s8(v15, v15), a4)), a3);
  return (*(v4 + 8 * ((((((v9 - 945) | v10) ^ v11) + v8 != 64) * v12) ^ (v9 - 832))))();
}

uint64_t sub_25859D46C@<X0>(uint64_t a1@<X6>, unsigned __int8 *a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, _BYTE *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, __int16 a43, unsigned __int8 a44, unsigned __int8 a45)
{
  v46 = *(a1 - 12);
  v47 = *(a1 - 8);
  v48 = *(a1 - 4);
  v49 = *(a1 - 3);
  v50 = *(a1 - 7);
  v51 = *(a1 - 11);
  v52 = *(a1 - 15);
  v53 = *(a1 - 14);
  v54 = *(a1 - 6);
  v55 = *(a1 - 10);
  v56 = *(a1 - 2);
  v57 = *(a1 - 13);
  v58 = *(a1 - 9);
  v59 = *(a1 - 5);
  v60 = *(a1 - 1);
  v61 = *a18 ^ *(*(a19 - 15) + *a2);
  *a2 = v61;
  v62 = a18[4] ^ *(*(a19 - 11) + v46);
  *(a1 - 12) = v62;
  v63 = a18[8] ^ *(*(a19 - 7) + v47);
  *(a1 - 8) = v63;
  LOBYTE(v47) = a18[12] ^ *(*(a19 - 3) + v48);
  *(a1 - 4) = v47;
  LOBYTE(v46) = a18[13] ^ *(*(a19 - 2) + v50);
  *(a1 - 3) = v46;
  LOBYTE(v51) = a18[((v45 ^ 0x36Au) - 294) ^ 0x1AELL] ^ *(*(a19 - 6) + v51);
  *(a1 - 7) = v51;
  LOBYTE(v52) = a18[5] ^ *(*(a19 - 10) + v52);
  *(a1 - 11) = v52;
  LOBYTE(v49) = a18[1] ^ *(*(a19 - 14) + v49);
  *(a1 - 15) = v49;
  v64 = a18[2] ^ *(*(a19 - 13) + v54);
  *(a1 - 14) = v64;
  LOBYTE(v50) = a18[10] ^ *(*(a19 - 5) + v53);
  *(a1 - 6) = v50;
  LOBYTE(v54) = a18[6] ^ *(*(a19 - 9) + v56);
  *(a1 - 10) = v54;
  LOBYTE(v53) = a18[14] ^ *(*(a19 - 1) + v55);
  *(a1 - 2) = v53;
  LOBYTE(v56) = a18[3] ^ *(*(a19 - 12) + v58);
  *(a1 - 13) = v56;
  LOBYTE(v58) = a18[7] ^ *(*(a19 - 8) + v59);
  *(a1 - 9) = v58;
  LOBYTE(v59) = a18[11] ^ *(*(a19 - 4) + v60);
  *(a1 - 5) = v59;
  LOBYTE(v60) = a18[15] ^ *(*a19 + v57);
  *(a1 - 1) = v60;
  v65 = (a27 + ((8u % a44) << 7));
  v66 = *(v65[148] + 4 * v49) ^ *(v65[147] + 4 * v61) ^ (*(v65[149] + 4 * v64) ^ *(v65[150] + 4 * v56));
  *(a1 - 13) = BYTE3(v66);
  *(a1 - 14) = BYTE2(v66);
  *(a1 - 15) = BYTE1(v66);
  *a2 = v66;
  v67 = &v65[4 * (a45 != 1) + 147];
  LODWORD(v54) = *(v67[1] + 4 * v52) ^ *(*v67 + 4 * v62) ^ *(v67[2] + 4 * v54) ^ *(v67[3] + 4 * v58);
  *(a1 - 9) = BYTE3(v54);
  *(a1 - 10) = BYTE2(v54);
  *(a1 - 12) = v54;
  v68 = &v65[4 * (((v45 ^ 0x6A) + 53) % a45) + 147];
  v69 = *(v68[1] + 4 * v51) ^ *(*v68 + 4 * v63) ^ (*(v68[2] + 4 * v50) ^ *(v68[3] + 4 * v59));
  *(a1 - 5) = BYTE3(v69);
  *(a1 - 6) = BYTE2(v69);
  *(a1 - 8) = v69;
  v70 = &v65[4 * (3u % a45) + 147];
  v71 = v47;
  v72 = *v70;
  v73 = v70[1];
  LODWORD(v46) = *(v73 + 4 * v46) ^ *(*v70 + 4 * v71);
  v74 = v53;
  v75 = v70[2];
  v76 = v46 ^ *(v75 + 4 * v74) ^ *(v70[3] + 4 * v60);
  *(a1 - 4) = v76;
  return (*(a28 + 8 * (v45 ^ 0x36A)))(v66, v69, a28, v75, v72, 8, a1, v73, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_25859D7EC@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v11 = v9 + a1;
  *(v11 - 1) = (&a8 ^ 0xBA) * (&a8 + 17);
  *(v11 + ((v8 + 252) ^ 0xFFFFFFFFFFFFFD43)) = (&a8 ^ 0xBB) * (&a8 + 18);
  return (*(v10 + 8 * ((61 * ((a1 & 0xFFFFFFFE) == 2)) ^ v8)))(186);
}

void sub_25859D854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, _DWORD *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49)
{
  v51 = (*(v50 + 8 * (v49 ^ 0x44Cu)))(&a49, 0);
  (*(v50 + 8 * (v49 ^ 0x454u)))(v51);
  *a30 = (*(v50 + 8 * (v49 | 0x454u)))();
  JUMPOUT(0x25859D8CCLL);
}

uint64_t sub_25859DA24@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *a1;
  *a2 = 0;
  return (*(v2 + 8 * ((98 * (((*(v4 + 17) == 1) ^ (v3 + 71)) & 1)) ^ v3)))();
}

uint64_t sub_25859DABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48, int a49, uint64_t a50)
{
  v53 = *(a50 + 12);
  *(v52 - 168) = (v50 + 1613849650) ^ (2072138273 * ((((v52 - 168) | 0x60BBC3E1) - ((v52 - 168) | 0x9F443C1E) - 1622918114) ^ 0x890E6102));
  *(v52 - 159) = (v53 ^ 0x6F) - 33 * ((((v52 + 88) | 0xE1) - ((v52 + 88) | 0x1E) + 30) ^ 2) + ((v53 << (((v50 + 100) & 0x36) - 37)) & 0xDE) - 67;
  *(v52 - 160) = ((a49 ^ 0xFC) + ((a49 << (((v50 + 66) ^ 0xCC) & 0x77)) & 0xF8) + 64) ^ (33 * ((((v52 + 88) | 0xE1) - ((v52 + 88) | 0x1E) + 30) ^ 2));
  v54 = (*(v51 + 8 * (v50 + 871)))(v52 - 168);
  return (*(v51 + 8 * ((1548 * (*(v52 - 164) == 95751194)) ^ v50)))(v54);
}

uint64_t sub_25859DC30@<X0>(uint64_t a1@<X8>)
{
  v4 = *v2;
  *v2 = v2[3];
  v2[3] = v4;
  v5 = v2[1];
  v2[1] = v2[2];
  v2[2] = v5;
  return (*(a1 + 8 * (((v1 == 1369827674) * (19 * (v3 ^ 0x403) - 373)) ^ v3)))();
}

uint64_t sub_25859DCEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, unsigned int a31, uint64_t a32, int a33, char a34)
{
  *(v38 - 120) = v37 + a31;
  *(v38 - 112) = v35 | 0xC;
  *(v38 - 144) = v36 - 44841361 * ((((v38 - 144) ^ 0x90140102 | 0x47A9EEE5) + ((v38 - 144) ^ 0x4080E8E1 | 0xB856111A)) ^ 0xB0FA14BE) + 1184;
  *(v38 - 136) = v35;
  *(v38 - 128) = &a34;
  (*(v34 + 8 * (v36 ^ 0x671)))(v38 - 144);
  return (*(v34 + 8 * ((770 * (*(v38 - 104) == ((v36 + 38) ^ 0x5B50C95))) ^ v36)))(a19);
}

uint64_t sub_25859DDE8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9, uint64_t a10, unsigned int *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, int a25)
{
  *a9 = a25 + 1;
  v28 = (v27 - 152);
  v29 = 1380645169 * ((~((v27 - 152) | v26) + ((v27 - 152) & v26)) ^ 0x555D72766522F49DLL);
  v28[2] = v29 + *a11;
  *(v27 - 124) = (a1 - 1738685416) ^ v29;
  *(v27 - 120) = (a1 - 980586490) ^ v29;
  *v28 = v29 + 5119;
  *(v27 - 128) = ((a1 - 980586490) ^ 0x1A) - v29;
  *(v27 - 144) = v29;
  *(v27 - 116) = v29 + a1 - 980586490 + 30;
  v30 = (*(v25 + 8 * (a1 + 206)))(v27 - 152);
  return (*(v25 + 8 * *(v27 - 112)))(v30);
}

void sub_25859DF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (((a21 - v27) | (v27 - a21)) < 0)
  {
    v31 = 0x80000000;
  }

  else
  {
    v31 = -2147483647;
  }

  *v30 = v31 + (v27 ^ (v28 - 624) ^ (v27 - 625213993) & 0x7D4C57BD);
  (*(v29 + 8 * (v27 + 1533)))(a27);
  JUMPOUT(0x25859DFE8);
}

uint64_t sub_25859E0FC(uint64_t a1)
{
  v5 = (*(v2 + 8 * ((v3 + 455176304) ^ 0x1B217498u)))(a1, 0);
  if (v5 == 16)
  {
    v8 = 4294925267;
    v7 = a1;
    goto LABEL_8;
  }

  v6 = v5;
  if (v5 == 12)
  {
    v8 = 4294925268;
    v7 = a1;
LABEL_8:
    (*(v2 + 12264))(v7);
    return v8;
  }

  v7 = a1;
  if (v6)
  {
    v8 = 4294925266;
    goto LABEL_8;
  }

  *v1 = a1;
  return v6;
}

uint64_t sub_25859E19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, __int128 a47, __int128 a48)
{
  v50 = *(a1 + 244);
  a47 = *(a1 + 228);
  a48 = v50;
  return (*(v49 + 8 * v48))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_25859E1E4@<X0>(uint64_t a1@<X4>, char a2@<W8>)
{
  v6 = v2 - 1;
  *(a1 + v6) = (((v3 ^ 0xDE) - 22) ^ a2) * (a2 + 17);
  return (*(v5 + 8 * (((v6 != 0) * v4) ^ v3)))();
}

uint64_t sub_25859E2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, _BYTE *a16, _BYTE *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  LODWORD(a26) = -267087900;
  a16[112] = a17[112] + (((v26 + 74) | 0x40) ^ 0x51) - ((2 * a17[112]) & 0x38);
  a16[113] = a17[113] - ((2 * a17[113]) & 0x38) - 100;
  a16[114] = a17[114] - ((2 * a17[114]) & 0x38) - 100;
  a16[115] = a17[115] - ((2 * a17[115]) & 0x38) - 100;
  a16[116] = a17[116] - ((2 * a17[116]) & 0x38) - 100;
  a16[117] = a17[117] - ((2 * a17[117]) & 0x38) - 100;
  a16[118] = a17[118] - ((2 * a17[118]) & 0x38) - 100;
  a16[119] = a17[119] - ((2 * a17[119]) & 0x38) - 100;
  a16[120] = a17[120] - ((2 * a17[120]) & 0x38) - 100;
  a16[121] = a17[121] - ((2 * a17[121]) & 0x38) - 100;
  a16[122] = a17[122] - ((2 * a17[122]) & 0x38) - 100;
  a16[123] = a17[123] - ((2 * a17[123]) & 0x38) - 100;
  a16[124] = a17[124] - ((2 * a17[124]) & 0x38) - 100;
  a16[125] = a17[125] - ((2 * a17[125]) & 0x38) - 100;
  a16[126] = a17[126] - ((2 * a17[126]) & 0x38) - 100;
  a16[127] = a17[127] - ((2 * a17[127]) & 0x38) - 100;
  return (*(v27 + 8 * ((v26 + 36) | 8)))(128, a2, a16 + 112, a4, a5, a6, 156, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_25859E4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  if (a50)
  {
    v54 = *((v51 ^ 0x5986922EB5DEE499) - 0x5986922EB5DEE481) == 0;
  }

  else
  {
    v54 = 1;
  }

  v57 = v54 || v52 == 0 || v50 == 0;
  return (*(v53 + 8 * ((103 * ((v57 ^ 1) & 1)) ^ 0x533)))();
}

uint64_t sub_25859E550@<X0>(char a1@<W8>)
{
  v8 = (v1 - 2);
  v9 = a1 + 2;
  *v8 = (v9 ^ v3) * (v9 + 17);
  *(v8 - 1) = (v9 ^ 0xBB) * (v9 + 18);
  return (*(v7 + 8 * (((v2 + 2 != ((v6 + 142) ^ v4)) * v5) ^ v6)))();
}

uint64_t sub_25859E5A4(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v4 = *(a1 + 8) + v1 == v2 + 1029983639 + 5 * (v2 ^ 0x452);
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  return (*(v3 + 8 * ((387 * v5) ^ v2)))();
}

uint64_t sub_25859E62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, int a12, int a13, int a14, int a15, uint64_t a16, int a17, int a18, int a19, int a20, _DWORD *a21, _DWORD *a22, int *a23, int a24)
{
  a21 = v28;
  LODWORD(a22) = a14;
  HIDWORD(a22) = a15 + v25 + 645;
  (*(v26 + 8 * (v25 ^ 0x7B8)))(&a21);
  a24 = a12;
  LODWORD(a21) = a13 + v25 + 661;
  HIDWORD(a21) = a11;
  a22 = v28;
  a23 = &a17;
  (*(v26 + 8 * (v25 ^ 0x418)))(&a21);
  v29 = v24[1];
  *v24 += a17;
  v24[1] = v29 + a18;
  v30 = v24[3];
  v24[2] += a19;
  v24[3] = v30 + a20;
  LODWORD(a23) = (v25 + 599971632) ^ a10;
  a21 = v24;
  a22 = v28;
  (*(v26 + 8 * (v25 + 995)))(&a21);
  return (*(v26 + 8 * ((26 * (v27 - 1799588306 + 337 * (v25 ^ 0x209u) < 0xFFFFFFC0)) ^ v25)))((v27 - 64));
}

uint64_t sub_25859E7A0(unsigned int a1, __int128 *a2)
{
  v7 = *a2;
  v8 = (v5 + a1);
  *v8 = *(a2 - 1);
  v8[1] = v7;
  return (*(v6 + 8 * (((v4 == 0) * v3) ^ v2)))(a1 + 32, a2 + 2);
}

uint64_t sub_25859F688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, int a11, unsigned int a12, uint64_t a13, char *a14, uint64_t a15, unsigned int a16, int a17, uint64_t a18)
{
  v25 = v24 + a12;
  *v18 += a12;
  a16 = (v23 + 1096) ^ (344723623 * ((&a13 & 0x4E7295A6 | ~(&a13 | 0x4E7295A6)) ^ 0x462E0790));
  a18 = v25;
  a13 = v22;
  a14 = &a10;
  a15 = v19;
  v26 = (*(v20 + 8 * (v23 ^ 0x71C)))(&a13);
  return (*(v20 + 8 * (((a17 == (((v23 - 37) | 0x409) ^ v21)) * ((v23 ^ 0x437) - 489)) ^ v23)))(v26);
}

uint64_t sub_25859F74C@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 - 1;
  *(a1 + v5) = *(v4 + v5) - ((v2 + 27) & (2 * *(v4 + v5))) - 100;
  return (*(v3 + 8 * ((823 * (v5 == 0)) ^ v2)))();
}

void **sub_25859F788(void **result)
{
  v1 = *result;
  *v1 = 0xFBDC740BB9F3DCDCLL;
  v1[1] = 0x5190721660F77F86;
  v1[2] = 0;
  return result;
}

uint64_t sub_25859F7E8(uint64_t result)
{
  v1 = 1511064119 * (((result | 0x365ABEFD17B63DA3) - (result & 0x365ABEFD17B63DA3)) ^ 0xABD40B419FC962E9);
  v2 = *(result + 16) - v1;
  v3 = *(result + 20) ^ v1;
  v4 = *(result + 24);
  v5 = v4 + v1;
  v6 = *result ^ v1;
  v7 = *(result + 8);
  v8 = v7 + v1;
  v9 = *(result + 32) + v1;
  v10 = v8 > v5;
  v11 = v7 == v4;
  if (v3)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  if (!v12)
  {
    v9 = v6;
  }

  *(result + 36) = v9 ^ v2;
  return result;
}

void sub_25859F87C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *a1 == 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = v2 || *(a1 + 24) == 0;
  v1 = *(a1 + 32) ^ (1021229753 * (((a1 | 0x654DDC30) - a1 + (a1 & 0x9AB223CF)) ^ 0xDBA067DA));
  __asm { BRAA            X11, X17 }
}

uint64_t sub_25859FA50(__n128 a1)
{
  v3[-1] = a1;
  *v3 = a1;
  return (*(v5 + 8 * (((v4 == 0) * v2) | v1)))();
}

uint64_t sub_25859FA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, int a42)
{
  v45 = a42 + *(v44 - 212) + 115440255;
  v46 = ((v45 & 0xED58A4EB) << ((v42 ^ 0xF) - 74)) & (v45 ^ 0xC95420E2) ^ v45 & 0xED58A4EB;
  v47 = ((2 * (v45 ^ 0x3546924)) ^ 0xDC199B9E) & (v45 ^ 0x3546924) ^ (2 * (v45 ^ 0x3546924)) & 0xEE0CCDCE;
  v48 = v47 ^ 0x22044441;
  v49 = (v47 ^ 0xCC00C18C) & (4 * v46) ^ v46;
  v50 = ((4 * v48) ^ 0xB833373C) & v48 ^ (4 * v48) & 0xEE0CCDCC;
  v51 = (v50 ^ 0xA8000500) & (16 * v49) ^ v49;
  v52 = ((16 * (v50 ^ 0x460CC8C3)) ^ 0xE0CCDCF0) & (v50 ^ 0x460CC8C3) ^ (16 * (v50 ^ 0x460CC8C3)) & 0xEE0CCDC0;
  v53 = v51 ^ 0xEE0CCDCF ^ (v52 ^ 0xE00CCC00) & (v51 << 8);
  v54 = v45 ^ (2 * ((v53 << 16) & 0x6E0C0000 ^ v53 ^ ((v53 << 16) ^ 0x4DCF0000) & (((v52 ^ 0xE00010F) << 8) & 0x6E0C0000 ^ 0x62000000 ^ (((v52 ^ 0xE00010F) << 8) ^ 0xCCD0000) & (v52 ^ 0xE00010F))));
  v55 = 3 * (v42 ^ 0x13B);
  *(v44 - 212) = v55;
  v57 = (v54 & 0xF) != 5 || v54 == (v55 ^ 0xA9593E08);
  v58 = *(v43 + 8 * ((220 * v57) ^ v42 ^ 0x40F));
  *(v44 - 216) = -42899;
  return v58();
}

void sub_25859FD98(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  v49 = 2033342611 * ((-1237020650 - ((v48 - 144) | 0xB6449016) + ((v48 - 144) | 0x49BB6FE9)) ^ 0x4CD7672D);
  *(v48 - 120) = ((((a2 ^ 0xC59ECDD3) + 979448365) ^ ((a2 ^ 0x9ACB6098) + 1697947496) ^ ((a2 ^ 0x5AE334B6) + (v46 ^ 0x34) - 1524840135)) + 1257778802) ^ v49;
  *(v48 - 116) = v46 - v49 + 521;
  *(v48 - 144) = a3;
  *(v48 - 136) = &a46;
  *(v48 - 128) = a1;
  (*(v47 + 8 * (v46 ^ 0x42B)))(v48 - 144);
  JUMPOUT(0x25859FE90);
}

uint64_t sub_25859FED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v36 = v35[5];
  v37 = *v35;
  *(v34 - 212) = (v32 + 569658043) & 0xDE0BB57D;
  v38 = veorq_s8(*v36, xmmword_2585D2430);
  *(v34 - 128) = veorq_s8(*v37, xmmword_2585D2440);
  *(v34 - 112) = v38;
  v39 = *(v33 + 8 * (v32 ^ (226 * (a8 != 0))));
  *(v34 - 216) = -42900;
  return v39(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_25859FF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, _BYTE *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  *a18 = (v35 + ~((((12 * (v38 ^ 0xAD)) ^ 0xBC) - 118) & (2 * v35)) - 110) ^ 0x91;
  v40 = 2021301169 * ((((2 * v34) | 0x8A7A03E6) - v34 - 1161626099) ^ 0xCECB5653);
  *(v39 - 136) = v40 + 469501789;
  *(v39 - 132) = (v38 - 292) ^ v40;
  STACK[0xD30] = v36;
  STACK[0xD28] = a18;
  (*(a1 + 8 * (v38 ^ 0x64C)))(v39 - 152);
  STACK[0xD30] = v36;
  STACK[0xD28] = a19 + 16 * v35;
  *(v39 - 136) = v38 + 1520698633 * ((2 * (v34 & 0x6F55DF0) - v34 - 116743672) ^ 0x52E4BA8D) - 129;
  (*(a34 + 8 * (v38 ^ 0x65D)))(v39 - 152);
  return (*(a34 + 8 * (v38 ^ ((v35 == 8) * v37))))();
}

uint64_t sub_2585A00BC(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = a3 + 127;
  v14 = (a3 + 396);
  v15 = (a3 + 1735178502) & 0x989347FF;
  v16 = (v11 - 1) & 0xF;
  v17 = -a8 - v11;
  v19 = a2 >= 0x10 && (v17 + v10 + v16 + 1) >= 0x10 && (v17 + v9 + v16 + v15 - 999) >= 0x10;
  v20 = v17 + v8 + v16 + 5;
  v22 = !v19 || v20 < 0x10;
  return (*(v12 + 8 * (((4 * v22) | (8 * v22)) ^ v13)))(v14);
}

uint64_t sub_2585A0148@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, unsigned __int8 a44, __int16 a45, __int16 a46, char a47, unsigned __int8 a48, __int16 a49, unsigned __int8 a50, unsigned __int8 a51, char a52, unsigned __int8 a53, __int16 a54, char a55, unsigned __int8 a56, __int16 a57, __int16 a58, unsigned __int8 a59, __int16 a60, unsigned __int8 a61, __int16 a62, unsigned __int8 a63)
{
  HIDWORD(a24) = a1 + 811;
  v83 = *(v82 - 172 + (a78 - 21 * ((((135 * a78) >> 8) + (((a78 - ((135 * a78) >> 8)) & 0xFE) >> 1)) >> 4)));
  LOWORD(v83) = (((v83 >> 4) | (16 * v83)) - 2 * (((v83 >> 4) | (16 * v83)) & 0xA5F ^ (v83 >> 4) & 3) - 26020) ^ 0x9A5C;
  *(v82 - 139) = (((BYTE5(a38) / 3u) & 0x23 | (((a1 + 43) ^ 0x22) + a1 + 43) & BYTE2(a34)) & *(v82 - 172 + (v83 - 21 * ((((34329 * v83) >> 16) + (((v83 - ((34329 * v83) >> 16)) & 0xFFFE) >> 1)) >> 4)))) + 20;
  *(v82 - 117) = -72;
  v84 = v82 - 151;
  v85 = (*(v82 - 172 + (a77 - 21 * ((((135 * a77) >> 8) + (((a77 - ((135 * a77) >> 8)) & 0xFE) >> 1)) >> 4))) >> 1) & 0x10;
  v86 = (v85 | 0x40) ^ 0x53;
  *(v82 - 100) = -109;
  *(v82 - 103) = 98;
  v87 = *(v82 - 151 + (BYTE5(a34) - 35 * ((235 * BYTE5(a34)) >> 13)));
  *(v82 - 139) = (205 * ((*(v82 - 164) / 3u) & 0x6C | *(v82 - 129) & 0x93)) >> 10;
  v88 = ((*(v82 - 125) & *(v82 - 156) & 0x68 | (*(v82 - 156) & 0x5C ^ 0xCA) & ~(*(v82 - 125) & *(v82 - 156))) >> 1) ^ 0x4B;
  v89 = -55 - *(v82 - 151 + (BYTE2(a30) - 35 * ((235 * BYTE2(a30)) >> 13)));
  v90 = v89 & 0x37 ^ 0xFFFFFFD2;
  v91 = v89 ^ (2 * ((v89 ^ 0x12) & (2 * ((v89 ^ 0x12) & (2 * ((v89 ^ 0x12) & (2 * ((v89 ^ 0x12) & (2 * ((v89 ^ 2) & (2 * ((v89 ^ 2) & (2 * v89) & 0x26 ^ v90)) ^ v90)) ^ v90)) ^ v90)) ^ v90)) ^ v90));
  v193 = *(v82 - 151 + (BYTE1(a28) - 35 * ((235 * BYTE1(a28)) >> 13))) + v88 * v88 * v88 - 90;
  v92 = *(v82 - 146);
  LOBYTE(v88) = ((((((((v91 ^ 0x9D) & ~*(v82 - 164) | *(v82 - 164) & 0x55) ^ 0xAA) & *(v82 - 133) ^ 0xFB) & ~((v91 ^ 0x37) & *(v82 - 164)) ^ 0x18) & ~v92 | v92 & 1) ^ 0xF7) & ~(*(v82 - 104) & v92) & 0x19 | *(v82 - 104) & v92 & 9) ^ 0x6F;
  *(v82 - 113) = v86;
  v93 = *(v82 - 116 + a69 % 0x14u);
  v94 = *(v82 - 172 + (BYTE4(a33) - 21 * ((((135 * BYTE4(a33)) >> 8) + (((BYTE4(a33) - ((135 * BYTE4(a33)) >> 8)) & 0xFE) >> 1)) >> 4)));
  *(v82 - 97) = v94;
  v198 = (v193 ^ 0xBDB8FFDE) + ((2 * v193) & 0x1BC) + 1111949346;
  *(v82 - 97) = (v88 & ((*(v82 - 116 + v198 % 0x14) >> 1) & 0x66 ^ 0x7F) ^ 0x99) + v94;
  LOBYTE(v88) = *(v82 - 151 + (a69 - 35 * ((235 * a69) >> 13)));
  *(v82 - 101) ^= v88 * v88 * v88;
  v95 = v91 ^ 0x37;
  LOBYTE(v88) = *(v82 - 116 + (v91 ^ 0x37u) % 0x14);
  LOBYTE(v88) = (((v88 - 93) & (BYTE3(a39) ^ 0x99) ^ (92 - v88) & 0x99 ^ 0x66) & *(v82 - 114) ^ 0xDD) & ~((92 - v88) & ~BYTE3(a39)) ^ ((92 - v88) & ~BYTE3(a39) | 0xDD);
  LOBYTE(v88) = *(v82 - 150) + v88 * v88 * v88;
  BYTE6(a26) = 2 * BYTE5(a38) / 5u * (BYTE5(a38) / 5u);
  BYTE3(a30) -= *(v82 - 172 + (BYTE6(a30) - 21 * ((((135 * BYTE6(a30)) >> 8) + (((BYTE6(a30) - ((135 * BYTE6(a30)) >> 8)) & 0xFE) >> 1)) >> 4))) & 0xF6;
  v96 = v93 & 0xFFFFFFB3 | 0x44;
  v97 = v93 & 0xB3 | 0x44;
  LOBYTE(v93) = *(v82 - 104);
  v98 = (((v96 << ((v93 + 2) & 7)) ^ (v97 >> ((6 - v93) & 7))) & v86 ^ 0x23) & ~(v87 & (v85 | 0xFFFFFFEC)) | v87 & (v85 | 0xFFFFFFEC) & 0xFFFFFFDF;
  LOBYTE(v85) = *(v82 - 123) & (v93 | 0x50) | v93 & 0x50;
  BYTE4(a26) -= v85 * v85;
  *(v82 - 147) ^= a76 / 3u;
  *(v82 - 150) = v88;
  v99 = *(v82 - 154);
  v100 = (*(v82 - 172 + (BYTE6(a37) - 21 * ((((135 * BYTE6(a37)) >> 8) + (((BYTE6(a37) - ((135 * BYTE6(a37)) >> 8)) & 0xFE) >> 1)) >> 4))) & v99);
  *(v82 - 97) ^= (43691 * ((v100 & 0x1D | (v99 & 0xFFFFFFFB ^ 0x19) & ~v100) ^ 0xE2) * *(v82 - 151 + (BYTE3(a31) - 35 * ((235 * BYTE3(a31)) >> 13)))) >> 17;
  LOBYTE(v88) = a70 & ~(*(v82 - 151 + (BYTE6(a27) - 35 * ((235 * BYTE6(a27)) >> 13))) ^ BYTE6(a26));
  *(v82 - 139) += (((((*(v82 - 151 + (BYTE6(a27) - 35 * ((235 * BYTE6(a27)) >> 13))) ^ BYTE6(a26) ^ 0x38) & ~a70 | a70 & 0x38) ^ 0xC7) & *(v82 - 157) ^ 0x96) & ~v88 | v88 & 0x69) ^ 0x96;
  v101 = *(v82 - 116 + v198 % 0x14);
  LODWORD(v194) = *(v82 - 115);
  v102 = *(v82 - 159);
  v103 = ((((((v101 & v194 & 0x15 | (v194 & 0x86 ^ 0x6C) & ~(v101 & v194)) ^ 0xFFFFFFCE | v102 & 0x24) ^ 0x40) & ~v102 | v102 & 0x18) ^ 0xFFFFFFC7) & (2 * *(v82 - 172 + (BYTE6(a34) - 21 * ((((135 * BYTE6(a34)) >> 8) + (((BYTE6(a34) - ((135 * BYTE6(a34)) >> 8)) & 0xFE) >> 1)) >> 4)))) & 0x5C ^ 0xFFFFFFD8 | v102 & 0x5C) ^ v102 & 0x58;
  v104 = ((v103 ^ 0xFFFFFFC9) - 77) ^ ((v103 ^ 0xFFFFFF8A) - 14) ^ ((v103 ^ 0xFFFFFFC7) - 67);
  v105 = (*(v82 - 172 + (BYTE1(a36) - 21 * ((((135 * BYTE1(a36)) >> 8) + (((BYTE1(a36) - ((135 * BYTE1(a36)) >> 8)) & 0xFE) >> 1)) >> 4))) + a66) >> 1;
  v195 = ((v105 | ((39324 * a50) >> 16)) & *(v82 - 150) | v105 & ((39324 * a50) >> 16)) + *(v82 - 164);
  v184 = v95;
  v106 = ((v91 ^ 0x37) - 35 * ((235 * v95) >> 13));
  LOBYTE(v105) = *(v82 - 110) & 0xA5 | *(v82 - 104) & 0x5A;
  LOBYTE(v102) = (BYTE3(a30) >> (-*(v82 - 129) & 7)) ^ (BYTE3(a30) << (*(v82 - 129) & 7));
  LODWORD(v192) = *(v82 - 151 + (a73 - 35 * ((235 * a73) >> 13)));
  *(v82 - 135) += (v101 | *(v82 - 151 + v106) & 0x9F | 8) + ((((((v102 ^ 0xD9) & ~v105 | *(v82 - 110) & 0x24 | *(v82 - 104) & 2) ^ 0xD9) & *(v82 - 155) ^ 0x55) & ~(v102 & v105) | v102 & v105 & 0xAA) ^ 0xAA) + 1;
  LOBYTE(v105) = 0x80 - v195 - ((2 * (0x80 - v195)) & 0x30) + 24;
  HIDWORD(v191) = *(v82 - 116 + BYTE5(a31) % 0x14u);
  *(v82 - 102) ^= *(v82 - 151 + (((0x80 - v195) - ((2 * (-128 - v195)) & 0x30) + 4120) ^ 0x1018u) % 0x23);
  LOBYTE(v93) = *(v82 - 172 + (HIBYTE(a31) - 21 * ((((135 * HIBYTE(a31)) >> 8) + (((HIBYTE(a31) - ((135 * HIBYTE(a31)) >> 8)) & 0xFE) >> 1)) >> 4))) + 92;
  v178 = (v98 ^ 0x23) - *(v82 - 164);
  HIDWORD(v190) = *(v82 - 151 + (BYTE2(a40) - 35 * ((235 * BYTE2(a40)) >> 13)));
  *(v82 - 143) = v91 ^ 0x37 ^ (0x8Cu >> ((v93 * v93) & 7)) ^ (140 << (-(v93 * v93) & 7));
  LODWORD(v190) = *(v82 - 116 + a61 % 0x14u);
  LODWORD(v189) = *(v82 - 116 + a75 % 0x14u);
  HIDWORD(v189) = *(v82 - 116 + a79 % 0x14u);
  LODWORD(v191) = *(v82 - 116 + BYTE5(a36) % 0x14u);
  v107 = v82 - 116;
  *(v82 - 103) += *(v82 - 116 + BYTE3(a31) % 0x14u);
  *(v82 - 106) = (137 * ((*(v82 - 151 + v106) | BYTE4(a26)) & (0x80 - v195) | (*(v82 - 151 + v106) & BYTE4(a26)))) >> 11;
  v108 = *(v82 - 151 + (v104 - 35 * ((235 * v104) >> 13)));
  HIDWORD(v187) = a73;
  LODWORD(v188) = a73;
  v199 = *(v82 - 104);
  v109 = *(v82 - 124);
  v110 = (*(v82 - 172 + (BYTE4(a26) - 21 * ((((135 * BYTE4(a26)) >> 8) + (((BYTE4(a26) - ((135 * BYTE4(a26)) >> 8)) & 0xFE) >> 1)) >> 4))) & v109);
  v111 = (v199 & ~v109 ^ 0xA9) & ~v110 | v110 & 0x56;
  v112 = ((((v111 ^ 0xFFFFFFE7) & ~v108 & 0x2A | v108 & 0x20) ^ 0x3E5C82E4) & ((v111 ^ 0xA9) & v108 ^ 0x3E5C82FE) | (v111 ^ 0xA9) & v108 & 0x11111111) ^ 0x3E5C82EE;
  v113 = *(v82 - 172 + ((v91 ^ 0x37) - 21 * ((((135 * v95) >> 8) + ((((v91 ^ 0x37) - ((135 * v95) >> 8)) & 0xFE) >> 1)) >> 4)));
  *(v82 - 138) ^= v113;
  LOBYTE(v108) = *(v82 - 151 + (a68 - 35 * ((235 * a68) >> 13)));
  LOBYTE(v108) = ((((v108 - 38) | 0x2A) ^ (37 - v108) & (v105 ^ 0x32)) & *(v82 - 132) ^ 0xC2) & ~((v108 - 38) & (v105 ^ 0x18)) ^ ((v108 - 38) & (v105 ^ 0x18) | 0xC2);
  LOBYTE(v100) = v108 * v108 + 92;
  v114 = v112 * v112;
  v115 = 92 - v112 * v112;
  LODWORD(v196) = v112 * v112;
  v116 = ((v115 ^ 0xB7432D0C) + 2068623033) ^ ((v115 ^ 0xC3B54BD8) + 263899245) ^ ((v115 ^ 0x74F666D4) - 1191582367);
  v117 = (v115 + (*(v82 - 129) & (v91 ^ 0x37))) ^ 0xEF | v113 & 0x86;
  LOBYTE(v89) = (v117 ^ 0x10) & (v113 & 0x79 ^ 0xA9) ^ v117 & 0x2F;
  HIDWORD(v185) = (v117 ^ 0xFC306810) & (v113 & 0x79 ^ 0xFC3068A9) ^ v117 & 0x2F;
  v118 = (*(v82 - 141) & ((v91 ^ 0x28) & 0xA3 ^ 0x5F) ^ 0xBDC6B6D2) & ((v91 ^ 0x28) & 0x5C ^ 0xFFFFB6E3) ^ ((v91 ^ 0x28) & 0xC | 0x42390020);
  v119 = *(v82 - 151 + v198 % 0x23);
  LODWORD(v197) = ((171 * v113) >> 9) - v119 - (((((v118 ^ 0x23) & ~a53 | a53 & 0x22) ^ 0xDDDDDDDD) & *(v82 - 134) ^ 0xA10FAEF0) & ((v118 ^ 0xFE) & a53 ^ 0xF3FFAFFF) ^ ((v118 ^ 0xFE) & a53 | 0xA10FAEF0));
  v120 = *(v82 - 132);
  v121 = v120 & (v113 | 0xFC) | v113 & 0xFC;
  v122 = (v197 | a53) & v120 | (v197 & a53);
  v123 = (((((v122 | v121) & *(v82 - 152) | v122 & v121) & ~*(v82 - 154) ^ 0x9B) & ~(*(v82 - 154) & v119) | *(v82 - 154) & v119 & 0x64) ^ 0xFFFFFF9B) + v193;
  LODWORD(v186) = v91;
  HIDWORD(v186) = *(v82 - 151 + (BYTE3(a37) - 35 * ((235 * BYTE3(a37)) >> 13)));
  *(v82 - 118) ^= BYTE4(a29);
  HIDWORD(v192) = v123;
  *(v82 - 121) = (v123 / 3u - (((*(v82 - 159) ^ 0x56) & (v91 & 0xA8 ^ 0x77) ^ 0x42 | v91 & 0x57 ^ 0x17) ^ v91 & 0x14)) ^ *(v82 - 116 + BYTE4(a41) % 0x14u);
  LOBYTE(a29) = *(v82 - 151 + (BYTE4(a37) - 35 * ((235 * BYTE4(a37)) >> 13))) & 0x1B | 0x44;
  v124 = ((v178 - 64) | (((v178 - 64) < 0x2Du) << 8)) - 45;
  LODWORD(v183) = v91 ^ 0x28;
  v125 = v89 ^ ((v91 ^ 0x28u) >> 1) & 0x65;
  LOBYTE(v91) = *(v82 - 117);
  LOBYTE(v119) = *(v82 - 172 + v124 % 0x15) & v91;
  v126 = (((*(v82 - 151 + ((v125 ^ 0xB1) - 35 * ((235 * (v125 ^ 0xB1u)) >> 13))) & ~v91) ^ 0x63) & ~v119 | v119 & 0x9C) ^ 0x63;
  LOBYTE(v126) = *(v82 - 133) + ((v126 * v126 * v126) >> 1);
  *(v82 - 146) -= *(v82 - 172 + (BYTE6(a37) - 21 * ((((135 * BYTE6(a37)) >> 8) + (((BYTE6(a37) - ((135 * BYTE6(a37)) >> 8)) & 0xFE) >> 1)) >> 4)));
  *(v82 - 133) = v126;
  LODWORD(v176) = (v116 + 871398475) % 0x23;
  *(v82 - 133) = (((((BYTE3(a31) & ~*(v82 - 109) | *(v84 + (a71 - 35 * ((235 * a71) >> 13))) & *(v82 - 109)) & (v114 - 93) ^ 0x33) & ~(*(v84 + v176) & (92 - v114)) | *(v84 + v176) & (92 - v114) & 0xCC) ^ 0x33) * ((BYTE3(a28) & (v125 ^ 0x4E) & 0x8B | (*(v82 - 116 + BYTE5(a33) % 0x14u) & (v125 ^ 0xB1) ^ 0x74) & ~(BYTE3(a28) & (v125 ^ 0x4E))) ^ 0x74)) ^ v126;
  LOBYTE(v122) = *(v82 - 140);
  LOBYTE(v126) = (v122 & 0xBD ^ 0x34 ^ (*(v82 - 102) & 0x92 ^ 0xB9 ^ (*(v82 - 116 + HIBYTE(a37) % 0x14u) & ~*(v82 - 102) ^ 4) & (~*(v82 - 102) | 0x69)) & ~v122) & ~(BYTE1(a27) & v122) ^ BYTE1(a27) & v122 & 0x76;
  LOBYTE(v122) = *(v82 - 151 + (BYTE6(a29) - 35 * ((235 * BYTE6(a29)) >> 13)));
  v127 = (BYTE5(a27) << (-v122 & 7)) ^ (BYTE5(a27) >> (v122 & 7));
  LOBYTE(v127) = (*(v84 + v106) << (v127 & 7)) ^ (*(v84 + v106) >> (-v127 & 7));
  HIDWORD(a8) = *(v82 - 129);
  *(v82 - 129) += ((((v127 & 0x5E | (v126 ^ 0x28) & ~v127) ^ 0xA1) & *(v82 - 118) ^ 0x81) & ~(v127 & (v126 ^ 0x89)) | v127 & (v126 ^ 0x89) & 0x7E) ^ 0x81;
  LOBYTE(v126) = *(v82 - 116 + BYTE1(a31) % 0x14u) ^ 0xD9;
  LOBYTE(v126) = v126 - 21 * ((((135 * v126) >> 8) + (((v126 - ((135 * v126) >> 8)) & 0xFE) >> 1)) >> 4);
  HIDWORD(a10) = v183;
  LOBYTE(v127) = (v114 - 93) & (v183 ^ 0xD8);
  v114 = 92 - v114;
  LOBYTE(v127) = (*(v82 - 145) & ((v115 & 0x38 | 0xC7) ^ v127) ^ 0xB5) & ~(v115 & (v183 ^ 0x1F)) ^ v115 & (v183 ^ 0x1F) & 0x4A;
  HIDWORD(a6) = *(v82 - 101);
  *(v82 - 101) -= (((((v127 ^ 0xA7) & ~*(v82 - 172 + v126) | *(v82 - 172 + v126) & 0xED) ^ 0x12) & v100 ^ 0x91) & ~((v127 ^ 0xB5) & *(v82 - 172 + v126)) | (v127 ^ 0xB5) & *(v82 - 172 + v126) & 0x6E) ^ 0x91;
  LOWORD(v93) = (v123 - ((2 * v123) & 0xA0) - 31408) ^ 0x8550;
  LODWORD(v187) = v123 - ((2 * v123) & 0xA0) - 913865392;
  LOBYTE(v127) = *(v82 - 151 + (BYTE3(a33) - 35 * ((235 * BYTE3(a33)) >> 13)));
  LOBYTE(v126) = (v127 | *(v107 + v93 % 0x14u)) & *(v82 - 115) | v127 & *(v107 + v93 % 0x14u);
  LOBYTE(v127) = (v123 - ((2 * v123) & 0xA0) + 80) & 0x2D;
  LOBYTE(v126) = (((171 * v184) >> 9) - (a29 | v123)) ^ v100 ^ 0xDC ^ ((((v126 | 0x5E) ^ (v127 ^ 0xC) & ~v126) & *(v82 - 120) ^ 0xDC) & ~(v126 & (v127 | 0x52)) | v126 & (v127 | 0x52) & 0x23);
  LOBYTE(v123) = *(v82 - 135);
  LOBYTE(v126) = *(v82 - 116 + v126 % 0x14u) & v123;
  v128 = 13108 * (((((*(v82 - 172 + (BYTE1(a31) - 21 * ((((135 * BYTE1(a31)) >> 8) + (((BYTE1(a31) - ((135 * BYTE1(a31)) >> 8)) & 0xFE) >> 1)) >> 4))) & ~*(v82 - 162)) ^ 0xEE) & ~(BYTE3(a30) & *(v82 - 162)) | BYTE3(a30) & *(v82 - 162) & 0x11) ^ 0xEE) + ((((*(v82 - 151 + (a44 - 35 * ((235 * a44) >> 13))) & ~v123) ^ 0xBA) & ~v126 | v126 & 0x45) ^ 0xBA));
  v129 = *(v82 - 116 + a53 % 0x14u) | *(v82 - 172 + (a76 - 21 * ((((135 * a76) >> 8) + (((a76 - ((135 * a76) >> 8)) & 0xFE) >> 1)) >> 4)));
  v130 = *(v82 - 116 + BYTE6(a26) % 0x14u);
  v131 = ((v130 | HIWORD(v128)) & *(v82 - 100) | v130 & HIWORD(v128)) + ((v129 >> (-*(v107 + BYTE4(a32) % 0x14u) & 7)) ^ (v129 << (*(v107 + BYTE4(a32) % 0x14u) & 7)));
  LODWORD(v106) = v104 + ((((v131 - ((2 * v131) & 0x36) - 101) ^ 0x46) - 70) ^ (((v131 - ((2 * v131) & 0x36) - 101) ^ 0x5F) - 95) ^ (((v131 - ((2 * v131) & 0x36) - 101) ^ 0xFFFFFF82) + 126));
  v132 = *(v82 - 116 + BYTE5(a38) % 0x14u);
  v181 = v93 % 0x23u;
  HIDWORD(v188) = (((v132 * v132 * v132 * v132 - ((2 * v132 * v132 * v132 * v132) & 0xFFFFFF9F) + 79) ^ 0x3B) & ~*(v84 + v181) | *(v84 + v181) & 0x8B) ^ 0xFFFFFFC4;
  LOWORD(v132) = *(v82 - 151 + v124 % 0x23);
  v133 = (((BYTE4(v188) ^ 0xA47F0BD0) + 1535177776) ^ ((BYTE4(v188) ^ 0xB5847B0) - 190334896) ^ ((BYTE4(v188) ^ 0xAF274CD0) + 1356378928)) + 176;
  LOBYTE(v130) = *(v82 - 151 + v133 % 0x23);
  LOBYTE(v129) = (v130 | *(v107 + a80 % 0x14u)) & *(v82 - 109) | v130 & *(v107 + a80 % 0x14u);
  v134 = *(v82 - 172 + (BYTE1(a42) - 21 * ((((135 * BYTE1(a42)) >> 8) + (((BYTE1(a42) - ((135 * BYTE1(a42)) >> 8)) & 0xFE) >> 1)) >> 4)));
  v135 = ((((v134 << (v130 & 7)) ^ (v134 >> (-v130 & 7)) ^ 6) & ~*(v82 - 106) | *(v82 - 106) & 6) ^ 2) & ~(v129 & *(v82 - 106)) & 0x47 | v129 & *(v82 - 106) & 0x43;
  v136 = (v135 ^ 0xFFFFFFFB) & ((2 * *(v82 - 172 + (v132 - 21 * ((((135 * v132) >> 8) + (((v132 - ((135 * v132) >> 8)) & 0xFE) >> 1)) >> 4)))) & 0xFFB8 ^ 0x2D) | v135 & 0x42;
  v182 = (v93 - 21 * ((((34329 * v93) >> 16) + (((v93 - ((34329 * v93) >> 16)) & 0xFFFE) >> 1)) >> 4));
  LOBYTE(v132) = *(v82 - 116 + BYTE3(a29) % 0x14u) & 0x91 | *(v82 - 172 + v182) & 0x6E;
  LOBYTE(v132) = v132 & ~*(v82 - 116) & 0x15 ^ (BYTE3(a29) & *(v82 - 116) ^ 0xEA) & 0x1F ^ (v132 & ~*(v82 - 116) ^ 0xE0) & (BYTE3(a29) & *(v82 - 116) ^ 0xEA);
  HIDWORD(v179) = (v116 + 871398475) % 0x14;
  LOBYTE(v135) = *(v82 - 172 + (v199 - 21 * ((((135 * v199) >> 8) + (((v199 - ((135 * v199) >> 8)) & 0xFE) >> 1)) >> 4)));
  HIDWORD(v177) = *(v82 - 151 + (a28 - 35 * ((235 * a28) >> 13)));
  *(v82 - 149) += v132 & 0x5F ^ 0x4A ^ (((v135 & 1 ^ 0x9B ^ (v135 | 6) & (*(v82 - 166) ^ 0xFC)) & ~(*(v82 - 166) & (2 * *(v82 - 116 + HIDWORD(v179)))) | *(v82 - 166) & (2 * *(v82 - 116 + HIDWORD(v179))) & 0x66) ^ 0xC6) & (v132 ^ 0xEA);
  *(v82 - 137) = *(v82 - 137) - (BYTE3(a38) & 0x22) - (((*(v82 - 151 + (BYTE6(a38) - 35 * ((235 * BYTE6(a38)) >> 13))) ^ v136) & 0xDD ^ 0xD) & *(v82 - 151 + v176));
  LODWORD(v177) = *(v82 - 116 + a48 % 0x14u);
  v137 = *(v82 - 164);
  *(v82 - 99) += v137;
  LODWORD(v185) = v197;
  v180 = v197 % 0x14u;
  LOBYTE(v130) = *(v82 - 170);
  LOBYTE(v132) = ((*(v107 + v180) | BYTE4(a27)) & *(v82 - 158) | *(v107 + v180) & BYTE4(a27)) & v130;
  LOBYTE(v132) = ((((2 * *(v82 - 116 + BYTE1(a31) % 0x14u)) & ~v130 ^ 0x50) & ~v132 & 0xFE | v132 & 0xAE) >> 1) ^ 0x28;
  v138 = *(v82 - 116 + HIDWORD(v179));
  *(v82 - 103) = v132;
  *(v82 - 118) -= BYTE3(a40) & ((v137 >> 2) & 0x18 | 1);
  *(v82 - 123) -= (((*(v82 - 108) ^ 0x7F) & (((a40 | 0xFFFFFFDF) & *(v82 - 165) | a40 & 0xDF) >> 1) ^ 0xB) & ~(*(v82 - 108) & v114) | *(v82 - 108) & v114 & 0xF4) ^ 0xB;
  v139 = ((v106 - 49) | (((v106 - 49) < 0x34u) << 8)) - 52;
  LOBYTE(v132) = *(v82 - 172 + v139 % 0x15);
  LOBYTE(v132) = (v132 | v197) & *(v82 - 128) | v132 & v197;
  HIDWORD(v183) = (v116 + 871398475) % 0x15;
  LOBYTE(v91) = *(v82 - 172 + HIDWORD(v183));
  LOBYTE(v109) = ((((((v91 - 48) | 0xD1) ^ (47 - v91) & (a72 ^ 0x2E)) & *(v82 - 156) ^ 0xB6) & ~((v91 - 48) & ~a72) | (v91 - 48) & ~a72 & 0x49) ^ 0xB6) & (v132 * v132 * v132);
  *(v82 - 129) += a71;
  LOBYTE(v132) = *(v82 - 151 + v139 % 0x23);
  LOBYTE(v135) = *(v82 - 172 + (a67 - 21 * ((((135 * a67) >> 8) + (((a67 - ((135 * a67) >> 8)) & 0xFE) >> 1)) >> 4)));
  *(v82 - 101) = v109;
  LOBYTE(v84) = v178 + 99 * *(v82 - 116 + HIBYTE(a27) % 0x14u) * ((v135 | v132) & 0x51 | v135 & v132) * (*(v82 - 172 + (BYTE4(a29) - 21 * ((((135 * BYTE4(a29)) >> 8) + (((BYTE4(a29) - ((135 * BYTE4(a29)) >> 8)) & 0xFE) >> 1)) >> 4))) & 0xFE);
  v140 = *(v82 - 172 + (a76 - 21 * ((((135 * a76) >> 8) + (((a76 - ((135 * a76) >> 8)) & 0xFE) >> 1)) >> 4)));
  HIDWORD(v176) = *(v82 - 143) - a72 + v140 * v140 * v140;
  LODWORD(v179) = *(v80 + 4) + a23;
  BYTE4(a30) += *(v82 - 172 + v198 % 0x15) / 5u;
  LOBYTE(v140) = *(v82 - 172 + (v188 - 21 * ((((135 * v188) >> 8) + (((v188 - ((135 * v188) >> 8)) & 0xFE) >> 1)) >> 4)));
  BYTE1(a28) ^= 3 * (-3 * *(v82 - 172 + (a42 - 21 * ((((135 * a42) >> 8) + (((a42 - ((135 * a42) >> 8)) & 0xFE) >> 1)) >> 4))) + ((BYTE2(a35) >> (v140 & 7)) ^ (BYTE2(a35) << (-v140 & 7))));
  BYTE6(a30) += 125;
  v141 = (HIDWORD(a8) | a44) & HIDWORD(a6) | (BYTE4(a8) & a44);
  v142 = (v141 | HIDWORD(v191)) & v194 | v141 & HIDWORD(v191);
  LOBYTE(v90) = *(v82 - 116);
  BYTE6(a41) = ((v142 << (-((2 * v192) & (v90 ^ 6) | v90 & 4) & 6)) - ((2 * (v142 << (-((2 * v192) & (v90 ^ 6) | v90 & 4) & 6))) & 0xB4) - 38) ^ (v142 >> ((2 * v192) & ~v90 & 6 | v90 & 4)) ^ 0xDA;
  v143 = *(v82 - 172 + (v189 - 21 * ((((135 * v189) >> 8) + (((v189 - ((135 * v189) >> 8)) & 0xFE) >> 1)) >> 4)));
  LOBYTE(v143) = (v143 << ((2 * BYTE4(v190)) & 6)) ^ (v143 >> ((-2 * BYTE4(v190)) & 6));
  v144 = (205 * (HIDWORD(v189) & 0xFFFFFF83 | v190 & 0x7C)) >> 10;
  BYTE5(a28) += ((((v144 & 0xEE | (v143 ^ 0xD1) & ~v144) ^ 0xD1) & *(v82 - 171) ^ 0x73) & ~(v144 & v143) | v144 & v143 & 0xC) ^ 0x73;
  HIBYTE(a32) = ~((205 * (*(v82 - 110) | v191)) >> 10);
  LOBYTE(v143) = v183 & 0x69 ^ 0xCA ^ (BYTE4(v185) ^ 0x30) & (v183 ^ 0x1F);
  BYTE1(a32) ^= ((v143 & (v186 & ~BYTE4(v185) & 4 | 0xC1) ^ v186 & ~BYTE4(v185) & 4 | v143 & 0x3A) ^ 0xC7) + BYTE4(v186);
  BYTE5(a41) ^= 0xDDu;
  HIDWORD(v197) = v114;
  BYTE4(a39) ^= v114 ^ 0x85;
  v145 = *(v82 - 172 + (BYTE3(a28) - 21 * ((((135 * BYTE3(a28)) >> 8) + (((BYTE3(a28) - ((135 * BYTE3(a28)) >> 8)) & 0xFE) >> 1)) >> 4)));
  v146 = ((v136 ^ 0x69) & 0xEA ^ 0x8F7FDDE0 ^ (((v145 | v138) - ((2 * (v145 | v138)) & 0xA) + 5) ^ 0xFFFFFFEF) & (v136 ^ 0x2D)) & (v145 & v138 ^ 0xAFFFFDFF) ^ v145 & v138 & 0x5F;
  BYTE1(a29) ^= (2 * (((((v146 ^ 0x84) & ~(BYTE4(a32) / 3u) | (BYTE4(a32) / 3u) & 0x5B) ^ 0x24) & *(v82 - 141) ^ 0x29) & ~((v146 ^ 0x20) & (BYTE4(a32) / 3u)) | (v146 ^ 0x20) & (BYTE4(a32) / 3u) & 0x56)) ^ 0x52;
  LODWORD(a23) = v136;
  LOBYTE(v114) = (((((v177 ^ 0x7B ^ v136) & ~*(v82 - 114) | *(v82 - 114) & 0x56) ^ 0x8D) & ~((BYTE4(v177) * BYTE4(v177)) & *(v82 - 114)) | (BYTE4(v177) * BYTE4(v177)) & *(v82 - 114) & 0x24) ^ 0x24) - v195;
  v147 = 3 * *(v82 - 172 + (BYTE3(a26) - 21 * ((((135 * BYTE3(a26)) >> 8) + (((BYTE3(a26) - ((135 * BYTE3(a26)) >> 8)) & 0xFE) >> 1)) >> 4))) + 110;
  v148 = v147 ^ v183 ^ (2 * ((v147 ^ 0x12) & (2 * ((v147 ^ 0x12) & (2 * ((v147 ^ 0x12) & (2 * (((2 * (((2 * v147) & 0x24 | 0x12) & v147)) ^ 0x6A) & (v147 ^ 0x12) ^ v147 & 0xFFFFFFF8 ^ 0x37)) ^ v147 & 0xFFFFFFF8 ^ 0x37)) ^ v147 & 0xFFFFFFF8 ^ 0x37)) ^ v147 & 0xFFFFFFF8 ^ 0x37));
  HIDWORD(v196) = ((v148 ^ 0x6C) - 94) ^ ((v148 ^ 0xFFFFFFFA) + 56) ^ ((v148 ^ 0x71) - 67);
  LOBYTE(v148) = *(v82 - 151 + v181) & 0xC5 ^ (*(v82 - 151 + v181) & 0x30 | 8) ^ (*(v82 - 151 + v176) & 0xA | 0xC5);
  LOBYTE(v138) = ((v148 ^ 0xF0) + 100) ^ ((v148 ^ 0xD7) + 69) ^ ((v148 ^ 0xEA) + 122);
  LOBYTE(v148) = *(v82 - 116 + v133 % 0x14) | 0x51;
  *(v82 - 133) -= ((v109 & 0x59 ^ ((v148 * v148 * v148) ^ 0x59) & 0xDA ^ ((v148 * v148 * v148) ^ 0x59) & (v109 ^ 0x24) ^ 0x3E) & ~(v109 & ((v84 - 109) / 0xFu)) | v109 & ((v84 - 109) / 0xFu) & 0x18) ^ 0x67;
  LOWORD(v144) = *(v82 - 116 + v139 % 0x14);
  v149 = v82 - 172;
  v150 = *(v82 - 172 + (v144 - 21 * ((((135 * v144) >> 8) + (((v144 - ((135 * v144) >> 8)) & 0xFE) >> 1)) >> 4)));
  v151 = v106 - 49 - *(v82 - 116 + a59 % 0x14u) + ((v150 / 3u) ^ 0x7E) + (((171 * v150) >> 8) & 0xFC);
  LOBYTE(v148) = *(v82 - 172 + (HIBYTE(a34) - 21 * ((((135 * HIBYTE(a34)) >> 8) + (((HIBYTE(a34) - ((135 * HIBYTE(a34)) >> 8)) & 0xFE) >> 1)) >> 4)));
  LOBYTE(v148) = ((v148 | a65) & (v114 - 50) | v148 & a65) & 0xFA;
  LOBYTE(v144) = ((v136 ^ 0x69) & 0xDC ^ 0x67 ^ (v148 ^ 0x22) & (v136 ^ 0xD2)) & *(v82 - 114);
  LOBYTE(v148) = (v148 ^ 0xB0) & (v136 ^ 0x28) ^ (v136 ^ 0x69) & 0xB1;
  LOBYTE(v148) = *(v82 - 100) - (((v144 ^ 0x55) & ~v148 | v148 & 0xAA) ^ 0x55);
  v152 = *(v82 - 172 + (a56 - 21 * ((((135 * a56) >> 8) + (((a56 - ((135 * a56) >> 8)) & 0xFE) >> 1)) >> 4)));
  *(v82 - 100) = v148;
  v153 = (v152 | BYTE3(a39)) & 0x8D;
  v154 = (v152 & BYTE3(a39));
  LOBYTE(v152) = *(v82 - 116 + HIBYTE(a29) % 0x14u);
  LOBYTE(v124) = *(v82 - 172 + (a63 - 21 * ((((135 * a63) >> 8) + (((a63 - ((135 * a63) >> 8)) & 0xFE) >> 1)) >> 4)));
  LOBYTE(v152) = (v124 | v152) & 6 | v152 & v124 & 7;
  *(v82 - 113) -= *(v82 - 172 + ((((v153 | v154) << v152) - ((2 * ((v153 | v154) << v152)) & 0x439C) - 1469374002) ^ 0xC2E534D5 ^ (((v153 | v154) >> (-v152 & 7)) - ((2 * ((v153 | v154) >> (-v152 & 7))) & 0x36) + 1787696411)) % 0x15);
  v155 = ~*(v82 - 151 + (v138 - 95 - 35 * ((235 * (v138 - 95)) >> 13)));
  HIBYTE(a26) = (*(v82 - 104) >> ((*(v82 - 116 + HIBYTE(a33) % 0x14u) / 5u) & 7)) ^ (*(v82 - 104) << (-(*(v82 - 116 + HIBYTE(a33) % 0x14u) / 5u) & 7)) ^ 0x6D ^ (v155 / 5 - ((2 * (v155 / 5)) & 0xDA) + 109);
  v156 = (0x8Bu >> ((v84 - 109) & 7)) ^ (139 << ((109 - v84) & 7));
  v157 = *(v82 - 116 + HIDWORD(v179));
  v158 = (v156 ^ 0xFFFFFFCF) & ~v157;
  v159 = v157 & v156;
  v160 = ((v158 ^ (v157 & 0x30 | 0xFFFFFF81) ^ 0x4E) & *(v82 - 160) ^ 0x752573BD) & (v159 ^ 0xFFB777FF);
  v161 = *(v82 - 115);
  v162 = (*(v82 - 172 + v182) * *(v82 - 172 + v182) * *(v82 - 172 + v182)) & v161;
  v163 = (*(v82 - 116 + v180) & ~v161 ^ 0x72949EE) & ~v162 | v162 & 0x11111111;
  *(v82 - 139) += (171 * ((BYTE1(a39) & 0x40 ^ 0x65 ^ ((v163 ^ 0xC0408411) & (v159 & 0x42 ^ 0xB065BF12 ^ v160) ^ v163 & 0x2290150 ^ 0xFFFFFF87) & (BYTE1(a39) | 0x3C)) & (BYTE1(a39) & 0x20 ^ 0xEF) ^ (BYTE1(a39) & 0x20 | 0x82) ^ 0xDF)) >> 9;
  *(v82 - 122) = *(v82 - 164);
  HIDWORD(v194) = v151 - 14;
  LOBYTE(v137) = v84 - 109 - 35 * ((235 * (v84 - 109)) >> 13);
  v164 = (((v151 - 14) | (((v151 - 14) < 0xA4u) << 8)) - 164) % 0x15u;
  LOBYTE(v107) = (BYTE5(a31) * BYTE5(a31)) ^ *(v82 - 151 + (a51 - 35 * ((235 * a51) >> 13)));
  v165 = (*(v82 - 172 + v164) & 0xA0 | *(v82 - 116 + HIBYTE(a41) % 0x14u) & 0x5Eu) >> 1;
  *(v82 - 101) += (((((v107 ^ 0x9A) & ~v165 | v165 & 0x65) ^ 0x9A) & *(v82 - 99) ^ 0xB2) & ~(v107 & v165) | v107 & v165 & 0x4D) ^ 0xB2;
  v166 = HIDWORD(v192) - *(v82 - 116 + v180);
  LODWORD(v107) = v166 ^ 0x33;
  LODWORD(v106) = (2 * v166) & 0x66;
  BYTE1(a38) = *(v82 - 172 + HIDWORD(v183));
  LOBYTE(v166) = *(v82 - 151 + (BYTE3(a28) - 35 * ((235 * BYTE3(a28)) >> 13)));
  LOBYTE(v166) = (*(v82 - 151 + v137) >> ((v166 * v166 * v166) & 7)) ^ (*(v82 - 151 + v137) << (-(v166 * v166 * v166) & 7));
  LOBYTE(v136) = *(v82 - 109) - v166 * v166;
  *(v82 - 143) = BYTE4(v176);
  *(v82 - 100) = (2 * *(v82 - 151 + (a39 - 35 * ((235 * a39) >> 13)))) & 0x84;
  v167 = HIDWORD(v188) ^ (*(v82 - 172 + (v197 - 21 * ((((135 * v185) >> 8) + (((v197 - ((135 * v185) >> 8)) & 0xFE) >> 1)) >> 4))) >> 1);
  LOBYTE(v161) = ((v167 ^ 0x38) - 101) ^ ((v167 ^ 0xE3) + 66) ^ ((v167 ^ 0x6B) - 54);
  LOBYTE(v139) = *(v82 - 132);
  LOBYTE(v164) = *(v149 + (*(v149 + v164) - 21 * ((((135 * *(v149 + v164)) >> 8) + (((*(v149 + v164) - ((135 * *(v149 + v164)) >> 8)) & 0xFE) >> 1)) >> 4))) & v139;
  LOBYTE(v124) = ((v139 ^ 0xFE) & (2 * *(v82 - 172 + (BYTE2(a36) - 21 * ((((135 * BYTE2(a36)) >> 8) + (((BYTE2(a36) - ((135 * BYTE2(a36)) >> 8)) & 0xFE) >> 1)) >> 4)))) ^ 0x56) & (v164 ^ 0xFE);
  *(v82 - 109) = v136;
  *(v82 - 109) = v136 - *(v82 - 116 + a74 % 0x14u) + (v124 ^ (v164 | 0x56));
  *(v82 - 110) = *(v82 - 116 + BYTE1(a41) % 0x14u);
  LOBYTE(v136) = *(v82 - 170);
  LOBYTE(v167) = *(v82 - 172 + (v199 - 21 * ((((135 * v199) >> 8) + (((v199 - ((135 * v199) >> 8)) & 0xFE) >> 1)) >> 4))) ^ 0x30;
  LOBYTE(v167) = (v136 & 0x30 ^ v167 & (v136 ^ 0xC2) ^ v167 & 0x3D ^ 0xA1) & ~(a41 & v136);
  LOBYTE(v84) = a41 & v136 & 0x6E;
  v168 = (v107 + v106 - 51);
  v169 = v168 % 0x14u;
  LOBYTE(v167) = v167 | v84;
  LOBYTE(v84) = *(v82 - 116 + v169) * *(v82 - 116 + v169);
  *(v82 - 104) = ((((((v167 ^ 0xED) & ~v84 | v84 & 0x83) ^ 0x7C) & *(v82 - 154) ^ 0x29) & ~((v167 ^ 0x91) & v84) | (v167 ^ 0x91) & v84 & 0xD6) ^ 0x29) & ((*(v82 - 151 + (BYTE1(a35) - 35 * ((235 * BYTE1(a35)) >> 13))) + *(v82 - 151 + (BYTE1(a28) - 35 * ((235 * BYTE1(a28)) >> 13)))) ^ *(v82 - 116 + (v138 - 95) % 0x14u));
  LOBYTE(v164) = *(v82 - 172 + (v161 - 19 - 21 * ((((135 * (v161 - 19)) >> 8) + (((v161 - 19 - ((135 * (v161 - 19)) >> 8)) & 0xFE) >> 1)) >> 4)));
  v170 = *(v82 - 116 + v169) * HIBYTE(a26);
  v171 = (HIDWORD(v196) + 44) & 0xFFFFFFF1 ^ 0xFFFFFFA4;
  v172 = (HIDWORD(v196) + 44) ^ 0x28u;
  v173 = ((BYTE4(v196) + 44) ^ (2 * (v172 & (2 * (v172 & (2 * (v172 & (2 * (v172 & (2 * (v172 & (2 * (((2 * (BYTE4(v196) + 44)) & 0x52 | 0x29) & (BYTE4(v196) + 44))) ^ v171)) ^ v171)) ^ v171)) ^ v171)) ^ v171))) ^ 0xF1;
  *(v82 - 126) ^= 2 * v170 - (((v173 << (v164 & 7)) ^ (v173 >> (-v164 & 7))) & (-54 - v196));
  v174 = ((v179 ^ 0xBF5BC329) + 1084505303) ^ ((v179 ^ 0xEF95B48C) + 275401588) ^ ((v179 ^ 0x7C1193C3) - 2081526723);
  return (*(v81 + 8 * ((250 * (v174 != -752870502)) ^ a1)))((v174 + 1451320585), 23, v172 & (2 * (v172 & (2 * (v172 & (2 * (v172 & (2 * ((v172 & (2 * (((2 * (BYTE4(v196) + 44)) & 0x52 | 0x29) & (BYTE4(v196) + 44)))) ^ v171)) ^ v171)) ^ v171)) ^ v171)), v172, 250, (a1 + 811), v168, 20, v176, v177, v179, v180, a6, v181, a8, v182, a10, v183, v185, v186, v187, v188, v189, v190, v191, v192, v194, v196, v80, a23, a24, v197, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_2585A2FB0(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = 657053849 * ((((2 * (a1 ^ 0x3DA10C0C)) | 0x1BAF42EA) - (a1 ^ 0x3DA10C0C) + 1915248267) ^ 0xD9CCB8B0);
  v2 = *(a1 + 8);
  v3 = *(a1 + 12) + v1;
  v4 = *a1;
  v5 = 2021301169 * ((((v7 | 0x63871EC) ^ 0xFFFFFFFE) - (~v7 | 0xF9C78E13)) ^ 0x7231D9B3);
  v7[0] = *(a1 + 16);
  v7[1] = v4;
  v8 = v1 + v2 + v5 + 278650352;
  v9 = v5 ^ (v3 + 1899927701);
  return (*(*(&off_286999DF0 + (v3 ^ 0x8EC16974)) + (v3 ^ 0x8EC16C17)))(v7);
}

uint64_t sub_2585A30E0(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *a1 + 1520698633 * (((a1 ^ 0xF137D8D3 | 0xAF0FDB6B) - (a1 ^ 0xF137D8D3) + ((a1 ^ 0xF137D8D3) & 0x50F02494)) ^ 0xF5D61B3D);
  v2 = *(a1 + 8);
  v5 = (439532179 * (((&v4 | 0xA6E91E8D) - &v4 + (&v4 & 0x5916E170)) ^ 0x784F230F)) ^ (v1 - 119438338);
  v4 = v2;
  return (*(*(&off_286999DF0 + v1 + 2086380424) + v1 + 2086381838))(&v4);
}

uint64_t sub_2585A31F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, uint64_t a18, int a19, unsigned int a20, uint64_t a21)
{
  v25 = &v21[56 * *v21 + 8];
  v28 = bswap32(*(v23 + 32));
  v26 = 827685407 * ((((2 * &a15) | 0xD40EA69A) - &a15 - 1778864973) ^ 0x7185D11D);
  a21 = v23 + 16;
  a17 = v24 - v26 + 640;
  a15 = v25;
  a16 = v23 + 56;
  a18 = v23 + 56;
  a20 = ((v28 & 0xFFFFFFF0 ^ 0x8BCDDFBD) + 2146959196 + ((v28 << (67 * (v24 ^ 0xE5) + 99)) & (((v24 + 529) | 0x77) ^ 0x179BBB17))) ^ v26;
  (*(v22 + 8 * (v24 ^ 0x7D3)))(&a15);
  return (*(v22 + 8 * ((1019 * (a19 == 95751194)) ^ v24)))(a1);
}

void sub_2585A3470()
{
  v3[8] = v2[8];
  *v1 = 5 * (v4 ^ 0x204) + *v1 - 609;
  v3[9] = v2[9];
  ++*v1;
  v3[10] = v2[10];
  ++*v1;
  v3[11] = v2[11];
  ++*v1;
  *(v0 + 16) = v5 + 1248;
}

void sub_2585A3514()
{
  v3 = 1021229753 * ((647744546 - ((v2 - 144) | 0x269BCC22) + ((v2 - 144) | 0xD96433DD)) ^ 0x67898837);
  *(v2 - 144) = v3 - 1083643178 + v1;
  *(v2 - 140) = v3 ^ 0xE6F1BAF;
  *(v2 - 136) = &STACK[0x270];
  (*(v0 + 8 * (v1 + 428)))(v2 - 144);
  JUMPOUT(0x258591A14);
}

uint64_t sub_2585A36C8()
{
  v6 = (v3 + v1);
  *v6 = v5;
  v6[1] = v5;
  return (*(v4 + 8 * ((1611 * (((v2 + 176) ^ 0x481) == (v0 & 0x30))) ^ (v2 - 335))))();
}

uint64_t sub_2585A3810()
{
  v2 = v0 ^ 0x5986922EB5DEE499;
  v3 = *(v2 - 0x5986922EB5DEE481);
  v6[0] = (2033342611 * ((2 * (v6 & 0x7040E358) - v6 - 1883300703) ^ 0x8AD31465)) ^ 0x2D3;
  v7 = v3;
  (*(v1 + 12664))(v6);
  v4 = v6[1];
  (*(v1 + 12264))(v2 - 0x5986922EB5DEE499);
  return (v4 - 95751194);
}

uint64_t sub_2585A3948@<X0>(char a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = v5 + 32;
  v8 = (v3 + (v7 << ((v4 - 22) ^ a1)));
  v9 = v8[6];
  v10 = v8[7];
  v11 = v8[4];
  v12 = v8[5];
  v13 = vrev32q_s8(v8[1]);
  v14 = vrev32q_s8(*v8);
  v15 = vrev32q_s8(v8[3]);
  v8[2] = vrev32q_s8(v8[2]);
  v8[3] = v15;
  *v8 = v14;
  v8[1] = v13;
  v8[6] = vrev32q_s8(v9);
  v8[7] = vrev32q_s8(v10);
  v8[4] = vrev32q_s8(v11);
  v8[5] = vrev32q_s8(v12);
  return (*(a3 + 8 * (((v6 == v7) * a2) ^ (v4 + 654))))();
}

uint64_t sub_2585A3950()
{
  v0.n128_u64[0] = 0x9C9C9C9C9C9C9C9CLL;
  v0.n128_u64[1] = 0x9C9C9C9C9C9C9C9CLL;
  return sub_2585A3970(v0);
}

uint64_t sub_2585A3970@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, int8x16_t a3@<Q0>, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = ~v8 + a2;
  v13 = *(a1 + v12 - 15);
  v14 = *(a1 + v12 - 31);
  v15 = a6 + v12;
  *(v15 - 15) = veorq_s8(v13, a3);
  *(v15 - 31) = veorq_s8(v14, a3);
  return (*(v11 + 8 * (((v9 + v8 == v6) * v10) ^ (v7 + 711))))();
}

void sub_2585A39C0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = *a1 == 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = v2 || *(a1 + 16) == 0;
  v1 = *(a1 + 32) - 2072138273 * ((((2 * (a1 ^ 0x7E5092A3)) | 0xDDBAD87A) - (a1 ^ 0x7E5092A3) + 287478723) ^ 0x79385C7D);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_2585A3C30(uint64_t a1, char a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, uint64_t a18, uint64_t a19)
{
  v22 = *(a4 + v19 + 72);
  v23 = (((a17 - 410) ^ 0xFEDDF9B5) & (2 * v19)) + (v19 ^ 0x7F6EFCF5) - 2137980149;
  *(a19 + v23) = (HIBYTE(v22) ^ 0x6E) - ((2 * (HIBYTE(v22) ^ 0x6E)) & 0x38) - 100;
  *(a19 + v23 + 1) = (a2 ^ BYTE2(v22)) - ((2 * (a2 ^ BYTE2(v22))) & 0x38) - 100;
  *(a19 + v23 + 2) = (BYTE1(v22) ^ 0x38) - 2 * ((BYTE1(v22) ^ 0x38) & 0x1F ^ BYTE1(v22) & 3) - 100;
  *(a19 + v23 + 3) = v22 ^ 6;
  return (*(v21 + 8 * (((v19 + 4 >= v20) * a3) ^ a17)))();
}

uint64_t sub_2585A3D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  (*(a2 + 8 * ((v34 + 790) ^ 0x58085595)))(a10 - 0x4FD2FBE7B9EB5FAFLL, 0x100004077774924);
  v35 = (*(a32 + 8 * (v32 + 1476942108)))();
  *v33 = v35;
  v33[1] = 1812433253 * (v35 ^ (v35 >> 30)) + 1;
  return (*(a32 + 8 * ((28 * (((v32 + 1476940622) | 0x480u) - 569 <= 1)) | (v32 + 1476940904))))(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

uint64_t sub_2585A43B8()
{
  v5 = 1511064119 * ((((2 * (v1 - 144)) | 0x3D0E18F22E410BAALL) - (v1 - 144) - 0x1E870C79172085D5) ^ 0x8309B9C59F5FDA9FLL);
  LODWORD(STACK[0x4E0]) = -617292531;
  LODWORD(STACK[0x4E4]) = 1111256530;
  v2 = *off_28699A228;
  *(v1 - 112) = v5;
  *(v1 - 128) = -1511064119 * ((((2 * (v1 - 144)) | 0x2E410BAA) - (v1 - 144) - 388007381) ^ 0x9F5FDA9F);
  *(v1 - 124) = v5 + 1948081839;
  *(v1 - 144) = 1948081833 - v5;
  *(v1 - 104) = v5 ^ 0xAC5BEEC2;
  *(v1 - 136) = v2 - v5;
  *(v1 - 120) = 1948081916 - v5;
  v3 = (*(v0 + 12192))(v1 - 144);
  return (*(v0 + 8 * *(v1 - 100)))(v3);
}

uint64_t sub_2585A4A44(uint64_t result)
{
  v1 = 1380645169 * ((((2 * result) | 0x65414F4D677C28A8) - result - 0x32A0A7A6B3BE1454) ^ 0x1EEBE62317B1C04);
  v2 = *result - v1;
  v3 = *(result + 16) - v1;
  v4 = *(result + 24) + 1380645169 * ((((2 * result) | 0x677C28A8) - result + 1279388588) ^ 0x317B1C04);
  v5 = v2 >= v3;
  v6 = v2 < v3;
  v7 = !v5;
  if ((*(result + 8) - 1380645169 * ((((2 * result) | 0x677C28A8) - result + 1279388588) ^ 0x317B1C04)))
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  if (v8)
  {
    v4 = *(result + 32) ^ (1380645169 * ((((2 * result) | 0x677C28A8) - result + 1279388588) ^ 0x317B1C04));
  }

  *(result + 40) = v4 ^ (*(result + 36) - 1380645169 * ((((2 * result) | 0x677C28A8) - result + 1279388588) ^ 0x317B1C04));
  return result;
}

uint64_t sub_2585A4AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t (*a19)(uint64_t))
{
  v23 = 1511064119 * ((((v22 - 136) | 0x7193CCDF) - ((v22 - 136) & 0x7193CCDF)) ^ 0xF9EC9395);
  *(v22 - 136) = v19 - v23 + 449;
  *(v22 - 132) = (a5 ^ 0xFFFEF67F) - v23 + ((2 * a5) & 0xFFFDECFE) + 1169125324;
  *(v22 - 128) = v20;
  v24 = (*(v21 + 8 * (v19 + 1497)))(v22 - 136);
  return a19(v24);
}

uint64_t sub_2585A4B7C(uint64_t a1)
{
  v142 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = *(a1 + 8);
  v126 = (*v2 ^ 0x5F7B7BC4) - 1144658688 + ((2 * *v2) & 0xBEF6F788);
  v127 = (v2[1] ^ 0x5F7B7BC4) - 1144658688 + ((2 * v2[1]) & 0xBEF6F788);
  v128 = (v2[2] ^ 0x5F7B7BC4) - 1144658688 + ((2 * v2[2]) & 0xBEF6F788);
  v129 = (v2[3] ^ 0x5F7B7BC4) - 1144658688 + ((2 * v2[3]) & 0xBEF6F788);
  v130 = (v2[4] ^ 0x5F7B7BC4) - 1144658688 + ((2 * v2[4]) & 0xBEF6F788);
  v131 = (v2[5] ^ 0x5F7B7BC4) - 1144658688 + ((2 * v2[5]) & 0xBEF6F788);
  v132 = (v2[6] ^ 0x5F7B7BC4) - 1144658688 + ((2 * v2[6]) & 0xBEF6F788);
  v133 = (v2[7] ^ 0x5F7B7BC4) - 1144658688 + ((2 * v2[7]) & 0xBEF6F788);
  v134 = (v2[8] ^ 0x5F7B7BC4) - 1144658688 + ((2 * v2[8]) & 0xBEF6F788);
  v135 = (v2[9] ^ 0x5F7B7BC4) - 1144658688 + ((2 * v2[9]) & 0xBEF6F788);
  v136 = (v2[10] ^ 0x5F7B7BC4) - 1144658688 + ((2 * v2[10]) & 0xBEF6F788);
  v137 = (v2[11] ^ 0x5F7B7BC4) - 1144658688 + ((2 * v2[11]) & 0xBEF6F788);
  v138 = (v2[12] ^ 0x5F7B7BC4) - 1144658688 + ((2 * v2[12]) & 0xBEF6F788);
  v139 = (v2[13] ^ 0x5F7B7BC4) - 1144658688 + ((2 * v2[13]) & 0xBEF6F788);
  v140 = (v2[14] ^ 0x5F7B7BC4) - 1144658688 + ((2 * v2[14]) & 0xBEF6F788);
  v141 = (v2[15] ^ 0x5F7B7BC4) - 1144658688 + ((2 * v2[15]) & 0xBEF6F788);
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = *v1 + v126 + 1075661728 + ((((v4 & v3 | v5 & ~v3) ^ 0x6683EC82) - 682983733) ^ (((v4 & v3 | v5 & ~v3) ^ 0xA421C615) + 367547486) ^ (((v4 & v3 | v5 & ~v3) ^ 0xC2A22A97) + 1936439520));
  v7 = (v6 ^ 0xC20345AA) & (2 * (v6 & 0xCA4265CB)) ^ v6 & 0xCA4265CB;
  v8 = ((2 * (v6 ^ 0x52874C3C)) ^ 0x318A53EE) & (v6 ^ 0x52874C3C) ^ (2 * (v6 ^ 0x52874C3C)) & 0x98C529F6;
  v9 = v8 ^ 0x88452811;
  v10 = (v8 ^ 0x10000164) & (4 * v7) ^ v7;
  v11 = ((4 * v9) ^ 0x6314A7DC) & v9 ^ (4 * v9) & 0x98C529F4;
  v12 = v10 ^ 0x98C529F7 ^ (v11 ^ 0x421D0) & (16 * v10);
  v13 = (16 * (v11 ^ 0x98C10823)) & 0x98C529F0 ^ 0x10852087 ^ ((16 * (v11 ^ 0x98C10823)) ^ 0x8C529F70) & (v11 ^ 0x98C10823);
  v14 = (v12 << 8) & 0x98C52900 ^ v12 ^ ((v12 << 8) ^ 0xC529F700) & v13;
  HIDWORD(v15) = ((v6 ^ 0xD23D94DC) + 8384791) ^ v6 ^ ((v6 ^ 0x18A01EF) + 29910054) ^ ((v6 ^ 0x1F4FAF9) + 28745524) ^ ((v6 ^ 0x1FEF5FF) + 29134902);
  LODWORD(v15) = v6 ^ (2 * ((v14 << 16) & 0x18000000 ^ v14 ^ ((v14 << 16) ^ 0x8000000) & ((v13 << 8) & 0x18C50000 ^ ((v13 << 8) ^ 0x45290000) & v13 ^ 0x18000000)));
  v16 = v3 + 1225407622 + ((((v15 >> 25) ^ 0xC0A6C6C9) - 556157584) ^ (((v15 >> 25) ^ 0xF9BAD499) - 406476992) ^ (((v15 >> 25) ^ 0xE7D108A5) - 106005756));
  v17 = (v16 ^ 0xF4535394) & (2 * (v16 & 0xF6435A26)) ^ v16 & 0xF6435A26;
  v18 = ((2 * (v16 ^ 0x90555390)) ^ 0xCC2C136C) & (v16 ^ 0x90555390) ^ (2 * (v16 ^ 0x90555390)) & 0x661609B6;
  v19 = v18 ^ 0x22120892;
  v20 = (v18 ^ 0x40040120) & (4 * v17) ^ v17;
  v21 = ((4 * v19) ^ 0x985826D8) & v19 ^ (4 * v19) & 0x661609B4;
  v22 = v20 ^ 0x661609B6 ^ (v21 ^ 0x100080) & (16 * v20);
  v23 = (16 * (v21 ^ 0x66060926)) & 0x661609B0 ^ 0x6160096 ^ ((16 * (v21 ^ 0x66060926)) ^ 0x61609B60) & (v21 ^ 0x66060926);
  v24 = (v22 << 8) & 0x66160900 ^ v22 ^ ((v22 << 8) ^ 0x1609B600) & v23;
  v25 = v16 ^ (2 * ((v24 << 16) & 0x66160000 ^ v24 ^ ((v24 << 16) ^ 0x9B60000) & ((v23 << 8) & 0x66160000 ^ 0x60160000 ^ ((v23 << 8) ^ 0x16090000) & v23)));
  v26 = v3 & (v25 ^ 0x3643494A) | v4 & ~(v25 ^ 0x3643494A);
  v27 = v5 + v127 - 828606927 + (((v26 ^ 0xAE9B75A9) - 1166984724) ^ ((v26 ^ 0x4D6B8E99) + 1501676252) ^ ((v26 ^ 0xE3F0FB30) - 149244045));
  v28 = (v27 ^ 0xC1FF45DD) & (2 * (v27 & 0xE9FF941E)) ^ v27 & 0xE9FF941E;
  v29 = ((2 * (v27 ^ 0x91064DC9)) ^ 0xF1F3B3AE) & (v27 ^ 0x91064DC9) ^ (2 * (v27 ^ 0x91064DC9)) & 0x78F9D9D6;
  v30 = v29 ^ 0x8084851;
  v31 = (v29 ^ 0x60F09080) & (4 * v28) ^ v28;
  v32 = ((4 * v30) ^ 0xE3E7675C) & v30 ^ (4 * v30) & 0x78F9D9D4;
  v33 = (v32 ^ 0x60E14140) & (16 * v31) ^ v31;
  v34 = ((16 * (v32 ^ 0x18189883)) ^ 0x8F9D9D70) & (v32 ^ 0x18189883) ^ (16 * (v32 ^ 0x18189883)) & 0x78F9D9D0;
  v35 = v33 ^ 0x78F9D9D7 ^ (v34 ^ 0x8999900) & (v33 << 8);
  v36 = ((((v35 << 16) & 0x10000 ^ v35 ^ ((v35 << 16) ^ 0x70000) & (((v34 << 8) ^ 0x10000) & v34 ^ (v34 << 8) & 0x10000)) << 13) ^ (v27 << 12)) & 0xFFFFF000 | ((((v27 ^ 0xE86267E3) + 27128831) ^ v27 ^ ((v27 ^ 0x7E7FF568) - 1753194122) ^ ((v27 ^ 0xFFE20694) + 371036812) ^ ((v27 ^ 0x7FFFFFFF) - 1778357277)) >> 20);
  v37 = (((v36 ^ 0x4C8BFC46) - 1850908705) ^ ((v36 ^ 0xAE7A7413) + 1935464332) ^ ((v36 ^ 0x8A8935) - 575919442)) + (((v25 ^ 0x63200D58) - 1019949824) ^ ((v25 ^ 0xBF18FC78) + 520895968) ^ ((v25 ^ 0xEA7BB86A) + 1248819662));
  v38 = (v25 ^ 0x3643494A) & (v37 + 709547033) | v3 & ~(v37 + 709547033);
  v39 = v4 + v128 + 1020886463 + (((v38 ^ 0x57EA4304) + 1249093884) ^ ((v38 ^ 0x1A7981B0) + 132147792) ^ ((v38 ^ 0x4D93C2B4) + 1342843212));
  v40 = (v39 ^ 0x8E43B75D) & (2 * (v39 & 0xAE6BA658)) ^ v39 & 0xAE6BA658;
  v41 = ((2 * (v39 ^ 0x8E85F3ED)) ^ 0x41DCAB6A) & (v39 ^ 0x8E85F3ED) ^ (2 * (v39 ^ 0x8E85F3ED)) & 0x20EE55B4;
  v42 = v41 ^ 0x20225495;
  v43 = (v41 ^ 0xCC0120) & (4 * v40) ^ v40;
  v44 = ((4 * v42) ^ 0x83B956D4) & v42 ^ (4 * v42) & 0x20EE55B4;
  v45 = v43 ^ 0x20EE55B5 ^ (v44 ^ 0xA85480) & (16 * v43);
  v46 = ((((v45 << 8) & 0x55555555 ^ v45 ^ ((v45 << 8) ^ 0x3500) & ((16 * (v44 ^ 0x20460121)) & 0x20EE5500 ^ ((16 * (v44 ^ 0x20460121)) ^ 0x1B00) & (v44 ^ 0x20460121) ^ 0x400)) << 18) ^ (v39 << 17)) & 0xFFFE0000 | ((((v39 ^ 0xB2524527) + 473555825) ^ v39 ^ ((v39 ^ 0x23874C16) - 1913853374) ^ ((v39 ^ 0xFFBFAF66) + 1372850482) ^ ((v39 ^ 0x3FFEFFFF) - 1852483159)) >> 15);
  v47 = v37 + 391425957 + (((v46 ^ 0xEA63831C) - 1225718712) ^ ((v46 ^ 0x9E30CB34) - 1029550992) ^ ((v46 ^ 0x3A37EB00) + 1722117212));
  v48 = v47 & (v25 ^ 0x3643494A ^ (v37 + 709547033)) ^ v25;
  v49 = v3 + v129 + 1286199621 + (((v48 ^ 0x3CA5231F) - 2041716444) ^ ((v48 ^ 0x554A833D) - 274579198) ^ ((v48 ^ 0x5FACE968) - 448517291));
  v50 = (v49 ^ 0xED07A16C) & (2 * (v49 & 0xCD27096E)) ^ v49 & 0xCD27096E;
  v51 = ((2 * (v49 ^ 0x7F0BB130)) ^ 0x645970BC) & (v49 ^ 0x7F0BB130) ^ (2 * (v49 ^ 0x7F0BB130)) & 0xB22CB85E;
  v52 = v51 ^ 0x92248842;
  v53 = v50 ^ 0xB22CB85E ^ (v51 ^ 0x20082018) & (4 * v50);
  v54 = ((4 * v52) ^ 0xC8B2E178) & v52 ^ (4 * v52) & 0xB22CB85C;
  v55 = (16 * v53) & 0xB22CB850 ^ v53 ^ ((16 * v53) ^ 0x22CB85E0) & v54;
  v56 = (((v54 & ~(16 * v54) & (v55 << 8) ^ v55) << 23) ^ (v49 << 22)) & 0xFFC00000 | ((((v49 ^ 0x2A1ED338) - 415638954) ^ v49 ^ ((v49 ^ 0xE94CDF12) + 611047040) ^ ((v49 ^ 0x8F7D0567) + 1113197579) ^ ((v49 ^ 0x7EF7FFDF) - 1278150989)) >> 10);
  v57 = v47 + 737935196 + (((v56 ^ 0xDA8231B5) + 1510639404) ^ ((v56 ^ 0x5B613EEC) - 605452173) ^ ((v56 ^ 0xD56FB964) + 1441206267));
  HIDWORD(v15) = v130 + (((v25 ^ 0x3932DEF8) - 1725554848) ^ ((v25 ^ 0x1D2BA05) - 1580827741) ^ ((v25 ^ 0xEA32DB7) - 1363678191)) + 1138959869 + ((v37 - ((2 * (v37 + 709547033)) & 0x8B1F5778) + 1876590549) ^ 0x458FABBC ^ v57 & (v47 ^ (v37 + 709547033)));
  LODWORD(v15) = HIDWORD(v15);
  v58 = (v15 >> 25) + v57;
  HIDWORD(v15) = v131 + v37 + 709547033 + 742810982 + ((v47 - ((2 * v47) & 0x69A9AB24) + 886363538) ^ 0x34D4D592 ^ v58 & (v57 ^ v47));
  LODWORD(v15) = HIDWORD(v15);
  v59 = (v15 >> 20) + v58;
  HIDWORD(v15) = v132 + v47 - 1930500785 + ((v57 - ((2 * v57) & 0x88B80914) + 1146881162) ^ 0x445C048A ^ v59 & (v58 ^ v57));
  LODWORD(v15) = HIDWORD(v15);
  v60 = (v15 >> 15) + v59;
  HIDWORD(v15) = v133 + v57 - 502975427 + ((v58 - ((2 * v58) & 0x25D81A6A) + 317459765) ^ 0x12EC0D35 ^ v60 & (v59 ^ v58));
  LODWORD(v15) = HIDWORD(v15);
  v61 = (v15 >> 10) + v60;
  HIDWORD(v15) = v134 + v58 + 1312765972 + ((v59 - ((2 * v59) & 0x1CA89F68) - 1907077196) ^ 0x8E544FB4 ^ v61 & (v60 ^ v59));
  LODWORD(v15) = HIDWORD(v15);
  v62 = (v15 >> 25) + v61;
  HIDWORD(v15) = v135 + v59 + 1879283435 + ((v60 - ((2 * v60) & 0xD5343D10) + 1788485256) ^ 0x6A9A1E88 ^ v62 & (v61 ^ v60));
  LODWORD(v15) = HIDWORD(v15);
  v63 = (v15 >> 20) + v62;
  HIDWORD(v15) = v136 + v60 - 457311507 + ((v61 - ((2 * v61) & 0x7E7C517A) - 1086445379) ^ 0xBF3E28BD ^ v63 & (v62 ^ v61));
  LODWORD(v15) = HIDWORD(v15);
  v64 = (v15 >> 15) + v63;
  HIDWORD(v15) = v137 + v61 + 1847293690 + (v63 & v64 | v62 & ~v64);
  LODWORD(v15) = HIDWORD(v15);
  v65 = (v15 >> 10) + v64;
  HIDWORD(v15) = v138 + v62 + 1347334238 + (v64 & v65 | v63 & ~v65);
  LODWORD(v15) = HIDWORD(v15);
  v66 = (v15 >> 25) + v65;
  HIDWORD(v15) = v139 + v63 - 497610545 + (v65 & v66 | v64 & ~v66);
  LODWORD(v15) = HIDWORD(v15);
  v67 = (v15 >> 20) + v66;
  HIDWORD(v15) = v140 + v64 - 1959271734 + (v66 & v67 | v65 & ~v67);
  LODWORD(v15) = HIDWORD(v15);
  v68 = (v15 >> 15) + v67;
  HIDWORD(v15) = v141 + v65 + 779265885 + (v67 & v68 | v66 & ~v68);
  LODWORD(v15) = HIDWORD(v15);
  v69 = (v15 >> 10) + v68;
  HIDWORD(v15) = v127 + v66 - 623065954 + (v69 & v67 | v68 & ~v67);
  LODWORD(v15) = HIDWORD(v15);
  v70 = (v15 >> 27) + v69;
  HIDWORD(v15) = v132 + v67 - 1526771076 + (v70 & v68 | v69 & ~v68);
  LODWORD(v15) = HIDWORD(v15);
  v71 = (v15 >> 23) + v70;
  HIDWORD(v15) = v137 + v68 + 186448269 + (v71 & v69 | v70 & ~v69);
  LODWORD(v15) = HIDWORD(v15);
  v72 = (v15 >> 18) + v71;
  HIDWORD(v15) = v126 + v69 - 831166746 + (v72 & v70 | v71 & ~v70);
  LODWORD(v15) = HIDWORD(v15);
  v73 = (v15 >> 12) + v72;
  HIDWORD(v15) = v131 + v70 - 1158828135 + (v73 & v71 | v72 & ~v71);
  LODWORD(v15) = HIDWORD(v15);
  v74 = (v15 >> 27) + v73;
  HIDWORD(v15) = v136 + v71 - 419253361 + (v74 & v72 | v73 & ~v72);
  LODWORD(v15) = HIDWORD(v15);
  v75 = (v15 >> 23) + v74;
  HIDWORD(v15) = v141 + v72 - 1117747779 + (v75 & v73 | v74 & ~v73);
  LODWORD(v15) = HIDWORD(v15);
  v76 = (v15 >> 18) + v75;
  HIDWORD(v15) = v130 + v73 - 862807292 + (v76 & v74 | v75 & ~v74);
  LODWORD(v15) = HIDWORD(v15);
  LODWORD(v2) = (v15 >> 12) + v76;
  HIDWORD(v15) = v135 + v74 + 111176994 + (v2 & v75 | v76 & ~v75);
  LODWORD(v15) = HIDWORD(v15);
  v77 = (v15 >> 27) + v2;
  HIDWORD(v15) = v140 + v75 - 1477073134 + (v77 & v76 | v2 & ~v76);
  LODWORD(v15) = HIDWORD(v15);
  v78 = (v15 >> 23) + v77;
  HIDWORD(v15) = v129 + v76 - 644633405 + (v78 & v2 | v77 & ~v2);
  LODWORD(v15) = HIDWORD(v15);
  v79 = (v15 >> 18) + v78;
  HIDWORD(v15) = v134 + v2 + 706262057 + (v79 & v77 | v78 & ~v77);
  LODWORD(v15) = HIDWORD(v15);
  v80 = (v15 >> 12) + v79;
  HIDWORD(v15) = v139 + v77 - 1901950911 + (v80 & v78 | v79 & ~v78);
  LODWORD(v15) = HIDWORD(v15);
  v81 = (v15 >> 27) + v80;
  HIDWORD(v15) = v128 + v78 - 508673228 + (v81 & v79 | v80 & ~v79);
  LODWORD(v15) = HIDWORD(v15);
  v82 = (v15 >> 23) + v81;
  HIDWORD(v15) = v133 + v79 + 1278059029 + (v82 & v80 | v81 & ~v80);
  LODWORD(v15) = HIDWORD(v15);
  v83 = (v15 >> 18) + v82;
  HIDWORD(v15) = v138 + v80 + 1911090118 + ((v83 ^ v82) & v81 ^ v82);
  LODWORD(v15) = HIDWORD(v15);
  LODWORD(v2) = *(&v126 + (v81 & 0xF));
  v84 = (v15 >> 12) + v83;
  *(&v126 + (v81 & 0xF)) = *(&v126 + (v84 & 0xF));
  *(&v126 + (v84 & 0xF)) = *(&v126 + (v83 & 0xF));
  *(&v126 + (v83 & 0xF)) = *(&v126 + (v82 & 0xF));
  *(&v126 + (v82 & 0xF)) = *(&v126 + (v81 >> 4));
  *(&v126 + (v81 >> 4)) = *(&v126 + (v84 >> 4));
  *(&v126 + (v84 >> 4)) = *(&v126 + (v83 >> 4));
  *(&v126 + (v83 >> 4)) = *(&v126 + (v82 >> 4));
  *(&v126 + (v82 >> 4)) = v2;
  HIDWORD(v15) = v131 + v81 - 457648002 + (v84 ^ v83 ^ v82);
  LODWORD(v15) = HIDWORD(v15);
  LODWORD(v2) = (v15 >> 28) + v84;
  HIDWORD(v15) = v134 + v82 + 1815123389 + (v2 ^ v84 ^ v83);
  LODWORD(v15) = HIDWORD(v15);
  v85 = (v15 >> 21) + v2;
  HIDWORD(v15) = v137 + v83 + 1381761118 + (v2 ^ v84 ^ v85);
  LODWORD(v15) = HIDWORD(v15);
  v86 = (v15 >> 16) + v85;
  HIDWORD(v15) = v140 + v84 - 492579000 + (v85 ^ v2 ^ v86);
  LODWORD(v15) = HIDWORD(v15);
  v87 = (v15 >> 9) + v86;
  HIDWORD(v15) = v127 + v2 - 1988261504 + (v86 ^ v85 ^ v87);
  LODWORD(v15) = HIDWORD(v15);
  v88 = (v15 >> 28) + v87;
  HIDWORD(v15) = v130 + v85 + 815623909 + (v87 ^ v86 ^ v88);
  LODWORD(v15) = HIDWORD(v15);
  v89 = (v15 >> 21) + v88;
  HIDWORD(v15) = v133 + v86 - 612767076 + (v88 ^ v87 ^ v89);
  LODWORD(v15) = HIDWORD(v15);
  v90 = (v15 >> 16) + v89;
  HIDWORD(v15) = v136 + v87 - 1552000084 + (v89 ^ v88 ^ v90);
  LODWORD(v15) = HIDWORD(v15);
  v91 = (v15 >> 9) + v90;
  HIDWORD(v15) = v139 + v88 + 224009730 + (v90 ^ v89 ^ v91);
  LODWORD(v15) = HIDWORD(v15);
  v92 = (v15 >> 28) + v91;
  HIDWORD(v15) = v126 + v89 - 815806666 + (v91 ^ v90 ^ v92);
  LODWORD(v15) = HIDWORD(v15);
  v93 = (v15 >> 21) + v92;
  HIDWORD(v15) = v129 + v90 - 1179791423 + (v92 ^ v91 ^ v93);
  LODWORD(v15) = HIDWORD(v15);
  v94 = (v15 >> 16) + v93;
  HIDWORD(v15) = v132 + v91 - 381240255 + (v93 ^ v92 ^ v94);
  LODWORD(v15) = HIDWORD(v15);
  v95 = (v15 >> 9) + v94;
  HIDWORD(v15) = v135 + v92 - 1097633931 + (v94 ^ v93 ^ v95);
  LODWORD(v15) = HIDWORD(v15);
  v96 = (v15 >> 28) + v95;
  HIDWORD(v15) = v138 + v93 - 879085279 + (v95 ^ v94 ^ v96);
  LODWORD(v15) = HIDWORD(v15);
  v97 = (v15 >> 21) + v96;
  HIDWORD(v15) = v141 + v94 + 73473076 + (v96 ^ v95 ^ v97);
  LODWORD(v15) = HIDWORD(v15);
  v98 = (v15 >> 16) + v97;
  HIDWORD(v15) = v128 + v95 - 1452608095 + (v97 ^ v96 ^ v98);
  LODWORD(v15) = HIDWORD(v15);
  v99 = (v15 >> 9) + v98;
  HIDWORD(v15) = v126 + v96 - 655900288 + ((v99 | ~v97) ^ v98);
  LODWORD(v15) = HIDWORD(v15);
  v100 = (v15 >> 26) + v99;
  HIDWORD(v15) = v133 + v97 + 669621971 + ((v100 | ~v98) ^ v99);
  LODWORD(v15) = HIDWORD(v15);
  v101 = (v15 >> 22) + v100;
  HIDWORD(v15) = v140 + v98 - 1873624349 + ((v101 | ~v99) ^ v100);
  LODWORD(v15) = HIDWORD(v15);
  v102 = (v15 >> 17) + v101;
  HIDWORD(v15) = v131 + v99 - 514703499 + ((v102 | ~v100) ^ v101);
  LODWORD(v15) = HIDWORD(v15);
  v103 = (v15 >> 11) + v102;
  HIDWORD(v15) = v138 + v100 + 1243216127 + ((v103 | ~v101) ^ v102);
  LODWORD(v15) = HIDWORD(v15);
  v104 = (v15 >> 26) + v103;
  HIDWORD(v15) = v129 + v101 + 1942711246 + ((v104 | ~v102) ^ v103);
  LODWORD(v15) = HIDWORD(v15);
  v105 = (v15 >> 22) + v104;
  HIDWORD(v15) = v136 + v102 - 458320967 + ((v105 | ~v103) ^ v104);
  LODWORD(v15) = HIDWORD(v15);
  v106 = (v15 >> 17) + v105;
  HIDWORD(v15) = v127 + v103 + 1782775053 + ((v106 | ~v104) ^ v105);
  LODWORD(v15) = HIDWORD(v15);
  v107 = (v15 >> 11) + v106;
  HIDWORD(v15) = v134 + v104 + 1416043915 + ((v107 | ~v105) ^ v106);
  LODWORD(v15) = HIDWORD(v15);
  v108 = (v15 >> 26) + v107;
  HIDWORD(v15) = v141 + v105 - 487881188 + ((v108 | ~v106) ^ v107);
  LODWORD(v15) = HIDWORD(v15);
  v109 = (v15 >> 22) + v108;
  HIDWORD(v15) = v132 + v106 - 2017467824 + ((v109 | ~v107) ^ v108);
  LODWORD(v15) = HIDWORD(v15);
  v110 = (v15 >> 17) + v109;
  HIDWORD(v15) = v139 + v107 + 851882205 + ((v110 | ~v108) ^ v109);
  LODWORD(v15) = HIDWORD(v15);
  v111 = (v15 >> 11) + v110;
  HIDWORD(v15) = v130 + v108 - 602792514 + ((v111 | ~v109) ^ v110);
  LODWORD(v15) = HIDWORD(v15);
  v112 = v111 + ((v15 >> 26) ^ 0xC67DEF4B) + ((2 * (v15 >> 26)) & 0x8CFBDE96) + 2080110006;
  v113 = ((v112 ^ 0x2810CA41) - 1785278272) ^ v112 ^ ((v112 ^ 0xA43D0441) + 431693504) ^ ((v112 ^ 0xB1AFDDFE) + 204064513) ^ ((v112 ^ 0x7FFBF6FF) - 1031934974);
  HIDWORD(v15) = v137 + v109 - 1577479823 + ((v111 - ((2 * v111) & 0x9C29E808) + 1309996036) ^ 0xB1EB0BFB ^ (v113 ^ 0xBD861AFE) & v110);
  LODWORD(v15) = HIDWORD(v15);
  v114 = (((v113 ^ 0x3590432D) - 2033981434) ^ ((v113 ^ 0x2C9402A0) - 1614304887) ^ ((v113 ^ 0x5B7DA48C) - 399634523)) + 555242134 + (v15 >> 22);
  LODWORD(v2) = (v114 ^ 0xC9B95E4F) & (2 * (v114 & 0xEDBD5F40)) ^ v114 & 0xEDBD5F40;
  v115 = ((2 * (v114 ^ 0x42E14CCF)) ^ 0x5EB8271E) & (v114 ^ 0x42E14CCF) ^ (2 * (v114 ^ 0x42E14CCF)) & 0xAF5C138E;
  v116 = v115 ^ 0xA1441081;
  v117 = (v115 ^ 0xE180300) & (4 * v2) ^ v2;
  LODWORD(v2) = ((4 * v116) ^ 0xBD704E3C) & v116 ^ (4 * v116) & 0xAF5C138C;
  v118 = (v2 ^ 0xAD500200) & (16 * v117) ^ v117;
  LODWORD(v2) = ((16 * (v2 ^ 0x20C1183)) ^ 0xF5C138F0) & (v2 ^ 0x20C1183) ^ (16 * (v2 ^ 0x20C1183)) & 0xAF5C1380;
  v119 = v118 ^ 0xAF5C138F ^ (v2 ^ 0xA5401000) & (v118 << 8);
  v120 = (v114 ^ (2 * ((v119 << 16) & 0x2F5C0000 ^ v119 ^ ((v119 << 16) ^ 0x138F0000) & (((v2 ^ 0xA1C030F) << 8) & 0x2F5C0000 ^ 0x234C0000 ^ (((v2 ^ 0xA1C030F) << 8) ^ 0x5C130000) & (v2 ^ 0xA1C030F)))) ^ 0x4AE287A1) & v111 ^ v113;
  HIDWORD(v15) = v128 + v110 - 2089579947 + (((v120 ^ 0x4ABF97BD) + 2065394403) ^ ((v120 ^ 0xD3559E98) - 487496760) ^ ((v120 ^ 0x246C13DB) + 365489797));
  LODWORD(v15) = HIDWORD(v15);
  v121 = v114 + 1651481975 + (v15 >> 17);
  v122 = ((v121 ^ 0x41346EF5) - 897994946) ^ v121 ^ ((v121 ^ 0xBB3AE9AF) + 813115496) ^ ((v121 ^ 0xF8414696) + 1930200927) ^ ((v121 ^ 0x76FDFFFB) - 38781388);
  v123 = ((v114 ^ 0xD0DD26B5) + 1029732747) ^ v114 ^ ((v114 ^ 0xAB21AE27) + 1184690457) ^ ((v114 ^ 0x1C05D7AF) - 239564655) ^ ((v114 ^ 0x75BBFFFD) - 1744396093) ^ v122 & 0x10792730 ^ (v122 ^ 0x8B4DC1C8) & (v113 ^ 0x5200C231);
  HIDWORD(v15) = v135 + v111 + 526713090 + (((v123 ^ 0xC78CBE6B) - 1701277281) ^ ((v123 ^ 0xF2C84437) - 1344508989) ^ ((v123 ^ 0xD8B0A463) - 2052813929));
  LODWORD(v15) = HIDWORD(v15);
  result = v1[1];
  *v1 += 248885718 + (((v113 ^ 0xC91A2596) + 2051641023) ^ ((v113 ^ 0x7129158D) - 1032143194) ^ ((v113 ^ 0xFA4AD51A) + 1226407475));
  v1[1] = result + v121 + ((v15 >> 11) ^ 0x2F8AF79F) + ((2 * (v15 >> 11)) & 0x5F15EF3E) + 1539492394;
  v125 = v1[3] - 306356416 + v114;
  v1[2] = v1[2] - 1957838392 + v121 + 1;
  v1[3] = v125;
  return result;
}

uint64_t sub_2585A6814(uint64_t result)
{
  v1 = (*(result + 4) - -109 * ((result - 122 - 2 * (result & 0x86)) ^ 4)) - 73;
  v2 = v1 > 8;
  v3 = (1 << v1) & 0x105;
  if (v2 || v3 == 0)
  {
    v5 = 95708297;
  }

  else
  {
    v5 = 95751194;
  }

  *(result + 8) = v5;
  return result;
}

uint64_t sub_2585A6E44(uint64_t a1)
{
  v1 = 1511064119 * ((-1782345944 - (a1 | 0x95C38F28) + (a1 | 0x6A3C70D7)) ^ 0xE2432F9D);
  v2 = *a1 + v1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 4) + v1;
  v5 = v4 + *(v3 + 68) - 1169057355;
  *(v3 + 68) = v5;
  v4 -= 1854361928;
  v6 = v4 < 0xD7271503;
  v7 = v5 - 685304573 < v4;
  if (v6 != v5 > 0x28D8EAFC)
  {
    v7 = v6;
  }

  return (*(*(&off_286999DF0 + (v2 ^ 0x283)) + ((1978 * v7) ^ v2)))();
}

void OowSGu()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *(&off_286999DF0 + (*(off_286999E20 + (*(off_28699A038 + (-119 * ((dword_27F948460 + dword_27F948468) ^ 0x98)) - 4) ^ 0x16u)) ^ (-119 * ((dword_27F948460 + dword_27F948468) ^ 0x98))) - 67);
  v1 = -119 * ((dword_27F948460 - *v0) ^ 0x98);
  v2 = *(&off_286999DF0 + (*(off_286999FC8 + ~*(off_28699A240 + v1 - 12) - 12) ^ v1) - 139);
  v3 = 1667229833 * ((*v0 - &v5 + *(v2 - 4)) ^ 0xD89E539CF9C77798);
  *v0 = v3;
  *(v2 - 4) = v3;
  v6[1] = 1159261966 - 439532179 * ((v6 + 733456751 - 2 * (v6 & 0x2BB7A96F)) ^ 0xF51194ED);
  LOBYTE(v2) = -119 * ((*(v2 - 4) - *v0) ^ 0x98);
  v4 = *(&off_286999DF0 + ((-119 * ((dword_27F948460 + dword_27F948468) ^ 0x98)) ^ byte_2585C7580[byte_2585D2320[(-119 * ((dword_27F948460 + dword_27F948468) ^ 0x98))] ^ 0xAD]) - 80);
  (*(v4 + 8 * ((*(off_28699A010 + (*(off_28699A2E0 + v2 - 12) ^ 0x36u)) ^ v2) + 1372)))(v6);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_2585A7394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  v41 = v40 - 152;
  *(v40 - 144) = (v39 + 2089147315) ^ (439532179 * ((626669680 - ((v40 - 152) | 0x255A3870) + ((v40 - 152) | 0xDAA5C78F)) ^ 0x403FA0D));
  STACK[0xD28] = v40 - 240;
  (*(a1 + 8 * (v39 ^ 0x343)))(v40 - 152);
  v42 = 2021301169 * ((2 * (v41 & 0x2E97BCD0) - v41 - 781696212) ^ 0x5A9E148C);
  STACK[0xD28] = &a39;
  STACK[0xD30] = v40 - 240;
  *(v40 - 136) = v42 + 469501789;
  *(v40 - 132) = (v39 - 698) ^ v42;
  (*(a34 + 8 * (v39 ^ 0xA6)))(v40 - 152);
  v43 = 2021301169 * ((((v41 | 0x1A178DCA) ^ 0xFFFFFFFE) - (~v41 | 0xE5E87235)) ^ 0x6E1E2595);
  STACK[0xD30] = v40 - 240;
  STACK[0xD28] = v40 - 256;
  *(v40 - 136) = v43 + 469501789;
  *(v40 - 132) = (v39 - 698) ^ v43;
  (*(a34 + 8 * (v39 ^ 0xA6)))(v40 - 152);
  STACK[0xD28] = v40 - 256;
  *(v40 - 136) = v39 + 1520698633 * ((((v40 - 152) | 0x6AB55B94) - ((v40 - 152) & 0x6AB55B94)) ^ 0xC15B4311) - 535;
  STACK[0xD30] = v40 - 240;
  (*(a34 + 8 * (v39 ^ 0xB7)))(v40 - 152);
  (*(a34 + 8 * (v39 + 192)))(a10, a19, 144);
  (*(a34 + 8 * (v39 ^ 0x340)))(a9, a18, 16);
  if (a12)
  {
    v44 = a11 == 0;
  }

  else
  {
    v44 = 1;
  }

  v45 = v44;
  return (*(a34 + 8 * (((141 * (v39 ^ 0x547) - 230) * v45) ^ v39)))();
}

uint64_t sub_2585A76E8(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1 + 2021301169 * (((a1 ^ 0xEE51F958) & 0x98A24D43 | ~(a1 ^ 0xEE51F958 | 0x98A24D43)) ^ 0x2FA1C44);
  v3 = *(a1 + 8);
  v4 = (439532179 * ((&v3 & 0x743A6D6F | ~(&v3 | 0x743A6D6F)) ^ 0x5563AF12)) ^ (v1 + 677084181);
  return (*(*(&off_286999DF0 + (v1 ^ 0x542A6463)) + (v1 ^ 0x542A62E5)))(&v3);
}

void sub_2585A77F8(_DWORD *a1)
{
  v1 = a1[2] + 344723623 * ((a1 - 1940307536 - 2 * (a1 & 0x8C5941B0)) ^ 0x7BFA2C79);
  v2 = (*(*a1 + 16) >> 3) & 0x3F;
  *(*a1 + 24 + v2) = 0x80;
  __asm { BRAA            X10, X17 }
}

uint64_t sub_2585A7A3C@<X0>(unsigned __int8 a1@<W2>, unint64_t a2@<X6>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(void))
{
  v15 = *(STACK[0xAE8] + (*v12 ^ a2));
  *v12 = v15 + (~(2 * v15) | 0xC7) - 99;
  v16 = *(STACK[0xB28] + (*(a3 - 12) ^ a2));
  *(a3 - 12) = v16 + (~(2 * v16) | 0xC7) - 99;
  v17 = *(STACK[0xB68] + (v11 ^ a2));
  *(a3 - 8) = v17 - ((2 * v17) & 0x38) - 100;
  v18 = *(STACK[0xBA8] + (a1 ^ a2));
  *(a3 - 4) = v18 - ((2 * v18) & 0x38) - 100;
  v19 = *(STACK[0xBB8] + (v13 ^ a2));
  *(a3 - 3) = v19 - ((2 * v19) & 0x38) - 100;
  v20 = *(STACK[0xB78] + (*(a3 - 11) ^ a2));
  *(a3 - 7) = v20 - ((2 * v20) & 0x38) - 100;
  v21 = *(STACK[0xB38] + (*(a3 - 15) ^ a2));
  *(a3 - 11) = v21 - ((2 * v21) & 0x38) - 100;
  v22 = *(STACK[0xAF8] + (v14 ^ a2));
  *(a3 - 15) = v22 - ((2 * v22) & 0x38) - 100;
  v23 = *(a3 - 14);
  v24 = *(STACK[0xB08] + (v10 ^ a2));
  *(a3 - 14) = v24 - ((2 * v24) & 0x38) - 100;
  *(a3 - 6) = *(STACK[0xB88] + (v23 ^ a2)) - ((2 * *(STACK[0xB88] + (v23 ^ a2))) & 0x38) - 100;
  v25 = *(a3 - 10);
  v26 = *(STACK[0xB48] + (*(a3 - 2) ^ a2));
  *(a3 - 10) = v26 - ((2 * v26) & 0x38) - 100;
  *(a3 - 2) = *(STACK[0xBC8] + (v25 ^ a2)) - ((2 * *(STACK[0xBC8] + (v25 ^ a2))) & 0x38) - 100;
  LOBYTE(v25) = *(STACK[0xB18] + (*(a3 - 9) ^ a2));
  v27 = *(a3 - 13);
  *(a3 - 13) = v25 - ((2 * v25) & 0x38) - 100;
  LOBYTE(v25) = *(STACK[0xB58] + (*(a3 - 5) ^ a2));
  *(a3 - 9) = v25 - ((2 * v25) & 0x38) - 100;
  LOBYTE(v25) = *(STACK[0xB98] + (*(a3 - 1) ^ a2));
  *(a3 - 5) = v25 - ((2 * v25) & 0x38) - 100;
  *(a3 - 1) = *(STACK[0xBD8] + (v27 ^ a2)) - ((2 * *(STACK[0xBD8] + (v27 ^ a2))) & 0x38) - 100;
  return a10();
}

uint64_t sub_2585A7ED4@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  v20 = (v18 + v13 + v16);
  v21 = ((*(v16 + (v14 ^ (v18 + 677)) + v13) ^ v15) << 24) | ((v20[1] ^ v15) << 16) | ((v20[2] ^ v15) << 8);
  *(a1 + 4 * (((((v13 ^ 0x6E73A912) - 1314460609) ^ v13 ^ ((v13 ^ 0x8948EF24) + 1453173257) ^ ((v13 ^ 0x78EE831A) - 1489254857) ^ ((v13 ^ 0xBFFF7FFC) + 1613380308)) >> 2) ^ 0x80AAEB4)) = (v21 | v20[3] ^ v15) + v19 - 2 * ((v21 | v20[3] ^ v15) & 0x7EB2B15F ^ (v20[3] ^ v15) & 1);
  return (*(v17 + 8 * ((29 * ((v13 + 4 + v18) > 0x3F)) ^ a13)))();
}

uint64_t sub_2585A80C0@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 - 1;
  *(a1 + v5) = *(v3 + v5);
  return (*(v4 + 8 * (v2 | (4 * (v5 == ((v2 + 303) | 4u) - 774)))))();
}

uint64_t sub_2585A8428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, unsigned __int8 a18)
{
  if ((v18 ^ 0x51BDFE90) == 0x19)
  {
    return (*(v19 + 8 * ((530 * (a18 == (((v20 + 118) & 0xCF) - 25))) | (v20 - 192))))();
  }

  if ((v18 ^ 0x51BDFE90) == 0x28)
  {
    JUMPOUT(0x258570AF8);
  }

  return (*(v19 + 8 * (((((v20 + 450917901) & 0xE51F8BF2) == -41255) * ((v20 + 14) ^ 0xB8)) ^ (v20 + 961))))();
}

void sub_2585A8660(uint64_t a1)
{
  v1 = 439532179 * ((~a1 & 0xBF5D0BED | a1 & 0x40A2F412) ^ 0x61FB366F);
  v2 = *(a1 + 12) ^ v1;
  v3 = (*(a1 + 16) ^ v1);
  if (*a1)
  {
    v4 = v3 == 3647;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_2585A8808()
{
  v6 = ((*(v3 + 4) ^ 0x71) + (((v1 + 97) ^ 0x70) & (2 * *(v3 + 4))) - 48) ^ (-79 * (&v5 ^ 0xA0));
  v5 = 2021301169 * (&v5 ^ 0x8BF657A0) + 1466038074 + v1;
  result = (*(v2 + 8 * (v1 ^ 0x731)))(&v5);
  *(v0 + 4) = v7;
  return result;
}

uint64_t sub_2585A8A80(int a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  HIDWORD(v15) = (v8 - 1233943975) & 0x498C79EC ^ (v14 - 100) ^ a1;
  LODWORD(v15) = a1 ^ 0x68000000;
  v16 = (v15 >> 27) + (((a4 ^ 0x73A4FF8F) - 1940193167) ^ ((a4 ^ 0xE5BBBFB5) + 440680523) ^ ((a4 ^ 0xF8C878A0) + 121079648)) + (a5 ^ v13 ^ v7 ^ v9) + 1461253637 + (((*(v6 + 4 * (a6 + v11)) ^ 0xF1E79499) + 236481383) ^ ((*(v6 + 4 * (a6 + v11)) ^ 0x2B416056) - 725704790) ^ ((*(v6 + 4 * (a6 + v11)) ^ 0x24144591) - 605308305));
  return (*(v10 + 8 * ((a6 + 1 == v12 + 40) ^ v8)))(v16 ^ ((v16 ^ 0xC56350DC) + 1076465488) ^ ((v16 ^ 0xD2788B9C) + 1462916112) ^ ((v16 ^ 0x125104C2) - 1759782062) ^ ((v16 ^ 0x7FFFFFEE) - 88792962) ^ 0x146218F6);
}

uint64_t sub_2585A8C64(int a1, unsigned int a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v20 = (*(v8 + 4 * (*(v9 + a7 + v16) - 86)) ^ v15) + (a4 ^ v13) + *(v10 + 4 * (a7 + v16)) + (v7 & ((a2 ^ 0x7A9) - 810570705) ^ (a1 ^ 0xA1788950) & (v7 ^ v13) ^ 0x4E87308A | v7 & 0x3915823 ^ 0x1004021 ^ (v7 ^ 0x9128C765) & (a5 ^ 0x6D4660B9));
  v21 = (v20 ^ 0xE434C483) & (2 * (v20 & v17)) ^ v20 & v17;
  v22 = ((2 * (v20 ^ 0xCC3DEE95)) ^ 0x7276F77C) & (v20 ^ 0xCC3DEE95) ^ (2 * (v20 ^ 0xCC3DEE95)) & 0x393B7BBE;
  v23 = v22 ^ 0x9090882;
  v24 = (v22 ^ 0x3133713C) & (4 * v21) ^ v21;
  v25 = ((4 * v23) ^ 0xE4EDEEF8) & v23 ^ (4 * v23) & 0x393B7BBC;
  v26 = (v25 ^ 0x20296AB0) & (16 * v24) ^ v24;
  v27 = ((16 * (v25 ^ 0x19121106)) ^ 0x93B7BBE0) & (v25 ^ 0x19121106) ^ (16 * (v25 ^ 0x19121106)) & 0x393B7BB0;
  v28 = v26 ^ 0x393B7BBE ^ (v27 ^ 0x11333B00) & (v26 << 8);
  v29 = (v28 << 16) & 0x393B0000 ^ v28 ^ ((v28 << 16) ^ 0x7BBE0000) & ((((v27 ^ 0x2808401E) << 8) ^ 0x3B7B0000) & (v27 ^ 0x2808401E) ^ ((v27 ^ 0x2808401E) << 8) & 0x393B0000);
  v30 = *(v11 + a7 + v16);
  LOBYTE(v27) = (v30 + 0x80) ^ (((v30 + 0x80) ^ 0x64) + 10) ^ (((v30 + 0x80) ^ 0xA7) - 53) ^ (((v30 + 0x80) ^ 0xAE) - 60) ^ (-(v30 + 0x80) - 110);
  v31 = (((a1 ^ 0xAC0F618D) + 1408278131) ^ ((a1 ^ 0x14D200B7) - 349307063) ^ ((a1 ^ 0xD60A59A0) + 703964768)) - 1828711795 + (((v20 ^ (2 * v29) ^ 0xF5046257) << ((v27 ^ 0xF7) & 0x1B ^ 1) << (v27 & 4)) | ((v20 ^ (2 * v29) ^ 0xF5046257) >> (v14 - v30)));
  v32 = (v31 ^ 0xDB8625A8) & (2 * (v31 & 0xDBD7260D)) ^ v31 & 0xDBD7260D;
  v33 = ((2 * (v31 ^ 0xEBAE25B8)) ^ 0x60F2076A) & (v31 ^ 0xEBAE25B8) ^ (2 * (v31 ^ 0xEBAE25B8)) & 0x307903B4;
  v34 = v33 ^ 0x10090095;
  v35 = (v33 ^ 0x20700020) & (4 * v32) ^ v32;
  v36 = ((4 * v34) ^ 0xC1E40ED4) & v34 ^ (4 * v34) & 0x307903B4;
  v37 = (v36 ^ 0x600290) & (16 * v35) ^ v35;
  v38 = ((16 * (v36 ^ 0x30190121)) ^ 0x7903B50) & (v36 ^ 0x30190121) ^ (16 * (v36 ^ 0x30190121)) & 0x307903B0;
  v39 = v37 ^ 0x307903B5 ^ (v38 ^ 0x100300) & (v37 << 8);
  return (*(v12 + 8 * ((1961 * (a7 + 1 == v18 + 32)) ^ a2)))(v31 ^ (2 * ((v39 << 16) & 0x30790000 ^ v39 ^ ((v39 << 16) ^ 0x3B50000) & (((v38 ^ 0x306900A5) << 8) & 0x30790000 ^ (((v38 ^ 0x306900A5) << 8) ^ 0x79030000) & (v38 ^ 0x306900A5) ^ 0x780000))) ^ 0xD59019FD);
}

void sub_2585A90EC(_DWORD *a1)
{
  v1 = *a1 + 344723623 * ((-2 - ((~a1 | 0x26DB58F5) + (a1 | 0xD924A70A))) ^ 0xD178353C);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_2585A91C8()
{
  v6 = 1021229753 * (((&v8 ^ 0x6CD5E957) & 0x78239B95 | ~(&v8 ^ 0x6CD5E957 | 0x78239B95)) ^ 0x55E436D7);
  v10 = *((v4 ^ 0x5986922EB5DEE499) - 0x5986922EB5DEE481);
  v11 = v2;
  v8 = v0;
  v13 = v1;
  v12 = v6 ^ 0x29E;
  v9 = (v3 ^ 0x7DE5F7CD) - v6 + ((2 * v3) & 0xFBCBEF9A) - 1082237636;
  (*(v5 + 12512))(&v8);
  return (v14 - 95751194);
}

uint64_t sub_2585A9488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v16 = 344723623 * ((&a9 & 0xE72B36B2 | ~(&a9 | 0xE72B36B2)) ^ 0xEF77A484);
  a9 = v13 - v16 + 538;
  a12 = v16 ^ 0x4AB33B0E;
  a11 = v14;
  v17 = (*(v12 + 8 * (v13 ^ 0x768)))(&a9);
  return (*(v12 + 8 * ((a10 == ((v13 - 614922761) ^ 0xDB590511) + v15 + ((v13 - 614922761) & 0x24A6FAF2)) ^ v13)))(v17);
}

void sub_2585A953C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  STACK[0xD28] = a17;
  *(v35 - 144) = (v34 + 2089148085) ^ (439532179 * ((((2 * (v35 - 152)) | 0x48748CFA) - (v35 - 152) + 1539684739) ^ 0x7A9C7BFF));
  (*(a1 + 8 * (v34 ^ 0x445u)))(v35 - 152);
  v36 = 2021301169 * ((v35 - 152) ^ 0x8BF657A0);
  STACK[0xD28] = *(&off_286999DF0 + v34 - 573) - 8;
  STACK[0xD30] = a17;
  *(v35 - 136) = v36 + 469501837;
  *(v35 - 132) = (v34 + 72) ^ v36;
  (*(a34 + 8 * (v34 ^ 0x7A0u)))(v35 - 152);
  v37 = 2021301169 * ((2108405471 - ((v35 - 152) | 0x7DABB6DF) + ((v35 - 152) | 0x82544920)) ^ 0x9A21E80);
  *(v35 - 136) = v37 + 469501793;
  *(v35 - 132) = (v34 + 72) ^ v37;
  STACK[0xD28] = a12;
  STACK[0xD30] = a17;
  (*(a34 + 8 * (v34 + 928)))(v35 - 152);
  JUMPOUT(0x2585A96C4);
}

uint64_t sub_2585A9740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v19 = **(v16 + 8 * (v15 - 1180));
  *(v18 - 112) = (v15 - 1403262561) ^ (1511064119 * a15);
  v20 = v18 - 152;
  *(v20 + 8) = -1511064119 * a15;
  *(v18 - 152) = v15 + 414019439 - 1511064119 * a15;
  *(v18 - 128) = ((v15 + 414019439) ^ 0x7F) - 1511064119 * a15;
  *(v18 - 136) = -1511064119 * a15;
  *(v18 - 132) = ((v15 + 414019439) ^ 0xFD) + 1511064119 * a15;
  *(v20 + 32) = v19 ^ (1511064119 * a15);
  v21 = (*(v17 + 8 * (v15 + 209)))(v18 - 152);
  return (*(v17 + 8 * *(v18 - 108)))(v21);
}

void sub_2585A9910(_DWORD *a1)
{
  v1 = *a1 - 827685407 * (a1 ^ 0x1B828250);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_2585A99E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v31 = *(v27 + 4 * (v29 - 1));
  *(v27 + 4 * v29) = ((1566083941 * (v31 ^ (v31 >> 30))) ^ *(v27 + 4 * v29)) - v29;
  v32 = v30 - 152;
  *(v32 + 24) = a25;
  *(v32 + 8) = v29 + 1 - a26;
  *(v30 - 112) = 1166607471 - a26 + v26;
  *(v30 - 136) = a26 + v26 - 435632322 + 106;
  *(v30 - 132) = a26 | 1;
  *(v30 - 120) = v26 - 435632322 - a26;
  *(v30 - 152) = (v26 - 435632311) ^ a26;
  v33 = (*(v28 + 8 * (v26 + 537)))(v30 - 152);
  return (*(v28 + 8 * *(v30 - 116)))(v33);
}

uint64_t sub_2585A9E0C()
{
  v6 = v1 & (v3 + 732);
  v7 = (v2 + v5 + 41);
  *(v7 - 1) = 0u;
  *v7 = 0u;
  return (*(v4 + 8 * ((((v0 & 0xFFFFFFE0) == 32) * (((v6 - 1317) | 0x1B3) ^ 0x1B4)) | (v6 - 989))))();
}

uint64_t sub_2585A9E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unsigned int a24, uint64_t a25, unsigned int a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, uint64_t a31, uint64_t a32)
{
  v37 = a1 ^ 0x368F8DA2BE6B57BALL ^ v35;
  v38 = v33 ^ a25;
  v39 = v34 ^ 0xBFCD58D7B008A644 ^ a1 ^ 0x368F8DA2BE6B57BALL;
  v40 = v33 ^ a25 ^ a5 ^ 0x2E846BC3BDE92E51 ^ (394 * (v36 ^ 0x36Au));
  v41 = ((((v36 - 868) | v32) - 0x52C80552545264ACLL) ^ v37) & (v33 ^ a25 ^ 0xBDD4A398154FFD20);
  v42 = (v33 ^ a25) & 0x21CA7B4F97C5C5AALL;
  v43 = v40 - ((2 * v40) & 0xC534C3C5FD259BC8) + 0x629A61E2FE92CDE4;
  v44 = (v39 ^ 0x9848E3775072F201) & (v37 ^ 0x9A5A30E6570D6DDALL);
  v45 = v39 & 0xE9584EFB949ACBEELL;
  v46 = v37 ^ 0x2BBC7281E8D07081 ^ (((v43 & 0x7FF2118FF6B1B70FLL | (v38 ^ 0xC226B217E3FE4A2FLL) & ~v43) ^ 0x800DEE70094E48F0) - (__ROR8__(__ROR8__(v43 ^ v38, 48) ^ 0xE73CDB9B2D662ADELL, 16) ^ 0x68F5BB5B312B2FB9));
  v47 = v42 ^ v39 ^ v41;
  v48 = v40 & 4;
  v49 = (v34 ^ 0x37A0A4D0C438D4BDLL) & (a1 ^ 0x77EB903AAFD76C0ELL) ^ a1 & 0x514102E835FEBB4CLL ^ v43;
  v50 = v46 ^ v47 ^ 0xB2EAD833098CDECCLL;
  v51 = v45 ^ v34 ^ 0xBFCD58D7B008A644 ^ v44 ^ v49;
  v52 = (v43 & 0x9C81C17F774308C7 | (v34 ^ 0x59F98B8797A98C9) & ~v43) ^ v38 ^ v46;
  v53 = v52 ^ 0xF3559607C143EFE7;
  v54 = v49 ^ 0x273A955E677BE79BLL;
  v55 = v50 ^ 0x6F1AB44495B6C1E6;
  v56 = ((v50 ^ 0xA31B54D8ABC39151) >> v48) + 0x57DB3E4C49EDCE1CLL - ((2 * ((v50 ^ 0xA31B54D8ABC39151) >> v48)) & 0xAFB67C9893DB9C38);
  v57 = (v52 & 0x800000000) == 0;
  v58 = 0x800000000;
  if (!v57)
  {
    v58 = 0xFFFFFFF800000000;
  }

  v59 = v58 + v53;
  v60 = (v56 ^ 0x57DB3E4C49EDCE1CLL) >> (v48 ^ 4u) >> 24;
  v61 = __ROR8__(v55, 19);
  v62 = ((((v55 ^ v61) << 57) ^ 0x7D554559C3D3433FLL) & ((v55 << 29) & 0x1FFFFFFE0000000 ^ 0xFE337D691BFB6B7FLL) | (v55 << 29) & 0xAABAA620000000) ^ ((v55 ^ v61) >> 7) ^ 0x32230F6B52159A00;
  v63 = (v54 << 63) | 0x309CA81C4E0B92FFLL;
  *(&v65 + 1) = v59 ^ 0x9121B88AB8CC1671;
  *&v65 = v53;
  v64 = v65 >> 61;
  *(&v65 + 1) = (v49 >> 1) ^ (v49 >> 6) ^ v49 ^ 0xA895E5B2672879E8;
  *&v65 = *(&v65 + 1) ^ (v54 << 58);
  v66 = (v65 >> 36) ^ 0x42F979998F37AFE3;
  *(&v65 + 1) = v59 ^ 0x9121B88AB8CC1671;
  *&v65 = v59;
  v67 = v64 ^ v53 ^ (v65 >> 39);
  v68 = v63 ^ __ROR8__(v66, 28) ^ v67 ^ 0x6AE3F11ED05B16F5;
  v69 = (-(v47 ^ 0x4F660012107A7FF6) ^ 0xA6C2AE173D2DFCFELL ^ (0xBE281865FAFD77DALL - (v47 ^ 0xF14E1877EA87082CLL)) ^ ((v47 ^ 0x4F660012107A7FF6) - 0x593D51E8C2D20302 - 2 * ((v47 ^ 0x4F660012107A7FF6) & 0x26C2AE173D2DFCFFLL ^ (v47 ^ 0xCC) & 1))) - 0x41D7E79A05028826;
  v70 = (v51 >> 17) ^ (v51 >> 10) ^ v51 ^ 0x3911293F23F5661BLL ^ ((v51 ^ 0x3911293F23F5661BLL) << 47) ^ ((v51 ^ 0x3911293F23F5661BLL) << 54);
  v71 = v69 ^ (v69 >> 7) ^ (v69 << 23) ^ (v69 >> 41) ^ ((v69 << 57) + 0x7EA626604A5D3711 - (v69 << 58));
  v72 = v60 ^ v71 ^ __ROR8__(v62, 57);
  v73 = v72 ^ 0x1494290E8A052103;
  v74 = v71 & 0xDDADDFB2707FDD5FLL;
  v57 = v43 == -1;
  v75 = 0xC6786462A76F70E4;
  if (!v57)
  {
    v75 = v70 ^ 0xC285A59754529A8FLL;
  }

  v76 = (v68 ^ 0x83547BA892D6A180) & (v70 ^ 0x6A5D935E08B8AE6FLL);
  v77 = v74 ^ 0x8C40ABA298FE522ELL;
  v78 = v74 ^ 0x214F7DD3F6ED9B4BLL;
  if (v71 == 0x7EA626604A5D3711)
  {
    v77 = 0x2F1B527D275CB8C0;
  }

  v79 = v68 ^ 0x7CAB84576D295E7FLL;
  v80 = v68 & 0x915FAD54047ABBFBLL;
  v81 = v75 & 0x35F0DFE7AFCD887ELL ^ v70 & 0x1D254E92706FDD5FLL ^ (v75 ^ 0x24A2D50F28FF5244) & (v70 ^ 0xCEF2E1EDA30F9DEALL) ^ v71 & 0xE2DAB16D8F9022A0 ^ v77 & 0x7DEB7BF3B6B08E5ALL ^ (v77 ^ 0x306E3CE25433451FLL) & v78;
  v82 = 0x4A566EE8D41598CLL * ((v68 ^ 0x7CAB84576D295E7FuLL) / 0x4A566EE8D41598CLL);
  v83 = v73 ^ v68 & 0x2BD3EE439E7306CCLL ^ (v68 ^ 0x7CAB84576D295E7FLL) & (v67 ^ 0x58504D8545EC4ABBLL);
  v84 = v80 ^ v67 ^ 0x6AE3F11ED05B16F5 ^ v76 ^ v83;
  v85 = v73 & 0x2E4C57BCE996A95CLL ^ (v72 ^ 0x193EDADB54A88030) & (v67 ^ 0xA2300B85CDF61AD4) ^ v81 ^ 0xB8BDFE0BA5ACF89BLL;
  v86 = v84 ^ 0x20FC6FAF679D74B5;
  v87 = (v83 ^ 0x943A25C9552C267FLL) & (v81 ^ 0x6F48C38736AF334ALL) ^ (v81 ^ 0xB8BDFE0BA5ACF89BLL) & 0x4EECADA0785F7EFFLL ^ v85 & 0xE8C0568C850F2AD6 ^ (v85 ^ 0x240291E7A478953ELL) & (v83 ^ 0xCDE9211A57838DA9);
  v88 = v79 ^ v70 & 0xB1B54CA18DD29302 ^ (v81 ^ 0xDEFD8F26BB7DA048) & (v70 ^ 0x4FDC1F5F33DEA6BLL);
  v89 = (v81 ^ 0xB8BDFE0BA5ACF89BLL) & 0xB68158612ACC7D53 ^ v70 ^ v88 ^ (v81 ^ 0x90B73C78C950CCB5) & (v72 ^ 0x50407D45819B029CLL);
  v90 = *(a28 + ((8 * (v84 >> 61)) ^ 0x7A));
  v91 = (v88 ^ 0x6A1E2010FE23BA65) << 58;
  v92 = ((v87 >> 28) ^ (v87 >> 19) | (v87 << 45)) ^ (v87 << 36) ^ 0x3BBA0B1FAFDD3DACLL;
  v93 = v87 ^ 0x5CF7871696A213A0 ^ (v92 - ((2 * v92) & 0x8A585433F8E786F6) - 0x3AD3D5E6038C3C85);
  v94 = (v90 >> 2) ^ (v90 >> 3) ^ 1;
  v95 = (v85 ^ 0xDBFD6E185B876AC1) - ((2 * (v85 ^ 0xDBFD6E185B876AC1)) & 0x347079F10300EA8ALL) - 0x65C7C3077E7F8ABBLL;
  *(&v96 + 1) = v88;
  *&v96 = v88 ^ 0x6FF0373E284F4238;
  v97 = ((v96 >> 1) - ((2 * (v96 >> 1)) & 0xBDC2E5DACD9F0BALL) + 0x5EE172ED66CF85DLL) ^ v88 ^ 0x6A1E2010FE23BA65;
  v98 = (((v84 >> 39) ^ 0x1D4B59A) - ((2 * ((v84 >> 39) ^ 0x1D4B59A)) & 0x37E7340) - 0x6D8810F67A40C660) ^ (8 * (v84 ^ 0x20FC6FAF679D74B5));
  LOBYTE(v90) = 103 * (v90 ^ 0x53 ^ (v94 - 2 * (v94 & 1) + 65));
  v99 = (v95 & 0x7F) << 16;
  v100 = (v90 | (v86 << 25)) ^ ((v98 ^ 0xC742FAB34B2B0950) + 0x760BA539B0280A59 - 2 * ((v98 ^ 0xC742FAB34B2B0950) & 0x760BA539B0280A7DLL ^ v98 & 0x24)) ^ 0x18B800358C280A59;
  v101 = (v100 - ((2 * v100) & 0x954D456EB3A50C3CLL) - 0x35595D48A62D79E2) ^ v86;
  v102 = (v88 >> 6) ^ 0x1BFC0DCF8A13D08;
  *(&v96 + 1) = v89 ^ 0x322;
  *&v96 = v89 ^ 0xD9389B5178567000;
  v103 = v96 >> 10;
  v104 = __ROR8__(v95 ^ (v95 >> 7) ^ __ROR8__(v95, 41), 41);
  *&v96 = __ROR8__(v89, 17);
  v105 = ((v103 ^ v96 ^ 0x39916C9C4DA8BC2BLL) - ((2 * (v103 ^ v96 ^ 0x39916C9C4DA8BC2BLL)) & 0xE7ED08D86781859CLL) - 0xC097B93CC3F3D32) ^ v89;
  v106 = v102 & 0x40D8889AD62CA3;
  v107 = __ROR8__(((v99 ^ -v99 ^ (v104 - (v104 ^ v99))) + v104) ^ 0xB20407B2E145EAF8, 23) ^ 0x8BD5F164080F65C2;
  v108 = v101 ^ (v97 & 0x4FF851C6EFADFEB2 ^ v91 & 0x4C00000000000000 | v97 & 0xB007AE391052014DLL ^ v91 & 0xB000000000000000);
  v109 = v108 & 0xF440D8889AD62CA3;
  v110 = v102 & 0x3BF27776529D35CLL;
  v111 = v107 ^ v105 ^ 0x2ACE1F3D4B96B1ECLL;
  v112 = v108 & 0xBBF27776529D35CLL;
  v113 = v109 ^ v106;
  v57 = v82 == 0;
  v114 = 0x800000000000000;
  if (!v57)
  {
    v114 = v111 ^ 0xC5F92B3D5EA097F6;
  }

  v115 = v111 & v114;
  v116 = (v93 ^ -v93 ^ (v107 - (v107 ^ v93))) + v107;
  v117 = v113 | v112 ^ v110;
  v118 = v117 ^ 0x7400000000000000 ^ v107 & (v105 ^ 0xD531E0C2B4694E13);
  v119 = (__ROR8__(__ROR8__(v116, 13) ^ 0xAB8805E6599F008ALL, 51) ^ 0xFF4334CC1FEEAA8ELL) & v101;
  if ((v115 & 0x40A091F2) != 0)
  {
    v120 = -(v115 & 0xCDF92B3D5EA097F6);
  }

  else
  {
    v120 = v115 & 0xCDF92B3D5EA097F6;
  }

  v121 = (v117 ^ 0x7400000000000000) & (~(2 * v101) + v101) ^ v116;
  v122 = (v120 + 3768955387u) ^ v111 & 0xF7FFFFFFFFFFFFFFLL;
  v123 = v116 & ~v111;
  v124 = v122 ^ v119;
  v125 = v121 ^ v124 ^ 0x6E04C159F50E37F1;
  v126 = v118 ^ 0x7955EAEC4D48B80CLL;
  v127 = (v118 ^ 0x7955EAEC4D48B80CLL) >> 1;
  v128 = v101 ^ 0x3278F838FE43D2BCLL ^ (v117 ^ 0x8BFFFFFFFFFFFFFFLL) & (v105 ^ 0x2ACE1F3D4B96B1ECLL) ^ v121;
  v129 = v118 ^ 0x7955EAEC4D48B80CLL ^ (v118 << 63) ^ ((v118 ^ 0x7955EAEC4D48B80CLL) << 58);
  v130 = v105 ^ v123 ^ 0x59BEB3551BA67ADALL ^ v118;
  v131 = v128 ^ (8 * v128) ^ ((v128 >> 39) ^ (v128 >> 61) | (v128 << 25));
  v132 = ((v127 ^ -v127 ^ (v129 - (v129 ^ v127))) + v129) ^ (v126 >> 6);
  v133 = v132 ^ v131;
  v134 = v124 ^ 0x26974B18B0BB9AEFLL ^ ((v124 ^ 0x26974B18B0BB9AEFLL) >> 7) ^ ((v124 ^ 0x26974B18B0BB9AEFLL) << 23) ^ (((v124 ^ 0x26974B18B0BB9AEFLL) >> 41) | ((v124 ^ 0x26974B18B0BB9AEFLL) << 57));
  v135 = __ROR8__(v130, 17) ^ (v130 << 54) ^ ((v130 ^ -v130 ^ ((v130 >> 10) - ((v130 >> 10) ^ v130))) + (v130 >> 10));
  v136 = v125 ^ __ROR8__(v125, 19) ^ (v125 >> 28) ^ (v125 << 36) ^ v134;
  v137 = v132 & ~v131 ^ v136;
  v138 = v135 ^ v134;
  v139 = v131 & ~v136 ^ v135 ^ v134;
  v140 = v137 - 0x6809581A09170A76 - ((2 * v137) & 0x2FED4FCBEDD1EB14);
  v141 = v133 ^ v134 & ~v135;
  v142 = ((v135 & ~v133 ^ v131) + 0x425764BB5877DA25 - ((2 * (v135 & ~v133 ^ v131)) & 0x84AEC976B0EFB44ALL)) ^ v137;
  v143 = v142 << 25;
  v144 = v140 + v139 - 2 * (v140 & v139);
  v145 = v141 ^ 0xD3DA1E3360BF843ALL;
  v146 = v144 >> 28;
  v147 = v142 ^ __ROR8__(v142, 61);
  v148 = v147 & 0x80000000000000;
  if (v81 == 0x6F48C38736AF334ALL)
  {
    v149 = -1;
  }

  else
  {
    v149 = v142 << 25;
  }

  v150 = v148 & v149;
  v151 = ((v141 ^ 0xD3DA1E3360BF843ALL) << ((v144 >> 28) & 0x3A) << ((v144 >> 28) & 0x3A ^ 0x3A)) ^ (v141 << 63);
  if (v151 == v145)
  {
    v152 = v142 << 25;
  }

  else
  {
    v152 = ~(v143 ^ v150);
  }

  v57 = (v152 & v150) == 0;
  v153 = v136 & ~v138;
  v154 = v139 ^ 0x70C7A8D3F3643DFDLL;
  v155 = v135 ^ 0x44C9D571A5C4A51CLL ^ v153 ^ v141;
  v156 = v144 << ((v139 ^ 0xFD) & 0x2D) << ((v139 ^ 0xFD) & 0x2D ^ 0x2D);
  v157 = v147 & 0xFF7FFFFFFFFFFFFFLL ^ (v142 >> 39);
  if (v57)
  {
    v158 = v147 & 0x80000000000000;
  }

  else
  {
    v158 = -v148;
  }

  *(&v159 + 1) = v139 ^ 0x70C7A8D3F3643DFDLL;
  *&v159 = v139;
  v160 = v157 ^ (v158 + v143);
  v161 = v139 ^ 0x702627825482F586 ^ (v159 >> 7);
  v162 = (v145 ^ (v145 >> 6) ^ v151 ^ -(v145 ^ (v145 >> 6) ^ v151) ^ ((v145 >> 1) - (v145 ^ (v145 >> 6) ^ v151 ^ (v145 >> 1)))) + (v145 >> 1);
  v163 = v161 & (v154 >> 41);
  v164 = v161 + (v154 >> 41);
  v165 = v160 ^ v162;
  v166 = v155 ^ (v155 << 54) ^ (v155 << 47) ^ (v155 >> 10) ^ (v155 >> 17);
  v167 = (v164 - 2 * v163) ^ (v154 << 23);
  v168 = v144 ^ (v144 >> 19) ^ __ROR8__(v144, 28) ^ v156 ^ v167;
  v169 = v166 & ~(v160 ^ v162) ^ v160;
  v170 = (v160 ^ v162) & 0x200000000000;
  v171 = v162 & ~v160 ^ v168;
  v172 = v160 ^ v168;
  v173 = v167 & ~v166;
  v174 = v160 | ~v168;
  v175 = (v171 ^ -v171 ^ (v169 - (v169 ^ v171))) + v169;
  v176 = v165 & 0xFFFFDFFFFFFFFFFFLL;
  v177 = (__ROR8__(__ROR8__(v166 ^ v167, 34) ^ 0x5EE766B9E4D57D55, 30) ^ 0x6CAA0AAA84626518) & v168;
  v178 = (v172 + v174 + 1) ^ v166 ^ v167;
  v179 = v171 ^ 0x93C23431B76D41FLL ^ v178;
  if ((v170 & v173) != 0)
  {
    v180 = -v170;
  }

  else
  {
    v180 = v170;
  }

  v181 = (v180 + v173) ^ v176;
  v182 = v175 ^ 0x6005BE354A5BB0B2;
  v183 = v166 ^ 0xF374A001D380BDC2 ^ v177 ^ v181;
  v184 = v178 ^ 0x2DB5B6AF87F64351;
  v185 = (v178 ^ 0xC17148A33DCA01ECLL ^ (v178 ^ 0x2DB5B6AF87F64351 | 0xECC4FE0CBA3C42BDLL)) + ((v178 ^ 0x2DB5B6AF87F64351) & 0x133B01F345C3BD42);
  v186 = (8 * v182) & 0x23383D7B20BE8E98 ^ (v182 << 25) & 0x23383D7B20000000 | (8 * v182) & 0xDCC7C284DF417160 ^ (v182 << 25) & 0xDCC7C284DE000000;
  v187 = v181 ^ 0x6DC4FB0BD4FFFF44 ^ (v181 << 63) ^ __ROR8__(v181 ^ 0x6DC4FB0BD4FFFF44, 6) ^ ((v181 ^ 0x6DC4FB0BD4FFFF44) >> 1);
  v188 = v182 ^ (v182 >> 61) ^ (v182 >> 39);
  v189 = (v185 << 23) & 0xFDFFFFFFFFFFFFFFLL;
  v190 = (v185 << 23) & 0x200000000000000;
  v191 = v188 ^ v186;
  v192 = ((v185 >> 41) ^ (v184 >> 7) | (v185 << 57)) ^ v184;
  v193 = v183 ^ (v183 >> 10) ^ (v183 << 47) ^ ((v183 >> 17) | (v183 << 54));
  if ((v192 & v190) != 0)
  {
    v194 = -v190;
  }

  else
  {
    v194 = v190;
  }

  v195 = v193 & ~(v191 ^ v187) ^ v191 ^ v179 ^ (v179 << 45) ^ __ROR8__(v179, 28) ^ (v179 >> 19) ^ (v194 + v192) ^ v189 ^ v187 & ~v191;
  v196 = (((v195 ^ 0x62030E578F798D5ALL) >> 61) + (((v195 ^ 0x62030E578F798D5ALL) >> 61) ^ 0xFFFFFFCB) - 56) ^ *(a27 + (((v195 ^ 0x62030E578F798D5ALL) >> 61) ^ 1));
  v197 = v195 ^ (8 * (v195 ^ 0x62030E578F798D5ALL)) ^ ((v195 ^ 0x62030E578F798D5ALL) << 25) ^ ((v195 ^ 0x62030E578F798D5ALL) >> (v146 & 0x27) >> (v146 & 0x27 ^ 0x27)) ^ (((v196 & 0xFFFFFFFA ^ 0xF8) << ((v191 & 1) == 0) << (v191 & 1)) + (v196 ^ 3));
  v198 = a24 > a30 + 1531045263;
  if (a26 > 0xA4BE1A71 != (a30 + 1531045263) < 0x5B41E58E)
  {
    v198 = a26 > 0xA4BE1A71;
  }

  return (*(a32 + 8 * (v36 ^ (225 * v198))))(v197);
}

uint64_t sub_2585AB250(uint64_t result)
{
  v1 = *(result + 4) ^ (-79 * ((result - 36 - 2 * (result & 0xDC)) ^ 0x7C));
  if (v1 == 69 || v1 == 66)
  {
    v3 = 95751194;
  }

  else
  {
    v3 = 95708297;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_2585AB2AC(int a1, char a2, int a3, int a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a7 + 4 * (v8 >> (((v9 + 29) | a2) - 44)) + 72);
  v13 = (a4 & (2 * v8)) + (v8 ^ a3) + a1;
  *(a8 + v13) = (a5 ^ HIBYTE(v12)) - ((2 * (a5 ^ HIBYTE(v12))) & 0x38) - 100;
  *(a8 + v13 + 1) = (a6 ^ BYTE2(v12)) - ((2 * (a6 ^ BYTE2(v12))) & 0x38) - 100;
  *(a8 + v13 + 2) = (BYTE1(v12) ^ 0x38) - 2 * ((BYTE1(v12) ^ 0x38) & 0x1F ^ BYTE1(v12) & 3) - 100;
  *(a8 + v13 + 3) = v12 ^ 6;
  return (*(v11 + 8 * (((8 * (v8 + 4 < v10)) | (16 * (v8 + 4 < v10))) ^ v9)))();
}

void sub_2585AB4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  *v30 = (((a14 - v29) | (v29 - a14)) >> ((v29 + 35) ^ 0x3C)) | 0x80000000;
  (*(v31 + 8 * (v29 ^ 0x5FDu)))(a29);
  JUMPOUT(0x2585AB544);
}

uint64_t sub_2585AB604@<X0>(int a1@<W0>, int a2@<W8>)
{
  HIDWORD(v14) = a1 ^ (v13 + ((v12 - 1279) | 0x464) - 1126);
  LODWORD(v14) = a1 ^ 0x68000000;
  v15 = (v5 ^ a2) & (v3 ^ 0x5C3EF4B7) ^ v5 & 0x32E9CC2D;
  v16 = (v14 >> 27) + (((v7 ^ 0x9D6ABBE9) + 1653949463) ^ ((v7 ^ 0x722E0736) - 1915619126) ^ ((v7 ^ 0x81938445) + 2121038779)) + (v15 & 0x6A52646D ^ 0x95ADDFB7 ^ (v15 ^ 0xEFD73BDA) & (v4 & 0x2156193B ^ 0xB5FB8388 ^ (v5 ^ 0x4F8121A1) & (v4 ^ v11))) + 813863344 + (((*(v2 + 4 * (v6 + v9)) ^ 0x613F9929) - 1631557929) ^ ((*(v2 + 4 * (v6 + v9)) ^ 0x137FDBF6) - 327146486) ^ ((*(v2 + 4 * (v6 + v9)) ^ 0x8CF2F381) + 1930235007));
  return (*(v8 + 8 * ((8 * (v6 + 1 == v10 + 20)) | (16 * (v6 + 1 == v10 + 20)) | v12)))(v16 ^ ((v16 ^ 0xBB9AB087) + 739467624) ^ ((v16 ^ 0xE18822CF) + 1979839280) ^ ((v16 ^ 0x4D9A4328) - 636251447) ^ ((v16 ^ 0x7FFEFF7F) - 394842464) ^ 0x6A11685);
}

uint64_t sub_2585AB864(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15.val[0].i64[0] = (v11 - v12 - 1) & 0xF;
  v15.val[0].i64[1] = (v11 - v12 + 14) & 0xF;
  v15.val[1].i64[0] = (v11 - v12 + 13) & 0xF;
  v15.val[1].i64[1] = (v11 - v12 + 12) & 0xF;
  v15.val[2].i64[0] = (v11 + a4 - 44 - 56 - v12) & 0xF;
  v15.val[2].i64[1] = (v11 - v12 + 10) & 0xF;
  v15.val[3].i64[0] = (v11 - v12 + 9) & 0xF;
  v15.val[3].i64[1] = (v11 - v12) & 0xF ^ 8;
  *(v11 + a8 - 8 - v12) = veor_s8(veor_s8(veor_s8(*(v9 + v15.val[0].i64[0] - 7), *(v11 + a8 - 8 - v12)), veor_s8(*(v8 + v15.val[0].i64[0] - 7), *(v10 + v15.val[0].i64[0] - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v15, xmmword_2585D2450), 0xB7B7B7B7B7B7B7B7)));
  return (*(v13 + 8 * ((75 * (8 - (v11 & 0x18) == -v12)) ^ (a4 - 998))))(xmmword_2585D2450);
}

uint64_t sub_2585ABA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t (*a19)(uint64_t))
{
  v22 = 1511064119 * ((((v21 - 144) | 0xEF968B26) - ((v21 - 144) & 0xEF968B26)) ^ 0x67E9D46C);
  *(v21 - 136) = a2;
  *(v21 - 144) = v19 - v22 - 556;
  *(v21 - 140) = (a6 ^ 0xC5EEF7DF) - v22 + 2 * a6 + 2143252076;
  v23 = (*(v20 + 8 * (v19 ^ 0x234)))(v21 - 144);
  return a19(v23);
}

uint64_t sub_2585ABAB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4 - 152;
  *(v4 - 144) = (v3 + 2089147250) ^ (439532179 * ((((v4 - 152) ^ 0x9FFFA855 | 0x1BE3A8CC) - ((v4 - 152) ^ 0x9FFFA855) + (((v4 - 152) ^ 0x9FFFA855) & 0xE41C5731)) ^ 0x5ABA3D1B));
  (*(a3 + 8 * (v3 ^ 0x382)))(v4 - 152);
  v7 = 2021301169 * (((v5 | 0x853B069B) - v5 + (v5 & 0x7AC4F960)) ^ 0xECD513B);
  *(v4 - 136) = v7 + 469501789;
  *(v4 - 132) = (v3 - 763) ^ v7;
  (*(a3 + 8 * (v3 ^ 0x67)))(v4 - 152);
  v8 = 2021301169 * ((2 * (v5 & 0x5147D638) - v5 + 783821255) ^ 0xA54E7E67);
  *(v4 - 136) = v8 + 469501789;
  *(v4 - 132) = (v3 - 763) ^ v8;
  (*(a3 + 8 * (v3 + 93)))(v4 - 152);
  *(v4 - 136) = v3 + 1520698633 * ((v4 - 2119061423 - 2 * ((v4 - 152) & 0x81B1B0E9)) ^ 0x2A5FA86C) - 600;
  return (*(a3 + 8 * (v3 ^ 0x76)))(v4 - 152);
}

void sub_2585ABCA8()
{
  v3 = (((*(v2 + 88) ^ 0x75AEC2BC) - 1974387388) ^ ((*(v2 + 88) ^ 0xFD057B31) + 49972431) ^ ((*(v2 + 88) ^ 0xE67C8117) + 428048105)) + (((v0 ^ 0x7CCE0C8B) - 2093878411) ^ ((v0 ^ 0x7B5569E9) - 2069195241) ^ ((v0 ^ 0x694C5DB9 ^ (v1 - 317)) - 1766612472)) - 32108020;
  v4 = (v3 ^ 0x9F5F1FA1) & (2 * (v3 & 0xDF985F28)) ^ v3 & 0xDF985F28;
  v5 = ((2 * (v3 ^ 0xB25F05B1)) ^ 0xDB8EB532) & (v3 ^ 0xB25F05B1) ^ (2 * (v3 ^ 0xB25F05B1)) & 0x6DC75A98;
  v6 = v5 ^ 0x24414A89;
  v7 = (v5 ^ 0x48821000) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0xB71D6A64) & v6 ^ (4 * v6) & 0x6DC75A98;
  v9 = (v8 ^ 0x25054A00) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x48C21099)) ^ 0xDC75A990) & (v8 ^ 0x48C21099) ^ (16 * (v8 ^ 0x48C21099)) & 0x6DC75A90;
  v11 = v9 ^ 0x6DC75A99 ^ (v10 ^ 0x4C450800) & (v9 << 8);
  *(v2 + 88) = v3 ^ (2 * ((v11 << 16) & 0x6DC70000 ^ v11 ^ ((v11 << 16) ^ 0x5A990000) & (((v10 ^ 0x21825209) << 8) & 0x6DC70000 ^ 0x28850000 ^ (((v10 ^ 0x21825209) << 8) ^ 0x475A0000) & (v10 ^ 0x21825209)))) ^ 0xFBC3D280;
  JUMPOUT(0x2585ABEB8);
}

uint64_t sub_2585AC81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, unsigned __int16 a34)
{
  v38 = (a34 ^ 0x3FFF) - 0x3FFF + ((a34 << (81 * (v34 ^ 0xB6) + 95)) & 0x7FFE);
  memset((v37 - 184), 156, 64);
  *(a7 + 100) = 0x9C9C9C9C9C9C9C9CLL;
  memset((a7 + 108), 156, 56);
  return (*(v36 + 8 * ((98 * (a8 + v38 + ((337 * (v34 ^ 0x1B6) + 2144873779) & 0x8027D36F ^ 0xFFFFFC93) - ((2 * v38) & 0xE336) == v35 + 774)) ^ (337 * (v34 ^ 0x1B6)))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t sub_2585AC8E8@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v7 = v5 - 1;
  *(a2 + v7) ^= *(v2 + (v7 & 0xF)) ^ *((v7 & 0xF) + v3 + 1) ^ (-75 * (v7 & 0xF)) ^ *((v7 & 0xF) + v4 + 3);
  return (*(v6 + 8 * ((1561 * (v7 == 0)) ^ (a1 + 582))))();
}

void sub_2585AC944(uint64_t a1)
{
  v1 = 657053849 * (((a1 | 0x9FBEF3A1) - (a1 & 0x9FBEF3A1)) ^ 0xF604E668);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_2585ACA20(uint64_t result)
{
  if (*(*(result + 16) + 131) == 1)
  {
    JUMPOUT(0x2585A352CLL);
  }

  if (!*(*(result + 16) + 131))
  {
    __asm { BRAA            X9, X17 }
  }

  return result;
}

void sub_2585ACF94()
{
  v3 = 1021229753 * ((~((v2 - 144) | 0xDAC9922F) + ((v2 - 144) & 0xDAC9922F)) ^ 0x9BDBD63A);
  *(v2 - 136) = &STACK[0x270];
  *(v2 - 144) = v0 - 1083643178 + v3 + 1014;
  *(v2 - 140) = v3 ^ 0xE6F1BAC;
  (*(v1 + 8 * (v0 + 1442)))(v2 - 144);
  JUMPOUT(0x2585919F0);
}

uint64_t sub_2585AD05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  (*(v23 + 8 * SHIDWORD(a12)))(a13 + a14, 0x100004077774924);
  v24 = (*(v23 + 8 * a12))();
  *v22 = v24;
  return sub_2585AD0B8(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_2585AD1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  v26 = &a22 + v24;
  *v26 = 0x9C9C9C9C9C9C9C9CLL;
  *(v26 + 1) = 0x9C9C9C9C9C9C9C9CLL;
  return (*(v25 + 8 * ((646 * ((v23 ^ 0x338u) + 380 - 426 == (v22 & 0xFFFFFFFFFFFFFFF0))) ^ v23 ^ 0x338)))();
}

uint64_t sub_2585AD340@<X0>(uint64_t a1@<X8>)
{
  v5 = (v1 + (v2 << (v4 + 109)));
  v7 = vld4_s8(v5);
  v8.val[0] = v7.val[3];
  v8.val[1] = v7.val[2];
  v8.val[2] = v7.val[1];
  v8.val[3] = v7.val[0];
  vst4_s8(v5, v8);
  return (*(a1 + 8 * ((89 * ((v3 & 0x1FFFFFFF8) - 8 == v2)) ^ v4)))();
}

uint64_t sub_2585AD3F4(uint64_t a1)
{
  v6 = *(a1 + v4 + 244);
  *(v3 - 1) = *(a1 + v4 + 228);
  *v3 = v6;
  return (*(v5 + 8 * (((v4 == -96) * v2) ^ v1)))();
}

uint64_t sub_2585AD590(uint64_t result)
{
  *v2 = result;
  *(v1 + 8) = 95751194;
  return result;
}

uint64_t sub_2585AD79C()
{
  v5 = v0 - 1;
  *(v2 + v5) = *(v1 + v5) - ((v3 ^ 0x6E) & (2 * *(v1 + v5))) - 100;
  return (*(v4 + 8 * ((971 * (v5 == 0)) ^ v3)))();
}

uint64_t sub_2585AD878(uint64_t a1, uint64_t a2)
{
  v6 = v2 - 1;
  *(v4 + v6) = *(a2 + v6) ^ 0x9C;
  return (*(v5 + 8 * ((245 * (v6 != 0)) ^ (v3 + 290))))();
}

uint64_t sub_2585AD8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  *a1 = 1498173510;
  *(a1 + 4) = a49;
  *(a1 + 5) = 769;
  *(a1 + 7) = 0;
  *(a1 + 8) = -1744830464;
  *(a1 + 12) = *(a50 + 13);
  *(a1 + 13) = 6799;
  *(a1 + 15) = -100;
  *(v60 - 164) = (4263 * ((((2 * (v60 - 168)) | 0x2598) - (v60 - 168) - 4812) ^ 0x7F05)) ^ 0x32D6;
  *(v60 - 152) = (v58 + 108) ^ (344723623 * ((((2 * (v60 - 168)) | 0x334E2598) - (v60 - 168) + 1717103924) ^ 0x6E047F05));
  *(v60 - 160) = a1 + 16;
  v62 = (*(v59 + 8 * (v58 + 686)))(v60 - 168);
  *(a1 + 16) = 256;
  return (*(v59 + 8 * (((((v58 - 851) | 0x182) ^ 0x156) * ((a1 - &a58 - 112) > 0x1F)) ^ (v58 - 525))))(v62);
}

uint64_t sub_2585ADD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  *(v32 - 144) = v31 + 2744;
  *(v32 - 136) = (v30 + 2089148430) ^ (439532179 * ((2 * ((v32 - 144) & 0x1978B340) - (v32 - 144) - 427340609) ^ 0x3821713D));
  (*(v29 + 8 * (v30 ^ 0x6EE)))(v32 - 144);
  v33 = 2021301169 * ((v32 - 144) ^ 0x8BF657A0);
  *(v32 - 144) = *(v28 + 8 * (v30 - 228)) - 8;
  *(v32 - 136) = v31 + 2744;
  *(v32 - 128) = v33 + 469501837;
  *(v32 - 124) = (v30 + 417) ^ v33;
  (*(v29 + 8 * (v30 + 1273)))(v32 - 144);
  v34 = 2021301169 * ((((2 * (v32 - 144)) | 0x94BDEBC) - (v32 - 144) + 2069500066) ^ 0xF53B8FE);
  *(v32 - 144) = a28;
  *(v32 - 136) = v31 + 2744;
  *(v32 - 128) = v34 + 469501822;
  *(v32 - 124) = (v30 + 417) ^ v34;
  v35 = (*(v29 + 8 * (v30 ^ 0x50B)))(v32 - 144);
  return sub_2585ADEA4(v35);
}

void sub_2585ADEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, _DWORD *a28)
{
  *v28 = *a28;
  LODWORD(STACK[0xCE4]) = STACK[0xC8C];
  LODWORD(STACK[0xCE8]) = STACK[0xC90];
  STACK[0xCEC] = STACK[0xC94];
  LODWORD(STACK[0xCF4]) = STACK[0xC9C];
  JUMPOUT(0x2585ADEECLL);
}

void sub_2585AE0B8(_DWORD *a1)
{
  v1 = *a1 ^ (1021229753 * (((a1 ^ 0x389CFE17 | 0x54B4ADCA) - ((a1 ^ 0x389CFE17) & 0x54B4ADCA)) ^ 0xD2C5E837));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_2585AE488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, _DWORD *a20, _BYTE *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, char a50, uint64_t a51, void *a52)
{
  *(v53 - 160) = a37;
  *(v53 - 144) = a34 + 132;
  *(v53 - 152) = -41 - -111 * ((v53 + 88) ^ 0x5C);
  *(v53 - 168) = (a50 - (a10 & 0x38) + 28) ^ (-111 * ((v53 + 88) ^ 0x5C));
  *(v53 - 136) = 44841361 * ((v53 - 168) ^ 0x606EFD5C) + v52 - 1180;
  v54 = (*(a38 + 8 * (v52 + 101)))(v53 - 168);
  *a52 = a36;
  *a20 = a32;
  *a21 = 1;
  *(a37 + 1) = 4;
  v55 = bswap32(*(a51 + 8));
  return (*(a38 + 8 * ((((v55 ^ 0xDDEEAD7EF5D7BFAFLL) + 0x221152810A28405DLL + (((v52 ^ 0x401u) + 0x1EBAF7E21) & (2 * v55)) == 0) * (((v52 - 346082179) & 0x14A0C7CE) - 301)) ^ v52)))(v54);
}

uint64_t sub_2585AE660(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t (*a32)(void), uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45)
{
  *a2 = *(a45[291] + v55);
  a2[4] = *(a45[299] + a3);
  a2[8] = *(a45[307] + v51);
  a2[12] = *(a45[315] + v48);
  a2[1] = *(a45[301] + a1);
  a2[5] = *(a45[309] + v52);
  a2[9] = *(a45[317] + v45);
  a2[13] = *(a45[293] + v50);
  a2[2] = *(a45[311] + v47);
  a2[10] = *(a45[295] + v49);
  a2[6] = *(a45[319] + v46);
  a2[14] = *(a45[303] + v53);
  a2[15] = *(a45[313] + v56);
  a2[11] = *(a45[305] + a7);
  a2[7] = *(a45[297] + v54);
  a2[3] = *(a45[321] + a4);
  return a32();
}

void sub_2585AE7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12)
{
  v14 = (((a12 ^ 0x7E4AFC28) - 2118843432) ^ ((a12 ^ 0xD673F47B) + 697043845) ^ ((a12 ^ 0xC6EE30C9) + 957468471)) + 504225108 + (((a7 ^ 0x6F62770A) - 1868723978) ^ ((a7 ^ 0xC317AB9F) + 1021858913) ^ ((a7 ^ 0xC2A2E40F) + 105 * (v13 ^ 0x3E4) + 1029511232));
  v15 = (v14 ^ 0x3F3A8BFF) & (2 * (v14 & 0xBFA093E0)) ^ v14 & 0xBFA093E0;
  v16 = ((2 * (v14 ^ 0x57BAFBF)) ^ 0x75B678BE) & (v14 ^ 0x57BAFBF) ^ (2 * (v14 ^ 0x57BAFBF)) & 0xBADB3C5E;
  v17 = v16 ^ 0x8A490441;
  v18 = (v16 ^ 0x30821800) & (4 * v15) ^ v15;
  v19 = ((4 * v17) ^ 0xEB6CF17C) & v17 ^ (4 * v17) & 0xBADB3C5C;
  v20 = (v19 ^ 0xAA483040) & (16 * v18) ^ v18;
  v21 = ((16 * (v19 ^ 0x10930C03)) ^ 0xADB3C5F0) & (v19 ^ 0x10930C03) ^ (16 * (v19 ^ 0x10930C03)) & 0xBADB3C50;
  v22 = v20 ^ 0xBADB3C5F ^ (v21 ^ 0xA8930400) & (v20 << 8);
  *(v12 + 88) = v14 ^ (2 * ((v22 << 16) & 0x3ADB0000 ^ v22 ^ ((v22 << 16) ^ 0x3C5F0000) & (((v21 ^ 0x1248380F) << 8) & 0x3ADB0000 ^ 0x20C30000 ^ (((v21 ^ 0x1248380F) << 8) ^ 0x5B3C0000) & (v21 ^ 0x1248380F)))) ^ 0xD477D3C4;
  JUMPOUT(0x2585AE9C0);
}

uint64_t sub_2585AEA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, unsigned int a36)
{
  v40 = v39[396] ^ ((((v36 + 2033974825) & 0xDECC559F ^ 0x27F7AA6B) & *v39 | v39[623] & 0x80000000) >> 1);
  v39[623] = (v40 + v37 - (a5 & (2 * v40))) ^ *(v38 + 4 * (*v39 & 1));
  return (*(a2 + 8 * ((1023 * (a36 > 0x26F)) ^ v36)))();
}

uint64_t sub_2585AEA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, unsigned int a14, int a15, char *a16)
{
  *v16 = 0;
  a12 = v17;
  a13 = v20;
  a16 = &a11;
  a14 = (v19 + 410) ^ (1511064119 * ((((&a12 | 0x81383E70) ^ 0xFFFFFFFE) - (~&a12 | 0x7EC7C18F)) ^ 0xF6B89EC5));
  v21 = (*(v18 + 8 * (v19 ^ 0x760)))(&a12);
  return (*(v18 + 8 * ((1410 * (a15 == (v19 ^ 0x42C) + 95749905)) ^ v19)))(v21);
}

uint64_t sub_2585AEB48(int *a1)
{
  v2 = a1[1] + 439532179 * ((-2 - ((a1 | 0x154566B5) + (~a1 | 0xEABA994A))) ^ 0x341CA4C8);
  result = (*(*(&off_286999DF0 + (v2 ^ 0x4518EF8F)) + (v2 ^ 0x4518E946)))(*(&off_286999DF0 + (v2 ^ 0x4518EF86)), sub_258586B38);
  v4 = **(&off_286999DF0 + (v2 ^ 0x4518EF9C));
  if (result)
  {
    v4 = 95708888;
  }

  *a1 = v4;
  return result;
}

void sub_2585AECAC(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16) - 657053849 * ((-2 - ((a1 ^ 0x82401104 | 0x598766DA) + (a1 ^ 0x9800240 | 0xA6789925))) ^ 0x1D85F972);
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(&off_286999DF0 + v1 - 294);
  (*(v4 + 8 * (v1 ^ 0x7A3)))(*(&off_286999DF0 + v1 - 273) - 12, v5, 16);
  (*(v4 + 8 * (v1 + 1117)))(*(&off_286999DF0 + v1 - 266), v6, 16);
  v9 = v1 + 1520698633 * (((~v8 & 0x9E55FE04) - (~v8 | 0x9E55FE05)) ^ 0x35BBE680) + 390;
  v8[0] = &v7;
  v8[1] = v2;
  (*(v4 + 8 * (v1 + 1100)))(v8);
  (*(v4 + 8 * (v1 + 1117)))();
  (*(v4 + 8 * (v1 + 1117)))(*(&off_286999DF0 + (v1 ^ 0x184)) - 4);
  __asm { BRAA            X8, X17 }
}

_DWORD *sub_2585AEEC0@<X0>(_DWORD *result@<X0>, _BYTE *a2@<X8>)
{
  v4 = result[1] - v2;
  v5 = HIBYTE(v4) ^ 0xFFFFFFDF;
  v6 = v4 >> (v3 ^ 0xB1);
  *a2 = (v4 ^ 0xCB) & 0xF;
  a2[1] = (v4 ^ 0xCB) >> 4;
  v7 = (v4 >> 8) ^ 0xFFFFFFEF;
  a2[2] = v7 & 0xF;
  a2[3] = v7 >> 4;
  a2[4] = (v6 ^ 0x95) & 0xF;
  a2[5] = (v6 ^ 0x95) >> 4;
  a2[6] = v5 & 0xF;
  a2[7] = v5 >> 4;
  *result = 95751194;
  return result;
}

uint64_t sub_2585AEFC4(int8x16_t a1, double a2, __n128 a3)
{
  v3 = vextq_s8(a1, a1, 8uLL);
  v4 = vorr_s8(*a1.i8, v3.n128_u64[0]);
  v5 = *&v4 | HIDWORD(*&v4) | ((*&v4 | HIDWORD(*&v4)) >> 16);
  v3.n128_u64[0] = 0x38003800380038;
  a3.n128_u32[0] = 10223772;
  a3.n128_u16[2] = 156;
  a3.n128_u16[3] = 156;
  return sub_2585AF000(COERCE_FLOAT((v5 | (v5 >> 8))), v3, a3);
}

uint64_t sub_2585AF000@<X0>(int a1@<W8>, __n128 a2@<Q0>, int8x8_t a3@<D1>, int16x4_t a4@<D2>, uint8x8_t a5@<D3>, uint8x8_t a6@<D4>)
{
  a5.i32[0] = *(v8 + v7);
  a6.i32[0] = *(v10 + v7);
  v11 = vmovl_u8(a6).u64[0];
  a2.n128_u64[0] = vorr_s8(veor_s8(vadd_s16(vsub_s16(v11, vand_s8(vadd_s16(v11, v11), a3)), a4), *&vmovl_u8(a5)), a2.n128_u64[0]);
  return (*(v9 + 8 * (((2 * (v7 + v6 == 332)) | (8 * (v7 + v6 == 332))) ^ a1)))(a2);
}

uint64_t sub_2585AF0CC(uint64_t a1)
{
  v4 = *a1;
  **(a1 + 56) = 0;
  *v4 = 0;
  return (*(v2 + 8 * (((*(v3 + 5) == 1) * (((v1 - 246) | 0x60) ^ 0x224)) ^ v1)))();
}

uint64_t sub_2585AF1F4()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

void sub_2585AF344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  v27 = (v24 ^ 0xA9F45754) & (2 * (v24 & v22)) ^ v24 & v22;
  v28 = (v24 ^ 0xA934975C) << ((6 * (v25 ^ 0x7A)) ^ 0x83);
  v29 = (v28 ^ 0x4989E2B4) & (v24 ^ 0xA934975C) ^ v28 & 0x24C4F15A;
  v30 = v29 ^ 0x2444114A;
  v31 = (v29 ^ 0x84A150) & (4 * v27) ^ v27;
  v32 = ((4 * v30) ^ 0x9313C568) & v30 ^ (4 * v30) & 0x24C4F158;
  v33 = (v32 ^ 0xC150) & (16 * v31) ^ v31;
  v34 = ((16 * (v32 ^ 0x24C43012)) ^ 0x4C4F15A0) & (v32 ^ 0x24C43012) ^ (16 * (v32 ^ 0x24C43012)) & 0x24C4F150;
  v35 = v33 ^ 0x24C4F15A ^ (v34 ^ 0x4441100) & (v33 << 8);
  v36 = (v35 << 16) & 0x24C40000 ^ v35 ^ ((v35 << 16) ^ 0x715A0000) & (((v34 ^ 0x2080E05A) << 8) & 0x24C40000 ^ 0x20040000 ^ (((v34 ^ 0x2080E05A) << 8) ^ 0x44F10000) & (v34 ^ 0x2080E05A));
  v37 = ((((v26 - 120) ^ 0xC084A461 | 0xFEA540F1) - (((v26 - 120) ^ 0xC084A461) & 0xFEA540F1)) ^ 0x80CC5F7A) * a5;
  *(v26 - 112) = &a22;
  *(v26 - 120) = v23 + v37 + v25 + 11;
  *(v26 - 116) = v37 ^ v24 ^ (2 * v36) ^ 0x8A969F1C;
  JUMPOUT(0x258578AD0);
}

void sub_2585AF500(uint64_t a1)
{
  v1 = *(a1 + 8) ^ (2072138273 * (((a1 | 0x157E5B54) - a1 + (a1 & 0xEA81A4AB)) ^ 0xFCCBF9B7));
  __asm { BRAA            X0, X17 }
}

uint64_t sub_2585AF640(uint64_t a1)
{
  v4 = *(a1 + 8);
  v12 = v10;
  LODWORD(v11) = v1 - 2021301169 * ((&v11 + 654442144 - 2 * (&v11 & 0x2701FEA0)) ^ 0xACF7A900) + 1412064322;
  (*(v3 + 8 * (v1 ^ 0x6A9)))(&v11);
  v5 = 657053849 * (((&v11 | 0x9D0CB771) - &v11 + (&v11 & 0x62F34888)) ^ 0xF4B6A2B8);
  v13 = v9;
  v11 = v10;
  LODWORD(v12) = 190851422 - v5;
  HIDWORD(v12) = v1 - 1899927211 - v5;
  (*(v3 + 8 * (v1 + 1384)))(&v11);
  v6 = 657053849 * (&v11 ^ 0x69BA15C9);
  v11 = v10;
  v13 = &v9[1];
  LODWORD(v12) = 190851422 - v6;
  HIDWORD(v12) = v1 - 1899927211 - v6;
  (*(v3 + 8 * (v1 ^ 0x6A8)))(&v11);
  v7 = &v4[56 * *v4];
  v9[21] = v7[43] ^ 0x9C;
  v9[20] = v7[42] ^ 0x9C;
  v9[19] = v7[41] ^ 0x9C;
  v9[18] = v7[40] ^ 0x9C;
  v9[17] = v7[39] ^ 0x9C;
  v9[16] = v7[38] ^ 0x9C;
  v9[15] = v7[37] ^ 0x9C;
  v9[14] = v7[36] ^ 0x9C;
  v9[13] = v7[35] ^ 0x9C;
  v9[12] = v7[34] ^ 0x9C;
  v9[11] = v7[33] ^ 0x9C;
  v9[10] = v7[32] ^ 0x9C;
  v9[9] = v7[31] ^ 0x9C;
  v9[8] = v7[30] ^ 0x9C;
  v9[7] = v7[29] ^ 0x9C;
  v9[6] = v7[28] ^ 0x9C;
  v9[5] = v7[27] ^ 0x9C;
  v9[4] = v7[26] ^ 0x9C;
  v9[3] = v7[25] ^ 0x9C;
  v9[2] = v7[24] ^ 0x9C;
  LODWORD(v13) = v1 + 657053849 * (((&v11 | 0x644B3551) + (~&v11 | 0x9BB4CAAE)) ^ 0xDF12099) + 263;
  v11 = v2;
  v12 = v10;
  v14 = &v9[2];
  return (*(v3 + 8 * (v1 ^ 0x687)))(&v11);
}

uint64_t sub_2585AF9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, int a12, int a13, uint64_t a14, uint64_t a15, int *a16, int a17)
{
  v24 = 1021229753 * ((&a14 & 0xEC9A4513 | ~(&a14 | 0xEC9A4513)) ^ 0xAD880106);
  LODWORD(a14) = v24 + 1369827689;
  HIDWORD(a14) = v24 + v20 + 467;
  a15 = v19;
  (*(v17 + 8 * (v20 ^ 0x734)))(&a14);
  a14 = v18;
  a15 = v19;
  LODWORD(a16) = (v20 - 546253372) ^ (1380645169 * ((2 * (&a14 & 0x451584C0) - &a14 - 1159038149) ^ 0x382F736B));
  (*(v17 + 8 * (v20 + 1234)))(&a14);
  v25 = ((&a14 + 793196367 - 2 * (&a14 & 0x2F47374F)) ^ 0xF1E10ACD) * v23;
  a17 = v25 ^ v21;
  a15 = v19;
  a16 = &a10;
  LODWORD(a14) = v25 + v20 + 871;
  HIDWORD(a14) = v22 - v25;
  v26 = (*(v17 + 8 * (v20 + 1242)))(&a14);
  v27 = *(v18 + 4);
  *v18 += a10;
  *(v18 + 4) = v27 + a11;
  v28 = *(v18 + 12);
  *(v18 + 8) += a12;
  *(v18 + 12) = v28 + a13;
  *(v18 + 24) = 0u;
  return (*(v17 + 8 * ((1149 * (v20 == 344)) ^ v20)))(v26);
}

uint64_t sub_2585AFCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v37 = *(v35 + 4 * (v34 - 1));
  *(v35 + 4 * v34) = ((1566083941 * (v37 ^ (v37 >> 30))) ^ *(v35 + 4 * v34)) - v34;
  v38 = 1511064119 * ((((v36 - 144) | 0x5CEE777DF1E47429) - (v36 - 144) + ((v36 - 144) & 0xA31188820E1B8BD0)) ^ 0xC160C2C1799B2B63);
  *(v36 - 144) = (v32 - 268500649) ^ v38;
  *(v36 - 104) = -310332759 - v38 + v32;
  *(v36 - 112) = v32 - 268500743 - v38;
  *(v36 - 120) = 623 - v38;
  *(v36 - 128) = ((v32 - 268500743) & 0x4BF77EE9) + v38;
  *(v36 - 124) = v38 | 1;
  *(v36 - 136) = v34 + 1 - v38;
  v39 = (*(a3 + 8 * (v33 + v32 + 889)))(v36 - 144);
  return (*(a32 + 8 * *(v36 - 108)))(v39);
}

uint64_t sub_2585B04E4@<X0>(int a1@<W0>, uint64_t a2@<X8>, int8x16_t a3@<Q0>)
{
  v10 = ~a2 + v5;
  v11 = *(v3 + v10 - 15);
  v12 = *(v3 + v10 - 31);
  v13 = v4 + v10;
  *(v13 - 15) = veorq_s8(v11, a3);
  *(v13 - 31) = veorq_s8(v12, a3);
  return (*(v9 + 8 * (((a2 + v8 - 314 == v6) * a1) ^ v7)))();
}

uint64_t sub_2585B0530@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  *v1 = v1[3];
  v1[3] = v4;
  v5 = v1[1];
  v1[1] = v1[2];
  v1[2] = v5;
  return (*(a1 + 8 * ((506 * (((((v3 - 56) & 0xFD) + 1) ^ (v2 == 86895545)) & 1)) ^ (v3 - 416192568) & 0x18CE97FDu)))();
}

void sub_2585B05A0(uint64_t a1)
{
  v1 = *(a1 + 48) - 439532179 * (((a1 | 0xB21B823B) - (a1 & 0xB21B823B)) ^ 0x6CBDBFB9);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_2585B066C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v26 = a1 ^ 0x108;
  v27 = (*(v25 + 8 * (a1 ^ 0x46D)))(164, 0x10000403E1C8BA9);
  return (*(v25 + 8 * (((v27 == 0) * (((v26 + 786243659) & 0xD122DDD9) - 168)) ^ v26)))(v27, v28, v29, v30, v31, v32, v33, v34, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

void sub_2585B08B4(uint64_t a1)
{
  v1 = 1520698633 * ((-1815649025 - (a1 | 0x93C764FF) + (a1 | 0x6C389B00)) ^ 0xC7D68385);
  __asm { BRAA            X11, X17 }
}

void sub_2585B15F4(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  v49 = 439532179 * (((v48 - 168) & 0x9018AA18 | ~((v48 - 168) | 0x9018AA18)) ^ 0xB1416865);
  *(v48 - 120) = v49 + a1 - 58;
  *(v48 - 136) = v45;
  *(v48 - 128) = a43;
  *(v48 - 112) = 0;
  *(v48 - 144) = v43;
  *(v48 - 104) = v49 + 659128923;
  *(v48 - 168) = v46;
  *(v48 - 160) = v44;
  (*(v47 + 8 * (a1 + 1157)))(v48 - 168);
  JUMPOUT(0x258577C6CLL);
}

uint64_t sub_2585B16AC@<X0>(int a1@<W8>, int8x16_t a2@<Q2>)
{
  v8 = v4 + v2;
  v9 = veorq_s8(*(v3 + v2 + 16), a2);
  *(v8 + 24) = veorq_s8(*(v3 + v2), a2);
  *(v8 + 40) = v9;
  return (*(v5 + 8 * (((v2 + 32 == ((a1 - 872) | v6) - 458) * v7) ^ a1)))();
}

void sub_2585B16F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v33 = v32 - 168;
  *(v32 - 168) = a29;
  *(v32 - 160) = (v29 + 2089148459) ^ (439532179 * ((~((v32 - 168) | 0x328D72BF) + ((v32 - 168) & 0x328D72BF)) ^ 0x13D4B0C2));
  (*(v31 + 8 * (v29 + 1339)))(v32 - 168);
  v34 = 2021301169 * ((((2 * v33) | 0x27967A00) - v33 - 332086528) ^ 0x983D6AA0);
  *(v32 - 152) = v34 + 469501837;
  *(v32 - 148) = (v29 + 446) ^ v34;
  *(v32 - 168) = *(v30 + 8 * (v29 - 199)) - 8;
  *(v32 - 160) = a29;
  (*(v31 + 8 * (v29 ^ 0x52E)))(v32 - 168);
  v35 = 2021301169 * (((v33 | 0xBC0FE34E) - v33 + (v33 & 0x43F01CB0)) ^ 0x37F9B4EE);
  *(v32 - 168) = a18;
  *(v32 - 160) = a29;
  *(v32 - 152) = v35 + 469501822;
  *(v32 - 148) = (v29 + 446) ^ v35;
  (*(v31 + 8 * (v29 + 1302)))(v32 - 168);
  JUMPOUT(0x2585B1880);
}

uint64_t sub_2585B18E0(uint64_t a1, int a2, int8x8_t a3, int8x8_t a4)
{
  v9 = v6 + 8;
  *(a1 + v9) = vadd_s8(vsub_s8(*(v5 + v9), vand_s8(vadd_s8(*(v5 + v9), *(v5 + v9)), a3)), a4);
  return (*(v4 + 8 * (((v8 != v9) * a2) ^ v7)))();
}

uint64_t sub_2585B1960(uint64_t result)
{
  if ((*result - 111 * ((2 * (result & 0x54) - result - 85) ^ 0xF7) - 126) >= 3u)
  {
    v1 = 95708297;
  }

  else
  {
    v1 = 95751194;
  }

  *(result + 8) = v1;
  return result;
}

char *sub_2585B1A28(char *result, char *a2, unint64_t a3)
{
  if (((a2 ^ result) & 7) == 0)
  {
    v5 = -result & 7;
    if ((-result & 7u) <= 3)
    {
      if ((-result & 7u) <= 1)
      {
        if (!v5)
        {
LABEL_27:
          v13 = a3 >= v5;
          v14 = a3 - v5;
          if (!v13)
          {
            v14 = 0;
          }

          if (v14 >= 8)
          {
            v15 = ((v14 >> 3) + 7) >> 3;
            v16 = (v14 >> 3) & 7;
            if (v16 > 3)
            {
              if (((v14 >> 3) & 7) <= 5)
              {
                if (v16 == 4)
                {
                  goto LABEL_58;
                }

                goto LABEL_57;
              }

              if (v16 == 6)
              {
                goto LABEL_56;
              }

              goto LABEL_55;
            }

            if (((v14 >> 3) & 7) > 1)
            {
              if (v16 == 2)
              {
                goto LABEL_60;
              }

              goto LABEL_59;
            }

            if (!v16)
            {
              goto LABEL_54;
            }

            while (1)
            {
              v32 = *result;
              result += 8;
              *a2 = v32;
              a2 += 8;
              if (!--v15)
              {
                break;
              }

LABEL_54:
              v25 = *result;
              result += 8;
              *a2 = v25;
              a2 += 8;
LABEL_55:
              v26 = *result;
              result += 8;
              *a2 = v26;
              a2 += 8;
LABEL_56:
              v27 = *result;
              result += 8;
              *a2 = v27;
              a2 += 8;
LABEL_57:
              v28 = *result;
              result += 8;
              *a2 = v28;
              a2 += 8;
LABEL_58:
              v29 = *result;
              result += 8;
              *a2 = v29;
              a2 += 8;
LABEL_59:
              v30 = *result;
              result += 8;
              *a2 = v30;
              a2 += 8;
LABEL_60:
              v31 = *result;
              result += 8;
              *a2 = v31;
              a2 += 8;
            }
          }

          v33 = v14 & 7;
          if (v33 <= 3)
          {
            if (v33 <= 1)
            {
              if (!v33)
              {
                return result;
              }

LABEL_78:
              *a2 = *result;
              return result;
            }

            if (v33 == 2)
            {
LABEL_77:
              v39 = *result++;
              *a2++ = v39;
              goto LABEL_78;
            }

LABEL_76:
            v38 = *result++;
            *a2++ = v38;
            goto LABEL_77;
          }

          if (v33 > 5)
          {
            if (v33 != 6)
            {
              v34 = *result++;
              *a2++ = v34;
            }

            v35 = *result++;
            *a2++ = v35;
          }

          else if (v33 == 4)
          {
            goto LABEL_75;
          }

          v36 = *result++;
          *a2++ = v36;
LABEL_75:
          v37 = *result++;
          *a2++ = v37;
          goto LABEL_76;
        }

LABEL_26:
        v12 = *result++;
        *a2++ = v12;
        goto LABEL_27;
      }

      if (v5 == 2)
      {
LABEL_25:
        v11 = *result++;
        *a2++ = v11;
        goto LABEL_26;
      }

LABEL_24:
      v10 = *result++;
      *a2++ = v10;
      goto LABEL_25;
    }

    if ((-result & 7u) > 5)
    {
      if (v5 != 6)
      {
        v6 = *result++;
        *a2++ = v6;
      }

      v7 = *result++;
      *a2++ = v7;
    }

    else if (v5 == 4)
    {
      goto LABEL_23;
    }

    v8 = *result++;
    *a2++ = v8;
LABEL_23:
    v9 = *result++;
    *a2++ = v9;
    goto LABEL_24;
  }

  if ((a3 + 7) >= 8)
  {
    v3 = (a3 + 7) >> 3;
    v4 = a3 & 7;
    if (v4 > 3)
    {
      if ((a3 & 7) <= 5)
      {
        if (v4 == 4)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      }

      if (v4 == 6)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    if ((a3 & 7) > 1)
    {
      if (v4 == 2)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    if ((a3 & 7) == 0)
    {
      goto LABEL_45;
    }

    while (1)
    {
      v24 = *result++;
      *a2++ = v24;
      if (!--v3)
      {
        break;
      }

LABEL_45:
      v17 = *result++;
      *a2++ = v17;
LABEL_46:
      v18 = *result++;
      *a2++ = v18;
LABEL_47:
      v19 = *result++;
      *a2++ = v19;
LABEL_48:
      v20 = *result++;
      *a2++ = v20;
LABEL_49:
      v21 = *result++;
      *a2++ = v21;
LABEL_50:
      v22 = *result++;
      *a2++ = v22;
LABEL_51:
      v23 = *result++;
      *a2++ = v23;
    }
  }

  return result;
}

uint64_t sub_2585B1C94(uint64_t result)
{
  *v2 = -1;
  *(result + 40) = v1;
  return result;
}

_BYTE *sub_2585B1CDC(_BYTE *result, unsigned int a2, unint64_t a3)
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

void sub_2585B2148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2585B2470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2585B2AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}