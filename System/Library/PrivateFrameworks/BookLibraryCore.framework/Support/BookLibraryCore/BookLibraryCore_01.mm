uint64_t sub_100036380(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  STACK[0x288] = (((v35 ^ 0xBC0) + 1129913354) & 0xBCA6E3FD ^ 0xFFFFFFFFFFFFFC3DLL) + a34;
  STACK[0x3C0] = a1;
  return (*(v36 + 8 * (v35 ^ 0xBC0 | (8 * (v34 > a1)))))();
}

uint64_t sub_100036444()
{
  v4 = ((((v1 - 1880) | 0x72) + 1821) ^ 0x953) - v2;
  v5 = 1109283130 - v0;
  if (HIDWORD(v4))
  {
    v6 = 0;
  }

  else
  {
    v6 = v5 >= v4;
  }

  v7 = !v6;
  return (*(v3 + 8 * (v7 ^ v1)))();
}

void sub_1000364E4(uint64_t a1)
{
  v1 = *(a1 + 16) ^ (742307843 * ((((2 * (a1 ^ 0x93957FEC)) | 0xE1BAD10E) - (a1 ^ 0x93957FEC) - 1893558407) ^ 0xFD6A9A3E));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1000365C4(uint64_t a1, uint64_t a2)
{
  *(*(v4 + 96) + 1544) = *(a2 + 8);
  *(*(v4 + 96) + 1536) = *(a2 + 4);
  return (v2 - 1958853845);
}

void sub_100036810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = a4 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  __asm { BRAA            X8, X17 }
}

void sub_1000369F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, void *a29, uint64_t a30, _DWORD *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  v42 = (a38 + 4 * v40);
  v43 = *v42;
  LODWORD(v42) = -976034857 * ((*(*a29 + (*a31 & 0x715CEE0C)) ^ v42) & 0x7FFFFFFF);
  LODWORD(v42) = (v42 >> (a28 & 0xF9 ^ 0xC1)) ^ v42;
  v44 = -976034857 * v42;
  *(a39 + 4 * v40) ^= v43 ^ (((v41 - 370419875 - v40) & ((v41 - 370419875) ^ (-2 - v39)) | v40 & ~(v41 - 370419875)) >> 31) ^ *(*(&off_1001252D0 + (v41 ^ (v41 - 20))) + HIBYTE(v44) - 2) ^ *(*(&off_1001252D0 + v41 - 370419786) + HIBYTE(v44) - 2) ^ *(*(&off_1001252D0 + (v41 ^ (v41 - 10))) + HIBYTE(v44) + 2) ^ (-472449024 * v42) ^ v44 ^ (-2050678187 * HIBYTE(v44));
  JUMPOUT(0x100036B14);
}

uint64_t sub_100036B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v25 = a21;
  v23[2] = &a12;
  *(v24 - 112) = (v21 - 652) ^ (843532609 * ((-917575711 - ((v24 - 136) | 0xC94EE7E1) + ((v24 - 136) | 0x36B1181E)) ^ 0x6AFC4C9B));
  *v23 = v25;
  (*(v22 + 8 * (v21 + 1677)))(v24 - 136);
  v26 = a21;
  *(v24 - 136) = v21 + 843532609 * ((((v24 - 136) | 0x61EB246D) - ((v24 - 136) & 0x61EB246D)) ^ 0x3DA670E8) - 806;
  v23[1] = v26;
  v27 = (*(v22 + 8 * (v21 ^ 0xE9B)))(v24 - 136);
  return (*(v22 + 8 * (((*(v24 - 120) == 1958853845) * (((v21 + 276827231) | 0x51FCA30) - 362794658)) ^ v21)))(v27);
}

uint64_t sub_100036C74@<X0>(int a1@<W4>, int a2@<W6>, int a3@<W8>)
{
  *v6 = a3 - 1;
  v8 = &v6[6 * (a3 - 729234528)];
  v9 = v8[2];
  LODWORD(STACK[0x2E4]) = v8[3];
  STACK[0x290] = *(v8 + 2);
  LODWORD(STACK[0x3A4]) = v8[6];
  v10 = *(v5 + (v9 + a1) * v4 + 36);
  LODWORD(STACK[0x2D4]) = v10;
  return (*(v7 + 8 * (((v10 == a2) * ((v3 ^ 0x3A9) + 1311)) ^ v3)))();
}

void sub_100036D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(&off_1001252D0 + ((11 * (dword_10013EB60 ^ 8 ^ qword_10013EA10)) ^ byte_1000EC720[byte_1000E7D70[(11 * (dword_10013EB60 ^ 8 ^ qword_10013EA10))] ^ 0x51]) - 42);
  v5 = *(&off_1001252D0 + (byte_1000E7B70[byte_1000E4460[(11 * ((qword_10013EA10 + *v4) ^ 8))] ^ 0x3E] ^ (11 * ((qword_10013EA10 + *v4) ^ 8))) - 118);
  v6 = (*v5 ^ *v4) - &v11;
  *v4 = 1405565963 * (v6 + 0x435703E42A3502F8);
  *v5 = 1405565963 * (v6 ^ 0xBCA8FC1BD5CAFD08);
  v9 = 0;
  v14 = -1224077185 - 1785193651 * ((((v12 | 0x6BCB0E66) ^ 0xFFFFFFFE) - (~v12 | 0x9434F199)) ^ 0x621555B5);
  v13 = &v9;
  LOBYTE(v6) = 11 * ((*v5 - *v4) ^ 8);
  v7 = *(&off_1001252D0 + ((11 * (dword_10013EB60 ^ 8 ^ qword_10013EA10)) ^ byte_1000E4560[byte_1000F0AC0[(11 * (dword_10013EB60 ^ 8 ^ qword_10013EA10))] ^ 0xB7]) + 131) - 8;
  (*&v7[8 * (byte_1000E456C[(byte_1000F0AC4[v6 - 4] ^ 0xB7) - 12] ^ v6) + 21936])(v12);
  v10 = 0;
  v14 = -1224077185 - 1785193651 * ((((2 * v12) | 0xCFB4025E) - v12 - 1742340399) ^ 0x91FBA503);
  v13 = &v10;
  v8 = 11 * ((*v5 + *v4) ^ 8);
  (*&v7[8 * (byte_1000EC72C[(byte_1000E7D7C[v8 - 12] ^ 0xA0) - 12] ^ v8) + 22376])(v12);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10003701C(unsigned int *a1)
{
  *(a1 + v1 + 4) = 0;
  *a1 = v1;
  return 0;
}

uint64_t sub_100037148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, unint64_t a30)
{
  v37 = *(v35 + 4 * (v31 - 1));
  *(v35 + 4 * v31) = ((1566083941 * (v37 ^ (v37 >> 30))) ^ *(v35 + 4 * v31)) - v31;
  *(v36 - 160) = (v31 + 1) ^ a30;
  *(v36 - 176) = ((v30 - 323425360) ^ 0x70) + a30;
  *(v36 - 172) = ((v30 - 323425360) ^ 0xA) - a30;
  *(v36 - 144) = v34 - a30;
  *(v36 - 152) = (v30 - 323425360) ^ a30;
  *(v36 - 148) = a30;
  *(v36 - 136) = (v30 + v33) ^ a30;
  v38 = (*(v32 + 8 * (v30 ^ 0xF05)))(v36 - 176);
  return (*(v32 + 8 * *(v36 - 168)))(v38);
}

void sub_1000371E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v5 = a5 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100037318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  HIDWORD(a27) = 2034659866;
  LODWORD(a28) = a4;
  HIDWORD(a25) = 1429511819;
  return sub_10003739C(a1, 104198260, a3, a4, a5, a6, 2251681908, 2116720396, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, &STACK[0x288], 1809518587, &a42, 0, a25, 0, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40);
}

uint64_t sub_1000373FC@<X0>(unint64_t a1@<X4>, int a2@<W7>, uint64_t a3@<X8>, uint64_t a4, _BYTE *a5, _BYTE *a6, uint64_t a7, _BYTE *a8, uint64_t a9, _BYTE *a10, uint64_t a11, _BYTE *a12, _BYTE *a13, _BYTE *a14, unsigned __int8 **a15, _BYTE *a16, uint64_t a17, _BYTE *a18, uint64_t a19, _BYTE *a20, uint64_t a21, uint64_t a22, _BYTE *a23, _BYTE *a24, _BYTE *a25, _BYTE *a26, _BYTE *a27, _BYTE *a28, _DWORD *a29, uint64_t a30, uint64_t a31, int a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, unsigned int a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  *a6 = (a3 - (((a32 + 64) ^ 0xE0) & (2 * a3)) - 70) ^ 0xBA;
  *a10 = BYTE3(a3);
  a6[1] = ((BYTE6(a3) ^ 0xE2) - ((2 * (BYTE6(a3) ^ 0xE2)) & 0x72) - 71) ^ 0xB9;
  a5[1] = (BYTE4(a3) + (~(2 * BYTE4(a3)) | 0x97) + 53) ^ 4;
  a8[20] = a1 ^ 0x22;
  *a12 = BYTE5(a3) ^ 0xF9;
  a8[64] = (BYTE2(a3) - ((2 * BYTE2(a3)) & 0x88) - 60) ^ 0xC4;
  a8[50] = (BYTE3(v42) - ((2 * BYTE3(v42)) & 0x5E) + 47) ^ 0x2F;
  *a14 = BYTE1(a3);
  *a13 = v42;
  a8[26] = (BYTE6(v42) + (~(2 * BYTE6(v42)) | 0x35) + 102) ^ 0x65;
  *a20 = BYTE4(v42);
  a5[2] = BYTE1(a2);
  a8[45] = (BYTE5(v42) - ((2 * BYTE5(v42)) & 0x78) + 60) ^ 0x3C;
  *a24 = HIBYTE(v42);
  a8[11] = (BYTE2(a2) - ((2 * BYTE2(a2)) & 0xE3) - 15) ^ 0xF1;
  *a25 = BYTE1(a1) ^ 0x69;
  *a5 = HIBYTE(a3) ^ 0xCA;
  *a18 = BYTE2(a1) ^ 1;
  a8[52] = ((BYTE4(a1) ^ 0x61) - ((2 * (BYTE4(a1) ^ 0x61)) & 0x2A) + 21) ^ 0x15;
  *a23 = BYTE3(a1) ^ 0xA7;
  v45 = *(a4 + 526 + (((a1 >> 33) & 0x80 | (a1 >> 41) & 0x7F) ^ 0x26));
  a8[9] = ((BYTE6(a1) ^ 0xE) - ((2 * (BYTE6(a1) ^ 0xE)) & 0xE8) - 12) ^ 0xF4;
  *a16 = (((v45 >> 4) | (16 * v45)) ^ 0xB ^ (((v45 >> 4) | (16 * v45)) >> 1) & 0x55) + 95;
  v46 = *(a7 + (((a1 >> 51) & 0xE0 | (a1 >> 59)) ^ 0x93));
  a8[39] = v43 ^ 0x53;
  *a27 = (v46 ^ 0xBC) + 74;
  v47 = *(a7 + (((v43 >> 3) & 0xE0 | (v43 >> 11)) ^ 0xEF));
  a8[49] = BYTE5(v43) ^ 0xBB;
  a8[63] = BYTE3(v43) ^ 0xC1;
  v48 = (v44 >> 38) ^ 0xB0;
  a8[13] = ((BYTE6(v43) ^ 0x15) + (~(2 * (BYTE6(v43) ^ 0x15)) | 0x4F) + 89) ^ 0x58;
  *a26 = BYTE2(v43) ^ 0x1D;
  v49 = (v44 >> 46) & 3;
  *a28 = (v47 ^ 0xBC) + 74;
  a8[36] = BYTE4(v43) ^ 0xF2;
  a8[60] = BYTE1(v44) ^ 0x54;
  a8[27] = BYTE2(v44) ^ 0x11;
  a8[40] = (((v43 ^ 0x4F15BBF2C11DE053) >> (a2 & 0x38) >> (a2 & 0x38 ^ 0x38u)) - ((2 * ((v43 ^ 0x4F15BBF2C11DE053) >> (a2 & 0x38) >> (a2 & 0x38 ^ 0x38u))) & 0x22) + 17) ^ 0x11;
  a8[53] = BYTE3(v44) ^ 5;
  a8[59] = v44 ^ 0x4C;
  a8[22] = BYTE4(v44) ^ 0x2D;
  v50 = *(a11 + ((v48 & 0xFC | v49) ^ 0x97));
  v51 = ((v48 & 0xFC | v49) ^ 0x86) - ((2 * v48) & 0xD0) + (v50 ^ 0xB2) + ((2 * v50) & 0x64) + 79;
  a8[37] = -35 * (((v51 ^ 0x6A) + 35) ^ ((v51 ^ 0x2A) + 99) ^ ((v51 ^ 0xC5) - 114)) + 42;
  v52 = *(a4 + 526 + (((v44 >> 41) & 0x80 | (v44 >> 49) & 0x7F) ^ 0x56));
  a8[29] = HIBYTE(v44) ^ 0x30;
  v53 = ((((v52 >> 4) | (16 * v52)) >> 1) & 0x55) + (((v52 >> 4) | (16 * v52)) ^ 0xB) - 2 * ((((v52 >> 4) | (16 * v52)) >> 1) & 0x55 & (((v52 >> 4) | (16 * v52)) ^ 0xB));
  a8[57] = (v53 ^ 0x17) + ((2 * v53) & 0x2E) + 72;
  **a15 = a9 + 1;
  v54 = *a15;
  v55 = 69 * (*a15)[55];
  v56 = v55 + 48;
  v57 = ((v55 + 48) | ((v55 > 0xCFu) << 8)) + 2120334706;
  v58 = ((v55 - 80) | 0x2F) ^ (v55 + 48) & 0xFE;
  v59 = (v55 + 48) ^ 0x50;
  v60 = (v56 ^ (2 * (v59 & (2 * (v59 & (2 * (v59 & (2 * (v59 & (2 * (v59 & (2 * (v59 & (2 * v58) ^ v58)) ^ v58)) ^ v58)) ^ v58)) ^ v58)) ^ v58))) ^ 0x6A;
  v61 = v57 - (((v60 ^ 0xB4ADD48B) + 1263676277) ^ ((v60 ^ 0xF26D0244) + 227737020) ^ ((v60 ^ 0x46C0D663) - 1187042915)) - 938150182;
  v62 = ((v61 ^ 0x2C57B45E) - 1780547958) ^ v61 ^ ((v61 ^ 0x3A182DDD) - 2087622901) ^ ((v61 ^ 0x3FD61356) - 2040571518) ^ ((v61 ^ 0x6FEF3FFD) - 697928405);
  v63 = v57 + 593441435 + (((v62 ^ 0x65C58814) + 1525291510) ^ ((v62 ^ 0x942624B5) - 1425427115) ^ ((v62 ^ 0x486AE679) + 2001041305));
  v64 = *(&off_1001252D0 + a32 - 1602);
  LOBYTE(v63) = *(v64 + 6 + (v63 ^ ((v63 ^ 0xD02D2316) + 129308575) ^ ((v63 ^ 0xC6409385) + 299411214) ^ ((v63 ^ 0xC1B5A41B) + 372084884) ^ ((v63 ^ 0xFFBFDFFF) + 673704824) ^ 0x2867CBA2)) + 22;
  LOBYTE(v62) = (v63 & 0xD8 | 4) ^ v63 & 0x38;
  v65 = v63 ^ (2 * ((v63 ^ 0x58) & (2 * ((v63 ^ 0x58) & (2 * ((v63 ^ 0x58) & (2 * ((v63 ^ 0x58) & (2 * ((v63 ^ 0x58) & (2 * v62) ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ v62));
  v66 = ((((v65 >> 2) | (v65 << 6)) ^ 0x6A) - 103) ^ ((((v65 >> 2) | (v65 << 6)) ^ 9) - 4) ^ ((((v65 >> 2) | (v65 << 6)) ^ 0x8E) + 125);
  LOBYTE(v63) = v66 + 56;
  v67 = ((v66 - 72) & 0xA8 | 0x12) ^ (v66 + 56) & 0x64;
  v68 = (v63 ^ (2 * ((v63 ^ 0x28) & (2 * ((v63 ^ 0x28) & (2 * ((v63 ^ 0x28) & (2 * ((v63 ^ 0x28) & (2 * ((v63 ^ 0x28) & (2 * v67) ^ v67)) ^ v67)) ^ v67)) ^ v67)) ^ v67))) << 32;
  v69 = 0xC066B2CE9812ADFLL - (((v68 ^ 0xB926387C83E50C2DLL) + 0x734F0D6655482A36) ^ ((v68 ^ 0xC2A0BCE0C9237886) + 0x8C989FA1F8E5E9FLL) ^ ((v68 ^ 0x7B8684504AC674ABLL) - 0x4E104EB56394AD4CLL));
  v70 = ((v54[61] - ((2 * v54[61]) & 0x144u) + 15585457) << 40) - 0xF0000000000;
  v71 = ((v54[34] - ((2 * v54[34]) & 0x1CA)) << 24) - 0x26D3F8E41B000000;
  v72 = ((v54[7] - ((2 * v54[7]) & 0x172)) << 16) + 0x1714FD4326B90000;
  v73 = v54[15] - ((2 * v54[15]) & 0x1BC) - 0x226C0603CF4E2922;
  v74 = (v71 & 0x50080017A6000000 ^ 0xD6FD1016564FE53BLL ^ (v72 & 0x2040C02013D0000 ^ 0xB8F8E84B67D28467 ^ (v73 & 0x80008000800331 ^ 0x803E00340A10D60DLL ^ ((((v54[32] - ((2 * v54[32]) & 0x130)) << 8) - 0x729EF8AEA1B16800) ^ 0x1847F4246A1C04CELL) & (v73 ^ 0x226C0603CF4E2911)) & (v72 ^ 0xE8EB02BCD946FFFFLL)) & (v71 ^ 0x26D3F8E41AFFFFFFLL)) & (v70 ^ 0x122F5DFFFFFFFFFFLL) ^ v70 & 0xC46EF80000000000;
  v75 = v68 ^ 0x3596CAE52952D9E7;
  v76 = (((v74 ^ 0x482483DC93138C70) + 0x3B92D2B90AF63107) ^ ((v74 ^ 0x9D1404A13F91778FLL) - 0x115DAA3B598B3506) ^ ((v74 ^ 0x38E120F007E4D270) + 0x4B5771959E016F07)) - (((v68 ^ 0x3596CAE52952D9E7 ^ v74 ^ 0x3C36AF2DF8F0BB6BLL) + 0x4F80FE486115061ELL) ^ ((v68 ^ 0x3596CAE52952D9E7 ^ v74 ^ 0x32231EDA1A9595C7) + 0x41954FBF837028B2) ^ ((v68 ^ 0x3596CAE52952D9E7 ^ v74 ^ 0xD652DC536051DEC4) - 0x5A1B72C9064B9C4DLL)) + 0x673BCB0F7EAC2726;
  v77 = ((2 * (v76 ^ 0x7A493A2899C704D6)) ^ 0xB80881C3E6CD2852) & (v76 ^ 0x7A493A2899C704D6) ^ (2 * (v76 ^ 0x7A493A2899C704D6)) & 0x5C0440E1F3669428;
  v78 = ((4 * (v77 ^ 0x4404402011229429)) ^ 0x70110387CD9A50A4) & (v77 ^ 0x4404402011229429) ^ (4 * (v77 ^ 0x4404402011229429)) & 0xDC0440E1F3669428;
  v79 = ((16 * (v78 ^ 0x8C04406032648409)) ^ 0xC0440E1F36694290) & (v78 ^ 0x8C04406032648409) ^ (16 * (v78 ^ 0x8C04406032648409)) & 0xDC0440E1F3669420;
  v80 = (((v79 ^ 0x1C0040E0C1069429) << 8) ^ 0x440E1F366942900) & (v79 ^ 0x1C0040E0C1069429) ^ ((v79 ^ 0x1C0040E0C1069429) << 8) & 0xDC0440E1F3669400;
  v81 = ((v80 ^ 0xD804000091629429) << 16) & 0x5C0440E100000000 ^ 0x1C04008100000000 ^ (((v80 ^ 0xD804000091629429) << 16) ^ 0x40E1F36600000000) & (v80 ^ 0xD804000091629429);
  v82 = (v76 ^ 0x36497AA8488504FELL) & (2 * (v76 & 0xA64D7AC96AA190FFLL)) ^ v76 & 0xA64D7AC96AA190FFLL;
  v83 = (v78 ^ 0x50000081C1021020) & (16 * ((v77 ^ 0x98000041E2040000) & (4 * v82) ^ v82)) ^ (v77 ^ 0x98000041E2040000) & (4 * v82) ^ v82;
  v84 = (v79 ^ 0xC004000132600000) & (v83 << 8) ^ v83 ^ 0xDC0440E1F3669429 ^ (v80 ^ 0x40040E162040000) & (((v79 ^ 0xC004000132600000) & (v83 << 8) ^ v83) << 16);
  v85 = v69 ^ v75 ^ ((v69 ^ 0xBBC7F512025883FFLL) + 0x5A53FBBEF7378C7) ^ ((v69 ^ 0x46BA562EF2B9FDFFLL) - 0x7276378E06DF939) ^ ((v69 ^ 0xC3B570F1516A575BLL) + 0x7DD7BA58BC41AC63) ^ ((v69 ^ 0x7F55E69BB35F2D9DLL) - 0x3EC8D3CDA18B295BLL) ^ v76 ^ (2 * ((v84 << 32) & 0x5C0440E100000000 ^ v84 ^ ((v84 << 32) ^ 0x7366942900000000) & v81));
  v86 = (((v74 ^ 0x78C22595F822E790) + 0xB7474F061C75AE7) ^ ((v74 ^ 0xBCC364D8B7752404) - 0x308ACA42D16F668DLL) ^ ((v74 ^ 0x29D0E6C0E431EA1BLL) + 0x5A66B7A57DD4576ELL)) - 0x403170C893D915DCLL + (((v85 ^ 0xF6769B766FBF8FAFLL) + 0x2D18739E9ED26701) ^ ((v85 ^ 0x5443EC031C377148) - 0x70D2FB1412A56618) ^ ((v85 ^ 0x68737342C4629B6BLL) - 0x4CE26455CAF08C3BLL));
  LOBYTE(v75) = *(v64 + 798 + ((*a15)[18] ^ 0x57));
  LOBYTE(v75) = ((v75 ^ 0x48) + 67) ^ ((v75 ^ 0x89) - 124) ^ ((v75 ^ 0x3B) + 50);
  v87 = v75 + 16;
  LOBYTE(v75) = ((v75 - 112) & 0x88 | 0x26) ^ (v75 + 16) & 0x5C;
  v88 = (v87 ^ (2 * ((v87 ^ 8) & (2 * ((v87 ^ 8) & (2 * ((v87 ^ 8) & (2 * ((v87 ^ 8) & (2 * ((v87 ^ 8) & (2 * v75) ^ v75)) ^ v75)) ^ v75)) ^ v75)) ^ v75))) << 32;
  v89 = ((v54[24] - ((2 * v54[24]) & 0x1EA)) << 24) - 184549376;
  LODWORD(v81) = v54[44] - ((2 * v54[44]) & 0xE4) + 846471538;
  LODWORD(v81) = ((((v54[10] - ((2 * v54[10]) & 0x170)) << 8) + 1401534464) ^ 0xE7636492) & (v81 ^ 0xCD8BDEEC) ^ v81 & 0x14236D;
  v90 = (v81 & 0xF74C8FCD ^ 0x5C76AC69 ^ (v81 ^ 0x4B010000) & ((((v54[25] - ((2 * v54[25]) & 0xD2)) << 16) + 1953038336) ^ 0x7CDA7032)) & (v89 ^ 0xAFFFFFF) ^ v89 & 0x1F000000;
  v91 = (v88 | 0xFFFFFF03FFFFFFFFLL) & (v90 & 0xDEEAA93F ^ 0xCD31EF84D89C0D23) | v88 & 0x4100000000;
  v92 = v88 ^ 0x7600000000;
  v93 = v88 ^ 0x41E60F32F6C8331ELL;
  if (!(*a15)[58])
  {
    v93 = 0x41E60F19F6C8331ELL;
  }

  v94 = ((v93 ^ 0x2300000000) & v92 ^ v93 & 0x40C40FA270800200uLL) >> 8;
  v95 = __ROR8__(v94 & 0x44015D308002 ^ 0x81F88E2D8B0969F1 ^ (v94 ^ 0xC5A52AD080811D55) & (__ROR8__(v90 & 0x211556C0 ^ 0xAF7599E3E98C93D5, 8) ^ 0xD04ADF4741088086), 56);
  v96 = (((v95 ^ 0x38DFB9E7FEC5E32BLL) + 0x2589BB61F0EE1FAELL) ^ ((v95 ^ 0x802B6397F70E3890) - 0x62829EEE06DA3BE9) ^ ((v95 ^ 0xA5942859F02F6DBFLL) - 0x473DD52001FB6EC6)) + (((v91 ^ 0x8B77AEBD32EF3699) + 0x5A5048B7385DFCF3) ^ ((v91 ^ 0x8783546AB215FD41) + 0x56A4B260B8A7372BLL) ^ ((v91 ^ 0xC1C515138CEEC7E0) + 0x10E2F319865C0D8CLL));
  v97 = ((2 * ((v96 - 0xD26E72CB876226FLL) ^ 0x928D37E20C90F36BLL)) ^ 0xC4A9B6996D21C5E6) & ((v96 - 0xD26E72CB876226FLL) ^ 0x928D37E20C90F36BLL) ^ (2 * ((v96 - 0xD26E72CB876226FLL) ^ 0x928D37E20C90F36BLL)) & 0x6254DB4CB690E2F2;
  v98 = ((4 * (v97 ^ 0x2254494492902211)) ^ 0x89536D32DA438BCCLL) & (v97 ^ 0x2254494492902211) ^ (4 * (v97 ^ 0x2254494492902211)) & 0x6254DB4CB690E2F0;
  v99 = ((16 * (v98 ^ 0x6204924C24906033)) ^ 0x254DB4CB690E2F30) & (v98 ^ 0x6204924C24906033) ^ (16 * (v98 ^ 0x6204924C24906033)) & 0x6254DB4CB690E2F0;
  v100 = (((v99 ^ 0x42104B049690C0C3) << 8) ^ 0x54DB4CB690E2F300) & (v99 ^ 0x42104B049690C0C3) ^ ((v99 ^ 0x42104B049690C0C3) << 8) & 0x6254DB4CB690E200;
  v101 = ((v96 - 0xD26E72CB876226FLL) ^ 0xF29DEEAE3890D15BLL) & (2 * ((v96 - 0xD26E72CB876226FLL) & 0xF0D9ECAEBA001198)) ^ (v96 - 0xD26E72CB876226FLL) & 0xF0D9ECAEBA001198;
  v102 = (v98 ^ 0x504900920082C0) & (16 * ((v97 ^ 0x400092082000C0E0) & (4 * v101) ^ v101)) ^ (v97 ^ 0x400092082000C0E0) & (4 * v101) ^ v101;
  v103 = (v99 ^ 0x2044904820002200) & (v102 << 8) ^ v102 ^ 0x6254DB4CB690E2F3 ^ (v100 ^ 0x4050480490800000) & (((v99 ^ 0x2044904820002200) & (v102 << 8) ^ v102) << 16);
  v104 = (v103 << 32) & 0x6254DB4C00000000 ^ v103 ^ ((v103 << 32) ^ 0x3690E2F300000000) & (((v100 ^ 0x22049348261000F3) << 16) & 0x6254DB4C00000000 ^ 0x2010494C00000000 ^ (((v100 ^ 0x22049348261000F3) << 16) ^ 0x5B4CB69000000000) & (v100 ^ 0x22049348261000F3));
  v105 = ((v54[12] - ((2 * v54[12]) & 0x54u) + 247913) << 40) - 0x3F0000000000;
  v106 = v105 ^ 0x7AD8150366B4A984;
  v107 = (v96 - 0xD26E72CB876226FLL) ^ v105 ^ 0x7AD8150366B4A984 ^ (2 * v104);
  v108 = v96 - (((v107 ^ 0x6A88ABF46E1051D9) - 0x128AFFB8017C7C0DLL) ^ ((v107 ^ 0x37338363272AC40BLL) - 0x4F31D72F4846E9DFLL) ^ ((v107 ^ 0x54FAC923F8AFE828) - 0x2CF89D6F97C3C5FCLL)) - 0x41B9E7F4EB4932ABLL;
  v109 = 0xC566FDF4CC8A55DCLL - (((v105 ^ 0x9420F21EB9D8C8B8) + 0x110718E220939EC4) ^ ((v105 ^ 0xC144D5D60E36C099) + 0x44633F2A977D96E3) ^ ((v105 ^ 0x56AC0DC8B7EE0821) - 0x2C7418CBD15AA1A5));
  v110 = v109 ^ v106 ^ ((v109 ^ 0xEBB9AC26BBD317) - 0x3E9C855415852C77) ^ ((v109 ^ 0x81526FD7FF1D8DDCLL) + 0x40DAACD033DC8D44) ^ ((v109 ^ 0x80BD5F6D55E74E74) + 0x41359C6A99264EECLL) ^ ((v109 ^ 0x3F73B5EEBF7FEFDFLL) - 0x10489168C4110BFLL) ^ v108 ^ ((v108 ^ 0x55A5503B025AC219) - 0x1E7398BAF07CEC43) ^ ((v108 ^ 0x9C44BC62E357C415) + 0x286D8B1CEE8E15B1) ^ ((v108 ^ 0x64C0591AC794758BLL) - 0x2F16919B35B25BD1) ^ ((v108 ^ 0xE6F77DC2D4BF5DDDLL) + 0x52DE4ABCD9668C79);
  v111 = v96 + 0x2F5AB0E28D9CB3B0 + (((v110 ^ 0xDFF91501CB772B0) + 0xF0CE1631AA13E42) ^ ((v110 ^ 0x5065BA8812E6DB45) + 0x5296CABB14F097B5) ^ ((v110 ^ 0x512BE0A2A9FDD14BLL) + 0x53D89091AFEB9DBBLL));
  LODWORD(a33) = *a29;
  return sub_100039778((((v54[23] - ((2 * v54[23]) & 0xFFE7u) + 26638) << 48) - 0x1B000000000000) ^ (((v54[62] - ((2 * v54[62]) & 0xCu) + 63) << 56) - 0x3900000000000000) ^ v111 ^ ((v111 ^ 0x2B09D6E929266105) - 0x72E3B04304EA99D2) ^ ((v111 ^ 0x22A9147D8EF10C63) - 0x7B4372D7A33DF4B4) ^ ((v111 ^ 0xBF9B6AE470E470C9) + 0x198EF3B1A2D777E2) ^ ((v111 ^ 0xEFD1CEDAFAFFE578) + 0x49C4578F28CCE251) ^ 0xCC8667CF6B88B4E4, 0, 494, 3446, a37, a42, 49, (((v54[51] - ((2 * v54[51]) & 0x48u) + 49) << 56) - 0xD00000000000000) ^ (((v54[56] - ((2 * v54[56]) & 0x15Eu) + 29115) << 48) - 0xC000000000000) ^ v86 ^ ((v86 ^ 0xF67CA33419A38C43) + 0x66DC2E35036E7FFFLL) ^ ((v86 ^ 0x8E206DBCB6D97028) + 0x1E80E0BDAC148396) ^ ((v86 ^ 0x1C4D658BF5C76FFALL) - 0x7312177510F563B8) ^ ((v86 ^ 0xB4ED9FDBF8F9FD3) - 0x6411AB035ABD9391) ^ 0x2BB6C60C20D47FF5, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, (*a29 - ((2 * *a29) & 0x32C9F130u) - 1721436000) << 32, a29, v64 - 4, v64 + 537, v64 + 6, a33, v54);
}

uint64_t sub_100039964(int a1)
{
  v4 = v2 < 0x6BDB0FFB;
  v5 = v1 + 1;
  if (v4 == v5 > ((a1 - 614) ^ 0xFFFFFFFF9424F284))
  {
    v4 = v5 + 1809518587 < v2;
  }

  return (*(v3 + 8 * ((v4 * (((a1 - 742) | 0x80) - 629)) ^ a1)))();
}

uint64_t sub_100039A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v69 = STACK[0x328];
  v70 = (LODWORD(STACK[0x37C]) ^ 0xEF7B77FF) + 1073734007 + ((2 * LODWORD(STACK[0x37C])) & 0xDEF6EFFE) + 3593;
  v71 = 1037613739 * ((((v67 - 192) | 0x6CF54E65) - (v67 - 192) + ((v67 - 192) & 0x930AB198)) ^ 0xBDF7631A);
  *(v67 - 192) = a21;
  *(v67 - 160) = v65;
  *(v67 - 176) = v69;
  *(v67 - 144) = v62;
  *(v67 - 184) = v71 + v66 - 1776823823;
  *(v67 - 152) = v71 + (v64 ^ 0x6B7FF4FA) + ((((v66 - 286) | 0x1A) ^ 0x11E) & v63) - 4215002;
  *(v67 - 148) = v70 ^ v71;
  v72 = (*(v68 + 8 * (v66 ^ 0x8E7)))(v67 - 192);
  v73 = *(v67 - 168);
  LODWORD(STACK[0x22C]) = v73;
  return (*(a62 + 8 * ((2689 * (v73 == 1958853845)) ^ v66)))(v72);
}

uint64_t sub_100039BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, unsigned int *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v69 == 8 || v69 == 5)
  {
    LOBYTE(STACK[0x4DF]) = LOBYTE(STACK[0x4FF]) ^ 0x20;
    LOBYTE(STACK[0x4DE]) = LOBYTE(STACK[0x4FE]) ^ 0x20;
    LOBYTE(STACK[0x4DD]) = LOBYTE(STACK[0x4FD]) ^ 0x20;
    LOBYTE(STACK[0x4DC]) = LOBYTE(STACK[0x4FC]) ^ 0x20;
    LOBYTE(STACK[0x4DB]) = LOBYTE(STACK[0x4FB]) ^ 0x20;
    LOBYTE(STACK[0x4DA]) = LOBYTE(STACK[0x4FA]) ^ 0x20;
    LOBYTE(STACK[0x4D9]) = LOBYTE(STACK[0x4F9]) ^ 0x20;
    LOBYTE(STACK[0x4D8]) = LOBYTE(STACK[0x4F8]) ^ 0x20;
    LOBYTE(STACK[0x4D7]) = LOBYTE(STACK[0x4F7]) ^ 0x20;
    LOBYTE(STACK[0x4D6]) = LOBYTE(STACK[0x4F6]) ^ 0x20;
    LOBYTE(STACK[0x4D5]) = LOBYTE(STACK[0x4F5]) ^ 0x20;
    LOBYTE(STACK[0x4D4]) = LOBYTE(STACK[0x4F4]) ^ 0x20;
    LOBYTE(STACK[0x4D3]) = LOBYTE(STACK[0x4F3]) ^ 0x20;
    LOBYTE(STACK[0x4D2]) = LOBYTE(STACK[0x4F2]) ^ 0x20;
    LOBYTE(STACK[0x4D1]) = LOBYTE(STACK[0x4F1]) ^ 0x20;
    LOBYTE(STACK[0x4D0]) = LOBYTE(STACK[0x4F0]) ^ 0x20;
  }

  v72 = (*(v71 + 8 * (v70 ^ 0xA38)))(LODWORD(STACK[0x3F4]), v69, a17 ^ (v70 - 2082681298) & 0x7C2334FF ^ 0x8EDFEB0F, a69 ^ 0x9C9DF6BA, &STACK[0x4D0], STACK[0x3B8], LODWORD(STACK[0x42C]), &STACK[0x4C0]);
  v73 = ((2 * v72) & 0x5DF95FFC) + (v72 ^ 0xAEFCAFFE);
  v74 = (*(a63 + 8 * (v70 ^ 0xBE8)))(*a26, STACK[0x3B8], LODWORD(STACK[0x42C]));
  return (*(a63 + 8 * ((124 * (v73 != -1359171586)) ^ (v70 + 1825))))(v74);
}

uint64_t sub_100039D70()
{
  v7.i64[0] = 0x4040404040404040;
  v7.i64[1] = 0x4040404040404040;
  v8.i64[0] = 0x2020202020202020;
  v8.i64[1] = 0x2020202020202020;
  v9 = vaddq_s8(vsubq_s8(*(v4 + v2 - 16), vandq_s8(vaddq_s8(*(v4 + v2 - 16), *(v4 + v2 - 16)), v7)), v8);
  *(v4 + v5 - 28) = vaddq_s8(vsubq_s8(*(v4 + v2 - 32), vandq_s8(vaddq_s8(*(v4 + v2 - 32), *(v4 + v2 - 32)), v7)), v8);
  *(v4 + v5 - 12) = v9;
  return (*(v0 + 8 * ((((v4 & 0xFFFFFFE0) == 32) * (577 * (v6 ^ (v1 + 2297)) - 328)) ^ (v3 + v6 + 744))))((v4 & 0xFFFFFFE0) - 32);
}

uint64_t sub_100039E34@<X0>(uint64_t a1@<X5>, uint64_t a2@<X6>, int a3@<W8>)
{
  v9 = v5 - 1;
  *(v4 + v9) = *(a2 + v9) ^ (15 * (v9 & 0xF)) ^ *(*(v8 + 8 * v6) + (v9 & 0xF) - 8) ^ *((v3 - 257) + (v9 & 0xF) + *(v8 + 8 * v7) - 216) ^ *(*(v8 + 8 * (v3 - 288)) + (v9 & 0xF) - 9) ^ 0x20;
  return (*(a1 + 8 * (((v9 != 0) * a3) ^ v3)))();
}

uint64_t sub_100039E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  *(*(v64 + 8 * ((v63 - 2339) & 0x818AD0D2)) - 12) = 35;
  v65 = (*(v62 + 8 * ((v63 - 2339) ^ 0x161423B8)))(&a61, 0, 1024);
  return (*(v62 + 8 * (((((305 * ((v63 - 2339) ^ v61) - 148948411) & 0x1EF4EBFE ^ 0x16142886) == 32) * (((305 * ((v63 - 2339) ^ v61) - 282) | 0x211) ^ 0xB44)) | (305 * ((v63 - 2339) ^ v61)))))(v65, 3924547419);
}

uint64_t sub_10003A188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, int a3@<W3>, int a4@<W6>, int a5@<W8>)
{
  LODWORD(STACK[0x324]) = a5;
  LODWORD(STACK[0x40C]) = v8;
  LODWORD(STACK[0x2AC]) = a3;
  LODWORD(STACK[0x38C]) = v6;
  LODWORD(STACK[0x298]) = v5;
  LODWORD(STACK[0x2D8]) = a4 + 80;
  v9 = (((v5 ^ 0xC96E2E0F) + 915526129) ^ ((v5 ^ 0x69B582AC) - 1773503148) ^ ((v5 ^ 0x6E55CF3F) - 1851117375)) - 646388180 + (((*(STACK[0x4A0] + 88) ^ 0xA2032FD9) + 1576849447) ^ (((v7 - 152) | 8) + 1691375470 + (*(STACK[0x4A0] + 88) ^ 0x9B2FA778)) ^ ((*(STACK[0x4A0] + 88) ^ 0xF7A2EB3D) + 140317891));
  *(STACK[0x4A0] + 88) = v9 ^ ((v9 ^ 0xE855D182) + 737554570) ^ ((v9 ^ 0x48192235) - 1950694593) ^ ((v9 ^ 0xE3EB52BC) + 541635512) ^ ((v9 ^ 0x7FFBBFFF) - 1135059211) ^ 0xF2D27D68;
  return sub_10003A2F8(a1, 32, a2, 1211);
}

uint64_t sub_10003A2F8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = (((a1 ^ 0xE466FBB0) + 463012944) ^ ((a1 ^ 0xEE12244A) + 300800950) ^ ((a1 ^ 0xC4FABC66) + 990200730)) + (((*(v66 + 72) ^ 0x9B63679E) + 1687984226) ^ ((*(v66 + 72) ^ 0x7294F372) - 1922364274) ^ ((*(v66 + 72) ^ 0x2779F770) - 662304624)) - 1150759901;
  v68 = (v67 ^ 0xD923F340) & (2 * (v67 & 0xE1B3FB15)) ^ v67 & 0xE1B3FB15;
  v69 = ((2 * (v67 ^ 0x9A650168)) ^ 0xF7ADF4FA) & (v67 ^ 0x9A650168) ^ (2 * (v67 ^ 0x9A650168)) & 0x7BD6FA7C;
  v70 = v69 ^ 0x8520A05;
  v71 = (v69 ^ 0x384F078) & (4 * v68) ^ v68;
  v72 = ((4 * v70) ^ 0xEF5BE9F4) & v70 ^ (4 * v70) & 0x7BD6FA7C;
  v73 = (v72 ^ 0x6B52E870) & (16 * v71) ^ v71;
  v74 = ((16 * (v72 ^ 0x10841209)) ^ 0xBD6FA7D0) & (v72 ^ 0x10841209) ^ (16 * (v72 ^ 0x10841209)) & 0x7BD6FA70;
  v75 = v73 ^ 0x7BD6FA7D ^ (v74 ^ 0x3946A200) & (v73 << 8);
  v76 = v67 ^ (2 * ((v75 << 16) & 0x7BD60000 ^ v75 ^ ((v75 << 16) ^ 0x7A7D0000) & (((v74 ^ 0x4290582D) << 8) & 0x7BD60000 ^ 0x29040000 ^ (((v74 ^ 0x4290582D) << 8) ^ a53) & (v74 ^ 0x4290582D)))) ^ 0x2C386C73;
  v77 = (((v65 ^ 0xC55914A4) + 984017756) ^ ((v65 ^ 0xEB4C4E09) + 347320823) ^ ((v65 ^ 0xE09B3931) + 526698191)) + (((*(v66 + 76) ^ 0x9A40B505) + 1707035387) ^ ((*(v66 + 76) ^ 0x40DD083B) - 1088227387) ^ ((*(v66 + 76) ^ 0x1413DEA2) - 336846498)) + 390960013;
  *(v66 + 72) = v76;
  *(v66 + 76) = v77 ^ ((v77 ^ 0x8318A10B) + 114791074) ^ ((v77 ^ 0x62CB509A) - 419142863) ^ ((v77 ^ 0x745C823B) - 241978990) ^ ((v77 ^ 0xEFBFBFFF) + 1785760854) ^ 0xB4BEAFC9;
  v78 = STACK[0x4A0];
  v79 = (((LODWORD(STACK[0x2AC]) ^ 0xED8A22B5) + 309714251) ^ ((LODWORD(STACK[0x2AC]) ^ 0x453ECC7A) - 1161743482) ^ ((LODWORD(STACK[0x2AC]) ^ 0x663A8D53) - 1715113299)) + 382120919 + (((*(STACK[0x4A0] + 80) ^ 0xF9B50D04) + 105575164) ^ ((*(STACK[0x4A0] + 80) ^ 0x9CECDD73) + 1662198413) ^ ((*(STACK[0x4A0] + 80) ^ 0xABD7B3EB) + 1411927061));
  v80 = (((LODWORD(STACK[0x38C]) ^ 0xDCC3803) - 231487491) ^ ((LODWORD(STACK[0x38C]) ^ 0x24CE51DD) - 617501149) ^ ((LODWORD(STACK[0x38C]) ^ 0xE78C0A42) + 410252734)) - 768677128 + (((*(STACK[0x4A0] + 84) ^ 0x84DBAC58) + 2065978280) ^ ((*(STACK[0x4A0] + 84) ^ 0x48FE125A) - 1224610394) ^ ((*(STACK[0x4A0] + 84) ^ 0x2ABDD9E) - 44817822));
  v81 = (v80 ^ 0xCAEDDC7B) & (2 * (v80 & 0xCAEDDC40)) ^ v80 & 0xCAEDDC40;
  v82 = (2 * (v80 ^ 0xDAADC4FB)) & 0x104018BA ^ 0x10400889 ^ ((2 * (v80 ^ 0xDAADC4FB)) ^ 0x20803176) & (v80 ^ 0xDAADC4FB);
  v83 = (4 * v81) & v82 ^ v81 ^ ((4 * v81) & 0x10401000 | 0xA8);
  v84 = (4 * v82) & 0x104018B8 ^ 0x10401813 ^ ((4 * v82) ^ 0x410062EC) & v82;
  v85 = (16 * v83) & 0x104018A0 ^ v83 ^ ((16 * v83) ^ 0xA80) & v84;
  v86 = (16 * v84) & 0x104018B0 ^ 0x1040100B ^ ((16 * v84) ^ 0x4018BB0) & v84;
  v87 = v85 ^ 0x10401893 ^ (v85 << 8) & 0x10401800 ^ ((v85 << 8) ^ 0x82800) & v86;
  *(v78 + 80) = v79 ^ ((v79 ^ 0x53F11EAD) - 710472242) ^ ((v79 ^ 0xF3E0B0E) - 1989666705) ^ ((v79 ^ 0x5A9106CB) - 590932564) ^ ((v79 ^ 0x7FF7FFF7) - 106828648) ^ 0xB7278F03;
  *(v78 + 84) = v80 ^ (2 * ((v87 << 16) & 0x10400000 ^ v87 ^ ((v87 << 16) ^ 0x18BB0000) & ((v86 << 8) & 0x10400000 ^ 0x10400000 ^ ((v86 << 8) ^ 0x40180000) & v86))) ^ 0x4E38EAA;
  STACK[0x288] -= 320;
  return a65();
}

uint64_t sub_10003A990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v14 - 128) = v11;
  *(v14 - 112) = a11;
  *(v14 - 120) = v13 + 675097751 * ((((2 * (v14 - 128)) | 0xB0B1A3E4) - (v14 - 128) + 665267726) ^ 0x9B18F464) - 772;
  v15 = (*(v12 + 8 * (v13 + 1577)))(v14 - 128);
  return sub_10003A9F0(v15);
}

void sub_10003AA2C(unint64_t a1@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X6>, int a5@<W7>, uint64_t a6@<X8>)
{
  v19 = ((a2 ^ 0xCAF67CE5107D7BE9) + 0x3509831AEF828417) ^ ((a2 ^ 0x91DFBAFD6463716ALL) + 0x6E2045029B9C8E96) ^ ((a2 ^ v10) + v11);
  v20 = v15 + (((a5 + v9) ^ v12) + v19) * (v19 + v13);
  v21 = v20 - (((v20 * v16) >> 64) >> 31) * v17;
  v22 = v21 * v18 + (v14 ^ v8) * (v14 ^ v8) + a6;
  v23 = (v22 - (((v22 * a1) >> 64) >> 31) * a4) * v21;
  *(v7 + a3) = *(v6 + a3) ^ (v23 >> 15) ^ 0x20;
  *(v7 + (a3 | 1)) = *(v6 + (a3 | 1)) ^ (v23 >> 23) ^ 0x20;
  *(v7 + (a3 | 2)) = *(v6 + (a3 | 2)) ^ (v23 >> 31) ^ 0x20;
  *(v7 + (a3 | 3)) = *(v6 + (a3 | 3)) ^ (v23 >> 39) ^ 0x20;
  JUMPOUT(0x1000359ACLL);
}

uint64_t sub_10003AB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v15 = 675097751 * ((2 * ((v14 - 128) & 0x70DDB768) - (v14 - 128) + 253905043) ^ 0x4C626D05);
  *(v14 - 128) = v15 ^ 0x4413498A;
  *(v14 - 112) = v15 - 162245432;
  *(v14 - 108) = v15 + v12 + 856;
  *(v10 + 8) = &a10;
  v16 = (*(v11 + 8 * (v12 ^ 0x89D)))(v14 - 128);
  return (*(v11 + 8 * (((*(v14 - 124) == v13) * ((7 * (v12 ^ 0x2AA)) ^ 0xF57)) ^ v12)))(v16);
}

uint64_t sub_10003AC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, int a18, uint64_t a19, char a20)
{
  a18 = (((v21 + 405) | 0x34) ^ 0x1768D193) + v20;
  *(v23 - 112) = &a20;
  *(v23 - 120) = v21 + 675097751 * ((v23 - 276356824 - 2 * ((v23 - 128) & 0xEF8721A8)) ^ 0xACC7043E) - 315;
  *(v23 - 128) = a16;
  (*(v22 + 8 * (v21 ^ 0x80E)))(v23 - 128);
  *(v23 - 104) = &a17;
  *(v23 - 120) = a16;
  *(v23 - 112) = (v21 + 497) ^ (1361651671 * ((((v23 - 128) | 0xD422A836) - ((v23 - 128) & 0xD422A836)) ^ 0x9F496448));
  v24 = (*(v22 + 8 * (v21 + 2050)))(v23 - 128);
  return (*(v22 + 8 * ((*(v23 - 128) <= 0x5992245u) | v21)))(v24);
}

uint64_t sub_10003AD7C(double a1, int8x16_t a2, double a3, int8x16_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12)
{
  v18 = (v17 + (v12 + v13));
  v19 = *v18;
  v20 = v18[1];
  v21 = (v16 + v12);
  *v21 = vaddq_s8(vsubq_s8(v19, vandq_s8(vaddq_s8(v19, v19), a4)), a2);
  v21[1] = vaddq_s8(vsubq_s8(v20, vandq_s8(vaddq_s8(v20, v20), a4)), a2);
  return (*(v15 + 8 * (((v12 == 32) * a12) ^ (a8 + v14 + 554))))();
}

uint64_t sub_10003AE14(_DWORD *a1)
{
  v1 = 1361651671 * ((((2 * a1) | 0x5884BE60) - a1 + 1404936400) ^ 0xE729934E);
  v2 = a1[3] ^ v1;
  v3 = a1[4] ^ v1;
  v4 = *(*a1 + 4);
  v6 = v4 - 1365209361;
  v5 = v4 - 1365209361 < 0;
  v7 = 1365209361 - v4;
  if (!v5)
  {
    v7 = v6;
  }

  return (*(*(&off_1001252D0 + (v2 ^ 0x80C)) + ((((v3 - 1654923264) >= (4 * v7)) * ((v2 - 1657864402) & 0x62D0FFE9 ^ 0x7C6)) ^ v2) - 1))();
}

uint64_t sub_10003AEE4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, unsigned int a17)
{
  *a4 = 0;
  *a5 = 0;
  a17 = 1504884919 * (&a16 ^ 0xFBC3B71B) + 1212455568;
  v18 = (*(v17 + 22208))(&a16);
  return (*(v17 + 8 * ((3198 * (a16 == 1958853845)) ^ 0x53Cu)))(v18);
}

uint64_t sub_10003AF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v22 = *v19 ^ 0x6FFFFCBB;
  v23 = (v20 ^ 0xDFFFFF7B) & (2 * *v19);
  v24 = ((v21 - 575606504 - 2 * ((v21 - 128) & 0xDDB0F198)) ^ 0x26734683) * v16;
  *(v21 - 120) = a16;
  *(v21 - 128) = v24 + v22 + v23 - 1296851104;
  *(v21 - 124) = v20 - v24 + 1166;
  v25 = (*(v18 + 8 * v17))(v21 - 128);
  return (*(v18 + 8 * ((1916 * (*(v21 - 112) == ((a10 + 640) ^ 0x74C1B91A))) ^ a10)))(v25);
}

uint64_t sub_10003B160(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, int a59)
{
  v65 = (v59 - 1702) | a4;
  v67 = v60 + v62 > ((v65 - 692) | v61) + v63 || v60 + v62 < a59;
  return (*(v64 + 8 * ((35 * v67) ^ v65)))();
}

uint64_t sub_10003B1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, char a32)
{
  *(v35 - 112) = a14;
  *(v35 - 104) = &a32;
  *(v35 - 144) = &a30;
  *(v35 - 136) = v34 + 435584651 * ((((v35 - 144) | 0x5C1DBB7D) - ((v35 - 144) & 0x5C1DBB7D)) ^ 0x312FA12B) + 68;
  *(v35 - 128) = a13;
  *(v35 - 120) = &a32;
  v36 = (*(v33 + 8 * (v34 ^ 0x95B)))(v35 - 144);
  return (*(v33 + 8 * ((451 * (v32 - 181586625 >= ((v34 - 385) | 0x484u) + 2147481979)) ^ (v34 + 831))))(v36);
}

void sub_10003B3D0(uint64_t a1)
{
  v1 = *(a1 + 8) ^ (143681137 * (a1 ^ 0xE6A8AC10));
  __asm { BRAA            X14, X17 }
}

uint64_t sub_10003B670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = v65 - 256;
  STACK[0x458] = a64 + 128;
  v69 = 210068311 * ((((v66 - 192) ^ 0xFD530569) + 478930714 - 2 * (((v66 - 192) ^ 0xFD530569) & 0x1C8BE71A)) ^ 0xB6B778A4);
  *(v66 - 184) = v69 ^ 0x99739F6E;
  *(v66 - 176) = (v68 - 562358878) ^ v69;
  *(v66 - 192) = a64 + 128;
  v70 = (*(v67 + 8 * (v68 ^ 0xADF)))(v66 - 192);
  STACK[0x258] = *(a62 + 8 * v68);
  return sub_10001C508(v70, 42, 421, 959, v71, v72, v73, v74, 17, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, v64, a60, a61, a62);
}

uint64_t sub_10003B778@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, int a28, int a29, int a30, int a31)
{
  v37 = 1361651671 * ((0xEABA49B3BB04A2CFLL - (v35 | 0xEABA49B3BB04A2CFLL) + a26) ^ 0xC05824270F90914ELL);
  *(v36 - 104) = (v31 + 1893802746) ^ v37;
  *(v36 - 112) = (a1 + a31 + 3) - v37;
  *(v36 - 144) = a27 + v37;
  *(v36 - 140) = a29 - v37;
  *(v36 - 128) = (v32 + 1) ^ v37;
  *(v36 - 120) = v34 ^ v37;
  *(v36 - 116) = v37;
  v38 = (*(v33 + 8 * (v31 ^ (v31 - 1588))))(v36 - 144);
  return (*(v33 + 8 * *(v36 - 136)))(v38);
}

void sub_10003BC50(uint64_t a1)
{
  v1 = *(a1 + 8) - 435584651 * ((a1 + 1433583152 - 2 * (a1 & 0x5572BE30)) ^ 0x3840A466);
  __asm { BRAA            X15, X17 }
}

uint64_t sub_10003BDF4@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>, uint64_t a3)
{
  v6 = (a3 + v4);
  v6[-1] = a2;
  *v6 = a2;
  return (*(v5 + 8 * ((4079 * (((v3 + 762181603) & 0xD29207FF) - 2009 != (((v3 + 762181603) & 0xD29207FF ^ 0xFFFFFFFFFFFFF819) & a1))) ^ (v3 + 762181603) & 0xD29207FF)))();
}

uint64_t sub_10003C398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, unsigned int a12, char *a13, int a14)
{
  a12 = (50899313 * ((((2 * &a12) | 0x7BC7698A) - &a12 - 1038333125) ^ 0x17289EBF)) ^ 0x78C;
  a13 = &a10;
  v17 = (*(v14 + 22360))(&a12);
  return (*(v14 + 8 * (v15 | (4 * (a14 == v16)))))(v17);
}

uint64_t sub_10003C480@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  v7 = (v5 ^ a2 ^ 0xFFFFFFFFFFFFF6DELL) + v4;
  *(a1 + v7) = *(v3 + v7);
  return (*(v6 + 8 * ((991 * (v7 != 0)) ^ (v2 + v5 + 2011))))();
}

uint64_t sub_10003C4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, unsigned int a17)
{
  a17 = 1504884919 * (((&a16 | 0xCB0B78B6) - &a16 + (&a16 & 0x34F48748)) ^ 0x30C8CFAD) + 1212455568;
  v19 = (*(v18 + 22208))(&a16);
  return (*(v18 + 8 * ((123 * (a16 == 1958853845)) ^ v17)))(v19);
}

void sub_10003C748(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  *(v66 + 360) = v61;
  (*(v67 + 8 * (a1 + 2211)))(v64, 2, &STACK[0x244], v65, v63 - 1912886423 + 3 * ((a1 + 510) ^ 0x405u) - 282, v62, &STACK[0x2E8], &a61);
  JUMPOUT(0x10003C7B4);
}

uint64_t sub_10003C7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a1)
  {
    if (a1 == 268435459)
    {
      LODWORD(STACK[0x378]) = v66 - 161;
      return (*(a62 + 8 * (((STACK[0x2E8] == 0) * ((v67 ^ 0x834) + ((v67 + 473138147) & 0xE3CC7BAA) - 2508)) ^ (v67 + 2442))))(a1, STACK[0x2E8], a3, a4, a5, a6);
    }

    else
    {
      v71 = 143681137 * ((((v68 - 192) | 0xECCAF5E8) - (v68 - 192) + ((v68 - 192) & 0x13350A10)) ^ 0xA6259F8);
      *(v68 - 192) = ((a1 ^ 0xFDDDBFD7) + 1994652926 + ((2 * a1) & 0xFBBB7FAE)) ^ v71;
      *(v68 - 188) = v71 + v67 + 642;
      *(v68 - 184) = &STACK[0x378];
      v72 = (*(a62 + 8 * (v67 + 2533)))(v68 - 192);
      return (*(a62 + 8 * (((STACK[0x2E8] == 0) * ((v67 ^ 0x834) + ((v67 + 473138147) & 0xE3CC7BAA) - 2508)) ^ (v67 + 2442))))(v72);
    }
  }

  else
  {
    LODWORD(STACK[0x304]) = 1735272405;
    STACK[0x450] = STACK[0x2E8];
    HIDWORD(a41) = (a66 ^ 0xF60F5D9F) + 2079651576 + ((2 * a66) & 0xEC1EBB3E);
    STACK[0x318] = STACK[0x368];
    STACK[0x440] = STACK[0x380];
    v70 = &STACK[0x500] + STACK[0x288];
    STACK[0x2F8] = v70;
    STACK[0x308] = (v70 + 128);
    *v70 = 0x6370646600;
    v70[8] = 1;
    return sub_10003C8E0(a1, a2, a3, a4, a5, a6, a7, 1958853845, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, v70 + 128, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41);
  }
}

uint64_t sub_10003C8E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v5 + 522786517) & 0xE0D6EE33;
  STACK[0x288] = v7 + v4 - 1507;
  return (*(v6 + 8 * (((((v7 - 1158) ^ 0x1BD) == 32) * ((v7 - 1289) ^ 0x173)) ^ v7)))(a1, a2, a3, 445, 4140955821, 729234527, 154011474);
}

uint64_t sub_10003CBFC()
{
  v5 = 675097751 * ((1799095647 - ((v4 - 136) | 0x6B3C055F) + ((v4 - 136) | 0x94C3FAA0)) ^ 0xD783DF36);
  *(v0 + 1232) = v3;
  *(v4 - 120) = v5 - 233716451;
  *(v4 - 116) = v5 + v1 + 247;
  *(v4 - 136) = v5 ^ 0x4413498A;
  v6 = (*(v2 + 8 * (v1 ^ 0xE3E)))(v4 - 136);
  return (*(v2 + 8 * ((504 * (*(v4 - 132) == ((v1 + 233934864) ^ 0x7930283F))) ^ v1)))(v6);
}

uint64_t sub_10003CCC4(uint64_t a1)
{
  v8 = v5 - 1;
  *(a1 + v8) = *(v6 + v8) ^ ((v4 + 76) | 0xB0) ^ *(v2 + (v8 & 0xF)) ^ *((v8 & 0xF) + v1 + 2) ^ (125 * (v8 & 0xF)) ^ *(v3 + (v8 & 0xF)) ^ 0xD1;
  return (*(v7 + 8 * ((2841 * (v8 == 0)) ^ v4)))();
}

uint64_t sub_10003CDA8@<X0>(uint64_t a1@<X8>)
{
  v11 = (v10 - 1262759405) & 0x4B442D7F;
  *(v9 + 4 * v8) = v2 + v11 + HIDWORD(a1) - (v5 & (2 * HIDWORD(a1))) - 1139;
  return (*(v7 + 8 * ((((((v11 + v3 + v6) | 0xC) + 1673) ^ (v11 + v3) & (v6 + 2111)) * (v4 + 1 == v1)) ^ v11)))();
}

uint64_t sub_10003CFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (v6 == -233716451 || v6 == 1088345418 || v6 == -117298495)
  {
    return sub_10003D0C0(v9 - 192, 13, 194, 210, (v7 - 1464), a6, 150987823);
  }

  else
  {
    return (*(v8 + 8 * ((v7 - 1428) ^ (2423 * ((v10 & 8) == 0)))))();
  }
}

uint64_t sub_10003D0C0@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, char a3@<W2>, char a4@<W3>, int a5@<W6>, int a6@<W8>)
{
  v15 = *(v14 + 8 * v12);
  v16 = a5 + a6;
  v17 = *(v13 + 8 * v6) - 8;
  v18 = *(v13 + 8 * v7);
  v19 = *(v13 + 8 * v8) - 12;
  *(a1 + (a5 + a6)) = *(v17 + ((a5 + a6) & 0xC)) ^ HIBYTE(v9) ^ (((a5 + a6) & 0xC) * v10) ^ *(((a5 + a6) & 0xC) + v18 + 5) ^ *(v19 + ((a5 + a6) & 0xC) + 1) ^ v11;
  *(a1 + (v16 + 1)) = (((v16 + 1) & a2) * v10) ^ BYTE2(v9) ^ *(v17 + ((v16 + 1) & a2)) ^ *(((v16 + 1) & a2) + v18 + 5) ^ *(((v16 + 1) & a2) + v19 + 1) ^ a3;
  *(a1 + (v16 + 2)) = (((v16 + 2) & 0xE) * v10) ^ BYTE1(v9) ^ *(v17 + ((v16 + 2) & 0xELL)) ^ *(((v16 + 2) & 0xELL) + v18 + 5) ^ *(v19 + ((v16 + 2) & 0xELL) + 1) ^ a4;
  v20 = (a5 + a6 + 3);
  *(a1 + v20) = v9 ^ (v20 * v10) ^ *(v17 + v20) ^ *(v20 + v18 + 5) ^ *(v20 + v19 + 1) ^ 0xF3;
  return v15();
}

uint64_t sub_10003D20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17)
{
  v22 = v17[1];
  v26 = *v17;
  v23 = v17[2];
  a17 = (v20 + 917) ^ ((((&a14 | 0xD0525975) + (~&a14 | 0x2FADA68A)) ^ 0xFA99730E) * v21);
  a15 = v23;
  a16 = a12;
  (*(v18 + 8 * (v20 + 2584)))(&a14);
  a15 = v22;
  a16 = a12;
  a17 = (v20 + 917) ^ ((((&a14 ^ 0x2C604C1D | 0xAA55BF7B) - (&a14 ^ 0x2C604C1D) + ((&a14 ^ 0x2C604C1D) & 0x55AA4084)) ^ 0xACFED91C) * v21);
  (*(v18 + 8 * (v20 ^ 0xBE8)))(&a14);
  HIDWORD(a16) = v20 - ((2 * (&a14 & 0x4E3C8A60) - &a14 + 834893215) ^ 0xC7E2D1B3) * v19 + 1223;
  a14 = a12;
  a15 = v26;
  v24 = (*(v18 + 8 * (v20 ^ 0xA66)))(&a14);
  return (*(v18 + 8 * (((a16 == 1958853845) * (((v20 - 155) | 0x60A) - 685)) ^ v20)))(v24);
}

uint64_t sub_10003D42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11)
{
  v13 = v12 - 1126;
  v14 = (*(v11 + 8 * (v13 ^ 0xE5E)))(a11) == 0;
  return (*(v11 + 8 * ((v14 * ((v13 + 891) ^ v13 ^ 0xD75)) ^ v13)))();
}

uint64_t sub_10003D56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, uint64_t a13, uint64_t a14, int a15, char a16, uint64_t a17, uint64_t a18, char *a19, unsigned int a20)
{
  a20 = (v21 - 582) ^ (843532609 * (((&a17 | 0xDCD69084) - (&a17 & 0xDCD69084)) ^ 0x809BC401));
  a17 = a14;
  a19 = &a16;
  (*(v22 + 8 * (v21 ^ 0x955)))(&a17);
  a20 = (v21 - 582) ^ (843532609 * ((&a17 + 536187692 - 2 * (&a17 & 0x1FF5932C)) ^ 0x43B8C7A9));
  a19 = &a10;
  a17 = a14;
  (*(v22 + 8 * (v21 + 1747)))(&a17);
  a20 = (v21 - 582) ^ (843532609 * ((((&a17 | 0xFF322D8C) ^ 0xFFFFFFFE) - (~&a17 | 0xCDD273)) ^ 0x5C8086F6));
  a17 = a14;
  a19 = &a12;
  (*(v22 + 8 * (v21 + 1747)))(&a17);
  a18 = a14;
  LODWORD(a17) = v21 + 843532609 * ((1475710891 - (&a17 | 0x57F58FAB) + (&a17 | 0xA80A7054)) ^ 0xF44724D1) - 736;
  v24 = (*(v22 + 8 * (v21 + 1755)))(&a17);
  return (*(v22 + 8 * (((a19 == v23) * ((v21 + 2130678302) & 0xEF7E7F7B ^ (v20 + 258))) ^ v21)))(v24);
}

void sub_10003D730()
{
  v0 = *(&off_1001252D0 + ((11 * ((qword_10013EA10 + dword_10013EA38) ^ 8)) ^ byte_1000EC720[byte_1000E7D70[(11 * ((qword_10013EA10 + dword_10013EA38) ^ 8))] ^ 0xA0]) + 40);
  v1 = *(v0 - 4);
  v2 = *(&off_1001252D0 + (byte_1000EC820[byte_1000E7E70[(11 * (v1 ^ qword_10013EA10 ^ 8))] ^ 0xA3] ^ (11 * (v1 ^ qword_10013EA10 ^ 8))) + 11);
  v3 = 1405565963 * (&v6[v1 + *v2] ^ 0xBCA8FC1BD5CAFD08);
  *(v0 - 4) = v3;
  *v2 = v3;
  LOBYTE(v3) = 11 * (*(v0 - 4) ^ 8 ^ v3);
  **(&off_1001252D0 + (v3 ^ byte_1000EC820[byte_1000E7E70[v3] ^ 0xA3]) - 30) = 1958853845;
  v4 = *(&off_1001252D0 + ((11 * ((qword_10013EA10 + dword_10013EA38) ^ 8)) ^ byte_1000EC820[byte_1000E7E70[(11 * ((qword_10013EA10 + dword_10013EA38) ^ 8))] ^ 0x60]) + 76) - 8;
  v5 = (*&v4[8 * (byte_1000EC720[byte_1000E7D70[(11 * ((*v2 - *(v0 - 4)) ^ 8))] ^ 0x51] ^ (11 * ((*v2 - *(v0 - 4)) ^ 8))) + 21560])(512, 0x100004077774924);
  **(&off_1001252D0 + ((11 * ((*v2 + *(v0 - 4)) ^ 8)) ^ byte_1000EC720[byte_1000E7D70[(11 * ((*v2 + *(v0 - 4)) ^ 8))] ^ 0xA0])) = v5;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10003D980@<X0>(uint64_t *a1@<X2>, int a2@<W8>)
{
  v4 = *a1;
  v5 = a1[5];
  memset(v9, 32, sizeof(v9));
  v6 = 1037613739 * ((((2 * (v3 - 160)) | 0x21A11B0A) - (v3 - 160) + 1865380475) ^ 0x41D2A0FA);
  *(v3 - 160) = v6 + 477235488;
  *(v3 - 152) = v9;
  *(v3 - 144) = v5;
  *(v3 - 128) = (a2 + 2502) ^ v6;
  *(v3 - 120) = v4;
  *(v3 - 136) = &v10;
  result = (*(v2 + 8 * (a2 ^ 0xAE8)))(v3 - 160);
  *(a1 + 12) = *(v3 - 124);
  return result;
}

uint64_t sub_10003DAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, uint64_t *a11, int a12, int a13, uint64_t a14)
{
  v17 = 742307843 * (&a10 ^ 0x1E228D55);
  a14 = v14;
  a12 = (v15 - 79) ^ v17;
  a13 = v17 ^ 0x61F090D1;
  a11 = &a9;
  a10 = v17 ^ 0xD0F73E56;
  v18 = (*(v16 + 8 * (v15 + 2228)))(&a10);
  return (*(v16 + 8 * ((112 * (*(v14 + 24) != ((((v15 + 1546402992) & 0xA3D3C37F) + 1958851568) ^ ((v15 + 2004) | 0x99)))) ^ v15)))(v18);
}

uint64_t sub_10003DCC0@<X0>(unsigned int a1@<W2>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int a52, uint64_t a53, uint64_t a54, int a55, int a56, uint64_t a57)
{
  v62 = 1785193651 * ((1045050697 - ((v60 - 192) | 0x3E4A3549) + ((v60 - 192) | 0xC1B5CAB6)) ^ 0x37946E9A);
  *(v60 - 128) = v62 + (v59 ^ 0x7AA39BFE) + ((2 * v59) & 0xF54737FC) + v58 + 345 - 2013267069;
  *(v60 - 192) = v57 + 1168;
  *(v60 - 184) = &STACK[0x500] + a28;
  *(v60 - 176) = &STACK[0x428];
  *(v60 - 160) = 0;
  *(v60 - 152) = a2 + 800;
  *(v60 - 168) = (a56 + 1342) ^ v62;
  *(v60 - 144) = a2 + 528;
  *(v60 - 136) = 0;
  (*(v61 + 8 * a52))(v60 - 192);
  return (*(a57 + 8 * ((1771 * (*(v60 - 164) == 1958853845)) ^ (a56 + 19))))(1371, 834, a1, 361, 427, 1013535626, 3281430363);
}

uint64_t sub_10003DF8C(uint64_t a1)
{
  v6 = (((v4 + v1) | 0x140u) ^ 0xFFFFFFFFFFFFFC9BLL) + v3;
  v7 = *(v2 + v6 - 15);
  v8 = *(v2 + v6 - 31);
  v9 = a1 + v6;
  *(v9 - 15) = v7;
  *(v9 - 31) = v8;
  return (*(v5 + 8 * ((14 * ((v3 & 0xFFFFFFE0) == 32)) | (v4 + v1 + 93))))();
}

uint64_t sub_10003DFF0@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  v4 = v2 + 484;
  v5 = (v2 + 55) | 0xA0;
  v6 = (v2 + 484) ^ 0x6E5;
  if ((a1 - 1) >> 32)
  {
    v7 = 0;
  }

  else
  {
    v7 = (a2 ^ 0xFFFFFC5F ^ v5) >= a1 - 1;
  }

  v8 = !v7;
  return (*(v3 + 8 * ((22 * (((v6 ^ v8) & 1) == 0)) ^ v4)))();
}

uint64_t sub_10003E0E0@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(v3 + v5) = *(a1 + v5) + 11 * (v1 ^ 0xD6) - ((2 * *(a1 + v5)) & 0x40) - 21;
  return (*(v4 + 8 * ((21 * (v5 == 0)) ^ v1)))();
}

void sub_10003E250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  v13 = (v10 ^ 0xBB504C12) & (2 * ((v12 + v11 + 209) & v10)) ^ (v12 + v11 + 209) & v10;
  v14 = ((2 * (v10 ^ 0x93589036)) ^ 0x5E19FC4A) & (v10 ^ 0x93589036) ^ (2 * (v10 ^ 0x93589036)) & 0x2F0CFE24;
  v15 = v14 ^ 0x21040225;
  v16 = (v14 ^ 0x204FA21) & (4 * v13) ^ v13;
  v17 = ((4 * v15) ^ 0xBC33F894) & v15 ^ (4 * v15) & 0x2F0CFE24;
  v18 = (v17 ^ 0x2C00F801) & (16 * v16) ^ v16;
  v19 = ((16 * (v17 ^ 0x30C0621)) ^ 0xF0CFE250) & (v17 ^ 0x30C0621) ^ (16 * (v17 ^ 0x30C0621)) & 0x2F0CFE20;
  v20 = v18 ^ 0x2F0CFE25 ^ (v19 ^ 0x200CE225) & (v18 << 8);
  v21 = v10 ^ (2 * ((v20 << 16) & 0x2F0C0000 ^ v20 ^ ((v20 << 16) ^ 0x7E250000) & (((v19 ^ 0xF001C25) << 8) & 0x2F0C0000 ^ 0x23000000 ^ (((v19 ^ 0xF001C25) << 8) ^ 0xCFE0000) & (v19 ^ 0xF001C25))));
  *a9 = (HIBYTE(v21) ^ 0xBE) - ((2 * (HIBYTE(v21) ^ 0xBE)) & 0x40) + 32;
  a9[1] = (BYTE2(v21) ^ 0x45) - ((v21 >> 15) & 0x40) + 32;
  a9[2] = (BYTE1(v21) ^ 0x92) - ((v21 >> 7) & 0x40) + 32;
  a9[3] = v21 ^ 0x79;
  v22 = v9 - ((2 * v9) & 0x2F27B9940295A5EALL) - 0x686C2335FEB52D0BLL;
  a9[4] = (HIBYTE(v22) ^ 0x97) - ((2 * HIBYTE(v22)) & 0x40) + 32;
  a9[5] = (BYTE6(v22) ^ 0x93) + (~(2 * BYTE6(v22)) | 0xBF) + 33;
  a9[6] = (BYTE5(v22) ^ 0xDC) - ((2 * BYTE5(v22)) & 0x40) + 32;
  a9[7] = (BYTE4(v22) ^ 0xCA) - ((2 * BYTE4(v22)) & 0x40) + 32;
  a9[8] = (((v9 - ((2 * v9) & 0x295A5EA) + 21680885) >> 24) ^ 1) - ((2 * ((v9 - ((2 * v9) & 0x295A5EA) + 21680885) >> 24)) & 0x40) + 32;
  a9[9] = (BYTE2(v22) ^ 0x4A) + (~(2 * BYTE2(v22)) | 0xBF) + 33;
  a9[10] = (BYTE1(v22) ^ 0xD2) - ((2 * BYTE1(v22)) & 0x40) + 32;
  a9[11] = (v9 - ((2 * v9) & 0xEA) - 11) ^ 0xD5;
  JUMPOUT(0x100012324);
}

uint64_t sub_10003E7E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, unsigned int a33, unsigned int a34, unsigned int a35, unsigned int a36, int a37, int a38, char a39, __int16 a40, char a41)
{
  v122 = 107 * (v47 ^ (v47 - 2));
  v48 = vdupq_n_s32(0xF283947E);
  v49.n128_u64[0] = 0x2020202020202020;
  v49.n128_u64[1] = 0x2020202020202020;
  v50 = vdupq_n_s32(0xF941CA3F);
  v51.n128_u64[0] = 0x4040404040404040;
  v51.n128_u64[1] = 0x4040404040404040;
  v121 = *(v44 + 8 * v41);
  v52 = (&a41 + a7);
  v53 = a34;
  v54 = a35;
  v55 = a36;
  v56 = (a39 - ((2 * a39) & 0xA) + 7);
  if (v56 == 9)
  {
    v124 = vld4q_s8(&a23);
    v86 = veorq_s8(v124.val[0], v49);
    v87 = vmovl_high_u8(v86);
    v88 = vmovl_u8(*v86.i8);
    v89 = veorq_s8(v124.val[1], v49);
    _Q21 = vmovl_high_u8(v89);
    _Q20 = vmovl_u8(*v89.i8);
    v92 = vshll_n_s16(*_Q20.i8, 0x10uLL);
    __asm { SHLL2           V20.4S, V20.8H, #0x10 }

    v93 = vshll_n_s16(*_Q21.i8, 0x10uLL);
    __asm { SHLL2           V21.4S, V21.8H, #0x10 }

    v94 = veorq_s8(v124.val[2], v49);
    v95 = vmovl_u8(*v94.i8);
    v96 = vmovl_high_u8(v94);
    v124.val[0] = veorq_s8(v124.val[3], v49);
    v124.val[1] = vmovl_u8(*v124.val[0].i8);
    v124.val[2] = vmovl_u16(*v124.val[1].i8);
    v124.val[0] = vmovl_high_u8(v124.val[0]);
    v124.val[3] = vmovl_u16(*v124.val[0].i8);
    v124.val[0] = vorrq_s8(vorrq_s8(vorrq_s8(_Q21, vshll_high_n_u16(v96, 8uLL)), vshlq_n_s32(vmovl_high_u16(v87), 0x18uLL)), vmovl_high_u16(v124.val[0]));
    v124.val[3] = vorrq_s8(vorrq_s8(vorrq_s8(v93, vshll_n_u16(*v96.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v87.i8), 0x18uLL)), v124.val[3]);
    v124.val[1] = vorrq_s8(vorrq_s8(vorrq_s8(_Q20, vshll_high_n_u16(v95, 8uLL)), vshlq_n_s32(vmovl_high_u16(v88), 0x18uLL)), vmovl_high_u16(v124.val[1]));
    v124.val[2] = vorrq_s8(vorrq_s8(vorrq_s8(v92, vshll_n_u16(*v95.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v88.i8), 0x18uLL)), v124.val[2]);
    *v52 = vaddq_s32(vsubq_s32(v124.val[2], vandq_s8(vaddq_s32(v124.val[2], v124.val[2]), v48)), v50);
    v52[1] = vaddq_s32(vsubq_s32(v124.val[1], vandq_s8(vaddq_s32(v124.val[1], v124.val[1]), v48)), v50);
    v52[2] = vaddq_s32(vsubq_s32(v124.val[3], vandq_s8(vaddq_s32(v124.val[3], v124.val[3]), v48)), v50);
    v52[3] = vaddq_s32(vsubq_s32(v124.val[0], vandq_s8(vaddq_s32(v124.val[0], v124.val[0]), v48)), v50);
    v97 = &v52[35124079].u32[v45 + 2];
    v98 = *(v97 - 16);
    *v97 = ((v122 ^ 0x27) + 1683819541) ^ __ROR4__(*(v97 - 3) ^ v43 ^ *(v97 - 8) ^ *(v97 - 14) ^ v98, 31);
    v99 = *(v44 + 8 * ((39 * (v46 == 140496255)) ^ v122));
    return v99(v99, 66, v98, v122, 39, v54, v55, v53, a9, a10, a11);
  }

  else if (v56 == 6)
  {
    v123 = vld4q_s8(&a23);
    v57 = veorq_s8(v123.val[0], v49);
    v58 = vmovl_u8(*v57.i8);
    v59 = vmovl_u16(*v58.i8);
    v60 = vmovl_high_u8(v57);
    v61 = vmovl_u16(*v60.i8);
    v62 = veorq_s8(v123.val[1], v49);
    v63 = vmovl_high_u8(v62);
    v64 = vmovl_u8(*v62.i8);
    v65 = vorrq_s8(vshll_high_n_u16(v63, 8uLL), vmovl_high_u16(v60));
    v66 = vorrq_s8(vshll_n_u16(*v63.i8, 8uLL), v61);
    v67 = vorrq_s8(vshll_high_n_u16(v64, 8uLL), vmovl_high_u16(v58));
    v68 = vorrq_s8(vshll_n_u16(*v64.i8, 8uLL), v59);
    v69 = veorq_s8(v123.val[2], v49);
    _Q21 = vmovl_u8(*v69.i8);
    _Q20 = vmovl_high_u8(v69);
    __asm
    {
      SHLL2           V22.4S, V20.8H, #0x10
      SHLL2           V23.4S, V21.8H, #0x10
    }

    v123.val[0] = veorq_s8(v123.val[3], v49);
    v123.val[1] = vmovl_high_u8(v123.val[0]);
    v123.val[0] = vmovl_u8(*v123.val[0].i8);
    v123.val[2] = vorrq_s8(vorrq_s8(v65, _Q22), vshlq_n_s32(vmovl_high_u16(v123.val[1]), 0x18uLL));
    v123.val[1] = vorrq_s8(vorrq_s8(v66, vshll_n_s16(*_Q20.i8, 0x10uLL)), vshlq_n_s32(vmovl_u16(*v123.val[1].i8), 0x18uLL));
    v123.val[3] = vorrq_s8(vorrq_s8(v67, _Q23), vshlq_n_s32(vmovl_high_u16(v123.val[0]), 0x18uLL));
    v123.val[0] = vorrq_s8(vorrq_s8(v68, vshll_n_s16(*_Q21.i8, 0x10uLL)), vshlq_n_s32(vmovl_u16(*v123.val[0].i8), 0x18uLL));
    *v52 = vaddq_s32(vsubq_s32(v123.val[0], vandq_s8(vaddq_s32(v123.val[0], v123.val[0]), v48)), v50);
    v52[1] = vaddq_s32(vsubq_s32(v123.val[3], vandq_s8(vaddq_s32(v123.val[3], v123.val[3]), v48)), v50);
    v52[2] = vaddq_s32(vsubq_s32(v123.val[1], vandq_s8(vaddq_s32(v123.val[1], v123.val[1]), v48)), v50);
    v52[3] = vaddq_s32(vsubq_s32(v123.val[2], vandq_s8(vaddq_s32(v123.val[2], v123.val[2]), v48)), v50);
    v78 = *(*(&off_1001252D0 + a3 + v47 - 396) + v46 + v45 - 28) + 1808038861;
    v79 = (2 * (v78 & 0x411)) & (v78 ^ 0x22DE9BEB) ^ ((2 * (v78 & 0x411)) | v78 & 0x411) ^ 0xB6E51FFA;
    v80 = ((2 * (v78 ^ 0x22DE9BEB)) ^ 0x490A27F4) & (v78 ^ 0x22DE9BEB) ^ (2 * (v78 ^ 0x22DE9BEB)) & 0x2250FFA;
    v81 = v80 & 0x48008074 ^ v79 ^ ((4 * v79) ^ 0x794EF9C) & (v80 ^ 0xB4C01FF2);
    v82 = ((4 * v80) ^ 0xF00EFB4) & (v80 ^ 0xB4C01FF2) ^ v80 & 0x48008074;
    v83 = v81 ^ v82 & 0xDC009074 ^ ((16 * v81) ^ 0xF25068D4) & (v82 ^ 0x9400107A);
    v84 = ((16 * v82) ^ 0x9C019774) & (v82 ^ 0x9400107A) ^ v82 & 0xDC009074;
    return (*(v44 + 8 * (a3 + v47 - 122)))((a3 + v47 - 122), 66, (a3 + v47 - 530) | 0x1A0u, 140496318, *(&off_1001252D0 + ((a3 + v47 - 122) ^ 0x182)) - 4, v83 ^ v84 & 0xDC009074 ^ ((v83 << 8) ^ 0x391F6A74) & (v84 ^ 0x940010FA), v55, v53, a9, a10, a11);
  }

  else
  {
    v100 = (((a33 ^ 0x10512C6F) - 273755247) ^ ((a33 ^ 0x7BB6FD49) - 2075589961) ^ ((a33 ^ 0xA569B2BA) + 1519799622)) + (((a33 ^ 0x77145243) - 1997820483) ^ ((a33 ^ 0x89850843) + 1987770301) ^ ((a33 ^ 0x301F399C) - 807352732)) + 143160057;
    v101 = (v100 ^ 0x54C6473E) & (2 * (v100 & 0x9494543F)) ^ v100 & 0x9494543F;
    v102 = ((2 * (v100 ^ 0x5DE6EF56)) ^ 0x92E576D2) & (v100 ^ 0x5DE6EF56) ^ (2 * (v100 ^ 0x5DE6EF56)) & 0xC972BB68;
    v103 = v102 ^ 0x49128929;
    v104 = (v102 ^ 0x80603040) & (4 * v101) ^ v101;
    v105 = ((4 * v103) ^ 0x25CAEDA4) & v103 ^ (4 * v103) & 0xC972BB68;
    v106 = (v105 ^ 0x142A920) & (16 * v104) ^ v104;
    v107 = ((16 * (v105 ^ 0xC8301249)) ^ 0x972BB690) & (v105 ^ 0xC8301249) ^ (16 * (v105 ^ 0xC8301249)) & 0xC972BB60;
    v108 = v106 ^ 0xC972BB69 ^ (v107 ^ 0x8122B200) & (v106 << 8);
    v109 = v100 ^ (2 * ((v108 << 16) & 0x49720000 ^ v108 ^ ((v108 << 16) ^ 0x3B690000) & (((v107 ^ 0x48500969) << 8) & 0x49720000 ^ 0x9400000 ^ (((v107 ^ 0x48500969) << 8) ^ 0x72BB0000) & (v107 ^ 0x48500969))));
    v110 = (((a34 ^ 0x4B6E7CD1) - 1265532113) ^ ((a34 ^ 0xD6B8B3E2) + 692538398) ^ ((a34 ^ 0x5358ACAF) - 1398320303)) + (((a34 ^ 0x977B8B2B) + 1753511125) ^ ((a34 ^ 0x2CA874D6) - 749237462) ^ ((a34 ^ 0x755D9C61) - 1969069153)) + 101965544;
    v111 = (v110 ^ 0x47C8CA10) & (2 * (v110 & 0x9708E850)) ^ v110 & 0x9708E850;
    v112 = ((2 * (v110 ^ 0x43D9DAB0)) ^ 0xA9A265C0) & (v110 ^ 0x43D9DAB0) ^ (2 * (v110 ^ 0x43D9DAB0)) & v42;
    v113 = v112 ^ 0x54511220;
    v114 = (v112 ^ 0x800020C0) & (4 * v111) ^ v111;
    v115 = ((4 * v113) ^ 0x5344CB80) & v113 ^ (4 * v113) & v42;
    v116 = (v115 ^ 0x50400280) & (16 * v114) ^ v114;
    v117 = ((16 * (v115 ^ 0x84913060)) ^ 0x4D132E00) & (v115 ^ 0x84913060) ^ (16 * (v115 ^ 0x84913060)) & v42;
    v118 = v116 ^ v42 ^ (v117 ^ 0x44112200) & (v116 << 8);
    a33 = v109 ^ 0xDA3F4171;
    a34 = v110 ^ (2 * ((v118 << 16) & 0x54D10000 ^ v118 ^ ((v118 << 16) ^ 0x32E00000) & (((v117 ^ 0x90C010E0) << 8) & 0x54D10000 ^ 0x4C10000 ^ (((v117 ^ 0x90C010E0) << 8) ^ 0x51320000) & (v117 ^ 0x90C010E0)))) ^ 0xD1A4EE0C;
    v119 = (((a35 ^ 0x117DBCBF) - 293452991) ^ ((a35 ^ 0xEB985FCE) + 342335538) ^ ((a35 ^ 0x346B80ED) - 879460589)) + (((a35 ^ 0xB4ECB60C) + 1259555316) ^ ((a35 ^ 0xD55B138F) + 715451505) ^ ((a35 ^ 0xAF39C61F) + 1355168225)) - 862906956;
    v120 = (((a36 ^ 0x82E4E522) + 2098928350) ^ ((a36 ^ 0xF42A027F) + 198573441) ^ ((a36 ^ 0xB84084C1) + 1203731263)) + (((a36 ^ 0xED73BD3B) + 311182021) ^ ((a36 ^ 0x29E41328) - 702812968) ^ ((a36 ^ 0xA19CD8F) - 169463183)) - 461868374;
    a35 = v119 ^ ((v119 ^ 0x6FC0BD20) - 1085600604) ^ ((v119 ^ 0x18AC9A60) - 936956956) ^ ((v119 ^ 0x75C796C3) - 1521735871) ^ ((v119 ^ 0x2DDFFFFF) - 44806531) ^ 0xE1FA2DE0;
    a36 = v120 ^ ((v120 ^ 0xB8256CB5) + 8468537) ^ ((v120 ^ 0x705240AC) - 923397086) ^ ((v120 ^ 0x72DB7A96) - 897634788) ^ ((v120 ^ 0xFDF7FDFD) + 1163110769) ^ 0x89D5C8EE;
    return v121(v48, v49, v50, v51);
  }
}

uint64_t sub_10003FA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v21 = ((v20 - 144) ^ 0x43402596) * v16;
  *(v20 - 144) = v19 - v21 + 34;
  *(v20 - 140) = v18 + 1962433959 + v21 - ((2 * v18 - 363173252) & 0xFF9650D2) + 38 * (v19 ^ 0x242) - 152;
  *(v20 - 128) = a15;
  v22 = (*(v15 + 8 * (v19 ^ 0x952)))(v20 - 144);
  return (*(v15 + 8 * ((207 * (*(v20 - 136) != v17)) ^ v19)))(v22);
}

uint64_t sub_10003FB04()
{
  STACK[0x288] -= 1616;
  LODWORD(STACK[0x378]) = 1958811660;
  return (*(v1 + 8 * (((STACK[0x2E8] == 0) * ((v0 ^ 0x834) + ((v0 + 473138147) & 0xE3CC7BAA) - 2508)) ^ (v0 + 2442))))();
}

uint64_t sub_10003FBA0@<X0>(int a1@<W5>, uint64_t a2@<X8>)
{
  v7 = *(a2 + v2 + 72);
  v8 = (v5 ^ v2) + ((2 * v2) & 0x3F6EF9D8) + a1;
  *(v4 + v8) = (HIBYTE(v7) ^ 0xCE) - ((v7 >> 23) & 0x40) + 32;
  *(v4 + v8 + 1) = (BYTE2(v7) ^ 0x8E) - ((v7 >> 15) & 0x40) + 32;
  *(v4 + v8 + 2) = (BYTE1(v7) ^ 0x63) - ((2 * (BYTE1(v7) ^ 0x63)) & 0x40) + 32;
  *(v4 + v8 + 3) = v7 ^ 0xBC;
  return (*(v6 + 8 * ((3617 * (v2 + 4 < *(a2 + 92))) ^ v3)))();
}

uint64_t sub_10003FD18(uint64_t a1)
{
  v5 = *v3 - 1953388919;
  v7 = v5 > 0xF3410D68 && v5 <= *(a1 + 12) - v2 - 1967866197;
  return (*(v1 + 8 * ((v7 * (((v4 - 1588) | 0x208) ^ ((v4 + 589) | 0x20) ^ 0x9DF)) ^ v4)))();
}

uint64_t sub_10003FDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  *(v22 - 120) = &a17;
  *(v22 - 112) = &a19;
  *(v22 - 128) = v21 + 742307843 * ((v22 - 777578194 - 2 * ((v22 - 128) & 0xD1A719AE)) ^ 0xCF8594FB) - 1316;
  v23 = (*(v20 + 8 * (v21 + 261)))(v22 - 128);
  return (*(v20 + 8 * ((21 * (v19 != 1)) ^ v21)))(v23);
}

uint64_t sub_10003FED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16)
{
  *(v20 - 136) = a12;
  *(v20 - 128) = a16;
  *(v20 - 120) = v16 + 1785193651 * ((-1136407723 - (v18 | 0xBC43CB55) + a10) ^ 0xB59D9086) + 802;
  *(v20 - 112) = v17;
  *(v20 - 104) = v17;
  v21 = (*(v19 + 8 * (v16 ^ 0xEE2)))(v20 - 136);
  v22 = ((a14 >> (v16 - 12)) & a11) == ((v16 + 1433405042) & 0xAA8FF7F5 ^ 0x275);
  return (*(v19 + 8 * ((v22 | (32 * v22)) ^ (v16 + 192))))(v21);
}

void sub_10003FEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31)
{
  if (((((~(v32 - 1901) + v34) ^ (v31 - (v32 - 1901))) - 1) & ((v32 - 1901) - v34)) <= ((v32 - 941) ^ 0xFFFFFFFFFFFFFC3CLL))
  {
    v35 = *v33 ^ a31;
  }

  else
  {
    v35 = (*v33 ^ a31) + 1;
  }

  *v33 = v35;
  JUMPOUT(0x100011300);
}

uint64_t sub_10003FF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v30 = *(v26 + 48);
  *(v28 - 112) = veorq_s8(**v26, xmmword_1000F0C50);
  if (v29)
  {
    v31 = v30 == 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = !v31;
  v33 = *(v27 + 8 * ((246 * v32) ^ a1));
  *(v28 - 172) = -42900;
  *(v28 - 184) = v27;
  return v33(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_10003FFC8(uint64_t a1)
{
  v7 = *(v3 + 8 * (v5 + 1791));
  v9 = v7(a1, 0);
  if (v9 == 16)
  {
    v6 = -42029;
    result = a1;
    goto LABEL_7;
  }

  v10 = v9;
  result = a1;
  if (v10 == 12)
  {
LABEL_7:
    result = (*(v3 + 8 * (v2 ^ 0x957)))(result);
    goto LABEL_8;
  }

  if (v10)
  {
    v6 = -42030;
    goto LABEL_7;
  }

  v6 = 0;
  *v4 = a1;
LABEL_8:
  *(v1 + 4) = v6;
  return result;
}

void sub_100040424(uint64_t a1)
{
  v1 = *(a1 + 16) ^ (143681137 * ((((2 * a1) | 0x69E7305E) - a1 - 888379439) ^ 0xD25B343F));
  if (*(*(a1 + 8) + 4) - 1365209361 >= 0)
  {
    v2 = *(*(a1 + 8) + 4) - 1365209361;
  }

  else
  {
    v2 = 1365209361 - *(*(a1 + 8) + 4);
  }

  if (*(*a1 + 4) - 1365209361 >= 0)
  {
    v3 = *(*a1 + 4) - 1365209361;
  }

  else
  {
    v3 = 1365209361 - *(*a1 + 4);
  }

  v6 = *(a1 + 8);
  v7 = v1 - 742307843 * (((&v6 | 0xD449843F) - (&v6 & 0xD449843F)) ^ 0xCA6B096A) + 297;
  v4 = *(&off_1001252D0 + v1 - 29) - 8;
  (*&v4[8 * v1 + 20808])(&v6);
  if (v2 >= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  __asm { BRAA            X13, X17 }
}

uint64_t sub_100040594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, int a12, int a13, int a14)
{
  v19 = 435584651 * ((v17 - 2 * (v17 & 0x2849A8B6424D8510) + 0x2849A8B6424D8510) ^ 0xAF3789C12F7F9F46);
  a12 = (v16 ^ 0xDCFFE4A5) + ((2 * v16) & 0xB9FFC94A) + 1000275808 + v19;
  a13 = v19 + 1477;
  a10 = v15 - ((2 * v15) & 0xA034013B67232C0CLL) - 0x2FE5FF624C6E69FALL + v19;
  a11 = v14;
  (*(v18 + 22744))(&a10);
  return sub_1000206D4(a14);
}

uint64_t sub_100040650(int8x16_t a1, int8x16_t a2, double a3, double a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int32x4_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  a2.i64[0] = *(v15 + 4);
  a2.i32[2] = *(v15 + 12);
  v18 = vextq_s8(a1, a2, 0xCuLL);
  v19 = a2;
  v19.i32[3] = *(v15 + 16);
  v20 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v19, a6), vandq_s8(v18, a5)), 1uLL), *(v15 - 908));
  v18.i32[0] = *(v17 + 4 * (*(v15 + 4) & (((v13 + 63) | 4u) - 67)));
  v18.i32[1] = *(v17 + 4 * (*(v15 + 8) & 1));
  v18.i32[2] = *(v17 + 4 * (*(v15 + 12) & 1));
  v18.i32[3] = *(v17 + 4 * (v19.i8[12] & 1));
  *v15 = veorq_s8(vaddq_s32(vsubq_s32(v20, vandq_s8(vaddq_s32(v20, v20), a7)), a8), v18);
  return (*(v16 + 8 * (((v14 != 4) * a13) ^ (v13 + 657))))();
}

uint64_t sub_100040660()
{
  *(v2 - 1) = v4;
  *v2 = v4;
  return (*(v3 + 8 * (v0 | (8 * (v1 == 0)))))();
}

uint64_t sub_100040684()
{
  v3 = 196 * (v0 ^ 0x587);
  v7 = v0 - 143681137 * ((&v7 - 1428039868 - 2 * (&v7 & 0xAAE1D744)) ^ 0x4C497B54) - 1173;
  v8 = v6;
  (*(v1 + 8 * (v0 + 1334)))(&v7);
  v7 = v3 - 143681137 * ((&v7 & 0x84579495 | ~(&v7 | 0x84579495)) ^ 0x9D00C77A) - 743;
  v8 = v5;
  (*(v1 + 8 * (v3 + 1764)))(&v7);
  return (v2 - 1958853845);
}

uint64_t sub_100040850@<X0>(unsigned int a1@<W0>, unint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v8 = (v6 ^ a1 ^ a2) + v5;
  *(a5 + v8) = *(a4 + v8) - ((2 * *(a4 + v8)) & 0x40) + 32;
  return (*(v7 + 8 * (((v8 == 0) * a3) ^ v6)))();
}

uint64_t sub_1000408D4()
{
  v5 = *v8;
  v6 = 210068311 * (((v4 - 144) & 0x976A71DE | ~((v4 - 144) | 0x976A71DE)) ^ 0x3FFA14F6);
  *(v4 - 128) = v6 + v0 - 158;
  *(v4 - 144) = 536598499 - v6;
  *(v4 - 136) = v9;
  (*(v3 + 8 * (v0 ^ 0xF38)))(v4 - 144);
  *(v4 - 136) = v0 + 435584651 * ((-916529235 - ((v4 - 144) | 0xC95EDFAD) + ((v4 - 144) | 0x36A12052)) ^ 0x5B933A04) - 95;
  *(v4 - 144) = v9;
  *(v4 - 112) = v2;
  *(v4 - 104) = v10;
  *(v4 - 128) = v1;
  *(v4 - 120) = v10;
  (*(v3 + 8 * (v0 ^ 0xEFE)))(v4 - 144);
  *(v4 - 136) = v0 + 675097751 * ((-36467647 - ((v4 - 144) | 0xFDD38C41) + ((v4 - 144) | 0x22C73BE)) ^ 0x416C5628) - 689;
  *(v4 - 144) = v10;
  *(v4 - 128) = v5;
  return (*(v3 + 8 * (v0 ^ 0xE84)))(v4 - 144);
}

uint64_t sub_100040A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int32x4_t a19, int32x4_t a20)
{
  v22 = v20 & 0xFFFFFFF8;
  v23 = (a6 - 1251);
  a19 = vdupq_n_s32(0xFE1ABF52);
  a20 = a19;
  v24 = *(v21 + 8 * ((1051 * (((a6 - 1596435332) & 0x5F27A5FF) - 419 == v22)) ^ v23));
  return v24(a1, v22, v23, &a19, 1051, v24, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100040AF4(__n128 a1)
{
  a1.n128_u16[0] = 8224;
  a1.n128_u8[2] = 32;
  a1.n128_u8[3] = 32;
  a1.n128_u8[4] = 32;
  a1.n128_u8[5] = 32;
  a1.n128_u8[6] = 32;
  a1.n128_u8[7] = 32;
  return sub_100040B1C(2008, 484, a1);
}

uint64_t sub_100040B1C@<X0>(unint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v10 = (v8 + v4 + a3);
  *v10 = a4;
  v10[1] = a4;
  return (*(v9 + 8 * ((((((v6 + 1189) | v7) ^ a1) + v4 == v5) * a2) ^ v6)))();
}

void sub_100040BC4(int a1@<W8>, int a2, __int16 a3, char a4, char a5, char a6, char a7, char a8, char a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, char a18, char a19, char a20, char a21, char a22, char a23, char a24, char a25, char a26, char a27, char a28, char a29, char a30, char a31, char a32, char a33, char a34, char a35, char a36, char a37, char a38, char a39, char a40, char a41, char a42, char a43, char a44, char a45, char a46, char a47, char a48, char a49, char a50, char a51, char a52, char a53)
{
  v59 = a1 ^ 0x8CC;
  v60 = *(v57 + 8 * (v59 ^ 0x711));
  v61 = *v60;
  v62 = *(v57 + 8 * (v59 ^ 0x74C));
  v63 = *v62;
  a24 = -39 * **v62 + 121;
  a25 = -39 * v63[1] + 121;
  a26 = -39 * v63[2] + 121;
  a27 = -39 * v63[3] + 121;
  a28 = -39 * v63[4] + 121;
  a29 = -39 * v63[5] + 121;
  a30 = -39 * v63[6] + 121;
  a31 = -39 * v63[7] + 121;
  a32 = -39 * v63[8] + 121;
  a33 = -39 * v63[9] + 121;
  a34 = -39 * v63[10] + 121;
  a35 = -39 * v63[11] + 121;
  a36 = -39 * v63[12] + 121;
  a37 = -39 * v63[13] + 121;
  a38 = -39 * v63[14] + 121;
  a39 = -39 * v63[15] + 121;
  a40 = -39 * v63[16] + 121;
  v64 = *v62;
  a41 = -39 * v64[17] + 121;
  a42 = -39 * v64[18] + 121;
  a43 = -39 * v64[19] + 121;
  a44 = -39 * v64[20] + 121;
  a45 = -39 * v64[21] + 121;
  a46 = -39 * v64[22] + 121;
  a47 = -39 * v64[23] + 121;
  a48 = -39 * v64[24] + 121;
  a49 = -39 * v64[25] + 121;
  a50 = -39 * v64[26] + 121;
  a51 = -39 * v64[27] + 121;
  a52 = -39 * v64[28] + 121;
  a53 = -39 * v64[29] + 121;
  v65 = (*(v55 + 8 * (v59 + 1013)))(v61, &a24, v53);
  if (v65 == 1102)
  {
    v66 = *v60;
    v67 = **(v57 + 8 * (v56 ^ 0x708));
    a4 = *v67 - 36;
    a5 = v67[1] - 36;
    a6 = v67[2] - 36;
    a7 = v67[3] - 36;
    a8 = v67[4] - 36;
    a9 = v67[5] - 36;
    a10 = v67[6] - 36;
    a11 = v56 + 16 + v67[7] - 88;
    a12 = v67[8] - 36;
    a13 = v67[9] - 36;
    a14 = v67[10] - 36;
    a15 = v67[11] - 36;
    a16 = v67[12] - 36;
    a17 = v67[13] - 36;
    a18 = v67[14] - 36;
    a19 = v67[15] - 36;
    a20 = v67[16] - 36;
    a21 = v67[17] - 36;
    a22 = v67[18] - 36;
    a23 = v67[19] - 36;
    v68 = (*(v55 + 8 * (v56 ^ 0xC3D)))(v66, &a4, v53);
    (*(v55 + 8 * ((3616 * (v68 == 0)) ^ (v56 + 16))))(v68, v69, v70, v71, v72, v73, v74);
  }

  else
  {
    if (v65)
    {
      JUMPOUT(0x100040F20);
    }

    *(v58 + 352) |= ((2 * v56) ^ 0x97C) - 1834;
    *(v58 + 52) = 515945084;
    (*(v55 + 8 * (v56 + 985)))(*v53, v58 + 340, v58 + 344, v58 + 348, v54);
    sub_100004790();
  }
}

uint64_t sub_100040FB0@<X0>(uint64_t a1@<X8>)
{
  result = 0;
  *v1 = a1;
  return result;
}

void sub_100040FC4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, int a18, char *a19)
{
  v20 = 143681137 * ((2 * (&a17 & 0x7E363350) - &a17 - 2117481304) ^ 0x676160B8);
  a19 = &a10;
  a17 = (((2 * a1) & 0xE983FFAA) + (a1 ^ 0xF4C1FFD5) + (v19 ^ 0x7FFFBC13)) ^ v20;
  a18 = v20 + v19 + 649;
  JUMPOUT(0x100025C90);
}

uint64_t sub_1000410A8@<X0>(int a1@<W8>, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = (*(v3 + 8 * (v4 + 1687)))(**(v2 + 8 * (v4 ^ 0x484)), va, ((((a1 - 239616873) & 0xFFFFF000 ^ 0xDE63B927) + 2046653168) ^ (((a1 - 239616873) & 0xFFFFF000 ^ 0xF7CB2D8F) + 1347806792) ^ (((((14 * (v4 ^ 0x4B6)) ^ 0xBC2) + 698911316) ^ (a1 - 239616873) & 0xFFFFF000) - 1909039263)) + 1482765367, 1) == 0;
  return (*(v3 + 8 * ((31 * v5) ^ v4)))();
}

uint64_t sub_100041178@<X0>(int a1@<W8>)
{
  if (a1 == v3 + ((v2 - 1875120985) & 0x6FC416DD) - 1756)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  *v1 = v5;
  return sub_1000411A4();
}

uint64_t sub_100041204@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v12 = v2 + v5 + (*(*(v10 + 8) + 4 * v3) ^ v7);
  *(*(a2 + 8) + 4 * v3) = v12 + v7 - ((v12 << v6) & v9);
  return (*(v8 + 8 * (((v3 + 1 == v11) * a1) ^ v4)))();
}

uint64_t sub_1000412F8()
{
  if ((v1 - 1) >> 32)
  {
    v4 = 0;
  }

  else
  {
    v4 = (((v2 - 1521) | 0x144) ^ ((v2 ^ 0x96Du) - 1508)) - v0 >= v1 - 1;
  }

  v5 = !v4;
  return (*(v3 + 8 * ((1004 * v5) ^ v2)))();
}

uint64_t sub_1000413D0@<X0>(int a1@<W8>, uint64_t a2, __int16 a3, char a4, char a5, char a6, unsigned int a7, uint64_t *a8, int a9, int a10, char *a11, char a12, char *a13, uint64_t a14)
{
  v17 = *(v14 + 8);
  v18 = 1504884919 * ((2 * (&a7 & 0x793F7C90) - &a7 + 113279848) ^ 0xFD033473);
  a10 = v16 - v18 - 473374331;
  a7 = ((((a1 ^ 0xD2E41E62) + 756801950) ^ ((a1 ^ 0x55B890A0) - 1438159008) ^ ((a1 ^ 0x86546B96 ^ (v16 - 6)) + 2041288445)) + 1831710502) ^ v18;
  a13 = &a5;
  a14 = v17;
  a12 = ~(-73 * ((2 * (&a7 & 0x90) - &a7 + 104) ^ 0x73));
  a11 = &a6;
  a8 = &a2;
  v19 = (*(v15 + 8 * (v16 + 2223)))(&a7);
  return (*(v15 + 8 * ((91 * (a9 == 1958853845)) ^ v16)))(v19);
}

uint64_t sub_100041748@<X0>(char a1@<W3>, int a2@<W4>, int a3@<W5>, int a4@<W6>, int a5@<W8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, unsigned int a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  v44 = v43[396] ^ ((*v43 & 0x7FFFFFFE | v43[623] & 0x80000000) >> 1);
  v43[623] = (v44 + a3 - ((v44 << (((a5 + 108) | 0xA0) + a1)) & a4)) ^ *(&a42 + (*v43 & (a5 ^ (a2 + 918) ^ (a2 + 1))));
  return (*(v42 + 8 * ((62 * (a38 > 0x26F)) ^ a5)))();
}

uint64_t sub_1000417F0@<X0>(unsigned int a1@<W2>, uint64_t a2@<X8>)
{
  v8 = -a2 - v5 + ((v5 - 1) & 0xF);
  v12 = (v8 + 1 + v2) > 0xF && (v8 + 1 + v4) > 0xF && v6 >= (((a1 - 1431) | 0x8C2) ^ 0x9DEuLL) && (v8 + v3 + 2) > 0xF;
  return (*(v7 + 8 * ((101 * v12) ^ a1)))(v5);
}

uint64_t sub_100041860@<X0>(int a1@<W3>, uint64_t a2@<X4>, int a3@<W8>)
{
  v15 = (*(a2 + 4 * a3) ^ v3) + (v5 ^ HIDWORD(v7));
  v16 = v15 - ((v15 << (a1 ^ 0xFEu)) & v9) + v10;
  *(a2 + 4 * v6) = v16 ^ v11;
  *(a2 + 4 * a3) = (v16 >> ((13 * (a1 ^ 0xFA)) ^ v12)) ^ v13;
  return (*(v8 + 8 * (a1 ^ ((v4 + 1 != a3) * v14))))();
}

uint64_t sub_1000418D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v6 = (((v4 ^ 0x187u) - 170) ^ v3) + a3;
  *(a1 - 7 + v6) = *(v5 - 7 + v6);
  return (*(a2 + 8 * ((932 * ((a3 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

uint64_t sub_100041A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, int a17)
{
  v21 = ((&a14 - 1130543614 - 2 * (&a14 & 0xBC9D4602)) ^ 0x475EF119) * v17;
  a16 = a12;
  a14 = (a10 ^ 0x3BB3DE7B) + ((2 * a10) & 0x7767BCF6) - 419447392 + v21;
  a15 = 2715 - v21;
  v22 = (*(v18 + 22088))(&a14);
  return (*(v18 + 8 * ((1143 * (a17 == v19)) ^ v20)))(v22);
}

void sub_100041B88()
{
  *(v3 - 128) = v1 + 1037613739 * ((-924848109 - ((v3 - 136) | 0xC8DFF013) + ((v3 - 136) | 0x37200FEC)) ^ 0xE6222293) - 776332632;
  *(v0 + 1224) = v2;
  JUMPOUT(0x100041BE8);
}

uint64_t sub_100041C38()
{
  if (v2 == (v0 ^ 0xA75))
  {
    v4 = v1;
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 8 * ((228 * v4) ^ v0)))();
}

uint64_t sub_100041E1C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, int *a40)
{
  *v45 = v40;
  v48 = (a1 + 144) | 0x10C;
  v49 = ((a1 + v43 - v42) >> (((a1 - 112) | 0xC) ^ 0x96)) ^ v43;
  v50 = ((v49 ^ v41 ^ (v49 << 7) & 0x9D2C5680) << 15) & 0xEFC60000 ^ v49 ^ v41 ^ (v49 << 7) & 0x9D2C5680 ^ ((((v49 ^ v41 ^ (v49 << 7) & 0x9D2C5680) << 15) & 0xEFC60000 ^ v49 ^ v41 ^ (v49 << 7) & 0x9D2C5680) >> 18);
  v51 = (v44 + (v46 - 1));
  v52 = ((*(*a39 + (*a40 & 0xFFFFFFFFC9283748)) ^ v51) & 0x7FFFFFFF) * (((v48 + 613) | 0x221) - 976036428);
  v53 = -976034857 * (v52 ^ HIWORD(v52));
  v54 = v53 >> ((v48 + 93) & 0x1F ^ 2u);
  v55 = *(*(&off_1001252D0 + v48 - 286) + v54 - 8);
  v56 = *(*(&off_1001252D0 + v48 - 228) + v54);
  v57 = *(*(&off_1001252D0 + v48 - 280) + v54);
  LOBYTE(v54) = 61 * v54;
  *v51 = v54 ^ v55 ^ v50 ^ v56 ^ v57 ^ v53;
  return (*(v47 + 8 * ((94 * (v46 == ((v55 ^ v50 ^ v56 ^ v57 ^ v53) != v54))) ^ v48)))();
}

void sub_100041FA8()
{
  v1 = (v0 + 908);
  vld1q_dup_f32(v1);
  JUMPOUT(0x100041FF8);
}

uint64_t sub_1000422A4@<X0>(int8x16_t *a1@<X2>, uint64_t a2@<X8>, int8x16_t a3@<Q4>, int8x16_t a4@<Q5>, uint64_t a5)
{
  v8 = (a5 + a2);
  v9 = vaddq_s8(vsubq_s8(a1[1], vandq_s8(vaddq_s8(a1[1], a1[1]), a3)), a4);
  v8[-1] = vaddq_s8(vsubq_s8(*a1, vandq_s8(vaddq_s8(*a1, *a1), a3)), a4);
  *v8 = v9;
  return (*(v6 + 8 * ((((v7 & 0x60) == 32) * (((v5 + 1185) | 0x5B) - 2374)) ^ (v5 + 4))))();
}

void sub_100042384(uint64_t a1)
{
  v1 = *(a1 + 24) ^ (843532609 * ((a1 + 1971512249 - 2 * (a1 & 0x7582E3B9)) ^ 0x29CFB73C));
  __asm { BRAA            X10, X17 }
}

uint64_t sub_100042518()
{
  v0 = *(&off_1001252D0 + ((11 * ((qword_10013EA10 - dword_10013EB80) ^ 8)) ^ byte_1000E7B70[byte_1000E4460[(11 * ((qword_10013EA10 - dword_10013EB80) ^ 8))] ^ 0x3E]));
  v1 = *(v0 - 4);
  v2 = *(&off_1001252D0 + ((11 * (v1 ^ qword_10013EA10 ^ 8)) ^ byte_1000F09C0[byte_1000EC520[(11 * (v1 ^ qword_10013EA10 ^ 8))] ^ 0x2B]) - 61);
  v3 = (*v2 - v1) ^ &v7;
  *(v0 - 4) = 1405565963 * v3 - 0x435703E42A3502F8;
  *v2 = 1405565963 * (v3 ^ 0xBCA8FC1BD5CAFD08);
  v8 = (1037613739 * (((&v8 | 0xAFDF8550) - (&v8 & 0xAFDF8550)) ^ 0x7EDDA82F)) ^ 0x3AB;
  LOBYTE(v3) = 11 * ((*v2 + *(v0 - 4)) ^ 8);
  v10 = *(&off_1001252D0 + (byte_1000EC824[(byte_1000E7E78[v3 - 8] ^ 0xA3) - 4] ^ v3) + 121);
  LOBYTE(v3) = 11 * ((*v2 - *(v0 - 4)) ^ 8);
  v4 = *(&off_1001252D0 + ((11 * ((qword_10013EA10 + dword_10013EB80) ^ 8)) ^ byte_1000E4560[byte_1000F0AC0[(11 * ((qword_10013EA10 + dword_10013EB80) ^ 8))] ^ 0xB7]) + 131) - 8;
  (*&v4[8 * (byte_1000EC72C[(byte_1000E7D7C[v3 - 12] ^ 0x31) - 12] ^ v3) + 19816])(&v8);
  v10 = *(&off_1001252D0 + (byte_1000E4560[byte_1000F0AC0[(11 * ((*v2 + *(v0 - 4)) ^ 8))] ^ 0xB7] ^ (11 * ((*v2 + *(v0 - 4)) ^ 8))) + 32);
  v8 = (1037613739 * (((&v8 | 0xF6CD8C6C) - (&v8 & 0xF6CD8C6C)) ^ 0x27CFA113)) ^ 0x3AB;
  (*&v4[8 * ((11 * ((*v2 - *(v0 - 4)) ^ 8)) ^ byte_1000E4560[byte_1000F0AC0[(11 * ((*v2 - *(v0 - 4)) ^ 8))] ^ 0x30]) + 20696])(&v8);
  v5 = 210068311 * (((&v8 | 0xF93DF42A) - &v8 + (&v8 & 0x6C20BD0)) ^ 0xAE526EFD);
  v9 = 109 - v5;
  v8 = v5 ^ 0x668;
  return (*&v4[8 * ((11 * (*(v0 - 4) ^ 8 ^ *v2)) ^ byte_1000E4560[byte_1000F0AC0[(11 * (*(v0 - 4) ^ 8 ^ *v2))] ^ 0xB7]) + 22312])(&v8);
}

uint64_t sub_1000428D0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  v61 = STACK[0x448];
  *(v61 + 392) = v55;
  *(v61 + 396) = STACK[0x344];
  *(v61 + 400) = STACK[0x2C0];
  *(v61 + 408) = 870277575 - v60 + v56 + LODWORD(STACK[0x3A4]) + ((v56 - 608) | 0x142) - 994;
  *(v61 + 416) = v59 + (v60 - 1429511819);
  v62 = (*(v58 + a1 * v57 + 8))(a46, v61 + 392);
  return (*(a55 + 8 * ((1357 * ((v62 ^ 0xF4E5BEDD) + 2145123832 + ((2 * v62) & 0xE9CB7DBA) == 1958853845)) ^ v56)))(0);
}

uint64_t sub_100042A28(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v10[-1] = a1;
  *v10 = a1;
  return (*(v11 + 8 * (((v9 == 0) * (((a7 + v7 - 332) | v8) + 35)) ^ (a7 + v7 - 125))))();
}

uint64_t sub_100042C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v17 - 128) = v13 + 742307843 * ((((v17 - 128) | 0x8C7F9185) - ((v17 - 128) & 0x8C7F9185)) ^ 0x925D1CD0) - 503;
  *(v17 - 120) = v15;
  *(v17 - 112) = &a13;
  v18 = (*(v14 + 8 * (v13 + 1074)))(v17 - 128);
  return (*(v14 + 8 * ((3986 * (v16 == (((v13 ^ 0x281) + 13) ^ 0x44C))) ^ v13)))(v18);
}

uint64_t sub_100042CDC()
{
  v4 = v0 - 1316;
  v5 = (*(v1 + 8 * (v0 + 1004)))(*v3);
  return (*(v1 + 8 * (((*v2 == ((v4 + 1099) ^ 0x668)) * ((v4 + 14) ^ 0x21D)) ^ v4)))(v5);
}

uint64_t sub_100042E78@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v7 = v6 - 1;
  *(a2 + v7) = *(v4 + v7) - ((2 * *(v4 + v7)) & 0x40) + 32;
  return (*(v2 + 8 * (((v7 == 0) * ((a1 ^ (v3 + 2581)) + v5)) ^ a1)))(0);
}

uint64_t sub_100042EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned int a20, unsigned int a21, char *a22, int a23)
{
  v26 = (((&a20 | 0x56DF856) - &a20 + (&a20 & 0xFA9207A8)) ^ 0xFEAE4F4D) * v24;
  LODWORD(a22) = v26 + 2442;
  HIDWORD(a22) = 518268483 - v26;
  a20 = v26 ^ 0x660F49D;
  a21 = 1735604055 - v26;
  (*(v25 + 22536))(&a20);
  a20 = (50899313 * (&a20 ^ 0x2ACB2A7A)) ^ 0x78C;
  a22 = &a16;
  v27 = (*(v25 + 22360))(&a20);
  return (*(v25 + 8 * ((3606 * (a23 == 1958853845)) ^ v23)))(v27);
}

uint64_t sub_100042FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v19 = 675097751 * (((v18 - 128) & 0x286983B8 | ~((v18 - 128) | 0x286983B8)) ^ 0x94D659D1);
  *(v18 - 120) = &a15;
  *(v18 - 128) = v19 ^ 0x4413498B;
  *(v18 - 112) = v19 - 233716451;
  *(v18 - 108) = v19 + v16 + 642;
  v20 = (*(v17 + 8 * (v16 + 1941)))(v18 - 128);
  return (*(v17 + 8 * (((*(v18 - 124) == v15) * ((11 * (v16 ^ 0x3FD) - 1092) ^ (v16 + 640))) ^ v16)))(v20);
}

uint64_t sub_1000431B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v30 = *(v24 + 8 * a9);
  v31 = (LOBYTE(STACK[0x2EC]) - ((2 * LOBYTE(STACK[0x2EC])) & 0xA0) + 88);
  if (v31 == 90)
  {
    v33 = LODWORD(STACK[0x2E4]);
    v34 = ((*(v23 + v26 + 892590812) ^ 0x20) << 24) | ((*(v23 + v26 + 892590812 + 1) ^ 0x20) << 16) | ((*(v23 + v26 + 892590812 + 2) ^ 0x20) << 8) | *(v23 + v26 + 892590812 + 3) ^ 0x20;
    *v25 = v34 + v28 - (v29 & (2 * v34));
    return (*(v24 + 8 * (((v26 + 892590816) < 0x40) | v27)))(v33);
  }

  else if (v31 == 89)
  {
    return sub_100043208();
  }

  else
  {
    return sub_100017D40(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, v30);
  }
}

uint64_t sub_100043208()
{
  v9 = *(v0 + v1 + v4) ^ 0x20 | ((*(v0 + (v5 ^ (v4 + 510)) + v1) ^ 0x20) << 8) | ((*(v0 + v1 + v4 + 2) ^ 0x20) << 16) | ((*(v0 + v1 + v4 + 3) ^ 0x20) << 24);
  v10 = ((2 * (v1 & 0x124 ^ 0xA341ADE0)) ^ 0x44C357C0) & (v1 ^ 0x698D88C4) ^ v1 & 0x124 ^ 0xA341ADE0 ^ ((2 * (v1 & 0x124 ^ 0xA341ADE0)) & 0x2000840 | 0x400400);
  v11 = ((2 * (v1 ^ 0x698D88C4)) ^ 0x44C357C0) & (v1 ^ 0x698D88C4) ^ (2 * (v1 ^ 0x698D88C4)) & 0xA100A1E0;
  v12 = v10 ^ v11 & 0x4A20048 ^ ((4 * v10) ^ 0x82E48AC8) & (v11 ^ 0x2410DC0);
  v13 = ((4 * v11) ^ 0xFE63B48) & (v11 ^ 0x2410DC0) ^ v11 & 0x4A20048;
  v14 = v12 ^ v13 & 0x6E20C48 ^ ((16 * v12) ^ 0x32F8D248) & (v13 ^ 0x2400C40);
  v15 = ((16 * v13) ^ 0x22E2C848) & (v13 ^ 0x2400C40) ^ v13 & 0x6E20C48;
  v16 = v14 ^ v15 & 0x6E20C48 ^ ((v14 << 8) ^ 0x743AC48) & (v15 ^ 0x2400CE0);
  v17 = ((v15 << 8) ^ 0x46EE4C48) & (v15 ^ 0x2400CE0) ^ v15 & 0x6E20C48;
  *(v3 + 4 * (((v1 ^ (2 * (v16 ^ v17 & 0x6E20C48 ^ ((v16 << 16) ^ 0xAB020C48) & (v17 ^ 0x21010000) ^ ((v16 << 16) ^ 0xAB020C48) & 0x23410C40))) >> 2) ^ 0x2233D999)) = v9 + v6 - (v7 & (2 * v9));
  return (*(v2 + 8 * ((982 * ((v1 + 4 + v4) > 0x3F)) ^ (v8 + 457))))();
}

uint64_t sub_100043534@<X0>(uint64_t a1@<X8>)
{
  v4 = 675097751 * (((v6 | 0xD8C58FBF) - v6 + (v6 & 0x273A7040)) ^ 0x9B85AA29);
  v7 = v2;
  v6[0] = v3 - v4 - 429;
  v6[1] = ((v3 + 1623394459) & 0x9F3CF7FF ^ 0x891BC787) - (v1 + v4 + ((1881978734 - 2 * v1) & 0xA20ACE6A));
  return (*(a1 + 8 * (v3 ^ 0xE01)))(v6);
}

void sub_100043608()
{
  v0 = *(&off_1001252D0 + ((11 * (dword_10013EB68 ^ 8 ^ qword_10013EA10)) ^ byte_1000EC720[byte_1000E7D70[(11 * (dword_10013EB68 ^ 8 ^ qword_10013EA10))] ^ 0x51]) - 45);
  v1 = *(&off_1001252D0 + (byte_1000EC820[byte_1000E7E70[(11 * ((qword_10013EA10 - *v0) ^ 8))] ^ 0xA3] ^ (11 * ((qword_10013EA10 - *v0) ^ 8))) + 11);
  v2 = *v1 - *v0 - &v4;
  *v0 = 1405565963 * v2 - 0x49B2A3DDF3C140A8;
  *v1 = 1405565963 * (v2 ^ 0xBCA8FC1BD5CAFD08);
  v5[1] = 1504884919 * (((v5 | 0x86C82058) - (v5 & 0x86C82058)) ^ 0x7D0B9743) + 1212455568;
  LOBYTE(v1) = 11 * (*v0 ^ 8 ^ *v1);
  v3 = *(&off_1001252D0 + ((11 * (dword_10013EB68 ^ 8 ^ qword_10013EA10)) ^ byte_1000E4560[byte_1000F0AC0[(11 * (dword_10013EB68 ^ 8 ^ qword_10013EA10))] ^ 0xB7]) + 131) - 8;
  (*&v3[8 * (v1 ^ byte_1000EC820[byte_1000E7E70[v1] ^ 0x60]) + 21240])(v5);
  __asm { BRAA            X9, X17 }
}

void sub_10004381C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  *(v65 - 192) = v63 - 1504884919 * ((v65 - 192) ^ 0xFBC3B71B) + 1139113063;
  (*(v66 + 8 * (v63 ^ (v64 - 1688))))(v65 - 192);
  *(v65 - 192) = v63 - 1958809995 + 1361651671 * ((((v65 - 192) | 0x366AC987) - (v65 - 192) + ((v65 - 192) & 0xC9953678)) ^ 0x7D0105F9);
  *(v65 - 168) = &STACK[0x43C];
  *(v65 - 184) = &STACK[0x3F4];
  LOBYTE(STACK[0x1804]) = ((v63 - v64 + 64) & v63 ^ (((v62 - v63) | (v63 - v62)) >= 0) ^ 0x2D) - -41 * ((((v65 + 64) | 0x87) - (v65 + 64) + ((v65 + 64) & 0x78)) ^ 0xF9);
  (*(a62 + 8 * (v63 - 1958809005)))(v65 - 192);
  JUMPOUT(0x100025880);
}

void sub_100043918(uint64_t a1)
{
  v1 = *(a1 + 40) - 1564307779 * ((2 * (a1 & 0x6232EE25) - a1 - 1647504934) ^ 0xAC0DDC9);
  __asm { BRAA            X0, X17 }
}

uint64_t sub_100043A7C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = (v20 + 4 * v18);
  v22 = HIDWORD(v12) + v14 * (*(v17 + 4 * v18) ^ v8) + (*v21 ^ (v8 + (v13 ^ v19) - 2205)) + HIDWORD(v10) + v16 * (*(v9 + 4 * v18) ^ v8);
  *(v21 - 1) = v22 + v8 - (a2 & (2 * v22));
  return (*(v15 + 8 * (((v18 + 1 == a8) * v11) ^ v13)))();
}

uint64_t sub_100043AF0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49)
{
  v55 = STACK[0x3A4];
  v56 = STACK[0x290];
  v57 = STACK[0x2E4];
  v58 = &v52[6 * v51];
  v58[2] = v53;
  v58[3] = v57;
  *(v58 + 2) = v56;
  v58[6] = v55;
  *v52 = a1 + 1;
  LODWORD(STACK[0x2D4]) = v50;
  v60 = v50 + 1867099706 > ((v49 - 376) | 0x16) - 126372754 && v50 + 1867099706 < a49;
  return (*(v54 + 8 * ((3041 * v60) ^ v49)))();
}

uint64_t sub_100043D58@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  v8 = (v7 + 4 * v3);
  v9 = v3 + 1;
  *v8 = *(a1 + 4 * (*(v7 + 4 * v9) & 1)) ^ v8[397] ^ ((*(v7 + 4 * v9) & 0x7FFFFFFE | (v6 + a2) & v2) >> 1);
  return (*(v5 + 8 * (((v9 != 227) * v4) ^ a2)))();
}

uint64_t sub_100043EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  HIDWORD(v54) = HIDWORD(a12) + 2126650164;
  LODWORD(v54) = -1298039557;
  v51.i64[0] = 0x2020202020202020;
  v51.i64[1] = 0x2020202020202020;
  HIDWORD(a21) = 18 * (v50 ^ (v50 - 26));
  HIDWORD(a15) = 1593835516;
  v52 = (v50 + 1795222739) & 0x4E090FED;
  HIDWORD(v55) = v52 ^ 0x687;
  LODWORD(v55) = v52 ^ 0x63B;
  return sub_1000440A0(vdupq_n_s32(0xF283947E), v51, vdupq_n_s32(0xF941CA3F), a1, a2, 66, a4, a5, v52, 59 * (v52 ^ 0x6B0), a8, a9, a10, a11, a12, a13, a14, a15, v54, a17, 17 * (HIDWORD(a21) ^ 0x415u), v55, (17 * (HIDWORD(a21) ^ 0x415u)) ^ (v48 - 1114), a21, v49 - 16, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_100044024@<X0>(int a1@<W8>)
{
  v4 = a1 + 984315293;
  v5 = v2 + 992560206;
  v6 = (v4 < 0x77DACCFB) ^ (v5 < ((v1 + 741) ^ 0x77DAC4A1u));
  v7 = v4 < v5;
  if (v6)
  {
    v7 = v5 < ((v1 + 741) ^ 0x77DAC4A1u);
  }

  return (*(v3 + 8 * ((3429 * v7) ^ v1)))();
}

uint64_t sub_1000440A0(int8x16_t a1, int8x16_t a2, int32x4_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  *&v100[56] = a51;
  *&v100[48] = a50;
  *&v100[40] = a49;
  *&v100[32] = a48;
  *&v100[24] = a47;
  *&v100[16] = a46;
  *&v100[8] = a45;
  *v100 = a44;
  v59 = *(v54 + 8 * v52);
  v60 = (BYTE4(a39) - ((2 * BYTE4(a39)) & 0x48) - 88);
  if (v60 == 170)
  {
    v102 = vld4q_s8(v55);
    v83 = veorq_s8(v102.val[0], a2);
    v84 = vmovl_high_u8(v83);
    v85 = vmovl_u8(*v83.i8);
    v86 = veorq_s8(v102.val[1], a2);
    _Q21 = vmovl_high_u8(v86);
    _Q20 = vmovl_u8(*v86.i8);
    v89 = vshll_n_s16(*_Q20.i8, 0x10uLL);
    __asm { SHLL2           V20.4S, V20.8H, #0x10 }

    v90 = vshll_n_s16(*_Q21.i8, 0x10uLL);
    __asm { SHLL2           V21.4S, V21.8H, #0x10 }

    v91 = veorq_s8(v102.val[2], a2);
    v92 = vmovl_u8(*v91.i8);
    v93 = vmovl_high_u8(v91);
    v102.val[0] = veorq_s8(v102.val[3], a2);
    v102.val[1] = vmovl_u8(*v102.val[0].i8);
    v102.val[2] = vmovl_u16(*v102.val[1].i8);
    v102.val[0] = vmovl_high_u8(v102.val[0]);
    v102.val[3] = vmovl_u16(*v102.val[0].i8);
    v102.val[0] = vorrq_s8(vorrq_s8(vorrq_s8(_Q21, vshll_high_n_u16(v93, 8uLL)), vshlq_n_s32(vmovl_high_u16(v84), 0x18uLL)), vmovl_high_u16(v102.val[0]));
    v102.val[3] = vorrq_s8(vorrq_s8(vorrq_s8(v90, vshll_n_u16(*v93.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v84.i8), 0x18uLL)), v102.val[3]);
    v102.val[1] = vorrq_s8(vorrq_s8(vorrq_s8(_Q20, vshll_high_n_u16(v92, 8uLL)), vshlq_n_s32(vmovl_high_u16(v85), 0x18uLL)), vmovl_high_u16(v102.val[1]));
    v102.val[2] = vorrq_s8(vorrq_s8(vorrq_s8(v89, vshll_n_u16(*v92.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v85.i8), 0x18uLL)), v102.val[2]);
    v102.val[0] = vaddq_s32(vsubq_s32(v102.val[0], vandq_s8(vaddq_s32(v102.val[0], v102.val[0]), a1)), a3);
    v102.val[3] = vaddq_s32(vsubq_s32(v102.val[3], vandq_s8(vaddq_s32(v102.val[3], v102.val[3]), a1)), a3);
    v102.val[1] = vaddq_s32(vsubq_s32(v102.val[1], vandq_s8(vaddq_s32(v102.val[1], v102.val[1]), a1)), a3);
    v102.val[2] = vaddq_s32(vsubq_s32(v102.val[2], vandq_s8(vaddq_s32(v102.val[2], v102.val[2]), a1)), a3);
    *v51 = v102.val[2].i32[0];
    *&v100[4] = vextq_s8(v102.val[2], v102.val[1], 4uLL);
    *&v100[20] = vextq_s8(v102.val[1], v102.val[3], 4uLL);
    *&v100[36] = vextq_s8(v102.val[3], v102.val[0], 4uLL);
    *&v100[52] = vextq_s8(v102.val[0], v102.val[0], 4uLL).u64[0];
    *&v100[60] = v102.val[0].i32[3];
    v51[v57 + 714571889] = __ROR4__(v51[a23 + 714571889] ^ v53 ^ v51[v57 + 714571881] ^ v51[v57 + 714571875] ^ v51[v57 + 714571873], 31) ^ 0x645D0D06;
    return (*(v54 + 8 * ((3606 * (v58 == 714571826)) ^ HIDWORD(a24))))(a25, a5, a6, HIDWORD(a36), 4247649147, a9, a10, a37, a12, a13, a14, a15, a16, a17, a18, a19, v59, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, *v100, *&v100[8], *&v100[16], *&v100[24], *&v100[32], *&v100[40], *&v100[48], *&v100[56]);
  }

  else if (v60 == 169)
  {
    v101 = vld4q_s8(v55);
    v61 = veorq_s8(v101.val[2], a2);
    _Q21 = vmovl_u8(*v61.i8);
    _Q20 = vmovl_high_u8(v61);
    __asm
    {
      SHLL2           V22.4S, V20.8H, #0x10
      SHLL2           V23.4S, V21.8H, #0x10
    }

    v101.val[0] = vorrq_s8(vorrq_s8(vorrq_s8(vshll_n_u16(*&vmovl_u8(*&veorq_s8(v101.val[1], a2)), 8uLL), vmovl_u16(*&vmovl_u8(*&veorq_s8(v101.val[0], a2)))), vshll_n_s16(*_Q21.i8, 0x10uLL)), vshlq_n_s32(vmovl_u16(*&vmovl_u8(*&veorq_s8(v101.val[3], a2))), 0x18uLL));
    *v51 = vaddq_s32(vsubq_s32(v101.val[0], vandq_s8(vaddq_s32(v101.val[0], v101.val[0]), a1)), a3).u32[0];
    v70 = (HIDWORD(a37) & 0x2DB885D3 ^ 0xC880190 ^ (a10 ^ a37 ^ 0xE336E0E0) & (HIDWORD(a37) ^ v53) | a37 & 0x13907008 ^ 0x11101000 ^ (a37 ^ 0x31719C63) & (a38 ^ 0xDD1E1394)) + (HIDWORD(a36) ^ v53) + *(*(&off_1001252D0 + HIDWORD(a22)) + a25 + v57 - 1) + (v51[(*(*(&off_1001252D0 + a9 - 1692) + a25 + v57 - 8) - 45)] ^ v56);
    v71 = (v70 ^ 0x84FC60BD) & (2 * (v70 & 0xD0F9753D)) ^ v70 & 0xD0F9753D;
    v72 = ((2 * (v70 ^ 0x851E4AE5)) ^ 0xABCE7FB0) & (v70 ^ 0x851E4AE5) ^ (2 * (v70 ^ 0x851E4AE5)) & 0x55E73FD8;
    v73 = v72 ^ 0x54210048;
    v74 = (v72 ^ 0x1C63D90) & (4 * v71) ^ v71;
    v75 = ((4 * v73) ^ 0x579CFF60) & v73 ^ (4 * v73) & 0x55E73FD8;
    v76 = (v75 ^ 0x55843F40) & (16 * v74) ^ v74;
    v77 = ((16 * (v75 ^ 0x630098)) ^ 0x5E73FD80) & (v75 ^ 0x630098) ^ (16 * (v75 ^ 0x630098)) & 0x55E73FD0;
    v78 = v76 ^ 0x55E73FD8 ^ (v77 ^ 0x54633D00) & (v76 << 8);
    v79 = (v78 << 16) & 0x55E70000 ^ v78 ^ ((v78 << 16) ^ 0x3FD80000) & (((v77 ^ 0x1840258) << 8) & 0x55E70000 ^ 0x10C00000 ^ (((v77 ^ 0x1840258) << 8) ^ 0x673F0000) & (v77 ^ 0x1840258));
    v80 = *(*(&off_1001252D0 + a22) + a25 + v57 - 12);
    LOBYTE(v73) = (v80 - 120) ^ (34 - v80) ^ (((v80 - 120) ^ 0x47) + 19) ^ (((v80 - 120) ^ 0xCD) - 103) ^ (((v80 - 120) ^ 0xDF) - 117);
    v81 = (((a37 ^ 0xADE0F8DF) + 1377765153) ^ ((a37 ^ 0x3C57154B) - 1012340043) ^ ((a37 ^ 0x5F398E08) - 1597607432)) + 592552727 + (((v70 ^ (2 * v79) ^ 0x50B70A8D) << (v73 & 0x1E ^ 0xA) << (v73 & 1)) | ((v70 ^ (2 * v79) ^ 0x50B70A8Du) >> (a6 - v80)));
    return (*(v54 + 8 * (a9 + 2 * (a25 + 1 == v58))))(v81 ^ ((v81 ^ 0xF7FD38F7) + 1556215924) ^ ((v81 ^ 0x947DA089) + 1061249038) ^ ((v81 ^ 0x42BD58BA) - 377382849) ^ ((v81 ^ 0x75FEFFBF) - 557695172) ^ 0x9A4D5CE7);
  }

  else
  {
    v94 = (((a37 ^ 0x76E397E0) - 1994627040) ^ ((a37 ^ 0x4358BF16) - 1129889558) ^ ((a37 ^ 0xFB354B6A) + 80393366)) + (((a37 ^ 0xDEA27012) + 559779822) ^ ((a37 ^ 0x51EE9C8) - 85912008) ^ ((a37 ^ 0x1532FA46) - 355662406)) - 1569110755;
    v95 = (v94 ^ 0xFA3BE1D3) & (2 * (v94 & 0xFAA3821B)) ^ v94 & 0xFAA3821B;
    v96 = ((2 * (v94 ^ 0x9B3DE5D7)) ^ 0xC33CCF98) & (v94 ^ 0x9B3DE5D7) ^ (2 * (v94 ^ 0x9B3DE5D7)) & 0x619E67CC;
    v97 = v96 ^ 0x20822044;
    v98 = (v96 ^ 0x411C0088) & (4 * v95) ^ v95;
    v99 = ((4 * v97) ^ 0x86799F30) & v97 ^ (4 * v97) & 0x619E67CC;
    return v59((((v99 ^ 0x180700) & (16 * v98) ^ v98 ^ 0x619E67CC ^ (((16 * (v99 ^ 0x618660CC)) ^ 0x19E67CC0) & (v99 ^ 0x618660CC) ^ (16 * (v99 ^ 0x618660CC)) & 0x619E67C0 ^ 0x1866400) & (((v99 ^ 0x180700) & (16 * v98) ^ v98) << 8)) << 16) ^ 0x67CC0000, a5, a6, 3104437843, a8, a9, a10, a37, a12, a13, a14, a15, a16, a17, a18, a19, v59, a21, a22, a23, a24, a25, a26, a27, a28, a29);
  }
}

void sub_100044F78(unsigned int *a1)
{
  v7 = v5 + v2;
  v8 = ((v6 - 319293910) & 0xDF6B7EFC ^ (v1 + 1)) + v7;
  *a1 = v8;
  v9 = a1 + 1;
  *(v9 + v3) = v4;
  *(v9 + v2) = 47;
  *(v9 + v7) = 61;
  *(v9 + v8) = 0;
  JUMPOUT(0x100019758);
}

uint64_t sub_100044FC4@<X0>(int a1@<W8>)
{
  v2 = a1 + 454;
  v3 = ((a1 - 349) | 0x80) + 221;
  v4 = (*(v1 + 8 * ((a1 + 454) ^ 0xD83)))(32, 0x101004023FF3BD5) != 0;
  return (*(v1 + 8 * ((v4 * (v3 ^ 0x5BD)) ^ v2)))();
}

void sub_1000451B4()
{
  v0 = *(&off_1001252D0 + ((11 * (dword_10013EB00 ^ 8 ^ qword_10013EA10)) ^ byte_1000EC820[byte_1000E7E70[(11 * (dword_10013EB00 ^ 8 ^ qword_10013EA10))] ^ 0x60]) + 33);
  v1 = *(v0 - 4);
  v2 = *(&off_1001252D0 + (byte_1000EC72C[(byte_1000E7D7C[(11 * (v1 ^ qword_10013EA10 ^ 8)) - 12] ^ 0xA0) - 12] ^ (11 * (v1 ^ qword_10013EA10 ^ 8))) + 30);
  v3 = (*v2 ^ v1) - &v7;
  *(v0 - 4) = 1405565963 * v3 - 0x435703E42A3502F8;
  *v2 = 1405565963 * (v3 ^ 0xBCA8FC1BD5CAFD08);
  v6 = 0;
  v10 = -1224077185 - 1785193651 * ((2 * (v8 & 0x33B097D8) - v8 + 1280272416) ^ 0xBA6ECC0C);
  v9 = &v6;
  LOBYTE(v3) = 11 * ((*v2 - *(v0 - 4)) ^ 8);
  v4 = *(&off_1001252D0 + ((11 * ((qword_10013EA10 + dword_10013EB00) ^ 8)) ^ byte_1000EC720[byte_1000E7D70[(11 * ((qword_10013EA10 + dword_10013EB00) ^ 8))] ^ 0xA0]) + 186) - 8;
  (*&v4[8 * (byte_1000E456C[(byte_1000F0AC4[v3 - 4] ^ 0x30) - 12] ^ v3) + 21344])(v8);
  v5 = 0;
  v10 = -1224077185 - 1785193651 * ((((2 * v8) | 0xE821CC60) - v8 + 200219088) ^ 0x231421C);
  v9 = &v5;
  (*&v4[8 * (byte_1000EC620[byte_1000E7C70[(11 * ((*v2 - *(v0 - 4)) ^ 8))] ^ 0x22] ^ (11 * ((*v2 - *(v0 - 4)) ^ 8))) + 22072])(v8);
  v8[1] = 1504884919 * ((-1394645208 - (v8 | 0xACDF6728) + (v8 | 0x532098D7)) ^ 0xA8E32FCC) + 1212455568;
  (*&v4[8 * ((11 * ((*v2 + *(v0 - 4)) ^ 8)) ^ byte_1000EC620[byte_1000E7C70[(11 * ((*v2 + *(v0 - 4)) ^ 8))] ^ 0x24]) + 21376])(v8);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100045748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, int a37, int a38, int a39, int a40, int a41, int a42, int a43, int a44, int a45, int a46, int a47, int a48, int a49, int a50, int a51, int a52, int a53, int a54, int a55, int a56, int a57, int a58, int a59, int a60, int a61, int a62, int a63)
{
  *(v63 - 124) = (35 * (*(v63 - 152) ^ 0x1188) - 833019988) ^ *(v63 - 164);
  *(v63 - 128) = *(v63 - 160) ^ 0x1978C64A;
  *(v63 - 132) = *(v63 - 168) ^ 0x8AA361C;
  *(v63 - 140) = *(v63 - 156) ^ 0xDCB3F494;
  return sub_100052EDC(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_1000457BC(uint64_t a1, unsigned int a2)
{
  v9 = v2 < v4;
  v10 = v3 + 1;
  if (v9 == v10 > (v6 ^ v7 ^ a2))
  {
    v9 = v10 + v4 < v2;
  }

  return (*(v8 + 8 * ((v9 * v5) ^ v6)))();
}

void sub_100045864(uint64_t a1)
{
  v1 = *(a1 + 24) + 742307843 * ((-2 - ((a1 | 0xC6521B6B) + (~a1 | 0x39ADE494))) ^ 0x278F69C1);
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v9[0] = 0x515F711100000082;
  v9[1] = &v12;
  v10[0] = 0x515F711100000082;
  v10[1] = &v11;
  v6 = v3[1];
  v13 = v2;
  v15 = v3;
  v16 = v6;
  v17 = v5;
  v18 = v9;
  LODWORD(v14) = v1 + 435584651 * (&v13 ^ 0x6D321A56) - 95;
  v7 = *(&off_1001252D0 + v1 - 863) - 8;
  (*&v7[8 * (v1 ^ 0xEFE)])(&v13);
  v8 = *v3;
  LODWORD(v14) = v1 + 675097751 * (&v13 ^ 0x43402596) - 689;
  v13 = v8;
  v15 = v10;
  (*&v7[8 * v1 + 13280])(&v13);
  LODWORD(v13) = v1 + 143681137 * (((&v13 | 0x58971CBE) - &v13 + (&v13 & 0xA768E340)) ^ 0xBE3FB0AE) + 913;
  v14 = v4;
  (*&v7[8 * (v1 ^ 0xED3)])(&v13);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100045A64@<X0>(int a1@<W8>)
{
  v7 = (a1 + 1218) | 2;
  v8 = 675097751 * (((v13 | 0x61FC6385) - (v13 & 0x61FC6385)) ^ 0x22BC4613);
  LODWORD(v14) = a1 - v8 + 1247;
  HIDWORD(v14) = v8 + 2 * BYTE2(v10) + (BYTE2(v10) ^ 0x6FBF67FF) - 135266591;
  v15 = (((2 * (v10 >> (((a1 - 62) | 2) ^ 7))) & 0xFC) + ((v10 >> (((a1 - 62) | 2) ^ 7)) ^ 0xFDBFDF7E) + 1064269792) ^ v8;
  v13[0] = v1 - v8 - ((2 * v1) & 0xF05C559A) - 131192115;
  v13[1] = ((HIBYTE(v10) ^ 0xDFB78CE7) + ((v10 >> 23) & 0x1CE) + 2146138108) ^ v8;
  (*(v3 + 8 * (a1 + 1946)))(v13);
  *v6 = 36;
  (*(v3 + 8 * (v7 + 772)))(v12);
  v14 = *v5;
  v13[0] = v7 + ((v13 + 773141949 - 2 * (v13 & 0x2E1535BD)) ^ 0x43272FEB) * v4 - 220;
  result = (*(v3 + 8 * (v7 ^ 0x2F4)))(v13);
  *v2 = v11;
  return result;
}

uint64_t sub_100045C30(uint64_t a1)
{
  v1 = 1504884919 * ((a1 + 1915742335 - 2 * (a1 & 0x722FE87F)) ^ 0x89EC5F64);
  v2 = *(a1 + 40) ^ v1;
  v3 = *(a1 + 28) + v1;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a1 + v1;
  v7 = *(&off_1001252D0 + v2 - 1421512316) - 8;
  if (v3 == 1976957257 || v3 == 1976957254)
  {
    __asm { BRAA            X20, X17 }
  }

  v9 = *(a1 + 48);
  v10 = 1037613739 * (&v13 ^ 0xD1022D7F);
  v19 = *(a1 + 32);
  v17 = (v2 - 1421510003) ^ v10;
  v15 = v4;
  v16 = v5;
  v14 = v9;
  v13 = v10 - 975431504 + v6;
  result = (*&v7[8 * (v2 ^ 0x54BA85A1)])(&v13);
  *(a1 + 24) = v18;
  return result;
}

uint64_t sub_100045FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = v6 - 1;
  *(a1 + v9) = *(v8 + v9);
  return (*(a6 + 8 * ((85 * (v9 == ((4 * v7) ^ 0x6A4u) - 716)) ^ (v7 + 1302))))();
}

uint64_t sub_100045FE0@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 + (v1 + 1789) - 2361;
  *(a1 + v5) = *(v3 + v5) - ((2 * *(v3 + v5)) & 0x40) + 32;
  return (*(v4 + 8 * ((((v5 == 0) << 6) | ((v5 == 0) << 7)) ^ v1)))();
}

uint64_t sub_100046020(_DWORD *a1)
{
  v2 = 1504884919 * ((2 * (a1 & 0x68AB10B2) - a1 + 391442253) ^ 0xEC975856);
  v3 = a1[5] + v2;
  v4 = *a1 ^ v2;
  v9[1] = v3 + 1361651671 * (((v9 | 0xC1BFBEC) - v9 + (v9 & 0xF3E40410)) ^ 0x47703792) + 542045597;
  v5 = *(&off_1001252D0 + (v3 ^ 0xE3C8E4E5)) - 8;
  result = (*&v5[8 * (v3 ^ 0xE3C8EEF0)])(v9);
  if (v4 > 1831126891)
  {
    if (v4 == 2116339563)
    {
      v7 = 3;
    }

    else
    {
      if (v4 != 1831126892)
      {
        goto LABEL_11;
      }

      v7 = 1;
    }

LABEL_10:
    v8 = *&v5[8 * ((((*&v5[8 * (v3 + 473376444)])((*(*(&off_1001252D0 + (v3 + 473373845)) + 6 * v7 + 2) - 1912886423), 0x100004077774924) == 0) * (v3 + 473374092)) ^ (v3 + 473374937))];
    __asm { BRAA            X8, X17 }
  }

  if (v4 == 1831126888)
  {
    v7 = 0;
    goto LABEL_10;
  }

  if (v4 == 1831126891)
  {
    v7 = 2;
    goto LABEL_10;
  }

LABEL_11:
  a1[4] = 1958811793;
  return result;
}

uint64_t sub_1000462A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v11 = (((v8 ^ 0x926) - 168) ^ 0x28F5F84D) + v9;
  v12 = (v11 < a8) ^ (a5 + 203833973 < a8);
  v13 = v11 < a5 + 203833973;
  if (v12)
  {
    v13 = a5 + 203833973 < a8;
  }

  return (*(v10 + 8 * ((221 * v13) ^ v8)))();
}

uint64_t sub_100046308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x390] = 0;
  v70 = 143681137 * ((((2 * (v68 - 192)) | 0x12B042C6) - (v68 - 192) - 156770659) ^ 0xEFF08D73);
  *(v68 - 188) = v70 + v67 - 955;
  *(v68 - 168) = &STACK[0x390];
  *(v68 - 184) = 0;
  *(v68 - 176) = &a67;
  *(v68 - 160) = v70 + 583623;
  v71 = (*(v69 + 8 * (v67 ^ 0xCBB)))(v68 - 192);
  return (*(a62 + 8 * ((57 * (((v67 - 62 + v67 - 80 + 1) ^ (*(v68 - 192) == 1958853845)) & 1)) ^ v67)))(v71);
}

uint64_t sub_1000463DC(__n128 a1)
{
  v4[-1] = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

uint64_t sub_10004645C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, unsigned int a17, char *a18, int a19)
{
  a17 = (50899313 * (((&a17 | 0xFCA4660B) - (&a17 & 0xFCA4660B)) ^ 0xD66F4C71)) ^ 0x78C;
  a18 = &a15;
  v20 = (*(v19 + 22360))(&a17);
  return (*(v19 + 8 * ((3404 * (a19 == 1958853845)) ^ 0x5A6u)))(v20);
}

void sub_100046504(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1000467D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  (*(v27 + 8 * (v26 + 1291)))(a14, 0x100004077774924);
  v29 = (*(v27 + 8 * (v26 + 1241)))();
  *v28 = v29;
  return sub_100046828(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_100046868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, _DWORD *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *a30 = 64;
  *(a58 + 252) = 1365209361;
  *(a58 + 256) = a58 + 264;
  *(a58 + 520) = 64;
  *(a58 + 524) = 1365209361;
  *(a58 + 528) = a58 + 536;
  *(a58 + 792) = 64;
  *(a58 + 796) = 1365209361;
  *(a58 + 800) = a58 + 808;
  *(a58 + 1064) = 64;
  *(a58 + 1068) = 1365209361;
  *(a58 + 1072) = a58 + 1080;
  *(a58 + 1336) = 64;
  *(a58 + 1340) = 1365209361;
  *(a58 + 1344) = a58 + 1352;
  v68 = 1785193651 * ((((2 * (v66 - 192)) | 0x2B1BEA04) - (v66 - 192) + 1785858814) ^ 0x63AC512E);
  *(v66 - 192) = 1899727010 - v68 + (((v64 ^ 0x7BCE9E74) - 2077138548) ^ ((v64 ^ 0xBD105C99) + 1123001191) ^ (((((v63 + 270210881) & 0xEFE4E55B) + 1067386808) ^ v64) - 1067387090));
  *(v66 - 164) = v63 + 807 - v68;
  *(v66 - 184) = a63 + 4;
  *(v66 - 176) = a30;
  (*(v67 + 8 * (v63 + 1683)))(v66 - 192);
  v79 = v64 ^ v65;
  v69 = a63 + 4 + v79;
  v70 = 1785193651 * ((((v66 - 192) | 0xC95DF582) - ((v66 - 192) & 0xC95DF582)) ^ 0x3F7C51AE);
  *(v66 - 184) = v69;
  *(v66 - 176) = a58 + 520;
  v71 = v63 + 807;
  *(v66 - 164) = v63 + 807 - v70;
  *(v66 - 192) = 1899727010 - v70 + (((v64 ^ 0x60FF8F4C) - 1627361100) ^ ((v64 ^ 0xD8484034) + 666353612) ^ ((v64 ^ 0x41F60547) - 1106642247));
  (*(a62 + 8 * (v63 + 1683)))(v66 - 192);
  v72 = v69 + v79;
  v73 = 1785193651 * ((((v66 - 192) | 0xEB442113) + (~(v66 - 192) | 0x14BBDEEC)) ^ 0x1D65853E);
  *(v66 - 164) = v63 + 807 - v73;
  *(v66 - 192) = 1899727010 - v73 + (((v64 ^ 0x53F3358B) - 1408447883) ^ ((v64 ^ 0xB45D1659) + 1268967847) ^ ((v64 ^ 0x1EEFE9ED) - 519039469));
  *(v66 - 184) = v72;
  *(v66 - 176) = a58 + 792;
  (*(a62 + 8 * (v63 + 1683)))(v66 - 192);
  v74 = 1785193651 * ((-617744842 - ((v66 - 192) | 0xDB2DF636) + ((v66 - 192) | 0x24D209C9)) ^ 0xD2F3ADE5);
  *(v66 - 192) = 1899727010 - v74 + (((v64 ^ 0x18DC5675) - 417093237) ^ ((v64 ^ 0x7A7F7CB8) - 2055175352) ^ ((v64 ^ 0x9BE2E0F2) + 1679630094));
  *(v66 - 184) = v72 + v79;
  *(v66 - 176) = a58 + 1064;
  *(v66 - 164) = v63 + 807 - v74;
  v75 = v63 ^ 0xF6D;
  (*(a62 + 8 * v75))(v66 - 192);
  v76 = 1785193651 * ((2 * ((v66 - 192) & 0x290C6EC8) - (v66 - 192) + 1458802998) ^ 0xA0D2351A);
  *(v66 - 164) = v71 - v76;
  *(v66 - 184) = v72 + v79 + v79;
  *(v66 - 176) = a58 + 1336;
  *(v66 - 192) = 1899727010 - v76 + (((v64 ^ 0xD3418386) + 750681210) ^ ((v64 ^ 0x5448FF8B) - 1414070155) ^ ((v64 ^ 0x7E48B632) - 2118694450));
  v77 = (*(a62 + 8 * v75))(v66 - 192);
  return sub_100046D2C(v77);
}

uint64_t sub_100046D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unsigned int *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v67 = ((v62 ^ 0x587) - 1065966957) & 0x3F895B1B;
  (*(v63 + 8 * ((v62 ^ 0x587) + 1927)))(*a25, STACK[0x398], LODWORD(STACK[0x300]));
  v68 = LODWORD(STACK[0x22C]);
  v69 = ((((2 * (v64 ^ 0x2C37A1A982DA227CLL)) | 0xD023B7DD89CCED06) - (v64 ^ 0x2C37A1A982DA227CLL) - 0x6811DBEEC4E67683) ^ 0xCFE705DD1153CE28) * v65;
  v70 = v67 - 1751077793 - ((((2 * (v64 ^ 0x82DA227C)) | 0x89CCED06) - (v64 ^ 0x82DA227C) + 991529341) ^ 0x1153CE28) * v65;
  *(v66 - 192) = 1958811823 - v69;
  *(v66 - 160) = v70 - 113;
  *(v66 - 176) = -(((((2 * (v64 ^ 0x82DA227C)) | 0x89CCED06) - (v64 ^ 0x82DA227C) + 991529341) ^ 0x1153CE28) * v65);
  *(v66 - 172) = v67 - ((((2 * (v64 ^ 0x82DA227C)) | 0x89CCED06) - (v64 ^ 0x82DA227C) + 991529341) ^ 0x1153CE28) * v65 + 55969656;
  *(v66 - 168) = v68 ^ v69;
  *(v66 - 184) = ((((2 * (v64 ^ 0x82DA227C)) | 0x89CCED06) - (v64 ^ 0x82DA227C) + 991529341) ^ 0x1153CE28) * v65 + v67 - 1751077793 + 25;
  *(v66 - 180) = v70;
  v71 = (*(a62 + 8 * (v67 ^ 0xBFD)))(v66 - 192);
  return (*(a62 + 8 * *(v66 - 156)))(v71);
}

uint64_t sub_100046EC8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  LODWORD(STACK[0x2B8]) = a1;
  v58 = (*(v55 + 8 * (v56 + 951)))(v57 + 16, 0);
  v59 = *(v57 + 16);
  *(v57 + 4) = *(v57 + 24);
  *(v57 + 8) = v59;
  v60 = v56 ^ 0xDFC;
  *(v57 + 12) = (*(a55 + 8 * v60))(v58);
  *v57 = (*(a55 + 8 * v60))();
  return sub_100046F48();
}

uint64_t sub_100046F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v68 = *(v62 + 4 * (v63 - 1));
  *(v62 + 4 * v63) = *(v66 + 4 * v65) + v65 + ((1664525 * (v68 ^ (v68 >> 30))) ^ *(v62 + 4 * v63));
  *(v67 - 168) = a49;
  *(v67 - 192) = (v64 + 1699922301) ^ a59;
  v69 = v64 + 2058752652 - a59;
  *(v67 - 184) = v63 + 1 + a59;
  *(v67 - 176) = v69 + 50;
  *(v67 - 172) = a59 ^ 1;
  *(v67 - 160) = v69;
  *(v67 - 156) = ((v64 + 2058752652) ^ 0xE5) - a59;
  v70 = (*(a2 + 8 * (v64 + 2482)))(v67 - 192);
  return (*(a62 + 8 * *(v67 - 188)))(v70);
}

uint64_t sub_1000470AC(uint64_t a1, char a2, __n128 a3)
{
  v6.n128_u64[0] = (v4 + 13) & 0xF;
  v6.n128_u64[1] = (v4 + 12) & 0xF;
  v7.n128_u64[0] = (v4 + 11) & 0xF;
  v7.n128_u64[1] = (v4 + 10) & 0xF;
  v8.n128_u64[0] = (v4 + 9) & 0xF;
  v8.n128_u64[1] = a2 & 0xF ^ 4;
  v12.val[0].i64[0] = (v4 + 7) & 0xF;
  v12.val[0].i64[1] = (v4 + 6) & 0xF;
  v12.val[1].i64[0] = (v4 + 5) & 0xF;
  v12.val[1].i64[1] = (v4 + 4) & 0xF;
  v12.val[2].i64[0] = (v4 + 3) & 0xF;
  v12.val[2].i64[1] = (v4 + 2) & 0xF;
  v12.val[3].i64[0] = (v4 + 1) & 0xF;
  v12.val[3].i64[1] = v4 & 0xF;
  v9.n128_u64[0] = 0x9B9B9B9B9B9B9B9BLL;
  v9.n128_u64[1] = 0x9B9B9B9B9B9B9B9BLL;
  v10.n128_u64[0] = 0x2020202020202020;
  v10.n128_u64[1] = 0x2020202020202020;
  return sub_10004718C(a1, *(v5 - 128) - 15, 0, v3 - 15, (v4 + 14) & 0xF, (8 * a1) ^ 0x1308u, a3, v6, v7, v8, xmmword_1000F0BC0, vqtbl4q_s8(v12, xmmword_1000F0BC0), v9, v10);
}

uint64_t sub_10004718C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, __n128 a8, __n128 a9, __n128 a10, int8x16_t a11, double a12, int8x16_t a13, int8x16_t a14)
{
  v20 = ~a3 + v17;
  v21 = v20 & 0xF;
  v23.i64[0] = vqtbl4q_s8(*(&a8 - 1), a11).u64[0];
  *&v23.i64[1] = a12;
  v24 = vrev64q_s8(veorq_s8(veorq_s8(*(a4 + v20), *(v14 + v21 - 15)), veorq_s8(*(v16 + v21 - 15), *(v21 + v15 - 14))));
  v25 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v24, v24, 8uLL), a14), vmulq_s8(v23, a13)));
  *(a2 + v20) = vextq_s8(v25, v25, 8uLL);
  return (*(v19 + 8 * ((((a3 + a6 - 2640 == v18) << 9) | ((a3 + a6 - 2640 == v18) << 11)) ^ a1)))();
}

void sub_1000472E0(uint64_t a1)
{
  v1 = *a1 ^ (435584651 * ((a1 & 0xBA98D0F4 | ~(a1 | 0xBA98D0F4)) ^ 0x2855355D));
  v2 = *(a1 + 8);
  v3 = *(&off_1001252D0 + v1 - 963) - 8;
  (*&v3[8 * (v1 ^ 0xE60)])(*(&off_1001252D0 + v1 - 1053) - 4, sub_1000189B0);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10004744C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v20 - 128) = &a15;
  *(v20 - 120) = (v18 + 727) ^ (((2 * ((v20 - 136) & 0x39834E20) - (v20 - 136) + 1182577115) ^ 0xD177DA5) * v15);
  *(v20 - 112) = v16;
  v21 = (*(v19 + 8 * (v18 + 2280)))(v20 - 136);
  return (*(v19 + 8 * (((*(v20 - 136) > (v17 + v18 - 6 - 450)) * ((v18 ^ 0x492) + 1025)) ^ v18)))(v21);
}

uint64_t sub_1000474E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, unsigned int a17, uint64_t a18)
{
  v21 = (((&a16 | 0xADB2671) - (&a16 & 0xADB2671)) ^ 0xF118916A) * v20;
  a18 = a15;
  a16 = (v18 ^ 0x2AB7DF7B) + 2 * (v18 & 3) - 134497120 + v21;
  a17 = 2715 - v21;
  v22 = (*(v19 + 22088))(&a16);
  return sub_1000475C0(v22);
}

uint64_t sub_1000475C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, int a18, unsigned int a19, uint64_t a20)
{
  v27 = a11 + 32 * v24;
  v28 = *(v27 + 8);
  v29 = 742307843 * (((v23 | 0x520FE0FE) - (v23 & 0x520FE0FE)) ^ 0x65E84FE3);
  v30 = ((v25 + 310) ^ 0x7BABFA37 ^ *v27) - v29 + ((2 * *v27) & 0xF757F7DA) - 939551232;
  a18 = v25 + 1191 - v29;
  a19 = v30;
  a17 = v28;
  a20 = a15;
  (*(v22 + 8 * v20))(&a16);
  v31 = *(v27 + 24);
  v32 = *(v27 + 16);
  a20 = a15;
  a17 = v31;
  a18 = v25 + 1191 - v26;
  a19 = (v32 ^ 0x67FF93FD) - v26 + ((2 * v32) & 0xCFFF27FA) - 609485328;
  v33 = (*(v22 + 8 * v20))(&a16);
  return (*(v22 + 8 * ((30 * (v24 + 1 >= v21)) ^ v25)))(v33);
}

uint64_t sub_1000476DC@<X0>(int a1@<W3>, int a2@<W5>, int a3@<W6>, int a4@<W7>, int a5@<W8>)
{
  v11 = (v10 + 4 * v6);
  v12 = v6 + 1;
  v13 = *(v10 + 4 * v12);
  v14 = v11[397] ^ ((v13 & (((a5 + a2) | a3) ^ a4) | v5 & 0x80000000) >> 1);
  *v11 = (v14 + v7 - (a1 & (2 * v14))) ^ *(v9 + 4 * (v13 & 1));
  return (*(v8 + 8 * (((16 * (v12 != 227)) | (32 * (v12 != 227))) ^ a5)))();
}

uint64_t sub_100047748@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  v5 = v2 + 1921457291;
  v6 = v5 < ((v4 + 1057) ^ 0xD9FA5A68);
  v7 = v3 - 637905950 < v5;
  if (v3 > 0x2605AC1D != v6)
  {
    v7 = v6;
  }

  if (v7)
  {
    v8 = a2;
  }

  else
  {
    v8 = a2 + 1;
  }

  *(result + 16) = v8;
  return result;
}

uint64_t sub_1000477A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v14 = (8 * a3) ^ 0x4A40;
  v16 = (((((a12 ^ 0xFD) + 19) ^ a12 ^ ((a12 ^ 0x3B) - 43) ^ (16 - a12)) ^ ((a12 ^ 0x98 ^ v12) + ((8 * a3) ^ 0xDF))) & 0xF) != 0 || ((((a12 - 367606528) ^ 0x4BC57BFD) - 1296938477) ^ (a12 - 367606528) ^ (((a12 - 367606528) ^ 0x2D738F3B) - 737886507) ^ (((a12 - 367606528) ^ 0xFFBFB7FF) + 113804817) ^ (((a12 - 367606528) ^ 0x9F818B98 ^ v12) + ((8 * a3) ^ 0x66F6FEDF))) == ((v14 - 1992) | 0x621) + ((v14 - 985) ^ 0x688C320);
  return (*(v13 + 8 * ((59 * v16) ^ v14)))();
}

uint64_t sub_1000478D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v65 = 1785193651 * ((v63 + 1628834681 - 2 * ((v63 - 192) & 0x61160C39)) ^ 0x9737A815);
  *(v63 - 144) = a30;
  *(v63 - 136) = a29;
  *(v63 - 172) = v65 ^ 0x1930AB45;
  *(v63 - 168) = v65 + v62 + 1376;
  *(v63 - 192) = 0;
  *(v63 - 184) = &STACK[0x2DC];
  *(v63 - 160) = a58;
  *(v63 - 152) = 0;
  v66 = (*(v64 + 8 * (v62 ^ 0x850)))(v63 - 192);
  v67 = *(v63 - 176);
  LODWORD(STACK[0x48C]) = v67;
  return (*(a62 + 8 * ((1333 * (v67 == ((v62 + 1558100784) & 0xA321435B) + 1958853563)) ^ v62)))(v66);
}

uint64_t sub_1000479AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v66 = *(v62 + 4 * (v63 - 1));
  *(v62 + 4 * v63) = ((1566083941 * (v66 ^ (v66 >> 30))) ^ *(v62 + 4 * v63)) - v63;
  v67 = 1361651671 * ((0xBE46CC96CDE475CBLL - ((v65 - 192) | 0xBE46CC96CDE475CBLL) + a51) ^ 0x94A4A1027970464ALL);
  *(v65 - 152) = (v64 - 2030744954) ^ v67;
  *(v65 - 160) = 623 - v67;
  *(v65 - 168) = (v64 - 998187337) ^ v67;
  *(v65 - 164) = v67;
  *(v65 - 192) = ((v64 - 998187337) ^ 0x78) + v67;
  *(v65 - 188) = ((v64 - 998187337) ^ 0x13) - v67;
  *(v65 - 176) = (v63 + 1) ^ v67;
  v68 = (*(a2 + 8 * (v64 + 2490)))(v65 - 192);
  return (*(a62 + 8 * *(v65 - 184)))(v68);
}

uint64_t sub_100047C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, uint64_t a17)
{
  a16 = v17 - 689 - 143681137 * ((&a16 & 0x65B4E35D | ~(&a16 | 0x65B4E35D)) ^ 0x7CE3B0B2);
  a17 = a14;
  (*(v20 + 8 * (v17 ^ 0x926)))(&a16);
  a16 = v17 - 689 - 143681137 * ((2051252747 - (&a16 | 0x7A43A20B) + (&a16 | 0x85BC5DF4)) ^ 0x6314F1E4);
  a17 = a13;
  v22 = (*(v20 + 8 * (v17 + 1818)))(&a16);
  return (*(v20 + 8 * (((v21 == v18) * (((v17 - 1845355229) | 0x8380438) ^ (v19 + 3473))) ^ v17)))(v22);
}

uint64_t sub_100047DE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26)
{
  v29 = a1[2];
  v35 = *a1;
  v30 = a1[5];
  v31 = v30[1];
  *(v28 - 136) = v26 - 763 + 435584651 * ((((v28 - 144) | 0x64276B9) + (~(v28 - 144) | 0xF9BD8946)) ^ 0x6B706CEE);
  *(v28 - 144) = a2;
  *(v28 - 128) = v30;
  *(v28 - 120) = v31;
  *(v28 - 112) = v29;
  *(v28 - 104) = &a10;
  (*(v27 + 8 * (v26 ^ 0xC1A)))(v28 - 144);
  *(v28 - 120) = &a24;
  *(v28 - 112) = &a10;
  *(v28 - 144) = v30;
  *(v28 - 136) = v29;
  *(v28 - 128) = v26 + 1785193651 * (((v28 - 144) & 0xB71D21DC | ~((v28 - 144) | 0xB71D21DC)) ^ 0xBEC37A0F) + 111;
  (*(v27 + 8 * (v26 ^ 0xC2F)))(v28 - 144);
  *(v28 - 112) = v29;
  *(v28 - 104) = &a16;
  *(v28 - 144) = &a24;
  *(v28 - 136) = v26 - 763 + 435584651 * ((((2 * (v28 - 144)) | 0xE6880270) - (v28 - 144) - 1933836600) ^ 0x1E761B6E);
  *(v28 - 128) = v30;
  *(v28 - 120) = &a10;
  (*(v27 + 8 * (v26 ^ 0xC1A)))(v28 - 144);
  *(v28 - 136) = v26 - 763 + 435584651 * ((2 * ((v28 - 144) & 0x50DAF748) - (v28 - 144) + 790956211) ^ 0x421712E5);
  *(v28 - 128) = v30;
  *(v28 - 120) = &a16;
  *(v28 - 144) = &a24;
  *(v28 - 112) = v29;
  *(v28 - 104) = &a18;
  (*(v27 + 8 * (v26 ^ 0xC1A)))(v28 - 144);
  *(v28 - 112) = v29;
  *(v28 - 104) = &a20;
  *(v28 - 136) = v26 - 763 + 435584651 * ((2 * ((v28 - 144) & 0x32BD81C8) - (v28 - 144) - 851280336) ^ 0xA0706466);
  *(v28 - 128) = v30;
  *(v28 - 120) = &a18;
  *(v28 - 144) = &a24;
  (*(v27 + 8 * (v26 + 1050)))(v28 - 144);
  *(v28 - 136) = v26 - 763 + 435584651 * ((v28 + 221694999 - 2 * ((v28 - 144) & 0xD36CCA7)) ^ 0x6004D6F1);
  *(v28 - 144) = &a24;
  *(v28 - 128) = v30;
  *(v28 - 120) = &a20;
  *(v28 - 112) = v29;
  *(v28 - 104) = &a12;
  (*(v27 + 8 * (v26 + 1050)))(v28 - 144);
  *(v28 - 136) = v26 - 763 + 435584651 * ((-950284440 - ((v28 - 144) | 0xC75BCF68) + ((v28 - 144) | 0x38A43097)) ^ 0x55962AC1);
  *(v28 - 144) = &a24;
  *(v28 - 112) = v29;
  *(v28 - 104) = &a22;
  *(v28 - 128) = v30;
  *(v28 - 120) = &a12;
  (*(v27 + 8 * (v26 ^ 0xC1A)))(v28 - 144);
  *(v28 - 136) = v26 - 763 + 435584651 * (((((v28 - 144) | 0xD20160EA) ^ 0xFFFFFFFE) - (~(v28 - 144) | 0x2DFE9F15)) ^ 0x40CC8543);
  *(v28 - 144) = &a24;
  *(v28 - 112) = v29;
  *(v28 - 104) = &a14;
  *(v28 - 128) = v30;
  *(v28 - 120) = &a22;
  (*(v27 + 8 * (v26 + 1050)))(v28 - 144);
  *(v28 - 136) = v26 - 763 + 435584651 * (((v28 - 144) & 0xB9AF2365 | ~((v28 - 144) | 0xB9AF2365)) ^ 0x2B62C6CC);
  *(v28 - 128) = v30;
  *(v28 - 120) = &a14;
  *(v28 - 144) = &a24;
  *(v28 - 112) = v29;
  *(v28 - 104) = &a24;
  (*(v27 + 8 * (v26 + 1050)))(v28 - 144);
  v32 = *v30;
  *(v28 - 136) = v26 + 675097751 * ((v28 + 1527349932 - 2 * ((v28 - 144) & 0x5B09833C)) ^ 0x1849A6AA) - 1357;
  *(v28 - 144) = v32;
  *(v28 - 128) = &a26;
  (*(v27 + 8 * (v26 + 992)))(v28 - 144);
  *(v28 - 144) = v26 + 143681137 * ((-1723232283 - ((v28 - 144) | 0x99498FE5) + ((v28 - 144) | 0x66B6701A)) ^ 0x801EDC0A) + 245;
  *(v28 - 136) = v35;
  v33 = (*(v27 + 8 * (v26 + 1079)))(v28 - 144);
  return (*(v27 + 8 * ((451 * (*(v28 - 128) - 181586625 >= ((v26 - 235) ^ 0x351u) + 2147481979)) ^ v26)))(v33);
}

uint64_t sub_100048354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v19 - 112) = v17;
  *(v19 - 128) = a14;
  *(v19 - 120) = (v14 - 605) ^ (1361651671 * (((v16 | 0x10273434) - v16 + (v16 & 0xEFD8CBC8)) ^ 0x5B4CF84A));
  v20 = (*(v18 + 8 * (v14 + 948)))(v19 - 136);
  return (*(v18 + 8 * (((*(v19 - 136) == v15 + 2) * (((v14 - 1564963717) & 0x5D476EFD) + 3109)) ^ v14)))(v20);
}

uint64_t sub_100048400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  *(*(a13 + 96) + 504) = v39 + 1;
  *(*(a13 + 96) + 496) = a15 - 1;
  v42 = 210068311 * ((v41 - 1519651477 - 2 * ((v41 - 160) & 0xA56BF60B)) ^ 0xF2046CDC);
  *(v41 - 160) = &a30;
  *(v41 - 144) = v42 ^ 0xDE7B15BC;
  *(v41 - 152) = v42 ^ 0x99739F6E;
  v43 = (*(v40 + 22056))(v41 - 160);
  return (*(v40 + 8 * ((2012 * (a15 - 1912887173 + (a39 & 0x3Fu) + 685 < 0xFFFFFFC0)) ^ 0x3ECu)))(v43);
}

void sub_1000485DC()
{
  v6 = 435584651 * ((2 * (v1 & 0x44E47048) - v1 + 991662004) ^ 0x562995E2);
  *(v5 - 128) = v2;
  *(v5 - 120) = v6 + v0 - 401;
  *(v5 - 136) = (v0 - 1159 + (v3 ^ 0x7A9FDBFF) + ((2 * v3) & 0xF53FB7FE) - 1116308157) ^ v6;
  (*(v4 + 8 * (v0 ^ 0xC36)))(v5 - 136);
  JUMPOUT(0x10004867CLL);
}

uint64_t sub_100048758()
{
  v3 = *(&off_1001252D0 + v0 - 1081) - 12;
  v4 = v3[v1[3] ^ 0xDELL] ^ v1[3];
  v5 = *(&off_1001252D0 + v0 - 946) - 12;
  v6 = v5[(v1[4] ^ (((v0 - 94) | 0x42) - 108))] - 35;
  v7 = v6 & 0xFFFFFFB1 | 0xE;
  v8 = v7 ^ v6 & 0x7C;
  v9 = (((v6 ^ 0x30) & (2 * ((v6 ^ 0x30) & (2 * ((v6 ^ 0x30) & (2 * ((v6 ^ 0x30) & (2 * ((v6 ^ 0x30) & (2 * ((v6 ^ 0x30) & (2 * v7) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8) << 25) ^ (v6 << 24);
  v10 = *(&off_1001252D0 + v0 - 941) - 4;
  v11 = v10[v1[14] ^ 0x82];
  v12 = *(&off_1001252D0 + (v0 ^ 0x4F0)) - 4;
  v13 = v12[v1[5] ^ 0x6DLL] << 16;
  v14 = v3[v1[15] ^ 0xFDLL] ^ v1[15];
  v15 = v5[v1[8] ^ 0x70] - 41;
  v16 = v15 & 0x5B ^ 0x52;
  v17 = (v15 ^ (2 * ((v15 ^ 0x36) & (2 * ((v15 ^ 0x36) & (2 * ((v15 ^ 0x36) & (2 * ((v15 ^ 0x36) & (2 * ((v15 ^ 0x36) & (2 * ((v15 ^ 0x26) & (2 * v15) & 0x6E ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ 0x32) << 24;
  v18 = (v17 ^ 0x1FFFFFFF) & ((v10[v1[10] ^ 0x48] << 8) ^ 0x2C23530D) | v17 & 0xD3000000;
  v19 = v12[v1[13] ^ 0xC7];
  v20 = v3[v1[11] ^ 0xD3] ^ v1[11];
  v21 = v5[v1[12] ^ 0xBDLL] - 70;
  v22 = (v21 & 0xFFFFFFD4 | 0x23) ^ v21 & 0xFFFFFFCE;
  v23 = v21 ^ (2 * ((v21 ^ 0x54) & (2 * ((v21 ^ 0x54) & (2 * ((v21 ^ 0x54) & (2 * ((v21 ^ 0x54) & (2 * ((v21 ^ 0x54) & (2 * ((v21 ^ 0x54) & (2 * v22) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22));
  v24 = ((v10[v1[2] ^ 0x87] << 8) ^ 0x1FCFD943) & ((((v12[v1[1] ^ 0x40] << 16) ^ 0x8FCA366A) & (v4 ^ 0x8FFFB6D8) | v4 & 0x95) ^ 0x1086C934);
  v25 = ((v12[v1[1] ^ 0x40] << 16) ^ 0x8FCA366A) & (v4 ^ 0x8FFFB6D8) & 0x803002BC | v4 & 0x94;
  LODWORD(v12) = v12[v1[9] ^ 0x7CLL];
  LODWORD(v5) = v5[*v1 ^ 9] - 31;
  v26 = v5 & 0xFFFFFF87 ^ 0x3D;
  LODWORD(v5) = (v5 ^ (2 * ((v5 ^ 0x2C) & (2 * ((v5 ^ 0x2C) & (2 * ((v5 ^ 0x2C) & (2 * ((v5 ^ 0x2C) & (2 * ((v5 ^ 0x2C) & (2 * (((2 * v5) & 0x5A ^ 0x2A) & v5 ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ 0x96) << 24;
  v94 = (v5 ^ 0x2BFFFFFF) & (v25 ^ 0x3734AC10 ^ v24) ^ v5 & 0x57000000;
  v27 = ((((v19 << 16) ^ 0x6EF4D323) & ~(v23 << 24) | (v23 << 24) & 0x91000000) ^ 0x86F38A36) & (((v14 & 0x1F ^ 0x30C0FF04) & ((v11 << 8) ^ 0x30C0661F) | v14 & 0xE0) ^ 0xCF3FEA00) ^ ((v14 & 0x1F ^ 0x30C0FF04) & ((v11 << 8) ^ 0x30C0661F) & 0x10C0A6EA | v14 & 0xE0);
  v93 = (v13 & 0x390000 ^ 0xFEA069B9 ^ (((v9 ^ 0x7FFFFFF) & ((v10[v1[6]] << 8) ^ 0xAC31C7A3) | v9 & 0x53000000) ^ 0x71F7A96C) & (v13 ^ 0xFFF9FFEF)) & ~(v3[v1[7] ^ 0x2FLL] ^ v1[7]) | (v3[v1[7] ^ 0x2FLL] ^ v1[7]) & 0x89;
  v28 = *(&off_1001252D0 + v0 - 1042);
  HIDWORD(v29) = *(v28 + 4 * (v19 ^ 0xA1));
  LODWORD(v29) = HIDWORD(v29);
  v30 = *(&off_1001252D0 + v0 - 1150) - 12;
  v31 = -219980569 * *&v30[4 * (v23 ^ 0xB5)] + 65885210;
  v32 = (2 * (v31 & 0xFC12ABE6)) & (v31 ^ 0x56706FBE) ^ v31 & 0xFC12ABE6 ^ ((2 * (v31 & 0xFC12ABE6)) & 0xA8204448 | 0x8000);
  LODWORD(v5) = (2 * (v31 ^ 0x56706FBE)) & 0xAA62C458 ^ 0xAA224448 ^ ((2 * (v31 ^ 0x56706FBE)) ^ 0x54C588B0) & (v31 ^ 0x56706FBE);
  v33 = (4 * v32) & 0xAA62C458 ^ v32 ^ ((4 * v32) ^ 0x20000) & v5;
  LODWORD(v5) = (4 * v5) & 0xAA62C458 ^ 0x260C418 ^ ((4 * v5) ^ 0xA98B1160) & v5;
  v34 = (16 * v33) & 0xAA62C450 ^ v33 ^ ((16 * v33) ^ 0x280000) & v5;
  LODWORD(v5) = (16 * v5) & 0xAA62C450 ^ 0x8428058 ^ ((16 * v5) ^ 0xA62C4580) & v5;
  v35 = v34 ^ (v34 << 8) & 0xAA62C400 ^ ((v34 << 8) ^ 0x22800000) & v5 ^ 0x88404458;
  v92 = v0;
  v36 = *(&off_1001252D0 + (v0 & 0xBD405B59)) - 4;
  v37 = *&v36[4 * (v14 ^ 0x78)];
  v38 = (v35 << 16) & 0x2A620000 ^ v35 ^ ((v35 << 16) ^ 0x44580000) & ((v5 << 8) & 0x2A620000 ^ 0x8220000 ^ ((v5 << 8) ^ 0x62C40000) & v5);
  LODWORD(v5) = 690312999 * v37 + 627556284;
  v39 = *(&off_1001252D0 + (v0 ^ 0x4DA));
  LODWORD(v11) = -36060539 * *(v39 + 4 * (v11 ^ 0xC9)) + 1162311885;
  v40 = ((v29 >> 27) - ((2 * (v29 >> 27)) & 0x57D5E83C) + 736818206) ^ v5 ^ ((v5 ^ 0x1D8C375) - 616529097) ^ ((v5 ^ 0x62C1FE91) - 1202077997) ^ ((v5 ^ 0x390173A7) - 476498971) ^ ((v5 ^ 0x7F7FF1FF) - 1511542339) ^ v11 ^ ((v11 ^ 0x8CFF5B18) + 910679083) ^ ((v11 ^ 0xB12FDA71) + 194469188) ^ ((v11 ^ 0xA628965B) + 479203690) ^ ((v11 ^ 0xDEBF6FFF) + 1678239950) ^ v94 ^ v31 ^ (2 * v38) ^ 0xB8752687;
  v41 = v40 ^ v93 ^ 0xF8501000;
  *(v2 - 136) = v41;
  v42 = ((v20 & 0xFFFFFFBF | (v18 ^ 0x17E11F4D) & (v20 ^ 0xFFFFFFBA)) ^ 0x20A6053F) & ((v12 << 16) ^ 0xFF30FFFF) ^ (v12 << 16) & 0x9B0000 ^ 0x4EB6BF98 ^ v41;
  HIDWORD(v29) = *(v28 + 4 * (((v42 ^ v27 ^ 0x7B529569) >> 16) ^ 0xF2u));
  LODWORD(v29) = HIDWORD(v29);
  v43 = 690312999 * *&v36[4 * ((v20 & 0xBF | (v18 ^ 0x4D) & (v20 ^ 0xBA)) ^ 0xA7 ^ (v40 ^ v93) ^ v27 ^ 0x77)] - 1250453624;
  LODWORD(v3) = (v43 ^ 0x8096C7F) & (2 * (v43 & 0x4A886878)) ^ v43 & 0x4A886878;
  v44 = ((2 * (v43 ^ 0x9809FCDF)) ^ 0xA503294E) & (v43 ^ 0x9809FCDF) ^ (2 * (v43 ^ 0x9809FCDF)) & 0xD28194A6;
  LODWORD(v3) = (v44 ^ 0x10000) & (4 * v3) ^ v3;
  v45 = ((4 * (v44 ^ 0x528094A1)) ^ 0x4A06529C) & (v44 ^ 0x528094A1) ^ (4 * (v44 ^ 0x528094A1)) & 0xD28194A4;
  LODWORD(v3) = (v45 ^ 0x42001080) & (16 * v3) ^ v3;
  v46 = ((16 * (v45 ^ 0x90818423)) ^ 0x28194A70) & (v45 ^ 0x90818423) ^ (16 * (v45 ^ 0x90818423)) & 0xD28194A0;
  LODWORD(v3) = v3 ^ 0xD28194A7 ^ (v46 ^ 0x10000) & (v3 << 8);
  LODWORD(v3) = (v3 << 16) & 0x52810000 ^ v3 ^ ((v3 << 16) ^ 0x14A70000) & (((v46 ^ 0xD2809487) << 8) & 0xD2810000 ^ 0x52010000 ^ (((v46 ^ 0xD2809487) << 8) ^ 0x81940000) & (v46 ^ 0xD2809487));
  LODWORD(v5) = -36060539 * *(v39 + 4 * (((v42 ^ v27) >> 8) ^ 0x6Bu)) + 805718762;
  v47 = (v5 ^ 0xEFF1B147) & (2 * (v5 & 0xCFF9B516)) ^ v5 & 0xCFF9B516;
  LODWORD(v12) = ((2 * (v5 ^ 0xE8D3DB43)) ^ 0x4E54DCAA) & (v5 ^ 0xE8D3DB43) ^ (2 * (v5 ^ 0xE8D3DB43)) & 0x272A6E54;
  v48 = (v12 ^ 0x6004C00) & (4 * v47) ^ v47;
  LODWORD(v12) = ((4 * (v12 ^ 0x212A2255)) ^ 0x9CA9B954) & (v12 ^ 0x212A2255) ^ (4 * (v12 ^ 0x212A2255)) & 0x272A6E54;
  v49 = (v12 ^ 0x4282840) & (16 * v48) ^ v48;
  LODWORD(v12) = ((16 * (v12 ^ 0x23024601)) ^ 0x72A6E550) & (v12 ^ 0x23024601) ^ (16 * (v12 ^ 0x23024601)) & 0x272A6E50;
  v50 = v49 ^ 0x272A6E55 ^ (v12 ^ 0x22226400) & (v49 << 8);
  v51 = (v50 << 16) & 0x272A0000 ^ v50 ^ ((v50 << 16) ^ 0x6E550000) & (((v12 ^ 0x5080A05) << 8) & 0x272A0000 ^ 0x5000000 ^ (((v12 ^ 0x5080A05) << 8) ^ 0x2A6E0000) & (v12 ^ 0x5080A05));
  LODWORD(v12) = -219980569 * *&v30[4 * (((v42 ^ v27) >> 24) ^ 0xC3)] + 110336449;
  LODWORD(v19) = (v12 ^ 0xF56A653E) & (2 * (v12 & 0xF96C663F)) ^ v12 & 0xF96C663F;
  v52 = ((2 * (v12 ^ 0x35AA614E)) ^ 0x998C0EE2) & (v12 ^ 0x35AA614E) ^ (2 * (v12 ^ 0x35AA614E)) & 0xCCC60770;
  LODWORD(v19) = (v52 ^ 0x88800060) & (4 * v19) ^ v19;
  v53 = ((4 * (v52 ^ 0x44420111)) ^ 0x33181DC4) & (v52 ^ 0x44420111) ^ (4 * (v52 ^ 0x44420111)) & 0xCCC60770;
  LODWORD(v19) = (v53 ^ 0x540) & (16 * v19) ^ v19;
  v54 = ((16 * (v53 ^ 0xCCC60231)) ^ 0xCC607710) & (v53 ^ 0xCCC60231) ^ (16 * (v53 ^ 0xCCC60231)) & 0xCCC60770;
  LODWORD(v19) = v19 ^ 0xCCC60771 ^ (v54 ^ 0xCC400700) & (v19 << 8);
  v55 = v43 ^ v5 ^ v12 ^ ((v29 >> 27) - ((2 * (v29 >> 27)) & 0xFF98807A) - 3391427) ^ (2 * (v3 ^ v51 ^ (v19 << 16) & 0x4CC60000 ^ v19 ^ ((v19 << 16) ^ 0x7710000) & (((v54 ^ 0x860061) << 8) & 0xCCC60000 ^ 0x8C00000 ^ (((v54 ^ 0x860061) << 8) ^ 0xC6070000) & (v54 ^ 0x860061)))) ^ 0xBA7C569E;
  v56 = v55 ^ v93 ^ 0xF8501000;
  *(v2 - 140) = v42;
  *(v2 - 144) = v56 ^ v42;
  LODWORD(v11) = v56 ^ v42 ^ 0x70F34DBB;
  v57 = v11 ^ v42 ^ v27 ^ 0xA5DCA944;
  LODWORD(v3) = -219980569 * *&v30[4 * (HIBYTE(v57) ^ 0xEE)] + 1941270185;
  LODWORD(v5) = ((2 * (v3 & 0x8C4A9157)) & 0x10912008 | v3 & 0x8C4A9157) ^ (2 * (v3 & 0x8C4A9157)) & (v3 ^ 0xD893610F);
  v58 = ((2 * (v3 ^ 0xD893610F)) ^ 0xA9B3E0B0) & (v3 ^ 0xD893610F) ^ (2 * (v3 ^ 0xD893610F)) & 0x54D9F058;
  LODWORD(v5) = (v58 ^ 0x410D010) & (4 * v5) ^ v5;
  v59 = ((4 * (v58 ^ 0x54481048)) ^ 0x5367C160) & (v58 ^ 0x54481048) ^ (4 * (v58 ^ 0x54481048)) & 0x54D9F058;
  LODWORD(v5) = (v59 ^ 0x5041C040) & (16 * v5) ^ v5;
  v60 = ((16 * (v59 ^ 0x4983018)) ^ 0x4D9F0580) & (v59 ^ 0x4983018) ^ (16 * (v59 ^ 0x4983018)) & 0x54D9F050;
  LODWORD(v12) = v60 ^ 0x1040F058;
  v61 = v5 ^ 0x54D9F058 ^ (v60 ^ 0x44990000) & (v5 << 8);
  LODWORD(v5) = 690312999 * *&v36[4 * ((v11 ^ v42 ^ v27 ^ 0x44) ^ 0xA6)] + 569972374;
  v62 = (v5 ^ 0x9F06E840) & (2 * (v5 & 0xDE06E96A)) ^ v5 & 0xDE06E96A;
  LODWORD(v10) = ((2 * (v5 ^ 0xBF0E2A14)) ^ 0xC21186FC) & (v5 ^ 0xBF0E2A14) ^ (2 * (v5 ^ 0xBF0E2A14)) & 0x6108C37E;
  v63 = (v10 ^ 0x40008278) & (4 * v62) ^ v62;
  LODWORD(v10) = ((4 * (v10 ^ 0x21084102)) ^ 0x84230DF8) & (v10 ^ 0x21084102) ^ (4 * (v10 ^ 0x21084102)) & 0x6108C37C;
  v64 = (v10 ^ 0x160) & (16 * v63) ^ v63;
  LODWORD(v10) = ((16 * (v10 ^ 0x6108C206)) ^ 0x108C37E0) & (v10 ^ 0x6108C206) ^ (16 * (v10 ^ 0x6108C206)) & 0x6108C370;
  v65 = v64 ^ 0x6108C37E ^ (v10 ^ 0x80300) & (v64 << 8);
  v66 = v65 ^ v61 ^ (v61 << 16) & 0x54D90000 ^ (v65 << 16) & 0x61080000 ^ ((v61 << 16) ^ 0x70580000) & ((v12 << 8) & 0x54D90000 ^ 0x4090000 ^ ((v12 << 8) ^ 0xD9F00000) & v12) ^ ((v65 << 16) ^ 0x437E0000) & (((v10 ^ 0x6100C01E) << 8) & 0x61080000 ^ 0x61080000 ^ (((v10 ^ 0x6100C01E) << 8) ^ 0x8C30000) & (v10 ^ 0x6100C01E));
  LODWORD(v12) = -36060539 * *(v39 + 4 * (BYTE1(v57) ^ 5u)) - 553967967;
  LODWORD(v19) = (v12 ^ 0x9984C11F) & (2 * (v12 & 0x2104E15F)) ^ v12 & 0x2104E15F;
  v67 = ((2 * (v12 ^ 0x9B84C1A3)) ^ 0x750041F8) & (v12 ^ 0x9B84C1A3) ^ (2 * (v12 ^ 0x9B84C1A3)) & 0xBA8020FC;
  LODWORD(v19) = (v67 ^ 0xF8) & (4 * v19) ^ v19;
  v68 = ((4 * (v67 ^ 0x8A802004)) ^ 0xEA0083F0) & (v67 ^ 0x8A802004) ^ (4 * (v67 ^ 0x8A802004)) & 0xBA8020FC;
  LODWORD(v19) = (v68 ^ 0xAA0000F0) & (16 * v19) ^ v19;
  v69 = ((16 * (v68 ^ 0x1080200C)) ^ 0xA8020FC0) & (v68 ^ 0x1080200C) ^ (16 * (v68 ^ 0x1080200C)) & 0xBA8020F0;
  LODWORD(v19) = v19 ^ 0xBA8020FC ^ (v69 ^ 0xA8000000) & (v19 << 8);
  *(v2 - 148) = v57;
  HIDWORD(v29) = *(v28 + 4 * (BYTE2(v57) ^ 0x81u));
  LODWORD(v29) = HIDWORD(v29);
  *(v2 - 132) = v40;
  *(v2 - 152) = v55 ^ v40;
  v70 = v3 ^ v5 ^ v12 ^ ((v29 >> 27) - ((2 * (v29 >> 27)) & 0xA6F9E838) + 1400697884) ^ (2 * ((v19 << 16) & 0x3A800000 ^ v19 ^ ((v19 << 16) ^ 0x20FC0000) & (((v69 ^ 0x1280203C) << 8) & 0xBA800000 ^ 0x3A800000 ^ (((v69 ^ 0x1280203C) << 8) ^ 0x80200000) & (v69 ^ 0x1280203C)) ^ v66)) ^ v55 ^ v40 ^ 0x24C0D772;
  *(v2 - 160) = v70 ^ v56;
  v71 = v70 ^ v56 ^ 0xD8C3FC3D;
  v72 = v71 ^ v42 ^ v27 ^ 0xA5DCA944;
  v73 = 690312999 * *&v36[4 * ((v71 ^ v42 ^ v27 ^ 0x44) ^ 0xA8)] + 1157664667;
  LODWORD(v3) = (v73 ^ 0xBAFF7B74) & (2 * (v73 & 0xBAFF7065)) ^ v73 & 0xBAFF7065;
  LODWORD(v5) = ((2 * (v73 ^ 0xAB6B3B76)) ^ 0x23289626) & (v73 ^ 0xAB6B3B76) ^ (2 * (v73 ^ 0xAB6B3B76)) & 0x11944B12;
  LODWORD(v3) = (v5 ^ 0x1000200) & (4 * v3) ^ v3;
  LODWORD(v5) = ((4 * (v5 ^ 0x10944911)) ^ 0x46512C4C) & (v5 ^ 0x10944911) ^ (4 * (v5 ^ 0x10944911)) & 0x11944B10;
  LODWORD(v3) = (v5 ^ 0x100800) & (16 * v3) ^ v3;
  LODWORD(v5) = ((16 * (v5 ^ 0x11844313)) ^ 0x1944B130) & (v5 ^ 0x11844313) ^ (16 * (v5 ^ 0x11844313)) & 0x11944B10;
  v74 = v5 ^ 0x904A03;
  LODWORD(v5) = v3 ^ 0x11944B13 ^ (v5 ^ 0x11040100) & (v3 << 8);
  LODWORD(v3) = -36060539 * *(v39 + 4 * (BYTE1(v72) ^ 0x69u)) - 1897105677;
  LODWORD(v19) = (v3 ^ 0x74832909) & (2 * (v3 & 0x7113890D)) ^ v3 & 0x7113890D;
  v75 = ((2 * (v3 ^ 0xD484290B)) ^ 0x4B2F400C) & (v3 ^ 0xD484290B) ^ (2 * (v3 ^ 0xD484290B)) & 0xA597A006;
  LODWORD(v19) = (v75 ^ 0x60006) & (4 * v19) ^ v19;
  v76 = ((4 * (v75 ^ 0xA490A002)) ^ 0x965E8018) & (v75 ^ 0xA490A002) ^ (4 * (v75 ^ 0xA490A002)) & 0xA597A004;
  LODWORD(v19) = v19 ^ 0xA597A006 ^ (v76 ^ 0x84168000) & (16 * v19);
  v77 = (16 * (v76 ^ 0x21812006)) & 0xA597A000 ^ 0xA485A006 ^ ((16 * (v76 ^ 0x21812006)) ^ 0x597A0060) & (v76 ^ 0x21812006);
  LODWORD(v19) = (v19 << 8) & 0xA597A000 ^ v19 ^ ((v19 << 8) ^ 0x97A00600) & v77;
  LODWORD(v5) = v19 ^ v5 ^ (v19 << 16) & 0x25970000 ^ (v5 << 16) & 0x11940000 ^ ((v5 << 16) ^ 0x4B130000) & ((v74 << 8) & 0x11940000 ^ 0x1940000 ^ ((v74 << 8) ^ 0x944B0000) & v74) ^ ((v19 << 16) ^ 0x20060000) & ((v77 << 8) & 0xA5970000 ^ 0x20170000 ^ ((v77 << 8) ^ 0x97A00000) & v77);
  HIDWORD(v29) = *(v28 + 4 * (BYTE2(v72) ^ 2u));
  LODWORD(v29) = HIDWORD(v29);
  LODWORD(v12) = -219980569 * *&v30[4 * (HIBYTE(v72) ^ 0x27)] - 531949213;
  LODWORD(v19) = (v12 ^ 0x1FB4C499) & (2 * (v12 & 0x1FB4E69D)) ^ v12 & 0x1FB4E69D;
  v78 = ((2 * (v12 ^ 0x3BF48981)) ^ 0x4880DE38) & (v12 ^ 0x3BF48981) ^ (2 * (v12 ^ 0x3BF48981)) & 0x24406F1C;
  LODWORD(v19) = (v78 ^ 0xE18) & (4 * v19) ^ v19;
  v79 = ((4 * (v78 ^ 0x24402104)) ^ 0x9101BC70) & (v78 ^ 0x24402104) ^ (4 * (v78 ^ 0x24402104)) & 0x24406F1C;
  LODWORD(v19) = (v79 ^ 0x2C10) & (16 * v19) ^ v19;
  v80 = ((16 * (v79 ^ 0x2440430C)) ^ 0x4406F1C0) & (v79 ^ 0x2440430C) ^ (16 * (v79 ^ 0x2440430C)) & 0x24406F10;
  LODWORD(v19) = v19 ^ 0x24406F1C ^ (v80 ^ 0x4006100) & (v19 << 8);
  v81 = v3 ^ v73 ^ v12 ^ ((v29 >> 27) - ((2 * (v29 >> 27)) & 0xC91131C2) + 1686673633) ^ (2 * ((v19 << 16) & 0x24400000 ^ v19 ^ ((v19 << 16) ^ 0x6F1C0000) & (((v80 ^ 0x20400E1C) << 8) & 0x24400000 ^ 0x24000000 ^ (((v80 ^ 0x20400E1C) << 8) ^ 0x406F0000) & (v80 ^ 0x20400E1C)) ^ v5));
  LODWORD(v3) = v71 ^ v11;
  *(v2 - 156) = v70;
  v82 = v81 ^ v70 ^ 0xCA21D306;
  v83 = v82 ^ v71;
  *(v2 - 168) = v83;
  *(v2 - 164) = v3;
  LODWORD(v3) = v83 ^ 0x89E772DE ^ v3;
  *(v2 - 172) = v3;
  v84 = v3 ^ 0x8CCABACC ^ v72;
  HIDWORD(v29) = *(v28 + 4 * (BYTE2(v84) ^ 0x18u));
  LODWORD(v29) = HIDWORD(v29);
  LODWORD(v5) = -36060539 * *(v39 + 4 * (BYTE1(v84) ^ 0xFDu)) + 1632719164;
  v85 = (v5 ^ 0x9E8C8CA3) & (2 * (v5 & 0x9EAEAEC4)) ^ v5 & 0x9EAEAEC4;
  LODWORD(v12) = ((2 * (v5 ^ 0xAFD59C23)) ^ 0x62F665CE) & (v5 ^ 0xAFD59C23) ^ (2 * (v5 ^ 0xAFD59C23)) & 0x317B32E6;
  v86 = (v12 ^ 0x20722000) & (4 * v85) ^ v85;
  LODWORD(v12) = ((4 * (v12 ^ 0x11091221)) ^ 0xC5ECCB9C) & (v12 ^ 0x11091221) ^ (4 * (v12 ^ 0x11091221)) & 0x317B32E4;
  v87 = (v12 ^ 0x1680280) & (16 * v86) ^ v86;
  LODWORD(v12) = ((16 * (v12 ^ 0x30133063)) ^ 0x17B32E70) & (v12 ^ 0x30133063) ^ (16 * (v12 ^ 0x30133063)) & 0x317B32E0;
  v88 = v87 ^ 0x317B32E7 ^ (v12 ^ 0x11332200) & (v87 << 8);
  v89 = (v88 << 16) & 0x317B0000 ^ v88 ^ ((v88 << 16) ^ 0x32E70000) & (((v12 ^ 0x20481087) << 8) & 0x317B0000 ^ 0x490000 ^ (((v12 ^ 0x20481087) << 8) ^ 0x7B320000) & (v12 ^ 0x20481087));
  LODWORD(v12) = 690312999 * *&v36[4 * (v3 ^ 0xCC ^ v72 ^ 0xCC)] - 1130382408;
  *(v2 - 176) = v84;
  v90 = 309262444 - 219980569 * *&v30[4 * (HIBYTE(v84) ^ 0xAD)];
  *(v2 - 180) = v5 ^ v12 ^ v90 ^ ((v29 >> 27) - ((2 * (v29 >> 27)) & 0x5F64A282) - 1347268287) ^ ((v12 ^ 0x4BCF8BBF) + 145739769) ^ ((v12 ^ 0xA73ABD2E) - 463799958) ^ ((v12 ^ 0xAED572D0) - 306891112) ^ ((v12 ^ 0xFEBFFFF9) - 1109410881) ^ ((v90 ^ 0x49E2A8D0) - 1535922364) ^ ((v90 ^ 0x3B3A2AAB) - 693424839) ^ ((v90 ^ 0x9E4185FE) + 1943044718) ^ ((v90 ^ 0xFEF7FFE9) + 325515387) ^ (2 * v89) ^ v82 ^ 0x3635B771;
  return sub_10004B41C((*(*(&off_1001252D0 + (v92 & 0xA3E50151)) + (*(v2 - 109) ^ 0x30)) ^ 0x71 | ((-28 - *(*(&off_1001252D0 + (v92 ^ 0x4F6)) + (*(v2 - 112) ^ 0xF4) - 4)) << 24) | ((*(v2 - 110) ^ 0x98 ^ *(*(&off_1001252D0 + (v92 ^ 0x4A8)) + (*(v2 - 110) ^ 0xDELL) - 8)) << 8) | ((*(*(&off_1001252D0 + (v92 & 0xE4D9F3BC)) + (*(v2 - 111) ^ 0x39) - 4) ^ 0xBC) << 16)) ^ 0xD2D2D2D2);
}

uint64_t sub_10004B41C(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, int a18, int a19, int a20, int a21, int a22, int a23, int a24, int a25, int a26, int a27, int a28, int a29, int a30, int a31, int a32, int a33, int a34, int a35, unsigned int a36, int a37, int a38, int a39, int a40, int a41, int a42, int a43, int a44, int a45, int a46, int a47, int a48)
{
  v53 = (*(v52 - 128) + v50);
  v54 = (*(a15 + (v53[11] ^ 9)) ^ 7 | ((*(a14 + (v53[9] ^ 0xD2)) ^ 0x73) << 16) | ((v53[10] ^ 0xC2 ^ *(a13 + (v53[10] ^ 0xA9))) << 8) | (((*(a12 + (v53[8] ^ 2)) + 27) ^ 0xE2) << 24)) ^ v48;
  v55 = (((v53[6] ^ 0x19 ^ *(a13 + (v53[6] ^ 8))) << 8) | (((*(a12 + (v53[4] ^ 0xC5)) + 27) ^ 0xFFFFFFFB) << 24) | *(a15 + (v53[7] ^ 0xFDLL)) | ((*(a14 + (v53[5] ^ 0xF5)) ^ 0x51) << 16)) ^ v51;
  v56 = (*(a15 + (v53[15] ^ 8)) + ((*(a14 + (v53[13] ^ 0x90)) ^ 0xE5) << ((v49 ^ 0xD2) + 95)) + (((*(a12 + (v53[12] ^ 0x80)) + 27) ^ 0x31) << 24) + ((v53[14] ^ 0x99 ^ *(a13 + (v53[14] ^ 5))) << 8)) ^ a4;
  v57 = (*(a15 + (v53[3] ^ 0x75)) ^ 0xAD | (((*(a12 + (*v53 ^ 0xB0)) + 27) ^ 0x16) << 24) | ((*(a14 + (v53[1] ^ 0x93)) ^ 0x9B) << 16) | ((v53[2] ^ 0x5D ^ *(a13 + (v53[2] ^ 0x1CLL))) << 8)) ^ a1;
  v58 = a35 ^ (v55 - ((2 * v55) & 0x307CAE48) - 1740744924);
  v59 = a34 ^ (v57 - ((2 * v57) & 0x32157914) + 420134026);
  v60 = a33 ^ (v56 - ((2 * v56) & 0xC7DA77BE) - 470991905);
  v61 = a32 ^ (v54 - ((2 * v54) & 0xAB201FE) + 89719039);
  v62 = *(&off_1001252D0 + v49 - 1972);
  v63 = *(&off_1001252D0 + (v49 ^ 0x8CB)) - 12;
  v64 = *(&off_1001252D0 + (v49 ^ 0x8FB)) - 12;
  v65 = *(&off_1001252D0 + (v49 & 0x1B24F057)) - 12;
  v66 = *&v64[4 * HIBYTE(v60)] ^ *(v62 + 4 * BYTE1(v58)) ^ *&v63[4 * BYTE2(v59)] ^ (*&v65[4 * v61] + a6);
  v67 = *(v62 + 4 * BYTE1(v59)) ^ *&v64[4 * HIBYTE(v61)] ^ *&v63[4 * BYTE2(v60)] ^ (*&v65[4 * v58] + a6);
  v68 = *&v64[4 * HIBYTE(v58)] ^ *&v63[4 * BYTE2(v61)] ^ *(v62 + 4 * BYTE1(v60)) ^ (*&v65[4 * v59] + a6);
  v69 = *&v63[4 * BYTE2(v58)] ^ (*&v65[4 * v60] + a6) ^ *&v64[4 * HIBYTE(v59)] ^ *(v62 + 4 * BYTE1(v61));
  v70 = (v69 - ((2 * v69) & 0xCE267AB6) - 418169509) ^ *(v52 - 132);
  v71 = v66 - ((2 * v66) & 0x674B17F2) - 1280996359;
  v72 = (v67 - ((2 * v67) & 0xF4E8D500) + 2054449792) ^ *(v52 - 140);
  v73 = (v68 - ((2 * v68) & 0xFE5AD4FE) + 2133682815) ^ *(v52 - 136);
  BYTE2(v68) = BYTE2(v73) ^ 0x80;
  v74 = a31 ^ v71;
  v75 = *&v63[4 * ((v70 ^ 0xD7674CCB) >> 16)] ^ *&v64[4 * HIBYTE(v74)];
  v76 = *&v65[4 * v74];
  v77 = *(v62 + 4 * BYTE1(v74));
  v78 = (*&v65[4 * (v73 ^ 0x48)] + a6) ^ *&v64[4 * ((v72 ^ 0x16B10DD4) >> 24)] ^ *(v62 + 4 * ((v70 ^ 0x4CCB) >> 8)) ^ *&v63[4 * BYTE2(v74)];
  v79 = (*&v65[4 * (v70 ^ 0xDD)] + a6) ^ v77 ^ *&v64[4 * ((v73 ^ 0xBF80DD5E) >> 24)] ^ *&v63[4 * ((v72 ^ 0x16B10DD4) >> 16)];
  v80 = v75 ^ *(v62 + 4 * ((v73 ^ 0xDD5E) >> 8)) ^ (*&v65[4 * (v72 ^ 0xC2)] + a6);
  v81 = (v78 - ((2 * v78) & 0x997CD6A0) - 859935920) ^ *(v52 - 144);
  LODWORD(v82) = __ROR4__((v76 + a6) ^ *(v62 + 4 * ((v72 ^ 0xDD4) >> 8)) ^ *&v64[4 * ((v70 ^ 0xD7674CCB) >> 24)] ^ *&v63[4 * BYTE2(v68)] ^ 0xB9AB301, 5) ^ 0x50D2ECF9;
  HIDWORD(v82) = v82;
  v83 = ((v82 >> 27) - ((2 * (v82 >> 27)) & 0x93CED75E) - 907580497) ^ *(v52 - 152);
  v84 = v83 ^ 0x6EDAF696;
  v85 = (v80 - ((2 * v80) & 0x9C7DD81A) - 834737139) ^ *(v52 - 148);
  v86 = a30 ^ (v79 - ((2 * v79) & 0x6D9403A0) - 1228275248);
  v87 = (*&v65[4 * (v81 ^ 0x37)] + a6) ^ *(v62 + 4 * BYTE1(v86));
  v88 = *(v62 + 4 * ((v81 ^ 0xA37) >> 8)) ^ *&v63[4 * BYTE2(v86)];
  v89 = (v81 ^ 0xD62C0A37) >> 24;
  v90 = *&v63[4 * (BYTE2(v81) ^ 0xB3)] ^ *&v64[4 * HIBYTE(v86)];
  v91 = v87 ^ *&v64[4 * ((v85 ^ 0xFC47C039) >> 24)] ^ *&v63[4 * (BYTE2(v83) ^ 0x45)];
  v92 = *&v65[4 * v84] + a6;
  v93 = *&v64[4 * v89] ^ *&v63[4 * ((v85 ^ 0xFC47C039) >> 16)] ^ (*&v65[4 * v86] + a6) ^ *(v62 + 4 * BYTE1(v84));
  v94 = v88 ^ (*&v65[4 * (((v80 - ((2 * v80) & 0x1A) + 13) ^ *(v52 - 148)) ^ 0x39)] + a6) ^ *&v64[4 * HIBYTE(v84)];
  v95 = *(v62 + 4 * (BYTE1(v85) ^ 0x87u));
  v96 = (v93 - ((2 * v93) & 0xA804BBF4) + 1409441274) ^ *(v52 - 164);
  v97 = a29 ^ (v91 - ((2 * v91) & 0x347963EE) - 1707298313);
  v98 = (v94 - ((2 * v94) & 0x6023EC2E) - 1341000169) ^ *(v52 - 156);
  v99 = ((v90 ^ v95 ^ v92) - ((2 * (v90 ^ v95 ^ v92)) & 0xDB7EF8E) + 115079111) ^ *(v52 - 160);
  BYTE2(v91) = BYTE2(v99) ^ 0x65;
  v100 = (*&v65[4 * (v99 ^ 0x28)] + a6) ^ *&v64[4 * ((v96 ^ 0x7F82DAAB) >> 24)] ^ *(v62 + 4 * (((v98 ^ 0x35DF) >> 8) ^ 0x79u)) ^ *&v63[4 * BYTE2(v97)];
  v101 = *(v62 + 4 * BYTE1(v97)) ^ *&v63[4 * ((v96 ^ 0x7F82DAAB) >> 16)] ^ *&v64[4 * ((v99 ^ 0x7D650C28u) >> 24)] ^ (*&v65[4 * (v98 ^ 0xDD)] + a6);
  v102 = *&v63[4 * (((v98 ^ 0x13FC35DF) >> 16) ^ 0x9B)] ^ *(v62 + 4 * (BYTE1(v99) ^ 0x4Bu)) ^ *&v64[4 * HIBYTE(v97)] ^ (*&v65[4 * (v96 ^ 0xBD)] + a6);
  v103 = (v101 - ((2 * v101) & 0x85A52032) - 1026387943) ^ *(v52 - 168);
  v104 = *&v64[4 * (HIBYTE(v98) ^ 0xBD)] ^ (*&v65[4 * v97] + a6) ^ *&v63[4 * BYTE2(v91)] ^ *(v62 + 4 * ((v96 ^ 0xDAAB) >> 8));
  v105 = (v100 - ((2 * v100) & 0x80A63152) + 1079187625) ^ *(v52 - 172);
  BYTE2(v91) = BYTE2(v103) ^ 0x65;
  v106 = (v102 - ((2 * v102) & 0xABEEEEC6) - 705202333) ^ *(v52 - 176);
  v107 = v106 ^ 0xA488E43D;
  v108 = a28 ^ (v104 - ((2 * v104) & 0xD697542E) - 347362793);
  v109 = HIBYTE(v108);
  v110 = (*&v65[4 * v108] + a6) ^ *(v62 + 4 * ((v106 ^ 0xE43D) >> 8)) ^ *&v64[4 * ((v103 ^ 0x66654B3E) >> 24)];
  v111 = *(v62 + 4 * BYTE1(v108)) ^ *&v63[4 * (BYTE2(v106) ^ 0x17)] ^ (*&v65[4 * (v103 ^ 0x28)] + a6);
  v112 = *&v64[4 * HIBYTE(v107)] ^ *(v62 + 4 * ((v103 ^ 0x4B3E) >> 8)) ^ 0xCB7D59C5;
  v113 = *&v63[4 * BYTE2(v108)] ^ 0xC0E7EAC4;
  v114 = v111 ^ *&v64[4 * ((v105 ^ 0xA480DD5E) >> 24)];
  v115 = (v113 + v112 - 2 * (v113 & v112)) ^ (*&v65[4 * (v105 ^ 0x48)] + a6);
  v116 = (*&v65[4 * v107] + a6) ^ *&v63[4 * BYTE2(v91)] ^ *&v64[4 * v109] ^ *(v62 + 4 * ((v105 ^ 0xDD5E) >> 8));
  v117 = v110 ^ *&v63[4 * ((v105 ^ 0xA480DD5E) >> 16)];
  v118 = (v115 - ((2 * v115) & 0x6EB70DF0) + 928745208) ^ a48;
  v119 = (v114 - ((2 * v114) & 0xC5CB54C) + 103701158) ^ a46;
  v120 = (v116 - ((2 * v116) & 0x814789F2) + 1084474617) ^ *(v52 - 180);
  v121 = a27 ^ (v117 - ((2 * v117) & 0xA9E50354) + 1425179050);
  v122 = *&v63[4 * (BYTE2(v120) ^ 0x67)] ^ (*&v65[4 * (v119 ^ 0x6E)] + a6);
  v123 = HIBYTE(v120) ^ 0x5F;
  v124 = *&v63[4 * (BYTE2(v118) ^ 0xEE)] ^ *&v64[4 * ((v119 ^ 0xD0C9FB6E) >> 24)] ^ (*&v65[4 * (a27 ^ (v117 - ((2 * v117) & 0x54) - 86))] + a6) ^ *(v62 + 4 * ((((v116 - ((2 * v116) & 0x89F2) - 15111) ^ *(v52 - 180)) >> 8) ^ 0x4Cu));
  v125 = (*&v65[4 * (((v116 - ((2 * v116) & 0xF2) - 7) ^ *(v52 - 180)) ^ 0xDD)] + a6) ^ *&v64[4 * HIBYTE(v121)] ^ *&v63[4 * (((v119 ^ 0xD0C9FB6E) >> 16) ^ 0x9F)] ^ *(v62 + 4 * ((((v115 - ((2 * v115) & 0xDF0) - 30984) ^ a48) >> 8) ^ 0xC3u));
  v126 = *&v63[4 * BYTE2(v121)] ^ *&v64[4 * v123] ^ *(v62 + 4 * (BYTE1(v119) ^ 0xBCu)) ^ (*&v65[4 * (v118 ^ 0x7E)] + a6);
  v127 = v122 ^ *(v62 + 4 * ((a27 ^ (v117 - ((2 * v117) & 0x354) - 32342)) >> 8)) ^ *&v64[4 * (HIBYTE(v118) ^ 0x30)];
  v128 = (v124 - ((2 * v124) & 0xBDBDDB0A) - 555815547) ^ a45;
  v129 = (v127 - ((2 * v127) & 0xD4BD2F9E) + 1784584143) ^ a44;
  v130 = (v126 - ((2 * v126) & 0x3FE5E22) - 2113982703) ^ a47;
  v131 = a26 ^ (v125 - ((2 * v125) & 0x18F64128) - 1938087788);
  v132 = *(v62 + 4 * (((v126 - ((2 * v126) & 0x5E22) + 12049) ^ a47 ^ 0xDAAB) >> 8)) ^ (*&v65[4 * (a26 ^ (v125 - ((2 * v125) & 0x28) - 108))] + a6) ^ *&v63[4 * ((v129 ^ 0xBFC6B6DB) >> 16)] ^ *&v64[4 * (HIBYTE(v128) ^ 0xA6)];
  v133 = *&v64[4 * HIBYTE(v131)] ^ *(v62 + 4 * (((v127 - ((2 * v127) & 0x2F9E) - 26673) ^ a44 ^ 0xB6DB) >> 8));
  v134 = *(v62 + 4 * ((a26 ^ (v125 - ((2 * v125) & 0x4128) + 8340)) >> 8)) ^ *&v64[4 * ((v129 ^ 0xBFC6B6DB) >> 24)] ^ (*&v65[4 * (v128 ^ 0xE)] + a6) ^ *&v63[4 * ((v130 ^ 0x2982DAABu) >> 16)];
  v135 = *&v64[4 * ((v130 ^ 0x2982DAABu) >> 24)] ^ *(v62 + 4 * (BYTE1(v128) ^ 0x2Au)) ^ *&v63[4 * BYTE2(v131)] ^ (*&v65[4 * (((v127 - ((2 * v127) & 0x9E) - 49) ^ a44) ^ 0xCD)] + a6);
  v136 = v133 ^ *&v63[4 * (BYTE2(v128) ^ 0xB3)] ^ (*&v65[4 * (v130 ^ 0xBD)] + a6);
  v137 = (v134 - ((2 * v134) & 0x1C4A8344) - 1910160990) ^ a43;
  v138 = a25 ^ (v135 - ((2 * v135) & 0x1AF57558) - 1921336660);
  v139 = a23 ^ (v132 - ((2 * v132) & 0x2ED442F2) + 392831353);
  v140 = HIBYTE(v138);
  v141 = a24 ^ (v136 - ((2 * v136) & 0x94DE609C) + 1248800846);
  v142 = (*&v65[4 * (a23 ^ (v132 - ((2 * v132) & 0xF2) + 121))] + a6) ^ *&v63[4 * BYTE2(v138)] ^ *(v62 + 4 * BYTE1(v141)) ^ *&v64[4 * ((v137 ^ 0x44E9778Au) >> 24)];
  v143 = *&v64[4 * HIBYTE(v141)] ^ *&v63[4 * BYTE2(v139)] ^ *(v62 + 4 * ((v137 ^ 0x778A) >> 8)) ^ (*&v65[4 * v138] + a6);
  v144 = *(v62 + 4 * BYTE1(v138)) ^ *&v64[4 * HIBYTE(v139)] ^ *&v63[4 * (BYTE2(v137) ^ 0x76)] ^ (*&v65[4 * (v141 ^ 0x16)] + a6);
  v145 = a22 ^ (v144 - ((2 * v144) & 0x19F9BB14) - 1929585270);
  v146 = *&v64[4 * v140] ^ *&v63[4 * BYTE2(v141)] ^ *(v62 + 4 * BYTE1(v139)) ^ (*&v65[4 * (v137 ^ 0x8A)] + a6);
  v147 = (v143 - 1804303224 - ((2 * v143) & 0x28E90910)) ^ a42;
  v148 = (v142 - ((2 * v142) & 0x1A77C8A6) + 222028883) ^ a41;
  v149 = a21 ^ (v146 - ((2 * v146) & 0xBC37698C) - 568609594);
  v150 = a17 ^ (v145 - 1804303224 - ((2 * v145) & 0x28E90910));
  v151 = *&v64[4 * HIBYTE(v150)];
  v152 = *(v62 + 4 * (((v142 - ((2 * v142) & 0xC8A6) - 7085) ^ a41 ^ 0x2758) >> 8)) ^ (*&v65[4 * v149] + a6) ^ *&v64[4 * (HIBYTE(v147) ^ 0xEF)] ^ *&v63[4 * BYTE2(v150)];
  v153 = (*&v65[4 * (v148 ^ 0x58)] + a6) ^ *&v64[4 * HIBYTE(v149)];
  LODWORD(v64) = *(v62 + 4 * (BYTE1(v147) ^ 0xEBu)) ^ *&v64[4 * ((v148 ^ 0x4BE2758u) >> 24)];
  v154 = *(v62 + 4 * BYTE1(v150));
  v155 = *&v63[4 * (BYTE2(v148) ^ 0x21)] ^ (*&v65[4 * (v147 ^ 0x49)] + a6) ^ *(v62 + 4 * BYTE1(v149)) ^ v151;
  v156 = v64 ^ *&v63[4 * BYTE2(v149)] ^ (*&v65[4 * v150] + a6);
  LODWORD(v62) = (v156 + 1283615452 - ((2 * v156) & 0x9904D5B8)) ^ a38;
  v157 = v153 ^ *&v63[4 * (BYTE2(v147) ^ 3)] ^ v154;
  v158 = (v155 - ((2 * v155) & 0x9F3D3406) + 1335794179) ^ a39;
  LODWORD(v64) = (v157 - ((2 * v157) & 0x75F0CC08) - 1158126076) ^ a40;
  v159 = (v152 - ((2 * v152) & 0x61D6303E) - 1326770145) ^ a20;
  v160 = v159 ^ 0x23F9C695;
  v161 = *(&off_1001252D0 + v49 - 2009) - 4;
  v162 = *(&off_1001252D0 + v49 - 1969);
  LODWORD(v65) = *&v161[4 * (((v152 - ((2 * v152) & 0x3E) + 31) ^ a20) ^ 0x94)] - 291191517;
  v163 = *(&off_1001252D0 + v49 - 2120);
  v164 = *(&off_1001252D0 + (v49 ^ 0x8F6));
  v165 = (1909043885 * *(v163 + 4 * ((v64 >> 24) ^ 0xDF))) ^ __ROR4__(*(v164 + 4 * ((v158 ^ 0xFAB5) >> 8)), 28);
  v166 = (1909043885 * *(v163 + 4 * (HIBYTE(v159) ^ 0x4C))) ^ *(v162 + 4 * ((v158 ^ 0x422CFAB5) >> 16)) ^ __ROR4__(*(v164 + 4 * ((v62 ^ 0xF016) >> 8)), 28);
  v167 = (*&v161[4 * (v158 ^ 0xB5)] - 291191517) ^ __ROR4__(*(v164 + 4 * BYTE1(v160)), 28);
  v168 = *(v162 + 4 * ((v62 ^ 0xF6BCF016) >> 16)) ^ v65 ^ (1909043885 * *(v163 + 4 * (HIBYTE(v158) ^ 0x2D)));
  v169 = (*&v161[4 * (v62 ^ 0x16)] - 291191517) ^ *(v162 + 4 * BYTE2(v160));
  v170 = v166 ^ (*&v161[4 * (v64 ^ 7)] - 291191517);
  LODWORD(v82) = __ROR4__(*(v164 + 4 * (BYTE1(v64) ^ 0x3Cu)), 28);
  v171 = v167 ^ *(v162 + 4 * (((v64 ^ 0xB0693C07) >> 16) ^ 0xF7u)) ^ (1909043885 * *(v163 + 4 * (BYTE3(v62) ^ 0x99)));
  LODWORD(v62) = ((v165 ^ v169) - ((2 * (v165 ^ v169)) & 0xAC747CA8) + 1446657620) ^ a37;
  LODWORD(v65) = (v170 - ((2 * v170) & 0x6A4D59F4) + 891727098) ^ a19;
  LODWORD(v63) = ((v168 ^ v82) + 1625550943 - ((2 * (v168 ^ v82)) & 0xC1C7E0BE)) ^ a18;
  v172 = (v171 + 1625550943 - ((2 * v171) & 0xC1C7E0BE)) ^ a18;
  LODWORD(v161) = (v172 + 1283615452 - ((2 * v172) & 0x9904D5B8)) ^ a38;
  v173 = *(&off_1001252D0 + (v49 ^ 0x8F3)) - 8;
  v53[10] = v173[((((v168 ^ v82) - 4001 - ((2 * (v168 ^ v82)) & 0xE0BE)) ^ a18) >> 8) ^ 0x79] ^ 0x7D;
  v174 = *(&off_1001252D0 + v49 - 1975) - 8;
  v53[13] = v174[BYTE2(v161) ^ 0xF0] ^ 0x63;
  v175 = *(&off_1001252D0 + v49 - 2071);
  v53[15] = (*(v175 + (((v172 - 36 - ((2 * v172) & 0xB8)) ^ a38) ^ 0x45)) - 30) ^ 0x8F;
  v53[6] = v173[(((v170 - ((2 * v170) & 0x59F4) - 21254) ^ a19) >> 8) ^ 0x1BLL] ^ 0x81;
  v53[1] = v174[BYTE2(v62) ^ 0x3ELL] ^ 5;
  v176 = *(&off_1001252D0 + v49 - 2046);
  v53[12] = *(v176 + ((v161 >> 24) ^ 0x41)) ^ 0x1F;
  v53[8] = *(v176 + ((v63 >> 24) ^ 0xB6)) ^ 0xD9;
  v53[3] = (*(v175 + (v62 ^ 0xDFLL)) - 30) ^ 0x17;
  v53[14] = v173[BYTE1(v161) ^ 0x5ELL] ^ 0xC0;
  v53[11] = (*(v175 + ((((v168 ^ v82) + 95 - ((2 * (v168 ^ v82)) & 0xBE)) ^ a18) ^ 0x54)) - 30) ^ 0x67;
  v53[2] = v173[BYTE1(v62) ^ 0x13] ^ 0x8D;
  v53[7] = (*(v175 + (((v170 - ((2 * v170) & 0xF4) - 6) ^ a19) ^ 0xDELL)) - 30) ^ 0x84;
  v53[5] = v174[BYTE2(v65) ^ 0x7ALL] ^ 0xC2;
  *v53 = *(v176 + (BYTE3(v62) ^ 0xB5)) ^ 0x39;
  v53[9] = v174[BYTE2(v63) ^ 0x6FLL] ^ 0xB0;
  v53[4] = *(v176 + ((v65 >> 24) ^ 0x49)) ^ 0x4D;
  v177 = v50 - 1770989869 < a36;
  if (a36 < 0x9670D6C3 != v50 - 1770989869 < 0x9670D6C3)
  {
    v177 = a36 < 0x9670D6C3;
  }

  return (*(*(v52 - 120) + 8 * ((739 * v177) ^ v49)))();
}

void sub_10004C8B4(uint64_t a1)
{
  v1 = *(a1 + 20) - 675097751 * ((-2 - ((~a1 | 0x987B71ED) + (a1 | 0x67848E12))) ^ 0xDB3B547B);
  v5 = 552;
  v2 = 1361651671 * ((~&v6 & 0xBBE34067 | &v6 & 0x441CBF98) ^ 0xF0888C19);
  v6 = v1 + v2 + 415;
  v8 = 6338 - v2;
  v7 = &v4;
  v3 = *(&off_1001252D0 + v1 - 1292) - 8;
  (*&v3[8 * v1 + 10224])(&v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10004CAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, unsigned int a15, uint64_t a16, unsigned int a17, unsigned int a18, uint64_t a19)
{
  v25 = 742307843 * ((&a14 & 0x6380B7D6 | ~(&a14 | 0x6380B7D6)) ^ 0x825DC57C);
  a17 = 1355 - v25;
  a18 = (v21 ^ 0xE7AF99EF) - v25 + ((2 * v21) & 0xCF5F33DE) + 1543239678;
  a16 = v20;
  a19 = a11;
  (*(v22 + 22248))(&a14);
  v26 = (&a14 ^ 0xFBC3B71B) * v23;
  a16 = a11;
  a14 = (v19 ^ 0x23F79E3F) + ((2 * v19) & 0x47EF3C7E) - 21234212 + v26;
  a15 = 2715 - v26;
  v27 = (*(v22 + 22088))(&a14);
  return (*(v22 + 8 * ((7 * (a17 != v24)) ^ 0x128u)))(v27);
}

uint64_t sub_10004CC20()
{
  v10 = v8 ^ (v0 + 3483);
  v11 = 1504884919 * ((v1 & 0xC0156287 | ~(v1 | 0xC0156287)) ^ 0xC4292A63);
  *(v9 - 120) = *v7;
  *(v9 - 128) = (v5 ^ 0x36B39DDB) + ((2 * v5) & 0x6D673BB6) - 335544768 + v11;
  *(v9 - 124) = v8 + 1689 - v11;
  (*(v6 + 8 * (v8 + 1735)))(v9 - 128);
  v12 = *v7;
  *(v9 - 108) = (v8 + 569) ^ (210068311 * ((2 * (v1 & 0xCEA65178) - v1 + 827960965) ^ 0x66363452));
  *(v9 - 128) = v12;
  *(v9 - 120) = (((2 * v4) & 0x379ADE67EFFE7EDALL) + 0x77BED7FDFD6FFFFFLL + (v4 ^ 0x9BCD6F33BDEEB449 ^ v10)) ^ (210068311 * ((2 * (v1 & 0x569E9F1FCEA65178) - v1 - 0x569E9F1FCEA6517BLL) ^ 0x22A01F7A66363452));
  (*(v6 + 8 * (v8 ^ 0xEEB)))(v9 - 128);
  v13 = *v7;
  *(v9 - 108) = (v8 + 569) ^ (210068311 * ((((2 * (v1 ^ 0x6B385D8D)) | 0xFE0F32E8) - (v1 ^ 0x6B385D8D) + 16279180) ^ 0xC3505E2E));
  *(v9 - 128) = v13;
  *(v9 - 120) = (210068311 * ((((2 * (v1 ^ 0x1ADB0B746B385D8DLL)) | 0x10683199FE0F32E8) - (v1 ^ 0x1ADB0B746B385D8DLL) - 0x83418CCFF079974) ^ 0x992E6C22C3505E2ELL)) ^ ((v3 ^ 0xBB9D773FF56FFF7CLL) + 0x57EECFF1FFFF3FF0 + ((2 * v3) & 0x773AEE7FEADFFEF8));
  (*(v6 + 8 * (v8 ^ 0xEEB)))(v9 - 128);
  v14 = *v7;
  v15 = 1504884919 * ((v1 & 0x9B11A06A | ~(v1 | 0x9B11A06A)) ^ 0x9F2DE88E);
  *(v9 - 128) = (v2 ^ 0xF7BFBE9F) + ((2 * v2) & 0xEF7F7D3E) + 720625020 + v15;
  *(v9 - 124) = v8 + 1689 - v15;
  *(v9 - 120) = v14;
  v16 = (*(v6 + 8 * (v8 + 1735)))(v9 - 128);
  return (*(v6 + 8 * ((841 * (*(v9 - 112) == 1958853845)) | v8)))(v16);
}

uint64_t sub_10004CFA0(int8x16_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  v80 = *(v47 + 8 * v43);
  v51 = (BYTE4(a41) - ((2 * BYTE4(a41)) & 0x96) - 48);
  if (v51 == 206)
  {
    v82 = vld4q_s8(a4);
    v76 = veorq_s8(v82.val[1], a1);
    _Q21 = vmovl_high_u8(v76);
    _Q20 = vmovl_u8(*v76.i8);
    __asm
    {
      SHLL2           V20.4S, V20.8H, #0x10
      SHLL2           V21.4S, V21.8H, #0x10
    }

    v79 = *(v42 + 4 * ((a23 ^ 0x7A8) + 10013644));
    *(v42 + 4 * (v44 + 10013644)) = __ROR4__(*(v42 + 4 * (v44 + 10013644) - 12) ^ v45 ^ *(v42 + 4 * (v44 + 10013644) - 32) ^ *(v42 + 4 * (v44 + 10013644) - 56) ^ v79, 31) ^ 0x645D0D06;
    return (*(v47 + 8 * ((1835 * (v50 == 10013581)) ^ 0x83u)))(1960, v79, 131, a5, HIDWORD(a38), a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v80, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41);
  }

  else
  {
    if (v51 != 207)
    {
      JUMPOUT(0x10004D770);
    }

    v81 = vld4q_s8(a4);
    v52 = veorq_s8(v81.val[2], a1);
    _Q21 = vmovl_u8(*v52.i8);
    _Q20 = vmovl_high_u8(v52);
    __asm
    {
      SHLL2           V22.4S, V20.8H, #0x10
      SHLL2           V23.4S, V21.8H, #0x10
    }

    v61 = (a39 & 0x424AF05B ^ 0x409043 ^ (a39 ^ 0x31719C63) & (a40 ^ 0x8CC493C7) | HIDWORD(a39) & 0xDCB75F33 ^ 0xCC864310 ^ (a39 ^ 0x12393CAF) & (HIDWORD(a39) ^ (v45 + a9 - 1777))) + (HIDWORD(a38) ^ v45) + *(*(&off_1001252D0 + a22) + a24 + v44 - 1) + (*(v42 + 4 * (byte_1000EC938[a24 + v44] - 45)) ^ v46);
    v62 = *(&off_1001252D0 + HIDWORD(a21)) - 12;
    v63 = v62[a24 + v44];
    v64 = (((v63 - 17) ^ 0xCE) + 33) ^ (v63 - 17) ^ (((v63 - 17) ^ 0xB) - 26) ^ (((v63 - 17) ^ 0xAB) + 70) ^ (((v63 - 17) ^ 0x7F) - 110);
    v65 = v61 ^ v48 ^ ((v61 ^ 0x2E8FDE12) - 25777361) ^ ((v61 ^ 0x50A223AC) - 2141497711) ^ ((v61 ^ 0x2ED88086) - 31328837) ^ ((v61 ^ 0x7FF3F7FB) - 1358265656);
    v66 = (((a39 ^ 0x79C59673) - 2042992243) ^ ((a39 ^ 0x4C59B075) - 1280946293) ^ ((a39 ^ 0xFB12459A) + 82688614)) + 375405279 + ((v65 << (v64 & 0x19 ^ 0x11) << (v64 & 6)) | (v65 >> (v41 - v63)));
    v67 = (v66 ^ 0x35ADA4BD) & (2 * (v66 & 0xB82E28BD)) ^ v66 & 0xB82E28BD;
    v68 = ((2 * (v66 ^ 0x15E9E5AD)) ^ 0x5B8F9A20) & (v66 ^ 0x15E9E5AD) ^ (2 * (v66 ^ 0x15E9E5AD)) & v49;
    v69 = v68 ^ 0xA4404510;
    v70 = (v68 ^ 0x1818000) & (4 * v67) ^ v67;
    v71 = ((4 * v69) ^ 0xB71F3440) & v69 ^ (4 * v69) & v49;
    v72 = v70 ^ v49 ^ (v71 ^ 0xA5070400) & (16 * v70);
    v73 = (16 * (v71 ^ 0x8C0C910)) & v49 ^ 0x21830C10 ^ ((16 * (v71 ^ 0x8C0C910)) ^ 0xDC7CD100) & (v71 ^ 0x8C0C910);
    v74 = (v72 << 8) & (v49 - 16) ^ v72 ^ ((v72 << 8) ^ 0xC7CD1000) & v73;
    return (*(v47 + 8 * ((189 * (a24 + 1 == v50)) ^ 0x830u)))(v62, v66 ^ (2 * ((v74 << 16) & 0x2DC70000 ^ v74 ^ ((v74 << 16) ^ 0x4D100000) & ((v73 << 8) & 0x2DC70000 ^ 0x28020000 ^ ((v73 << 8) ^ 0xC7CD0000) & v73))) ^ 0x3CA5D101, 768016384, 10013644, a40, 2096, a24 + 1, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v80, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41);
  }
}

uint64_t sub_10004E520@<X0>(uint64_t a1@<X8>, uint8x8_t a2@<D0>)
{
  a2.i32[0] = *(a1 + v3);
  v6 = vmovl_u8(a2).u64[0];
  *(a1 + v3 - 4) = vuzp1_s8(v6, v6).u32[0];
  return (*(v5 + 8 * ((51 * ((v4 - 6) - (v3 & 0xFFFFFFFC) == 657)) ^ v2)))();
}

uint64_t sub_10004E79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v64 = v62 - 387;
  v65 = (*(v63 + 8 * (v64 + 959)))(1576, 0x105004009637391);
  STACK[0x348] = v65;
  return (*(a62 + 8 * (((v65 == 0) * ((17 * (v64 ^ 0x764) - 1775) ^ 0x129)) ^ v64)))();
}

uint64_t sub_10004E850@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 + 127 - v1;
  v6 = *(v5 - 31);
  v7 = a1 + 127 - v1;
  v8.i64[0] = 0x4040404040404040;
  v8.i64[1] = 0x4040404040404040;
  v9.i64[0] = 0x2020202020202020;
  v9.i64[1] = 0x2020202020202020;
  *(v7 - 15) = vaddq_s8(vsubq_s8(*(v5 - 15), vandq_s8(vaddq_s8(*(v5 - 15), *(v5 - 15)), v8)), v9);
  *(v7 - 31) = vaddq_s8(vsubq_s8(v6, vandq_s8(vaddq_s8(v6, v6), v8)), v9);
  return (*(v4 + 8 * (((v1 == 96) * ((v3 ^ 0xB14) - 2145)) ^ v3)))();
}

uint64_t sub_10004E9B8@<X0>(int a1@<W8>, uint64_t a2, unsigned int a3, uint64_t *a4, int a5, int a6, uint64_t a7)
{
  v11 = v7 - 2193;
  v12 = (v7 - 522045909) & 0x1F1DC57F;
  v13 = (v7 - 2414) | 0x448;
  v14 = ((&a3 & 0xB773DD13 | ~(&a3 | 0xB773DD13)) ^ 0x56AEAFB9) * a1;
  a7 = v8;
  a3 = v14 ^ 0xF053E786;
  a4 = &a2;
  a5 = (v7 - 1985) ^ v14;
  a6 = v14 ^ 0x61F090D9;
  v15 = (*(v9 + 8 * ((v7 - 2193) ^ 0xBED)))(&a3);
  return (*(v9 + 8 * (((*(v8 + 24) == v12 + v10) * (v13 - 448)) ^ v11)))(v15);
}

uint64_t sub_10004EA88()
{
  v5 = 675097751 * ((2 * ((v4 - 136) & 0x1989A788) - (v4 - 136) - 428451721) ^ 0xA5367DE1);
  *(v4 - 136) = v5 ^ 0x4413498A;
  *(v4 - 120) = v5 - 117298495;
  *(v4 - 116) = v5 + v0 + 426;
  *(v2 + 8) = v3;
  v6 = (*(v1 + 8 * (v0 + 1725)))(v4 - 136);
  return (*(v1 + 8 * (((*(v4 - 132) == 1958853845) * (((v0 + 1997935) | 0x15815A20) - 362797661)) ^ v0)))(v6);
}

uint64_t sub_10004EB50@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 - 1;
  *(a1 + v5) = v2 + *(v3 + v5) - ((2 * *(v3 + v5)) & 0x40) - 102;
  return (*(v4 + 8 * ((3293 * (v5 == 0)) ^ v2)))();
}

uint64_t sub_10004EBB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  *(v47 + 1424) = 0;
  memset((v47 + 1432), 32, 104);
  *(a2 + 96) = v47;
  STACK[0x208] = a2 + 96;
  *(v47 + 476) = v45;
  STACK[0x260] = *(v48 + 8 * a9);
  return sub_10004EC38(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, v47, a26, a27, a28, a29, a30, a31, a32, a33, a34, v46, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a2);
}

uint64_t sub_10004EC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  STACK[0x448] = &STACK[0x500] + v53;
  v56 = v51 - 67;
  STACK[0x288] = v53 + 432;
  HIDWORD(a41) = v54;
  LODWORD(STACK[0x2E4]) = v54;
  STACK[0x290] = v52;
  LODWORD(STACK[0x2E0]) = 2034659866;
  LODWORD(STACK[0x344]) = 1912886423;
  STACK[0x2C0] = 0;
  LODWORD(STACK[0x3A4]) = 1429511819;
  LODWORD(STACK[0x2D4]) = a7 + 1;
  *(&STACK[0x500] + v53) = a6;
  v58 = *(&STACK[0x500] + v53) != a6 || LODWORD(STACK[0x2D4]) != a7 + v56 - 343 - 297;
  return (*(v55 + 8 * ((v58 * (((v56 - 1321174694) & 0x4EBF853F) + 2406)) ^ v56)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51);
}

uint64_t sub_10004ED44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, int a9, unsigned int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, char a42)
{
  if (a42 == 2)
  {
    return (*(v42 + 8 * ((59 * (a41 == (a7 ^ (a7 - 176)) - 368)) ^ (a6 + a7 + 1442))))(a1, a2, a3, 1912886423, a10);
  }

  if (a42 != 1)
  {
    JUMPOUT(0x10004EE38);
  }

  return (*(v42 + 8 * (((a41 != 0) * (a7 + a6 - 142)) ^ (a7 + a6))))(a1, a2, a3, 1912886423, a10);
}

uint64_t sub_10004EF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, int a15, unsigned int a16, int a17, uint64_t a18, char *a19)
{
  v23 = 1785193651 * ((&a14 - 1898400965 - 2 * (&a14 & 0x8ED8B33B)) ^ 0x78F91717);
  a17 = v21 - v23 - 2013066843;
  a18 = a11;
  a19 = &a12;
  a15 = v23 ^ 0x7B2A8B80;
  a16 = v23 - 929753733;
  v24 = (*(v20 + 8 * (v21 + 2502)))(&a14);
  return (*(v20 + 8 * ((23 * (a14 == v22 + v19 + (v21 ^ 0x6E7E1454) + 756 - 993)) ^ v21)))(v24);
}

uint64_t sub_10004F020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *(v22 - 136) = (435584651 * a10) ^ 0x38165BB8;
  *(v22 - 120) = 435584651 * a10 + v20 + 758;
  *(v22 - 128) = v16;
  (*(v21 + 8 * (v20 + 2133)))(v22 - 136);
  *(v22 - 120) = v17;
  *(v22 - 128) = v20 + 675097751 * ((2058745694 - (v18 | 0x7AB5F75E) + a9) ^ 0xC60A2D37) - 258;
  *(v22 - 136) = a15;
  (*(v21 + 8 * (v20 + 2091)))(v22 - 136);
  *(v22 - 120) = (v20 + 554) ^ ((((v18 | 0x29316EDC) - (v18 & 0x29316EDC)) ^ 0x625AA2A2) * v15);
  *(v22 - 112) = v16;
  *(v22 - 128) = a15;
  v23 = (*(v21 + 8 * (v20 ^ 0x8C5)))(v22 - 136);
  return (*(v21 + 8 * ((15 * ((((v20 + 123) ^ (v20 + 46)) ^ (*(v22 - 136) > v19)) & 1)) ^ v20)))(v23);
}

uint64_t sub_10004F1B0(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 4);
  *(a1 + 48) = *(a2 + 8);
  return 0;
}

uint64_t sub_10004F1C8()
{
  *v0 = v7;
  v10 = v8;
  v9 = v4 + v3 + 1746480351 - ((-1770505737 - (&v9 | 0x967839F7) + (&v9 | 0x6987C608)) ^ 0x8F2F6A18) * v2;
  (*(v1 + 8 * (v4 + v3 + 1746482858)))(&v9);
  v9 = v4 + v3 + 1746480351 - (((&v9 | 0x901E8A8A) - (&v9 & 0x901E8A8A)) ^ 0x76B6269A) * v2;
  v10 = v6;
  (*(v1 + 8 * (v4 + v3 + 1746482858)))(&v9);
  return 0;
}

void sub_10004F2E0(_DWORD *a1)
{
  v1 = *a1 + 143681137 * ((-2 - ((a1 | 0x64AD6D09) + (~a1 | 0x9B5292F6))) ^ 0x7DFA3EE6);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_10004F3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, uint64_t a15, int a16)
{
  a14 = (50899313 * (((&a14 | 0x61E835D9) - (&a14 & 0x61E835D9)) ^ 0x4B231FA3)) ^ 0x78C;
  a15 = v17;
  v19 = (*(v16 + 22360))(&a14);
  return (*(v16 + 8 * ((799 * (a16 == (v18 ^ 0x31C))) ^ 0x12Au)))(v19);
}

uint64_t sub_10004F4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31)
{
  *(v35 - 144) = v34;
  *(v35 - 136) = (v32 + 384) ^ (143681137 * ((1356124815 - ((v35 - 144) | 0x50D4D28F) + ((v35 - 144) | 0xAF2B2D70)) ^ 0x49838160));
  *(v35 - 128) = v33;
  (*(v31 + 8 * (v32 + 791)))(v35 - 144);
  v36 = a31;
  *(v35 - 136) = v32 - 1065 + 435584651 * (((((v35 - 144) | 0x947B3B0E) ^ 0xFFFFFFFE) - (~(v35 - 144) | 0x6B84C4F1)) ^ 0x6B6DEA7);
  *(v35 - 144) = &a22;
  *(v35 - 128) = &a30;
  *(v35 - 120) = v36;
  *(v35 - 112) = v33;
  *(v35 - 104) = &a22;
  (*(v31 + 8 * (v32 ^ 0xD34)))(v35 - 144);
  *(v35 - 144) = a14;
  *(v35 - 128) = &a30;
  *(v35 - 120) = &a22;
  *(v35 - 136) = v32 - 1065 + 435584651 * (((v35 - 144) & 0x1A1311C | ~((v35 - 144) | 0x1A1311C)) ^ 0x936CD4B5);
  *(v35 - 112) = v33;
  *(v35 - 104) = &a22;
  (*(v31 + 8 * (v32 ^ 0xD34)))(v35 - 144);
  *(v35 - 144) = a19;
  *(v35 - 136) = &a22;
  *(v35 - 128) = v32 + 1785193651 * ((((v35 - 144) | 0xA991BBA1) + (~(v35 - 144) | 0x566E445E)) ^ 0x5FB01F8C) - 875956118;
  (*(v31 + 8 * (v32 + 801)))(v35 - 144);
  *(v35 - 136) = (v32 + 384) ^ (143681137 * ((((v35 - 144) ^ 0x322AC6AA) + 2017898578 - 2 * (((v35 - 144) ^ 0x322AC6AA) & 0x7846B052)) ^ 0xACC4DAE8));
  *(v35 - 144) = &a22;
  *(v35 - 128) = &a20;
  (*(v31 + 8 * (v32 + 791)))(v35 - 144);
  *(v35 - 136) = v32 + 675097751 * ((2 * ((v35 - 144) & 0x63A1DD18) - (v35 - 144) - 1671552285) ^ 0xDF1E0775) - 1659;
  *(v35 - 144) = &a22;
  *(v35 - 128) = &a20;
  v37 = (*(v31 + 8 * (v32 ^ 0xD4E)))(v35 - 144);
  return (*(v31 + 8 * (((((216 * (v32 ^ 0x7ED)) ^ 0x26E) + v32 - 1382) * (a18 == 0)) ^ (v32 + 385))))(v37);
}

uint64_t sub_10004F770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, int a26, uint64_t (*a27)(void))
{
  v31 = (((v29 ^ 0xD7ACCF05) + 676540667) ^ ((v29 ^ 0x584A6D61) - 1481272673) ^ ((v29 ^ 0x4168C1F8) - 1097384440)) + (((LODWORD(STACK[0x2E4]) ^ 0x795815AA) - 2035815850) ^ ((LODWORD(STACK[0x2E4]) ^ 0x9BEFA7F1) + 1678792719) ^ ((LODWORD(STACK[0x2E4]) ^ 0x2C39D1C7) - 741986759)) + 98481275;
  v32 = (v31 ^ 0xC63F083D) & (2 * (v31 & 0x973E12BD)) ^ v31 & 0x973E12BD;
  v33 = ((2 * (v31 ^ 0xCA4F092D)) ^ 0xBAE23720) & (v31 ^ 0xCA4F092D) ^ (2 * (v31 ^ 0xCA4F092D)) & 0x5D711B90;
  v34 = v33 ^ 0x45110890;
  v35 = (v33 ^ 0x18601300) & (4 * v32) ^ v32;
  v36 = ((4 * v34) ^ 0x75C46E40) & v34 ^ (4 * v34) & 0x5D711B90;
  v37 = (v36 ^ 0x55400A00) & (16 * v35) ^ v35;
  v38 = ((16 * (v36 ^ 0x8311190)) ^ 0xD711B900) & (v36 ^ 0x8311190) ^ (16 * (v36 ^ 0x8311190)) & 0x5D711B90;
  v39 = v37 ^ 0x5D711B90 ^ (v38 ^ 0x55111900) & (v37 << 8);
  v40 = v31 ^ (2 * ((v39 << 16) & 0x5D710000 ^ v39 ^ ((v39 << 16) ^ 0x1B900000) & (((v38 ^ 0x8600290) << 8) & 0x5D710000 ^ 0xC600000 ^ (((v38 ^ 0x8600290) << 8) ^ 0x711B0000) & (v38 ^ 0x8600290))));
  v41 = (((v30 ^ 0x25251AB0) - 623188656) ^ ((v30 ^ 0x303C37A4) - 809252772) ^ ((v30 ^ 0xDB974E88) + 610840952)) + (((LODWORD(STACK[0x2E8]) ^ 0x6172D07) - 102182151) ^ ((LODWORD(STACK[0x2E8]) ^ 0x20D54211) - 550846993) ^ ((LODWORD(STACK[0x2E8]) ^ 0xE84C0C8A) + 397669238)) - 1305019039;
  v42 = (v41 ^ 0xEAF585D7) & (2 * (v41 & 0xEAE5C9D7)) ^ v41 & 0xEAE5C9D7;
  v43 = ((2 * (v41 ^ 0xEA778475)) ^ 0x1249B44) & (v41 ^ 0xEA778475) ^ (2 * (v41 ^ 0xEA778475)) & 0x924DA2;
  v44 = v43 ^ 0x9244A2;
  v45 = (v43 ^ 0x900) & (4 * v42) ^ v42;
  v46 = ((4 * v44) ^ 0x2493688) & v44 ^ (4 * v44) & 0x924DA0;
  v47 = v45 ^ 0x924DA2 ^ (v46 ^ 0x480) & (16 * v45);
  v48 = (16 * (v46 ^ 0x924922)) & 0x924DA0 ^ 0x920582 ^ ((16 * (v46 ^ 0x924922)) ^ 0x924DA20) & (v46 ^ 0x924922);
  v49 = (v47 << 8) & 0x924D00 ^ v47 ^ ((v47 << 8) ^ 0x924DA200) & v48;
  LODWORD(STACK[0x2E4]) = v40 ^ 0xD1724601;
  LODWORD(STACK[0x2E8]) = v41 ^ (2 * ((v49 << 16) & 0x920000 ^ v49 ^ ((v49 << 16) ^ 0x4DA20000) & ((v48 << 8) & 0x920000 ^ 0x920000 ^ ((v48 << 8) ^ 0x124D0000) & v48))) ^ 0x244B310F;
  v50 = (((v28 ^ 0xBC302F24) + 1137692892) ^ ((v28 ^ 0xDF375EF6) + 550019338) ^ ((v28 ^ 0xAD89124E) + 1383525810)) + (((LODWORD(STACK[0x2EC]) ^ 0xBA003C5F) + 1174389665) ^ ((LODWORD(STACK[0x2EC]) ^ 0x218D8843) - 562923587) ^ ((LODWORD(STACK[0x2EC]) ^ 0x5503D780) - 1426315136)) - 988312899;
  v51 = (v50 ^ 0x9BC5BB7A) & (2 * (v50 & 0xD8053C7B)) ^ v50 & 0xD8053C7B;
  v52 = ((2 * (v50 ^ 0x1BC59BCC)) ^ 0x87814F6E) & (v50 ^ 0x1BC59BCC) ^ (2 * (v50 ^ 0x1BC59BCC)) & 0xC3C0A7B6;
  v53 = v52 ^ 0x4040A091;
  v54 = (v52 ^ 0x80000324) & (4 * v51) ^ v51;
  v55 = ((4 * v53) ^ 0xF029EDC) & v53 ^ (4 * v53) & 0xC3C0A7B4;
  v56 = (v55 ^ 0x3008690) & (16 * v54) ^ v54;
  v57 = ((16 * (v55 ^ 0xC0C02123)) ^ 0x3C0A7B70) & (v55 ^ 0xC0C02123) ^ (16 * (v55 ^ 0xC0C02123)) & 0xC3C0A7B0;
  v58 = v56 ^ 0xC3C0A7B7 ^ (v57 ^ 0x2300) & (v56 << 8);
  v59 = v50 ^ (2 * ((v58 << 16) & 0x43C00000 ^ v58 ^ ((v58 << 16) ^ 0x27B70000) & (((v57 ^ 0xC3C08487) << 8) & 0x43C00000 ^ 0x3400000 ^ (((v57 ^ 0xC3C08487) << 8) ^ a26) & (v57 ^ 0xC3C08487))));
  v60 = (((v27 ^ 0x17E76481) - 401040513) ^ ((v27 ^ 0x602D4244) - 1613578820) ^ ((v27 ^ 0xB9444559) + 1186708135)) + (((LODWORD(STACK[0x2F0]) ^ 0xFEC93D97) + 20365929) ^ ((LODWORD(STACK[0x2F0]) ^ 0x805A941D) + 2141547491) ^ ((LODWORD(STACK[0x2F0]) ^ 0xB01DCA16) + 1340225002)) - 225641837;
  v61 = (v60 ^ 0xF88A5) & (2 * (v60 & 0xAA8FCCA5)) ^ v60 & 0xAA8FCCA5;
  v62 = ((2 * (v60 ^ 0x501D90A5)) ^ 0xF524B800) & (v60 ^ 0x501D90A5) ^ (2 * (v60 ^ 0x501D90A5)) & 0xFA925C00;
  v63 = v62 ^ 0xA924400;
  v64 = (v62 ^ 0xF0001000) & (4 * v61) ^ v61;
  v65 = ((4 * v63) ^ 0xEA497000) & v63 ^ (4 * v63) & 0xFA925C00;
  v66 = v64 ^ 0xFA925C00 ^ (v65 ^ 0xEA005000) & (16 * v64);
  v67 = (16 * (v65 ^ 0x10920C00)) & 0xFA925C00 ^ 0x52921C00 ^ ((16 * (v65 ^ 0x10920C00)) ^ 0xA925C000) & (v65 ^ 0x10920C00);
  v68 = (v66 << 8) & 0xFA925C00 ^ v66 ^ ((v66 << 8) ^ 0x925C0000) & v67;
  LODWORD(STACK[0x2EC]) = v59 ^ 0x960A1089;
  LODWORD(STACK[0x2F0]) = v60 ^ (2 * ((v68 << 16) & 0x7A920000 ^ v68 ^ ((v68 << 16) ^ 0x5C000000) & ((v67 << 8) & 0x7A920000 ^ 0x68820000 ^ ((v67 << 8) ^ 0x925C0000) & v67))) ^ 0x5051739;
  return a27();
}

void sub_10004F814(uint64_t a1)
{
  v1 = (*a1 - 143681137 * ((2 * (a1 & 0x1EE2F490) - a1 - 518190225) ^ 0x7B5A77F)) ^ 0x475;
  v2 = v1 + *(*(a1 + 8) + 4);
  v4 = v2 - 1365210321;
  v3 = v2 - 1365210321 < 0;
  v5 = 1365210321 - v2;
  if (v3)
  {
    v4 = v5;
  }

  __asm { BRAA            X6, X17 }
}

uint64_t sub_10004F968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int *a19, unsigned int a20)
{
  a12 = 0;
  a20 = (v20 - 1517) ^ (843532609 * (&a17 ^ 0x5C4D5485));
  a19 = &a12;
  a17 = a15;
  (*(v21 + 8 * (v20 + 812)))(&a17);
  a19 = &a13;
  a17 = a15;
  a20 = (v20 - 1517) ^ (843532609 * (((&a17 | 0x37CEE09) - &a17 + (&a17 & 0xFC8311F0)) ^ 0x5F31BA8C));
  (*(v21 + 8 * (v20 + 812)))(&a17);
  a18 = a15;
  LODWORD(a17) = v20 + 843532609 * ((((2 * &a17) | 0xA1CFD19E) - &a17 + 790107953) ^ 0x8CAABC4A) - 1671;
  v22 = (*(v21 + 8 * (v20 ^ 0xD34)))(&a17);
  return (*(v21 + 8 * ((3794 * (a19 == v20 + 1958851917)) ^ v20)))(v22);
}

uint64_t sub_10004FC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  *(v19 - 120) = &a13;
  *(v19 - 104) = &a15;
  *(v19 - 112) = (v15 - 546) ^ (((v19 - 128) ^ 0x4B6BCC7E) * v18);
  v20 = (*(v16 + 8 * (v15 ^ 0xC71)))(v19 - 128);
  return (*(v16 + 8 * ((22 * (*(v19 - 128) > ((v15 - 641) ^ (v17 + 385)))) ^ v15)))(v20);
}

uint64_t sub_10004FD14@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v15 = (v11 >> (v12 ^ 0x69u)) + HIDWORD(v10) + (*(v14 + 4 * a3) ^ v9);
  *(v14 + 4 * a9) = v15 + v9 - (((v12 + 5) ^ (a2 - 442)) & (2 * v15));
  *(v14 + 4 * a3) = HIDWORD(v15) + v9 - ((2 * HIDWORD(v15)) & 4);
  return (*(v13 + 8 * (v12 ^ (188 * (a1 + 1 == a8)))))();
}

uint64_t sub_10004FF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, unsigned int a16)
{
  a16 = (v18 + 159) ^ (843532609 * ((&a13 - 102191910 - 2 * (&a13 & 0xF9E8ACDA)) ^ 0xA5A5F85F));
  a13 = a11;
  a15 = &a10;
  (*(v16 + 8 * (v18 ^ 0xA48)))(&a13);
  LODWORD(a13) = v18 + 843532609 * ((2 * (&a13 & 0xCC86130) - &a13 + 1933024971) ^ 0x2F7ACA4E) + 5;
  a14 = a11;
  v19 = (*(v16 + 8 * (v18 + 2496)))(&a13);
  return (*(v16 + 8 * ((2674 * (a15 == ((89 * (v18 ^ 0xFE)) ^ (v17 - 110)))) ^ v18)))(v19);
}

uint64_t sub_10005008C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v17 = 435584651 * ((((v16 - 128) | 0x4420DB5C) - ((v16 - 128) & 0x4420DB5C)) ^ 0x2912C10A);
  *(v16 - 112) = v17 + v15 + 286;
  *(v16 - 120) = &a13;
  *(v16 - 128) = (((2 * v13) & 0x77AEF7EE) - 62988352 + ((481 * (v15 ^ 0x44F) + 1003976757) ^ v13)) ^ v17;
  v18 = (*(v14 + 8 * (v15 ^ 0xE87)))(v16 - 128);
  return sub_100050138(v18);
}

uint64_t sub_100050138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 120) = a12;
  *(v19 - 112) = (v17 + 221) ^ (((59091170 - ((v19 - 128) | 0x385A8E2) + ((v19 - 128) | 0xFC7A571D)) ^ 0xB7119B63) * v18);
  *(v19 - 104) = &a15;
  v20 = (*(v15 + 8 * (v17 + 1774)))(v19 - 128);
  return (*(v15 + 8 * (((*(v19 - 128) > (((v17 - 770) | 0x601) ^ v16)) * (((v17 - 470316499) & 0x1C0872D7) + 1129)) ^ v17)))(v20);
}

uint64_t sub_1000501F4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, unsigned int a32, unsigned int a33, unsigned int a34, unsigned int a35, unsigned int a36, int a37, int a38, char a39, __int16 a40, char a41)
{
  v42 = (a39 - ((2 * a39) & 0x33) + 30);
  if (v42 == 29)
  {
    BYTE4(a30) = (8 * (((a3 + v41 + 103) ^ 0x55) + a32 - ((2 * a32) & 0x10)) - 32) ^ 0xE0;
    BYTE5(a30) = (a32 >> 5) ^ 0x20;
    BYTE6(a30) = (a32 >> 13) ^ 0x20;
    HIBYTE(a30) = (a32 >> 21) ^ 0x20;
    LOBYTE(a31) = ((__PAIR64__(HIDWORD(a31), a32) >> 29) - ((2 * (__PAIR64__(HIDWORD(a31), a32) >> 29)) & 0x6E) - 73) ^ 0x97;
    BYTE1(a31) = (HIDWORD(a31) >> 5) ^ 0x20;
    BYTE2(a31) = (HIDWORD(a31) >> 13) ^ 0x20;
    v43 = (HIDWORD(a31) >> 21) ^ 0x20;
    goto LABEL_5;
  }

  if (v42 == 32)
  {
    BYTE4(a30) = (HIDWORD(a31) >> 21) ^ 0x20;
    BYTE5(a30) = (HIDWORD(a31) >> 13) ^ 0x20;
    BYTE6(a30) = (HIDWORD(a31) >> 5) ^ 0x20;
    HIBYTE(a30) = ((__PAIR64__(HIDWORD(a31), a32) >> 29) - ((2 * (__PAIR64__(HIDWORD(a31), a32) >> 29)) & 0x36) - 101) ^ 0xBB;
    LOBYTE(a31) = (a32 >> 21) ^ 0x20;
    BYTE1(a31) = (a32 >> 13) ^ 0x20;
    BYTE2(a31) = (a32 >> 5) ^ 0x20;
    LOBYTE(v43) = (8 * (a32 - ((2 * a32) & 0x1A)) - 24) ^ 0xC8;
LABEL_5:
    BYTE3(a31) = v43;
  }

  return sub_10003E7E8(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41);
}

void sub_1000503F0(uint64_t a1@<X8>, uint64_t a2, int a3, unsigned int a4, uint64_t a5)
{
  v10 = (v6 ^ 0x97E5A625) & (2 * (v6 & (v9 + 1))) ^ v6 & (v9 + 1);
  v11 = ((2 * ((73 * (v8 ^ 0x4C3) + 423027018) ^ v6)) ^ 0xBDBE85F8) & ((73 * (v8 ^ 0x4C3) + 423027018) ^ v6) ^ (2 * ((73 * (v8 ^ 0x4C3) + 423027018) ^ v6)) & 0xDEDF42FC;
  v12 = v11 ^ 0x42414204;
  v13 = (v11 ^ 0x5C8E4068) & (4 * v10) ^ v10;
  v14 = ((4 * v12) ^ 0x7B7D0BF0) & v12 ^ (4 * v12) & 0xDEDF42FC;
  v15 = (v14 ^ 0x5A5D02F0) & (16 * v13) ^ v13;
  v16 = ((16 * (v14 ^ 0x8482400C)) ^ 0xEDF42FC0) & (v14 ^ 0x8482400C) ^ (16 * (v14 ^ 0x8482400C)) & 0xDEDF42F0;
  v17 = v15 ^ 0xDEDF42FC ^ (v16 ^ 0xCCD40200) & (v15 << 8);
  v18 = ((((2 * &a3) | 0xDF6AE6A0) - &a3 - 1874162512) ^ 0x2876906) * v5;
  a3 = v8 - v18 + 455;
  a4 = (v6 ^ (2 * ((v17 << 16) & 0x5EDF0000 ^ v17 ^ ((v17 << 16) ^ 0x42FC0000) & (((v16 ^ 0x120B403C) << 8) & 0x5EDF0000 ^ 0x9D0000 ^ (((v16 ^ 0x120B403C) << 8) ^ 0x5F420000) & (v16 ^ 0x120B403C)))) ^ 0x4E8BDDEA) + v18;
  a5 = v7;
  (*(a1 + 8 * (v8 + 1572)))(&a3);
  JUMPOUT(0x1000435E0);
}

uint64_t sub_100050614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v40 = 20 * (v37 ^ 0x1FE);
  *(v38 - 156) = v36;
  *(v38 - 152) = v40;
  v41 = *(&off_1001252D0 + v37 - 460) - 12;
  v42 = *(&off_1001252D0 + v37 - 440) - 12;
  v43 = v42[v35[15] ^ 0x92];
  v44 = ((v41[v35[13] ^ 0xB9] << 16) ^ 0x186DCDAC) & (v43 ^ 0xB9FFCD20) ^ (v43 & 0x53 | 0xA1970000);
  v45 = ((((v35[7] - ((2 * v35[7]) & 4u)) << 26) - 2013265920) ^ 0xD888B8EEBCDDC52DLL) & ((v35[7] >> 6) ^ 0xFE8AF9EEFEFFDFBDLL) ^ ((v35[7] >> 6) & 2 | 0x26024100C2221A90);
  LODWORD(v45) = v42[(v45 >> 26) & 0x1980AA20A0 ^ 0x6569127FE4F7BB86 ^ ((v45 << 6) & 0x64040C0 ^ 0x65691266621DDBDFLL) & ((v45 >> 26) ^ 0xFF7BF2C154E1A068)];
  v46 = *(&off_1001252D0 + (v37 ^ 0x154));
  v47 = (v45 ^ 0xFFFFFC1F) & ((v41[((v40 - 54) ^ v35[5])] << 16) ^ 0x7D724C3B) | v45 & 0xC4;
  LODWORD(v45) = -87 * *(v46 + (v35[4] ^ 0x57));
  v48 = v45 + 49;
  LODWORD(v45) = (78 - v45) & 0x4A | 0xFFFFFFB1;
  v49 = v45 ^ v48 & 0x72;
  v50 = (((v48 ^ (2 * ((v48 ^ 0x4A) & (2 * ((v48 ^ 0x4A) & (2 * ((v48 ^ 0x4A) & (2 * ((v48 ^ 0x4A) & (2 * (((2 * (v48 & (2 * v45) ^ v49)) ^ 4) & (v48 ^ 0x4A) ^ v49)) ^ v49)) ^ v49)) ^ v49)) ^ v49)) ^ 0xCB) << 24) ^ 0xE6246B01) & (v47 ^ 0x8244372A);
  v51 = v47 & 0x11DB00FE;
  v52 = -87 * *(v46 + (v35[12] ^ 0x68));
  LODWORD(v45) = v52 + 91;
  v53 = ((36 - v52) & 0x20 | 0xFFFFFFD3) ^ (v52 + 91) & 0xFFFFFFA6;
  LODWORD(v45) = v45 ^ (2 * ((v45 ^ 0x20) & (2 * ((v45 ^ 0x20) & (2 * ((v45 ^ 0x20) & (2 * ((v45 ^ 0x20) & (2 * (v45 & (2 * (v45 & (2 * v53) ^ v53)) ^ v53)) ^ v53)) ^ v53)) ^ v53)) ^ v53));
  v54 = -87 * *(v46 + (v35[8] ^ 0xB9)) - 40;
  v55 = v54 & 0x3D ^ 0x4D;
  v56 = (((v54 ^ 0x22) & (2 * ((v54 ^ 0x22) & (2 * ((v54 ^ 0x22) & (2 * ((v54 ^ 0x22) & (2 * ((v54 ^ 0x22) & (2 * ((((2 * v54) & 0x46 ^ 0xFFFFFF9E) & 2 | v55) ^ ((2 * v54) & 0x46 ^ 0xFFFFFF9E) & v54)) ^ v55)) ^ v55)) ^ v55)) ^ v55)) ^ v55) << 25) ^ (v54 << 24);
  v57 = *(&off_1001252D0 + v37 - 461) - 12;
  LOBYTE(v54) = v57[v35[14] ^ 0xD6];
  LOBYTE(v55) = v54 + 5;
  LOBYTE(v54) = ((2 - v54) & 4 | 0xC0) ^ (v54 + 5) & 0x88;
  LOBYTE(v55) = v55 ^ (2 * ((v55 ^ 4) & (2 * ((v55 ^ 4) & (2 * ((v55 ^ 4) & (2 * ((v55 ^ 4) & (2 * ((v55 ^ 4) & (2 * v54) ^ v54)) ^ v54)) ^ v54)) ^ v54)) ^ v54));
  v58 = ((((v55 << 8) ^ 0xFFED1490) & ((v45 << 24) ^ 0x2AED9790) | (v55 << 8) & 0x6800) ^ 0xD4CBA6C8) & (v44 ^ 0x46783253) ^ v44 & 0x39D944A7;
  LOBYTE(v54) = v57[v35[6] ^ 0x87] + 5;
  v59 = (v54 & 4 | 0xD3) ^ v54 & 0xAE;
  v60 = (v54 ^ (2 * ((v54 ^ 4) & (2 * ((v54 ^ 4) & (2 * ((v54 ^ 4) & (2 * ((v54 ^ 4) & (2 * ((v54 ^ 4) & (2 * (v54 & (2 * v59) ^ v59)) ^ v59)) ^ v59)) ^ v59)) ^ v59)) ^ v59))) << 8;
  v61 = v60 & 0x300 ^ 0x42D88FD9 ^ (v60 ^ 0xFFFF65FF) & (v51 ^ 0x69459797 ^ v50);
  v62 = v42[v35[3] ^ 0x29];
  v63 = (v62 ^ 0x4AFFD129) & ((v41[v35[1] ^ 8] << 16) ^ 0x4AD8D16D) | v62 & 0x92;
  v64 = v42[v35[11] ^ 0x62];
  LODWORD(v42) = (((v56 ^ 0xFEFFFFFF) & ((v41[v35[9] ^ 0x3BLL] << 16) ^ 0x4F7496DC) | v56 & 0xB0000000) ^ 0xBDFB4C3A) & (v64 ^ 0xFFFFDFF1);
  LODWORD(v41) = -87 * *(v46 + (*v35 ^ 0xE1)) - 115;
  LODWORD(v46) = v41 & 0xFFFFFFCA ^ 0xFFFFFFB6;
  v65 = (v41 ^ (2 * ((v41 ^ 0x6C) & (2 * ((v41 ^ 0x6C) & (2 * ((v41 ^ 0x6C) & (2 * ((v41 ^ 0x6C) & (2 * ((v41 ^ 0x6C) & (2 * v46) ^ v46)) ^ v46)) ^ v46)) ^ v46)) ^ v46)) ^ 0x3B) << 24;
  LODWORD(v46) = (v65 ^ 0xC1FFFFFF) & (v63 ^ 0x2A25378D);
  LOBYTE(v63) = v57[v35[2] ^ 0x8FLL];
  LOBYTE(v51) = (2 - v63) & 4 | 0x8A;
  LOBYTE(v63) = v63 + 5;
  LOBYTE(v51) = v51 ^ v63 & 0x14;
  v66 = v57[v35[10] ^ 0xB7];
  LOBYTE(v57) = v63 ^ (2 * ((v63 ^ 4) & (2 * ((v63 ^ 4) & (2 * ((v63 ^ 4) & (2 * (((2 * (v63 & (2 * v51) ^ v51)) ^ 8) & (v63 ^ 4) ^ v51)) ^ v51)) ^ v51)) ^ v51));
  v66 += 5;
  LOBYTE(v63) = v66 & 6 | 1;
  v67 = (v57 << 8) & 0xF1FF ^ 0x9F3D924D ^ ((v57 << 8) ^ 0xFFFF26FF) & (v65 & 0x9FFFFFFF ^ 0x18FAE8BE ^ v46);
  LODWORD(v57) = v42 & 0x371F48A2 ^ 0x2CF9D6BD ^ (((v66 ^ (2 * ((v66 ^ 4) & (2 * ((v66 ^ 4) & (2 * ((v66 ^ 4) & (2 * ((v66 ^ 4) & (2 * ((v66 ^ 4) & (2 * ((v66 ^ 4) & (2 * v63) ^ v63)) ^ v63)) ^ v63)) ^ v63)) ^ v63)) ^ v63))) << 8) ^ 0xC8E0775D) & ((v64 & 0x19 | v42) ^ 0x89122508);
  v68 = *(&off_1001252D0 + (v37 ^ 0x1FD)) - 8;
  v69 = *(&off_1001252D0 + v37 - 467);
  v70 = v43 ^ 0xCA;
  v71 = *(&off_1001252D0 + (v37 ^ 0x19E)) - 4;
  v72 = *&v68[4 * (v55 ^ 0xF2)] ^ *(v69 + 4 * (v45 ^ 0xEu)) ^ *&v71[4 * v70];
  v73 = *(&off_1001252D0 + v37 - 433) - 12;
  v74 = *&v73[4 * (BYTE2(v58) ^ 0x5C)];
  *(v38 - 208) = v57;
  *(v38 - 204) = v67;
  v75 = v72 ^ v67 ^ v74;
  v76 = v75 ^ v61;
  v77 = v57 ^ v75 ^ v61;
  v78 = v77 ^ v58 ^ 0x4C5E7812;
  v79 = (v77 ^ v58 ^ 0x12);
  v80 = *&v71[4 * (v79 ^ 0x39)];
  *(v38 - 168) = BYTE1(v78);
  LODWORD(v45) = *&v68[4 * (BYTE1(v78) ^ 0x76)];
  v254 = HIBYTE(v78);
  LODWORD(v70) = *(v69 + 4 * (HIBYTE(v78) ^ 0xFD));
  v81 = BYTE2(v78);
  *(v38 - 212) = v81;
  v82 = v45 ^ v80 ^ v70 ^ *&v73[4 * (v81 ^ 0x7E)];
  *(v38 - 200) = v58 ^ 0x4C5E7812;
  *(v38 - 196) = v61;
  *(v38 - 128) = v61 ^ v82;
  v83 = v61 ^ v82 ^ 0x946130B7;
  LODWORD(v45) = v83 ^ v58 ^ 0x4C5E7812;
  v290 = BYTE3(v45);
  LODWORD(v70) = *(v69 + 4 * (BYTE3(v45) ^ 0x80));
  v289 = BYTE2(v45);
  v84 = *&v73[4 * (BYTE2(v45) ^ 0xBE)];
  v287 = BYTE1(v45);
  v85 = *&v68[4 * (BYTE1(v45) ^ 0x7C)];
  v86 = (v83 ^ v58 ^ 0x12);
  *(v38 - 160) = v86;
  LODWORD(v41) = v84 ^ v70 ^ v85 ^ *&v71[4 * (v86 ^ 0x8F)];
  *(v38 - 124) = v75 ^ v82;
  *(v38 - 120) = v41 ^ v75 ^ v82;
  LODWORD(v41) = v41 ^ v75 ^ v82 ^ 0x35682A0B;
  LODWORD(v45) = v41 ^ v45 ^ v77 ^ 0xADA34DCE;
  v87 = v41;
  *(v38 - 232) = BYTE2(v45);
  LODWORD(v41) = *&v73[4 * (BYTE2(v45) ^ 0x44)];
  *(v38 - 172) = BYTE1(v45);
  LODWORD(v41) = *&v68[4 * (BYTE1(v45) ^ 0x5A)] ^ v41;
  LODWORD(v70) = v45 ^ 0x6D54CB;
  *(v38 - 216) = BYTE3(v45);
  *(v38 - 164) = v45;
  v283 = v77 ^ 0xADA34DCE ^ v83;
  LODWORD(v57) = v41 ^ *&v71[4 * (v45 ^ 0xC9)] ^ *(v69 + 4 * (BYTE3(v45) ^ 0x6D)) ^ v87;
  *(v38 - 252) = v87;
  *(v38 - 140) = v283 ^ v57;
  LODWORD(v45) = v283 ^ v57 ^ 0x9D6DA957;
  v277 = (v45 ^ v70);
  v275 = (v45 ^ v70) >> 24;
  v88 = v45 ^ v70 ^ 0x7BC66092;
  v269 = ((v45 ^ v70) >> 16);
  v262 = ((v45 ^ v70) >> 8);
  LODWORD(v41) = *(v69 + 4 * (v275 ^ 0x1C)) ^ *&v71[4 * (v277 ^ 0xF6)] ^ *&v73[4 * (v269 ^ 0x97)] ^ *&v68[4 * (v262 ^ 0xE2)];
  *(v38 - 240) = v87 ^ v83;
  v264 = v87 ^ v83 ^ 0x4D5F8322;
  v297 = v264 ^ v41;
  v89 = v264 ^ v41 ^ 0xACDC1EDC;
  v246 = v57;
  v296 = v89 ^ v70;
  *(v38 - 256) = ((v89 ^ v70) >> 16);
  v295 = ((v89 ^ v70) >> 8);
  LODWORD(v70) = *(v69 + 4 * (((v89 ^ v70 ^ 0x2A1C0FEB) >> ((v57 ^ 0xF8) & 0x10) >> ((v57 ^ 0xF8) & 8) >> (v57 & 0x10) >> (v57 & 8)) ^ 0x86u)) ^ *&v73[4 * (((v89 ^ v70) >> 16) ^ 0xA6)] ^ *&v68[4 * (v295 ^ 0x91)] ^ 0xA0560C53;
  v90 = v89 ^ v45;
  v292 = v89 ^ v45;
  v91 = (v70 - ((2 * v70) & 0x9CB2A36E) + 1314476471) ^ *&v71[4 * ((v88 ^ v89 ^ v45) ^ 0x92)];
  v294 = v57 ^ v41;
  v242 = (v91 - ((2 * v91) & 0x704AC232) + 941973785) ^ v57 ^ v41;
  *(v38 - 248) = v242 ^ 0x53DB0D92;
  LODWORD(v41) = ((v242 ^ 0x53DB0D92) - 1047552253 + ~(2 * ((v242 ^ 0x53DB0D92) & 0x418F9F0A ^ v242 & 8))) ^ v89;
  *(v38 - 148) = v41;
  v92 = ((v41 ^ 0xF73EC34E) - 2 * ((v41 ^ 0xF73EC34E) & 0x61EB1C9F ^ v41 & 0x10) - 504685425) ^ v88;
  v93 = v92 ^ 0xBF7FF0FA;
  *(v38 - 224) = v92;
  v94 = *&v73[4 * (((v92 ^ 0xBF7FF0FA) >> 16) ^ 0xBA)] ^ *&v71[4 * (v92 ^ 0x11)] ^ 0xE8319897;
  v95 = (v94 - ((2 * v94) & 0x11DB7582) + 149797569) ^ *(v69 + 4 * (HIBYTE(v93) ^ 0x86));
  LODWORD(v45) = (v95 - ((2 * v95) & 0x1DA6FF64) + 248741810) ^ *&v68[4 * (BYTE1(v93) ^ 0x9E)] ^ v242 ^ 0x53DB0D92;
  *(v38 - 132) = v45;
  LODWORD(v57) = v41 ^ 0xF73EC34E ^ v90 ^ 0xB03173F6;
  v96 = v41 ^ v45 ^ 0x85DB0D92;
  *(v38 - 136) = v96;
  v280 = v45 ^ 0x85DB0D92;
  v97 = v96 ^ 0x484133B4;
  v279 = v57 ^ v96 ^ 0x484133B4;
  v98 = v93 ^ v279 ^ 0xBDE5CEDC;
  v285 = (v98 ^ 0x29A3E26) >> 24;
  v293 = ((v98 ^ 0x3E26) >> 8);
  LODWORD(v45) = *&v68[4 * (v293 ^ 0x9E)] ^ *(v69 + 4 * (v285 ^ 0x86));
  v281 = ((v98 ^ 0x29A3E26) >> 16);
  LODWORD(v45) = ((v45 ^ 0x63EC573) - 2 * ((v45 ^ 0x63EC573) & 0x2668C924 ^ v45 & 4) - 1503082208) ^ *&v73[4 * (v281 ^ 0xBA)];
  v273 = (v93 ^ v279 ^ 0xDC);
  v257 = v45 - ((2 * v45) & 0x9CB2A36E) + 1314476471;
  v260 = v280 ^ *&v71[4 * (v273 ^ 0xCD)];
  v267 = v260 ^ v257 ^ v97;
  *(v38 - 144) = v260 ^ v257;
  v252 = v267 ^ 0x19868409 ^ v279 ^ 0xBDE5CEDC;
  LODWORD(v41) = v98 ^ 0x29A3E26 ^ v252 ^ 0xC130088F ^ 0x7B68C86;
  v99 = *(v69 + 4 * ((v41 >> 24) ^ 0x86));
  v100 = *&v68[4 * (BYTE1(v41) ^ 0x9E)];
  *(v38 - 116) = 0;
  v101 = ((v99 ^ v100 ^ 0x63EC573) - ((2 * (v99 ^ v100 ^ 0x63EC573)) & 0x4CD19240) - 1503082208) ^ *&v73[4 * (BYTE2(v41) ^ 0xBA)];
  v102 = *&v71[4 * (v98 ^ 0x26 ^ v252 ^ 0x8F ^ 0x6D)] ^ v260 ^ v257;
  *(v38 - 192) = v39;
  v225 = (v101 - ((2 * v101) & 0x9CB2A36E) + 1314476471) ^ v102;
  v216 = v225 ^ 0x7B68C86 ^ v267 ^ 0x19868409;
  v103 = v252 ^ 0xC130088F ^ v216;
  v237 = v41 ^ v103 ^ 0xC104CD8D ^ 0xA91877A2;
  v227 = v41 ^ v103 ^ 0x8D;
  v104 = *&v71[4 * (v227 ^ 0x49)] ^ 0x46B4EB76 ^ *(v69 + 4 * (HIBYTE(v237) ^ 0x86));
  v105 = (v104 - ((2 * v104) & 0x1DA6FF64) + 248741810) ^ *&v68[4 * (BYTE1(v237) ^ 0x9E)];
  HIDWORD(v236) = (v105 - ((2 * v105) & 0x4CD19240) - 1503082208) ^ *&v73[4 * (BYTE2(v237) ^ 0xBA)];
  v106 = *(&off_1001252D0 + v37 - 284) - 8;
  v107 = (BYTE2(v77) ^ 0xFD84E292) - 300090569 + *&v106[4 * (BYTE2(v77) ^ 2)];
  v108 = *(&off_1001252D0 + v37 - 450) - 8;
  v109 = ((BYTE2(v76) ^ 0xFD84E276) - 300090569 + *&v106[4 * (BYTE2(v76) ^ 0xE6)]) ^ (-1974868763 * *&v108[4 * (HIBYTE(v76) ^ 0xB1)] + 243037942);
  LODWORD(v236) = v37;
  v110 = *(&off_1001252D0 + v37 - 482) - 12;
  v111 = (v107 - ((2 * v107) & 0x996DE56C) - 860425546) ^ *&v110[4 * (v77 ^ 0x7C)];
  LODWORD(v45) = (-1974868763 * *&v108[4 * (HIBYTE(v75) ^ 0xC9)] + 243037942) ^ ((((v75 ^ 0x68106E90) >> 16) ^ 0xFD84E2EB) - 300090569 + *&v106[4 * (((v75 ^ 0x68106E90) >> 16) ^ 0x7B)]);
  v112 = v109 - ((2 * v109) & 0xB3E13E3A);
  v113 = *(&off_1001252D0 + v37 - 471) - 8;
  v114 = (v112 + 1508941597) ^ *&v113[4 * (((v75 ^ v61) >> 8) ^ 0x3B)];
  LODWORD(v45) = (v45 - ((2 * v45) & 0x996DE56C) - 860425546) ^ *&v110[4 * (v75 ^ 0xE0)];
  v235 = v114 - ((2 * v114) & 0x996DE56C);
  v115 = (*(v38 - 212) ^ 0xFD84E2D1) - 300090569 + *&v106[4 * (*(v38 - 212) ^ 0x41)];
  *(v38 - 212) = *&v113[4 * (BYTE1(v77) ^ 0x9C)] ^ (-1974868763 * *&v108[4 * (HIBYTE(v77) ^ 0xD4)] + 243037942) ^ (v111 - ((2 * v111) & 0xB3E13E3A) + 1508941597);
  v116 = (-1974868763 * *&v108[4 * (v254 ^ 0xC5)] + 243037942) ^ *&v110[4 * (v79 ^ 0xE3)] ^ (v115 - ((2 * v115) & 0x996DE56C) - 860425546);
  v231 = v45 - ((2 * v45) & 0xB3E13E3A);
  v232 = v116 - ((2 * v116) & 0xB3E13E3A);
  v117 = v57 ^ 0x5F;
  v229 = v57 ^ 0xBFAB50FA;
  LODWORD(v57) = *&v108[4 * ((v57 >> 24) ^ 0xD2)];
  v118 = ((BYTE2(v229) ^ 0xFD84E2EB) - 300090569 + *&v106[4 * (BYTE2(v229) ^ 0x7B)]) ^ *&v110[4 * v117] ^ (-1974868763 * v57 - ((345229770 * v57 + 486075884) & 0x996DE56C) - 617387604);
  v119 = *(v38 - 148);
  LODWORD(v45) = (((v119 ^ 0xE14101D4) >> 16) ^ 0xFD84E2EA) - 300090569 + *&v106[4 * (((v119 ^ 0xE14101D4) >> 16) ^ 0x7A)];
  v255 = v118 + 1508941597 + (~(2 * v118) | 0x4C1EC1C5);
  v120 = (v45 - ((2 * v45) & 0x996DE56C) - 860425546) ^ *&v110[4 * (v119 ^ 0xA4)] ^ (-1974868763 * *&v108[4 * (HIBYTE(v119) ^ 0x40)] + 243037942);
  v243 = v120 - ((2 * v120) & 0xB3E13E3A);
  v121 = (((v246 ^ 0x2AB00AF0) >> 16) ^ 0xFD84E279) - 300090569 + *&v106[4 * (((v246 ^ 0x2AB00AF0) >> 16) ^ 0xE9)];
  LODWORD(v70) = *&v108[4 * (((v264 ^ v246) >> 24) ^ 0x9F)];
  v122 = v264 ^ v246 ^ 0x4CA504C7;
  LODWORD(v70) = (-1974868763 * v70 - ((345229770 * v70 + 486075884) & 0xB3E13E3A) + 1751979539) ^ *&v113[4 * BYTE1(v122)];
  v123 = (v269 ^ 0xFD84E2A9) - 300090569 + *&v106[4 * (v269 ^ 0x39)];
  v124 = (v121 - ((2 * v121) & 0x996DE56C) - 860425546) ^ *&v110[4 * (v246 ^ 0x80)] ^ (-1974868763 * *&v108[4 * (HIBYTE(v246) ^ 0x8B)] + 243037942);
  v125 = *(v38 - 140);
  v215 = BYTE1(v125) ^ 0x1B;
  v126 = (((v125 ^ 0xD75E1B6F) >> 16) ^ 0xFD84E2EB) - 300090569 + *&v106[4 * (((v125 ^ 0xD75E1B6F) >> 16) ^ 0x7B)];
  v265 = (v264 ^ v246) ^ 0xDC;
  v270 = v70 - ((2 * v70) & 0x996DE56C);
  LODWORD(v45) = (v126 - ((2 * v126) & 0x996DE56C) - 860425546) ^ *&v110[4 * (v125 ^ 0x1F)];
  v223 = v45 - ((2 * v45) & 0xB3E13E3A);
  v247 = (BYTE2(v122) ^ 0xFD84E2EB) - 300090569 + *&v106[4 * (BYTE2(v122) ^ 0x7B)];
  v127 = (v123 - ((2 * v123) & 0xB3E13E3A) + 1508941597) ^ *&v113[4 * (v262 ^ 0x99)] ^ (-1974868763 * *&v108[4 * (v275 ^ 0x6A)] + 243037942);
  v220 = v124 - ((2 * v124) & 0xB3E13E3A);
  v221 = v277 ^ 0xB6;
  v278 = v127 - ((2 * v127) & 0x996DE56C);
  v128 = (v289 ^ 0xFD84E21D) - 300090569 + *&v106[4 * (v289 ^ 0x8D)];
  v129 = (v128 - ((2 * v128) & 0xB3E13E3A) + 1508941597) ^ *&v113[4 * (v287 ^ 0x71)];
  v288 = v129 - ((2 * v129) & 0x996DE56C);
  v130 = *(v38 - 128);
  v131 = *&v108[4 * (HIBYTE(v283) ^ 0x70)];
  LODWORD(v45) = (((v130 ^ 0x5F4D4755u) >> 16) ^ 0xFD84E2EB) - 300090569 + *&v106[4 * (((v130 ^ 0x5F4D4755u) >> 16) ^ 0x7B)];
  v132 = (v45 - ((2 * v45) & 0xB3E13E3A) + 1508941597) ^ *&v113[4 * ((v130 ^ 0x4755) >> 8)];
  v133 = ((BYTE2(v283) ^ 0xFD84E26F) - 300090569 + *&v106[4 * (BYTE2(v283) ^ 0xFF)]) ^ *&v113[4 * (BYTE1(v283) ^ 0x2B)] ^ (-1974868763 * v131 - ((345229770 * v131 + 486075884) & 0xB3E13E3A) + 1751979539);
  v211 = *(v38 - 124) ^ 0xDB19C1D0;
  HIDWORD(v233) = v132 - 860425545 + (~(2 * v132) | 0x66921A93);
  v213 = v283 ^ 0x94;
  v284 = v133 - ((2 * v133) & 0x996DE56C);
  v208 = v290 ^ 0x34;
  v134 = (BYTE2(v252) ^ 0xFD84E256) - 300090569 + *&v106[4 * (BYTE2(v252) ^ 0xC6)];
  LODWORD(v45) = *&v108[4 * ((v260 ^ ~v257) >> 24)];
  LODWORD(v70) = v134 - ((2 * v134) & 0x996DE56C);
  v135 = -1974868763 * v45 - ((345229770 * v45 + 486075884) & 0xB3E13E3A);
  LODWORD(v45) = *(v38 - 144) ^ 0xDDA7A6D4;
  v136 = (v135 + 1751979539) ^ *&v113[4 * BYTE1(v45)];
  LODWORD(v70) = (v70 - 860425546) ^ *&v110[4 * (v267 ^ 9 ^ v279 ^ 0xDC ^ 0x67)] ^ (-1974868763 * *&v108[4 * (HIBYTE(v252) ^ 0x3E)] + 243037942);
  v258 = v136 - ((2 * v136) & 0x996DE56C);
  v206 = BYTE1(v267) ^ 0x9E;
  v137 = *&v108[4 * (HIBYTE(v267) ^ 0xCD)];
  v138 = *&v110[4 * (v267 ^ 0xC9)] ^ (-1974868763 * v137 - ((345229770 * v137 + 486075884) & 0x996DE56C) - 617387604);
  v249 = v138 - ((2 * v138) & 0xB3E13E3A);
  v291 = (BYTE2(v45) ^ 0xFD84E2A5) - 300090569 + *&v106[4 * (BYTE2(v45) ^ 0x35)];
  v204 = BYTE1(v252) ^ 0x4F;
  v210 = v70 - ((2 * v70) & 0xB3E13E3A);
  v276 = (BYTE2(v267) ^ 0xFD84E2FB) - 300090569 + *&v106[4 * (BYTE2(v267) ^ 0x6B)];
  LODWORD(v45) = *&v108[4 * (HIBYTE(v279) ^ 0x22)];
  LODWORD(v45) = (-1974868763 * v45 - ((345229770 * v45 + 486075884) & 0xB3E13E3A) + 1751979539) ^ *&v113[4 * ((v279 ^ 0x4AFA) >> 8)];
  v253 = v45 - ((2 * v45) & 0x996DE56C);
  v268 = (BYTE2(v279) ^ 0xFD84E223) - 300090569 + *&v106[4 * (BYTE2(v279) ^ 0xB3)];
  v202 = v285 ^ 0x67;
  v272 = (v281 ^ 0xFD84E291) - 300090569 + *&v106[4 * (v281 ^ 1)];
  v139 = *(v38 - 132);
  v140 = *&v108[4 * (HIBYTE(v139) ^ 0x82)];
  v141 = (-1974868763 * v140 - ((345229770 * v140 + 486075884) & 0xB3E13E3A) + 1751979539) ^ *&v113[4 * (BYTE1(v139) ^ 5)] ^ ((BYTE2(v280) ^ 0xFD84E2FE) - 300090569 + *&v106[4 * (BYTE2(v280) ^ 0x6E)]);
  v286 = v141 - ((2 * v141) & 0x996DE56C);
  LODWORD(v45) = (((v216 ^ 0x23AAC875) >> 16) ^ 0xFD84E2B7) - 300090569 + *&v106[4 * (((v216 ^ 0x23AAC875) >> 16) ^ 0x27)];
  v142 = (v45 - ((2 * v45) & 0xB3E13E3A) + 1508941597) ^ *&v113[4 * ((v216 ^ 0xC875) >> 8)];
  v194 = BYTE1(v103) ^ 0x4E;
  LODWORD(v45) = *&v108[4 * (HIBYTE(v103) ^ 0x27)];
  LODWORD(v45) = (-1974868763 * v45 + 243037942 - 2 * ((-1974868763 * v45 + 243037942) & 0x4CB6F2B7 ^ (-1387007193 * v45) & 1) - 860425546) ^ *&v110[4 * (v103 ^ 0x5A)];
  v282 = v142 - ((2 * v142) & 0x996DE56C);
  v198 = BYTE1(v225) ^ 0x82;
  v143 = (((v225 ^ 0xC1698200) >> 16) ^ 0xFD84E2EB) - 300090569 + *&v106[4 * (((v225 ^ 0xC1698200) >> 16) ^ 0x7B)];
  v218 = HIBYTE(v216) ^ 0x82;
  v144 = (-1974868763 * *&v108[4 * (HIBYTE(v225) ^ 0x60)] + 243037942) ^ *&v110[4 * (v225 ^ 0x72)] ^ (v143 - ((2 * v143) & 0x996DE56C) - 860425546);
  LODWORD(v70) = *&v110[4 * (v227 ^ 0x12)] ^ ((BYTE2(v237) ^ 0xFD84E2A2) - 300090569 + *&v106[4 * (BYTE2(v237) ^ 0x32)]) ^ (-1974868763 * *&v108[4 * (HIBYTE(v237) ^ 0x21)] - ((345229770 * *&v108[4 * (HIBYTE(v237) ^ 0x21)] + 486075884) & 0x996DE56C) - 617387604);
  v200 = v144 - ((2 * v144) & 0xB3E13E3A);
  v199 = v70 - ((2 * v70) & 0xB3E13E3A);
  v196 = v45 - ((2 * v45) & 0xB3E13E3A);
  LODWORD(v217) = (((v103 ^ 0x68D34E2A) >> 16) ^ 0xFD84E2EB) - 300090569 + *&v106[4 * (((v103 ^ 0x68D34E2A) >> 16) ^ 0x7B)];
  v145 = (BYTE2(v294) ^ 0xFD84E287) - 300090569 + *&v106[4 * (BYTE2(v294) ^ 0x17)];
  LODWORD(v70) = (BYTE2(v90) ^ 0xFD84E227) - 300090569 + *&v106[4 * (BYTE2(v90) ^ 0xB7)];
  LODWORD(v70) = (v70 - ((2 * v70) & 0x996DE56C) - 860425546) ^ *&v110[4 * (v292 ^ 0x8B)];
  LODWORD(v57) = (BYTE2(v297) ^ 0xFD84E2E2) - 300090569 + *&v106[4 * (BYTE2(v297) ^ 0x72)];
  v146 = (v145 - ((2 * v145) & 0x996DE56C) - 860425546) ^ *&v110[4 * (v294 ^ 0x4D)] ^ (-1974868763 * *&v108[4 * (HIBYTE(v294) ^ 0xD2)] + 243037942);
  HIDWORD(v188) = v146 - ((2 * v146) & 0xB3E13E3A);
  LODWORD(v188) = v70 - ((2 * v70) & 0xB3E13E3A);
  HIDWORD(v191) = v296 ^ 0x6A;
  LODWORD(v190) = v297 ^ 0xF3;
  v147 = (v57 - ((2 * v57) & 0xB3E13E3A) + 1508941597) ^ *&v113[4 * (BYTE1(v297) ^ 0xE9)] ^ (-1974868763 * *&v108[4 * (HIBYTE(v297) ^ 0xF3)] + 243037942);
  v192 = v147 - ((2 * v147) & 0x996DE56C);
  LODWORD(v228) = (*(v38 - 256) ^ 0xFD84E2C0) - 300090569 + *&v106[4 * (*(v38 - 256) ^ 0x50)];
  v148 = *(v38 - 252) ^ v77;
  *(v38 - 252) = v76 ^ 0x28;
  LODWORD(v45) = (*(v38 - 232) ^ 0xFD84E2B8) - 300090569 + *&v106[4 * (*(v38 - 232) ^ 0x28)];
  *(v38 - 232) = v45 - ((2 * v45) & 0xB3E13E3A);
  v149 = *(v38 - 120);
  LODWORD(v45) = (-1974868763 * *&v108[4 * (HIBYTE(v149) ^ 0x43)] + 243037942) ^ ((BYTE2(v149) ^ 0xFD84E23E) - 300090569 + *&v106[4 * (BYTE2(v149) ^ 0xAE)]);
  v150 = (v45 - ((2 * v45) & 0xB3E13E3A) + 1508941597) ^ *&v113[4 * (BYTE1(v149) ^ 0x6E)];
  v151 = *(v38 - 240);
  LODWORD(v45) = (BYTE2(v151) ^ 0xFD84E221) - 300090569 + *&v106[4 * (BYTE2(v151) ^ 0xB1)];
  LODWORD(v45) = (v45 - 860425545 + (~(2 * v45) | 0x66921A93)) ^ *&v110[4 * (v151 ^ 0x76)];
  v152 = v45 - ((2 * v45) & 0xB3E13E3A);
  v153 = *&v108[4 * (HIBYTE(*(v38 - 140)) ^ 0x76)];
  v154 = *(v38 - 124);
  v155 = *&v108[4 * (HIBYTE(*(v38 - 128)) ^ 0xFE)];
  v156 = *&v108[4 * v208];
  v157 = *&v108[4 * v202];
  v158 = *&v108[4 * v218];
  LODWORD(v45) = v148 ^ 0x40596B88;
  LODWORD(v57) = v148 ^ 0x34;
  v159 = *&v108[4 * (HIBYTE(v292) ^ 0x26)];
  v160 = *&v108[4 * (HIBYTE(v296) ^ 0x3D)];
  v161 = *&v108[4 * (HIBYTE(v148) ^ 0x58)];
  v162 = *&v108[4 * (*(v38 - 216) ^ 0xEC)];
  LODWORD(v108) = *&v108[4 * (HIBYTE(v151) ^ 0x6D)];
  HIDWORD(v228) = -1974868763 * v153 + 243037942;
  *(v38 - 216) = -1974868763 * v155 + 243037942;
  v163 = -1974868763 * v156 + 243037942;
  LODWORD(v219) = -1974868763 * v158 + 243037942;
  LODWORD(v224) = -1974868763 * v157 + 243037942;
  HIDWORD(v224) = -1974868763 * v159 + 243037942;
  LODWORD(v226) = -1974868763 * v160 + 243037942;
  HIDWORD(v226) = -1974868763 * v108 + 243037942;
  LODWORD(v108) = (-1974868763 * v161 - ((345229770 * v161 + 486075884) & 0x996DE56C) - 617387604) ^ *&v110[4 * v57];
  LODWORD(v203) = *&v113[4 * (*(v38 - 168) ^ 0x38)];
  *(v38 - 168) = *&v113[4 * BYTE1(v229)];
  LODWORD(v234) = *&v113[4 * (BYTE1(*(v38 - 148)) ^ 0x2D)];
  *(v38 - 148) = *&v113[4 * v215];
  HIDWORD(v201) = *&v113[4 * BYTE1(v211)];
  LODWORD(v212) = *&v113[4 * v206];
  v263 = *&v113[4 * v204];
  HIDWORD(v214) = *&v113[4 * (v293 ^ 0x72)];
  LODWORD(v205) = *&v113[4 * v198];
  HIDWORD(v205) = *&v113[4 * (BYTE1(v237) ^ 0x7D)];
  v164 = *&v113[4 * v194];
  LODWORD(v230) = *&v113[4 * (v295 ^ 0x61)];
  HIDWORD(v217) = *&v113[4 * (BYTE1(v294) ^ 0xE2)];
  LODWORD(v207) = *&v113[4 * (BYTE1(v292) ^ 0x72)];
  v165 = (*(v38 - 232) + 1508941597) ^ *&v113[4 * (*(v38 - 172) ^ 0x74)] ^ (-1974868763 * v162 + 243037942);
  *(v38 - 172) = *&v113[4 * (BYTE1(v151) ^ 0xA2)];
  HIDWORD(v207) = *&v113[4 * (BYTE1(v45) ^ 0xF4)];
  LODWORD(v113) = BYTE2(v45);
  LODWORD(v106) = *&v106[4 * (BYTE2(v45) ^ 0xF4)];
  HIDWORD(v190) = v231 + 1508941597;
  LODWORD(v191) = *&v110[4 * *(v38 - 252)];
  HIDWORD(v189) = v232 + 1508941597;
  HIDWORD(v203) = v243 + 1508941597;
  v244 = v223 + 1508941597;
  LODWORD(v189) = v220 + 1508941597;
  LODWORD(v195) = v249 + 1508941597;
  LODWORD(v197) = v210 + 1508941597;
  HIDWORD(v193) = v200 + 1508941597;
  LODWORD(v201) = v199 + 1508941597;
  LODWORD(v45) = v196 + 1508941597;
  HIDWORD(v209) = v188 + 1508941597;
  HIDWORD(v230) = v108 - ((2 * v108) & 0xB3E13E3A) + 1508941597;
  LODWORD(v233) = v152 + 1508941597;
  HIDWORD(v219) = *&v110[4 * v265];
  LODWORD(v222) = *&v110[4 * v221];
  v166 = *&v110[4 * (v154 ^ 0xC9)];
  v167 = *&v110[4 * (*(v38 - 160) ^ 0x2B)];
  HIDWORD(v222) = *&v110[4 * (v130 ^ 0x25)];
  *(v38 - 160) = *&v110[4 * v213];
  v168 = *&v110[4 * (*(v38 - 144) ^ 0x1C)];
  LODWORD(v214) = *&v110[4 * (v273 ^ 0x97)];
  v169 = *&v110[4 * (*(v38 - 136) ^ 0xAE)];
  LODWORD(v209) = *&v110[4 * (v279 ^ 0xE4)];
  HIDWORD(v197) = *&v110[4 * (*(v38 - 132) ^ 0x33)];
  v250 = *&v110[4 * HIDWORD(v191)];
  HIDWORD(v212) = *&v110[4 * v190];
  *(v38 - 136) = *&v110[4 * (*(v38 - 120) ^ 0xB9)];
  *(v38 - 144) = (v113 ^ 0xFD84E264) - 300090569 + v106;
  *(v38 - 164) = *&v110[4 * (*(v38 - 164) ^ 0xD0)];
  v170 = v235 - 860425546;
  v241 = v270 - 860425546;
  HIDWORD(v234) = v284 - 860425546;
  v171 = v258 - 860425546;
  v259 = v192 - 860425546;
  LODWORD(v193) = v150 - ((2 * v150) & 0x996DE56C) - 860425546;
  HIDWORD(v195) = v165 - ((2 * v165) & 0x996DE56C) - 860425546;
  v172 = v164 ^ v217 ^ 0xC38F08C7 ^ v45;
  v173 = v167 ^ v163 ^ 0xADE18B96 ^ (v288 - 860425546);
  v174 = *(&off_1001252D0 + v236 - 327) - 8;
  v175 = *(&off_1001252D0 + v236 - 304) - 4;
  v176 = *(&off_1001252D0 + v236 - 427) - 12;
  v177 = (((v174[*(v38 - 111) ^ 0xD5] - 39) ^ 0xED) << 16) | ((v176[*(v38 - 112) ^ 1] ^ 3) << 24);
  v178 = ((v175[*(v38 - 102) ^ 0x49] ^ 0xE9) << 8) & 0xFF00FFFF | (((v174[*(v38 - 103) ^ 0xB3] - 39) ^ 0x59) << 16);
  LODWORD(v45) = (((v174[*(v38 - 99) ^ 0xDLL] - 39) ^ 0xA9) << 16) | ((v176[*(v38 - 100) ^ 0xCALL] ^ 0x91) << 24);
  v179 = *(v38 - 107) ^ 0x45;
  v180 = ((v175[*(v38 - 106) ^ 0xD5] ^ 0xCA) << 8) | ((v176[*(v38 - 108) ^ 0xC2] ^ 0xC9) << 24);
  *(v38 - 232) = v175;
  *(v38 - 224) = v174;
  v181 = v180 & 0xFF00FFFF | (((v174[v179] - 39) ^ 0x16) << 16);
  v182 = *(&off_1001252D0 + v236 - 364) - 8;
  LODWORD(v45) = v45 & 0xFFFFFF00 | ((v175[*(v38 - 98) ^ 0xC6] ^ 0xB4) << 8) | (53 * v182[*(v38 - 97) ^ 0xCBLL] - 98) ^ 0x79;
  LODWORD(v179) = v177 & 0xFFFFFF00 | ((v175[*(v38 - 110) ^ 0xE7] ^ 0x50) << 8) | (53 * v182[*(v38 - 109) ^ 0x8ALL] - 98) ^ 0xC9;
  v183 = v181 & 0xFFFFFF00 | (53 * v182[*(v38 - 105) ^ 0xB9] - 98) ^ 0x3C;
  v184 = *(v38 - 104) ^ 0x8ALL;
  v185 = *(v38 - 101) ^ 6;
  *(v38 - 248) = v182;
  *(v38 - 240) = v176;
  LOBYTE(v185) = v182[v185];
  *(v38 - 252) = -98;
  v186 = v178 & 0xFFFFFF00 | (53 * v185 - 98) ^ 0x87 | ((v176[v184] ^ 0xEEEEEEEE) << 24);
  *(v38 - 132) = v179 ^ 0x37373737;
  *(v38 - 128) = v45 ^ 0x37373737;
  *(v38 - 124) = v183 ^ 0x37373737;
  *(v38 - 140) = v186 ^ 0x37373737;
  *(v38 - 256) = v171 ^ v168 ^ v291;
  *(v38 - 120) = (((*(v38 - 156) ^ 0x1A758F4F) + 325661360) ^ ((*(v38 - 156) ^ 0xBDFCF3C1) - 1260368350) ^ ((*(v38 - 156) ^ 0xF5F9EEB3) - 52079788)) - 1610343626;
  HIDWORD(v274) = v212 ^ (v249 + 1508941597) ^ v276;
  LODWORD(v274) = v197 ^ v263;
  HIDWORD(v271) = v214 ^ HIDWORD(v214) ^ v224 ^ v272;
  LODWORD(v271) = v209 ^ v268 ^ (v253 - 860425546);
  HIDWORD(v266) = HIDWORD(v197) ^ (v286 - 860425546);
  LODWORD(v266) = (v255 + 1) ^ *(v38 - 168);
  HIDWORD(v261) = v234 ^ HIDWORD(v203);
  LODWORD(v261) = v207 ^ (v188 + 1508941597) ^ HIDWORD(v224);
  HIDWORD(v256) = HIDWORD(v212) ^ v259;
  LODWORD(v256) = v230 ^ v250 ^ v226 ^ v228;
  HIDWORD(v251) = HIDWORD(v217) ^ (HIDWORD(v188) + 1508941597);
  LODWORD(v251) = v222 ^ (v278 - 860425546);
  HIDWORD(v248) = HIDWORD(v219) ^ v241 ^ v247;
  LODWORD(v248) = *(v38 - 148) ^ HIDWORD(v228) ^ v244;
  HIDWORD(v245) = *(v38 - 136) ^ v193;
  LODWORD(v245) = HIDWORD(v207) ^ *(v38 - 144) ^ HIDWORD(v230);
  HIDWORD(v240) = *(v38 - 164) ^ HIDWORD(v195);
  LODWORD(v240) = *(v38 - 172) ^ v233 ^ HIDWORD(v226);
  HIDWORD(v239) = HIDWORD(v222) ^ HIDWORD(v233) ^ *(v38 - 216);
  LODWORD(v239) = *(v38 - 160) ^ (v284 - 860425546);
  *(v38 - 216) = v173;
  HIDWORD(v238) = 46032142 - v173 - v172;
  LODWORD(v238) = HIDWORD(v238) ^ v172;
  return sub_100052EDC(v170, v169, v168, (v282 - 860425546), v183, 185, v172, v166, v188, v189, v190, v191, v193, v195, v197, v201, v203, v205, v207, v209, v212, v214, v217, v219, v222, v224, v226, v228, v230, v233, v234, v236, a33, a34, a35, v238, v239, v240, v245, v248, v251, v256, v261, v266, v271, v274);
}

uint64_t sub_100052EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, int a37, int a38, int a39, int a40, int a41, int a42, int a43, int a44, int a45, int a46, int a47, int a48, int a49, int a50, int a51, int a52, int a53, int a54, int a55, int a56, int a57, int a58, int a59, int a60, int a61, int a62, int a63)
{
  *(v76 - 116) = v74;
  *(v76 - 172) = 0;
  *(v76 - 136) = *(v76 - 120) < 0xFB704B14;
  v78 = 4 * v73;
  v79 = 16 * v73;
  v80 = (v77 + v74);
  v81 = *(v76 - 224);
  v82 = *(v81 + (v80[5] ^ 0x87));
  v83 = v73;
  v84 = (4 * v73) ^ 0x464 | v74;
  *(v76 - 148) = v84;
  *(v76 - 144) = v78;
  v85 = *(v77 + v84) ^ 2;
  *(v76 - 152) = v79;
  v87 = *(v76 - 240);
  v86 = *(v76 - 232);
  v88 = *(v76 - 248);
  v89 = *(v76 - 252);
  LOBYTE(v78) = *(v88 + (v80[7] ^ 0xBFLL));
  v90 = (((v82 + (v79 ^ 0x59)) ^ 0x74) << 16) | ((*(v87 + v85) ^ 0xD9) << 24) | ((*(v86 + (v80[6] ^ 0xE2)) ^ 0x96) << 8) | (v89 + 53 * v78) ^ 0xFA;
  v91 = ((v89 + 53 * *(v88 + (v80[15] ^ 0x3CLL))) ^ 0x68 | ((*(v86 + (v80[14] ^ 8)) ^ 0xD2) << 8)) & 0xFF00FFFF | ((*(v87 + (v80[12] ^ 0xBDLL)) ^ 0xFFFFFFF1) << 24) | (((*(v81 + (v80[13] ^ 0xCALL)) - 39) ^ 0xFD) << 16);
  v92 = (v89 + 53 * *(v88 + (v80[3] ^ 0x19))) ^ 0x38 | ((*(v87 + (*v80 ^ 0x50)) ^ 0xEC) << 24) | (((*(v81 + (v80[1] ^ 0x1ELL)) - 39) ^ 0x68) << 16) | ((*(v86 + (v80[2] ^ 6)) ^ 0xAE) << 8);
  v93 = ((*(v87 + v80[8]) ^ 0xD2) << 24) | (((*(v81 + (v80[9] ^ 0xB0)) - 39) ^ 0x86) << 16) | ((*(v86 + (v80[10] ^ 0x42)) ^ 0x53) << 8) | (v89 + 53 * *(v88 + (v80[11] ^ 0x60))) ^ 0xDA;
  if ((((v89 + 53 * v78) ^ 0xFA) & 2) != 0)
  {
    v94 = -2;
  }

  else
  {
    v94 = 2;
  }

  *(v76 - 164) = v90;
  *(v76 - 160) = v91;
  v95 = a65 ^ v91;
  v96 = a64 ^ (v94 + v90);
  *(v76 - 156) = v93;
  v97 = a63 ^ v93;
  *(v76 - 168) = v92;
  v98 = a62 ^ v92;
  v99 = (a62 ^ v92) >> 24;
  v100 = *(&off_1001252D0 + v83 - 203);
  v101 = *(v100 + 4 * BYTE1(v97));
  HIDWORD(v103) = v101 ^ 0x277F;
  LODWORD(v103) = v101 ^ 0xA8F20000;
  v102 = v103 >> 14;
  v104 = *(&off_1001252D0 + v83 - 160) - 8;
  v105 = *(v100 + 4 * ((a62 ^ v92) >> 8));
  HIDWORD(v103) = v105 ^ 0x277F;
  LODWORD(v103) = v105 ^ 0xA8F20000;
  v106 = *(&off_1001252D0 + (v83 ^ 0x126)) - 4;
  v107 = *(&off_1001252D0 + v83 - 163) - 12;
  v108 = *(v100 + 4 * BYTE1(v96));
  v109 = (*&v104[4 * HIBYTE(v97)] + v75) ^ *&v107[4 * BYTE2(v96)] ^ (v103 >> 14);
  HIDWORD(v103) = v108 ^ 0x277F;
  LODWORD(v103) = v108 ^ 0xA8F20000;
  v110 = v103 >> 14;
  v111 = v109 ^ (-21582785 * *&v106[4 * v95]);
  v112 = *(v100 + 4 * BYTE1(v95));
  HIDWORD(v103) = v112 ^ 0x277F;
  LODWORD(v103) = v112 ^ 0xA8F20000;
  v113 = -21582785 * *&v106[4 * v97];
  v114 = *&v107[4 * BYTE2(v97)];
  v115 = a36 ^ (v111 + a37 - 2 * (v111 & a37));
  v116 = a61 ^ v102 ^ *&v107[4 * BYTE2(v95)] ^ (*&v104[4 * v99] + v75) ^ 0x8E1E9161 ^ (-21582785 * *&v106[4 * v96]);
  v117 = a60 ^ v113 ^ *&v107[4 * BYTE2(v98)] ^ (*&v104[4 * HIBYTE(v96)] + v75) ^ 0x7A8BED94 ^ (v103 >> 14);
  v118 = a59 ^ (*&v104[4 * HIBYTE(v95)] + v75) ^ v110 ^ (-21582785 * *&v106[4 * v98]);
  v119 = *(v100 + 4 * ((v115 ^ 0xAB13) >> 8));
  HIDWORD(v103) = v119 ^ 0x277F;
  LODWORD(v103) = v119 ^ 0xA8F20000;
  v120 = v103 >> 14;
  v121 = v118 ^ v114 ^ 0x342D1067;
  v122 = *(v100 + 4 * BYTE1(v121));
  HIDWORD(v103) = v122 ^ 0x277F;
  LODWORD(v103) = v122 ^ 0xA8F20000;
  v123 = v103 >> 14;
  v124 = *(v100 + 4 * BYTE1(v116));
  HIDWORD(v103) = v124 ^ 0x277F;
  LODWORD(v103) = v124 ^ 0xA8F20000;
  v125 = v103 >> 14;
  v126 = *(v100 + 4 * BYTE1(v117));
  HIDWORD(v103) = v126 ^ 0x277F;
  LODWORD(v103) = v126 ^ 0xA8F20000;
  v127 = *(v76 - 256) ^ (*&v104[4 * HIBYTE(v116)] + v75) ^ *&v107[4 * BYTE2(v121)] ^ (-21582785 * *&v106[4 * v117]) ^ v120;
  v128 = a58 ^ (*&v104[4 * HIBYTE(v121)] + v75) ^ (-21582785 * *&v106[4 * v116]);
  v129 = *&v104[4 * ((v115 ^ 0xC04AB13u) >> 24)] + v75;
  v130 = -21582785 * *&v106[4 * v121];
  v131 = -21582785 * *&v106[4 * (v115 ^ 0x33)];
  v132 = v128 ^ *&v107[4 * ((v115 ^ 0xC04AB13u) >> 16)] ^ (v103 >> 14) ^ 0xD9D684A;
  v133 = a57 ^ (*&v104[4 * HIBYTE(v117)] + v75) ^ *&v107[4 * BYTE2(v116)] ^ v123 ^ 0x87DD46DC ^ v131;
  v134 = a56 ^ *&v107[4 * BYTE2(v117)] ^ v130 ^ v129 ^ v125 ^ 0x96521C3F;
  v135 = *(v100 + 4 * ((v127 ^ 0xB36B) >> 8));
  HIDWORD(v103) = v135 ^ 0x277F;
  LODWORD(v103) = v135 ^ 0xA8F20000;
  v136 = v103 >> 14;
  v137 = *(v100 + 4 * BYTE1(v132));
  HIDWORD(v103) = v137 ^ 0x277F;
  LODWORD(v103) = v137 ^ 0xA8F20000;
  v138 = v103 >> 14;
  v139 = *(v100 + 4 * BYTE1(v133));
  HIDWORD(v103) = v139 ^ 0x277F;
  LODWORD(v103) = v139 ^ 0xA8F20000;
  v140 = v103 >> 14;
  v141 = *(v100 + 4 * BYTE1(v134));
  HIDWORD(v103) = v141 ^ 0x277F;
  LODWORD(v103) = v141 ^ 0xA8F20000;
  v142 = a73 ^ v138 ^ (*&v104[4 * HIBYTE(v133)] + v75) ^ (-21582785 * *&v106[4 * v134]) ^ *&v107[4 * ((v127 ^ 0x2F7BB36B) >> 16)];
  v143 = a55 ^ (*&v104[4 * HIBYTE(v132)] + v75) ^ v140 ^ (-21582785 * *&v106[4 * (v127 ^ 0x6B)]) ^ *&v107[4 * BYTE2(v134)] ^ 0x9F0FA8F6;
  v144 = a54 ^ (-21582785 * *&v106[4 * v132]) ^ *&v107[4 * BYTE2(v133)] ^ v136 ^ (*&v104[4 * HIBYTE(v134)] + v75) ^ 0xD8A932B2;
  v145 = a53 ^ *&v107[4 * BYTE2(v132)] ^ (v103 >> 14) ^ (*&v104[4 * (HIBYTE(v127) ^ 0xEE)] + v75) ^ 0xDBC82169;
  v146 = *(v100 + 4 * ((v142 ^ 0x9E59) >> 8));
  v147 = v145 ^ (-21582785 * *&v106[4 * v133]);
  v148 = *(v100 + 4 * BYTE1(v147));
  HIDWORD(v103) = v146 ^ 0x277F;
  LODWORD(v103) = v146 ^ 0xA8F20000;
  v149 = v103 >> 14;
  HIDWORD(v103) = v148 ^ 0x277F;
  LODWORD(v103) = v148 ^ 0xA8F20000;
  v150 = v103 >> 14;
  v151 = *(v100 + 4 * BYTE1(v144));
  HIDWORD(v103) = v151 ^ 0x277F;
  LODWORD(v103) = v151 ^ 0xA8F20000;
  v152 = *&v104[4 * HIBYTE(v144)];
  v153 = -21582785 * *&v106[4 * v144];
  v154 = a72 ^ (*&v104[4 * HIBYTE(v143)] + v75) ^ v149 ^ (-21582785 * *&v106[4 * v147]) ^ *&v107[4 * BYTE2(v144)];
  v155 = *&v107[4 * BYTE2(v143)];
  v156 = *&v104[4 * ((v142 ^ 0xD16F9E59) >> 24)] + v75;
  v157 = a52 ^ (v152 + v75) ^ v150;
  v158 = *(v100 + 4 * BYTE1(v143));
  v159 = v157 ^ *&v107[4 * ((v142 ^ 0xD16F9E59) >> 16)];
  BYTE2(v142) = BYTE2(v154) ^ 0x34;
  v160 = v159 ^ (-21582785 * *&v106[4 * v143]) ^ 0xF4361671;
  v161 = a71 ^ v155 ^ (v103 >> 14) ^ (-21582785 * *&v106[4 * (v142 ^ 0x79)]) ^ (*&v104[4 * HIBYTE(v147)] + v75);
  v162 = a51 ^ v156 ^ v153 ^ (v158 >> 14) ^ (v158 << 18);
  v163 = *(v100 + 4 * ((v154 ^ 0x9DAE) >> 8));
  v164 = v162 ^ *&v107[4 * BYTE2(v147)] ^ 0xE3E0F3D8;
  HIDWORD(v103) = v163 ^ 0x277F;
  LODWORD(v103) = v163 ^ 0xA8F20000;
  v165 = v103 >> 14;
  v166 = *(v100 + 4 * BYTE1(v164));
  HIDWORD(v103) = v166 ^ 0x277F;
  LODWORD(v103) = v166 ^ 0xA8F20000;
  v167 = v103 >> 14;
  v168 = *(v100 + 4 * ((v161 ^ 0x500A) >> 8));
  HIDWORD(v103) = v168 ^ 0x277F;
  LODWORD(v103) = v168 ^ 0xA8F20000;
  v169 = v103 >> 14;
  v170 = *(v100 + 4 * BYTE1(v160));
  HIDWORD(v103) = v170 ^ 0x277F;
  LODWORD(v103) = v170 ^ 0xA8F20000;
  v171 = (v154 ^ 0xE0349DAE) >> 24;
  v172 = a50 ^ (*&v104[4 * HIBYTE(v160)] + v75) ^ *&v107[4 * BYTE2(v164)] ^ (-21582785 * *&v106[4 * (v154 ^ 0x8E)]) ^ v169 ^ 0x541774FA;
  v173 = *&v104[4 * v171] + v75;
  v174 = *&v104[4 * ((v161 ^ 0x6754500Au) >> 24)] + v75;
  v175 = -21582785 * *&v106[4 * (v161 ^ 0x2A)];
  v176 = a49 ^ v165 ^ (*&v104[4 * HIBYTE(v164)] + v75) ^ (-21582785 * *&v106[4 * v160]) ^ *&v107[4 * ((v161 ^ 0x6754500Au) >> 16)] ^ 0x9A279982;
  v177 = a48 ^ *&v107[4 * BYTE2(v160)] ^ v173 ^ v175 ^ 0xC2B36049 ^ v167;
  v178 = a47 ^ v174 ^ (v103 >> 14) ^ *&v107[4 * BYTE2(v142)] ^ 0x8EB61C45 ^ (-21582785 * *&v106[4 * v164]);
  v179 = *(v100 + 4 * BYTE1(v176));
  HIDWORD(v103) = v179 ^ 0x277F;
  LODWORD(v103) = v179 ^ 0xA8F20000;
  v180 = v103 >> 14;
  v181 = *(v100 + 4 * BYTE1(v178));
  HIDWORD(v103) = v181 ^ 0x277F;
  LODWORD(v103) = v181 ^ 0xA8F20000;
  v182 = v103 >> 14;
  v183 = *(v100 + 4 * BYTE1(v172));
  v184 = v172 - ((2 * v172) & 0x40);
  HIDWORD(v103) = v183 ^ 0x277F;
  LODWORD(v103) = v183 ^ 0xA8F20000;
  v185 = v103 >> 14;
  v186 = *(v100 + 4 * BYTE1(v177));
  HIDWORD(v103) = v186 ^ 0x277F;
  LODWORD(v103) = v186 ^ 0xA8F20000;
  v187 = *&v104[4 * HIBYTE(v172)];
  v188 = *&v107[4 * BYTE2(v172)];
  v189 = a70 ^ *&v107[4 * BYTE2(v177)] ^ v185 ^ (*&v104[4 * HIBYTE(v178)] + v75) ^ (-21582785 * *&v106[4 * v176]);
  v190 = a46 ^ v188 ^ (*&v104[4 * HIBYTE(v177)] + v75);
  v191 = *&v104[4 * HIBYTE(v176)] + v75;
  v192 = *&v107[4 * BYTE2(v176)];
  v193 = -21582785 * *&v106[4 * v177];
  v194 = v190 ^ v180 ^ 0x7C892C4A ^ (-21582785 * *&v106[4 * v178]);
  v195 = a45 ^ *&v107[4 * BYTE2(v178)] ^ v191 ^ (v103 >> 14) ^ 0x190B7FE4 ^ (-21582785 * *&v106[4 * (v184 + 32)]);
  v196 = HIBYTE(v194);
  v197 = a44 ^ (v187 + v75) ^ v192 ^ v182 ^ v193 ^ 0xCFA132BA;
  v198 = *(v100 + 4 * BYTE1(v194));
  HIDWORD(v103) = v198 ^ 0x277F;
  LODWORD(v103) = v198 ^ 0xA8F20000;
  v199 = v103 >> 14;
  v200 = *(v100 + 4 * BYTE1(v197));
  HIDWORD(v103) = v200 ^ 0x277F;
  LODWORD(v103) = v200 ^ 0xA8F20000;
  v201 = v103 >> 14;
  v202 = *(v100 + 4 * BYTE1(v195));
  HIDWORD(v103) = v202 ^ 0x277F;
  LODWORD(v103) = v202 ^ 0xA8F20000;
  v203 = v103 >> 14;
  v204 = *(v100 + 4 * ((v189 ^ 0xF460) >> 8));
  HIDWORD(v103) = v204 ^ 0x277F;
  LODWORD(v103) = v204 ^ 0xA8F20000;
  v205 = a43 ^ v201 ^ (*&v104[4 * ((v189 ^ 0x402CF460u) >> 24)] + v75) ^ (-21582785 * *&v106[4 * v195]) ^ *&v107[4 * BYTE2(v194)] ^ 0x2655A6B2;
  v206 = -21582785 * *&v106[4 * v197];
  v207 = a42 ^ (*&v104[4 * HIBYTE(v197)] + v75) ^ *&v107[4 * BYTE2(v195)] ^ (v103 >> 14) ^ (-21582785 * *&v106[4 * v194]) ^ 0x354150DE;
  v208 = a41 ^ *&v107[4 * BYTE2(v197)] ^ (-21582785 * *&v106[4 * (v189 ^ 0x40)]) ^ v203 ^ (*&v104[4 * v196] + v75) ^ 0x6005D395;
  v209 = a40 ^ (*&v104[4 * HIBYTE(v195)] + v75) ^ v199 ^ v206 ^ *&v107[4 * (BYTE2(v189) ^ 0x2C)] ^ 0xD6EF510D;
  v210 = *(v100 + 4 * BYTE1(v208));
  HIDWORD(v103) = v210 ^ 0x277F;
  LODWORD(v103) = v210 ^ 0xA8F20000;
  v211 = v103 >> 14;
  v212 = *(v100 + 4 * BYTE1(v207));
  HIDWORD(v103) = v212 ^ 0x277F;
  LODWORD(v103) = v212 ^ 0xA8F20000;
  v213 = v103 >> 14;
  v214 = *(v100 + 4 * BYTE1(v205));
  HIDWORD(v103) = v214 ^ 0x277F;
  LODWORD(v103) = v214 ^ 0xA8F20000;
  v215 = v103 >> 14;
  v216 = *(v100 + 4 * BYTE1(v209));
  HIDWORD(v103) = v216 ^ 0x277F;
  LODWORD(v103) = v216 ^ 0xA8F20000;
  v217 = *&v107[4 * BYTE2(v205)];
  v218 = *&v104[4 * HIBYTE(v209)] + v75;
  v219 = (*&v104[4 * HIBYTE(v208)] + v75) ^ *(v76 - 216) ^ *&v107[4 * BYTE2(v207)] ^ (v103 >> 14) ^ (-21582785 * *&v106[4 * v205]);
  v220 = a69 ^ *&v107[4 * BYTE2(v208)] ^ (*&v104[4 * HIBYTE(v205)] + v75);
  v221 = *&v107[4 * BYTE2(v209)];
  v222 = *&v104[4 * HIBYTE(v207)] + v75;
  BYTE2(v209) = BYTE2(v219) ^ 0x1C;
  v223 = v220 ^ v213 ^ (-21582785 * *&v106[4 * v209]);
  v224 = a39 ^ v217 ^ v218 ^ v211 ^ (-21582785 * *&v106[4 * v207]) ^ 0xDE12593A;
  v225 = a38 ^ v221 ^ v222 ^ v215 ^ (-21582785 * *&v106[4 * v208]) ^ 0x8D19C5A6;
  BYTE2(v220) = BYTE2(v223) ^ 0x9E;
  v226 = *(v100 + 4 * BYTE1(v225));
  HIDWORD(v103) = v226 ^ 0x277F;
  LODWORD(v103) = v226 ^ 0xA8F20000;
  v227 = v103 >> 14;
  v228 = *&v106[4 * (v219 ^ 0x30)];
  v229 = *&v106[4 * (v223 ^ 0xCD)];
  v230 = *&v106[4 * v224];
  v231 = *(v100 + 4 * ((v219 ^ 0x5930) >> 8));
  HIDWORD(v103) = v231 ^ 0x277F;
  LODWORD(v103) = v231 ^ 0xA8F20000;
  v232 = v103 >> 14;
  v233 = *&v106[4 * v225];
  v234 = *(v100 + 4 * ((v223 ^ 0x44CD) >> 8));
  HIDWORD(v103) = v234 ^ 0x277F;
  LODWORD(v103) = v234 ^ 0xA8F20000;
  v235 = v103 >> 14;
  v236 = *&v104[4 * HIBYTE(v225)];
  v237 = *&v104[4 * (HIBYTE(v219) ^ 0x50)];
  LODWORD(v106) = *&v104[4 * HIBYTE(v224)];
  LODWORD(v104) = *&v104[4 * (HIBYTE(v223) ^ 0x6D)];
  v238 = *(v100 + 4 * BYTE1(v224));
  HIDWORD(v103) = v238 ^ 0x277F;
  LODWORD(v103) = v238 ^ 0xA8F20000;
  LODWORD(v100) = -21582785 * v228;
  v239 = v236 + v75;
  v240 = *&v107[4 * BYTE2(v225)];
  v241 = a68 ^ *&v107[4 * BYTE2(v220)] ^ v232 ^ (-21582785 * v233) ^ (v106 + v75);
  v242 = *(v76 - 212) ^ v239 ^ v235 ^ *&v107[4 * BYTE2(v224)] ^ v100;
  v243 = a67 ^ *&v107[4 * BYTE2(v209)] ^ v227 ^ (-21582785 * v230) ^ (v104 + v75);
  v244 = a66 ^ (v237 + v75) ^ v240 ^ (-21582785 * v229) ^ (v103 >> 14);
  v245 = v244 ^ 0x644667A6;
  LODWORD(v107) = v243 ^ 0x7EC2C88;
  v246 = v241 ^ 0x9A25D878;
  v247 = *(&off_1001252D0 + (v83 ^ 0x1B2)) - 4;
  v248 = *&v247[4 * ((v243 ^ 0x7EC2C88u) >> 16)];
  v249 = *(&off_1001252D0 + v83 - 98) - 12;
  LODWORD(v100) = *&v249[4 * (v243 ^ 0xDB)];
  v250 = *&v247[4 * ((v244 ^ 0x644667A6u) >> 16)];
  v251 = *&v249[4 * (v244 ^ 0xF5)];
  v252 = *&v249[4 * (v241 ^ 0x2B)];
  v253 = v250 - ((2 * v250) & 0xBB708860);
  v254 = *&v247[4 * ((v242 ^ 0xAD089B63) >> 16)];
  v255 = *&v247[4 * ((v241 ^ 0x9A25D878) >> 16)];
  v256 = *&v249[4 * (v242 ^ 0x30)];
  v257 = *(&off_1001252D0 + v83 - 134);
  LODWORD(v247) = *(v257 + 4 * (BYTE1(v107) ^ 0xF5u));
  v258 = ((v242 ^ 0x9B63) >> 8);
  LODWORD(v106) = *(v257 + 4 * (v258 ^ 0xF5u));
  v259 = BYTE1(v245);
  v260 = *(v257 + 4 * (BYTE1(v245) ^ 0xF5u));
  v261 = BYTE1(v246);
  LODWORD(v257) = *(v257 + 4 * (BYTE1(v246) ^ 0xF5u));
  v262 = *(&off_1001252D0 + (v83 ^ 0x16B));
  v263 = *(v262 + 4 * HIBYTE(v246));
  v264 = BYTE1(v107) ^ *(v76 - 140) ^ v245 ^ v251 ^ v247 ^ v255 ^ __ROR4__(*(v262 + 4 * (HIBYTE(v242) ^ 0xBD)), 7);
  v265 = v246 ^ *(v76 - 132) ^ v258 ^ v252 ^ v106 ^ (v253 + 1572357168) ^ __ROR4__(*(v262 + 4 * (v107 >> 24)), 7);
  v266 = v261 ^ *(v76 - 128) ^ v107 ^ __ROR4__(*(v262 + 4 * HIBYTE(v245)), 7) ^ v100 ^ v254 ^ v257;
  v267 = v242 ^ 0x63 ^ *(v76 - 124);
  LODWORD(v104) = (v264 - ((2 * v264) & 0xAC281084) - 703330238) ^ *(v76 - 208);
  LODWORD(v107) = (v265 - ((2 * v265) & 0xD952B830) - 324445160) ^ *(v76 - 204);
  LODWORD(v103) = __ROR4__(v263, 7);
  v268 = v260 ^ v256;
  v269 = *(v76 - 192);
  v270 = *(&off_1001252D0 + v83 - 155) - 12;
  v271 = ((v267 ^ v259 ^ v248 ^ v103 ^ v268) - ((2 * (v267 ^ v259 ^ v248 ^ v103 ^ v268)) & 0xA9F0E3E2) + 1425568241) ^ *(v76 - 196);
  v80[3] = v270[((v265 - ((2 * v265) & 0x30) + 24) ^ *(v76 - 204)) ^ 0xDFLL] ^ 0xD4;
  v272 = *(&off_1001252D0 + (v83 ^ 0x10F));
  *(v269 + *(v76 - 148)) = (*(v272 + (HIBYTE(v271) ^ 0x2CLL)) - 62) ^ 0x78;
  v273 = (v266 - ((2 * v266) & 0x771C486) + 62448195) ^ *(v76 - 200);
  *v80 = (*(v272 + ((v107 >> 24) ^ 0x57)) - 62) ^ 0xC8;
  v274 = *(&off_1001252D0 + (v83 ^ 0x17F)) - 8;
  v80[13] = (v274[BYTE2(v273) ^ 0x5CLL] - 89) ^ 0xC7;
  v80[11] = v270[v104 ^ 0x46] ^ 0x90;
  v275 = *(&off_1001252D0 + v83 - 158) - 4;
  v80[14] = BYTE1(v273) ^ 0x9B ^ v275[BYTE1(v273)];
  v80[2] = BYTE1(v107) ^ 0x88 ^ v275[BYTE1(v107) ^ 0xE6];
  v80[10] = BYTE1(v104) ^ 0xC6 ^ v275[BYTE1(v104) ^ 0x84];
  v80[15] = v270[v273 ^ 0x11] ^ 0x27;
  v80[5] = (v274[BYTE2(v271) ^ 0x44] - 89) ^ 0xE2;
  v80[8] = (*(v272 + ((v104 >> 24) ^ 0x26)) - 62) ^ 0xA2;
  v80[7] = v270[v271 ^ 0x3DLL] ^ 0x2D;
  v80[12] = (*(v272 + (HIBYTE(v273) ^ 0x44)) - 62) ^ 0x23;
  v80[1] = (v274[BYTE2(v107) ^ 0xA3] - 89) ^ 0x17;
  v277 = *(v76 - 120);
  v276 = *(v76 - 116);
  v80[6] = BYTE1(v271) ^ 0xD0 ^ v275[BYTE1(v271) ^ 0x58];
  v80[9] = (v274[BYTE2(v104) ^ 0xF8] - 89) ^ 0x90;
  v278 = v276 - 76526812 < v277;
  if (*(v76 - 136) != (v276 - 76526812) < 0xFB704B14)
  {
    v278 = *(v76 - 136);
  }

  return (*(*(v76 - 184) + 8 * ((135 * v278) | v83)))();
}

void sub_100054238(uint64_t a1)
{
  v1 = 210068311 * (a1 ^ 0x576F9AD7);
  if (*(a1 + 24))
  {
    v2 = (*(a1 + 8) ^ v1) == 1257009902;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10005472C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, int a8@<W8>, __n128 a9@<Q0>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v66 = &STACK[0x500] + v63;
  *v66 = 870277575;
  *(v66 + 1) = 0;
  *(v66 + 4) = 28233896;
  *(v66 + 6) = 1912886423;
  *(v66 + 4) = 0;
  *(&STACK[0x500] + v63 + 40) = 1912886423;
  *(&STACK[0x500] + v63 + 48) = 0;
  STACK[0x250] = &STACK[0x500] + v63 + 48;
  STACK[0x238] = &STACK[0x500] + v63 + 0x15B830FC805F032BLL;
  *(v66 + 14) = 1912886423;
  *(&STACK[0x500] + v63 + 64) = 0;
  *(&STACK[0x500] + v63 + 72) = 1912886423;
  STACK[0x2C8] = &STACK[0x500] + v63 + 72;
  *(&STACK[0x500] + v63 + 80) = 0;
  STACK[0x270] = &STACK[0x500] + v63 + 80;
  v66[88] = 12;
  v64->n128_u32[0] = 870277575;
  memset(&v64->n128_u8[4], 32, 20);
  v64[1].n128_u32[2] = 1912886423;
  v64[1].n128_u32[3] = 0;
  v64[14].n128_u32[2] = 0;
  memset(&v64[27].n128_u8[4], 32, 40);
  memset(&v64[70].n128_i8[8], 32, 40);
  v64[73] = a9;
  v64[74] = a9;
  return (*(v65 + 8 * ((767 * (a8 == 1689)) ^ v62)))(a1, &STACK[0x500] + v63, a2, a3, a4, a5, a6, a7, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, &v64[14].n128_i64[1], a49, &v64[1].n128_i64[1] + 4, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

void sub_100054978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v8 = a3 == 0;
  }

  else
  {
    v8 = 1;
  }

  v12 = v8 || a6 == 0 || a7 == 0 || a8 == 0;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100054A10@<X0>(uint64_t a1@<X8>)
{
  v10 = (*(*(v8 + 8) + 4 * v2) ^ v5) + v1;
  *(*(a1 + 8) + 4 * v2) = v10 + (v3 ^ (v5 + 160)) - (v7 & (2 * v10));
  return (*(v6 + 8 * (v4 | (2 * (v2 + 1 == v9)))))();
}

uint64_t sub_100054A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13)
{
  a13 = 1504884919 * (&a12 ^ 0xFBC3B71B) + 1212455568;
  v15 = (*(v13 + 22208))(&a12);
  return (*(v13 + 8 * ((220 * (a12 == 1958853845)) ^ v14)))(v15);
}

uint64_t sub_100054B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, unsigned int a41)
{
  v46 = *(&a29 + v41 + 72);
  v47 = ((2 * v41) & 0x177FFDD8) + (v41 ^ 0xBBFFEEF) + v42;
  *(v44 + v47) = ((v46 >> (v43 - 88)) ^ 0xCE) - ((2 * (v46 >> (v43 - 88))) & 0x40) + 32;
  *(v44 + v47 + 1) = (BYTE2(v46) ^ 0x8E) - ((v46 >> 15) & 0x40) + 32;
  *(v44 + v47 + 2) = (BYTE1(v46) ^ 0x63) - ((2 * (BYTE1(v46) ^ 0x63)) & 0x40) + 32;
  *(v44 + v47 + 3) = v46 ^ 0xBC;
  return (*(v45 + 8 * ((2556 * (v41 + 4 < a41)) ^ v43)))();
}

uint64_t sub_100054E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  v36 = v32 ^ 0x319;
  *(v35 - 136) = v32 + 435584651 * (((~(v35 - 144) & 0xF1BC0DCA) - (~(v35 - 144) | 0xF1BC0DCB)) ^ 0x9C8E179D) + 813;
  *(v35 - 112) = a14;
  *(v35 - 104) = &a32;
  *(v35 - 128) = a13;
  *(v35 - 120) = &a32;
  *(v35 - 144) = &a28;
  v37 = (*(v33 + 8 * (v32 ^ 0xA42)))(v35 - 144);
  return (*(v33 + 8 * ((451 * (v34 - 181586625 >= ((v36 - 385) | 0x484u) + 2147481979)) ^ (v36 + 831))))(v37);
}

uint64_t sub_1000553EC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _DWORD *a14, uint64_t a15, uint64_t a16, unint64_t a17, int a18, int a19, uint64_t a20, uint64_t a21, int a22)
{
  v28 = (v22 + 385) | 4;
  *a14 = a1;
  LODWORD(STACK[0x28C]) = a22;
  STACK[0x290] = a17;
  LODWORD(STACK[0x298]) = ((v22 + 2014) ^ 0x33DF68AA) - v23 + a19;
  STACK[0x2A0] = a9 + (v23 - 1429511819);
  v29 = v22;
  v30 = (*(v25 + v26 * v27 + 8))(a6);
  return (*(v24 + 8 * ((832 * ((v30 ^ 0xF5C3FDFF) + 2130558678 + ((2 * v30) & 0xEB87FBFE) == (v28 ^ 0x74C1BFC1))) ^ v29)))();
}

uint64_t sub_1000554E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, unsigned int a15, uint64_t a16, unsigned int a17, unsigned int a18, uint64_t a19)
{
  v25 = (((&a14 | 0xFB1A4B0C) - (&a14 & 0xFB1A4B0C)) ^ 0xD9FC17) * v24;
  a14 = (v22 ^ 0x3EBFDD1B) + ((2 * v22) & 0x7D7FBA36) - 470565120 + v25;
  a15 = 2715 - v25;
  a16 = a12;
  (*(v23 + 22088))(&a14);
  v26 = 742307843 * ((&a14 + 1321372562 - 2 * (&a14 & 0x4EC28B92)) ^ 0x50E006C7);
  a19 = a12;
  a16 = v20;
  a17 = 1355 - v26;
  a18 = (v21 ^ 0x7BBF99ED) + ((2 * v21) & 0xF77F33DA) - v26 - 940836864;
  (*(v23 + 22248))(&a14);
  v27 = 742307843 * (((&a14 | 0x33E8468F) - (&a14 & 0x33E8468F)) ^ 0x2DCACBDA);
  a17 = 1355 - v27;
  a18 = 1135317485 - v27;
  a19 = a12;
  a16 = 0;
  (*(v23 + 22248))(&a14);
  v28 = ((&a14 - 1055700339 - 2 * (&a14 & 0xC1134A8D)) ^ 0x3AD0FD96) * v24;
  a16 = a12;
  a14 = (v19 ^ 0xE2FF9FFF) + ((2 * v19) & 0xC5FF3FFE) + 1068760092 + v28;
  a15 = 2715 - v28;
  v29 = (*(v23 + 22088))(&a14);
  return (*(v23 + 8 * ((14 * (a17 == 1958853845)) ^ 0x524u)))(v29);
}

uint64_t sub_10005572C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, uint64_t a15)
{
  a15 = a11;
  a14 = v16 - 514 - 143681137 * (((&a14 | 0xE3DC4FB3) - (&a14 & 0xE3DC4FB3)) ^ 0x574E3A3);
  (*(v17 + 8 * (v16 + 1993)))(&a14);
  a14 = v16 - 514 - 143681137 * (((&a14 | 0xCB4F9B05) - &a14 + (&a14 & 0x34B064F8)) ^ 0x2DE73715);
  a15 = a12;
  v19 = (*(v17 + 8 * (v16 + 1993)))(&a14);
  return (*(v17 + 8 * ((1509 * (v15 == v18 + v16 - 751)) ^ v16)))(v19);
}

void sub_1000559AC()
{
  v4 = (((*v0 - v2) ^ 0x14FCB033) - 911158312) ^ (*v0 - v2) ^ (((*v0 - v2) ^ 0x953D4A09) + 1215375854) ^ (((*v0 - v2) ^ 0x7F7EFFFF) - 1573741540) ^ (((*v0 - v2) ^ 0xDC0C99DE) + ((v3 + 2109) ^ 0x140F0A0));
  *v5 = (HIBYTE(v4) ^ 0x22) - 2 * ((HIBYTE(v4) ^ 0x22) & 0x24 ^ HIBYTE(v4) & 4) + 32;
  v5[1] = (BYTE2(v4) ^ 0xB3) - ((2 * (BYTE2(v4) ^ 0xB3)) & 0x40) + 32;
  v5[2] = (BYTE1(v4) ^ 0x9C) - ((v4 >> 7) & 0x40) + 32;
  v5[3] = v4 ^ 0x3B;
  v0[4] = *(v1 + 24);
}

uint64_t sub_100055CC8@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X3>, int a4@<W5>, int a5@<W8>)
{
  v8 = (v7 + 4 * v6);
  v9 = v6 + 1;
  *v8 = *(a3 + 4 * (*(v7 + 4 * v9) & 1)) ^ v8[397] ^ ((*(v7 + 4 * v9) & 0x7FFFFFFE | ((a5 + 747) ^ (a2 + 2041)) & v5) >> 1);
  return (*(a1 + 8 * (((v9 == 227) * a4) ^ a5)))();
}

uint64_t sub_100055DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, int a43, int a44, int a45, int a46, uint64_t a47, void *a48, int *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v67 = 4 * (v66 + v62);
  v68 = ((*(*a48 + (*a49 & 0xFFFFFFFFC3749F04)) ^ (a62 + v67)) & 0x7FFFFFFF) * (6 * a46 - 976036735);
  v69 = -1025992791 * (v68 ^ HIWORD(v68)) + 49957934 * ((v68 ^ HIWORD(v68)) + (((v64 - 279 - v62) & ((v64 - 279) ^ (-2 - v63)) | v62 & ~(v64 - 279)) >> 31));
  *(v65 + v67) = *(a62 + v67) ^ 0x329D826A ^ (*(v65 + v67) + 849183338 - ((2 * *(v65 + v67)) & 0x653B04D4)) ^ *(*(&off_1001252D0 + v64 - 166) + HIBYTE(v69) - 1) ^ *(*(&off_1001252D0 + a44) + HIBYTE(v69) + 4) ^ *(*(&off_1001252D0 + a42) + HIBYTE(v69) - 2) ^ v69 ^ (v69 << 16) ^ (-857024511 * HIBYTE(v69));
  return sub_100055EE0();
}

void sub_100055F84(uint64_t a1)
{
  v1 = 742307843 * ((2 * (a1 & 0x782C26B9) - a1 + 131324230) ^ 0x19F15413);
  v2 = *(a1 + 4) - v1;
  if (*(a1 + 24))
  {
    v3 = *(a1 + 8) - v1 == 1257009902;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  __asm { BRAA            X10, X17 }
}

uint64_t sub_100056038(uint64_t a1)
{
  v1 = 1504884919 * (((a1 | 0xCF657709) - (a1 | 0x309A88F6) + 815433974) ^ 0x34A6C012);
  v2 = *(a1 + 8) - v1;
  v3 = *(*(&off_1001252D0 + (v2 ^ 0x9A8)) + 85);
  v4 = *(a1 + 12) + v1 - 2135594557;
  if (v4 < 0x9F998FD0 != v3 > 0x6066702F)
  {
    v5 = v3 > 0x6066702F;
  }

  else
  {
    v5 = v3 - 1617326128 > v4;
  }

  return (*(*(&off_1001252D0 + v2 - 2245) + ((v5 * (((v2 - 320) | 0x24) ^ 0x878)) ^ v2) - 1))();
}

uint64_t sub_100056174(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v3 = *(a1 + 32) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(v2 + 8 * ((v4 * (((v1 + 921) | 0x89) + (v1 ^ 0xFFFFF305))) ^ v1)))();
}

uint64_t sub_1000561C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  v29 = 1504884919 * ((v28 - 144) ^ 0xFBC3B71B);
  *(v28 - 120) = v25 - v29 + 1247;
  *(v28 - 140) = v26 - v29 + (v25 ^ 0xE58F794);
  *(v28 - 136) = v24;
  *(v28 - 128) = &a24;
  v30 = (*(v27 + 8 * (v25 + 2016)))(v28 - 144);
  return sub_100056224(v30);
}

uint64_t sub_100056224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, char *a30, char *a31)
{
  a30 = &a26;
  a31 = &a28;
  *(v34 - 144) = (v33 + 52) ^ (1361651671 * ((2 * ((v34 - 144) & 0x836E950) - (v34 - 144) + 2009667241) ^ 0x3CA2DAD7));
  *(v34 - 136) = a19;
  *(v34 - 128) = &a30;
  (*(v31 + 8 * (v33 + 1848)))(v34 - 144);
  *(v34 - 120) = v33 + 679 + 210068311 * ((((v34 - 144) | 0x9879EFDD) - (v34 - 144) + ((v34 - 144) & 0x67861020)) ^ 0xCF16750A);
  *(v34 - 144) = &a24;
  *(v34 - 136) = &a20;
  *(v34 - 128) = &a30;
  *(v34 - 112) = a19;
  (*(v31 + 8 * (v33 + 1840)))(v34 - 144);
  v35 = a31;
  *(v34 - 136) = v33 - 20 + 435584651 * ((((v34 - 144) | 0x7C94B463) - (v34 - 144) + ((v34 - 144) & 0x836B4B98)) ^ 0x11A6AE35);
  *(v34 - 128) = &a30;
  *(v34 - 120) = v35;
  *(v34 - 144) = &a20;
  *(v34 - 112) = a19;
  *(v34 - 104) = &a20;
  (*(v31 + 8 * (v33 + 1793)))(v34 - 144);
  *(v34 - 120) = v33 - 88 - 675097751 * ((-875653344 - ((v34 - 144) | 0xCBCE9720) + ((v34 - 144) | 0x343168DF)) ^ 0x77714D49);
  *(v34 - 112) = &a20;
  *(v34 - 104) = &a30;
  *(v34 - 144) = a12;
  *(v34 - 136) = &a20;
  *(v34 - 128) = a19;
  (*(v31 + 8 * (v33 ^ 0x8C1)))(v34 - 144);
  *(v34 - 136) = v32;
  *(v34 - 128) = &a30;
  *(v34 - 144) = (v33 + 52) ^ (1361651671 * ((((v34 - 144) | 0xD233CB45) - (v34 - 144) + ((v34 - 144) & 0x2DCC34B8)) ^ 0x9958073B));
  (*(v31 + 8 * (v33 ^ 0x8C8)))(v34 - 144);
  *(v34 - 120) = v33 + 679 + 210068311 * (((v34 - 144) & 0x76050C03 | ~((v34 - 144) | 0x76050C03)) ^ 0xDE95692B);
  *(v34 - 112) = v32;
  *(v34 - 144) = &a24;
  *(v34 - 136) = &a22;
  *(v34 - 128) = &a30;
  (*(v31 + 8 * (v33 ^ 0x8D0)))(v34 - 144);
  v36 = a31;
  *(v34 - 112) = v32;
  *(v34 - 104) = &a22;
  *(v34 - 144) = &a22;
  *(v34 - 136) = v33 - 20 + 435584651 * ((1822931406 - ((v34 - 144) | 0x6CA7B9CE) + ((v34 - 144) | 0x93584631)) ^ 0xFE6A5C67);
  *(v34 - 128) = &a30;
  *(v34 - 120) = v36;
  (*(v31 + 8 * (v33 ^ 0x903)))(v34 - 144);
  *(v34 - 120) = v33 - 88 - 675097751 * ((((v34 - 144) | 0xED475995) + (~(v34 - 144) | 0x12B8A66A)) ^ 0xAE077C02);
  *(v34 - 136) = &a22;
  *(v34 - 128) = v32;
  *(v34 - 144) = a13;
  *(v34 - 112) = &a22;
  *(v34 - 104) = &a30;
  (*(v31 + 8 * (v33 + 1855)))(v34 - 144);
  *(v34 - 144) = v33 + 742307843 * ((((v34 - 144) | 0xD43C994C) - ((v34 - 144) & 0xD43C994C)) ^ 0xCA1E1419) + 241;
  *(v34 - 136) = &a22;
  *(v34 - 128) = &a20;
  (*(v31 + 8 * (v33 ^ 0x92A)))(v34 - 144);
  *(v34 - 144) = &a22;
  *(v34 - 132) = v33 - 742307843 * ((((v34 - 144) | 0x3E6B7C80) - ((v34 - 144) & 0x3E6B7C80)) ^ 0x2049F1D5) - 462;
  v37 = (*(v31 + 8 * (v33 ^ 0x8D2)))(v34 - 144);
  return (*(v31 + 8 * ((1872 * (*(v34 - 136) - 51601823 < (v33 ^ 0x4E8D009Eu))) ^ v33)))(v37);
}

void sub_1000566A8(uint64_t a1)
{
  v1 = *(a1 + 4) - 1504884919 * (((a1 | 0x877798B0) - (a1 & 0x877798B0)) ^ 0x7CB42FAB);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100056870@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  v5 = *(&STACK[0x28C] + a2 + 72);
  v6 = ((2 * a2) & 0x3FABF9D8) + (a2 ^ 0x9FD5FCEF) + v2;
  *(a1 + v6) = (HIBYTE(v5) ^ 0xCE) - ((HIBYTE(v5) << (4 * (v3 ^ 0xDE) - 7)) & 0x40) + 32;
  *(a1 + v6 + 1) = (BYTE2(v5) ^ 0x8E) - ((v5 >> 15) & 0x40) + 32;
  *(a1 + v6 + 2) = (BYTE1(v5) ^ 0x63) - ((2 * (BYTE1(v5) ^ 0x63)) & 0x40) + 32;
  *(a1 + v6 + 3) = v5 ^ 0xBC;
  return (*(v4 + 8 * ((46 * (a2 + 4 >= LODWORD(STACK[0x2E8]))) ^ v3)))();
}

void sub_100056948()
{
  v2 = (((v0 ^ 0xDD310EC1) + 583987519) ^ ((v0 ^ 0x23CA26F0) - 600450800) ^ ((v0 ^ 0x30754BAD) - 812993453)) - 1581141992 + (((LODWORD(STACK[0x2F4]) ^ 0x73126488) - 1930585224) ^ ((LODWORD(STACK[0x2F4]) ^ 0x95811624) + 1786702300) ^ ((((v1 - 1049) | 0xB) ^ 0xD7E2EEDB) + (LODWORD(STACK[0x2F4]) ^ 0x281D1130)));
  v3 = (v2 ^ 0xFA1B063C) & (2 * (v2 & 0xFB5B1720)) ^ v2 & 0xFB5B1720;
  v4 = ((2 * (v2 ^ 0xAE3B2C7C)) ^ 0xAAC076B8) & (v2 ^ 0xAE3B2C7C) ^ (2 * (v2 ^ 0xAE3B2C7C)) & 0x55603B5C;
  v5 = v4 ^ 0x55200944;
  v6 = (v4 ^ 0x403000) & (4 * v3) ^ v3;
  v7 = ((4 * v5) ^ 0x5580ED70) & v5 ^ (4 * v5) & 0x55603B5C;
  v8 = (v7 ^ 0x55002940) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x60120C)) ^ 0x5603B5C0) & (v7 ^ 0x60120C) ^ (16 * (v7 ^ 0x60120C)) & 0x55603B50;
  v10 = v8 ^ 0x55603B5C ^ (v9 ^ 0x54003100) & (v8 << 8);
  LODWORD(STACK[0x2F4]) = v2 ^ (2 * ((v10 << 16) & 0x55600000 ^ v10 ^ ((v10 << 16) ^ 0x3B5C0000) & (((v9 ^ 0x1600A1C) << 8) & 0x55600000 ^ 0x15400000 ^ (((v9 ^ 0x1600A1C) << 8) ^ 0x603B0000) & (v9 ^ 0x1600A1C)))) ^ 0xBD950204;
  JUMPOUT(0x100056B58);
}

uint64_t sub_100057358()
{
  v8 = *v6;
  v9 = 1504884919 * ((2 * ((v7 - 136) & 0x74B48BF8) - (v7 - 136) + 189494273) ^ 0xF088C31A);
  *(v7 - 136) = v9 + v5 + 582806048;
  *(v7 - 132) = v3 + 2450 - v9;
  STACK[0x510] = v8;
  (*(v4 + 8 * (v3 ^ 0xBC0)))(v7 - 136);
  v10 = *v6;
  STACK[0x510] = ((v2 ^ 0xDFDFC73BFF7F7F7FLL) + 0x33AC7FF5F5EFBFEDLL + ((v2 << (((v3 - 41) | 0xAu) + 23)) & (((v3 - 241) | 0xC3u) - 0x40407188010101DDLL))) ^ (210068311 * ((v7 - 136 - 2 * ((v7 - 136) & 0xBF6BBAC30EA5A8E2) - 0x4094453CF15A571ELL) ^ 0x34AAC55959CA3235));
  STACK[0x508] = v10;
  *(v7 - 116) = (v3 + 1330) ^ (210068311 * ((v7 - 136 - 2 * ((v7 - 136) & 0xEA5A8E2) + 245737698) ^ 0x59CA3235));
  (*(v4 + 8 * (v3 ^ 0xBE0)))(v7 - 136);
  v11 = 1504884919 * ((v7 - 136) ^ 0xFBC3B71B);
  STACK[0x510] = *v6;
  *(v7 - 136) = (v0 ^ 0xB6F3FC5B) + ((2 * v0) & 0x6DE7F8B6) + 1807720384 + v11;
  *(v7 - 132) = v3 + 2450 - v11;
  (*(v4 + 8 * (v3 + 2496)))(v7 - 136);
  STACK[0x508] = *v6;
  STACK[0x510] = (210068311 * ((((v7 - 136) | 0x8F519AA96699167ALL) - ((v7 - 136) | 0x70AE65569966E985) + 0x70AE65569966E985) ^ 0x490E53331F68CADLL)) ^ ((v1 ^ 0xB3FEEF75FFEFFF7CLL) + 0x5F8D57BBF57F3FF0 + ((2 * v1) & 0x67FDDEEBFFDFFEF8));
  *(v7 - 116) = (v3 + 1330) ^ (210068311 * ((((v7 - 136) | 0x6699167A) - ((v7 - 136) | 0x9966E985) - 1721308795) ^ 0x31F68CAD));
  (*(v4 + 8 * (v3 ^ 0xBE0)))(v7 - 136);
  v12 = 1504884919 * ((v7 + 1950374672 - 2 * ((v7 - 136) & 0x74405B98)) ^ 0x8F83EC83);
  STACK[0x510] = *v6;
  *(v7 - 136) = v12 + 582196251;
  *(v7 - 132) = v3 + 2450 - v12;
  v13 = (*(v4 + 8 * (v3 ^ 0xBC0)))(v7 - 136);
  return (*(v4 + 8 * ((951 * (*(v7 - 120) == 1958853845)) ^ v3)))(v13);
}

uint64_t sub_1000577F8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, unsigned int a36, uint64_t a37, int a38, uint64_t a39, uint64_t a40)
{
  v42 = __ROR8__((((v41 + 54) ^ 0x56Eu) - 0x460548677504BC73) ^ __ROR8__(v40, 37), 27);
  v43 = ((v42 ^ 0xC40AC973BCFFE509) + 0x3FFD720D04D34C5DLL - ((2 * (v42 ^ 0xC40AC973BCFFE509)) & 0x7FFAE41A09A698BALL)) ^ a7;
  v44 = a8 ^ a35;
  v45 = a8 ^ a35 ^ 0x5E8CC683F9A37215;
  v46 = v42 ^ 0xC40AC973BCFFE509 ^ a3 ^ 0xEA1E1FFEBFD956E8;
  v47 = (v45 + 0x20F4A30618E0E699 - 2 * (v45 & 0x20F4A30618E0E6D9 ^ v44 & 0x40)) ^ a4;
  v48 = v47 ^ 0x629A61E2FE92CDE4;
  v49 = v43 ^ 0x8ABB7B075CE8A96ELL;
  v50 = v43 ^ 0x8ABB7B075CE8A96ELL ^ (v47 ^ 0x629A61E2FE92CDE4) & (v44 ^ 0xA173397C065C8DEALL);
  v51 = (v42 ^ 0xC40AC973BCFFE509) & (a3 ^ 0x15E1E0014026A917);
  v52 = (v47 ^ 0x9D659E1D016D321BLL) & (a3 ^ 0xEA1E1FFEBFD956E8);
  v53 = (v50 ^ v45) & 1;
  if ((v53 & v52) != 0)
  {
    v53 = -v53;
  }

  v54 = (v50 ^ v45) & 0xFFFFFFFFFFFFFFFELL ^ 0x8ABEF87C8808CCB5 ^ (v53 + v52);
  v55 = v51 ^ v48;
  v56 = (v54 ^ (8 * v54) | (v54 >> 61)) ^ (v54 >> 39) ^ ((v54 >> 61) & v54 | (v54 << 25));
  v57 = v43 ^ 0x754484F8A3175691;
  v58 = (v49 | ~v46) - (v57 ^ v46);
  v59 = v57 & v45 ^ v46;
  v60 = v59 ^ 0xB73927F7504FC0F2 ^ ((v59 ^ 0xB73927F7504FC0F2) >> 7);
  v61 = v50 ^ v59 ^ 0xF38BFF733C051F6;
  v62 = v55 ^ 0x92CFC162FD513143 ^ ((v55 ^ 0x92CFC162FD513143) >> 1) ^ (((v55 ^ 0x92CFC162FD513143) >> 6) | ((v55 ^ 0x92CFC162FD513143) << 63)) ^ (v56 + ((v55 ^ 0x92CFC162FD513143) << 58) - 2 * (v56 & ((v55 ^ 0x92CFC162FD513143) << 58)));
  v63 = a3 ^ v58 ^ 0x5B81FDCA944C313FLL ^ v55 ^ ((a3 ^ v58 ^ 0x5B81FDCA944C313FLL ^ v55) >> 10) ^ ((a3 ^ v58 ^ 0x5B81FDCA944C313FLL ^ v55) << 47) ^ ((a3 ^ v58 ^ 0x5B81FDCA944C313FLL ^ v55) >> 17) ^ ((a3 ^ v58 ^ 0x5B81FDCA944C313FLL ^ v55) << 54);
  *(&v64 + 1) = v59 ^ 0xB73927F7504FC0F2;
  *&v64 = v59;
  v65 = ((v59 ^ 0xB73927F7504FC0F2) << 57) ^ ((v59 ^ 0xB73927F7504FC0F2) << 23) ^ __ROR8__((v64 >> 44) & 0xE0000000000FFFFFLL ^ __ROR8__(v60, 3) ^ 0xAFA235EACE6B4032, 61) ^ 0x7D11AF5673019D05;
  v66 = v61 ^ __ROR8__(v61, 19) ^ (v61 << 36) ^ (v61 >> 28) ^ v65;
  v67 = v65 ^ v63;
  v68 = v66 & ~v67;
  v69 = v63 & ~v62;
  v70 = (~(2 * v66) + v66) & v56;
  v71 = v62 & ~v56 ^ v66;
  v72 = v62 ^ (__ROR8__(__ROR8__(v63, 62) ^ 0x25DA1EB034059543, 2) ^ 0x36897853F2FE9AAFLL) & v67;
  if ((v70 & &_mh_execute_header & v67) != 0)
  {
    v73 = -(v70 & &_mh_execute_header);
  }

  else
  {
    v73 = v70 & &_mh_execute_header;
  }

  v74 = (v73 + v67) ^ v70 & 0xFFFFFFFEFFFFFFFFLL;
  v75 = v56 ^ v69 ^ v71 ^ 0x5747C156E755AED6;
  v76 = (v72 ^ 0x6F45779FA95FC03AuLL) >> 1;
  v77 = v74 ^ 0x9A383CF881807545;
  v78 = (v74 ^ 0x9A383CF881807545) << (v76 & 0x17);
  v79 = v71 ^ v74;
  v80 = v79 ^ 0xAC7C0FF4012565E3;
  v81 = v63 ^ 0x28FA59BDD48D0B6 ^ v68 ^ v72;
  v82 = (v79 & 0x8000) == 0;
  v83 = v75 ^ __ROR8__(v75, 61) ^ (v75 << 25) ^ (v75 >> 39);
  v84 = 0x8000;
  if (!v82)
  {
    v84 = -32768;
  }

  v85 = v84 + v80;
  v86 = v81 ^ __ROR8__(v81, 10) ^ (v81 << 47) ^ (v81 >> 17);
  v87 = v77 ^ (v77 >> 7) ^ ((v77 >> 41) | (v77 << 57)) ^ (v78 << (v76 & 0x17 ^ 0x17));
  *(&v88 + 1) = v72 ^ 0x6F45779FA95FC03ALL;
  *&v88 = v72;
  v89 = v76 ^ (v88 >> 6) ^ ((v72 ^ 0x6F45779FA95FC03ALL) & 0x9B6535C14F352826 ^ (v72 << 63) | (v72 ^ 0x6F45779FA95FC03ALL) & 0x649ACA3EB0CAD7D9) ^ v83;
  v90 = v80 ^ (v80 >> 19) ^ (v85 >> 28) ^ ((v85 ^ 0x8000) << 36) ^ ((v85 ^ 0x8000) << 45) ^ v87;
  v91 = v87 ^ v86;
  v92 = v89 ^ 0x1BD15DE7EA57F00 ^ v87 & ~v86;
  v93 = v90 ^ (v89 ^ 0x1BD15DE7EA57F00) & ~v83;
  v94 = v83 & ~v90 ^ v91;
  v95 = v93 + v83 - 2 * (v90 & v83);
  v96 = (v60 >> 3) & 1;
  v97 = v93 ^ 0x6E04C15915AB860ALL ^ v94;
  v98 = v97 >> 19;
  *(&v88 + 1) = (v97 >> 19) & v97 & 0x1A36E0206AEDLL ^ (v97 >> 28) ^ (((v97 >> 19) | v97) & 0xD8807A36E0206AEDLL | (v97 >> 19) & 0x5C91FDF9512 ^ v97 & 0x277F85C91FDF9512);
  *&v88 = (v97 << 36) ^ (v97 << 45) ^ *(&v88 + 1);
  v99 = v95 ^ (v89 ^ 0xFE42EA21815A80FFLL) & v86;
  v100 = v92 ^ v86 ^ ((v91 - ((2 * v91) & 0x4BCF7563A6B4D67ELL) - 0x5A18454E2CA594C1) ^ 0x5A18454E2CA594C0) & v90 ^ 0x7370AC685030CB36;
  v101 = (v99 >> 39) ^ (v99 >> 61) ^ (8 * (v99 ^ 0x3278F838FE43D2BCLL)) ^ (33554433 * (v99 ^ 0x3278F838FE43D2BCLL) - (((v99 ^ 0x3278F838FE43D2BCLL) << 26) & (2 * (v99 ^ 0x3278F838FE43D2BCLL))));
  v102 = v101 ^ 0x64F1F1;
  v103 = v94 ^ 0x26974B18501E2B14 ^ ((v94 ^ 0x26974B18501E2B14uLL) >> 41) ^ ((v94 ^ 0x26974B18501E2B14uLL) >> 7) ^ ((v94 ^ 0x26974B18501E2B14) << 23) ^ ((v94 ^ 0x26974B18501E2B14) << 57);
  v104 = v92 ^ 0x7955EAEC4D48B80CLL ^ (v92 << 63) ^ __ROR8__(v92 ^ 0x7955EAEC4D48B80CLL, 6) ^ ((v92 ^ 0x7955EAEC4D48B80CuLL) >> v96 >> (v96 ^ 1u));
  v105 = v101 ^ 0x64F1F1 ^ v104;
  v106 = (v100 >> 17) ^ __ROR8__(v100, 10) ^ __ROR8__(__ROR8__(v100, 14) & 0xFFFC000000000007 ^ __ROR8__(v100, 61), 3);
  *&v88 = __ROR8__(__ROR8__(v103, 7) ^ __ROR8__(__ROR8__(v88 >> 7, 63) ^ 0x24269CE77F144ED3, 1) ^ 0xD364F86CD0CA304BLL, 57);
  v107 = v103 & ~v106 ^ v105;
  v108 = v88 ^ 0xBBDB0FB7A00B9120 ^ (v101 ^ 0xFFFFFFFFFF9B0E0ELL) & v104;
  v109 = v101 ^ (((v105 ^ 0xCC3347B5E5FE3FB3) & 0x10000000000 | 0x33CCB84A1A01C04CLL) ^ (v105 ^ 0xCC3347B5E5FE3FB3) & 0xFFFFFEFFFFFFFFFFLL) & v106 ^ 0x425764BB58132BD4 ^ v108;
  v110 = (v88 ^ 0x4424F0485FF46EDFLL) & v102 ^ v106 ^ v103;
  v111 = (v110 ^ -v110 ^ (0x70C7A8D3F3643DFDLL - (v110 ^ 0x70C7A8D3F3643DFDLL))) + 0x70C7A8D3F3643DFDLL;
  v112 = v108 ^ 0x97F6A7E5F6E8F58ALL ^ v110;
  v113 = v106 ^ 0x44C9D571A5C4A51CLL ^ v107 ^ (v88 ^ 0xBBDB0FB7A00B9120) & ~(v106 ^ v103);
  v114 = v107 ^ 0xD3DA1E3360BF843ALL ^ ((v107 ^ 0xD3DA1E3360BF843ALL) >> 1) ^ ((v107 ^ 0xD3DA1E3360BF843ALL) >> 6);
  v116 = __ROR8__(__ROR8__(v109, 62) & 0xFFFFFE0000000003 ^ __ROR8__(v109 ^ (8 * v109) ^ ((v109 >> 61) | (v109 << 25)), 23) ^ 0x735302FC48340548, 41);
  v117 = (v111 >> 7) ^ (v111 >> 41) ^ (v111 << 23) ^ (v111 << 57);
  v118 = v117 ^ v111;
  v119 = v112 ^ (v112 >> 28) ^ (v112 >> 19) ^ (v112 << 36) ^ (v112 << 45) ^ v117 ^ v111;
  v120 = v114 & 0xFFFFFFF7FFFFFFFFLL ^ (v107 << 63) ^ (v114 & 0x800000000 | ((v107 ^ 0xD3DA1E3360BF843ALL) << (v98 & 0x12) << (v98 & 0x12 ^ 0x3A))) ^ v116;
  if (v117 == v111)
  {
    v121 = 0;
  }

  else
  {
    v121 = v113 << 47;
  }

  v122 = v116 ^ 0x7E241A02A439A981;
  v115 = (v113 ^ (v113 >> 10) | (v113 << 54)) ^ (v113 << 54) & v113;
  v123 = (v121 ^ v115 | (v113 << 47)) ^ (v115 & (v113 << 47) & 0xFFFF800000000000 | (v113 >> 17));
  v124 = v120 ^ 0x7E241A02A439A981;
  v125 = v123 ^ v118 ^ v122 & ~v119;
  v126 = (~(2 * v122) + v122) & (v120 ^ 0x7E241A02A439A981) ^ v119;
  v127 = v125 ^ v126;
  v128 = v125 ^ v126 ^ 0x93C23431B76D41FLL;
  *(&v129 + 1) = v128;
  *&v129 = v125 ^ v126;
  v130 = v122 ^ 0x6005BE354A5BB0B2 ^ v126 ^ v123 & (v120 ^ 0x81DBE5FD5BC6567ELL);
  v131 = v118 & ~v123 ^ v124;
  v132 = v119 & ~(v123 ^ v118) ^ v123 ^ v131;
  v133 = (v129 >> 62) ^ (4 * (v128 >> 28)) ^ 0x406FF36C296024B3;
  v134 = (v130 << (v118 & 3) << (v118 & 3 ^ 3)) ^ v130 ^ ((v130 >> 39) ^ (v130 >> 61) | (v130 << 25));
  *(&v129 + 1) = v128;
  *&v129 = v127;
  v135 = ((v129 >> 19) ^ __ROR8__(v133, 2) ^ 0xD01BFDFC8E306A42) + 1939274075;
  v136 = v131 ^ 0x6DC4FB0BD4FFFF44 ^ ((v131 ^ 0x6DC4FB0BD4FFFF44) << 58) ^ (((v131 ^ 0x6DC4FB0BD4FFFF44) >> 1) ^ ((v131 ^ 0x6DC4FB0BD4FFFF44) >> 6) | (v131 << 63));
  v137 = v125 ^ 0x2DB5B6AF87F64351 ^ ((v125 ^ 0x2DB5B6AF87F64351) >> 7) ^ ((v125 ^ 0x2DB5B6AF87F64351) << 23) ^ ((v125 ^ 0x2DB5B6AF87F64351) << 57) ^ ((v125 ^ 0x2DB5B6AF87F64351) >> 41);
  v138 = __ROR8__(v132 ^ 0xF374A001D380BDC2, 17) ^ ((v132 ^ 0xF374A001D380BDC2) >> 10) ^ (((v132 ^ 0xF374A001D380BDC2) << 54) | (v132 ^ 0xF374A001D380BDC2) & 0xFFFFFFFFFFFFFFDFLL) ^ (((v132 ^ 0xF374A001D380BDC2) << 54) & (v132 ^ 0xF374A001D380BDC2) | v132 & 0x20);
  v139 = v137 ^ (v128 << 36) ^ (((2 * v135) & 0xFFFFFFFF18D20D4ALL) + (v135 ^ 0xFFFFFFFF8C6906A5)) ^ v136 & ~v134;
  v140 = v134 ^ v136;
  v141 = v137 & ~v138 ^ v140;
  v142 = 2 * (a38 & 1) + (a38 ^ 1u);
  v143 = (8 * (v134 ^ v138 & ~v140 ^ 0x62030E578F798D5ALL ^ v139)) ^ ((v134 ^ v138 & ~v140 ^ 0x62030E578F798D5ALL ^ v139) >> 39) ^ (((v134 ^ v138 & ~v140 ^ 0x62030E578F798D5ALL ^ v139) >> 61) | v134 ^ v138 & ~v140 ^ 0x62030E578F798D5ALL ^ v139);
  *(&v129 + 1) = v141 ^ 0xC39D9869C05A48AELL;
  *&v129 = v141;
  v144 = (v129 >> 6) ^ v141 ^ 0xC39D9869C05A48AELL;
  *(&v129 + 1) = v141;
  *&v129 = v141 ^ 0xC39D9869C05A48AELL;
  return (*(a40 + 8 * (v41 ^ (45 * (a36 > v142)))))(v142, a1, a2, a36, v144 ^ (v129 >> 1), a5, a6, v143, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31);
}

void sub_1000583B0(uint64_t a1, uint64_t a2)
{
  v3 = *(&off_1001252D0 + ((11 * ((qword_10013EA10 + dword_10013EA78) ^ 8)) ^ byte_1000F09C0[byte_1000EC520[(11 * ((qword_10013EA10 + dword_10013EA78) ^ 8))] ^ 0x2B]) + 99);
  v4 = *(v3 - 4);
  v5 = *(&off_1001252D0 + (byte_1000EC72C[(byte_1000E7D7C[(11 * (v4 ^ qword_10013EA10 ^ 8)) - 12] ^ 0x31) - 12] ^ (11 * (v4 ^ qword_10013EA10 ^ 8))) - 209);
  v6 = *v5 - v4 - &v8;
  *(v3 - 4) = 1405565963 * v6 - 0x49B2A3DDF3C140A8;
  *v5 = 1405565963 * (v6 ^ 0xBCA8FC1BD5CAFD08);
  **(a1 + 96) = *(a2 + 16);
  LODWORD(v6) = 210068311 * ((&v10 - 300374605 - 2 * (&v10 & 0xEE18A5B3)) ^ 0xB9773F64);
  v11 = v6 ^ 0x99739F6E;
  v12 = v6 ^ 0xDE7B15BC;
  v10 = v9;
  LODWORD(v5) = 1405565963 * ((*v5 + *(v3 - 4)) ^ 0xD5CAFD08);
  v7 = *(&off_1001252D0 + ((11 * ((qword_10013EA10 - dword_10013EA78) ^ 8)) ^ byte_1000EC620[byte_1000E7C70[(11 * ((qword_10013EA10 - dword_10013EA78) ^ 8))] ^ 0x27]) - 17) - 8;
  (*&v7[8 * (byte_1000F09C0[byte_1000EC528[v5 - 8] ^ 0x2B] ^ v5) + 21240])(&v10);
  __asm { BRAA            X10, X17 }
}

_DWORD *sub_100058710()
{
  *(v1 - 192) = -1197042952 - 1504884919 * (((v1 - 192) & 0xD1B695A4 | ~((v1 - 192) | 0xD1B695A4)) ^ 0xD58ADD40) + v0 + 260;
  (*(v2 + 8 * (v0 ^ 0xBA3)))(v1 - 192);
  result = v4;
  *v4 = v5;
  return result;
}

void sub_100058C1C(int a1@<W8>)
{
  if (v2 < 0)
  {
    v2 = -v2;
  }

  **(v1 + 8) = v2 - ((v3 - 63603958) & (2 * v2)) - 31801518;
  *(v1 + 4) = a1 + 1;
}

uint64_t sub_100058C58(__n128 a1, __n128 a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, uint64_t a17, int a18, int a19, uint64_t a20, uint64_t a21, unsigned int a22, uint64_t a23, uint64_t a24, unsigned int a25, uint64_t a26)
{
  v27.n128_u64[0] = 0x4040404040404040;
  v27.n128_u64[1] = 0x4040404040404040;
  v28.n128_u64[0] = 0x2020202020202020;
  v28.n128_u64[1] = 0x2020202020202020;
  return (*(v26 + 8 * (((((a19 - 623263830) & 0x252643B9 ^ 0xFFFFFCFF) + ((a19 - 1396702358) & 0x533FFFF9)) * (a16 < 0xFFFFFFFE)) ^ a19)))(a22, a25, -70, 850, a26, 0x6A3530AC2C9EABC4, 87097399, 4181838399, a1, a2, a3, v27, v28);
}

void sub_100058D0C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = (*(v4 + 8 * (a4 + 1238)))(3);
  v8 = *(v5 + 8 * (a4 ^ 0x589));
  *v8 = v7;
  (*(v4 + 8 * (a4 + 1326)))();
  v9 = (*(v4 + 8 * (a4 ^ 0xF36)))(66);
  v10 = *(v5 + 8 * (a4 ^ 0x5E0));
  *(v10 - 4) = v9;
  v10 = (v10 - 4);
  (*(v4 + 8 * (a4 + 1326)))();
  v11 = (*(v4 + 8 * (a4 ^ 0xF36)))(2);
  v12 = *(v5 + 8 * (a4 - 1500));
  *(v12 - 4) = v11;
  *v11 = 7196;
  **v10 = 0;
  **(v5 + 8 * (a4 - 1314)) = 0;
  v13 = *(v12 - 4);
  v14 = *v10;
  v15 = *v8;
  v14[64] = 1;
  **(v5 + 8 * (a4 ^ 0x594)) = 51;
  v14[9] = -15;
  v13[1] = 79;
  **(v5 + 8 * (a4 ^ 0x5A6)) = 80;
  **(v5 + 8 * (a4 & 0x9E981AA2)) = -77;
  *v13 = -22;
  v14[11] = 73;
  *v15 = 68;
  v14[20] = -44;
  **(v5 + 8 * (a4 ^ 0x5DD)) = -121;
  v14[36] = -11;
  v14[45] = -113;
  v14[49] = 25;
  *(v15 + 1) = 6695;
  **(v5 + 8 * (a4 - 1438)) = -122;
  **(v5 + 8 * (a4 ^ 0x54D)) = 88;
  v14[26] = -34;
  v14[60] = -5;
  **(v5 + 8 * (a4 - 1492)) = 96;
  **(v5 + 8 * (a4 - 1363)) = 80;
  **(v5 + 8 * (a4 ^ 0x5D5)) = 17;
  **(v5 + 8 * (a4 - 1343)) = 119;
  v14[52] = 47;
  v14[50] = 102;
  v14[59] = -59;
  v14[22] = -36;
  v14[29] = 59;
  v14[27] = 34;
  v14[40] = -80;
  v14[13] = 23;
  **(v5 + 8 * (a4 & 0x64F340BE)) = 99;
  v14[53] = 3;
  **(v5 + 8 * (a4 ^ 0x526)) = -109;
  v14[39] = 54;
  v14[57] = 73;
  **(v5 + 8 * (a4 - 1349)) = 83;
  v14[37] = -52;
  v14[63] = -72;
  v16 = *v10;
  *(v16 + 65) = -85;
  *(v16 + 5) = -14;
  *(v16 + 54) = 32;
  *(v16 + 8) = 16909;
  *(v16 + 28) = -39;
  *(v16 + 47) = -4065;
  *(v16 + 21) = 15;
  *(v16 + 41) = -29527;
  *(v16 + 38) = -121;
  *(v16 + 31) = 8824;
  *(v16 + 10) = -98;
  *(v16 + 25) = 69;
  *(v16 + 7) = 27031;
  *(v16 + 23) = -86;
  *(v16 + 14) = -90;
  *(v16 + 62) = -105;
  *(v16 + 33) = 15089;
  *(v16 + 55) = -30385;
  *(v16 + 46) = -17;
  *(v16 + 4) = -92;
  *(v16 + 15) = 72;
  *(v16 + 51) = -15;
  *(v16 + 12) = -15;
  *(v16 + 9) = -9761;
  *(v16 + 43) = 19744;
  *(v16 + 24) = -72;
  *(v16 + 30) = 36;
  *(v16 + 58) = 113;
  *(v16 + 35) = 52;
  *(v16 + 61) = 73;
  *(v16 + 6) = 45;
  JUMPOUT(0x10005B040);
}

uint64_t sub_10005B2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned int a18, int a19, uint64_t a20, unsigned int a21, unsigned int a22, uint64_t a23)
{
  v29 = ((&a18 + 1831669241 - 2 * (&a18 & 0x6D2D0DF9)) ^ 0x96EEBAE2) * v28;
  a20 = a14;
  a18 = ((2 * v25) & 0xC7E778FE) + ((v27 - 470567171) ^ v25) + 1052762012 + v29;
  a19 = v27 - v29 + 1305;
  (*(v26 + 8 * (v27 + 1351)))(&a18);
  v30 = 742307843 * ((-1459676702 - (&a18 | 0xA8FF19E2) + (&a18 | 0x5700E61D)) ^ 0x49226B48);
  a23 = a14;
  a20 = v23;
  a21 = v27 - 55 - v30;
  a22 = (v24 ^ 0xD7FBDDFD) + ((2 * v24) & 0xAFF7BBFA) - v30 + 1806676976;
  (*(v26 + 8 * (v27 + 1371)))(&a18);
  v31 = 742307843 * ((((&a18 | 0xE27055BE) ^ 0xFFFFFFFE) - (~&a18 | 0x1D8FAA41)) ^ 0x3AD2714);
  a20 = a11;
  a23 = a14;
  a21 = v27 - 55 - v31;
  a22 = (a12 ^ 0x4FAF91ED) + ((2 * a12) & 0x9F5F23DA) - v31 - 201588736;
  v32 = (*(v26 + 8 * (v27 + 1371)))(&a18);
  return (*(v26 + 8 * ((847 * (a18 == 1958853845)) ^ v27)))(v32);
}

uint64_t sub_10005B4CC@<X0>(int a1@<W7>, unint64_t a2@<X8>)
{
  v12 = HIDWORD(a2) + v8 * (*(v11 + 4 * v7) ^ v3) + (*(v9 + 4 * v6) ^ v3);
  *(v9 + 4 * v6) = v12 + v3 - (v4 & (2 * v12));
  return (*(v5 + 8 * (((v7 + 1 == v2) * v10) ^ a1)))();
}

uint64_t sub_10005B7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  *(v64 - 192) = -1197042952 - 1504884919 * ((((v64 - 192) | 0xC7E3DB81) - (v64 - 192) + ((v64 - 192) & 0x381C2478)) ^ 0x3C206C9A) + v63;
  (*(v65 + 8 * (v63 ^ 0x8A7)))(v64 - 192);
  LOBYTE(STACK[0x1804]) = 45 - -41 * ((((2 * (v64 + 64)) | 0xEE) - (v64 + 64) + 9) ^ 0x89);
  *(v64 - 192) = 1361651671 * ((((2 * (v64 - 192)) | 0x695E39EE) - (v64 - 192) - 883891447) ^ 0x7FC4D089) + v63 + 1286;
  *(v64 - 184) = &STACK[0x3F4];
  *(v64 - 168) = &STACK[0x43C];
  (*(a62 + 8 * (v63 ^ 0x91C)))(v64 - 192);
  LODWORD(STACK[0x22C]) = *(v64 - 176);
  return sub_10004F3A8(1958853845, (3 * (v63 ^ 0x240) - 131483179) & 0x7D64DDB);
}

uint64_t sub_10005B8D8@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, int8x16_t a7@<Q0>, int8x8_t a8@<D1>)
{
  v13 = a2 - 8;
  v15.val[0].i64[0] = (v11 + v13 - 1) & a5;
  v15.val[0].i64[1] = (v11 + v13 + 14) & 0xF;
  v15.val[1].i64[0] = (v11 + v13 + 13) & 0xF;
  v15.val[1].i64[1] = (v11 + v13 + 12) & 0xF;
  v15.val[2].i64[0] = (v11 + v13 + 11) & 0xF;
  v15.val[2].i64[1] = (v11 + v13 + 10) & 0xF;
  v15.val[3].i64[0] = (v11 + v13 + 9) & 0xF;
  v15.val[3].i64[1] = (v11 + v13) & 0xF ^ 8;
  *(a3 - 8 + v11) = veor_s8(veor_s8(veor_s8(*(v8 + v15.val[0].i64[0] - 7), *(a4 - 8 + v11)), veor_s8(*(v9 + v15.val[0].i64[0] - 7), *(v10 + v15.val[0].i64[0] - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v15, a7), a8)));
  return (*(v12 + 8 * ((a6 != v13) | (8 * (a6 != v13)) | a1)))();
}

uint64_t sub_10005BF64()
{
  *(v3 - 124) = v2 - 675097751 * ((((v3 - 128) | 0x39079B79) - (v3 - 128) + ((v3 - 128) & 0xC6F86480)) ^ 0x7A47BEEF) + 2008;
  *(v3 - 120) = v0 + 600;
  v4 = (*(v1 + 8 * (v2 + 2542)))(v3 - 128);
  return (*(v1 + 8 * ((60 * (*(v3 - 128) != (((v2 + 1108346699) | 0x8018300) ^ 0x3ED037F1))) ^ v2)))(v4);
}

void sub_10005C028(int a1@<W2>, int a2@<W8>)
{
  LODWORD(STACK[0x324]) = a2;
  LODWORD(STACK[0x2AC]) = a1;
  LODWORD(STACK[0x40C]) = v3;
  LODWORD(STACK[0x38C]) = v2;
  LODWORD(STACK[0x2D8]) = 2138551982;
  JUMPOUT(0x10003A2F0);
}

void sub_10005C0B0()
{
  v5 = (v1 + 233945889) & 0xFFFFD4EE;
  *(v0 + 1224) = v3;
  *(v4 - 128) = v5 + 1037613739 * ((((v4 - 136) | 0xF3EB641) - ((v4 - 136) & 0xF3EB641)) ^ 0xDE3C9B3E) - 776332632;
  (*(v2 + 8 * (v5 ^ 0xDF19E45)))(v4 - 136);
  JUMPOUT(0x100019978);
}

void sub_10005C1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  *v10 = &a10;
  *(v13 - 120) = v12 + 844 + 1037613739 * ((((v13 - 128) | 0x1A2F40B3) - ((v13 - 128) & 0x1A2F40B3)) ^ 0xCB2D6DCC) - 542398003;
  (*(v11 + 8 * (v12 + 2102)))(v13 - 128);
  sub_100026B38();
}

void sub_10005C580(uint64_t a1)
{
  v2 = *(v1 + 8);
  *a1 = 0;
  *(a1 + 8) = 0x4AEC72EE4AEC72EELL;
  *(a1 + 16) = 0x1B39ED2A3F90D97FLL;
  *(a1 + 24) = 1958853845;
  *v2 = a1;
  JUMPOUT(0x10003BE5CLL);
}

uint64_t sub_10005C5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, unsigned int a19)
{
  v22 = a19 < a18;
  if (v22 == v19 > 0xF7BF11C5)
  {
    v22 = v19 + ((10 * (v20 ^ 0x21D)) ^ 0x840EE08) < a19;
  }

  return (*(v21 + 8 * ((135 * !v22) ^ v20)))();
}

uint64_t sub_10005FA3C@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, int a4@<W3>, unsigned int a5@<W8>)
{
  v11 = a1 < a3;
  *(a2 + a5) = *(v10 + v5) - ((((v6 + 24) | 2) + 14) & (2 * *(v10 + v5))) + 32;
  if (v11 == v5 + 1 > v7)
  {
    v11 = v8 + v5 + 51 < a1;
  }

  return (*(v9 + 8 * ((!v11 * a4) ^ v6)))();
}

uint64_t sub_10005FBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x304]) = 1735272125;
  a69 = 128;
  v72 = STACK[0x308] + 800;
  v73 = STACK[0x2F8];
  v74 = STACK[0x318];
  v75 = 1785193651 * (((((v70 - 192) | 0x693AEC0A) ^ 0xFFFFFFFE) - (~(v70 - 192) | 0x96C513F5)) ^ 0x60E4B7D9);
  *(v70 - 144) = STACK[0x308] + 528;
  *(v70 - 136) = 0;
  *(v70 - 168) = (v69 - 584) ^ v75;
  *(v70 - 160) = v74;
  *(v70 - 152) = v72;
  *(v70 - 192) = v73;
  *(v70 - 184) = 0;
  *(v70 - 128) = v75 + 44276340;
  *(v70 - 176) = &a69;
  v76 = (*(v71 + 8 * (v69 + 665)))(v70 - 192);
  return (*(a62 + 8 * (((*(v70 - 164) == 1958853845) * ((v69 - 1652) ^ 0x25F ^ (3 * (v69 ^ 0x8FE)))) ^ v69)))(v76);
}

uint64_t sub_10005FC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unint64_t a25)
{
  v29 = a25;
  STACK[0x518] = &a16;
  STACK[0x508] = v29;
  *(v28 - 112) = (v25 + 146) ^ (843532609 * ((((v28 - 136) | 0xC435245) + (~(v28 - 136) | 0xF3BCADBA)) ^ 0x500E06C1));
  (*(v26 + 8 * (v25 + 2475)))(v28 - 136);
  STACK[0x510] = a25;
  *(v28 - 136) = v25 + 843532609 * ((((v28 - 136) | 0x4A99AF11) - ((v28 - 136) & 0x4A99AF11)) ^ 0x16D4FB94) - 8;
  v30 = (*(v26 + 8 * (v25 + 2483)))(v28 - 136);
  return (*(v26 + 8 * (((*(v28 - 120) == v27) * (((v25 + 151064479) | 0x4F08442) ^ 0xDF1920A)) | v25)))(v30);
}

uint64_t sub_10005FDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v18 - 112) = (v13 + 95) ^ (((v18 - 128) ^ v15) * v17);
  *(v18 - 120) = a12;
  *(v18 - 104) = &a13;
  v19 = (*(v14 + 8 * (v13 + 1648)))(v18 - 128);
  return (*(v14 + 8 * ((13 * (*(v18 - 128) != ((v13 + 13) ^ 0x78F ^ (v16 - 767)))) ^ v13)))(v19);
}

uint64_t sub_10005FE44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v14 = ((v5 + (v12 ^ v9) - 1102) ^ 0xFE1ABF52) + v7 + a3 * (*(*(v8 + 8) + a2) ^ v5);
  *(v13 + 4 * v11) = v14 + v5 - (v6 & (2 * v14));
  return (*(v4 + 8 * (v12 ^ ((a4 != 0) * v10))))();
}

uint64_t sub_10005FEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int *a17, unsigned int a18)
{
  a10 = 0;
  a17 = &a10;
  a15 = a12;
  a18 = (v18 - 1409) ^ (843532609 * (&a15 ^ 0x5C4D5485));
  (*(v20 + 8 * (v18 ^ 0xDA8)))(&a15);
  a18 = (v18 - 1409) ^ (843532609 * ((2 * (&a15 & 0x41A31B68) - &a15 + 1046275222) ^ 0x6211B013));
  a17 = &a11;
  a15 = a12;
  (*(v20 + 8 * (v18 + 920)))(&a15);
  LODWORD(a15) = v18 + 843532609 * ((-1096417968 - (&a15 | 0xBEA5FD50) + (&a15 | 0x415A02AF)) ^ 0x1D17562A) - 1563;
  a16 = a12;
  v21 = (*(v20 + 8 * (v18 ^ 0xDA0)))(&a15);
  return (*(v20 + 8 * ((3448 * (a17 == v19 + v18 - 1069 - 751)) ^ v18)))(v21);
}

uint64_t sub_100060148@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  a3 = v6;
  a4 = v8;
  a6 = v8;
  a5 = (v9 - 513) ^ ((&a3 ^ 0xE6A8AC10) * v7);
  v10 = (*(a1 + 8 * (v9 + 2084)))(&a3);
  return sub_100060184(v10);
}

void sub_1000601AC()
{
  v1 = (v0 + 908);
  vld1q_dup_f32(v1);
  JUMPOUT(0x1000601C4);
}

uint64_t sub_100060274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v64 = (*(a6 + 8 * (v63 + 2371)))();
  LODWORD(STACK[0x488]) = v62;
  return (*(a62 + 8 * (((v62 == (v63 ^ 0xA3) + 1958853563) * (((v63 - 178535518) & 0xAA43BBE) + 2158)) ^ v63)))(v64);
}

uint64_t sub_1000602DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, unsigned int a16, char *a17, int a18)
{
  a16 = (50899313 * ((2 * (&a16 & 0x55BCF310) - &a16 - 1438446356) ^ 0x80882696)) ^ 0x78C;
  a17 = &a14;
  v21 = (*(v20 + 22360))(&a16);
  return (*(v20 + 8 * ((636 * (a18 == v19)) ^ v18)))(v21);
}

uint64_t sub_100060364()
{
  v4 = v3 ^ 0x82C;
  v5 = v1 + 656666035;
  v6 = v5 < 0x2D84E208;
  v7 = v2 + 763683336 < v5;
  if (v2 > 0xD27B1DF7 != v6)
  {
    v7 = v6;
  }

  return (*(v0 + 8 * (((((v4 + 940) ^ 0xCD8) - 2413) * v7) ^ v4)))();
}

uint64_t sub_1000603DC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, _DWORD **a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v36 = a1 - 73660849;
  v37 = a1 - 1738270227;
  v38 = v37 ^ 0x9864104F;
  v39 = v37 & 0x679BEF35;
  v40 = *a22;
  if (((v38 - 2462) & *a22) != v39 - 2340 || (v41 = *(v34 + 8 * (v36 ^ 0xFB9C06EC)), v43 = *(v41 - 4), v42 = (v41 - 4), v43))
  {
    *a7 = 1958811796;
    JUMPOUT(0x10000A9C8);
  }

  *v42 = v40;
  **(v34 + 8 * (v39 ^ 0x928)) = 255;
  *v40 |= ~v40[*v40 & 0x3ELL] << 16;
  v40[4] |= ~v40[v40[4] & (v33 + ((v39 - v33 - 1471644947) & 0x57B77BEF) + 61)] << 16;
  v40[8] |= ~v40[v40[8] & 0x3ELL] << 16;
  v40[12] |= ~v40[v40[12] & 0x3ELL] << 16;
  v40[16] |= ~v40[v40[16] & 0x3ELL] << 16;
  v40[20] |= ~v40[v40[20] & 0x3ELL] << 16;
  v40[24] |= ~v40[v40[24] & 0x3ELL] << 16;
  v40[28] |= ~v40[v40[28] & 0x3ELL] << 16;
  v40[32] |= ~v40[v40[32] & 0x3ELL] << 16;
  v40[36] |= ~v40[v40[36] & 0x3ELL] << 16;
  v40[40] |= ~v40[v40[40] & 0x3ELL] << 16;
  v40[44] |= ~v40[v40[44] & 0x3ELL] << 16;
  v40[48] |= ~v40[v40[48] & 0x3ELL] << 16;
  v40[52] |= ~v40[v40[52] & 0x3ELL] << 16;
  v40[56] |= ~v40[v40[56] & 0x3ELL] << 16;
  v40[60] |= ~v40[v40[60] & 0x3ELL] << 16;
  *(v35 - 136) = *(v34 + 8 * (v39 - 2206));
  v44 = (v39 - 1401) ^ (1037613739 * ((v35 - 144) ^ 0xD1022D7F));
  *(v35 - 144) = v44;
  (*(a33 + 8 * (v39 ^ 0x383)))(v35 - 144);
  v45 = *(v34 + 8 * (v39 - 2122));
  *(v35 - 144) = v44;
  *(v35 - 136) = v45 - 4;
  v46 = (*(a33 + 8 * (v39 + 387)))(v35 - 144);
  return (*(a33 + 8 * ((895 * (*(v35 - 140) == 0)) ^ v39)))(v46);
}

void sub_10006077C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, int a42)
{
  v42 = STACK[0x450];
  LODWORD(STACK[0x424]) = 1;
  STACK[0x3B0] = v42;
  LODWORD(STACK[0x224]) = a42;
  STACK[0x200] = a24;
  LODWORD(STACK[0x2BC]) = 1609767892;
  JUMPOUT(0x10001A104);
}

void sub_100060974(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  a3 = a1;
  a6 = v8;
  a5 = (v7 - 1061) ^ (143681137 * (&a3 ^ 0xE6A8AC10));
  (*(v6 + 8 * (v7 ^ 0xE00)))(&a3);
  JUMPOUT(0x100017268);
}

uint64_t sub_1000609BC()
{
  v4 = v2 + 1601699638 > (v0 + 1723047727);
  if ((v0 + 1723047727) < 0xB4AC9DBF != (v2 + 1601699638) < 0xB4AC9DBF)
  {
    v4 = (v2 + 1601699638) < 0xB4AC9DBF;
  }

  return (*(v1 + 8 * (((4 * ((v4 ^ (v3 + 104)) & 1)) & 0xEF | (16 * ((v4 ^ (v3 + 104)) & 1))) ^ v3)))();
}

uint64_t sub_100060A58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, uint64_t a17, int a18)
{
  v25 = &a18 + 6 * v20;
  v25[2] = v21;
  v25[3] = v22;
  *(v25 + 2) = a14;
  v25[6] = a16;
  a18 = a9 - 175 + v19 + (((a9 + 1217676451) | 0x6A1007) ^ (v24 - 427));
  return (*(v23 + 8 * (a9 ^ (1479 * (v18 + a3 < a8)))))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_100060C48@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, unsigned int a5@<W4>, int a6@<W5>, unsigned int a7@<W8>, uint64_t a8, int a9, int a10)
{
  v18 = (((a10 ^ a2) + a3) ^ ((a10 ^ v16) + a1) ^ (((v11 + v12) & v13) + v15 + (a10 ^ v14))) + a4;
  v19 = v18 < a7;
  v20 = v10 + a7 < v18;
  if (v10 > a5 != v19)
  {
    v20 = v19;
  }

  return (*(v17 + 8 * ((!v20 * a6) ^ v11)))();
}

uint64_t sub_100060CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 + (v3 + 1371) - 2609;
  *(a1 + v5) = *(a2 + v5);
  return (*(v4 + 8 * ((52 * (v5 == 0)) ^ v3)))();
}

uint64_t sub_100060DB8(__n128 a1, uint64_t a2, int a3)
{
  v5[-1] = a1;
  *v5 = a1;
  return (*(v6 + 8 * (((v4 != 0) * a3) ^ v3)))();
}

uint64_t sub_1000611E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  (*(v32 + 8 * (v31 + 370422657)))(a18 + a19, 0x100004077774924);
  v34 = (*(v32 + 21840))();
  *v33 = v34;
  return sub_100061254(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v30, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_100061328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = v63 - 1126;
  v68 = 675097751 * ((((2 * (v65 - 192)) | 0xAE077696) - (v65 - 192) + 687621301) ^ 0x94439EDD);
  *(v65 - 192) = &STACK[0x37C];
  *(v65 - 184) = &STACK[0x328];
  *(v65 - 168) = (v64 ^ 0x7FEF75EA) - v68 + ((2 * v64) & 0xFFDEEBD4) + ((v63 + 1776058521) & 0x96237F66) - 151983912;
  *(v65 - 164) = v63 - 1126 - v68 + 425;
  *(v65 - 176) = a20;
  *(v65 - 156) = a19 - v68 + 959567999;
  v69 = (*(v66 + 8 * (v63 + 1163)))(v65 - 192);
  v70 = *(v65 - 160);
  LODWORD(STACK[0x22C]) = v70;
  return (*(a63 + 8 * ((30 * (v70 != 6 * (v67 ^ 0x22F) + 1958853563)) | v67)))(v69);
}

void sub_100061444(uint64_t a1)
{
  v1 = *a1 + 675097751 * (((a1 | 0x2637FD2A) - a1 + (a1 & 0xD9C802D5)) ^ 0x6577D8BC);
  v2 = *(a1 + 8);
  v4 = v1 + 143681137 * ((((2 * &v4) | 0x8FA17B56) - &v4 + 942621269) ^ 0x217811BB) + 16;
  v5 = v2;
  v3 = *(&off_1001252D0 + v1 - 606) - 8;
  (*&v3[8 * (v1 ^ 0x9D9)])(&v4);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10006158C@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  v9 = a2 - 1257009903;
  v10 = a2 - 1;
  v11 = *(v4 + v9);
  if (v11 == 32)
  {
    __asm { BRAA            X10, X17 }
  }

  if (v11 == 160)
  {
    v12 = 1958853845;
    v13 = *v2;
    v14 = (*(v2 + 16) + v3);
    *result = v4;
    *(result + 8) = v5;
    *(result + 12) = v10;
    if (v14 == 83)
    {
      v15 = 456781097;
    }

    else
    {
      v15 = 456781096;
    }

    *(result + 16) = 1066457471;
    *(result + 20) = v15;
    *(result + 24) = 1958853845;
    *v13 = result;
  }

  else
  {
    result = (*(v8 + 8 * (v7 ^ 0xF61)))();
    v12 = 1958811822;
  }

  *(v2 + 12) = v12;
  return result;
}

uint64_t sub_100061660@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unsigned int a29)
{
  v33 = *(&a17 + a2 + 72);
  v34 = ((((v30 - 75733555) & 0x7B540D37) + 50324676) ^ a2) + ((2 * a2) & 0xFCA7D3D0) + v29;
  *(a1 + v34) = v33 ^ 0xBC;
  *(a1 + v34 + 1) = (BYTE1(v33) ^ 0x63) - ((2 * (BYTE1(v33) ^ 0x63)) & 0x40) + 32;
  *(a1 + v34 + 2) = (BYTE2(v33) ^ 0x8E) + (~(v33 >> 15) | 0xBF) + 33;
  *(a1 + v34 + 3) = (HIBYTE(v33) ^ 0xCE) - ((v33 >> 23) & 0x40) + 32;
  return (*(v32 + 8 * (((a2 + 4 < a29) * v31) ^ v30)))();
}

uint64_t sub_100061874(uint64_t result)
{
  v1 = 210068311 * ((result - 2 * (result & 0x23CCF62940C06325) + 0x23CCF62940C06325) ^ 0xA80D89B317AFF9F2);
  v2 = *(result + 8) - v1;
  v3 = *(result + 24) + v1;
  v4 = v2 == v3;
  v5 = v2 > v3;
  v6 = v4;
  if ((*(result + 20) ^ v1))
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v4 = v7 == 0;
  v8 = 36;
  if (!v4)
  {
    v8 = 32;
  }

  *(result + 4) = (*(result + v8) + v1) ^ (*(result + 16) + v1);
  return result;
}

uint64_t sub_100061904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16)
{
  a16 = a10;
  v22 = 742307843 * (&a12 ^ 0x1E228D55);
  a14 = v21 - v22 - 543;
  a15 = 1135317505 - v22;
  a13 = v18;
  (*(v19 + 8 * (v21 + 883)))(&a12);
  a16 = a10;
  a13 = v16;
  a14 = v21 - v22 - 543;
  a15 = ((2 * v17) & 0xD757AFDA) - v22 + ((((v21 - 15758) & 0xA778BFF3) - 1003270627) ^ v17) - 671106560;
  v23 = (*(v19 + 8 * (v21 ^ 0xDB7u)))(&a12);
  return (*(v19 + 8 * (((a12 == v20) * ((v21 - 87) ^ 0x9AC)) ^ v21)))(v23);
}

uint64_t sub_100061A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (v3 ^ 0xFFFFFFFFFFFFF8CELL ^ v4 ^ 0xF3Cu) + v2;
  *(a1 - 7 + v6) = *(a2 - 7 + v6);
  return (*(v5 + 8 * ((593 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

void sub_100061AA4(uint64_t a1)
{
  v1 = 143681137 * (a1 ^ 0xE6A8AC10);
  v2 = *(a1 + 4) - v1;
  v3 = *(a1 + 32) - v1;
  v4 = (v3 & 0x30000000) == 0x20000000;
  if ((v3 & 0x3F000000) == 0)
  {
    v4 = 1;
  }

  __asm { BRAA            X10, X17 }
}

uint64_t sub_100061B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v14 = (v9 ^ 0xFE1ABF52) + v11;
  *(v12 + 4 * v13) = v14 + v9 - ((v14 << (a8 - 13)) & v10);
  return (*(v8 + 8 * (((HIDWORD(v14) == 0) * (a8 ^ a7)) ^ a8)))(a1, a2, (a8 + 182));
}

uint64_t sub_100061CAC(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 24);
  return 0;
}

uint64_t sub_100061CC4()
{
  STACK[0x2C0] = 0;
  STACK[0x2A8] = (v5 + 609797);
  STACK[0x2B0] = v2;
  STACK[0x2B8] = v1;
  LODWORD(STACK[0x2C0]) = v0;
  *(v6 - 132) = v4 + 1504884919 * ((((v6 - 136) | 0xAD0BFDFB) + (~(v6 - 136) | 0x52F40204)) ^ 0x56C84AE1) + 1796;
  v7 = (*(v3 + 8 * (v4 ^ 0xBCF)))(v6 - 136);
  return (*(v3 + 8 * (((*(v6 - 136) == 1958853845) * (((v4 + 770948580) & 0xDFFDD5FA) - 233935541)) ^ v4)))(v7);
}

void sub_100061DA0(uint64_t a1)
{
  v1 = *(a1 + 16) - 1785193651 * ((a1 + 1737589433 - 2 * (a1 & 0x679182B9)) ^ 0x91B02695);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_100061F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, unsigned int a15, unsigned int a16, int a17, uint64_t a18, char *a19)
{
  v22 = 1785193651 * ((2 * (&a14 & 0x56F480D0) - &a14 + 688619304) ^ 0xDF2ADB04);
  a18 = a10;
  a19 = &a12;
  a16 = v22 - 929753733;
  a17 = (v21 ^ 0x2A) - v22 - 2013067497;
  a15 = v22 ^ 0x979A43DB;
  v23 = (*(v19 + 8 * ((v21 ^ 0x2Au) + 1848)))(&a14);
  return (*(v19 + 8 * ((1625 * (a14 == (((v21 ^ 0x7AD) + 529) ^ (v20 - 567)))) ^ v21 ^ 0x2Au)))(v23);
}

uint64_t sub_100061FE0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  v11 = (v10 - 32);
  v12 = (a3 - 32);
  v6 = *v11;
  *(v12 - 1) = *(v11 - 1);
  *v12 = v6;
  return (*(v8 + 8 * (((v9 == 32) * (((a4 + 201) | a5) ^ a6)) ^ a4)))();
}

uint64_t sub_100062010@<X0>(uint64_t a1@<X8>)
{
  *(*v7 + a1) = v4;
  v9 = v6 != (v2 & v3 ^ v5) + a1;
  return (*(v8 + 8 * ((v9 | (v9 << 7)) ^ v1)))();
}

uint64_t sub_100062054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v18 = a12 < 0xAA16828;
  if (v18 == v15 > 0xF55E97D7)
  {
    v18 = v15 + 178350120 < a12;
  }

  return (*(v17 + 8 * ((v18 * ((v16 ^ 0x3BA) - 27)) ^ v16)))(a12, 1850, a3, &STACK[0x28C], a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_1000620E0@<X0>(int a1@<W8>)
{
  v4 = a1 - 449070954;
  *v6 = v8;
  v11 = v7;
  v10 = v2 - ((-1617611354 - (&v10 | 0x9F9535A6) + (&v10 | 0x606ACA59)) ^ 0x86C26649) * v1 + a1 - 449070954;
  (*(v3 + 8 * ((a1 - 449070954) ^ 0xE53BB501)))(&v10);
  v10 = v2 - ((((&v10 | 0x3999FD7A) ^ 0xFFFFFFFE) - (~&v10 | 0xC6660285)) ^ 0x20CEAE95) * v1 + v4;
  v11 = v9;
  (*(v3 + 8 * (v4 & 0x2404AFE)))(&v10);
  return 0;
}

uint64_t sub_100062220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, unsigned int a37)
{
  v42 = *(&a25 + v37 + 72);
  v43 = ((2 * v37) & 0xFCE76BD8) + (v37 ^ 0x7E73B5EF) + v38;
  *(v40 + v43) = v42 ^ 0xBC;
  *(v40 + v43 + 1) = (((v39 - 114) | 0x28) ^ BYTE1(v42) ^ 0x8F) - ((2 * (((v39 - 114) | 0x28) ^ BYTE1(v42))) & 0x40) + 32;
  *(v40 + v43 + 2) = (BYTE2(v42) ^ 0x8E) + (~(v42 >> 15) | 0xBF) + 33;
  *(v40 + v43 + 3) = (HIBYTE(v42) ^ 0xCE) - ((v42 >> 23) & 0x40) + 32;
  return (*(v41 + 8 * ((123 * (v37 + 4 < a37)) ^ v39)))();
}

uint64_t sub_10006232C@<X0>(int a1@<W0>, int a2@<W5>, int a3@<W6>, uint64_t a4@<X8>)
{
  v11 = *(a4 + v5 + 72);
  v12 = (a3 & (2 * v5)) + (v5 ^ a2) + a1;
  *(v7 + v12) = v11 ^ 0xBC;
  *(v7 + v12 + 1) = ((v11 >> (v4 - 18)) ^ 0x63) - ((2 * ((v11 >> (v4 - 18)) ^ 0x63)) & 0x40) + 32;
  *(v7 + v12 + 2) = (BYTE2(v11) ^ 0x8E) + (v8 ^ (v11 >> 15) | 0xBF) + 33;
  *(v7 + v12 + 3) = (HIBYTE(v11) ^ 0xCE) - ((v11 >> 23) & 0x40) + 32;
  return (*(v10 + 8 * (((v5 + 4 < *(a4 + 92)) * v9) ^ v6)))();
}

uint64_t sub_100062404(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, char a35)
{
  if (a35 == 2)
  {
    v38 = a34 != ((v36 - 2111586029) & 0x2883BE7) - 546;
    return (*(v35 + 8 * (((2 * v38) | (8 * v38)) ^ (v36 + a3))))(a10);
  }

  else
  {
    if (a35 != 1)
    {
      JUMPOUT(0x1000624FCLL);
    }

    return (*(v35 + 8 * ((1585 * (a34 != 0)) ^ (v36 + a3))))(a10);
  }
}

void sub_100062590(uint64_t a1@<X8>, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v8 = 435584651 * ((&a3 - 652839536 - 2 * (&a3 & 0xD9167590)) ^ 0xB4246FC6);
  a5 = v5;
  a3 = v7 - v8 + 969;
  a4 = v8 - v6 - (((v7 + 38) ^ 0x62C9FA42) & (1925116670 - 2 * v6)) + 717518298;
  (*(a1 + 8 * (v7 ^ 0x83A)))(&a3);
  JUMPOUT(0x1000204A0);
}

uint64_t sub_1000629B8()
{
  v4 = ((v1 - 2300) | 0x181) + 2272 - v0 - 1150349454;
  if ((64 - v2) >> 32)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 >= 64 - v2;
  }

  v6 = v5;
  return (*(v3 + 8 * ((26 * v6) ^ v1)))();
}

uint64_t sub_100062A0C(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, uint64_t a7, int a8)
{
  v19 = (((((a8 - 1600) | a3) ^ a5) + (a4 ^ 0xB5BCFA4E)) ^ ((a4 ^ 0xC36A2280) + 1016454528) ^ (((((a8 - 1600) ^ a3) + v11) ^ a4) + a6)) + v10;
  v20 = (((v18 ^ v12) + v13) ^ ((v18 ^ v14) + v15) ^ ((v18 ^ v16) + v17)) + v10;
  v21 = (v20 < v9) ^ (v19 < v9);
  v22 = v19 < v20;
  if (v21)
  {
    v22 = v20 < v9;
  }

  return (*(v8 + 8 * ((2 * v22) | (32 * v22) | a8)))();
}

uint64_t sub_100062BF0@<X0>(int a1@<W5>, int a2@<W6>, uint64_t a3@<X8>)
{
  STACK[0x3D0] = *(v7 + 8 * v4);
  if (a3)
  {
    v8 = v3 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8;
  return (*(v7 + 8 * ((v9 * (((v5 + a1) & a2) + (v5 ^ v6))) ^ v5)))();
}

uint64_t sub_100062D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13)
{
  a13 = 1504884919 * (((&a12 | 0x87AF6086) - &a12 + (&a12 & 0x78509F78)) ^ 0x7C6CD79D) + 1212455568;
  v14 = (*(v13 + 22208))(&a12);
  return (*(v13 + 8 * ((15 * (a12 == 1958853845)) ^ 0x496)))(v14);
}

uint64_t sub_10006313C()
{
  v4 = 64 - (((2 * (((v1 + 1179779963) | 0xA400CC) ^ (v3 - 65))) ^ 0x2A4A6258u) + v0);
  v5 = -709518039 - v0;
  if (HIDWORD(v4))
  {
    v6 = 0;
  }

  else
  {
    v6 = v5 >= v4;
  }

  v7 = !v6;
  return (*(v2 + 8 * ((109 * v7) ^ v1)))();
}

_BYTE *sub_1000631B4(_BYTE *result, unsigned int a2, unint64_t a3)
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

void sub_10006336C(id a1)
{
  qword_10013EB98 = objc_alloc_init(BLRestoreManager);

  _objc_release_x1();
}

void sub_1000638BC(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = BLServiceLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "[Restore-Mgr] Error updating policy for restore downloads:  %@", &v4, 0xCu);
    }
  }
}

id sub_100063C58(uint64_t a1)
{
  v2 = BLServiceLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Restore-Mgr] Received notification of restore cellular access change", v4, 2u);
  }

  return [*(a1 + 32) dq_fetchRestoreCellularAccess];
}

void sub_10006415C(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = *(a1 + 32);
  v10 = *(v9 + 16);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10006422C;
  v13[3] = &unk_10011D078;
  v14 = v7;
  v15 = v9;
  v16 = v8;
  v17 = a3;
  v11 = v8;
  v12 = v7;
  dispatch_async(v10, v13);
}

void sub_10006422C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && ([*(*(a1 + 40) + 40) isEqualToString:v2] & 1) != 0)
  {
    goto LABEL_25;
  }

  if (*(a1 + 48))
  {
    v3 = BLServiceNotificationLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 48);
      *v14 = 138412290;
      *&v14[4] = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Encountered error while retrieving push notification environment from bag:  %@", v14, 0xCu);
    }
  }

  if (*(a1 + 56) == 1)
  {
    v5 = BLServiceNotificationLog();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    *v14 = 138543362;
    *&v14[4] = v2;
    v6 = "Using default environment: %{public}@";
    goto LABEL_16;
  }

  if (v2)
  {
    v7 = BLServiceNotificationLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 138543362;
      *&v14[4] = v2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Using environment provided by bag: %{public}@", v14, 0xCu);
    }

LABEL_18:
    if ([APSConnection isValidEnvironment:v2, *v14])
    {
      objc_storeStrong((*(a1 + 40) + 40), v2);
      v8 = [[BLNotificationConnection alloc] initWithEnvironment:v2 queue:*(*(a1 + 40) + 16)];
      v9 = *(a1 + 40);
      v10 = *(v9 + 32);
      *(v9 + 32) = v8;

      [*(*(a1 + 40) + 32) setDelegate:?];
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  v2 = APSEnvironmentProduction;
  v5 = BLServiceNotificationLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 138543362;
    *&v14[4] = v2;
    v6 = "Using hardcoded environment: %{public}@";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, v14, 0xCu);
  }

LABEL_17:

  if (v2)
  {
    goto LABEL_18;
  }

LABEL_20:
  v11 = BLServiceNotificationLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = @"using existing connection";
    v13 = *(a1 + 48);
    if (!*(*(a1 + 40) + 32))
    {
      v12 = @"and no other connection is available";
    }

    *v14 = 138543618;
    *&v14[4] = v12;
    *&v14[12] = 2112;
    *&v14[14] = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Environment is invalid, %{public}@. Error:  %@", v14, 0x16u);
  }

LABEL_25:
}

void sub_100064630(uint64_t a1)
{
  v2 = BLServiceNotificationLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138543618;
    v18 = v3;
    v19 = 2114;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Connection: %{public}@ received incomming message: %{public}@", buf, 0x16u);
  }

  if ([*(a1 + 40) actionType] == 2)
  {
    [*(a1 + 48) _handleCheckDownloadQueueMessage:*(a1 + 40)];
  }

  else
  {
    v5 = [[_BLNotificationAllowedType alloc] initWithNotificationType:1 notificationReason:@"preorder-book-available" notificationSubtype:@"preOrderBook" userDefaultsKey:@"BLPreOrderBookNotificationContentAdamIdUserDefaultsKey"];
    v6 = [[_BLNotificationAllowedType alloc] initWithNotificationType:2 notificationReason:@"preorder-audiobook-available" notificationSubtype:@"preOrderAudiobook" userDefaultsKey:@"BLPreOrderAudiobookNotificationContentAdamIdUserDefaultsKey", v5];
    v16[1] = v6;
    v7 = [[_BLNotificationAllowedType alloc] initWithNotificationType:1 notificationReason:@"new-book-series" notificationSubtype:@"newBookSeries" userDefaultsKey:@"BLNewBookInSeriesNotificationContentAdamIdUserDefaultsKey"];
    v16[2] = v7;
    v8 = [[_BLNotificationAllowedType alloc] initWithNotificationType:1 notificationReason:@"new-manga-series" notificationSubtype:@"newMangaSeries" userDefaultsKey:@"BLNewInMangaNotificationContentAdamIdUserDefaultsKey"];
    v16[3] = v8;
    v9 = [NSArray arrayWithObjects:v16 count:4];

    v10 = sub_1000CB09C(*(a1 + 48), *(a1 + 40), v9);
    if (v10)
    {
      [*(a1 + 48) _handleNotification:*(a1 + 40) notificationType:v10];
    }

    v11 = *(*(a1 + 48) + 24);
    v12 = [*(a1 + 40) userInfo];
    LODWORD(v11) = [v11 shouldHandleNotification:v12];

    if (v11)
    {
      v13 = *(a1 + 40);
      v14 = *(*(a1 + 48) + 24);
      v15 = [v13 userInfo];
      [v14 handleNotification:v15];
    }
  }
}

void sub_100064A34(uint64_t a1)
{
  v1 = [*(a1 + 32) automaticDownloadProcessor];
  [v1 processAutomaticDownloadsWithCompletion:&stru_10011D108];
}

void sub_100064A80(id a1, NSArray *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = BLServiceNotificationLog();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v5;
      v8 = "Processed checkDownloadNotification but received error:  %@";
      v9 = v7;
      v10 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v9, v10, v8, &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = v4;
    v8 = "Processed checkDownloadNotification and received downloadIDs: %{public}@";
    v9 = v7;
    v10 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }
}

void sub_100064D80(uint64_t a1)
{
  v2 = +[BUAppGroup books];
  v3 = [v2 userDefaults];
  v4 = [*(a1 + 32) userDefaultsKey];
  v5 = [v3 arrayForKey:v4];
  v6 = v5;
  if (!v5)
  {
    v5 = &__NSArray0__struct;
  }

  v13 = [v5 mutableCopy];

  [v13 insertObject:*(a1 + 40) atIndex:0];
  v7 = [NSOrderedSet orderedSetWithArray:v13];
  v8 = [v7 array];
  v9 = [v8 mutableCopy];

  v10 = +[BUAppGroup books];
  v11 = [v10 userDefaults];
  v12 = [*(a1 + 32) userDefaultsKey];
  [v11 setObject:v9 forKey:v12];

  if ([*(a1 + 32) notificationType] == 1)
  {
    [*(a1 + 48) _handlePreorderAvailableNotificationForMessage:*(a1 + 56)];
  }
}

void sub_10006504C(uint64_t a1, int a2)
{
  v4 = BLServiceNotificationLog();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v11 = 138412290;
      v12 = v6;
      v7 = "Successfully bump'd WTR position for %@";
      v8 = v5;
      v9 = OS_LOG_TYPE_DEFAULT;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, v9, v7, &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = *(a1 + 32);
    v11 = 138412290;
    v12 = v10;
    v7 = "Failed to bump WTR position for %@";
    v8 = v5;
    v9 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }
}

id sub_100066598(void *a1)
{
  v1 = a1;
  v12 = objc_alloc_init(NSMutableArray);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    v11 = *v14;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [v7 objectForKey:@"endId"];
          v9 = [v7 objectForKey:@"startId"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v12 addObject:v9];
              v5 = v11;
              [v12 addObject:v8];
            }
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  return v12;
}

void sub_1000675A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, uint64_t a10, __int16 a11, uint64_t a12, __int16 a13, uint64_t a14)
{
  if (v14)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

void sub_1000678A4(uint64_t a1)
{
  v1 = [*(a1 + 32) completionBlock];
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

uint64_t sub_100068248(uint64_t a1)
{
  qword_10013EBA0 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_100068398(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void sub_1000686D8(uint64_t a1, void *a2)
{
  v3 = [a2 valueForProperty:ML3TrackPropertyStoreItemID];
  v5 = [NSNumber numberWithUnsignedLongLong:BUStoreIdFromObject()];

  v4 = v5;
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
    v4 = v5;
  }
}

uint64_t sub_100068D2C()
{
  v0 = objc_alloc_init(BLAssetContainerEbookiOS);
  v1 = qword_10013EBB0;
  qword_10013EBB0 = v0;

  v2 = [BLAssetContainerAudiobookiOS alloc];
  v3 = [(BLAssetContainerAudiobookiOS *)v2 initWithMetadataStoreManager:qword_10013EBB8];
  v4 = qword_10013EBC0;
  qword_10013EBC0 = v3;

  v5 = [BLAssetContainerPDFiOS alloc];
  qword_10013EBC8 = [(BLAssetContainerPDFiOS *)v5 initWithMetadataStoreManager:qword_10013EBB8];

  return _objc_release_x1();
}

void sub_100069218(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = BLServiceDownloadStreamingZipLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 40);
      v8 = 138543618;
      v9 = v7;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[Download-StreamingZip]: Failed to prepare for extraction %{public}@:  %@", &v8, 0x16u);
    }
  }

  else
  {
    *(*(a1 + 32) + 49) = a2;
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_1000694A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000694C8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000694E0(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100069714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100069738(uint64_t a1, void *a2)
{
  v7 = a2;
  v4 = SZExtractorErrorDomain;
  if (v7)
  {
    if ([v7 code] != 3 || (objc_msgSend(v7, "domain"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", v4), v5, (v6 & 1) == 0))
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *(*(*(a1 + 48) + 8) + 24) = 0;
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000698C8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = BLServiceDownloadStreamingZipLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(*(a1 + 32) + 33);
      v8 = 138543618;
      v9 = v7;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[Download-StreamingZip]: Failed to prepare for extraction %{public}@:  %@", &v8, 0x16u);
    }
  }

  else
  {
    *(*(a1 + 32) + 49) = a2;
    *(*(a1 + 32) + 17) = *(*(a1 + 32) + 49) != 0;
  }
}

void sub_100069B70(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = BLServiceDownloadStreamingZipLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(*(a1 + 32) + 33);
      v8 = 138543618;
      v9 = v7;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[Download-StreamingZip]: Failed to prepare for extraction %{public}@:  %@", &v8, 0x16u);
    }
  }

  else
  {
    *(*(a1 + 32) + 49) = a2;
    *(*(a1 + 32) + 17) = *(*(a1 + 32) + 49) != 0;
  }
}

uint64_t sub_10006A6B0()
{
  qword_10013EBD8 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

void sub_10006A974(id a1)
{
  +[ML3MusicLibrary autoupdatingSharedLibrary];
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10006AA0C;
  v3 = v2[3] = &unk_10011D340;
  v1 = v3;
  [v1 performDatabaseTransactionWithBlock:v2];
}

id sub_10006AA0C(uint64_t a1)
{
  v2 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyIsOTAPurchased equalToInteger:1];
  v3 = [ML3Track queryWithLibrary:*(a1 + 32) predicate:v2];
  v4 = [v3 deleteAllEntitiesFromLibrary];

  return v4;
}

void sub_10006AB24(uint64_t a1)
{
  v2 = +[ML3MusicLibrary autoupdatingSharedLibrary];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006ABE4;
  v6[3] = &unk_10011D368;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = v3;
  v8 = v4;
  v10 = *(a1 + 48);
  v9 = v2;
  v5 = v2;
  [v5 performDatabaseTransactionWithBlock:v6];
}

uint64_t sub_10006ABE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        [*(a1 + 40) _removeDownloadWithIdentifier:objc_msgSend(v9 canceled:"longLongValue" inLibrary:{v12), *(a1 + 56), *(a1 + 48)}];
        objc_autoreleasePoolPop(v10);
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return 1;
}

void sub_10006AD90(uint64_t a1)
{
  v2 = +[ML3MusicLibrary autoupdatingSharedLibrary];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006AE3C;
  v6[3] = &unk_10011D3B8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = v2;
  v8 = v4;
  v9 = *(a1 + 48);
  v6[4] = v3;
  v5 = v2;
  [v5 performDatabaseTransactionWithBlock:v6];
}

void sub_10006B024(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = v3;

    v2 = *(*(a1 + 32) + 24);
  }

  if ([v2 count])
  {
    v6 = 0;
  }

  else
  {
    v6 = os_transaction_create();
  }

  [*(*(a1 + 32) + 24) addObjectsFromArray:*(a1 + 40)];
  v7 = *(a1 + 32);
  if (!*(v7 + 32))
  {
    v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v7 + 8));
    v9 = *(a1 + 32);
    v10 = *(v9 + 32);
    *(v9 + 32) = v8;

    v11 = *(*(a1 + 32) + 32);
    v12 = dispatch_time(0, 5000000000);
    dispatch_source_set_timer(v11, v12, 0, 0);
    v13 = *(*(a1 + 32) + 32);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10006B190;
    v16[3] = &unk_10011D1A8;
    v14 = v6;
    v15 = *(a1 + 32);
    v17 = v14;
    v18 = v15;
    dispatch_source_set_event_handler(v13, v16);
    dispatch_resume(*(*(a1 + 32) + 32));
  }
}

void sub_10006B190(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  [v1 _commitScheduledLibraryItems];
}

void sub_10006B274(uint64_t a1)
{
  v3 = +[ML3MusicLibrary autoupdatingSharedLibrary];
  v2 = [v3 accountCacheDatabase];
  [v2 setAppleID:*(a1 + 32) forDSID:*(a1 + 40)];
}

void sub_10006C0EC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 16);
  v3 = *(a1 + 32);
  v2(v1);
}

uint64_t sub_10006E428(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 isEqualToNumber:v6])
  {
    v7 = 0;
  }

  else
  {
    if (*(a1 + 32))
    {
      if ([v5 isEqualToNumber:?])
      {
        v7 = -1;
        goto LABEL_15;
      }

      if (*(a1 + 32) && ([v6 isEqualToNumber:?] & 1) != 0)
      {
        v7 = 1;
        goto LABEL_15;
      }
    }

    v8 = [*(a1 + 40) objectForKeyedSubscript:v5];
    v9 = [v8 count];

    v10 = [*(a1 + 40) objectForKeyedSubscript:v6];
    v11 = [v10 count];

    if (v9 == v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = -1;
    }

    if (v9 < v11)
    {
      v7 = 1;
    }

    else
    {
      v7 = v12;
    }
  }

LABEL_15:

  return v7;
}

void sub_10006EBB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10006EBD4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained downloadManager];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006ECC4;
  v6[3] = &unk_10011D490;
  objc_copyWeak(&v8, (a1 + 40));
  v7 = *(a1 + 32);
  [v5 checkDownloadsWithCompletion:v6];

  objc_destroyWeak(&v8);
}

void sub_10006ECC4(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained installManager];
  [v4 start];

  v5 = objc_retainBlock(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, v7);
  }
}

void sub_10006EFAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10006F150;
  v14[3] = &unk_10011D4E0;
  v4 = objc_opt_new();
  v15 = v4;
  [v3 enumerateObjectsUsingBlock:v14];

  v5 = +[NSFileManager defaultManager];
  v6 = +[BLDownloadManager downloadsDirectory];
  v7 = [v6 path];

  v8 = [v5 contentsOfDirectoryAtPath:v7 error:0];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10006F1FC;
  v12[3] = &unk_10011D508;
  v9 = v4;
  v13 = v9;
  [v8 enumerateObjectsUsingBlock:v12];
  v10 = objc_retainBlock(*(a1 + 32));
  v11 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10, 0);
  }
}

void sub_10006F150(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v7 = BUDynamicCast();

  v4 = [v7 downloadID];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v7 downloadID];
    [v5 addObject:v6];
  }
}

uint64_t sub_10006F1FC(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v5 = BUDynamicCast();

  if (v5 && ([*(a1 + 32) containsObject:v5] & 1) == 0)
  {
    [BLDownloadManager cleanupDownloadScratchDirectoryForDownloadID:v5];
  }

  return _objc_release_x1();
}

uint64_t sub_10006FA58(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10006FA70(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) addObject:a2];
  }

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_group_leave(*(a1 + 40));
}

void sub_100070384(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = [a4 bl_securelyCodableError];
  v9 = objc_retainBlock(*(a1 + 32));
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9, v11, v7, v8);
  }
}

void sub_1000707C8(uint64_t a1, void *a2)
{
  v5 = [a2 bl_securelyCodableError];
  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, v5);
  }
}

void sub_100070C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v13 + 40));
  _Unwind_Resume(a1);
}

void sub_100070C78(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
  v5 = BLServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v7 = 134218242;
    v8 = WeakRetained;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Received error from progress receiver, removing proxy object (%p):  %@", &v7, 0x16u);
  }

  if (WeakRetained)
  {
    v6 = [*(a1 + 32) progressSender];
    [v6 removeProgressReceiver:WeakRetained];
  }
}

void sub_100070D74(uint64_t a1)
{
  v2 = BLServiceLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Connection from progress receiver invalidated, removing proxy object (%p): ", &v5, 0xCu);
  }

  v4 = [*(a1 + 40) progressSender];
  [v4 removeProgressReceiver:*(a1 + 32)];
}

void sub_100071D84(uint64_t a1)
{
  v2 = [*(a1 + 32) keepAliveOperationQueues];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:*(a1 + 32) selector:"_operationCountChanged:" name:@"BLOperationQueueOperationCountChangedNotification" object:*(a1 + 40)];

    v5 = [*(a1 + 32) keepAliveOperationQueues];
    [v5 addObject:*(a1 + 40)];

    v6 = *(a1 + 32);

    [v6 dq_reloadOperationKeepAliveTransaction];
  }
}

void sub_100071EDC(uint64_t a1)
{
  v2 = [*(a1 + 32) keepAliveOperationQueues];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:*(a1 + 32) name:@"BLOperationQueueOperationCountChangedNotification" object:*(a1 + 40)];

    v5 = [*(a1 + 32) keepAliveOperationQueues];
    [v5 removeObject:*(a1 + 40)];

    v6 = *(a1 + 32);

    [v6 dq_reloadOperationKeepAliveTransaction];
  }
}

void sub_1000723C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = BLServiceLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[Service]: Error fetching the list of all downloads:  %@", buf, 0xCu);
    }
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if ([v12 state] != 5 && objc_msgSend(v12, "state") != 6 && objc_msgSend(v12, "state") != 9)
          {
            v13 = [*(a1 + 32) downloadManager];
            v14 = [v12 downloadID];
            [v13 cancelDownloadWithID:v14 withCompletion:0];
          }
        }

        v9 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [*(a1 + 32) didFinishTransactionWithIdenfifier:@"cancellingAllTransactions"];
    dispatch_group_leave(*(a1 + 40));
  }
}

void sub_10007274C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BLServiceLog();
  v5 = v4;
  if (v3)
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v12 = 138412290;
    v13 = v3;
    v6 = "[Service]: Error deleting metadataStore: %@";
    v7 = v5;
    v8 = OS_LOG_TYPE_ERROR;
    v9 = 12;
  }

  else
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    LOWORD(v12) = 0;
    v6 = "[Service]: Delete metadataStore successful";
    v7 = v5;
    v8 = OS_LOG_TYPE_DEFAULT;
    v9 = 2;
  }

  _os_log_impl(&_mh_execute_header, v7, v8, v6, &v12, v9);
LABEL_7:

  [*(a1 + 32) didFinishTransactionWithIdenfifier:@"deleteMetadataStoreTransactions"];
  v10 = objc_retainBlock(*(a1 + 40));
  v11 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10, v3);
  }
}

void sub_100073414(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0;
  v4 = [v3 path];
  v5 = DeleteBook(v4, &v9);

  v6 = BLBookCacheDeleteLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (v5)
  {
    if (v7)
    {
      v8 = [v3 path];
      *buf = 138412546;
      v11 = v8;
      v12 = 2050;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Orphaned per-user book at %@ cache deleted. Recovered %{public}ld.", buf, 0x16u);
    }

    *(*(*(a1 + 32) + 8) + 24) += v9;
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to delete orphaned per-user book.", buf, 2u);
    }
  }
}

void sub_100073560(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0;
  v4 = [v3 path];
  v5 = DeleteBook(v4, &v9);

  v6 = BLBookCacheDeleteLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (v5)
  {
    if (v7)
    {
      v8 = [v3 path];
      *buf = 138412546;
      v11 = v8;
      v12 = 2050;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Orphaned shared book at %@ cache deleted. Recovered %{public}ld.", buf, 0x16u);
    }

    *(*(*(a1 + 32) + 8) + 24) += v9;
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to delete orphaned shared book.", buf, 2u);
    }
  }
}

void sub_1000736AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0;
  v4 = [v3 path];
  v5 = DeleteBook(v4, &v9);

  v6 = BLBookCacheDeleteLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (v5)
  {
    if (v7)
    {
      v8 = [v3 path];
      *buf = 138412546;
      v11 = v8;
      v12 = 2050;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Duplicated book from plist at %@ cache deleted. Recovered %{public}ld.", buf, 0x16u);
    }

    *(*(*(a1 + 40) + 8) + 24) += v9;
    [*(a1 + 32) addObject:v3];
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to delete duplicated purchased book.", buf, 2u);
    }
  }
}

void sub_100073C18(uint64_t a1, void *a2)
{
  v3 = [a2 path];
  *(*(*(a1 + 32) + 8) + 24) += FileSizeOfBook(v3);
}

void sub_100073C7C(uint64_t a1, void *a2)
{
  v3 = [a2 path];
  *(*(*(a1 + 32) + 8) + 24) += FileSizeOfBook(v3);
}

void sub_100073CE0(uint64_t a1, void *a2)
{
  v3 = [a2 path];
  *(*(*(a1 + 32) + 8) + 24) += FileSizeOfBook(v3);
}

int64_t sub_100074140(id a1, BLBookItem *a2, BLBookItem *a3)
{
  v4 = a3;
  v5 = [NSNumber numberWithInteger:[(BLBookItem *)a2 purgePriority]];
  v6 = [(BLBookItem *)v4 purgePriority];

  v7 = [NSNumber numberWithInteger:v6];
  v8 = [v5 compare:v7];

  return v8;
}

void sub_1000746C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10007472C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100074744(void *a1, void *a2)
{
  v10 = a2;
  v3 = *(*(a1[4] + 8) + 40);
  v4 = [v10 path];
  [v3 addObject:v4];

  v5 = [v10 storeIdentifier];

  if (v5)
  {
    v6 = *(*(a1[5] + 8) + 40);
    v7 = [v10 storeIdentifier];
  }

  else
  {
    v8 = [v10 permlink];

    if (!v8)
    {
      goto LABEL_6;
    }

    v6 = *(*(a1[6] + 8) + 40);
    v7 = [v10 permlink];
  }

  v9 = v7;
  [v6 addObject:v7];

LABEL_6:
}

id sub_100074830(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [IMLibraryPlist storeIdFromPlistEntry:v3];
  if (v4 && ([*(*(*(a1 + 40) + 8) + 40) containsObject:v4] & 1) != 0 || (+[IMLibraryPlist permlinkFromPlistEntry:](IMLibraryPlist, "permlinkFromPlistEntry:", v3), (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, v7 = objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "containsObject:", v5), v6, v7))
  {
    v8 = [*(a1 + 32) directory];
    v9 = [IMLibraryPlist folderNameFromPlistEntry:v3];
    v10 = [v8 stringByAppendingPathComponent:v9];

    v11 = [*(*(*(a1 + 56) + 8) + 40) containsObject:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_100074944(void *a1)
{
  v2 = +[NSMutableArray array];
  v3 = [IMLibraryPlist booksArrayFromPlistEntry:a1[4]];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v8 = *v23;
    *&v5 = 138412290;
    v21 = v5;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        if ((*(a1[6] + 16))())
        {
          v11 = BLBookCacheDeleteLog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            *buf = v21;
            v27 = v10;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Removing entry from plist: %@", buf, 0xCu);
          }

          ++v7;
        }

        else
        {
          [v2 addObject:v10];
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v22 objects:v34 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v12 = [v3 count];
  v13 = v12;
  if (v7 || a1[7] > v12)
  {
    v14 = +[NSMutableDictionary dictionary];
    [IMLibraryPlist setBooksArray:v2 toPlistEntry:v14];
    [v14 writeToFile:a1[5] atomically:1];
    v15 = BLBookCacheDeleteLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = a1[5];
      v17 = [v2 count];
      v18 = a1[7] - v13;
      *buf = 138413058;
      v27 = v16;
      v28 = 2048;
      v29 = v17;
      v30 = 2048;
      v31 = v7;
      v32 = 2048;
      v33 = v18;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Rewriting the plist: %@ -- [%lu Remaining] [Removed: %lu] [Filtered: %lu]", buf, 0x2Au);
    }
  }

  else
  {
    v14 = BLBookCacheDeleteLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v19 = a1[5];
      v20 = [v2 count];
      *buf = 138412546;
      v27 = v19;
      v28 = 2048;
      v29 = v20;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "No need to rewrite %@. {Nothing removed} %lu entries", buf, 0x16u);
    }
  }
}

BOOL sub_100075024(id a1, NSURL *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = BLBookCacheDeleteLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failure while enumerating directory. At url %@. Error:  %@", &v8, 0x16u);
  }

  return 1;
}

void sub_10007573C(void *a1)
{
  v2 = [*(a1[5] + 8) mutableCopyWithZone:a1[6]];
  v3 = a1[4];
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  v5 = [*(a1[5] + 24) copyWithZone:a1[6]];
  v6 = a1[4];
  v7 = *(v6 + 24);
  *(v6 + 24) = v5;

  *(a1[4] + 16) = *(a1[5] + 16);
  v8 = [*(a1[5] + 32) copyWithZone:a1[6]];
  v9 = a1[4];
  v10 = *(v9 + 32);
  *(v9 + 32) = v8;

  v11 = [*(a1[5] + 48) copyWithZone:a1[6]];
  v12 = a1[4];
  v13 = *(v12 + 48);
  *(v12 + 48) = v11;

  *(a1[4] + 56) = *(a1[5] + 56);
  *(a1[4] + 64) = *(a1[5] + 64);
  *(a1[4] + 72) = *(a1[5] + 72);
  v14 = [*(a1[5] + 80) copyWithZone:a1[6]];
  v15 = a1[4];
  v16 = *(v15 + 80);
  *(v15 + 80) = v14;

  v17 = [*(a1[5] + 88) copyWithZone:a1[6]];
  v18 = a1[4];
  v19 = *(v18 + 88);
  *(v18 + 88) = v17;

  *(a1[4] + 96) = *(a1[5] + 96);
  *(a1[4] + 104) = *(a1[5] + 104);
}

uint64_t sub_100075A80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100075A98(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 8) copy];

  return _objc_release_x1();
}

uint64_t sub_100075C94(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 32) copy];

  return _objc_release_x1();
}

double sub_100075E4C(uint64_t a1)
{
  result = *(*(a1 + 32) + 64);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

id sub_100075F5C(uint64_t a1)
{
  result = *(*(a1 + 32) + 24);
  if (result)
  {
    result = [result length];
    if (result)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  return result;
}

void sub_10007639C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 88) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1 + 32) + 64);
  if (v5 > 0.00000011920929)
  {
    v6 = v5 * 1000.0;
    if (v6 < 4294967300.0)
    {
      v7 = *(*(*(a1 + 40) + 8) + 40);
      v8 = [NSNumber numberWithUnsignedInteger:v6];
      [v7 setDurationInMilliseconds:v8];
    }
  }

  v9 = [*(*(*(a1 + 40) + 8) + 40) kind];
  v10 = BLDownloadKindPodcast;
  v14 = v9;
  if (([v9 isEqualToString:BLDownloadKindPodcast] & 1) != 0 || objc_msgSend(v14, "isEqualToString:", BLDownloadKindVideoPodcast))
  {
    v11 = *(*(a1 + 32) + 16);
    if (v11 == 2)
    {
      v12 = *(*(*(a1 + 40) + 8) + 40);
      v13 = BLDownloadKindVideoPodcast;
    }

    else
    {
      if (v11 != 1)
      {
        goto LABEL_11;
      }

      v12 = *(*(*(a1 + 40) + 8) + 40);
      v13 = v10;
    }

    [v12 setKind:v13];
  }

LABEL_11:
}

uint64_t sub_100076834(uint64_t a1)
{
  *(*(a1 + 32) + 16) = *(a1 + 48);
  *(*(a1 + 32) + 64) = *(a1 + 56);
  *(*(a1 + 32) + 32) = [*(a1 + 40) copy];

  return _objc_release_x1();
}

void *sub_1000769E8(uint64_t a1)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v3 + 8) != result)
  {
    *(*(a1 + 32) + 8) = [result mutableCopy];

    return _objc_release_x1();
  }

  return result;
}

void *sub_100076B5C(uint64_t a1)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v3 + 32) != result)
  {
    *(*(a1 + 32) + 32) = [result copy];

    return _objc_release_x1();
  }

  return result;
}

double sub_100076CB0(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 64) = result;
  return result;
}

void *sub_100076D58(uint64_t a1)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v3 + 24) != result)
  {
    *(*(a1 + 32) + 24) = [result copy];

    return _objc_release_x1();
  }

  return result;
}

void *sub_100076E4C(uint64_t a1)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v3 + 48) != result)
  {
    *(*(a1 + 32) + 48) = [result copy];

    return _objc_release_x1();
  }

  return result;
}

void *sub_100076F40(uint64_t a1)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v3 + 80) != result)
  {
    *(*(a1 + 32) + 80) = [result copy];

    return _objc_release_x1();
  }

  return result;
}

void *sub_100077034(uint64_t a1)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v3 + 88) != result)
  {
    *(*(a1 + 32) + 88) = [result copy];

    return _objc_release_x1();
  }

  return result;
}

id sub_1000772D4(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[5] + 8);
  if (v2)
  {
    if (!v3)
    {
      v4 = objc_alloc_init(NSMutableDictionary);
      v5 = a1[5];
      v6 = *(v5 + 8);
      *(v5 + 8) = v4;

      v2 = a1[4];
      v3 = *(a1[5] + 8);
    }

    v7 = a1[6];

    return [v3 setObject:v2 forKey:v7];
  }

  else
  {
    v9 = a1[6];

    return [v3 removeObjectForKey:v9];
  }
}

void sub_100077B5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100077B88(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _stateForLog];

  return v2;
}

void sub_100078110(uint64_t a1)
{
  v2 = [NSFetchRequest fetchRequestWithEntityName:@"BLDownloadInfo"];
  v3 = objc_opt_new();
  v4 = [NSPredicate predicateWithFormat:@"%K = %@ || %K = %@", @"state", &off_100129848, @"state", &off_100129860];
  [v2 setPredicate:v4];

  v5 = *(*(a1 + 32) + 24);
  v13 = 0;
  v6 = [v5 executeFetchRequest:v2 error:&v13];
  v7 = v13;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000782B0;
  v11[3] = &unk_10011D8A8;
  v11[4] = *(a1 + 32);
  v8 = v3;
  v12 = v8;
  [v6 enumerateObjectsUsingBlock:v11];

  v9 = objc_retainBlock(*(a1 + 40));
  if (v9)
  {
    v10 = [v7 bldm_bookLibraryDatabaseErrorInFunction:"-[BLDatabaseManager fetchListOfAllDownloadCandidatesWithCompletion:]_block_invoke_2"];
    v9[2](v9, v8, v10);
  }
}

uint64_t sub_1000782B0(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) mq_newInMemoryDownloadFromDownloadInfo:a2];
  if (v3)
  {
    [*(a1 + 40) addObject:v3];
  }

  return _objc_release_x1();
}

void sub_1000783AC(uint64_t a1)
{
  v2 = [NSFetchRequest fetchRequestWithEntityName:@"BLDownloadInfo"];
  v3 = objc_opt_new();
  v4 = [NSPredicate predicateWithFormat:@"%K = %@", @"state", &off_100129878];
  [v2 setPredicate:v4];

  v5 = [NSSortDescriptor sortDescriptorWithKey:@"startTime" ascending:1];
  v24 = v5;
  v6 = [NSArray arrayWithObjects:&v24 count:1];
  [v2 setSortDescriptors:v6];

  v7 = *(*(a1 + 32) + 24);
  v23 = 0;
  v8 = [v7 executeFetchRequest:v2 error:&v23];
  v9 = v23;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000786A8;
  v21[3] = &unk_10011D8A8;
  v21[4] = *(a1 + 32);
  v10 = v3;
  v22 = v10;
  [v8 enumerateObjectsUsingBlock:v21];

  v11 = [NSPredicate predicateWithFormat:@"%K = %@ || %K = %@", @"state", &off_100129848, @"state", &off_100129860];
  [v2 setPredicate:v11];

  v12 = *(*(a1 + 32) + 24);
  v20 = v9;
  v13 = [v12 executeFetchRequest:v2 error:&v20];
  v14 = v20;

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10007870C;
  v18[3] = &unk_10011D8A8;
  v18[4] = *(a1 + 32);
  v15 = v10;
  v19 = v15;
  [v13 enumerateObjectsUsingBlock:v18];

  v16 = objc_retainBlock(*(a1 + 40));
  if (v16)
  {
    v17 = [v14 bldm_bookLibraryDatabaseErrorInFunction:"-[BLDatabaseManager fetchListOfPendingDownloadsSortedByStartTime:]_block_invoke_3"];
    v16[2](v16, v15, v17);
  }
}

uint64_t sub_1000786A8(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) mq_newInMemoryDownloadFromDownloadInfo:a2];
  if (v3)
  {
    [*(a1 + 40) addObject:v3];
  }

  return _objc_release_x1();
}

uint64_t sub_10007870C(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) mq_newInMemoryDownloadFromDownloadInfo:a2];
  if (v3)
  {
    [*(a1 + 40) addObject:v3];
  }

  return _objc_release_x1();
}

void sub_10007889C(uint64_t a1)
{
  v2 = [NSFetchRequest fetchRequestWithEntityName:@"BLDownloadInfo"];
  v3 = [NSPredicate predicateWithFormat:@"%K = %@ || %K = %@ || %K = %@ || %K = %@ ||  %K = %@", @"state", &off_1001298A8, @"state", &off_100129890, @"state", &off_1001298C0, @"state", &off_1001298D8, @"state", &off_100129860];
  [v2 setPredicate:v3];

  v4 = *(*(a1 + 32) + 24);
  v59 = 0;
  v46 = v2;
  v5 = [v4 executeFetchRequest:v2 error:&v59];
  v45 = v59;
  v6 = +[NSMutableArray array];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v55 objects:v67 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v56;
    p_cache = (BLSinfsArray + 16);
    do
    {
      v11 = 0;
      v47 = v8;
      do
      {
        if (*v56 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v55 + 1) + 8 * v11);
        v13 = [v12 downloadID];
        v14 = [v12 state];
        v15 = [v14 integerValue];

        if (v15 <= 4)
        {
          if (v15 > 1)
          {
            goto LABEL_15;
          }

          v24 = +[NSDate date];
          v25 = [v12 lastStateChangeTime];
          [v24 timeIntervalSinceDate:v25];
          v27 = v26;

          v28 = [v12 lastStateChangeTime];

          if (v28)
          {
            if (v27 <= 30.0)
            {
              goto LABEL_15;
            }
          }
        }

        else if ((v15 - 5) >= 2 && v15 != 9)
        {
          goto LABEL_15;
        }

        v17 = BLServiceDatabaseManagerLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v12 state];
          [v18 integerValue];
          v19 = NSStringFromBLDownloadState();
          [v12 lastStateChangeTime];
          v20 = v9;
          v21 = a1;
          v23 = v22 = v6;
          *buf = 138543874;
          v62 = v13;
          v63 = 2114;
          v64 = v19;
          v65 = 2114;
          v66 = v23;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Database]: Purging entry in state: [%{public}@] lastChanged:[%{public}@] from the database", buf, 0x20u);

          v6 = v22;
          a1 = v21;
          v9 = v20;
          v8 = v47;

          p_cache = BLSinfsArray.cache;
        }

        [v6 addObject:v13];
        [*(*(a1 + 32) + 24) deleteObject:v12];
        [p_cache + 58 cleanupDownloadScratchDirectoryForDownloadID:v13];
LABEL_15:

        v11 = v11 + 1;
      }

      while (v8 != v11);
      v29 = [obj countByEnumeratingWithState:&v55 objects:v67 count:16];
      v8 = v29;
    }

    while (v29);
  }

  v30 = [NSFetchRequest fetchRequestWithEntityName:@"BLDownloadPolicyInfo"];

  v31 = [NSPredicate predicateWithFormat:@"%K IN %@", @"policyID", v6];
  [v30 setPredicate:v31];

  v32 = *(*(a1 + 32) + 24);
  v54 = v45;
  v33 = [v32 executeFetchRequest:v30 error:&v54];
  v34 = v54;

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v35 = v33;
  v36 = [v35 countByEnumeratingWithState:&v50 objects:v60 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v51;
    do
    {
      for (i = 0; i != v37; i = i + 1)
      {
        if (*v51 != v38)
        {
          objc_enumerationMutation(v35);
        }

        [*(*(a1 + 32) + 24) deleteObject:*(*(&v50 + 1) + 8 * i)];
      }

      v37 = [v35 countByEnumeratingWithState:&v50 objects:v60 count:16];
    }

    while (v37);
  }

  v40 = *(*(a1 + 32) + 24);
  v49 = v34;
  [v40 save:&v49];
  v41 = v49;

  if (v41)
  {
    v42 = BLServiceDatabaseManagerLog();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v62 = v41;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "[Database]: Error while trying to purge the database:  %@", buf, 0xCu);
    }
  }

  v43 = objc_retainBlock(*(a1 + 40));
  if (v43)
  {
    v44 = [v41 bldm_bookLibraryDatabaseErrorInFunction:"-[BLDatabaseManager purgeAllStaleDownloadsWithCompletion:]_block_invoke"];
    v43[2](v43, v44);
  }
}

void sub_100078F98(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v11 = BLServiceDatabaseManagerLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[Database]: Error encountered getting download info. Error:  %@", buf, 0xCu);
    }
  }

  else
  {
    v8 = [NSNumber numberWithInteger:*(a1 + 56)];
    [v5 setState:v8];

    v9 = +[NSDate date];
    [v5 setLastStateChangeTime:v9];

    v10 = *(*(a1 + 32) + 24);
    v16 = 0;
    [v10 save:&v16];
    v11 = v16;
    if (v11)
    {
      v12 = BLServiceDatabaseManagerLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 40);
        *buf = 138543618;
        v18 = v13;
        v19 = 2112;
        v20 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Database]: Error saving the state for this download, error:  %@", buf, 0x16u);
      }
    }
  }

  v14 = objc_retainBlock(*(a1 + 48));
  v15 = v14;
  if (v14)
  {
    (*(v14 + 2))(v14, v7);
  }
}

void sub_100079360(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v10 = BLServiceDatabaseManagerLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[Database]: Error encountered getting download info. Error:  %@", buf, 0xCu);
    }
  }

  else
  {
    v8 = +[NSDate date];
    [v5 setLastStateChangeTime:v8];

    v9 = *(*(a1 + 32) + 24);
    v13 = 0;
    [v9 save:&v13];
    v10 = v13;
    if (v10)
    {
      v11 = BLServiceDatabaseManagerLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = *(a1 + 40);
        *buf = 138543618;
        v15 = v12;
        v16 = 2112;
        v17 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Database]: Error touching this download, error:  %@", buf, 0x16u);
      }
    }
  }
}

void sub_100079590(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v10 = BLServiceDatabaseManagerLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[Database]: Error encountered getting download info. Error:  %@", buf, 0xCu);
    }
  }

  else
  {
    v8 = [NSNumber numberWithUnsignedLongLong:*(a1 + 48)];
    [v5 setSize:v8];

    v9 = *(*(a1 + 32) + 24);
    v13 = 0;
    [v9 save:&v13];
    v7 = v13;
  }

  v11 = objc_retainBlock(*(a1 + 40));
  v12 = v11;
  if (v11)
  {
    (*(v11 + 2))(v11, v7);
  }
}

void sub_100079780(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v11 = BLServiceDatabaseManagerLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[Database]: Error encountered getting download info. Error:  %@", buf, 0xCu);
    }
  }

  else
  {
    v8 = [NSNumber numberWithBool:*(a1 + 48)];
    [v5 setIsLocalCacheServer:v8];

    if (*(a1 + 48) == 1)
    {
      v9 = [v5 originalURL];
      [v5 setUrl:v9];
    }

    v10 = *(*(a1 + 32) + 24);
    v14 = 0;
    [v10 save:&v14];
    v7 = v14;
  }

  v12 = objc_retainBlock(*(a1 + 40));
  v13 = v12;
  if (v12)
  {
    (*(v12 + 2))(v12, v7);
  }
}

void sub_1000799B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v9 = BLServiceDatabaseManagerLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[Database]: Error encountered getting download info. Error:  %@", buf, 0xCu);
    }
  }

  else
  {
    [v5 setAssetPath:*(a1 + 32)];
    v8 = *(*(a1 + 40) + 24);
    v12 = 0;
    [v8 save:&v12];
    v7 = v12;
  }

  v10 = objc_retainBlock(*(a1 + 48));
  v11 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10, v7);
  }
}

void sub_100079BA8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v12 = BLServiceDatabaseManagerLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[Database]: Error encountered getting download info. Error:  %@", buf, 0xCu);
    }

    goto LABEL_9;
  }

  v8 = objc_retainBlock(*(a1 + 40));
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, v5);
  }

  v10 = *(*(a1 + 32) + 24);
  v15 = 0;
  [v10 save:&v15];
  v11 = v15;
  if (v11)
  {
    v12 = v11;
    v7 = [v11 bldm_bookLibraryDatabaseErrorInFunction:"[BLDatabaseManager updateDownloadWithID:updateBlock:completion:]_block_invoke"];
LABEL_9:

    goto LABEL_10;
  }

  v7 = 0;
LABEL_10:
  v13 = objc_retainBlock(*(a1 + 48));
  v14 = v13;
  if (v13)
  {
    (*(v13 + 2))(v13, v7);
  }
}

void sub_100079DA4(uint64_t a1)
{
  v2 = [NSBatchUpdateRequest batchUpdateRequestWithEntityName:@"BLDownloadInfo"];
  v3 = [NSPredicate predicateWithFormat:@"%K = %@", @"state", &off_1001298F0];
  [v2 setPredicate:v3];

  v58 = @"state";
  v59 = &off_100129878;
  v4 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];
  [v2 setPropertiesToUpdate:v4];

  [v2 setResultType:2];
  v5 = *(*(a1 + 32) + 24);
  v51 = 0;
  v6 = [v5 executeRequest:v2 error:&v51];
  v7 = v51;
  objc_opt_class();
  v8 = BUDynamicCast();
  objc_opt_class();
  v9 = [v8 result];
  v10 = BUDynamicCast();

  v11 = [v10 integerValue];
  v12 = BLServiceDatabaseManagerLog();
  v13 = v12;
  if (v6)
  {
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 134217984;
    v57 = v11;
    v14 = "[Database]: Found %ld downloads being downloaded and set their state to Interrupted.";
    v15 = v13;
    v16 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 138412290;
    v57 = v7;
    v14 = "[Database]: Error while looking for downloads that were interrupted while downloading. %@";
    v15 = v13;
    v16 = OS_LOG_TYPE_ERROR;
  }

  _os_log_impl(&_mh_execute_header, v15, v16, v14, buf, 0xCu);
LABEL_7:

  v17 = [NSBatchUpdateRequest batchUpdateRequestWithEntityName:@"BLDownloadInfo"];

  v18 = [NSPredicate predicateWithFormat:@"%K = %@", @"state", &off_100129908];
  [v17 setPredicate:v18];

  v54 = @"state";
  v55 = &off_100129890;
  v19 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
  [v17 setPropertiesToUpdate:v19];

  [v17 setResultType:2];
  v20 = *(*(a1 + 32) + 24);
  v50 = v7;
  v21 = [v20 executeRequest:v17 error:&v50];
  v22 = v50;

  objc_opt_class();
  v23 = BUDynamicCast();

  objc_opt_class();
  v24 = [v23 result];
  v25 = BUDynamicCast();

  v26 = [v25 integerValue];
  v27 = BLServiceDatabaseManagerLog();
  v28 = v27;
  if (v21)
  {
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *buf = 134217984;
    v57 = v26;
    v29 = "[Database]: Found %ld downloads being decrypted and moved them to failed.";
    v30 = v28;
    v31 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 138412290;
    v57 = v22;
    v29 = "[Database]: Error while looking for downloads that were interrupted while being decrypted. %@";
    v30 = v28;
    v31 = OS_LOG_TYPE_ERROR;
  }

  _os_log_impl(&_mh_execute_header, v30, v31, v29, buf, 0xCu);
LABEL_13:

  v32 = [NSBatchUpdateRequest batchUpdateRequestWithEntityName:@"BLDownloadInfo"];

  v33 = [NSPredicate predicateWithFormat:@"%K = %@ || %K = %@ || %K = %@ || %K = %@ || %K = %@", @"state", &off_100129920, @"state", &off_100129938, @"state", &off_100129950, @"state", &off_100129968, @"state", &off_100129980, @"state", &off_100129998];
  [v32 setPredicate:v33];

  v52 = @"state";
  v53 = &off_1001299B0;
  v34 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
  [v32 setPropertiesToUpdate:v34];

  [v32 setResultType:2];
  v35 = *(*(a1 + 32) + 24);
  v49 = v22;
  v36 = [v35 executeRequest:v32 error:&v49];
  v37 = v49;

  objc_opt_class();
  v38 = BUDynamicCast();

  objc_opt_class();
  v39 = [v38 result];
  v40 = BUDynamicCast();

  v41 = [v40 integerValue];
  v42 = BLServiceDatabaseManagerLog();
  v43 = v42;
  if (v36)
  {
    if (!os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    *buf = 134217984;
    v57 = v41;
    v44 = "[Database]: Found %ld interrupted installs and set their state back to Downloaded";
    v45 = v43;
    v46 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 138412290;
    v57 = v37;
    v44 = "[Database]: Error while looking for downloads that were interrupted while being installed. %@";
    v45 = v43;
    v46 = OS_LOG_TYPE_ERROR;
  }

  _os_log_impl(&_mh_execute_header, v45, v46, v44, buf, 0xCu);
LABEL_19:

  v47 = objc_retainBlock(*(a1 + 40));
  if (v47)
  {
    v48 = [v37 bldm_bookLibraryDatabaseErrorInFunction:"-[BLDatabaseManager updateAllInterruptedDownloadsToTheirProperStatesWithCompletion:]_block_invoke"];
    v47[2](v47, v48);
  }
}

void sub_10007A4B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if (*(*(&v16 + 1) + 8 * v12))
        {
          v13 = [*(a1 + 32) mq_newInMemoryDownloadFromDownloadInfo:v16];
          [v7 addObject:v13];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = objc_retainBlock(*(a1 + 40));
  v15 = v14;
  if (v14)
  {
    (*(v14 + 2))(v14, v7, v6);
  }
}

void sub_10007A700(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_retainBlock(*(a1 + 40));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v5, v6);
  }

  if ([*(*(a1 + 32) + 24) hasChanges])
  {
    v9 = *(*(a1 + 32) + 24);
    v17 = 0;
    v10 = [v9 save:&v17];
    v11 = v17;
    if ((v10 & 1) == 0)
    {
      v12 = BLServiceDatabaseManagerLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[Database]: Error saving modified BLDownloadInfo objects:  %@", buf, 0xCu);
      }

      v13 = objc_retainBlock(*(a1 + 48));
      v14 = v13;
      if (v13)
      {
        v15 = v13[2];
LABEL_12:
        v15();
        goto LABEL_13;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v11 = 0;
  }

  v16 = objc_retainBlock(*(a1 + 48));
  v14 = v16;
  if (v16)
  {
    v15 = v16[2];
    goto LABEL_12;
  }

LABEL_13:
}

void sub_10007A94C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v9 = BLServiceDatabaseManagerLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      *buf = 138543618;
      v17 = v12;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Database]: Error deleting the download, the object to delete was not found. Error:  %@", buf, 0x16u);
    }
  }

  else
  {
    [*(*(a1 + 32) + 24) deleteObject:v5];
    v8 = *(*(a1 + 32) + 24);
    v15 = 0;
    [v8 save:&v15];
    v9 = v15;
    if (v9)
    {
      v10 = BLServiceDatabaseManagerLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 40);
        *buf = 138543618;
        v17 = v11;
        v18 = 2112;
        v19 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Database]: Error deleting the download, error:  %@", buf, 0x16u);
      }
    }
  }

  v13 = objc_retainBlock(*(a1 + 48));
  v14 = v13;
  if (v13)
  {
    (*(v13 + 2))(v13, v7);
  }
}

void sub_10007ABF0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v7)
  {
    v7 = [NSEntityDescription insertNewObjectForEntityForName:@"BLDownloadPolicyInfo" inManagedObjectContext:*(*(a1 + 32) + 24)];
    v10 = [*(a1 + 40) policyID];
    [v7 setPolicyID:v10];

    v11 = [*(a1 + 40) storePlaylistIdentifier];
    [v7 setStorePlaylistIdentifier:v11];
  }

  v12 = [*(a1 + 40) policyData];
  [v7 setPolicyData:v12];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = v8;
  v14 = [v13 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v29;
    do
    {
      v17 = 0;
      do
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v28 + 1) + 8 * v17);
        v19 = [*(a1 + 40) policyData];
        [v18 setPolicyData:v19];

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v15);
  }

  v20 = *(*(a1 + 32) + 24);
  v27 = 0;
  [v20 save:&v27];
  v21 = v27;
  v22 = BLServiceDatabaseManagerLog();
  v23 = v22;
  if (v21)
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v33 = v21;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "[Database]: Error encountered saving the download policy. Error:  %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v24 = [v7 policyID];
    *buf = 138543362;
    v33 = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "[Database]: Updated the download policy with id %{public}@.", buf, 0xCu);
  }

  v25 = objc_retainBlock(*(a1 + 48));
  if (v25)
  {
    v26 = [v21 bldm_bookLibraryDatabaseErrorInFunction:"-[BLDatabaseManager saveOrUpdateDownloadPolicy:completion:]_block_invoke"];
    v25[2](v25, v26);
  }
}

void sub_10007AF8C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7 && ([*(*(a1 + 32) + 24) deleteObject:v7], *(a1 + 48) == 1))
  {
    v10 = *(*(a1 + 32) + 24);
    v14 = 0;
    [v10 save:&v14];
    v11 = v14;
  }

  else
  {
    v11 = 0;
  }

  v12 = objc_retainBlock(*(a1 + 40));
  if (v12)
  {
    v13 = [v11 bldm_bookLibraryDatabaseErrorInFunction:"-[BLDatabaseManager _deleteDownloadPolicyWithID:save:completion:]_block_invoke"];
    v12[2](v12, v13);
  }
}

void sub_10007B128(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = a4;
  v6 = [*(a1 + 32) mq_newDownloadPolicyFromDownloadPolicyInfo:a2];
  v7 = objc_retainBlock(*(a1 + 40));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v6, v9);
  }
}

void sub_10007B24C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if (*(*(&v16 + 1) + 8 * v12))
        {
          v13 = [*(a1 + 32) mq_newDownloadPolicyFromDownloadPolicyInfo:v16];
          [v7 addObject:v13];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = objc_retainBlock(*(a1 + 40));
  if (v14)
  {
    v15 = [v6 bldm_bookLibraryDatabaseErrorInFunction:"-[BLDatabaseManager fetchListOfAllDownloadPoliciesWithCompletion:]_block_invoke"];
    v14[2](v14, v7, v15);
  }
}

void sub_10007B47C(uint64_t a1)
{
  v2 = [NSFetchRequest fetchRequestWithEntityName:@"BLDownloadInfo"];
  v3 = objc_opt_new();
  v4 = *(*(a1 + 32) + 24);
  v12 = 0;
  v5 = [v4 executeFetchRequest:v2 error:&v12];
  v6 = v12;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10007B5D0;
  v10[3] = &unk_10011D8A8;
  v10[4] = *(a1 + 32);
  v7 = v3;
  v11 = v7;
  [v5 enumerateObjectsUsingBlock:v10];

  v8 = objc_retainBlock(*(a1 + 40));
  if (v8)
  {
    v9 = [v6 bldm_bookLibraryDatabaseErrorInFunction:"-[BLDatabaseManager fetchDownloadListWithCompletion:]_block_invoke"];
    v8[2](v8, v7, v9);
  }
}

uint64_t sub_10007B5D0(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) mq_newInMemoryDownloadFromDownloadInfo:a2];
  if (v3)
  {
    [*(a1 + 40) addObject:v3];
  }

  return _objc_release_x1();
}

void sub_10007B6D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = BLServiceDatabaseManagerLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[Database]: Error encountered getting download info. Error:  %@", &v11, 0xCu);
    }
  }

  v8 = objc_retainBlock(*(a1 + 40));
  v9 = v8;
  if (v8)
  {
    if (v5)
    {
      v10 = [*(a1 + 32) mq_newInMemoryDownloadFromDownloadInfo:v5];
      (v9)[2](v9, v10, v6);
    }

    else
    {
      (*(v8 + 2))(v8, 0, v6);
    }
  }
}

void sub_10007B9F0(uint64_t a1)
{
  v2 = [NSEntityDescription insertNewObjectForEntityForName:@"BLDownloadInfo" inManagedObjectContext:*(*(a1 + 32) + 24)];
  v3 = +[NSDate date];
  [v2 setLastStateChangeTime:v3];
  [v2 setStartTime:v3];

  v4 = +[NSUUID UUID];
  v5 = [v4 UUIDString];
  [v2 setDownloadID:v5];

  [v2 setState:&off_1001298D8];
  [v2 setBuyParameters:*(a1 + 40)];
  [v2 setClientIdentifier:*(a1 + 48)];
  if (*(a1 + 56))
  {
    [v2 setStoreIdentifier:?];
  }

  v6 = *(*(a1 + 32) + 24);
  v15 = 0;
  [v6 save:&v15];
  v7 = v15;
  v8 = BLServiceDatabaseManagerLog();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[Database]: Error encountered starting download. Error:  %@", buf, 0xCu);
    }

    v10 = objc_retainBlock(*(a1 + 64));
    v11 = 0;
    if (!v10)
    {
      v12 = 0;
      goto LABEL_15;
    }

    v12 = v10;
    goto LABEL_12;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v2 downloadID];
    *buf = 138543362;
    v17 = v13;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Database]: addDownloadWithBuyParameters - Download added.", buf, 0xCu);
  }

  v12 = objc_retainBlock(*(a1 + 64));
  if (v12)
  {
    v11 = [v2 downloadID];
LABEL_12:
    v14 = [v7 bldm_bookLibraryDatabaseErrorInFunction:"-[BLDatabaseManager addDownloadWithBuyParameters:storeID:clientIdentifier:completion:]_block_invoke"];
    v12[2](v12, v11, v14);

    if (!v7)
    {
    }
  }

LABEL_15:
}

void sub_10007BD4C(uint64_t a1)
{
  v2 = [NSEntityDescription insertNewObjectForEntityForName:@"BLDownloadInfo" inManagedObjectContext:*(*(a1 + 32) + 24)];
  v3 = +[NSDate date];
  [v2 setLastStateChangeTime:v3];
  [v2 setStartTime:v3];

  v4 = +[NSUUID UUID];
  v5 = [v4 UUIDString];
  [v2 setDownloadID:v5];

  [v2 setState:&off_1001298D8];
  v6 = [*(a1 + 40) absoluteString];
  [v2 setPermlink:v6];

  [v2 setClientIdentifier:*(a1 + 48)];
  v7 = *(*(a1 + 32) + 24);
  v16 = 0;
  [v7 save:&v16];
  v8 = v16;
  v9 = BLServiceDatabaseManagerLog();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[Database]: Error encountered starting download. Error:  %@", buf, 0xCu);
    }

    v11 = objc_retainBlock(*(a1 + 56));
    v12 = 0;
    if (!v11)
    {
      v13 = 0;
      goto LABEL_13;
    }

    v13 = v11;
    goto LABEL_10;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v2 downloadID];
    *buf = 138543362;
    v18 = v14;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Database]: addDownloadWithPermlink - Download added", buf, 0xCu);
  }

  v13 = objc_retainBlock(*(a1 + 56));
  if (v13)
  {
    v12 = [v2 downloadID];
LABEL_10:
    v15 = [v8 bldm_bookLibraryDatabaseErrorInFunction:"-[BLDatabaseManager addDownloadWithPermlink:clientIdentifier:completion:]_block_invoke"];
    v13[2](v13, v12, v15);

    if (!v8)
    {
    }
  }

LABEL_13:
}

void sub_10007C08C(id *a1)
{
  v2 = [a1[4] objectForKeyedSubscript:@"downloadID"];
  if ([v2 length])
  {
    v3 = [NSFetchRequest fetchRequestWithEntityName:@"BLDownloadInfo"];
    v4 = [NSPredicate predicateWithFormat:@"%K = %@", @"downloadID", v2];
    [v3 setPredicate:v4];

    v5 = *(a1[5] + 3);
    v103 = 0;
    v6 = [v5 executeFetchRequest:v3 error:&v103];
    v7 = v103;
    v8 = [v6 firstObject];

    if (v7)
    {
      v9 = BLServiceDatabaseManagerLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v105 = v2;
        v106 = 2112;
        v107 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Database]: Failed to fetch existing download. Error:  %@", buf, 0x16u);
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = [a1[4] objectForKey:@"url"];
  if (v8)
  {
    [v8 setState:&off_100129848];
    v11 = @"updated";
    if (!v10)
    {
LABEL_15:
      v15 = [a1[4] objectForKey:@"md5HashStrings"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [v15 componentsJoinedByString:@", "];
        [v8 setMd5HashStrings:v16];
      }

      v17 = [a1[4] objectForKey:@"hashType"];
      [v8 setHashType:v17];

      v18 = [a1[4] objectForKey:@"numberOfBytesToHash"];
      if (v18)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || [v18 integerValue] <= 0)
        {
          v72 = objc_retainBlock(a1[6]);
          if (!v72)
          {
LABEL_90:

            goto LABEL_91;
          }

          v73 = sub_1000A8F44(28, 0, @"invalid numberOfBytesToHash");
          (*(v72 + 2))(v72, 0, v73);
LABEL_89:

          goto LABEL_90;
        }
      }

      v81 = v11;
      v98 = v18;
      v99 = v15;
      v101 = v10;
      objc_opt_class();
      v19 = [a1[4] objectForKeyedSubscript:@"fileExtention"];
      v20 = BUDynamicCast();

      if ([v20 length])
      {
        [v8 setFileExtension:v20];
      }

      objc_opt_class();
      v21 = [a1[4] objectForKeyedSubscript:@"epubRightsData"];
      v22 = BUDynamicCast();

      if (v22)
      {
        v23 = [a1[5] mq_writeSinf:v22 downloadID:v2];
        [v8 setEpubRightsPath:v23];
      }

      objc_opt_class();
      v24 = [a1[4] objectForKeyedSubscript:@"dpInfo"];
      v25 = BUDynamicCast();

      if (v25)
      {
        [v8 setDpInfo:v25];
      }

      v95 = v25;
      objc_opt_class();
      v26 = [a1[4] objectForKeyedSubscript:@"artworkURL"];
      v27 = BUDynamicCast();

      if ([v27 length])
      {
        v28 = [NSURL URLWithString:v27];
        v29 = [a1[5] mq_writeArtworkWithURL:v28 downloadID:v2];
        [v8 setArtworkPath:v29];
      }

      objc_opt_class();
      v30 = [a1[4] objectForKeyedSubscript:@"publicationVersion"];
      v31 = BUDynamicCast();

      if (v31)
      {
        [v8 setPublicationVersion:v31];
      }

      v93 = v31;
      objc_opt_class();
      v32 = [a1[4] objectForKeyedSubscript:@"isAutomaticDownload"];
      v33 = BUDynamicCast();

      if (v33)
      {
        [v8 setIsAutomaticDownload:v33];
      }

      v92 = v33;
      objc_opt_class();
      v34 = [a1[4] objectForKeyedSubscript:@"isRestore"];
      v35 = BUDynamicCast();

      if (v35)
      {
        [v8 setIsRestore:v35];
      }

      v91 = v35;
      objc_opt_class();
      v36 = [a1[4] objectForKeyedSubscript:@"downloadKey"];
      v37 = BUDynamicCast();

      if ([v37 length])
      {
        [v8 setDownloadKey:v37];
      }

      v90 = v37;
      objc_opt_class();
      v38 = [a1[4] objectForKeyedSubscript:@"assetFileSize"];
      v39 = BUDynamicCast();

      if (v39)
      {
        [v8 setSize:v39];
      }

      v89 = v39;
      objc_opt_class();
      v40 = [a1[4] objectForKeyedSubscript:@"isZipStreamable"];
      v41 = BUDynamicCast();

      if (v41)
      {
        [v8 setIsZipStreamable:v41];
      }

      v88 = v41;
      objc_opt_class();
      v42 = [a1[4] objectForKeyedSubscript:@"storeItemIdentifier"];
      v43 = BUDynamicCast();

      if (v43)
      {
        [v8 setStoreIdentifier:v43];
      }

      v87 = v43;
      objc_opt_class();
      v44 = [a1[4] objectForKeyedSubscript:@"artistName"];
      v45 = BUDynamicCast();

      if ([v45 length])
      {
        [v8 setArtistName:v45];
      }

      v86 = v45;
      objc_opt_class();
      v46 = [a1[4] objectForKeyedSubscript:@"title"];
      v47 = BUDynamicCast();

      if ([v47 length])
      {
        [v8 setTitle:v47];
      }

      v85 = v47;
      objc_opt_class();
      v48 = [a1[4] objectForKeyedSubscript:@"subtitle"];
      v49 = BUDynamicCast();

      if ([v49 length])
      {
        [v8 setSubtitle:v49];
      }

      v84 = v49;
      objc_opt_class();
      v50 = [a1[4] objectForKeyedSubscript:@"genre"];
      v51 = BUDynamicCast();

      if ([v51 length])
      {
        [v8 setGenre:v51];
      }

      v83 = v51;
      v94 = v27;
      objc_opt_class();
      v52 = [a1[4] objectForKeyedSubscript:@"kind"];
      v53 = BUDynamicCast();

      if ([v53 length])
      {
        [v8 setKind:v53];
      }

      v82 = v53;
      objc_opt_class();
      v54 = [a1[4] objectForKeyedSubscript:@"thumbnailImageURL"];
      v55 = BUDynamicCast();

      if ([v55 length])
      {
        [v8 setThumbnailImageURL:v55];
      }

      v96 = v22;
      objc_opt_class();
      v56 = [a1[4] objectForKeyedSubscript:@"md5HashStrings"];
      v57 = BUDynamicCast();

      if ([v57 length])
      {
        [v8 setMd5HashStrings:v57];
      }

      v100 = v2;
      objc_opt_class();
      v58 = [a1[4] objectForKeyedSubscript:@"numberOfBytesToHash"];
      v59 = BUDynamicCast();

      if (v59)
      {
        [v8 setNumberOfBytesToHash:v59];
      }

      v97 = v20;
      objc_opt_class();
      v60 = [a1[4] objectForKeyedSubscript:@"accountID"];
      v61 = BUDynamicCast();

      if (v61)
      {
        [v8 setAccountIdentifier:v61];
      }

      objc_opt_class();
      v62 = [a1[4] objectForKeyedSubscript:@"chunkSize"];
      v63 = BUDynamicCast();

      if (v63)
      {
        v64 = BLServiceDatabaseManagerLog();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v105 = v63;
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEBUG, "[Database]: We got chunkSize %@, do we want to do anything with this?", buf, 0xCu);
        }
      }

      v65 = *(a1[5] + 3);
      v102 = 0;
      [v65 save:&v102];
      v66 = v102;
      v67 = BLServiceDatabaseManagerLog();
      v68 = v67;
      if (v66)
      {
        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v105 = v66;
          _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "[Database]: Error encountered starting download. Error:  %@", buf, 0xCu);
        }

        v69 = objc_retainBlock(a1[6]);
        v70 = 0;
        if (!v69)
        {
          v71 = 0;
LABEL_88:

          v2 = v100;
          v10 = v101;
          v18 = v98;
          v15 = v99;
          v73 = v96;
          v72 = v97;
          goto LABEL_89;
        }

        v71 = v69;
      }

      else
      {
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          v74 = [v8 downloadID];
          *buf = 138543618;
          v105 = v74;
          v106 = 2114;
          v107 = v81;
          _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Database]: requestDownloadWithParameters - Download %{public}@", buf, 0x16u);
        }

        v71 = objc_retainBlock(a1[6]);
        if (!v71)
        {
          goto LABEL_88;
        }

        v70 = [v8 downloadID];
      }

      v75 = [v66 bldm_bookLibraryDatabaseErrorInFunction:"-[BLDatabaseManager requestDownloadWithParameters:completion:]_block_invoke"];
      (*(v71 + 2))(v71, v70, v75);

      if (!v66)
      {
      }

      goto LABEL_88;
    }

LABEL_14:
    [v8 setUrl:v10];
    goto LABEL_15;
  }

  v8 = [NSEntityDescription insertNewObjectForEntityForName:@"BLDownloadInfo" inManagedObjectContext:*(a1[5] + 3)];
  v12 = +[NSDate date];
  [v8 setStartTime:v12];

  v13 = +[NSUUID UUID];
  v14 = [v13 UUIDString];
  [v8 setDownloadID:v14];

  if (!v10)
  {
    v76 = objc_retainBlock(a1[6]);
    if (v76)
    {
      v77 = sub_1000A8F44(28, 0, @"expected to have a url");
      v76[2](v76, 0, v77);
    }

    v15 = BLBookInstallLog();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_86;
    }

    *buf = 0;
    v78 = "[Database]: expected to have a url to request a new download";
    goto LABEL_85;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 setState:&off_100129848];
    v11 = @"added";
    v2 = v14;
    goto LABEL_14;
  }

  v79 = objc_retainBlock(a1[6]);
  if (v79)
  {
    v80 = sub_1000A8F44(28, 0, @"string expected for url");
    v79[2](v79, 0, v80);
  }

  v15 = BLServiceDatabaseManagerLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v78 = "[Database]: string expected for url";
LABEL_85:
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v78, buf, 2u);
  }

LABEL_86:
  v2 = v14;
LABEL_91:
}

void sub_10007D044(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = objc_retainBlock(*(a1 + 40));
  v7 = v6;
  if (v6)
  {
    if (v9)
    {
      (*(v6 + 2))(v6);
    }

    else
    {
      v8 = [v5 objectForKeyedSubscript:*(a1 + 32)];
      (v7)[2](v7, v8);
    }
  }
}

void sub_10007D23C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(NSMutableDictionary);
  if (v6)
  {
    goto LABEL_37;
  }

  v8 = objc_alloc_init(NSMutableSet);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v35 = v5;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v44 objects:v53 count:16];
  v36 = a1;
  if (!v10)
  {

    v38 = 0;
    goto LABEL_23;
  }

  v11 = v10;
  v37 = 0;
  v12 = *v45;
  do
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v45 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v44 + 1) + 8 * i);
      v15 = [v14 downloadID];
      [v8 addObject:v15];
      v16 = [v14 state];
      v17 = [v16 integerValue];

      if ((v17 - 4) >= 0xD && v17 >= 2)
      {
        if ((v17 - 2) <= 1)
        {
          [v14 setState:&off_1001299C8];
          [v14 forceNonDiscretionary];
          v37 = 1;
        }
      }

      else
      {
        v19 = sub_1000A8F44(26, 0, @"cannot pause download that is not active");
        if (v19)
        {
          v20 = v19;
          [v7 setObject:v19 forKeyedSubscript:v15];
          goto LABEL_17;
        }
      }

      v20 = BLServiceDatabaseManagerLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v49 = v15;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Database]: Download paused.", buf, 0xCu);
      }

LABEL_17:
    }

    v11 = [v9 countByEnumeratingWithState:&v44 objects:v53 count:16];
  }

  while (v11);

  if (v37)
  {
    a1 = v36;
    v21 = *(*(v36 + 32) + 24);
    v43 = 0;
    [v21 save:&v43];
    v38 = v43;
  }

  else
  {
    v38 = 0;
    a1 = v36;
  }

LABEL_23:
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v22 = *(a1 + 40);
  v23 = [v22 countByEnumeratingWithState:&v39 objects:v52 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v40;
    do
    {
      for (j = 0; j != v24; j = j + 1)
      {
        if (*v40 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v39 + 1) + 8 * j);
        if (([v8 containsObject:v27] & 1) == 0)
        {
          v28 = sub_1000A8F44(38, 0, @"missing download");
          [v7 setObject:v28 forKeyedSubscript:v27];
        }

        v29 = [v7 objectForKeyedSubscript:v27];
        if (v29)
        {
          v30 = BLServiceDatabaseManagerLog();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v49 = v27;
            v50 = 2112;
            v51 = v29;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Database]: Error encountered trying to pause download. Error:  %@", buf, 0x16u);
          }
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v39 objects:v52 count:16];
    }

    while (v24);
  }

  v5 = v35;
  a1 = v36;
  v6 = v38;
  if (v38)
  {
LABEL_37:
    v31 = BLServiceDatabaseManagerLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = *(a1 + 40);
      *buf = 138412546;
      v49 = v32;
      v50 = 2112;
      v51 = v6;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "[Database]: Error encountered trying to pause downloads: %@. Error:  %@", buf, 0x16u);
    }
  }

  v33 = objc_retainBlock(*(a1 + 48));
  v34 = v33;
  if (v33)
  {
    (*(v33 + 2))(v33, v6, v7);
  }
}

void sub_10007D804(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    goto LABEL_28;
  }

  v8 = BLDownloadKindAudiobook;
  v9 = [v5 kind];
  v10 = [v8 isEqualToString:v9];

  v11 = [v5 state];
  v12 = [v11 integerValue];

  if (v12 <= 0x10)
  {
    if (((1 << v12) & 0xF980) != 0)
    {
      if (v10)
      {
        v13 = BLServiceDatabaseManagerLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(a1 + 32);
          v15 = [v5 state];
          [v15 integerValue];
          v16 = NSStringFromBLDownloadState();
          *buf = 138543618;
          v65 = v14;
          v66 = 2114;
          v67 = v16;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Database]: Setting cleanupPending for download because current state is %{public}@", buf, 0x16u);
        }

        [v5 setCleanupPending:&__kCFBooleanTrue];
        v17 = *(*(a1 + 40) + 24);
        v61 = 0;
        v18 = &v61;
        [v17 save:&v61];
        v19 = 0;
LABEL_14:
        v7 = *v18;
LABEL_22:
        v30 = 0;
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (((1 << v12) & 0x10200) != 0)
    {
      if (v10)
      {
        v20 = BLServiceDatabaseManagerLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(a1 + 32);
          v22 = [v5 state];
          [v22 integerValue];
          v23 = NSStringFromBLDownloadState();
          *buf = 138543618;
          v65 = v21;
          v66 = 2114;
          v67 = v23;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Database]: Canceling download and doing cleanup because current state is %{public}@", buf, 0x16u);
        }

        [v5 setState:&off_1001298C0];
        v24 = *(*(a1 + 40) + 24);
        v62 = 0;
        v18 = &v62;
        [v24 save:&v62];
        v19 = 1;
        goto LABEL_14;
      }

LABEL_15:
      v7 = 0;
LABEL_27:
      v42 = sub_1000A8F44(26, 0, @"cannot cancel download that is not active or paused");

      v7 = v42;
      goto LABEL_28;
    }

    if (v12 == 10)
    {
      goto LABEL_18;
    }
  }

  if (v12 < 5)
  {
LABEL_18:
    v25 = BLServiceDatabaseManagerLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(a1 + 32);
      v27 = [v5 state];
      [v27 integerValue];
      v28 = NSStringFromBLDownloadState();
      *buf = 138543618;
      v65 = v26;
      v66 = 2112;
      v67 = v28;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Database]: Canceling download and doing cleanup because current state is %{pubilc}@", buf, 0x16u);
    }

    [v5 setState:&off_1001298C0];
    [v5 forceNonDiscretionary];
    v29 = *(*(a1 + 40) + 24);
    v63 = 0;
    [v29 save:&v63];
    v7 = v63;
    v19 = 1;
LABEL_21:
    if ((v10 & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_22;
  }

  if (v12 - 5 >= 2)
  {
    v19 = 0;
    v7 = 0;
    goto LABEL_21;
  }

  v53 = BLServiceDatabaseManagerLog();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    v54 = *(a1 + 32);
    v55 = [v5 state];
    [v55 integerValue];
    v56 = NSStringFromBLDownloadState();
    *buf = 138543618;
    v65 = v54;
    v66 = 2114;
    v67 = v56;
    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Database]: Setting error trying to cancel download because current state is %{public}@", buf, 0x16u);
  }

  v7 = 0;
  if ((v10 & 1) == 0)
  {
    goto LABEL_27;
  }

  v19 = 0;
  v30 = 1;
LABEL_23:
  v31 = [v5 storePlaylistIdentifier];
  v32 = [NSPredicate predicateWithFormat:@"%K == %@", @"storePlaylistIdentifier", v31];
  v33 = objc_alloc_init(NSMutableArray);
  v34 = *(a1 + 40);
  v35 = *(v34 + 24);
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_10007DE88;
  v57[3] = &unk_10011D0C8;
  v58 = v32;
  v59 = v34;
  v36 = v33;
  v60 = v36;
  v37 = v32;
  [v35 performBlockAndWait:v57];
  v38 = [v5 storeIdentifier];
  if (v19)
  {
    [v36 removeObject:v38];
  }

  else
  {
    [v36 addObject:v38];
  }

  v39 = [v5 kind];
  v40 = [v5 permlink];
  v41 = [BLAssetContainerFactory assetContainerForDownloadKind:v39 isPermlink:v40 != 0];

  [v41 cancelPurchasesWithMetadata:v31 subitemsToIgnore:v36];
  if (v30)
  {
    goto LABEL_27;
  }

LABEL_28:
  v43 = BLServiceDatabaseManagerLog();
  v44 = v43;
  if (v7)
  {
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    v45 = *(a1 + 32);
    *buf = 138543618;
    v65 = v45;
    v66 = 2112;
    v67 = v7;
    v46 = "(dID=%{public}@) [Database]: Error encountered canceling download. Error:  %@";
    v47 = v44;
    v48 = OS_LOG_TYPE_ERROR;
    v49 = 22;
  }

  else
  {
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    v50 = *(a1 + 32);
    *buf = 138543362;
    v65 = v50;
    v46 = "(dID=%{public}@) [Database]: Download canceled.";
    v47 = v44;
    v48 = OS_LOG_TYPE_DEFAULT;
    v49 = 12;
  }

  _os_log_impl(&_mh_execute_header, v47, v48, v46, buf, v49);
LABEL_34:

  v51 = objc_retainBlock(*(a1 + 48));
  v52 = v51;
  if (v51)
  {
    (*(v51 + 2))(v51, v7);
  }
}

void sub_10007DE88(void *a1)
{
  v2 = [NSFetchRequest fetchRequestWithEntityName:@"BLDownloadInfo"];
  [v2 setPredicate:a1[4]];
  v20 = @"storeIdentifier";
  v3 = [NSArray arrayWithObjects:&v20 count:1];
  [v2 setPropertiesToFetch:v3];

  v4 = *(a1[5] + 24);
  v18 = 0;
  v5 = [v4 executeFetchRequest:v2 error:&v18];
  v6 = v18;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = a1[6];
        v13 = [*(*(&v14 + 1) + 8 * v11) storeIdentifier];
        [v12 addObject:v13];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v9);
  }
}