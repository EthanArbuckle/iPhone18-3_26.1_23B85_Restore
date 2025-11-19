uint64_t sub_22D33BAE8()
{
  v3 = (*(v1 + 8 * (v0 ^ 0xA4D)))();
  LODWORD(STACK[0x5A0]) = v2;
  return (*(v1 + 8 * ((1786 * (v2 == (((v0 - 338) | 0x224) ^ 0xB4D42AA9))) ^ v0)))(v3);
}

uint64_t sub_22D33BC68()
{
  v2 = STACK[0x340] - 769;
  v3 = STACK[0x530];
  STACK[0x458] = *(v1 + 8 * (STACK[0x340] - 877));
  v4 = STACK[0x2D8];
  STACK[0x5A8] = v3;
  LODWORD(STACK[0x5B4]) = 431643076;
  STACK[0x4C8] = v4;
  return (*(v1 + 8 * ((11 * ((((v2 + 457) ^ ((((v2 + 98) | 0x280) ^ 0xE645A595) + 431643076 + (*(v3 + 68) & 0x3F) < 0xFFFFFFC0)) & 1) == 0)) ^ v2)))();
}

void sub_22D33BD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  *v37 = (v34 ^ v35) + 646901423 + (((a29 - v34) | (v34 - a29)) >> 31);
  (*(v36 + 8 * (v34 + 2207)))(a34);
  JUMPOUT(0x22D33BD6CLL);
}

uint64_t sub_22D33BF38(int a1, unint64_t a2)
{
  v8 = (v5 - 1) & 0xF;
  v9 = 1 - v6;
  v11 = a2 >= 0x10 && (1 - v6 + v4 - v5 + v8) >= 0x10 && v9 + v2 - v5 + v8 >= ((241 * (((a1 - 945) | 0x186) ^ 0x1E4u)) ^ 0x2C3uLL);
  v12 = v9 + v3 - v5 + v8;
  v14 = !v11 || v12 < 0x10;
  return (*(v7 + 8 * (a1 | (32 * v14))))();
}

uint64_t sub_22D33BFD8()
{
  v7 = (v4 - 931);
  v8 = STACK[0x2E0];
  v9 = 7 * (v7 ^ 0x8A);
  *v5 = v1 + 1 + v7 + ((((v7 ^ 1) - ((~(v4 + 4187) + v1) ^ (v1 - v7 - 5119))) | (~(v4 + 4187) + v1)) >> 63);
  v10 = (v0 >> ((7 * ((v4 + 93) ^ 0x8A)) ^ 0xC6)) ^ v0;
  LODWORD(v7) = (((v10 << 7) & 0x9D2C5680 ^ v10) << 15) & 0xEFC60000 ^ (v10 << 7) & 0x9D2C5680 ^ v10;
  v11 = (v6 + (v8 - 1));
  v12 = ((*(*STACK[0x300] + (*STACK[0x308] & 0x7876189C)) ^ v11) & 0x7FFFFFFF) * ((v9 ^ 0x242) + 833381326);
  v13 = 833381725 * (v12 ^ HIWORD(v12));
  v14 = v13 >> (((v9 + 51) | 8) ^ 0x10u);
  v15 = *(*(v3 + 8 * (v9 ^ 0x3F4)) + v14 - 4);
  v16 = *(*(v3 + 8 * (v9 ^ 0x36C)) + v14 - 3);
  v17 = *(*(v3 + 8 * (v9 - 876)) + v14 - 3);
  LOBYTE(v14) = -101 * v14;
  *v11 = v14 ^ v15 ^ v7 ^ (v7 >> 18) ^ v16 ^ v17 ^ v13;
  return (*(v2 + 8 * ((1250 * (v8 == ((v15 ^ v7 ^ (v7 >> 18) ^ v16 ^ v17 ^ v13) != v14))) ^ v9)))();
}

uint64_t sub_22D33C2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(STACK[0x228] + 360) = v7;
  v13 = (*(v8 + 8 * (v6 + 1365)))(v10, 2, &STACK[0x3EC], v11, (v9 - 1657355148), a6, &STACK[0x3D0], &STACK[0x56C]);
  v16 = STACK[0x340];
  if (v13 == 268435459)
  {
    LODWORD(STACK[0x52C]) = 1261138485;
    return (*(v8 + 8 * (((STACK[0x3D0] == 0) * (v16 - 152 + ((v16 - 1289612341) & 0x4CDDECDB) - 1384)) ^ (v16 - 193))))(v13, STACK[0x3D0], v14, v15);
  }

  else
  {
    if (!v13)
    {
      STACK[0x220] = STACK[0x4F8];
      JUMPOUT(0x22D33C39CLL);
    }

    v18 = 1785193651 * ((v12 - 216) ^ 0x13DCEC20);
    *(v12 - 216) = &STACK[0x52C];
    *(v12 - 208) = -1261164275 - v18 + v13 - ((2 * v13) & 0x69A8521A);
    *(v12 - 204) = v16 - v18 - 536;
    v19 = (*(v8 + 8 * (v16 + 1328)))(v12 - 216);
    return (*(v8 + 8 * (((STACK[0x3D0] == 0) * (v16 - 152 + ((v16 - 1289612341) & 0x4CDDECDB) - 1384)) ^ (v16 - 193))))(v19);
  }
}

uint64_t sub_22D33CA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  *(v24 - 144) = v20;
  *(v24 - 136) = &a18;
  *(v24 - 128) = &a18;
  *(v24 - 120) = v23;
  *(v24 - 112) = v19 + 1082434553 * ((~((v24 - 144) | 0x284CBA82) + ((v24 - 144) & 0x284CBA82)) ^ 0x4CF4B3F7) + 941;
  (*(v18 + 8 * (v19 ^ 0xB37)))(v24 - 144);
  v25 = ((v24 - 144) ^ 0xAF278218) * v21;
  *(v24 - 136) = a13;
  *(v24 - 144) = v25 + v19 - 465;
  *(v24 - 128) = (v22 + 718823040) ^ v25;
  v26 = (*(v18 + 8 * (v19 ^ 0xB3F)))(v24 - 144);
  return (*(v18 + 8 * ((31 * (*(v24 - 140) != 262715241)) ^ v19)))(v26);
}

uint64_t sub_22D33CFE0(unint64_t a1)
{
  STACK[0x4F8] = v4 - 64;
  STACK[0x3B0] = a1;
  return (*(v2 + 8 * (((((v1 ^ 0x19F) - 2033253309) & 0x7930FBFF ^ 0x23B) * (v3 <= a1)) ^ v1 ^ 0x19F)))();
}

uint64_t sub_22D33D0A8@<X0>(int a1@<W8>, uint64_t a2, int a3, uint64_t *a4, uint64_t a5, unsigned int a6, int a7)
{
  v12 = v7 ^ 0x603;
  v13 = (((&a3 ^ 0x7E01F7D5 | 0x63477B2D) - (&a3 ^ 0x7E01F7D5) + ((&a3 ^ 0x7E01F7D5) & 0x9CB884D0)) ^ 0xE9A60D8) * a1;
  a3 = v10 - v13 - 766750113;
  a6 = 2017451246 - v13;
  a7 = (v7 ^ 0x603) - v13 - 823;
  a4 = &a2;
  a5 = v8;
  v14 = (*(v9 + 8 * ((v7 ^ 0x603) + 1105)))(&a3);
  return (*(v9 + 8 * (((*(v8 + 24) == ((v12 - 1193863313) & 0x4728EC4F) + v11) * (((v12 - 1159) | 0x6A0) - 1160)) ^ v12)))(v14);
}

uint64_t sub_22D33D260(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = (v5 ^ 0x67) & (2 * ((((a4 + 57) & 0xB9) + 59) & v5)) ^ (((a4 + 57) & 0xB9) + 59) & v5;
  v7 = ((2 * (((a4 ^ 0x56) - 105) ^ v5)) ^ 0xA6) & (((a4 ^ 0x56) - 105) ^ v5) ^ (2 * (((a4 ^ 0x56) - 105) ^ v5)) & 0xD2;
  v8 = (v5 ^ (2 * (v7 & (4 * v6) ^ v6 ^ 0xD3 ^ (((4 * (v7 ^ 0x51)) ^ 0x40) & (v7 ^ 0x51) ^ (4 * (v7 ^ 0x51)) & 0xD0 ^ 0x10) & (16 * (v7 & (4 * v6) ^ v6))))) & 0x7F;
  v10 = v8 != 82 && (v8 ^ 0x52u) < 5;
  return (*(v4 + 8 * ((1664 * v10) ^ a4)))();
}

uint64_t sub_22D33D350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, _DWORD **a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  v60 = 131 * (v57 ^ 0x774FCCCEu);
  v61 = *a28;
  if ((*a28 & 3) != ((((v57 - 1730071740) | 0x49401141u) - 1500581963) ^ v60) || (v62 = *(&off_28407CFD0 + v57 - 2001718304), v64 = *(v62 - 4), v63 = (v62 - 4), v64))
  {
    JUMPOUT(0x22D314A28);
  }

  *v63 = v61;
  **(&off_28407CFD0 + (v60 ^ 0x14E)) = 255;
  *v61 |= ~v61[*v61 & 0x3ELL] << 16;
  v61[4] |= ~v61[v61[4] & 0x3ELL] << 16;
  v61[8] |= ~v61[v61[8] & ((524 * (v57 ^ 0x774FCCCE)) ^ 0x426)] << 16;
  v61[12] |= ~v61[v61[12] & 0x3ELL] << 16;
  v61[16] |= ~v61[v61[16] & 0x3ELL] << 16;
  v61[20] |= ~v61[v61[20] & 0x3ELL] << 16;
  v61[24] |= ~v61[v61[24] & 0x3ELL] << 16;
  v61[28] |= ~v61[v61[28] & 0x3ELL] << 16;
  v61[32] |= ~v61[v61[32] & 0x3ELL] << 16;
  v61[36] |= ~v61[v61[36] & 0x3ELL] << 16;
  v61[40] |= ~v61[v61[40] & 0x3ELL] << 16;
  v65 = (524 * (v57 ^ 0x774FCCCE)) ^ 0x7E4;
  v61[44] |= ~v61[v61[44] & 0x3ELL] << 16;
  v61[48] |= ~v61[v61[48] & 0x3ELL] << 16;
  v61[52] |= ~v61[v61[52] & 0x3ELL] << 16;
  v61[56] |= ~v61[v61[56] & 0x3ELL] << 16;
  v61[60] |= ~v61[v61[60] & 0x3ELL] << 16;
  v66 = (*(v58 + 8 * (v60 ^ 0x9B4)))(&a57, 0, 1024);
  *(v59 - 176) = &a57;
  return (*(v58 + 8 * (((((v65 - 1016) | 0x102) == 262) * ((v65 - 1016) ^ 0x7F7)) ^ v65)))(v66);
}

uint64_t sub_22D33D6FC()
{
  (*(v0 + 8 * SLODWORD(STACK[0x238])))(STACK[0x248] + STACK[0x250], 0x100004077774924);
  v3 = (*(v0 + 8 * SLODWORD(STACK[0x240])))();
  *v2 = v3;
  v2[1] = 1812433253 * (v3 ^ (v3 >> 30)) + 1;
  return (*(v0 + 8 * ((v1 + 808) | 0x11)))();
}

void sub_22D33D7C0(uint64_t a1)
{
  v3 = *(*(a1 + 8) + 4) == 1726767306 || *(*(a1 + 16) + 4) == 1726767306;
  v1 = *a1 - 143681137 * ((-2 - ((a1 | 0x88C5EE65) + (~a1 | 0x773A119A))) ^ 0xA39D0DC0);
  __asm { BRAA            X13, X17 }
}

void sub_22D33D9C4()
{
  STACK[0x570] = v0;
  STACK[0x498] = v3;
  STACK[0x488] = *(v2 + 8 * v1);
  JUMPOUT(0x22D33DA60);
}

uint64_t sub_22D33DB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, _DWORD *a38)
{
  v43 = v38 ^ 0x59711216;
  v44 = (*(v39 + 8 * (v38 + 1442)))(a38 + 4, 0);
  v45 = a38[4];
  a38[1] = a38[6] - 137021560 - ((2 * a38[6]) & 0xEFAA6F10);
  a38[2] = v45 - 137021560 - ((v45 << (v40 + (v38 ^ 0x16) - 110)) & 0xEFAA6F10);
  v46 = v38 + 1405;
  v47 = (*(v39 + 8 * v46))(v44);
  a38[3] = v47 - 137021560 - ((2 * v47) & 0xEFAA6F10);
  v48 = (*(v39 + 8 * v46))();
  *a38 = v48 - 137021560 - ((2 * v48) & 0xEFAA6F10);
  v49 = (1664525 * (*v41 ^ (*v41 >> 30))) ^ v41[1];
  v41[1] = (((*a38 ^ 0x424EC0A6) - 1112457382) ^ ((*a38 ^ 0x630414B9) - 1661211833) ^ ((*a38 ^ 0xD69FE397) + 694164585)) + 1463569522 + (((v49 ^ 0x4DFF9099) - 311985267) ^ ((v49 ^ 0xB83184EA) + 413757440) ^ ((v49 ^ 0xF5CE1473) + 1431764839));
  v50 = 143681137 * ((((v42 - 152) | 0xB809F511CAD0E9AALL) - ((v42 - 152) & 0xB809F511CAD0E9AALL)) ^ 0xA97177161E77F5F0);
  *(v42 - 124) = v50 ^ (v43 - 1085586375) ^ 0x19;
  *(v42 - 120) = v50 + v43 - 288126657;
  *(v42 - 128) = -143681137 * ((((v42 - 152) | 0xCAD0E9AA) - ((v42 - 152) & 0xCAD0E9AA)) ^ 0x1E77F5F0);
  v51 = v42 - 176;
  *(v51 + 64) = v50 + 623;
  *(v51 + 32) = 2 - v50;
  *(v42 - 132) = v43 - 1085586375 - v50;
  *(v42 - 152) = ((v43 - 1085586375) ^ 0x65) - v50;
  v52 = (*(v39 + 8 * (v43 ^ 0x597119E5)))(v42 - 152);
  return (*(v39 + 8 * *(v42 - 136)))(v52);
}

uint64_t sub_22D33DEA0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v9 = ((a6 + 210) ^ (v6 - 295)) - a2 + ((a6 + 1835141457) & 0x929DF7F7);
  if (v7 > v9)
  {
    v9 = v7;
  }

  return (*(v8 + 8 * ((35 * ((v9 + 1) > 0x23)) ^ a6)))();
}

void sub_22D33E060(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v9 = v8 - 1159;
  v10 = ((v6 & (v7 + 1)) << (v8 ^ 0xE1)) & (v6 ^ 0x9BF9154C) ^ v6 & (v7 + 1);
  v11 = ((2 * (v6 ^ 0xAB7A3708)) ^ 0x61374CCC) & (v6 ^ 0xAB7A3708) ^ (2 * (v6 ^ 0xAB7A3708)) & 0x309BA666;
  v12 = (v11 ^ 0x20022442) & (4 * v10) ^ v10;
  v13 = ((4 * (v11 ^ 0x1088A222)) ^ 0xC26E9998) & (v11 ^ 0x1088A222) ^ (4 * (v11 ^ 0x1088A222)) & 0x309BA664;
  v14 = (v13 ^ 0xA8006) & (16 * v12) ^ v12;
  v15 = ((16 * (v13 ^ 0x30912666)) ^ 0x9BA6660) & (v13 ^ 0x30912666) ^ (16 * (v13 ^ 0x30912666)) & 0x309BA660;
  v16 = v14 ^ 0x309BA666 ^ (v15 ^ 0x9A2606) & (v14 << 8);
  v17 = (v16 << 16) & 0x309B0000 ^ v16 ^ ((v16 << 16) ^ 0x26660000) & (((v15 ^ 0x30018006) << 8) & 0x309B0000 ^ 0x20190000 ^ (((v15 ^ 0x30018006) << 8) ^ 0x1BA60000) & (v15 ^ 0x30018006));
  v18 = 143681137 * (((&a3 | 0xB54DF19E) - &a3 + (&a3 & 0x4AB20E60)) ^ 0x61EAEDC4);
  a4 = v9 - v18 + 259;
  a5 = v6 ^ v18 ^ (2 * v17) ^ 0x189A2EBF;
  a3 = a1;
  (*(v5 + 8 * (v9 + 1468)))(&a3);
  JUMPOUT(0x22D33E218);
}

void sub_22D33E2D0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4, int a5, unsigned int a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = v9 - (**(a2 + 8) == 0);
  *(*(a1 + 96) + 800) = 64;
  *(*(a1 + 96) + 804) = 1726767306;
  *(*(a1 + 96) + 808) = *(a1 + 96) + 816;
  v11 = *(a1 + 96) + 800;
  v12 = *(a2 + 8) + (*(a2 + 4) - v10);
  v13 = 50899313 * (((&a5 | 0x90BB7DB) - &a5 + (&a5 & 0xF6F44820)) ^ 0xC16A738D);
  a6 = v13 + v10 + 210866775;
  a9 = v13 ^ 0x2D7;
  a7 = v11;
  a8 = v12;
  (*(a3 + 18296))(&a5);
  JUMPOUT(0x22D346DCCLL);
}

uint64_t sub_22D33E468@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W3>, char a4@<W5>, uint64_t a5@<X8>)
{
  v11 = v8 - 1;
  *(a1 + v11) = *(v10 + v11) ^ *(v6 + ((v7 ^ 0xEE ^ a2) & v11)) ^ *(((v7 ^ 0xEE ^ a2) & v11) + a5 + 2) ^ *(v5 + ((v7 ^ 0xEE ^ a2) & v11)) ^ (125 * ((v7 ^ 0xEE ^ a2) & v11)) ^ a4;
  return (*(v9 + 8 * (((v11 == 0) * a3) ^ v7)))();
}

uint64_t sub_22D33E5AC()
{
  v4 = STACK[0x280];
  (*(v0 + 8 * (v1 + 1056)))(*STACK[0x280], v2, 2048);
  v5 = *(v0 + 8 * ((983 * ((*(v0 + 8 * (v1 + 1077)))(*v4, &STACK[0x560], LODWORD(STACK[0x43C]) + ((4 * v1) ^ 0x1138 ^ (v3 + 860)), 1) == ((v1 + 371) ^ 0x61A))) ^ v1));
  return v5();
}

uint64_t sub_22D33E68C@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W8>)
{
  v10 = (v9 + 4 * v5);
  v11 = v5 + 1;
  *v10 = v10[397] ^ v6 ^ *(a1 + 4 * (*(v9 + 4 * v11) & 1)) ^ ((*(v9 + 4 * v11) & 0x7FFFFFFE | (v8 + (a2 ^ (2 * a4)) + 2) & v4) >> 1);
  return (*(v7 + 8 * (((v11 == 227) * a3) | a4)))();
}

uint64_t sub_22D33E7A4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, int a15, unsigned int a16)
{
  if (a16 < 0x8950F594 != a13 - 1991182892 < ((283 * (((v17 + a4 + 2052) | 0x23) ^ 0x82D)) ^ 0x8950F7A2))
  {
    v18 = a13 - 1991182892 < ((283 * (((v17 + a4 + 2052) | 0x23) ^ 0x82D)) ^ 0x8950F7A2);
  }

  else
  {
    v18 = a13 - 1991182892 > a16;
  }

  return (*(v16 + 8 * ((28 * !v18) ^ (v17 + a4 + 1636))))();
}

uint64_t sub_22D33E7D0@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, char a4@<W3>, int a5@<W4>, int a6@<W5>, unsigned int a7@<W8>)
{
  v13 = a1 < a3;
  *(a2 + a7) = *(v12 + v7) - (a4 & (2 * *(v12 + v7))) + 50;
  if (v13 == v7 + 1 > v10)
  {
    v13 = v9 + v7 + 16 < a1;
  }

  return (*(v11 + 8 * ((v13 * ((5 * (v8 ^ a5)) ^ a6)) ^ v8)))();
}

uint64_t sub_22D33E838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, unsigned int a16, int a17, int a18, uint64_t a19, char *a20, int a21)
{
  v24 = 742307843 * ((((&a16 | 0x73D98D6A) ^ 0xFFFFFFFE) - (~&a16 | 0x8C267295)) ^ 0x9204FFC0);
  a19 = a13;
  a20 = &a14;
  a21 = v24 ^ 0x20384770;
  a16 = v24 - 1023075469;
  a18 = v23 - v24 - 1197044029;
  v25 = (*(v22 + 8 * (v23 ^ 0xE83)))(&a16);
  return (*(v22 + 8 * (((a17 == v21 + (v23 ^ 0x651) + 1187 - 1189) * ((233 * (v23 ^ 0x651)) ^ 0x102)) ^ v23)))(v25);
}

uint64_t sub_22D33E910()
{
  v6 = (v2 - 32);
  v7 = (v3 - 32);
  v8 = *v7;
  *(v6 - 1) = *(v7 - 1);
  *v6 = v8;
  return (*(v5 + 8 * (((v1 == 32) * v4) ^ v0)))();
}

uint64_t sub_22D33E920()
{
  v4 = v0 + 343609241 + (v3 ^ 0x721);
  v5 = (v2 + 1157295663 < ((v3 + 121) ^ 0x57AB95AEu)) ^ (v4 < 0x57AB933F);
  v6 = v2 + 1157295663 > v4;
  if (v5)
  {
    v6 = v2 + 1157295663 < ((v3 + 121) ^ 0x57AB95AEu);
  }

  return (*(v1 + 8 * ((84 * v6) ^ v3)))();
}

uint64_t sub_22D33EA78@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, _BYTE *a59)
{
  STACK[0x460] = 0;
  LODWORD(STACK[0x55C]) = 1657355148;
  STACK[0x358] = 0;
  LODWORD(STACK[0x38C]) = 1657355148;
  return (*(v59 + 8 * ((101 * ((*(*(&off_28407CFD0 + a1 - 531) - 4) ^ *a59) != (((((a1 - 116) & 0xFE) - 52) | 0x84) + 119))) ^ (a1 + 503622796) & 0xE1FB57FE)))();
}

uint64_t sub_22D33EB30@<X0>(int a1@<W1>, int a2@<W4>, unsigned int a3@<W8>)
{
  v11 = (v7 >> (((v9 + 117) | 0x3C) ^ 0x5Du)) + HIDWORD(v4) + (*(v10 + 4 * v3) ^ a3);
  *(v10 + 4 * a2) = v11 + a3 - (a1 & (2 * v11));
  *(v10 + 4 * v3) = HIDWORD(v11) + a3 - ((HIDWORD(v11) << ((v9 ^ 0xDC) - 15)) & 2);
  return (*(v8 + 8 * (v9 ^ (1709 * (v6 + 1 == v5)))))();
}

uint64_t sub_22D33EC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t *a14, unsigned int a15)
{
  a15 = 2066391179 * ((353659347 - (&a13 ^ 0x20FBA84F | 0x151469D3) + (&a13 ^ 0x20FBA84F | 0xEAEB962C)) ^ 0x6537BC7B) + 668;
  a14 = &a9;
  v18 = (*(v15 + 18424))(&a13);
  return (*(v15 + 8 * ((1880 * (a13 == v17)) ^ v16)))(v18);
}

uint64_t sub_22D33EE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, int a54)
{
  STACK[0x308] = v55;
  v56 = STACK[0x340] + 247;
  v57 = STACK[0x42C];
  v58 = (v57 ^ 0x1C898455) & (2 * (v57 & a6)) ^ v57 & a6;
  v59 = ((2 * (a54 ^ v57)) ^ 0x419FA84A) & (a54 ^ v57) ^ (2 * (a54 ^ v57)) & 0xA0CFD424;
  v60 = v59 ^ 0xA0405425;
  v61 = (v59 ^ 0xF9424) & (4 * v58) ^ v58;
  v62 = ((4 * v60) ^ 0x833F5094) & v60 ^ (4 * v60) & 0xA0CFD424;
  v63 = (v62 ^ 0x800F5000) & (16 * v61) ^ v61;
  v64 = ((16 * (v62 ^ 0x20C08421)) ^ 0xCFD4250) & (v62 ^ 0x20C08421) ^ (16 * (v62 ^ 0x20C08421)) & 0xA0CFD420;
  v65 = v63 ^ 0xA0CFD425 ^ (v64 ^ 0xCD4000) & (v63 << 8);
  *(STACK[0x5C8] + 4 * (((LODWORD(STACK[0x42C]) ^ (2 * ((v65 << 16) & 0x20CF0000 ^ v65 ^ ((v65 << 16) ^ 0x54250000) & (((v64 ^ 0xA0029425) << 8) & 0x20CF0000 ^ 0x200B0000 ^ (((v64 ^ 0xA0029425) << 8) ^ 0x4FD40000) & (v64 ^ 0xA0029425))))) >> 2) ^ 0x37561E06)) = v54;
  return sub_22D3111D8(a6, v56);
}

uint64_t sub_22D33F434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, int a50)
{
  v52 = STACK[0x530];
  STACK[0x458] = *(v51 + 8 * (STACK[0x340] - 914));
  v53 = STACK[0x2C8];
  STACK[0x5A8] = v52;
  LODWORD(STACK[0x5B4]) = 431643076;
  STACK[0x4C8] = v53;
  return (*(v51 + 8 * ((11 * (((((a50 & 0x486D30AB) + 457) ^ (((((a50 & 0x486D30AB) + 98) | 0x280) ^ 0xE645A595) + 431643076 + (*(v52 + 68) & 0x3F) < 0xFFFFFFC0)) & 1) == 0)) ^ a50 & 0x486D30AB)))();
}

uint64_t sub_22D33F4E0(uint64_t a1, int a2)
{
  v8 = a1 - 1;
  *(v7 + v8) = *(v2 + v8) ^ *(v3 + (v8 & 0xF)) ^ *((v8 & 0xF) + v4 + 5) ^ (89 * (v8 & 0xF)) ^ *((v8 & 0xF) + v5 + 2) ^ 0x32;
  return (*(v6 + 8 * ((477 * (v8 == ((a2 - 1106790071) & 0x41F847FF) - 1968)) ^ (a2 + 138))))();
}

void sub_22D33F710(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v30 = a1 - 858;
  *v29 = v30 ^ v27 ^ 0xD9711151 | (((a14 - v30) | (v30 - a14)) >> 31);
  (*(v28 + 8 * (v30 + 2207)))(a27);
  vld1q_dup_f32(v29);
  JUMPOUT(0x22D33F7CCLL);
}

void sub_22D33FC60(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = ((2 * v5) & 0x148) + 261815264 + ((((a4 - 147) | 0x91) - 75519789) ^ v5);
  v7 = (((v6 ^ 0x899A8F2B) + 2105530961) ^ v6 ^ ((v6 ^ 0xA9E1DD0) + ((a4 - 1047) ^ 0xFE7B4910)) ^ ((v6 ^ 0x77F87300) - 2095241604) ^ ((v6 ^ 0xFFE64B7F) + 184753669)) == 186296964;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_22D33FE4C@<X0>(int a1@<W8>, int8x16_t a2@<Q0>, int8x16_t a3@<Q1>, int8x16_t a4@<Q2>, int8x16_t a5@<Q3>, int8x16_t a6@<Q4>, int8x16_t a7@<Q5>, int8x16_t a8@<Q6>, int8x16_t a9@<Q7>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int8x16_t a32, int8x16_t a33, uint64_t a34, uint64_t a35, int8x16_t a36, int8x16_t a37)
{
  v46 = (v44 + (v41 + a1));
  v47 = veorq_s8(*(v38 + v41), *v46);
  v48 = veorq_s8(*(v38 + v41 + 16), v46[1]);
  return (*(v45 + 8 * ((((v40 ^ v43) + v41 == v39) * v42) ^ v37)))(vorrq_s8(vqtbl1q_s8(v47, a37), a2), vorrq_s8(vqtbl1q_s8(v47, a36), a3), vorrq_s8(vqtbl1q_s8(v47, a33), a4), vorrq_s8(vqtbl1q_s8(v47, a32), a5), vorrq_s8(vqtbl1q_s8(v48, a37), a6), vorrq_s8(vqtbl1q_s8(v48, a33), a7), vorrq_s8(vqtbl1q_s8(v48, a36), a8), vorrq_s8(vqtbl1q_s8(v48, a32), a9));
}

uint64_t sub_22D33FEDC()
{
  v3 = v1 & 0x7F345CCF;
  v5 = (v0 - 1) < 0x10 && ((v0 - 1) & 0xFu) >= ((v0 - 1) & 0xFu);
  return (*(v2 + 8 * ((((v3 ^ 0x1EE) + ((v3 - 1368939737) & 0x51985E77) - 2933) * v5) ^ v3)))();
}

uint64_t sub_22D33FF44(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = 742307843 * ((((2 * a1) | 0x3FF67EDE) - a1 - 536559471) ^ 0x1D9B23A);
  v3 = *(a1 + 28) - v2;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 32);
  v7 = *a1;
  v8 = 1564307779 * ((&v10 & 0x7E0B0214 | ~(&v10 | 0x7E0B0214)) ^ 0x16F931F8);
  v13 = (v2 + *(a1 + 24) + 256520413) ^ v8;
  v16 = v5;
  v10 = v4;
  v12 = v7;
  v14 = v6;
  v15 = v3 + v8 - 1421511790;
  result = (*(*(&off_28407CFD0 + (v3 ^ 0x54BA8F06)) + (v3 ^ 0x54BA8655) - 1))(&v10);
  *(a1 + 40) = v11;
  return result;
}

void sub_22D3400FC(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = 143681137 * (((a1 | 0x8982A02C) - a1 + (a1 & 0x767D5FD3)) ^ 0x5D25BC76);
  v2 = *(a1 + 4) + v1;
  v3 = (*a1 ^ v1);
  v4 = *(&off_28407CFD0 + (v2 ^ 0x53A)) - 8;
  (*&v4[8 * (v2 ^ 0xDE7)])(*(&off_28407CFD0 + v2 - 1322) - 8, sub_22D323290);
  v6 = **(&off_28407CFD0 + (v2 ^ 0x5C6));
  v5 = v2 - 143681137 * ((((&v5 | 0x4B44E35A) ^ 0xFFFFFFFE) - (~&v5 | 0xB4BB1CA5)) ^ 0x601C00FF) - 301;
  (*&v4[8 * v2 + 6760])(&v5);
  __asm { BRAA            X9, X17 }
}

void sub_22D340310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int *a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  v43 = 4 * (v41 ^ v40);
  v44 = (*(*a33 + (*a35 & 0xFFFFFFFFA5BF9E9CLL)) ^ (a34 + v43)) & 0x7FFFFFFF;
  v45 = 1395531356 * v44 - 562149631 * ((((((~(v38 - 620) + v40) ^ (v42 - (v38 - 620))) - 1) & ((v38 - 620) - v40)) >> 63) + v44);
  v46 = (v45 >> ((a27 & 0xF7) - 55)) ^ v45;
  v47 = 833381725 * v46;
  *(a38 + v43) ^= *(a34 + v43) ^ *(*(&off_28407CFD0 + (v39 ^ (v39 - 74))) + HIBYTE(v47) - 3) ^ *(*(&off_28407CFD0 + v38 - 597) + HIBYTE(v47) + 4) ^ *(*(&off_28407CFD0 + v38 - 572) + HIBYTE(v47) - 2) ^ (1700593664 * v46) ^ v47 ^ (-857024511 * HIBYTE(v47));
  JUMPOUT(0x22D340438);
}

uint64_t sub_22D3406C8()
{
  v6 = v0 + v2 + (((v4 ^ 0x9987E24A) + 1719147958) ^ ((v4 ^ 0xB9E4D55) - 194923861) ^ ((v5 ^ 0x43C) - 651003752 + (v4 ^ 0x26CD8612))) - 2135480844;
  v7 = v3 - 757741054;
  v8 = (v7 < 0xF46CEBB0) ^ (v6 < 0xF46CEBB0);
  v9 = v6 > v7;
  if (v8)
  {
    v9 = v6 < 0xF46CEBB0;
  }

  return (*(v1 + 8 * ((242 * v9) ^ v5)))();
}

uint64_t sub_22D340A04@<X0>(uint64_t a1@<X8>)
{
  v8 = ((v5 + 616) ^ 0xFFFFFFFFFFFFFAC4) + v4;
  *(v6 + v8) = *(v3 + (v8 & 0xF)) ^ *(a1 + v8) ^ *(v1 + (v8 & 0xF)) ^ *(v2 + (v8 & 0xF)) ^ (117 * (v8 & 0xF));
  return (*(v7 + 8 * ((1805 * (v8 == 0)) ^ (v5 + 158))))();
}

uint64_t sub_22D340ADC()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 != 0) * v1) ^ v0)))();
}

uint64_t sub_22D340B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x544]) = 313724725;
  LODWORD(STACK[0x4BC]) = 128;
  v70 = 843532609 * ((((v69 - 216) ^ 0xD95DCC11) & 0xCFDB54D4 | ~((v69 - 216) ^ 0xD95DCC11 | 0xCFDB54D4)) ^ 0xB53433BF);
  *(v69 - 152) = v70 + v67 + 612;
  *(v69 - 168) = a67;
  *(v69 - 160) = 0;
  *(v69 - 144) = 0;
  *(v69 - 192) = v70 ^ 0x485A30A8;
  *(v69 - 184) = &STACK[0x4BC];
  *(v69 - 176) = a64;
  *(v69 - 216) = a67 + 928;
  *(v69 - 200) = a67 + 656;
  v71 = (*(v68 + 8 * (v67 + 2028)))(v69 - 216);
  return (*(v68 + 8 * ((773 * (*(v69 - 208) == (v67 ^ 0x31B) - 1261165207)) ^ v67)))(v71);
}

uint64_t sub_22D340C70@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(*(a2 + 96) + 468) = *(*(a1 + 8) + 12) - ((2 * *(*(a1 + 8) + 12)) & 0x64) + 50;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 8 * ((668 * v4) ^ 0x5AEu)))(0);
}

void sub_22D340CC0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 8) == 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = v2 || *(a1 + 32) == 0;
  v1 = *(a1 + 24) ^ (1037613739 * ((-2 - ((~a1 | 0xF7452E54) + (a1 | 0x8BAD1AB))) ^ 0x2647032B));
  __asm { BRAA            X9, X17 }
}

void sub_22D340DB8(uint64_t a1)
{
  v2 = *(v1 + 8);
  *a1 = 0;
  *(a1 + 8) = 0x219721AE219721AELL;
  *(a1 + 16) = 0x77B41AEE73B5C5C4;
  *(a1 + 24) = -1261164275;
  *v2 = a1;
  JUMPOUT(0x22D340DF0);
}

void sub_22D340E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, _DWORD *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36)
{
  *a16 = 64;
  *(a18 + 252) = 1726767306;
  *(a18 + 256) = a18 + 264;
  *(a18 + 520) = 0x66EC60CA00000040;
  *(a18 + 528) = a18 + 536;
  STACK[0x2E0] = a18 + 792;
  *(a18 + 792) = 0x66EC60CA00000040;
  *(a18 + 800) = a18 + 808;
  STACK[0x300] = a18 + 1064;
  *(a18 + 1064) = 0x66EC60CA00000040;
  *(a18 + 1072) = a18 + 1080;
  STACK[0x308] = a18 + 1336;
  *(a18 + 1336) = 0x66EC60CA00000040;
  *(a18 + 1344) = a18 + 1352;
  v39 = STACK[0x4D0] + 4;
  v40 = v38 - 216;
  v41 = 1785193651 * (((v38 - 216) & 0xA430EF30 | ~((v38 - 216) | 0xA430EF30)) ^ 0x4813FCEF);
  *(v38 - 200) = a16;
  *(v38 - 216) = v39;
  *(v38 - 208) = a36 + 527 + v41;
  *(v38 - 204) = v41 - 1033494679 + (((v37 ^ 0x4FFFA9EE) - 1342155246) ^ ((v37 ^ 0xD83043B3) + 667925581) ^ ((v37 ^ 0x231BC350) + ((a36 + 217) | 4) - 589022964));
  (*(v36 + 8 * a29))(v38 - 216);
  v42 = v37 ^ 0xB4D4290D;
  v43 = v39 + v42;
  v44 = 1785193651 * ((((2 * v40) | 0x2D1A3352) - v40 + 1769137751) ^ 0x8551F589);
  *(v38 - 200) = a18 + 520;
  *(v38 - 208) = a36 + 527 + v44;
  *(v38 - 204) = v44 - 1033494679 + (((v37 ^ 0xD61E543D) + 702655427) ^ ((v37 ^ 0xE0EF54F0) + 521186064) ^ ((v37 ^ 0x822529C0) + 2111493696));
  *(v38 - 216) = v43;
  (*(v36 + 8 * a29))(v38 - 216);
  v45 = v43 + v42;
  v46 = 1785193651 * ((v40 & 0x7560FE32 | ~(v40 | 0x7560FE32)) ^ 0x9943EDED);
  *(v38 - 200) = STACK[0x2E0];
  *(v38 - 216) = v45;
  *(v38 - 208) = a36 + 527 + v46;
  *(v38 - 204) = v46 - 1033494679 + (((v37 ^ 0x8EB10CDC) + 1900999460) ^ ((v37 ^ 0x7E2E3241) - 2116956737) ^ ((v37 ^ 0x444B1790) - 1145771920));
  (*(v36 + 8 * a29))(v38 - 216);
  v47 = v45 + v42;
  v48 = 1785193651 * (((v38 - 216) & 0x8B922FC4 | ~((v38 - 216) | 0x8B922FC4)) ^ 0x67B13C1B);
  *(v38 - 200) = STACK[0x300];
  *(v38 - 216) = v47;
  *(v38 - 208) = a36 + 527 + v48;
  *(v38 - 204) = v48 - 1033494679 + (((v37 ^ 0xB009552C) + 1341565652) ^ ((v37 ^ 0x755E1CDC) - 1969102044) ^ ((v37 ^ 0x718360FD) - 1904435453));
  (*(v36 + 8 * a29))(v38 - 216);
  v49 = 1785193651 * ((((v38 - 216) | 0x3502E96) - ((v38 - 216) & 0x3502E96)) ^ 0x108CC2B6);
  *(v38 - 200) = STACK[0x308];
  *(v38 - 208) = a36 + 527 + v49;
  *(v38 - 204) = v49 - 1033494679 + (((v37 ^ 0xE5C61363) + 440003741) ^ ((v37 ^ 0xA31BC6FF) + 1558460673) ^ ((v37 ^ 0xF209FC91) + 234226543));
  *(v38 - 216) = v47 + v42;
  (*(v36 + 8 * a29))(v38 - 216);
  JUMPOUT(0x22D322028);
}

uint64_t sub_22D3412B0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = (a2 - 744205031) & 0x2C5BABDF;
  **(a1 + 24) = v6 + v5 + v7 - 583;
  return (*(v4 + 8 * ((1896 * (*(a3 + 24) == v3)) ^ v7)))();
}

uint64_t sub_22D3413D8@<X0>(uint64_t a1@<X8>)
{
  v6 = v4 - 1;
  *(a1 + v6) = *(v2 + v6) - ((2 * *(v2 + v6)) & 0x64) + 50;
  return (*(v1 + 8 * ((79 * (v6 != v3 + ((v5 - 201) | 0x80u) + 1204 - 2812774125)) ^ ((v5 - 201) | 0x80))))(0);
}

uint64_t sub_22D341434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  STACK[0x4F8] = STACK[0x260] - 1712;
  LODWORD(STACK[0x52C]) = a6;
  return (*(v7 + 8 * (v6 | (4 * (*(STACK[0x228] + 360) > ((v6 - 613) ^ 0x3A5u))))))();
}

void sub_22D3414D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  *(v33 - 128) = v31 - ((((v33 - 144) | 0x4D6CA9B7) - (v33 - 144) + ((v33 - 144) & 0xB2935648)) ^ 0xE24B2BAF) * v30 + 118;
  *(v33 - 120) = v29;
  *(v33 - 112) = &a28;
  *(v33 - 104) = v32;
  *(v33 - 144) = v28;
  *(v33 - 136) = v28;
  JUMPOUT(0x22D341534);
}

uint64_t sub_22D341548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v8 = (((v6 ^ 0x39F) - 772) | 0x200u) + 351 + STACK[0x4F8] + 1545;
  LODWORD(STACK[0x52C]) = a6;
  v9 = *(&off_28407CFD0 + (v6 ^ 0x39F) - 726);
  v10 = *(v7 + 8 * ((87 * (*(v9 - 4) == 0)) ^ v6 ^ 0x39F));
  STACK[0x4F8] = v8;
  STACK[0x2B0] = v9 + 32;
  STACK[0x2C0] = v9;
  STACK[0x2B8] = v9 + 16;
  STACK[0x280] = *(&off_28407CFD0 + (v6 ^ 0x39F) - 774);
  return v10();
}

uint64_t sub_22D3415C4@<X0>(char a1@<W0>, int a2@<W1>, int a3@<W2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v13 = (v11 + 543) | 0x180;
  v14 = (v13 ^ a4) + v10;
  *(a5 + v14) = *(a6 + v14) ^ *(v9 + (v14 & 0xF)) ^ *((v14 & 0xF) + a8 + 5) ^ *((v14 & 0xF) + v8 + 1) ^ ((v14 & 0xF) * a1) ^ a7;
  return (*(v12 + 8 * (((v14 == ((v13 - 862) ^ v13 ^ a2)) * a3) ^ (v13 + 308))))();
}

uint64_t sub_22D341644(uint64_t a1, uint64_t a2)
{
  *(*(v4 + 96) + 1544) = *(a2 + 8);
  *(*(v4 + 96) + 1536) = *(a2 + 4);
  return v2 ^ 0xB4D4290D;
}

uint64_t sub_22D3418B8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, uint64_t a12, int a13, int a14, unint64_t a15, int a16, int a17)
{
  v24 = (v17 ^ 0x2D0) - 774;
  *a11 = a1;
  LODWORD(STACK[0x27C]) = a17;
  STACK[0x280] = a15;
  LODWORD(STACK[0x288]) = a14 - v18 + 1368544279;
  STACK[0x290] = v23 + (v18 - 313566482);
  v25 = v17;
  v26 = (*(v19 + 48 * v21 + 8))(a6);
  return (*(v20 + 8 * ((1453 * (v26 + (v24 ^ (v22 + 203)) - ((2 * v26) & 0x69A8521A) == v22)) ^ v25)))();
}

void sub_22D341994(_DWORD *a1)
{
  v1 = ((*a1 ^ (50899313 * (((a1 | 0xFB3E1F56) - a1 + (a1 & 0x4C1E0A9)) ^ 0x335FDB00))) - 799704406) & 0x2FAA87BB;
  __asm { BRAA            X15, X17 }
}

uint64_t sub_22D341B9C()
{
  v5 = *(*(v4 + 24) + v0) - *(v2 + v0);
  v6 = (v5 ^ 0x2BF9DDF0) - 688424000 + ((2 * v5) & 0x57F3BBE0);
  v8 = v0 == 15 || v6 != v3 + 49370980;
  return (*(v1 + 8 * ((229 * v8) ^ v3)))();
}

uint64_t sub_22D341C6C(uint64_t a1, unint64_t a2, int a3)
{
  v14 = (v13 + 4 * v12);
  v15 = HIDWORD(a2) + v6 * (*(v11 + 4 * v12) ^ v3) + (*v14 ^ v3) + HIDWORD(v5) + v10 * ((v9 - 595) ^ (v3 + 237) ^ *(v4 + 4 * v12));
  *(v14 - 1) = v15 + v3 - (a3 & (2 * v15));
  return (*(v7 + 8 * (v9 ^ (4 * (v12 + 1 == v8)))))();
}

uint64_t sub_22D341D24(int a1, uint64_t a2, int a3, int a4, int a5)
{
  v10 = v7 > a1;
  if (v10 == v5 + a4 < a5)
  {
    v10 = v5 + a4 < v8;
  }

  return (*(v6 + 8 * ((!v10 * ((v9 ^ a3) + v9 - 342 - 1202)) ^ v9)))();
}

uint64_t sub_22D341E60()
{
  v5 = *(v3 + 4 * (v2 - 1));
  *(v3 + 4 * v2) = ((1566083941 * (v5 ^ (v5 >> 30))) ^ *(v3 + 4 * v2)) - v2;
  v6 = STACK[0x318];
  v7 = STACK[0x318] | 1;
  v8 = STACK[0x318] + v0 + 17165161 + 31;
  *(v4 - 184) = STACK[0x310];
  v9 = (v0 + 17165161) ^ v6;
  *(v4 - 216) = v9;
  *(v4 - 212) = v8;
  *(v4 - 188) = (v0 - 542397458) ^ v6;
  *(v4 - 200) = v9 ^ 0x5F;
  *(v4 - 196) = v7;
  *(v4 - 208) = v2 + 1 - v6;
  v10 = (*(v1 + 8 * (v0 + 1345)))(v4 - 216);
  return (*(v1 + 8 * *(v4 - 192)))(v10);
}

uint64_t sub_22D342168@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v6 = v3 - 1;
  *(v5 + v6) = *(a2 + v6);
  return (*(v4 + 8 * (((v6 == 0) * a1) ^ (v2 + 69))))();
}

uint64_t sub_22D3421EC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, int a4@<W4>, uint64_t a5@<X5>, int a6@<W8>)
{
  v11 = HIDWORD(a2) + HIDWORD(v7) + (*(v10 + 4 * a6) ^ v6);
  *(v10 + 4 * a4) = v11 + (((v9 - 132) | 0x20) ^ (v6 + 496)) - ((v11 << ((v9 ^ 0xE7) - 114)) & a3);
  *(v10 + 4 * a6) = HIDWORD(v11) + v6 - 2 * (BYTE4(v11) & 1);
  return (*(v8 + 8 * (v9 ^ (52 * (a1 + 1 != a5)))))();
}

uint64_t sub_22D34226C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18)
{
  v23 = v18 - 919;
  v24 = v18 - 919 - v20;
  v25 = v18 - 789;
  v26 = v24 - 2015547688;
  v28 = v19 == 1065558180 || a18 - v22 != v26;
  return (*(v21 + 8 * ((v28 * (v25 ^ 0x1A2)) ^ v23)))();
}

uint64_t sub_22D3423F8@<X0>(uint64_t a1@<X8>)
{
  v4 = 1361651671 * ((((v3 - 176) | 0xE9D2F4EEE4A47DACLL) - (v3 - 176) + ((v3 - 176) & 0x162D0B111B5B8250)) ^ 0x3A7F87D737868D20);
  *(v3 - 168) = (v2 + 55969350) ^ v4;
  *(v3 - 176) = (v2 + 336829623) ^ v4;
  *(v3 - 172) = ((v2 + 336829623) ^ 0x33) - v4;
  *(v3 - 160) = a1 - v4;
  *(v3 - 152) = 49371568 - v4;
  *(v3 - 136) = v4 + v2 + 336829623 + 102;
  *(v3 - 144) = -1361651671 * ((((v3 - 176) | 0xE4A47DAC) - (v3 - 176) + ((v3 - 176) & 0x1B5B8250)) ^ 0x37868D20);
  v5 = (*(v1 + 8 * ((v2 - 550) | 0x8C0)))(v3 - 176);
  return (*(v1 + 8 * *(v3 - 140)))(v5);
}

void sub_22D342564(_DWORD *a1)
{
  v1 = 843532609 * ((a1 + 1971512249 - 2 * (a1 & 0x7582E3B9)) ^ 0x29CFB73C);
  v2 = *(*a1 + 12) + 1494222779;
  v3 = a1[3] + v1 + 1094336283;
  v4 = (v3 < 0x7AA72969) ^ (v2 < 0x7AA72969);
  v5 = v2 < v3;
  if (v4)
  {
    v5 = v3 < 0x7AA72969;
  }

  __asm { BRAA            X12, X17 }
}

void sub_22D342660()
{
  v4 = *v0 ^ v2;
  v5 = ((((v3 - 667065392) & 0x27C29FBE) - 1367571416) ^ v4) & (2 * (v4 & 0xAF70CC46)) ^ v4 & 0xAF70CC46;
  v6 = ((2 * (v4 ^ 0xE0BC9B32)) ^ 0x9F98AEE8) & (v4 ^ 0xE0BC9B32) ^ (2 * (v4 ^ 0xE0BC9B32)) & 0x4FCC5774;
  v7 = (v6 ^ 0xF800220) & (4 * v5) ^ v5;
  v8 = ((4 * (v6 ^ 0x40445114)) ^ 0x3F315DD0) & (v6 ^ 0x40445114) ^ (4 * (v6 ^ 0x40445114)) & 0x4FCC5774;
  v9 = (v8 ^ 0xF005540) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x40CC0224)) ^ 0xFCC57740) & (v8 ^ 0x40CC0224) ^ (16 * (v8 ^ 0x40CC0224)) & 0x4FCC5770;
  v11 = v9 ^ 0x4FCC5774 ^ (v10 ^ 0x4CC45700) & (v9 << 8);
  v12 = v4 ^ (2 * ((v11 << 16) & 0x4FCC0000 ^ v11 ^ ((v11 << 16) ^ 0x57740000) & (((v10 ^ 0x3080034) << 8) & 0x4FCC0000 ^ 0x3880000 ^ (((v10 ^ 0x3080034) << 8) ^ 0x4C570000) & (v10 ^ 0x3080034))));
  *v13 = (HIBYTE(v12) ^ 0xBE) - ((2 * (HIBYTE(v12) ^ 0xBE)) & 0x64) + 50;
  v13[1] = (BYTE2(v12) ^ 0x60) - 2 * ((BYTE2(v12) ^ 0x60) & 0x37 ^ BYTE2(v12) & 5) + 50;
  v13[2] = (BYTE1(v12) ^ 0x62) - ((2 * (BYTE1(v12) ^ 0x62)) & 0x64) + 50;
  v13[3] = v12 ^ 0x9C;
  v0[1] = *(v1 + 24);
}

uint64_t sub_22D3428AC@<X0>(unsigned int a1@<W0>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, char a19)
{
  *(&a19 + a2) = *(v25 + v19) - ((2 * *(v25 + v19)) & 0x64) + 50;
  v26 = v24 - 302 + v19 - 68;
  v27 = a1 + v19 + 1 < v20;
  if (v20 < a1 != v26 > v22 + 69)
  {
    v27 = v20 < a1;
  }

  return (*(v23 + 8 * ((!v27 * v21) ^ v24)))();
}

uint64_t sub_22D3429FC@<X0>(unsigned int a1@<W1>, unint64_t a2@<X8>)
{
  v5 = v3 < a2;
  if (v5 == (v2 + 1) > 0xFFFFFFFF709D29C0)
  {
    v5 = a2 + v2 + ((a1 - 568) ^ 0x2D0) - 986 < v3;
  }

  return (*(v4 + 8 * ((59 * v5) ^ a1)))();
}

uint64_t sub_22D3430B4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int8x16_t a43)
{
  *(&STACK[0x5E0] + v45) = veorq_s8(*v46, a43);
  STACK[0x580] += v43 ^ 0x2B0;
  STACK[0x588] = a1;
  STACK[0x590] = a1;
  return (*(v44 + 8 * (v43 ^ (2806 * ((&STACK[0x5E0] + v45) == a1)))))(a1, a2, a3, 114, a5, a6, a7);
}

void sub_22D343204()
{
  LODWORD(STACK[0x26C]) = 0;
  LODWORD(STACK[0x270]) = 0;
  LODWORD(STACK[0x20C]) = v3[4] - v0;
  v6 = *v3 - v0;
  v7 = (((2 * &STACK[0x4E8]) & 0xDFFFFED58FF3C7F8) - 0x6FFFFF6AC7F9E3FDLL + (((v2 - 761) + 0x6FFFFF6AC7F9E0E1) ^ &STACK[0x4E8])) % 0x25;
  STACK[0x250] = (2 * v7) & 0x38;
  STACK[0x248] = (v7 ^ 0x7FD7FD35FFF6EB9CLL) - 0x7FD7FD35FFF6EB8CLL;
  LODWORD(STACK[0x208]) = v6;
  LODWORD(STACK[0x234]) = ((v6 ^ 0xE087D519) + 527968999) ^ ((v6 ^ 0xA16A1A76) + 1586881930) ^ ((v6 ^ 0x1516ABC1) - 353807297);
  LODWORD(STACK[0x244]) = v1 + v0 - 931;
  STACK[0x2A8] = 1564307779 * (((v4 | 0xA27A989236BFFDB9) - v4 + (v4 & 0x5D85676DC9400240)) ^ 0x87B96CE8A1B231AALL);
  v8 = STACK[0x340];
  LODWORD(STACK[0x240]) = STACK[0x340] ^ 0xB60;
  STACK[0x338] = ((((2 * v4) | 0xF96AB0C8D9F7CF76) - v4 - 0x7CB558646CFBE7BBLL) ^ 0x6DCDDA63B85CFBE1) * v5;
  LODWORD(STACK[0x334]) = v8 - 973283777;
  LODWORD(STACK[0x330]) = v8 - 973283790;
  STACK[0x328] = v4 | 0x16FD9705A342A976;
  LODWORD(STACK[0x324]) = v8 ^ 0xB41;
  LODWORD(STACK[0x2FC]) = v8 + 1945543691;
  v9 = 1388665877 * ((2 * (v4 & 0x44C2899F68D766B8) - v4 - 0x44C2899F68D766C0) ^ 0x8E47E62F1A85FBACLL);
  STACK[0x318] = v9;
  STACK[0x310] = v9 ^ 0x26F;
  LODWORD(STACK[0x2F8]) = v8 - 634685095;
  LODWORD(STACK[0x2F4]) = v8 ^ 0x393;
  LODWORD(STACK[0x2F0]) = v8 ^ 0x3D9;
  v10 = 1388665877 * ((2 * (v4 & 0x3235971550C51320) - v4 - 0x3235971550C51327) ^ 0xF8B0F8A522978E35);
  STACK[0x2A0] = v10;
  STACK[0x298] = v10 ^ 0x13FF;
  LODWORD(STACK[0x23C]) = (v8 + 4187) ^ 0xFFFFEC01;
  LODWORD(STACK[0x204]) = (2 * v8) ^ 0x2BC;
  LODWORD(STACK[0x238]) = v8 ^ 0xBD3;
  LODWORD(STACK[0x2EC]) = v8 ^ 0x3E5;
  JUMPOUT(0x22D3436B4);
}

uint64_t sub_22D3437BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, uint64_t a18, uint64_t a19, unsigned int a20)
{
  v25 = 143681137 * (((&a17 | 0x4562E59D) - &a17 + (&a17 & 0xBA9D1A60)) ^ 0x91C5F9C7);
  LODWORD(a19) = v24 - v25 + 1449;
  a17 = (((v24 - 35) ^ 0xD5CFBABE) + ((2 * v21) & 0xF57EEF7C) + ((5 * (v24 ^ 0x143) + 2059368192) ^ v21)) ^ v25;
  a18 = a12;
  (*(v23 + 8 * (v24 ^ 0x9BC)))(&a17);
  a20 = v24 - 2066391179 * ((&a17 - 444672830 - 2 * (&a17 & 0xE57ED4C2)) ^ 0x4A5956DA) + 261;
  a18 = v20;
  a19 = a12;
  v26 = (*(v23 + 8 * (v24 ^ 0x9CC)))(&a17);
  return (*(v23 + 8 * ((926 * (a17 == v22)) ^ v24)))(v26);
}

uint64_t sub_22D3439F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v15 = 1785193651 * ((-2 - (((v14 - 120) ^ 0xFC000003 | 0x2B6AF6B3) + ((v14 - 120) ^ 0x212AD6B0 | 0xD495094C))) ^ 0x1909C56F);
  *(v14 - 104) = a12 - v15 + 501051275;
  *(v14 - 120) = (v13 + 1482) ^ v15;
  *(v14 - 112) = v14 - 220;
  v16 = (*(v12 + 8 * (v13 + 2199)))(v14 - 120);
  v17 = *(v14 - 152);
  *(v14 - 220 + (v17 & 0x3F)) = -78;
  return (*(v12 + 8 * ((888 * ((v17 & 0x3Fu) > ((v13 + 753923770) & 0xDFBCCF83 ^ (v13 + 212649585)))) ^ v13)))(v16);
}

uint64_t sub_22D343B04(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, int a12)
{
  v17 = *a1 + v15 + *(v12 + 16) - 1332270165;
  v18 = 843532609 * ((&a9 + 1078166256 - 2 * (&a9 & 0x404382F0)) ^ 0x1C0ED675);
  a9 = v12;
  a12 = (v16 + 1372) ^ v18;
  a10 = 921043405 - v18;
  a11 = 947 * (v16 ^ 0x15B) - v18 + v17 - 977855196;
  v19 = (*(v14 + 8 * (v16 ^ 0x852)))(&a9);
  return (*(v14 + 8 * ((1855 * (*(v12 + 24) == v13)) ^ v16)))(v19);
}

uint64_t sub_22D343BDC()
{
  v4 = v0 - 407;
  v5 = 1037613739 * ((v3 - 592403274 - 2 * ((v3 - 216) & 0xDCB0A58E)) ^ 0xDB288F1);
  *(v3 - 176) = (v2 ^ 0x7DF5BB9D) - v5 + ((2 * v2) & 0xFBEB773A) + ((v0 - 405) ^ 0xABCFF474);
  v6 = v5 + LODWORD(STACK[0x20C]) - 317565364;
  *(v3 - 192) = (v0 + 379) ^ v5;
  *(v3 - 188) = v6;
  *(v3 - 184) = &STACK[0x4C4];
  *(v3 - 208) = &STACK[0x350];
  *(v3 - 200) = STACK[0x258];
  v7 = (*(v1 + 8 * ((v0 - 407) ^ 0x853)))(v3 - 216);
  v8 = *(v3 - 216);
  LODWORD(STACK[0x504]) = v8;
  return (*(v1 + 8 * ((2062 * (v8 == -1261164275)) ^ v4)))(v7);
}

uint64_t sub_22D343CF4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, unsigned int a37)
{
  v41 = *(&a25 + v37 + 72);
  v42 = (((a4 + v39 - 123) ^ 0xB34D553F) & (2 * v37)) + (v37 ^ 0x677EED7F) + v38;
  *(a1 + v42) = v41 ^ 0x4E;
  *(a1 + v42 + 1) = (BYTE1(v41) ^ 0x51) + ~(2 * ((BYTE1(v41) ^ 0x51) & 0x3A ^ BYTE1(v41) & 8)) + 51;
  *(a1 + v42 + 2) = (BYTE2(v41) ^ 0x65) - ((2 * (BYTE2(v41) ^ 0x65)) & 0x64) + 50;
  *(a1 + v42 + 3) = (HIBYTE(v41) ^ 0x56) - 2 * ((HIBYTE(v41) ^ 0x56) & 0x33 ^ HIBYTE(v41) & 1) + 50;
  return (*(v40 + 8 * ((229 * (v37 + 4 >= a37)) ^ v39)))();
}

uint64_t sub_22D343DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v9 = (v6 - 224);
  STACK[0x4F8] += v9 ^ 0xFFFFFFFFFFFFFD34;
  return (*(v7 + 8 * (v9 ^ (1761 * (v8 == a6)))))();
}

void sub_22D343E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56, int a57)
{
  LODWORD(STACK[0x2D0]) = a56 ^ 0xD527B0B4;
  LODWORD(STACK[0x288]) = a57 ^ 0x989B1A03;
  JUMPOUT(0x22D3390A8);
}

uint64_t sub_22D34401C()
{
  v5 = *(v2 + 24) + v0 - 2099020351;
  v7 = ((((8 * v1) ^ 0x17F0) - 871) & *(v3 + 20)) != 0 || v5 > 0xFFFFFFBE;
  return (*(v4 + 8 * ((60 * v7) ^ v1)))();
}

uint64_t sub_22D3440B8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  HIDWORD(v18) = (v8 - 1128) ^ 0x6655073 ^ a1;
  LODWORD(v18) = a1 ^ 0x55555555;
  v19 = (v9 ^ 0xF8B100CB) & (a8 ^ 0xA99AAE83) ^ a8 & 0x512BAE48;
  v20 = (v9 ^ 0x43257329) & (a8 ^ v14) ^ a8 & 0x15402255;
  v21 = (a6 ^ v14) + (v18 >> 27) + (*(v11 + 4 * (a3 + v13)) ^ v16) - 1650573468 + (v20 & 0xB3170C3 ^ 0xF4CE8F7C ^ (v19 & 0x39CBCFD3 ^ 0xCC0FCEEF ^ (v19 ^ 0xFEF551FF) & (v10 ^ 0x6FAE9EAF)) & (v20 ^ 0xEBBFFFAB));
  v22 = (v21 ^ 0xED7D7D7A) & (2 * (v21 & 0xF17D7D78)) ^ v21 & 0xF17D7D78;
  v23 = ((2 * (v21 ^ 0xF3F87EA)) ^ 0xFC85F524) & (v21 ^ 0xF3F87EA) ^ (2 * (v21 ^ 0xF3F87EA)) & (v17 + 2);
  v24 = v23 ^ 0x2420A92;
  v25 = (v23 ^ 0xCC00F000) & (4 * v22) ^ v22;
  v26 = ((4 * v24) ^ 0xF90BEA48) & v24 ^ (4 * v24) & v17;
  v27 = (v26 ^ 0xF802EA00) & (16 * v25) ^ v25;
  v28 = ((16 * (v26 ^ 0x6401092)) ^ 0xE42FA920) & (v26 ^ 0x6401092) ^ (16 * (v26 ^ 0x6401092)) & v17;
  v29 = v27 ^ (v17 + 2) ^ (v28 ^ 0xE402A800) & (v27 << 8);
  return (*(v12 + 8 * ((635 * (a3 + 1 == v15 + 60)) ^ v8)))(v21 ^ (2 * ((v29 << 16) & 0x7E420000 ^ v29 ^ ((v29 << 16) ^ 0x7A920000) & (((v28 ^ 0x1A405292) << 8) & 0x7E420000 ^ (((v28 ^ 0x1A405292) << 8) ^ 0x42FA0000) & (v28 ^ 0x1A405292) ^ 0x3C000000))) ^ 0xAF99D920, a8);
}

uint64_t sub_22D344338()
{
  v7 = ((-161836433 - ((v6 - 144) ^ 0x7F28E9ED | 0xF65A926F) + ((v6 - 144) ^ 0x7F28E9ED | 0x9A56D90)) ^ 0xD9AA0665) * v2;
  *(v6 - 136) = v5;
  *(v6 - 144) = v7 + v4 - 785;
  *(v6 - 128) = (v3 + 718823038) ^ v7;
  v8 = (*(v0 + 8 * (v4 ^ 0xC7F)))(v6 - 144);
  return (*(v0 + 8 * (((*(v6 - 140) == v1 + (v4 ^ 0x390) - 1918) * (((v4 - 862) | 0x206) - 439)) ^ v4)))(v8);
}

void sub_22D344434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  v30 = ((((2 * (v29 - 144)) | 0x854BA5B4) - (v29 - 144) - 1118163674) ^ 0x8AC4168C) * v26;
  *(v29 - 120) = (v24 - 201) ^ v30;
  *(v29 - 140) = v25 + v30 + 654350088 + 245 * (v24 ^ 0x3A7);
  *(v29 - 136) = &a24;
  *(v29 - 128) = v28;
  (*(v27 + 8 * (v24 + 1359)))(v29 - 144);
  JUMPOUT(0x22D3444B4);
}

uint64_t sub_22D3445D0(uint64_t a1, int a2)
{
  v7 = v5 + 1530;
  v8 = v3 + v4 + a2 + v5 + 1530;
  v9 = v8 + v6 + 1075336335;
  if (v8 > 0x5D1E6FE4 != v9 < 0xA2E1901B)
  {
    v10 = v8 > 0x5D1E6FE4;
  }

  else
  {
    v10 = v8 - 1562275813 > v9;
  }

  return (*(v2 + 8 * ((!v10 * ((2 * v7) ^ 0xFEC ^ ((v7 ^ 0x7C2) + 681))) ^ v7)))();
}

uint64_t sub_22D344660(uint64_t a1)
{
  v2 = *(*(a1 + 16) + 4) + 1807047861;
  v3 = *(*a1 + 4) + 1807047861;
  v4 = (v2 < 1386331519) ^ (v3 < 1386331519);
  v5 = v2 > v3;
  if (v4)
  {
    v5 = v2 < 1386331519;
  }

  v1 = *(a1 + 8) + 143681137 * ((((2 * a1) | 0xBE9EA8D6) - a1 - 1599034475) ^ 0x8BE84831);
  return (*(*(&off_28407CFD0 + v1 - 1220) + ((!v5 * (v1 - 1232)) ^ v1) - 1))();
}

uint64_t sub_22D3447D0()
{
  v7 = v3 - 1;
  *(v5 + v7) ^= *(v0 + (v7 & 0xF)) ^ *((v7 & 0xF) + v1 + 3) ^ (97 * (v7 & 0xF)) ^ *((v7 & 0xF) + v2 + 5) ^ 0x32;
  return (*(v6 + 8 * ((1451 * (v7 == 0)) ^ (v4 - 147))))();
}

uint64_t sub_22D3448A0(unint64_t a1, int a2, unsigned int a3, uint64_t a4, int a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v13 = HIDWORD(a1) + a3 * (*(a7 + 4 * a4) ^ v8) + (a2 ^ (v8 + 1742) ^ *(a8 + 4 * a5));
  *(a8 + 4 * a5) = v13 + v8 - (v10 & (2 * v13));
  return (*(v11 + 8 * (((a4 + 1 == v9) * v12) ^ a6)))();
}

uint64_t sub_22D344990@<X0>(uint64_t a1@<X1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, char a21)
{
  v24.i64[0] = 0x6464646464646464;
  v24.i64[1] = 0x6464646464646464;
  v25.i64[0] = 0x3232323232323232;
  v25.i64[1] = 0x3232323232323232;
  v26 = vaddq_s8(vsubq_s8(*(a1 + 17), vandq_s8(vaddq_s8(*(a1 + 17), *(a1 + 17)), v24)), v25);
  *(&a21 + a4) = vaddq_s8(vsubq_s8(*(a1 + 1), vandq_s8(vaddq_s8(*(a1 + 1), *(a1 + 1)), v24)), v25);
  *(&a21 + a4 + 16) = v26;
  return (*(v23 + 8 * ((((v22 & 0x60) == 32) * (8 * (v21 ^ (a3 - 149)) - 1958)) | (a2 + v21 + 89))))();
}

uint64_t sub_22D344A10(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 4);
  *(a1 + 48) = *(a2 + 8);
  return 0;
}

void sub_22D344B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v19 - 128) = a12;
  *(v19 - 120) = &a17;
  *(v19 - 112) = (v18 + 1508) ^ (1564307779 * ((((v19 - 128) | 0x3C4FCB78) - ((v19 - 128) & 0x3C4FCB78)) ^ 0xAB42076B));
  (*(v17 + 8 * (v18 + 1921)))(v19 - 128);
  JUMPOUT(0x22D344B88);
}

uint64_t sub_22D344BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v21 - 112) = &a17;
  *(v21 - 120) = v19 - 1162 - ((((v21 - 128) | 0x405E474B) - (v21 - 128) + ((v21 - 128) & 0xBFA1B8B0)) ^ 0x94F95B11) * v18 + 744;
  *(v21 - 128) = a14;
  v22 = (*(v17 + 8 * ((v19 - 1162) ^ 0xA98)))(v21 - 128);
  return (*(v17 + 8 * (((((v19 - 36) ^ ((*(v21 - 104) + v20) < 0xD878F5D1)) & 1) * (((v19 - 1316) ^ 0x9F) - 273)) ^ (v19 - 1162))))(v22);
}

uint64_t sub_22D344C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37)
{
  *v41 = (((((~(v38 - 1500581602) + v37) ^ (v40 - (v38 - 1500581602))) - 1) & ((v38 - 1500581602) - v37)) >> 63) ^ v41[623] ^ 1;
  v45 = 143681137 * ((0xDEC48DF6646EC880 - (v42 | 0xDEC48DF6646EC880) + a36) ^ 0x3043F00E4F362B25);
  v46 = v44 - 176;
  *(v46 + 32) = (v43 + 1) - v45;
  *(v46 + 64) = v45 + 3;
  *(v44 - 132) = -1805464057 - v45;
  *(v44 - 152) = -1805463933 - v45;
  *(v44 - 124) = a37 ^ v45;
  *(v44 - 120) = v45 + 1212455568;
  *(v44 - 128) = -143681137 * ((1684981888 - (v42 | 0x646EC880) + a36) ^ 0x4F362B25);
  v47 = (*(v39 + 17824))(v44 - 152);
  return (*(v39 + 8 * *(v44 - 136)))(v47);
}

void sub_22D344CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  *(v21 - 144) = &a18;
  *(v21 - 136) = &a18;
  *(v21 - 128) = v19 - ((2 * ((v21 - 144) & 0x6A58F840) - (v21 - 144) - 1784215622) ^ 0x3A8085A2) * v18 + 567;
  *(v21 - 112) = &a14;
  *(v21 - 104) = v20;
  *(v21 - 120) = a12;
  JUMPOUT(0x22D314D8CLL);
}

uint64_t sub_22D344DA4()
{
  v2 = STACK[0x340] ^ 0x307;
  v3 = STACK[0x530];
  STACK[0x458] = *(v1 + 8 * (STACK[0x340] - 828));
  v4 = STACK[0x300];
  STACK[0x5A8] = v3;
  LODWORD(STACK[0x5B4]) = 431643076;
  STACK[0x4C8] = v4;
  return (*(v1 + 8 * ((11 * ((((v2 + 457) ^ ((((v2 + 98) | 0x280) ^ 0xE645A595) + 431643076 + (*(v3 + 68) & 0x3F) < 0xFFFFFFC0)) & 1) == 0)) ^ v2)))();
}

void sub_22D3450C8()
{
  *(v4 - 216) = (v3 - 2137092735) ^ (1564307779 * ((v4 - 941923267 - 2 * ((v4 - 216) & 0xC7DB6515)) ^ 0x50D6A906));
  (*(v2 + 8 * (v0 + v3 + 2202)))(v4 - 216);
  if (((v1 - v3) | (v3 - v1)) > ((v0 + v3 + 931) ^ 0xFFFFFC5B))
  {
    v5 = 52;
  }

  else
  {
    v5 = 53;
  }

  *(v4 - 212) = v0 - 143681137 * ((((v4 - 216) | 0x43F26CAE) - (v4 - 216) + ((v4 - 216) & 0xBC0D9350)) ^ 0x975570F4) + v3 + 1404;
  *(v4 - 216) = (v3 + v5 + 42) ^ (113 * ((((v4 + 40) | 0xAE) - (v4 + 40) + ((v4 + 40) & 0x50)) ^ 0xF4));
  *(v4 - 208) = &STACK[0x46C];
  *(v4 - 200) = &STACK[0x558];
  (*(v2 + 8 * (v0 + v3 + 2242)))(v4 - 216);
  JUMPOUT(0x22D34E264);
}

uint64_t sub_22D345224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8)
{
  v16 = ((v10 + 773) ^ (v13 + a7) & a8 ^ 0x46732821u) + v11;
  *(v14 + 4 * v15) = v16 + v10 - ((((v13 - 17) | a6) + v9) & (2 * v16));
  return (*(v8 + 8 * (((HIDWORD(v16) == 0) * v12) ^ v13)))();
}

uint64_t sub_22D3452E0()
{
  v4 = v2 < 0x8F62D63F;
  if (v4 == (v1 + 1) > 0xFFFFFFFF709D29C0)
  {
    v4 = v1 + 2405619263 + (2 * ((v0 + 232) ^ 0x4A0u)) - 127 < v2;
  }

  return (*(v3 + 8 * ((v4 * (((v0 + 232) ^ 0x4A0) + 398)) ^ (v0 + 232))))();
}

uint64_t sub_22D3453FC@<X0>(uint64_t a1@<X8>)
{
  v6 = 135 * (v2 ^ 0x344);
  **(a1 + 8) = (**(a1 + 8) ^ (v6 - 1181952304)) + 1 + v3 - (v5 & (2 * ((**(a1 + 8) ^ (v6 - 1181952304)) + 1)));
  return (*(v4 + 8 * ((22 * (v1 != 1)) ^ v6)))();
}

uint64_t sub_22D3454AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v15 = v12 + 159106236 < a12 - 1209438043;
  if ((a12 - 1209438043) < 0x97BC4BC != v12 > 0xF6843B43)
  {
    v15 = (a12 - 1209438043) < 0x97BC4BC;
  }

  return (*(v13 + 8 * ((!v15 * ((v14 - 521) ^ 0x59)) ^ v14)))();
}

uint64_t sub_22D345518@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, unsigned int a35)
{
  v40 = ((*v37 & 0x7FFFFFFE | v37[623] & 0x80000000) >> (a1 ^ 0x14)) ^ v37[396];
  v37[623] = (v40 + v35 - (v38 & (2 * v40))) ^ *(v39 - 168 + 4 * (*v37 & 1));
  return (*(v36 + 8 * ((57 * (a35 < 0x270)) ^ a1)))();
}

uint64_t sub_22D3456A0@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  v12 = (*(*(v9 + 8) + 4 * v3) ^ v8) + v2;
  *(*(a2 + 8) + 4 * v3) = (v12 - (v5 & (2 * v12)) + v6) ^ v7;
  return (*(v11 + 8 * (((v10 > v3 + 1) * a1) ^ (v4 + 1053))))();
}

uint64_t sub_22D34572C@<X0>(uint64_t a1@<X8>)
{
  v5 = v3 & 0x99119FCD;
  if (v4 >= 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = -v4;
  }

  v7 = v6 - 1;
  *(*(v1 + 8) + 4 * v7) = *(*(a1 + 8) + 4 * v7);
  return (*(v2 + 8 * (((v7 == 0) * (((v5 - 1462017999) & 0x57249EFF) - 1739)) ^ v5)))();
}

void sub_22D345788(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8) - 843532609 * ((2 * ((a1 ^ 0x3E92791C) & 0x7283F42C) - (a1 ^ 0x3E92791C) + 226233299) ^ 0x6FA3264A);
  if (*(*a1 + 4) - 1726767306 >= 0)
  {
    v2 = *(*a1 + 4) - 1726767306;
  }

  else
  {
    v2 = 1726767306 - *(*a1 + 4);
  }

  if (*(*(a1 + 24) + 4) - 1726767306 >= 0)
  {
    v3 = *(*(a1 + 24) + 4) - 1726767306;
  }

  else
  {
    v3 = 1726767306 - *(*(a1 + 24) + 4);
  }

  v6 = *a1;
  v7 = v1 + 50899313 * ((&v6 & 0x37C150B1 | ~(&v6 | 0x37C150B1)) ^ 0x5F6B18) + 847;
  v4 = *(&off_28407CFD0 + v1 - 303) - 8;
  (*&v4[8 * (v1 ^ 0x994)])(&v6);
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

uint64_t sub_22D345980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, int a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v70 = (*(v67 + 8 * (v65 ^ 0xB68)))(LODWORD(STACK[0x4EC]), a2, a65);
  v71 = STACK[0x260];
  if (v70)
  {
    if (v70 == 268435459)
    {
      LODWORD(STACK[0x52C]) = 1261138485;
      return (*(v67 + 8 * (((STACK[0x3D0] == 0) * (v68 - 152 + ((v68 - 1289612341) & 0x4CDDECDB) - 1384)) ^ (v68 - 193))))();
    }

    else
    {
      v81 = 1785193651 * ((v69 - 216) ^ 0x13DCEC20);
      *(v69 - 208) = -1261164275 - v81 + v70 - ((2 * v70) & 0x69A8521A);
      *(v69 - 204) = v68 - v81 - 536;
      *(v69 - 216) = &STACK[0x52C];
      v82 = (*(v67 + 8 * a43))(v69 - 216);
      return (*(v67 + 8 * (((STACK[0x3D0] == 0) * (v68 - 152 + ((v68 - 1289612341) & 0x4CDDECDB) - 1384)) ^ (v68 - 193))))(v82);
    }
  }

  else
  {
    STACK[0x450] = &STACK[0x5E0] + v66;
    LODWORD(STACK[0x434]) = 1934792313;
    STACK[0x4F8] = v71 - 80;
    STACK[0x4D0] = 0;
    LODWORD(STACK[0x428]) = 1657355148;
    *(v69 - 216) = v68 + 1037613739 * (((v69 - 216) & 0x50CAF57C | ~((v69 - 216) | 0x50CAF57C)) ^ 0x7E3727FC) - 1224078117;
    (*(v67 + 8 * (v68 ^ 0xB75)))(v69 - 216);
    v73 = (*(v67 + 8 * (v68 ^ 0xBD3)))(336, 0x100004077774924);
    return (*(v67 + 8 * ((51 * (v73 != 0)) ^ (v68 + 104))))(v73, v74, v75, v76, v77, v78, v79, v80, a9, a10);
  }
}

uint64_t sub_22D345C18()
{
  v7 = v3 - 1;
  *(v6 + v7) ^= *(v0 + (v7 & 0xF)) ^ *(v1 + (v7 & 0xF)) ^ (115 * (v7 & 0xF)) ^ *((v7 & 0xF) + v2 + 1);
  return (*(v5 + 8 * (((16 * (v7 == 0)) | (32 * (v7 == 0))) ^ (v4 - 200))))();
}

void sub_22D345DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20)
{
  v24 = 1082434553 * (((v23 - 144) & 0x5B8AF693 | ~((v23 - 144) | 0x5B8AF693)) ^ 0x3F32FFE6);
  *(v23 - 144) = a20 - v24 + ((v20 - 1680) ^ 0xECA4D211);
  *(v23 - 128) = (v20 + 44) ^ v24;
  *(v23 - 136) = v22;
  *(v23 - 120) = a11;
  (*(v21 + 8 * (v20 + 380)))(v23 - 144);
  JUMPOUT(0x22D3181E8);
}

uint64_t sub_22D345FE4@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24)
{
  v33 = a1[5];
  v28 = *a1;
  v27 = a1[1];
  v29 = (*a1)[1];
  *(v26 - 128) = v25 + 33 - 2066391179 * ((((v26 - 144) | 0x8BB17607) - ((v26 - 144) & 0x8BB17607)) ^ 0x2496F41F);
  *(v26 - 144) = &a20;
  *(v26 - 136) = v29;
  *(v26 - 112) = a2;
  *(v26 - 104) = v28;
  *(v26 - 120) = v27;
  (*(v24 + 8 * (v25 ^ 0xCAE)))(v26 - 144);
  *(v26 - 112) = v25 + 1082434553 * ((((v26 - 144) | 0x70C911CA) - (v26 - 144) + ((v26 - 144) & 0x8F36EE30)) ^ 0xEB8EE740) + 856;
  *(v26 - 144) = v27;
  *(v26 - 136) = &a20;
  *(v26 - 128) = &a8;
  *(v26 - 120) = v28;
  (*(v24 + 8 * (v25 ^ 0xC9A)))(v26 - 144);
  *(v26 - 112) = &a8;
  *(v26 - 104) = v28;
  *(v26 - 120) = v27;
  *(v26 - 144) = &a18;
  *(v26 - 136) = &a20;
  *(v26 - 128) = v25 + 33 - 2066391179 * ((((v26 - 144) | 0x3B731CE9) - (v26 - 144) + ((v26 - 144) & 0xC48CE310)) ^ 0x94549EF1);
  (*(v24 + 8 * (v25 + 1194)))(v26 - 144);
  *(v26 - 144) = &a14;
  *(v26 - 136) = &a18;
  *(v26 - 128) = v25 + 33 - 2066391179 * ((((v26 - 144) | 0x3349D535) - ((v26 - 144) & 0x3349D535)) ^ 0x9C6E572D);
  *(v26 - 120) = v27;
  *(v26 - 112) = &a8;
  *(v26 - 104) = v28;
  (*(v24 + 8 * (v25 + 1194)))(v26 - 144);
  *(v26 - 120) = v27;
  *(v26 - 112) = &a8;
  *(v26 - 144) = &a22;
  *(v26 - 136) = &a14;
  *(v26 - 128) = v25 + 33 - 2066391179 * ((((v26 - 144) | 0xB15F8373) - ((v26 - 144) & 0xB15F8373)) ^ 0x1E78016B);
  *(v26 - 104) = v28;
  (*(v24 + 8 * (v25 ^ 0xCAE)))(v26 - 144);
  *(v26 - 120) = v27;
  *(v26 - 112) = &a8;
  *(v26 - 104) = v28;
  *(v26 - 128) = v25 + 33 - 2066391179 * ((2 * ((v26 - 144) & 0x418E4F78) - (v26 - 144) - 1099845499) ^ 0x1156329D);
  *(v26 - 144) = &a16;
  *(v26 - 136) = &a22;
  (*(v24 + 8 * (v25 ^ 0xCAE)))(v26 - 144);
  *(v26 - 128) = v25 + 33 - 2066391179 * ((2 * ((v26 - 144) & 0x7659F950) - (v26 - 144) - 1985608018) ^ 0x268184B6);
  *(v26 - 144) = &a10;
  *(v26 - 136) = &a16;
  *(v26 - 120) = v27;
  *(v26 - 112) = &a8;
  *(v26 - 104) = v28;
  (*(v24 + 8 * (v25 + 1194)))(v26 - 144);
  *(v26 - 128) = v25 + 33 - 2066391179 * (((((v26 - 144) | 0xBE9FEEFA) ^ 0xFFFFFFFE) - (~(v26 - 144) | 0x41601105)) ^ 0xEE47931D);
  *(v26 - 112) = &a8;
  *(v26 - 104) = v28;
  *(v26 - 120) = v27;
  *(v26 - 144) = &a24;
  *(v26 - 136) = &a10;
  (*(v24 + 8 * (v25 + 1194)))(v26 - 144);
  *(v26 - 144) = &a8;
  *(v26 - 136) = &a24;
  *(v26 - 112) = &a8;
  *(v26 - 104) = v28;
  *(v26 - 120) = v27;
  *(v26 - 128) = v25 + 33 - 2066391179 * ((v26 - 144) ^ 0xAF278218);
  (*(v24 + 8 * (v25 + 1194)))(v26 - 144);
  v30 = *v28;
  *(v26 - 128) = (v25 + 759) ^ (1564307779 * ((((2 * (v26 - 144)) | 0xBD32D898) - (v26 - 144) - 1587113036) ^ 0xC994A05F));
  *(v26 - 144) = &a12;
  *(v26 - 136) = v30;
  (*(v24 + 8 * (v25 ^ 0xC94)))(v26 - 144);
  *(v26 - 136) = v33;
  *(v26 - 144) = v25 + 1082434553 * ((2081226920 - ((v26 - 144) | 0x7C0D00A8) + ((v26 - 144) | 0x83F2FF57)) ^ 0x18B509DD) - 593;
  v31 = (*(v24 + 8 * (v25 ^ 0xCC6)))(v26 - 144);
  return (*(v24 + 8 * (v25 ^ (8 * ((((v25 ^ 0xAD) - 57) ^ ((*(v26 - 128) - 996129832) < 0x7FFFFFFF)) & 1)))))(v31);
}

uint64_t sub_22D34653C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15)
{
  v18 = v15 + 1638538261 < a15 - 18816888;
  if ((a15 - 18816888) < 0x61AA1C15 != v15 > 23 * (v17 ^ 0x170u) - 1638538331)
  {
    v18 = (a15 - 18816888) < 0x61AA1C15;
  }

  return (*(v16 + 8 * ((188 * !v18) ^ v17)))();
}

void sub_22D346AF4()
{
  v0 = MEMORY[0x28223BE20]();
  if (*(v0 + 8))
  {
    v2 = *(v0 + 24) == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v1 = 1564307779 * (((v0 | 0x5518A72C) - (v0 | 0xAAE758D3) - 1427679021) ^ 0xC2156B3F);
  __asm { BRAA            X8, X17 }
}

_DWORD *sub_22D346C18(_DWORD *result)
{
  if ((v2 + v5 - 1) >= 0x7FFFFFFF)
  {
    v6 = -v4;
  }

  else
  {
    v6 = v3;
  }

  *(v1 + 4) = v6;
  *result = -1218713433;
  return result;
}

void sub_22D346C50(int a1@<W8>)
{
  if (a1 == 1291284596)
  {
    v2 = -1261164275;
  }

  else
  {
    v2 = 1261138645;
  }

  *(v1 + 8) = v2;
}

uint64_t sub_22D346CD0(uint64_t a1, uint64_t a2)
{
  *(v2 + 1424) = v3;
  *(*(a1 + 96) + 520) = *(a2 + 8) + 1;
  return 0;
}

uint64_t sub_22D347080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, int a15, char *a16, unsigned int a17)
{
  a16 = &a13;
  a17 = v17 + 2066391179 * (((&a15 | 0x39B52E4F) + (~&a15 | 0xC64AD1B0)) ^ 0x9692AC56) - 521;
  v20 = (*(v18 + 8 * (v17 + 1114)))(&a15);
  return (*(v18 + 8 * ((451 * (a15 == ((v19 + ((v17 - 594) | 0x400) - 1619) ^ 0xD186EB9A))) ^ v17)))(v20);
}

uint64_t sub_22D347214@<X0>(int a1@<W2>, int a2@<W8>)
{
  v9 = v6 - v3;
  *(v9 + 91) = ((v3 + v4) ^ v5) * (v3 + v4 + 17);
  *(v9 + 90) = ((v3 + v4) ^ 0xBB) * (v3 + v4 + 18);
  return (*(v8 + 8 * (((v3 + v2 == 550) * v7) ^ (a1 + a2 + 168))))();
}

uint64_t sub_22D3473A0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8 = (a1 + a2 + v3);
  *v8 = v7;
  v8[1] = v7;
  return (*(v6 + 8 * ((114 * ((v5 ^ 0x31A) + a2 == v4)) ^ v2)))();
}

uint64_t sub_22D3473D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15)
{
  v18 = v16 + 1839900685 > a15;
  if (a15 < 0x6DAAA7CD != (v16 + 1839900685) < 0x6DAAA7CD)
  {
    v18 = (v16 + 1839900685) < 0x6DAAA7CD;
  }

  return (*(v17 + 8 * ((81 * !v18) ^ (v15 + a5 + 407))))();
}

uint64_t sub_22D347580(uint64_t a1)
{
  v7 = (v5 + 4 * (a1 + v3));
  *v7 = v6 ^ __ROR4__(*(v7 - 8) ^ *(v7 - 3) ^ *(v7 - 14) ^ *(v7 - 16), 31);
  LODWORD(v7) = a1 + (v1 + 16) - 1768 == v4 + 80;
  return (*(v2 + 8 * (((16 * v7) | (32 * v7)) ^ v1)))();
}

uint64_t sub_22D3475EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16, unsigned int a17)
{
  v24 = 143681137 * ((&a13 & 0x74C8F400 | ~(&a13 | 0x74C8F400)) ^ 0x5F9017A5);
  a14 = a9;
  LODWORD(a13) = v24 ^ ((v21 ^ 0xF1EF7FFA) + 1587524544 + ((2 * v21) & 0xE3DEFFF4));
  a15 = 1806 - v24;
  (*(v22 + 18120))(&a13);
  v25 = ((&a13 & 0x38200E38 | ~(&a13 | 0x38200E38)) ^ 0x16DDDCB8) * v23;
  a16 = v25 ^ 0x84F;
  a17 = (v20 ^ 0xFFFEF7FE) - v25 + ((2 * v20) & 0xFFFDEFFC) + 2099087872;
  a13 = v19;
  a14 = a9;
  (*(v22 + 17928))(&a13);
  v26 = ((((&a13 | 0xB405AD44) ^ 0xFFFFFFFE) - (~&a13 | 0x4BFA52BB)) ^ 0x9AF87FC4) * v23;
  a16 = v26 ^ 0x84F;
  a17 = (v18 ^ 0xFDDDFBFE) + ((2 * v18) & 0xFBBBF7FC) - v26 + 2134803968;
  a13 = v17;
  a14 = a9;
  v27 = (*(v22 + 17928))(&a13);
  return (*(v22 + 8 * ((46 * (a15 != -1261164275)) ^ 0x252u)))(v27);
}

uint64_t sub_22D3478B0@<X0>(uint64_t a1@<X8>)
{
  v6 = v4 - 1;
  *(*(v1 + 8) + 4 * v6) = *(*(a1 + 8) + 4 * v6);
  return (*(v2 + 8 * (((v6 == 0) * v5) ^ v3)))();
}

uint64_t sub_22D347AEC(int a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  v13 = (v12 + 4 * v7);
  v14 = v7 + 1;
  v15 = *(v12 + 4 * v14);
  v16 = v13[397] ^ ((v15 & 0x7FFFFFFE | ((v6 ^ (a1 - 101)) + v9) & v8) >> 1);
  *v13 = (v16 + a4 - (a5 & (2 * v16))) ^ *(v11 + 4 * (v15 & 1));
  return (*(v10 + 8 * (((v14 == 227) * a6) ^ v6)))();
}

uint64_t sub_22D347B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, __int16 a15, char a16, __int16 a17, char a18, int a19, int a20, int a21, char *a22, int a23, unsigned int a24, char *a25, int a26, char *a27, int *a28, uint64_t a29)
{
  a21 = 313566482;
  v31 = *(a2 + 4);
  v32 = *(a2 + 8);
  v33 = 1082434553 * ((~(&a22 | 0xA3149628) + (&a22 & 0xA3149628)) ^ 0xC7AC9F5D);
  a25 = &a14;
  a24 = v31 + ((175 * (v29 ^ 0x126)) ^ 0xE06744EC) + v33;
  a26 = v33 + v29 + 20;
  a22 = &a18;
  a28 = &a21;
  a29 = v32;
  a27 = &a16;
  v35 = (*(v30 + 8 * (v29 + 1801)))(&a22);
  return (*(v30 + 8 * (((a23 == -1261164275) * ((v29 + 1343880314) & 0xAFE606FF ^ 0x7B0)) ^ v29)))(v35, a2);
}

uint64_t sub_22D347C70@<X0>(_DWORD *a1@<X4>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, int a10)
{
  *a1 = 0;
  v12 = v11 + a2;
  v13 = v12 | 0x425;
  v14 = v12 + 1061;
  a9 = (v11 + 818221432) ^ (1037613739 * (((&a9 | 0x407BC12A) - &a9 + (&a9 & 0xBF843ED0)) ^ 0x9179EC55));
  v15 = (*(v10 + 8 * (v11 ^ (v11 + 1984))))(&a9);
  return (*(v10 + 8 * (((a10 == -1261164275) * (v13 - 353)) ^ v14)))(v15);
}

uint64_t sub_22D347C78@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  HIDWORD(a3) = v60 + ((v58 + 2075852007) & 0xAC4F3B9F);
  *a4 = a1;
  v61 = (*(v59 + 48 * v56 + 8))(a5);
  return (*(v57 + 8 * (((v61 - 1261164275 - ((2 * v61) & 0x69A8521A) != -1261164275) * (HIDWORD(a3) + 26)) ^ v58)))(v61, v62, 250626091, 1896857556, 4044341204, 3033803021, 2637612148, 2282248220, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56);
}

uint64_t sub_22D347DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, char a32)
{
  *(v36 - 144) = (a11 ^ 0x40) - ((((v36 - 144) | 0xF6C5A326) - ((v36 - 144) & 0xF6C5A326)) ^ 0x7B68C1CA) * v32 + 596;
  *(v36 - 136) = v34;
  *(v36 - 128) = v35;
  (*(v33 + 8 * (a11 ^ 0xBDA)))(v36 - 144);
  v37 = a30;
  v38 = (a11 ^ 0x40) + 216;
  v39 = 2 * (v36 - 144);
  *(v36 - 128) = v38 - 2066391179 * (((v39 | 0x363E4006) - (v36 - 144) - 455024643) ^ 0xB438A21B);
  *(v36 - 120) = v34;
  *(v36 - 112) = &a32;
  *(v36 - 104) = &a29;
  *(v36 - 144) = &a32;
  *(v36 - 136) = v37;
  v40 = (a11 ^ 0x40) + 1377;
  (*(v33 + 8 * v40))(v36 - 144);
  *(v36 - 128) = v38 - 2066391179 * ((((v36 - 144) | 0x8A0AD1DB) - (v36 - 144) + ((v36 - 144) & 0x75F52E20)) ^ 0x252D53C3);
  *(v36 - 120) = v34;
  *(v36 - 112) = a17;
  *(v36 - 144) = &a32;
  *(v36 - 136) = &a32;
  *(v36 - 104) = &a29;
  (*(v33 + 8 * v40))(v36 - 144);
  *(v36 - 144) = (a11 ^ 0x40) - 1361651671 * ((v36 - 1004541319 - 2 * ((v36 - 144) & 0xC41FEB09)) ^ 0x173D1B85) - 562359696;
  *(v36 - 136) = a18;
  *(v36 - 128) = &a32;
  (*(v33 + 8 * ((a11 ^ 0x40) + 1439)))(v36 - 144);
  *(v36 - 144) = (a11 ^ 0x40) - 1388665877 * ((v36 - 144) ^ 0x8DAD62EC) + 596;
  *(v36 - 136) = &a23;
  *(v36 - 128) = &a32;
  (*(v33 + 8 * ((a11 ^ 0x40) + 1418)))(v36 - 144);
  *(v36 - 128) = ((a11 ^ 0x40) + 942) ^ (1564307779 * (((v39 | 0x9AB1D518) - (v36 - 144) - 1297672844) ^ 0xDA55269F));
  *(v36 - 144) = &a23;
  *(v36 - 136) = &a32;
  v41 = (*(v33 + 8 * (a11 ^ 0xB9B)))(v36 - 144);
  return (*(v33 + 8 * (((((a11 ^ 0x40) + 986) ^ (15 * (a11 ^ 0x376)) ^ 6) * (a22 == 0)) ^ ((a11 ^ 0x40) + 1079))))(v41);
}

uint64_t sub_22D3480B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = ((v17 + 152180172 - 2 * ((v17 - 144) & 0x912165C)) ^ 0xA6359444) * v15;
  *(v17 - 136) = a13;
  *(v17 - 144) = v18 + v13 + 165;
  *(v17 - 128) = (v16 + 718823037) ^ v18;
  v19 = (*(v14 + 8 * (v13 ^ 0x9A9)))(v17 - 144);
  return (*(v14 + 8 * ((181 * (*(v17 - 140) == (((v13 ^ 0x5D6) - 1006) ^ 0xFA8B669))) ^ v13)))(v19);
}

uint64_t sub_22D348598@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v4 = a1 + v2 + 1381208526;
  v5 = *(a2 + 4) + 1381209456;
  v6 = v4 < (((a1 - 922) | 0x226) ^ 0x393FF414);
  v7 = v6 ^ (v5 < 960493114);
  v8 = v4 > v5;
  if (!v7)
  {
    v6 = v8;
  }

  return (*(v3 + 8 * ((125 * !v6) ^ a1)))();
}

uint64_t sub_22D3486EC(int a1, uint64_t a2, int a3, int a4)
{
  v11 = *(v7 + 8 * (v9 - 866));
  v12 = *v4;
  v13 = a3 + 4 + a1;
  *(*v4 + v13) = (HIBYTE(a4) ^ 0x2A) - 2 * ((HIBYTE(a4) ^ 0x2A) & v5 ^ HIBYTE(a4) & 4) + 50;
  *(v12 + v13 + 1) = (v6 ^ BYTE2(a4)) - (v10 & (2 * (v6 ^ BYTE2(a4)))) + 50;
  *(v12 + v13 + 2) = (BYTE1(a4) ^ 0x1E) - (v10 & (2 * (BYTE1(a4) ^ 0x1E))) + 50;
  *(v12 + v13 + 3) = a4 ^ v8;
  return v11();
}

uint64_t sub_22D3486FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  *(v19 - 128) = v18 - ((((2 * (v19 - 144)) | 0x4026E98C) - (v19 - 144) - 538145990) ^ 0x8F34F6DE) * v16 - 636;
  *(v19 - 120) = v14;
  *(v19 - 112) = &a13;
  *(v19 - 104) = v13;
  *(v19 - 144) = &a11;
  *(v19 - 136) = &a11;
  v20 = (*(v15 + 8 * (v18 + 525)))(v19 - 144);
  return (*(v15 + 8 * ((396 * ((v17 - 996129833) > 0x7FFFFFFE)) ^ (v18 - 502662833) & 0x1DF600F3)))(v20);
}

void sub_22D3487B4(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v8 = 143681137 * ((-1766088084 - (&a3 | 0x96BBA26C) + (&a3 | 0x69445D93)) ^ 0xBDE341C9);
  a3 = a1;
  a4 = (v7 ^ 0x7F4) - v8 + 268;
  a5 = (283508013 - v6 - (((((v7 ^ 0x7F4) + 303145374) & 0x6DEE5FB5) - 2 * v6 + 1564086140) & 0x4491E63A)) ^ v8;
  (*(v5 + 8 * ((v7 ^ 0x7F4) + 1477)))(&a3);
  JUMPOUT(0x22D3332F4);
}

uint64_t sub_22D348870()
{
  v4 = (v0 + 1986884470) & 0x89928BD6;
  v5 = (*(v2 + 8 * (v0 + 1655)))(*v3);
  return (*(v2 + 8 * ((((*v1 == 0) ^ (v4 + 1)) & 1 | (2 * (((*v1 == 0) ^ (v4 + 1)) & 1))) ^ v4)))(v5);
}

void sub_22D3488C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v19 = 1785193651 * ((-511555821 - ((v18 - 128) | 0xE1824713) + ((v18 - 128) | 0x1E7DB8EC)) ^ 0xDA154CC);
  *(v18 - 120) = v17 - v19 - 521;
  *(v18 - 116) = (v16 ^ 0x6FDF5A33) - v19 + ((v16 << (v17 + 84)) & 0xDFBEB466) - 21123107;
  *(v18 - 128) = &a15;
  (*(v15 + 8 * (v17 ^ 0xE62)))(v18 - 128);
  JUMPOUT(0x22D348974);
}

uint64_t sub_22D3493C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  *(v21 - 112) = v19 + 1627 + 1082434553 * ((2 * ((v21 - 144) & 0x79433B08) - (v21 - 144) + 113034486) ^ 0x9DFB327C);
  *(v21 - 128) = &a18;
  *(v21 - 120) = a11;
  *(v21 - 144) = a12;
  *(v21 - 136) = &a18;
  (*(v18 + 8 * (v19 + 1945)))(v21 - 144);
  *(v21 - 144) = a12;
  *(v21 - 136) = &a18;
  *(v21 - 128) = &a18;
  *(v21 - 120) = a11;
  *(v21 - 112) = v19 + 1627 + 1082434553 * ((((v21 - 144) | 0x58B5532B) - (v21 - 144) + ((v21 - 144) & 0xA74AACD0)) ^ 0xC3F2A5A1);
  (*(v18 + 8 * (v19 ^ 0x999)))(v21 - 144);
  *(v21 - 112) = v19 + 1627 + 1082434553 * ((v21 - 144) ^ 0x9B47F68A);
  *(v21 - 128) = &a18;
  *(v21 - 120) = a11;
  *(v21 - 144) = a12;
  *(v21 - 136) = &a18;
  (*(v18 + 8 * (v19 ^ 0x999)))(v21 - 144);
  v22 = 2066391179 * ((((v21 - 144) | 0xFD3DC433) - (v21 - 144) + ((v21 - 144) & 0x2C23BC8)) ^ 0x521A462B);
  *(v21 - 128) = ((((v19 + 1566) ^ 0xDCF8F84A) & (2 * (v20 - 996129833))) + ((((v19 - 256) | 0x388) - 293831646) ^ (v20 - 996129833)) + 2008783614) ^ v22;
  *(v21 - 144) = v22 + v19 + 221;
  *(v21 - 136) = a13;
  v23 = (*(v18 + 8 * (v19 + 1937)))(v21 - 144);
  return (*(v18 + 8 * (((4 * (*(v21 - 140) == 262715241)) | (16 * (*(v21 - 140) == 262715241))) ^ v19)))(v23);
}

uint64_t sub_22D349798@<X0>(int a1@<W8>)
{
  v6 = a1 - 32;
  v7 = v1 + ((v6 - 2030300841) & 0x7903EFFD) - 1718;
  *(*v3 + (v5 + 1432631407 + v7)) = *(*v3 + (v1 - 1941292485));
  return (*(v4 + 8 * ((191 * (v7 == v2 + 595)) ^ v6)))();
}

uint64_t sub_22D349810()
{
  v4.i64[0] = 0x6464646464646464;
  v4.i64[1] = 0x6464646464646464;
  v5.i64[0] = 0x3232323232323232;
  v5.i64[1] = 0x3232323232323232;
  v2[72] = vaddq_s8(vsubq_s8(*(v0 + 4), vandq_s8(vaddq_s8(*(v0 + 4), *(v0 + 4)), v4)), v5);
  return (*(v3 + 8 * ((v1 + 120) ^ 0x64C ^ v1)))();
}

uint64_t sub_22D349894(unsigned int a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, double a6, __n128 a7, __n128 a8, __n128 a9, int8x16_t a10, double a11, int8x16_t a12, int8x16_t a13)
{
  v20 = a2 - 16;
  v21 = ((a1 + 857) ^ a4) & (v20 + 15);
  v22 = v14;
  v23.i64[0] = vqtbl4q_s8(*(&a7 - 1), a10).u64[0];
  *&v23.i64[1] = a11;
  v24 = vrev64q_s8(veorq_s8(veorq_s8(*(v13 + v20), *(v15 + v21 - 15)), veorq_s8(*(v21 + v16 - 10), *(v21 + v17 - 13))));
  v25 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v24, v24, 8uLL), a13), vmulq_s8(v23, a12)));
  *(v19 + v20) = vextq_s8(v25, v25, 8uLL);
  return (*(v18 + 8 * (((a3 == 16) * a5) ^ a1)))();
}

uint64_t sub_22D3499FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, unsigned int a26, unsigned int a27, int a28)
{
  v32 = 843532609 * ((2 * (&a25 & 0x4FB69020) - &a25 - 1337364520) ^ 0xEC043B5D);
  a25 = v30;
  a26 = ((((v29 + 1951819300) & 0x8BA99679 ^ 0x73B5C5F5) + v28 - a14) ^ 0xBEFF8BFF) - v32 + ((2 * (((v29 + 1951819300) & 0x8BA99679 ^ 0x73B5C5F5) + v28 - a14)) & 0x7DFF17FE) + 2011592142;
  a27 = (((v28 & 0xFFFFFFF0) + 16) ^ 0x3BEEEA5E) - v32 + ((2 * ((v28 & 0xFFFFFFF0) + 16)) & 0x77DDD4A0) - 42074128;
  a28 = (v29 + 802) ^ v32;
  v35 = v29;
  v33 = (*(v31 + 8 * (v29 ^ 0xA98)))(&a25);
  return (*(v31 + 8 * ((1213 * (*(v30 + 24) == -1261164275)) ^ v35)))(v33);
}

uint64_t sub_22D349B94@<X0>(uint64_t a1@<X0>, int a2@<W8>, uint64_t a3, _DWORD *a4)
{
  *v5 = a1;
  *a4 = v4;
  return (*(v6 + 8 * (((((a2 + 763229254) & 0xD28209E5 ^ 0xFFFFFFCA) + ((a2 - 817) | 0x200)) * (a3 == 0)) ^ a2)))();
}

uint64_t sub_22D349CFC()
{
  v6 = 1785193651 * ((2 * (v2 & 0x7EFA8720) - v2 + 17135839) ^ 0x12D994FF);
  *(v5 - 128) = v4 - v6 + 415;
  *(v5 - 124) = (v0 ^ 0x7EFDDE35) - v6 + ((v4 - 33834651) & (2 * v0)) - 274781221;
  *(v5 - 136) = v3;
  v7 = (*(v1 + 8 * (v4 + 1482)))(v5 - 136);
  return sub_22D349D90(v7);
}

uint64_t sub_22D349D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(v20 - 128) = v19 - 143681137 * ((2 * (v18 & 0x249BE728) - v18 - 614197039) ^ 0xFC3048B) + 1156;
  *(v20 - 136) = a16;
  *(v20 - 120) = v17;
  v21 = (*(v16 + 8 * (v19 ^ 0x83C)))(v20 - 136);
  return (*(v16 + 8 * (((*(v20 - 112) > ((v19 - 1133208219) & 0x438B677B ^ 0x43A7AD37u)) * (((v19 + 636387185) & 0xDA1180CF) + 1261)) ^ v19)))(v21);
}

uint64_t sub_22D349E64()
{
  if (v2 >= 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = -v2;
  }

  v6 = ((v3 - 198) ^ (v0 - 1060)) + v1;
  if (v6 >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = -v6;
  }

  return (*(v4 + 8 * (((v5 > v7) * (106 * (v3 ^ 0x4E0) - 42)) ^ v3)))();
}

uint64_t sub_22D349EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 120) = v17 - ((2 * ((v19 - 128) & 0x1B030CF0) - (v19 - 128) + 1694298889) ^ 0xB05BEF53) * v16 - 418;
  *(v19 - 128) = a14;
  *(v19 - 112) = &a15;
  v20 = (*(v15 + 8 * (v17 + 526)))(v19 - 128);
  return (*(v15 + 8 * ((25 * (v18 + *(v19 - 104) - 1 < (v17 - 226100443))) ^ v17)))(v20);
}

uint64_t sub_22D34A050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, _DWORD *a13)
{
  v17 = 843532609 * ((((2 * (v15 - 136)) | 0xCB0E8D6E) - (v15 - 136) + 444119369) ^ 0xB9CA1232);
  v18 = (*a13 ^ 0x46732821) * *(*(a10 + 16) + 16);
  *(v15 - 136) = v17 + (v13 ^ 0x77EF63D9) - 285410597;
  *(v15 - 104) = v13 - v17 - 1032;
  *(v15 - 112) = a11;
  *(v15 - 120) = (v18 ^ 0x7E7AC2F7) - v17 + ((2 * v18) & 0xFCF585EE) - 708837474;
  *(v15 - 128) = &a12;
  v19 = (*(v14 + 8 * (v13 ^ 0xF3A)))(v15 - 136);
  return (*(v14 + 8 * ((166 * (a4 == 1)) ^ v13)))(v19);
}

uint64_t sub_22D34A17C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X5>, uint64_t a3@<X7>, int a4@<W8>)
{
  v13 = (*(a3 + 4 * v7) ^ v4) + (v6 ^ HIDWORD(a2));
  v14 = (v12 - 907) + v13 - ((2 * v13) & 0x3963CD4D4) + 0x3C27FFB1CB1E6955;
  *(a3 + 4 * a1) = v12 ^ 0x38A ^ v9 ^ v14;
  *(a3 + 4 * v7) = HIDWORD(v14) ^ v10;
  return (*(v8 + 8 * (v12 ^ ((v5 + 1 == a4) * v11))))();
}

void sub_22D34A1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = 1082434553 * ((((v14 - 144) | 0xE1D8D583) + (~(v14 - 144) | 0x1E272A7C)) ^ 0x7A9F2308);
  *(v14 - 144) = v10 - v15 + ((v12 + 1673773739) & 0x9C3C39FF ^ 0x179D3932);
  *(v14 - 128) = (v12 + 659) ^ v15;
  *(v14 - 136) = v13;
  *(v14 - 120) = a10;
  (*(v11 + 8 * (v12 + 995)))(v14 - 144);
  JUMPOUT(0x22D3241B0);
}

uint64_t sub_22D34A32C@<X0>(int a1@<W1>, unint64_t a2@<X8>)
{
  v5 = v2 + (a1 - 126) - 291;
  v6 = a2 + v2 + 1 < v3;
  if (v3 < a2 != v5 > 0xFFFFFFFF3F687BA7)
  {
    v6 = v3 < a2;
  }

  return (*(v4 + 8 * (!v6 | a1)))();
}

void sub_22D34A398(uint64_t a1@<X8>, uint64_t a2, unsigned int a3, uint64_t a4)
{
  a3 = v5 - 1388665877 * ((859753275 - (&a3 | 0x333ECB3B) + (&a3 | 0xCCC134C4)) ^ 0x416C5628) + 1324;
  a4 = a1;
  (*(v4 + 8 * (v5 ^ 0x8D0)))(&a3);
  JUMPOUT(0x22D323250);
}

void sub_22D34A638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v19 - 112) = (v18 + 1633) ^ (1564307779 * ((((v19 - 128) | 0xAF50F2B7) - (v19 - 128) + ((v19 - 128) & 0x50AF0D48)) ^ 0x385D3EA4));
  *(v19 - 128) = a12;
  *(v19 - 120) = &a17;
  (*(v17 + 8 * (v18 + 2046)))(v19 - 128);
  JUMPOUT(0x22D34A6A0);
}

uint64_t sub_22D34A7F4@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v13 = *(v11 + 8);
  v14 = ((2 * (*(v13 + ((a3 + ((v10 + a5) << 32)) >> 30)) ^ v5)) << ~v9) | ((*(v13 + 4 * (v10 + a5)) ^ v5) >> v9);
  *(v13 + 4 * v10) = v14 + v5 - ((v14 << ((a1 | a2) + 7)) & v6);
  return (*(v12 + 8 * (((v10 + 1 == v7) * a4) ^ v8)))();
}

uint64_t sub_22D34A8C8(__n128 a1, __n128 a2)
{
  a1.n128_u16[0] = 25700;
  a1.n128_u8[2] = 100;
  a1.n128_u8[3] = 100;
  a1.n128_u8[4] = 100;
  a1.n128_u8[5] = 100;
  a1.n128_u8[6] = 100;
  a1.n128_u8[7] = 100;
  a2.n128_u16[0] = 12850;
  a2.n128_u8[2] = 50;
  a2.n128_u8[3] = 50;
  a2.n128_u8[4] = 50;
  a2.n128_u8[5] = 50;
  a2.n128_u8[6] = 50;
  a2.n128_u8[7] = 50;
  return sub_22D34A914((((v2 - 1776250873) & 0x69DF6FF7) - 1003) & 0xFFFFFE3E, a1, a2);
}

uint64_t sub_22D34AA04@<X0>(unsigned int a1@<W2>, uint64_t a2@<X5>, unsigned int a3@<W8>)
{
  v15 = (a2 + 4 * v4);
  v16 = (*v15 ^ a3) + (((v12 ^ a1) + v7) ^ HIDWORD(v14)) + v13 * (*(v11 + 4 * v4) ^ a3);
  *(v15 - 1) = (v16 + v5 - (v6 & (2 * v16))) ^ v9;
  return (*(v8 + 8 * (((v4 + 1 == v3) * v10) ^ v12)))();
}

uint64_t sub_22D34AA64(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35)
{
  v37 = (((a35 + 1669697652) ^ 0x5BEC110) - 1906830763) ^ (a35 + 1669697652) ^ (((a35 + 1669697652) ^ 0xCDE40535) + 1174591090) ^ (((a35 + 1669697652) ^ 0x7FFFBFDF) - 199660388) ^ (a1 - 1102 + ((a35 + 1669697652) ^ 0xC3BC5741) + (*(v35 - 172) ^ 0x485A8077));
  *(v35 - 172) = a1 - 461;
  v39 = v37 == 1947806907 || (v37 & 0xF) != a1 - 1328;
  v40 = *(v36 + 8 * ((v39 * (a1 - 864)) ^ (a1 - 1102)));
  *(v35 - 176) = -42899;
  return v40();
}

void sub_22D34B9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  *(v27 - 144) = a12;
  *(v27 - 136) = &a18;
  *(v27 - 112) = v24 + 1082434553 * ((-2022699873 - ((v27 - 144) | 0x87700C9F) + ((v27 - 144) | 0x788FF360)) ^ 0xE3C805EA) + 1166;
  *(v27 - 128) = &a18;
  *(v27 - 120) = a11;
  (*(v25 + 8 * (v24 ^ 0xA54)))(v27 - 144);
  *(v27 - 144) = &a18;
  *(v27 - 136) = &a18;
  *(v27 - 128) = v24 - (((((v27 - 144) | 0x5C50B2BC) ^ 0xFFFFFFFE) - (~(v27 - 144) | 0xA3AF4D43)) ^ 0xC88CF5B) * v26 + 343;
  *(v27 - 120) = a12;
  *(v27 - 112) = &a24;
  *(v27 - 104) = a11;
  (*(v25 + 8 * (v24 + 1504)))(v27 - 144);
  JUMPOUT(0x22D314D9CLL);
}

uint64_t sub_22D34BAC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 + ((v3 - 436) | 0x251u) - 1010;
  *(a1 + v5) = *(a2 + v5);
  return (*(v4 + 8 * ((2024 * (v5 == 0)) ^ v3)))();
}

uint64_t sub_22D34BBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, char a21, __int16 a22, char a23, int a24, char a25, __int16 a26, char a27)
{
  v32 = 1082434553 * ((2 * ((v31 - 160) & 0x5E18FD00) - (v31 - 160) - 1578695938) ^ 0x3AA0F474);
  STACK[0x2E8] = &a21;
  *(v31 - 136) = v32 + v28 + 46;
  *(v31 - 148) = a5 + (((v28 + 261) | 0x484) ^ 0xE0674075) + v32;
  STACK[0x2E0] = &a27;
  STACK[0x2D0] = &a25;
  STACK[0x2F0] = v30;
  STACK[0x2C0] = &a23;
  HIDWORD(a9) = a5;
  v33 = (*(v27 + 8 * (v28 ^ 0x925)))(v31 - 160);
  return (*(v27 + 8 * ((1692 * (*(v31 - 152) == v29 + (v28 ^ 0x2D0) - 987)) ^ v28)))(v33, 2108723143, 1117814741, 1029668906, HIDWORD(a9), 2147484632, 3177152554, 3176691902, a9);
}

uint64_t sub_22D34BF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = (a10 + v11);
  *(v15 - 1) = v14;
  *v15 = v14;
  return (*(v13 + 8 * ((((v10 & 0xFFFFFFFFFFFFFFF0) == 16) * (((v12 | 0x416) ^ 0x6EE) - 190)) ^ (v12 | 0x416))))();
}

uint64_t sub_22D34BFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  *(v20 - 128) = &a15;
  *(v20 - 112) = &a17;
  *(v20 - 120) = v18 + 742307843 * ((((v20 - 128) | 0x6C496BFE) - ((v20 - 128) & 0x6C496BFE)) ^ 0x726BE6AB) + 236;
  v21 = (*(v17 + 8 * (v18 + 722)))(v20 - 128);
  return (*(v17 + 8 * (((v18 ^ 0x5E7) * (v19 == 1)) ^ v18)))(v21);
}

uint64_t sub_22D34C0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  v15 = a13 - 1726767306;
  if (a13 - 1726767306 < 0)
  {
    v15 = 1726767306 - a13;
  }

  return (*(v14 + 8 * ((58 * (((v15 ^ 0xF6FFF2DB) + 25 * (v13 ^ 0x3AB) + ((2 * v15) & 0xEDFFE5B6) + 150997333) > ((25 * (v13 ^ 0x3AB) + 289) ^ 0xFFFFFB0F))) ^ (25 * (v13 ^ 0x3AB)))))(1181952033);
}

uint64_t sub_22D34C188@<X0>(int a1@<W8>)
{
  if ((a1 + 712618036) <= 0x12 && ((1 << (a1 + 52)) & 0x50181) != 0)
  {
    JUMPOUT(0x22D34C218);
  }

  return sub_22D34C1C4();
}

uint64_t sub_22D34C2FC@<X0>(int a1@<W5>, int a2@<W6>, uint64_t a3@<X8>)
{
  v7 = 107 * (a2 ^ 0x557);
  *(*(v3 + 8) + 4 * (v4 + a1 + (v7 ^ 0x5DF) - 176)) = v6 ^ v5 ^ v7;
  v8 = v7 ^ 0x24A;
  *(v3 + 4) = a1 + 1;
  v9 = a1 + 1 + v4;
  if (v9 < 0)
  {
    v9 = -v9;
  }

  return (*(a3 + 8 * ((27 * (((v8 ^ v9 ^ 0x6EEEF9EE) + ((2 * v9) & 0xDDDDFD96) - 1861157794 + ((v8 - 1367842862) & 0x51879DDE)) >= 0)) ^ v8)))();
}

uint64_t sub_22D34C558@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  *(v2 + 24) = a2;
  *(result + 16) = 1261138488;
  return result;
}

uint64_t sub_22D34C56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, char a40)
{
  v43 = 1785193651 * ((((v42 - 176) ^ 0xBE5B698F) + 1490654126 - 2 * (((v42 - 176) ^ 0xBE5B698F) & 0x58D993AE)) ^ 0xF55E1601);
  *(v42 - 176) = (v41 + 1535) ^ v43;
  *(v42 - 160) = a19 - v43;
  *(v42 - 168) = a2;
  v44 = (*(v40 + 8 * (v41 ^ 0x8D4)))(v42 - 176);
  v45 = a40 & 0x3F;
  *(&a31 + v45) = -78;
  return (*(v40 + 8 * ((816 * (v45 > 0x37)) | v41)))(v44);
}

uint64_t sub_22D34C6B8(__n128 a1, __n128 a2)
{
  a1.n128_u16[0] = 25700;
  a1.n128_u8[2] = 100;
  a1.n128_u8[3] = 100;
  a1.n128_u8[4] = 100;
  a1.n128_u8[5] = 100;
  a1.n128_u8[6] = 100;
  a1.n128_u8[7] = 100;
  a2.n128_u16[0] = 12850;
  a2.n128_u8[2] = 50;
  a2.n128_u8[3] = 50;
  a2.n128_u8[4] = 50;
  a2.n128_u8[5] = 50;
  a2.n128_u8[6] = 50;
  a2.n128_u8[7] = 50;
  return sub_22D34C6D8(a1, a2);
}

void sub_22D34C754(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  a4 = v6;
  a3 = v8;
  a6 = (v7 & 0xC364D79) + 1785193651 * ((((2 * &a3) | 0x2CEF4B86) - &a3 + 1770543677) ^ 0x85AB49E3) - 307;
  (*(a1 + 8 * (v7 & 0xC364D79 ^ 0xD70u)))(&a3);
  JUMPOUT(0x22D318604);
}

uint64_t sub_22D34C974(__n128 a1, __n128 a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, uint64_t a17, uint64_t a18, int a19, unsigned int a20, uint64_t a21, int a22, unsigned int a23)
{
  v24.n128_u64[0] = 0x6464646464646464;
  v24.n128_u64[1] = 0x6464646464646464;
  v25.n128_u64[0] = 0x3232323232323232;
  v25.n128_u64[1] = 0x3232323232323232;
  return (*(v23 + 8 * (((a19 + 77) * (a16 < 0xFFFFFFFE)) ^ a19)))(2787645459, a20, 1507321841, a23, a8, a9, 0x8B8B563D4E2B2370, 449505635, a1, a2, a3, v24, v25);
}

uint64_t sub_22D34CA54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned int a6@<W8>)
{
  v8 = *a1;
  *v6 = 0;
  return (*(v7 + 8 * ((52 * (((v8 == 0) ^ (a6 + 100)) & 1)) ^ a6)))(a1, a2, a3, a4, a5);
}

uint64_t sub_22D34CB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, int a18)
{
  a18 = v20 + 940 + v18 + 471399113;
  *(v21 - 112) = (v20 + 1239) ^ (1564307779 * (((v21 - 128) & 0x45C5A70B | ~((v21 - 128) | 0x45C5A70B)) ^ 0x2D3794E7));
  *(v21 - 128) = &a15;
  *(v21 - 120) = a14;
  (*(v19 + 8 * (v20 ^ 0xAB4)))(v21 - 128);
  *(v21 - 120) = v20 - 143681137 * ((((v21 - 128) | 0x371D2359) + (~(v21 - 128) | 0xC8E2DCA6)) ^ 0xE3BA3F02) + 744;
  *(v21 - 112) = &a17;
  *(v21 - 128) = a14;
  v22 = (*(v19 + 8 * (v20 ^ 0xA98)))(v21 - 128);
  v23 = (*(v21 - 104) - 1135061088) < 0xD878F5D1;
  return (*(v19 + 8 * ((((((v20 - 525) ^ v23) & 1) == 0) | (4 * ((((v20 - 525) ^ v23) & 1) == 0))) ^ v20)))(v22);
}

uint64_t sub_22D34CEC8@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, unsigned int a36)
{
  v40 = *(&a24 + (a2 >> (v37 + 7)) + 18);
  v41 = ((2 * a2) & 0xCBBFFEF0) + (a2 ^ 0x65DFFF7A) + v36;
  *(a1 + v41) = v40 ^ 0x4E;
  *(a1 + v41 + 2) = (BYTE2(v40) ^ 0x65) - ((2 * (BYTE2(v40) ^ 0x65)) & 0x64) + 50;
  *(a1 + v41 + 1) = (BYTE1(v40) ^ 0x51) + ~(2 * (((v40 >> 8) ^ 0x51) & 0x3A ^ (v40 >> 8) & 8)) + 51;
  *(a1 + v41 + 3) = (HIBYTE(v40) ^ 0x56) - 2 * ((HIBYTE(v40) ^ 0x56) & 0x33 ^ HIBYTE(v40) & 1) + 50;
  return (*(v39 + 8 * (((a2 + 4 < a36) * v38) ^ v37)))();
}

uint64_t sub_22D34CFAC()
{
  v6 = *(v4 + 4 * (v3 - 1));
  *(v4 + 4 * v3) = ((1566083941 * (v6 ^ (v6 >> 30))) ^ *(v4 + 4 * v3)) - v3;
  v7 = 143681137 * ((0x2B85BA1DCB0B370DLL - ((v5 - 152) | 0x2B85BA1DCB0B370DLL) + ((v5 - 152) | 0xD47A45E234F4C8F2)) ^ 0xC502C7E5E053D4A8);
  v8 = v5 - 176;
  *(v8 + 64) = v7 + 623;
  *(v5 - 128) = -143681137 * ((-888457459 - ((v5 - 152) | 0xCB0B370D) + ((v5 - 152) | 0x34F4C8F2)) ^ 0xE053D4A8);
  *(v5 - 124) = (v0 + 932910462) ^ v7;
  *(v8 + 32) = v3 + 1 - v7;
  *(v5 - 152) = ((v0 + 932910294) ^ 0x64) - v7;
  *(v5 - 132) = v0 + 932910294 - v7;
  *(v5 - 120) = v7 + v0 - 288126657;
  v9 = (*(v2 + 8 * (v1 + v0 + 1605)))(v5 - 152);
  return (*(v2 + 8 * *(v5 - 136)))(v9);
}

uint64_t sub_22D34D0C0@<X0>(unsigned int a1@<W0>, unsigned int a2@<W8>)
{
  v10 = v2 < a1;
  *(v9 - 220 + v3) = *(v7 + v5) - ((2 * *(v7 + v5)) & 0x64) + 50;
  v11 = v5 + 1;
  if (v10 == v11 > (a2 ^ 0x26 ^ v6))
  {
    v10 = v11 + a1 < v2;
  }

  return (*(v8 + 8 * ((!v10 * v4) ^ a2)))();
}

uint64_t sub_22D34D130@<X0>(int a1@<W2>, int a2@<W3>, unsigned int a3@<W8>)
{
  v5 = (v3 - 358065034) & 0x1FCF;
  v6 = a3 <= (((a1 + a2 + v5 - 966 + 901) | 0x22) ^ 0x402u);
  return (*(v4 + 8 * (((2 * v6) | (16 * v6)) ^ v5)))();
}

uint64_t sub_22D34D188(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int32x4_t a12, int32x4_t a13)
{
  a12 = vdupq_n_s32(0x46732821u);
  a13 = a12;
  return (*(v13 + 8 * ((16 * (((a1 - 1557) | 0x404u) - 1215 != ((a1 + 2147481888) & v14))) | ((((a1 - 1557) | 0x404u) - 1215 != ((a1 + 2147481888) & v14)) << 6) | (a1 - 80))))(&a12);
}

uint64_t sub_22D34D1EC()
{
  v6 = 17 * (v4 ^ 0x41E);
  *(v2 + 4) = v0;
  *(v5 - 144) = v2;
  *(v5 - 136) = &v8;
  *(v5 - 128) = (v6 + 1293) ^ (((v5 - 144) ^ 0x970DCC13) * v1);
  return (*(v3 + 8 * (v6 ^ 0x97A)))(v5 - 144);
}

void sub_22D34D3A0()
{
  if (v0 == 1680291295)
  {
    v2 = -1261164275;
  }

  else
  {
    v2 = 1261138645;
  }

  *(v1 + 36) = v2;
}

void sub_22D34D400(uint64_t a1)
{
  v1 = *(a1 + 16) + 2066391179 * (a1 ^ 0xAF278218);
  __asm { BRAA            X1, X17 }
}

uint64_t sub_22D34D514(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(v8 - 168) = v5;
  *(v8 - 164) = -944456115;
  v9 = 1564307779 * ((v8 - 152) ^ 0x25C3F47A970DCC13);
  v10 = v8 - 176;
  *(v10 + 48) = *v7 + v9;
  *(v10 + 32) = v9;
  *(v8 - 112) = 763640399 - v9 + v4;
  *(v8 - 120) = v9;
  *(v8 - 116) = v9 + v4 - 196592583 + 24;
  *(v8 - 152) = v4 - 196592583 - v9;
  *(v8 - 148) = ((v4 - 196592583) ^ 0x5E) + v9;
  v11 = (*(v6 + 8 * (a4 + v4 + 1638)))(v8 - 152);
  return (*(v6 + 8 * *(v8 - 136)))(v11);
}

uint64_t sub_22D34D8C8()
{
  v3 = STACK[0x340] - 891;
  LODWORD(STACK[0x59C]) = v2;
  return (*(v1 + 8 * v3))();
}

void sub_22D34D8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18)
{
  *(v21 - 120) = a12;
  *(v21 - 112) = &a16;
  *(v21 - 128) = v18 - ((((v21 - 144) | 0x3C57B8D) - (v21 - 144) + ((v21 - 144) & 0xFC3A8470)) ^ 0xACE2F995) * v19 + 118;
  *(v21 - 144) = &a18;
  *(v21 - 136) = &a18;
  *(v21 - 104) = v20;
  JUMPOUT(0x22D314D8CLL);
}

uint64_t sub_22D34D954(uint64_t a1, int a2)
{
  v5 = v4 - 750;
  v6 = v3 + 204186478;
  v7 = v6 < -216529864;
  v8 = a2 + 204186478 < v6;
  if (v7 != a2 + 204186478 < (v5 ^ 0xF3180625))
  {
    v8 = v7;
  }

  return (*(v2 + 8 * ((88 * ((((v5 ^ 0x4F) + 1) ^ v8) & 1)) ^ v5)))();
}

uint64_t sub_22D34DA90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char *a28, char *a29, uint64_t a30, char a31, uint64_t a32, char a33)
{
  v41 = v34 - 1026;
  v42 = 1785193651 * ((((v40 - 144) | 0x9947ACF5) + (~(v40 - 144) | 0x66B8530A)) ^ 0x8A9B40D4);
  *(v40 - 128) = &a33;
  *(v40 - 144) = v33;
  *(v40 - 136) = v42 + v34 - 23;
  *(v40 - 132) = v42 + v35 - 1707122824 + v34 - 1026;
  (*(v37 + 8 * (v34 ^ 0xC32u)))(v40 - 144);
  a28 = &a26;
  a29 = &a24;
  *(v40 - 144) = (v41 + 1090) ^ (((((v40 - 144) | 0x5E115CB4) - (v40 - 144) + ((v40 - 144) & 0xA1EEA348)) ^ 0x967098E2) * v36);
  *(v40 - 136) = v39;
  *(v40 - 128) = &a28;
  (*(v37 + 8 * (v41 ^ 0x845)))(v40 - 144);
  *(v40 - 144) = v41 + 1029 + 2066391179 * ((((2 * (v40 - 144)) | 0xA07BF282) - (v40 - 144) - 1346238785) ^ 0xFF1A7B59);
  *(v40 - 120) = &a33;
  *(v40 - 112) = &a22;
  *(v40 - 136) = v39;
  *(v40 - 128) = &a28;
  (*(v37 + 8 * (v41 ^ 0x85E)))(v40 - 144);
  v43 = a29;
  *(v40 - 112) = &a22;
  *(v40 - 104) = &a28;
  *(v40 - 120) = v39;
  *(v40 - 128) = v41 + 825 - 2066391179 * ((((v40 - 144) | 0x31C7C8D5) + (~(v40 - 144) | 0xCE38372A)) ^ 0x9EE04ACC);
  *(v40 - 144) = &a22;
  *(v40 - 136) = v43;
  (*(v37 + 8 * (v41 ^ 0x846)))(v40 - 144);
  *(v40 - 144) = &a28;
  *(v40 - 136) = v39;
  *(v40 - 112) = &a22;
  *(v40 - 104) = a14;
  *(v40 - 128) = &a22;
  *(v40 - 120) = v41 + 258 + 1388665877 * ((v40 + 51243395 - 2 * ((v40 - 144) & 0x30DEA13)) ^ 0x8EA088FF);
  (*(v37 + 8 * (v41 + 2031)))(v40 - 144);
  *(v40 - 144) = (v41 + 1090) ^ (50899313 * ((-878358131 - ((v40 - 144) | 0xCBA5518D) + ((v40 - 144) | 0x345AAE72)) ^ 0xFC3B6A24));
  *(v40 - 136) = v38;
  *(v40 - 128) = &a28;
  (*(v37 + 8 * (v41 + 1987)))(v40 - 144);
  *(v40 - 120) = &a33;
  *(v40 - 112) = &a31;
  *(v40 - 144) = v41 + 1029 + 2066391179 * ((((v40 - 144) | 0xBC9DEA60) - ((v40 - 144) & 0xBC9DEA60)) ^ 0x13BA6878);
  *(v40 - 136) = v38;
  *(v40 - 128) = &a28;
  (*(v37 + 8 * (v41 ^ 0x85E)))(v40 - 144);
  v44 = a29;
  *(v40 - 128) = v41 + 825 - 2066391179 * ((((v40 - 144) | 0x6031F712) - (v40 - 144) + ((v40 - 144) & 0x9FCE08E8)) ^ 0xCF16750A);
  *(v40 - 120) = v38;
  *(v40 - 112) = &a31;
  *(v40 - 104) = &a28;
  *(v40 - 144) = &a31;
  *(v40 - 136) = v44;
  (*(v37 + 8 * (v41 + 1986)))(v40 - 144);
  *(v40 - 144) = &a28;
  *(v40 - 136) = v38;
  *(v40 - 120) = v41 + 258 + 1388665877 * (((v40 - 144) & 0x300B386C | ~((v40 - 144) | 0x300B386C)) ^ 0x4259A57F);
  *(v40 - 128) = &a31;
  *(v40 - 112) = &a31;
  *(v40 - 104) = a15;
  (*(v37 + 8 * (v41 + 2031)))(v40 - 144);
  *(v40 - 136) = v41 + 742307843 * ((2 * ((v40 - 144) & 0x1BB3AAE8) - (v40 - 144) - 464759534) ^ 0xFA6ED847) + 1488;
  *(v40 - 144) = &a22;
  *(v40 - 128) = &a31;
  (*(v37 + 8 * (v41 + 1974)))(v40 - 144);
  *(v40 - 132) = v41 + 50899313 * ((-1181750597 - ((v40 - 144) | 0xB98FEABB) + ((v40 - 144) | 0x46701544)) ^ 0x8E11D112) + 986;
  *(v40 - 144) = &a31;
  v45 = (*(v37 + 8 * (v41 + 2039)))(v40 - 144);
  return (*(v37 + 8 * ((25 * (((v41 + 34) ^ (*(v40 - 136) == (((v41 + 545) | 0x40) ^ 0x66D9B8FC))) & 1)) ^ v41)))(v45);
}

uint64_t sub_22D34DF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(v22 - 128) = v21 - (v19 ^ 0xD4A71C5A) * v16 + 518;
  *(v22 - 120) = v20;
  *(v22 - 136) = a16;
  v23 = (*(v18 + 8 * (v21 ^ 0xBBE)))(v22 - 136);
  return (*(v18 + 8 * (((*(v22 - 112) > (v17 + 1)) * ((v21 ^ 0x382) + 1064)) ^ v21)))(v23);
}

uint64_t sub_22D34E190@<X0>(unsigned int a1@<W8>)
{
  v4 = v3 + (v1 ^ 0xD6Eu) - 1378;
  if (HIDWORD(v4))
  {
    v5 = 0;
  }

  else
  {
    v5 = (((v1 ^ 0xB90) - 928) ^ a1) >= v4;
  }

  v6 = !v5;
  return (*(v2 + 8 * ((89 * v6) ^ v1)))();
}

void sub_22D34E4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  v32 = ((1090269794 - ((v31 - 144) | 0x40FC3262) + ((v31 - 144) | 0xBF03CD9D)) ^ 0x10244F85) * v29;
  *(v31 - 136) = v32 + v26 + 1775;
  *(v31 - 132) = v32 + 1068377366;
  *(v31 - 144) = &a26;
  (*(v27 + 8 * (v26 ^ 0x882)))(v31 - 144);
  *(v31 - 128) = v26 - ((967630238 - ((v31 - 144) | 0x39ACDD9E) + ((v31 - 144) | 0xC6532261)) ^ 0x6974A079) * v29 + 943;
  *(v31 - 144) = &a18;
  *(v31 - 136) = &a18;
  *(v31 - 112) = &a26;
  *(v31 - 104) = v30;
  *(v31 - 120) = v28;
  (*(v27 + 8 * (v26 ^ 0x8D8)))(v31 - 144);
  JUMPOUT(0x22D34D204);
}

uint64_t sub_22D34E6B8@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  v55 = &a50 + (v53 - 1);
  v56 = 833381725 * ((*(*v54 + (*a28 & 0xFFFFFFFFFB946410)) ^ v55) & 0x7FFFFFFF);
  v57 = 833381725 * (v56 ^ HIWORD(v56));
  v58 = *(*(&off_28407CFD0 + v51 - 153) + (v57 >> 24) - 6);
  v59 = *(*(&off_28407CFD0 + (v51 ^ 0x181)) + (v57 >> 24) - 8);
  v60 = ((a1 >> v50) - ((((v51 + 1297) | 0x28) - 1495) & (2 * (a1 >> v50))) + (((v51 + 610) | 0x94) ^ 0xF) - 63) ^ *(*(&off_28407CFD0 + (v51 ^ 0x134)) + (v57 >> 24) - 4) ^ v58 ^ v59 ^ v57 ^ (-55 * (v57 >> 24));
  LODWORD(v57) = (((a1 >> v50) - ((((v51 + 17) | 0x28) + 41) & (2 * (a1 >> v50))) + (((v51 + 98) | 0x94) ^ 0xF) - 63) ^ *(*(&off_28407CFD0 + (v51 ^ 0x134)) + (v57 >> 24) - 4) ^ v58 ^ v59 ^ v57 ^ (-55 * BYTE3(v57)));
  *v55 = v60 ^ 0xB4;
  return (*(v52 + 8 * ((1387 * (v53 == (v57 != 180))) ^ v51)))();
}

uint64_t sub_22D34E818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v20 - 120) = a15;
  *(v20 - 136) = &a17;
  *(v20 - 128) = v19 + 742307843 * ((v20 - 136) ^ 0x1E228D55) + 1531;
  v21 = (*(v17 + 8 * (v19 + 2017)))(v20 - 136);
  return (*(v17 + 8 * (((v18 == ((2 * v19) ^ 0x35E) - 733) * ((367 * (v19 ^ 0xC2)) ^ 0x2D8)) | v19)))(v21);
}

uint64_t sub_22D34E8A8()
{
  v3 = 1082434553 * ((v2 - 1023002447 - 2 * ((v2 - 216) & 0xC3063989)) ^ 0x5841CF03);
  *(v2 - 184) = 0;
  *(v2 - 216) = v3 ^ 0xA68CCC3F;
  *(v2 - 212) = (v1 + 434) ^ v3;
  *(v2 - 200) = &STACK[0x460];
  *(v2 - 208) = &STACK[0x55C];
  v4 = (*(v0 + 8 * (v1 + 1853)))(v2 - 216);
  return (*(v0 + 8 * (((*(v2 - 192) != -1261164275) * (v1 - 355)) ^ v1)))(v4);
}

void sub_22D34E960(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  v31 = ((((2 * ((v30 - 144) ^ 0x1D52837B)) | 0x94B1D1DA) - ((v30 - 144) ^ 0x1D52837B) + 900142867) ^ 0x1F6BAFC0) * v28;
  *(v30 - 120) = (v26 - 534) ^ v31;
  *(v30 - 140) = v31 + v27 - 66570497 + 5 * (v26 ^ 0x4C2);
  *(v30 - 136) = &a26;
  *(v30 - 128) = a1;
  (*(v29 + 8 * (v26 ^ 0xC02)))(v30 - 144);
  JUMPOUT(0x22D34DB10);
}

uint64_t sub_22D34E9F0(__n128 a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, int a8)
{
  v9 = (a6 + 4 * a8);
  *v9 = a1;
  v9[1] = a1;
  return (*(v8 + 8 * (((a3 != a8) * a7) ^ a5)))();
}

uint64_t sub_22D34EABC(__n128 a1)
{
  a1.n128_u16[0] = 12850;
  a1.n128_u8[2] = 50;
  a1.n128_u8[3] = 50;
  a1.n128_u8[4] = 50;
  a1.n128_u8[5] = 50;
  a1.n128_u8[6] = 50;
  a1.n128_u8[7] = 50;
  return sub_22D34EAF8(59, a1);
}

uint64_t sub_22D34EAF8(int a1, double a2)
{
  v9 = (v6 + v2 + v3);
  *v9 = a2;
  v9[1] = a2;
  return (*(v8 + 8 * (((v7 + v2 != v4) * a1) ^ v5)))();
}

void sub_22D34EB78()
{
  *(v3 - 216) = (v1 - 875954893) ^ (1564307779 * ((((v3 - 216) | 0x175FE889) - (v3 - 216) + ((v3 - 216) & 0xE8A01770)) ^ 0x8052249A));
  (*(v0 + 8 * (v1 + 1398)))(v3 - 216);
  LODWORD(STACK[0x26C]) += (43 * (v1 ^ 0x326)) ^ 0x80;
  *(v3 - 212) = v1 - ((v3 - 216) ^ 0xD4A71C5A) * v2 + 600;
  *(v3 - 216) = (((v3 + 40) ^ 0x5A) * v2) ^ 0x35;
  *(v3 - 200) = &STACK[0x558];
  *(v3 - 208) = &STACK[0x46C];
  (*(v0 + 8 * (v1 ^ 0xBE6)))(v3 - 216);
  LODWORD(STACK[0x504]) = *(v3 - 192);
  LODWORD(STACK[0x270]) = 268435459;
  JUMPOUT(0x22D34EC7CLL);
}

uint64_t sub_22D34ED4C(uint64_t a1)
{
  v6 = v5[396] ^ (((((v1 - 476269884) & 0x1C634BE5) + v4) & *v5 | v5[623] & 0x80000000) >> 1);
  v5[623] = (v6 + v2 - ((2 * v6) & 0x929BF054)) ^ *(a1 + 4 * (*v5 & (v1 - 1273)));
  return (*(v3 + 8 * ((356 * (LODWORD(STACK[0x4E8]) > 0x26F)) ^ v1)))();
}

uint64_t sub_22D34EE2C()
{
  v6 = (v4 + v2 + 8);
  *(v6 - 1) = v5;
  *v6 = v5;
  return (*(v3 + 8 * ((((v0 & 0xFFFFFFFFFFFFFFF0) == 16) * (((v1 ^ 0x61A) + 1546) ^ 0x289)) ^ v1 ^ 0x61A)))();
}

uint64_t sub_22D34EE78()
{
  v0.n128_u64[0] = 0x6464646464646464;
  v0.n128_u64[1] = 0x6464646464646464;
  v1.n128_u64[0] = 0x3232323232323232;
  v1.n128_u64[1] = 0x3232323232323232;
  return sub_22D34EEBC(v0, v1);
}

uint64_t sub_22D34EEBC@<X0>(uint64_t a1@<X8>, int8x16_t a2@<Q0>, int8x16_t a3@<Q1>)
{
  v11 = (v7 + v5 + v3);
  v12 = vaddq_s8(vsubq_s8(*(v9 + v5 + 16), vandq_s8(vaddq_s8(*(v9 + v5 + 16), *(v9 + v5 + 16)), a2)), a3);
  *v11 = vaddq_s8(vsubq_s8(*(v9 + v5), vandq_s8(vaddq_s8(*(v9 + v5), *(v9 + v5)), a2)), a3);
  v11[1] = v12;
  return (*(v8 + 8 * ((v10 + v6 + 325) ^ ((v5 + v4 - 1714 == a1) << 10))))();
}

uint64_t sub_22D34EF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15)
{
  *(v20 - 136) = v18;
  *(v20 - 120) = v17;
  *(v20 - 128) = v15 - a15 * v19 - 93;
  v21 = (*(v16 + 8 * (v15 ^ 0xDD3)))(v20 - 136);
  return (*(v16 + 8 * ((152 * (*(v20 - 112) > (v15 ^ 0x66Du) + 1135060314)) ^ v15)))(v21);
}

_BYTE *sub_22D34F464(_BYTE *result, unsigned int a2, unint64_t a3)
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

uint64_t sub_22D34F5F4(mach_port_t a1, int a2, int *a3, uint64_t a4, int a5, _OWORD *a6, void *a7, _DWORD *a8, _DWORD *a9, _DWORD *a10, _DWORD *a11, _DWORD *a12)
{
  v52 = *MEMORY[0x277D85DE8];
  v31 = 1;
  v32 = a4;
  v33 = 16777472;
  v34 = a5;
  v35 = *MEMORY[0x277D85EF8];
  v17 = *a3;
  v36 = a2;
  v37 = v17;
  v38 = a5;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B000000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v20 = mach_msg(&msg, 3, 0x40u, 0xDCu, msgh_local_port, 0, 0);
  v21 = v20;
  if ((v20 - 268435458) <= 0xE && ((1 << (v20 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v20)
    {
      if (msg.msgh_id == 71)
      {
        v21 = 4294966988;
      }

      else if (msg.msgh_id == 1300)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v21 = 4294966996;
          if (v31 == 2 && msg.msgh_size == 212 && !msg.msgh_remote_port && HIBYTE(v33) == 1 && HIWORD(v36) << 16 == 1114112)
          {
            v22 = v34;
            if (v34 == v48)
            {
              v21 = 0;
              v23 = v35;
              *a3 = v39;
              v24 = v47;
              a6[6] = v46;
              a6[7] = v24;
              v25 = v45;
              a6[4] = v44;
              a6[5] = v25;
              v26 = v41;
              *a6 = v40;
              a6[1] = v26;
              v27 = v43;
              a6[2] = v42;
              a6[3] = v27;
              *a7 = v32;
              *a8 = v22;
              v28 = v50;
              *a9 = v49;
              *a10 = v28;
              *a11 = v51;
              *a12 = v23;
              return v21;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v21 = 4294966996;
          if (HIDWORD(v32))
          {
            if (msg.msgh_remote_port)
            {
              v21 = 4294966996;
            }

            else
            {
              v21 = HIDWORD(v32);
            }
          }
        }

        else
        {
          v21 = 4294966996;
        }
      }

      else
      {
        v21 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v21;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v21;
}

uint64_t sub_22D34F854(mach_port_t a1, unsigned int a2, __int128 *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3[5];
  v20 = a3[4];
  v21 = v4;
  v5 = a3[7];
  v22 = a3[6];
  v23 = v5;
  v6 = a3[1];
  v16 = *a3;
  v17 = v6;
  v7 = a3[3];
  v18 = a3[2];
  v14 = *MEMORY[0x277D85EF8];
  v15 = a2;
  v19 = v7;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x4B100000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v10 = mach_msg(&msg, 3, 0xA4u, 0x2Cu, msgh_local_port, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
    return v11;
  }

  if (v10)
  {
    mig_dealloc_reply_port(msg.msgh_local_port);
    return v11;
  }

  if (msg.msgh_id == 71)
  {
    v11 = 4294966988;
LABEL_18:
    mach_msg_destroy(&msg);
    return v11;
  }

  if (msg.msgh_id != 1301)
  {
    v11 = 4294966995;
    goto LABEL_18;
  }

  v11 = 4294966996;
  if ((msg.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

  if (msg.msgh_size != 36)
  {
    goto LABEL_18;
  }

  if (msg.msgh_remote_port)
  {
    goto LABEL_18;
  }

  v11 = v15;
  if (v15)
  {
    goto LABEL_18;
  }

  return v11;
}

uint64_t sub_22D34F9E8(mach_port_t a1, int a2, int a3, int a4, _OWORD *a5, uint64_t a6, int a7, _OWORD *a8, void *a9, _DWORD *a10)
{
  v26 = *MEMORY[0x277D85DE8];
  v19 = 1;
  v20 = a6;
  v21 = 16777472;
  v22 = a7;
  v23 = *MEMORY[0x277D85EF8];
  *v24 = a2;
  *&v24[4] = a3;
  *&v24[8] = a4;
  *&v24[12] = *a5;
  v25 = a7;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B200000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v14 = mach_msg(&msg, 3, 0x54u, 0x50u, msgh_local_port, 0, 0);
  v15 = v14;
  if ((v14 - 268435458) <= 0xE && ((1 << (v14 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v14)
    {
      if (msg.msgh_id == 71)
      {
        v15 = 4294966988;
      }

      else if (msg.msgh_id == 1302)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v15 = 4294966996;
          if (v19 == 1 && msg.msgh_size == 72 && !msg.msgh_remote_port && HIBYTE(v21) == 1)
          {
            v16 = v22;
            if (v22 == *&v24[16])
            {
              v15 = 0;
              *a8 = *v24;
              *a9 = v20;
              *a10 = v16;
              return v15;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v15 = 4294966996;
          if (HIDWORD(v20))
          {
            if (msg.msgh_remote_port)
            {
              v15 = 4294966996;
            }

            else
            {
              v15 = HIDWORD(v20);
            }
          }
        }

        else
        {
          v15 = 4294966996;
        }
      }

      else
      {
        v15 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v15;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v15;
}

uint64_t sub_22D34FBDC(mach_port_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x4B300000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v12 = mach_msg(&msg, 3, 0x18u, 0x3Cu, msgh_local_port, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (v12)
    {
      mig_dealloc_reply_port(msg.msgh_local_port);
      return v13;
    }

    if (msg.msgh_id == 71)
    {
      v13 = 4294966988;
    }

    else if (msg.msgh_id == 1303)
    {
      if ((msg.msgh_bits & 0x80000000) == 0)
      {
        if (msg.msgh_size == 52)
        {
          if (!msg.msgh_remote_port)
          {
            v13 = v19;
            if (!v19)
            {
              v16 = v21;
              *a2 = v20;
              *a3 = v16;
              v17 = v23;
              *a4 = v22;
              *a5 = v17;
              return v13;
            }

            goto LABEL_24;
          }
        }

        else if (msg.msgh_size == 36)
        {
          if (msg.msgh_remote_port)
          {
            v14 = 1;
          }

          else
          {
            v14 = v19 == 0;
          }

          if (v14)
          {
            v13 = 4294966996;
          }

          else
          {
            v13 = v19;
          }

          goto LABEL_24;
        }
      }

      v13 = 4294966996;
    }

    else
    {
      v13 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&msg);
    return v13;
  }

  mig_put_reply_port(msg.msgh_local_port);
  return v13;
}

uint64_t sub_22D34FD5C(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(&off_284082B80 + (*(off_284082EF8 + (*(off_284082E00 + (-3 * (dword_27D9FC498 ^ 0xE5 ^ qword_27D9FC2C8))) ^ 0x8Cu)) ^ (-3 * (dword_27D9FC498 ^ 0xE5 ^ qword_27D9FC2C8))) + 152);
  v2 = *(&off_284082B80 + ((-3 * ((qword_27D9FC2C8 - *v1) ^ 0xE5)) ^ *(off_284082EF8 + (*(off_284082E00 + (-3 * ((qword_27D9FC2C8 - *v1) ^ 0xE5))) ^ 0x93u))) + 122);
  v3 = *v1 ^ &v5 ^ *(v2 - 4);
  *v1 = 1707045629 * v3 - 0x154132243C8557AFLL;
  *(v2 - 4) = 1707045629 * (v3 ^ 0x1520B27A7613BCE5);
  v8 = 1765 - 1037613739 * ((669518714 - (&v6 | 0x27E80B7A) + (&v6 | 0xD817F485)) ^ 0x915D9FA);
  v7 = a1;
  LOBYTE(v2) = -3 * ((*(v2 - 4) + *v1) ^ 0xE5);
  (*(*(&off_284082B80 + ((-3 * (dword_27D9FC498 ^ 0xE5 ^ qword_27D9FC2C8)) ^ byte_22D5BF320[byte_22D5BA8E0[(-3 * (dword_27D9FC498 ^ 0xE5 ^ qword_27D9FC2C8))] ^ 0xA6]) + 34) + (*(off_284082D30 + (*(off_284083140 + v2 - 4) ^ 0x59u) - 8) ^ v2) + 2347))(&v6);
  return v6;
}

uint64_t sub_22D3500CC(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(&off_284082B80 + (*(off_284082EF8 + (*(off_284082E00 + (-3 * (dword_27D9FC4A0 ^ 0xE5 ^ qword_27D9FC2C8))) ^ 0x93u)) ^ (-3 * (dword_27D9FC4A0 ^ 0xE5 ^ qword_27D9FC2C8))) + 113);
  v2 = *(&off_284082B80 + (*(off_284082BE8 + (*(off_284082F00 + (-3 * ((qword_27D9FC2C8 + *v1) ^ 0xE5))) ^ 0x5Fu) - 4) ^ (-3 * ((qword_27D9FC2C8 + *v1) ^ 0xE5))) + 118);
  v3 = (*(v2 - 4) ^ *v1) - &v5;
  *v1 = 1707045629 * v3 - 0x1520B27A7613BCE5;
  *(v2 - 4) = 1707045629 * (v3 ^ 0x1520B27A7613BCE5);
  v6 = 1104 - 1037613739 * ((&v6 - 1754211598 - 2 * (&v6 & 0x9770DAF2)) ^ 0x4672F78D);
  v7 = a1;
  LOBYTE(v2) = -3 * (*v1 ^ 0xE5 ^ *(v2 - 4));
  return (*(*(&off_284082B80 + ((-3 * ((qword_27D9FC2C8 + dword_27D9FC4A0) ^ 0xE5)) ^ byte_22D5BF120[byte_22D5BA5E0[(-3 * ((qword_27D9FC2C8 + dword_27D9FC4A0) ^ 0xE5))] ^ 0xF7]) + 38) + (*(off_284082FD0 + (*(off_284083160 + v2 - 8) ^ 0xF7u) - 8) ^ v2) + 2375))(&v6);
}

uint64_t sub_22D350404(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(&off_284082B80 + ((-3 * ((qword_27D9FC2C8 + dword_27D9FC4B8) ^ 0xE5)) ^ byte_22D5BA3E0[byte_22D5C6450[(-3 * ((qword_27D9FC2C8 + dword_27D9FC4B8) ^ 0xE5))] ^ 0xE2]) + 37);
  v2 = *(&off_284082B80 + (*(off_284082EF8 + (*(off_284082E00 + (-3 * ((qword_27D9FC2C8 - *v1) ^ 0xE5))) ^ 0x8Cu)) ^ (-3 * ((qword_27D9FC2C8 - *v1) ^ 0xE5))) + 127);
  v3 = (*(v2 - 4) + *v1) ^ &v5;
  *v1 = 1707045629 * v3 - 0x1520B27A7613BCE5;
  *(v2 - 4) = 1707045629 * (v3 ^ 0x1520B27A7613BCE5);
  v6 = a1;
  v7 = (50899313 * (((&v6 | 0xB96167DF) - (&v6 & 0xB96167DF)) ^ 0xAD4EFA44)) ^ 0x5EE;
  LOBYTE(v2) = -3 * ((*(v2 - 4) + *v1) ^ 0xE5);
  return (*(*(&off_284082B80 + ((-3 * ((qword_27D9FC2C8 + dword_27D9FC4B8) ^ 0xE5)) ^ byte_22D5BA4E0[byte_22D5C6550[(-3 * ((qword_27D9FC2C8 + dword_27D9FC4B8) ^ 0xE5))] ^ 0x6C]) + 31) + (*(off_284082D30 + (*(off_284083140 + v2 - 4) ^ 0xF7u) - 8) ^ v2) + 2440))(&v6);
}

uint64_t sub_22D350778(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 16) ^ (-6989 * ((2 * (result & 0xEB8A) - result + 5237) ^ 0xF855));
  *(v1 + 64) = 0;
  *(v1 + 92) = 0;
  *(v1 + 96) = v2 & 0x1FF ^ 0x4F;
  v3 = v2 ^ 0x4F;
  if (v3 == 1)
  {
    v4 = 16;
    goto LABEL_5;
  }

  if (v3 == 2)
  {
    *(v1 + 88) = 1268067293;
    v4 = 20;
LABEL_5:
    *(v1 + 72) = 0x678A61A4EF02E92CLL;
    *(v1 + 80) = 0x98759E5B10FD16D3;
    *(v1 + 92) = v4;
  }

  *result = 2020691214;
  return result;
}

void sub_22D3508AC(uint64_t a1)
{
  v1 = *(a1 + 40) - 1564307779 * ((2 * (a1 & 0x6232EE25) - a1 - 1647504934) ^ 0xAC0DDC9);
  __asm { BRAA            X2, X17 }
}

uint64_t sub_22D350A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v18 = 1564307779 * ((((v17 - 136) | 0x71FA1CAE) - ((v17 - 136) & 0x71FA1CAE)) ^ 0xE6F7D0BD);
  *(v17 - 136) = &a14;
  *(v17 - 128) = v18 + ((32 * v15) ^ 0xEF6BFBFF) + ((v15 << ((v16 - 27) ^ 0x46)) & 0xDED7F7C0) + 1979187005;
  *(v17 - 124) = v16 - v18 + 528;
  v19 = (*(v14 + 8 * (v16 ^ 0xB9A)))(v17 - 136);
  return (*(v14 + 8 * ((51 * ((*(a9 + 4) - 352135383) < 0x7FFFFFFF)) ^ v16)))(v19);
}

uint64_t sub_22D350B34(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  v16 = 2066391179 * ((~((v15 - 128) | 0x5FEAE575) + ((v15 - 128) & 0x5FEAE575)) ^ 0xF329892);
  *(v15 - 120) = v15 - 228;
  *(v15 - 128) = v13 - v16 + 689;
  *(v15 - 124) = a13 - v16 + ((a2 + (v13 ^ 0x2E0) - 750) ^ 0x228D8B66);
  v17 = (*(v14 + 8 * (v13 + 2399)))(v15 - 128);
  v18 = *(v15 - 160);
  *(v15 - 228 + (v18 & 0x3F)) = 48;
  return (*(v14 + 8 * ((1409 * ((v18 & 0x3Fu) > 0x37)) ^ v13)))(v17, 3299688189);
}

uint64_t sub_22D350C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v3 + a2 - 16);
  v7 = (v3 + a1 - 16);
  *(v7 - 1) = *(v3 + a2 - 32);
  *v7 = v6;
  return (*(v5 + 8 * ((938 * ((v4 + v2) - (v3 & 0xFFFFFFE0) == 1332)) ^ (v4 + v2 - 99))))();
}

uint64_t sub_22D350C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v64 = v62;
  (*(v63 + 8 * (v62 + 1487)))();
  return (*(v63 + 8 * ((127 * (a62 != 0)) ^ (v64 + 176))))();
}

uint64_t sub_22D350D50@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, _DWORD *a49)
{
  v51[61] = &STACK[0x4F0] + v49 + 2048;
  v51[43] = &STACK[0x4F0] + v49 + 2176;
  v51[27] = &STACK[0x4F0] + v49 + 2304;
  *v51 = ((3 * ((a1 - 242133410) & 0xE6EA7BD ^ 0xA3u)) ^ 0xD42) + v49;
  LODWORD(STACK[0x334]) = -1541908459;
  return (*(v50 + 8 * ((1614 * (*a49 == 0)) ^ a1)))();
}

uint64_t sub_22D350E3C@<X0>(int a1@<W3>, int a2@<W8>)
{
  v7 = (v4 + 4 * v3);
  v8 = v3 + 1;
  *v7 = *(v6 + 4 * (*(v4 + 4 * v8) & 1)) ^ v7[397] ^ ((*(v4 + 4 * v8) & 0x7FFFFFFE | (((a2 + 24) | 0x40) ^ a1) & v2) >> 1);
  return (*(v5 + 8 * ((v8 != 227) ^ a2)))();
}

uint64_t sub_22D350E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, int a15, int a16, unsigned int a17, int a18, char *a19)
{
  v23 = 1037613739 * (&a14 ^ 0xD1022D7F);
  a19 = &a12;
  a14 = a10;
  a15 = v23 ^ 0x4838B1DD;
  a16 = (v21 - 2013067294) ^ v23;
  a17 = v23 - 43688278;
  v24 = (*(v20 + 8 * (v21 ^ 0xB78u)))(&a14);
  return (*(v20 + 8 * (((a18 == v19 + ((v21 - 826403837) & 0xBFE) - 756) * (((v21 + 664833335) | 0xC0034096) ^ v22)) ^ v21)))(v24);
}

uint64_t sub_22D351094@<X0>(int a1@<W0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t (*a58)(uint64_t, uint64_t, uint64_t))
{
  LODWORD(STACK[0x26C]) = v60;
  LODWORD(STACK[0x434]) = v59;
  LODWORD(STACK[0x424]) = 2109401750;
  v63 = v62[76];
  v64 = ((v63[22] ^ 0xB544D1EC) + 1253781012) ^ ((v63[22] ^ ((a1 ^ 0x60) + 2075699362)) - 2075700267) ^ ((v63[22] ^ 0x46BBB7EA) - 1186707434);
  LODWORD(STACK[0x31C]) = v58;
  v65 = (((v58 ^ 0xC2D21C56) + 1026417578) ^ ((v58 ^ 0x2B732E8) - 45560552) ^ ((v58 ^ 0x4822E493) - 1210246291)) - 1895376028 + v64;
  v63[22] = v65 ^ ((v65 ^ 0x8C5416AF) + 232566363) ^ ((v65 ^ 0xB84AFF0C) + 969033722) ^ ((v65 ^ 0xB5FED956) + 880173476) ^ ((v65 ^ 0xFF9777FF) + 2116013835) ^ 0xF6308D27;
  LODWORD(STACK[0x384]) = a2;
  LODWORD(STACK[0x42C]) = v61;
  v66 = (((a2 ^ 0x7415D197) - 1947586967) ^ ((a2 ^ 0xA9541006) + 1454108666) ^ ((a2 ^ 0x55060BBC) - 1426459580)) + (((v63[18] ^ 0xA99BB224) + 1449414108) ^ ((v63[18] ^ 0x5AF7B938) - 1526184248) ^ ((v63[18] ^ 0x7B2BC131) - 2066465073)) - 1979913536;
  v67 = (v66 ^ 0xE6C2255B) & (2 * (v66 & 0x8692A99A)) ^ v66 & 0x8692A99A;
  v68 = ((2 * (v66 ^ 0xE3C3647F)) ^ 0xCAA39BCA) & (v66 ^ 0xE3C3647F) ^ (2 * (v66 ^ 0xE3C3647F)) & 0x6551CDE4;
  v69 = v68 ^ 0x25504425;
  v70 = (v68 ^ 0x188C0) & (4 * v67) ^ v67;
  v71 = ((4 * v69) ^ 0x95473794) & v69 ^ (4 * v69) & 0x6551CDE4;
  v72 = (v71 ^ 0x5410580) & (16 * v70) ^ v70;
  v73 = ((16 * (v71 ^ 0x6010C861)) ^ 0x551CDE50) & (v71 ^ 0x6010C861) ^ (16 * (v71 ^ 0x6010C861)) & 0x6551CDE0;
  v74 = v72 ^ 0x6551CDE5 ^ (v73 ^ 0x4510CC00) & (v72 << 8);
  v75 = v66 ^ (2 * ((v74 << 16) & 0x65510000 ^ v74 ^ ((v74 << 16) ^ 0x4DE50000) & (((v73 ^ 0x204101A5) << 8) & 0x65510000 ^ 0x24100000 ^ (((v73 ^ 0x204101A5) << 8) ^ 0x51CD0000) & (v73 ^ 0x204101A5)))) ^ 0x4EF4F87D;
  v76 = (((v61 ^ 0xAFB6DAF0) + 1346970896) ^ ((v61 ^ 0xC5AE7BB2) + 978420814) ^ ((v61 ^ 0xE25F6B6F) + 497063057)) + (((v63[19] ^ 0xD43BAD01) + 734286591) ^ ((v63[19] ^ 0x2B2436F4) - 723793652) ^ ((v63[19] ^ 0x775851D8) - 2002276824)) + 749235510;
  v63[18] = v75;
  v63[19] = v76 ^ ((v76 ^ 0x6E9D5E31) - 1921353453) ^ ((v76 ^ 0xAB794EBA) + 1218341274) ^ ((v76 ^ 0x766177AC) - 1786359664) ^ ((v76 ^ 0xAF9DBFFB) + 1283102937) ^ 0x945F12F1;
  v77 = v62[76];
  v78 = (((LODWORD(STACK[0x26C]) ^ 0xDF7446A0) + 546027872) ^ ((LODWORD(STACK[0x26C]) ^ 0xA14CE9C4) + 1588794940) ^ ((LODWORD(STACK[0x26C]) ^ 0xF67F6549) + 159423159)) + 1585405377 + (((*(v77 + 80) ^ 0xC1A7582F) + 1045997521) ^ ((*(v77 + 80) ^ 0x6B232A99) - 1797466777) ^ ((*(v77 + 80) ^ 0x22C3B89B) - 583252123));
  v79 = (v78 ^ 0xB1DF3411) & (2 * (v78 & 0xB2103699)) ^ v78 & 0xB2103699;
  v80 = ((2 * (v78 ^ 0xF1DF7031)) ^ 0x879E8D50) & (v78 ^ 0xF1DF7031) ^ (2 * (v78 ^ 0xF1DF7031)) & 0x43CF46A8;
  v81 = v80 ^ 0x404142A8;
  v82 = (v80 ^ 0x800400) & (4 * v79) ^ v79;
  v83 = ((4 * v81) ^ 0xF3D1AA0) & v81 ^ (4 * v81) & 0x43CF46A8;
  v84 = v82 ^ 0x43CF46A8 ^ (v83 ^ 0x30D02A0) & (16 * v82);
  v85 = (16 * (v83 ^ 0x40C24408)) & 0x43CF46A0 ^ 0x430B0428 ^ ((16 * (v83 ^ 0x40C24408)) ^ 0x3CF46A80) & (v83 ^ 0x40C24408);
  v86 = (v84 << 8) & 0x43CF4600 ^ v84 ^ ((v84 << 8) ^ 0xCF46A800) & v85;
  v87 = v78 ^ (2 * ((v86 << 16) & 0x43CF0000 ^ v86 ^ ((v86 << 16) ^ 0x46A80000) & ((v85 << 8) & 0x43CF0000 ^ 0x890000 ^ ((v85 << 8) ^ 0x4F460000) & v85)));
  v88 = (((LODWORD(STACK[0x434]) ^ 0xF1237A0C) + 249333236) ^ ((LODWORD(STACK[0x434]) ^ 0x5990D057) - 1502662743) ^ ((LODWORD(STACK[0x434]) ^ 0x20F46076) - 552886390)) + 1642335501 + (((*(v77 + 84) ^ 0x4031A34C) - 1076994892) ^ ((*(v77 + 84) ^ 0x9DD3B52D) + 1647069907) ^ ((*(v77 + 84) ^ 0x55A5DC4C) - 1436933196));
  v89 = (v88 ^ 0x2CAB7628) & (2 * (v88 & 0xAEAB874D)) ^ v88 & 0xAEAB874D;
  v90 = ((2 * (v88 ^ 0x60AF762A)) ^ 0x9C09E2CE) & (v88 ^ 0x60AF762A) ^ (2 * (v88 ^ 0x60AF762A)) & 0xCE04F166;
  v91 = v90 ^ 0x42041121;
  v92 = (v90 ^ 0x8C002044) & (4 * v89) ^ v89;
  v93 = ((4 * v91) ^ 0x3813C59C) & v91 ^ (4 * v91) & 0xCE04F164;
  v94 = (v93 ^ 0x800C100) & (16 * v92) ^ v92;
  v95 = ((16 * (v93 ^ 0xC6043063)) ^ 0xE04F1670) & (v93 ^ 0xC6043063) ^ (16 * (v93 ^ 0xC6043063)) & 0xCE04F160;
  v96 = v94 ^ 0xCE04F167 ^ (v95 ^ 0xC0041000) & (v94 << 8);
  *(v77 + 80) = v87 ^ 0xBE5571E4;
  *(v77 + 84) = v88 ^ (2 * ((v96 << 16) & 0x4E040000 ^ v96 ^ ((v96 << 16) ^ 0x71670000) & (((v95 ^ 0xE00E107) << 8) & 0x4E040000 ^ 0x4A040000 ^ (((v95 ^ 0xE00E107) << 8) ^ 0x4F10000) & (v95 ^ 0xE00E107)))) ^ 0x3AEDAFAE;
  *v62 -= 320;
  return a58(3029847118, 2185563736, 61);
}

uint64_t sub_22D351970@<X0>(uint64_t a1@<X3>, uint64_t *a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  v48 = (v45 - 958) | 0x142;
  v49 = &STACK[0x1760] + v44;
  v50 = *a2;
  *(v49 + 17) = *(a2 + 1);
  *(v49 + 25) = *(a2 + 9);
  *(v49 + 29) = *(a2 + 13);
  v49[31] = *(a2 + 15);
  v52 = *a2;
  v51 = a2[1];
  *v49 = v52;
  *(v49 + 1) = v51;
  v49[16] = v50;
  v53 = (v49 + 16);
  v54 = (v48 + 1671974533) & 0x9C57B3BC;
  v55 = *(a1 + 8 * (v48 - 147)) - 12;
  v56 = *(v55 + (v53[5] ^ 0x56));
  v57 = *(a1 + 8 * (v48 - 296));
  v58 = *(v57 + (v53[15] ^ 0x74));
  LODWORD(v52) = *(v57 + (v53[7] ^ 0xB3));
  v59 = (v52 ^ 0xFFFFFF07) & ((((19 * v56 - 107) ^ (((v48 - 123) & 0xBC) + 76 * v56 - 92)) << 16) ^ 0x8E37D91A) | v52 & 0xE5;
  v60 = *(v57 + (v53[11] ^ 0x19));
  v61 = *(a1 + 8 * (v48 - 220)) - 8;
  LODWORD(v52) = *(v61 + (v53[2] ^ 0xA4));
  v62 = *(a1 + 8 * (v48 - 273)) - 12;
  v63 = *(v62 + (v53[12] ^ 0x28));
  v64 = (((v63 ^ (v63 >> 3) ^ (v63 >> 2) ^ 0x90) << 24) ^ 0x82730FB4) & (v58 ^ 0xFF7B0F41) | v58 & 0x4B;
  v65 = *(v62 + (*v53 ^ 0xBBLL));
  v66 = *(v55 + (v53[13] ^ 0xCFLL));
  v67 = (((v65 ^ 0xFFFFFFB2 ^ (v65 >> 3) ^ (((v65 ^ 0xB2) >> 2) | 0x80) ^ 0x1B) << 24) ^ 0x2458E119) & (((v52 ^ (v52 >> 5) ^ (v52 >> 3)) << 8) ^ 0xFF582419) & 0xFFFFE1FF | ((((v52 ^ (v52 >> 5) ^ (v52 >> 3)) >> 1) & 0xF) << 9);
  LOBYTE(v65) = (19 * v66 - 107) ^ (76 * v66 + 40);
  v68 = *(v62 + (v53[8] ^ 4));
  v196 = v57;
  v69 = (((v68 ^ 0x3E ^ (v68 >> 2) ^ (((v68 ^ 0x3E) >> 3) | 0xC0) ^ 0x93) << 24) ^ 0xF08A7C9E) & (v60 ^ 0xFFAB7D23) | v60 & 0x61;
  v70 = (v67 ^ 0x5F94B16D) & (*(v57 + (v53[3] ^ 0xF1)) ^ 0xFFFEFF83) | *(v57 + (v53[3] ^ 0xF1)) & 0x8B;
  v71 = *(v61 + (v53[6] ^ 0xAELL));
  v72 = (((v71 ^ (v71 >> 5) ^ ((v71 >> 3) | 0x80)) << 8) ^ 0x7EB3993C) & (v59 ^ 0xF0332642);
  LOBYTE(v71) = *(v55 + (v53[1] ^ 0x72));
  v73 = *(v61 + (v53[10] ^ 0x41));
  v74 = (v73 ^ 0x6D ^ (v73 >> 3) ^ (((v73 ^ 0x6D) >> 5) | 0x30)) << 8;
  v195 = v61;
  LODWORD(v52) = (*(v61 + (v53[14] ^ 0xC9)) ^ 0xCC ^ (*(v61 + (v53[14] ^ 0xC9)) >> 3) ^ (((*(v61 + (v53[14] ^ 0xC9)) ^ 0xCC) >> 5) | 0x28)) << 8;
  v75 = (v52 ^ 0xFFFF2AFF) & (((v65 << 16) & 0x280000 | (v64 ^ 0x5AA4293B) & ((v65 << 16) ^ 0xFF6E3FFF)) ^ 0xCE618357);
  v194 = v62;
  v76 = (*(v62 + (v53[4] ^ 0x51)) ^ (*(v62 + (v53[4] ^ 0x51)) >> 3) ^ (*(v62 + (v53[4] ^ 0x51)) >> 2)) << 24;
  v197 = v55;
  LOBYTE(v53) = *(v55 + (v53[9] ^ 0x7DLL));
  HIDWORD(a29) = -107;
  HIDWORD(a10) = 40;
  LODWORD(v53) = ((76 * v53 + 40) ^ (19 * v53 - 107)) << 16;
  LODWORD(a41) = v70 & 0x82B0A849 ^ 0xE7D4B2F3 ^ ((((19 * v71 - 107) ^ (76 * v71 + 40)) << 16) ^ 0x7DC757B6) & (v70 ^ 0xD73327C8);
  LODWORD(a43) = v76 & 0x2F000000 ^ 0x812AD53B ^ (v76 ^ 0xA2FFFFFF) & (v59 & 0x4C10C3 ^ 0xAEE7E729 ^ v72);
  LODWORD(a44) = v52 & 0x5A00 ^ 0xB9DB26D2 ^ v75;
  LODWORD(a42) = v53 & 0x720000 ^ 0x5414D46C ^ (v53 ^ 0xFF0EFFFF) & ((v74 & 0xF600 | (v74 ^ 0xFFFF07FF) & (v69 ^ 0x70A575FF)) ^ 0xCBA2AC02);
  v200 = (*(v47 + 560) + 7);
  LODWORD(v53) = *(v61 + (*(*(v47 + 568) + 6) ^ (((v54 + 124) | 0x42) - 111)));
  LOBYTE(v75) = *(v57 + (*(*(v47 + 568) + 11) ^ 0x3FLL));
  LODWORD(v52) = *(v61 + (*(*(v47 + 568) + 14) ^ 0xC3));
  LOBYTE(v76) = (v75 ^ 0x15) - 98;
  v198 = (~(2 * v75) & 0xC4) + v76;
  v77 = *(v57 + (*(*(v47 + 568) + 3) ^ 0x87));
  v199 = v52 ^ (v52 >> 5) ^ (v52 >> 3);
  v78 = *(v57 + (*(*(v47 + 568) + 7) ^ 0xEELL));
  v79 = *(v55 + (*(*(v47 + 568) + 13) ^ 0xFLL));
  v80 = ((((-107 - 73 * v79 + 92 * v79) ^ 0xFFFFFFB5) + ((38 * v79 + 42) & 0x6A)) << (v76 & 2) << (v76 & 2 ^ 2)) ^ (-107 - 73 * v79 + 92 * v79 - 2 * ((-107 - 73 * v79 + 92 * v79) & 0x5B ^ (-107 - 73 * v79) & 3) + 88);
  v81 = *(v62 + (*(*(v47 + 568) + 8) ^ 0xAALL));
  LODWORD(v62) = v81 ^ (v81 >> 3) ^ (v81 >> 2);
  v82 = *(v55 + (*(*(v47 + 568) + 1) ^ 0xDLL));
  v83 = (76 * v82 + 40) ^ (19 * v82 - 107);
  v84 = (((v83 >> 4) | (v77 << 12) ^ 0x16DB122C38426365) ^ 0x28242D93C0B22012) & ((v83 << 28) ^ 0x3AB43F9B70B7231ALL) ^ ((v77 << 12) ^ 0x16DB122C38426365) & ~(v83 >> 4) & 0x44800042008D005;
  LODWORD(a39) = (v84 >> 12) ^ 0xF9F95737;
  LODWORD(v57) = (v84 << 20) ^ 0xBAF00000 | a39;
  LODWORD(v77) = *(v194 + ((*(*(v47 + 568) + 4) - ((2 * *(*(v47 + 568) + 4)) & 0x1A4u) + 210) ^ 0x71));
  v85 = *(v194 + (*(*(v47 + 568) + 12) ^ 0x9FLL));
  v86 = v85 ^ (v85 >> 3) ^ (v85 >> 2);
  v87 = *(v61 + (*(*(v47 + 568) + 2) ^ 0x3FLL));
  v88 = *(v197 + (*(*(v47 + 568) + 9) ^ 0x9DLL));
  LODWORD(v61) = v57 ^ ((v87 ^ (v87 >> 5) ^ (v87 >> 3)) << 8);
  LODWORD(a37) = ((19 * v88 - 107) ^ (76 * v88 + 40));
  v89 = *(v196 + (*(*(v47 + 568) + 15) ^ 0x4BLL));
  v90 = *(v197 + (*(*(v47 + 568) + 5) ^ 0xF7));
  LODWORD(v52) = ((v86 << 24) ^ 0x9CA9C157) & ((((v80 << 16) ^ 0x124382FB) & ((v199 << 8) ^ 0x32FFDCFF) | (v199 << 8) & 0x7D00) ^ 0xEDD91D04) ^ (((v80 << 16) ^ 0x124382FB) & ((v199 << 8) ^ 0x32FFDCFF) & 0x10563EA8 | (v199 << 8) & 0x3C00);
  v91 = *(v194 + (**(v47 + 568) ^ 0xD6));
  v92 = ((19 * v90 - 107) ^ (76 * v90 + 40)) << 16;
  v93 = (((v92 ^ 0xFFF1FFFF) & (((v77 ^ (v77 >> 3) ^ (v77 >> 2)) << 24) ^ 0xBE96D636) | v92 & 0x690000) ^ 0xFA5F1FA5) & (((v78 | 0x757FF00) & ((((v53 >> (v54 + 127)) ^ v53 ^ ((v53 >> 5) | 8)) << 8) ^ 0x757E630) | v78 & 0xFFFFFFCF) ^ 0xF8A86442) ^ ((v78 | 0x757FF00) & ((((v53 >> (v54 + 127)) ^ v53 ^ ((v53 >> 5) | 8)) << 8) ^ 0x757E630) & 0x716366C | v78 & 0x716364C);
  LODWORD(v53) = (((v91 ^ 0x3B) >> 2) | ((v91 ^ 0x3B) << 6)) ^ 0xFFFFFFBB ^ (((v91 ^ (v91 >> 1)) >> 4) | (16 * (v91 ^ (v91 >> 1)))) & 0xFFFFFFCF;
  HIDWORD(a31) = v61 ^ ((((v53 >> 6) | (4 * v53)) ^ 0xEEEEEEEE) << 24);
  v94 = *(&off_284082B80 + (v54 ^ 0x39C)) - 8;
  v95 = *(&off_284082B80 + (v54 ^ 0x3C6)) - 8;
  v96 = *(&off_284082B80 + (v54 - 766)) - 8;
  v97 = *&v96[4 * (v78 ^ 0x73)] - (v93 ^ 0x21C176D8);
  LODWORD(a34) = *(v195 + (*(*(v47 + 568) + 10) ^ 8)) ^ 0xAD ^ (*(v195 + (*(*(v47 + 568) + 10) ^ 8)) >> 3) ^ (((*(v195 + (*(*(v47 + 568) + 10) ^ 8)) ^ 0xAD) >> 5) | 0x70);
  v98 = *(&off_284082B80 + (v54 & 0x7F6CB438)) - 12;
  v99 = *&v98[4 * (a34 ^ 0xF1)] ^ v97 ^ (*&v95[4 * (v80 ^ 0xC)] - 1409877230) ^ (*&v94[4 * (HIBYTE(HIDWORD(a31)) ^ 0xC)] - (HIBYTE(HIDWORD(a31)) ^ 0x5F6A3A58));
  LODWORD(a35) = v198;
  v100 = *&v98[4 * (v199 ^ 0x37)] ^ (*&v95[4 * (BYTE2(v57) ^ 0x7C)] - 1409877230) ^ (*&v96[4 * (v198 ^ 0xAE)] - (v198 ^ 0x21C17607)) ^ (*&v94[4 * (HIBYTE(v93) ^ 0xE3)] - (HIBYTE(v93) ^ 0x5F6A3AB7));
  LODWORD(a38) = v62;
  LODWORD(a33) = (v52 ^ 0xDA3482ED) & (v89 ^ 0xFFFFFF42) ^ v89 & 0xED;
  LODWORD(v89) = *&v98[4 * (BYTE1(v61) ^ 0x2D)] ^ (*&v94[4 * (v62 ^ 0x40)] - (v62 ^ 0x5F6A3A14)) ^ (*&v95[4 * (BYTE2(v93) ^ 0xF4) + 500 + 4 * ((v93 >> 15) & 0xF8 ^ 0xFFFFFF17)] - 1409877230) ^ (*&v96[4 * (v89 ^ 0xF6)] - ((v52 ^ 0xED) & (v89 ^ 0x42) ^ v89 & 0xED ^ 0x21C1765D));
  LODWORD(a32) = v93;
  LODWORD(v77) = (*&v95[4 * (a37 ^ 0xE3)] - 1409877230) ^ *&v98[4 * (BYTE1(v93) ^ 0xAD)] ^ (*&v96[4 * ((v84 >> 12) ^ 0x81)] - ((v84 >> 12) ^ 0x21C17628)) ^ ((BYTE3(v52) ^ 0xA095C5F9) + *&v94[4 * (BYTE3(v52) ^ 0x52)] + 1);
  v101 = *&v95[4 * (BYTE2(v77) ^ 0xC5)];
  v102 = *&v98[4 * (BYTE1(v89) ^ 0xF9)] ^ (*&v94[4 * (HIBYTE(v99) ^ 0x9E)] - (HIBYTE(v99) ^ 0x5F6A3ACA)) ^ (*&v96[4 * (v100 ^ 0x68)] - (v100 ^ 0x21C176C1)) ^ ((__ROR4__(__ROR4__(v101, 7) ^ 0x89E36FDC, 25) ^ 0x5A411556) + ((2 * v101) & 0x57EDF624));
  LODWORD(v84) = (*&v95[4 * (BYTE2(v99) ^ 0x96)] - 1409877230) ^ (*&v94[4 * (HIBYTE(v100) ^ 0xA8)] - (HIBYTE(v100) ^ 0x5F6A3AFC)) ^ (*&v96[4 * (v89 ^ 0xFA)] - (v89 ^ 0x21C17653)) ^ *&v98[4 * (BYTE1(v77) ^ 0x6E)];
  LODWORD(v61) = (*&v95[4 * (((BYTE2(v100) ^ 5) - (BYTE2(v100) ^ 0x79)) ^ 0xFFFFFFF8) + 4 * (BYTE2(v100) ^ 5)] - 1409877230) ^ *&v98[4 * (BYTE1(v99) ^ 0xE0)] ^ (*&v94[4 * (BYTE3(v89) ^ 0xA6)] - (BYTE3(v89) ^ 0x5F6A3AF2)) ^ (*&v96[4 * (v77 ^ 0x40)] - (v77 ^ 0x21C176E9));
  LODWORD(v77) = (*&v95[4 * (BYTE2(v89) ^ 0xA3)] - 1409877230) ^ *&v98[4 * (BYTE1(v100) ^ 0x9A)] ^ (*&v96[4 * (v99 ^ 0x9A)] - (v99 ^ 0x21C17633)) ^ (*&v94[4 * (BYTE3(v77) ^ 0x74)] - (BYTE3(v77) ^ 0x5F6A3A20));
  v103 = (*&v95[4 * (BYTE2(v77) ^ 0x2C)] - 1409877230) ^ *&v98[4 * (BYTE1(v61) ^ 0xBB)] ^ (*&v96[4 * (v84 ^ 0xE0)] - (v84 ^ 0x21C17649)) ^ (*&v94[4 * (HIBYTE(v102) ^ 0x48)] - (HIBYTE(v102) ^ 0x5F6A3A1C));
  LODWORD(v89) = (*&v95[4 * (BYTE2(v102) ^ 0xE2)] - 1409877230) ^ (*&v94[4 * (BYTE3(v84) ^ 0x7D)] - (BYTE3(v84) ^ 0x5F6A3A29)) ^ *&v98[4 * (BYTE1(v77) ^ 0x4F)] ^ (*&v96[4 * (v61 ^ 0x80)] - (v61 ^ 0x21C17629));
  LODWORD(v57) = (*&v95[4 * (BYTE2(v84) ^ 0xD9) + 500 + 4 * ((v84 >> 15) & 0xF8 ^ 0xFFFFFF4F)] - 1409877230) ^ (*&v94[4 * (BYTE3(v61) ^ 0x45)] - (BYTE3(v61) ^ 0x5F6A3A11)) ^ *&v98[4 * (BYTE1(v102) ^ 0x46)] ^ (*&v96[4 * (v77 ^ 0xA8)] - (v77 ^ 0x21C17601));
  LODWORD(v77) = (*&v95[4 * (BYTE2(v61) ^ 0x90)] - 1409877230) ^ (*&v94[4 * (BYTE3(v77) ^ 0x99)] - (BYTE3(v77) ^ 0x5F6A3ACD)) ^ *&v98[4 * (BYTE1(v84) ^ 0xA2)] ^ (*&v96[4 * (v102 ^ 0xA5)] - (v102 ^ 0x21C1760C));
  v104 = (*&v95[4 * (BYTE2(v77) ^ 0xF6)] - 1409877230) ^ (*&v94[4 * (HIBYTE(v103) ^ 0xE5)] - (HIBYTE(v103) ^ 0x5F6A3AB1)) ^ *&v98[4 * (BYTE1(v57) ^ 0xC1)] ^ (*&v96[4 * (v89 ^ 0x57)] - (v89 ^ 0x21C176FE));
  v105 = *&v98[4 * (BYTE1(v77) ^ 0x2C)];
  LODWORD(a40) = BYTE3(v57) ^ 0x5F6A3A27;
  LODWORD(v107) = __ROR4__((*&v94[4 * (BYTE3(v89) ^ 0x7E)] - (BYTE3(v89) ^ 0x5F6A3A2A)) ^ (*&v96[4 * (v57 ^ 0x72)] - (v57 ^ 0x21C176DB)) ^ (*&v95[4 * (((BYTE2(v103) ^ 0x95) - (BYTE2(v103) ^ 0xE9)) ^ 0xFFFFFFF8) + 4 * (BYTE2(v103) ^ 0x95)] - 1409877230) ^ (v105 - ((2 * v105) & 0xEBCFC244) - 169352926) ^ 0x6112C229, 24) ^ 0xF7A7AFD3;
  HIDWORD(v107) = v107;
  v106 = v107 >> 8;
  v108 = (*&v95[4 * (BYTE2(v89) ^ 0xD)] - 1409877230) ^ (*&v94[4 * (BYTE3(v57) ^ 0x73)] - a40) ^ *&v98[4 * (BYTE1(v103) ^ 0xEC)] ^ (*&v96[4 * (v77 ^ 0x3A)] - (v77 ^ 0x21C17693));
  v109 = *&v98[4 * (((BYTE1(v89) ^ 0x6B) - 1853103296 + ((v89 >> 7) & 0x7E ^ 0xFFFFFFA9)) ^ 0x918BE368)];
  v110 = v104 ^ 0xFBC8137;
  v111 = (*&v95[4 * (BYTE2(v57) ^ 0x7F)] - 1409877230) ^ (*&v94[4 * (BYTE3(v77) ^ 0x97)] - (BYTE3(v77) & 0xFFFFFFFD ^ 0x1D ^ (1600797406 - (BYTE3(v77) & 2)))) ^ (*&v96[4 * (v103 ^ 0x32)] - (v103 ^ 0x21C1769B)) ^ v109;
  v112 = v111 ^ 0x25BF358A;
  v113 = (*&v95[4 * (((v111 ^ 0x25BF358A) >> 16) ^ 0x7C)] - 1409877230) ^ (*&v94[4 * (HIBYTE(v110) ^ 0x8A)] - (HIBYTE(v110) ^ 0x5F6A3ADE)) ^ *&v98[4 * (BYTE1(v108) ^ 0x25)] ^ (*&v96[4 * (BYTE1(v107) ^ 0xD3)] - (BYTE1(v107) ^ 0x21C1767A));
  v114 = *&v94[4 * (((v106 ^ 0x1DD0DB03u) >> 24) ^ 0x8A)] - (((v106 ^ 0x1DD0DB03u) >> 24) ^ 0x5F6A3ADE);
  if (((v104 ^ 0xFBC8137) & 0x3F0000) != 0)
  {
    v115 = (v104 ^ 0xFBC8137u) >> 16;
  }

  else
  {
    v115 = ((v104 ^ 0xFBC8137u) >> 16) & 0xC0;
  }

  v116 = (*&v95[4 * (v115 ^ 0x7C)] - 1409877230) ^ *&v98[4 * BYTE1(v112)] ^ (*&v96[4 * (v108 ^ 0x37)] - (v108 ^ 0x21C1769E));
  v117 = (*&v95[4 * (BYTE2(v106) ^ 0xAC)] - 1409877230) ^ (*&v94[4 * (((v108 ^ 0xCC4472E7) >> 24) ^ 0x8A)] - (((v108 ^ 0xCC4472E7) >> 24) ^ 0x5F6A3ADE)) ^ *&v98[4 * BYTE1(v110)] ^ (*&v96[4 * (v111 ^ 0x5A)] - (v111 ^ 0x21C176F3));
  v118 = (*&v95[4 * (BYTE2(v108) ^ 0x38)] - 1409877230) ^ (*&v94[4 * (HIBYTE(v112) ^ 0x8A)] - (HIBYTE(v112) ^ 0x5F6A3ADE)) ^ (*&v96[4 * (v104 ^ 0xE7)] - (v104 ^ 0x21C1764E)) ^ *&v98[4 * (BYTE1(v106) ^ 0x8C)];
  v119 = v116 ^ v114 ^ 0x94240652;
  v120 = (*&v95[4 * ((v118 ^ 0x28B1C8AFu) >> 16)] - 1409877230) ^ *&v98[4 * ((v117 ^ 0xF582) >> 8)] ^ (*&v94[4 * (((v113 ^ 0x3AB33250u) >> 24) ^ 0x8A)] - (((v113 ^ 0x3AB33250u) >> 24) ^ 0x5F6A3ADE)) ^ (*&v96[4 * ((v116 ^ v114) ^ 0x82)] - ((v116 ^ v114) ^ 0x21C1762B));
  v121 = (v118 ^ 0x28B1C8AFu) >> 24;
  v122 = (*&v95[4 * (BYTE2(v113) ^ 0xCF)] - 1409877230) ^ *&v98[4 * ((v118 ^ 0xC8AF) >> 8)] ^ (*&v96[4 * (v117 ^ 0x52)] - (v117 ^ 0x21C176FB)) ^ (*&v94[4 * (HIBYTE(v119) ^ 0x8A)] - (HIBYTE(v119) ^ 0x5F6A3ADE));
  v123 = (*&v95[4 * BYTE2(v119)] - 1409877230) ^ (*&v94[4 * (((v117 ^ 0x57A0F582) >> 24) ^ 0x8A)] - (((v117 ^ 0x57A0F582) >> 24) ^ 0x5F6A3ADE)) ^ *&v98[4 * ((v113 ^ 0x3250) >> 8)] ^ (*&v96[4 * (v118 ^ 0x7F)] - (v118 ^ 0x21C176D6));
  BYTE1(v117) = BYTE1(v122) ^ 0xBB;
  v124 = (*&v95[4 * (BYTE2(v117) ^ 0xDC)] - 1409877230) ^ (*&v94[4 * (v121 ^ 0x8A)] - (v121 ^ 0x5F6A3ADE)) ^ *&v98[4 * (BYTE1(v119) ^ 0x57)] ^ (*&v96[4 * (v113 ^ 0x80)] - (v113 ^ 0x21C17629));
  v125 = (*&v95[4 * ((v124 ^ 0xBE27B2EF) >> 16)] - 1409877230) ^ *&v98[4 * ((v123 ^ 0x7C12) >> 8)] ^ (*&v94[4 * (((v120 ^ 0xDBAE4527) >> 24) ^ 0x8A)] - (((v120 ^ 0xDBAE4527) >> 24) ^ 0x5F6A3ADE)) ^ (*&v96[4 * (v122 ^ 0x10)] - (v122 ^ 0x21C176B9));
  v126 = (v124 ^ 0xBE27B2EF) >> 24;
  v127 = (*&v95[4 * (BYTE2(v120) ^ 0xD2)] - 1409877230) ^ *&v98[4 * (BYTE1(v124) ^ 0xE5)] ^ (*&v94[4 * (((v122 ^ 0x6FA1BBC0u) >> 24) ^ 0x8A)] - (((v122 ^ 0x6FA1BBC0u) >> 24) ^ 0x5F6A3ADE)) ^ (*&v96[4 * (v123 ^ 0xC2)] - (v123 ^ 0x21C1766B));
  v128 = (*&v95[4 * ((v122 ^ 0x6FA1BBC0u) >> 16)] - 1409877230) ^ *&v98[4 * ((v120 ^ 0x4527) >> 8)] ^ (*&v94[4 * (((v123 ^ 0x2B27C12) >> 24) ^ 0x8A)] - (((v123 ^ 0x2B27C12) >> 24) ^ 0x5F6A3ADE));
  v129 = *&v96[4 * (v124 ^ 0x3F)] - (v124 ^ 0x21C17696);
  BYTE2(v124) = BYTE2(v128) ^ BYTE2(v129);
  v130 = (*&v95[4 * (BYTE2(v123) ^ 0xB2)] - 1409877230) ^ *&v98[4 * BYTE1(v117)] ^ (*&v94[4 * (v126 ^ 0x8A)] - (v126 ^ 0x5F6A3ADE)) ^ (*&v96[4 * (v120 ^ 0xF7)] - (v120 ^ 0x21C1765E));
  v131 = (v130 ^ 0x7DDF413Fu) >> 24;
  v132 = (*&v95[4 * ((v130 ^ 0x7DDF413Fu) >> 16)] - 1409877230) ^ *&v98[4 * (((v128 ^ v129) >> 8) ^ 0x1F)] ^ (*&v94[4 * (((v125 ^ 0x179F0454) >> 24) ^ 0x8A)] - (((v125 ^ 0x179F0454) >> 24) ^ 0x5F6A3ADE)) ^ (*&v96[4 * (v127 ^ 0xF5)] - (v127 ^ 0x21C1765C));
  v133 = (v128 ^ v129 ^ 0xAC254810) >> 24;
  v134 = *&v94[4 * (v133 ^ 0x8A)];
  v135 = v133 ^ 0x5F6A3ADE;
  v136 = (*&v95[4 * ((v125 ^ 0x179F0454) >> 16)] - 1409877230) ^ *&v98[4 * ((v130 ^ 0x413F) >> 8)] ^ (*&v94[4 * (((v127 ^ 0x75457125) >> 24) ^ 0x8A)] - (((v127 ^ 0x75457125) >> 24) ^ 0x5F6A3ADE)) ^ (*&v96[4 * ((v128 ^ v129) ^ 0xC0)] - ((v128 ^ v129) ^ 0x21C17669));
  v137 = v134 - v135;
  v138 = *&v98[4 * (BYTE1(v125) ^ 0x53)];
  v139 = v138 ^ -v138 ^ (-1795874037 - (__ROR4__(__ROR4__(v138, 28) ^ 0xA44BDAEB, 4) ^ 0x2EB19EA5));
  v140 = *&v96[4 * (v130 ^ 0xEF)] - (v130 ^ 0x21C17646);
  v141 = *&v94[4 * (v131 ^ 0x8A)];
  v142 = v131 ^ 0x5F6A3ADE;
  v143 = (*&v95[4 * (BYTE2(v127) ^ 0x39)] - 1409877230) ^ v140 ^ v137 ^ (((2 * v139) & 0x29EA4616) + (v139 ^ 0x94F5230B));
  v144 = (*&v95[4 * (BYTE2(v124) ^ 0x59)] - 1409877230) ^ *&v98[4 * (BYTE1(v127) ^ 0x26)] ^ (v141 - v142);
  v145 = v132 ^ 0x8EBD9B97;
  v146 = v144 ^ (*&v96[4 * (v125 ^ 0x84)] - (v125 ^ 0x21C1762D));
  v147 = v143 ^ 0x8CA395FC;
  v148 = v136 ^ 0xA3ECFAB3;
  v149 = v146 ^ 0x10CC86ED;
  v150 = *&v96[4 * (v136 ^ 0x63)] - (v136 ^ 0x21C176CA);
  v151 = (*&v95[4 * ((v146 ^ 0x10CC86EDu) >> 16)] - 1409877230) ^ (*&v94[4 * (HIBYTE(v145) ^ 0x8A)] - (HIBYTE(v145) ^ 0x5F6A3ADE)) ^ 0x94F5230B ^ *&v98[4 * (BYTE1(v143) ^ 0xC2)];
  v152 = (v151 ^ -v151 ^ (v150 - (v151 ^ v150))) + v150;
  if (((v143 ^ 0x8CA395FC) & 0x10) != 0)
  {
    v153 = -16;
  }

  else
  {
    v153 = 16;
  }

  v154 = (*&v95[4 * (BYTE2(v132) ^ 0xC1)] - 1409877230) ^ *&v98[4 * ((v146 ^ 0x86ED) >> 8)] ^ (*&v94[4 * (HIBYTE(v148) ^ 0x8A)] - (HIBYTE(v148) ^ 0x5F6A3ADE));
  v155 = *&v96[4 * ((v153 + v147) ^ 0xC0)] - ((v153 + v147) ^ 0x21C17669);
  v156 = HIBYTE(v147);
  v157 = v154 ^ v155;
  v158 = (*&v95[4 * BYTE2(v148)] - 1409877230) ^ *&v98[4 * BYTE1(v145)] ^ (*&v96[4 * (v146 ^ 0x3D)] - (v146 ^ 0x21C17694)) ^ (*&v94[4 * (v156 ^ 0x8A)] - (v156 ^ 0x5F6A3ADE));
  v159 = (*&v95[4 * (BYTE2(v143) ^ 0xDF)] - 1409877230) ^ (*&v94[4 * (HIBYTE(v149) ^ 0x8A)] - (HIBYTE(v149) ^ 0x5F6A3ADE)) ^ *&v98[4 * (BYTE1(v136) ^ 0xAD)] ^ (*&v96[4 * (v132 ^ 0x47)] - (v132 ^ 0x21C176EE));
  v160 = *(&off_284082B80 + (v54 - 882));
  v161 = *(&off_284082B80 + (v54 ^ 0x38D)) - 8;
  v162 = *&v161[4 * ((v159 ^ 0x66EB169Au) >> 16)] ^ 0x4D522762;
  v163 = *(&off_284082B80 + (v54 ^ 0x3D2)) - 12;
  v164 = *(&off_284082B80 + (v54 ^ 0x3B1)) - 8;
  v165 = (((v154 ^ v155) ^ 0xA4) - 1352815326) ^ *&v163[4 * (BYTE1(v158) ^ 0x57)] ^ *(v160 + 4 * (HIBYTE(v152) ^ 0xBE)) ^ *&v164[4 * ((v154 ^ v155) ^ 0x91)] ^ (((v162 >> (a40 & 3) >> (a40 & 3 ^ 3)) ^ v162) >> 2);
  v166 = *&v161[4 * (BYTE2(v152) ^ 0xBF)] ^ 0x4D522762;
  v167 = *(v160 + 4 * (HIBYTE(v157) ^ 0x43)) ^ ((v158 ^ 0xC4) - 1352815326) ^ *&v163[4 * (BYTE1(v159) ^ 0x7C)] ^ v166 ^ *&v164[4 * (v158 ^ 0xF1)] ^ (v166 >> 2) ^ (v166 >> 5);
  v168 = *(v160 + 4 * (HIBYTE(v158) ^ 0xD5));
  LODWORD(v160) = *(v160 + 4 * ((v159 ^ 0x66EB169Au) >> 24));
  v169 = v168 ^ ((v159 ^ 0x9A) - 1352815326) ^ *&v164[4 * (v159 ^ 0xAF)] ^ *&v163[4 * ((v152 ^ 0x84FF) >> 8)];
  v170 = *&v164[4 * (v152 ^ 0xCA)];
  v171 = v162 ^ a41;
  v172 = v160 ^ (~v152 - 1352815326);
  LODWORD(v160) = *&v161[4 * ((v158 ^ 0x6CCB3DC4) >> 16)] ^ 0x4D522762;
  v173 = v172 ^ v160 ^ *&v163[4 * (BYTE1(v157) ^ 0x2D)];
  LODWORD(v163) = *&v161[4 * (BYTE2(v157) ^ 0x20)] ^ 0x4D522762;
  v174 = v165 - ((2 * v165) & 0x3435CA34) + 437970202;
  v175 = v173 ^ (v160 >> 2) ^ (v160 >> 5) ^ v170;
  v176 = (v167 - ((2 * v167) & 0xBAE5079A) + 1567785933) ^ a43;
  v177 = v163 ^ a42 ^ ((v169 ^ (v163 >> 2) ^ (v163 >> 5)) - ((2 * (v169 ^ (v163 >> 2) ^ (v163 >> 5))) & 0x97F22AFC) + 1274615166);
  HIDWORD(v178) = ((v175 ^ 0x23A4540) + 7197681 - 2 * ((v175 ^ 0x23A4540) & 0x6DD3F9 ^ v175 & 8)) ^ a44;
  LODWORD(v178) = ((v175 ^ 0x23A4540) - 2 * ((v175 ^ 0x23A4540) & 0x246DD3FD ^ v175 & 0xC) - 1536306191) ^ a44;
  v179 = *(&off_284082B80 + (v54 - 740));
  *(*(v47 + 560) + 8) = (-97 * *(v179 + (HIBYTE(v177) ^ 0x4CLL))) ^ ((-97 * *(v179 + (HIBYTE(v177) ^ 0x4CLL))) >> 5) ^ ((-97 * *(v179 + (HIBYTE(v177) ^ 0x4CLL))) >> 1) ^ 0xD4;
  *(v200 - 3) = (-97 * *(v179 + (HIBYTE(v176) ^ 0x61))) ^ ((-97 * *(v179 + (HIBYTE(v176) ^ 0x61))) >> 5) ^ ((-97 * *(v179 + (HIBYTE(v176) ^ 0x61))) >> 1) ^ 0xD8;
  v180 = *(&off_284082B80 + (v54 - 757)) - 8;
  v200[3] = ((((((v177 ^ 0xD2C1) >> 8) ^ 0xDA) + 99) ^ ((v177 ^ 0xD2C1) >> 8) ^ 0xDA) + v180[((v177 ^ 0xD2C1) >> 8) ^ 0x6CLL]) ^ 0xB3;
  v181 = *(&off_284082B80 + (v54 - 738)) - 4;
  v182 = v171 ^ v174;
  LOBYTE(v171) = v181[((((v177 ^ 0xA619D2C1) >> 16) ^ -((v177 ^ 0xA619D2C1) >> 16) ^ (510 - ((v177 ^ 0xA619D2C1) >> 16) - ((2 * ((v177 ^ 0xA619D2C1) >> 16)) ^ 0x1FEu))) + 255) ^ 0x5CLL] ^ 0xD9;
  v183 = ((((v177 ^ 0xA619D2C1) >> 16) ^ -((v177 ^ 0xA619D2C1) >> 16) ^ (-2 - ((v177 ^ 0xA619D2C1) >> 16) - ((2 * ((v177 ^ 0xA619D2C1) >> 16)) ^ 0xFE))) - 1) ^ 0xDE;
  v184 = v183 & 8 ^ v171;
  v185 = (v183 & 8 & v171) == 0;
  v186 = v171 - (v183 & 8);
  HIDWORD(v178) = (v178 >> 24) ^ 0x8829CA87;
  LODWORD(v178) = HIDWORD(v178);
  v187 = v178 >> 8;
  if (v185)
  {
    v188 = v184;
  }

  else
  {
    v188 = v186;
  }

  v200[2] = v188 ^ v183 & 0xF7;
  *(v200 - 1) = (v180[BYTE1(v176) ^ 0x94] + (((BYTE1(v176) ^ 0x22) + 99) ^ BYTE1(v176) ^ 0x22)) ^ 0xA8;
  *(v200 - 2) = BYTE2(v176) ^ 0x9E ^ v181[BYTE2(v176) ^ 0xD5];
  v189 = *(&off_284082B80 + (v54 ^ 0x3E9)) - 4;
  v190 = v189[v182 ^ 0xE7] - 24;
  *(v200 - 4) = v190 ^ 0x5D ^ (v190 >> 1) & 0x1E;
  v200[5] = (-97 * *(v179 + (HIBYTE(v187) ^ 0x60))) ^ ((-97 * *(v179 + (HIBYTE(v187) ^ 0x60))) >> 5) ^ ((-97 * *(v179 + (HIBYTE(v187) ^ 0x60))) >> 1) ^ 0xFE;
  v191 = v189[((180 - (v177 ^ 0x56) + (v177 ^ 0xE2) - 2 * ((180 - (v177 ^ 0x56)) & (v177 ^ 0xE2))) ^ -(v177 ^ 0xE2)) + 180] - 24;
  v200[4] = v191 ^ 0x62 ^ (v191 >> 1) & 0x1E;
  v200[7] = (v180[BYTE1(v187) ^ 0x4FLL] + (((BYTE1(v187) ^ 0xF9) + 99) ^ BYTE1(v187) ^ 0xF9)) ^ 0xBE;
  *(v200 - 5) = (v180[BYTE1(v182) ^ 0x1FLL] + (((BYTE1(v182) ^ 0xA9) + 99) ^ BYTE1(v182) ^ 0xA9)) ^ 0x84;
  v192 = v189[v176 ^ 0xDDLL];
  *v200 = (((v192 + ((v192 - 24) ^ 0xAE) - 23) ^ 0xFE) + v192 - 24) ^ ((v192 - 24) >> 1) & 0x1E;
  *(v200 - 7) = (-97 * *(v179 + (HIBYTE(v182) ^ 0x67))) ^ ((-97 * *(v179 + (HIBYTE(v182) ^ 0x67))) >> 5) ^ ((-97 * *(v179 + (HIBYTE(v182) ^ 0x67))) >> 1) ^ 0xE1;
  v200[6] = BYTE2(v187) ^ 0x8E ^ v181[BYTE2(v187) ^ 0x55];
  *(v200 - 6) = BYTE2(v182) ^ 0xD3 ^ v181[BYTE2(v182) ^ 0x7DLL];
  LOBYTE(v192) = v189[v187 ^ 0xF7] - 24;
  v200[8] = v192 ^ ((v192 & (v192 ^ 2) & 0x3E) >> 1) ^ 0xCB;
  LODWORD(a36) = (v54 - 644) | 0x42;
  return (*(v46 + 8 * (v54 ^ 8)))(148, 179, &off_284082B80, v200, v180, v189, a37, 4294967199, a3, a4, a5, a6, a7, a8, a9, a10, v194, a12, v195, a14, v196, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, v197, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44);
}

uint64_t sub_22D351A50@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38)
{
  v41 = 383 * (a38 ^ 0x548);
  v42 = *(v40 + 96);
  v43 = *(a1 + 72);
  *v42 = v43 ^ 0x9D;
  v42[1] = ((5 * (v41 ^ 0xC8)) ^ BYTE1(v43) ^ 0x43) - ((v43 >> 7) & 0x60) - 80;
  v42[2] = (v38 ^ BYTE2(v43)) - ((v43 >> 15) & 0x60) - 80;
  v42[3] = (HIBYTE(v43) ^ 0x88) - ((v43 >> 23) & 0x60) - 80;
  return (*(v39 + 8 * ((310 * (*(a1 + 92) > 4u)) ^ v41)))();
}

uint64_t sub_22D351B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v64 = 181 * (v62 ^ 0x130);
  *(a56 + 52) = *(a56 + 52) + v64 - 904;
  LODWORD(STACK[0x2CC]) = *(a56 + 360);
  *v63 -= 2432;
  return (*(v61 + 8 * ((1111 * (v64 == 905)) ^ (v64 - 788))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61);
}

uint64_t sub_22D351BCC()
{
  v5 = (v2 + v4 - 252 + 8);
  *(v5 - 1) = 0xB0B0B0B0B0B0B0B0;
  *v5 = 0xB0B0B0B0B0B0B0B0;
  return (*(v3 + 8 * ((((v1 & 0xFFFFFFFFFFFFFFF0) == 16) * (((v0 - 1804) | 0x201) ^ 0x246)) ^ v0)))();
}

uint64_t sub_22D351C20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W4>, unsigned int a4@<W8>)
{
  v12 = ((((v10 + 99858912) & (v7 + 979)) + v6) ^ HIDWORD(v11)) + (*(v8 + 4 * a1) ^ a4);
  v13 = v12 - ((v12 << (((v10 - 32 + v7) | 0x88u) + 121)) & 0x140824816) - 0x8ADE2B75FBEDBF5;
  *(v8 + 4 * a2) = v13 ^ 0x65D6EBEF;
  *(v8 + 4 * a1) = HIDWORD(v13) ^ 0x32C5D2AC;
  return (*(v9 + 8 * (v10 ^ ((v5 + 1 != v4) * a3))))();
}

uint64_t sub_22D351DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  (*(a1 + 8 * (v41 ^ (v41 + 1681))))(a15 + a16, 0x100004077774924);
  v43 = (*(a40 + 8 * (v40 + 1806)))();
  *v42 = v43;
  v42[1] = 1812433253 * ((v43 >> (((v41 ^ (v41 - 18)) - 103) ^ 0xB1)) ^ v43) + 1;
  return (*(a40 + 8 * (v41 ^ (v41 + 2030) ^ 0xA)))(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

uint64_t sub_22D352104@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  HIDWORD(a3) = v60 ^ a9;
  *a4 = a1;
  v61 = (*(v56 + 48 * v58 + 8))(a5);
  return (*(v57 + 8 * ((1691 * (v61 - 1541908459 - ((v61 << (v59 + (v60 ^ a9) + 14)) & 0x4830B02A) == ((4 * v60) ^ 0xA4185FD9))) ^ v60)))(v61, v62, v63, 1936831958, 2753058837, 3733228013, 3261042563, 2147483652, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56);
}

uint64_t sub_22D3521F4@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W6>, int a7@<W7>, unsigned int a8@<W8>, uint64_t a9, int a10, int a11, uint64_t a12)
{
  v20 = (a6 + 97) | a5;
  *(v14 + v13) = (((a6 + 97) | a5) + 127) ^ *(a12 + v13);
  v21 = a8 + a7 + 2;
  v22 = (((a11 ^ v15) + v16) ^ ((a11 ^ v17) + v18) ^ ((a11 ^ a1) + ((v20 - 1153) ^ a2))) + a3;
  v23 = v22 < v12;
  v24 = v21 + v12 < v22;
  if (v21 > a8 != v23)
  {
    v24 = v23;
  }

  return (*(v19 + 8 * ((v24 * a4) ^ v20)))();
}

uint64_t sub_22D35221C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, uint64_t a15, int a16, uint64_t a17)
{
  a14 = v20 + ((700641896 - (&a14 | 0x29C2F268) + (&a14 | 0xD63D0D97)) ^ 0x8A705912) * v21 + 89;
  a17 = v17;
  a15 = a10;
  v22 = (*(v18 + 8 * (v20 ^ 0xBE5)))(&a14);
  return (*(v18 + 8 * ((2628 * (a16 == ((v20 + 50515265) | 0xE4A1008C) + v19)) ^ v20)))(v22);
}

uint64_t sub_22D3523A4(uint64_t result)
{
  if ((v2 + v4 - 1) >= 0x7FFFFFFF)
  {
    v5 = 704270764 - v3;
  }

  else
  {
    v5 = v3;
  }

  *(v1 + 4) = v5;
  *(result + 4) = 78708249;
  return result;
}

uint64_t sub_22D352484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  *v21 = 0x9908B0DF00000000;
  v23 = **(v19 + 8 * (v18 - 230));
  *(v22 - 144) = a18 + v18 - 955392539 - 16;
  *(v22 - 152) = v18 - 955392539 - a18;
  *(v22 - 112) = a18 + v18 - 2030745032;
  v21[4] = v23 + a18;
  v21[5] = a18;
  *(v22 - 140) = a18 ^ (v18 - 955392539) ^ 0x36;
  *(v22 - 136) = a18;
  v24 = (*(v20 + 8 * (v18 + 2089)))(v22 - 152);
  return (*(v20 + 8 * *(v22 - 148)))(v24);
}

uint64_t sub_22D352538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v21 = *(v20 - 124);
  if (v21 == 2)
  {
    return (*(v19 + 8 * (((*(v20 - 128) == 0) * (a7 ^ (a7 + 300) ^ 0x31B)) ^ (a8 + a7 + 679))))(1305713888, a9);
  }

  if (v21 == 1)
  {
    return (*(v19 + 8 * ((94 * (*(v20 - 128) != ((9 * (a7 ^ (a7 - 89))) ^ 0x39F))) ^ (a8 + a7 + 858))))(1305713888);
  }

  *(v20 - 129) = (&a19 ^ 0xBA) * (&a19 + 17);
  *(v20 - 130) = (&a19 + ((a7 + 71) ^ 0x35)) * (&a19 ^ 0xBB);
  return (*(v19 + 7736))();
}

uint64_t sub_22D352670(_DWORD *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = 742307843 * ((-547177076 - (a1 | 0xDF62BD8C) + (a1 | 0x209D4273)) ^ 0x3EBFCF26);
  v3 = a1[12] + v2;
  v4 = a1[11] + v2;
  v9[1] = v3 - 742307843 * (v9 ^ 0x1E228D55) + 542045597;
  v5 = *(&off_284082B80 + (v3 + 473373723)) - 8;
  result = (*&v5[8 * (v3 + 473376083)])(v9);
  if (v4 > 710712920)
  {
    if (v4 == 995925592)
    {
      v7 = 3;
    }

    else
    {
      if (v4 != 710712921)
      {
        goto LABEL_11;
      }

      v7 = 1;
    }

LABEL_10:
    v8 = (*&v5[8 * (v3 ^ 0xE3C8ED51)])(*(*(&off_284082B80 + (v3 + 473373789)) + 6 * v7 + 4) + (v3 ^ 0x29DD6C4D), 0x100004077774924) == 0;
    __asm { BRAA            X8, X17 }
  }

  if (v4 == 710712917)
  {
    v7 = 0;
    goto LABEL_10;
  }

  if (v4 == 710712920)
  {
    v7 = 2;
    goto LABEL_10;
  }

LABEL_11:
  a1[2] = 1541866409;
  return result;
}

uint64_t sub_22D352894@<X0>(unsigned int a1@<W8>)
{
  v5 = *(&STACK[0x240] + a1 + 72);
  v6 = ((a1 << ((v2 - 19) ^ 0x2B)) & 0xCCFFDDB8) + (a1 ^ 0xE67FEEDF) + v1;
  *(v3 + v6) = (HIBYTE(v5) ^ 0x88) - ((v5 >> 23) & 0x60) - 80;
  *(v3 + v6 + 1) = (BYTE2(v5) ^ 0x47) - ((v5 >> 15) & 0x60) - 80;
  *(v3 + v6 + 2) = (BYTE1(v5) ^ 0xCA) - ((v5 >> 7) & 0x60) - 80;
  *(v3 + v6 + 3) = v5 ^ 0x9D;
  return (*(v4 + 8 * ((106 * (a1 + 4 < LODWORD(STACK[0x29C]))) ^ v2)))();
}

uint64_t sub_22D352964@<X0>(uint64_t a1@<X8>)
{
  v5 = v2;
  v7 = a1;
  v6 = v3 + 1388665877 * (((&v5 | 0x6870F43) + (~&v5 | 0xF978F0BC)) ^ 0x8B2A6DAE) + 104;
  return (*(v1 + 8 * (v3 + 2128)))(&v5);
}

uint64_t sub_22D352BA4(double a1, int8x16_t a2, double a3, int8x16_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int8x16_t *a9)
{
  v13 = (v12 + v9);
  v14 = vaddq_s8(vsubq_s8(v13[1], vandq_s8(vaddq_s8(v13[1], v13[1]), a4)), a2);
  *a9 = vaddq_s8(vsubq_s8(*v13, vandq_s8(vaddq_s8(*v13, *v13), a4)), a2);
  a9[1] = v14;
  return (*(v11 + 8 * (a8 + v10 - 1906 + 1106)))();
}

uint64_t sub_22D352C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v32 = v28 + 360;
  if (((a19 - v28) | (v28 - a19)) > v28 - 1)
  {
    v33 = 0x80000000;
  }

  else
  {
    v33 = 0x7FFFFFFF;
  }

  *v29 = v33;
  (*(v30 + 8 * (v28 + 2392)))(a28);
  v34 = v29[1];
  v35 = v29[398] ^ ((v29[2] & 0x7FFFFFFE | v34 & 0x80000000) >> 1) ^ *(v31 + 4 * (v29[2] & 1));
  *v29 = v29[(v32 + 517231703) & 0xE12BAB50 ^ 0x9DLL] ^ ((v34 & 0x7FFFFFFE | *v29 & 0x80000000) >> 1) ^ *(v31 + 4 * (v34 & 1));
  v29[1] = v35;
  return (*(v30 + 8 * (v32 + 889)))();
}

uint64_t sub_22D352D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  LODWORD(STACK[0x294]) = v62;
  LODWORD(STACK[0x2C8]) = 268435459;
  return (*(v63 + 8 * ((1557 * (a9 == -1211192435)) ^ (a9 - 17))))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_22D352D9C()
{
  v7 = v6 + v3;
  v8 = (v3 - 1) & 0xF;
  v9 = v8 + 1 - v3;
  v10 = v1 + v9;
  v11 = v1 + v8 + 1;
  v12 = v0 + v9;
  v13 = v0 + v8 + 1;
  v14 = v2 - v3 + v8 + 2;
  v15 = v8 + ((v4 - 668) ^ 0x354u) + v2 - 1314;
  v17 = v13 > v6 && v12 < v7;
  if (v11 > v6 && v10 < v7)
  {
    v17 = 1;
  }

  v20 = v14 < v7 && v15 > v6 || v17;
  return (*(v5 + 8 * (((v20 ^ 1) * (((v4 - 668) | 6) ^ 0x662)) ^ v4)))();
}

uint64_t sub_22D352E34@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W3>, uint64_t a4@<X4>, int a5@<W8>)
{
  v11 = HIDWORD(v6) + HIDWORD(v7) + (*(v10 + 4 * a5) ^ v5);
  *(v10 + 4 * a3) = v11 + v5 - (a2 & (2 * v11));
  *(v10 + 4 * a5) = v5 + v9 - 342 + (v11 >> (37 * (v9 ^ 0x31u) + 103)) - 1502;
  return (*(v8 + 8 * (v9 ^ (3633 * (a1 + 1 == a4)))))();
}

uint64_t sub_22D352F48(uint64_t a1)
{
  v7 = *(v3 + 8 * (v6 ^ 0xF8B));
  v9 = v7(a1, 0);
  if (v9 == 16)
  {
    v5 = -42029;
    result = a1;
    goto LABEL_7;
  }

  v10 = v9;
  result = a1;
  if (v10 == 12)
  {
LABEL_7:
    result = (*(v3 + 8 * (v2 ^ 0xFBD)))(result);
    goto LABEL_8;
  }

  if (v10)
  {
    v5 = -42030;
    goto LABEL_7;
  }

  v5 = 0;
  *v4 = a1;
LABEL_8:
  *v1 = v5;
  return result;
}

uint64_t sub_22D352FCC@<X0>(uint64_t a1@<X8>)
{
  v5 = (a1 + v4 - 220 + 8);
  *(v5 - 1) = 0xB0B0B0B0B0B0B0B0;
  *v5 = 0xB0B0B0B0B0B0B0B0;
  return (*(v3 + 8 * ((((v1 & 0x30) == 16) * (v2 - 143)) ^ v2)))();
}

uint64_t sub_22D353014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v50 = 3 * (v47 ^ 0x10A);
  v51 = v42 & (v43 ^ 0x93C252E1BE718AB5);
  v52 = v42 + (v43 ^ 0x93C252E1BE718AB5);
  v53 = v48 ^ v46;
  v54 = v48 ^ v46 ^ 0x792285C8BC3F7415;
  v55 = v52 - 2 * v51;
  v56 = v43 & 0xDA6515BD074DD872 ^ 0x924010A106418830 ^ (v43 ^ 0x93C252E1BE718AB5) & (a6 ^ 0xA1943B3DF165B107);
  v57 = (v53 ^ 0x26DF0FE8B357AD83) & (a6 ^ 0x840ED17F09D7968ALL) ^ a6 & 0xA00275DFF0972669;
  v58 = (v43 ^ 0x93C252E1BE718AB5 ^ a6) & 0x8473E0F868A4C918 ^ a6 ^ ((-v56 ^ a8 ^ (v56 + a8 - ((2 * v56) & 0x66E6F11C31DA9DD4)) ^ (v54 - v56 + (-v54 ^ (v56 - (v56 ^ v54)) ^ (v54 - ((2 * v54) & 0x559F683A7EB28CE2) + 0x2ACFB41D3F594671) ^ 0xD5304BE2C0A6B98ELL) + 1)) + v54) ^ (v55 ^ 0xBA2F2581BB5B477ALL) & (v43 ^ 0x93C252E1BE718AB5 ^ a6 ^ 0x7BF12E80F6286975);
  v59 = v58 ^ 0x42A04453C986FE37;
  v60 = (v58 ^ 0x42A04453C986FE37) >> 10;
  if (v57 == 0x8002515F00970608)
  {
    v61 = v58 ^ 0x42A04453C986FE37;
  }

  else
  {
    v61 = v58 ^ 0x1FBBAC367901C8 ^ v60;
  }

  v62 = __ROR8__(v59, 7);
  return (*(a40 + 8 * ((7 * (((((v50 + a7) & v40) - 1086) ^ v41) + v49 == v45)) ^ v50)))(a1, a2, a3, a4, a5, v44 ^ __ROR8__(((v62 & 0xFE000000000003FFLL) - ((2 * v62) & 0x50000000000003F4) + 0x2962361970E145FALL) ^ __ROR8__((((v59 << 54) ^ 0x4DC970F7B4F6785DLL) & ((v58 >> 17) ^ 0xFFEFDBAF9DDF99BCLL) | (v58 >> 17) & 0xF084B0987A2) ^ 0x23BFA19ABE7AA925 ^ (v60 + v59 - 2 * (v61 & v60)), 54) ^ a4, 10));
}

void sub_22D35365C(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *(&off_284082B80 + ((-3 * (dword_27D9FC2D0 ^ 0xE5 ^ qword_27D9FC2C8)) ^ byte_22D5BA3E0[byte_22D5C6450[(-3 * (dword_27D9FC2D0 ^ 0xE5 ^ qword_27D9FC2C8))] ^ 0xF7]) - 24);
  v4 = *(v3 - 4);
  v5 = *(&off_284082B80 + (*(off_284082EF8 + (*(off_284082E00 + (-3 * (v4 ^ qword_27D9FC2C8 ^ 0xE5))) ^ 0xA6u)) ^ (-3 * (v4 ^ qword_27D9FC2C8 ^ 0xE5))) + 126);
  v6 = 1707045629 * (v4 ^ &v8 ^ 0x1520B27A7613BCE5 ^ *(v5 - 4));
  *(v3 - 4) = v6;
  *(v5 - 4) = v6;
  **(a1 + 96) = *(a2 + 16);
  LODWORD(v6) = 1785193651 * ((v10 & 0x50787155 | ~(v10 | 0x50787155)) ^ 0xBC5B628A);
  v12 = v9;
  v11 = v6 - 562358852;
  v13 = v6 ^ 0xA3CEBA4D;
  LODWORD(v5) = 1707045629 * ((*(v5 - 4) - *(v3 - 4)) ^ 0x7613BCE5);
  v7 = *(&off_284082B80 + ((-3 * (dword_27D9FC2D0 ^ 0xE5 ^ qword_27D9FC2C8)) ^ byte_22D5BA4E0[byte_22D5C6550[(-3 * (dword_27D9FC2D0 ^ 0xE5 ^ qword_27D9FC2C8))] ^ 0x82]) + 27) - 8;
  (*&v7[8 * (*(off_284082D68 + (*(off_284082CD0 + v5 - 12) ^ 0x6Fu) - 12) ^ v5) + 18960])(v10);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_22D353950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, char a35, char a36, char a37, char a38, char a39, char a40, char a41, char a42, unsigned int a43, unsigned int a44, unsigned int a45, unsigned int a46, unsigned int a47, unsigned int a48, int a49, int a50, char a51)
{
  if (a51 == 1)
  {
    v61 = v58 + 212;
    a35 = (8 * ((~(2 * a44) | 7) + a44) - 24) ^ 0x50;
    a36 = (v58 - 93) ^ (a44 >> 5);
    a37 = v54 ^ (a44 >> 13);
    a38 = v54 ^ (a44 >> 21);
    a39 = ((__PAIR64__(a43, a44) >> 29) - ((2 * (__PAIR64__(a43, a44) >> 29)) & 0x52) - 87) ^ 0x19;
    a40 = v54 ^ (a43 >> 5);
    a41 = v54 ^ (a43 >> 13);
    v62 = (a43 >> 21) ^ 0xFFFFFFB0;
    v60 = a22;
  }

  else
  {
    v59 = v58;
    v60 = a22;
    if (a51 != 2)
    {
      goto LABEL_6;
    }

    a35 = (a43 >> (v58 + 8)) - ((2 * (a43 >> (v58 + 8))) & 0x60) - 80;
    a36 = (a43 >> 13) - ((a43 >> 12) & 0x60) - 80;
    v61 = v58 + 212;
    a37 = (a43 >> 5) - ((a43 >> 4) & 0x60) - 80;
    a38 = (__PAIR64__(a43, a44) >> 29) + (~(2 * (__PAIR64__(a43, a44) >> 29)) | 0x9F) - 79;
    a39 = (~(a44 >> 20) | 0x9F) + (a44 >> 21) - 79;
    a40 = (a44 >> 13) - ((a44 >> 12) & 0x60) - 80;
    a41 = (a44 >> 5) - ((a44 >> 4) & 0x60) - 80;
    LOBYTE(v62) = (-8 * a44 - 8) ^ 0x48;
  }

  v59 = v61 ^ 0xEC;
  a42 = v62;
LABEL_6:
  v89 = v60;
  v90 = *(v53 + 8 * (v59 + 4));
  if (a51 == 2)
  {
    v85 = (v58 + 1029) | 0x200u;
    v86 = (&a27 + v55 + 2056975680);
    v87 = ((*v86 ^ v54) << 24) | ((v86[1] ^ v54) << 16) | ((v86[2] ^ v54) << 8);
    *(v51 + 4 * (v56 ^ 0x1EA6BD50)) = (v87 | v86[3] ^ v54) + a7 - 2 * ((v87 | v86[3] ^ v54) & 0x24185817 ^ (v86[3] ^ v54) & 2);
    v88 = *(v53 + 8 * ((3811 * (v57 == 2056975680)) ^ v85));
    return v88(v85, v88, v57 + 16, 0, 0, 4204715365, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v60, v90, a24, a25);
  }

  else if (a51 == 1)
  {
    v83 = *(&a27 + v55 + v52 + 2056974450) ^ v54 | ((*(&a27 + v55 + 2056975681) ^ v54) << 8) | ((*(&a27 + v55 + 2056975682) ^ v54) << 16) | ((*(&a27 + v55 + 2056975683) ^ v54) << 24);
    *(v51 + 4 * (v56 ^ 0x1EA6BD50)) = v83 + a7 - ((2 * v83) & 0x4830B02A);
    v84 = *(v53 + 8 * ((v58 + 1217) | (32 * (v57 == 2056975680))));
    return v84(v84, 0, 0, 2056951265, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v89, v90, a24, a25);
  }

  else
  {
    v63 = (((a45 ^ 0x407E3A1C) - 1082014236) ^ ((a45 ^ 0x6210A494) - 1645257876) ^ ((a45 ^ 0xAA2954A5) + 1440131931)) + (((a45 ^ 0x19B65726) - 431380262) ^ ((a45 ^ 0xB914E549) + 1189812919) ^ ((a45 ^ 0x28E57842) - 686127170)) + 547755965;
    v64 = (v63 ^ 0xCFCC7CDC) & (2 * (v63 & 0xEFE97C9D)) ^ v63 & 0xEFE97C9D;
    v65 = ((2 * (v63 ^ 0x70CD5E4)) ^ 0xD1CB52F2) & (v63 ^ 0x70CD5E4) ^ (2 * (v63 ^ 0x70CD5E4)) & 0xE8E5A978;
    v66 = v65 ^ 0x2824A909;
    v67 = (v65 ^ 0xC0C10070) & (4 * v64) ^ v64;
    v68 = ((4 * v66) ^ 0xA396A5E4) & v66 ^ (4 * v66) & 0xE8E5A978;
    v69 = (v68 ^ 0xA084A160) & (16 * v67) ^ v67;
    v70 = ((16 * (v68 ^ 0x48610819)) ^ 0x8E5A9790) & (v68 ^ 0x48610819) ^ (16 * (v68 ^ 0x48610819)) & 0xE8E5A970;
    v71 = v69 ^ 0xE8E5A979 ^ (v70 ^ 0x88408100) & (v69 << 8);
    v72 = (((a46 ^ 0x16787D58) - 376995160) ^ ((a46 ^ 0x86F0A3D7) + 2031049769) ^ ((a46 ^ 0x18CF14A2) - 416224418)) + (((a46 ^ 0xAA1011E) - 178323742) ^ ((a46 ^ 0x6CB12D9F) - 1823550879) ^ ((a46 ^ 0xEE57E6AC) + 296229204)) + 566348851;
    a45 = v63 ^ (2 * ((v71 << 16) & 0x68E50000 ^ v71 ^ ((v71 << 16) ^ 0x29790000) & (((v70 ^ 0x60A52869) << 8) & 0x68E50000 ^ 0x8440000 ^ (((v70 ^ 0x60A52869) << 8) ^ 0x65A90000) & (v70 ^ 0x60A52869)))) ^ 0xE6A7E442;
    a46 = v72 ^ ((v72 ^ 0x42A74F6F) - 1402304694) ^ ((v72 ^ 0xFBF2C6EF) + 356454090) ^ ((v72 ^ 0x579843A6) - 1185576063) ^ ((v72 ^ 0xFFFFFDFF) + 288503258) ^ 0x9975FDF4;
    v73 = (((a47 ^ 0x815B1A51) + 2124735919) ^ ((a47 ^ 0x9AD0FE79) + 1697579399) ^ ((a47 ^ 0x93CC2E05) + 1815335419)) + (((a47 ^ 0xF58A9AFA) + 175465734) ^ ((a47 ^ 0xDF901083) + 544206717) ^ ((a47 ^ 0xA25D4054) + 1570946988)) + 1488474209;
    v74 = v73 & 0xB7D743F9 ^ 0x79802641 ^ (v73 ^ 0xA7D763F8) & (2 * (v73 & 0xB7D743F9));
    v75 = (2 * (v73 ^ 0xCE5765B8)) & 0x79802640 ^ 0x8802241 ^ ((2 * (v73 ^ 0xCE5765B8)) ^ 0xF3004C82) & (v73 ^ 0xCE5765B8);
    v76 = (4 * v74) & 0x79802640 ^ v74 ^ ((4 * v74) ^ 0xE6009904) & v75;
    v77 = (4 * v75) & 0x79802640 ^ 0x19802641 ^ ((4 * v75) ^ 0xE6009904) & v75;
    v78 = v76 ^ (16 * v76) & 0x79802640 ^ ((16 * v76) ^ 0x98026410) & v77 ^ 0x78002400;
    v79 = (16 * v77) & 0x79802640 ^ 0x61800241 ^ ((16 * v77) ^ 0x98026410) & v77;
    v80 = (v78 << 8) & 0x79802600 ^ v78 ^ ((v78 << 8) ^ 0x80264100) & v79;
    v81 = (((a48 ^ 0x131E1DA5) - 320740773) ^ ((a48 ^ 0xE6F6D32B) + 420031701) ^ ((a48 ^ 0x7DAF04A3) - 2108621987)) + (((a48 ^ 0x8E8C034C) + 1903426740) ^ ((a48 ^ 0x7910E8EF) - 2031151343) ^ ((a48 ^ 0x7FDB218E) - 2145067406)) + 987281592;
    a47 = v73 ^ (2 * ((v80 << 16) & 0x79800000 ^ v80 ^ ((v80 << 16) ^ 0x26410000) & ((v79 << 8) & 0x79800000 ^ 0x79800000 ^ ((v79 << 8) ^ 0x260000) & v79))) ^ 0x8C90C556;
    a48 = v81 ^ ((v81 ^ 0x8D9F4178) + 1479121626) ^ ((v81 ^ 0xBEDAD7E8) + 1802243146) ^ ((v81 ^ 0xE5F34D31) + 809866897) ^ ((v81 ^ 0xFCFFFFFF) + 692659295) ^ 0xA20EEE73;
    return v90(&a27);
  }
}

uint64_t sub_22D353ACC@<X0>(uint64_t a1@<X8>)
{
  v6 = (v3 + 98) ^ (2066391179 * ((((2 * v5) | 0x4AE107CE) - v5 + 1519352857) ^ 0xA5701FF));
  v7 = v2;
  v5[0] = v2;
  v5[1] = a1;
  return (*(v1 + 8 * (v3 ^ 0x8BB)))(v5);
}

uint64_t sub_22D353B34@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  *v7 = a1;
  *v8 = v2;
  v5 = a2 + 147;
  v11 = a2 - 355 - ((&v11 & 0xAE4A24A | ~(&v11 | 0xAE4A24A)) ^ 0x78B63F59) * v3 - 278;
  v12 = v10;
  (*(v4 + 8 * ((a2 - 355) ^ 0xB6C)))(&v11);
  v11 = v5 - ((-1598638287 - (&v11 | 0xA0B6B731) + (&v11 | 0x5F4948CE)) ^ 0xD2E42A22) * v3 - 780;
  v12 = v9;
  (*(v4 + 8 * (v5 + 1390)))(&v11);
  return 0;
}

uint64_t sub_22D353B68()
{
  result = (*(v2 + 8 * (v4 ^ 0x97D)))(**(v3 + 8 * (v4 - 322)), v6, v7);
  *v0 = v1;
  return result;
}

uint64_t sub_22D353C48@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + 4);
  *(v1 + 4) = v4;
  return (*(v2 + 8 * (((((v3 - 1841) ^ 0xEB02D6B4) + v4 != 0) * ((v3 + 449442280) & 0xE53607FF ^ 0x2AC)) ^ v3)))();
}

uint64_t sub_22D353CF4@<X0>(uint64_t a1@<X0>, int a2@<W2>, int a3@<W5>, uint64_t a4@<X8>, int8x16_t a5@<Q0>, int8x16_t a6@<Q1>, int8x16_t a7@<Q4>, int8x16_t a8@<Q5>, int8x16_t a9@<Q6>, int32x4_t a10@<Q7>)
{
  v15 = v12 + 4;
  v16 = v11 + 16;
  a6.i64[0] = *(v16 + 4);
  a6.i32[2] = *(v16 + 12);
  v17 = vextq_s8(a5, a6, 0xCuLL);
  v18 = a6;
  v18.i32[3] = *(v14 + 4 * (v15 + a4));
  v19 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v18, a8), vandq_s8(v17, a7)), 1uLL), *(v16 - 908));
  v17.i32[0] = *(v13 + 4 * (*(v16 + 4) & 1));
  v17.i32[1] = *(v13 + 4 * (*(v16 + 8) & 1));
  v17.i32[2] = *(v13 + 4 * (*(v16 + 12) & 1));
  v17.i32[3] = *(v13 + 4 * (v18.i8[12] & 1));
  *v16 = veorq_s8(vaddq_s32(vsubq_s32(v19, vandq_s8(vaddq_s32(v19, v19), a9)), a10), v17);
  return (*(a1 + 8 * (((v15 == -174) * a3) ^ (a2 + v10 + 68))))();
}

uint64_t sub_22D353DC4()
{
  v4 = 2066391179 * (((v3 - 144) & 0x867A494B | ~((v3 - 144) | 0x867A494B)) ^ 0xD6A234AC);
  *(v3 - 128) = v1 - v4 + 829;
  *(v3 - 136) = v2;
  *(v3 - 120) = v9;
  *(v3 - 144) = v4 + v7 + 391733021 + (v1 ^ 0x6E4);
  (*(v0 + 8 * (v1 ^ 0xBA7)))(v3 - 144);
  *v6 = v7;
  result = v8;
  *(v8 + 48) = -1541908459;
  return result;
}

uint64_t sub_22D353EA4@<X0>(int a1@<W8>, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t *a5, int a6, int a7)
{
  v12 = v7 - 1386;
  v13 = v7 - 320;
  v14 = (((&a3 | 0xAB7C625A) - (&a3 & 0xAB7C625A)) ^ 0x7A7E4F25) * a1;
  a6 = (v7 - 1229) ^ v14;
  a7 = v10 - v14 - 321325272;
  a3 = v14 - 550235220;
  a4 = v8;
  a5 = &a2;
  v15 = (*(v9 + 8 * (v7 + 738)))(&a3);
  return (*(v9 + 8 * ((213 * (*(v8 + 24) != v13 + v11 + (v12 ^ 0x2F2))) ^ v12)))(v15);
}

uint64_t sub_22D353F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 4 * a3 - 1408541532;
  v10 = ((((v8 - 517) | 0x15A) + 714507406 + (*(*(v3 + 8) + v9) ^ 0xD5697614)) ^ ((*(*(v3 + 8) + v9) ^ 0x31A504F) - 52056143) ^ ((*(*(v3 + 8) + v9) ^ 0x13E4E9BF) + ((5 * (v8 ^ 0x793)) ^ 0xEC1B1E43))) + v6;
  v11 = (((*(*(v4 + 8) + v9) ^ 0x1594F81) - 22630273) ^ ((*(*(v4 + 8) + v9) ^ 0x48546D68) - 1213492584) ^ ((*(*(v4 + 8) + v9) ^ 0x8C9AED0D) + 1936003827)) + v6;
  v12 = v10 < v7;
  v13 = v10 > v11;
  if (v12 != v11 < v7)
  {
    v13 = v12;
  }

  return (*(v5 + 8 * (v8 ^ (32 * !v13))))();
}

uint64_t sub_22D354078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v71 = (v69 ^ 0x26B5E6B8) + v68;
  v72 = a68 + 1311186855 < v71;
  if (v71 < (v69 ^ 0x308u) + 1554011171 != (a68 + 1311186855) < 0x5CA05AFA)
  {
    v72 = v71 < (v69 ^ 0x308u) + 1554011171;
  }

  return (*(v70 + 8 * ((923 * !v72) ^ v69)))();
}

uint64_t sub_22D3540F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19)
{
  v23 = 1037613739 * (&a15 ^ 0xD1022D7F);
  a16 = a11;
  a17 = v20;
  a18 = (v22 - 404) ^ v23;
  a19 = ((2 * v21) & 0xFB3D6F9E) + (v21 ^ 0xFD9EB3C2 ^ ((v22 - 1333) | 0x409)) + v23 + 1475567478;
  v24 = (*(v19 + 8 * (v22 ^ 0xC05)))(&a15);
  return (*(v19 + 8 * ((3335 * (a15 == -1541908459)) ^ v22)))(v24);
}

uint64_t sub_22D3541C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, int8x16_t a3@<Q4>, int8x16_t a4@<Q6>)
{
  v8 = (a1 + a2);
  v9 = vaddq_s8(vaddq_s8(v7[1], a4), vmvnq_s8(vandq_s8(vaddq_s8(v7[1], v7[1]), a3)));
  *v8 = vaddq_s8(vaddq_s8(*v7, a4), vmvnq_s8(vandq_s8(vaddq_s8(*v7, *v7), a3)));
  v8[1] = v9;
  return (*(v6 + 8 * ((54 * (((v4 + 891) | 0x54u) - 956 == (v5 & 0x60))) ^ (v4 + 773))))();
}

uint64_t sub_22D354240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  *(v62 + 1424) = 0;
  memset((v62 + 1432), 176, 104);
  *(v64 + 96) = v62;
  v66[3] = v64 + 96;
  *(v62 + 476) = 1;
  v67 = v66[47];
  STACK[0x210] = *(v65 + 8 * v61);
  v68 = *v66;
  v69 = ((v61 - 155474242) & 0x9445F2Fu) - 1321;
  v66[39] = &STACK[0x4F0] + *v66;
  *v66 = (v69 ^ 0x156) + v68;
  LODWORD(a48) = v63;
  v66[63] = v67;
  LODWORD(STACK[0x324]) = -783656477;
  LODWORD(STACK[0x370]) = 904558483;
  v66[54] = 0;
  LODWORD(STACK[0x204]) = a3 + 1;
  *(&STACK[0x4F0] + v68) = 167694379;
  LODWORD(a55) = 246970557;
  LODWORD(a57) = -344662060;
  LODWORD(a58) = -1440277241;
  LODWORD(a52) = -516729231;
  LODWORD(a53) = -254648218;
  v71 = *(&STACK[0x4F0] + v68) != 167694379 || LODWORD(STACK[0x204]) != a3;
  return (*(v65 + 8 * ((v71 * ((v69 + a7) & a8 ^ 0x730)) ^ v69)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, v62, a2, a42, a43, a44, v64, a46, a47, a48, a49, a50, v64, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61);
}

uint64_t sub_22D354454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v17 - 136) = (v14 ^ 0x54) - 210068311 * ((((v17 - 136) | 0x38312034) - ((v17 - 136) & 0x38312034)) ^ 0xAAE71F90) + 858;
  *(v17 - 128) = v16;
  *(v17 - 120) = a14;
  v18 = (*(v15 + 8 * (v14 ^ 0xD7F)))(v17 - 136);
  return (*(v15 + 8 * (((*(v17 - 112) > 0x32CF6B79u) * (((v14 ^ 0x62F) + 1122) ^ 0x725)) | v14 ^ 0x54)))(v18);
}

uint64_t sub_22D3544A4(int a1)
{
  v6 = (v2 + 32);
  v7 = (v4 + 32);
  v8 = *v6;
  *(v7 - 1) = *(v6 - 1);
  *v7 = v8;
  return (*(v5 + 8 * (((v3 == 32) * a1) ^ v1)))();
}

uint64_t sub_22D3544B4@<X0>(unsigned int a1@<W8>)
{
  v6 = *(&STACK[0x240] + a1 + 72);
  v7 = ((2 * a1) & 0xE799EFF0) + (a1 ^ 0x73CCF7FB) + v3;
  *(v4 + v7) = v6 ^ 0x9D;
  *(v4 + v7 + 1) = ((v6 >> ((v1 + 77) ^ 0x22)) ^ 0xCA) - ((2 * (v6 >> ((v1 + 77) ^ 0x22))) & 0x60) - 80;
  *(v4 + v7 + 2) = (BYTE2(v6) ^ 0x47) - ((v6 >> 15) & 0x60) - 80;
  *(v4 + v7 + 3) = (HIBYTE(v6) ^ 0x88) - ((v6 >> 23) & 0x60) - 80;
  return (*(v5 + 8 * (((a1 + 4 < LODWORD(STACK[0x29C])) * v2) ^ v1)))();
}

uint64_t sub_22D35463C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, int a4@<W5>, uint64_t a5@<X8>, __n128 a6@<Q1>, int8x16_t a7@<Q4>, uint64_t a8@<D5>, int8x16_t a9@<Q6>)
{
  v19 = v17 + 16;
  v20 = (a3 ^ v19) + v15;
  v21 = v20 & 0xF;
  v23.i64[0] = vqtbl4q_s8(*(&a6 - 1), a7).u64[0];
  v23.i64[1] = a8;
  v24 = vrev64q_s8(vmulq_s8(v23, a9));
  *(a1 + v20) = veorq_s8(veorq_s8(veorq_s8(*(v14 + v21 - 15), *(a5 + v20)), veorq_s8(*(v13 + v21 - 15), *(v12 + v21 - 15))), vextq_s8(v24, v24, 8uLL));
  return (*(v18 + 8 * (((a2 == v19) * a4) ^ v16)))();
}

uint64_t sub_22D354BBC@<X0>(int a1@<W5>, int a2@<W7>, unsigned int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = (v13[1] ^ a3) + ((v12 + 980) ^ HIDWORD(v18)) + v17 * (a1 ^ a2 ^ (a3 - 497) ^ *(*(a9 + 8) + 4));
  *v13 = (v19 + v10 - (v11 & (2 * v19))) ^ v14;
  return (*(v15 + 8 * (((v9 == 2) * v16) ^ a1)))();
}

uint64_t sub_22D354C30@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  v8 = v5 - 1;
  *(v7 + v8) = *(a2 + v8) ^ *(v2 + (v8 & 0xF)) ^ *((v8 & 0xF) + v3 + 5) ^ ((v8 & 0xF) * ((a1 + 111) ^ 0xBC)) ^ *((v8 & 0xF) + v4 + 2) ^ 0xB0;
  return (*(v6 + 8 * ((a1 + 206) | (32 * (v8 == 0)))))();
}

uint64_t sub_22D354D70@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v24 = a1 - 1001;
  v25 = ((1422571440 - ((v23 - 144) | 0x54CAB7B0) + ((v23 - 144) | 0xAB35484F)) ^ 0xBF1AD5D4) * v19;
  *(v22 + 8) = &a19;
  *(v23 - 144) = v24 - v25 + 951;
  *(v23 - 128) = v25 ^ 0x7F12DE15;
  v26 = (*(v20 + 8 * (v24 ^ 0xB65)))(v23 - 144);
  return (*(v20 + 8 * (((((v24 ^ (v21 == 0)) & 1) == 0) * (v24 - 459)) ^ (v24 + 1521))))(v26);
}

uint64_t sub_22D354EF4@<X0>(uint64_t a1@<X8>)
{
  v8 = v1 + 8;
  *(a1 + v8) = vadd_s8(vadd_s8(*(v5 + v8), v7), vmvn_s8(vand_s8(vadd_s8(*(v5 + v8), *(v5 + v8)), v6)));
  return (*(v4 + 8 * (((v3 != v8) * (((v2 - 978) | 0x18A) ^ 0x659)) ^ v2)))();
}

uint64_t sub_22D354EFC(uint64_t a1)
{
  v1 = *(a1 + 8) ^ (1082434553 * ((2 * ((a1 ^ 0x5F5C4AC4) & 0x5CBA7B59) - (a1 ^ 0x5F5C4AC4) - 1555725146) ^ 0x675E38E8));
  v2 = *(*(&off_284082B80 + (v1 ^ 0x2DF)) + 83);
  v3 = *(a1 + 12) + 1082434553 * ((2 * ((a1 ^ 0x5F5C4AC4) & 0x5CBA7B59) - (a1 ^ 0x5F5C4AC4) - 1555725146) ^ 0x675E38E8) + 1345641589;
  if (v3 < 0xC49D71B6 != v2 > 0x3B628E49)
  {
    v4 = v2 > 0x3B628E49;
  }

  else
  {
    v4 = v2 - 996314698 > v3;
  }

  return (*(*(&off_284082B80 + (v1 ^ 0x2B0)) + (((8 * (((v1 + 44) ^ v4) & 1)) & 0xEF | (16 * (((v1 + 44) ^ v4) & 1))) ^ v1) - 1))();
}

uint64_t sub_22D3550B4@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W8>)
{
  v10 = v7 + 32;
  v11 = (((v6 ^ (a3 + 755)) - 180) ^ v10) + v5;
  v12 = *(v3 + v11 - 15);
  v13 = *(v3 + v11 - 31);
  v14 = a1 + v11;
  *(v14 - 15) = v12;
  *(v14 - 31) = v13;
  return (*(v9 + 8 * (((v8 == v10) * a2) ^ (v6 + v4))))();
}

uint64_t sub_22D3550BC@<X0>(uint64_t a1@<X8>)
{
  *(v3 + a1) = v2;
  v5 = a1 + 1 == (v1 + 393) - 849;
  return (*(v4 + 8 * ((4 * v5) | (16 * v5) | v1)))();
}

uint64_t sub_22D3550EC()
{
  v2 = 157 * (v0 ^ 0x47A);
  v3 = (-99 * (v0 ^ 0x7A)) ^ 0x61;
  v4 = (*(v1 + 8 * (v2 ^ 0xD99)))(1576, 0x105004009637391);
  STACK[0x288] = v4;
  return (*(v1 + 8 * ((v3 ^ (v4 == 0)) & 1 | v2)))();
}

uint64_t sub_22D355138()
{
  v5 = v3 ^ (v0 + 992);
  v10 = v8;
  HIDWORD(v11) = (v2 + v3 + 2259) ^ (1388665877 * (((&v10 | 0x4A40A218) - (&v10 & 0x4A40A218)) ^ 0xC7EDC0F4));
  (*(v1 + 8 * (v3 ^ (v4 + 86))))(&v10);
  v11 = v8;
  LODWORD(v10) = v2 - 1388665877 * (((&v10 | 0xD2358FF1) - &v10 + (&v10 & 0x2DCA7008)) ^ 0x5F98ED1D) + v3 + 241;
  (*(v1 + 8 * (v3 ^ (v4 + 113))))(&v10);
  v11 = v7;
  LODWORD(v10) = v5 - 1388665877 * ((1669954360 - (&v10 | 0x63897B38) + (&v10 | 0x9C7684C7)) ^ 0x11DBE62B) - 796;
  (*(v1 + 8 * (v5 ^ 0xD66)))(&v10);
  return v9 ^ 0xA4185815;
}

uint64_t sub_22D35535C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t (*a16)(void))
{
  v25 = (((v17 ^ 0x77D968A7) - 2010736807) ^ ((v17 ^ 0xB303DB71) + 1291592847) ^ ((v17 ^ 0x4C9D79FB) - 1285388795)) + (((v22 ^ 0x8C05EBE8) + 1945768984) ^ ((v22 ^ 0x998C477E) + 1718859906) ^ ((v22 ^ 0x9DCE66BB) + v19 + 1647415538)) + 899664705;
  v26 = (v25 ^ 0x92CFE891) & (2 * (v25 & 0xDAEFC919)) ^ v25 & 0xDAEFC919;
  v27 = ((2 * (v25 ^ 0x3615FAA3)) ^ 0xD9F46774) & (v25 ^ 0x3615FAA3) ^ (2 * (v25 ^ 0x3615FAA3)) & 0xECFA33BA;
  v28 = v27 ^ 0x240A108A;
  v29 = (v27 ^ 0xC8F02020) & (4 * v26) ^ v26;
  v30 = ((4 * v28) ^ 0xB3E8CEE8) & v28 ^ (4 * v28) & 0xECFA33B8;
  v31 = (v30 ^ 0xA0E802A0) & (16 * v29) ^ v29;
  v32 = ((16 * (v30 ^ 0x4C123112)) ^ 0xCFA33BA0) & (v30 ^ 0x4C123112) ^ (16 * (v30 ^ 0x4C123112)) & 0xECFA33B0;
  v33 = v31 ^ 0xECFA33BA ^ (v32 ^ 0xCCA23300) & (v31 << 8);
  *(v23 - 140) = v25 ^ (2 * ((v33 << 16) & 0x6CFA0000 ^ v33 ^ ((v33 << 16) ^ 0x33BA0000) & (((v32 ^ 0x2058001A) << 8) & 0x6CFA0000 ^ 0x4C80000 ^ (((v32 ^ 0x2058001A) << 8) ^ 0x7A330000) & (v32 ^ 0x2058001A)))) ^ 0xCA286440;
  v34 = (((v18 ^ 0xACD1CE22) + 1395536350) ^ ((v18 ^ 0xA086A31) - 168323633) ^ ((v18 ^ 0x2E9E6E3E) - 782134846)) + (((v24 ^ 0xB6223D6A) + 1239270038) ^ ((v24 ^ 0x177FED9D) - 394259869) ^ ((v24 ^ 0x291A1ADA) - 689576666)) + 1740371124;
  v35 = (((a3 ^ 0xA14A25) - 10570277) ^ ((a3 ^ 0xD87003C2) + 663747646) ^ ((a3 ^ 0x509683CA) - 1352041418)) + (((v16 ^ 0x31E4FE83) - 837090947) ^ ((v16 ^ 0x8D7502D8) + 1921711400) ^ ((v16 ^ 0x34D63676) - 886453878)) + 449718793;
  v36 = (v35 ^ 0xE1D44250) & (2 * (v35 & 0xF5C16A51)) ^ v35 & 0xF5C16A51;
  v37 = ((2 * (v35 ^ 0x435656D2)) ^ 0x6D2E7906) & (v35 ^ 0x435656D2) ^ (2 * (v35 ^ 0x435656D2)) & 0xB6973C82;
  v38 = v37 ^ 0x92910481;
  v39 = (v37 ^ 0x24063800) & (4 * v36) ^ v36;
  v40 = ((4 * v38) ^ 0xDA5CF20C) & v38 ^ (4 * v38) & 0xB6973C80;
  v41 = v39 ^ 0xB6973C83 ^ (v40 ^ 0x92143000) & (16 * v39);
  v42 = (16 * (v40 ^ 0x24830C83)) & 0xB6973C80 ^ 0x96843483 ^ ((16 * (v40 ^ 0x24830C83)) ^ 0x6973C830) & (v40 ^ 0x24830C83);
  v43 = (v41 << 8) & 0xB6973C00 ^ v41 ^ ((v41 << 8) ^ 0x973C8300) & v42;
  *(v23 - 156) = v34 ^ ((v34 ^ 0x7632B42F) - 555668597) ^ ((v34 ^ 0xAD8596CA) + 89524592) ^ ((v34 ^ 0xF3E4BD41) + 1530340069) ^ ((v34 ^ 0x7F7FFFFE) - 676568996) ^ 0xDF6BAA77;
  *(v23 - 152) = v35 ^ (2 * ((v43 << 16) & 0x36970000 ^ v43 ^ ((v43 << 16) ^ 0x3C830000) & ((v42 << 8) & 0x36970000 ^ 0x20830000 ^ ((v42 << 8) ^ 0x173C0000) & v42))) ^ 0x5586D97A;
  v44 = (((v20 ^ 0xC4CF1793) + 993060973) ^ ((v20 ^ 0xD2707EA7) + 764379481) ^ ((v20 ^ 0x9EF8A319) + 1627872487)) + (((*(v23 - 148) ^ 0x867B2B0A) + 2038748406) ^ ((*(v23 - 148) ^ 0x6C2DB900) - 1814935808) ^ ((*(v23 - 148) ^ 0x62115827) - 1645303847)) - 1945542735;
  v45 = (((v21 ^ 0x888696C4) + 2004445500) ^ ((v21 ^ 0x4C6978D8) - 1281980632) ^ ((v21 ^ 0x4CA82431) - 1286087729)) + (((*(v23 - 144) ^ 0xB4629E21) + 1268605407) ^ ((*(v23 - 144) ^ 0x399E2777) - 966666103) ^ ((*(v23 - 144) ^ 0x5BB737B) - 96170875)) + 944632126;
  v46 = (v45 ^ 0x9F6D8B9A) & (2 * (v45 & 0xD841A31C)) ^ v45 & 0xD841A31C;
  v47 = ((2 * (v45 ^ 0x2FEECF82)) ^ 0xEF5ED93C) & (v45 ^ 0x2FEECF82) ^ (2 * (v45 ^ 0x2FEECF82)) & 0xF7AF6C9E;
  v48 = v47 ^ 0x10A12482;
  v49 = (v47 ^ 0xE30E0810) & (4 * v46) ^ v46;
  v50 = ((4 * v48) ^ 0xDEBDB278) & v48 ^ (4 * v48) & 0xF7AF6C9C;
  v51 = (v50 ^ 0xD6AD2000) & (16 * v49) ^ v49;
  v52 = ((16 * (v50 ^ 0x21024C86)) ^ 0x7AF6C9E0) & (v50 ^ 0x21024C86) ^ (16 * (v50 ^ 0x21024C86)) & 0xF7AF6C90;
  v53 = v51 ^ 0xF7AF6C9E ^ (v52 ^ 0x72A64800) & (v51 << 8);
  *(v23 - 148) = v44 ^ ((v44 ^ 0x1F6DD9D7) - 1679037056) ^ ((v44 ^ 0x7F5495F0) - 70082215) ^ ((v44 ^ 0xEC7F788F) + 1761168424) ^ ((v44 ^ 0xF73FFFFF) + 1941556056) ^ 0xF33E017A;
  *(v23 - 144) = v45 ^ (2 * ((v53 << 16) & 0x77AF0000 ^ v53 ^ ((v53 << 16) ^ 0x6C9E0000) & (((v52 ^ 0x8509241E) << 8) & 0x77AF0000 ^ 0x50830000 ^ (((v52 ^ 0x8509241E) << 8) ^ 0x2F6C0000) & (v52 ^ 0x8509241E)))) ^ 0x7644B00D;
  return a16();
}

uint64_t sub_22D3555C4()
{
  v5 = ((v1 & 0x3F) + v4 - 252 + 9);
  *(v5 - 1) = 0xB0B0B0B0B0B0B0B0;
  *v5 = 0xB0B0B0B0B0B0B0B0;
  return (*(v3 + 8 * ((((v0 & 0x30) == 16) * (((v2 - 141) | 0x8D) + 813)) ^ (v2 - 1322))))();
}

uint64_t sub_22D35561C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = STACK[0x428];
  *(v67 + 32) = (LODWORD(STACK[0x428]) - 904558483);
  return (*(v66 + 8 * ((a8 + 1289) | (32 * (v68 != 904558483)))))(a66);
}

void sub_22D355AC8(uint64_t a1@<X8>, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a5 = v7;
  a6 = a1;
  a4 = v7;
  a3 = v8 + 50899313 * ((((2 * &a3) | 0x2C2F43E) - &a3 - 23165471) ^ 0x154EE784) + 1279;
  (*(v6 + 8 * (v8 + 2140)))(&a3);
  JUMPOUT(0x22D355B24);
}

uint64_t sub_22D35642C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  v16 = v13 - 1256501299 < a13 - 1805156274;
  if ((a13 - 1805156274) < 0xB51B4FCD != v13 > 0x4AE4B032)
  {
    v16 = (a13 - 1805156274) < 0xB51B4FCD;
  }

  return (*(v14 + 8 * ((28 * ((((v15 - 831) ^ v16) & 1) == 0)) ^ v15)))();
}

uint64_t sub_22D35649C()
{
  v15 = *MEMORY[0x277D85DE8];
  v0 = *(&off_284082B80 + ((-3 * ((qword_27D9FC2C8 - dword_27D9FC2E0) ^ 0xE5)) ^ byte_22D5BA4E0[byte_22D5C6550[(-3 * ((qword_27D9FC2C8 - dword_27D9FC2E0) ^ 0xE5))] ^ 0x82]) + 8);
  v1 = -3 * ((qword_27D9FC2C8 + *v0) ^ 0xE5);
  v9 = off_284082E00;
  v2 = off_284082EF8;
  v3 = *(&off_284082B80 + (*(off_284082EF8 + (*(off_284082E00 + v1) ^ 0x93u)) ^ v1) + 122);
  v4 = &v10[*(v3 - 4) - *v0];
  *v0 = (1707045629 * v4) ^ 0x1520B27A7613BCE5;
  *(v3 - 4) = 1707045629 * (v4 ^ 0x1520B27A7613BCE5);
  v14 = 1765 - 1037613739 * ((((2 * (&v11 ^ 0xA3CB0B4D)) | 0x28064696) - (&v11 ^ 0xA3CB0B4D) + 1811733685) ^ 0xE6CA0579);
  v13 = *(&off_284082B80 + (*(off_284082D68 + (*(off_284082CD0 + (-3 * (*v0 ^ 0xE5 ^ *(v3 - 4))) - 12) ^ 0x82u) - 12) ^ (-3 * (*v0 ^ 0xE5 ^ *(v3 - 4)))) + 67) - 4;
  v5 = *(&off_284082B80 + ((-3 * (dword_27D9FC2E0 ^ 0xE5 ^ qword_27D9FC2C8)) ^ byte_22D5BF120[byte_22D5BA5E0[(-3 * (dword_27D9FC2E0 ^ 0xE5 ^ qword_27D9FC2C8))] ^ 0xF7]) + 38) - 8;
  (*&v5[8 * ((-3 * ((*(v3 - 4) + *v0) ^ 0xE5)) ^ *(off_284082D68 + (*(off_284082CD0 + (-3 * ((*(v3 - 4) + *v0) ^ 0xE5)) - 12) ^ 0x82u) - 12)) + 18680])(&v11);
  v14 = 1765 - 1037613739 * (((&v11 | 0xAB43D9D4) - &v11 + (&v11 & 0x54BC2628)) ^ 0x7A41F4AB);
  v13 = *(&off_284082B80 + (*(off_284082BE8 + (*(off_284082F00 + (-3 * (*v0 ^ 0xE5 ^ *(v3 - 4)))) ^ 0x5Fu) - 4) ^ (-3 * (*v0 ^ 0xE5 ^ *(v3 - 4)))) + 153);
  v6 = -3 * (*v0 ^ 0xE5 ^ *(v3 - 4));
  (*&v5[8 * (*(off_284082D30 + (*(off_284083140 + v6 - 4) ^ 0xE7u) - 8) ^ v6) + 18696])(&v11);
  v7 = 50899313 * (((&v11 | 0xCCA3607A) - (&v11 & 0xCCA3607A)) ^ 0xD88CFDE1);
  v11 = 1018 - v7;
  v12 = v7 + 5;
  return (*&v5[8 * ((-3 * ((*(v3 - 4) + *v0) ^ 0xE5)) ^ v2[v9[(-3 * ((*(v3 - 4) + *v0) ^ 0xE5))] ^ 0xA6]) + 19560])(&v11);
}

uint64_t sub_22D356938(unint64_t a1, uint64_t a2, int a3, int a4, unsigned int a5, uint64_t a6, char a7, char a8)
{
  v14 = (a1 >> (a7 ^ a8)) + a5 * (*(a6 + 4 * a2) ^ v8) + (*(v12 + 4 * a3) ^ v8);
  *(v12 + 4 * a3) = v14 + v8 - (v10 & (2 * v14));
  return (*(v11 + 8 * (((a2 + 1 != v9) * v13) ^ a4)))();
}

uint64_t sub_22D356AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v21 - 128) = v18 - ((((v21 - 128) | 0xB289165E) - ((v21 - 128) & 0xB289165E)) ^ 0x205F29FA) * v19 + 1824;
  *(v21 - 120) = &a17;
  *(v21 - 112) = a14;
  v22 = (*(v17 + 8 * (v18 ^ 0x961)))(v21 - 128);
  return (*(v17 + 8 * (((((-93 * (v18 ^ 0xE7)) ^ (*(v21 - 104) == v20 + 2)) & 1) * ((v18 - 194691875) & 0xB9AC358 ^ 0xE2)) ^ v18)))(v22);
}

uint64_t sub_22D356B68@<X0>(uint64_t a1@<X8>)
{
  v7 = a1 + 1;
  *(v5 + 4 * (v7 + v1) - 2600) = *(v2 + 4 * (*(v5 + 4 * v7 + 912) & 1)) ^ *(v5 + 4 * v7) ^ ((*(v5 + 4 * v7 + 912) & 0x7FFFFFFE | v4 & 0x80000000) >> 1);
  return (*(v6 + 8 * ((28 * (v7 != 395)) ^ v3)))();
}

uint64_t sub_22D356B7C(unint64_t a1)
{
  *v5 = ((47 * (v1 ^ 0x1DFu)) ^ 0xFFFFFFFFFFFFFD55) + v2;
  v5[58] = a1;
  return (*(v3 + 8 * (v1 ^ (977 * (v4 <= a1)))))();
}

uint64_t sub_22D356C04@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X5>, int a4@<W6>, uint64_t a5@<X8>, int8x16_t a6@<Q0>, int8x16_t a7@<Q1>, int8x16_t a8@<Q4>, int8x16_t a9@<Q5>, int8x16_t a10@<Q6>, int32x4_t a11@<Q7>)
{
  v15 = v14 + 4 * v11;
  a7.i64[0] = *(v15 + 4);
  a7.i32[2] = *(v15 + 12);
  v16 = vextq_s8(a6, a7, 0xCuLL);
  v17 = a7;
  v17.i32[3] = *(v14 + 4 * (v11 + 4));
  v18 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v17, a9), vandq_s8(v16, a8)), 1uLL), *(v14 + 4 * ((a5 ^ a3) + v11)));
  v16.i32[0] = *(v13 + 4 * (*(v15 + 4) & 1));
  v16.i32[1] = *(v13 + 4 * (*(v15 + 8) & 1));
  v16.i32[2] = *(v13 + 4 * (*(v15 + 12) & 1));
  v16.i32[3] = *(v13 + 4 * (v17.i8[12] & 1));
  *v15 = veorq_s8(vaddq_s32(vsubq_s32(v18, vandq_s8(vaddq_s32(v18, v18), a10)), a11), v16);
  return (*(a1 + 8 * (((v11 == 220) * a4) ^ (a2 + v12 + 164))))();
}

void sub_22D356C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  v12 = ((v10 ^ 0x44B42478) - 287716157) ^ v10 ^ ((v10 ^ 0xC51E1C78) + 1869870275) ^ ((v10 ^ 0xBEEFFFBF) + 344069894) ^ (((3 * (v11 ^ 0xB5) + 1792527701) ^ v10) - 1061537727);
  *a9 = (HIBYTE(v12) ^ 0x55) - ((2 * (HIBYTE(v12) ^ 0x55)) & 0x60) - 80;
  a9[1] = (BYTE2(v12) ^ 0x92) - ((2 * (BYTE2(v12) ^ 0x92)) & 0x60) - 80;
  a9[2] = (BYTE1(v12) ^ 0x17) - ((2 * (BYTE1(v12) ^ 0x17)) & 0x60) - 80;
  a9[3] = ((v10 ^ 0x78) - 61) ^ v10 ^ ((v10 ^ 0x78) - 61) ^ ((v10 ^ 0xBF) + 6) ^ (((3 * (v11 ^ 0xB5) + 85) ^ v10) + 65) ^ 0xF5;
  v13 = v9 - ((2 * v9) & 0x6F39A9707E6726C2) - 0x48632B47C0CC6C9FLL;
  a9[4] = (HIBYTE(v13) ^ 0xB7) - 2 * ((HIBYTE(v13) ^ 0xB7) & 0x38 ^ HIBYTE(v13) & 8) - 80;
  a9[5] = (BYTE6(v13) ^ 0x9C) - ((2 * (BYTE6(v13) ^ 0x9C)) & 0x60) - 80;
  a9[6] = (BYTE5(v13) ^ 0xD4) + ~(2 * ((BYTE5(v13) ^ 0xD4) & 0x31 ^ BYTE5(v13) & 1)) - 79;
  a9[7] = (BYTE4(v13) ^ 0xB8) - 2 * ((BYTE4(v13) ^ 0xB8) & 0x35 ^ BYTE4(v13) & 5) - 80;
  a9[8] = (((v9 - ((2 * v9) & 0x7E6726C2) + 1060344673) >> 24) ^ 0x3F) + (~(2 * (((v9 - ((2 * v9) & 0x7E6726C2) + 1060344673) >> 24) ^ 0x3F)) | 0x9F) - 79;
  a9[9] = (BYTE2(v13) ^ 0x33) - 2 * ((BYTE2(v13) ^ 0x33) & 0x34 ^ BYTE2(v13) & 4) - 80;
  a9[10] = (BYTE1(v13) ^ 0x93) - ((2 * (BYTE1(v13) ^ 0x93)) & 0x60) - 80;
  a9[11] = (v9 - ((2 * v9) & 0xC2) + 97) ^ 0xD1;
  JUMPOUT(0x22D367B00);
}

uint64_t sub_22D35705C()
{
  v5 = *(v3 + 8);
  v6 = (v4 - 184);
  *v6 = 0xB0B0B0B0B0B0B0B0;
  v6[1] = 0xB0B0B0B0B0B0B0B0;
  v7 = 1037613739 * ((v4 - 168) ^ 0xD1022D7F);
  v6[3] = v6;
  v6[4] = v5;
  v6[5] = v4 - 204;
  v6[7] = &STACK[0x230];
  *(v4 - 168) = v7 + 1730630772;
  *(v4 - 136) = (v0 + 1535) ^ v7;
  v8 = (*(v1 + 8 * (v0 ^ 0x9FE)))(v4 - 168);
  return (*(v1 + 8 * ((1190 * (*(v4 - 132) == (((v0 - 117) | 0x28) ^ (v2 + 42)))) ^ v0)))(v8);
}

uint64_t sub_22D35711C@<X0>(uint64_t a1@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(v1 + v6) - ((2 * *(v1 + v6)) & 0x60) - 80;
  return (*(v5 + 8 * (((v6 != 0) * v4) ^ v2)))();
}

uint64_t sub_22D357168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v45 = *(v43 + 4 * (v42 - 1));
  *(v43 + 4 * v42) = ((1566083941 * (v45 ^ (v45 >> 30))) ^ *(v43 + 4 * v42)) - v42;
  v46 = 1361651671 * ((2 * ((v44 - 152) & 0x21F5BE4A2E5B8380) - (v44 - 152) + 0x5E0A41B5D1A47C79) ^ 0x8DA7328C02868CF5);
  STACK[0x5C0] = 623 - v46;
  STACK[0x5B0] = v42 + 1 + v46;
  *(v44 - 152) = 1 - 1361651671 * ((2 * ((v44 - 152) & 0x2E5B8380) - (v44 - 152) - 777749383) ^ 0x2868CF5);
  *(v44 - 148) = ((v41 + 809068679) ^ 0xCD) + 1361651671 * ((2 * ((v44 - 152) & 0x2E5B8380) - (v44 - 152) - 777749383) ^ 0x2868CF5);
  *(v44 - 112) = v41 + 809068679 - 1361651671 * ((2 * ((v44 - 152) & 0x2E5B8380) - (v44 - 152) - 777749383) ^ 0x2868CF5) - 73;
  *(v44 - 120) = (v41 + 147318046) ^ (1361651671 * ((2 * ((v44 - 152) & 0x2E5B8380) - (v44 - 152) - 777749383) ^ 0x2868CF5));
  *(v44 - 136) = v41 + 809068679 + 1361651671 * ((2 * ((v44 - 152) & 0x2E5B8380) - (v44 - 152) - 777749383) ^ 0x2868CF5);
  v47 = (*(a2 + 8 * (v40 + v41 + 1768)))(v44 - 152);
  return (*(a40 + 8 * *(v44 - 116)))(v47);
}

uint64_t sub_22D357280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3 - (**(a2 + 8) == 0);
  *(*(a1 + 96) + 528) = 64;
  *(*(a1 + 96) + 532) = 352135382;
  *(*(a1 + 96) + 536) = *(a1 + 96) + 544;
  v5 = *(a1 + 96) + 528;
  v6 = *(a2 + 8) + (*(a2 + 4) - v4);
  v11 = 1564307779 * ((&v11 - 1335618217 - 2 * (&v11 & 0xB0641557)) ^ 0x2769D944) + 1815 + v4 - 468797764;
  v15 = 1564307779 * ((&v11 - 1335618217 - 2 * (&v11 & 0xB0641557)) ^ 0x2769D944) + 92;
  v12 = v6;
  v13 = v5;
  (*(a3 + 19648))(&v11);
  v9 = v14;
  *(*(a1 + 96) + 512) = *(a2 + 8) + (*(a2 + 4) - v4);
  return (v9 - 754458250);
}

uint64_t sub_22D35729C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = (v4 - 1424047875) & 0x54E13B6F;
  *v3 = a1;
  *v2 = a2;
  v10 = v6 - 1388665877 * ((2 * (&v10 & 0x6A85B680) - &v10 + 360335736) ^ 0x98D72B94) - 631;
  v11 = v9;
  (*(v5 + 8 * (v6 ^ 0xA03)))(&v10);
  v11 = v8;
  v10 = v6 - 506 - 1388665877 * ((265162830 - (&v10 | 0xFCE104E) + (&v10 | 0xF031EFB1)) ^ 0x7D9C8D5D) - 125;
  (*(v5 + 8 * (v6 + 1539)))(&v10);
  return 0;
}

void sub_22D3573A0(char a1@<W8>)
{
  v4 = v6[3] ^ 0xB0;
  v5 = ((*v6 ^ 0xB0) << ((a1 + 51) ^ 0xA7)) + ((v6[1] ^ 0xB0) << 16) + ((v6[2] ^ 0xB0) << 8) + v4;
  **(v1 + 24) = v5 + v2 - 2 * (v5 & 0x24185817 ^ v4 & 2);
  *(v1 + 16) = *(v3 + 24);
}

uint64_t sub_22D357448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v14 = v8 < v10;
  if (v14 == v9 + 1 > (a5 & a8) + 1129197770)
  {
    v14 = v11 + v9 + 2 < v8;
  }

  return (*(v13 + 8 * ((119 * v14) ^ v12)))();
}

uint64_t sub_22D35759C()
{
  v4 = v2 - 901790665 > (v0 - 1834530064);
  if ((v0 - 1834530064) < 0xD8B8FF88 != (v2 - 901790665) < 0xD8B8FF88)
  {
    v4 = (v2 - 901790665) < 0xD8B8FF88;
  }

  return (*(v1 + 8 * (((v3 - 287) * v4) ^ v3)))();
}

uint64_t sub_22D35762C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51)
{
  v53 = (v51 ^ 0x47E1E43D) + a1;
  v55 = v53 > (v51 ^ 0x22B) + 707206208 || v53 < a51;
  return (*(v52 + 8 * ((1103 * v55) ^ v51)))();
}

uint64_t sub_22D35767C(uint64_t a1)
{
  v6 = (a1 + v3);
  *v6 = v5;
  v6[1] = v5;
  return (*(v4 + 8 * ((62 * (((v1 + 50) | 4u) - 1076 == (v2 & 0x30))) ^ v1)))();
}

uint64_t sub_22D35773C()
{
  v9 = ((v3 ^ 0xDE) + 246174675) & 0xF153ABDA;
  v10 = (*(*(v7 + 8) + 4 * v1) ^ 0x3A68301B) + v2;
  *(*(v0 + 8) + 4 * v1) = v10 + v5 - ((v6 + ((v9 + 1649517357) & 0x9DAE5BCD) - 581) & (2 * v10));
  return (*(v4 + 8 * ((1043 * (v8 > (v1 + 1))) ^ v9)))();
}

void sub_22D3577D4(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40) ^ (1785193651 * ((2 * (a1 & 0x4BBFB2E1) - a1 - 1270854370) ^ 0xA79CA13E));
  v2 = 1785193651 * ((((2 * v5) | 0xC2ABC9D2) - v5 + 514464535) ^ 0xF28908C9);
  v7 = v4;
  v8 = v2 ^ 0xA3CEBA4D;
  v6 = v1 + v2 - 562358894;
  v3 = *(&off_284082B80 + v1 + 17) - 8;
  (*&v3[8 * (v1 ^ 0x97C)])(v5);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_22D357A6C@<X0>(int a1@<W8>)
{
  v5 = 1785193651 * ((2 * ((v4 - 128) & 0x54D03B70) - (v4 - 128) + 724550797) ^ 0x38F328AD);
  *(v4 - 120) = v4 - 228;
  *(v4 - 112) = (a1 + ((v1 + 1212948313) & 0xB7B3E34D) - 2 * a1 - 1546733822) ^ v5;
  *(v4 - 124) = v5 + v1 - 562359018;
  v6 = (*(v2 + 8 * (v1 ^ 0x9F0)))(v4 - 128);
  return (*(v2 + 8 * ((1794 * (*v3 - 548655039 + (*(v4 - 160) & 0x3Fu) < 41 * (v1 ^ 0xADu) - 515)) ^ v1)))(v6, 3299688189);
}

uint64_t sub_22D357BAC()
{
  v6 = v0 + v2 + (((v4 ^ 0xB4733D27) + ((v5 + 1351138131) & 0xAF7743AF) + 1267515222) ^ ((v4 ^ 0x1D3F9323) - 490705699) ^ ((v4 ^ 0xD54F611) + ((v5 - 876) | 0xA2) - 223672263)) + 1060354800;
  v7 = v3 - 309650085;
  v8 = (v7 < 0x5C501708) ^ (v6 < 0x5C501708);
  v9 = v6 > v7;
  if (v8)
  {
    v9 = v6 < 0x5C501708;
  }

  return (*(v1 + 8 * ((62 * !v9) ^ v5)))();
}

uint64_t sub_22D357F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, unint64_t a31)
{
  *v32 = 0;
  v35 = ((v33 ^ (v33 >> 11)) << 7) & 0x9D2C5680 ^ v33 ^ (v33 >> 11);
  *(*a29 + a31) ^= v34 & (v35 << 15) ^ v35 ^ ((v34 & (v35 << 15) ^ v35) >> 18);
  return (*(v31 + 8 * ((198 * (a31 >= (a20 ^ 0x42A92DFDuLL))) ^ 0x15F)))();
}

uint64_t sub_22D357F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v34 = (*(v33 + 8 * ((v32 - 690) ^ 0xB47)))(1576, 0x105004009637391);
  STACK[0x3E8] = v34;
  return (*(v33 + 8 * (((v34 == 0) * ((v32 - 1048) ^ 0x351 ^ (5 * ((v32 - 690) ^ 0x283)))) ^ (v32 - 690))))(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_22D358040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  v28 = v27 - 144;
  *(v27 - 120) = v26;
  *(v27 - 112) = &a22;
  *(v27 - 128) = v23 - 256 - 1037613739 * ((((v27 - 144) | 0x34DE2A01) - (v27 - 144) + ((v27 - 144) & 0xCB21D5F8)) ^ 0xE5DC077E);
  *(v27 - 144) = &a22;
  *(v27 - 136) = v25;
  (*(v24 + 8 * (v23 + 310)))(v27 - 144);
  *(v27 - 128) = v23 - 256 - 1037613739 * ((v27 - 1786878975 - 2 * ((v27 - 144) & 0x957E6491)) ^ 0x447C49EE);
  *(v27 - 144) = &a22;
  *(v27 - 136) = v25;
  *(v27 - 120) = v26;
  *(v27 - 112) = &a22;
  (*(v24 + 8 * (v23 + 310)))(v27 - 144);
  *(v27 - 120) = v26;
  *(v27 - 112) = &a22;
  *(v27 - 128) = v23 - 256 - 1037613739 * (((((v27 - 144) | 0x67EF2102) ^ 0xFFFFFFFE) - (~(v27 - 144) | 0x9810DEFD)) ^ 0x4912F382);
  *(v27 - 144) = &a22;
  *(v27 - 136) = v25;
  (*(v24 + 8 * (v23 + 310)))(v27 - 144);
  v29 = (((v23 - 342344686) & 0x1467BFEB) + 1403817042) * v22;
  v30 = 2066391179 * ((~(v28 | 0x28D1FE7B) + (v28 & 0x28D1FE7B)) ^ 0x7809839C);
  *(v27 - 128) = a15;
  *(v27 - 144) = v23 - 1263 + v30;
  *(v27 - 140) = (v29 - 743595658) ^ v30;
  (*(v24 + 8 * (v23 ^ 0x17E)))(v27 - 144);
  v31 = *(v27 - 136) != 1450726857;
  v32 = 2066391179 * (((v28 | 0x362301BC) - (v28 & 0x362301BC)) ^ 0x990483A4);
  *(v27 - 128) = a15;
  *(v27 - 144) = v23 - 1263 + v32;
  *(v27 - 140) = (v29 + (((v23 - 963) | 0x140) ^ 0x80011523)) ^ v32;
  v33 = (*(v24 + 8 * (v23 + 186)))(v27 - 144);
  return (*(v24 + 8 * ((196 * v31) ^ v23)))(v33);
}

uint64_t sub_22D3582F8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a2 + v5) = *(a1 + v5);
  return (*(v4 + 8 * ((11 * (v5 == ((21 * (v3 ^ 0x289u)) ^ 0xBDLL))) ^ (v3 - 93))))();
}

uint64_t sub_22D358378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17)
{
  v21 = v17 ^ a16;
  v22 = v19 + v17 + 1202;
  v23 = a17 - 1276748761 < (v20 - 1938481177);
  if (a17 - 1276748761 < (v21 + 1540 + a7) != v20 - 1938481177 < (a7 + 2039))
  {
    v23 = v20 - 1938481177 < (a7 + 2039);
  }

  return (*(v18 + 8 * ((!v23 | (2 * !v23)) ^ v22)))();
}

uint64_t sub_22D358428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  *(v21 - 128) = v17 - ((((v21 - 128) ^ 0x24CC3100 | 0xD8038CF5) + ((v21 - 128) ^ 0x8020CF5 | 0x27FC730A)) ^ 0xBE180250) * v19 + 747;
  *(v21 - 120) = &a17;
  *(v21 - 112) = &a15;
  v22 = (*(v18 + 8 * (v17 + 1132)))(v21 - 128);
  return (*(v18 + 8 * (((*(v21 - 104) > v20) * (((v17 + 517433576) & 0xE12896EF) + 2298)) ^ v17)))(v22);
}

uint64_t sub_22D3586D4(uint64_t a1, uint64_t a2, int a3)
{
  v10 = -v7;
  v11 = (v6 - v7 - 1) & ((a3 - 896) ^ 0x2F9u);
  v13.val[0].i64[0] = v11;
  v13.val[0].i64[1] = (v6 - v7 + 14) & 0xF;
  v13.val[1].i64[0] = (v6 - v7 + 13) & 0xF;
  v13.val[1].i64[1] = (v6 - v7 + 12) & 0xF;
  v13.val[2].i64[0] = (v6 - v7 + 11) & 0xF;
  v13.val[2].i64[1] = (v6 - v7 + 10) & 0xF;
  v13.val[3].i64[0] = (v6 - v7 + 9) & 0xF;
  v13.val[3].i64[1] = (v6 - v7) & 0xFLL ^ 8;
  *(v6 + v9 - 8 + v10) = veor_s8(veor_s8(veor_s8(*(v4 + v11 - 7), *(v6 + v9 - 8 + v10)), veor_s8(*(v3 + v11 - 7), *(v11 + v5 - 6))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v13, xmmword_22D5B62E0), 0x7373737373737373)));
  return (*(v8 + 8 * (((4 * (8 - (v6 & 0x18) != v10)) | (8 * (8 - (v6 & 0x18) != v10))) ^ (a3 - 1329))))(xmmword_22D5B62E0);
}

uint64_t sub_22D3587CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  v52 = v50 - 607;
  if (a43)
  {
    v53 = a42 == 0;
  }

  else
  {
    v53 = 1;
  }

  v54 = v53;
  return (*(v51 + 8 * (((v52 ^ a1) * (v54 ^ 1)) ^ (v52 + 790))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a42 + 1448, a43 + 800, a43 + 528, a42 + 1168, a48, a42 + 1432, a50);
}

uint64_t sub_22D358814(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6)
{
  v9 = v6 + 71 + a4 - 1803772072;
  v10 = v7 - 1142038030 < v9;
  if (v7 - 1142038030 < (((v6 - 970) | 0x100) ^ (a6 + 199)) != v9 < a6)
  {
    v10 = v9 < a6;
  }

  return (*(v8 + 8 * ((43 * v10) ^ v6)))();
}

uint64_t sub_22D358884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  *(a40 + 1560) = **(v47 + 536);
  *(a40 + 1552) = **(v47 + 296);
  v48 = *(v47 + 24);
  *(*v48 + 488) = *(a45 + 8);
  *(*v48 + 480) = *a45;
  v49 = (a44 + a41);
  *v49 = ((((((v45 + 1) | 0x10) + 93) & 0xFE) - 60) ^ &STACK[0x360]) * (&STACK[0x360] + 17);
  *(v49 - 1) = (&STACK[0x360] ^ 0xBB) * (&STACK[0x360] + 18);
  return (*(v46 + 8 * ((v45 - 511) | 0x610)))(4267048735);
}

uint64_t sub_22D3589B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char *a28, char *a29, uint64_t a30, char a31)
{
  v39 = v32 ^ 0x1EC;
  v40 = ((((2 * (v38 - 144)) | 0x13F5866E) - (v38 - 144) - 167428919) ^ 0x8457A1DB) * v35;
  *(v38 - 128) = v31;
  *(v38 - 120) = &a26;
  *(v38 - 136) = v33 + v40 + (v32 ^ 0x15D1B3B4);
  *(v38 - 144) = (v32 - 631) ^ v40;
  (*(v34 + 8 * (v32 + 1524)))(v38 - 144);
  a28 = &a31;
  a29 = &a24;
  v45 = 2 * (v38 - 144);
  *(v38 - 144) = v39 + 1257 - (((v45 | 0xDBCF282C) - (v38 - 144) + 303590378) ^ 0x604AF6FA) * v35;
  *(v38 - 136) = v36;
  *(v38 - 128) = &a28;
  (*(v34 + 8 * (v39 ^ 0xBD9)))(v38 - 144);
  *(v38 - 136) = &a28;
  *(v38 - 128) = &a26;
  *(v38 - 144) = v39 + 386 - 1037613739 * ((((v38 - 144) | 0x8C4D26DC) - (v38 - 144) + ((v38 - 144) & 0x73B2D920)) ^ 0x5D4F0BA3);
  *(v38 - 120) = v36;
  *(v38 - 112) = &a22;
  (*(v34 + 8 * (v39 ^ 0xBFD)))(v38 - 144);
  v41 = a29;
  *(v38 - 144) = v39 + 609 - 1785193651 * ((v38 + 394127622 - 2 * ((v38 - 144) & 0x177DE996)) ^ 0x4A105B6);
  *(v38 - 112) = &a22;
  *(v38 - 104) = &a22;
  *(v38 - 128) = &a28;
  *(v38 - 120) = v41;
  *(v38 - 136) = v36;
  (*(v34 + 8 * (v39 + 1762)))(v38 - 144);
  *(v38 - 144) = a15;
  *(v38 - 120) = v36;
  *(v38 - 112) = &a28;
  *(v38 - 104) = &a22;
  *(v38 - 136) = (v39 + 1712) ^ (1082434553 * ((((v38 - 144) | 0xE9C589B2) - (v38 - 144) + ((v38 - 144) & 0x163A7648)) ^ 0x72827F38));
  *(v38 - 128) = &a22;
  (*(v34 + 8 * (v39 ^ 0xBF8)))(v38 - 144);
  *(v38 - 144) = v39 + 1257 - 1388665877 * ((((v38 - 144) | 0xB83B3034) - ((v38 - 144) & 0xB83B3034)) ^ 0x359652D8);
  *(v38 - 136) = v37;
  *(v38 - 128) = &a28;
  (*(v34 + 8 * (v39 ^ 0xBD9)))(v38 - 144);
  *(v38 - 136) = &a28;
  *(v38 - 128) = &a26;
  *(v38 - 120) = v37;
  *(v38 - 112) = &a20;
  *(v38 - 144) = v39 + 386 - 1037613739 * ((1195901896 - ((v38 - 144) | 0x474803C8) + ((v38 - 144) | 0xB8B7FC37)) ^ 0x69B5D148);
  (*(v34 + 8 * (v39 + 1893)))(v38 - 144);
  v42 = a29;
  *(v38 - 112) = &a20;
  *(v38 - 104) = &a20;
  *(v38 - 128) = &a28;
  *(v38 - 120) = v42;
  *(v38 - 144) = v39 + 609 - 1785193651 * (((v45 | 0xBEEEFFF0) - (v38 - 144) + 545816584) ^ 0xCCAB93D8);
  *(v38 - 136) = v37;
  (*(v34 + 8 * (v39 + 1762)))(v38 - 144);
  *(v38 - 144) = a13;
  *(v38 - 128) = &a20;
  *(v38 - 120) = v37;
  *(v38 - 112) = &a28;
  *(v38 - 104) = &a20;
  *(v38 - 136) = (v39 + 1712) ^ (1082434553 * ((((v38 - 144) | 0xAC1047F) - (v38 - 144) + ((v38 - 144) & 0xF53EFB80)) ^ 0x9186F2F5));
  (*(v34 + 8 * (v39 ^ 0xBF8)))(v38 - 144);
  *(v38 - 128) = v39 + 1037613739 * ((((v38 - 144) | 0x2A300836) - (v38 - 144) + ((v38 - 144) & 0xD5CFF7C8)) ^ 0xFB322549) + 1769;
  *(v38 - 144) = &a22;
  *(v38 - 136) = &a20;
  (*(v34 + 8 * (v39 + 1813)))(v38 - 144);
  *(v38 - 136) = v39 + 1361651671 * ((((v38 - 144) | 0x85FFC143) - (v38 - 144) + ((v38 - 144) & 0x7A003EB8)) ^ 0x56DD31CF) + 847;
  *(v38 - 144) = &a20;
  v43 = (*(v34 + 8 * (v39 + 1843)))(v38 - 144);
  return (*(v34 + 8 * ((1343 * (*(v38 - 132) < ((v39 + 185) | 0x42Au) + 676275264)) ^ v39)))(v43);
}

uint64_t sub_22D358AC8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(*(a2 + 96) + 468) = *(*(a1 + 8) + 12) - ((2 * *(*(a1 + 8) + 12)) & 0x60) - 80;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 8 * ((1159 * v4) ^ 0x1F2u)))(0);
}

uint64_t sub_22D358BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22, void *a23, int *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v35 = (a29 + 4 * v31);
  v36 = *v35;
  LODWORD(v35) = 1913672377 * ((*(*a23 + (*a24 & 0xFFFFFFFFBB01A190)) ^ v35) & 0x7FFFFFFF);
  LODWORD(v35) = v35 ^ (v35 >> 16);
  v37 = (1913672377 * v35) >> (v33 - 80);
  *(a30 + 4 * v31) = v36 ^ 0xE9A8A5A3 ^ (*(a30 + 4 * v31) - 374823517 - ((2 * *(a30 + 4 * v31)) & 0xD3514B46)) ^ (((v33 - 357 - v31) & ((v33 - 357) ^ (-2 - v32)) | v31 & ~(v33 - 357)) >> 31) ^ *(*(&off_284082B80 + a22) + v37 - 3) ^ *(*(&off_284082B80 + a21) + v37) ^ *(*(&off_284082B80 + v33 - 231) + v37 + 1) ^ (1387855872 * v35) ^ (1913672377 * v35) ^ (314085615 * v37);
  return (*(v34 + 8 * (((v30 + ((v33 + 189635206) & 0xF4B26579) != 361) * (((v33 - 296) | 0x128) - 349)) ^ (v33 + 520))))();
}

uint64_t sub_22D358D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int32x4_t a19, int32x4_t a20)
{
  v23 = v20 & 0xFFFFFFF8;
  v24 = (v21 - 795);
  a19 = vdupq_n_s32(0xC597CFE4);
  a20 = a19;
  v25 = *(v22 + 8 * ((918 * ((v21 ^ (v23 == 8)) & 1)) ^ v24));
  return v25(a1, a2, (v23 - 8), v23, v24, &a19, 8, v25, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_22D358E68()
{
  v8 = -v5;
  v10.val[0].i64[0] = (v3 + v8 - 1) & 0xF;
  v10.val[0].i64[1] = (v3 + v8 + ((v4 + 111) ^ 1)) & 0xF;
  v10.val[1].i64[0] = (v3 + v8 + 13) & 0xF;
  v10.val[1].i64[1] = (v3 + v8 + 12) & 0xF;
  v10.val[2].i64[0] = (v3 + v8 + 11) & 0xF;
  v10.val[2].i64[1] = (v3 + v8 + 10) & 0xF;
  v10.val[3].i64[0] = (v3 + v8 + 9) & 0xF;
  v10.val[3].i64[1] = (v3 + v8) & 0xF ^ 8;
  *(v3 + v6 - 8 + v8) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(v3 + v6 - 8 + v8), *(v0 + v10.val[0].i64[0] - 7)), veor_s8(*(v10.val[0].i64[0] + v1 - 4), *(v10.val[0].i64[0] + v2 - 2)))), 0xB0B0B0B0B0B0B0B0), vmul_s8(*&vqtbl4q_s8(v10, xmmword_22D5B62E0), 0x6161616161616161)));
  return (*(v7 + 8 * ((969 * (8 - (v3 & 0x18) != v8)) ^ (v4 - 162))))(v3 & 7, xmmword_22D5B62E0);
}

uint64_t sub_22D358F80()
{
  v6 = (v2 - 32);
  v7 = (v3 - 32);
  v8 = *v7;
  *(v6 - 1) = *(v7 - 1);
  *v6 = v8;
  return (*(v5 + 8 * (((v1 == 32) * v4) ^ (v0 + 641))))();
}

uint64_t sub_22D358F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  v19 = v16 + 1012864409 < a16 + 108305925;
  if (a16 + 108305925 < ((v18 - 50) ^ 0x3C5F15D7u) != v16 > 0xC3A0EA66)
  {
    v19 = a16 + 108305925 < ((v18 - 50) ^ 0x3C5F15D7u);
  }

  return (*(v17 + 8 * ((15 * !v19) ^ v18)))(1012864409, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_22D359264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, int a15)
{
  v20 = (((&a12 | 0x50EBAAB0) - &a12 + (&a12 & 0xAF145548)) ^ 0xCA6FE35) * v18;
  a14 = 893672457 * v15 - v20 + ((v19 + 30) ^ 0xA9D) + 160638796;
  a15 = (v19 - 1844) ^ v20;
  a12 = a10;
  v21 = (*(v17 + 8 * (v19 + 353)))(&a12);
  return (*(v17 + 8 * ((4078 * (a13 != v16)) ^ v19)))(v21);
}

uint64_t sub_22D359318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x404]) = 1533289307;
  LODWORD(STACK[0x274]) = 128;
  v77 = STACK[0x208];
  v78 = *(v76 + 392);
  v79 = 143681137 * ((((v75 - 192) | 0x42CB841) - (v75 - 192) + ((v75 - 192) & 0xFBD347B8)) ^ 0x65743391);
  v80 = (v75 - 192);
  *v80 = 0;
  *(v75 - 180) = v79 + 2035419218;
  *(v75 - 160) = (v72 + 371) ^ v79;
  v80[7] = v78;
  v80[8] = a72 + 800;
  v80[5] = &STACK[0x274];
  v80[6] = a72 + 528;
  v80[2] = v77;
  v80[3] = 0;
  v81 = (*(v74 + 8 * (v72 ^ 0x9FD)))(v75 - 192);
  return (*(v74 + 8 * (((*(v75 - 184) == v73) * ((((v72 + 363) | 0x181) + 48) ^ 0xB95)) ^ v72)))(v81);
}

uint64_t sub_22D3597AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, unint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  *v47 = v47[623] + (((v43 + 91348731 - v42) & ((v43 + 91348731) ^ (-2 - v44)) | v42 & ~(v43 + 91348731)) >= 0);
  STACK[0x5B0] = (v45 + 1) + v41;
  STACK[0x5C0] = a36;
  *(v48 - 152) = v46 - v41;
  *(v48 - 148) = v41 - 1281847744;
  *(v48 - 112) = -1281847784 - v41;
  *(v48 - 136) = v41 - 1281847746;
  *(v48 - 120) = v41 ^ 0x3560892;
  v49 = (*(v40 + 19128))(v48 - 152);
  return (*(a40 + 8 * *(v48 - 116)))(v49);
}

uint64_t sub_22D359808(uint64_t a1)
{
  v8 = v5 - 1;
  *(a1 + v8) = *(v2 + (v8 & 0xF)) ^ *(v7 + v8) ^ *((v8 & 0xF) + v1 + 2) ^ (((v4 - 7) & 0xBF) - 14) ^ (125 * (v8 & 0xF)) ^ *(v3 + (v8 & 0xF));
  return (*(v6 + 8 * ((171 * (v8 == 0)) ^ v4)))();
}

uint64_t sub_22D35987C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v41 = v40 + 781;
  v53 = v40 + 1748;
  v42 = (*(a3 + 8 * ((v40 + 781) ^ 0xAF8)))(3);
  v43 = *(&off_284082B80 + (v41 ^ 0x3D9));
  *v43 = v42;
  (*(a40 + 8 * (v41 ^ 0xACF)))();
  v44 = (*(a40 + 8 * (v41 + 1544)))(66);
  v45 = *(&off_284082B80 + v41 - 796);
  *v45 = v44;
  (*(a40 + 8 * (v41 ^ 0xACF)))();
  v46 = (*(a40 + 8 * (v41 + 1544)))(2);
  v47 = *(&off_284082B80 + (v41 ^ 0x3EB));
  *v47 = v46;
  *v46 = 7196;
  **v45 = 0;
  **(&off_284082B80 + (v41 ^ 0x33F)) = 0;
  v48 = *v47;
  v49 = *v45;
  v50 = *v43;
  v49[64] = 1;
  **(&off_284082B80 + (v41 ^ 0x331)) = 51;
  v49[9] = -15;
  v48[1] = 79;
  **(&off_284082B80 + (v41 ^ 0x3DF)) = 80;
  **(&off_284082B80 + (v41 ^ 0x365)) = -77;
  *v48 = -22;
  v49[11] = 73;
  *v50 = 68;
  v49[20] = -44;
  **(&off_284082B80 + (v41 ^ 0x3D2)) = -121;
  v49[36] = -11;
  v49[45] = -113;
  v49[49] = 25;
  *(v50 + 1) = 6695;
  **(&off_284082B80 + (v41 ^ 0x33C)) = -122;
  **(&off_284082B80 + (v41 ^ 0x326)) = 88;
  v49[26] = -34;
  v49[60] = -5;
  **(&off_284082B80 + v41 - 854) = 96;
  **(&off_284082B80 + (v41 & 0x206A5C3D)) = 80;
  **(&off_284082B80 + v41 - 755) = 17;
  **(&off_284082B80 + (v41 ^ 0x358)) = 119;
  v49[52] = 47;
  v49[50] = 102;
  v49[59] = -59;
  v49[22] = -36;
  v49[29] = 59;
  v49[27] = 34;
  v49[40] = -80;
  v49[13] = 23;
  **(&off_284082B80 + v41 - 814) = 99;
  v49[53] = 3;
  **(&off_284082B80 + v41 - 888) = -109;
  v49[39] = 54;
  v49[57] = 73;
  **(&off_284082B80 + (v41 ^ 0x305)) = 83;
  v49[37] = -52;
  v49[63] = -72;
  v51 = *v45;
  *(v51 + 65) = -85;
  *(v51 + 54) = 32;
  *(v51 + 58) = 113;
  *(v51 + 8) = 16909;
  *(v51 + 28) = -39;
  *(v51 + 47) = -4065;
  *(v51 + 21) = 15;
  *(v51 + 41) = -29527;
  *(v51 + 38) = -121;
  *(v51 + 31) = 8824;
  *(v51 + 10) = -98;
  *(v51 + 7) = 27031;
  *(v51 + 23) = -86;
  *(v51 + 14) = -90;
  *(v51 + 62) = -105;
  *(v51 + 33) = 15089;
  *(v51 + 55) = -30385;
  *(v51 + 46) = -17;
  *(v51 + 4) = -92;
  *(v51 + 51) = -15;
  *(v51 + 12) = -15;
  *(v51 + 61) = 73;
  *(v51 + 9) = -9761;
  *(v51 + 43) = 19744;
  *(v51 + 6) = 45;
  *(v51 + 24) = -72;
  *(v51 + 30) = 36;
  *(v51 + 5) = -14;
  *(v51 + 25) = 69;
  *(v51 + 35) = 52;
  *(v51 + 15) = 72;
  return (*(a40 + 8 * (v53 + 442)))(2134, 1913);
}

uint64_t sub_22D35B614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a10 = v11 - 1;
  *(a2 + a10) = (&a10 ^ 0xBA) * (&a10 + 17);
  return (*(v12 + 8 * (((v11 == 1) * (v10 - 234)) ^ (v10 + 1504))))(a1, a2);
}

uint64_t sub_22D35B6C4(uint64_t a1)
{
  v7 = *(v6 - 252 + v1 + 72);
  v8 = ((2 * v1) & 0xFFB8FFF0) + (v1 ^ 0x7FDC7FFA);
  *(a1 + v8 + ((v3 - 5260157) & 0xCFAF75FF ^ 0x4F8CB59D)) = v7 ^ 0x9D;
  v9 = v8 + v2;
  *(a1 + v9) = (BYTE1(v7) ^ 0xCA) - ((v7 >> 7) & 0x60) - 80;
  *(a1 + v9 + 1) = (BYTE2(v7) ^ 0x47) - ((v7 >> 15) & 0x60) - 80;
  *(a1 + v9 + 2) = (HIBYTE(v7) ^ 0x88) - ((v7 >> 23) & 0x60) - 80;
  return (*(v5 + 8 * (((v1 + 4 >= *(v6 - 160)) * v4) ^ v3)))();
}

uint64_t sub_22D35B7A4@<X0>(uint64_t a1@<X8>)
{
  v7 = v1 ^ 0x144;
  *(v6 - 112) = a1;
  *(v6 - 104) = (v1 ^ 0x144) + 440 + ((276286309 - ((v6 - 112) ^ 0x8703D8B6 | 0x1077CB65) + ((v6 - 112) ^ 0x8703D8B6 | 0xEF88349A)) ^ 0xBBA91CA0) * v3;
  (*(v4 + 8 * ((v1 ^ 0x144) + 1436)))(v6 - 112);
  v8 = *(v6 - 100);
  *(v6 - 112) = v2;
  *(v6 - 104) = v7 + 440 + ((((v6 - 112) | 0xA23176B7) + (~(v6 - 112) | 0x5DCE8948)) ^ 0x7113863A) * v3;
  (*(v4 + 8 * (v7 ^ 0xA9C)))(v6 - 112);
  v9 = (-676277103 * (*(v6 - 100) + v8) + *(v6 - 100) * v8 - 2048886239) * v5;
  v11[1] = (v9 ^ 0x9EFF7CD7) + 1979558911 + ((v9 << (v7 + 30)) & 0x3DFEF9AE);
  *(v6 - 112) = v2;
  *(v6 - 104) = v7 + 1388665877 * ((((v6 - 112) ^ 0xC2636634) + 1751206861 - 2 * (((v6 - 112) ^ 0xC2636634) & 0x68614BCD)) ^ 0x27AF4F15) - 581;
  *(v6 - 96) = v11;
  return (*(v4 + 8 * (v7 + 1443)))(v6 - 112);
}

uint64_t sub_22D35BA8C(double a1, double a2, double a3, double a4, double a5, int8x16_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v39 = (v38 + 908);
  v40 = vld1q_dup_f32(v39);
  v41.i64[0] = 0x8000000080000000;
  v41.i64[1] = 0x8000000080000000;
  v42.i64[0] = 0x100000001;
  v42.i64[1] = 0x100000001;
  a6.i64[0] = *(a36 + 4);
  a6.i32[2] = *(a36 + 12);
  v43 = vextq_s8(v40, a6, 0xCuLL);
  v44 = a6;
  v44.i32[3] = *(a36 + 16);
  v45 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v44, vnegq_f32(v42)), vandq_s8(v43, v41)), 1uLL), *(a36 - 908));
  v43.i32[0] = *(v37 + 4 * (*(a36 + 4) & 1));
  v43.i32[1] = *(v37 + 4 * (*(a36 + 8) & (((v36 - 1347) | 0x18u) - 603)));
  v43.i32[2] = *(v37 + 4 * (*(a36 + 12) & 1));
  v43.i32[3] = *(v37 + 4 * (v44.i8[12] & 1));
  *a36 = veorq_s8(vaddq_s32(vsubq_s32(v45, vandq_s8(vaddq_s32(v45, v45), vdupq_n_s32(0x877443E4))), vdupq_n_s32(0xC3BA21F2)), v43);
  return (*(a10 + 8 * v36))();
}

void sub_22D35BB74()
{
  if ((*(v2 + 4) - 352135383) >= 0x7FFFFFFF)
  {
    v3 = v1;
  }

  else
  {
    v3 = v1 + 2;
  }

  *(v0 + 12) = v3;
}

uint64_t sub_22D35BB98(uint64_t a1, uint64_t a2, int a3)
{
  v6 = v5 - 134;
  v7 = v4 - 1627430857 + ((v6 + 134) ^ 0xD5C);
  v8 = v7 < 872189547;
  v9 = a3 - 1627429483 < v7;
  if (a3 - 1627429483 < 872189547 != v8)
  {
    v9 = v8;
  }

  return (*(v3 + 8 * ((217 * !v9) ^ v6)))();
}

uint64_t sub_22D35BC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  *(v32 - 144) = v28 - (((v32 - 144) & 0x6A4B4091 | ~((v32 - 144) | 0x6A4B4091)) ^ 0x8668534E) * v30 - 1103;
  *(v32 - 112) = &a28;
  *(v32 - 104) = &a22;
  *(v32 - 136) = a14;
  *(v32 - 128) = a11;
  *(v32 - 120) = &a22;
  v33 = (*(v29 + 8 * (v28 + 50)))(v32 - 144);
  return (*(v29 + 8 * ((57 * ((v28 ^ 0xD2BCDDCA ^ (11 * (v28 ^ 0x843))) + v31 < 0x7FFFFFFF)) ^ (v28 - 1890))))(v33);
}

uint64_t sub_22D35BCC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v78 = (v72 + 588) | 0x109;
  *(v77 + 648) = 0x1BAD44A3D70861ACLL;
  *(v77 + 640) = 0xF0136175BB9532D0;
  v79 = STACK[0x3C8];
  LODWORD(STACK[0x2CC]) = STACK[0x3C8];
  v80 = 742307843 * ((((v76 - 192) | 0x40EDDC4A) - ((v76 - 192) & 0x40EDDC4A)) ^ 0x5ECF511F);
  v73[1] = &a67;
  v73[3] = &STACK[0x258];
  v73[4] = &STACK[0x4C0];
  v73[7] = &STACK[0x4A0];
  *(v76 - 144) = ((v79 ^ 0x1177FECD) - 2360392 + ((2 * v79) & 0x22EFFD9A)) ^ v80;
  *(v76 - 176) = (a33 + 39165745) ^ v80;
  *(v76 - 140) = (v78 - 487) ^ v80;
  v73[5] = a34;
  v81 = (*(v75 + 8 * (v78 + 1402)))(v76 - 192);
  a72 = *(v76 - 192);
  return (*(v75 + 8 * ((1119 * (a72 == v74)) ^ (v78 - 411))))(v81);
}

uint64_t sub_22D35BDF4@<X0>(int a1@<W8>)
{
  v9 = v1 + 1;
  if (v9 == 19)
  {
    v11 = 0;
  }

  else
  {
    v10 = (*(v6 + v9) ^ v4) - (*(v7 + v9) ^ v4);
    v11 = v10 + v5 - (((a1 - 101) ^ v2) & (2 * v10)) == v5;
  }

  v12 = !v11;
  return (*(v8 + 8 * ((v12 * v3) ^ a1)))();
}

uint64_t sub_22D35BDFC(int a1)
{
  v10 = *(v5 + 8 * (v6 - 392));
  v11 = *v3;
  v12 = v1 + a1;
  *(*v3 + v12) = (HIBYTE(v2) ^ v4) - 2 * ((HIBYTE(v2) ^ v4) & 0x33 ^ HIBYTE(v2) & 3) - 80;
  *(v11 + v12 + 1) = (BYTE2(v2) ^ v9) - 2 * ((BYTE2(v2) ^ v9) & v7 ^ BYTE2(v2) & 2) - 80;
  *(v11 + v12 + 2) = (v8 ^ BYTE1(v2)) - ((v2 >> 7) & 0x60) - 80;
  *(v11 + v12 + 3) = v2 ^ 0xD;
  return v10();
}

uint64_t sub_22D35BECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29)
{
  *(v34 - 144) = (v31 - 158) ^ (((667604054 - ((v34 - 144) | 0x27CAD456) + ((v34 - 144) | 0xD8352BA9)) ^ 0x4372DD23) * v30);
  *(v34 - 136) = v32;
  *(v34 - 128) = v33;
  (*(v29 + 8 * (v31 + 632)))(v34 - 144);
  v35 = a29;
  *(v34 - 144) = v31 - 642 - 1785193651 * ((-1937230823 - ((v34 - 144) | 0x8C883419) + ((v34 - 144) | 0x7377CBE6)) ^ 0x60AB27C6);
  *(v34 - 112) = &a20;
  *(v34 - 104) = &a20;
  *(v34 - 136) = v32;
  *(v34 - 128) = &a28;
  *(v34 - 120) = v35;
  (*(v29 + 8 * (v31 ^ 0xE01)))(v34 - 144);
  *(v34 - 144) = v31 - 642 - 1785193651 * ((((2 * (v34 - 144)) | 0xD499A436) - (v34 - 144) + 364064229) ^ 0xF9903E3B);
  *(v34 - 136) = v32;
  *(v34 - 128) = &a28;
  *(v34 - 120) = &a20;
  *(v34 - 112) = a14;
  *(v34 - 104) = &a20;
  (*(v29 + 8 * (v31 + 511)))(v34 - 144);
  *(v34 - 136) = v31 - 1361651671 * ((((v34 - 144) | 0xADFF58A3) - ((v34 - 144) & 0xADFF58A3)) ^ 0x7EDDA82F) - 875955927;
  *(v34 - 128) = a15;
  *(v34 - 144) = &a20;
  (*(v29 + 8 * (v31 ^ 0xE83)))(v34 - 144);
  *(v34 - 136) = &a22;
  *(v34 - 128) = &a20;
  *(v34 - 144) = (v31 - 158) ^ (1082434553 * ((((v34 - 144) | 0xF9AA4212) - ((v34 - 144) & 0xF9AA4212)) ^ 0x62EDB498));
  (*(v29 + 8 * (v31 + 632)))(v34 - 144);
  *(v34 - 136) = v31 + 1388665877 * ((((v34 - 144) | 0x81ED89B0) - (v34 - 144) + ((v34 - 144) & 0x7E127648)) ^ 0xC40EB5C) - 1425;
  *(v34 - 128) = &a20;
  *(v34 - 144) = &a22;
  v36 = (*(v29 + 8 * (v31 + 599)))(v34 - 144);
  return (*(v29 + 8 * ((((v31 + 1970847950) & 0x8A873A2B ^ ((v31 ^ 0x506) + 59)) * (a19 == 0)) ^ (v31 + 267))))(v36);
}

uint64_t sub_22D35C114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34)
{
  v40 = 5 * (v36 ^ (v36 - 285));
  *(v37 + 4 * v35) ^= a34 ^ (v39 - (v36 + 91348111) < ((v40 - 1456) ^ (v36 + 91348111)));
  return (*(v34 + 8 * (((((v40 - 91349563) ^ 0xFFFFFFDD) + (v40 ^ 0xFA8E26DB)) * (v38 == 1)) ^ v40)))();
}

uint64_t sub_22D35C22C@<X0>(int a1@<W2>, int a2@<W3>, int a3@<W7>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21)
{
  v27 = v22 + 1;
  v28 = (a17 + 24 * (v27 + a3));
  *v28 = v23;
  v28[1] = a2;
  *&v25[6 * (v27 + a3) + 4] = v26;
  v28[4] = a21;
  *v25 = v27;
  return (*(v24 + 8 * ((2820 * (a1 + v21 + (a4 ^ 0x26Au) - 104 - 187 < 0x80000003)) ^ a4)))();
}

uint64_t sub_22D35C2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  v50 = &a45 + v47;
  v51 = (*(v45 + 8 * (v46 ^ 0xC2A)))(&a45 + v47 + 16, 0);
  v52 = *(v50 + 4) + ((v46 - 91349563) ^ 0x5F5B66D0) - ((2 * *(v50 + 4)) & 0x4BAA8B48);
  *(v50 + 1) = *(v50 + 6) - 1512749660 - ((2 * *(v50 + 6)) & 0x4BAA8B48);
  *(v50 + 2) = v52;
  v53 = (*(a40 + 8 * (v46 + 974)))(v51);
  *(v50 + 3) = v53 - 1512749660 - ((2 * v53) & 0x4BAA8B48);
  v54 = (*(a40 + 8 * (v46 ^ 0xCD2)))();
  *v50 = v54 - 1512749660 - ((2 * v54) & 0x4BAA8B48);
  v48[1] = (*(&a45 + v47) ^ 0xA5D545A4) + ((1664525 * (*v48 ^ (*v48 >> 30))) ^ v48[1]);
  v55 = 1361651671 * ((~((v49 - 152) | 0xF44E601C61BFD01CLL) + ((v49 - 152) & 0xF44E601C61BFD01CLL)) ^ 0xD81CECDA4D62DF6FLL);
  v56 = v46 + 192590011 + v55;
  *(v49 - 120) = (v46 + 55968483) ^ v55;
  *(v49 - 136) = v56;
  *(v49 - 152) = 1 - v55;
  *(v49 - 148) = v56 + 8;
  *(v49 - 112) = ((v46 + 192590011) ^ 0x7F) - v55;
  STACK[0x5C0] = 623 - v55;
  STACK[0x5B0] = v55 + 2;
  v57 = (*(a40 + 8 * ((v46 - 91349563) ^ 0xFA8E2A23)))(v49 - 152);
  return (*(a40 + 8 * *(v49 - 116)))(v57);
}

uint64_t sub_22D35C534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, unsigned int a18, unsigned int a19, char *a20, unsigned int a21)
{
  v23 = 1082434553 * (((&a18 | 0x962A79F2) - (&a18 & 0x962A79F2)) ^ 0xD6D8F78);
  a18 = 1320293250 - v23;
  a19 = v23 + 1219383131;
  LODWORD(a20) = v23 ^ 0x28B;
  HIDWORD(a20) = 1953011063 - v23;
  (*(v22 + 19272))(&a18);
  a20 = &a16;
  a21 = 2066391179 * ((&a18 + 1535526123 - 2 * (&a18 & 0x5B8644EB)) ^ 0xF4A1C6F3) + 1020;
  v24 = (*(v22 + 19160))(&a18);
  return (*(v22 + 8 * ((4089 * (a18 == v21)) ^ 0x7ACu)))(v24);
}

void sub_22D35C690(char a1@<W8>)
{
  if ((a1 & 2) != 0)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  LODWORD(STACK[0x2CC]) = v1;
  JUMPOUT(0x22D372C60);
}

uint64_t sub_22D35C6B4@<X0>(char a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int a52)
{
  if ((a1 & 0x20) != 0)
  {
    v55 = 2;
  }

  else
  {
    v55 = 5;
  }

  LODWORD(STACK[0x3C8]) = v55;
  if (v52 > -604338387)
  {
    if (v52 == -604338386 || v52 == 1110798721)
    {
      goto LABEL_12;
    }

    v56 = -197983837;
  }

  else
  {
    if (v52 == -2077999468 || v52 == -1694061656)
    {
      goto LABEL_12;
    }

    v56 = -1085452910;
  }

  if (v52 != v56)
  {
    JUMPOUT(0x22D35C694);
  }

LABEL_12:
  *(v54 + 32) = xmmword_22D5C6760;
  return (*(v53 + 8 * (((a52 - 902) * ((a1 & 0x20) == 0)) ^ (a52 + 1260))))();
}

uint64_t sub_22D35C77C@<X0>(int a1@<W8>)
{
  result = (*(v2 + 8 * (a1 ^ 0x8E5)))(*v4);
  *v3 = 0;
  *v1 = 0;
  *(v1 + 344) = 0;
  *(v1 + 352) = 0;
  *(v1 + 360) = 0;
  *(v1 + 56) = 1846535034;
  return result;
}

uint64_t sub_22D35C7C4@<X0>(char a1@<W0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40)
{
  v42 = *(v41 + 96);
  v43 = *(a2 + 72);
  *v42 = ((v43 >> (((a40 + 119) | 8) ^ 0x91)) ^ 0x88) - ((2 * (v43 >> (((a40 + 119) | 8) ^ 0x91))) & 0x60) - 80;
  v42[1] = (a1 ^ BYTE2(v43)) - ((v43 >> 15) & 0x60) - 80;
  v42[2] = (BYTE1(v43) ^ 0xCA) - ((v43 >> 7) & 0x60) - 80;
  v42[3] = v43 ^ 0x9D;
  return (*(v40 + 8 * ((375 * (*(a2 + 92) > 4u)) ^ (a40 - 141))))();
}

uint64_t sub_22D35C8B4@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, int a3@<W2>, unsigned int a4@<W8>)
{
  v11 = v8 < a2;
  *(a1 + a4) = *(v10 + v4) - ((2 * *(v10 + v4)) & 0x60) - 80;
  v12 = v4 + 1;
  if (v11 == v12 > v6)
  {
    v11 = v12 + v7 + a3 < v8;
  }

  return (*(v9 + 8 * (((2 * v11) | (8 * v11)) ^ v5)))();
}

uint64_t sub_22D35C918(uint64_t a1, __n128 a2)
{
  v4[-1] = a2;
  *v4 = a2;
  return (*(v5 + 8 * ((60 * ((v2 ^ (a1 == 0)) & 1)) ^ v3)))(a1 - 8);
}

uint64_t sub_22D35C94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v19 = 2066391179 * ((-1005721908 - ((v18 - 144) | 0xC40DE6CC) + ((v18 - 144) | 0x3BF21933)) ^ 0x94D59B2B);
  *(v18 - 128) = a15;
  *(v18 - 144) = v19 + v17 - 1040;
  *(v18 - 140) = (1403818163 * (v15 - 4) + 2064040668 + ((90 * (v17 ^ 0x787) - 236) | 0x841) - 2147) ^ v19;
  v20 = (*(v16 + 8 * (v17 ^ 0xE99)))(v18 - 144);
  return (*(v16 + 8 * ((21 * (*(v18 - 136) != 1450726857)) ^ v17)))(v20);
}

uint64_t sub_22D35CAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, uint64_t a12, int a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, unsigned int a21, uint64_t a22, char *a23, char *a24)
{
  a21 = v25 - 243 - 143681137 * ((2 * (&a20 & 0x796C7A60) - &a20 - 2037152359) ^ 0xE7CB0E49) + 555;
  a22 = a19;
  a23 = &a14;
  a24 = &a16;
  v27 = (*(v26 + 8 * ((v25 - 243) ^ 0x878)))(&a20);
  return (*(v26 + 8 * ((((v25 - 243) ^ 0x2B5) * (a10 == v24)) ^ (v25 - 243))))(v27);
}

uint64_t sub_22D35CBA8@<X0>(uint64_t a1@<X8>)
{
  v5 = a1 + 335 - v1;
  v6 = *(v5 - 31);
  v7 = v4 + 335 - v1;
  v8.i64[0] = 0x6060606060606060;
  v8.i64[1] = 0x6060606060606060;
  v9.i64[0] = 0xB0B0B0B0B0B0B0B0;
  v9.i64[1] = 0xB0B0B0B0B0B0B0B0;
  *(v7 - 15) = vaddq_s8(vsubq_s8(*(v5 - 15), vandq_s8(vaddq_s8(*(v5 - 15), *(v5 - 15)), v8)), v9);
  *(v7 - 31) = vaddq_s8(vsubq_s8(v6, vandq_s8(vaddq_s8(v6, v6), v8)), v9);
  return (*(v3 + 8 * (((v1 != 288) * (((v2 - 612111382) & 0x247C13ED) - 812)) ^ v2)))();
}

uint64_t sub_22D35CC2C(uint64_t a1)
{
  v1 = 2066391179 * (a1 ^ 0xAF278218);
  v2 = *(a1 + 16) + v1;
  v3 = *a1 - v1;
  v4 = *(*(a1 + 8) + 4);
  v6 = v4 - 352135382;
  v5 = v4 - 352135382 < 0;
  v7 = 352135382 - v4;
  if (!v5)
  {
    v7 = v6;
  }

  v8 = (v3 - 1322566601) < (4 * v7);
  return (*(*(&off_284082B80 + (v2 ^ 0x55D)) + ((((v2 - 1) ^ v8) & 1 | (8 * (((v2 - 1) ^ v8) & 1))) ^ v2) - 1))();
}

uint64_t sub_22D35CD00@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v4 = *(a2 + 4) - 1045936309;
  v5 = v2 - 1045936309 < (((a1 + 1724919928) & 0x992FCFFF) + 1453681947);
  v6 = v5 ^ (v4 < (((a1 + 118) | 2) ^ 0x56A57327));
  v7 = v2 - 1045936309 > v4;
  if (!v6)
  {
    v5 = v7;
  }

  return (*(v3 + 8 * ((107 * v5) ^ a1)))();
}

uint64_t sub_22D35CD84@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(*(a2 + 96) + 448) = *(*(a1 + 8) + 12) - ((2 * *(*(a1 + 8) + 12)) & 0x60) - 80;
  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  return (*(v3 + 8 * ((61 * v4) ^ 0x30Cu)))(0);
}

uint64_t sub_22D35CDD8()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

uint64_t sub_22D35CE00()
{
  STACK[0x220] = v0 - 1824;
  LODWORD(STACK[0x334]) = v2 - 11;
  return (*(v3 + 8 * (((((v1 - 617) | 0x15) ^ ((v1 - 136) | 0x404) ^ 0x7D4) * (STACK[0x250] == 0)) ^ (v1 + 856))))();
}

uint64_t sub_22D35CE64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W5>, int a6@<W8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *(&off_284082B80 + (a6 ^ (a5 + 90))) - 2;
  v14 = (a6 + 872848098) & 0x9E1CBA9F;
  v16 = ((**(a11 + 80) - (*v13 ^ 0xB0)) ^ 0x4FFFEED7) + ((2 * (**(a11 + 80) - (*v13 ^ 0xB0))) & 0x9FFFDDAE) - 14688848 == v12 && (v14 ^ 0xFFFFFFFF942DB3FDLL) != -1808942246;
  return (*(v11 + 8 * ((15 * v16) ^ v14 ^ 0xF)))(a1, a2, a3, a4);
}

uint64_t sub_22D35CE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, unsigned int a16, uint64_t a17, uint64_t a18, int *a19)
{
  a16 = (v19 + 597) ^ (50899313 * (&a16 ^ 0x142F9D9B));
  a17 = a12;
  a19 = &a14;
  v22 = (*(v20 + 8 * (v19 + 773)))(&a16);
  return (*(v20 + 8 * (((a14 == -1541908459) * ((v19 - v21 - 1642) ^ (v19 - 1543639435) & 0xDD5F6FF7 ^ 0x1E3)) ^ v19)))(v22);
}

uint64_t sub_22D35CF3C(__n128 a1)
{
  v6 = v4 + 2;
  v6[-1] = a1;
  *v6 = a1;
  return (*(v5 + 8 * (((v2 == 8) * (v3 + 2240)) ^ v1)))();
}

uint64_t sub_22D35CF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  *(v27 - 128) = v24 - 1037613739 * ((((v27 - 144) | 0x7A13170F) + (~(v27 - 144) | 0x85ECE8F0)) ^ 0xAB113A71) - 210;
  *(v27 - 120) = v26;
  *(v27 - 112) = &a22;
  *(v27 - 144) = &a22;
  *(v27 - 136) = v25;
  (*(v23 + 8 * (v24 ^ 0x1AC)))(v27 - 144);
  v28 = 2066391179 * ((((v27 - 144) | 0xF829DF85) - ((v27 - 144) & 0xF829DF85)) ^ 0x570E5D9D);
  *(v27 - 128) = a15;
  *(v27 - 144) = v28 + v24 - 1217;
  *(v27 - 140) = ((((v24 - 1438) ^ 0xFFFFFD68) + v22) * ((v24 + 1950322887) & 0x8BC06FFF ^ 0x53AC984F) + 2064040668) ^ v28;
  v29 = (*(v23 + 8 * (v24 ^ 0x128)))(v27 - 144);
  return (*(v23 + 8 * ((118 * (*(v27 - 136) != 1450726857)) ^ v24)))(v29);
}

void sub_22D35D1F8(uint64_t a1)
{
  v1 = *(a1 + 24) ^ (1037613739 * ((~a1 & 0xB8C3CEDE | a1 & 0x473C3121) ^ 0x69C1E3A1));
  __asm { BRAA            X10, X17 }
}

uint64_t sub_22D35D310()
{
  *(v7 - 144) = v6;
  *(v7 - 136) = v3;
  *(v7 - 128) = v0 - 1037613739 * ((2 * ((v7 - 144) & 0x147D5720) - (v7 - 144) - 343758627) ^ 0x3A8085A2) - 435;
  *(v7 - 120) = v2;
  *(v7 - 112) = v6;
  (*(v4 + 8 * (v0 + 131)))(v7 - 144);
  v8 = 2066391179 * ((((2 * (v7 - 144)) | 0x56088E90) - (v7 - 144) - 721700680) ^ 0x8423C550);
  *(v7 - 128) = v1;
  *(v7 - 144) = v8 + v0 - 1442;
  *(v7 - 140) = (((v0 ^ 0x964) + 1403818049) * (v5 - 1) + 2064040668) ^ v8;
  v9 = (*(v4 + 8 * (v0 + 7)))(v7 - 144);
  return (*(v4 + 8 * ((58 * (*(v7 - 136) != 1450726857)) ^ v0)))(v9);
}

uint64_t sub_22D35D590@<X0>(int a1@<W2>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, int a9, unsigned int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, int a17, int a18, int a19, int a20, int a21, int a22, int a23, int a24, int a25, int a26, int a27, int a28, int a29, int a30, int a31, int a32, int a33, int a34, int a35, int a36, int a37, int a38, int a39, int a40, int a41, int a42, int a43)
{
  v47 = (*(v45 - 128) + 528) | 0x184;
  v48 = a1 + 16;
  v49 = a2 ^ 0x425E7458;
  v50 = v44 ^ 0xD76B5593;
  v51 = v46 ^ v47 ^ 0xADD390D7;
  *(v45 - 120) = v47;
  *(v45 - 116) = v48;
  *(v45 - 136) = 0;
  *(v45 - 132) = v47 ^ 0x178;
  v52 = (v47 ^ 0x178) - 620;
  v53 = (*(v45 - 144) + v48);
  v54 = (*(a14 + (v53[13] ^ 0x90)) ^ 0xE3) << 16;
  v55 = *(a14 + (v53[9] ^ 0xD2));
  *(v45 - 128) = v52;
  v56 = v54 | (((*(a11 + (v53[12] ^ 0x80)) + 7) ^ 0x31) << 24) | ((*(a12 + (v53[14] ^ 5)) ^ (v53[14] - ((2 * v53[14]) & 4) + 2) ^ 0x99) << 8) | *(a13 + (v53[15] ^ 8)) ^ 0xA5;
  v57 = *(v45 - 168) ^ v51 ^ 0x9B20FB54 ^ (((*(a12 + (v53[6] ^ 8)) ^ (v53[6] - ((2 * v53[6]) & 4) + 2) ^ 0x19) << 8) | (((*(a11 + (v53[4] ^ 0xC5)) + 7) ^ 0xFFFFFFFB) << 24) | *(a13 + (v53[7] ^ 0xFDLL)) ^ 0xA5 | ((*(a14 + (v53[5] ^ 0xF5)) ^ 0x57) << 16));
  v58 = *(v45 - 160) ^ v49 ^ 0x4D036472 ^ (*(a13 + (v53[3] ^ 0x75)) ^ 8 | (((*(a11 + (*v53 ^ 0xB0)) + 7) ^ 0x16) << 24) | ((*(a14 + (v53[1] ^ 0x93)) ^ 0x9D) << 16) | ((*(a12 + (v53[2] ^ 0x1CLL)) ^ (v53[2] - ((2 * v53[2]) & 4) + 2) ^ 0x5D) << 8));
  v59 = *(v45 - 164) ^ v43 ^ 0x41A20ECF ^ 0xD80E0E01 ^ v56;
  v60 = *(v45 - 156) ^ v50 ^ 0xE5EE8033 ^ ((*(a13 + (v53[11] ^ 9)) ^ 0xA2) & 0xFF00FFFF | ((v52 ^ 0x37 ^ v55) << 16) | ((*(a12 + (v53[10] ^ 0xA9)) ^ (v53[10] - ((2 * v53[10]) & 4) + 2) ^ 0xC2) << 8) | (((*(a11 + (v53[8] ^ 2)) + 7) ^ 0xE2) << 24));
  v61 = *(&off_284082B80 + (v47 ^ 0x79F)) - 12;
  v62 = *&v61[4 * ((*(v45 - 168) ^ v51 ^ 0xFB54 ^ (((*(a12 + (v53[6] ^ 8)) ^ (v53[6] - ((2 * v53[6]) & 4) + 2) ^ 0x19) << 8) | *(a13 + (v53[7] ^ 0xFDLL)) ^ 0xA5)) >> 8)];
  v63 = *(&off_284082B80 + v47 - 1856) - 12;
  v64 = *(&off_284082B80 + v47 - 1829);
  v65 = *(v64 + 4 * HIBYTE(v59)) ^ v62;
  v66 = *&v63[4 * BYTE2(v58)];
  v67 = *(v64 + 4 * HIBYTE(v57)) ^ *&v63[4 * BYTE2(v60)];
  v68 = (v65 ^ 0x1A31FEA3) + 805443211 - 2 * ((v65 ^ 0x1A31FEA3) & 0x3002168F ^ v65 & 4);
  v69 = *(&off_284082B80 + (v47 ^ 0x771)) - 8;
  v70 = *&v69[4 * v60] - 190468687;
  v71 = *&v61[4 * BYTE1(v58)] ^ *(v64 + 4 * HIBYTE(v60));
  v72 = (*&v69[4 * v59] + 614974524 - ((2 * *&v69[4 * v59] + 1766546274) & 0x60042D16)) ^ *&v63[4 * BYTE2(v57)];
  v73 = *&v63[4 * BYTE2(v59)];
  v74 = (v72 - 1611259737 - ((2 * v72) & 0x3FEC414E)) ^ *(v64 + 4 * HIBYTE(v58));
  *(v45 - 124) = 805443231;
  v75 = v67 ^ (*&v69[4 * v58] - 190468687);
  v76 = *&v61[4 * BYTE1(v60)] ^ *(v45 - 172) ^ (v74 - 2050499068 - ((2 * v74) & 0xB8FBC08));
  v77 = v73 ^ *(v45 - 180) ^ (*&v69[4 * v57] - 190468687) ^ ((v71 ^ 0x1A31FEA3) + 805443211 - 2 * ((v71 ^ 0x1A31FEA3) & 0x3002169F ^ v71 & 0x14));
  v78 = *&v61[4 * BYTE1(v59)] ^ *(v45 - 176) ^ ((v75 ^ 0xAFF4362C) - 2050499068 - 2 * ((v75 ^ 0xAFF4362C) & 0x5C7DE15 ^ v75 & 0x11));
  v79 = v78 ^ 0xBF80DD5E;
  v80 = (v76 ^ 0xD7674CCB) >> 24;
  v81 = *(v45 - 184) ^ v70 ^ v66 ^ 0xA1351B80 ^ v68;
  v82 = (v78 ^ 0xBF80DD5E) >> 24;
  v83 = *(v64 + 4 * HIBYTE(v81)) ^ 0xAFF4362C ^ *&v63[4 * ((v76 ^ 0xD7674CCB) >> 16)];
  v84 = *&v61[4 * ((v77 ^ 0xDD4) >> 8)] ^ (*&v69[4 * v81] + 2053999541 - ((2 * *&v69[4 * v81] + 155933538) & 0xB8FBC08));
  v85 = *&v69[4 * (v78 ^ 0x48)];
  v86 = (v85 - 1801728424 - ((2 * v85 + 692804450) & 0x3FEC414E)) ^ *(v64 + 4 * ((v77 ^ 0x16B10DD4u) >> 24));
  v87 = (v86 - 2050499068 - ((2 * v86) & 0xB8FBC08)) ^ *&v61[4 * ((v76 ^ 0x4CCB) >> 8)];
  v88 = *&v69[4 * (v76 ^ 0xDD)];
  v89 = (v88 + 2053999541 - ((2 * v88 + 155933538) & 0xB8FBC08)) ^ *&v61[4 * BYTE1(v81)];
  v90 = *(v64 + 4 * v80) ^ (v84 - 1611259737 - ((2 * v84) & 0x3FEC414E));
  v91 = (v89 - 1611259737 - ((2 * v89) & 0x3FEC414E)) ^ *(v64 + 4 * v82);
  v92 = *&v63[4 * ((v77 ^ 0x16B10DD4u) >> 16)];
  v93 = *&v63[4 * BYTE2(v81)] ^ a43 ^ (v87 + 805443211 - ((2 * v87) & 0x60042D16));
  v94 = __ROR4__(__ROR4__(*&v63[4 * BYTE2(v79)] ^ 0xB9AB301 ^ (v90 + 805443211 - ((2 * v90) & 0x60042D16)), 5) ^ 0x50D2ECF9, 27);
  v95 = a41 ^ v94 ^ 0x6EDAF696;
  v96 = (v83 - 2050499068 - ((2 * v83) & 0xB8FBC08)) ^ a42 ^ *&v61[4 * BYTE1(v79)] ^ (*&v69[4 * (v77 ^ 0xC2)] - 190468687);
  v97 = *(v45 - 188) ^ v92 ^ 0x2201ECBC ^ (v91 + 805443211 - ((2 * v91) & 0x60042D16));
  v98 = *&v69[4 * (v93 ^ 0x37)];
  v99 = (v98 + 614974524 - ((2 * v98 + 1766546274) & 0x60042D16)) ^ *&v63[4 * (((a41 ^ v94) >> 16) ^ 0x45)];
  v100 = *(v64 + 4 * ((v93 ^ 0xD62C0A37) >> 24)) ^ *&v61[4 * BYTE1(v95)];
  v101 = (v99 - 2050499068 - ((2 * v99) & 0xB8FBC08)) ^ *&v61[4 * BYTE1(v97)];
  v102 = *&v63[4 * BYTE2(v97)] ^ *&v61[4 * ((v93 ^ 0xA37) >> 8)] ^ 0xB5C5C88F;
  v103 = *(v64 + 4 * ((v96 ^ 0xFC47C039) >> 24));
  v104 = *(v64 + 4 * HIBYTE(v97)) ^ *&v63[4 * (BYTE2(v93) ^ 0xB3)] ^ 0xAFF4362C ^ (*&v69[4 * ((a41 ^ v94) ^ 0x96)] - 190468687);
  v105 = *&v69[4 * (v96 ^ 0x39)] - 190468687;
  v106 = *&v61[4 * (BYTE1(v96) ^ 0x87)];
  v107 = ((v100 ^ 0x1A31FEA3) + 805443211 - 2 * ((v100 ^ 0x1A31FEA3) & 0x3002169B ^ v100 & 0x10)) ^ a36 ^ *&v63[4 * ((v96 ^ 0xFC47C039) >> 16)] ^ (*&v69[4 * v97] - 190468687);
  v108 = a38 ^ v103 ^ 0x61C6B6CD ^ (v101 - 1611259737 - ((2 * v101) & 0x3FEC414E));
  v109 = (v102 - 1611259737 - ((2 * v102) & 0x3FEC414E)) ^ a40 ^ *(v64 + 4 * HIBYTE(v95)) ^ v105;
  v110 = v106 ^ a39 ^ (v104 - 2050499068 - ((2 * v104) & 0xB8FBC08));
  BYTE2(v101) = BYTE2(v110) ^ 0x65;
  v111 = (v110 ^ 0x7D650C28u) >> 24;
  v112 = *&v69[4 * (v109 ^ 0xDD)];
  v113 = *&v69[4 * (v110 ^ 0x28)];
  v114 = (v113 - 1801728424 - ((2 * v113 + 692804450) & 0x3FEC414E)) ^ *(v64 + 4 * ((v107 ^ 0x7F82DAABu) >> 24));
  v115 = (v114 - 2050499068 - ((2 * v114) & 0xB8FBC08)) ^ *&v61[4 * (((v109 ^ 0x35DF) >> 8) ^ 0x79)];
  v116 = (v112 + 2053999541 - ((2 * v112 + 155933538) & 0xB8FBC08)) ^ *&v61[4 * BYTE1(v108)];
  v117 = *&v63[4 * BYTE2(v108)];
  v118 = *&v63[4 * (((v109 ^ 0x13FC35DF) >> 16) ^ 0x9B)] ^ *&v61[4 * (BYTE1(v110) ^ 0x4B)];
  v119 = *&v63[4 * ((v107 ^ 0x7F82DAABu) >> 16)] ^ (v116 + 805443211 - ((2 * v116) & 0x60042D16));
  v120 = *(v64 + 4 * HIBYTE(v108));
  v121 = *&v63[4 * BYTE2(v101)] ^ 0xAFF4362C ^ *(v64 + 4 * (HIBYTE(v109) ^ 0xBD)) ^ (*&v69[4 * v108] - 190468687);
  v122 = *(v64 + 4 * v111) ^ a35 ^ (v119 - 1611259737 - ((2 * v119) & 0x3FEC414E));
  v123 = v121 - 2050499068 - ((2 * v121) & 0xB8FBC08);
  v124 = v117 ^ a34 ^ (v115 + 805443211 - ((2 * v115) & 0x60042D16));
  v125 = v122 ^ 0x66654B3E;
  v126 = v120 ^ a33 ^ (*&v69[4 * (v107 ^ 0xBD)] - 190468687) ^ ((v118 ^ 0xB5C5C88F) - 1611259737 - 2 * ((v118 ^ 0xB5C5C88F) & 0x1FF620B7 ^ v118 & 0x10));
  LOBYTE(v121) = v126 ^ 0x1F;
  v127 = a37 ^ *&v61[4 * (BYTE1(v107) ^ 0xDA)] ^ 0xE82DABD ^ v123;
  v128 = HIBYTE(v127);
  v129 = (*&v69[4 * v127] + 2053999541 - ((2 * *&v69[4 * v127] + 155933538) & 0xB8FBC08)) ^ *&v61[4 * ((v120 ^ a33 ^ (*&v69[4 * (v107 ^ 0xBD)] - 21071) ^ ((v118 ^ 0xC88F) + 8359 - 2 * ((v118 ^ 0xC88F) & 0x20B7 ^ v118 & 0x10)) ^ 0xE61F) >> 8)];
  v130 = (v122 ^ 0x66654B3Eu) >> 24;
  v131 = *(v64 + 4 * ((v126 ^ 0x880EE61F) >> 24));
  v132 = *&v69[4 * (v122 ^ 0x28)];
  v133 = (v129 - 1611259737 - ((2 * v129) & 0x3FEC414E)) ^ *(v64 + 4 * v130);
  v134 = (v132 + 2053999541 - ((2 * v132 + 155933538) & 0xB8FBC08)) ^ *&v61[4 * BYTE1(v127)];
  v135 = (v134 + 805443211 - ((2 * v134) & 0x60042D16)) ^ *&v63[4 * (BYTE2(v126) ^ 0x91)];
  v136 = v131 ^ 0xD14CA766 ^ *&v61[4 * BYTE1(v125)];
  v137 = *&v63[4 * BYTE2(v127)] ^ 0xF0E5FC4F;
  v138 = (*&v69[4 * v121] + 614974524 - ((2 * *&v69[4 * v121] + 1766546274) & 0x60042D16)) ^ *&v63[4 * BYTE2(v125)];
  v139 = (v138 - 1611259737 - ((2 * v138) & 0x3FEC414E)) ^ *(v64 + 4 * v128);
  v140 = v139 - 2050499068 - ((2 * v139) & 0xB8FBC08);
  v141 = v133 + 805443211 - ((2 * v133) & 0x60042D16);
  v142 = (*&v69[4 * (v124 ^ 0x48)] - 190468687) ^ a29 ^ (v137 + v136 - 2 * (v137 & v136));
  v143 = *(v64 + 4 * ((v124 ^ 0xA480DD5E) >> 24)) ^ a30 ^ (v135 - 1611259737 - ((2 * v135) & 0x3FEC414E));
  v144 = *&v61[4 * ((v124 ^ 0xDD5E) >> 8)] ^ a32 ^ v140;
  v145 = a31 ^ *&v63[4 * ((v124 ^ 0xA480DD5E) >> 16)] ^ 0x84654B28 ^ v141;
  v146 = *&v69[4 * (((v69[4 * (v124 ^ 0x48)] - 79) ^ a29 ^ (v137 + v136 - 2 * (v137 & v136))) ^ 0x7E)];
  v147 = *&v69[4 * ((v61[4 * ((v124 ^ 0xDD5E) >> 8)] ^ a32 ^ v140) ^ 0xDD)];
  v148 = *&v63[4 * (BYTE2(v144) ^ 0x67)] ^ *(v64 + 4 * (HIBYTE(v142) ^ 0x30)) ^ (*&v69[4 * (v143 ^ 0x6E)] - 190468687);
  v149 = (v147 - 1801728424 - ((2 * v147 + 692804450) & 0x3FEC414E)) ^ *(v64 + 4 * HIBYTE(v145));
  v150 = (v149 + 805443211 - ((2 * v149) & 0x60042D16)) ^ *&v63[4 * (((v143 ^ 0xD0C9FB6E) >> 16) ^ 0x9F)];
  v151 = *&v63[4 * BYTE2(v145)] ^ (v146 + 614974524 - ((2 * v146 + 1766546274) & 0x60042D16));
  v152 = *&v63[4 * (BYTE2(v142) ^ 0xEE)] ^ (*&v69[4 * v145] - 190468687) ^ *(v64 + 4 * ((v143 ^ 0xD0C9FB6E) >> 24));
  v153 = *&v61[4 * (BYTE1(v142) ^ 0xC3)];
  v154 = *&v61[4 * (BYTE1(v143) ^ 0xBC)];
  v155 = (v151 - 1611259737 - ((2 * v151) & 0x3FEC414E)) ^ *(v64 + 4 * (HIBYTE(v144) ^ 0x5F));
  v156 = v155 - 2050499068 - ((2 * v155) & 0xB8FBC08);
  v157 = *&v61[4 * (BYTE1(v144) ^ 0x4C)] ^ a26 ^ ((v152 ^ 0xAFF4362C) - 2050499068 - 2 * ((v152 ^ 0xAFF4362C) & 0x5C7DE07 ^ v152 & 3));
  v158 = ((v148 ^ 0xAFF4362C) - 2050499068 - 2 * ((v148 ^ 0xAFF4362C) & 0x5C7DE17 ^ v148 & 0x13)) ^ a25 ^ *&v61[4 * BYTE1(v145)];
  v159 = v154 ^ a28 ^ v156;
  v160 = a27 ^ v153 ^ 0x9A674CDD ^ (v150 - 2050499068 - ((2 * v150) & 0xB8FBC08));
  v161 = *&v69[4 * ((a27 ^ v153) ^ 0xDD ^ (v150 + 4 - ((2 * v150) & 8)))];
  v162 = (v161 + 2053999541 - ((2 * v161 + 155933538) & 0xB8FBC08)) ^ *&v61[4 * ((v159 ^ 0xDAAB) >> 8)];
  v163 = (v162 + 805443211 - ((2 * v162) & 0x60042D16)) ^ *&v63[4 * ((v158 ^ 0xBFC6B6DB) >> 16)];
  v164 = v163 - 1611259737 - ((2 * v163) & 0x3FEC414E);
  v165 = *(v64 + 4 * ((v158 ^ 0xBFC6B6DB) >> 24)) ^ 0x1A31FEA3 ^ *&v61[4 * BYTE1(v160)] ^ (*&v69[4 * ((v61[4 * (BYTE1(v144) ^ 0x4C)] ^ a26 ^ ((v152 ^ 0x2C) + 4 - 2 * ((v152 ^ 0x2C) & 7 ^ v152 & 3))) ^ 0xE)] - 190468687);
  v166 = *&v61[4 * (BYTE1(v157) ^ 0x2A)] ^ *(v64 + 4 * ((v159 ^ 0x2982DAABu) >> 24)) ^ 0x1A31FEA3;
  v167 = *(v64 + 4 * HIBYTE(v160)) ^ *&v61[4 * ((v158 ^ 0xB6DB) >> 8)];
  v168 = *(v45 - 124);
  v169 = *&v63[4 * (BYTE2(v157) ^ 0xB3)];
  v170 = BYTE2(v160);
  v171 = v165 + 805443211 - ((2 * v165) & 0x60042D16);
  v172 = v166 + 805443211 - ((2 * v166) & 0x60042D16);
  v173 = *&v69[4 * (v159 ^ 0xBD)] - 190468687;
  v174 = v171 ^ a21 ^ *&v63[4 * ((v159 ^ 0x2982DAABu) >> 16)];
  v175 = a24 ^ *&v63[4 * v170] ^ (*&v69[4 * (v158 ^ 0xCD)] - 190468687) ^ 0x2674CDD ^ v172;
  v176 = a22 ^ *(v64 + 4 * (HIBYTE(v157) ^ 0xA6)) ^ 0xAF54BB9B ^ v164;
  v177 = a23 ^ v169 ^ v173 ^ 0x2BE67D3F ^ ((v167 ^ 0x1A31FEA3) + 805443211 - 2 * ((v167 ^ 0x1A31FEA3) & v168 ^ v167 & 0x14));
  v178 = *&v69[4 * (v174 ^ 0x8A)];
  v179 = (*&v69[4 * v176] + 614974524 - ((2 * *&v69[4 * v176] + 1766546274) & 0x60042D16)) ^ *&v63[4 * BYTE2(v175)];
  v180 = (v179 - 2050499068 - ((2 * v179) & 0xB8FBC08)) ^ *&v61[4 * BYTE1(v177)];
  v181 = *(v64 + 4 * ((v174 ^ 0x44E9778Au) >> 24));
  v182 = *(v64 + 4 * HIBYTE(v177)) ^ *&v61[4 * ((v174 ^ 0x778A) >> 8)];
  v183 = *&v63[4 * BYTE2(v176)];
  v184 = *&v69[4 * v175];
  v185 = *(v64 + 4 * HIBYTE(v176)) ^ *&v61[4 * BYTE1(v175)] ^ 0x1A31FEA3 ^ (*&v69[4 * (v177 ^ 0x16)] - 190468687);
  v186 = *(v64 + 4 * HIBYTE(v175)) ^ (v178 - 1801728424 - ((2 * v178 + 692804450) & 0x3FEC414E));
  v187 = *&v63[4 * (BYTE2(v174) ^ 0x76)];
  v188 = BYTE1(v176);
  v189 = (v186 + 805443211 - ((2 * v186) & 0x60042D16)) ^ *&v63[4 * BYTE2(v177)];
  v190 = v183 ^ a19 ^ (v184 - 190468687) ^ ((v182 ^ 0x1A31FEA3) + 805443211 - 2 * ((v182 ^ 0x1A31FEA3) & v168 ^ v182 & 0x14));
  v191 = v181 ^ a18 ^ (v180 - 1611259737 - ((2 * v180) & 0x3FEC414E));
  v192 = a20 ^ *&v61[4 * v188] ^ 0x26E67D29 ^ (v189 - 2050499068 - ((2 * v189) & 0xB8FBC08));
  LOBYTE(v177) = v191 ^ 0x58;
  v193 = a22 ^ a19 ^ v187 ^ 0xA254BB9B ^ (v185 + 805443211 - ((2 * v185) & 0x60042D16));
  v194 = (v191 ^ 0x4BE2758u) >> 24;
  v195 = *&v69[4 * ((v183 ^ a19 ^ (v184 - 79) ^ ((v182 ^ 0xA3) - 117 - 2 * ((v182 ^ 0xA3) & v168 ^ v182 & 0x14))) ^ 0x49)];
  v196 = (*&v69[4 * v192] + 2053999541 - ((2 * *&v69[4 * v192] + 155933538) & 0xB8FBC08)) ^ *&v61[4 * ((v191 ^ 0x2758) >> 8)];
  v197 = (v195 + 614974524 - ((2 * v195 + 1766546274) & 0x60042D16)) ^ *&v63[4 * (BYTE2(v191) ^ 0x21)];
  v198 = (v197 - 1611259737 - ((2 * v197) & 0x3FEC414E)) ^ *(v64 + 4 * HIBYTE(v193));
  v199 = (v196 + 805443211 - ((2 * v196) & 0x60042D16)) ^ *&v63[4 * BYTE2(v193)];
  v200 = *(v64 + 4 * (HIBYTE(v190) ^ 0xEF));
  v201 = (*&v69[4 * v177] - 1801728424 - ((2 * *&v69[4 * v177] + 692804450) & 0x3FEC414E)) ^ *(v64 + 4 * HIBYTE(v192));
  v202 = (v201 - 2050499068 - ((2 * v201) & 0xB8FBC08)) ^ *&v61[4 * BYTE1(v193)];
  v203 = *(v64 + 4 * v194) ^ *&v61[4 * (BYTE1(v190) ^ 0xEB)] ^ 0x1A31FEA3 ^ (*&v69[4 * v193] - 190468687);
  v204 = BYTE2(v190) ^ 3;
  v205 = *&v63[4 * BYTE2(v192)] ^ a15 ^ (v203 + 805443211 - ((2 * v203) & 0x60042D16));
  LODWORD(v61) = *&v61[4 * BYTE1(v192)] ^ a16 ^ (v198 - 2050499068 - ((2 * v198) & 0xB8FBC08));
  v206 = *&v63[4 * v204] ^ a17 ^ (v202 + 805443211 - ((2 * v202) & 0x60042D16));
  v207 = a17 ^ a19 ^ v200 ^ (v199 - 1611259737 - ((2 * v199) & 0x3FEC414E));
  v208 = v207 ^ 0xBD9E3C06;
  v209 = v206 ^ 0xB0693C07;
  v210 = *(v45 - 120);
  v211 = *(&off_284082B80 + (v210 ^ 0x769)) - 12;
  v212 = *&v211[4 * ((a17 ^ a19 ^ v200 ^ (v199 - 89 - ((2 * v199) & 0x4E))) ^ 7)];
  v213 = HIBYTE(v207) ^ 0xD2;
  v214 = *(&off_284082B80 + v210 - 1995) - 4;
  LODWORD(v69) = 1909043885 * *&v214[4 * v213] - ((59991386 * *&v214[4 * v213] + 53771166) & 0xDA55222);
  v215 = *(&off_284082B80 + v210 - 2001) - 8;
  v216 = *&v215[4 * ((v61 ^ 0xFAB5) >> 8)];
  HIDWORD(v217) = v216 ^ 0x984CF34;
  LODWORD(v217) = v216 ^ 0x70000000;
  v218 = (v217 >> 28) ^ (*&v211[4 * (v205 ^ 0x16)] - 1027454335) ^ (1909043885 * *&v214[4 * (HIBYTE(v206) ^ 0xDF)] + 697974223);
  v219 = *&v215[4 * ((v205 ^ 0xF016) >> 8)];
  HIDWORD(v217) = v219 ^ 0x984CF34;
  LODWORD(v217) = v219 ^ 0x70000000;
  v220 = v217 >> 28;
  v221 = *&v215[4 * BYTE1(v208)];
  HIDWORD(v217) = v221 ^ 0x984CF34;
  LODWORD(v217) = v221 ^ 0x70000000;
  v222 = *(&off_284082B80 + v210 - 1849) - 4;
  v223 = *&v222[4 * ((v61 ^ 0x422CFAB5) >> 16)];
  v224 = *&v222[4 * ((v205 ^ 0xF6BCF016) >> 16)];
  v225 = (v217 >> 28) ^ (*&v211[4 * (v61 ^ 0xB5)] - 1027454335);
  LODWORD(v211) = *&v211[4 * v209];
  v226 = *&v222[4 * (BYTE2(v209) ^ 0xF7)];
  v227 = *&v215[4 * BYTE1(v209)];
  LODWORD(v61) = *&v214[4 * ((v61 >> 24) ^ 0x2D)];
  LODWORD(v214) = *&v214[4 * (HIBYTE(v205) ^ 0x99)];
  HIDWORD(v217) = v227 ^ 0x984CF34;
  LODWORD(v217) = v227 ^ 0x70000000;
  v228 = a7 ^ *&v222[4 * BYTE2(v208)] ^ (v218 + 114469137 - ((2 * v218) & 0xDA55222));
  v229 = v223 ^ a9 ^ v220 ^ (v211 - 1027454335);
  v230 = v69 + 812443360;
  LODWORD(v214) = 1909043885 * v214 + 697974223;
  LODWORD(v211) = (v212 - ((2 * v212 + 92574978) & 0xDA55222) - 912985198) ^ a8 ^ v224 ^ (1909043885 * v61 + 697974223) ^ (v217 >> 28);
  LODWORD(v69) = a8 ^ a15 ^ v226 ^ v214 ^ (v225 + 114469137 - ((2 * v225) & 0xDA55222));
  v231 = *(&off_284082B80 + (v210 ^ 0x7D8)) - 4;
  v53[10] = v231[(((v212 - ((2 * v212 - 27390) & 0x5222) - 3182) ^ a8 ^ v224 ^ (-19795 * v61 + 15823) ^ (v217 >> 28)) >> 8) ^ 0x79] ^ 0xC4;
  v232 = *(&off_284082B80 + v210 - 1978) - 12;
  LODWORD(v63) = v229 ^ v230;
  v53[13] = v232[BYTE2(v69) ^ 0xF0] ^ 0x7D;
  v233 = *(&off_284082B80 + (v210 ^ 0x7A1)) - 12;
  v53[15] = (v233[(a8 ^ a15 ^ v226 ^ v214 ^ (v225 + 17 - ((2 * v225) & 0x22))) ^ 0x45] - 52) ^ 0x8F;
  v53[6] = v231[((v229 ^ v230) >> 8) ^ 0x1BLL] ^ 0x38;
  v53[1] = v232[BYTE2(v228) ^ 0x3ELL] ^ 0x1B;
  v234 = *(&off_284082B80 + v210 - 1911);
  v53[12] = *(v234 + ((v69 >> 24) ^ 0x41)) ^ 0xA;
  v53[8] = *(v234 + ((v211 >> 24) ^ 0xB6)) ^ 0xCC;
  v53[3] = (v233[v228 ^ 0xDFLL] - 52) ^ 0x17;
  v53[14] = v231[((a8 ^ a15 ^ v226 ^ v214 ^ (v225 - 22255 - ((2 * v225) & 0x5222))) >> 8) ^ 0x5ELL] ^ 0x79;
  v53[11] = (v233[v211 ^ 0x54] - 52) ^ 0x67;
  v53[2] = v231[BYTE1(v228) ^ 0x13] ^ 0x34;
  LOBYTE(v231) = v233[v63 ^ 0xDELL];
  LODWORD(v233) = *(v45 - 116);
  v53[7] = (v231 - 52) ^ 0x84;
  v53[5] = v232[BYTE2(v63) ^ 0x7ALL] ^ 0xDC;
  *v53 = *(v234 + (HIBYTE(v228) ^ 0xB5)) ^ 0x2C;
  v53[9] = v232[BYTE2(v211) ^ 0x6FLL] ^ 0xAE;
  v53[4] = *(v234 + ((v63 >> 24) ^ 0x49)) ^ 0x58;
  v235 = v233 - 144813738 < a10;
  if (a10 < 0xF75E5146 != (v233 - 144813738) < 0xF75E5146)
  {
    v235 = a10 < 0xF75E5146;
  }

  return (*(*(v45 - 152) + 8 * ((3793 * v235) ^ v210)))();
}

uint64_t sub_22D35D624()
{
  v6 = ((v1 - 1504) | 0x402) ^ 0xFE2;
  *(v3 + 4) = v0;
  *(v5 - 136) = v6 + ((2 * ((v5 - 144) & 0x6304AF88) - (v5 - 144) - 1661251471) ^ 0x1156329D) * v2 - 1886;
  *(v5 - 144) = v3;
  *(v5 - 128) = &v8;
  return (*(v4 + 8 * (v6 + 138)))(v5 - 144);
}

uint64_t sub_22D35DA28@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v12 = (v5 & v6 ^ a1 ^ *(*(v10 + 8) + 4 * v3)) + v2;
  *(*(a2 + 8) + 4 * v3) = v7 + v12 - (v9 & (2 * v12));
  return (*(v8 + 8 * (v4 - (v3 + 1 != v11) + 8 * (v3 + 1 != v11))))();
}

void sub_22D35DB24(uint64_t a1)
{
  v1 = *(a1 + 8) ^ (50899313 * ((a1 - 1849756831 - 2 * (a1 & 0x91BEF361)) ^ 0x85916EFA));
  v2 = *(&off_284082B80 + (v1 ^ 0x5D5)) - 8;
  v3 = *a1;
  (*&v2[8 * (v1 ^ 0xC9E)])(*(&off_284082B80 + (v1 ^ 0x5DD)) - 4, sub_22D368468);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_22D35DC20@<X0>(char a1@<W0>, uint64_t a2@<X1>, int8x16_t *a3@<X4>, uint64_t a4@<X8>, int8x16_t a5@<Q4>, int8x16_t a6@<Q5>)
{
  v8 = (a2 + a4);
  v9 = vaddq_s8(vsubq_s8(a3[1], vandq_s8(vaddq_s8(a3[1], a3[1]), a5)), a6);
  *v8 = vaddq_s8(vsubq_s8(*a3, vandq_s8(vaddq_s8(*a3, *a3), a5)), a6);
  v8[1] = v9;
  return (*(v7 + 8 * ((570 * ((((v6 - 971) | 0x7A6) ^ 0x7CFLL) == (a1 & 0x60))) ^ v6)))();
}

uint64_t sub_22D35DC94(uint64_t a1)
{
  v1 = 50899313 * ((a1 & 0x2A3DC41D | ~(a1 | 0x2A3DC41D)) ^ 0xC1EDA679);
  v2 = *a1 ^ v1;
  v3 = *(a1 + 16) ^ v1;
  v4 = *(*(a1 + 8) + 4);
  v6 = v4 - 352135382;
  v5 = v4 - 352135382 < 0;
  v7 = 352135382 - v4;
  if (!v5)
  {
    v7 = v6;
  }

  return (*(*(&off_284082B80 + v2 - 2169) + ((((v3 - 438810108) >= (4 * v7)) * (v2 - 2109)) ^ v2) - 1))();
}

uint64_t sub_22D35DD8C(uint64_t result)
{
  if ((v2 + v4 - 1) >= 0x7FFFFFFF)
  {
    v6 = -v5;
  }

  else
  {
    v6 = v3;
  }

  *(v1 + 4) = v6;
  *(result + 24) = 754458250;
  return result;
}

uint64_t sub_22D35E16C(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = 1037613739 * ((-538460597 - (a1 | 0xDFE7BE4B) + (a1 | 0x201841B4)) ^ 0xF11A6CCB);
  v3 = *(a1 + 44) + v2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 16);
  v7 = (((*(a1 + 24) ^ v2 ^ 0x88EDDD53) + 1997677229) ^ ((*(a1 + 24) ^ v2 ^ 0xC48B86F9) + 997488903) ^ ((*(a1 + 24) ^ v2 ^ 0x7596FBB4) - 1972829108)) - 1320177053;
  v8 = 1564307779 * ((((2 * &v10) | 0x7494C12E) - &v10 - 977952919) ^ 0xAD47AC84);
  v16 = *a1;
  v14 = v5;
  v13 = v7 ^ v8;
  v15 = v3 + v8 + 1776823953;
  v10 = v4;
  v12 = v6;
  result = (*(*(&off_284082B80 + (v3 ^ 0x9617D434)) + (v3 ^ 0x9617DDA1) - 1))(&v10);
  *(a1 + 40) = v11;
  return result;
}

uint64_t sub_22D35E31C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v8 = v5 - 1;
  *(v7 + 328) = v8;
  *(a1 + v8) = (v3 ^ (v2 + 1)) * (v2 + 18);
  return (*(v6 + 8 * (((*(v7 + 328) != 0) * v4) ^ a2)))();
}

uint64_t sub_22D35E3C0@<X0>(int a1@<W4>, uint64_t a2@<X8>)
{
  v6 = (v4 + 4 * a2);
  v7 = a2 + 1;
  *v6 = *(&STACK[0x498] + (*(v4 + 4 * v7) & 1)) ^ v6[397] ^ ((*(v4 + 4 * v7) & 0x7FFFFFFE | ((v2 + 368) ^ (a1 + 1286)) & v3) >> 1);
  return (*(v5 + 8 * ((240 * (v7 == 227)) ^ v2)))();
}

void sub_22D35E420(uint64_t a1)
{
  v1 = 1361651671 * ((a1 - 2 * (a1 & 0x40C2D223) + 1086509603) ^ 0x93E022AF);
  if (*(a1 + 32))
  {
    v2 = *a1 - v1 == 1858402733;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  __asm { BRAA            X10, X17 }
}

uint64_t sub_22D35E4F4(uint64_t a1)
{
  v1 = *(a1 + 4) - 1564307779 * ((1625765565 - (a1 | 0x60E736BD) + (a1 | 0x9F18C942)) ^ 0x8150551) + 35;
  v2 = (v1 ^ 0xEB02D5D7) + *(*(a1 + 8) + 4);
  if (v2 < 0)
  {
    v2 = -v2;
  }

  return (*(*(&off_284082B80 + v1 - 706) + (((v2 > (v1 ^ 0x2FD)) * ((v1 - 35) ^ 0x6C8)) ^ v1) - 1))();
}

uint64_t sub_22D35E5BC(double a1, double a2, double a3, int8x16_t a4, int8x16_t a5, uint64_t a6, uint64_t a7)
{
  v12 = (v9 + v7 + v10 - 16);
  v13 = vaddq_s8(vsubq_s8(*(a7 + v7 - 16), vandq_s8(vaddq_s8(*(a7 + v7 - 16), *(a7 + v7 - 16)), a4)), a5);
  v12[-1] = vaddq_s8(vsubq_s8(*(a7 + v7 - 32), vandq_s8(vaddq_s8(*(a7 + v7 - 32), *(a7 + v7 - 32)), a4)), a5);
  *v12 = v13;
  return (*(v11 + 8 * ((((v7 & 0xFFFFFFE0) == 32) * (v8 ^ 0x5C9)) ^ v8)))();
}

uint64_t sub_22D35E62C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * ((((v6 == 0) ^ (v4 - 49)) & 1 | (2 * (((v6 == 0) ^ (v4 - 49)) & 1))) ^ (v2 + v4 - 815))))();
}

uint64_t sub_22D35E80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned int a20)
{
  v23 = v20 - 2113273693 > a20;
  if (a20 < 0x820A0063 != v20 - 2113273693 < (((a5 ^ (a5 - 128)) + 2027) ^ 0x820A0808))
  {
    v23 = v20 - 2113273693 < (((a5 ^ (a5 - 128)) + 2027) ^ 0x820A0808);
  }

  return (*(v21 + 8 * ((7 * !v23) ^ (v22 + a5 + 985))))();
}

uint64_t sub_22D35E894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v66 = LODWORD(STACK[0x2C4]) - ((LODWORD(STACK[0x2C4]) << (-75 * (v62 ^ 0x70) + 120)) & 0x73E1403C) + 972070942;
  v67 = 1037613739 * ((((v65 - 192) | 0x693606D9) - ((v65 - 192) & 0x693606D9)) ^ 0xB8342BA6);
  v68 = (v65 - 192);
  v68[2] = a61;
  *v68 = a58;
  v68[4] = a31;
  *(v65 - 184) = v61 - v67 - (a57 & 4) - 238303310;
  *(v65 - 168) = v66 ^ v67;
  *(v65 - 148) = v62 - v67 - 1776823398;
  v68[6] = v63;
  v69 = (*(v64 + 8 * (v62 ^ 0x9FD)))(v65 - 192);
  return (*(v64 + 8 * ((1319 * (*(v65 - 152) == -1541908459)) ^ v62)))(v69);
}

uint64_t sub_22D35E9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v61 = 1564307779 * ((~((v60 - 192) | 0xA39392F6) + ((v60 - 192) & 0xA39392F6)) ^ 0xCB61A11A);
  v62 = (v60 - 192);
  v62[5] = a28;
  *(v60 - 160) = v61 + v57 + 1561;
  *(v60 - 156) = v61 ^ 0x377B605F;
  v62[7] = a25;
  v62[2] = 0;
  v62[3] = 0;
  *v62 = &STACK[0x218];
  v62[1] = a57;
  v63 = (*(v59 + 8 * (v57 ^ 0x86F)))(v60 - 192);
  v64 = *(v60 - 144);
  LODWORD(STACK[0x46C]) = v64;
  return (*(v59 + 8 * ((1773 * (v64 == v58 + v57 + 627 - 905)) ^ v57)))(v63);
}

void sub_22D35EABC(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = *a1 ^ (1361651671 * (((a1 | 0x4F0E0AAE) - (a1 & 0x4F0E0AAE)) ^ 0x9C2CFA22));
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v10[0] = 0x14FD28D600000082;
  v10[1] = &v11;
  v9[0] = 0x14FD28D600000082;
  v9[1] = &v12;
  v6 = v3[1];
  v17 = v2;
  v18 = v10;
  v14 = v5;
  v15 = v3;
  LODWORD(v13) = v1 - 1785193651 * (&v13 ^ 0x13DCEC20) + 1083;
  v16 = v6;
  v7 = *(&off_284082B80 + (v1 ^ 0x49)) - 8;
  (*&v7[8 * v1 + 17888])(&v13);
  v8 = *v3;
  v13 = v9;
  LODWORD(v14) = v1 + 1388665877 * ((2 * (&v13 & 0x768F1B20) - &v13 + 158393567) ^ 0x84DD8633) + 300;
  v15 = v8;
  (*&v7[8 * v1 + 18592])(&v13);
  v14 = v4;
  LODWORD(v13) = (143681137 * (((&v13 | 0x1E12B287) - (&v13 & 0x1E12B287)) ^ 0x7F4A3957)) ^ (v1 + 367);
  (*&v7[8 * (v1 ^ 0x934)])(&v13);
  __asm { BRAA            X8, X17 }
}

void sub_22D35ECBC(uint64_t a1)
{
  v1 = *(a1 + 24) ^ (1037613739 * ((2 * (a1 & 0xDA3B98A6) - a1 + 633628505) ^ 0xF4C64A26));
  __asm { BRAA            X8, X17 }
}

void sub_22D35EEBC(uint64_t a1)
{
  v1 = 2066391179 * (((a1 | 0x20DD57A5) - (a1 & 0x20DD57A5)) ^ 0x8FFAD5BD);
  v2 = *(*(a1 + 8) + 12) + 1170145549;
  v3 = (*(a1 + 4) ^ v1) - 1713178154;
  v4 = (v3 < 0xB483FABA) ^ (v2 < 0xB483FABA);
  v5 = v2 < v3;
  if (v4)
  {
    v6 = v3 < 0xB483FABA;
  }

  else
  {
    v6 = v5;
  }

  __asm { BRAA            X12, X17 }
}

uint64_t sub_22D35EFA8()
{
  v5 = (v2 + v4 - 220 + 8);
  *(v5 - 1) = 0xB0B0B0B0B0B0B0B0;
  *v5 = 0xB0B0B0B0B0B0B0B0;
  return (*(v3 + 8 * ((((((v1 ^ 0x30u) - 736) & v0) != 16) * (((v1 ^ 0x30) + 287) ^ 0x3DF)) ^ v1 ^ 0x30)))();
}

uint64_t sub_22D35F660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, int a59)
{
  v77 = v64;
  v75 = v66;
  v76 = v65;
  v74 = v67;
  HIDWORD(a35) = a5;
  LODWORD(a28) = v60;
  if (v59 == 32)
  {
    HIDWORD(a13) = 0;
    v68 = a59;
    v73 = *(&off_284082B80 + a59 - 716);
    v69 = 19;
    goto LABEL_7;
  }

  if (v59 == 20)
  {
    HIDWORD(a13) = 0;
    v73 = *(&off_284082B80 + a36) - 4;
    HIDWORD(a16) = 15;
    LODWORD(a15) = 1;
LABEL_9:
    v68 = a59;
    goto LABEL_10;
  }

  if (v59 != 16)
  {
    v73 = 0;
    LODWORD(a15) = 0;
    HIDWORD(a16) = 0;
    HIDWORD(a13) = 1;
    goto LABEL_9;
  }

  HIDWORD(a13) = 0;
  v68 = a59;
  v73 = *(&off_284082B80 + a59 - 831) - 4;
  v69 = 18;
LABEL_7:
  HIDWORD(a16) = v69;
  LODWORD(a15) = 1;
LABEL_10:
  v70 = 143681137 * ((((2 * (v63 - 192)) | 0x34DED022) - (v63 - 192) + 1703974895) ^ 0xFB37E3C1);
  v71 = (v63 - 192);
  *v71 = 0;
  v71[6] = a46;
  v71[7] = 0;
  v71[5] = &STACK[0x374];
  v71[3] = a51;
  v71[2] = a47;
  v71[8] = a45;
  *(v63 - 180) = v70 + (a50 ^ 0xFB5AA7DB) + ((2 * a50) & 0xF6B54FB6) + 2113363959;
  *(v63 - 160) = (v68 - 377) ^ v70;
  (*(v62 + 8 * a40))(v63 - 192);
  return (*(v62 + 8 * (((*(v63 - 184) == -1541908459) * a39) ^ v61)))(980, a2, 1069, 3115098608, HIDWORD(a35), 13, 822579113, 1130178988, a9, a10, a11, a12, a13, v73, a15, a16, v74, *(&v74 + 1), v75, *(&v75 + 1), v76, *(&v76 + 1), a23, a24, v77, *(&v77 + 1), a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a2);
}

uint64_t sub_22D35FB44()
{
  *(v4 + 304) = v2;
  *(v4 + 96) = v1;
  return (*(v3 + 8 * (((v1 == 0) * (((v0 ^ 0x5BE) + 28) ^ (v0 - 628))) ^ v0)))();
}

uint64_t sub_22D35FBF0@<X0>(uint64_t a1@<X8>)
{
  v4.i64[0] = 0x6060606060606060;
  v4.i64[1] = 0x6060606060606060;
  v5.i64[0] = 0xB0B0B0B0B0B0B0B0;
  v5.i64[1] = 0xB0B0B0B0B0B0B0B0;
  *(a1 + 4) = vaddq_s8(vsubq_s8(*(v1 + 4), vandq_s8(vaddq_s8(*(v1 + 4), *(v1 + 4)), v4)), v5);
  return (*(v3 + 8 * (v2 ^ 0x68F)))();
}

uint64_t sub_22D35FC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, int a17)
{
  a16 = (843532609 * ((-1477538731 - (&a16 | 0xA7EE8C55) + (&a16 | 0x581173AA)) ^ 0x45C272F)) ^ 0xDFABAF92;
  v18 = (*(v17 + 18752))(&a16);
  return (*(v17 + 8 * ((1157 * (a17 == -1541908459)) ^ 0x327u)))(v18);
}

uint64_t sub_22D35FD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, unsigned int a13, int a14, unsigned int a15, int a16, char *a17)
{
  v20 = 1037613739 * (((&a12 | 0x8EBA7FFA) - (&a12 & 0x8EBA7FFA)) ^ 0x5FB85285);
  a14 = (v19 - 2013068611) ^ v20;
  a15 = v20 - 43688278;
  a12 = a10;
  a17 = &a11;
  a13 = v20 ^ 0xA2D26430;
  v21 = (*(v18 + 8 * (v19 + 371)))(&a12);
  return (*(v18 + 8 * ((42 * (a16 == ((v19 - 1421) ^ (v17 + 650)))) ^ v19)))(v21);
}

uint64_t sub_22D35FEA0@<X0>(uint64_t a1@<X8>)
{
  v8 = (v4 ^ v5) + v6;
  *(*(v1 + 8) + 4 * v8) = *(*(a1 + 8) + 4 * v8);
  return (*(v2 + 8 * (((v8 == 0) * v7) ^ v3)))();
}

uint64_t sub_22D35FED0(uint64_t a1)
{
  v1 = 2066391179 * ((-2 - ((a1 | 0xF47B8614) + (~a1 | 0xB8479EB))) ^ 0xA4A3FBF3);
  v2 = *a1 - v1;
  v3 = 1578671739 * (*(a1 + 4) ^ v1);
  v5 = v3 + 2107209040;
  v4 = v3 + 2107209040 < 0;
  v6 = -2107209040 - v3;
  if (!v4)
  {
    v6 = v5;
  }

  v7 = *(*(a1 + 16) + 4);
  v8 = v7 - 352135382;
  v4 = v7 - 352135382 < 0;
  v9 = 352135382 - v7;
  if (!v4)
  {
    v9 = v8;
  }

  return (*(*(&off_284082B80 + v2 - 825) + ((227 * ((v6 >> 5) < v9)) ^ v2) - 1))();
}

uint64_t sub_22D360014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, unsigned int a20, int a21, unsigned int a22, int a23, char *a24)
{
  if (a10 == (v26 ^ 0xDE76C97))
  {
    v28 = -43688278;
  }

  else
  {
    v28 = -43688279;
  }

  v29 = ((((2 * &a19) | 0x4F85D4E8) - &a19 + 1480398220) ^ 0x76C0C70B) * v24;
  a21 = (v26 - 2013067059) ^ v29;
  a22 = v28 + v29;
  a24 = &a18;
  a20 = v29 ^ 0xD0D9EC91;
  a19 = a17;
  v30 = (*(v27 + 8 * (v26 ^ 0xB8D)))(&a19);
  return (*(v27 + 8 * (((a23 == v25 + ((v26 - 38) | 0x21C) - 1021) * (v26 + 675)) ^ v26)))(v30);
}

uint64_t sub_22D3600EC(void *a1)
{
  v3 = v1 | 0x100;
  v4 = 163 * (((v1 | 0x100) + 1983101606) & 0x89CC476F ^ 0x728);
  if (*a1)
  {
    v5 = (a1[3] | a1[1]) == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  return (*(v2 + 8 * ((v6 * (v4 - 1078)) ^ v3)))();
}

void sub_22D360150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v14 = *(v12 + 8);
  **(v12 + 24) = v13;
  *v14 = a12;
  JUMPOUT(0x22D353B94);
}

void sub_22D360248(uint64_t a1)
{
  v1 = 1082434553 * (((a1 | 0x1AAF5C21) - a1 + (a1 & 0xE550A3DE)) ^ 0x81E8AAAB);
  v2 = **(a1 + 40) + 1214268966;
  v3 = *(a1 + 12) - v1 + 281529568;
  v4 = v2 < 0x56D98178;
  v5 = v2 > v3;
  if (v3 < 0x56D98178 != v4)
  {
    v5 = v4;
  }

  __asm { BRAA            X10, X17 }
}

uint64_t sub_22D360358@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char *a14, char *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  v28 = a1 ^ 0xDB7;
  v29 = ((-1210807988 - ((v27 - 144) | 0xB7D4894C) + ((v27 - 144) | 0x482B76B3)) ^ 0xC586145F) * v26;
  *(v25 + 16) = v24;
  *(v25 + 24) = &a12;
  *(v27 - 144) = (a1 - 1185) ^ v29;
  *(v27 - 136) = v29 + v21 + (a1 ^ 0xD3FB0DEB);
  (*(v22 + 8 * (a1 ^ 0xC5E)))(v27 - 144);
  a14 = &a21;
  a15 = &a17;
  *(v27 - 136) = v23;
  *(v27 - 128) = &a14;
  *(v27 - 144) = v28 - ((1253175943 - ((v27 - 144) | 0x4AB1F287) + ((v27 - 144) | 0xB54E0D78)) ^ 0x38E36F94) * v26 - 328;
  (*(v22 + 8 * (v28 ^ 0x1E8)))(v27 - 144);
  *(v27 - 112) = v23;
  *(v27 - 104) = &a10;
  *(v27 - 144) = (v28 - 2059) ^ (1361651671 * (((v27 - 144) & 0x4B5CFAA3 | ~((v27 - 144) | 0x4B5CFAA3)) ^ 0x6781F5D0));
  *(v27 - 136) = &a14;
  *(v27 - 128) = &a12;
  *(v27 - 120) = a6;
  v30 = (*(v22 + 8 * (v28 + 247)))(v27 - 144);
  return (*(v22 + 8 * (((2 * (v28 ^ 0x9A1) - 746) * (a5 == 0)) ^ v28)))(v30);
}

uint64_t sub_22D360580(int a1)
{
  v11 = v2 + v5 + (*(*(v9 + 8) + 4 * v3) ^ v7);
  *(*(v1 + 8) + 4 * v3) = v11 + v7 - (v8 & (2 * v11));
  return (*(v6 + 8 * (((v3 + 1 == v10) * a1) ^ v4)))();
}

uint64_t sub_22D360780@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, unsigned int a6@<W8>)
{
  v12 = a1 < a3;
  *(a2 + a6) = *(a5 + v6) - ((*(a5 + v6) << (v10 ^ a4)) & 0x60) - 80;
  if (v12 == v6 + 1 > v9)
  {
    v12 = v8 + v6 + 25 < a1;
  }

  return (*(v11 + 8 * ((14 * v12) ^ v7)))();
}

void sub_22D36083C(int a1@<W8>)
{
  v4 = v3 + 310;
  if (v2 < 0)
  {
    v2 = -v2;
  }

  **(v1 + 8) = v2 - ((v4 ^ 0x8B2F9A0E) & (2 * v2)) - 979906588;
  *(v1 + 4) = a1 + 1;
}

uint64_t sub_22D3608F8()
{
  if ((v1 - 1) >> 32)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((6 * (v2 ^ 0x8FB)) ^ 0xFFFFFA0A) - v0 >= v1 - 1;
  }

  v5 = !v4;
  return (*(v3 + 8 * ((28 * (((v2 ^ 0xED1 ^ v5) & 1) == 0)) ^ v2)))();
}

uint64_t sub_22D3609B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, _BYTE *a15)
{
  v18 = (*(v17 + 200) + 31);
  a15[12] = -80;
  a15[13] = -80;
  a15[14] = -80;
  a15[15] = -79;
  *(v18 - 15) ^= *a15 ^ 0xB0;
  *(v18 - 14) ^= a15[1] ^ 0xB0;
  *(v18 - 13) ^= a15[2] ^ 0xB0;
  *(v18 - 12) ^= a15[3] ^ 0xB0;
  *(v18 - 11) ^= a15[4] ^ 0xB0;
  *(v18 - 10) ^= a15[5] ^ 0xB0;
  *(v18 - 9) ^= a15[6] ^ 0xB0;
  *(v18 - 8) ^= a15[7] ^ 0xB0;
  *(v18 - 7) ^= a15[8] ^ 0xB0;
  *(v18 - 6) ^= a15[9] ^ 0xB0;
  *(v18 - 5) ^= a15[10] ^ 0xB0;
  *(v18 - 4) ^= a15[11] ^ 0xB0;
  *(v18 - 3) ^= a15[12] ^ 0xB0;
  *(v18 - 2) ^= a15[13] ^ 0xB0;
  *(v18 - 1) ^= a15[14] ^ 0xB0;
  *v18 ^= a15[15] ^ 0xB0;
  return (*(v16 + 8 * ((v15 + 466) ^ 0x26)))(50, 198, 13, 176);
}

uint64_t sub_22D360CB4@<X0>(uint64_t a1@<X8>)
{
  v5 = v3 - 1;
  *(a1 + v5) = *(v1 + v5) - ((2 * *(v1 + v5)) & 0x60) - 80;
  return (*(v4 + 8 * (((v5 != 0) * (((v2 - 2108724390) & 0x7DB08FC7) - 500)) | v2)))();
}

uint64_t sub_22D360D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, char a28)
{
  LOBYTE(STACK[0x240]) = *(&a28 + v28);
  v31 = v28 + ((v29 + 352) ^ 0x306u) != 45;
  return (*(v30 + 8 * (((8 * v31) | (16 * v31)) ^ (v29 + 216))))();
}

uint64_t sub_22D360D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14)
{
  *(v17 - 128) = &a14;
  *(v17 - 120) = &a12;
  *(v17 - 136) = v14 - ((((2 * (v17 - 136)) | 0xD277FF88) - (v17 - 136) - 1765539780) ^ 0xFBEDC060) * v16 + 1505;
  v18 = (*(v15 + 8 * (v14 ^ 0xBA2)))(v17 - 136);
  return (*(v15 + 8 * (((*(v17 - 112) > 0x32CF6B79u) * ((v14 + 322) ^ 0x373)) ^ v14)))(v18);
}

uint64_t sub_22D360E2C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, _BYTE *a5@<X8>)
{
  v9 = ((a1 ^ 0xDCD8441BAFA57541) - ((2 * (a1 ^ 0xDCD8441BAFA57541)) & 0x23C62B9B93FFF6ACLL) + (v7 ^ 0xFA8E26DF) + 0x11E315CCCF71D7E2) ^ a2;
  v10 = v9 ^ 0xD7CAD28716A448B7;
  if (((a1 ^ 0xDCD8441BAFA57541) & 0x82EE1687ACCADB62) != 0)
  {
    v11 = a1 ^ 0xDCD8441BAFA57541;
  }

  else
  {
    v11 = v9 ^ 0xD7CAD28716A448B7;
  }

  v12 = v11 & (a2 ^ 0x39D638B520A44C1ELL);
  v13 = a3 ^ (a4 | (v142 << 32));
  v14 = v5 ^ v13 ^ 0xDA6E18EAF54B1DA5;
  v15 = ((a1 ^ 0xDCD8441BAFA57541) + 0x7377F8F532ABA474 - 2 * ((a1 ^ 0xDCD8441BAFA57541) & 0x7377F8F532ABA47CLL ^ a1 & 8)) ^ v6;
  v16 = v12 ^ v14 ^ 0x79C774A2CC18EB62;
  if (v15 == 0x68040451F630332FLL)
  {
    v16 = v14 ^ 0x6388B5D33E7149DLL;
  }

  v17 = (v12 ^ v14 ^ 0xE9EA0EF2303EE4AELL) + 2 * (v12 & (v14 ^ 0x69EA0EF2303EE4AELL)) - 2 * ((v16 ^ 0x6FD285AF03D9F033) & v12);
  v18 = (v14 ^ 0x1615F10DCFC11B51) & (a2 ^ 0x7731B664C0DC1318);
  v19 = v14 & 0xB118712E1F87A0F9;
  v20 = v14 & 0x11E82C4A714779C8 ^ (v14 ^ 0xE9EA0EF2303EE4AELL) & (v13 ^ 0x3AB047C7324946E9) ^ 0xF9080E1AF7E6CFDFLL ^ v15;
  v21 = v19 ^ v13 ^ 0xDA6E18EAF54B1DA5 ^ v18 ^ v20;
  *(&v22 + 1) = v21 ^ 0xEFC8CD1E17D467E6;
  *&v22 = v21;
  v23 = v21 ^ 0xEFC8CD1E17D467E6 ^ __ROR8__(v21 ^ 0xEFC8CD1E17D467E6, 61) ^ (v22 >> 39);
  v24 = __ROR8__(__ROR8__(v23 ^ 0x10AE063071C86562 ^ (v17 >> 6) ^ (v17 >> 1) ^ v17 ^ 0xA91AB11240AC157BLL ^ ((v17 ^ 0xA91AB11240AC157BLL) << 58) ^ ((v17 ^ 0xA91AB11240AC157BLL) << 63) ^ 0x6E5C927F4F3F1551, 31) ^ 0xF937A9D4C1333016, 33);
  v25 = a2 ^ 0xA3A276371A1A271FLL ^ ((v9 ^ 0x28352D78E95BB748) & (v15 ^ 0xBC10571818E4C006) | v10 & 0xD4145349EED4F329);
  v26 = (-v17 ^ (v25 - (v17 ^ v25)) ^ 0x2058CF7740B80960 ^ (v17 - ((2 * v17) & 0x40B19EEE817012C0) + 0x2058CF7740B80960)) + v25;
  v27 = v26 ^ __ROR8__(v26, 17) ^ (v26 << 54) ^ (v26 >> 10);
  v28 = v13 & 0x89EA823CEF7FEBD6 ^ v10 ^ (v15 ^ 0x1E117992E6B02706) & (v13 ^ 0xD4A79472BCF1C0DELL) ^ 0xE208DA58288AC146;
  *&v22 = __ROR8__(__ROR8__(v28, 48) ^ 0x540085A5140F79C9, 16);
  v29 = v22 ^ 0x238A2CC227BF1224 ^ ((v22 ^ 0x238A2CC227BF1224) << 23) ^ (((((v22 ^ 0x238A2CC227BF1224) >> 1) & 3) << 58) | 0x19004000020540) ^ ((v22 >> 41) ^ (v22 >> 7) ^ 0xF238EFC453016405) & (((v22 ^ 0x238A2CC227BF1224) << 57) ^ 0x61FFFFFFFFFFFFFFLL);
  v30 = (v27 & 0x235F8A157401A537 | (v29 ^ 0xF14D83FCCBD80D85) & ~v27) ^ v24;
  v29 ^= 0x364A0336D75BCC98uLL;
  v31 = v27 ^ 0x3A4E2EF8F5B301BDLL ^ v29;
  v32 = v28 ^ v20;
  *(&v22 + 1) = v32 ^ 0x3AFA2CD8E49D4E37;
  *&v22 = v32;
  v33 = v32 ^ 0x3AFA2CD8E49D4E37 ^ __ROR8__(v32 ^ 0x3AFA2CD8E49D4E37, 28) ^ (v22 >> 19) ^ v29;
  *(&v22 + 1) = v31 & 0x8A27570872F0BEFLL ^ v27 ^ 0x3A4E2EF8F5B301BDLL ^ v30 ^ (v31 ^ 0x21E9DBD862CE9A68) & (v33 ^ 0xDC5BADD32965C9D7) ^ 0xB7344653495CF0D6;
  *&v22 = v31 & 0x8A27570872F0BEFLL ^ v27 ^ 0x3A4E2EF8F5B301BDLL ^ v30 ^ (v31 ^ 0x21E9DBD862CE9A68) & (v33 ^ 0xDC5BADD32965C9D7);
  v34 = v22 >> 17;
  *&v22 = __ROR8__(*(&v22 + 1), 10);
  v35 = ((v34 ^ v22 ^ 0x349C7BAB88192823) - ((2 * (v34 ^ v22 ^ 0x349C7BAB88192823)) & 0xD8BAC6436DCADC1CLL) + 0x6C5D6321B6E56E0ELL) ^ *(&v22 + 1);
  v36 = v33 & 0x79E0B3312B1244A1 ^ (v33 ^ 0x2B06275C51B53DC7) & (v23 ^ 0x372565E58093F8A8) ^ 0xF85754717ACECECELL ^ v31;
  v37 = (v36 & 0xF2F0F93CF1701AFDLL ^ 0xC20960B909893A21) & (v36 & 0xD0F06C30E8FE502 ^ 0xFEF8F9FFFF70DBFDLL) | v36 & 0xD0606420606C502;
  v38 = __ROR8__(v37 ^ 0x9BB12656A1A286DFLL, 7);
  *&v22 = __ROR8__(v37 ^ 0x9BB12656A1A286DFLL, 41);
  v39 = ((v38 ^ v22 ^ 0x6F7E66F19279FA98) - ((2 * (v38 ^ v22 ^ 0x6F7E66F19279FA98)) & 0x998052A39F9A8CC6) - 0x333FD6AE3032B99DLL) ^ v37 ^ 0x9BB12656A1A286DFLL;
  v40 = v23 & 0x2C95AA8403D4C398 ^ v33 ^ 0xC215C9E33D2E51E4 ^ (v24 ^ 0xECC2DFD0A2992314) & (v23 ^ 0xB13A292B547E43F6);
  v41 = v37 ^ v40 ^ ((v37 ^ v40 ^ 0xC1571DA04B8AF7EFLL) >> 19) ^ ((v37 ^ v40 ^ 0xC1571DA04B8AF7EFLL) >> 28) ^ ((v37 ^ v40 ^ 0xD635C19B685E441FLL) << 36) ^ ((v37 ^ v40 ^ 0xD635C19B685E441FLL) << 45) ^ 0x58A23C23C10D4F28;
  *(&v22 + 1) = v40 ^ v23 ^ 0x10AE063071C86562;
  *&v22 = v40 ^ v23;
  v42 = (v24 ^ 0x3FA88AAB5EB21F73) & (v27 ^ 0xF2372A4C76D4D9E0) ^ v24 & 0xF2372A4C76D4D9E0 ^ __ROR8__((v22 >> 54) ^ 0xED3C8B5B4BDCA4B0, 10);
  LOBYTE(v19) = *(v8 + ((v42 >> 61) ^ 0x56));
  v43 = (v19 ^ ((v19 ^ 0x3C) - ((2 * (v19 ^ 0x3C) + 2) & 0x34) - 101) ^ 0x59 ^ ((v19 ^ (57 - (v19 ^ 0xFA)) ^ 0xBE ^ ((v19 ^ 0x3C) - ((2 * (v19 ^ 0x3C) + 2) & 4) - 125)) + 1)) - 62;
  v44 = v43 ^ (v42 >> 39) ^ v42 ^ 0x7B3BBAFE999CAB48 ^ (8 * (v42 ^ 0x7B3BBAFE999CAB48)) ^ ((v42 ^ 0x7B3BBAFE999CAB48) << 25);
  v45 = (v39 - ((2 * v39) & 0xBB4C9E442C174E06) - 0x2259B0DDE9F458FDLL) ^ v41;
  v46 = v35 ^ 0x147D2CDEEA4;
  v47 = v35 ^ 0x147D2CDEEA4 ^ v39;
  v48 = (~(2 * v45) + v45) & (v44 ^ 0x54998BD6E80763ABLL) ^ v47;
  v49 = v8;
  v50 = ((v48 ^ 0x26974B18501E2B14uLL) >> 7) ^ ((v48 ^ 0x26974B18501E2B14uLL) >> 41) ^ ((v48 ^ 0x26974B18501E2B14) << 23) ^ (0x200000000000001 * (v48 ^ 0x26974B18501E2B14) - (((v48 ^ 0x26974B18501E2B14) << 58) & (2 * (v48 ^ 0x26974B18501E2B14))));
  v51 = v30 ^ (v30 << 58);
  v52 = v51 ^ 0x884D88DE7C138581;
  v53 = (v30 >> 1) & 0x100000000000;
  if ((v53 & v51) != 0)
  {
    v54 = -v53;
  }

  else
  {
    v54 = (v30 >> 1) & 0x100000000000;
  }

  v55 = ((v30 >> 6) | (v30 << 63)) ^ (v30 >> 1) & 0xFFFFEFFFFFFFFFFFLL ^ (v54 + v52);
  v56 = ((v35 ^ 0xFFFFFEB82D32115BLL) & v39) - ((2 * ((v35 ^ 0xFFFFFEB82D32115BLL) & v39)) & 0x55E5367C2D4C601ALL) - 0x550D64C1E959CFF3;
  v57 = (v46 - ((2 * v46) & 0xBB4C9E442C174E06) - 0x2259B0DDE9F458FDLL) ^ v41;
  if (!v43)
  {
    v57 = v45;
  }

  v58 = v57 & ~v47;
  v59 = v56 ^ v44 ^ v55;
  v60 = v35 ^ v58 ^ 0x490C4F8B3BA5FAE2 ^ v59;
  v61 = __ROR8__(v60, 10);
  v62 = (v60 ^ v61 ^ (v60 >> 17)) + (v60 << 47) - 2 * ((v60 ^ v61 ^ (v60 >> 17)) & (v60 << 47));
  v63 = v59 ^ 0x43290848F410677CLL;
  v64 = (v59 ^ 0x43290848F410677CLL) << 58;
  v65 = v44 & 0x84DCFDD63EA36921 ^ 0x8044740016A00800 ^ (v44 ^ 0xAB66742917F89C54) & (v55 ^ 0x40CB0F9A795AE5F7);
  v66 = (v45 ^ -v45 ^ (v65 - (v65 ^ v45))) + v65;
  v67 = __ROR8__(__ROR8__(__ROR8__(__ROR8__(v44 ^ (((v44 ^ v55 ^ 0x6F71866550011082) & v46) - ((2 * ((v44 ^ v55 ^ 0x6F71866550011082) & v46)) & 0xC613CA110B11AC12) - 0x1CF61AF77A7729F7) ^ v66 ^ 0x85E896E693CC671ELL, 21) ^ 0x8851649EEBDF1E19, 24) ^ 0x52EBDEC6E9CFA14CLL, 40) ^ 0xC6E9CFA14C52EBDELL, 43);
  v68 = v67 ^ 0x93DD7BE3C3310A2CLL ^ ((v67 ^ 0x93DD7BE3C3310A2CLL) >> 39) ^ (((8 * (v67 ^ 0x93DD7BE3C3310A2CLL)) ^ ((v67 ^ 0x93DD7BE3C3310A2CLL) << 25)) & 0xFFFFFFFFFFFFFFF8 | ((v67 ^ 0x93DD7BE3C3310A2CLL) >> 61));
  v69 = (((((2 * (0x34CDB152F4A04500 - v64)) & 0x9000000000000200) + ((0x34CDB152F4A04500 - v64) ^ 0xCB324EAD0B5FBB00)) ^ v64 ^ ((v59 ^ 0x43290848F410677CLL) - ((v64 & 0xF800000000000000 ^ (v59 ^ 0x43290848F410677CLL) & 0xF9BFE541A2368FBELL | (v59 ^ 0x43290848F410677CLL) & 0x6401ABE5DC97041) ^ v64 & 0x400000000000000))) + (v59 ^ 0x43290848F410677CLL)) ^ (v59 << 63) ^ __ROR8__(((v59 ^ 0x43290848F410677CLL) >> 2) & 0x3FFFFFFFFFFFFFF0 ^ __ROR8__(v68, 60) ^ 0xECB19F7A9D6DC488, 4) ^ 0x8ECB19F7A9D6DC48;
  v70 = v69 & 0xA8F512753D8F931ELL ^ (v63 >> 1) & 0x28F512753D8F931ELL | (v69 ^ (v63 >> 1)) & 0x570AED8AC2706CE1;
  v71 = v70 ^ v50 & ~v62;
  *(&v72 + 1) = v71;
  *&v72 = v71 ^ 0xD3DA1E3360BF843ALL;
  v73 = ((v72 >> 1) ^ v71 ^ 0xD3DA1E3360BF843ALL) & 0x8359E977A142CE31 ^ ((v71 ^ 0xD3DA1E3360BF843ALL) << 58) & 0x8000000000000000 | ((v72 >> 1) ^ v71 ^ 0xD3DA1E3360BF843ALL) & 0x7CA616885EBD31CELL ^ ((v71 ^ 0xD3DA1E3360BF843ALL) << 58) & 0x7C00000000000000;
  *(&v72 + 1) = v71;
  *&v72 = v71 ^ 0xD3DA1E3360BF843ALL;
  v74 = v48 ^ 0x6E04C15915AB860ALL ^ v66 ^ __ROR8__(v48 ^ 0x6E04C15915AB860ALL ^ v66, 19) ^ ((v48 ^ 0x6E04C15915AB860ALL ^ v66) << 36) ^ ((v48 ^ 0x6E04C15915AB860ALL ^ v66) >> 28) ^ v50;
  v75 = ((v70 ^ v68) + (v70 | ~v68) + 1) ^ v74;
  v76 = v68 ^ v62 & ~v70 ^ 0x425764BB5877DA25 ^ v75;
  v77 = v76 ^ (v76 >> 61) ^ (v76 >> 39) ^ (8 * v76) ^ (v76 << 25);
  v78 = v62 ^ v50;
  v79 = v68 & ~v74 ^ v62 ^ v50;
  v80 = v79 ^ 0xFD;
  v81 = v79 ^ 0x70C7A8D3F3643DFDLL ^ __ROR8__(v79 ^ 0x70C7A8D3F3643DFDLL, 7) ^ ((v79 ^ 0x70C7A8D3F3643DFDLL) >> 41) ^ ((v79 ^ 0x70C7A8D3F3643DFDLL) << 23);
  v82 = v79 ^ 0x97F6A7E5F6E8F58ALL ^ v75 ^ __ROR8__(v79 ^ 0x97F6A7E5F6E8F58ALL ^ v75, 19) ^ ((v79 ^ 0x97F6A7E5F6E8F58ALL ^ v75) << 36) ^ ((v79 ^ 0x97F6A7E5F6E8F58ALL ^ v75) >> 28);
  *&v72 = __ROR8__((v72 >> 9) & 0xE07FFFFFFFFFFFFFLL ^ __ROR8__(v77 ^ v73, 3) ^ 0x55413C453664FDCDLL, 61);
  v83 = ((v82 | v81) ^ v81 & v82) & 0x2D23D578E308995FLL | (v82 ^ v81) & 0xD2DC2A871CF766A0;
  v84 = v74 & ~v78;
  v85 = (v72 ^ 0xAA09E229B327EE6ALL) & ~v77 ^ v83;
  v86 = v62 ^ 0x44C9D571A5C4A51CLL ^ v84 ^ v71 ^ ((v62 ^ 0x44C9D571A5C4A51CLL ^ v84 ^ v71) >> 10) ^ ((v62 ^ 0x44C9D571A5C4A51CLL ^ v84 ^ v71) << 47) ^ ((v62 ^ 0x44C9D571A5C4A51CLL ^ v84 ^ v71) << 54) ^ ((v62 ^ 0x44C9D571A5C4A51CLL ^ v84 ^ v71) >> 17);
  v87 = ((v85 ^ v77) + ((v72 ^ 0x55F61DD64CD81195) & v86) - 2 * ((v85 ^ v77) & (v72 ^ 0x55F61DD64CD81195) & v86)) ^ 0x6005BE354A5BB0B2;
  v88 = v87 >> (v27 & 0x3D) >> (v27 & 0x3D ^ 0x3D);
  v89 = (8 * v87) ^ (v87 >> 39) ^ ((v87 ^ (v87 << 25)) & 0xF21553F3FD140018 ^ v88 & 0x18 | (v87 ^ (v87 << 25)) & 0xDEAAC0C02EBFFE7 ^ v88 & 0xE7);
  v90 = v77 & ~v83 ^ v86 ^ v81;
  v91 = v90 ^ 0x2DB5B6AF87F64351 ^ ((v90 ^ 0x2DB5B6AF87F64351) << 23) ^ ((v90 ^ 0x2DB5B6AF87F64351) >> 7) ^ (((v90 ^ 0x2DB5B6AF87F64351) >> 41) | ((v90 ^ 0x2DB5B6AF87F64351) << 57));
  v92 = v90 ^ 0x93C23431B76D41FLL ^ v85;
  v93 = (v92 ^ (v92 >> 28)) + (v92 >> 19) - 2 * ((v92 ^ (v92 >> 28)) & (v92 >> 19));
  v94 = v92 << 36;
  v95 = v93 ^ (v92 << 45);
  v96 = v83 & ~(v86 ^ v81);
  v97 = v95 ^ (v92 << 36);
  v98 = v72 ^ 0xAA09E229B327EE6ALL ^ v81 & ~v86;
  v99 = v97 ^ v91;
  v100 = v86 ^ 0xF374A001D380BDC2 ^ v96 ^ v98 ^ ((v86 ^ 0xF374A001D380BDC2 ^ v96 ^ v98) >> 10) ^ ((v86 ^ 0xF374A001D380BDC2 ^ v96 ^ v98) << 47) ^ ((v86 ^ 0xF374A001D380BDC2 ^ v96 ^ v98) << 54) ^ ((v86 ^ 0xF374A001D380BDC2 ^ v96 ^ v98) >> 17);
  v101 = v100 ^ v91;
  v102 = v89 & ~(v97 ^ v91) ^ v100 ^ v91;
  v103 = v98 ^ 0x6DC4FB0BD4FFFF44;
  *(&v72 + 1) = v98;
  *&v72 = v98 ^ 0x6DC4FB0BD4FFFF44;
  v104 = (v72 >> 1) ^ v98 ^ 0x6DC4FB0BD4FFFF44 ^ ((v98 ^ 0x6DC4FB0BD4FFFF44) << 58) ^ v89;
  v105 = v103 >> 6;
  v106 = v94 == v95;
  v107 = v104 + v105;
  if (!v106)
  {
    v105 = ~(v105 ^ v104);
  }

  v108 = v107 - 2 * (v105 & v104);
  v109 = v108 ^ (((~v100 | 0xFFFFFFFFEFFFFFFFLL) - (v100 & 0x4000000000)) ^ v100 & 0xFFFFFFBFEFFFFFFFLL) & v101;
  v110 = __ROR8__(((v99 << (v93 & 0x2B) << (v93 & 0x2B ^ 0x2B)) + (v99 >> 21)) ^ __ROR8__(v108 & ~v89, 21) ^ 0x6D12C2B6EED373A6, 43);
  v111 = v100 & ~v108 ^ v89 ^ v110;
  v112 = v102 ^ 0x5035F38BF1002A3ALL ^ v110;
  v113 = v112 ^ (v112 >> 19);
  v114 = v113 & 0xD99EEE0927173347 ^ (v112 << 45) & 0xD99EE00000000000 | v113 & 0x266111F6D8E8CCB8 ^ (v112 << 45) & 0x2661000000000000;
  v115 = (((v112 << 45) ^ (0xFFFFE00000000000 * v112) ^ (v114 + v113 - 2 * v114)) + v113) ^ (v112 >> 28);
  v116 = v115 & 0x78E134634F73AA70 ^ (v112 << 36) & 0x78E1346000000000 | v115 & 0x871ECB9CB08C558FLL ^ (v112 << 36) & 0x871ECB9000000000;
  v117 = v111 ^ 0xE013161F571CC4C5 ^ ((v111 ^ 0xE013161F571CC4C5) >> 39) ^ (8 * (v111 ^ 0xE013161F571CC4C5));
  v118 = v115 & 8;
  v119 = v116 + 0x7377F8F532ABA474 - 2 * (v116 & 0x7377F8F532ABA47CLL ^ v118);
  a5[65] = v119 ^ 0x74;
  LOBYTE(v118) = *(v139 + ((69 * ((v119 ^ 0x7377F8F532ABA474uLL) >> v118 >> (v118 ^ 8u))) ^ 0x3DLL));
  v120 = v117 ^ (((v111 ^ 0xE013161F571CC4C5) >> 61) | (v111 << 25));
  LOBYTE(v118) = ((((v118 - 18) ^ 0x57) + v118 - 18 - 2 * ((v118 - 18) ^ 0x57)) ^ 0xFE) + v118 - 18;
  a5[54] = ((v117 ^ (((v111 ^ 0xE013161F571CC4C5) >> 61) | (v111 << 25))) >> 24) ^ 0x8A;
  a5[28] = BYTE2(v119) ^ 0xAB;
  a5[41] = (v118 >> 2) | (v118 << 6);
  v121 = (v119 ^ 0x7377F8F532ABA474uLL) >> (v80 & 0x20) >> (v80 & 0x20 ^ 0x20u);
  a5[35] = BYTE1(v117);
  a5[21] = BYTE2(v117);
  v122 = v97 ^ v100;
  if (v101 == -1)
  {
    v123 = 0;
  }

  else
  {
    v123 = v122;
  }

  a5[58] = v121;
  a5[17] = BYTE4(v120) ^ 0x89;
  a5[5] = BYTE3(v119) ^ 0x32;
  a5[47] = BYTE5(v119) ^ 0xF8;
  v124 = v109 - ((2 * v109) & 0x5A47EBDAAC1EB792);
  a5[14] = HIBYTE(v119) ^ 0x73;
  a5[48] = BYTE6(v119) ^ 0x77;
  a5[16] = (v120 ^ 0x3EAE39898A000000) >> (v111 & 0x28) >> (v111 & 0x28 ^ 0x28);
  v125 = v124 - 0x5BDA183C59819C5ELL;
  v126 = 0x88FE0E29AF90F827;
  if (v124 + 0x2D23F5ED560F5BC9 < 0x88FE0E29AF90F827)
  {
    v125 = v124 + 0x2D23F5ED560F5BC9;
    v126 = 0;
  }

  if (v125)
  {
    v127 = v124 + 0x2D23F5ED560F5BC9;
  }

  else
  {
    v127 = v126;
  }

  *(&v128 + 1) = v127;
  *&v128 = v124 + 0x2D23F5ED560F5BC9;
  v129 = (v128 >> 1) ^ (v124 + 0x2D23F5ED560F5BC9);
  a5[6] = v120;
  v130 = *(v49 + (BYTE6(v120) ^ 0xF9));
  v131 = v129 ^ (v127 << 58) ^ (v127 >> 6);
  a5[10] = BYTE1(v131);
  v132 = v100 ^ v123 & v99 ^ 0x29E1AB0124FF49E7 ^ v109;
  *&v128 = __ROR8__(v132, 10);
  v133 = (v132 ^ v128 ^ (v132 << 47)) + (v132 >> 17) - 2 * ((v132 ^ v128 ^ (v132 << 47)) & (v132 >> 17));
  a5[18] = BYTE4(v131);
  a5[25] = BYTE2(v131);
  a5[42] = HIBYTE(v120) ^ 0x3E;
  a5[12] = BYTE5(v131);
  a5[23] = BYTE6(v131);
  a5[44] = v131;
  a5[24] = BYTE3(v131);
  a5[30] = (v130 ^ 0xFA) - 119;
  a5[62] = HIBYTE(v131);
  a5[19] = (v132 ^ v128) + (v132 >> 17) - 2 * ((v132 ^ v128) & (v132 >> 17));
  v134 = *(v141 + ((((v132 ^ v128) + (v132 >> 17) - 2 * ((v132 ^ v128) & (v132 >> 17))) >> 8) ^ 0x27) + 279);
  a5[8] = ((v132 ^ v128) + (v132 >> 17) - 2 * ((v132 ^ v128) & (v132 >> 17))) >> 24;
  a5[33] = ((v132 ^ v128) + (v132 >> 17) - 2 * ((v132 ^ v128) & (v132 >> 17))) >> 16;
  a5[4] = (v134 ^ BYTE1(v133) ^ 0x2D ^ ((BYTE1(v133) ^ 0x2D) + 72) ^ 0x41) + 15;
  v135 = v102 ^ __ROR8__(v102 ^ 0x4734313A1F2B2857, 41) ^ ((v102 ^ 0x4734313A1F2B2857) >> 7);
  LODWORD(v129) = *(v140 + (((v133 >> 28) & 0xF0 | (v133 >> 36) & 0xF) ^ 0x5C));
  a5[46] = HIBYTE(v133);
  a5[43] = BYTE6(v133);
  a5[38] = BYTE5(v133);
  a5[31] = ((v129 >> 5) | (8 * v129)) ^ 0xC1;
  result = 58;
  LOBYTE(v133) = *(v49 + ((((((4 * v135) | (v135 >> 6)) ^ 0xA) >> 2) | ((((4 * v135) | (v135 >> 6)) ^ 0xA) << 6)) ^ 0x82));
  a5[55] = BYTE4(v135) ^ 0x3A;
  a5[34] = BYTE3(v135) ^ 0x1F;
  a5[32] = BYTE1(v135) ^ 0x28;
  a5[15] = (v133 ^ 0xFA) - 119;
  v137 = v135 ^ ((v102 ^ 0x4734313A1F2B2857) << 57);
  a5[7] = (v137 ^ 0x4734313A1F2B2857uLL) >> (v31 & 0x10) >> (v31 & 0x10 ^ 0x10);
  a5[61] = BYTE5(v135) ^ 0x31;
  a5[56] = (*(v49 + (BYTE6(v135) ^ 0x63)) ^ 0xFA) - 119;
  a5[51] = HIBYTE(v137) ^ 0x47;
  *v138 = v142 + 1;
  return result;
}

uint64_t sub_22D3622C4(uint64_t a1, uint64_t a2)
{
  v2 = qword_27D9FC2C8 - qword_27D9FC2A0 - &v7;
  qword_27D9FC2A0 = 1707045629 * (v2 - 0x1520B27A7613BCE5);
  qword_27D9FC2C8 = 1707045629 * (v2 ^ 0x1520B27A7613BCE5);
  v3 = *(a2 + 4);
  v4 = *(&off_284082B80 + ((-3 * ((-3 * (v2 + 27)) ^ 0xE5 ^ qword_27D9FC2C8)) ^ byte_22D5BA3E0[byte_22D5C6450[(-3 * ((-3 * (v2 + 27)) ^ 0xE5 ^ qword_27D9FC2C8))] ^ 0xE7]) + 29) - 8;
  if (v3 == 904558486)
  {
    __asm { BRAA            X15, X17 }
  }

  if (v3 == 904558493)
  {
    v5 = **(a2 + 8) - 9;
    __asm { BRAA            X1, X17 }
  }

  return 4294925278;
}

uint64_t sub_22D362614(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  *a1 = 0x4F4F4F4F4F4F4F4FLL;
  a1[1] = 0xB0B0B0B0B6B0B0A2;
  v56 = 1388665877 * ((((v55 - 192) | 0x33DC7BBB) + (~(v55 - 192) | 0xCC238444)) ^ 0xBE711956);
  *(v55 - 184) = (v52 + 1986157213) ^ v56;
  *(v51 + 128) = v54;
  *(v55 - 192) = v56 ^ 0xC2B70DED;
  (*(v53 + 8 * (v52 + 1439)))(v55 - 192);
  v57 = (*(v53 + 8 * (v52 ^ 0xD56)))(336, 0x100004077774924);
  STACK[0x2E8] = v57;
  return (*(v53 + 8 * (((v57 != 0) * (((v52 ^ 0x7AE) - 437) ^ 0x1C2)) ^ v52)))(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14, a1, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51);
}

uint64_t sub_22D362734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x3C4]) = 904558483;
  *(v66 + 448) = 0;
  LODWORD(a60) = 904558483;
  *(v66 + 104) = 0;
  return (*(v65 + 8 * (((((HIDWORD(a37) - 1815595328) & 0x6C37C7F9) + ((HIDWORD(a37) + 1138421438) & 0xBC250FFB) - 1335) * (a65 == 0)) ^ HIDWORD(a37))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t sub_22D3627B8()
{
  v5.i64[0] = 0xB0B0B0B0B0B0B0B0;
  v5.i64[1] = 0xB0B0B0B0B0B0B0B0;
  v6 = v0 + v2 - 1;
  v7 = veorq_s8(*(v1 + v2 - 1 - 31), v5);
  *(v6 - 15) = veorq_s8(*(v1 + v2 - 1 - 15), v5);
  *(v6 - 31) = v7;
  return (*(v4 + 8 * ((3507 * (((v3 + 1202) ^ 0x710) == (v2 & 0xFFFFFFE0))) ^ (v3 + 704))))();
}

uint64_t sub_22D362820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, int a59)
{
  v60 = *(a56 + 56);
  *(a56 + 56) = v60 + 1;
  return (*(v59 + 8 * ((((v60 - 1846535039) < 0xFFFFFFFA) * (a59 ^ 0x200)) | (a59 - 805))))();
}

uint64_t sub_22D3628C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v20 - 136) = v15 - ((((2 * (v20 - 136)) | 0x8F947330) - (v20 - 136) + 943048296) ^ 0x551C063C) * v17 + 1327;
  *(v20 - 128) = v18;
  *(v20 - 120) = &a15;
  v21 = (*(v16 + 8 * (v15 + 1712)))(v20 - 136);
  return (*(v16 + 8 * (((*(v20 - 112) > v19) * ((((v15 - 1078646806) & 0x404AD7D7) + 615) ^ 0x1D2)) ^ v15)))(v21);
}

uint64_t sub_22D362968()
{
  v4 = (v3 - 1564) | 0x24C;
  v5 = v2 > -1847205497;
  if (v5 == v0 - 652413534 < 1847205496)
  {
    v5 = v0 - 652413534 < v2 + v4 - 300278869;
  }

  return (*(v1 + 8 * ((1921 * v5) ^ v4)))(2447761799);
}

uint64_t sub_22D362AD4@<X0>(uint64_t a1@<X0>, int a2@<W5>, unint64_t a3@<X6>, int a4@<W7>, int a5@<W8>)
{
  v14 = ((29 * (a2 ^ 0xDB)) ^ (v5 - 613) ^ *(v11 + 4 * v8)) + (v7 ^ HIDWORD(a3));
  v15 = v14 - ((2 * v14) & 0x120B39E7ALL) + v12;
  *(v11 + 4 * a1) = v15 ^ v13;
  *(v11 + 4 * v8) = (v15 >> ((a2 ^ 0xDBu) + 9)) ^ a4;
  return (*(v10 + 8 * (a2 ^ ((v6 + 1 == a5) * v9))))();
}

uint64_t sub_22D362BAC()
{
  result = (*(v3 + 8 * (v0 + 2132)))(v2);
  *(v1 + 16) = 2140115752;
  return result;
}

uint64_t sub_22D362BE4@<X0>(int8x16_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int8x16_t *a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int8x16_t *a14)
{
  *a7 = veorq_s8(*a14, xmmword_22D5C6770);
  v16[69] += (v14 + 100395073) & 0xFA041542 ^ 0x162;
  v16[71] = a1;
  v16[70] = a1;
  return (*(v15 + 8 * (v14 ^ (126 * (a7 == a1)))))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_22D362DB0()
{
  v4 = v0 + 1;
  if (v2)
  {
    v5 = v4 == ((((v1 + 561384888) & 0xDE89EFEE) - 280) ^ 0x21ELL);
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  return (*(v3 + 8 * ((388 * v6) ^ v1)))();
}

uint64_t sub_22D362E08@<X0>(int a1@<W8>)
{
  v9 = v2 + 1;
  v10 = v1 < v3;
  *(*(v7 + 8) + 4 * v9) = *(*(v7 + 8) + 4 * (v9 + a1));
  if (v10 == v5 + v9 < v3)
  {
    v10 = v5 + v9 < v1;
  }

  return (*(v8 + 8 * ((v10 * v6) ^ v4)))();
}

void sub_22D362E10(uint64_t a1)
{
  v1 = *(a1 + 16) + 1037613739 * (a1 ^ 0xD1022D7F);
  __asm { BRAA            X8, X17 }
}

void sub_22D362ED8(int a1@<W8>)
{
  v3 = 28 * (v1 ^ 0x71B);
  v4 = *(v2 + 4);
  v5 = (v3 ^ 0x134) - a1;
  if (v4 + 1795348266 >= 0)
  {
    v5 = a1;
  }

  *(v2 + 4) = v5 + v4;
  JUMPOUT(0x22D362F40);
}

void sub_22D362FE8(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 36) - 843532609 * ((-2 - ((~a1 | 0xFFE5509D) + (a1 | 0x1AAF62))) ^ 0xA3A80418);
  v2 = 1785193651 * (v5 ^ 0x13DCEC20);
  v7 = v4;
  v8 = v2 ^ 0xA3CEBA4D;
  v6 = v1 + v2 - 562358865;
  v3 = *(&off_284082B80 + v1 + 46) - 8;
  (*&v3[8 * (v1 ^ 0x95B)])(v5);
  __asm { BRAA            X13, X17 }
}

uint64_t sub_22D363204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v22 = ((v21 - 128) ^ 0xD1022D7F) * v19;
  *(v21 - 128) = ((v17 ^ 0x2EFE7FD6) - 34087696 + ((v18 + 1576861332) & (2 * v17))) ^ v22;
  *(v21 - 124) = (v18 + 892) ^ v22;
  *(v21 - 120) = &a17;
  v23 = (*(v20 + 8 * (v18 + 2171)))(v21 - 128);
  return sub_22D363278(v23);
}

uint64_t sub_22D363278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v20 - 128) = v16 - ((~((v20 - 128) | v17) + ((v20 - 128) & v17)) ^ 0x3245B57C) * v18 + 1235;
  *(v20 - 120) = &a15;
  *(v20 - 112) = a14;
  v21 = (*(v15 + 8 * (v16 ^ 0xAAC)))(v20 - 128);
  return (*(v15 + 8 * (((*(v20 - 104) > v19) * ((v16 + 159525520) & 0xF67DD2C8 ^ 0x90)) ^ v16)))(v21);
}

uint64_t sub_22D363314@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, int a60, int a61, uint64_t a62, int a63)
{
  v71 = *(v70 + 504);
  v72 = &v67[6 * v66];
  v72[2] = v68;
  v72[3] = a64;
  *(v72 + 2) = v71;
  v72[6] = a61;
  *v67 = v65 + ((a1 + 197330681) & 0xF43CFBBB) - 922;
  LODWORD(STACK[0x204]) = v64;
  v73 = v64 + 2129535012;
  v75 = v73 > 1630754390 || v73 < a45;
  return (*(v69 + 8 * (a1 ^ (1249 * v75))))();
}

uint64_t sub_22D363968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = ((v6 + v9 + 1925) ^ 0xFFFFFFFFFFFFFEB9) + v8;
  *(a6 + v11) = *(v7 + v11);
  return (*(v10 + 8 * ((3395 * (v11 == 0)) ^ (v6 + v9 + 3071))))();
}

uint64_t sub_22D3639CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = v69 ^ 0x539;
  v74 = ((v69 ^ 0x539) - 29707495) & 0x1C54DFD;
  v75 = ((v69 ^ 0x539) - 101897563) & 0x612D7FD;
  v76 = *(v72 + 504);
  v77 = 1082434553 * ((v71 - 192) ^ 0x9B47F68A);
  v78 = (v71 - 192);
  *v78 = &STACK[0x3D0];
  v78[2] = &STACK[0x324];
  v78[4] = &STACK[0x370];
  v78[5] = &a68;
  v78[6] = v76;
  *(v71 - 180) = v77 + v68 + 271006981;
  *(v71 - 168) = v77 + (v69 ^ 0x539) + 944;
  v79 = (*(v70 + 8 * (v69 ^ 0xC4F)))(v71 - 192);
  return (*(v70 + 8 * (((*(v71 - 184) == (v74 ^ 0xA41859E8)) * (v75 ^ 0x278)) ^ v73)))(v79);
}

uint64_t sub_22D363B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v20 - 120) = v16 + 1037613739 * ((v20 - 136) ^ 0xD1022D7F) + 1696;
  *(v20 - 136) = &a15;
  *(v20 - 128) = v19;
  v21 = (*(v17 + 8 * (v16 ^ 0xBF4u)))(v20 - 136);
  return (*(v17 + 8 * (((v18 != (v15 ^ 0x4FD)) * (v15 ^ 0x4BA)) ^ v16)))(v21);
}

uint64_t sub_22D363B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, int a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19)
{
  LODWORD(a16) = (v19 + 1483) ^ (50899313 * (&a16 ^ 0x142F9D9B));
  a19 = &a15;
  a17 = a13;
  (*(v21 + 8 * (v19 ^ 0xB9Bu)))(&a16);
  a19 = &a12;
  a17 = a13;
  LODWORD(a16) = (v19 + 1483) ^ (50899313 * ((&a16 - 124342558 - 2 * (&a16 & 0xF896AEE2)) ^ 0xECB93379));
  (*(v21 + 8 * (v19 + 1659)))(&a16);
  a16 = a13;
  HIDWORD(a17) = (v19 + 1503) ^ (((&a16 & 0xC1AC0265 | ~(&a16 | 0xC1AC0265)) ^ 0xB3FE9F76) * v22);
  v23 = (*(v21 + 8 * (v19 + 1666)))(&a16);
  return (*(v21 + 8 * (((a17 == v20) * (((v19 + 570674493) | 0xC5A0008E) + 408695101)) ^ v19)))(v23);
}

uint64_t sub_22D363D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, uint64_t a17, char a18)
{
  a16 = v18 - 1479784710;
  *(v21 - 112) = a14;
  *(v21 - 120) = v20 + 1388665877 * ((v21 - 1852261225 - 2 * ((v21 - 128) & 0x9198BD17)) ^ 0x1C35DFFB) - 401;
  *(v21 - 128) = &a18;
  (*(v19 + 8 * (v20 + 1623)))(v21 - 128);
  *(v21 - 120) = &a15;
  *(v21 - 112) = a14;
  *(v21 - 128) = v20 - 210068311 * ((((v21 - 128) | 0xB3E6CF4B) - ((v21 - 128) & 0xB3E6CF4B)) ^ 0x2130F0EF) + 1235;
  v22 = (*(v19 + 8 * (v20 + 1620)))(v21 - 128);
  return (*(v19 + 8 * (((*(v21 - 104) > 0x32CF6B79u) * ((v20 - 457) ^ 0x17E)) ^ v20)))(v22);
}

uint64_t sub_22D363E40@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v39 = *(v37 + 4 * (v35 - 1));
  *(v37 + 4 * v35) = ((1566083941 * (v39 ^ (v39 >> 30))) ^ *(v37 + 4 * v35)) - v35;
  v40 = a1 - 1425290583 + v36;
  *(v38 - 152) = 1 - v36;
  *(v38 - 148) = v40 - 12;
  STACK[0x5C0] = 623 - v36;
  *(v38 - 112) = ((a1 - 1425290583) ^ 0x56) - v36;
  STACK[0x5B0] = v35 + 1 + v36;
  *(v38 - 120) = (a1 + 147318046) ^ v36;
  *(v38 - 136) = v40;
  v41 = (*(v33 + 8 * (a1 ^ (v34 + 1711))))(v38 - 152);
  return (*(a33 + 8 * *(v38 - 116)))(v41);
}

uint64_t sub_22D363F48@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(v1 + v5) = *(a1 + v5) - ((2 * *(a1 + v5)) & 0x60) - 80;
  return (*(v4 + 8 * (((v5 == 0) * (((v3 - 463143378) & 0x1B9AFAFE) + 3982)) ^ v3)))();
}

uint64_t sub_22D363F98(uint64_t a1, int a2, int a3, uint64_t a4, int a5)
{
  v11 = *(v9 + v10 * v8 + 36);
  v13 = v11 != a2 && a3 + v6 + (v5 ^ (a5 - 1379)) + 1627 + v11 - 1628 < 0x80000003;
  return (*(v7 + 8 * ((1015 * v13) ^ v5)))();
}

uint64_t sub_22D363FE4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, int a4@<W8>, int8x16_t a5@<Q0>, int8x8_t a6@<D1>)
{
  v13 = a1 - 8;
  v15.val[0].i64[0] = (v9 + v13 - 1) & 0xF;
  v15.val[0].i64[1] = (v9 + v13 + 14) & 0xF;
  v15.val[1].i64[0] = (v9 + v13 + 13) & 0xF;
  v15.val[1].i64[1] = (v9 + v13 + 12) & 0xF;
  v15.val[2].i64[0] = (v9 + v13 + 11) & 0xF;
  v15.val[2].i64[1] = (v9 + v13 + a3) & 0xF;
  v15.val[3].i64[0] = (v9 + v13 + 9) & 0xF;
  v15.val[3].i64[1] = (v9 + v13) & 0xF ^ 8;
  *(v10 - 8 + v9) = veor_s8(veor_s8(veor_s8(*(v8 + v15.val[0].i64[0] - 7), *(a2 - 8 + v9)), veor_s8(*(v7 + v15.val[0].i64[0] - 7), *(v6 + v15.val[0].i64[0] - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v15, a5), a6)));
  return (*(v12 + 8 * (((v11 + v13 != 0) | (16 * (v11 + v13 != 0))) ^ a4)))();
}

uint64_t sub_22D363FF4()
{
  v5 = v2 + 191;
  v6 = v3 < v1;
  v7 = v2 + 75;
  v8 = 70 * ((v2 + 191) ^ 0x5E2);
  v9 = v0 + 1;
  if (v6 == v9 > 0xFFFFFFFFEA140C76)
  {
    LOBYTE(v6) = v9 + v1 < v3;
  }

  return (*(v4 + 8 * ((((v6 ^ v7) & 1) * (v8 ^ 0x535)) ^ v5)))();
}

uint64_t sub_22D3647C4()
{
  v4 = v1 + 550;
  if (v0 >= v2)
  {
    v5 = 1541866443;
  }

  else
  {
    v5 = -1541908459;
  }

  return (*(v3 + 8 * (((v5 == -1541908459) * (17 * (v4 ^ 0x342) + 1493)) ^ v4)))();
}

uint64_t sub_22D3647E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, _DWORD *a32, unsigned int *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  *a32 = 1;
  v42 = *a33;
  v43 = 2066391179 * ((((v41 - 152) | 0xE5C665F3E1A33203) - (v41 - 152) + ((v41 - 152) & 0x1A399A0C1E5CCDF8)) ^ 0x8E605544E84B01BLL);
  STACK[0x5D0] = v43 + 5119;
  *(v41 - 124) = -2066391179 * ((((v41 - 152) | 0xE1A33203) - (v41 - 152) + ((v41 - 152) & 0x1E5CCDF8)) ^ 0x4E84B01B);
  *(v41 - 120) = v40 - v43 + 4202908;
  *(v41 - 128) = v40 - v43 + 4202936;
  STACK[0x5B8] = v42 ^ v43;
  *(v41 - 148) = v43 + v40 + 1303803676;
  *(v41 - 144) = v40 - v43 + 4202977;
  v44 = (*(a4 + 8 * (a5 + v40 + 1779)))(v41 - 152);
  return (*(a40 + 8 * *(v41 - 152)))(v44);
}

uint64_t sub_22D3647F0(int a1, unsigned int a2, unint64_t a3)
{
  v12 = *(v3 + 8);
  v13 = (v8 & a1 ^ a2 ^ *(v12 + 4 * v4)) + HIDWORD(a3);
  *(v12 + 4 * v4) = v13 + v10 - (v11 & (2 * v13));
  return (*(v9 + 8 * (((v4 + 1 != v7) * v5) ^ v6)))();
}

uint64_t sub_22D364ADC(int8x16_t a1, int8x16_t a2, int8x16_t a3, int8x16_t a4, int32x4_t a5, int8x16_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = v15 + 4 * v14;
  a6.i64[0] = *(v16 + 4);
  a6.i32[2] = *(v16 + 12);
  v17 = vextq_s8(a1, a6, 0xCuLL);
  v18 = a6;
  v18.i32[3] = *(v15 + 4 * (v14 + 4));
  v19 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v18, a3), vandq_s8(v17, a2)), 1uLL), *(v16 + 1588));
  v17.i32[0] = *(v12 + 4 * (*(v16 + 4) & 1));
  v17.i32[1] = *(v12 + 4 * (*(v16 + 8) & 1));
  v17.i32[2] = *(v12 + 4 * (*(v16 + 12) & v11));
  v17.i32[3] = *(v12 + 4 * (v18.i8[12] & 1));
  *v16 = veorq_s8(vaddq_s32(vsubq_s32(v19, vandq_s8(vaddq_s32(v19, v19), a4)), a5), v17);
  return (*(a10 + 8 * (((v14 == 220) * v13) ^ v10)))();
}

uint64_t sub_22D364AE4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X8>, __n128 a5@<Q1>, int8x16_t a6@<Q4>, uint64_t a7@<D5>, int8x16_t a8@<Q6>, int8x16_t a9@<Q7>)
{
  v19 = a1 - 16;
  v20 = a2 & (v19 + 15);
  v21 = v17;
  v22.i64[0] = vqtbl4q_s8(*(&a5 - 1), a6).u64[0];
  v22.i64[1] = a7;
  v23 = vrev64q_s8(veorq_s8(veorq_s8(*(a4 + v19), *(v11 + v20 - 15)), veorq_s8(*(v20 + v13 - 10), *(v20 + v14 - 13))));
  v24 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v23, v23, 8uLL), a9), vmulq_s8(v22, a8)));
  *(v18 + v19) = vextq_s8(v24, v24, 8uLL);
  return (*(v16 + 8 * (((v12 == 16) * a3) ^ v15)))();
}

uint64_t sub_22D366BE4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, __int128 a33, __int128 a34, __int128 a35, __int128 a36)
{
  v41 = (v40 - 228);
  v42 = vdupq_n_s32(0x24185817u);
  v43.i64[0] = 0xB0B0B0B0B0B0B0B0;
  v43.i64[1] = 0xB0B0B0B0B0B0B0B0;
  v44 = vdupq_n_s32(0xA4185815);
  v45 = *(v40 - 152);
  v46 = *(v40 - 132);
  if (v46 == 2)
  {
    v86 = vld4q_s8(v41);
    v70 = veorq_s8(v86.val[0], v43);
    v71 = vmovl_high_u8(v70);
    v72 = vmovl_u8(*v70.i8);
    v73 = veorq_s8(v86.val[1], v43);
    _Q21 = vmovl_high_u8(v73);
    _Q20 = vmovl_u8(*v73.i8);
    v76 = vshll_n_s16(*_Q20.i8, 0x10uLL);
    __asm { SHLL2           V20.4S, V20.8H, #0x10 }

    v77 = vshll_n_s16(*_Q21.i8, 0x10uLL);
    __asm { SHLL2           V21.4S, V21.8H, #0x10 }

    v78 = veorq_s8(v86.val[2], v43);
    v79 = vmovl_u8(*v78.i8);
    v80 = vmovl_high_u8(v78);
    v86.val[0] = veorq_s8(v86.val[3], v43);
    v86.val[1] = vmovl_u8(*v86.val[0].i8);
    v86.val[2] = vmovl_u16(*v86.val[1].i8);
    v86.val[1] = vmovl_high_u16(v86.val[1]);
    v86.val[0] = vmovl_high_u8(v86.val[0]);
    v86.val[3] = vmovl_u16(*v86.val[0].i8);
    v86.val[0] = vmovl_high_u16(v86.val[0]);
    v81 = vorrq_s8(vorrq_s8(vorrq_s8(_Q21, vshll_high_n_u16(v80, 8uLL)), vshlq_n_s32(vmovl_high_u16(v71), 0x18uLL)), v86.val[0]);
    v82 = vorrq_s8(vorrq_s8(vorrq_s8(v77, vshll_n_u16(*v80.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v71.i8), 0x18uLL)), v86.val[3]);
    v83 = vorrq_s8(vorrq_s8(vorrq_s8(_Q20, vshll_high_n_u16(v79, 8uLL)), vshlq_n_s32(vmovl_high_u16(v72), 0x18uLL)), v86.val[1]);
    v84 = vorrq_s8(vorrq_s8(vorrq_s8(v76, vshll_n_u16(*v79.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v72.i8), 0x18uLL)), v86.val[2]);
    v86.val[0] = veorq_s8(vandq_s8(v81, v42), (*v86.val & __PAIR128__(0xFFFFFF02FFFFFF02, 0xFFFFFF02FFFFFF02)));
    v86.val[3] = veorq_s8(vandq_s8(v82, v42), (*&v86.val[3] & __PAIR128__(0xFFFFFF02FFFFFF02, 0xFFFFFF02FFFFFF02)));
    v86.val[1] = veorq_s8(vandq_s8(v83, v42), (*&v86.val[1] & __PAIR128__(0xFFFFFF02FFFFFF02, 0xFFFFFF02FFFFFF02)));
    v86.val[2] = veorq_s8(vandq_s8(v84, v42), (*&v86.val[2] & __PAIR128__(0xFFFFFF02FFFFFF02, 0xFFFFFF02FFFFFF02)));
    v86.val[0] = vaddq_s32(vsubq_s32(v81, vaddq_s32(v86.val[0], v86.val[0])), v44);
    v86.val[3] = vaddq_s32(vsubq_s32(v82, vaddq_s32(v86.val[3], v86.val[3])), v44);
    v86.val[1] = vaddq_s32(vsubq_s32(v83, vaddq_s32(v86.val[1], v86.val[1])), v44);
    v86.val[2] = vaddq_s32(vsubq_s32(v84, vaddq_s32(v86.val[2], v86.val[2])), v44);
    LODWORD(a33) = v86.val[2].i32[0];
    *(&a33 + 4) = vextq_s8(v86.val[2], v86.val[1], 4uLL);
    *(&a34 + 4) = vextq_s8(v86.val[1], v86.val[3], 4uLL);
    *(&a35 + 4) = vextq_s8(v86.val[3], v86.val[0], 4uLL);
    *(&a36 + 4) = vextq_s8(v86.val[0], v86.val[0], 4uLL).u64[0];
    HIDWORD(a36) = v86.val[0].i32[3];
    *(&a33 + v38 + 1936004608) = __ROR4__(*(&a33 + ((v38 + 413) ^ 0x1A0) + 1936004608) ^ v37 ^ *(&a33 + v38 + 1936004600) ^ *(&a33 + v38 + 1936004594) ^ *(&a33 + v38 + 1936004592), 31) ^ 0xB497CC4E;
    return (*(v36 + 8 * ((43 * (v39 == 1936004545)) ^ 0x18Bu)))(v45);
  }

  else
  {
    if (v46 != 1)
    {
      JUMPOUT(0x22D3936C4);
    }

    v85 = vld4q_s8(v41);
    v47 = veorq_s8(v85.val[0], v43);
    v48 = vmovl_u8(*v47.i8);
    v49 = vmovl_u16(*v48.i8);
    v50 = vmovl_high_u8(v47);
    v51 = vmovl_u16(*v50.i8);
    v52 = veorq_s8(v85.val[1], v43);
    v53 = vmovl_high_u8(v52);
    v54 = vmovl_u8(*v52.i8);
    v55 = vorrq_s8(vshll_high_n_u16(v53, 8uLL), vmovl_high_u16(v50));
    v56 = vorrq_s8(vshll_n_u16(*v53.i8, 8uLL), v51);
    v57 = vorrq_s8(vshll_high_n_u16(v54, 8uLL), vmovl_high_u16(v48));
    v58 = vorrq_s8(vshll_n_u16(*v54.i8, 8uLL), v49);
    v59 = veorq_s8(v85.val[2], v43);
    _Q21 = vmovl_u8(*v59.i8);
    _Q20 = vmovl_high_u8(v59);
    __asm
    {
      SHLL2           V22.4S, V20.8H, #0x10
      SHLL2           V23.4S, V21.8H, #0x10
    }

    v85.val[0] = veorq_s8(v85.val[3], v43);
    v85.val[1] = vmovl_high_u8(v85.val[0]);
    v85.val[0] = vmovl_u8(*v85.val[0].i8);
    v85.val[2] = vorrq_s8(vorrq_s8(v55, _Q22), vshlq_n_s32(vmovl_high_u16(v85.val[1]), 0x18uLL));
    v85.val[1] = vorrq_s8(vorrq_s8(v56, vshll_n_s16(*_Q20.i8, 0x10uLL)), vshlq_n_s32(vmovl_u16(*v85.val[1].i8), 0x18uLL));
    v85.val[3] = vorrq_s8(vorrq_s8(v57, _Q23), vshlq_n_s32(vmovl_high_u16(v85.val[0]), 0x18uLL));
    v85.val[0] = vorrq_s8(vorrq_s8(v58, vshll_n_s16(*_Q21.i8, 0x10uLL)), vshlq_n_s32(vmovl_u16(*v85.val[0].i8), 0x18uLL));
    v68 = vdupq_n_s32(0x4830B02Au);
    v85.val[2] = vaddq_s32(vsubq_s32(v85.val[2], vandq_s8(vaddq_s32(v85.val[2], v85.val[2]), v68)), v44);
    v85.val[1] = vaddq_s32(vsubq_s32(v85.val[1], vandq_s8(vaddq_s32(v85.val[1], v85.val[1]), v68)), v44);
    v85.val[3] = vaddq_s32(vsubq_s32(v85.val[3], vandq_s8(vaddq_s32(v85.val[3], v85.val[3]), v68)), v44);
    v85.val[0] = vaddq_s32(vsubq_s32(v85.val[0], vandq_s8(vaddq_s32(v85.val[0], v85.val[0]), v68)), v44);
    LODWORD(a33) = v85.val[0].i32[0];
    *(&a33 + 4) = vextq_s8(v85.val[0], v85.val[3], 4uLL);
    *(&a34 + 4) = vextq_s8(v85.val[3], v85.val[1], 4uLL);
    *(&a35 + 4) = vextq_s8(v85.val[1], v85.val[2], 4uLL);
    *(&a36 + 4) = vextq_s8(v85.val[2], v85.val[2], 4uLL).u64[0];
    HIDWORD(a36) = v85.val[2].i32[3];
    return (*(v36 + 8 * ((a2 - 1957850881) & 0xB00530FF ^ 0x1F4)))(v42);
  }
}

void sub_22D366C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v19 = 1037613739 * ((((v18 - 136) | 0x1292DDF4) - ((v18 - 136) & 0x1292DDF4)) ^ 0xC390F08B);
  *(v18 - 128) = &a15;
  *(v18 - 136) = ((v16 ^ 0xAEF6DFE6) + 2113895648 + ((v16 << (v15 + 5)) & 0x5DEDBFCC)) ^ v19;
  *(v18 - 132) = (v15 - 104) ^ v19;
  (*(v17 + 8 * (v15 + 1175)))(v18 - 136);
  JUMPOUT(0x22D366CF8);
}

void sub_22D366E00(int a1@<W8>, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v8 = 1037613739 * ((&a3 - 698268510 - 2 * (&a3 & 0xD66144A2)) ^ 0x76369DD);
  a3 = v8 - 538762144;
  a5 = 0;
  a6 = (a1 - 343) ^ v8;
  a7 = 1114312301 - v8;
  (*(v7 + 8 * (a1 ^ 0xAE8)))(&a3);
  JUMPOUT(0x22D358968);
}

uint64_t sub_22D367054@<X0>(unint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v8 = a3 + 1;
  *(v5 + 4 * (v8 + ((v3 + 841) ^ a1))) = *(v7 + 4 * (*(v5 + 4 * v8 + 912) & 1)) ^ *(v5 + 4 * v8) ^ ((*(v5 + 4 * v8 + 912) & 0x7FFFFFFE | v4 & 0x80000000) >> 1);
  return (*(v6 + 8 * (((v8 == 395) * a2) ^ (v3 + 412))))();
}

uint64_t sub_22D36705C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, _DWORD *a39, uint64_t a40)
{
  v44 = v41 ^ 0xFA8E23C8;
  v45 = (*(v40 + 8 * (v41 + 2249)))(a39 + 4, 0);
  v46 = a39[4] - 1697245704 - ((v41 ^ 0x35AC2B4C) & (2 * a39[4]));
  a39[1] = a39[6] - 1697245704 - ((2 * a39[6]) & 0x35AC2BF0);
  a39[2] = v46;
  v47 = v41 + 2241;
  v48 = (*(a40 + 8 * v47))(v45);
  a39[3] = v48 - 1697245704 - ((2 * v48) & 0x35AC2BF0);
  v49 = (*(a40 + 8 * v47))();
  *a39 = v49 - 1697245704 - ((2 * v49) & 0x35AC2BF0);
  v52 = 2066391179 * ((v43 - 152) ^ 0xED2060A7AF278218);
  v42[1] = (*a39 ^ 0x9AD615F8) + ((1664525 * (*v42 ^ (*v42 >> 30))) ^ v42[1]);
  *(v43 - 124) = -2066391179 * ((v43 - 152) ^ 0xAF278218);
  *(v43 - 120) = v44 - v52 - 1502942025;
  *(v43 - 148) = v52 + v44 + 1303803676;
  *(v43 - 144) = v44 - v52 - 1502942030;
  STACK[0x5B8] = v52 ^ 2;
  *(v43 - 128) = v44 - v52 - 1502941954;
  STACK[0x5D0] = v52 + 623;
  v50 = (*(a40 + 8 * (v44 ^ 0xFA8E2A16)))(v43 - 152);
  return (*(a40 + 8 * *(v43 - 152)))(v50);
}

uint64_t sub_22D367300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  v15 = (((a13 - 1730117604) ^ 0xA605F6EA) + 1509809558) ^ (a13 - 1730117604) ^ (((a13 - 1730117604) ^ 0xB1311AA0) + 1321808352) ^ ((*(v14 - 132) ^ 0x9634CAC5) + ((a13 - 1730117604) ^ 0x69CCE715)) ^ ((((a7 ^ 0x33) + 2130696201) ^ (a13 - 1730117604)) - 2130185055);
  v16 = ((a7 ^ 0x33) - 460) | 0xA4;
  *(v14 - 132) = v16;
  v18 = ((v16 ^ 0x6A1) & v15) != 0 || v15 == 513152;
  v19 = *(v13 + 8 * ((((a7 ^ 0x33) + 1) ^ v18) & 1 | a7 ^ 0x33));
  *(v14 - 136) = -42899;
  return v19();
}

uint64_t sub_22D367420@<X0>(int a1@<W8>)
{
  v4 = v2 + a1;
  if (v4 >= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = -v4;
  }

  return (*(v3 + 8 * (((v5 <= (((v1 + 218) | 0x601) ^ 0x7E1)) * (((v1 + 1208) | 8) ^ 0x54A)) ^ v1)))();
}

uint64_t sub_22D3674D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v10 + 632) = 0x9908B0DF00000000;
  v11 = *(a5 + 8 * (v5 - 775));
  LODWORD(STACK[0x268]) = **(a5 + 8 * (v5 - 759));
  v12 = *v11;
  v13 = ((v9 + 0x553D5AA3C8BACF70 - 2 * ((v9 - 192) & 0x553D5AA3C8BAD030)) ^ 0x6047CAEC4517B2DCLL) * v7;
  *(v9 - 152) = ((v9 - 927281296 - 2 * ((v9 - 192) & 0xC8BAD030)) ^ 0x4517B2DC) * v7 + v5 - 2030745577;
  *(v9 - 180) = (v5 - 1320839881) ^ (((v9 - 927281296 - 2 * ((v9 - 192) & 0xC8BAD030)) ^ 0x4517B2DC) * v7);
  *(v9 - 176) = ((v9 - 927281296 - 2 * ((v9 - 192) & 0xC8BAD030)) ^ 0x4517B2DC) * v7;
  *(v9 - 192) = v5 - 1320839934 - ((v9 - 927281296 - 2 * ((v9 - 192) & 0xC8BAD030)) ^ 0x4517B2DC) * v7;
  *(v9 - 184) = ((v5 - 1320839934) ^ 0x35) + ((v9 - 927281296 - 2 * ((v9 - 192) & 0xC8BAD030)) ^ 0x4517B2DC) * v7;
  *(v6 + 24) = v13;
  *(v6 + 32) = v12 ^ v13;
  v14 = (*(v8 + 8 * (v5 ^ 0xA18)))(v9 - 192);
  return (*(v8 + 8 * *(v9 - 188)))(v14);
}

uint64_t sub_22D367710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = v3 + 32;
  v10 = (v5 ^ v9) + a2;
  v11 = *(v7 + v10 - 15);
  v12 = *(v7 + v10 - 31);
  v13 = a1 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v8 + 8 * (((v4 == v9) * v6) ^ (v2 + 495))))();
}

uint64_t sub_22D367760()
{
  v4 = v0;
  v5 = (*(v3 + 8 * (v0 ^ 0xAD1)))();
  return (*(v3 + 8 * ((((v4 - 748) ^ 0x693) * (v1 == v2)) ^ (v4 - 748))))(v5);
}

uint64_t sub_22D3677B0@<X0>(int a1@<W8>)
{
  v8 = v1 + 2;
  v9 = (v2 - 2);
  *v9 = (v8 ^ v4 ^ v6) * (v8 + 17);
  *(v9 - 1) = (v8 ^ 0xBB) * (v8 + 18);
  return (*(v7 + 8 * (((v3 == 2) * v5) ^ a1)))();
}

uint64_t sub_22D367924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v19 = 2066391179 * ((2 * ((v18 - 144) & 0x52BCA910) - (v18 - 144) - 1388095766) ^ 0x264D4F2);
  *(v18 - 128) = a15;
  *(v18 - 144) = v19 + v17 + 614;
  *(v18 - 140) = (((((v17 - 6) | 0xB2) + 387) ^ 0x53AC938E) * (v15 - 3) + 2064040668) ^ v19;
  v20 = (*(v16 + 8 * (v17 + 2063)))(v18 - 144);
  return (*(v16 + 8 * ((92 * (*(v18 - 136) == 1450726857)) ^ v17)))(v20);
}

void sub_22D367A84(int a1@<W8>, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7)
{
  v9 = ((2 * (&a3 & 0x49FB68E0) - &a3 - 1241213155) ^ 0x6706BA62) * a1;
  a3 = v9 - 550235220;
  a6 = (v7 - 1229) ^ v9;
  a7 = 1114312301 - v9;
  a5 = 0;
  (*(v8 + 8 * (v7 + 738)))(&a3);
  JUMPOUT(0x22D367AFCLL);
}

uint64_t sub_22D367B7C(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = 1037613739 * (((a1 | 0xB3B49CD6) - (a1 & 0xB3B49CD6)) ^ 0x62B6B1A9);
  v3 = *(a1 + 12) ^ v2;
  v4 = *(a1 + 8) ^ v2;
  v5 = *(a1 + 16) - v2;
  v6 = *(a1 + 24);
  v7 = 50899313 * ((2011337044 - (&v9 | 0x77E29154) + (&v9 | 0x881D6EAB)) ^ 0x9C32F330);
  v13 = *a1;
  v11 = (-1647888319 * v4 + 845307857) ^ (((-1647888319 * v4 + 845307857) ^ 0x1FC0DA33) - 1878439327) ^ (((-1647888319 * v4 + 845307857) ^ 0x46A83798) - 916346932) ^ (((-1647888319 * v4 + 845307857) ^ 0xD6B575B0) + 1501357540) ^ (((-1647888319 * v4 + 845307857) ^ 0xFFEBF7B7) + 1881303013) ^ v7 ^ 0xDD3895FB;
  v12 = v3 - v7 + 2013067445;
  v10 = v6;
  v14 = (((v5 ^ 0x4A95D5FF) - 1251333631) ^ ((v5 ^ 0x671B5211) - 1729843729) ^ ((v5 ^ 0xD0EBD945) + 789849787)) - v7 + 1114208129;
  result = (*(*(&off_284082B80 + (v3 ^ 0x88030AEF)) + (v3 ^ 0x8803037E) - 1))(&v9);
  *(a1 + 20) = v9;
  return result;
}

uint64_t sub_22D367FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 136) = v18 - ((v19 - 136) ^ 0x92D63FA4) * v15 + 1248;
  *(v19 - 128) = v16;
  *(v19 - 120) = &a15;
  v20 = (*(v17 + 8 * (v18 ^ 0xAA1)))(v19 - 136);
  return (*(v17 + 8 * ((1388 * (*(v19 - 112) > (((v18 - 801) | 0x488) ^ 0x32CF6FF0u))) ^ v18)))(v20);
}

uint64_t sub_22D368030(uint64_t a1)
{
  v1 = 2066391179 * (a1 ^ 0xAF278218);
  v2 = *a1 + v1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 4) + v1;
  v5 = v4 - 114591002 + *(v3 + 68);
  *(v3 + 68) = v5;
  v4 -= 1994165142;
  v6 = v4 < 0x8FF7F984;
  v7 = v5 - 1879574140 < v4;
  if (v6 != v5 > 0x7008067B)
  {
    v7 = v6;
  }

  return (*(*(&off_284082B80 + (v2 & 0xB682597B)) + ((112 * v7) ^ v2) - 1))();
}

uint64_t sub_22D3680E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  *(v27 - 128) = v24 - 1037613739 * ((((2 * (v27 - 144)) | 0x1EAD28C) - (v27 - 144) - 16083270) ^ 0xD1F74439) + 1678;
  *(v27 - 120) = v25;
  *(v27 - 112) = &a22;
  *(v27 - 144) = &a22;
  *(v27 - 136) = a14;
  (*(v23 + 8 * (v24 + 2244)))(v27 - 144);
  *(v27 - 144) = v24 - ((2 * ((v27 - 144) & 0x13DA5AC0) - (v27 - 144) - 333077187) ^ 0xFFF9491D) * v26 + 984;
  *(v27 - 128) = v25;
  *(v27 - 120) = &a22;
  *(v27 - 112) = &a16;
  *(v27 - 104) = &a22;
  *(v27 - 136) = a14;
  v28 = (*(v23 + 8 * (v24 + 2137)))(v27 - 144);
  return (*(v23 + 8 * ((57 * (((v24 + 2087) ^ 0xD2BCDDCA ^ (11 * ((v24 + 2087) ^ 0x843))) + ((v24 + 2087) ^ 0xFFFFF702) + v22 < 0x7FFFFFFF)) ^ (v24 + 197))))(v28);
}

uint64_t sub_22D3682EC(uint64_t result)
{
  v1 = 1388665877 * ((2 * (result & 0x479E4E00F9ED8C41) - result - 0x479E4E00F9ED8C42) ^ 0x8D1B21B08BBF1152);
  v2 = *(result + 32) ^ v1;
  v3 = *(result + 24) - v1;
  v4 = v2 > v3;
  v5 = v2 == v3;
  v6 = v4;
  if ((*(result + 16) ^ (1388665877 * ((2 * (result & 0xF9ED8C41) - result + 101872574) ^ 0x8BBF1152))))
  {
    v5 = v6;
  }

  if (v5)
  {
    v7 = *result + 1388665877 * ((2 * (result & 0xF9ED8C41) - result + 101872574) ^ 0x8BBF1152);
  }

  else
  {
    v7 = *(result + 8) - 1388665877 * ((2 * (result & 0xF9ED8C41) - result + 101872574) ^ 0x8BBF1152);
  }

  *(result + 4) = *(result + 12) ^ (1388665877 * ((2 * (result & 0xF9ED8C41) - result + 101872574) ^ 0x8BBF1152)) ^ v7;
  return result;
}

uint64_t sub_22D368468()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = *(&off_284082B80 + ((-3 * (dword_27D9FC508 ^ 0xE5 ^ qword_27D9FC2C8)) ^ byte_22D5BA3E0[byte_22D5C6450[(-3 * (dword_27D9FC508 ^ 0xE5 ^ qword_27D9FC2C8))] ^ 0xE2]) + 106);
  v1 = *(v0 - 4);
  v2 = *(&off_284082B80 + (*(off_284082EF8 + (*(off_284082E00 + (-3 * (v1 ^ qword_27D9FC2C8 ^ 0xE5))) ^ 0x93u)) ^ (-3 * (v1 ^ qword_27D9FC2C8 ^ 0xE5))) + 122);
  v3 = *(v2 - 4) - v1 - &v5;
  *(v0 - 4) = 1707045629 * v3 - 0x154132243C8557AFLL;
  *(v2 - 4) = 1707045629 * (v3 ^ 0x1520B27A7613BCE5);
  v8 = 1765 - 1037613739 * ((((2 * v6) | 0xE2C535A4) - v6 + 245196078) ^ 0x2060B7AD);
  v7 = *(&off_284082B80 + (*(off_284082D30 + (*(off_284083140 + (-3 * (*(v0 - 4) ^ 0xE5 ^ *(v2 - 4))) - 4) ^ 0xF2u) - 8) ^ (-3 * (*(v0 - 4) ^ 0xE5 ^ *(v2 - 4)))) + 54) - 4;
  LOBYTE(v0) = -3 * ((*(v2 - 4) + *(v0 - 4)) ^ 0xE5);
  return (*(*(&off_284082B80 + ((-3 * ((qword_27D9FC2C8 + dword_27D9FC508) ^ 0xE5)) ^ byte_22D5BA6E0[byte_22D5C6650[(-3 * ((qword_27D9FC2C8 + dword_27D9FC508) ^ 0xE5))] ^ 0xB5]) + 37) + (v0 ^ *(off_284082D30 + (*(off_284083140 + v0 - 4) ^ 0xBAu) - 8)) + 2339))(v6);
}

void sub_22D3686D8(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = 742307843 * ((a1 & 0x9116BBFF | ~(a1 | 0x9116BBFF)) ^ 0x70CBC955);
  v2 = *(a1 + 52) ^ v1;
  v3 = *(a1 + 48) ^ v1;
  v4 = *(a1 + 40);
  v5 = 1564307779 * (((v10 | 0xD90A45F2) - v10 + (v10 & 0x26F5BA08)) ^ 0x4E0789E1);
  v6 = v5 + 833282747 * (*(a1 + 16) ^ v1);
  v10[0] = &v9;
  v10[1] = &v8;
  v14 = v5 ^ (v3 + 751647375);
  v11 = v2 + v5 + 5;
  v12 = v6 + 1739266460;
  v15 = v4;
  v7 = *(&off_284082B80 + v2 - 359) - 8;
  (*&v7[8 * v2 + 15920])(v10);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_22D368884()
{
  v3 = *(v1 + 192);
  v4 = (LODWORD(STACK[0x270]) ^ 0x895FFFFFFFEBFE9DLL) + 0x76A0000000140162 + ((LODWORD(STACK[0x270]) << ((v0 ^ 0x6Du) + 77)) & 0x1FFD7FD3ALL) + 1;
  *(v1 + 64) = v4;
  return (*(v2 + 8 * ((54 * (v4 == ((v0 + 776656677) & 0xD1B524FB ^ 0x4FALL))) ^ v0)))(&STACK[0x220], v3);
}

uint64_t sub_22D36891C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = v8 - 1;
  *(v10 + 32) = v11;
  *(a1 + v11) = (&STACK[0x240] ^ 0xBA) * (&STACK[0x240] + 17);
  return (*(v9 + 8 * ((3028 * (*(v10 + 32) == 0)) ^ (a8 - 27))))();
}

void sub_22D3689B8()
{
  v0 = MEMORY[0x28223BE20]();
  if (*(v0 + 24))
  {
    v2 = *(v0 + 8) == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  v1 = *(v0 + 20) + 50899313 * ((~v0 & 0xFC5179D5 | v0 & 0x3AE862A) ^ 0xE87EE44E);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_22D368B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, _DWORD *a20, uint64_t a21, void *a22, int *a23)
{
  v29 = v26 + 1697;
  *a20 = 0;
  v30 = (((v23 >> 11) ^ v23) << 7) & 0x9D2C5680 ^ (v23 >> 11) ^ v23;
  v31 = (v24 + (v28 - 1));
  v32 = 1913672377 * ((*(*a22 + (*a23 & 0xFFFFFFFF977051BCLL)) ^ v31) & 0x7FFFFFFF);
  v33 = 1913672377 * (v32 ^ HIWORD(v32));
  LODWORD(v33) = *(*(v25 + 8 * (v29 - 1910)) + ((v29 - 5286922) & 0x50A77F ^ 0x37Du) + (v33 >> 24) - 4) ^ *(*(v25 + 8 * (v29 ^ 0x877)) + (v33 >> 24) - 12) ^ *(*(v25 + 8 * (v29 - 1905)) + (v33 >> 24)) ^ v33 ^ (-123 * (v33 >> 24));
  *v31 = v33 ^ (((v30 << 15) & 0xEFC60000 ^ v30) >> ((v26 - 95) ^ 0x1B)) ^ v30;
  return (*(v27 + 8 * ((211 * (v28 == (v33 != ((((v30 << 15) & 0xEFC60000 ^ v30) >> ((v26 - 95) ^ 0x1B)) ^ v30)))) ^ (v26 + 1697))))();
}

void sub_22D3690C4(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v8 = 12 * ((v6 - 964797382) & 0x39819FFE ^ 0x436);
  a4 = v8 - ((&a4 + 1321940230 - 2 * (&a4 & 0x4ECB3506)) ^ 0xC36657EA) * v5 - 887;
  a5 = a1;
  (*(v7 + 8 * (v8 ^ 0xD03)))(&a4);
  JUMPOUT(0x22D354CA4);
}

uint64_t sub_22D369170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, int a26, unint64_t a27)
{
  *(v33 - 124) = -a27;
  *(v33 - 120) = v29 - a27 - (((((~(v29 + 263) + v27) ^ (v32 - (v29 + 263))) - 1) & ((v29 + 263) - v27)) >> 63) - 1047704857;
  *(v31 + 48) = a27 | 3;
  *(v33 - 148) = a27 + 1212455208 + v29;
  *(v33 - 144) = v29 - a27 - 1047704693;
  *(v31 + 24) = (v28 + 1) ^ a27;
  *(v33 - 128) = v29 - a27 - 1047704731;
  v34 = (*(v30 + 8 * a26))(v33 - 152);
  return (*(v30 + 8 * *(v33 - 152)))(v34);
}

uint64_t sub_22D369424(uint64_t a1, uint64_t a2, int a3, uint64_t a4, __int128 *a5, _OWORD *a6)
{
  v8 = *a5;
  *(a6 - 1) = *(a5 - 1);
  *a6 = v8;
  return (*(v6 + 8 * (((a4 != 0) * a3) ^ v7)))();
}

uint64_t sub_22D36953C(double a1)
{
  *(v4 - 1) = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 != 0) * v2) ^ v1)))();
}

uint64_t sub_22D3696E0@<X0>(uint64_t a1@<X0>, char a2@<W2>, int a3@<W3>, int a4@<W4>, int a5@<W8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, unsigned int a41)
{
  v43 = v42[396] ^ ((*v42 & 0x7FFFFFFE | v42[623] & 0x80000000) >> 1);
  v42[623] = (v43 + a4 - ((v43 << (a2 + ((a5 - a2 + 62) | 0x14) - 110)) & a3)) ^ *(v41 + 4 * (*v42 & 1));
  return (*(a1 + 8 * ((91 * (a41 > 0x26F)) ^ a5)))();
}

uint64_t sub_22D3697A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a1 + v3 + 4) = **(a2 + 8);
  v4 = *(a2 + 4) + 1324138568;
  v5 = v4 > 0x84D737DC;
  if (v4 < 0x84D737DB)
  {
    v5 = 1;
  }

  return (*(a3 + 8 * ((103 * v5) ^ 0x333u)))();
}

uint64_t sub_22D369840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, unsigned int a18, int a19, char *a20)
{
  v23 = (((&a15 | 0xE2EE73D2) - (&a15 & 0xE2EE73D2)) ^ 0x33EC5EAD) * v21;
  a16 = v23 ^ 0x314BBEC7;
  a17 = (v22 - 2013067877) ^ v23;
  a15 = a11;
  a18 = v23 - 43688278;
  a20 = &a12;
  v24 = (*(v20 + 8 * (v22 + 1105)))(&a15);
  return (*(v20 + 8 * ((228 * (a19 == ((v22 - 1239) | 0x608) - 1541910101)) ^ v22)))(v24);
}

uint64_t sub_22D36995C(unsigned int *a1)
{
  *(a1 + v1 + 4) = 0;
  *a1 = v1;
  return 0;
}

uint64_t sub_22D369970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, int a13)
{
  a12 = (843532609 * (((&a12 | 0x6DFB78FA) - (&a12 & 0x6DFB78FA)) ^ 0x31B62C7F)) ^ 0xDFABAF92;
  v15 = (*(v14 + 18752))(&a12);
  return (*(v14 + 8 * ((27 * (a13 == v13)) ^ 0x28Au)))(v15);
}

uint64_t sub_22D369A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, uint64_t a24, uint64_t a25, int a26, int a27)
{
  v63 = v34 - 204;
  v35 = STACK[0x290];
  v36 = STACK[0x294];
  v37 = LOBYTE(STACK[0x2A0]);
  if (v37 == 2)
  {
    v39 = &STACK[0x240] + v30 + 1288231619;
    v40 = ((*v39 ^ v31) << 24) | ((v39[1] ^ v31) << 16) | ((v39[2] ^ v31) << 8);
    *v32 = (v40 | v39[3] ^ v31) + v29 - 2 * ((v40 | v39[3] ^ v31) & 0x24185817 ^ (v39[3] ^ v31) & 2);
    return (*(v28 + 8 * ((2124 * ((v30 + 1288231623) < 0x40)) ^ a23)))(v33 + 16);
  }

  else
  {
    v64 = *(v28 + 8 * (v27 - 18));
    if (v37 == 1)
    {
      v38 = *(&STACK[0x240] + v30 + 1288231619) ^ (5 * a27) ^ 0xB3 | ((*(&STACK[0x240] + v30 + 1288231620) ^ v31) << 8) | ((*(&STACK[0x240] + v30 + 1288231621) ^ v31) << 16) | ((*(&STACK[0x240] + v30 + 1288231622) ^ v31) << 24);
      *v32 = v38 + v29 - ((2 * v38) & 0x4830B02A);
      return (*(v28 + 8 * ((8 * ((v30 + 1288231623) < 0x40)) | (32 * ((v30 + 1288231623) < 0x40)) | (a7 + 473))))(322057904, (5 * a27), 1288231619, 3, 1284283092, a6, a7, a8, a9, a10, a11, v63, a13, a14, a15, a16, a17);
    }

    else
    {
      v41 = (((LODWORD(STACK[0x288]) ^ 0x7EA34934) - 2124630324) ^ ((LODWORD(STACK[0x288]) ^ 0xE159949B) + 514222949) ^ ((LODWORD(STACK[0x288]) ^ 0x17BD1782) - 398268290)) + (((LODWORD(STACK[0x288]) ^ 0x65F915FE) - 1710822910) ^ ((LODWORD(STACK[0x288]) ^ 0xEE41F685) + 297666939) ^ ((LODWORD(STACK[0x288]) ^ 0x3FF2956) - 67053910)) + 1142912459;
      v42 = (v41 ^ 0xCF615C0F) & (2 * (v41 & 0xCC701E8F)) ^ v41 & 0xCC701E8F;
      v43 = ((2 * (v41 ^ 0x5F61691D)) ^ 0x2622EF24) & (v41 ^ 0x5F61691D) ^ (2 * (v41 ^ 0x5F61691D)) & 0x93117792;
      v44 = v43 ^ 0x91111092;
      v45 = (v43 ^ 0x2006600) & (4 * v42) ^ v42;
      v46 = ((4 * v44) ^ 0x4C45DE48) & v44 ^ (4 * v44) & 0x93117790;
      v47 = (v46 ^ 0x15600) & (16 * v45) ^ v45;
      v48 = ((16 * (v46 ^ 0x93102192)) ^ 0x31177920) & (v46 ^ 0x93102192) ^ (16 * (v46 ^ 0x93102192)) & 0x93117790;
      v49 = v47 ^ 0x93117792 ^ (v48 ^ 0x11117100) & (v47 << 8);
      v50 = v41 ^ (2 * ((v49 << 16) & 0x13110000 ^ v49 ^ ((v49 << 16) ^ 0x77920000) & (((v48 ^ 0x82000692) << 8) & 0x13110000 ^ (((v48 ^ 0x82000692) << 8) ^ 0x11770000) & (v48 ^ 0x82000692) ^ 0x2000000)));
      v51 = (((LODWORD(STACK[0x28C]) ^ 0x710F3429) - 1896821801) ^ ((LODWORD(STACK[0x28C]) ^ 0xDF118300) + 552500480) ^ ((LODWORD(STACK[0x28C]) ^ 0x26597D04) - 643398916)) + (((LODWORD(STACK[0x28C]) ^ 0xCBCE4935) + 875673291) ^ ((LODWORD(STACK[0x28C]) ^ 0x4572A2A7) - 1165140647) ^ ((LODWORD(STACK[0x28C]) ^ 0x6FB21BF) - 117121471)) + 1413273623;
      v52 = (v51 ^ 0x3940BB12) & (2 * (v51 & 0xBC52BC43)) ^ v51 & 0xBC52BC43;
      v53 = ((2 * (v51 ^ 0x1145AB10)) ^ 0x5A2E2EA6) & (v51 ^ 0x1145AB10) ^ (2 * (v51 ^ 0x1145AB10)) & 0xAD171752;
      v54 = v53 ^ 0xA5111151;
      v55 = (v53 ^ 0x60200) & (4 * v52) ^ v52;
      v56 = ((4 * v54) ^ 0xB45C5D4C) & v54 ^ (4 * v54) & 0xAD171750;
      v57 = (v56 ^ 0xA4141540) & (16 * v55) ^ v55;
      v58 = ((16 * (v56 ^ 0x9030213)) ^ 0xD1717530) & (v56 ^ 0x9030213) ^ (16 * (v56 ^ 0x9030213)) & 0xAD171750;
      v59 = v57 ^ 0xAD171753 ^ (v58 ^ 0x81111500) & (v57 << 8);
      LODWORD(STACK[0x288]) = v50 ^ 0x44353B86;
      LODWORD(STACK[0x28C]) = v51 ^ (2 * ((v59 << 16) & 0x2D170000 ^ v59 ^ ((v59 << 16) ^ 0x17530000) & (((v58 ^ 0x2C060243) << 8) & 0x2D170000 ^ 0x28000000 ^ (((v58 ^ 0x2C060243) << 8) ^ 0x17170000) & (v58 ^ 0x2C060243)))) ^ 0x641D58C8;
      v60 = (((v35 ^ 0x1A1F8E5D) - 438275677) ^ ((v35 ^ 0x40FAED8B) - 1090186635) ^ ((v35 ^ 0xD2A2A9FB) + 761091589)) + (((LODWORD(STACK[0x290]) ^ 0x36BE959C) - 918459804) ^ ((LODWORD(STACK[0x290]) ^ 0x1E463733) - 507918131) ^ ((LODWORD(STACK[0x290]) ^ 0xA0BF6882) + 1598068606)) + 1980392985;
      v61 = (((v36 ^ 0x2F6237EC) - 794965996) ^ ((v36 ^ 0x679774CF) - 1737979087) ^ ((v36 ^ 0xC0B2890E) + 1062041330)) + (((LODWORD(STACK[0x294]) ^ 0x32CFE453) - 852485203) ^ ((LODWORD(STACK[0x294]) ^ 0xD210A6F3) + 770660621) ^ ((LODWORD(STACK[0x294]) ^ 0x6898888D) - 1754826893)) + 617878468;
      LODWORD(STACK[0x290]) = v60 ^ ((v60 ^ 0x65A975C5) - 13870202) ^ ((v60 ^ 0xCA718EA1) + 1358209250) ^ ((v60 ^ 0x3055D524) - 1429144731) ^ ((v60 ^ 0xFAF7FFFF) + 1618137536) ^ 0xED3D1B92;
      LODWORD(STACK[0x294]) = v61 ^ ((v61 ^ 0x8206514C) + 1774047706) ^ ((v61 ^ 0x8E197E6) - 480635020) ^ ((v61 ^ 0xE15CCE0F) + 182931099) ^ ((v61 ^ 0x7FFF77CF) - 1807419557) ^ 0x9C03B547;
      return v64(756482048, &STACK[0x240], 2467395472, a4, a5, a6, a7, 3931519142, a9, a10, a11, v63, a13, a14, a15, a16, a17);
    }
  }
}

uint64_t sub_22D36A014(void *a1)
{
  if (a1[5])
  {
    v3 = (a1[7] | a1[3]) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(v2 + 8 * ((v4 * (v1 + ((v1 - 2049796486) & 0x7A2D67FD) - 3424)) | v1)))();
}

uint64_t sub_22D36A0EC@<X0>(int a1@<W8>, uint64_t a2, int a3, int a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 - 565;
  v13 = a1 - 8;
  *(v11 - 120) = a1 - 1037613739 * (((v8 | 0x4988A61B) - (v8 & 0x4988A61B)) ^ 0x988A8B64) + 46;
  *(v11 - 136) = v9;
  *(v11 - 128) = a8;
  *(v11 - 112) = a5;
  *(v11 - 104) = v9;
  v14 = (*(v10 + 8 * (a1 ^ 0xEAC)))(v11 - 136);
  return (*(v10 + 8 * (((((a6 >> 1) & a4) == (v12 ^ 0x500)) * ((v12 | 0x240) ^ 0x730)) ^ v13)))(v14);
}

uint64_t sub_22D36A1B8(uint64_t a1, uint64_t a2)
{
  *(v2 + 1424) = v3;
  *(*(a1 + 96) + 520) = *(a2 + 8) + 1;
  return 0;
}

uint64_t sub_22D36A1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (v5 <= 0x10 && ((1 << v5) & 0x14103) != 0)
  {
    return (*(v7 + 8 * ((2035 * (((((v6 + 819540473) & 0x9ED607B6) - 1045) & *(v9 + v10 * v8 + 40)) == 0)) ^ (v6 - 810600047))))();
  }

  else
  {
    return (*(v7 + 8 * ((111 * ((((*(v9 + v10 * v8 + 40) & 8) == 0) ^ (37 * ((a5 + 33) ^ 0x9B))) & 1)) ^ (v6 - 810599619))))(4294925278);
  }
}

uint64_t sub_22D36A2A8()
{
  v9 = (**(v8 + 8) ^ v5) - (**(v7 + 8) ^ v5);
  **(v0 + 8) = v9 + v5 - (v6 & (2 * v9));
  return (*(v4 + 8 * ((1476 * ((v2 ^ v3) - 958 == v1)) ^ v2)))(0xFFFFFFFFLL);
}

uint64_t sub_22D36A3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, unsigned int a20)
{
  v28 = &a16;
  a16 = a15;
  HIDWORD(a17) = -843532609 * ((v28 & 0xD571959 | ~(v28 | 0xD571959)) ^ 0xAEE5B223) + 893672457 * v26 + 160639446;
  LODWORD(a18) = (843532609 * ((v28 & 0xD571959 | ~(v28 | 0xD571959)) ^ 0xAEE5B223)) ^ 0xC5;
  (*(v27 + 19152))(&a16);
  a16 = a15;
  HIDWORD(a17) = -843532609 * (&a16 ^ 0x5C4D5485) + 893672457 * v25 + 160639446;
  LODWORD(a18) = (843532609 * (&a16 ^ 0x5C4D5485)) ^ 0xC5;
  (*(v27 + 19152))(&a16);
  v29 = 1037613739 * (((&a16 | 0xDCC6B609) - &a16 + (&a16 & 0x233949F0)) ^ 0xDC49B76);
  a17 = a15;
  a18 = v23;
  a19 = v29 ^ 0x3A5;
  a20 = ((2 * v24) & 0xEB262FFA) + (v24 ^ 0x759317FD) - 536936632 + v29;
  (*(v27 + 18912))(&a16);
  v30 = 1037613739 * (((&a16 ^ 0xEE5C9BA3) & 0x2C98109F | ~(&a16 ^ 0xEE5C9BA3 | 0x2C98109F)) ^ 0xEC3959BC);
  a17 = a15;
  a18 = v21;
  a19 = v30 ^ 0x3A5;
  a20 = (v22 ^ 0x5DBF57F7) + ((2 * v22) & 0xBB7EAFEE) - 137183410 + v30;
  (*(v27 + 18912))(&a16);
  v31 = -843532609 * (((&a16 | 0x87B654AD) - (&a16 & 0x87B654AD)) ^ 0xDBFB0028) + 893672457 * *v20 + 160639446;
  a16 = a15;
  HIDWORD(a17) = v31;
  LODWORD(a18) = (843532609 * (((&a16 | 0x87B654AD) - (&a16 & 0x87B654AD)) ^ 0xDBFB0028)) ^ 0xC5;
  v32 = (*(v27 + 19152))(&a16);
  return (*(v27 + 8 * ((427 * (a17 == -1541908459)) ^ 0x651u)))(v32);
}

uint64_t sub_22D36A69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  *(v15 - 136) = v13 - ((2 * (((v15 - 136) ^ 0xCAE5535C) & 0x1389BD54) - ((v15 - 136) ^ 0xCAE5535C) + 1819689641) ^ 0x34452E51) * v14 + 1183;
  *(v15 - 128) = &a12;
  *(v15 - 120) = a11;
  v16 = (*(v12 + 8 * (v13 + 1568)))(v15 - 136);
  v17 = *(v15 - 112) == 3 * (v13 ^ 0x3AA) + 852453664;
  return (*(v12 + 8 * ((4 * v17) | (8 * v17) | v13)))(v16);
}

uint64_t sub_22D36A7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v18 = v14 & 0x90B4E1EF;
  *(v17 - 136) = v18 - 210068311 * ((v17 - 136) ^ 0x92D63FA4) + 1619;
  *(v17 - 128) = v15;
  *(v17 - 120) = a14;
  v19 = (*(v16 + 8 * (v18 + 2004)))(v17 - 136);
  return (*(v16 + 8 * ((111 * ((((((v18 + 115) | 0x100) - 446) ^ ((*(v17 - 112) - 852454266) < 0xE191CF5E)) & 1) == 0)) ^ v18)))(v19);
}

void sub_22D36A860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v9 = *(v7 + 16);
  **(v7 + 24) = v6;
  *v9 = a6;
  *v7 = *(v8 + 24);
}

uint64_t sub_22D36AAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, unsigned int a17, char *a18, unsigned int a19)
{
  v22 = 1082434553 * (&a16 ^ 0x9B47F68A);
  a16 = 1320293250 - v22;
  a17 = v22 + 1219383131;
  LODWORD(a18) = v22 ^ 0x28B;
  HIDWORD(a18) = 1953011063 - v22;
  (*(v19 + 19272))(&a16);
  a19 = 2066391179 * (((&a16 | 0x7B6F19D8) - (&a16 & 0x7B6F19D8)) ^ 0xD4489BC0) + 1020;
  a18 = &a12;
  v23 = (*(v19 + 19160))(&a16);
  return (*(v19 + 8 * ((1068 * (a16 == v21)) ^ v20)))(v23);
}

uint64_t sub_22D36ABEC@<X0>(int a1@<W0>, int a2@<W4>, unint64_t a3@<X6>, int a4@<W8>)
{
  v11 = (a3 >> (5 * (v9 ^ 0xE9u) + 9)) + HIDWORD(v8) + (*(v10 + 4 * v4) ^ (a4 + (v9 ^ 0xE50u) - 2258));
  *(v10 + 4 * a2) = v11 + a4 - (a1 & (2 * v11));
  *(v10 + 4 * v4) = HIDWORD(v11) | a4;
  return (*(v7 + 8 * (v9 ^ (3740 * (v6 + 1 == v5)))))();
}

uint64_t sub_22D36AD54(uint64_t a1)
{
  v6 = (v3 ^ 0xFFFFFFFFFFFFFC59 ^ (2 * v4) ^ 0xB7Eu) + v2;
  *(a1 - 7 + v6) = *(v1 - 7 + v6);
  return (*(v5 + 8 * ((159 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

uint64_t sub_22D36ADAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v31 = *(v26 + 4 * (v29 - 1));
  *(v26 + 4 * v29) = ((1566083941 * (v31 ^ (v31 >> 30))) ^ *(v26 + 4 * v29)) - v29;
  v32 = v24 + 252760452 + v25;
  *(v30 - 136) = v32;
  *(v30 - 120) = (v24 + 55969578) ^ v25;
  *(v30 - 112) = v24 + 252760452 - v25 - 103;
  *(v28 + 16) = v29 + 1 + v25;
  *(v28 + 32) = a24;
  *(v30 - 152) = 1 - v25;
  *(v30 - 148) = v32 - 48;
  v33 = (*(v27 + 8 * (v24 + 2031)))(v30 - 152);
  return (*(v27 + 8 * *(v30 - 116)))(v33);
}

uint64_t sub_22D36B364(uint64_t a1, uint64_t a2)
{
  v7 = (a2 + v4);
  *v7 = v6;
  v7[1] = v6;
  return (*(v5 + 8 * ((25 * (((v2 + 245) ^ 0x430) == (v3 & 0x30))) ^ v2)))();
}

uint64_t sub_22D36B3AC()
{
  v6 = *(v9 + 40);
  v7 = 50899313 * ((((v5 - 144) | 0xC3E50DEA) - (v5 - 144) + ((v5 - 144) & 0x3C1AF210)) ^ 0xD7CA9071);
  *(v5 - 144) = v0 - v7 + 1365;
  *(v5 - 136) = v10;
  *(v5 - 128) = v7 ^ 0x7F11DE15;
  (*(v3 + 8 * (v0 ^ 0x907)))(v5 - 144);
  *(v5 - 144) = v0 - 1785193651 * ((434899544 - ((v5 - 144) | 0x19EC0A58) + ((v5 - 144) | 0xE613F5A7)) ^ 0xF5CF1987) + 1083;
  *(v5 - 120) = v4;
  *(v5 - 112) = v10;
  *(v5 - 104) = v4;
  *(v5 - 136) = v2;
  *(v5 - 128) = v1;
  (*(v3 + 8 * (v0 + 2236)))(v5 - 144);
  *(v5 - 136) = v0 + 1388665877 * (((v5 - 144) & 0x6B99066A | ~((v5 - 144) | 0x6B99066A)) ^ 0x19CB9B79) + 300;
  *(v5 - 144) = v6;
  *(v5 - 128) = v4;
  return (*(v3 + 8 * (v0 ^ 0x9F4)))(v5 - 144);
}

uint64_t sub_22D36B5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char *a15, unsigned int a16)
{
  a16 = 2066391179 * ((2 * (&a14 & 0x4821548) - &a14 + 2071849651) ^ 0xD45A68AB) + 1020;
  a15 = &a10;
  v18 = (*(v17 + 19160))(&a14);
  return (*(v17 + 8 * ((127 * (((a14 == v16) ^ 0xCF) & 1)) ^ 0x13Eu)))(v18);
}

uint64_t sub_22D36B6B8()
{
  v12.val[1].i64[0] = (v3 + 13) & 0xF;
  v12.val[1].i64[1] = (v3 + 12) & 0xF;
  v12.val[2].i64[0] = (v3 + 11) & 0xF;
  v12.val[2].i64[1] = (v3 + 10) & 0xF;
  v12.val[3].i64[0] = (v3 + 9) & 0xF;
  v12.val[3].i64[1] = v3 & 0xF ^ 8;
  v8 = *(v7 - 152);
  v13.val[0].i64[0] = (v3 + 7) & 0xF;
  v13.val[0].i64[1] = (v3 + 6) & 0xF;
  v13.val[1].i64[0] = (v3 + 5) & 0xF;
  v13.val[1].i64[1] = (v3 + 4) & 0xF;
  v13.val[2].i64[0] = (v3 + 3) & 0xF;
  v13.val[2].i64[1] = (v3 + 2) & 0xF;
  v13.val[3].i64[0] = (v3 + 1) & 0xF;
  v13.val[3].i64[1] = v3 & 0xF;
  v9 = vqtbl4q_s8(v13, xmmword_22D5B62D0).u64[0];
  v10.i64[0] = 0x7373737373737373;
  v10.i64[1] = 0x7373737373737373;
  v12.val[0].i64[0] = ((v5 + 1731) ^ 0x90DLL) & v4;
  v12.val[0].i64[1] = (v3 + 14) & 0xF;
  v13.val[3].i64[0] = vqtbl4q_s8(v12, xmmword_22D5B62D0).u64[0];
  v13.val[3].i64[1] = v9;
  v13.val[0] = vrev64q_s8(vmulq_s8(v13.val[3], v10));
  *(v3 + v6 - 16) = veorq_s8(veorq_s8(veorq_s8(*(v1 + v12.val[0].i64[0] - 15), *(v3 + v6 - 16)), veorq_s8(*(v0 + v12.val[0].i64[0] - 15), *(v12.val[0].i64[0] + v2 - 14))), vextq_s8(v13.val[0], v13.val[0], 8uLL));
  return (*(v8 + 8 * ((2008 * ((v3 & 0x10) == 16)) ^ v5)))(v3 + v6 - 32, (v3 & 0x10) - 16, 2317);
}

uint64_t sub_22D36B948@<X0>(int a1@<W4>, int a2@<W8>)
{
  if (v2 >= v3)
  {
    v6 = 1541866443;
  }

  else
  {
    v6 = a1;
  }

  return (*(v4 + 8 * ((1406 * (v6 == ((a2 + v5) ^ (a1 + 465)))) ^ (a2 + v5 + 338))))();
}

uint64_t sub_22D36B99C()
{
  v5 = (v4 - 228 + v2);
  *v5 = 0xB0B0B0B0B0B0B0B0;
  v5[1] = 0xB0B0B0B0B0B0B0B0;
  return (*(v3 + 8 * (v1 | (4 * (((v1 + 1595) ^ 0x6F6) == (v0 & 0x30))))))();
}

uint64_t sub_22D36B9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  v14 = 2066391179 * ((1316441064 - ((v13 - 168) | 0x4E774BE8) + ((v13 - 168) | 0xB188B417)) ^ 0x1EAF360F);
  *(v13 - 160) = a2;
  *(v13 - 168) = v11 - v14 + 679;
  *(v13 - 164) = a11 - v14;
  v15 = (*(v12 + 8 * (v11 + 2389)))(v13 - 168);
  v16 = STACK[0x284];
  *(&STACK[0x240] + (v16 & 0x3F)) = 48;
  return (*(v12 + 8 * ((755 * ((v16 & 0x3Fu) > ((v11 - 1829513305) & 0x6D0C2CFBu) - 1156)) ^ v11)))(v15);
}

uint64_t sub_22D36BB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, __int16 a12, char a13, char *a14, int a15, unsigned int a16, char *a17, uint64_t a18)
{
  v22 = 742307843 * ((&a14 & 0xB7D5C5FC | ~(&a14 | 0xB7D5C5FC)) ^ 0x5608B756);
  a15 = v22 + v21 - 393;
  a16 = v22 + 1512253506;
  a17 = &a11;
  a18 = v18;
  a14 = &a13;
  v23 = (*(v19 + 8 * (v21 + 1558)))(&a14);
  return (*(v19 + 8 * ((1046 * (*(v18 + 24) == (((v21 - 703) | 0x130) ^ (v20 + 400)))) ^ v21)))(v23);
}

uint64_t sub_22D36BD4C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7)
{
  v11 = v9 > a5;
  if (v11 == v7 + a6 < ((v10 + 491) ^ a7))
  {
    v11 = v7 + a6 < a1;
  }

  return (*(v8 + 8 * ((63 * v11) ^ v10)))();
}

uint64_t sub_22D36C264(uint64_t a1, int a2, int8x16_t a3, int8x16_t a4)
{
  v7 = (v6 - 32);
  v8 = (a1 - 32);
  v9 = vaddq_s8(vsubq_s8(*v8, vandq_s8(vaddq_s8(*v8, *v8), a3)), a4);
  v7[-1] = vaddq_s8(vsubq_s8(v8[-1], vandq_s8(vaddq_s8(v8[-1], v8[-1]), a3)), a4);
  *v7 = v9;
  return (*(v4 + 8 * (((v5 == 32) * (a2 + 1972)) ^ a2)))();
}

uint64_t sub_22D36C274@<X0>(unsigned int a1@<W8>)
{
  v7 = *(v6 - 220 + a1 + 72);
  v8 = ((2 * a1) & 0xF3BDFFF8) + (a1 ^ 0xF9DEFFFC) + v3;
  *(v4 + v8) = (((v1 - 63) | 0x80) - 67) ^ v7;
  *(v4 + v8 + 1) = (BYTE1(v7) ^ 0xCA) - ((v7 >> 7) & 0x60) - 80;
  *(v4 + v8 + 2) = (BYTE2(v7) ^ 0x47) - ((v7 >> 15) & 0x60) - 80;
  *(v4 + v8 + 3) = (HIBYTE(v7) ^ 0x88) - ((v7 >> 23) & 0x60) - 80;
  return (*(v5 + 8 * (((a1 + 4 < *(v6 - 128)) * v2) ^ v1)))();
}

uint64_t sub_22D36C474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, int a17, char *a18, unsigned int a19)
{
  a18 = &a15;
  a19 = 2066391179 * (((&a17 | 0xDCB6B808) - &a17 + (&a17 & 0x234947F0)) ^ 0x73913A10) + 1020;
  v21 = (*(v20 + 19160))(&a17);
  return (*(v20 + 8 * (((2 * (a17 == -1541908459)) | (16 * (a17 == -1541908459))) ^ v19)))(v21);
}

uint64_t sub_22D36C4FC@<X0>(uint64_t a1@<X8>, int8x16_t a2@<Q0>, int8x16_t a3@<Q1>)
{
  v11 = v4 + 32;
  v12 = (v7 ^ v11) + v3;
  v13 = *(v9 + v12 - 15);
  v14 = *(v9 + v12 - 31);
  v15 = a1 + v12;
  *(v15 - 15) = vaddq_s8(vsubq_s8(v13, vandq_s8(vaddq_s8(v13, v13), a2)), a3);
  *(v15 - 31) = vaddq_s8(vsubq_s8(v14, vandq_s8(vaddq_s8(v14, v14), a2)), a3);
  return (*(v10 + 8 * (((v6 == v11) * v8) ^ (v5 + 414))))();
}

uint64_t sub_22D36C540()
{
  v5 = (v2 + v4 - 228 + 8);
  *(v5 - 1) = 0xB0B0B0B0B0B0B0B0;
  *v5 = 0xB0B0B0B0B0B0B0B0;
  return (*(v3 + 8 * ((((v0 & 0xFFFFFFFFFFFFFFF0) == 16) * (((v1 ^ 0x63D) + 493) ^ 0x522)) ^ v1 ^ 0x63D)))();
}

void sub_22D36C808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v17 - 112) = &a15;
  *(v17 - 128) = a11;
  *(v17 - 120) = v16 + 1388665877 * ((((v17 - 128) | 0xEE1B0107) + (~(v17 - 128) | 0x11E4FEF8)) ^ 0x63B663EA) + 278;
  (*(v15 + 8 * (v16 ^ 0x90E)))(v17 - 128);
  JUMPOUT(0x22D36C870);
}

uint64_t sub_22D36C97C(uint64_t a1, double a2, double a3, double a4, double a5, int8x16_t a6, int8x16_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = (a11 + v11);
  v17 = vaddq_s8(vsubq_s8(v16[1], vandq_s8(vaddq_s8(v16[1], v16[1]), a6)), a7);
  *&STACK[0x240] = vaddq_s8(vsubq_s8(*v16, vandq_s8(vaddq_s8(*v16, *v16), a6)), a7);
  *&STACK[0x250] = v17;
  return (*(v15 + 8 * (((((v12 - 573) ^ v13) == 64) * v14) ^ v12)))(a1, v11 + 64);
}

uint64_t sub_22D36CA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, int a18, char *a19, unsigned int a20)
{
  a19 = &a15;
  a20 = 2066391179 * ((((2 * &a18) | 0x9B1C5796) - &a18 - 1301162955) ^ 0xE2A9A9D3) + 1020;
  v22 = (*(v21 + 19160))(&a18);
  return (*(v21 + 8 * ((494 * (a18 == ((v20 + 1051) ^ 0x425))) ^ 0x6B8u)))(v22);
}

uint64_t sub_22D36CB50()
{
  v0.n128_u64[0] = 0x6060606060606060;
  v0.n128_u64[1] = 0x6060606060606060;
  v1.n128_u64[0] = 0xB0B0B0B0B0B0B0B0;
  v1.n128_u64[1] = 0xB0B0B0B0B0B0B0B0;
  return sub_22D36CB78(v0, v1);
}

uint64_t sub_22D36CB78@<X0>(int a1@<W3>, uint64_t a2@<X8>, int8x16_t a3@<Q0>, int8x16_t a4@<Q1>)
{
  v12 = (v7 + v6 + v4);
  v13 = vaddq_s8(vsubq_s8(*(v11 + v6 + 16), vandq_s8(vaddq_s8(*(v11 + v6 + 16), *(v11 + v6 + 16)), a3)), a4);
  *v12 = vaddq_s8(vsubq_s8(*(v11 + v6), vandq_s8(vaddq_s8(*(v11 + v6), *(v11 + v6)), a3)), a4);
  v12[1] = v13;
  return (*(v10 + 8 * (((v8 + v6 == a2) * v9) ^ (a1 + v5 + 621))))();
}

uint64_t sub_22D36CD2C@<X0>(uint64_t a1@<X1>, char a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t (*a15)(uint64_t, unint64_t *))
{
  v21 = (a1 + v16);
  *v21 = a2;
  v21[1] = v15;
  v21[2] = v17;
  *(a1 + ((2 * (a13 + 204)) ^ 0x39BLL) + v16) = v18;
  v22 = (2 * (a13 + 204)) ^ 0x3B2;
  v23 = 2066391179 * ((-307205437 - ((v20 - 168) | 0xEDB06AC3) + ((v20 - 168) | 0x124F953C)) ^ 0xBD681724);
  *(v20 - 160) = a1;
  *(v20 - 168) = v22 - v23 + 661;
  *(v20 - 164) = 114591006 - v23;
  v24 = (*(v19 + 8 * (v22 + 2371)))(v20 - 168);
  return a15(v24, &STACK[0x240]);
}

uint64_t sub_22D36CD6C@<X0>(uint64_t a1@<X8>)
{
  if (v4 >= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = -v4;
  }

  v6 = ((v3 - 281) ^ 0xFFFFFFFFFFFFFE61) + v5;
  *(*(v1 + 8) + 4 * v6) = *(*(a1 + 8) + 4 * v6);
  return (*(v2 + 8 * ((1192 * (v6 == 0)) ^ v3)))();
}

uint64_t sub_22D36CDB0()
{
  v4 = v3 + 43;
  v5 = (v4 ^ 0x4ECF32B) + v2;
  v6 = v5 < (v4 ^ 0x3Du) + 2035647571;
  v7 = v1 + 2035648222 < v5;
  if (v1 > 0x86AA7921 != v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  return (*(v0 + 8 * ((81 * !v8) ^ v4)))();
}

uint64_t sub_22D36CE30()
{
  v4 = v3 - 661732416 + ((v2 + 1614254067) & 0x9FC86EBE) + 40755960;
  v5 = v0 - 891982263;
  v6 = (v5 < 0x10E722E1) ^ (v4 < 0x10E722E1);
  v7 = v4 > v5;
  if (v6)
  {
    v7 = v4 < 0x10E722E1;
  }

  return (*(v1 + 8 * ((!v7 * (((v2 - 1244) | 0x64) - 351)) ^ v2)))();
}

uint64_t sub_22D36CECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v19 = 2066391179 * ((v18 - 144) ^ 0xAF278218);
  *(v18 - 128) = a15;
  *(v18 - 144) = v19 + v17 + 442;
  *(v18 - 140) = (((3 * (v17 ^ 0x1FD)) ^ (v17 + 1403817644)) * v15 - 743595658) ^ v19;
  v20 = (*(v16 + 8 * (v17 + 1891)))(v18 - 144);
  return (*(v16 + 8 * ((7 * (*(v18 - 136) == 1450726857)) ^ v17)))(v20);
}

uint64_t sub_22D36CFB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(a2 + v5);
  return (*(v4 + 8 * ((479 * (v5 == (v3 ^ 0x180u) - 1396)) ^ v3)))();
}

uint64_t sub_22D36CFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16)
{
  a15 = (843532609 * ((&a15 & 0x7F94A759 | ~(&a15 | 0x7F94A759)) ^ 0xDC260C23)) ^ 0xDFABAF92;
  v19 = (*(v16 + 18752))(&a15);
  return (*(v16 + 8 * (((a16 == -1541908459) * (v18 - 2124582293)) ^ v17)))(v19);
}

uint64_t sub_22D36D07C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unsigned int a8@<W8>)
{
  v10 = *(a1 + 64);
  *v8 = 0;
  return (*(v9 + 8 * ((1013 * (v10 != 0)) ^ a8)))(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_22D36D0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, unsigned int a20)
{
  v26 = (((&a16 | 0x3A20BF6B) - &a16 + (&a16 & 0xC5DF4090)) ^ 0x666DEBEE) * v24;
  a16 = a11;
  HIDWORD(a17) = 893672457 * v22 - v26 + 160639446;
  LODWORD(a18) = (69 * v25 - 286) ^ v26;
  (*(v23 + 8 * (69 * v25 + 1911)))(&a16);
  v27 = 1037613739 * ((2 * (&a16 & 0xC411F80) - &a16 - 205594497) ^ 0x22BCCD00);
  a17 = a11;
  a18 = v20;
  a19 = (69 * v25 + 450) ^ v27;
  a20 = (v21 ^ 0x7FFA77FF) + ((2 * v21) & 0xFFF4EFFE) + 69 * v25 - 354 - 711483707 + v27;
  v28 = (*(v23 + 8 * ((69 * v25) ^ 0x8DFu)))(&a16);
  return (*(v23 + 8 * ((928 * (a16 == -1541908459)) ^ (69 * v25))))(v28);
}

uint64_t sub_22D36D228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (((v4 + v2 + 1379) | 0xE0u) ^ 0xFFFFFFFFFFFFF907) + v3;
  v7 = *(a2 + v6 - 15);
  v8 = *(a2 + v6 - 31);
  v9 = a1 + v6;
  *(v9 - 15) = v7;
  *(v9 - 31) = v8;
  return (*(v5 + 8 * ((436 * ((v3 & 0xFFFFFFE0) != 32)) ^ (v4 + v2))))();
}

uint64_t sub_22D36D6D4@<X0>(int a1@<W8>, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t *a5, int a6, unsigned int a7)
{
  v11 = v7 | 0x280;
  v12 = (((&a3 | 0x4767EA4C) - (&a3 & 0x4767EA4C)) ^ 0x9665C733) * a1;
  a3 = v12 - 13364308;
  a6 = ((v7 | 0x280) - 141) ^ v12;
  a7 = 1114312313 - v12;
  a4 = v8;
  a5 = &a2;
  v13 = (*(v9 + 8 * ((v7 | 0x280) + 1826)))(&a3);
  return (*(v9 + 8 * (((*(v8 + 24) == v10 + 2342) * ((v11 + 300886293) & 0xEE10D5EB ^ 0xBE1)) ^ v11)))(v13);
}

void sub_22D36D7E8()
{
  v1 = (v0 + 908);
  vld1q_dup_f32(v1);
  JUMPOUT(0x22D36D810);
}

uint64_t sub_22D36DD50@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = (v3 ^ 0xFFFFFFFFFFFFFD7FLL) + v2;
  v6 = *(a1 + v5 - 15);
  v7 = *(a1 + v5 - 31);
  v8 = a2 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(v4 + 8 * (((2 * ((v2 & 0xFFFFFFE0) != 32)) | (4 * ((v2 & 0xFFFFFFE0) != 32))) ^ (v3 + 9))))();
}

uint64_t sub_22D36DDF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unsigned int a25, unsigned int a26, uint64_t a27, int a28)
{
  v31 = 2066391179 * ((2 * (&a25 & 0xFF9C2B8) - &a25 + 1879457091) ^ 0xDF21BF5B);
  a28 = v28 - v31 + 217;
  a27 = v29;
  a25 = v31 + ((a3 - a14 + 488397856) ^ 0x2FF67DFF) + ((2 * (a3 - a14 + 488397856)) & 0x5FECFBFE) - 715153441;
  a26 = ((((a3 & 0xFFFFFFF0) + 16) ^ 0x7EAB5CE6) - 1678400514 + ((((a3 & 0xFFFFFFF0) + 16) << ((v28 + 96) ^ 6)) & 0xFD56B9C0)) ^ v31;
  v34 = v28;
  v32 = (*(v30 + 8 * (v28 + 1976)))(&a25);
  return (*(v30 + 8 * ((1014 * (*(v29 + 24) == -1541908459)) ^ v34)))(v32);
}

uint64_t sub_22D36DF14(__n128 a1, __n128 a2)
{
  a1.n128_u32[0] = 6291552;
  a1.n128_u16[2] = 96;
  a1.n128_u16[3] = 96;
  a2.n128_u32[0] = 11534512;
  a2.n128_u16[2] = 176;
  a2.n128_u16[3] = 176;
  return sub_22D36DF34(a1, a2);
}

uint64_t sub_22D36DF34@<X0>(uint64_t a1@<X8>, int8x8_t a2@<D0>, int16x4_t a3@<D1>, uint8x8_t a4@<D2>)
{
  a4.i32[0] = *(v4 + v8 - v6);
  v11 = vmovl_u8(a4).u64[0];
  *(a1 + v8 - v6) = vuzp1_s8(vadd_s16(vsub_s16(v11, vand_s8(vadd_s16(v11, v11), a2)), a3), a2).u32[0];
  return (*(v10 + 8 * (((v6 + 4 == (v5 ^ v7) - 494) * v9) ^ v5)))();
}

uint64_t sub_22D36DF88()
{
  v4 = v0 + 1292;
  v5 = (*(v1 + 8 * (v0 + 1504)))(*v3);
  v6 = *v2 == (((v4 ^ 0x991) + 688) ^ 0x3FA);
  return (*(v1 + 8 * (((16 * v6) | (32 * v6)) ^ v4)))(v5);
}

uint64_t sub_22D36E010(uint64_t a1, char a2)
{
  v8 = *(v7 - 228 + v2 + 72);
  v9 = ((2 * v2) & 0xEB5CCFF0) + (v2 ^ 0x75AE67FB) + v3;
  *(v5 + v9) = v8 ^ 0x9D;
  v10 = v8 >> (((v4 - 53) | 0xE5) ^ (a2 - 8));
  *(v5 + v9 + 1) = (v10 ^ 0xCA) - ((2 * v10) & 0x60) - 80;
  *(v5 + v9 + 2) = (BYTE2(v8) ^ 0x47) - ((v8 >> 15) & 0x60) - 80;
  *(v5 + v9 + 3) = (HIBYTE(v8) ^ 0x88) - ((v8 >> 23) & 0x60) - 80;
  return (*(v6 + 8 * ((138 * (v2 + 4 < *(v7 - 136))) ^ v4)))();
}

uint64_t sub_22D36E184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  *(v18 - 144) = v13 + 864 - 1785193651 * ((2 * ((v18 - 144) & 0x6BEB1330) - (v18 - 144) - 1810567992) ^ 0x87C800E8) + 219;
  *(v18 - 136) = v15;
  *(v18 - 128) = v14;
  *(v18 - 112) = &a13;
  *(v18 - 104) = &a11;
  *(v18 - 120) = &a11;
  v19 = (*(v16 + 8 * (v13 + 2236)))(v18 - 144);
  return (*(v16 + 8 * ((((2 * v13) ^ 0x36) * ((v17 - 759374590) > 0x7FFFFFFE)) ^ v13)))(v19);
}

uint64_t sub_22D36E23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, char a40)
{
  if (a40 == 2)
  {
    v43 = (v54 + 1029) | 0x200u;
    v44 = &a27 + v51 + 2056975680;
    v45 = ((*v44 ^ v50) << 24) | ((v44[1] ^ v50) << 16) | ((v44[2] ^ v50) << 8);
    *(v47 + 4 * (v52 ^ 0x1EA6BD50)) = (v45 | v44[3] ^ v50) + a7 - 2 * ((v45 | v44[3] ^ v50) & 0x24185817 ^ (v44[3] ^ v50) & 2);
    v46 = *(v49 + 8 * ((3811 * (v53 == 2056975680)) ^ v43));
    return v46(v43, v46, v53 + 16, 0, 0, 4204715365, a7, a8, a9, a10, a11, a12, a13, a14, a15);
  }

  else
  {
    if (a40 != 1)
    {
      JUMPOUT(0x22D355DBCLL);
    }

    v40 = *(&a27 + v51 + v48 + 2056974450) ^ v50 | ((*(&a27 + v51 + 2056975681) ^ v50) << 8) | ((*(&a27 + v51 + 2056975682) ^ v50) << 16) | ((*(&a27 + v51 + 2056975683) ^ v50) << 24);
    *(v47 + 4 * (v52 ^ 0x1EA6BD50)) = v40 + a7 - ((2 * v40) & 0x4830B02A);
    v41 = *(v49 + 8 * ((v54 + 1217) | (32 * (v53 == 2056975680))));
    return v41(v41, 0, 0, 2056951265, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
  }
}

uint64_t sub_22D36E244@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 ^ 0xC80u));

  return v3(v1);
}

uint64_t sub_22D36E354@<X0>(int a1@<W0>, unsigned int a2@<W8>)
{
  v10 = v3 < v4;
  *(v9 - 252 + a2) = *(v8 + v2) + (v7 ^ 0x30) - ((2 * *(v8 + v2)) & 0x60);
  v11 = v2 + 1;
  if (v10 == v11 > v5)
  {
    v10 = v11 + a1 < v3;
  }

  return (*(v6 + 8 * ((15 * !v10) ^ v7)))();
}

uint64_t sub_22D36E444@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7 = 21 * ((v4 - 120) ^ 0xDF);
  *v3 = a1;
  *v10 = a2;
  v8 = 43 * (v7 ^ 0x1E0);
  v14 = v12;
  v13 = v7 - ((((2 * &v13) | 0x203451AA) - &v13 + 1877333803) ^ 0x1DB74A39) * v6 - 242;
  (*(v5 + 8 * (v7 ^ 0x888)))(&v13);
  v13 = v8 - (&v13 ^ 0x8DAD62EC) * v6 + 112;
  v14 = v11;
  (*(v5 + 8 * (v8 + 2282)))(&v13);
  return v2 ^ 0xA4185815;
}

uint64_t sub_22D36E44C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t (*a21)(void))
{
  v23 = (((a7 ^ 0x64BB4857) - 1689995351) ^ ((a7 ^ 0x2F9A2B5E) - 798632798) ^ ((a7 ^ 0xC366A924) + 1016682204)) + (((*(v22 - 180) ^ 0x55822C9F) - 1434594463) ^ ((*(v22 - 180) ^ 0x3930CCDD) - 959499485) ^ ((*(v22 - 180) ^ 0xE4F52A6F) + 453694865)) - 2100663241;
  v24 = (v23 ^ 0x49D12302) & (2 * (v23 & 0x8DC52823)) ^ v23 & 0x8DC52823;
  v25 = ((2 * (v23 ^ 0x535B6302)) ^ 0xBD3C9642) & (v23 ^ 0x535B6302) ^ (2 * (v23 ^ 0x535B6302)) & 0xDE9E4B20;
  v26 = v25 ^ 0x42824921;
  v27 = (v25 ^ 0x1C1C0000) & (4 * v24) ^ v24;
  v28 = ((4 * v26) ^ 0x7A792C84) & v26 ^ (4 * v26) & 0xDE9E4B20;
  v29 = (v28 ^ 0x5A180800) & (16 * v27) ^ v27;
  v30 = ((16 * (v28 ^ 0x84864321)) ^ 0xE9E4B210) & (v28 ^ 0x84864321) ^ (16 * (v28 ^ 0x84864321)) & 0xDE9E4B20;
  v31 = v29 ^ 0xDE9E4B21 ^ (v30 ^ 0xC8840200) & (v29 << 8);
  v32 = (((a6 ^ 0x36ABFFBA) - 917241786) ^ ((a6 ^ 0xCC9E1EFA) + 862052614) ^ ((a6 ^ 0x72722B6D) - 1920084845)) + (((*(v22 - 176) ^ 0xC6BA5776) + 960866442) ^ ((*(v22 - 176) ^ 0xD43B0071) + 734330767) ^ ((*(v22 - 176) ^ 0x9AC69D2A) + 1698259670)) + 1199897193;
  *(v22 - 180) = v23 ^ (2 * ((v31 << 16) & 0x5E9E0000 ^ v31 ^ ((v31 << 16) ^ 0x4B210000) & (((v30 ^ 0x161A4921) << 8) & 0x5E9E0000 ^ 0x40940000 ^ (((v30 ^ 0x161A4921) << 8) ^ 0x1E4B0000) & (v30 ^ 0x161A4921)))) ^ 0x2CBE744C;
  *(v22 - 176) = v32 ^ ((v32 ^ 0x8662B66A) + 1332227995) ^ ((v32 ^ 0x645CA283) - 1386857612) ^ ((v32 ^ 0x2B760559) - 495149910) ^ ((v32 ^ 0xFFBD77BF) + 918023760) ^ 0xBEB2AC22;
  v33 = (((v21 ^ 0x9D4E59B2) + 1655809614) ^ ((v21 ^ 0xE0C84512) + 523746030) ^ ((v21 ^ 0xF5C1D68D) + 171846003)) + (((*(v22 - 172) ^ 0x45EA0D7) - 73310423) ^ ((*(v22 - 172) ^ 0xC6DB7FD0) + 958693424) ^ ((*(v22 - 172) ^ 0x4AC2152A) - 1254233386)) + 1744177566;
  v34 = (((a4 ^ 0x8A38E8B3) + 1975981901) ^ ((a4 ^ 0x43322BA4) - 1127361444) ^ ((a4 ^ 0x414D093A) - 1095567674)) + (((*(v22 - 168) ^ 0x6C18B5CA) - 1813558730) ^ ((*(v22 - 168) ^ 0xE459ED83) + 463868541) ^ ((*(v22 - 168) ^ 0x69264) - 430692)) + 2133695301;
  *(v22 - 172) = v33 ^ ((v33 ^ 0xA1E73B33) + 159297929) ^ ((v33 ^ 0x8DFE41D0) + 627559276) ^ ((v33 ^ 0x681C05A) - 1374139678) ^ ((v33 ^ 0x7DFECFFD) - 714652345) ^ 0xDF21BF69;
  *(v22 - 168) = v34 ^ ((v34 ^ 0x1AC95845) - 1951882926) ^ ((v34 ^ 0x21BA64B9) - 1327784530) ^ ((v34 ^ 0xAF16C5E8) + 1048001789) ^ ((v34 ^ 0xFAFBFFFF) + 1805256428) ^ 0xE6D9CCC6;
  return a21();
}

uint64_t sub_22D36E4E4()
{
  v7 = v3 - 1;
  *(v6 + v7) ^= *(v1 + (v7 & 0xF)) ^ *(v0 + (v7 & 0xF)) ^ (115 * (v7 & 0xF)) ^ *((v7 & 0xF) + v2 + 1);
  return (*(v5 + 8 * ((59 * (v7 == 0)) | (v4 - 178))))();
}

uint64_t sub_22D36E53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v13 = v6 > 0xF;
  v12 = (((a5 - 481) | 0x216u) - 1639) & (v9 + 15);
  v13 = v13 && (v5 - v11 - v9 + v12 + 1) > 0xF;
  v14 = v13 && v7 - v11 - v9 + v12 + 6 >= ((a5 + 451) | 0x69u) - 2141;
  v15 = v8 - v11 - v9 + v12 + 3;
  v17 = v14 && v15 > 0xF;
  return (*(v10 + 8 * ((214 * v17) ^ a5)))();
}

uint64_t sub_22D36E650(double a1)
{
  *(v4 - 1) = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

uint64_t sub_22D36E6D4@<X0>(int a1@<W0>, int a2@<W8>)
{
  HIDWORD(v14) = v13 ^ v8;
  LODWORD(v14) = v13 ^ a2;
  v15 = (a1 ^ 0x77B835D2) & (v12 ^ 0x292E844A) ^ a1 & 0xA1694E67;
  v16 = (v14 >> 27) + (((v2 ^ 0x284F021D) - 676266525) ^ ((v2 ^ 0x8C635C79) + 1939645319) ^ ((v2 ^ 0x2C6B9449) - 745247817)) + (v15 & 0x15F12A6C ^ 0xEB2ED5D3 ^ (v15 ^ 0xDED7FBBD) & (v6 & 0x20CD4F57 ^ 0xEA4B9F96 ^ (a1 ^ 0xA88A857A) & (v6 ^ (v9 + v5 - 169 - 247)))) + 1406961908 + (((*(v3 + 4 * (v4 + v10)) ^ 0x174BEBAA) - 390851498) ^ ((*(v3 + 4 * (v4 + v10)) ^ 0x4861CCDA) - 1214368986) ^ ((*(v3 + 4 * (v4 + v10)) ^ 0xFB327F65) + 80576667));
  return (*(v7 + 8 * ((2508 * (v4 + 1 == v11 + 4)) ^ v5)))(v16 ^ ((v16 ^ 0x4671558C) + 1970751339) ^ ((v16 ^ 0x95D33F23) - 1495978554) ^ ((v16 ^ 0x61B47868) + 1387424399) ^ ((v16 ^ 0x7EEFFFDE) + 1307176249) ^ 0x44BE2734);
}

uint64_t sub_22D36EA38@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27)
{
  v31 = (((a27 ^ 0x77A4012) - 1881494103) ^ a27 ^ ((a27 ^ 0xAD3D3E05) + 631100352) ^ ((a27 ^ 0x77FEFDFE) - 10612667) ^ ((v27 ^ 0x22467FA0) + (a27 ^ 0xAAE691AC))) != 0x775F1245 && (((((a27 ^ 0x12) - 87) ^ a27 ^ ((a27 ^ 5) - 64) ^ ((a27 ^ 0xFE) + 69)) ^ ((v27 ^ 0xA0) + (a27 ^ 0xAC))) & 0xF) == 5;
  v32 = *(v29 + 8 * (((((a1 - 1876829545) & 0x6FDE27F7 ^ 0xFFFFFDE2) + a1 + 158) * v31) ^ a1));
  *(v28 - 180) = -42899;
  return v32();
}

uint64_t sub_22D36ECEC@<X0>(int a1@<W8>)
{
  v4 = 2066391179 * (&v6 ^ 0xAF278218);
  v6 = (-1665354124 - v3 - ((1508686220 - (v3 << (a1 ^ 0xEE))) & 0xDF8CB35C)) ^ v4;
  v7 = v2;
  v8 = a1 - v4 + 67;
  return (*(v1 + 8 * (a1 ^ 0x95F)))(&v6);
}

uint64_t sub_22D36EE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, unsigned int a22)
{
  v25 = v23 + 424345868 + (v24 ^ 0x1EB) + 842 - 1264;
  v26 = v25 < 0x194B010C;
  v27 = v25 > a22;
  if (a22 < 0x194B010C != v26)
  {
    v27 = v26;
  }

  return (*(v22 + 8 * (((2 * !v27) | (8 * !v27)) ^ (v24 + 665))))(a1, a2, a3, a4, a5, a6, 2753058837);
}

void sub_22D36F194(uint64_t a1)
{
  v3 = *(*(a1 + 8) + 4) != 352135382 && *(*a1 + 4) != 352135382;
  v1 = *(a1 + 16) + 1361651671 * (((a1 | 0x7C49985D) - a1 + (a1 & 0x83B667A2)) ^ 0xAF6B68D1);
  __asm { BRAA            X13, X17 }
}

uint64_t sub_22D36F39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, _DWORD *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  v45 = 4 * (v44 + v39 - v42);
  v46 = 1913672377 * ((*(*a34 + (*a35 & 0x6688AA2C ^ v44 & 0xFFFFFFFC)) ^ (a38 + v45)) & 0x7FFFFFFF);
  v47 = v46 ^ HIWORD(v46);
  v48 = v47 * (v40 + 1913671754);
  *(a39 + v45) ^= *(a38 + v45) ^ *(*(&off_284082B80 + (v43 ^ (v43 - 5))) + HIBYTE(v48) - 2) ^ *(*(&off_284082B80 + v40 - 580) + HIBYTE(v48)) ^ *(*(&off_284082B80 + v40 - 453) + HIBYTE(v48) - 1) ^ (1387855872 * v47) ^ v48 ^ (-1209752583 * HIBYTE(v48));
  return (*(a2 + 8 * ((2443 * (v41 - 1 == ((v40 - 16860922) & 0xFB8F67FE ^ (v40 - 91348731)))) ^ (v40 - 435))))();
}

uint64_t sub_22D36F52C@<X0>(int a1@<W8>)
{
  v6 = (v1 ^ 0x1D6) + v2 - 726;
  *(*v3 + (v1 ^ 0xDD8D8501) + v5 + v6) = *(*v3 + (v2 - 488397857));
  return (*(v4 + 8 * ((470 * (v6 != a1)) ^ v1 ^ 0x1D6)))();
}

uint64_t sub_22D36FB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v18 - 128) = &a15;
  *(v18 - 120) = a14;
  *(v18 - 136) = v17 - ((~((v18 - 136) | 0xC02C5234) + ((v18 - 136) & 0xC02C5234)) ^ 0xAD05926F) * v15 + 889;
  v19 = (*(v16 + 8 * (v17 ^ 0xD0A)))(v18 - 136);
  return (*(v16 + 8 * (((((v17 + 54) ^ (*(v18 - 112) == 852454267)) & 1) * (v17 - 1156)) ^ v17)))(v19);
}

uint64_t sub_22D36FC30(uint64_t a1, uint64_t a2)
{
  *(*(v4 + 96) + 1544) = *(a2 + 8);
  *(*(v4 + 96) + 1536) = *(a2 + 4);
  return v2 ^ 0xA4185815;
}

uint64_t sub_22D36FCE0@<X0>(int a1@<W1>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = (v15 + 4 * v10);
  v19 = (v9 >> ((v12 - 71) ^ v16)) + (*v18 ^ v8) + HIDWORD(v11) + v13 * (*(*(a8 + 8) + 4 * v10) ^ v8);
  *(v18 - 1) = v19 + v8 - (a1 & (2 * v19));
  return (*(v14 + 8 * (((v10 + 1 != a2) * v17) ^ (v12 - 29))))();
}

uint64_t sub_22D36FD50@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, int a8, unsigned int a9, int a10, unsigned int a11, uint64_t a12, uint64_t a13)
{
  v18 = *(v13 + 56);
  v19 = *(v13 + 32);
  v20 = 1082434553 * ((&a6 & 0x7540BB70 | ~(&a6 | 0x7540BB70)) ^ 0x11F8B205);
  a11 = ((a5 ^ 0xEED9B476) + 1006533562 + ((2 * a5) & 0xDDB368EC)) ^ v20;
  a6 = a3;
  a7 = v19;
  a12 = a3;
  a13 = v18;
  a8 = (v17 + 1421510193) ^ v20;
  a9 = v15 ^ ((v15 ^ 0xB36D09E5) + 1572932768) ^ ((v15 ^ 0x7A17C2C3) - 1799632966) ^ ((v15 ^ 0xFFFEFFD9) + 290650788) ^ v20 ^ 0x88AB45A2 ^ (22 * (v17 ^ 0x903) + (v15 ^ 0x27D7CE7A) + ((19 * (v17 ^ 0x906)) ^ 0xC97BC8FD));
  v21 = (*(v16 + 8 * a1))(&a6);
  return (*(v16 + 8 * ((11 * (a10 == v14)) ^ v17)))(v21);
}

void sub_22D36FF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  (*(v42 + 8 * (v43 ^ 0xAD1)))(a40);
  STACK[0x220] = v41 - 1824;
  LODWORD(STACK[0x334]) = v40;
  JUMPOUT(0x22D394584);
}

uint64_t sub_22D3702D0(double a1)
{
  v8 = (v4 + v5 + v6);
  *v8 = a1;
  v8[1] = a1;
  return (*(v7 + 8 * (v1 | (4 * ((v3 ^ 0x6F6) + v5 == v2)))))();
}

void sub_22D370480(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = 143681137 * ((2 * ((a1 ^ 0xE686C357) & 0x58F3D1A7) - (a1 ^ 0xE686C357) + 655109720) ^ 0xA0D266DF);
  v2 = *(a1 + 32) ^ v1;
  v3 = *a1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 12) - v1;
  v11 = 0x14FD28D600000040;
  v12 = &v19;
  v9 = 0x14FD28D600000082;
  v10 = &v20;
  v15 = 0x14FD28D600000001;
  v16 = &v8;
  v17 = 0x14FD28D600000082;
  v18 = &v21;
  v13 = 0x14FD28D600000082;
  v14 = &v22;
  if (v3 | v4)
  {
    v6 = v5 == 2035419090;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  __asm { BRAA            X8, X17 }
}

void sub_22D37066C()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = *(&off_284082B80 + ((-3 * ((qword_27D9FC2C8 + dword_27D9FC4B0) ^ 0xE5)) ^ byte_22D5BA4E0[byte_22D5C6550[(-3 * ((qword_27D9FC2C8 + dword_27D9FC4B0) ^ 0xE5))] ^ 0x6F]) + 21);
  v1 = *(&off_284082B80 + ((-3 * ((qword_27D9FC2C8 + *v0) ^ 0xE5)) ^ byte_22D5BA3E0[byte_22D5C6450[(-3 * ((qword_27D9FC2C8 + *v0) ^ 0xE5))] ^ 0x59]) + 132);
  v2 = *(v1 - 4) - *v0 - &v8;
  v3 = 1707045629 * v2 + 0x1520B27A7613BCE5;
  v4 = 1707045629 * (v2 ^ 0x1520B27A7613BCE5);
  *v0 = v3;
  *(v1 - 4) = v4;
  LOBYTE(v4) = -3 * ((v4 + *v0) ^ 0xE5);
  **(&off_284082B80 + (*(off_284082D30 + (*(off_284083140 + v4 - 4) ^ 0xE2u) - 8) ^ v4) + 87) = -1541908459;
  v5 = *(&off_284082B80 + ((-3 * ((qword_27D9FC2C8 - dword_27D9FC4B0) ^ 0xE5)) ^ byte_22D5BF320[byte_22D5BA8E0[(-3 * ((qword_27D9FC2C8 - dword_27D9FC4B0) ^ 0xE5))] ^ 0x93]) + 30) - 8;
  v6 = (*&v5[8 * (*(off_284082EF8 + (*(off_284082E00 + (-3 * ((*(v1 - 4) + *v0) ^ 0xE5))) ^ 0x8Cu)) ^ (-3 * ((*(v1 - 4) + *v0) ^ 0xE5))) + 19144])(512, 0x100004077774924);
  v7 = -3 * (*v0 ^ 0xE5 ^ *(v1 - 4));
  **(&off_284082B80 + (*(off_284082D68 + (*(off_284082CD0 + v7 - 12) ^ 0x6Fu) - 12) ^ v7) + 78) = v6;
  __asm { BRAA            X8, X17 }
}

_DWORD *sub_22D370A08()
{
  v4 = 5 * (v1 ^ 0x15B);
  (*(v2 + 8 * (v1 ^ 0x931)))(*v7, *(v0 + 192), v9);
  *(v3 - 192) = -1197043315 - 50899313 * ((((v3 - 192) | 0xB575F495) - ((v3 - 192) & 0xB575F495)) ^ 0xA15A690E) + v4;
  (*(v2 + 8 * (v4 ^ 0xAA4)))(v3 - 192);
  result = v6;
  *v6 = v8;
  return result;
}

uint64_t sub_22D370BA4@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 ^ 0x8B6u));

  return v3(v1);
}

void sub_22D370BD8(int a1@<W2>, int a2@<W8>)
{
  LODWORD(STACK[0x384]) = a2;
  LODWORD(STACK[0x26C]) = a1;
  LODWORD(STACK[0x42C]) = v3;
  LODWORD(STACK[0x434]) = v2;
  LODWORD(STACK[0x424]) = 2109401734;
  JUMPOUT(0x22D351208);
}

uint64_t sub_22D370C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v18 - 136) = v15 - 210068311 * ((2095630211 - ((v18 - 136) | 0x7CE8C783) + ((v18 - 136) | 0x8317387C)) ^ 0x11C107D8) + 774;
  *(v18 - 128) = &a15;
  *(v18 - 120) = a14;
  v19 = (*(v16 + 8 * (v15 ^ 0xD7F)))(v18 - 136);
  return (*(v16 + 8 * (((*(v18 - 112) == v17 + 2) * (v15 ^ 0x508)) ^ v15)))(v19);
}

uint64_t sub_22D370CF8(uint64_t a1, int a2, int a3)
{
  v6 = (a2 + v5) > 0x71F3C8D1;
  if ((v3 + 1207599766) < 0x8E0C372E == v6)
  {
    v6 = a2 + v5 + ((2 * (a3 ^ 0x536) - 1040) | 0x721u) - 1911804025 > v3 + 1207599766;
  }

  return (*(v4 + 8 * ((156 * v6) ^ a3)))();
}

uint64_t sub_22D370D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, int a14, char a15, __int16 a16, char a17, __int16 a18, char a19, uint64_t a20, uint64_t a21, char *a22, char *a23)
{
  LODWORD(a20) = (v23 + 1867) ^ ((((&a20 ^ 0x5E228D6E | 0x7BAAEC2D) - (&a20 ^ 0x5E228D6E) + ((&a20 ^ 0x5E228D6E) & 0x845513D2)) ^ 0x31A7FCD8) * v24);
  a23 = &a19;
  a21 = a13;
  (*(v25 + 8 * (v23 ^ 0x81B)))(&a20);
  HIDWORD(a20) = v23 + 379 - 143681137 * (((&a20 | 0xACDF6AD6) - &a20 + (&a20 & 0x53209528)) ^ 0xCD87E106) + 80;
  a21 = a13;
  a22 = &a15;
  a23 = &a11;
  (*(v25 + 8 * (v23 + 2040)))(&a20);
  LODWORD(a20) = (v23 + 1867) ^ (((&a20 & 0x806983DE | ~(&a20 | 0x806983DE)) ^ 0x6BB9E1BA) * v24);
  a21 = a13;
  a23 = &a17;
  (*(v25 + 8 * (v23 + 2043)))(&a20);
  a20 = a13;
  HIDWORD(a21) = (v23 + 1887) ^ (1388665877 * (((&a20 | 0xF36759DA) - &a20 + (&a20 & 0xC98A620)) ^ 0x7ECA3B36));
  v26 = (*(v25 + 8 * (v23 + 2050)))(&a20);
  return (*(v25 + 8 * ((481 * (a21 == ((v23 - 1850569082) & 0x6E4D736D) - 1541909331)) ^ (v23 + 379))))(v26);
}

uint64_t sub_22D370DFC@<X0>(int a1@<W8>)
{
  *v2 = a1;
  v5 = ((v1 ^ 0x717) - 1066) | 0x100;
  v9 = v6;
  v8 = (v1 ^ 0x717) - 1388665877 * ((2 * (&v8 & 0xCD9D990) - &v8 - 215603607) ^ 0x7E8B4485) - 1376;
  (*(v3 + 8 * ((v1 ^ 0x717) + 794)))(&v8);
  v8 = v5 - 1388665877 * (((&v8 | 0x57F82799) + (~&v8 | 0xA807D866)) ^ 0xDA554574) - 566;
  v9 = v7;
  (*(v3 + 8 * (v5 + 1604)))(&v8);
  return 0;
}

uint64_t sub_22D370F24@<X0>(uint64_t a1@<X8>)
{
  v4 = (v3 + 1042728545) & 0xC1D93DB7;
  v5 = 2066391179 * (&v7 ^ 0xAF278218);
  v9 = v4 - v5 - 1874;
  v7 = v2 ^ ((v2 ^ 0xB9F77070) + 594244788) ^ ((v2 ^ 0xE8D6C6F2) + 1917502002) ^ ((v2 ^ 0x7DFDFFFF) - 413009091) ^ v5 ^ ((v2 ^ 0x49BFB241) - 752635368 + (v4 ^ 0xCEF)) ^ 0xAA5A292;
  v8 = a1;
  return (*(v1 + 8 * (v4 ^ 0x134)))(&v7);
}

uint64_t sub_22D371034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a7 == ((v7 + 742305121) & 0xD3C156BE) - 1692)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  return (*(v9 + 8 * ((v10 * (v7 - 473)) ^ v7)))();
}

uint64_t sub_22D3710B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, int a17)
{
  *a4 = 0;
  *a5 = 0;
  a16 = (843532609 * ((2 * (&a16 & 0x78A1AA78) - &a16 - 2023860861) ^ 0xDB130106)) ^ 0xDFABAF92;
  v18 = (*(v17 + 18752))(&a16);
  return (*(v17 + 8 * ((212 * (a17 != -1541908459)) ^ 0x55u)))(v18);
}

uint64_t sub_22D371194(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57)
{
  v61 = *(v59 + v58 * a4 + 36);
  v63 = v61 - 1993365113 > 1802821561 || v61 - 1993365113 < a57;
  v64 = !v63;
  if (v61 == a3 + ((v57 + 1603194702) & 0xA07134F3) - 1234)
  {
    v64 = 1;
  }

  return (*(v60 + 8 * ((39 * v64) | v57)))();
}

uint64_t sub_22D371258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, __int16 a14, char a15, __int16 a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char *a22, char *a23)
{
  LODWORD(a20) = (v23 + 2080) ^ ((((&a20 | 0x8F2F36B0) - &a20 + (&a20 & 0x70D0C948)) ^ 0x9B00AB2B) * v25);
  a21 = a18;
  a23 = &a15;
  (*(v26 + 8 * (v23 ^ 0x9F0)))(&a20);
  a21 = a18;
  a22 = &a17;
  a23 = &a19;
  HIDWORD(a20) = v24 - 143681137 * (((&a20 | 0xDE1BE02B) - &a20 + (&a20 & 0x21E41FD0)) ^ 0xBF436BFB) + 631;
  (*(v26 + 8 * (v24 ^ 0x9A4)))(&a20);
  LODWORD(a20) = (v24 + 2039) ^ ((&a20 ^ 0x142F9D9B) * v25);
  a23 = &a13;
  a21 = a18;
  (*(v26 + 8 * (v24 + 2215)))(&a20);
  a20 = a18;
  HIDWORD(a21) = (v24 + 2059) ^ (((((2 * &a20) | 0x290D626) - &a20 + 2125960429) ^ 0xCE509FF) * v27);
  v28 = (*(v26 + 8 * (v24 + 2222)))(&a20);
  return (*(v26 + 8 * (((a21 == -1541908459) * (v24 + 1624)) | v24)))(v28);
}

void sub_22D3714B8(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  *(v17 - 144) = a1 - ((v17 - 144) ^ 0x13DCEC20) * v16 + 984;
  *(v17 - 112) = &a13;
  *(v17 - 104) = &a15;
  *(v17 - 128) = a4;
  *(v17 - 120) = &a15;
  *(v17 - 136) = a7;
  (*(v15 + 8 * (a1 ^ 0x9FB)))(v17 - 144);
  JUMPOUT(0x22D371518);
}

uint64_t sub_22D371570@<X0>(int a1@<W8>)
{
  v8 = v5 - 1;
  *(v6 + v8) = *(v4 + (v8 & 0xF)) ^ *(v1 + v8) ^ *(v3 + (v8 & 0xF)) ^ (117 * (v8 & 0xF)) ^ *(v2 + (v8 & 0xF));
  return (*(v7 + 8 * ((22 * (((a1 - 89) ^ (v8 == 0)) & 1)) ^ (a1 + 495))))();
}

uint64_t sub_22D3715D0@<X0>(void **a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = 73 * (a2 ^ 0x385u);
  **a1 = v6 + v5 + v7 - 430;
  return (*(v4 + 8 * ((1114 * (*(a3 + 24) == v3)) ^ v7)))();
}

uint64_t sub_22D371734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, char a17)
{
  v20 = 50899313 * ((~&a16 & 0x5FCD07F3 | &a16 & 0xA032F80C) ^ 0x4BE29A68);
  a17 = v20 + 6;
  a16 = v18 - v20 + 317;
  v21 = (*(v17 + 8 * (v18 ^ 0xB1B)))(&a16);
  return (*(v17 + 8 * (((((**(v19 + 8 * (v18 - 695)) == 0) ^ (v18 + 2)) & 1) * ((v18 - 364) ^ 0x153)) ^ (v18 - 364))))(v21);
}

uint64_t sub_22D3717E4(uint64_t a1, uint64_t a2)
{
  if (**(a2 + 8))
  {
    v2 = -62;
  }

  else
  {
    v2 = -64;
  }

  *(a1 + 88) = ((**(a2 + 8) != 0) ^ 0x6B) + v2;
  return 0;
}

uint64_t sub_22D3718F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v20 - 128) = v18;
  *(v20 - 120) = a14;
  *(v20 - 136) = v19 - ((~(v15 | 0x89C26498) + (v15 & 0x89C26498)) ^ 0xE4EBA4C3) * v16 + 933;
  v21 = (*(v17 + 8 * (v19 ^ 0xDDE)))(v20 - 136);
  return (*(v17 + 8 * (((*(v20 - 112) != v14 + (v19 ^ 0x31D) - 1854) * (v19 ^ 0x49F)) ^ v19)))(v21);
}

void sub_22D3719E0(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8) - 1361651671 * ((a1 & 0x5D0A1AEC | ~(a1 | 0x5D0A1AEC)) ^ 0x71D7159F);
  v2 = *a1;
  v4[1] = v1 + 1564307779 * ((2 * (v4 & 0xE14A870) - v4 + 1911248782) ^ 0xE6E69B9D) - 705;
  v5 = v2;
  v3 = *(&off_284082B80 + v1 - 1376) - 8;
  (*&v3[8 * v1 + 8240])(v4);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_22D371B18(uint64_t a1, uint64_t a2)
{
  v8 = (v4 + v5 + 1152);
  v9 = *(v4 + v3 - 15);
  *(v8 - 1) = *(v4 + v3 - 31);
  *v8 = v9;
  return (*(v2 + 8 * ((((v4 & 0x7FFFFE0) != 32) * (v7 + v6 - 89)) ^ (v7 + v6))))(a1, a2, (v7 + v6 - 89), (v4 & 0x7FFFFE0) - 64, v4 + v3 - 47, v4 + v5 + 1120);
}

uint64_t sub_22D371B68@<X0>(const char *a1@<X2>, int a2@<W4>, uint64_t a3@<X5>, int a4@<W8>, int8x16_t a5@<Q0>, int8x16_t a6@<Q1>, int32x4_t a7@<Q2>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v82 = *(v29 + 8 * (v34 + a4 + 27));
  v36 = *(v33 - 180);
  v35 = *(v33 - 176);
  v38 = *(v33 - 172);
  v37 = *(v33 - 168);
  v39 = *(v33 - 156);
  if (v39 == 2)
  {
    v84 = vld4q_s8(a1);
    v72 = veorq_s8(v84.val[1], a5);
    _Q21 = vmovl_high_u8(v72);
    _Q20 = vmovl_u8(*v72.i8);
    v75 = vshll_n_s16(*_Q20.i8, 0x10uLL);
    __asm
    {
      SHLL2           V20.4S, V20.8H, #0x10
      SHLL2           V21.4S, V21.8H, #0x10
    }

    v76 = vmovl_u8(*&veorq_s8(v84.val[2], a5)).u64[0];
    v84.val[2] = vmovl_u16(*&vmovl_u8(*&veorq_s8(v84.val[3], a5)));
    v77 = vorrq_s8(vorrq_s8(vorrq_s8(v75, vshll_n_u16(v76, 8uLL)), vshlq_n_s32(vmovl_u16(*&vmovl_u8(*&veorq_s8(v84.val[0], a5))), 0x18uLL)), v84.val[2]);
    v84.val[2] = veorq_s8(vandq_s8(v77, a6), (*&v84.val[2] & __PAIR128__(0xFFFFFF02FFFFFF02, 0xFFFFFF02FFFFFF02)));
    *v31 = vaddq_s32(vsubq_s32(v77, vaddq_s32(v84.val[2], v84.val[2])), a7).u32[0];
    v78 = &v31[v28 + 132435046];
    v79 = *(v78 - 16);
    v80 = v27 ^ (v30 + 1434);
    *v78 = __ROR4__(v80 ^ *(v78 - 3) ^ *(v78 - 8) ^ *(v78 - 14) ^ v79, 31) ^ 0xB497CC4E;
    v81 = *(v29 + 8 * ((50 * (v32 == 132434983)) ^ 0x5D8u));
    return v81(v81, v35, a21, v79, v80, a3, v36, 2281701376, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v82, a21, a22, a23, a24, a25, a26, a27);
  }

  else
  {
    if (v39 != 1)
    {
      JUMPOUT(0x22D372510);
    }

    v83 = vld4q_s8(a1);
    v40 = 21 * (a2 ^ (a2 + 57));
    v41 = veorq_s8(v83.val[2], a5);
    _Q21 = vmovl_u8(*v41.i8);
    _Q20 = vmovl_high_u8(v41);
    __asm
    {
      SHLL2           V22.4S, V20.8H, #0x10
      SHLL2           V23.4S, V21.8H, #0x10
    }

    v83.val[0] = vorrq_s8(vorrq_s8(vorrq_s8(vshll_n_u16(*&vmovl_u8(*&veorq_s8(v83.val[1], a5)), 8uLL), vmovl_u16(*&vmovl_u8(*&veorq_s8(v83.val[0], a5)))), vshll_n_s16(*_Q21.i8, 0x10uLL)), vshlq_n_s32(vmovl_u16(*&vmovl_u8(*&veorq_s8(v83.val[3], a5))), 0x18uLL));
    *v31 = vaddq_s32(vsubq_s32(v83.val[0], vandq_s8(vaddq_s32(v83.val[0], v83.val[0]), vdupq_n_s32(0x4830B02Au))), a7).u32[0];
    v50 = *(&off_284082B80 + (v40 ^ 0x628)) - 12;
    v51 = (v31[(v50[a21 + v28] - 62)] ^ 0xA4185815) + (v36 ^ v30) + (v38 & 0xD04E9127 ^ ((v40 ^ 0xE1) - 2142865013) ^ (v35 ^ 0x58095B0A) & (v38 ^ v30) | v35 & 0xEE8D2319 ^ 0x66882110 ^ (v35 ^ 0x77B835D2) & (v37 ^ 0x66CAE934)) + *(*(&off_284082B80 + (v40 ^ 0x6CF)) + a21 + v28 - 2);
    v52 = ((2 * (v51 & 0xA7C4A8A5)) & 0x84140 | v51 & 0xA7C4A8A5) ^ (2 * (v51 & 0xA7C4A8A5)) & (v51 ^ 0x17F84551);
    v53 = ((2 * (v51 ^ 0x17F84551)) ^ 0x6079DBE8) & (v51 ^ 0x17F84551) ^ (2 * (v51 ^ 0x17F84551)) & 0xB03CEDF4;
    v54 = v53 ^ 0x90042414;
    v55 = (v53 ^ 0x2030C1A0) & (4 * v52) ^ v52;
    v56 = ((4 * v54) ^ 0xC0F3B7D0) & v54 ^ (4 * v54) & 0xB03CEDF4;
    v57 = (v56 ^ 0x8030A5D0) & (16 * v55) ^ v55;
    v58 = ((16 * (v56 ^ 0x300C4824)) ^ 0x3CEDF40) & (v56 ^ 0x300C4824) ^ (16 * (v56 ^ 0x300C4824)) & 0xB03CEDF0;
    v59 = v57 ^ 0xB03CEDF4 ^ (v58 ^ 0xCCD00) & (v57 << 8);
    v60 = (v59 << 16) & 0x303C0000 ^ v59 ^ ((v59 << 16) ^ 0x6DF40000) & (((v58 ^ 0xB03020B4) << 8) & 0x303C0000 ^ (((v58 ^ 0xB03020B4) << 8) ^ 0x3CED0000) & (v58 ^ 0xB03020B4) ^ 0x100000);
    v61 = *(*(&off_284082B80 + v40 - 1505) + a21 + v28 - 12);
    v62 = (v61 + 1551852871) ^ 0x2E450045;
    v63 = (v61 + 1551852871) & 0xA6182;
    v64 = ((2 * ((v61 + 1551852871) & 0x279 ^ 0x8DC59A3C)) ^ 0x9A8445FA) & v62 ^ ((v61 + 1551852871) & 0x279 ^ 0x8DC59A3C | v63) ^ ((2 * ((v61 + 1551852871) & 0x279 ^ 0x8DC59A3C)) ^ 0x9A8445FA) & 0x81051030;
    v65 = (2 * v62) ^ 0x9A8445FA;
    v66 = v65 & v62 ^ v63;
    v67 = v66 ^ v65 & 0xCC08A3C;
    v68 = ((4 * v64) ^ 0x320D5972) & (v67 ^ 0x81051000);
    v66 &= 0xA6182u;
    v69 = v67 & 0x36190972 ^ v66;
    LOBYTE(v64) = (v61 + 71) ^ (2 * (v64 ^ v66 ^ v69 & 0x82 ^ (v69 ^ 0x30) & 0x42 ^ v68));
    v70 = (((v35 ^ 0x90AE23D9) + 1867635751) ^ ((v35 ^ 0xC22C4358) + 1037286568) ^ ((v35 ^ 0xDAC5AAAC) + 624579924)) - 1743632138 + (((v51 ^ (2 * v60) ^ 0x87D5734D) << (v64 & 2) << (v64 & 0x1D ^ 1)) | ((v51 ^ (2 * v60) ^ 0x87D5734D) >> -v61));
    return (*(v29 + 8 * ((225 * (a21 + 1 == v32)) ^ v40)))(v50, v35, v40, v38, v60, v70 ^ ((v70 ^ 0xB1C9DC5A) + 1107058029) ^ ((v70 ^ 0xC7400AEC) + 930450395) ^ ((v70 ^ 0xC6BC5794) + 915003043) ^ ((v70 ^ 0xBFFFFFEB) + 1338670814) ^ 0x878DB4E4, (v69 ^ 0x4000830) & 0x14125042, v68, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v82, a21, a22, a23, a24, a25, a26, a27);
  }
}

void sub_22D372AA4(uint64_t a1)
{
  v1 = *(a1 + 32) - 1564307779 * ((a1 - 2 * (a1 & 0x7ABF2F3A) + 2059349818) ^ 0xEDB2E329);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_22D372BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  v9 = v4 - 1;
  *(a1 + 64) = v9;
  *(a2 + v9) = ((v3 + 1) ^ v6) * (v3 + 18);
  return (*(v8 + 8 * (((v5 + v9 == -2172) * v7) ^ a3)))();
}

uint64_t sub_22D372BC0()
{
  v3 = v2 - 21;
  v4 = *(v0 + 16) - 615858108 + ((v3 - 238) ^ 0xCC3);
  v5 = *(v0 + 12) - 1985860726;
  v6 = (v5 < 0xF8672537) ^ (v4 < (((v3 - 238) | 0x103) ^ 0xF8672024));
  v7 = v4 < v5;
  if (v6)
  {
    v8 = v5 < 0xF8672537;
  }

  else
  {
    v8 = v7;
  }

  return (*(v1 + 8 * ((493 * !v8) ^ v3)))();
}

uint64_t sub_22D372E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57, uint64_t a58, int a59)
{
  v64 = *(a52 + 1428);
  if (v64 <= 0x20 && ((1 << v64) & 0x100110000) != 0)
  {
    return (*(v62 + 8 * ((175 * (*(a53 + 476) == (((a59 - 383) | 0x41) ^ 0x24A))) ^ (a59 - 318))))();
  }

  v66 = (v61 & 0xDC4AA7B3 ^ (v61 ^ 0x66B04EA8) & (v59 ^ 0x7F6308B4) ^ 0xE40120D9) & 0xA426 ^ 0x10248;
  v67 = (v66 >> 4) & 0x68E784CC ^ 0xFFFFFFBB ^ ((v66 >> 4) ^ 0x1266) & (v66 ^ 0x68E6A2A4);
  if (((v67 | (v67 >> 2)) & 3) != 0)
  {
    v68 = 1541866446;
  }

  else
  {
    v68 = -1541908459;
  }

  if (a57 == a7)
  {
    return (*(v62 + 8 * (((v68 != a5 - 1541909249) * a6) ^ (a59 + 1372))))();
  }

  if (a57 != a8)
  {
    JUMPOUT(0x22D372DE4);
  }

  *v63 = a2;
  v63[46] = a49;
  return (*(v62 + 8 * (((v63[56] == 0) * ((v60 + 196) ^ (5 * (v60 ^ 0x270)) ^ 0x1C)) ^ v60)))();
}

uint64_t sub_22D3730EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  v55 = *(v52 + 8 * v50);
  *v53 = 64;
  return (*(v52 + 8 * ((((v51 + 119) | 0x249) - 1497) ^ (v51 + 384))))(a1, a2, a3, &STACK[0x4A0], a5, 16, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, v55, a40, 0, &STACK[0x268] % 0x25, a43, &STACK[0x4A0], a45, a46, a47, a48, a49, a50);
}

uint64_t sub_22D373118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  v75 = (LODWORD(STACK[0x2CC]) ^ 0xBE39F55C) + 2145861560 + ((LODWORD(STACK[0x2CC]) << ((v71 + 22) & 0xFD ^ 0x88)) & 0x7C73EAB8);
  v76 = 1564307779 * ((((v74 - 192) | 0xCEB56BE4) - (v74 - 192) + ((v74 - 192) & 0x314A9418)) ^ 0x59B8A7F7);
  v77 = (v74 - 192);
  v77[4] = a34;
  *v77 = &STACK[0x2C4];
  v77[1] = &a62;
  *(v74 - 164) = v75 ^ v76;
  *(v74 - 176) = v76 + v71 + 306;
  *(v74 - 172) = v76 + 833282747 * a33 - 901143449;
  v78 = (*(v73 + 8 * (v71 + 2291)))(v74 - 192);
  a71 = *(v74 - 168);
  return (*(v73 + 8 * (((a71 == v72) * (((v71 + 2076) | 2) - 621)) ^ v71)))(v78);
}

void sub_22D373234(unsigned int *a1, uint64_t a2, int a3)
{
  *(a1 + v4 + 4) = 85;
  *(a1 + (v3 + 2) + 4) = 73;
  v6 = (((a3 ^ (v5 + 93)) - 1031723851) | 0x8000824) + v3 + 897504043 - 164;
  *a1 = v6;
  v7 = a1 + 1;
  *(v7 + (v3 + 3)) = 68;
  *(v7 + v3) = 47;
  *(v7 + (v3 + 4)) = 61;
  *(v7 + v6) = 0;
  JUMPOUT(0x22D3624A4);
}

uint64_t sub_22D3732C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, _DWORD *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  v44 = 4 * (v39 ^ 0x321);
  v45 = (*(v41 + 8 * (v39 ^ 0xAFE)))(&a39, 0);
  (*(v41 + 8 * (v39 + 1538)))(v45);
  *a29 = (*(v41 + 8 * (v39 + 1538)))();
  v40[1] = *a29 + ((1664525 * (*v40 ^ (*v40 >> 30))) ^ v40[1]);
  v46 = 2066391179 * ((0x4D6D9AEE8AA497A4 - ((v43 - 152) | 0x4D6D9AEE8AA497A4) + a27) ^ 0x5FB205B6DA7CEA43);
  *(v42 + 24) = v46 ^ 2;
  *(v43 - 120) = ((v44 + 1052402975) ^ 0x2A) - v46;
  *(v42 + 48) = v46 + 623;
  v47 = v44 + 1052402975 - v46;
  *(v43 - 148) = v46 + v44 + 1212455208;
  *(v43 - 144) = v47;
  *(v43 - 128) = v47 + 108;
  *(v43 - 124) = -2066391179 * ((-1968924764 - ((v43 - 152) | 0x8AA497A4) + a27) ^ 0xDA7CEA43);
  v48 = (*(v41 + 8 * (v44 + 2042)))(v43 - 152);
  return (*(v41 + 8 * *(v43 - 152)))(v48);
}

uint64_t sub_22D373424(int8x16_t a1, int8x16_t a2, int8x16_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v69 = v63 + 2;
  v70 = (a59 + (v62 + 32));
  v71 = veorq_s8(v69[-1], *v70);
  v72 = veorq_s8(*v69, v70[1]);
  return (*(v64 + 8 * (((v59 == 32) * v61) ^ v60)))(vorrq_s8(vqtbl1q_s8(v71, v65), a1), vorrq_s8(vqtbl1q_s8(v71, v66), a2), vorrq_s8(vqtbl1q_s8(v71, v67), a3), vorrq_s8(vqtbl1q_s8(v71, v68), a4), vorrq_s8(vqtbl1q_s8(v72, v65), a5), vorrq_s8(vqtbl1q_s8(v72, v67), a6), vorrq_s8(vqtbl1q_s8(v72, v66), a7), vorrq_s8(vqtbl1q_s8(v72, v68), a8));
}

void sub_22D373434(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1 - 50899313 * ((-2 - ((a1 | 0xE91320D) + (~a1 | 0xF16ECDF2))) ^ 0xE5415069);
  if (*(*(a1 + 8) + 4) - 352135382 >= 0)
  {
    v2 = *(*(a1 + 8) + 4) - 352135382;
  }

  else
  {
    v2 = 352135382 - *(*(a1 + 8) + 4);
  }

  if (*(*(a1 + 24) + 4) - 352135382 >= 0)
  {
    v3 = *(*(a1 + 24) + 4) - 352135382;
  }

  else
  {
    v3 = 352135382 - *(*(a1 + 24) + 4);
  }

  v6 = *(a1 + 8);
  v7 = v1 + 1361651671 * (((~&v6 & 0xD017420) - (~&v6 | 0xD017421)) ^ 0xDE2384AD) - 154;
  v4 = *(&off_284082B80 + (v1 ^ 0x60E)) - 8;
  (*&v4[8 * (v1 ^ 0xF4A)])(&v6);
  if (v2 >= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  __asm { BRAA            X0, X17 }
}

uint64_t sub_22D3735A0(double a1)
{
  *(v4 - 1) = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

uint64_t sub_22D373678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v17 - 128) = a13;
  *(v17 - 120) = a14;
  *(v17 - 136) = v16 - 210068311 * ((v14 - 1999622540 - 2 * (v14 & 0x88D02E74)) ^ 0x1A0611D0) + 194;
  v18 = (*(v15 + 8 * (v16 + 579)))(v17 - 136);
  return (*(v15 + 8 * ((29 * (*(v17 - 112) <= ((v16 - 956) | 0x61u) + 852453268)) ^ v16)))(v18);
}

uint64_t sub_22D373684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, unsigned int *a34)
{
  (*(v37 + 8 * (v34 + 1231)))(*a34, v36, 2048);
  v38 = *(v37 + 8 * ((((*(v37 + 8 * (v34 + 1383)))(*a34, &STACK[0x388], (LODWORD(STACK[0x330]) + v35), 1) == 0) * (((v34 - 135) ^ 0xFFFFFC91) + v34 - 123)) | v34));
  return v38();
}

void sub_22D373730(_DWORD *a1)
{
  v1 = *a1 + 50899313 * ((((2 * a1) | 0x9C80F28C) - a1 + 834635450) ^ 0xDA6FE4DD);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_22D373BF8()
{
  v3 = (((v0 + 582) | 0x100u) - 842) & *(v1 + 68);
  *(v1 + v3) = 48;
  return (*(v2 + 8 * ((721 * (v3 > 0x37)) ^ v0)))();
}

uint64_t sub_22D373C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * (((v6 == 0) * (v2 + v4 + 54)) ^ (v2 + v4 + 202))))();
}

void sub_22D373C78(uint64_t a1)
{
  if (*(*(a1 + 8) + 4) - 352135382 >= 0)
  {
    v2 = *(*(a1 + 8) + 4) - 352135382;
  }

  else
  {
    v2 = 352135382 - *(*(a1 + 8) + 4);
  }

  v1 = *(a1 + 32) ^ (843532609 * ((a1 - 2 * (a1 & 0xC84026B4) - 935319884) ^ 0x940D7231));
  __asm { BRAA            X12, X17 }
}

uint64_t sub_22D3741A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, uint64_t a11, uint64_t *a12, int a13, unsigned int a14)
{
  v17 = v14 + 5;
  v18 = (v14 - 128) | 0x80;
  v19 = v14 + 303;
  v20 = 1037613739 * ((1622504711 - (&a10 | 0x60B57507) + (&a10 | 0x9F4A8AF8)) ^ 0x4E48A787);
  a10 = v20 - 544159108;
  a13 = v19 ^ v20;
  a14 = 1114312305 - v20;
  a11 = v15;
  a12 = &a9;
  v21 = (*(v16 + 8 * (v17 + 2265)))(&a10);
  return (*(v16 + 8 * ((785 * (*(v15 + 24) == (v18 ^ 0xA41858D0))) | v17)))(v21);
}

uint64_t sub_22D3743FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23, int a24)
{
  v26 = (a22 ^ a6) + a23;
  v27 = a18 < 0x4EE2BD2;
  if (v27 == v26 > (((a17 ^ 0x672) + 418) ^ 0xFB11D58A))
  {
    v27 = v26 + 82717650 < a18;
  }

  return (*(v25 + 8 * ((!v27 * ((13 * (a17 ^ 0x672)) ^ 0xBD)) ^ a17)))(a1, a2, ((a6 + a17 - 1655) ^ v24) + a24, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_22D3744B4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, uint64_t a3)
{
  v7 = v4 + 1227;
  v8 = (*(v6 + 8 * (v4 | 0x812)))(**(a2 + 8 * (v4 ^ 0xAD)), a1, *(v5 + 8) + ((v4 + 1227) ^ v3));
  *(v5 + 31) = (&a3 + ((v7 + 108) ^ 0x15)) * (&a3 ^ 0xBA);
  *(v5 + 30) = (&a3 ^ 0xBB) * (&a3 + 18);
  return (*(v6 + 8 * v7))(v8);
}

void sub_22D374598(_DWORD *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = a1[3] - 50899313 * ((-2 - ((a1 | 0xB0C40541) + (~a1 | 0x4F3BFABE))) ^ 0x5B146725);
  v2 = *(*a1 + 4);
  if (v2 - 352135382 < 0)
  {
    v3 = 352135382 - v2;
  }

  else
  {
    v3 = v2 - 352135382;
  }

  v5 = *a1;
  v6 = v1 + 1361651671 * ((&v5 + 1525151060 - 2 * (&v5 & 0x5AE7F554)) ^ 0x89C505D8) + 1024;
  v4 = *(&off_284082B80 + (v1 ^ 0x1A0)) - 8;
  (*&v4[8 * (v1 + 2020)])(&v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_22D374710()
{
  v8 = (*(v6 + 4 * v7) ^ v1) + v3;
  *(v6 + 4 * v7) = v8 + v1 - (v2 & (2 * v8));
  return (*(v0 + 8 * (((HIDWORD(v8) == 0) * v4) ^ v5)))();
}

void sub_22D374810(int a1@<W8>, uint64_t a2, unsigned int a3, int a4)
{
  v8 = (a1 - 112625921) ^ v6;
  v9 = (2 * (v6 & (v7 + 1) ^ 0x2A40D4D4)) & 0x22004454 ^ v6 & (v7 + 1) ^ 0x2A40D4D4 ^ v8 & ((2 * (v6 & (v7 + 1) ^ 0x2A40D4D4)) ^ 0x5481A9A8);
  v10 = (2 * v8) & 0x2A40D4D4 ^ 0x2A405454 ^ ((2 * v8) ^ 0x5481A9A8) & v8;
  v11 = (4 * v9) & 0x2A40D4D4 ^ v9 ^ ((4 * v9) ^ 0xA9035350) & v10;
  v12 = (4 * v10) & 0x2A40D4D4 ^ 0x2408484 ^ ((4 * v10) ^ 0xA9035350) & v10;
  v13 = (16 * v11) & 0x2A40D4D0 ^ v11 ^ ((16 * v11) ^ 0x24084840) & v12;
  v14 = (16 * v12) & 0x2A40D4D0 ^ 0xA409094 ^ ((16 * v12) ^ 0xA40D4D40) & v12;
  v15 = v13 ^ (v13 << 8) & 0x2A40D400 ^ ((v13 << 8) ^ 0x40C4C400) & v14 ^ 0x840D410;
  v16 = ((v15 << 16) ^ 0x54D40000) & ((v14 << 8) & 0x2A400000 ^ 0x2A000000 ^ ((v14 << 8) ^ 0x40D40000) & v14) ^ v15 ^ ((v15 << 16) & 0x2A400000 | 0x5440);
  v17 = 50899313 * ((2 * (&a2 & 0x256A87E0) - &a2 + 1519745049) ^ 0x4EBAE582);
  a2 = v5;
  a3 = v6 ^ v17 ^ (2 * v16) ^ 0xFE189D11;
  a4 = v17 + a1 + 172;
  (*(v4 + 8 * (a1 + 2230)))(&a2);
  JUMPOUT(0x22D3749F4);
}

uint64_t sub_22D374A1C@<X0>(int a1@<W2>, unint64_t a2@<X8>)
{
  v5 = v2 + (a1 - 867);
  v6 = (a1 ^ 0x51Bu ^ (a2 + 52)) + v2 < v3;
  if (v3 < a2 != (v5 - 498) > 0xFFFFFFFF942DBB63)
  {
    v6 = v3 < a2;
  }

  return (*(v4 + 8 * ((210 * !v6) ^ a1)))();
}

uint64_t sub_22D374A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v75 = v74 - 192;
  STACK[0x17E0] = &STACK[0x2F4];
  *(v74 - 168) = (v71 - 889) ^ (1785193651 * ((((2 * (v74 - 192)) | 0x25BDA108) - (v74 - 192) + 1830891388) ^ 0x81023CA4));
  *(v75 + 28) = (-77 * ((((2 * (v74 + 64)) | 8) - (v74 + 64) + 124) ^ 0xA4)) ^ 0x25;
  *(v75 + 16) = &a71;
  v76 = (*(v73 + 8 * (v71 + 868)))(v74 - 192);
  return (*(v73 + 8 * (((*(v74 - 184) == ((v71 - 975) ^ (v72 + 605))) * (181 * (v71 ^ 0x633) - 819)) ^ v71)))(v76);
}

uint64_t sub_22D374B58(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  v39 = (a3 ^ 0x2EA) - 725;
  v40 = 2066391179 * ((((v38 - 184) | 0x75049EF) - (v38 - 184) + ((v38 - 184) & 0xF8AFB610)) ^ 0xA877CBF7);
  *(v38 - 176) = a1;
  *(v38 - 184) = a3 - v40 + 695;
  *(v38 - 180) = a16 - v40;
  (*(v37 + 8 * (a3 ^ 0x965)))(v38 - 184);
  v41 = a37 & 0x3F;
  *(&a28 + v41) = 48;
  return (*(v37 + 8 * ((1622 * (v41 > (v39 ^ 0x3Au))) ^ a3)))(&a28, v42, v43, v44, v45, v46, v47, 3931519142, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_22D374C38@<X0>(int a1@<W8>, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t *a5, int a6, int a7)
{
  v10 = a1 | 0x100;
  v11 = 1037613739 * (((&a3 | 0xD01D0F19) + (~&a3 | 0x2FE2F0E6)) ^ 0x11F2267);
  a4 = v7;
  a5 = &a2;
  a3 = v11 - 538762144;
  a6 = ((a1 | 0x100) - 270) ^ v11;
  a7 = (v9 ^ 0x7EEB0FFD) - v11 - 1015021968 + ((v9 << (((a1 + 12) ^ 0x45) - 74)) & 0x3A);
  v12 = (*(v8 + 8 * ((a1 | 0x100) + 1697)))(&a3);
  return (*(v8 + 8 * ((7 * (*(v7 + 24) != -1541908459)) ^ v10)))(v12);
}

uint64_t sub_22D374D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v16 = 1037613739 * ((2 * ((v15 - 136) & 0x5AFB19C8) - (v15 - 136) + 621078070) ^ 0xF406CB49);
  *(v15 - 128) = &a12;
  *(v15 - 136) = ((v12 ^ 0x2DF65CF6) + ((v14 - 264) ^ 0xFEFFFD8B) + ((2 * v12) & 0x5BECB9EC)) ^ v16;
  *(v15 - 132) = (v14 + 305) ^ v16;
  v17 = (*(v13 + 8 * (v14 ^ 0xAF0)))(v15 - 136);
  return sub_22D374DB4(v17);
}

uint64_t sub_22D374DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  *(v18 - 128) = &a14;
  *(v18 - 120) = a11;
  *(v18 - 136) = v17 - ((~((v18 - 136) ^ 0x8B056318 | v15) + (((v18 - 136) ^ 0x8B056318) & v15)) ^ 0xDD913BA2) * v16 + 1447;
  v19 = (*(v14 + 8 * (v17 ^ 0xBD8)))(v18 - 136);
  return (*(v14 + 8 * ((1617 * ((v17 - 852454869 + *(v18 - 112)) < 0xD002F9C6)) ^ v17)))(v19);
}

void sub_22D374E58(uint64_t a1)
{
  v1 = *(a1 + 16) ^ (843532609 * ((a1 - 2 * (a1 & 0x7582E3B9) + 1971512249) ^ 0x29CFB73C));
  __asm { BRAA            X10, X17 }
}

uint64_t sub_22D374F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, char a17, int a18, uint64_t *a19, int a20, unsigned int a21, char *a22, int a23, int *a24, int *a25, uint64_t a26)
{
  a16 = 242826067;
  v29 = 1082434553 * ((&a19 & 0x4C4B2D84 | ~(&a19 | 0x4C4B2D84)) ^ 0x28F324F1);
  a21 = v29 + a18 + 271006981;
  a22 = &a17;
  a25 = &a16;
  a26 = a14;
  a19 = &a14;
  a23 = v29 + v26 + 992;
  a24 = &a18;
  v30 = (*(v27 + 8 * (v26 ^ 0x926)))(&a19);
  return (*(v27 + 8 * (((a20 != -1541908459) * (((v26 - 1391023287) & 0x52E954B8 ^ 0xFFFFFEB4) + v26 + 332)) ^ v26)))(v30, v28);
}

uint64_t sub_22D37502C@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  v5 = v3 - 188183567;
  v6 = (((v4 - 179) | 0x88) ^ 0xA6167AE4) + v2;
  v7 = v3 > 0xB37740E;
  v8 = v6 < 0xF4C88BF1;
  v9 = v5 < v6;
  if (v7 != v8)
  {
    v9 = v8;
  }

  if (v9)
  {
    v10 = a2;
  }

  else
  {
    v10 = a2 + 1;
  }

  *(result + 16) = v10;
  return result;
}

uint64_t sub_22D3750C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  *(v33 - 144) = v31 - 1785193651 * ((v33 + 581972581 - 2 * ((v33 - 144) & 0x22B032F5)) ^ 0x316CDED5) + 984;
  *(v33 - 128) = v30;
  *(v33 - 120) = v29;
  *(v33 - 112) = &a27;
  *(v33 - 104) = v29;
  *(v33 - 136) = v32;
  v34 = (*(v28 + 8 * (v31 ^ 0x9FBu)))(v33 - 144);
  return (*(v28 + 8 * ((57 * (((v31 + 2087) ^ 0xD2BCDDCA ^ (11 * ((v31 + 2087) ^ 0x843))) + a14 < 0x7FFFFFFF)) ^ (v31 + 197))))(v34);
}

void U4HBs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v5 = a2 == 0;
  }

  else
  {
    v5 = 1;
  }

  v8 = !v5 && a4 != 0 && a5 != 0;
  __asm { BRAA            X9, X17 }
}

void sub_22D3756A0(unsigned __int8 *a1@<X8>)
{
  v3 = v1 ^ 0x394;
  v4 = ((v1 ^ 0x94) - 76) & 0xDF;
  v5 = *(&off_284082B80 + (v1 ^ 0x7D7)) - 12;
  v6 = v5[a1[3] ^ 0xDELL] ^ a1[3];
  v7 = *(&off_284082B80 + (v3 ^ 0x4DD));
  v8 = *(&off_284082B80 + (v3 ^ 0x456)) - 12;
  v9 = v8[v4 ^ 0x54 ^ a1[14]];
  v10 = (*(v7 + (a1[4] ^ 0xF7)) << 24) + 1090519040;
  v11 = *(&off_284082B80 + (v3 ^ 0x47B)) - 8;
  v12 = v11[a1[5] ^ 0x6DLL] << 16;
  v13 = ((((v8[a1[6]] << 8) ^ 0x24A1252D) & (v10 ^ 0x1BA9FF2D) | v10 & 0xDB000000) ^ 0xE0736314) & (v12 ^ 0xFF48FF3D);
  v14 = v12 & 0x2D0000;
  LOBYTE(v12) = (a1[15] - ((2 * a1[15]) & 0xFC) + 126) ^ v5[a1[15] ^ 0xFDLL];
  v15 = (*(v7 + (a1[8] ^ 0x70)) + 65) ^ 0xFFFFFFEF;
  v16 = v15 >> 2;
  v17 = ((v15 << 24) ^ 0x1FFFFFC) & ((v8[a1[10] ^ 0x48] << 8) ^ 0xC395C44C);
  v18 = v11[a1[13] ^ 0xC7];
  v19 = v17 & 0xC3FFFFFF | ((v16 & 0xF) << 26);
  v20 = v5[a1[11] ^ 0xD3] ^ a1[11];
  v21 = (v19 ^ 0x97D85D50) & (v20 ^ 0xFFDDFFB8);
  v22 = ((v11[a1[1] ^ 0x40] << 16) ^ 0x368A3AC3) & (v6 ^ 0x3FFFFB0E) | v6 & 0x3C;
  v23 = (*(v7 + (a1[12] ^ 0xBDLL)) + 65) ^ 0x1B;
  v24 = ((*(v7 + (a1[12] ^ 0xBDLL)) + 65) ^ 0x1B) << 24;
  v25 = ((((v18 << 16) ^ 0x35E70D24) & ~v24 | v24 & 0xCA000000) ^ 0x4A88F2DB) & (((v12 ^ 0xEA1EFF04) & ((v9 << 8) ^ 0xEA1E1F15) | v12 & 0xEA) ^ 0xE3EFA8E5);
  v26 = ((v18 << 16) ^ 0x35E70D24) & ~v24 & 0xF60E0000 | v24 & 0xC2000000;
  LODWORD(v11) = (v11[a1[9] ^ 0x7CLL] ^ 0x76) << 16;
  v27 = v11 & 0x100000 | ((v20 & 0xFFFFFFE3 | v21) ^ 0xD9A2E39F) & ~v11;
  v28 = ((((v8[a1[2] ^ 0x87] << 8) ^ 0xB988D7) & (v22 ^ 0x390FC524) | v22 & 0x36460028) ^ 0x36B919DF) + (((*(v7 + (*a1 ^ 9)) + 65) ^ 0x85) << 24);
  v29 = (a1[7] - ((2 * a1[7]) & 0xFC) + 126) ^ v5[a1[7] ^ 0x2FLL];
  v30 = v25 ^ v26;
  v31 = v29 & 0xB | (v14 ^ 0xB1A30ACD ^ v13) & ~v29;
  v32 = *(&off_284082B80 + (v3 ^ 0x446));
  v33 = *(v32 + 4 * (v18 ^ 0x18));
  HIDWORD(v34) = v33 ^ 0x41D2B64;
  LODWORD(v34) = v33 ^ 0x80000000;
  v35 = *(&off_284082B80 + (v3 ^ 0x478));
  v36 = *(v35 + 4 * (v23 ^ 0xB4u));
  v37 = *(&off_284082B80 + v3 - 1055);
  v38 = *(v37 + 4 * (v12 ^ 0x78u));
  v39 = -219980569 * v36 - 848159118;
  v40 = *(&off_284082B80 + v3 - 951) - 12;
  v41 = *&v40[4 * (v9 ^ 0x24)];
  *(v2 - 160) = v28;
  *(v2 - 156) = v27;
  v42 = (690312999 * v38 + 83701561) ^ (-36060539 * v41 - 594223900);
  *(v2 - 168) = v31;
  *(v2 - 164) = v30;
  v43 = v31 ^ 0x7754E1A6;
  v44 = v28 ^ (v34 >> 27) ^ v39 ^ v42 ^ 0x1A;
  v45 = v44 ^ v31 ^ 0x7754E1A6;
  *(v2 - 176) = v45;
  v46 = v27 ^ 0xB9EF61A1 ^ v45;
  v47 = *(v32 + 4 * (((v46 ^ v30 ^ 0x5CA6DA53) >> 16) ^ 0x6Bu));
  HIDWORD(v34) = v47 ^ 0x41D2B64;
  LODWORD(v34) = v47 ^ 0x80000000;
  v48 = (690312999 * *(v37 + 4 * ((v46 ^ v30) ^ 0x12u)) + 83701561) ^ (v34 >> 27) ^ (-36060539 * *&v40[4 * (((v46 ^ v30 ^ 0xDA53) >> 8) ^ 0xAF)] - 594223900) ^ (-219980569 * *(v35 + 4 * (((v46 ^ v30) >> 24) ^ 0x7D)) - 848159118);
  *(v2 - 184) = v46 ^ v30;
  *(v2 - 180) = v46;
  *(v2 - 172) = v44;
  *(v2 - 188) = v48 ^ v43;
  JUMPOUT(0x22D3762BCLL);
}

uint64_t sub_22D377A28@<X0>(uint64_t a1@<X3>, int a2@<W4>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, unsigned int a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  v61 = v60[396] ^ ((*v60 & 0x7FFFFFFE | v60[623] & 0x80000000) >> 1);
  v60[623] = (v61 + v58 - ((v61 << (a2 + v57 + a3 - 92 - 110)) & v59)) ^ *(&a57 + (*v60 & 1));
  return (*(a1 + 8 * ((63 * (a37 > ((a3 - 91308775) & 0xFFFF63FE) + a2)) ^ a3)))();
}

uint64_t sub_22D377AB4()
{
  if (v1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 0;
  }

  v4 = !v3;
  return (*(v0 + 8 * ((26 * v4) ^ 0x5C6u)))();
}

uint64_t sub_22D377AF0@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, unsigned int a32)
{
  v36 = *(&a20 + a1 + 72);
  v37 = ((a1 << (v33 + 3)) & 0xCE9FDFF8) + (a1 ^ 0x674FEFFF) + v32;
  *(v34 + v37) = (HIBYTE(v36) ^ 0x88) - ((v36 >> 23) & 0x60) - 80;
  *(v34 + v37 + 1) = (BYTE2(v36) ^ 0x47) - ((v36 >> 15) & 0x60) - 80;
  *(v34 + v37 + 2) = (BYTE1(v36) ^ 0xCA) - ((v36 >> 7) & 0x60) - 80;
  *(v34 + v37 + 3) = v36 ^ 0x9D;
  return (*(v35 + 8 * ((a1 + 4 >= a32) | v33)))();
}

uint64_t sub_22D377C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  v19 = 2066391179 * ((2 * ((v18 - 152) & 0x77CDA208) - (v18 - 152) + 137518583) ^ 0xA715DFEF);
  *(v18 - 144) = v18 - 252;
  *(v18 - 152) = v17 - v19 + 625;
  *(v18 - 148) = a16 - v19 + (v17 ^ (a5 + 58) ^ 0x1F45381D);
  v20 = (*(v16 + 8 * (v17 + 2335)))(v18 - 152);
  v21 = *(v18 - 184);
  *(v18 - 252 + (v21 & 0x3F)) = 48;
  return (*(v16 + 8 * ((1272 * ((v21 & 0x3Fu) > (v17 ^ 0x3F4u) - 899)) ^ v17)))(v20);
}

uint64_t sub_22D377F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, int a59, int a60, int a61, int a62)
{
  if (a62)
  {
    if (a62 == 268435459)
    {
      LODWORD(STACK[0x334]) = v65 - 159;
    }

    else
    {
      v78 = ((-169409804 - ((v68 - 192) | 0xF5E702F4) + ((v68 - 192) | 0xA18FD0B)) ^ 0x87B59FE7) * v66;
      *(v68 - 192) = &STACK[0x334];
      *(v68 - 184) = a59 - v78 - 36;
      *(v68 - 180) = v64 - v78 + a62 - ((2 * a62) & 0x4830B02A);
      (*(v67 + 8 * (a59 ^ 0xAEE)))(v68 - 192);
    }

    JUMPOUT(0x22D394584);
  }

  v79 = STACK[0x408];
  v80 = STACK[0x2F8];
  STACK[0x410] = &STACK[0x4F0] + v63;
  LODWORD(STACK[0x218]) = 930832479;
  STACK[0x220] = v62 - 192;
  LODWORD(STACK[0x428]) = 904558483;
  *(v68 - 188) = a59 - 742307843 * ((v68 - 229520264 - 2 * ((v68 - 192) & 0xF251CD38)) ^ 0xEC73406D) + 68671028;
  (*(v67 + 8 * (a59 + 1514)))(v68 - 192);
  v69 = (*(v67 + 8 * (a59 + 1512)))(336, 0x100004077774924);
  return (*(v67 + 8 * (((v69 == 0) * (((a59 - 873) | 0x3CC) - 967)) ^ (a59 + 1086))))(v69, v70, v71, v72, v73, v74, v75, v76, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, v79, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, v80, a53, a54, a55, a56, a57, a58);
}

uint64_t sub_22D3785A8@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  v55 = *(v54 + 56);
  v56 = STACK[0x2C4];
  v57 = 1082434553 * ((((v53 - 192) | 0x7B4CCCB5) - (v53 - 192) + ((v53 - 192) & 0x84B33348)) ^ 0xE00B3A3F);
  v58 = (v53 - 192);
  *v58 = a1;
  v58[1] = a49 + 4;
  v58[4] = v55;
  v58[5] = a24;
  *(v53 - 164) = (((v52 + 788) ^ v56 ^ 0x6FDB3BB4) + ((2 * v56) & 0xDFB6707A) - 1157826573) ^ v57;
  *(v53 - 176) = (v52 + 1421512396) ^ v57;
  *(v53 - 172) = (-v49 - 1711751385) ^ v57;
  v59 = (*(v51 + 8 * (v52 + 2322)))(v53 - 192);
  return (*(v51 + 8 * ((2003 * (*(v53 - 168) == v50)) ^ v52)))(v59);
}

void sub_22D378804(_DWORD *a1)
{
  v1 = *a1 + 1388665877 * ((a1 & 0x46A0C1C4 | ~(a1 | 0x46A0C1C4)) ^ 0x34F25CD7);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_22D3789DC@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(v2 + v7);
  return (*(v6 + 8 * ((97 * (v7 == ((5 * (v5 ^ (a2 + 991))) ^ 0x163))) ^ (v3 + v5 + 180))))();
}

uint64_t sub_22D378A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, unsigned int *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v76 = (v70 - 245545598) & 0xEA2B6FB;
  v77 = 5 * (v76 ^ 0x44F);
  (*(v74 + 8 * (v76 ^ 0xC25)))(*a34, *(a1 + 192), LODWORD(STACK[0x270]));
  v78 = ((~v71 & 0x556690B08C95F615 | v71 & 0xAA996F4F736A09EALL) ^ 0x601C00FF013894F9) * v73;
  *(v75 - 192) = v77 - 1318459185 - v78;
  *(v75 - 184) = v78 + v77 - 1318459185 + 22;
  *(v72 + 24) = v78 + 1541866447;
  *(v72 + 32) = a70 ^ v78;
  *(v75 - 152) = v78 + v77 - 2030745577;
  *(v75 - 180) = (v77 - 1318459263) ^ v78;
  *(v75 - 176) = v78;
  v79 = (*(v74 + 8 * (v77 ^ 0xA18)))(v75 - 192);
  return (*(v74 + 8 * *(v75 - 188)))(v79);
}

uint64_t sub_22D378C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  *v59 = v57 - 1824;
  LODWORD(STACK[0x334]) = -1541908459;
  return (*(v58 + 8 * (((*(a56 + 360) > 1u) * ((181 * (v56 ^ 0xAF)) ^ 0xBC5)) ^ v56)))();
}

uint64_t sub_22D378C84(_DWORD *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *a1 + 50899313 * (a1 ^ 0x142F9D9B);
  v2 = *(*(&off_284082B80 + (v1 ^ 0xB8A69575)) - 4);
  v1 += 1197042469;
  v4 = v2;
  v5 = (50899313 * (&v4 ^ 0x142F9D9B)) ^ (v1 + 1459);
  return (*(*(&off_284082B80 + v1) + v1 + 2412))(&v4);
}

uint64_t sub_22D378D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, int a16, int a17, char a18, __int16 a19, char a20, char *a21, int a22, unsigned int a23, char *a24, int a25, char *a26, int *a27, uint64_t a28)
{
  a17 = 242826067;
  v31 = *(a2 + 4);
  v32 = *(a2 + 8);
  v33 = 1082434553 * (((v29 | 0xBDA46549) - (v29 & 0xBDA46549)) ^ 0x26E393C3);
  a24 = &a18;
  a25 = v33 + v28 + 957;
  a21 = &a14;
  a28 = v32;
  a23 = v33 + v31 + 271006981;
  a26 = &a20;
  a27 = &a17;
  v35 = (*(v30 + 8 * (v28 ^ 0x949)))(&a21);
  return (*(v30 + 8 * ((990 * (a22 == (((v28 - 217) | 0x202) ^ 0xA4185A17))) ^ v28)))(v35, a2);
}

void sub_22D378E40()
{
  v9 = *(v6 + 8);
  v10 = (*(v9 + 4 * (v8 - 1)) ^ v1) >> v2;
  *(v9 + 4 * v4) = v10 + v1 - (v3 & (2 * v10));
  if (*(*(v6 + 8) + 4 * v4) == v1 + ((v5 + 850951699) & 0xCD477DBA) - 306)
  {
    v11 = 1426013174;
  }

  else
  {
    v11 = 1426013175;
  }

  v12 = v11 + v0;
  if ((*(v6 + 4) + v7) >= 0x7FFFFFFF)
  {
    v12 = 704270764 - v12;
  }

  *(v6 + 4) = v12;
}

void sub_22D378EFC(uint64_t a1)
{
  v1 = 1037613739 * (((a1 | 0xF3D86D6B) - (a1 & 0xF3D86D6B)) ^ 0x22DA4014);
  v2 = *(a1 + 4) ^ v1;
  __asm { BRAA            X13, X17 }
}

uint64_t sub_22D37906C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  if (((a45 - v57) | (v57 - a45)) < 0)
  {
    v60 = 0x80000000;
  }

  else
  {
    v60 = -2147483647;
  }

  *v58 = v60 - (v57 ^ 0x388 ^ (v57 + 905));
  v61 = (*(v59 + 8 * (v57 + 2392)))(a57);
  return sub_22D379108(v61);
}

uint64_t sub_22D379108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v12 = (v10 + 4 * v5);
  v13 = v5 + 2;
  v14 = v12[1];
  v15 = v7 & ((v6 + 17) ^ (a5 + 918));
  v16 = *(v10 + 4 * v13);
  v17 = v12[398];
  v18 = *(v8 + 4 * (v16 & 1));
  *v12 = v12[397] ^ ((v14 & 0x7FFFFFFE | v15) >> 1) ^ *(v8 + 4 * (v14 & 1));
  v12[1] = v17 ^ ((v16 & 0x7FFFFFFE | v14 & 0x80000000) >> 1) ^ v18;
  return (*(v11 + 8 * (((v13 == 226) * v9) ^ v6)))();
}

uint64_t sub_22D379274()
{
  LODWORD(v10) = (v4 + 168) ^ (50899313 * (((&v10 | 0xBEE5DA21) - (&v10 & 0xBEE5DA21)) ^ 0xAACA47BA));
  v11 = v9;
  v12 = &v7;
  (*(v1 + 8 * (v4 ^ 0x178u)))(&v10);
  v10 = v9;
  HIDWORD(v11) = (v4 + 188) ^ ((((&v10 | 0x8846CD1D) - &v10 + (&v10 & 0x77B932E0)) ^ 0x5EBAFF1) * v2);
  (*(v1 + 8 * (v4 + 351)))(&v10);
  if (v11 == v0 + v3 - 650)
  {
    v5 = v7;
  }

  else
  {
    v5 = v11;
  }

  LODWORD(v10) = v4 - ((((2 * &v10) | 0x6E203E52) - &v10 - 923803433) ^ 0xBABD7DC5) * v2 - 1830;
  v11 = v9;
  (*(v1 + 8 * (v4 + 340)))(&v10);
  LODWORD(v10) = v3 - ((&v10 & 0xAF4ADCFA | ~(&v10 | 0xAF4ADCFA)) ^ 0xDD1841E9) * v2 - 409;
  v11 = v8;
  (*(v1 + 8 * (v3 + 1761)))(&v10);
  return v5 ^ v0;
}

uint64_t sub_22D379434()
{
  v6 = (v3 + v0 + 8);
  *(v6 - 1) = v5;
  *v6 = v5;
  return (*(v4 + 8 * ((209 * ((((126 * ((v2 - 259) ^ 0x5B0) - 1102) ^ (((126 * ((v2 - 259) ^ 0x5B0) - 1338) & v1) == 16)) & 1) == 0)) ^ (126 * ((v2 - 259) ^ 0x5B0)))))();
}

void sub_22D379498(int a1@<W8>)
{
  v3 = *(v2 + 4);
  if ((v1 ^ 0x6B02D35A) + v3 >= 0)
  {
    a1 = -a1;
  }

  *(v2 + 4) = a1 + v3;
}

void sub_22D3798D8(_DWORD *a1)
{
  v1 = *a1 + 1785193651 * ((a1 + 1917611608 - 2 * (a1 & 0x724C6E58)) ^ 0x61908278);
  __asm { BRAA            X15, X17 }
}

uint64_t sub_22D37A064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, __int16 a14, char a15, uint64_t a16, int a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char *a24)
{
  LODWORD(a21) = (v25 + 1963) ^ ((((&a21 | 0xEBB0D718) - (&a21 & 0xEBB0D718)) ^ 0xFF9F4A83) * v24);
  a22 = a20;
  a24 = &a15;
  (*(v28 + 8 * (v25 ^ 0x87B)))(&a21);
  LODWORD(a21) = (v25 + 1963) ^ ((((&a21 | 0x6078C498) - &a21 + (&a21 & 0x9F873B60)) ^ 0x74575903) * v24);
  a24 = &a18;
  a22 = a20;
  (*(v28 + 8 * (v25 + 2139)))(&a21);
  a22 = a20;
  a24 = &a13;
  LODWORD(a21) = (v25 + 1963) ^ (((((2 * (&a21 ^ 0x5260016F)) | 0x4298190) - (&a21 ^ 0x5260016F) - 34914504) ^ 0x445B5C3C) * v24);
  (*(v28 + 8 * ((v25 + 598) ^ 0xA05)))(&a21);
  a21 = a20;
  HIDWORD(a22) = (v25 + 1983) ^ ((((&a21 | 0xBAEA2D75) - &a21 + (&a21 & 0x4515D288)) ^ 0x37474F99) * v27);
  v29 = (*(v28 + 8 * ((v25 + 598) ^ 0xA1C)))(&a21);
  return (*(v28 + 8 * (((a22 == v26) * (v25 + 2735)) ^ (v25 + 598))))(v29);
}

uint64_t sub_22D37A1F4(int a1)
{
  v8 = (v4 + *(v6 - 192) - 16);
  v13.val[1].i64[0] = (v4 + 13) & 0xF;
  v13.val[1].i64[1] = (v4 + 12) & 0xF;
  v13.val[2].i64[0] = (v4 + 11) & 0xF;
  v13.val[2].i64[1] = (v4 + 10) & 0xF;
  v13.val[3].i64[0] = (v4 + 9) & 0xF;
  v13.val[3].i64[1] = v4 & 0xF ^ 8;
  v14.val[0].i64[0] = (v4 + 7) & 0xF;
  v14.val[0].i64[1] = (v4 + 6) & 0xF;
  v14.val[1].i64[0] = (v4 + 5) & 0xF;
  v14.val[1].i64[1] = (v4 + 4) & 0xF;
  v14.val[2].i64[0] = (v4 + 3) & 0xF;
  v14.val[2].i64[1] = (v4 + 2) & 0xF;
  v14.val[3].i64[0] = (v4 + 1) & 0xF;
  v14.val[3].i64[1] = v4 & 0xF;
  v9.i64[0] = 0x6161616161616161;
  v9.i64[1] = 0x6161616161616161;
  v10.i64[0] = 0xB0B0B0B0B0B0B0B0;
  v10.i64[1] = 0xB0B0B0B0B0B0B0B0;
  v13.val[0].i64[0] = v5 & 0xF;
  v13.val[0].i64[1] = (v4 + 14) & 0xF;
  v11.i64[0] = vqtbl4q_s8(v13, xmmword_22D5B62D0).u64[0];
  v11.i64[1] = vqtbl4q_s8(v14, xmmword_22D5B62D0).u64[0];
  v14.val[0] = vrev64q_s8(veorq_s8(veorq_s8(*v8, *(v1 + v13.val[0].i64[0] - 15)), veorq_s8(*(v13.val[0].i64[0] + v2 - 12), *(v13.val[0].i64[0] + v3 - 10))));
  v14.val[0] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v14.val[0], v14.val[0], 8uLL), v10), vmulq_s8(v11, v9)));
  *v8 = vextq_s8(v14.val[0], v14.val[0], 8uLL);
  return (*(v7 + 8 * ((((v4 & 0x10) == 16) * ((3 * (a1 ^ 0x2A)) ^ 0x5F8)) ^ a1)))();
}

uint64_t sub_22D37A354@<X0>(uint64_t a1@<X8>)
{
  v5.i64[0] = 0x6060606060606060;
  v5.i64[1] = 0x6060606060606060;
  v6.i64[0] = 0xB0B0B0B0B0B0B0B0;
  v6.i64[1] = 0xB0B0B0B0B0B0B0B0;
  v7 = ((v3 + 312) ^ 0xFFFFFFFFFFFFFB7CLL) + v2;
  v8 = *(v1 + v7 - 15);
  v9 = *(v1 + v7 - 31);
  v10 = a1 + v7;
  *(v10 - 15) = vaddq_s8(vsubq_s8(v8, vandq_s8(vaddq_s8(v8, v8), v5)), v6);
  *(v10 - 31) = vaddq_s8(vsubq_s8(v9, vandq_s8(vaddq_s8(v9, v9), v5)), v6);
  return (*(v4 + 8 * ((4007 * ((v2 & 0x1E0) != 32)) ^ (v3 + 1098))))();
}

uint64_t sub_22D37A3D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 16) + 610312209;
  v4 = *(a1 + 12) - 759692676;
  v5 = v3 < ((219 * ((v2 + 1280) ^ 0x6B4)) ^ 0x417CFD9Fu);
  v6 = v3 > v4;
  if (v5 == v4 < ((4 * (v2 + 1280)) ^ 0x1FF4u) + 1098708733)
  {
    v5 = v6;
  }

  return (*(v1 + 8 * ((105 * v5) ^ (v2 + 1280))))();
}

uint64_t sub_22D37A488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, int a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, unsigned int a24)
{
  v31 = (((&a20 ^ 0xD859559) - 148145018 - 2 * ((&a20 ^ 0xD859559) & 0xF72B7C86)) ^ 0xA6E3BD5A) * v26;
  a20 = a17;
  HIDWORD(a21) = 893672457 * v29 - v31 + ((860 * (v24 ^ 0x427)) ^ 0x9932F6E);
  LODWORD(a22) = (v24 - 864) ^ v31;
  (*(v30 + 8 * (v24 + 1333)))(&a20);
  v32 = ((1873425182 - (&a20 | 0x6FAA331E) + (&a20 | 0x9055CCE1)) ^ 0xCC189864) * v26;
  a20 = a17;
  HIDWORD(a21) = 893672457 * a12 - v32 + 160639446;
  LODWORD(a22) = (v24 - 864) ^ v32;
  (*(v30 + 8 * (v24 + 1333)))(&a20);
  v33 = 1037613739 * ((-89544747 - (&a20 | 0xFAA9A7D5) + (&a20 | 0x556582A)) ^ 0xD4547555);
  a23 = (v24 - 128) ^ v33;
  a24 = (v27 ^ 0x5DD2377F) + ((2 * v27) & 0xBBA46EFE) - 138420282 + v33;
  a21 = a17;
  a22 = a13;
  (*(v30 + 8 * (v24 ^ 0xD19)))(&a20);
  v34 = 1037613739 * ((&a20 & 0x234C5E3B | ~(&a20 | 0x234C5E3B)) ^ 0xDB18CBB);
  a21 = a17;
  a22 = v28;
  a23 = (v24 - 128) ^ v34;
  a24 = (a15 ^ 0x75B67767) + ((2 * a15) & 0xEB6CEECE) - 539254818 + v34;
  (*(v30 + 8 * (v24 ^ 0xD19)))(&a20);
  v35 = 1037613739 * (((&a20 | 0x6F7FF0F) - (&a20 & 0x6F7FF0F)) ^ 0xD7F5D270);
  a23 = (v24 - 128) ^ v35;
  a24 = (a16 ^ 0x579BFFE5) + ((2 * a16) & 0xAF37FFCA) - 34203808 + v35;
  a21 = a17;
  a22 = v25;
  v36 = (*(v30 + 8 * (v24 + 1303)))(&a20);
  return (*(v30 + 8 * ((373 * (a20 == -1541908459)) ^ v24)))(v36);
}

uint64_t sub_22D37A7A0(double a1)
{
  *(v4 - 1) = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

uint64_t sub_22D37A7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v65 = (v62 - 743) | 0x641;
  v64[35] = *(v63 + 8 * (v62 - 855));
  *v64 = a2 + 397 * (v65 ^ 0x6E1u) - 682;
  v64[47] = a62;
  if (a62)
  {
    v66 = a40 == 0;
  }

  else
  {
    v66 = 1;
  }

  v67 = v66;
  return (*(v63 + 8 * ((v67 * ((5 * (v65 ^ 0x656)) ^ 0x39C)) ^ v65)))();
}

uint64_t sub_22D37A96C()
{
  v6 = (v3 + v2 + 8);
  *(v6 - 1) = v5;
  *v6 = v5;
  return (*(v4 + 8 * ((((v0 & 0xFFFFFFFFFFFFFFF0) == 16) * (((v1 - 1330694547) & 0x4F50C3FF) - 20)) ^ v1)))();
}

void sub_22D37AA5C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, int a8, unsigned int a9)
{
  *(*(a1 + 96) + 800) = 64;
  *(*(a1 + 96) + 804) = 352135382;
  *(*(a1 + 96) + 808) = *(a1 + 96) + 816;
  v10 = *(a1 + 96) + 800;
  v11 = *(a2 + 8) + (*(a2 + 4) - v9);
  v12 = 1564307779 * (((&a5 | 0x24AF3228) - &a5 + (&a5 & 0xDB50CDD0)) ^ 0xB3A2FE3B);
  a9 = v12 + 92;
  a5 = v9 - 468795949 + v12;
  a6 = v11;
  a7 = v10;
  (*(a3 + 19648))(&a5);
  JUMPOUT(0x22D37AB44);
}

uint64_t sub_22D37ABAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58)
{
  v63 = v62 - 192;
  v64 = STACK[0x2E0];
  v65 = (LODWORD(STACK[0x270]) ^ 0x5E7F7C7B) - 1275142240 + (((v58 ^ 0xDC6) - 1124143075) & (2 * LODWORD(STACK[0x270])));
  v66 = ((~(v62 - 192) & 0x566D114A | (v62 - 192) & 0xA992EEB5) ^ 0xDBC073A6) * v60;
  *(v62 - 136) = (v59 ^ 0x1B77AB35) + (a57 & 2) + (((v58 - 1109) | 0x430) ^ 0xFFEAF816) + v66;
  *(v62 - 132) = (v58 - 183) ^ v66;
  *(v63 + 8) = 81 - ((~(v62 + 64) & 0x4A | (v62 + 64) & 0xB5) ^ 0xA6) * v60;
  *(v63 + 16) = a58;
  *(v63 + 48) = &STACK[0x3FC];
  *(v63 + 32) = a24;
  *(v63 + 40) = a31;
  *(v62 - 168) = v65 ^ v66;
  *v63 = v64;
  v67 = (*(v61 + 8 * (v58 ^ 0xC89)))(v62 - 192);
  return (*(v61 + 8 * ((44 * (*(v62 - 128) != -1541908459)) ^ v58)))(v67);
}

uint64_t sub_22D37ACE8@<X0>(unsigned int a1@<W0>, unsigned int a2@<W8>)
{
  v9 = v2 < a1;
  *(v8 - 220 + a2) = *(v6 + v3) - ((2 * *(v6 + v3)) & 0x60) - 80;
  if (v9 == v3 + 1 > v5)
  {
    v9 = ((3 * (v4 ^ 0x5CD)) ^ (a1 + 70)) + v3 < v2;
  }

  return (*(v7 + 8 * ((55 * !v9) ^ v4)))();
}

uint64_t sub_22D37AD8C@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  v5 = *(v3 + v4);
  v6 = v4 + ((a1 - 625) | 0xA8u) - 490;
  *(a2 + v6) = v5;
  return (*(v2 + 8 * ((2700 * (v6 == 0)) ^ a1)))();
}

uint64_t sub_22D37ADC4@<X0>(unsigned int a1@<W8>)
{
  v9 = a1 < v3;
  *(v8 - 228 + v1) = *(v6 + v2) - ((2 * *(v6 + v2)) & 0x60) - 80;
  v10 = (v7 ^ 0x343) + v2 - 13;
  v11 = v3 + v2 + 1 < a1;
  if (v9 == v10 > v4)
  {
    v9 = v11;
  }

  return (*(v5 + 8 * ((28 * !v9) ^ v7)))();
}

uint64_t sub_22D37AEFC@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7 = v5 + 4 * (v3 + a1);
  *(v5 + 4 * ((a2 ^ 0xBu ^ (v3 + 170)) + a1)) = __ROR4__(*(v7 - 12) ^ v4 ^ *(v7 - 32) ^ *(v7 - 56) ^ *(v7 - 64), 31) ^ 0xB497CC4E;
  return (*(v2 + 8 * ((11 * (a1 + 1 == v6 + 80)) ^ a2)))();
}

uint64_t sub_22D37AF7C@<X0>(uint64_t a1@<X2>, int a2@<W8>, int8x16_t a3@<Q0>, int8x16_t a4@<Q3>)
{
  v9 = (v7 + (v5 + v4));
  v10 = *v9;
  v11 = v9[1];
  v12 = (a1 + v5);
  *v12 = vaddq_s8(vsubq_s8(v10, vandq_s8(vaddq_s8(v10, v10), a4)), a3);
  v12[1] = vaddq_s8(vsubq_s8(v11, vandq_s8(vaddq_s8(v11, v11), a4)), a3);
  return (*(v6 + 8 * (((2 * (v5 != 32)) | (16 * (v5 != 32))) ^ (v8 + a2 + 1067))))();
}

void sub_22D37B1B0(uint64_t a1, int a2)
{
  v3 = (((v2 ^ 0xA509677A) + 1526110342) ^ ((v2 ^ 0x261EE106) - 639557894) ^ ((v2 ^ 0xB504C51) - 189811793)) + 1885790042 + (((LODWORD(STACK[0x298]) ^ 0x4FFC22F2) - 1341924082) ^ ((LODWORD(STACK[0x298]) ^ 0x391CECA2) - 958196898) ^ (((a2 - 1082) ^ LODWORD(STACK[0x298]) ^ 0xFEA70457) + 22608771));
  LODWORD(STACK[0x298]) = v3 ^ ((v3 ^ 0xD8B1B4A6) + 2023293018) ^ ((v3 ^ 0x3D484446) - 1654591302) ^ ((v3 ^ 0xC5DDCD1F) + 1710586337) ^ ((v3 ^ 0x7FF376FF) - 539246079) ^ 0xD790812D;
  JUMPOUT(0x22D37B2ECLL);
}

uint64_t sub_22D37B9B0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = ((v5 + ((a5 + 1258352859) & 0xB4FF0FF7) - 132) ^ (a5 - 249034409) & 0xED7F77B) - a2;
  if (v6 > v8)
  {
    v8 = v6;
  }

  return (*(v7 + 8 * ((77 * (v8 < 0x7FFFFFFF)) | a5)))();
}

uint64_t sub_22D37BCF8()
{
  v7 = v3 - 1;
  *(v0 + v7) = *(v1 + v7) ^ v4;
  return (*(v6 + 8 * (v2 | (16 * (v7 != (v5 ^ 0x70D))))))();
}

uint64_t sub_22D37BD28@<X0>(uint64_t a1@<X8>)
{
  v9 = (v6 + 1479) - v5;
  v11.val[0].i64[0] = (v4 + v9 - 66) & 0xF;
  v11.val[0].i64[1] = (v4 - v5 + 14) & 0xF;
  v11.val[1].i64[0] = (v4 - v5 + 13) & 0xF;
  v11.val[1].i64[1] = (v4 - v5 + 12) & 0xF;
  v11.val[2].i64[0] = (v4 - v5 + 11) & 0xF;
  v11.val[2].i64[1] = (v4 - v5 + 10) & 0xF;
  v11.val[3].i64[0] = (v4 - v5 + 9) & 0xF;
  v11.val[3].i64[1] = (v4 - v5) & 0xF ^ 8;
  *(v8 + v9 - 1609 + v4) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(a1 + v9 - 1609 + v4), *(v1 + v11.val[0].i64[0] - 7)), veor_s8(*(v11.val[0].i64[0] + v2 - 2), *(v11.val[0].i64[0] + v3 - 5)))), 0xB0B0B0B0B0B0B0B0), vmul_s8(*&vqtbl4q_s8(v11, xmmword_22D5B62E0), 0x5959595959595959)));
  return (*(v7 + 8 * ((255 * (8 - (v4 & 0x18) == -v5)) ^ v6)))(xmmword_22D5B62E0);
}

void OowSGu(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v5 = a2 == 0;
  }

  else
  {
    v5 = 1;
  }

  v8 = v5 || a4 == 0 || a5 == 0;
  __asm { BRAA            X9, X17 }
}

void sub_22D37BEC0(uint64_t a1@<X1>, int a2@<W8>)
{
  (*(v3 + 8 * (a2 + 1388)))(*v4, a1, (a2 + *(v2 + 8) - 1858403616));
  *v2 = v6;
  *(v2 + 8) = v5;
  *(v2 + 12) = v5;
  JUMPOUT(0x22D37BEF0);
}

uint64_t sub_22D37BFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, int a12, int a13, int a14, char *a15, char a16, uint64_t a17)
{
  v24 = 1361651671 * (((&a12 | 0x28369FFB) - (&a12 & 0x28369FFB)) ^ 0xFB146F77);
  a16 = (((v19 + 7) & 0xFE ^ 0xC6) + 53 * (*(v17 + 8) + v22)) ^ (-41 * (((&a12 | 0xFB) - (&a12 & 0xFB)) ^ 0x77));
  a15 = &a10;
  a12 = v21 + v24 + 1548131730;
  a13 = v19 - v24 + 143;
  a17 = v20;
  v25 = (*(v23 + 8 * (v19 + 1340)))(&a12);
  return (*(v23 + 8 * ((446 * (a14 == v18)) ^ v19)))(v25);
}

uint64_t sub_22D37C070()
{
  v4 = v0;
  v5 = (*(v2 + 8 * (v0 + 1487)))();
  STACK[0x220] -= 16;
  return (*(v2 + 8 * ((116 * (v3 == (v4 ^ 0x29F ^ (v1 + 238)))) ^ (v4 - 627))))(v5);
}

uint64_t sub_22D37C2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  *(v21 - 128) = v17 - ((((v21 - 128) | 0x37A10523) - (v21 - 128) + ((v21 - 128) & 0xC85EFAD8)) ^ 0xA5773A87) * v19 + 1692;
  *(v21 - 120) = &a15;
  *(v21 - 112) = &a17;
  v22 = (*(v18 + 8 * (v17 ^ 0x8E5)))(v21 - 128);
  return (*(v18 + 8 * ((1963 * (*(v21 - 104) > v20 + ((v17 - 1418784891) & 0x5490EFF6u) - 226)) ^ v17)))(v22);
}

uint64_t sub_22D37C3A4@<X0>(uint64_t a1@<X6>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(&off_284082B80 + a2 - 769438370);
  v7 = (a2 + 872848098) & 0x9E1CBA9F;
  v9 = ((**(a7 + 80) - (*v13 ^ 0xB0)) ^ 0x4FFFEED7) + ((2 * (**(a7 + 80) - (*v13 ^ 0xB0))) & 0x9FFFDDAE) - 14688848 == v12 && (v7 ^ 0xFFFFFFFF942DB3FDLL) != -1808942247;
  return (*(v11 + 8 * ((15 * v9) ^ v7 ^ 0xF)))(a1);
}

void sub_22D37C618(_DWORD *a1)
{
  v1 = *a1 - 843532609 * (((a1 ^ 0x88EA6F2) & 0xE4B4B0D1 | ~(a1 ^ 0x88EA6F2 | 0xE4B4B0D1)) ^ 0x4F88BD59);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_22D37C6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v19 = 1037613739 * ((((v18 - 128) | 0x5300E28D) + (~(v18 - 128) | 0xACFF1D72)) ^ 0x8202CFF3);
  *(v18 - 120) = &a15;
  *(v18 - 128) = ((v17 ^ 0xFCF7DFC7) + 805207295 + (((v15 - 926) ^ 0xF9EFBD92) & (2 * v17))) ^ v19;
  *(v18 - 124) = (v15 - 294) ^ v19;
  v20 = (*(v16 + 8 * (v15 + 985)))(v18 - 128);
  return sub_22D37C774(v20);
}

uint64_t sub_22D37C774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v22 - 120) = &a17;
  *(v22 - 112) = v17;
  *(v22 - 128) = v21 - ((v22 - 128) ^ 0x92D63FA4) * v19 + 1510;
  v23 = (*(v18 + 8 * (v21 + 1895)))(v22 - 128);
  return (*(v18 + 8 * (((*(v22 - 104) > v20) * (((v21 + 763) ^ 0x59E) - 37)) ^ v21)))(v23);
}

uint64_t sub_22D37C828(__n128 a1, __n128 a2, uint64_t a3, uint64_t a4)
{
  a1.n128_u16[0] = 24672;
  a1.n128_u8[2] = 96;
  a1.n128_u8[3] = 96;
  a1.n128_u8[4] = 96;
  a1.n128_u8[5] = 96;
  a1.n128_u8[6] = 96;
  a1.n128_u8[7] = 96;
  a2.n128_u16[0] = -20304;
  a2.n128_u8[2] = -80;
  a2.n128_u8[3] = -80;
  a2.n128_u8[4] = -80;
  a2.n128_u8[5] = -80;
  a2.n128_u8[6] = -80;
  a2.n128_u8[7] = -80;
  return sub_22D37C848(353, a4, 1517, a1, a2);
}