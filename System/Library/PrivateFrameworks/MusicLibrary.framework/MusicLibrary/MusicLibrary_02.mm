uint64_t sub_22D37C848(unsigned int a1, int8x8_t a2, int8x8_t a3, uint64_t a4, unint64_t a5)
{
  *(v10 + ~v6 + v5) = vadd_s8(vsub_s8(*(v7 + ~v6 + v5), vand_s8(vadd_s8(*(v7 + ~v6 + v5), *(v7 + ~v6 + v5)), a2)), a3);
  v12 = (((v8 + 894) | a1) ^ a5) + v6 == v9;
  return (*(v11 + 8 * (v12 | (8 * v12) | v8)))();
}

uint64_t sub_22D37C8D8()
{
  v6 = v1 < v2;
  if (v6 == (v0 + 1) > 0xFFFFFFFF7D1EBBF5)
  {
    v6 = ((v3 - 205) ^ (v4 + 1665)) + v0 < v1;
  }

  return (*(v5 + 8 * ((v6 * ((v3 - 921) ^ 2)) ^ v3)))();
}

uint64_t sub_22D37C93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v21 - 120) = &a15;
  *(v21 - 112) = v15;
  *(v21 - 128) = v17 - ((v21 - 128 + v18 - 2 * ((v21 - 128) & v18)) ^ 0x98A1D56) * v19 + 584;
  v22 = (*(v16 + 8 * (v17 ^ 0xC39)))(v21 - 128);
  return (*(v16 + 8 * ((568 * (*(v21 - 104) == ((20 * (v17 ^ 0x5A1)) ^ (v20 - 530)))) ^ v17)))(v22);
}

uint64_t sub_22D37CC18(uint64_t a1)
{
  v5 = v1 - 1;
  *(a1 + v5) = *(v3 + v5);
  return (*(v4 + 8 * (((v5 == 0) * (v2 - 898)) ^ (v2 - 449))))();
}

uint64_t sub_22D37CC8C()
{
  *(v2 - 120) = v1 + 1388665877 * ((v2 + 1154748297 - 2 * ((v2 - 128) & 0x44D41009)) ^ 0xC97972E5) + 277;
  *(v2 - 112) = &v5;
  *(v2 - 128) = v4;
  return (*(v0 + 8 * (v1 ^ 0x90F)))(v2 - 128);
}

uint64_t sub_22D37CDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, char a31)
{
  v36 = (v31 - 1162);
  HIDWORD(v38) = v33 ^ 0x819;
  LODWORD(v38) = v33 | 0x815;
  HIDWORD(v39) = v33 ^ 0x15A;
  LODWORD(v39) = v33 ^ 0x15C;
  return (*(v34 + 8 * ((2895 * ((v36 ^ 0xB76 ^ (v36 - 535) ^ 0x941) == 32)) ^ v36)))(a1, 879, 2934, 2369, 2895, 1537185821, 4289680374, 5285759, a9, v38, v36 ^ 0x36F, &a31 % 0x25, v32, a14, a15, 5119 - 1361651671 * ((2 * ((v35 - 152) & 0x1CDC40BB67FA6460) - (v35 - 152) - 0x1CDC40BB67FA6467) ^ 0x308ECC7D4B276B15), 1361651671 * ((2 * ((v35 - 152) & 0x1CDC40BB67FA6460) - (v35 - 152) - 0x1CDC40BB67FA6467) ^ 0x308ECC7D4B276B15), 1388665877 * ((2 * ((v35 - 152) & 0x69FE04BBB0340A18) - (v35 - 152) - 0x69FE04BBB0340A1CLL) ^ 0xA37B6B0BC2669708), a19, a20, v39);
}

void sub_22D37D498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = *(v5 - 156);
  if (v6 == 1)
  {
    v10 = *(v5 - 188);
    v9 = *(v5 - 184);
    *(v5 - 196) = (8 * (v9 - ((2 * v9) & 4)) + 16) ^ 0xA0;
    *(v5 - 195) = (v9 >> 5) ^ 0xB0;
    *(v5 - 194) = (v9 >> 13) ^ 0xB0;
    *(v5 - 193) = (v9 >> 21) ^ 0xB0;
    *(v5 - 192) = ((__PAIR64__(v10, v9) >> 29) - ((2 * (__PAIR64__(v10, v9) >> 29)) & 0x9C) - 50) ^ 0x7E;
    *(v5 - 191) = (v10 >> 5) ^ 0xB0;
    *(v5 - 190) = (v10 >> 13) ^ 0xB0;
    v8 = (v10 >> 21) ^ 0xFFFFFFB0;
  }

  else
  {
    if (v6 != 2)
    {
      goto LABEL_6;
    }

    v8 = *(v5 - 188);
    v7 = *(v5 - 184);
    *(v5 - 196) = (v8 >> 21) - ((a5 ^ (a5 - 107) ^ 0xCB) & (2 * (v8 >> 21))) - 80;
    *(v5 - 195) = (v8 >> 13) - ((v8 >> 12) & 0x60) - 80;
    *(v5 - 194) = (v8 >> 5) - ((v8 >> 4) & 0x60) - 80;
    *(v5 - 193) = (__PAIR64__(v8, v7) >> 29) - ((2 * (__PAIR64__(v8, v7) >> 29)) & 0x60) - 80;
    *(v5 - 192) = (v7 >> 21) - ((v7 >> 20) & 0x60) - 80;
    *(v5 - 191) = (~(v7 >> 12) | 0x9F) + (v7 >> 13) - 79;
    *(v5 - 190) = (~(v7 >> 4) | 0x9F) + (v7 >> 5) - 79;
    LOBYTE(v8) = (8 * (v7 - 2 * (v7 & 3)) - 104) ^ 0x28;
  }

  *(v5 - 189) = v8;
LABEL_6:
  JUMPOUT(0x22D3742C4);
}

uint64_t sub_22D37D8B8(uint64_t a1, uint64_t a2)
{
  *(a1 + 88) = 43;
  *(a1 + 72) = *(a2 + 4);
  *(a1 + 80) = *(a2 + 8);
  return 0;
}

void sub_22D37D8D8(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = 1785193651 * (((a1 ^ 0x4463FDDD | 0xA59C07CB) - (a1 ^ 0x4463FDDD | 0x5A63F834) + 1516501044) ^ 0xF2231636);
  v2 = *(a1 + 24) ^ v1;
  v3 = (*(a1 + 28) ^ v1);
  v4 = *(&off_284082B80 + v2 - 642) - 8;
  (*&v4[8 * v2 + 13720])(*(&off_284082B80 + v2 - 613) - 4, sub_22D35649C);
  v5 = *(*(&off_284082B80 + v2 - 602) - 4);
  v6 = v2 - 1037613739 * ((&v6 & 0x6E7F5963 | ~(&v6 | 0x6E7F5963)) ^ 0x40828BE3) + 403;
  v7 = v5;
  (*&v4[8 * v2 + 13568])(&v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_22D37DB58@<X0>(int a1@<W0>, uint64_t a2@<X6>, unsigned int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = (v16 + 4 * v10);
  v19 = (v14 >> ((v11 ^ v15) - 98)) + (*v18 ^ a3) + HIDWORD(a2) + v12 * (*(*(a9 + 8) + 4 * v10) ^ a3);
  *(v18 - 1) = v19 + a3 - (a1 & (2 * v19));
  return (*(v13 + 8 * (((v10 + 1 == v9) * v17) ^ (v11 - 120))))();
}

uint64_t sub_22D37DC30(__n128 a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v11 = (a7 + 4 * a8);
  *v11 = a1;
  v11[1] = a1;
  return (*(v10 + 8 * ((((v9 ^ (a4 == a8)) & 1) * v8) ^ a6)))();
}

uint64_t sub_22D37DC68@<X0>(char a1@<W1>, int a2@<W6>, int a3@<W7>, uint64_t a4@<X8>)
{
  v8.i64[0] = 0x6060606060606060;
  v8.i64[1] = 0x6060606060606060;
  v9.i64[0] = 0xB0B0B0B0B0B0B0B0;
  v9.i64[1] = 0xB0B0B0B0B0B0B0B0;
  v10 = (v7 - 220 + a4);
  v11 = vaddq_s8(vsubq_s8(v5[1], vandq_s8(vaddq_s8(v5[1], v5[1]), v8)), v9);
  *v10 = vaddq_s8(vsubq_s8(*v5, vandq_s8(vaddq_s8(*v5, *v5), v8)), v9);
  v10[1] = v11;
  return (*(v6 + 8 * ((170 * (2 * (v4 ^ (a2 + 113)) - 834 == (a1 & 0x60))) ^ (a3 + v4 + 1587))))();
}

void sub_22D37DCEC(uint64_t a1)
{
  v1 = *(a1 + 4) + 143681137 * ((-2 - ((a1 | 0xE35D4AC9) + (~a1 | 0x1CA2B536))) ^ 0x7DFA3EE6);
  __asm { BRAA            X9, X17 }
}

void sub_22D37DDE0()
{
  LODWORD(STACK[0x404]) = -401431181;
  *(v3 + 392) = v0;
  *(v3 + 152) = v2;
  v4 = &STACK[0x4F0] + v1;
  STACK[0x208] = &STACK[0x4F0] + v1;
  *v4 = 0x6370646600;
  v4[8] = 1;
  JUMPOUT(0x22D37DE90);
}

uint64_t sub_22D37E07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t (*a39)(void), uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  *(v58 + 240) = v57;
  *(v58 + 176) = a57;
  return a39();
}

uint64_t sub_22D37E154@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 + 332));

  return v3(v1);
}

void sub_22D37E184(uint64_t a1)
{
  v1 = *(a1 + 32) ^ (1037613739 * ((-2 - ((a1 | 0x9B3F9159) + (~a1 | 0x64C06EA6))) ^ 0xB5C243D9));
  __asm { BRAA            X1, X17 }
}

void sub_22D37E2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  a17 = a12;
  a15 = 0;
  a19 = v21 - 1785193651 * ((&a15 + 1583944861 - 2 * (&a15 & 0x5E69149D)) ^ 0x4DB5F8BD) + v19 + 638;
  (*(v20 + 8 * (v19 ^ v22)))(&a15);
  JUMPOUT(0x22D35513CLL);
}

uint64_t sub_22D37E3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, uint64_t a48, int a49, uint64_t a50, uint64_t a51, uint64_t a52, int8x16_t a53, _BYTE *a54, uint64_t a55, uint64_t a56)
{
  v60 = STACK[0x2DC];
  if (LODWORD(STACK[0x2DC]) == -1114247517)
  {
    v61 = a49 & 0xD2182BB5;
    *(a55 + 35) = *(a56 + 243);
    *(a55 + 34) = *(a56 + 242);
    *(a55 + 33) = *(a56 + 241);
    *(a55 + 32) = *(a56 + 240);
    *(a55 + 31) = *(a56 + 239);
    *(a55 + 30) = *(a56 + 238);
    *(a55 + 29) = *(a56 + 237);
    *(a55 + 28) = *(a56 + 236);
    *(a55 + 27) = *(a56 + 235);
    *(a55 + 26) = *(a56 + 234);
    *(a55 + 25) = *(a56 + 233);
    *(a55 + 24) = *(a56 + 232);
    *(a55 + 23) = *(a56 + 231);
    *(a55 + 22) = *(a56 + 230);
    *(a55 + 21) = *(a56 + 229);
    *(a55 + 20) = *a54;
    v62 = *(v59 + 288);
    v66 = 1785193651 * ((v58 - 192) ^ 0x13DCEC20);
    *(v58 - 184) = v62;
    *(v58 - 188) = v66 - 562359757 + a8;
    *(v58 - 176) = v66 ^ 0xA3CEBA4D;
    v64 = (*(v56 + 8 * (a8 + 1485)))(v58 - 192);
    STACK[0x440] = v62;
    STACK[0x248] = v57;
    LODWORD(STACK[0x3B4]) = 17;
    v65 = -21449748;
    goto LABEL_8;
  }

  if (v60 == 1124450230)
  {
    v61 = a8 - 500;
    *(a55 + 4) = veorq_s8(*(a56 + 228), a53);
    v62 = *(v59 + 288);
    v63 = 1785193651 * ((((2 * (v58 - 192)) | 0xB92C0384) - (v58 - 192) + 594148926) ^ 0xCF4AEDE2);
    *(v58 - 184) = v62;
    *(v58 - 188) = v63 - 562359757 + a8;
    *(v58 - 176) = v63 ^ 0xA3CEBA4D;
    v64 = (*(v56 + 8 * a47))(v58 - 192);
    STACK[0x440] = v62;
    STACK[0x248] = v57;
    LODWORD(STACK[0x3B4]) = 17;
    v65 = -21449760;
LABEL_8:
    LODWORD(STACK[0x3A4]) = v65;
    STACK[0x470] = v62;
    LODWORD(STACK[0x47C]) = 17;
    STACK[0x328] = v57;
    return (*(v56 + 8 * (v61 ^ (32 * ((*(v62 + 68) & ((v61 ^ 0x771) + v61 + 201 - 2307)) + 17 < 0x40)))))(v64);
  }

  if (v60 == 942022032)
  {
    *(a55 + 36) = veorq_s8(*(a56 + 228), a53);
    JUMPOUT(0x22D38039CLL);
  }

  return sub_22D35FB44();
}

uint64_t sub_22D37E3B4()
{
  *(v4 + 120) = 0;
  v5 = 1388665877 * ((v3 + 489683575 - 2 * ((v3 - 192) & 0x1D2FFB37)) ^ 0x908299DB);
  v6 = (v3 - 192);
  v6[4] = 0;
  *(v3 - 176) = v5 + v0 - 831;
  *(v3 - 172) = v5 - 1424879885;
  *v6 = &STACK[0x298];
  v6[1] = &STACK[0x330];
  v7 = (*(v2 + 8 * (v0 + 1200)))(v3 - 192);
  v8 = *(v3 - 168) == v1 + v0 - 301 - 917;
  return (*(v2 + 8 * (((2 * (((v0 - 39) ^ v8) & 1)) & 0xFB | (4 * (((v0 - 39) ^ v8) & 1))) ^ v0)))(v7);
}

void sub_22D37E488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  if (((a29 - v38) | (v38 - a29)) > (v40 ^ (v39 - 624)))
  {
    v42 = 0x80000000;
  }

  else
  {
    v42 = 0x7FFFFFFF;
  }

  *v41 = v42;
  (*(a2 + 8 * (v38 ^ 0x958)))(a38);
  JUMPOUT(0x22D37E504);
}

void sub_22D37E654()
{
  v4 = -1370492359 * (*(v0 + 12) + v2) - 735534440;
  v5 = ((v4 ^ 0xD9D8AF55) + 1453617045) ^ v4 ^ ((v4 ^ 0x34D7366F) + (((v3 - 69) | 0x40) ^ 0xBBABF66A)) ^ ((v4 ^ 0x227319F3) - 1391470285) ^ ((v4 ^ 0xBFFFBFF7) + 813924151);
  *v6 = (HIBYTE(v5) ^ 0x70) - 2 * ((HIBYTE(v5) ^ 0x70) & 0x33 ^ HIBYTE(v5) & 3) - 80;
  v6[1] = (BYTE2(v5) ^ 0x83) - ((v5 >> 15) & 0x60) - 80;
  v6[2] = (BYTE1(v5) ^ 0x3F) - ((2 * (BYTE1(v5) ^ 0x3F)) & 0x60) - 80;
  v6[3] = v5 ^ 0x8E;
  *(v0 + 8) = *(v1 + 24);
}

uint64_t sub_22D37E7FC()
{
  v5 = v1 + v0;
  if (v5 >= 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = -v5;
  }

  if (v2 >= 0)
  {
    v7 = v2;
  }

  else
  {
    v7 = -v2;
  }

  return (*(v4 + 8 * (((((v6 > v7) ^ (63 * (v3 ^ 0x39))) & 1) * ((v3 ^ 0x339) + 58)) ^ v3)))();
}

uint64_t sub_22D37E978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, unsigned int a36, uint64_t a37, int a38, uint64_t a39, uint64_t a40)
{
  v45 = __ROR8__((((v41 << ((v43 ^ 0xFCu) - 38)) ^ 0x200C003E17FFFFFFLL) & ((v41 >> 37) ^ 0xBA9CE5BE57F1EBDFLL) | (v41 << ((v43 ^ 0xFCu) - 38)) & 0x45631A41A8000000) ^ 0x507BAE3592293956, 27);
  v46 = v45 ^ v40;
  v47 = v44 ^ a37;
  v48 = a6 ^ 0xCEDF04BD5A9B35CALL;
  v49 = v45 ^ a6 ^ 0xCEDF04BD5A9B35CALL;
  v50 = v49 ^ 0x864A0C04C2FE9B8DLL;
  v51 = v44 ^ a37 ^ v42;
  v52 = (v51 ^ 0xC6281ECBFFA740A9) & (v44 ^ a37 ^ 0xEE67842989D254C6);
  v53 = ((v49 ^ 0x864A0C04C2FE9B8DLL) & 0xA152A1D3BFDE38A3 ^ (v46 ^ 0x7711FC67F61E1413) & (v49 ^ 0xB3F5E0F17456340BLL) ^ 0xDEED5F2E4977D77DLL) - (v46 ^ 0xE3FCB141FF688336 ^ v49 ^ 0x864A0C04C2FE9B8DLL);
  v54 = (v46 ^ 0x19E47B1461C6CE0CLL) & (v47 ^ 0xA4B27F2901358D4DLL);
  v55 = v47 & 0xCFA726A02806E2BCLL;
  v56 = v51 & 0xB52A04FF77182674 ^ v52 ^ 0xFDA140AC88A5A203 ^ v46;
  v57 = v45 & 0xC1CE1932DCC49218 ^ v51 ^ (v45 ^ 0xA307D94CEAD77A21) & (a6 ^ 0xE01CDBCDE7211607);
  v58 = v47 ^ 0xF487990548AFFC21 ^ v56;
  v59 = v58 & 0xFFFFFFFFFFFFFFFELL;
  v60 = v50 ^ v55 ^ v54;
  v61 = (v51 ^ 0x39D7E1340058BF56) & (a6 ^ 0x94B9A8000F64CD33) ^ v51 & 0x4A949500CB7EB6D3;
  v62 = v60 ^ v56;
  v63 = v60 ^ v56 ^ 0x481DBB894243ECF5;
  v64 = v58 & 1;
  if ((v64 & v61) != 0)
  {
    v64 = -v64;
  }

  v65 = v59 ^ 0x8ABEF87C8808CCB5 ^ (v64 + (v61 ^ 0x89481000058B652));
  v66 = (v53 - ((2 * v53) & 0x21E4737B3D029C54) + 0x10F239BD9E814E2ALL) ^ v48;
  v67 = v57 ^ 0x9070F7040D86C7A1 ^ (v66 + 0x66C112FB1170F2E0 + (~(2 * v66) | 0x327DDA09DD1E1A41));
  v68 = (v65 ^ (8 * v65) | (v65 >> 61)) ^ (v65 >> 39) ^ ((v65 >> 61) & v65 | (v65 << 25));
  *(&v69 + 1) = v62 ^ 0x60F10;
  *&v69 = v62 ^ 0xEE10930ECCF00000;
  v70 = (v69 >> 19) - ((2 * (v69 >> 19)) & 0x17270AD0B751FE20) - 0x746C7A97A45700F0;
  v71 = v68 + ((v57 << 58) ^ 0xA800000000000000) - 2 * (v68 & ((v57 << 58) ^ 0xA800000000000000));
  v72 = ((v57 >> 6) | (v57 << 63)) ^ (v57 >> 1) ^ (v71 - 2 * (v71 & 0x1EE45C7A32FA39FFLL ^ v68 & 7) - 0x611BA385CD05C608);
  v73 = ((v72 ^ 0xF743383470CBC182) - 2 * ((v72 ^ 0xF743383470CBC182) & 0xBCC2C5B67C3294DLL ^ v72 & 4) - 0x7433D3A4983CD6B7) ^ v57;
  v74 = v73 ^ 0x5E2DEAF2ADF14AA3;
  v75 = v60 ^ 0x624ED22E6E3EF78 ^ ((v60 ^ 0x624ED22E6E3EF78) >> 7);
  *(&v69 + 1) = v63;
  *&v69 = v62;
  v76 = ((v69 >> 28) ^ 0x60CDBB36BAA1CFFCLL ^ v70) - ((2 * ((v69 >> 28) ^ 0x60CDBB36BAA1CFFCLL ^ v70)) & 0x4C1A510F1D6BC7CALL) - 0x59F2D778714A1C1BLL;
  v77 = v67 ^ (v67 >> 10) ^ (v67 << 47) ^ (v67 >> 17) ^ (v67 << 54);
  *(&v69 + 1) = v60 ^ 0x624ED22E6E3EF78;
  *&v69 = v60;
  v78 = ((v60 ^ 0x624ED22E6E3EF78) << 57) ^ ((v60 ^ 0x624ED22E6E3EF78) << 23) ^ __ROR8__((v69 >> 44) & 0xE0000000000FFFFFLL ^ __ROR8__(v75, 3) ^ 0xAFA235EACE6051EELL, 61) ^ 0x7D11AF5673019D05;
  v79 = v78 ^ v63 ^ v76;
  v80 = v77 ^ v78;
  v81 = v79 & ~v80;
  v82 = (v73 ^ 0xA1D2150D520EB55CLL) & v77;
  v83 = (~(2 * v79) + v79) & v68;
  v84 = v74 & ~v68 ^ v79;
  v85 = v74 ^ (__ROR8__(__ROR8__(v77, 62) ^ 0x25DA1EB034059543, 2) ^ 0x36897853F2FE9AAFLL) & v80;
  if ((v83 & 0x100000000 & v80) != 0)
  {
    v86 = -(v83 & 0x100000000);
  }

  else
  {
    v86 = v83 & 0x100000000;
  }

  v87 = (v86 + v80) ^ v83 & 0xFFFFFFFEFFFFFFFFLL;
  v88 = v68 ^ v82 ^ v84 ^ 0x5747C156E755AED6;
  v89 = v84 ^ v87;
  v90 = v89 ^ 0xAC7C0FF4012565E3;
  v91 = (v85 ^ 0x6F45779FA95FC03AuLL) >> 1;
  v92 = v77 ^ v81 ^ 0x28FA59BDD48D0B6 ^ v85;
  v93 = v88 ^ __ROR8__(v88, 61);
  if ((v89 & 0x8000) != 0)
  {
    v94 = -32768;
  }

  else
  {
    v94 = 0x8000;
  }

  v95 = v93 ^ (v88 << 25) ^ (v88 >> 39);
  v96 = v87 ^ 0x9A383CF881807545;
  v97 = v92 ^ __ROR8__(v92, 10) ^ (v92 << 47) ^ (v92 >> 17);
  v98 = v96 ^ (v96 >> 7) ^ ((v96 >> 41) | (v96 << 57)) ^ (v96 << (v91 & 0x17) << (v91 & 0x17 ^ 0x17));
  *(&v99 + 1) = v85 ^ 0x6F45779FA95FC03ALL;
  *&v99 = v85;
  v100 = v91 ^ (v99 >> 6) ^ ((v85 ^ 0x6F45779FA95FC03ALL) & 0x9B6535C14F352826 ^ (v85 << 63) | (v85 ^ 0x6F45779FA95FC03ALL) & 0x649ACA3EB0CAD7D9) ^ v95;
  v101 = v90 ^ (v90 >> 19) ^ ((v94 + v90) >> 28) ^ v98 ^ (((v94 + v90) ^ 0x8000) << 36) ^ (((v94 + v90) ^ 0x8000) << 45);
  v102 = v98 ^ v97;
  v103 = v102 - ((2 * v102) & 0x4BCF7563A6B4D67ELL);
  v104 = v100 ^ 0x1BD15DE7EA57F00 ^ v98 & ~v97;
  v105 = v101 ^ (v100 ^ 0x1BD15DE7EA57F00) & ~v95;
  v106 = v95 & ~v101 ^ v102;
  v107 = v105 + v95 - 2 * (v101 & v95);
  v108 = (v75 >> 3) & 1;
  v109 = v105 ^ 0x6E04C15915AB860ALL ^ v106;
  v110 = v109 >> 19;
  *(&v99 + 1) = (v109 >> 19) & v109 & 0x1A36E0206AEDLL ^ (v109 >> 28) ^ (((v109 >> 19) | v109) & 0xD8807A36E0206AEDLL | (v109 >> 19) & 0x5C91FDF9512 ^ v109 & 0x277F85C91FDF9512);
  *&v99 = (v109 << 36) ^ (v109 << 45) ^ *(&v99 + 1);
  v111 = v107 ^ (v100 ^ 0xFE42EA21815A80FFLL) & v97;
  v112 = v104 ^ v97 ^ v101 & ((v103 - 0x5A18454E2CA594C1) ^ 0x5A18454E2CA594C0) ^ 0x7370AC685030CB36;
  v113 = (v111 >> 39) ^ (v111 >> 61) ^ (8 * (v111 ^ 0x3278F838FE43D2BCLL)) ^ (33554433 * (v111 ^ 0x3278F838FE43D2BCLL) - (((v111 ^ 0x3278F838FE43D2BCLL) << 26) & (2 * (v111 ^ 0x3278F838FE43D2BCLL))));
  v114 = v113 ^ 0x64F1F1;
  v115 = v106 ^ 0x26974B18501E2B14 ^ ((v106 ^ 0x26974B18501E2B14uLL) >> 41) ^ ((v106 ^ 0x26974B18501E2B14uLL) >> 7) ^ ((v106 ^ 0x26974B18501E2B14) << 23) ^ ((v106 ^ 0x26974B18501E2B14) << 57);
  v116 = v104 ^ 0x7955EAEC4D48B80CLL ^ (v104 << 63) ^ __ROR8__(v104 ^ 0x7955EAEC4D48B80CLL, 6) ^ ((v104 ^ 0x7955EAEC4D48B80CuLL) >> v108 >> (v108 ^ 1u));
  v117 = v113 ^ 0x64F1F1 ^ v116;
  v118 = (v112 >> 17) ^ __ROR8__(v112, 10) ^ __ROR8__(__ROR8__(v112, 14) & 0xFFFC000000000007 ^ __ROR8__(v112, 61), 3);
  *&v99 = __ROR8__(__ROR8__(v115, 7) ^ __ROR8__(__ROR8__(v99 >> 7, 63) ^ 0x24269CE77F144ED3, 1) ^ 0xD364F86CD0CA304BLL, 57);
  v119 = v115 & ~v118 ^ v117;
  v120 = v99 ^ 0xBBDB0FB7A00B9120 ^ (v113 ^ 0xFFFFFFFFFF9B0E0ELL) & v116;
  v121 = v113 ^ (((v117 ^ 0xCC3347B5E5FE3FB3) & 0x10000000000 | 0x33CCB84A1A01C04CLL) ^ (v117 ^ 0xCC3347B5E5FE3FB3) & 0xFFFFFEFFFFFFFFFFLL) & v118 ^ 0x425764BB58132BD4 ^ v120;
  v122 = (v99 ^ 0x4424F0485FF46EDFLL) & v114 ^ v118 ^ v115;
  v123 = v120 ^ 0x97F6A7E5F6E8F58ALL ^ v122;
  v124 = (v122 ^ -v122 ^ (0x70C7A8D3F3643DFDLL - (v122 ^ 0x70C7A8D3F3643DFDLL))) + 0x70C7A8D3F3643DFDLL;
  v125 = v118 ^ 0x44C9D571A5C4A51CLL ^ v119 ^ (v99 ^ 0xBBDB0FB7A00B9120) & ~(v118 ^ v115);
  v126 = v119 ^ 0xD3DA1E3360BF843ALL ^ ((v119 ^ 0xD3DA1E3360BF843ALL) >> 1) ^ ((v119 ^ 0xD3DA1E3360BF843ALL) >> 6);
  v128 = __ROR8__(__ROR8__(v121, 62) & 0xFFFFFE0000000003 ^ __ROR8__(v121 ^ (8 * v121) ^ ((v121 >> 61) | (v121 << 25)), 23) ^ 0x735302FC48340548, 41);
  v129 = (v124 >> 7) ^ (v124 >> 41) ^ (v124 << 23) ^ (v124 << 57);
  v130 = v129 ^ v124;
  v131 = v123 ^ (v123 >> 28) ^ (v123 >> 19) ^ (v123 << 36) ^ (v123 << 45) ^ v129 ^ v124;
  v132 = v126 & 0xFFFFFFF7FFFFFFFFLL ^ (v119 << 63) ^ (v126 & 0x800000000 | ((v119 ^ 0xD3DA1E3360BF843ALL) << (v110 & 0x12) << (v110 & 0x12 ^ 0x3A))) ^ v128;
  if (v129 == v124)
  {
    v133 = 0;
  }

  else
  {
    v133 = v125 << 47;
  }

  v127 = (v125 ^ (v125 >> 10) | (v125 << 54)) ^ (v125 << 54) & v125;
  v134 = (v133 ^ v127 | (v125 << 47)) ^ (v127 & (v125 << 47) & 0xFFFF800000000000 | (v125 >> 17));
  v135 = v132 ^ 0x7E241A02A439A981;
  v136 = v134 & (v132 ^ 0x81DBE5FD5BC6567ELL);
  v137 = v134 ^ v130 ^ (v128 ^ 0x7E241A02A439A981) & ~v131;
  v138 = (~(2 * (v128 ^ 0x7E241A02A439A981)) + (v128 ^ 0x7E241A02A439A981)) & (v132 ^ 0x7E241A02A439A981) ^ v131;
  v139 = v137 ^ v138;
  v140 = v137 ^ v138 ^ 0x93C23431B76D41FLL;
  *(&v141 + 1) = v140;
  *&v141 = v137 ^ v138;
  v142 = v128 ^ 0x1E21A437EE621933 ^ v138;
  v143 = v130 & ~v134 ^ v135;
  v144 = v131 & ~(v134 ^ v130) ^ v134 ^ v143;
  v145 = (v141 >> 62) ^ (4 * (v140 >> 28)) ^ 0x406FF36C296024B3;
  v146 = ((v142 ^ v136) << (v130 & 3) << (v130 & 3 ^ 3)) ^ v142 ^ v136 ^ (((v142 ^ v136) >> 39) ^ ((v142 ^ v136) >> 61) | ((v142 ^ v136) << 25));
  *(&v141 + 1) = v140;
  *&v141 = v139;
  v147 = ((v141 >> 19) ^ __ROR8__(v145, 2) ^ 0xD01BFDFC8E306A42) + 1939274075;
  v148 = v143 ^ 0x6DC4FB0BD4FFFF44 ^ ((v143 ^ 0x6DC4FB0BD4FFFF44) << 58) ^ (((v143 ^ 0x6DC4FB0BD4FFFF44) >> 1) ^ ((v143 ^ 0x6DC4FB0BD4FFFF44) >> 6) | (v143 << 63));
  v149 = v146 ^ (__ROR8__(v144 ^ 0xF374A001D380BDC2, 17) ^ ((v144 ^ 0xF374A001D380BDC2) >> 10) ^ (((v144 ^ 0xF374A001D380BDC2) << 54) | (v144 ^ 0xF374A001D380BDC2) & 0xFFFFFFFFFFFFFFDFLL) ^ (((v144 ^ 0xF374A001D380BDC2) << 54) & (v144 ^ 0xF374A001D380BDC2) | v144 & 0x20)) & ~(v146 ^ v148) ^ 0x62030E578F798D5ALL ^ v137 ^ 0x2DB5B6AF87F64351 ^ ((v137 ^ 0x2DB5B6AF87F64351uLL) >> 7) ^ ((v137 ^ 0x2DB5B6AF87F64351) << 23) ^ ((v137 ^ 0x2DB5B6AF87F64351) << 57) ^ ((v137 ^ 0x2DB5B6AF87F64351uLL) >> 41) ^ (v140 << 36) ^ (((2 * v147) & 0xFFFFFFFF18D20D4ALL) + (v147 ^ 0xFFFFFFFF8C6906A5)) ^ v148 & ~v146;
  return (*(a40 + 8 * (v43 ^ (433 * (a36 > 2 * (a38 & 1) + (a38 ^ 1u))))))(a1, a2, a3, a4, a5, (8 * v149) ^ (v149 >> 39) ^ ((v149 >> 61) | v149), a7, a40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_22D37F744@<X0>(uint64_t a1@<X3>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  v60 = (v59 + 4 * v55);
  v61 = v56 & 0x80000000;
  v62 = v55 + 1;
  v63 = *(v59 + 4 * v62);
  v64 = ((v63 & 0x7FFFFFFE | v61) >> ((a2 ^ 0x38) + 122)) ^ v60[397];
  *v60 = (v64 + v57 - (v58 & (2 * v64))) ^ *(&a55 + (v63 & 1));
  return (*(a1 + 8 * ((125 * (v62 == 227)) ^ a2)))();
}

uint64_t sub_22D37F7B4(uint64_t a1, uint64_t a2, int a3)
{
  *(v6 - 1) = v9;
  *v6 = v9;
  return (*(v8 + 8 * (((v7 & ~(v3 ^ (v5 == 0))) * a3) ^ v4)))();
}

uint64_t sub_22D37F7E4(uint64_t a1)
{
  v7 = a1 - 1;
  *(v5 + v7) ^= *(v1 + (v7 & 0xF)) ^ *((v7 & 0xF) + v2 + 3) ^ (97 * (v7 & 0xF)) ^ *((v7 & 0xF) + v3 + 5) ^ 0xB0;
  return (*(v6 + 8 * ((1513 * (v7 == 0)) ^ (v4 - 101))))();
}

uint64_t sub_22D37FEC8(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = 1082434553 * ((2 * (a1 & 0x2EEF02E4) - a1 - 787415781) ^ 0x4A570B91);
  v3 = *(a1 + 16) ^ v2;
  v5 = *a1;
  v4 = *(a1 + 8);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = 1037613739 * (((&v10 ^ 0xD1FF76A1) + 1635836251 - 2 * ((&v10 ^ 0xD1FF76A1) & 0x6180E15B)) ^ 0x617DBA85);
  v10 = (*(a1 + 28) ^ v2) + v8 + 1011819572;
  v12 = v4;
  v13 = v5;
  v14 = v8 ^ (v3 - 1421510859);
  v16 = v7;
  v11 = v6;
  result = (*(*(&off_284082B80 + v3 - 1421512454) + (v3 ^ 0x54BA86C8) - 1))(&v10);
  *(a1 + 24) = v15;
  return result;
}

void sub_22D3801C8(uint64_t a1)
{
  v1 = *(a1 + 16) + 1037613739 * (((a1 | 0x807EDDE1) - a1 + (a1 & 0x7F81221E)) ^ 0x517CF09E);
  __asm { BRAA            X13, X17 }
}

uint64_t sub_22D3802C4@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 ^ 0xBC1));

  return v3(v1);
}

uint64_t sub_22D3805E4(int a1, int8x16_t a2, int8x16_t a3)
{
  v8 = (v4 - 32);
  v9 = (v6 - 32);
  v10 = vaddq_s8(vsubq_s8(*v9, vandq_s8(vaddq_s8(*v9, *v9), a2)), a3);
  *v8 = vaddq_s8(vsubq_s8(v9[-1], vandq_s8(vaddq_s8(v9[-1], v9[-1]), a2)), a3);
  v8[1] = v10;
  return (*(v7 + 8 * (((v5 == 32) * a1) ^ v3)))();
}

void sub_22D3805F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  v36 = 50899313 * (((((v35 - 144) | 0xFF0DD878) ^ 0xFFFFFFFE) - (~(v35 - 144) | 0xF22787)) ^ 0x14DDBA1C);
  *(v35 - 144) = v33 - v36 - 343;
  *(v35 - 128) = v36 ^ 0x7F11DE15;
  *(v35 - 136) = &a30;
  (*(v30 + 8 * (v33 + 599)))(v35 - 144);
  *(v35 - 144) = v33 - (((((v35 - 144) | 0x87D19F56) ^ 0xFFFFFFFE) - (~(v35 - 144) | 0x782E60A9)) ^ 0x6BF28C89) * v34 - 625;
  *(v35 - 136) = v31;
  *(v35 - 128) = v32;
  *(v35 - 112) = &a30;
  *(v35 - 104) = &a22;
  *(v35 - 120) = &a22;
  (*(v30 + 8 * (v33 ^ 0xE30)))(v35 - 144);
  JUMPOUT(0x22D35D63CLL);
}

uint64_t sub_22D380DD0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t (*a17)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a18)
{
  v23 = (((v18 ^ 0x8D9BD2C3) + 1919167805) ^ ((v18 ^ 0x725A8E49) - 1918537289) ^ ((v18 ^ 0x778696A7) - 2005309095)) + 595530830 + (((*(v22 - 132) ^ 0xB45C61B1) + ((v20 - a8 - 1567) ^ 0x67002AF)) ^ ((*(v22 - 132) ^ 0xAA47682F) + 1438160849) ^ ((*(v22 - 132) ^ 0x965CC3B3) + 1772305485));
  *(v22 - 132) = v23 ^ ((v23 ^ 0xB6FAA653) + 1542071897) ^ ((v23 ^ 0xE9233391) + 70497179) ^ ((v23 ^ 0x32C991C9) - 539422269) ^ ((v23 ^ 0x7FFF7BFF) - 1829766155) ^ 0x9AA8B5D9;
  v24 = v19;
  v25 = (((v21 ^ 0x1BCDED02) - 466480386) ^ ((v21 ^ 0xD5BC6365) + 709074075) ^ ((v21 ^ 0x4636444A) - 1177961546)) + (((*(v22 - 148) ^ 0xEF955477) + 275426185) ^ ((*(v22 - 148) ^ 0x9CBC48BA) + 1665382214) ^ ((*(v22 - 148) ^ 0xFB6ED6E0) + 76622112)) + 1862145693;
  v26 = (v25 ^ 0xA9D8793C) & (2 * (v25 & 0xA1917DBD)) ^ v25 & 0xA1917DBD;
  v27 = ((2 * (v25 ^ 0xA9FAE03E)) ^ 0x10D73B06) & (v25 ^ 0xA9FAE03E) ^ (2 * (v25 ^ 0xA9FAE03E)) & 0x86B9D82;
  v28 = v27 ^ 0x8288481;
  v29 = (v27 ^ 0x431900) & (4 * v26) ^ v26;
  v30 = ((4 * v28) ^ 0x21AE760C) & v28 ^ (4 * v28) & 0x86B9D80;
  v31 = (v30 ^ 0x2A1400) & (16 * v29) ^ v29;
  v32 = ((16 * (v30 ^ 0x8418983)) ^ 0x86B9D830) & (v30 ^ 0x8418983) ^ (16 * (v30 ^ 0x8418983)) & 0x86B9D80;
  v33 = v31 ^ 0x86B9D83 ^ (v32 ^ 0x299800) & (v31 << 8);
  v34 = v25 ^ (2 * ((v33 << 16) & 0x86B0000 ^ v33 ^ ((v33 << 16) ^ 0x1D830000) & (((v32 ^ 0x8420583) << 8) & 0x86B0000 ^ 0x620000 ^ (((v32 ^ 0x8420583) << 8) ^ 0x6B9D0000) & (v32 ^ 0x8420583))));
  v35 = (((v24 ^ 0xCB48BCCB) + 884425525) ^ ((v24 ^ 0x2BF611C8) - 737546696) ^ ((v24 ^ 0x68F9672E) - 1761175342)) + (((*(v22 - 144) ^ 0x4EB3B3B8) - 1320399800) ^ ((*(v22 - 144) ^ 0xDD2F4EEB) + 584102165) ^ ((*(v22 - 144) ^ 0x1BDB377E) - 467351422)) - 2032543397;
  *(v22 - 148) = v34 ^ 0x29078C96;
  *(v22 - 144) = v35 ^ ((v35 ^ 0x5FD226F2) - 697852915) ^ ((v35 ^ 0x9408281) - 2131412864) ^ ((v35 ^ 0xCF270E88) + 1184019575) ^ ((v35 ^ 0xEFFFEFFA) + 1716147461) ^ 0xFE0D8F2C;
  v36 = (((a4 ^ 0x679F9D09) - 1738513673) ^ ((a4 ^ 0xE20E158C) + 502393460) ^ ((a4 ^ 0xDD642A8) - 232145576)) + (((*(v22 - 140) ^ 0x2D399BFA) - 758750202) ^ ((*(v22 - 140) ^ 0xBE945639) + 1097574855) ^ ((*(v22 - 140) ^ 0x1BEA07EE) - 468322286)) + 386534455;
  v37 = (((a1 ^ 0x51BA954D) - 1371182413) ^ ((a1 ^ 0xB1F8AD1D) + 1309102819) ^ ((a1 ^ 0x6805F27D) - 1745220221)) + (((*(v22 - 136) ^ 0x24BFD4C5) - 616551621) ^ ((*(v22 - 136) ^ 0xE8E7E532) + 387455694) ^ ((*(v22 - 136) ^ 0x441FFBDA) - 1142946778)) + 1390337771;
  *(v22 - 140) = v36 ^ ((v36 ^ 0xFE2F7503) + 128646434) ^ ((v36 ^ 0x1856D470) - 506241965) ^ ((v36 ^ 0x9E6C2941) + 1743364452) ^ ((v36 ^ 0x7E6FFFEF) - 2014677042) ^ 0x8E3DBDF0;
  *(v22 - 136) = v37 ^ ((v37 ^ 0x93396BDE) + 780787377) ^ ((v37 ^ 0x4C4E9056) - 235002567) ^ ((v37 ^ 0xE0C75EFE) + 1568140177) ^ ((v37 ^ 0x7DFFEFE7) - 1068541302) ^ 0xCA0880BC;
  return a17(a1, v22 - 220, 66, a18 - 320, 1248, v24, a7, a8, a9, a10);
}

uint64_t sub_22D3814F4@<X0>(uint64_t a1@<X8>)
{
  v7 = v3;
  v8 = v1;
  v5 = v2 + 50899313 * (((&v5 | 0x3693DB88) - (&v5 & 0x3693DB88)) ^ 0x22BC4613) + 1399;
  v6 = v3;
  return (*(a1 + 8 * (v2 ^ 0x92C)))(&v5);
}

uint64_t sub_22D381A3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v13 = (v5 ^ 0xC597CFE4) + v7 + a3 * (*(*(v8 + 8) + 4 * a2) ^ v5);
  *(v11 + 4 * v12) = v13 + v5 - (v6 & (2 * v13));
  return (*(v4 + 8 * (v10 ^ ((a4 == a2) * v9))))();
}

uint64_t sub_22D381B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, int a15, unsigned int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, int a25)
{
  v26 = a25 + 721151570 > a16;
  if (a16 < 0x2AFBE612 != a25 + 721151570 < (a14 & 0x69547DFF ^ 0x2AFBE7E5u))
  {
    v26 = a25 + 721151570 < (a14 & 0x69547DFF ^ 0x2AFBE7E5u);
  }

  return (*(v25 + 8 * ((v26 * (a7 - 9)) ^ (a7 + 1959))))(a1, a2, a3, a4, a23);
}

uint64_t sub_22D381C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19, unsigned int a20, int a21, char *a22)
{
  if (a11 == 233270928)
  {
    v26 = -43688278;
  }

  else
  {
    v26 = -43688279;
  }

  v27 = ((((2 * &a17) | 0x2E7FE882) - &a17 + 1757416383) ^ 0x463DD93E) * v23;
  a17 = a13;
  a22 = &a14;
  a19 = (v25 - 2013067412) ^ v27;
  a20 = v26 + v27;
  a18 = v27 ^ 0x79A571FB;
  v28 = (*(v24 + 8 * (v25 + 1570)))(&a17);
  return (*(v24 + 8 * ((1721 * (a21 == ((v25 - 616627194) & 0x9FF) + ((v25 - 500) ^ (v22 - 66)))) ^ v25)))(v28);
}

uint64_t sub_22D381D78@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * (((v5 == 0) * (383 * (v3 ^ 0x185) - 642)) ^ (v3 - 184))))();
}

uint64_t sub_22D381E6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v12 = *(v10 + 8);
  v13 = ((2 * (*(v12 + ((a2 + ((a1 + a5) << 32)) >> 30)) ^ v5)) << ~v9) | ((a3 ^ *(v12 + 4 * (a1 + a5))) >> v9);
  *(v12 + 4 * a1) = v13 + v5 - (v6 & (2 * v13));
  return (*(v11 + 8 * (((a1 + 1 == v7) * a4) ^ v8)))();
}

uint64_t sub_22D381FC0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7)
{
  a5 = a3;
  a7 = a1;
  a4 = (v8 + 144) ^ (50899313 * ((((&a4 | 0x719AACA4) ^ 0xFFFFFFFE) - (~&a4 | 0x8E65535B)) ^ 0x9A4ACEC0));
  v10 = (*(v9 + 8 * (v8 | 0x140)))(&a4);
  return (*(v9 + 8 * ((126 * (a6 != v7)) ^ v8)))(v10);
}

uint64_t sub_22D382060@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, _DWORD *a8)
{
  v11 = a1 ^ 0xF5;
  v12 = 843532609 * (((((v10 - 136) | 0x7C78F0AE) ^ 0xFFFFFFFE) - (~(v10 - 136) | 0x83870F51)) ^ 0xDFCA5BD4);
  v13 = a1 ^ 0x93F;
  v14 = (*a8 ^ 0xC597CFE4) * *(*(a3 + 8) + 16);
  *(v10 - 128) = a4;
  *(v10 - 104) = (v11 + 654) ^ v12;
  *(v10 - 136) = ((v11 + 483) ^ 0x69FBAF3E ^ v14) - v12 + ((2 * v14) & 0xD3F75ACA) - 1121;
  *(v10 - 120) = v12 ^ 0x14FD28D6;
  *(v10 - 112) = &a7;
  v15 = (*(v8 + 8 * v13))(v10 - 136);
  return (*(v8 + 8 * ((245 * (v9 != 1)) ^ v11)))(v15);
}

void cp2g1b9ro(uint64_t a1, uint64_t a2)
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

uint64_t sub_22D382248(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = ((3 * (a4 ^ 0x13) + (a4 ^ 0x79)) & (2 * (v5 & 0x6D)) | v5 & 0x6D) ^ (2 * (v5 & 0x6D)) & (v5 ^ 0xDA);
  v7 = ((2 * (v5 ^ 0xDA)) ^ 0x6E) & (v5 ^ 0xDA) ^ (2 * (v5 ^ 0xDA)) & 0xB6;
  v8 = (v5 ^ (2 * ((v7 ^ 0x25) & (4 * v6) ^ v6 ^ 0xB7 ^ (((4 * (v7 ^ 0x91)) ^ 0xDC) & (v7 ^ 0x91) ^ (4 * (v7 ^ 0x91)) & 0xB4 ^ 0x13) & (16 * ((v7 ^ 0x25) & (4 * v6) ^ v6))))) & 0x7F;
  v10 = v8 != 3 && (v8 ^ 3u) < 5;
  return (*(v4 + 8 * ((1656 * v10) ^ a4)))();
}

uint64_t sub_22D38233C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  v69 = v55 + 4;
  v70 = *(&off_284082B80 + (v52 ^ (v52 + 114)));
  HIDWORD(a43) = *v70;
  v71 = *(&off_284082B80 + v54 + v52 - 493);
  v58 = *v71;
  v59 = ((v57 - 0x10F3B15953C18CD5 - 2 * ((v57 - 152) & 0xEF0C4EA6AC3E73C3)) ^ 0xDA76DEE92193112FLL) * v56;
  *(v57 - 140) = v59 ^ a28 ^ 0x38;
  *(v57 - 136) = v59;
  v68 = v58;
  STACK[0x5C0] = v58 + v59;
  *(v57 - 112) = v59 + v52 - 1939396564;
  STACK[0x5C8] = v59;
  *(v57 - 152) = a28 - v59;
  *(v57 - 144) = a27 + v59;
  (*(v53 + 8 * (v52 ^ (v52 + 1905))))(v57 - 152);
  return (*(a40 + 8 * *(v57 - 148)))(a40, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, v68, v69, v70, v71, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_22D38242C@<X0>(char a1@<W1>, int a2@<W8>)
{
  v8 = v5 - v2;
  *(v8 + 91) = ((a1 + a2 + 112) ^ (v2 + v3) ^ v4) * (v2 + v3 + 17);
  *(v8 + 90) = ((v2 + v3) ^ 0xBB) * (v2 + v3 + 18);
  return (*(v7 + 8 * (((v2 == 90) * v6) ^ a2)))(0);
}

uint64_t sub_22D3825B8@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v12 = (*(*(v11 + 8) + 4 * v5) ^ v7) + v2 + (*(*(v8 + 8) + 4 * v5) ^ v7);
  *(*(a2 + 8) + 4 * v5) = v12 + v7 - ((v12 << ((v4 ^ v6) - 31)) & v10);
  return (*(v9 + 8 * (((v5 + 1 == v3) * a1) ^ v4)))();
}

uint64_t sub_22D38261C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, _DWORD *a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, int a59)
{
  v63 = (a59 + 992674840) & 0xC4D4F85F;
  v64 = (-((v60 - (a59 - 905) + v63 - 5121) ^ (~(a59 + 4214) + v60)) | (~(a59 + 4214) + v60)) >> 63;
  *v61 = v60 + 1;
  v65 = v63 + 1608;
  v66 = ((v59 ^ (v59 >> 11)) << 7) & 0x9D2C5680 ^ v59 ^ (v59 >> 11) ^ (a59 - 905);
  v67 = (a44 + a47 + v63 + 1288 - 1290);
  v68 = 1913672377 * ((*(*a51 + (*a52 & 0x30187DC)) ^ v67) & 0x7FFFFFFF);
  v69 = 1913672377 * ((v68 >> ((v63 + 72) ^ 0x59)) ^ v68);
  LOBYTE(v64) = *(*(&off_284082B80 + (v65 - 1443)) + (v69 >> 24) - 12) ^ ((v64 ^ v63 ^ v66 ^ (v66 << 15) & 0xEFC60000) >> (v63 + 17)) ^ v64 ^ v63 ^ v66 ^ *(*(&off_284082B80 + (v65 - 1592)) + (v69 >> 24) - 9) ^ *(*(&off_284082B80 + (v65 ^ 0x676)) + (v69 >> 24) - 8) ^ v69;
  *v67 = (97 * BYTE3(v69)) ^ v64;
  return (*(v62 + 8 * ((28 * (a47 == (v64 != (97 * BYTE3(v69))))) ^ (v63 + 1608))))();
}

uint64_t sub_22D382B7C@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 - 1;
  *(a1 + v5) = *(v3 + v5) - ((*(v3 + v5) << (((v2 - 110) | 0xA4) + 92)) & 0x60) - 80;
  return (*(v4 + 8 * ((750 * (v5 == 0)) ^ v2)))();
}

uint64_t sub_22D382C48@<X0>(uint64_t a1@<X8>)
{
  v7.i64[0] = 0x6060606060606060;
  v7.i64[1] = 0x6060606060606060;
  v8.i64[0] = 0xB0B0B0B0B0B0B0B0;
  v8.i64[1] = 0xB0B0B0B0B0B0B0B0;
  v9 = vaddq_s8(vsubq_s8(*(v2 + 17), vandq_s8(vaddq_s8(*(v2 + 17), *(v2 + 17)), v7)), v8);
  *(a1 + v5 - 252) = vaddq_s8(vsubq_s8(*(v2 + 1), vandq_s8(vaddq_s8(*(v2 + 1), *(v2 + 1)), v7)), v8);
  *(a1 + v5 - 252 + 16) = v9;
  return (*(v4 + 8 * ((((v3 & 0x60) == 32) * ((v1 + 698979362) & 0x6A737FA ^ 0xBF1)) ^ (v6 + v1 + 888))))();
}

uint64_t sub_22D382D88(uint64_t a1)
{
  v5 = v4 ^ 0x44B;
  v6 = *(v3 + 336);
  v7 = *(a1 + 4) - v1 - 407864914;
  if (v6 > v5 - 811519935 != v7 < 0x305EC8C1)
  {
    v8 = v6 > v5 - 811519935;
  }

  else
  {
    v8 = v6 + 811518145 > v7;
  }

  return (*(v2 + 8 * ((482 * (((v5 - 124) ^ v8) & 1)) ^ v5)))();
}

uint64_t sub_22D382E10(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 24);
  return 0;
}

uint64_t sub_22D382E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  *(*(a14 + 96) + 504) = v16 + 1;
  *(*(a14 + 96) + 496) = a16 - 1;
  v19 = 1785193651 * ((66584224 - ((v18 - 152) | 0x3F7FEA0) + ((v18 - 152) | 0xFC08015F)) ^ 0xEFD4ED7F);
  *(v18 - 136) = v19 ^ 0xA3CEBA4D;
  *(v18 - 148) = v19 - 562358852;
  *(v18 - 144) = v18 - 252;
  v20 = (*(v17 + 19120))(v18 - 152);
  return (*(v17 + 8 * ((1375 * (a16 - 904558548 + (*(v18 - 184) & 0x3Fu) < 0xFFFFFFC0)) ^ 0x3DAu)))(v20);
}

uint64_t sub_22D382FC4()
{
  v8 = v1 - 2;
  v9 = v2 + 2;
  *(v8 + 91) = (v9 ^ v5) * (v9 + 17);
  *(v8 + v4) = (v9 ^ 0xBB) * (v9 + 18);
  return (*(v7 + 8 * (((v3 == 2) * v6) ^ v0)))();
}

uint64_t sub_22D382FD4(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8) + 1361651671 * ((a1 - 406323965 - 2 * (a1 & 0xE7C7FD03)) ^ 0x34E50D8F);
  v2 = *(a1 + 16);
  v3 = *a1;
  v6 = v1 + 875954147 - 1361651671 * ((-126822955 - (v5 | 0xF870D5D5) + (v5 | 0x78F2A2A)) ^ 0xD4ADDAA6) + 1497;
  v5[0] = v3;
  v5[1] = v2;
  return (*(*(&off_284082B80 + v1 + 875954147) + (v1 ^ 0xCBCA09E1) - 1))(v5);
}

uint64_t sub_22D3830DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, unsigned int a17, char *a18, unsigned int a19)
{
  v21 = 1082434553 * ((361117022 - (&a16 | 0x1586355E) + (&a16 | 0xEA79CAA1)) ^ 0x713E3C2B);
  LODWORD(a18) = (v19 + 522) ^ v21;
  HIDWORD(a18) = 1953011063 - v21;
  a16 = 1320293250 - v21;
  a17 = v21 + 1219383131;
  (*(v20 + 8 * (v19 + 2280)))(&a16);
  a18 = &a11;
  a19 = v19 + 2066391179 * (((~&a16 & 0x6EED7AFE) - (~&a16 | 0x6EED7AFF)) ^ 0xC1CAF8E7) + 891;
  v22 = (*(v20 + 8 * (v19 ^ 0x9DA)))(&a16);
  return (*(v20 + 8 * ((2211 * (a16 == (v19 ^ 0x86) - 1541908466)) ^ v19)))(v22);
}

void sub_22D38320C(uint64_t a1)
{
  v1 = *(a1 + 16) - 1037613739 * (((a1 | 0x27A6E) - a1 + (a1 & 0xFFFD8591)) ^ 0xD1005711);
  __asm { BRAA            X13, X17 }
}

uint64_t sub_22D383338@<X0>(int a1@<W8>)
{
  v6 = (v2 + 1262349311) & 0xB4C215F8;
  v7 = *(v3 + 8);
  v8 = *(v7 + 4 * v5 - 4) ^ 0xC597CFE4;
  *(v7 + 4 * (v5 + a1)) = ((v8 >> (32 - (v1 ^ 3))) & ((2 * v6) ^ 0xBC9E629) | ~(v8 >> (32 - (v1 ^ 3))) & 0xF4361026) ^ 0x31A1DFC2;
  return (*(v4 + 8 * ((450 * (v5 > 1)) ^ v6)))(832692162);
}

uint64_t sub_22D383B4C(uint64_t result)
{
  v1 = 1361651671 * ((2 * (result & 0x722A4D4D7D5414BELL) - result + 0xDD5B2B282ABEB41) ^ 0xDE78C18B51891BCDLL);
  v2 = *(result + 8) - v1;
  v3 = *(result + 24) + v1;
  v4 = v2 > v3;
  v5 = v2 == v3;
  v6 = v4;
  if ((*result + 1361651671 * ((2 * (result & 0x7D5414BE) - result - 2102662335) ^ 0x51891BCD)))
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7 == 0;
  v9 = 4;
  if (!v8)
  {
    v9 = 16;
  }

  *(result + 36) = (*(result + v9) - 1361651671 * ((2 * (result & 0x7D5414BE) - result - 2102662335) ^ 0x51891BCD)) ^ (*(result + 40) + 1361651671 * ((2 * (result & 0x7D5414BE) - result - 2102662335) ^ 0x51891BCD));
  return result;
}

uint64_t sub_22D383BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  v43 = &STACK[0x4F0] + a2;
  *v43 = 548654975;
  *(v43 + 1) = 0;
  *(v43 + 4) = 1970709652;
  *(v43 + 6) = 904558483;
  *(v43 + 4) = 0;
  *(&STACK[0x4F0] + a2 + 40) = 904558483;
  *(&STACK[0x4F0] + a2 + 48) = 0;
  v42[17] = &STACK[0x4F0] + a2 + 40;
  v42[29] = &STACK[0x4F0] + a2 + 48;
  v42[51] = &STACK[0x4F0] + a2 + 0x700841D71ADA9F67;
  *(v43 + 14) = 904558483;
  *(&STACK[0x4F0] + a2 + 64) = 0;
  v42[55] = &STACK[0x4F0] + a2 + 64;
  *(&STACK[0x4F0] + a2 + 72) = 904558483;
  v42[37] = &STACK[0x4F0] + a2 + 72;
  *(&STACK[0x4F0] + a2 + 80) = 0;
  v42[67] = &STACK[0x4F0] + a2 + 80;
  v43[88] = 43;
  *v41 = 548654975;
  memset(v41 + 1, 176, 20);
  v41[6] = 904558483;
  v41[7] = 0;
  v41[58] = 0;
  memset(v41 + 109, 176, 40);
  memset(v41 + 282, 176, 40);
  return sub_22D383D0C(a1, a2, a3, 48, a5, a6, 2911754007, 1383213963, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41);
}

uint64_t sub_22D383D0C@<X0>(uint64_t a1@<X8>)
{
  v5 = (v1 + a1);
  *v5 = 0u;
  v5[1] = 0u;
  return (*(v4 + 8 * ((((((v2 - 793) | 0x20u) ^ 1) + a1 == 256) * v3) ^ v2)))();
}

uint64_t sub_22D383D90(uint64_t a1)
{
  v1 = (*a1 ^ (143681137 * ((-2 - ((a1 | 0x43EF7571) + (~a1 | 0xBC108A8E))) ^ 0xDD48015E))) + 780;
  v2 = (v1 ^ 0xEB02D3C7) + *(*(a1 + 8) + 4);
  if (v2 < 0)
  {
    v2 = -v2;
  }

  return (*(*(&off_284082B80 + v1 - 1202) + ((460 * (v2 <= ((v1 - 1261) | 0x886) - 2182)) ^ v1) - 1))();
}

uint64_t sub_22D383EA8@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  *(*(v2 + 8) + 4 * ((v4 ^ 0x42B ^ (v3 - 528)) + a1)) = v6 ^ v5;
  v7 = v4 ^ 0x75;
  *(v2 + 4) = a1 + 1;
  v8 = a1 + 1 + v3;
  if (v8 < 0)
  {
    v8 = -v8;
  }

  return (*(a2 + 8 * ((3754 * ((v3 + (v7 ^ v8 ^ 0x96FD2FB9) + ((2 * v8) & 0x2DFA53AE) + 2113928959 + 99 * (v7 ^ 0x66D) - 298) >= 0)) ^ v7)))();
}

uint64_t sub_22D383F9C(uint64_t a1, unsigned int a2)
{
  v5 = v3 - 1017408804 < (((a2 ^ 0x2FC) - 714) ^ 0xE077EF42);
  if ((v4 ^ 0x5BE7A7EAu) > 0x1F88110B == v5)
  {
    v5 = v3 - 1017408804 > (v4 ^ 0x5BE7A7EAu) - 529010956;
  }

  return (*(v2 + 8 * ((137 * v5) ^ a2)))();
}

void Mib5yocT(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

uint64_t sub_22D3840B4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = v7 < v8;
  if (v10 == ((((a2 - 725795386) & 0x2B42C1FEu) + 494) ^ 0x2D5uLL) + v6 > 0xFFFFFFFF7D1EBBF5)
  {
    v10 = a6 + v6 + 231 < v7;
  }

  return (*(v9 + 8 * ((7 * !v10) ^ a2)))();
}

void sub_22D38412C(int a1@<W8>)
{
  if (a1 == 142440633)
  {
    v1 = -1541908459;
  }

  else
  {
    v1 = 1541866445;
  }

  *(v2 + 36) = v1;
}

uint64_t sub_22D384190@<X0>(int a1@<W3>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47)
{
  v50 = *(v48 + a2 * a1 + 36);
  LODWORD(STACK[0x204]) = v50;
  v51 = ((v47 - 494) ^ 0x8E8D2AFF) + v50;
  v53 = v51 > ((181 * (v47 ^ 0x2D1)) ^ 0x70D263C2) || v51 < a47;
  return (*(v49 + 8 * ((1707 * v53) ^ v47)))();
}

uint64_t sub_22D384270(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = *(v7 + 48 * v5 + 36);
  v11 = v9 != 210651689 && v9 + a4 < ((v4 - 1879129034) & 0xFDFFFFF7) + v6 + ((v4 - 415) | 0x44);
  return (*(v8 + 8 * (v4 ^ (2 * v11))))();
}

uint64_t sub_22D3842D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, __int16 a12, char a13, char *a14, int a15, unsigned int a16, char *a17, uint64_t a18)
{
  v22 = 742307843 * ((((&a14 ^ 0xA001C410 | 0x52BE1BCA) ^ 0xFFFFFFFE) - (&a14 ^ 0x900B8A | 0xAD41E435)) ^ 0x414CBD30);
  a15 = v22 + v21 + 331;
  a16 = v22 + 1522434322;
  a14 = &a13;
  a17 = &a11;
  a18 = v19;
  v23 = (*(v20 + 8 * (v21 + 2282)))(&a14);
  return (*(v20 + 8 * ((((v21 ^ (*(v19 + 24) == v18)) & 1) * ((v21 ^ 0x8D4) - 2008)) ^ v21)))(v23);
}

uint64_t sub_22D384398@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v7 = *(*a3 + (v5 - 488397853)) ^ 0xB0;
  v8 = ((*(*a3 + (v5 - 488397856)) ^ 0xB0) << 24) | ((*(*a3 + (v5 - 488397855)) ^ 0xB0) << 16) | (((((a2 - 110) & 0xF7) - 121) ^ *(*a3 + (v5 - 488397854)) ^ 0x8D) << 8) | v7;
  v9 = v6 - *(a1 + 12) + ((v8 + v3 - 2 * (v8 & 0x24185817 ^ v7 & 2)) & 0xFFFFFF ^ 0x185815) == -1505978298;
  return (*(v4 + 8 * (((8 * v9) | (16 * v9)) ^ a2)))();
}

uint64_t sub_22D384474(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, _DWORD *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, int a44)
{
  *a32 = a44 + 1;
  STACK[0x5B0] = *v45 + a19;
  *(v46 - 112) = v44 + 1900708600 - a19 - 108;
  STACK[0x5C0] = a18;
  v47 = v44 + 1900708600 + a19;
  *(v46 - 120) = (v44 + 147318046) ^ a19;
  *(v46 - 136) = v47;
  *(v46 - 152) = 1 - a19;
  *(v46 - 148) = v47 - 15;
  v48 = (*(a1 + 8 * (v44 ^ (a2 + 1711))))(v46 - 152);
  return (*(a40 + 8 * *(v46 - 116)))(v48);
}

void sub_22D38468C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, _DWORD *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *a28 = 64;
  v87 = v66;
  *(a57 + 252) = 352135382;
  *(a57 + 256) = a57 + 264;
  *(a57 + 520) = 64;
  *(a57 + 524) = 352135382;
  *(a57 + 528) = a57 + 536;
  *(a57 + 792) = 64;
  *(a57 + 796) = 352135382;
  *(a57 + 800) = a57 + 808;
  *(a57 + 1064) = 64;
  *(a57 + 1068) = 352135382;
  *(a57 + 1072) = a57 + 1080;
  *(a57 + 1336) = 64;
  *(a57 + 1340) = 352135382;
  *(a57 + 1344) = a57 + 1352;
  v86 = v66 + 54;
  v71 = 1388665877 * ((((v70 - 192) | 0xEB45F4ED) - ((v70 - 192) & 0xEB45F4ED)) ^ 0x66E89601);
  *(v70 - 184) = v71 - 245012472 + (v66 ^ 0x37A) + (((v68 ^ 0xDD25876C) + 584743060) ^ ((v68 ^ 0x29CC12F) - 43827503) ^ ((v68 ^ 0x7BA11E56) - 2074156630)) - 905;
  *(v70 - 192) = (v66 + 54) ^ v71;
  v72 = v70 - 192;
  *(v72 + 16) = a66 + 4;
  *(v72 + 24) = a28;
  v73 = v66 ^ 0x967;
  v88 = v66 ^ 0x967;
  (*(v69 + 8 * (v66 ^ 0x967)))(v70 - 192);
  v74 = v68 ^ v67;
  v75 = a66 + 4 + v74;
  v76 = 1388665877 * (((((v70 - 192) | 0x2EE21CF8) ^ 0xFFFFFFFE) - (~(v70 - 192) | 0xD11DE307)) ^ 0x5CB081EB);
  v77 = v70 - 192;
  *(v77 + 16) = v75;
  *(v77 + 24) = a57 + 520;
  *(v70 - 184) = v76 - 245012472 + (((v68 ^ 0x6A543CCA) - 1783905482) ^ ((v68 ^ 0x364D53AE) - 911037358) ^ ((v68 ^ 0xF8013771) + 134137999));
  *(v70 - 192) = v86 ^ v76;
  (*(v69 + 8 * v73))(v70 - 192);
  v78 = v75 + v74;
  v79 = v70 - 192;
  v80 = 1388665877 * ((~((v70 - 192) | 0x790B7BC3) + ((v70 - 192) & 0x790B7BC3)) ^ 0xB59E6D0);
  *(v79 + 16) = v78;
  *(v79 + 24) = a57 + 792;
  *(v70 - 184) = v80 - 245012472 + (((v68 ^ 0x32E477EA) - 853833706) ^ ((v68 ^ 0x82217FA3) + 2111733853) ^ ((v68 ^ 0x14DD505C) - 350048348));
  *(v70 - 192) = v86 ^ v80;
  (*(v69 + 8 * (v87 + 2209)))(v70 - 192);
  v81 = v78 + v74;
  v82 = 1388665877 * ((2 * ((v70 - 192) & 0x2EFF8738) - (v70 - 192) + 1358985409) ^ 0xDCAD1A2D);
  v83 = v70 - 192;
  *(v83 + 16) = v81;
  *(v83 + 24) = a57 + 1064;
  *(v70 - 192) = v86 ^ v82;
  *(v70 - 184) = v82 - 245012472 + (((v68 ^ 0x3D2B9EDB) - 1026268891) ^ ((v68 ^ 0x7FD21F9E) - 2144477086) ^ ((v68 ^ 0xE6E1D950) + 421406384));
  (*(v69 + 8 * (v87 + 2209)))(v70 - 192);
  v84 = 1388665877 * ((~((v70 - 192) | 0xD304BAC) + ((v70 - 192) & 0xD304BAC)) ^ 0x7F62D6BF);
  *(v70 - 192) = v86 ^ v84;
  *(v70 - 184) = v84 - 245012472 + (((v68 ^ 0x35F1C44) - 56564804) ^ ((v68 ^ 0xF152E69B) + 246225253) ^ ((v68 ^ 0x5615A2CA) - 1444258506));
  v85 = v70 - 192;
  *(v85 + 16) = v81 + v74;
  *(v85 + 24) = a57 + 1336;
  (*(v69 + 8 * v88))(v70 - 192);
  JUMPOUT(0x22D355628);
}

uint64_t sub_22D384B3C(uint64_t a1, int a2)
{
  v7 = v6 + 400;
  v8 = v3 + v4 + a2 + v6 + 400;
  v9 = v8 + v5 - 1994175332;
  if (v8 > v7 + 1089614301 + (v7 ^ 0x1EBu) != v9 < 0xBF0DC42F)
  {
    v10 = v8 > v7 + 1089614301 + (v7 ^ 0x1EBu);
  }

  else
  {
    v10 = v8 - 1089616849 > v9;
  }

  return (*(v2 + 8 * ((28 * !v10) ^ v7)))();
}

uint64_t sub_22D384D84(__n128 a1, __n128 a2)
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
  return sub_22D384DC0((v2 + 2053142064) & 0x859F8CFF ^ 0x4FDLL, 1526, a1, a2);
}

uint64_t sub_22D384F28@<X0>(uint64_t a1@<X2>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, _DWORD *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  v60 = &a56 + (v58 - 1);
  v61 = 1913672377 * ((*(*v59 + (((v57 - 1386447630) & 0x52A387F3 ^ 0x5FA3D51Bu) & *a29)) ^ v60) & 0x7FFFFFFF);
  v62 = 1913672377 * (v61 ^ HIWORD(v61));
  v63 = *(*(&off_284082B80 + (v57 & 0xCB8E4BE9)) + (v62 >> 24) - 5);
  v64 = *(*(&off_284082B80 + v57 - 90) + (v62 >> 24) - 12);
  v65 = ((a2 >> v56) - ((2 * (a2 >> v56)) & 0x7A) - 67) ^ *(*(&off_284082B80 + v57 - 61) + (v62 >> 24) - 4) ^ v63 ^ v64 ^ v62 ^ (-49 * (v62 >> 24));
  LODWORD(v62) = (((a2 >> v56) - ((2 * (a2 >> v56)) & 0x7A) - 67) ^ *(*(&off_284082B80 + v57 - 61) + (v62 >> 24) - 4) ^ v63 ^ v64 ^ v62 ^ (-49 * BYTE3(v62)));
  *v60 = v65 ^ 0xBD;
  return (*(a1 + 8 * ((((v58 != (v62 != 189)) << 6) | ((v58 != (v62 != 189)) << 7)) ^ v57)))();
}

uint64_t sub_22D385034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, unint64_t a36, uint64_t a37, int a38, int a39, int a40, uint64_t a41)
{
  STACK[0x5B0] = (v44 + 1) + a37;
  STACK[0x5C0] = a36;
  *(v46 - 152) = 1 - a37;
  *(v46 - 148) = a38 + a37;
  *(v46 - 120) = a37 ^ 0x3560892;
  *(v46 - 136) = a40 + a37;
  *(v46 - 112) = ((v45 - (v43 + v42) >= ~(v43 + v42)) ^ 0x527FCE17) - a37;
  v47 = (*(v41 + 19128))(v46 - 152);
  return (*(a41 + 8 * *(v46 - 116)))(v47);
}

void sub_22D3850EC()
{
  v6 = 1037613739 * (v0 ^ 0xD1022D7F);
  *(v5 - 128) = v3;
  *(v5 - 136) = ((v4 ^ 0xBFFE7EF7) + ((2 * v4) & 0x7FFCFDEE) + ((v1 + 673) ^ 0x6CF7DA8F)) ^ v6;
  *(v5 - 132) = (v1 - 11) ^ v6;
  (*(v2 + 8 * (v1 + 1268)))(v5 - 136);
  JUMPOUT(0x22D385164);
}

uint64_t sub_22D385204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, uint64_t a54, int a55, uint64_t a56, uint64_t a57, uint64_t a58, int a59)
{
  v66 = 1361651671 * ((v63 + 0x24FEFC879F11E3BALL - 2 * (v63 & 0x24FEFC879F11E3BALL)) ^ 0xF7538FBE4C331336);
  v67 = v65 - 192;
  *(v67 + 24) = (v59 - v60 < ~v60) + 3 - v66;
  *(v65 - 152) = a53 - 1361651671 * ((v63 - 1626217542 - 2 * (v63 & 0x9F11E3BA)) ^ 0x4C331336);
  *(v67 + 8) = (v61 + 1) + v66;
  *(v65 - 192) = 1 - 1361651671 * ((v63 - 1626217542 - 2 * (v63 & 0x9F11E3BA)) ^ 0x4C331336);
  *(v65 - 188) = a55 + 1361651671 * ((v63 - 1626217542 - 2 * (v63 & 0x9F11E3BA)) ^ 0x4C331336);
  *(v65 - 176) = v62 + 1361651671 * ((v63 - 1626217542 - 2 * (v63 & 0x9F11E3BA)) ^ 0x4C331336);
  *(v65 - 160) = (a59 + 55969033) ^ (1361651671 * ((v63 - 1626217542 - 2 * (v63 & 0x9F11E3BA)) ^ 0x4C331336));
  v68 = (*(v64 + 8 * (a59 ^ 0xADE)))(v65 - 192);
  return (*(v64 + 8 * *(v65 - 156)))(v68);
}

uint64_t sub_22D38560C()
{
  v5 = ~v2 + v1;
  v6 = !__CFADD__(v0, v5);
  if (HIDWORD(v5))
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return (*(v4 + 8 * (((4 * v7) | (16 * v7)) ^ v3)))((2 * v3) ^ 0x582u);
}

void sub_22D38569C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  *(v24 - 136) = a14;
  *(v24 - 128) = a11;
  *(v24 - 144) = v22 - ((2 * ((v24 - 144) & 0x27F97488) - (v24 - 144) + 1476823923) ^ 0x4BDA6753) * v23 - 1103;
  *(v24 - 120) = &a22;
  *(v24 - 112) = &a18;
  *(v24 - 104) = &a22;
  JUMPOUT(0x22D37150CLL);
}

uint64_t sub_22D38589C(uint64_t result)
{
  v1 = 143681137 * ((((2 * result) | 0x6168FE1747D0C60) - result + 0x7CF4B80F45C179D0) ^ 0x32827544DB660DE0);
  v2 = *(result + 16) - v1;
  v3 = *(result + 8) + v1;
  v4 = v2 == v3;
  v5 = v2 >= v3;
  v6 = !v4;
  if (((*(result + 32) ^ v1) & 1) == 0)
  {
    v5 = v6;
  }

  v4 = !v5;
  v7 = 28;
  if (!v4)
  {
    v7 = 36;
  }

  *result = *(result + v7) ^ v1 ^ (*(result + 4) + v1);
  return result;
}

void sub_22D385988(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = 1388665877 * (((a1 | 0x205E13A9) - (a1 & 0x205E13A9)) ^ 0xADF37145);
  v2 = *(a1 + 60) ^ v1;
  v3 = *(a1 + 56) - v1;
  v4 = *(a1 + 40);
  v5 = *a1;
  v6 = *(a1 + 24) ^ v1;
  v7 = (v6 ^ 0xCD55BBC0) & (2 * (v6 & 0xED81A3E5)) ^ v6 & 0xED81A3E5;
  v8 = ((2 * (v6 ^ 0x1F56FD82)) ^ 0xE5AEBCCE) & (v6 ^ 0x1F56FD82) ^ (2 * (v6 ^ 0x1F56FD82)) & 0xF2D75E66;
  v9 = v8 ^ 0x12514221;
  v10 = (v8 ^ 0xE0061C04) & (4 * v7) ^ v7;
  v11 = ((4 * v9) ^ 0xCB5D799C) & v9 ^ (4 * v9) & 0xF2D75E64;
  v12 = (v11 ^ 0xC2555800) & (16 * v10) ^ v10;
  v13 = ((16 * (v11 ^ 0x30820663)) ^ 0x2D75E670) & (v11 ^ 0x30820663) ^ (16 * (v11 ^ 0x30820663)) & 0xF2D75E60;
  v14 = v12 ^ 0xF2D75E67 ^ (v13 ^ 0x20554600) & (v12 << 8);
  v15 = (v14 << 16) & 0x72D70000 ^ v14 ^ ((v14 << 16) ^ 0x5E670000) & (((v13 ^ 0xD2821807) << 8) & 0x72D70000 ^ 0x20810000 ^ (((v13 ^ 0xD2821807) << 8) ^ 0x575E0000) & (v13 ^ 0xD2821807));
  v16 = 1037613739 * ((2 * (&v18 & 0x54203DF8) - &v18 - 1411399168) ^ 0x7ADDEF7F);
  v18 = *(a1 + 16);
  v24 = v2 - v16 - 1776824409;
  v25 = v5;
  v19 = (v3 ^ ((v3 ^ 0x799F679F) - 1660800958) ^ ((v3 ^ 0x7AD1606) - 483376679) ^ ((v3 ^ 0xDAAF26C5) + 1043493148) ^ ((v3 ^ 0xBFFFFF7D) + 1533192356) ^ 0xEAA96F93) - v16;
  v20 = v5;
  v21 = v6 ^ v16 ^ (2 * v15) ^ 0x9551BF35;
  v22 = v4;
  v17 = *(&off_284082B80 + v2 - 1069) - 8;
  (*&v17[8 * (v2 ^ 0xDE0)])(&v18);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_22D385CA8()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

void sub_22D385CD8(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v24 = ((v23 - 144) ^ 0x970DCC13) * a1;
  *(v23 - 144) = v21 + v24 + ((v20 - 340) ^ 0xE27DD7CB);
  *(v23 - 116) = v24 + v20 - 836;
  *(v23 - 136) = v19;
  *(v23 - 128) = &a19;
  (*(v22 + 8 * (v20 ^ 0xA38)))(v23 - 144);
  JUMPOUT(0x22D385D34);
}

uint64_t sub_22D386240(int a1, int a2)
{
  v7 = (v3 - 32);
  v8 = (v4 - 32);
  v9 = *v8;
  *(v7 - 1) = *(v8 - 1);
  *v7 = v9;
  return (*(v6 + 8 * (((v2 == 32) * (((v5 + 1663) | a1) ^ a2)) ^ (v5 + 1797))))();
}

uint64_t sub_22D386250(uint64_t result)
{
  **result = 0;
  *(result + 8) = 1839852020;
  return result;
}

void zLTj()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *(&off_284082B80 + ((-3 * (dword_27D9FC298 ^ 0xE5 ^ qword_27D9FC2C8)) ^ byte_22D5BF320[byte_22D5BA8E0[(-3 * (dword_27D9FC298 ^ 0xE5 ^ qword_27D9FC2C8))] ^ 0x8C]) + 166);
  v1 = *(v0 - 4);
  v2 = *(&off_284082B80 + (*(off_284082BE8 + (*(off_284082F00 + (-3 * ((qword_27D9FC2C8 - v1) ^ 0xE5))) ^ 0x5Fu) - 4) ^ (-3 * ((qword_27D9FC2C8 - v1) ^ 0xE5))) + 118);
  v3 = 1707045629 * ((v1 - &v5 + *(v2 - 4)) ^ 0x1520B27A7613BCE5);
  *(v0 - 4) = v3;
  *(v2 - 4) = v3;
  v6[0] = (843532609 * ((2 * (v6 & 0x3A095FE0) - v6 - 973692902) ^ 0x99BBF49F)) ^ 0xDFABAF92;
  LOBYTE(v2) = -3 * ((*(v2 - 4) - *(v0 - 4)) ^ 0xE5);
  v4 = *(&off_284082B80 + ((-3 * ((qword_27D9FC2C8 + dword_27D9FC298) ^ 0xE5)) ^ byte_22D5BF320[byte_22D5BA8E0[(-3 * ((qword_27D9FC2C8 + dword_27D9FC298) ^ 0xE5))] ^ 0xA6]) + 34) - 8;
  (*&v4[8 * (*(off_284082D68 + (*(off_284082CD0 + v2 - 12) ^ 0x6Cu) - 12) ^ v2) + 18528])(v6);
  __asm { BRAA            X8, X17 }
}

void sub_22D386570(uint64_t a1)
{
  v1 = 1388665877 * ((2 * (a1 & 0x2EF7D36D) - a1 + 1359490194) ^ 0xDCA54E7E);
  v2 = *(a1 + 16) - v1;
  v3 = *(a1 + 20) - v1;
  v5 = (v3 & 0x30000000) == 0 || (v3 & 0x3F000000) == 721420288;
  __asm { BRAA            X10, X17 }
}

uint64_t sub_22D386644@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26)
{
  v35 = *a1;
  v29 = a1[3];
  v30 = a1[4];
  v31 = v30[1];
  *(v28 - 136) = v29;
  *(v28 - 128) = v30;
  *(v28 - 112) = a2;
  *(v28 - 104) = &a24;
  *(v28 - 144) = v27 + 787 - 1785193651 * ((((v28 - 144) | 0x9947ACF5) + (~(v28 - 144) | 0x66B8530A)) ^ 0x8A9B40D4);
  *(v28 - 120) = v31;
  (*(v26 + 8 * (v27 + 1940)))(v28 - 144);
  *(v28 - 128) = v27 - 1037613739 * (((v28 - 144) & 0xD3735260 | ~((v28 - 144) | 0xD3735260)) ^ 0xFD8E80E0) + 1481;
  *(v28 - 144) = &a12;
  *(v28 - 136) = v29;
  *(v28 - 120) = v30;
  *(v28 - 112) = &a24;
  (*(v26 + 8 * (v27 ^ 0x803)))(v28 - 144);
  *(v28 - 144) = v27 + 787 - 1785193651 * ((2 * ((v28 - 144) & 0x7E704DF0) - (v28 - 144) - 2121289208) ^ 0x92535E28);
  *(v28 - 112) = &a12;
  *(v28 - 128) = v30;
  *(v28 - 120) = &a24;
  *(v28 - 104) = &a10;
  *(v28 - 136) = v29;
  (*(v26 + 8 * (v27 + 1940)))(v28 - 144);
  *(v28 - 144) = v27 + 787 - 1785193651 * ((((v28 - 144) | 0x6C553DED) - (v28 - 144) + ((v28 - 144) & 0x93AAC210)) ^ 0x7F89D1CD);
  *(v28 - 136) = v29;
  *(v28 - 128) = v30;
  *(v28 - 112) = &a12;
  *(v28 - 104) = &a18;
  *(v28 - 120) = &a10;
  (*(v26 + 8 * (v27 + 1940)))(v28 - 144);
  *(v28 - 144) = v27 + 787 - 1785193651 * ((((v28 - 144) | 0xC58F93C9) - ((v28 - 144) & 0xC58F93C9)) ^ 0xD6537FE9);
  *(v28 - 120) = &a18;
  *(v28 - 112) = &a12;
  *(v28 - 136) = v29;
  *(v28 - 128) = v30;
  *(v28 - 104) = &a20;
  (*(v26 + 8 * (v27 ^ 0x8B4)))(v28 - 144);
  *(v28 - 144) = v27 + 787 - 1785193651 * ((((v28 - 144) | 0xE9F67934) - ((v28 - 144) & 0xE9F67934)) ^ 0xFA2A9514);
  *(v28 - 120) = &a20;
  *(v28 - 112) = &a12;
  *(v28 - 136) = v29;
  *(v28 - 128) = v30;
  *(v28 - 104) = &a14;
  (*(v26 + 8 * (v27 ^ 0x8B4)))(v28 - 144);
  *(v28 - 120) = &a14;
  *(v28 - 112) = &a12;
  *(v28 - 136) = v29;
  *(v28 - 128) = v30;
  *(v28 - 144) = v27 + 787 - 1785193651 * ((((v28 - 144) | 0xCD100AD6) - (v28 - 144) + ((v28 - 144) & 0x32EFF528)) ^ 0xDECCE6F6);
  *(v28 - 104) = &a26;
  (*(v26 + 8 * (v27 ^ 0x8B4)))(v28 - 144);
  *(v28 - 144) = v27 + 787 - 1785193651 * ((-1528289165 - ((v28 - 144) | 0xA4E82873) + ((v28 - 144) | 0x5B17D78C)) ^ 0x48CB3BAC);
  *(v28 - 136) = v29;
  *(v28 - 128) = v30;
  *(v28 - 120) = &a26;
  *(v28 - 112) = &a12;
  *(v28 - 104) = &a22;
  (*(v26 + 8 * (v27 ^ 0x8B4)))(v28 - 144);
  *(v28 - 136) = v29;
  *(v28 - 128) = v30;
  *(v28 - 112) = &a12;
  *(v28 - 104) = &a12;
  *(v28 - 120) = &a22;
  *(v28 - 144) = v27 + 787 - 1785193651 * ((v28 - 1075359130 - 2 * ((v28 - 144) & 0xBFE752F6)) ^ 0xAC3BBED6);
  (*(v26 + 8 * (v27 ^ 0x8B4)))(v28 - 144);
  v32 = *v30;
  *(v28 - 144) = &a16;
  *(v28 - 128) = v32;
  *(v28 - 136) = v27 + 1388665877 * ((v28 - 305098443 - 2 * ((v28 - 144) & 0xEDD091C5)) ^ 0x607DF329) + 4;
  (*(v26 + 8 * (v27 ^ 0x81C)))(v28 - 144);
  *(v28 - 144) = (v27 + 71) ^ (143681137 * (((((v28 - 144) | 0xEF7844AC) ^ 0xFFFFFFFE) - (~(v28 - 144) | 0x1087BB53)) ^ 0x71DF3083));
  *(v28 - 136) = v35;
  v33 = (*(v26 + 8 * (v27 + 1964)))(v28 - 144);
  return (*(v26 + 8 * ((((v27 ^ 0x9AFu) + *(v28 - 128) - 759377368 + 678 < 0x7FFFFFFF) * (v27 - 353)) ^ v27)))(v33);
}

uint64_t sub_22D386ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, int a35, int a36, int a37, int a38, int a39, int a40, int a41, int a42, int a43, int a44, int a45, int a46, int a47, int a48, int a49, int a50, int a51, int a52, int a53, int a54, int a55, int a56, int a57, int a58, int a59, int a60, int a61, int a62, int a63)
{
  v79 = v75 + 16;
  *(v78 - 128) = *(v78 - 172) ^ 0xCE5920C4;
  *(v78 - 132) = *(v78 - 168) ^ 0x1978C64A;
  *(v78 - 136) = *(v78 - 176) ^ (2 * (v76 - 497)) ^ 0x8AA3590;
  *(v78 - 140) = *(v78 - 164) ^ 0xDCB3F494;
  *(v78 - 120) = v79;
  *(v78 - 180) = 0;
  *(v78 - 144) = *(v78 - 124) < 0xEC4EA90u;
  v80 = (v77 + v79);
  v82 = *(v78 - 248);
  v81 = *(v78 - 240);
  v83 = *(v81 + (v80[5] ^ 0x87));
  *(v78 - 156) = (2 * (v76 - 497)) ^ 0x3B;
  v84 = (2 * (v76 - 497)) ^ 0x2A4;
  v85 = v79 + (((2 * (v76 - 497)) ^ 0x3Bu) - 947);
  *(v78 - 152) = v85;
  v86 = *(v78 - 232);
  v87 = *(v78 - 256);
  v88 = v80[7] ^ 0xBFLL;
  v89 = (((v83 + 58) ^ 0x74) << 16) | ((*(v82 + (*(v77 + v85) ^ 2)) ^ 0x7C) << 24) | ((*(v86 + (v80[6] ^ 0xE2)) ^ 0x57) << 8) | (a75 + 53 * *(v87 + v88)) ^ 0xFA;
  v90 = ((a75 + 53 * *(v87 + (v80[15] ^ 0x3CLL))) ^ 0x68 | ((*(v86 + (v80[14] ^ 8)) ^ 0x13) << 8)) & 0xFF00FFFF | ((*(v82 + (v80[12] ^ 0xBDLL)) ^ 0x54) << 24) | (((*(v81 + (v80[13] ^ 0xCALL)) + 58) ^ 0xFD) << 16);
  v91 = (a75 + 53 * *(v87 + (v80[3] ^ 0x19))) ^ 0x38 | ((*(v82 + (*v80 ^ 0x50)) ^ 0x49) << 24) | (((*(v81 + (v80[1] ^ 0x1ELL)) + 58) ^ 0x68) << 16) | ((*(v86 + (v80[2] ^ 6)) ^ 0x6F) << 8);
  v92 = ((*(v82 + v80[8]) ^ 0x77777777) << 24) | (((*(v81 + (v80[9] ^ 0xB0)) + 58) ^ 0x86) << 16) | ((*(v86 + (v80[10] ^ 0x42)) ^ 0x92) << 8) | (a75 + 53 * *(v87 + (v80[11] ^ 0x60))) ^ 0xDA;
  if ((((a75 + 53 * *(v87 + v88)) ^ 0xFA) & 2) != 0)
  {
    v93 = -2;
  }

  else
  {
    v93 = 2;
  }

  *(v78 - 172) = v89;
  v94 = v93 + v89;
  *(v78 - 168) = v90;
  v95 = a65 ^ v90;
  *(v78 - 164) = v92;
  *(v78 - 176) = v91;
  v96 = *(&off_284082B80 + v84 - 281) - 12;
  v97 = *&v96[4 * ((a63 ^ v92) >> 8)];
  HIDWORD(v99) = v97 ^ 0x2731;
  LODWORD(v99) = v97 ^ 0xF06CC000;
  v98 = v99 >> 14;
  v100 = *(&off_284082B80 + v84 - 148) - 8;
  v101 = *&v96[4 * ((a62 ^ v91) >> 8)];
  v102 = *&v100[4 * ((a64 ^ v94) >> 24)] - 1706904105;
  HIDWORD(v99) = v101 ^ 0x2731;
  LODWORD(v99) = v101 ^ 0xF06CC000;
  *(v78 - 116) = v84;
  v103 = *(&off_284082B80 + (v84 ^ 0x11F));
  v104 = (-340002596 - 21582785 * *(v103 + 4 * (a63 ^ v92))) ^ v102;
  v105 = (-340002596 - 21582785 * *(v103 + 4 * (a64 ^ v94))) ^ v98;
  v106 = *(&off_284082B80 + (v84 ^ 0x107)) - 12;
  v107 = (*&v100[4 * ((a63 ^ v92) >> 24)] - 1706904105) ^ (v99 >> 14);
  v108 = v104 + 1243140884 - ((2 * v104) & 0x9431A628);
  v109 = *&v96[4 * ((a64 ^ v94) >> 8)];
  HIDWORD(v99) = v109 ^ 0x2731;
  LODWORD(v99) = v109 ^ 0xF06CC000;
  v110 = (v107 + 1243140884 - ((2 * v107) & 0x9431A628)) ^ *&v106[4 * ((a64 ^ v94) >> 16)] ^ (-340002596 - 21582785 * *(v103 + 4 * v95));
  v111 = *&v106[4 * BYTE2(v95)];
  v112 = (*&v100[4 * HIBYTE(v95)] - 1706904105) ^ (v99 >> 14);
  v113 = *&v96[4 * BYTE1(v95)];
  HIDWORD(v99) = v113 ^ 0x2731;
  LODWORD(v99) = v113 ^ 0xF06CC000;
  v114 = v112 ^ (-340002596 - 21582785 * *(v103 + 4 * (a62 ^ v91)));
  v115 = v114 + 1243140884 - ((2 * v114) & 0x9431A628);
  v116 = *&v100[4 * ((a62 ^ v91) >> 24)] - 1706904105;
  v117 = a35 ^ (v110 + a37 - 2 * (v110 & a37));
  v118 = a61 ^ v111 ^ v116 ^ 0x8E1E9161 ^ (v105 + 1243140884 - ((2 * v105) & 0x9431A628));
  v119 = a60 ^ *&v106[4 * ((a62 ^ v91) >> 16)] ^ (v99 >> 14) ^ 0x7A8BED94 ^ v108;
  v120 = a59 ^ *&v106[4 * ((a63 ^ v92) >> 16)] ^ 0x342D1067 ^ v115;
  v121 = *&v96[4 * ((v117 ^ 0xAB13) >> 8)];
  HIDWORD(v99) = v121 ^ 0x2731;
  LODWORD(v99) = v121 ^ 0xF06CC000;
  v122 = (v99 >> 14) ^ (*&v100[4 * HIBYTE(v118)] - 1706904105);
  v123 = *&v100[4 * HIBYTE(v119)];
  v124 = *&v96[4 * BYTE1(v120)];
  HIDWORD(v99) = v124 ^ 0x2731;
  LODWORD(v99) = v124 ^ 0xF06CC000;
  v125 = v99 >> 14;
  v126 = *&v96[4 * ((a61 ^ v111 ^ v116 ^ 0x9161 ^ (v105 - 11500 - ((2 * v105) & 0xA628))) >> 8)];
  HIDWORD(v99) = v126 ^ 0x2731;
  LODWORD(v99) = v126 ^ 0xF06CC000;
  v127 = v99 >> 14;
  v128 = *&v96[4 * BYTE1(v119)];
  HIDWORD(v99) = v128 ^ 0x2731;
  LODWORD(v99) = v128 ^ 0xF06CC000;
  v129 = *&v100[4 * ((v117 ^ 0xC04AB13u) >> 24)];
  v130 = v129 - 463763221 - ((2 * v129 + 881159086) & 0x9431A628);
  v131 = (-340002596 - 21582785 * *(v103 + 4 * ((a61 ^ v111 ^ v116) ^ 0x61u ^ (v105 + 20 - ((2 * v105) & 0x28))))) ^ (*&v100[4 * HIBYTE(v120)] - 1706904105);
  v132 = a74 ^ *&v106[4 * BYTE2(v120)] ^ (-340002596 - 21582785 * *(v103 + 4 * v119));
  v133 = -340002596 - 21582785 * *(v103 + 4 * v120);
  v134 = -340002596 - 21582785 * *(v103 + 4 * (v117 ^ 0x33u));
  v135 = *&v106[4 * ((v117 ^ 0xC04AB13u) >> 16)];
  v136 = v132 ^ (v122 + 1243140884 - ((2 * v122) & 0x9431A628));
  v137 = a58 ^ v135 ^ (v99 >> 14) ^ 0xD9D684A ^ (v131 + 1243140884 - ((2 * v131) & 0x9431A628));
  v138 = a57 ^ *&v106[4 * BYTE2(v118)] ^ (v123 - 463763221 - ((2 * v123 + 881159086) & 0x9431A628)) ^ v125 ^ 0x87DD46DC ^ v134;
  v139 = a56 ^ *&v106[4 * BYTE2(v119)] ^ v133 ^ v127 ^ 0x96521C3F ^ v130;
  v140 = *&v96[4 * ((v132 ^ (v122 - 11500 - ((2 * v122) & 0xA628)) ^ 0xB36B) >> 8)];
  HIDWORD(v99) = v140 ^ 0x2731;
  LODWORD(v99) = v140 ^ 0xF06CC000;
  v141 = v99 >> 14;
  v142 = *&v96[4 * BYTE1(v137)];
  v143 = -340002596 - 21582785 * *(v103 + 4 * v138);
  HIDWORD(v99) = v142 ^ 0x2731;
  LODWORD(v99) = v142 ^ 0xF06CC000;
  v144 = v99 >> 14;
  v145 = *&v96[4 * BYTE1(v138)];
  HIDWORD(v99) = v145 ^ 0x2731;
  LODWORD(v99) = v145 ^ 0xF06CC000;
  v146 = (-340002596 - 21582785 * *(v103 + 4 * v137)) ^ v141;
  v147 = (*&v100[4 * HIBYTE(v138)] - 1706904105) ^ v144 ^ (-340002596 - 21582785 * *(v103 + 4 * v139));
  v148 = (*&v100[4 * HIBYTE(v137)] - 1706904105) ^ (v99 >> 14);
  v149 = *&v96[4 * BYTE1(v139)];
  HIDWORD(v99) = v149 ^ 0x2731;
  LODWORD(v99) = v149 ^ 0xF06CC000;
  v150 = ((v99 >> 14) ^ v143) + 1243140884 - ((2 * ((v99 >> 14) ^ v143)) & 0x9431A628);
  v151 = v148 ^ (-340002596 - 21582785 * *(v103 + 4 * (v136 ^ 0x6Bu)));
  v152 = *&v100[4 * HIBYTE(v139)] - 1706904105;
  v153 = *&v100[4 * (HIBYTE(v136) ^ 0xEE)] - 1706904105;
  v154 = *&v106[4 * BYTE2(v139)];
  v155 = a73 ^ *&v106[4 * ((v136 ^ 0x2F7BB36B) >> 16)] ^ (v147 + 1243140884 - ((2 * v147) & 0x9431A628));
  v156 = a55 ^ v154 ^ 0x640CB921 ^ (v151 + 1243140884 - ((2 * v151) & 0x9431A628));
  v157 = a54 ^ *&v106[4 * BYTE2(v138)] ^ v152 ^ 0xD8A932B2 ^ (v146 + 1243140884 - ((2 * v146) & 0x9431A628));
  BYTE2(v152) = BYTE2(v155) ^ 0x6F;
  v158 = a53 ^ *&v106[4 * BYTE2(v137)] ^ v153 ^ 0xDBC82169 ^ v150;
  v159 = *&v96[4 * ((v155 ^ 0x9E59) >> 8)];
  v160 = *&v96[4 * BYTE1(v158)];
  HIDWORD(v99) = v159 ^ 0x2731;
  LODWORD(v99) = v159 ^ 0xF06CC000;
  v161 = v99 >> 14;
  HIDWORD(v99) = v160 ^ 0x2731;
  LODWORD(v99) = v160 ^ 0xF06CC000;
  v162 = *&v106[4 * BYTE2(v156)];
  v163 = (-340002596 - 21582785 * *(v103 + 4 * v157)) ^ (*&v100[4 * ((v155 ^ 0xD16F9E59) >> 24)] - 1706904105) ^ (*&v96[4 * BYTE1(v156)] >> 14) ^ (*&v96[4 * BYTE1(v156)] << 18) ^ 0x9CC7C1B3;
  v164 = *&v106[4 * BYTE2(v157)];
  v165 = (*&v100[4 * HIBYTE(v156)] - 1706904105) ^ v161 ^ (-340002596 - 21582785 * *(v103 + 4 * v158));
  v166 = *(v103 + 4 * (v155 ^ 0x79u));
  v167 = (v99 >> 14) ^ (*&v100[4 * HIBYTE(v157)] - 1706904105) ^ (-340002596 - 21582785 * *(v103 + 4 * v156));
  v168 = -21582785 * v166 + 903138288 - ((-43165570 * v166 - 680005192) & 0x9431A628);
  v169 = *&v96[4 * BYTE1(v157)];
  HIDWORD(v99) = v169 ^ 0x2731;
  LODWORD(v99) = v169 ^ 0xF06CC000;
  v170 = a72 ^ v164 ^ (v165 + 1243140884 - ((2 * v165) & 0x9431A628));
  v171 = v170 ^ 0xE0349DAE;
  v172 = a52 ^ *&v106[4 * BYTE2(v152)] ^ 0xF4361671 ^ (v167 + 1243140884 - ((2 * v167) & 0x9431A628));
  v173 = a71 ^ v162 ^ (*&v100[4 * HIBYTE(v158)] - 1706904105) ^ (v99 >> 14) ^ v168;
  v174 = a51 ^ *&v106[4 * BYTE2(v158)] ^ 0x7E1E5010 ^ (v163 + 1243140884 - ((2 * v163) & 0x9431A628));
  v175 = (v170 ^ 0xE0349DAE) >> 24;
  v176 = (-340002596 - 21582785 * *(v103 + 4 * (v170 ^ 0x8Eu))) ^ (*&v100[4 * HIBYTE(v172)] - 1706904105);
  v177 = *&v106[4 * BYTE2(v174)];
  v178 = *&v96[4 * BYTE1(v171)];
  v179 = v176 + 1243140884 - ((2 * v176) & 0x9431A628);
  HIDWORD(v99) = v178 ^ 0x2731;
  LODWORD(v99) = v178 ^ 0xF06CC000;
  v180 = v99 >> 14;
  v181 = *&v96[4 * BYTE1(v174)];
  HIDWORD(v99) = v181 ^ 0x2731;
  LODWORD(v99) = v181 ^ 0xF06CC000;
  v182 = v99 >> 14;
  v183 = *&v96[4 * ((v173 ^ 0x500A) >> 8)];
  v184 = v180 ^ (-340002596 - 21582785 * *(v103 + 4 * v172)) ^ (*&v100[4 * HIBYTE(v174)] - 1706904105);
  HIDWORD(v99) = v183 ^ 0x2731;
  LODWORD(v99) = v183 ^ 0xF06CC000;
  v185 = v99 >> 14;
  v186 = *&v96[4 * BYTE1(v172)];
  HIDWORD(v99) = v186 ^ 0x2731;
  LODWORD(v99) = v186 ^ 0xF06CC000;
  v187 = *&v106[4 * BYTE2(v171)];
  v188 = (-340002596 - 21582785 * *(v103 + 4 * v174)) ^ (*&v100[4 * ((v173 ^ 0x6754500Au) >> 24)] - 1706904105) ^ (v99 >> 14);
  v189 = v188 + 1243140884 - ((2 * v188) & 0x9431A628);
  v190 = -340002596 - 21582785 * *(v103 + 4 * (v173 ^ 0x2Au));
  v191 = a50 ^ v177 ^ v185 ^ v179 ^ 0x541774FA;
  v192 = a49 ^ *&v106[4 * ((v173 ^ 0x6754500Au) >> 16)] ^ 0x9A279982 ^ (v184 + 1243140884 - ((2 * v184) & 0x9431A628));
  v193 = a48 ^ *&v106[4 * BYTE2(v172)] ^ (*&v100[4 * v175] - 463763221 - ((2 * *&v100[4 * v175] + 881159086) & 0x9431A628)) ^ v190 ^ 0x39B0719E ^ v182;
  v194 = a47 ^ v187 ^ 0x8EB61C45 ^ v189;
  v195 = *&v96[4 * BYTE1(v192)];
  HIDWORD(v99) = v195 ^ 0x2731;
  LODWORD(v99) = v195 ^ 0xF06CC000;
  v196 = (v99 >> 14) + 1243140884 - ((2 * (v99 >> 14)) & 0x9431A628);
  v197 = *(v103 + 4 * (v191 - ((2 * v191) & 0x40) + 32));
  v198 = *&v96[4 * BYTE1(v194)];
  HIDWORD(v99) = v198 ^ 0x2731;
  LODWORD(v99) = v198 ^ 0xF06CC000;
  v199 = (v99 >> 14) ^ (*&v100[4 * HIBYTE(v191)] - 1706904105);
  v200 = *&v96[4 * BYTE1(v191)];
  HIDWORD(v99) = v200 ^ 0x2731;
  LODWORD(v99) = v200 ^ 0xF06CC000;
  v201 = v99 >> 14;
  v202 = *&v96[4 * BYTE1(v193)];
  HIDWORD(v99) = v202 ^ 0x2731;
  LODWORD(v99) = v202 ^ 0xF06CC000;
  v203 = *&v100[4 * HIBYTE(v192)] - 1706904105;
  v204 = *&v106[4 * BYTE2(v192)];
  v205 = a70 ^ *&v106[4 * BYTE2(v193)] ^ v201 ^ (*&v100[4 * HIBYTE(v194)] - 1706904105) ^ (-21582785 * *(v103 + 4 * v192) + 903138288 - ((-680005192 - 43165570 * *(v103 + 4 * v192)) & 0x9431A628));
  v206 = a46 ^ *&v106[4 * BYTE2(v191)] ^ (*&v100[4 * HIBYTE(v193)] - 1706904105) ^ v196 ^ (-340002596 - 21582785 * *(v103 + 4 * v194)) ^ 0x7C892C4A;
  v207 = a45 ^ *&v106[4 * BYTE2(v194)] ^ v203 ^ (v99 >> 14) ^ 0x190B7FE4 ^ (-340002596 - 1039908828 * v197 + 1018326043 * v197 + 1243140884 - 2 * ((-340002596 - 1039908828 * v197 + 1018326043 * v197) & 0x4A18D317 ^ (1018326043 * v197) & 3));
  v208 = a44 ^ v204 ^ (-340002596 - 21582785 * *(v103 + 4 * v193)) ^ 0xCFA132BA ^ (v199 + 1243140884 - ((2 * v199) & 0x9431A628));
  v209 = v205 ^ 0x402CF460;
  v210 = (v205 ^ 0x402CF460) >> 24;
  v211 = *&v106[4 * BYTE2(v208)];
  v212 = *&v96[4 * BYTE1(v206)];
  HIDWORD(v99) = v212 ^ 0x2731;
  LODWORD(v99) = v212 ^ 0xF06CC000;
  v213 = v99 >> 14;
  v214 = *&v96[4 * BYTE1(v208)];
  v215 = HIBYTE(v208);
  HIDWORD(v99) = v214 ^ 0x2731;
  LODWORD(v99) = v214 ^ 0xF06CC000;
  v216 = *(v103 + 4 * (v205 ^ 0x40u));
  v217 = -21582785 * v216 + 903138288 - ((-43165570 * v216 - 680005192) & 0x9431A628);
  v218 = (-340002596 - 21582785 * *(v103 + 4 * v207)) ^ (v99 >> 14) ^ (*&v100[4 * v210] - 1706904105);
  v219 = *&v96[4 * BYTE1(v207)];
  HIDWORD(v99) = v219 ^ 0x2731;
  LODWORD(v99) = v219 ^ 0xF06CC000;
  v220 = v99 >> 14;
  v221 = (*&v100[4 * HIBYTE(v207)] - 1706904105) ^ v213 ^ (-340002596 - 21582785 * *(v103 + 4 * v208));
  v222 = *&v106[4 * BYTE2(v209)];
  v223 = (-340002596 - 21582785 * *(v103 + 4 * v206)) ^ (*&v100[4 * v215] - 1706904105);
  v224 = *&v100[4 * HIBYTE(v206)] - 1706904105;
  v225 = *&v96[4 * BYTE1(v209)];
  HIDWORD(v99) = v225 ^ 0x2731;
  LODWORD(v99) = v225 ^ 0xF06CC000;
  v226 = a43 ^ *&v106[4 * BYTE2(v206)] ^ 0x2655A6B2 ^ (v218 + 1243140884 - ((2 * v218) & 0x9431A628));
  v227 = a42 ^ *&v106[4 * BYTE2(v207)] ^ (v99 >> 14) ^ 0x354150DE ^ (v223 + 1243140884 - ((2 * v223) & 0x9431A628));
  v228 = a41 ^ v211 ^ v217 ^ v220 ^ v224 ^ 0x6005D395;
  v229 = a40 ^ v222 ^ 0xD6EF510D ^ (v221 + 1243140884 - ((2 * v221) & 0x9431A628));
  v230 = *&v106[4 * BYTE2(v226)];
  v231 = *&v96[4 * BYTE1(v228)];
  HIDWORD(v99) = v231 ^ 0x2731;
  LODWORD(v99) = v231 ^ 0xF06CC000;
  v232 = *&v100[4 * HIBYTE(v226)];
  v233 = (v99 >> 14) + 1243140884 - ((2 * (v99 >> 14)) & 0x9431A628);
  v234 = (-340002596 - 21582785 * *(v103 + 4 * v226)) ^ (*&v100[4 * HIBYTE(v228)] - 1706904105);
  v235 = v232 - 463763221 - ((2 * v232 + 881159086) & 0x9431A628);
  v236 = *(v103 + 4 * v228);
  v237 = -340002596 - 1039908828 * v236 + 1018326043 * v236 + 1243140884 - 2 * ((-340002596 - 1039908828 * v236 + 1018326043 * v236) & 0x4A18D316 ^ (1018326043 * v236) & 2);
  v238 = *&v96[4 * BYTE1(v227)];
  HIDWORD(v99) = v238 ^ 0x2731;
  LODWORD(v99) = v238 ^ 0xF06CC000;
  v239 = v99 >> 14;
  v240 = *&v96[4 * BYTE1(v226)];
  HIDWORD(v99) = v240 ^ 0x2731;
  LODWORD(v99) = v240 ^ 0xF06CC000;
  v241 = v99 >> 14;
  v242 = *&v96[4 * BYTE1(v229)];
  HIDWORD(v99) = v242 ^ 0x2731;
  LODWORD(v99) = v242 ^ 0xF06CC000;
  v243 = *&v100[4 * HIBYTE(v229)] - 1706904105;
  v244 = *&v106[4 * BYTE2(v227)] ^ *(v78 - 220) ^ (v99 >> 14) ^ (v234 + 1243140884 - ((2 * v234) & 0x9431A628));
  v245 = *&v106[4 * BYTE2(v229)];
  v246 = *&v106[4 * BYTE2(v228)];
  v247 = *&v100[4 * HIBYTE(v227)] - 1706904105;
  v248 = a69 ^ v246 ^ v239 ^ v235 ^ (-340002596 - 21582785 * *(v103 + 4 * v229));
  v249 = a39 ^ v230 ^ v243 ^ (-340002596 - 21582785 * *(v103 + 4 * v227)) ^ v233 ^ 0xDE12593A;
  v250 = a38 ^ v247 ^ v245 ^ v241 ^ 0x8D19C5A6 ^ v237;
  v251 = *&v96[4 * BYTE1(v250)];
  HIDWORD(v99) = v251 ^ 0x2731;
  LODWORD(v99) = v251 ^ 0xF06CC000;
  v252 = *(v103 + 4 * (v244 ^ 0x30u));
  v253 = (v99 >> 14) + 1243140884 - ((2 * (v99 >> 14)) & 0x9431A628);
  v254 = *(v103 + 4 * v249);
  v255 = *&v96[4 * ((v244 ^ 0x5930) >> 8)];
  HIDWORD(v99) = v255 ^ 0x2731;
  LODWORD(v99) = v255 ^ 0xF06CC000;
  v256 = (v99 >> 14) + 1243140884 - ((2 * (v99 >> 14)) & 0x9431A628);
  v257 = (*&v100[4 * (HIBYTE(v244) ^ 0x50)] - 1706904105) ^ (-340002596 - 21582785 * *(v103 + 4 * (v248 ^ 0x1Au)));
  v258 = *(v103 + 4 * v250);
  LODWORD(v103) = *&v96[4 * ((v248 ^ 0x551A) >> 8)];
  HIDWORD(v99) = v103 ^ 0x2731;
  LODWORD(v99) = v103 ^ 0xF06CC000;
  LODWORD(v103) = v99 >> 14;
  v259 = *&v100[4 * HIBYTE(v250)] - 1706904105;
  v260 = *&v106[4 * ((v248 ^ 0x579D551A) >> 16)];
  v261 = *&v100[4 * HIBYTE(v249)] - 1706904105;
  LODWORD(v100) = *&v100[4 * (HIBYTE(v248) ^ 0x96)];
  v262 = *&v96[4 * BYTE1(v249)];
  HIDWORD(v99) = v262 ^ 0x2731;
  LODWORD(v99) = v262 ^ 0xF06CC000;
  v263 = a68 ^ v260 ^ v261 ^ (-340002596 - 21582785 * v258) ^ v256;
  v264 = v259 ^ a36 ^ v103 ^ *&v106[4 * BYTE2(v249)] ^ (-340002596 - 21582785 * v252);
  v265 = a67 ^ *&v106[4 * ((v244 ^ 0x911C5930) >> 16)] ^ (-340002596 - 21582785 * v254) ^ (v100 - 1706904105) ^ v253;
  v266 = a66 ^ *&v106[4 * BYTE2(v250)] ^ (v99 >> 14) ^ (v257 + 1243140884 - ((2 * v257) & 0x9431A628));
  v267 = v266 ^ 0x644667A6;
  LODWORD(v96) = v265 ^ 0x7EC2C88;
  v268 = *(v78 - 116);
  v269 = *(&off_284082B80 + v268 - 266) - 12;
  v270 = *&v269[4 * ((v266 ^ 0x644667A6u) >> 24)];
  HIDWORD(v99) = v270 ^ 0xAAAAAAAA;
  LODWORD(v99) = v270 ^ 0x4983F380;
  v271 = *(&off_284082B80 + v268 - 122) - 12;
  *(v78 - 160) = *&v271[4 * ((v265 ^ 0x7EC2C88u) >> 16)];
  v272 = *(&off_284082B80 + v268 - 123) - 12;
  v273 = (v96 + 728353189 - ((2 * v96) & 0x14A)) ^ *&v272[4 * (v265 ^ 0xDB)] ^ (v99 >> 7);
  v274 = *&v271[4 * ((v266 ^ 0x644667A6u) >> 16)];
  v275 = ((2 * v274) & 0xBB708860 ^ 0x5EDF779F) - 1370668689 + (((v274 ^ 0xDF712114) + 546234092) ^ ((v274 ^ 0xFAC03AB3) + 88065357) ^ ((v274 ^ 0x7525E699) - 1965418137));
  v276 = *(&off_284082B80 + v268 - 147) - 8;
  v277 = ((v266 ^ 0xA6) + 728353189 - ((2 * (v266 ^ 0x644667A6)) & 0x14A)) ^ (BYTE1(v96) - 14967336 - ((v96 >> 7) & 0x1B0)) ^ *&v276[4 * (BYTE1(v96) ^ 0xF5)] ^ *&v272[4 * (v266 ^ 0xF5)];
  v278 = v277 + 1351941438 - ((2 * v277) & 0xA129FA7C);
  v279 = *&v269[4 * ((v263 ^ 0x9A25D878) >> 24)];
  HIDWORD(v99) = v279 ^ 0xAAAAAAAA;
  LODWORD(v99) = v279 ^ 0x4983F380;
  v280 = (v99 >> 7) + 1351941438 - ((2 * (v99 >> 7)) & 0xA129FA7C);
  v281 = BYTE1(v267);
  v282 = BYTE1(v267) - 14967336 - ((v267 >> 7) & 0x1B0);
  v283 = *&v269[4 * (HIBYTE(v264) ^ 0xBD)];
  HIDWORD(v99) = v283 ^ 0xAAAAAAAA;
  LODWORD(v99) = v283 ^ 0x4983F380;
  v284 = v99 >> 7;
  LODWORD(v96) = *&v269[4 * (v96 >> 24)];
  HIDWORD(v99) = v96 ^ 0xAAAAAAAA;
  LODWORD(v99) = v96 ^ 0x4983F380;
  LODWORD(v100) = *(v78 - 140) ^ *(v78 - 208) ^ *&v271[4 * ((v263 ^ 0x9A25D878) >> 16)] ^ v284 ^ v278;
  LODWORD(v96) = *(v78 - 136) ^ *(v78 - 216) ^ (((v264 ^ 0x9B63) >> 8) - 14967336 - (((v264 ^ 0xAD089B63) >> 7) & 0x1B0)) ^ ((v263 ^ 0x78) + 728353189 - ((2 * (v263 ^ 0x9A25D878)) & 0x14A)) ^ *&v272[4 * (v263 ^ 0x2B)] ^ *&v276[4 * (((v264 ^ 0x9B63) >> 8) ^ 0xF5)] ^ (v99 >> 7) ^ v275;
  v285 = *(v78 - 192);
  LODWORD(v269) = *(v78 - 132) ^ *(v78 - 212) ^ (((v263 ^ 0xD878) >> 8) - 14967336 - (((v263 ^ 0x9A25D878) >> 7) & 0x1B0)) ^ *&v271[4 * ((v264 ^ 0xAD089B63) >> 16)] ^ *&v276[4 * (((v263 ^ 0xD878) >> 8) ^ 0xF5)] ^ (v273 + 1351941438 - ((2 * v273) & 0xA129FA7C));
  LODWORD(v103) = *(v78 - 128) ^ *(v78 - 204) ^ ((v264 ^ 0x63) + 728353189 - ((2 * (v264 ^ 0xAD089B63)) & 0x14A)) ^ v282 ^ *(v78 - 160) ^ *&v272[4 * (v264 ^ 0x30)] ^ *&v276[4 * (v281 ^ 0xF5)] ^ v280;
  v286 = *(&off_284082B80 + v268 - 160) - 4;
  v80[3] = v286[v96 ^ 0xDFLL] ^ 0xC0;
  v287 = *(&off_284082B80 + v268 - 257) - 8;
  *(v285 + *(v78 - 152)) = (v287[BYTE3(v103) ^ 0x2CLL] + 86) ^ 0x78;
  *v80 = (v287[(v96 >> 24) ^ 0x57] + 86) ^ 0xC8;
  v288 = *(&off_284082B80 + v268 - 203) - 4;
  v80[13] = (v288[BYTE2(v269) ^ 0x5CLL] + 75) ^ 0xC7;
  v80[11] = v286[v100 ^ 0x46] ^ 0x84;
  v289 = *(&off_284082B80 + (v268 ^ 0x1AC)) - 4;
  v80[14] = ((BYTE1(v269) ^ 0xEE) - ((2 * (BYTE1(v269) ^ 0xEE)) & 0xBF) + 95) ^ 0x75 ^ v289[BYTE1(v269)];
  v80[2] = ((BYTE1(v96) ^ 3) - ((2 * (BYTE1(v96) ^ 3)) & 0xBF) + 95) ^ 0x8B ^ v289[BYTE1(v96) ^ 0xE6];
  v80[10] = ((BYTE1(v100) ^ 0xAB) - ((2 * (BYTE1(v100) ^ 0xAB)) & 0xBF) + 95) ^ 0x6D ^ v289[BYTE1(v100) ^ 0x84];
  v80[15] = v286[v269 ^ 0x11] ^ 0x33;
  v80[5] = (v288[BYTE2(v103) ^ 0x44] + 75) ^ 0xE2;
  v80[8] = (v287[(v100 >> 24) ^ 0x26] + 86) ^ 0xA2;
  v80[7] = v286[v103 ^ 0x3DLL] ^ 0x39;
  v80[12] = (v287[(v269 >> 24) ^ 0x44] + 86) ^ 0x23;
  v80[1] = (v288[BYTE2(v96) ^ 0xA3] + 75) ^ 0x17;
  LODWORD(v272) = *(v78 - 124);
  v290 = *(v78 - 120);
  v80[6] = (BYTE1(v103) - ((v103 >> 7) & 0xBE) + 95) ^ 0xD0 ^ v289[BYTE1(v103) ^ 0x58];
  v80[9] = (v288[BYTE2(v100) ^ 0xF8] + 75) ^ 0x90;
  v291 = v290 + 247786144 < v272;
  if (*(v78 - 144) != (v290 + 247786144) < 0xEC4EA90)
  {
    v291 = *(v78 - 144);
  }

  return (*(*(v78 - 200) + 8 * ((168 * v291) ^ v268)))();
}

uint64_t sub_22D386B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  *(v31 - 144) = v29 - 1785193651 * ((v31 - 874912861 - 2 * ((v31 - 144) & 0xCBD9E433)) ^ 0xD8050813) + 984;
  *(v31 - 136) = v30;
  *(v31 - 128) = v28;
  *(v31 - 112) = &a25;
  *(v31 - 104) = v27;
  *(v31 - 120) = v27;
  v32 = (*(v26 + 8 * (v29 ^ 0x9FB)))(v31 - 144);
  return (*(v26 + 8 * ((57 * (((v29 + 2087) ^ 0xD2BCDDCA ^ (11 * ((v29 + 2087) ^ 0x843))) + a14 < 0x7FFFFFFF)) ^ (v29 + 197))))(v32);
}

uint64_t sub_22D386C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int32x4_t a21, int32x4_t a22, int32x4_t a23, int32x4_t a24)
{
  v65 = (v64 - 220);
  v66.i64[0] = 0xB0B0B0B0B0B0B0B0;
  v66.i64[1] = 0xB0B0B0B0B0B0B0B0;
  v67 = vdupq_n_s32(0x24185817u);
  v68 = vdupq_n_s32(0xA4185815);
  v24 = *(v64 - 136);
  v25 = *(v64 - 124);
  if (v25 != 2)
  {
    if (v25 == 1)
    {
      v69 = vld4q_s8(v65);
      v26 = veorq_s8(v69.val[0], v66);
      v27 = vmovl_u8(*v26.i8);
      v28 = vmovl_u16(*v27.i8);
      v29 = vmovl_high_u8(v26);
      v30 = vmovl_u16(*v29.i8);
      v31 = veorq_s8(v69.val[1], v66);
      v32 = vmovl_high_u8(v31);
      v33 = vmovl_u8(*v31.i8);
      v34 = vorrq_s8(vshll_high_n_u16(v32, 8uLL), vmovl_high_u16(v29));
      v35 = vorrq_s8(vshll_n_u16(*v32.i8, 8uLL), v30);
      v36 = vorrq_s8(vshll_high_n_u16(v33, 8uLL), vmovl_high_u16(v27));
      v37 = vorrq_s8(vshll_n_u16(*v33.i8, 8uLL), v28);
      v38 = veorq_s8(v69.val[2], v66);
      _Q21 = vmovl_u8(*v38.i8);
      _Q20 = vmovl_high_u8(v38);
      __asm
      {
        SHLL2           V22.4S, V20.8H, #0x10
        SHLL2           V23.4S, V21.8H, #0x10
      }

      v69.val[0] = veorq_s8(v69.val[3], v66);
      v69.val[1] = vmovl_high_u8(v69.val[0]);
      v69.val[0] = vmovl_u8(*v69.val[0].i8);
      v69.val[2] = vorrq_s8(vorrq_s8(v34, _Q22), vshlq_n_s32(vmovl_high_u16(v69.val[1]), 0x18uLL));
      v69.val[1] = vorrq_s8(vorrq_s8(v35, vshll_n_s16(*_Q20.i8, 0x10uLL)), vshlq_n_s32(vmovl_u16(*v69.val[1].i8), 0x18uLL));
      v69.val[3] = vorrq_s8(vorrq_s8(v36, _Q23), vshlq_n_s32(vmovl_high_u16(v69.val[0]), 0x18uLL));
      v69.val[0] = vorrq_s8(vorrq_s8(v37, vshll_n_s16(*_Q21.i8, 0x10uLL)), vshlq_n_s32(vmovl_u16(*v69.val[0].i8), 0x18uLL));
      v47 = vdupq_n_s32(0x4830B02Au);
      a21 = vaddq_s32(vsubq_s32(v69.val[0], vandq_s8(vaddq_s32(v69.val[0], v69.val[0]), v47)), v68);
      a22 = vaddq_s32(vsubq_s32(v69.val[3], vandq_s8(vaddq_s32(v69.val[3], v69.val[3]), v47)), v68);
      a23 = vaddq_s32(vsubq_s32(v69.val[1], vandq_s8(vaddq_s32(v69.val[1], v69.val[1]), v47)), v68);
      a24 = vaddq_s32(vsubq_s32(v69.val[2], vandq_s8(vaddq_s32(v69.val[2], v69.val[2]), v47)), v68);
      JUMPOUT(0x22D380868);
    }

    JUMPOUT(0x22D380F1CLL);
  }

  v70 = vld4q_s8(v65);
  v48 = veorq_s8(v70.val[0], v66);
  v49 = vmovl_high_u8(v48);
  v50 = vmovl_u8(*v48.i8);
  v51 = veorq_s8(v70.val[1], v66);
  _Q21 = vmovl_high_u8(v51);
  _Q20 = vmovl_u8(*v51.i8);
  v54 = vshll_n_s16(*_Q20.i8, 0x10uLL);
  __asm { SHLL2           V20.4S, V20.8H, #0x10 }

  v55 = vshll_n_s16(*_Q21.i8, 0x10uLL);
  __asm { SHLL2           V21.4S, V21.8H, #0x10 }

  v56 = veorq_s8(v70.val[2], v66);
  v57 = vmovl_u8(*v56.i8);
  v58 = vmovl_high_u8(v56);
  v70.val[0] = veorq_s8(v70.val[3], v66);
  v70.val[1] = vmovl_u8(*v70.val[0].i8);
  v70.val[2] = vmovl_u16(*v70.val[1].i8);
  v70.val[1] = vmovl_high_u16(v70.val[1]);
  v70.val[0] = vmovl_high_u8(v70.val[0]);
  v70.val[3] = vmovl_u16(*v70.val[0].i8);
  v70.val[0] = vmovl_high_u16(v70.val[0]);
  v59 = vorrq_s8(vorrq_s8(vorrq_s8(_Q21, vshll_high_n_u16(v58, 8uLL)), vshlq_n_s32(vmovl_high_u16(v49), 0x18uLL)), v70.val[0]);
  v60 = vorrq_s8(vorrq_s8(vorrq_s8(v55, vshll_n_u16(*v58.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v49.i8), 0x18uLL)), v70.val[3]);
  v61 = vorrq_s8(vorrq_s8(vorrq_s8(_Q20, vshll_high_n_u16(v57, 8uLL)), vshlq_n_s32(vmovl_high_u16(v50), 0x18uLL)), v70.val[1]);
  v62 = vorrq_s8(vorrq_s8(vorrq_s8(v54, vshll_n_u16(*v57.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v50.i8), 0x18uLL)), v70.val[2]);
  v70.val[0] = veorq_s8(vandq_s8(v59, v67), (*v70.val & __PAIR128__(0xFFFFFF02FFFFFF02, 0xFFFFFF02FFFFFF02)));
  v70.val[3] = veorq_s8(vandq_s8(v60, v67), (*&v70.val[3] & __PAIR128__(0xFFFFFF02FFFFFF02, 0xFFFFFF02FFFFFF02)));
  v70.val[1] = veorq_s8(vandq_s8(v61, v67), (*&v70.val[1] & __PAIR128__(0xFFFFFF02FFFFFF02, 0xFFFFFF02FFFFFF02)));
  v70.val[2] = veorq_s8(vandq_s8(v62, v67), (*&v70.val[2] & __PAIR128__(0xFFFFFF02FFFFFF02, 0xFFFFFF02FFFFFF02)));
  a21 = vaddq_s32(vsubq_s32(v62, vaddq_s32(v70.val[2], v70.val[2])), v68);
  a22 = vaddq_s32(vsubq_s32(v61, vaddq_s32(v70.val[1], v70.val[1])), v68);
  a23 = vaddq_s32(vsubq_s32(v60, vaddq_s32(v70.val[3], v70.val[3])), v68);
  a24 = vaddq_s32(vsubq_s32(v59, vaddq_s32(v70.val[0], v70.val[0])), v68);
  return sub_22D380D60(v24, &a21);
}

void sub_22D386D10(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 8) == 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = !v2 && *a1 != 0;
  v1 = *(a1 + 16) - 1564307779 * ((((2 * a1) | 0xCF99E5FC) - a1 + 405998850) ^ 0x70C13EED);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_22D386E68(__n128 a1, __n128 a2)
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
  return sub_22D386E80(a1, a2);
}

uint64_t sub_22D387018@<X0>(int a1@<W8>)
{
  v6 = *(v9 + 32);
  if ((a1 + v4) >= 0x7FFFFFFF)
  {
    v7 = 704270764 - v2;
  }

  else
  {
    v7 = v2;
  }

  v10[1] = v7;
  *(v5 - 136) = v6;
  *(v5 - 128) = v1 + 1388665877 * (((v5 - 136) & 0x842A6493 | ~((v5 - 136) | 0x842A6493)) ^ 0xF678F980) - 560;
  *(v5 - 120) = v10;
  return (*(v3 + 8 * (v1 + 1464)))(v5 - 136);
}

uint64_t sub_22D3872A4@<X0>(int a1@<W3>, unsigned int a2@<W4>, unint64_t a3@<X6>, uint64_t a4@<X8>)
{
  v14 = (v10 + 4 * v13);
  v15 = (*v14 ^ v4) + (v7 ^ HIDWORD(a3)) + a2 * (*(v12 + 4 * v13) ^ v4);
  *(v14 - 1) = (v15 + (a1 ^ v9 ^ (v6 + 1)) + ~(v5 & (2 * v15))) ^ v11;
  return (*(v8 + 8 * ((56 * (v13 + 1 != a4)) ^ a1)))();
}

uint64_t sub_22D3875D4(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v10 = (a3 + 4 * a5);
  *v10 = a1;
  v10[1] = a1;
  return (*(v9 + 8 * (((a5 + v6 - 1672 == v7) * a6) | v8)))();
}

uint64_t sub_22D387674@<X0>(int a1@<W8>)
{
  if ((a1 + 783656465) <= 0x10 && ((1 << (a1 + 17)) & 0x14103) != 0)
  {
    return sub_22D3876FC();
  }

  else
  {
    return sub_22D3876A8();
  }
}

uint64_t sub_22D387748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  *(v27 - 128) = v23 + 1062 - 1037613739 * ((459405586 - ((v27 - 144) | 0x1B61F912) + ((v27 - 144) | 0xE49E06ED)) ^ 0x359C2B92);
  *(v27 - 120) = v26;
  *(v27 - 112) = &a22;
  *(v27 - 144) = &a22;
  *(v27 - 136) = v25;
  (*(v24 + 8 * (v23 + 1628)))(v27 - 144);
  *(v27 - 144) = &a22;
  *(v27 - 136) = v25;
  *(v27 - 128) = v23 + 1062 - 1037613739 * ((((v27 - 144) | 0xD2339DAA) - (v27 - 144) + ((v27 - 144) & 0x2DCC6250)) ^ 0x331B0D5);
  *(v27 - 120) = v26;
  *(v27 - 112) = &a22;
  (*(v24 + 8 * (v23 ^ 0xAA4)))(v27 - 144);
  v28 = 2066391179 * ((~((v27 - 144) | 0xA4E1E19D) + ((v27 - 144) & 0xA4E1E19D)) ^ 0xF4399C7A);
  *(v27 - 144) = v28 + v23 + 55;
  *(v27 - 140) = (((v23 - 665297480) & 0x27A79FDF) - 743595658 + (((v23 - 829) | 0xD5) + 1403817950) * v22 - 213) ^ v28;
  *(v27 - 128) = a15;
  v29 = (*(v24 + 8 * (v23 ^ 0xA20)))(v27 - 144);
  return (*(v24 + 8 * ((172 * (*(v27 - 136) == 1450726857)) ^ v23)))(v29);
}

uint64_t sub_22D387A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  *(v16 - 120) = v12 + 1037613739 * ((v16 - 136) ^ 0xD1022D7F) + 1812;
  *(v16 - 136) = &a12;
  *(v16 - 128) = v14;
  v17 = (*(v13 + 8 * (v12 ^ 0xB40)))(v16 - 136);
  return (*(v13 + 8 * (((((v12 + 1766021470) & 0x96BCA7E3) + 788) * (v15 == 1)) ^ v12)))(v17);
}

uint64_t sub_22D388318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, int a46, int a47)
{
  v50 = *(v49 + 304);
  v51 = *(v50 + 96);
  if (v51 == 2)
  {
    return (*(v48 + 8 * ((26 * (*(v50 + 92) == a47 - 1290)) ^ (a8 + 222))))(71, a2, a3, 58, 1573);
  }

  if (v51 == 1)
  {
    return (*(v48 + 8 * ((49 * (*(v50 + 92) == a45 - 1355)) ^ (a8 + 590))))(a1, a2, a3, 58, 1573);
  }

  *(v49 + 224) = 91;
  *(v50 + 91) = (((a8 - 94) ^ 0x3A) + &STACK[0x300]) * (&STACK[0x300] ^ v47);
  return (*(v48 + 8 * ((1573 * (*(v49 + 224) == 0)) | (a8 - 559))))(a1, a2, a3, 58);
}

void sub_22D388410(uint64_t a1)
{
  v2 = *(&off_284082B80 + ((-3 * (dword_27D9FC2E8 ^ 0xE5 ^ qword_27D9FC2C8)) ^ byte_22D5BA4E0[byte_22D5C6550[(-3 * (dword_27D9FC2E8 ^ 0xE5 ^ qword_27D9FC2C8))] ^ 0x6C]) + 4);
  v3 = *(v2 - 4);
  v4 = *(&off_284082B80 + ((-3 * ((qword_27D9FC2C8 + v3) ^ 0xE5)) ^ byte_22D5BA3E0[byte_22D5C6450[(-3 * ((qword_27D9FC2C8 + v3) ^ 0xE5))] ^ 0xE7]) + 121);
  v5 = *(v4 - 4) - v3 - &v9;
  v6 = 1707045629 * v5 + 0x1520B27A7613BCE5;
  v7 = 1707045629 * (v5 ^ 0x1520B27A7613BCE5);
  *(v2 - 4) = v6;
  *(v4 - 4) = v7;
  LODWORD(v2) = *(v2 - 4);
  v8 = *(&off_284082B80 + ((-3 * (dword_27D9FC2E8 ^ 0xE5 ^ qword_27D9FC2C8)) ^ byte_22D5BF320[byte_22D5BA8E0[(-3 * (dword_27D9FC2E8 ^ 0xE5 ^ qword_27D9FC2C8))] ^ 0xA6]) + 34) - 8;
  (*&v8[8 * (*(off_284082EF8 + (*(off_284082E00 + (-3 * (v2 ^ 0xE5 ^ v7))) ^ 0x93u)) ^ (-3 * (v2 ^ 0xE5 ^ v7))) + 19096])(*(&off_284082B80 + (*(off_284082D30 + (*(off_284083140 + (-3 * ((v7 + v2) ^ 0xE5)) - 4) ^ 0xE7u) - 8) ^ (-3 * ((v7 + v2) ^ 0xE5))) + 21) - 4, sub_22D368468);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_22D38861C(int8x16_t a1, double a2, double a3, int8x16_t a4, uint64_t a5, uint64_t a6)
{
  v11 = (v9 + (v7 + v6));
  v12 = *v11;
  v13 = v11[1];
  v14 = (a6 + v7);
  *v14 = vaddq_s8(vsubq_s8(v12, vandq_s8(vaddq_s8(v12, v12), a4)), a1);
  v14[1] = vaddq_s8(vsubq_s8(v13, vandq_s8(vaddq_s8(v13, v13), a4)), a1);
  return (*(v10 + 8 * ((15 * (v7 + 32 != ((v8 - 1857) ^ 2))) ^ v8)))();
}

uint64_t sub_22D3886CC(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = *(a2 + 4);
  *(a1 + 32) = *(a2 + 8);
  return 0;
}

uint64_t sub_22D3887DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  *(v15 - 120) = v14;
  *(v15 - 136) = v12;
  *(v15 - 128) = v11 + 1388665877 * ((((v15 - 136) | 0x1BAEBD3D) - ((v15 - 136) & 0x1BAEBD3D)) ^ 0x9603DFD1) - 1431;
  v16 = (*(v13 + 8 * (v11 ^ 0xEB3)))(v15 - 136);
  return (*(v13 + 8 * (((a11 < 1) * ((v11 ^ 0x69A) + 1059)) ^ (v11 - 991))))(v16);
}

void sub_22D38889C(_DWORD *a1)
{
  v1 = *a1 ^ (1082434553 * ((a1 - 587035644 - 2 * (a1 & 0xDD028C04)) ^ 0x46457A8E));
  __asm { BRAA            X10, X17 }
}

uint64_t sub_22D38894C@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 - 1;
  *(v3 + v5) = *(a1 + v5);
  return (*(v4 + 8 * ((v2 - 431) | (4 * (v5 != 0)))))();
}

void sub_22D3889E8(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16) + 2066391179 * ((-2078713933 - (a1 | 0x841957B3) + (a1 | 0x7BE6A84C)) ^ 0xD4C12A54);
  v4 = *(a1 + 8);
  v3[1] = v1 + 1564307779 * (((~v3 & 0x7CB2FF8) - (~v3 | 0x7CB2FF9)) ^ 0x90C6E3EA) + 424;
  v2 = *(&off_284082B80 + (v1 ^ 0x109)) - 8;
  (*&v2[8 * v1 + 17272])(v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_22D388CA4(uint64_t a1)
{
  v7 = *(v6 - 228 + v1 + 72);
  v8 = ((2 * v1) & 0xCDDF5FA8) + (v1 ^ 0x66EFAFD7) + v2;
  *(a1 + v8) = ((v7 >> (v3 - 34)) ^ 0x88) - ((2 * (v7 >> (v3 - 34))) & 0x60) - 80;
  *(a1 + v8 + 1) = (BYTE2(v7) ^ 0x47) - ((v7 >> 15) & 0x60) - 80;
  *(a1 + v8 + 2) = (BYTE1(v7) ^ 0xCA) - ((v7 >> 7) & 0x60) - 80;
  *(a1 + v8 + 3) = v7 ^ 0x9D;
  return (*(v5 + 8 * (((v1 + 4 >= *(v6 - 136)) * v4) ^ v3)))();
}

uint64_t sub_22D388D9C(uint64_t a1)
{
  v8 = *(v6 - 252 + v1 + 72);
  v9 = ((v1 << (((v3 - 68) & 0x9F) + v7)) & 0xEDDFDF78) + (v1 ^ 0xF6EFEFBF) + v2;
  *(a1 + v9) = (HIBYTE(v8) ^ 0x88) - ((v8 >> 23) & 0x60) - 80;
  *(a1 + v9 + 1) = (BYTE2(v8) ^ 0x47) - ((v8 >> 15) & 0x60) - 80;
  *(a1 + v9 + 2) = (BYTE1(v8) ^ 0xCA) - ((v8 >> 7) & 0x60) - 80;
  *(a1 + v9 + 3) = v8 ^ 0x9D;
  return (*(v5 + 8 * (((v1 + 4 >= *(v6 - 160)) * v4) ^ v3)))();
}

uint64_t sub_22D388F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v28 = *(a1 + 48);
  *(v26 - 112) = veorq_s8(**a1, xmmword_22D5C6750);
  if (v25)
  {
    v29 = v28 == 0;
  }

  else
  {
    v29 = 1;
  }

  v30 = !v29;
  v31 = *(v27 + 8 * ((54 * v30) ^ a5));
  *(v26 - 180) = -42900;
  return v31(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

uint64_t sub_22D388FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, int a31, uint64_t a32, uint64_t a33, uint64_t a34, unsigned int *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, int a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v73 == 268435459)
  {
    return (*(v75 + 8 * ((47 * (v72 < ((a60 - 898329228) ^ 0xCA749888) + ((a60 - 898329228) & 0x358B6777) - 231)) ^ (a60 + 258))))();
  }

  if (v73)
  {
    v77 = 1388665877 * ((((v76 - 192) | 0xDFB2B2F5) - ((v76 - 192) & 0xDFB2B2F5)) ^ 0x521FD019);
    *(v76 - 192) = &a71;
    *(v76 - 184) = a60 - v77 - 36;
    *(v76 - 180) = -1541908459 - v77 + v73 - ((2 * v73) & 0x4830B02A);
    v78 = (*(v75 + 8 * (a60 ^ 0xAEE)))(v76 - 192);
    LODWORD(STACK[0x294]) = v72;
    LODWORD(STACK[0x2C8]) = v73;
    return (*(v75 + 8 * ((1557 * (a71 == a60 - 1541909364)) ^ (a60 - 805))))(v78);
  }

  else
  {
    (*(v75 + 8 * (a60 + 1366)))(*a35, v74, a56);
    STACK[0x258] = 0;
    v79 = *(a57 + 52);
    v80 = STACK[0x2E0];
    v81 = LODWORD(STACK[0x270]) ^ 0x4DE7DBC7;
    v82 = (2 * LODWORD(STACK[0x270])) & 0x9BCFB78E;
    v83 = 1785193651 * ((2 * ((v76 - 192) & 0x7C8ABD58) - (v76 - 192) - 2089467230) ^ 0x90A9AE82);
    v84 = (v76 - 192);
    v84[1] = a54;
    v84[3] = &STACK[0x4E0];
    v84[4] = v80;
    *(v76 - 176) = v83 + v81 + v82 - 1140850945;
    *(v76 - 172) = v79 - v83 + 605003167;
    *(v76 - 152) = (a60 - 863) ^ v83;
    *(v76 - 148) = v83 + (((a31 & 0x7FFFFFFF ^ 0x4264E183) - 1190454989) ^ ((a31 & 0x7FFFFFFF ^ 0x9D66173A) + 1711927180) ^ ((a31 & 0x7FFFFFFF ^ 0x720C0CEE) + (a60 ^ 0x696) - 1989939391)) - 815120871;
    v85 = (*(v75 + 8 * (a60 ^ 0xA35)))(v76 - 192);
    return (*(v75 + 8 * ((*(v76 - 192) != -1541908459) | (4 * (*(v76 - 192) != -1541908459)) | (a60 + 183))))(v85);
  }
}

void sub_22D3892F8(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16) ^ (2066391179 * (a1 ^ 0xAF278218));
  v2 = *(a1 + 24);
  if (*(v2 + 4) - 352135382 >= 0)
  {
    v3 = *(v2 + 4) - 352135382;
  }

  else
  {
    v3 = 352135382 - *(v2 + 4);
  }

  if (*(*(a1 + 8) + 4) - 352135382 >= 0)
  {
    v4 = *(*(a1 + 8) + 4) - 352135382;
  }

  else
  {
    v4 = 352135382 - *(*(a1 + 8) + 4);
  }

  v8 = v1 + 1361651671 * (&v7 ^ 0xD322F08C) + 1027;
  v7 = v2;
  v5 = *(&off_284082B80 + v1 - 349) - 8;
  (*&v5[8 * v1 + 16184])(&v7);
  if (v3 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  __asm { BRAA            X15, X17 }
}

uint64_t sub_22D38943C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, _BYTE *a12, _BYTE *a13, _BYTE *a14, uint64_t a15, _BYTE *a16, _BYTE *a17, _BYTE *a18, _BYTE *a19, _BYTE *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, _BYTE *a25, uint64_t a26, _BYTE *a27, _BYTE *a28, _BYTE *a29, _BYTE *a30, _BYTE *a31, _BYTE *a32, _BYTE *a33, uint64_t a34, int a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, unsigned int a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  *a13 = v65;
  *a16 = BYTE3(v65);
  a13[1] = BYTE6(v59);
  a12[1] = BYTE4(v65) ^ 0x30;
  a14[20] = v61;
  *a17 = BYTE5(v59);
  a14[64] = BYTE2(v65);
  a14[50] = BYTE3(v62);
  *a20 = BYTE1(v65);
  *a19 = v62;
  a14[26] = BYTE6(v62);
  *a28 = BYTE4(v62);
  a12[2] = a6 >> ((a35 + 108) & 0x7F ^ 0x7Fu);
  a14[45] = BYTE5(v62);
  *a31 = HIBYTE(v62);
  a14[11] = BYTE2(a6);
  *a32 = BYTE1(v61);
  *a12 = HIBYTE(v59);
  *a18 = BYTE2(v61);
  a14[52] = BYTE4(v61);
  *a27 = BYTE3(v61);
  v66 = *(a10 + 526 + (((v64 >> 33) & 0x80 | (v61 >> 41) & 0x7F) ^ 0x1D));
  a14[9] = BYTE6(v61);
  *a25 = (((v66 >> 4) | (16 * v66)) ^ 0xB ^ (((v66 >> 4) | (16 * v66)) >> 1) & 0x55) + 95;
  v67 = *(a11 + (((v61 >> 51) & 0xE0 | (v64 >> 59)) ^ 0xF3));
  a14[39] = v63 ^ 0x53;
  *a30 = (v67 ^ 0xBC) + 74;
  v68 = *(a11 + (((v63 >> 3) & 0xE0 | (v63 >> 11)) ^ 0xEF));
  a14[49] = BYTE5(v63) ^ 0xBB;
  a14[63] = BYTE3(v63) ^ 0xC1;
  v69 = (v60 >> 38) ^ 0xB0;
  a14[13] = BYTE6(v63) ^ 0x15;
  *a29 = BYTE2(v63) ^ 0x1D;
  *a33 = (v68 ^ 0xBC) + 74;
  a14[36] = BYTE4(v63) ^ 0xF2;
  a14[60] = BYTE1(v60) ^ 0x54;
  a14[27] = BYTE2(v60) ^ 0x11;
  a14[40] = (v63 ^ 0x4F15BBF2C11DE053) >> (a6 & 0x38) >> (a6 & 0x38 ^ 0x38);
  a14[53] = BYTE3(v60) ^ 5;
  a14[59] = v60 ^ 0x4C;
  a14[22] = BYTE4(v60) ^ 0x2D;
  v70 = *(a15 + ((v69 & 0xFC | (v60 >> 46) & 3) ^ 0x97));
  a14[37] = -35 * ((((v69 & 0xFC | (v60 >> 46) & 3) ^ 0x86) - ((2 * v69) & 0xD0) + (v70 ^ 0xB2) + ((2 * v70) & 0x64) + 79) ^ 0x85);
  v71 = *(a10 + 526 + (((v60 >> 41) & 0x80 | (v60 >> 49) & 0x7F) ^ 0x56));
  a14[29] = HIBYTE(v60) ^ 0x30;
  a14[57] = (((v71 >> 4) | (16 * v71)) ^ 0xB) + ((((v71 >> 4) | (16 * v71)) >> 1) & 0x55) - 2 * ((((v71 >> 4) | (16 * v71)) >> 1) & 0x55 & (((v71 >> 4) | (16 * v71)) ^ 0xB)) + 95;
  **a21 = a23 + 1;
  v73 = *a21;
  v74 = *(*a21 + 15) | (*(*a21 + 32) << 8) | (*(*a21 + 7) << 16) | (*(*a21 + 34) << 24) | (*(*a21 + 61) << 40);
  v75 = *(&off_284082B80 + a35 - 839);
  v76 = *(v75 + 2 + (((((69 * *(*a21 + 55)) - ((69 * *(*a21 + 55)) ^ 0xE8)) ^ 0xFFFFFFF0) + (69 * *(*a21 + 55))) ^ 0xD5)) - 18;
  v77 = ((v76 ^ 0x57) >> 2) | ((v76 ^ 0x57u) << 6);
  v78 = ((*(*a21 + 51) << 56) | (*(*a21 + 56) << 48)) ^ 0x87488091200DE780 ^ (((0xFFFFFFFF00000000 * v77) ^ (v74 - (v74 & 0xFFFFFF00FFFFFFFFLL | (v77 << 32))) ^ ((v77 << 32) - ((v77 << 33) & 0x1CA00000000) + 0x327C1CE54810A55CLL) ^ 0x327C1CE54810A55CLL) + v74);
  v82 = ((v73[4] >> 4) | (16 * v73[4])) ^ 0x5CLL;
  LOBYTE(v74) = (*(v75 + 2 + ((69 * *(*a21 + 31)) ^ 0x3DLL)) - 18) ^ 0x57;
  v79 = ((v74 >> 2) | (v74 << 6)) << 32;
  v80 = *(*a21 + 8) << 24;
  v81 = *(*a21 + 33) << 16;
  v83 = ((((v81 & 0xFFFFFFFFFFE1FFFFLL ^ 0xEEB202A82EA0CA2CLL ^ ((((((*(v75 + 533 + v82) >> 5) | (8 * *(v75 + 533 + v82))) << 8) ^ 0x19530A25229B4DFCLL) & (*(*a21 + 19) ^ 0x5D5FCAA5269BFFFFLL) & 0xFFFFFFFFFFFFFFFCLL | *(*a21 + 19) & 3) ^ 0x59F48718868583A0) & (v81 ^ 0x7DFFEFFDFFBFFFFFLL)) & ~v80 | v80 & 0x75000000) ^ 0x24F109017DAB65D7) & ~v79 | v79 & 0x6B00000000) ^ ((v73[38] << 40) | (v73[43] << 48));
  return (*(a40 + 8 * ((a35 - 700933524) & 0x29C7677F)))(0xFFFFFF0000000000 * v73[12], v78, ((v83 & 0x4AF54021979D7FCDLL ^ (v73[46] << 56) & 0x4A00000000000000 ^ 0xF50BFFDE68EA8D7ALL) & ((v73[46] << 56) & 0xB500000000000000 ^ 0x5CC3674C3CEF0D6BLL ^ v83 & 0xB50ABFDE68628032) | (v83 & 0x4AF54021979D7FCDLL ^ (v73[46] << 56) & 0x4A00000000000000) & 0x234002183107284) ^ 0xDEE7E1D8DFFFADCDLL, ((*(*a21 + 17) << 32) | (*(*a21 + 16) << 40) | (*(*a21 + 30) << 48)) ^ __ROR8__(((*(*a21 + 21) << 51) | (*(*a21 + 35) << 43) | (*(*a21 + 6) << 35) | __ROR8__(*(*a21 + 54), 5)) ^ 0xD18D0189ED83BCC3, 35) ^ (*(*a21 + 42) << 56) ^ 0x8861A7AD79253C87, 250, a43, a59, 751, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31);
}

uint64_t sub_22D389C54(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v23 = HIDWORD(v15) + v17 * (*(*(a14 + 8) + 4) ^ v14) + (v22[1] ^ v14) + HIDWORD(v16) + v21 * (*(*(a12 + 8) + 4) ^ v14);
  *v22 = v23 + v14 - ((v23 << (v20 + 6)) & a2);
  return (*(v19 + 8 * (((a8 == 2) * v18) ^ v20)))();
}

uint64_t sub_22D389E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, int a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = 388096249 * *(a57 + 52) - 1593600549;
  v73 = 843532609 * ((v71 + 1595890018 - 2 * ((v71 - 192) & 0x5F1F5A22)) ^ 0x3520EA7);
  *(v71 - 168) = ((a67 ^ 0x57F67FB2) - 33565984 + ((2 * a67) & 0xAFECFF64)) ^ v73;
  *(v71 - 164) = v72 ^ v73;
  *(v71 - 160) = v73 + 388096249 * ((((v70 + 235) ^ 0xB72A722D) + (a31 ^ 0x48D58CB3)) ^ ((a31 ^ 0x303C5AED) - 809261805) ^ (((5 * (v70 ^ 0xC0)) ^ 0x2A18D07E) + (a31 ^ 0xD5E72C09))) - 892338733;
  *(v71 - 156) = v73 + v70 - 104;
  v74 = (v71 - 192);
  v74[5] = v67;
  v74[1] = &STACK[0x4D0];
  v74[2] = a57 + 36;
  v75 = (*(v69 + 8 * (v70 ^ 0x9E2)))(v71 - 192);
  return (*(v69 + 8 * ((2431 * (*(v71 - 192) == v68)) ^ v70)))(v75);
}

void sub_22D38A04C(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  a4 = v6;
  a6 = v8;
  a5 = (v7 + 218) ^ (2066391179 * ((2 * (&a3 & 0x70D56F88) - &a3 + 254447735) ^ 0xA00D126F));
  (*(a1 + 8 * (v7 ^ 0x933)))(&a3);
  JUMPOUT(0x22D38A0B4);
}

void sub_22D38A0E0(int a1@<W8>)
{
  if (a1 == ((v2 + 343) ^ (v3 + 598) ^ 0x1AB))
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  *v1 = v5;
  JUMPOUT(0x22D38A100);
}

uint64_t sub_22D38A278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, char *a16, unsigned int a17)
{
  a17 = 2066391179 * (((&a15 | 0xDA314ECA) - (&a15 & 0xDA314ECA)) ^ 0x7516CCD2) + 1020;
  a16 = &a11;
  v19 = (*(v17 + 19160))(&a15);
  return (*(v17 + 8 * (((((a15 == -1541908459) ^ 0x39) & 1) * (v18 - 2124583764)) ^ 0x3D8)))(v19);
}

uint64_t sub_22D38A334()
{
  v4 = v2 + 1046236055;
  v5 = v4 < 0x870A9AAA;
  v6 = v1 - 2029348182 < v4;
  if (v1 > 0x78F56555 != v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  return (*(v0 + 8 * ((((((v3 - 1405) | 0xC) ^ 0x307) - 603) * v7) ^ ((v3 - 1405) | 0xC))))();
}

uint64_t sub_22D38A3E8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v12 = (v9 - 1) & 0xFLL;
  v13 = -v10 - v9 + 1;
  v15 = a2 >= (a6 ^ 0x40CuLL) && v13 + v8 + v12 >= (a6 - 380) - 656 && (v13 + v7 + v12) >= 0x10;
  v16 = v13 + v6 + v12;
  v18 = !v15 || v16 < 0x10;
  return (*(v11 + 8 * ((46 * v18) ^ a6)))();
}

uint64_t sub_22D38A4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v11 = *(a1 + 8);
  v10 = *(a1 + 16);
  *(v9 - 132) = a7 - 311;
  *(v9 - 112) = veorq_s8(*v11, xmmword_22D5C6790);
  *(v9 - 144) = v8;
  if (v8)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  v14 = *(v7 + 8 * (((4 * v13) | (8 * v13)) ^ a7));
  *(v9 - 136) = -42900;
  return v14(a1, a2, a3);
}

void sub_22D38A558()
{
  *(v3 - 200) = v4;
  v5 = v2 - 166;
  v6 = v0[5] ^ 0xE2;
  *(v3 - 156) = v1;
  v7 = *(&off_284082B80 + (v2 ^ 0x1EB)) - 4;
  v8 = v2;
  v9 = v7[v6];
  *(v3 - 116) = v5 | 8;
  v10 = *(&off_284082B80 + (v8 ^ 0x1A7)) - 4;
  v11 = v10[v0[15] ^ 0x92];
  v12 = ((v7[v0[13] ^ 0xB9] << 16) ^ 0x2DE16D78) & ((v5 | 8) ^ 0x6FFF7E97 ^ v11) | v11 & 0xFFFFFF87;
  v13 = v10[((v0[7] & 0xC0 ^ 0xAD5B798044E8DE71) & (v0[7] & 0x3F ^ 0xAD7BF98647FCDFDFLL) | v0[7] & 0xE) ^ 0xAD5B798044E8DEE2];
  v14 = *(&off_284082B80 + (v8 ^ 0x1E8)) - 4;
  v15 = (v13 ^ 0xFFFFFF07) & ((v9 << 16) ^ 0xDCD050B) | v13 & 0xF4;
  v16 = ((-1459617792 * v14[v0[4] ^ 0x57] - 234881024) ^ 0x2AEBF521) & (v15 ^ 0xF26EF282);
  v17 = v15 & 0xC1400DE;
  v18 = -87 * v14[v0[12] ^ 0x68] - 14;
  v19 = *(&off_284082B80 + v8 - 373) - 12;
  LOBYTE(v15) = v19[v0[14] ^ 0xD6] + 94;
  v20 = ((v19[v0[6] ^ 0x87] + 94) ^ 0x30) << 8;
  v21 = (v20 & 0x2000 | (v17 ^ 0x9B572ADC ^ v16) & ~v20) ^ 0xC6B8DF33;
  v22 = (((-87 * v14[v0[8] ^ 0xB9] - 14) ^ 0xBC) << 24) | ((v7[v0[9] ^ 0x3BLL] ^ 0x39) << 16) | v10[v0[11] ^ 0x62] ^ 0x5F;
  LODWORD(v7) = v10[v0[3] ^ 0x29] ^ 0x1C | ((v7[v0[1] ^ 8] ^ 0xC8) << 16) | (((-87 * v14[*v0 ^ 0xE1] - 14) ^ 0xDA) << 24);
  LODWORD(v14) = ((((v18 ^ 0xE8) << 24) ^ 0xD5AC26DC) & ~((v15 ^ 0x27) << 8) & 0x2EAC4B04 | ((v15 ^ 0x27) << 8) & 0x4900) ^ 0xE3BC7101 ^ (((((v18 ^ 0xE8) << 24) ^ 0xD5AC26DC) & ~((v15 ^ 0x27) << 8) | ((v15 ^ 0x27) << 8) & 0xD900) ^ 0xFE539023) & (v12 ^ 0xFC96D954);
  v23 = (v7 & 0xFFFF00FF | (((v19[v0[2] ^ 0x8FLL] + 94) ^ 0xD8) << 8)) ^ 0x1B;
  v24 = *(&off_284082B80 + (v8 ^ 0x1A1)) - 4;
  v25 = *(&off_284082B80 + v8 - 377) - 12;
  v26 = v22 & 0xFFFF00FF | (((v19[v0[10] ^ 0xB7] + 94) ^ 0xE7) << 8);
  v27 = *&v24[4 * (BYTE2(v14) ^ 0xBA)] ^ *&v25[4 * (v15 ^ 0x7E)] ^ 0xFC6B8435;
  *(v3 - 140) = v8;
  v28 = *(&off_284082B80 + v8 - 334) - 8;
  v29 = (v27 - ((2 * v27) & 0xCCAD13DC) + 1716947438) ^ *&v28[4 * (v18 ^ 0x88)];
  v30 = *(&off_284082B80 + (v8 ^ 0x1B4)) - 12;
  LODWORD(v11) = *&v30[4 * (v11 ^ 0x82)];
  *(v3 - 216) = v23;
  *(v3 - 204) = v21;
  v93 = v11 ^ v23 ^ (v29 - ((2 * v29) & 0xC0C0C74C) - 530553946);
  *(v3 - 208) = v26;
  v94 = v93 ^ v21 ^ v26;
  LODWORD(v10) = *&v30[4 * ((v94 ^ v14) ^ 0x35)] ^ 0x73C4A17C;
  v31 = v94 ^ v14 ^ 0xF83672DE;
  *(v3 - 164) = BYTE1(v31);
  LODWORD(v10) = v10 ^ *&v25[4 * (BYTE1(v31) ^ 0x9E)];
  LODWORD(v10) = (v10 - ((2 * v10) & 0xCCAD13DC) + 1716947438) ^ *&v28[4 * (HIBYTE(v31) ^ 0x86)];
  LODWORD(v10) = v93 ^ *&v24[4 * (BYTE2(v31) ^ 0xBA)] ^ (v10 - ((2 * v10) & 0xDF9E8DDE) + 1875855087);
  v32 = v10 ^ v93 ^ v21 ^ 0xA25B684D;
  *(v3 - 256) = v32;
  v33 = v10;
  *(v3 - 136) = v10;
  v32 ^= 0xF73EC34E;
  *(v3 - 212) = v14;
  v34 = (v32 ^ v14 ^ 0x7E4FB786) >> 24;
  *(v3 - 232) = v34;
  v97 = ((v32 ^ v14 ^ 0x7E4FB786) >> 16);
  v35 = *&v28[4 * (v34 ^ 0x86)] ^ *&v24[4 * (v97 ^ 0xBA)];
  v96 = ((v32 ^ v14 ^ 0xB786) >> 8);
  v36 = ((v35 ^ 0x999CF01) - ((2 * (v35 ^ 0x999CF01)) & 0x274985B4) - 1817918758) ^ *&v25[4 * (v96 ^ 0x9E)];
  LODWORD(v10) = (v32 ^ v14);
  *(v3 - 160) = v10;
  v37 = v33 ^ *&v30[4 * (v10 ^ 0x6D)] ^ (v36 - ((2 * v36) & 0xC0C0C74C) - 530553946);
  *(v3 - 124) = v37;
  v37 ^= 0xFEB4AEEu;
  LODWORD(v10) = v37 ^ v94 ^ 0xF83672DE;
  *(v3 - 176) = v10;
  LODWORD(v19) = v10 ^ v32 ^ v14 ^ 0x7E4FB786;
  *(v3 - 220) = BYTE2(v19);
  LODWORD(v10) = *&v24[4 * (BYTE2(v19) ^ 0xBA)];
  *(v3 - 172) = BYTE1(v19);
  LODWORD(v7) = v10 ^ *&v25[4 * (BYTE1(v19) ^ 0x9E)] ^ 0xFC6B8435;
  *(v3 - 180) = v19 >> 24;
  LODWORD(v7) = (v7 - ((2 * v7) & 0xCCAD13DC) + 1716947438) ^ *&v28[4 * ((v19 >> 24) ^ 0x86)];
  *(v3 - 168) = v19;
  LODWORD(v10) = v37 ^ *&v30[4 * (v19 ^ 0xEB)];
  *(v3 - 248) = v37;
  v95 = v32 ^ v94 ^ 0xF83672DE;
  v38 = v10 ^ (v7 - ((2 * v7) & 0xC0C0C74C) - 530553946);
  v39 = v38 ^ v95 ^ 0x598844C8;
  LODWORD(v7) = *&v28[4 * (((v39 ^ v19 ^ 0xCD2CB9A0) >> 24) ^ 0x86)] ^ *&v30[4 * ((v38 ^ v95) ^ 0xC8 ^ v19 ^ 0x83)];
  LODWORD(v7) = ((v7 ^ 0x8636EA48) - 2 * ((v7 ^ 0x8636EA48) & 0x6FCF46FF ^ v7 & 0x10) + 1875855087) ^ *&v24[4 * (((v39 ^ v19 ^ 0xCD5DCD68) >> 16) ^ 0xBA)];
  LODWORD(v7) = (v7 - ((2 * v7) & 0x274985B4) - 1817918758) ^ *&v25[4 * (((v39 ^ v19 ^ 0xCD68) >> 8) ^ 0x9E)];
  v40 = v37 ^ v32;
  *(v3 - 240) = v40;
  *(v3 - 128) = v40 ^ 0x7E4FB786;
  LODWORD(v14) = v7 ^ v40 ^ 0x7E4FB786;
  *(v3 - 132) = v14;
  v41 = v14 ^ 0xF39A3E26;
  v42 = v14 ^ 0xF39A3E26 ^ v19;
  LODWORD(v14) = *&v28[4 * ((v42 >> (v38 & 0x18) >> (v38 & 0x18 ^ 0x18)) ^ 0x86)];
  *(v3 - 120) = 0;
  v43 = *&v24[4 * (BYTE2(v42) ^ 0xBA)] ^ v14;
  v44 = ((v43 ^ 0x999CF01) - 2 * ((v43 ^ 0x999CF01) & 0x13A4C2DE ^ v43 & 4) - 1817918758) ^ *&v25[4 * (BYTE1(v42) ^ 0x9E)];
  v45 = v7 ^ v38 ^ *&v30[4 * ((v41 ^ v39 ^ v39 ^ v19 ^ 0x68) ^ 0x83)] ^ (v44 - ((2 * v44) & 0xC0C0C74C) - 530553946);
  v46 = v45 ^ 0x53DB0D92 ^ v41;
  v47 = v46 ^ 0xF73EC34E ^ v39 ^ v19 ^ 0xCD5DCD68 ^ 0xBF7FF0FA;
  LODWORD(v7) = *&v24[4 * (BYTE2(v47) ^ 0xBA)] ^ *&v30[4 * (v46 ^ 0x4E ^ (v39 ^ v19) ^ 0x68 ^ 0x11)] ^ 0x8FAF2549;
  LODWORD(v7) = (v7 - ((2 * v7) & 0xCCAD13DC) + 1716947438) ^ *&v28[4 * (HIBYTE(v47) ^ 0x86)];
  v48 = (v7 - ((2 * v7) & 0x274985B4) - 1817918758) ^ *&v25[4 * (BYTE1(v47) ^ 0x9E)] ^ v45 ^ 0x53DB0D92;
  *(v3 - 152) = v48;
  v49 = v46 ^ 0xF73EC34E ^ v41 ^ v39 ^ 0xCD5DCD68;
  v89 = v48 ^ 0x85DB0D92 ^ v46;
  v91 = v89 ^ 0x484133B4 ^ v49;
  LODWORD(v7) = v91 ^ 0xBDE5CEDC ^ v47;
  v50 = *&v28[4 * (((v7 ^ 0x29A3E26) >> 24) ^ 0x86)] ^ *&v25[4 * (((v7 ^ 0x3E26) >> 8) ^ 0x9E)] ^ 0xF5F24B34;
  v51 = (v50 - ((2 * v50) & 0xDF9E8DDE) + 1875855087) ^ *&v24[4 * (((v7 ^ 0x29A3E26) >> 16) ^ 0xBA)];
  v88 = v51 - ((2 * v51) & 0xC0C0C74C) - 530553946;
  v92 = v48 ^ 0x85DB0D92 ^ *&v30[4 * (v7 ^ 0xCD)];
  *(v3 - 144) = v92 ^ v88;
  v52 = v92 ^ v88 ^ v89 ^ 0x484133B4 ^ 0x19868409;
  v53 = v52 ^ v91 ^ 0xBDE5CEDC ^ 0xC130088F;
  LODWORD(v7) = v53 ^ v7 ^ 0x29A3E26;
  v54 = *&v28[4 * (((v7 ^ 0x7B68C86) >> 24) ^ 0x86)] ^ *&v25[4 * (((v7 ^ 0x8C86) >> 8) ^ 0x9E)] ^ 0xF5F24B34;
  v55 = (v54 - ((2 * v54) & 0xDF9E8DDE) + 1875855087) ^ *&v24[4 * (((v7 ^ 0x7B68C86) >> 16) ^ 0xBA)];
  v90 = ((v92 ^ v88 ^ *&v30[4 * (v7 ^ 0x6D)] ^ (v55 - ((2 * v55) & 0xC0C0C74C) - 530553946) ^ 0x7B68C86 ^ v52) >> 16) ^ BYTE2(v53);
  v56 = *(v3 - 140);
  v57 = *(&off_284082B80 + v56 - 346);
  v58 = *(&off_284082B80 + v56 - 282) - 4;
  v59 = *(&off_284082B80 + (v56 ^ 0x15D)) - 12;
  v60 = *(&off_284082B80 + v56 - 267) - 4;
  v61 = (v97 ^ 0xFD84E219) - 1802260763 + *(v57 + 4 * (v97 ^ 0x89u));
  v62 = (v61 - ((2 * v61) & 0x3AB4C820) + 492463120) ^ *&v60[4 * (v96 ^ 0x93)];
  v98 = v62 - ((2 * v62) & 0xE63E30D8);
  v63 = HIBYTE(*(v3 - 256)) ^ 0xE6;
  v87 = *(v3 - 256) ^ 0x7D;
  *(v3 - 256) = (v90 ^ 0xFD84E238) - 1802260763 + *(v57 + 4 * (v90 ^ 0xA8u));
  v64 = *(v3 - 232) ^ 0x32;
  v65 = (BYTE2(v41) ^ 0xFD84E2B1) - 1802260763 + *(v57 + 4 * (BYTE2(v41) ^ 0x21u));
  v66 = (v65 - ((2 * v65) & 0x3AB4C820) + 492463120) ^ *&v60[4 * (BYTE1(*(v3 - 132)) ^ 0x56)] ^ (-1974868763 * *&v58[4 * (HIBYTE(*(v3 - 132)) ^ 0x6D)] - 966914500);
  *(v3 - 232) = v66 - ((2 * v66) & 0xE63E30D8);
  v67 = *&v58[4 * v63];
  v68 = *&v58[4 * v64];
  v69 = *(v3 - 176);
  *(v3 - 220) = -1974868763 * *&v58[4 * (((v38 ^ v95) >> 24) ^ 0xE)] - 966914500;
  *(v3 - 180) = -1974868763 * v67 - 966914500;
  *(v3 - 172) = *&v60[4 * (BYTE1(v49) ^ 0x50)];
  *(v3 - 164) = *&v60[4 * (((v38 ^ v95) >> 8) ^ 0xD7)];
  *(v3 - 176) = (BYTE2(v69) ^ 0xFD84E264) - 1802260763 + *(v57 + 4 * (BYTE2(v69) ^ 0xF4u));
  LODWORD(v60) = *(v3 - 168) ^ 0xF2;
  v70 = *&v59[4 * (*(v3 - 160) ^ 0xC9)];
  *(v3 - 168) = *&v59[4 * v87];
  *(v3 - 160) = *&v59[4 * (v95 ^ 0x6A)];
  *(v3 - 152) = *&v59[4 * (*(v3 - 124) ^ 0x45)];
  *(v3 - 144) = *&v59[4 * v60];
  v71 = v70 ^ (-1974868763 * v68 - 966914500) ^ 0xADE18B96 ^ (v98 + 1931417708);
  v72 = *(v3 - 140);
  v73 = *(&off_284082B80 + v72 - 442) - 4;
  v74 = *(&off_284082B80 + (v72 ^ 0x1D1));
  v75 = *(&off_284082B80 + v72 - 269) - 8;
  LODWORD(v58) = (((*(v74 + (*(v3 - 111) ^ 0xD5)) + 58) ^ 0xED) << 16) | ((v75[*(v3 - 112) ^ 1] ^ 0xA6) << 24);
  v76 = ((v73[*(v3 - 102) ^ 0x49] ^ 0x28) << 8) & 0xFF00FFFF | (((*(v74 + (*(v3 - 103) ^ 0xB3)) + 58) ^ 0x59) << 16);
  v77 = (((*(v74 + (*(v3 - 99) ^ 0xDLL)) + 58) ^ 0xA9) << 16) | ((v75[*(v3 - 100) ^ 0xCALL] ^ 0x34) << 24);
  v78 = *(v3 - 107) ^ 0x45;
  v79 = ((v73[*(v3 - 106) ^ 0xD5] ^ 0xB) << 8) | ((v75[*(v3 - 108) ^ 0xC2] ^ 0x6C) << 24);
  *(v3 - 240) = v74;
  *(v3 - 232) = v73;
  v80 = v79 & 0xFF00FFFF | (((*(v74 + v78) + 58) ^ 0x16) << 16);
  v81 = *(&off_284082B80 + (v72 ^ 0x1D3)) - 12;
  LODWORD(v78) = v77 & 0xFFFFFF00 | ((v73[*(v3 - 98) ^ 0xC6] ^ 0x75) << 8) | (53 * v81[*(v3 - 97) ^ 0xCBLL] - 22) ^ 0x79;
  v82 = v58 & 0xFFFFFF00 | ((v73[*(v3 - 110) ^ 0xE7] ^ 0x91) << 8) | (53 * v81[*(v3 - 109) ^ 0x8ALL] - 22) ^ 0xC9;
  v83 = v80 & 0xFFFFFF00 | (53 * v81[*(v3 - 105) ^ 0xB9] - 22) ^ 0x3C;
  v84 = *(v3 - 104) ^ 0x8ALL;
  v85 = *(v3 - 101) ^ 6;
  *(v3 - 256) = v81;
  LOBYTE(v85) = (53 * v81[v85] - 22) ^ 0x87;
  *(v3 - 248) = v75;
  v86 = v76 & 0xFFFFFF00 | v85 | ((v75[v84] ^ 0x4B) << 24);
  *(v3 - 136) = v82 ^ 0x37373737;
  *(v3 - 132) = v78 ^ 0x37373737;
  *(v3 - 128) = v83 ^ 0x37373737;
  *(v3 - 140) = v86 ^ 0x37373737;
  *(v3 - 124) = (((*(v3 - 156) ^ 0x3462164A) + 1875684314) ^ ((*(v3 - 156) ^ 0x978F270E) - 870212962) ^ ((*(v3 - 156) ^ 0xD4B22301) - 1893949805)) - 506250567;
  *(v3 - 220) = v71;
  JUMPOUT(0x22D38CB78);
}

uint64_t sub_22D38E5B0(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = *(v5 + a4 + 16);
  v9 = (v6 + a4);
  *(v9 - 1) = *(v5 + a4);
  *v9 = v8;
  return (*(v7 + 8 * (((v4 == a4) * a3) ^ a2)))();
}

uint64_t sub_22D38E6BC()
{
  v6 = 50899313 * ((2 * ((v5 - 144) & 0x33D70970) - (v5 - 144) - 869730673) ^ 0xD8076B14);
  *(v0 + 8) = v4;
  *(v5 - 128) = (v1 - 1596609512 + ((v3 - 476) | 0x212)) ^ v6;
  *(v5 - 144) = (v3 + 1752) ^ v6;
  *(v0 + 24) = v8;
  (*(v2 + 8 * (v3 ^ 0x850)))(v5 - 144);
  result = v11;
  *v10 = v9;
  *(v11 + 8) = -1541908459;
  return result;
}

uint64_t sub_22D38E740@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, unsigned int *a39)
{
  v43 = LODWORD(STACK[0x268])++;
  *v39 = v43 + 1;
  v44 = 2066391179 * ((2 * ((v42 - 192) & 0x7C70B53A84196708) - (v42 - 192) + 0x38F4AC57BE698F0) ^ 0xEEAF2A62D4C11AE8);
  *(v40 + 16) = *a39 ^ v44;
  *(v40 + 40) = v44 + 5119;
  *(v42 - 188) = v44 + a1 + 1212454663;
  *(v42 - 184) = a1 + 1818010110 - v44;
  *(v42 - 168) = ((a1 + 1818010110) ^ 0x31) - v44;
  *(v42 - 164) = -2066391179 * ((2 * ((v42 - 192) & 0x84196708) - (v42 - 192) + 2078710000) ^ 0xD4C11AE8);
  *(v42 - 160) = ((a1 + 1818010110) ^ 0x60) - v44;
  v45 = (*(v41 + 8 * (a1 + 1497)))(v42 - 192);
  return (*(v41 + 8 * *(v42 - 192)))(v45);
}

void sub_22D38E884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  *v38 = v35 + v37 - 2056135540 + (((a30 - v35) | (v35 - a30)) >> 31);
  (*(v36 + 8 * (v35 ^ 0x958)))(a35);
  vld1q_dup_f32(v38);
  JUMPOUT(0x22D38EA40);
}

uint64_t sub_22D38EE5C@<X0>(int a1@<W3>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62)
{
  v69 = *(v68 + 312);
  *(v69 + 392) = v62;
  *(v69 + 396) = STACK[0x370];
  *(v69 + 400) = *(v68 + 432);
  *(v69 + 408) = 548654975 - v65 + a62 + ((v66 + 30) | 0x21) - 293;
  *(v69 + 416) = v63 + (v65 - 242826067);
  v70 = (*(v64 + a2 * a1 + 8))(a45, v69 + 392);
  return (*(v67 + 8 * ((337 * (v70 - 1541908459 - ((2 * v70) & 0x4830B02A) == -1541908459)) ^ v66)))();
}

uint64_t sub_22D38EF2C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, _DWORD **a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  v63 = *a29;
  if ((*a29 & 3) != ((a1 - 1118381654) ^ 0x5ABLL) || (v64 = *(&off_284082B80 + (a1 ^ 0x42A92C1C)), *v64))
  {
    JUMPOUT(0x22D362284);
  }

  v65 = (((a1 - 1118381654) ^ 0x506) + 1804345002) & 0x9473E5FB;
  *v64 = v63;
  **(&off_284082B80 + ((a1 - 1118381654) ^ 0x5BB)) = 255;
  *v63 |= ~v63[*v63 & (v65 ^ 0x56D)] << 16;
  v63[4] |= ~v63[v63[4] & 0x3ELL] << 16;
  v63[8] |= ~v63[v63[8] & 0x3ELL] << 16;
  v63[12] |= ~v63[v63[12] & 0x3ELL] << 16;
  v63[16] |= ~v63[v63[16] & 0x3ELL] << 16;
  v63[20] |= ~v63[v63[20] & 0x3ELL] << 16;
  v63[24] |= ~v63[v63[24] & 0x3ELL] << 16;
  v63[28] |= ~v63[v63[28] & 0x3ELL] << 16;
  v63[32] |= ~v63[v63[32] & 0x3ELL] << 16;
  v63[36] |= ~v63[v63[36] & 0x3ELL] << 16;
  v63[40] |= ~v63[v63[40] & 0x3ELL] << 16;
  v63[44] |= ~v63[v63[44] & 0x3ELL] << 16;
  v63[48] |= ~v63[v63[48] & 0x3ELL] << 16;
  v63[52] |= ~v63[v63[52] & 0x3ELL] << 16;
  v63[56] |= ~v63[v63[56] & 0x3ELL] << 16;
  v63[60] |= ~v63[v63[60] & 0x3ELL] << 16;
  v66 = (*(v62 + 8 * ((a1 - 1118381654) ^ 0xC1E)))(&a62, 0, 1024);
  return (*(a40 + 8 * ((v65 + 122514476) & 0xF8B28EED ^ (v65 - 36188) & 0xFA8EAB7C ^ 0xFA8E2EC0 ^ v65)))(v66);
}

uint64_t sub_22D38F34C()
{
  v5 = *(*(v4 + 24) + v0) - *(v3 + v0);
  v6 = (v5 ^ 0xDD8FF8FD) - 218562665 + ((v5 << ((v1 + 79) ^ 0x2B)) & 0xBB1FF1FA);
  v8 = v0 != 15 && v6 == -796329836;
  return (*(v2 + 8 * ((v8 | (32 * v8)) ^ v1)))();
}

uint64_t sub_22D38F5A4@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  v7 = *result;
  v8 = *(result + 32);
  v9 = *(result + 16);
  *a2 = v4;
  *v9 = v3;
  *v8 = v5;
  *v7 = v2 + v6;
  *(result + 8) = -1541908459;
  return result;
}

uint64_t sub_22D38F5DC@<X0>(int a1@<W8>, uint64_t a2, char a3, int a4, int a5, char a6, char *a7, int a8, unsigned int a9, char *a10, uint64_t a11)
{
  v14 = a1 + 1167;
  v15 = 742307843 * ((2 * (&a7 & 0x48EBB5E0) - &a7 + 924076572) ^ 0x2936C749);
  a7 = &a3;
  a8 = v15 + v14 - 1367;
  a9 = v15 + 1514954494;
  a10 = &a6;
  a11 = v12;
  v16 = (*(v13 + 8 * (v14 + 584)))(&a7);
  return (*(v13 + 8 * ((3637 * (*(v12 + 24) == (v14 ^ 0x534) + v11 - 569)) ^ v14)))(v16);
}

void sub_22D38F6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *v71 = STACK[0x21C];
  v71[85] = STACK[0x404];
  v71[86] = STACK[0x400];
  v71[87] = STACK[0x3CC];
  v71[88] = a71;
  JUMPOUT(0x22D394584);
}

uint64_t sub_22D38F704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, int a16, int a17, char a18, __int16 a19, char a20, char *a21, int a22, unsigned int a23, char *a24, int a25, char *a26, int *a27, uint64_t a28)
{
  a17 = 242826067;
  v30 = *(a2 + 8);
  v31 = 1082434553 * (((&a21 | 0x2BA97793) + (~&a21 | 0xD456886C)) ^ 0xB0EE8118);
  a23 = v31 + *(a2 + 4) + 271006981;
  a24 = &a18;
  a21 = &a14;
  a28 = v30;
  a25 = v31 + v28 + 990;
  a26 = &a20;
  a27 = &a17;
  v33 = (*(v29 + 8 * (v28 + 2264)))(&a21);
  return (*(v29 + 8 * (((a22 == -1541908459) * ((v28 + 330) ^ 0x57A)) ^ v28)))(v33, a2);
}

uint64_t sub_22D38F8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, int a15, unsigned int a16, unsigned int a17)
{
  if (a17 < a16 != a13 + 1489294049 < (((a8 + a7 + 988) | 0x248) ^ ((a7 ^ (a7 - 934)) + 1489293038)))
  {
    v18 = a13 + 1489294049 < (((a8 + a7 + 988) | 0x248) ^ ((a7 ^ (a7 - 934)) + 1489293038));
  }

  else
  {
    v18 = a13 + 1489294049 > a17;
  }

  return (*(v17 + 8 * ((2 * !v18) | (32 * !v18) | (a8 + a7 + 1484))))();
}

uint64_t sub_22D38F8C0()
{
  LODWORD(STACK[0x204]) = v0;
  *v1 -= 432;
  return (STACK[0x210])();
}

void sub_22D38F8FC(uint64_t a1)
{
  v2 = *(v1 + 8);
  *a1 = 0;
  *(a1 + 8) = 0x6EC4F9AD6EC4F9ADLL;
  *(a1 + 16) = 0x197068D11D1C5C20;
  *(a1 + 24) = -1541908459;
  *v2 = a1;
  JUMPOUT(0x22D3541B0);
}

uint64_t sub_22D38F938(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v14 = 2066391179 * ((2 * ((v13 - 120) & 0xC564610) - (v13 - 120) + 1940503019) ^ 0xDC8E3BF3);
  *(v13 - 120) = a2 - v14 + 634;
  *(v13 - 116) = a12 - v14 + (a2 ^ 0xE620B5DE);
  *(v13 - 112) = v13 - 220;
  v15 = (*(v12 + 8 * (a2 + 2344)))(v13 - 120);
  v16 = *(v13 - 152);
  *(v13 - 220 + (v16 & 0x3F)) = 48;
  return (*(v12 + 8 * ((145 * ((v16 & 0x3Fu) > 0x37)) ^ a2)))(v15);
}

uint64_t sub_22D38FC1C@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, unsigned int a32)
{
  v37 = *(&a20 + a1 + 72);
  v38 = ((2 * a1) & 0xEFDEDFF0) + ((v33 - 754) ^ a1 ^ 0xF7EF6FF7) + v32;
  *(v35 + v38) = v37 ^ 0x9D;
  *(v35 + v38 + 1) = (BYTE1(v37) ^ 0xCA) - ((v37 >> 7) & 0x60) - 80;
  *(v35 + v38 + 2) = (BYTE2(v37) ^ 0x47) - ((v37 >> 15) & 0x60) - 80;
  *(v35 + v38 + 3) = (HIBYTE(v37) ^ 0x88) - ((v37 >> 23) & 0x60) - 80;
  return (*(v36 + 8 * (((a1 + 4 < a32) * v34) ^ v33)))();
}

uint64_t sub_22D38FD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int32x4_t a19, int32x4_t a20)
{
  a19 = vdupq_n_s32(0xC597CFE4);
  a20 = a19;
  v21 = ((a6 - 227) | 0x10u) - 1672;
  v22 = *(v20 + 8 * ((69 * (v21 == (a3 & 0xFFFFFFF8))) | (a6 - 1371)));
  return v22(a1, &a19, a3, v21, 69, v22, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_22D38FD84@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, unint64_t a51, uint64_t a52, char a53)
{
  v60 = (((~v53 & 0x2E0F51EE) - (~v53 | 0x2E0F51EF)) ^ 0xA3A23303) * v58;
  v56[4] = 0;
  *v56 = &STACK[0x3E0];
  v56[1] = &a53;
  *(v59 - 176) = v60 + v55 - 403;
  *(v59 - 172) = a1 + v60;
  (*(v57 + 8 * (v55 ^ 0xA64)))(v59 - 192);
  v61 = *(v59 - 168);
  STACK[0x278] = a51;
  return (*(v57 + 8 * (((v61 == v54) * ((v55 ^ 0x9F) + 135)) ^ v55)))(4267048735, a34, 1648703026, 176);
}

uint64_t sub_22D38FFF4@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  *(v2 + 24) = a2;
  *(result + 8) = 1541866272;
  return result;
}

uint64_t sub_22D3901D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  if (v6 <= a3 + a6 - 880 - 1197)
  {
    v6 = a3 + a6 - 880 - 1197;
  }

  return (*(v7 + 8 * (((v6 > 0x7FFFFFFE) * (((a6 - 2037) | 0x485) ^ 0x49D)) ^ a6)))();
}

uint64_t sub_22D39021C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, unsigned int a20)
{
  v25 = ((((2 * &a16) | 0x666573E0) - &a16 - 858962416) ^ 0x6F7FED75) * v20;
  a16 = a12;
  HIDWORD(a17) = 893672457 * v23 - v25 + 160639446;
  LODWORD(a18) = v25 ^ 0xC5;
  (*(v24 + 19152))(&a16);
  v26 = 1037613739 * (&a16 ^ 0xD1022D7F);
  a19 = v26 ^ 0x3A5;
  a20 = ((2 * v22) & 0xFBF6FFCA) + (v22 ^ 0x7DFB7FE5) - 677996704 + v26;
  a17 = a12;
  a18 = v21;
  v27 = (*(v24 + 18912))(&a16);
  return (*(v24 + 8 * ((154 * (a16 == -1541908459)) ^ 0x368u)))(v27);
}

uint64_t sub_22D390344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, unsigned int a11, uint64_t a12)
{
  v15 = *(v13 - 156);
  if (v15 == 2)
  {
    return (*(v12 + 8 * ((70 * (*(v13 - 160) == ((a5 - 2086906012) & 0xACB4773F ^ 0x43F))) ^ (v14 + a5 + 1086))))(a12, a2, 904558483, a11);
  }

  if (v15 != 1)
  {
    JUMPOUT(0x22D39045CLL);
  }

  return (*(v12 + 8 * ((61 * (*(v13 - 160) == 0)) ^ (v14 + a5 + 791))))(a12, a2, 904558483, a11);
}

void sub_22D3904D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v25 = 1564307779 * ((v24 + 1764438440 - 2 * ((v24 - 144) & 0x692B3238)) ^ 0xFE26FE2B);
  *(v22 + 8) = v23;
  *(v22 + 16) = &a19;
  *(v24 - 144) = v20 + v25 - 1599658729 + ((v19 - 1481) | 0x87C);
  *(v24 - 116) = v25 + v19 - 1390;
  (*(v21 + 8 * (v19 + 974)))(v24 - 144);
  JUMPOUT(0x22D3603E4);
}

uint64_t sub_22D390560(uint64_t a1)
{
  v9 = v2 + 8;
  v10 = (((v5 - 299) - 670) ^ v9) + v1;
  *(v4 + v10) = vadd_s8(vsub_s8(*(v3 + v10), vand_s8(vadd_s8(*(v3 + v10), *(v3 + v10)), v7)), v8);
  return (*(v6 + 8 * ((3071 * (a1 == v9)) ^ v5)))();
}

uint64_t sub_22D390680(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned int *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v44 = *a5;
  v45 = ((v43 - 152 + v41 - 2 * ((v43 - 152) & v41)) ^ 0xA80D89B317AFF9F2) * v42;
  *(v43 - 112) = v45 + v40 - 1939396564;
  STACK[0x5C0] = v44 + v45;
  *(v43 - 140) = (v40 + 961082992) ^ v45;
  *(v43 - 136) = v45;
  *(v43 - 144) = ((v40 + 961082973) ^ 0x55) + v45;
  *(v43 - 152) = v40 + 961082973 - v45;
  STACK[0x5C8] = v45;
  v46 = (*(a3 + 8 * (v40 ^ (a4 + 1905))))(v43 - 152);
  return (*(a40 + 8 * *(v43 - 148)))(v46);
}

uint64_t sub_22D39088C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, _DWORD *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned int a18, int a19)
{
  *a6 = 0;
  *a7 = 0;
  a18 = (843532609 * (((&a18 | 0x76FE23B2) - &a18 + (&a18 & 0x8901DC48)) ^ 0x2AB37737)) ^ 0xDFABAF92;
  v21 = (*(v20 + 18752))(&a18);
  return (*(v20 + 8 * ((1391 * (a19 == ((v19 + 1071) ^ 0x451))) ^ 0x3FDu)))(v21);
}

void sub_22D3909BC(uint64_t a1)
{
  v1 = *a1 + 1037613739 * (((a1 | 0x69823FE3) - (a1 & 0x69823FE3)) ^ 0xB880129C);
  v2 = *(&off_284082B80 + v1 - 1045) - 8;
  v3 = *(a1 + 8);
  (*&v2[8 * v1 + 10496])(*(&off_284082B80 + (v1 ^ 0x463)) - 4, sub_22D368468);
  __asm { BRAA            X9, X17 }
}

void sub_22D390A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  *(v34 - 144) = v32 - ((((v34 - 144) | 0xE672A7C) - ((v34 - 144) & 0xE672A7C)) ^ 0x1DBBC65C) * v33 + 984;
  *(v34 - 112) = &a30;
  *(v34 - 104) = &a22;
  *(v34 - 136) = v30;
  *(v34 - 128) = v31;
  *(v34 - 120) = &a22;
  JUMPOUT(0x22D371508);
}

void sub_22D390B08()
{
  v0 = MEMORY[0x28223BE20]();
  v1 = *(v0 + 8) ^ (1082434553 * (v0 ^ 0x9B47F68A));
  __asm { BRAA            X11, X17 }
}

uint64_t sub_22D390C30()
{
  v4 = 10 * (v0 ^ 0x489);
  LODWORD(v10) = (v0 + 1178) ^ (50899313 * ((1493888440 - (&v10 | 0x590AEDB8) + (&v10 | 0xA6F51247)) ^ 0xB2DA8FDC));
  v12 = &v7;
  v11 = v9;
  (*(v3 + 8 * (v0 ^ 0xD4A)))(&v10);
  v10 = v9;
  HIDWORD(v11) = (v0 + 1198) ^ (((&v10 + 560621266 - 2 * (&v10 & 0x216A66D2)) ^ 0xACC7043E) * v1);
  (*(v3 + 8 * (v0 + 1361)))(&v10);
  if (v11 == v2 + v4 - 1720)
  {
    v5 = v7;
  }

  else
  {
    v5 = v11;
  }

  LODWORD(v10) = v0 - (&v10 ^ 0x8DAD62EC) * v1 - 820;
  v11 = v9;
  (*(v3 + 8 * (v0 + 1350)))(&v10);
  v11 = v8;
  LODWORD(v10) = v4 - (((&v10 | 0x7609A39F) - &v10 + (&v10 & 0x89F65C60)) ^ 0xFBA4C173) * v1 - 1479;
  (*(v3 + 8 * (v4 + 691)))(&v10);
  return v5 ^ v2;
}

void sub_22D390DF0()
{
  if (v0 == 1388974777)
  {
    v2 = -1541908459;
  }

  else
  {
    v2 = 1541866445;
  }

  *(v1 + 8) = v2;
}

uint64_t sub_22D390F18@<X0>(int a1@<W8>, __int16 a2, char a3, char a4, char a5, __int16 a6, char a7, uint64_t a8, int a9, char *a10, char *a11, char *a12, char a13, unsigned int a14, int a15)
{
  v18 = *(v15 + 32);
  v19 = 742307843 * ((~&a8 & 0x153BFB65 | &a8 & 0xEAC4049A) ^ 0xB197630);
  a11 = &a7;
  a12 = &a4;
  a8 = v18;
  a10 = &a5;
  a13 = v19 ^ 0x3C;
  a14 = (((a1 ^ 0xDF84FAFE) + 544933122) ^ ((a1 ^ 0x21DDF8AB) - 568195243) ^ (((((v17 - 207) | 0x40) + 1414204332) ^ a1) - 1414204576)) - v19 - 747721401;
  a15 = v17 - v19 - 473374051;
  v20 = (*(v16 + 8 * (v17 ^ 0x8D7)))(&a8);
  return (*(v16 + 8 * ((2184 * (a9 == -1541908459)) ^ v17)))(v20);
}

void sub_22D391124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v73 - 192) = -1197043315 - 50899313 * ((((v73 - 192) ^ 0x26954753) & 0x5743CAA9 | ~((v73 - 192) ^ 0x26954753 | 0x5743CAA9)) ^ 0x9A06EF9E) + v71 + 788;
  (*(v72 + 8 * (v71 + 2232)))(v73 - 192);
  v74 = v73 - 192;
  *(v74 + 28) = (-77 * ((((v73 + 64) | 0x9C) - (v73 + 64) + ((v73 + 64) & 0x60)) ^ 0xBC)) ^ 0x26;
  *(v73 - 168) = (v71 + 584) ^ (1785193651 * ((((v73 - 192) | 0xBE079D9C) - (v73 - 192) + ((v73 - 192) & 0x41F86260)) ^ 0xADDB71BC));
  *(v74 + 16) = &a71;
  *v74 = &STACK[0x2F4];
  (*(v72 + 8 * (v71 ^ 0x9EF)))(v73 - 192);
  JUMPOUT(0x22D372C5CLL);
}

uint64_t sub_22D391260@<X0>(uint64_t a1@<X8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(v3 + v7) - ((*(v3 + v7) << v5) & 0x60) - 80;
  return (*(v1 + 8 * (((v7 != 0) * v6) ^ v2)))(0);
}

uint64_t sub_22D39129C@<X0>(int a1@<W8>, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = (*(v3 + 8 * (v4 ^ 0xFF4)))(**(v2 + 8 * (v4 - 1571)), va, ((((((v4 - 746902284) & 0x2C84CFFB ^ 0xE55F0C68) + a1) & 0xFFFFF000 ^ 0x6CFE074C) + 377929448) ^ (v4 - 1149169423 + ((((v4 - 746902284) & 0x2C84CFFB ^ 0xE55F0C68) + a1) & 0xFFFFF000 ^ 0xC1F9AED8)) ^ (((((v4 - 746902284) & 0x2C84CFFB ^ 0xE55F0C68) + a1) & 0xFFFFF000 ^ 0xAD07A994) - 679538624)) - 2054732204, 1) == 0;
  return (*(v3 + 8 * ((8 * v5) | (16 * v5) | v4)))();
}

uint64_t sub_22D391548@<X0>(uint64_t a1@<X8>)
{
  v8 = (*(*(v5 + 8) + 4 * v2) ^ v4) + v1;
  *(*(a1 + 8) + 4 * v2) = (v8 - ((2 * v8) & 0x30BC3168) - 1738663756) ^ 0x5DC9D750;
  return (*(v6 + 8 * ((201 * (v7 > (v2 + ((v3 + 760) | 0x144) - 1491))) ^ (v3 + 375))))(1573508944, 242943714);
}

uint64_t sub_22D3915E0@<X0>(char a1@<W8>)
{
  v9 = v3 + 2;
  v10 = (v4 - 2);
  *v10 = (v9 ^ v6 ^ a1) * (v9 + 17);
  *(v10 - 1) = (v9 ^ 0xBB) * (v9 + 18);
  return (*(v8 + 8 * (((v5 != 2) * v7) ^ v2)))();
}

uint64_t sub_22D391AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, int a18)
{
  a18 = v18 - 1456065991;
  *(v21 - 128) = &a15;
  *(v21 - 112) = a14;
  *(v21 - 120) = v20 + 1388665877 * ((v21 - 1846076116 - 2 * ((v21 - 128) & 0x91F71DAC)) ^ 0x1C5A7F40) - 126;
  (*(v19 + 8 * (v20 ^ 0xB9A)))(v21 - 128);
  *(v21 - 128) = v20 - 210068311 * ((2 * ((v21 - 128) & 0x6D051698) - (v21 - 128) - 1829050010) ^ 0x2CD6C2) + 1510;
  *(v21 - 120) = &a17;
  *(v21 - 112) = a14;
  v22 = (*(v19 + 8 * (v20 ^ 0xB9F)))(v21 - 128);
  return (*(v19 + 8 * (((*(v21 - 104) > 0x32CF6B79u) * (v20 - 403 + ((v20 + 488) | 0x113) - 1340)) ^ v20)))(v22);
}

void sub_22D391D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v19 = 1037613739 * (((((v18 - 136) | 0x37938064) ^ 0xFFFFFFFE) - (~(v18 - 136) | 0xC86C7F9B)) ^ 0x196E52E4);
  *(v18 - 128) = &a15;
  *(v18 - 136) = ((((v17 ^ 0x523) + 1073142560) ^ v16) + ((2 * v16) & 0x7FEDB99E) - 318799881) ^ v19;
  *(v18 - 132) = (v17 + 8) ^ v19;
  (*(v15 + 8 * (v17 ^ 0xD1F)))(v18 - 136);
  JUMPOUT(0x22D391DA8);
}

uint64_t sub_22D391E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  *(v16 - 136) = &a12;
  *(v16 - 128) = v15 + 1388665877 * ((-422167972 - ((v16 - 136) | 0xE6D63A5C) + ((v16 - 136) | 0x1929C5A3)) ^ 0x9484A74F) - 189;
  *(v16 - 120) = a11;
  (*(v13 + 8 * (v15 ^ 0xBDD)))(v16 - 136);
  *(v16 - 128) = v12;
  *(v16 - 120) = a11;
  *(v16 - 136) = v15 - 210068311 * ((v16 - 136) ^ 0x92D63FA4) + 1447;
  v17 = (*(v13 + 8 * (v15 ^ 0xBD8)))(v16 - 136);
  return (*(v13 + 8 * ((1617 * (((v15 - 90) | 0x20) + (v14 ^ 0xCD309725) + *(v16 - 112) < 0xD002F9C6)) ^ v15)))(v17);
}

uint64_t sub_22D391F74@<X0>(uint64_t a1@<X0>, int a2@<W3>, int a3@<W4>, int a4@<W7>, unsigned int a5@<W8>)
{
  v12 = (v10 + 4 * v6);
  v13 = v6 + 1;
  v14 = *(v10 + 4 * v13);
  v15 = v12[397] ^ ((v14 & 0x7FFFFFFE | (((a5 + a4) | v8) + v7) & v5) >> 1);
  *v12 = (v15 + a3 - (a2 & (2 * v15))) ^ *(v9 + 4 * (v14 & 1));
  return (*(a1 + 8 * (((v13 == 227) * v11) ^ a5)))();
}

uint64_t sub_22D391FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, int a12, char *a13, unsigned int a14)
{
  a14 = 2066391179 * ((-25905515 - (&a12 | 0xFE74B695) + (&a12 | 0x18B496A)) ^ 0xAEACCB72) + 1020;
  a13 = &a10;
  v17 = (*(v15 + 19160))(&a12);
  return (*(v15 + 8 * (((a12 == ((v14 + 2007) ^ 0x7F9)) << 8) | ((a12 == ((v14 + 2007) ^ 0x7F9)) << 10) | v16)))(v17);
}

uint64_t sub_22D392084@<X0>(int a1@<W8>)
{
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  *(v3 - 220) = 0xB0B0B0B0B0B0B0B0;
  *(v3 - 212) = 0xB0B0B0B0B0B0B0B0;
  v6 = 1037613739 * ((((v3 - 184) | 0x92970571) + (~(v3 - 184) | 0x6D68FA8E)) ^ 0x4395280F);
  v7 = (v3 - 184);
  v7[2] = v5;
  v7[3] = v3 - 204;
  v7[5] = v4;
  *(v3 - 184) = v6 + 1730630772;
  *(v3 - 152) = (a1 + 1641) ^ v6;
  v7[1] = v3 - 220;
  result = (*(v2 + 8 * (a1 + 2428)))(v3 - 184);
  *v1 = *(v3 - 148);
  return result;
}

void sub_22D3921AC(uint64_t a1)
{
  v1 = *(a1 + 32) + 1785193651 * ((2 * (a1 & 0x3B308A28) - a1 + 1154446807) ^ 0x571399F7);
  __asm { BRAA            X9, X17 }
}

void sub_22D392270(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  **(a1 + 16) = v3;
  *(a2 + 16) = v2;
  JUMPOUT(0x22D3950C0);
}

uint64_t sub_22D392280@<X0>(uint64_t a1@<X8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(v3 + v7) - (v5 & (2 * *(v3 + v7))) - 80;
  return (*(v1 + 8 * (((v7 == 0) * v6) ^ v2)))(0);
}

uint64_t sub_22D39230C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _DWORD *a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, unint64_t a19)
{
  v26 = 76 * ((v20 + 118) & 0xFB ^ 0xA7);
  *a13 = a1;
  LODWORD(STACK[0x22C]) = a17;
  STACK[0x230] = a19;
  LODWORD(STACK[0x238]) = a18 - v21 + 548654975;
  STACK[0x240] = v25 + (v21 - 242826067);
  v27 = v20;
  v28 = (*(v23 + v24 * v19 + 8))(a7);
  return (*(v22 + 8 * ((1589 * (v28 - 1541908459 - ((v28 << (v26 ^ 0x51)) & 0x4830B02A) == -1541908459)) ^ v27)))();
}

uint64_t sub_22D392410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, unsigned int a19, int a20, char *a21)
{
  v25 = ((1760142784 - (&a16 | 0x68E9A5C0) + (&a16 | 0x97165A3F)) ^ 0x46147740) * v23;
  a19 = v25 - 43688278;
  a16 = a15;
  a21 = &a13;
  a17 = v25 ^ 0x26A638E2;
  a18 = (v22 - 2013068157) ^ v25;
  v26 = (*(v24 + 8 * (v22 ^ 0xFDBu)))(&a16);
  return (*(v24 + 8 * (((a20 == ((v22 - 587748114) & 0x23084FE7 ^ (v21 + 797))) * (((v22 - 1549) | 0x102) ^ 0x17B)) ^ v22)))(v26);
}

uint64_t sub_22D392504@<X0>(int a1@<W8>)
{
  v2 = a1 & 0xABC77DFD;
  v3 = (*(v1 + 8 * ((a1 & 0xABC77DFD) + 1092)))(32, 0x101004023FF3BD5) == 0;
  return (*(v1 + 8 * ((v3 * (((v2 - 1180) | 0x466) - 1164)) ^ v2)))();
}

uint64_t sub_22D392564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11, unsigned int a12)
{
  v15 = a12 < a11;
  if (v15 == v12 > 0x2C917808)
  {
    v15 = v13 - 479 + v12 - 747730977 < a12;
  }

  return (*(v14 + 8 * ((14 * v15) ^ v13)))();
}

uint64_t sub_22D392608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, int a10, uint64_t a11, int a12)
{
  v17 = *(a1 + 28) + v15 + *(v12 + 16);
  v18 = 2066391179 * ((2 * (&a9 & 0x64406200) - &a9 - 1681940995) ^ 0x34981FE5);
  a12 = v16 - v18 + 140;
  a11 = v12;
  a9 = v18 + 89529822;
  a10 = (v17 - 1155951009) ^ v18;
  v19 = (*(v14 + 8 * (v16 ^ 0x8AB)))(&a9);
  return (*(v14 + 8 * (((*(v12 + 24) == v13) * ((v16 + 124) ^ 0x574)) ^ v16)))(v19);
}

uint64_t sub_22D3926CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  (*(v23 + 8 * SHIDWORD(a10)))(a11 + a12, 0x100004077774924);
  v24 = (*(v23 + 8 * a10))();
  *v22 = v24;
  v25 = 1812433253 * (v24 ^ (v24 >> 30)) + 1;
  v22[1] = v25;
  return (*(v23 + 8 * (((((v21 - 276) | 0x422) - 789) | 0x21A) ^ 0x373 ^ ((v21 - 276) | 0x422))))(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, v20, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_22D39279C@<X0>(int a1@<W8>)
{
  v7 = v5 + v4;
  v8 = (v4 - 1) & 0xF;
  v9 = v8 - v4 + v1 + 1;
  v10 = v1 + (((a1 + 224) | 0xA0u) ^ 0x2A1) + v8;
  v11 = v8 + v2 + 4;
  v12 = v3 + (((a1 + 128) | 0x48u) ^ 0x1EELL) + v8 - v4;
  v13 = v8 + v3 + 6;
  v15 = v11 > v5 && v11 - v4 < v7;
  if (v9 < v7 && v10 > v5)
  {
    v15 = 1;
  }

  if (v13 > v5 && v12 < v7)
  {
    v15 = 1;
  }

  return (*(v6 + 8 * ((2 * v15) | (8 * v15) | a1)))(v4);
}

uint64_t sub_22D392844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t (*a13)(char *, uint64_t), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, int a26, int a27, char a28, __int16 a29, char a30)
{
  a30 = a25;
  v33 = 2066391179 * ((v32 + 132505928 - 2 * ((v32 - 184) & 0x7E5E200)) ^ 0xA8C26018);
  *(v32 - 184) = (v30 ^ 0x185) - v33 + 690;
  *(v32 - 180) = 114591006 - v33;
  *(v32 - 176) = a1;
  (*(v31 + 8 * (v30 ^ 0x185 | 0x960)))(v32 - 184);
  return a13(&a28, 179);
}

void sub_22D392858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18)
{
  v21 = 50899313 * ((((v20 - 144) | 0x4C60F2A1) - ((v20 - 144) & 0x4C60F2A1)) ^ 0x584F6F3A);
  *(v20 - 144) = (v18 + 1675) ^ v21;
  *(v20 - 120) = a10;
  *(v20 - 136) = v19;
  *(v20 - 128) = (a18 - 492023472 + ((v18 - 488) | 0x48C)) ^ v21;
  JUMPOUT(0x22D353E40);
}

uint64_t sub_22D392C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v18 - 120) = a14;
  *(v18 - 128) = v17 + 1388665877 * ((((v18 - 136) | 0x9700A94B) + (~(v18 - 136) | 0x68FF56B4)) ^ 0x1AADCBA6) - 17;
  *(v18 - 136) = &a15;
  (*(v16 + 8 * (v17 + 2007)))(v18 - 136);
  v19 = 1037613739 * ((((v18 - 136) | 0xD76682E7) + (~(v18 - 136) | 0x28997D18)) ^ 0x664AF99);
  *(v18 - 128) = v15;
  *(v18 - 136) = v19 ^ 0x2CF65CC7;
  *(v18 - 132) = (v17 + 741) ^ v19;
  (*(v16 + 8 * (v17 ^ 0x83C)))(v18 - 136);
  *(v18 - 136) = v17 - 210068311 * ((((v18 - 136) | 0x90D4522A) - ((v18 - 136) & 0x90D4522A)) ^ 0x2026D8E) + 1619;
  *(v18 - 128) = v15;
  *(v18 - 120) = a14;
  v20 = (*(v16 + 8 * (v17 + 2004)))(v18 - 136);
  return (*(v16 + 8 * ((111 * (((v17 + 1787794373) & 0x95706BEF) + *(v18 - 112) - 852454622 >= 0xE191CF5E)) ^ v17)))(v20);
}

uint64_t sub_22D392E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  v66 = ((v65 - 192) ^ 0x8DAD62EC) * v63;
  v67 = (v65 - 192);
  v67[4] = 0;
  v67[1] = &STACK[0x3C4];
  *v67 = &a62;
  *(v65 - 176) = v66 + v62 + 290;
  *(v65 - 172) = v66 - 1424879884;
  v68 = (*(v64 + 8 * (v62 ^ 0x913)))(v65 - 192);
  return (*(v64 + 8 * ((168 * (*(v65 - 168) != v62 - 1541908556)) ^ v62)))(v68);
}

uint64_t sub_22D392FF8@<X0>(uint64_t a1@<X8>)
{
  v6 = (v2 ^ 0xFFFFFFFFFFFFFD04 ^ (v3 + 18)) + v1;
  *(v4 - 7 + v6) = *(a1 - 7 + v6);
  return (*(v5 + 8 * ((1959 * ((v1 & 0xFFFFFFF8) - 8 == v2)) ^ v3)))();
}

void sub_22D3941C0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = (*a1 - 24437 * ((((2 * a1) | 0x53B4) - a1 - 10714) ^ 0xABC2)) == 6574;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v1 = *(a1 + 16) ^ (2066391179 * ((((2 * a1) | 0x4BD253B4) - a1 + 1511446054) ^ 0xACEABC2));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_22D394400@<X0>(int a1@<W8>)
{
  v6 = v1 ^ 0x1898;
  v7 = 352135382 - v4;
  if (v5 > 352135382 - v4)
  {
    v7 = v5;
  }

  v8 = v7;
  v9 = a1 + v6 + v7 - 153;
  v10 = (v6 + 1712);
  v11 = 4 * (v8 + v10) - 7460;
  *(*(v2 + 8) + 4 * v9) = *(*(v2 + 8) + v11);
  return (*(v3 + 8 * ((44 * (v8 < 2)) ^ v6)))((v9 + v6 - 153), v11 + 4 * v10 - 7460, v8 + v10 - 1865);
}

uint64_t sub_22D3945CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 120) = v17 + 1037613739 * (((~(v19 - 136) & 0xC37049FA) - (~(v19 - 136) | 0xC37049FB)) ^ 0x12726484) + 1555;
  *(v19 - 136) = &a15;
  *(v19 - 128) = v15;
  v20 = (*(v16 + 8 * (v17 ^ 0xA43)))(v19 - 136);
  return (*(v16 + 8 * (((v18 == (v17 ^ 0x2A6) - 387) * (3 * (v17 ^ 0x2A6) - 1047)) ^ v17)))(v20);
}

uint64_t sub_22D394684@<X0>(int a1@<W0>, uint64_t a2@<X6>, unsigned int a3@<W8>)
{
  v15 = (v14 + 4 * v7);
  v16 = HIDWORD(v11) + v9 * (*(v6 + 4 * v7) ^ a3) + (*v15 ^ a3) + HIDWORD(a2) + v5 * (*(v12 + 4 * v7) ^ a3);
  *(v15 - 1) = v16 + a3 - ((v16 << ((v13 ^ v8) - 108)) & a1);
  return (*(v10 + 8 * (((v7 + 1 == v4) * v3) ^ v13)))();
}

void sub_22D3948BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, int a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  *(a56 + 360) = v64;
  v69 = (*(v66 + 8 * (v63 + 1432)))(a1, 2, &STACK[0x430], v65, (v67 - 904558483), a6, &STACK[0x250], &a63);
  if (v69 != 268435459)
  {
    if (!v69)
    {
      JUMPOUT(0x22D37DDFCLL);
    }

    v70 = 1388665877 * ((((v68 - 192) | 0xEB469169) + (~(v68 - 192) | 0x14B96E96)) ^ 0x66EBF384);
    *(v68 - 192) = &STACK[0x334];
    *(v68 - 184) = a59 - v70 - 36;
    *(v68 - 180) = -1541908459 - v70 + v69 - ((2 * v69) & 0x4830B02A);
    (*(v66 + 8 * (a59 ^ 0xAEE)))(v68 - 192);
    JUMPOUT(0x22D394584);
  }

  LODWORD(STACK[0x334]) = 1541866285;
  JUMPOUT(0x22D37E7F0);
}

uint64_t sub_22D394AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  *(v21 - 128) = &a17;
  *(v21 - 120) = &a15;
  *(v21 - 112) = v17 + ((48514740 - ((v21 - 128) | 0x2E446B4) + ((v21 - 128) | 0xFD1BB94B)) ^ 0x2C199434) * v18 + 1999;
  v22 = (*(v19 + 8 * (v17 ^ 0x807)))(v21 - 128);
  return (*(v19 + 8 * ((247 * (v20 == ((((v17 - 102) | 0x18) - 54) ^ 0xE3))) ^ v17)))(v22);
}

void sub_22D394B88(int a1@<W8>)
{
  v5 = *v2;
  v6 = *(v2 + 4) + a1;
  *(*v2 + v6) = (HIBYTE(v1) ^ 0xDF) - ((2 * (HIBYTE(v1) ^ 0xDF)) & 0x60) - 80;
  *(v5 + v6 + 1) = (BYTE2(v1) ^ 0x6B) - ((2 * (BYTE2(v1) ^ 0x6B)) & 0x60) - 80;
  *(v5 + v6 + 2) = (BYTE1(v1) ^ 0xD3) - ((2 * (BYTE1(v1) ^ 0xD3)) & 0x60) - 80;
  *(v5 + v6 + 3) = v1 ^ 0x94;
  v7 = *v2;
  LODWORD(v5) = ((v4 ^ 0xF11317C7) + 1283974742) ^ v4 ^ ((v4 ^ 0xB1A47FB9) + 204508716) ^ ((v4 ^ 0x5D21196C) - 524949249) ^ ((v4 ^ 0x5FFD7F7F) - 496398610);
  v8 = ((2 * (a1 + *(v2 + 4) + 4)) & 0xFADF7D6E) + ((a1 + *(v2 + 4) + 4) ^ 0x7D6FBEB7) - 2104475319;
  *(*v2 + v8) = (BYTE3(v5) ^ 0x42) - ((v5 >> 23) & 0x60) - 80;
  *(v7 + v8 + 1) = (BYTE2(v5) ^ 0x6B) - ((2 * (BYTE2(v5) ^ 0x6B)) & 0x60) - 80;
  *(v7 + v8 + 2) = (((((v4 ^ 0x17C7) - 6570) ^ v4 ^ ((v4 ^ 0x7FB9) - 29140) ^ ((v4 ^ 0x196C) - 5889) ^ ((v4 ^ 0x7F7F) - 28946)) >> 8) ^ 0xE) - ((v5 >> 7) & 0x60) - 80;
  *(v7 + v8 + 3) = ((v4 ^ 0xC7) + 86) ^ v4 ^ ((v4 ^ 0xB9) + 44) ^ ((v4 ^ 0x6C) - 1) ^ ((v4 ^ 0x7F) - 18) ^ 0xDD;
  *(v2 + 4) = v3 - 1114312293;
}

uint64_t sub_22D394D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  v66 = ((((v65 - 192) | 0xEA9E0CA8) - ((v65 - 192) & 0xEA9E0CA8)) ^ 0x67336E44) * v63;
  *(v65 - 176) = v66 + v62 + 290;
  *(v65 - 172) = v66 - 1424879882;
  v67 = (v65 - 192);
  v67[1] = &STACK[0x3C4];
  *v67 = &a62;
  v67[4] = 0;
  v68 = (*(v64 + 8 * (v62 ^ 0x913)))(v65 - 192);
  return (*(v64 + 8 * (((*(v65 - 168) != -1541908459) * (((v62 + 689) | 4) + 395 * (v62 ^ 0x63) - 1412)) ^ v62)))(v68);
}

uint64_t sub_22D394E34(uint64_t result)
{
  v1 = 2066391179 * (((result | 0x64FA3A6C56BDFE0ALL) - (result & 0x64FA3A6C56BDFE0ALL)) ^ 0x89DA5ACBF99A7C12);
  v2 = *(result + 16) ^ v1;
  v3 = *(result + 40) - v1;
  v4 = v3 < v2;
  v5 = v3 < v2;
  v6 = v4;
  if ((*(result + 28) + v1))
  {
    v5 = v6;
  }

  v7 = !v5;
  v8 = 32;
  if (!v7)
  {
    v8 = 8;
  }

  *result = (*(result + v8) + v1) ^ (*(result + 24) + v1);
  return result;
}

uint64_t sub_22D394EC4@<X0>(int a1@<W1>, int a2@<W2>, int a3@<W8>)
{
  v7 = *(v6 + v3 * v4 + 36);
  v9 = v7 != a1 && v7 + a2 < (((a3 + 177) | 0xB0) ^ 0x80000390 ^ (3 * (a3 ^ 0x12E)));
  return (*(v5 + 8 * ((62 * v9) ^ a3)))();
}

void sub_22D394F24(_DWORD *a1)
{
  v1 = *a1 + 1388665877 * (((a1 | 0x8F369A8D) - (a1 & 0x8F369A8D)) ^ 0x29BF861) - 472;
  __asm { BRAA            X1, X17 }
}

uint64_t sub_22D3950C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = (a9 + v11);
  *(v14 - 1) = v13;
  *v14 = v13;
  return (*(v12 + 8 * ((((v10 & 0xFFFFFFFFFFFFFFF0) == 16) * (29 * (v9 ^ 0x4A6) + 1787)) ^ v9)))();
}

uint64_t sub_22D395154@<X0>(uint64_t a1@<X1>, unsigned int a2@<W8>)
{
  v7 = *(v6 - 220 + a2 + 72);
  v8 = ((2 * a2) & 0xD89DDFE8) + (a2 ^ 0x6C4EEFF7) + v2;
  *(a1 + v8) = (HIBYTE(v7) ^ 0x88) - (((v4 ^ v3) + 0x80) & (2 * HIBYTE(v7))) - 80;
  *(a1 + v8 + 1) = (BYTE2(v7) ^ 0x47) - ((v7 >> 15) & 0x60) - 80;
  *(a1 + v8 + 2) = (BYTE1(v7) ^ 0xCA) - ((v7 >> 7) & 0x60) - 80;
  *(a1 + v8 + 3) = v7 ^ 0x9D;
  return (*(v5 + 8 * ((503 * (a2 + 4 >= *(v6 - 128))) ^ v4)))();
}

uint64_t sub_22D3952FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, uint64_t a50, void *a51, _DWORD *a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v63 = (a57 + 4 * v60);
  v64 = *v63;
  LODWORD(v63) = 1913672377 * ((*(*a51 + (*a52 & 0x15C50E08)) ^ v63) & ((v62 - 544) ^ 0x7FFFFE96));
  v65 = (v62 - 904) ^ (((v62 - 902 - v60) & ((v62 - 902) ^ (-2 - v59)) | v60 & ~(v62 - 902)) >= 0) ^ v63 ^ (v63 >> 16);
  LODWORD(v63) = 1913672377 * v65;
  *(a58 + 4 * v60) = v64 ^ 0xA2E82423 ^ (*(a58 + 4 * v60) - 1561844701 - ((2 * *(a58 + 4 * v60)) & 0x45D04846)) ^ *(*(&off_284082B80 + a49) + (v63 >> 24) - 1) ^ *(*(&off_284082B80 + v62 - 747) + (v63 >> 24)) ^ *(*(&off_284082B80 + v62 - 897) + (v63 >> 24)) ^ (1387855872 * v65) ^ v63 ^ (-2027707665 * (v63 >> 24));
  return (*(v61 + 8 * ((755 * (v58 - 1 == ((v62 - 1997307866) & 0x770C7FD9) + ((v62 + 1932948486) & 0x8CC98BF9) - 1810)) ^ (v62 - 544))))();
}

uint64_t sub_22D395504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = STACK[0x3F0];
  STACK[0x448] -= 32;
  *(v16 + 335) = *(a14 + 335) ^ 0xE1 ^ *(*(&off_284082B80 + v14 - 722) + 15) ^ *(*(&off_284082B80 + ((v14 - 745) ^ 0xF5)) + 5) ^ *(*(&off_284082B80 + ((v14 - 745) ^ 0xCE)) + ((v14 - 772) | 7u) - 129) ^ 0xB0;
  return (*(v15 + 8 * (v14 - 745)))();
}

uint64_t sub_22D3957BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  *v64 = v61 - 1;
  v68 = &v64[6 * (v61 - 167694380)];
  v69 = v68[2];
  *(v67 + 504) = *(v68 + 2);
  v70 = *(v63 + (v69 + v66) * a4 + 36);
  LODWORD(STACK[0x204]) = v70;
  return (*(v65 + 8 * ((150 * (v70 == (v62 ^ 0x6DA ^ (a3 + 162)))) ^ v62)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61);
}

uint64_t sub_22D395870()
{
  v2[40] = -v0;
  v3 = v2[35];
  *v2 = v1 - 112;
  return v3();
}

uint64_t sub_22D395890@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  v9 = a2 - 1858402734;
  v10 = a2 - 1;
  v11 = *(v5 + v9);
  if (v11 == 176)
  {
    __asm { BRAA            X10, X17 }
  }

  if (v11 == 48)
  {
    v12 = -1541908459;
    v13 = *(v2 + 16);
    v14 = *(v2 + 24) ^ v3;
    *result = v5;
    *(result + 8) = v6;
    *(result + 12) = v10;
    if (v14 == 108)
    {
      v15 = 426797266;
    }

    else
    {
      v15 = 426797267;
    }

    *(result + 16) = 488397856;
    *(result + 20) = v15;
    *(result + 24) = -1541908459;
    *v13 = result;
  }

  else
  {
    result = (*(v8 + 8 * (v7 ^ 0xDAF)))();
    v12 = 1541866444;
  }

  *(v2 + 8) = v12;
  return result;
}

uint64_t sub_22D395A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9[76] = v8;
  v9[77] = v8;
  v10 = *v9;
  v9[78] = &STACK[0x4F0] + *v9;
  *v9 = v10 + 320;
  LODWORD(STACK[0x384]) = *(v8 + 72);
  LODWORD(STACK[0x42C]) = *(v8 + 76);
  v11 = *(v8 + 80);
  LODWORD(STACK[0x26C]) = v11;
  v12 = *(v8 + 84);
  LODWORD(STACK[0x434]) = v12;
  v13 = *(v8 + 96);
  if (v13 == 2)
  {
    LODWORD(STACK[0x31C]) = *(v8 + 88);
    return sub_22D356C0C();
  }

  else
  {
    if (v13 != 1)
    {
      JUMPOUT(0x22D351218);
    }

    return sub_22D3999C8(a1, a2, v12, v11, a5, a6, a7, a8);
  }
}

uint64_t sub_22D395AB0()
{
  v2 = v0;
  (*(v1 + 8 * (v0 ^ 0xAD1)))();
  return (*(v1 + 8 * (((32 * (STACK[0x288] == 0)) | ((STACK[0x288] == 0) << 6)) ^ (v2 + 1055))))();
}

uint64_t sub_22D395B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, unsigned int a18, int a19, unsigned int a20, int a21, char *a22)
{
  if (a10 == v24 + 233270445)
  {
    v26 = -43688278;
  }

  else
  {
    v26 = -43688279;
  }

  v27 = ((&a17 & 0x8989DF9C | ~(&a17 | 0x8989DF9C)) ^ 0xA7740D1C) * v23;
  a20 = v26 + v27;
  a18 = v27 ^ 0x8A8FC15D;
  a19 = (v24 - 2013067023) ^ v27;
  a22 = &a15;
  a17 = a12;
  v28 = (*(v25 + 8 * (v24 + 1959)))(&a17);
  return (*(v25 + 8 * (((a21 == v22 + ((v24 - 459) | 0x87) - 159) * ((v24 ^ 0x162) + 1004)) ^ v24)))(v28);
}

uint64_t sub_22D395CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v15 = (v13 - 1430) | 1u;
  v16 = (v15 ^ 0x3F4817ED) + a12;
  v17 = v12 + 1610344231 < v16;
  if (v16 < 0x5FFBE727 != v12 > 0xA00418D8)
  {
    v17 = v16 < 0x5FFBE727;
  }

  return (*(v14 + 8 * ((55 * !v17) ^ v13)))(1610344231, v15, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_22D3961E4()
{
  v2 = v0;
  (*(v1 + 8 * (v0 ^ 0xAD1)))();
  return (*(v1 + 8 * ((229 * (STACK[0x3E8] != 0)) ^ (v2 - 17))))();
}

uint64_t sub_22D3963D4(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, int a16, unsigned int a17)
{
  v17 = ((a4 + a2 + 2005) ^ 0xC5943E43) + a14;
  v18 = v17 < 0xC5943960;
  v19 = v17 > a17;
  if (a17 < 0xC5943960 != v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  return (*(v22 + 8 * ((a4 + a2 + 150) ^ (2 * v20))))();
}

void sub_22D3963E0(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  *(v26 - 112) = &a25;
  *(v26 - 104) = &a15;
  *(v26 - 144) = a1 - ((((v26 - 144) | 0x8273D6C) - (v26 - 144) + ((v26 - 144) & 0xF7D8C290)) ^ 0x1BFBD14C) * v25 + 984;
  *(v26 - 136) = a7;
  *(v26 - 128) = a4;
  *(v26 - 120) = &a15;
  JUMPOUT(0x22D371500);
}

uint64_t sub_22D39698C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, char a16)
{
  *(a11 + 16) = -v16;
  v21 = 50899313 * ((((v20 - 136) | 0xCCA89207) + (~(v20 - 136) | 0x33576DF8)) ^ 0xD8870F9D);
  *(v20 - 128) = v19;
  *(v20 - 136) = v17 - v21 + 287;
  *(v20 - 120) = v21 ^ 0x7F11DE15;
  (*(v18 + 8 * (v17 ^ 0xDDD)))(v20 - 136);
  v22 = 1037613739 * (((((v20 - 136) | 0x3C313262) ^ 0xFFFFFFFE) - (~(v20 - 136) | 0xC3CECD9D)) ^ 0x12CCE0E2);
  *(v20 - 128) = v19;
  *(v20 - 136) = (((32 * a13) ^ 0x6FFE7CD7) - 1124605969 + ((a13 << (((v17 + 125) | 0x10) - 47)) & 0xDFFCF980)) ^ v22;
  *(v20 - 132) = (v17 - 20) ^ v22;
  (*(v18 + 8 * (v17 ^ 0xD3B)))(v20 - 136);
  *(v20 - 136) = &a16;
  *(v20 - 128) = v17 + 1388665877 * ((2 * ((v20 - 136) & 0x78F92F18) - (v20 - 136) - 2029596441) ^ 0xAABB20B) - 778;
  *(v20 - 120) = a15;
  (*(v18 + 8 * (v17 + 1246)))(v20 - 136);
  *(v20 - 128) = v19;
  *(v20 - 120) = a15;
  *(v20 - 136) = v17 - 210068311 * ((((v20 - 136) | 0xB380E250) - ((v20 - 136) & 0xB380E250)) ^ 0x2156DDF4) + 858;
  v23 = (*(v18 + 8 * (v17 ^ 0xD2B)))(v20 - 136);
  return (*(v18 + 8 * (v17 ^ (16 * (*(v20 - 112) > ((v17 + 1870442027) & 0x90834FFF) + 852453542)))))(v23);
}

uint64_t sub_22D396C1C@<X0>(uint64_t a1@<X8>)
{
  v5 = v3 - 1;
  *(a1 + v5) = *(v2 + v5) - ((*(v2 + v5) << ((v4 + 15) & 0xFE ^ 0xF1)) & 0x60) - 80;
  return (*(v1 + 8 * ((1450 * (v5 == 0)) ^ v4)))(0);
}

void zxcm2Qme0x(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *(&off_284082B80 + ((-3 * ((qword_27D9FC2C8 - dword_27D9FC4A8) ^ 0xE5)) ^ byte_22D5BA3E0[byte_22D5C6450[(-3 * ((qword_27D9FC2C8 - dword_27D9FC4A8) ^ 0xE5))] ^ 0xBA]) + 60);
  v5 = *(v4 - 4);
  v6 = *(&off_284082B80 + (*(off_284082D68 + (*(off_284082CD0 + (-3 * ((qword_27D9FC2C8 + v5) ^ 0xE5)) - 12) ^ 0x6Cu) - 12) ^ (-3 * ((qword_27D9FC2C8 + v5) ^ 0xE5))) + 123);
  v7 = &v11[2] + (*(v6 - 4) ^ v5);
  *(v4 - 4) = 1707045629 * (v7 - 0x1520B27A7613BCE5);
  *(v6 - 4) = 1707045629 * (v7 ^ 0x1520B27A7613BCE5);
  v10 = 0;
  v13 = 210068311 * (&v12 ^ 0x92D63FA4) - 1224077185;
  v12 = &v10;
  v8 = *(&off_284082B80 + ((-3 * ((qword_27D9FC2C8 - dword_27D9FC4A8) ^ 0xE5)) ^ byte_22D5BF320[byte_22D5BA8E0[(-3 * ((qword_27D9FC2C8 - dword_27D9FC4A8) ^ 0xE5))] ^ 0x8C]) + 35) - 8;
  (*&v8[8 * (*(off_284082BE8 + (*(off_284082F00 + (-3 * ((*(v6 - 4) - *(v4 - 4)) ^ 0xE5))) ^ 0xA7u) - 4) ^ (-3 * ((*(v6 - 4) - *(v4 - 4)) ^ 0xE5))) + 18680])(&v12);
  v11[0] = 0;
  v13 = 210068311 * ((&v12 & 0x9DA14C42 | ~(&v12 | 0x9DA14C42)) ^ 0xF0888C19) - 1224077185;
  v12 = v11;
  v9 = -3 * (*(v4 - 4) ^ 0xE5 ^ *(v6 - 4));
  (*&v8[8 * (*(off_284082D30 + (*(off_284083140 + v9 - 4) ^ 0xAAu) - 8) ^ v9) + 18656])(&v12);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_22D397384(__n128 a1, __n128 a2)
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
  return sub_22D3973A8(a1, a2);
}

uint64_t sub_22D3973E8@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W8>)
{
  v9 = *(*(v3 + 8) + 4 * v8);
  *(*(a1 + 24) + (v5 + a3)) = (v9 ^ v7) + ((((a2 + 59) | 4) - 6) & (2 * (v9 ^ v7)) ^ (((a2 + 24) & 0xE7) - 40)) - 79;
  return (*(v4 + 8 * ((a2 + 525) ^ (111 * (v5 - 1 == v6)))))();
}

uint64_t sub_22D397470@<X0>(int a1@<W8>)
{
  v8 = v2 + v5 - 726;
  *(*v6 + (v3 + v8)) = *(*v6 + (v5 + v4));
  return (*(v7 + 8 * (((v8 != a1) * v1) ^ v2)))();
}

uint64_t sub_22D39756C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, int a17)
{
  *a4 = 0;
  *a5 = 0;
  a16 = (843532609 * ((&a16 & 0xC104A618 | ~(&a16 | 0xC104A618)) ^ 0x62B60D62)) ^ 0xDFABAF92;
  v19 = (*(v17 + 18752))(&a16);
  return (*(v17 + 8 * ((1551 * (a17 == v18)) ^ 0x16Eu)))(v19);
}

uint64_t sub_22D397808@<X0>(int a1@<W7>, uint64_t a2@<X8>)
{
  v7 = (v4 + 1580999673) & 0x1C3DF9F;
  v8 = v6 + v7 - 1949;
  *(*(v2 + 8) + 4 * (v6 + v3)) = a1 ^ v5;
  *(v2 + 4) = v8;
  v9 = v8 + v3;
  if (v8 + v3 < 0)
  {
    v9 = -v9;
  }

  return (*(a2 + 8 * (((((v9 ^ 0x97FD6BF7) + ((v9 << (v7 + 99)) & 0x2FFAD7EE) + 1744999432) >> 31) * (v7 - 1938)) ^ (v7 - 74))))();
}

uint64_t sub_22D397B10(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned int a21)
{
  v23 = (a1 + 698437870) & 0xD65EAF0F;
  if (a21 <= 0x30)
  {
    v24 = 48;
  }

  else
  {
    v24 = a21;
  }

  return (*(v21 + 8 * (v23 | (2 * (((v22 + v24 + v23 - 1292) & 0x7FFFFFC0) == v22)))))();
}

uint64_t sub_22D398108()
{
  v4 = (*(v2 + 8 * (v0 + 1684)))();
  LODWORD(STACK[0x468]) = v3;
  return (*(v2 + 8 * (((v0 ^ 0x2C6) * (v3 == v1)) | v0)))(v4);
}

uint64_t sub_22D398148@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = v1 + 90 + *(v3 + v5) - ((2 * *(v3 + v5)) & 0x60) + 6;
  return (*(v4 + 8 * ((v5 != 0) | (32 * (v5 != 0)) | v1)))();
}

uint64_t sub_22D398184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (a1 + a2);
  *v6 = v5;
  v6[1] = v5;
  return (*(v4 + 8 * ((55 * ((((v3 ^ 0x37) + 795556126) & 0xD094C55F ^ 0x14BLL) != (((v3 ^ 0x37u) - 749) & v2))) ^ v3 ^ 0x37)))();
}

uint64_t sub_22D398240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = ~v4 + v2;
  v10 = *(a2 + v9 - 15);
  v11 = *(a2 + v9 - 31);
  v12 = a1 + v9;
  *(v12 - 15) = v10;
  *(v12 - 31) = v11;
  return (*(v8 + 8 * (((((v5 + 1508) ^ v6) + v4 == v3) * v7) ^ v5)))();
}

uint64_t sub_22D398288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (v3 ^ 0xFFFFFFFFFFFFFBE5 ^ v4 ^ 0x94u) + v2;
  *(a1 - 7 + v6) = *(a2 - 7 + v6);
  return (*(v5 + 8 * ((75 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

uint64_t sub_22D398470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  *(v20 - 112) = v18 + 1037613739 * ((v20 + 659237392 - 2 * ((v20 - 128) & 0x274B2A90)) ^ 0xF64907EF) + 1094;
  *(v20 - 128) = &a15;
  *(v20 - 120) = &a17;
  v21 = (*(v17 + 8 * (v18 + 1138)))(v20 - 128);
  return (*(v17 + 8 * (((v19 != 1) * (((v18 - 1101) | 0x518) ^ 0x442)) ^ v18)))(v21);
}

uint64_t sub_22D398574(double a1)
{
  *(v4 - 1) = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

uint64_t sub_22D398718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v75 - 192) = v73 - 50899313 * ((((v75 - 192) | 0x96199A2E) - ((v75 - 192) & 0x96199A2E)) ^ 0x823607B5) + 1556058439;
  (*(v74 + 8 * (v73 ^ (v71 + 1814))))(v75 - 192);
  v76 = v75 - 192;
  *v76 = &STACK[0x2F4];
  *(v75 - 168) = (v73 - 1541865746) ^ (1785193651 * ((v75 - 192) ^ 0x13DCEC20));
  *(v76 + 16) = &a71;
  *(v76 + 28) = ((((v72 - v73) | (v73 - v72)) >> ((v73 - 70) ^ 0x96)) + 38) ^ (-77 * ((v75 + 64) ^ 0x20));
  (*(v74 + 8 * (v73 - 1541863989)))(v75 - 192);
  return sub_22D3892C4();
}

void sub_22D398934()
{
  v6 = 2066391179 * ((((v5 - 144) | 0x1A77EB4F) + (~(v5 - 144) | 0xE58814B0)) ^ 0xB5506956);
  *(v0 + 24) = v2;
  *(v0 + 8) = v4;
  *(v5 - 144) = v6 + v1 + ((v3 + 54) ^ 0xD582B9E5);
  *(v5 - 128) = v3 - v6 + 906;
  JUMPOUT(0x22D3989A0);
}

uint64_t sub_22D398AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v21 = 1037613739 * ((~(v15 | 0x9C5FB7D4) + (v15 & 0x9C5FB7D4)) ^ 0xB2A26554);
  *(v20 - 136) = v21 ^ 0x2CF65CC7;
  *(v20 - 132) = (v19 - 684) ^ v21;
  *(v20 - 128) = v16;
  (*(v17 + 8 * (v19 + 595)))(v20 - 136);
  *(v20 - 120) = a14;
  *(v20 - 128) = v19 + 1388665877 * ((1001889316 - (v15 | 0x3BB79E24) + a10) ^ 0x49E50337) - 1442;
  *(v20 - 136) = v14;
  (*(v17 + 8 * (v19 + 582)))(v20 - 136);
  *(v20 - 136) = v19 - 210068311 * ((~(v15 | 0x28C2FE58) + (v15 & 0x28C2FE58)) ^ 0x45EB3E03) + 194;
  *(v20 - 128) = a13;
  *(v20 - 120) = a14;
  v22 = (*(v17 + 8 * (v19 + 579)))(v20 - 136);
  return (*(v17 + 8 * ((29 * (*(v20 - 112) <= (((v19 - 1577) | 0x20) ^ (v18 - 1238)) + ((v19 - 1696) | 0x345u))) ^ v19)))(v22);
}

uint64_t sub_22D398FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, unsigned int a17)
{
  v20 = a17 < a16;
  v21 = (v18 - 478);
  if (v20 == v17 > 0xD121E390)
  {
    v20 = v21 + v17 + 786308199 < a17;
  }

  return (*(v19 + 8 * (((2 * v20) | (8 * v20)) ^ v18)))(a1, a16, v21, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

void sub_22D3990F0(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 4) - 1963594276;
  v3 = *(*(a1 + 16) + 4) - 1963594276;
  v4 = (v2 < 536024754) ^ (v3 < 536024754);
  v5 = v2 > v3;
  if (v4)
  {
    v5 = v2 < 536024754;
  }

  v1 = *a1 + 210068311 * ((a1 & 0x333F3DED | ~(a1 | 0x333F3DED)) ^ 0x5E16FDB6);
  __asm { BRAA            X14, X17 }
}

uint64_t sub_22D3991C8(__n128 a1, __n128 a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, uint64_t a17, int a18, int a19, uint64_t a20, uint64_t a21, unsigned int a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, unsigned int a27, unsigned int a28)
{
  v29.n128_u64[0] = 0x6060606060606060;
  v29.n128_u64[1] = 0x6060606060606060;
  v30.n128_u64[0] = 0xB0B0B0B0B0B0B0B0;
  v30.n128_u64[1] = 0xB0B0B0B0B0B0B0B0;
  return (*(v28 + 8 * (((3 * (a19 ^ 0x8A) + ((a19 + 448849400) & 0xE53F1BA7) + 1202) * (a16 < 0xFFFFFFFE)) ^ a19)))(2612089193, 1682878107, a27, a22, a28, a9, 585545171, 3475712426, a1, a2, a3, v29, v30);
}

uint64_t sub_22D399250@<X0>(uint64_t a1@<X8>)
{
  v7 = v1;
  v5 = v2;
  v6 = v3 + 1388665877 * ((&v5 & 0x1903C766 | ~(&v5 | 0x1903C766)) ^ 0x6B515A75) + 224;
  result = (*(a1 + 8 * (v3 ^ 0x938)))(&v5);
  *(v2 + 4) = v3 - *(v2 + 4) + 704270574;
  return result;
}

uint64_t sub_22D3992CC@<X0>(uint64_t a1@<X8>, uint8x8_t a2@<D0>)
{
  a2.i32[0] = *(a1 + v2);
  v5 = vmovl_u8(a2).u64[0];
  *(a1 - 4 + v2) = vuzp1_s8(v5, v5).u32[0];
  return (*(v4 + 8 * ((51 * ((((((v3 | 0xE) + 17) & 0xDD) - 10) ^ (((((v3 | 0x40E) - 600375279) & 0x23C8FFDD ^ 0xFFFFFAE1) & v2) == 4)) & 1)) ^ ((v3 | 0x40E) - 600375279) & 0x23C8FFDDu)))(((((v3 | 0x40E) - 600375279) & 0x23C8FFDD ^ 0xFFFFFAE1) & v2) - 8);
}

uint64_t sub_22D3993D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, unsigned int a57)
{
  (*(v60 + 8 * (v57 ^ 0xAD1)))();
  LODWORD(STACK[0x334]) = v58;
  return (*(v60 + 8 * ((26 * ((v59 ^ (v57 - 6)) & 1)) ^ (v57 - 602))))(a57);
}

void sub_22D39948C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v76 = ((((v75 - 192) | 0xD8611710) - ((v75 - 192) & 0xD8611710)) ^ 0x55CC75FC) * v73;
  *v72 = &a70;
  *(v75 - 184) = v70 - v76 + 375;
  *(v75 - 180) = (v71 ^ ((v71 ^ 0xFC8DFFD1) + 2008585316) ^ ((v71 ^ 0xD9BAE217) + 1385138598) ^ ((v71 ^ 0x7FBDFBFF) - 192376754) ^ ((v71 ^ (v70 - 1679651333) & 0x641D739F ^ 0x2E4071FD) - 1519052345) ^ 0xD0D2CC58) - v76;
  (*(v74 + 8 * (v70 + 1913)))(v75 - 192);
  JUMPOUT(0x22D38572CLL);
}

void sub_22D399584(uint64_t a1)
{
  v2 = *(*(a1 + 16) + 4) - 352135382;
  if (v2 < 0)
  {
    v2 = 352135382 - *(*(a1 + 16) + 4);
  }

  v1 = *a1 + 1037613739 * ((2 * (a1 & 0x7932EDD3) - a1 + 114102828) ^ 0xD7CF3F53);
  __asm { BRAA            X12, X17 }
}

void sub_22D399694()
{
  *v5 = *v1;
  *v4 = v0;
  *v1 = 0;
  *(v1 + 8) = 0x6EC4F9AD6EC4F9ADLL;
  v2 = *(v1 + 24);
  v3 = *(v1 + 20) & 0xFFFFFFFE;
  *(v1 + 16) = 488397856;
  *(v1 + 20) = v3;
  *(v6 + 24) = v2;
}

uint64_t sub_22D3997A4(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v12 = (v5 + v8 + v6);
  v13 = *v12;
  v14 = v12[1];
  v15 = (v10 + (v8 + v4));
  *v15 = v13;
  v15[1] = v14;
  return (*(v11 + 8 * (((v8 + (3 * a2) - 574 == v9) * a4) ^ v7)))();
}

uint64_t sub_22D39981C@<X0>(int a1@<W8>)
{
  v4 = 143681137 * ((-2 - ((~(v3 - 168) | 0x27525E627E1D5C9DLL) + ((v3 - 168) | 0xD8ADA19D81E2A362))) ^ 0x96DB6CD61F45D74DLL);
  *(v3 - 140) = (a1 + 1458594709) & 0x7FF673D8 ^ v4;
  *(v3 - 136) = v4;
  *(v3 - 164) = a1 + 1458594709 - v4 + 9;
  *(v3 - 144) = a1 - v4 + 1699922541;
  v5 = v3 - 184;
  *(v5 + 24) = 3498637460u - v4;
  *(v5 + 32) = v4 + v1;
  *(v3 - 132) = (a1 + 1458594709) ^ v4;
  v6 = (*(v2 + 8 * (a1 ^ 0x956)))(v3 - 168);
  return (*(v2 + 8 * *(v3 - 168)))(v6);
}

uint64_t sub_22D3999C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v15 = *(v8 + ((a8 - 613) ^ (v12 - 284)) + v9) ^ v11 | ((*(v8 + (v12 + v9 + 1)) ^ v11) << 8) | ((*(v8 + (v12 + v9 + 2)) ^ v11) << 16) | ((*(v8 + (v12 + v9 + 3)) ^ v11) << 24);
  *(v10 + 4 * (((((v9 ^ 0xED42C06D) + 1862784469) ^ v9 ^ ((v9 ^ 0x80EDD48) - 1974744846) ^ ((v9 ^ 0xE749009C) + 1695290664) ^ ((v9 ^ 0x7FBFF7FD) - 33889723)) >> 2) ^ 0x1F6EBA91)) = v15 + v13 - ((2 * v15) & 0x4830B02A);
  return (*(v14 + 8 * ((1308 * ((v9 + 4 + v12) < 0x40)) ^ (a8 - 613))))(2109401670);
}

void sub_22D399B04(int a1@<W8>)
{
  v5 = a1 | 0x96;
  v6 = *(v4 + 496) + 128;
  *(v4 + 288) = v6;
  v7 = 1785193651 * (((~(v3 - 192) & 0x23F0A62C) - (~(v3 - 192) | 0x23F0A62D)) ^ 0x302C4A0D);
  *(v3 - 176) = v7 ^ 0xA3CEBA4D;
  *(v3 - 188) = v5 - 562359757 + v7 + 659;
  *(v3 - 184) = v6;
  (*(v1 + 8 * (v5 + 2144)))(v3 - 192);
  STACK[0x440] = v6;
  STACK[0x248] = v2;
  LODWORD(STACK[0x3B4]) = 17;
  JUMPOUT(0x22D38058CLL);
}

uint64_t sub_22D399D90(_DWORD *a1)
{
  v2 = *a1 ^ (843532609 * ((-2 - ((a1 | 0x32057923) + (~a1 | 0xCDFA86DC))) ^ 0x91B7D259));
  result = (*(*(&off_284082B80 + (v2 ^ 0xDFABAFA9)) + (v2 + 542398942) - 1))(*(&off_284082B80 + (v2 ^ 0xDFABAF27)) - 12, sub_22D37066C);
  v4 = **(&off_284082B80 + (v2 ^ 0xDFABAFEB));
  if (result)
  {
    v4 = 1541866155;
  }

  a1[1] = v4;
  return result;
}

uint64_t sub_22D399E74@<X0>(uint64_t a1@<X1>, int a2@<W3>, uint64_t a3@<X8>)
{
  v7 = v4 - 1;
  *(a3 + v7) = *(a1 + v7) - ((2 * *(a1 + v7)) & 0x60) - 80;
  return (*(v6 + 8 * ((((v5 ^ (v7 == 0)) & 1) * a2) ^ v3)))();
}

void sub_22D399EB0(uint64_t a1)
{
  v1 = 1564307779 * ((a1 & 0x6A31B604 | ~(a1 | 0x6A31B604)) ^ 0x2C385E8);
  v2 = *(a1 + 12) + v1;
  __asm { BRAA            X13, X17 }
}

uint64_t sub_22D39A030(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 4);
  *(a1 + 48) = *(a2 + 8);
  return 0;
}

uint64_t sub_22D39A048(uint64_t a1)
{
  v1 = 1388665877 * ((-2 - ((a1 | 0xD3DFA21E) + (~a1 | 0x2C205DE1))) ^ 0xA18D3F0D);
  v2 = *(a1 + 8) + v1;
  return (*(*(&off_284082B80 + v2 - 810) + (((((((*(a1 + 12) + v1) ^ 0xE20D994C) + 502425268) ^ (((*(a1 + 12) + v1) ^ 0x1AE4A553) - 451192147) ^ (((*(a1 + 12) + v1) ^ 0x5CF1640A) - 1559323658)) + 605575189 < 0x80000064) * ((v2 + 1477278202) & 0xA7F287BC ^ 0x5FF)) ^ v2) - 1))();
}

uint64_t sub_22D39A150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v44 = v42 + v40;
  (*(a4 + 8 * (v44 + 1794)))(a27 + a28, 0x100004077774924);
  v45 = (*(a40 + 8 * (v44 + 1806)))();
  *v43 = v45;
  return sub_22D39A1C8(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v41, a30);
}

uint64_t sub_22D39A298()
{
  v8 = v3 - v1 - 515;
  *v2 = (v8 + v6) ^ v12;
  v14 = v11;
  v13 = v3 - 515 - ((326671311 - (&v13 | 0x13789BCF) + (&v13 | 0xEC876430)) ^ 0x612A06DC) * v0;
  (*(v5 + 8 * (v3 + 1655)))(&v13);
  v14 = v10;
  v13 = 408694834 - 1388665877 * (&v13 ^ 0x8DAD62EC) + v8;
  (*(v5 + 8 * (v8 ^ (v7 + 2167))))(&v13);
  return v4 ^ 0xA4185815;
}

void sub_22D39A3A4(uint64_t a1)
{
  (*(v1 + 19440))();
  (*(v1 + 19136))(a1);
  JUMPOUT(0x22D373104);
}

uint64_t sub_22D39A3DC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  LODWORD(STACK[0x268]) = a1;
  v53 = (*(v52 + 8 * (v51 ^ 0x8EC)))(a51 + 16, 0);
  v54 = *(a51 + 16);
  *(a51 + 4) = *(a51 + 24);
  *(a51 + 8) = v54;
  *(a51 + 12) = (*(v52 + 8 * (v51 ^ 0x814)))(v53);
  v55 = (*(v52 + 8 * (v51 | 0x814)))();
  *a51 = v55;
  return sub_22D39A4A0(v55, v56, v57, v58, v59, v60, v61, v62, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39);
}

uint64_t sub_22D39A4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v65 = *(v59 + 4 * (v58 - 1));
  *(v59 + 4 * v58) = *(a58 + 4 * v60) + v60 + ((1664525 * (v65 ^ (v65 >> 30))) ^ *(v59 + 4 * v58));
  v66 = 1361651671 * ((v61 + 0x702E15F473EC93C8 - 2 * (v61 & 0x702E15F473EC93C8)) ^ 0xA38366CDA0CE6344);
  v67 = v64 - 192;
  *(v67 + 24) = 623 - v66;
  *(v64 - 176) = v63 + 1719213241 + v66;
  *(v64 - 160) = (v63 + 55969033) ^ v66;
  *(v64 - 192) = 1 - v66;
  *(v64 - 188) = ((v63 + 1719213241) | 0x24) + v66;
  *(v67 + 8) = v58 + 1 + v66;
  *(v64 - 152) = ((v63 + 1719213241) ^ 0x47) - v66;
  v68 = (*(v62 + 8 * (v63 ^ 0xADE)))(v64 - 192);
  return (*(v62 + 8 * *(v64 - 156)))(v68);
}

uint64_t sub_22D39A5B8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24)
{
  *v24 = a24 + 1;
  v28 = *a13;
  *(v27 - 112) = ((a1 - 1101375341) & 0xBFDEDBA4) - a10;
  *(v26 + 16) = v28 + a10;
  *(v27 - 152) = 1 - a10;
  *(v27 - 148) = ((a1 - 1101375341) ^ 0x57) + a10;
  *(v27 - 120) = (a1 + 55969578) ^ a10;
  *(v27 - 136) = a1 - 1101375341 + a10;
  *(v26 + 32) = a9;
  v29 = (*(v25 + 8 * (a1 + 2031)))(v27 - 152);
  return (*(v25 + 8 * *(v27 - 116)))(v29);
}

void sub_22D39A660(uint64_t a1)
{
  v2 = *(&off_284082B80 + (*(off_284082EF8 + (*(off_284082E00 + (-3 * ((qword_27D9FC2C8 + dword_27D9FC2D8) ^ 0xE5))) ^ 0x8Cu)) ^ (-3 * ((qword_27D9FC2C8 + dword_27D9FC2D8) ^ 0xE5))) + 13);
  v3 = *(&off_284082B80 + ((-3 * (*v2 ^ qword_27D9FC2C8 ^ 0xE5)) ^ *(off_284082EF8 + (*(off_284082E00 + (-3 * (*v2 ^ qword_27D9FC2C8 ^ 0xE5))) ^ 0x8Cu))) + 127);
  v4 = &v8[*(v3 - 4) ^ *v2];
  v5 = 1707045629 * (v4 - 0x1520B27A7613BCE5);
  v6 = 1707045629 * (v4 ^ 0x1520B27A7613BCE5);
  *v2 = v5;
  *(v3 - 4) = v6;
  LODWORD(v3) = *v2;
  v7 = *(&off_284082B80 + ((-3 * (dword_27D9FC2D8 ^ 0xE5 ^ qword_27D9FC2C8)) ^ byte_22D5BF220[byte_22D5BA7E0[(-3 * (dword_27D9FC2D8 ^ 0xE5 ^ qword_27D9FC2C8))] ^ 0xA7]) + 36) - 8;
  (*&v7[8 * (*(off_284082DF0 + (*(off_284082F28 + (-3 * (v3 ^ 0xE5 ^ v6)) - 8) ^ 0xB5u) - 4) ^ (-3 * (v3 ^ 0xE5 ^ v6))) + 19152])(*(&off_284082B80 + (*(off_284082D30 + (*(off_284083140 + (-3 * ((v6 + v3) ^ 0xE5)) - 4) ^ 0xF7u) - 8) ^ (-3 * ((v6 + v3) ^ 0xE5))) + 20) - 4, sub_22D368468);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_22D39A844@<X0>(uint64_t a1@<X1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unsigned int *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, unsigned int a57)
{
  v59 = 103 * (a2 ^ 0x706);
  v60 = (*(v58 + 8 * (a2 ^ 0xFDA)))(*a28, a1, a57);
  return (*(v58 + 8 * ((556 * (LODWORD(STACK[0x334]) == v57 + 181 * (v59 ^ 0x130) - 905)) ^ v59)))(v60);
}

uint64_t sub_22D39A8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  v55 = (v52 - 359) | 0x4C1;
  v54[35] = *(v53 + 8 * (v52 - 847));
  HIDWORD(a37) = (v52 - 770) | 0x448;
  *v54 = a41 + 397 * (v55 ^ 0x6E1u) - 682;
  v54[47] = a38;
  if (a38)
  {
    v49 = a40 == 0;
  }

  else
  {
    v49 = 1;
  }

  v50 = v49;
  LODWORD(a39) = v52 + 465722230;
  LODWORD(a42) = HIDWORD(a37) ^ 0x480;
  LODWORD(a43) = v52 - 748;
  LODWORD(a46) = 85 * (v52 ^ 0x38E);
  return (*(v53 + 8 * ((v50 * ((5 * (v55 ^ 0x656)) ^ 0x39C)) ^ v55)))(4267048735, a41, 1648703026, 176, a5, 4239130174, 474, 2526, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, &STACK[0x557], a45, a46, a47, a48, a49);
}

void sub_22D39AA8C(uint64_t a1)
{
  v1 = 1388665877 * (((a1 | 0x4C87D863) - (a1 & 0x4C87D863)) ^ 0xC12ABA8F);
  __asm { BRAA            X10, X17 }
}

void sub_22D39ABB4(uint64_t a1@<X0>, char a2@<W1>, unsigned int a3@<W8>)
{
  v7 = (a1 + v5);
  *v7 = v3;
  v7[1] = v4;
  v7[2] = v6;
  *(a1 + (a3 ^ 0x4EFLL) + v5) = a2;
  JUMPOUT(0x22D39ABE4);
}

uint64_t sub_22D39AD5C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, __int16 a25, char a26, __int16 a27, char a28, int a29, int a30, char a31)
{
  v36 = 1082434553 * ((v35 - 152 + v31 - 2 * ((v35 - 152) & v31)) ^ 0x56A9F60C);
  *(v35 - 152) = &a28;
  *(v35 - 112) = &a26;
  *(v35 - 104) = v34;
  *(v35 - 120) = &a24;
  *(v35 - 136) = &a31;
  *(v35 - 128) = v36 + v33 + 333;
  *(v35 - 140) = v36 + a4 + 271006981;
  HIDWORD(a10) = a4;
  v37 = (*(v32 + 8 * (v33 ^ 0xAD9)))(v35 - 152);
  return (*(v32 + 8 * (((*(v35 - 144) == -1541908459) * (((v33 - 832) | 0xB2) + ((v33 - 817) | 0x282) + 2128)) ^ v33)))(v37, 1537488279, 609995368, HIDWORD(a10), 3484366235, 3395755333, 2757479016, 2320226591, a9, a10);
}

uint64_t sub_22D39AE6C(_DWORD *a1)
{
  v5 = v4 + 554;
  v6 = *(v3 + 352);
  v7 = *a1 + v1 - 687203809;
  if (v6 > 0xDA43D25E != v7 < ((93 * ((v4 + 554) ^ 0x4B2)) ^ ((v4 + 5) | 0x26) ^ 0x25BC2D9Cu))
  {
    v8 = v6 > 0xDA43D25E;
  }

  else
  {
    v8 = v6 + 633089441 > v7;
  }

  return (*(v2 + 8 * ((98 * v8) ^ v5)))();
}

void sub_22D39B0F8(_DWORD *a1)
{
  v1 = *a1 ^ (50899313 * ((a1 + 62097897 - 2 * (a1 & 0x3B389E9)) ^ 0x179C1472));
  __asm { BRAA            X9, X17 }
}

uint64_t sub_22D39B398(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = *(a2 + 4);
  *(a1 + 64) = *(a2 + 8);
  return 0;
}

void sub_22D39B3E8(uint64_t a1)
{
  v1 = *(a1 + 16) - 2066391179 * (((a1 | 0xC3204B52) - a1 + (a1 & 0x3CDFB4AD)) ^ 0x6C07C94A);
  v2 = *(&off_284082B80 + v1 - 961) - 8;
  v3 = *&v2[8 * ((2005 * (((v1 + 1) ^ ((*&v2[8 * v1 + 11176])(32, 0x101004023FF3BD5) == 0)) & 1)) ^ v1)];
  __asm { BRAA            X8, X17 }
}

uint64_t sub_22D39B53C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, uint64_t a20, int a21)
{
  v27 = &a21 + 6 * v23;
  v27[2] = v26;
  v27[3] = v25;
  *(v27 + 2) = a16;
  v27[6] = a18;
  a21 = v22 + 1;
  return (*(v24 + 8 * ((2396 * (v21 + a4 < ((a9 + 87950093) | 0x88C0C0D6) - 234800594)) ^ a9)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11);
}

uint64_t sub_22D39B5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *(v18 - 136) = v15;
  *(v18 - 128) = a13;
  *(v18 - 120) = v17 + 1037613739 * ((-2123980689 - (v13 | 0x8166A06F) + (v13 | 0x7E995F90)) ^ 0xAF9B72EF) + 1360;
  v19 = (*(v14 + 8 * (v17 + 1404)))(v18 - 136);
  return (*(v14 + 8 * ((1678 * (v16 == ((v17 + 43) | 0x8F) - 1182)) ^ v17)))(v19);
}

uint64_t sub_22D39B654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v21 - 136) = v20 - (((v15 ^ 0xB5630D72 | 0x5401F83F) - (v15 ^ 0xB5630D72) + ((v15 ^ 0xB5630D72) & 0xABFE07C0)) ^ 0x73B4CAE9) * v16 + 1053;
  *(v21 - 128) = v17;
  *(v21 - 120) = &a15;
  v22 = (*(v18 + 8 * (v20 + 1438)))(v21 - 136);
  return (*(v18 + 8 * (((*(v21 - 112) > v19) * (v20 - 976)) ^ v20)))(v22);
}

uint64_t sub_22D39B850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  v59 = (((v56 ^ 0x13D5A8CF) - 332769487) ^ ((v56 ^ 0xC5D3F7F7) + 975964169) ^ ((v56 ^ 0x721E072D) - 1914570541)) + (((LODWORD(STACK[0x464]) ^ 0x204CAE8D) - 541896333) ^ ((LODWORD(STACK[0x464]) ^ 0x75E47450) - 1977906256) ^ ((LODWORD(STACK[0x464]) ^ (a8 + 1630386036) & 0x9ED245F7 ^ 0xF1B0823D) + 240090424)) + 1211150378;
  *(a56 + 52) = ((v59 % 0x2710) ^ 0x29FFAF6F) - 675548174 + ((2 * (v59 % 0x2710)) & 0x5EDE);
  v60 = STACK[0x46C];
  *v58 -= 1616;
  LODWORD(STACK[0x334]) = v60;
  return (*(v57 + 8 * ((679 * (v60 == -1541908459)) ^ (a8 - 660))))();
}

uint64_t sub_22D39B9A4()
{
  *(v1 + 8) = &STACK[0x320];
  *(v3 - 176) = (v0 - 255) ^ (2066391179 * ((((2 * (v3 - 192)) | 0x37E491F0) - (v3 - 192) + 1678620424) ^ 0x34D5CAE0));
  *(v3 - 192) = 6578 - -24437 * ((((2 * (v3 - 192)) | 0x91F0) - (v3 - 192) - 18680) ^ 0xCAE0);
  v4 = (*(v2 + 8 * (v0 + 1889)))(v3 - 192);
  v5 = (LOBYTE(STACK[0x320]) << (((v0 - 103) | 0x89) - 113)) | (LOBYTE(STACK[0x321]) << 16) | (LOBYTE(STACK[0x322]) << 8) | LOBYTE(STACK[0x323]);
  LODWORD(STACK[0x2B4]) = v5 - ((2 * v5) & 0x7EEBF376) + 1064696251;
  return (*(v2 + 8 * (((2 * ((STACK[0x2F4] & 8) == 0)) | (16 * ((STACK[0x2F4] & 8) == 0))) ^ v0)))(v4);
}

uint64_t sub_22D39BB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t (*a23)(int *), uint64_t a24, uint64_t a25, int a26, int a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, unsigned int a37, unsigned int a38, unsigned int a39, unsigned int a40)
{
  v40 = (((a37 ^ 0x407E3A1C) - 1082014236) ^ ((a37 ^ 0x6210A494) - 1645257876) ^ ((a37 ^ 0xAA2954A5) + 1440131931)) + (((v63 ^ 0x19B65726) - 431380262) ^ ((v63 ^ 0xB914E549) + 1189812919) ^ ((v63 ^ 0x28E57842) - 686127170)) + 547755965;
  v41 = (v40 ^ 0xCFCC7CDC) & (2 * (v40 & 0xEFE97C9D)) ^ v40 & 0xEFE97C9D;
  v42 = ((2 * (v40 ^ 0x70CD5E4)) ^ 0xD1CB52F2) & (v40 ^ 0x70CD5E4) ^ (2 * (v40 ^ 0x70CD5E4)) & 0xE8E5A978;
  v43 = v42 ^ 0x2824A909;
  v44 = (v42 ^ 0xC0C10070) & (4 * v41) ^ v41;
  v45 = ((4 * v43) ^ 0xA396A5E4) & v43 ^ (4 * v43) & 0xE8E5A978;
  v46 = (v45 ^ 0xA084A160) & (16 * v44) ^ v44;
  v47 = ((16 * (v45 ^ 0x48610819)) ^ 0x8E5A9790) & (v45 ^ 0x48610819) ^ (16 * (v45 ^ 0x48610819)) & 0xE8E5A970;
  v48 = v46 ^ 0xE8E5A979 ^ (v47 ^ 0x88408100) & (v46 << 8);
  v49 = (((a38 ^ 0x16787D58) - 376995160) ^ ((a38 ^ 0x86F0A3D7) + 2031049769) ^ ((a38 ^ 0x18CF14A2) - 416224418)) + (((v62 ^ 0xAA1011E) - 178323742) ^ ((v62 ^ 0x6CB12D9F) - 1823550879) ^ ((v62 ^ 0xEE57E6AC) + 296229204)) + 566348851;
  a37 = v40 ^ (2 * ((v48 << 16) & 0x68E50000 ^ v48 ^ ((v48 << 16) ^ 0x29790000) & (((v47 ^ 0x60A52869) << 8) & 0x68E50000 ^ 0x8440000 ^ (((v47 ^ 0x60A52869) << 8) ^ 0x65A90000) & (v47 ^ 0x60A52869)))) ^ 0xE6A7E442;
  a38 = v49 ^ ((v49 ^ 0x42A74F6F) - 1402304694) ^ ((v49 ^ 0xFBF2C6EF) + 356454090) ^ ((v49 ^ 0x579843A6) - 1185576063) ^ ((v49 ^ 0xFFFFFDFF) + 288503258) ^ 0x9975FDF4;
  v50 = (((v61 ^ 0x815B1A51) + 2124735919) ^ ((v61 ^ 0x9AD0FE79) + 1697579399) ^ ((v61 ^ 0x93CC2E05) + 1815335419)) + (((a39 ^ 0xF58A9AFA) + 175465734) ^ ((a39 ^ 0xDF901083) + 544206717) ^ ((a39 ^ 0xA25D4054) + 1570946988)) + 1488474209;
  v51 = v50 & 0xB7D743F9 ^ 0x79802641 ^ (v50 ^ 0xA7D763F8) & (2 * (v50 & 0xB7D743F9));
  v52 = (2 * (v50 ^ 0xCE5765B8)) & 0x79802640 ^ 0x8802241 ^ ((2 * (v50 ^ 0xCE5765B8)) ^ 0xF3004C82) & (v50 ^ 0xCE5765B8);
  v53 = (4 * v51) & 0x79802640 ^ v51 ^ ((4 * v51) ^ 0xE6009904) & v52;
  v54 = (4 * v52) & 0x79802640 ^ 0x19802641 ^ ((4 * v52) ^ 0xE6009904) & v52;
  v55 = v53 ^ (16 * v53) & 0x79802640 ^ ((16 * v53) ^ 0x98026410) & v54 ^ 0x78002400;
  v56 = (16 * v54) & 0x79802640 ^ 0x61800241 ^ ((16 * v54) ^ 0x98026410) & v54;
  v57 = (v55 << 8) & 0x79802600 ^ v55 ^ ((v55 << 8) ^ 0x80264100) & v56;
  v58 = (((v60 ^ 0x131E1DA5) - 320740773) ^ ((v60 ^ 0xE6F6D32B) + 420031701) ^ ((v60 ^ 0x7DAF04A3) - 2108621987)) + (((a40 ^ 0x8E8C034C) + 1903426740) ^ ((a40 ^ 0x7910E8EF) - 2031151343) ^ ((a40 ^ 0x7FDB218E) - 2145067406)) + 987281592;
  a39 = v50 ^ (2 * ((v57 << 16) & 0x79800000 ^ v57 ^ ((v57 << 16) ^ 0x26410000) & ((v56 << 8) & 0x79800000 ^ 0x79800000 ^ ((v56 << 8) ^ 0x260000) & v56))) ^ 0x8C90C556;
  a40 = v58 ^ ((v58 ^ 0x8D9F4178) + 1479121626) ^ ((v58 ^ 0xBEDAD7E8) + 1802243146) ^ ((v58 ^ 0xE5F34D31) + 809866897) ^ ((v58 ^ 0xFCFFFFFF) + 692659295) ^ 0xA20EEE73;
  return a23(&a27);
}

uint64_t sub_22D39BB2C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  v61 = a1 ^ 0xA8;
  v62 = ((~(v55 | 0x71578FC4) + (v55 & 0x71578FC4)) ^ 0x30512D7) * v59;
  v57[1] = &STACK[0x3C4];
  *v57 = &a55;
  *(v60 - 176) = v62 + v61 + 290;
  *(v60 - 172) = v62 - 1424879882;
  v57[4] = 0;
  v63 = (*(v58 + 8 * (v61 ^ 0x913)))(v60 - 192);
  return (*(v58 + 8 * ((168 * (((v61 - 74) ^ (*(v60 - 168) == v56)) & 1)) ^ v61)))(v63);
}

uint64_t sub_22D39C104@<X0>(uint64_t a1@<X8>)
{
  v5 = v3 + 127 - v1;
  v6 = *(v5 - 31);
  v7 = a1 + 127 - v1;
  v8.i64[0] = 0x6060606060606060;
  v8.i64[1] = 0x6060606060606060;
  v9.i64[0] = 0xB0B0B0B0B0B0B0B0;
  v9.i64[1] = 0xB0B0B0B0B0B0B0B0;
  *(v7 - 15) = vaddq_s8(vsubq_s8(*(v5 - 15), vandq_s8(vaddq_s8(*(v5 - 15), *(v5 - 15)), v8)), v9);
  *(v7 - 31) = vaddq_s8(vsubq_s8(v6, vandq_s8(vaddq_s8(v6, v6), v8)), v9);
  return (*(v4 + 8 * (((v1 == 96) * (((v2 - 1285846343) & 0x4CA471FF) + 2761)) ^ v2)))();
}

void sub_22D39C410(uint64_t a1@<X8>, uint64_t a2, unsigned int a3, int a4)
{
  v7 = 50899313 * ((((2 * &a2) | 0xA99539D2) - &a2 - 1422564585) ^ 0x40E50172);
  a3 = (-562808257 - v5 - ((((v6 - 1049) ^ 0xCAC7F213) - 2 * v5) & 0xF2207E06)) ^ v7;
  a4 = v7 + v6 - 1769;
  a2 = a1;
  (*(v4 + 8 * (v6 + 289)))(&a2);
  JUMPOUT(0x22D37100CLL);
}

uint64_t sub_22D39C640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, int a16, char a17, __int16 a18, char a19, __int16 a20, char a21, __int16 a22, char a23)
{
  v28 = 1082434553 * ((2 * ((v27 - 160) & 0x16639148) - (v27 - 160) + 1771859632) ^ 0xF2DB983A);
  STACK[0x250] = &a19;
  STACK[0x270] = a15;
  STACK[0x260] = &a21;
  STACK[0x268] = &a17;
  *(v27 - 148) = v28 + v23 + 271006981;
  *(v27 - 136) = v28 + v24 + 675;
  STACK[0x240] = &a23;
  v29 = (*(v25 + 8 * (v24 + 1949)))(v27 - 160);
  return (*(v25 + 8 * (((*(v27 - 152) == (v24 ^ 0x152) - 1541908620) * ((v26 + v24 - 499) ^ (v26 + 1789))) ^ v24)))(v29);
}

uint64_t sub_22D39C750@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(v4 + v5) = ((v1 - 43) & 0x7F ^ 0x97) + *(a1 + v5) - ((2 * *(a1 + v5)) & 0x60);
  return (*(v3 + 8 * ((11 * (v5 != 0)) ^ v1)))();
}

uint64_t sub_22D39C7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51)
{
  v54 = STACK[0x424];
  v55 = (v54 ^ 0xC1359139) & (2 * (v54 & v51)) ^ v54 & v51;
  v56 = ((2 * (v54 ^ 0xC13FBB69)) ^ 0x86F55DA6) & (v54 ^ 0xC13FBB69) ^ (2 * (v54 ^ 0xC13FBB69)) & 0x437AAED2;
  v57 = v56 ^ ((a51 | 1) + 1091215692);
  v58 = (v56 ^ 0x42320C80) & (4 * v55) ^ v55;
  v59 = ((4 * v57) ^ 0xDEABB4C) & v57 ^ (4 * v57) & 0x437AAED0;
  v60 = (v59 ^ 0x16AAA50) & (16 * v58) ^ v58;
  v61 = ((16 * (v59 ^ 0x42100493)) ^ 0x37AAED30) & (v59 ^ 0x42100493) ^ (16 * (v59 ^ 0x42100493)) & 0x437AAED0;
  v62 = v60 ^ 0x437AAED3 ^ (v61 ^ 0x32AAC00) & (v60 << 8);
  *(*(v53 + 624) + 4 * (((LODWORD(STACK[0x424]) ^ (2 * ((v62 << 16) & 0x437A0000 ^ v62 ^ ((v62 << 16) ^ 0x2ED30000) & (((v61 ^ 0x405002C3) << 8) & 0x437A0000 ^ 0x1500000 ^ (((v61 ^ 0x405002C3) << 8) ^ 0x7AAE0000) & (v61 ^ 0x405002C3u))))) >> 2) ^ 0x51207)) = v52;
  return sub_22D356C0C();
}

uint64_t sub_22D39C914@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, unint64_t a31, unint64_t a32, unint64_t a33, unint64_t a34, uint64_t a35, unint64_t a36, unint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, unint64_t a48)
{
  v52 = 2066391179 * ((((v51 - 192) | 0x2C8348B) + (~(v51 - 192) | 0xFD37CB74)) ^ 0xADEFB692);
  *(v51 - 184) = v49;
  *(v51 - 192) = v48 - v52 - 202;
  *(v51 - 188) = (a1 ^ 0x46D4AFBA) - v52 + ((2 * a1) & 0x8DA95F74) - 1073752736;
  (*(v50 + 8 * (v48 ^ 0xAE4)))(v51 - 192);
  v53 = STACK[0x3A4];
  v54 = *(&off_284082B80 + (v48 ^ 0x3FA));
  if (SLODWORD(STACK[0x3A4]) > -21449755)
  {
    if (v53 > -21449748)
    {
      if (v53 == -21449747)
      {
        STACK[0x440] = STACK[0x340];
        STACK[0x248] = a34;
        LODWORD(STACK[0x3B4]) = 20;
        v55 = -21449746;
        goto LABEL_29;
      }

      if (v53 == -21449746)
      {
        STACK[0x440] = STACK[0x340];
        STACK[0x248] = v54;
        LODWORD(STACK[0x3B4]) = 14;
        v55 = -21449745;
        goto LABEL_29;
      }

      if (v53 != -21449745)
      {
        goto LABEL_30;
      }

      v56 = STACK[0x340];
      STACK[0x228] = a48;
      STACK[0x230] = v56;
      v57 = 942022032;
    }

    else
    {
      if (v53 == -21449754)
      {
        STACK[0x440] = STACK[0x340];
        STACK[0x248] = v54;
        LODWORD(STACK[0x3B4]) = 14;
        v55 = -21449753;
        goto LABEL_29;
      }

      if (v53 != -21449753)
      {
        if (v53 != -21449748)
        {
          goto LABEL_30;
        }

        STACK[0x440] = STACK[0x340];
        STACK[0x248] = a37;
        LODWORD(STACK[0x3B4]) = 20;
        v55 = -21449747;
        goto LABEL_29;
      }

      v59 = STACK[0x340];
      STACK[0x228] = a48;
      STACK[0x230] = v59;
      v57 = 1124450230;
    }
  }

  else
  {
    if (v53 <= -21449758)
    {
      switch(v53)
      {
        case -21449760:
          STACK[0x440] = STACK[0x340];
          STACK[0x248] = a32;
          LODWORD(STACK[0x3B4]) = 20;
          LODWORD(STACK[0x3A4]) = -21449759;
          goto LABEL_30;
        case -21449759:
          STACK[0x440] = STACK[0x340];
          STACK[0x248] = a33;
          LODWORD(STACK[0x3B4]) = 20;
          v55 = -21449758;
          break;
        case -21449758:
          STACK[0x440] = STACK[0x340];
          STACK[0x248] = v54;
          LODWORD(STACK[0x3B4]) = 14;
          v55 = -21449757;
          break;
        default:
          goto LABEL_30;
      }

LABEL_29:
      LODWORD(STACK[0x3A4]) = v55;
LABEL_30:
      JUMPOUT(0x22D380594);
    }

    if (v53 != -21449757)
    {
      if (v53 == -21449756)
      {
        STACK[0x440] = STACK[0x340];
        STACK[0x248] = a31;
        LODWORD(STACK[0x3B4]) = 20;
        v55 = -21449755;
      }

      else
      {
        if (v53 != -21449755)
        {
          goto LABEL_30;
        }

        STACK[0x440] = STACK[0x340];
        STACK[0x248] = a36;
        LODWORD(STACK[0x3B4]) = 20;
        v55 = -21449754;
      }

      goto LABEL_29;
    }

    v58 = STACK[0x340];
    STACK[0x228] = a48;
    STACK[0x230] = v58;
    v57 = -1114247517;
  }

  LODWORD(STACK[0x2DC]) = v57;
  return sub_22D35FB44();
}

uint64_t sub_22D39CE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v15 = v14[33] + v13;
  v16 = v14[74];
  v14[76] = v16;
  v14[77] = v15;
  v8 = *v14;
  v14[78] = &STACK[0x4F0] + *v14;
  *v14 = v8 + 320;
  LODWORD(STACK[0x384]) = *(v16 + 72);
  LODWORD(STACK[0x42C]) = *(v16 + 76);
  v9 = *(v16 + 80);
  LODWORD(STACK[0x26C]) = v9;
  v10 = *(v16 + 84);
  LODWORD(STACK[0x434]) = v10;
  v11 = *(v16 + 96);
  if (v11 == 2)
  {
    JUMPOUT(0x22D399AD8);
  }

  if (v11 != 1)
  {
    JUMPOUT(0x22D399AF8);
  }

  return sub_22D3999C8(a1, a2, v10, v9, a5, a6, a7, a8);
}

uint64_t sub_22D39CE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  v63 = v49;
  v53 = 62 * (v50 ^ 0x387);
  (*(v52 + 8 * (v50 + 1512)))(a42 + 16, 0x100004077774924);
  v54 = (*(v52 + 8 * (v50 ^ 0xAF4)))();
  *v51 = v54;
  v51[1] = (v54 ^ (v54 >> 30)) * (((v53 - 795) | 0x120) + 1812432892) + 1;
  return (*(v52 + 8 * v53))(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, v63, a44, a45, a46, a47, a48, a49);
}

uint64_t sub_22D39CEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, int a15)
{
  a14 = (843532609 * ((1476993483 - (&a14 ^ 0xC01CE42C | 0x580921CB) + (&a14 ^ 0xC01CE42C | 0xA7F6DE34)) ^ 0x3BA76E9D)) ^ 0xDFABAF92;
  v16 = (*(v15 + 18752))(&a14);
  return (*(v15 + 8 * ((1600 * (a15 == -1541908459)) ^ 0x141u)))(v16);
}

uint64_t sub_22D39D028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v28 = v26 - 1445;
  v29 = &a18;
  a18 = a16;
  HIDWORD(a19) = -843532609 * (((v29 | 0x329D081E) - (v29 & 0x329D081E)) ^ 0x6ED05C9B) + 893672457 * v25 + 160639446;
  LODWORD(a20) = (v28 - 322) ^ (843532609 * (((v29 | 0x329D081E) - (v29 & 0x329D081E)) ^ 0x6ED05C9B));
  (*(v27 + 8 * (v28 ^ 0xB5D)))(&a18);
  LODWORD(a18) = v28 + 843532609 * ((&a18 - 218162730 - 2 * (&a18 & 0xF2FF19D6)) ^ 0xAEB24D53) + 324;
  a19 = a16;
  a21 = v24;
  (*(v27 + 8 * (v28 + 1808)))(&a18);
  a18 = a16;
  HIDWORD(a19) = -843532609 * (&a18 ^ 0x5C4D5485) + 893672457 * v23 + 160639446;
  LODWORD(a20) = (v28 - 322) ^ (843532609 * (&a18 ^ 0x5C4D5485));
  (*(v27 + 8 * (v28 ^ 0xB5D)))(&a18);
  v30 = 1037613739 * (((&a18 | 0x6E3157C3) + (~&a18 | 0x91CEA83C)) ^ 0xBF337ABD);
  LODWORD(a21) = (v28 + 414) ^ v30;
  HIDWORD(a21) = (v22 ^ 0xDDBADFE7) + ((2 * v22) & 0xBB75BFCE) + ((v28 + 2088435192) & 0x838503FD) + 2010592097 + v30;
  a19 = a16;
  a20 = v21;
  v31 = (*(v27 + 8 * (v28 ^ 0xB3B)))(&a18);
  return (*(v27 + 8 * ((1972 * (a18 == -1541908459)) ^ v28)))(v31);
}

_BYTE *sub_22D39D24C(_BYTE *result, unsigned int a2, unint64_t a3)
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

os_log_t _ML3LogCategoryDefault()
{
  v0 = os_log_create("com.apple.amp.medialibrary", "Default");

  return v0;
}

os_log_t _ML3LogCategoryDefault_Oversize()
{
  v0 = os_log_create("com.apple.amp.medialibrary", "Default_Oversize");

  return v0;
}

os_log_t _ML3LogCategoryWriter()
{
  v0 = os_log_create("com.apple.amp.medialibrary", "Writer");

  return v0;
}

os_log_t _ML3LogCategoryService()
{
  v0 = os_log_create("com.apple.amp.medialibrary", "Service");

  return v0;
}

os_log_t _ML3LogCategoryMigration()
{
  v0 = os_log_create("com.apple.amp.medialibrary", "Migration");

  return v0;
}

os_log_t _ML3LogCategoryValidation()
{
  v0 = os_log_create("com.apple.amp.medialibrary", "Validation");

  return v0;
}

os_log_t _ML3LogCategoryCacheManagement()
{
  v0 = os_log_create("com.apple.amp.medialibrary", "CacheManagement");

  return v0;
}

os_log_t _ML3LogCategoryLibrary()
{
  v0 = os_log_create("com.apple.amp.medialibrary", "Library");

  return v0;
}

os_log_t _ML3LogCategorySortMap()
{
  v0 = os_log_create("com.apple.amp.medialibrary", "SortMap");

  return v0;
}

os_log_t _ML3LogCategoryImport()
{
  v0 = os_log_create("com.apple.amp.medialibrary", "Import");

  return v0;
}

os_log_t _ML3LogCategoryMultiUser()
{
  v0 = os_log_create("com.apple.amp.medialibrary", "MultiUser");

  return v0;
}

void sub_22D3A0414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22D3A06FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ML3DAAPCodeForImportPropertyKey(uint64_t a1)
{
  v2 = 1634025833;
  if (a1 <= 0x8000000)
  {
    result = 1634028907;
    if (a1 > 83886080)
    {
      switch(a1)
      {
        case 100663297:
          result = 1634030409;
          break;
        case 100663298:
          result = 1634026313;
          break;
        case 100663299:
          result = 1634027337;
          break;
        case 100663300:
          result = 1634029641;
          break;
        case 100663301:
          result = 1634030406;
          break;
        case 100663302:
          result = 1835625572;
          break;
        case 100663303:
          v14 = 29807;
          return v14 | 0x61650000u;
        case 100663304:
        case 100663306:
        case 100663310:
        case 100663315:
        case 100663322:
        case 100663324:
        case 100663326:
        case 100663327:
        case 100663328:
        case 100663334:
        case 100663340:
        case 100663341:
        case 100663342:
        case 100663345:
        case 100663346:
        case 100663347:
        case 100663353:
          return 0;
        case 100663305:
        case 100663309:
          result = 1835624804;
          break;
        case 100663307:
          result = 1634026317;
          break;
        case 100663308:
          return 1936020297;
        case 100663311:
        case 100663316:
          result = 1634026582;
          break;
        case 100663312:
          result = 1634026578;
          break;
        case 100663313:
          result = 1634026572;
          break;
        case 100663314:
          result = 1634027073;
          break;
        case 100663317:
          result = 1634026576;
          break;
        case 100663318:
          result = 1634028337;
          break;
        case 100663319:
          result = 1634028338;
          break;
        case 100663320:
          result = 1634952304;
          break;
        case 100663321:
          result = 1634952306;
          break;
        case 100663323:
          result = 1634955381;
          break;
        case 100663325:
          result = 1634031684;
          break;
        case 100663329:
        case 100663335:
          goto LABEL_260;
        case 100663330:
          result = 1634354517;
          break;
        case 100663331:
          v7 = 1064;
          goto LABEL_313;
        case 100663332:
          v7 = 1067;
          goto LABEL_313;
        case 100663333:
          v7 = 1056;
          goto LABEL_313;
        case 100663336:
          result = 1634365554;
          break;
        case 100663337:
          result = 1634366305;
          break;
        case 100663338:
        case 100663349:
          v12 = 28773;
          return v12 | 0x616A0000u;
        case 100663339:
          result = 1634028873;
          break;
        case 100663343:
          result = 1634353493;
          break;
        case 100663344:
          result = 1835103852;
          break;
        case 100663348:
          goto LABEL_141;
        case 100663350:
          goto LABEL_142;
        case 100663351:
          result = 1634366049;
          break;
        case 100663352:
          result = 1634361697;
          break;
        case 100663354:
          result = 1634358849;
          break;
        case 100663355:
          result = 1634362217;
          break;
        case 100663356:
          result = 1634365539;
          break;
        case 100663357:
          result = 1634366579;
          break;
        case 100663358:
          result = 1634355556;
          break;
        default:
          switch(a1)
          {
            case 117440513:
              result = 1634027588;
              break;
            case 117440514:
              return result;
            case 117440515:
              result = 1634027587;
              break;
            case 117440516:
              goto LABEL_144;
            case 117440517:
              result = 1634026830;
              break;
            case 117440518:
              result = 1634029134;
              break;
            case 117440519:
              result = 1634026322;
              break;
            case 117440520:
              result = 1634028888;
              break;
            case 117440521:
            case 117440522:
            case 117440523:
            case 117440524:
            case 117440525:
            case 117440526:
            case 117440527:
            case 117440532:
            case 117440534:
            case 117440539:
            case 117440547:
            case 117440548:
            case 117440549:
            case 117440550:
              return 0;
            case 117440528:
              result = 1634030148;
              break;
            case 117440529:
              result = 1634030165;
              break;
            case 117440530:
              result = 1634030160;
              break;
            case 117440531:
              result = 1634030163;
              break;
            case 117440533:
              result = 1634355312;
              break;
            case 117440535:
              v16 = 1634353509;
              goto LABEL_321;
            case 117440536:
              v2 = 1634353509;
              return (v2 - 32);
            case 117440537:
              result = 1634353484;
              break;
            case 117440538:
              result = 1634353491;
              break;
            case 117440540:
              result = 1634357330;
              break;
            case 117440541:
              result = 1634026319;
              break;
            case 117440542:
              result = 1634026312;
              break;
            case 117440543:
              result = 1634029889;
              break;
            case 117440544:
              result = 1634363509;
              break;
            case 117440545:
              result = 1634025807;
              break;
            case 117440546:
              result = 1634025800;
              break;
            default:
              switch(a1)
              {
                case 83886081:
                  result = 1634956658;
                  break;
                case 83886082:
                case 83886083:
                case 83886085:
                case 83886090:
                case 83886092:
                case 83886096:
                case 83886098:
                  return 0;
                case 83886084:
                  result = 1634955363;
                  break;
                case 83886086:
                  result = 1634953328;
                  break;
                case 83886087:
                case 83886089:
                  result = 1634955372;
                  break;
                case 83886088:
                  result = 1634954084;
                  break;
                case 83886091:
                  result = 1634954096;
                  break;
                case 83886093:
                  result = 1634951787;
                  break;
                case 83886094:
                  result = 1634951791;
                  break;
                case 83886095:
                  result = 1835624553;
                  break;
                case 83886097:
                  v15 = 1634036850;
                  return v15 | 1u;
                case 83886099:
                  result = 1634955891;
                  break;
                case 83886100:
                  v14 = 27762;
                  return v14 | 0x61650000u;
                default:
                  goto LABEL_260;
              }

              break;
          }

          break;
      }
    }

    else
    {
      if (a1 > 0x2000000)
      {
        if (a1 <= 50331648)
        {
          switch(a1)
          {
            case 33554433:
              return 1835626093;
            case 33554434:
              return 1634956142;
            case 33554435:
              return 1634952291;
            case 33554436:
              v19 = 29537;
              goto LABEL_158;
            case 33554437:
              return 1634956397;
            case 33554438:
              return 1634957682;
            case 33554439:
            case 33554441:
            case 33554442:
            case 33554449:
            case 33554456:
            case 33554457:
            case 33554458:
              return 0;
            case 33554440:
              return 1634954355;
            case 33554443:
              return 1634952301;
            case 33554444:
              return result;
            case 33554445:
              v20 = 1634951538;
              return v20 | 0x200u;
            case 33554446:
              return 1634026322;
            case 33554447:
              return 1634952290;
            case 33554448:
              v19 = 24946;
LABEL_158:
              result = (v19 | 0x61730000u) + 258;
              break;
            case 33554450:
              result = 1634952045;
              break;
            case 33554451:
              result = 1634169456;
              break;
            case 33554452:
              result = 1634952308;
              break;
            case 33554453:
              result = 1634954339;
              break;
            case 33554454:
              result = 1634034544;
              break;
            case 33554455:
              result = 1634026354;
              break;
            case 33554460:
              result = 1634037878;
              break;
            case 33554461:
              result = 1634029668;
              break;
            case 33554462:
              result = 1635218027;
              break;
            case 33554463:
              result = 1634563693;
              break;
            case 33554464:
              result = 1634563683;
              break;
            case 33554465:
              v18 = 1634563683;
              return (v18 + 11);
            case 33554466:
              result = 1634363760;
              break;
            default:
              goto LABEL_260;
          }

          return result;
        }

        if (a1 <= 0x3FFFFFF)
        {
          switch(a1)
          {
            case 50331649:
            case 50331650:
              result = 1634951794;
              break;
            case 50331651:
              result = 1634952036;
              break;
            case 50331652:
              v7 = 513;
              goto LABEL_199;
            case 50331653:
              result = 1634952299;
              break;
            case 50331654:
              result = 1634956652;
              break;
            case 50331655:
              result = 1634027349;
              break;
            case 50331656:
              result = 1634952561;
              break;
            case 50331657:
              result = 1634952813;
              break;
            case 50331658:
              result = 1634027336;
              break;
            case 50331659:
              result = 1634027333;
              break;
            case 50331660:
              result = 1634027332;
              break;
            case 50331661:
              result = 1634027346;
              break;
            case 50331662:
              result = 1634027606;
              break;
            case 50331663:
              result = 1634955894;
              break;
            case 50331664:
              result = 1634956146;
              break;
            case 50331665:
              result = 1634956148;
              break;
            case 50331666:
              result = 1634956144;
              break;
            case 50331667:
              result = 1634029142;
              break;
            case 50331668:
              result = 1634037872;
              break;
            default:
              goto LABEL_260;
          }

          return result;
        }

        if (a1 > 67108866)
        {
          if (a1 == 67108867 || a1 == 67108868)
          {
            return 0;
          }

          v6 = 5;
        }

        else
        {
          if (a1 == 0x4000000 || a1 == 67108865)
          {
            return 0;
          }

          v6 = 2;
        }

        v11 = v6 | 0x4000000;
        goto LABEL_86;
      }

      switch(a1)
      {
        case 16777217:
          return result;
        case 16777218:
        case 16777219:
        case 16777220:
        case 16777221:
        case 16777222:
        case 16777223:
        case 16777224:
        case 16777225:
        case 16777226:
        case 16777227:
        case 16777228:
        case 16777229:
        case 16777230:
        case 16777231:
        case 16777232:
        case 16777233:
        case 16777234:
        case 16777235:
        case 16777236:
        case 16777240:
        case 16777241:
        case 16777243:
        case 16777244:
        case 16777245:
        case 16777250:
        case 16777251:
        case 16777252:
        case 16777253:
          return 0;
        case 16777237:
          result = 1634952302;
          break;
        case 16777238:
          result = 1634956398;
          break;
        case 16777239:
          result = 1634026835;
          break;
        case 16777242:
          v7 = 1025;
LABEL_199:
          v17 = 24946;
          goto LABEL_200;
        case 16777246:
          result = 1634952047;
          break;
        case 16777247:
          result = 1634952289;
          break;
        case 16777248:
          result = 1634362177;
          break;
        case 16777249:
          result = 1634353494;
          break;
        default:
          goto LABEL_260;
      }
    }

    return result;
  }

  if (a1 > 201326592)
  {
    if (a1 <= 301989888)
    {
      if (a1 <= 0x10000000)
      {
        if (a1 <= 234881025)
        {
          if (a1 <= 218103811)
          {
            if (a1 > 218103809)
            {
              if (a1 == 218103810)
              {
                return 0;
              }

              v5 = 218103811;
            }

            else
            {
              if (a1 == 201326593)
              {
                return 0;
              }

              v5 = 201326594;
            }

            goto LABEL_127;
          }

          if (a1 <= 218103813)
          {
            if (a1 == 218103812)
            {
              return 1634759535;
            }

            v9 = 1634353509;
            return (v9 + 7);
          }

          if (a1 == 218103814)
          {
            return 1634357356;
          }

          v10 = 1;
        }

        else
        {
          if (a1 > 234881029)
          {
            if (a1 <= 234881032)
            {
              if (a1 == 234881030)
              {
                return 1835624804;
              }

              result = 1634025833;
              if (a1 != 234881032)
              {
                goto LABEL_260;
              }

              return result;
            }

            if (a1 == 234881033)
            {
              return 1634362194;
            }

            if (a1 != 234881034)
            {
              if (a1 == 251658243)
              {
                return 1634357859;
              }

              goto LABEL_260;
            }

            return 0;
          }

          if (a1 > 234881027)
          {
            if (a1 == 234881028)
            {
              return 1634354005;
            }

            else
            {
              return 1634357365;
            }
          }

          if (a1 == 234881026)
          {
            return 0;
          }

          v10 = 3;
        }

        v5 = v10 | 0xE000000;
LABEL_127:
        if (a1 != v5)
        {
          goto LABEL_260;
        }

        return 0;
      }

      if (a1 > 285212672)
      {
        switch(a1)
        {
          case 285212673:
LABEL_42:
            result = 1634951532;
            break;
          case 285212674:
LABEL_134:
            v7 = 20;
            goto LABEL_135;
          case 285212677:
          case 285212678:
          case 285212682:
          case 285212687:
            return 0;
          case 285212680:
            goto LABEL_108;
          case 285212681:
            result = 1634952047;
            break;
          case 285212683:
LABEL_144:
            v9 = 1634030414;
            return (v9 + 7);
          case 285212693:
            goto LABEL_112;
          case 285212695:
            goto LABEL_107;
          case 285212696:
            v14 = 16745;
            return v14 | 0x61650000u;
          case 285212697:
LABEL_141:
            result = 1634353513;
            break;
          case 285212699:
LABEL_133:
            v16 = 1634951538;
LABEL_321:
            result = (v16 - 17);
            break;
          default:
            goto LABEL_260;
        }

        return result;
      }

      if (a1 != 268435457)
      {
        if (a1 != 268435458)
        {
          if (a1 == 268435459)
          {
            v12 = 21060;
            return v12 | 0x616A0000u;
          }

          goto LABEL_260;
        }

        v7 = 17;
LABEL_313:
        v21 = 1634357828;
        return v21 | v7;
      }

      return 1936746852;
    }

    if (a1 > 318767119)
    {
      if (a1 > 369098758)
      {
        if (a1 <= 385875970)
        {
          if (a1 > 385875968)
          {
            if (a1 == 385875969)
            {
              return 1634353740;
            }

            else
            {
              return 1634353774;
            }
          }

          if (a1 == 369098759)
          {
            return 1936747625;
          }

          if (a1 == 369098760)
          {
            return 1936746860;
          }

          goto LABEL_260;
        }

        if (a1 <= 385875972)
        {
          if (a1 == 385875971)
          {
            return 1634353761;
          }

          else
          {
            return 1634353764;
          }
        }

        if (a1 == 385875973)
        {
          return 1634353779;
        }

        v5 = 385875974;
        goto LABEL_127;
      }

      if (a1 > 369098754)
      {
        if (a1 > 369098756)
        {
          if (a1 == 369098757)
          {
            return 1936748660;
          }

          else
          {
            return 1936749167;
          }
        }

        else if (a1 == 369098755)
        {
          return 1936748129;
        }

        else
        {
          return 1936748661;
        }
      }

      if (a1 == 318767120)
      {
        return 0;
      }

      if (a1 != 369098753)
      {
        if (a1 == 369098754)
        {
          return 1936746593;
        }

        goto LABEL_260;
      }

      return 1936746852;
    }

    if (a1 > 301989904)
    {
      if (a1 > 318767106)
      {
        if (a1 > 318767110)
        {
          result = 1634025833;
          if (a1 == 318767111)
          {
            return result;
          }

          v4 = 318767118;
LABEL_111:
          if (a1 == v4)
          {
LABEL_112:
            v12 = 16741;
            return v12 | 0x616A0000u;
          }

LABEL_260:
          v22 = [MEMORY[0x277CCA890] currentHandler];
          v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"uint32_t ML3DAAPCodeForImportPropertyKey(MLImportPropertyKey)"];
          [v22 handleFailureInFunction:v23 file:@"ML3DAAPImportUtils.m" lineNumber:464 description:{@"ML3DAAPCodeForImportPropertyKey - unhandled property key %x", a1}];

          return 0;
        }

        if (a1 != 318767107)
        {
          if (a1 != 318767108)
          {
            goto LABEL_260;
          }

LABEL_62:
          v7 = 18;
LABEL_135:
          v17 = 29537;
LABEL_200:
          v21 = v17 | 0x61730000;
          return v21 | v7;
        }

LABEL_137:
        v14 = 21326;
        return v14 | 0x61650000u;
      }

      if (a1 == 301989905)
      {
        return 0;
      }

      if (a1 != 318767105)
      {
        if (a1 != 318767106)
        {
          goto LABEL_260;
        }

        goto LABEL_99;
      }
    }

    else
    {
      if (a1 > 301989898)
      {
        if (a1 <= 301989902)
        {
          if (a1 == 301989899)
          {
            return 1634888036;
          }

          v4 = 301989901;
          goto LABEL_111;
        }

        if (a1 == 301989903)
        {
LABEL_108:
          v15 = 1634036850;
          return v15 | 1u;
        }

LABEL_107:
        v14 = 27762;
        return v14 | 0x61650000u;
      }

      if (a1 != 301989889)
      {
        if (a1 != 301989890)
        {
          if (a1 == 301989893)
          {
            return (v2 - 32);
          }

          goto LABEL_260;
        }

LABEL_99:
        v13 = 29537;
        return v13 | 0x61730000u;
      }
    }

LABEL_104:
    v13 = 24946;
    return v13 | 0x61730000u;
  }

  if (a1 <= 184549376)
  {
    if (a1 <= 150994947)
    {
      if (a1 > 150994945)
      {
        if (a1 == 150994946)
        {
          return 0;
        }

        v8 = 3;
      }

      else
      {
        if (a1 == 134217729)
        {
          return 1634026308;
        }

        v8 = 1;
      }

      v11 = v8 | 0x9000000;
LABEL_86:
      if (a1 != v11)
      {
        goto LABEL_260;
      }

      return 0;
    }

    switch(a1)
    {
      case 167772161:
        goto LABEL_104;
      case 167772162:
        goto LABEL_137;
      case 167772163:
        goto LABEL_133;
      case 167772164:
        goto LABEL_42;
      case 167772165:
        return 1634952048;
      case 167772166:
        return 1634953070;
      case 167772167:
        goto LABEL_99;
      case 167772168:
        goto LABEL_62;
      case 167772169:
        v18 = 1634956129;
        return (v18 + 11);
      case 167772170:
        goto LABEL_134;
      case 167772171:
        return 1634956131;
      case 167772172:
      case 167772189:
        goto LABEL_260;
      case 167772173:
      case 167772187:
      case 167772188:
        return 0;
      case 167772174:
        return 1936017732;
      case 167772175:
        return 1936015689;
      case 167772176:
        return 1936020041;
      case 167772177:
        return 1936020553;
      case 167772178:
        v20 = 1936015689;
        return v20 | 0x200u;
      case 167772179:
        return 1936017225;
      case 167772180:
        return (v2 - 32);
      case 167772181:
        return 1634357345;
      case 167772182:
        return 1634361708;
      case 167772183:
        return 1634026324;
      case 167772184:
        return 1634354547;
      case 167772185:
        return 1634954354;
      case 167772186:
        v15 = 1634951538;
        return v15 | 1u;
      case 167772190:
        return 1634354532;
      case 167772191:
        return 1634355536;
      case 167772192:
        return 1634358388;
      default:
        if (a1 == 150994948)
        {
          result = 1634364537;
        }

        else
        {
          if (a1 != 150994949)
          {
            goto LABEL_260;
          }

          result = 1634358355;
        }

        break;
    }
  }

  else
  {
    switch(a1)
    {
      case 184549377:
        return 1836082546;
      case 184549378:
        return 1936020297;
      case 184549379:
      case 184549383:
      case 184549385:
      case 184549390:
      case 184549393:
      case 184549394:
      case 184549395:
      case 184549396:
      case 184549397:
      case 184549398:
      case 184549399:
      case 184549400:
      case 184549401:
      case 184549402:
      case 184549403:
      case 184549404:
      case 184549405:
      case 184549406:
      case 184549407:
      case 184549412:
      case 184549413:
      case 184549414:
      case 184549415:
      case 184549416:
      case 184549426:
      case 184549430:
      case 184549431:
      case 184549433:
      case 184549434:
      case 184549435:
      case 184549436:
      case 184549437:
      case 184549438:
      case 184549439:
      case 184549440:
      case 184549441:
      case 184549442:
      case 184549446:
      case 184549449:
      case 184549454:
      case 184549457:
      case 184549458:
        return 0;
      case 184549380:
        return 1835362657;
      case 184549381:
        return 1634356309;
      case 184549382:
        return 1835362672;
      case 184549384:
        return 1835626093;
      case 184549386:
        return 1634037860;
      case 184549387:
        return 1634357327;
      case 184549388:
        return 1634357317;
      case 184549389:
        return 1634037859;
      case 184549391:
        goto LABEL_108;
      case 184549392:
        return 1836082031;
      case 184549408:
        return 1835624804;
      case 184549409:
        return 1634029683;
      case 184549410:
        return 1634029682;
      case 184549417:
        v2 = 1634353509;
        goto LABEL_245;
      case 184549418:
        v7 = 273;
        goto LABEL_313;
      case 184549419:
        return 1634358088;
      case 184549420:
        return 1634363766;
      case 184549422:
        return 1634353481;
      case 184549423:
        return 1634353486;
      case 184549424:
        return 1634353525;
      case 184549425:
        return 1634357833;
      case 184549427:
        return 1634358115;
      case 184549428:
        return 1634358128;
      case 184549429:
        return 1634366316;
      case 184549432:
LABEL_245:
        result = (v2 + 3810);
        break;
      case 184549443:
        result = 1634358889;
        break;
      case 184549444:
        v7 = 1066;
        goto LABEL_313;
      case 184549445:
        v7 = 1072;
        goto LABEL_313;
      case 184549447:
        v12 = 29518;
        return v12 | 0x616A0000u;
      case 184549448:
        result = 1634358856;
        break;
      case 184549450:
        return 1634026324;
      case 184549451:
        result = 1634353480;
        break;
      case 184549452:
LABEL_142:
        result = 1970039140;
        break;
      case 184549453:
        result = 1634362473;
        break;
      case 184549455:
        result = 1634357315;
        break;
      case 184549456:
        result = 1634358091;
        break;
      case 184549459:
        result = 1634357332;
        break;
      case 184549460:
        goto LABEL_107;
      case 184549461:
        result = 1634353490;
        break;
      case 184549462:
        v20 = 1634353509;
        return v20 | 0x200u;
      case 184549463:
        result = 1634353999;
        break;
      case 184549464:
        v18 = 1634365541;
        return (v18 + 11);
      case 184549465:
        result = 1634354025;
        break;
      case 184549466:
        result = 1634354040;
        break;
      case 184549467:
        result = 1634357840;
        break;
      case 184549468:
        result = 1634354035;
        break;
      case 184549469:
        result = 1634354515;
        break;
      default:
        goto LABEL_260;
    }
  }

  return result;
}

uint64_t TrackOrderForITDBTrackOrder(uint64_t result)
{
  switch(result)
  {
    case 1:
    case 2:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 19:
      return result;
    case 3:
    case 4:
    case 18:
    case 24:
    case 29:
    case 30:
    case 31:
    case 34:
    case 37:
    case 40:
    case 41:
      goto LABEL_4;
    case 20:
      result = 21;
      break;
    case 21:
      result = 22;
      break;
    case 22:
      result = 23;
      break;
    case 23:
      result = 24;
      break;
    case 25:
      result = 26;
      break;
    case 26:
      result = 27;
      break;
    case 27:
      result = 28;
      break;
    case 28:
      result = 29;
      break;
    case 32:
      result = 40;
      break;
    case 33:
      result = 41;
      break;
    case 35:
      result = 43;
      break;
    case 36:
      result = 20;
      break;
    case 38:
      result = 44;
      break;
    case 39:
      result = 45;
      break;
    case 42:
      result = 49;
      break;
    case 43:
      result = 50;
      break;
    case 44:
      result = 51;
      break;
    case 45:
      result = 52;
      break;
    case 46:
      result = 53;
      break;
    default:
      if (result == 123)
      {
        result = 112;
      }

      else
      {
LABEL_4:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t ITDBTrackOrderForTrackOrder(uint64_t result)
{
  switch(result)
  {
    case 1:
    case 2:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 19:
      return result;
    case 3:
    case 4:
    case 18:
    case 25:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 42:
    case 46:
    case 47:
    case 48:
      goto LABEL_4;
    case 20:
      result = 36;
      break;
    case 21:
      result = 20;
      break;
    case 22:
      result = 21;
      break;
    case 23:
      result = 22;
      break;
    case 24:
      result = 23;
      break;
    case 26:
      result = 25;
      break;
    case 27:
      result = 26;
      break;
    case 28:
      result = 27;
      break;
    case 29:
      result = 28;
      break;
    case 40:
      result = 32;
      break;
    case 41:
      result = 33;
      break;
    case 43:
      result = 35;
      break;
    case 44:
      result = 38;
      break;
    case 45:
      result = 39;
      break;
    case 49:
      result = 42;
      break;
    case 50:
      result = 43;
      break;
    case 51:
      result = 44;
      break;
    case 52:
      result = 45;
      break;
    case 53:
      result = 46;
      break;
    default:
      if (result == 112)
      {
        result = 123;
      }

      else
      {
LABEL_4:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t TrackOrderForDAAPSortType(int a1)
{
  if ((a1 - 1) > 0x4B)
  {
    return 1;
  }

  else
  {
    return dword_22D5C6B20[a1 - 1];
  }
}

uint64_t ITDBPlaylistLimitFromSmartPlaylistLimit(unsigned int a1)
{
  if (a1 < 5)
  {
    return (a1 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t SmartPlaylistLimitFromITDBPlaylistLimit(unsigned int a1)
{
  v1 = 0x40302010000uLL >> (8 * a1);
  if (a1 >= 6)
  {
    LOBYTE(v1) = 0;
  }

  return v1 & 7;
}

void MLParsedSmartInfoFromData(void *a1@<X0>, uint64_t a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a1;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  if ([v3 length] < 0x10)
  {
    v8 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v3;
      _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_ERROR, "Bogus smart playlist info: %{public}@", &v9, 0xCu);
    }
  }

  else
  {
    v4 = [v3 bytes];
    *a2 = *v4 != 0;
    *(a2 + 1) = *(v4 + 1) != 0;
    *(a2 + 2) = *(v4 + 2) != 0;
    v5 = *(v4 + 3);
    if (v5 >= 6)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0x40302010000uLL >> (8 * v5);
    }

    *(a2 + 3) = v6;
    v7 = bswap32(*(v4 + 8));
    *(a2 + 4) = bswap32(*(v4 + 4));
    *(a2 + 8) = v7;
    *(a2 + 12) = *(v4 + 12) != 0;
    *(a2 + 13) = *(v4 + 13) != 0;
    *(a2 + 14) = *(v4 + 14) != 0;
  }
}

__CFString *NSPersistentStringFromMLMediaType(int a1)
{
  if ((a1 ^ (a1 - 1)) <= a1 - 1)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *NSPersistentStringFromMLMediaType(MLMediaType)"];
    [v14 handleFailureInFunction:v15 file:@"MLTypes.m" lineNumber:69 description:@"This SPI may only be used with single types"];
  }

  if (a1 > 255)
  {
    v2 = @"MLMediaTypeMovie";
    v9 = @"MLMediaTypeVideoITunesU";
    v10 = @"MLMediaTypeHomeVideo";
    if (a1 != 0x2000)
    {
      v10 = 0;
    }

    if (a1 != 4096)
    {
      v9 = v10;
    }

    if (a1 != 2048)
    {
      v2 = v9;
    }

    v5 = @"MLMediaTypeVideoPodcast";
    v11 = @"MLMediaTypeTVShow";
    v12 = @"MLMediaTypeMusicVideo";
    if (a1 != 1024)
    {
      v12 = 0;
    }

    if (a1 != 512)
    {
      v11 = v12;
    }

    if (a1 != 256)
    {
      v5 = v11;
    }

    v8 = a1 <= 2047;
  }

  else
  {
    v2 = @"MLMediaTypeSong";
    v3 = @"MLMediaTypeVoiceMemo";
    v4 = @"MLMediaTypeITunesUAudio";
    if (a1 != 32)
    {
      v4 = 0;
    }

    if (a1 != 16)
    {
      v3 = v4;
    }

    if (a1 != 8)
    {
      v2 = v3;
    }

    v5 = @"MLMediaTypeMusicQuiz";
    v6 = @"MLMediaTypeAudioBook";
    v7 = @"MLMediaTypePodcast";
    if (a1 != 4)
    {
      v7 = 0;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1 != 1)
    {
      v5 = v6;
    }

    v8 = a1 <= 7;
  }

  if (v8)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

id NSStringFromMLMediaType(uint64_t a1)
{
  if (!a1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"(%d => '%@')", 0, @"MLMediaTypeUndefined"];
    goto LABEL_5;
  }

  if (a1 != 0xFFFFFF)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4 = v3;
    if ((~a1 & 0xFF00) == 0)
    {
      v5 = @"AnyVideo";
LABEL_21:
      [v4 addObject:v5];
      goto LABEL_22;
    }

    if ((a1 & 0x100) != 0)
    {
      [v3 addObject:@"VideoPodcast"];
      if ((a1 & 0x1000) == 0)
      {
LABEL_10:
        if ((a1 & 0x200) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }
    }

    else if ((a1 & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    [v4 addObject:@"VideoITunesU"];
    if ((a1 & 0x200) == 0)
    {
LABEL_11:
      if ((a1 & 0x400) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_18;
    }

LABEL_17:
    [v4 addObject:@"TVShow"];
    if ((a1 & 0x400) == 0)
    {
LABEL_12:
      if ((a1 & 0x800) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }

LABEL_18:
    [v4 addObject:@"MusicVideo"];
    if ((a1 & 0x800) == 0)
    {
LABEL_13:
      if ((a1 & 0x2000) == 0)
      {
LABEL_22:
        if (a1 == 0xFF)
        {
          v6 = @"AnyAudio";
LABEL_37:
          [v4 addObject:v6];
          goto LABEL_38;
        }

        if (a1)
        {
          [v4 addObject:@"MusicQuiz"];
          if ((a1 & 2) == 0)
          {
LABEL_26:
            if ((a1 & 4) == 0)
            {
              goto LABEL_27;
            }

            goto LABEL_33;
          }
        }

        else if ((a1 & 2) == 0)
        {
          goto LABEL_26;
        }

        [v4 addObject:@"AudioBook"];
        if ((a1 & 4) == 0)
        {
LABEL_27:
          if ((a1 & 8) == 0)
          {
            goto LABEL_28;
          }

          goto LABEL_34;
        }

LABEL_33:
        [v4 addObject:@"Podcast"];
        if ((a1 & 8) == 0)
        {
LABEL_28:
          if ((a1 & 0x10) == 0)
          {
            goto LABEL_29;
          }

          goto LABEL_35;
        }

LABEL_34:
        [v4 addObject:@"Song"];
        if ((a1 & 0x10) == 0)
        {
LABEL_29:
          if ((a1 & 0x20) == 0)
          {
            goto LABEL_38;
          }

LABEL_36:
          v6 = @"ITunesUAudio";
          goto LABEL_37;
        }

LABEL_35:
        [v4 addObject:@"VoiceMemo"];
        if ((a1 & 0x20) == 0)
        {
LABEL_38:
          v7 = [v4 count];
          v8 = MEMORY[0x277CCACA8];
          if (v7 == 1)
          {
            v9 = [v4 lastObject];
            [v8 stringWithFormat:@"MLMediaType%@", v9];
          }

          else
          {
            v9 = [v4 componentsJoinedByString:@"|"];
            [v8 stringWithFormat:@"MLMediaType [%@]", v9];
          }
          v10 = ;
          v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%d => '%@')", a1, v10];

          goto LABEL_42;
        }

        goto LABEL_36;
      }

      goto LABEL_20;
    }

LABEL_19:
    [v4 addObject:@"Movie"];
    if ((a1 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

LABEL_20:
    v5 = @"HomeVideo";
    goto LABEL_21;
  }

  [MEMORY[0x277CCACA8] stringWithFormat:@"(%d => '%@')", 0xFFFFFFLL, @"MLMediaTypeAny"];
  v2 = LABEL_5:;
LABEL_42:

  return v2;
}

uint64_t MLMediaTypeByStandardizingMediaType(uint64_t result)
{
  if ((result & 0x100) != 0)
  {
    return 256;
  }

  if ((result & 0x1000) != 0)
  {
    return 4096;
  }

  if ((result & 0x800) == 0)
  {
    return result;
  }

  if ((result & 4) != 0)
  {
    return 256;
  }

  if ((result & 0x20) != 0)
  {
    return 4096;
  }

  if ((result & 0x200) != 0)
  {
    return 512;
  }

  if ((result & 0x2000) != 0)
  {
    return 0x2000;
  }

  if ((result & 0x400) != 0)
  {
    return 1024;
  }

  return result;
}

id MLEntityClassForType(unint64_t a1)
{
  if (a1 <= 7 && ((0xBFu >> a1) & 1) != 0)
  {
    v2 = objc_opt_class();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __IgnorableArticles_block_invoke()
{
  v0 = ML3LocalizedSortingDetailsDictionary();
  v3 = v0;
  if (v0)
  {
    v1 = [v0 objectForKey:@"InsignificantSortPrefixes"];
    v2 = IgnorableArticles_articles;
    IgnorableArticles_articles = v1;

    v0 = v3;
  }

  if (!IgnorableArticles_articles)
  {
    IgnorableArticles_articles = &unk_2840C65A8;
    v0 = v3;
  }
}

const __CFString *ML3CreateSanitizedString(const __CFString *result)
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    Length = CFStringGetLength(result);
    MEMORY[0x28223BE20]();
    v4 = (v12 - ((v3 + 17) & 0xFFFFFFFFFFFFFFF0));
    HasPrefix = CFStringHasPrefix(v1, @"﻿");
    v6 = HasPrefix != 0;
    if (Length <= v6)
    {
      v11 = 0;
    }

    else
    {
      v7 = 0;
      if (HasPrefix)
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }

      do
      {
        CharacterAtIndex = CFStringGetCharacterAtIndex(v1, v6);
        if ((CharacterAtIndex - 1) <= 0xFFFC)
        {
          v4[v7++] = CharacterAtIndex;
        }

        v6 = v8;
      }

      while (Length > v8++);
      v11 = v7;
      if (Length < v7)
      {
        return CFStringCreateWithCharacters(*MEMORY[0x277CBECE8], v4, v11);
      }
    }

    v4[v11] = 0;
    return CFStringCreateWithCharacters(*MEMORY[0x277CBECE8], v4, v11);
  }

  return result;
}

id MLNSStringForBuiltInPreset(int a1, int a2)
{
  v3 = AllBuiltInPresetNames(a2);
  v4 = [v3 objectAtIndex:(a1 - 100)];

  return v4;
}

id AllBuiltInPresetNames(int a1)
{
  v1 = AllBuiltInPresetNames_names;
  v2 = &unk_27D9FD000;
  if (!AllBuiltInPresetNames_names)
  {
    v40 = a1;
    v3 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"Acoustic", @"BassBooster", @"BassReducer", @"Classical", @"Dance", @"Deep", @"Electronic", @"Flat", @"HipHop", @"Jazz", @"Latin", @"Loudness", @"Lounge", @"Piano", @"Pop", @"R&B", @"Rock", @"SmallSpeakers", @"SpokenWord", @"TrebleBooster", @"TrebleReducer", @"VocalBooster", 0}];
    v4 = AllBuiltInPresetNames_names;
    AllBuiltInPresetNames_names = v3;

    v33 = objc_alloc(MEMORY[0x277CBEA60]);
    v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v53 = [v39 localizedStringForKey:@"Acoustic" value:&stru_28408B690 table:@"MLLocalizable"];
    v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v54 = [v38 localizedStringForKey:@"Bass Booster" value:&stru_28408B690 table:@"MLLocalizable"];
    v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v52 = [v37 localizedStringForKey:@"Bass Reducer" value:&stru_28408B690 table:@"MLLocalizable"];
    v36 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v51 = [v36 localizedStringForKey:@"Classical" value:&stru_28408B690 table:@"MLLocalizable"];
    v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v50 = [v35 localizedStringForKey:@"Dance" value:&stru_28408B690 table:@"MLLocalizable"];
    v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v49 = [v34 localizedStringForKey:@"Deep" value:&stru_28408B690 table:@"MLLocalizable"];
    v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v48 = [v32 localizedStringForKey:@"Electronic" value:&stru_28408B690 table:@"MLLocalizable"];
    v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v46 = [v31 localizedStringForKey:@"Flat" value:&stru_28408B690 table:@"MLLocalizable"];
    v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v47 = [v30 localizedStringForKey:@"Hip Hop" value:&stru_28408B690 table:@"MLLocalizable"];
    v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v45 = [v29 localizedStringForKey:@"Jazz" value:&stru_28408B690 table:@"MLLocalizable"];
    v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v44 = [v28 localizedStringForKey:@"Latin" value:&stru_28408B690 table:@"MLLocalizable"];
    v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v43 = [v27 localizedStringForKey:@"Loudness" value:&stru_28408B690 table:@"MLLocalizable"];
    v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v42 = [v26 localizedStringForKey:@"Lounge" value:&stru_28408B690 table:@"MLLocalizable"];
    v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v41 = [v25 localizedStringForKey:@"Piano" value:&stru_28408B690 table:@"MLLocalizable"];
    v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v24 localizedStringForKey:@"Pop" value:&stru_28408B690 table:@"MLLocalizable"];
    v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v23 localizedStringForKey:@"R&B" value:&stru_28408B690 table:@"MLLocalizable"];
    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v22 localizedStringForKey:@"Rock" value:&stru_28408B690 table:@"MLLocalizable"];
    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v21 localizedStringForKey:@"Small Speakers" value:&stru_28408B690 table:@"MLLocalizable"];
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v18 localizedStringForKey:@"Spoken Word" value:&stru_28408B690 table:@"MLLocalizable"];
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v16 localizedStringForKey:@"Treble Booster" value:&stru_28408B690 table:@"MLLocalizable"];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"Treble Reducer" value:&stru_28408B690 table:@"MLLocalizable"];
    v2 = &unk_27D9FD000;
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"Vocal Booster" value:&stru_28408B690 table:@"MLLocalizable"];
    v11 = [v33 initWithObjects:{v53, v54, v52, v51, v50, v49, v48, v46, v47, v45, v44, v43, v42, v41, v20, v19, v17, v15, v5, v6, v8, v10, 0}];
    v12 = AllBuiltInPresetNames_localizedNames;
    AllBuiltInPresetNames_localizedNames = v11;

    a1 = v40;
    v1 = AllBuiltInPresetNames_names;
  }

  if (a1)
  {
    v13 = v2[200];
  }

  else
  {
    v13 = v1;
  }

  return v13;
}

id MLPresetNameForLocalizedPresetName(void *a1)
{
  v1 = a1;
  v2 = AllBuiltInPresetNames(1);
  v3 = [v2 indexOfObject:v1];

  v4 = v1;
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = AllBuiltInPresetNames(0);
    v4 = [v5 objectAtIndex:v3];
  }

  return v4;
}

id MLLocalizedPresetNameForPresetName(void *a1)
{
  v1 = a1;
  v2 = AllBuiltInPresetNames(0);
  v3 = [v2 indexOfObject:v1];

  v4 = v1;
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = AllBuiltInPresetNames(1);
    v4 = [v5 objectAtIndex:v3];
  }

  return v4;
}

void ML3MatchContainerImportItem::_createImportItemValue(unsigned int a1@<W1>, void *a2@<X2>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  if (a1 == 218103812)
  {
    operator new();
  }

  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  ML3DAAPContainerImportItem::_createImportItemValue(a1, v4, &v5);
}

void sub_22D3A4638(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_22D3A4650()
{
  (*(*v1 + 8))(v1);
  if (!v0)
  {
    JUMPOUT(0x22D3A4648);
  }

  JUMPOUT(0x22D3A4640);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t std::__shared_ptr_pointer<ML3MatchImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3MatchImportItem>,std::allocator<ML3MatchImportItem>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI13ML3ImportItemE27__shared_ptr_default_deleteIS1_18ML3MatchImportItemEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if ((a2 & a1) < 0 != __OFSUB__(a1, a2))
  {
    return strcmp((a1 & 0x7FFFFFFFFFFFFFFFLL), (a2 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t std::__shared_ptr_pointer<ML3MatchImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3MatchImportItem>,std::allocator<ML3MatchImportItem>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3MatchImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3MatchImportItem>,std::allocator<ML3MatchImportItem>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

id ML3MatchImportItem::getDeduplicationPredicates(ML3MatchImportItem *this)
{
  v46[2] = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
  v3 = (*(*this + 32))(this, 100663305);
  if (v3)
  {
    v4 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.store_saga_id" equalToInt64:v3];
    [v2 addObject:v4];
  }

  v5 = (*(*this + 32))(this, 100663308);
  if (v5)
  {
    v6 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.sync_id" equalToInt64:v5];
    v46[0] = v6;
    v7 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.store_saga_id" equalToInt64:0];
    v46[1] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:2];
    v9 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v8];
    [v2 addObject:v9];
  }

  v10 = (*(*this + 32))(this, 100663297);
  if (v10)
  {
    if ((*(*this + 32))(this, 100663314))
    {
      v11 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.account_id" equalToInt64:(*(*this + 32))(this, 100663312)];
      v45[0] = v11;
      v12 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.store_item_id" equalToInt64:v10];
      v45[1] = v12;
      v13 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.store_saga_id" equalToInt64:0];
      v45[2] = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:3];
      v15 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v14];
      [v2 addObject:v15];
    }

    else
    {
      v11 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.store_item_id" equalToInt64:v10];
      v44[0] = v11;
      v12 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.store_saga_id" equalToInt64:0];
      v44[1] = v12;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
      v14 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v13];
      [v2 addObject:v14];
    }

    v16 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.subscription_store_item_id" equalToInt64:v10];
    v43[0] = v16;
    v17 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.store_item_id" equalToInt64:0];
    v43[1] = v17;
    v18 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.store_saga_id" equalToInt64:0];
    v43[2] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:3];
    v20 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v19];
    [v2 addObject:v20];
  }

  v21 = (*(*this + 32))(this, 100663337);
  if (v21)
  {
    v22 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.subscription_store_item_id" equalToInt64:v21];
    v42[0] = v22;
    v23 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.store_saga_id" equalToInt64:0];
    v42[1] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
    v25 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v24];
    [v2 addObject:v25];

    if (!v10)
    {
      v26 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.store_item_id" equalToInt64:v21];
      v41[0] = v26;
      v27 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.store_saga_id" equalToInt64:0];
      v41[1] = v27;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
      v29 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v28];
      [v2 addObject:v29];
    }
  }

  (*(*this + 24))(&v37, this, 100663350);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v39, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v37 = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v39 = __p;
  }

  if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (!*(&v39.__r_.__value_.__s + 23))
    {
      goto LABEL_24;
    }

    v30 = &v39;
LABEL_22:
    v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:v30];
    v32 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.cloud_universal_library_id" equalToValue:v31];
    v40[0] = v32;
    v33 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.store_saga_id" equalToInt64:0];
    v40[1] = v33;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
    v35 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v34];
    [v2 addObject:v35];

    if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (v39.__r_.__value_.__l.__size_)
  {
    v30 = v39.__r_.__value_.__r.__words[0];
    goto LABEL_22;
  }

LABEL_23:
  operator delete(v39.__r_.__value_.__l.__data_);
LABEL_24:

  return v2;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void ML3ImportValue<std::string>::~ML3ImportValue(uint64_t a1)
{
  *a1 = &unk_28408AC60;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x2318CD250);
}

uint64_t ML3ImportValue<std::string>::~ML3ImportValue(uint64_t a1)
{
  *a1 = &unk_28408AC60;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_27875CD28, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_22D3A5388(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<long long>::vector[abi:ne200100](void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_22D3A5404(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

uint64_t ML3MatchImportItem::getDescription(ML3MatchImportItem *this)
{
  (*(*this + 32))(this, 100663305);
  v2 = (*(*this + 32))(this, 100663297);
  v3 = (*(*this + 32))(this, 100663337);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "<ML3MatchImportItem ", 20);
  *(&v12 + *(v12 - 24) + 8) = *(&v12 + *(v12 - 24) + 8) & 0xFFFFFFB5 | 8;
  v4 = MEMORY[0x2318CD100](&v12, this);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " sagaId=", 8);
  *(v5 + *(*v5 - 24) + 8) = *(v5 + *(*v5 - 24) + 8) & 0xFFFFFFB5 | 2;
  v6 = MEMORY[0x2318CD140]();
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ", storeId=", 10);
  v8 = MEMORY[0x2318CD140](v7, v2);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", subscriptionId=", 17);
  v10 = MEMORY[0x2318CD140](v9, v3);
  v17 = 62;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, &v17, 1);
  std::stringbuf::str();
  v12 = *MEMORY[0x277D82828];
  *(&v12 + *(v12 - 24)) = *(MEMORY[0x277D82828] + 24);
  v13 = MEMORY[0x277D82878] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v14);
  std::ostream::~ostream();
  return MEMORY[0x2318CD1F0](&v16);
}

uint64_t std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t a1)
{
  *(a1 + 160) = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  *(a1 + 112) = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, (a1 + 8));
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  *(a1 + 112) = v2;
  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  MEMORY[0x2318CD180](a1 + 16);
  *(a1 + 72) = 0;
  v7 = a1 + 72;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 104) = 16;
  *(a1 + 96) = a1 + 72;
  std::string::resize((a1 + 72), 0x16uLL, 0);
  v8 = *(a1 + 95);
  if (v8 < 0)
  {
    v8 = *(a1 + 80);
  }

  *(a1 + 48) = v7;
  *(a1 + 56) = v7;
  *(a1 + 64) = v7 + v8;
  return a1;
}

void sub_22D3A595C(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*v4);
  }

  *(v1 + 8) = v3;
  std::locale::~locale((v1 + 16));
  std::ostream::~ostream();
  MEMORY[0x2318CD1F0](v2);
  _Unwind_Resume(a1);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x2318CD0D0](v20, a1);
  if (v20[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&__b, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&__b);
      *(v6 + 36) = v9;
    }

    v11 = a2 + a3;
    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!v7)
    {
      goto LABEL_27;
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    v16 = v14 ? 0 : v15;
    if (v12 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v12 - a2) != v12 - a2)
    {
      goto LABEL_27;
    }

    if (v16 >= 1)
    {
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      v22 = v16;
      memset(&__b, v9, v16);
      *(&__b.__locale_ + v16) = 0;
      if (v22 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v18 = (*(*v7 + 96))(v7, p_b, v16);
      if (v22 < 0)
      {
        operator delete(__b.__locale_);
      }

      if (v18 != v16)
      {
        goto LABEL_27;
      }
    }

    if (v11 - v12 < 1 || (*(*v7 + 96))(v7, v12, v11 - v12) == v11 - v12)
    {
      *(v6 + 3) = 0;
    }

    else
    {
LABEL_27:
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x2318CD0E0](v20);
  return a1;
}

void sub_22D3A5C48(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x2318CD0E0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x22D3A5C1CLL);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x2318CD1F0](a1 + 112);
  return a1;
}

{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

BOOL ML3MatchImportItem::hasValue(ML3DAAPImportItem *this, uint64_t a2)
{
  if (a2 == 100663345)
  {
    return 1;
  }

  if ((a2 - 0x1000000) >> 25 > 4)
  {
    return 0;
  }

  return ML3DAAPImportItem::hasValue(this, a2);
}

unint64_t ML3MatchImportItem::getIntegerValue(ML3MatchImportItem *this, uint64_t a2)
{
  if (a2 == 100663345)
  {
    return (*(*this + 32))(this, 100663338) == 3;
  }

  if (a2 == 100663347)
  {
    ML3CPP::Element::childElementForCode(&v4, *(this + 8), 0x616A706Fu);
    if (v4)
    {
      v2 = ML3CPP::Element::integerValue(v4) == 0;
    }

    else
    {
      v2 = 1;
    }

    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    return v2;
  }

  return ML3DAAPTrackImportItem::getIntegerValue(this, a2);
}

void ML3MatchImportItem::getStringValue(ML3DAAPImportItem *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &unk_28408AC60;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v5 = (a3 + 16);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  if (a2 != 100663306)
  {
    ML3DAAPImportItem::getStringValue(this, a2, &v10);
    *(a3 + 8) = BYTE8(v10);
    std::string::operator=(v5, &v11);
    *&v10 = &unk_28408AC60;
    if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    v7 = v11.__r_.__value_.__r.__words[0];
    goto LABEL_18;
  }

  memset(&__str, 0, sizeof(__str));
  ML3CPP::Element::childElementForCode(&v14, *(this + 8), 0x6D61766Cu);
  if (v14 && ML3CPP::Element::integerValue(v14))
  {
    ML3CPP::Element::childElementForCode(&v13, *(this + 8), 0x61655270u);
    if (v13)
    {
      ML3CPP::Element::stringValue(&v10, *(v13 + 48), *(v13 + 64));
      *&__str.__r_.__value_.__l.__data_ = v10;
      __str.__r_.__value_.__r.__words[2] = v11.__r_.__value_.__r.__words[0];
      v6 = *(&v13 + 1);
    }

    else
    {
      ML3CPP::Element::childElementForCode(&v10, *(this + 8), 0x61655250u);
      v8 = *(&v13 + 1);
      v13 = v10;
      v6 = *(&v10 + 1);
      v9 = v10;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      if (v9)
      {
        ML3CPP::Element::stringValue(&v10, *(v9 + 48), *(v9 + 64));
        *&__str.__r_.__value_.__l.__data_ = v10;
        __str.__r_.__value_.__r.__words[2] = v11.__r_.__value_.__r.__words[0];
      }
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  std::string::operator=(v5, &__str);
  *(a3 + 8) = 1;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    v7 = __str.__r_.__value_.__r.__words[0];
LABEL_18:
    operator delete(v7);
  }
}

void sub_22D3A60E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  v31 = *(v29 - 56);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  *v26 = v27;
  if (*(v26 + 39) < 0)
  {
    operator delete(*v28);
  }

  _Unwind_Resume(exception_object);
}

void ML3MatchImportItem::~ML3MatchImportItem(ML3DAAPImportItem *this)
{
  ML3DAAPImportItem::~ML3DAAPImportItem(this);

  JUMPOUT(0x2318CD250);
}

void ML3DAAPImportItem::~ML3DAAPImportItem(ML3DAAPImportItem *this)
{
  *this = &unk_28408A4B0;
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table(this + 24);
}

{
  ML3DAAPImportItem::~ML3DAAPImportItem(this);

  JUMPOUT(0x2318CD250);
}

id ML3MatchContainerImportItem::getDeduplicationPredicates(ML3MatchContainerImportItem *this)
{
  v2 = MEMORY[0x277CBEB18];
  v3 = ML3DAAPContainerImportItem::getDeduplicationPredicates(this);
  v4 = [v2 arrayWithArray:v3];

  (*(*this + 24))(&v10, this, 184549417);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v10 = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v12 = __p;
  }

  size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  v6 = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v12.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v7 = ML3CPPBridgeString(&v12, 1);
    v8 = [ML3ComparisonPredicate predicateWithProperty:@"cloud_global_id" equalToValue:v7];
    [v4 addObject:v8];

    v6 = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  }

  if (v6 < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  return v4;
}

void sub_22D3A63EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ML3MatchContainerImportItem::getDescription(ML3MatchContainerImportItem *this)
{
  (*(*this + 24))(&v24);
  (*(*this + 32))(this, 184549408);
  (*(*this + 24))(&v16, this, 184549417);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v16 = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v23 = __p;
  }

  (*(*this + 24))(&v16, this, 184549452);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v16 = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v22 = __p;
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&v16);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "<ML3MatchContainerImportItem ", 29);
  *(&v16 + *(v16 - 3) + 8) = *(&v16 + *(v16 - 3) + 8) & 0xFFFFFFB5 | 8;
  v2 = MEMORY[0x2318CD100](&v16, this);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, " global_id=", 11);
  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v23;
  }

  else
  {
    v4 = v23.__r_.__value_.__r.__words[0];
  }

  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v23.__r_.__value_.__l.__size_;
  }

  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v4, size);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ", cloud_universal_library_id=", 29);
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v22;
  }

  else
  {
    v8 = v22.__r_.__value_.__r.__words[0];
  }

  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = v22.__r_.__value_.__l.__size_;
  }

  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", cloud_id=", 11);
  *(v11 + *(*v11 - 24) + 8) = *(v11 + *(*v11 - 24) + 8) & 0xFFFFFFB5 | 2;
  v12 = MEMORY[0x2318CD140]();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ", name=", 7);
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
  }

  else
  {
    v15 = v25;
  }

  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v15;
  }

  else
  {
    v13 = v15.__r_.__value_.__r.__words[0];
  }

  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v14 = v15.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v13, v14);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if ((*(this + 17) & 1) == 0)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, ", isCompleteItem=false", 22);
  }

  v15.__r_.__value_.__s.__data_[0] = 62;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, &v15, 1);
  std::stringbuf::str();
  v16 = *MEMORY[0x277D82828];
  *(&v16 + *(v16 - 3)) = *(MEMORY[0x277D82828] + 24);
  v17 = MEMORY[0x277D82878] + 16;
  if (v20 < 0)
  {
    operator delete(v19);
  }

  v17 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&__p);
  std::ostream::~ostream();
  MEMORY[0x2318CD1F0](&v21);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  v24 = &unk_28408AC60;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }
}

void sub_22D3A692C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  std::ostringstream::~ostringstream(&a15);
  if (*(v22 - 121) < 0)
  {
    operator delete(*(v22 - 144));
  }

  if (*(v22 - 89) < 0)
  {
    operator delete(*(v22 - 112));
  }

  *(v22 - 88) = &unk_28408AC60;
  if (*(v22 - 49) < 0)
  {
    operator delete(*(v22 - 72));
  }

  _Unwind_Resume(a1);
}

uint64_t ML3MatchContainerImportItem::hasValue(ML3DAAPImportItem *this, uint64_t a2)
{
  v2 = a2;
  result = ML3DAAPContainerImportItem::hasValue(this, a2);
  if ((*(this + 288) & 1) != 0 || *(this + 289) == 1)
  {
    v5 = (v2 - 184549380);
    if (v5 <= 0x34)
    {
      if (((1 << (v2 - 4)) & 0x1000E010008B85) != 0)
      {
        return result;
      }

      if (v5 == 12)
      {
        return 1;
      }
    }

    if ((v2 - 184549452) > 0xA || ((1 << (v2 - 76)) & 0x701) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t ML3MatchContainerImportItem::isValid(ML3DAAPImportItem *this)
{
  v6 = *MEMORY[0x277D85DE8];
  result = ML3DAAPContainerImportItem::isValid(this);
  if (result)
  {
    if (ML3DAAPImportItem::getIntegerValue(this, 184549408) == 1)
    {
      v3 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = 134217984;
        v5 = 1;
        _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_DEFAULT, "ignoring container with cloud id %lld", &v4, 0xCu);
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void ML3MatchContainerImportItem::~ML3MatchContainerImportItem(ML3MatchContainerImportItem *this)
{
  ML3DAAPContainerImportItem::~ML3DAAPContainerImportItem(this);

  JUMPOUT(0x2318CD250);
}

void ML3DAAPContainerImportItem::~ML3DAAPContainerImportItem(ML3DAAPContainerImportItem *this)
{
  *this = &unk_28408A3C0;
  v3 = (this + 256);
  std::vector<std::unordered_set<std::string>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 27);
  if (v2)
  {
    *(this + 28) = v2;
    operator delete(v2);
  }

  ML3DAAPImportItem::~ML3DAAPImportItem(this);
}

{
  ML3DAAPContainerImportItem::~ML3DAAPContainerImportItem(this);

  JUMPOUT(0x2318CD250);
}

void std::vector<std::unordered_set<std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v4 - 40);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(void **__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      if (*(v1 + 39) < 0)
      {
        operator delete(v1[2]);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

id ML3MatchAlbumImportItem::getDeduplicationPredicates(ML3MatchAlbumImportItem *this)
{
  v54[5] = *MEMORY[0x277D85DE8];
  v44 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v2 = (*(*this + 32))(this, 285212696);
  v3 = (*(*this + 32))(this, 285212683);
  (*(*this + 24))(v48, this, 285212673);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v50, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v48[0] = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v50 = __p;
  }

  (*(*this + 24))(v48, this, 285212699);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v47, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v48[0] = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v47 = __p;
  }

  (*(*this + 24))(v48, this, 285212682);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v46, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v48[0] = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v46 = __p;
  }

  size = HIBYTE(v50.__r_.__value_.__r.__words[2]);
  if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v50.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v5 = *(this + 10);
    v6 = ML3CPPBridgeString(&v50, 1);
    v7 = [v5 groupingKeyForString:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = HIBYTE(v47.__r_.__value_.__r.__words[2]);
  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v8 = v47.__r_.__value_.__l.__size_;
  }

  if (v8)
  {
    v9 = *(this + 10);
    v10 = ML3CPPBridgeString(&v47, 1);
    v42 = [v9 groupingKeyForString:v10];
  }

  else
  {
    v42 = 0;
  }

  (*(*this + 24))(v48, this, 285212697);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v45, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v48[0] = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v45 = __p;
  }

  v11 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v11 = v45.__r_.__value_.__l.__size_;
  }

  if (v11)
  {
    v12 = ML3CPPBridgeString(&v45, 1);
    v13 = [ML3ComparisonPredicate predicateWithProperty:@"cloud_library_id" equalToValue:v12];
    [v44 addObject:v13];
  }

  if (v2)
  {
    if ([v7 length] && objc_msgSend(v42, "length"))
    {
      v14 = [ML3ComparisonPredicate predicateWithProperty:@"store_id" equalToInt64:v2];
      v54[0] = v14;
      v15 = [ML3ComparisonPredicate predicateWithProperty:@"cloud_library_id" value:&stru_28408B690 comparison:1 caseInsensitive:1 treatNullAsString:&stru_28408B690];
      v54[1] = v15;
      v16 = [ML3ComparisonPredicate predicateWithProperty:@"album_artist.grouping_key" equalToValue:v42];
      v54[2] = v16;
      v17 = [ML3ComparisonPredicate predicateWithProperty:@"grouping_key" equalToValue:v7];
      v54[3] = v17;
      v18 = [ML3ComparisonPredicate predicateWithProperty:@"season_number" equalToInt64:v3];
      v54[4] = v18;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:5];
      v20 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v19];

      [v44 addObject:v20];
    }

    else
    {
      v21 = [ML3ComparisonPredicate predicateWithProperty:@"store_id" equalToInt64:v2, v42];
      v53[0] = v21;
      v22 = [ML3ComparisonPredicate predicateWithProperty:@"cloud_library_id" value:&stru_28408B690 comparison:1 caseInsensitive:1 treatNullAsString:&stru_28408B690];
      v53[1] = v22;
      v23 = [ML3ComparisonPredicate predicateWithProperty:@"album_artist.grouping_key" value:&stru_28408B690 comparison:1 caseInsensitive:1 treatNullAsString:&stru_28408B690];
      v53[2] = v23;
      v24 = [ML3ComparisonPredicate predicateWithProperty:@"grouping_key" value:&stru_28408B690 comparison:1 caseInsensitive:1 treatNullAsString:&stru_28408B690];
      v53[3] = v24;
      v25 = [ML3ComparisonPredicate predicateWithProperty:@"season_number" equalToInt64:v3];
      v53[4] = v25;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:5];
      v20 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v26];

      [v44 addObject:v20];
    }
  }

  if ([v7 length] && objc_msgSend(v43, "length"))
  {
    v27 = [ML3ComparisonPredicate predicateWithProperty:@"album_artist.grouping_key" equalToValue:v43];
    v52[0] = v27;
    v28 = [ML3ComparisonPredicate predicateWithProperty:@"grouping_key" equalToValue:v7];
    v52[1] = v28;
    v29 = [ML3ComparisonPredicate predicateWithProperty:@"season_number" equalToInt64:v3];
    v52[2] = v29;
    v30 = [ML3ComparisonPredicate predicateWithProperty:@"cloud_library_id" value:&stru_28408B690 comparison:1 caseInsensitive:1 treatNullAsString:&stru_28408B690];
    v52[3] = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:4];
    v32 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v31];

    [v44 addObject:v32];
  }

  if ([v7 length])
  {
    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      if (!v46.__r_.__value_.__l.__size_)
      {
        goto LABEL_47;
      }

      v33 = v46.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (!*(&v46.__r_.__value_.__s + 23))
      {
        goto LABEL_47;
      }

      v33 = &v46;
    }

    v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:v33];
    v35 = [ML3ComparisonPredicate predicateWithProperty:@"feed_url" equalToValue:v34];
    v51[0] = v35;
    v36 = [ML3ComparisonPredicate predicateWithProperty:@"grouping_key" equalToValue:v7];
    v51[1] = v36;
    v37 = [ML3ComparisonPredicate predicateWithProperty:@"cloud_library_id" value:&stru_28408B690 comparison:1 caseInsensitive:1 treatNullAsString:&stru_28408B690];
    v51[2] = v37;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:3];
    v39 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v38];

    [v44 addObject:v39];
  }

LABEL_47:
  v40 = v44;
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  return v40;
}

void sub_22D3A76A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  _Unwind_Resume(a1);
}

void ML3MatchAlbumImportItem::getDescription(ML3MatchAlbumImportItem *this)
{
  (*(*this + 24))(&v21);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v30, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v21 = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v30 = __p;
  }

  (*(*this + 24))(&v21, this, 285212699);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v29, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v21 = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v29 = __p;
  }

  (*(*this + 24))(&v21, this, 285212701);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v28, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v21 = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v28 = __p;
  }

  (*(*this + 24))(&v21, this, 285212697);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v27, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v21 = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v27 = __p;
  }

  (*(*this + 32))(this, 285212696);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v21);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "<ML3MatchAlbumImportItem ", 25);
  *(&v21 + *(v21 - 3) + 8) = *(&v21 + *(v21 - 3) + 8) & 0xFFFFFFB5 | 8;
  v2 = MEMORY[0x2318CD100](&v21, this);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, " name=", 6);
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v30;
  }

  else
  {
    v4 = v30.__r_.__value_.__r.__words[0];
  }

  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v30.__r_.__value_.__l.__size_;
  }

  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v4, size);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " cloudID=", 9);
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v27;
  }

  else
  {
    v8 = v27.__r_.__value_.__r.__words[0];
  }

  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = v27.__r_.__value_.__l.__size_;
  }

  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " artistName=", 12);
  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v29;
  }

  else
  {
    v12 = v29.__r_.__value_.__r.__words[0];
  }

  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v13 = v29.__r_.__value_.__l.__size_;
  }

  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v12, v13);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " artistCloudID=", 15);
  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v28;
  }

  else
  {
    v16 = v28.__r_.__value_.__r.__words[0];
  }

  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = v28.__r_.__value_.__l.__size_;
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v16, v17);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " storeId=", 9);
  *(v19 + *(*v19 - 24) + 8) = *(v19 + *(*v19 - 24) + 8) & 0xFFFFFFB5 | 2;
  v20 = MEMORY[0x2318CD140]();
  v31 = 62;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, &v31, 1);
  std::stringbuf::str();
  v21 = *MEMORY[0x277D82828];
  *(&v21 + *(v21 - 3)) = *(MEMORY[0x277D82828] + 24);
  v22 = MEMORY[0x277D82878] + 16;
  if (v25 < 0)
  {
    operator delete(v24);
  }

  v22 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&__p);
  std::ostream::~ostream();
  MEMORY[0x2318CD1F0](&v26);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }
}

void sub_22D3A7EEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v17 - 121) < 0)
  {
    operator delete(*(v17 - 144));
  }

  if (*(v17 - 89) < 0)
  {
    operator delete(*(v17 - 112));
  }

  if (*(v17 - 57) < 0)
  {
    operator delete(*(v17 - 80));
  }

  _Unwind_Resume(exception_object);
}

unint64_t ML3MatchAlbumImportItem::getIntegerValue(ML3MatchAlbumImportItem *this, int a2)
{
  v2 = 0;
  if (a2 <= 285212692)
  {
    switch(a2)
    {
      case 285212680:
        v3 = *(this + 8);
        v5 = 1634036851;
        break;
      case 285212681:
        v3 = *(this + 8);
        v5 = 1634952047;
        break;
      case 285212683:
        v3 = *(this + 8);
        v4 = 21333;
        goto LABEL_10;
      default:
        return v2;
    }

LABEL_14:
    ML3CPP::Element::childElementForCode(&v9, v3, v5);
    v6 = v10;
    if (v9)
    {
      v2 = ML3CPP::Element::integerValue(v9);
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (a2 == 285212693)
  {
    v3 = *(this + 8);
    v5 = 1634361669;
    goto LABEL_14;
  }

  if (a2 != 285212695)
  {
    if (a2 != 285212696)
    {
      return v2;
    }

    v3 = *(this + 8);
    v4 = 16745;
LABEL_10:
    v5 = v4 | 0x61650000;
    goto LABEL_14;
  }

  ML3CPP::Element::childElementForCode(&v9, *(this + 8), 0x61656C72u);
  v6 = v10;
  if (v9)
  {
    v7 = ML3CPP::Element::integerValue(v9);
    if (v7)
    {
      v2 = (v7 + -978307200.0);
      goto LABEL_20;
    }
  }

LABEL_19:
  v2 = 0;
LABEL_20:
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v2;
}

void ML3MatchAlbumImportItem::getStringValue(ML3MatchAlbumImportItem *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = &unk_28408AC60;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v4 = (a3 + 16);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  if (a2 > 285212696)
  {
    switch(a2)
    {
      case 285212697:
        ML3CPP::Element::childElementForCode(&__str, *(this + 8), 0x616A4169u);
        size = __str.__r_.__value_.__l.__size_;
        if (__str.__r_.__value_.__r.__words[0])
        {
          goto LABEL_19;
        }

        break;
      case 285212699:
        ML3CPP::Element::childElementForCode(&__str, *(this + 8), 0x61736161u);
        size = __str.__r_.__value_.__l.__size_;
        if (__str.__r_.__value_.__r.__words[0])
        {
          goto LABEL_19;
        }

        break;
      case 285212701:
        ML3CPP::Element::childElementForCode(&__str, *(this + 8), 0x61726964u);
        size = __str.__r_.__value_.__l.__size_;
        if (__str.__r_.__value_.__r.__words[0])
        {
          goto LABEL_19;
        }

        break;
      default:
        return;
    }
  }

  else
  {
    switch(a2)
    {
      case 285212673:
        ML3CPP::Element::childElementForCode(&__str, *(this + 8), 0x6173616Cu);
        size = __str.__r_.__value_.__l.__size_;
        if (__str.__r_.__value_.__r.__words[0])
        {
          goto LABEL_19;
        }

        break;
      case 285212674:
        ML3CPP::Element::childElementForCode(&__str, *(this + 8), 0x61737375u);
        size = __str.__r_.__value_.__l.__size_;
        if (__str.__r_.__value_.__r.__words[0])
        {
LABEL_19:
          ML3CPP::Element::stringValue(&__str, *(__str.__r_.__value_.__r.__words[0] + 48), *(__str.__r_.__value_.__r.__words[0] + 64));
          std::string::operator=(v4, &__str);
          *(a3 + 8) = 1;
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }
        }

        break;
      case 285212682:
        ML3CPP::Element::childElementForCode(&__str, *(this + 8), 0x61737075u);
        size = __str.__r_.__value_.__l.__size_;
        if (!__str.__r_.__value_.__r.__words[0])
        {
          break;
        }

        goto LABEL_19;
      default:
        return;
    }
  }

  if (size)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](size);
  }
}

void sub_22D3A8454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  *v15 = v16;
  if (*(v15 + 39) < 0)
  {
    operator delete(*v17);
  }

  _Unwind_Resume(exception_object);
}

BOOL ML3MatchAlbumImportItem::isValid(ML3MatchAlbumImportItem *this)
{
  (*(*this + 24))(&v3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v3 = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v5 = __p;
  }

  if ((SHIBYTE(v5.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return SHIBYTE(v5.__r_.__value_.__r.__words[2]) != 0;
  }

  v1 = v5.__r_.__value_.__l.__size_ != 0;
  operator delete(v5.__r_.__value_.__l.__data_);
  return v1;
}

void sub_22D3A85B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ML3MatchAlbumImportItem::~ML3MatchAlbumImportItem(id *this)
{
  ML3DAAPImportItem::~ML3DAAPImportItem(this);

  JUMPOUT(0x2318CD250);
}

{

  ML3DAAPImportItem::~ML3DAAPImportItem(this);
}

void ML3MatchArtistImportItem::getEffectiveSortAlbumArtist(ML3MatchArtistImportItem *this@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  ML3ImportItem::getSanitizedStringValue(&v7, this, 301989890);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, v8.__r_.__value_.__l.__data_, v8.__r_.__value_.__l.__size_);
    *&v7 = &unk_28408AC60;
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v9 = v8;
  }

  size = HIBYTE(v9.__r_.__value_.__r.__words[2]);
  v6 = HIBYTE(v9.__r_.__value_.__r.__words[2]);
  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v9.__r_.__value_.__l.__size_;
  }

  if (size && (a2 & 1) != 0)
  {
    ML3CPPSanitizeString(&v7, &v9);
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }

    v9.__r_.__value_.__r.__words[2] = v8.__r_.__value_.__r.__words[0];
    *&v9.__r_.__value_.__l.__data_ = v7;
    v6 = v8.__r_.__value_.__s.__data_[7];
  }

  *a3 = &unk_28408AC60;
  *(a3 + 8) = 1;
  if (v6 < 0)
  {
    std::string::__init_copy_ctor_external((a3 + 16), v9.__r_.__value_.__l.__data_, v9.__r_.__value_.__l.__size_);
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *(a3 + 16) = v9;
  }
}

void sub_22D3A87C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ML3MatchArtistImportItem::getEffectiveAlbumArtist(ML3MatchArtistImportItem *this@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  ML3ImportItem::getSanitizedStringValue(&v7, this, 301989889);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, v8.__r_.__value_.__l.__data_, v8.__r_.__value_.__l.__size_);
    *&v7 = &unk_28408AC60;
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v9 = v8;
  }

  size = HIBYTE(v9.__r_.__value_.__r.__words[2]);
  v6 = HIBYTE(v9.__r_.__value_.__r.__words[2]);
  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v9.__r_.__value_.__l.__size_;
  }

  if (size && (a2 & 1) != 0)
  {
    ML3CPPSanitizeString(&v7, &v9);
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }

    v9.__r_.__value_.__r.__words[2] = v8.__r_.__value_.__r.__words[0];
    *&v9.__r_.__value_.__l.__data_ = v7;
    v6 = v8.__r_.__value_.__s.__data_[7];
  }

  *a3 = &unk_28408AC60;
  *(a3 + 8) = 1;
  if (v6 < 0)
  {
    std::string::__init_copy_ctor_external((a3 + 16), v9.__r_.__value_.__l.__data_, v9.__r_.__value_.__l.__size_);
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *(a3 + 16) = v9;
  }
}

void sub_22D3A8960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ML3MatchArtistImportItem::getSortStringValue(ML3MatchArtistImportItem *this@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  *a3 = &unk_28408AC60;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = (a3 + 16);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  v7 = (*(*this + 192))(this);
  if (v7)
  {
    if (a2)
    {
      ML3ImportItem::getSanitizedStringValue(&v8, this, v7);
    }

    else
    {
      (*(*this + 24))(&v8, this, v7);
    }

    *(a3 + 8) = v9;
    std::string::operator=(v6, &__p);
    v8 = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_22D3A8AF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  *v17 = v18;
  if (*(v17 + 39) < 0)
  {
    operator delete(*v19);
  }

  _Unwind_Resume(exception_object);
}

id ML3MatchArtistImportItem::getDeduplicationPredicates(ML3MatchArtistImportItem *this)
{
  v26[3] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  (*(*this + 24))(v21, this, 301989899);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v21[0] = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v23 = __p;
  }

  size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v23.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v4 = ML3CPPBridgeString(&v23, 1);
    v5 = [ML3ComparisonPredicate predicateWithProperty:@"cloud_universal_library_id" equalToValue:v4];
    [v2 addObject:v5];
  }

  v6 = (*(*this + 32))(this, 301989893);
  (*(*this + 24))(v21, this, 301989889);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v21[0] = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v20 = __p;
  }

  v7 = *(this + 11);
  v8 = ML3CPPBridgeString(&v20, 0);
  v9 = [v7 groupingKeyForString:v8];

  if (v6)
  {
    v10 = [ML3ComparisonPredicate predicateWithProperty:@"store_id" equalToInt64:v6];
    if (v9)
    {
      v26[0] = v10;
      v11 = [ML3ComparisonPredicate predicateWithProperty:@"cloud_universal_library_id" value:&stru_28408B690 comparison:1];
      v26[1] = v11;
      v12 = [ML3ComparisonPredicate predicateWithProperty:@"grouping_key" equalToValue:v9];
      v26[2] = v12;
      [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:3];
    }

    else
    {
      v25[0] = v10;
      v11 = [ML3ComparisonPredicate predicateWithProperty:@"cloud_universal_library_id" value:&stru_28408B690 comparison:1 caseInsensitive:1];
      v25[1] = v11;
      v12 = [ML3ComparisonPredicate predicateWithProperty:@"grouping_key" value:&stru_28408B690 comparison:1 caseInsensitive:1 treatNullAsString:&stru_28408B690];
      v25[2] = v12;
      [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
    }
    v13 = ;
    v14 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v13];

    [v2 addObject:v14];
  }

  if ([v9 length])
  {
    v15 = [ML3ComparisonPredicate predicateWithProperty:@"grouping_key" equalToValue:v9];
    v24[0] = v15;
    v16 = [ML3ComparisonPredicate predicateWithProperty:@"cloud_universal_library_id" value:&stru_28408B690 comparison:1];
    v24[1] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
    v18 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v17];

    [v2 addObject:v18];
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  return v2;
}

void sub_22D3A9028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  v31 = v30;

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

uint64_t ML3MatchArtistImportItem::getDescription(ML3MatchArtistImportItem *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v25);
  (*(*this + 24))(v22, this, 301989889);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v22[0] = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v24 = __p;
  }

  (*(*this + 24))(v22, this, 301989890);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v22[0] = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v21 = __p;
  }

  (*(*this + 24))(v22, this, 301989899);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v22[0] = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v20 = __p;
  }

  (*(*this + 32))(this, 301989893);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, "<ML3MatchArtistImportItem ", 26);
  *(&v25 + *(v25 - 24) + 8) = *(&v25 + *(v25 - 24) + 8) & 0xFFFFFFB5 | 8;
  v2 = MEMORY[0x2318CD100](&v25, this);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, " name=", 6);
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v24;
  }

  else
  {
    v4 = v24.__r_.__value_.__r.__words[0];
  }

  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v24.__r_.__value_.__l.__size_;
  }

  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v4, size);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " artistType=", 12);
  v8 = MEMORY[0x2318CD120](v7, *(this + 10));
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " sortName=", 10);
  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v21;
  }

  else
  {
    v10 = v21.__r_.__value_.__r.__words[0];
  }

  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = v21.__r_.__value_.__l.__size_;
  }

  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " cloudLibraryID=", 16);
  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v20;
  }

  else
  {
    v14 = v20.__r_.__value_.__r.__words[0];
  }

  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = v20.__r_.__value_.__l.__size_;
  }

  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v14, v15);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " storeID=", 9);
  *(v17 + *(*v17 - 24) + 8) = *(v17 + *(*v17 - 24) + 8) & 0xFFFFFFB5 | 2;
  v18 = MEMORY[0x2318CD140]();
  LOBYTE(v22[0]) = 62;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v22, 1);
  std::stringbuf::str();
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  v25 = *MEMORY[0x277D82828];
  *(&v25 + *(v25 - 24)) = *(MEMORY[0x277D82828] + 24);
  v26 = MEMORY[0x277D82878] + 16;
  if (v28 < 0)
  {
    operator delete(v27[7].__locale_);
  }

  v26 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v27);
  std::ostream::~ostream();
  return MEMORY[0x2318CD1F0](&v29);
}

void sub_22D3A967C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  std::ostringstream::~ostringstream(&a36);
  _Unwind_Resume(a1);
}

unint64_t ML3MatchArtistImportItem::getIntegerValue(ML3MatchArtistImportItem *this, int a2)
{
  v2 = 0;
  if (a2 > 301989902)
  {
    if (a2 != 301989903)
    {
      if (a2 != 301989904)
      {
        return v2;
      }

      ML3CPP::Element::childElementForCode(&v8, *(this + 8), 0x61656C72u);
      v5 = v9;
      if (v8)
      {
        v6 = ML3CPP::Element::integerValue(v8);
        if (v6)
        {
          v2 = (v6 + -978307200.0);
          if (!v5)
          {
            return v2;
          }

          goto LABEL_15;
        }
      }

LABEL_17:
      v2 = 0;
      if (!v5)
      {
        return v2;
      }

      goto LABEL_15;
    }

    v3 = *(this + 8);
    v4 = 1634036851;
  }

  else if (a2 == 301989893)
  {
    v3 = *(this + 8);
    v4 = 1634025833;
  }

  else
  {
    if (a2 != 301989901)
    {
      return v2;
    }

    v3 = *(this + 8);
    v4 = 1634353509;
  }

  ML3CPP::Element::childElementForCode(&v8, v3, v4);
  v5 = v9;
  if (!v8)
  {
    goto LABEL_17;
  }

  v2 = ML3CPP::Element::integerValue(v8);
  if (v5)
  {
LABEL_15:
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v2;
}

void ML3MatchArtistImportItem::getStringValue(ML3MatchArtistImportItem *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = &unk_28408AC60;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v4 = (a3 + 16);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  if (a2 == 301989899)
  {
    ML3CPP::Element::childElementForCode(&__str, *(this + 8), 0x61726964u);
    size = __str.__r_.__value_.__l.__size_;
    if (!__str.__r_.__value_.__r.__words[0])
    {
      goto LABEL_11;
    }

LABEL_9:
    ML3CPP::Element::stringValue(&__str, *(__str.__r_.__value_.__r.__words[0] + 48), *(__str.__r_.__value_.__r.__words[0] + 64));
    std::string::operator=(v4, &__str);
    *(a3 + 8) = 1;
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    goto LABEL_11;
  }

  if (a2 == 301989890)
  {
    ML3CPP::Element::childElementForCode(&__str, *(this + 8), 0x61737361u);
    size = __str.__r_.__value_.__l.__size_;
    if (!__str.__r_.__value_.__r.__words[0])
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (a2 != 301989889)
  {
    return;
  }

  ML3CPP::Element::childElementForCode(&__str, *(this + 8), 0x61736172u);
  size = __str.__r_.__value_.__l.__size_;
  if (__str.__r_.__value_.__r.__words[0])
  {
    goto LABEL_9;
  }

LABEL_11:
  if (size)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](size);
  }
}

void sub_22D3A9A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  *v15 = v16;
  if (*(v15 + 39) < 0)
  {
    operator delete(*v17);
  }

  _Unwind_Resume(exception_object);
}

BOOL ML3MatchArtistImportItem::isValid(ML3MatchArtistImportItem *this)
{
  (*(*this + 24))(&v3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v3 = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v5 = __p;
  }

  if ((SHIBYTE(v5.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return SHIBYTE(v5.__r_.__value_.__r.__words[2]) != 0;
  }

  v1 = v5.__r_.__value_.__l.__size_ != 0;
  operator delete(v5.__r_.__value_.__l.__data_);
  return v1;
}

void sub_22D3A9B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ML3MatchArtistImportItem::~ML3MatchArtistImportItem(id *this)
{
  ML3DAAPImportItem::~ML3DAAPImportItem(this);

  JUMPOUT(0x2318CD250);
}

{

  ML3DAAPImportItem::~ML3DAAPImportItem(this);
}

id ML3MatchDeleteArtistImportItem::getDeduplicationPredicates(const UInt8 *this)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v1 = ML3CPPBridgeString(this + 80, 1);
  v2 = [ML3ComparisonPredicate predicateWithProperty:@"cloud_universal_library_id" equalToValue:v1];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

void sub_22D3A9D30(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t ML3MatchDeleteArtistImportItem::getDescription(ML3MatchDeleteArtistImportItem *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "<ML3MatchDeleteArtistImportItem ", 32);
  *(&v12 + *(v12 - 24) + 8) = *(&v12 + *(v12 - 24) + 8) & 0xFFFFFFB5 | 8;
  v2 = MEMORY[0x2318CD100](&v12, this);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, " cloudId=", 9);
  v6 = *(this + 10);
  v5 = this + 80;
  v4 = v6;
  v7 = v5[23];
  if (v7 >= 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  if (v7 >= 0)
  {
    v9 = v5[23];
  }

  else
  {
    v9 = *(v5 + 1);
  }

  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v8, v9);
  v17 = 62;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, &v17, 1);
  std::stringbuf::str();
  v12 = *MEMORY[0x277D82828];
  *(&v12 + *(v12 - 24)) = *(MEMORY[0x277D82828] + 24);
  v13 = MEMORY[0x277D82878] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v14);
  std::ostream::~ostream();
  return MEMORY[0x2318CD1F0](&v16);
}

BOOL ML3MatchDeleteArtistImportItem::isValid(ML3MatchDeleteArtistImportItem *this)
{
  v1 = *(this + 103);
  if (v1 < 0)
  {
    v1 = *(this + 11);
  }

  return v1 != 0;
}

void ML3MatchDeleteArtistImportItem::~ML3MatchDeleteArtistImportItem(void **this)
{
  *this = &unk_2840834A0;
  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table((this + 3));

  JUMPOUT(0x2318CD250);
}

{
  *this = &unk_2840834A0;
  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table((this + 3));
}

id ML3MatchDeleteAlbumImportItem::getDeduplicationPredicates(const UInt8 *this)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v1 = ML3CPPBridgeString(this + 80, 1);
  v2 = [ML3ComparisonPredicate predicateWithProperty:@"cloud_library_id" equalToValue:v1];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

void sub_22D3AA130(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t ML3MatchDeleteAlbumImportItem::getDescription(ML3MatchDeleteAlbumImportItem *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "<ML3MatchDeleteAlbumImportItem ", 31);
  *(&v12 + *(v12 - 24) + 8) = *(&v12 + *(v12 - 24) + 8) & 0xFFFFFFB5 | 8;
  v2 = MEMORY[0x2318CD100](&v12, this);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, " cloudId=", 9);
  v6 = *(this + 10);
  v5 = this + 80;
  v4 = v6;
  v7 = v5[23];
  if (v7 >= 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  if (v7 >= 0)
  {
    v9 = v5[23];
  }

  else
  {
    v9 = *(v5 + 1);
  }

  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v8, v9);
  v17 = 62;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, &v17, 1);
  std::stringbuf::str();
  v12 = *MEMORY[0x277D82828];
  *(&v12 + *(v12 - 24)) = *(MEMORY[0x277D82828] + 24);
  v13 = MEMORY[0x277D82878] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v14);
  std::ostream::~ostream();
  return MEMORY[0x2318CD1F0](&v16);
}

BOOL ML3MatchDeleteAlbumImportItem::isValid(ML3MatchDeleteAlbumImportItem *this)
{
  v1 = *(this + 103);
  if (v1 < 0)
  {
    v1 = *(this + 11);
  }

  return v1 != 0;
}

void ML3MatchDeleteAlbumImportItem::~ML3MatchDeleteAlbumImportItem(void **this)
{
  *this = &unk_284083588;
  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table((this + 3));

  JUMPOUT(0x2318CD250);
}

{
  *this = &unk_284083588;
  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table((this + 3));
}

uint64_t ML3MatchLibraryPinImportItem::getDescription(ML3MatchLibraryPinImportItem *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v30);
  (*(*this + 24))(&v27[24], this, 419430401);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v29, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    *&v27[24] = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v29 = __p;
  }

  (*(*this + 24))(&v27[24], this, 419430405);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v27, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    *&v27[24] = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *v27 = __p;
  }

  v2 = (*(*this + 32))(this, 419430403);
  v3 = (*(*this + 32))(this, 419430402);
  v4 = (*(*this + 32))(this, 419430404);
  if ((v2 - 1) > 6)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_22D5C80F0[v2 - 1];
  }

  if (ML3LibraryPinnedEntityTypeDescription(ML3EntityType)::onceToken != -1)
  {
    dispatch_once(&ML3LibraryPinnedEntityTypeDescription(ML3EntityType)::onceToken, &__block_literal_global_290);
  }

  v6 = ML3LibraryPinnedEntityTypeDescription(ML3EntityType)::__pinnedEntityTypeDescription;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{v5, *v27, *&v27[16]}];
  v8 = [v6 objectForKey:v7];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = &stru_28408B690;
  }

  v10 = v9;

  if (ML3LibraryPinDefaultActionDescription(long long)::onceToken != -1)
  {
    dispatch_once(&ML3LibraryPinDefaultActionDescription(long long)::onceToken, &__block_literal_global_159);
  }

  v11 = ML3LibraryPinDefaultActionDescription(long long)::__pinnedEntityDefaultActionDescription;
  v12 = [MEMORY[0x277CCABB0] numberWithLongLong:v4];
  v13 = [v11 objectForKey:v12];

  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = &stru_28408B690;
  }

  v15 = v14;

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "<ML3MatchLibraryPinImportItem ", 30);
  *(&v30 + *(v30 - 24) + 8) = *(&v30 + *(v30 - 24) + 8) & 0xFFFFFFB5 | 8;
  v16 = MEMORY[0x2318CD100](&v30, this);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " cloudLibraryID=", 16);
  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v29;
  }

  else
  {
    v17 = v29.__r_.__value_.__r.__words[0];
  }

  v18 = strlen(v17);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v17, v18);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " sagaID=", 8);
  *(v16 + *(*v16 - 24) + 8) = *(v16 + *(*v16 - 24) + 8) & 0xFFFFFFB5 | 2;
  v19 = MEMORY[0x2318CD140](v16, v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " entityType=", 12);
  v20 = [(__CFString *)v10 UTF8String];
  v21 = strlen(v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v20, v21);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " defaultAction=", 15);
  v22 = [(__CFString *)v15 UTF8String];
  v23 = strlen(v22);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v22, v23);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " pinnedPositionUUID=", 20);
  if (v27[23] >= 0)
  {
    v24 = v27;
  }

  else
  {
    v24 = *v27;
  }

  v25 = strlen(v24);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v24, v25);
  v27[24] = 62;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, &v27[24], 1);
  std::stringbuf::str();

  if ((v27[23] & 0x80000000) != 0)
  {
    operator delete(*v27);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  v30 = *MEMORY[0x277D82828];
  *(&v30 + *(v30 - 24)) = *(MEMORY[0x277D82828] + 24);
  v31 = MEMORY[0x277D82878] + 16;
  if (v33 < 0)
  {
    operator delete(v32[7].__locale_);
  }

  v31 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v32);
  std::ostream::~ostream();
  return MEMORY[0x2318CD1F0](&v34);
}