uint64_t sub_244B8B59C(char a1, int a2, char a3, uint64_t a4, uint64_t a5, int a6, char a7)
{
  v21 = (((v14 - (v10 & ((v8 - 31) ^ a1))) ^ v18 ^ a3) + v15 - 2 * (((v14 - (v10 & ((v8 - 31) ^ a1))) ^ v18 ^ a3) & (v15 + 2) ^ ((v14 - (v10 & ((v8 - 31) ^ a1))) ^ v18) & 2)) ^ LODWORD(STACK[0xBC8]);
  v22 = a2 ^ *(*(v11 + 8 * (v8 - 3275)) + 4 * (((v21 - (a7 & (2 * v21)) - 110) ^ v20) ^ v12) - 8);
  *(v17 + 4 * ((v14 - (v10 & ((v8 - 31) ^ a1))) ^ v13)) = v16 ^ (v22 + v7 - (a6 & (2 * v22)));
  return (*(STACK[0xBD8] + 8 * (((v9 == 0) * v19) ^ v8)))();
}

uint64_t sub_244B8B648@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xA70]) = v5;
  LODWORD(STACK[0xA80]) = LODWORD(STACK[0xB60]) - 2094542812;
  LODWORD(STACK[0xB60]) = LODWORD(STACK[0xB38]) + 1730949733;
  LODWORD(STACK[0xA28]) = LODWORD(STACK[0xA88]) - 2 * LODWORD(STACK[0xA90]);
  LODWORD(STACK[0xA78]) = v4;
  LODWORD(STACK[0xB38]) = HIWORD(v4);
  LODWORD(STACK[0xA90]) = v1 ^ 0xBAFCB629;
  LODWORD(STACK[0xA88]) = v2 - v3;
  v6 = (LODWORD(STACK[0xAD8]) - 2134900159);
  LODWORD(STACK[0xAD8]) = LODWORD(STACK[0xA48]) - 2076159966;
  return (*(STACK[0xBD8] + 8 * a1))(255, 4090351508, a1 ^ 0x13C6u, v6, STACK[0xBD8], 202193904, 1667027770, 934610837);
}

uint64_t sub_244B8B830@<X0>(int a1@<W0>, char a2@<W1>, int a3@<W2>, uint64_t a4@<X4>, int a5@<W5>, int a6@<W6>, int a7@<W7>, int a8@<W8>)
{
  v17 = *(*(v11 + 8 * a3) + 4 * (a8 ^ (v15 + 3845) ^ v15 ^ ((v9 - (v10 & a2)) ^ v8)) - 8);
  *(v14 + 4 * ((v9 - (v10 & a2)) ^ v13)) = v12 ^ (v17 - ((a5 + 2 * v17) & a6) + a7);
  return (*(a4 + 8 * (((a1 == 0) * v16) ^ a8)))((a1 - 1));
}

uint64_t sub_244B8B8A4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(STACK[0xAA0]) = LODWORD(STACK[0xA20]) ^ 0xE5B6288C;
  v5 = *(STACK[0xBD8] + 8 * (v4 ^ 0xEA0350C8 ^ (19589 * (v4 < 0x10AA7451))));
  LODWORD(STACK[0xA48]) = a4;
  return v5(42, 2409987156, 1486666520, STACK[0xB90]);
}

uint64_t sub_244B8BA80(unsigned int a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  v25 = v11 ^ v19 ^ (((v10 - ((a8 << v14) & a2)) ^ v20 ^ a3) + 45 - 2 * (((v10 - ((a8 << v14) & a2)) ^ v20 ^ a3) & 0x2F ^ ((v10 - ((a8 << v14) & a2)) ^ v20) & 2));
  v26 = v8 ^ *(*(v15 + 8 * v16) + 4 * ((((*(a4 + ((((v25 & 1) << 7) | (v25 >> 1)) ^ 0xFCLL)) - 50) ^ v18) + 70) ^ a7));
  *(v17 + 4 * ((v10 - ((a8 << v14) & a2)) ^ a1)) = v13 ^ (v26 + v23 - (v24 & (2 * v26)));
  return (*(v22 + 8 * (((v9 == 0) * v12) ^ v21)))();
}

uint64_t sub_244B8BC9C@<X0>(int a1@<W0>, unsigned int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W5>, int a6@<W6>, int a7@<W7>, unsigned int a8@<W8>)
{
  v22 = (v8 - ((v8 << v11) & v13) - 70);
  v23 = *(*(v14 + 8 * a2) + 4 * (a1 ^ v22));
  HIDWORD(v24) = v23 ^ a3;
  LODWORD(v24) = v23 ^ 0x66666666;
  v25 = a7 ^ ((v24 >> 25) - (a5 & (2 * (v24 >> 25))) + a6);
  *(v19 + 4 * (v22 ^ v17)) = v15 ^ v10 ^ v18 ^ v9 ^ v16 ^ (v25 + v21 - (a4 & (2 * v25)));
  return (*(STACK[0xBD8] + 8 * (((v12 == 0) * v20) ^ a8)))();
}

uint64_t sub_244B8BEC0@<X0>(int a1@<W0>, char a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X5>, char a6@<W7>, int a7@<W8>)
{
  v23 = v15 - (v18 & 0xE6);
  v24 = *(*(&off_278E1E490 + a3) + ((((((v11 ^ v23) + v22 - 2 * (v11 ^ v23)) ^ a6) - ((2 * (((v11 ^ v23) + v22 - 2 * (v11 ^ v23)) ^ a6)) & 0x33) + 25) ^ a2) ^ 0x29u) - 1);
  v25 = (v24 * v13 - ((v7 + v24 * v14) & a4) + v10) ^ v16;
  v26 = (v25 + v12 - (a1 & (2 * v25))) ^ v17;
  *(a5 + 4 * (v23 ^ v9)) = v21 ^ (v8 + v26 + (v19 | ~(2 * v26)) + 1);
  return (*(STACK[0xBD8] + 8 * ((496 * (v20 != 0)) ^ a7)))();
}

uint64_t sub_244B8C0DC(int a1, char a2, char a3, char a4, uint64_t a5, int a6, int a7, char a8)
{
  v23 = v9 - (v8 & a4);
  v24 = *(*(&off_278E1E490 + v12) + ((((((a3 ^ v16 ^ v23) + 127 - 2 * (a3 ^ v16 ^ v23)) ^ a8) + (v14 | ~(2 * (((a3 ^ v16 ^ v23) + 127 - 2 * (a3 ^ v16 ^ v23)) ^ a8))) + 26) ^ a2) ^ v15) - 2);
  v25 = v11 ^ (v24 - ((a1 + 2 * v24) & v17) + v18);
  *(v21 + 4 * (v23 ^ v20)) = v19 ^ (v25 + v10 - (a6 & (2 * v25)));
  return (*(STACK[0xBD8] + 8 * (((v13 == 0) * v22) ^ a7)))();
}

uint64_t sub_244B8C260@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W4>, int a5@<W5>, int a6@<W6>, int a7@<W7>, int a8@<W8>)
{
  v24 = v10 - (v11 & 0xC7DC5F1C);
  HIDWORD(v25) = v8 ^ v24 ^ a5 ^ a2;
  LODWORD(v25) = (v24 ^ a5 ^ 0x60) << 24;
  v26 = (33 * ((*(v12 + ((v25 >> 29) ^ v13)) - 106) ^ v14)) ^ v22;
  HIDWORD(v25) = v26 ^ 0x10;
  LODWORD(v25) = (v26 ^ 0x80) << 24;
  v27 = (*(*(&off_278E1E490 + v16) + (((33 * ((*(v12 + ((v25 >> 29) ^ v13)) - 106) ^ v14) - (v9 & (66 * ((*(v12 + ((v25 >> 29) ^ v13)) - 106) ^ v14))) - 53) ^ HIBYTE(v18)) ^ 0xC7u) - 3) - 2127691107) ^ v15;
  *(v21 + 4 * ((v10 - (v11 & 0x1C)) ^ v19)) = a7 ^ a3 ^ v17 ^ (v27 + v20 - (a4 & (2 * v27)));
  return (*(a1 + 8 * (((a6 == 0) * v23) ^ a8)))();
}

void *sub_244B8C350(uint64_t a1)
{
  v2 = *(a1 + 8 * v1);
  LODWORD(STACK[0xBD0]) = (v1 + 1740862029) & 0x983C996F;
  return v2(&STACK[0x3E50]);
}

uint64_t sub_244B8C4B4@<X0>(int a1@<W1>, char a2@<W2>, int a3@<W3>, char a4@<W4>, int a5@<W5>, int a6@<W6>, int a7@<W7>, uint64_t a8@<X8>)
{
  v23 = a5 ^ (((v9 - (v10 & a7)) ^ v15) - ((((v9 - (v10 & a7)) ^ v15) << ((a2 ^ 0x3E) & 0x6F)) & 0xFFFFFFE6) + 115) ^ 0xFFFFFF8F;
  LOBYTE(v23) = (v23 + (~(2 * v23) | 0xC9) - 100) ^ a4;
  v24 = STACK[0xBD8];
  v25 = v12 ^ *(*(&off_278E1E490 + v16) + (((v23 ^ 0xEE) + (v14 ^ (2 * ((v23 ^ 0xEE) & 0xF ^ v23 & 1))) - 113) ^ HIBYTE(v18) ^ v13) - 3);
  *(a8 + 4 * ((v9 - (v10 & a7)) ^ v22)) = v21 ^ a6 ^ a3 ^ v20 ^ (v25 - (v17 & (2 * v25)) + v19);
  return (*(v24 + 8 * (((a1 == 0) * v11) ^ v8)))();
}

uint64_t sub_244B8C590()
{
  v1 = *(v0 + 8 * SLODWORD(STACK[0xBD0]));
  v2 = LODWORD(STACK[0xBD0]) ^ 0x5AAD;
  LODWORD(STACK[0xBC0]) = (v2 - 16002) | 0x958;
  LODWORD(STACK[0xA48]) = v2 ^ 0x413B;
  LODWORD(STACK[0xA40]) = v2 - 16606;
  LODWORD(STACK[0xA38]) = v2 - 16199;
  LODWORD(STACK[0xA30]) = v2 - 16275;
  LODWORD(STACK[0xA28]) = v2 ^ 0x475B;
  LODWORD(STACK[0xA20]) = v2 - 16419;
  LODWORD(STACK[0xA18]) = v2 ^ 0x44FA;
  LODWORD(STACK[0xA10]) = v2 ^ 0x4612;
  LODWORD(STACK[0xA08]) = LODWORD(STACK[0xA78]) ^ 0x1AFD2D56;
  LODWORD(STACK[0xA04]) = 852679164;
  LODWORD(STACK[0x9F8]) = v2 - 15554;
  LODWORD(STACK[0x9F0]) = v2 ^ 0x41B7;
  LODWORD(STACK[0x9E8]) = v2 ^ 0x4765;
  LODWORD(STACK[0x9E0]) = v2 - 15845;
  LODWORD(STACK[0x9D8]) = v2 ^ 0x401C;
  LODWORD(STACK[0x9D0]) = v2 ^ 0x4754;
  LODWORD(STACK[0x9C8]) = v2 - 16749;
  LODWORD(STACK[0xA54]) = v2;
  LODWORD(STACK[0x9C4]) = v2 - 15664;
  return v1();
}

uint64_t sub_244B8C6DC()
{
  LODWORD(STACK[0xB08]) = v3;
  LODWORD(STACK[0xB30]) = v2;
  LODWORD(STACK[0xB40]) = v1;
  LODWORD(STACK[0xB60]) = v0;
  LODWORD(STACK[0xBD0]) = v4 ^ 0x705FC482;
  v6 = *(&STACK[0xA720] + (v4 ^ 0x705FC482u));
  v7 = LODWORD(STACK[0xBC0]) ^ 0xED;
  v8 = v4 & 0xFFFFFFFE ^ 0x705FC483;
  LODWORD(STACK[0xB68]) = v8;
  v9 = v6 ^ 0x1E;
  v10 = v4;
  v11 = *(&STACK[0xA720] + ((v8 + 765616111 - ((2 * v8) & 0x5B44BFDE)) ^ 0x2DA25FEF));
  HIDWORD(v12) = v11 ^ 0xE;
  LODWORD(v12) = (v11 ^ 0x10) << 24;
  v13 = v7 - (v4 ^ 0x82) + ((v4 ^ 0x82) << 7);
  v14 = v4 & 0xFFFFFFF7 ^ 0x705FC48A;
  LODWORD(STACK[0xB58]) = v14;
  v15 = v14 - 1981898174 - ((2 * v14) & 0x13BD4484);
  v16 = *(&STACK[0xA720] + (v15 ^ 0x89DEA242));
  v17 = (v8 - 17 - ((2 * v8) & 0xDE)) ^ 0xEF;
  v18 = *(STACK[0xB98] + ((v12 >> 28) ^ 0x6DLL));
  HIDWORD(v12) = v16 ^ 0xE;
  LODWORD(v12) = (v16 ^ 0x10) << 24;
  v19 = *(STACK[0xB80] + ((v12 >> 28) ^ 0x4DLL));
  v20 = v15 ^ 0x42;
  v21 = (v10 & 0xFFFFFFFB ^ 0x705FC486) + 488581155 - ((2 * (v10 & 0xFFFFFFFB ^ 0x705FC486)) & 0x3A3E5046);
  LODWORD(STACK[0xB18]) = v21 ^ 0x1D1F2823;
  v22 = 27 * (v19 ^ 0xFFFFFFD6) - (v15 ^ 0x42);
  v23 = *(*(v5 + 8 * SLODWORD(STACK[0xA38])) + (((*(&STACK[0xA720] + (v21 ^ 0x1D1F2823)) ^ 0x1E) - (v21 ^ 0x23) + ((v21 ^ 0x23) << 7) - 75) ^ 0x55) - 4);
  v24 = v10 & 0xFFFFFFF6 ^ 0x705FC48B;
  v25 = (2 * v24) & 0x8C650300;
  v24 -= 969768576;
  v26 = (v24 - v25) ^ 0xC6328180;
  LODWORD(STACK[0xB38]) = v26;
  HIDWORD(v12) = v23 ^ 0x14;
  LODWORD(v12) = (v23 ^ 0x80) << 24;
  v27 = v12 >> 29;
  v28 = STACK[0xBA0];
  v29 = *(&off_278E1E490 + SLODWORD(STACK[0xA30]));
  LOBYTE(v23) = ((v28 + 59 * *(STACK[0xBA8] + (((*(&STACK[0xA720] + v26) ^ 0x1E) - 43) ^ 0x14))) ^ 0x81) - (v24 ^ 0x80) + ((v24 ^ 0x80) << 7);
  v30 = v10 & 0xFFFFFFFA ^ 0x705FC487;
  LODWORD(STACK[0xB10]) = v30;
  v31 = v22 + (v20 << 7);
  LOBYTE(v22) = 27 * ((v18 - 10) ^ 0x10) - v17 + (v17 << 7);
  v32 = (*(&STACK[0xA720] + ((v30 + 322009947 - ((2 * v30) & 0x2662F6B6)) ^ 0x13317B5B)) ^ 0x1E) - ((v30 + 91 - ((2 * v30) & 0xB6)) ^ 0x5B) + (((v30 + 91 - ((2 * v30) & 0xB6)) ^ 0x5B) << 7);
  v33 = v10 & 0xFFFFFFF2 ^ 0x705FC48F;
  LODWORD(STACK[0xB28]) = v33;
  v31 -= 75;
  v34 = *(v29 - 4 + (((*(&STACK[0xA720] + ((v33 - 2126214870 - ((2 * v33) & 0x2891254)) ^ 0x8144892A)) ^ 0x1E) - ((v33 + 42 - ((2 * v33) & 0x54)) ^ 0x2A) + (((v33 + 42 - ((2 * v33) & 0x54)) ^ 0x2A) << 7) - 75) ^ 0x72));
  v35 = v10 & 0xFFFFFFF4 ^ 0x705FC48B;
  LODWORD(STACK[0xB20]) = v35;
  v36 = (*(&STACK[0xA720] + ((v35 - 576145357 - ((2 * v35) & 0xBB517066)) ^ 0xDDA8B833)) ^ 0x1E) - ((v35 - 576145357 - ((2 * v35) & 0xBB517066)) ^ 0x33) + (((v35 - 576145357 - ((2 * v35) & 0xBB517066)) ^ 0x33) << 7);
  HIDWORD(v12) = v36 + 21;
  LODWORD(v12) = (v36 << 24) - 1258291200;
  LOBYTE(v36) = v12 >> 29;
  LODWORD(STACK[0xAC0]) = *(v29 - 4 + ((v23 - 75) ^ 0x96));
  LODWORD(STACK[0xAD8]) = 1885324430;
  HIDWORD(v12) = v31 ^ 9;
  LODWORD(v12) = (v31 ^ 0xC0) << 24;
  v37 = v12 >> 29;
  v38 = (v10 & 0xFFFFFFF1 ^ 0x705FC48E) + 1743553959 - ((2 * (v10 & 0xFFFFFFF1 ^ 0x705FC48E)) & 0xCFD90B4E);
  LODWORD(STACK[0xAF8]) = v38 ^ 0x67EC85A7;
  v39 = *(&off_278E1E490 + SLODWORD(STACK[0xA40])) - 8;
  v40 = (v22 - 75) ^ 0x8ALL;
  v41 = v39[(v32 - 75) ^ 0x1ALL];
  LODWORD(v39) = v39[v40];
  v42 = *(&off_278E1E490 + SLODWORD(STACK[0xA20])) - 8;
  v43 = v13 + v9;
  HIDWORD(v12) = v42[((*(&STACK[0xA720] + (v38 ^ 0x67EC85A7)) ^ 0x1E) - (v38 ^ 0xA7) + ((v38 ^ 0xA7) << 7) - 75) ^ 0xB8];
  LODWORD(v12) = (HIDWORD(v12) ^ 0xFFFFFFBF) << 24;
  LOBYTE(v38) = v12 >> 29;
  v44 = v10 & 0xFFFFFFF0 ^ 0x705FC48F;
  LODWORD(STACK[0xAF0]) = v44;
  HIDWORD(v12) = ~v39;
  LODWORD(v12) = (v39 ^ 0xFFFFFF9F) << 24;
  LOBYTE(v39) = v12 >> 28;
  LODWORD(v29) = ((v34 - 76) ^ 0x9D) << 16;
  v45 = *(&off_278E1E490 + SLODWORD(STACK[0xA18])) - 8;
  HIDWORD(v12) = v45[((*(&STACK[0xA720] + ((v44 - 1389756811 - ((2 * v44) & 0x5A53FCEA)) ^ 0xAD29FE75)) ^ 0x1E) - ((v44 + 117 - ((2 * v44) & 0xEA)) ^ 0x75) + (((v44 + 117 - ((2 * v44) & 0xEA)) ^ 0x75) << 7) - 75) ^ 0xECLL];
  LODWORD(v12) = (HIDWORD(v12) ^ 0x58) << 24;
  v46 = (v10 & 0xFFFFFFF8 ^ 0x705FC487) + 801049238 + ((2 * (v10 & 0xFFFFFFF8 ^ 0x705FC487)) & 0x5F7E1520 ^ 0xFFFFFFF3) + 1;
  v47 = (v29 & 0xFFFF00FF | (((33 * ((*(STACK[0xBB8] + (v38 ^ 0x2DLL)) - 106) ^ 0x15)) ^ 0xC5) << 8) | 0x49) ^ (v12 >> 27);
  LODWORD(STACK[0xAE8]) = v46 ^ 0x2FBF0A96;
  v48 = (*(&STACK[0xA720] + (v46 ^ 0x2FBF0A96)) ^ 0x1E) - (v46 ^ 0xFFFFFF96) + ((v46 ^ 0xFFFFFF96) << 7);
  HIDWORD(v12) = ~v48;
  LODWORD(v12) = (v48 << 24) - 1258291200;
  v49 = *(STACK[0xBB0] + ((v12 >> 25) ^ 0x9FLL));
  HIDWORD(v12) = v49;
  LODWORD(v12) = (v49 ^ 0x4E) << 24;
  LODWORD(v29) = v45[(((v12 >> 25) ^ 0xF2) + 70) ^ 0xFLL];
  v50 = v10 & 0xFFFFFFFD ^ 0x705FC482;
  LODWORD(STACK[0xAA8]) = v50;
  v51 = v50 - 1026566002 + ((2 * (v50 & 0x42CFD89C ^ (v10 | 0x7FFFFFEF))) ^ 0x25) + 1;
  LOBYTE(v51) = (*(&STACK[0xA720] + (v51 ^ 0xC2CFD88E)) ^ 0x1E) - (v51 ^ 0x8E) + ((v51 ^ 0x8E) << 7);
  v52 = (v10 & 0xFFFFFFFC ^ 0x705FC483) - 1477465075 - ((2 * (v10 & 0xFFFFFFFC ^ 0x705FC483)) & 0x4FDF581A);
  HIDWORD(v12) = v29;
  LODWORD(v12) = (v29 ^ 0x58) << 24;
  LODWORD(STACK[0xAC8]) = v52 ^ 0xA7EFAC0D;
  v53 = STACK[0xB78];
  v54 = STACK[0xB88];
  v55 = *(&off_278E1E490 + SLODWORD(STACK[0xA28])) - 4;
  LOBYTE(v29) = v55[(33 * ((LOBYTE(STACK[0xB88]) - 117 * *(STACK[0xB78] + (v36 ^ 0xEBLL))) ^ 0x7E)) ^ 0x66];
  v56 = v55[((*(&STACK[0xA720] + (v52 ^ 0xA7EFAC0D)) ^ 0x1E) - (v52 ^ 0xD) + ((v52 ^ 0xD) << 7) - 75) ^ 0xB6];
  v57 = *(&off_278E1E490 + SLODWORD(STACK[0xA48])) - 4;
  LODWORD(v55) = (v10 & 0xFFFFFFF9 ^ 0x705FC486) + 643379718 + ((2 * ((v10 & 0xFFFFFFF9 ^ 0x705FC486) & 0x26593210 ^ (v10 | 0x7FFFFFEF))) ^ 0x2D) + 1;
  LODWORD(v45) = v57[v43 ^ 0x44];
  LODWORD(STACK[0xAE0]) = v55 ^ 0x26593206;
  v58 = v39 ^ 0x4DLL;
  v59 = STACK[0xB80];
  LODWORD(v45) = (((v45 + 108) ^ 0x48) << 24) | (((27 * (*(STACK[0xB80] + v58) ^ 0xD6)) ^ 0x23) << 16);
  LODWORD(v58) = v42[(v51 - 75) ^ 0xC2];
  v60 = (v12 >> 27) | ((v41 ^ 0x9A) << 16);
  HIDWORD(v12) = v42[((*(&STACK[0xA720] + (v55 ^ 0x26593206)) ^ 0x1E) - (v55 ^ 6) + ((v55 ^ 6) << 7) - 75) ^ 0xA7];
  LODWORD(v12) = (HIDWORD(v12) ^ 0xFFFFFFBF) << 24;
  LODWORD(STACK[0xAD0]) = v10;
  v61 = v10 & 0xFFFFFFF5 ^ 0x705FC48A;
  LODWORD(STACK[0xA90]) = v61;
  v62 = v61 + 1480895288 - ((2 * v61) & 0xB0895670);
  LOBYTE(v51) = *(&STACK[0xA720] + (v62 ^ 0x5844AB38));
  LOBYTE(v62) = *(STACK[0xB50] + ((129 * (v62 ^ 0x38) + 213) & 0xF9 ^ 0x90));
  v63 = STACK[0xB50];
  LODWORD(v55) = v60 & 0xFFFF00FF | (((33 * ((v54 - 117 * *(v53 + ((v12 >> 29) ^ 0xEBLL))) ^ 0x7E)) ^ 0xCA) << 8) | (553648128 * ((v54 - 117 * *(v53 + (v27 ^ 0xEBLL))) ^ 0x7E));
  LODWORD(STACK[0xA98]) = v55;
  v64 = STACK[0xBA8];
  v65 = (v10 & 0xFFFFFFF3 ^ 0x705FC48E) - 141410463 - ((2 * (v10 & 0xFFFFFFF3 ^ 0x705FC48E)) & 0xEF247EC2);
  v66 = (v28 + 59 * *(STACK[0xBA8] + (((v29 ^ 0xEC) - 43) ^ 0x14))) | ((*(*(&off_278E1E490 + SLODWORD(STACK[0xA10])) + ((v28 + 59 * *(STACK[0xBA8] + (((((v51 ^ 0x1E) + (v62 ^ 0x40) - 74) ^ 0x38) - 43) ^ 0x14))) ^ 0xCBLL) - 4) ^ 0xC3) << 8);
  LODWORD(STACK[0xAB8]) = v65 ^ 0xF7923F61;
  v67 = (*(&STACK[0xA720] + (v65 ^ 0xF7923F61)) ^ 0x1E) - (v65 ^ 0x61) + ((v65 ^ 0x61) << 7) - 75;
  HIDWORD(v12) = v67 ^ 0x55555555;
  LODWORD(v12) = (v67 ^ 0x20) << 24;
  v68 = v45 | ((v58 ^ 0xF6) << 8);
  LOBYTE(v45) = v28;
  v69 = STACK[0xB98];
  v70 = (v57[(33 * ((v54 - 117 * *(v53 + (v37 ^ 0xEBLL))) ^ 0x7E)) ^ 0xBDLL] + 108) ^ 0x97;
  LODWORD(v57) = v57[(27 * ((*(STACK[0xB98] + ((v12 >> 28) ^ 0x6DLL)) - 10) ^ 0x10)) ^ 0xBDLL];
  HIDWORD(v12) = ~v57;
  LODWORD(v12) = ((v57 + 108) ^ 0x6A) << 24;
  v71 = (v70 << 24) | (((v28 + 59 * *(v64 + ((((LODWORD(STACK[0xAC0]) - 76) ^ 0xB8) - 43) ^ 0x14))) ^ 0x81) << 16);
  v72 = STACK[0xB90];
  LOBYTE(v57) = *(STACK[0xB90] + ((v12 >> 25) ^ 0xB5)) - 50;
  v73 = v68 | v56 ^ 0xE;
  LODWORD(STACK[0xAC0]) = v73;
  v74 = v66 | v71;
  LODWORD(STACK[0xAB0]) = v66 | v71;
  LODWORD(v57) = v47 | ((*(v63 + (((((v57 ^ 0x15) + 70) ^ 0x62) - 43) ^ 0x96)) ^ 0xFFFFFFBF) << 24);
  v75 = v57 & 0x5B3286C;
  v76 = STACK[0xA78];
  v77 = v57 + 95627364;
  LODWORD(v29) = STACK[0xBC8];
  LODWORD(v57) = ((LODWORD(STACK[0xA78]) ^ 0x1F4E0526 ^ v73) + 1146543917 - ((2 * (LODWORD(STACK[0xA78]) ^ 0x1F4E0526 ^ v73)) & 0x88ADBE5A)) ^ LODWORD(STACK[0xBC8]);
  LODWORD(v53) = STACK[0xA70];
  LODWORD(v57) = (v57 - 577373294 - ((2 * v57) & 0xBB2BF724)) ^ LODWORD(STACK[0xA70]);
  v78 = LODWORD(STACK[0xA78]) ^ 0x1F4E05DF;
  v79 = v77 - 2 * (v75 ^ v47 & 8);
  LODWORD(STACK[0xAA0]) = v79;
  v80 = ((v78 ^ v74) + 1146543917 - ((2 * (v78 ^ v74)) & 0x88ADBE5A)) ^ v29;
  v81 = ((v76 ^ 0x1F4E053B ^ v55) + 1146543917 - ((2 * (v76 ^ 0x1F4E053B ^ v55)) & 0x88ADBE5A)) ^ v29;
  v82 = (LODWORD(STACK[0xA08]) ^ v79) + 1146543917 - ((2 * (LODWORD(STACK[0xA08]) ^ v79)) & 0x88ADBE5A);
  v83 = (v81 - 577373294 - ((2 * v81) & 0xBB2BF724)) ^ v53;
  v84 = (v83 ^ 0xDFC86A5B) - ((2 * (v83 ^ 0xDFC86A5B)) & 0x3EE086BA);
  v85 = (v80 - 577373294 - ((2 * v80) & 0xBB2BF724)) ^ v53;
  v86 = ((v82 ^ v29) - 577373294 - ((2 * (v82 ^ v29)) & 0xBB2BF724)) ^ v53;
  v87 = (v86 ^ 0x5C68FD5u) - ((2 * (v86 ^ 0x5C68FD5u)) & 0x10D77A94CLL) - 0x79CBD4C879442B5ALL;
  v88 = *(&STACK[0xC0A0] + (BYTE1(v87) ^ 0xD4)) ^ *(&STACK[0x3E50] + ((v45 + 59 * *(v64 + (((HIBYTE(v83) ^ 0xDF) - 43) ^ 0x14))) ^ 0x81u));
  LODWORD(v29) = (v88 ^ 0x76B19EDA) - 294117375 - 2 * ((v88 ^ 0x76B19EDA) & 0x6E782005 ^ v88 & 4);
  v89 = (v57 ^ 0xA8CB1A0F) - ((2 * (v57 ^ 0xA8CB1A0F)) & 0xC902B832) + 0x191EDF1C64815C19;
  v90 = v29 ^ *(&STACK[0xEB40] + (BYTE2(v89) ^ 0x81));
  v91 = (v85 ^ 0xF791E3C4) - ((2 * (v85 ^ 0xF791E3C4)) & 0x13259C278) - 0x603059E966D31EC4;
  LODWORD(v29) = *(&STACK[0xC0A0] + (BYTE1(v91) ^ 0xE1)) ^ *(&STACK[0xEB40] + (BYTE2(v87) ^ 0xBBLL));
  v92 = (v29 - 294117375 - ((2 * v29) & 0xDCF04002)) ^ *(&STACK[0xE0E0] + (v83 ^ 0x5Bu));
  v93 = (v90 - 294117375 - ((2 * v90) & 0xDCF04002)) ^ *(&STACK[0xE0E0] + (v85 ^ 0xC4u));
  v94 = (v92 - 1731608869 - ((2 * v92) & 0x31937DB6)) ^ *(&STACK[0x3E50] + ((4 * (v89 >> 24)) ^ 0x647B7C7190));
  v95 = *(&STACK[0x3E50] + ((4 * (v87 >> 24)) ^ 0x218D0ACDE18)) ^ *(&STACK[0xEB40] + (27 * ((*(v69 + (((v85 >> 12) & 0xF0 | (v85 >> 20) & 0xF) ^ 0x74)) - 10) ^ 0x10))) ^ 0x76B19EDA;
  LODWORD(v57) = (v95 - 294117375 - ((2 * v95) & 0xDCF04002)) ^ *(&STACK[0xE0E0] + (v57 ^ 0xFu));
  v96 = v84 - 1620032675;
  v97 = (v57 - 294117375 - ((2 * v57) & 0xDCF04002)) ^ *(&STACK[0xC0A0] + (((v84 + 17245) >> 8) ^ 0x43));
  LODWORD(v57) = *(&STACK[0xEB40] + (BYTE2(v96) ^ 0x70)) ^ *(&STACK[0x3E50] + ((4 * (v91 >> 24)) ^ 0x27F3E985A64)) ^ *(&STACK[0xC0A0] + (BYTE1(v89) ^ 0x5CLL)) ^ *(&STACK[0xE0E0] + (v86 ^ 0xD5u));
  v98 = (v94 ^ 0x55B61925) - ((2 * (v94 ^ 0x55B61925)) & 0x15DE728F2) + 0x5B60549DAEF39479;
  v99 = (v97 ^ 0xA0F595EB) - ((2 * (v97 ^ 0xA0F595EB)) & 0x1E92621C4) + 0x3DBCB8DEF49310E2;
  LODWORD(v89) = *(&STACK[0x3E50] + ((4 * (v98 >> 24)) ^ 0x16D815276B8)) ^ 0x76B19EDA ^ *(&STACK[0xEB40] + (BYTE2(v99) ^ 0x93));
  v100 = (v57 ^ 0xC2B5F457) - ((2 * (v57 ^ 0xC2B5F457)) & 0xD0E0C68) + 0x2B7313AC06870634;
  LODWORD(v87) = (v89 - 294117375 - ((2 * v89) & 0xDCF04002)) ^ *(&STACK[0xC0A0] + (BYTE1(v100) ^ 6));
  v101 = (v93 ^ 0x6046B587) - ((2 * (v93 ^ 0x6046B587)) & 0x186639508) + 0x50B41EB1C331CA84;
  v102 = *(&STACK[0x3E50] + ((4 * (v101 >> 24)) ^ 0x142D07AC70CLL)) ^ *(&STACK[0xEB40] + (BYTE2(v98) ^ 0xF3)) ^ 0x76B19EDA;
  LODWORD(v98) = v102 - 294117375 - ((2 * v102) & 0xDCF04002);
  v103 = (v93 >> 12) & 0xF0 | (v93 >> 20) & 0xF;
  v104 = (v87 - 294117375 - ((2 * v87) & 0xDCF04002)) ^ *(&STACK[0xE0E0] + (v93 ^ 0x87u));
  v105 = v98 ^ *(&STACK[0xC0A0] + (((*(v72 + (((v97 >> 1) & 0x80 | (v97 >> 9)) ^ 0x7FLL)) - 50) ^ 0x15) + 70));
  LODWORD(v57) = (v105 - 294117375 - ((2 * v105) & 0xDCF04002)) ^ *(&STACK[0xE0E0] + (v57 ^ 0x57u));
  v106 = *(&STACK[0x3E50] + ((4 * (v100 >> 24)) ^ 0xADCC4EB018)) ^ 0x76B19EDA ^ *(&STACK[0xEB40] + (27 * (*(v59 + (v103 ^ 0x29)) ^ 0xD6)));
  v107 = (v106 - 294117375 - ((2 * v106) & 0xDCF04002)) ^ *(&STACK[0xC0A0] + (27 * ((*(v69 + (((v94 >> 4) & 0xF0 | (v94 >> 12)) ^ 0xFCLL)) - 10) ^ 0x10)));
  LODWORD(v99) = *(&STACK[0xEB40] + (BYTE2(v100) ^ 0x87)) ^ 0x76B19EDA ^ *(&STACK[0x3E50] + ((4 * (v99 >> 24)) ^ 0xF6F2E37BD0));
  v108 = (v107 - 294117375 - ((2 * v107) & 0xDCF04002)) ^ *(&STACK[0xE0E0] + (v97 ^ 0xEBu));
  v109 = *(&STACK[0xE0E0] + (v94 ^ 0x25u)) ^ *(&STACK[0xC0A0] + (BYTE1(v101) ^ 0xCALL)) ^ (v99 - 294117375 - ((2 * v99) & 0xDCF04002));
  HIDWORD(v12) = *(STACK[0xBB0] + (((v104 >> 1) & 0x80 | (v104 >> 9)) ^ 0x3CLL));
  LODWORD(v12) = (HIDWORD(v12) ^ 0x4E) << 24;
  v110 = (v104 ^ 0x62D047D6) - ((2 * (v104 ^ 0x62D047D6)) & 0x4B7FACA0) + 0x45C3ABDE25BFD650;
  LODWORD(v98) = (v109 ^ 0xFA89DF67) - ((2 * (v109 ^ 0xFA89DF67)) & 0x24EBA9DE) - 1837771537;
  LODWORD(v100) = *(&STACK[0x3E50] + ((4 * (v110 >> 24)) ^ 0x1170EAF7894)) ^ *(&STACK[0xEB40] + (BYTE2(v98) ^ 0x75)) ^ 0x76B19EDA;
  LODWORD(v103) = v100 - 294117375 - ((2 * v100) & 0xDCF04002);
  v111 = (v108 ^ 0xD442DF0A) - ((2 * (v108 ^ 0xD442DF0A)) & 0x1561B7D78) + 0x2C593157AB0DBEBCLL;
  LODWORD(v103) = v103 ^ *(&STACK[0xC0A0] + (BYTE1(v111) ^ 0xBELL));
  v112 = (v57 ^ 0x35F0ACA2) - ((2 * (v57 ^ 0x35F0ACA2)) & 0x11995E902) - 0x5A1B220673350B7FLL;
  v113 = *(&STACK[0x3E50] + ((4 * (v112 >> 24)) ^ 0x2979377E630)) ^ *(&STACK[0xEB40] + (BYTE2(v110) ^ 0xBFLL)) ^ 0x76B19EDA;
  LODWORD(v57) = (v103 - 294117375 - ((2 * v103) & 0xDCF04002)) ^ *(&STACK[0xE0E0] + (v57 ^ 0xA2u));
  v114 = *(&STACK[0xE0E0] + (v108 ^ 0xAu)) ^ *(&STACK[0xC0A0] + (BYTE1(v98) ^ 0xD4)) ^ (v113 - 294117375 - ((2 * v113) & 0xDCF04002));
  v115 = *(&STACK[0x3E50] + ((4 * (v111 >> 24)) ^ 0xB164C55EACLL)) ^ *(&STACK[0xEB40] + (BYTE2(v112) ^ 0xCALL)) ^ 0x76B19EDA;
  v116 = (v115 - 294117375 - ((2 * v115) & 0xDCF04002)) ^ *(&STACK[0xC0A0] + (((v12 >> 25) ^ 0xF2) + 70));
  LODWORD(v99) = *(&STACK[0x3E50] + (((*(v72 + (((v109 >> 17) & 0x80 | (v109 >> 25)) ^ 0xC8)) - 50) ^ 0x15) + 70)) ^ 0x76B19EDA ^ *(&STACK[0xEB40] + (BYTE2(v111) ^ 0xDLL));
  LODWORD(v99) = (v99 - 294117375 - ((2 * v99) & 0xDCF04002)) ^ *(&STACK[0xC0A0] + (BYTE1(v112) ^ 0xF4));
  v117 = (v116 - 294117375 - ((2 * v116) & 0xDCF04002)) ^ *(&STACK[0xE0E0] + (v109 ^ 0x67u));
  v118 = (v99 - 294117375 - ((2 * v99) & 0xDCF04002)) ^ *(&STACK[0xE0E0] + (v104 ^ 0xD6u));
  v119 = (v57 ^ 0x6D737F89) - ((2 * (v57 ^ 0x6D737F89)) & 0x163F22F68) - 0x472A16BB4E06E84CLL;
  v120 = (v118 ^ 0xC0B3206C) - ((2 * (v118 ^ 0xC0B3206C)) & 0xBF06D880) + 0x3F119C285F836C40;
  v121 = *(&STACK[0x3E50] + ((4 * (v119 >> 24)) ^ 0x2E357A512C4)) ^ 0x76B19EDA ^ *(&STACK[0xEB40] + (BYTE2(v120) ^ 0x83));
  v122 = (v117 ^ 0xE1B273A8) - ((2 * (v117 ^ 0xE1B273A8)) & 0x17EB631EELL) + 0x1C1B6CDBF5B18F7;
  LODWORD(v98) = (v121 - 294117375 - ((2 * v121) & 0xDCF04002)) ^ *(&STACK[0xC0A0] + (BYTE1(v122) ^ 0x18));
  v123 = (v114 ^ 0xB958CB75) - ((2 * (v114 ^ 0xB958CB75)) & 0x14675078) - 0x1E28FB63F5CC57C4;
  LODWORD(v103) = v98 - 294117375 - ((2 * v98) & 0xDCF04002);
  v124 = ((v57 & 1) << 7) | (v57 >> 1);
  v125 = STACK[0xBA8];
  LODWORD(v57) = *(&STACK[0xEB40] + ((v45 + 59 * *(STACK[0xBA8] + (((BYTE2(v57) ^ 0x73) - 43) ^ 0x14))) ^ 0x81u)) ^ *(&STACK[0x3E50] + ((4 * (v123 >> 24)) ^ 0x3875C127028)) ^ *(&STACK[0xC0A0] + (BYTE1(v120) ^ 0x6CLL)) ^ *(&STACK[0xE0E0] + (v117 ^ 0xA8u));
  v126 = *(&STACK[0x3E50] + ((4 * (v122 >> 24)) ^ 0x706DB36FCLL)) ^ *(&STACK[0xEB40] + (33 * ((LOBYTE(STACK[0xB88]) - 117 * *(STACK[0xB78] + (((v114 >> 13) & 0xF8 | (v114 >> 21) & 7) ^ 0x29))) ^ 0x7E))) ^ 0x76B19EDA;
  v127 = v103 ^ *(&STACK[0xE0E0] + (v114 ^ 0x75u));
  v128 = *(&STACK[0xC0A0] + (BYTE1(v119) ^ 0x17)) ^ *(&STACK[0xE0E0] + (v118 ^ 0x6Cu)) ^ (v126 - 294117375 - ((2 * v126) & 0xDCF04002));
  v129 = *(&STACK[0x3E50] + ((4 * (v120 >> 24)) ^ 0xFC4670A17CLL)) ^ 0x76B19EDA ^ *(&STACK[0xEB40] + (BYTE2(v122) ^ 0x5BLL));
  v130 = (v129 - 294117375 - ((2 * v129) & 0xDCF04002)) ^ *(&STACK[0xC0A0] + (BYTE1(v123) ^ 0xA8));
  v131 = (v130 - 294117375 - ((2 * v130) & 0xDCF04002)) ^ *(&STACK[0xE0E0] + (((*(v72 + (v124 ^ 0x71)) - 50) ^ 0x15) + 70));
  v132 = (v128 ^ 0x58EAB8DD) - ((2 * (v128 ^ 0x58EAB8DD)) & 0x5BB02A6E);
  v133 = (v128 >> 5) | (8 * (v128 & 0x1F));
  v134 = (v127 ^ 0x54F8D3BFu) - ((2 * (v127 ^ 0x54F8D3BFu)) & 0x1D6A98DFCLL) - 0x4A38636414AB3902;
  v135 = (v128 >> 1) & 0x80 | (v128 >> 9);
  v136 = *(&STACK[0x3E50] + ((4 * (v134 >> 24)) ^ 0x2D71E726FACLL)) ^ 0x76B19EDA ^ *(&STACK[0xEB40] + (*(STACK[0xB50] + (((BYTE2(v131) ^ 1) - 43) ^ 0x96)) ^ 0xBFLL));
  v137 = (v136 - 294117375 - ((2 * v136) & 0xDCF04002)) ^ *(&STACK[0xC0A0] + (((*(v72 + (v135 ^ 0xE9)) - 50) ^ 0x15) + 70));
  v138 = (v137 - 294117375 - ((2 * v137) & 0xDCF04002)) ^ *(&STACK[0xE0E0] + (v57 ^ 0x27u));
  v139 = (v57 ^ 0x4CE20A27) - ((2 * (v57 ^ 0x4CE20A27)) & 0x1FEFD4608) - 0x811A91E00815CFCLL;
  LODWORD(v57) = *(&STACK[0x3E50] + ((4 * (v139 >> 24)) ^ 0x3DFB95B87FCLL)) ^ 0x76B19EDA ^ *(&STACK[0xEB40] + (BYTE2(v134) ^ 0x54));
  LODWORD(v57) = *(&STACK[0xE0E0] + (33 * ((LOBYTE(STACK[0xB88]) - 117 * *(STACK[0xB78] + (v133 ^ 5))) ^ 0x7E))) ^ *(&STACK[0xC0A0] + (BYTE1(v131) ^ 0x53u)) ^ (v57 - 294117375 - ((2 * v57) & 0xDCF04002));
  v132 -= 0x4320F69ED227EAC9;
  LODWORD(v133) = *(&STACK[0x3E50] + ((4 * (v132 >> 24)) ^ 0x2F37C2584B4)) ^ *(&STACK[0xEB40] + (BYTE2(v139) ^ 0x7ELL)) ^ 0x76B19EDA;
  v140 = (v131 >> 17) & 0x80 | (v131 >> 25);
  v141 = *(&STACK[0xE0E0] + (v131 ^ 0xC4u)) ^ *(&STACK[0xC0A0] + (BYTE1(v134) ^ 0xC6)) ^ (v133 - 294117375 - ((2 * v133) & 0xDCF04002));
  LODWORD(v134) = *(&STACK[0x3E50] + (((*(v72 + (v140 ^ 0x25)) - 50) ^ 0x15) + 70)) ^ *(&STACK[0xC0A0] + (BYTE1(v139) ^ 0xA3)) ^ 0x76B19EDA;
  v142 = (v134 - 294117375 - ((2 * v134) & 0xDCF04002)) ^ *(&STACK[0xE0E0] + (v127 ^ 0xBFu));
  v143 = (v142 - 294117375 - ((2 * v142) & 0xDCF04002)) ^ *(&STACK[0xEB40] + (BYTE2(v132) ^ 0xD8));
  v144 = (v138 ^ 0x98DEC90A) - ((2 * (v138 ^ 0x98DEC90A)) & 0xCC83B52) - 0x6D8631F6F99BE257;
  v145 = (v143 ^ 0x9793CB18) - ((2 * (v143 ^ 0x9793CB18)) & 0x832AEA7ELL) - 0x6DC8D642BE6A8AC1;
  LODWORD(v103) = *(&STACK[0x3E50] + ((4 * (v144 >> 24)) ^ 0x249E7382418)) ^ 0x76B19EDA ^ *(&STACK[0xEB40] + (BYTE2(v145) ^ 0x95));
  v146 = (v57 >> 5) & 0xF8 | (v57 >> 13);
  LODWORD(v139) = (v141 ^ 0x62B92C20) - ((2 * (v141 ^ 0x62B92C20)) & 0x14E41E24) + 175247122;
  v147 = (v57 ^ 0x80D36743) - ((2 * (v57 ^ 0x80D36743)) & 0x14B52CA94) - 0x2CF7361E5A569AB6;
  LODWORD(v124) = *(&STACK[0xE0E0] + (v57 ^ 0x43u)) ^ *(&STACK[0xC0A0] + (BYTE1(v139) ^ 0xFLL));
  LODWORD(v57) = *(&STACK[0x3E50] + ((4 * (v147 >> 24)) ^ 0x34C23278694)) ^ 0x98C9BEDB ^ *(&STACK[0xEB40] + (BYTE2(v144) ^ 0x64)) ^ *(&STACK[0xC0A0] + (BYTE1(v145) ^ 0x75));
  LODWORD(v57) = v57 - 294117375 - ((2 * v57) & 0xDCF04002);
  LODWORD(v144) = *(&STACK[0xC0A0] + (BYTE1(v144) ^ 0x1DLL)) ^ *(&STACK[0xEB40] + (BYTE2(v147) ^ 0xA9));
  LODWORD(v147) = v124 ^ (v103 - 294117375 - ((2 * v103) & 0xDCF04002));
  v148 = STACK[0xBB8];
  v149 = *(&STACK[0xE0E0] + (v143 ^ 0x18u)) ^ *(&STACK[0x3E50] + (33 * ((*(STACK[0xBB8] + (((v141 >> 21) & 0xF8 | (v141 >> 29)) ^ 0x3ELL)) - 106) ^ 0x15))) ^ (v144 - 294117375 - ((2 * v144) & 0xDCF04002));
  LODWORD(v145) = *(&STACK[0x3E50] + ((4 * (v145 >> 24)) ^ 0x248DCA6F504)) ^ *(&STACK[0xEB40] + (BYTE2(v139) ^ 0x72)) ^ 0x76B19EDA;
  v150 = (v145 - 294117375 - ((2 * v145) & 0xDCF04002)) ^ *(&STACK[0xE0E0] + (v138 ^ 0xAu));
  LODWORD(v145) = v150 - 294117375 - ((2 * v150) & 0xDCF04002);
  v151 = (v147 ^ 0x41BFA31) - ((2 * (v147 ^ 0x41BFA31)) & 0xC73C4EDCLL);
  v152 = (16 * (v147 & 0xF)) | (v147 >> 4);
  LODWORD(v147) = *(&STACK[0xE0E0] + (v141 ^ 0x20u));
  v153 = v57 ^ v147;
  LODWORD(v144) = (v57 ^ v147 ^ 0xF6758E48) - ((2 * (v57 ^ v147 ^ 0xF6758E48)) & 0xB19EF76C);
  LODWORD(v147) = v57 ^ ~v147;
  LODWORD(v57) = v145 ^ *(&STACK[0xC0A0] + (33 * ((LOBYTE(STACK[0xB88]) - 117 * *(STACK[0xB78] + (v146 ^ 0xD0))) ^ 0x7E)));
  HIDWORD(v12) = *(STACK[0xBB0] + (((v149 >> 9) & 0x80 | (v149 >> 17) & 0x7F) ^ 0x4ELL));
  LODWORD(v12) = (HIDWORD(v12) ^ 0x4E) << 24;
  v154 = (v153 >> 20) & 0xF0 | (v147 >> 28);
  v155 = v151 + 0x56969284639E276ELL;
  v156 = (v57 ^ 0x1B52C739) - ((2 * (v57 ^ 0x1B52C739)) & 0xB7547F0) - 0x7C878B18FA455C08;
  v157 = (v149 ^ 0x7AA3F5B8) + 0x5033238005DDC6F7 + (~(2 * (v149 ^ 0x7AA3F5B8)) | 0xFFFFFFFFF4447213);
  LODWORD(v103) = *(&STACK[0x3E50] + ((4 * (v155 >> 24)) ^ 0x15A5A4A118CLL)) ^ 0x76B19EDA ^ *(&STACK[0xEB40] + (BYTE2(v156) ^ 0xBALL));
  v158 = (v103 - 294117375 - ((2 * v103) & 0xDCF04002)) ^ *(&STACK[0xE0E0] + (v153 ^ 0x48u));
  v159 = (v158 - 294117375 - ((2 * v158) & 0xDCF04002)) ^ *(&STACK[0xC0A0] + (BYTE1(v157) ^ 0xC6));
  LODWORD(v154) = *(&STACK[0x3E50] + (27 * ((*(STACK[0xB98] + (v154 ^ 0xD)) - 10) ^ 0x10))) ^ *(&STACK[0xC0A0] + (BYTE1(v156) ^ 0xA3)) ^ 0x76B19EDA;
  LODWORD(v154) = (v154 - 294117375 - ((2 * v154) & 0xDCF04002)) ^ *(&STACK[0xEB40] + (BYTE2(v155) ^ 0x9ELL));
  LODWORD(v144) = v144 - 657491018;
  LODWORD(v157) = *(&STACK[0xEB40] + (BYTE2(v144) ^ 0xCFLL)) ^ *(&STACK[0x3E50] + ((v157 >> 22) & 0x140CC8FFFFCLL ^ 0x140CC8E0014)) ^ 0x76B19EDA;
  LODWORD(v157) = (v157 - 294117375 - ((2 * v157) & 0xDCF04002)) ^ *(&STACK[0xC0A0] + (BYTE1(v155) ^ 0x27));
  LODWORD(v57) = (v157 - 294117375 - ((2 * v157) & 0xDCF04002)) ^ *(&STACK[0xE0E0] + (v57 ^ 0x39u));
  LODWORD(v145) = *(&STACK[0xC0A0] + (BYTE1(v144) ^ 0x7BLL)) ^ *(&STACK[0xEB40] + (((v12 >> 25) ^ 0xF2) + 70));
  v160 = (v154 - 294117375 - ((2 * v154) & 0xDCF04002)) ^ *(&STACK[0xE0E0] + (v149 ^ 0xB8u));
  LODWORD(v156) = (v145 - 1731608869 - ((2 * v145) & 0x31937DB6)) ^ *(&STACK[0x3E50] + ((4 * (v156 >> 24)) ^ 0x20DE1D39C14));
  LODWORD(v156) = (v156 - 294117375 - ((2 * v156) & 0xDCF04002)) ^ *(&STACK[0xE0E0] + (27 * (*(STACK[0xB80] + (v152 ^ 0x5E)) ^ 0xD6)));
  v161 = (v159 ^ 0x3FF090B2) - ((2 * (v159 ^ 0x3FF090B2)) & 0x1A73C22A0) - 0x53AAC2B12C61EEB0;
  v162 = (v57 ^ 0x141FC52B) - ((2 * (v57 ^ 0x141FC52B)) & 0x1ECBE2DE2) + 0xB5C7743F65F16F1;
  v163 = (v156 ^ 0xF9388C5A) - ((2 * (v156 ^ 0xF9388C5A)) & 0x1DE658F04) + 0x11584CD0EF32C782;
  LODWORD(v69) = *(&STACK[0xEB40] + (BYTE2(v163) ^ 0x32)) ^ *(&STACK[0x3E50] + ((4 * (v161 >> 24)) ^ 0x2B154F53B4CLL)) ^ *(&STACK[0xC0A0] + (BYTE1(v162) ^ 0x16)) ^ *(&STACK[0xE0E0] + (v160 ^ 0x78u));
  LODWORD(STACK[0xA88]) = v69;
  v164 = (v160 ^ 0x1C165478u) - ((2 * (v160 ^ 0x1C165478u)) & 0xD058412) + 0x6AACB7820682C209;
  LODWORD(v155) = *(&STACK[0xE0E0] + (v57 ^ 0x2Bu)) ^ *(&STACK[0xC0A0] + (BYTE1(v163) ^ 0xC7));
  LODWORD(v155) = *(&STACK[0x3E50] + ((4 * (v164 >> 24)) ^ 0x1AAB2DE0818)) ^ *(&STACK[0xEB40] + (BYTE2(v161) ^ 0x9ELL)) ^ (v155 - 294117375 - ((2 * v155) & 0xDCF04002));
  v165 = *(&STACK[0xC0A0] + (BYTE1(v161) ^ 0x11)) ^ *(&STACK[0xEB40] + (BYTE2(v164) ^ 0x82));
  LODWORD(v63) = v165 - 1731608869 - ((2 * v165) & 0x31937DB6);
  LODWORD(v58) = *(&STACK[0xE0E0] + (v156 ^ 0x5Au)) ^ *(&STACK[0x3E50] + ((4 * (v162 >> 24)) ^ 0x2D71DD0FD8));
  v166 = *(&STACK[0xE0E0] + (v159 ^ 0xB2u)) ^ *(&STACK[0xC0A0] + (BYTE1(v164) ^ 0xC2));
  v167 = STACK[0xBA0];
  LODWORD(v57) = (v166 - 294117375 - ((2 * v166) & 0xDCF04002)) ^ *(&STACK[0xEB40] + ((v167 + 59 * *(v125 + (((BYTE2(v57) ^ 0x1F) - 43) ^ 0x14))) ^ 0x81u));
  LODWORD(v152) = (v57 - 1731608869 - ((2 * v57) & 0x31937DB6)) ^ *(&STACK[0x3E50] + ((4 * (v163 >> 24)) ^ 0x45613343BCLL));
  LODWORD(STACK[0xA80]) = v152;
  v168 = (v69 ^ 0xB54DFD33) - ((2 * (v69 ^ 0xB54DFD33)) & 0x9826DAB8) - 0x44786106B3EC92A4;
  v169 = (v152 ^ 0xED274971) - ((2 * (v152 ^ 0xED274971)) & 0xEFAD30CCLL) - 0x144B496E8829679ALL;
  LODWORD(v45) = *(&STACK[0x3E50] + ((4 * (v168 >> 24)) ^ 0x2EE1E7BE530)) ^ 0x76B19EDA;
  LODWORD(v57) = v45 ^ *(&STACK[0xEB40] + (BYTE2(v169) ^ 0xD6));
  LODWORD(v161) = *(&STACK[0xC0A0] + (BYTE1(v169) ^ 0x98)) ^ *(&STACK[0xEB40] + (BYTE2(v168) ^ 0x13));
  v170 = (v58 ^ v63 ^ 0xE671B152) - ((2 * (v58 ^ v63 ^ 0xE671B152)) & 0x5589E4EE) + 0x394515E2AC4F277;
  LODWORD(v69) = *(&STACK[0xC0A0] + (BYTE1(v170) ^ 0xF2));
  LODWORD(v57) = (v57 - 294117375 - ((2 * v57) & 0xDCF04002)) ^ v69;
  v171 = (v155 ^ 0xBB2F7A11) - ((2 * (v155 ^ 0xBB2F7A11)) & 0x15568A09ALL) - 0x63DBD944554BAFB3;
  LODWORD(v162) = *(&STACK[0x3E50] + ((4 * (v171 >> 24)) ^ 0x270909AEEA8));
  LODWORD(v161) = (v161 - 1731608869 - ((2 * v161) & 0x31937DB6)) ^ v162;
  HIDWORD(v12) = *(STACK[0xBB0] + (((v168 >> 9) & 0x80 | (BYTE2(v168) >> 1)) ^ 0x16));
  LODWORD(v12) = (HIDWORD(v12) ^ 0x4E) << 24;
  v172 = v45 ^ *(&STACK[0xEB40] + (33 * ((*(v148 + (((v169 >> 13) & 0xF8 | (BYTE2(v169) >> 5)) ^ 0x9B)) - 106) ^ 0x15)));
  v173 = (v172 - 294117375 - ((2 * v172) & 0xDCF04002)) ^ v69;
  LODWORD(v103) = *(&STACK[0xC0A0] + (*(STACK[0xB50] + (((BYTE1(v169) ^ 0x98) - 43) ^ 0x96)) ^ 0xBFLL)) ^ *(&STACK[0xEB40] + (((v12 >> 25) ^ 0xF2) + 70));
  LODWORD(v162) = (v103 - 1731608869 - ((2 * v103) & 0x31937DB6)) ^ v162;
  LODWORD(v155) = *(&STACK[0xE0E0] + (v155 ^ 0x11u));
  v174 = (v173 - 294117375 - ((2 * v173) & 0xDCF04002)) ^ v155;
  LODWORD(v57) = v155 ^ 0x2F8CF001 ^ (v57 - 294117375 - ((2 * v57) & 0xDCF04002));
  LODWORD(v163) = *(&STACK[0xE0E0] + ((v58 ^ v63) ^ 0x52u));
  LODWORD(v162) = (v162 - 294117375 - ((2 * v162) & 0xDCF04002)) ^ v163;
  LODWORD(v161) = v163 ^ 0xE01AA723 ^ (v161 - 294117375 - ((2 * v161) & 0xDCF04002));
  LODWORD(v163) = ((2 * v162) & 0xFBBAF7FE ^ 0xC0304646) + (v162 ^ 0x9DC7DCDC);
  LODWORD(v155) = ((2 * v174) & 0xFDF5FDFE ^ 0x5D11E002) + (v174 ^ 0x51760EFE);
  v175 = (v57 - v155 - 458709143) ^ 0xDE9057C9;
  LODWORD(v57) = 1681813933 * ((v161 - v163 - 668824949) ^ 0x9CAD0A93);
  LODWORD(v45) = -1681813933 * ((v161 - v163 - 668824949) ^ 0x9CAD0A93) + 1383518407 * v175;
  v176 = *(&STACK[0xC0A0] + (BYTE1(v171) ^ 0x50)) ^ *(&STACK[0xEB40] + (BYTE2(v170) ^ 0xC4));
  v177 = *(&STACK[0xEB40] + ((v167 + 59 * *(STACK[0xBA8] + (((BYTE2(v171) ^ 0xB4) - 43) ^ 0x14))) ^ 0x81u)) ^ *(&STACK[0x3E50] + (33 * ((LOBYTE(STACK[0xB88]) - 117 * *(STACK[0xB78] + (((v170 >> 21) & 0xF8 | ((v58 ^ ~v63) >> 29)) ^ 0xBBLL))) ^ 0x7E)));
  LODWORD(v162) = *(&STACK[0x3E50] + ((4 * (v169 >> 24)) ^ 0x3AED2DA45DCLL));
  v178 = (v176 - 1731608869 - ((2 * v176) & 0x31937DB6)) ^ v162;
  LODWORD(v161) = *(&STACK[0x3E50] + ((4 * (v170 >> 24)) ^ 0xE514578A8)) ^ *(&STACK[0xEB40] + (BYTE2(v171) ^ 0xB4));
  LODWORD(v168) = *(&STACK[0xC0A0] + (BYTE1(v168) ^ 0x6DLL));
  v179 = ((v177 ^ 0x76B19EDA) - 294117375 - 2 * ((v177 ^ 0x76B19EDA) & 0x6E782005 ^ v177 & 4)) ^ v168;
  LODWORD(v168) = ((v161 ^ 0x76B19EDA) - 294117375 - 2 * ((v161 ^ 0x76B19EDA) & 0x6E782005 ^ v161 & 4)) ^ v168;
  LODWORD(v170) = *(&STACK[0xEB40] + ((v167 + 59 * *(STACK[0xBA8] + (((BYTE2(v170) ^ 0xC4) - 43) ^ 0x14))) ^ 0x81u)) ^ *(&STACK[0xC0A0] + (27 * ((*(STACK[0xB98] + (((v171 >> 4) & 0xF0 | (BYTE1(v171) >> 4)) ^ 0x68)) - 10) ^ 0x10)));
  LODWORD(v170) = (v170 - 1731608869 - ((2 * v170) & 0x31937DB6)) ^ v162;
  LODWORD(v162) = *(&STACK[0xE0E0] + (LODWORD(STACK[0xA80]) ^ 0x71u));
  v180 = (v168 - 294117375 - ((2 * v168) & 0xDCF04002)) ^ v162;
  v181 = ((2 * v180) & 0xFFFFD9FA ^ 0x57DE8932) + (v180 ^ 0x5410B964);
  LODWORD(v152) = *(&STACK[0xE0E0] + (LODWORD(STACK[0xA88]) ^ 0x33u));
  LODWORD(v170) = (v170 - 294117375 - ((2 * v170) & 0xDCF04002)) ^ v152;
  LODWORD(v152) = v152 ^ 0xE52ED822 ^ (v178 - 294117375 - ((2 * v178) & 0xDCF04002));
  v182 = ((2 * v170) & 0xFAFDE8E6 ^ 0xCA5DA044) + (v170 ^ 0x98502C51);
  LODWORD(v170) = -859053977 * (((v162 ^ 0x2BEF5599 ^ (v179 - 294117375 - ((2 * v179) & 0xDCF04002))) - v181 - 259040769) ^ 0xFD52D9DD);
  LODWORD(v152) = -30740813 * ((v152 - v182 + 1127562698) ^ 0xF155635F) + 1609973513;
  LODWORD(v57) = v57 - v170;
  LODWORD(v170) = v170 + v152;
  LODWORD(v152) = v152 - (v45 + 757294349);
  LODWORD(v57) = v57 - v152;
  LODWORD(v162) = v45 + 757294349 - v170 + LODWORD(STACK[0xA04]);
  LODWORD(v170) = v162 ^ (v170 - 1609973513);
  LODWORD(v152) = (((v57 + 852679164) ^ (v152 - 852679164)) - ((2 * ((v57 + 852679164) ^ (v152 - 852679164))) & 0x44C4F8D4) - 1570603926) ^ 0x5D9D8395;
  LODWORD(v162) = ((2 * (v162 + v152 + 1)) & 0x3FDFCAE4) + ((v162 + v152 + 1) ^ 0x9FEFE572);
  LODWORD(v57) = v57 - 1127896019 + v162;
  LODWORD(v170) = v170 - v57;
  LODWORD(v171) = v163 - v57;
  LODWORD(STACK[0xA88]) = v181 - v170;
  v183 = (v152 ^ (v170 + 702724003)) + v182;
  v184 = v155 - v162 - ((2 * (v155 - v162) + 1930239588) & 0x9C290510) + 127603130;
  v185 = v181 - v170 - 504392867 - ((2 * (v181 - v170 - 504392867)) & 0x122710898) - 0x53B73D2F6EC77BB4;
  v186 = (v183 + 864126429) - ((2 * (v183 + 864126429)) & 0x1894C9B2) + 0x7BA263E40C4A64D9;
  STACK[0xA80] = v186;
  LOWORD(v181) = v155 - v162 - ((2 * (v155 - v162) + 7780) & 0x510) + 4538;
  v187 = (v184 ^ 0x4E148288u) - ((2 * (v184 ^ 0x4E148288u)) & 0x83102D9ALL) - 0x75E8B083BE77E933;
  LODWORD(v186) = *(&STACK[0xFE90] + ((4 * (v187 >> 24)) ^ 0x2285D3DF104)) ^ *(&STACK[0xE730] + (BYTE2(v186) ^ 0x4ALL)) ^ 0x3AF609D1 ^ *(&STACK[0x4B00] + (BYTE1(v185) ^ 0x84)) ^ *(&STACK[0xCF80] + (v171 - 57));
  LODWORD(v168) = STACK[0xA68];
  LODWORD(v186) = (v186 + 920450772 - ((2 * v186) & 0x6DB9EDA8)) ^ LODWORD(STACK[0xA68]);
  LODWORD(v155) = STACK[0xA58];
  LODWORD(v64) = STACK[0xA60];
  v188 = LODWORD(STACK[0xA58]) ^ LODWORD(STACK[0xA60]) ^ LODWORD(STACK[0xB08]) ^ (v186 + 112129334 - ((2 * v186) & 0xD5DEA6C));
  *(&STACK[0xA720] + LODWORD(STACK[0xBD0])) = *(*(&off_278E1E490 + SLODWORD(STACK[0x9F8])) + (HIBYTE(v188) ^ 0x28) - 12) ^ 0x82;
  v189 = STACK[0xB80];
  v190 = *(&off_278E1E490 + SLODWORD(STACK[0x9F0])) - 4;
  *(&STACK[0xA720] + LODWORD(STACK[0xAA8])) = (v190[(27 * (*(STACK[0xB80] + (((v188 >> 4) & 0xF0 | (v188 >> 12)) ^ 4)) ^ 0xD6)) ^ 0x26] + 114) ^ 0x4B;
  v191 = (v171 + 135877319);
  v192 = STACK[0xBD8];
  v193 = v191 - ((2 * v191) & 0xA9237D5ALL) + 0x596F3A345491BEADLL;
  LODWORD(v191) = *(&STACK[0xE730] + (BYTE2(v193) ^ 0x91)) ^ *(&STACK[0xFE90] + ((4 * (v185 >> 24)) ^ 0x2B1230B4244));
  LOBYTE(v103) = v181;
  v194 = STACK[0xB50];
  LODWORD(v191) = (v191 - 728880688 - ((2 * v191) & 0xA91C53A0)) ^ *(&STACK[0x4B00] + (*(STACK[0xB50] + (((BYTE1(v181) ^ 0x82) - 43) ^ 0x96)) ^ 0xBFLL));
  LODWORD(v191) = (v191 - 294117375 - ((2 * v191) & 0xDCF04002)) ^ *(&STACK[0xCF80] + (v183 - 35));
  LODWORD(v191) = (v191 + 920450772 - ((2 * v191) & 0x6DB9EDA8)) ^ v168;
  LODWORD(v191) = (v191 + 112129334 - ((2 * v191) & 0xD5DEA6C)) ^ v155;
  LODWORD(v191) = LODWORD(STACK[0xB30]) ^ v64 ^ (v191 + 185747444 - ((2 * v191) & 0x16248FE8));
  *(&STACK[0xA720] + LODWORD(STACK[0xA90])) = *(*(&off_278E1E490 + SLODWORD(STACK[0x9E8])) + (BYTE1(v191) ^ 0x9ELL) - 12) ^ 0x39;
  LODWORD(v162) = *(&STACK[0xE730] + (BYTE2(v187) ^ 0x88));
  v195 = STACK[0xA80];
  LODWORD(v162) = v162 ^ *(&STACK[0x4B00] + (BYTE1(STACK[0xA80]) ^ 0x64)) ^ 0x3AF609D1;
  LODWORD(v162) = (v162 - 294117375 - ((2 * v162) & 0xDCF04002)) ^ *(&STACK[0xCF80] + (LODWORD(STACK[0xA88]) + 93));
  LODWORD(v162) = (v162 - 294117375 - ((2 * v162) & 0xDCF04002)) ^ *(&STACK[0xFE90] + ((4 * (v193 >> 24)) ^ 0x165BCE8D150));
  LODWORD(v162) = (v162 + 920450772 - ((2 * v162) & 0x6DB9EDA8)) ^ v168;
  LODWORD(v163) = v155 ^ v64 ^ LODWORD(STACK[0xB40]) ^ (v162 + 112129334 - ((2 * v162) & 0xD5DEA6C));
  v196 = *(&off_278E1E490 + SLODWORD(STACK[0x9E0]));
  *(&STACK[0xA720] + LODWORD(STACK[0xAC8])) = *(v196 + (*(v194 + (((v188 ^ 0xFB) - 43) ^ 0x96)) ^ 0x1ALL)) ^ 0x54;
  v197 = v189;
  v198 = *(&off_278E1E490 + SLODWORD(STACK[0x9D8])) - 4;
  *(&STACK[0xA720] + LODWORD(STACK[0xB18])) = v198[(27 * (*(v189 + (((v163 >> 20) & 0xF0 | (v163 >> 28)) ^ 0x2ELL)) ^ 0xD6)) ^ 0x5ALL] ^ 0x3D;
  v199 = *(&off_278E1E490 + SLODWORD(STACK[0x9D0])) - 12;
  *(&STACK[0xA720] + LODWORD(STACK[0xB10])) = v199[BYTE2(v163) ^ 0xEDLL] ^ 8;
  v200 = *(&STACK[0xE730] + (BYTE2(v185) ^ 0x38)) ^ *(&STACK[0xFE90] + ((4 * (v195 >> 24)) ^ 0x1EE898F9030));
  v201 = (v200 - 728880688 - ((2 * v200) & 0xA91C53A0)) ^ *(&STACK[0x4B00] + (BYTE1(v193) ^ 0xBELL));
  LODWORD(v189) = (v201 - 294117375 - ((2 * v201) & 0xDCF04002)) ^ *(&STACK[0xCF80] + (v103 ^ 0x88u));
  LODWORD(v189) = (v189 + 920450772 - ((2 * v189) & 0x6DB9EDA8)) ^ v168;
  LODWORD(v189) = (v189 + 112129334 - ((2 * v189) & 0xD5DEA6C)) ^ v155;
  LODWORD(v189) = LODWORD(STACK[0xB60]) ^ v64 ^ (v189 + 95627364 - ((2 * v189) & 0xB6650C8));
  *(&STACK[0xA720] + LODWORD(STACK[0xAF8])) = (v190[BYTE1(v189) ^ 0xD3] + 114) ^ 0xE3;
  v202 = *(&off_278E1E490 + SLODWORD(STACK[0x9C8])) - 12;
  *(&STACK[0xA720] + LODWORD(STACK[0xAE8])) = v202[v163 ^ 0xELL] ^ 0xCA;
  *(&STACK[0xA720] + LODWORD(STACK[0xAF0])) = v202[v189 ^ 0xB3] ^ 0x5A;
  *(&STACK[0xA720] + LODWORD(STACK[0xAB8])) = v198[(27 * (*(v197 + (((v189 >> 20) & 0xF0 | (v189 >> 28)) ^ 0x86)) ^ 0xD6)) ^ 0x1FLL] ^ 0xC9;
  *(&STACK[0xA720] + LODWORD(STACK[0xB38])) = *(*(&off_278E1E490 + SLODWORD(STACK[0x9C4])) + (BYTE2(v191) ^ 0x87) - 8) ^ 0xA8;
  *(&STACK[0xA720] + LODWORD(STACK[0xB58])) = v198[BYTE3(v191) ^ 0x25] ^ 0xAC;
  HIDWORD(v12) = v199[BYTE2(v189) ^ 0xE5];
  LODWORD(v12) = (HIDWORD(v12) ^ 0x9C) << 24;
  v203 = *(STACK[0xBB0] + ((v12 >> 25) ^ 0x86));
  HIDWORD(v12) = v203;
  LODWORD(v12) = (v203 ^ 0x4E) << 24;
  *(&STACK[0xA720] + LODWORD(STACK[0xB28])) = ((v12 >> 25) ^ 0xF2) - ((2 * ((v12 >> 25) ^ 0xF2) + 12) & 0x3C) + 100;
  *(&STACK[0xA720] + LODWORD(STACK[0xB20])) = *(v196 + ((33 * ((*(STACK[0xBB8] + (((v191 >> 5) | (8 * (v191 & 0x1F))) ^ 0x6ALL)) - 106) ^ 0x15)) ^ 0x10)) ^ 0x69;
  LODWORD(v191) = v190[(27 * (*(v197 + (((v163 >> 4) & 0xF0 | (v163 >> 12)) ^ 0xEBLL)) ^ 0xD6)) ^ 0x3DLL] + 114;
  HIDWORD(v12) = v191 ^ 8;
  LODWORD(v12) = (v191 ^ 0xFFFFFFDF) << 24;
  *(&STACK[0xA720] + LODWORD(STACK[0xAE0])) = (27 * ((*(STACK[0xB98] + ((v12 >> 28) ^ 0x6DLL)) - 10) ^ 0x10)) ^ 0xE2;
  *(&STACK[0xA720] + LODWORD(STACK[0xB68])) = v199[BYTE2(v188) ^ 0x49] ^ 0xCB;
  return (*(v192 + 8 * ((27 * (((LODWORD(STACK[0xBD0]) + 1885324434 - 2 * ((LODWORD(STACK[0xBD0]) + 16) & STACK[0xAD8] ^ STACK[0xAD0] & 0xC)) ^ 0x705FC480u) > 0x63F)) ^ LODWORD(STACK[0xA54]))))();
}

uint64_t sub_244B8F928@<X0>(int a1@<W1>, unint64_t a2@<X2>, uint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v14 = v9 & (v11 + v8);
  *(v11 + a6 + a7) = *(a5 + ((*(*(v13 + 8 * a1) - 12 + 2 * (v14 ^ 6)) - 3460) ^ a2)) ^ (*(*(v13 + 8 * a4) + (v14 ^ a3)) - 2 * ((*(*(v13 + 8 * a4) + (v14 ^ a3)) + 8) & 0x1F ^ *(*(v13 + 8 * a4) + (v14 ^ a3)) & 1) - 122) ^ 0xF0;
  return (*(v12 + 8 * (((v11 + 1 == a8 + 16) * v10) ^ LODWORD(STACK[0xBC0]))))(1935554089);
}

uint64_t sub_244B8F9B4(uint64_t a1)
{
  v6 = a1 - ((2 * a1 + 423859150) & 0x919E0B2C) + 1433456509;
  v7 = *(*(v5 + 8 * (v2 ^ 0xE32)) - 4 + 2 * (v6 ^ v3));
  HIDWORD(v8) = v7 ^ 0x329F;
  LODWORD(v8) = ((v2 + 11230) ^ v7 ^ 0x8000) << 16;
  LOBYTE(v6) = 123 * *(*(v5 + 8 * (v2 - 1854)) + (v6 ^ (v3 + 24)) - 4);
  *(&STACK[0x8B70] + a1 - 1935554089) = *(&STACK[0xA720] + ((v8 >> 30) ^ 0x65F9)) ^ (v6 - 2 * ((v6 + 24) & 0x1F ^ v6 & 1) + 54) ^ 0x31;
  return (*(v4 + 8 * ((9974 * (a1 + 1 == v1 + 528)) ^ v2)))();
}

uint64_t sub_244B8FAB0()
{
  STACK[0xA98] = 0;
  v6 = v0 - v1 - 1941529000;
  STACK[0xB28] = &STACK[0x4660DB4A576F7074];
  STACK[0xB30] = &STACK[0x4660DB4A576F1434];
  STACK[0xAC8] = &STACK[0x4660DB4A576FAA34];
  STACK[0xB38] = &STACK[0x4660DB4A576F5B24];
  STACK[0xA80] = &STACK[0x4660DB4A576EEC94];
  STACK[0xAB8] = &STACK[0x4660DB4A576ED9E4];
  STACK[0xB18] = &STACK[0x4660DB4A576FD8B4];
  STACK[0xA88] = &STACK[0x10B18];
  v7 = STACK[0x960];
  LODWORD(STACK[0xBD0]) = LODWORD(STACK[0x960]) - 363831439;
  LODWORD(STACK[0xBC0]) = v7 - 1098706524;
  LODWORD(STACK[0xBC8]) = ((v2 - 14339) | 0x1A08) + 575860234;
  v8 = *(v5 + 8 * v2);
  LODWORD(STACK[0xA90]) = 2105515550;
  LODWORD(STACK[0xAD8]) = v6;
  LODWORD(STACK[0xAD0]) = v6 ^ 0x8C469E78;
  STACK[0xAA8] = 0xE616A31E7BF230EALL;
  LODWORD(STACK[0x92C]) = -640989772;
  LODWORD(STACK[0xB68]) = 797140904;
  LODWORD(STACK[0xAF8]) = 465340919;
  LODWORD(STACK[0xAA0]) = -912792262;
  LODWORD(STACK[0xA04]) = 611824590;
  LODWORD(STACK[0x918]) = -65052817;
  LODWORD(STACK[0xB60]) = 2013507344;
  STACK[0xAB0] = 0xAF07DA8BD6E24879;
  LODWORD(STACK[0xA78]) = -1156419334;
  STACK[0x9F8] = 0x4660DB4A576ECD94;
  STACK[0x910] = 0x4660DB4A576ECD94;
  STACK[0xAE8] = v3;
  STACK[0xAE0] = v4;
  return v8(vdupq_n_s64(0xB434F95ACB4B1DuLL), vdupq_n_s64(0x16869F2B596963AuLL));
}

uint64_t sub_244B8FC98(uint64_t a1, int a2)
{
  STACK[0xB10] = v2;
  LODWORD(STACK[0xB40]) = STACK[0xA04];
  v5 = LODWORD(STACK[0xAD8]) != -1941528968;
  v6 = (v3 + 141) ^ ((LOBYTE(STACK[0xDC82]) ^ 0xB7u) << 40) ^ (LOBYTE(STACK[0xDC87]) | ((LOBYTE(STACK[0xDC86]) ^ 0xB7) << 8) | ((LOBYTE(STACK[0xDC85]) ^ 0xB7) << 16) | ((LOBYTE(STACK[0xDC84]) ^ 0xB7) << 24) | ((LOBYTE(STACK[0xDC83]) ^ 0xB7u) << 32)) ^ ((LOBYTE(STACK[0xDC81]) ^ 0xB7u) << 48) ^ ((LOBYTE(STACK[0xDC80]) ^ 0xB7u) << 56);
  STACK[0xDCA0] = (v3 + 141) ^ ((LOBYTE(STACK[0xDC8A]) ^ 0xB7u) << 40) ^ (((LOBYTE(STACK[0xDC8D]) ^ 0xB7) << ((2 * a2) ^ 0xA0u)) + (LOBYTE(STACK[0xDC8F]) | ((LOBYTE(STACK[0xDC8E]) ^ 0xB7) << 8)) + ((LOBYTE(STACK[0xDC8C]) ^ 0xB7) << 24) + ((LOBYTE(STACK[0xDC8B]) ^ 0xB7u) << 32)) ^ ((LOBYTE(STACK[0xDC89]) ^ 0xB7u) << 48) ^ ((LOBYTE(STACK[0xDC88]) ^ 0xB7u) << 56);
  STACK[0xDCA8] = v6;
  return (*(v4 + 8 * (a2 ^ (15663 * v5))))();
}

uint64_t sub_244B90210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x46A0] = v7;
  v10 = *(v9 + 8 * v6);
  LODWORD(STACK[0x8F0]) = v8;
  LODWORD(STACK[0xB20]) = v8;
  return v10(STACK[0x910], LODWORD(STACK[0xB48]), a3, 0, STACK[0x9F8], a6, 0);
}

uint64_t sub_244B90268@<X0>(unint64_t a1@<X0>, unint64_t a2@<X4>, int a3@<W8>)
{
  v6 = *(v5 + 8 * a3);
  LODWORD(STACK[0x918]) = v4;
  STACK[0x9F8] = a2;
  STACK[0x910] = a1;
  LODWORD(STACK[0xA04]) = STACK[0xB40];
  LODWORD(STACK[0xAA0]) = v3;
  return v6();
}

uint64_t sub_244B903D0@<X0>(int a1@<W0>, int a2@<W8>)
{
  v10 = ~((((10 * a1) ^ v7) + 2 * (v5 ^ v8)) & v9) + v8 + (v5 ^ v8);
  v12 = *v2 != v4 || v10 == v8;
  return (*(v6 + 8 * ((v12 * v3) ^ a2)))();
}

uint64_t sub_244B904B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *(v6 + 8 * (((((1097 * (v5 ^ 0xAB3)) ^ 0xFFFFBDA9) + ((v5 - 1473788581) & 0x57D87F2F)) * (a4 & 1)) ^ v5));
  LODWORD(STACK[0xAA0]) = v4;
  return v7(a1, a2, a3, 0);
}

uint64_t sub_244B9054C()
{
  v3 = *(v2 + 8 * ((((v0 ^ LODWORD(STACK[0xB48])) < 680 * ((v1 - 1620) ^ 0x378Eu) - 2718) * (((v1 - 11453) | 0x804) ^ 0x193B)) ^ (v1 - 1620)));
  LODWORD(STACK[0xB20]) = v0;
  return v3();
}

uint64_t sub_244B906E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, int a6@<W8>)
{
  v9 = *a1;
  v8 = a1 - 1;
  v11 = *v6 != v9 || a4 == 0;
  return (*(v7 + 8 * ((v11 * a5) ^ a6)))(v8, a2, a3, (a4 - 1));
}

uint64_t sub_244B907A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, int a6@<W8>)
{
  v9 = a6 + 8377;
  v10 = (v9 + 2671);
  v11 = *(v8 + 8 * ((((v7 ^ (v9 + 112)) & 1) * ((v9 - 3802) ^ 0x2031)) ^ v9));
  LODWORD(STACK[0xA04]) = v6;
  return v11(a1, a2, a3, 0, a4, a5, 0, v10);
}

uint64_t sub_244B907F8@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xB08]) = v2;
  LODWORD(STACK[0xAF0]) = (((v1 ^ 0x2782001) + 335536263 + a1 + 1618) << 6) - 1028402848 - ((((v1 ^ 0x2782001) + 335536263 + a1 + 1618) << 7) & 0x8567A280);
  STACK[0xAB0] = STACK[0xDCA8];
  v4 = *(v3 + 8 * a1);
  LODWORD(STACK[0xAC0]) = STACK[0xAF8];
  LODWORD(STACK[0xB20]) = v1;
  return v4();
}

uint64_t sub_244B90A24@<X0>(uint64_t a1@<X4>, uint64_t a2@<X7>, unsigned int a3@<W8>)
{
  v7 = 1671 * (a3 ^ 0x69B);
  v8 = ((a3 + 7724) ^ 0xFFFFDB43) + a1;
  v9 = a2 + 8 * (v3 + v5) + 0x2A582556291573B4;
  STACK[0xB40] = v7;
  v10 = v9 + v8 * (v7 - 18389);
  v11 = v4 + 8 * a1 - 8;
  v12 = v11 - 8 * v8;
  v14 = v10 > v9 || v12 > v11;
  return (*(v6 + 8 * (v14 | a3)))();
}

uint64_t sub_244B90B80(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _OWORD *a8)
{
  v12 = *v10;
  *(a8 - 1) = *(v10 - 1);
  *a8 = v12;
  return (*(v11 + 8 * (((v9 == 0) * ((a1 - 1689) ^ v8)) ^ a1)))();
}

uint64_t sub_244B90CEC@<X0>(int a1@<W4>, uint64_t a2@<X6>, int a3@<W7>, unsigned int a4@<W8>)
{
  v10 = v4 < 0xA9BAEF5D;
  *(a2 - 0x4660DB4A576ECD94) = v5;
  v11 = ((a3 + a1) & v7 ^ v8) + v6;
  v12 = v10 ^ (v11 < 0xE617ED8E);
  v13 = v11 < a4;
  if (!v12)
  {
    v10 = v13;
  }

  return (*(v9 + 8 * ((!v10 | (4 * !v10)) ^ a3)))();
}

uint64_t sub_244B90F2C@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  v7 = v2 < v3;
  *(a2 - 0x4660DB4A576ECD9CLL) = v5;
  v8 = (a1 ^ 0x330A) + v4 + 1634875940;
  v9 = v7 ^ (v8 < v3);
  v10 = v8 < v2;
  if (!v9)
  {
    v7 = v10;
  }

  return (*(v6 + 8 * ((13127 * v7) ^ a1)))();
}

uint64_t sub_244B91000(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v7 = STACK[0xB18] + 8 * (a5 ^ (v6 - 1674) ^ ((a3 + 1097) | 0x2924u));
  v8 = *(v7 - 0x4660DB4A576ECD9CLL) ^ 0xB434F95ACB4B1DLL;
  v9 = (((v8 / (HIDWORD(STACK[0xAB0]) ^ 0xB434F9)) << (((a3 - 18) & 0xFAu) + 15)) & 0xEDE9FCD83CFBFD9ALL) + ((v8 / (HIDWORD(STACK[0xAB0]) ^ 0xB434F9)) ^ 0x76F4FE6C1E7DFECDLL);
  if (v9 - 0x76F4FE6D1E7DFECDLL >= 0xFFFFFFFF00000000)
  {
    v10 = v9 - 0x76F4FE6C1E7DFECDLL;
  }

  else
  {
    v10 = 0xFFFFFFFFLL;
  }

  return (*(v5 + 8 * ((561 * (__PAIR128__(v8, *(v7 - 0x4660DB4A576ECDA4) ^ 0xB434F95ACB4B1DuLL) < __PAIR128__((STACK[0xAB0] ^ 0xB434F95ACB4B1DLL) >> 32, (STACK[0xAB0] ^ 0xB434F95ACB4B1DLL) << 32) * v10)) ^ a3)))();
}

uint64_t sub_244B911F8@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X4>, unint64_t a4@<X6>, unint64_t a5@<X8>)
{
  v9 = __PAIR128__(a5, a1) - __PAIR128__(a3, a4);
  v10 = (v9 >> 32) / a2 + 0xB434F95ACB4B1DLL - (v6 & (2 * ((v9 >> 32) / a2)));
  if ((v10 ^ 0xB434F900000000) >> 32)
  {
    v11 = 0xFFFFFFFFLL;
  }

  else
  {
    v11 = v10 ^ 0xB434F95ACB4B1DLL;
  }

  return (*(v8 + 8 * (((v9 < v11 * v7) * ((2309 * (v5 ^ 0x3973)) ^ 0x417F)) ^ (v5 - 2581))))();
}

uint64_t sub_244B91390(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unint64_t a6)
{
  v10 = v7 ^ v6 ^ a3;
  STACK[0xA98] = a6;
  STACK[0xAA8] = v10;
  return (*(v9 + 8 * ((((v10 | a6) != 0) * ((a4 + 8469) ^ 0x4E2A)) | a4)))(a1, a2, v8);
}

uint64_t sub_244B913E4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = (a4 + 1031) | 0xA09;
  STACK[0x1F00] = STACK[0xAA8] + 0xB434F95ACB4B1DLL - (((v5 - 3953) ^ 0x16869F2B596BD82) & (2 * STACK[0xAA8]));
  return (*(v4 + 8 * v5))(STACK[0xA80], STACK[0xB38], LODWORD(STACK[0xB48]), 1);
}

uint64_t sub_244B914AC@<X0>(int a1@<W8>)
{
  v4 = *(v3 + 8 * (((((a1 + 6257) | 0x2100) ^ 0x64B1) * v2) ^ (a1 + 4535)));
  LODWORD(STACK[0x918]) = 1852130466;
  LODWORD(STACK[0xA04]) = v1;
  LODWORD(STACK[0x92C]) = 744425966;
  return v4();
}

uint64_t sub_244B915D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = STACK[0xAA8]-- != 0;
  STACK[0xA98] = v10 + STACK[0xA98] - 1;
  v11 = *(v9 + 8 * (a8 - 10170));
  LODWORD(STACK[0x92C]) = 744425964;
  LODWORD(STACK[0x918]) = 1852130466;
  LODWORD(STACK[0xA04]) = v8;
  return v11(a1, a2, a3, a4, a5, a6, LODWORD(STACK[0xB68]));
}

uint64_t sub_244B91634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0xB08]) = v9;
  STACK[0x1F00] = v10 - 1;
  v12 = *(v11 + 8 * (a8 - 4404));
  LODWORD(STACK[0x92C]) = 744425967;
  LODWORD(STACK[0xA04]) = v8;
  return v12();
}

uint64_t sub_244B91688@<X0>(int a1@<W8>)
{
  v4 = *(v3 + 8 * (((((908 * a1) ^ 0x11B6) + 4394 + 1471 * ((908 * a1) ^ 0x11B6) + 2567) * v2) ^ (908 * a1)));
  LODWORD(STACK[0xA04]) = v1;
  LODWORD(STACK[0x92C]) = 744425966;
  return v4();
}

uint64_t sub_244B91700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned int a7@<W8>)
{
  v9 = STACK[0xAA8]-- != 0;
  STACK[0xA98] = v9 + STACK[0xA98] - 1;
  v10 = *(v8 + 8 * (a7 ^ LODWORD(STACK[0xA78]) ^ (12857 * (a7 <= ((a7 + 1156427758) | 0x2842) - 1919250906))));
  LODWORD(STACK[0x92C]) = 744425965;
  LODWORD(STACK[0xA04]) = v7;
  return v10(a1, a2, a3, a4, a5, a6, LODWORD(STACK[0xB68]));
}

uint64_t sub_244B9178C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(v5 + 8 * ((115 * (((a5 - 60) ^ (LODWORD(STACK[0x92C]) - 744425963 < 591 * (a5 ^ 0x4F0Eu) - 21863)) & 1)) ^ a5));
  LODWORD(STACK[0xB58]) = a2;
  return v6();
}

uint64_t sub_244B917F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0xB08]) = v5;
  v9 = *(v8 + 8 * (v4 & 0x6F5F29FF ^ 0x2C5F2E78 ^ (4053 * (((v7 - (v4 & 0x6F5F29FF)) | ((v4 & 0x6F5F29FF) - v7)) >= 0))));
  LODWORD(STACK[0x92C]) = 744425968;
  LODWORD(STACK[0xAF8]) = v6;
  return v9(STACK[0xB28], v3, a3, 0);
}

uint64_t sub_244B918C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, int a3@<W8>)
{
  v6 = *(v5 + 8 * (((((a3 ^ 0x44D7) + 7005) ^ 0x2D5A) * (v4 == 744425966)) | a3 ^ 0x44D7));
  LODWORD(STACK[0xAF8]) = v3;
  LODWORD(STACK[0x92C]) = 744425966;
  return v6(a1, a2);
}

uint64_t sub_244B91930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W8>)
{
  LODWORD(STACK[0xAC0]) = v6;
  STACK[0x46A0] = STACK[0xAA8] + 0xB434F95ACB4B1DLL - (((a5 + 547566246) & 0xDF5CEE6E ^ 0x16869F2B596D814) & (2 * STACK[0xAA8]));
  v8 = *(v7 + 8 * a5);
  LODWORD(STACK[0x92C]) = 744425966;
  return v8(a1, a2, a3, a4, v5);
}

uint64_t sub_244B919AC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X5>, uint64_t a4@<X6>, int a5@<W8>)
{
  LODWORD(STACK[0xAC0]) = v6;
  v9 = (a5 - 21733) | 0x2711;
  v10 = v9 ^ 0x69B9;
  LODWORD(STACK[0x92C]) = 744425963;
  v11 = *(v8 + 8 * ((((v9 ^ 0x69B9) + 5837) * (v7 == 744425963)) ^ v9));
  v12 = STACK[0xB18];
  LODWORD(STACK[0xAF8]) = v5;
  return v11(v12, a1, a2, 0, v5, a3, a4, (v10 - 5304));
}

uint64_t sub_244B91B40(int a1)
{
  LODWORD(STACK[0xAF0]) = v2;
  LODWORD(STACK[0xB40]) = (((v2 ^ v1) - 1522925932) ^ (a1 + 1979683284)) + ((2 * ((v2 ^ v1) - 1522925932)) & 0xEBFFB772) - 1099153448;
  v5 = *(v4 + 8 * a1);
  LODWORD(STACK[0xB58]) = v3;
  return v5();
}

uint64_t sub_244B91BAC@<X0>(int a1@<W1>, int a2@<W5>, int a3@<W8>)
{
  LODWORD(STACK[0xB60]) = v3;
  v8 = v5 + v4 - (((((10655 * (a1 ^ a2) - 19006) | 0x1025) ^ 0x4C93D293) + 2 * v4) & 0x4476F27C) + 3343;
  v9 = ((v8 >> 5) & 0x30C9FFE ^ 0x1009BC8) + ((v8 >> 6) ^ 0xAF0EA21B) + 1383706625;
  v10 = *(v6 + 8 * ((467 * ((((v9 ^ a3 ^ v7) & (a3 ^ v7)) >> (__clz(v9 ^ a3 ^ v7 | 1) ^ 0x1F)) & 1)) ^ a1));
  LODWORD(STACK[0xB68]) = -294117375;
  return v10();
}

uint64_t sub_244B91D08(uint64_t a1, int a2)
{
  v5 = *(v3 + 8 * (((((v2 - 449134796) ^ 0x1AC53595) + ((v2 - 449134796) & 0x53DF7)) * (a2 != v4)) ^ v2));
  LODWORD(STACK[0xB68]) = -294117375;
  return v5();
}

uint64_t sub_244B91E74@<X0>(int a1@<W2>, char a2@<W3>, char a3@<W4>, uint64_t a4@<X8>)
{
  v11 = v6 + (v7 << (a2 + a3));
  v12 = *(v11 + a4);
  *v8 = *(v11 + v4);
  v8[1] = v12;
  return (*(v10 + 8 * (((v9 == v7) * v5) ^ a1)))();
}

uint64_t sub_244B91F20@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W8>)
{
  *(a4 + v5) = *(v8 + v5);
  v10 = a2 == v6;
  v11 = a2 - 6436 + ((a5 - 3250) | 0x824u);
  v12 = a4 + 8;
  v13 = !v10;
  return (*(v9 + 8 * ((v13 * v7) ^ a5)))(a1, v11, a3, v12);
}

uint64_t sub_244B920CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4 - v5 - 8 * a1;
  v8 = v6 > 0x1F && v6 - 8 >= ((v4 + 2102144394) & 0x82B3BFFE ^ 0x2F9EuLL);
  return (*(STACK[0xBD8] + 8 * ((116 * v8) ^ v4)))();
}

uint64_t sub_244B921A8@<X0>(int a1@<W2>, uint64_t a2@<X3>, uint64_t a3@<X5>, int a4@<W6>, uint64_t a5@<X8>, int8x16_t a6@<Q0>, int8x16_t a7@<Q1>, uint64x2_t a8@<Q2>, uint64x2_t a9@<Q3>)
{
  v16 = a2 + 8 * a5;
  v17 = v13 + 8 * a5;
  v18 = vorrq_s8(vshlq_u64(veorq_s8(*(v17 + v12), a6), a8), vshlq_u64(veorq_s8(*(v17 + v9), a6), a9));
  v19 = vorrq_s8(vshlq_u64(veorq_s8(*(v17 + a3), a6), a8), vshlq_u64(veorq_s8(*(v17 + v10), a6), a9));
  *(v16 + v9) = vaddq_s64(vsubq_s64(v18, vandq_s8(vaddq_s64(v18, v18), a7)), a6);
  *(v16 + v10) = vaddq_s64(vsubq_s64(v19, vandq_s8(vaddq_s64(v19, v19), a7)), a6);
  return (*(STACK[0xBD8] + 8 * ((((v15 ^ v14) + a5 == v11) * a4) ^ a1)))();
}

uint64_t sub_244B922D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, unsigned int a6@<W6>, int a7@<W8>)
{
  v15 = ((*(a3 + v10) ^ v8) << v12) | ((*(a3 + v7) ^ v8) >> v14);
  *(a1 + v7) = v15 + v8 - (a5 & (2 * v15));
  return (*(STACK[0xBD8] + 8 * (((v13 == v9) * ((v11 | a6) ^ a4)) ^ a7)))(a1 + 8, a2, v11 | a6, a3 + 8);
}

uint64_t sub_244B92334(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = (*(v8 + v6) ^ ((a3 - 8273) + 0xB434F95ACB31F8)) >> v9;
  v12 = v11 + v7 - (a6 & (2 * v11));
  *(a1 + v6) = v12;
  if (v12 == v7)
  {
    v13 = v10;
  }

  else
  {
    v13 = a2;
  }

  LODWORD(STACK[0xB68]) = v13;
  return (*(STACK[0xBD8] + 8 * (a3 - 7107)))();
}

uint64_t sub_244B9250C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  STACK[0x46A0] = 0xB434F95ACB4B1CLL;
  v9 = *(v8 + 8 * (a8 - 10170));
  LODWORD(STACK[0x92C]) = 744425963;
  LODWORD(STACK[0xAF8]) = STACK[0xAC0];
  return v9(a1, LODWORD(STACK[0xB48]));
}

uint64_t sub_244B92808(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = (*(v11 + v12) ^ (a8 + v10 + 948)) + v8;
  *(a3 + v12) = v15 + (*(a3 + v12) ^ v13) + v13 - (v9 & (2 * (v15 + (*(a3 + v12) ^ v13))));
  return (*(v14 + 8 * ((60 * (a4 == 0)) ^ a1)))();
}

uint64_t sub_244B929B0@<X0>(unsigned int a1@<W0>, uint64_t a2@<X2>, int a3@<W3>, unsigned int a4@<W7>, uint64_t a5@<X8>)
{
  v13 = a5 ^ (v9 + 1810) ^ *(v10 + a2);
  v14 = v11 + v13 - ((2 * v13 + 2) & v6) + 1;
  *(v10 + a2) = v14;
  v15 = v8 | (((a3 + 3136) ^ a4) << 32);
  return (*(v12 + 8 * (((v5 >= a1 || (((v14 - v15) | (v15 - v14)) & 0x8000000000000000) != 0) * v7) ^ (a3 + 3136))))();
}

uint64_t sub_244B92A28@<X0>(int a1@<W1>, int a2@<W8>)
{
  v4 = *(v3 + 8 * ((((a2 + 4575) ^ 0x4877) * v2) ^ a2));
  v5 = STACK[0x9F8];
  LODWORD(STACK[0xB58]) = a1;
  return v4(v5);
}

uint64_t sub_244B92A84@<X0>(int a1@<W1>, uint64_t a2@<X2>, unsigned int a3@<W8>)
{
  *(v3 + a2) = 0xB434F95ACB4B1CLL;
  v5 = *(v4 + 8 * a3);
  v6 = STACK[0x9F8];
  LODWORD(STACK[0xB58]) = a1;
  return v5(v6);
}

uint64_t sub_244B92AD4@<X0>(int a1@<W3>, int a2@<W4>, int a3@<W8>)
{
  LODWORD(STACK[0xB40]) = a1;
  LODWORD(STACK[0xB58]) = v3;
  LODWORD(STACK[0xB60]) = a2;
  LODWORD(STACK[0xAF8]) = STACK[0xAC0];
  return (*(v4 + 8 * a3))();
}

uint64_t sub_244B92B6C@<X0>(int a1@<W7>, int a2@<W8>)
{
  *v4 = v2;
  v10 = v5 > ((v8 + (v6 ^ v8) - ((a2 + 2 * (v6 ^ v8) + v3) & v9) + 1) ^ v8);
  return (*(v7 + 8 * ((v10 | (8 * v10)) ^ a1)))();
}

uint64_t sub_244B92CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = (*v10 ^ (a3 + 0xB434F95ACB332DLL)) * v7 + v5;
  *v4 = v11 + (*v4 ^ 0xB434F95ACB4B1DLL) + 0xB434F95ACB4B1DLL - (v3 & (2 * (v11 + (*v4 ^ 0xB434F95ACB4B1DLL))));
  return (*(v9 + 8 * ((56 * (v8 != 0)) ^ (v6 + 2150))))();
}

uint64_t sub_244B92E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = *(v9 + 8 * (a8 - 4575));
  v11 = STACK[0xB18];
  LODWORD(STACK[0xAF8]) = v8;
  return v10(v11, a2, a3, 0);
}

uint64_t sub_244B92E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0xB40]) = v8;
  v13 = *(v12 + 8 * (a8 - 1478));
  LODWORD(STACK[0xB60]) = v9;
  LODWORD(STACK[0x92C]) = v11;
  return v13(v10, LODWORD(STACK[0xB58]), a3, a4, a1, a6, 1);
}

uint64_t sub_244B92F5C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, int a5@<W8>)
{
  v7 = STACK[0xBC0];
  v8 = LODWORD(STACK[0xBC0]) < LODWORD(STACK[0xBC8]);
  *(&STACK[0x9E50] + (LODWORD(STACK[0xBD0]) - a2)) = ((a3 ^ v5) >> (a4 + 125)) - (((a5 - 122) & 0xF7 ^ 0x66) & (2 * ((a3 ^ v5) >> (a4 + 125)))) - 40;
  v9 = a2 - 734875085;
  v10 = (a2 + 1);
  v11 = v8 ^ (v9 < 0x22530962);
  v12 = v7 > v9;
  if (!v11)
  {
    v8 = v12;
  }

  return (*(v6 + 8 * (a5 ^ (142 * !v8))))(a1, v10);
}

uint64_t sub_244B930D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = ((a5 + 6782) + 4294953643) & (v5 + 2494007175);
  v11 = *(v6 + 2 * (v10 ^ 0x1E));
  HIDWORD(v12) = v11 ^ v7;
  LODWORD(v12) = (v11 ^ 0x8000) << 16;
  *(&STACK[0xDC80] + v5 - 1800960121) = *(&STACK[0x27C0] + ((v12 >> 30) ^ 0x65F9)) ^ (*(v8 + (v10 ^ 0x3B)) - ((2 * *(v8 + (v10 ^ 0x3B)) + 16) & 0x3C) - 122) ^ 0xF0;
  return (*(v9 + 8 * ((12162 * (v5 == 1800960136)) ^ a5)))();
}

uint64_t sub_244B9319C@<X0>(uint64_t a1@<X8>)
{
  v6 = a1 - ((2 * a1 + 935771848) & 0x229406B2) - 852663619;
  v7 = *(v4 + (((v1 - 6732) | 0x50) ^ 0x114A183A ^ v6));
  *(a1 + v2 - 1142726828) = *(&STACK[0x27C0] + ((*(v3 + 2 * (v6 ^ 0x114A035F)) - 3460) ^ 0x4908)) ^ (v7 - 2 * ((v7 + 8) & 0x1F ^ v7 & 1) - 122) ^ 0xDE;
  return (*(v5 + 8 * ((3079 * (a1 == 1142727355)) ^ v1)))();
}

uint64_t sub_244B93338()
{
  v11 = v1 < v0;
  v12 = (v7 ^ 0xB434F95ACB502CLL ^ (v10 + v4)) >> (v9 ^ 0x80u);
  *(v6 + v2) = v12 - (v5 & (2 * v12)) - 40;
  if (v11 == v3 < v0)
  {
    v11 = v1 > v3;
  }

  return (*(STACK[0xBD8] + 8 * (v10 ^ (!v11 * v8))))();
}

uint64_t sub_244B93480@<X0>(unsigned int a1@<W2>, int a2@<W8>)
{
  v2 = (a2 + a1 + 4091) | 0x130;
  LODWORD(STACK[0xE0E0]) = -294117375;
  LODWORD(STACK[0xE730]) = -294117375;
  LODWORD(STACK[0xE0E4]) = -294117375;
  LODWORD(STACK[0xE734]) = -294117375;
  LODWORD(STACK[0xE0E8]) = -294117375;
  LODWORD(STACK[0xE738]) = -294117375;
  LODWORD(STACK[0xE0EC]) = -294117375;
  LODWORD(STACK[0xE73C]) = -294117375;
  LODWORD(STACK[0xE0F0]) = -294117375;
  LODWORD(STACK[0xE740]) = -294117375;
  LODWORD(STACK[0xE0F4]) = -294117375;
  LODWORD(STACK[0xE744]) = -294117375;
  LODWORD(STACK[0xE0F8]) = -294117375;
  LODWORD(STACK[0xE748]) = -294117375;
  LODWORD(STACK[0xE0FC]) = -294117375;
  LODWORD(STACK[0xE74C]) = -294117375;
  LODWORD(STACK[0xE100]) = -294117375;
  LODWORD(STACK[0xE750]) = -294117375;
  LODWORD(STACK[0xE104]) = -294117375;
  LODWORD(STACK[0xE754]) = -294117375;
  LODWORD(STACK[0xE108]) = -294117375;
  LODWORD(STACK[0xE758]) = -294117375;
  LODWORD(STACK[0xE10C]) = -294117375;
  LODWORD(STACK[0xE75C]) = -294117375;
  LODWORD(STACK[0xE110]) = -294117375;
  LODWORD(STACK[0xE760]) = -294117375;
  LODWORD(STACK[0xE114]) = -294117375;
  LODWORD(STACK[0xE764]) = -294117375;
  LODWORD(STACK[0xE118]) = -294117375;
  LODWORD(STACK[0xE768]) = -294117375;
  LODWORD(STACK[0xE11C]) = -294117375;
  LODWORD(STACK[0xE76C]) = -294117375;
  STACK[0x1070] = 0x88EDBB150ACCB4F5;
  STACK[0x1078] = 0xA9BD1129D6BFD923;
  STACK[0x1080] = 0x5DFD5BD8774346B3;
  STACK[0x1088] = 0x84EF857BEEF7890ALL;
  v3 = STACK[0xBF8];
  v4 = STACK[0xBF8];
  v5 = *STACK[0xBF8];
  LODWORD(STACK[0xBD0]) = v2;
  LOBYTE(STACK[0x1090]) = v5 + ((2 * v5) & 0xB0 ^ (v2 - 52)) - 39;
  LOBYTE(STACK[0x1091]) = v3[1] - ((2 * v3[1]) & 0xB0) - 40;
  LOBYTE(STACK[0x1092]) = v3[2] - ((2 * v3[2]) & 0xB0) - 40;
  LOBYTE(STACK[0x1093]) = v3[3] - ((2 * v3[3]) & 0xB0) - 40;
  v6 = STACK[0xB50];
  LOBYTE(STACK[0x1094]) = *(STACK[0xB50] + ((v3[4] - 43) ^ 0x96)) ^ 0x67;
  LOBYTE(STACK[0x1095]) = v3[5] - ((2 * v3[5]) & 0xB0) - 40;
  LOBYTE(STACK[0x1096]) = v3[6] - ((2 * v3[6]) & 0xB0) - 40;
  LOBYTE(STACK[0x1097]) = v3[7] - ((2 * v3[7]) & 0xB0) - 40;
  LOBYTE(STACK[0x1098]) = v3[8] - ((2 * v3[8]) & 0xB0) - 40;
  v7 = STACK[0xB78];
  v8 = STACK[0xB88];
  LOBYTE(STACK[0x1099]) = 33 * ((LODWORD(STACK[0xB88]) - 117 * *(STACK[0xB78] + (((v3[9] >> 5) | (8 * v3[9])) ^ 0xEBLL))) ^ 0x7E) - ((66 * ((LODWORD(STACK[0xB88]) - 117 * *(STACK[0xB78] + (((v3[9] >> 5) | (8 * v3[9])) ^ 0xEBLL))) ^ 0x7E)) & 0xB0) - 40;
  LOBYTE(STACK[0x109A]) = v3[10] - ((2 * v3[10]) & 0xB0) - 40;
  LOBYTE(STACK[0x109B]) = v3[11] - ((2 * v3[11]) & 0xB0) - 40;
  LOBYTE(STACK[0x109C]) = *(v4 + 12) - ((2 * *(v4 + 12)) & 0xB0) - 40;
  LOBYTE(STACK[0x109D]) = *(v4 + 13) - ((2 * *(v4 + 13)) & 0xB0) - 40;
  LOBYTE(STACK[0x109E]) = *(v4 + 14) - ((2 * *(v4 + 14)) & 0xB0) - 40;
  LOBYTE(STACK[0x109F]) = *(v4 + 15) - ((2 * *(v4 + 15)) & 0xB0) - 40;
  LOBYTE(STACK[0x10A0]) = *(v4 + 16) - ((2 * *(v4 + 16)) & 0xB0) - 40;
  LOBYTE(STACK[0x10A1]) = *(v4 + 17) - ((2 * *(v4 + 17)) & 0xB0) - 40;
  LOBYTE(STACK[0x10A2]) = *(v4 + 18) - ((2 * *(v4 + 18)) & 0xB0) - 40;
  LOBYTE(STACK[0x10A3]) = *(v4 + 19) - ((2 * *(v4 + 19)) & 0xB0) - 40;
  LOBYTE(STACK[0x10A4]) = *(v4 + 20) - ((2 * *(v4 + 20)) & 0xB0) - 40;
  LOBYTE(STACK[0x10A5]) = *(v4 + 21) + (~(2 * *(v4 + 21)) | 0x4F) - 39;
  LOBYTE(STACK[0x10A6]) = *(v4 + 22) - ((2 * *(v4 + 22)) & 0xB0) - 40;
  LOBYTE(STACK[0x10A7]) = *(v4 + 23) - ((2 * *(v4 + 23)) & 0xB0) - 40;
  LOBYTE(STACK[0x10A8]) = *(v4 + 24) - ((2 * *(v4 + 24)) & 0xB0) - 40;
  LOBYTE(STACK[0x10A9]) = *(v4 + 25) - ((2 * *(v4 + 25)) & 0xB0) - 40;
  v9 = STACK[0xBF8];
  LOBYTE(STACK[0x10AA]) = *(STACK[0xBF8] + 26) - ((2 * *(STACK[0xBF8] + 26)) & 0xB0) - 40;
  LOBYTE(STACK[0x10AB]) = v9[27] - ((2 * v9[27]) & 0xB0) - 40;
  LOBYTE(STACK[0x10AC]) = v9[28] - ((2 * v9[28]) & 0xB0) - 40;
  v10 = STACK[0xB80];
  LOBYTE(v4) = *(STACK[0xB80] + (((v9[29] >> 4) | (16 * v9[29])) ^ 0x4DLL)) ^ 0xD6;
  LOBYTE(STACK[0x10AD]) = 27 * v4 - ((54 * v4) & 0xB0) - 40;
  LOBYTE(STACK[0x10AE]) = *(v6 + ((v9[30] - 43) ^ 0x96)) ^ 0x67;
  LOBYTE(STACK[0x10AF]) = v9[31] + (~(2 * v9[31]) | 0x4F) - 39;
  v11 = STACK[0xC40];
  v12 = STACK[0xC40];
  LOBYTE(STACK[0x10B0]) = *(v6 + ((*STACK[0xC40] - 43) ^ 0x96)) ^ 0x67;
  LOBYTE(STACK[0x10B1]) = v11[1] - ((2 * v11[1]) & 0xB0) - 40;
  LOBYTE(STACK[0x10B2]) = 33 * ((v8 - 117 * *(v7 + (((v11[2] >> 5) | (8 * v11[2])) ^ 0xEBLL))) ^ 0x7E) - ((66 * ((v8 - 117 * *(v7 + (((v11[2] >> 5) | (8 * v11[2])) ^ 0xEBLL))) ^ 0x7E)) & 0xB0) - 40;
  LOBYTE(STACK[0x10B3]) = v11[3] - ((2 * v11[3]) & 0xB0) - 40;
  LOBYTE(STACK[0x10B4]) = v11[4] - ((2 * v11[4]) & 0xB0) - 40;
  LOBYTE(STACK[0x10B5]) = v11[5] - ((2 * v11[5]) & 0xB0) - 40;
  LOBYTE(STACK[0x10B6]) = v11[6] - ((2 * v11[6]) & 0xB0) - 40;
  LOBYTE(STACK[0x10B7]) = v11[7] - ((2 * v11[7]) & 0xB0) - 40;
  LOBYTE(STACK[0x10B8]) = v11[8] - ((2 * v11[8]) & 0xB0) - 40;
  LOBYTE(STACK[0x10B9]) = v11[9] - ((2 * v11[9]) & 0xB0) - 40;
  LOBYTE(STACK[0x10BA]) = v11[10] - ((2 * v11[10]) & 0xB0) - 40;
  LOBYTE(STACK[0x10BB]) = v12[11] - ((2 * v12[11]) & 0xB0) - 40;
  LOBYTE(STACK[0x10BC]) = v12[12] + (~(2 * v12[12]) | 0x4F) - 39;
  LOBYTE(STACK[0x10BD]) = v12[13] - ((2 * v12[13]) & 0xB0) - 40;
  LOBYTE(STACK[0x10BE]) = v12[14] - ((2 * v12[14]) & 0xB0) - 40;
  v13 = STACK[0xBA8];
  v14 = STACK[0xBA0];
  LOBYTE(STACK[0x10BF]) = (LODWORD(STACK[0xBA0]) + 59 * *(STACK[0xBA8] + ((v12[15] - 43) ^ 0x14))) ^ 0x59;
  LOBYTE(STACK[0x10C0]) = v12[16] - ((2 * v12[16]) & 0xB0) - 40;
  LOBYTE(STACK[0x10C1]) = v12[17] - ((2 * v12[17]) & 0xB0) - 40;
  HIDWORD(v15) = *(STACK[0xBB0] + (((v12[18] >> 1) | (v12[18] << 7)) ^ 0x9FLL));
  LODWORD(v15) = (HIDWORD(v15) ^ 0x4E) << 24;
  LOBYTE(STACK[0x10C2]) = ((v15 >> 25) ^ 0xF2) + ((114 - 2 * ((v15 >> 25) ^ 0xF2)) | 0x4F) + 31;
  LOBYTE(STACK[0x10C3]) = v12[19] - ((2 * v12[19]) & 0xB0) - 40;
  LOBYTE(STACK[0x10C4]) = v12[20] - ((2 * v12[20]) & 0xB0) - 40;
  LOBYTE(STACK[0x10C5]) = v12[21] - ((2 * v12[21]) & 0xB0) - 40;
  LOBYTE(STACK[0x10C6]) = v12[22] - ((2 * v12[22]) & 0xB0) - 40;
  v16 = STACK[0xC40];
  LOBYTE(STACK[0x10C7]) = *(STACK[0xC40] + 23) - ((2 * *(STACK[0xC40] + 23)) & 0xB0) - 40;
  LOBYTE(STACK[0x10C8]) = v16[24] - ((2 * v16[24]) & 0xB0) - 40;
  LOBYTE(STACK[0x10C9]) = v16[25] - ((2 * v16[25]) & 0xB0) - 40;
  LOBYTE(STACK[0x10CA]) = v16[26] - ((2 * v16[26]) & 0xB0) - 40;
  LOBYTE(STACK[0x10CB]) = (v14 + 59 * *(v13 + ((v16[27] - 43) ^ 0x14))) ^ 0x59;
  LOBYTE(STACK[0x10CC]) = v16[28] - ((2 * v16[28]) & 0xB0) - 40;
  LOBYTE(STACK[0x10CD]) = v16[29] - ((2 * v16[29]) & 0xB0) - 40;
  LOBYTE(STACK[0x10CE]) = v16[30] - ((2 * v16[30]) & 0xB0) - 40;
  LOBYTE(STACK[0x10CF]) = v16[31] - ((2 * v16[31]) & 0xB0) - 40;
  v17 = STACK[0xBE8];
  v18 = STACK[0xBE8];
  LOBYTE(STACK[0x10D0]) = *STACK[0xBE8] - ((2 * *STACK[0xBE8]) & 0xB0) - 40;
  LOBYTE(STACK[0x10D1]) = *(v17 + 1) - ((2 * *(v17 + 1)) & 0xB0) - 40;
  LOBYTE(STACK[0x10D2]) = *(v17 + 2) - ((2 * *(v17 + 2)) & 0xB0) - 40;
  LOBYTE(STACK[0x10D3]) = *(v17 + 3) - ((2 * *(v17 + 3)) & 0xB0) - 40;
  LOBYTE(STACK[0x10D4]) = *(v17 + 4) - ((2 * *(v17 + 4)) & 0xB0) - 40;
  LOBYTE(STACK[0x10D5]) = *(v17 + 5) - ((2 * *(v17 + 5)) & 0xB0) - 40;
  v19 = *(v10 + (((*(v17 + 6) >> 4) | (16 * *(v17 + 6))) ^ 0x4DLL)) ^ 0xD6;
  LOBYTE(STACK[0x10D6]) = 27 * v19 - ((54 * v19) & 0xB0) - 40;
  LOBYTE(STACK[0x10D7]) = *(v17 + 7) - ((2 * *(v17 + 7)) & 0xB0) - 40;
  LOBYTE(STACK[0x10D8]) = *(v17 + 8) - ((2 * *(v17 + 8)) & 0xB0) - 40;
  LOBYTE(STACK[0x10D9]) = *(v17 + 9) - ((2 * *(v17 + 9)) & 0xB0) - 40;
  LOBYTE(STACK[0x10DA]) = *(v17 + 10) - ((2 * *(v17 + 10)) & 0xB0) - 40;
  LOBYTE(STACK[0x10DB]) = *(v17 + 11) - ((2 * *(v17 + 11)) & 0xB0) - 40;
  LOBYTE(STACK[0x10DC]) = *(v17 + 12) - ((2 * *(v17 + 12)) & 0xB0) - 40;
  LOBYTE(STACK[0x10DD]) = v18[13] - ((2 * v18[13]) & 0xB0) - 40;
  LOBYTE(STACK[0x10DE]) = v18[14] - ((2 * v18[14]) & 0xB0) - 40;
  LOBYTE(STACK[0x10DF]) = v18[15] - ((2 * v18[15]) & 0xB0) - 40;
  LOBYTE(STACK[0x10E0]) = v18[16] - ((2 * v18[16]) & 0xB0) - 40;
  LOBYTE(STACK[0x10E1]) = v18[17] - ((2 * v18[17]) & 0xB0) - 40;
  LOBYTE(STACK[0x10E2]) = v18[18] - ((2 * v18[18]) & 0xB0) - 40;
  LOBYTE(STACK[0x10E3]) = v18[19] - ((2 * v18[19]) & 0xB0) - 40;
  LOBYTE(STACK[0x10E4]) = v18[20] - ((2 * v18[20]) & 0xB0) - 40;
  LOBYTE(STACK[0x10E5]) = v18[21] - ((2 * v18[21]) & 0xB0) - 40;
  LOBYTE(STACK[0x10E6]) = v18[22] - ((2 * v18[22]) & 0xB0) - 40;
  LOBYTE(STACK[0x10E7]) = v18[23] - ((2 * v18[23]) & 0xB0) - 40;
  LOBYTE(STACK[0x10E8]) = v18[24] - ((2 * v18[24]) & 0xB0) - 40;
  LOBYTE(STACK[0x10E9]) = v18[25] - ((2 * v18[25]) & 0xB0) - 40;
  LOBYTE(v17) = (*(STACK[0xB90] + (((v18[26] >> 1) | (v18[26] << 7)) ^ 0xB5)) - 50) ^ 0x15;
  LOBYTE(STACK[0x10EA]) = v17 - ((2 * v17 - 116) & 0xB0) + 30;
  v20 = STACK[0xBE8];
  LOBYTE(STACK[0x10EB]) = (v14 + 59 * *(v13 + ((*(STACK[0xBE8] + 27) - 43) ^ 0x14))) ^ 0x59;
  LOBYTE(STACK[0x10EC]) = v20[28] + (~(2 * v20[28]) | 0x4F) - 39;
  LOBYTE(STACK[0x10ED]) = v20[29] - ((2 * v20[29]) & 0xB0) - 40;
  LOBYTE(STACK[0x10EE]) = v20[30] + (~(2 * v20[30]) | 0x4F) - 39;
  LOBYTE(STACK[0x10EF]) = v20[31] - ((2 * v20[31]) & 0xB0) - 40;
  return (*(STACK[0xBD8] + 8 * ((13197 * (a1 < 0x615110FB)) ^ (a1 + 220327282))))(1091827453, 398967105);
}

uint64_t sub_244B947E8@<X0>(int a1@<W0>, char a2@<W1>, int a3@<W2>, int a4@<W8>)
{
  LODWORD(STACK[0xBD0]) = v6 + 1568665340;
  STACK[0xE500] = 0xDFDEDDDCDBDAD9D8;
  STACK[0xE508] = 0xD7D6D5D4D3D2D1D0;
  v10 = STACK[0xB78];
  v11 = STACK[0xB88];
  v12 = (33 * ((LOBYTE(STACK[0xB88]) + *(STACK[0xB78] + ((8 * v5 + 56) & 0x78 ^ 0xEBLL)) * a2) ^ 0x7E));
  LOBYTE(STACK[0xE500]) = *(&STACK[0xE500] + v12);
  *(&STACK[0xE500] + v12) = a1;
  v13 = STACK[0xE501];
  LOBYTE(STACK[0xE501]) = *((((v8 + 486429442) % 0xFu) | &STACK[0xE500]) + 1);
  *((((v8 + 486429442) % 0xFu) | &STACK[0xE500]) + 1) = v13;
  v14 = STACK[0xB50];
  v15 = &STACK[0xE500] + (*(STACK[0xB50] + (((a4 + 1196492521) % 0xEu + 213) ^ 0x96)) ^ 0xBFLL);
  LOBYTE(v12) = STACK[0xE502];
  LOBYTE(STACK[0xE502]) = v15[2];
  v15[2] = v12;
  HIDWORD(v16) = LOBYTE(STACK[0xE503]);
  LODWORD(v16) = (HIDWORD(v16) ^ a1) << 24;
  LODWORD(v15) = *(STACK[0xBB0] + ((v16 >> 25) ^ 0x9FLL));
  HIDWORD(v16) = v15;
  LODWORD(v16) = (v15 ^ 0x4E) << 24;
  LOBYTE(STACK[0xE503]) = *((((v4 - 1530789732) % 0xDu) | &STACK[0xE500]) + 3);
  *((((v4 - 1530789732) % 0xDu) | &STACK[0xE500]) + 3) = ((v16 >> 25) ^ 0xF2) - ((2 * ((v16 >> 25) ^ 0xF2) - 116) & 0xB0) + 30;
  v17 = ((2 * ((v4 - v8 + 699667271) ^ v9)) & 0xFDDBB5FE ^ 0xBCD08578) + ((v4 - v8 + 699667271) ^ v9 ^ 0xA195BC43);
  v18 = ((2 * v9) & 0xF3EEF6F4 ^ 0x22860060) + (v9 ^ 0x6CB47B4B);
  v19 = STACK[0xE504];
  LOBYTE(STACK[0xE504]) = *((((v18 + 101221510) % 0xC) | &STACK[0xE500]) + 4);
  *((((v18 + 101221510) % 0xC) | &STACK[0xE500]) + 4) = v19;
  v20 = (((v9 ^ 0xDF7866BC) + v8 + 2064510293) ^ 0x7D7BE25A) - 2105270874 + ((2 * ((v9 ^ 0xDF7866BC) + v8 + 2064510293)) & 0xFAF7C4B4);
  v21 = STACK[0xE505];
  LOBYTE(STACK[0xE505]) = *(((v20 % 0xB) | &STACK[0xE500]) + 5);
  *(((v20 % 0xB) | &STACK[0xE500]) + 5) = v21;
  v22 = &STACK[0xE500] + (*(v14 + (((a3 + 211355730) % 0xAu + 213) ^ 0x96)) ^ 0xBFLL);
  v23 = STACK[0xE506];
  LOBYTE(STACK[0xE506]) = v22[6];
  v22[6] = v23;
  v24 = (v11 + *(v10 + ((8 * ((v17 - 2129517311) % 9)) ^ 0xEBLL)) * a2) ^ 0x7E;
  v25 = STACK[0xE507];
  v26 = &STACK[0xE500] + (33 * v24);
  LOBYTE(STACK[0xE507]) = v26[7];
  v26[7] = v25;
  v27 = v17 - a3;
  LODWORD(v22) = v20 ^ (a3 - 1217139947);
  LODWORD(v26) = v17 + v18 - ((2 * (v17 + v18) + 238375694) & 0xB48920F2) + 1633630720;
  v28 = a3 - (v17 - a3) - ((2 * (a3 - (v17 - a3)) - 2047501108) & 0x8743523C) - 2036566140;
  v29 = STACK[0xE508];
  v30 = (&STACK[0xE500] | (v17 + v18 - ((2 * (v17 + v18) + 14) & 0xF2)) & 7 ^ 9);
  LOBYTE(STACK[0xE508]) = *v30;
  *v30 = v29;
  v31 = ((2 * v22) & 0xFF6EFEE6 ^ 0xBA608EE4) + (v22 ^ 0x22C7B801);
  v32 = STACK[0xE509];
  LOBYTE(STACK[0xE509]) = *((((v31 + 4751501) % 7) | &STACK[0xE500]) + 9);
  *((((v31 + 4751501) % 7) | &STACK[0xE500]) + 9) = v32;
  v33 = &STACK[0xE500] + (((*(STACK[0xB90] + (((((v28 ^ 0x43A1A91E) % 6 + 1490026355 - 2 * (((v28 ^ 0x43A1A91E) % 6) & 3)) >> 1) ^ 0x2C67FFB9 | ((((v28 ^ 0x43A1A91E) % 6 + 1490026355) & 1) << 7)) ^ 0x35)) - 50) ^ 0x15) + 70);
  v34 = STACK[0xBA8];
  v35 = STACK[0xE50A];
  LOBYTE(v10) = STACK[0xBA0];
  LOBYTE(STACK[0xE50A]) = (v10 + 59 * *(STACK[0xBA8] + (((v33[10] ^ a1) - 43) ^ 0x14))) ^ 0x59;
  v33[10] = v35;
  v36 = *((((v27 - 1688851897) % 5u) | &STACK[0xE500]) + 0xB);
  HIDWORD(v16) = v36 ^ 8;
  LODWORD(v16) = (v36 ^ 0xFFFFFFDF) << 24;
  v37 = STACK[0xB80];
  v38 = *(STACK[0xB80] + ((v16 >> 28) ^ 0x4DLL)) ^ 0xD6;
  LOBYTE(v12) = 27 * v38 - ((54 * v38) & 0xB0);
  v39 = STACK[0xE50B];
  LOBYTE(STACK[0xE50B]) = v12 - 40;
  *((((v27 - 1688851897) % 5u) | &STACK[0xE500]) + 0xB) = v39;
  LODWORD(v12) = v31 - 576741803;
  v40 = ((v27 - 1688851897) ^ (v31 - 576741803)) - 294117375 - ((2 * ((v27 - 1688851897) ^ (v31 - 576741803))) & 0xDCF04002);
  LODWORD(v26) = v26 ^ 0x99E53967 ^ v28;
  v41 = ((2 * (v40 ^ v28)) & 0xDAFBDF3C ^ 0x5AB3123C) + (v40 ^ v28 ^ 0xC0A46681);
  v42 = (v40 ^ 0xEE782001) - ((2 * (v40 ^ 0xEE782001) + 1442047158) & 0xA9B4D4A8) - 2859857;
  v43 = ((2 * ((v42 ^ 0xD4DA6A54) + v12)) & 0x77B3DF7A) + (((v42 ^ 0xD4DA6A54) + v12) ^ 0xBBD9EFBD);
  LODWORD(STACK[0x68C]) = v26 - v41 + 1836969886 - ((2 * (v26 - v41 + 1836969886)) & 0xCF59C1CA) + 1739383013;
  LODWORD(STACK[0x690]) = v42;
  v44 = (v42 ^ 0x2B2595AB) + v41;
  v45 = (&STACK[0xE500] | (v26 - v41 - 98 - ((2 * (v26 - v41 - 98)) & 0xCA) - 27) & 3 ^ 0xDLL);
  LODWORD(v12) = *v45;
  HIDWORD(v16) = v12 ^ 8;
  LODWORD(v16) = (v12 ^ 0xFFFFFFDF) << 24;
  LOBYTE(v36) = *(v37 + ((v16 >> 28) ^ 0x4DLL)) ^ 0xD6;
  v46 = v44 - 1836969885;
  LODWORD(STACK[0xBC8]) = v44 - 755010464;
  LOBYTE(v44) = *(v34 + (((LOBYTE(STACK[0xE50C]) ^ a1) - 43) ^ 0x14));
  LOBYTE(STACK[0xE50C]) = (~(54 * v36) | 0x4F) + 27 * v36 - 39;
  LODWORD(STACK[0xB58]) = (2 * v46) & 0x80FAC7FA;
  *v45 = (v10 + 59 * v44) ^ 0x59;
  LODWORD(STACK[0x868]) = v43;
  LOBYTE(v45) = STACK[0xE50D];
  LOBYTE(STACK[0xE50D]) = *((((v43 + 1143345219) % 3u) | &STACK[0xE500]) + 0xD);
  *((((v43 + 1143345219) % 3u) | &STACK[0xE500]) + 0xD) = v45;
  LOBYTE(v44) = STACK[0xE50E];
  v47 = (&STACK[0xE500] | 0xE | v46 & 1);
  LOBYTE(STACK[0xE50E]) = *v47;
  *v47 = v44;
  return (*(STACK[0xBD8] + 8 * v7))((v7 - 1470923080) & 0x57AC7FED, 4000849921);
}

uint64_t sub_244B94F70@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X6>, char a4@<W8>)
{
  v14 = a2 ^ v11;
  v15 = v5 + 205;
  if ((((a1 ^ (v11 + 1450)) + v14 - ((2 * v14 + 2) & v12)) ^ v9) < 0x10)
  {
    v15 = v5 + 202;
  }

  *(v7 + v14) = a2 ^ a4;
  v16 = (*(v13 + (((v15 ^ v5) + (v6 ^ (2 * v15)) + 224) ^ v8)) * v4) == 142;
  return (*(a3 + 8 * (((4 * v16) | (8 * v16)) ^ v10)))();
}

uint64_t sub_244B94FEC(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = (&STACK[0xE500] | (v8 + 7) & 0xF);
  v11 = *v10;
  HIDWORD(v12) = v11 ^ 8;
  LODWORD(v12) = (v11 ^ 0xFFFFFFDF) << 24;
  v13 = STACK[0xE500];
  LOBYTE(v11) = (*(STACK[0xB98] + ((v12 >> 28) ^ 0x6DLL)) - 10) ^ 0x10;
  LOBYTE(STACK[0xE500]) = 27 * v11 - ((54 * v11) & 0xB0) - 40;
  *v10 = v13;
  v14 = STACK[0xE501];
  LOBYTE(STACK[0xE501]) = *((((a5 - 779594371) % 0xFu) | &STACK[0xE500]) + 1);
  *((((a5 - 779594371) % 0xFu) | &STACK[0xE500]) + 1) = v14;
  v15 = STACK[0xBD0];
  v16 = ((LODWORD(STACK[0xBD0]) - 227840359) % 0xEu) | &STACK[0xE500];
  LOBYTE(v10) = STACK[0xE502];
  LOBYTE(STACK[0xE502]) = *(v16 + 2);
  *(v16 + 2) = v10;
  v17 = STACK[0xE503];
  LOBYTE(STACK[0xE503]) = *((((v9 - 259257597) % 0xDu) | &STACK[0xE500]) + 3);
  *((((v9 - 259257597) % 0xDu) | &STACK[0xE500]) + 3) = v17;
  LODWORD(v16) = v15 - v8;
  v18 = ((v9 - 259257597) ^ a8) - ((2 * ((v9 - 259257597) ^ a8)) & 0x1DD107EE) - 1897364489;
  v19 = ((2 * (v18 ^ (v9 - a5 - 1057744077))) & 0xB29FE76E ^ 0x1091076E) + (v18 ^ (v9 - a5 - 1057744077) ^ 0xD7A77040);
  v20 = ((2 * v18) & 0xF83DFFFA ^ 0x8825CAF0) + (v18 ^ 0xB8CD1A87);
  v21 = STACK[0xE504];
  LOBYTE(STACK[0xE504]) = *((((v20 - 2082406397) % 0xC) | &STACK[0xE500]) + 4);
  *((((v20 - 2082406397) % 0xC) | &STACK[0xE500]) + 4) = v21;
  v22 = ((a5 + (v18 ^ 0x8EE883F7) + 798486480) ^ 0xFF7FBBF2) + 8406030 + ((2 * (a5 + (v18 ^ 0x8EE883F7) + 798486480)) & 0xFEFF77E4);
  v23 = STACK[0xE505];
  LOBYTE(STACK[0xE505]) = *(((v22 % 0xB) | &STACK[0xE500]) + 5);
  *(((v22 % 0xB) | &STACK[0xE500]) + 5) = v23;
  v24 = STACK[0xE506];
  LOBYTE(STACK[0xE506]) = *((((v16 - 1312301830) % 0xAu) | &STACK[0xE500]) + 6);
  *((((v16 - 1312301830) % 0xAu) | &STACK[0xE500]) + 6) = v24;
  v25 = STACK[0xE507];
  LOBYTE(STACK[0xE507]) = *((((v19 - 1498411959) % 9) | &STACK[0xE500]) + 7);
  *((((v19 - 1498411959) % 9) | &STACK[0xE500]) + 7) = v25;
  v26 = v19 - v16;
  v27 = v22 ^ (v16 + 1554169789);
  LODWORD(v16) = v16 - (v19 - v16) - ((2 * (v16 - (v19 - v16)) - 814407460) & 0x9379C852) + 829912215;
  v28 = v19 + v20 - ((2 * (v19 + v20) + 354556056) & 0x3C68A3CA) - 926589391;
  LOBYTE(v20) = STACK[0xE508];
  v29 = (&STACK[0xE500] | v28 & 7 ^ 0xDLL);
  LOBYTE(STACK[0xE508]) = *v29;
  *v29 = v20;
  LODWORD(v29) = ((2 * v27) & 0xEF6FAF6E ^ 0xAA618E64) + (v27 ^ 0xAAC710C5);
  HIDWORD(v12) = *((((v29 - 2008537015) % 7u) | &STACK[0xE500]) + 9);
  LODWORD(v12) = (HIDWORD(v12) ^ 0xD8) << 24;
  v30 = STACK[0xBB0];
  v31 = *(STACK[0xBB0] + ((v12 >> 25) ^ 0x9FLL));
  HIDWORD(v12) = v31;
  LODWORD(v12) = (v31 ^ 0x4E) << 24;
  LOBYTE(v31) = ((v12 >> 25) ^ 0xF2) - ((2 * ((v12 >> 25) ^ 0xF2) - 116) & 0xB0) + 30;
  v32 = LOBYTE(STACK[0xE509]);
  HIDWORD(v12) = v32 ^ 0x18;
  LODWORD(v12) = (v32 ^ 0xC0) << 24;
  LOBYTE(v32) = 33 * ((LOBYTE(STACK[0xB88]) - 117 * *(STACK[0xB78] + ((v12 >> 29) ^ 0xEBLL))) ^ 0x7E) - ((66 * ((LOBYTE(STACK[0xB88]) - 117 * *(STACK[0xB78] + ((v12 >> 29) ^ 0xEBLL))) ^ 0x7E)) & 0xB0) - 40;
  LOBYTE(STACK[0xE509]) = v31;
  *((((v29 - 2008537015) % 7u) | &STACK[0xE500]) + 9) = v32;
  LOBYTE(v31) = STACK[0xE50A];
  LOBYTE(STACK[0xE50A]) = *((((v16 ^ 0xC9BCE429) % 6) | &STACK[0xE500]) + 0xA);
  v26 += 465911015;
  *((((v16 ^ 0xC9BCE429) % 6) | &STACK[0xE500]) + 0xA) = v31;
  HIDWORD(v12) = *(v30 + ((((v26 % 5 - ((2 * (v26 % 5)) & 8) + 1629133236) >> 1) ^ 0x308D4CDA | (((v26 % 5) & 1) << 7)) ^ 0x9FLL));
  LODWORD(v12) = (HIDWORD(v12) ^ 0x4E) << 24;
  v33 = &STACK[0xE500] + (((v12 >> 25) ^ 0xF2) + 70);
  HIDWORD(v12) = LOBYTE(STACK[0xE50B]);
  LODWORD(v12) = (HIDWORD(v12) ^ 0xD8) << 24;
  LOBYTE(v20) = (*(STACK[0xB90] + ((v12 >> 25) ^ 0xB5)) - 50) ^ 0x15;
  LOBYTE(STACK[0xE50B]) = v33[11];
  v33[11] = v20 - ((2 * v20 - 116) & 0xB0) + 30;
  v34 = v28 ^ 0x5788B5CC ^ v16;
  LODWORD(v33) = ((v29 + 1704936977) ^ v26) - ((2 * ((v29 + 1704936977) ^ v26)) & 0x89031B16) + 1149341067;
  v35 = ((2 * ((v33 ^ 0x44818D8B) + 721023579)) & 0xBE3B3E7E) + (((v33 ^ 0x44818D8B) + 721023579) ^ 0xDF1D9F3F);
  LODWORD(v16) = ((2 * (v33 ^ v16)) & 0xF96E7AF8 ^ 0x186A5240) + (v33 ^ v16 ^ 0xF18A54DE);
  v36 = v34 - v16 + 2091107951 - ((2 * (v34 - v16 + 2092383612)) & 0xFFD911E6);
  LODWORD(STACK[0xBC0]) = v36 + 21;
  v37 = v35 + v29 - ((2 * (v35 + v29) + 218320292) & 0xFFD911E6) - 2039599163;
  LODWORD(v16) = v16 - v35;
  LODWORD(STACK[0x864]) = (2 * v16 + 80528262) & 0x353767CA;
  v38 = (&STACK[0xE500] | 0xC | (-21 - v36) & 3);
  LOBYTE(v35) = STACK[0xE50C];
  LOBYTE(STACK[0xE50C]) = *v38;
  *v38 = v35;
  LODWORD(STACK[0x774]) = v37;
  LOBYTE(v35) = STACK[0xE50D];
  LOBYTE(STACK[0xE50D]) = *((((v37 ^ 0xFFEC88F3) % 3) | &STACK[0xE500]) + 0xD);
  *((((v37 ^ 0xFFEC88F3) % 3) | &STACK[0xE500]) + 0xD) = v35;
  v39 = (&STACK[0xE500] | v16 & 1 ^ 0xF);
  v40 = STACK[0xE50E];
  LOBYTE(STACK[0xE50E]) = *v39;
  *v39 = v40;
  v41 = *(a7 + 8 * a1);
  LODWORD(STACK[0x858]) = v16 + 2097288616;
  return v41();
}

uint64_t sub_244B95BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0xBD0]) = v14;
  LODWORD(STACK[0xB38]) = v13;
  LODWORD(STACK[0xB40]) = v11;
  LODWORD(STACK[0xB60]) = v10;
  LODWORD(STACK[0xB68]) = v9;
  LODWORD(STACK[0x87C]) = v8;
  LODWORD(STACK[0x984]) = v7;
  LODWORD(STACK[0x91C]) = a7;
  v15 = 529 * (v12 ^ 0xB74D4D15);
  LODWORD(STACK[0x688]) = LODWORD(STACK[0xBC8]) - LODWORD(STACK[0xB58]);
  LODWORD(STACK[0x758]) = a5 - 1865675495;
  v16 = *(STACK[0xBD8] + 8 * (((v15 - 3593) * (v12 > 0x2516D536)) ^ (v12 + 1219675380)));
  LODWORD(STACK[0xB58]) = (v15 - 219799211) & 0xD19EF5E;
  return v16(3123525088, 536605951, 760944494, 3636166330, 2292257850, 3908304251, 3521641206, 1068379136);
}

uint64_t sub_244B95D34@<X0>(int a1@<W0>, int a2@<W3>, int a3@<W4>, uint64_t a4@<X8>)
{
  v18 = v13 - 153005503 * (a4 + (*(&STACK[0x1070] + a4) ^ 0xD8));
  v19 = v18 + v12 + v14 - 2102426384 + (v18 - 1213504825) % v11;
  v20 = (v19 - 1173264077 - (v8 & (2 * v19))) ^ v16;
  v21 = ((v20 - 466335382) ^ (v14 - 681716091)) - ((2 * ((v20 - 466335382) ^ (v14 - 681716091))) & 0x9329D0D6) - 912988053;
  v22 = v12 + 1408546370 + v20;
  v23 = v20 - 466335382 + (v16 ^ 0xBA116933) - (v5 & (2 * (v20 - 466335382 + (v16 ^ 0xBA116933)))) + 1851878749;
  HIDWORD(v24) = v20 + 70535530;
  LODWORD(v24) = v20 - 466335382;
  v25 = (v21 ^ 0x366B1794) + (v24 >> 29) - v22;
  v26 = (v25 - 361004588 - ((2 * v25 - 130792854) & v5) + 3262) ^ v23;
  v27 = v26 - ((2 * v26 + 70366844) & 0xCF54A678) + 1774399098;
  v28 = v23 ^ 0x9CB3E61 ^ v27;
  v29 = v27 ^ v21;
  v30 = ((v22 - 2082087219 + (v27 ^ 0x9855ACC3)) ^ 0xFDBEBDEE) + 37831186 + ((2 * (v22 - 2082087219 + (v27 ^ 0x9855ACC3))) & 0xFB7D7BDC);
  v31 = (27 * ((*(v15 + (HIBYTE(v27) & 0xF0) + 13) - 10) ^ 0x10)) ^ (16 * v27) ^ v29 ^ v30;
  v32 = ((2 * v31) & 0xBF0FF7FC ^ 0xA907112C) + (v31 ^ 0x8B1C7369);
  v33 = v4 + v28 - 429065906 + v32 - ((2 * (v28 - 429065906 + v32)) & 0xE4667E46);
  v34 = (v33 ^ v4) + v30 + v10 - (v7 & (2 * ((v33 ^ v4) + v30)));
  HIDWORD(v24) = v33 ^ 0x72333F23;
  LODWORD(v24) = ~v33;
  v35 = ((v24 >> 31) + v9 - ((2 * (v24 >> 31)) & 0xB81B08E8)) ^ v33 ^ v29;
  v36 = ((v35 + v10 - (v7 & (2 * v35))) ^ v34) - v32;
  LODWORD(STACK[0xBC8]) = (a2 & (2 * ((v36 + v6) ^ v34)) ^ a3) + ((v36 + v6) ^ v34 ^ a1);
  return (*(STACK[0xBD8] + 8 * (((8 * (a4 != 127)) | (16 * (a4 != 127))) ^ v17)))();
}

uint64_t sub_244B96034(__n128 a1)
{
  v5 = STACK[0xB58];
  v6 = (LODWORD(STACK[0xB58]) + 1116802970) & 0x1D6EFFDF;
  LODWORD(STACK[0x928]) = (((v3 ^ v2) - 453991055) ^ 0x6F7ECBBB) - 1696596112 + ((2 * ((v3 ^ v2) - 453991055)) & 0xDEFD9776);
  LODWORD(STACK[0x930]) = -v4 - ((-214820426 - 2 * v4) & 0xB289D708) - 757204897;
  v7 = STACK[0xBC8];
  LODWORD(STACK[0x940]) = 434950915 - LODWORD(STACK[0xBC8]) - ((942383846 - 2 * LODWORD(STACK[0xBC8])) & 0xFBAE0320);
  v8 = STACK[0xB60];
  LODWORD(STACK[0x950]) = 694125925 - (LODWORD(STACK[0xB60]) ^ 0xB4759F8A) - ((256665626 - 2 * (LODWORD(STACK[0xB60]) ^ 0xB4759F8A)) & 0x4372A2B0);
  LODWORD(STACK[0xBD0]) = v6;
  v9 = STACK[0xB38];
  LODWORD(STACK[0x944]) = (v6 ^ 0xAC2840B4) + LODWORD(STACK[0xB38]);
  v10 = STACK[0xB40];
  v11 = v9 + (LODWORD(STACK[0xB40]) ^ 0xA065465A) - 1054699334;
  LODWORD(STACK[0x960]) = ((-1376925654 - (LODWORD(STACK[0xB40]) ^ 0x5F9AB9A5)) ^ 0x1FFF3FFF) - 73409296 + ((2 * (-1376925654 - (LODWORD(STACK[0xB40]) ^ 0x5F9AB9A5))) & 0x3FFE7FFE);
  v12 = ((2 * v10) & 0xAE6B61BE ^ 0xA2620100) + (v10 ^ 0xA606BF5F);
  v13 = LODWORD(STACK[0xB68]) + (v8 ^ 0xD129617E) - v12 - 978464543 - ((2 * (LODWORD(STACK[0xB68]) + (v8 ^ 0xD129617E) - v12 - 684347168)) & 0xDCF04002);
  v14 = v11 ^ v8;
  v15 = v10 ^ v8;
  v16 = ((2 * v3) & 0x5F87FFE2 ^ 0x901BE20) + (v3 ^ 0xBB7B20E7);
  v17 = ((v1 + 386663045) ^ 0x9AA3010B) - 2 * (((v1 + 386663045) ^ 0x9AA3010B) & 0x38901816 ^ (v1 + 386663045) & 4) - 1198516206;
  v18 = v4 - v16 + (v17 ^ 0x476FE7ED);
  v19 = v17 ^ ((v3 ^ 0x45EE96CC) + v7 + 329400484);
  v20 = ((2 * (v17 ^ (v16 - 801374193))) & 0xFF5F5BDE ^ 0x71001004) + (v17 ^ (v16 - 801374193) ^ 0xC73FB5FD);
  v21 = v16 + 1093324670 + (v19 ^ 0xB8901812);
  LODWORD(STACK[0x920]) = (((v19 ^ 0xB8901812) + 1537582916) ^ 0x7BEFFFFB) - 21500640 + ((2 * ((v19 ^ 0xB8901812) + 1537582916)) & 0xF7DFFFF6);
  v22 = ((2 * v15) & 0xFF77D3FC ^ 0xBF430200) + (v15 ^ 0xA05E78FF);
  LODWORD(STACK[0x948]) = -1352880583 - (v13 ^ 0xEE782001) - ((1020299754 - 2 * (v13 ^ 0xEE782001)) & 0x21E8D288);
  LODWORD(STACK[0x970]) = ((-11465326 - (v14 ^ 0x2ED69E81)) ^ 0xFF53BD77) + 1056898796 + ((2 * (-11465326 - (v14 ^ 0x2ED69E81))) & 0xFEA77AEE);
  LODWORD(STACK[0x968]) = 362164248 - v20 - ((1347418048 - 2 * v20) & 0xDADC6870);
  LODWORD(STACK[0x958]) = -139622357 - v16 - ((1036489376 - 2 * v16) & 0x31937DB6);
  v23 = ((2 * (v12 - 1715918531 + (v14 ^ 0x2ED69E81))) & 0xD4BDDA9E) + ((v12 - 1715918531 + (v14 ^ 0x2ED69E81)) ^ 0x6A5EED4F);
  LODWORD(STACK[0x8DC]) = v13;
  v24 = ((2 * (v13 ^ v14)) & 0x5DFFFFBC ^ 0x1041DD9C) + (v13 ^ v14 ^ 0xA6DF1130);
  LODWORD(STACK[0x978]) = v22 - 1843397307;
  v25 = ((2 * (v21 + 2733)) & 0xD53FDEF8) + ((v21 + 2733) ^ 0x6A9FEF7C);
  LODWORD(STACK[0x93C]) = v18 + 793575170;
  LODWORD(STACK[0xAB8]) = (v19 ^ 0x701E487C ^ (v18 + 40429700)) - ((2 * (v19 ^ 0x701E487C ^ (v18 + 40429700)) + 254689288) & 0xA6E82C6) + 214851943;
  LODWORD(STACK[0xBC8]) = v19 ^ 0xE8D4D47B;
  LODWORD(STACK[0xAE0]) = (((v19 ^ 0x6EC4F170) - 1788866427 + v25) ^ 0xDE3FFDEF) + 1073675030 + ((2 * ((v19 ^ 0x6EC4F170) - 1788866427 + v25)) & 0xBC7FFBDE);
  v26 = ((((v14 ^ 0xF88277E3) - 1784606030 + v23) ^ 0x7FDF9B7F) - 2145385343 + ((2 * ((v14 ^ 0xF88277E3) - 1784606030 + v23)) & 0xFFBF36FE) + 24576) ^ 0x7ADF1BEC;
  LODWORD(STACK[0x7B0]) = LODWORD(STACK[0xBC0]) - 21;
  LODWORD(STACK[0xB60]) = v23 + v22 - v24 - 1413078258 - ((2 * (v23 + v22 - v24) + 2057048346) & 0xDCF04002) + 1408;
  LODWORD(STACK[0xB68]) = (v14 ^ 0x77D881C) - ((2 * (v14 ^ 0x77D881C) + 1271956268) & 0xDCF04002) - 1805622889;
  LODWORD(STACK[0xAB0]) = v26 - ((2 * v26) & 0xF52DF1E6) - 90769165;
  v27 = *(STACK[0xBD8] + 8 * v5);
  v28.n128_u64[0] = 0xD8D8D8D8D8D8D8D8;
  v28.n128_u64[1] = 0xD8D8D8D8D8D8D8D8;
  LODWORD(STACK[0x9C4]) = -838908636;
  LODWORD(STACK[0x9B8]) = 2139029487;
  LODWORD(STACK[0x898]) = 1870654331;
  LODWORD(STACK[0x9B0]) = -907326602;
  LODWORD(STACK[0x7E0]) = -1067693329;
  STACK[0x9A8] = &STACK[0xC0E0];
  STACK[0x9A0] = &STACK[0x4B40];
  STACK[0x998] = &STACK[0xEB80];
  STACK[0x888] = &STACK[0xDC37];
  STACK[0x880] = &STACK[0x2777];
  STACK[0x990] = &STACK[0xB200];
  return v27(a1, v28);
}

uint64_t sub_244B967E0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, int a8)
{
  LODWORD(STACK[0xA98]) = a5;
  LODWORD(STACK[0xAA8]) = a8;
  STACK[0x908] = v8;
  LODWORD(STACK[0x98C]) = a7;
  v9 = STACK[0xBD0];
  v10 = (LODWORD(STACK[0xBD0]) - 2914);
  STACK[0x900] = a3;
  v11 = *(STACK[0xBD8] + 8 * ((2690 * (a3 < v10 - 10549)) ^ v9));
  STACK[0xB60] = *(&off_278E1E490 + (v9 ^ 0x378E));
  STACK[0xB08] = *(&off_278E1E490 + (v9 ^ 0x3293)) - 8;
  STACK[0xB38] = *(&off_278E1E490 + v9 - 12186) - 4;
  STACK[0xBC0] = *(&off_278E1E490 + v9 - 11877);
  return v11(176, &STACK[0x2770], &STACK[0xDC30], 130, 2152325919, a6, 44, 175014598);
}

uint64_t sub_244B968FC@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, int a5@<W5>, char a6@<W6>, char a7@<W8>)
{
  v19 = v8 + v9;
  v20 = STACK[0xB68];
  v21 = v8 + v9 + 1;
  *(a3 + v21) = ((LODWORD(STACK[0xB68]) ^ 1) + 106) ^ v12;
  *(a2 + v21) = v11 ^ a6;
  *(a3 + v19) = (a5 - ((v10 + 2 * a5) & ((v7 - 119) ^ 0xFD)) + 89) ^ 0xBA;
  *(a2 + v19) = a7 ^ 0xBB;
  v19 += 2;
  *(a3 + v19) = v17 ^ a4;
  *(a2 + v19) = v16 - ((2 * v16 + 106) & a1) + 13;
  v22 = (v8 - 287984953) & 0xFFFFFFFC | 3;
  *(a3 + v22) = v15 ^ v13;
  *(a2 + v22) = v14 - ((2 * v14 - 10) & a1) - 45;
  LODWORD(v22) = (a5 - ((v10 + 2 * a5) & ((v7 + 2953) ^ 0x96A4E5FD)) - 312640423) ^ ((v20 ^ v18) + 1511505514);
  LODWORD(v22) = ((2 * v22) & 0xD9A7FFBE ^ 0x90A4D102) + (v22 ^ 0xA781975E);
  v23 = (v17 ^ 0x197213C4) - a5 + ((2 * v17) & 0x36F3FEFA ^ 0x413D872);
  LODWORD(STACK[0xB68]) = v22 + v23 + v22 - 2023813199 + ((-835575648 - 2 * (v22 + v23 + v22)) | 0x230FBFFD);
  return (*(STACK[0xBD8] + 8 * ((226 * ((v8 - 287984949) > 0x3F)) ^ v7)))();
}

uint64_t sub_244B96BAC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, int a4@<W5>, int a5@<W8>)
{
  LODWORD(STACK[0xB40]) = a4;
  LODWORD(STACK[0xB20]) = v10;
  LODWORD(STACK[0xAB0]) = v8;
  LODWORD(STACK[0xAE0]) = v7;
  LODWORD(STACK[0xAB8]) = a5;
  LODWORD(STACK[0xBC8]) = v6;
  LODWORD(STACK[0xAF8]) = v9;
  return (*(STACK[0xBD8] + 8 * v5))(&STACK[0xDC30], &STACK[0x2770], a1, a2, a3, LODWORD(STACK[0xBA0]), 20, (v5 - 1794698576) & 0x6AF8BFD6);
}

uint64_t sub_244B96C30(uint64_t a1, double a2, int8x16_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = (&STACK[0x1070] + v12 + v11 + a10 + 1349592401);
  v14 = *v13;
  v15 = v13[1];
  v16 = (a1 + v11);
  v17 = veorq_s8(v15, veorq_s8(*(a1 + v11 + 16), a3));
  *v16 = veorq_s8(v14, veorq_s8(*(a1 + v11), a3));
  v16[1] = v17;
  return (*(STACK[0xBD8] + 8 * ((494 * (v11 == 32)) ^ v10)))();
}

uint64_t sub_244B96CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, unint64_t a7, unsigned int a8)
{
  v13 = (v8 - 731665678) & 0xFFFFFFFC | 3;
  v14 = *(a2 + v13);
  v15 = *(STACK[0xB60] + 4 * (v14 ^ 0x3E));
  v16 = v8 - 731665678;
  v17 = *(a1 + v8 - 731665678);
  v18 = (v14 ^ 0xD8) + 1155088203 - (((v14 ^ 0xD8) << ((-105 * (a8 ^ 0x80)) ^ 0x8B)) & 0x96);
  LODWORD(v17) = *(STACK[0xB38] + 4 * (v17 ^ 0xD1)) + 721702082;
  v19 = v8 - 731665676;
  v20 = v8 - 731665677;
  v21 = v18 ^ v15;
  HIDWORD(v22) = v17 ^ 0xBBD9;
  LODWORD(v22) = v17 ^ 0x83DC0000;
  LODWORD(v17) = v22 >> 16;
  v23 = *(STACK[0xB38] + 4 * (*(&STACK[0xDC30] + v8 - 731665677) ^ 0xB3)) + 721702082;
  HIDWORD(v22) = v21 ^ 0x6D;
  LODWORD(v22) = v21 ^ 0x3EBE8300;
  v24 = v22 >> 8;
  HIDWORD(v22) = v23 ^ 0x390598;
  LODWORD(v22) = v23 ^ 0xD000000;
  v25 = a6 + *(v10 + (((*(&STACK[0xDC30] + v13) ^ 0xDA) - 43) ^ a7)) * v9;
  v26 = *(&STACK[0x2770] + v8 - 731665676);
  LODWORD(v17) = (*(STACK[0xB38] + 4 * (*(&STACK[0xDC30] + v8 - 731665676) ^ 0x1ALL)) + 721702082) ^ v17 ^ (v22 >> 24);
  HIDWORD(v22) = v26 ^ 6;
  LODWORD(v22) = (v26 ^ 0xC0) << 24;
  LOBYTE(v26) = 27 * (*(v12 + ((v22 >> 28) ^ 0x4DLL)) ^ 0xD6);
  HIDWORD(v22) = *(&STACK[0x2770] + v8 - 731665677);
  LODWORD(v22) = (HIDWORD(v22) ^ 0xD8) << 24;
  v27 = *(STACK[0xBB0] + ((v22 >> 25) ^ 0xBDLL));
  HIDWORD(v22) = v27;
  LODWORD(v22) = (v27 ^ 0x4E) << 24;
  v28 = *(STACK[0xBC0] + 4 * (v26 ^ 0x9Fu));
  v29 = ((v22 >> 25) ^ 0xFFFFFFF2) + 70;
  HIDWORD(v22) = v28 ^ 0x12337B;
  LODWORD(v22) = v28 ^ 0xB5C00000;
  v30 = v22 >> 21;
  v31 = (v29 + 1155088203 - ((2 * v29) & 0x96)) ^ *(STACK[0xB60] + 4 * (v29 ^ 8u));
  HIDWORD(v22) = v31 ^ 0x460C59;
  LODWORD(v22) = v31 ^ 0x39000000;
  v32 = v22 >> 24;
  v33 = *(STACK[0xB60] + 4 * (*(&STACK[0x2770] + v8 - 731665678) ^ 0xCBLL)) ^ ((*(&STACK[0x2770] + v8 - 731665678) ^ 0xD8) + 1155088203 - ((2 * (*(&STACK[0x2770] + v8 - 731665678) ^ 0xD8)) & 0x96));
  HIDWORD(v22) = v33 ^ 0xBC2A;
  LODWORD(v22) = v33 ^ 0xC53D0000;
  v34 = STACK[0xB90];
  v35 = *(STACK[0xB38] + 4 * ((((*(STACK[0xB90] + (((v25 >> 1) | ((v25 & 1) << 7)) ^ 0x85)) - 50) ^ 0x15) + 70) ^ 0x8Bu)) + 721702082;
  v36 = v30 ^ v24 ^ (v22 >> 16) ^ v32;
  HIDWORD(v22) = v35 ^ 0x95;
  LODWORD(v22) = v35 ^ 0xB7D46500;
  LODWORD(v17) = v17 ^ (v22 >> 8);
  *(&STACK[0x2770] + v16) = (HIBYTE(v36) ^ 0x10) - 2 * ((HIBYTE(v36) ^ 0x10) & 0x5E ^ HIBYTE(v36) & 6) - 40;
  *(&STACK[0x2770] + v20) = (BYTE2(v36) ^ 0x45) - ((2 * (BYTE2(v36) ^ 0x45)) & 0xB0) - 40;
  *(&STACK[0xDC30] + v16) = BYTE3(v17) ^ 0xF4;
  *(&STACK[0xDC30] + v20) = BYTE2(v17) ^ 0x74;
  LOBYTE(v16) = 33 * ((LOBYTE(STACK[0xB88]) - 117 * *(v11 + (((v17 >> 5) & 0xF8 | (v17 >> 13)) ^ 0xDDLL))) ^ 0x7E) - ((66 * ((LOBYTE(STACK[0xB88]) - 117 * *(v11 + (((v17 >> 5) & 0xF8 | (v17 >> 13)) ^ 0xDDLL))) ^ 0x7E)) & 0xB4);
  *(&STACK[0x2770] + v19) = (BYTE1(v36) ^ 0x7C) - ((2 * (BYTE1(v36) ^ 0x7C)) & 0xB0) - 40;
  *(&STACK[0xDC30] + v19) = v16 - 38;
  *(&STACK[0xDC30] + v13) = (((*(v34 + (((v17 >> 1) | ((v17 & 1) << 7)) ^ 5)) - 50) ^ 0x15) + 70) ^ 0x3B;
  *(&STACK[0x2770] + v13) = v36 ^ 0xCD;
  return (*(STACK[0xBD8] + 8 * ((((v8 - 731665674) < 0x40) | (8 * ((v8 - 731665674) < 0x40))) ^ a8)))();
}

uint64_t sub_244B97088@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W5>, char a6@<W6>, char a7@<W8>)
{
  v17 = STACK[0xBD0];
  v18 = v7 + v15;
  v19 = LODWORD(STACK[0xB68]) ^ (31 * (LODWORD(STACK[0xBD0]) ^ 0x36E1) - 294135014);
  v20 = v7 + v15 + 1;
  *(a3 + v20) = (((2 * (v19 + 106)) & 0x7E) + ((v19 + 106) ^ 0xBF) + 65) ^ v10;
  *(a2 + v20) = v9 ^ a6;
  *(a3 + v18) = (a5 - ((v8 + 2 * a5) & 0xEE) + 79) ^ 0x4C;
  *(a2 + v18) = a7 ^ 0xBB;
  v21 = v7 + v15 + 2;
  *(a3 + v21) = v16 ^ a4;
  *(a2 + v21) = v14 - ((2 * v14 + 106) & a1) + 13;
  v22 = (v7 - 1660262847) & 0xFFFFFFFC | 3;
  *(a3 + v22) = v13 ^ v11;
  *(a2 + v22) = v12 - ((2 * v12 - 10) & a1) - 45;
  v23 = v19 - ((2 * v19 + 338656468) & 0x146A9A7E) + 1682770857;
  v24 = ((2 * v23) & 0x7FFF7C38 ^ 0x8E32808) + (v23 ^ 0xFB8E6AD9);
  LODWORD(STACK[0xB68]) = v24 - ((2 * v24 - 875493644) & 0xDCF04002) + 1415619451;
  return (*(STACK[0xBD8] + 8 * ((7 * ((v7 + 4 + v15) > 0x3F)) ^ v17)))();
}

uint64_t sub_244B97360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0xAB0]) = v9;
  LODWORD(STACK[0xAE0]) = v8;
  LODWORD(STACK[0xBC8]) = v7;
  LODWORD(STACK[0xAF8]) = v10;
  return (*(STACK[0xBD8] + 8 * ((11 * (STACK[0x908] - 1647651746 > 0xFFFFFF7E)) ^ v6)))(&STACK[0xDC30], a2, a3, a4, a5, a6, 20);
}

uint64_t sub_244B97430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0xB40]) = a6;
  v7 = *(STACK[0xBD8] + 8 * v6);
  LODWORD(STACK[0xBD0]) = v6 + 4952;
  return v7();
}

uint64_t sub_244B974B8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  HIDWORD(v22) = *(v21 + v14);
  LODWORD(v22) = (HIDWORD(v22) ^ v9) << 24;
  v23 = *(v20 + ((v22 >> 25) ^ a5));
  HIDWORD(v22) = v23;
  LODWORD(v22) = (v23 ^ v18) << 24;
  *(v16 + (v12 + v13)) ^= ((v22 >> 25) ^ a7) + 70;
  if (v15 > 0x62352BA1 != v11 < 0x565D7723)
  {
    v24 = v15 > 0x62352BA1;
  }

  else
  {
    v24 = v10 > v11;
  }

  if (v24)
  {
    v25 = v19;
  }

  else
  {
    v25 = a8;
  }

  return (*(STACK[0xBD8] + 8 * ((((*(a6 + v25) * v17) == 46) * a4) ^ v8)))();
}

uint64_t sub_244B9756C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = STACK[0xBD0];
  *(v6 + (1647651745 - v5)) ^= ((LODWORD(STACK[0xBD0]) - 120) | 0x60) ^ 0xF6;
  return (*(STACK[0xBD8] + 8 * v7))(&STACK[0xDC30], a2, a3, a4, a5, LODWORD(STACK[0xB40]), 20);
}

uint64_t sub_244B975C0()
{
  LOBYTE(STACK[0xDC30]) ^= 0x80u;
  LOBYTE(STACK[0xDC6E]) ^= 4u;
  v1 = LOBYTE(STACK[0xDC6C]);
  HIDWORD(v2) = v1 ^ 0x1A;
  LODWORD(v2) = (v1 ^ 0xC0) << 24;
  LOBYTE(STACK[0xDC6C]) = 33 * (((v0 ^ 0xDE) - 117 * *(STACK[0xB78] + ((v2 >> 29) ^ 0xEBLL))) ^ 0x7E) - ((66 * (((v0 ^ 0xDE) - 117 * *(STACK[0xB78] + ((v2 >> 29) ^ 0xEBLL))) ^ 0x7E)) & 0xB4) - 38;
  return (*(STACK[0xBD8] + 8 * v0))();
}

uint64_t sub_244B97650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, int a7@<W8>)
{
  LODWORD(STACK[0xB40]) = a6;
  LODWORD(STACK[0xB20]) = v8;
  LODWORD(STACK[0xAB8]) = a7;
  return (*(STACK[0xBD8] + 8 * (v7 - 11298)))(a1, a2, a3, a4, a5, LODWORD(STACK[0xBA0]));
}

uint64_t sub_244B9769C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unint64_t a7)
{
  v14 = v9 - 1623028906;
  v15 = *(v11 + v9 - 1623028903);
  HIDWORD(v16) = v15 ^ 8;
  LODWORD(v16) = (v15 ^ 0xFFFFFFDF) << 24;
  v17 = *(a1 + v9 - 1623028906);
  v18 = *(v13 + ((v16 >> 28) ^ 0x4DLL));
  v19 = *(STACK[0xB38] + 4 * (v17 ^ 0xAD)) + v10;
  LODWORD(v17) = v19 ^ 0xC5EE;
  v20 = v19 ^ 0xAF880000;
  v21 = v9 - 1623028904;
  LODWORD(v17) = __PAIR64__(v17, v20) >> 16;
  v22 = *(STACK[0xB38] + 4 * (*(&STACK[0xDC30] + v9 - 1623028903) ^ 0x83)) + v10;
  v23 = v9 - 1623028905;
  v24 = v22 ^ 0x43;
  v25 = *(&STACK[0xDC30] + v9 - 1623028905);
  v26 = v22 ^ 0xA3EF0500;
  HIDWORD(v16) = v25 ^ 0xFFFFFFFB;
  LODWORD(v16) = (v25 ^ 0x30) << 24;
  LOBYTE(v22) = v16 >> 28;
  v27 = *(&STACK[0x2770] + v9 - 1623028906);
  v28 = __PAIR64__(v24, v26) >> 8;
  HIDWORD(v16) = v27 ^ 0x18;
  LODWORD(v16) = (v27 ^ 0xC0) << 24;
  LOBYTE(v27) = v16 >> 29;
  v29 = *(v12 + (((*(&STACK[0x2770] + v9 - 1623028905) ^ 0xD8) - 43) ^ a7));
  v30 = *(STACK[0xBC0] + 4 * (*(&STACK[0x2770] + v9 - 1623028904) ^ 0xB5));
  v31 = (27 * (v18 ^ v8)) ^ 0x7Cu;
  HIDWORD(v16) = v30 ^ 0x12337B;
  LODWORD(v16) = v30 ^ 0xB5C00000;
  v32 = v16 >> 21;
  v33 = *(STACK[0xBC0] + 4 * v31);
  HIDWORD(v16) = v33 ^ 0x12337B;
  LODWORD(v16) = v33 ^ 0xB5C00000;
  v34 = v16 >> 21;
  v35 = ((a6 + 59 * v29) + 1155088203 - ((2 * (a6 + 59 * v29)) & 0x96)) ^ *(STACK[0xB60] + 4 * ((a6 + 59 * v29) ^ 0xCBu));
  HIDWORD(v16) = v35 ^ 0x3B5E19;
  LODWORD(v16) = v35 ^ 0x6C000000;
  v36 = v16 >> 24;
  v37 = *(STACK[0xBC0] + 4 * ((33 * ((*(STACK[0xBB8] + (v27 ^ 0x2DLL)) - 106) ^ 0x15)) ^ 0xCAu));
  HIDWORD(v16) = v34 ^ 0xA3;
  LODWORD(v16) = v34 ^ 0x276A8500;
  v38 = v16 >> 8;
  HIDWORD(v16) = v37 ^ 0x12337B;
  LODWORD(v16) = v37 ^ 0xB5C00000;
  v39 = v16 >> 21;
  HIDWORD(v16) = v39 ^ 0x2376;
  LODWORD(v16) = v39 ^ 0x13310000;
  v40 = STACK[0xB98];
  v41 = v17 ^ *(STACK[0xB08] + 4 * (*(&STACK[0xDC30] + v9 - 1623028904) ^ 0x16)) ^ (v28 - 739339824 - ((2 * v28) & 0xA7DD23A0));
  LODWORD(v17) = *(STACK[0xB38] + 4 * ((a6 + 59 * *(v12 + ((((27 * ((*(STACK[0xB98] + (v22 ^ 0x6DLL)) - 10) ^ 0x10)) ^ 0xD1) - 43) ^ 0x14))) ^ 0xD1u)) + 721702082;
  v42 = v32 ^ (v16 >> 16);
  HIDWORD(v16) = v17 ^ 0xBB25B8;
  LODWORD(v16) = v17 ^ 0x29000000;
  LODWORD(v17) = v42 ^ v36 ^ v38;
  v43 = v41 ^ (v16 >> 24);
  *(&STACK[0x2770] + v14) = (BYTE3(v17) ^ 0x27) + (~(v17 >> 23) | 0x4F) - 39;
  *(&STACK[0xDC30] + v14) = HIBYTE(v43);
  *(&STACK[0xDC30] + v23) = BYTE2(v43) ^ 0xB9;
  *(&STACK[0x2770] + v23) = (BYTE2(v17) ^ 0xA6) + (~(v17 >> 15) | 0x4F) - 39;
  LOBYTE(v23) = *(v40 + (((v43 >> 4) & 0xF0 | (v43 >> 12)) ^ 0xBCLL));
  *(&STACK[0x2770] + v21) = (BYTE1(v17) ^ 0x91) - 2 * ((BYTE1(v17) ^ 0x91) & 0x5E ^ BYTE1(v17) & 6) - 40;
  *(&STACK[0xDC30] + v21) = (27 * ((v23 - 10) ^ 0x10)) ^ 0x3B;
  LOBYTE(v21) = *(v12 + (((v41 ^ BYTE3(v16)) + 85) ^ 0x14));
  v44 = (v9 - 1623028906) & 0xFFFFFFFC | 3;
  *(&STACK[0x2770] + v44) = v17 ^ 0xB2;
  *(&STACK[0xDC30] + v44) = (a6 + 59 * v21) ^ 0x5B;
  return (*(STACK[0xBD8] + 8 * ((11490 * ((v9 - 1623028902) < 0x40)) ^ v7)))();
}

uint64_t sub_244B97A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (v4 - 1899289614) & 0x7134DBFF;
  v6 = *(STACK[0xBD8] + 8 * v4);
  STACK[0xB18] = 0x100000000;
  LODWORD(STACK[0xB10]) = v5 - 2120823263;
  LODWORD(STACK[0xAD8]) = v5 - 5499;
  LODWORD(STACK[0xAD0]) = v5 - 6631;
  LODWORD(STACK[0xAC8]) = v5 ^ 0x1956;
  LODWORD(STACK[0xAE8]) = v5;
  LODWORD(STACK[0xAC0]) = v5 - 6923;
  v7 = STACK[0x888];
  STACK[0xB58] = 4;
  return v6(a1, a2, v7, a4, 0, LODWORD(STACK[0xB40]), 2045762292, LODWORD(STACK[0xAB0]));
}

uint64_t sub_244B97B2C@<X0>(unint64_t a1@<X2>, unint64_t a2@<X4>, int a3@<W5>, int a4@<W6>, int a5@<W7>, unsigned int a6@<W8>)
{
  LODWORD(STACK[0xAE0]) = v7;
  STACK[0xBD0] = a1;
  STACK[0xBC8] = v6;
  v13 = a3 - (((a3 + 34280408) & 0x1C8E1FD7 ^ a3 & 1) << (LODWORD(STACK[0xB10]) + 100)) + 1050227630;
  v14 = STACK[0xB38];
  v15 = *(STACK[0xB38] + 4 * ((a3 - (((a3 - 40) & 0xD7 ^ a3 & 1) << (LODWORD(STACK[0xB10]) + 100)) - 82) ^ 0xC9u)) + 721702082;
  v16 = ((*(STACK[0xBD0] - 7) ^ 0x3B) << 24) | ((*(STACK[0xBD0] - 6) ^ 0x3B) << 16) | ((*(a1 - 5) ^ 0x3B) << 8) | *(a1 - 4) ^ 0xDA;
  v17 = *(STACK[0xB08] + 4 * (BYTE2(v13) ^ 0xE8u));
  HIDWORD(v19) = v17 ^ 0x90EDBD;
  LODWORD(v19) = v17 ^ 0x76000000;
  v18 = v19 >> 24;
  v20 = *(STACK[0xB08] + 4 * (HIBYTE(v13) ^ 0xD8));
  v21 = STACK[0xB08];
  HIDWORD(v19) = v15 ^ 0x7A;
  LODWORD(v19) = v15 ^ 0x59651800;
  v22 = v19 >> 8;
  HIDWORD(v19) = v20 ^ 0xAD26;
  LODWORD(v19) = v20 ^ 0x91420000;
  v23 = (*(STACK[0xB38] + 4 * (BYTE1(v13) ^ 7u)) + 721702082) ^ v18 ^ v22 ^ (v19 >> 16) ^ v16;
  v24 = ((*(v6 - 7) ^ 0xD8) << 24) | ((*(v6 - 6) ^ 0xD8) << 16);
  v25 = *(v6 - 5);
  HIDWORD(v19) = v25 ^ 0x18;
  LODWORD(v19) = (v25 ^ 0xC0) << 24;
  *(v8 + 4 * a2) = v23 ^ 0xB977E34C;
  v27 = STACK[0xBA8];
  v28 = LODWORD(STACK[0xBA0]) + 59 * *(STACK[0xBA8] + (((a6 ^ 0x63) - 43) ^ 0x14));
  v29 = v24 & 0xFFFF00FF | ((33 * ((*(STACK[0xBB8] + ((v19 >> 29) ^ 0x2DLL)) - 106) ^ 0x15)) << 8) | *(STACK[0xBC8] - 4) ^ 0xD8;
  v30 = (v28 + 1155088203 - ((2 * v28) & 0x96)) ^ *(STACK[0xB60] + 4 * (v28 ^ 0xB8u));
  v31 = *(STACK[0xBC0] + 4 * ((27 * ((*(STACK[0xB98] + (((a6 >> 4) & 0xF0 | (a6 >> 12)) ^ 0x79)) - 10) ^ 0x10)) ^ 0x5Cu));
  v32 = *(STACK[0xB60] + 4 * (BYTE2(a6) ^ 0x67u));
  v33 = v32 ^ ((BYTE2(a6) ^ 0x37) + 1155088203 - ((2 * (BYTE2(a6) ^ 0x37)) & 0x96));
  HIDWORD(v19) = v30 ^ 0x17;
  LODWORD(v19) = v30 ^ 0x8095300;
  v34 = v19 >> 8;
  v35 = STACK[0xB80];
  v36 = *(STACK[0xB60] + 4 * (HIBYTE(a6) ^ 0x1D));
  HIDWORD(v19) = HIBYTE(a6) ^ 0x8C66 ^ v36;
  LODWORD(v19) = v36 ^ 0x2D3A0000;
  v37 = v19 >> 16;
  HIDWORD(v19) = v31 ^ 0x12337B;
  LODWORD(v19) = v31 ^ 0xB5C00000;
  v38 = v29 ^ v37 ^ (v19 >> 21) ^ v34 ^ ((27 * (*(STACK[0xB80] + (((v33 >> 20) & 0xF0 | (v32 >> 28)) ^ 0xE9)) ^ 0xD6)) | (v33 << 8));
  v39 = *(v9 + 8 * SLODWORD(STACK[0xAD8]));
  *(&STACK[0xEB40] + a2) = v38 ^ 0x1E84B3B1;
  v40 = v39 - 8;
  v41 = *(v39 - 8 + 4 * (v23 ^ 0xBCu));
  v42 = *(v39 - 8 + 4 * (BYTE1(v23) ^ 0x9Au));
  v43 = *(v9 + 8 * SLODWORD(STACK[0xAD0])) - 8;
  STACK[0xAF0] = v43;
  v44 = *(v43 + 4 * (BYTE2(v23) ^ 0x1Cu));
  HIDWORD(v19) = v41 ^ 0xA;
  LODWORD(v19) = v41 ^ 0x4AEC6300;
  v45 = v19 >> 8;
  HIDWORD(v19) = v44 ^ 0xA181EE;
  LODWORD(v19) = v44 ^ 0xAC000000;
  LODWORD(v39) = v19 >> 25;
  HIDWORD(v19) = v39 ^ 0x49C6E1;
  LODWORD(v19) = v39 ^ 0xCC000000;
  LODWORD(v39) = v19 >> 24;
  HIDWORD(v19) = 59 * *(v27 + (((HIBYTE(v23) ^ 0x45) - 43) ^ 0x14));
  LODWORD(v19) = 989855744 * *(v27 + (((HIBYTE(v23) ^ 0x45) - 43) ^ 0x14)) + 1929379840;
  v46 = (v45 - 298419064 - ((2 * v45) & 0xDC6CF910)) ^ v42 ^ v39;
  v47 = *(v9 + 8 * LODWORD(STACK[0xAC8])) - 8;
  v48 = *(v47 + 4 * (v38 ^ 0x63u));
  STACK[0xB30] = v47;
  LOBYTE(v45) = *(STACK[0xB90] + ((v19 >> 25) ^ 0xB5));
  v49 = STACK[0xB90];
  HIDWORD(v19) = v48 ^ 0x2C;
  LODWORD(v19) = v48 ^ 0xAEFD9D00;
  v50 = v19 >> 8;
  HIDWORD(v19) = *(STACK[0xBB0] + (((v38 >> 1) & 0x80 | (v38 >> 9)) ^ 0x62));
  LODWORD(v19) = (HIDWORD(v19) ^ 0x4E) << 24;
  v51 = (((v19 >> 25) ^ 0xF2) + 70) ^ 0x8Fu;
  v52 = *(v9 + 8 * SLODWORD(STACK[0xAC0])) - 12;
  STACK[0xB28] = v52;
  v53 = *(v52 + 4 * (BYTE2(v38) ^ 0xEBu));
  HIDWORD(v19) = v53 ^ 0xEFF2AD;
  LODWORD(v19) = v53 ^ 0xC5000000;
  v54 = v19 >> 24;
  v55 = *(v40 + 4 * ((((v45 - 50) ^ 0x15) + 70) ^ 0x71u));
  v56 = *(v47 + 4 * (HIBYTE(v38) ^ 0xB3));
  HIDWORD(v19) = v56 ^ 0xBFE5;
  LODWORD(v19) = v56 ^ 0xAA7D0000;
  v57 = (v50 - 1760242984 - ((2 * v50) & 0x2E29A5B0)) ^ v54;
  v58 = LODWORD(STACK[0xB68]) ^ 0xEE782001;
  v59 = v57 ^ (v19 >> 16) ^ *(v52 + 4 * v51);
  v60 = a6 ^ 0xD04C5959 ^ v59;
  HIDWORD(v19) = v55 ^ 0x96A7;
  LODWORD(v19) = v55 ^ 0xCFE80000;
  v61 = v59 ^ 0x732A792E;
  v62 = v10 ^ 0x2C94C2CE ^ v59;
  v63 = v46 ^ (v19 >> 16);
  v64 = STACK[0xB20];
  v65 = v10 ^ a4;
  v66 = v62 - (v10 ^ a4);
  v67 = a6 ^ 0x85374163;
  v68 = v60 - (a6 ^ 0x85374163);
  v69 = v13 ^ (v58 - ((2 * v58 + 875527380) & 0x391C3FAC) - 156901824) ^ v63;
  v70 = LODWORD(STACK[0xB20]) ^ a5;
  v71 = ((2 * LODWORD(STACK[0xB20])) & 0xB7DDC8F6 ^ 0xA6118840) + (LODWORD(STACK[0xB20]) ^ 0x8CF6385B);
  v72 = v69 ^ v61;
  v73 = v69 ^ 0x26516114;
  LODWORD(v51) = (v13 ^ 0x9C8E1FD6) - v71 - ((2 * ((v13 ^ 0x9C8E1FD6) - v71) - 1210201866) & 0xD10524EE) + 1148286706;
  v74 = v51 ^ v70;
  v75 = v58 - v71 + (v70 ^ 0x28AEC0C0) - ((2 * (v58 - v71 + (v70 ^ 0x28AEC0C0)) + 1812809164) & 0x7A88D984) - 213184600;
  v76 = v68 ^ v66;
  v77 = ((v11 - 116385483) ^ 0xD5133099) + 1683005735 - ((2 * ((v11 - 116385483) ^ 0xD5133099)) & 0xC8A1424E);
  v78 = (v51 ^ v70 ^ 0xBFD3AD48) + v71;
  v79 = v63 ^ 0x26516114;
  v80 = v67 - (v77 ^ 0x6450A127) - ((2 * (v67 - (v77 ^ 0x6450A127))) & 0xF746FD48) + 2074312356;
  v81 = v79 + (LODWORD(STACK[0xB20]) ^ 0x820BECB9);
  LODWORD(v52) = ((LODWORD(STACK[0xAE0]) - 507443461) ^ v77 ^ 0x6450A127) - 2 * (((LODWORD(STACK[0xAE0]) - 507443461) ^ v77 ^ 0x6450A127) & 0x10C2A15E ^ ((LODWORD(STACK[0xAE0]) - 507443461) ^ v77) & 0x18) - 1866292922;
  LODWORD(v47) = v52 ^ v80;
  LODWORD(STACK[0xB68]) = v52 ^ v80;
  v82 = v65 + (v77 ^ 0x9BAF5ED8) + (v52 ^ 0x6F3D5EB9) + 2;
  v83 = v82 - 143507281 - ((2 * v82) & 0xEEE4815E);
  v84 = v80 ^ v77;
  STACK[0xB40] = a2;
  *(&STACK[0x4B00] + a2) = v81 - 335569605 + ((-786622166 - 2 * v81) | 0x56E3AC5F);
  v85 = (v76 ^ (v72 - v73)) - v11 - ((2 * ((v76 ^ (v72 - v73)) - v11) + 2121015738) & 0xDCF04002);
  v86 = ((2 * ((v47 ^ 0xEB61DFE2) + (v77 ^ 0x6450A127))) & 0xFF7FB5FC) + (((v47 ^ 0xEB61DFE2) + (v77 ^ 0x6450A127)) ^ 0x7FBFDAFE);
  v87 = *(STACK[0xBD0] - 2);
  LODWORD(v52) = (*(STACK[0xBD0] - 3) ^ 0x3B) << 24;
  *(v12 + 4 * a2) = v85 - 1381093154;
  HIDWORD(v19) = v87 ^ 0xFFFFFFFB;
  LODWORD(v19) = (v87 ^ 0x30) << 24;
  LOBYTE(v85) = 27 * (*(v35 + ((v19 >> 28) ^ 0x4DLL)) ^ 0xD6);
  v88 = *(v14 + 4 * (v75 ^ 0xE0u)) + 721702082;
  HIDWORD(v19) = v88 ^ 0x6C;
  LODWORD(v19) = v88 ^ 0x75A24700;
  v89 = v19 >> 8;
  v90 = (2 * v89) & 0xA7DD23A0;
  LODWORD(v52) = v52 & 0xFF00FFFF | (v85 << 16);
  v91 = *(v21 + 4 * ((((*(v49 + (((v75 >> 9) & 0x80 | (v75 >> 17) & 0x7F) ^ 0x2ELL)) - 50) ^ 0x15) + 70) ^ 0x61u));
  v92 = v89 - 739339824;
  v93 = *(v21 + 4 * (HIBYTE(v75) ^ 0x5F));
  v94 = v21;
  HIDWORD(v19) = v93 ^ 0x6FE4;
  LODWORD(v19) = v93 ^ 0x26C0000;
  v95 = v19 >> 16;
  HIDWORD(v19) = v91 ^ 0xE26C51;
  LODWORD(v19) = v91 ^ 0x17000000;
  v96 = (v52 | ((*(STACK[0xB50] + (((*(STACK[0xBD0] - 1) ^ 0xDA) - 43) ^ 0x96)) ^ 0x5E) << 8) | *STACK[0xBD0] ^ 0xDA) ^ *(v21 + 4 * (BYTE1(v75) ^ 0x46u)) ^ (v92 - v90);
  v97 = STACK[0xB58];
  LODWORD(v52) = STACK[0xB58] - 2;
  STACK[0xB58] = STACK[0xB58];
  v98 = v96 ^ v95;
  v99 = 4 * (((a2 + 1) ^ 0x17FFDEE74AB75AE4) + (v52 & 0x956EB5C8)) - 0x5FFF7B9D2ADD6B90;
  v100 = v98 ^ (v19 >> 24);
  LODWORD(v52) = ((*(STACK[0xBC8] - 3) ^ 0xD8) << 24) | ((*(STACK[0xBC8] - 2) ^ 0xD8) << 16) | ((*(STACK[0xBC8] - 1) ^ 0xD8) << 8);
  v101 = *STACK[0xBC8] ^ 0xD8;
  *(&STACK[0xC0A0] + v99) = v100 ^ 0xDB90E657;
  v102 = *(STACK[0xBC0] + 4 * (v83 ^ 0xF0u));
  v103 = *(STACK[0xBC0] + 4 * (BYTE1(v83) ^ 0x5Eu));
  HIDWORD(v19) = v102 ^ 0x12337B;
  LODWORD(v19) = v102 ^ 0xB5C00000;
  v104 = v19 >> 21;
  HIDWORD(v19) = v103 ^ 0x12337B;
  LODWORD(v19) = v103 ^ 0xB5C00000;
  v105 = v19 >> 21;
  v106 = *(STACK[0xBC0] + 4 * (BYTE2(v83) ^ 0x7Au));
  HIDWORD(v19) = v106 ^ 0x12337B;
  LODWORD(v19) = v106 ^ 0xB5C00000;
  v107 = v19 >> 21;
  v108 = STACK[0xB98];
  HIDWORD(v19) = v104 ^ 0xFFFFFFF1;
  LODWORD(v19) = v104 ^ 0xBF673400;
  v109 = v19 >> 8;
  HIDWORD(v19) = v107 ^ 0xB0429D;
  LODWORD(v19) = v107 ^ 0x8F000000;
  v110 = v19 >> 24;
  LODWORD(v35) = *(STACK[0xBC0] + 4 * ((27 * ((*(STACK[0xB98] + (((v83 >> 20) & 0xF0 | (~v83 >> 28)) ^ 0x1ALL)) - 10) ^ 0x10)) ^ 0x9Fu));
  HIDWORD(v19) = v35 ^ 0x12337B;
  LODWORD(v19) = v35 ^ 0xB5C00000;
  LODWORD(v35) = v19 >> 21;
  HIDWORD(v19) = v35 ^ 0xC0A7;
  LODWORD(v19) = v35 ^ 0xDE410000;
  LODWORD(v52) = (v52 | v101) ^ v105 ^ v109 ^ v110 ^ (v19 >> 16);
  *(&STACK[0xEB40] + v99) = v52 ^ 0xADECBC16;
  v111 = *(STACK[0xAF0] + 4 * (v100 ^ 0x3Eu));
  HIDWORD(v19) = v111 ^ 0xA181EE;
  LODWORD(v19) = v111 ^ 0xAC000000;
  v112 = v19 >> 25;
  v113 = *(v40 + 4 * (BYTE1(v100) ^ 0xA6u));
  v114 = STACK[0xBA8];
  HIDWORD(v19) = v112 ^ 0xB7;
  LODWORD(v19) = v112 ^ 0x8ED9B400;
  v115 = v19 >> 8;
  v116 = STACK[0xBA0];
  v117 = *(STACK[0xAF0] + 4 * ((v116 + 59 * *(STACK[0xBA8] + (((BYTE2(v100) ^ 0xC9) - 43) ^ 0x14))) ^ 0x8Du));
  v118 = *(v40 + 4 * (HIBYTE(v100) ^ 0xBB));
  HIDWORD(v19) = v118 ^ 0x19DC;
  LODWORD(v19) = v118 ^ 0x886E0000;
  v119 = v19 >> 16;
  HIDWORD(v19) = v117 ^ 0xA181EE;
  LODWORD(v19) = v117 ^ 0xAC000000;
  v120 = v19 >> 25;
  v121 = *(STACK[0xB30] + 4 * (v52 ^ 0x99u));
  HIDWORD(v19) = v121 ^ 0xF5;
  LODWORD(v19) = v121 ^ 0x7C158900;
  v122 = (v115 - 298419064 - ((2 * v115) & 0xDC6CF910)) ^ v113 ^ v119;
  v123 = ((v19 >> 8) - 1760242984 - ((2 * (v19 >> 8)) & 0x2E29A5B0)) ^ *(STACK[0xB28] + 4 * (BYTE1(v52) ^ 0xA2u));
  v124 = *(STACK[0xB30] + 4 * ((27 * ((*(v108 + (((v52 >> 12) & 0xF0 | (v52 >> 20) & 0xF) ^ 0x24)) - 10) ^ 0x10)) ^ 0xFEu));
  HIDWORD(v19) = v124 ^ 0x9597B2;
  LODWORD(v19) = v124 ^ 0x7F000000;
  v125 = v19 >> 24;
  LODWORD(v52) = *(STACK[0xB28] + 4 * (BYTE3(v52) ^ 0xCA));
  HIDWORD(v19) = v52 ^ 0xD3AC;
  LODWORD(v19) = v52 ^ 0x211F0000;
  LODWORD(v51) = v51 ^ v64 ^ v75;
  LODWORD(v52) = v123 ^ (v19 >> 16) ^ v125;
  v126 = v122 ^ ((33 * ((*(STACK[0xBB8] + (((v120 >> 21) & 0xF8 | (v120 >> 29)) ^ 0x47)) - 106) ^ 0x15)) | (v120 << 8));
  v127 = v51 ^ v126;
  v128 = v126 ^ 0xE091E55A;
  LODWORD(v35) = v78 + 605100933;
  v129 = v75 ^ 0xBD446CC2;
  v130 = (v74 ^ 0x12DD8F77) + v78;
  v131 = v130 + 2112320474;
  LODWORD(v27) = (v51 ^ 0x82DE2295 ^ (v130 + 605100934)) + 1728029330 - (LODWORD(STACK[0x9C4]) & (2 * (v51 ^ 0x82DE2295 ^ (v130 + 605100934))));
  v132 = v129 + v78 - 902118607 + v130 + 2112320474 - 634725593 - ((2 * (v129 + v78 - 902118607 + v130 + 2112320474)) & 0xB455B64E);
  v133 = v132 ^ v74;
  LODWORD(v51) = v86 - 2143279870 + (v83 ^ 0xF77240AF);
  LODWORD(v52) = (((v84 ^ 0xDC40F458 ^ v52) - (v84 ^ 0x1FF3DF83)) ^ ((v83 ^ 0x34C16B74 ^ v52) - (v83 ^ 0xF77240AF)) ^ ((v127 ^ v52 ^ 0xA1FCEC14) - (v127 ^ 0x624FC7CF))) - v86;
  v134 = STACK[0xB68];
  v135 = v131 - ((2 * v131 + 850494334) & 0x30D6E366) + 1908683634;
  v136 = (LODWORD(STACK[0xB68]) ^ 0x466FFDDD) - 2143279870 + v86 + 1;
  v137 = ((2 * v136) & 0x6DBBE5DC) + (v136 ^ 0x36DDF2EE);
  LODWORD(v51) = v51 + v137;
  v138 = (v83 ^ v84 ^ (v137 - 920515310) ^ 0xE8819F2C) - 1628593895 - 2 * ((v83 ^ v84 ^ (v137 - 920515310) ^ 0xE8819F2C) & 0x1EEDA11B ^ (v83 ^ v84 ^ (v137 - 920515310)) & 2);
  v139 = v137 - ((2 * v137 - 123580854) & 0x8ACE4618) - 1044886991;
  *(&STACK[0xB1C0] + v99) = v35 + v128 - 1497478637 - ((2 * (v35 + v128) + 1888244772) & 0xDCF04002);
  v140 = STACK[0xB40] + 2;
  v141 = ((*(STACK[0xBD0] + 1) ^ 0x3B) << 24) | ((*(STACK[0xBD0] + 2) ^ 0x3B) << 16) | ((*(STACK[0xBD0] + 3) ^ 0x3B) << 8) | *(STACK[0xBD0] + 4) ^ 0xDA;
  *(&STACK[0x4B00] + v99) = v52 - ((2 * v52 + 778214608) & 0xA91C53A0) + 1807710264;
  LODWORD(v99) = *(v14 + 4 * ((v131 - ((2 * v131 + 126) & 0x66) + 114) ^ 0x16u)) + 721702082;
  HIDWORD(v19) = v99 ^ 0x38;
  LODWORD(v19) = v99 ^ 0xBBB3A500;
  LODWORD(v99) = v19 >> 8;
  v142 = *(v14 + 4 * ((v116 + 59 * *(v114 + (((BYTE2(v135) ^ 0xB8) - 43) ^ 0x14))) ^ 0xD1u)) + 721702082;
  LODWORD(v35) = *(v94 + 4 * (HIBYTE(v135) ^ 0xC9));
  HIDWORD(v19) = v35 ^ 0xF32;
  LODWORD(v19) = v35 ^ 0x16570000;
  LODWORD(v35) = v19 >> 16;
  HIDWORD(v19) = v142 ^ 0xF29A4E;
  LODWORD(v19) = v142 ^ 0xFA000000;
  LODWORD(v52) = v99 ^ (*(v14 + 4 * (((v131 - ((2 * v131 - 31874) & 0xE366) + 13170) >> 8) ^ 0xCu)) + 721702082) ^ v141;
  v143 = 4 * ((v140 ^ 0x1FED6EF7DF807F3FLL) + (v97 & 0xBF00FE7E)) - 0x7FB5BBDF7E01FCFCLL;
  LODWORD(v52) = v52 ^ v35 ^ (v19 >> 24);
  v144 = ((*(STACK[0xBC8] + 1) ^ 0xD8) << 24) | ((*(STACK[0xBC8] + 2) ^ 0xD8) << 16) | ((*(STACK[0xBC8] + 3) ^ 0xD8) << 8);
  v145 = *(STACK[0xBC8] + 4) ^ 0xD8;
  *(&STACK[0xC0A0] + v143) = v52 ^ 0x2BEC42ED;
  v146 = STACK[0xB80];
  v147 = *(STACK[0xBC0] + 4 * (BYTE1(v139) ^ 0xDu));
  HIDWORD(v19) = v147 ^ 0x12337B;
  LODWORD(v19) = v147 ^ 0xB5C00000;
  v148 = v19 >> 21;
  LODWORD(v140) = *(STACK[0xBC0] + 4 * ((27 * (*(STACK[0xB80] + (((v139 >> 4) | (16 * (v139 & 0xF))) ^ 0x8DLL)) ^ 0xD6)) ^ 0xB7u));
  LODWORD(v35) = *(STACK[0xB60] + 4 * (BYTE2(v139) ^ 0x2Au)) ^ ((BYTE2(v139) ^ 0x67) + 1155088203 - ((2 * (BYTE2(v139) ^ 0x67)) & 0x96));
  HIDWORD(v19) = v35 ^ 0xD394DC;
  LODWORD(v19) = v35 ^ 0xA0000000;
  LODWORD(v35) = v19 >> 24;
  HIDWORD(v19) = v140 ^ 0x12337B;
  LODWORD(v19) = v140 ^ 0xB5C00000;
  LODWORD(v140) = v19 >> 21;
  LODWORD(v114) = STACK[0xB88];
  v149 = *(STACK[0xBC0] + 4 * ((33 * ((LOBYTE(STACK[0xB88]) - 117 * *(STACK[0xB78] + (((v139 >> 21) & 0xF8 | (v139 >> 29)) ^ 0xC1))) ^ 0x7E)) ^ 0x90u));
  HIDWORD(v19) = v149 ^ 0x12337B;
  LODWORD(v19) = v149 ^ 0xB5C00000;
  v150 = v19 >> 21;
  HIDWORD(v19) = v140 ^ 0x8C;
  LODWORD(v19) = v140 ^ 0xEED2BA00;
  LODWORD(v140) = v19 >> 8;
  HIDWORD(v19) = v150 ^ 0x68DC;
  LODWORD(v19) = v150 ^ 0x10890000;
  v151 = v148 ^ (v144 | v145) ^ v35 ^ v140 ^ (v19 >> 16);
  *(&STACK[0xEB40] + v143) = v151 ^ 0x606280C;
  v152 = *(v40 + 4 * (v52 ^ 0x42u));
  HIDWORD(v19) = v152 ^ 0xDDDDDDDD;
  LODWORD(v19) = v152 ^ 0x884A0800;
  v153 = v19 >> 8;
  v154 = STACK[0xBB0];
  HIDWORD(v19) = *(STACK[0xBB0] + (((v52 >> 1) & 0x80 | (v52 >> 9)) ^ 0xFFLL));
  LODWORD(v19) = (HIDWORD(v19) ^ 0x4E) << 24;
  LOBYTE(v140) = (((v19 >> 25) ^ 0xF2) + 70) ^ 0x67;
  HIDWORD(v19) = *(STACK[0xBB0] + (((v52 >> 9) & 0x80 | (v52 >> 17) & 0x7F) ^ 0xE2));
  LODWORD(v19) = (HIDWORD(v19) ^ 0x4E) << 24;
  LODWORD(v52) = *(v40 + 4 * (BYTE3(v52) ^ 0xD3));
  v155 = (((v19 >> 25) ^ 0xF2) + 70) ^ 0x67u;
  HIDWORD(v19) = v52 ^ 0x5FFA;
  LODWORD(v19) = v52 ^ 0x8C340000;
  LODWORD(v52) = v19 >> 16;
  LODWORD(v35) = *(STACK[0xB30] + 4 * (v151 ^ 0x92u));
  LODWORD(v155) = *(v40 + 4 * v155);
  HIDWORD(v19) = v35 ^ 0x78;
  LODWORD(v19) = v35 ^ 0x6C9D8D00;
  v156 = (v153 - 298419064 - ((2 * v153) & 0xDC6CF910)) ^ *(v40 + 4 * v140);
  LODWORD(v140) = *(STACK[0xB28] + 4 * (BYTE1(v151) ^ 0xCAu));
  LODWORD(v35) = (v19 >> 8) - 1760242984 - ((2 * (v19 >> 8)) & 0x2E29A5B0);
  v157 = *(STACK[0xB30] + 4 * (BYTE2(v151) ^ 0x79u));
  HIDWORD(v19) = v155 ^ 0xE53DBC;
  LODWORD(v19) = v155 ^ 0xCC000000;
  LODWORD(v155) = v19 >> 24;
  v158 = *(STACK[0xB28] + 4 * (HIBYTE(v151) ^ 0x7C));
  HIDWORD(v19) = v158 ^ 0xD471;
  LODWORD(v19) = v158 ^ 0xF1F70000;
  v159 = v35 ^ v140 ^ (v19 >> 16) ^ ((27 * (*(v146 + (((v157 >> 20) & 0xF0 | (v157 >> 28)) ^ 0xC3)) ^ 0xD6)) | (v157 << 8));
  v160 = v156 ^ v52 ^ v155;
  LODWORD(v52) = v27 ^ v132 ^ v160;
  LODWORD(v155) = v52 ^ 0x9EFA4F86;
  LODWORD(v140) = v52 ^ 0xC7048E42 ^ v159;
  LODWORD(v35) = v138 ^ 0xC71360DD ^ v159;
  v138 ^= 0x9EEDA119;
  LODWORD(v52) = v135 ^ 0x186B71B3;
  v161 = (v51 - 920515310) ^ v134;
  v162 = v139 ^ 0x4567230C;
  v163 = ((2 * v133) & 0x7EFF37FE ^ 0x380C015E) + (v133 ^ 0x2379BB50);
  v164 = (v51 - 920515310) ^ 0x59FEC1C4 ^ v159;
  v165 = v163 - 1065327615;
  v166 = ((2 * (v163 - 1065327615 + (v132 ^ 0xDA2ADB27))) & 0xAFBBAFDE) + ((v163 - 1065327615 + (v132 ^ 0xDA2ADB27)) ^ 0x57DDD7EF);
  v167 = v160 ^ 0x222F3633;
  v168 = (v166 + 1469795489) ^ ((v27 ^ 0x66FFA292) - v163 + 1065327615);
  v169 = ((2 * v161) & 0x3F3E7FEE ^ 0x253C1244) + (v161 ^ 0x8D01B6D5);
  v170 = v165 - v168 - ((2 * (v165 - v168)) & 0x884ECB50) - 1004051032;
  v171 = (v169 + v51 - 1451045605) ^ (v162 - 530530295 + v169);
  LODWORD(v140) = v140 - v155;
  LODWORD(STACK[0xB68]) = ((2 * v171) & 0x3CABF7B4) + (v171 ^ 0x1E55FBDA);
  LODWORD(v155) = v138 - v169 + 530530295;
  LODWORD(v140) = v140 ^ (v35 - v138);
  v172 = v169 + v51 + 1497688964 - ((2 * (v169 + v51) + 16245590) & 0x91F75E) + 470;
  LODWORD(v140) = v140 ^ (920515310 - v51 + v164);
  v173 = v172 ^ v155;
  LODWORD(v140) = v140 - v162;
  v174 = (v172 ^ v155 ^ 0xFFB70450) + v169 - ((2 * ((v172 ^ v155 ^ 0xFFB70450) + v169) - 1061060588) & 0xA9CCB2F2) - 1253631613;
  *(&STACK[0xB1C0] + v143) = v167 + v52 - 1497478637 - ((2 * (v167 + v52) + 1888244772) & 0xDCF04002);
  v175 = STACK[0xB40];
  v176 = STACK[0xB40] + 0x100000000;
  v177 = *(STACK[0xBD0] + 7);
  *(&STACK[0x4B00] + v143) = ~((2 * v140 + 786622164) & 0xA91C53A0) + v140 - 335569605;
  HIDWORD(v19) = v177 ^ 0xFFFFFFFB;
  LODWORD(v19) = (v177 ^ 0x30) << 24;
  LOBYTE(v143) = v19 >> 28;
  HIDWORD(v19) = *(STACK[0xBD0] + 5);
  LODWORD(v19) = (HIDWORD(v19) ^ 0xDA) << 24;
  LODWORD(v35) = *(v14 + 4 * (HIBYTE(v170) ^ 0x3C)) + 721702082;
  LODWORD(v140) = *(v154 + ((v19 >> 25) ^ 0x9FLL));
  LODWORD(v155) = *(v14 + 4 * (BYTE2(v170) ^ 0x53u)) + 721702082;
  HIDWORD(v19) = v140;
  LODWORD(v19) = (v140 ^ 0x4E) << 24;
  LOBYTE(v140) = v19 >> 25;
  LODWORD(v94) = *(v14 + 4 * ((v165 - v168 - ((2 * (v165 - v168)) & 0x50) - 88) ^ 0x87u)) + 721702082;
  HIDWORD(v19) = v155 ^ 0x2861B;
  LODWORD(v19) = v155 ^ 0xF3000000;
  LODWORD(v155) = v19 >> 24;
  HIDWORD(v19) = v94 ^ 0xA1;
  LODWORD(v19) = v94 ^ 0xF7B31800;
  v178 = v19 >> 8;
  v179 = STACK[0xBC0];
  LODWORD(v140) = ((*(STACK[0xBD0] + 6) ^ 0x3B) << 16) | (((LODWORD(STACK[0xBA0]) + 59 * *(STACK[0xBA8] + (((((v140 ^ 0xF2) + 70) ^ 0xE1) - 43) ^ 0x14))) ^ 0xFFFFFF81) << 24) | ((27 * ((*(STACK[0xB98] + (v143 ^ 0x6DLL)) - 10) ^ 0x10)) << 8);
  v180 = STACK[0xB18];
  v181 = STACK[0xB18] & 0xFFFFFFF0 | 0xF;
  HIDWORD(v19) = v35 ^ 0xFB99;
  LODWORD(v19) = v35 ^ 0xCAD80000;
  v182 = 4 * ((v176 & 0xFFFFFFFC ^ 0x3E57F97BDFBDD7F8) + ((2 * v176) & 0xBF7BAFF0)) + 0x6A01A108108A02CLL;
  LODWORD(v176) = (*(v14 + 4 * (BYTE1(v170) ^ 0xA2u)) + 721702082) ^ (v19 >> 16) ^ v155 ^ v178 ^ (v140 | *(&STACK[0xDC30] + v181) ^ 0xDA);
  LODWORD(v35) = *(&STACK[0x2770] + v181);
  LODWORD(v140) = ((*(STACK[0xBC8] + 5) ^ 0xD8) << 24) | ((*(STACK[0xBC8] + 7) ^ 0xD8) << 8);
  *(&STACK[0xC0A0] + v182) = v176 ^ 0xC93AFFAF;
  HIDWORD(v19) = v35 ^ 0x18;
  LODWORD(v19) = (v35 ^ 0xC0) << 24;
  LODWORD(v35) = *(v179 + 4 * (v174 ^ 0x64u));
  v183 = v175;
  LOBYTE(v155) = 33 * ((*(STACK[0xBB8] + ((v19 >> 29) ^ 0x2DLL)) - 106) ^ 0x15);
  HIDWORD(v19) = v35 ^ 0x12337B;
  LODWORD(v19) = v35 ^ 0xB5C00000;
  LODWORD(v35) = v19 >> 21;
  LODWORD(v140) = v140 & 0xFFFFFF00 | v155;
  HIDWORD(v19) = v35 ^ 0x56;
  LODWORD(v19) = v35 ^ 0xE92A3500;
  LODWORD(v155) = v19 >> 8;
  v184 = STACK[0xB90];
  LODWORD(v35) = *(STACK[0xB60] + 4 * (BYTE2(v174) ^ 0x77u)) ^ ((BYTE2(v174) ^ 0xE6) + 1155088203 - 2 * ((BYTE2(v174) ^ 0xE6) & 0x5B ^ HIWORD(v174) & 0x10));
  HIDWORD(v19) = v35 ^ 0xDAED65;
  LODWORD(v19) = v35 ^ 0x3C000000;
  LODWORD(v35) = v19 >> 24;
  v185 = *(v179 + 4 * ((((*(STACK[0xB90] + (((v174 >> 1) & 0x80 | (v174 >> 9)) ^ 0xCFLL)) - 50) ^ 0x15) + 70) ^ 0x9Fu));
  v186 = *(v179 + 4 * ((33 * ((v114 - 117 * *(STACK[0xB78] + (((v174 >> 21) & 0xF8 | (v174 >> 29)) ^ 0x4DLL))) ^ 0x7E)) ^ 0xBu));
  HIDWORD(v19) = v185 ^ 0x12337B;
  LODWORD(v19) = v185 ^ 0xB5C00000;
  v187 = v19 >> 21;
  HIDWORD(v19) = v186 ^ 0x12337B;
  LODWORD(v19) = v186 ^ 0xB5C00000;
  v188 = v19 >> 21;
  HIDWORD(v19) = v188 ^ 0xEBDC;
  LODWORD(v19) = v188 ^ 0x250E0000;
  LODWORD(v140) = v155 ^ (v140 | ((*(STACK[0xBC8] + 6) ^ 0xD8) << 16)) ^ v35 ^ v187 ^ (v19 >> 16);
  *(&STACK[0xEB40] + v182) = v140 ^ 0x35A50103;
  LODWORD(v155) = *(STACK[0xAF0] + 4 * (v176 ^ 0x1Du));
  HIDWORD(v19) = v155 ^ 0xA181EE;
  LODWORD(v19) = v155 ^ 0xAC000000;
  LODWORD(v155) = v19 >> 25;
  HIDWORD(v19) = v155 ^ 0x41;
  LODWORD(v19) = v155 ^ 0x48D9EE00;
  LODWORD(v155) = v19 >> 8;
  LODWORD(v35) = *(STACK[0xAF0] + 4 * (BYTE2(v176) ^ 0x3Du));
  HIDWORD(v19) = v35 ^ 0xA181EE;
  LODWORD(v19) = v35 ^ 0xAC000000;
  LODWORD(v35) = v19 >> 25;
  HIDWORD(v19) = v35 ^ 0x446DFA;
  LODWORD(v19) = v35 ^ 0xCFFFFFFF;
  LODWORD(v52) = ((2 * ((v166 - 1474156527) ^ (v165 + v52))) & 0xEDFCDF66) + ((v166 - 1474156527) ^ (v165 + v52) ^ 0xF6FE6FB3);
  v189 = ((v176 >> 17) & 0x80 | (v176 >> 25)) ^ 0x2FLL;
  v190 = *(STACK[0xB28] + 4 * (v140 ^ 0x71u));
  LODWORD(v35) = (v19 >> 24) ^ *(v40 + 4 * (BYTE1(v176) ^ 0xCCu));
  HIDWORD(v19) = v190 ^ 0x1B;
  LODWORD(v19) = v190 ^ 0x86CFE900;
  v191 = v19 >> 8;
  LODWORD(v176) = v155 - 298419064 - ((2 * v155) & 0xDC6CF910);
  LODWORD(v155) = BYTE1(v140) ^ 0x25;
  v192 = *(STACK[0xB30] + 4 * (BYTE2(v140) ^ 0x87u));
  LODWORD(v35) = v35 ^ v176;
  HIDWORD(v19) = v192 ^ 0xB5B908;
  LODWORD(v19) = v192 ^ 0x3A000000;
  LODWORD(v176) = v19 >> 24;
  LODWORD(v140) = *(STACK[0xB30] + 4 * (BYTE3(v140) ^ 0x1B));
  LODWORD(v189) = *(v40 + 4 * ((((*(v184 + v189) - 50) ^ 0x15) + 70) ^ 0x6Au));
  HIDWORD(v19) = v140 ^ 0x9939;
  LODWORD(v19) = v140 ^ 0x9E650000;
  LODWORD(v155) = v176 ^ *(STACK[0xB28] + 4 * v155) ^ (v19 >> 16) ^ (v191 - 1760242984 - ((2 * v191) & 0x2E29A5B0));
  HIDWORD(v19) = v189 ^ 0xFC61;
  LODWORD(v19) = v189 ^ 0xF2B0000;
  LODWORD(v140) = (v166 - ((2 * v166 + 792107330) & 0x4C25A1BA) + 2108562814) ^ v168 ^ v155;
  LODWORD(v35) = v35 ^ (v19 >> 16);
  *(&STACK[0x4B00] + v182) = v52 + 151097421 + (v155 ^ 0x62632460) - 335569605 + ((-786622166 - 2 * (v52 + 151097421 + (v155 ^ 0x62632460))) | 0x56E3AC5F);
  v193 = STACK[0xB68];
  v194 = ((2 * (v170 ^ v168)) & 0xEFFDEFFC ^ 0x884CCB50) + (v170 ^ v168 ^ 0xB3D99256);
  v195 = ((v194 - 1259891405) ^ (v166 - 1039939881)) + 808398831 - ((2 * ((v194 - 1259891405) ^ (v166 - 1039939881))) & 0x605E5FDE);
  LODWORD(v52) = v194 + v52;
  v196 = v170 ^ (v166 - 2043990913 - ((2 * v166 - 2079879762) & 0x884ECB50));
  v197 = v196 + 1376063731 + v194;
  v198 = ((v35 ^ 0xA402A029 ^ v172) - (v172 ^ 0x48FBAF)) ^ ((v35 ^ 0xA402A029 ^ v173) - (v173 ^ 0x48FBAF));
  v199 = v196 + v197 - ((v52 - ((2 * v52 + 570765470) & 0x605E5FDE) - 1053702082) ^ v195);
  v196 += 1192962217;
  LODWORD(STACK[0xB20]) = (v196 ^ 0x6C73CCB8) - 294117375 - 2 * ((v196 ^ 0x6C73CCB8) & 0x6E782007 ^ v196 & 6);
  v200 = (v198 ^ ((v35 ^ 0xE03BAF3B ^ v140) - (v140 ^ 0x4471F4BD))) - v193;
  v201 = ((2 * (((v195 ^ 0x302F2FEF) - v199 + 250030702) ^ v196)) & 0xFF1F77FE) + (((v195 ^ 0x302F2FEF) - v199 + 250030702) ^ v196 ^ 0x7F8FBBFF);
  LODWORD(STACK[0xB68]) = v201 - ((2 * v201 + 1286671150) & 0xDCF04002) + 349218200;
  *(&STACK[0xB1C0] + v182) = v200 - ((2 * v200 - 1388819496) & 0xDCF04002) - 988527123;
  v202 = *(STACK[0xBD8] + 8 * ((246 * (v183 + 4 < 0x10)) ^ LODWORD(STACK[0xAE8])));
  STACK[0xB18] = v180 + 16;
  STACK[0xB58] += 8;
  return v202();
}

uint64_t sub_244B99CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  STACK[0x890] = v6;
  v7 = LODWORD(STACK[0xB10]) + 2120820116;
  v8 = *(STACK[0xBD8] + 8 * ((4438 * (LODWORD(STACK[0xB10]) > 0x960A8D4A)) ^ v7));
  STACK[0xB58] = 355 * (v7 ^ 0xF3Eu);
  LODWORD(STACK[0xB40]) = v7 ^ 0xD4A;
  LODWORD(STACK[0xB18]) = v7 ^ 0xAEB;
  LODWORD(STACK[0xB10]) = v7 ^ 0xEE4;
  LODWORD(STACK[0xAF8]) = v7 ^ 0xFC2;
  LODWORD(STACK[0xAE8]) = v7 ^ 0xBAF;
  return v8(a1, 0, (a6 + 608604515));
}

uint64_t sub_244B99D6C@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W8>)
{
  STACK[0xBD0] = v4 + 1;
  STACK[0xBC8] = a2 + 2;
  v13 = 4 * (((a2 + 2) & 0x17FBFFF6ELL) + ((v4 + 1) ^ 0x2FB7B337BFDFEB7ALL ^ STACK[0xB58])) + 0x4121332100800124;
  v14 = *(v9 + v13);
  v15 = *(&STACK[0xEB40] + v13);
  LODWORD(v13) = *(*(&off_278E1E490 + SLODWORD(STACK[0xB40])) + (BYTE1(v14) ^ 0xF5));
  v16 = v10;
  v17 = *(STACK[0xBA8] + (((BYTE2(v14) ^ 0x6C) - 43) ^ 0x14));
  v18 = *(*(&off_278E1E490 + (a4 ^ 0xF00)) + (BYTE1(v15) ^ 0x71) - 2) ^ *(*(&off_278E1E490 + a4 - 2530) + (v15 ^ 0x1ELL));
  v19 = *(*(&off_278E1E490 + a4 - 2995) + (BYTE2(v15) ^ 0x4DLL) - 2);
  HIDWORD(v21) = v19 ^ 0xC3AA49;
  LODWORD(v21) = v19 ^ 0x14000000;
  v20 = v21 >> 24;
  LODWORD(v15) = *(*(&off_278E1E490 + SLODWORD(STACK[0xB10])) + ((v15 >> 22) & 0x3FC ^ 0x390) - 8);
  v22 = 4 * (((v4 + 14) ^ 0x3FDFFBAECEFF7E7FLL) + ((a2 + 28) & 0x19DFEFCFELL)) + 0x801144C4020604;
  v23 = v11;
  v24 = *(&STACK[0xC0A0] + v22);
  HIDWORD(v21) = v15 ^ 0x197;
  LODWORD(v21) = v15 ^ 0xA907CA00;
  v25 = v18 ^ v20 ^ (v21 >> 9);
  v26 = (*(*(&off_278E1E490 + SLODWORD(STACK[0xAF8])) + (BYTE1(v24) ^ 0x72)) - 1083888434) ^ (*(*(&off_278E1E490 + a4 - 2784) + (*(&STACK[0xC0A0] + v22) ^ 0xAALL) - 1) + 1302140123);
  v27 = *(&off_278E1E490 + SLODWORD(STACK[0xB18])) + 4 * (27 * (*(STACK[0xB80] + (((v14 >> 20) & 0xF0 | (~v14 >> 28)) ^ 0x8DLL)) ^ 0xD6));
  v28 = (v26 - ((2 * v26) & 0xC891D52) + 105156265) ^ *(*(&off_278E1E490 + a4 - 3301) + (BYTE2(v24) ^ 0x6CLL));
  v29 = 33 * ((LOBYTE(STACK[0xB88]) - 117 * *(STACK[0xB78] + (((v14 >> 5) | (8 * (v14 & 0x1F))) ^ 0x52))) ^ 0x7E);
  v30 = *(&STACK[0xEB40] + v22);
  v31 = *(*(&off_278E1E490 + a4 - 3337) + (v29 ^ 0x9Cu));
  HIDWORD(v21) = *(STACK[0xBB0] + (((v30 >> 1) & 0x80 | (v30 >> 9)) ^ 0x8FLL));
  LODWORD(v21) = (HIDWORD(v21) ^ 0x4E) << 24;
  v32 = (v28 - ((2 * v28) & 0x40786C22) - 1606666735) ^ *(*(&off_278E1E490 + a4 - 2320) + ((v24 >> 22) & 0x3FC ^ 0x2AC) - 12);
  v33 = -714277173 * *(*(&off_278E1E490 + a4 - 2245) + ((27 * ((*(STACK[0xB98] + (((v30 >> 12) & 0xF0 | (v30 >> 20) & 0xF) ^ 0xEALL)) - 10) ^ 0x10)) ^ 0xB4u)) - 805056953;
  LODWORD(v24) = v13 ^ (*(*(&off_278E1E490 + a4 - 3080) + ((LODWORD(STACK[0xBA0]) + 59 * v17) ^ 0xCDu) - 1) - 1313241965);
  v34 = (*(*(&off_278E1E490 + a4 - 2531) + ((((v21 >> 25) ^ 0xF2) + 70) ^ 0x56u) - 2) + 2065141755) ^ (1881792585 * *(*(&off_278E1E490 + a4 - 2751) + (*(&STACK[0xEB40] + v22) ^ 0xDCLL) - 2) + 100175562);
  LODWORD(v13) = *(*(&off_278E1E490 + SLODWORD(STACK[0xAE8])) + ((v30 >> 22) & 0x3FC ^ 0x2B4) - 12);
  HIDWORD(v21) = v13 ^ 0x24;
  LODWORD(v21) = v13 ^ 0x9BB55C00;
  v35 = (a3 + 2110030453) ^ ((LODWORD(STACK[0xB68]) ^ v8) + 1511505514);
  LODWORD(v30) = ((v6 ^ 0xED273795 ^ v25) - (v6 ^ 0x85374163)) ^ ((v16 ^ 0x11FFAC02 ^ v25) - (v16 ^ 0x79EFDAF4));
  v36 = v31 - ((2 * v31 - 484152502) & 0xDB47CF36);
  LODWORD(v13) = v34 ^ (v21 >> 8) ^ v33;
  v37 = ((2 * (v12 ^ v35)) & 0x6DFDF4F6 ^ 0x415D072) + (v12 ^ v35 ^ 0x34F516C2);
  v38 = a1 - v35 - ((2 * (a1 - v35)) & 0x46BE41AC) - 1554046762;
  LODWORD(v22) = ((2 * (v35 - a3 - 1098579696)) & 0x73FFCBA2) + ((v35 - a3 - 1098579696) ^ 0x39FFE5D1);
  v39 = ((2 * (v38 ^ (a3 + 1098579696))) & 0xEFDFFD3E ^ 0xAFC59534) + (v38 ^ (a3 + 1098579696) ^ 0xA81D3425);
  v40 = v36 + 1597381952;
  v41 = v5 - 507443460 + (v6 ^ v16 ^ 0x3276468);
  LODWORD(v24) = v40 ^ v24;
  v42 = ((2 * ((v6 ^ 0x85374163) - 1011450757)) & 0xFD9FE5F6) + (((v6 ^ 0x85374163) - 1011450757) ^ 0xFECFF2FB);
  v43 = ((2 * (v6 ^ v16 ^ (v23 - 116385483))) & 0x89D7AFB6 ^ 0x89912726) + (v6 ^ v16 ^ (v23 - 116385483) ^ 0xB8334C4C);
  v44 = v24 - ((2 * v24) & 0x4C860E3C);
  LODWORD(v24) = ((2 * ((v6 ^ v16 ^ 0xFCD89B97) - v42 - 19926277)) & 0xC0FDDBDA) + (((v6 ^ v16 ^ 0xFCD89B97) - v42 - 19926277) ^ 0xE07EEDED);
  v45 = ((2 * ((v42 + 19926277) ^ v41)) & 0xD73F75AE ^ 0xD11B5488) + ((v42 + 19926277) ^ v41 ^ 0x173250BB);
  LODWORD(v27) = (v44 - 1505556706) ^ *(v27 - 1);
  v46 = ((v39 - 2012216991) ^ (v22 - 973071825) ^ v13 ^ 0x9D06D7DA) - 161387687 - 2 * (((v39 - 2012216991) ^ (v22 - 973071825) ^ v13 ^ 0x9D06D7DA) & 0x76616B5D ^ ((v39 - 2012216991) ^ (v22 - 973071825) ^ v13) & 4);
  v47 = v32 ^ 0x6A35417D;
  v48 = (v32 ^ 0x9C542A24 ^ v46) - (v46 ^ 0xF6616B59);
  v49 = v47 ^ (v45 - 1805630167);
  v50 = -528552467 - v24 + (v47 ^ (v24 + 528552467));
  v51 = a2 & 0x1FBDD7E7ALL;
  v52 = a2 + 18;
  v53 = v27 ^ v35;
  v54 = v27 ^ v35 ^ v25 ^ 0x6DE6FACF;
  v55 = v50 ^ (v49 - v45 + 1805630167);
  v56 = v53 ^ 0x5F68C39;
  v57 = (v39 + v22 + 1309678480) ^ v38;
  v58 = v55 ^ v48;
  v59 = ((2 * v57) & 0xBF5BEF26 ^ 0xBF418524) + (v57 ^ 0x805F3D29);
  v60 = v39 + v22 - v59;
  v61 = v59 + v37;
  LODWORD(v22) = v54 - v56;
  v62 = 1577034876 - v37 - ((1682788010 - 2 * v37) & 0x57B1FA4E);
  v63 = v61 + v39 + 1256149049 - ((2 * (v61 + v39) - 321825664) & 0xA8ED4BF2);
  v64 = ((2 * ((v45 + v24 - 1277077700) ^ v41)) & 0x4FDE8FEA ^ 0x495A84C8) + ((v45 + v24 - 1277077700) ^ v41 ^ 0x5B42AD99);
  LODWORD(v30) = v22 ^ v30;
  v65 = 4 * ((v4 ^ 0x3EFCEFABFDEEBF3DLL) + v51) + 0x40C41500845030CLL;
  v66 = 4 * (((v4 + 9) ^ 0x1F3FF4FD05F6BFF4) + (v52 & 0xBED7FE8)) - 0x7CFFD3F417DAFFD0;
  LODWORD(v13) = v7 - v37 + (*(&STACK[0xB1C0] + v65) ^ 0xEE782001) + (*(&STACK[0xB1C0] + v66) ^ 0xEE782001) + (v13 ^ 0x62F92825);
  v67 = v45 + v24 - v64;
  v68 = v13 + 1217018365 + v30;
  LODWORD(v30) = v45 + v64 + v43;
  v69 = ((2 * v68) & 0xF3EB7DDC) + (v68 ^ 0xF9F5BEEE);
  LODWORD(v65) = (v12 ^ 0x820BECB9) + v43 + (*(&STACK[0x4B00] + v65) ^ 0xD48E29D0) + (*(&STACK[0x4B00] + v66) ^ 0xD48E29D0) + (v27 ^ 0x5F68C39) - v58 - 1861643145;
  LODWORD(v65) = v65 + 387779274 - ((2 * v65) & 0x2E3A1594);
  LODWORD(v27) = v69 - ((2 * v69 + 2090915400) & 0xDCF04002);
  v70 = -621847342 - v69 - ((-202670628 - 2 * v69) & 0xC1F33BC8);
  *(STACK[0x9A0] + 4 * v4) = (v65 ^ 0x171D0ACA) - 335569605 + ((-786622166 - 2 * (v65 ^ 0x171D0ACA)) | 0x56E3AC5F);
  *(STACK[0x990] + 4 * v4) = v27 - 1396143323;
  LODWORD(v13) = (((v63 ^ 0xB48F381D ^ v70) + 387779274 - ((2 * (v63 ^ 0xB48F381D ^ v70)) & 0x2E3A1594)) ^ v65) - v30;
  v71 = v63 ^ 0x436BAF33 ^ v65;
  LODWORD(v65) = v43 - 1075020981 + (((v62 ^ 0x4B2160C3 ^ v70) + 387779274 - ((2 * (v62 ^ 0x4B2160C3 ^ v70)) & 0x2E3A1594)) ^ v65);
  v72 = (((v71 - 1411842777 - ((2 * v71) & 0x57B1FA4E)) ^ v62) - ((1075020981 - v43) ^ (v30 - 1400192954) ^ 0xE0F99DE4 ^ v70)) ^ (v60 - 1380052189);
  LODWORD(v30) = v39 + (v62 ^ 0xABD8FD27) + 138234152;
  v73 = v72 - ((2 * v72) & 0x1DF50C00) - 1896184320;
  v74 = (v65 ^ (v67 - 607084751) ^ (v13 + 1400192954)) - 294117375 - ((2 * (v65 ^ (v67 - 607084751) ^ (v13 + 1400192954))) & 0xDCF04002);
  v75 = *(STACK[0xB08] + 4 * (v72 ^ 1u));
  HIDWORD(v21) = v75 ^ 0xEA;
  LODWORD(v21) = v75 ^ 0x3742F300;
  v76 = v21 >> 8;
  LODWORD(v65) = *(STACK[0xB08] + 4 * (BYTE2(v73) ^ 0x1Eu));
  HIDWORD(v21) = v65 ^ 0xB6AFFF;
  LODWORD(v21) = v65 ^ 0x77777777;
  LODWORD(v65) = v21 >> 24;
  v77 = STACK[0xBC0];
  v78 = *(STACK[0xB38] + 4 * (HIBYTE(v73) ^ 0x43)) + 721702082;
  HIDWORD(v21) = v78 ^ 0x5B54;
  LODWORD(v21) = v78 ^ 0xAB390000;
  *(STACK[0x9A8] + 4 * v4) = *(STACK[0xB08] + 4 * (BYTE1(v73) ^ 0x22u)) ^ (v76 - 739339824 - ((2 * v76) & 0xA7DD23A0)) ^ v65 ^ (v21 >> 16) ^ 0x310324C2;
  v79 = *(v77 + 4 * (v74 ^ 0x49u));
  HIDWORD(v21) = v79 ^ 0x12337B;
  LODWORD(v21) = v79 ^ 0xB5C00000;
  v80 = v21 >> 21;
  v81 = BYTE1(v74);
  v82 = *(v77 + 4 * (BYTE2(v74) ^ 0xA3u));
  HIDWORD(v21) = v80 ^ 0xBBBBBBBB;
  LODWORD(v21) = v80 ^ 0xEAD67200;
  v83 = v21 >> 8;
  HIDWORD(v21) = v82 ^ 0x12337B;
  LODWORD(v21) = v82 ^ 0xB5C00000;
  LODWORD(v65) = v21 >> 21;
  v84 = (BYTE1(v74) ^ 0x20) + 1155088203 - ((v74 >> 7) & 0x96);
  v74 >>= 24;
  HIDWORD(v21) = v65 ^ 0xFD37BF;
  LODWORD(v21) = v65 ^ 0x13000000;
  v85 = *(STACK[0xB60] + 4 * (v74 ^ 0xF3));
  v86 = *(STACK[0xB60] + 4 * (v81 ^ 0x85u)) ^ v83;
  LODWORD(STACK[0xB68]) = v60 + v39 - 163885768 - ((2 * (v60 + v39 - 163885768) - 386866864) & 0xDCF04002) - 487550807;
  *(STACK[0x998] + 4 * v4) = v86 ^ (v21 >> 24) ^ (__PAIR64__(v85 ^ v74 ^ 0x1706, v85 ^ 0x18350000u) >> 16) ^ v84 ^ 0x1F1E3A48;
  return (*(STACK[0xBD8] + 8 * ((126 * (v4 == 47)) ^ a4)))(((2 * v30) & 0xDEFF7EB6) + (v30 ^ 0x6F7FBF5B) + 1763267614, STACK[0xBC8], -1810883469 - v61);
}

uint64_t sub_244B9ABC0(int a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7)
{
  STACK[0xBD0] = 0;
  v12 = STACK[0x920];
  LODWORD(STACK[0xBC8]) = (LODWORD(STACK[0x920]) + 1051325272) & 0x32EEB42F ^ STACK[0x920] & 4;
  v13 = v11 ^ (299146984 - a5);
  v14 = ((2 * v13) & 0x773FCFDA ^ 0x417C952) + (v13 ^ 0xB9940B54);
  v15 = (LODWORD(STACK[0xB68]) ^ 0xEE782001) + 1511505514;
  LODWORD(STACK[0xB68]) = v15;
  v16 = ((2 * v15) & 0xFFE2F73E ^ 0xF920961E) + (v15 ^ 0x836534B0);
  v17 = a4 + 325697301 + v16;
  v18 = v14 + v17 - ((2 * (v14 + v17) + 876372730) & 0x79DC89EC) - 687049101;
  v19 = LODWORD(STACK[0xA98]) ^ 0x199021D8;
  LODWORD(STACK[0x8F8]) = v19;
  v20 = v16 - v14;
  v21 = ((2 * v11) & 0xFF9FDDBA ^ 0x417D932) + (a7 ^ 0x7FCFEEDD);
  LODWORD(STACK[0xB40]) = v21;
  v22 = v20 + v21;
  v23 = v20 + v21 - ((2 * (v20 + v21) + 783836188) & 0x340B5586) - 782115631;
  v24 = -1621107584 - v19 - ((1075378142 - 2 * v19) & 0x7EA6C122);
  v25 = ((2 * v9) & 0xD79F7DB6 ^ 0x29729B6) + (v9 ^ 0xEEB42B00);
  v26 = v10 - 116385483;
  v27 = (v7 ^ (v10 - 116385483) ^ 0x85374163) + 1278303819 - 2 * ((v7 ^ (v10 - 116385483) ^ 0x85374163) & 0x4C315E5F ^ (v7 ^ (v10 - 116385483)) & 0x14);
  v28 = ((2 * (v25 - 1808776923 + (v27 ^ 0xB3CEA1B4) + 1)) & 0xDFED2D9E) + ((v25 - 1808776923 + (v27 ^ 0xB3CEA1B4) + 1) ^ 0xEFF696CF);
  v29 = v17 + v16 - ((2 * (v17 + v16) + 731462550) & 0x2A19E890) + 1792643603;
  LODWORD(STACK[0xB60]) = (v24 ^ 0xAA5F94D9 ^ v29) + 565793112 - ((2 * (v24 ^ 0xAA5F94D9 ^ v29)) & 0x4372A2B0);
  v30 = v25 + a6 + 758785310 + (v27 ^ 0x4C315E4B);
  v31 = (v27 ^ 0xB1F1593F) - ((2 * (v27 ^ 0xB1F1593F) + 1775629598) & 0x4B4617F6);
  v32 = (v13 ^ 0x7FCBEBCD) - ((2 * (v13 ^ 0x7FCBEBCD) + 701887774) & 0x2A19E890);
  v33 = 2002444638 - LODWORD(STACK[0x944]) - ((-103681942 - 2 * LODWORD(STACK[0x944])) & 0xF4E3D252);
  v34 = v20 + v21 - 705236599;
  v35 = v9;
  v36 = v33 ^ 0x7A71E929;
  v37 = v10;
  v38 = (v33 ^ 0x469FADDF ^ v18) + 2111242640 - ((2 * (v33 ^ 0x469FADDF ^ v18)) & 0xFBAE0320);
  v39 = v30 - 1539724714 + v28;
  v40 = STACK[0x940];
  v41 = ((v33 ^ 0x7A71E929 ^ v34) + 2111242640 - ((2 * (v33 ^ 0x7A71E929 ^ v34)) & 0xFBAE0320)) ^ LODWORD(STACK[0x940]);
  v42 = v28 + v37;
  v43 = (v41 - (v28 + v37) + 1557006722) ^ (v28 + 269052209) ^ ((v38 ^ LODWORD(STACK[0x940])) - v30 + 1808776923);
  LODWORD(STACK[0xA80]) = v43 + 126168630 - ((2 * v43) & 0xF0A5C6C);
  v44 = v34 ^ v40 ^ 0x7DD70190;
  v45 = v44 & 0x3CEE44FE ^ (v34 ^ v40) & 8;
  LODWORD(STACK[0xBC8]) = v12 - 2 * LODWORD(STACK[0xBC8]) + 1905829763;
  v46 = STACK[0x950];
  v47 = (((v23 ^ v24 ^ 0x2556CA52) + 565793112 - 2 * ((v23 ^ v24 ^ 0x2556CA52) & 0x21B9515C ^ (v23 ^ v24) & 4)) ^ LODWORD(STACK[0x950])) - v42 - 77018883;
  v48 = v44 + 1022248182 - 2 * v45;
  v49 = LODWORD(STACK[0x928]) - ((2 * LODWORD(STACK[0x928]) + 346742164) & 0x4736A176) - 302989435;
  v50 = v8 - ((-641338054 - 2 * v37) & 0xF14DB1D6) - 443952248;
  v51 = ((v48 ^ v18) - (v36 ^ (v30 - 1808776923) ^ (v42 - 1557006722))) ^ (v20 - 1146196914);
  LODWORD(STACK[0xA98]) = v51 - 654390979 - ((2 * v51) & 0xB1FD927A);
  v52 = LODWORD(STACK[0xAA8]) ^ 0xEE782001;
  LODWORD(STACK[0x8F4]) = v52;
  v53 = -960270974 - v52 - ((-143577310 - 2 * v52) & 0x9615ABE2);
  v54 = STACK[0x930];
  LODWORD(STACK[0xAC8]) = v35 ^ ((LODWORD(STACK[0x930]) ^ 0x7ADF1BEC ^ ((a1 ^ v53 ^ 0x31D5CE1D) + 1497688964 - ((2 * ((a1 ^ v53 ^ 0x31D5CE1D) & 0x5944EB9D ^ (a1 ^ v53) & 0x19)) ^ 0x32))) - a6 - 758785310) ^ 0x7E6AF4C2 ^ (v8 + 116385483 + (LODWORD(STACK[0x930]) ^ 0x6C73CCB8 ^ ((v53 ^ 0xA572F5F0 ^ v11) + 1497688964 - ((2 * (v53 ^ 0xA572F5F0 ^ v11)) & 0xB289D708))));
  LODWORD(STACK[0xAD0]) = LODWORD(STACK[0xB68]) ^ 0xD8FEC93D ^ ((a1 ^ 0x96E5344B ^ ((v11 ^ v54 ^ 0xB73CCB85) - 90769165 - 2 * ((v11 ^ v54 ^ 0xB73CCB85) & 0x7A96F8FB ^ (v11 ^ v54) & 8))) - (v53 ^ (a6 + 758785310) ^ 0x4B0AD5F1 ^ v26));
  LODWORD(STACK[0xAD8]) = LODWORD(STACK[0x98C]) - ((2 * LODWORD(STACK[0x98C]) - 1385010460) & 0xDCF04002) - 986622605;
  v55 = LODWORD(STACK[0x978]) - ((2 * LODWORD(STACK[0x978]) + 627247248) & 0xA605E986) - 441157365;
  v56 = (v46 ^ 0x386160 ^ LODWORD(STACK[0xB60])) - (v39 ^ 0x386160);
  v57 = (((v42 + 77018883) ^ v24 ^ 0xBF536091) + 631442427 - 2 * (((v42 + 77018883) ^ v24 ^ 0xBF536091) & 0x25A30BFF ^ ((v42 + 77018883) ^ v24) & 4)) ^ v39 ^ 0x259B6A9B;
  v58 = 1218069792 - LODWORD(STACK[0xB40]) - ((-880409250 - 2 * LODWORD(STACK[0xB40])) & 0xC5AE84E2);
  LODWORD(STACK[0xB60]) = v58 ^ 0x65526C47 ^ ((v29 ^ 0x386160 ^ ((v46 ^ 0xBBBCFB9B ^ v23) - ((2 * (v46 ^ 0xBBBCFB9B ^ v23)) & 0x2A19E890) + 353170504)) - v57);
  LODWORD(STACK[0xAF8]) = v50 ^ v56 ^ 0xA05811D6 ^ v47;
  v59 = (v23 ^ 0x9A05AAC3) + (v29 ^ 0x15349528) - 1396493117 - ((2 * ((v23 ^ 0x9A05AAC3) + (v29 ^ 0x15349528))) & 0x59866986);
  v60 = v23 ^ v58;
  v61 = ((v29 ^ (v32 - 1980240169)) - 120395598 - ((2 * (v29 ^ (v32 - 1980240169))) & 0xF1A5D164)) ^ v23 ^ v58;
  v62 = v61 - 1396493117 - ((2 * v61) & 0x59866986);
  v63 = v60 ^ 0xF8D2E8B2;
  v64 = (v60 ^ 0xF8D2E8B2) - ((2 * (v60 ^ 0xF8D2E8B2) + 845624956) & 0xCF3F6E4E) - 2133634459;
  v65 = v64 ^ (v22 - 1930686445);
  v66 = (v50 ^ 0x78A6D8EB ^ (v42 + 77018883)) - 2133854715 - ((2 * (v50 ^ 0x78A6D8EB ^ (v42 + 77018883))) & 0x19FEC0A);
  v67 = v42 + 77018883 + (v39 ^ 0x386160) - 1203747694 - ((2 * (v42 + 77018883 + (v39 ^ 0x386160))) & 0x70808924);
  v68 = ((v39 ^ 0x259B6A9B ^ (v31 - 1701968246)) - 1203747694 - ((2 * (v39 ^ 0x259B6A9B ^ (v31 - 1701968246))) & 0x70808924)) ^ v67;
  v69 = v68 - 2133854715 - ((2 * v68) & 0x19FEC0A);
  v70 = (v66 ^ 0x80CFF605) - ((2 * (v66 ^ 0x80CFF605) + 845624956) & 0xE7F4D8A0) + 221120398;
  v71 = v70 ^ (v42 + 1512510728);
  v72 = -821063117 - LODWORD(STACK[0x960]) - ((926824926 - 2 * LODWORD(STACK[0x960])) & 0x66E0EA88);
  v73 = v71 ^ v67;
  LODWORD(STACK[0xA90]) = v64 ^ 0xE01A9911 ^ ((v49 ^ 0xF586478 ^ v59) - (v72 ^ 0xB3031D6 ^ v67));
  LODWORD(STACK[0xA88]) = v70 ^ ((v49 ^ 0x7ADF1BEC ^ ((v72 ^ v65 ^ v59 ^ 0x82F3ED4C) - 1550102341 - ((2 * (v72 ^ v65 ^ v59 ^ 0x82F3ED4C)) & 0x4736A176))) - (v71 ^ v67 ^ 0xCBBA28C2)) ^ ((((v72 ^ v65 ^ 0x54EFC263) - 1550102341 - ((2 * (v72 ^ v65 ^ 0x54EFC263)) & 0x4736A176)) ^ v49) - (v71 ^ 0x73FA6C50)) ^ 0xAB04A56D;
  v74 = ((2 * (v63 - 1724671170 + (v65 ^ 0xE79FB727))) & 0xFBAFFFF6) + ((v63 - 1724671170 + (v65 ^ 0xE79FB727)) ^ 0x7DD7FFFB);
  v75 = (v74 - 2111307771) ^ v62;
  v76 = v75 ^ v65;
  v77 = (v59 ^ 0x386160 ^ v75) + v74 - 2111307771;
  v78 = ((2 * ((v71 ^ 0x73FA6C50) + (v70 ^ 0x73FA6C50))) & 0x72DFEBAC) + (((v71 ^ 0x73FA6C50) + (v70 ^ 0x73FA6C50)) ^ 0xB96FF5D6);
  v79 = ((2 * v65) & 0xFFFB7FE ^ 0x74FA4EC) + (v65 ^ 0x5C582989);
  v80 = v74 + v79 - ((2 * (v74 + v79) - 196065268) & 0xF0C056BE) + 1921535845;
  v81 = (v69 ^ v66 ^ (v78 + 1183844906)) - 1871035616 - ((2 * (v69 ^ v66 ^ (v78 + 1183844906))) & 0x20F48640);
  v82 = v79 - ((2 * v79 + 621634208) & 0x2D6A2644) - 918829966;
  v83 = v81 ^ v73;
  v84 = ((2 * v71) & 0xE4D3FFDA ^ 0x84805202) + (v71 ^ 0x3DABD6EC);
  v85 = (v81 ^ 0x907A4320) + v78 + 1183844906;
  v86 = v78 + v84 - ((2 * (v78 + v84) - 1471409030) & 0xEA2DE320) - 918750259;
  v87 = STACK[0x93C];
  v88 = (346341364 - 2 * LODWORD(STACK[0x93C])) & 0x3E70444E;
  LODWORD(STACK[0x93C]) = STACK[0x93C];
  v89 = -1987411423 - v87 - v88;
  v90 = ((2 * (v83 ^ (v84 + 1209830754))) & 0xDBDFF9FE ^ 0x9380D1C4) + (v83 ^ (v84 + 1209830754) ^ 0x362F971D);
  v91 = v86 ^ ((LODWORD(STACK[0x948]) ^ 0x7ADF1BEC ^ ((v89 ^ 0xB836C86D ^ v76 ^ v82) - 1863030460 - ((2 * (v89 ^ 0xB836C86D ^ v76 ^ v82)) & 0x21E8D288))) + 1844444415 - v90) ^ ((((v82 ^ v89 ^ 0x898D3105) - 1863030460 - 2 * ((v82 ^ v89 ^ 0x898D3105) & 0x10F4695C ^ (v82 ^ v89) & 0x18)) ^ LODWORD(STACK[0x948])) - v84 - 1209830754) ^ 0xE357B4E1;
  v92 = ((2 * (v80 ^ v82)) & 0xEAFBDFFC ^ 0xA202DFDC) + (v80 ^ v82 ^ 0xAC7C9011);
  v93 = ((2 * v82) & 0xDFAE7EFC ^ 0x42822860) + (v82 ^ 0x4EB66BCE);
  v94 = v93 + (v76 ^ v82 ^ 0xDDD1F1A6) - (v82 ^ 0x96B51322);
  v95 = v93 - v92 - ((2 * (v93 - v92) + 55402752) & 0x703B0BA) - 1993832227;
  v96 = v77 + v94;
  v97 = v92 - (v77 + v94) - ((2 * (v92 - (v77 + v94)) + 537209090) & 0x9CB3801C) - 564374385;
  v98 = ((v84 + 1209830754) ^ 0x37D44792) + 2135059553 - ((2 * ((v84 + 1209830754) ^ 0x37D44792)) & 0xFE84D8C2);
  v99 = ((2 * ((v98 ^ 0x7F426C61) - v84 + 1240692127 + v90)) & 0xB5D7F6FC) + (((v98 ^ 0x7F426C61) - v84 + 1240692127 + v90) ^ 0xDAEBFB7E);
  v100 = 2036853264 - LODWORD(STACK[0x970]) - ((2091219142 - 2 * LODWORD(STACK[0x970])) & 0x762A5B5A);
  v101 = ((2 * (v86 ^ v98)) & 0x97FF3EAA ^ 0x14A93AA2) + (v86 ^ v98 ^ 0xC1AB02A4);
  v102 = (v98 ^ 0x7F426C61) - v101 - 36299343 - ((2 * ((v98 ^ 0x7F426C61) - v101 - 872439979)) & 0x63ACFCB8);
  v103 = v101 - (v85 + v99) + 1646315682 - 2 * ((v101 - (v85 + v99) - 1533697750) & 0x68A359DB ^ (v101 - (v85 + v99) + 1646315682) & 1) - 1424477598;
  v104 = STACK[0xBC8];
  LODWORD(STACK[0xAE0]) = v97 ^ 0x9F559438 ^ ((LODWORD(STACK[0xBC8]) ^ (v94 + 271106178) ^ 0xB16F6C76 ^ v95) - (v100 ^ v102 ^ (v99 + 622068866) ^ 0xAC353F1));
  LODWORD(STACK[0xAC0]) = ((((v100 ^ 0x3B152DAD ^ (v94 + 271106178)) + 854504491 - ((2 * (v100 ^ 0x3B152DAD ^ (v94 + 271106178))) & 0x65DD6856)) ^ v104) - 622068866 - v99) ^ v103 ^ ((((v100 ^ 0xB894F5F0 ^ v95) + 854504491 - ((2 * (v100 ^ 0xB894F5F0 ^ v95)) & 0x65DD6856)) ^ v104) - (v102 ^ 0x31D67E5C)) ^ 0xFEE21CAB;
  v105 = v97 ^ v95;
  v106 = (v97 ^ 0xB1A63FF1) + v94 + (v97 ^ v95 ^ 0x9C249371);
  LODWORD(STACK[0xAE8]) = v97 ^ 0x8A90A50E ^ ((v55 ^ v105 ^ 0x2F63E0D ^ (v106 + 271106180)) - (((LODWORD(STACK[0x968]) ^ 0x9291CBC7) + 1373267162 - ((2 * (LODWORD(STACK[0x968]) ^ 0x9291CBC7) + 2) & 0xA3B4C9B4) + 1) ^ v103 ^ v102 ^ 0x148391C1 ^ ((v103 ^ 0x975CA625) + v99 + (v103 ^ v102 ^ 0x889ACA4) + 622068868)));
  LODWORD(STACK[0xAB8]) = v105 ^ 0xC1E9D93E ^ ((v97 ^ 0xE32E1F80) + v96 - v106 - ((2 * ((v97 ^ 0xE32E1F80) + v96 - v106) + 1530950638) & 0x6B2BCACE) - 482992290);
  v107 = STACK[0xB58];
  v108 = *(STACK[0xBD8] + 8 * STACK[0xB58]);
  STACK[0xB68] = 0x100000000;
  v109 = 23 * (v107 ^ 0x1538);
  LODWORD(STACK[0x9F0]) = v109;
  LODWORD(STACK[0xA20]) = v109 ^ 0x654D5ED1;
  LODWORD(STACK[0xA18]) = v107 & 0x20B7EB74;
  LODWORD(STACK[0xA10]) = v107 ^ 0x10E6;
  LODWORD(STACK[0xA08]) = v107 ^ 0x1791;
  LODWORD(STACK[0x9E8]) = v107 ^ 0x14CD;
  return v108((v105 ^ 0x8EA6DA89) - 143168113 + (v105 ^ 0xD1F4CACE) + v106 - 294117375 - ((2 * ((v105 ^ 0x8EA6DA89) - 143168113 + (v105 ^ 0xD1F4CACE) + v106)) & 0xDCF04002), 2283855772, v91);
}

uint64_t sub_244B9BF68(int a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8)
{
  LODWORD(STACK[0xAA8]) = v13;
  LODWORD(STACK[0xB18]) = v12;
  LODWORD(STACK[0xBC8]) = v10;
  LODWORD(STACK[0xB20]) = v9;
  v19 = STACK[0xAE0];
  LODWORD(STACK[0xA78]) = STACK[0xAE0];
  v20 = STACK[0xAE8];
  v21 = STACK[0xAC0];
  v22 = STACK[0xBD0];
  *(&STACK[0x3E50] + STACK[0xBD0]) = v10;
  STACK[0xBD0] = v22;
  v23 = *(&off_278E1E490 + (STACK[0xB58] - 3904));
  v24 = *(v23 + 4 * (v17 ^ 0x36u));
  LODWORD(STACK[0xAC0]) = a3;
  v25 = *(v23 + 4 * (BYTE1(v17) ^ 0xA6u));
  v27 = v18;
  v28 = v11;
  HIDWORD(v30) = v24 ^ 0x2424B;
  LODWORD(v30) = v24 ^ 0x48A00000;
  v29 = v30 >> 20;
  v31 = *(v23 + 4 * (BYTE2(v17) ^ 0xADu));
  HIDWORD(v30) = v25 ^ 0x2424B;
  LODWORD(v30) = v25 ^ 0x48A00000;
  v32 = v30 >> 20;
  v33 = *(v23 + 4 * (HIBYTE(v17) ^ 0x1B));
  HIDWORD(v30) = v31 ^ 0x2424B;
  LODWORD(v30) = v31 ^ 0x48A00000;
  v34 = v30 >> 20;
  HIDWORD(v30) = v33 ^ 0x2424B;
  LODWORD(v30) = v33 ^ 0x48A00000;
  v35 = v30 >> 20;
  v36 = *(&off_278E1E490 + LODWORD(STACK[0xA18]));
  v37 = *(v36 + 4 * (a3 ^ 0x11u));
  HIDWORD(v30) = v37 ^ 0xF;
  LODWORD(v30) = v37 ^ 0xC30CC00;
  v38 = v30 >> 8;
  HIDWORD(v30) = v29 ^ 0x26;
  LODWORD(v30) = v29 ^ 0x2168E600;
  v39 = v30 >> 8;
  STACK[0xB10] = v23;
  v40 = *(v23 + 4 * (BYTE2(a3) ^ 0xA3u));
  HIDWORD(v30) = v40 ^ 0x2424B;
  LODWORD(v30) = v40 ^ 0x48A00000;
  LODWORD(STACK[0xA48]) = v30 >> 20;
  v41 = *(v36 + 4 * (HIBYTE(a3) ^ 0x5E));
  HIDWORD(v30) = v41 ^ 0xCEBA;
  LODWORD(v30) = v41 ^ 0xC640000;
  v43 = STACK[0xAD8];
  v44 = (LODWORD(STACK[0xAD8]) ^ 0xEE782001) - ((LODWORD(STACK[0xA20]) + 2 * (LODWORD(STACK[0xAD8]) ^ 0xEE782001)) & v16);
  STACK[0xB40] = v36;
  v45 = *(v36 + 4 * (BYTE1(a3) ^ 0x98u)) ^ (v30 >> 16);
  HIDWORD(v30) = v34 ^ 0x3864B6;
  LODWORD(v30) = v34 ^ 0x1000000;
  v46 = v30 >> 24;
  *(&STACK[0xFE90] + v22) = v44 + 555669994;
  LODWORD(STACK[0xAE0]) = v17;
  LODWORD(STACK[0xA58]) = a6;
  LODWORD(v23) = a3 ^ 0x96414571;
  v47 = a6 ^ (v17 ^ v14) & (v20 ^ v21) ^ (a6 ^ 0x7D0177E2) & v23 ^ (v19 ^ v14) & v23;
  LODWORD(STACK[0xAE8]) = v21;
  v21 ^= 0x96414571;
  LODWORD(STACK[0xA38]) = v21;
  LODWORD(STACK[0xA54]) = v20;
  LODWORD(STACK[0xA60]) = v20 ^ 0x96414571;
  LODWORD(STACK[0xA28]) = a3 ^ 0x96414571;
  HIDWORD(v30) = v35 ^ 0xE517;
  LODWORD(v30) = v35 ^ 0x610D0000;
  LODWORD(STACK[0xA40]) = v19 ^ v14;
  LODWORD(STACK[0xA30]) = v17 ^ v14;
  v48 = v20 ^ v21 & v23 ^ (v20 ^ 0x96414571) & v23 ^ (v19 ^ v14 ^ a6 ^ 0x7D0177E2) & (v17 ^ v14);
  v49 = v38 - 411852407 - ((2 * v38) & 0xCEE74312);
  LODWORD(v22) = LODWORD(STACK[0xAB8]) ^ v8;
  v50 = (v8 ^ a8 ^ a1) - (v22 ^ 0x3A74532A);
  LODWORD(STACK[0xAB0]) = a7;
  v51 = a7 ^ v15;
  v52 = (a7 ^ v15 ^ (v27 - 1346507771)) - (v28 ^ a7 ^ 0x368344F1);
  LODWORD(STACK[0xAB8]) = v49 ^ v45;
  v53 = v52 - ((2 * v52) & 0x311626FE);
  v54 = LODWORD(STACK[0xAA8]) - 41307108;
  v55 = (v54 ^ 0xBC1780C8) - 1104417856 - ((2 * (v54 ^ 0xBC1780C8)) & 0x7C57D780);
  LODWORD(v23) = ((2 * (v28 ^ a7)) & 0xDCCBFDA8 ^ 0xC4CBB088) + (v28 ^ a7 ^ 0xC822691);
  v56 = v39 ^ v32;
  v57 = (v8 ^ 0xC0AEB5FA) - ((2 * (v8 ^ 0xC0AEB5FA) + 530013832) & 0x34BD3504);
  v58 = LODWORD(STACK[0xB18]) ^ ((v8 ^ 0xC0AEB5FA) - 1345605820);
  v59 = v57 - 903198266;
  v60 = (v48 ^ 0x474AF463 ^ v22 ^ v58 ^ v47 ^ (v57 - 903198266)) - (v22 ^ v58 ^ v47 ^ (v57 - 903198266) ^ 0xD10BB112);
  v61 = ((v28 ^ a7 ^ 0x74A69D34 ^ v48) - v23 - 295305516) ^ ((v55 ^ v48 ^ 0x286AAEB1) - (v55 ^ 0xBE2BEBC0));
  v62 = v46 ^ (v30 >> 16);
  v63 = v61 ^ v60;
  v64 = ((2 * ((v22 ^ 0xEE10CF9E) - (v58 ^ 0x584493EC))) & 0x37DD77EE) + (((v22 ^ 0xEE10CF9E) - (v58 ^ 0x584493EC)) ^ 0x9BEEBBF7);
  v65 = (v59 ^ v50 ^ 0x1A5E9A82) + 1678853129 + v64 + 120691793 - ((2 * ((v59 ^ v50 ^ 0x1A5E9A82) + 1678853129 + v64)) & 0xE6338A2);
  LODWORD(v36) = (v58 ^ 0x584493EC ^ v50) - (v65 ^ 0x7319C51);
  v66 = (a7 ^ v15) - ((2 * (a7 ^ v15) + 1603755656) & 0xC55D1C6E) - 1837482629;
  v67 = v66 ^ v54 ^ 0xA146F100;
  v68 = ((2 * (v67 + v23 + 295305517)) & 0xEBFFCFFE) + ((v67 + v23 + 295305517) ^ 0x75FFE7FF);
  v69 = v66 ^ v54 ^ 0x46321D80 ^ (v53 + 411767679);
  v70 = ((2 * v36) & 0xDBDDEB7E) + (v36 ^ 0xEDEEF5BF);
  v71 = STACK[0xB68];
  v72 = (v66 ^ 0xFA259D48 ^ (v53 + 411767679)) - 1979707373 + v68 + 2030;
  v73 = v72 + 628216474 - ((2 * v72) & 0x4AE3A534);
  v74 = *(*(&off_278E1E490 + SLODWORD(STACK[0xA10])) + (v71 ^ 0x37) - 3);
  HIDWORD(v30) = ~v74;
  LODWORD(v30) = v74 ^ 0xC50FA60;
  v75 = v56 ^ v62;
  v76 = (v43 ^ 0x1187DFFE) + (LODWORD(STACK[0xB18]) ^ 0x1BACECDB) + (v58 ^ 0xA7BB6C13) + (v47 ^ 0x82FE881D) + (*(&STACK[0xB1C0] + STACK[0xBD0]) ^ 0x1187DFFE) + ((v30 >> 3) ^ 0xC6467E98);
  v77 = LODWORD(STACK[0xB20]) + (LODWORD(STACK[0xBC8]) ^ 0x98C9BEDB) + v67 + v63;
  v78 = (*(*(&off_278E1E490 + (STACK[0xB58] - 3937)) + (v71 ^ 0x1F)) ^ 0x5DEBB97) + (*(&STACK[0x4B00] + STACK[0xBD0]) ^ 0xD48E29D0);
  v79 = *(&off_278E1E490 + SLODWORD(STACK[0xA08])) - 12;
  v80 = *&v79[4 * (LODWORD(STACK[0xAC8]) ^ 0xE4)];
  HIDWORD(v30) = v80 ^ 0x4E;
  LODWORD(v30) = v80 ^ 0x22548000;
  v81 = v30 >> 8;
  v82 = LODWORD(STACK[0xAC8]) ^ 0x7852E36u;
  LODWORD(v71) = STACK[0xAC8];
  LODWORD(STACK[0xAA8]) = STACK[0xAC8];
  v83 = v82 - ((2 * v82) & 0x19BF9C460) - 0x59E9937032031DD0;
  v84 = *&v79[4 * (BYTE2(v83) ^ 0x9FLL)];
  HIDWORD(v30) = v84 ^ 0x90AC0B;
  LODWORD(v30) = v84 ^ 0xA8000000;
  v85 = v30 >> 24;
  v86 = v77 + v78;
  v87 = *(&off_278E1E490 + SLODWORD(STACK[0x9E8])) - 12;
  v88 = *(v87 + ((4 * (v83 >> 24)) ^ 0x29859B23CE0));
  HIDWORD(v30) = v88 ^ 0x4813;
  LODWORD(v30) = v88 ^ 0xB9A70000;
  v89 = v30 >> 16;
  v90 = STACK[0xAF8];
  v91 = STACK[0xA98];
  v92 = STACK[0xAD0];
  v93 = *(v87 + 4 * (LODWORD(STACK[0xAD0]) ^ 0x86u));
  LODWORD(v83) = v85 ^ *(v87 + 4 * (BYTE1(v71) ^ 0xDEu));
  HIDWORD(v30) = v93 ^ 0x91;
  LODWORD(v30) = v93 ^ 0xC89F5B00;
  v94 = v30 >> 8;
  v95 = v83 ^ (v81 - 1077749086 - ((2 * v81) & 0x7F85B544));
  LODWORD(v83) = BYTE2(LODWORD(STACK[0xAD0])) ^ 0x73;
  STACK[0xB18] = v87;
  LODWORD(v83) = *(v87 + 4 * v83);
  HIDWORD(v30) = v83 ^ 0x475610;
  LODWORD(v30) = v83 ^ 0x78000000;
  LODWORD(v83) = (v30 >> 24) ^ v94;
  v96 = *&v79[4 * (HIBYTE(v92) ^ 0x14)];
  HIDWORD(v30) = v96 ^ 0x87CE;
  LODWORD(v30) = v96 ^ 0xD22C0000;
  LODWORD(v87) = v95 ^ v89;
  STACK[0xB20] = v79;
  LODWORD(v36) = ((v83 ^ (v30 >> 16)) + 638097068 - ((2 * (v83 ^ (v30 >> 16))) & 0x4C112D58)) ^ *&v79[4 * (BYTE1(v92) ^ 0xCA)];
  LODWORD(STACK[0xBC8]) = v36;
  v97 = (v28 ^ 0xCA67E0FC ^ v75) - (v28 ^ 0xAB76050C);
  v98 = STACK[0xB60];
  LODWORD(STACK[0xA70]) = STACK[0xB60];
  v99 = STACK[0xA80];
  v100 = v98 ^ 0x7852E36;
  v101 = (v91 ^ v92) & (v98 ^ 0x7852E36);
  LODWORD(STACK[0xA98]) = v92;
  v92 ^= 0xD8FEC93D;
  LODWORD(STACK[0xB60]) = v99;
  LODWORD(STACK[0xA68]) = v90;
  v102 = (LODWORD(STACK[0xAB0]) ^ 0xFCE4A40D ^ v75) - v51;
  v103 = v101 ^ v92 & (v99 ^ 0x7852E36) ^ (v91 ^ 0xD8FEC93D) & v82 ^ (v90 ^ 0xD8FEC93D) & v82 ^ (v90 ^ 0xD8FEC93D) & (v99 ^ 0x7852E36);
  LODWORD(STACK[0x9D8]) = v100;
  LODWORD(STACK[0x9E0]) = v90 ^ 0xD8FEC93D;
  LODWORD(STACK[0x9D0]) = v91 ^ 0xD8FEC93D;
  LODWORD(STACK[0xAF8]) = v91;
  LODWORD(STACK[0x9C8]) = v92;
  v104 = (v100 ^ v82) & (v99 ^ 0x7852E36) ^ v100 & v82 ^ (v90 ^ 0xD8FEC93D) & (v91 ^ 0xD8FEC93D) ^ (v90 ^ v91) & v92;
  v105 = v102 ^ v97;
  v106 = ((2 * (v69 - (v73 ^ 0x2571D29A))) & 0xFEF7EDDA) + ((v69 - (v73 ^ 0x2571D29A)) ^ 0x7F7BF6ED);
  v107 = v70 + v64;
  v108 = (v87 ^ 0xA6582D04 ^ (v70 + v64 + 1981959754) ^ v65 ^ v36) - ((v70 + v64 + 1981959754) ^ v65 ^ v36 ^ 0x8829BEF5);
  v109 = v106 + v68;
  v110 = (v106 + v68 + 176431380) ^ v87 ^ 0x2E7193F1;
  LODWORD(v79) = ((2 * v59) & 0xFDC3F3BE ^ 0x44023196) + (v59 ^ 0xDDE8E334);
  v111 = (v73 ^ 0xB00416B ^ v87) - (v73 ^ 0x2571D29A);
  LODWORD(v87) = ((2 * v66) & 0xFFDFB7FE ^ 0xB7D214BC) + (v66 ^ 0xA416D5A1);
  v112 = LODWORD(STACK[0xAB8]) ^ ((33 * ((*(STACK[0xBB8] + (((LODWORD(STACK[0xA48]) >> 21) & 0xF8 | (LODWORD(STACK[0xA48]) >> 29)) ^ 0x26)) - 106) ^ 0x15)) | (LODWORD(STACK[0xA48]) << 8));
  LODWORD(STACK[0xAD0]) = (v110 - v109 - 176431380) ^ v111 ^ v108;
  v113 = (v65 ^ 0x7F17B3B4) + v70 + v107 - 1935966561 - ((2 * ((v65 ^ 0x7F17B3B4) + v70 + v107 - 1137543533)) & 0xA0D21018);
  v114 = v112 ^ v22;
  LODWORD(v36) = v76 + 1706405797 + (v112 ^ 0xAD07A29A);
  v115 = (v107 - 1440650158) ^ (v79 - 2128738782 + (v65 ^ 0xF8CE63AE));
  v116 = ((2 * v115) & 0xFEFDFFDE) + (v115 ^ LODWORD(STACK[0x9B8]));
  v117 = (v109 + 1048788764) ^ (v87 + 1057794 + (v73 ^ 0xDA8E2D65));
  LODWORD(v22) = ((2 * v117) & 0x1BDFFF6E) + (v117 ^ 0x8DEFFFB7);
  v118 = (v75 ^ 0x99DEBBF ^ v114) - (v114 ^ 0x688C0E4F);
  v119 = ((2 * ((v73 ^ 0x5D57FD7F) + v106 + v109 - 1090041809)) & 0xF36EFEBE) + (((v73 ^ 0x5D57FD7F) + v106 + v109 - 1090041809) ^ 0x79B77F5F);
  v120 = v105 ^ v118;
  v121 = ((2 * v73) & 0xFE9DFE9C ^ 0x3C85E000) + (v73 ^ 0x613C0FEE);
  v122 = (((v109 - 1173004847) ^ v104) - v109 + 1173004847) ^ ((v104 ^ 0x1E72F0A0 ^ v73) - v121 + 2135883598) ^ ((v65 ^ v103 ^ 0x3C32BE6B ^ (v107 + 632523527) ^ v104) - (v65 ^ v103 ^ 0x3C32BE6B ^ (v107 + 632523527)));
  v123 = ((2 * ((v65 ^ 0xC3CD4194) - 2139029486 + v116)) & 0xEF9FF5E6) + (((v65 ^ 0xC3CD4194) - 2139029486 + v116) ^ 0xF7CFFAF3);
  v124 = (v65 ^ 0x3C32BE6B) - (v113 ^ 0xD069080C);
  v125 = ((2 * (v86 - 352003973 + v120)) & 0x7BFA2FEE) + ((v86 - 352003973 + v120) ^ 0xBDFD17F7);
  v126 = v124 - ((2 * v124) & 0x574EE13E);
  v127 = v107 + 769888276 + (v113 ^ 0xB349DE9) + v123 - ((2 * (v107 + 769888276 + (v113 ^ 0xB349DE9) + v123)) & 0x529617D0);
  v128 = ((v119 - 2042068831) ^ 0xDB5D95E5) + 2055642205 - ((2 * ((v119 - 2042068831) ^ 0xDB5D95E5)) & 0xF50D38BA);
  v129 = v121 - v119;
  v130 = v22 - v121;
  v131 = v109 + v22 - v121 - 1418437272;
  v132 = v128 ^ 0x7A869C5D;
  v133 = v131 + (v128 ^ 0x7A869C5D) - 725136461 - ((2 * (v131 + (v128 ^ 0x7A869C5D))) & 0xA98E9766);
  v126 -= 1415090017;
  v134 = (LODWORD(STACK[0xA58]) ^ 0x40E7420C ^ v126 ^ LODWORD(STACK[0xA54])) - (v126 ^ LODWORD(STACK[0xA54]) ^ 0x3DE635EE);
  v135 = ((2 * (v123 + 137364749)) & 0x7FFFFF7E ^ 0x5CFF9542) + ((v123 + 137364749) ^ 0x1180355E);
  v136 = v128 ^ 0xAE41D7EE ^ v133;
  v137 = v133 ^ (v129 - 93814767);
  v138 = LODWORD(STACK[0xA58]) ^ 0xA9C63C51;
  LODWORD(STACK[0xAD8]) = LODWORD(STACK[0xA60]) + 1073739446 + v135 - 1143902301 - ((2 * (LODWORD(STACK[0xA60]) + 1073739446 + v135 + 2443) - 1699574738) & 0xDCF04002);
  v139 = ((v138 ^ v133) - (v133 ^ 0xD4C74BB3)) ^ v134;
  v140 = v138 ^ v137;
  v137 ^= 0xD4C74BB3;
  v141 = ((2 * (v130 - 245432425)) & 0xF1B67FF6 ^ 0x50B615C2) + ((v130 - 245432425) ^ 0x56A4F51A);
  v127 += 692784104;
  v142 = (v113 ^ 0x227F9601 ^ v127) + v135;
  v143 = (v126 ^ 0x82EC7B77 ^ v127) - v142;
  v144 = (v143 - 767565520) ^ v113;
  v145 = ((2 * (v135 + 767565520 + (v144 ^ 0xB349DE9))) & 0x7F7EDFF2) + ((v135 + 767565520 + (v144 ^ 0xB349DE9)) ^ 0x3FBF6FF9);
  LODWORD(STACK[0xAB8]) = (v139 ^ (v140 - v137)) - v141 - ((2 * ((v139 ^ (v140 - v137)) - v141) + 834043894) & 0x31937DB6);
  v146 = v136 + v141;
  v147 = ((2 * (v137 - (v136 + v141) + 186327404)) & 0xFFDFEBEE) + ((v137 - (v136 + v141) + 186327404) ^ 0x7FEFF5F7);
  v148 = (v132 ^ (v147 - 2146432503)) + 1726687554 - ((2 * (v132 ^ (v147 - 2146432503))) & 0xCDD65284);
  v149 = ((2 * (v141 - 186327404 + (v148 ^ 0x66EB2942))) & 0xB6BBFDBC) + ((v141 - 186327404 + (v148 ^ 0x66EB2942)) ^ 0xDB5DFEDE);
  v150 = v147 - v149 - ((2 * (v147 - v149) - 1227091506) & 0xCBA20BD6);
  v151 = v143 - v145 - 81567503 - ((2 * (v143 - v145 - 81567503) + 767025264) & 0xEF826C62) + 245180009;
  v152 = v151 ^ v144;
  v150 += 1094651602;
  v153 = v151 ^ 0x8CCE08A8;
  v154 = ((v145 - 1069510649) ^ 0xF7C13631 ^ v151) + (v151 ^ 0x8CCE08A8);
  v155 = v154 - ((2 * v154) & 0xA982440E);
  v156 = (v149 + 614596898) ^ 0xE5D105EB ^ v150;
  v157 = 2 * v150;
  v158 = ((2 * v150) & 0x9C7CEF9E ^ 0x1C3C6684) + (v150 ^ 0xD0E04CBD);
  v159 = v142 + 767565520 + (v151 ^ 0x7331F757) + ((2 * v151) ^ 0xEF826C62) + 1;
  v160 = v159 + 303509428 - ((2 * v159) & 0x242E5F68);
  v161 = ((2 * (v153 + 1123034925)) & 0xBFD5F73E) + ((v153 + 1123034925) ^ 0xDFEAFB9F);
  v162 = ((2 * (v161 + 538248289 + ((v155 + 1421943303) ^ 0xAB3EDDF8) + 1)) & 0xFEB6FAEC) + ((v161 + 538248289 + ((v155 + 1421943303) ^ 0xAB3EDDF8) + 1) ^ 0x7F5B7D76);
  LODWORD(v83) = ((2 * ((v160 ^ 0x12172FB4) - 2136702326 + v162)) & 0xAEB8DF60) + (((v160 ^ 0x12172FB4) - 2136702326 + v162) ^ 0xD75C6FB0);
  v163 = v148 ^ 0x46735F39 ^ (v158 - 1312716751);
  v164 = v152 ^ 0xA762E33A;
  v165 = v162 - (v152 ^ 0xA762E33A);
  v166 = v83 + v164;
  v167 = v83 - v161 - ((2 * (v83 - v161) + 287119326) & 0x9F22E780);
  LODWORD(v83) = v36 - v79 + v22 - v122 + (LODWORD(STACK[0xBC8]) ^ 0x70E7DD5B) - 1455938501;
  LODWORD(v83) = v83 - 660426877 - ((2 * v83) & 0xB1455F06);
  v168 = v103 - v87 + v116 + LODWORD(STACK[0xAD0]) - 1032600551 + v125;
  v169 = v168 + 268184180 - ((2 * v168) & 0x1FF854E8);
  LODWORD(v71) = STACK[0xAA8];
  LODWORD(v87) = v163 + v156;
  v170 = v146 + (v157 ^ 0xCBA20BD6) - v158 + 1058221898 - v156 + 787853194 - v158;
  v171 = ((v167 - 668991569) ^ ((v169 ^ 0xFFC2A74 ^ (v161 + 538248289)) - 812551232 - ((2 * (v169 ^ 0xFFC2A74 ^ (v161 + 538248289))) & 0x9F22E780))) - (v83 ^ 0xD8A2AF83 ^ (v158 - 189681826) ^ (v170 + 593031006));
  LODWORD(STACK[0xAD0]) = (v171 ^ (v165 - 229968013)) - 654390979 - ((2 * (v171 ^ (v165 - 229968013))) & 0xB1FD927A);
  v172 = (-1265198058 - v87) ^ ((((v83 ^ 0xD8A2AF83 ^ (v161 + 538248289)) + 268184180 - ((2 * (v83 ^ 0xD8A2AF83 ^ (v161 + 538248289))) & 0x1FF854E8)) ^ v169) - v158 + 189681826) ^ ((((v83 ^ 0x1733DC43 ^ (v167 - 668991569)) + 268184180 - ((2 * (v83 ^ 0x1733DC43 ^ (v167 - 668991569))) & 0x1FF854E8)) ^ v169) - v170 - 593031006);
  LODWORD(STACK[0xAC8]) = v172 + 126168630 - ((2 * v172) & 0xF0A5C6C);
  LODWORD(STACK[0xAB8]) = v166 - (v161 - v166) - ((2 * (v166 - (v161 - v166)) - 270258100) & 0xF5B5CDA0) - 221446410;
  v173 = STACK[0xBD0];
  v174 = *(STACK[0xBD8] + 8 * ((24272 * (STACK[0xBD0] == 63)) ^ STACK[0xB58]));
  ++STACK[0xB68];
  STACK[0xBD0] = v173 + 1;
  LODWORD(STACK[0xA80]) = v71;
  LODWORD(STACK[0xA90]) = STACK[0xA70];
  LODWORD(STACK[0xA88]) = STACK[0xA68];
  return v174();
}

uint64_t sub_244B9D6C8@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W4>, int a5@<W6>, int a6@<W8>)
{
  v18 = ((2 * v11) & 0xFFFCEEB6 ^ 0xC8A42600) + (v11 ^ 0x1BAD647F);
  v19 = STACK[0xAC8];
  LODWORD(STACK[0xA60]) = ((2 * (v18 + 100517 + (LODWORD(STACK[0xAC8]) ^ a2))) & 0xFC2F3FC8) + ((v18 + 100517 + (LODWORD(STACK[0xAC8]) ^ a2)) ^ 0xFE179FE4);
  v20 = STACK[0xAB8];
  v21 = v6 ^ LODWORD(STACK[0xAB8]);
  LODWORD(STACK[0xBD0]) = v21;
  v22 = ((2 * v21) & 0x7FFF5D76 ^ 0x74E80454) + (v21 ^ 0x858BFD91);
  v23 = (a1 ^ 0xEE782001) + v18;
  LODWORD(STACK[0xBC8]) = v9;
  v24 = ((2 * (v11 ^ v20)) & 0x1AD7FFEE ^ 0x1813EBE8) + (v11 ^ v20 ^ 0x93E20A03);
  LODWORD(STACK[0xAB0]) = a5;
  v25 = v10;
  v26 = ((2 * (a5 ^ v10)) & 0xBE67F76C ^ 0x2C068160) + (a5 ^ v10 ^ 0x69B0BF47);
  v27 = ((2 * ((v12 - 41307108) ^ v10)) & 0x2B13BEBE ^ 0x2000A18) + ((v12 - 41307108) ^ v10 ^ 0xBEFFDA53);
  v28 = v24 + (v20 ^ 0x199E6461);
  v29 = LODWORD(STACK[0x9C8]) ^ (v28 + 1922301961) ^ (v22 - v24 - 848539332);
  v30 = (a4 ^ 0x23714666 ^ (v29 + 619997264 - ((2 * v29) & 0x49E8D0A0))) - ((v29 + 619997264 - ((2 * v29) & 0x49E8D0A0)) ^ 0x24F46850);
  v31 = v27 + (v25 ^ 0x483287BD);
  LODWORD(STACK[0xB58]) = LODWORD(STACK[0x9C8]) + 7602105 + v24 - 1945628012 - ((2 * (LODWORD(STACK[0x9C8]) + 7602105 + v24)) & 0x18102528);
  LODWORD(STACK[0xAB8]) = (((v16 ^ (v31 - 361357151)) - v31 + 361357151) ^ ((v16 ^ (v26 - v27 - 1235885143)) - (v26 - v27) + 1235885143) ^ v30) - v27;
  v32 = ((v28 - 486105104) ^ 0xD51D7952) + 87815294 - 2 * (((v28 - 486105104) ^ 0xD51D7952) & 0x53BF47F ^ v28 & 1);
  v33 = v23 + 1073863146 + v22 - ((2 * (v23 + 1073863146 + v22) - 657999014) & 0x8C73B10A);
  v34 = (v20 ^ 0x199E6461) - 1334644436 + v22;
  v35 = ((2 * (v34 ^ (-1914699856 - (v20 ^ 0x199E6461)))) & 0xDF76E976) + (v34 ^ (-1914699856 - (v20 ^ 0x199E6461)) ^ 0xEFBB74BB);
  v36 = v12 + v13 + v26 + 81808071 - ((2 * (v12 + v13 + v26) + 1961821232) & 0x94D1915E);
  v37 = (v25 ^ 0x483287BD) + 289317937 + v26;
  LODWORD(STACK[0xAA8]) = v12;
  v38 = ((2 * (v37 ^ (-1914699856 - (v25 ^ 0x483287BD)))) & 0xED87FE3A) + (v37 ^ (-1914699856 - (v25 ^ 0x483287BD)) ^ 0x76C3FF1D);
  v39 = ((v31 + 1525203080) ^ 0xD51D7952) - 261082010 - 2 * (((v31 + 1525203080) ^ 0xD51D7952) & 0x7070346F ^ (v31 + 1525203080) & 9);
  v40 = (v39 ^ 0xF0703466) + v37 - 1845533459 - ((2 * ((v39 ^ 0xF0703466) + v37)) & 0x23FEC9DA);
  v41 = (v32 ^ 0x53BF47E) + v34 - ((2 * ((v32 ^ 0x53BF47E) + v34)) & 0x8FC816EE) + 1206127479;
  v42 = LODWORD(STACK[0x9D0]) + 272927557 + v35 + 76656921 - ((2 * (LODWORD(STACK[0x9D0]) + 272927557 + v35)) & 0x9236232);
  v43 = v33 - 1298287054;
  v44 = v41 ^ (v33 - 1298287054);
  v45 = v44 ^ (v35 + 1263334381);
  v46 = ((2 * ((v45 ^ 0x1DDD3F2) + (v32 ^ 0x4E6278C ^ v44))) & 0xF3FFFFBA) + (((v45 ^ 0x1DDD3F2) + (v32 ^ 0x4E6278C ^ v44)) ^ 0x79FFFFDD);
  v47 = (((LODWORD(STACK[0xB60]) ^ 0x9DA41802 ^ v32 ^ LODWORD(STACK[0xAF8]) ^ v41) - (v32 ^ LODWORD(STACK[0xAF8]) ^ v41 ^ 0x9A213634)) ^ ((LODWORD(STACK[0xB60]) ^ 0xF7F51A50 ^ v39) - (v39 ^ 0xF0703466)) ^ ((LODWORD(STACK[0xB60]) ^ 0x967A4ADB ^ v40) - (v40 ^ 0x91FF64ED))) - v38;
  v48 = v40 ^ v36;
  v49 = v48 ^ (v38 - 1002149493);
  v50 = ((2 * ((v49 ^ 0xDB97AC42) + (v39 ^ 0x2BE79824 ^ v48))) & 0xBEAFFCDE) + (((v49 ^ 0xDB97AC42) + (v39 ^ 0x2BE79824 ^ v48)) ^ 0xDF57FE6F);
  v51 = (v48 ^ 0xDB97AC42) - ((2 * (v48 ^ 0xDB97AC42) - 156131186) & 0xAC4F2348);
  v52 = (v44 ^ 0x1DDD3F2) - ((2 * (v44 ^ 0x1DDD3F2) - 156131186) & 0xDCF04002) - 372182968;
  v53 = v50 + 547881361 + (v36 ^ 0xAD3ED065);
  v51 += 1367368171;
  v54 = ((v15 ^ 0x3103C70A ^ v52 ^ a6 ^ (v46 - 2046820317)) - (v52 ^ a6 ^ (v46 - 2046820317) ^ 0x3686E93C)) ^ ((v15 ^ 0x51A2BF92 ^ v51) - (v51 ^ 0x562791A4)) ^ (-547881361 - v50 + (LODWORD(STACK[0x9D8]) ^ (v50 + 547881361)));
  LODWORD(STACK[0x9D0]) = ((2 * ((v45 ^ 0x1DDD3F2) + LODWORD(STACK[0x9E0]))) & 0xF7E7F7F6) + (((v45 ^ 0x1DDD3F2) + LODWORD(STACK[0x9E0])) ^ 0x7BF3FBFB);
  v55 = v54 - (v49 ^ 0xDB97AC42) - 553925695 - ((2 * (v54 - (v49 ^ 0xDB97AC42))) & 0xBDF78782);
  LODWORD(STACK[0xA48]) = v55;
  v56 = ((2 * ((v46 - 2046820317 + (v43 ^ 0xA16FC04F)) ^ v52)) & 0xFCD7FF7A ^ 0xB0553070) + ((v46 - 2046820317 + (v43 ^ 0xA16FC04F)) ^ v52 ^ 0x27416785);
  v57 = v52 ^ v45;
  v58 = (v52 ^ 0x592A9838) - 2121007037 + v56 - 904655217 - ((2 * ((v52 ^ 0x592A9838) - 2121007037 + v56)) & 0x94281D1E);
  v59 = v46 - ((2 * v46 + 1896586672) & 0x67AC66E2);
  v60 = ((2 * (v53 ^ v51)) & 0xEF5FBFFE ^ 0xC24A133A) + (v53 ^ v51 ^ 0x96DAF662);
  v61 = v51 ^ v49;
  v62 = (v51 ^ 0xE175299D) - 2008014847 + v60 - 1571815670 - ((2 * ((v51 ^ 0xE175299D) - 2008014847 + v60)) & 0x449FFE14);
  v63 = v59 - 329514423;
  v64 = (v7 ^ 0xA5977600 ^ (v59 - 329514423) ^ a3) - ((v59 - 329514423) ^ a3 ^ 0xA5977600);
  v65 = v57 ^ v58;
  v66 = (v65 ^ 0x92E34545) + (a3 ^ v14) + 1787815530 - ((2 * ((v65 ^ 0x92E34545) + (a3 ^ v14))) & 0xD51FCCD4);
  LODWORD(STACK[0xA98]) = v66;
  v67 = v62 ^ (v50 + 1395511366);
  v68 = v61 ^ v62;
  v69 = v7 ^ 0xA24FFF0A;
  v70 = v69 ^ v62;
  v62 ^= 0xA24FFF0A;
  v71 = v69 ^ v67;
  v67 ^= 0xA24FFF0A;
  LODWORD(STACK[0x9C8]) = ((2 * (((v70 - v62) ^ v64 ^ (v71 - v67)) - (v68 ^ 0x98AD7AD5))) & 0xAB7FF83A) + ((((v70 - v62) ^ v64 ^ (v71 - v67)) - (v68 ^ 0x98AD7AD5)) ^ 0x55BFFC1D);
  v72 = ((2 * ((v65 ^ 0x92E34545) + (v63 ^ 0xF9C23DFE ^ v58))) & 0xD73FFA3E) + (((v65 ^ 0x92E34545) + (v63 ^ 0xF9C23DFE ^ v58)) ^ 0x6B9FFD1F);
  v73 = (v58 ^ 0xCA140E8F) - ((2 * (v58 ^ 0xCA140E8F) + 1584680538) & 0xD16321D4) + 401324055;
  v74 = ((2 * (v73 ^ v65)) & 0xDEDFBFFA ^ 0xD485AB5A) + (v73 ^ v65 ^ 0x153D0A52);
  v75 = ((2 * (v67 + (v68 ^ 0x98AD7AD5))) & 0x6FDB6F68) + ((v67 + (v68 ^ 0x98AD7AD5)) ^ 0xB7EDB7B4);
  v76 = v62 - ((2 * v62 + 1584680538) & 0xDE1E6CA2) - 1639359106;
  v77 = ((2 * (v76 ^ v68)) & 0xADBFFDF8 ^ 0xAD049908) + (v76 ^ v68 ^ 0x217DB278);
  v78 = ((2 * ((v76 ^ 0x10F0C9AE) + v75 + 1209157709)) & 0x79BF6F7E) + (((v76 ^ 0x10F0C9AE) + v75 + 1209157709) ^ 0x3CDFB7BF);
  v79 = v72 + (v73 ^ 0x974E6F15) - ((2 * (v72 + (v73 ^ 0x974E6F15)) + 683673028) & 0xAAE31998) - 372142162;
  v80 = LODWORD(STACK[0xAC0]) ^ 0x422328DB ^ v76;
  v81 = ((2 * v76) & 0xEFDFFAFE ^ 0xA8C4DA54) + (v76 ^ 0xA38D90D5);
  v82 = v77 + v75;
  v83 = (((LODWORD(STACK[0xAC0]) ^ 0x41E0569A ^ v73 ^ LODWORD(STACK[0xAE0]) ^ v79) - (v73 ^ LODWORD(STACK[0xAE0]) ^ v79 ^ 0xD7A113EB)) ^ (v80 + 2012216222 - v81 + 481) ^ (1021294527 - v78 + (LODWORD(STACK[0xA28]) ^ (v78 - 1021294527)))) - v82;
  v84 = v74 + v72;
  v85 = ((2 * (LODWORD(STACK[0xA30]) - 1527766300 + v84)) & 0xF19DFF9E) + ((LODWORD(STACK[0xA30]) - 1527766300 + v84) ^ 0xF8CEFFCF);
  v86 = v56 + ((2 * v65) ^ 0x25C68A8A) - v74 + 1896079424 + (v79 ^ 0x55718CCC);
  v87 = ((2 * v86) & 0xF97AB7FC) + (v86 ^ 0x7CBD5BFE);
  v88 = (v84 + 1806991667) ^ v79;
  v89 = v60 + ((2 * v68) ^ 0x315AF5AA) - v77 + v78;
  v90 = (v73 ^ 0x53DCCB11) + 2 * v87 - 2092784638;
  v91 = v8 ^ v88 ^ 0x87492A29 ^ ((v73 ^ 0x53DCCB11) + 2 * v87 + 1655198781);
  v92 = (LODWORD(STACK[0xAE8]) ^ 0x6DEC1FDC ^ (v91 - ((2 * v91) & 0xA7A91036) + 1406437403)) - ((v91 - ((2 * v91) & 0xA7A91036) + 1406437403) ^ 0xFBAD5AAD);
  v93 = ((v82 - 1208572001) ^ (v78 - 1021294527)) - ((2 * ((v82 - 1208572001) ^ (v78 - 1021294527))) & 0x50C1DDE0) - 1470042384;
  v94 = v81 + 2 * v89;
  v95 = LODWORD(STACK[0xA38]) ^ (v94 + 684973366);
  v96 = v84 - 423599017 + LODWORD(STACK[0xA40]) - 1440126781 - ((2 * (v84 - 423599017 + LODWORD(STACK[0xA40]))) & 0x5452D186);
  v94 -= 2034536966;
  v97 = ((LODWORD(STACK[0xAE8]) ^ 0x956C8BE4 ^ v93) - (v93 ^ 0x32DCE95)) ^ (v95 - v94 + 1575456964) ^ v92;
  v98 = ((2 * v88) & 0xEEEE9EBE ^ 0x42AA0E04) + (v88 ^ 0xDEAAF8DD);
  v99 = ((v19 ^ 0xA73B4F2B) + 980701994 - ((2 * (v19 ^ 0xA73B4F2B)) & 0x74E8A654)) ^ LODWORD(STACK[0xBD0]);
  v100 = (((LODWORD(STACK[0xAB0]) ^ LODWORD(STACK[0xAD0]) ^ 0x450B88C0) - (LODWORD(STACK[0xAB0]) ^ 0x9DF541FD)) ^ ((v25 ^ LODWORD(STACK[0xAD0]) ^ 0x7388CC31) - (v25 ^ 0xAB76050C)) ^ ((LODWORD(STACK[0xAD0]) ^ 0xA0BE611D ^ (v99 - 654390979 - ((2 * v99) & 0xB1FD927A))) - (LODWORD(STACK[0xBD0]) ^ 0x3DF17D1C ^ v19))) - LODWORD(STACK[0xAA8]);
  LODWORD(STACK[0xBD0]) = (v42 ^ 0x491B119) + LODWORD(STACK[0x8F8]);
  LODWORD(STACK[0xB60]) = LODWORD(STACK[0x928]) - 173984555 + (v55 ^ 0xDEFBC3C1);
  v101 = v83 - ((2 * v83 + 496725344) & 0xB55EB5A0) - 377679488;
  LODWORD(STACK[0xAF8]) = LODWORD(STACK[0x920]) - 2057825563 + (v101 ^ 0xDAAF5AD0);
  v102 = LODWORD(STACK[0x978]) - 1757439328;
  LODWORD(STACK[0xB68]) = v96 ^ 0xAA2968C3;
  LODWORD(STACK[0xAE8]) = ((v102 + (v96 ^ 0xAA2968C3)) ^ 0xE9E67767) + 2128209402 + ((2 * (v102 + (v96 ^ 0xAA2968C3))) & 0xD3CCEECE);
  v103 = v100 - ((2 * v100 + 82614216) & 0xC9FED76E) - 411715685;
  LODWORD(STACK[0xAC8]) = (v103 ^ 0xE4FF6BB7) + (LODWORD(STACK[0x930]) ^ 0x5944EB84);
  LODWORD(STACK[0xA90]) = (v66 ^ 0x6A8FE66A) + (LODWORD(STACK[0x948]) ^ 0x90F46944);
  LODWORD(STACK[0xA88]) = (LODWORD(STACK[0xBC8]) ^ 0x98C9BEDB) + (LODWORD(STACK[0x958]) ^ 0x98C9BEDB);
  v104 = (v87 - 546983877) ^ (v84 - 423599017);
  v105 = v98 + v84;
  v106 = v104 - v105;
  v107 = v104 - v105 - 541516305;
  v108 = v90 - v107 - ((2 * (v90 - v107) + 442943810) & 0x2150D6E4) + 500944915;
  v109 = ((v105 + 1867060472) ^ 0x90A86B72 ^ v108) - 1850213564 - ((2 * ((v105 + 1867060472) ^ 0x90A86B72 ^ v108)) & 0x236FF688);
  v110 = ((2 * (v98 - 2004307806 + (v108 ^ 0x6F57948D))) & 0xFFFBEA4A) + ((v98 - 2004307806 + (v108 ^ 0x6F57948D)) ^ 0x7FFDF525);
  v111 = (v89 - 25988233) ^ (v82 + 855804611);
  v112 = ((2 * v93) & 0xF0AD2DEE ^ 0xA089296C) + (v93 ^ 0xAC9A4349);
  LODWORD(STACK[0xAD0]) = v97 - v82;
  v113 = v82 + v112;
  v114 = v82 + v112 - 539019196;
  v115 = v111 - v114;
  v116 = v115 - 655467545;
  v117 = v113 + 984347596;
  v118 = v94 - (v115 - 655467545) - ((2 * (v94 - (v115 - 655467545)) + 155062356) & 0x1D51AABC) + 1128783240;
  LODWORD(STACK[0xA70]) = v118;
  v119 = ((v113 + 984347596) ^ 0xEA8D55E ^ v118) - 826395746 - ((2 * ((v113 + 984347596) ^ 0xEA8D55E ^ v118)) & 0x9D7C673C);
  v120 = STACK[0xA60];
  LODWORD(STACK[0xA80]) = LODWORD(STACK[0x8F4]) + 32006172 + LODWORD(STACK[0xA60]);
  v121 = 1622370112 - v120 - ((-64012344 - 2 * v120) & 0xC5378EB8);
  v106 -= 1867060472;
  LODWORD(STACK[0xAB0]) = v108 ^ 0xD628CB35 ^ ((v103 ^ v106 ^ 0x754890F3 ^ v109) - (v121 ^ (v115 - 1523366792) ^ 0xAC25F4C2 ^ v119));
  v122 = ((((v121 ^ 0xF32C3C18 ^ v109) - 453022793 - ((2 * (v121 ^ 0xF32C3C18 ^ v109)) & 0xC9FED76E)) ^ v103) - (v119 ^ 0xCEBE339E)) ^ (867899246 - ((((2 * (v121 ^ 0x629BC75C ^ v106)) & 0xC9FED76E) - (v121 ^ 0x629BC75C ^ v106) + 453022792) ^ v103) - (v115 - 655467545));
  LODWORD(STACK[0xA78]) = v122 + 245945694 - ((2 * v122) & 0x1D51AABC);
  v123 = ((2 * (v112 + 128542986 + (v118 ^ 0xF1572AA1))) & 0xFE7FCFFA) + ((v112 + 128542986 + (v118 ^ 0xF1572AA1)) ^ 0x7F3FE7FD);
  v124 = ((v110 - 135605423) ^ (v105 + 1867060472)) + 1741548876 - ((2 * ((v110 - 135605423) ^ (v105 + 1867060472))) & 0xCF9BDA98);
  v125 = v107 - v110;
  v126 = (v109 ^ 0x91B7FB44) + 821805630 + v125;
  v127 = v125 - v105;
  v128 = (v119 ^ 0xCEBE339E) + 1266995342 + v116 - v123;
  v129 = v116 - v123 - v114;
  v130 = ((v123 - 123150215) ^ v117) - 1272987969 - ((2 * ((v123 - 123150215) ^ v117)) & 0x683F7D7E);
  v131 = STACK[0xAB8];
  LODWORD(STACK[0xA68]) = (LODWORD(STACK[0x940]) ^ 0x7DD70190) - 2018910289 + LODWORD(STACK[0xAB8]);
  v132 = 1724792914 - v131 - ((-257146718 - 2 * v131) & 0xDCF04002);
  v133 = v132 ^ 0xEE782001;
  v134 = (v132 ^ 0xEE782001 ^ (v127 - 1045254842)) - 1945628012 - ((2 * (v132 ^ 0xEE782001 ^ (v127 - 1045254842))) & 0x18102528);
  v135 = LODWORD(STACK[0xB58]) ^ v132;
  v136 = v134 ^ LODWORD(STACK[0xB58]);
  v137 = LODWORD(STACK[0xB58]) ^ 0x8C081294;
  LODWORD(STACK[0xA60]) = LODWORD(STACK[0x944]) - 1400256601 + v137;
  v138 = ((v135 ^ 0x62703295 ^ (v126 + 550510579)) - v128 - 550510579) ^ (v136 - v129 + 256371450);
  LODWORD(STACK[0xB58]) = v130 ^ 0xF05DE1E ^ (v138 - 1272987969 - ((2 * v138) & 0x683F7D7E));
  LODWORD(STACK[0xAE0]) = v124 ^ 0x214D4D0B ^ ((v137 ^ (v127 - 1045254842) ^ (v126 + 550510579)) - (v133 ^ (v129 - 256371450) ^ (v128 + 550510579)));
  v139 = ((2 * ((v124 ^ 0x67CDED4C) + v126 + 550510579)) & 0x72EED7E4) + (((v124 ^ 0x67CDED4C) + v126 + 550510579) ^ 0x39776BF2);
  v140 = v127 + v110 + v139;
  v141 = v126 - v127 - v140 + 1820728869 - ((2 * (v126 - v127 - v140 + 1820728869) - 454918202) & 0xAC0789C6);
  v142 = v127 - ((2 * v127 + 937676844) & 0xB626FA52) - 150641345;
  v143 = ((2 * ((v140 - 2144987995) ^ v142)) & 0x76FFFFFC ^ 0x3626FA50) + ((v140 - 2144987995) ^ v142 ^ 0x606C82D7);
  v144 = ((2 * ((v130 ^ 0xB41FBEBF) + v128 + 550510579)) & 0xAF4FBD22) + (((v130 ^ 0xB41FBEBF) + v128 + 550510579) ^ 0x57A7DE91);
  v145 = v129 + 52536120 + v123 + v144;
  v146 = v128 - v129 - v145 + 3967712 - ((2 * (v128 - v129 - v145 + 3967712) + 1116215470) & 0xA30FDFE2);
  v147 = v129 - ((2 * (v129 + 52536120) + 262887740) & 0x26FD8F5E) + 1584797573;
  v148 = ((2 * ((v145 - 1902677066) ^ v147)) & 0xFD94FFF6 ^ 0x24948F56) + ((v145 - 1902677066) ^ v147 ^ 0xEDB4B854);
  v149 = (LODWORD(STACK[0x950]) ^ 0x21B95158) + 1992556317 + v47;
  v150 = 659116216 - v47 - ((309854662 - 2 * v47) & 0x3C1A9FAA);
  v151 = (v147 ^ 0x937EC7AF ^ (v144 - 1144867635)) + 1154711974 - ((2 * (v147 ^ 0x937EC7AF ^ (v144 - 1144867635))) & 0x89A7034C);
  v152 = v141 - 931855162;
  v153 = (v150 ^ 0xC80E8B36 ^ (v141 - 931855162)) + 76656921 - ((2 * (v150 ^ 0xC80E8B36 ^ (v141 - 931855162))) & 0x9236232);
  v154 = v146 - 221512632;
  LODWORD(STACK[0xA58]) = (v153 ^ v42) - ((v146 - 221512632) ^ 0x5187EFF1);
  v155 = (v139 - 638376084) ^ v142;
  v156 = ((2 * ((v155 ^ 0x5B137D29) - v139 + 638376084)) & 0xEBBFFFDE) + (((v155 ^ 0x5B137D29) - v139 + 638376084) ^ 0x75DFFFEF);
  v157 = v139 - v143 - ((2 * (v139 - v143) + 719736532) & 0xDCF04002);
  v158 = ((2 * ((v156 - 1977614319) ^ v152)) & 0xF7BEF5DA ^ 0xA40681C2) + ((v156 - 1977614319) ^ v152 ^ 0xADDCBE0E);
  v151 ^= 0x44D381A6u;
  LODWORD(STACK[0xA54]) = (((v150 ^ 0xC51E32FC ^ v155) + 76656921 - ((2 * (v150 ^ 0xC51E32FC ^ v155)) & 0x9236232)) ^ v42) - v151;
  v159 = ((2 * (v151 - v144 + 1144867635)) & 0xF9BDFFD2) + ((v151 - v144 + 1144867635) ^ 0xFCDEFFE9);
  v160 = v143 - 1067693329 - v158;
  v161 = v144 - v148 - ((2 * (v144 - v148) + 1964665232) & 0xF307BB84);
  v162 = ((2 * ((v159 + 52494359) ^ v154)) & 0x57BA57DE ^ 0x30A57C2) + ((v159 + 52494359) ^ v154 ^ 0xFA5AC41E);
  v163 = v158 - ((2 * v158 + 233205796) & 0x3EAF9E3A) - 968161489;
  v164 = v156 - v158 - ((2 * (v156 - v158) + 201258492) & 0xF47C74A4) - 2143439536;
  v165 = v159 - v162;
  v166 = v148 - v162;
  v167 = v162 - 151681264;
  v168 = (-2020617854 - LODWORD(STACK[0x9D0]) - ((401078262 - 2 * LODWORD(STACK[0x9D0])) & 0x1737AB0E)) ^ (v162 - 151681264);
  v169 = v165 - 1359074298;
  v157 += 65750891;
  LODWORD(STACK[0xAA8]) = v157 ^ 0x6E49F054 ^ ((((v163 ^ LODWORD(STACK[0xA48]) ^ 0xC1AC0CDC) - 96585134 - 2 * ((v163 ^ LODWORD(STACK[0xA48]) ^ 0xC1AC0CDC) & 0x7A3E3A53 ^ (v163 ^ LODWORD(STACK[0xA48])) & 1)) ^ v164) - (v168 ^ (v165 - 1359074298) ^ 0xB9BD587));
  v170 = (v160 + 208896) ^ v157;
  v171 = (v157 ^ 0x28C95013) - (v164 ^ 0xFA3E3A52) - ((2 * ((v157 ^ 0x28C95013) - (v164 ^ 0xFA3E3A52))) & 0xE7033B32);
  v172 = ((2 * v170) & 0x1DFDE5F4 ^ 0x190101A0) + (v170 ^ 0xC27F722B);
  v173 = v172 + (v164 ^ 0xEB32ABA5) + 282000630 + (~(2 * (v172 + (v164 ^ 0xEB32ABA5) + 1895894278)) | 0xC0642021);
  v174 = v171 - 209609319;
  v175 = (v171 - 209609319) ^ 0x2AD880C9;
  v176 = (v163 ^ 0x1F57CF1D) + (v170 ^ 0xEE782001) + v175 - 1014611906 - ((2 * ((v163 ^ 0x1F57CF1D) + (v170 ^ 0xEE782001) + v175)) & 0x870C807C);
  v177 = ((v161 - 1273949558) ^ 0xBF32ADD0) + 1359074298 - v165;
  v178 = (v166 + 756198388) ^ (v161 - 1273949558);
  v179 = ((2 * v178) & 0x6FFFFDDE ^ 0x26F4F804) + (v178 ^ 0xEC8583FD);
  v180 = (v169 ^ 0x110C91F7) - 939523823 + v179 + 1216915833 - ((2 * ((v169 ^ 0x110C91F7) - 939523823 + v179)) & 0x911152F2);
  v181 = 813083510 - LODWORD(STACK[0x9C8]) - ((-1417676742 - 2 * LODWORD(STACK[0x9C8])) & 0xB56D5EB2);
  v182 = ((2 * ((v178 ^ 0x7983DDC2) + v167 + (v177 ^ 0xD9591D50))) & 0xFFAFF9FC) + (((v178 ^ 0x7983DDC2) + v167 + (v177 ^ 0xD9591D50)) ^ 0xFFD7FCFE);
  v183 = -2622210 - v182 + (((v181 ^ 0x1930EF67 ^ v176) + 1787815530 - ((2 * (v181 ^ 0x1930EF67 ^ v176)) & 0xD51FCCD4)) ^ LODWORD(STACK[0xA98]));
  v184 = (((v181 ^ 0x457B40B6 ^ v173) + 1787815530 - ((2 * (v181 ^ 0x457B40B6 ^ v173)) & 0xD51FCCD4)) ^ LODWORD(STACK[0xA98])) - (v180 ^ 0x4888A979);
  LODWORD(STACK[0xAB8]) = v174 ^ 0xC4A0A0C8 ^ ((LODWORD(STACK[0xA98]) ^ 0x36C449BB ^ v176 ^ v173) - ((((v182 + 2622210) ^ v181 ^ 0xDAB6AF59) + 1216915833 - 2 * (((v182 + 2622210) ^ v181 ^ 0xDAB6AF59) & 0x4888A97D ^ ((v182 + 2622210) ^ v181) & 4)) ^ v180));
  v185 = ((2 * (v176 ^ v173)) & 0x879277FE ^ 0x809257A2) + (v176 ^ v173 ^ 0x9F82942E);
  LODWORD(STACK[0xAC0]) = v177 ^ v184 ^ v183 ^ 0xF5C92E38;
  v186 = v185 - ((2 * v185 + 1207036298) & 0xE2D04E74) - 1788797953;
  v187 = (v186 ^ 0xF168273A) + (v175 ^ (v185 + 1010222081)) - ((2 * ((v186 ^ 0xF168273A) + (v175 ^ (v185 + 1010222081)))) & 0xF2846C02);
  v188 = ((2 * (v180 ^ (v182 + 2622210))) & 0x77B4BFAE ^ 0x111012A2) + (v180 ^ (v182 + 2622210) ^ 0x7352F6AE);
  LODWORD(STACK[0x958]) = v85;
  v189 = -1063696589 - v85 - ((-241303650 - 2 * v85) & 0x8F948EC8);
  v190 = (v177 ^ 0xD9591D50 ^ (v188 - 1004167127)) + v188 + 736612589;
  v191 = (v176 ^ 0xC386403E) - 2 * (((v176 ^ 0xC386403E) + 665826752) & 0x4438C056 ^ (v176 ^ 0xC386403E) & 0x10) - 337086970;
  v192 = v101 ^ 0xBF5573CF ^ ((v189 ^ 0x83F28722 ^ v191) - 626042160 - ((2 * (v189 ^ 0x83F28722 ^ v191)) & 0xB55EB5A0));
  v193 = ((v189 ^ 0x36A2605E ^ v186) - 626042160 - ((2 * (v189 ^ 0x36A2605E ^ v186)) & 0xB55EB5A0)) ^ v101;
  v182 -= 1479034686;
  v194 = (v186 ^ 0xBF5573CF ^ ((v101 ^ 0x9E979A96 ^ v191) - 244832454 - ((2 * (v101 ^ 0x9E979A96 ^ v191)) & 0xE2D04E74))) - (v189 ^ v182 ^ 0x789F34AB ^ (v188 + 736612589));
  v195 = v190 - ((2 * v190) & 0x9CE40F02) - 831387775;
  v196 = v182 ^ 0xBF5573CF;
  v197 = (v192 - (v182 ^ 0xBF5573CF)) ^ v195 ^ (v193 - v188 - 736612589);
  LODWORD(STACK[0xA98]) = v194 ^ 0x173A1600 ^ (v187 - 113101311);
  v198 = ((v187 - 113101311) ^ v186 ^ 0x7F84EEC0) - 276827202 + ((2 * ((v187 - 113101311) ^ v186)) & 0xEF5DFFF6 ^ 0x542276) + 1664;
  v199 = v198 + ((v172 - 1737655732) ^ 0xEA4B6093) - v185 - 29541506;
  v200 = (v191 ^ 0xFB6DB389) + (v186 ^ 0xF168273A) - v198;
  v201 = (v195 ^ (v188 + 736612589) ^ 0x688DF216) + 1606384256 + ((2 * (v195 ^ (v188 + 736612589))) & 0x4DFFEB2E ^ 0xCE40B02);
  v202 = LODWORD(STACK[0xAD0]) - 477817271;
  v203 = (LODWORD(STACK[0x968]) ^ 0x6D6E3438) - 377987340 + v202;
  v204 = 100429533 - LODWORD(STACK[0xAD0]) - ((755974680 - 2 * v202) & 0xA5F3C834);
  v205 = v204 ^ 0xD2F9E41A;
  v206 = v185 - ((2 * v185 + 424135766) & 0x9ADAB00A) + 1511079472;
  v207 = ((v204 ^ 0xD2F9E41A ^ (v200 + 1731131961)) - 1440126781 - ((2 * (v204 ^ 0xD2F9E41A ^ (v200 + 1731131961))) & 0x5452D186)) ^ v96;
  v208 = ((v204 ^ 0x9F94BC1F ^ v206) - 1440126781 - ((2 * (v204 ^ 0x9F94BC1F ^ v206)) & 0x5452D186)) ^ v96;
  v209 = v196 + 2100293334;
  v210 = v196 + 2100293334 + v188 - v201;
  LODWORD(STACK[0xB68]) = (v199 + 125619438) ^ 0x2C903368 ^ ((((LODWORD(STACK[0xB68]) ^ (v200 + 1731131961)) + 1299011589 - ((2 * (LODWORD(STACK[0xB68]) ^ (v200 + 1731131961))) & 0x9ADAB00A)) ^ v206) - (v205 ^ (v188 - 1802321325) ^ (v210 - 1250471378)));
  v211 = (((v179 - 278106537) ^ 0xEA4B6093) - v188 + 1004167127 + v201 - 1570744689) ^ (v208 - v188 + 1802321325) ^ (v207 - v210 + 1250471378);
  LODWORD(STACK[0xAD0]) = v211 - 294117375 - ((2 * v211) & 0xDCF04002);
  v212 = v209 - v201;
  v213 = STACK[0xA80];
  LODWORD(STACK[0x8A8]) = (2 * LODWORD(STACK[0xA80])) & 0xDCF04002;
  LODWORD(STACK[0x8A4]) = v213 - 294117375;
  v214 = LODWORD(STACK[0xA60]) ^ 0xDB7FBDDB;
  LODWORD(STACK[0x944]) = 2 * LODWORD(STACK[0xA60]);
  LODWORD(STACK[0x8B0]) = v214 + 2012641918;
  v215 = STACK[0xBD0];
  LODWORD(STACK[0x8C0]) = (2 * LODWORD(STACK[0xBD0])) & 0x332043B0;
  LODWORD(STACK[0x8B8]) = v215 + 428876248;
  v216 = LODWORD(STACK[0xB60]) ^ LODWORD(STACK[0x898]);
  LODWORD(STACK[0x8BC]) = 2 * LODWORD(STACK[0xB60]);
  LODWORD(STACK[0x928]) = v216 - 1696669776;
  LODWORD(STACK[0x93C]) -= 1438645277;
  v217 = LODWORD(STACK[0xAF8]) ^ 0xFAFFFFFF;
  LODWORD(STACK[0x920]) = 2 * LODWORD(STACK[0xAF8]);
  LODWORD(STACK[0x8CC]) = v217 + 2141711644;
  LODWORD(STACK[0x978]) = LODWORD(STACK[0xAE8]) + 2047;
  LODWORD(STACK[0x930]) = LODWORD(STACK[0x98C]) + 849787369;
  v218 = STACK[0xAC8];
  LODWORD(STACK[0x950]) = (2 * LODWORD(STACK[0xAC8])) & 0xB289D708;
  LODWORD(STACK[0x8D8]) = v218 + 1497688964;
  v219 = STACK[0xA68];
  LODWORD(STACK[0x940]) = (2 * LODWORD(STACK[0xA68])) & 0xFBAE0320;
  LODWORD(STACK[0x8D4]) = v219 + 2111242640;
  LODWORD(STACK[0x8E4]) = (2 * v149) & 0x4372A2B0;
  LODWORD(STACK[0x8D0]) = v149 + 565793112;
  LODWORD(STACK[0x960]) -= 2079587323;
  v220 = STACK[0xA90];
  LODWORD(STACK[0x948]) = (2 * LODWORD(STACK[0xA90])) & 0x21E8D288;
  LODWORD(STACK[0x8E0]) = v220 - 1863030460;
  LODWORD(STACK[0x970]) += 120651825;
  v221 = STACK[0xA88];
  LODWORD(STACK[0x968]) = (2 * LODWORD(STACK[0xA88])) & 0x31937DB6;
  LODWORD(STACK[0x8F4]) = v221 - 1731608869;
  LODWORD(STACK[0x8F8]) = (2 * v203) & 0xDADC6870;
  LODWORD(STACK[0x8E8]) = v203 + 1835938872;
  LODWORD(STACK[0xBD0]) = v197 ^ 0xE2E234E9;
  LODWORD(STACK[0xAF8]) = v212 - 1230464187;
  v222 = STACK[0x9F0];
  v223 = *(STACK[0xBD8] + 8 * SLODWORD(STACK[0x9F0]));
  LODWORD(STACK[0xAC8]) = 1425629100;
  LODWORD(STACK[0xB60]) = -1197948034;
  LODWORD(STACK[0x98C]) = v222 ^ 0x742C;
  LODWORD(STACK[0x9E8]) = v222 ^ 0x2DFC;
  LODWORD(STACK[0x9E0]) = v222 ^ 0x2D73;
  LODWORD(STACK[0x9D8]) = v222 - 11330;
  LODWORD(STACK[0xAE8]) = STACK[0xAD8];
  return v223();
}

uint64_t sub_244B9FBA8(uint64_t a1, int a2, int a3, int a4, unsigned int a5, int a6, uint64_t a7, unsigned int a8)
{
  LODWORD(STACK[0xA70]) = v11;
  LODWORD(STACK[0xA88]) = a2;
  LODWORD(STACK[0xA90]) = v8;
  v18 = STACK[0xB20];
  v19 = *(STACK[0xB20] + 4 * (HIBYTE(a8) ^ 0xED));
  LODWORD(STACK[0xA40]) = a6 - 1576332328;
  HIDWORD(v20) = v19 ^ 0x9E0D;
  LODWORD(v20) = v19 ^ 0xEBB00000;
  LODWORD(STACK[0xA38]) = v20 >> 16;
  v21 = ((2 * (a6 - 1576332328 + (v16 ^ v9))) & 0xFD77CDAA) + ((a6 - 1576332328 + (v16 ^ v9)) ^ 0x7EBBE6D5);
  v22 = a5 ^ 0xF05DE1E;
  LODWORD(STACK[0xA78]) = v17;
  LODWORD(STACK[0xA48]) = v17 ^ 0x4680A047;
  LODWORD(STACK[0xA54]) = a2 ^ 0xBEAE17C4;
  LODWORD(STACK[0xA28]) = v16;
  LODWORD(STACK[0xA20]) = (v17 ^ a8) & (a2 ^ 0xBEAE17C4) ^ (v17 ^ 0x4680A047) & v22;
  LODWORD(STACK[0xA30]) = a3 ^ v9;
  v23 = *(v18 + 4 * (a5 ^ 0xA0u));
  v24 = ((2 * ((a3 ^ v9) + 2126243541 - v21)) & 0x66BBEEF8) + (((a3 ^ v9) + 2126243541 - v21) ^ 0x335DF77C);
  HIDWORD(v20) = v23 ^ 0x4D;
  LODWORD(v20) = v23 ^ 0x43E49B00;
  v25 = (v20 >> 8) + 638097068 - ((2 * (v20 >> 8)) & 0x4C112D58);
  v26 = (v16 ^ 0x110EED8D) - v24;
  LODWORD(STACK[0xA18]) = v26;
  LODWORD(STACK[0xB58]) = a5;
  v28 = ((2 * (v24 - 861796220)) & 0xFFE77FFC ^ 0x64C37A60) + ((v24 - 861796220) ^ 0x4D9A02CF);
  v29 = *(v18 + 4 * (STACK[0x9E8] & HIWORD(a5) ^ 0xC4));
  HIDWORD(v20) = v29 ^ 0x18848E;
  LODWORD(v20) = v29 ^ 0xBA000000;
  v30 = v20 >> 24;
  v31 = v22 - ((2 * v22) & 0x1DE372A46) - 0x2C12900910E46ADDLL;
  HIDWORD(v20) = v31 >> 24;
  LODWORD(v20) = (HIDWORD(v20) ^ 0xEC) << 24;
  LODWORD(STACK[0xA08]) = *(v18 + 4 * (BYTE1(v31) ^ 0xF9)) ^ v30 ^ v25;
  v32 = *(STACK[0xBB0] + ((v20 >> 25) ^ 0x9FLL));
  HIDWORD(v20) = v32;
  LODWORD(v20) = (v32 ^ v12) << 24;
  v33 = v20 >> 25;
  v34 = (v16 ^ v9) + a4 - 831424541 - v21;
  v35 = v26 - v34;
  v36 = ((v26 - v34 - 1264447321) ^ (v34 + 2126243541)) + 2081342265 - ((2 * ((v26 - v34 - 1264447321) ^ (v34 + 2126243541))) & 0xF81D8672);
  v37 = v34 - 1319239680 + v28;
  LODWORD(v31) = ((v37 + 1298802391) ^ 0x7C0EC339 ^ v36) - ((2 * ((v37 + 1298802391) ^ 0x7C0EC339 ^ v36)) & 0x51547184);
  v38 = (v36 ^ 0xB47CC8F5) - 750446551 + ((2 * v36) & 0x5975CFAE ^ 0x11044E04);
  v40 = v21 - 2126243541;
  v41 = v38 + ((v21 - 2126243541) ^ 0x9122726D) - ((2 * (v38 + ((v21 - 2126243541) ^ 0x9122726D))) & 0x6BC2802C) + 903954454;
  v42 = v41 ^ (v35 - v37 - 1330957899 - ((2 * (v35 - v37 - 1330957899) + 756641846) & 0x22F817D8) + 1208534023);
  v43 = v42 ^ 0xE9063244;
  v44 = (v42 ^ 0xE9063244) & 0x1B151DCB ^ v42 & 0xB;
  LODWORD(STACK[0xA60]) = v31 - 1465239358;
  v45 = (v31 - 1465239358) ^ 0x4C62D4D9;
  LODWORD(STACK[0xA10]) = v45;
  LODWORD(STACK[0xA68]) = v45 + v38 - ((2 * (v45 + v38)) & 0xED2F3A78);
  v46 = v14 ^ 0x79EFDAF4;
  v47 = v15;
  v48 = v15 ^ 0x85374163;
  v49 = (v15 ^ 0x85374163) + (v14 ^ 0x79EFDAF4) - ((2 * ((v15 ^ 0x85374163) + (v14 ^ 0x79EFDAF4))) & 0xEBE3ADE0);
  v50 = STACK[0xAB0];
  v51 = (v10 ^ 0x18A1CB7 ^ v42 ^ LODWORD(STACK[0xAB0])) - (v42 ^ LODWORD(STACK[0xAB0]) ^ 0xE21DEBBD);
  v52 = STACK[0xAA8];
  LODWORD(STACK[0xA80]) = STACK[0xAA8];
  LODWORD(v31) = v52 ^ 0x4680A047;
  v53 = v11 ^ 0x5F6C851C;
  v54 = (v11 ^ 0x5F6C851C) & (v52 ^ 0x4680A047) ^ (v52 ^ 0x4680A047) & v22;
  v55 = v49 + 1978783472;
  v56 = (v14 ^ 0x79EFDAF4) + v13 - 507443460 + ((v49 + 1978783472) ^ 0x8A0E290F);
  v57 = v14;
  v58 = ((2 * v56) & 0x7BFD7FFE) + (v56 ^ 0xBDFEBFFF);
  v59 = LODWORD(STACK[0xAF8]) - 116385483 + (v55 ^ 0x8A0E290F) + 1;
  v60 = ((2 * v59) & 0xFFDFD7B4) + (v59 ^ 0xFFEFEBDA);
  v61 = (v14 ^ 0x86991778) - v60;
  v62 = (v61 - v58 - 1108431911) ^ (v58 + 1107378177) ^ 0xE4C8EC1B;
  LODWORD(STACK[0xA58]) = v43 + 454368704 - 2 * v44;
  v63 = v62 + (v55 ^ 0xE4D3A49D) + 1018350728 - ((2 * (v62 + (v55 ^ 0xE4D3A49D))) & 0x79659910);
  v64 = ((2 * (v60 + 1053734)) & 0x7FCF6FBC ^ 0x64C36A20) + ((v60 + 1053734) ^ 0xD8E0AEF);
  v65 = v64 + v58;
  v66 = v61 - v58 - (v64 + v58) - 306038382 - ((2 * (v61 - v58 - (v64 + v58) - 306038382) - 1675242424) & 0x93176738) - 1751212608;
  LODWORD(STACK[0xAA8]) = ((v10 ^ 0x2A1C4496 ^ v66) - (v66 ^ 0xC98BB39C)) ^ ((v10 ^ 0xDF253B82 ^ v63) - (v63 ^ 0x3CB2CC88)) ^ v51;
  v67 = (v62 ^ (v65 + 35227683)) - 317409934 - ((2 * (v62 ^ (v65 + 35227683))) & 0xDA296AE4);
  v68 = v54 ^ (a8 ^ 0x4680A047) & (v11 ^ 0x5F6C851C) ^ LODWORD(STACK[0xA20]);
  LODWORD(STACK[0xAE0]) = a8;
  v69 = *(STACK[0xB18] + 4 * (a8 ^ 0x4Du));
  HIDWORD(v20) = v69 ^ 0xD4;
  LODWORD(v20) = v69 ^ 0x425B7700;
  v70 = v20 >> 8;
  v71 = *(v18 + 4 * (((v33 ^ 0xF2) + 70) ^ 0xD1u));
  HIDWORD(v20) = v71 ^ 0x804E;
  LODWORD(v20) = v71 ^ 0x22540000;
  v72 = v20 >> 16;
  v73 = *(v18 + 4 * (BYTE2(a8) ^ 0xE7u));
  HIDWORD(v20) = v73 ^ 0x80AD0B;
  LODWORD(v20) = v73 ^ 0x88000000;
  v74 = *(v18 + 4 * (BYTE1(a8) ^ 0x45u)) ^ (v20 >> 24) ^ LODWORD(STACK[0xA38]);
  LODWORD(v18) = LODWORD(STACK[0xA08]) ^ v72;
  v75 = v74 ^ (v70 + 638097068 - ((2 * v70) & 0x4C112D58));
  v76 = ((v47 ^ 0x39B75A40 ^ v75) - v48) ^ ((v57 ^ 0xC56FC1D7 ^ v75) - v46);
  v77 = LODWORD(STACK[0xA30]) - 2146680830 + v68 + v28;
  v78 = LODWORD(STACK[0xA48]) & v31;
  v79 = v68 ^ ((v40 ^ 0xA4A302DC) - 2132250842 - 2 * ((v40 ^ 0xA4A302DC) & 0xE86F27 ^ v40 & 1)) ^ (LODWORD(STACK[0xA18]) + 861796220);
  v80 = v77 + (v18 ^ 0xF6A43967);
  v81 = LODWORD(STACK[0xA54]) & v22 ^ (a8 ^ 0x4680A047) & v31;
  LODWORD(v31) = (LODWORD(STACK[0xA40]) ^ LODWORD(STACK[0xA28]) ^ v18 ^ v75 ^ 0xA45C0245) - (LODWORD(STACK[0xA40]) ^ LODWORD(STACK[0xA28]) ^ v18 ^ 0x18DC1966);
  v82 = v79 ^ 0x80E86F26;
  v83 = (v79 ^ 0x80E86F26) & 0x7373905F ^ v79 & 0x19;
  v84 = STACK[0xA54] & v53 ^ v53 & v22 ^ v81 ^ STACK[0xA48] & (a8 ^ 0x4680A047) ^ v78;
  v85 = (1053734 - v61 + ((v61 - 1053734) ^ v84)) ^ ((v55 ^ 0xD152D42C ^ v84) - (v55 ^ 0xD152D42C));
  v86 = (v50 ^ 0x4680A047) + LODWORD(STACK[0xA10]);
  v87 = STACK[0xA98];
  v88 = STACK[0xB40];
  v89 = *(STACK[0xB40] + 4 * (BYTE2(LODWORD(STACK[0xA98])) ^ 0x12u));
  HIDWORD(v20) = v89 ^ 0x35CC26;
  LODWORD(v20) = v89 ^ 0x4C000000;
  v90 = v20 >> 24;
  v91 = v67 ^ 0xED14B572;
  v92 = (v67 ^ 0xED14B572) + v62 + 1018350728 - ((2 * ((v67 ^ 0xED14B572) + v62)) & 0x79659910);
  v93 = v64 + LODWORD(STACK[0xAF8]);
  LODWORD(v20) = __ROR4__(*(STACK[0xB40] + 4 * ((33 * ((*(STACK[0xBB8] + (((LODWORD(STACK[0xA98]) >> 5) & 7 | (8 * (STACK[0xA98] & 0x1F))) ^ 0x25)) - 106) ^ 0x15)) ^ 9u)), 8);
  v94 = v90 ^ *(STACK[0xB40] + 4 * ((((*(STACK[0xB90] + (((LODWORD(STACK[0xA98]) >> 1) & 0x80 | (LODWORD(STACK[0xA98]) >> 9)) ^ 0x3DLL)) - 50) ^ 0x15) + 70) ^ 0xDBu)) ^ ((v20 ^ 0xA62C044D) - 411852407 - ((2 * (v20 ^ 0xA62C044D)) & 0xCEE74312));
  LODWORD(v18) = HIBYTE(LODWORD(STACK[0xA98])) ^ 0xA8;
  LODWORD(STACK[0xA98]) = STACK[0xA98];
  v95 = STACK[0xB10];
  LODWORD(v18) = *(STACK[0xB10] + 4 * v18);
  HIDWORD(v20) = v18 ^ 0x2424B;
  LODWORD(v20) = v18 ^ 0x48A00000;
  LODWORD(v18) = v20 >> 20;
  HIDWORD(v20) = v18 ^ 0xE736;
  LODWORD(v20) = v18 ^ 0xE14B0000;
  v96 = STACK[0xBD0];
  v97 = *(STACK[0xB10] + 4 * (LODWORD(STACK[0xBD0]) ^ 0xC3u));
  v98 = ((v20 >> 16) - 294117375 - ((2 * (v20 >> 16)) & 0xDCF04002)) ^ (v94 - 294117375 - ((2 * v94) & 0xDCF04002));
  HIDWORD(v20) = v97 ^ 0x2424B;
  LODWORD(v20) = v97 ^ 0x48A00000;
  v99 = v20 >> 20;
  LODWORD(STACK[0xAB0]) = v76 ^ v31;
  HIDWORD(v20) = v99 ^ 0xFFFFFF9F;
  LODWORD(v20) = v99 ^ 0x413D6400;
  v100 = v20 >> 8;
  v101 = v96 ^ 0x2C903368u;
  LODWORD(STACK[0xBD0]) = v96;
  v102 = v101 - ((2 * v101) & 0x152C4223CLL) + 0x47CC9F22A962111ELL;
  LODWORD(v31) = *(v95 + 4 * (BYTE1(v102) ^ 0x5FLL));
  HIDWORD(v20) = v31 ^ 0x2424B;
  LODWORD(v20) = v31 ^ 0x48A00000;
  v103 = v20 >> 20;
  LODWORD(v31) = v82 - 210530234 - 2 * v83;
  v104 = *(v88 + 4 * (BYTE2(v96) ^ 0x24u));
  HIDWORD(v20) = v104 ^ 0x5ACF45;
  LODWORD(v20) = v104 ^ 0x8C000000;
  v105 = v100 ^ (v20 >> 24);
  HIDWORD(v20) = v102 >> 24;
  LODWORD(v20) = (HIDWORD(v20) ^ 0x56) << 24;
  LODWORD(v102) = *(STACK[0xBB0] + ((v20 >> 25) ^ 0x9FLL));
  v106 = v105 ^ v103;
  HIDWORD(v20) = v102;
  LODWORD(v20) = (v102 ^ 0x4E) << 24;
  v107 = *(v95 + 4 * ((((v20 >> 25) ^ 0xF2) + 70) ^ 0x74u));
  HIDWORD(v20) = v107 ^ 0x2424B;
  LODWORD(v20) = v107 ^ 0x48A00000;
  LODWORD(v102) = v20 >> 20;
  v108 = v80 - 294117375 - ((2 * v80) & 0xDCF04002);
  HIDWORD(v20) = v102 ^ 0x641B;
  LODWORD(v20) = v102 ^ 0x412D0000;
  v109 = v106 ^ (v20 >> 16);
  v110 = LODWORD(STACK[0xA60]) ^ 0x184992E3 ^ v41;
  v111 = LODWORD(STACK[0xA58]) ^ v110;
  v112 = v110 ^ v41 ^ 0xBEC6869A;
  v113 = (LODWORD(STACK[0xBC8]) ^ 0x67364124) - ((2 * (LODWORD(STACK[0xBC8]) ^ 0x67364124) + 2) & 0x1EF87AA8) - 1887683243;
  LODWORD(v102) = (LODWORD(STACK[0xAE8]) ^ 0xEE782001) - ((2 * (LODWORD(STACK[0xAE8]) ^ 0xEE782001) + 1699574738) & 0x6C2A4508) + 1757142125;
  v114 = v102 ^ 0x7ADF1BEC ^ ((v112 ^ v113 ^ 0x52D59FA6) + 907354756 - 2 * ((v112 ^ v113 ^ 0x52D59FA6) & 0x3615228D ^ (v112 ^ v113) & 9));
  v115 = LODWORD(STACK[0xA68]) - 157835972;
  v116 = v115 ^ v41 ^ 0xBEC6869A;
  LODWORD(v95) = (((v113 ^ 0xBF571F5A ^ v116) + 907354756 - ((2 * (v113 ^ 0xBF571F5A ^ v116)) & 0x6C2A4508)) ^ v102) - (v92 ^ v63 ^ 0x4D9B79BE);
  v117 = v86 + (v108 ^ 0x1187DFFE);
  v118 = (v116 ^ 0x7ADF1BEC ^ ((v102 ^ 0xEBBC8076 ^ v112) - ((2 * (v102 ^ 0xEBBC8076 ^ v112)) & 0x6056441C) + 808133134)) - (v92 ^ v63 ^ 0x8DB7F3F8 ^ ((v67 ^ v113 ^ 0x2FF3F198) - 2 * ((v67 ^ v113 ^ 0x2FF3F198) & 0x402C8A47 ^ (v67 ^ v113) & 1) - 1070822842));
  v119 = v85 ^ ((v84 ^ 0xF3739046 ^ v31) - (v31 ^ 0xF3739046));
  v120 = v66 ^ v67;
  v121 = v67 ^ 0xA08FCCCC;
  v122 = v95 ^ v120 ^ (v114 - (v67 ^ 0xA08FCCCC));
  v123 = (v112 ^ 0xA776B91E) + ((2 * v41) ^ 0xD4DB02D8);
  v124 = v118 ^ v111;
  LODWORD(v31) = (v111 ^ 0x7ADF1BEC) + (v41 ^ 0xFCBA2DD6) - v123;
  v125 = ((2 * (v121 + ((2 * v63) ^ 0xC67C1BE4))) & 0x1EA5BF6E) + ((v121 + ((2 * v63) ^ 0xC67C1BE4)) ^ 0xF52DFB7);
  LODWORD(v102) = STACK[0xAD0];
  LODWORD(STACK[0xAF8]) = STACK[0xAD0];
  v126 = LODWORD(STACK[0xB68]) ^ 0x2C903368;
  v127 = v102 ^ 0xEE782001;
  v128 = (v102 ^ 0xEE782001) & v101 ^ v126 & (v87 ^ 0xEE782001);
  LODWORD(v88) = v119 - v93;
  LODWORD(v102) = v124;
  LODWORD(STACK[0xA60]) = v124;
  v124 ^= 0x7ADF1BECu;
  LODWORD(STACK[0xA68]) = v122;
  v129 = v128 ^ v124 & (v87 ^ 0xEE782001) ^ v122 ^ (v122 ^ 0x69047F50) & v101;
  v130 = v127 & (v87 ^ 0xEE782001);
  v131 = (v122 ^ 0x69047F50) & (v87 ^ 0xEE782001);
  v132 = v88 + v91;
  LODWORD(v88) = v130 ^ v126 & v101 ^ v102 ^ v124 & v101 ^ v131;
  LODWORD(v101) = (v41 ^ v31 ^ 0xAD90A2F1 ^ v109) + 1142954709 - ((2 * (v41 ^ v31 ^ 0xAD90A2F1 ^ v109)) & 0x884035AA);
  v133 = ((2 * (v117 + 1)) & 0xD3F7EE7C) + ((v117 + 1) ^ 0x69FBF73E);
  v134 = (v63 ^ 0xF5E9A148) + (v120 ^ 0x69047F50) - v125;
  LODWORD(STACK[0xA58]) = v98;
  LODWORD(STACK[0xAD0]) = (-257093002 - v134 + (v98 ^ (v134 + 257089463) ^ 0xAB066FBF) + 3539) ^ ((v63 ^ 0xEE8AA6C7 ^ v98) - (v63 ^ 0x458CC978)) ^ ((v98 ^ 0xEF26756A ^ v101) - (v101 ^ 0x44201AD5));
  v135 = ((2 * v41) & 0xD6FF7F72 ^ 0x94AD7F00) + (v41 ^ 0xA5A9007D);
  v136 = (v41 ^ 0xB320BA19) + 1194009208 + (v115 ^ 0xE48025F8);
  v137 = v31 + 1194009208;
  v138 = ((2 * (v136 - (v31 + 1194009208) + 1)) & 0xB7F9FF7E) + ((v136 - (v31 + 1194009208) + 1) ^ 0xDBFCFFBF);
  LODWORD(v31) = v132 + LODWORD(STACK[0xAB0]) - LODWORD(STACK[0xAA8]);
  v139 = (v63 ^ 0xBA733687) - 43516106 + (v92 ^ 0x2EA5744C) - (v134 + 213576896) + 3540;
  v140 = ((2 * v139) & 0x97DFED7A) + (v139 ^ 0x4BEFF6BD);
  v141 = v123 + v138;
  v142 = v123 + v138 + 1467443952;
  LODWORD(STACK[0xA54]) = v135;
  v143 = v135 + v142;
  LODWORD(v101) = (v137 - ((2 * v137 - 22918344) & 0xDCF04002) - 305576547) ^ v88 ^ 0x94A73BED ^ (v143 - 519318120);
  LODWORD(v101) = (v129 ^ 0x1725FEC6 ^ (v101 + 2116125078 - ((2 * v101) & 0xFC43032C))) - ((v101 + 2116125078 - ((2 * v101) & 0xFC43032C)) ^ 0x7E218196);
  v144 = v63 ^ 0x4785335A;
  v145 = v125 + v140;
  v146 = v125 + v140 - 202355366;
  v147 = v144 + v146;
  v129 ^= 0x69047F50u;
  v148 = v129 ^ (v134 + 1439639499);
  v149 = v129 ^ (v147 - 1328751566);
  v147 -= 1085183406;
  v150 = (v149 - v147 + 243568160) ^ (v148 - (v134 + 213576896) - 1226062603) ^ v101;
  v151 = v138 - v137;
  v152 = v143 + 1996322400 + v137;
  v151 += 563949931;
  v153 = ((v143 + 1996322400 - ((2 * (v143 + 1996322400) + 1488093018) & 0xDCF04002) - 1697554514) ^ 0xEE782001) + v151;
  v154 = v153 - 1416954801 - ((2 * v153) & 0x5715F89E);
  v155 = v141 + 1596248387;
  v156 = ((v141 + 1596248387) ^ v151) - ((2 * ((v141 + 1596248387) ^ v151)) & 0x44288022);
  LODWORD(v101) = (v154 ^ 0xAB8AFC4F) + v155;
  v157 = v140 - (v134 + 280850145);
  v158 = v147 + v134 + 280850145;
  v159 = v147 + v157 - ((2 * (v147 + v157) + 123728616) & 0x588B52A) + 578049033;
  v160 = ((2 * ((v159 ^ 0x82C45A95) + v145 - 539034994)) & 0xFE7F3E7E) + (((v159 ^ 0x82C45A95) + v145 - 539034994) ^ 0x7F3F9F3F);
  LODWORD(v101) = ((2 * v101) & 0x2F9B7FFE) + (v101 ^ 0x97CDBFFF);
  v161 = LODWORD(STACK[0xAC0]) ^ (v152 + 1774537720) ^ 0x871ACF27 ^ v154;
  v156 += 571752465;
  v162 = ((LODWORD(STACK[0xAB8]) ^ 0x6CBC7A94 ^ v159) - (v159 ^ 0x82C45A95)) ^ ((LODWORD(STACK[0xAB8]) ^ 0xEE782001 ^ (v158 + 921891310)) - v158 - 921891310) ^ ((LODWORD(STACK[0xAB8]) ^ 0xBFBB2138 ^ (v161 + 1371734329 - ((2 * v161) & 0xA3860272))) - ((v161 + 1371734329 - ((2 * v161) & 0xA3860272)) ^ 0x51C30139));
  v163 = (v156 ^ 0xDDEBBFEE) + v152 - ((2 * ((v156 ^ 0xDDEBBFEE) + v152) + 1401591794) & 0x5715F89E);
  v164 = ((2 * v154) & 0xBF4F7FAE ^ 0x74452A6) + (v154 ^ 0x7C0596AC);
  v165 = ((v145 - 539034994) ^ (v157 + 1810474783)) - ((2 * ((v145 - 539034994) ^ (v157 + 1810474783))) & 0xEC0375EA) + 1979824885;
  v166 = (v165 ^ 0x89FE450A) + v158;
  v167 = v31 + 1188535977;
  LODWORD(v31) = (LODWORD(STACK[0xAC0]) ^ 0x2C903368) + v31 + 1188535977 + 1748123649 + v101;
  v168 = v31 + 2037880245 - ((2 * v31) & 0xF2EF2B6A);
  LODWORD(v31) = v166 - ((2 * v166 + 98952158) & 0x588B52A);
  v169 = v133 + v160 - v162 - 1948097763 - ((2 * (v133 + v160 - v162 + 381970819)) & 0xEA3BF334);
  v170 = v101 - ((2 * v101 + 2039341814) & 0xDCF04002) + 725553532;
  LODWORD(v101) = v154 ^ v156;
  v171 = v154 ^ v156 ^ 0xA77EDAE9 ^ ((v170 ^ v168 ^ 0x970FB5B4) - ((2 * (v170 ^ v168 ^ 0x970FB5B4)) & 0x349D43E0) - 1706122768);
  v172 = v159 ^ v165;
  v173 = (v163 + 357582920) ^ v154;
  LODWORD(STACK[0xAA8]) = v173 ^ 0x7FA5944C ^ ((v159 ^ v165 ^ 0x4C281829 ^ (((2 * ((v160 + 1431638587) ^ 0x751DF99A ^ v169)) & 0xE77981E2) - ((v160 + 1431638587) ^ 0x751DF99A ^ v169) + 205733646)) - v171);
  v174 = ((2 * ((v173 ^ 0x3925340B) - (v101 ^ 0xC2CF84E6))) & 0xEDBFAC68) + (((v173 ^ 0x3925340B) - (v101 ^ 0xC2CF84E6)) ^ 0xF6DFD634);
  v175 = v164 - 1604829143 + (v170 ^ 0xEE782001) - ((2 * (v164 - 1604829143 + (v170 ^ 0xEE782001))) & 0xF85C40CC) - 64085914;
  v176 = ((2 * v175) & 0x5F7CDB32 ^ 0x5354C910) + (v175 ^ 0x46559935);
  v177 = (v31 - 1179169660) ^ v159;
  LODWORD(v31) = ((2 * v159) & 0x3BDCAEFA ^ 0x11D80E42) + (v159 ^ 0x9702D8DC);
  v178 = (LODWORD(STACK[0x9B0]) & (2 * (v31 - 1218004290 + v160)) ^ 0x98B0914) + ((v31 - 1218004290 + v160) ^ 0xF1307171);
  v179 = ((2 * ((v177 ^ 0x3925340B) - (v172 ^ 0xBF94D8D8))) & 0xF9F53F3E) + (((v177 ^ 0x3925340B) - (v172 ^ 0xBF94D8D8)) ^ 0xFCFA9F9F);
  v180 = v31 - v179;
  LODWORD(v31) = v179 + v178 - ((2 * (v179 + v178) + 1008694604) & 0x885B3BD6);
  LODWORD(v95) = STACK[0xAC8];
  v181 = LODWORD(STACK[0xAC8]) - (STACK[0xB60] & 0xDA);
  v182 = 4 * ((v181 ^ 0x7FFEDCFABC2C089) + ((2 * (v181 ^ 0x54F95F6D)) & 0xFE773FC8)) - 0x1FFFB73FFCEE7F90;
  v183 = *(&STACK[0xFE90] + v182);
  LODWORD(STACK[0xAE8]) = (v183 ^ 0xEE782001) - 1143904744 - ((2 * (v183 ^ 0xEE782001) - 1699574738) & 0xDCF04002);
  v184 = (*(*(&off_278E1E490 + SLODWORD(STACK[0x9E0])) + (v181 ^ 0x54F95F7D)) ^ 0xFEDCA76E) - v123 + (v109 ^ 0x1EB018E8) + v146 + (((v183 ^ 0x1187DFFE) + v133 - ((2 * ((v183 ^ 0x1187DFFE) + v133) + 738726278) & 0xDCF04002) - 2072237884) ^ 0xEE782001) - v150 + 1982812130;
  v185 = v184 + 1562804529 - ((2 * v184) & 0xBA4D0262);
  v186 = *(&off_278E1E490 + SLODWORD(STACK[0x9D8])) + 4 * (v181 ^ 0x54F95F58);
  v187 = *(&STACK[0x3E50] + v182);
  LODWORD(STACK[0xBC8]) = v187;
  v188 = (v187 ^ 0x98C9BEDB) - v125 + (*(v186 - 3) ^ 0x5F2C43BA) + v167 + v142 + (v88 ^ 0x7ADF1BEC) + 149192495 + LODWORD(STACK[0xAD0]);
  LODWORD(v186) = v188 - 639699518 - ((2 * v188) & 0xB3BDEB84);
  v189 = (v101 ^ 0x8BEDB422) - (v176 + v164 - v174) - 1885688882 - ((2 * ((v101 ^ 0x8BEDB422) - (v176 + v164 - v174) + 411457340)) & 0xEE28A924);
  v190 = v180 + v178;
  v191 = (v172 ^ 0xF6B6E81C) - (v180 + v178);
  v192 = ((v185 ^ 0x15C5D4CA ^ ((v186 ^ 0x25F0D5A4 ^ v175) + 1562804529 - ((2 * (v186 ^ 0x25F0D5A4 ^ v175)) & 0xBA4D0262))) - v178 - 453663301) ^ (v31 - 499296111) ^ (2048303719 - v191 + (((v186 ^ 0xAECAA150 ^ v189) + 1562804529 - ((2 * (v186 ^ 0xAECAA150 ^ v189)) & 0xBA4D0262)) ^ v185));
  v193 = ((((v185 ^ 0xA108A157 ^ v175) + 1997821074 - ((2 * (v185 ^ 0xA108A157 ^ v175)) & 0xEE28A924)) ^ 0x15C5D4CA ^ v189) - (((v186 ^ 0xD9DEF5C2 ^ (v178 + 453663301)) - 294117375 - ((2 * (v186 ^ 0xD9DEF5C2 ^ (v178 + 453663301))) & 0xDCF04002)) ^ (v191 - 2048303719) ^ 0xEE782001)) ^ (v176 + v174 - ((2 * (v176 + v174) - 1295812506) & 0xB8332CA6) - 1250209146);
  v194 = v178 - v191 - 1793000276;
  v195 = v190 - ((2 * v190 + 590385630) & 0x3DF32CA4) - 795746495;
  v196 = ((2 * (v195 ^ v194)) & 0x5FFFDDDE ^ 0x1DF30C84) + (v195 ^ v194 ^ 0xB10678BD);
  LODWORD(v31) = *(STACK[0xB38] + 4 * (v192 ^ 0xEEu)) + 721702082;
  HIDWORD(v20) = v31 ^ 0xFFFFFFE1;
  LODWORD(v20) = v31 ^ 0x5D47A700;
  LODWORD(v31) = v20 >> 8;
  v197 = *(STACK[0xB08] + 4 * (HIBYTE(v192) ^ 0x2D));
  HIDWORD(v20) = v197 ^ 0xF032;
  LODWORD(v20) = v197 ^ 0xF5A70000;
  LODWORD(v101) = v20 >> 16;
  v198 = *(STACK[0xBC0] + 4 * (v193 ^ 0x2Cu));
  HIDWORD(v20) = v198 ^ 0x12337B;
  LODWORD(v20) = v198 ^ 0xB5C00000;
  v199 = v20 >> 21;
  HIDWORD(v20) = v199 ^ 0xE2;
  LODWORD(v20) = v199 ^ 0x8DD42C00;
  v200 = v20 >> 8;
  HIDWORD(v20) = *(STACK[0xBB0] + (((v192 >> 1) & 0x80 | (v192 >> 9)) ^ 0x51));
  LODWORD(v20) = (HIDWORD(v20) ^ 0x4E) << 24;
  LOBYTE(v172) = v20 >> 25;
  v201 = *(STACK[0xBC0] + 4 * (BYTE1(v193) ^ 0xA8u));
  HIDWORD(v20) = v201 ^ 0x12337B;
  LODWORD(v20) = v201 ^ 0xB5C00000;
  v202 = v20 >> 21;
  LODWORD(v186) = *(STACK[0xBC0] + 4 * (BYTE2(v193) ^ 0x5Eu));
  HIDWORD(v20) = v186 ^ 0x12337B;
  LODWORD(v20) = v186 ^ 0xB5C00000;
  LODWORD(v186) = v20 >> 21;
  v203 = *(STACK[0xB38] + 4 * (BYTE2(v192) ^ 0x23u)) + 721702082;
  HIDWORD(v20) = v186 ^ 0x927EFC;
  LODWORD(v20) = v186 ^ 0xEA000000;
  LODWORD(v186) = v20 >> 24;
  v204 = *(STACK[0xBC0] + 4 * ((((*(STACK[0xB90] + (((v193 >> 17) & 0x80 | (v193 >> 25)) ^ 0x9BLL)) - 50) ^ 0x15) + 70) ^ 9u));
  HIDWORD(v20) = v204 ^ 0x12337B;
  LODWORD(v20) = v204 ^ 0xB5C00000;
  v205 = v20 >> 21;
  HIDWORD(v20) = v205 ^ 0xDA5D;
  LODWORD(v20) = v205 ^ 0x16250000;
  LODWORD(v31) = v31 ^ v101 ^ (*(STACK[0xB38] + 4 * ((-71 - (v172 ^ 0xF2)) ^ 0x31u)) + 721702082) ^ ((27 * ((*(STACK[0xB98] + (((v203 >> 20) & 0xF0 | (v203 >> 28)) ^ 0xC7)) - 10) ^ 0x10)) | (v203 << 8));
  LODWORD(STACK[0xAB0]) = STACK[0xAE0];
  LODWORD(STACK[0xAC0]) = STACK[0xBD0];
  LODWORD(STACK[0xBD0]) = STACK[0xB68];
  v206 = LODWORD(STACK[0xA60]) ^ 0x564F2884;
  LODWORD(STACK[0xAB8]) = STACK[0xA98];
  LODWORD(STACK[0xA98]) = STACK[0xAF8];
  LODWORD(STACK[0xAD0]) = LODWORD(STACK[0xA68]) ^ 0x877C5F51;
  LODWORD(STACK[0xAF8]) = v196 + 1458567132;
  v207 = STACK[0xA90];
  *(&STACK[0x8610] + v182) = v31 ^ 0x73942C58;
  *(&STACK[0xCF80] + v182) = v202 ^ 0x9F5FA405 ^ v200 ^ v186 ^ (v20 >> 16);
  v208 = *(STACK[0xBD8] + 8 * ((31952 * (v207 == 0)) ^ LODWORD(STACK[0x9F0])));
  LODWORD(STACK[0xAC8]) = v95 - 1;
  LODWORD(STACK[0xB60]) -= 2;
  LODWORD(STACK[0xB68]) = v206;
  return v208();
}

uint64_t sub_244BA1ABC(uint64_t a1, uint64_t a2, int a3, int a4)
{
  LODWORD(STACK[0xB60]) = a3;
  LODWORD(STACK[0xAE0]) = v6;
  LODWORD(STACK[0xAB8]) = v9;
  LODWORD(STACK[0xBC8]) = v8;
  LODWORD(STACK[0x794]) = v7;
  v10 = STACK[0x98C];
  v11 = LODWORD(STACK[0x98C]) - 14622;
  LODWORD(STACK[0xBC0]) = v11 | 0xAA4;
  v12 = LODWORD(STACK[0xCF80]) ^ v4;
  v13 = STACK[0x900];
  if (STACK[0x900] >= 0x40)
  {
    v12 = 0;
  }

  v14 = (((v10 - 14622) | 0xAA4) ^ 0xEE780AB4 ^ LODWORD(STACK[0xE730])) + v12;
  v15 = LODWORD(STACK[0xCF84]) ^ v4;
  if (STACK[0x900] >= 0x40)
  {
    v15 = 0;
  }

  v16 = v14 + v4 - ((2 * v14) & 0xDCF04002);
  v17 = (v15 | LODWORD(STACK[0xE734]) ^ v4) + v4 - ((2 * (v15 | LODWORD(STACK[0xE734]) ^ v4)) & 0xDCF04002);
  v18 = STACK[0x861C];
  v19 = LODWORD(STACK[0x8618]) ^ v4;
  if (STACK[0x900] >= 0x40)
  {
    v19 = 0;
  }

  v20 = (v19 | LODWORD(STACK[0xE0E8]) ^ 0xEE782001) - 294117375 - ((2 * (v19 | LODWORD(STACK[0xE0E8]) ^ 0xEE782001)) & 0xDCF04002);
  v21 = STACK[0x8614];
  v22 = LODWORD(STACK[0x8610]) ^ 0xEE782001;
  if (v13 >= 0x40)
  {
    v22 = 0;
  }

  LODWORD(STACK[0xE0E0]) ^= v22;
  LODWORD(STACK[0xE730]) = v16;
  v23 = v21 ^ 0xEE782001;
  if (v13 >= 0x40)
  {
    v23 = 0;
  }

  LODWORD(STACK[0xE0E4]) ^= v23;
  LODWORD(STACK[0xE734]) = v17;
  LODWORD(STACK[0xE0E8]) = v20;
  v24 = LODWORD(STACK[0xCF88]) ^ 0xEE782001;
  if (v13 >= 0x40)
  {
    v24 = 0;
  }

  LODWORD(STACK[0xE738]) ^= v24;
  v25 = v18 ^ 0xEE782001;
  if (v13 >= 0x40)
  {
    v25 = 0;
  }

  LODWORD(STACK[0xE0EC]) ^= v25;
  v26 = LODWORD(STACK[0xCF8C]) ^ 0xEE782001;
  if (v13 >= 0x40)
  {
    v26 = 0;
  }

  LODWORD(STACK[0xE73C]) = v26 + (LODWORD(STACK[0xE73C]) ^ 0xEE782001) - 294117375 - ((2 * (v26 + (LODWORD(STACK[0xE73C]) ^ 0xEE782001))) & 0xDCF04002);
  v27 = STACK[0x8624];
  v28 = LODWORD(STACK[0x8620]) ^ 0xEE782001;
  if (v13 >= 0x40)
  {
    v28 = 0;
  }

  LODWORD(STACK[0xE0F0]) = (v28 | LODWORD(STACK[0xE0F0]) ^ 0xEE782001) - 294117375 - ((2 * (v28 | LODWORD(STACK[0xE0F0]) ^ 0xEE782001)) & 0xDCF04002);
  v29 = LODWORD(STACK[0xCF90]) ^ 0xEE782001;
  if (v13 >= 0x40)
  {
    v29 = 0;
  }

  LODWORD(STACK[0xE740]) = (v29 | LODWORD(STACK[0xE740]) ^ 0xEE782001) - 294117375 - ((2 * (v29 | LODWORD(STACK[0xE740]) ^ 0xEE782001)) & 0xDCF04002);
  v30 = v27 ^ 0xEE782001;
  if (v13 >= 0x40)
  {
    v30 = 0;
  }

  LODWORD(STACK[0xE0F4]) = (v30 | LODWORD(STACK[0xE0F4]) ^ 0xEE782001) - 294117375 - ((2 * (v30 | LODWORD(STACK[0xE0F4]) ^ 0xEE782001)) & 0xDCF04002);
  v31 = LODWORD(STACK[0xCF94]) ^ 0xEE782001;
  if (v13 >= 0x40)
  {
    v31 = 0;
  }

  LODWORD(STACK[0xE744]) = v31 + (LODWORD(STACK[0xE744]) ^ 0xEE782001) - 294117375 - ((2 * (v31 + (LODWORD(STACK[0xE744]) ^ 0xEE782001))) & 0xDCF04002);
  v32 = STACK[0x862C];
  v33 = LODWORD(STACK[0x8628]) ^ 0xEE782001;
  if (v13 >= 0x40)
  {
    v33 = 0;
  }

  LODWORD(STACK[0xE0F8]) = v33 + (LODWORD(STACK[0xE0F8]) ^ 0xEE782001) - 294117375 - ((2 * (v33 + (LODWORD(STACK[0xE0F8]) ^ 0xEE782001))) & 0xDCF04002);
  v34 = LODWORD(STACK[0xCF98]) ^ 0xEE782001;
  if (v13 >= 0x40)
  {
    v34 = 0;
  }

  LODWORD(STACK[0xE748]) = (v34 | LODWORD(STACK[0xE748]) ^ 0xEE782001) - 294117375 - ((2 * (v34 | LODWORD(STACK[0xE748]) ^ 0xEE782001)) & 0xDCF04002);
  v35 = v32 ^ 0xEE782001;
  if (v13 >= 0x40)
  {
    v35 = 0;
  }

  LODWORD(STACK[0xE0FC]) = v35 + (LODWORD(STACK[0xE0FC]) ^ 0xEE782001) - 294117375 - ((2 * (v35 + (LODWORD(STACK[0xE0FC]) ^ 0xEE782001))) & 0xDCF04002);
  v36 = LODWORD(STACK[0xCF9C]) ^ 0xEE782001;
  if (v13 >= 0x40)
  {
    v36 = 0;
  }

  LODWORD(STACK[0xE74C]) = (LODWORD(STACK[0xE74C]) ^ 0xEE782001 | v36) - 294117375 - ((2 * (LODWORD(STACK[0xE74C]) ^ 0xEE782001 | v36)) & 0xDCF04002);
  v37 = STACK[0x8634];
  v38 = LODWORD(STACK[0x8630]) ^ 0xEE782001;
  if (v13 >= 0x40)
  {
    v38 = 0;
  }

  LODWORD(STACK[0xE100]) ^= v38;
  v39 = LODWORD(STACK[0xCFA0]) ^ 0xEE782001;
  if (v13 >= 0x40)
  {
    v39 = 0;
  }

  LODWORD(STACK[0xE750]) = (v39 | LODWORD(STACK[0xE750]) ^ 0xEE782001) - 294117375 - ((2 * (v39 | LODWORD(STACK[0xE750]) ^ 0xEE782001)) & 0xDCF04002);
  v40 = v37 ^ 0xEE782001;
  if (v13 >= 0x40)
  {
    v40 = 0;
  }

  LODWORD(STACK[0xE104]) = v40 + (LODWORD(STACK[0xE104]) ^ 0xEE782001) - 294117375 - ((2 * (v40 + (LODWORD(STACK[0xE104]) ^ 0xEE782001))) & 0xDCF04002);
  v41 = LODWORD(STACK[0xCFA4]) ^ 0xEE782001;
  if (v13 >= 0x40)
  {
    v41 = 0;
  }

  LODWORD(STACK[0xE754]) ^= v41;
  v42 = STACK[0x863C];
  v43 = LODWORD(STACK[0x8638]) ^ 0xEE782001;
  if (v13 >= 0x40)
  {
    v43 = 0;
  }

  LODWORD(STACK[0xE108]) = (LODWORD(STACK[0xE108]) ^ 0xEE782001) + v43 - 294117375 - ((2 * ((LODWORD(STACK[0xE108]) ^ 0xEE782001) + v43)) & 0xDCF04002);
  v44 = LODWORD(STACK[0xCFA8]) ^ 0xEE782001;
  if (v13 >= 0x40)
  {
    v44 = 0;
  }

  LODWORD(STACK[0xE758]) = v44 + (LODWORD(STACK[0xE758]) ^ 0xEE782001) - 294117375 - ((2 * (v44 + (LODWORD(STACK[0xE758]) ^ 0xEE782001))) & 0xDCF04002);
  v45 = v42 ^ 0xEE782001;
  if (v13 >= 0x40)
  {
    v45 = 0;
  }

  LODWORD(STACK[0xE10C]) = v45 + (LODWORD(STACK[0xE10C]) ^ 0xEE782001) - 294117375 - ((2 * (v45 + (LODWORD(STACK[0xE10C]) ^ 0xEE782001))) & 0xDCF04002);
  v46 = LODWORD(STACK[0xCFAC]) ^ 0xEE782001;
  if (v13 >= 0x40)
  {
    v46 = 0;
  }

  LODWORD(STACK[0xE75C]) = (LODWORD(STACK[0xE75C]) ^ 0xEE782001) + v46 - 294117375 - ((2 * ((LODWORD(STACK[0xE75C]) ^ 0xEE782001) + v46)) & 0xDCF04002);
  v47 = STACK[0x8644];
  v48 = LODWORD(STACK[0x8640]) ^ 0xEE782001;
  if (v13 >= 0x40)
  {
    v48 = 0;
  }

  LODWORD(STACK[0xE110]) = (v48 | LODWORD(STACK[0xE110]) ^ 0xEE782001) - 294117375 - ((2 * (v48 | LODWORD(STACK[0xE110]) ^ 0xEE782001)) & 0xDCF04002);
  v49 = LODWORD(STACK[0xCFB0]) ^ 0xEE782001;
  if (v13 >= 0x40)
  {
    v49 = 0;
  }

  LODWORD(STACK[0xE760]) = (LODWORD(STACK[0xE760]) ^ 0xEE782001 | v49) - 294117375 - ((2 * (LODWORD(STACK[0xE760]) ^ 0xEE782001 | v49)) & 0xDCF04002);
  v50 = v47 ^ 0xEE782001;
  if (v13 >= 0x40)
  {
    v50 = 0;
  }

  LODWORD(STACK[0xE114]) ^= v50;
  v51 = LODWORD(STACK[0xCFB4]) ^ 0xEE782001;
  if (v13 >= 0x40)
  {
    v51 = 0;
  }

  LODWORD(STACK[0xE764]) = (v51 | LODWORD(STACK[0xE764]) ^ 0xEE782001) - 294117375 - ((2 * (v51 | LODWORD(STACK[0xE764]) ^ 0xEE782001)) & 0xDCF04002);
  v52 = STACK[0x864C];
  v53 = LODWORD(STACK[0x8648]) ^ 0xEE782001;
  if (v13 >= 0x40)
  {
    v53 = 0;
  }

  LODWORD(STACK[0xE118]) = (LODWORD(STACK[0xE118]) ^ 0xEE782001 | v53) - 294117375 - ((2 * (LODWORD(STACK[0xE118]) ^ 0xEE782001 | v53)) & 0xDCF04002);
  v54 = LODWORD(STACK[0xCFB8]) ^ 0xEE782001;
  if (v13 >= 0x40)
  {
    v54 = 0;
  }

  LODWORD(STACK[0xE768]) = (LODWORD(STACK[0xE768]) ^ 0xEE782001) + v54 - 294117375 - ((2 * ((LODWORD(STACK[0xE768]) ^ 0xEE782001) + v54)) & 0xDCF04002);
  v55 = v52 ^ 0xEE782001;
  if (v13 >= 0x40)
  {
    v55 = 0;
  }

  LODWORD(STACK[0xE11C]) ^= v55;
  LODWORD(STACK[0x944]) = LODWORD(STACK[0x8B0]) + (STACK[0x944] & 0xB6FF7BB6);
  LODWORD(STACK[0xBD0]) = v11 ^ 0x14C9;
  v56 = ((v11 ^ 0x14C9) - 553672162) & STACK[0x8BC];
  v57 = LODWORD(STACK[0xCFBC]) ^ 0xEE782001;
  if (v13 >= 0x40)
  {
    v57 = 0;
  }

  LODWORD(STACK[0x928]) += v56;
  LODWORD(STACK[0x93C]) += LODWORD(STACK[0x9C8]);
  LODWORD(STACK[0x920]) = LODWORD(STACK[0x8CC]) + (STACK[0x920] & 0xF5FFFFFE);
  LODWORD(STACK[0x930]) = LODWORD(STACK[0x8D8]) - LODWORD(STACK[0x950]);
  LODWORD(STACK[0x940]) = LODWORD(STACK[0x8D4]) - LODWORD(STACK[0x940]);
  LODWORD(STACK[0x950]) = LODWORD(STACK[0x8D0]) - LODWORD(STACK[0x8E4]);
  LODWORD(STACK[0x960]) += LODWORD(STACK[0x9D0]);
  LODWORD(STACK[0x948]) = LODWORD(STACK[0x8E0]) - LODWORD(STACK[0x948]);
  LODWORD(STACK[0x970]) += LODWORD(STACK[0x958]);
  LODWORD(STACK[0x958]) = LODWORD(STACK[0x8F4]) - LODWORD(STACK[0x968]);
  LODWORD(STACK[0x968]) = LODWORD(STACK[0x8E8]) - LODWORD(STACK[0x8F8]);
  LODWORD(STACK[0xE76C]) = (LODWORD(STACK[0xE76C]) ^ 0xEE782001 | v57) - 294117375 - ((2 * (LODWORD(STACK[0xE76C]) ^ 0xEE782001 | v57)) & 0xDCF04002);
  v58 = STACK[0x908] - 1647651553;
  LODWORD(STACK[0xB68]) = v5 - 1805622889 - ((2 * v5 + 1271956268) & 0xDCF04002);
  LODWORD(STACK[0xAB0]) = ((a4 - 831424541) ^ 0x7ADF1BEC) - 90769165 - ((2 * ((a4 - 831424541) ^ 0x7ADF1BEC)) & 0xF52DF1E6);
  return (*(STACK[0xBD8] + 8 * (v10 ^ ((v58 < 0xC0) | (16 * (v58 < 0xC0))))))();
}

uint64_t sub_244BA21CC(int a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8)
{
  LODWORD(STACK[0x684]) = LODWORD(STACK[0x858]) - LODWORD(STACK[0x864]);
  LODWORD(STACK[0xA80]) = v15 ^ 0x457E4FBE;
  LODWORD(STACK[0x534]) = v11 + 1358125818;
  v19 = (a8 ^ v17) - ((2 * (a8 ^ v17) + 143577310) & 0xCA09DCB4) - 380873015;
  v20 = (a5 ^ 0x199021D8) + 2070227205 - ((2 * (a5 ^ 0x199021D8) + 1072105506) & 0xB6E365F0);
  v21 = LODWORD(STACK[0x928]) - ((2 * LODWORD(STACK[0x928]) + 346742164) & 0x4225B4FE) + 1801996617;
  LODWORD(STACK[0xB58]) = LODWORD(STACK[0x920]) - ((2 * LODWORD(STACK[0x920]) + 2102650544) & 0xFB03C9FE) + 1009506391;
  LODWORD(STACK[0x98C]) = a7;
  LODWORD(STACK[0xB38]) = a7 - ((2 * a7 + 314564278) & 0xBE0A5A78) - 396026729;
  v22 = STACK[0x93C];
  v23 = (LODWORD(STACK[0x930]) ^ 0xA6BB147B) + 118738311 - ((2 * (LODWORD(STACK[0x930]) ^ 0xA6BB147B) + 2) & 0xE279B0E) + 1;
  v24 = STACK[0xB60];
  v25 = 116385483 - v14 + (v19 ^ 0x6C73CCB8 ^ ((v23 ^ 0x8518213E ^ LODWORD(STACK[0xB60])) - ((2 * (v23 ^ 0x8518213E ^ LODWORD(STACK[0xB60]))) & 0xCA09DCB4) + 1694821978));
  v26 = STACK[0xAB0];
  v27 = STACK[0xAE0];
  LODWORD(STACK[0xB68]) = 507443461 - LODWORD(STACK[0xAE0]) + (v19 ^ v12 ^ ((LODWORD(STACK[0xAB0]) ^ v23 ^ 0xFD853574) - 2 * ((LODWORD(STACK[0xAB0]) ^ v23 ^ 0xFD853574) & 0x6504EE5B ^ (LODWORD(STACK[0xAB0]) ^ v23) & 1) + 1694821978));
  v28 = a1 + 1141470960;
  LODWORD(STACK[0xAC8]) = ((v19 ^ v24 ^ 0xB352D44 ^ v26) - (v23 ^ (v8 + 1342181649) ^ (a1 + 1141470960) ^ 0x713CD87)) ^ v16;
  v29 = ((2 * ((v9 ^ 0x9233A70B) + v13 + a4)) & 0x3FEFFB3E) + (((v9 ^ 0x9233A70B) + v13 + a4) ^ 0x9FF7FD9F);
  v30 = ((2 * (v26 ^ v16)) & 0xB3EE7F7C ^ 0x9062063C) + (v26 ^ v16 ^ 0x37C6FCA0);
  v31 = v30 - 1509375934 + ((a6 - ((2 * a6 + 1142302640) & 0xDCF04002) - 1870449703) ^ v24);
  v32 = v31 + v17 - ((2 * v31) & 0xDCF04002);
  LODWORD(STACK[0xA98]) = v32;
  v33 = v10 - v29 - ((2 * (v10 - v29) + 1072692030) & 0xDA959690) - 1925003033;
  LODWORD(STACK[0xAB0]) = v33;
  v34 = (v33 ^ (v29 + 1611137633) ^ 0xED4ACB48) - 2 * ((v33 ^ (v29 + 1611137633) ^ 0xED4ACB48) & 0x47E14C3B ^ (v33 ^ (v29 + 1611137633)) & 0x11) - 941536214;
  v35 = (v34 ^ 0xC7E14C2A) + v30 - 1509375934 - ((2 * ((v34 ^ 0xC7E14C2A) + v30 - 1509375934)) & 0x84C478C6);
  v36 = (v8 + 1342181649) ^ v18 ^ LODWORD(STACK[0xAB8]);
  v37 = STACK[0xBC8];
  v38 = ((2 * (LODWORD(STACK[0xBC8]) ^ v28)) & 0xFDCFB7B2 ^ 0xF1CFB5A0) + (LODWORD(STACK[0xBC8]) ^ v28 ^ 0x8708012D);
  LODWORD(STACK[0xAF8]) = v25 ^ LODWORD(STACK[0xBC8]);
  v39 = v27 + v14 - 623828944;
  v40 = (v37 ^ 0x79EFDAF4) - (v27 + v14) + 623828944 - ((2 * ((v37 ^ 0x79EFDAF4) - (v27 + v14) + 623828944)) & 0x8B874C44) - 977033694;
  v41 = (v39 ^ 0xC5C3A622 ^ v40) - ((2 * (v39 ^ 0xC5C3A622 ^ v40)) & 0x5E46CEB0) + 790849368;
  v42 = ((2 * ((v41 ^ 0x2F236758) + v38 + 18359335)) & 0xFBB0F7DE) + (((v41 ^ 0x2F236758) + v38 + 18359335) ^ 0xFDD87BEF);
  v43 = 642586313 - LODWORD(STACK[0x944]) - ((2043801706 - 2 * LODWORD(STACK[0x944])) & 0x52C83D28);
  v44 = v34 ^ LODWORD(STACK[0x940]);
  v45 = ((((v43 ^ 0x6B0622F7 ^ (v35 + 1113734243)) + 2111242640 - ((2 * (v43 ^ 0x6B0622F7 ^ (v35 + 1113734243))) & 0xFBAE0320)) ^ LODWORD(STACK[0x940])) - v42 - 36144145) ^ ((v43 ^ 0x9352532E ^ v44) - (v41 ^ 0x2F236758));
  LODWORD(STACK[0xAE0]) = ((v35 + 1113734243) ^ ((v44 ^ 0xBA364DBA) - ((2 * (v44 ^ 0xBA364DBA)) & 0x84C478C6) + 1113734243)) - (v43 ^ v41 ^ 0x64779CC ^ (v42 + 36144145));
  v46 = v38 + 18359335 + v36 - ((2 * (v38 + 18359335 + v36)) & 0x96AD80FE) + 1263976575;
  LODWORD(STACK[0xAC0]) = v45 - ((2 * v45) & 0x96AD80FE) + 1263976575;
  v47 = ((v35 + 1113734243) ^ 0x42623C63) - (v33 ^ 0x46FEBAF9) - ((2 * (((v35 + 1113734243) ^ 0x42623C63) - (v33 ^ 0x46FEBAF9)) + 809870530) & 0x74CEBB1E) - 762695696;
  v48 = ((2 * ((v33 ^ 0x46FEBAF9) - v30 + 1509375934)) & 0x9BAEBFFE) + (((v33 ^ 0x46FEBAF9) - v30 + 1509375934) ^ 0x4DD75FFF);
  v49 = 664361505 - v30 - ((-830577346 - 2 * v30) & 0x80B44F04);
  LODWORD(STACK[0xAB8]) = v40;
  v50 = ((2 * v40) & 0xEF7EDBD6 ^ 0xCC6E8B06) + (v40 ^ 0x99C8BA78);
  v51 = v42 - v50;
  v52 = v50 - v38 - ((2 * (v50 - v38) + 240180188) & 0xDCF04002) - 174027281;
  v53 = -1083065794 - v38 - ((408919412 - 2 * v38) & 0x6683D708);
  v54 = (LODWORD(STACK[0x950]) ^ 0xDE46AEA7) - ((2 * (LODWORD(STACK[0x950]) ^ 0xDE46AEA7) + 2) & 0xF99742C2) - 53763742;
  v20 += 3588;
  v55 = (((v54 ^ 0x3C9186E3 ^ v49) - ((2 * (v54 ^ 0x3C9186E3 ^ v49)) & 0xB6E365F0) + 1534178040) ^ v20) - (v53 ^ 0xB341EB84);
  v56 = ((v54 ^ 0xC6ACFCEE ^ v47) - ((2 * (v54 ^ 0xC6ACFCEE ^ v47)) & 0xB6E365F0) + 1534178040) ^ v20;
  v57 = ((v47 ^ ((v20 ^ 0x9B2B957A ^ v49) - ((2 * (v20 ^ 0x9B2B957A ^ v49)) & 0x74CEBB1E) + 979852687)) - (v54 ^ v53 ^ 0x4F8A4AE5 ^ (v51 - 1844853667))) ^ (v48 - 1305960447);
  LODWORD(STACK[0xAA8]) = v57 - ((2 * v57) & 0x4122DF28) - 1601081452;
  LODWORD(STACK[0xBD0]) = v55 ^ v52 ^ (v56 - v51 + 1844853667);
  v58 = ((2 * v49) & 0xED73EFD2 ^ 0x40112652) + (v49 ^ 0xD6F16CD4);
  LODWORD(STACK[0xA90]) = 2 * v48 - 1676317078;
  LODWORD(STACK[0x9C8]) = v48 - 1132275914;
  v59 = v58 + v48;
  v60 = ((v32 ^ 0x45CC51B0) + 997107736 + v58 + v48) ^ (v48 + 673346975);
  v61 = ((2 * v49) & 0x3BDF97D8 ^ 0x28D08740) + (v49 ^ 0x2997BC4C);
  v62 = v61 + v58 + 1800813611 + (v47 ^ 0x3A675D8F) - ((2 * (v61 + v58 + 1800813611 + (v47 ^ 0x3A675D8F))) & 0x29FEBEEE);
  v63 = ((2 * v53) & 0xBE7CFEF6 ^ 0xA624AE76) + (v53 ^ 0x8C6D2840);
  v64 = ((2 * ((v52 ^ 0xEE782001) + 1979307422)) & 0xD6BBC77E) + (((v52 ^ 0xEE782001) + 1979307422) ^ 0xEB5DE3BF);
  v65 = (v64 + 346168385) ^ ((v46 ^ 0xE0E2B1CE) + v63 - 1597931387 + (v52 ^ 0xEE782001));
  v66 = ((2 * v53) & 0xF6FFF7DE ^ 0x86C7774C) + (v53 ^ 0xBC1C4049);
  v67 = 169295088 - LODWORD(STACK[0x960]) - ((926824926 - 2 * LODWORD(STACK[0x960])) & 0xDCF04002);
  v68 = v64 + v63;
  v69 = v66 + v63 + v51;
  v70 = v49 ^ v21;
  v71 = v62 + 352280439;
  v72 = (v67 ^ v21 ^ 0xDB95A509 ^ (v62 + 352280439)) - v69 - 927680755;
  v73 = v66 + 75498513;
  v74 = ((v66 + 75498513) ^ v67 ^ 0xEE782001) - 294117375 - 2 * (((v66 + 75498513) ^ v67 ^ 0xEE782001) & 0x6E782015 ^ ((v66 + 75498513) ^ v67) & 0x14);
  LODWORD(STACK[0xA88]) = v74;
  v75 = ((v71 ^ ((v70 ^ 0xED298DFA) - ((2 * (v70 ^ 0xED298DFA)) & 0x29FEBEEE) + 352280439) ^ 0xF8432025) - ((v69 + 927680755) ^ 0xEE782001 ^ v74)) ^ (v59 - 1318552138);
  LODWORD(STACK[0xBC8]) = v75 - 294117375 - ((2 * v75) & 0xDCF04002);
  v76 = v61 - 502254572;
  v77 = v60 - ((2 * v60) & 0xBFEF9400) + 1610074624;
  v78 = (((v67 ^ 0xFB128DDE ^ v70) - v66 - 75498513) ^ (v68 - 1251763002) ^ v72) - 294117375 - ((2 * (((v67 ^ 0xFB128DDE ^ v70) - v66 - 75498513) ^ (v68 - 1251763002) ^ v72)) & 0xDCF04002);
  v79 = ((v76 + (v77 ^ 0x5FF7CA00)) ^ 0xCBFE9A3F) + 872506817 + ((2 * (v76 + (v77 ^ 0x5FF7CA00))) & 0x97FD347E);
  v80 = ((2 * ((v71 ^ 0x14FF5F77) + v79)) & 0x93FFDFDE) + (((v71 ^ 0x14FF5F77) + v79) ^ 0x49FFEFEF);
  v81 = v59 - v80 - ((2 * (v59 - v80) + 114350922) & 0xF33DD0E) + 50486316;
  v82 = v77 ^ 0x586E2487;
  v83 = v81 ^ 0x799EE87;
  v84 = (v81 ^ 0x799EE87 ^ v79) - ((2 * (v81 ^ 0x799EE87 ^ v79)) & 0xACC46D9A) + 1449277133;
  v85 = (v84 ^ 0xA99DC932) + v80 - ((2 * ((v84 ^ 0xA99DC932) + v80) + 1811947556) & 0xDF861D3E) + 633544369;
  v86 = v65 - ((2 * v65) & 0xC8F2B67A) + 1685674813;
  v87 = ((2 * ((v86 ^ 0x64795B3D) + v73)) & 0xFFFF3F1E) + (((v86 ^ 0x64795B3D) + v73) ^ 0x7FFF9F8F);
  v88 = v68 - (v87 + v69) + 1399818787 - ((2 * (v68 - (v87 + v69) + 1399818787) + 357618302) & 0x1500BCAA) + 891864980;
  v89 = v86 ^ 0xEEF90568;
  v90 = -1220844951 - v22 - ((-727400460 - 2 * v22) & 0x99D204DE);
  v91 = v87 + v69 - 1219778204;
  v92 = (v88 ^ 0x8A805E55 ^ (v87 - 2147458959)) - ((2 * (v88 ^ 0x8A805E55 ^ (v87 - 2147458959))) & 0x7242C2F4) - 1188994694;
  v93 = ((2 * (v91 + (v92 ^ 0x46DE9E85) + 1)) & 0xBFDFCDD8) + ((v91 + (v92 ^ 0x46DE9E85) + 1) ^ 0x5FEFE6EC);
  v94 = (((v90 ^ 0x1A8B34A2 ^ v84) - 1863030460 - ((2 * (v90 ^ 0x1A8B34A2 ^ v84)) & 0x21E8D288)) ^ LODWORD(STACK[0x948])) - (v92 ^ 0xB921617A);
  v95 = (LODWORD(STACK[0x948]) ^ v84 ^ 0xA9555116 ^ v85) - (v90 ^ v92 ^ 0xF5C86315 ^ (v93 - 1609557740));
  v96 = v94 ^ v88 ^ ((((v85 ^ v90 ^ 0x232A0CF0) - 1863030460 - 2 * ((v85 ^ v90 ^ 0x232A0CF0) & 0x10F4694D ^ (v85 ^ v90) & 9)) ^ LODWORD(STACK[0x948])) - v93 + 1609557740);
  v97 = v82 ^ v81;
  LODWORD(STACK[0xB60]) = v95 ^ v81;
  v98 = v81 ^ 0x443F4F79;
  v99 = ((2 * v85) & 0xB7B9FFDE ^ 0x1330B01C) + (v85 ^ 0x5666A7E1);
  v100 = v80 - 1241509871 + (v81 ^ 0x443F4F79) - ((2 * (v80 - 1241509871 + (v81 ^ 0x443F4F79))) & 0x6A3EB338) - 1256236644;
  v101 = ((2 * (v97 - v83 + 606273553 + v99)) & 0x4EB7BFDE ^ 0x44B1B082) + ((v97 - v83 + 606273553 + v99) ^ 0x958327AE);
  v102 = (v85 ^ 0x6FC30E9F) + v98;
  v103 = v101 + v99;
  v104 = v101 + v99 + 2093424674;
  v105 = v102 + v104 - ((2 * (v102 + v104)) & 0x6A45166E) - 1256027337;
  v106 = ((2 * (v93 - 1609557740)) & 0xAFF73D7A ^ 0x84F22D22) + ((v93 - 1609557740) ^ 0xB582C82C);
  v107 = (v89 ^ v88) - (v88 ^ 0x8A805E55) - 1476107965 + v106;
  v108 = ((2 * v107) & 0xB9FEBBEE ^ 0x21B0B082) + (v107 ^ 0xEE27A5B6);
  v109 = -334840410 - LODWORD(STACK[0x970]) - ((2091219142 - 2 * LODWORD(STACK[0x970])) & 0x5B700286);
  v110 = v91 + (v88 ^ 0xC926FFAB);
  v111 = v108 + v106;
  v112 = (v88 ^ 0xC926FFAB) + v93 + 1796545632 + v108 + v106;
  v113 = 888863923 - (v108 + v106) - ((((2 * (v109 ^ 0xADB80143 ^ v104)) & 0xFB03C9FE) - (v109 ^ 0xADB80143 ^ v104) + 41818880) ^ LODWORD(STACK[0xB58]));
  v114 = LODWORD(STACK[0xB58]) ^ v100;
  v115 = v114 ^ v109;
  v116 = (v114 ^ 0xE6CAF195 ^ v104) - (((v110 ^ v109 ^ (v111 - 888863924) ^ 0x3EC4DB5) - 294117375 - 2 * ((v110 ^ v109 ^ (v111 - 888863924) ^ 0x3EC4DB5) & 0x6E78200B ^ (v110 ^ v109 ^ (v111 - 888863924)) & 0xA)) ^ 0xEE782001);
  v117 = v112 - ((2 * v112) & 0xB5EE73B0) + 1526151640;
  LODWORD(STACK[0xB58]) = v115;
  v118 = ((v115 ^ 0x4B72F0D6) - (v110 ^ 0xAE544CF6)) ^ v117 ^ v113;
  v119 = ((2 * ((v100 ^ 0x1B4B156A) + 854379465)) & 0xA3339DE2) + (((v100 ^ 0x1B4B156A) + 854379465) ^ 0xD199CEF1);
  v120 = v119 - 93374532 + v103 - ((2 * (v119 - 93374532 + v103) + 1635529450) & 0x4C0FC7A8) - 691667639;
  v121 = (v120 ^ 0xD9F81C2B) + v101 - v119 - ((2 * ((v120 ^ 0xD9F81C2B) + v101 - v119) + 1417403910) & 0xDCF04002) + 414584580;
  v122 = v105 ^ v116;
  v123 = ((2 * ((v121 ^ 0xEE782001) + (v120 ^ v105 ^ 0x932568E3))) & 0xACBFF7CE) + (((v121 ^ 0xEE782001) + (v120 ^ v105 ^ 0x932568E3)) ^ 0x565FFBE7);
  v124 = v120 ^ 0x2607E3D4;
  v125 = (v120 ^ 0x2607E3D4) - ((2 * (v120 ^ 0x2607E3D4) + 767365768) & 0xFC452194) + 352393742;
  v126 = ((2 * ((v110 ^ 0xAE544CF6) + 854379465)) & 0x7E9813DE) + (((v110 ^ 0xAE544CF6) + 854379465) ^ 0x3F4C09EF);
  v127 = v119 + 778449167;
  v128 = ((v120 ^ 0xA76345C3) + 71582213 + ((2 * v120) & 0xF7777BF6 ^ 0xB1317070)) ^ (v119 + 778449167);
  v129 = v128 - ((2 * v128) & 0x81778470) - 1061436872;
  v130 = v111 + v126;
  v131 = v111 + v126 - 1950811811;
  v132 = (v131 ^ 0x5AF739D8 ^ v117) - 294117375 - ((2 * (v131 ^ 0x5AF739D8 ^ v117)) & 0xDCF04002);
  v133 = (v131 ^ (v126 - 1061947887)) - ((2 * (v131 ^ (v126 - 1061947887))) & 0x22136D12);
  v134 = v108 - v126 - (v111 + v126);
  v135 = v134 - 694963557 + (v132 ^ 0xEE782001) - 294117375 - ((2 * (v134 - 694963557 + (v132 ^ 0xEE782001))) & 0xDCF04002);
  v136 = 519212425 - LODWORD(STACK[0x978]) - ((1520236400 - 2 * LODWORD(STACK[0x978])) & 0x634823A2);
  v137 = v130 + 6151329 + ((2 * ((v130 + 580354721) & 0x5DC659FF ^ v130 & 1)) ^ 0xFFFFFFFC);
  v138 = v133 - 1861634423;
  v139 = (v133 - 1861634423) ^ 0x9109B689;
  v140 = (((v136 ^ 0x8BC0C805 ^ v129) + 1835938872 - ((2 * (v136 ^ 0x8BC0C805 ^ v129)) & 0xDADC6870)) ^ LODWORD(STACK[0x968])) - v139;
  v141 = (v136 ^ LODWORD(STACK[0x968]) ^ 0xA2E8B523 ^ v125) - (v137 ^ 0x5DC659FE);
  v142 = ((v125 ^ 0x55530D60 ^ ((v129 ^ LODWORD(STACK[0x968]) ^ 0xBB792154) - 2 * ((v129 ^ LODWORD(STACK[0x968]) ^ 0xBB792154) & 0x4702511A ^ (v129 ^ LODWORD(STACK[0x968])) & 8) - 956149486)) - (v136 ^ v138 ^ v137 ^ 0xFD6BFEA6)) ^ (v123 - 1449130983);
  v143 = v142 - ((2 * v142) & 0xD6BA70B2) + 1801271385;
  v144 = (v124 ^ v127) - 294117375 - ((2 * (v124 ^ v127)) & 0xDCF04002);
  v145 = (v141 - 294117375 - ((2 * v141) & 0xDCF04002)) ^ v135 ^ (v140 - 294117375 - ((2 * v140) & 0xDCF04002));
  v146 = v129 ^ v125;
  v147 = ((2 * (v129 ^ v125)) & 0xAFDFA7CC ^ 0x888C820C) + (v129 ^ v125 ^ 0x13A99AF8);
  v148 = ((2 * ((v144 ^ 0xEE782001) - v123 + 1449130983)) & 0x725B9EE6) + (((v144 ^ 0xEE782001) - v123 + 1449130983) ^ 0xB92DCF73);
  v149 = v147 - v148 - ((2 * (v147 - v148) - 1032063206) & 0xF5CC67C8) - 601608335;
  v150 = (v121 ^ 0x1187DFFE) + v147 - 1475335141 + v148 - ((2 * ((v121 ^ 0x1187DFFE) + v147 - 1475335141 + v148) - 1820808076) & 0xDCF04002) + 942962235;
  v151 = ((2 * (v139 - (v135 ^ 0xEE782001))) & 0xE7B5EEE6) + ((v139 - (v135 ^ 0xEE782001)) ^ 0xF3DAF773);
  v152 = v137 ^ v138 ^ 0x22B7CF76 ^ v135;
  v153 = (v137 ^ v138 ^ 0x33301088) + v134;
  v154 = v152 - ((2 * v152 + 813621366) & 0xAE4B9A54) + 1868905829;
  v155 = ((2 * ((v137 ^ v138 ^ 0xCCCFEF77) - v151 - 203753613)) & 0xDFBAFAEE) + (((v137 ^ v138 ^ 0xCCCFEF77) - v151 - 203753613) ^ 0xEFDD7D77);
  v156 = (LODWORD(STACK[0x958]) ^ 0x67364124) - 294117375 - ((2 * (LODWORD(STACK[0x958]) ^ 0x67364124) + 2) & 0xDCF04002) + 1;
  v157 = STACK[0xB38];
  v158 = ((v156 ^ 0x949E13E5 ^ v149) - ((2 * (v156 ^ 0x949E13E5 ^ v149)) & 0xBE0A5A78) - 553308868) ^ LODWORD(STACK[0xB38]);
  LODWORD(STACK[0x76C]) = v150;
  v159 = v157 ^ v150;
  LODWORD(STACK[0xB38]) = v153;
  v160 = v151 - v153;
  LODWORD(STACK[0xB08]) = v160 + 694963556;
  LODWORD(STACK[0x760]) = v149;
  LODWORD(STACK[0x768]) = v154;
  v161 = ((v159 ^ v156 ^ 0xDF052D3C) - (v160 + 694963556) - 252653114) ^ v154 ^ (v158 - v155 - 270697097);
  v162 = ((((v159 ^ 0x317D0D3D) - ((2 * (v159 ^ 0x317D0D3D)) & 0xF5CC67C8) + 2061906916) ^ v149) - ((((v160 + 947616670) ^ v156 ^ (v155 + 270697097) ^ 0xEE782001) - 294117375 - 2 * (((v160 + 947616670) ^ v156 ^ (v155 + 270697097) ^ 0xEE782001) & 0x6E782011 ^ ((v160 + 947616670) ^ v156 ^ (v155 + 270697097)) & 0x10)) ^ 0xEE782001)) ^ ((v146 ^ 0x4446491E ^ (v123 - 1449130983)) - ((2 * (v146 ^ 0x4446491E ^ (v123 - 1449130983)) + 813621366) & 0xDCF04002) + 112693308);
  v163 = LODWORD(STACK[0xAF8]) ^ LODWORD(STACK[0xAC8]) ^ LODWORD(STACK[0xB68]);
  LODWORD(STACK[0xA20]) = v163;
  v164 = v46 ^ LODWORD(STACK[0xAB8]) ^ LODWORD(STACK[0xAB0]) ^ LODWORD(STACK[0xA98]) ^ LODWORD(STACK[0xAE0]) ^ LODWORD(STACK[0xAC0]);
  v165 = STACK[0xAA8];
  v166 = ((LODWORD(STACK[0xAA8]) >> 21) & 0xF8 | (LODWORD(STACK[0xAA8]) >> 29)) ^ 0xEELL;
  v167 = STACK[0xBA8];
  v168 = STACK[0xBA0];
  LOBYTE(v156) = (LODWORD(STACK[0xBA0]) + 59 * *(STACK[0xBA8] + (((HIBYTE(v118) ^ 0x5A) - 43) ^ 0x14))) ^ HIBYTE(v122) ^ 0x34;
  LODWORD(STACK[0xAE0]) = v145;
  v169 = v143 ^ v145;
  LODWORD(STACK[0xAB8]) = ((v143 ^ v145) >> 23) & 0x1BE ^ 0x10A;
  LODWORD(STACK[0xB68]) = v161 ^ v162;
  v170 = (((v161 ^ v162 ^ 0xE1FF7E49) >> 21) & 0xF8 | ((v161 ^ v162 ^ 0xE1FF7E49) >> 29)) ^ 0x29;
  LODWORD(STACK[0xA98]) = v164;
  LODWORD(STACK[0xA28]) = v122;
  v171 = STACK[0xBB0];
  HIDWORD(v172) = *(STACK[0xBB0] + (((v162 >> 9) & 0x80 | (v162 >> 17) & 0x7F) ^ 0xA3));
  LODWORD(v172) = (HIDWORD(v172) ^ 0x4E) << 24;
  LODWORD(STACK[0x9E8]) = (*(STACK[0xBB0] + (((v122 >> 9) & 0x80 | (v122 >> 17) & 0x7F) ^ 0x8ELL)) >> 1) ^ 0xFFFFFFD5;
  LODWORD(STACK[0x9E0]) = (*(v171 + (((v96 >> 1) & 0x80 | (v96 >> 9)) ^ 0x60)) >> 1) ^ 0xFFFFFFD5;
  LODWORD(STACK[0xAB0]) = (*(v171 + (((v162 >> 1) & 0x80 | (v162 >> 9)) ^ 0x8FLL)) >> 1) ^ 0xFFFFFFD5;
  v173 = LODWORD(STACK[0xBD0]) ^ v165;
  LODWORD(STACK[0xA68]) = v173;
  v174 = ((v173 ^ 0x95) - 43) ^ 0x96;
  LODWORD(STACK[0xAC8]) = v161;
  LOBYTE(v173) = (((v172 >> 25) ^ 0xF2) + 70) ^ BYTE2(v161) ^ 0x25;
  LODWORD(STACK[0xA18]) = (*(STACK[0xB90] + ((((v164 ^ 0xB5D309E3) >> 9) & 0x80 | ((v164 ^ 0xB5D309E3) >> 17) & 0x7F) ^ 0xA4)) - 50) ^ 0x15;
  v175 = STACK[0xBB8];
  LODWORD(STACK[0xA60]) = (*(STACK[0xBB8] + (((v78 >> 5) | (8 * (v78 & 0x1F))) ^ 0x25)) - 106) ^ 0x15;
  v176 = STACK[0xB98];
  v177 = 27 * ((*(STACK[0xB98] + ((((v163 ^ 0x82FA70DF) >> 12) & 0xF0 | ((v163 ^ 0x82FA70DF) >> 20) & 0xF) ^ 0xBBLL)) - 10) ^ 0x10);
  LODWORD(STACK[0xAA8]) = 27 * (*(STACK[0xB80] + (((16 * (v169 & 0xF)) | (v169 >> 4)) ^ 0xC8)) ^ 0xFFFFFFD6);
  LODWORD(STACK[0x9B8]) = STACK[0xA90] & 0xDCF04002;
  LODWORD(STACK[0xA10]) = *(v175 + ((((v163 ^ 0x82FA70DF) >> 21) & 0xF8 | ((v163 ^ 0x82FA70DF) >> 29)) ^ 0x85)) - 106;
  LODWORD(STACK[0xAF8]) = (HIBYTE(v164) ^ 0xC6) - ((2 * (HIBYTE(v164) ^ 0xC6)) & 0x1B2) + 1266542553;
  v178 = STACK[0xB78];
  v179 = *(STACK[0xB78] + v166);
  LODWORD(v166) = STACK[0xB88];
  LODWORD(STACK[0xA38]) = (LODWORD(STACK[0xB88]) - 117 * v179) ^ 0x7E;
  v180 = LODWORD(STACK[0xBC8]) ^ v78;
  LODWORD(STACK[0x9B0]) = (v180 >> 23) & 0x1DA;
  v181 = v96 ^ LODWORD(STACK[0xB60]);
  LODWORD(STACK[0xA90]) = v181;
  LODWORD(STACK[0x9A8]) = (v181 >> 23) & 0x24;
  LODWORD(STACK[0x9A0]) = (HIBYTE(v181) ^ 0x8D) - 414068462;
  LODWORD(STACK[0x9D0]) = 59 * *(v167 + ((v156 - 43) ^ 0x14));
  LODWORD(STACK[0xA78]) = (v166 - 117 * *(v178 + v170)) ^ 0x7E;
  LODWORD(STACK[0xA08]) = (2 * v177) & 0x1BE;
  LODWORD(STACK[0x9F0]) = v177;
  LODWORD(STACK[0x998]) = (v180 >> 15) & 0x92;
  LODWORD(STACK[0x990]) = HIWORD(v180) + 201;
  v182 = v168 + 59 * *(v167 + ((v173 - 43) ^ 0x14));
  LODWORD(STACK[0xA30]) = v118;
  LODWORD(STACK[0x9D8]) = (*(v176 + (((v118 >> 4) & 0xF0 | (v118 >> 12)) ^ 0xFELL)) - 10) ^ 0x10;
  LODWORD(STACK[0xA48]) = *(STACK[0xB50] + v174);
  LODWORD(STACK[0xA70]) = v182 ^ 0xFFFFFF81;
  v183 = STACK[0xBC0];
  LODWORD(STACK[0xAC0]) = v169;
  LODWORD(STACK[0xA58]) = HIBYTE(v169);
  v184 = *(STACK[0xBD8] + 8 * v183);
  LODWORD(STACK[0xA54]) = v180;
  LODWORD(STACK[0x978]) = HIBYTE(v180) - 2089237011;
  return v184(89, 2885681152, 10584558, STACK[0x890], 29192, 0x100000000, 2);
}

uint64_t sub_244BA3C30@<X0>(char a1@<W0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v19 = *(&STACK[0xE0E0] + v10);
  v20 = *(v8 + 4 * (*(&STACK[0xE0E0] + v10) ^ 0x6DLL));
  v21 = *(v8 + 4 * (BYTE2(v19) ^ 0x5ELL));
  HIDWORD(v23) = v20 ^ a3;
  LODWORD(v23) = v20 ^ v13;
  v22 = v23 >> 25;
  v24 = *(v8 + 4 * (BYTE1(v19) ^ 0x21));
  HIDWORD(v23) = v21 ^ a3;
  LODWORD(v23) = v21 ^ a2;
  v25 = v23 >> 25;
  HIDWORD(v23) = v24 ^ a3;
  LODWORD(v23) = v24 ^ a2;
  v26 = (v23 >> 25) ^ __ROR4__(v22, 8);
  LODWORD(v19) = *(a4 + ((v19 >> 22) & 0x3FC ^ v12));
  v27 = *(&STACK[0xE730] + v10);
  HIDWORD(v23) = v19 ^ 0x9485;
  LODWORD(v23) = v19 ^ 0xCB220000;
  LODWORD(v19) = v23 >> 16;
  HIDWORD(v23) = v25 ^ 0x604AA9;
  LODWORD(v23) = v25 ^ 0x8D000000;
  LODWORD(v19) = ((2 * (v26 ^ v19 ^ (v23 >> 24))) & 0xDF7777F6 ^ 0xCE614020) + (v26 ^ v19 ^ (v23 >> 24) ^ 0x18CB1FEB);
  v28 = __ROR4__(*(v17 + 4 * ((LODWORD(STACK[0xBA0]) + 59 * *(STACK[0xBA8] + (((v27 ^ 0xF9) - 43) ^ 0x14))) ^ 0xEu)), 8) ^ 0x2BC6EFE8;
  LODWORD(v23) = __ROR4__(*(v18 + 4 * (BYTE2(v27) ^ 0x2ALL)), 24);
  v29 = *(v17 + 4 * (BYTE1(v27) ^ 0xCBLL)) ^ __ROR4__(*(v17 + ((v27 >> 22) & 0x3FC ^ 0x388)), 16) ^ ((v23 ^ 0xF5BB68BA) - 294117375 - ((2 * (v23 ^ 0xF5BB68BA)) & 0xDCF04002)) ^ (v28 - 294117375 - ((2 * v28) & 0xDCF04002));
  v30 = v19 - 1874574331 - ((2 * (v19 - 1874574331)) & 0xC87D389E) + 1681824847;
  v31 = (v29 ^ 0xF6D7BC85) - ((2 * (v29 ^ 0xF6D7BC85)) & 0x23ACA7D8) + 299258860;
  v32 = ((v10 + 1) ^ 0xFF6FC9FFFF7DF767) + (a7 & 0x1FEFBEECELL) + 0x90360000820899;
  *(v15 + v32) = (BYTE2(v30) ^ 0x3E) - (v9 & (2 * (BYTE2(v30) ^ 0x3E))) - 40;
  *(v16 + v32) = (BYTE2(v31) ^ 0xD6) - 2 * ((BYTE2(v31) ^ 0xD6) & a1 ^ BYTE2(v31) & 1) - 40;
  v33 = ((v10 + 2) ^ 0xFEFC79FF7EFC9EFFLL) + ((a7 + 2) & 0xFDF93DFC) + 0x103860081036101;
  *(v15 + v33) = (BYTE1(v30) ^ 0x9C) - 2 * ((BYTE1(v30) ^ 0x9C) & 0x5A ^ BYTE1(v30) & 2) - 40;
  *(v16 + v33) = (BYTE1(v31) ^ 0x53) - (v9 & (2 * (BYTE1(v31) ^ 0x53))) - 40;
  *(v15 + v10) = (HIBYTE(v30) ^ 0x64) - 2 * ((HIBYTE(v30) ^ 0x64) & a1 ^ HIBYTE(v30) & 1) - 40;
  *(v16 + v10) = (HIBYTE(v31) ^ 0x11) - 2 * ((HIBYTE(v31) ^ 0x11) & v12 ^ HIBYTE(v31) & 4) - 40;
  LOBYTE(v28) = v19 - ((2 * v19 + 10) & v9);
  v34 = (a6 & 0xFFFFFFFC ^ v14) + v11 + (a8 & (2 * a6));
  v35 = 33 * ((LODWORD(STACK[0xB88]) - 117 * *(STACK[0xB78] + (((v29 >> 5) | (8 * (v29 & 0x1Fu))) ^ 0xC7))) ^ 0x7E);
  *(v15 + v34) = v28 - 35;
  *(v16 + v34) = v35 - (v9 & (2 * v35)) - 40;
  return (*(STACK[0xBD8] + 8 * (((v10 == 60) * a5) ^ LODWORD(STACK[0xBC0]))))();
}

uint64_t sub_244BA6C00@<X0>(int a1@<W0>, uint64_t a2@<X2>, int a3@<W8>)
{
  LODWORD(STACK[0x87C]) = a1;
  LODWORD(STACK[0x8DC]) = v3;
  LODWORD(STACK[0x6C4]) = v4;
  LODWORD(STACK[0xBD0]) = 0;
  LODWORD(STACK[0xB60]) = 0;
  LODWORD(STACK[0xAF8]) = 0;
  LODWORD(STACK[0xAC0]) = 0;
  LODWORD(STACK[0xA54]) = 0;
  LODWORD(STACK[0x928]) = 0;
  LODWORD(STACK[0x9A0]) = 0;
  LODWORD(STACK[0x9A8]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0xB68]) = 0;
  LODWORD(STACK[0xB38]) = 0;
  LODWORD(STACK[0xAC8]) = 0;
  LODWORD(STACK[0xA60]) = 0;
  LODWORD(STACK[0x9B8]) = 0;
  LODWORD(STACK[0x9C4]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0x9E8]) = 0;
  LODWORD(STACK[0x9F0]) = 0;
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xAA8]) = 0;
  LODWORD(STACK[0xA70]) = 0;
  LODWORD(STACK[0xA08]) = 0;
  LODWORD(STACK[0xA10]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA18]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0xAB0]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA28]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0xAB8]) = 0;
  LODWORD(STACK[0xA48]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x998]) = 0;
  LODWORD(STACK[0xA58]) = 0;
  LODWORD(STACK[0xBC0]) = a3 + 13020;
  v5 = (a3 - 1269585580) ^ STACK[0x850];
  v6 = STACK[0x8A4];
  v7 = STACK[0x7B0];
  if (LODWORD(STACK[0x8A4]))
  {
    v7 = (a3 - 1269585580) ^ STACK[0x850];
  }

  LODWORD(STACK[0x7B0]) = v7;
  v8 = STACK[0x774];
  if (!v6)
  {
    v8 = v5;
  }

  LODWORD(STACK[0x774]) = v8;
  return (*(a2 + 8 * a3))();
}

uint64_t sub_244BA6D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x7C4]) = v12;
  LODWORD(STACK[0x7C8]) = v16;
  LODWORD(STACK[0x7D0]) = v9;
  LODWORD(STACK[0x814]) = v15;
  LODWORD(STACK[0x7D8]) = v14;
  LODWORD(STACK[0x808]) = v11;
  LODWORD(STACK[0x818]) = v13;
  LODWORD(STACK[0x8A4]) = a7;
  LODWORD(STACK[0x8BC]) = v7;
  LODWORD(STACK[0x920]) = v8;
  LODWORD(STACK[0x828]) = v10;
  LODWORD(STACK[0x7B8]) = 0;
  return (*(STACK[0xBD8] + 8 * ((11633 * (LODWORD(STACK[0xBC0]) != -522186627)) ^ (LODWORD(STACK[0xBC0]) - 8550))))(a1, a2, a3, a4, a5, a6, 137);
}

uint64_t sub_244BA6DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v13 = *STACK[0xB70];
  LODWORD(STACK[0x834]) = v7 + 20114;
  v14 = *(v13 + 300);
  LODWORD(STACK[0x830]) = v7 + 17777;
  v15 = (v14 ^ (v7 + 2080335230)) - 823656578 + ((v7 - 134295172) & (2 * v14));
  v16 = v15;
  STACK[0x850] = v15;
  v17 = v15 < 0x4AE76B7C;
  LODWORD(v15) = v7;
  LODWORD(STACK[0xBC0]) = v7;
  v18 = STACK[0xB00];
  v19 = *(STACK[0xB00] + 72);
  v20 = *(v13 + 45);
  v21 = (~(82 * *(v13 + 277)) | 0xFFFFFFA1) + 41 * *(v13 + 277) + 48;
  v22 = *(v13 + 232);
  v23 = *(a6 + 8 * (v15 - 1250));
  v24 = *(v23 + ((((*(STACK[0xB00] + 86) & 0xF7) << (*(STACK[0xB00] + 86) & 1) << !(*(STACK[0xB00] + 86) & 1)) + (*(STACK[0xB00] + 86) ^ 0xF7)) ^ a7) + 11);
  v25 = (v21 ^ v9) + (v21 ^ 0x60);
  v26 = (2 * v25) & 0x3A;
  v25 += 29;
  v27 = *(v13 + 186);
  v28 = *(v13 + 212);
  v29 = v24 - ((2 * v24 + 118) & 0xFFFFFFF3) + 52;
  v30 = *(v23 + 274 + (((~(82 * *(v13 + 277)) | 0xA1) + 41 * *(v13 + 277) + 48) ^ v10));
  STACK[0x848] = v23 + 274;
  v31 = v20 << 40;
  HIDWORD(v32) = v25 ^ ~v30;
  LODWORD(v32) = ((v30 - ((2 * v30) & 0x3A) + 29) ^ (v25 - v26)) << 24;
  v33 = (v32 >> 25) - (v8 & (2 * (v32 >> 25))) + 84;
  HIDWORD(v32) = v33 ^ v11;
  LODWORD(v32) = v33 << 24;
  v34 = (v19 << 8) & 0xFFFFFFFFFF00FF00 | (((v32 >> 31) ^ 0x32u) << 16) | (7 * (v29 ^ (((8 * v29) & 0x90) - ((16 * v29) & 0x20) - 7) ^ 0xFC));
  v35 = v34 + 0x4E33969C87AFB0D1 - 2 * (v34 & 0xAFB0F9 ^ (7 * (v29 ^ (((8 * v29) & 0xFFFFFF90) - ((16 * v29) & 0x20) - 7) ^ 0xFC)) & v12);
  v36 = ((*(v13 + 410) << 24) - 0x16FF5FA768BE659FLL - ((*(v13 + 410) << 25) & 0x12E000000)) ^ 0xE900A05897419A61;
  v37 = v18[21];
  v38 = (v36 - (v35 ^ 0x4E33969C87AFB0D1 | v36)) ^ ((v35 ^ 0xB1CC696378504F2ELL) + 1);
  v39 = ((v38 + 0x4E33969C87AFB0D1 - ((2 * v38) & 0x9C672D390F5F61A2)) ^ v35) + v36;
  v40 = *(v13 + 197);
  LODWORD(v35) = (41 * *(v13 + 116)) - ((82 * *(v13 + 116)) & 0x9E) - 1084816488 - ((2 * ((41 * *(v13 + 116)) - ((82 * *(v13 + 116)) & 0x9E) + 79)) & 0x7EAE06C2) + 24;
  v41 = (v27 << 8) | (v18[41] << 24) | (*(v13 + 174) << 16) | v40;
  v42 = v41 + 0x148A16393FCBAF34 - 2 * (v41 & 0x3FCBAF37 ^ v40 & 3);
  v43 = *(v23 + 274 + (v35 ^ 0xBF570349));
  LOBYTE(v35) = ((2 * v35) & 0x78 ^ 0x40) - ((4 * v35) & 0x60) - 14;
  LOBYTE(v40) = v35 ^ 0x31;
  LOBYTE(v35) = ((v35 ^ 0xCF) + (v35 ^ 0x31) + (v43 ^ 0xCD) + 1 + 2 * ((v35 ^ 0x31) & (v43 ^ 0x32))) ^ ((v43 ^ 0xCD) + 1);
  v44 = (v43 ^ 0xA0 ^ (v35 - ((2 * v35) & 0x24) - 110)) + v40;
  v45 = v16 | (v17 << 32);
  v46 = v45 + ((v42 ^ 0x148A16393FCBAF34 | (v18[186] << 32)) ^ ((*(v13 + 390) << 56) | (v18[205] << 48) | (*(v13 + 326) << 40)));
  v47 = v46 - 2 * ((v42 ^ 0x148A16393FCBAF34) & (v45 + 0x7FFFFFFFB5189484)) - 0x3970B1359D26F69CLL - ((2 * (v46 - 2 * ((v42 ^ 0x148A16393FCBAF34) & (v45 + 0x7FFFFFFFB5189484)) - 1256680316)) & 0x8D1E9D955B80E9C0);
  v48 = ((v18[122] << 24) | (v44 << 32)) + ((v18[143] << 16) | (v18[161] << 8) | (v37 + 0x2DF7446C58EAC1D8 - ((2 * v37) & 0x1B0)) ^ 0x2DF7446C58EAC1D8);
  v49 = v48 + 0x1F2D353D76E4DB30 - 2 * (v48 & 0x1F2D353D76E4DB36 ^ v37 & 6);
  v50 = (v49 ^ 0x1F2D353D76E4DB30 | (*(v13 + 183) << 40)) ^ ((v18[204] << 48) | (v18[108] << 56));
  LOBYTE(v37) = (v37 - 40 - ((2 * v37) & 0xB0)) & 0x30;
  v51 = v18[134];
  v52 = (v50 - 0x3970B135523F8B20 - 2 * (v50 & 0x468F4ECAADC074FALL ^ (v49 ^ 0x1F2D353D76E4DB30) & 0x1A)) ^ v47;
  v53 = ((*(v13 + 38) << 40) | (*(v13 + 5) << 56) | *(v13 + 105) | (*(v13 + 322) << 8) | (v18[88] << 16) | (v18[77] << 24) | (*(v13 + 134) << 32)) ^ ((*(v23 + ((-65 * v18[193]) ^ 0x3ALL) + 813) ^ 0x60) << (v37 ^ 0x10u) << (v37 ^ 0x20u));
  *(&v55 + 1) = v52 ^ LODWORD(STACK[0x3AC]);
  *&v55 = v52 ^ 0x22E9E9C9E0C00000;
  v54 = v55 >> 21;
  v56 = (*(v13 + 60) << 32) | (*(v13 + 168) << 24) | (*(v13 + 100) << 8) | (*(v13 + 319) << 16) | v51 | (*(v13 + 87) << 40) | (v18[126] << 56) | (v18[26] << 48);
  v57 = v56 + 0x20B691462BB0826FLL - 2 * (v56 & 0x20B691462BB0827FLL ^ v51 & 0x10);
  *(&v55 + 1) = v54 ^ 0x20B9D394C0ALL;
  *&v55 = v54 ^ 0xFCC1200000000000;
  v58 = (v55 >> 43) - ((2 * (v55 >> 43)) & 0xA287B9DF6B59B9BCLL) - 0x2EBC23104A532322;
  v59 = v57 ^ v53 ^ 0xFA445B3EA4B8B674;
  v60 = v39 ^ (v31 | (v22 << 48) | (v28 << 32) | (v18[20] << 56)) ^ v57;
  v61 = (((v58 ^ 0xE6159620DF909ACCLL) & (v47 ^ 0x1B9958FCB2ECE051)) - ((2 * ((v58 ^ 0xE6159620DF909ACCLL) & (v47 ^ 0x1B9958FCB2ECE051))) & 0x345C3E8DE9960AAELL) - 0x65D1E0B90B34FAA9) ^ v60;
  v62 = v58 ^ (v59 ^ 0x8D15131D3409BB2CLL) & (v53 ^ 0x5F180236235F1441);
  v63 = (v60 ^ 0x47457A8253D510A0) & (v47 ^ 0xE466A7034D131FAELL) ^ v59;
  v64 = v61 ^ v63;
  v66 = (((v60 ^ 0xB8BA857DAC2AEF5FLL) & (v59 ^ 0x72EAECE2CBF644D3)) - 0x5BBA4C15B47498CLL - ((2 * ((v60 ^ 0xB8BA857DAC2AEF5FLL) & (v59 ^ 0x72EAECE2CBF644D3))) & 0xF488B67D49716CE8)) ^ v53 ^ 0xFA445B3EA4B8B674;
  v67 = (((v61 ^ v63) << 36) ^ 0x807A45000000000) - ((2 * (((v61 ^ v63) << 36) ^ 0x807A45000000000)) & 0x9C1C3F0000000000) - 0x31F1E07B40D87B7ELL;
  if (v22)
  {
    v68 = v58 ^ 0xE6159620DF909ACCLL;
  }

  else
  {
    v68 = 0;
  }

  v69 = (v53 ^ 0xA0E7FDC9DCA0EBBELL ^ v68) & (v58 ^ 0x19EA69DF206F6533);
  v70 = v69 + 16;
  v65 = (((v61 ^ v63) << 45) ^ 0xF48A00000000000) & (v61 ^ v63 ^ 0xD27DC00000000000) ^ ((v61 ^ v63) << 45) & 0xA012E00000000000;
  v71 = 0x200000000001 * (v61 ^ v63 ^ 0x726F2399C0807A45) + ((2 * v65) ^ 0x1400000000000) + ((4 * v65) ^ 0xFFFD7FFFFFFFFFFFLL) + 1;
  v72 = v47 ^ 0xCEDD562133D053BELL ^ (v69 + 0x2ABBF1227EC34C10 - ((2 * v69) & 0x5577E244FD869820));
  v73 = (v72 - ((2 * v72) & 0x8A2D518C4579CB18) + 0x4516A8C622BCE58CLL) ^ v61;
  v74 = (v71 - ((2 * v71) & 0x167182587AF71FE4) - 0x74C73ED3C284700ELL) & 0xBEB16B38B3D9DB83 ^ v67 & 0xBEB16B3000000000 | (v71 - ((2 * v71) & 0x167182587AF71FE4) - 0x74C73ED3C284700ELL) & 0x414E94C74C26247CLL;
  v75 = v62 ^ (v66 - ((2 * v66) & 0x42ECF57D79F37470) + 0x21767ABEBCF9BA38);
  v76 = ((v75 << 47) ^ 0x5A84000000000000) + 0xE867E9D44002CA7 - ((2 * ((v75 << 47) ^ 0x5A84000000000000)) & 0x1D0C000000000000);
  *(&v77 + 1) = v62 ^ 0x1B6D3479B3846C65;
  *&v77 = v62;
  v78 = ((v75 << 54) ^ 0x4200000000000000) - ((v75 << 55) & 0x5800000000000000);
  v79 = (v77 >> 62) ^ 0x1B6109137AE17408;
  *(&v77 + 1) = ~(v77 >> 62);
  *&v77 = v79;
  v80 = v77 >> 2;
  v81 = v75 >> 17;
  v82 = v75 ^ (v75 >> 10);
  *(&v77 + 1) = v73 ^ 0x3C30159D8413C86;
  *&v77 = v73 ^ 0xBFFFFFFFFFFFFFFFLL;
  v83 = (v81 & 0x20000 ^ 0x7FAFB07FD5BFD7D7) + 2 * (v81 & 0x20000);
  v84 = ((v83 - 0x7FAFB07FD5BFD7D7) & (v82 ^ 0xDF3C42A307F60000)) == 0;
  v85 = v67 & 0x414E94C000000000;
  v86 = (v80 - ((2 * v80) & 0x900C06FB5E953964) + 0x4806037DAF4A9CB2) ^ ((v80 - ((2 * v80) & 0x900C06FB5E953964) + 0x4806037DAF4A9CB2) << 58) ^ ((v80 - ((2 * v80) & 0x900C06FB5E953964) + 0x4806037DAF4A9CB2) >> 1) ^ (((v80 - ((2 * v80) & 0x900C06FB5E953964) + 0x4806037DAF4A9CB2) >> 6) | (v80 << 63));
  v87 = ((v63 << 23) ^ 0x66962091B3800000) - ((2 * ((v63 << 23) ^ 0x66962091B3800000)) & 0x4F4945E281000000) - 0x585B5D0EBF04B333;
  v88 = v73 ^ __ROR8__(v73, 39) ^ (v77 >> 61);
  v89 = v88 ^ 0xFD84D2E45BE7763ELL ^ v86;
  v90 = (v78 - 0x53D59EC3AC9AC593) & 0x7740000000000000 ^ v82 & 0x776ED6A60D566E93 | (v78 - 0x53D59EC3AC9AC593) & 0x8880000000000000 ^ v82 & 0x88912959F2A9916CLL;
  v91 = v83 - 0x20002000C4895201;
  if (!v84)
  {
    v91 = 0xDF5F40FEE6F65DADLL - v83;
  }

  v92 = v87 & 0xC68A2730B1000000;
  v93 = v91 + (v90 ^ 0x733C42A307F779A5) - 0x5FAF907F113685D6;
  v94 = v87 & 0x3975D8CF4E800000;
  v95 = v63 ^ (v63 >> 7) ^ ((((v63 << 57) ^ 0xCE00000000000000) - (((v63 << 57) ^ 0xCE00000000000000) >> 61 << 62) - 0x1E35A411A8F48DB6) & 0xFE00000000000000 | (v63 >> 41));
  v96 = (v95 ^ 0xF8C95AAFD60796CDLL) & 0xC68A2730B12624ABLL;
  v97 = (v81 & 0xFFFFFFFFFFFDFFFFLL ^ 0x6F85C0218B99 ^ v93) + (v76 ^ 0xE867E9D44002CA7) - 2 * (v93 & (v76 ^ 0xE867E9D44002CA7)) + 0x6A9DE6CEBD15BB14 - ((2 * ((v81 & 0xFFFFFFFFFFFDFFFFLL ^ 0x6F85C0218B99 ^ v93) + (v76 ^ 0xE867E9D44002CA7) - 2 * (v93 & (v76 ^ 0xE867E9D44002CA7)))) & 0xD53BCD9D7A2B7628);
  v98 = (v95 ^ 0xF8C95AAFD60796CDLL) & 0x3975D8CF4ED9DB54 ^ v94 ^ ((v96 ^ 0xCF78872B040597ABLL ^ ((((v92 ^ 0x8680223000000000) - (v92 ^ 0x840A05002006248ALL ^ v96)) ^ ((v96 ^ 0xFD75D8CFDFF9DB75) + 1)) - ((2 * (((v92 ^ 0x8680223000000000) - (v92 ^ 0x840A05002006248ALL ^ v96)) ^ ((v96 ^ 0xFD75D8CFDFF9DB75) + 1))) & 0x9BE5403648076642) - 0x320D5FE4DBFC4CDFLL)) + (v92 ^ 0x8680223000000000));
  v99 = v97 ^ v98;
  v100 = (v64 >> 19) ^ (v64 >> 28) ^ v85 ^ v98 ^ v74;
  v101 = (v97 ^ 0x9562193142EA44EBLL) & (v98 ^ 0x1825184A00899110);
  v102 = v100 ^ 0xA2EC3753008CE091 | v88 ^ 0x10738320D506BA84;
  v103 = v100 ^ v88 ^ 0xB29FB473D58A5A15;
  v104 = (2 * (v100 ^ v88)) ^ 0x9AC0971854EB4BD5;
  v105 = v100 ^ (v88 ^ 0xEF8C7CDF2AF9457BLL) & (v86 ^ 0xA5251ACE8E52F899);
  v97 ^= 0x6A9DE6CEBD15BB14uLL;
  v106 = (v100 ^ 0x5D13C8ACFF731F6ELL) & (v99 ^ 0x8D47017B4263D5FBLL);
  v107 = ((v97 & (v89 ^ 0xB72DB4F5FF4CCBDCLL)) - ((2 * (v97 & (v89 ^ 0xB72DB4F5FF4CCBDCLL))) & 0xDBEEA3891DC39974) - 0x1208AE3B711E3346) ^ v88 ^ 0xFD84D2E45BE7763ELL;
  v108 = (v103 + v102 + v104 + 1) ^ v99;
  v109 = v108 ^ v105;
  v110 = v101 ^ v89;
  v111 = (v107 - ((2 * v107) & 0xC78FF58EDEAB5854) - 0x1C38053890AA53D6) ^ v105;
  v112 = (v97 ^ v106) + (v101 ^ v89 ^ 0x48D24B0A00B33423) - 2 * ((v97 ^ v106) & (v101 ^ v89 ^ 0x48D24B0A00B33423));
  LOBYTE(v97) = v30 & 6;
  v113 = v101 ^ v89 ^ 0x328031CD0BE3D956;
  v114 = (v113 >> v97 >> (v97 ^ 6u)) + 0x5483E213E044DC72 - ((2 * (v113 >> v97 >> (v97 ^ 6u))) & 0xA907C427C089B8E4);
  *(&v115 + 1) = v109 ^ LODWORD(STACK[0x3B0]);
  *&v115 = v109 ^ 0xCCF491F1A2B80000;
  v116 = (v115 >> 19) ^ v109;
  v117 = ((v110 << 58) ^ 0x5800000000000000) - 0x2321FF2997C31D54 - ((2 * ((v110 << 58) ^ 0x5800000000000000)) & 0xBFFFFFFFFFFFFFFFLL);
  *(&v115 + 1) = v116 ^ 0xA00A;
  *&v115 = v116 ^ 0xCCF491F1A2BC0000;
  v118 = (v115 >> 17) ^ __ROR8__(v109, 45) & 0xFFFF80000007FFFFLL;
  *(&v115 + 1) = v118 ^ 0x2C527751D47ALL;
  *&v115 = v118 ^ 0x1FDC800000000000;
  v119 = ((v110 >> 1) ^ 0x194018E685F1ECABLL | v113) ^ (v110 << 63) ^ ((v110 >> 1) ^ 0x194018E685F1ECABLL) & v113;
  v120 = (v115 >> 47) ^ (v109 << 36);
  v121 = v111 ^ (v111 >> 39) ^ (8 * v111) ^ (v111 >> 61) ^ (v111 << 25);
  *(&v115 + 1) = v108 ^ 0xF;
  *&v115 = v108 ^ 0x3CE529C90D3F0A00;
  v122 = v108 ^ (v108 >> 41) ^ (v115 >> 7);
  v123 = (v122 & 0x200000000000000 ^ 0xFF67F7FC13FC3F97) + 2 * (v122 & 0x200000000000000);
  v124 = v123 + 0x46BF7D3BEFFBD170;
  v125 = ((v108 << 23) ^ 0xE4869F8507800000) + 0x1EBACFBAA8FDAE6ALL - ((2 * ((v108 << 23) ^ 0xE4869F8507800000)) & 0x3D759F7551000000);
  v126 = (v119 ^ 0xDCB60169B03121EALL ^ ((((v119 ^ 0x5483E213E044DC72 ^ v114) + (v114 ^ 0xAB7C1DEC1FBB238DLL)) ^ (v119 - 1)) - 0x2349FE964FCEDE16 - ((2 * (((v119 ^ 0x5483E213E044DC72 ^ v114) + (v114 ^ 0xAB7C1DEC1FBB238DLL)) ^ (v119 - 1))) & 0xB96C02D3606243D4))) + (v114 ^ 0x5483E213E044DC72);
  v127 = v122 & 0xFDFFFFFFFFFFFFFFLL;
  v128 = v123 + 0x980803EC03C069;
  v129 = v126 ^ v117;
  v130 = 0x458F6D3417F4509ELL - v123;
  if ((v128 & (v125 ^ 0x1E00000000000000)) != 0)
  {
    v131 = v130;
  }

  else
  {
    v131 = v124;
  }

  v132 = v129 ^ v121;
  v133 = ((v125 ^ 0x1EBACFBAA8FDAE6ALL) - 0x4627753803F81107 + v131) ^ v127;
  v134 = v112 ^ (v112 << 47) ^ ((v112 >> 10) ^ (v112 >> 17) | (v112 << 54));
  v135 = v120 ^ v133;
  v136 = (v134 & 0x80000 | ((((v134 & 0x80000) >> 19) & 1) << 20)) ^ 0x74C7DEFF37EFADE4;
  v137 = v136 - 0x1001C03201C80D40;
  v138 = v135 ^ (v129 ^ 0xDCDE00D6683CE2ACLL) & (v121 ^ 0xD54ECF18E1F44A12);
  v139 = v134 & 0xFFFFFFFFFFF7FFFFLL;
  v140 = v136 - 0x74C7DEFF37EFADE4;
  v141 = 0xD98DFDCC6E174E88 - v136;
  if (((v133 ^ 0x3CE529C90D200000) & v140) == 0)
  {
    v141 = v137;
  }

  v142 = (v133 ^ 0x3CE529C90D21789BLL) - 0x64C61ECD3627A0A4 + v141 - 0x7734C2F6AF7E23F1 - ((2 * ((v133 ^ 0x3CE529C90D21789BLL) - 0x64C61ECD3627A0A4 + v141)) & 0x11967A12A103B81ELL);
  v143 = (((v129 ^ v121 ^ 0x990CFCE89C8A8BELL) & (v134 ^ 0x1B572C2F93D12447)) - ((2 * ((v129 ^ v121 ^ 0x990CFCE89C8A8BELL) & (v134 ^ 0x1B572C2F93D12447))) & 0xE17FC8BAF2958654) + 0x70BFE45D794AC32ALL) ^ v121 ^ v138;
  v144 = v142 ^ v139;
  v145 = v142 ^ v139 ^ (v135 ^ 0xB07438399563A7C7) & (v121 ^ 0x2AB130E71E0BB5EDLL);
  v146 = (v142 ^ 0x88CB3D095081DC0FLL) & (v134 ^ 0xE4A8D3D06C2EDBB8);
  v147 = v145 ^ v138;
  v148 = (v143 ^ 0xEA7AEC83F222D100) - ((2 * (v143 ^ 0xEA7AEC83F222D100) + 2) & 0xC8977587658E1C70) + 0x644BBAC3B2C70E39;
  v149 = 0x47C8862A0FAE62C2 - (v143 ^ 0x4691AF1D6EEA6066) - ((0xA62978C2C66E9D32 - 2 * (v143 ^ 0x4691AF1D6EEA6066)) & 0xE967939158EE2852);
  v150 = (v148 & 0x8000000 ^ 0xF7FB46FEDEFE7FAFLL) + 2 * (v148 & 0x8000000);
  v151 = v150 + 0x4FFFFB6F3F7DA3DDLL;
  v152 = v148 & 0xFFFFFFFFF7FFFFFFLL;
  v153 = (v144 ^ 0x6C63EED93CAF07B7) & (v135 ^ 0x4F8BC7C66A9C5838);
  v154 = v150 + 0x804B90121018051;
  v155 = 0x3FF6896CFD7AA33BLL - v150;
  if ((v154 & (v149 ^ 0xF4B3C9C8AC771429)) == 0)
  {
    v155 = v151;
  }

  v156 = v146 ^ v132;
  v157 = v134 ^ 0x6DA64C04D36B13D5 ^ (v153 - ((2 * v153) & 0xEDE2C05681746F24) + 0x76F1602B40BA3792);
  v158 = (v157 - ((2 * v157) & 0xF385AB260EFC3918) + 0x79C2D593077E1C8CLL) ^ v156;
  v159 = v143 ^ v152 ^ 0x71CEA9BFBF1A20C7 ^ ((v149 ^ 0xF4B3C9C8AC771429) - 0x47FB426E1E7C238CLL + v155);
  v160 = v159 - ((2 * v159 + 0x262978C2C66E9D32) & 0x6069D825D362EFCELL) + 0x349A8744CE8C680;
  v161 = (v158 ^ 0x8FADE5A271494BCDLL) >> 10;
  *(&v163 + 1) = v147 ^ LODWORD(STACK[0x3B4]);
  *&v163 = v147 ^ 0x51B1DBDDBBB80000;
  v162 = v163 >> 19;
  *(&v163 + 1) = v156;
  *&v163 = v156 ^ 0x5D767ABA349A50;
  v164 = v163 >> 1;
  v165 = (v145 >> 7) ^ (v145 << 23) ^ ((v145 >> 41) | (v145 << 57));
  v166 = v165 ^ v145;
  v167 = ((v158 ^ 0x987461B11F92B5ECLL ^ ((((v161 ^ 0x35EAC407DA0756) - (v158 ^ 0x58331F791E8E1558 ^ v161)) ^ ((v158 ^ 0xA7F90A42E6ABEDF1) + 1)) - ((2 * (((v161 ^ 0x35EAC407DA0756) - (v158 ^ 0x58331F791E8E1558 ^ v161)) ^ ((v158 ^ 0xA7F90A42E6ABEDF1) + 1))) & 0x80E528180D8D4FC4) - 0x3F8D6BF3F939581ELL)) + (v161 ^ 0x35EAC407DA0756)) ^ ((((v158 ^ 0x8FADE5A271494BCDLL) << 54) ^ (v158 << 47)) & 0xFFFF800000000000 | ((v158 ^ 0x8FADE5A271494BCDLL) >> 17));
  *(&v163 + 1) = v160 ^ 0x1034EC12E9B177E7;
  *&v163 = v160 ^ 0xBFFFFFFFFFFFFFFFLL;
  v168 = v163 >> 61;
  *&v163 = __ROR8__(v147, 28);
  v169 = (v162 ^ v163 ^ 0xBBAD1CD51B1DBDDBLL) - ((2 * (v162 ^ v163 ^ 0xBBAD1CD51B1DBDDBLL)) & 0x768E2A27CE4188B0) + 0x3B471513E720C458;
  v170 = v160 ^ __ROR8__(v160, 39) ^ v168;
  *&v163 = __ROR8__(v156, 6);
  v171 = ((v164 ^ v163 ^ 0x43D9BCC0C5D8DD5DLL) - ((2 * (v164 ^ v163 ^ 0x43D9BCC0C5D8DD5DLL)) & 0x23DB73D26E80972) + 0x11EDB9E937404B9) ^ v156 ^ v170;
  v172 = v165 ^ v138 ^ v169;
  v173 = (v171 ^ 0x977CEA0020A18FE2) & (v170 ^ 0x6A187102D92EE1C0) ^ v172;
  *(&v163 + 1) = v167 ^ v166 ^ 0x7F3;
  *&v163 = v167 ^ v166 ^ 0x5308AE0BB6A38000;
  v174 = v163 >> 12;
  v175 = v167 ^ v166 ^ (v170 ^ 0x95E78EFD26D11E3FLL) & (v172 ^ 0xBFC6F4EF9DC9D997);
  v176 = (v167 ^ 0x8638942A77F04BF1) & (v166 ^ 0xF2EA65FAC0310311) ^ v167 & 0xD825A024FE9D30ECLL;
  v177 = v70 & 0x13;
  LOBYTE(v164) = v70 & 0x13 ^ 0x10;
  v178 = v175 ^ v173;
  *(&v163 + 1) = v174 ^ 0x407448A27B90DLL;
  *&v163 = v174 ^ 0xF680000000000000;
  v179 = (((v167 ^ 0x79C76BD5880FB40ELL) & (v171 ^ 0x688315FFDF5E701DLL)) - ((2 * ((v167 ^ 0x79C76BD5880FB40ELL) & (v171 ^ 0x688315FFDF5E701DLL))) & 0x996AA75B10A58786) - 0x334AAC5277AD3C3DLL) ^ v170;
  v180 = (v176 ^ 0xC8BA243188D9B707 ^ ((((v171 ^ 0x977CEA0020A18FE2) - (v171 ^ 0x175C6A2056318F02 ^ v176)) ^ ((v176 ^ 0x7FDF7FDF896FFF1FLL) + 1)) - ((2 * (((v171 ^ 0x977CEA0020A18FE2) - (v171 ^ 0x175C6A2056318F02 ^ v176)) ^ ((v176 ^ 0x7FDF7FDF896FFF1FLL) + 1))) & 0x91354823FC936FCELL) + 0x489AA411FE49B7E7)) + (v171 ^ 0x977CEA0020A18FE2);
  v181 = v180 - 0x3C51D94F49818FD6 - ((2 * v180) & 0x875C4D616CFCE054);
  v182 = ((v163 >> 52) ^ 0xBF8BB75D846F2097) & (v172 ^ 0x40390B1062362668) ^ v167;
  v183 = v182 ^ 0x11FFDE07BE7BF396;
  v184 = v181 ^ 0xC3AE26B0B67E702ALL | v182 ^ 0x79C76BD5880FB40ELL;
  v185 = (v175 ^ v173) >> 28;
  v186 = (v175 ^ v173 ^ 0x42873B48145113DELL) >> v164;
  *(&v163 + 1) = v175 ^ 0x5308AE0BB6A387F3;
  *&v163 = v175;
  v187 = v163 >> 63;
  v188 = v182 ^ 0x2DAE0748F7FA7C43 ^ v181;
  v189 = (v186 >> (v177 ^ 3u)) - ((2 * (v186 >> (v177 ^ 3u))) & 0x38E6174CFF93BFDCLL) + 0x1C730BA67FC9DFEELL;
  if (v95 == 0xC342E514B6082357)
  {
    v188 = v183;
  }

  v190 = ((v179 ^ 0x5952DD50AE83DDFCLL) + 0x4A5E493939FC453CLL - 2 * ((v179 ^ 0x5952DD50AE83DDFCLL) & 0x4A5E493939FC453FLL ^ v179 & 3)) ^ v173;
  v191 = (v188 ^ 0x6838B5D236744798) & (v181 ^ 0xC3AE26B0B67E702ALL) ^ v184;
  *(&v193 + 1) = v190 ^ 0x1EF3969AA4CD44B9;
  *&v193 = v190 ^ 0x2000000000000000;
  v192 = v193 >> 61;
  *(&v193 + 1) = v187;
  *&v193 = v187 ^ 0xD00D34CB0B2E382ALL;
  v194 = v193 >> 1;
  *(&v193 + 1) = v191 ^ 0x1C2;
  *&v193 = v191 ^ 0xEFC72B97B4AAAC00;
  v195 = v193 >> 10;
  *(&v193 + 1) = v180;
  *&v193 = v181 ^ 0xF49DF23C729EC9E4;
  v196 = v193 >> 1;
  *(&v193 + 1) = v194 ^ 0x70;
  *&v193 = v194 ^ 0x1AFC681013E14680;
  v197 = v190 ^ __ROR8__(v190, 39) ^ v192;
  v198 = v191 ^ __ROR8__(v191, 17) ^ v195;
  v199 = v181 ^ __ROR8__(v181, 6) ^ v196;
  v200 = v194 ^ __ROR8__(v194, 41) ^ (v193 >> 7);
  v201 = v199 ^ v197;
  v202 = v198 ^ v200 ^ 0x8AD8003A70D9DF05;
  v203 = (v198 ^ 0x3BA05A87FDC9A796) & (v199 ^ v197 ^ 0x930A7618AA1BEEA8);
  v204 = (v199 ^ v197) & 0x828606F3DCA8D001;
  v205 = v178 ^ (v178 << 36) ^ (v185 | (v178 << 45)) ^ v189 ^ v200;
  v206 = v205 ^ 0x51A306380120CC59 ^ (v199 ^ 0x674F85F48354B2C3) & (v197 ^ 0xF445F3EC294F5C6BLL);
  v207 = v202 ^ (v197 ^ 0xBBA0C13D6B0A394) & (v205 ^ 0xD494AA46D7F8BF8ALL);
  v208 = v204 ^ v197 ^ v203;
  *(&v193 + 1) = v208 ^ 0x86394;
  *&v193 = v208 ^ 0x89B80A035EB00000;
  v209 = v193 >> 20;
  v210 = (((2 * v202) ^ 0xBDE876058B56DF53) + (v198 ^ v200 ^ 0xABD3C4C74A8D4F53)) & (v205 ^ 0x2B6B55B928074075);
  *(&v193 + 1) = v209 ^ 0xD6F79396BA5;
  *&v193 = v209 ^ 0x5C04E00000000000;
  v211 = ((2 * (v207 ^ v206)) & 0x3560AAA15FAAEBDCLL ^ 0xCAFFD55FF95DD72BLL) + (v207 ^ v206 ^ 0x5BC3977C13731C7ALL);
  v212 = v211 - ((2 * v211 + 0x3560AAA15FAAEBDELL) & 0x2207919E020FBB3ALL) + 0x2BB41E1FB0DD538CLL;
  v213 = (v198 ^ 0x46D9A38BDE9E8868) & (v200 ^ 0x12F598B36BEC38C4) ^ v201;
  v214 = ((v193 >> 44) - ((2 * (v193 >> 44)) & 0xF590A702524F1858) + 0x7AC8538129278C2CLL) ^ v206;
  v215 = v210 ^ v198;
  v216 = ((8 * v214) ^ 0x2F154648C7FB7378) - ((2 * ((8 * v214) ^ 0x2F154648C7FB7378)) & 0xC2462A8FA4B1DB20) + 0x61231547D258ED97;
  v217 = v213 >> 6;
  *(&v193 + 1) = v212 ^ 0x7DD9D;
  *&v193 = v212 ^ 0x1103C8CF01000000;
  v218 = v193 >> 19;
  v219 = ((v214 ^ 0x65E2A8C918FF6E6FLL) >> (v214 & 0x3D ^ 0x2D) >> (v214 & 0x3D ^ 0x10)) ^ v214;
  v220 = v216 & 0xAA7968929BDB5750 ^ v219 & 0xAA7968929BDB5752 ^ 0x4128828A830352;
  v221 = (v213 ^ 0xC9EBCFA1BDCD7A6ELL ^ ((((v215 ^ 0xB9265C7421617797) - (v213 ^ 0xD5D3D593748566C0 ^ v215)) ^ ((v213 ^ 0x930A7618AA1BEEA8) + 1)) - ((2 * (((v215 ^ 0xB9265C7421617797) - (v213 ^ 0xD5D3D593748566C0 ^ v215)) ^ ((v213 ^ 0x930A7618AA1BEEA8) + 1))) & 0x4A3C8C8DD052D672) - 0x5AE1B9B917D694C7)) + (v215 ^ 0xB9265C7421617797);
  v222 = ((v214 << 25) ^ 0x9231FEDCDE000000) - ((2 * ((v214 << 25) ^ 0x9231FEDCDE000000)) & 0x4B835E345C000000) + 0x25C1AF1A2E30548DLL;
  v223 = v222 & 0xAE5BBC2DDC000000;
  v224 = v219 ^ 0xCF9BC05B8324393DLL;
  v225 = v216 & 0x5586976D6424A8A8;
  v226 = v219 ^ 0x65E2A8C918FF6E6FLL;
  if (v117 == 0xDCDE00D6683CE2ACLL)
  {
    v224 = 0x5586976D6424A8ADLL;
  }

  v227 = __ROR8__(v212, 28);
  v228 = (v218 ^ v227 ^ 0x107DD9D1103C8CF0) + 0x1103C8CF0107DD9DLL - 2 * ((v218 ^ v227 ^ 0x107DD9D1103C8CF0) & 0x1103C8CF0107DD9FLL ^ (v218 ^ v227) & 2);
  v229 = ((v225 ^ 0x410215454000A880 ^ v224 & v226) + v220) ^ (v214 >> 39);
  *(&v231 + 1) = ~v213;
  *&v231 = v213 ^ 0x443E8312C4223A90;
  v230 = v231 >> 1;
  v232 = v223 ^ 0x2441AC080C4B8111 ^ v229 & 0xAE5BBC2DDC5BB3B1;
  v233 = v223 ^ 0x2441AC080C000000;
  *(&v231 + 1) = v221 ^ 0x32;
  *&v231 = v221 ^ 0x762C8944F6E60400;
  v235 = v231 >> 10;
  v236 = v230 ^ v213;
  v237 = (v217 & 0x20000000000 | 0xBEDA20E33CE2FC4FLL) ^ v236;
  if (v49 == 0x1F2D353D76E4DB30)
  {
    v237 = v217 & 0x20000000000 | 0x51B5C0E073F3921;
  }

  if (((v237 ^ 0x51B5E0E073F3921) & (v236 ^ 0x443E8312C4223A91)) != 0)
  {
    v238 = 0x51B5E0E073F3921 - (v217 & 0x20000000000 ^ 0x20000000000) - ((-2 * (v217 & 0x20000000000 ^ 0x20000000000)) & 0xA36BC0000000000);
  }

  else
  {
    v238 = v217 & 0x20000000000 | 0x51B5C0E073F3921;
  }

  v239 = (v207 << 23) ^ (v207 << 57) ^ ((v207 ^ (v207 >> 7) ^ 0x30F37FCEA12D2263) + ((v207 >> 41) ^ 0x18492D) - 2 * ((v207 ^ (v207 >> 7) ^ 0x2D2263) & ((v207 >> 41) ^ 0x18492D)));
  v240 = v221 ^ __ROR8__(v221, 17) ^ v235;
  v241 = __ROR8__(v217, 32) & 0xFFFFFFFF03FFFDFFLL;
  v242 = v212 ^ v239 ^ v228;
  v234 = (v233 - v232) ^ ((v229 & 0xAE5BBC2DDC5BB3B1 ^ 0xFFFFFFFFFFB47EEELL) + 1);
  v243 = ((v229 & 0xAE5BBC2DDC5BB3B1 ^ 0x1A5F41BB8652AE76 ^ (v234 - ((2 * v234) & 0x34BE83770C325ECELL) + 0x1A5F41BB86192F67)) + v233) | v222 & 0x51A443D222000000 ^ 0x180031222804440 ^ v229 & 0x51A443D223A44C4ELL;
  v244 = v243 + 0x7292FF184A290772 - ((2 * v243) & 0xE525FE3094520EE4);
  *(&v245 + 1) = v236 ^ 0xC4223A91;
  *&v245 = (v238 ^ 0x51B5E0E073F3921) + (v236 ^ 0x443E8312C4223A91);
  v246 = v240 ^ v239;
  v247 = (v245 >> 32) ^ v241 ^ 0x9F7E2A8A00000000;
  *(&v245 + 1) = DWORD1(v245) ^ v241 ^ 0x901EF3E7;
  *&v245 = v247;
  v248 = (v245 >> 32) ^ (v213 << 58) ^ v244;
  v249 = v248 ^ (v240 ^ 0x8BCA4DAD4DBB80BELL) & (v239 ^ 0x8228C71F0F800000);
  v250 = v248 ^ 0x58630B0C61B85AEDLL;
  v251 = (v248 ^ 0xA79CF4F39E47A512) & (v244 ^ 0x8D6D00E7B5D6F88DLL) ^ v242;
  v252 = v246 ^ 0x9E28AB2423B80BELL;
  v253 = (v244 ^ 0x7292FF184A290772) & (v242 ^ 0x7DD738E0F07FFFFFLL) ^ v246;
  v254 = v251 ^ v253;
  v255 = (v242 ^ 0x8228C71F0F800000) & v252 ^ v240;
  v256 = (v249 ^ 0xA79CF4F39E47A512) - (v249 ^ 0xEEEE7AD2E800E60) - 0x5C0EE169A757DE76 - ((2 * ((v249 ^ 0xA79CF4F39E47A512) - (v249 ^ 0xEEEE7AD2E800E60))) & 0x47E23D2CB1504314);
  v257 = v251 ^ v244 ^ ((v250 & (v240 ^ 0x7435B252B2447F41)) + 0x7292FF184A290772 - ((2 * (v250 & (v240 ^ 0x7435B252B2447F41))) & 0xE525FE3094520EE4));
  v258 = v255 ^ v249;
  v259 = (v256 & 0x4000 ^ v256 & 0xFFFFFFFFFFFFBFFFLL ^ 0xA3F11E9658A8218ALL ^ 0xFFFFFFFFFFFFFFFCLL) + (v249 ^ 0xA79CF4F39E47A512);
  v260 = v259 - 0x21B26AB7745DCB10 - ((2 * v259) & 0xBC9B2A91174469E0);
  *(&v245 + 1) = v257 ^ 0x13A3AD759DF39A52;
  *&v245 = v257 ^ 0x8000000000000000;
  v261 = ((v245 >> 61) - ((2 * (v245 >> 61)) & 0x72B2D027CDBAB894) - 0x46A697EC1922A3B6) ^ v257;
  *(&v245 + 1) = v254 ^ 0x7DC87;
  *&v245 = v254 ^ 0x640ADEB1DBD80000;
  v262 = v254 ^ __ROR8__(v254, 28) ^ (v245 >> 19);
  *(&v245 + 1) = v261 ^ 0x183F48;
  *&v245 = v261 ^ 0x9CAB5A312F000000;
  v263 = v245 >> 23;
  *(&v245 + 1) = v259;
  *&v245 = v260 ^ 0xDE4D95488BA234F0;
  v264 = v245 >> 1;
  *(&v245 + 1) = v263 ^ 0x16CA33EAEA8;
  *&v245 = v263 ^ 0x6DF2A00000000000;
  v265 = v245 >> 41;
  v266 = 0xBA71F6997DB851C0 - ((v259 << 59) & 0x7000000000000000) + ((v260 << 58) ^ 0xC000000000000000);
  *(&v245 + 1) = v258 ^ 0xE4;
  *&v245 = v258 ^ 0x1CFA3F9E2FB6400;
  v267 = v245 >> 10;
  v268 = v260 ^ (v260 >> 6) ^ v264;
  v269 = (v268 ^ 0x5C00000000000000) & (v266 ^ 0x3A71F6997DB851C0);
  v18[72] = BYTE1(v262) ^ 0x37;
  *(v13 + 277) = BYTE2(v262) ^ 0x72;
  v270 = (v268 ^ 0xDD34A31DA98CBC23) + (v266 ^ 0xBA71F6997DB851C0);
  v271 = 41 * (BYTE4(v262) ^ 0xC7) - ((82 * (BYTE4(v262) ^ 0xC7)) & 0xD0);
  *(&v245 + 1) = v258 ^ 0x164E4;
  *&v245 = v258 ^ 0x1CFA3F9E2FA0000;
  v272 = v245 >> 17;
  *(v13 + 410) = BYTE3(v262) ^ 0x9B;
  if ((v262 & 0x20) != 0)
  {
    v273 = 14;
  }

  else
  {
    v273 = 78;
  }

  v274 = (v262 ^ 0x9A) + v273;
  v275 = v265 ^ (v257 >> 39);
  v276 = v275 ^ (v257 << 25);
  v277 = v270 - 2 * v269;
  v18[86] = (v274 - 46) ^ 0x20;
  v278 = v267 ^ v258 ^ v272;
  v279 = STACK[0x848];
  v280 = *(STACK[0x848] + ((v271 + 104) ^ 0xFLL));
  *(v13 + 232) = BYTE6(v262) ^ 0xF7;
  *(v13 + 197) = v275 ^ 0x5A;
  v18[20] = HIBYTE(v262) ^ 0xD9;
  *(v13 + 212) = v280 ^ (((v271 + 104) ^ 0x27) + ((v271 + 104) ^ 0xE4)) ^ 0x32;
  *(v13 + 45) = BYTE5(v262) ^ 0x16;
  v281 = *(v23 + 542 + (((BYTE1(v275) ^ 0x47) + 42) ^ 0x2ELL));
  v282 = (v281 | 0xFFFFFFF9) - ((2 * v281) & 4);
  v283 = ((v282 + 58) & 0x35 ^ v281 & 0x31 | (-59 - v282) & 0xFFFFFFCA ^ v281 & 0xC8) + ~(2 * (((v282 + 58) & 0x35 ^ v281 & 0x31 | (-59 - v282) & 0xFFFFFFCA ^ v281 & 0xC8) & 0x3A ^ ((-59 - v282) & 0xFFFFFFCA ^ v281 & 0xC8) & 8)) + 51;
  v284 = (v283 >> 3) & 0x14;
  v285 = ((v284 ^ v283) & 0xFFFFFFC6 | v283 & 9) ^ 6;
  v286 = v285 - ((2 * v285) & 0xFFFFFF88) + 68;
  v287 = (v284 ^ ~v283 | 0xFFFFFFCF) - ((2 * (v284 ^ ~v283)) & 0x20) - 61;
  v288 = v287 ^ 0x19 ^ v286;
  v287 ^= 0x5Du;
  v289 = (((v287 - v288) ^ ((v286 ^ 0xFFFFFFBB) + 1)) - ((2 * ((v287 - v288) ^ ((v286 ^ 0xFFFFFFBB) + 1))) & 0xFFFFFF88) + 68) ^ v286;
  v290 = ((2 * (v289 + v287)) & 0xFFFFFFD4) + ((v289 + v287) ^ 0xFFFFFFEA);
  v291 = 41 * (HIDWORD(v276) ^ 0xEB3BE734) - 38492409 - ((82 * (HIDWORD(v276) ^ 0xEB3BE734)) & 0xFB694E90) + 65;
  HIDWORD(v292) = v290 + 6;
  LODWORD(v292) = (v290 << 24) + 369098752;
  *(v13 + 186) = v292 >> 28;
  v293 = *(v23 + 542 + ((((2 * ((BYTE2(v275) ^ 0x27) - ((2 * (BYTE2(v275) ^ 0x27)) & 0xA0) + 80)) & 0x55) + (((BYTE2(v275) ^ 0x27) - ((2 * (BYTE2(v275) ^ 0x27)) & 0xA0) + 80) ^ 0x7A)) ^ 0x2ELL));
  v294 = (~v293 >> 3) & 0x14 | 0xFFFFFF89;
  v18[41] = BYTE3(v276) ^ 0xA5;
  HIDWORD(v292) = v294 ^ ~v293;
  LODWORD(v292) = (v294 ^ v293 ^ 0xFFFFFFBF) << 24;
  *(v13 + 174) = v292 >> 28;
  v295 = *(v279 + ((41 * (BYTE4(v276) ^ 0x34) + 7 - ((82 * (BYTE4(v276) ^ 0x34)) & 0x90) + 65) ^ 0x2FLL));
  v296 = (v291 ^ 0xFDB4A707) + (v291 ^ 0xFDB4A7C4) - ((2 * ((v291 ^ 0xFDB4A707) + (v291 ^ 0xFDB4A7C4))) & 0xD0B89592) + 1750878921;
  LOBYTE(v294) = ((2 * v296) ^ 0x92) - ((2 * ((2 * v296) ^ 0x92)) & 8) + 4;
  *(v13 + 326) = BYTE5(v276) ^ 0xE7;
  v18[205] = BYTE6(v276) ^ 0x3B;
  v297 = (v294 & 0xFE | (v296 >> 7) & 1) ^ 5;
  v298 = (v295 >> 7) | (2 * v295);
  v299 = v297 - 2 * (v297 & 0x3F ^ v294 & 8) - 73;
  *(v13 + 390) = HIBYTE(v276) ^ 0xEB;
  HIDWORD(v292) = (v299 ^ ((v299 ^ 0x48) + 1) ^ 0xFFFFFFB7 ^ (((((v299 ^ 0xFFFFFFC8) + ((2 * v299) & 0xFFFFFFF3 ^ 0x62) + 7) ^ v298 ^ 0xFFFFFFA6 | 0x78) & (((v294 ^ 0xFB) + ((2 * v294) & 0xF3) + 7) ^ v298 ^ 0xA6 | 0xFFFFFF87)) - (v298 ^ 0x20))) + (v298 ^ 0xFFFFFFDF);
  LODWORD(v292) = (((HIDWORD(v292) ^ 0x75) + ((2 * HIDWORD(v292)) & 0xEA)) << 24) - 1962934272;
  v300 = 41 * (BYTE4(v268) ^ 0x1D) - ((82 * (BYTE4(v268) ^ 0x1D)) & 0x84) + 66;
  v18[143] = BYTE2(v268) ^ 0x8C;
  v18[161] = BYTE1(v268) ^ 0xBC;
  v18[21] = v268 ^ 0x23;
  v18[186] = ((v292 >> 25) - ((2 * (v292 >> 25)) & 0x87) + 67) ^ 0x9E;
  v18[122] = BYTE3(v268) ^ 0xA9;
  LOBYTE(v299) = (v300 ^ 0xD) + (v300 ^ 0xCE);
  v301 = *(v279 + (v300 ^ 0x25));
  v18[204] = BYTE6(v268) ^ 0x34;
  v18[108] = HIBYTE(v277);
  LOBYTE(v298) = 41 * (BYTE4(v278) ^ 0xF9) - ((82 * (BYTE4(v278) ^ 0xF9)) & 0xE0) + 112;
  *(v13 + 116) = v301 ^ v299 ^ 0x32;
  *(v13 + 183) = BYTE5(v268) ^ 0xA3;
  v18[88] = BYTE2(v278) ^ 0xFB;
  *(v13 + 322) = BYTE1(v278) ^ 0x64;
  v302 = (v298 & 0xB0 ^ 0x7F) + 1540732497 - ((2 * (v298 & 0xB0 ^ 0x7F)) & 0xA2);
  v303 = ((v302 ^ 0x5BD5B651) - (v298 ^ 0x3F)) ^ v302;
  v18[77] = BYTE3(v278) ^ 0xE2;
  *(v13 + 105) = v278 ^ 0xE4;
  *(v13 + 134) = *(v279 + (v303 ^ 0x5BD5B679u)) ^ ((v303 ^ 0x51) + (v303 ^ 0x92)) ^ 0x32;
  v304 = *(v23 + 542 + ((((BYTE5(v278) ^ 0xA2) + 42) & 0xFE | (v278 >> 40) & 1) ^ 0x2F));
  *(v13 + 5) = HIBYTE(v278) ^ 1;
  v18[134] = ~((v253 >> 7) ^ (v253 >> 41) ^ v253);
  *(v13 + 100) = (((v253 >> 7) ^ (v253 >> 41) ^ v253) >> 8) ^ 1;
  *(&v306 + 1) = v253 ^ 0x1F5C702;
  *&v306 = v253 ^ 0x1285573A3E000000;
  v305 = v306 >> 25;
  *(&v306 + 1) = v305 ^ 0x30F7;
  *&v306 = v305 ^ 0xBB142A8000000000;
  v18[193] = (v278 ^ 0x1CFA3F9E2FB64E4) >> (v149 & 0x30 ^ 0x20) >> (v149 & 0x30 ^ 0x10);
  v307 = ((v253 >> 7) ^ (v253 >> 41) | (v253 << 57)) ^ v253 ^ ((v306 >> 39) << 23);
  *(v13 + 319) = (((v253 >> 7) ^ (v253 >> 41) ^ v253 ^ ((v306 >> 39) << 23)) >> 16) ^ 0x59;
  v18[126] = HIBYTE(v307) ^ 0x58;
  *(v13 + 87) = BYTE5(v307) ^ 0x48;
  v308 = (v304 >> 3) & 0x14 ^ v304;
  DWORD1(v306) = v308 ^ 2;
  LODWORD(v306) = (v308 ^ 0x20) << 24;
  *(v13 + 38) = v306 >> 28;
  *(v13 + 60) = BYTE4(v307) ^ 0x81;
  *(v13 + 168) = BYTE3(v307) ^ 0x67;
  LODWORD(STACK[0xC3C]) = STACK[0x850];
  v18[26] = BYTE6(v307) ^ 0x3D;
  *(*STACK[0xB70] + 300) = LODWORD(STACK[0xC3C]) - 1256680315;
  return (*(STACK[0xBD8] + 8 * ((38 * ((STACK[0xBD0] & 1) == 0)) | LODWORD(STACK[0xBC0]))))();
}

uint64_t sub_244BA99DC@<X0>(int a1@<W1>, int a2@<W8>)
{
  LODWORD(STACK[0xB38]) = 0;
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xAC8]) = 0;
  LODWORD(STACK[0xA70]) = 0;
  LODWORD(STACK[0xA18]) = 0;
  LODWORD(STACK[0x808]) = 0;
  LODWORD(STACK[0x814]) = 0;
  LODWORD(STACK[0x9A0]) = 0;
  LODWORD(STACK[0x920]) = 0;
  LODWORD(STACK[0xAC0]) = 0;
  LODWORD(STACK[0xA48]) = 0;
  LODWORD(STACK[0x9A8]) = 0;
  LODWORD(STACK[0x9B8]) = 0;
  LODWORD(STACK[0xA54]) = 0;
  LODWORD(STACK[0x818]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0x828]) = 0;
  LODWORD(STACK[0x9C4]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0xAA8]) = 0;
  LODWORD(STACK[0x9E8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  v3 = *(v2 + 8 * ((a2 ^ 0x223B) - 12712));
  LODWORD(STACK[0x68C]) = a1 ^ 0x40E81261;
  LODWORD(STACK[0xAB8]) = 80;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xA28]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v3();
}

uint64_t sub_244BA9C6C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xA28]) = 0;
  LODWORD(STACK[0xAC0]) = 0;
  LODWORD(STACK[0xA48]) = 0;
  LODWORD(STACK[0x9B8]) = 0;
  LODWORD(STACK[0xA54]) = 0;
  LODWORD(STACK[0x818]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0x828]) = 0;
  LODWORD(STACK[0x9C4]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0x76C]) = a2 ^ 0xC93CD285;
  v7 = *(v6 + 8 * (a6 - 12712));
  LODWORD(STACK[0xAB8]) = 54;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xAC8]) = 1;
  LODWORD(STACK[0xA70]) = 1;
  LODWORD(STACK[0xA18]) = 1;
  LODWORD(STACK[0x808]) = 1;
  LODWORD(STACK[0x814]) = 1;
  LODWORD(STACK[0x9A0]) = 1;
  LODWORD(STACK[0x920]) = 1;
  LODWORD(STACK[0x9A8]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v7();
}

uint64_t sub_244BA9E78@<X0>(int a1@<W3>, int a2@<W8>)
{
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xAC8]) = 0;
  LODWORD(STACK[0xA70]) = 0;
  LODWORD(STACK[0xA18]) = 0;
  LODWORD(STACK[0x808]) = 0;
  LODWORD(STACK[0x814]) = 0;
  LODWORD(STACK[0x9A0]) = 0;
  LODWORD(STACK[0x920]) = 0;
  LODWORD(STACK[0xAC0]) = 0;
  LODWORD(STACK[0xA48]) = 0;
  LODWORD(STACK[0x9A8]) = 0;
  LODWORD(STACK[0x9B8]) = 0;
  LODWORD(STACK[0xA54]) = 0;
  LODWORD(STACK[0x818]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0x828]) = 0;
  LODWORD(STACK[0x9C4]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0xAA8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x830]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0x900]) = a2 + a1 - ((((v2 - 1291079120) & 0x4CF47F77) + 2 * a2 - 1844098734) & v4);
  v5 = *(v3 + 8 * v2);
  LODWORD(STACK[0xAB8]) = 76;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xA28]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x834]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v5();
}

uint64_t sub_244BAA09C@<X0>(int a1@<W1>, int a2@<W8>)
{
  LODWORD(STACK[0xA28]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0x760]) = a1 ^ 0x5DA2C160;
  v4 = *(v3 + 8 * ((a2 ^ v2) - 12712));
  LODWORD(STACK[0xAB8]) = 39;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xB58]) = 1;
  LODWORD(STACK[0xAC8]) = 1;
  LODWORD(STACK[0xA70]) = 1;
  LODWORD(STACK[0xA18]) = 1;
  LODWORD(STACK[0x808]) = 1;
  LODWORD(STACK[0x814]) = 1;
  LODWORD(STACK[0x9A0]) = 1;
  LODWORD(STACK[0x920]) = 1;
  LODWORD(STACK[0xAC0]) = 1;
  LODWORD(STACK[0xA48]) = 1;
  LODWORD(STACK[0x9A8]) = 1;
  LODWORD(STACK[0x9B8]) = 1;
  LODWORD(STACK[0xA54]) = 1;
  LODWORD(STACK[0x818]) = 1;
  LODWORD(STACK[0xB28]) = 1;
  LODWORD(STACK[0xAF0]) = 1;
  LODWORD(STACK[0xA68]) = 1;
  LODWORD(STACK[0xA20]) = 1;
  LODWORD(STACK[0x828]) = 1;
  LODWORD(STACK[0x9C4]) = 1;
  LODWORD(STACK[0xA30]) = 1;
  LODWORD(STACK[0x9C8]) = 1;
  LODWORD(STACK[0xB30]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v4();
}

uint64_t sub_244BAA228@<X0>(int a1@<W5>, int a2@<W8>)
{
  LODWORD(STACK[0xB38]) = 0;
  LODWORD(STACK[0xAB0]) = 0;
  LODWORD(STACK[0xA08]) = 0;
  LODWORD(STACK[0xA60]) = 0;
  LODWORD(STACK[0xA10]) = 0;
  LODWORD(STACK[0x8A4]) = 0;
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xAC8]) = 0;
  LODWORD(STACK[0xA70]) = 0;
  LODWORD(STACK[0xA18]) = 0;
  LODWORD(STACK[0x808]) = 0;
  LODWORD(STACK[0x814]) = 0;
  LODWORD(STACK[0x9A0]) = 0;
  LODWORD(STACK[0x920]) = 0;
  LODWORD(STACK[0xAC0]) = 0;
  LODWORD(STACK[0xA48]) = 0;
  LODWORD(STACK[0x9A8]) = 0;
  LODWORD(STACK[0x9B8]) = 0;
  LODWORD(STACK[0xA54]) = 0;
  LODWORD(STACK[0x818]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0x828]) = 0;
  LODWORD(STACK[0x9C4]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0xAA8]) = 0;
  LODWORD(STACK[0x9E8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0x740]) = a2 + 1774680459;
  v3 = *(v2 + 8 * (a1 - 12712));
  LODWORD(STACK[0xAB8]) = 85;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA28]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v3();
}

uint64_t sub_244BAA3E4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xAC8]) = 0;
  LODWORD(STACK[0xA28]) = 0;
  LODWORD(STACK[0xAC0]) = 0;
  LODWORD(STACK[0xA48]) = 0;
  LODWORD(STACK[0x9A8]) = 0;
  LODWORD(STACK[0x9B8]) = 0;
  LODWORD(STACK[0xA54]) = 0;
  LODWORD(STACK[0x818]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0x828]) = 0;
  LODWORD(STACK[0x9C4]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0x68C]) = a2 ^ 0x40E81261;
  v7 = *(v6 + 8 * (a6 - 12712));
  LODWORD(STACK[0xAB8]) = 56;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xA70]) = 1;
  LODWORD(STACK[0xA18]) = 1;
  LODWORD(STACK[0x808]) = 1;
  LODWORD(STACK[0x814]) = 1;
  LODWORD(STACK[0x9A0]) = 1;
  LODWORD(STACK[0x920]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v7();
}

uint64_t sub_244BAA5B0@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xAC8]) = 0;
  LODWORD(STACK[0xA70]) = 0;
  LODWORD(STACK[0xA18]) = 0;
  LODWORD(STACK[0x808]) = 0;
  LODWORD(STACK[0x814]) = 0;
  LODWORD(STACK[0x9A0]) = 0;
  LODWORD(STACK[0x920]) = 0;
  LODWORD(STACK[0xAC0]) = 0;
  LODWORD(STACK[0xA48]) = 0;
  LODWORD(STACK[0x9A8]) = 0;
  LODWORD(STACK[0x9B8]) = 0;
  LODWORD(STACK[0xA54]) = 0;
  LODWORD(STACK[0x818]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0x828]) = 0;
  LODWORD(STACK[0x9C4]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0x91C]) = a1 + 920011607 - ((((v2 + 12712) ^ 0x90BC7FDA) + v1) & v4);
  v5 = *(v3 + 8 * v2);
  LODWORD(STACK[0xAB8]) = 69;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xA28]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v5();
}

uint64_t sub_244BAA798(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0xA28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0x690]) = a2 ^ 0xF39E98D0;
  v7 = *(v6 + 8 * (a6 - 12712));
  LODWORD(STACK[0xAB8]) = 43;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xB58]) = 1;
  LODWORD(STACK[0xAC8]) = 1;
  LODWORD(STACK[0xA70]) = 1;
  LODWORD(STACK[0xA18]) = 1;
  LODWORD(STACK[0x808]) = 1;
  LODWORD(STACK[0x814]) = 1;
  LODWORD(STACK[0x9A0]) = 1;
  LODWORD(STACK[0x920]) = 1;
  LODWORD(STACK[0xAC0]) = 1;
  LODWORD(STACK[0xA48]) = 1;
  LODWORD(STACK[0x9A8]) = 1;
  LODWORD(STACK[0x9B8]) = 1;
  LODWORD(STACK[0xA54]) = 1;
  LODWORD(STACK[0x818]) = 1;
  LODWORD(STACK[0xB28]) = 1;
  LODWORD(STACK[0xA68]) = 1;
  LODWORD(STACK[0xA20]) = 1;
  LODWORD(STACK[0x828]) = 1;
  LODWORD(STACK[0x9C4]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v7();
}

uint64_t sub_244BAA8BC@<X0>(int a1@<W1>, int a2@<W8>)
{
  LODWORD(STACK[0xB38]) = 0;
  LODWORD(STACK[0xA60]) = 0;
  LODWORD(STACK[0x8A4]) = 0;
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xAC8]) = 0;
  LODWORD(STACK[0xA70]) = 0;
  LODWORD(STACK[0xA18]) = 0;
  LODWORD(STACK[0x808]) = 0;
  LODWORD(STACK[0x814]) = 0;
  LODWORD(STACK[0x9A0]) = 0;
  LODWORD(STACK[0x920]) = 0;
  LODWORD(STACK[0xAC0]) = 0;
  LODWORD(STACK[0xA48]) = 0;
  LODWORD(STACK[0x9A8]) = 0;
  LODWORD(STACK[0x9B8]) = 0;
  LODWORD(STACK[0xA54]) = 0;
  LODWORD(STACK[0x818]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0x828]) = 0;
  LODWORD(STACK[0x9C4]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0xAA8]) = 0;
  LODWORD(STACK[0x9E8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0x688]) = a1 ^ 0x67399179;
  v3 = *(v2 + 8 * (a2 - 13643));
  LODWORD(STACK[0xAB8]) = 82;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0xA28]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v3();
}

uint64_t sub_244BAAA34(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xA28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0x828]) = 0;
  LODWORD(STACK[0x9C4]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0x68C]) = a2 ^ 0x40E81261;
  v7 = *(v6 + 8 * (a6 - 12712));
  LODWORD(STACK[0xAB8]) = 48;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xAC8]) = 1;
  LODWORD(STACK[0xA70]) = 1;
  LODWORD(STACK[0xA18]) = 1;
  LODWORD(STACK[0x808]) = 1;
  LODWORD(STACK[0x814]) = 1;
  LODWORD(STACK[0x9A0]) = 1;
  LODWORD(STACK[0x920]) = 1;
  LODWORD(STACK[0xAC0]) = 1;
  LODWORD(STACK[0xA48]) = 1;
  LODWORD(STACK[0x9A8]) = 1;
  LODWORD(STACK[0x9B8]) = 1;
  LODWORD(STACK[0xA54]) = 1;
  LODWORD(STACK[0x818]) = 1;
  LODWORD(STACK[0xB28]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v7();
}

uint64_t sub_244BAABB8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xAC8]) = 0;
  LODWORD(STACK[0xA70]) = 0;
  LODWORD(STACK[0xA18]) = 0;
  LODWORD(STACK[0x808]) = 0;
  LODWORD(STACK[0x814]) = 0;
  LODWORD(STACK[0x9A0]) = 0;
  LODWORD(STACK[0x920]) = 0;
  LODWORD(STACK[0xAC0]) = 0;
  LODWORD(STACK[0xA48]) = 0;
  LODWORD(STACK[0x9A8]) = 0;
  LODWORD(STACK[0x9B8]) = 0;
  LODWORD(STACK[0xA54]) = 0;
  LODWORD(STACK[0x818]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0x828]) = 0;
  LODWORD(STACK[0x9C4]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0xAA8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0x688]) = a2 ^ 0x67399179;
  v7 = *(v6 + 8 * (a6 - 12712));
  LODWORD(STACK[0xAB8]) = 74;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xA28]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v7();
}

uint64_t sub_244BAAD30@<X0>(int a1@<W1>, int a2@<W8>)
{
  LODWORD(STACK[0xA28]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0x698]) = ((2 * a1) & 0x7FB3FB5C ^ 0x4E81E108) + (((a2 ^ 0x3EB8) + 412931508) ^ a1) - 202912802;
  v3 = *(v2 + 8 * a2);
  LODWORD(STACK[0xAB8]) = 33;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xB58]) = 1;
  LODWORD(STACK[0xAC8]) = 1;
  LODWORD(STACK[0xA70]) = 1;
  LODWORD(STACK[0xA18]) = 1;
  LODWORD(STACK[0x808]) = 1;
  LODWORD(STACK[0x814]) = 1;
  LODWORD(STACK[0x9A0]) = 1;
  LODWORD(STACK[0x920]) = 1;
  LODWORD(STACK[0xAC0]) = 1;
  LODWORD(STACK[0xA48]) = 1;
  LODWORD(STACK[0x9A8]) = 1;
  LODWORD(STACK[0x9B8]) = 1;
  LODWORD(STACK[0xA54]) = 1;
  LODWORD(STACK[0x818]) = 1;
  LODWORD(STACK[0xB28]) = 1;
  LODWORD(STACK[0xAF0]) = 1;
  LODWORD(STACK[0xA68]) = 1;
  LODWORD(STACK[0xA20]) = 1;
  LODWORD(STACK[0x828]) = 1;
  LODWORD(STACK[0x9C4]) = 1;
  LODWORD(STACK[0xA30]) = 1;
  LODWORD(STACK[0x9C8]) = 1;
  LODWORD(STACK[0xB30]) = 1;
  LODWORD(STACK[0xA78]) = 1;
  LODWORD(STACK[0xA38]) = 1;
  LODWORD(STACK[0x9D8]) = 1;
  LODWORD(STACK[0x9E0]) = 1;
  LODWORD(STACK[0xA40]) = 1;
  LODWORD(STACK[0x848]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v3();
}

uint64_t sub_244BAAE94(uint64_t a1, int a2)
{
  LODWORD(STACK[0xB38]) = 0;
  LODWORD(STACK[0xAB0]) = 0;
  LODWORD(STACK[0xA58]) = 0;
  LODWORD(STACK[0xA08]) = 0;
  LODWORD(STACK[0xA60]) = 0;
  LODWORD(STACK[0xA10]) = 0;
  LODWORD(STACK[0x8A4]) = 0;
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xAC8]) = 0;
  LODWORD(STACK[0xA70]) = 0;
  LODWORD(STACK[0xA18]) = 0;
  LODWORD(STACK[0x808]) = 0;
  LODWORD(STACK[0x814]) = 0;
  LODWORD(STACK[0x9A0]) = 0;
  LODWORD(STACK[0x920]) = 0;
  LODWORD(STACK[0xAC0]) = 0;
  LODWORD(STACK[0xA48]) = 0;
  LODWORD(STACK[0x9A8]) = 0;
  LODWORD(STACK[0x9B8]) = 0;
  LODWORD(STACK[0xA54]) = 0;
  LODWORD(STACK[0x818]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0x828]) = 0;
  LODWORD(STACK[0x9C4]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0xAA8]) = 0;
  LODWORD(STACK[0x9E8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  v5 = *(v4 + 8 * (((5 * (v2 ^ (v3 + 2285)) - 12538) * (v2 < 0x971719FF)) ^ (v2 + 222130825)));
  LODWORD(STACK[0x76C]) = a2 ^ 0xC93CD285;
  LODWORD(STACK[0xAB8]) = 86;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA28]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v5();
}

uint64_t sub_244BAB040(uint64_t a1, int a2)
{
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xAC8]) = 0;
  LODWORD(STACK[0xA70]) = 0;
  LODWORD(STACK[0xA18]) = 0;
  LODWORD(STACK[0x814]) = 0;
  LODWORD(STACK[0x9A0]) = 0;
  LODWORD(STACK[0x920]) = 0;
  LODWORD(STACK[0xAC0]) = 0;
  LODWORD(STACK[0xA48]) = 0;
  LODWORD(STACK[0x9A8]) = 0;
  LODWORD(STACK[0x9B8]) = 0;
  LODWORD(STACK[0xA54]) = 0;
  LODWORD(STACK[0x818]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0x828]) = 0;
  LODWORD(STACK[0x9C4]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0x76C]) = a2 ^ 0xC93CD285;
  v4 = *(v3 + 8 * (v2 - 12712));
  LODWORD(STACK[0xAB8]) = 62;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0x808]) = 1;
  LODWORD(STACK[0xA28]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v4();
}

uint64_t sub_244BAB1B0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xAC8]) = 0;
  LODWORD(STACK[0xA70]) = 0;
  LODWORD(STACK[0xA18]) = 0;
  LODWORD(STACK[0x808]) = 0;
  LODWORD(STACK[0x814]) = 0;
  LODWORD(STACK[0x9A0]) = 0;
  LODWORD(STACK[0x920]) = 0;
  LODWORD(STACK[0xAC0]) = 0;
  LODWORD(STACK[0xA48]) = 0;
  LODWORD(STACK[0x9A8]) = 0;
  LODWORD(STACK[0x9B8]) = 0;
  LODWORD(STACK[0xA54]) = 0;
  LODWORD(STACK[0x818]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0x828]) = 0;
  LODWORD(STACK[0x9C4]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0x688]) = a2 ^ 0x67399179;
  v7 = *(v6 + 8 * (a6 - 12712));
  LODWORD(STACK[0xAB8]) = 66;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xA28]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v7();
}

uint64_t sub_244BAB314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W8>)
{
  LODWORD(STACK[0xA28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0x9C4]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0x534]) = ((a6 - 116463593) ^ 0x2CF67E7F) - 4172 + (((v6 ^ 0x2474) + 1508701488) & (2 * (a6 - 116463593)));
  v8 = *(v7 + 8 * (v6 ^ 0x2474));
  LODWORD(STACK[0xAB8]) = 45;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xB58]) = 1;
  LODWORD(STACK[0xAC8]) = 1;
  LODWORD(STACK[0xA70]) = 1;
  LODWORD(STACK[0xA18]) = 1;
  LODWORD(STACK[0x808]) = 1;
  LODWORD(STACK[0x814]) = 1;
  LODWORD(STACK[0x9A0]) = 1;
  LODWORD(STACK[0x920]) = 1;
  LODWORD(STACK[0xAC0]) = 1;
  LODWORD(STACK[0xA48]) = 1;
  LODWORD(STACK[0x9A8]) = 1;
  LODWORD(STACK[0x9B8]) = 1;
  LODWORD(STACK[0xA54]) = 1;
  LODWORD(STACK[0x818]) = 1;
  LODWORD(STACK[0xB28]) = 1;
  LODWORD(STACK[0xA20]) = 1;
  LODWORD(STACK[0x828]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v8(a1, a2, a3, a4, a5, (v6 ^ 0x2474u) + 12712);
}

uint64_t sub_244BAB440(uint64_t a1, int a2)
{
  LODWORD(STACK[0xB38]) = 0;
  LODWORD(STACK[0x8A4]) = 0;
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xAC8]) = 0;
  LODWORD(STACK[0xA70]) = 0;
  LODWORD(STACK[0xA18]) = 0;
  LODWORD(STACK[0x808]) = 0;
  LODWORD(STACK[0x814]) = 0;
  LODWORD(STACK[0x9A0]) = 0;
  LODWORD(STACK[0x920]) = 0;
  LODWORD(STACK[0xAC0]) = 0;
  LODWORD(STACK[0xA48]) = 0;
  LODWORD(STACK[0x9A8]) = 0;
  LODWORD(STACK[0x9B8]) = 0;
  LODWORD(STACK[0xA54]) = 0;
  LODWORD(STACK[0x818]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0x828]) = 0;
  LODWORD(STACK[0x9C4]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0xAA8]) = 0;
  LODWORD(STACK[0x9E8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0x698]) = (a2 ^ 0x9C951B68) + 2012209056 + (((((v2 ^ 0x3154) + 68) | 0x3164) + 2007210594) & (2 * a2) ^ 0x4681C108);
  v4 = *(v3 + 8 * (v2 ^ 0x3154));
  LODWORD(STACK[0xAB8]) = 81;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0xA28]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v4();
}

uint64_t sub_244BAB5AC@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xA28]) = 0;
  LODWORD(STACK[0xAC0]) = 0;
  LODWORD(STACK[0xA54]) = 0;
  LODWORD(STACK[0x818]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0x828]) = 0;
  LODWORD(STACK[0x9C4]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  v3 = v1 - 15836;
  v4 = a1 - ((2 * a1 + 604863306) & 0x33136C8A);
  v5 = *(v2 + 8 * v3);
  LODWORD(STACK[0x940]) = v4 + ((5 * (v3 ^ 0xCB0)) ^ 0xCB904A9C);
  LODWORD(STACK[0xAB8]) = 52;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xAC8]) = 1;
  LODWORD(STACK[0xA70]) = 1;
  LODWORD(STACK[0xA18]) = 1;
  LODWORD(STACK[0x808]) = 1;
  LODWORD(STACK[0x814]) = 1;
  LODWORD(STACK[0x9A0]) = 1;
  LODWORD(STACK[0x920]) = 1;
  LODWORD(STACK[0xA48]) = 1;
  LODWORD(STACK[0x9A8]) = 1;
  LODWORD(STACK[0x9B8]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v5();
}

uint64_t sub_244BAB710(uint64_t a1, int a2)
{
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xAC8]) = 0;
  LODWORD(STACK[0xA70]) = 0;
  LODWORD(STACK[0xA18]) = 0;
  LODWORD(STACK[0x808]) = 0;
  LODWORD(STACK[0x814]) = 0;
  LODWORD(STACK[0x9A0]) = 0;
  LODWORD(STACK[0x920]) = 0;
  LODWORD(STACK[0xAC0]) = 0;
  LODWORD(STACK[0xA48]) = 0;
  LODWORD(STACK[0x9A8]) = 0;
  LODWORD(STACK[0x9B8]) = 0;
  LODWORD(STACK[0xA54]) = 0;
  LODWORD(STACK[0x818]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0x828]) = 0;
  LODWORD(STACK[0x9C4]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0xAA8]) = 0;
  LODWORD(STACK[0x9E8]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0x76C]) = a2 ^ 0xC93CD285;
  v4 = *(v3 + 8 * (v2 - 12712));
  LODWORD(STACK[0xAB8]) = 78;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xA28]) = 1;
  LODWORD(STACK[0x928]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v4();
}

uint64_t sub_244BAB868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W8>)
{
  LODWORD(STACK[0xA28]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0x610]) = ((2 * (a6 + 1539235490)) & 0x7AF32FBE) + ((v6 + 1031376913) ^ (a6 + 1539235490)) - 291079616;
  v8 = *(v7 + 8 * v6);
  LODWORD(STACK[0xAB8]) = 36;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xB58]) = 1;
  LODWORD(STACK[0xAC8]) = 1;
  LODWORD(STACK[0xA70]) = 1;
  LODWORD(STACK[0xA18]) = 1;
  LODWORD(STACK[0x808]) = 1;
  LODWORD(STACK[0x814]) = 1;
  LODWORD(STACK[0x9A0]) = 1;
  LODWORD(STACK[0x920]) = 1;
  LODWORD(STACK[0xAC0]) = 1;
  LODWORD(STACK[0xA48]) = 1;
  LODWORD(STACK[0x9A8]) = 1;
  LODWORD(STACK[0x9B8]) = 1;
  LODWORD(STACK[0xA54]) = 1;
  LODWORD(STACK[0x818]) = 1;
  LODWORD(STACK[0xB28]) = 1;
  LODWORD(STACK[0xAF0]) = 1;
  LODWORD(STACK[0xA68]) = 1;
  LODWORD(STACK[0xA20]) = 1;
  LODWORD(STACK[0x828]) = 1;
  LODWORD(STACK[0x9C4]) = 1;
  LODWORD(STACK[0xA30]) = 1;
  LODWORD(STACK[0x9C8]) = 1;
  LODWORD(STACK[0xB30]) = 1;
  LODWORD(STACK[0xA38]) = 1;
  LODWORD(STACK[0x9D8]) = 1;
  LODWORD(STACK[0x9E0]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v8(a1, a2, a3, a4, a5, v6 + 12712);
}

uint64_t sub_244BAB98C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xB38]) = 0;
  LODWORD(STACK[0xAB0]) = 0;
  LODWORD(STACK[0xA60]) = 0;
  LODWORD(STACK[0xA10]) = 0;
  LODWORD(STACK[0x8A4]) = 0;
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xAC8]) = 0;
  LODWORD(STACK[0xA70]) = 0;
  LODWORD(STACK[0xA18]) = 0;
  LODWORD(STACK[0x808]) = 0;
  LODWORD(STACK[0x814]) = 0;
  LODWORD(STACK[0x9A0]) = 0;
  LODWORD(STACK[0x920]) = 0;
  LODWORD(STACK[0xAC0]) = 0;
  LODWORD(STACK[0xA48]) = 0;
  LODWORD(STACK[0x9A8]) = 0;
  LODWORD(STACK[0x9B8]) = 0;
  LODWORD(STACK[0xA54]) = 0;
  LODWORD(STACK[0x818]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0x828]) = 0;
  LODWORD(STACK[0x9C4]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0xAA8]) = 0;
  LODWORD(STACK[0x9E8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  v4 = a1 - ((2 * a1 + 390322680) & v3);
  v5 = v1 == 687952374;
  v6 = v1 + 2092489331 + 2942 * (v1 ^ 0x346F252);
  v7 = !v5;
  LODWORD(STACK[0x900]) = v4 - 98956035;
  v8 = *(v2 + 8 * (v6 ^ (398 * v7)));
  LODWORD(STACK[0xAB8]) = 84;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA28]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v8();
}

uint64_t sub_244BABB14(uint64_t a1, int a2)
{
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xAC8]) = 0;
  LODWORD(STACK[0x920]) = 0;
  LODWORD(STACK[0xAC0]) = 0;
  LODWORD(STACK[0xA48]) = 0;
  LODWORD(STACK[0x9A8]) = 0;
  LODWORD(STACK[0x9B8]) = 0;
  LODWORD(STACK[0xA54]) = 0;
  LODWORD(STACK[0x818]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0x828]) = 0;
  LODWORD(STACK[0x9C4]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0x688]) = a2 ^ 0x67399179;
  v4 = *(v3 + 8 * (v2 - 12712));
  LODWORD(STACK[0xAB8]) = 58;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xA70]) = 1;
  LODWORD(STACK[0xA18]) = 1;
  LODWORD(STACK[0x808]) = 1;
  LODWORD(STACK[0x814]) = 1;
  LODWORD(STACK[0xA28]) = 1;
  LODWORD(STACK[0x9A0]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v4();
}

uint64_t sub_244BABC44(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xAC8]) = 0;
  LODWORD(STACK[0xA70]) = 0;
  LODWORD(STACK[0xA18]) = 0;
  LODWORD(STACK[0x808]) = 0;
  LODWORD(STACK[0x814]) = 0;
  LODWORD(STACK[0x9A0]) = 0;
  LODWORD(STACK[0x920]) = 0;
  LODWORD(STACK[0xAC0]) = 0;
  LODWORD(STACK[0xA48]) = 0;
  LODWORD(STACK[0x9A8]) = 0;
  LODWORD(STACK[0x9B8]) = 0;
  LODWORD(STACK[0xA54]) = 0;
  LODWORD(STACK[0x818]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0x828]) = 0;
  LODWORD(STACK[0x9C4]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0x76C]) = a2 ^ 0xC93CD285;
  v7 = *(v6 + 8 * (a6 - 12712));
  LODWORD(STACK[0xAB8]) = 70;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xA28]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v7();
}

uint64_t sub_244BABD88(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0xA28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  v7 = *(v6 + 8 * (a6 - 12712));
  LODWORD(STACK[0x68C]) = a2 ^ 0x40E81261;
  LODWORD(STACK[0xAB8]) = 40;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xB58]) = 1;
  LODWORD(STACK[0xAC8]) = 1;
  LODWORD(STACK[0xA70]) = 1;
  LODWORD(STACK[0xA18]) = 1;
  LODWORD(STACK[0x808]) = 1;
  LODWORD(STACK[0x814]) = 1;
  LODWORD(STACK[0x9A0]) = 1;
  LODWORD(STACK[0x920]) = 1;
  LODWORD(STACK[0xAC0]) = 1;
  LODWORD(STACK[0xA48]) = 1;
  LODWORD(STACK[0x9A8]) = 1;
  LODWORD(STACK[0x9B8]) = 1;
  LODWORD(STACK[0xA54]) = 1;
  LODWORD(STACK[0x818]) = 1;
  LODWORD(STACK[0xB28]) = 1;
  LODWORD(STACK[0xA68]) = 1;
  LODWORD(STACK[0xA20]) = 1;
  LODWORD(STACK[0x828]) = 1;
  LODWORD(STACK[0x9C4]) = 1;
  LODWORD(STACK[0xA30]) = 1;
  LODWORD(STACK[0x9C8]) = 1;
  LODWORD(STACK[0xB30]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v7();
}

uint64_t sub_244BABE80(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0xB38]) = 0;
  LODWORD(STACK[0xA60]) = 0;
  LODWORD(STACK[0xA10]) = 0;
  LODWORD(STACK[0x8A4]) = 0;
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xAC8]) = 0;
  LODWORD(STACK[0xA70]) = 0;
  LODWORD(STACK[0xA18]) = 0;
  LODWORD(STACK[0x808]) = 0;
  LODWORD(STACK[0x814]) = 0;
  LODWORD(STACK[0x9A0]) = 0;
  LODWORD(STACK[0x920]) = 0;
  LODWORD(STACK[0xAC0]) = 0;
  LODWORD(STACK[0xA48]) = 0;
  LODWORD(STACK[0x9A8]) = 0;
  LODWORD(STACK[0x9B8]) = 0;
  LODWORD(STACK[0xA54]) = 0;
  LODWORD(STACK[0x818]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0x828]) = 0;
  LODWORD(STACK[0x9C4]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0xAA8]) = 0;
  LODWORD(STACK[0x9E8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0x690]) = a2 ^ 0xF39E98D0;
  v7 = *(v6 + 8 * (a6 - 12712));
  LODWORD(STACK[0xAB8]) = 83;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA28]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v7();
}

uint64_t sub_244BABFBC@<X0>(int a1@<W1>, unsigned int a2@<W8>)
{
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xA28]) = 0;
  LODWORD(STACK[0xA54]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0x828]) = 0;
  LODWORD(STACK[0x9C4]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0x688]) = a1 ^ 0x67399179;
  v3 = *(v2 + 8 * ((a2 - 842) ^ a2 ^ (2153 * (a2 < 0x58170E0A))));
  LODWORD(STACK[0xAB8]) = 50;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xAC8]) = 1;
  LODWORD(STACK[0xA70]) = 1;
  LODWORD(STACK[0xA18]) = 1;
  LODWORD(STACK[0x808]) = 1;
  LODWORD(STACK[0x814]) = 1;
  LODWORD(STACK[0x9A0]) = 1;
  LODWORD(STACK[0x920]) = 1;
  LODWORD(STACK[0xAC0]) = 1;
  LODWORD(STACK[0xA48]) = 1;
  LODWORD(STACK[0x9A8]) = 1;
  LODWORD(STACK[0x9B8]) = 1;
  LODWORD(STACK[0x818]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v3();
}

uint64_t sub_244BAC114@<X0>(int a1@<W1>, int a2@<W8>)
{
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xAC8]) = 0;
  LODWORD(STACK[0xA70]) = 0;
  LODWORD(STACK[0xA18]) = 0;
  LODWORD(STACK[0x808]) = 0;
  LODWORD(STACK[0x814]) = 0;
  LODWORD(STACK[0x9A0]) = 0;
  LODWORD(STACK[0x920]) = 0;
  LODWORD(STACK[0xAC0]) = 0;
  LODWORD(STACK[0xA48]) = 0;
  LODWORD(STACK[0x9A8]) = 0;
  LODWORD(STACK[0x9B8]) = 0;
  LODWORD(STACK[0xA54]) = 0;
  LODWORD(STACK[0x818]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0x828]) = 0;
  LODWORD(STACK[0x9C4]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0xAA8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0x698]) = ((2 * a1) & 0x67F3BFFA ^ 0x4681A508) + (a1 ^ 0x14BD2D79) + ((a2 + 12712) ^ 0xFFC7D0F9);
  v3 = *(v2 + 8 * a2);
  LODWORD(STACK[0xAB8]) = 73;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xA28]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v3();
}

uint64_t sub_244BAC270(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0xA28]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0x690]) = a2 ^ 0xF39E98D0;
  v7 = *(v6 + 8 * (10 * (a6 ^ 0x3CC9) - 12712));
  LODWORD(STACK[0xAB8]) = 35;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xB58]) = 1;
  LODWORD(STACK[0xAC8]) = 1;
  LODWORD(STACK[0xA70]) = 1;
  LODWORD(STACK[0xA18]) = 1;
  LODWORD(STACK[0x808]) = 1;
  LODWORD(STACK[0x814]) = 1;
  LODWORD(STACK[0x9A0]) = 1;
  LODWORD(STACK[0x920]) = 1;
  LODWORD(STACK[0xAC0]) = 1;
  LODWORD(STACK[0xA48]) = 1;
  LODWORD(STACK[0x9A8]) = 1;
  LODWORD(STACK[0x9B8]) = 1;
  LODWORD(STACK[0xA54]) = 1;
  LODWORD(STACK[0x818]) = 1;
  LODWORD(STACK[0xB28]) = 1;
  LODWORD(STACK[0xAF0]) = 1;
  LODWORD(STACK[0xA68]) = 1;
  LODWORD(STACK[0xA20]) = 1;
  LODWORD(STACK[0x828]) = 1;
  LODWORD(STACK[0x9C4]) = 1;
  LODWORD(STACK[0xA30]) = 1;
  LODWORD(STACK[0x9C8]) = 1;
  LODWORD(STACK[0xB30]) = 1;
  LODWORD(STACK[0xA78]) = 1;
  LODWORD(STACK[0xA38]) = 1;
  LODWORD(STACK[0x9D8]) = 1;
  LODWORD(STACK[0x9E0]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v7();
}

uint64_t sub_244BAC378(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0xB38]) = 0;
  LODWORD(STACK[0xAB0]) = 0;
  LODWORD(STACK[0xA58]) = 0;
  LODWORD(STACK[0x9F0]) = 0;
  LODWORD(STACK[0xA08]) = 0;
  LODWORD(STACK[0xA60]) = 0;
  LODWORD(STACK[0xA10]) = 0;
  LODWORD(STACK[0x8A4]) = 0;
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xAC8]) = 0;
  LODWORD(STACK[0xA70]) = 0;
  LODWORD(STACK[0xA18]) = 0;
  LODWORD(STACK[0x808]) = 0;
  LODWORD(STACK[0x814]) = 0;
  LODWORD(STACK[0x9A0]) = 0;
  LODWORD(STACK[0x920]) = 0;
  LODWORD(STACK[0xAC0]) = 0;
  LODWORD(STACK[0xA48]) = 0;
  LODWORD(STACK[0x9A8]) = 0;
  LODWORD(STACK[0x9B8]) = 0;
  LODWORD(STACK[0xA54]) = 0;
  LODWORD(STACK[0x818]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0x828]) = 0;
  LODWORD(STACK[0x9C4]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0xAA8]) = 0;
  LODWORD(STACK[0x9E8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0x760]) = a2 ^ 0x5DA2C160;
  v7 = *(v6 + 8 * (a6 - 12712));
  LODWORD(STACK[0xAB8]) = 87;
  LODWORD(STACK[0xA28]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v7();
}

uint64_t sub_244BAC4AC@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xAC8]) = 0;
  LODWORD(STACK[0xA70]) = 0;
  LODWORD(STACK[0x9A0]) = 0;
  LODWORD(STACK[0x920]) = 0;
  LODWORD(STACK[0xAC0]) = 0;
  LODWORD(STACK[0xA48]) = 0;
  LODWORD(STACK[0x9A8]) = 0;
  LODWORD(STACK[0x9B8]) = 0;
  LODWORD(STACK[0xA54]) = 0;
  LODWORD(STACK[0x818]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0x828]) = 0;
  LODWORD(STACK[0x9C4]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  v6 = a1 - 5149;
  v7 = v6 + 12712;
  v8 = *(v4 + 8 * v6);
  LODWORD(STACK[0xAD0]) = v1 - ((v2 + v5) & v3) + v7 + 1807961822;
  LODWORD(STACK[0xAB8]) = 60;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xA18]) = 1;
  LODWORD(STACK[0x808]) = 1;
  LODWORD(STACK[0x814]) = 1;
  LODWORD(STACK[0xA28]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v8();
}

uint64_t sub_244BAC5F4@<X0>(int a1@<W1>, int a2@<W8>)
{
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xAC8]) = 0;
  LODWORD(STACK[0xA70]) = 0;
  LODWORD(STACK[0xA18]) = 0;
  LODWORD(STACK[0x808]) = 0;
  LODWORD(STACK[0x814]) = 0;
  LODWORD(STACK[0x9A0]) = 0;
  LODWORD(STACK[0x920]) = 0;
  LODWORD(STACK[0xAC0]) = 0;
  LODWORD(STACK[0xA48]) = 0;
  LODWORD(STACK[0x9A8]) = 0;
  LODWORD(STACK[0x9B8]) = 0;
  LODWORD(STACK[0xA54]) = 0;
  LODWORD(STACK[0x818]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0x828]) = 0;
  LODWORD(STACK[0x9C4]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x698]) = (a1 ^ 0xD08F1958) + 1005968816 + ((1471 * (a2 ^ 0x7C4) + 1317112722) ^ (2 * a1) & 0xEF97D7B8);
  v3 = *(v2 + 8 * a2);
  LODWORD(STACK[0xAB8]) = 65;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xA28]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  LODWORD(STACK[0x9B0]) = 1;
  return v3();
}

uint64_t sub_244BAC750@<X0>(int a1@<W1>, int a2@<W8>)
{
  LODWORD(STACK[0xA28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0x828]) = 0;
  LODWORD(STACK[0x9C4]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0x760]) = a1 ^ 0x5DA2C160;
  v3 = *(v2 + 8 * (((a2 - 1730913115) & 0x672BB9F7) - 12712));
  LODWORD(STACK[0xAB8]) = 47;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xB58]) = 1;
  LODWORD(STACK[0xAC8]) = 1;
  LODWORD(STACK[0xA70]) = 1;
  LODWORD(STACK[0xA18]) = 1;
  LODWORD(STACK[0x808]) = 1;
  LODWORD(STACK[0x814]) = 1;
  LODWORD(STACK[0x9A0]) = 1;
  LODWORD(STACK[0x920]) = 1;
  LODWORD(STACK[0xAC0]) = 1;
  LODWORD(STACK[0xA48]) = 1;
  LODWORD(STACK[0x9A8]) = 1;
  LODWORD(STACK[0x9B8]) = 1;
  LODWORD(STACK[0xA54]) = 1;
  LODWORD(STACK[0x818]) = 1;
  LODWORD(STACK[0xB28]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v3();
}

uint64_t sub_244BAC860(uint64_t a1, int a2)
{
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xA28]) = 0;
  LODWORD(STACK[0xAC0]) = 0;
  LODWORD(STACK[0xA48]) = 0;
  LODWORD(STACK[0x9A8]) = 0;
  LODWORD(STACK[0x9B8]) = 0;
  LODWORD(STACK[0xA54]) = 0;
  LODWORD(STACK[0x818]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0x828]) = 0;
  LODWORD(STACK[0x9C4]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0x760]) = a2 ^ 0x5DA2C160;
  v4 = *(v3 + 8 * (v2 - 12712));
  LODWORD(STACK[0xAB8]) = 55;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xAC8]) = 1;
  LODWORD(STACK[0xA70]) = 1;
  LODWORD(STACK[0xA18]) = 1;
  LODWORD(STACK[0x808]) = 1;
  LODWORD(STACK[0x814]) = 1;
  LODWORD(STACK[0x9A0]) = 1;
  LODWORD(STACK[0x920]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v4();
}

uint64_t sub_244BAC95C@<X0>(int a1@<W0>, int a2@<W8>)
{
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xAC8]) = 0;
  LODWORD(STACK[0xA70]) = 0;
  LODWORD(STACK[0xA18]) = 0;
  LODWORD(STACK[0x808]) = 0;
  LODWORD(STACK[0x814]) = 0;
  LODWORD(STACK[0x9A0]) = 0;
  LODWORD(STACK[0x920]) = 0;
  LODWORD(STACK[0xAC0]) = 0;
  LODWORD(STACK[0xA48]) = 0;
  LODWORD(STACK[0x9A8]) = 0;
  LODWORD(STACK[0x9B8]) = 0;
  LODWORD(STACK[0xA54]) = 0;
  LODWORD(STACK[0x818]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0x828]) = 0;
  LODWORD(STACK[0x9C4]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0xAA8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  v6 = v2 - 15000;
  LODWORD(STACK[0x8DC]) = a2 - 924799844 + ((a1 - (a2 << ((v6 - 88) ^ v3)) - 2) | v5);
  v7 = *(v4 + 8 * v6);
  LODWORD(STACK[0xAB8]) = 77;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xA28]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v7();
}

uint64_t sub_244BACA74(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0xA28]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0x76C]) = a2 ^ 0xC93CD285;
  v7 = *(v6 + 8 * (a6 - 12712));
  LODWORD(STACK[0xAB8]) = 38;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xB58]) = 1;
  LODWORD(STACK[0xAC8]) = 1;
  LODWORD(STACK[0xA70]) = 1;
  LODWORD(STACK[0xA18]) = 1;
  LODWORD(STACK[0x808]) = 1;
  LODWORD(STACK[0x814]) = 1;
  LODWORD(STACK[0x9A0]) = 1;
  LODWORD(STACK[0x920]) = 1;
  LODWORD(STACK[0xAC0]) = 1;
  LODWORD(STACK[0xA48]) = 1;
  LODWORD(STACK[0x9A8]) = 1;
  LODWORD(STACK[0x9B8]) = 1;
  LODWORD(STACK[0xA54]) = 1;
  LODWORD(STACK[0x818]) = 1;
  LODWORD(STACK[0xB28]) = 1;
  LODWORD(STACK[0xAF0]) = 1;
  LODWORD(STACK[0xA68]) = 1;
  LODWORD(STACK[0xA20]) = 1;
  LODWORD(STACK[0x828]) = 1;
  LODWORD(STACK[0x9C4]) = 1;
  LODWORD(STACK[0xA30]) = 1;
  LODWORD(STACK[0x9C8]) = 1;
  LODWORD(STACK[0xB30]) = 1;
  LODWORD(STACK[0x9D8]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v7();
}

uint64_t sub_244BACB6C@<X0>(int a1@<W1>, unsigned int a2@<W8>)
{
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xAC8]) = 0;
  LODWORD(STACK[0xA28]) = 0;
  LODWORD(STACK[0x920]) = 0;
  LODWORD(STACK[0xAC0]) = 0;
  LODWORD(STACK[0xA48]) = 0;
  LODWORD(STACK[0x9A8]) = 0;
  LODWORD(STACK[0x9B8]) = 0;
  LODWORD(STACK[0xA54]) = 0;
  LODWORD(STACK[0x818]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0x828]) = 0;
  LODWORD(STACK[0x9C4]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0x698]) = ((2 * a1) & 0x77D3D39C ^ 0x4681C108) + (a1 ^ 0x9CAD1B4A) + ((a2 + 12712) ^ 0x77D7E6C8);
  v3 = *(v2 + 8 * a2);
  LODWORD(STACK[0xAB8]) = 57;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xA70]) = 1;
  LODWORD(STACK[0xA18]) = 1;
  LODWORD(STACK[0x808]) = 1;
  LODWORD(STACK[0x814]) = 1;
  LODWORD(STACK[0x9A0]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v3();
}

uint64_t sub_244BACC90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W8>)
{
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xAC8]) = 0;
  LODWORD(STACK[0xA70]) = 0;
  LODWORD(STACK[0xA18]) = 0;
  LODWORD(STACK[0x808]) = 0;
  LODWORD(STACK[0x814]) = 0;
  LODWORD(STACK[0x9A0]) = 0;
  LODWORD(STACK[0x920]) = 0;
  LODWORD(STACK[0xAC0]) = 0;
  LODWORD(STACK[0xA48]) = 0;
  LODWORD(STACK[0x9A8]) = 0;
  LODWORD(STACK[0x9B8]) = 0;
  LODWORD(STACK[0xA54]) = 0;
  LODWORD(STACK[0x818]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0x828]) = 0;
  LODWORD(STACK[0x9C4]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0x940]) = a6 - (((v7 ^ 0x3728FBD4) + v6) & 0x33136C8A) - 1793182638;
  v9 = *(v8 + 8 * v7);
  LODWORD(STACK[0xAB8]) = 68;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xA28]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x9D0]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v9(a1, a2, a3, a4, a5, v7 ^ 0x3EB8u);
}

uint64_t sub_244BACDA8@<X0>(int a1@<W1>, unsigned int a2@<W8>)
{
  LODWORD(STACK[0xA28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0x688]) = a1 ^ 0x67399179;
  v3 = *(v2 + 8 * ((2166 * (a2 < ((a2 + 1054064241) | 0x3174) + 198130662)) ^ (a2 + 1054064189)));
  LODWORD(STACK[0xAB8]) = 42;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xB58]) = 1;
  LODWORD(STACK[0xAC8]) = 1;
  LODWORD(STACK[0xA70]) = 1;
  LODWORD(STACK[0xA18]) = 1;
  LODWORD(STACK[0x808]) = 1;
  LODWORD(STACK[0x814]) = 1;
  LODWORD(STACK[0x9A0]) = 1;
  LODWORD(STACK[0x920]) = 1;
  LODWORD(STACK[0xAC0]) = 1;
  LODWORD(STACK[0xA48]) = 1;
  LODWORD(STACK[0x9A8]) = 1;
  LODWORD(STACK[0x9B8]) = 1;
  LODWORD(STACK[0xA54]) = 1;
  LODWORD(STACK[0x818]) = 1;
  LODWORD(STACK[0xB28]) = 1;
  LODWORD(STACK[0xA68]) = 1;
  LODWORD(STACK[0xA20]) = 1;
  LODWORD(STACK[0x828]) = 1;
  LODWORD(STACK[0x9C4]) = 1;
  LODWORD(STACK[0x9C8]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v3();
}

uint64_t sub_244BACED0@<X0>(int a1@<W1>, int a2@<W5>, int a3@<W8>)
{
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xA28]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0x828]) = 0;
  LODWORD(STACK[0x9C4]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0x698]) = (a1 ^ 0x989F2B2B) + 1944448989 + ((2 * a1) & 0x7FB7B35E ^ a2 ^ 0x4E81987E);
  v4 = *(v3 + 8 * a3);
  LODWORD(STACK[0xAB8]) = 49;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xAC8]) = 1;
  LODWORD(STACK[0xA70]) = 1;
  LODWORD(STACK[0xA18]) = 1;
  LODWORD(STACK[0x808]) = 1;
  LODWORD(STACK[0x814]) = 1;
  LODWORD(STACK[0x9A0]) = 1;
  LODWORD(STACK[0x920]) = 1;
  LODWORD(STACK[0xAC0]) = 1;
  LODWORD(STACK[0xA48]) = 1;
  LODWORD(STACK[0x9A8]) = 1;
  LODWORD(STACK[0x9B8]) = 1;
  LODWORD(STACK[0xA54]) = 1;
  LODWORD(STACK[0x818]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v4();
}

uint64_t sub_244BACFF4(uint64_t a1, int a2)
{
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xAC8]) = 0;
  LODWORD(STACK[0xA70]) = 0;
  LODWORD(STACK[0xA18]) = 0;
  LODWORD(STACK[0x808]) = 0;
  LODWORD(STACK[0x814]) = 0;
  LODWORD(STACK[0x9A0]) = 0;
  LODWORD(STACK[0x920]) = 0;
  LODWORD(STACK[0xAC0]) = 0;
  LODWORD(STACK[0xA48]) = 0;
  LODWORD(STACK[0x9A8]) = 0;
  LODWORD(STACK[0x9B8]) = 0;
  LODWORD(STACK[0xA54]) = 0;
  LODWORD(STACK[0x818]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0x828]) = 0;
  LODWORD(STACK[0x9C4]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0xAA8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x998]) = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0x690]) = a2 ^ 0xF39E98D0;
  v4 = *(v3 + 8 * (v2 - 12712));
  LODWORD(STACK[0xAB8]) = 75;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xA28]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v4();
}

uint64_t sub_244BAD0F0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0xA28]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0x68C]) = a2 ^ 0x40E81261;
  v7 = *(v6 + 8 * (a6 - 12712));
  LODWORD(STACK[0xAB8]) = 32;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xB58]) = 1;
  LODWORD(STACK[0xAC8]) = 1;
  LODWORD(STACK[0xA70]) = 1;
  LODWORD(STACK[0xA18]) = 1;
  LODWORD(STACK[0x808]) = 1;
  LODWORD(STACK[0x814]) = 1;
  LODWORD(STACK[0x9A0]) = 1;
  LODWORD(STACK[0x920]) = 1;
  LODWORD(STACK[0xAC0]) = 1;
  LODWORD(STACK[0xA48]) = 1;
  LODWORD(STACK[0x9A8]) = 1;
  LODWORD(STACK[0x9B8]) = 1;
  LODWORD(STACK[0xA54]) = 1;
  LODWORD(STACK[0x818]) = 1;
  LODWORD(STACK[0xB28]) = 1;
  LODWORD(STACK[0xAF0]) = 1;
  LODWORD(STACK[0xA68]) = 1;
  LODWORD(STACK[0xA20]) = 1;
  LODWORD(STACK[0x828]) = 1;
  LODWORD(STACK[0x9C4]) = 1;
  LODWORD(STACK[0xA30]) = 1;
  LODWORD(STACK[0x9C8]) = 1;
  LODWORD(STACK[0xB30]) = 1;
  LODWORD(STACK[0xA78]) = 1;
  LODWORD(STACK[0xA38]) = 1;
  LODWORD(STACK[0x9D8]) = 1;
  LODWORD(STACK[0x9E0]) = 1;
  LODWORD(STACK[0xA40]) = 1;
  LODWORD(STACK[0x848]) = 1;
  LODWORD(STACK[0xBC8]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v7();
}

uint64_t sub_244BAD1E8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xAC8]) = 0;
  LODWORD(STACK[0xA70]) = 0;
  LODWORD(STACK[0xA18]) = 0;
  LODWORD(STACK[0x808]) = 0;
  LODWORD(STACK[0x814]) = 0;
  LODWORD(STACK[0x9A0]) = 0;
  LODWORD(STACK[0x920]) = 0;
  LODWORD(STACK[0xAC0]) = 0;
  LODWORD(STACK[0xA48]) = 0;
  LODWORD(STACK[0x9A8]) = 0;
  LODWORD(STACK[0x9B8]) = 0;
  LODWORD(STACK[0xA54]) = 0;
  LODWORD(STACK[0x818]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0x828]) = 0;
  LODWORD(STACK[0x9C4]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0x760]) = a2 ^ 0x5DA2C160;
  v7 = *(v6 + 8 * (a6 - 12712));
  LODWORD(STACK[0xAB8]) = 63;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xA28]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v7();
}

uint64_t sub_244BAD2E0(uint64_t a1, int a2)
{
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xAC8]) = 0;
  LODWORD(STACK[0xA70]) = 0;
  LODWORD(STACK[0xA18]) = 0;
  LODWORD(STACK[0x808]) = 0;
  LODWORD(STACK[0x814]) = 0;
  LODWORD(STACK[0x9A0]) = 0;
  LODWORD(STACK[0x920]) = 0;
  LODWORD(STACK[0xAC0]) = 0;
  LODWORD(STACK[0xA48]) = 0;
  LODWORD(STACK[0x9A8]) = 0;
  LODWORD(STACK[0x9B8]) = 0;
  LODWORD(STACK[0xA54]) = 0;
  LODWORD(STACK[0x818]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0x828]) = 0;
  LODWORD(STACK[0x9C4]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x7D8]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0x690]) = a2 ^ 0xF39E98D0;
  v4 = *(v3 + 8 * (v2 - 12712));
  LODWORD(STACK[0xAB8]) = 67;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xA28]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x998]) = 1;
  return v4();
}

uint64_t sub_244BAD3DC@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xA28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0xAD8]) = a1 + v3 - 2 * ((10 * (v1 ^ 0x271) + 1853351585) & (a1 + v2) ^ a1 & v5);
  v6 = *(v4 + 8 * v1);
  LODWORD(STACK[0xAB8]) = 44;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xB58]) = 1;
  LODWORD(STACK[0xAC8]) = 1;
  LODWORD(STACK[0xA70]) = 1;
  LODWORD(STACK[0xA18]) = 1;
  LODWORD(STACK[0x808]) = 1;
  LODWORD(STACK[0x814]) = 1;
  LODWORD(STACK[0x9A0]) = 1;
  LODWORD(STACK[0x920]) = 1;
  LODWORD(STACK[0xAC0]) = 1;
  LODWORD(STACK[0xA48]) = 1;
  LODWORD(STACK[0x9A8]) = 1;
  LODWORD(STACK[0x9B8]) = 1;
  LODWORD(STACK[0xA54]) = 1;
  LODWORD(STACK[0x818]) = 1;
  LODWORD(STACK[0xB28]) = 1;
  LODWORD(STACK[0xA20]) = 1;
  LODWORD(STACK[0x828]) = 1;
  LODWORD(STACK[0x9C4]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v6();
}

uint64_t sub_244BAD4F4@<X0>(int a1@<W5>, int a2@<W8>)
{
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xA28]) = 0;
  LODWORD(STACK[0xAC0]) = 0;
  LODWORD(STACK[0x9B8]) = 0;
  LODWORD(STACK[0xA54]) = 0;
  LODWORD(STACK[0x818]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0x828]) = 0;
  LODWORD(STACK[0x9C4]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0x758]) = a2 - 1555189552;
  v3 = *(v2 + 8 * (a1 - 12712));
  LODWORD(STACK[0xAB8]) = 53;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xAC8]) = 1;
  LODWORD(STACK[0xA70]) = 1;
  LODWORD(STACK[0xA18]) = 1;
  LODWORD(STACK[0x808]) = 1;
  LODWORD(STACK[0x814]) = 1;
  LODWORD(STACK[0x9A0]) = 1;
  LODWORD(STACK[0x920]) = 1;
  LODWORD(STACK[0xA48]) = 1;
  LODWORD(STACK[0x9A8]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v3();
}

uint64_t sub_244BAD5EC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xAC8]) = 0;
  LODWORD(STACK[0xA70]) = 0;
  LODWORD(STACK[0xA18]) = 0;
  LODWORD(STACK[0x808]) = 0;
  LODWORD(STACK[0x814]) = 0;
  LODWORD(STACK[0x9A0]) = 0;
  LODWORD(STACK[0x920]) = 0;
  LODWORD(STACK[0xAC0]) = 0;
  LODWORD(STACK[0xA48]) = 0;
  LODWORD(STACK[0x9A8]) = 0;
  LODWORD(STACK[0x9B8]) = 0;
  LODWORD(STACK[0xA54]) = 0;
  LODWORD(STACK[0x818]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0x828]) = 0;
  LODWORD(STACK[0x9C4]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0xAA8]) = 0;
  LODWORD(STACK[0x9E8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0x760]) = a2 ^ 0x5DA2C160;
  v7 = *(v6 + 8 * (a6 - 12712));
  LODWORD(STACK[0xAB8]) = 79;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xA28]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v7();
}

uint64_t sub_244BAD6E4@<X0>(int a1@<W0>, int a2@<W8>)
{
  LODWORD(STACK[0xA28]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0x984]) = a2 - (((a2 << ((126 * (v2 ^ 0x27)) ^ v5)) - 1278733436) & v4) - 933484093;
  v6 = *(v3 + 8 * ((1540 * (v2 != -32268825)) | (a1 + v2 + 2437)));
  LODWORD(STACK[0xAB8]) = 37;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xB58]) = 1;
  LODWORD(STACK[0xAC8]) = 1;
  LODWORD(STACK[0xA70]) = 1;
  LODWORD(STACK[0xA18]) = 1;
  LODWORD(STACK[0x808]) = 1;
  LODWORD(STACK[0x814]) = 1;
  LODWORD(STACK[0x9A0]) = 1;
  LODWORD(STACK[0x920]) = 1;
  LODWORD(STACK[0xAC0]) = 1;
  LODWORD(STACK[0xA48]) = 1;
  LODWORD(STACK[0x9A8]) = 1;
  LODWORD(STACK[0x9B8]) = 1;
  LODWORD(STACK[0xA54]) = 1;
  LODWORD(STACK[0x818]) = 1;
  LODWORD(STACK[0xB28]) = 1;
  LODWORD(STACK[0xAF0]) = 1;
  LODWORD(STACK[0xA68]) = 1;
  LODWORD(STACK[0xA20]) = 1;
  LODWORD(STACK[0x828]) = 1;
  LODWORD(STACK[0x9C4]) = 1;
  LODWORD(STACK[0xA30]) = 1;
  LODWORD(STACK[0x9C8]) = 1;
  LODWORD(STACK[0xB30]) = 1;
  LODWORD(STACK[0xA38]) = 1;
  LODWORD(STACK[0x9D8]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v6();
}

uint64_t sub_244BAD828(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xAC8]) = 0;
  LODWORD(STACK[0x9A0]) = 0;
  LODWORD(STACK[0x920]) = 0;
  LODWORD(STACK[0xAC0]) = 0;
  LODWORD(STACK[0xA48]) = 0;
  LODWORD(STACK[0x9A8]) = 0;
  LODWORD(STACK[0x9B8]) = 0;
  LODWORD(STACK[0xA54]) = 0;
  LODWORD(STACK[0x818]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0x828]) = 0;
  LODWORD(STACK[0x9C4]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0x690]) = a2 ^ 0xF39E98D0;
  v7 = *(v6 + 8 * (a6 - 12712));
  LODWORD(STACK[0xAB8]) = 59;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xA70]) = 1;
  LODWORD(STACK[0xA18]) = 1;
  LODWORD(STACK[0x808]) = 1;
  LODWORD(STACK[0x814]) = 1;
  LODWORD(STACK[0xA28]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v7();
}

uint64_t sub_244BAD920(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xAC8]) = 0;
  LODWORD(STACK[0xA70]) = 0;
  LODWORD(STACK[0xA18]) = 0;
  LODWORD(STACK[0x808]) = 0;
  LODWORD(STACK[0x814]) = 0;
  LODWORD(STACK[0x9A0]) = 0;
  LODWORD(STACK[0x920]) = 0;
  LODWORD(STACK[0xAC0]) = 0;
  LODWORD(STACK[0xA48]) = 0;
  LODWORD(STACK[0x9A8]) = 0;
  LODWORD(STACK[0x9B8]) = 0;
  LODWORD(STACK[0xA54]) = 0;
  LODWORD(STACK[0x818]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0x828]) = 0;
  LODWORD(STACK[0x9C4]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  LODWORD(STACK[0x834]) = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0x760]) = a2 ^ 0x5DA2C160;
  v7 = *(v6 + 8 * (a6 - 12712));
  LODWORD(STACK[0xAB8]) = 71;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xA28]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x830]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v7();
}

uint64_t sub_244BADA1C@<X0>(int a1@<W1>, int a2@<W8>)
{
  LODWORD(STACK[0xA28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0x698]) = (a1 ^ 0xD4992F19) + 1071901679 + ((a1 << ((a2 ^ 0xB8) - 117)) & 0xE7BBBB3A ^ 0x4689A108);
  v3 = *(v2 + 8 * a2);
  LODWORD(STACK[0xAB8]) = 41;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xB58]) = 1;
  LODWORD(STACK[0xAC8]) = 1;
  LODWORD(STACK[0xA70]) = 1;
  LODWORD(STACK[0xA18]) = 1;
  LODWORD(STACK[0x808]) = 1;
  LODWORD(STACK[0x814]) = 1;
  LODWORD(STACK[0x9A0]) = 1;
  LODWORD(STACK[0x920]) = 1;
  LODWORD(STACK[0xAC0]) = 1;
  LODWORD(STACK[0xA48]) = 1;
  LODWORD(STACK[0x9A8]) = 1;
  LODWORD(STACK[0x9B8]) = 1;
  LODWORD(STACK[0xA54]) = 1;
  LODWORD(STACK[0x818]) = 1;
  LODWORD(STACK[0xB28]) = 1;
  LODWORD(STACK[0xA68]) = 1;
  LODWORD(STACK[0xA20]) = 1;
  LODWORD(STACK[0x828]) = 1;
  LODWORD(STACK[0x9C4]) = 1;
  LODWORD(STACK[0xA30]) = 1;
  LODWORD(STACK[0x9C8]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v3();
}

uint64_t sub_244BADB48(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xA28]) = 0;
  LODWORD(STACK[0xA54]) = 0;
  LODWORD(STACK[0x818]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0x828]) = 0;
  LODWORD(STACK[0x9C4]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0x690]) = a2 ^ 0xF39E98D0;
  v7 = *(v6 + 8 * (a6 - 12712));
  LODWORD(STACK[0xAB8]) = 51;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xAC8]) = 1;
  LODWORD(STACK[0xA70]) = 1;
  LODWORD(STACK[0xA18]) = 1;
  LODWORD(STACK[0x808]) = 1;
  LODWORD(STACK[0x814]) = 1;
  LODWORD(STACK[0x9A0]) = 1;
  LODWORD(STACK[0x920]) = 1;
  LODWORD(STACK[0xAC0]) = 1;
  LODWORD(STACK[0xA48]) = 1;
  LODWORD(STACK[0x9A8]) = 1;
  LODWORD(STACK[0x9B8]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v7();
}

uint64_t sub_244BADC40(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xAC8]) = 0;
  LODWORD(STACK[0xA70]) = 0;
  LODWORD(STACK[0xA18]) = 0;
  LODWORD(STACK[0x808]) = 0;
  LODWORD(STACK[0x814]) = 0;
  LODWORD(STACK[0x9A0]) = 0;
  LODWORD(STACK[0x920]) = 0;
  LODWORD(STACK[0xAC0]) = 0;
  LODWORD(STACK[0xA48]) = 0;
  LODWORD(STACK[0x9A8]) = 0;
  LODWORD(STACK[0x9B8]) = 0;
  LODWORD(STACK[0xA54]) = 0;
  LODWORD(STACK[0x818]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0x828]) = 0;
  LODWORD(STACK[0x9C4]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0xAA8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0x68C]) = a2 ^ 0x40E81261;
  v7 = *(v6 + 8 * (a6 - 12712));
  LODWORD(STACK[0xAB8]) = 72;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xA28]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x8BC]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v7();
}

uint64_t sub_244BADD38(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0xA28]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  v7 = *(v6 + 8 * (a6 - 12712));
  LODWORD(STACK[0x688]) = a2 ^ 0x67399179;
  LODWORD(STACK[0xAB8]) = 34;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xB58]) = 1;
  LODWORD(STACK[0xAC8]) = 1;
  LODWORD(STACK[0xA70]) = 1;
  LODWORD(STACK[0xA18]) = 1;
  LODWORD(STACK[0x808]) = 1;
  LODWORD(STACK[0x814]) = 1;
  LODWORD(STACK[0x9A0]) = 1;
  LODWORD(STACK[0x920]) = 1;
  LODWORD(STACK[0xAC0]) = 1;
  LODWORD(STACK[0xA48]) = 1;
  LODWORD(STACK[0x9A8]) = 1;
  LODWORD(STACK[0x9B8]) = 1;
  LODWORD(STACK[0xA54]) = 1;
  LODWORD(STACK[0x818]) = 1;
  LODWORD(STACK[0xB28]) = 1;
  LODWORD(STACK[0xAF0]) = 1;
  LODWORD(STACK[0xA68]) = 1;
  LODWORD(STACK[0xA20]) = 1;
  LODWORD(STACK[0x828]) = 1;
  LODWORD(STACK[0x9C4]) = 1;
  LODWORD(STACK[0xA30]) = 1;
  LODWORD(STACK[0x9C8]) = 1;
  LODWORD(STACK[0xB30]) = 1;
  LODWORD(STACK[0xA78]) = 1;
  LODWORD(STACK[0xA38]) = 1;
  LODWORD(STACK[0x9D8]) = 1;
  LODWORD(STACK[0x9E0]) = 1;
  LODWORD(STACK[0x848]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v7();
}

uint64_t sub_244BADE30@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xAC8]) = 0;
  LODWORD(STACK[0xA70]) = 0;
  LODWORD(STACK[0x814]) = 0;
  LODWORD(STACK[0x9A0]) = 0;
  LODWORD(STACK[0x920]) = 0;
  LODWORD(STACK[0xAC0]) = 0;
  LODWORD(STACK[0xA48]) = 0;
  LODWORD(STACK[0x9A8]) = 0;
  LODWORD(STACK[0x9B8]) = 0;
  LODWORD(STACK[0xA54]) = 0;
  LODWORD(STACK[0x818]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0x828]) = 0;
  LODWORD(STACK[0x9C4]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  v5 = a1 ^ 0x1C25;
  LODWORD(STACK[0x794]) = v1 - ((v2 + 1510801192) & v4) + v5 - 1735298027;
  v6 = *(v3 + 8 * v5);
  LODWORD(STACK[0xAB8]) = 61;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xA18]) = 1;
  LODWORD(STACK[0x808]) = 1;
  LODWORD(STACK[0xA28]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v6();
}

uint64_t sub_244BADF48(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xAC8]) = 0;
  LODWORD(STACK[0xA70]) = 0;
  LODWORD(STACK[0xA18]) = 0;
  LODWORD(STACK[0x808]) = 0;
  LODWORD(STACK[0x814]) = 0;
  LODWORD(STACK[0x9A0]) = 0;
  LODWORD(STACK[0x920]) = 0;
  LODWORD(STACK[0xAC0]) = 0;
  LODWORD(STACK[0xA48]) = 0;
  LODWORD(STACK[0x9A8]) = 0;
  LODWORD(STACK[0x9B8]) = 0;
  LODWORD(STACK[0xA54]) = 0;
  LODWORD(STACK[0x818]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0x828]) = 0;
  LODWORD(STACK[0x9C4]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0x68C]) = a2 ^ 0x40E81261;
  v7 = *(v6 + 8 * (a6 - 12712));
  LODWORD(STACK[0xAB8]) = 64;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xA28]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v7();
}

uint64_t sub_244BAE040@<X0>(int a1@<W1>, int a2@<W8>)
{
  LODWORD(STACK[0xA28]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0x9C4]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0x928]) = 0;
  STACK[0x830] = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  v3 = *(v2 + 8 * (a2 - 6923));
  LODWORD(STACK[0x76C]) = a1 ^ 0xC93CD285;
  LODWORD(STACK[0xAB8]) = 46;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0x8A4]) = 1;
  LODWORD(STACK[0xB58]) = 1;
  LODWORD(STACK[0xAC8]) = 1;
  LODWORD(STACK[0xA70]) = 1;
  LODWORD(STACK[0xA18]) = 1;
  LODWORD(STACK[0x808]) = 1;
  LODWORD(STACK[0x814]) = 1;
  LODWORD(STACK[0x9A0]) = 1;
  LODWORD(STACK[0x920]) = 1;
  LODWORD(STACK[0xAC0]) = 1;
  LODWORD(STACK[0xA48]) = 1;
  LODWORD(STACK[0x9A8]) = 1;
  LODWORD(STACK[0x9B8]) = 1;
  LODWORD(STACK[0xA54]) = 1;
  LODWORD(STACK[0x818]) = 1;
  LODWORD(STACK[0xB28]) = 1;
  LODWORD(STACK[0x828]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v3();
}

uint64_t sub_244BAE140(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0xBC0]) = a6;
  v10 = (a6 - 14644) | 0x801;
  v11 = *v7;
  LODWORD(STACK[0xAF8]) = v10;
  v12 = *(v11 + 140);
  v13 = (v10 - 5320805) & (2 * v12);
  v14 = STACK[0xB00];
  v15 = *(STACK[0xB00] + 155);
  v16 = (v15 << 17) & 0x1400000;
  v17 = *(v11 + 220);
  *(&v19 + 1) = ((v17 >> 5) | (8 * *(STACK[0xB00] + 65))) ^ 0x589175F16CF2EBFLL;
  *&v19 = (v17 << 59) ^ 0x6800000000000000;
  v18 = v19 >> 59;
  v20 = (v15 << 16) - 0x5E5167D4F35FAFCELL;
  v21 = *(&off_278E1E490 + a6 - 13991);
  v22 = (*(STACK[0xB00] + 47) >> 3) | (32 * *(STACK[0xB00] + 47));
  v23 = *(STACK[0xB00] + 169) ^ v8;
  STACK[0xB68] = v21 + 1;
  LODWORD(v23) = *(v21 + 1 + v23);
  DWORD1(v19) = ~(v23 >> 3);
  LODWORD(v19) = (((v23 >> 3) | (32 * v23)) ^ 0x88888888) << 24;
  LOBYTE(v23) = v19 >> 26;
  v24 = *(v11 + 156) - 0x355618BD2AD6A400 - ((2 * *(v11 + 156)) & 0xAE) + 87;
  *(&v19 + 1) = v24 ^ a3;
  *&v19 = v24 ^ 0xCAA9E742D5295C00;
  *(&v19 + 1) = (v19 >> 7) - ((2 * (v19 >> 7)) & 0xC82F008501C180E0) + 0x6517804280E0C070;
  *&v19 = (*(v11 + 339) << 49) | (*(v11 + 65) << 41) | *(&v19 + 1) ^ 0x6517800000000000;
  v25 = v19 >> 41;
  v26 = v21 + 534;
  LODWORD(v17) = *(v21 + 534 + (v14[82] ^ 0x30));
  LODWORD(v17) = v17 - ((2 * v17) & 0x20) - ((2 * (v17 - ((2 * v17) & 0x20)) + 32) & 0xFFFFFFC7) - 13;
  LODWORD(v17) = (((v17 >> 1) & 0x29 ^ v6) - ((2 * ((v17 >> 1) & 0x29 ^ v6)) & 0xFFFFFFCF) - 29) ^ v17;
  DWORD1(v19) = v17 ^ 7;
  LODWORD(v19) = (v17 ^ 0xFFFFFF9F) << 24;
  LOBYTE(v17) = v19 >> 28;
  LODWORD(v24) = *(v11 + 12);
  v27 = v14[89] - ((2 * v14[89] - 8) & 0xFFFFFFA2) - 51;
  v28 = (v14[89] - ((2 * v14[89] - 8) & 0xA2) - 51) ^ 0x40;
  STACK[0xB60] = v21 + 263;
  v29 = (*(v21 + 263 + v28) - ((2 * *(v21 + 263 + v28)) & 0xFFA2) - 47) ^ v27;
  DWORD1(v19) = v29 ^ 3;
  LODWORD(v19) = (v29 ^ 0xE0) << 24;
  v30 = (v14[153] << 8) | (v14[144] << 16) | (v19 >> 27);
  v31 = v30 + 8245637 - 2 * (v30 & 0x7DD1BF ^ (v19 >> 27) & 0x3A);
  v32 = *(v21 + 534 + (*(v11 + 211) ^ 0x30));
  v33 = v13 + (v12 ^ 0x7FD76BEF);
  v34 = ((v32 >> 1) & 0x29 ^ 8) + ((2 * ((v32 >> 1) & 0x29)) ^ 0xFFFFFFEF) + 124;
  v35 = v34 ^ v32;
  v36 = v34 ^ ~v32;
  v37 = v14[61];
  v38 = (v37 << 33) & 0x1D400000000;
  v39 = (v37 << 32) + 0x3605C5EAA4D41096;
  DWORD1(v19) = v35 ^ 0xC;
  LODWORD(v19) = v36 << 24;
  v40 = ((v39 - v38) ^ 0x3605C5EAA4D41096) + (v14[8] << 56) + (v14[209] << 48);
  v41 = v20 - v16;
  v42 = (v18 ^ 0xB122EBE2D9E5D7EDLL | v41 ^ 0xA1AE982B0CA05032) + 0x3FA60834456029DBLL - ((2 * (v18 ^ 0xB122EBE2D9E5D7EDLL | v41 ^ 0xA1AE982B0CA05032)) & 0x7F4C10688AC053B6);
  LODWORD(v20) = v22 + 752687331 - ((2 * v22) & 0x1F6);
  v43 = (v40 | ((v24 << 24) - ((v24 << 25) & 0x90000000) - 934342698) & 0xFF000000 | (*(v11 + 149) << 40) | *&v31 & 0xFFFFFFLL) ^ 0xC87DD185;
  v44 = v43 + 0x3A0304E55B05A69ELL - 2 * (v43 & 0x3A0304E55B05A6BELL ^ v31 & 0x20);
  v45 = v21 + 794;
  v46 = (v42 ^ 0x3FA60834456029DBLL) + (v18 ^ v41 ^ v42 ^ 0x2F2A7BFD9025AE04) + ((2 * (v18 ^ v41 ^ v42)) ^ 0xA1AB0804DFB4A3F7);
  v47 = v46 - 0x7859B0EAA99F0064 - ((2 * (v46 + 1)) & 0xF4C9E2AACC1FF36);
  v48 = (v14[149] << 24) + 0x2713E5EA37D4CC5DLL - (v9 & (v14[149] << 25));
  v49 = (((((v48 ^ 0x2713E5EA37D4CC5DLL) - (v48 ^ 0xA0B5AAFF61B433C6 ^ v47)) ^ ((v47 ^ 0x7859B0EAA99F0064) + 1)) - 0x7859B0EAA99F0065 - ((2 * (((v48 ^ 0x2713E5EA37D4CC5DLL) - (v48 ^ 0xA0B5AAFF61B433C6 ^ v47)) ^ ((v47 ^ 0x7859B0EAA99F0064) + 1))) & 0xF4C9E2AACC1FF36)) ^ v47) + (v48 ^ 0x2713E5EA37D4CC5DLL);
  v50 = v25 & 0x91CD6A3885FFFFFFLL;
  v51 = (v14[29] << 32) + 0x455F0F5C47EDE5D7 - ((v14[29] << 33) & 0xB800000000);
  v52 = v51 ^ 0x455F0F5C47EDE5D7;
  v53 = (((v33 - 2144824303) | (v14[203] << 48)) ^ (v14[196] << 24) | (v23 << 32) | (v14[36] << 40) | (v14[218] << 56)) ^ v50;
  v54 = ((v14[90] << 48) | (*(v11 + 44) << 40) | (v14[101] << 56)) ^ v53 ^ (v51 ^ 0x455F0F5C47EDE5D7 | (*(v11 + 384) + 0x6D2171DA11F1AA98 - ((2 * *(v11 + 384)) & 0x130)) ^ 0x6D2171DA11F1AA98 | (v14[12] << 24) | (*(v11 + 112) << 16) | (v17 << 8));
  v55 = (v19 >> 28) | (*(v11 + 6) << 8) | (v14[60] << 16) | (v14[206] << 24) | (v14[163] << 32) | (v14[208] << 56) | (v14[145] << 40) | (*(v11 + 33) << 48);
  v56 = v49 ^ ((v14[165] << 40) | (v14[179] << 48) | (v14[25] << 32) | ((*(v45 + ((v20 + 24) ^ 0x2CDD18E3u)) ^ (((2 * (v20 + 24)) & 0x88 ^ 0xF7) + ((v20 + 24) ^ 0x2E) - 59) ^ 8u) << 56)) ^ v55;
  v57 = (v56 ^ 0x960EE6B08ADB0033) & (v53 ^ 0x66AD84F903E84191);
  v58 = v44 & 0xFFFFFFFEFFFFFFFFLL ^ (0xDD9CB830DD73B2DLL - (v39 & 0x100000000));
  v59 = v55 ^ v44;
  v60 = v56 ^ (v54 ^ 0x3E7692686F1EF74FLL) & (v53 ^ 0x99527B06FC17BE6ELL);
  v61 = (v56 ^ 0x69F1194F7524FFCCLL) & (v59 ^ 0x2DF720A63A886450) ^ v58;
  v62 = v53 ^ 0x70A4B2DF1A90B238 ^ (((v58 ^ 0xBC259A1157E181F9) & (v54 ^ 0xC1896D9790E108B0)) - ((2 * ((v58 ^ 0xBC259A1157E181F9) & (v54 ^ 0xC1896D9790E108B0))) & 0x2C126C4C32F1E752) + 0x160936261978F3A9);
  v63 = (v62 - ((2 * v62) & 0xF83A80AF312EE70ALL) + 0x7C1D405798977385) ^ v60;
  v64 = (v59 ^ 0xD208DF59C5779BAFLL) & (v58 ^ 0x43DA65EEA81E7E06) ^ v54;
  LOBYTE(v39) = (*(v11 + 384) - 104 - ((2 * *(v11 + 384)) & 0x30)) & 0x13;
  *(&v19 + 1) = v61 ^ 0x157E181F9;
  *&v19 = v61 ^ 0xBC259A1000000000;
  v65 = v57 ^ v59;
  v66 = v57 ^ v59 ^ v60;
  v67 = (v19 >> 33) ^ (v64 << 31) ^ ((v64 ^ 0x3E7692686F1EF74FLL) >> (v18 & 0x21 ^ 0x21) >> (v18 & 0x21));
  *(&v19 + 1) = v67 ^ 0xD24D710;
  *&v19 = v67 ^ 0xF2E96C7300000000;
  v68 = (v19 >> 31) - ((2 * (v19 >> 31)) & 0xF0C3C52C0AED1FF2) - 0x79E1D69FA897007;
  *(&v19 + 1) = ((v19 >> 31) - ((2 * (v19 >> 31)) & 0xAED1FF2) + 91656185) ^ 0xFFFFFFF9;
  *&v19 = v68 ^ 0x5AA7DDA32741DC00;
  v69 = (((v19 >> 10) ^ (v68 >> 17) ^ 0x2D53EED193A0) + 0x71288B77EF278C3 - 2 * (((v19 >> 10) ^ (v68 >> 17) ^ 0x2D53EED193A0) & 0x71288B77EF278D7 ^ ((v19 >> 10) ^ (v68 >> 17)) & 0x14)) ^ v68;
  *(&v19 + 1) = v63 ^ 0x11AD6ABC4FAFBF4BLL;
  *&v19 = v63 ^ 0xC000000000000000;
  v70 = v19 >> 61;
  *(&v19 + 1) = v69 ^ 0xD1;
  *&v19 = v69 ^ 0x2775551459B3A600;
  v71 = v19 >> 9;
  v72 = ((v68 << 47) ^ 0x47FC800000000000) - ((2 * ((v68 << 47) ^ 0x47FC800000000000)) & 0xFE62000000000000) + 0x7F31381F99C64A6ALL;
  v73 = ((v66 >> 28) | (v66 << 45)) ^ (v66 << 36) ^ ((v66 ^ 0x66176CA91C3B4F02) >> (v39 ^ 0x10u) >> (v39 ^ 3u)) ^ 0xAA54B0266176CA91;
  v74 = v73 - ((2 * v73) & 0x75151CA09E88E3DCLL) - 0x457571AFB0BB8E12;
  *(&v19 + 1) = v64;
  *&v19 = v64 ^ 0x5D67275DDB25CE4;
  v75 = v63 ^ __ROR8__(v63, 39) ^ v70;
  v76 = v75 ^ 0xA3AEED358DD7B71CLL;
  v77 = v64 ^ __ROR8__(v64, 6) ^ (v19 >> 1);
  *(&v19 + 1) = v71 ^ (v72 >> 9) ^ 0x5D2EA3446CBD54;
  *&v19 = v71 ^ 0x6800000000000000;
  v78 = v75 ^ 0xA3AEED358DD7B71CLL ^ v77;
  v79 = (v65 >> 7) ^ (v65 >> 41) ^ (v65 << 23) ^ (v65 << 57) ^ 0x8D4A8E3F41B4E3A7;
  v69 ^= 0x2775551459B3A6D1uLL;
  v80 = v79 - ((2 * v79) & 0x50EC5935363C53F6) + 0x28762C9A9B1E29FBLL;
  v81 = v80 ^ v65;
  v82 = (v69 - ((v19 >> 55) ^ 0x6D99FE9740BCE2D0)) ^ ((v72 ^ 0x283B47E06639B595) + 1);
  v83 = (v72 ^ 0x5ECCBF5B6641CDA2 ^ (v82 - ((2 * v82) & 0x12100E89FF0F0F90) - 0x76F7F8BB00787838)) + v69;
  v84 = v83 + 0x7964D25ECFED2DE2 - ((2 * v83) & 0xF2C9A4BD9FDA5BC4);
  v85 = v80 ^ v60 ^ v74;
  v86 = (v85 ^ 0x765132EA4A917A3CLL) & (v75 ^ 0x23C7797DF81BA423) ^ v85 & 0x8AF54CBF201741BDLL;
  v87 = ((v84 ^ 0x7964D25ECFED2DE2) - (v81 ^ 0x2C57FDB229FC96CDLL ^ v84)) ^ ((v81 ^ 0xAACCD01319EE44D0) + 1);
  v88 = ((v84 ^ 0x7964D25ECFED2DE2) & (v78 ^ 0x60A20CB4A0E038EALL)) - ((2 * ((v84 ^ 0x7964D25ECFED2DE2) & (v78 ^ 0x60A20CB4A0E038EALL))) & 0x1539B1EEABB6A504) + 0xA9CD8F755DB5282;
  v89 = (v81 ^ 0x33B2ECA3AE1A7123 ^ (v87 - ((2 * v87) & 0xCD03869E90179418) + 0x6681C34F480BCA0CLL)) + (v84 ^ 0x7964D25ECFED2DE2);
  v90 = v89 + 0x7E5C05CA6E04A1BCLL - ((2 * v89) & 0xFCB80B94DC094378);
  v91 = (v90 & 0x10000 ^ 0x13FDE6EFFC5FCFF7) + 2 * (v90 & 0x10000);
  v92 = v84 & 0x432381E3A8DA614 ^ 0x412280030008214 ^ (v90 ^ 0x7A6E3DD4548907A8) & (v84 ^ 0x869B2DA13012D21DLL);
  v93 = v92 & (v78 ^ 0x1F5DF34B5F1FC715);
  v94 = v92 + (v78 ^ 0x9F5DF34B5F1FC715);
  v95 = (v90 ^ 0x81A3FA3591FB5E43) & (v85 ^ 0x89AECD15B56E85C3);
  v96 = v90 & 0xFFFFFFFFFFFEFFFFLL;
  v97 = (v75 ^ 0x56CDCA3D27F31A61) & (v77 ^ 0x95C12BBC0AC49597) ^ v85;
  v98 = 0x17AA6BD440BE5FADLL - v91;
  if (((v91 - 0x13FDE6EFFC5FCFF7) & (v86 ^ 0x25100AA00110000)) == 0)
  {
    v98 = v91 - 0x1051620BB8014041;
  }

  v99 = ((v86 ^ 0x25100AA0011403CLL) - 0x3AC84E4445E8FB6 + v98) ^ v96;
  v100 = v94 - 2 * v93;
  v101 = v100 - 0x6ABCBF2CCDD3276FLL;
  v102 = v100 - 0x6ABCBF2CCDD3276FLL - ((2 * v100) & 0x2A8681A66459B0EELL) - 26;
  *(&v103 + 1) = v99 ^ v97 ^ 0xF063B39B11FLL;
  *&v103 = v99 ^ v97 ^ 0x14AD600000000000;
  v104 = (v95 + 0x7964D25ECFED2DE2 - ((2 * v95) & 0xF2C9A4BD9FDA5BC4)) ^ v84;
  v105 = v97 ^ v76 ^ v88;
  v106 = ((v103 >> 44) - ((2 * (v103 >> 44)) & 0x4FFB51B9EDF51FELL) + 0x27FDA8DCF6FA8FFLL) ^ 0x27FDA8DCF600000;
  *(&v103 + 1) = ((v103 >> 44) - ((2 * (v103 >> 44)) & 0x9EDF51FE) - 814765825) ^ 0xFA8FF;
  *&v103 = v106;
  v107 = (v103 >> 20) - 0x204CD867E6E3695FLL - ((2 * (v103 >> 20)) & 0xBF664F3032392D42);
  v108 = v102 ^ (v104 - 0x6ABCBF2CCDD32789 - ((2 * v104) & 0x2A8681A66459B0EELL));
  *(&v103 + 1) = ((v103 >> 20) + 421303969 - ((2 * (v103 >> 20)) & 0x32392D42)) ^ 0x496A1;
  *&v103 = v107 ^ 0xDFB3279819180000;
  v109 = (((v103 >> 19) ^ (v107 >> 28) ^ 0xDFB327981) - 0x204CD867E6E3695FLL - 2 * (((v103 >> 19) ^ (v107 >> 28) ^ 0xDFB327981) & 0x5FB32798191C96ABLL ^ ((v103 >> 19) ^ (v107 >> 28)) & 0xA)) ^ v107;
  v110 = *(v26 + ((v105 >> 61) ^ 0x37));
  v111 = v102 ^ v51 ^ (v109 + 0x455F0F5C47EDE5D7 - ((2 * v109) & 0x8ABE1EB88FDBCBAELL));
  LODWORD(v109) = (((v110 >> 1) & 0x29 ^ 8) + (~(2 * ((v110 >> 1) & 0x29 ^ 8)) | 0xFFFFFFEF) - 97) ^ v110;
  v112 = v111 & 0x80000000000 | v52;
  v113 = ((v108 << 54) ^ 0x3A40000000000000) - 0x20BB204EBE17460FLL + (~(2 * ((v108 << 54) ^ 0x3A40000000000000)) | 0x417FFFFFFFFFFFFFLL) + 1;
  v114 = v102 ^ (v102 << 58);
  DWORD1(v103) = v109 ^ 0xFFFFFFF9;
  LODWORD(v103) = (v109 ^ 0x10) << 24;
  v115 = (v102 >> 6) ^ 0xE4AD7EFC6999C5D6 ^ v114;
  v116 = (v103 >> 28);
  v114 ^= 0xE7113A14397C3502;
  v117 = v112 ^ v111 & 0xFFFFF7FFFFFFFFFFLL;
  v118 = (v114 - v115) ^ (((v102 >> 6) ^ 0xFC43BB17AF1A0F2BLL) + 1);
  *&v103 = __ROR8__(v108 >> 10, 10);
  v119 = (v103 ^ 0x450000961F0E3537) - 0x30FBFAC5B439BA61 - ((2 * (v103 ^ 0x450000961F0E3537)) & 0x9E000A74978C8B3ELL);
  v120 = ((2 * v99) & 0x9CBBAE9B61464016 ^ 0x6347F56FBFFFBFEFLL) + (v99 ^ 0x7E5C05CA6E04A1BCLL);
  v121 = v120 - ((2 * v120 + 0x1CBBAE9B61464018) & 0x1DA8DF031F249270) + 0x5D3246CF40356944;
  *(&v103 + 1) = v101;
  *&v103 = v102;
  v122 = (((v102 >> 6) ^ 0x149DDF2766E0FFB3 ^ (v118 - ((2 * v118) & 0x2E43379E6C0A1ECELL) + 0x17219BCF36050F67)) + v114) ^ (v103 >> 1);
  v123 = v105 ^ v116 ^ (8 * v105) ^ (v105 >> 39) ^ (v105 << 25);
  v124 = v121 ^ (v121 >> 7) ^ (v121 >> 41) ^ (v121 << 23) ^ (v121 << 57);
  v125 = v122 ^ v123 ^ 0xB036937D4049D28BLL;
  v126 = v113 ^ __ROR8__(v108, 17) ^ __ROR8__(((v119 ^ 0xCF04053A4BC6459FLL) - 0x319D5D55860F384 + ((2 * v119) & 0xF98014554F3E18F6 ^ 0x67FFFFABF8F3F7C9)) ^ (v113 ^ 0xDF44DFB141E8B9F1 | (v108 >> 10) ^ 0x2587C38D4DD14), 54);
  v127 = v124 ^ v102 ^ ((v117 ^ (v107 << 36) ^ 0x48A2AC3322CD877) - 0x6ABCBF2CCDD32789 - 2 * ((v117 ^ (v107 << 36) ^ 0x48A2AC3322CD877) & 0x154340D3322CD87FLL ^ v117 & 8));
  v128 = v126 ^ 0xFD0064B3F0DA92D9 ^ v124;
  v129 = (v122 ^ 0x77889D0A1CBE1A81) & (v123 ^ 0xA5A95BFAE0933D55);
  v130 = (v126 ^ 0x90670E603A570047) & (v124 ^ 0xBE0E0E7A108A079DLL) ^ v125;
  v131 = (v127 ^ 0x41F1F185EF75F862) & (v123 ^ 0x5A56A4051F6CC2AALL);
  v132 = (((v126 ^ 0x6F98F19FC5A8FFB8) & (v125 ^ 0x6217558DBC64F55FLL)) - ((2 * ((v126 ^ 0x6F98F19FC5A8FFB8) & (v125 ^ 0x6217558DBC64F55FLL))) & 0xD4C06EF0BE4A2042) - 0x159FC887A0DAEFDFLL) ^ v123 ^ 0xB036937D4049D28BLL;
  v133 = v127 ^ v129;
  v134 = v131 ^ v128;
  v135 = v130 ^ v126 ^ 0xFD0064B3F0DA92D9 ^ (((v127 ^ 0xBE0E0E7A108A079DLL) & (v128 ^ 0xD36964A9DA079503)) - ((2 * ((v127 ^ 0xBE0E0E7A108A079DLL) & (v128 ^ 0xD36964A9DA079503))) & 0x25312A586AE4DAC2) - 0x6D676AD3CA8D929FLL);
  v136 = v133 ^ (v132 - ((2 * v132) & 0x7724A364541922DELL) - 0x446DAE4DD5F36E91);
  v137 = v134 ^ v133;
  v138 = v130 ^ (v130 >> 1);
  v139 = ((v137 >> 19) ^ (v137 >> 28) | (v137 << 45)) ^ (v137 << 36) ^ 0xF3DA4E2620EBA5F2;
  v140 = (v139 - ((2 * v139) & 0xB66EF68933FF9802) + 0x5B377B4499FFCC01) ^ v137;
  *(&v103 + 1) = v138 ^ 0x254854A469;
  *&v103 = v138 ^ 0x5E379A0000000000;
  v141 = v103 >> 38;
  *(&v103 + 1) = v141 ^ ((v130 << 25) | 0x1F584F9);
  *&v103 = v141 ^ 0x2B11219074000000;
  v142 = v103 >> 26;
  *(&v103 + 1) = v134 ^ 6;
  *&v103 = v134 ^ 0xF60A307E5C55DB80;
  v143 = v103 >> 7;
  v144 = (v136 >> 39) ^ (8 * v136) ^ ((v136 ^ 0x59C5FC83A8696F2 ^ ((v136 ^ 0x59C5FC83A8696F2) << 25)) & 0xECFC17107721B602 ^ (v136 >> 61) & 2 | (v136 ^ 0x59C5FC83A8696F2 ^ ((v136 ^ 0x59C5FC83A8696F2) << 25)) & 0x1303E8EF88DE49FDLL ^ (v136 >> 61) & 0xFFFFFFFFFFFFFFFDLL);
  *(&v103 + 1) = v135 ^ 0x363;
  *&v103 = (v135 & 0x2C4 ^ 0xFFFFFFFFFFFFFF7BLL) - (v135 ^ 0xB5BC4592D479AE58);
  v145 = v103 >> 10;
  *(&v103 + 1) = v134 ^ 0x7E5C55DB86;
  *&v103 = v134 ^ 0xF60A300000000000;
  v146 = v143 ^ v134 ^ ((v103 >> 41) - ((2 * (v103 >> 41)) & 0x3864DDCAC1846F62) + 0x1C326EE560C237B1);
  *(&v103 + 1) = v146 ^ 0x13C97EC37;
  *&v103 = v146 ^ 0xEA385E9A00000000;
  v147 = v103 >> 33;
  *(&v103 + 1) = v147 ^ 0xBEBF363;
  *&v103 = v147 ^ 0xAB2A9A4D00000000;
  v148 = (v103 >> 31) - 0x62FAAE12343EF9F1 + (~(2 * (v103 >> 31)) | 0xC5F55C24687DF3E3);
  v149 = v140 ^ v148;
  v150 = v135 ^ __ROR8__(v135, 17) ^ v145;
  v151 = v142 ^ __ROR8__(v130, 6) ^ v144;
  v152 = v148 ^ v150;
  v153 = v149 ^ (v151 ^ 0x1D5B9A4CBE629B07) & (v144 ^ 0xDA6A304963EB63FBLL);
  v154 = (v149 ^ 0x3124AB80DC901DB6) & (v144 ^ 0x2595CFB69C149C04) ^ v152;
  *(&v103 + 1) = v152 ^ 0x28666B24F434;
  *&v103 = v152 ^ 0xE920800000000000;
  v155 = v103 >> 47;
  *(&v103 + 1) = v155 ^ 0x11B8F;
  *&v103 = v155 ^ 0xA3AB4BB2B5160000;
  v156 = v154 ^ v153;
  v157 = (((v150 ^ 0x63F21F4CF6B0C6A0) & (v151 ^ 0xE2A465B3419D64F8)) - ((2 * ((v150 ^ 0x63F21F4CF6B0C6A0) & (v151 ^ 0xE2A465B3419D64F8))) & 0xBD4092AC88467AFCLL) - 0x215FB6A9BBDCC282) ^ v144;
  v158 = (v152 ^ 0xE920A8666B24F434) & (v150 ^ 0x9C0DE0B3094F395FLL);
  v159 = (v157 ^ 0xFB3586E0D837A17ALL) + 0x1450B63C2301BD71 - 2 * ((v157 ^ 0xFB3586E0D837A17ALL) & 0x1450B63C2301BD75 ^ v157 & 4);
  v160 = v159 ^ v153;
  v161 = v159 ^ v153 ^ 0xCD5C0484563B6BA2;
  v162 = (((v154 ^ v153) << 36) ^ 0x88FA438000000000) + 0x729081FD046C6458 - ((2 * (((v154 ^ v153) << 36) ^ 0x88FA438000000000)) & 0xE52103E000000000);
  v163 = v158 ^ v151;
  v164 = ((v103 >> 17) ^ 0x72382E2A5A26A574) & (v149 ^ 0xCEDB547F236FE249);
  v165 = v150 ^ 0x771F7A5C65DC15FDLL ^ (v164 - ((2 * v164) & 0x29DACA2126D9A6BALL) + 0x14ED6510936CD35DLL);
  v167 = v163 ^ (v163 >> 1);
  v168 = (v159 ^ ~v153) >> 61;
  v169 = v167 & 0x5E435216F77EEFBFLL ^ 0x2CCE5FEF945E8B12;
  if (v58 == 0xBC259A1157E181F9)
  {
    v169 = v167 ^ 0xDD2764F94DF9B12;
  }

  v170 = v156 ^ (v156 >> 19);
  v171 = (v156 >> 28) ^ 0x764D624A8;
  v172 = (v170 ^ 0x324C6F529) & v171;
  v173 = (v170 ^ 0x764D6C8324C6F529) + v171;
  v174 = (v165 - ((2 * v165) & 0xC4C64B0A1A376D14) + 0x626325850D1BB68ALL) ^ v163;
  if (v153 == 0xCEDB547F236FE249)
  {
    v175 = 0x5E435216F77EEFBFLL;
  }

  else
  {
    v175 = v169 ^ 0x9332B206DB9DB8FFLL;
  }

  v176 = (v173 - 2 * v172) ^ (v156 << 45);
  *(&v177 + 1) = v174 ^ 0x4F;
  *&v177 = v174 ^ 0x90FF945E07D38000;
  v178 = (v168 + (v160 ^ 0xEE1F36F0FF6978D5) - 2 * (v168 & (v160 ^ 0x6E1F36F0FF6978D5))) ^ (v160 >> 39);
  v179 = ((v163 << 58) ^ 0x2400000000000000) + 0x626D0DF0F182C59ELL - (((v163 << 58) ^ 0x2400000000000000) >> 61 << 62);
  v180 = v162 ^ 0x729081FD046C6458;
  v181 = (v162 ^ 0x729081FD046C6458) - (v162 ^ 0x861781FD046C6458 ^ v176);
  v182 = v167 & 0xA1BCADE908811040 ^ ((v163 >> 6) | (~v163 << 63)) ^ v175 & (v169 ^ 0x328E1FEFD31CA8BFLL);
  v166 = ((8 * v161) ^ 0x1A1993A54A909BB8) - 0x23BE273ADF44BCC7 - ((2 * ((8 * v161) ^ 0x1A1993A54A909BB8)) & 0xB883B18A41768670);
  v183 = ((((((v178 ^ 0x1DC3E6D) - (v178 ^ v166 ^ 0xDC41D8C521677D54)) ^ ((v166 ^ 0x23BE273ADF44BCC6) + 1)) - 0x23BE273ADF44BCC7 - ((2 * (((v178 ^ 0x1DC3E6D) - (v178 ^ v166 ^ 0xDC41D8C521677D54)) ^ ((v166 ^ 0x23BE273ADF44BCC6) + 1))) & 0xB883B18A41768672)) ^ v166) + (v178 ^ 0x1DC3E6D)) ^ (v161 << 25);
  v184 = v183 ^ 0xC9A7C392CDCCE540;
  v185 = (v176 ^ 0x14121E9F8DAF73ELL ^ ((v181 ^ ((v176 ^ 0xB78FFFFFFFFFFFFLL) + 1)) - ((2 * (v181 ^ ((v176 ^ 0xB78FFFFFFFFFFFFLL) + 1))) & 0xEB8C43D3F1B5EE7CLL) - 0xA39DE16072508C2)) + v180;
  v186 = v185 ^ 0xE7E7EADDBFFFAB95;
  v187 = (2 * v185) & 0xCFCFD5BB7FFF572ALL;
  v188 = v182 ^ 0xDFAA77B2771A19A8 ^ ((((v179 ^ 0x626D0DF0F182C59ELL) - (v179 ^ 0x43D8856BF0E9DD15 ^ v182)) ^ ((v182 ^ 0xDE4A7764FE94E774) + 1)) - ((2 * (((v179 ^ 0x626D0DF0F182C59ELL) - (v179 ^ 0x43D8856BF0E9DD15 ^ v182)) ^ ((v182 ^ 0xDE4A7764FE94E774) + 1))) & 0xFC3FFE52ECE20246) - 0x1E000D6898EFEDDLL);
  v189 = (((v177 >> 10) ^ v174) & 0x80000000000000 | (v174 >> 17)) ^ ((v177 >> 10) ^ v174) & 0xFF7FFFFFFFFFFFFFLL;
  v190 = (((v174 << 47) ^ 0xC027800000000000) + 0x2CCA03C9FA1EE54DLL - ((2 * ((v174 << 47) ^ 0xC027800000000000)) & 0x5994000000000000)) ^ 0x2CCA03C9FA1EE54DLL;
  v191 = (v189 ^ 0x90FFDC21CDFC83A6) + v190;
  v192 = v154 ^ (v154 << 23) ^ (v154 >> 7) ^ ((v154 >> 41) | (v154 << 57));
  v193 = v192 ^ 0x311347F0B265E6A1;
  v194 = (v189 ^ 0x10FF800000000000) & v190;
  v195 = v188 + (v179 ^ 0x626D0DF0F182C59ELL) - ((2 * (v188 + (v179 ^ 0x626D0DF0F182C59ELL))) & 0x7F58F914C621CBD0) - 0x405383759CEF1A18;
  v196 = v183 ^ 0xC9A7C392CDCCE540 ^ v195;
  v197 = v191 - 2 * v194 - ((2 * (v191 - 2 * v194)) & 0xF97286F33D73C77CLL) - 0x346BC8661461C42;
  v198 = (v195 ^ 0x8190C05325EFEF82) & (v183 ^ 0x16AD5BD911FFFFFFLL) ^ v183 & 0x3E3CBCD946FF0A6ALL;
  v199 = v197 ^ v192;
  v200 = v186 + 0x181815224000546BLL + v187 + (v192 ^ 0x311347F0B265E6A1) - 2 * ((v186 + 0x181815224000546BLL + v187) & (v192 ^ 0x311347F0B265E6A1));
  v201 = v200 + 0x469756052A9D4B63 - ((2 * v200) & 0x8D2EAC0A553A96C6);
  v202 = v201 ^ 0x469756052A9D4B63;
  if ((v196 & 0x4000000000000) != 0)
  {
    v203 = 0xFFFC000000000000;
  }

  else
  {
    v203 = 0x4000000000000;
  }

  v204 = (v201 ^ 0xB968A9FAD562B49CLL) & (v183 ^ 0xE952A426EE000000);
  v205 = (v198 ^ 0x60A03EBEE1FAC477 ^ ((((v201 ^ 0x469756052A9D4B63) - (v198 ^ 0x50BB4EDC2A624109 ^ v201)) ^ ((v198 ^ 0xE9D3E726FF00F595) + 1)) - ((2 * (((v201 ^ 0x469756052A9D4B63) - (v198 ^ 0x50BB4EDC2A624109 ^ v201)) ^ ((v198 ^ 0xE9D3E726FF00F595) + 1))) & 0xED184CCFC20B9C3ALL) + 0x768C2667E105CE1DLL)) + v202;
  v206 = v205 - ((2 * v205) & 0x84C04029717F16DCLL) - 0x3D9FDFEB47407492;
  v207 = v204 ^ v199;
  v208 = ((v203 + (v196 ^ 0x9F591B3E40DC00A8)) ^ 0xFFFBFFFFFFFFFFFFLL) & (v197 ^ 0xC18A66CC34416B94) ^ (v203 + (v196 ^ 0x9F591B3E40DC00A8)) & 0x3D3325B5AAF8882ALL;
  v209 = v202 & (v199 ^ 0x3255FB76D323FAE0);
  v210 = v206 ^ v207;
  v211 = v206 ^ v184;
  v212 = (v197 ^ 0x346BC8661461C41) & v193 ^ v196;
  v213 = v209 ^ v197;
  if ((v211 & 0x80000000000000) != 0)
  {
    v214 = 0x80000000000000;
  }

  else
  {
    v214 = 0xFF80000000000000;
  }

  v215 = v214 + (v211 ^ 0xE29547A09B736E2ELL) - 0x6046A95D1864F6CELL - ((2 * (v214 + (v211 ^ 0xE29547A09B736E2ELL))) & 0x3F72AD45CF361264);
  v216 = v210 >> 28;
  *(&v218 + 1) = v208 ^ 0x2A;
  *&v218 = v208 ^ 0x3D3325B5AAF88800;
  v217 = v218 >> 11;
  v219 = STACK[0xBC0];
  *(&v218 + 1) = v217 ^ 0x85D99DDADFBFFLL;
  *&v218 = v217 ^ 0xCAE0000000000000;
  v220 = v215 ^ ((v218 >> 53) - 0x6046A95D1864F6CELL - ((2 * (v218 >> 53)) & 0x3F72AD45CF361264));
  v221 = ((v212 ^ 0x9F591B3E40DC00A8) - (v212 ^ 0x15CCD1032883E724 ^ v213)) ^ ((v213 ^ 0x756A35C297A01873) + 1);
  v222 = (v213 ^ 0xCC8305B28F09B7C2 ^ (v221 - ((2 * v221) & 0x8C2D9F1FCEACA09CLL) + 0x4616CF8FE756504ELL)) + (v212 ^ 0x9F591B3E40DC00A8);
  v223 = v222 + 0x3199E6A2CE35C76FLL - ((2 * v222) & 0x6333CD459C6B8EDELL);
  *(&v218 + 1) = v212;
  *&v218 = v212 ^ 0xB79211CBD11A2B6ELL;
  v224 = v220 ^ (v220 >> 39) ^ ((v220 ^ 0xF179F5B2CD755076) >> ((v210 >> 28) & 0x3D ^ 0x11) >> ((v210 >> 28) & 0x3D ^ 0x2C)) ^ (((8 * v220) ^ 0x8BCFAD966BAA83B0) - ((2 * ((8 * v220) ^ 0x8BCFAD966BAA83B0)) & 0x81312F2CAB97C4D0) - 0x3F676869AA341D96);
  v225 = (v218 >> 1) ^ (v212 >> 6);
  v226 = v224 ^ (v220 << 25);
  v227 = (((((v206 ^ v207) << 45) ^ 0xDF73E00000000000) + 0x4F3B8660895D8FDBLL - ((2 * (((v206 ^ v207) << 45) ^ 0xDF73E00000000000)) & 0x9E77000000000000)) ^ 0x4F3B8660895D8FDBLL | (v210 >> 19) ^ 0x2AF4E39A776) ^ (v210 << 36) ^ 0xBB6FB9F000000000;
  v228 = (v227 - ((2 * v227) & 0xB602B0B6F36F926ELL) + 0x5B01585B79B7C937) ^ v216;
  v229 = (v228 ^ 0x5B01585A2E10D5E4) - 2 * ((v228 ^ 0x5B01585A2E10D5E4) & 0x6C5C5E39D8C6DDB2 ^ v228 & 0x10) - 0x13A3A1C62739225ELL;
  v230 = (v207 << 23) ^ (v207 << 57) ^ (v207 >> 7) ^ (v207 >> 41);
  v231 = v230 ^ v207;
  *(&v218 + 1) = ~v224;
  *&v218 = v226 ^ 0x547B8884755C41F4;
  v232 = v218 >> 2;
  v233 = ((v225 ^ (v212 << 58) ^ 0xBADE48472F4468ADLL) - 2 * ((v225 ^ (v212 << 58) ^ 0xBADE48472F4468ADLL) & 0x35733914D54AA49CLL ^ v225 & 0x10) - 0x4A8CC6EB2AB55B74) ^ v212;
  *(&v218 + 1) = v223 ^ 0x36F;
  *&v218 = v223 ^ 0x3199E6A2CE35C400;
  v234 = v206 ^ v230 ^ v229;
  v235 = (v218 >> 10) ^ v223;
  v236 = (v223 >> 17) ^ 0x18CCF351671ALL;
  v237 = (v235 ^ 0x3199E6A2CE35C76FLL) + v236;
  v238 = (v235 ^ 0x66A2CE35C76FLL) & v236;
  v239 = v233 ^ v226;
  v240 = (v237 - 2 * v238) ^ (v223 << 47);
  v241 = v240 ^ 0x508902DC3802E855 ^ v231;
  *(&v218 + 1) = v232 ^ 0x3190A97557C22E32;
  *&v218 = v232 ^ 0x8000000000000000;
  v242 = (v234 ^ 0xF171AF64E869660FLL) & (v226 ^ 0x547B8884755C41F7);
  v243 = ((v218 >> 62) ^ 0x39BD5A2AA0F74735) & (v239 ^ 0x569AA05B710CCE15) ^ v234;
  v244 = v226 ^ 0x41C6682468232CFCLL ^ (((v239 ^ 0xA9655FA48EF331EALL) & (v240 ^ 0xE3B7800000000000)) - ((2 * ((v239 ^ 0xA9655FA48EF331EALL) & (v240 ^ 0xE3B7800000000000))) & 0x2B7BC1403AFEDA16) + 0x15BDE0A01D7F6D0BLL);
  v245 = v244 - ((2 * v244) & 0xC2693808984DA2ACLL) - 0x1ECB63FBB3D92EAALL;
  v246 = v242 ^ v241;
  LOBYTE(v244) = ((v245 ^ ~v243) >> 61) ^ 5;
  v247 = v243 ^ v242 ^ v241;
  *(&v218 + 1) = v247 ^ 0xA7FF;
  *&v218 = v247 ^ 0x8D78F92F2A580000;
  v248 = v244 - ((2 * v244 - 8) & 0x12) - 123;
  v249 = *(STACK[0xB60] + (v248 ^ 0x18));
  v250 = v247 ^ __ROR8__(v247, 28) ^ (v218 >> 19);
  LODWORD(v247) = ((32 * (v250 & 7)) | (v250 >> 3)) ^ 0xA1;
  LODWORD(v242) = v247 - 1038810264 - ((2 * v247) & 0xD0);
  LOBYTE(v247) = *(v45 + (v242 ^ 0xC2150370));
  v14[65] = BYTE1(v250) ^ 0x35;
  v14[165] = BYTE5(v250) ^ 0x86;
  v14[47] = HIBYTE(v250) ^ 0x28;
  *(v11 + 220) = ((v247 ^ -v247 ^ (8 - (v247 ^ 8))) + 8) ^ v242 ^ 0x79;
  v14[179] = BYTE6(v250) ^ 0xF2;
  v14[155] = BYTE2(v250) ^ 0xD7;
  v251 = v245 ^ v243;
  v252 = v215 == 0x9FB956A2E79B0932;
  v253 = v249 - ((2 * v249) & 0x44) - 94;
  if (!v252)
  {
    v253 = v248 ^ v249 ^ 0xC8;
  }

  v254 = (v253 ^ 0xA2 | v248 ^ 0x6A) ^ ((v248 ^ 0x6A | v249) - (v248 ^ v249 ^ 0x6A));
  v255 = v251 ^ (v251 >> 39) ^ (8 * v251);
  *(&v257 + 1) = v255 ^ 0xF9A6F6231A0CC3;
  *&v257 = v255 ^ 0x9B00000000000000;
  v256 = v257 >> 56;
  *(&v257 + 1) = v256 ^ 0x43;
  *&v257 = v256 ^ (((v254 >> 3) | (32 * v254)) << 8) ^ 0xF33BAA35EE80D00;
  v258 = (v257 >> 8) ^ (v251 << 25);
  *(v11 + 339) = ((v257 >> 8) >> 8) ^ 0xE8;
  v14[149] = BYTE3(v250) ^ 0xFD;
  v14[169] = BYTE4(v258) ^ 0xA2;
  STACK[0x850] = v250;
  v14[25] = BYTE4(v250) ^ 0xD7;
  *(v11 + 65) = BYTE1(v257) ^ 0xD;
  *(v11 + 156) = ((v257 >> 8) >> 16) ^ 0x5E;
  v14[196] = (((v257 >> 8) ^ (v251 << 25)) >> 24) ^ 0xD;
  v14[36] = BYTE5(v258) ^ 0x8E;
  v259 = v239 ^ (v240 ^ 0x1C487FFFFFFFFFFFLL) & (v231 ^ 0xF7A87F6FF4E6BFCDLL);
  v260 = ((2 * v259) & 0xF7EFAB7EFFE7BEFELL ^ 0x9705820812C218C8) + (v259 ^ 0x307D1EBBF69AD39BLL);
  v261 = v260 + 0x4082A40800C2081 + (((v259 ^ 0x2B8849446AB1311CLL) + 0x4082A40800C2081 + v260 + 1) ^ 0xFFFFFFFFFFFFFFFELL);
  v262 = v261 - ((2 * v261) & 0x6C262F7F8298434ELL) + 0x361317BFC14C21A7;
  v263 = STACK[0xB68];
  LODWORD(v255) = *(STACK[0xB68] + (BYTE6(v258) ^ 0xC4));
  DWORD1(v257) = ~(v255 >> 3);
  LODWORD(v257) = (((v255 >> 3) | (32 * v255)) ^ 0x88888888) << 24;
  v264 = v262 ^ (v262 >> 1) ^ (v262 >> 6);
  v265 = v264 ^ (v262 << 58);
  v14[218] = HIBYTE(v258) ^ 0x79;
  *(v11 + 384) = v264 ^ 0xF2;
  v14[203] = v257 >> 26;
  v14[82] = BYTE1(v264) ^ 1;
  v266 = *(v26 + (BYTE2(v264) ^ 0xDFLL));
  v14[29] = BYTE4(v264) ^ 0x3E;
  *(v11 + 44) = BYTE5(v264) ^ 0xD0;
  LODWORD(v258) = (v266 >> 1) & 0x29;
  DWORD1(v257) = v258 ^ ~v266;
  LODWORD(v257) = (v258 ^ v266 ^ 0x80) << 24;
  v14[12] = BYTE3(v264) ^ 0xDE;
  v267 = ((v264 >> 51) & 0x1F | (v265 >> 43) & 0xE0) ^ 0x58;
  v268 = v267 + 1096066330 - 2 * (v267 & 0x3A ^ (v265 >> 43) & 0x20);
  *(v11 + 112) = v257 >> 28;
  LODWORD(v258) = (213 - (v268 ^ 0x4154A5CF)) ^ ((v268 ^ 0xBEAB5AE5) + 1);
  LODWORD(v258) = ((v258 + 1096066330 - ((2 * v258) & 0x82A94A34)) ^ v268) - 519092117 - ((2 * ((v258 + 1096066330 - ((2 * v258) & 0x82A94A34)) ^ v268) + 426) & 0xC21E914C) + 272;
  LOBYTE(v268) = *(v45 + (v258 ^ 0xE10F486B));
  v14[101] = ((v265 ^ ((v261 << 63) | 0x5C00000000000000)) >> 56) ^ 0xED;
  v14[90] = v268 ^ v258 ^ 0x6A;
  v269 = (((v234 ^ 0xE8E509B179699F0) & (v241 ^ 0xBB69024C331BA867)) - ((2 * ((v234 ^ 0xE8E509B179699F0) & (v241 ^ 0xBB69024C331BA867))) & 0x667D05B87005D0AALL) - 0x4CC17D23C7FD17ABLL) ^ v240 ^ 0x508902DC3802E855;
  v270 = (v269 - ((2 * v269) & 0x725EF46C07EF79A2) - 0x46D085C9FC08432FLL) ^ v259;
  v271 = v270 ^ (v270 << 47) ^ ((v270 >> 10) ^ (v270 >> 17) | (v270 << 54));
  LODWORD(v261) = *(v263 + (v271 ^ 0x6CLL));
  v14[61] = BYTE4(v271) ^ 0xAC;
  v14[8] = HIBYTE(v271) ^ 0xEC;
  v14[153] = BYTE1(v271) ^ 0xE5;
  v14[144] = BYTE2(v271) ^ 0x65;
  *(&v257 + 1) = v246 ^ 0x10;
  *&v257 = v246 ^ 0x2CE66A2690143200;
  v272 = v246 ^ (v246 << 23) ^ (v257 >> 7);
  DWORD1(v257) = ~(v261 >> 3);
  LODWORD(v257) = (((v261 >> 3) | (32 * v261)) ^ 0x88888888) << 24;
  *(v11 + 12) = BYTE3(v271) ^ 0x33;
  v14[208] = HIBYTE(v272) ^ 0x3F;
  v14[89] = v257 >> 26;
  v14[209] = BYTE6(v271) ^ 0x3D;
  if ((v246 & 0x100000000000000) != 0)
  {
    v273 = 4;
  }

  else
  {
    v273 = -4;
  }

  v274 = __ROR4__((((v246 >> 22) & 0xFFF80000 | (v246 >> 54)) ^ 0x41593EDE) + v273, 19);
  *(v11 + 211) = v272 ^ v274 ^ 0xE;
  v275 = v272 ^ v274 ^ 0x27CD3B1E;
  v14[60] = BYTE2(v275) ^ 0x14;
  *(v11 + 33) = BYTE6(v272) ^ 0xAE;
  v14[145] = BYTE5(v272) ^ 0x60;
  *(v11 + 6) = BYTE1(v275) ^ 0x32;
  v14[163] = BYTE4(v272) ^ 0x3F;
  *(v11 + 149) = BYTE5(v271) ^ 0x7D;
  LODWORD(STACK[0xC2C]) = v33 - 189866277;
  v14[206] = HIBYTE(v275) ^ 0x98;
  *(*STACK[0xB70] + 140) = LODWORD(STACK[0xC2C]) - 1954958025;
  return (*(STACK[0xBD8] + 8 * ((v219 + 3677) ^ (4 * (STACK[0xBD0] & 1)))))();
}

uint64_t sub_244BB0A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xAF8];
  v4 = *(a3 + 8 * (((((LODWORD(STACK[0xAF8]) + 7229) | 0x163) + (v3 ^ 0xFFFFD20B)) * LODWORD(STACK[0xB58])) ^ v3));
  STACK[0xB68] = *(&off_278E1E490 + LODWORD(STACK[0xAF8]) - 1976);
  v5 = *(&off_278E1E490 + v3 - 1539);
  STACK[0xB60] = *(&off_278E1E490 + v3 - 505) - 8;
  v6 = *(&off_278E1E490 + (v3 ^ 0xA6C)) - 12;
  STACK[0xB58] = v5 - 12;
  STACK[0xB38] = v6;
  return v4(4293913562);
}

uint64_t sub_244BB0BE8@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v3 = *(a1 + 8 * (((((a2 - 11885) | 0x90C) ^ 0x1990) * LODWORD(STACK[0xA30])) ^ a2));
  LODWORD(STACK[0x8DC]) = v2;
  return v3();
}

uint64_t sub_244BB0C1C@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  LODWORD(STACK[0x87C]) = v2;
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0xAB0]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA28]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  v4 = a2 - 14419;
  LODWORD(STACK[0xBC0]) = v4 ^ 0x3FEC;
  v5 = LODWORD(STACK[0xB30]) == 0;
  v6 = STACK[0x7B0];
  if (LODWORD(STACK[0xB30]))
  {
    v6 = v3 ^ 0xB4539698 ^ v4 ^ 0x3FEC;
  }

  LODWORD(STACK[0x7B0]) = v6;
  v7 = STACK[0x774];
  if (v5)
  {
    v7 = v3 ^ 0xB4539698 ^ v4 ^ 0x3FEC;
  }

  LODWORD(STACK[0x774]) = v7;
  v8 = *(a1 + 8 * v4);
  LODWORD(STACK[0xBD0]) = 1;
  LODWORD(STACK[0xB60]) = 1;
  LODWORD(STACK[0xAF8]) = 1;
  LODWORD(STACK[0xAC0]) = 1;
  LODWORD(STACK[0xA54]) = 1;
  LODWORD(STACK[0x928]) = 1;
  LODWORD(STACK[0x9A0]) = 1;
  LODWORD(STACK[0x9A8]) = 1;
  LODWORD(STACK[0x9B0]) = 1;
  LODWORD(STACK[0xB68]) = 1;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAC8]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0x9B8]) = 1;
  LODWORD(STACK[0x9C4]) = 1;
  LODWORD(STACK[0x9C8]) = 1;
  LODWORD(STACK[0x9D0]) = 1;
  LODWORD(STACK[0xAF0]) = 1;
  LODWORD(STACK[0xA68]) = 1;
  LODWORD(STACK[0x9D8]) = 1;
  LODWORD(STACK[0x9E0]) = 1;
  LODWORD(STACK[0xB28]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0xA70]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0xA18]) = 1;
  LODWORD(STACK[0xAB8]) = 1;
  LODWORD(STACK[0xA48]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  return v8();
}

uint64_t sub_244BB0D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = *(a3 + 8 * ((43 * (LODWORD(STACK[0xB38]) ^ 1)) ^ (a6 - 11051)));
  v7 = *(&off_278E1E490 + ((a6 - 11051) ^ 0xC9E)) - 12;
  v8 = *(&off_278E1E490 + ((a6 - 11051) ^ 0xCC2)) - 4;
  STACK[0xB30] = *(&off_278E1E490 + ((a6 - 11051) ^ 0xD0A)) - 8;
  STACK[0xB28] = v7;
  STACK[0xAC8] = v8;
  return v6();
}

uint64_t sub_244BB0EA4@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  LODWORD(STACK[0xBD0]) = 0;
  LODWORD(STACK[0xB60]) = 0;
  LODWORD(STACK[0xAF8]) = 0;
  LODWORD(STACK[0xAC0]) = 0;
  LODWORD(STACK[0xA54]) = 0;
  LODWORD(STACK[0x928]) = 0;
  LODWORD(STACK[0x9A0]) = 0;
  LODWORD(STACK[0x8BC]) = 0;
  LODWORD(STACK[0x9A8]) = 0;
  LODWORD(STACK[0x9B0]) = 0;
  LODWORD(STACK[0xB68]) = 0;
  LODWORD(STACK[0xB38]) = 0;
  LODWORD(STACK[0xAC8]) = 0;
  LODWORD(STACK[0xA60]) = 0;
  LODWORD(STACK[0x9B8]) = 0;
  LODWORD(STACK[0x9C4]) = 0;
  LODWORD(STACK[0x920]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0x9E8]) = 0;
  LODWORD(STACK[0x9F0]) = 0;
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xAA8]) = 0;
  LODWORD(STACK[0xA70]) = 0;
  LODWORD(STACK[0xA08]) = 0;
  LODWORD(STACK[0xA10]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA18]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0xAB0]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA28]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0xAB8]) = 0;
  LODWORD(STACK[0xA48]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0x998]) = 0;
  LODWORD(STACK[0xA58]) = 0;
  LODWORD(STACK[0x828]) = 0;
  STACK[0xF3C0] = 0xDFDEDDDCDBDAD9D8;
  STACK[0xF3C8] = 0xD7D6D5D4D3D2D1D0;
  v2 = STACK[0x68C];
  v3 = &STACK[0xF3C0] | STACK[0x68C] & 0xF ^ 5;
  LOBYTE(STACK[0xF3C0]) = *v3;
  *v3 = -40;
  LODWORD(STACK[0x8A4]) = a2 | 0x80;
  v4 = STACK[0x698];
  LODWORD(v3) = LODWORD(STACK[0x698]) - 868338060;
  v5 = (a2 | 0x80) + 13020;
  LODWORD(STACK[0xBC0]) = v5;
  v6 = STACK[0xB90];
  v7 = &STACK[0xF3C0] + (((*(STACK[0xB90] + (((((v3 % 0xF) & 1) << 7) | ((v3 % 0xF - ((2 * (v3 % 0xF)) & 0x18) - 126845674 + v5) >> 1)) ^ 0x7C385BF3)) - 50) ^ 0x15) + 70);
  v8 = STACK[0xF3C1];
  LOBYTE(STACK[0xF3C1]) = v7[1];
  v7[1] = v8;
  v9 = LODWORD(STACK[0x688]) ^ 0x407D63FD;
  v10 = STACK[0xB50];
  v11 = *(STACK[0xB50] + (((LOBYTE(STACK[0xF3C2]) ^ 0xD8) - 43) ^ 0x96));
  LOBYTE(STACK[0xF3C2]) = *(((v9 % 0xE) | &STACK[0xF3C0]) + 2);
  *(((v9 % 0xE) | &STACK[0xF3C0]) + 2) = v11 ^ 0x67;
  v12 = STACK[0x690];
  v13 = &STACK[0xF3C0] + (((LODWORD(STACK[0x690]) ^ 0xD4DA6A54) % 0xD + 1222871630 - ((2 * ((LODWORD(STACK[0x690]) ^ 0xD4DA6A54) % 0xD)) & 0x1C)) ^ 0x48E38A4E);
  v14 = STACK[0xF3C3];
  LOBYTE(STACK[0xF3C3]) = v13[3];
  v13[3] = v14;
  LODWORD(v13) = ((2 * (v3 ^ v12)) & 0xF23D79FC ^ 0xA03450A8) + (v3 ^ v12 ^ 0x2DC4D6AA);
  v15 = ((2 * (v9 - v13 - 115426050)) & 0x95D7C35E) + ((v9 - v13 - 115426050) ^ 0xCAEBE1AF);
  LODWORD(v3) = ((2 * ((v2 ^ 0x67ACE0E5) + 890510929 + v15)) & 0x1E0FFF7A) + (((v2 ^ 0x67ACE0E5) + 890510929 + v15) ^ 0xF07FFBD);
  v16 = v4 - v3;
  LODWORD(v3) = ((v4 - v3 - 616155599) ^ (v3 - 252182461)) - 2054611012 - ((2 * ((v4 - v3 - 616155599) ^ (v3 - 252182461))) & 0xB123F78);
  v17 = &STACK[0xF3C0] + (((v3 ^ 0x85891FBC) % 0xC - 1564654125 - 2 * (((v3 ^ 0x85891FBC) % 0xC) & 3)) ^ 0xA2BD45D3);
  LOBYTE(v2) = STACK[0xF3C4];
  LOBYTE(STACK[0xF3C4]) = v17[4];
  v17[4] = v2;
  LODWORD(v17) = v16 - 1966371801;
  LOBYTE(v4) = STACK[0xF3C5];
  LOBYTE(STACK[0xF3C5]) = *((((v16 - 1966371801) % 0xBu) | &STACK[0xF3C0]) + 5);
  *((((v16 - 1966371801) % 0xBu) | &STACK[0xF3C0]) + 5) = v4;
  v18 = v15 - v16;
  v19 = v18 + 1506666528;
  LOBYTE(v2) = *(v10 + (((LOBYTE(STACK[0xF3C6]) ^ 0xD8) - 43) ^ 0x96));
  LOBYTE(STACK[0xF3C6]) = *((((v18 + 1506666528) % 0xAu) | &STACK[0xF3C0]) + 6);
  *((((v18 + 1506666528) % 0xAu) | &STACK[0xF3C0]) + 6) = v2 ^ 0x67;
  LODWORD(v13) = v13 - v18 - 1391240478;
  LOBYTE(v12) = STACK[0xF3C7];
  LOBYTE(STACK[0xF3C7]) = *(((v13 % 9) | &STACK[0xF3C0]) + 7);
  *(((v13 % 9) | &STACK[0xF3C0]) + 7) = v12;
  v20 = (v13 ^ 0x3C875CF7) - 540046575 - ((2 * (v13 ^ 0x3C875CF7)) & 0xBF9F1622);
  LODWORD(v13) = (v20 ^ v3 ^ 0x5A4694AD) - ((2 * (v20 ^ v3 ^ 0x5A4694AD) - 1562236156) & 0xA765C88C) - 1524368952;
  v21 = &STACK[0xF3C0] | (((v20 ^ v3) ^ 0xAD) - ((2 * ((v20 ^ v3) ^ 0xAD) + 4) & 0x8C) - 56) & 7 ^ 0xELL;
  LOBYTE(v4) = STACK[0xF3C8];
  LOBYTE(STACK[0xF3C8]) = *v21;
  *v21 = v4;
  LODWORD(v17) = ((2 * (v3 ^ v17)) & 0x98FE27FE ^ 0x8122778) + (v3 ^ v17 ^ 0x49F60C43);
  v22 = (v20 ^ v3 ^ v19 ^ 0x84E14B50) + 1943779064 + ((2 * (v20 ^ v3 ^ v19)) & 0xBD4FBFFA ^ 0xB40D295A);
  LODWORD(v3) = v17 + v22;
  v23 = STACK[0xBA8];
  LOBYTE(v21) = *(STACK[0xBA8] + (((LOBYTE(STACK[0xF3C9]) ^ 0xD8) - 43) ^ 0x14));
  LOBYTE(STACK[0xF3C9]) = *((((v17 + v22 - 520268532) % 7u) | &STACK[0xF3C0]) + 9);
  v24 = STACK[0xBA0];
  *((((v17 + v22 - 520268532) % 7u) | &STACK[0xF3C0]) + 9) = (v24 + 59 * v21) ^ 0x59;
  LODWORD(v17) = ((2 * ((v20 ^ 0xDFCF8B11) + 864087041 + v17)) & 0x6F27F5EC) + (((v20 ^ 0xDFCF8B11) + 864087041 + v17) ^ 0x3793FAF6);
  v25 = v22 + v17;
  HIDWORD(v26) = LOBYTE(STACK[0xF3CA]);
  LODWORD(v26) = (HIDWORD(v26) ^ 0xD8) << 24;
  LOBYTE(v21) = (*(v6 + ((v26 >> 25) ^ 0xB5)) - 50) ^ 0x15;
  *(&STACK[0xF3C0] + (((v25 + 1978166805) % 6u + 117869499 - ((2 * ((v25 + 1978166805) % 6u) + 20) & 0x36) + 10) ^ 0x7068BBB)) = v21 - ((2 * v21 - 116) & 0xB0) + 30;
  LODWORD(v17) = v17 - 932444918;
  *(&STACK[0xF3C0] + ((v17 % 5 - 1182301377 - 2 * (v17 % 5)) ^ 0xB987833F) + 11) = STACK[0xF3CB];
  v27 = v17 + (v13 ^ 0x53B2E446) - 723883436 - ((2 * (v17 + (v13 ^ 0x53B2E446))) & 0xA9B4D4A8);
  LODWORD(v17) = ((v25 + 1978166805) ^ 0x9AE57B09) + 870531226 - 2 * (((v25 + 1978166805) ^ 0x9AE57B09) & 0x33E3409E ^ (v25 + 1978166805) & 4);
  LODWORD(v3) = v3 + 1122643081 + v25 + 335255193 + (v27 ^ 0x2B2595AB);
  LODWORD(v3) = ((2 * v3) & 0xFFEFFF7C) + (v3 ^ 0xFFF7FFBE);
  LODWORD(v13) = (v13 ^ 0x6051A4DC ^ v17) - 524354 - v3 + 1739383013 - ((2 * ((v13 ^ 0x6051A4DC ^ v17) - 524354 - v3)) & 0xCF59C1CA);
  LODWORD(STACK[0x68C]) = v13;
  *(&STACK[0xF3C0] | (v13 + 32) & 3 ^ 0xDLL) = STACK[0xF3CC];
  *((((v3 + 524354) % 3u) | &STACK[0xF3C0]) + 0xD) = STACK[0xF3CD];
  LODWORD(STACK[0x690]) = v27;
  LODWORD(v13) = (v17 ^ 0x33E3409A) - (v27 ^ 0xD4DA6A54);
  *(&STACK[0xF3C0] | 0xE | v13 & 1) = (v24 + 59 * *(v23 + (((LOBYTE(STACK[0xF3CE]) ^ 0xD8) - 43) ^ 0x14))) ^ 0x59;
  STACK[0xF3C0] = 0xDFDEDDDCDBDAD9D8;
  LODWORD(STACK[0xF3C8]) = -741158448;
  LOWORD(STACK[0xF3CC]) = -10796;
  LOWORD(STACK[0xF3CE]) = -10282;
  v28 = STACK[0x7B0];
  v29 = &STACK[0xF3C0] | STACK[0x7B0] & 0xF ^ 3;
  LOBYTE(STACK[0xF3C0]) = *v29;
  *v29 = -40;
  v30 = STACK[0x774];
  LODWORD(v29) = LODWORD(STACK[0x774]) ^ 0xFFEC88F3;
  LOBYTE(v21) = STACK[0xF3C1];
  LOBYTE(STACK[0xF3C1]) = *(v10 + (((*(((v29 % 0xF) | &STACK[0xF3C0]) + 1) ^ 0xD8) - 43) ^ 0x96)) ^ 0x67;
  *(((v29 % 0xF) | &STACK[0xF3C0]) + 1) = v21;
  v31 = LODWORD(STACK[0x684]) ^ 0x1A9BB3E5;
  LOBYTE(v21) = STACK[0xF3C2];
  LOBYTE(STACK[0xF3C2]) = *(((v31 % 0xE) | &STACK[0xF3C0]) + 2);
  *(((v31 % 0xE) | &STACK[0xF3C0]) + 2) = v21;
  v32 = STACK[0x850];
  LODWORD(v21) = LOBYTE(STACK[0xF3C3]);
  HIDWORD(v26) = v21 ^ 8;
  LODWORD(v26) = (v21 ^ 0xFFFFFFDF) << 24;
  LOBYTE(v21) = *(a1 + ((v26 >> 28) ^ 0x4DLL)) ^ 0xD6;
  v33 = ((STACK[0x850] ^ 0x4BBF271D) % 0xD) | &STACK[0xF3C0];
  LOBYTE(STACK[0xF3C3]) = *(v33 + 3);
  *(v33 + 3) = 27 * v21 - ((54 * v21) & 0xB0) - 40;
  v34 = ((2 * (v32 ^ v30)) & 0xEBFE6B9E ^ 0x68A64B9C) + (v32 ^ v30 ^ 0xC1AC9A21);
  LODWORD(v21) = ((2 * (v31 - v34 + 1979659727)) & 0x5BFFFBB2) + ((v31 - v34 + 1979659727) ^ 0x2DFFFDD9);
  v35 = ((2 * ((v28 ^ 0xFFEC88F3) - 771755280 + v21 + 3895)) & 0xDFEAFF64) + (((v28 ^ 0xFFEC88F3) - 771755280 + v21 + 3895) ^ 0xEFF57FB2);
  LODWORD(v29) = ((2 * (v29 - 269123662 - v35)) & 0x9DF5FFE6) + ((v29 - 269123662 - v35) ^ 0xCEFAFFF3);
  v36 = ((v29 + 822411277) ^ (v35 + 269123662)) + 1587926447 - ((2 * ((v29 + 822411277) ^ (v35 + 269123662))) & 0xBD4BAB5E);
  v37 = STACK[0xF3C4];
  LOBYTE(STACK[0xF3C4]) = *((((v36 ^ 0x5EA5D5AFu) % 0xC) | &STACK[0xF3C0]) + 4);
  *((((v36 ^ 0x5EA5D5AFu) % 0xC) | &STACK[0xF3C0]) + 4) = v37;
  LODWORD(v33) = v29 - 527804925;
  LOBYTE(v28) = STACK[0xF3C5];
  LOBYTE(STACK[0xF3C5]) = *((((v29 - 527804925) % 0xBu) | &STACK[0xF3C0]) + 5);
  *((((v29 - 527804925) % 0xBu) | &STACK[0xF3C0]) + 5) = v28;
  LODWORD(v29) = v21 - v29;
  LODWORD(v21) = v29 - 1594162662;
  LOBYTE(v28) = STACK[0xF3C6];
  LOBYTE(STACK[0xF3C6]) = *((((v29 - 1594162662) % 0xAu) | &STACK[0xF3C0]) + 6);
  *((((v29 - 1594162662) % 0xAu) | &STACK[0xF3C0]) + 6) = v28;
  LODWORD(v29) = v34 - v29 - 385497065;
  LOBYTE(v30) = STACK[0xF3C7];
  LOBYTE(STACK[0xF3C7]) = *(((v29 % 9) | &STACK[0xF3C0]) + 7);
  *(((v29 % 9) | &STACK[0xF3C0]) + 7) = v30;
  v38 = (v29 ^ 0x3C875CF7) + 562808099 - ((2 * (v29 ^ 0x3C875CF7)) & 0x43178A46);
  v39 = v38 ^ v36;
  LODWORD(v29) = (v38 ^ v36 ^ 0x7F2E108C) - 2 * (((v38 ^ v36 ^ 0x7F2E108C) + 292623746) & 0x336E277D ^ (v38 ^ v36) & 1) - 2065744642;
  v40 = (&STACK[0xF3C0] | (((v38 ^ v36) ^ 0x8C) - 2 * ((((v38 ^ v36) ^ 0x8C) - 126) & 0x7D ^ (v38 ^ v36) & 1) - 2) & 7 ^ 0xCLL);
  LOBYTE(v28) = STACK[0xF3C8];
  LOBYTE(STACK[0xF3C8]) = *v40;
  *v40 = v28;
  v41 = ((2 * (v36 ^ v33)) & 0x77D9DAFE ^ 0x35498A5E) + (v36 ^ v33 ^ 0x654938D0);
  LODWORD(v33) = (v39 ^ v21 ^ 0x2F5EF73) - 1427360046 + ((2 * (v39 ^ v21)) & 0xFBB7FFFE ^ 0xFA142118);
  LODWORD(v21) = v41 + v33;
  LOBYTE(v40) = STACK[0xF3C9];
  LOBYTE(STACK[0xF3C9]) = *((((v41 + v33 - 1689592912) % 7u) | &STACK[0xF3C0]) + 9);
  *((((v41 + v33 - 1689592912) % 7u) | &STACK[0xF3C0]) + 9) = v40;
  v42 = ((2 * ((v38 ^ 0x218BC523) - 1005383039 + v41)) & 0x7FEF38DE) + (((v38 ^ 0x218BC523) - 1005383039 + v41) ^ 0xBFF79C6F);
  LODWORD(v33) = v33 + v42;
  v43 = v33 + 390081728;
  LOBYTE(v28) = STACK[0xF3CA];
  LOBYTE(STACK[0xF3CA]) = *((((v33 + 390081728) % 6u) | &STACK[0xF3C0]) + 0xA);
  *((((v33 + 390081728) % 6u) | &STACK[0xF3C0]) + 0xA) = v28;
  v42 += 1074291601;
  LOBYTE(v40) = STACK[0xF3CB];
  LOBYTE(STACK[0xF3CB]) = *(((v42 % 5) | &STACK[0xF3C0]) + 0xB);
  *(((v42 % 5) | &STACK[0xF3C0]) + 0xB) = v40;
  LODWORD(v33) = v21 + v33;
  LODWORD(v21) = (v43 ^ 0x9AE57B09) - 349743904 - ((2 * (v43 ^ 0x9AE57B09)) & 0xD64EA9C0);
  v44 = ((v42 + (v29 ^ 0x336E277C)) ^ 0x832064E8) - ((2 * (v42 + (v29 ^ 0x336E277C))) & 0xF9BF362E) + 1;
  LODWORD(v33) = v33 + 1479911317 + v44 - ((2 * (v33 + 1479911317 + v44) - 1368786972) & 0xFFD911E6) - 685669147;
  LODWORD(STACK[0x774]) = v33;
  LODWORD(v33) = v33 ^ 0xFFEC88F3;
  LODWORD(v29) = (v29 ^ 0xD849739C ^ v21) - v33 - 1275661 - ((2 * ((v29 ^ 0xD849739C ^ v21) - v33)) & 0xFFD911E6);
  LODWORD(STACK[0x7B0]) = v29;
  v45 = (&STACK[0xF3C0] | 0xC | (-21 - v29) & 3);
  LOBYTE(v39) = STACK[0xF3CC];
  LOBYTE(STACK[0xF3CC]) = *v45;
  *v45 = v39;
  v46 = &STACK[0xF3C0] + ((v33 % 3 - 1623446822 - ((2 * (v33 % 3)) & 4)) ^ 0x9F3C2ADA);
  LOBYTE(v43) = STACK[0xF3CD];
  LOBYTE(STACK[0xF3CD]) = v46[13];
  v46[13] = v43;
  LODWORD(v46) = v44 + (v21 ^ 0xEB2754E0) + 2095029015;
  v47 = (&STACK[0xF3C0] | 0xE | v46 & 1);
  LOBYTE(v44) = STACK[0xF3CE];
  LOBYTE(STACK[0xF3CE]) = *v47;
  *v47 = v44;
  LODWORD(STACK[0x688]) = v13 + 1081959421 - ((2 * v13) & 0x80FAC7FA);
  LODWORD(STACK[0x684]) = v46 + 446411749 - ((2 * v46) & 0x353767CA);
  LODWORD(STACK[0x698]) = v3 + 868862414;
  return (*(STACK[0xBD8] + 8 * SLODWORD(STACK[0x8A4])))();
}

uint64_t sub_244BB1E74@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  LODWORD(STACK[0xB68]) = 0;
  LODWORD(STACK[0x9F0]) = 0;
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xAA8]) = 0;
  LODWORD(STACK[0xA70]) = 0;
  LODWORD(STACK[0xA08]) = 0;
  LODWORD(STACK[0xA10]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA18]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0xAB0]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA28]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  v2 = (a2 - 8546) | 0x3160;
  v3 = STACK[0x850] ^ 0xB4539698;
  LODWORD(STACK[0xBC0]) = v2;
  v4 = v3 ^ v2;
  v5 = LODWORD(STACK[0xB28]) == 0;
  v6 = STACK[0x7B0];
  if (LODWORD(STACK[0xB28]))
  {
    v6 = v4;
  }

  LODWORD(STACK[0x7B0]) = v6;
  v7 = *(a1 + 8 * a2);
  v8 = STACK[0x774];
  if (v5)
  {
    v8 = v4;
  }

  LODWORD(STACK[0x774]) = v8;
  LODWORD(STACK[0xBD0]) = 1;
  LODWORD(STACK[0xB60]) = 1;
  LODWORD(STACK[0xAF8]) = 1;
  LODWORD(STACK[0xAC0]) = 1;
  LODWORD(STACK[0xA54]) = 1;
  LODWORD(STACK[0x928]) = 1;
  LODWORD(STACK[0x9A0]) = 1;
  LODWORD(STACK[0x9A8]) = 1;
  LODWORD(STACK[0x9B0]) = 1;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAC8]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0x9B8]) = 1;
  LODWORD(STACK[0x9C4]) = 1;
  LODWORD(STACK[0x9C8]) = 1;
  LODWORD(STACK[0x9D0]) = 1;
  LODWORD(STACK[0xAF0]) = 1;
  LODWORD(STACK[0xA68]) = 1;
  LODWORD(STACK[0x9D8]) = 1;
  LODWORD(STACK[0x9E0]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0xAB8]) = 1;
  LODWORD(STACK[0xA48]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  return v7();
}

uint64_t sub_244BB20AC@<X0>(int a1@<W3>, int a2@<W8>)
{
  LODWORD(STACK[0xBD0]) = 0;
  LODWORD(STACK[0xB68]) = 0;
  LODWORD(STACK[0xB38]) = 0;
  LODWORD(STACK[0xAC8]) = 0;
  LODWORD(STACK[0xA60]) = 0;
  LODWORD(STACK[0x9B8]) = 0;
  LODWORD(STACK[0x9C4]) = 0;
  LODWORD(STACK[0x9C8]) = 0;
  LODWORD(STACK[0x9D0]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0x9D8]) = 0;
  LODWORD(STACK[0x9E0]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0x9E8]) = 0;
  LODWORD(STACK[0x9F0]) = 0;
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xAA8]) = 0;
  LODWORD(STACK[0xA70]) = 0;
  LODWORD(STACK[0xA08]) = 0;
  LODWORD(STACK[0xA10]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xA18]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0xAB0]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA28]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0xBC0]) = a2 + 13020;
  v2 = STACK[0x9B0];
  v3 = STACK[0x7B0];
  if (!LODWORD(STACK[0x9B0]))
  {
    v3 = a1 ^ 0xB4539698 ^ (a2 + 13020);
  }

  LODWORD(STACK[0x7B0]) = v3;
  v4 = STACK[0x774];
  if (v2)
  {
    v4 = a1 ^ 0xB4539698 ^ (a2 + 13020);
  }

  LODWORD(STACK[0x774]) = v4;
  v5 = *(STACK[0xBD8] + 8 * a2);
  LODWORD(STACK[0xB60]) = 1;
  LODWORD(STACK[0xAF8]) = 1;
  LODWORD(STACK[0xAC0]) = 1;
  LODWORD(STACK[0xA54]) = 1;
  LODWORD(STACK[0x928]) = 1;
  LODWORD(STACK[0x9A0]) = 1;
  LODWORD(STACK[0x9A8]) = 1;
  LODWORD(STACK[0x9B0]) = 1;
  LODWORD(STACK[0xAB8]) = 1;
  LODWORD(STACK[0xA48]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0xA58]) = v2 ^ 1;
  return v5();
}

uint64_t sub_244BB2298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0xAB0]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  v4 = *(a3 + 8 * (v3 - 4094));
  LODWORD(STACK[0x768]) = STACK[0x850] ^ 0x1C9AEA37;
  LODWORD(STACK[0xBD0]) = 1;
  LODWORD(STACK[0xB60]) = 1;
  LODWORD(STACK[0xAF8]) = 1;
  LODWORD(STACK[0xAC0]) = 1;
  LODWORD(STACK[0xA54]) = 1;
  LODWORD(STACK[0x928]) = 1;
  LODWORD(STACK[0x9A0]) = 1;
  LODWORD(STACK[0x9A8]) = 1;
  LODWORD(STACK[0x9B0]) = 1;
  LODWORD(STACK[0xB68]) = 1;
  LODWORD(STACK[0xB38]) = 1;
  LODWORD(STACK[0xAC8]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0x9B8]) = 1;
  LODWORD(STACK[0x9C4]) = 1;
  LODWORD(STACK[0x9C8]) = 1;
  LODWORD(STACK[0x9D0]) = 1;
  LODWORD(STACK[0xAF0]) = 1;
  LODWORD(STACK[0xA68]) = 1;
  LODWORD(STACK[0x9D8]) = 1;
  LODWORD(STACK[0x9E0]) = 1;
  LODWORD(STACK[0xB28]) = 1;
  LODWORD(STACK[0x9E8]) = 1;
  LODWORD(STACK[0x9F0]) = 1;
  LODWORD(STACK[0xB58]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0xA70]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0xB30]) = 1;
  LODWORD(STACK[0xA18]) = 1;
  LODWORD(STACK[0xA20]) = 1;
  LODWORD(STACK[0xA28]) = 1;
  LODWORD(STACK[0xAB8]) = 1;
  LODWORD(STACK[0xA48]) = 1;
  LODWORD(STACK[0x998]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0xBC0]) = v3;
  return v4();
}

uint64_t sub_244BB2434(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, int a30)
{
  LODWORD(STACK[0x92C]) = v33;
  STACK[0xAC0] = v32;
  v35 = v30 + 5962;
  v36 = ((v30 + 360305070) ^ v31 & 0x3DFB8762) + (a2 ^ 0x5542E4AC);
  v37 = LODWORD(STACK[0x900]) ^ v34;
  LODWORD(STACK[0x9C4]) = ((v37 + 1810064269) ^ 0x3F6FBFF3) - 83890608 + (a30 & (2 * (v37 + 1810064269)));
  v38 = STACK[0x82C];
  LODWORD(STACK[0xA18]) = 720694245 - LODWORD(STACK[0x82C]);
  v39 = STACK[0x76C];
  v40 = LODWORD(STACK[0x76C]) ^ v34;
  LODWORD(STACK[0x9C8]) = 1514898218 - v40 - ((19324708 - 2 * v40) & 0x13702730);
  v41 = LODWORD(STACK[0x760]) ^ 0x7AE633E4;
  LODWORD(STACK[0x9B0]) = -2036619459 - v41 - ((1095392010 - 2 * v41) & 0xCBECF370);
  v42 = LODWORD(STACK[0x768]) ^ 0x5725CD2A;
  LODWORD(STACK[0x984]) = ((-1129496567 - v42) ^ 0xE7D7DFF6) + 2147279248 + ((2 * (-1129496567 - v42)) & 0xCFAFBFEC);
  v43 = v37 + LODWORD(STACK[0x740]) - 1234952314;
  v44 = (v39 ^ 0x1187DFFE) + LODWORD(STACK[0x740]) + 1514723340 - ((2 * ((v39 ^ 0x1187DFFE) + LODWORD(STACK[0x740]) - 1774680458)) & 0x8820A32C);
  v45 = v41 - (v44 ^ 0xC4105196) - 785268641 - ((2 * (v41 - (v44 ^ 0xC4105196))) & 0xA26380BE);
  v46 = ((2 * (v40 - v43 + 734889485 + (v45 ^ 0xD131C05F))) & 0xC6FD7FEE) + ((v40 - v43 + 734889485 + (v45 ^ 0xD131C05F)) ^ 0x637EBFF7);
  LODWORD(STACK[0x940]) = v45 ^ v44 ^ 0x152191C9;
  v47 = ((2 * (v43 - 734889485 + (v44 ^ 0xC4105196))) & 0xFDF1FA9C) + ((v43 - 734889485 + (v44 ^ 0xC4105196)) ^ 0x7EF8FD4E);
  v48 = STACK[0x7A8];
  v49 = v42 - LODWORD(STACK[0x7A8]) - ((2 * (v42 - LODWORD(STACK[0x7A8])) + 1607484680) & 0x7832F876) - 335438145;
  v50 = ((2 * (v38 - 689182335 + v42)) & 0xFFFDFBDA) + ((v38 - 689182335 + v42) ^ 0xFFFEFDED);
  LODWORD(STACK[0x98C]) = v36;
  v51 = (v49 ^ 0x43E683C4) - 519947184 + v36 + 1433718744 - ((2 * ((v49 ^ 0x43E683C4) - 519947184 + v36)) & 0xAAE99FB0);
  v52 = ((2 * (v48 - v50 - 803808407 + (v51 ^ 0x5574CFD8))) & 0xDF7E66FE) + ((v48 - v50 - 803808407 + (v51 ^ 0x5574CFD8)) ^ 0x6FBF337F);
  v53 = v51 ^ v49;
  LODWORD(STACK[0x9A8]) = v49 ^ 0x51AC44;
  LODWORD(STACK[0xA20]) = v46 - 654296658;
  LODWORD(STACK[0x9B8]) = 2141604169 - v52 - ((1772158096 - 2 * v52) & 0x95AB9602);
  LODWORD(STACK[0x9A0]) = 1619287925 - (v44 ^ 0x785881E9) - ((-154277150 - 2 * (v44 ^ 0x785881E9)) & 0xCA3AD408);
  LODWORD(STACK[0x91C]) = v53 ^ 0xE96DB3E3;
  LODWORD(STACK[0xA28]) = -557785988 - (v53 ^ 0xE96DB3E3);
  LODWORD(STACK[0xA10]) = -408980659 - v47;
  LODWORD(STACK[0x928]) = v46;
  v54 = (v44 ^ 0x6D33C980) + v46;
  LODWORD(STACK[0x920]) = v47;
  LODWORD(STACK[0x998]) = (a29 & (2 * (v50 + 66067 + (v49 ^ 0xBC197C3B)))) + ((v50 + 66067 + (v49 ^ 0xBC197C3B)) ^ 0xE3F7FCFF);
  LODWORD(STACK[0xB68]) = (v44 ^ 0x3FB2EE86 ^ (v47 - v54 + 1669251062 - ((2 * (v47 - v54 + 1669251062) + 2005993636) & 0x5AFDB1F2) - 1454940853)) + 626284876;
  LODWORD(STACK[0xA08]) = v49;
  LODWORD(STACK[0xBC0]) = ((v54 + 284472114) ^ 0xE24079B5) - 32812018 - ((2 * ((v54 + 284472114) ^ 0xE24079B5)) & 0xFC16A81C);
  v55 = *(a3 + 8 * v30);
  LODWORD(STACK[0xB58]) = v35 & 0x6E811317;
  LODWORD(STACK[0xB38]) = v35 - 18959;
  LODWORD(STACK[0xBC8]) = v35;
  LODWORD(STACK[0xAF0]) = v35 - 19216;
  return v55();
}

uint64_t sub_244BB29CC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v13 = STACK[0xBC8];
  v14 = (a2 - 210705571);
  v15 = *(a6 + 8 * LODWORD(STACK[0xB58]));
  v16 = *(v15 + (v14 ^ v7));
  v17 = *(a6 + 8 * SLODWORD(STACK[0xB38])) - 12;
  LOBYTE(v14) = LODWORD(STACK[0xBA0]) + 59 * *(STACK[0xBA8] + ((((v9 + 84) ^ (*(v17 + (v14 ^ 0x14)) * ((LODWORD(STACK[0xBC8]) + 60) ^ 7) + 5) ^ 0x87) - 43) ^ 0x14));
  *(&STACK[0x1070] + a2 - 210705571) = v8 ^ 5;
  v18 = a2 - ((2 * a2 - 421411140) & 0xC560E29A) + 1445024939;
  v19 = v12;
  *(&STACK[0xE500] + ((29 * v16 + 82) ^ 0x7CLL)) = v14 ^ 0x59;
  LOBYTE(v14) = *(v15 + (v18 ^ 0x62B07161u));
  v20 = *(v17 + (v18 ^ 0x62B07159u));
  *(&STACK[0x1070] + (v18 ^ 0x62B0714Du)) = v6 ^ 0xFB;
  v21 = STACK[0xB68];
  v22 = LODWORD(STACK[0xB68]) - ((2 * LODWORD(STACK[0xB68]) - 1252569752) & 0xC01336C4) + 984957462;
  LOBYTE(v18) = (LOBYTE(STACK[0xB68]) - ((2 * LOBYTE(STACK[0xB68]) + 104) & 0xC4) + 22) ^ 0x3D ^ (-3 * v20 + 5);
  v23 = a2 - ((2 * a2 - 421411138) & 0xE52C413A) - 435747844;
  *(&STACK[0xE500] + ((29 * v14 + 82) ^ 0x7CLL)) = v18;
  v24 = STACK[0xBC0];
  LOBYTE(v18) = LODWORD(STACK[0xBC0]) ^ 0xE4 ^ (-3 * *(v17 + (v23 ^ 0xF2962089)) + 5);
  v25 = *(&off_278E1E490 + SLODWORD(STACK[0xAF0])) - 4;
  STACK[0xBD0] = v25;
  *(&STACK[0xE500] + (v25[v23 ^ 0xF29620A9] ^ 0x23)) = v18;
  LOBYTE(v18) = (*(v10 + ((((v11 - 82) >> 4) & 0xF | (16 * ((v11 + 174) & 0xFu))) ^ 0x5CLL)) - 10) ^ 0x10;
  *(&STACK[0x1070] + (v23 ^ 0xF296209D)) = 27 * v18 - ((54 * v18) & 0xB0) - 40;
  v26 = a2 + 1950621433 + ((2 * a2 + 14796480) & 0x1A67734 ^ 0xFFFFFFFB);
  *(&STACK[0xE500] + ((29 * *(v15 + (v26 ^ 0x80D33BB4)) + 82) ^ 0x7CLL)) = a4 ^ 0x61 ^ (-3 * *(v17 + (v26 ^ 0x80D33B8C)) + 5);
  v27 = v22 ^ a4;
  v28 = v9 - (v24 ^ 0x1C4B2DBB) - (((2 * v27) & 0xBE6D76D8 ^ 0x30042698) + (v27 ^ 0xC7BDAC30)) - 1991980831;
  v29 = 33 * ((LOBYTE(STACK[0xB88]) - 117 * *(STACK[0xB78] + (((8 * (v19 & 0x1F)) | (v19 >> 5)) ^ 0x52))) ^ 0x7E) - ((66 * ((LOBYTE(STACK[0xB88]) - 117 * *(STACK[0xB78] + (((8 * (v19 & 0x1F)) | (v19 >> 5)) ^ 0x52))) ^ 0x7E)) & 0xB0) - 40;
  LODWORD(STACK[0xBC0]) = ((v24 ^ 0x1C4B2DBB) + 1020237023) ^ 0x4C03AE7 ^ v27;
  *(&STACK[0x1070] + (v26 ^ 0x80D33B98)) = v29;
  v30 = *(STACK[0xBD8] + 8 * ((91 * ((a2 - 210705567) > 0x3F)) ^ v13));
  LODWORD(STACK[0xB68]) = ((((2 * v28) & 0x3D9E3EFE) + (v28 ^ 0x9ECF1F7F) + 1630593153) ^ (v21 - 1789654055)) + 626284876;
  return v30(82);
}

uint64_t sub_244BB2ED4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a5 - ((2 * a5 - 35167820) & 0xE3DB8B84) + 1893824156;
  v13 = (a5 - 17583910);
  v14 = -3 * *(a8 + (v13 ^ 0x14));
  HIDWORD(v15) = 10 - v14;
  LODWORD(v15) = ((v14 + 5) ^ 0x55555555) << 24;
  *(a7 + ((a1 + 29 * *(v9 + (v13 ^ v10))) ^ 0x7CLL)) = *(&STACK[0x3530] + (*(*(a6 + 8 * (v8 - 15278)) + (v12 ^ (((v8 - 8346) | 0x2088) + 1911391961)) - 12) ^ 0xC0)) ^ *(*(a6 + 8 * (v8 ^ 0x3ADD)) + (v12 ^ 0x71EDC5CC) - 12) ^ 0xC9 ^ (27 * ((*(v11 + ((v15 >> 28) ^ 0x6DLL)) - 10) ^ 0x10));
  return (*(STACK[0xBD8] + 8 * ((29263 * ((a5 - 17583909) < 0x20)) ^ v8)))();
}

uint64_t sub_244BB3014@<X0>(int a1@<W8>)
{
  HIDWORD(v4) = *(&STACK[0xC4C0] + (v1 - 1830941903));
  LODWORD(v4) = (HIDWORD(v4) ^ 0xD8) << 24;
  v5 = (*(STACK[0xB90] + ((v4 >> 25) ^ 0x8CLL)) + ((a1 - 108) ^ 0xB2)) ^ 0x15;
  *(v2 + (v1 - 1830941903)) = v5 - ((2 * v5 - 116) & v3) + 30;
  return (*(STACK[0xBD8] + 8 * ((2 * ((v1 - 1830941902) < 0x20)) | (16 * ((v1 - 1830941902) < 0x20)) | a1)))();
}

uint64_t sub_244BB30B0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  LODWORD(STACK[0xAE0]) = v11;
  LODWORD(STACK[0xAE8]) = v14;
  LODWORD(STACK[0xBC8]) = v13;
  LODWORD(STACK[0xAA8]) = v8;
  v15 = (v9 - 2316) | 0x806;
  v16 = (LOBYTE(STACK[0xE53E]) ^ v15 ^ 0x48) - ((2 * (LOBYTE(STACK[0xE53E]) ^ v15 ^ 0x48)) & 0x7A) - 67;
  HIDWORD(v17) = v16 ^ 0xFFFFFFFB;
  LODWORD(v17) = (v16 ^ 0xC0) << 24;
  LOBYTE(STACK[0xE53E]) = 33 * ((LOBYTE(STACK[0xB88]) - 117 * *(STACK[0xB78] + ((v17 >> 29) ^ 0xEBLL))) ^ 0x7E) - ((66 * ((LOBYTE(STACK[0xB88]) - 117 * *(STACK[0xB78] + ((v17 >> 29) ^ 0xEBLL))) ^ 0x7E)) & 0xB0) - 40;
  LOBYTE(STACK[0xE52F]) ^= 1u;
  LOBYTE(STACK[0xE517]) = (LODWORD(STACK[0xBA0]) + 59 * *(STACK[0xBA8] + (((LOBYTE(STACK[0xE517]) ^ 0x57) - 43) ^ 0x14))) ^ 0xD6;
  v18 = *(STACK[0xBD8] + 8 * v9);
  LODWORD(STACK[0xAB0]) = v15 ^ 0x98E;
  LODWORD(STACK[0xA90]) = v15;
  LODWORD(STACK[0xAA0]) = v15 ^ 0x9B1;
  LODWORD(STACK[0xAF8]) = a1;
  STACK[0xAD8] = a8;
  STACK[0xB60] = v10;
  LODWORD(STACK[0xA88]) = v12;
  return v18();
}

uint64_t sub_244BB31D4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *(STACK[0xAD8] + (a4 ^ 0xCE41D381));
  LODWORD(STACK[0xB58]) = *(&STACK[0xE500] + (*(v5 + (a4 ^ 0xCE41D3A1)) ^ 0x23));
  v8 = 2 * (a4 ^ 0xCE41D395);
  v9 = (a4 ^ 0xCE41D395) + 55016977 - ((v8 + 2) & 0x68EFC3E) + 15;
  v10 = *(v6 + 8 * SLODWORD(STACK[0xAB0])) - 12;
  v11 = *(v10 + (v9 ^ 0x3477E11));
  v12 = -3 * v7 - ((10 - 6 * v7) & 0xD8) + 113;
  v13 = (a4 ^ 0xCE41D395) + 1548167621 - ((v8 + 4) & 0xB88E53D2) + 38;
  v14 = *(&STACK[0xE500] + (*(v5 + (v9 ^ 0x3477E2B)) ^ 0x23));
  v15 = *(&STACK[0x1070] + (v13 ^ 0x5C4729E9));
  v16 = (a4 ^ 0xCE41D395) + 1811181975 - ((v8 + 6) & 0xD7E8E332) + 5;
  HIDWORD(v17) = v15 ^ 0x18;
  LODWORD(v17) = (v15 ^ 0xC0) << 24;
  LOBYTE(v15) = v17 >> 29;
  v18 = STACK[0xAF8];
  v19 = v9 ^ 0x3477E1F;
  v20 = *(v10 + (v16 ^ 0x6BF47197)) ^ *(&STACK[0xE500] + ((LODWORD(STACK[0xAF8]) + 29 * *(v4 + (v16 ^ 0x6BF471B5))) ^ 0x7CLL));
  HIDWORD(v17) = v20 ^ 0xFFFFFFF3;
  LODWORD(v17) = (v20 ^ 0x80) << 24;
  v21 = v11 ^ v14;
  v22 = STACK[0xB78];
  v23 = STACK[0xB88];
  v24 = 33 * ((LODWORD(STACK[0xB88]) - 117 * *(STACK[0xB78] + ((v17 >> 29) ^ 0xEBLL))) ^ 0x7E);
  v25 = v16 ^ 0x6BF47199;
  LOBYTE(v13) = *(&STACK[0xE500] + ((LODWORD(STACK[0xAF8]) + 29 * *(v4 + (v13 ^ 0x5C4729C5))) ^ 0x7CLL)) ^ *(v10 + (v13 ^ 0x5C4729E7)) ^ 0x24;
  v26 = STACK[0xA90];
  LOBYTE(v16) = *(STACK[0xBB8] + (((v24 >> 5) | (8 * (v24 & 0x1Fu))) ^ 0xEBLL));
  v27 = *(&off_278E1E490 + LODWORD(STACK[0xA90]) - 1720) - 8;
  HIDWORD(v17) = v21 ^ 0xFFFFFFFB;
  LODWORD(v17) = (v21 ^ 0x40) << 24;
  v28 = *&v27[4 * ((27 * (*(STACK[0xB80] + ((v17 >> 28) ^ 0x4DLL)) ^ 0xD6)) ^ 0x73)];
  HIDWORD(v17) = v28 ^ 0x22B74E;
  LODWORD(v17) = v28 ^ 0x33333333;
  v29 = *(&off_278E1E490 + (LODWORD(STACK[0xA90]) ^ 0x9D8));
  v30 = *&v27[4 * v13];
  STACK[0xA80] = v29 - 8;
  v31 = *(v29 - 8 + 4 * ((33 * ((v16 - 106) ^ 0x15)) ^ 0xE9u));
  v32 = v30 ^ (v17 >> 24);
  HIDWORD(v17) = v31 ^ 0xFFFFFFF7;
  LODWORD(v17) = v31 ^ 0xB1ABF900;
  v33 = v17 >> 8;
  v34 = *(&STACK[0x1070] + (a4 ^ 0xCE41D395));
  v35 = *(&STACK[0x1070] + v25);
  v36 = LODWORD(STACK[0xB58]) ^ 0x46u ^ *(STACK[0xB50] + (((v12 ^ 0x33) - 43) ^ 0x96));
  STACK[0xAF0] = v27;
  LODWORD(v36) = *&v27[4 * v36];
  HIDWORD(v17) = v36 ^ 0xB0C0;
  LODWORD(v17) = v36 ^ 0xCD610000;
  v37 = *(&off_278E1E490 + v26 - 2973) - 12;
  STACK[0xB58] = v37;
  LODWORD(v35) = *&v37[4 * (v35 ^ 0xA5)] + 533632306;
  v38 = (v33 + 395068901 - ((2 * v33) & 0x2F188BCA)) ^ v32 ^ (v17 >> 16);
  HIDWORD(v17) = v35 ^ 0x9D;
  LODWORD(v17) = v35 ^ 0xA8F56600;
  v39 = *(&off_278E1E490 + SLODWORD(STACK[0xAA0]));
  LODWORD(v36) = (v17 >> 8) + 883439725 - ((2 * (v17 >> 8)) & 0x695070DA);
  v40 = *(v39 + 4 * (v34 ^ 0xA5));
  HIDWORD(v17) = v40 ^ 0x9CFD;
  LODWORD(v17) = v40 ^ 0xFAF00000;
  v41 = v15 ^ 0x73;
  v42 = *(&STACK[0x1070] + v19);
  v43 = STACK[0xBD0];
  v44 = STACK[0xBB8];
  v45 = (33 * ((v23 - 117 * *(v22 + v41)) ^ 0x7E)) ^ 0xA1u;
  LODWORD(v42) = *(v39 + 4 * (v42 ^ 0xFA));
  STACK[0xB38] = v39;
  LODWORD(v45) = *(v39 + 4 * v45);
  v46 = STACK[0xB60];
  LODWORD(v42) = v45 ^ __ROR4__(v42, 24) ^ (v17 >> 16) ^ v36;
  v47 = (v18 + 29 * *(STACK[0xB60] + (a4 ^ 0xCE41D3B9))) ^ 0x7CLL;
  *(&STACK[0x1070] + (a4 ^ 0xCE41D395)) = BYTE3(v42) ^ 0xF;
  *(&STACK[0xE500] + v47) = v12 ^ 0xF6 ^ (HIBYTE(v38) - ((v38 >> 23) & 0xD8) + 108);
  v48 = (a4 ^ 0xCE41D395) - 2084844457 - ((v8 + 2) & 0x77798AE) + 1;
  v49 = *(v43 + (v48 ^ 0x83BBCC63));
  LOBYTE(v47) = *(v10 + (v48 ^ 0x83BBCC59));
  *(&STACK[0x1070] + (v48 ^ 0x83BBCC57)) = BYTE2(v42) ^ 0xFA;
  *(&STACK[0xE500] + (v49 ^ 0x23)) = (BYTE2(v38) - ((v38 >> 15) & 0x7A) - 67) ^ v47 ^ 0x61;
  v50 = (a4 ^ 0xCE41D395) - 1204117409 - ((v8 + 4) & 0x707540D6) + 14;
  LOBYTE(v49) = *(STACK[0xAD8] + (v50 ^ 0xB83AA07F));
  LODWORD(STACK[0xAD0]) = 10;
  v51 = STACK[0xBA8];
  v52 = STACK[0xBA0];
  *(&STACK[0xE500] + (*(v43 + (v50 ^ 0xB83AA05F)) ^ 0x23)) = (LODWORD(STACK[0xBA0]) + 59 * *(STACK[0xBA8] + ((((-3 * v49 - ((10 - 6 * v49) & 0xBF) + 100) ^ BYTE1(v38) ^ 0x15) - 43) ^ 0x14))) ^ 0x59;
  *(&STACK[0x1070] + (v50 ^ 0xB83AA06B)) = BYTE1(v42) ^ 0xCC;
  STACK[0xAB8] = v10;
  *(&STACK[0xE500] + ((v18 + 29 * *(v46 + (a4 ^ 0xCE41D3BA))) ^ 0x7CLL)) = (v52 + 59 * *(v51 + ((((v38 - ((2 * v38) & 0x7A) - 67) ^ *(v10 + (a4 ^ 0xCE41D398)) ^ 0x35) - 43) ^ 0x14))) ^ 0x59;
  *(&STACK[0x1070] + (a4 & 0xFFFFFFFC ^ 0xCE41D397)) = 33 * ((*(v44 + (((8 * (v42 & 0x1F)) | (v42 >> 5)) ^ 0xCF)) - 106) ^ 0x15) - ((66 * ((*(v44 + (((8 * (v42 & 0x1F)) | (v42 >> 5)) ^ 0xCF)) - 106) ^ 0x15)) & 0xB0) - 40;
  return (*(STACK[0xBD8] + 8 * ((14832 * ((((a4 ^ 0xCE41D395) - 834546795 - ((v8 + 8) & 0x9C83A72A) + 4) ^ 0xCE41D380) < 0x40)) ^ v26)))();
}

uint64_t sub_244BB386C()
{
  LODWORD(STACK[0xA70]) = v8;
  STACK[0xA78] = v1;
  v10 = STACK[0xA90];
  v11 = 1597 * (LODWORD(STACK[0xA90]) ^ 0xC74);
  v12 = (v3 - 1929056143);
  STACK[0xA60] = v12;
  LODWORD(STACK[0xA68]) = v11;
  v13 = STACK[0xAB8];
  v14 = v3 - ((2 * v3 + 168419556) & 0xE01F56C) - 1811551448;
  v15 = *(&STACK[0xE500] + (*(v4 + (v14 ^ 0x700FA82u)) ^ 0x23));
  v16 = (*(&STACK[0xE500] + (*(v4 + (v11 ^ v12 ^ 0xC4ELL)) ^ 0x23)) ^ *(STACK[0xAB8] + (v12 ^ 0xE)) ^ 0x4B) << 24;
  v17 = *(STACK[0xAB8] + (v14 ^ 0x700FAB8u));
  HIDWORD(v18) = v15 ^ 8;
  LODWORD(v18) = (v15 ^ 0xFFFFFFDF) << 24;
  LODWORD(v12) = 2 * v3 + 34201830;
  LODWORD(STACK[0xA58]) = v12;
  v19 = STACK[0xB98];
  v20 = v3 - ((2 * v3 + 436855016) & 0x2497AB24) + 525387270;
  v21 = ((*(&STACK[0xE500] + ((LODWORD(STACK[0xAF8]) + 29 * *(v2 + ((v3 - (v12 & 0x6385E28) + 270606215) ^ 0x831C2F38))) ^ 0x7CLL)) ^ *(v13 + ((v3 - (v12 & 0x6385E28) + 270606215) ^ 0x831C2F1A)) ^ 0x93) - 43) ^ 0x14;
  v22 = *(&STACK[0xE500] + ((LODWORD(STACK[0xAF8]) + 29 * *(v2 + (v20 ^ 0x924BD5BE))) ^ 0x7CLL));
  v23 = (*(STACK[0xB98] + ((v18 >> 28) ^ 0x6DLL)) - 10) ^ 0x10;
  v24 = *(v13 + (v20 ^ 0x924BD59C));
  HIDWORD(v18) = v24 ^ ~v22;
  LODWORD(v18) = (v24 ^ 0x64 ^ v22) << 24;
  v25 = v5 - ((2 * v5 - 843365208) & 0xDFFB7718) + 1457216992;
  v26 = *(STACK[0xAF0] + 4 * ((v5 - ((2 * v5 - 88) & 0x18) - 32) ^ 0x7Du));
  LOBYTE(v24) = (*(STACK[0xB90] + ((v18 >> 25) ^ 0xCELL)) - 50) ^ v7;
  HIDWORD(v18) = v26 ^ 0x60;
  LODWORD(v18) = v26 ^ 0xA5AA1400;
  v27 = v18 >> 8;
  v28 = *(STACK[0xAF0] + 4 * (BYTE2(v25) ^ 0x99u));
  HIDWORD(v18) = v28 ^ 0xFBB1E2;
  LODWORD(v18) = v28 ^ 0xC1000000;
  v29 = v18 >> 24;
  v30 = v16 | ((v17 ^ 0x2E ^ (27 * v23 - ((54 * v23) & 0x7A) - 67)) << 16);
  v31 = *(STACK[0xAF0] + 4 * ((33 * ((*(v9 + (((v25 >> 21) & 0xF8 | (v25 >> 29)) ^ 0x56)) - 106) ^ 0x15)) ^ 0x43u));
  HIDWORD(v18) = v31 ^ 0x6C8F;
  LODWORD(v18) = v31 ^ 0x419B0000;
  v32 = v1 - 498817278;
  v33 = (v30 & 0xFFFF0000 | (((LODWORD(STACK[0xBA0]) + 59 * *(STACK[0xBA8] + v21)) ^ 0x59) << 8) | (v24 + 70)) ^ *(STACK[0xAF0] + 4 * ((27 * ((*(STACK[0xB98] + (((v25 >> 4) & 0xF0 | (v25 >> 12)) ^ 0xD6)) - 10) ^ 0x10)) ^ 0xDCu)) ^ (v27 + 395068901 - ((2 * v27) & 0x2F188BCA)) ^ v29 ^ (v18 >> 16);
  v34 = &STACK[0x1070] + v3 - 1929056143;
  v35 = *v34;
  HIDWORD(v18) = v35 ^ 8;
  LODWORD(v18) = (v35 ^ 0xFFFFFFDF) << 24;
  *(&STACK[0x4B00] + v1 - 498817278) = v33 ^ 0xFB83ACE0;
  LODWORD(v21) = v34[2];
  v36 = *(v19 + ((v18 >> 28) ^ 0x6DLL)) - 10;
  HIDWORD(v18) = ~v21;
  LODWORD(v18) = (v21 ^ 0xCA) << 24;
  LODWORD(v21) = *(STACK[0xBB0] + ((v18 >> 25) ^ 0x9FLL));
  HIDWORD(v18) = v21;
  LODWORD(v18) = (v21 ^ 0x4E) << 24;
  v37 = STACK[0xAE0];
  v38 = *(STACK[0xB38] + 4 * (LODWORD(STACK[0xAE0]) ^ 0xD6u));
  LOBYTE(v21) = (v18 >> 25) ^ 0xF2;
  HIDWORD(v18) = v38 ^ 0x28;
  LODWORD(v18) = v38 ^ 0x42971C00;
  v39 = (v18 >> 8) + 883439725 - ((2 * (v18 >> 8)) & 0x695070DA);
  v40 = *(STACK[0xB58] + 4 * (BYTE2(LODWORD(STACK[0xAE0])) ^ 0xEDu)) + 533632306;
  HIDWORD(v18) = v40 ^ 0x19BC15;
  LODWORD(v18) = v40 ^ 0x8000000;
  v41 = v39 ^ (v18 >> 24);
  v42 = ((v34[1] ^ 0xCB) << 16) | (((27 * (v36 ^ 0x10)) ^ 0x13) << 24) | ((v21 + 70) << 8);
  LODWORD(v21) = *(STACK[0xB38] + 4 * (HIBYTE(LODWORD(STACK[0xAE0])) ^ 0xC2u));
  HIDWORD(v18) = v21 ^ 0xDE80;
  LODWORD(v18) = v21 ^ 0xCFE90000;
  v43 = v41 ^ (v18 >> 16) ^ *(STACK[0xB38] + 4 * ((27 * ((*(v19 + (((LODWORD(STACK[0xAE0]) >> 4) & 0xF0 | (LODWORD(STACK[0xAE0]) >> 12)) ^ 0xB0)) - 10) ^ 0x10)) ^ 0x44u)) ^ (v42 | v34[3] ^ 0xD8);
  v44 = *(v6 + 8 * (v10 - 1688));
  *(&STACK[0x3E50] + v1 - 498817278) = v43 ^ 0x623CC964;
  v45 = v44 - 12;
  v46 = *(v44 - 12 + 4 * (v33 ^ 0xC5u));
  v47 = *(v6 + 8 * (v10 - 2715)) - 12;
  LODWORD(v21) = *(v47 + 4 * (v43 ^ 0xABu));
  STACK[0xAA8] = v47;
  v46 -= 987607275;
  v48 = *(v6 + 8 * (v10 & 0x21A175D8)) - 12;
  v49 = *(v48 + 4 * (BYTE2(v43) ^ 0x6Cu));
  v50 = v48;
  STACK[0xAA0] = v48;
  HIDWORD(v18) = v21 ^ 0x58;
  LODWORD(v18) = v21 ^ 0x677A3900;
  LODWORD(v21) = v18 >> 8;
  v51 = *(v47 + 4 * (HIBYTE(v43) ^ 0xA7));
  HIDWORD(v18) = v49 ^ 0x679CD0;
  LODWORD(v18) = v49 ^ 0x1F000000;
  v52 = v18 >> 24;
  HIDWORD(v18) = v51 ^ 0xA95A;
  LODWORD(v18) = v51 ^ 0x667E0000;
  v53 = v18 >> 16;
  v54 = *(v44 - 12 + 4 * (BYTE1(v33) ^ 0x18u)) - 987607275;
  HIDWORD(v18) = v46 ^ 0x7A;
  LODWORD(v18) = v46 ^ 0x916BAD00;
  LODWORD(v48) = v18 >> 8;
  LODWORD(v44) = LODWORD(STACK[0xB68]) - 2 * ((LODWORD(STACK[0xB68]) + 447456948) & 0x24FAF467 ^ STACK[0xB68] & 1);
  v55 = v52 ^ *(v50 + 4 * (BYTE1(v43) ^ 0xE4u));
  v56 = *(v6 + 8 * (v10 - 2360));
  STACK[0xB68] = v56;
  v57 = *(v56 + 4 * (BYTE2(v33) ^ 0x92u));
  HIDWORD(v18) = v57 ^ 0xB1AAD3;
  LODWORD(v18) = v57 ^ 0x6A000000;
  v58 = v18 >> 24;
  v59 = *(v45 + 4 * (HIBYTE(v33) ^ 0xAA)) - 987607275;
  v60 = v55 ^ v53 ^ (v21 + 1911885002 - ((2 * v21) & 0xE3EA1994));
  HIDWORD(v18) = v59 ^ 0x1D24;
  LODWORD(v18) = v59 ^ 0x916F0000;
  v61 = v48 ^ v54 ^ v58 ^ (v18 >> 16);
  v62 = v37 ^ 0x168C55CE;
  LODWORD(STACK[0xA54]) = v37 ^ 0x168C55CE;
  LODWORD(STACK[0xAB0]) = -1447764176;
  v63 = (((v37 ^ 0x221E65D4 ^ v60) - (v37 ^ 0x168C55CE)) ^ ((v0 ^ 0x9D26EF2A ^ v60) - (v0 ^ 0xA9B4DF30)) ^ ((v60 ^ 0x6EFBF982 ^ v25 ^ (v44 + 2141625114) ^ v61) - (v25 ^ (v44 + 2141625114) ^ v61 ^ 0x5A69C998))) - LODWORD(STACK[0xBC8]);
  LODWORD(v21) = STACK[0xBC8];
  LODWORD(STACK[0xBC8]) = STACK[0xBC8];
  v64 = STACK[0xBC0];
  v65 = (v61 ^ 0x916E8672) + (LODWORD(STACK[0xBC0]) ^ 0x1C4B2DBB);
  LODWORD(v48) = v3 - ((2 * v3 + 436855018) & 0xAE4220EE) + 1680212204;
  LODWORD(STACK[0xA38]) = (2 * v5 + 1305663684) & 0xE5EF8DF4;
  v66 = v0 ^ 0xBF388AFE ^ v37;
  v67 = ((2 * v64) & 0x7EF9DB7A ^ 0x38905B72) + (v64 ^ 0x2337C006);
  LODWORD(STACK[0xBC0]) = v67;
  v68 = ((v5 - ((2 * v5 + 1304118440) & 0x49F5E8CC) - 1948739910) ^ (v44 + 2141625114)) - v67 + 1065151933;
  v69 = v68 - ((2 * v68) & 0x6DD10BF8) - 1226275332;
  v70 = 592435026 - v21 + v66;
  v71 = v70 + 1087222715;
  *(&STACK[0xC0A0] + v32) = v63 - ((2 * v63 - 1540184576) & 0xDCF04002) + 1083273985;
  *(&STACK[0xE0E0] + v32) = v65 - 57647967 - 2 * ((v65 + 236469408) & 0x6E78201D ^ v65 & 0x1C);
  STACK[0xA40] = v32;
  v72 = *(STACK[0xAD8] + (v48 ^ 0xD7211063));
  v73 = *(&STACK[0xE500] + (*(STACK[0xBD0] + (v48 ^ 0xD7211043)) ^ 0x23));
  LODWORD(v50) = v5;
  LODWORD(STACK[0xA88]) = v5;
  v74 = (2 * v70) & 0x819B673E;
  v75 = v3 - ((2 * v3 + 436855020) & 0x3ADBC8FE) + 712168693;
  LOBYTE(v10) = STACK[0xAF8];
  v76 = v73 ^ (-3 * v72 - ((LODWORD(STACK[0xAD0]) - 6 * v72) & 0xB0) - 35);
  v77 = STACK[0xAB8];
  v78 = *(STACK[0xAB8] + (v75 ^ 0x9D6DE471));
  LODWORD(v48) = *(&STACK[0xE500] + ((v10 + 29 * *(STACK[0xB60] + (v75 ^ 0x9D6DE453))) ^ 0x7CLL));
  HIDWORD(v18) = v48 ^ ~v78;
  LODWORD(v18) = (v48 ^ v78 ^ 0x64) << 24;
  LODWORD(STACK[0xA30]) = 2 * v3 + 436855016;
  LODWORD(v48) = v3 - ((2 * v3 + 436855022) & 0xF41063D0) - 2029182369;
  v79 = *(&STACK[0xE500] + ((v10 + 29 * *(STACK[0xB60] + (v48 ^ 0xFA0831C4))) ^ 0x7CLL));
  LOBYTE(v78) = (*(STACK[0xB90] + ((v18 >> 25) ^ 0xCELL)) - 50) ^ 0x15;
  HIDWORD(v18) = v79 ^ 8;
  LODWORD(v18) = (v79 ^ 0xFFFFFFDF) << 24;
  LOBYTE(v79) = (*(v19 + ((v18 >> 28) ^ 0x6DLL)) - 10) ^ 0x10;
  v80 = v77;
  v81 = (v78 + 70) ^ 0xD8;
  v82 = v3 - ((2 * v3 + 436855024) & 0x28661640) - 1590166632;
  v83 = *(v77 + (v82 ^ 0x14330B2Eu));
  HIDWORD(v18) = ~v83;
  LODWORD(v18) = (v83 ^ 0xBC) << 24;
  LOBYTE(v44) = v18 >> 25;
  v84 = STACK[0xA80];
  LODWORD(v13) = *(STACK[0xA80] + 4 * ((v68 - ((2 * v68) & 0xF8) - 4) ^ 0x89u));
  HIDWORD(v18) = v13 ^ 0x41;
  LODWORD(v18) = v13 ^ 0xB0288C00;
  LODWORD(v13) = (v18 >> 8) - 1312630881 - ((2 * (v18 >> 8)) & 0x6385AF3E);
  LODWORD(v48) = *(v77 + (v48 ^ 0xFA0831E6)) ^ 0x2E ^ ((~(54 * v79) | 0x85) + 27 * v79 - 66);
  v85 = *(STACK[0xA80] + 4 * (BYTE2(v69) ^ 0x31u));
  v86 = STACK[0xBB0];
  LODWORD(v48) = (v81 << 16) | (v48 << 8);
  HIDWORD(v18) = *(STACK[0xBB0] + (((v85 >> 17) & 0x80 | (v85 >> 25)) ^ 0x7ELL));
  LODWORD(v18) = (HIDWORD(v18) ^ 0x4E) << 24;
  v87 = v62 - 1072969202;
  v88 = (((v18 >> 25) ^ 0xF2) + 70) | (v85 << 8);
  v89 = *(STACK[0xA80] + 4 * (HIBYTE(v69) ^ 0x2C));
  HIDWORD(v18) = v89 ^ 0x9A89;
  LODWORD(v18) = v89 ^ 0x92640000;
  v90 = v71 - v74 - 28;
  v91 = v48 | *(&STACK[0xE500] + (*(STACK[0xBD0] + (v82 ^ 0x14330B14u)) ^ 0x23)) ^ 0xD8 | ((v76 ^ 0xFFFFFF87) << 24);
  v92 = 4 * (((v32 + 1) ^ 0x11BB5DAFFDBBAC2FLL) + ((2 * (v32 + 1)) & 0xFB77585E)) - 0x46ED76BFF6EEB0BCLL;
  v93 = (((*(STACK[0xB90] + (v44 ^ 0xCELL)) - 50) ^ 0x15) + 70) ^ *(STACK[0xA80] + 4 * ((33 * ((*(STACK[0xBB8] + (((v69 >> 5) & 0xF8 | (v69 >> 13)) ^ 1)) - 106) ^ 0x15)) ^ 0x51u)) ^ v13 ^ (v18 >> 16) ^ v88 ^ v91;
  v94 = ((v34[4] ^ 0xCB) << 24) | ((v34[5] ^ 0xCB) << 16) | ((v34[6] ^ 0xCB) << 8);
  LODWORD(v48) = v34[7] ^ 0xD8;
  *(&STACK[0x4B00] + v92) = v93 ^ 0x3FBF408F;
  v95 = v94 | v48;
  HIDWORD(v18) = *(v86 + ((((v71 & 1) << 7) | (v90 >> 1)) ^ 0x74));
  LODWORD(v18) = (HIDWORD(v18) ^ 0x4E) << 24;
  v96 = *(STACK[0xB38] + 4 * ((27 * (*(STACK[0xB80] + (((v90 >> 12) & 0xF0 | (v90 >> 20) & 0xF) ^ 0x91)) ^ 0xD6)) ^ 0x5Fu));
  LODWORD(v48) = *(STACK[0xB58] + 4 * ((((v18 >> 25) ^ 0xF2) + 70) ^ 0x6Cu)) + 533632306;
  HIDWORD(v18) = v96 ^ 0x743067;
  LODWORD(v18) = v96 ^ 0xE6000000;
  v97 = v18 >> 24;
  v98 = *(STACK[0xB58] + 4 * (HIBYTE(v90) ^ 0x3F)) + 533632306;
  HIDWORD(v18) = v98 ^ 0x904;
  LODWORD(v18) = v98 ^ 0x49C00000;
  v99 = (*(STACK[0xB58] + 4 * (BYTE1(v90) ^ 0x11u)) + 533632306) ^ __ROR4__(v48, 8) ^ v95 ^ v97 ^ (v18 >> 16);
  *(&STACK[0x3E50] + v92) = v99 ^ 0xD7D13B71;
  LODWORD(v48) = 33 * ((*(STACK[0xBB8] + (((v93 >> 5) | (8 * (v93 & 0x1F))) ^ 0x93)) - 106) ^ 0x15);
  HIDWORD(v18) = v48 ^ 0xFFFFFFFB;
  LODWORD(v18) = (v48 ^ 0xFFFFFFDF) << 24;
  LODWORD(v34) = v50 - LODWORD(STACK[0xA38]) + 434189148;
  v100 = STACK[0xB68];
  LODWORD(v13) = *(STACK[0xB68] + 4 * (BYTE1(v93) ^ 0x59u));
  v101 = (27 * ((*(STACK[0xB98] + ((v18 >> 28) ^ 0x6DLL)) - 10) ^ 0x10)) ^ 0xC0u;
  STACK[0xA48] = v45;
  v102 = ((2 * v87) & 0xEDEDFEEE) + (v87 ^ 0xF6F6FF77);
  v103 = *(v100 + 4 * (HIBYTE(v93) ^ 0x69));
  LODWORD(v101) = *(v45 + 4 * v101) - 987607275;
  HIDWORD(v18) = v103 ^ 0xA753;
  LODWORD(v18) = v103 ^ 0x6AB70000;
  v104 = v18 >> 16;
  v105 = *(STACK[0xAA0] + 4 * (v99 ^ 0x14u));
  HIDWORD(v18) = v105 ^ 0xD1;
  LODWORD(v18) = v105 ^ 0x65EC00;
  v106 = v18 >> 8;
  HIDWORD(v18) = v101 ^ 0xD6;
  LODWORD(v18) = v101 ^ 0x91689B00;
  LODWORD(v44) = *(STACK[0xAA0] + 4 * (BYTE1(v99) ^ 0x95u));
  LODWORD(v101) = (v18 >> 8) ^ v13;
  LODWORD(v13) = *(STACK[0xAA8] + 4 * (BYTE2(v99) ^ 0xEAu));
  HIDWORD(v18) = v13 ^ 0x74595F;
  LODWORD(v18) = v13 ^ 0xB1000000;
  LODWORD(v13) = v18 >> 24;
  v107 = *(STACK[0xAA0] + 4 * (HIBYTE(v99) ^ 0xA6));
  LODWORD(v101) = v101 ^ __ROR4__(*(v45 + 4 * (BYTE2(v93) ^ 0x5Fu)) - 987607275, 24);
  HIDWORD(v18) = v107 ^ 0x9CD3;
  LODWORD(v18) = v107 ^ 0xEF600000;
  v108 = v13 ^ v44 ^ (v18 >> 16) ^ (v106 + 1911885002 - ((2 * v106) & 0xE3EA1994));
  LODWORD(v19) = v69;
  v109 = v69 ^ v34 ^ v108;
  LODWORD(v86) = STACK[0xBC0];
  v110 = STACK[0xBC8];
  LODWORD(v101) = (((v90 ^ 0x44D0FCFF ^ v101 ^ v104) - (v90 ^ 0x40CDB39F)) ^ (-151584905 - v102 + ((v102 + 151584905) ^ 0x41D4F60 ^ v101 ^ v104)) ^ ((v101 ^ v104 ^ v109 ^ 0x6F980C78) - (v109 ^ 0x6B854318))) - LODWORD(STACK[0xBC8]);
  *(&STACK[0xC0A0] + v92) = LODWORD(STACK[0xBC0]) - 1065151933 + (v108 ^ 0xAF9A001E) + 490838959 - ((2 * (LODWORD(STACK[0xBC0]) - 1065151933 + (v108 ^ 0xAF9A001E)) + 1569912668) & 0xDCF04002);
  v111 = v101 - 2 * ((v101 + 828904434) & 0x6E782019 ^ (v101 + 18) & 0x18) + 534787059;
  LODWORD(v45) = STACK[0xA30];
  LODWORD(v101) = (LODWORD(STACK[0xA30]) + 10) & 0xE5C3CE8E;
  *(&STACK[0xE0E0] + v92) = v111;
  v112 = v3 - 1648704 - v101;
  v113 = v3 - ((v45 + 12) & 0x76D5DE42) - 932192357;
  LOBYTE(v109) = *(STACK[0xAD8] + (v113 ^ 0x3B6AEF35u));
  v114 = v3 - ((v45 + 16) & 0xA79A74DE) - 523097365;
  LODWORD(v101) = *(&STACK[0xE500] + (*(STACK[0xBD0] + (v112 ^ 0x72E1E773u)) ^ 0x23)) ^ *(v80 + (v112 ^ 0x72E1E749u)) ^ 0x4B;
  LODWORD(v13) = (v34 ^ (LODWORD(STACK[0xAE8]) + 1214206482 + ((1429268944 - 2 * LODWORD(STACK[0xAE8])) | 0x1A10720B))) + (v34 ^ 0x72F7C6FA);
  LODWORD(v34) = ((2 * v13) & 0xFFF3766A) + (v13 ^ 0xFFF9BB35);
  LODWORD(v80) = v86 + v34 - 1064741105 + (v19 ^ 0x81F3D80B) - 2103675101 - ((2 * (v86 + v34 - 1064741105 + (v19 ^ 0x81F3D80B))) & 0x538EE46);
  LODWORD(v13) = *(STACK[0xAF0] + 4 * (BYTE3(v80) ^ 0x5B));
  HIDWORD(v18) = v13 ^ 0x2241;
  LODWORD(v18) = v13 ^ 0x6E4F0000;
  LODWORD(v13) = v18 >> 16;
  HIDWORD(v18) = *(&STACK[0xE500] + (*(STACK[0xBD0] + (v114 ^ 0x53CD3A5Bu)) ^ 0x23));
  LODWORD(v18) = (HIDWORD(v18) ^ 0xD8) << 24;
  LOBYTE(v106) = v18 >> 25;
  LODWORD(v18) = __ROR4__(*(v84 + 4 * ((v86 + v34 + 15 + (v19 ^ 0xB) + 35 - ((2 * (v86 + v34 + 15 + (v19 ^ 0xB))) & 0x46)) ^ 9u)), 8);
  LODWORD(v86) = (v18 ^ 0x4E6C670B) - 1312630881 - ((2 * (v18 ^ 0x4E6C670B)) & 0x6385AF3E);
  LODWORD(v44) = (v101 << 24) | ((*(&STACK[0xE500] + ((LODWORD(STACK[0xAF8]) + 29 * *(STACK[0xB60] + (v113 ^ 0x3B6AEF0Du))) ^ 0x7CLL)) ^ (-3 * v109 - ((LODWORD(STACK[0xAD0]) - 6 * v109) & 0xB0) - 35) ^ 0x87) << 16);
  v115 = *(STACK[0xAF0] + 4 * (BYTE2(v80) ^ 0xDu));
  HIDWORD(v18) = v115 ^ 0xD9A3E2;
  LODWORD(v18) = v115 ^ 0x40000000;
  v116 = v3 - ((LODWORD(STACK[0xA58]) + 16) & 0x2C371EE) - 1905874574;
  v117 = STACK[0xAD8];
  v118 = v13 ^ *(v84 + 4 * (BYTE1(v80) ^ 0xE1u)) ^ (v18 >> 24) ^ v86;
  LOBYTE(v109) = (-3 * *(STACK[0xAD8] + (v116 ^ 0x161B8E3u)) + 5) ^ (LODWORD(STACK[0xBA0]) + 59 * *(STACK[0xBA8] + (((*(&STACK[0xE500] + (*(STACK[0xBD0] + (v116 ^ 0x161B8C3u)) ^ 0x23)) ^ 0xD8) - 43) ^ 0x14)));
  HIDWORD(v18) = *(STACK[0xBB0] + (v106 ^ 0x9FLL));
  LODWORD(v18) = (HIDWORD(v18) ^ 0x4E) << 24;
  LODWORD(v92) = ((v102 + 151584905) ^ ((LODWORD(STACK[0xA70]) ^ 0x4034F624) - 714634473)) + v102;
  LODWORD(STACK[0xBC0]) = v92;
  v119 = ((v92 + 151584905) ^ (LODWORD(STACK[0xA54]) - 2057567951)) - 908914468 - ((2 * ((v92 + 151584905) ^ (LODWORD(STACK[0xA54]) - 2057567951))) & 0x93A621B8);
  LODWORD(v84) = v110 + (v90 ^ 0x77D6EE68) + v92 - 440850120 + 474421028 - ((2 * (v110 + (v90 ^ 0x77D6EE68) + v92 - 440850120)) & 0x388E2E48);
  LODWORD(v50) = ((v34 + 410827) ^ (LODWORD(STACK[0xA88]) + 1815716741)) - 1876349380 - ((2 * ((v34 + 410827) ^ (LODWORD(STACK[0xA88]) + 1815716741))) & 0x20525C78);
  v120 = v117;
  LOBYTE(v106) = (-3 * *(v117 + (v114 ^ 0x53CD3A7Bu)) + 5) ^ 0x5F;
  v121 = v119 ^ v90;
  v122 = 4 * (((STACK[0xA40] + 2) ^ 0xBE7BEDAF2FB9EFBLL) + ((2 * (STACK[0xA40] + 2)) & 0xE5F73DF4)) - 0x2F9EFB6BCBEE7BECLL;
  LODWORD(v13) = *(&STACK[0x1070] + (v113 ^ 0x3B6AEF21u)) ^ 0xCB;
  v123 = v118 ^ (v44 & 0xFFFF0000 | ((v109 ^ 6) << 8) | (v106 ^ (((v18 >> 25) ^ 0xF2) + 70)));
  v124 = v3 - ((v45 + 18) & 0x1F258174) - 1667780297;
  v125 = ((*(&STACK[0x1070] + (v112 ^ 0x72E1E747u)) ^ 0xCB) << 24) | (v13 << 16) | ((*(&STACK[0x1070] + (v116 ^ 0x161B8F7u)) ^ 0xCB) << 8) | *(&STACK[0x1070] + (v114 ^ 0x53CD3A6Fu)) ^ 0xD8;
  *(&STACK[0x4B00] + v122) = v123 ^ 0xC4345666;
  LODWORD(v92) = *(STACK[0xB38] + 4 * (v84 ^ 0x77u));
  v126 = *(STACK[0xB58] + 4 * (BYTE2(v84) ^ 0xE1u)) + 533632306;
  HIDWORD(v18) = v92 ^ 0xFFFFFFC7;
  LODWORD(v18) = v92 ^ 0x66AE7800;
  v127 = v18 >> 8;
  HIDWORD(v18) = v126 ^ 0x3D9C55;
  LODWORD(v18) = v126 ^ 0x5A000000;
  v128 = v18 >> 24;
  LODWORD(v92) = *(STACK[0xB50] + (((BYTE3(v84) ^ 0x1C) - 43) ^ 0x96));
  HIDWORD(v18) = v92 ^ 0xAAAAAAAA;
  LODWORD(v18) = ~v92 << 24;
  LODWORD(v13) = *(STACK[0xB58] + 4 * ((27 * (*(STACK[0xB80] + ((v18 >> 28) ^ 0x4DLL)) ^ 0xD6)) ^ 0x6Cu)) + 533632306;
  HIDWORD(v18) = v13 ^ 0x4AD2;
  LODWORD(v18) = v13 ^ 0xC160000;
  v129 = v125 ^ *(STACK[0xB38] + 4 * (BYTE1(v84) ^ 0x7Fu)) ^ v128 ^ (v127 + 883439725 - ((2 * v127) & 0x695070DA)) ^ (v18 >> 16);
  *(&STACK[0x3E50] + v122) = v129 ^ 0x16FC3E08;
  v130 = STACK[0xA48];
  v131 = *(STACK[0xA48] + 4 * (v123 ^ 0x54u)) - 987607275;
  HIDWORD(v18) = v131 ^ 0x24;
  LODWORD(v18) = v131 ^ 0x916B1400;
  LODWORD(v13) = *(STACK[0xA48] + 4 * (*(STACK[0xB50] + (((BYTE2(v123) ^ 8) - 43) ^ 0x96)) ^ 0x20)) - 987607275;
  v132 = (v18 >> 8) ^ (*(STACK[0xA48] + 4 * (BYTE1(v123) ^ 0xD2u)) - 987607275) ^ __ROR4__(*(STACK[0xB68] + 4 * (HIBYTE(v123) ^ 0xD)), 16);
  v133 = *(STACK[0xAA0] + 4 * (v129 ^ 0x6Cu));
  HIDWORD(v18) = v133 ^ 0xD1;
  LODWORD(v18) = v133 ^ 0x965FC00;
  v134 = v18 >> 8;
  HIDWORD(v18) = v13 ^ 0x6CB29E;
  LODWORD(v18) = v13 ^ 0x91000000;
  v135 = *(STACK[0xAA0] + 4 * (BYTE1(v129) ^ 0x3Eu));
  v136 = v132 ^ (v18 >> 24);
  LODWORD(v13) = *(STACK[0xAA8] + 4 * (BYTE2(v129) ^ 0x63u));
  HIDWORD(v18) = v13 ^ 0x7E195A;
  LODWORD(v18) = v13 ^ 0x35000000;
  LODWORD(v13) = v18 >> 24;
  v137 = *(STACK[0xAA8] + 4 * (HIBYTE(v129) ^ 0xCA));
  HIDWORD(v18) = v137 ^ 0x395A;
  LODWORD(v18) = v137 ^ 0xB77F0000;
  v138 = v13 ^ v135 ^ (v18 >> 16) ^ (v134 + 1911885002 - ((2 * v134) & 0xE3EA1994));
  v139 = v119 ^ 0xC9D310DC;
  v140 = (v119 ^ 0xB843F0C7 ^ v138) - (v119 ^ 0xC9D310DC);
  v141 = ((v136 ^ v19 ^ 0xC96EA84E ^ v138) - (v136 ^ v19 ^ 0xB8FE4855)) ^ ((v121 ^ 0x306AE150 ^ v138) - (v121 ^ 0x41FA014B));
  LODWORD(v80) = v80 ^ 0x829C7723;
  v142 = v136 ^ 0xC6F26FA1;
  v143 = ((2 * (v80 + (v19 ^ 0xEE2509C8 ^ v50))) & 0xDEDEFFEE) + ((v80 + (v19 ^ 0xEE2509C8 ^ v50)) ^ 0x6F6F7FF7);
  LODWORD(v100) = ((2 * ((v50 ^ 0x90292E3C) + 1869578231 - v143)) & 0x5CE3FFFE) + (((v50 ^ 0x90292E3C) + 1869578231 - v143) ^ 0x2E71FFFF);
  LODWORD(v32) = ((v143 - 1869578231) ^ 0xD6C1691D) + 418313680 - ((2 * ((v143 - 1869578231) ^ 0xD6C1691D)) & 0x31DDEBA0);
  LODWORD(STACK[0xBC8]) = v32;
  LODWORD(STACK[0xAE8]) = v80 ^ (v100 - 779223039);
  v144 = ((2 * ((v121 ^ 0x41FA014B) + (v84 ^ 0x1C471724))) & 0x3DAEFF4A) + (((v121 ^ 0x41FA014B) + (v84 ^ 0x1C471724)) ^ 0x1ED77FA5);
  v145 = v32 ^ (v34 - v143 + 350946967);
  LODWORD(v19) = ((2 * (v139 + 517439397 - v144)) & 0x76F9BFF6) + ((v139 + 517439397 - v144) ^ 0x3B7CDFFB);
  LODWORD(v34) = v84 ^ 0x1C471724 ^ (v19 - 998039547);
  v146 = (v141 ^ v140) - (v84 ^ 0x1C471724);
  LODWORD(v84) = ((v144 - 517439397) ^ 0xD6C1691D) + 754764012 - ((2 * ((v144 - 517439397) ^ 0xD6C1691D)) & 0x59F991D8);
  LODWORD(STACK[0xAE0]) = v84;
  *(&STACK[0xE0E0] + v122) = v142 + v80 - 57647967 - 2 * ((v142 + v80 + 236469408) & 0x6E78200D ^ (v142 + v80) & 0xC);
  *(&STACK[0xC0A0] + v122) = v146 + 490838959 - ((2 * v146 + 1569912668) & 0xDCF04002);
  v147 = *(v120 + (v124 ^ 0xF92C0AEu));
  LODWORD(v92) = v3 - ((v45 + 20) & 0xD0D02832) + 1970078871;
  v148 = v3 - ((v45 + 22) & 0x5582BB82) + 935743040;
  v149 = *(STACK[0xAB8] + (v148 ^ 0xAAC15DCF));
  HIDWORD(v18) = ~v149;
  LODWORD(v18) = (v149 ^ 0xBC) << 24;
  v150 = *(STACK[0xBB0] + ((v18 >> 25) ^ 0xE4));
  HIDWORD(v18) = v150;
  LODWORD(v18) = (v150 ^ 0x4E) << 24;
  LODWORD(v122) = (STACK[0xA60] | 0xF) - 1079386625 - ((2 * (STACK[0xA60] | 0xF)) & 0x7F53BBFE);
  v151 = STACK[0xBA8];
  LOBYTE(v13) = *(STACK[0xBA8] + (((*(STACK[0xAB8] + (v122 ^ 0xBFA9DDF1)) ^ 0x4B) - 43) ^ 0x14));
  LOBYTE(v141) = STACK[0xBA0];
  v152 = *(&STACK[0xE500] + ((LODWORD(STACK[0xAF8]) + 29 * *(STACK[0xB60] + (STACK[0xA60] ^ 0x23))) ^ 0x7CLL)) ^ 0x81 ^ (59 * v13 - ((LODWORD(STACK[0x3B8]) + 118 * v13) & 0xB0) - 53);
  LODWORD(v13) = *(STACK[0xAF0] + 4 * (v145 ^ 0x82u));
  v153 = ((*(&STACK[0xE500] + (*(STACK[0xBD0] + (v124 ^ 0xF92C08Eu)) ^ 0x23)) ^ (-3 * v147 - ((LODWORD(STACK[0xAD0]) - 6 * v147) & 0xB0) - 35) ^ 0xFFFFFF87) << 24) | ((*(&STACK[0xE500] + (*(STACK[0xBD0] + (v92 ^ 0xE868142D)) ^ 0x23)) ^ 0x87 ^ (-3 * *(v120 + (v92 ^ 0xE868140D)) - ((LODWORD(STACK[0xAD0]) - 6 * *(v120 + (v92 ^ 0xE868140D))) & 0xB0) - 35)) << 16) | (((v141 + 59 * *(STACK[0xBA8] + (((*(&STACK[0xE500] + (*(STACK[0xBD0] + (v148 ^ 0xAAC15DF5)) ^ 0x23)) ^ 0xD8 ^ (((v18 >> 25) ^ 0xF2) - ((2 * ((v18 >> 25) ^ 0xF2) - 116) & 0xB0) + 30)) - 43) ^ 0x14))) ^ 0x81) << 8);
  HIDWORD(v18) = v13 ^ 0x5B;
  LODWORD(v18) = v13 ^ 0x9D155100;
  v154 = v18 >> 8;
  v155 = v152 | v153;
  v156 = *(STACK[0xAF0] + 4 * (BYTE2(v145) ^ 0x93u));
  HIDWORD(v18) = v156 ^ 0xBE2896;
  LODWORD(v18) = v156 ^ 0x75000000;
  v157 = v18 >> 24;
  LODWORD(v13) = *(STACK[0xAF0] + 4 * (HIBYTE(v145) ^ 0xE1));
  HIDWORD(v18) = v13 ^ 0xB0C0;
  LODWORD(v18) = v13 ^ 0xCD610000;
  v158 = v157 ^ *(STACK[0xAF0] + 4 * (BYTE1(v145) ^ 0x4Du)) ^ (v18 >> 16) ^ (v154 + 395068901 - ((2 * v154) & 0x2F188BCA));
  v159 = v84 ^ (LODWORD(STACK[0xBC0]) - v144 - 850017789);
  v160 = 4 * (((STACK[0xA78] + 3796150018u) & 0xFFFFFFFC ^ 0x35FFFFFDBDD5B8BCLL) + ((2 * (STACK[0xA78] + 3796150018u)) & 0x7BAB7178)) + 0x2800000908A91D1CLL;
  LODWORD(v44) = v158 ^ v155;
  LODWORD(v92) = ((*(&STACK[0x1070] + (v124 ^ 0xF92C0BAu)) ^ 0xCB) << 24) | ((*(&STACK[0x1070] + (v92 ^ 0xE8681419)) ^ 0xCB) << 16) | ((*(&STACK[0x1070] + (v148 ^ 0xAAC15DC1)) ^ 0xCB) << 8) | *(&STACK[0x1070] + (v122 ^ 0xBFA9DDFF)) ^ 0xD8;
  LOBYTE(v155) = (((v144 + 91) ^ 0x1D) - 20 - ((2 * ((v144 + 91) ^ 0x1D)) & 0xD8)) ^ (LOBYTE(STACK[0xBC0]) - v144 + 3) ^ 0xEC;
  *(&STACK[0x4B00] + v160) = v44 ^ 0x2A95C932;
  v161 = *(STACK[0xB38] + 4 * ((v141 + 59 * *(v151 + ((v155 - 43) ^ 0x14))) ^ 0x55u));
  v162 = *(STACK[0xB58] + 4 * (BYTE2(v159) ^ 0xDu));
  HIDWORD(v18) = v161 ^ 0x80;
  LODWORD(v18) = v161 ^ 0xCFE9DE00;
  v163 = v18 >> 8;
  HIDWORD(v18) = v162 + 13538610;
  LODWORD(v18) = v162 + 533632306;
  v164 = v18 >> 24;
  v165 = *(STACK[0xB38] + 4 * (HIBYTE(v159) ^ 0x1C));
  HIDWORD(v18) = v165 ^ 0xAFEB;
  LODWORD(v18) = v165 ^ 0x404A0000;
  v166 = LODWORD(STACK[0xAE8]) + v143;
  v167 = v92 ^ *(STACK[0xB38] + 4 * ((v141 + 59 * *(v151 + (((BYTE1(v159) ^ 0x1B) - 43) ^ 0x14))) ^ 0xC5u)) ^ v164 ^ (v18 >> 16) ^ (v163 + 883439725 - ((2 * v163) & 0x695070DA));
  *(&STACK[0x3E50] + v160) = v167 ^ 0xBE8CD70A;
  v168 = *(STACK[0xB68] + 4 * (BYTE2(v44) ^ 0xA9u));
  v169 = *(STACK[0xB68] + 4 * (BYTE3(v44) ^ 0x62));
  HIDWORD(v18) = v169 ^ 0x568F;
  LODWORD(v18) = v169 ^ 0x6AB70000;
  v170 = v18 >> 16;
  v171 = *(v130 + 4 * (v44 ^ 0xF0u)) - 987607275;
  HIDWORD(v18) = v171 ^ 0xC4;
  LODWORD(v18) = v171 ^ 0x916C9A00;
  v172 = (v18 >> 8) ^ (*(v130 + 4 * (BYTE1(v44) ^ 0x4Eu)) - 987607275) ^ v170;
  v173 = *(STACK[0xAA0] + 4 * (v167 ^ 0xF8u));
  HIDWORD(v18) = v173 ^ 0xD5;
  LODWORD(v18) = v173 ^ 0x2F6C9C00;
  v174 = (v18 >> 8) - ((2 * (v18 >> 8)) & 0xEF014614);
  LODWORD(v44) = *(STACK[0xAA0] + 4 * (BYTE2(v167) ^ 0xC1u));
  v175 = *(STACK[0xB50] + (((HIBYTE(v168) ^ 0x6A) - 43) ^ 0x96)) ^ 0x23 | (v168 << 8);
  v176 = *(STACK[0xAA8] + 4 * (BYTE1(v167) ^ 2u));
  v177 = *(STACK[0xAA8] + 4 * (HIBYTE(v167) ^ 0x29));
  v178 = v172 ^ v175;
  HIDWORD(v18) = v177 ^ 0x8958;
  LODWORD(v18) = v177 ^ 0xA47B0000;
  v179 = (v174 - 142564598) ^ v176 ^ (v18 >> 16);
  v180 = v166 - 1869578231;
  v181 = v100 - v166;
  LODWORD(v84) = v179 ^ ((33 * ((*(STACK[0xBB8] + (((v44 >> 21) & 0xF8 | (~v44 >> 29)) ^ 0x7DLL)) - 106) ^ 0x15)) | (v44 << 8));
  v182 = ((2 * ((LODWORD(STACK[0xBC8]) ^ 0x18EEF5D0) - 1225449036)) & 0xEBBDD9DC) + (((LODWORD(STACK[0xBC8]) ^ 0x18EEF5D0) - 1225449036) ^ 0xF5DEECEE);
  LODWORD(v13) = (v100 - ((2 * v100 + 443625330) & 0xCD103342) - 205475494) ^ LODWORD(STACK[0xBC8]) ^ v84;
  v183 = (v145 ^ 0x18EEF5D0) - 169939730 - v182 + 1700660007 - ((2 * ((v145 ^ 0x18EEF5D0) - 169939730 - v182)) & 0xCABC064E);
  LODWORD(v44) = v84 ^ 0x71B1BA51;
  LODWORD(v84) = ((2 * (v183 ^ v180)) & 0xFDEFB7F6 ^ 0x8CAA2564) + (v183 ^ v180 ^ 0xB9AAED49);
  v184 = STACK[0xA78];
  v185 = v44 + v180;
  v186 = v183 ^ (v181 - 2 * ((v181 + 2091390896) & 0x655E032F ^ v181 & 8) - 502916393);
  LODWORD(v44) = (v19 + 2996157) ^ 0x21AF44B8 ^ v178;
  v187 = ((2 * v186) & 0xFFFB7CBE ^ 0xB7D964AA) + (v186 ^ 0x24134CAA);
  LODWORD(v80) = LODWORD(STACK[0xAE0]) ^ 0x2CFCC8EC;
  v188 = (LODWORD(STACK[0xAE0]) ^ 0xD538C54 ^ v178) - v80;
  v189 = (v178 ^ 0xAE781298 ^ v13) - (v13 ^ 0x8FD75620);
  LODWORD(v13) = ((2 * (v80 - 1225449036)) & 0x3F7776FE) + ((v80 - 1225449036) ^ 0x9FBBBB7F);
  LODWORD(v80) = (v159 ^ 0x2CFCC8EC) - 1615086721 - v13 - ((2 * ((v159 ^ 0x2CFCC8EC) - 1615086721 - v13)) & 0x863198EA) + 1125698677;
  v190 = (v188 ^ (v44 - v19 - 2996157) ^ v189) - (v34 + v144);
  LODWORD(v92) = ((2 * (v80 ^ (v34 + v144 - 517439397))) & 0xFF9F3FFE ^ 0xC21733C0) + (v80 ^ (v34 + v144 - 517439397) ^ 0x1ED4661F);
  v191 = ((2 * (v80 ^ (v19 - (v34 + v144) + 520435554))) & 0xFBFF7E2E ^ 0x31EC7C00) + (v80 ^ (v19 - (v34 + v144) + 520435554) ^ 0xE5098197);
  *(&STACK[0xC0A0] + v160) = v185 + 490838959 - ((2 * v185 + 1569912668) & 0xDCF04002);
  *(&STACK[0xE0E0] + v160) = v190 - ((2 * v190 + 1507817610) & 0xDCF04002) + 459791430;
  v192 = v191 - 1236166071 + ((7698186 - 2 * v191) | 0xD2E75463);
  v193 = v182 - v84;
  v194 = (v183 ^ 0xBEB0F1D2) + v187 + v193;
  v195 = v193 - v187;
  LODWORD(STACK[0xB68]) = v195 - 1861867496;
  LODWORD(STACK[0xAE0]) = v192;
  LODWORD(v92) = v92 - v191 - 627822027 + (((v192 ^ 0xE973AA31) + v13 - v92 - ((2 * ((v192 ^ 0xE973AA31) + v13 - v92) + 1088951012) & 0x5369BE60) + 170453154) ^ LODWORD(STACK[0xAB0]));
  LODWORD(STACK[0xBC8]) = (v92 ^ 0xABFFDFD7) + 2001729403 + ((2 * v92) & 0x57FFBFAE);
  LODWORD(STACK[0xAE8]) = v194 - 1495256001;
  v196 = *(STACK[0xBD8] + 8 * (((4 * (v184 - 498817274 > 0xF)) | (8 * (v184 - 498817274 > 0xF))) ^ LODWORD(STACK[0xA90])));
  LODWORD(STACK[0xBC0]) = (v84 - v187 + 1226556493 + v195) ^ 0x1C4B2DBB;
  return v196();
}

uint64_t sub_244BB5ED4()
{
  STACK[0xBD0] = v1;
  v6 = STACK[0xA68];
  v7 = LODWORD(STACK[0xA68]) ^ 0x1ED1u;
  v8 = v1 - 161885324;
  STACK[0xA90] = v7;
  v9 = 4 * (((v1 - 161885310) ^ 0x37AEEAB7FB37FFFDLL) + ((v7 + 0x1F66FED4FLL) & (2 * (v1 - 161885310)))) + 0x214455201320000CLL;
  v10 = *(&STACK[0x3E50] + v9);
  v11 = *(&STACK[0x4B00] + v9);
  v12 = *(v3 + 8 * (v6 - 2723)) + 4 * (BYTE1(v11) ^ 0x84);
  v13 = *(STACK[0xBB0] + (((v10 >> 9) & 0x80 | (v10 >> 17) & 0x7F) ^ 0x94));
  v14 = *(v3 + 8 * (v6 - 3004));
  LODWORD(v9) = *(*(v3 + 8 * (v6 - 1823)) + 4 * (BYTE1(v10) ^ 0x8FLL) - 4);
  HIDWORD(v16) = v9 ^ 0x4CE;
  LODWORD(v16) = v9 ^ 0xCE1A0000;
  v15 = v16 >> 16;
  LODWORD(v9) = *(*(v3 + 8 * (v6 ^ 0x8A6)) + 4 * (v10 ^ 0xFCLL) - 12) ^ (*(*(v3 + 8 * (v6 - 1911)) + ((v10 >> 22) & 0x3FC ^ 0x168) - 4) + 1374897934);
  HIDWORD(v16) = *(STACK[0xBB0] + (((v11 >> 1) | ((v11 & 1) << 7)) ^ 0x71));
  LODWORD(v16) = (HIDWORD(v16) ^ 0x4E) << 24;
  v17 = v16 >> 25;
  LODWORD(v10) = (*(*(v3 + 8 * (v6 - 2803)) + ((v11 >> 22) & 0x3FC ^ 0x254) - 12) + 1413024849) ^ *(*(v3 + 8 * (v6 ^ 0xA44)) + 4 * (BYTE2(v11) ^ 0xA9) - 4);
  v18 = STACK[0xBD0] + 1;
  STACK[0xBD0] = v18;
  v19 = *(&STACK[0x3E50] + v18 - 161885324);
  HIDWORD(v16) = v13;
  LODWORD(v16) = (v13 ^ 0x4E) << 24;
  v20 = (v16 >> 25) ^ 0xF2;
  v21 = *(*(v3 + 8 * (v6 - 1481)) + 4 * (*(&STACK[0x3E50] + v18 - 161885324) ^ 0x16) - 4);
  v22 = v15 - ((2 * v15) & 0x6004ABBE);
  HIDWORD(v16) = v21 ^ 1;
  LODWORD(v16) = v21 ^ 0x7ABF8270;
  v23 = *(v12 - 8) - ((2 * *(v12 - 8) - 1718432242) & 0x937EE468) - 1769416389;
  v24 = ((v16 >> 2) - ((2 * (v16 >> 2)) & 0xBA83E0E6) - 582881165) ^ *(*(v3 + 8 * (v6 - 2905)) + 4 * (*(v4 + (((BYTE1(v19) ^ 0xBE) - 43) ^ 0x96)) ^ 0x1BLL) - 8);
  LOBYTE(v12) = (v20 + 70) ^ 3;
  v25 = *(&STACK[0x4B00] + v18 - 161885324);
  LODWORD(v9) = v9 ^ (v22 + 805459423);
  v26 = *(*(v3 + 8 * (v6 - 2663)) + ((v25 >> 22) & 0x3FC ^ 0xB0));
  HIDWORD(v16) = v26 ^ 0x3A;
  LODWORD(v16) = v26 ^ 0x765F5F40;
  v27 = v16 >> 6;
  v28 = v14 + 4 * v12;
  LODWORD(v12) = *(*(v3 + 8 * (v6 - 1921)) + 4 * ((27 * ((*(STACK[0xB98] + (((v25 >> 4) & 0xF0 | (v25 >> 12)) ^ 8)) - 10) ^ 0x10)) ^ 0xF0u));
  LODWORD(v28) = *(v28 - 12);
  LODWORD(v19) = (*(*(v3 + 8 * (v6 ^ 0xE7F)) + ((v19 >> 22) & 0x3FC ^ 0x14)) + 1827926548) ^ *(*(v3 + 8 * (v6 ^ 0xD66)) + 4 * (BYTE2(v19) ^ 0x6ELL) - 8) ^ (v24 - ((2 * v24) & 0xCC2D252A) + 1712755349);
  HIDWORD(v16) = v12 ^ 0xFFFFFFFD;
  LODWORD(v16) = v12 ^ 0x68DF4FD0;
  v29 = v23 ^ *(*(v3 + 8 * (v6 - 2419)) + 4 * ((v17 ^ 0xF2) + 70) - 12);
  v30 = (-762239213 * *(*(v3 + 8 * (v6 ^ 0x9AF)) + 4 * (*(&STACK[0x4B00] + v18 - 161885324) ^ 0x7ELL)) - 782601882) ^ (v16 >> 3);
  v31 = *(*(v3 + 8 * (v6 ^ 0xCC5)) + 4 * (BYTE2(v25) ^ 0x54)) ^ v27;
  HIDWORD(v16) = v28 ^ 0x8A64463;
  LODWORD(v16) = ~v28;
  v32 = LODWORD(STACK[0xB68]) - 626284876;
  v33 = (v2 - 421682604) ^ v32;
  LODWORD(v12) = v19 ^ 0xF29499DF;
  LODWORD(v25) = v0 ^ 0x55BCD027 ^ v19;
  LODWORD(v28) = LODWORD(STACK[0xAE0]) ^ 0xEA845AD9 ^ v19;
  LODWORD(v19) = LODWORD(STACK[0xAE0]) ^ 0x168C55CE;
  v34 = v0;
  v35 = v28 - v19;
  LODWORD(v28) = ((2 * LODWORD(STACK[0xBC0])) & 0xB6E7B5D6 ^ 0x30861156) + (LODWORD(STACK[0xBC0]) ^ 0x4738F750);
  v36 = v35 ^ (v25 - (v34 ^ LODWORD(STACK[0xAB0])));
  v37 = v32 ^ LODWORD(STACK[0xBC0]);
  v38 = (v16 >> 28) ^ v9;
  LODWORD(v25) = v37 ^ 0x7A78B01D ^ (LODWORD(STACK[0xAE8]) - 1534319339 + v28 + 1714658727 + (~(2 * (LODWORD(STACK[0xAE8]) - 1534319339 + v28)) | 0x3398C4B3));
  LODWORD(v9) = LODWORD(STACK[0xBC8]) - 592435026;
  v39 = v10 ^ (v29 - ((2 * v29) & 0x95707008) + 1253586948);
  v40 = (v34 ^ v9 ^ LODWORD(STACK[0xAB0])) - 1963507600 - 2 * ((v34 ^ v9 ^ LODWORD(STACK[0xAB0])) & 0xAF74073 ^ (v34 ^ v9) & 3);
  LODWORD(v10) = v31 ^ (v30 - ((2 * v30) & 0x6B87949C) - 1245459890);
  v41 = ((2 * (v40 ^ (v19 - 80380849))) & 0xFEFFD3D2 ^ 0x14EE80C0) + (v40 ^ (v19 - 80380849) ^ 0xF588A999);
  LODWORD(v19) = ((2 * v40) & 0xFBA1F6DA ^ 0x4821F442) + (v40 ^ 0x59C7015E);
  v42 = v12 ^ v33 ^ v10;
  LODWORD(v12) = v37 ^ (v2 - 502063453) ^ 0x1C4B2DBB;
  v43 = 2139086702 - v41 + ((v41 - 2139089385) ^ 0xCD748009 ^ v39);
  v44 = (v37 ^ 0xB2AB97F8) - 561638572;
  v45 = ((2 * (v12 + v44)) & 0xFA91FBBC) + ((v12 + v44) ^ 0xFD48FDDE);
  v46 = ((2 * v44) & 0x7FEBFF7E) + (v44 ^ 0x3FF5FFBF);
  v47 = ((2 * ((v45 + 45548066) ^ (v46 - 1073086399))) & 0xFD67FF36) + ((v45 + 45548066) ^ (v46 - 1073086399) ^ 0xFEB3FF9B);
  v48 = (v9 + (v5 ^ 0x4034F624) - 1963507600 - ((2 * (v9 + (v5 ^ 0x4034F624))) & 0x15EE80E0)) ^ v40;
  v49 = v40 ^ 0xE9637A3A ^ v39;
  v50 = (v38 ^ (v2 - 502063453) ^ v39 ^ 0xEA20C80A) - (v38 ^ (v2 - 502063453) ^ 0x27544803);
  v51 = v19 - 1854131423;
  LODWORD(v25) = v25 - v45;
  v52 = v41 + v19 - 1854131423;
  v53 = v36 ^ (v42 - (v33 ^ v10 ^ 0xE9C96C8));
  v54 = ((2 * ((v52 + 1337522909) ^ (v19 + 1622480871))) & 0x8FFCF3C4) + ((v52 + 1337522909) ^ (v19 + 1622480871) ^ 0xC7FE79E2);
  v55 = v50 ^ (v43 + 2683) ^ (v49 - v19 + 2110847853);
  LODWORD(v9) = v9 ^ 0xF415A38C;
  v56 = 4 * ((v8 ^ 0x3D3BEFFBFBB7C75FLL) + ((2 * v8) & 0x1F76F8EBELL)) + 0xB1040101120E284;
  LODWORD(v19) = v48 - v52;
  v57 = 4 * v8;
  v58 = 4 * v8 + 36;
  v59 = v9 + v41;
  LODWORD(v8) = v9 + LODWORD(STACK[0xBC8]);
  LODWORD(v9) = (*(&STACK[0xC0A0] + v56) ^ 0xEE782001) + (*(&STACK[0xC0A0] + v58) ^ 0x1187DFFE) + v53;
  v60 = LODWORD(STACK[0xBC0]) ^ 0xE85E8E37;
  v61 = v60 + v12 - v47;
  LODWORD(v9) = v55 - v8 + v9 + 1670342878;
  LODWORD(v8) = v61 + 1719288940;
  v62 = v46 - (v61 + 1719288940);
  v63 = v10 ^ 0xE9C96C8;
  v64 = v62 + v25;
  LODWORD(v25) = v9 - 993570936 - ((2 * v9) & 0x898E9F10);
  LODWORD(v10) = v59 - v54 + 1664446442;
  LODWORD(v9) = v51 + 1056829310 - v10;
  v65 = STACK[0xB50];
  v66 = v60 + v28 + (*(&STACK[0xE0E0] + v56) ^ 0xEE782001) + (*(&STACK[0xE0E0] + v58) ^ 0x1187DFFE);
  v67 = v57 + 64;
  v68 = v66 + v63 + 1682740107 + (v38 ^ 0x89B4F240) - ((2 * (v66 + v63 + 1682740107 + (v38 ^ 0x89B4F240))) & 0x71947338) + 952777116;
  LODWORD(v57) = ((2 * v68) & 0x1C307940 ^ 0x10107100) + (v68 ^ 0x36D2053C);
  v69 = v57 & 0x6E78200B ^ (v68 ^ 0x36D2053C) & 0xA;
  v70 = (v68 ^ 0xC735C663) - 825210180 - ((2 * (v68 ^ 0xC735C663) + 2) & 0x9DA09578) + 1;
  v61 -= 1099665904;
  *(&STACK[0xC0A0] + v67) = (v25 ^ 0xC4C74F88) + 490838959 - ((2 * (v25 ^ 0xC4C74F88) + 1569912668) & 0xDCF04002);
  v71 = STACK[0xBB8];
  LODWORD(v19) = v19 + v9;
  v72 = ((v61 ^ 0xCED04ABC ^ v70) - 993570936 - ((2 * (v61 ^ 0xCED04ABC ^ v70)) & 0x898E9F10)) ^ v25;
  v73 = v61 ^ 0xC4C74F88 ^ (v64 + 1700320379) ^ v25;
  LODWORD(v25) = (((v64 + 1700320379) ^ 0xCED04ABC ^ v70) - 993570936 - ((2 * ((v64 + 1700320379) ^ 0xCED04ABC ^ v70)) & 0x898E9F10)) ^ v25;
  v74 = (v59 - v54 + 138346094) ^ 0xCED04ABC ^ (v19 - 1686606873) ^ v70;
  LODWORD(v12) = ((v72 - v10 + 1526100348) ^ (v9 - 349083964) ^ (v25 - (v19 - 223485822) + 1463121051)) - ((2 * ((v72 - v10 + 1526100348) ^ (v9 - 349083964) ^ (v25 - (v19 - 223485822) + 1463121051))) & 0x6F06D960) - 1216123728;
  *(&STACK[0xE0E0] + v67) = v57 - 294117375 - 2 * v69;
  v75 = ((2 * (v62 - (v47 + 836554599) - 934888781)) & 0xFE5FBF78) + ((v62 - (v47 + 836554599) - 934888781) ^ 0x7F2FDFBC);
  v76 = v54 + 1056829310 + v19 - 223485822 - ((2 * (v54 + 1056829310 + v19 - 223485822) + 609229282) & 0x2D18AB9C) - 2001444161;
  LODWORD(STACK[0xAE0]) = v76;
  LODWORD(v9) = v9 + v19 - 223485822 - 1812205014 + (v76 ^ 0xE973AA31);
  v77 = ((v73 - v74) ^ (v62 + 1745868445)) - 1731608869 - ((2 * ((v73 - v74) ^ (v62 + 1745868445))) & 0x31937DB6);
  v78 = *(STACK[0xAF0] + 4 * (v12 ^ 0x34u));
  LOBYTE(v69) = *(v71 + (((v12 >> 5) & 0xF8 | (v12 >> 13)) ^ 0x4ELL));
  v79 = v9 + LODWORD(STACK[0xAB0]) - ((2 * v9) & 0x5369BE60);
  LODWORD(v25) = *(STACK[0xAF0] + 4 * ((27 * ((*(STACK[0xB98] + (((v12 >> 12) & 0xF0 | (v12 >> 20) & 0xF) ^ 0x55)) - 10) ^ 0x10)) ^ 0x65u));
  HIDWORD(v16) = v78 ^ 0x66666666;
  LODWORD(v16) = v78 ^ 0xA8324C00;
  LODWORD(v9) = v16 >> 8;
  LODWORD(v12) = *(STACK[0xA80] + 4 * (BYTE3(v12) ^ 0xD3));
  HIDWORD(v16) = v12 ^ 0xB195;
  LODWORD(v16) = v12 ^ 0x6CA60000;
  *(&STACK[0x4B00] + v67) = *(STACK[0xAF0] + 4 * ((33 * ((v69 - 106) ^ 0x15)) ^ 0xA3u)) ^ (((v16 >> 16) ^ v9) + 395068901 - ((2 * ((v16 >> 16) ^ v9)) & 0x2F188BCA)) ^ 0x6627CF2A ^ (*(v65 + (((BYTE3(v25) ^ 0xCC) - 43) ^ 0x96)) ^ 0x23 | (v25 << 8));
  v80 = STACK[0xB58];
  LODWORD(v25) = *(STACK[0xB58] + 4 * (v77 ^ 0x23u));
  LODWORD(STACK[0xBC8]) = ((v10 + 638239495 + (v79 ^ 0x564B20CF)) ^ 0xB7DFDFF2) + 1802499936 + ((2 * (v10 + 638239495 + (v79 ^ 0x564B20CF))) & 0x6FBFBFE4);
  LODWORD(v25) = v25 + 533632306;
  HIDWORD(v16) = v25 ^ 0x43;
  LODWORD(v16) = v25 ^ 0xE087AF00;
  LODWORD(v25) = v16 >> 8;
  LODWORD(v9) = *(STACK[0xB38] + 4 * (BYTE2(v77) ^ 0x87u));
  HIDWORD(v16) = v9 ^ 0x415FFE;
  LODWORD(v16) = v9 ^ 0x7000000;
  LODWORD(v9) = v16 >> 24;
  HIDWORD(v16) = *(STACK[0xBB0] + (((v77 >> 1) & 0x80 | (v77 >> 9)) ^ 0xC0));
  LODWORD(v16) = (HIDWORD(v16) ^ 0x4E) << 24;
  LOBYTE(v12) = v16 >> 25;
  v81 = *(v80 + 4 * (HIBYTE(v77) ^ 0x7B)) + 533632306;
  HIDWORD(v16) = v81 ^ 0xAC2A;
  LODWORD(v16) = v81 ^ 0xC1050000;
  LODWORD(v25) = v9 ^ (v25 + 883439725 - ((2 * v25) & 0x695070DA));
  LODWORD(v9) = *(STACK[0xB38] + 4 * (((v12 ^ 0xF2) + 70) ^ 0xA5u));
  v82 = STACK[0xBD0];
  LODWORD(STACK[0xAE8]) = -982368124 - v47;
  LODWORD(v9) = v9 ^ v25 ^ (v16 >> 16) ^ 0x846F72AB;
  LODWORD(STACK[0xB68]) = v75 - 1507559024;
  LODWORD(v25) = v8 - v75 + 1479228898;
  *(&STACK[0x3E50] + v67) = v9;
  v83 = *(STACK[0xBD8] + 8 * ((15467 * (v82 == 161885372)) ^ v6));
  LODWORD(STACK[0xBC0]) = v25 ^ 0x1C4B2DBB;
  return v83();
}

uint64_t sub_244BB6D90@<X0>(int a1@<W2>, int a2@<W3>, int a3@<W8>)
{
  STACK[0xBD0] = 0;
  v6 = STACK[0xA90] - 11;
  LODWORD(STACK[0xB60]) = v6;
  v7 = v6 ^ 0xB5575FC8;
  v8 = STACK[0xB68];
  v9 = a1 - ((v7 + 2 * LODWORD(STACK[0xB68])) & 0xE224B362) + 1910667765;
  LODWORD(STACK[0xAF0]) = v9;
  v10 = ((2 * (v9 ^ (a2 + 86110309))) & 0xFD5DEBF6 ^ 0xE004A362) + (v9 ^ (a2 + 86110309) ^ 0x8FBCAC4A);
  v11 = (LODWORD(STACK[0xAE8]) - a1 - 1558267734) ^ (a1 + 1558267734);
  v12 = v11 + 1539491408 - ((2 * v11) & 0xB7858CA0);
  LODWORD(STACK[0xAF8]) = v12;
  v13 = v12 ^ 0x5BC2C650;
  v14 = ((2 * ((v12 ^ 0x5BC2C650) - 2125395451 + v10)) & 0xFFE773FE) + (((v12 ^ 0x5BC2C650) - 2125395451 + v10) ^ 0x7FF3B9FF);
  v15 = v8 - v14;
  v16 = 2 * (v8 - v14);
  v17 = STACK[0x9A8];
  v18 = (LODWORD(STACK[0x9A8]) + 57772356) & 0x398C942F ^ STACK[0xA08] & 4;
  v19 = v4 + (v9 ^ 0xEEDA64E) - v10 + 2125395452 - ((2 * (v4 + (v9 ^ 0xEEDA64E) - v10 + 2125395452)) & 0x23D2C80A) + 300508165;
  LODWORD(STACK[0xAB0]) = v19;
  LODWORD(STACK[0xA88]) = v8 - v14;
  v20 = ((v13 - v15 - 917538757) ^ 0x4FFEDFBF) - 1342103487 + ((2 * (v13 - v15 - 917538757)) & 0x9FFDBF7E);
  v21 = v20 ^ v19 ^ (v8 - v14 - ((v16 + 746570230) & 0x23D2C80A) - 936819456);
  v22 = v21 + 1797329532 - ((2 * v21) & 0xD64224F8);
  v23 = (v22 ^ 0x6B21127C) + v20 - 170096466 - ((2 * ((v22 ^ 0x6B21127C) + v20)) & 0xEBB9115C);
  v24 = (LODWORD(STACK[0x9C8]) ^ 0x7647EC67) - ((2 * (LODWORD(STACK[0x9C8]) ^ 0x7647EC67) + 2) & 0x295D692A) + 346993814;
  v25 = v24;
  LODWORD(STACK[0xB58]) = v24;
  v26 = v23;
  LODWORD(STACK[0xA04]) = v23;
  v27 = (v24 ^ 0xE1723C3B ^ v23) + 1035739824 - ((2 * (v24 ^ 0xE1723C3B ^ v23)) & 0x7B784560);
  v28 = ((2 * ((v3 ^ 0xA9B4DF30) - 602855662)) & 0xE6FDBAF2) + (((v3 ^ 0xA9B4DF30) - 602855662) ^ 0x737EDD79);
  LODWORD(STACK[0xAD0]) = v5 ^ 0x4034F624;
  v29 = ((v5 ^ 0x4034F624) + 1937694073 - v28) ^ (v28 - 1937694073);
  v30 = v29 + 361534117 - ((2 * v29) & 0x2B19254A);
  LODWORD(STACK[0xAB8]) = v30;
  LODWORD(STACK[0xAA8]) = v3;
  v31 = ((2 * (v3 ^ LODWORD(STACK[0xAE0]))) & 0x7D3CFFEE ^ 0x7C3015EC) + (v3 ^ LODWORD(STACK[0xAE0]) ^ 0x1A6F509);
  v32 = ((2 * (v31 + 1096908809 + (v30 ^ 0x158C92A5))) & 0xDB70ABB6) + ((v31 + 1096908809 + (v30 ^ 0x158C92A5)) ^ 0x6DB855DB);
  LODWORD(STACK[0xA08]) = v30 ^ 0x158C92A5;
  v33 = a3 + LODWORD(STACK[0xBC8]) - v31 + 351055564 - ((2 * (a3 + LODWORD(STACK[0xBC8]) - v31 - 1689343834)) & 0xF33C0C4C);
  LODWORD(STACK[0xA80]) = v33;
  v34 = (((v30 ^ 0x158C92A5) + 96893481 - (v28 - v32) + 3445) ^ 0xFDBBF7DB) + 38012965 + ((2 * ((v30 ^ 0x158C92A5) + 96893481 - (v28 - v32) + 3445)) & 0xFB77EFB6);
  LODWORD(STACK[0xB38]) = v28 - v32;
  v35 = v28 - v32 - ((2 * (v28 - v32) + 1938924336) & 0x68BF0B96) - 1373087901;
  v36 = v34 ^ v33 ^ v35;
  v37 = ((2 * ((v36 ^ 0x4DC183ED) + v34)) & 0xFFE6BDDE) + (((v36 ^ 0x4DC183ED) + v34) ^ 0x7FF35EEF);
  v38 = LODWORD(STACK[0x7A8]) - ((2 * LODWORD(STACK[0x7A8]) + 379227306) & 0x7B784560) + 1225353477;
  LODWORD(STACK[0xA30]) = v38;
  LODWORD(STACK[0x9D0]) = v37;
  v39 = (2146655983 - v37 + (v27 ^ v38)) ^ ((v38 ^ 0x54721CAE ^ ((v25 ^ 0x2BFDBA47 ^ v22) + 1035739824 - ((2 * (v25 ^ 0x2BFDBA47 ^ v22)) & 0x7B784560))) - (v36 ^ 0x4DC183ED));
  LODWORD(STACK[0xB68]) = v39 - ((2 * v39) & 0x68BF0B96);
  v40 = v15 - ((v16 + 1820312054) & 0xEB1E4418) - 1412496633;
  LODWORD(STACK[0xA40]) = v40;
  v41 = ((2 * v40) & 0x92FDA654 ^ 0x82ED2044) + (v40 ^ 0xAC896F58);
  v42 = (v22 ^ 0xCB0B0502) - v41;
  v43 = (v26 ^ 0xF5DC88AE) - v42 - 731999941 - ((2 * ((v26 ^ 0xF5DC88AE) - v42 - 731999941) + 1544154744) & 0xF56AAF20);
  v44 = LODWORD(STACK[0x98C]) - ((2 * LODWORD(STACK[0x98C]) + 784742454) & 0x2D920F64) + 1848386509;
  LODWORD(STACK[0x9E0]) = v44;
  LODWORD(STACK[0x9D8]) = v42 - 914435286;
  LODWORD(STACK[0xAA0]) = (v44 ^ 0x96C907B2 ^ (v42 - 914435286)) + 2058704784 - ((2 * (v44 ^ 0x96C907B2 ^ (v42 - 914435286))) & 0xF56AAF20);
  LODWORD(STACK[0xAE0]) = v35;
  v45 = ((2 * v35) & 0xDFDBBBEA ^ 0x484A336A) + (v35 ^ 0xCBCAC640);
  v46 = (LODWORD(STACK[0x9B0]) ^ 0x9A098647) + 1128624313 - ((2 * (LODWORD(STACK[0x9B0]) ^ 0x9A098647) + 2) & 0x868AE172);
  LODWORD(STACK[0x9E8]) = v36;
  v47 = (v36 ^ 0xEDEB9493) - v45;
  LODWORD(STACK[0xAD8]) = (v46 + 1) ^ 0x434570B9 ^ (v47 + 1877859829);
  v48 = v36 ^ ((v30 ^ 0x158C92A5 ^ (v32 - 1840797147)) - 1402990197);
  v49 = ((2 * v48) & 0x7DBE7314 ^ 0x3DA01304) + (v48 ^ 0xE10FF61D);
  LODWORD(STACK[0xA70]) = v5;
  v50 = (LODWORD(STACK[0x9A0]) ^ 0x1AE295FB) - 1420140886 - ((2 * (LODWORD(STACK[0x9A0]) ^ 0x1AE295FB) + 2) & 0x56B4BD54);
  v51 = v22 ^ ((v13 ^ (v14 - 2146679295)) - 1402990197);
  v52 = ((2 * v51) & 0x3D7AF7DE ^ 0x3060B40C) + (v51 ^ 0xE78D25E9);
  v53 = ((2 * v51) & 0xBEFDBCEE ^ 0xEC8880) + (v51 ^ 0x5F88BA3F);
  LODWORD(STACK[0xA60]) = v53;
  v54 = v42 + v52 - v53 + 730361025 - ((2 * (v42 + v52 - v53 + 730361025) - 1116761630) & 0x80019344) + 515412627;
  v55 = v43 + 683298508;
  v56 = (v52 - 515734511 + ((v43 + 683298508) ^ 0x7AB55790)) ^ (v42 + v52 - 1430169797);
  v57 = v56 - 1256837040 - ((2 * v56) & 0x6A2C60A0);
  v58 = ((2 * ((v57 ^ 0xB5163050) - 2 * v53 + 1380690123)) & 0xFBFF74D8) + (((v57 ^ 0xB5163050) - 2 * v53 + 1380690123) ^ 0xFDFFBA6C);
  v59 = v17 - 2 * v18 + 2097028463;
  ++v50;
  v60 = (v54 ^ 0xCD6BDFEE) - ((2 * (v54 ^ 0xCD6BDFEE) + 492603866) & 0x4FD27EF4) + 1989641319;
  LODWORD(STACK[0xA78]) = v59 ^ v60 ^ 0x1E65AB51 ^ (v58 + 33572244);
  LODWORD(STACK[0xA48]) = v50 ^ 0xAB5A5EAA;
  v61 = ((v47 + v49 + 823043179) ^ (v49 + 488760627 + v37 - v47)) - 1457333402 - ((2 * ((v47 + v49 + 823043179) ^ (v49 + 488760627 + v37 - v47))) & 0x5245B6CC);
  v62 = ((2 * v48) ^ 0xB3D2144D) - 1823609890 + (v61 ^ 0xA922DB66);
  v63 = ((2 * v62) & 0xCFF9637E) + (v62 ^ 0xE7FCB1BF);
  v64 = v47 + v49 + (v48 ^ 0x59E90A26) - 1760527246 - ((2 * (v47 + v49 + (v48 ^ 0x59E90A26) - 1760527246) + 66867188) & 0xA8391DC) + 524284136;
  LODWORD(STACK[0xA58]) = v64 ^ 0x882ADEA2;
  LODWORD(STACK[0xA38]) = (-402869825 - v63 + (((v50 ^ 0xAB5A5EAA ^ (v58 + 33572244)) - 1181969365 - ((2 * (v50 ^ 0xAB5A5EAA ^ (v58 + 33572244))) & 0x73192856)) ^ v59)) ^ ((((v60 ^ v50 ^ 0xCB361D0) - 1181969365 - 2 * ((v60 ^ v50 ^ 0xCB361D0) & 0x398C942F ^ (v60 ^ v50) & 4)) ^ v59) - (v64 ^ 0x882ADEA2) + 827439891);
  v65 = v37 - v47 + 1543577277;
  v66 = LODWORD(STACK[0xAD8]) ^ v65;
  v67 = v45 + (v48 ^ 0xB23E7C12) - ((2 * (v45 + (v48 ^ 0xB23E7C12)) + 539247640) & 0x72D3F42E) + 1232870435;
  LODWORD(STACK[0xA68]) = v67;
  v68 = (v65 ^ 0xB969FA17 ^ v67) + 392548654 - ((2 * (v65 ^ 0xB969FA17 ^ v67)) & 0x2ECBA25C);
  LODWORD(STACK[0x9F0]) = (v64 ^ 0x882ADEA2) - 827439891;
  LODWORD(STACK[0xA54]) = (v68 ^ v64 ^ ((v64 ^ 0x882ADEA2) - 827439891) ^ 0x922419C0) + 925664704 - 2 * ((v68 ^ v64 ^ ((v64 ^ 0x882ADEA2) - 827439891) ^ 0x922419C0) & 0x372C85C6 ^ (v68 ^ v64 ^ ((v64 ^ 0x882ADEA2) - 827439891)) & 6);
  v69 = LODWORD(STACK[0x998]) - ((2 * LODWORD(STACK[0x998]) + 640930644) & 0x754C174A) - 843057841;
  v70 = -1604183779 - LODWORD(STACK[0xA10]) - ((143262752 - 2 * LODWORD(STACK[0xA10])) & 0x383A2E1A);
  v71 = (v51 ^ 0x94DEED83) + v41 - ((2 * ((v51 ^ 0x94DEED83) + v41) + 755128750) & 0x20846FAC) + 1187210413;
  LODWORD(STACK[0xAD8]) = v55 ^ v71 ^ 0xE5F8637A ^ ((v57 ^ ((v69 ^ 0xFAA6C207 ^ v54) - 1256837040 - ((2 * (v69 ^ 0xFAA6C207 ^ v54)) & 0x6A2C60A0))) - (((v64 ^ v70 ^ 0x195CDFE3) - 1457333402 - 2 * ((v64 ^ v70 ^ 0x195CDFE3) & 0x2922DB7E ^ (v64 ^ v70) & 0x18)) ^ v61));
  v72 = v55 ^ v71 ^ v54;
  LODWORD(STACK[0xAA0]) = v71 ^ 0xD54CDB2F ^ ((v55 ^ LODWORD(STACK[0xAA0])) - v66);
  v73 = (((LODWORD(STACK[0xA30]) ^ 0x2EF2C62 ^ v22) - 170096466 - ((2 * (LODWORD(STACK[0xA30]) ^ 0x2EF2C62 ^ v22)) & 0xEBB9115C)) ^ 0x54721CAE ^ LODWORD(STACK[0xA04])) - (LODWORD(STACK[0xB58]) ^ LODWORD(STACK[0x9E8]) ^ 0x596F3778 ^ (LODWORD(STACK[0x9D0]) - 2146655983));
  LODWORD(STACK[0xB58]) = LODWORD(STACK[0xA40]) ^ 0x6DC16BB7 ^ (v73 - ((2 * v73) & 0xEB1E4418) - 175169012);
  v74 = 1419712290 - LODWORD(STACK[0x984]) - ((-810974452 - 2 * LODWORD(STACK[0x984])) & 0xD994AB38);
  v75 = STACK[0xAB0];
  v76 = LODWORD(STACK[0x740]) - ((2 * LODWORD(STACK[0x740]) + 809789038) & 0x292B0AAC) - 860374899;
  v77 = STACK[0xA80];
  v78 = STACK[0xAF8];
  v79 = (LODWORD(STACK[0xB38]) - 96896926) ^ ((((LODWORD(STACK[0xAF8]) ^ v74 ^ 0xB70893CC) - 1802140330 - 2 * ((LODWORD(STACK[0xAF8]) ^ v74 ^ 0xB70893CC) & 0x14958557 ^ (LODWORD(STACK[0xAF8]) ^ v74) & 1)) ^ v76) - LODWORD(STACK[0xA08])) ^ ((((v74 ^ 0xFD233199 ^ LODWORD(STACK[0xAB0])) - 1802140330 - ((2 * (v74 ^ 0xFD233199 ^ LODWORD(STACK[0xAB0]))) & 0x292B0AAC)) ^ v76) - (LODWORD(STACK[0xA80]) ^ 0x799E0626));
  LODWORD(STACK[0xB38]) = v79 - 988877575 - ((2 * v79) & 0x8A1DD9F2);
  v80 = ((((v76 ^ 0x857CE153 ^ v75) + 1539491408 - ((2 * (v76 ^ 0x857CE153 ^ v75)) & 0xB7858CA0)) ^ v78) - (((v74 ^ 0x955453BA ^ v77) + 361534117 - ((2 * (v74 ^ 0x955453BA ^ v77)) & 0x2B19254A)) ^ LODWORD(STACK[0xAB8]))) ^ (LODWORD(STACK[0xA88]) + 917538757);
  LODWORD(STACK[0xAF8]) = v80 + 1639459800 - ((2 * v80) & 0xC37057B0);
  v81 = LODWORD(STACK[0x9C4]) - ((2 * LODWORD(STACK[0x9C4]) + 151243812) & 0x4F27FD1A) - 334109537;
  v82 = STACK[0xBC0];
  v83 = STACK[0xAE8];
  v84 = -100010837 - LODWORD(STACK[0xA18]) - ((655507376 - 2 * LODWORD(STACK[0xA18])) & 0xCD01A9A6);
  v85 = STACK[0xBC8];
  LODWORD(STACK[0xA80]) = ((LODWORD(STACK[0xAE8]) ^ 0xCEB0E925 ^ ((LODWORD(STACK[0xBC0]) ^ v81 ^ 0xD998AA83) + 753963152 - 2 * ((LODWORD(STACK[0xBC0]) ^ v81 ^ 0xD998AA83) & 0x2CF09098 ^ (LODWORD(STACK[0xBC0]) ^ v81) & 8))) - (((v84 ^ 0xE680D4D3 ^ (LODWORD(STACK[0xBC8]) - 592435026)) + 1077212708 - ((2 * (v84 ^ 0xE680D4D3 ^ (LODWORD(STACK[0xBC8]) - 592435026))) & 0x8069EC48)) ^ LODWORD(STACK[0xA70]))) ^ LODWORD(STACK[0xAF0]) ^ 0x90AA7269;
  LODWORD(STACK[0xA88]) = ((v81 ^ 0x54721CAE ^ ((v84 ^ 0xB2F2C87D ^ v83) + 664010381 - ((2 * (v84 ^ 0xB2F2C87D ^ v83)) & 0x4F27FD1A))) - LODWORD(STACK[0xAD0])) ^ LODWORD(STACK[0xAA8]) ^ 0x6CBA33C9 ^ ((v81 ^ 0xE24079B5 ^ ((v82 ^ v84 ^ 0x188B80DD) + 664010381 - 2 * ((v82 ^ v84 ^ 0x188B80DD) & 0x2793FEAD ^ (v82 ^ v84) & 0x20))) + 592435026 - v85);
  v86 = ((2 * ((v48 ^ 0xA616F5D9) - 555243495)) & 0xE99DF7EE) + (((v48 ^ 0xA616F5D9) - 555243495) ^ 0xF4CEFBF7);
  v87 = LODWORD(STACK[0xA78]) - (LODWORD(STACK[0xA48]) ^ LODWORD(STACK[0x9F0]) ^ (v63 + 402869825));
  LODWORD(STACK[0xAD0]) = v72 ^ v60 ^ 0xAB5A377 ^ (v87 - ((2 * v87) & 0xEB4F711A) + 1973926029);
  v88 = LODWORD(STACK[0xA38]) + 925664704 - ((2 * LODWORD(STACK[0xA38])) & 0x6E590B80);
  v89 = LODWORD(STACK[0xA60]) - 9909854;
  v90 = ((2 * ((v72 ^ v60 ^ 0x73C2BDEB) + v89)) & 0xFFE5EFFE) + (((v72 ^ v60 ^ 0x73C2BDEB) + v89) ^ 0x7FF2F7FF);
  v91 = ((2 * ((v60 ^ 0xA7E93F7A) - 33572244 - v58)) & 0xD4EDFCDC) + (((v60 ^ 0xA7E93F7A) - 33572244 - v58) ^ 0x6A76FE6E);
  v92 = v58 - ((2 * v58 + 233726858) & 0xA328E274) - 661937409;
  v93 = (v91 - 1786183278) ^ v89;
  v94 = (v92 ^ (v91 - 1157262463) ^ 0x5194713A) - 1409448151 - ((2 * (v92 ^ (v91 - 1157262463) ^ 0x5194713A)) & 0x57FB0E52);
  v95 = STACK[0xA54];
  v96 = LODWORD(STACK[0xA58]) - v63;
  v97 = (LODWORD(STACK[0xA54]) ^ 0x49F0AEB5) + v86;
  v98 = (v96 - 1230309716) ^ (v86 + 187761673);
  v99 = v63 - ((2 * v63 + 435451108) & 0x1B303E4A) + 714234263;
  v100 = ((2 * (v99 ^ (v96 - 601388901))) & 0xFFF7F9E4 ^ 0x1B303840) + (v99 ^ (v96 - 601388901) ^ 0x7263E3D7);
  v101 = -1699204662 - LODWORD(STACK[0xA20]) - ((1365073102 - 2 * LODWORD(STACK[0xA20])) & 0x641306C6);
  v102 = v97 - v96 - ((2 * (v97 - v96) + 1578301148) & 0xB5BB0440) + 166133134;
  LODWORD(STACK[0xAF0]) = v102 ^ (((((v91 - 1157262463) ^ v101 ^ 0xB2098363) + 1255525121 - 2 * (((v91 - 1157262463) ^ v101 ^ 0xB2098363) & 0x4AD5CB09 ^ ((v91 - 1157262463) ^ v101) & 8)) ^ LODWORD(STACK[0x9B8])) - v96 + 601388901) ^ 0x2B0EAA69 ^ ((((v101 ^ 0x19F4044A ^ v94) + 1255525121 - ((2 * (v101 ^ 0x19F4044A ^ v94)) & 0x95AB9602)) ^ LODWORD(STACK[0x9B8])) - v100 - 262926);
  v103 = v93 - v90;
  v104 = LODWORD(STACK[0xB68]) + 878675403;
  LODWORD(STACK[0xAB0]) = LODWORD(STACK[0x940]) + 1285274090;
  v105 = v103 - 224429733;
  v106 = v103 - v91 - 875317652;
  v107 = ((2 * (v100 + 262927 + (v102 ^ 0x25227DDF))) & 0xFE977BB6) + ((v100 + 262927 + (v102 ^ 0x25227DDF)) ^ 0x7F4BBDDB);
  v108 = v98 - v97;
  v109 = v107 + v96;
  v110 = v109 + 1557908160;
  v111 = v109 - v108;
  LODWORD(STACK[0xBC0]) = (v102 ^ 0xDADD8220 ^ v110) + v111 + 1518933082 - 2072084323;
  LODWORD(STACK[0xB68]) = v108 - 1957839294;
  LODWORD(STACK[0xAB8]) = v107 - v111 - 1540528219;
  LODWORD(STACK[0xA78]) = LODWORD(STACK[0xAE0]) ^ 0xE2BE3CE6 ^ v104;
  LODWORD(STACK[0xAE8]) = v95 ^ 0x8F0F033C ^ v88;
  LODWORD(STACK[0xAA8]) = -1518933082 - v111;
  LODWORD(STACK[0xAE0]) = 1957839294 - v108;
  v112 = *(STACK[0xBD8] + 8 * STACK[0xA90]);
  STACK[0xBC8] = 0x100000000;
  STACK[0xA08] = *(&off_278E1E490 + (LODWORD(STACK[0xB60]) ^ 0x13E9));
  return v112(v105, v106);
}

uint64_t sub_244BB840C(int a1, int a2, uint64_t a3, int a4, int a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0xA60]) = v10;
  LODWORD(STACK[0xA68]) = v7;
  v13 = STACK[0xB60];
  v14 = LODWORD(STACK[0xB60]) + 1188;
  LODWORD(STACK[0xA30]) = v14;
  v15 = STACK[0xB40];
  v16 = *(STACK[0xB40] + 4 * (v7 ^ 0xE4u));
  HIDWORD(v18) = v14 ^ 0xA8 ^ v16;
  LODWORD(v18) = v16 ^ 0xAC6E4E00;
  v17 = v18 >> 8;
  v19 = STACK[0xB10];
  v20 = *(STACK[0xB10] + 4 * (BYTE1(v7) ^ 9u));
  HIDWORD(v18) = v20 ^ 0x2424B;
  LODWORD(v18) = v20 ^ 0x48A00000;
  v21 = v18 >> 20;
  v22 = *(STACK[0xB10] + 4 * (BYTE2(v7) ^ 0x37u));
  HIDWORD(v18) = v22 ^ 0x2424B;
  LODWORD(v18) = v22 ^ 0x48A00000;
  v23 = v18 >> 20;
  v24 = *(STACK[0xB10] + 4 * (HIBYTE(v7) ^ 0x69));
  HIDWORD(v18) = v24 ^ 0x2424B;
  LODWORD(v18) = v24 ^ 0x48A00000;
  v26 = v18 >> 20;
  HIDWORD(v18) = v26 ^ 0xE6B2;
  LODWORD(v18) = v26 ^ 0xA17A0000;
  v27 = v18 >> 16;
  v28 = v21 ^ v17;
  v29 = v12;
  v30 = STACK[0xAF0];
  v31 = STACK[0xAE8];
  v32 = STACK[0xAD8];
  LODWORD(STACK[0xAE8]) = STACK[0xAD8];
  v33 = *(v15 + 4 * (v32 ^ 0xD0u));
  HIDWORD(v18) = v33 ^ 0xF4;
  LODWORD(v18) = v33 ^ 0x2C4C4F00;
  v34 = v18 >> 8;
  v35 = v28 ^ v27;
  v36 = *(v15 + 4 * (BYTE2(v32) ^ 0xC9u));
  HIDWORD(v18) = v36 ^ 0xDCDE8;
  LODWORD(v18) = v36 ^ 0x4C000000;
  v37 = v18 >> 24;
  v38 = STACK[0xBB8];
  v39 = *(v19 + 4 * ((33 * ((*(STACK[0xBB8] + (((v32 >> 21) & 0xF8 | (v32 >> 29)) ^ 0xD7)) - 106) ^ 0x15)) ^ 0x74u));
  HIDWORD(v18) = v39 ^ 0x2424B;
  LODWORD(v18) = v39 ^ 0x48A00000;
  v40 = v18 >> 20;
  v41 = (33 * ((LOBYTE(STACK[0xB88]) - 117 * *(STACK[0xB78] + (((v23 >> 21) & 0xF8 | (~v23 >> 29)) ^ 0xE3))) ^ 0x7E)) | (v23 << 8);
  HIDWORD(v18) = v40 ^ 0xE555;
  LODWORD(v18) = v40 ^ 0x61050000;
  v42 = v37 ^ *(v15 + 4 * (BYTE1(v32) ^ 0x57u)) ^ (v34 - 411852407 - ((2 * v34) & 0xCEE74312));
  v43 = v7 ^ v8;
  LODWORD(STACK[0xA40]) = a7;
  LODWORD(STACK[0xA48]) = a7 ^ 0xBA784F35;
  v44 = v35 ^ v41;
  v45 = STACK[0xAD0];
  LODWORD(STACK[0xA70]) = STACK[0xAD0];
  v46 = a7 ^ (v45 ^ 0xCD0A611) & (v32 ^ 0xF1D32849) ^ (a7 ^ 0xBA784F35) & (v32 ^ 0xF1D32849) ^ (v30 ^ v31) & v43;
  LODWORD(STACK[0xA10]) = v45 ^ 0xCD0A611;
  LODWORD(STACK[0xA18]) = v43;
  LODWORD(STACK[0xAF0]) = v31;
  LODWORD(STACK[0xA28]) = v31 ^ 0xF1D32849;
  LODWORD(STACK[0xA38]) = v30;
  LODWORD(STACK[0xAD8]) = v30 ^ 0xF1D32849;
  LODWORD(STACK[0xA20]) = v32 ^ 0xF1D32849;
  v47 = (a7 ^ 0xBA784F35 ^ v45 ^ 0xCD0A611) & v43 ^ (v31 ^ 0xF1D32849) & (v32 ^ 0xF1D32849) ^ v30 ^ (v30 ^ 0xF1D32849) & (v32 ^ 0xF1D32849);
  v48 = a1 - ((2 * a1 + 242967052) & 0x3A9E4FBE);
  v49 = v29 - ((2 * v9 + 49978788) & 0xB25CB09A) + 1496209485;
  v50 = ((2 * ((a1 - 415387386) ^ v49)) & 0x356FB33E ^ 0x304CB01A) + ((a1 - 415387386) ^ v49 ^ 0xC39981D2);
  v51 = v9 + 2056714491 + a2;
  v52 = (v48 - 2071144219) ^ v49;
  v53 = LODWORD(STACK[0xB68]) - 1016369129;
  v54 = STACK[0xBC0];
  LODWORD(v19) = LODWORD(STACK[0xBC0]) - 1996146222;
  v55 = ((2 * (v53 ^ v19)) & 0xFBDEBFEC) + (v53 ^ v19 ^ 0x7DEF5FF6);
  v56 = v42 ^ (v18 >> 16);
  v57 = v56 ^ 0x31996E97;
  v56 ^= 0xB4CEDF9u;
  v58 = v56 ^ v53;
  v59 = v19 ^ (a5 + 226736751);
  v60 = v56 ^ v19;
  LODWORD(v19) = LODWORD(STACK[0xBC0]) - ((2 * LODWORD(STACK[0xBC0]) + 1310292172) & 0xAA5541D0) + 2084003150;
  v61 = ((2 * v19) & 0xFF0FE83E ^ 0x5209A820) + (v19 ^ 0xD6DB2BCF);
  v62 = ((v46 ^ 0xBA784F35 ^ (v55 + 608989840)) - v55 - 608989840) ^ ((v19 ^ 0x7C767F38 ^ ((v46 ^ 0xBA784F35) + 1428857065 + ~(2 * ((v46 ^ 0xBA784F35) & 0x552AA0EA ^ v46 & 2)))) - v61 - 7867361) ^ ((v46 ^ 0x37DD1844 ^ v47 ^ (v29 - 1643674988) ^ (v50 + 126089447)) - (v47 ^ (v29 - 1643674988) ^ (v50 + 126089447) ^ 0x8DA55771));
  LODWORD(STACK[0xAD0]) = (v29 - 1643674988) ^ 0x12133312 ^ (((v29 - 1643674988) ^ (v51 + 1001)) - 1852132395 - ((2 * ((v29 - 1643674988) ^ (v51 + 1001))) & 0x233567AA));
  v63 = (a4 ^ 0x18F6E762 ^ v49) - v50;
  LODWORD(v19) = v50 - v63;
  v64 = ((v29 - 1643674988) ^ 0x7C767F38) + 1825316680 + v50 - v63;
  LODWORD(v15) = (v64 ^ 0x1AD1F7FF) - 310445667 + ((2 * v64) & 0x35A3EFFE);
  v65 = v59 - v55;
  v66 = v55 - (v59 - v55);
  v67 = v61 + v66 + 1061222475;
  v68 = LODWORD(STACK[0xAB0]) + (a4 ^ 0x41D8BF2F) - (v59 - v55) + v62;
  v69 = STACK[0xBD0];
  v70 = *(&STACK[0xC0A0] + STACK[0xBD0]);
  STACK[0xBD0] = STACK[0xBD0];
  v71 = v68 + (v70 ^ 0x1187DFFE);
  v72 = STACK[0xBC8];
  v73 = v71 + ((*(STACK[0xA08] + 4 * (v72 ^ 0x20) - 8) + 1315542632) ^ 0x330BDD2B);
  v74 = *(&off_278E1E490 + v13 - 3134) + 4 * (v72 ^ 0x25);
  v75 = LODWORD(STACK[0xAA8]) + 1670772956 + v11 + (v47 ^ 0xF1D32849) + (*(&STACK[0xE0E0] + v69) ^ 0x1187DFFE);
  v76 = STACK[0xAF8];
  LODWORD(STACK[0xA90]) = STACK[0xAF8];
  v77 = STACK[0xA80];
  v78 = STACK[0xB18];
  LODWORD(v72) = *(STACK[0xB18] + 4 * (LODWORD(STACK[0xA80]) ^ 0xBu));
  LODWORD(STACK[0xB68]) = v75 + v63 + (*(v74 - 3) ^ 0xC656C842);
  HIDWORD(v18) = v72 ^ 0x92;
  LODWORD(v18) = v72 ^ 0x893F4100;
  v79 = (v18 >> 8) - 1077749086 - ((2 * (v18 >> 8)) & 0x7F85B544);
  LODWORD(STACK[0xAB0]) = v73 - 499445585 + (v44 ^ 0xFEB4FCFC);
  v80 = *(STACK[0xB20] + 4 * (BYTE2(v77) ^ 0xD1u));
  HIDWORD(v18) = v80 ^ 0xB8AE8B;
  LODWORD(v18) = v80 ^ 0xF8000000;
  v81 = v79 ^ (v18 >> 24);
  v82 = *(STACK[0xB20] + 4 * (HIBYTE(v77) ^ 0x31));
  HIDWORD(v18) = v82 ^ 0xA0CA;
  LODWORD(v18) = v82 ^ 0x305C0000;
  v83 = v18 >> 16;
  LODWORD(v74) = STACK[0xB58];
  v84 = STACK[0xB38];
  v85 = STACK[0xA88];
  v86 = *(v78 + 4 * (LODWORD(STACK[0xA88]) ^ 0x55u));
  HIDWORD(v18) = v86 ^ 0x51;
  LODWORD(v18) = v86 ^ 0x70C35E00;
  v87 = v18 >> 8;
  v88 = (v52 ^ v44 ^ v57) - (v52 ^ v44 ^ 0x3AD5836E);
  v89 = v81 ^ v83;
  LODWORD(v72) = *(STACK[0xB20] + 4 * (BYTE2(LODWORD(STACK[0xA88])) ^ 0xBCu));
  HIDWORD(v18) = v72 ^ 0xD4984D;
  LODWORD(v18) = v72 ^ 0x23000000;
  LODWORD(v72) = v18 >> 24;
  v90 = *(STACK[0xB20] + 4 * ((33 * ((*(v38 + (((LODWORD(STACK[0xA88]) >> 21) & 0xF8 | (LODWORD(STACK[0xA88]) >> 29)) ^ 0xEDLL)) - 106) ^ 0x15)) ^ 0xD1u));
  HIDWORD(v18) = v90 ^ 0xB7C8;
  LODWORD(v18) = v90 ^ 0xD12C0000;
  v91 = LODWORD(STACK[0xAE0]) + 1016369129 + v58;
  v92 = v72 ^ *(v78 + 4 * (BYTE1(LODWORD(STACK[0xA88])) ^ 0xD4u)) ^ (v87 - 1077749086 - ((2 * v87) & 0x7F85B544)) ^ (v18 >> 16);
  LODWORD(v72) = STACK[0xA78];
  LODWORD(STACK[0xA58]) = STACK[0xA78];
  v93 = v72 ^ 0x4A71BBA8;
  v94 = v54 + LODWORD(STACK[0xAB8]);
  LODWORD(STACK[0xA54]) = v74;
  v95 = v91 ^ (1996146222 - v54 + v60);
  LODWORD(STACK[0xB58]) = v84;
  v96 = v84 ^ 0xC50EECF9;
  LODWORD(STACK[0xB38]) = v85;
  v97 = (v76 ^ 0x61B82BD8) & (v77 ^ 0x61B82BD8) ^ (v77 ^ 0x61B82BD8) & (v72 ^ 0x4A71BBA8) ^ (v76 ^ 0x61B82BD8) & (v72 ^ 0x4A71BBA8) ^ (v74 ^ 0xC50EECF9) & (v85 ^ 0xC50EECF9) ^ (v74 ^ v85) & (v84 ^ 0xC50EECF9);
  LODWORD(STACK[0xAF8]) = v77;
  v98 = v89 ^ 0x45C5A8B6 ^ *(v78 + 4 * ((33 * ((*(v38 + (((v77 >> 5) & 0xF8 | (v77 >> 13)) ^ 0x74)) - 106) ^ 0x15)) ^ 0x1Du));
  LODWORD(v72) = (v63 - 1699227233) ^ 0xB1703914;
  v99 = v19;
  v100 = LODWORD(STACK[0xAD0]) + v19;
  LODWORD(v72) = v72 + v15;
  LODWORD(v19) = v100 - 1567244624;
  v101 = v15 + v100 - 1567244624;
  v102 = (v98 ^ (v100 + 1825316681) ^ (v101 - 1041928451)) + 542495697 - ((2 * (v98 ^ (v100 + 1825316681) ^ (v101 - 1041928451))) & 0x40ABA7A2);
  LODWORD(v38) = ((v65 + 2112839670) ^ 0xB1703914) + v67;
  v103 = ((v94 - 41990775) ^ 0x838980C7) + v66;
  LODWORD(v15) = v103 + 178966473;
  v104 = v67 + v103 + 178966473;
  LODWORD(STACK[0xBC0]) = ((v92 ^ 0x6D51A1F7 ^ (v103 - 1503849829)) - (v103 + 178966473) + 1682816302) ^ ((v102 ^ v92 ^ 0x4D047226) - (v102 ^ 0x2055D3D1)) ^ ((v92 ^ 0x6D51A1F7 ^ (v104 + 54946050)) - v104 - 54946050);
  LODWORD(v78) = v72 + 25063707;
  v105 = v101 - (v72 + 25063707);
  v106 = ((2 * ((v105 - 877342284) ^ (v72 + 1465524068))) & 0x95BEB71C) + ((v105 - 877342284) ^ (v72 + 1465524068) ^ 0x4ADF5B8E);
  LODWORD(v72) = v95 ^ v88;
  v107 = v38 - 826852880;
  v108 = v104 - (v38 - 826852880);
  v109 = ((2 * ((v108 + 1785298114) ^ (v38 - 952158416))) & 0xD0F84DBE) + ((v108 + 1785298114) ^ (v38 - 952158416) ^ 0xE87C26DF);
  LODWORD(STACK[0x9E0]) = v85 ^ 0xC50EECF9;
  LODWORD(STACK[0xA04]) = v76 ^ 0x61B82BD8;
  LODWORD(STACK[0x9F0]) = v96;
  LODWORD(STACK[0x9E8]) = v93;
  LODWORD(STACK[0x9D8]) = v77 ^ 0x61B82BD8;
  LODWORD(STACK[0x9D0]) = v74 ^ 0xC50EECF9;
  v110 = v96 & (v77 ^ 0x61B82BD8) ^ (v85 ^ 0xC50EECF9) & v93 ^ v96 & v93 ^ (v74 ^ v85) & (v76 ^ 0x61B82BD8) ^ (v74 ^ 0xC50EECF9) & (v77 ^ 0x61B82BD8);
  v105 -= 273214533;
  LODWORD(v38) = v19 - v105 + v78;
  LODWORD(v19) = v105 - v38;
  v111 = (v38 + 1142182121) ^ v110 ^ (v105 - v38 - 1746309872);
  v112 = v15 - v108 + v107;
  v113 = v108 - v112;
  LODWORD(v74) = (LODWORD(STACK[0xAB0]) ^ 0x22620408) - ((2 * LODWORD(STACK[0xAB0])) & 0xBB3BF7EE);
  LODWORD(v72) = LODWORD(STACK[0xB68]) + v72;
  LODWORD(STACK[0xB68]) = (((v108 - v112 + 1083750770) ^ v97) - (v108 - v112) - 1083750770) ^ (((v112 + 701547344) ^ v97) - v112 - 701547344) ^ ((v97 ^ 0x11EA78F0 ^ (v111 + 300579056 - ((2 * v111) & 0x23D4F1E0))) - ((v111 + 300579056 - ((2 * v111) & 0x23D4F1E0)) ^ 0x11EA78F0));
  v114 = v99;
  LODWORD(v15) = v19 - v99 + v106 - (v38 - v106) - 629370726;
  LODWORD(v15) = ((2 * v15) & 0xFFCBB778) + (v15 ^ 0x7FE5DBBC);
  v115 = ((v38 - v106 - 1896633225) ^ (v99 - 476457871)) - ((2 * ((v38 - v106 - 1896633225) ^ (v99 - 476457871))) & 0x69D328AC);
  LODWORD(v38) = ((2 * v72) & 0xBFFEFFBC) + (v72 ^ 0xDFFF7FDE);
  LODWORD(v72) = v112 - v109;
  v116 = v108 - v112 - v66 + v109 - (v112 - v109) + 681894049;
  v117 = ((2 * v116) & 0xF3DDF6FE) + (v116 ^ 0x79EEFB7F);
  LODWORD(v72) = ((v72 + 307030575) ^ (v66 + 489342915)) - 164632815 - ((2 * ((v72 + 307030575) ^ (v66 + 489342915))) & 0xEC5FCE22);
  v118 = ((2 * (v115 - 1259760554)) & 0xFDFE7DFE ^ 0x39242CCC) + ((v115 - 1259760554) ^ 0x636DE999);
  v119 = v99 - v19;
  v120 = v118 + v118 - v19;
  LODWORD(v72) = ((2 * v72) & 0xD3BFF96C ^ 0x92A94840) + (v72 ^ 0x368B5897);
  v121 = v66 - v113;
  LODWORD(v19) = v72 + v72 - v113;
  LODWORD(v69) = v114 - v118 - ((2 * (v114 - v118) + 190029868) & 0x1B790B96) + 1936086497;
  v122 = STACK[0xAA0];
  LODWORD(v72) = v66 - v72 - ((2 * (v66 - v72) + 339149374) & 0x3875206E) + 643174742;
  v123 = ((LODWORD(STACK[0xA60]) ^ 0xC7A41F9A ^ v72) - (v72 ^ 0x9C3A9037)) ^ ((LODWORD(STACK[0xA60]) ^ 0x5B9E8FAD ^ (v19 - 1820648134)) - v19 + 1820648134) ^ ((LODWORD(STACK[0xA60]) ^ 0x932CE69F ^ (v120 + 300672266) ^ LODWORD(STACK[0xAA0]) ^ v69) - ((v120 + 300672266) ^ LODWORD(STACK[0xAA0]) ^ v69 ^ 0xC8B26932));
  LODWORD(v69) = (v120 - ((2 * v120 + 358592638) & 0x1B790B96) - 127115766) ^ v69;
  v124 = (v119 + 1989473311) ^ 0xCCA6EF4D ^ (v120 + 300672266);
  v120 += 818096305;
  v125 = v15 - 1975706058 + v120;
  v126 = v125 + v69;
  v127 = v125 + v69 - 1796567784;
  LODWORD(v69) = v127 + v124 - 2121015430 - ((2 * (v127 + v124)) & 0x327BEF4);
  v128 = v117 - 362964763 + v19 - 1783008451 + ((v19 + 1816072303) ^ 0x9C3A9037 ^ v72);
  LODWORD(STACK[0xAB0]) = LODWORD(STACK[0xAD8]) + 45162909 + v15;
  v129 = v74 + 1;
  v130 = v125 - ((2 * v125 + 1533370964) & 0x55842B96) + 410306293;
  v131 = v38 - v117 - 1261525979 + v123 - 1405401782 - ((2 * (v38 - v117 - 1261525979 + v123)) & 0x58768A94);
  LODWORD(v72) = v117 - 362964763 + v19 - 1783008451 - 2 * ((v117 - 362964763 + v19 - 1783008451 + 807535708) & 0x304D309F ^ (v117 - 27 + v19 + 61) & 2) + 1617900793;
  v132 = ((v121 + 125213455) ^ 0xCCA6EF4D ^ (v19 - 1820648134)) + v128 - 952905855;
  v133 = (((v131 ^ v130 ^ 0x6F95081) - 2121015430 - 2 * ((v131 ^ v130 ^ 0x6F95081) & 0x193DF7E ^ (v131 ^ v130) & 4)) ^ v69) - (((v122 ^ 0x3AF11306) - v15 + v74 + 1 - ((2 * ((v122 ^ 0x3AF11306) - v15 + v74 + 1) + 281411696) & 0x1E085C76) - 2023281037) ^ v72 ^ (v132 - 1876553527) ^ 0x3F491EA6);
  LODWORD(v74) = v72 ^ 0x304D309D;
  v134 = v126 - 27213307;
  v135 = v120 - (v126 - 27213307);
  v136 = v134 - v135;
  v137 = ((2 * (v134 - v135 + 1931929240 + (v69 ^ 0x8193DF7A))) & 0xEEADDEB4) + ((v134 - v135 + 1931929240 + (v69 ^ 0x8193DF7A)) ^ 0xF756EF5A);
  LODWORD(v72) = v130 ^ (v135 + 593683579);
  v138 = v135 - v137;
  v139 = v19 - 1783008451 - (v128 - 952905855);
  v140 = v74 ^ (v139 + 1180666985);
  v141 = v128 - 952905855 - v139;
  v142 = v141 + v132 - 1129614482;
  v143 = v139 - v142;
  v144 = (v140 ^ (v143 + 689859246)) - 1749666259 - ((2 * (v140 ^ (v143 + 689859246))) & 0x2F6C6C5A);
  v145 = v133 ^ v127;
  v146 = v78 + v109 + v98 + v38 - LODWORD(STACK[0xB68]) + 766834316;
  v147 = v146 - 16819888 - ((2 * v146) & 0xFDFEB2A0);
  v148 = v110 + v107 + v106 + v129 - LODWORD(STACK[0xBC0]);
  LODWORD(STACK[0xAD8]) = v145 - 237819831 - ((2 * v145) & 0xE3A65092);
  v149 = (v72 ^ 0xAAC215CB ^ (v138 + 448386005)) - ((2 * (v72 ^ 0xAAC215CB ^ (v138 + 448386005))) & 0xED51F3D4) + 1990785514;
  LODWORD(v72) = v148 + 731614377 - ((2 * (v148 + 731614377)) & 0x32F40846) + 427426851;
  v150 = v137 - v138 - ((2 * (v137 - v138) - 606176862) & 0xFCC0FC22) + 1817164514;
  v151 = ((((v147 ^ 0x8857A0BA ^ v149) + 2120252945 - ((2 * (v147 ^ 0x8857A0BA ^ v149)) & 0xFCC0FC22)) ^ v150) - ((v142 - v143 - 199051507) ^ v72 ^ 0x8ECC320E ^ v144)) ^ (v136 - 1345445288);
  v153 = ((((v72 ^ 0x671A7A32 ^ v150) - 16819888 - ((2 * (v72 ^ 0x671A7A32 ^ v150)) & 0xFDFEB2A0)) ^ v147) - (v142 - v143) + 199051507) ^ (v141 - 2039627744) ^ ((((v72 ^ 0x6FD2FDC9 ^ v149) - 16819888 - ((2 * (v72 ^ 0x6FD2FDC9 ^ v149)) & 0xFDFEB2A0)) ^ v147) - (v144 ^ 0x97B6362D));
  v154 = (v144 ^ (v141 + 1874426475) ^ 0xB7771C03) + ((2 * (v144 ^ (v141 + 1874426475))) & 0xFFFBCBFE ^ 0x9111C3F8);
  LODWORD(STACK[0xAD0]) = LODWORD(STACK[0xA68]) ^ 0x41C9DA28;
  v155 = v142 - v143 - v143;
  LODWORD(STACK[0xB68]) = v143 - v155 + 1321779746;
  LODWORD(STACK[0xAE0]) = -1321779746 - (v143 - v155);
  v156 = STACK[0xBD0];
  v157 = STACK[0xBD0] == 63;
  v158 = v154 - 226599022;
  LODWORD(STACK[0xAA8]) = 226599022 - v154;
  v159 = !v157;
  v160 = *(STACK[0xBD8] + 8 * ((11 * v159) ^ LODWORD(STACK[0xB60])));
  ++STACK[0xBC8];
  STACK[0xBD0] = v156 + 1;
  LODWORD(STACK[0xA78]) = LODWORD(STACK[0xA90]) ^ 0x2BC99070;
  LODWORD(STACK[0xA88]) = v151 ^ 0xC50EECF9;
  LODWORD(STACK[0xBC0]) = v158 + v141 - 197657848;
  LODWORD(STACK[0xAB8]) = v155 + 461652814;
  LODWORD(STACK[0xAA0]) = STACK[0xA54];
  LODWORD(STACK[0xA80]) = v153 ^ 0x61B82BD8;
  v152 = ((2 * ((v150 ^ 0x7E607E11) - v138 + 188293686)) & 0xB3DFBFFE) + (((v150 ^ 0x7E607E11) - v138 + 188293686) ^ 0xD9EFDFFF);
  return v160(v138 - v152 - 411497277, v152 - 872579446);
}