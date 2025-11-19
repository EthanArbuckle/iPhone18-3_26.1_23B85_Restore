uint64_t sub_2447CF020@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  LODWORD(STACK[0x950]) = 0;
  LODWORD(STACK[0x8B0]) = 0;
  LODWORD(STACK[0x860]) = 0;
  LODWORD(STACK[0x908]) = 0;
  LODWORD(STACK[0x8B8]) = 0;
  LODWORD(STACK[0x868]) = 0;
  LODWORD(STACK[0x890]) = 0;
  LODWORD(STACK[0x870]) = 0;
  LODWORD(STACK[0x878]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  LODWORD(STACK[0x5D0]) = v2 ^ 0xAAEB8CC ^ (30 * (a2 ^ 0x25BA));
  STACK[0x8E8] = STACK[0x698] ^ 0x5EE7390FD692763DLL;
  v3 = *(a1 + 8 * a2);
  LODWORD(STACK[0x960]) = 1;
  STACK[0x910] = STACK[0x6B0];
  LODWORD(STACK[0x948]) = 1;
  LODWORD(STACK[0x900]) = 1;
  LODWORD(STACK[0x8A8]) = 1;
  LODWORD(STACK[0x84C]) = 1;
  LODWORD(STACK[0x850]) = 1;
  LODWORD(STACK[0x858]) = 1;
  LODWORD(STACK[0x8E0]) = 1;
  LODWORD(STACK[0x8A0]) = 1;
  LODWORD(STACK[0x898]) = 1;
  return v3();
}

uint64_t sub_2447CF280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0x960]) = 0;
  LODWORD(STACK[0x948]) = 0;
  LODWORD(STACK[0x950]) = 0;
  LODWORD(STACK[0x900]) = 0;
  LODWORD(STACK[0x8A8]) = 0;
  LODWORD(STACK[0x84C]) = 0;
  LODWORD(STACK[0x850]) = 0;
  LODWORD(STACK[0x8B0]) = 0;
  LODWORD(STACK[0x858]) = 0;
  LODWORD(STACK[0x860]) = 0;
  LODWORD(STACK[0x908]) = 0;
  LODWORD(STACK[0x8B8]) = 0;
  LODWORD(STACK[0x868]) = 0;
  LODWORD(STACK[0x890]) = 0;
  LODWORD(STACK[0x870]) = 0;
  LODWORD(STACK[0x878]) = 0;
  LODWORD(STACK[0x8E0]) = 0;
  LODWORD(STACK[0x8A0]) = 0;
  LODWORD(STACK[0x898]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  STACK[0x8E8] = STACK[0x698] ^ 0x5EE7390FD692763DLL;
  LODWORD(STACK[0x800]) = ((v7 ^ 0x62FB) + 1649803451) ^ v8;
  v9 = *(a7 + 8 * v7);
  STACK[0x910] = STACK[0x6B0];
  return v9();
}

uint64_t sub_2447CF458@<X0>(char a1@<W1>, uint64_t a2@<X6>, char a3@<W8>)
{
  LODWORD(STACK[0x908]) = 0;
  LODWORD(STACK[0x890]) = 0;
  LODWORD(STACK[0x870]) = 0;
  LODWORD(STACK[0x878]) = 0;
  v9 = STACK[0x6C0];
  v10 = (LODWORD(STACK[0x6C0]) - 2068364256);
  *(v8 + (LODWORD(STACK[0x6C0]) - 2068364258)) = v4 ^ LODWORD(STACK[0x654]) ^ 0x65 ^ (v5 - 7);
  v11 = STACK[0x9A8];
  v12 = *(STACK[0x9A8] + 9);
  v13 = STACK[0x6B0];
  v14 = ((v10 - 1) ^ 0x26FFFD7A7FFDDDFBLL) - 0x26FFFD7A7FFDDDFBLL + ((2 * (v10 - 1)) & 0xFFFBBBF6);
  *(&STACK[0x8AE0] + v14) = STACK[0x6B0] ^ 0x75;
  *(v8 + v14) = v12 ^ BYTE1(v4) ^ 0x5A;
  v15 = v11[10];
  v16 = (v10 ^ 0x7BEEB7DFF7DEAFFFLL) - 0x7BEEB7DFF7DEAFFFLL + ((2 * v10) & 0x1EFBD5FFELL);
  *(&STACK[0x8AE0] + v16) = (BYTE1(v13) ^ a1) - ((2 * (BYTE1(v13) ^ a1)) & 0xE3) - 15;
  *(v8 + v16) = v15 ^ BYTE2(v4) ^ 0xD4;
  v17 = STACK[0x928];
  LODWORD(v14) = *(STACK[0x928] + (((v11[11] >> 3) | (32 * v11[11])) ^ 0xDBLL));
  HIDWORD(v18) = v14 ^ 0xFFFFFFF9;
  LODWORD(v18) = v14 << 24;
  v19 = ((v10 + 1) ^ 0x5EB76FDFACFBEFEALL) - 0x5EB76FDFACFBEFEALL + ((2 * (v10 + 1)) & 0x159F7DFD4);
  *(&STACK[0x8AE0] + v19) = (BYTE2(v13) ^ 0x87) - ((2 * (BYTE2(v13) ^ 0x87)) & 0xE3) - 15;
  *(v8 + v19) = (7 * ((v18 >> 30) ^ 0x88)) ^ HIBYTE(v4) ^ 0xE3;
  LODWORD(v19) = v11[12];
  v20 = ((v10 + 2) ^ 0x7E8FFE7B7FEFAFF3) - 0x7E8FFE7B7FEFAFF3 + ((2 * (v10 + 2)) & 0xFFDF5FE6);
  *(&STACK[0x8AE0] + v20) = (BYTE3(v13) ^ 0xC0) - ((2 * (BYTE3(v13) ^ 0xC0)) & 0xE3) - 15;
  LODWORD(v19) = v19 ^ STACK[0x698];
  HIDWORD(v18) = v19 ^ 2;
  LODWORD(v18) = (v19 ^ 0x78) << 24;
  LODWORD(v19) = *(v17 + ((v18 >> 27) ^ 0xDBLL));
  HIDWORD(v18) = v19 ^ 0x39;
  LODWORD(v18) = v19 << 24;
  *(v8 + v20) = 7 * ((v18 >> 30) ^ 0x88) - ((14 * ((v18 >> 30) ^ 0x88)) & 0xE3) - 15;
  LOBYTE(v14) = v11[13];
  v21 = ((v10 + 3) ^ 0xFBF6FDBFBDFF5F7FLL) + 0x40902404200A081 + ((2 * (v10 + 3)) & 0x17BFEBEFELL);
  *(&STACK[0x8AE0] + v21) = (BYTE4(v13) ^ 0x15) - 2 * ((BYTE4(v13) ^ 0x15) & 0xF9 ^ BYTE4(v13) & 8) - 15;
  *(v8 + v21) = a3 ^ 0x98 ^ v14;
  LOBYTE(v14) = v11[14];
  v22 = ((v10 + 4) ^ 0xFF7F7EFFBDEFDBDFLL) + 0x80810042102421 + ((2 * (v10 + 4)) & 0x17BDFB7BELL);
  *(&STACK[0x8AE0] + v22) = (BYTE5(v13) ^ v7) - 2 * ((BYTE5(v13) ^ v7) & 0xF7 ^ BYTE5(v13) & 6) - 15;
  *(v8 + v22) = v6 ^ v14 ^ 0xC1;
  v23 = (v10 + 5);
  STACK[0x910] = HIBYTE(v13) ^ 0xC9322115C087544DLL;
  LOBYTE(v10) = v11[15];
  v24 = (v23 ^ 0x7EEFBFCF47FF9BCFLL) - 0x7EEFBFCF47FF9BCFLL + ((2 * v23) & 0x8FFF379ELL);
  *(&STACK[0x8AE0] + v24) = (BYTE6(v13) ^ 0x32) - ((2 * (BYTE6(v13) ^ 0x32)) & 0xE3) - 15;
  *(v8 + v24) = v3 ^ v10 ^ 0xF3;
  LODWORD(STACK[0x6C0]) = v9 + 8;
  LODWORD(STACK[0x654]) = v11[16] + (~(2 * v11[16]) | 0x1D) - 14;
  v25 = *(a2 + 8 * v5);
  LODWORD(STACK[0x960]) = 1;
  STACK[0x8E8] = 0x5EE7390FD4A21F47;
  LODWORD(STACK[0x948]) = 1;
  LODWORD(STACK[0x950]) = 1;
  LODWORD(STACK[0x900]) = 1;
  LODWORD(STACK[0x8A8]) = 1;
  LODWORD(STACK[0x84C]) = 1;
  LODWORD(STACK[0x850]) = 1;
  LODWORD(STACK[0x8B0]) = 1;
  LODWORD(STACK[0x858]) = 1;
  LODWORD(STACK[0x860]) = 1;
  LODWORD(STACK[0x8B8]) = 1;
  LODWORD(STACK[0x868]) = 1;
  LODWORD(STACK[0x8E0]) = 1;
  LODWORD(STACK[0x8A0]) = 1;
  LODWORD(STACK[0x898]) = 1;
  LODWORD(STACK[0x8F8]) = 1;
  return v25();
}

uint64_t sub_2447CFA1C@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, unint64_t a5@<X7>, int a6@<W8>)
{
  LODWORD(STACK[0x960]) = 0;
  LODWORD(STACK[0x948]) = 0;
  LODWORD(STACK[0x950]) = 0;
  LODWORD(STACK[0x900]) = 0;
  LODWORD(STACK[0x8A8]) = 0;
  LODWORD(STACK[0x84C]) = 0;
  LODWORD(STACK[0x850]) = 0;
  LODWORD(STACK[0x8B0]) = 0;
  LODWORD(STACK[0x858]) = 0;
  LODWORD(STACK[0x860]) = 0;
  LODWORD(STACK[0x908]) = 0;
  LODWORD(STACK[0x8B8]) = 0;
  LODWORD(STACK[0x868]) = 0;
  LODWORD(STACK[0x890]) = 0;
  LODWORD(STACK[0x870]) = 0;
  LODWORD(STACK[0x878]) = 0;
  LODWORD(STACK[0x8E0]) = 0;
  LODWORD(STACK[0x8A0]) = 0;
  LODWORD(STACK[0x898]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  STACK[0x9FB1] = 0x9A95949796919093;
  LODWORD(STACK[0x9FB9]) = -1634101093;
  LOWORD(STACK[0x9FBD]) = -25441;
  v8 = STACK[0x580];
  v9 = ((STACK[0x580] & 0xF ^ 0xB) + 164) ^ 0x3284;
  v10 = (a6 + 10188);
  STACK[0x978] = v10;
  v11 = STACK[0x8F0];
  v12 = *(STACK[0x8F0] + (v9 ^ v10));
  HIDWORD(v13) = v12 ^ 1;
  LODWORD(v13) = ~v12 << 24;
  *(&STACK[0x9FB0] + (v13 >> 29)) = -110;
  v14 = STACK[0x584];
  *((((LODWORD(STACK[0x584]) ^ 0x5698229Fu) % 0xF) | &STACK[0x9FB0]) + 1) = STACK[0x9FB1];
  v15 = LODWORD(STACK[0x588]) ^ 0x416FD0B7;
  *(((v15 % 0xE) | &STACK[0x9FB0]) + 2) = STACK[0x9FB2];
  v16 = STACK[0x58C];
  LODWORD(v10) = LODWORD(STACK[0x58C]) ^ 0x5F9A1E0B;
  *(((v10 % 0xD) | &STACK[0x9FB0]) + 3) = STACK[0x9FB3];
  LODWORD(v10) = ((2 * (v15 - v10)) & 0x57FBFC8E) + ((v15 - v10) ^ 0xABFDFE47);
  v17 = (v8 ^ 0x62439CEB) - 1409417657 - v10;
  *((((v17 ^ 0xCF2FE9C8) % 0xC) | &STACK[0x9FB0]) + 4) = STACK[0x9FB4];
  LODWORD(v10) = v10 + 1409417657;
  v18 = (v8 ^ v14 ^ v10 ^ 0x34DBBE74) + 2009509654 - 2 * ((v8 ^ v14 ^ v10 ^ 0x34DBBE74) & 0x77C6AF1E ^ (v8 ^ v14 ^ v10) & 8);
  v19 = v18 ^ 0x77C6AF16;
  *((((v18 ^ 0x77C6AF16u) % 0xB) | &STACK[0x9FB0]) + 5) = STACK[0x9FB5];
  v20 = ((2 * (v10 + (v16 ^ 0x63AFED29))) & 0x7FF9FF3E) + ((v10 + (v16 ^ 0x63AFED29)) ^ 0xBFFCFF9F);
  *((((v20 + 1073938529) % 0xAu) | &STACK[0x9FB0]) + 6) = STACK[0x9FB6];
  LODWORD(v10) = ((2 * (v18 ^ v16)) & 0xEB34B2F0 ^ 0x28108070) + (v18 ^ v16 ^ 0x61F31B47);
  v21 = *(v11 + (((LOBYTE(STACK[0x9FB7]) ^ 0x92) - 92) ^ 0x8ELL));
  HIDWORD(v13) = v21 ^ 1;
  LODWORD(v13) = ~v21 << 24;
  *((((v10 - 1973049720) % 9u) | &STACK[0x9FB0]) + 7) = (v13 >> 29) - ((2 * (v13 >> 29)) & 0x24) - 110;
  v22 = ((2 * (v19 - v10 + 763325066)) & 0xFF36FFC8) + ((v19 - v10 + 763325066) ^ 0x7F9B7FE4);
  v23 = v20 - ((2 * v20 + 1318282748) & 0x67E81DEC) + 457032180;
  v24 = v23 ^ v17 ^ (v22 - 2140897252);
  *(&STACK[0x9FB0] | v24 & 7 ^ 0xELL) = STACK[0x9FB8];
  v25 = ((2 * ((v10 - 763325066) ^ (v20 - 625430689))) & 0x36EDFCEC) + ((v10 - 763325066) ^ (v20 - 625430689) ^ 0x1B76FE76);
  v26 = v22 - v25;
  v27 = STACK[0x970];
  v28 = *(STACK[0x970] + (((LOBYTE(STACK[0x9FB9]) ^ 0x92) - 92) ^ 0x4ELL)) - 49;
  HIDWORD(v13) = v28 ^ 0x11;
  LODWORD(v13) = (v28 ^ 0x20) << 24;
  *(&STACK[0x9FB0] + ((*(STACK[0x8C8] + (((v26 - 1680114030) % 7u + 110) ^ 0x64)) + 78) ^ a1) + 9) = (v13 >> 29) - ((2 * (v13 >> 29)) & 0x24) - 110;
  LODWORD(v10) = *(v11 + (((v23 ^ 0x33F40EF6u) % 6 + 164) ^ 0x8ELL));
  HIDWORD(v13) = v10 ^ 1;
  LODWORD(v13) = ~v10 << 24;
  LOBYTE(v10) = v13 >> 29;
  HIDWORD(v13) = LOBYTE(STACK[0x9FBA]);
  LODWORD(v13) = (HIDWORD(v13) ^ 0x92) << 24;
  v29 = (v13 >> 25) - ((2 * (v13 >> 25)) & 0xFFFFFFDA) + 109;
  LOBYTE(v29) = *(a2 + (((v13 >> 25) - ((2 * (v13 >> 25)) & 0xDA) + 109) ^ 0x5ALL)) ^ ((v29 ^ 0x3C) - ((2 * (v29 ^ 0x3C) + 60) & 0x6A) + 83) ^ a3;
  *(&STACK[0x9FB0] + v10 + 10) = (~(38 * v29) | 0xDB) - 13 * v29 - 109;
  *((((v25 - 460783222) % 5u) | &STACK[0x9FB0]) + 0xB) = STACK[0x9FBB];
  *(&STACK[0x9FB0] | v24 & 3 ^ 0xELL) = STACK[0x9FBC];
  LODWORD(v10) = v25 - ((2 * v25 - 492497628) & 0xAD30453E) - 940921551;
  LODWORD(STACK[0x584]) = v10;
  *((((v10 ^ 0x5698229F) % 3) | &STACK[0x9FB0]) + 0xD) = STACK[0x9FBD];
  v30 = (v23 ^ 0x92F6656) - v26 - 681904026;
  *(&STACK[0x9FB0] | 0xE | v30 & 1) = STACK[0x9FBE];
  LODWORD(STACK[0x9FB0]) = -1852796014;
  LOWORD(STACK[0x9FB4]) = -26730;
  LOBYTE(STACK[0x9FB6]) = -108;
  LOBYTE(STACK[0x9FB7]) = -107;
  LOWORD(STACK[0x9FB8]) = -25702;
  LOBYTE(STACK[0x9FBA]) = -104;
  LOBYTE(STACK[0x9FBB]) = v7;
  LOBYTE(STACK[0x9FBC]) = -98;
  LOBYTE(STACK[0x9FBD]) = a4;
  LOWORD(STACK[0x9FBE]) = -25188;
  v31 = STACK[0x5D8];
  v32 = (&STACK[0x9FB0] | STACK[0x5D8] & 0xF);
  LOBYTE(STACK[0x9FB0]) = *v32;
  *v32 = -110;
  v33 = STACK[0x5C8];
  v34 = *(v11 + (((LOBYTE(STACK[0x9FB1]) ^ 0x92) - 92) ^ 0x8ELL));
  HIDWORD(v13) = v34 ^ 1;
  LODWORD(v13) = ~v34 << 24;
  v35 = ((LODWORD(STACK[0x5C8]) ^ 0xAEBDFE37) % 0xF) | &STACK[0x9FB0];
  LOBYTE(STACK[0x9FB1]) = *(v35 + 1);
  *(v35 + 1) = (v13 >> 29) - ((2 * (v13 >> 29)) & 0x24) - 110;
  LODWORD(v35) = *(v27 + (((LOBYTE(STACK[0x9FB2]) ^ 0x92) - 92) ^ 0x4ELL)) - 49;
  HIDWORD(v13) = v35 ^ 0x11;
  LODWORD(v13) = (v35 ^ 0x20) << 24;
  v36 = LODWORD(STACK[0x5D0]) ^ 0x188B21A9;
  LOBYTE(STACK[0x9FB2]) = *(((v36 % 0xE) | &STACK[0x9FB0]) + 2);
  *(((v36 % 0xE) | &STACK[0x9FB0]) + 2) = (v13 >> 29) - ((2 * (v13 >> 29)) & 0x24) - 110;
  v37 = STACK[0x9FB3];
  LOBYTE(STACK[0x9FB3]) = *((((v6 ^ 0x1225AB6Fu) % 0xD) | &STACK[0x9FB0]) + 3);
  *((((v6 ^ 0x1225AB6Fu) % 0xD) | &STACK[0x9FB0]) + 3) = v37;
  LODWORD(v35) = ((2 * (v36 - (v6 ^ 0x1225AB6F))) & 0x7E5FAFCE) + ((v36 - (v6 ^ 0x1225AB6F)) ^ 0xBF2FD7E7);
  v38 = (v31 ^ 0xB45E2060) - 1087383577 - v35;
  v39 = STACK[0x9FB4];
  LOBYTE(STACK[0x9FB4]) = *((((v38 ^ 0xCF2FE9C8) % 0xC) | &STACK[0x9FB0]) + 4);
  *((((v38 ^ 0xCF2FE9C8) % 0xC) | &STACK[0x9FB0]) + 4) = v39;
  LODWORD(v35) = v35 + 1087383577;
  v40 = (v31 ^ v33 ^ v35 ^ 0x1AE3DE57) + 268778945 - 2 * ((v31 ^ v33 ^ v35 ^ 0x1AE3DE57) & 0x10053DC9 ^ (v31 ^ v33 ^ v35) & 8);
  v41 = v40 ^ 0x10053DC1;
  LOBYTE(v33) = STACK[0x9FB5];
  LOBYTE(STACK[0x9FB5]) = *((((v40 ^ 0x10053DC1u) % 0xB) | &STACK[0x9FB0]) + 5);
  *((((v40 ^ 0x10053DC1u) % 0xB) | &STACK[0x9FB0]) + 5) = v33;
  v42 = ((2 * (v35 + (v6 ^ 0x2E10584D))) & 0xBFFD77D8) + ((v35 + (v6 ^ 0x2E10584D)) ^ 0xDFFEBBEC);
  LOBYTE(v31) = STACK[0x9FB6];
  LOBYTE(STACK[0x9FB6]) = *((((v42 + 536953876) % 0xAu) | &STACK[0x9FB0]) + 6);
  *((((v42 + 536953876) % 0xAu) | &STACK[0x9FB0]) + 6) = v31;
  LODWORD(v35) = ((2 * (v40 ^ v6)) & 0x7F2CAE3E ^ 0x7C288A18) + (v40 ^ v6 ^ 0x81833293);
  LOBYTE(v40) = STACK[0x9FB7];
  LOBYTE(STACK[0x9FB7]) = *((((v35 + 1080666337) % 9u) | &STACK[0x9FB0]) + 7);
  *((((v35 + 1080666337) % 9u) | &STACK[0x9FB0]) + 7) = v40;
  v43 = ((2 * (v41 - v35 + 2004576305)) & 0xBA6EBFFE) + ((v41 - v35 + 2004576305) ^ 0xDD375FFF);
  v44 = v42 - ((2 * v42 + 244313442) & 0x29A9BAD6) + 1545393180;
  v45 = v44 ^ v38 ^ (v43 + 583573505);
  v46 = (&STACK[0x9FB0] | v45 & 7 ^ 0xBLL);
  LOBYTE(v31) = STACK[0x9FB8];
  LOBYTE(STACK[0x9FB8]) = *v46;
  *v46 = v31;
  v47 = ((2 * ((v35 - 2004576305) ^ (v42 - 1162415342))) & 0xFA4F7FEE) + ((v35 - 2004576305) ^ (v42 - 1162415342) ^ 0x7D27BFF7);
  LODWORD(v46) = v43 - v47;
  v48 = ((v43 - v47 - 1611636744) % 7u) | &STACK[0x9FB0];
  LOBYTE(v43) = STACK[0x9FB9];
  LOBYTE(STACK[0x9FB9]) = *(v48 + 9);
  *(v48 + 9) = v43;
  LOBYTE(v43) = STACK[0x9FBA];
  LOBYTE(STACK[0x9FBA]) = *((((v44 ^ 0x94D4DD6B) % 6) | &STACK[0x9FB0]) + 0xA);
  *((((v44 ^ 0x94D4DD6B) % 6) | &STACK[0x9FB0]) + 0xA) = v43;
  v49 = &STACK[0x9FB0] + (7 * ((*(STACK[0x938] + ((32 * ((v47 - 2099757047) % 5u)) ^ a5)) + 103) ^ 0xEE));
  LOBYTE(v43) = STACK[0x9FBB];
  LOBYTE(STACK[0x9FBB]) = v49[11];
  v49[11] = v43;
  v50 = &STACK[0x9FB0] | v45 & 3 ^ 0xFLL;
  LOBYTE(v43) = STACK[0x9FBC];
  LOBYTE(STACK[0x9FBC]) = *v50;
  *v50 = v43;
  LODWORD(v50) = *(v27 + (((LOBYTE(STACK[0x9FBD]) ^ 0x92) - 92) ^ 0x4ELL)) - 49;
  HIDWORD(v13) = v50 ^ 0x11;
  LODWORD(v13) = (v50 ^ 0x20) << 24;
  v51 = v47 - ((2 * v47 + 524522018) & 0x5D7BFC6E) - 1101019320;
  LODWORD(STACK[0x5C8]) = v51;
  v52 = ((v51 ^ 0xAEBDFE37) % 3) | &STACK[0x9FB0];
  LOBYTE(STACK[0x9FBD]) = *(v52 + 13);
  *(v52 + 13) = (v13 >> 29) - ((2 * (v13 >> 29)) & 0x24) - 110;
  LODWORD(v50) = (v44 ^ 0xAE0FB5CB) - v46 - 750381312;
  v53 = (&STACK[0x9FB0] | 0xE | ((v44 ^ 0xCB) - v46) & 1);
  LOBYTE(v44) = STACK[0x9FBE];
  LOBYTE(STACK[0x9FBE]) = *v53;
  *v53 = v44;
  LODWORD(STACK[0x580]) = v24 ^ 0x9E987BD5;
  LODWORD(STACK[0x58C]) = v25 - v26 - ((2 * (v25 - v26) - 1856305680) & 0xBF343C16) - 1471700733;
  LODWORD(STACK[0x588]) = v30 + 1097846967 - ((2 * v30) & 0x82DFA16E);
  STACK[0x5D8] = v45 ^ 0xEFA514C3;
  LODWORD(STACK[0x5D0]) = v50 + 411771305 - ((2 * v50) & 0x31164352);
  v54 = *(STACK[0x940] + 8 * a6);
  STACK[0x910] = STACK[0x6B0];
  return v54();
}

uint64_t sub_2447D0738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v7 + 5129;
  STACK[0x8E8] = (((v9 + 5595) ^ STACK[0x458]) + (v9 - 4593)) ^ STACK[0x698];
  return (*(a7 + 8 * (v9 ^ (LODWORD(STACK[0x81C]) * v8))))();
}

uint64_t sub_2447D0780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0x950]) = 0;
  LODWORD(STACK[0x900]) = 0;
  LODWORD(STACK[0x850]) = 0;
  LODWORD(STACK[0x8B0]) = 0;
  LODWORD(STACK[0x858]) = 0;
  LODWORD(STACK[0x860]) = 0;
  LODWORD(STACK[0x908]) = 0;
  LODWORD(STACK[0x8B8]) = 0;
  LODWORD(STACK[0x868]) = 0;
  LODWORD(STACK[0x890]) = 0;
  LODWORD(STACK[0x870]) = 0;
  LODWORD(STACK[0x878]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  LODWORD(STACK[0x800]) = v7 ^ 0x625632C5;
  v9 = *(a7 + 8 * (v8 - 3577));
  LODWORD(STACK[0x960]) = 1;
  STACK[0x910] = STACK[0x6B0];
  LODWORD(STACK[0x948]) = 1;
  LODWORD(STACK[0x8A8]) = 1;
  LODWORD(STACK[0x84C]) = 1;
  LODWORD(STACK[0x8E0]) = 1;
  LODWORD(STACK[0x8A0]) = 1;
  LODWORD(STACK[0x898]) = 1;
  return v9(a1, a2, a3, a4, v8);
}

uint64_t sub_2447D08B8@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  LODWORD(STACK[0x960]) = 0;
  LODWORD(STACK[0x948]) = 0;
  LODWORD(STACK[0x950]) = 0;
  LODWORD(STACK[0x900]) = 0;
  LODWORD(STACK[0x8A8]) = 0;
  LODWORD(STACK[0x84C]) = 0;
  LODWORD(STACK[0x850]) = 0;
  LODWORD(STACK[0x8B0]) = 0;
  LODWORD(STACK[0x858]) = 0;
  LODWORD(STACK[0x860]) = 0;
  LODWORD(STACK[0x908]) = 0;
  LODWORD(STACK[0x8B8]) = 0;
  LODWORD(STACK[0x868]) = 0;
  LODWORD(STACK[0x890]) = 0;
  LODWORD(STACK[0x870]) = 0;
  LODWORD(STACK[0x878]) = 0;
  LODWORD(STACK[0x8E0]) = 0;
  LODWORD(STACK[0x8A0]) = 0;
  LODWORD(STACK[0x898]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  v3 = a2 - 14565;
  LODWORD(STACK[0x810]) = (v2 ^ 0x695D77B0) - 1645216776 + ((2 * v2) & 0xF6F1B9BE ^ 0x24412294 ^ (v3 + 10188));
  STACK[0x8E8] = STACK[0x698] ^ 0x5EE7390FD692763DLL;
  v4 = *(a1 + 8 * v3);
  STACK[0x910] = STACK[0x6B0];
  return v4();
}

uint64_t sub_2447D0AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X6>, int a5@<W8>)
{
  LODWORD(STACK[0x950]) = 0;
  LODWORD(STACK[0x908]) = 0;
  LODWORD(STACK[0x8B8]) = 0;
  LODWORD(STACK[0x868]) = 0;
  LODWORD(STACK[0x890]) = 0;
  LODWORD(STACK[0x870]) = 0;
  LODWORD(STACK[0x878]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  STACK[0x8E8] = STACK[0x698] ^ 0x5EE7390FD692763DLL;
  STACK[0x5D8] = v5 ^ 0xA67BB905 ^ (a5 + 10188);
  v6 = *(a4 + 8 * a5);
  LODWORD(STACK[0x960]) = 1;
  STACK[0x910] = STACK[0x6B0];
  LODWORD(STACK[0x948]) = 1;
  LODWORD(STACK[0x900]) = 1;
  LODWORD(STACK[0x8A8]) = 1;
  LODWORD(STACK[0x84C]) = 1;
  LODWORD(STACK[0x850]) = 1;
  LODWORD(STACK[0x8B0]) = 1;
  LODWORD(STACK[0x858]) = 1;
  LODWORD(STACK[0x860]) = 1;
  LODWORD(STACK[0x8E0]) = 1;
  LODWORD(STACK[0x8A0]) = 1;
  LODWORD(STACK[0x898]) = 1;
  return v6(a1, a2, a3, STACK[0x688]);
}

uint64_t sub_2447D0C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0x960]) = 0;
  LODWORD(STACK[0x950]) = 0;
  LODWORD(STACK[0x900]) = 0;
  LODWORD(STACK[0x8A8]) = 0;
  LODWORD(STACK[0x84C]) = 0;
  LODWORD(STACK[0x850]) = 0;
  LODWORD(STACK[0x8B0]) = 0;
  LODWORD(STACK[0x858]) = 0;
  LODWORD(STACK[0x860]) = 0;
  LODWORD(STACK[0x908]) = 0;
  LODWORD(STACK[0x8B8]) = 0;
  LODWORD(STACK[0x868]) = 0;
  LODWORD(STACK[0x890]) = 0;
  LODWORD(STACK[0x870]) = 0;
  LODWORD(STACK[0x878]) = 0;
  LODWORD(STACK[0x8E0]) = 0;
  LODWORD(STACK[0x8A0]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  STACK[0x8E8] = STACK[0x698] ^ 0x5EE7390FD6924437 ^ (v7 + 10188);
  LODWORD(STACK[0x5C8]) = v8 ^ 0xBC985558;
  v9 = *(a7 + 8 * v7);
  LODWORD(STACK[0x948]) = 1;
  STACK[0x910] = STACK[0x6B0];
  LODWORD(STACK[0x898]) = 1;
  return v9(a1, a2, a3, a6, (v7 + 10188));
}

uint64_t sub_2447D0D60@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  LODWORD(STACK[0x950]) = 0;
  LODWORD(STACK[0x900]) = 0;
  LODWORD(STACK[0x8B0]) = 0;
  LODWORD(STACK[0x858]) = 0;
  LODWORD(STACK[0x860]) = 0;
  LODWORD(STACK[0x908]) = 0;
  LODWORD(STACK[0x8B8]) = 0;
  LODWORD(STACK[0x868]) = 0;
  LODWORD(STACK[0x890]) = 0;
  LODWORD(STACK[0x870]) = 0;
  LODWORD(STACK[0x878]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  LODWORD(STACK[0x808]) = (v2 ^ 0xA5565C94) + ((a2 - 2100) | 0x3000) + 1576848374 + ((2 * v2) & 0x6EE7EFF6 ^ 0x244346D6);
  STACK[0x8E8] = STACK[0x698] ^ 0x5EE7390FD692763DLL;
  v3 = *(a1 + 8 * a2);
  LODWORD(STACK[0x960]) = 1;
  STACK[0x910] = STACK[0x6B0];
  LODWORD(STACK[0x948]) = 1;
  LODWORD(STACK[0x8A8]) = 1;
  LODWORD(STACK[0x84C]) = 1;
  LODWORD(STACK[0x850]) = 1;
  LODWORD(STACK[0x8E0]) = 1;
  LODWORD(STACK[0x8A0]) = 1;
  LODWORD(STACK[0x898]) = 1;
  return v3();
}

uint64_t sub_2447D0E90@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  LODWORD(STACK[0x960]) = 0;
  LODWORD(STACK[0x948]) = 0;
  LODWORD(STACK[0x950]) = 0;
  LODWORD(STACK[0x900]) = 0;
  LODWORD(STACK[0x8A8]) = 0;
  LODWORD(STACK[0x84C]) = 0;
  LODWORD(STACK[0x850]) = 0;
  LODWORD(STACK[0x8B0]) = 0;
  LODWORD(STACK[0x858]) = 0;
  LODWORD(STACK[0x860]) = 0;
  LODWORD(STACK[0x908]) = 0;
  LODWORD(STACK[0x8B8]) = 0;
  LODWORD(STACK[0x868]) = 0;
  LODWORD(STACK[0x890]) = 0;
  LODWORD(STACK[0x870]) = 0;
  LODWORD(STACK[0x878]) = 0;
  LODWORD(STACK[0x8E0]) = 0;
  LODWORD(STACK[0x8A0]) = 0;
  LODWORD(STACK[0x898]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  LODWORD(STACK[0x808]) = (v2 ^ 0x8FDF5494) + 2004219392 + (((a2 + 10188) ^ 0x3BF5CDFC) & (2 * v2) ^ 0x204156D6);
  STACK[0x8E8] = STACK[0x698] ^ 0x5EE7390FD692763DLL;
  v3 = *(a1 + 8 * a2);
  STACK[0x910] = STACK[0x6B0];
  return v3();
}

uint64_t sub_2447D1110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0x960]) = 0;
  LODWORD(STACK[0x950]) = 0;
  LODWORD(STACK[0x900]) = 0;
  LODWORD(STACK[0x8A8]) = 0;
  LODWORD(STACK[0x84C]) = 0;
  LODWORD(STACK[0x850]) = 0;
  LODWORD(STACK[0x8B0]) = 0;
  LODWORD(STACK[0x858]) = 0;
  LODWORD(STACK[0x860]) = 0;
  LODWORD(STACK[0x908]) = 0;
  LODWORD(STACK[0x8B8]) = 0;
  LODWORD(STACK[0x868]) = 0;
  LODWORD(STACK[0x890]) = 0;
  LODWORD(STACK[0x870]) = 0;
  LODWORD(STACK[0x878]) = 0;
  LODWORD(STACK[0x8E0]) = 0;
  LODWORD(STACK[0x8A0]) = 0;
  LODWORD(STACK[0x898]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  LODWORD(STACK[0x5D0]) = v6 ^ 0xAAE8AC6;
  v8 = *(a5 + 8 * (v7 - 10188));
  LODWORD(STACK[0x948]) = 1;
  STACK[0x910] = STACK[0x6B0];
  return v8(a1, 110, a3, a6, v7);
}

uint64_t sub_2447D1248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x6C4]) = 0;
  v11 = ((2 * v8) & 0xBA2BCE16 ^ 0x200B4616) + (v8 ^ 0x4F304C64);
  LODWORD(STACK[0x6D0]) = v11 + 875869090;
  v12 = STACK[0x4F4];
  LODWORD(STACK[0x6D8]) = LODWORD(STACK[0x4F4]) - 620264971;
  v13 = STACK[0x468];
  LODWORD(STACK[0x704]) = LODWORD(STACK[0x468]) + 215675929;
  v14 = STACK[0x810];
  LODWORD(STACK[0x6EC]) = (((v9 - 9968) | 0x10) ^ 0x8B726C79) + LODWORD(STACK[0x810]);
  v15 = STACK[0x808];
  LODWORD(STACK[0x6E8]) = -1711740333 - LODWORD(STACK[0x808]) - ((1371037012 - 2 * LODWORD(STACK[0x808])) & 0x62397752);
  v16 = LODWORD(STACK[0x800]) ^ 0x707399AA;
  v17 = STACK[0x7FC];
  v18 = LODWORD(STACK[0x7FC]) ^ 0x804DDD90;
  LODWORD(STACK[0x720]) = 1307465764 - v18 - ((-304142624 - 2 * v18) & 0xADFD8968);
  v19 = LODWORD(STACK[0x7F0]) ^ 0xBBF18874;
  LODWORD(STACK[0x6F0]) = 444255812 - v19 - ((945829946 - 2 * v19) & 0xFC95644E);
  v20 = ((2 * (v13 - 1054678309 + (v17 ^ 0x7FB2226F))) & 0xFFE853DE) + ((v13 - 1054678309 + (v17 ^ 0x7FB2226F)) ^ 0x7FF429EF);
  v21 = ((2 * (v18 - v19)) & 0xDE6FF6DE) + ((v18 - v19) ^ 0x6F37FB6F);
  v22 = v12 - v21 - ((2 * (v12 - v21) - 1434668840) & 0xE144EB8E) - 975122893;
  v23 = v19 + 1687806814;
  LODWORD(STACK[0x4E4]) = v20;
  v24 = v20 - v21;
  v25 = v14 - v11;
  v26 = v11 + 126090323;
  v27 = ((2 * (v16 - v14 - (v14 - v11) - 709113181)) & 0x12FBB63C) + ((v16 - v14 - (v14 - v11) - 709113181) ^ 0x97DDB1E);
  v28 = ((2 * v22) & 0xF34FBDE2 ^ 0x348B440) + (v22 ^ 0x784385DF);
  v29 = v15 - v25 - ((2 * (v15 - v25) + 1304688546) & 0x724EA4FC) - 536261041;
  v30 = ((2 * v29) & 0xFE3FC8F8 ^ 0x9002C828) + (v29 ^ 0xB77E98EB);
  LODWORD(STACK[0x6D4]) = v27 - 150044899;
  LODWORD(STACK[0x70C]) = (((v22 ^ v23 ^ 0xF0A275C7) - 710557776) ^ 0xBD3FBEDD) + 2080140280 + ((2 * ((v22 ^ v23 ^ 0xF0A275C7) - 710557776)) & 0x7A7F7DBA);
  LODWORD(STACK[0x708]) = ((2 * (v21 - 1865939823)) & 0x4CFF7AEE ^ 0xF338A0) + ((v21 - 1865939823) ^ 0x2786612F) + 295080442;
  LODWORD(STACK[0x700]) = 289966513 - v24 - ((689907770 - 2 * v24) & 0xF971EB28);
  LODWORD(STACK[0x71C]) = 1158968983 - v28 - ((-674479272 - 2 * v28) & 0xB25CA9D6);
  v31 = ((2 * (v25 + 1135414836)) & 0xA7BFDFFA ^ 0x3B398B0) + ((v25 + 1135414836) ^ 0x522633A5);
  v32 = v29 ^ v26 ^ 0x3927527E;
  LODWORD(STACK[0x718]) = ((1532874665 - v32) ^ 0x7EDF9FDF) - 445646595 + ((2 * (1532874665 - v32)) & 0xFDBF3FBE);
  LODWORD(STACK[0x714]) = -338831426 - v31 - ((477071854 - 2 * v31) & 0x3B2C258E);
  LODWORD(STACK[0x8E8]) = v28 + 577300362;
  v33 = v30 - v27 - ((2 * (v30 - v27) + 451894994) & a8) + 1961773954;
  v34 = v31 + a6 + v30 + (v33 ^ 0x67769C19) + 628312097 - ((2 * (v31 + a6 + v30 + (v33 ^ 0x67769C19))) & 0x4AE69042);
  LODWORD(STACK[0x8E0]) = v30 - ((2 * v30 - 305917406) & v10) - 457081514;
  LODWORD(STACK[0x978]) = v34;
  LODWORD(STACK[0x8D8]) = (((v34 ^ 0x25734821) + (v32 ^ (v27 - 378906200))) ^ 0xF3BEAE3B) + 1593048526 + ((2 * ((v34 ^ 0x25734821) + (v32 ^ (v27 - 378906200)))) & 0xE77D5C76);
  v35 = STACK[0x590];
  v36 = ((49 - v35) & 0x3F) + v35;
  LODWORD(STACK[0x628]) = v36;
  LODWORD(STACK[0x66C]) = v36 + 1130581759;
  v37 = *(a7 + 8 * v9);
  LODWORD(STACK[0x5C4]) = 8 * v35 - ((16 * v35 + 232442976) & 0x925B5F0) + 1535131947;
  LODWORD(STACK[0x658]) = v35 + 932158644;
  LODWORD(STACK[0x624]) = v35 - 1178631512;
  LODWORD(STACK[0x5C0]) = v35 - 1062489851;
  LODWORD(STACK[0x5BC]) = v35 + 293463547;
  return v37(2907526135);
}

uint64_t sub_2447D18AC@<X0>(int a1@<W8>)
{
  v6 = STACK[0x66C];
  v7 = LODWORD(STACK[0x66C]) < 0x8885A230;
  LODWORD(STACK[0x6FC]) = v5;
  LODWORD(STACK[0x84C]) = -v5;
  LODWORD(STACK[0x8F8]) = ((a1 - 228767966) ^ 0x6CBBD5A9) - ((3 * (v2 ^ 0x1589) - 1561893347) & (2 * ((a1 - 228767966) ^ 0x6CBBD5A9))) - 780936994;
  v8 = v1 + 837118203 < v6;
  if (v7 != (v1 + 837118203) < 0x8885A230)
  {
    v8 = v7;
  }

  v9 = *(v3 + 8 * (v8 ^ v2));
  LODWORD(STACK[0x710]) = v4;
  LODWORD(STACK[0x850]) = -v4;
  return v9();
}

uint64_t sub_2447D19B4(uint64_t a1)
{
  LODWORD(STACK[0x8A8]) = v2;
  v5 = STACK[0x658];
  v6 = LODWORD(STACK[0x658]) < 0x7CB1EFEE;
  LODWORD(STACK[0x770]) = v3;
  if (v6 != v3 + 638695161 < ((v1 - 10955) | 0x100u) + 2092027418)
  {
    v7 = v3 + 638695161 < ((v1 - 10955) | 0x100u) + 2092027418;
  }

  else
  {
    v7 = v3 + 638695161 > v5;
  }

  return (*(v4 + 8 * ((87 * v7) ^ v1)))(a1, 3892244447);
}

uint64_t sub_2447D1A40@<X0>(int a1@<W1>, char a2@<W2>, char a3@<W3>, char a4@<W4>, char a5@<W6>, char a6@<W7>, int a7@<W8>)
{
  v11 = v7 - 1733163653;
  *(v9 + v11) = (a2 - 12) ^ 0x66;
  *(v10 + v11) = a7 ^ 0x8E ^ a6 ^ a3;
  v12 = STACK[0x8E8];
  v13 = LODWORD(STACK[0x8E8]) - ((2 * LODWORD(STACK[0x8E8]) + 333598244) & 0x1791700E) - 440803559;
  v14 = ((v7 - 1733163652) ^ 0xBCFFEFFD4BFD6CDBLL) + 0x43001002B4029325 + ((2 * (v7 - 1733163652)) & 0x97FAD9B6);
  *(v9 + v14) = (LOBYTE(STACK[0x8E8]) - ((2 * LOBYTE(STACK[0x8E8]) + 36) & 0xE) + 25) ^ 0x61;
  v15 = STACK[0x8E0];
  *(v10 + v14) = LODWORD(STACK[0x8E0]) ^ 0xB4;
  v16 = STACK[0x8F8];
  v17 = ((v7 - 1733163651) ^ 0xFFDFFFF7D51FDEF9) + 0x2000082AE02107 + ((2 * (v7 - 1733163651)) & 0xAA3FBDF2);
  *(v9 + v17) = LODWORD(STACK[0x8F8]) ^ 0x11;
  v18 = STACK[0x978];
  *(v10 + v17) = LODWORD(STACK[0x978]) ^ a5;
  v19 = STACK[0x8A8];
  v20 = ((v7 - 1733163653) & 0xFFFFFFFC ^ 0x77BFFEDC19CAAE6DLL) + ((2 * (v7 - 1733163653)) & 0x33955CD8) - 0x77BFFEDC19CAAE6ALL;
  *(v9 + v20) = LODWORD(STACK[0x8A8]) ^ a4;
  v21 = STACK[0x8D8];
  *(v10 + v20) = LODWORD(STACK[0x8D8]) - ((2 * LOBYTE(STACK[0x8D8]) - 18) & 0xE3) - 24;
  LODWORD(v20) = ((2 * v19) & 0xBEABBFA2 ^ 0xA28A9782) + (v19 ^ 0xAE1AB416);
  v22 = ((2 * (v13 ^ v16)) & 0xEFFBFFF2 ^ 0x6C016AE0) + (v13 ^ v16 ^ 0x41FD4A89);
  v23 = ((a1 + 1039) & (2 * (v18 ^ v15)) ^ 0x815870C8) + (v18 ^ v15 ^ 0x3B534593);
  LODWORD(STACK[0x8E8]) = v22 + v12 - 1554418136;
  LODWORD(STACK[0x8F8]) = (v22 + 1442330321) ^ 0xBDC80D77;
  LODWORD(STACK[0x8A8]) = (v20 + 834443450) ^ 0xF14F6BC7;
  LODWORD(STACK[0x8E0]) = v23 + (v15 ^ 0xEDDF7445) - ((2 * (v23 + (v15 ^ 0xEDDF7445)) + 1320155220) & 0xDBBEE88A) - 1791528849;
  LODWORD(STACK[0x978]) = v23 - ((2 * v23 + 871201190) & 0x4AE69042) + 2137654516;
  LODWORD(STACK[0x8D8]) = v21 - 1861060469;
  return (*(v8 + 8 * ((53 * ((v7 - 1733163649) > 0x3F)) ^ a7)))();
}

uint64_t sub_2447D1D98()
{
  v2 = LODWORD(STACK[0x770]) - 1472095059;
  v3 = v2 < 0xFEE1D5E2;
  v4 = v2 > LODWORD(STACK[0x624]);
  if (LODWORD(STACK[0x624]) < 0xFEE1D5E2 != v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  return (*(v1 + 8 * (((((v0 - 9286) | 0x81) + ((v0 - 8536) ^ 0xFFFFFA90)) * v5) ^ v0)))();
}

uint64_t sub_2447D1E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = LODWORD(STACK[0x5C0]) < 0x5CE043F;
  if (v8 == v6 - 1355953398 < (((v5 ^ 0x4112) - 8083) ^ 0x5CE3142u))
  {
    v8 = (v6 - 1355953398) < LODWORD(STACK[0x5C0]);
  }

  return (*(v7 + 8 * ((21766 * v8) ^ v5)))(3848410479, a2, a3, a4, a5, 106);
}

uint64_t sub_2447D1F5C@<X0>(unsigned int a1@<W0>, int a2@<W1>, uint64_t a3@<X4>, unsigned int a4@<W8>)
{
  *(a3 + v5) = *(v9 + v6 + v5) ^ v10;
  if (v4 < a4 != a1 < v8)
  {
    v11 = v4 < a4;
  }

  else
  {
    v11 = v4 > a1;
  }

  return (*(STACK[0x940] + 8 * ((!v11 * a2) ^ v7)))(a1 + 1);
}

uint64_t sub_2447D205C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v17 = v5 < v6;
  *(v16 + (a1 + v10)) = *(v15 + (v7 + a1));
  v18 = a1 + v12;
  v19 = (v8 & v14 ^ v11) + a1;
  v20 = v17 ^ (v18 < a5);
  v21 = v5 > v18;
  if (!v20)
  {
    v17 = v21;
  }

  return (*(STACK[0x940] + 8 * ((v17 * v13) ^ v9)))(v19);
}

uint64_t sub_2447D20B8@<X0>(char a1@<W5>, int a2@<W8>)
{
  v3 = LODWORD(STACK[0x5BC]) - LODWORD(STACK[0x770]);
  v4 = *(&STACK[0x9FE0] + v3);
  HIDWORD(v5) = ~v4;
  LODWORD(v5) = (v4 ^ 0xFFFFFFFB) << 24;
  v6 = (v5 >> 25) - (((v5 >> 25) << ((a2 + 24) ^ v2)) & 0xFFFFFFE2) + 113;
  *(&STACK[0x9FE0] + v3) = (-13 * (*(STACK[0x920] + (((v5 >> 25) - (((v5 >> 25) << ((a2 + 24) ^ v2)) & 0xE2) + 113) ^ 0x46)) ^ ((v6 ^ 0x20) - ((2 * (v6 ^ 0x20) + 60) & a1) + 83) ^ 0x5E)) ^ 0x7B;
  return (*(STACK[0x940] + 8 * a2))();
}

uint64_t sub_2447D21AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v9 = STACK[0x5C4];
  LOBYTE(STACK[0xA01F]) ^= LODWORD(STACK[0x5C4]) ^ 0xFB;
  LOBYTE(STACK[0xA01E]) ^= v7 ^ 0x9F ^ BYTE1(v9) ^ a7;
  LOBYTE(STACK[0xA01D]) ^= BYTE2(v9) ^ 0x92;
  LOBYTE(STACK[0xA01C]) ^= HIBYTE(v9) ^ 0x84;
  return (*(v8 + 8 * v7))();
}

uint64_t sub_2447D2234@<X0>(int a1@<W8>)
{
  v8 = v2 - 750153108;
  v9 = *(v5 + v2 - 750153108);
  v10 = *(v7 + v2 - 750153108);
  STACK[0x8B0] = 3681 * (a1 ^ 0x3208u);
  v11 = ((v2 - 750153106) ^ 0xBF6D713FDEAE3ABALL) + 0x40928EC02151C546 + ((2 * (v2 - 750153106)) & 0xBD5C7574);
  v12 = ((v2 - 750153107) ^ 0x6F3FDD7FFE7FF763) - 0x6F3FDD7FFE7FF763 + (((v2 - 750153107) << ((97 * (a1 ^ 8)) ^ 0xC3u)) & 0xFCFFEEC2);
  v13 = ((v2 - 750153105) ^ 0xFDCFC7FD7FBFFD3BLL) + 0x2303802804002C5 + ((2 * (v2 - 750153105)) & 0xFF7FFA76);
  v14 = *(STACK[0x958] + 4 * (*(v5 + v13) ^ 0x9CLL));
  HIDWORD(v16) = v14 ^ 0x62;
  LODWORD(v16) = v14 ^ 0xC734F700;
  v15 = v16 >> 8;
  LODWORD(v9) = *(STACK[0x948] + 4 * (v9 ^ 0xA)) + v3;
  HIDWORD(v16) = v9 ^ 0x82B4;
  LODWORD(v16) = v9 ^ 0x3C030000;
  LODWORD(v9) = v16 >> 16;
  v17 = *(STACK[0x950] + 4 * (*(v7 + v13) ^ 0x33));
  v18 = *(STACK[0x950] + 4 * (*(v7 + v11) ^ 0x3ALL));
  HIDWORD(v16) = v17 ^ v4;
  LODWORD(v16) = v17 ^ 0x2B7E8000;
  v19 = v16 >> 12;
  HIDWORD(v16) = v18 ^ v4;
  LODWORD(v16) = v18 ^ 0x2B7E8000;
  v20 = v16 >> 12;
  v21 = *(STACK[0x950] + 4 * (*(v7 + v12) ^ 0xA7));
  HIDWORD(v16) = v19 ^ 0x56;
  LODWORD(v16) = v19 ^ 0x39507C00;
  v22 = v16 >> 8;
  HIDWORD(v16) = v21 ^ v4;
  LODWORD(v16) = v21 ^ 0x2B7E8000;
  v23 = v16 >> 12;
  LODWORD(v10) = *(STACK[0x950] + 4 * (v10 ^ 0x48));
  v24 = STACK[0x940];
  HIDWORD(v16) = v10 ^ v4;
  LODWORD(v16) = v10 ^ 0x2B7E8000;
  LODWORD(v10) = v16 >> 12;
  HIDWORD(v16) = v23 ^ 0x9C1DF;
  LODWORD(v16) = v23 ^ 0xE7FFFFFF;
  v25 = v16 >> 24;
  HIDWORD(v16) = v10 ^ 0xCFFC;
  LODWORD(v16) = v10 ^ 0x20F90000;
  v26 = *(STACK[0x918] + (((*(v5 + v12) ^ 0x66) + 110) ^ 0xB0));
  v27 = v22 ^ v20;
  v28 = *(STACK[0x948] + 4 * ((__PAIR64__(v26 ^ 0x13u, ~v26 << 24) >> 31) ^ 0xE9u)) + 2083238470;
  v29 = v27 ^ (v16 >> 16);
  HIDWORD(v16) = v28 ^ 0x716CFD;
  LODWORD(v16) = v28 ^ 0x45000000;
  v30 = v29 ^ v25;
  LODWORD(v9) = (v15 - 300621160 - (v6 & (2 * v15))) ^ *(STACK[0x958] + 4 * (*(v5 + v11) ^ 0xF9)) ^ v9 ^ (v16 >> 24);
  LODWORD(v10) = *(STACK[0x970] + (((HIBYTE(v30) ^ 0x66) - 92) ^ 0x4ELL));
  *(v5 + v12) = BYTE2(v9) ^ 0x1A;
  *(v7 + v12) = (BYTE2(v30) ^ 0x1A) - ((2 * (BYTE2(v30) ^ 0x1A)) & 0xE3) - 15;
  *(v7 + v11) = (BYTE1(v30) ^ 0x42) + (~(2 * (BYTE1(v30) ^ 0x42)) | 0x1D) - 14;
  *(v5 + v11) = BYTE1(v9) ^ 0xF8;
  *(v7 + v13) = v30 ^ 0x20;
  *(v5 + v13) = v9 ^ 0x62;
  HIDWORD(v16) = (v10 - 49) ^ 0x11;
  LODWORD(v16) = ((v10 - 49) ^ 0x20) << 24;
  *(v5 + v8) = BYTE3(v9) ^ 0x21;
  *(v7 + v8) = (v16 >> 29) - ((2 * (v16 >> 29)) & 0xE3) - 15;
  return (*(v24 + 8 * ((4 * ((v2 - 750153104) > 0x3F)) | (16 * ((v2 - 750153104) > 0x3F)) | v1)))();
}

uint64_t sub_2447D25B0()
{
  v6 = (v4 + LODWORD(STACK[0x770]) + v1 - 1453353001 + (v0 ^ 0x656Bu));
  v7 = veorq_s8(*v6, v5);
  v8 = veorq_s8(v6[1], v5);
  v9 = (v3 + v1);
  *v9 = v7;
  v9[1] = v8;
  return (*(v2 + 8 * ((7364 * (v1 == 32)) ^ v0)))();
}

uint64_t sub_2447D2610()
{
  v5 = (v3 - 208 + (LODWORD(STACK[0x770]) + v0 - 1453340981));
  v6 = *v5;
  v7 = v5[1];
  v8 = (v4 + v0);
  *v8 = v6;
  v8[1] = v7;
  return (*(v2 + 8 * ((465 * ((v1 ^ 0x2ED4) + v0 != 64)) ^ v1)))();
}

uint64_t sub_2447D2670@<X0>(int a1@<W8>)
{
  v6 = v1 - 777351553;
  v7 = (a1 + 5347);
  v8 = (((v7 ^ 0xFFFFFFFFD1AA9243) + v1) ^ 0x367FD9EFFBED2DB7) - 0x367FD9EFFBED2DB7 + ((2 * ((v7 ^ 0xFFFFFFFFD1AA9243) + v1)) & 0x16E);
  v9 = ((v1 - 777351550) ^ 0x15FACD297F2DFF6BLL) - 0x15FACD297F2DFF6BLL + ((2 * (v1 - 777351550)) & 0xD6);
  v10 = *(v4 + v9);
  v11 = ((v1 - 777351552) ^ 0xFF6EFFEDCE3FCDFBLL) + 0x91001231C03205 + ((2 * (v1 - 777351552)) & 0xF6);
  v12 = *(STACK[0x948] + 4 * (*(v4 + v11) ^ 0x30)) + v2;
  HIDWORD(v14) = *(v4 + v8);
  LODWORD(v14) = (HIDWORD(v14) ^ 0x66666666) << 24;
  v13 = v14 >> 25;
  HIDWORD(v14) = v12 ^ 0x4D0289;
  LODWORD(v14) = v12 ^ 0x1B000000;
  v15 = v14 >> 24;
  v16 = *(STACK[0x8D0] + (v13 ^ 0xA6));
  HIDWORD(v14) = ~v10;
  LODWORD(v14) = (v10 ^ 0xFFFFFFFB) << 24;
  v17 = ((v14 >> 25) - 4 * ((v14 >> 25) >> 1) + 126) ^ 0x2F;
  v18 = *(STACK[0x920] + (((v14 >> 25) - 4 * ((v14 >> 25) >> 1) + 126) ^ 0x49));
  HIDWORD(v14) = v16 ^ 0x54;
  LODWORD(v14) = ~v16 << 24;
  v19 = v14 >> 31;
  v20 = *(STACK[0x958] + 4 * (*(v4 + v1 - 777351553) ^ 0xB5));
  HIDWORD(v14) = v20 ^ 0x2060;
  LODWORD(v14) = v20 ^ 0xF7D50000;
  v21 = v14 >> 16;
  v22 = *(STACK[0x950] + 4 * (*(v5 + v9) ^ 0xA5));
  HIDWORD(v14) = v22 ^ v3;
  LODWORD(v14) = v22 ^ 0x2B7E8000;
  v23 = v14 >> 12;
  v24 = *(STACK[0x958] + 4 * ((-13 * (v18 ^ (v17 - ((2 * v17 + 60) & 0x6A) + 83) ^ 0x5E)) ^ 0x73u));
  HIDWORD(v14) = v23 ^ 0x21;
  LODWORD(v14) = v23 ^ 0xF274EB00;
  v25 = v14 >> 8;
  v26 = *(STACK[0x960] + 4 * (*(v5 + v8) ^ 0xB0));
  HIDWORD(v14) = v26 ^ 8;
  LODWORD(v14) = v26 ^ 0x6BA90E90;
  v27 = v14 >> 4;
  HIDWORD(v14) = v24 ^ 0xCD;
  LODWORD(v14) = v24 ^ 0x129FAB00;
  v28 = v14 >> 8;
  v29 = *(STACK[0x950] + 4 * (*(&STACK[0xC860] + v11) ^ 0x23));
  HIDWORD(v14) = v29 ^ 0xF69;
  LODWORD(v14) = v29 ^ 0x2B7E8000;
  v30 = (v14 >> 12) - ((2 * (v14 >> 12)) & 0xFB812124) - 37711726;
  v31 = v15 ^ v28;
  if (((v30 >> 17) & 0x80) != 0)
  {
    v32 = -42;
  }

  else
  {
    v32 = -41;
  }

  v33 = *(STACK[0x950] + 4 * (*(v5 + v1 - 777351553) ^ 0xE1));
  HIDWORD(v35) = v33 ^ 0xF69;
  LODWORD(v35) = v33 ^ 0x2B7E8000;
  v34 = v35 >> 12;
  HIDWORD(v35) = v34 ^ 0xE11F;
  LODWORD(v35) = v34 ^ 0x772B0000;
  v36 = v31 ^ v21 ^ (*(STACK[0x948] + 4 * ((-13 * (v19 ^ 0xD6)) ^ 0xC7u)) + 2083238470);
  v37 = v25 ^ (v35 >> 16) ^ v27 ^ ((-13 * (v32 ^ (2 * *(STACK[0x8D0] + (((v30 >> 17) & 0x80 | (v30 >> 25)) ^ 0x11))) ^ 0xA8)) | (v30 << 8));
  *(&STACK[0x9FE0] + v6) = HIBYTE(v36) ^ 0x86;
  *(&STACK[0x9FE0] + v11) = BYTE2(v36) ^ 0x5D;
  *(&STACK[0xC860] + v6) = (HIBYTE(v37) ^ 0xC8) - 2 * ((HIBYTE(v37) ^ 0xC8) & 0xF3 ^ HIBYTE(v37) & 2) - 15;
  *(&STACK[0x9FE0] + v8) = BYTE1(v36) ^ 0xC1;
  *(&STACK[0xC860] + v11) = (BYTE2(v37) ^ 0x6B) - ((2 * (BYTE2(v37) ^ 0x6B)) & 0xE3) - 15;
  *(&STACK[0xC860] + v8) = (BYTE1(v37) ^ 0x92) - 2 * ((BYTE1(v37) ^ 0x92) & 0x75 ^ BYTE1(v37) & 4) - 15;
  *(&STACK[0x9FE0] + v9) = v36 ^ 0xA6;
  *(&STACK[0xC860] + v9) = v37 ^ 0x20;
  v38 = *(STACK[0x940] + 8 * ((16802 * ((v1 - 777351549) < 0x40)) ^ a1));
  STACK[0x8B0] = v7;
  return v38();
}

uint64_t sub_2447D2A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 8 * STACK[0x8B0]);
  STACK[0x8B8] = STACK[0x8B0] ^ 0x95A;
  return v6(a1, 619650452, a3, a4, a5, LODWORD(STACK[0x8A8]));
}

uint64_t sub_2447D2AD0(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x8F8]) = v11;
  LODWORD(STACK[0x8A8]) = v10;
  STACK[0x8E8] = a2;
  v19 = a2 - 619650452;
  v20 = STACK[0x8B8] + ((a2 - 619650451) ^ 0xBDFB3FDFE3BEDFEFLL) + ((2 * (a2 - 619650451)) & 0x1C77DBFDALL) + 0x4204C0201C410A79;
  v21 = ((a2 - 619650450) ^ 0x7FEF8EDBFE65FEF2) - 0x7FEF8EDBFE65FEF2 + ((2 * (a2 - 619650450)) & 0x1FCCBFDE4);
  v22 = ((a2 - 619650449) ^ 0xE35FEF3D3777FBF7) + 0x1CA010C2C8880409 + ((2 * (a2 - 619650449)) & 0x6EEFF7EE);
  v23 = *(&STACK[0x9FE0] + v22);
  HIDWORD(v24) = ~v23;
  LODWORD(v24) = (v23 ^ 0xFFFFFFFB) << 24;
  v25 = ((*(&STACK[0x9FE0] + a2 - 619650452) ^ 0x66666666) << 24) | ((*(&STACK[0x9FE0] + v20) ^ 0x66) << 16) | ((*(&STACK[0x9FE0] + v21) ^ 0x66) << 8);
  v26 = a3 - ((2 * a3 + 214953448) & 0x4902C2DC) + 719935586;
  v27 = (v24 >> 25);
  v28 = *(STACK[0x948] + 4 * ((a3 - ((2 * a3 - 24) & 0xDC) + 98) ^ 0xEDu)) + 2083238470;
  HIDWORD(v24) = v28 ^ 0xD0;
  LODWORD(v24) = v28 ^ 0x633D8900;
  v29 = STACK[0x958];
  v30 = *(STACK[0x958] + 4 * (((a3 - ((2 * a3 - 4632) & 0xC2DC) + 22626) >> 8) ^ 0xE6u));
  LODWORD(v27) = *(STACK[0x8D0] + (v27 ^ 0xA6));
  v31 = (v24 >> 8) - 300621160 - ((2 * (v24 >> 8)) & 0xDC29C530);
  v32 = *(STACK[0x958] + 4 * (BYTE2(v26) ^ 2u));
  HIDWORD(v24) = v32 ^ 0x7852DF;
  LODWORD(v24) = v32 ^ 0xA1000000;
  v33 = v24 >> 24;
  HIDWORD(v24) = v27 ^ 0x54;
  LODWORD(v24) = ~v27 << 24;
  v34 = *(STACK[0x948] + 4 * ((7 * ((*(STACK[0x938] + (((v26 >> 19) & 0xE0 | (v26 >> 27)) ^ 0x70)) + 103) ^ 0xEE)) ^ 0x7Eu)) + 2083238470;
  v35 = v25 & 0xFFFFFF00 | (-13 * ((v24 >> 31) ^ 0xD6));
  HIDWORD(v24) = v34 ^ 0xBBD6;
  LODWORD(v24) = v34 ^ 0xB01B0000;
  LODWORD(STACK[0x8E0]) = v10 - 362984898;
  STACK[0x8D8] = v19;
  v36 = v19 + 4;
  LODWORD(v27) = *(&STACK[0xC860] + v21) ^ 0xF1;
  LODWORD(v21) = v33 ^ v30 ^ v31 ^ v35 ^ (v24 >> 16);
  LODWORD(v20) = *(&STACK[0xC860] + v20);
  v37 = *(&STACK[0xC860] + v19);
  HIDWORD(v24) = v37 ^ 1;
  LODWORD(v24) = (v37 ^ 0xF0) << 24;
  *(v8 + 4 * (v10 - 362984900)) = v21 ^ 0xAB6BCA7B;
  v38 = *(STACK[0x928] + ((v24 >> 27) ^ 0xDBLL));
  HIDWORD(v24) = v38 ^ v16;
  LODWORD(v24) = v38 << 24;
  v39 = v24 >> 30;
  v40 = *(STACK[0x950] + 4 * (BYTE2(a8) ^ 0x98u));
  HIDWORD(v24) = v40 ^ v14;
  LODWORD(v24) = v40 ^ v15;
  v41 = v24 >> 12;
  v42 = *(STACK[0x950] + 4 * (BYTE1(a8) ^ 0xB4u));
  HIDWORD(v24) = v42 ^ v14;
  LODWORD(v24) = v42 ^ v15;
  v43 = v24 >> 12;
  v44 = *(STACK[0x960] + 4 * (a8 ^ 0xEEu));
  HIDWORD(v24) = v44 ^ 8;
  LODWORD(v24) = v44 ^ 0x6BA90E90;
  v45 = v24 >> 4;
  HIDWORD(v24) = v41 ^ 0x8C2DB3;
  LODWORD(v24) = v41 ^ 0x11111111;
  v46 = v24 >> 24;
  HIDWORD(v24) = v45 ^ 0x47;
  LODWORD(v24) = v45 ^ 0x2D269E00;
  v47 = v24 >> 8;
  v48 = *(v13 + (((HIBYTE(a8) ^ 0x67) - 92) ^ 0x4ELL)) - 49;
  HIDWORD(v24) = v48 ^ 0xFFFFFFF1;
  LODWORD(v24) = (v48 ^ 0x20) << 24;
  LODWORD(v27) = (117440512 * (v39 ^ 0x88888888)) | ((v20 ^ 0xF1) << 16) | (v27 << 8);
  LODWORD(v20) = *(STACK[0x950] + 4 * ((v24 >> 29) ^ 0x1Du));
  LODWORD(v22) = v27 | *(&STACK[0xC860] + v22) ^ 0xF1;
  HIDWORD(v24) = v20 ^ v14;
  LODWORD(v24) = v20 ^ v15;
  LODWORD(v27) = v24 >> 12;
  HIDWORD(v24) = v27 ^ 0x8A64;
  LODWORD(v24) = v27 ^ 0x29B0000;
  v49 = v46 ^ v43 ^ v47 ^ v22 ^ (v24 >> 16);
  v50 = (a6 ^ v12) + v9 - 1210066010;
  LODWORD(STACK[0x898]) = v50;
  *(&STACK[0xDFA0] + (v10 - 362984900)) = v49 ^ 0xD6FCCD0;
  v51 = v10 - 362984900;
  LODWORD(STACK[0x870]) = v10 - 362984900;
  v52 = STACK[0x8F8];
  v53 = LODWORD(STACK[0x8F8]) ^ 0x4E6F7898 ^ v26;
  v54 = STACK[0x910];
  LODWORD(v27) = *(STACK[0x910] + 4 * ((v46 ^ v43 ^ v47 ^ v22 ^ ((v27 ^ 0x29B0000) >> 16)) ^ 0x9Cu));
  v55 = ((((v46 ^ v43 ^ v47 ^ v22 ^ WORD1(v24)) >> 8) ^ 0xB2) - 92) ^ 0x4ELL;
  v56 = STACK[0x908];
  v57 = *(STACK[0x908] + 4 * (BYTE2(v49) ^ 0x6Fu));
  LODWORD(STACK[0x860]) = v18 ^ 0x7BA9D83B;
  LODWORD(v20) = v18 ^ 0xEDDF7445;
  LODWORD(STACK[0x868]) = a8 ^ 0xF1003067;
  LODWORD(STACK[0x880]) = a8 ^ 0x67769C19;
  v58 = v9 - ((2 * v9 + 870469156) & 0x487DEC4A) - 30401225;
  v59 = *(STACK[0x8F0] + (((HIBYTE(v49) ^ 0xDE) - 92) ^ 0x8ELL));
  v60 = *(STACK[0x930] + 4 * (v21 ^ 0x13u));
  HIDWORD(v24) = v60 ^ 0xE;
  LODWORD(v24) = v60 ^ 0xF3531D00;
  v61 = *(STACK[0x930] + 4 * (BYTE1(v21) ^ 0x81u));
  v62 = (v24 >> 8) + 1007992998 - ((2 * (v24 >> 8)) & 0x7829814C);
  v63 = *(STACK[0x930] + 4 * (BYTE2(v21) ^ 0x7Au));
  HIDWORD(v24) = v63 ^ 0x5D6BA0;
  LODWORD(v24) = v63 ^ 0x73000000;
  v64 = v24 >> 24;
  HIDWORD(v24) = v27 ^ 0xA4;
  LODWORD(v24) = v27 ^ 0x1B58D100;
  LODWORD(v27) = v24 >> 8;
  LODWORD(v21) = *(STACK[0x930] + 4 * (BYTE3(v21) ^ 0x1A));
  HIDWORD(v24) = v57 ^ 0x7658B9;
  LODWORD(v24) = v57 ^ 0x91000000;
  v65 = v24 >> 24;
  HIDWORD(v24) = v21 ^ 0xB03E;
  LODWORD(v24) = v21 ^ 0x73420000;
  LODWORD(v21) = v64 ^ v61 ^ (v24 >> 16) ^ v62;
  v66 = *(STACK[0x970] + v55) - 49;
  v67 = v58 ^ v26 ^ v21;
  v68 = v52 ^ 0xBDC80D77;
  v69 = ((2 * v58) & 0xD29FFFB4 ^ 0x80990EA4) + (v58 ^ 0x2B2378AD);
  LODWORD(v19) = v50 - 1195291758 + v69;
  LODWORD(STACK[0x8A0]) = v19;
  v70 = v19 + (v26 ^ 0x9F1CA046) - 390051600 - ((2 * (v19 + (v26 ^ 0x9F1CA046))) & 0xD18091E0);
  LODWORD(STACK[0x888]) = v70;
  v71 = ((2 * v18) & 0xFE9EBB2A ^ 0x161A0A2A) + (v18 ^ 0x74C25882);
  v72 = v53 - 390051600 - ((2 * v53) & 0xD18091E0);
  LODWORD(v55) = (v18 ^ 0xEDDF7445) + v17 - 1387441161 + v71;
  LODWORD(STACK[0x890]) = v55;
  LODWORD(STACK[0x8F8]) = v55 + 11575915;
  v73 = ((2 * (v55 + 11575915 + (a8 ^ 0x5CEB5D31))) & 0x6DCFD7F6) + ((v55 + 11575915 + (a8 ^ 0x5CEB5D31)) ^ 0x36E7EBFB);
  v74 = STACK[0x978];
  v75 = LODWORD(STACK[0x978]) ^ a8;
  LODWORD(v55) = v71 - ((2 * v71 + 373506012) & 0xEC982E26);
  *(&STACK[0xD760] + v51) = v68 - 1519764384 + (v21 ^ 0x2F415FD6);
  v76 = (v36 ^ 0x7F55DFBFFFFDEFAFLL) - 0x7F55DFBFFFFDEFAFLL + ((2 * v36) & 0x1FFFBDF58);
  HIDWORD(v24) = v59 ^ 1;
  LODWORD(v24) = ~v59 << 24;
  LOBYTE(v59) = v24 >> 29;
  v77 = ((STACK[0x8D8] + 5) ^ 0x774C5FCFCA73EDFELL) - 0x774C5FCFCA73EDFELL + ((2 * (STACK[0x8D8] + 5)) & 0x194E7DBF8);
  HIDWORD(v24) = v66 ^ 0xFFFFFFF1;
  LODWORD(v24) = (v66 ^ 0x20) << 24;
  LODWORD(v27) = (v27 + 1732869605 - ((2 * v27) & 0xCE92FBCA)) ^ v65;
  v78 = ((STACK[0x8D8] + 6) ^ 0x7BF79BDFFF737F2FLL) - 0x7BF79BDFFF737F2FLL + ((2 * (STACK[0x8D8] + 6)) & 0x1FEE6FE5CLL);
  v79 = STACK[0x918];
  v80 = *(STACK[0x918] + (((*(&STACK[0x9FE0] + v78) ^ 0x66) + 110) ^ 0xB0));
  LOBYTE(v19) = (v24 >> 29) ^ 0x18;
  HIDWORD(v24) = v80 ^ 0x13;
  LODWORD(v24) = ~v80 << 24;
  v81 = STACK[0x8D8];
  v82 = ((STACK[0x8D8] + 7) ^ 0xFAFE39FF2C7FF69FLL) + 0x501C600D3800961 + ((2 * (STACK[0x8D8] + 7)) & 0x58FFED3E);
  v83 = *(v54 + 4 * (v59 ^ 0x73u));
  v84 = v69 - ((2 * v69 + 37878610) & 0x15949948) - 1410643379;
  v85 = ((*(&STACK[0x9FE0] + v76) ^ 0x66666666) << 24) | ((*(&STACK[0x9FE0] + v77) ^ 0x66) << 16) | (((v24 >> 31) ^ 0x92) << 8);
  v86 = *(v29 + 4 * ((v69 - ((2 * v69 + 82) & 0x48) + 77) ^ 0x59u));
  LODWORD(v27) = v27 ^ *(v56 + 4 * v19);
  HIDWORD(v24) = v86 ^ 0xF2;
  LODWORD(v24) = v86 ^ 0x530FC00;
  LODWORD(v19) = (v24 >> 8) - 300621160 - ((2 * (v24 >> 8)) & 0xDC29C530);
  v87 = *(STACK[0x948] + 4 * (BYTE2(v84) ^ 1u)) + 2083238470;
  HIDWORD(v24) = v83 ^ 0x5037;
  LODWORD(v24) = v83 ^ 0x3B540000;
  v88 = v24 >> 16;
  HIDWORD(v24) = v87 ^ 0x5D6C5A;
  LODWORD(v24) = v87 ^ 0x53000000;
  v89 = *(v29 + 4 * (HIBYTE(v84) ^ 0x4F));
  v90 = *(v29 + 4 * (((v69 - ((2 * v69 - 1198) & 0x9948) + 19021) >> 8) ^ 0xF3u)) ^ (v24 >> 24);
  HIDWORD(v24) = v89 ^ 0xA074;
  LODWORD(v24) = v89 ^ 0x15100000;
  v91 = v67 ^ 0x398864E3;
  v92 = v70 ^ v72;
  v93 = v75 ^ (v73 - 921168891);
  v94 = v67 ^ 0xAFFEC89D;
  v95 = v55 - 2123516159;
  v96 = LODWORD(STACK[0x8E0]) - 1;
  v97 = v19 ^ v90 ^ (v24 >> 16) ^ (v85 | *(&STACK[0x9FE0] + v82) ^ 0xFB);
  LODWORD(v27) = v27 ^ v88;
  *(&STACK[0x7E00] + v96) = v97 ^ 0xBB4B96FD;
  LODWORD(STACK[0x878]) = v96;
  v98 = LODWORD(STACK[0x860]) ^ v27;
  v99 = (((v55 - 2123516159) >> 19) & 0xE0 | ((v55 - 2123516159) >> 27)) ^ 0xA1;
  v100 = STACK[0x928];
  LODWORD(v99) = *(STACK[0x928] + v99);
  LODWORD(v56) = LODWORD(STACK[0x868]) ^ v27;
  HIDWORD(v24) = v99 ^ 0x39;
  LODWORD(v24) = v99 << 24;
  v101 = v24 >> 30;
  LODWORD(STACK[0x978]) = ((2 * v93) & 0xEFB32F76 ^ 0xE3302A20) + (v93 ^ 0x8E4182AB);
  v102 = *(STACK[0x950] + 4 * (BYTE2(v95) ^ 0x2Eu));
  LODWORD(v54) = (v74 ^ 0xDA8CB7DE) - 612171161;
  HIDWORD(v24) = v102 ^ 0xF69;
  LODWORD(v24) = v102 ^ 0x2B7E8000;
  LODWORD(v22) = v24 >> 12;
  v103 = STACK[0x960];
  LODWORD(v29) = *(STACK[0x960] + 4 * (v95 ^ 0xDAu));
  v104 = (v27 ^ v91) - v94;
  LOBYTE(v74) = v101 ^ 0x88;
  HIDWORD(v24) = v29 ^ 8;
  LODWORD(v24) = v29 ^ 0x6BA90E90;
  LODWORD(v29) = v24 >> 4;
  LODWORD(v27) = *(STACK[0x960] + 4 * (BYTE1(v95) ^ 0x7Cu));
  HIDWORD(v24) = v27 ^ 8;
  LODWORD(v24) = v27 ^ 0x6BA90E90;
  LODWORD(v27) = v24 >> 4;
  HIDWORD(v24) = v22 ^ 0xC86C32;
  LODWORD(v24) = v22 ^ 0x31000000;
  v105 = v24 >> 24;
  v106 = *(&STACK[0xC860] + v82);
  HIDWORD(v24) = v106 ^ 1;
  LODWORD(v24) = (v106 ^ 0xF0) << 24;
  v107 = (v24 >> 27);
  HIDWORD(v24) = v29 ^ 0xAC;
  LODWORD(v24) = v29 ^ 0xBB6EB200;
  v108 = v24 >> 8;
  LODWORD(v22) = *(v100 + (v107 ^ 0xDB));
  HIDWORD(v24) = v22 ^ 0x39;
  LODWORD(v24) = v22 << 24;
  LOBYTE(v22) = (v24 >> 30) ^ 0x88;
  LODWORD(v29) = *(&STACK[0xC860] + v77);
  v109 = (v98 - v20) ^ (v56 - LODWORD(STACK[0x880])) ^ v104;
  v110 = *(&STACK[0xC860] + v78);
  HIDWORD(v24) = v110 ^ 1;
  LODWORD(v24) = (v110 ^ 0xF0) << 24;
  v111 = STACK[0x938];
  LODWORD(v76) = ((v29 ^ 0xF1) << 16) | ((*(&STACK[0xC860] + v76) ^ 0xFFFFFFF1) << 24) | ((7 * ((*(STACK[0x938] + ((v24 >> 27) ^ 0xE4)) + 103) ^ 0xEE)) << 8) | (7 * v22);
  v112 = *(v79 + (((HIBYTE(v97) ^ 0x48) + 110) ^ 0xB0));
  LODWORD(v27) = v105 ^ v27 ^ v108;
  v113 = *(v79 + (((BYTE2(v97) ^ 0x91) + 110) ^ 0xB0));
  *(&STACK[0x79D0] + LODWORD(STACK[0x870])) = v54 + v109 + 1;
  HIDWORD(v24) = v113 ^ 0x13;
  LODWORD(v24) = ~v113 << 24;
  LODWORD(v22) = *(v103 + 4 * ((7 * v74) ^ 0xFAu));
  v114 = *(STACK[0x900] + 4 * ((v24 >> 31) ^ 0x69u));
  LODWORD(v54) = *(STACK[0x900] + 4 * (BYTE1(v97) ^ 0x1Eu));
  HIDWORD(v24) = v114 ^ 0x716434;
  LODWORD(v24) = v114 ^ 0xD0000000;
  v115 = v24 >> 27;
  HIDWORD(v24) = v54 ^ 0x716434;
  LODWORD(v24) = v54 ^ 0xD0000000;
  v116 = v24 >> 27;
  LODWORD(v54) = *(STACK[0x8F0] + (((v97 ^ 0xCC) - 92) ^ 0x8ELL));
  HIDWORD(v24) = v54 ^ 1;
  LODWORD(v24) = ~v54 << 24;
  LOBYTE(v54) = v24 >> 29;
  HIDWORD(v24) = v22 ^ 8;
  LODWORD(v24) = v22 ^ 0x6BA90E90;
  LODWORD(v22) = v24 >> 4;
  LODWORD(v54) = *(STACK[0x930] + 4 * (v54 ^ 0xB7u));
  HIDWORD(v24) = v54 ^ 0xFFFFFFE3;
  LODWORD(v24) = v54 ^ 0x334F3D00;
  LODWORD(v54) = v24 >> 8;
  HIDWORD(v24) = v115 ^ 0x27587A;
  LODWORD(v24) = v115 ^ LODWORD(STACK[0x728]);
  v117 = v24 >> 24;
  HIDWORD(v24) = v112 ^ 0x13;
  LODWORD(v24) = ~v112 << 24;
  v118 = *(STACK[0x900] + 4 * ((v24 >> 31) ^ 0x1Bu));
  HIDWORD(v24) = v118 ^ 0x716434;
  LODWORD(v24) = v118 ^ 0xD0000000;
  v119 = v24 >> 27;
  HIDWORD(v24) = v22 ^ 0x9A5E;
  LODWORD(v24) = v22 ^ 0x2F000000;
  LODWORD(v22) = v27 ^ v76 ^ (v24 >> 16);
  HIDWORD(v24) = v119 ^ 0x2CE3;
  LODWORD(v24) = v119 ^ 0x85260000;
  LODWORD(v29) = v117 ^ v116 ^ v54 ^ (v24 >> 16);
  LODWORD(v27) = v22 >> 8;
  *(&STACK[0xDFA0] + v96) = v22 ^ 0x7500F610;
  LODWORD(v100) = STACK[0x888];
  LODWORD(STACK[0x860]) = (v69 + 555810217) ^ LODWORD(STACK[0x888]);
  v120 = v95 ^ 0xF64C1713;
  LODWORD(v78) = ((2 * v92) & 0xEDBF7EFC ^ 0xC9372A50) + (v92 ^ 0x9A646AD7);
  LODWORD(STACK[0x868]) = ((v95 ^ 0x137C06FF ^ v29) - (v95 ^ 0xF64C1713)) ^ (921168891 - v73 + ((v73 - 921168891) ^ 0xE53011EC ^ v29));
  v121 = *(STACK[0x908] + 4 * (v22 ^ 0xF6u));
  v122 = v78 - ((2 * v78 + 756985412) & 0x560ADD3A) + 26527167;
  v123 = -768830007 - LODWORD(STACK[0x898]) - ((-792763346 - 2 * LODWORD(STACK[0x898])) & 0xD399C764);
  v124 = STACK[0x910];
  v125 = *(STACK[0x910] + 4 * (BYTE2(v22) ^ 0xA7u));
  v126 = ((2 * (v122 ^ LODWORD(STACK[0x8A0]))) & 0x73FFCFE6 ^ 0x520ACD22) + (v122 ^ LODWORD(STACK[0x8A0]) ^ 0x12FA896E);
  v127 = v122 ^ v123;
  LODWORD(v22) = *(STACK[0x908] + 4 * (BYTE3(v22) ^ 0xA2));
  v128 = (v123 ^ 0x69CCE3B2 ^ (v126 + 212225418)) + 1844561544 - ((2 * (v123 ^ 0x69CCE3B2 ^ (v126 + 212225418))) & 0xDBE38D10);
  LODWORD(v54) = v120 - LODWORD(STACK[0x890]) - ((2 * (v120 - LODWORD(STACK[0x890])) - 23151830) & 0xF3AD1682) + 2032527574;
  LODWORD(STACK[0x870]) = ((2 * ((v100 ^ 0xE8C048F0) + 1736224096 + (v128 ^ 0x6DF1C688))) & 0x6CF7FFEE) + (((v100 ^ 0xE8C048F0) + 1736224096 + (v128 ^ 0x6DF1C688)) ^ 0xB67BFFF7);
  v129 = v125 ^ 0x7BD5CC;
  LODWORD(v100) = LODWORD(STACK[0x978]) - ((2 * LODWORD(STACK[0x978]) - 1423245878) & 0x9255092E) + 515900284;
  LODWORD(v107) = v125 ^ 0xDB000000;
  LODWORD(v19) = (LODWORD(STACK[0x8F8]) ^ 0xC92A8497 ^ v100) - 28896981 - ((2 * (LODWORD(STACK[0x8F8]) ^ 0xC92A8497 ^ v100)) & 0xFC8E2256);
  LODWORD(STACK[0x8F8]) = v19;
  LODWORD(v19) = v19 ^ 0xFE47112B;
  LODWORD(STACK[0x880]) = v19;
  LODWORD(v19) = ((2 * (v19 - 962185859)) & 0xFBFCFFB2) + ((v19 - 962185859) ^ 0x7DFE7FD9);
  LODWORD(STACK[0x890]) = v19;
  LODWORD(v19) = v19 - 2113830873;
  LODWORD(STACK[0x888]) = v19;
  LODWORD(v19) = (v54 ^ 0x79D68B41 ^ v19) - 1490959170 - ((2 * (v54 ^ 0x79D68B41 ^ v19)) & 0x4E43897C);
  LODWORD(STACK[0x898]) = v19;
  LODWORD(v19) = v19 ^ 0xA721C4BE;
  LODWORD(STACK[0x8A0]) = v19;
  HIDWORD(v24) = v121;
  LODWORD(v24) = v121 ^ 0xF153DC00;
  v130 = v24 >> 8;
  v131 = v100 ^ v54;
  v132 = __PAIR64__(v129, v107) >> 24;
  LODWORD(v54) = ((2 * (v73 + 815055205 + v19)) & 0x5EF7EDFA) + ((v73 + 815055205 + v19) ^ 0x2F7BF6FD);
  HIDWORD(v24) = v22 ^ 0xD058;
  LODWORD(v24) = v22 ^ 0x71310000;
  v133 = v24 >> 16;
  v134 = ((v81 + 8) ^ 0x2FF7F6D3FBFE9DFELL) - 0x2FF7F6D3FBFE9DFELL + ((2 * (v81 + 8)) & 0x1F7FD3BF8);
  v135 = STACK[0x8D8];
  v136 = ((STACK[0x8D8] + 9) ^ 0x85EFFCAFBFF9BCF7) + 0x7A10035040064309 + ((2 * (STACK[0x8D8] + 9)) & 0x17FF379EALL);
  v137 = ((STACK[0x8D8] + 10) ^ 0xBCEB97BD7DFFFB7ELL) + 0x4314684282000482 + ((2 * (STACK[0x8D8] + 10)) & 0xFBFFF6FC);
  v138 = ((STACK[0x8D8] + 11) ^ 0x7DF7F6BE3EFACF37) - 0x7DF7F6BE3EFACF37 + ((2 * (STACK[0x8D8] + 11)) & 0x7DF59E6E);
  LODWORD(v27) = *(STACK[0x8C8] + (((v27 ^ 0x88) + 110) ^ 0x64)) + 78;
  HIDWORD(v24) = v27 ^ 3;
  LODWORD(v24) = (v27 ^ 0x30) << 24;
  LOBYTE(v27) = v24 >> 27;
  v139 = ((v127 >> 1) & 0x80 | (v127 >> 9)) ^ 0xC6;
  LODWORD(v103) = (v130 + 263390975 - ((2 * v130) & 0x1F660DFE)) ^ v132;
  v140 = v139 - 374881762 - 2 * (v139 & 0x1F ^ (v127 >> 9) & 1);
  v141 = *(STACK[0x958] + 4 * (v127 ^ 0xF5u));
  HIDWORD(v24) = v141 ^ 0xD1;
  LODWORD(v24) = v141 ^ 0xB1D93C00;
  v142 = v24 >> 8;
  v143 = -13 * (((v140 ^ 0x4F) + ((66 - 2 * (v140 ^ 0x4F)) | 0xFFFFFF95) + 84) ^ *(STACK[0x920] + (v140 ^ 0xE9A7C229)) ^ 0x5E);
  HIDWORD(v24) = v143 ^ 3;
  LODWORD(v24) = (v143 ^ 0x40) << 24;
  LOBYTE(v130) = 7 * ((*(v111 + ((v24 >> 27) ^ 0xE4)) + 103) ^ 0xEE);
  LODWORD(v22) = ((v127 >> 9) & 0x80 | (v127 >> 17) & 0x7F) ^ 0xE4;
  LODWORD(v22) = *(STACK[0x958] + 4 * ((-13 * ((((v22 - 48 - ((2 * v22) & 0xA0)) ^ 0x81) - ((2 * ((v22 - 48 - ((2 * v22) & 0xA0)) ^ 0x81) + 60) & 0x6A) + 83) ^ *(STACK[0x920] + ((v22 + 862119888 - ((2 * v22) & 0x1A0)) ^ 0x3362E7E7u)) ^ 0x5E)) ^ 0x3Au));
  HIDWORD(v24) = v22 ^ 0x584EC9;
  LODWORD(v24) = v22 ^ 0xF1000000;
  LODWORD(v22) = v24 >> 24;
  v144 = *(STACK[0x970] + (((HIBYTE(v127) ^ 0xC2) - 92) ^ 0x4ELL)) - 49;
  HIDWORD(v24) = v144 ^ 0x11;
  LODWORD(v24) = (v144 ^ 0x20) << 24;
  v145 = v103 ^ v133 ^ *(v124 + 4 * ((7 * ((*(v111 + (v27 ^ 0xE4)) + 103) ^ 0xEE)) ^ 0x87u));
  LODWORD(v27) = *(STACK[0x958] + 4 * ((v24 >> 29) ^ 0xC7u));
  HIDWORD(v24) = v27 ^ 0x7CCF;
  LODWORD(v24) = v27 ^ 0x227E0000;
  v146 = LODWORD(STACK[0x860]) ^ 0x1C301CDD ^ v145;
  LODWORD(v111) = (((*(&STACK[0x9FE0] + v134) ^ 0x66666666) << 24) | ((*(&STACK[0x9FE0] + v136) ^ 0x66) << 16) | ((*(&STACK[0x9FE0] + v137) ^ 0x66) << 8) | *(&STACK[0x9FE0] + v138) ^ 0xFB) ^ (v142 - 300621160 - ((2 * v142) & 0xDC29C530)) ^ v22 ^ (v24 >> 16) ^ *(STACK[0x958] + 4 * (v130 ^ 0x73u));
  v147 = STACK[0x8E0];
  *(&STACK[0x7E00] + LODWORD(STACK[0x8E0])) = v111 ^ 0x7F43C14C;
  LODWORD(v22) = v145 ^ 0xF4F0542D;
  LODWORD(v27) = *(&STACK[0xC860] + v136) ^ 0xF1;
  LODWORD(v136) = *(&STACK[0xC860] + v137) ^ 0xF1;
  v148 = ((*(&STACK[0xC860] + v134) ^ 0xFFFFFFF1) << 24) | (v27 << 16);
  LODWORD(v27) = *(STACK[0x970] + (((*(&STACK[0xC860] + v138) ^ 0xF1) - 92) ^ 0x4ELL));
  LODWORD(v81) = STACK[0x878];
  *(&STACK[0x79D0] + LODWORD(STACK[0x878])) = v78 - 459062551 + v22;
  LODWORD(v22) = v148 | (v136 << 8);
  v149 = STACK[0x950];
  LODWORD(v134) = *(STACK[0x950] + 4 * (v131 ^ 0x84u));
  HIDWORD(v24) = (v27 - 49) ^ 0xFFFFFFF1;
  LODWORD(v24) = ((v27 - 49) ^ 0x20) << 24;
  LOBYTE(v148) = v24 >> 29;
  HIDWORD(v24) = v134 ^ 0xF69;
  LODWORD(v24) = v134 ^ 0x2B7E8000;
  LODWORD(v27) = v24 >> 12;
  LODWORD(v136) = *(STACK[0x960] + 4 * (BYTE1(v131) ^ 0xECu));
  HIDWORD(v24) = v136 ^ 8;
  LODWORD(v24) = v136 ^ 0x6BA90E90;
  LODWORD(v136) = v24 >> 4;
  v150 = *(STACK[0x950] + 4 * (BYTE2(v131) ^ 0xE6u));
  HIDWORD(v24) = v27 ^ 0x23;
  LODWORD(v24) = v27 ^ 0xCDF39400;
  LODWORD(v27) = v24 >> 8;
  HIDWORD(v24) = v150 ^ 0xF69;
  LODWORD(v24) = v150 ^ 0x2B7E8000;
  LODWORD(v134) = v24 >> 12;
  HIDWORD(v24) = v134 ^ 0xA26019;
  LODWORD(v24) = v134 ^ 0x37000000;
  v151 = v24 >> 24;
  LODWORD(STACK[0x858]) = v131;
  LODWORD(v134) = *(v149 + 4 * (HIBYTE(v131) ^ 0x28));
  LODWORD(v22) = v22 & 0xFFFFFF00 | v148;
  HIDWORD(v24) = v134 ^ 0xF69;
  LODWORD(v24) = v134 ^ 0x2B7E8000;
  v152 = v24 >> 12;
  HIDWORD(v24) = v152 ^ 0xF562;
  LODWORD(v24) = v152 ^ 0x7D950000;
  v153 = v151 ^ (v24 >> 16);
  v154 = *(STACK[0x900] + 4 * (v111 ^ 0x15u));
  LODWORD(v103) = (LODWORD(STACK[0x868]) ^ ((v29 ^ 0x7E189981 ^ (v146 - 1691842451 - ((2 * v146) & 0x365110DA))) - ((v146 - 1691842451 - ((2 * v146) & 0x365110DA)) ^ 0x9B28886D))) - LODWORD(STACK[0x978]);
  HIDWORD(v24) = v154 ^ 0x716434;
  LODWORD(v24) = v154 ^ 0xD0000000;
  v155 = v24 >> 27;
  HIDWORD(v24) = v155 ^ 0x9C;
  LODWORD(v24) = v155 ^ 0x45290C00;
  v156 = STACK[0x930];
  v157 = *(STACK[0x930] + 4 * (BYTE1(v111) ^ 0x95u));
  LODWORD(v22) = v27 ^ v136 ^ v22 ^ v153;
  v158 = (v24 >> 8) + 1007992998 - ((2 * (v24 >> 8)) & 0x7829814C);
  LODWORD(v27) = *(STACK[0x930] + 4 * (BYTE2(v111) ^ 0x83u));
  *(&STACK[0xD760] + v81) = v103 - 1656499173;
  HIDWORD(v24) = v27 ^ 0x46DB72;
  LODWORD(v24) = v27 ^ 0x53000000;
  LODWORD(v19) = v24 >> 24;
  LODWORD(v103) = *(v156 + 4 * (BYTE3(v111) ^ 0x94));
  HIDWORD(v24) = v103 ^ 0x5065;
  LODWORD(v24) = v103 ^ 0x33490000;
  *(&STACK[0xDFA0] + v147) = v22 ^ 0x7FBEE26D;
  LODWORD(v103) = v19 ^ v157 ^ (v24 >> 16);
  v159 = STACK[0x908];
  LODWORD(v19) = *(STACK[0x908] + 4 * (v22 ^ 0xEBu));
  v160 = v103 ^ v158;
  LODWORD(v138) = *(STACK[0x908] + 4 * (BYTE1(v22) ^ 0x9Fu));
  LODWORD(v103) = *(STACK[0x908] + 4 * (BYTE3(v22) ^ 4));
  LODWORD(v156) = STACK[0x870];
  LODWORD(v111) = (v54 - 796653309) ^ 0xF67B2DCD;
  LODWORD(v79) = (LODWORD(STACK[0x870]) + 1233387529) ^ v128 ^ v160;
  LODWORD(v78) = 796653309 - v54;
  LODWORD(v136) = v127 ^ 0xC2C98D2F;
  v161 = STACK[0x8C8];
  LOBYTE(v27) = *(STACK[0x8C8] + (((BYTE2(v22) ^ 0x35) + 110) ^ 0x64));
  LODWORD(v81) = v128 ^ (v126 - 2020050286);
  LODWORD(STACK[0x868]) = v81;
  LODWORD(STACK[0x890]) = v54 - LODWORD(STACK[0x890]);
  LODWORD(STACK[0x878]) = v81 ^ 0x29F6E1D3;
  LODWORD(STACK[0x870]) = ((2 * ((v81 ^ 0x29F6E1D3) - v126 + 1021162111 + v156)) & 0xFEFBF7CE) + (((v81 ^ 0x29F6E1D3) - v126 + 1021162111 + v156) ^ 0xFF7DFBE7);
  v162 = STACK[0x880];
  LODWORD(v54) = ((2 * (LODWORD(STACK[0x880]) + 1100505733)) & 0xB37FDE7E) + ((LODWORD(STACK[0x880]) + 1100505733) ^ 0xD9BFEF3F);
  LODWORD(STACK[0x978]) = (v131 ^ 0xB0FC0FD6) - v54 + LODWORD(STACK[0x888]);
  *(&STACK[0x79D0] + v147) = v136 - 612171161 + (v160 ^ 0xCF4286ED);
  HIDWORD(v24) = v19 ^ 0xC;
  LODWORD(v24) = v19 ^ 0xF163DA00;
  v163 = v24 >> 8;
  HIDWORD(v24) = v103 ^ 0xDA8D;
  LODWORD(v24) = v103 ^ 0xF1670000;
  v164 = v24 >> 16;
  v165 = ((v135 + 12) ^ 0xFFE0FD0EAFBFEF9ELL) + 0x1F02F150401062 + ((2 * (v135 + 12)) & 0x15F7FDF38);
  LODWORD(v161) = *(v161 + (((*(&STACK[0x9FE0] + v165) ^ 0x66) + 110) ^ 0x64));
  v166 = 2 * (STACK[0x8A8] & 1) + (LODWORD(STACK[0x8A8]) ^ 1);
  LODWORD(STACK[0x8A8]) = v166;
  v167 = ((v135 + 13) ^ 0x7D6FF2FFBFCFD7AFLL) - 0x7D6FF2FFBFCFD7AFLL + ((2 * (v135 + 13)) & 0x17F9FAF5ALL);
  v168 = (v163 + 1732869605 - ((2 * v163) & 0xCE92FBCA)) ^ v138;
  v169 = ((v135 + 14) ^ 0x7DDC3AFFB6B5A3EELL) - 0x7DDC3AFFB6B5A3EELL + ((2 * (v135 + 14)) & 0x16D6B47DCLL);
  v170 = ((STACK[0x8E8] - 619650452) & 0xFFFFFFF0 ^ 0x7D7F7DFFFFB7AFACLL) + ((2 * (STACK[0x8E8] - 619650452)) & 0x1FF6F5F40) - 0x7D7F7DFFFFB7AF9DLL;
  LODWORD(v124) = *(&STACK[0x9FE0] + v170);
  LODWORD(v27) = *(v159 + 4 * ((v27 + 78) ^ 0x2Eu));
  HIDWORD(v24) = v124 ^ 3;
  LODWORD(v24) = ~v124 << 24;
  v171 = v168 ^ v164;
  v172 = STACK[0x938];
  v173 = v126 - ((2 * v126 + 553656346) & 0x2EAE1B36) + 1742151080;
  LODWORD(v81) = (((v161 + 78) ^ 0xE9) << 24) | ((*(&STACK[0x9FE0] + v167) ^ 0x66) << 16) | ((*(&STACK[0x9FE0] + v169) ^ 0x66) << 8) | (7 * ((*(STACK[0x938] + ((v24 >> 27) ^ 0xE4)) + 103) ^ 0xEE));
  HIDWORD(v24) = v27 ^ 0x505C70;
  LODWORD(v24) = v27 ^ 0x11111111;
  LODWORD(v27) = v24 >> 24;
  v174 = *(STACK[0x948] + 4 * (BYTE2(v173) ^ 0xD8u)) + 2083238470;
  HIDWORD(v24) = v174 ^ 0x5B424A;
  LODWORD(v24) = v174 ^ 0xD0000000;
  v175 = v24 >> 24;
  v176 = v171 ^ v27;
  LODWORD(v27) = *(STACK[0x958] + 4 * ((v126 + 13) ^ 0x15u));
  HIDWORD(v24) = v27 ^ 6;
  LODWORD(v24) = v27 ^ 0x980AFC00;
  LODWORD(v27) = (v24 >> 8) - 300621160 - ((2 * (v24 >> 8)) & 0xDC29C530);
  LODWORD(v161) = v78 + (v111 ^ v176);
  LODWORD(v124) = *(STACK[0x948] + 4 * (HIBYTE(v173) ^ 0x19)) + 2083238470;
  HIDWORD(v24) = v124 ^ 0x2DA;
  LODWORD(v24) = v124 ^ 0x905B0000;
  LODWORD(v135) = v175 ^ *(STACK[0x958] + 4 * (BYTE1(v173) ^ 0x2Bu)) ^ v81 ^ v27 ^ (v24 >> 16);
  LODWORD(v124) = v166 - 362984898;
  *(&STACK[0x7E00] + v124) = v135 ^ 0x9D864158;
  LODWORD(v54) = LODWORD(STACK[0x898]) ^ (v54 + 641732801);
  LODWORD(v27) = LODWORD(STACK[0x898]) ^ 0x515AE973 ^ v176;
  v177 = v79 ^ v176 ^ 0x54C86DA8;
  LODWORD(v81) = v79 ^ 0xA2B34065;
  LODWORD(v20) = v162 - 2 * ((v162 + 176158720) & 0x4B22B78B ^ v162 & 8) - 710758525;
  v178 = v27 - LODWORD(STACK[0x8A0]);
  LODWORD(v79) = *(v149 + 4 * (LODWORD(STACK[0x8F8]) ^ 0xACu));
  v179 = v177 - v81;
  HIDWORD(v24) = v79 ^ 0xF69;
  LODWORD(v24) = v79 ^ 0x2B7E8000;
  LODWORD(v27) = v24 >> 12;
  HIDWORD(v24) = v27 ^ 0x17;
  LODWORD(v24) = v27 ^ 0xB6B1E300;
  LODWORD(v27) = v24 >> 8;
  LOBYTE(v79) = 7 * ((*(v172 + (((LODWORD(STACK[0x8F8]) >> 3) & 0xE0 | ((v162 - 2 * ((v162 - 2048) & 0xB78B ^ v162 & 8) - 20605) >> 11)) ^ 0xD2)) + 103) ^ 0xEE);
  LODWORD(v81) = ((*(&STACK[0xC860] + v165) ^ 0xFFFFFFF1) << 24) | ((*(&STACK[0xC860] + v167) ^ 0xF1) << 16);
  LODWORD(v165) = *(STACK[0x918] + (((*(&STACK[0xC860] + v169) ^ 0xF1) + 110) ^ 0xB0));
  HIDWORD(v24) = v165 ^ 0x13;
  LODWORD(v24) = ~v165 << 24;
  LODWORD(v81) = v81 & 0xFFFF00FF | (((v24 >> 31) ^ 0x92) << 8);
  v180 = v178 ^ v161 ^ v179;
  LODWORD(v172) = *(STACK[0x970] + (((BYTE2(v20) ^ 0x22) - 92) ^ 0x4ELL)) - 49;
  LODWORD(v161) = *(STACK[0x960] + 4 * (v79 ^ 0xAAu));
  HIDWORD(v24) = v172 ^ 0xFFFFFFF1;
  LODWORD(v24) = (v172 ^ 0x20) << 24;
  LODWORD(v172) = *(v149 + 4 * ((v24 >> 29) ^ 0xB9u));
  HIDWORD(v24) = v161 ^ 8;
  LODWORD(v24) = v161 ^ 0x6BA90E90;
  v181 = v24 >> 4;
  HIDWORD(v24) = v172 ^ 0xF69;
  LODWORD(v24) = v172 ^ 0x2B7E8000;
  LODWORD(v172) = v24 >> 12;
  HIDWORD(v24) = v172 ^ 0xF9CFFC;
  LODWORD(v24) = v172 ^ 0x20000000;
  LODWORD(v172) = v24 >> 24;
  LODWORD(v161) = *(v149 + 4 * (BYTE3(v20) ^ 0x54));
  HIDWORD(v24) = v161 ^ 0xF69;
  LODWORD(v24) = v161 ^ 0x2B7E8000;
  LODWORD(v165) = v24 >> 12;
  HIDWORD(v24) = v165 ^ 0x1F1F1F1F;
  LODWORD(v24) = v165 ^ 0x48AC0000;
  LODWORD(v27) = v181 ^ v27 ^ (v81 | *(&STACK[0xC860] + v170) ^ 0xF1);
  *(&STACK[0xD760] + v147) = (LODWORD(STACK[0x858]) ^ 0x4F03F029) - 1519764384 + v180 + 1;
  LODWORD(v172) = v27 ^ (v24 >> 16) ^ v172;
  *(&STACK[0xDFA0] + v124) = v172 ^ 0x8F518328;
  LODWORD(v27) = *(STACK[0x900] + 4 * (BYTE3(v135) ^ 0xA5));
  v182 = *(STACK[0x928] + (((v172 >> 3) | (32 * (v172 & 7))) ^ 0x1ALL));
  HIDWORD(v24) = v27 ^ 0x716434;
  LODWORD(v24) = v27 ^ 0xD0000000;
  LODWORD(v27) = v24 >> 27;
  HIDWORD(v24) = v27 ^ 0xFA7B;
  LODWORD(v24) = v27 ^ 0xC52E0000;
  LODWORD(v27) = v24 >> 16;
  HIDWORD(v24) = v182 ^ 0x39;
  LODWORD(v24) = v182 << 24;
  LODWORD(v81) = ((2 * v54) & 0x3FC5422C ^ 0x6454208) + (v54 ^ 0x7CC442F3);
  v183 = *(STACK[0x900] + 4 * (BYTE1(v135) ^ 6u));
  LOBYTE(v182) = (v24 >> 30) ^ 0x88;
  HIDWORD(v24) = v183 ^ 0x716434;
  LODWORD(v24) = v183 ^ 0xD0000000;
  v184 = v24 >> 27;
  LODWORD(v165) = *(STACK[0x930] + 4 * (v135 ^ 0x21u));
  HIDWORD(v24) = v165 ^ 0xC4;
  LODWORD(v24) = v165 ^ 0xD3511B00;
  LODWORD(v165) = v24 >> 8;
  LODWORD(v135) = *(STACK[0x930] + 4 * (BYTE2(v135) ^ 0xF2u));
  v185 = *(v159 + 4 * ((7 * v182) ^ 0x2Bu));
  HIDWORD(v24) = v135 ^ 0x511BC4;
  LODWORD(v24) = v135 ^ 0xD3000000;
  LODWORD(v135) = v24 >> 24;
  HIDWORD(v24) = v185 ^ 0xAD;
  LODWORD(v24) = v185 ^ 0x91265200;
  LODWORD(v27) = v165 ^ v184 ^ v135 ^ v27;
  v186 = (v24 >> 8) + 1732869605 - ((2 * (v24 >> 8)) & 0xCE92FBCA);
  v187 = *(STACK[0x910] + 4 * (BYTE2(v172) ^ 0x5Au));
  HIDWORD(v24) = v187 ^ 0x2DDF19;
  LODWORD(v24) = v187 ^ 0x5B000000;
  v188 = *(v159 + 4 * (BYTE1(v172) ^ 0xF7u)) ^ (v24 >> 24);
  LODWORD(v172) = *(v159 + 4 * (BYTE3(v172) ^ 0xDA));
  HIDWORD(v24) = v172 ^ 0xD868;
  LODWORD(v24) = v172 ^ 0x31700000;
  LODWORD(v22) = LODWORD(STACK[0x890]) + v81;
  LODWORD(v135) = (LODWORD(STACK[0x870]) + 8520729) ^ LODWORD(STACK[0x868]) ^ v27;
  LODWORD(v20) = ((2 * (v81 + 1612537578 + (v20 ^ 0xCB22B783))) & 0xEFEF7FDE) + ((v81 + 1612537578 + (v20 ^ 0xCB22B783)) ^ 0xF7F7BFEF);
  v189 = ((2 * (v162 + 44137676)) & 0xF37AFFFC) + ((v162 + 44137676) ^ 0x79BD7FFE);
  LODWORD(v159) = v136 + 1620104543 + (v27 ^ 0x5285A4D);
  LODWORD(v19) = STACK[0x978];
  LODWORD(v27) = (LODWORD(STACK[0x978]) - v189 + 1400729405) ^ (v189 - 2042462206);
  *(&STACK[0x79D0] + v124) = v159;
  *(&STACK[0xD760] + v124) = (((v186 ^ v188 ^ (v24 >> 16) ^ 0xD67FAD5C ^ (v22 - 1365252154)) - v22 + 1365252154) ^ ((v135 ^ 0xFAA116C2 ^ v186 ^ v188 ^ (v24 >> 16)) - (v135 ^ 0x2CDEBB9E)) ^ (-1612537578 - v81 + (v186 ^ v188 ^ (v24 >> 16) ^ 0xD67FAD5C ^ (v81 + 1612537578)))) - v19 - 878031583;
  LODWORD(STACK[0x978]) = (((2 * v27) & 0xFD89F77A) + (v27 ^ 0xFEC4FBBD) - 1160412574 + v20) ^ 0xA0539937 ^ (v20 - ((2 * v20 + 87206168) & 0xA41A22C) + 1069163938);
  return (*(STACK[0x940] + 8 * ((29 * ((v124 - 15) < 0xFFFFFFF0)) | STACK[0x8B0])))();
}

uint64_t sub_2447D500C@<X0>(int a1@<W2>, int a2@<W5>, int a3@<W7>, uint64_t a4@<X8>)
{
  v9 = a4 - 108307866;
  v10 = a4 + 1;
  STACK[0x8F8] = v10;
  v11 = v10 - 108307866;
  v12 = STACK[0x8B8];
  v13 = 2 * v5 - 1277014492;
  v14 = ((v7 - 1387441161) ^ a3 ^ 0x67769C19) + 360497117 - ((((v7 - 1387441161) ^ a3 ^ 0x67769C19) & 0x157CBFFD ^ ((v7 - 1387441161) ^ a3) & 0x20) << (STACK[0x8B8] ^ 0x99));
  LODWORD(STACK[0x8E8]) = v14;
  v15 = a1 - 2 * ((a1 + 107476724) & 0x5DDC13EB ^ a1 & 2) - 465302819;
  v16 = 4 * v9;
  v17 = 4 * v9 + 56;
  STACK[0x8A0] = v17;
  v18 = ((2 * ((v15 ^ 0x5DDC13E9) - (v6 ^ 0x684ACB62))) & 0xE6BFFBF6) + (((v15 ^ 0x5DDC13E9) - (v6 ^ 0x684ACB62)) ^ 0x735FFDFB);
  v19 = *(&STACK[0xDFA0] + v17);
  v20 = *(*(&off_278E1E490 + (v12 ^ 0x165B)) + (BYTE1(v19) ^ 0xF1));
  v21 = *(&off_278E1E490 + v12 - 5305);
  LODWORD(STACK[0x8D8]) = v18 + (v6 ^ 0xB93913BC ^ (v5 - (v13 & 0xA2E7B1BC) - 1419444240));
  LODWORD(STACK[0x8B0]) = *(v21 + 4 * (BYTE2(v19) ^ 0x5CLL));
  if (((v19 << 7) & 0x80) != 0)
  {
    v22 = -42;
  }

  else
  {
    v22 = -41;
  }

  STACK[0x8A8] = *(&off_278E1E490 + (v12 ^ 0x1162)) + ((v19 >> 22) & 0x3FC ^ 0x2B8);
  v23 = STACK[0x978];
  LODWORD(STACK[0x8E0]) = ((2 * (v14 ^ LODWORD(STACK[0x978]))) & 0x7D6B8B7E ^ 0x490A0352) + (v14 ^ LODWORD(STACK[0x978]) ^ 0x5B38F456);
  v24 = *(STACK[0x8D0] + (((v19 << 7) & 0x80 | (v19 >> 1)) ^ 0x72));
  v25 = ((2 * ((a3 ^ 0x67769C19) - (v23 ^ 0xF0F18E34))) & 0xB77F3B8E) + (((a3 ^ 0x67769C19) - (v23 ^ 0xF0F18E34)) ^ 0xDBBF9DC7);
  LODWORD(STACK[0x898]) = v25 - ((2 * v25 + 1886208018) & 0x61177966);
  v26 = v25 + (v8 ^ v23 ^ 0x1D2EFA71);
  v27 = *(v4 + 4 * v11);
  v28 = *(&off_278E1E490 + v12 - 4257) + 4 * ~BYTE2(v27);
  HIDWORD(v30) = v20 ^ 0xAED;
  LODWORD(v30) = v20 ^ 0xA844E000;
  v29 = v30 >> 12;
  v31 = *(STACK[0x918] + (((BYTE1(v27) ^ 0xC3) + 110) ^ 0xB0));
  HIDWORD(v30) = v31 ^ 0x13;
  LODWORD(v30) = ~v31 << 24;
  v32 = ((v27 >> 17) & 0x80 | (v27 >> 25)) ^ 0x45;
  v33 = v32 + 1001275795 - ((2 * v32) & 0x148) + 17;
  v34 = v5 - (v13 & 0xE3307F88);
  v35 = v15 ^ a2;
  v36 = *(*(&off_278E1E490 + (v12 ^ 0x1790)) + (*(v4 + 4 * v11) ^ 0x74)) ^ 0x437B07E7;
  v37 = v15 ^ (v34 + 1267295958);
  v38 = v36 ^ *(*(&off_278E1E490 + v12 - 5412) + ((v30 >> 31) ^ 0x3Cu) - 2);
  v39 = *(&STACK[0xDFA0] + v11);
  v40 = *(*(&off_278E1E490 + (v12 ^ 0x163D)) + (BYTE1(v39) ^ 0x32) - 1);
  v41 = (731421583 * v40 - ((1462843166 * v40 - 1823328828) & 0xF6290AEE) - 994205607) ^ *(*(&off_278E1E490 + (v12 ^ 0x1446)) + (v39 ^ 0xFCLL) - 1);
  HIDWORD(v30) = *(*(&off_278E1E490 + v12 - 5265) + ((-13 * (v22 ^ (2 * v24) ^ 0xA8)) ^ 0xB5u) - 2);
  LODWORD(v30) = HIDWORD(v30) ^ 0x3F283408;
  LODWORD(v39) = (-949776921 * *(*(&off_278E1E490 + v12 - 4713) + ((v39 >> 22) & 0x3FC ^ 0x2EC) - 8) + 527574149) ^ *(*(&off_278E1E490 + v12 - 5235) + (BYTE2(v39) ^ 0x97) - 3) ^ (v41 - ((2 * v41) & 0xC5361224) + 1654327570);
  v42 = v6;
  v43 = *(&STACK[0x7E00] + STACK[0x8A0]);
  v44 = v29 ^ (v30 >> 1);
  v45 = *(*(&off_278E1E490 + v12 - 3827) + (*(&STACK[0x7E00] + STACK[0x8A0]) ^ 0xCFLL) - 3);
  HIDWORD(v30) = v45 ^ 0x163;
  LODWORD(v30) = v45 ^ 0x62283000;
  v46 = (v30 >> 10) - ((2 * (v30 >> 10)) & 0x3335A57E);
  v47 = (*(*(&off_278E1E490 + v12 - 4234) + ((-13 * (*(STACK[0x920] + (v33 ^ 0x3BAE4193u)) ^ ((v33 ^ 0xF5) - ((2 * (v33 ^ 0xF5) + 60) & 0x6A) + 83) ^ 0x5E)) ^ 0xEAu) - 2) + 284553929) ^ *(v28 - 1) ^ (v38 - ((2 * v38) & 0x3A210186) - 1659862845);
  v48 = (((v43 >> 9) & 0x80 | (v43 >> 17) & 0x7F) ^ 0x74) - (HIWORD(*(&STACK[0x7E00] + STACK[0x8A0])) & 6) + 1416217091;
  v49 = (v44 - ((2 * v44) & 0x2B88E258) - 1782288084) ^ LODWORD(STACK[0x8B0]);
  v50 = *(*(&off_278E1E490 + (v12 ^ 0x1486)) + ((-13 * (*(STACK[0x920] + (v48 ^ 0x5469C234)) ^ ((v48 ^ 0x52) - ((2 * (v48 ^ 0x52) + 60) & 0x6A) + 83) ^ 0x5E)) ^ 0xA7u) - 1);
  HIDWORD(v30) = v50 ^ 0x3F18F1;
  LODWORD(v30) = v50 ^ 0xBF400000;
  v51 = v18 - ((2 * v18 + 1093435306) & 0xC11B543A) - 2128352782;
  v52 = STACK[0x8D8];
  v53 = (v30 >> 22) ^ *(*(&off_278E1E490 + v12 - 5095) + (BYTE1(v43) ^ 0x69)) ^ (v46 + 429576895);
  LODWORD(v43) = (v53 - ((2 * v53) & 0xE2A00790) + 1901069256) ^ *(*(&off_278E1E490 + v12 - 4789) + ((v43 >> 22) & 0x3FC ^ 0x70) - 12);
  v54 = v43 ^ 0xE348DCE9;
  v55 = ((2 * (v35 ^ v42)) & 0x38FFDFFA ^ 0x8B34698) + (v35 ^ v42 ^ 0x58A65CB1);
  v56 = (v49 - ((2 * v49) & 0xC358EFFC) + 1638692862) ^ *(STACK[0x8A8] - 4);
  v57 = (((LODWORD(STACK[0x898]) + 1757568188) ^ 0xE7DC9A86 ^ v43) - ((LODWORD(STACK[0x898]) + 1757568188) ^ 0x308BBCB3)) ^ (-608199225 - v26 + ((v26 + 608199225) ^ 0xD7572635 ^ v43));
  v58 = (LODWORD(STACK[0x978]) ^ 0xDA8CB7DE) + v55 + (((v37 ^ v47 ^ v39 ^ 0x399BF287) - (v37 ^ v47 ^ 0x93EC1F65)) ^ ((a3 ^ 0xCD0171FB ^ v39) - (a3 ^ 0x67769C19)) ^ ((v8 ^ 0x47A899A7 ^ v39) - (v8 ^ 0xEDDF7445))) + *(&STACK[0x79D0] + v16) + *(&STACK[0x79D0] + v16 + 36) - 1401287882;
  v59 = v16 + 64;
  LODWORD(v39) = (v42 ^ 0xBDC80D77) - LODWORD(STACK[0x8E0]) + *(&STACK[0xD760] + v16) + *(&STACK[0xD760] + v16 + 36) + (v47 ^ 0xBFA83348) + 1944145151;
  v60 = v55 - v52 - ((2 * (v55 - v52) + 767564796) & 0x31323C64) - 277271504;
  LODWORD(v43) = v58 + (v56 ^ 0x65723BA6);
  v61 = LODWORD(STACK[0x8E0]) - v26 - 2 * ((LODWORD(STACK[0x8E0]) - v26 + 487184392) & 0x53D5DFBF ^ (LODWORD(STACK[0x8E0]) - v26) & 2) + 1893709765;
  v62 = ((v52 - 1935670779) ^ v51 ^ 0x85FF91BB ^ v56) + 874511068 - ((2 * ((v52 - 1935670779) ^ v51 ^ 0x85FF91BB ^ v56)) & 0x683FF5B8);
  *(&STACK[0x79D0] + v59) = v43 - 612171161;
  v63 = v62 ^ v54;
  v64 = v62 ^ 0x341FFADC;
  v65 = ((LODWORD(STACK[0x8E8]) ^ 0x157CBFDD) - ((2 * (LODWORD(STACK[0x8E8]) ^ 0x157CBFDD) - 656743498) & 0xF7639C02) - 400605220) ^ (v26 - 2 * ((v26 + 1251880384) & 0x7BB1CE13 ^ v26 & 0x12) + 1179646913);
  LODWORD(v39) = v39 + ((v63 - v64) ^ v57);
  v66 = (v52 - ((2 * v52 + 100375320) & 0x745CA5E) - 1230982469) ^ ((v35 ^ 0x9A5ACF5F) + 1819111899 + (((v35 ^ 0x9A5ACF5F) - (v35 ^ 0xAC93782E)) ^ 0xFFFFFFFE));
  LODWORD(v39) = v39 + 753027850 - ((2 * v39) & 0x59C49614);
  v67 = v65 ^ 0xFE2AF698;
  *(&STACK[0xD760] + v59) = (((v39 ^ 0x2CE24B0A) - 2083654475) ^ 0xBBBE4FAF) + 1709045756 + ((2 * ((v39 ^ 0x2CE24B0A) - 2083654475)) & 0x777C9F5E);
  LODWORD(v43) = 1536571714 - v43 - ((-2 * v43) & 0xB72C7284);
  v68 = (v65 ^ 0x84695471 ^ (((2 * (v61 ^ 0x73F8BB14 ^ v43)) & 0xF48745D2) - (v61 ^ 0x73F8BB14 ^ v43) - 2051252970)) - (v66 ^ 0x6F4E2EF6 ^ ((v39 ^ v60 ^ 0x347B5538) - 2 * ((v39 ^ v60 ^ 0x347B5538) & 0x16829F57 ^ (v39 ^ v60) & 2) - 1769824427));
  v69 = STACK[0x970];
  v70 = ((((v66 ^ 0xD834DC6D ^ v43) + 753027850 - ((2 * (v66 ^ 0xD834DC6D ^ v43)) & 0x59C49614)) ^ 0xFE2AF698 ^ v39) - v67) ^ (v26 + 1592309011) ^ ((((v60 ^ 0x430F2770 ^ v43) + 753027850 - ((2 * (v60 ^ 0x430F2770 ^ v43)) & 0x59C49614)) ^ 0x7BBB5DEB ^ v39) - (v61 ^ 0x286E8256));
  v71 = v70 - ((2 * v70) & 0xC0F984DA) - 528694675;
  LODWORD(v43) = *(STACK[0x958] + 4 * (v71 ^ 0xB8u));
  HIDWORD(v30) = v43 ^ 0xAD;
  LODWORD(v30) = v43 ^ 0xAE664500;
  LODWORD(v43) = v30 >> 8;
  v72 = *(STACK[0x948] + 4 * (BYTE2(v71) ^ 0x56u)) + 2083238470;
  HIDWORD(v30) = v72 ^ 0x6B701F;
  LODWORD(v30) = v72 ^ 0x88888888;
  v73 = v30 >> 24;
  LODWORD(v39) = *(STACK[0x958] + 4 * (BYTE1(v71) ^ 0xF2u));
  v74 = (v68 ^ (v52 - 951560993)) - 745832922 - ((2 * (v68 ^ (v52 - 951560993))) & 0xA716FC4C);
  v75 = *(STACK[0x948] + 4 * (HIBYTE(v71) ^ 0x2D)) + 2083238470;
  HIDWORD(v30) = v75 ^ 0x997;
  LODWORD(v30) = v75 ^ 0xAEE0000;
  *(&STACK[0x7E00] + v59) = v39 ^ 0x7F43C1D1 ^ v73 ^ (v30 >> 16) ^ (v43 - 300621160 - ((2 * v43) & 0xDC29C530));
  v76 = *(STACK[0x950] + 4 * ((((v68 ^ (v52 + 21727)) + 32294 - ((2 * (v68 ^ (v52 + 21727))) & 0xFC4C)) >> 8) ^ 0x34u));
  LODWORD(v43) = *(STACK[0x960] + 4 * (((v68 ^ (v52 - 33)) + 38 - ((2 * (v68 ^ (v52 - 33))) & 0x4C)) ^ 0x55u));
  HIDWORD(v30) = v43 ^ 8;
  LODWORD(v30) = v43 ^ 0x6BA90E90;
  LODWORD(v43) = v30 >> 4;
  HIDWORD(v30) = v76 ^ 0xF69;
  LODWORD(v30) = v76 ^ 0x2B7E8000;
  v77 = v30 >> 12;
  v78 = *(STACK[0x960] + 4 * (BYTE2(v74) ^ 0x90u));
  HIDWORD(v30) = v78 ^ 8;
  LODWORD(v30) = v78 ^ 0x6BA90E90;
  v79 = v30 >> 4;
  HIDWORD(v30) = v43 ^ 0x3E;
  LODWORD(v30) = v43 ^ 0x58967400;
  LODWORD(v43) = v30 >> 8;
  HIDWORD(v30) = v79 ^ 0x152FE5;
  LODWORD(v30) = v79 ^ 0xF5000000;
  v80 = v30 >> 24;
  v81 = *(v69 + (((HIBYTE(v74) ^ 0xD3) - 92) ^ 0x4ELL)) - 49;
  HIDWORD(v30) = v81 ^ 0xFFFFFFF1;
  LODWORD(v30) = (v81 ^ 0x20) << 24;
  v82 = *(STACK[0x960] + 4 * ((v30 >> 29) ^ 0x5Bu));
  HIDWORD(v30) = v82 ^ 8;
  LODWORD(v30) = v82 ^ 0x6BA90E90;
  v83 = v30 >> 4;
  HIDWORD(v30) = v83 ^ 0x7027;
  LODWORD(v30) = v83 ^ 0x5AB00000;
  LODWORD(STACK[0x978]) = v61 ^ 0x1E4FC8CB;
  *(&STACK[0xDFA0] + v59) = v77 ^ v43 ^ v80 ^ 0xE065160D ^ (v30 >> 16);
  return (*(STACK[0x940] + 8 * ((57 * (STACK[0x8F8] != 108307914)) ^ v12)))();
}

uint64_t sub_2447D6028(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  STACK[0x880] = 0;
  v16 = LODWORD(STACK[0x704]) - ((2 * LODWORD(STACK[0x704]) + 1470719770) & 0x7952CD68) + 1753094721;
  v17 = 2055873338 - LODWORD(STACK[0x6D8]) - ((1019539072 - 2 * LODWORD(STACK[0x6D8])) & 0x384F57F4);
  v18 = v9 - ((2 * v9 - 1277014492) & 0x91CAC3F4) + 584485132;
  LODWORD(STACK[0x890]) = ((LODWORD(STACK[0x6E8]) ^ 0x6CBBD5A9 ^ ((v17 ^ 0xCD547324 ^ v12) + 823966633 - ((2 * (v17 ^ 0xCD547324 ^ v12)) & 0x62397752))) - (v10 ^ 0x3B3C80EA)) ^ v15 ^ 0x2C78614C ^ (1387441161 - v14 + (LODWORD(STACK[0x6E8]) ^ 0x36C9B771 ^ ((a6 ^ v17 ^ 0xDBA1774C) + 823966633 - 2 * ((a6 ^ v17 ^ 0xDBA1774C) & 0x311CBBBB ^ (a6 ^ v17) & 0x12))));
  v19 = ((2 * (v18 ^ a1)) & 0xFD7EBBF6 ^ 0x914A83F4) + (v18 ^ a1 ^ 0x365A3C01);
  LODWORD(STACK[0x8D8]) = v19;
  v20 = ((2 * (v11 - (v8 ^ 0x70704165))) & 0xBFDDEDFE) + ((v11 - (v8 ^ 0x70704165)) ^ 0x5FEEF6FF);
  v21 = (v8 ^ 0x1CCB94CC ^ (v20 - 1609496319)) - ((2 * (v8 ^ 0x1CCB94CC ^ (v20 - 1609496319))) & 0x20C98758) - 1872444500;
  v22 = v19 - v20;
  LODWORD(STACK[0x8A0]) = v22;
  v23 = ((2 * ((v10 ^ 0xC4C37F15) - 1387441161 + v14 + 1)) & 0x7FEF9EFE) + (((v10 ^ 0xC4C37F15) - 1387441161 + v14 + 1) ^ 0x3FF7CF7F);
  v24 = (v23 - 1073205119) ^ LODWORD(STACK[0x978]);
  v25 = ((2 * (a8 ^ v15)) & 0xBFFEBEFC ^ 0x155290B8) + (a8 ^ v15 ^ 0x5556B722);
  LODWORD(STACK[0x8F8]) = v12;
  v26 = v20 - ((2 * v20 + 129545034) & 0xE8C71B6) + 52597376;
  v27 = LODWORD(STACK[0x850]) - ((-1876618794 - 2 * LODWORD(STACK[0x710])) & 0xB2E50A7E) - 1585115606;
  LODWORD(STACK[0x8A8]) = v25 - v23;
  v28 = ((2 * v24) & 0x79FB6B4E ^ 0x38836A44) + (v24 ^ 0xE3BC0A95);
  v29 = v16 ^ 0x968922BA ^ ((v27 ^ 0xC9164693 ^ v21) + 1017734836 - ((2 * (v27 ^ 0xC9164693 ^ v21)) & 0x7952CD68));
  LODWORD(STACK[0x8B0]) = (((v26 ^ v27 ^ 0xDE34BDE4) + 1017734836 - 2 * ((v26 ^ v27 ^ 0xDE34BDE4) & 0x3CA966BE ^ (v26 ^ v27) & 0xA)) ^ v16) - v23;
  v30 = ((v26 ^ 0x968922BA ^ ((v16 ^ 0xACCDA518 ^ v21) - 2025441061 - ((2 * (v16 ^ 0xACCDA518 ^ v21)) & 0xE8C71B6))) - (v27 ^ (v23 - 1680637659) ^ 0x5972853F ^ (v28 - 1023260071))) ^ (v22 - 516974332);
  LODWORD(STACK[0x8E8]) = v30 - 1046014711 - ((2 * v30) & 0x834E2A12);
  v31 = (v28 + 1094466488) ^ ((a8 ^ 0x67769C19) - v25 - 1610117121 + v23);
  v32 = v31 + 247598874 - ((2 * v31) & 0x1D841E34);
  v33 = v32 ^ (v25 - v23 - 1800891247);
  v34 = ((2 * v21) & 0x1DDEEFA2 ^ 0xDDAC220) + (v21 ^ 0x880296C7);
  v35 = v34 - ((2 * v34 + 613411996) & 0x79E2E296) + 255420313;
  v36 = -604617904 - LODWORD(STACK[0x6EC]) - ((-1095257292 - 2 * LODWORD(STACK[0x6EC])) & 0xF934D36C);
  v37 = v36;
  LODWORD(STACK[0x878]) = v36;
  v38 = ((v36 ^ 0xC06B18FD ^ v35) + 1459537076 - ((2 * (v36 ^ 0xC06B18FD ^ v35)) & 0xADFD8968)) ^ LODWORD(STACK[0x720]);
  v39 = STACK[0x720];
  LODWORD(STACK[0x720]) = STACK[0x720];
  v40 = v28 - ((2 * v28 + 1215525104) & 0xE9FA2556) - 1724462301;
  v41 = (v26 ^ 0x874638DB) - v34 + 280331890 - ((2 * ((v26 ^ 0x874638DB) - v34 + 280331890) + 410319854) & 0xFC30D292) + 173205312;
  v42 = v37 ^ 0x28200FF ^ v41;
  v43 = v41;
  LODWORD(STACK[0x828]) = v41;
  v44 = v23 - v28;
  v45 = (((v42 + 1459537076 - ((2 * v42) & 0xADFD8968)) ^ v39) - v44 + 422460572) ^ (v38 - (v40 ^ 0xF4FD12AB));
  LODWORD(STACK[0x898]) = v33 ^ 0x3A1EFFF4 ^ (v45 - ((2 * v45) & 0x4BA9441A) - 1512791539);
  v44 -= 422460572;
  LODWORD(STACK[0x870]) = v44;
  v46 = ((2 * (v44 + (v40 ^ 0xB02ED54) + 1)) & 0x63ADCFCC) + ((v44 + (v40 ^ 0xB02ED54) + 1) ^ 0x31D6E7E6);
  v47 = (v33 ^ 0xEC20F1A ^ (v46 - 836167654)) + v46 - 836167654;
  v48 = v47 - 1870685275 - ((2 * v47) & 0x20FF374A);
  LODWORD(STACK[0x830]) = v48;
  LODWORD(STACK[0x838]) = v40;
  v49 = (v40 ^ 0x733EBF69) + 130974428 - ((2 * (v40 ^ 0x733EBF69) + 440769852) & 0x75577442) + 1507;
  v50 = ((2 * v49) & 0xFF7BE536 ^ 0x83636124) + (v49 ^ 0x3E0C4629);
  LODWORD(STACK[0x840]) = v29 - v28;
  LODWORD(STACK[0x858]) = v46;
  v51 = (((v32 ^ 0xEC20F1A) - v28 - ((2 * ((v32 ^ 0xEC20F1A) - v28) + 2106034320) & 0xE9FA2556) - 1279207693) ^ v40) - 2 * v46 - v50 + 1319476845;
  v52 = ((2 * v51) & 0x6B5EFFDA) + (v51 ^ 0x35AF7FED);
  v53 = v50 - ((2 * v50 + 241396834) & 0xA577CE88) + 1508744565;
  LODWORD(STACK[0x81C]) = v53;
  v54 = ((2 * ((v52 - 900693997) ^ v53)) & 0xA6F97E3A ^ 0xA4714E08) + ((v52 - 900693997) ^ v53 ^ 0x81C75859);
  v55 = v49 ^ 0x2AD42184 ^ v48;
  LODWORD(STACK[0x868]) = v55;
  v56 = v55 - 1438526281 + v52;
  v57 = v46 + (v49 ^ 0x455445DE) - 483309190 + v50 + 337880178 - ((2 * (v46 + (v49 ^ 0x455445DE) - 483309190 + v50)) & 0x284748E4);
  v58 = (v49 ^ 0x2AD42184 ^ v48) - v56 - v54;
  v59 = v57 ^ 0xB1993DC3;
  LODWORD(STACK[0x850]) = v57;
  LODWORD(STACK[0x8E0]) = v58;
  v60 = v58 - (v57 ^ 0xB1993DC3);
  v61 = v54 - v58;
  LODWORD(STACK[0x888]) = ((v60 - 1138824893) ^ (v54 - v58 - 594523082)) - 1175972983 - ((2 * ((v60 - 1138824893) ^ (v54 - v58 - 594523082))) & 0x73D02712);
  v62 = (v35 ^ 0x3B32DC89) - ((2 * (v35 ^ 0x3B32DC89) + 440769852) & 0x6D99093C) + 66016060;
  v63 = ((2 * v62) & 0x7E4777DE ^ 0x1A05141A) + (v62 ^ 0xF2F531E2);
  LODWORD(STACK[0x808]) = v35;
  v64 = ((2 * ((v43 ^ 0x7E186949) - (v35 ^ 0xBCF1714B))) & 0x7AFEA77E) + (((v43 ^ 0x7E186949) - (v35 ^ 0xBCF1714B)) ^ 0xBD7F53BF);
  v65 = (v62 ^ 0x4DD68A0D) - ((2 * (v62 ^ 0x4DD68A0D) + 232739224) & 0x5E976CB4) - 1237623002;
  v66 = v65;
  v67 = (LODWORD(STACK[0x71C]) ^ 0xF665E2B1 ^ v65) - 356482254 - ((2 * (LODWORD(STACK[0x71C]) ^ 0xF665E2B1 ^ v65)) & 0xD5810664);
  v68 = LODWORD(STACK[0x84C]) - ((907886560 - 2 * LODWORD(STACK[0x6FC])) & 0x3782294C) + 919581846;
  v69 = (v68 ^ 0x497AF3E2 ^ v53) + 337880178 - ((2 * (v68 ^ 0x497AF3E2 ^ v53)) & 0x284748E4);
  v70 = (v62 ^ 0x49337B61) + v64 + 404952141 + v63 - 356482254 - ((2 * ((v62 ^ 0x49337B61) + v64 + 404952141 + v63)) & 0xD5810664);
  v71 = (v67 ^ v70) - (v69 ^ v57);
  v72 = (v34 - 280331890) ^ (v13 + v20 - LODWORD(STACK[0x8D8]) + 258859271);
  v73 = v72 + 1548793687 - ((2 * v72) & 0xB8A16EAE);
  v74 = v73 ^ (LODWORD(STACK[0x8A0]) + 366984596);
  LODWORD(STACK[0x810]) = v74;
  v75 = (v74 ^ 0x5C50B757 ^ (v64 + 1115728961)) + v64 + 1115728961;
  v76 = v75 - ((2 * v75) & 0xAD5FC048) + 1454366756;
  LODWORD(STACK[0x820]) = v76;
  v77 = ((2 * (v76 ^ v62)) & 0x9779D6FA ^ 0x8040C070) + (v76 ^ v62 ^ 0x2BDF8FC7);
  LODWORD(STACK[0x8A0]) = (v71 ^ (v77 - 582521440)) + 192667431 - ((2 * (v71 ^ (v77 - 582521440))) & 0x16F7BE4E);
  v78 = (v54 - v58 + 2031430946) ^ (v59 + 746669792);
  v79 = v61 + v56 - ((2 * (v61 + v56) + 1906788332) & 0x41CECFB2) - 1715794993;
  v80 = v79 ^ v78;
  v81 = (v79 ^ v78 ^ 0x20E767D9) - v60 - ((2 * ((v79 ^ v78 ^ 0x20E767D9) - v60) + 15230162) & 0x317EB9F4) + 959680355;
  LODWORD(STACK[0x8F8]) = v81;
  LODWORD(STACK[0x84C]) = (((v81 ^ 0x98BF5CFA) + (v79 ^ 0xB8583B23 ^ v81)) ^ 0x7DBBBC7B) + ((2 * ((v81 ^ 0x98BF5CFA) + (v79 ^ 0xB8583B23 ^ v81))) & 0xFB7778F6);
  v82 = (((v73 ^ 0x5C50B757) - v34 - ((2 * ((v73 ^ 0x5C50B757) - v34) + 560663780) & 0x79E2E296) - 844695619) ^ v35) - 2 * v64 - v63 - 1520681101;
  v83 = ((2 * v82) & 0xEE62DEAE) + (v82 ^ 0xF7316F57);
  v84 = (v62 ^ 0x4DD68A0D) - ((2 * (v62 ^ 0x4DD68A0D) + 232739224) & 0x5E976CB4) - 1237623002;
  v85 = ((2 * ((v83 + 147755177) ^ v66)) & 0x4E1D9D7A ^ 0x4E150C30) + ((v83 + 147755177) ^ v66 ^ 0x884578E7);
  v86 = v77 + v83;
  v87 = ((2 * (-v83 - v85 - 1639956972)) & 0xFFFE73E2) + ((-v83 - v85 - 1639956972) ^ 0xFFFF39F1);
  v88 = v70;
  v89 = (v70 ^ 0x4F7A1A83) - 2 * (((v70 ^ 0x4F7A1A83) + 746669792) & 0x24E22FFF ^ (v70 ^ 0x4F7A1A83) & 6) - 782010663;
  v90 = ((2 * ((v89 ^ 0x5B1DD006) + 50704 + v87)) & 0xBFBAFDB8) + (((v89 ^ 0x5B1DD006) + 50704 + v87) ^ 0x5FDD7EDC);
  v91 = v85 - v87 - ((2 * (v85 - v87) + 836818536) & 0x67BEAD80) + 214942196;
  v92 = v90 - 1608351452 + (v91 ^ 0xB3DF56C0) - ((2 * (v90 - 1608351452 + (v91 ^ 0xB3DF56C0)) + 1800458214) & 0x79E2A21C) + 848935169;
  LODWORD(STACK[0x800]) = (v92 ^ 0xBCF1510E) - v90;
  v93 = ((2 * (v86 - 434766263 + (v91 ^ 0xB3DF56C0))) & 0x77FFFD6) + ((v86 - 434766263 + (v91 ^ 0xB3DF56C0)) ^ 0x3BFFFEB);
  v94 = v91 ^ v89 ^ (v93 - ((2 * v93 + 1708582112) & 0x67BEAD80) - 422917840);
  v95 = (v94 ^ 0xA4E22FF9) - v90 - ((2 * ((v94 ^ 0xA4E22FF9) - v90) + 243072076) & 0xED5462E6) + 2112401305;
  LODWORD(STACK[0x7FC]) = (v95 ^ 0xF6AA3173) + (v95 ^ (v93 - 2 * ((v93 + 854291056) & 0x76AA317F ^ v93 & 0xC) + 697672675));
  v96 = STACK[0x714];
  v97 = 361890645 - LODWORD(STACK[0x708]) - ((97817984 - 2 * LODWORD(STACK[0x708])) & 0x54F712A);
  v98 = ((v80 ^ (((2 * (v97 ^ 0x2A7B895 ^ (v54 - v59 + 1974100470))) & 0x8040A554) - (v97 ^ 0x2A7B895 ^ (v54 - v59 + 1974100470)) - 1075860139) ^ 0x60C73573) - (v94 ^ 0xFBA1D6E1 ^ (2 * ((v92 ^ LODWORD(STACK[0x714]) ^ 0x216743C9) & 0x5F43F91C ^ (v92 ^ LODWORD(STACK[0x714])) & 4) - (v92 ^ LODWORD(STACK[0x714]) ^ 0x216743C9) - 1598290201))) ^ (v90 + 2025947610);
  LODWORD(STACK[0x860]) = v98 + 192667431 - ((2 * v98) & 0x16F7BE4E);
  v99 = ((((v97 ^ 0xBE56E99B ^ v92) - 1651109177 - ((2 * (v97 ^ 0xBE56E99B ^ v92)) & 0x3B2C258E)) ^ v96) - (v54 - v59) - 1974100470) ^ (v60 + 1602997655) ^ ((v80 ^ 0xDF189826) - ((1651109176 - (v94 ^ v97 ^ 0xA645976C) + 2 * ((v94 ^ v97 ^ 0xA645976C) & 0x1D9612D7 ^ (v94 ^ v97) & 0x10)) ^ v96));
  LODWORD(STACK[0x8D8]) = v99 + 42666463 - ((2 * v99) & 0x51613BE);
  v100 = STACK[0x700];
  v101 = -1565806032 - LODWORD(STACK[0x6D4]) - ((1387572888 - 2 * LODWORD(STACK[0x6D4])) & 0x72A2B5C8);
  v102 = ((((v100 ^ 0xCF67A354 ^ v91) - 1528680455 - ((2 * (v100 ^ 0xCF67A354 ^ v91)) & 0x49C45FF2)) ^ v89) - (v101 ^ 0xB9515AE4 ^ v78)) ^ (v87 + 50703);
  LODWORD(STACK[0x978]) = v102 + 192667431 - ((2 * v102) & 0x16F7BE4E);
  v103 = ((((v101 ^ 0x1DB3751D ^ v89) + 2092496276 - ((2 * (v101 ^ 0x1DB3751D ^ v89)) & 0xF971EB28)) ^ v100) - v59 - 746669792) ^ (LODWORD(STACK[0x8E0]) - 1284631615) ^ ((((v91 ^ v101 ^ 0xA8E0C24) + 2092496276 - 2 * ((v91 ^ v101 ^ 0xA8E0C24) & 0x7CB8F59D ^ (v91 ^ v101) & 9)) ^ v100) - v61 - 2031430946);
  LODWORD(STACK[0x8E0]) = v103 + 42666463 - ((2 * v103) & 0x51613BE);
  v104 = ((((v68 ^ 0x348AA2FC ^ v84) - 651275029 - ((2 * (v68 ^ 0x348AA2FC ^ v84)) & 0xB25CA9D6)) ^ LODWORD(STACK[0x71C])) - (LODWORD(STACK[0x81C]) ^ 0x52BBE744)) ^ (LODWORD(STACK[0x868]) - 1459332835) ^ ((((v68 ^ 0xF1019794 ^ v88) - 651275029 - ((2 * (v68 ^ 0xF1019794 ^ v88)) & 0xB25CA9D6)) ^ LODWORD(STACK[0x71C])) - (LODWORD(STACK[0x850]) ^ 0x1423A472));
  LODWORD(STACK[0x850]) = v104 + 42666463 - ((2 * v104) & 0x51613BE);
  v105 = 763516902 - LODWORD(STACK[0x6D0]) - ((274039584 - 2 * LODWORD(STACK[0x6D0])) & 0x4AAF2CAC);
  v106 = STACK[0x858];
  v107 = STACK[0x6F0];
  LODWORD(STACK[0x868]) = ((LODWORD(STACK[0x6F0]) ^ v62 ^ 0x488636B9 ^ (v64 - 683225029)) - (v105 ^ v49 ^ (LODWORD(STACK[0x858]) + 1659845652) ^ 0x9FFC2C77)) ^ 0x9708F52D ^ LODWORD(STACK[0x820]);
  v108 = (((((v64 - 683225029) ^ v105 ^ 0x25579656) - 28659161 - 2 * (((v64 - 683225029) ^ v105 ^ 0x25579656) & 0x7E4AB22F ^ ((v64 - 683225029) ^ v105) & 8)) ^ v107) - v106 - 1659845652) ^ ((((v105 ^ 0x939B12C8 ^ v62) - 28659161 - ((2 * (v105 ^ 0x939B12C8 ^ v62)) & 0xFC95644E)) ^ v107) - (v49 ^ 0xBAABBA21));
  v109 = ((LODWORD(STACK[0x720]) ^ 0xEA0FB5FF ^ LODWORD(STACK[0x808])) + 2115529033 - ((2 * (LODWORD(STACK[0x720]) ^ 0xEA0FB5FF ^ LODWORD(STACK[0x808]))) & 0xFC30D292)) ^ LODWORD(STACK[0x828]);
  v110 = STACK[0x8B8] ^ 0x3CF8;
  v111 = LODWORD(STACK[0x878]) ^ LODWORD(STACK[0x870]);
  LODWORD(STACK[0x858]) = LODWORD(STACK[0x70C]) + 984207352;
  v112 = STACK[0x84C];
  LODWORD(STACK[0x8B0]) = LODWORD(STACK[0x810]) ^ 0x9DF7A25E ^ (v109 - (v111 ^ 0x88677B1D ^ LODWORD(STACK[0x838])));
  LODWORD(STACK[0x8A8]) = LODWORD(STACK[0x830]) ^ 0x8C9F77B ^ (v108 - 1870685275 - ((2 * v108) & 0x20FF374A));
  LODWORD(STACK[0x8B8]) = -1232155776 - v61;
  LODWORD(STACK[0x840]) = 537044992 - v112;
  v113 = *(STACK[0x940] + 8 * v110);
  STACK[0x870] = 0x100000000;
  STACK[0x740] = *(&off_278E1E490 + (v110 ^ 0x2893));
  LODWORD(STACK[0x878]) = v110;
  STACK[0x738] = *(&off_278E1E490 + (v110 ^ 0x2B3C));
  LODWORD(STACK[0x84C]) = STACK[0x718];
  return v113();
}

uint64_t sub_2447D7574(uint64_t a1, int a2, uint64_t a3, int a4, unsigned int a5)
{
  LODWORD(STACK[0x888]) = v14;
  LODWORD(STACK[0x7A8]) = v13;
  LODWORD(STACK[0x890]) = a4;
  LODWORD(STACK[0x898]) = v9;
  LODWORD(STACK[0x8F8]) = STACK[0x978];
  v15 = STACK[0x8A0];
  LODWORD(STACK[0x978]) = STACK[0x8A0];
  v16 = *(STACK[0x8C0] + 4 * (HIBYTE(v15) ^ 0xE3)) - 639563628;
  v17 = v7 - 1826678858 + (a2 ^ 0x99D10095) - ((2 * (v7 - 1826678858 + (a2 ^ 0x99D10095))) & 0xE9A5EA14) - 187501302;
  LODWORD(STACK[0x7FC]) = v8 - 1572410491;
  HIDWORD(v18) = v16 ^ 0x9E18;
  LODWORD(v18) = v16 ^ 0x1E450000;
  LODWORD(STACK[0x7D0]) = v18 >> 16;
  v19 = v17 ^ (v8 - 1572410491 + (a2 ^ 0x662EFF6A) + 1);
  LODWORD(STACK[0x7C8]) = v14 ^ 0xB9E81389;
  v20 = ((2 * v19) & 0x5EFF76FC ^ 0x48A56214) + (v19 ^ 0x5BAD4E74);
  v21 = ((2 * ((a2 ^ 0x99D10095) + 1885592788)) & 0xDFDF5BB6) + (((a2 ^ 0x99D10095) + 1885592788) ^ 0x6FEFADDB) + (v14 ^ 0xB9E81389);
  LODWORD(STACK[0x800]) = v21;
  LODWORD(STACK[0x808]) = v21 + 1079433077;
  v22 = ((2 * ((v21 + 1079433077) ^ v17)) & 0x737FF15E ^ 0x6125E014) + ((v21 + 1079433077) ^ v17 ^ 0xCD6D0DA5);
  LODWORD(STACK[0x810]) = v22;
  v23 = v21 - ((2 * v21 + 1514407476) & 0x7161C6F0) - 1512905070;
  v24 = ((2 * ((v23 ^ 0x38B0E378) + v22 - 968882351)) & 0xD5EC4FF6) + (((v23 ^ 0x38B0E378) + v22 - 968882351) ^ 0x6AF627FB);
  LODWORD(STACK[0x7EC]) = v20;
  v25 = -(v14 ^ 0xB9E81389) - v20 - 2034109667;
  v26 = v25 - v24 - 807496111 - ((2 * (v25 - v24) - 958736872) & 0xD8E2568A);
  v27 = v26 ^ (v20 - v25 - 670498447);
  v28 = v26 ^ v23;
  v29 = v23;
  LODWORD(STACK[0x788]) = v23;
  LODWORD(STACK[0x7BC]) = v27 ^ 0xEC712B45;
  v30 = v27;
  LODWORD(STACK[0x78C]) = v27;
  v31 = (v26 ^ v23 ^ 0xD104B867) - v24 + (v27 ^ 0xEC712B45) - 273601650;
  v32 = v31 - 697697775 - ((2 * v31) & 0xACD3F422);
  v33 = v11 + ((v24 + 273601651) ^ 0x2EFB4798 ^ v28) + (~(2 * ((v24 + 273601651) ^ 0x2EFB4798 ^ v28)) | 0x33B8B201);
  v34 = ((2 * v5) & 0xF1F7B3DC ^ 0xB0958248) + (v5 ^ 0x20B13EDB);
  v35 = (v13 ^ 0x32362696) + v34;
  v36 = v34 + a4 - ((2 * (v34 + a4) + 554550350) & 0x72DBCB8A) - 906704916;
  LODWORD(STACK[0x7D8]) = v35 + 665749558;
  v37 = ((2 * ((v35 + 665749558) ^ v36)) & 0xFF1FD7BE ^ 0x721BC38A) + ((v35 + 665749558) ^ v36 ^ 0x46E20E1A);
  LODWORD(STACK[0x7E0]) = v37;
  LODWORD(STACK[0x7B0]) = v12;
  v38 = v36 ^ (v12 - v34 + 506155763);
  LODWORD(STACK[0x7C4]) = v38;
  v39 = -(v13 ^ 0x32362696) - 1874172174 + (v38 ^ 0xC6921A3A);
  v40 = v37 + v35;
  v41 = v37 + v35 + 1284800611;
  v42 = ((2 * v32) & 0xBFD46FFA ^ 0x19946138) + (v32 ^ 0xF3348761);
  LODWORD(STACK[0x8A0]) = v33 + 1;
  v43 = ((2 * (v32 ^ (v33 + 1))) & 0x7DFF5F6A ^ 0x60941948) + (v32 ^ (v33 + 1) ^ 0x8EB5F35B);
  v44 = v39 - v41 - ((2 * (v39 - v41) + 1848875084) & 0x841BDFD2) - 114836465;
  v45 = v44 ^ ((v38 ^ 0x396DE5C5) - v39 + 1083239489);
  v46 = ((v35 + 1417262043) ^ 0xE544EE5D) - ((2 * ((v35 + 1417262043) ^ 0xE544EE5D)) & 0xF141ED84) + 2023814850;
  v47 = v44 ^ v46;
  v48 = (v47 ^ 0x5A2C872C) - v40 + (v45 ^ 0xC20DEFE9) - 1345242217;
  v49 = v48 - 20128260 - ((2 * v48) & 0xFD99BBF8);
  v50 = v47 ^ (v40 + 1345242218);
  LODWORD(STACK[0x820]) = v50;
  v51 = ((2 * v49) & 0xEB4DF6EE ^ 0x84526E2) + (v49 ^ 0x71DD6C06);
  v52 = ((2 * (v49 ^ v50)) & 0xF85F7FFC ^ 0xB01F4A5C) + (v49 ^ v50 ^ 0xA7301AD1);
  LODWORD(STACK[0x7A0]) = v45 ^ v46;
  LODWORD(STACK[0x81C]) = v40;
  v53 = v40 + 1409221740 + v52;
  v54 = v40 + (v45 ^ v46 ^ 0xBAAD192B);
  v55 = v54 + v51 + v52;
  v56 = v24 + (v29 ^ 0x31852660 ^ v30);
  LODWORD(STACK[0x7DC]) = v24;
  v57 = v24 - 283476820 + v43;
  LODWORD(STACK[0x784]) = v57;
  v58 = v42 + v56 + 515806628 + v43;
  v59 = STACK[0x8B0];
  LODWORD(STACK[0x828]) = STACK[0x8B0];
  LODWORD(STACK[0x830]) = v6;
  v60 = STACK[0x8E8];
  LODWORD(STACK[0x8B0]) = STACK[0x8E8];
  v61 = v60 ^ 0xC1A71509;
  v62 = v6 ^ 0x3FCCA054;
  v63 = v9 ^ 0x910852E3;
  v59 ^= 0xC1A71509;
  v65 = (v9 ^ 0x910852E3) & (v6 ^ 0x3FCCA054) ^ (v60 ^ 0xC1A71509) & (v10 ^ 0xC1A71509) ^ (v9 ^ 0x910852E3 ^ v6 ^ 0x3FCCA054) & (a5 ^ 0xC821C24C) ^ v59 & (v60 ^ 0xC1A71509) ^ v59 & (v10 ^ 0xC1A71509);
  v66 = v51 + v41 - 2 * ((v51 + v41 + 234047632) & 0x631CC8EC ^ (v51 + v41) & 8);
  v67 = STACK[0x8D8];
  v68 = LODWORD(STACK[0x8D8]) ^ 0x28B09DF;
  LODWORD(STACK[0x790]) = v68;
  v69 = (v68 ^ (v58 - 760850659)) - v58;
  LODWORD(STACK[0x7AC]) = v42 + v57;
  v70 = v42 + v57 + 1731226442;
  v71 = v42 + v58 + v70;
  LODWORD(STACK[0x778]) = v71;
  LODWORD(STACK[0x7A4]) = v70;
  v72 = STACK[0x8A8];
  v73 = LODWORD(STACK[0x8A8]) ^ 0x8C9F77B ^ (v71 - 534325221);
  v74 = (v69 + 760850659) ^ ((v68 ^ (v42 + 1228808731)) - v42 - 1228808731);
  LODWORD(STACK[0x750]) = v61;
  LODWORD(STACK[0x72C]) = a5 ^ 0xC821C24C;
  LODWORD(STACK[0x734]) = v59;
  LODWORD(STACK[0x748]) = v63;
  LODWORD(STACK[0x730]) = v10 ^ 0xC1A71509;
  v75 = (a5 ^ 0xC821C24C) & v61 ^ v62 & (v10 ^ 0xC1A71509) ^ v63 & v61 ^ v63 & (v10 ^ 0xC1A71509) ^ v59 & (a5 ^ 0xC821C24C ^ v62);
  LODWORD(STACK[0x7D4]) = v75;
  v76 = v75 ^ 0xFECCDDFC ^ (v54 + 1345242218);
  v77 = STACK[0x860];
  v78 = LODWORD(STACK[0x860]) ^ 0xB7BDF27;
  LODWORD(STACK[0x838]) = ((v53 + v78) ^ 0xEFFFFFFD) + 1951373535 + ((2 * (v53 + v78)) & 0xDFFFFFFA);
  v79 = v51 - ((2 * v51 + 1728232770) & 0xC63991C8) - 1768020091;
  v80 = (v79 ^ 0xE31CC8E4) + v53;
  v81 = (v76 ^ v49) - 1264175626 - ((2 * (v76 ^ v49)) & 0x694C6BEC);
  v82 = ((v42 + 1228808731) ^ (v24 + 811900022 + v42)) - 1002283293 + v70;
  v83 = (v82 ^ (v42 - 1265243777)) - 1759322785 - ((2 * (v82 ^ (v42 - 1265243777))) & 0x2E45BABE);
  LODWORD(STACK[0x7C0]) = ((v65 ^ 0xD669FA11 ^ v32) - (v32 ^ 0xD669FA11)) ^ (((v56 + 273601651) ^ v65) - (v56 + 515806628) + 242204977) ^ ((v65 ^ 0xB4A635F6 ^ v81) - (v81 ^ 0xB4A635F6));
  v84 = STACK[0x760];
  v85 = *(STACK[0x760] + 4 * (a5 ^ 0x5Fu));
  HIDWORD(v18) = v85 ^ 0xC8;
  LODWORD(v18) = v85 ^ 0xEDF0FA00;
  v86 = (v55 - 564655883) ^ v77 ^ v79;
  v87 = (v66 + 1896878452) ^ v79;
  v88 = STACK[0x758];
  v89 = ((v18 >> 8) - 1862372638 - ((2 * (v18 >> 8)) & 0x21FCE5C4)) ^ *(STACK[0x758] + 4 * ((7 * ((*(STACK[0x938] + (((a5 >> 3) & 0xE0 | (a5 >> 11)) ^ 0xBCLL)) + 103) ^ 0xEE)) ^ 0x3Cu));
  LODWORD(STACK[0x7F0]) = a5;
  v90 = *(STACK[0x970] + (((BYTE2(a5) ^ 0x21) - 92) ^ 0x4ELL)) - 49;
  HIDWORD(v18) = v90 ^ 0xFFFFFFF1;
  LODWORD(v18) = (v90 ^ 0x20) << 24;
  v91 = v86 ^ 0xE86717C3;
  v92 = (v86 ^ 0xE86717C3) & 0x7E87EE17 ^ v86 & 4;
  v93 = *(v84 + 4 * ((v18 >> 29) ^ 0x1Du));
  HIDWORD(v18) = v93 ^ 0xC8F948;
  LODWORD(v18) = v93 ^ 0x9D000000;
  v94 = v18 >> 24;
  v95 = *(v88 + 4 * (HIBYTE(a5) ^ 0x1F));
  HIDWORD(v18) = v95 ^ 0xE2FF;
  LODWORD(v18) = v95 ^ 0x8F8E0000;
  v96 = ((2 * v80) & 0xFE7B5BFE) + (v80 ^ 0xFF3DADFF);
  v97 = *(STACK[0x928] + (((v10 >> 3) & 0xE0 | (v10 >> 11)) ^ 0x79));
  v98 = v89 ^ (v18 >> 16) ^ v94;
  LODWORD(STACK[0x79C]) = v98;
  v99 = *(v84 + 4 * (v10 ^ 0x98u));
  v100 = ((v97 >> 6) | 0xFFFFFF88) ^ (4 * v97);
  HIDWORD(v18) = v99 ^ 0x4C;
  LODWORD(v18) = v99 ^ 0xFFF8DA00;
  v101 = v18 >> 8;
  v102 = *(STACK[0x8F0] + (((BYTE2(v10) ^ 0x6E) - 92) ^ 0x8ELL));
  HIDWORD(v18) = v102 ^ 1;
  LODWORD(v18) = ~v102 << 24;
  v103 = *(v88 + 4 * ((v18 >> 29) ^ 0x7Eu));
  HIDWORD(v18) = v103 ^ 0xEFAFC;
  LODWORD(v18) = v103 ^ LODWORD(STACK[0x724]);
  v104 = v18 >> 24;
  LODWORD(STACK[0x8E8]) = v10;
  v105 = *(v88 + 4 * (HIBYTE(v10) ^ 0xAE));
  HIDWORD(v18) = v105 ^ 0xCCFA;
  LODWORD(v18) = v105 ^ 0x4D6E0000;
  v106 = v91 - 24646125 - 2 * v92;
  v107 = v104 ^ *(v88 + 4 * ((7 * (v100 ^ 0xE4)) ^ 0xBFu)) ^ (v101 - 1862372638 - ((2 * v101) & 0x21FCE5C4)) ^ (v18 >> 16);
  v108 = STACK[0x778];
  v109 = LODWORD(STACK[0x778]) + 1507480126;
  v110 = v55 + v51 + v96 + 1325334269;
  LODWORD(v88) = v87 - 1312599292 + v96 + 1325334269;
  LODWORD(STACK[0x7A0]) = ((LODWORD(STACK[0x788]) ^ 0x8324873B ^ v107) - (LODWORD(STACK[0x788]) ^ 0xDDF40D25)) ^ ((LODWORD(STACK[0x78C]) ^ 0xB2A1A15B ^ v107) - LODWORD(STACK[0x7BC])) ^ ((v107 ^ 0xA0A139EF ^ LODWORD(STACK[0x7A0]) ^ v98) - (LODWORD(STACK[0x7A0]) ^ v98 ^ 0xFE71B3F1));
  v111 = STACK[0x8C0];
  v112 = *(STACK[0x8C0] + 4 * (LODWORD(STACK[0x978]) ^ 0x43u)) - 639563628;
  HIDWORD(v18) = v112 ^ 0x39;
  LODWORD(v18) = v112 ^ 0x9E039C00;
  v113 = v74 ^ ((v67 ^ 0xFC0CE7CC ^ v106) - (v106 ^ 0xFE87EE13));
  v114 = STACK[0x978];
  v115 = *(STACK[0x8C0] + 4 * (BYTE2(LODWORD(STACK[0x978])) ^ 0x75u));
  v116 = v115 - 2 * ((v115 + 165742740) & 0xD9D586F ^ v115 & 2) - 411148031;
  v117 = ((v116 >> 17) & 0x80 | (v116 >> 25)) ^ 0xE9;
  LODWORD(STACK[0x7BC]) = v113 - LODWORD(STACK[0x784]);
  v118 = v117 - 5392044 - 2 * (v117 & 0x77777777 ^ (v116 >> 25) & 0x14) + 15;
  v119 = (v88 ^ (v51 + 517547525)) - ((2 * (v88 ^ (v51 + 517547525))) & 0x6B998E94);
  v120 = (*(STACK[0x768] + 4 * (BYTE1(v114) ^ 0x9Cu)) + 98460627) ^ (v18 >> 8) ^ LODWORD(STACK[0x7D0]) ^ ((-13 * (*(STACK[0x920] + (v118 ^ 0xFFADB954)) ^ ((v118 ^ 0x32) - ((2 * (v118 ^ 0x32) + 60) & 0x6A) + 83) ^ 0x5E)) | (v116 << 8));
  v121 = (LODWORD(STACK[0x888]) ^ 0x7D5D3077 ^ v120) - LODWORD(STACK[0x7C8]);
  v122 = LODWORD(STACK[0x7B0]) - ((2 * LODWORD(STACK[0x7B0]) + 1247736330) & 0x646C4D2C);
  v123 = STACK[0x8E0];
  v124 = STACK[0x850];
  v125 = LODWORD(STACK[0x878]) + 2620;
  LODWORD(STACK[0x888]) = v125;
  v126 = *(v111 + 4 * (v124 & (v125 ^ 0x3363) ^ 0x82)) - 639563628;
  HIDWORD(v18) = v126 ^ 0xDA;
  LODWORD(v18) = v126 ^ 0xBE1F1C00;
  v127 = v18 >> 8;
  v128 = *(v111 + 4 * (BYTE2(v124) ^ 0x75u)) - 639563628;
  HIDWORD(v18) = v128 ^ 0x4E9E42;
  LODWORD(v18) = v128 ^ 0xDE000000;
  v129 = v18 >> 24;
  v130 = *(v111 + 4 * (HIBYTE(v124) ^ 0xB)) - 639563628;
  HIDWORD(v18) = v130 ^ 0x1D80;
  LODWORD(v18) = v130 ^ 0x3E350000;
  v131 = LODWORD(STACK[0x7A8]) ^ (v122 + 1466277787);
  v132 = (*(v111 + 4 * (BYTE1(v124) ^ 0xC0u)) - 639563628) ^ v129 ^ (v18 >> 16) ^ v127;
  v119 -= 1244870838;
  LODWORD(v111) = STACK[0x868];
  v133 = ((v131 ^ v132 ^ 0xFAE03D66 ^ v120) - (v131 ^ v132 ^ 0x3E551E98)) ^ (LODWORD(STACK[0x840]) + 1572410491 + (LODWORD(STACK[0x7FC]) ^ 0xC4B523FE ^ v120)) ^ v121;
  v134 = ((v110 + 1134344858) ^ LODWORD(STACK[0x868]) ^ v119 ^ 0x746BD243) - 25482014 - 2 * (((v110 + 1134344858) ^ LODWORD(STACK[0x868]) ^ v119 ^ 0x746BD243) & 0x7E7B2CF6 ^ ((v110 + 1134344858) ^ LODWORD(STACK[0x868]) ^ v119) & 0x14);
  LODWORD(STACK[0x8E0]) = v124;
  v114 ^= 0xB7BDF27u;
  v135 = STACK[0x8F8];
  v136 = LODWORD(STACK[0x8F8]) ^ 0xB7BDF27;
  LODWORD(STACK[0x7FC]) = v136;
  v137 = (v123 & (v124 ^ 0x28B09DF) | v67 & ~(v124 ^ 0x28B09DF)) ^ v78 & v114 ^ v136 & v114;
  v138 = ((v137 ^ 0x28B09DF ^ (LODWORD(STACK[0x7EC]) + 1350583426)) - LODWORD(STACK[0x7EC]) - 1350583426) ^ ((v137 ^ 0x28B09DF ^ LODWORD(STACK[0x808])) - LODWORD(STACK[0x800]) - 1079433077);
  v139 = v77 ^ (v135 ^ v77) & (v124 ^ 0x28B09DF);
  LODWORD(STACK[0x8D8]) = v123;
  LODWORD(STACK[0x800]) = v123 ^ 0x28B09DF;
  v140 = LODWORD(STACK[0x790]) ^ v123 ^ 0x28B09DF;
  LODWORD(STACK[0x808]) = v114;
  v141 = v140 & v114 ^ v139;
  v142 = LODWORD(STACK[0x7C4]) ^ LODWORD(STACK[0x7D8]) ^ v141 ^ 0x32163AE2;
  v143 = v142 + 667517384 + (~(2 * v142) | 0xB06CFC6F) + 1;
  v144 = v138 ^ ((v137 ^ 0x25428817 ^ v143) - (v143 ^ 0x27C981C8));
  v145 = STACK[0x880];
  v146 = STACK[0x870];
  v147 = STACK[0x870];
  v148 = LODWORD(STACK[0x810]) - (LODWORD(STACK[0x84C]) + LODWORD(STACK[0x8B8])) - v144 - *(&STACK[0xD760] + STACK[0x880]) + ((*(STACK[0x740] + 4 * (v147 ^ 8) - 4) - 514628195) ^ 0xAD1BC81F) - v133;
  v149 = ((v72 ^ 0x9FEB2A24 ^ v83) - (v83 ^ 0x9722DD5F)) ^ (v73 - v109 + 2041805347) ^ ((v72 ^ 0xF6B2DB99 ^ v134) - (v134 ^ 0xFE7B2CE2));
  v150 = LODWORD(STACK[0x890]) + LODWORD(STACK[0x858]) + (v141 ^ 0xB7BDF27) + (v132 ^ 0x3E551E98) + LODWORD(STACK[0x7E0]) + *(&STACK[0x79D0] + STACK[0x880]) + ((*(STACK[0x738] + 4 * (v147 ^ 0x36) - 4) - 2112179456) ^ 0x5F560E6D) + 243777046;
  v151 = ((v96 + 1361381202) ^ 0xB63133AD ^ v119) - 95835225 - ((2 * ((v96 + 1361381202) ^ 0xB63133AD ^ v119)) & 0xF493574E);
  v152 = v151 ^ (v88 + (v119 ^ 0x49CECC52) + 1);
  v153 = (((2 * ((v119 ^ 0xB63133AD) - v110 + 2123204602)) & 0x77BF5BFC) + (((v119 ^ 0xB63133AD) - v110 + 2123204602) ^ 0xBBDFADFE) + 1142968834) ^ 0xFA49ABA7;
  v154 = (v153 ^ v151) - 1974543358 - ((2 * (v153 ^ v151)) & 0x149DB804);
  LODWORD(v147) = ((LODWORD(STACK[0x7AC]) + 2077589374) ^ 0x94DF29B8 ^ v83) - 1872430847 - ((2 * ((LODWORD(STACK[0x7AC]) + 2077589374) ^ 0x94DF29B8 ^ v83)) & 0x20C9F202);
  v155 = ((2 * ((v83 ^ 0x94DF29B8) - v109 + 1004387511)) & 0xF67DFFFA) + (((v83 ^ 0x94DF29B8) - v109 + 1004387511) ^ 0x7B3EFFFD);
  v156 = v147 ^ (v82 + (v83 ^ 0x6B20D647) + 1);
  LODWORD(v147) = (v147 ^ 0x9064F901 ^ (v155 - 2067726333)) + 901098094 - ((2 * (v147 ^ 0x9064F901 ^ (v155 - 2067726333))) & 0x6B6B54DC);
  v157 = (v156 ^ 0x9064F901 ^ (v108 + 503092615)) - 525028713 - ((2 * (v156 ^ 0x9064F901 ^ (v108 + 503092615))) & 0xC169652E);
  v158 = (v111 ^ 0xC1A71509) + v150 + 1973552363 + v96 - 193939901 - ((2 * ((v111 ^ 0xC1A71509) + v150 + 1973552363 + v96)) & 0xE8E16C86);
  v159 = LODWORD(STACK[0x7A4]) + v148 - 1112623132 - v149 - 1173401452;
  v160 = v159 - ((2 * v159) & 0x91F3719A) - 923158323;
  v161 = (v160 ^ v152 ^ 0x32B0136A) - 193939901 - 2 * ((v160 ^ v152 ^ 0x32B0136A) & 0x7470B657 ^ (v160 ^ v152) & 0x14);
  v162 = v156 ^ 0xA8689846 ^ ((v160 ^ v147 ^ 0xFD4C12A3) + 940335431 - 2 * ((v160 ^ v147 ^ 0xFD4C12A3) & 0x380C614F ^ (v160 ^ v147) & 8));
  v163 = v152 ^ 0x4E8CB083 ^ ((v154 ^ v158 ^ 0x7E3E6A41) - 2 * ((v154 ^ v158 ^ 0x7E3E6A41) & 0x34C51B2C ^ (v154 ^ v158) & 8) - 1262150876);
  v164 = v152 ^ (v110 - 2123204602);
  v165 = ((2 * ((v147 ^ 0x35B5AA6E) + v155 - 2067726333)) & 0xDCFBFDE) + (((v147 ^ 0x35B5AA6E) + v155 - 2067726333) ^ 0x86E7DFEF);
  v166 = ((((v154 ^ 0x42B764CF ^ v160) - 193939901 - ((2 * (v154 ^ 0x42B764CF ^ v160)) & 0xE8E16C86)) ^ v158) - (v147 ^ 0x35B5AA6E)) ^ v157;
  v167 = ((v155 - 2067726333) ^ 0xE0B4B297 ^ v157) + 1611639725 - ((2 * ((v155 - 2067726333) ^ 0xE0B4B297 ^ v157)) & 0xC01F575A);
  LODWORD(v147) = (v161 ^ v158) - (v156 ^ 0x9064F901);
  v168 = v165 + (v156 ^ 0x9064F901);
  v169 = v165 - ((2 * v165 + 1877187282) & 0x7A3F61FC);
  v170 = v167 ^ (v155 - 1409980284);
  v171 = (v167 ^ 0x600FABAD ^ (v168 + 1784734072)) + 163567297 - ((2 * (v167 ^ 0x600FABAD ^ (v168 + 1784734072))) & 0x137FAD82);
  v172 = (((((v171 ^ 0x9BFD6C1) + (v170 ^ 0x600FABAD)) ^ (v169 - 1257144729) ^ 0x3D1FB0FE) - 599841827) ^ 0x7EE2EBFF) + ((2 * ((((v171 ^ 0x9BFD6C1) + (v170 ^ 0x600FABAD)) ^ (v169 - 1257144729) ^ 0x3D1FB0FE) - 599841827)) & 0xFDC5D7FE);
  LODWORD(STACK[0x8A8]) = LODWORD(STACK[0x898]) ^ 0x99C1A598;
  v173 = LODWORD(STACK[0x7BC]) + 1725175035;
  LODWORD(STACK[0x8B8]) = 302121909 - v172;
  v174 = *(STACK[0x940] + 8 * ((30773 * (v145 == 63)) ^ LODWORD(STACK[0x878])));
  STACK[0x870] = v146 + 1;
  STACK[0x880] = v145 + 1;
  LODWORD(STACK[0x8A0]) = v166 ^ v147 ^ 0xEBCF6DB0;
  LODWORD(STACK[0x850]) = (v163 - v162) ^ v164 ^ 0xF8C2A278;
  LODWORD(STACK[0x840]) = -392636452 - (((2 * v170) & 0xDE7F3ADE ^ 0x9E5F089A) + (v170 ^ 0x20901BB2));
  LODWORD(STACK[0x868]) = STACK[0x828];
  LODWORD(STACK[0x84C]) = STACK[0x838];
  LODWORD(STACK[0x860]) = STACK[0x8F8];
  LODWORD(STACK[0x858]) = v173;
  return v174();
}

uint64_t sub_2447D8F0C@<X0>(int a1@<W0>, int a2@<W3>, int a3@<W5>, int a4@<W6>, int a5@<W8>)
{
  LODWORD(STACK[0x878]) = LODWORD(STACK[0x704]) + LODWORD(STACK[0x730]);
  LODWORD(STACK[0x880]) = LODWORD(STACK[0x800]) + LODWORD(STACK[0x708]);
  LODWORD(STACK[0x898]) = LODWORD(STACK[0x70C]) + a1;
  LODWORD(STACK[0x770]) += 64;
  LODWORD(STACK[0x6C4]) += 64;
  v18 = ((((v15 ^ 0xCDC9D969) - 1987920875 + a2 + 1) << (LODWORD(STACK[0x888]) ^ 0x9D)) & 0xB3FDE36E) + (((v15 ^ 0xCDC9D969) - 1987920875 + a2 + 1) ^ 0xD9FEF1B7);
  LODWORD(STACK[0x890]) = a2;
  v19 = ((v15 ^ 0x32362696) - ((2 * (v15 ^ 0x32362696) - 2036766782) & 0xDD06A088) - 1311767515) ^ v5;
  v20 = v14 + 623868166 + (v15 ^ 0xCDC9D969) - ((2 * (v14 + 623868166 + (v15 ^ 0xCDC9D969)) + 658092854) & 0xA2756A7E) + 1691848410;
  v21 = (v15 ^ 0x36C9B771 ^ (v19 + 842409622 - ((2 * v19) & 0x646C4D2C))) + (v20 ^ 0x513AB53F);
  v22 = ((2 * v21) & 0xDFBDFD96) + (v21 ^ 0xEFDEFECB);
  LODWORD(STACK[0x850]) = v22;
  v23 = ((v22 + 270598453) ^ ((v15 ^ 0x32362696) - 2017343938)) - ((2 * ((v22 + 270598453) ^ ((v15 ^ 0x32362696) - 2017343938))) & 0x7AC7B020) - 1117530096;
  LODWORD(STACK[0x860]) = v18;
  v24 = ((2 * ((v22 + v18 - 90758693) ^ v23)) & 0x1BFF6EFE ^ 0x1AC72020) + ((v22 + v18 - 90758693) ^ v23 ^ 0xB09C6F6F);
  v25 = ((2 * ((v16 ^ 0xB9E81389) - 1018383391)) & 0x7FF7F77E) + (((v16 ^ 0xB9E81389) - 1018383391) ^ 0x3FFBFBBF);
  v26 = (v25 - 1073478591) ^ a4;
  v27 = (v16 ^ 0x4617EC76) + v9;
  v28 = v27 - 1179774039 + v26;
  v29 = ((2 * ((v16 ^ 0x4617EC76) - 1826678858 + v8 + 1)) & 0xE73BFCFE) + (((v16 ^ 0x4617EC76) - 1826678858 + v8 + 1) ^ 0xF39DFE7F);
  v30 = v20 ^ LODWORD(STACK[0x8E8]) ^ ((v15 ^ 0x32362696) - v18 - 2 * (((v15 ^ 0x32362696) - v18 + 491496856) & 0x41A7150B ^ ((v15 ^ 0x32362696) - v18) & 2) + 1592965793);
  v31 = (a3 ^ 0x991B7773 ^ v30) - (v30 ^ 0x513AB53F);
  v32 = STACK[0x72C];
  v33 = (LODWORD(STACK[0x72C]) ^ (v27 - 850727611)) - v27;
  LODWORD(STACK[0x858]) = v29;
  LODWORD(STACK[0x870]) = ((v32 ^ (v25 - v29 - 1281228096)) - (v25 - v29) + 1281228096) ^ (v33 + 850727611) ^ v31;
  v34 = v15 ^ (a5 - ((2 * v14 + 1247736330) & 0x834E2A12) - 207173982) ^ v11;
  LODWORD(STACK[0x868]) = (((v9 - 1179774039) ^ 0x97D627B4 ^ v7) - v9 + 1179774039) ^ ((v16 ^ v7 ^ 0x2E3E343D) - (v16 ^ 0xB9E81389)) ^ ((v7 ^ 0xA5E00122 ^ v34) - (v34 ^ 0x32362696));
  v35 = ((v28 + 329046428) ^ ((v16 ^ 0xB9E81389) - 2017343938)) - 1331570150 - ((2 * ((v28 + 329046428) ^ ((v16 ^ 0xB9E81389) - 2017343938))) & 0x6143B434);
  v36 = ((2 * (v35 ^ (v28 - 462164614 + v29))) & 0x2FDE67D4 ^ 0x21422414) + (v35 ^ (v28 - 462164614 + v29) ^ 0x274EE9F0);
  v37 = ((v27 - 850727611) ^ 0xE5B25F02) - 1745931286 - v36 - 827124344 - ((2 * (((v27 - 850727611) ^ 0xE5B25F02) - 1745931286 - v36)) & 0x9D662B10);
  v38 = ((v20 ^ 0xB488EA3D) - v24 + 234862463 - ((2 * ((v20 ^ 0xB488EA3D) - v24 + 234862463)) & 0xBDD19B6) - 2047963941) ^ v23;
  LODWORD(STACK[0x8B0]) = ((v12 ^ 0xF17FB5DC ^ v37) - (v37 ^ 0xCEB31588)) ^ ((v12 ^ 0x8F6D7A4E ^ v35) - (v35 ^ 0xB0A1DA1A)) ^ ((v12 ^ 0xC6E6E196 ^ v38 ^ LODWORD(STACK[0x8B0])) - (v38 ^ LODWORD(STACK[0x8B0]) ^ 0xF92A41C2));
  LODWORD(STACK[0x84C]) = v24;
  v39 = LODWORD(STACK[0x850]) - v24;
  v40 = ((2 * ((v39 + 1638616211) ^ v23)) & 0xFCFF5BBE ^ 0x78C71020) + ((v39 + 1638616211) ^ v23 ^ 0x431C75CF);
  v41 = ((2 * v38) & 0xDDFBFBD8 ^ 0xD031DBD0) + (v38 ^ 0x97E71215);
  v42 = ((v39 - 486753687) ^ (v24 + 1553609625)) - 9314710 - ((2 * ((v39 - 486753687) ^ (v24 + 1553609625))) & 0xFEE3BCD4);
  LODWORD(STACK[0x840]) = v42;
  v43 = v28 + 1 - v36;
  v44 = v37 ^ v35;
  v45 = (v43 - ((2 * v43 + 1580024520) & 0x6143B434) - 1615299714) ^ v35;
  v46 = ((2 * v44) & 0xEAF631F6 ^ 0x6A022140) + (v44 ^ 0x4AFE6C5B);
  v47 = (v40 + 1017213647) ^ LODWORD(STACK[0x8A8]) ^ (v41 - 1862139372);
  LODWORD(STACK[0x8A8]) = ((v13 ^ 0x7E2261A9 ^ v44) - v46 - 176482053) ^ ((LODWORD(STACK[0x734]) ^ (v45 + 992026798)) - v45 - 992026798) ^ ((v13 ^ 0xC96EE272 ^ v47) - (v47 ^ 0x8C9F77B));
  v48 = v40 - v41 - ((2 * (v40 - v41) + 389996918) & 0x3F6BF446) + 1263889118;
  v49 = v42 ^ 0x60C42449 ^ v48;
  v50 = ((v43 + 1885867834) ^ (v36 - 760563922)) - ((2 * ((v43 + 1885867834) ^ (v36 - 760563922))) & 0xA794691C) - 741722994;
  LODWORD(STACK[0x828]) = v50;
  v51 = v45 - v46 - ((2 * (v45 - v46) + 557347666) & 0x29F7BA34) + 1167595203;
  v52 = v50 ^ 0xC731E994 ^ v51;
  v53 = ((v46 + 1137700129) ^ 0x14FBDD1A ^ v51) + 1576171341 - ((2 * ((v46 + 1137700129) ^ 0x14FBDD1A ^ v51)) & 0xBBE4EE9A);
  v54 = v49 + v41;
  v55 = ((v41 - 900921296) ^ 0x9FB5FA23 ^ v48) - ((2 * ((v41 - 900921296) ^ 0x9FB5FA23 ^ v48)) & 0x12FFB59C) - 1988109618;
  v56 = v41 + v39 + v49 + v41 - ((2 * (v41 + v39 + v49 + v41) + 824914366) & 0x238E50E4) + 710721873;
  v57 = ((2 * v56) & 0xFDF6B356 ^ 0x5C263310) + (v56 ^ 0x50E86663);
  v58 = v52 + v46;
  v59 = ((2 * (v53 ^ (v58 + 1137700129))) & 0xFFEBFD9C ^ 0x74C02518) + (v53 ^ (v58 + 1137700129) ^ 0x459DEC52);
  v60 = v43 + v46 + 419870610 + v52 + v46;
  v61 = ((2 * ((v60 ^ 0x402BE845) - 2146827981 + v59)) & 0x7FF2FB46) + (((v60 ^ 0x402BE845) - 2146827981 + v59) ^ 0xBFF97DA3);
  LODWORD(STACK[0x830]) = v46 - 1522534945;
  v62 = v56 ^ v55;
  v63 = (v55 ^ 0xEEE5BF1F) + v41 - 1862139372 - 2 * (((v55 ^ 0xEEE5BF1F) + v41 - 1862139372 + 179222952) & 0x5C3974FE ^ ((v55 ^ 0xEEE5BF1F) + v41 - 1862139372) & 6) + 1726492320;
  v64 = (LODWORD(STACK[0x8E0]) ^ 0x953F22D7 ^ v56 ^ v55 ^ LODWORD(STACK[0x978]) ^ v63) - (v56 ^ v55 ^ LODWORD(STACK[0x978]) ^ v63 ^ 0x97B42B08);
  v65 = (v53 ^ 0x3A68129C) + v46 - 1522534945 - ((2 * ((v53 ^ 0x3A68129C) + v46 - 1522534945) + 1608996252) & 0x5EF882B4) - 1620055000;
  v66 = v53 ^ v60 ^ 0x85BC0526;
  LODWORD(STACK[0x850]) = ((LODWORD(STACK[0x8E0]) ^ 0x2DF74885 ^ v65) + (v65 ^ 0x2F7C415A) + ((2 * v65) ^ 0xA1077D4B) + 1) ^ ((LODWORD(STACK[0x8E0]) ^ 0x87370CF9 ^ v53 ^ v60) - v66) ^ v64;
  v67 = ((2 * ((v62 ^ 0xC0F680D7) + 2130401707 - v57)) & 0x32FDD3C6) + (((v62 ^ 0xC0F680D7) + 2130401707 - v57) ^ 0x997EE9E3);
  v68 = ((v54 - 900921296) ^ 0xEEE5BF1F ^ v55) - v57;
  v69 = v67 + v68 - ((2 * (v67 + v68) + 1257824144) & 0x4C1FE49E) - 1953734121;
  v70 = ((2 * (v69 ^ v63)) & 0xDF6E3FF6 ^ 0xD46C0D66) + (v69 ^ v63 ^ 0x1581994C);
  v71 = ((2 * (v66 - (v60 ^ 0xBFD417BA))) & 0x77F5143C) + ((v66 - (v60 ^ 0xBFD417BA)) ^ 0xBBFA8A1E);
  v72 = v61 + v71 - ((2 * (v61 + v71) + 135786622) & 0x38F2F32C) + 545616341;
  v73 = ((2 * (v72 ^ v65)) & 0x7FBFFFBA ^ 0x660A7198) + (v72 ^ v65 ^ 0xCDAC711);
  v74 = v70 - ((2 * v70 + 2058301830) & 0xC2B6542A) + 515031768;
  v75 = ((2 * (v57 + 1620821969 + (v69 ^ 0xA60FF24F))) & 0xFFBABEBE) + ((v57 + 1620821969 + (v69 ^ 0xA60FF24F)) ^ 0xFFDD5F5F) + v67;
  v76 = v74 ^ LODWORD(STACK[0x8D8]) ^ (v75 - ((2 * v75 - 850956932) & 0xC2B6542A) + 1207886035);
  v77 = v73 - ((2 * v73 + 1516073410) & 0x5CA00E7C) - 1686192097;
  v78 = v71 + v59;
  v79 = v78 + v71;
  v80 = (((v17 ^ 0x252BD819 ^ v77) - (v77 ^ 0x2E50073E)) ^ ((LODWORD(STACK[0x7FC]) ^ (v78 + v71 - 408154510)) - (v78 + v71) + 408154510) ^ ((v17 ^ 0x9F0D6F8 ^ v76) - (v76 ^ 0x28B09DF))) - (v77 ^ v72 ^ 0xB2297EA8);
  v81 = v74 ^ v69;
  LODWORD(STACK[0x8E8]) = v75 + 1532243917 + ((2 * (v74 ^ v69 ^ (v75 + 1286970354))) & 0x3EFEBBBE ^ 0xEA8B0B4) + (v74 ^ v69 ^ (v75 + 1286970354) ^ 0x582B8585) - 135207116;
  v82 = ((2 * (v77 ^ v72 ^ (v79 - 843189338))) & 0xFBA7DE6E ^ 0x6002DC40) + (v77 ^ v72 ^ (v79 - 843189338) ^ 0xCFFA919F);
  v83 = v82 + v79 - ((2 * (v82 + v79) - 1613494050) & 0xDBBEE88A);
  LODWORD(STACK[0x6D8]) = LODWORD(STACK[0x6D8]) - 1987920875 + LODWORD(STACK[0x890]) + (v6 ^ 0x9BFD6C1);
  LODWORD(STACK[0x8D8]) = ((v78 - 1549363056) ^ 0x2E50073E ^ v77) - 723600174 + v82;
  v84 = v82 - ((2 * v82 + 342825654) & 0x4AE69042);
  LODWORD(STACK[0x704]) = LODWORD(STACK[0x878]) - 361357146 + LODWORD(STACK[0x860]);
  LODWORD(STACK[0x6EC]) = LODWORD(STACK[0x6EC]) - 1745931286 - v36 + LODWORD(STACK[0x8B0]);
  v85 = LODWORD(STACK[0x6D0]) + (LODWORD(STACK[0x828]) ^ 0x2C35CB71) + LODWORD(STACK[0x8A8]);
  LODWORD(STACK[0x6D4]) += 2130401707 + LODWORD(STACK[0x808]) + v68;
  LODWORD(STACK[0x708]) = LODWORD(STACK[0x880]) + (v81 ^ 0x4754D85A);
  v86 = (LODWORD(STACK[0x6E8]) ^ 0x311CBBA9) + LODWORD(STACK[0x8B8]) + 1826678858 + LODWORD(STACK[0x868]);
  LODWORD(STACK[0x6E8]) = v86 + 823966633 - ((2 * v86) & 0x62397752);
  v87 = LODWORD(STACK[0x748]) + (LODWORD(STACK[0x6F0]) ^ 0xFE4AB227) + (LODWORD(STACK[0x840]) ^ 0xFF71DE6A);
  LODWORD(STACK[0x6F0]) = v87 - 28659161 - ((2 * v87) & 0xFC95644E);
  v88 = (LODWORD(STACK[0x720]) ^ 0x56FEC4B4) + LODWORD(STACK[0x750]) - 234862463 + LODWORD(STACK[0x84C]);
  LODWORD(STACK[0x720]) = v88 + 1459537076 - ((2 * v88) & 0xADFD8968);
  v89 = (v41 - ((2 * v41 + 1467621852) & 0xF2DBC68C) - 1523911628) ^ LODWORD(STACK[0x8A0]) ^ v55;
  v90 = ((v10 ^ 0xA7BBDCEA ^ v53) - (v53 ^ 0x5DF2774D)) ^ ((v10 ^ 0xFA49ABA7 ^ LODWORD(STACK[0x830])) - v46 + 1522534945) ^ ((v10 ^ 0x1204D08 ^ v89) - (v89 ^ 0xFB69E6AF));
  v91 = (LODWORD(STACK[0x71C]) ^ 0xD92E54EB) - v58;
  v92 = STACK[0x888];
  LODWORD(STACK[0x8E0]) = v83 + 1036613812;
  LODWORD(STACK[0x978]) = v84 - 1347758724;
  LODWORD(STACK[0x6D0]) = v85 + 1;
  LODWORD(STACK[0x70C]) = LODWORD(STACK[0x898]) - 1225309453;
  LODWORD(STACK[0x71C]) = v91 - 1137700129 + v90 - 651275029 - ((2 * (v91 - 1137700129 + v90)) & 0xB25CA9D6);
  LODWORD(STACK[0x714]) = v80 + (LODWORD(STACK[0x714]) ^ 0x9D9612C7) - 1651109177 - ((2 * (v80 + (LODWORD(STACK[0x714]) ^ 0x9D9612C7))) & 0x3B2C258E);
  LODWORD(STACK[0x718]) = LODWORD(STACK[0x718]) - 1682938076 + LODWORD(STACK[0x838]);
  v93 = (LODWORD(STACK[0x700]) ^ 0x7CB8F594) - 1074168413 - v61 + LODWORD(STACK[0x850]);
  LODWORD(STACK[0x700]) = v93 + 2092496276 - ((2 * v93) & 0xF971EB28);
  return (*(STACK[0x940] + 8 * v92))(2907526135);
}

uint64_t sub_2447DA0E4@<X0>(int a1@<W4>, uint64_t a2@<X6>, unint64_t a3@<X7>, char a4@<W8>)
{
  LODWORD(STACK[0x908]) = 0;
  LODWORD(STACK[0x890]) = 0;
  LODWORD(STACK[0x870]) = 0;
  LODWORD(STACK[0x878]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  v12 = STACK[0x9A8];
  v13 = STACK[0x938];
  v14 = STACK[0x6B0];
  v15 = STACK[0x6B0] >> 8;
  v16 = 7 * ((((v6 + 108) & 0x2B) + *(STACK[0x938] + (((*(STACK[0x9A8] + 17) >> 3) | (32 * *(STACK[0x9A8] + 17))) ^ a3)) + 93) ^ 0xEE);
  v17 = (v7 ^ 0xCCFD8DF29F6FEDFFLL) + 0x3302720D60901201 + ((2 * v7) & 0x13EDFDBFELL);
  *(&STACK[0x8AE0] + v17) = STACK[0x6B0] ^ 0x75;
  *(v9 + v17) = v16 ^ BYTE1(v5) ^ 0x5A;
  v18 = (v15 ^ 0x54) - 2 * ((v15 ^ 0x54) & 0xF3 ^ v15 & 2) - 15;
  v19 = (v10 + a1);
  LOBYTE(v15) = v12[18];
  v20 = (v19 ^ 0x3EF79BF5BFBFFD77) - 0x3EF79BF5BFBFFD77 + ((2 * v19) & 0x17F7FFAEELL);
  *(&STACK[0x8AE0] + v20) = v18;
  *(v9 + v20) = v15 ^ BYTE2(v5) ^ 0xD4;
  v21 = v12[19];
  v22 = ((v19 + 1) ^ 0x7EFA9FFFFFFB8FB8) - 0x7EFA9FFFFFFB8FB8 + ((2 * (v19 + 1)) & 0x1FFF71F70);
  *(&STACK[0x8AE0] + v22) = (BYTE2(v14) ^ 0x87) - ((2 * (BYTE2(v14) ^ 0x87)) & 0xE3) - 15;
  *(v9 + v22) = v21 ^ HIBYTE(v5) ^ 0xE3;
  v23 = 7 * ((*(v13 + (((v12[20] >> 3) | (32 * v12[20])) ^ a3)) + 103) ^ 0xEE);
  v24 = ((v19 + 2) ^ 0xDB65D6FD3F3EBFC7) + 0x249A2902C0C14039 + ((2 * (v19 + 2)) & 0x7E7D7F8E);
  *(&STACK[0x8AE0] + v24) = (BYTE3(v14) ^ 0xC0) - 2 * ((BYTE3(v14) ^ 0xC0) & 0x75 ^ BYTE3(v14) & 4) - 15;
  *(v9 + v24) = (*(STACK[0x8C8] + (((STACK[0x698] ^ 0x7A ^ v23) + 110) ^ 0x64)) + 78) ^ 0x18;
  v25 = v12[21];
  v26 = ((v19 + 3) ^ 0x87AEFFDE3FDEE7FFLL) + 0x78510021C0211801 + ((2 * (v19 + 3)) & 0x7FBDCFFE);
  *(&STACK[0x8AE0] + v26) = (BYTE4(v14) ^ 0x15) - 2 * ((BYTE4(v14) ^ 0x15) & 0xF3 ^ BYTE4(v14) & 2) - 15;
  *(v9 + v26) = a4 ^ 0x98 ^ v25;
  v27 = v12[22];
  v28 = ((v19 + 4) ^ 0xD2FFDDFAEAFFF9BFLL) + 0x2D00220515000641 + ((2 * (v19 + 4)) & 0x1D5FFF37ELL);
  *(&STACK[0x8AE0] + v28) = (BYTE5(v14) ^ v11) - 2 * ((BYTE5(v14) ^ v11) & 0xF9 ^ BYTE5(v14) & 8) - 15;
  *(v9 + v28) = v8 ^ v27 ^ 0xC1;
  v29 = v12[23];
  v30 = *(STACK[0x928] + (((v14 >> 43) & 0xE0 | (v14 >> 51) & 0x1F) ^ 0x9D));
  STACK[0x910] = HIBYTE(v14) ^ 0xC9322115C087544DLL;
  v31 = ((v30 >> 6) | 0xFFFFFF88) ^ (4 * v30) ^ 0xFFFFFFE4;
  v32 = ((v19 + 5) ^ 0x7E3FF7BFCEFF75F6) - 0x7E3FF7BFCEFF75F6 + ((2 * (v19 + 5)) & 0x19DFEEBECLL);
  *(&STACK[0x8AE0] + v32) = (~(14 * v31) | 0x1D) - v31 + 8 * v31 - 14;
  *(v9 + v32) = v4 ^ v29 ^ 0xF3;
  LODWORD(STACK[0x6C0]) = v10 + 8;
  LODWORD(STACK[0x654]) = v12[24] - ((2 * v12[24]) & 0xFFE3) - 15;
  v33 = *(a2 + 8 * (v6 ^ 0x6F32C2F ^ (3939 * (v6 != -1481004320))));
  LODWORD(STACK[0x960]) = 1;
  STACK[0x8E8] = 0x5EE7390FD4A21F47;
  LODWORD(STACK[0x948]) = 1;
  LODWORD(STACK[0x950]) = 1;
  LODWORD(STACK[0x900]) = 1;
  LODWORD(STACK[0x8A8]) = 1;
  LODWORD(STACK[0x84C]) = 1;
  LODWORD(STACK[0x850]) = 1;
  LODWORD(STACK[0x8B0]) = 1;
  LODWORD(STACK[0x858]) = 1;
  LODWORD(STACK[0x860]) = 1;
  LODWORD(STACK[0x8B8]) = 1;
  LODWORD(STACK[0x868]) = 1;
  LODWORD(STACK[0x8E0]) = 1;
  LODWORD(STACK[0x8A0]) = 1;
  LODWORD(STACK[0x898]) = 1;
  return v33();
}

uint64_t sub_2447DA61C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X6>, int a6@<W8>)
{
  LODWORD(STACK[0x960]) = 0;
  LODWORD(STACK[0x950]) = 0;
  LODWORD(STACK[0x900]) = 0;
  LODWORD(STACK[0x8A8]) = 0;
  LODWORD(STACK[0x84C]) = 0;
  LODWORD(STACK[0x850]) = 0;
  LODWORD(STACK[0x8B0]) = 0;
  LODWORD(STACK[0x858]) = 0;
  LODWORD(STACK[0x860]) = 0;
  LODWORD(STACK[0x908]) = 0;
  LODWORD(STACK[0x8B8]) = 0;
  LODWORD(STACK[0x868]) = 0;
  LODWORD(STACK[0x890]) = 0;
  LODWORD(STACK[0x870]) = 0;
  LODWORD(STACK[0x878]) = 0;
  LODWORD(STACK[0x8A0]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  v7 = a6 ^ 0x161Bu;
  STACK[0x5D8] = v6 ^ 0xA67B8B0F;
  STACK[0x8E8] = (v7 + 0x5EE7390FD6924433) ^ STACK[0x698];
  v8 = *(a5 + 8 * a6);
  LODWORD(STACK[0x948]) = 1;
  STACK[0x910] = STACK[0x6B0];
  LODWORD(STACK[0x8E0]) = 1;
  LODWORD(STACK[0x898]) = 1;
  return v8(a1, a2, a3, a4, v7);
}

uint64_t sub_2447DA70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0x950]) = 0;
  LODWORD(STACK[0x860]) = 0;
  LODWORD(STACK[0x908]) = 0;
  LODWORD(STACK[0x8B8]) = 0;
  LODWORD(STACK[0x868]) = 0;
  LODWORD(STACK[0x890]) = 0;
  LODWORD(STACK[0x870]) = 0;
  LODWORD(STACK[0x878]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  STACK[0x8E8] = STACK[0x698] ^ 0x5EE7390FD6924437 ^ v7 ^ 0x3834u;
  LODWORD(STACK[0x5C8]) = v8 ^ 0xBC985558;
  v9 = *(a7 + 8 * v7);
  LODWORD(STACK[0x960]) = 1;
  STACK[0x910] = STACK[0x6B0];
  LODWORD(STACK[0x948]) = 1;
  LODWORD(STACK[0x900]) = 1;
  LODWORD(STACK[0x8A8]) = 1;
  LODWORD(STACK[0x84C]) = 1;
  LODWORD(STACK[0x850]) = 1;
  LODWORD(STACK[0x8B0]) = 1;
  LODWORD(STACK[0x858]) = 1;
  LODWORD(STACK[0x8E0]) = 1;
  LODWORD(STACK[0x8A0]) = 1;
  LODWORD(STACK[0x898]) = 1;
  return v9(a1, a2, a3, a4, v7 ^ 0x3834u);
}

uint64_t sub_2447DA814@<X0>(int a1@<W1>, char a2@<W2>, uint64_t a3@<X4>, unint64_t a4@<X5>, uint64_t a5@<X6>, char a6@<W8>)
{
  LODWORD(STACK[0x890]) = 0;
  LODWORD(STACK[0x870]) = 0;
  LODWORD(STACK[0x878]) = 0;
  v14 = (v8 - 21325) | 0x832;
  LODWORD(STACK[0x978]) = v14;
  v15 = STACK[0x9A8];
  v16 = STACK[0x9A8];
  v17 = *STACK[0x9A8];
  v18 = STACK[0x6B0];
  v19 = a1 ^ (STACK[0x6B0] >> 8);
  v20 = STACK[0x6C0];
  v21 = v20 - 2068364258 + ((v20 < 0x7B48BBE2) << 32);
  *(&STACK[0x8AE0] + v21) = STACK[0x6B0] ^ 0x75;
  *(v13 + v21) = v7 ^ v17 ^ v11;
  v22 = *(v15 + 1);
  v23 = *(STACK[0x970] + ((v19 - 92) ^ 0x4ELL)) - 49;
  HIDWORD(v24) = v23 ^ 0x11;
  LODWORD(v24) = (v23 ^ 0x20) << 24;
  v25 = (((((v14 + 5570) | 0x120A) ^ 0x84B77615) + v20) ^ 0xDFAFFDFEFF6FDEB5) + 0x205002010090214BLL + ((2 * ((((v14 + 5570) | 0x120A) ^ 0x84B77615) + v20)) & 0x1FEDFBD6ALL);
  *(&STACK[0x8AE0] + v25) = (v24 >> 29) - ((2 * (v24 >> 29)) & 0xE3) - 15;
  *(v13 + v25) = v22 ^ BYTE1(v7) ^ 0x5A;
  v26 = *(STACK[0x8F0] + ((*(v15 + 2) - 92) ^ 0x8ELL));
  HIDWORD(v24) = v26 ^ 1;
  LODWORD(v24) = ~v26 << 24;
  v27 = ((v20 - 2068364256) ^ 0x5BC5A3B5E9B7FDBFLL) - 0x5BC5A3B5E9B7FDBFLL + ((2 * (v20 - 2068364256)) & 0x1D36FFB7ELL);
  *(&STACK[0x8AE0] + v27) = (BYTE2(v18) ^ 0x87) - 2 * ((BYTE2(v18) ^ 0x87) & 0xF9 ^ BYTE2(v18) & 8) - 15;
  *(v13 + v27) = (v24 >> 29) ^ BYTE2(v7) ^ 0xD4;
  LOBYTE(v15) = *(v15 + 3);
  v28 = ((v20 - 2068364255) ^ 0x7EBFD78E6F9FCFFBLL) - 0x7EBFD78E6F9FCFFBLL + ((2 * (v20 - 2068364255)) & 0xDF3F9FF6);
  *(&STACK[0x8AE0] + v28) = (BYTE3(v18) ^ 0xC0) - 2 * ((BYTE3(v18) ^ 0xC0) & 0xF7 ^ BYTE3(v18) & 6) - 15;
  *(v13 + v28) = v15 ^ (*(STACK[0x8C8] + (((a2 ^ 0x12) + 110) ^ 0x64)) + 78) ^ 0x18;
  v29 = v16[4];
  v30 = ((v20 - 2068364254) ^ 0x7EFFFF6FBCFDFEEFLL) - 0x7EFFFF6FBCFDFEEFLL + ((2 * (v20 - 2068364254)) & 0x179FBFDDELL);
  *(&STACK[0x8AE0] + v30) = (BYTE4(v18) ^ 0x15) - 2 * ((BYTE4(v18) ^ 0x15) & 0xF3 ^ BYTE4(v18) & 2) - 15;
  *(v13 + v30) = STACK[0x698] ^ 0x8B ^ v29;
  v31 = v16[5];
  LODWORD(v15) = ((v18 >> 33) & 0x80 | (v18 >> 41) & 0x7F) ^ 0x90;
  LODWORD(v15) = v15 - 1405791668 - ((2 * v15) & 0xF6) + 47;
  LOBYTE(v15) = ((v15 ^ 0x2A) - ((2 * (v15 ^ 0x2A) + 60) & 0x6A) + 83) ^ *(a3 + (v15 ^ 0xAC35524C)) ^ v10;
  v32 = ((v20 - 2068364253) ^ 0xDF3BF13DFFB2EBFFLL) + 0x20C40EC2004D1401 + ((2 * (v20 - 2068364253)) & 0x1FF65D7FELL);
  *(&STACK[0x8AE0] + v32) = -((-26 * v15) & 0xE3) - 13 * v15 - 15;
  *(v13 + v32) = a6 ^ 0x98 ^ v31;
  v33 = v16[6];
  v34 = ((v20 - 2068364252) ^ 0xEF6FF7FBFF82D27DLL) + 0x10900804007D2D83 + ((2 * (v20 - 2068364252)) & 0x1FF05A4FALL);
  *(&STACK[0x8AE0] + v34) = (BYTE6(v18) ^ 0x32) - ((2 * (BYTE6(v18) ^ 0x32)) & 0xE3) - 15;
  *(v13 + v34) = v9 ^ v33 ^ 0xC1;
  LOBYTE(v34) = v16[7];
  v35 = ((v20 - 2068364251) ^ 0xFFF3B4DEF76FFEFDLL) + 0xC4B2108900103 + ((2 * (v20 - 2068364251)) & 0x1EEDFFDFALL);
  *(&STACK[0x8AE0] + v35) = (HIBYTE(v18) ^ 0xC9) - 2 * ((HIBYTE(v18) ^ 0xC9) & 0xF3 ^ HIBYTE(v18) & 2) - 15;
  v36 = *(STACK[0x918] + (((v6 ^ 2) + 110) ^ a4));
  HIDWORD(v24) = v36 ^ v12;
  LODWORD(v24) = ~v36 << 24;
  *(v13 + v35) = v34 ^ 0x63 ^ (v24 >> 31);
  LODWORD(STACK[0x6C0]) = v20 + 8;
  LODWORD(STACK[0x654]) = *(STACK[0x9A8] + 8) - ((2 * *(STACK[0x9A8] + 8)) & 0xFFE3) - 15;
  v37 = *(a5 + 8 * SLODWORD(STACK[0x978]));
  STACK[0x910] = 0xC9322115C0875484;
  LODWORD(STACK[0x960]) = 1;
  STACK[0x8E8] = 0x5EE7390FD4A21F47;
  LODWORD(STACK[0x948]) = 1;
  LODWORD(STACK[0x950]) = 1;
  LODWORD(STACK[0x900]) = 1;
  LODWORD(STACK[0x8A8]) = 1;
  LODWORD(STACK[0x84C]) = 1;
  LODWORD(STACK[0x850]) = 1;
  LODWORD(STACK[0x8B0]) = 1;
  LODWORD(STACK[0x858]) = 1;
  LODWORD(STACK[0x860]) = 1;
  LODWORD(STACK[0x908]) = 1;
  LODWORD(STACK[0x8B8]) = 1;
  LODWORD(STACK[0x868]) = 1;
  LODWORD(STACK[0x8E0]) = 1;
  LODWORD(STACK[0x8A0]) = 1;
  LODWORD(STACK[0x898]) = 1;
  LODWORD(STACK[0x8F8]) = 1;
  return v37();
}

uint64_t sub_2447DAE0C@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  LODWORD(STACK[0x950]) = 0;
  LODWORD(STACK[0x900]) = 0;
  LODWORD(STACK[0x8A8]) = 0;
  LODWORD(STACK[0x850]) = 0;
  LODWORD(STACK[0x8B0]) = 0;
  LODWORD(STACK[0x858]) = 0;
  LODWORD(STACK[0x860]) = 0;
  LODWORD(STACK[0x908]) = 0;
  LODWORD(STACK[0x8B8]) = 0;
  LODWORD(STACK[0x868]) = 0;
  LODWORD(STACK[0x890]) = 0;
  LODWORD(STACK[0x870]) = 0;
  LODWORD(STACK[0x878]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  LODWORD(STACK[0x810]) = (v2 ^ 0x29DC55B0) - 579937800 + (((183 * (a2 ^ 0xA78)) ^ 0x77F3CFB4) & (2 * v2) ^ 0x2443549E);
  v3 = *(a1 + 8 * a2);
  LODWORD(STACK[0x960]) = 1;
  STACK[0x910] = STACK[0x6B0];
  LODWORD(STACK[0x948]) = 1;
  LODWORD(STACK[0x84C]) = 1;
  LODWORD(STACK[0x8E0]) = 1;
  LODWORD(STACK[0x8A0]) = 1;
  LODWORD(STACK[0x898]) = 1;
  return v3();
}

uint64_t sub_2447DAF30(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0x6C0];
  *(&STACK[0x8AE0] + (LODWORD(STACK[0x6C0]) - 2068364258)) = v8 ^ a1 ^ ((v7 + 104) | 0x36);
  LODWORD(STACK[0x6C0]) = v9 + 1;
  return (*(a7 + 8 * v7))(101, a2, 188, 466604986);
}

uint64_t sub_2447DAFB0(unint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x950]) = 0;
  LODWORD(STACK[0x8B0]) = 0;
  LODWORD(STACK[0x858]) = 0;
  LODWORD(STACK[0x860]) = 0;
  LODWORD(STACK[0x908]) = 0;
  LODWORD(STACK[0x8B8]) = 0;
  LODWORD(STACK[0x868]) = 0;
  LODWORD(STACK[0x890]) = 0;
  LODWORD(STACK[0x870]) = 0;
  LODWORD(STACK[0x878]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  v11 = v8 - 17896;
  LODWORD(STACK[0x960]) = v11;
  v12 = (v11 + 1458549756) & 0xA91073CF;
  STACK[0x978] = v12;
  *&STACK[0x9FB0] = a2;
  v13 = STACK[0x580];
  v14 = STACK[0x918];
  v15 = *(STACK[0x918] + ((v12 - 12634) ^ ((STACK[0x580] & 0xF ^ 0xBu) + 110)));
  HIDWORD(v16) = v15 ^ v10;
  LODWORD(v16) = ~v15 << 24;
  *(&STACK[0x9FB0] + ((v16 >> 31) ^ 0x92)) = STACK[0x9FB0];
  LODWORD(v12) = LODWORD(STACK[0x584]) ^ 0x5698229F;
  *(((v12 % 0xF) | &STACK[0x9FB0]) + 1) = STACK[0x9FB1];
  v17 = STACK[0x588];
  *((((LODWORD(STACK[0x588]) ^ 0x416FD0B7u) % 0xE) | &STACK[0x9FB0]) + 2) = STACK[0x9FB2];
  v18 = STACK[0x58C];
  v19 = LODWORD(STACK[0x58C]) ^ 0x5F9A1E0B;
  v20 = *(v14 + ((v19 % 0xD + 110) ^ 0xB0));
  HIDWORD(v16) = v20 ^ v10;
  LODWORD(v16) = ~v20 << 24;
  *(&STACK[0x9FB0] + ((v16 >> 31) ^ 0x92u) + 3) = STACK[0x9FB3];
  v21 = (((v13 ^ 0x62439CEBu) % 0xC - ((2 * ((v13 ^ 0x62439CEBu) % 0xC)) & 8) + 1484736420) >> 1) ^ 0x2C3FA3D2;
  v22 = (v21 | ((((v13 ^ 0x62439CEBu) % 0xC) & 1) << 7)) - 1958313512 - 2 * ((v21 | ((((v13 ^ 0x62439CEBu) % 0xC) & 1) << 7)) & 0xB4681DB ^ v21 & 3);
  LOBYTE(v21) = *(STACK[0x920] + (v22 ^ 0x8B4681EF));
  STACK[0x8E8] = STACK[0x698] ^ 0x5EE7390FD692763DLL;
  v23 = &STACK[0x9FB0] + (-13 * (((v22 ^ 0x89) - ((2 * (v22 ^ 0x89) + 60) & 0x6A) + 83) ^ v21 ^ 0x5E));
  LODWORD(v12) = ((2 * (v12 + v19)) & 0x1E31B3BE) + ((v12 + v19) ^ 0x8F18D9DF);
  v24 = ((v12 + 1894196769) ^ v13 ^ 0x62439CEB) - 1585864832 - 2 * (((v12 + 1894196769) ^ v13 ^ 0x62439CEB) & 0x21799F90 ^ ((v12 + 1894196769) ^ v13) & 0x10);
  v25 = ((2 * ((v17 ^ 0xCB4C5608) - (v24 ^ 0xA1799F80))) & 0xBD6DCFF6) + (((v17 ^ 0xCB4C5608) - (v24 ^ 0xA1799F80)) ^ 0xDEB6E7FB);
  v26 = v12 + v25 + 1767503997;
  LODWORD(v12) = v26 + 2113400494;
  v23[4] = STACK[0x9FB4];
  v27 = STACK[0x928];
  LODWORD(v23) = *(STACK[0x928] + (((((v26 + 685131177) % 0xBu - 1452650588 - ((2 * ((v26 + 685131177) % 0xBu)) & 8)) >> 3) ^ 0x152D49F4 | (32 * (((v26 + 685131177) % 0xBu - 1452650588) & 7))) ^ a1));
  HIDWORD(v16) = v23 ^ 0x39;
  LODWORD(v16) = v23 << 24;
  *(&STACK[0x9FB0] + (7 * ((v16 >> 30) ^ 0x88)) + 5) = STACK[0x9FB5];
  *((((v25 + 558438405) % 0xA) | &STACK[0x9FB0]) + 6) = STACK[0x9FB6];
  LODWORD(v23) = (v24 ^ v18 ^ 0x40FB4F5F) - 1072692975 + ((2 * (v24 ^ v18)) & 0x7FDFFDDE ^ 0x7E096140);
  *(((v23 % 9) | &STACK[0x9FB0]) + 7) = STACK[0x9FB7];
  v28 = v26 + 2113400494 + v25 + 1767503997;
  v29 = ((2 * ((v13 ^ 0x62439CEB) + 1657632387 + v28)) & 0xBC7BFCEE) + (((v13 ^ 0x62439CEB) + 1657632387 + v28) ^ 0xDE3DFE77);
  v30 = ((v29 + 566362505) ^ (v23 + (v13 ^ 0x62439CEB))) + 1603935755 - ((2 * ((v29 + 566362505) ^ (v23 + (v13 ^ 0x62439CEB)))) & 0xBF343C16);
  v31 = v12 + 1157066726 + v28;
  v32 = v12 + 1722412168 + v29;
  v33 = *(v27 + ((32 * (v32 & 7)) ^ 0xDB));
  HIDWORD(v16) = v33 ^ 0x39;
  LODWORD(v16) = v33 << 24;
  *(&STACK[0x9FB0] + (7 * ((v16 >> 30) ^ 0x88)) + 8) = STACK[0x9FB8];
  LODWORD(v12) = ((v12 - 923247088 + (v30 ^ 0xA065E1F4)) ^ 0x3EFDAFEC) - 1056813036 + ((2 * (v12 - 923247088 + (v30 ^ 0xA065E1F4))) & 0x7DFB5FD8);
  *(((v12 % 7) | &STACK[0x9FB0]) + 9) = STACK[0x9FB9];
  v31 -= 422681428;
  *(((v31 % 6) | &STACK[0x9FB0]) + 0xA) = STACK[0x9FBA];
  LODWORD(STACK[0x58C]) = v30;
  *((((v30 ^ 0x5F9A1E0B) % 5) | &STACK[0x9FB0]) + 0xB) = STACK[0x9FBB];
  v34 = v31 + (v30 ^ 0xA065E1F4) + 1;
  LOBYTE(v23) = v34 ^ 0x35;
  v35 = ((2 * v34) & 0xEF6B0A6A) + (v34 ^ 0x77B58535);
  LODWORD(v12) = ((v35 - 2008384821) ^ v12) - ((2 * ((v35 - 2008384821) ^ v12)) & 0xF0B4B1DC) - 128296722;
  v36 = v12 ^ (v32 + 207285723 + v35);
  *(&STACK[0x9FB0] | v36 & 3 ^ 0xELL) = STACK[0x9FBC];
  LOBYTE(v32) = *(STACK[0x938] + ((32 * ((v12 ^ 0xFBC0E4BB) % 3)) ^ 0xE4));
  *(&STACK[0x9FB0] + (7 * (v32 - ((2 * v32 - 50) & 0xDC)) + 83) + 13) = STACK[0x9FBD];
  *(&STACK[0x9FB0] | 0xE | v23 & 1) = STACK[0x9FBE];
  LODWORD(STACK[0x9FB0]) = -1852796014;
  LOWORD(STACK[0x9FB4]) = -26730;
  LODWORD(STACK[0x9FB6]) = -1684367980;
  LOWORD(STACK[0x9FBA]) = -26216;
  LOBYTE(STACK[0x9FBC]) = -98;
  LOBYTE(STACK[0x9FBD]) = -97;
  LOWORD(STACK[0x9FBE]) = -25188;
  LODWORD(STACK[0x580]) = v36 ^ 0x9A19C405;
  LODWORD(STACK[0x588]) = v35 - ((2 * v35 - 1431695680) & 0x82DFA16E) - 1765484521;
  LODWORD(v23) = LODWORD(STACK[0x5C8]) ^ 0xAEBDFE37;
  v37 = ((2 * ((v9 ^ 0x1225AB6F) + v23)) & 0xEF77FDFA) + (((v9 ^ 0x1225AB6F) + v23) ^ 0xF7BBFEFD);
  v38 = (v37 + 138674435) ^ STACK[0x5D8];
  v39 = STACK[0x5D8] ^ 0xB45E2060;
  v40 = (&STACK[0x9FB0] | STACK[0x5D8] & 0xF);
  LOBYTE(STACK[0x9FB0]) = *v40;
  *v40 = -110;
  v41 = (v23 % 0xF) | &STACK[0x9FB0];
  v42 = *(STACK[0x8F0] + (((LOBYTE(STACK[0x9FB1]) ^ 0x92) - 92) ^ 0x8ELL));
  HIDWORD(v16) = v42 ^ 1;
  LODWORD(v16) = ~v42 << 24;
  LOBYTE(STACK[0x9FB1]) = *(v41 + 1);
  *(v41 + 1) = (v16 >> 29) + (~(2 * (v16 >> 29)) | 0xDB) - 109;
  v43 = STACK[0x5D0];
  v44 = ((LODWORD(STACK[0x5D0]) ^ 0x188B21A9u) % 0xE) | &STACK[0x9FB0];
  LOBYTE(v42) = *(STACK[0x8C8] + (((LOBYTE(STACK[0x9FB2]) ^ 0x92) + 110) ^ 0x64)) + 78;
  LOBYTE(STACK[0x9FB2]) = *(v44 + 2);
  *(v44 + 2) = v42 ^ 0x7B;
  LODWORD(v44) = *(v14 + (((v9 ^ 0x1225AB6Fu) % 0xD + 110) ^ 0xB0));
  LODWORD(STACK[0x584]) = v12 ^ 0xAD58C624;
  HIDWORD(v16) = v44 ^ v10;
  LODWORD(v16) = ~v44 << 24;
  LOBYTE(v44) = STACK[0x9FB3];
  v45 = &STACK[0x9FB0] + ((v16 >> 31) ^ 0x92u);
  LOBYTE(STACK[0x9FB3]) = v45[3];
  v45[3] = v44;
  LODWORD(v44) = (v38 ^ 0xB45E2060) + 23327061 - 2 * ((v38 ^ 0xB45E2060) & 0x163F15F ^ v38 & 0xA);
  v46 = ((2 * ((v43 ^ 0x92A8A716) - (v44 ^ 0x163F155))) & 0x5E3B7EF6) + (((v43 ^ 0x92A8A716) - (v44 ^ 0x163F155)) ^ 0x2F1DBF7B);
  LODWORD(v45) = v46 - 202384650;
  v47 = v37 + v46 - 202384650;
  v48 = v44 ^ v9;
  LODWORD(v44) = *(v14 + ((v39 % 0xC + 110) ^ 0xB0));
  HIDWORD(v16) = v44 ^ v10;
  LODWORD(v16) = ~v44 << 24;
  v49 = &STACK[0x9FB0] + ((v16 >> 31) ^ 0x92u);
  LOBYTE(v38) = STACK[0x9FB4];
  LOBYTE(STACK[0x9FB4]) = v49[4];
  v49[4] = v38;
  LOBYTE(v42) = STACK[0x9FB5];
  LOBYTE(STACK[0x9FB5]) = *((((v47 - 449419630) % 0xB) | &STACK[0x9FB0]) + 5);
  *((((v47 - 449419630) % 0xB) | &STACK[0x9FB0]) + 5) = v42;
  v50 = v46 - 790478715;
  v51 = *((((v46 - 790478715) % 0xAu) | &STACK[0x9FB0]) + 6);
  HIDWORD(v16) = v51 ^ 2;
  LODWORD(v16) = (v51 ^ 0x90) << 24;
  v47 += 1073687547;
  v52 = *(v27 + ((v16 >> 27) ^ 0xDBLL));
  HIDWORD(v16) = v52 ^ 0x39;
  LODWORD(v16) = v52 << 24;
  LOBYTE(v42) = STACK[0x9FB6];
  LOBYTE(STACK[0x9FB6]) = 7 * ((v16 >> 30) ^ 0x88) - ((16 * (v16 >> 30) - 2 * ((v16 >> 30) ^ 0x88)) & 0x24) - 110;
  *(((v50 % 0xA) | &STACK[0x9FB0]) + 6) = v42;
  v53 = (v48 ^ 0xAD84B35E) - 1060493663 + ((2 * v48) & 0x7E6BB2BE ^ 0x24629002);
  LOBYTE(v52) = STACK[0x9FB7];
  LOBYTE(STACK[0x9FB7]) = *(((v53 % 9) | &STACK[0x9FB0]) + 7);
  *(((v53 % 9) | &STACK[0x9FB0]) + 7) = v52;
  LODWORD(v45) = v47 + v45;
  v54 = v53 + v39;
  v55 = ((2 * (v39 - 2111201242 + v45)) & 0xCDFFEAFE) + ((v39 - 2111201242 + v45) ^ 0x66FFF57F);
  v56 = ((2 * ((v55 - 1728050559) ^ v54)) & 0xEFCEFF26) + ((v55 - 1728050559) ^ v54 ^ 0x77E77F93);
  LODWORD(v45) = v47 + v45;
  v57 = v47 - 200471296 + v55;
  LODWORD(v49) = v47 - v56;
  LOBYTE(v47) = STACK[0x9FB8];
  v58 = (&STACK[0x9FB0] | v57 & 7 ^ 0xCLL);
  LOBYTE(STACK[0x9FB8]) = *v58;
  *v58 = v47;
  LODWORD(v49) = v49 + 993575230;
  LOBYTE(v58) = STACK[0x9FB9];
  LOBYTE(STACK[0x9FB9]) = *(((v49 % 7) | &STACK[0x9FB0]) + 9);
  *(((v49 % 7) | &STACK[0x9FB0]) + 9) = v58;
  LOBYTE(v47) = STACK[0x9FBA];
  LOBYTE(STACK[0x9FBA]) = *((((v45 + 1165681105) % 6u) | &STACK[0x9FB0]) + 0xA);
  *((((v45 + 1165681105) % 6u) | &STACK[0x9FB0]) + 0xA) = v47;
  LOBYTE(v58) = STACK[0x9FBB];
  LOBYTE(STACK[0x9FBB]) = *((((v56 - 2011660179) % 5) | &STACK[0x9FB0]) + 0xB);
  *((((v56 - 2011660179) % 5) | &STACK[0x9FB0]) + 0xB) = v58;
  v59 = v45 - v56;
  LODWORD(v49) = ((v59 - 1117626012) ^ v49) - ((2 * ((v59 - 1117626012) ^ v49)) & 0x63411092) + 832604233;
  v60 = v49 ^ (v57 + 828677774 + v59 - 197000702);
  STACK[0x5D8] = v60 ^ 0x85FEA829;
  LODWORD(STACK[0x5D0]) = v59 - 197000702 - ((2 * (v59 - 197000702) + 743823342) & 0x31164352) - 1363800672;
  v61 = (&STACK[0x9FB0] | v60 & 3 ^ 0xDLL);
  LOBYTE(v47) = STACK[0x9FBC];
  LOBYTE(STACK[0x9FBC]) = *v61;
  *v61 = v47;
  LODWORD(STACK[0x5C8]) = v49 ^ 0x9C87CA2B;
  LOBYTE(v60) = STACK[0x9FBD];
  LOBYTE(STACK[0x9FBD]) = *((((v49 ^ 0x323A341C) % 3) | &STACK[0x9FB0]) + 0xD);
  *((((v49 ^ 0x323A341C) % 3) | &STACK[0x9FB0]) + 0xD) = v60;
  LOBYTE(v61) = STACK[0x9FBE];
  v62 = (&STACK[0x9FB0] | 0xE | (-1 - v59) & 1);
  LOBYTE(STACK[0x9FBE]) = *v62;
  *v62 = v61;
  v63 = *(a8 + 8 * SLODWORD(STACK[0x960]));
  LODWORD(STACK[0x960]) = 1;
  STACK[0x910] = STACK[0x6B0];
  LODWORD(STACK[0x948]) = 1;
  LODWORD(STACK[0x900]) = 1;
  LODWORD(STACK[0x8A8]) = 1;
  LODWORD(STACK[0x84C]) = 1;
  LODWORD(STACK[0x850]) = 1;
  LODWORD(STACK[0x8E0]) = 1;
  LODWORD(STACK[0x8A0]) = 1;
  LODWORD(STACK[0x898]) = 1;
  return v63();
}

uint64_t sub_2447DBD1C@<X0>(__int16 a1@<W0>, char a2@<W4>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  LODWORD(STACK[0x960]) = 0;
  LODWORD(STACK[0x950]) = 0;
  LODWORD(STACK[0x900]) = 0;
  LODWORD(STACK[0x8A8]) = 0;
  LODWORD(STACK[0x84C]) = 0;
  LODWORD(STACK[0x850]) = 0;
  LODWORD(STACK[0x8B0]) = 0;
  LODWORD(STACK[0x858]) = 0;
  LODWORD(STACK[0x860]) = 0;
  LODWORD(STACK[0x908]) = 0;
  LODWORD(STACK[0x8B8]) = 0;
  LODWORD(STACK[0x868]) = 0;
  LODWORD(STACK[0x890]) = 0;
  LODWORD(STACK[0x870]) = 0;
  LODWORD(STACK[0x878]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  v8 = LODWORD(STACK[0x4B8]) ^ LODWORD(STACK[0x49C]) ^ (((v4 + 1207459522) ^ (LODWORD(STACK[0x4C0]) << 8)) + 466604986 - ((2 * ((v4 + 1207459522) ^ (LODWORD(STACK[0x4C0]) << 8))) & 0x379FA600));
  v9 = STACK[0x4BC];
  v10 = ((v9 << 8) ^ 0x953C4D00) - ((2 * ((v9 << 8) ^ 0x953C4D00)) & 0xE785F600) + 1942158272;
  v11 = STACK[0x3EC];
  v12 = (v11 | ((v11 < 0x4DBB9056) << 32)) - 1304137814;
  v13 = *(STACK[0x918] + (((*(&STACK[0xCEF0] + v12) ^ ((v6 ^ HIBYTE(v10)) - ((2 * (v6 ^ HIBYTE(v10))) & 0xE3) - 15)) + 110) ^ 0xB0));
  HIDWORD(v14) = v13 ^ v7;
  LODWORD(v14) = ~v13 << 24;
  *(&STACK[0xE3D0] + v12) = (*(STACK[0x8C8] + (((*(&STACK[0xE3D0] + v12) ^ 0xF1) + 110) ^ 0x64)) + 78) ^ HIBYTE(v8) ^ 0xD1;
  *(&STACK[0xCEF0] + v12) = (v14 >> 31) ^ 0x63;
  v15 = v11 - 1304137813;
  v16 = (v15 ^ 0x7377D7EF1FCDB3B4) - 0x7377D7EF1FCDB3B4 + ((2 * v15) & 0x3F9B6768);
  v17 = *(&STACK[0xCEF0] + v16);
  *(&STACK[0xE3D0] + v16) ^= BYTE2(v8) ^ 0x5D;
  *(&STACK[0xCEF0] + v16) = v17 ^ BYTE2(v10) ^ 0xC2;
  v18 = ((v11 - 1304137812) ^ 0xFF7FECF4FC7ECF9ELL) + 0x80130B03813062 + ((2 * (v11 - 1304137812)) & 0x1F8FD9F3CLL);
  LOBYTE(v13) = *(&STACK[0xCEF0] + v18);
  *(&STACK[0xE3D0] + v18) ^= BYTE1(v8) ^ 0x61;
  *(&STACK[0xCEF0] + v18) = (v13 ^ v9 ^ 0xBC) - 2 * ((v13 ^ v9 ^ 0xBC) & 0xF3 ^ (v13 ^ v9) & 2) - 15;
  v19 = ((v11 - 1304137811) ^ 0x9779B7BFE5FF2CDLL) - 0x9779B7BFE5FF2CDLL + ((2 * (v11 - 1304137811)) & 0x1FCBFE59ALL);
  LOBYTE(v13) = v5 ^ *(&STACK[0xCEF0] + v19) ^ 0x9E;
  *(&STACK[0xE3D0] + v19) ^= v8 ^ 0xAD;
  *(&STACK[0xCEF0] + v19) = v13 - ((2 * v13) & 0xE3) - 15;
  v20 = STACK[0x6B0];
  v21 = bswap32(STACK[0x6B0] ^ 0xC0875484);
  LODWORD(STACK[0x4C0]) = v21 + 457701481 - ((2 * v21) & 0x368FF0D2);
  LODWORD(v16) = ((a1 & 0xFF00 | v5 & 0xFF0000) ^ 0xD5251200) + 61059443 - ((2 * ((a1 & 0xFF00 | v5 & 0xFF0000) ^ 0xD5251200)) & 0x3476200);
  v22 = ((((v5 << 16) ^ 0xAB6F0000) - ((2 * ((v5 << 16) ^ 0xAB6F0000)) & 0xAB820000) - 708718342) >> 24) ^ 0xFFFFFFD5;
  v23 = ((v11 - 1304137810) ^ 0x7FFF22CBBBAE79F4) - 0x7FFF22CBBBAE79F4 + ((2 * (v11 - 1304137810)) & 0x1775CF3E8);
  *(&STACK[0xE3D0] + v23) = HIBYTE(v21) - ((v21 >> 23) & 0xE2) - 15;
  *(&STACK[0xCEF0] + v23) = v22 - ((2 * v22) & 0xE3) - 15;
  v24 = ((v15 + 4) ^ 0xDBB38FFF7BE7BD3DLL) + 0x244C7000841842C3 + ((2 * (v15 + 4)) & 0xF7CF7A7ALL);
  LODWORD(STACK[0x49C]) = v21 - 916627091 + (~(2 * v21) | 0x6D453CA5) + 65;
  STACK[0x910] = HIDWORD(v20) ^ 0xC932211509B57591;
  STACK[0x8E8] = a4 ^ 0x5EE7390FD4A02F2ELL;
  *(&STACK[0xE3D0] + v24) = BYTE2(v21) - ((v21 >> 15) & 0xE2) - 15;
  *(&STACK[0xCEF0] + v24) = (a1 ^ 0x25) - ((2 * (a1 ^ 0x25)) & 0xE3) - 15;
  v25 = v16 ^ 0x3A3B173 | BYTE4(v5) ^ 0x7A;
  v26 = ((v15 + 5) ^ 0x23DCDBFD47F37CC9) - 0x23DCDBFD47F37CC9 + ((2 * (v15 + 5)) & 0x8FE6F992);
  *(&STACK[0xE3D0] + v26) = BYTE1(v21) - ((v21 >> 7) & 0xE2) - 15;
  *(&STACK[0xCEF0] + v26) = (BYTE1(v16) ^ 0xB1) - 2 * ((BYTE1(v16) ^ 0xB1) & a2 ^ BYTE1(v16) & 4) - 15;
  v27 = ((v15 + 6) ^ 0x7E9F7FF7FF96FD7FLL) - 0x7E9F7FF7FF96FD7FLL + ((2 * (v15 + 6)) & 0x1FF2DFAFELL);
  *(&STACK[0xE3D0] + v27) = v21 - ((2 * v21) & 0xE3) - 15;
  *(&STACK[0xCEF0] + v27) = STACK[0x698] ^ 0x8B;
  LODWORD(STACK[0x4BC]) = v25 + 2090155085 - ((2 * v25) & 0xF92A789A);
  v28 = *(a3 + 8 * v4);
  LODWORD(STACK[0x948]) = 1;
  LODWORD(STACK[0x8E0]) = 1;
  LODWORD(STACK[0x8A0]) = 1;
  LODWORD(STACK[0x898]) = 1;
  LODWORD(STACK[0x4B8]) = 466604986;
  LODWORD(STACK[0x590]) = STACK[0x464];
  return v28();
}

uint64_t sub_2447DC374(int a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v12 = LODWORD(STACK[0x6D8]) - 1216400560 - 2 * ((LODWORD(STACK[0x6D8]) + 27101376) & 0x15E1B4CF ^ STACK[0x6D8] & 1);
  LODWORD(STACK[0x958]) = LODWORD(STACK[0x6D0]) - ((2 * LODWORD(STACK[0x6D0]) - 274039584) & 0xA2321588);
  LODWORD(STACK[0x800]) = LODWORD(STACK[0x6D4]) - ((2 * LODWORD(STACK[0x6D4]) + 759910760) & 0xA899317C);
  v13 = (LODWORD(STACK[0x6E8]) ^ 0xCEE34456) - ((2 * (LODWORD(STACK[0x6E8]) ^ 0xCEE34456) + 2) & 0xCC485FFE) + 1713647616;
  v14 = STACK[0x8F8];
  v15 = (LODWORD(STACK[0x8F8]) ^ v13 ^ 0xB757F721) + 367113422 - ((2 * (LODWORD(STACK[0x8F8]) ^ v13 ^ 0xB757F721)) & 0x2BC3699C);
  LODWORD(STACK[0x960]) = a2 - 14683;
  v16 = v12 + a2 - 14683;
  v17 = (v15 ^ v16 ^ 0x6CBBD5A9) - (LODWORD(STACK[0x978]) ^ 0x25734821);
  v18 = STACK[0x8D8];
  v19 = 1387441161 - LODWORD(STACK[0x8D8]) + (((v8 ^ v13 ^ 0xA1A2F349) + 367113422 - ((2 * (v8 ^ v13 ^ 0xA1A2F349)) & 0x2BC3699C)) ^ v9 ^ v16);
  v20 = (LODWORD(STACK[0x8D8]) + a1) ^ LODWORD(STACK[0x978]);
  v21 = v14 ^ v8;
  v22 = STACK[0x8E8];
  STACK[0x7F0] = ((v8 ^ 0x5A7262D8 ^ ((v16 ^ v14 ^ 0xC4926C10) - 947462986 - 2 * ((v16 ^ v14 ^ 0xC4926C10) & 0x4786DCBE ^ (v16 ^ v14) & 8))) - (v20 ^ 0x435767DE ^ v13)) ^ (LODWORD(STACK[0x8E8]) - 638507246);
  v23 = STACK[0x8E0];
  LODWORD(STACK[0x7FC]) = v17 ^ LODWORD(STACK[0x8E0]) ^ v19;
  v24 = ((2 * v20) & 0x8DBB7BBE ^ 0x92A6896) + (v20 ^ 0x5B4889B4);
  v25 = (v23 ^ v10) - ((2 * (v23 ^ v10) + 1774892026) & 0xB2A9DB3C);
  v26 = v18 - ((2 * v18 + 531498796) & 0x3ADE122A) - 314176341;
  LODWORD(STACK[0x900]) = v26;
  v27 = v24 - 1188937183;
  v28 = v24;
  LODWORD(STACK[0x830]) = v24;
  v29 = (v26 ^ 0x1D6F0915 ^ (v24 - 1188937183)) + 795007920 - ((2 * (v26 ^ 0x1D6F0915 ^ (v24 - 1188937183))) & 0x5EC5B760);
  LODWORD(STACK[0x810]) = v29;
  v30 = v22 - 1898544881;
  LODWORD(STACK[0x8B0]) = v22 - 1898544881;
  LODWORD(STACK[0x840]) = v21;
  v31 = v11 + a3 + 382994585 + (v21 ^ 0x74611AFA);
  v32 = (v30 ^ 0x3AA30736 ^ v31) - 1056422739 - ((2 * (v30 ^ 0x3AA30736 ^ v31)) & 0x8210895A);
  v33 = v11 - 2 * ((v11 + 854966596) & 0x6C5291E3 ^ v11 & 3) + 524833572;
  LODWORD(STACK[0x890]) = v33;
  v34 = (v21 ^ 0x74611AFA) + (v30 ^ 0x3AA30736) - ((2 * ((v21 ^ 0x74611AFA) + (v30 ^ 0x3AA30736))) & 0xC9D82044) + 1693192226;
  v35 = v21 ^ v33;
  LODWORD(STACK[0x860]) = v35;
  v36 = ((2 * (v34 ^ v35)) & 0xDFFBA9BE ^ 0xD9BB2030) + (v34 ^ v35 ^ 0x93224FE7);
  LODWORD(STACK[0x978]) = a2;
  v37 = v32 ^ v34 ^ 0xA5E4548F;
  v38 = v37 + 268577569 + v36 + 1985018023 - ((2 * (v37 + 268577569 + v36)) & 0xECA1F14E);
  v39 = LODWORD(STACK[0x6EC]) - 2 * ((LODWORD(STACK[0x6EC]) + 547628646) & 0x61C7FAEF ^ STACK[0x6EC] & 1);
  LODWORD(STACK[0x838]) = v25 + 238700443;
  v40 = v18 + (a8 ^ 0x67769C19) + 1718588952 + v28;
  v41 = (v40 ^ (v25 + 238700443) ^ 0x63F7EAA8) - 541800354 - 2 * ((v40 ^ (v25 + 238700443) ^ 0x63F7EAA8) & 0x5FB4C85F ^ (v40 ^ (v25 + 238700443)) & 1);
  v42 = (LODWORD(STACK[0x720]) ^ 0xA9013B4B) - ((2 * (LODWORD(STACK[0x720]) ^ 0xA9013B4B) + 2) & 0xD96B05C);
  v43 = ((v25 + 238700443) ^ 0x63F7EAA8) + v27 - ((2 * (((v25 + 238700443) ^ 0x63F7EAA8) + v27)) & 0xC54E6E2E) - 492357865;
  v44 = ((2 * (v43 ^ v29)) & 0xED9FFDFE ^ 0x898BD94E) + (v43 ^ v29 ^ 0x3B0A1258);
  v45 = v41 ^ v43;
  v46 = v41 ^ v43 ^ 0x3D13FF49;
  LODWORD(STACK[0x878]) = v41 ^ v43;
  v47 = ((2 * (v46 + 154140929 + v44)) & 0x67FB7FFC) + ((v46 + 154140929 + v44) ^ 0x33FDBFFE);
  LODWORD(STACK[0x8D8]) = v47;
  LODWORD(STACK[0x8E8]) = v42 + 113989679;
  LODWORD(STACK[0x898]) = v32 ^ v34;
  LODWORD(STACK[0x8B8]) = v39 - 2106842796;
  LODWORD(STACK[0x888]) = v38;
  v48 = (v32 ^ 0xC10844AD) - v36 + 51110057 - ((2 * ((v32 ^ 0xC10844AD) - v36 - 268577569)) & 0x261C1794);
  LODWORD(STACK[0x870]) = v48;
  v49 = (v41 ^ 0xDFB4C85E) - v44 - ((2 * ((v41 ^ 0xDFB4C85E) - v44) - 308281858) & 0xB458D90C) - 788763771;
  v50 = v49 ^ (((v39 - 2106842796) ^ 0x6CBBD5A9 ^ ((v32 ^ v34 ^ (v42 + 113989679) ^ 0xCF94D908) - 506987794 - ((2 * (v32 ^ v34 ^ (v42 + 113989679) ^ 0xCF94D908)) & 0xC38FF5DC))) - v46) ^ (872267774 - v47 + ((((v42 + 113989679) ^ 0x709BA089 ^ v38) - 506987794 - ((2 * ((v42 + 113989679) ^ 0x709BA089 ^ v38)) & 0xC38FF5DC)) ^ (v39 - 2106842796)));
  v51 = v32 ^ v34 ^ (v31 + (v34 ^ 0x9B13EFDD) + 1);
  v52 = v51 ^ 0xA5E4548F;
  v53 = (v51 ^ 0xA5E4548F) + v37 + 1831227477 - ((2 * ((v51 ^ 0xA5E4548F) + v37)) & 0xDA4CA0AA);
  v54 = ((2 * ((v38 ^ 0x7650F8A7) - (v53 ^ 0x6D265055))) & 0xFE9BF79E) + (((v38 ^ 0x7650F8A7) - (v53 ^ 0x6D265055)) ^ 0x7F4DFBCF);
  v55 = (v53 ^ 0xA6BE22F4) - 191653896 + ((2 * v53) & 0x1EFBFC5E ^ 0x1283B816);
  v56 = v45 ^ (v40 + (v43 ^ 0x1D58C8E8) + 1);
  v57 = (v56 ^ 0x3D13FF49) + v46;
  v58 = (v51 ^ 0xB6EA5F45 ^ v48) + 1831227477 - ((2 * (v51 ^ 0xB6EA5F45 ^ v48)) & 0xDA4CA0AA);
  LODWORD(STACK[0x950]) = v57;
  v59 = v57 ^ 0xC4E58C8E;
  v60 = (v56 ^ 0xC2EC00B6) + 154140929 + v44 + (v57 ^ 0xC4E58C8E) + 1;
  v61 = ((2 * v60) & 0xFEEB136E) + (v60 ^ 0xFF7589B7);
  v62 = v57 ^ v56 ^ v49;
  v63 = (LODWORD(STACK[0x6F0]) ^ 0x1B54DD8) - 1394190770 - ((2 * (LODWORD(STACK[0x6F0]) ^ 0x1B54DD8) + 2) & 0x59CCAC9C) + 1;
  LODWORD(STACK[0x930]) = v63;
  v64 = LODWORD(STACK[0x958]) + 1223575860;
  LODWORD(STACK[0x908]) = v64;
  v65 = v55 + v54 + 2090888714;
  LODWORD(STACK[0x828]) = v65;
  v66 = ((v64 ^ 0xC4E58C8E ^ ((v63 ^ 0xC1C0061B ^ v53) + 1360595652 - ((2 * (v63 ^ 0xC1C0061B ^ v53)) & 0xA2321588))) - (v57 ^ 0xC4E58C8E)) ^ v62 ^ (-9074249 - v61 + (((v63 ^ 0xACE6564E ^ v65) + 1360595652 - ((2 * (v63 ^ 0xACE6564E ^ v65)) & 0xA2321588)) ^ v64));
  v67 = v55 + v54 - 134484100;
  v68 = v67 + v55;
  v69 = v67 - ((2 * v67 + 212998772) & 0x1669BF52) - 1047663389;
  v70 = v52 - (v55 - 134484100 + v55) - 799334472 + (v69 ^ 0x74CB2056);
  v71 = v61 + 9074249;
  LODWORD(STACK[0x81C]) = v61 + 9074249;
  v72 = ((2 * (v61 + 9074249 + v59)) & 0x57BBF7BA) + ((v61 + 9074249 + v59) ^ 0x2BDDFBDD);
  v73 = v61 - ((2 * v61 + 1685981674) & 0x91CE6290) + 2066101821;
  v74 = v44 - v72 + (v73 ^ 0x3718CEB7) + 88735948 - ((2 * (v44 - v72 + (v73 ^ 0x3718CEB7) + 88735948)) & 0xE2F4FCA);
  v75 = LODWORD(STACK[0x84C]) - ((907886560 - 2 * LODWORD(STACK[0x6FC])) & 0x98D1FD92) + 1735892665;
  v76 = v75;
  LODWORD(STACK[0x868]) = v75;
  v77 = ((v69 ^ v75 ^ 0xC75C2160) - 651275029 - 2 * ((v69 ^ v75 ^ 0xC75C2160) & 0x592E54FB ^ (v69 ^ v75) & 0x10)) ^ LODWORD(STACK[0x71C]);
  v78 = STACK[0x71C];
  LODWORD(STACK[0x71C]) = STACK[0x71C];
  v79 = v70 - ((2 * v70) & 0x8863539C) + 1144105422;
  v80 = v68 - ((2 * v68 + 188492658) & 0xF7B11EFE) + 24552760;
  v81 = v80;
  LODWORD(STACK[0x858]) = v80;
  v82 = ((2 * (v79 ^ v69)) & 0xCFDFF778 ^ 0x8E0AE448) + (v79 ^ v69 ^ 0xA8EA8DDB);
  LODWORD(STACK[0x958]) = v82;
  v83 = (v80 ^ 0x3FE926B1 ^ v79) + 1743780796 - v82 - ((2 * ((v80 ^ 0x3FE926B1 ^ v79) + 1743780796 - v82)) & 0xFD461BB6);
  LODWORD(STACK[0x880]) = v58 ^ v53;
  v84 = v65 + (v58 ^ v53 ^ 0xC4E58C8E);
  LODWORD(STACK[0x910]) = v84;
  v85 = ((2 * ((v84 ^ 0x9149AD28) + 1743780796 - v82)) & 0x3FFFFD9E) + (((v84 ^ 0x9149AD28) + 1743780796 - v82) ^ LODWORD(STACK[0x388]));
  LODWORD(STACK[0x8A8]) = v85;
  v86 = v72 - ((2 * v72 + 844784362) & 0x438C2BB8) - 84719791;
  LODWORD(STACK[0x84C]) = v86;
  v87 = ((2 * ((v74 - 2028492827) ^ v73)) & 0xDFFBD1F6 ^ 0x9FE10152) + ((v74 - 2028492827) ^ v73 ^ 0xA00D7E56);
  LODWORD(STACK[0x948]) = v87;
  v88 = (LODWORD(STACK[0x700]) ^ 0x83470A6B) - ((2 * (LODWORD(STACK[0x700]) ^ 0x83470A6B) + 2) & 0x94B3AAA8);
  v89 = (v86 ^ 0xA6D1B239 ^ (v74 - 2028492827)) - v87 - 268572421;
  v90 = v89 + 825498301 - ((2 * v89) & 0x6268357A);
  LODWORD(STACK[0x8A0]) = v90;
  v91 = ((2 * v73) & 0x7FBE639A ^ 0x38E0118) + (v73 ^ 0x7E38BB71);
  LODWORD(STACK[0x820]) = v91;
  v92 = v71 + (v62 ^ 0x23DA1F41) - 539979166 - ((2 * (v71 + (v62 ^ 0x23DA1F41))) & 0xBFA124C4);
  LODWORD(STACK[0x808]) = v92;
  v93 = LODWORD(STACK[0x800]) + 1794261362;
  LODWORD(STACK[0x8F8]) = v93;
  LODWORD(STACK[0x8E0]) = v83 - 22868517;
  v94 = ((v69 ^ 0x7EB99C0A ^ ((v93 ^ 0xAAEF9565 ^ (v83 - 22868517)) - ((2 * (v93 ^ 0xAAEF9565 ^ (v83 - 22868517))) & 0xF91BF0AE) - 57804713)) - ((v88 - 900082347) ^ (v91 + 1075891763) ^ 0xFB6DCFE9 ^ v90)) ^ (v85 + 1564971289);
  v95 = (v77 - (v73 ^ 0xC8E73148)) ^ ((((v76 ^ 0x37B071B6 ^ v81) - 651275029 - ((2 * (v76 ^ 0x37B071B6 ^ v81)) & 0xB25CA9D6)) ^ v78) - (v86 ^ 0x21C615DC));
  v96 = STACK[0x7F0];
  v97 = STACK[0x7F0] - ((2 * STACK[0x7F0]) & 0x1453627E0) - 0x165225A05D64EC10;
  v98 = (v95 - 539979166 - ((2 * v95) & 0xBFA124C4)) ^ v92;
  v99 = ((2 * v98) & 0xFF7B6FFE ^ 0x22134A50) + (v98 ^ 0x6EF41AD7);
  LODWORD(STACK[0x7D4]) = v99;
  v100 = STACK[0x7FC];
  v101 = (LODWORD(STACK[0x7FC]) ^ 0xEDDF7445) - ((2 * (LODWORD(STACK[0x7FC]) ^ 0xEDDF7445)) & 0xD144290) - 2037767864;
  v102 = ((v66 >> 1) & 0x80 | (v66 >> 9)) ^ 0x8F;
  v103 = ((32 * LODWORD(STACK[0x4C4])) ^ 0x79FA7740) - 2025040295 - ((2 * ((32 * LODWORD(STACK[0x4C4])) ^ 0x79FA7740)) & 0xE98AC80);
  v104 = STACK[0x8C8];
  v105 = *(STACK[0x8C8] + (((HIBYTE(v50) ^ 0xDA) + 110) ^ 0x64));
  v106 = v102 + 1081578320 - 2 * (v102 & 0x77777777 ^ (v66 >> 9) & 0x10) + 23;
  LOBYTE(v82) = *(STACK[0x920] + (v106 ^ 0x40779350u));
  LODWORD(STACK[0x7DC]) = v94;
  LODWORD(STACK[0x7E0]) = *(STACK[0x8D0] + (((v94 >> 1) & 0x80 | (v94 >> 9)) ^ 0xA6));
  LODWORD(STACK[0x7EC]) = *(STACK[0x938] + (((v94 >> 3) | (32 * (v94 & 7))) ^ 0xE4));
  v107 = (v103 ^ 0xFEDBDFC470B3C8A8) + 0x124203B0800610FLL + ((2 * (v103 ^ 0x874C5659)) & 0x1EFFF3DE2);
  LODWORD(STACK[0x7D8]) = *(STACK[0x918] + ((v99 + 111) ^ 0xB0));
  *(&STACK[0xE3D0] + v107) = (BYTE3(v97) ^ 0xA2) + ~(2 * ((BYTE3(v97) ^ 0xA2) & 0xF9 ^ BYTE3(v97) & 8)) - 14;
  *(&STACK[0xCEF0] + v107) = (HIBYTE(v101) ^ 0x86) - ((2 * HIBYTE(v101)) & 0xE3) - 15;
  v108 = (v103 ^ 0xEDFFEFEB7981A1F7) + 0x1200101401320851 + ((2 * (v103 ^ 0x874C5658)) & 0x1FD9BEF5ELL);
  *(&STACK[0xE3D0] + v108) = (BYTE2(v97) ^ 0x9B) - 2 * ((BYTE2(v97) ^ 0x9B) & 0x75 ^ BYTE2(v97) & 4) - 15;
  *(&STACK[0xCEF0] + v108) = (BYTE2(v101) ^ 0x8A) - ((2 * BYTE2(v101)) & 0xE3) - 15;
  LOBYTE(v102) = (BYTE1(v101) ^ 0x21) - 2 * ((BYTE1(v101) ^ 0x21) & 0xF7 ^ BYTE1(v101) & 6);
  LODWORD(STACK[0x800]) = -2025040293;
  v109 = (v103 ^ 0x75FFBBC668B289A5) - 0x75FFBBC6EFFEDFFELL + ((2 * (v103 ^ 0x874C565B)) & 0x1DFFDBFFCLL);
  *(&STACK[0xE3D0] + v109) = (BYTE1(v97) ^ 0x13) - 2 * ((BYTE1(v97) ^ 0x13) & 0xF9 ^ BYTE1(v97) & 8) - 15;
  *(&STACK[0xCEF0] + v109) = v102 - 15;
  v110 = v103 & 0xFFFFFFE0;
  v111 = (v110 ^ 0x7EFF5EF75EB2EDADLL) - 0x7EFF5EF7D9FEBBEELL + ((2 * (v110 ^ 0x874C5643)) & 0x1B3FD77C4);
  *(&STACK[0xE3D0] + v111) = v96 ^ 0xF1;
  *(&STACK[0xCEF0] + v111) = v100 ^ 0xB4;
  LODWORD(v109) = LODWORD(STACK[0x850]) - ((270864854 - 2 * LODWORD(STACK[0x710])) & 0x3920F074) + 1688404261;
  LODWORD(v111) = LODWORD(STACK[0x704]) - ((2 * LODWORD(STACK[0x704]) + 1470719770) & 0x42350A5C) - 856737605;
  LODWORD(v97) = ((v111 ^ 0x6CBBD5A9 ^ ((v109 ^ LODWORD(STACK[0x860]) ^ 0x68182689) - 1592097490 - 2 * ((v109 ^ LODWORD(STACK[0x860]) ^ 0x68182689) & 0x211A853E ^ (v109 ^ LODWORD(STACK[0x860])) & 0x10))) - (LODWORD(STACK[0x810]) ^ 0x2F62DBB0)) ^ ((v111 ^ 0x6CBBD5A9 ^ ((LODWORD(STACK[0x840]) ^ v109 ^ 0x44AB769) - 1592097490 - ((2 * (LODWORD(STACK[0x840]) ^ v109 ^ 0x44AB769)) & 0x42350A5C))) - LODWORD(STACK[0x830]) + 1188937183);
  LODWORD(v111) = (v111 ^ 0xCD4814CE ^ LODWORD(STACK[0x890])) - (LODWORD(STACK[0x900]) ^ v109 ^ 0x1FF712F);
  LODWORD(v109) = (v97 - ((2 * v97) & 0xB2A9DB3C) + 1498738078) ^ LODWORD(STACK[0x838]);
  v112 = v111 ^ LODWORD(STACK[0x8B0]);
  LODWORD(v97) = (v109 ^ 0x3AA30736) - ((2 * (v109 ^ 0x3AA30736)) & 0xAC580EF0) + 1445726072;
  LODWORD(STACK[0x900]) = -2025040291;
  v113 = (v103 ^ 0xF7F77DEFA8F22CA7) + 0x8088210D0418506 + ((2 * (v103 ^ 0x874C565D)) & 0x5F7CF5F4);
  *(&STACK[0xE3D0] + v113) = (BYTE3(v97) ^ 0x56) - ((2 * (BYTE3(v97) ^ 0x56)) & 0xE3) - 15;
  v114 = (v112 ^ 0x3AA30736) - ((2 * (v112 ^ 0x3AA30736)) & 0xD518EC6) - 2035759261;
  *(&STACK[0xCEF0] + v113) = (HIBYTE(v114) ^ 0x86) - ((2 * HIBYTE(v114)) & 0xE3) - 15;
  v115 = (v110 ^ 0xFFFBAEDF5273E9FALL) + 0x451202AC04041 + ((2 * (v110 ^ 0x874C5645)) & 0x1AA7F7F4ALL);
  *(&STACK[0xE3D0] + v115) = (BYTE2(v97) ^ 0x2C) - 2 * ((BYTE2(v97) ^ 0x2C) & 0xF3 ^ BYTE2(v97) & 2) - 15;
  *(&STACK[0xCEF0] + v115) = (BYTE2(v114) ^ 0xA8) - 2 * ((BYTE2(v114) ^ 0xA8) & 0xF7 ^ BYTE2(v114) & 6) - 15;
  LOBYTE(v97) = (BYTE1(v114) ^ 0xC7) - ((2 * (BYTE1(v114) ^ 0xC7)) & 0xE3);
  LODWORD(STACK[0x8B0]) = -2025040289;
  v116 = (v103 ^ 0xF1F8FDEB5BB3A1A0) + 0xE07021423000801 + ((2 * (v103 ^ 0x874C565F)) & 0x1B9FFEFFELL);
  *(&STACK[0xE3D0] + v116) = (BYTE1(v97) ^ 7) - ((2 * (BYTE1(v97) ^ 7)) & 0xE3) - 15;
  *(&STACK[0xCEF0] + v116) = v97 - 15;
  LODWORD(v115) = (((v112 & 1) << 7) | (v112 >> 1)) ^ 0x1B;
  LODWORD(v115) = v115 + 1982717258 + (~(2 * v115) | 0xFFFFFF6D);
  LOBYTE(v115) = ((v115 ^ 0x18) - ((2 * (v115 ^ 0x18) + 60) & 0x6A) + 83) ^ *(STACK[0x920] + (v115 ^ 0x762DDD7E)) ^ 0x5E;
  v117 = (v110 ^ 0x3FFDFE9768B92938) - 0x3FFDFE97EFF57F7FLL + ((2 * (v110 ^ 0x874C5647)) & 0x1DFEAFECELL);
  *(&STACK[0xE3D0] + v117) = v109 ^ 0xC7;
  *(&STACK[0xCEF0] + v117) = (~(-26 * v115) | 0x1D) - 13 * v115 - 14;
  LODWORD(v109) = ((((LODWORD(STACK[0x8B8]) ^ 0x28987BC8 ^ LODWORD(STACK[0x898])) + 1985018023 - ((2 * (LODWORD(STACK[0x8B8]) ^ 0x28987BC8 ^ LODWORD(STACK[0x898]))) & 0xECA1F14E)) ^ 0x6CBBD5A9 ^ LODWORD(STACK[0x888])) - (LODWORD(STACK[0x878]) ^ LODWORD(STACK[0x8E8]) ^ 0x3BD8A767 ^ (LODWORD(STACK[0x8D8]) - 872267774))) ^ LODWORD(STACK[0x870]);
  v105 += 78;
  HIDWORD(v118) = v105 ^ 1;
  LODWORD(v118) = (v105 ^ 0xFFFFFFEF) << 24;
  v119 = (v109 ^ 0x130E0BCA) - ((2 * (v109 ^ 0x130E0BCA)) & 0x5D939A9C) - 1362506418;
  LODWORD(v117) = *(STACK[0x928] + ((v118 >> 27) ^ 0xDBLL));
  HIDWORD(v118) = v117 ^ 0x39;
  LODWORD(v118) = v117 << 24;
  v120 = (v103 ^ 0x29FDFBFFC9A329CDLL) - 0x29FDFBFF4EEF7F9CLL + ((2 * (v103 ^ 0x874C5651)) & 0x9DDEFF38);
  *(&STACK[0xE3D0] + v120) = 7 * ((v118 >> 30) ^ 0x88) - ((14 * ((v118 >> 30) ^ 0x88)) & 0xE3) - 15;
  *(&STACK[0xCEF0] + v120) = (HIBYTE(v119) ^ 0xAE) - ((2 * (HIBYTE(v119) ^ 0xAE)) & 0xE3) - 15;
  v121 = (v103 ^ 0xFE7DD72F74B309A5) + 0x18228D00C00A00BLL + ((2 * (v103 ^ 0x874C5650)) & 0x1E7FEBFEALL);
  *(&STACK[0xE3D0] + v121) = (BYTE2(v50) ^ 0x2C) - ((2 * (BYTE2(v50) ^ 0x2C)) & 0xE3) - 15;
  *(&STACK[0xCEF0] + v121) = (BYTE2(v119) ^ 0xC9) - ((2 * (BYTE2(v119) ^ 0xC9)) & 0xE3) - 15;
  LOBYTE(v115) = (BYTE1(v119) ^ 0xCD) - ((2 * (BYTE1(v119) ^ 0xCD)) & 0xE3);
  v122 = (v110 ^ 0xA5ABFDB9FAB6A9B5) + 0x5A54024682050001 + ((2 * (v110 ^ 0x874C564A)) & 0xFBF5FFD4);
  *(&STACK[0xE3D0] + v122) = (*(v104 + (((BYTE1(v50) ^ 0x6C) + 110) ^ 0x64)) + 78) ^ 0x18;
  *(&STACK[0xCEF0] + v122) = v115 - 15;
  v123 = (v110 ^ 0xFCB7EFC7F835AB91) + 0x348103880860226 + ((2 * (v110 ^ 0x874C564B)) & 0xFEF3FB94);
  *(&STACK[0xE3D0] + v123) = v50 ^ 0x77;
  *(&STACK[0xCEF0] + v123) = v109 ^ 0x3B;
  v124 = ((LODWORD(STACK[0x908]) ^ v53 ^ 0xF8DAD61F ^ LODWORD(STACK[0x828])) - (LODWORD(STACK[0x930]) ^ LODWORD(STACK[0x950]) ^ 0x6803DAC0 ^ LODWORD(STACK[0x81C]))) ^ LODWORD(STACK[0x880]);
  LODWORD(v123) = (v124 ^ 0xC4E58C8E) - ((2 * (v124 ^ 0xC4E58C8E)) & 0xF26A6318) + 2033529228;
  v125 = (v110 ^ 0x53BF5DE5F0C20124) - 0x53BF5DE5778E5768 + ((2 * (v110 ^ 0x874C564C)) & 0xEF1CAED0);
  *(&STACK[0xE3D0] + v125) = ((((v66 ^ 0x23DA1F41) - ((2 * (v66 ^ 0x23DA1F41)) & 0x94CD164) - 2069469006) >> 24) ^ 0x84) - ((2 * (((v66 ^ 0x23DA1F41) - ((2 * (v66 ^ 0x23DA1F41)) & 0x94CD164) - 2069469006) >> 24)) & 0xE3) - 15;
  *(&STACK[0xCEF0] + v125) = (BYTE3(v123) ^ 0x79) - 2 * ((BYTE3(v123) ^ 0x79) & 0x75 ^ BYTE3(v123) & 4) - 15;
  v126 = (v110 ^ 0x2BC4EEBDDB39AD9ALL) - 0x2BC4EEBD5C75FBD7 + ((2 * (v110 ^ 0x874C564D)) & 0xB8EBF78ALL);
  *(&STACK[0xE3D0] + v126) = ((((v66 ^ 0x23DA1F41) - ((2 * (v66 ^ 0x23DA1F41)) & 0x94CD164) - 2069469006) >> 16) ^ 0xA6) - ((2 * ((((v66 ^ 0x23DA1F41) - ((2 * (v66 ^ 0x23DA1F41)) & 0x94CD164) - 2069469006) >> 16) ^ 0xA6)) & 0xE3) - 15;
  *(&STACK[0xCEF0] + v126) = (BYTE2(v123) ^ 0x35) - 2 * ((BYTE2(v123) ^ 0x35) & 0xF9 ^ BYTE2(v123) & 8) - 15;
  LOBYTE(v109) = ((v106 ^ 0x36) - ((2 * (v106 ^ 0x36) + 60) & 0x6A) + 83) ^ v82 ^ 0x5E;
  v127 = (v110 ^ 0x3D5DFFA64935E9A9) - 0x3D5DFFA6CE79BFE7 + ((2 * (v110 ^ 0x874C564E)) & 0x19CF37FCCLL);
  *(&STACK[0xE3D0] + v127) = (~(-26 * v109) | 0x1D) - 13 * v109 - 14;
  *(&STACK[0xCEF0] + v127) = (BYTE1(v123) ^ 0x31) - 2 * ((BYTE1(v123) ^ 0x31) & 0xF3 ^ BYTE1(v123) & 2) - 15;
  LODWORD(v111) = (LODWORD(STACK[0x978]) - 1517522475) & 0x5A734F9B;
  LODWORD(STACK[0x930]) = v111;
  LODWORD(v127) = LODWORD(STACK[0x708]) - 2 * (((v111 ^ 0xD15B04A) + LODWORD(STACK[0x708])) & 0xDA62ACE ^ STACK[0x708] & 2);
  v128 = ((((LODWORD(STACK[0x71C]) ^ 0xA2F6DB94 ^ LODWORD(STACK[0x858])) - ((2 * (LODWORD(STACK[0x71C]) ^ 0xA2F6DB94 ^ LODWORD(STACK[0x858]))) & 0x1669BF52) - 1959469143) ^ v69) - (((LODWORD(STACK[0x868]) ^ 0x6DAEEB15 ^ LODWORD(STACK[0x84C])) - 924372664 - ((2 * (LODWORD(STACK[0x868]) ^ 0x6DAEEB15 ^ LODWORD(STACK[0x84C]))) & 0x91CE6290)) ^ v73)) ^ LODWORD(STACK[0x910]);
  LODWORD(v123) = (v88 - 900082347) ^ 0x34FAD88F ^ LODWORD(STACK[0x8E0]);
  LODWORD(v109) = LODWORD(STACK[0x8F8]) ^ 0x900BBF4 ^ (((v88 - 900082347) ^ 0x416D0AFD ^ v69) + 1414305982 - ((2 * ((v88 - 900082347) ^ 0x416D0AFD ^ v69)) & 0xA899317C));
  v129 = LODWORD(STACK[0x8A8]) - ((2 * LODWORD(STACK[0x8A8]) + 294406724) & 0x6C7FE972) + 1057364443;
  LODWORD(v126) = (v69 ^ 0x8234645D) - (LODWORD(STACK[0x8E0]) ^ 0x489CF962 ^ v129);
  LODWORD(v126) = ((2 * v126) & 0x97F773FC) + (v126 ^ 0xCBFBB9FE);
  v130 = LODWORD(STACK[0x958]) - 1073086005 + v126;
  v131 = ((2 * (v130 ^ v129)) & 0xFACC7DCA ^ 0x684C6942) + (v130 ^ v129 ^ 0x4B59CA5C);
  LODWORD(v125) = STACK[0x948];
  v132 = (LODWORD(STACK[0x808]) ^ 0x4E993F4A) - LODWORD(STACK[0x948]);
  v133 = STACK[0x820];
  v134 = (v132 - 314214173) ^ (v109 - LODWORD(STACK[0x820]) - 1075891763) ^ (((v123 + 1414305982 - ((2 * v123) & 0xA899317C)) ^ LODWORD(STACK[0x8F8])) - (LODWORD(STACK[0x8A0]) ^ 0x31341ABD));
  LODWORD(v123) = v131 + v126 - ((2 * (v131 + v126) + 222039610) & 0xF3B49F6);
  LODWORD(v104) = v130 + (v69 ^ 0x8234645D) + 522699499 - ((2 * (v130 + (v69 ^ 0x8234645D))) & 0x3E4F85D6);
  LODWORD(v126) = v132 - ((2 * v132 + 831003096) & 0x298DFABE) - 1383396789;
  v135 = (LODWORD(STACK[0x8A0]) ^ 0x5A0D181D ^ v126) + LODWORD(STACK[0x820]);
  LODWORD(STACK[0x958]) = v135 + 1268813484;
  LODWORD(v116) = v125 + v135 + 1268813484;
  v136 = ((2 * ((v116 - 126349806) ^ v126)) & 0xF7CFFAF6 ^ 0x218DFAB6) + ((v116 - 126349806) ^ v126 ^ 0x6F210024);
  LODWORD(v127) = v127 + 2059132940;
  LODWORD(v126) = (LODWORD(STACK[0x714]) ^ 0x6269ED38) - 761584580 - ((2 * (LODWORD(STACK[0x714]) ^ 0x6269ED38) + 2) & 0xA5364878) + 1;
  LODWORD(v113) = (v126 ^ 0x5F3D0EF0 ^ v127) + 522699499 - ((2 * (v126 ^ 0x5F3D0EF0 ^ v127)) & 0x3E4F85D6);
  LODWORD(v123) = v123 + 1044098072;
  v137 = v127 ^ ((v123 ^ v126 ^ 0xD50680C7) - 2 * ((v123 ^ v126 ^ 0xD50680C7) & 0xDA62ADC ^ (v123 ^ v126) & 0x10) - 1918489908);
  LODWORD(STACK[0x950]) = v116 + 40453013;
  LODWORD(v116) = v133 + v116 + 40453013;
  v138 = v135 - 1426197110 + v136;
  LODWORD(v126) = ((((v104 ^ v127 ^ 0x9281E827) + 127771899 - ((2 * (v104 ^ v127 ^ 0x9281E827)) & 0xF3B49F6)) ^ v123) - (v126 ^ 0xD29B243C ^ (v116 + 909088944) ^ (v138 - 1724196049))) ^ (v131 + 43630875);
  v139 = v126 + 185674348 - ((2 * v126) & 0x162254D8);
  LODWORD(v126) = v116 + 2129387384;
  LODWORD(v116) = (v137 - v138 + 1724196049) ^ (v136 + 68682373) ^ ((v113 ^ v104) - (v116 + 2129387384) + 1220298440);
  LODWORD(v113) = v116 - 1634884295 - ((2 * v116) & 0x3D1B4A72);
  LODWORD(v109) = (v123 ^ 0x79DA4FB) + v131 + 43630875 - 1141798796 - ((2 * ((v123 ^ 0x79DA4FB) + v131 + 43630875)) & 0x77E310E8);
  LODWORD(v123) = 390953833 - LODWORD(STACK[0x70C]) - ((482204202 - 2 * LODWORD(STACK[0x70C])) & 0x11DD1CA8);
  LODWORD(v116) = v136 - 1655513676 + v138;
  LODWORD(v104) = v131 + 43630875 + (v104 ^ 0x1F27C2EB) + (v109 ^ 0x71FA7AFF);
  LODWORD(v111) = v104 - 2142380656 - ((2 * v104) & 0x9BBB20);
  LODWORD(v104) = ((2 * (v126 + v136 - 1151616067 + (v116 ^ 0xCA0BF28B))) & 0x73D9B1BE) + ((v126 + v136 - 1151616067 + (v116 ^ 0xCA0BF28B)) ^ 0x39ECD8DF);
  LODWORD(v126) = LODWORD(STACK[0x718]) - 1682938076;
  v140 = 971823327 - v104 + (v123 ^ v126 ^ 0x88A353C4 ^ v111);
  v141 = (v123 ^ v126 ^ 0x7914F4AB ^ v109) - (v116 ^ 0xCA0BF28B);
  LODWORD(STACK[0x7FC]) = v111;
  v142 = v116 ^ (v136 + 1567946616);
  LODWORD(v123) = (v109 ^ 0xCA0BF28B ^ ((v111 ^ v126 ^ 0x804DDD90) - 1141798796 - 2 * ((v111 ^ v126 ^ 0x804DDD90) & 0x3BF1887C ^ (v111 ^ v126) & 8))) - (v116 ^ 0x37E17639 ^ ((v123 ^ 0x8EE8E54 ^ (v104 - 971823327)) - ((2 * (v123 ^ 0x8EE8E54 ^ (v104 - 971823327))) & 0xFBD50964) - 34962254));
  LODWORD(STACK[0x7F0]) = v109;
  LODWORD(v116) = v109 ^ (v131 + 1542895118) ^ (v123 - 1141798796 - ((2 * v123) & 0x77E310E8));
  v143 = v141 ^ v142 ^ v140;
  LOBYTE(v131) = (*(STACK[0x938] + (((v124 >> 3) | (32 * (v124 & 7))) ^ 0x35)) + 103) ^ 0xEE;
  v144 = (v110 ^ 0xFE1F7FF77CB3AD50) + 0x1E08008040004E1 + ((2 * (v110 ^ 0x874C564F)) & 0x1F7FFF61ELL);
  *(&STACK[0xE3D0] + v144) = v66 ^ 0xB0;
  v145 = (v128 ^ 0x9149AD28) - ((2 * (v128 ^ 0x9149AD28)) & 0xAAE9BA) + 5600477;
  *(&STACK[0xCEF0] + v144) = 7 * v131 - ((14 * v131) & 0xE3) - 15;
  LODWORD(v144) = LODWORD(STACK[0x7D4]) + 4343809 - ((2 * (LODWORD(STACK[0x7D4]) + 4343809)) & 0xA0151924) - 804615022;
  v146 = (v103 ^ 0x7D1E79FF11912AB6) - 0x7D1E79FF96DD7CFFLL + ((2 * (v103 ^ 0x874C5649)) & 0x12DBAF9FELL);
  *(&STACK[0xE3D0] + v146) = HIBYTE(v145) - ((2 * HIBYTE(v145)) & 0xE3) - 15;
  *(&STACK[0xCEF0] + v146) = (BYTE3(v144) ^ 0xD0) - 2 * ((BYTE3(v144) ^ 0xD0) & 0x75 ^ BYTE3(v144) & 4) - 15;
  v147 = (v103 ^ 0xFFCB7BDE7CBB1FB6) + 0x3484210408B602 + ((2 * (v103 ^ 0x874C5648)) & 0x1F7EE93FCLL);
  *(&STACK[0xE3D0] + v147) = (BYTE2(v145) ^ 0x55) - 2 * ((BYTE2(v145) ^ 0x55) & 0xF3 ^ BYTE2(v145) & 2) - 15;
  *(&STACK[0xCEF0] + v147) = (BYTE2(v144) ^ 0xA) - ((2 * BYTE2(v144)) & 0xE3) - 15;
  LODWORD(v146) = (v113 ^ 0x9E8DA539) - ((2 * (v113 ^ 0x9E8DA539)) & 0x68F41DF8) + 880414460;
  LOBYTE(v123) = (BYTE1(v145) ^ 0x74) - 2 * ((BYTE1(v145) ^ 0x74) & 0xF3 ^ BYTE1(v145) & 2);
  v148 = (v110 ^ 0x675680FF3D5388BDLL) - 0x675680FFBA1FDEEFLL + ((2 * (v110 ^ 0x874C5652)) & 0x1743FBDC4);
  *(&STACK[0xE3D0] + v148) = v123 - 15;
  *(&STACK[0xCEF0] + v148) = (BYTE1(v144) ^ 0x8C) - ((2 * BYTE1(v144)) & 0xE3) - 15;
  v149 = v134 - ((2 * v134) & 0xAEFC6BD4) - 679594518;
  HIDWORD(v118) = LODWORD(STACK[0x7D8]) ^ 0x13;
  LODWORD(v118) = ~LODWORD(STACK[0x7D8]) << 24;
  v150 = (v110 ^ 0x2F5DFFFF58A389BCLL) - 0x2F5DFFFFDFEFDFEFLL + ((2 * (v110 ^ 0x874C5653)) & 0x1BFDFBFC6);
  *(&STACK[0xE3D0] + v150) = v128 ^ 0xD9;
  *(&STACK[0xCEF0] + v150) = (v118 >> 31) ^ 0x63;
  v151 = (v110 ^ 0xFEFF6FCFAA93818BLL) + 0x1009030D2202821 + ((2 * (v110 ^ 0x874C5654)) & 0x5BBFAFA8);
  LODWORD(v111) = STACK[0x7DC];
  *(&STACK[0xE3D0] + v151) = (~(LODWORD(STACK[0x7DC]) >> 23) | 0x1D) + HIBYTE(LODWORD(STACK[0x7DC])) - 14;
  *(&STACK[0xCEF0] + v151) = (HIBYTE(v149) ^ 0xD7) + (~(2 * (HIBYTE(v149) ^ 0xD7)) | 0x1D) - 14;
  v152 = (v110 ^ 0x3F7FBEB539B1492CLL) - 0x3F7FBEB5BEFD1F79 + ((2 * (v110 ^ 0x874C5655)) & 0x17DFA3EE2);
  *(&STACK[0xE3D0] + v152) = (~(v111 >> 15) | 0x1D) + BYTE2(v111) - 14;
  *(&STACK[0xCEF0] + v152) = (BYTE2(v149) ^ 0x7E) - ((2 * (BYTE2(v149) ^ 0x7E)) & 0xE3) - 15;
  HIDWORD(v118) = LODWORD(STACK[0x7E0]) ^ 0x54;
  LODWORD(v118) = ~LODWORD(STACK[0x7E0]) << 24;
  v153 = (v110 ^ 0x2D7EFD5E54F6A828) - 0x2D7EFD5ED3BAFE7ELL + ((2 * (v110 ^ 0x874C5656)) & 0x1A775FCECLL);
  LODWORD(v123) = (v139 ^ 0xB112A6C) - ((2 * (v139 ^ 0xB112A6C)) & 0xB904A478) - 595439044;
  *(&STACK[0xE3D0] + v153) = -13 * ((v118 >> 31) ^ 0xD6) - ((-26 * ((v118 >> 31) ^ 0xD6)) & 0xE3) - 15;
  *(&STACK[0xCEF0] + v153) = (BYTE1(v149) ^ 0x35) - 2 * ((BYTE1(v149) ^ 0x35) & 0xF3 ^ BYTE1(v149) & 2) - 15;
  v154 = (v110 ^ 0x3B7F77DBF831982ALL) - 0x3B7F77DB7F7DCE7DLL + ((2 * (v110 ^ 0x874C5657)) & 0xFEFB9CEALL);
  *(&STACK[0xE3D0] + v154) = 7 * ((LOBYTE(STACK[0x7EC]) + 103) ^ 0xEE) - ((14 * ((LOBYTE(STACK[0x7EC]) + 103) ^ 0xEE)) & 0xE3) - 15;
  *(&STACK[0xCEF0] + v154) = v134 ^ 0xF1;
  v155 = (v103 ^ 0xFEDE1F0D5097C8FCLL) + 0x121E0F228246143 + ((2 * (v103 ^ 0x874C5641)) & 0x1AFB73D7ALL);
  *(&STACK[0xE3D0] + v155) = (BYTE3(v146) ^ 0x34) - ((2 * (BYTE3(v146) ^ 0x34)) & 0xE3) - 15;
  *(&STACK[0xCEF0] + v155) = (BYTE3(v123) ^ 0xDC) - ((2 * (BYTE3(v123) ^ 0xDC)) & 0xE3) - 15;
  v156 = (v103 ^ 0x36AFF7F87DF1A17DLL) - 0x36AFF7F8FABDF73DLL + ((2 * (v103 ^ 0x874C5640)) & 0x1F57BEE7ALL);
  *(&STACK[0xE3D0] + v156) = (BYTE2(v146) ^ 0x7A) - ((2 * (BYTE2(v146) ^ 0x7A)) & 0xE3) - 15;
  *(&STACK[0xCEF0] + v156) = (BYTE2(v123) ^ 0x82) - ((2 * BYTE2(v123)) & 0xE3) - 15;
  v157 = (v110 ^ 0xDE37BED8F2A19533) + 0x21C841278A123C97 + ((2 * (v110 ^ 0x874C565A)) & 0xEBDB86D0);
  *(&STACK[0xE3D0] + v157) = (BYTE1(v146) ^ 0xE) - ((2 * BYTE1(v146)) & 0xE3) - 15;
  LODWORD(v144) = (v116 ^ 0xCA0BF28B) - ((2 * (v116 ^ 0xCA0BF28B)) & 0x1E143E12) + 252321545;
  *(&STACK[0xCEF0] + v157) = (BYTE1(v123) ^ 0x52) - 2 * ((BYTE1(v123) ^ 0x52) & 0x75 ^ BYTE1(v123) & 4) - 15;
  v158 = (v110 ^ LODWORD(STACK[0x800]) ^ 0x4CFFFFFF1FEEC3AFLL) - 0x4CFFFFFF1FEEC3AFLL + ((2 * (v110 ^ LODWORD(STACK[0x800]))) & 0x3FDD8756);
  *(&STACK[0xE3D0] + v158) = v113 ^ 0xC8;
  *(&STACK[0xCEF0] + v158) = v139 ^ 0x9D;
  v159 = (v110 ^ 0xFFFFE7E72A338883) + 0x181852802121 + ((2 * (v110 ^ 0x874C565C)) & 0x15AFFBDB8);
  *(&STACK[0xE3D0] + v159) = ((((v143 ^ 0xCA0BF28B) - ((2 * (v143 ^ 0xCA0BF28B)) & 0x1BEADEA6) + 234188627) >> 24) ^ 0xD) - ((2 * ((((v143 ^ 0xCA0BF28B) - ((2 * (v143 ^ 0xCA0BF28B)) & 0x1BEADEA6) + 234188627) >> 24) ^ 0xD)) & 0xE3) - 15;
  *(&STACK[0xCEF0] + v159) = (BYTE3(v144) ^ 0xF) - ((2 * (BYTE3(v144) ^ 0xF)) & 0xE3) - 15;
  v160 = (v110 ^ LODWORD(STACK[0x900]) ^ 0xABFEDEEE6FCBF5EELL) + 0x5401211190340A12 + ((2 * (v110 ^ LODWORD(STACK[0x900]))) & 0xDF97EBD8);
  *(&STACK[0xE3D0] + v160) = ((((v143 ^ 0xCA0BF28B) - ((2 * (v143 ^ 0xCA0BF28B)) & 0x1BEADEA6) + 234188627) >> 16) ^ 0xF5) - ((2 * ((((v143 ^ 0xCA0BF28B) - ((2 * (v143 ^ 0xCA0BF28B)) & 0x1BEADEA6) + 234188627) >> 16) ^ 0xF5)) & 0xE3) - 15;
  *(&STACK[0xCEF0] + v160) = (BYTE2(v144) ^ 0xA) - ((2 * BYTE2(v144)) & 0xE3) - 15;
  v161 = (v110 ^ 0xFF6C70FEB0D0AB83) + 0x938F01C8630223 + ((2 * (v110 ^ 0x874C565E)) & 0x6F39FBB8);
  *(&STACK[0xE3D0] + v161) = (*(STACK[0x8C8] + (((BYTE1(v143) ^ 0xF2) + 110) ^ 0x64)) + 78) ^ 0x18;
  *(&STACK[0xCEF0] + v161) = (BYTE1(v144) ^ 0x1F) - ((2 * (BYTE1(v144) ^ 0x1F)) & 0xE3) - 15;
  LODWORD(STACK[0x808]) = LODWORD(STACK[0x950]) + LODWORD(STACK[0x958]);
  v162 = (v110 ^ LODWORD(STACK[0x8B0]) ^ 0xF7D97CD7D7FBBDBFLL) + 0x826832828044241 + ((2 * (v110 ^ LODWORD(STACK[0x8B0]))) & 0x1AFF77B7ELL);
  *(&STACK[0xE3D0] + v162) = v143 ^ 0x7A;
  v163 = STACK[0x940];
  *(&STACK[0xCEF0] + v162) = v116 ^ 0x7A;
  LODWORD(v161) = LODWORD(STACK[0x978]) ^ (43 * ((((LODWORD(STACK[0x4C4]) ^ 0x1BCFD3BA) + 466604986 - ((2 * (LODWORD(STACK[0x4C4]) ^ 0x1BCFD3BA) + 2) & 0x379FA774) + 1) ^ 0x1BCFD3BAu) < 0xF));
  LODWORD(STACK[0x7EC]) = LODWORD(STACK[0x4E4]) - 169085056;
  LODWORD(STACK[0x800]) = v142 ^ 0xBA786B21;
  LODWORD(STACK[0x810]) = v104 - 545521672;
  return (*(v163 + 8 * v161))(101, 110, 188);
}

uint64_t sub_2447DEDC4@<X0>(char a1@<W0>, char a2@<W2>, int a3@<W3>, unint64_t a4@<X5>, uint64_t a5@<X6>, int a6@<W7>, unint64_t a7@<X8>)
{
  LODWORD(STACK[0x908]) = 0;
  LODWORD(STACK[0x8B8]) = 0;
  LODWORD(STACK[0x868]) = 0;
  LODWORD(STACK[0x890]) = 0;
  LODWORD(STACK[0x870]) = 0;
  LODWORD(STACK[0x878]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  v12 = *(v9 + (((a7 ^ v7) - 92) ^ v8));
  HIDWORD(v13) = v12 ^ 1;
  LODWORD(v13) = ~v12 << 24;
  v14 = (a7 & ((a6 + 10188) ^ 0xCD0A)) + ((v13 >> 29) << 16);
  v15 = bswap32(STACK[0x6B0] ^ 0x5484);
  v16 = *(v10 + (((WORD1(STACK[0x6B0]) ^ 0x87) + 110) ^ a4));
  HIDWORD(v13) = v16 ^ v11;
  LODWORD(v13) = ~v16 << 24;
  v17 = BYTE3(STACK[0x6B0]) ^ 0xC0;
  STACK[0x910] = HIDWORD(STACK[0x6B0]) ^ 0xC932211509B57591;
  v18 = v14 + BYTE2(a7);
  v19 = a7 ^ 0xC7FFFFFF;
  STACK[0x8E8] = HIDWORD(a7) ^ 0x5EE7390FBA600C38;
  v20 = (HIWORD(v15) << 16) | (((v13 >> 31) ^ 0x92) << 8);
  v21 = v20 - 1137472999 - ((2 * v20) & 0x78671400);
  v22 = (v21 ^ 0xBC338A19 | v17) ^ a3;
  LODWORD(STACK[0x4C0]) = v22 ^ 0x882BD3;
  HIDWORD(v13) = v18 ^ 0x5F29;
  LODWORD(v13) = v19;
  v23 = (v13 >> 24) + 2090155085 - ((2 * (v13 >> 24)) & 0xF92A789A);
  LOBYTE(STACK[0x4510]) = HIBYTE(v15) - ((v15 >> 23) & 0xBE) - 33;
  LOBYTE(STACK[0xE5E0]) = (HIBYTE(v23) ^ 0x7C) - ((2 * (HIBYTE(v23) ^ 0x7C)) & 0xE3) - 15;
  LOBYTE(STACK[0x4511]) = BYTE2(v15) - ((v15 >> 15) & 0xBE) - 33;
  LOBYTE(STACK[0xE5E1]) = (BYTE2(v23) ^ 0x95) + (~(2 * (BYTE2(v23) ^ 0x95)) | 0x1D) - 14;
  LOBYTE(STACK[0x4512]) = (BYTE1(v21) ^ 0x8A) + (~(2 * (BYTE1(v21) ^ 0x8A)) | 0x41) - 32;
  LOBYTE(STACK[0xE5E2]) = (BYTE1(v23) ^ 0x3C) - 2 * ((BYTE1(v23) ^ 0x3C) & 0xF3 ^ BYTE1(v23) & 2) - 15;
  LOBYTE(STACK[0x4513]) = v22 ^ a1;
  LODWORD(STACK[0x4BC]) = v23;
  LOBYTE(STACK[0xE5E3]) = (HIBYTE(v19) + 77 - ((2 * HIBYTE(v19)) & 0x9A)) ^ a2;
  v24 = *(a5 + 8 * a6);
  LODWORD(STACK[0x590]) = 1159877470;
  LODWORD(STACK[0x960]) = 1;
  LODWORD(STACK[0x948]) = 1;
  LODWORD(STACK[0x950]) = 1;
  LODWORD(STACK[0x900]) = 1;
  LODWORD(STACK[0x8A8]) = 1;
  LODWORD(STACK[0x84C]) = 1;
  LODWORD(STACK[0x850]) = 1;
  LODWORD(STACK[0x8B0]) = 1;
  LODWORD(STACK[0x858]) = 1;
  LODWORD(STACK[0x860]) = 1;
  LODWORD(STACK[0x8E0]) = 1;
  LODWORD(STACK[0x8A0]) = 1;
  LODWORD(STACK[0x898]) = 1;
  LODWORD(STACK[0x4C4]) = a3;
  LODWORD(STACK[0x4B8]) = a3;
  return v24();
}

uint64_t sub_2447DF084@<X0>(unint64_t a1@<X5>, uint64_t a2@<X6>, unint64_t a3@<X7>, char a4@<W8>)
{
  LODWORD(STACK[0x908]) = 0;
  LODWORD(STACK[0x8B8]) = 0;
  LODWORD(STACK[0x890]) = 0;
  LODWORD(STACK[0x870]) = 0;
  LODWORD(STACK[0x878]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  v13 = STACK[0x6B0];
  v14 = STACK[0x6B0] >> 8;
  v15 = STACK[0x9A8];
  v16 = STACK[0x9A8];
  v17 = *(STACK[0x9A8] + 25);
  v18 = ((2 * v7) & 0x1BDD3B5E2) + (v7 ^ 0x6B7FE55FDEE9DAF1) + ((v6 + 10188) ^ 0x94801AA021161705);
  *(&STACK[0x8AE0] + v18) = STACK[0x6B0] ^ 0x75;
  *(v9 + v18) = v17 ^ BYTE1(v5) ^ 0x5A;
  v19 = v15[26];
  v20 = ((v10 - 2068364256) ^ 0x7FFD5D5DFD77EF5DLL) - 0x7FFD5D5DFD77EF5DLL + ((2 * (v10 - 2068364256)) & 0x1FAEFDEBALL);
  *(&STACK[0x8AE0] + v20) = (v14 ^ 0x54) - ((2 * (v14 ^ 0x54)) & 0xE3) - 15;
  *(v9 + v20) = v19 ^ BYTE2(v5) ^ 0xD4;
  v21 = v15[27];
  v22 = ((v10 - 2068364255) ^ 0x7BEDF76DFDFA7F8FLL) - 0x7BEDF76DFDFA7F8FLL + ((2 * (v10 - 2068364255)) & 0x1FBF4FF1ELL);
  *(&STACK[0x8AE0] + v22) = (BYTE2(v13) ^ 0x87) - ((2 * (BYTE2(v13) ^ 0x87)) & 0xE3) - 15;
  *(v9 + v22) = v21 ^ HIBYTE(v5) ^ 0xE3;
  v23 = v15[28];
  v24 = ((v10 - 2068364254) ^ 0x69FB7B9FE7EBF27FLL) - 0x69FB7B9FE7EBF27FLL + ((2 * (v10 - 2068364254)) & 0x1CFD7E4FELL);
  *(&STACK[0x8AE0] + v24) = (BYTE3(v13) ^ 0xC0) - 2 * ((BYTE3(v13) ^ 0xC0) & 0x75 ^ BYTE3(v13) & 4) - 15;
  *(v9 + v24) = STACK[0x698] ^ 0x8B ^ v23;
  v25 = 7 * ((*(STACK[0x938] + (((v15[29] >> 3) | (32 * v15[29])) ^ a3)) + 103) ^ 0xEE);
  v26 = ((v10 - 2068364253) ^ 0x5EBA0FBEFDFF5BE7) - 0x5EBA0FBEFDFF5BE7 + ((2 * (v10 - 2068364253)) & 0x1FBFEB7CELL);
  *(&STACK[0x8AE0] + v26) = (BYTE4(v13) ^ 0x15) - ((2 * (BYTE4(v13) ^ 0x15)) & 0xE3) - 15;
  v27 = *(STACK[0x918] + (((a4 ^ 0x69) + 110) ^ a1));
  HIDWORD(v28) = v27 ^ v12;
  LODWORD(v28) = ~v27 << 24;
  *(v9 + v26) = v25 ^ (v28 >> 31) ^ 0x63;
  LOBYTE(v27) = *(v16 + 30);
  v29 = ((v10 - 2068364252) ^ 0xFD7DFBEF8EFF9BCFLL) + 0x282041071006431 + ((2 * (v10 - 2068364252)) & 0x11DFF379ELL);
  *(&STACK[0x8AE0] + v29) = (BYTE5(v13) ^ v11) - 2 * ((BYTE5(v13) ^ v11) & 0xF7 ^ BYTE5(v13) & 6) - 15;
  *(v9 + v29) = v8 ^ v27 ^ 0xC1;
  LODWORD(v26) = *(v16 + 31);
  STACK[0x910] = HIBYTE(v13) ^ 0xC9322115C087544DLL;
  v30 = ((v10 - 2068364251) ^ 0x7DFBEB39FFB176BDLL) - 0x7DFBEB39FFB176BDLL + ((2 * (v10 - 2068364251)) & 0x1FF62ED7ALL);
  *(&STACK[0x8AE0] + v30) = (BYTE6(v13) ^ 0x32) + (~(2 * (BYTE6(v13) ^ 0x32)) | 0x1D) - 14;
  v31 = v4 ^ v26 ^ 0xFFFFFFF3;
  LODWORD(STACK[0x654]) = v31;
  *(v9 + v30) = v31;
  LODWORD(STACK[0x6C0]) = v10 + 8;
  v32 = *(a2 + 8 * v6);
  LODWORD(STACK[0x960]) = 1;
  STACK[0x8E8] = 0x5EE7390FD4A21F47;
  LODWORD(STACK[0x948]) = 1;
  LODWORD(STACK[0x950]) = 1;
  LODWORD(STACK[0x900]) = 1;
  LODWORD(STACK[0x8A8]) = 1;
  LODWORD(STACK[0x84C]) = 1;
  LODWORD(STACK[0x850]) = 1;
  LODWORD(STACK[0x8B0]) = 1;
  LODWORD(STACK[0x858]) = 1;
  LODWORD(STACK[0x860]) = 1;
  LODWORD(STACK[0x868]) = 1;
  LODWORD(STACK[0x8E0]) = 1;
  LODWORD(STACK[0x8A0]) = 1;
  LODWORD(STACK[0x898]) = 1;
  return v32();
}

uint64_t sub_2447DF664@<X0>(int a1@<W3>, uint64_t a2@<X6>, char a3@<W8>)
{
  LODWORD(STACK[0x4C4]) = a1;
  v6 = STACK[0x930];
  v7 = *(v5 + ((((LODWORD(STACK[0x930]) ^ 0x518u) * v3) ^ 0x449) & ((STACK[0x6B0] ^ 0x84) + 164) ^ v4));
  HIDWORD(v8) = v7 ^ 1;
  LODWORD(v8) = ~v7 << 24;
  v9 = STACK[0x390];
  *(&STACK[0xE3D0] + v9) = (v8 >> 29) - ((2 * (v8 >> 29)) & 0xE3) - 15;
  *(&STACK[0xCEF0] + v9) = a3 ^ 0x49;
  return (*(a2 + 8 * v6))();
}

uint64_t sub_2447DF70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v12 + v7) = veorq_s8(veorq_s8(*(v12 + v7), *(a3 + v7)), v13);
  *(a1 + v7) = veorq_s8(veorq_s8(*(a1 + v7), *(a4 + v7)), v13);
  return (*(a7 + 8 * ((((((v8 + 850) | v10) ^ v11) + v7 != 480) * v9) ^ v8)))();
}

uint64_t sub_2447DF760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X4>, uint64_t a5@<X6>, unint64_t a6@<X8>, __n128 a7@<Q1>)
{
  LODWORD(STACK[0x950]) = 0;
  LODWORD(STACK[0x900]) = 0;
  LODWORD(STACK[0x8A8]) = 0;
  LODWORD(STACK[0x84C]) = 0;
  LODWORD(STACK[0x850]) = 0;
  LODWORD(STACK[0x8B0]) = 0;
  LODWORD(STACK[0x858]) = 0;
  LODWORD(STACK[0x860]) = 0;
  LODWORD(STACK[0x908]) = 0;
  LODWORD(STACK[0x8B8]) = 0;
  LODWORD(STACK[0x868]) = 0;
  LODWORD(STACK[0x890]) = 0;
  LODWORD(STACK[0x870]) = 0;
  LODWORD(STACK[0x878]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  LODWORD(STACK[0x654]) = a7.n128_u8[15];
  LODWORD(STACK[0x49C]) = BYTE3(a4) ^ 0xC95D616D;
  STACK[0x910] = HIDWORD(a4) ^ 0xC932211509B57591;
  v8 = ((bswap32((((v7 + 1200679117) & 0xB86F3EFE) + 21834) ^ (a4 >> 8)) >> 8) & 0xFFFF00 | BYTE3(a4)) ^ 0xC0;
  LODWORD(STACK[0x4C0]) = v8 + 457701481 - 2 * (v8 & 0x47F87F ^ ((a4 >> 8) >> 16) & 0x16);
  v9 = ((bswap32((a6 >> 8) ^ 0x295F) >> 8) & 0xFFFF00 | BYTE3(a6)) ^ 0xC7;
  LODWORD(STACK[0x4BC]) = v9 + 2090155085 + (~(2 * v9) | 0xFED58765) + 1;
  v10 = *(a5 + 8 * v7);
  LODWORD(STACK[0x6C0]) = 2068364738;
  LODWORD(STACK[0x960]) = 1;
  STACK[0x8E8] = 0x5EE7390FD4A21F47;
  LODWORD(STACK[0x3EC]) = STACK[0x38C];
  LODWORD(STACK[0x948]) = 1;
  LODWORD(STACK[0x8E0]) = 1;
  LODWORD(STACK[0x8A0]) = 1;
  LODWORD(STACK[0x898]) = 1;
  LODWORD(STACK[0x4B8]) = 466604986;
  return v10(a1, a2, a3, STACK[0x688], (v7 + 1200679117) & 0xB86F3EFE);
}

uint64_t sub_2447DFA2C@<X0>(uint64_t a1@<X0>, char a2@<W2>, char a3@<W4>, int a4@<W6>, char a5@<W8>)
{
  LOBYTE(STACK[0x44F0]) = v6;
  LOBYTE(STACK[0x44F1]) = v9 + (~(2 * v9) | 0x41) - 32;
  LOBYTE(STACK[0x44F2]) = (BYTE2(v5) ^ 0xAC) - ((2 * (BYTE2(v5) ^ 0xAC)) & 0xBF) + v7 + 14 - 83;
  LOBYTE(STACK[0x44F3]) = (a5 ^ 0xA) - ((2 * (a5 ^ 0xA)) & 0xBF) - 33;
  LOBYTE(STACK[0x44F4]) = (a3 ^ 0xA6) - ((2 * (a3 ^ 0xA6)) & 0xBF) - 33;
  LOBYTE(STACK[0x44F5]) = (a2 ^ 0xC8) + (~(2 * (a2 ^ 0xC8)) | 0x41) - 32;
  LOBYTE(STACK[0x44F6]) = (v8 ^ 0x99) - ((2 * (v8 ^ 0x99)) & 0xBF) - 33;
  LOBYTE(STACK[0x44F7]) = (HIBYTE(v5) ^ 0x71) - ((2 * (HIBYTE(v5) ^ 0x71)) & 0xBF) - 33;
  v10 = *(a1 + 8 * v7);
  LODWORD(STACK[0x8B0]) = STACK[0x960];
  LODWORD(STACK[0x898]) = STACK[0x630];
  LODWORD(STACK[0x890]) = STACK[0x640];
  LODWORD(STACK[0x8A0]) = a4;
  v11 = LODWORD(STACK[0x63C]);
  LODWORD(STACK[0x8A8]) = STACK[0x634];
  return v10(v11);
}

uint64_t sub_2447DFB58(uint64_t a1)
{
  v3 = STACK[0x8F8];
  *(v3 - 0x1DC6E026F0860055) = v1 ^ 0xA21E54EB79975F4CLL;
  STACK[0x8F8] = v3 + 8;
  v4 = LODWORD(STACK[0x908]) + 1133164802;
  v5 = LODWORD(STACK[0x908]) + 1;
  v6 = STACK[0x960];
  v7 = (LODWORD(STACK[0x960]) < 0x7CEBCA0) ^ (v4 < 0xBFB017EC);
  v8 = v4 < LODWORD(STACK[0x960]) - 1209977830 + ((v2 - 82) ^ 0x6722u);
  if (v7)
  {
    v8 = v6 < 0x7CEBCA0;
  }

  v9 = *(a1 + 8 * ((v8 * (((v2 - 82) | 0x1841) ^ 0x5841)) ^ v2));
  LODWORD(STACK[0x8B0]) = v6;
  LODWORD(STACK[0x908]) = v5;
  LODWORD(STACK[0x898]) = STACK[0x630];
  LODWORD(STACK[0x890]) = STACK[0x640];
  LODWORD(STACK[0x8A0]) = STACK[0x62C];
  v10 = LODWORD(STACK[0x63C]);
  LODWORD(STACK[0x8A8]) = STACK[0x634];
  return v9(v10);
}

uint64_t sub_2447DFC64@<X0>(int a1@<W1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, unint64_t a38)
{
  v39 = *(STACK[0x940] + 8 * (((v38 & ~((a2 - 19569) ^ (LODWORD(STACK[0x8D8]) == 1310430001))) * ((a2 ^ 0x7F63) - 9995)) ^ a2));
  LODWORD(STACK[0x8D8]) = 1310430002;
  STACK[0x8F8] = a38;
  LODWORD(STACK[0x8B0]) = STACK[0x63C];
  LODWORD(STACK[0x908]) = 2082823915;
  LODWORD(STACK[0x898]) = a1;
  LODWORD(STACK[0x890]) = STACK[0x640];
  LODWORD(STACK[0x8A0]) = STACK[0x62C];
  LODWORD(STACK[0x8A8]) = STACK[0x634];
  return v39();
}

uint64_t sub_2447DFD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, unint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, unint64_t a44)
{
  v45 = STACK[0x4E8];
  v51 = STACK[0x4E8] + 8 * (((v44 + 1185080911) & 0xB95D3FDA ^ 0xF831716A) + LODWORD(STACK[0x63C]));
  *(v51 - 0x1DC6E026F0860055) = 0xD3879C4D733BB295;
  v46 = *(STACK[0x940] + 8 * v44);
  v47 = STACK[0x478];
  STACK[0x368] = STACK[0x478];
  STACK[0x2E0] = a33;
  STACK[0x2C8] = a44;
  v50 = STACK[0x2F8];
  STACK[0x2D8] = v45;
  STACK[0x360] = v47;
  STACK[0x870] = STACK[0x4D8];
  STACK[0x820] = STACK[0x4D0];
  STACK[0x910] = STACK[0x5A0];
  STACK[0x868] = STACK[0x598];
  LODWORD(STACK[0x374]) = STACK[0x644];
  LODWORD(STACK[0x900]) = STACK[0x608];
  LODWORD(STACK[0x880]) = STACK[0x5F8];
  LODWORD(STACK[0x838]) = STACK[0x4CC];
  LODWORD(STACK[0x930]) = STACK[0x5AC];
  LODWORD(STACK[0x878]) = STACK[0x5A8];
  v48 = STACK[0x630];
  LODWORD(STACK[0x2D4]) = a2;
  LODWORD(STACK[0x828]) = STACK[0x5E4];
  LODWORD(STACK[0x810]) = STACK[0x808];
  LODWORD(STACK[0x830]) = STACK[0x554];
  LODWORD(STACK[0x850]) = STACK[0x550];
  LODWORD(STACK[0x948]) = STACK[0x594];
  LODWORD(STACK[0x2E8]) = STACK[0x638];
  LODWORD(STACK[0x2EC]) = STACK[0x60C];
  HIDWORD(a31) = v48;
  return v46(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, v50, a31, v51, a33, a34);
}

uint64_t sub_2447DFE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = STACK[0x7FC];
  v11 = ((2 * (v10 ^ LODWORD(STACK[0x7F0]))) & 0xF7FB3FDE ^ 0x77782BC8) + (v10 ^ LODWORD(STACK[0x7F0]) ^ 0xC041CA0B);
  v12 = STACK[0x7EC];
  v13 = 2 * (LODWORD(STACK[0x7EC]) - v11);
  v14 = STACK[0x4F4];
  v15 = LODWORD(STACK[0x7F0]) ^ 0xBBF18874;
  v16 = v15 - ((2 * v15 + 190555594) & 0x4577E86E) - 395720932;
  v17 = ((2 * v16) & 0x61DFF7B6 ^ 0x60C6C706) + (v16 ^ 0xF9C9C7C);
  v18 = (LODWORD(STACK[0x7EC]) - v11 + 342242097) ^ v16;
  LODWORD(STACK[0x8D8]) = v18 ^ 0x3532A9A1 ^ (LODWORD(STACK[0x4F4]) - LODWORD(STACK[0x7EC]) - v17 - 251813618);
  v19 = ((v12 - v11 - ((v13 + 684484194) & 0x3D088290) + ((v7 + 988916277) & 0xEEFF320F) - 1293270417) ^ (v11 - ((2 * v11 + 552583928) & 0x3D088290) - 285465916)) - (v18 ^ 0x3F7367A7);
  LODWORD(STACK[0x8F8]) = (v19 + 242374404 + (~(2 * v19) | 0xE31B51F9)) ^ 0x1246FDE1;
  LODWORD(STACK[0x654]) = 50398866 - (v12 - v11) - ((102883512 - v13) & 0x7E03F86) + 2445;
  LODWORD(STACK[0x5C8]) = v17 - 866304429;
  v20 = v8 ^ 0x1225AB6F;
  v21 = (v8 ^ 0x1225AB6F) + 1169019621;
  LODWORD(STACK[0x66C]) = ((-36366684 - (v21 ^ 0x9DC89390)) ^ 0x53FE8DFF) - 1081544 + ((2 * (-36366684 - (v21 ^ 0x9DC89390))) & 0xA7FD1BFE);
  v22 = STACK[0x810];
  v23 = ((2 * (v8 ^ (v22 - 426301655))) & 0xF6DF31B2 ^ 0x244B1092) + (v8 ^ (v22 - 426301655) ^ 0x694A33B6);
  LODWORD(STACK[0x658]) = -614259793 - v23 - ((884771914 - 2 * v23) & 0x8209BB14);
  LODWORD(STACK[0x628]) = 1338622205 - (v14 - v12);
  LODWORD(STACK[0x588]) = v11 + 2136105877;
  v24 = LODWORD(STACK[0x800]) ^ 0x707399AA;
  v25 = ((2 * (v24 - 1266097849)) & 0xDFECFEE4) + ((v24 - 1266097849) ^ 0xEFF67F72);
  v26 = STACK[0x808];
  v27 = LODWORD(STACK[0x808]) - v25;
  LODWORD(STACK[0x624]) = v27 - 1710981491;
  v28 = v25 - v23;
  LODWORD(STACK[0x650]) = v28 + 779295794;
  LODWORD(STACK[0x5D8]) = -804956695 - (v10 ^ 0x804DDD90) - ((1017118240 - 2 * (v10 ^ 0x804DDD90)) & 0x636AADB2);
  LODWORD(STACK[0x584]) = -1270657371 - v26;
  LODWORD(STACK[0x5D0]) = ((976184343 - v24) ^ 0x76FF7775) - 1616913184 + ((2 * (976184343 - v24)) & 0xEDFEEEEA);
  LODWORD(STACK[0x5E8]) = -892585352 - v15 - ((-1333328302 - 2 * v15) & 0xE5116E9E);
  LODWORD(STACK[0x5BC]) = v12 - 630110290;
  LODWORD(STACK[0x5C0]) = ((v20 + 2066822006) ^ 0x69E5C777) - 6553970 + ((2 * (v20 + 2066822006)) & 0xD3CB8EEE);
  LODWORD(STACK[0x5C4]) = v22 + 271388166;
  LODWORD(STACK[0x58C]) = v14 + 1047412899;
  v29 = v28 - ((2 * v28 + 51855342) & 0x84E068E0) - 1006906265;
  v30 = (v29 ^ (v23 - ((2 * v23 - 1576283868) & 0x84E068E0) + 326507778)) - (v29 ^ v21 ^ 0xDFB8A7E0);
  v31 = v30 + 117845935 - ((2 * v30) & 0xE0C5F5E);
  v32 = ((v27 + (v21 ^ 0x62376C6F) - 628782728) ^ 0x7F757FBF) - 2138406847 + ((2 * (v27 + (v21 ^ 0x62376C6F) - 628782728)) & 0xFEEAFF7E);
  LODWORD(STACK[0x978]) = (v29 ^ 0x42703470) + v32 + 1198093517 - ((2 * ((v29 ^ 0x42703470) + v32)) & 0x8ED2E99A);
  v33 = ((v9 - LODWORD(STACK[0x590])) & 0x3F) + LODWORD(STACK[0x590]);
  LODWORD(STACK[0x390]) = v33;
  v33 -= 1863515500;
  LODWORD(STACK[0x468]) = v33;
  LODWORD(STACK[0x8B8]) = v31;
  LODWORD(STACK[0x8E8]) = v31 ^ v29;
  return (*(a7 + 8 * ((v7 + 703646967) ^ (((v33 - v7) | (v7 - v33)) >= 0))))();
}

uint64_t sub_2447E0430()
{
  LODWORD(STACK[0x4E4]) = 0;
  v1 = v0 + 703646552;
  v2 = STACK[0x590];
  LODWORD(STACK[0x464]) = LODWORD(STACK[0x590]) + 1446693104;
  LODWORD(STACK[0x38C]) = v2 - 1781516518;
  LODWORD(STACK[0x35C]) = v2 + 2127755553;
  LODWORD(STACK[0x358]) = v2 + 239592979;
  v3 = 8 * v2 - 2 * ((8 * v2 + 1458398768) & 0x43845038 ^ (8 * v2) & 8) - 1703823772;
  LODWORD(STACK[0x354]) = v3;
  LODWORD(STACK[0x350]) = (HIBYTE(v3) ^ 0xFFFFFFC3) - ((2 * (HIBYTE(v3) ^ 0xFFFFFFC3)) & 0xFFFFFFF7) - 5;
  return (*(STACK[0x940] + 8 * v1))();
}

uint64_t sub_2447E0544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x8B0]) = v8;
  if (LODWORD(STACK[0x464]) < 0x9B5D1C2A != (a8 + 1207100189) < 0x9B5D1C2A)
  {
    v9 = (a8 + 1207100189) < 0x9B5D1C2A;
  }

  else
  {
    v9 = (a8 + 1207100189) > LODWORD(STACK[0x464]);
  }

  v10 = *(STACK[0x940] + 8 * ((v9 * (29 * (a6 ^ 0x4F54) - 8343)) ^ a6));
  LODWORD(STACK[0x4F4]) = a8;
  return v10(a1, a2, 228);
}

uint64_t sub_2447E05EC@<X0>(uint64_t a1@<X8>)
{
  v6 = a1 - 1471489278;
  v7 = ((a1 - 1471489277) ^ 0x7DEDECFFD5BDFFCFLL) - 0x7DEDECFFD5BDFFCFLL + ((2 * (a1 - 1471489277)) & 0xAB7BFF9ELL);
  v8 = STACK[0x8B0];
  *(v5 + v7) = (3 * (v1 ^ 0x92) + LODWORD(STACK[0x8B0]) + 69) ^ 0xDE;
  v9 = STACK[0x8E8];
  *(v3 + v7) = LODWORD(STACK[0x8E8]) ^ 0x2E;
  *(v5 + v6) = (v4 + 93) ^ 0xDE;
  v10 = STACK[0x978];
  *(v3 + v6) = LODWORD(STACK[0x978]) ^ 0x3C;
  v11 = ((a1 - 1471489276) ^ 0xFFFFE3DF9BDFDF57) + 0x1C20642020A9 + ((2 * (a1 - 1471489276)) & 0x37BFBEAC);
  v12 = STACK[0x8F8];
  *(v5 + v11) = LODWORD(STACK[0x8F8]) ^ 0x3C;
  v13 = STACK[0x8B8];
  *(v3 + v11) = LODWORD(STACK[0x8B8]) ^ 0x5E;
  v14 = STACK[0x8D8];
  v15 = ((a1 - 1471489278) & 0xFFFFFFFC ^ 0x7EDF7FBE7FBDF17CLL) + ((2 * (a1 - 1471489278)) & 0xFF7BE2F8) - 0x7EDF7FBE7FBDF179;
  *(v5 + v15) = LODWORD(STACK[0x8D8]) ^ 0xD8;
  *(v3 + v15) = v2 ^ 0x8B;
  LODWORD(v15) = ((2 * v12) & 0x2EC7ABFA ^ 0x284101C0) + (v12 ^ 0xB577F1F);
  LODWORD(STACK[0x8F8]) = v14 ^ 0x38540C82 ^ ((v14 ^ 0xA41CE06) - 392418813 + v15 + 525565950 - ((2 * ((v14 ^ 0xA41CE06) - 392418813 + v15)) & 0x3EA6FFFC));
  LODWORD(v15) = ((2 * (v15 + v8 - 1552562639)) & 0xE5E7FDBE ^ 0x61A3402E) + ((v15 + v8 - 1552562639) ^ 0xCF265FE8);
  LODWORD(STACK[0x8B0]) = v15 - 768449293;
  LODWORD(STACK[0x8D8]) = ((v14 ^ 0x3B33D99E) - 1928593119 + v15) ^ 0xA41CE06;
  LODWORD(v7) = (((v13 ^ 0x7062FAF) + (v9 ^ 0x45761BDF)) ^ 0x79FE3FEA) - 2046705642 + ((2 * ((v13 ^ 0x7062FAF) + (v9 ^ 0x45761BDF))) & 0xF3FC7FD4);
  LODWORD(STACK[0x978]) = v7 + (v10 ^ 0x476974CD) - ((2 * (v7 + (v10 ^ 0x476974CD)) + 1085488228) & 0x8ED2E99A) - 406646017;
  LODWORD(STACK[0x8B8]) = v2 ^ 0x1F4EBB4D ^ ((v2 ^ 0x293A837A) + (v13 ^ 0x7062FAF));
  LODWORD(STACK[0x8E8]) = (v7 ^ 0xBDD5A137) + 1165368287 - ((2 * (v7 ^ 0xBDD5A137)) & 0x8AEC37BE);
  return (*(STACK[0x940] + 8 * ((13 * ((a1 - 1471489274) < 0x40)) ^ v1)))();
}

uint64_t sub_2447E0944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = ((((v8 - 1559514818) & 0x5CF46DD9) - 2021113413) ^ ((v8 + 2858) | 0x24A8)) + a8;
  v10 = v9 < 0xDAF28A54;
  v11 = LODWORD(STACK[0x38C]) < v9;
  if (LODWORD(STACK[0x38C]) < 0xDAF28A54 != v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  return (*(STACK[0x940] + 8 * ((398 * v12) ^ v8)))(a1, a2, a3, 47, 100, STACK[0x8C8]);
}

uint64_t sub_2447E09DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = LODWORD(STACK[0x35C]) < 0xC3F54C5B;
  if (v9 == a8 + 1888162574 < ((v8 - 1978394162) & 0x75EBEFFF) - 1007346036)
  {
    v9 = LODWORD(STACK[0x35C]) > a8 + 1888162574;
  }

  return (*(STACK[0x940] + 8 * ((2694 * v9) ^ v8)))(a1, a2, a3, a4, a5, a6, a7, LODWORD(STACK[0x4E4]));
}

uint64_t sub_2447E0B30@<X0>(char a1@<W3>, int a2@<W7>, unsigned int a3@<W8>)
{
  *(v8 + a3) = *(v7 + a2 + a3) ^ a1;
  if (v3 < v9 != v4 < v6)
  {
    v10 = v3 < v9;
  }

  else
  {
    v10 = v3 > v4;
  }

  return (*(STACK[0x940] + 8 * (((2 * v10) | (16 * v10)) ^ v5)))();
}

uint64_t sub_2447E0C18(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, uint64_t a6)
{
  v17 = v6 < v16;
  *(v14 + (v10 + v12)) = v9 & v11 ^ (*(a6 + (((*(v15 + (v8 + v10)) ^ 0xF1) + 110) ^ a5)) + 78) ^ 0x7F;
  if (v17 == v10 + v13 < v16)
  {
    v17 = v6 > v10 + v13;
  }

  return (*(STACK[0x940] + 8 * ((v17 * a4) | (v7 - 3593))))();
}

uint64_t sub_2447E0D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v10 = STACK[0x354];
  LOBYTE(STACK[0xA01F]) ^= LODWORD(STACK[0x354]) ^ 0x34;
  LOBYTE(STACK[0xA01E]) ^= BYTE1(v10) ^ v8;
  LOBYTE(STACK[0xA01D]) ^= v6 ^ BYTE2(v10) ^ 0x7F;
  LOBYTE(STACK[0xA01C]) = (*(a6 + (((LOBYTE(STACK[0xA01C]) ^ LODWORD(STACK[0x350])) + 110) ^ a5)) + 78) ^ v9;
  return (*(STACK[0x940] + 8 * v7))();
}

uint64_t sub_2447E0DF8()
{
  v4 = STACK[0x8E0];
  v5 = 2 * (v0 - 1442320839);
  v6 = (LODWORD(STACK[0x8E0]) ^ 0xFFFFFFFFAA07FCC9) + v0;
  v7 = ((v0 - 1442320839) ^ 0x9EEEDFFDCE7CFF3CLL) + 0x61112002318300C4 + (v5 & 0x9CF9FE78);
  v8 = *(v2 + v7);
  HIDWORD(v9) = ~v8;
  LODWORD(v9) = (v8 ^ 0xFFFFFFFB) << 24;
  v10 = *(STACK[0x8D0] + ((v9 >> 25) ^ 0xA6));
  HIDWORD(v9) = v10 ^ 0x54;
  LODWORD(v9) = ~v10 << 24;
  v11 = ((v0 - 1442320840) ^ 0xDFE85D63CFEBB7F6) + 0x2017A29C3014480ALL + ((2 * (v0 - 1442320840)) & 0x9FD76FECLL);
  v12 = (v9 >> 31) ^ 0xFFFFFFD6;
  v13 = ((v0 - 1442320838) ^ 0x3FFF7DFFFFFBE3BELL) - 0x3FFF7DFFFFFBE3BELL + ((2 * (v0 - 1442320838)) & 0xFFF7C77CLL);
  v14 = *(v1 + (((*(v2 + v13) ^ 0xFB) + 110) ^ 0xB0));
  HIDWORD(v9) = v14 ^ 0x13;
  LODWORD(v9) = ~v14 << 24;
  v15 = *(STACK[0x958] + 4 * ((v9 >> 31) ^ 0x67u));
  HIDWORD(v9) = v15 ^ 0x86;
  LODWORD(v9) = v15 ^ 0x5B0C9200;
  v16 = v9 >> 8;
  v12 *= -13;
  HIDWORD(v9) = ~v12;
  LODWORD(v9) = (v12 ^ 0x24) << 24;
  LOBYTE(v12) = v9 >> 25;
  v17 = *(STACK[0x958] + 4 * (*(v2 + v11) ^ 0xD6));
  HIDWORD(v9) = v17 ^ 0xADBC18;
  LODWORD(v9) = v17 ^ 0xB000000;
  v18 = *(v3 + v11);
  v19 = *(STACK[0x8D0] + (v12 ^ 0xA6));
  v20 = v16 ^ (v9 >> 24);
  v21 = *(STACK[0x958] + 4 * ((*(STACK[0x8C8] + (((*(v2 + v6) ^ 0x4E) + 110) ^ 0x64)) + 78) ^ 0x9Au));
  HIDWORD(v9) = v19 ^ 0x54;
  LODWORD(v9) = ~v19 << 24;
  v22 = v9 >> 31;
  HIDWORD(v9) = v21 ^ 0xE0A;
  LODWORD(v9) = v21 ^ 0x3A4E0000;
  v23 = v20 ^ (v9 >> 16);
  LODWORD(v13) = *(STACK[0x950] + 4 * (*(v3 + v13) ^ 0x2BLL));
  HIDWORD(v9) = v13 ^ 0xF69;
  LODWORD(v9) = v13 ^ 0x2B7E8000;
  LODWORD(v13) = v9 >> 12;
  v24 = *(v3 + v7) ^ 0x85;
  HIDWORD(v9) = v13 ^ 0x5E;
  LODWORD(v9) = v13 ^ 0xC74D8000;
  LODWORD(v7) = v9 >> 8;
  LODWORD(v13) = *(STACK[0x950] + 4 * v24);
  HIDWORD(v9) = v13 ^ 0xF69;
  LODWORD(v9) = v13 ^ 0x2B7E8000;
  LODWORD(v13) = v9 >> 12;
  HIDWORD(v9) = v18 ^ 1;
  LODWORD(v9) = (v18 ^ 0xF0) << 24;
  LOBYTE(v24) = v9 >> 27;
  HIDWORD(v9) = v22;
  LODWORD(v9) = -218103808 * ((v22 - ((2 * v22) & 0xB2) + 89) ^ 0xFFFFFF8F);
  v25 = v9 >> 25;
  v26 = *(STACK[0x928] + (v24 ^ 0xDBLL));
  HIDWORD(v9) = v26 ^ 0x39;
  LODWORD(v9) = v26 << 24;
  v27 = *(STACK[0x950] + 4 * ((7 * ((v9 >> 30) ^ 0x88)) ^ 0xD9u));
  HIDWORD(v9) = v27 ^ 0xF69;
  LODWORD(v9) = v27 ^ 0x2B7E8000;
  v28 = v9 >> 12;
  v29 = *(STACK[0x8F0] + (((*(v3 + v6) ^ 0xF1) - 92) ^ 0x8ELL));
  HIDWORD(v9) = v29 ^ 1;
  LODWORD(v9) = ~v29 << 24;
  LOBYTE(v29) = v9 >> 29;
  LODWORD(v24) = *(STACK[0x970] + (((HIBYTE(v28) ^ 0xD8) - 92) ^ 0x4ELL)) - 49;
  HIDWORD(v9) = v24 ^ 0xFFFFFFF1;
  LODWORD(v9) = (v24 ^ 0x20) << 24;
  v30 = *(STACK[0x960] + 4 * (v29 ^ 0xE2u));
  LODWORD(v24) = (v9 >> 29) | (v28 << 8);
  HIDWORD(v9) = v30 ^ 8;
  LODWORD(v9) = v30 ^ 0x6BA90E90;
  v31 = v9 >> 4;
  HIDWORD(v9) = v31 ^ 0x934;
  LODWORD(v9) = v31 ^ 0xA68B0000;
  v32 = v7 ^ v13 ^ (v9 >> 16) ^ v24;
  v33 = (*(STACK[0x948] + 4 * ((-13 * ((((v25 & 0x80) != 0) | 0xD6) ^ (2 * *(STACK[0x8D0] + (v25 ^ 0xECLL))) ^ 0xA8)) ^ 0x29u)) + 2083238470) ^ v23;
  *(v3 + v6) = (HIBYTE(v32) ^ 0x2B) - 2 * ((HIBYTE(v32) ^ 0x2B) & 0x75 ^ HIBYTE(v32) & 4) - 15;
  *(v2 + v6) = HIBYTE(v33) ^ 0xF4;
  LODWORD(v6) = ((v33 >> 9) & 0x80 | (v33 >> 17) & 0x7F) ^ 0xC5;
  LOBYTE(v6) = *(STACK[0x920] + ((v6 + 1205849371 - ((2 * v6) & 0x36)) ^ 0x47DFCD2Cu)) ^ (((v6 + 27 - ((2 * v6) & 0x36)) ^ 0x4A) - ((2 * ((v6 + 27 - ((2 * v6) & 0x36)) ^ 0x4A) + 60) & 0x6A) + 83) ^ 0x5E;
  *(v2 + v11) = -13 * v6 - ((-26 * v6) & 0xF7) - 5;
  *(v3 + v11) = (BYTE2(v32) ^ 0x99) - 2 * ((BYTE2(v32) ^ 0x99) & 0xF7 ^ BYTE2(v32) & 6) - 15;
  v34 = ((v0 - 1442320839) ^ 0xFEF6D31FBABDB9EDLL) + 0x1092CE045424613 + (v5 & 0x757B73DA);
  *(v2 + v34) = BYTE1(v33) ^ 0x6E;
  *(v3 + v34) = (BYTE1(v32) ^ 0x9B) - ((2 * (BYTE1(v32) ^ 0x9B)) & 0xE3) - 15;
  v35 = ((v0 - 1442320841) & 0xFFFFFFFC ^ 0x4DDF3DFFFFFD61B8) + ((2 * (v0 - 1442320841)) & 0xFFFAC370) - 0x4DDF3DFFFFFD61B5;
  *(v2 + v35) = v33 ^ 0x45;
  *(v3 + v35) = v7 ^ v13 ^ BYTE2(v9) ^ v24 ^ 0x31;
  return (*(STACK[0x940] + 8 * ((499 * ((v0 - 1442320901) < 0xFFFFFFC0)) ^ v4)))();
}

uint64_t sub_2447E13D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v11 = (&STACK[0xE3D0] + v8 + a8 + (((a6 - 20001) | 0x5000) ^ 0xAC9596E3));
  v12 = veorq_s8(*v11, v10);
  v13 = veorq_s8(v11[1], v10);
  v14 = (v9 + v8);
  *v14 = v12;
  v14[1] = v13;
  return (*(STACK[0x940] + 8 * ((7713 * (v8 == 32)) ^ a6)))();
}

uint64_t sub_2447E1440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = (&STACK[0xCEF0] + (a8 + v8 - 1399470413));
  v12 = *v11;
  v13 = v11[1];
  v14 = (v10 + v8);
  *v14 = v12;
  v14[1] = v13;
  return (*(STACK[0x940] + 8 * (((v8 == 32) * (v9 - 20353)) ^ v9)))();
}

uint64_t sub_2447E14A4@<X0>(unint64_t a1@<X2>, int a2@<W8>)
{
  v7 = v2 - 64926006;
  v8 = 2 * (v2 - 64926004);
  v9 = ((v2 - 64926003) ^ 0x7FBDCDECFFB5DBF6) - 0x7FBDCDECFFB5DBF6 + ((2 * (v2 - 64926003)) & 0xFF6BB7ECLL);
  v10 = ((v2 - 64926004) ^ 0xBACBF2BF7FF67D96) + 0x45340D408009826ALL + (v8 & 0xFFECFB2C);
  v11 = ((v2 - 64926005) ^ 0x3DFDF6BDFDFFDBEFLL) - 0x3DFDF6BDFDFFDBEFLL + ((2 * (v2 - 64926005)) & 0xFBFFB7DELL);
  v12 = *(STACK[0x958] + 4 * (*(v6 + v11) ^ 0x9DLL));
  v13 = *(STACK[0x948] + 4 * (*(v6 + v2 - 64926006) ^ 0xF3)) + 2083238470;
  HIDWORD(v15) = v13 ^ 0x7B8F;
  LODWORD(v15) = v13 ^ 0x4A6F0000;
  v14 = v15 >> 16;
  HIDWORD(v15) = v12 ^ 0x14EB74;
  LODWORD(v15) = v12 ^ 0x97000000;
  v16 = v15 >> 24;
  v17 = *(STACK[0x948] + 4 * (*(v6 + v9) ^ 0x6FLL)) + ((a2 + 13652) ^ 0x7C2BFA27);
  LODWORD(v9) = *(STACK[0x950] + 4 * (*(v4 + v9) ^ v5));
  HIDWORD(v15) = v9 ^ 0xF69;
  LODWORD(v15) = v9 ^ 0x2B7E8000;
  LODWORD(v9) = v15 >> 12;
  HIDWORD(v15) = v17 ^ 1;
  LODWORD(v15) = v17 ^ 0x99C87B00;
  v18 = v15 >> 8;
  HIDWORD(v15) = v9 ^ 0x4F;
  LODWORD(v15) = v9 ^ 0x3B767800;
  v19 = v15 >> 8;
  LODWORD(v9) = v18 - 300621160 - ((2 * v18) & 0xDC29C530);
  v20 = *(v4 + v2 - 64926006);
  v21 = *(STACK[0x958] + 4 * (*(v6 + v10) ^ 0x23)) ^ v16;
  LODWORD(v10) = *(STACK[0x950] + 4 * (*(v4 + v10) ^ 0xDBLL));
  v22 = v21 ^ v14;
  HIDWORD(v15) = v10 ^ 0xF69;
  LODWORD(v15) = v10 ^ 0x2B7E8000;
  v23 = v15 >> 12;
  HIDWORD(v15) = v20 ^ 1;
  LODWORD(v15) = (v20 ^ 0xF0) << 24;
  v24 = *(STACK[0x960] + 4 * ((*(STACK[0x8C8] + (((*(v4 + v11) ^ 0xF1) + 110) ^ 0x64)) + 78) ^ 0x61u));
  LODWORD(v10) = v22 ^ v9;
  LOBYTE(v22) = 7 * ((*(STACK[0x938] + ((v15 >> 27) ^ a1)) + 103) ^ 0xEE);
  HIDWORD(v15) = v24 ^ 8;
  LODWORD(v15) = v24 ^ 0x6BA90E90;
  LODWORD(v9) = v15 >> 4;
  v25 = *(STACK[0x950] + 4 * (v22 ^ 0xA9u));
  HIDWORD(v15) = v25 ^ 0xF69;
  LODWORD(v15) = v25 ^ 0x2B7E8000;
  v26 = v15 >> 12;
  HIDWORD(v15) = v9 ^ 0x757811;
  LODWORD(v15) = v9 ^ 0x1E000000;
  LODWORD(v9) = v15 >> 24;
  HIDWORD(v15) = v26 ^ 0x980C;
  LODWORD(v15) = v26 ^ 0x8B100000;
  v27 = v19 ^ v23 ^ v9;
  v28 = (v15 >> 16) - 1940214393 - ((2 * (v15 >> 16)) & 0x18B55B0E);
  v29 = (v28 ^ 0x8C5AAD87) + (v27 ^ 0xCB999808) - 2 * ((v28 ^ 0xC5AAD87) & (v27 ^ 0x4B999808)) - 2 * (((v28 ^ 0x8C5AAD87) + (v27 ^ 0xCB999808) - 2 * ((v28 ^ 0xC5AAD87) & (v27 ^ 0x4B999808))) & 0x19EB15 ^ ((v28 ^ 0x8C5AAD87) + (v27 ^ 0xCB999808)) & 1);
  LODWORD(v9) = *(STACK[0x928] + (((v10 >> 19) & 0xE0 | (v10 >> 27)) ^ 2));
  HIDWORD(v15) = v9 ^ 0x39;
  LODWORD(v15) = v9 << 24;
  LOBYTE(v28) = ((v29 + LODWORD(STACK[0x65C])) >> 24) - (v3 & ((v29 + LODWORD(STACK[0x65C])) >> 23));
  *(v6 + v7) = 7 * ((v15 >> 30) ^ 0x88) - ((14 * ((v15 >> 30) ^ 0x88)) & 0xF7) - 5;
  v29 -= 2145785068;
  *(v4 + v7) = v28 - 15;
  *(v6 + v11) = BYTE2(v10) ^ 0xFA;
  v30 = ((v2 - 64926004) ^ 0xFFEF7F73AEDB6F95) + 0x10808C5124906BLL + (v8 & 0x5DB6DF28);
  *(v6 + v30) = BYTE1(v10) ^ 0xC0;
  *(v4 + v11) = (BYTE2(v29) ^ 0x19) - ((2 * (BYTE2(v29) ^ 0x19)) & 0xE3) - 15;
  *(v4 + v30) = (BYTE1(v29) ^ 0xEB) - ((2 * (BYTE1(v29) ^ 0xEB)) & 0xE3) - 15;
  v31 = ((v2 - 64926006) & 0xFFFFFFFC ^ 0xCF6FECEEEFFBFFE8) + ((2 * (v2 - 64926006)) & 0xDFF7FFD0) + 0x309013111004001BLL;
  *(v6 + v31) = v10 ^ 0xB4;
  *(v4 + v31) = v29 ^ 0xE5;
  return (*(STACK[0x940] + 8 * ((3069 * ((v2 - 64926002) < 0x40)) ^ a2)))();
}

uint64_t sub_2447E195C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(STACK[0x940] + 8 * v5);
  STACK[0x8A8] = (v5 - 9709);
  v7 = LODWORD(STACK[0x8F8]);
  v8 = LODWORD(STACK[0x8B8]);
  v9 = LODWORD(STACK[0x8D8]);
  v10 = LODWORD(STACK[0x8E8]);
  STACK[0x860] = v5;
  return v6(746411183, a2, v9, a4, a5, v7, v10, v8);
}

uint64_t sub_2447E19BC(unint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8)
{
  LODWORD(STACK[0x8F8]) = a6;
  LODWORD(STACK[0x8E0]) = v8;
  LODWORD(STACK[0x8D8]) = a3;
  STACK[0x8A0] = v11;
  STACK[0x8B8] = a1;
  v17 = a1 - 746411183;
  v18 = *(&STACK[0x9FE0] + a1 - 746411183);
  v19 = (((STACK[0x8A8] ^ 0xFFFFFFFFD3828926) + a1) ^ 0x58E2F7EF77ED6EB5) - 0x58E2F7EF77ED6EB5 + ((2 * ((STACK[0x8A8] ^ 0xFFFFFFFFD3828926) + a1)) & 0xEFDADD6A);
  v20 = ((a1 - 746411181) ^ 0xFDBF7E7F9FDFF6EDLL) + 0x240818060200913 + ((2 * (a1 - 746411181)) & 0x13FBFEDDALL);
  v21 = ((v17 + 3) ^ 0x7F5FF7FC7B7BFFCFLL) - 0x7F5FF7FC7B7BFFCFLL + ((2 * (v17 + 3)) & 0xF6F7FF9E);
  v22 = *(v10 + ((v14 + 1) ^ v9)) - 49;
  HIDWORD(v23) = v22 ^ 0xFFFFFFF1;
  LODWORD(v23) = (v22 ^ 0x20) << 24;
  v24 = ((v18 ^ 0xDE) << 24) | ((*(&STACK[0x9FE0] + v19) ^ 0xDE) << 16) | ((*(&STACK[0x9FE0] + v20) ^ 0xDE) << 8);
  v25 = *(v10 + ((((v23 >> 29) ^ 0x2A) - 92) ^ v9)) - 49;
  HIDWORD(v23) = v25 ^ 0xFFFFFFF1;
  LODWORD(v23) = (v25 ^ 0x20) << 24;
  v26 = v14 - ((2 * v14 - 668416838) & 0xCBBE1196) + 1374907176;
  v27 = *(STACK[0x958] + 4 * ((v23 >> 29) ^ 0x73u));
  v28 = *(STACK[0x928] + (((v26 >> 11) & 0xE0 | (v26 >> 19) & 0x1F) ^ 0x20));
  HIDWORD(v23) = v28 ^ 0x39;
  LODWORD(v23) = v28 << 24;
  v29 = *(STACK[0x958] + 4 * ((7 * ((v23 >> 30) ^ 0x88)) ^ 0x6Cu));
  HIDWORD(v23) = v27 ^ 0xFA;
  LODWORD(v23) = v27 ^ 0xC6B7A000;
  v30 = v23 >> 8;
  HIDWORD(v23) = v29 ^ 0x4659BB;
  LODWORD(v23) = v29 ^ 0xFE000000;
  v31 = *(STACK[0x958] + 4 * (BYTE1(v26) ^ 0x69u)) ^ (v23 >> 24);
  v32 = *(STACK[0x948] + 4 * (HIBYTE(v26) ^ 0x47)) + 2083238470;
  HIDWORD(v23) = v32 ^ 0x2F3;
  LODWORD(v23) = v32 ^ 0x55D00000;
  v33 = (v30 - 300621160 - ((2 * v30) & 0xDC29C530)) ^ v31;
  v34 = (v23 >> 16) - 1630968625 - ((2 * (v23 >> 16)) & 0x3D92C99E);
  v35 = 4 * (v11 - 734014852);
  v36 = ((((((v33 ^ 0x38831EE4) - (v33 ^ v34 ^ 0xA64A7A2B)) ^ ((v34 ^ 0x61369B30) + 1)) - 1630968625 - ((2 * (((v33 ^ 0x38831EE4) - (v33 ^ v34 ^ 0xA64A7A2B)) ^ ((v34 ^ 0x61369B30) + 1))) & 0x3D92C99E)) ^ v34) + (v33 ^ 0x38831EE4)) ^ (v24 | *(&STACK[0x9FE0] + v21) ^ 0xFB);
  v37 = ((*(&STACK[0xC860] + v17) ^ 0xFFFFFFF1) << 24) | ((*(&STACK[0xC860] + v19) ^ v16) << 16) | ((*(&STACK[0xC860] + v20) ^ v16) << 8);
  LODWORD(v21) = *(&STACK[0xC860] + v21) ^ v16;
  *(&STACK[0x7E00] + v35) = v36 ^ 0xBC8022E0;
  STACK[0x8E8] = v35;
  v38 = STACK[0x978];
  LODWORD(v19) = *(STACK[0x950] + 4 * (LODWORD(STACK[0x978]) ^ 0x55u));
  v39 = *(STACK[0x950] + 4 * (BYTE1(LODWORD(STACK[0x978])) ^ 0x52u));
  HIDWORD(v23) = v19 ^ 0xF69;
  LODWORD(v23) = v19 ^ 0x2B7E8000;
  v40 = v23 >> 12;
  v41 = v17 + 4;
  v42 = v17;
  HIDWORD(v23) = v39 ^ 0xF69;
  LODWORD(v23) = v39 ^ 0x2B7E8000;
  LODWORD(v20) = v23 >> 12;
  v43 = ((LODWORD(STACK[0x978]) >> 9) & 0x80 | (LODWORD(STACK[0x978]) >> 17) & 0x7F) ^ 0xB4;
  v44 = v43 + 863803148 - ((2 * v43) & 0x76) + 47;
  v45 = *(STACK[0x920] + (v44 ^ 0x337C970Cu));
  v46 = v44 ^ 0x6A;
  v47 = (2 * (v44 ^ 0x6A) + 60) & 0x6A;
  HIDWORD(v23) = v40 ^ 0x62;
  LODWORD(v23) = v40 ^ 0x7D95F500;
  v48 = v23 >> 8;
  v49 = (-13 * ((v46 - v47 + 83) ^ v45 ^ 0x5E)) ^ 0x5Du;
  v50 = *(STACK[0x960] + 4 * (HIBYTE(LODWORD(STACK[0x978])) ^ 0xE6u));
  LODWORD(v49) = *(STACK[0x950] + 4 * v49);
  HIDWORD(v23) = v50 ^ 8;
  LODWORD(v23) = v50 ^ 0x6BA90E90;
  v51 = v23 >> 4;
  HIDWORD(v23) = v51 ^ 0xE977;
  LODWORD(v23) = v51 ^ 0x16ED0000;
  v52 = v23 >> 16;
  HIDWORD(v23) = v49 ^ 0xF69;
  LODWORD(v23) = v49 ^ 0x2B7E8000;
  LODWORD(v49) = v23 >> 12;
  LODWORD(v21) = v37 | v21;
  v53 = *(STACK[0x900] + 4 * (BYTE1(v36) ^ 0x83u));
  HIDWORD(v23) = v53 ^ 0x716434;
  LODWORD(v23) = v53 ^ 0xD0000000;
  v54 = v23 >> 27;
  v55 = *(STACK[0x918] + (((v36 ^ 0x25) + 110) ^ 0xB0));
  HIDWORD(v23) = v55 ^ 0x13;
  LODWORD(v23) = ~v55 << 24;
  v56 = *(STACK[0x900] + 4 * ((v23 >> 31) ^ 0xE5u));
  HIDWORD(v23) = v56 ^ 0x716434;
  LODWORD(v23) = v56 ^ 0xD0000000;
  v57 = v23 >> 27;
  LODWORD(v20) = v20 ^ v48;
  HIDWORD(v23) = v57 ^ 0xB;
  LODWORD(v23) = v57 ^ 0x6537E700;
  v58 = v23 >> 8;
  LODWORD(v20) = v21 ^ v20;
  LODWORD(v21) = *(STACK[0x930] + 4 * (BYTE2(v36) ^ 0x99u));
  v60 = STACK[0x8C8];
  LODWORD(v20) = v20 ^ v52 ^ ((7 * ((*(v15 + (((v49 >> 19) & 0xE0 | (v49 >> 27)) ^ 0x51)) + 103) ^ 0xEE)) | (v49 << 8));
  LODWORD(v21) = v54 ^ ((*(STACK[0x8C8] + (((BYTE3(v21) ^ 0x33) + 110) ^ 0x64)) + 78) | (v21 << 8));
  v61 = *(STACK[0x930] + 4 * (HIBYTE(v36) ^ 0xAE));
  HIDWORD(v23) = v61 ^ 0x1BC4;
  LODWORD(v23) = v61 ^ 0xD3510000;
  *(&STACK[0xDFA0] + v35) = v20 ^ 0x59C9BE2A;
  v62 = STACK[0x910];
  v63 = *(STACK[0x910] + 4 * (v20 ^ 0x8Bu));
  v64 = *(STACK[0x910] + 4 * (BYTE1(v20) ^ 0xD3u));
  v65 = *(STACK[0x908] + 4 * (BYTE2(v20) ^ 0xAu));
  v66 = v58 ^ v21 ^ (v23 >> 16);
  v67 = STACK[0x8F0];
  v68 = *(STACK[0x8F0] + (((BYTE3(v20) ^ 0x88) - 92) ^ 0x8ELL));
  v69 = v26 ^ (v13 - ((2 * v13 + 95631452) & 0x51EC5DA) + 1030291227);
  v70 = v63 ^ 0x69;
  v71 = a7 ^ v12;
  LODWORD(v49) = (a7 ^ 0xF7C71483 ^ v66) - (a7 ^ v12);
  v72 = v63 ^ 0xBB2E5F00;
  LODWORD(STACK[0x880]) = v49 ^ ((v38 ^ 0xF5D87B91 ^ v66) - (v38 ^ 0x476974CD));
  LODWORD(STACK[0x8B0]) = v13;
  LODWORD(v49) = a8;
  v73 = a6 ^ 0x1C34AAE2;
  v74 = v13 - ((2 * v13 + 796260330) & 0x2EE18702) + 1865138038;
  LODWORD(STACK[0x888]) = v74;
  v75 = v69 ^ v74;
  LODWORD(v20) = v69;
  LODWORD(STACK[0x890]) = v69;
  v76 = (v41 ^ 0x79BDBCDDFBFBF8FALL) - 0x79BDBCDDFBFBF8FALL + ((2 * v41) & 0x1F7F7F1F4);
  LODWORD(v41) = *(&STACK[0x9FE0] + v76);
  v77 = __PAIR64__(v70, v72) >> 8;
  LODWORD(STACK[0x878]) = (a8 ^ 0xF8F9D050) + 16144136;
  v78 = v42;
  STACK[0x898] = v42;
  HIDWORD(v23) = v65 ^ 0x17D491;
  LODWORD(v23) = v65 ^ 0xF1000000;
  v79 = ((v42 + 5) ^ 0xF77CC97FFF71FF37) + 0x8833680008E00C9 + ((2 * (v42 + 5)) & 0x1FEE3FE6ELL);
  v80 = v77 + 263390975;
  v81 = (2 * v77) & 0x1F660DFE;
  v82 = ((v78 + 6) ^ 0xFFB7F7BBDFFAFFBBLL) + 0x48084420050045 + ((2 * (v78 + 6)) & 0x1BFF5FF76);
  v83 = (v23 >> 24) ^ v64;
  v84 = ((v78 + 7) ^ 0xDFDFFCFBFEBE7DB3) + 0x202003040141824DLL + ((2 * (v78 + 7)) & 0x1FD7CFB66);
  v85 = *(v67 + (((v69 ^ v74 ^ 0xA7) - 92) ^ 0x8ELL));
  HIDWORD(v23) = v85 ^ 1;
  LODWORD(v23) = ~v85 << 24;
  v86 = *(STACK[0x948] + 4 * ((v23 >> 29) ^ 0x92u));
  HIDWORD(v23) = v68 ^ 1;
  LODWORD(v23) = ~v68 << 24;
  LOBYTE(v68) = v23 >> 29;
  v86 += 2083238470;
  HIDWORD(v23) = v86 ^ 0x54;
  LODWORD(v23) = v86 ^ 0x43FC0200;
  v87 = v23 >> 8;
  v88 = v83 ^ (v80 - v81);
  v89 = *(STACK[0x958] + 4 * (((v69 ^ v74) >> 16) ^ 0x6Au));
  HIDWORD(v23) = v89 ^ 0x18F7C5;
  LODWORD(v23) = v89 ^ 0xD1000000;
  v90 = v23 >> 24;
  LODWORD(v42) = *(STACK[0x958] + 4 * ((*(v60 + (((((v69 ^ v74) >> 24) ^ 0x8F) + 110) ^ 0x64)) + 78) ^ 0x9Au));
  v91 = *(v62 + 4 * (v68 ^ 0x87u));
  HIDWORD(v23) = v42 ^ 0x2BA3;
  LODWORD(v23) = v42 ^ 0xBEC70000;
  LODWORD(v41) = (((v41 ^ 0xDE) << 24) | ((*(&STACK[0x9FE0] + v79) ^ 0xDE) << 16) | ((*(&STACK[0x9FE0] + v82) ^ 0xDE) << 8) | *(&STACK[0x9FE0] + v84) ^ 0xFB) ^ (*(STACK[0x948] + 4 * (((v69 ^ v74) >> 8) ^ 0x6Fu)) + 2083238470) ^ v90 ^ (v23 >> 16);
  HIDWORD(v23) = v91 ^ 0x5F49;
  LODWORD(v23) = v91 ^ 0xFB2F0000;
  v92 = v41 ^ v87;
  v93 = STACK[0x8E8];
  v94 = STACK[0x8E8] + 4;
  STACK[0x870] = v94;
  *(&STACK[0x7E00] + v94) = v41 ^ v87 ^ 0xC70CEB7D;
  v95 = v88 ^ (v23 >> 16);
  v96 = v73 + 928466796;
  v97 = a7 ^ v38;
  LODWORD(v60) = v49;
  v98 = v95 ^ v20;
  v99 = v71 - ((2 * v71 + 969064334) & 0x874B9776) + 1619471234;
  v100 = v99 ^ v97;
  v101 = v95 ^ v20 ^ 0x613635BE;
  v102 = STACK[0x950];
  LODWORD(v42) = *(STACK[0x950] + 4 * (((v99 ^ v97) >> 16) ^ 0x77u));
  LOBYTE(v71) = 7 * ((*(STACK[0x938] + (((v100 >> 19) & 0xE0 | (v100 >> 27)) ^ 0xCCLL)) + 103) ^ 0xEE);
  HIDWORD(v23) = v42 ^ 0xF69;
  LODWORD(v23) = v42 ^ 0x2B7E8000;
  v103 = v23 >> 12;
  v104 = v96 + (v95 ^ 0x34D750C4);
  HIDWORD(v23) = v103 ^ 0x9D3DD3;
  LODWORD(v23) = v103 ^ 0x59000000;
  v105 = v23 >> 24;
  v106 = *(v67 + (((((v99 ^ v97) >> 8) ^ 0xA4) - 92) ^ 0x8ELL));
  v107 = v67;
  v108 = v66 ^ v101;
  HIDWORD(v23) = v106 ^ 1;
  LODWORD(v23) = ~v106 << 24;
  v109 = STACK[0x960];
  v110 = *(STACK[0x960] + 4 * ((v99 ^ v97) ^ 0xAFu));
  v111 = (v23 >> 29) ^ 0xE0u;
  HIDWORD(v23) = v110 ^ 8;
  LODWORD(v23) = v110 ^ 0x6BA90E90;
  LODWORD(v84) = *(&STACK[0xC860] + v84);
  *(&STACK[0xD760] + v93) = v104 - 1;
  LODWORD(v111) = *(v102 + 4 * v111);
  v112 = ((*(&STACK[0xC860] + v76) ^ 0xFFFFFFF1) << 24) | ((*(&STACK[0xC860] + v79) ^ 0xF1) << 16) | ((*(&STACK[0xC860] + v82) ^ 0xF1) << 8) | v84 ^ 0xF1;
  v113 = ((LODWORD(STACK[0x8E0]) ^ 0x293A837A) - ((2 * (LODWORD(STACK[0x8E0]) ^ 0x293A837A) - 1891116042) & 0x874B9776) - 1958102602) ^ v99;
  *(&STACK[0x79D0] + v93) = LODWORD(STACK[0x878]) + (LODWORD(STACK[0x880]) ^ (v108 - (v98 ^ 0xD3873AE2))) + 1;
  v114 = ((2 * ((v99 ^ 0x43A5CBBB) + (v60 ^ 0xC958F44A))) & 0x35ADDFF6) + (((v99 ^ 0x43A5CBBB) + (v60 ^ 0xC958F44A)) ^ 0x9AD6EFFB);
  v115 = STACK[0x888];
  v116 = ((LODWORD(STACK[0x8D8]) ^ 0xA41CE06) - ((2 * (LODWORD(STACK[0x8D8]) ^ 0xA41CE06) + 256367606) & 0x2EE18702) - 552291972) ^ LODWORD(STACK[0x888]);
  v117 = LODWORD(STACK[0x8B0]) + (LODWORD(STACK[0x8F8]) ^ 0xD26A7107);
  LODWORD(v78) = *(v109 + 4 * (v71 ^ 0x6Bu));
  v118 = v105 ^ (__PAIR64__((v23 >> 4) ^ 0x6E, (v23 >> 4) ^ 0x2B4C1300) >> 8);
  v119 = *(STACK[0x930] + 4 * (v92 ^ 0xB9u));
  HIDWORD(v23) = v119 ^ 0x69;
  LODWORD(v23) = v119 ^ 0x33458B00;
  v120 = v23 >> 8;
  HIDWORD(v23) = v111 ^ 0xF69;
  LODWORD(v23) = v111 ^ 0x2B7E8000;
  v121 = v23 >> 12;
  HIDWORD(v23) = v78 ^ 8;
  LODWORD(v23) = v78 ^ 0x6BA90E90;
  v122 = v23 >> 4;
  if (((v92 >> 1) & 0x80) != 0)
  {
    v123 = 126;
  }

  else
  {
    v123 = 127;
  }

  v124 = *(STACK[0x930] + 4 * ((-13 * (v123 ^ (2 * *(STACK[0x8D0] + (((v92 >> 1) & 0x80 | (v92 >> 9)) ^ 0x42))))) ^ 0x27u));
  v125 = *(STACK[0x900] + 4 * (BYTE2(v92) ^ 0x11u));
  v126 = v118 ^ v121;
  HIDWORD(v128) = v125 ^ 0x716434;
  LODWORD(v128) = v125 ^ 0xD0000000;
  v127 = v128 >> 27;
  HIDWORD(v128) = v122 ^ 0x8836;
  LODWORD(v128) = v122 ^ 0xA68B0000;
  v129 = v128 >> 16;
  HIDWORD(v128) = v127 ^ 0x2B4EC6;
  LODWORD(v128) = v127 ^ 0x25000000;
  v130 = (v120 + 1007992998 - ((2 * v120) & 0x7829814C)) ^ (v128 >> 24);
  v131 = *(STACK[0x900] + 4 * (HIBYTE(v92) ^ 8));
  v132 = v126 ^ v112 ^ v129;
  HIDWORD(v128) = v131 ^ 0x716434;
  LODWORD(v128) = v131 ^ 0xD0000000;
  v133 = v128 >> 27;
  HIDWORD(v128) = v133 ^ 0x6E2B;
  LODWORD(v128) = v133 ^ 0xE5370000;
  v134 = STACK[0x870];
  *(&STACK[0xDFA0] + v134) = v132 ^ 0xA874876F;
  v135 = v130 ^ (v128 >> 16) ^ v124;
  v136 = STACK[0x908];
  v137 = *(STACK[0x908] + 4 * (v132 ^ 0x6Bu));
  v138 = *(STACK[0x910] + 4 * (BYTE2(v132) ^ 0x6Du));
  v139 = ((BYTE1(v132) ^ 0x81) - 92);
  v140 = *(STACK[0x910] + 4 * (HIBYTE(v132) ^ 0xD8));
  LODWORD(STACK[0x888]) = v135 ^ v115;
  LODWORD(STACK[0x868]) = v97;
  v141 = ((2 * v97) & 0x7FFAF9CA ^ 0x5B60E98A) + (v97 ^ 0xD24D0A2A);
  v142 = *(v107 + (v139 ^ 0x8E));
  LODWORD(v139) = v135 ^ 0xCF55CF7B;
  v143 = v75 ^ 0x7020A9A7;
  v144 = v137 ^ 0x3C;
  v145 = ((2 * ((LODWORD(STACK[0x890]) ^ 0x88FF73FB) - v143)) & 0xE9DF61FE) + (((LODWORD(STACK[0x890]) ^ 0x88FF73FB) - v143) ^ 0x74EFB0FF);
  v146 = v145 - 1961865471;
  v147 = v137 ^ 0xB122D200;
  LODWORD(STACK[0x978]) = (v143 ^ (v117 - 675611659) ^ (v145 - 1961865471)) + 734142883 - ((2 * (v143 ^ (v117 - 675611659) ^ (v145 - 1961865471))) & 0x57844346);
  v148 = v138 ^ 0x24DE3B;
  v149 = v145 + v116;
  LODWORD(STACK[0x8E0]) = v145 + v116;
  v150 = v117 - ((2 * v117 + 177365098) & 0xC2460D0C) + 1718367931;
  LODWORD(STACK[0x8F8]) = v150;
  v151 = v138 ^ 0x1B000000;
  v152 = v140 ^ 0x5D2D;
  v153 = ((2 * (v141 + 1073906460 + (v100 ^ 0xBE455B56))) & 0xDBF2F926) + ((v141 + 1073906460 + (v100 ^ 0xBE455B56)) ^ 0x6DF97C93);
  v154 = v150 ^ 0x61230686;
  v155 = v153 - 1845066899 + v113;
  LODWORD(STACK[0x8D8]) = v155;
  v156 = v154 - v149;
  v157 = v140 ^ 0x3B3C0000;
  v158 = v156 + 563290267 - ((2 * (v156 - 704418339)) & 0x971F657C);
  v159 = __PAIR64__(v144, v147) >> 8;
  v160 = v114;
  v161 = v100 ^ 0x41BAA4A9 ^ (v114 + 1697189893) ^ (v153 - 1845066899);
  v162 = __PAIR64__(v148, v151) >> 24;
  LODWORD(STACK[0x8B0]) = v161 + 206578907 - ((2 * v161) & 0x18A049B6);
  v163 = __PAIR64__(v152, v157) >> 16;
  *(&STACK[0x79D0] + v134) = v117 - 659467523 + v139;
  v164 = v114 - v155 - ((2 * (v114 - v155) + 1737884230) & 0x60A72320);
  v165 = *(STACK[0x958] + 4 * (BYTE2(v158) ^ 0xBu));
  HIDWORD(v128) = v165 ^ 0x7C594F;
  LODWORD(v128) = v165 ^ 0x63000000;
  v166 = v128 >> 24;
  v167 = (2 * v159) & 0xCE92FBCA;
  v168 = *(STACK[0x958] + 4 * (v158 ^ 0x8Cu));
  v169 = STACK[0x958];
  v170 = v159 + 1732869605;
  HIDWORD(v128) = v168 ^ 0x25;
  LODWORD(v128) = v168 ^ 0x2CE33C00;
  v171 = (v128 >> 8) - 300621160 - ((2 * (v128 >> 8)) & 0xDC29C530);
  v172 = STACK[0x898];
  LOBYTE(v168) = __PAIR64__(v142 ^ 1u, ~v142 << 24) >> 29;
  v173 = ((STACK[0x898] + 11) ^ 0x7C9B7F1DE15FEFFBLL) - 0x7C9B7F1DE15FEFFBLL + ((2 * (STACK[0x898] + 11)) & 0x1C2BFDFF6);
  v174 = STACK[0x898] + 9;
  v175 = v107;
  LODWORD(v139) = *(v107 + (((*(&STACK[0x9FE0] + v174) ^ 0xFB) - 92) ^ 0x8ELL));
  v176 = (v170 - v167) ^ v162;
  HIDWORD(v128) = v139 ^ 1;
  LODWORD(v128) = ~v139 << 24;
  v177 = STACK[0x898] + 8;
  v178 = v176 ^ v163;
  v179 = ((STACK[0x898] + 10) ^ 0x7EB7DFCFFEF6AFFFLL) - 0x7EB7DFCFFEF6AFFFLL + ((2 * (STACK[0x898] + 10)) & 0x1FDED5FFELL);
  v180 = *(v136 + 4 * (v168 ^ 0xA1u));
  LODWORD(v139) = ((*(&STACK[0x9FE0] + v177) ^ 0xDE) << 24) | (((v128 >> 29) ^ 0x25) << 16) | ((*(&STACK[0x9FE0] + v179) ^ 0xDE) << 8);
  LODWORD(STACK[0x890]) = v158;
  v181 = *(v169 + 4 * (HIBYTE(v158) ^ 0x11));
  v182 = v178 ^ v180;
  v183 = v139 | *(&STACK[0x9FE0] + v173) ^ 0xFB;
  HIDWORD(v128) = v181 ^ 0x121C;
  LODWORD(v128) = v181 ^ 0x6A6E0000;
  v184 = -1073907752 - v141 + (LODWORD(STACK[0x868]) ^ 0xDBA656B9 ^ v182);
  LODWORD(v139) = *(v169 + 4 * (BYTE1(v158) ^ 0x83u)) ^ (v128 >> 16) ^ v166;
  v185 = (v146 + v154) ^ 0x78FDBDFF;
  v186 = (2 * (v146 + v154)) & 0xF1FB7BFE;
  v187 = v153 + v160;
  v188 = v164 + 605983411;
  v189 = v139 ^ v183 ^ v171;
  v190 = (v100 ^ 0xF7AC84DF ^ v182) - (v100 ^ 0x41BAA4A9);
  v191 = STACK[0x8E8] + 8;
  STACK[0x878] = v191;
  *(&STACK[0x7E00] + v191) = v189 ^ 0xD2AE4EBB;
  v192 = LODWORD(STACK[0x888]) ^ v182 ^ 0x819C3551;
  LOBYTE(v183) = (BYTE1(v188) ^ 0x91) - ((2 * (BYTE1(v188) ^ 0x91) + 72) & 0x72);
  v193 = (v183 + 93) ^ 0xB9;
  if (((-94 - v183) & 0x20) != 0)
  {
    v194 = -32;
  }

  else
  {
    v194 = 32;
  }

  v195 = (v194 + v193);
  v196 = STACK[0x950];
  v197 = *(STACK[0x950] + 4 * ((v164 - 77) ^ 0x16u));
  HIDWORD(v199) = v197 ^ 0xF69;
  LODWORD(v199) = v197 ^ 0x2B7E8000;
  v198 = v199 >> 12;
  LODWORD(v195) = *(v175 + (v195 ^ 0xAE));
  v200 = *(&STACK[0xC860] + v173) ^ 0xF1;
  v201 = ((*(&STACK[0xC860] + v174) ^ 0xF1) << 16) | ((*(&STACK[0xC860] + v177) ^ 0xFFFFFFF1) << 24);
  v202 = *(&STACK[0xC860] + v179);
  HIDWORD(v199) = ~v202;
  LODWORD(v199) = (v202 ^ 0xF0) << 24;
  v203 = *(STACK[0x920] + (((v199 >> 25) - ((2 * (v199 >> 25)) & 0x68) - 76) ^ 0x83));
  v204 = (v184 + 1293) ^ (v192 - (LODWORD(STACK[0x888]) ^ 0x378A1527)) ^ v190;
  v205 = ((v199 >> 25) - ((2 * (v199 >> 25)) & 0x68) - 76) ^ 0xFFFFFFE5;
  HIDWORD(v199) = v198 ^ 0x68;
  LODWORD(v199) = v198 ^ 0xBC0F7600;
  v206 = v199 >> 8;
  HIDWORD(v199) = v195 ^ 1;
  LODWORD(v199) = ~v195 << 24;
  v207 = STACK[0x8D0];
  v208 = *(STACK[0x8D0] + (((v188 >> 9) & 0x80 | (v188 >> 17) & 0x7F) ^ 0x63));
  LODWORD(v195) = *(STACK[0x950] + 4 * ((v199 >> 29) ^ 0xD5u));
  HIDWORD(v199) = v208 ^ 0x54;
  LODWORD(v199) = ~v208 << 24;
  *(&STACK[0xD760] + v134) = v204 - v160 - 768723098;
  v209 = v201 & 0xFFFF00FF | ((-13 * (v203 ^ (v205 - ((2 * v205 + 60) & 0x6A) + 83) ^ 0x5E)) << 8) | v200;
  v210 = *(STACK[0x970] + (((HIBYTE(v188) ^ 0x35) - 92) ^ 0x4ELL)) - 49;
  v211 = (-13 * ((v199 >> 31) ^ 0xD6)) ^ 0xE2u;
  HIDWORD(v199) = v210 ^ 0xFFFFFFF1;
  LODWORD(v199) = (v210 ^ 0x20) << 24;
  v212 = *(STACK[0x960] + 4 * ((v199 >> 29) ^ 0xFAu));
  LODWORD(v211) = *(v196 + 4 * v211);
  v213 = *(STACK[0x930] + 4 * (HIBYTE(v189) ^ 0xAF));
  HIDWORD(v199) = v195 ^ 0xF69;
  LODWORD(v199) = v195 ^ 0x2B7E8000;
  LODWORD(v195) = v199 >> 12;
  HIDWORD(v199) = v213 ^ 0x3D71;
  LODWORD(v199) = v213 ^ 0x335C0000;
  v214 = v199 >> 16;
  v215 = *(STACK[0x900] + 4 * (v189 ^ 0xC3u));
  HIDWORD(v199) = v212 ^ 8;
  LODWORD(v199) = v212 ^ 0x6BA90E90;
  v216 = v199 >> 4;
  LODWORD(v195) = v195 ^ v206;
  HIDWORD(v199) = v215 ^ 0x716434;
  LODWORD(v199) = v215 ^ 0xD0000000;
  v217 = v199 >> 27;
  HIDWORD(v199) = v217 ^ 0xC2;
  LODWORD(v199) = v217 ^ 0x252F0700;
  v218 = v199 >> 8;
  HIDWORD(v199) = v216 ^ 0x35BF;
  LODWORD(v199) = v216 ^ 0x78D20000;
  v219 = v199 >> 16;
  v220 = *(v207 + (((v189 >> 1) & 0x80 | (v189 >> 9)) ^ 0xELL));
  HIDWORD(v199) = v211 ^ 0xF69;
  LODWORD(v199) = v211 ^ 0x2B7E8000;
  LODWORD(v211) = v199 >> 12;
  HIDWORD(v199) = v220 ^ 0x54;
  LODWORD(v199) = ~v220 << 24;
  v221 = *(STACK[0x900] + 4 * ((-13 * ((v199 >> 31) ^ 0xD6)) ^ 0x89u));
  HIDWORD(v199) = v221 ^ 0x716434;
  LODWORD(v199) = v221 ^ 0xD0000000;
  v222 = v199 >> 27;
  HIDWORD(v199) = v211 ^ 0x70CFF8;
  LODWORD(v199) = v211 ^ 0x60000000;
  v223 = v219 ^ v209;
  v224 = *(STACK[0x900] + 4 * (BYTE2(v189) ^ 0x4Cu));
  LODWORD(v211) = v195 ^ (v199 >> 24);
  HIDWORD(v199) = v224 ^ 0x716434;
  LODWORD(v199) = v224 ^ 0xD0000000;
  LODWORD(v195) = v199 >> 27;
  LODWORD(v211) = v211 ^ v223;
  HIDWORD(v199) = v195 ^ 0x3568E1;
  LODWORD(v199) = v195 ^ 0xC5000000;
  v225 = v222 ^ v214 ^ v218 ^ (v199 >> 24);
  v226 = v185 - 2029895167 + v186;
  LODWORD(v195) = v187 + 616417202;
  v227 = LODWORD(STACK[0x8B0]) ^ 0xC5024DB;
  LODWORD(STACK[0x870]) = ((LODWORD(STACK[0x8B0]) ^ 0x97E1310 ^ v225) - v227) ^ (((v187 + 616417202) ^ 0x52E37CB ^ v225) - v187 - 616417202);
  v228 = STACK[0x978];
  v229 = LODWORD(STACK[0x8E0]) + 704418339 + (LODWORD(STACK[0x978]) ^ 0x2BC221A3);
  LODWORD(v207) = STACK[0x8F8];
  v230 = (LODWORD(STACK[0x8F8]) ^ 0xC39FF5C3 ^ (v229 - ((2 * v229) & 0x4579E68A) - 1564675259)) + 2 * (((v229 - ((2 * v229) & 0x4579E68A) - 1564675259) ^ 0x22BCF345) & v154);
  LODWORD(STACK[0x8B0]) = v230;
  v231 = STACK[0x878];
  *(&STACK[0xDFA0] + v231) = v211 ^ 0x740BBFFD;
  v232 = v160;
  v233 = v160 + LODWORD(STACK[0x8D8]) + v227;
  LODWORD(STACK[0x8E0]) = v233;
  v233 += 1720712977;
  LODWORD(STACK[0x8D8]) = v233;
  v234 = v188;
  LODWORD(STACK[0x868]) = (v188 ^ 0x30539190) + v195;
  v235 = BYTE1(v211) ^ 0x7D;
  v236 = (v188 ^ 0x214F4508) + 887912362 - v233 - 731305073 - ((2 * ((v188 ^ 0x214F4508) + 887912362 - v233)) & 0xA8D2571E);
  LODWORD(STACK[0x880]) = v236;
  LODWORD(v196) = STACK[0x890];
  v237 = (LODWORD(STACK[0x890]) ^ 0x5A936626) - v230 - 2075821670 - ((2 * ((LODWORD(STACK[0x890]) ^ 0x5A936626) - v230)) & 0x88AF334);
  LODWORD(STACK[0x888]) = v237;
  v238 = STACK[0x908];
  v239 = *(STACK[0x908] + 4 * (v211 ^ 0x9Au));
  v240 = ((v172 + 12) ^ 0x2FF7AA8FF9F77FFBLL) - 0x2FF7AA8FF9F77FFBLL + ((2 * (v172 + 12)) & 0x1F3EEFFF6);
  v241 = *(STACK[0x910] + 4 * (BYTE2(v211) ^ 0x72u));
  LODWORD(v211) = *(STACK[0x908] + 4 * (BYTE3(v211) ^ 0x8F));
  v242 = ((v172 + 13) ^ 0xDFD3DADEEC2EDEFFLL) + 0x202C252113D12101 + ((2 * (v172 + 13)) & 0x1D85DBDFELL);
  v243 = ((v172 + 14) ^ 0x79DFEDEEF7D3D5FFLL) - 0x79DFEDEEF7D3D5FFLL + ((2 * (v172 + 14)) & 0x1EFA7ABFELL);
  HIDWORD(v199) = v239;
  LODWORD(v199) = v239 ^ 0xD1135400;
  v244 = v199 >> 8;
  HIDWORD(v199) = v241 ^ 0x14D837;
  LODWORD(v199) = v241 ^ 0x1B000000;
  v245 = v199 >> 24;
  HIDWORD(v199) = v211 ^ 0xD29D;
  LODWORD(v199) = v211 ^ 0xF1270000;
  LODWORD(v211) = v199 >> 16;
  v246 = ((STACK[0x8B8] - 746411183) & 0xFFFFFFF0 ^ 0xAD89DFDDFD9BFD9ALL) + ((2 * (STACK[0x8B8] - 746411183)) & 0x1FB37FB20) + 0x5276202202640275;
  v247 = *(STACK[0x948] + 4 * ((v237 ^ v207) ^ 0x60u)) + 2083238470;
  HIDWORD(v199) = v247 ^ 0x6D;
  LODWORD(v199) = v247 ^ 0x87756700;
  v248 = v199 >> 8;
  v249 = *(STACK[0x910] + 4 * v235) ^ v245;
  v250 = *(STACK[0x958] + 4 * (((v237 ^ v207) >> 16) ^ 0x96u));
  HIDWORD(v199) = v250 ^ 0xE15935;
  LODWORD(v199) = v250 ^ 0x2D000000;
  v251 = v199 >> 24;
  LODWORD(v211) = v249 ^ v211;
  v252 = v248 - 300621160 - ((2 * v248) & 0xDC29C530);
  v253 = *(STACK[0x958] + 4 * (((v237 ^ v207) >> 24) ^ 0x36));
  HIDWORD(v199) = v253 ^ 0x2060;
  LODWORD(v199) = v253 ^ 0xF7D50000;
  v254 = (((*(&STACK[0x9FE0] + v240) ^ 0xDE) << 24) | ((*(&STACK[0x9FE0] + v242) ^ 0xDE) << 16) | ((*(&STACK[0x9FE0] + v243) ^ 0xDE) << 8) | *(&STACK[0x9FE0] + v246) ^ 0xFB) ^ *(STACK[0x958] + 4 * (((v237 ^ v207) >> 8) ^ 0x37u)) ^ v251 ^ (v199 >> 16) ^ v252;
  LODWORD(v195) = v244 + 263390975 - ((2 * v244) & 0x1F660DFE);
  v255 = STACK[0x938];
  v256 = STACK[0x8E8] + 12;
  *(&STACK[0x7E00] + v256) = v254 ^ 0xB4E2EB06;
  v257 = ((v232 - 1833483195) ^ 0xD4692B8F ^ v236) + 1495137478 - ((2 * ((v232 - 1833483195) ^ 0xD4692B8F ^ v236)) & 0xB23BF98C);
  v258 = *(STACK[0x950] + 4 * ((((v232 + 69) ^ 0x8F ^ v236) - 58 - ((2 * ((v232 + 69) ^ 0x8F ^ v236)) & 0x8C)) ^ 0x80u));
  LODWORD(v211) = v195 ^ v211;
  HIDWORD(v199) = v258 ^ 0xF69;
  LODWORD(v199) = v258 ^ 0x2B7E8000;
  v259 = v199 >> 12;
  HIDWORD(v199) = v259 ^ 0x2F;
  LODWORD(v199) = v259 ^ 0x4CE09600;
  v260 = v199 >> 8;
  v261 = ((*(&STACK[0xC860] + v240) ^ 0xFFFFFFF1) << 24) | ((*(&STACK[0xC860] + v242) ^ 0xF1) << 16);
  LODWORD(v242) = *(STACK[0x960] + 4 * (((((v232 + 17477) ^ 0x2B8F ^ v236) - 826 - ((2 * ((v232 + 17477) ^ 0x2B8F ^ v236)) & 0xF98C)) >> 8) ^ 0x17u));
  HIDWORD(v199) = v242 ^ 8;
  LODWORD(v199) = v242 ^ 0x6BA90E90;
  LODWORD(v195) = v199 >> 4;
  v262 = v261 | ((*(&STACK[0xC860] + v243) ^ 0xF1) << 8);
  LODWORD(v243) = *(STACK[0x950] + 4 * (BYTE2(v257) ^ 0xB3u));
  v263 = (v225 ^ 0xFA6CCC49 ^ v228 ^ v226 ^ v211) - (v228 ^ v226 ^ v211 ^ 0xFF42FB82);
  HIDWORD(v199) = v243 ^ 0xF69;
  LODWORD(v199) = v243 ^ 0x2B7E8000;
  LODWORD(v240) = v199 >> 12;
  HIDWORD(v199) = v240 ^ 0x297271;
  LODWORD(v199) = v240 ^ 0xBE000000;
  LODWORD(v240) = v199 >> 24;
  LODWORD(v243) = *(STACK[0x950] + 4 * (HIBYTE(v257) ^ 0x49));
  v264 = v262 | *(&STACK[0xC860] + v246) ^ 0xF1;
  HIDWORD(v199) = v243 ^ 0xF69;
  LODWORD(v199) = v243 ^ 0x2B7E8000;
  LODWORD(v243) = v199 >> 12;
  HIDWORD(v199) = v243 ^ 0xE11F;
  LODWORD(v199) = v243 ^ 0x772B0000;
  *(&STACK[0x79D0] + v231) = (v196 ^ 0x4B8FB2BE) + 16144136 + (v211 ^ 0xD480DA21);
  LODWORD(v240) = v264 ^ v195 ^ v260 ^ v240 ^ (v199 >> 16);
  LODWORD(v211) = (v196 ^ 0x4B8FB2BE) + v226 + 1267708606 - ((2 * ((v196 ^ 0x4B8FB2BE) + v226)) & 0x971F657C);
  v265 = LODWORD(STACK[0x868]) ^ v234;
  v266 = v211 ^ v196;
  LODWORD(v207) = LODWORD(STACK[0x870]) ^ v263;
  v267 = STACK[0x970];
  *(&STACK[0xDFA0] + v256) = v240 ^ 0x2A4A4995;
  LODWORD(v211) = *(v267 + (((v254 ^ 0xA0) - 92) ^ 0x4ELL)) - 49;
  HIDWORD(v199) = v211 ^ 0xFFFFFFF1;
  LODWORD(v199) = (v211 ^ 0x20) << 24;
  v268 = *(STACK[0x930] + 4 * (BYTE1(v254) ^ 0x6Du));
  LODWORD(v211) = *(STACK[0x930] + 4 * ((v199 >> 29) ^ 0xB7u));
  v269 = STACK[0x930];
  LODWORD(v195) = *(STACK[0x930] + 4 * (BYTE2(v254) ^ 0x30u));
  *(&STACK[0xD760] + v231) = (v234 ^ 0xCFAC6E6F) + 928466796 + v207;
  HIDWORD(v199) = v195 ^ 0x4F5B3B;
  LODWORD(v199) = v195 ^ 0x53000000;
  LODWORD(v195) = v199 >> 24;
  v270 = *(v269 + 4 * (HIBYTE(v254) ^ 0x1E));
  HIDWORD(v199) = v211 ^ 0x9B;
  LODWORD(v199) = v211 ^ 0x935EB200;
  LODWORD(v211) = v199 >> 8;
  HIDWORD(v199) = v270 ^ 0x4013;
  LODWORD(v199) = v270 ^ 0xD3470000;
  LODWORD(v207) = v195 ^ v268 ^ (v199 >> 16);
  LODWORD(v195) = *(v238 + 4 * (v240 ^ 0xC8u));
  LODWORD(v207) = v207 ^ (v211 + 1007992998 - ((2 * v211) & 0x7829814C));
  HIDWORD(v199) = v195 ^ 0xA7;
  LODWORD(v199) = v195 ^ 0x910E5700;
  LODWORD(v195) = (v199 >> 8) + 1732869605 - ((2 * (v199 >> 8)) & 0xCE92FBCA);
  LODWORD(v211) = *(v267 + (((BYTE2(v240) ^ 0x33) - 92) ^ 0x4ELL)) - 49;
  HIDWORD(v199) = v211 ^ 0x11;
  LODWORD(v199) = (v211 ^ 0x20) << 24;
  LODWORD(v211) = *(STACK[0x910] + 4 * ((v199 >> 29) ^ 0x87u));
  HIDWORD(v199) = v211 ^ 0x575057;
  LODWORD(v199) = v211 ^ 0xFBFFFFFF;
  LODWORD(v211) = v199 >> 24;
  v271 = *(STACK[0x910] + 4 * ((7 * ((*(v255 + (((v240 >> 19) & 0xE0 | (v240 >> 27)) ^ 0x10)) + 103) ^ 0xEE)) ^ 0x87u));
  HIDWORD(v199) = v271 ^ 0x5A82;
  LODWORD(v199) = v271 ^ 0x7B010000;
  LODWORD(v211) = v211 ^ *(v238 + 4 * (BYTE1(v240) ^ 8u)) ^ v195 ^ (v199 >> 16);
  v272 = LODWORD(STACK[0x8E0]) + 832800615;
  LODWORD(v195) = v266 ^ LODWORD(STACK[0x8B0]) ^ 0x6779FA92 ^ v211;
  LODWORD(v196) = (887912362 - LODWORD(STACK[0x8D8]) + (v272 ^ 0xAF448DB3 ^ v207)) ^ ((v265 ^ 0x8E0BC8BB ^ v207) - (v265 ^ 0x214F4508));
  *(&STACK[0x79D0] + v256) = (LODWORD(STACK[0x888]) ^ 0x8445799A) + 16144136 + (v211 ^ 0x76652E0A);
  v273 = ((2 * (v257 ^ v272)) & 0x75DD3D9E ^ 0x3019398C) + (v257 ^ v272 ^ 0xE3F36209);
  v274 = v273 - ((2 * v273 + 1008825270) & 0x527506F4) + 1196113237;
  v275 = (LODWORD(STACK[0x880]) ^ 0x2B96D470) + 928466796 + (v196 ^ ((v207 ^ (v195 + 971491520 - ((2 * v195) & 0x73CF9180)) ^ 0x96A34573) - ((v195 + 971491520 - ((2 * v195) & 0x73CF9180)) ^ 0x39E7C8C0)));
  v276 = STACK[0x860];
  v277 = STACK[0x8B8];
  *(&STACK[0xD760] + v256) = v275;
  LODWORD(v256) = (((STACK[0x8A0] & 0x7FFFFFFFFFFFFFF0) == 734014848) ^ 0xFB5EFFB7) + 2 * ((STACK[0x8A0] & 0x7FFFFFFFFFFFFFF0) == 734014848) == -77660233;
  LODWORD(STACK[0x978]) = (((2 * ((v265 ^ 0x214F4508) - (v257 ^ 0x591DFCC6))) & 0xC6FEC57E) + (((v265 ^ 0x214F4508) - (v257 ^ 0x591DFCC6)) ^ 0x637F62BF) - 358768285) ^ 0x6E53F7B7 ^ v274;
  return (*(STACK[0x940] + 8 * ((4 * v256) | (16 * v256) | v276)))(v277 + 16);
}

uint64_t sub_2447E3DA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8)
{
  LODWORD(STACK[0x8F8]) = a6;
  LODWORD(STACK[0x8E0]) = v8;
  LODWORD(STACK[0x8B8]) = a8;
  STACK[0x8E8] = v9;
  v15 = STACK[0x8A8];
  v16 = (STACK[0x8A8] + 7573) | 0x840;
  v17 = 4 * (v9 - 1260594862);
  v18 = *(&STACK[0x7E00] + v17 + 56);
  LODWORD(STACK[0x8B0]) = v16;
  v19 = *(&off_278E1E490 + (v15 ^ 0x22D1)) + 4 * ((v16 ^ 0x48B6) & (v18 >> 8) ^ 0x8F);
  v20 = *(v11 + (((v18 ^ 0xC5) - 92) ^ v10));
  v21 = *(*(&off_278E1E490 + v15 - 7807) + (BYTE2(v18) ^ 0x6DLL) - 1);
  v22 = STACK[0x8E8] + 1;
  STACK[0x8E8] = v22;
  v20 -= 49;
  v23 = *(&STACK[0xDFA0] + v22 - 1260594862);
  HIDWORD(v25) = v21 ^ 0x1D05;
  LODWORD(v25) = v21 ^ 0x25660000;
  v24 = v25 >> 14;
  v26 = *(STACK[0x8C8] + (((HIBYTE(v23) ^ 0xD3) + 110) ^ 0x64));
  v27 = *(v11 + (((v23 ^ 0x2A) - 92) ^ 0x4ELL)) - 49;
  v28 = *(STACK[0x918] + (((BYTE1(v23) ^ 0x53) + 110) ^ 0xB0));
  HIDWORD(v25) = v27 ^ 0x11;
  LODWORD(v25) = (v27 ^ 0x20) << 24;
  LOBYTE(v27) = v25 >> 29;
  HIDWORD(v25) = v28 ^ 0x13;
  LODWORD(v25) = ~v28 << 24;
  v29 = v25 >> 31;
  HIDWORD(v25) = v20 ^ 0xFFFFFFF1;
  LODWORD(v25) = (v20 ^ 0x20) << 24;
  v30 = v25 >> 29;
  HIDWORD(v25) = ~v26;
  LODWORD(v25) = ((v26 + 78) ^ 0xE8) << 24;
  v31 = *(&STACK[0x7E00] + v22 - 1260594862);
  v32 = *(&off_278E1E490 + (v15 ^ 0x213E)) + 4 * (v27 ^ 0xBBu);
  v33 = *(&off_278E1E490 + (v15 ^ 0x27F4)) + 4 * ((7 * ((*(v14 + (((v31 >> 19) & 0xE0 | (v31 >> 27)) ^ 0xCCLL)) + 103) ^ 0xEE)) ^ 0x43u);
  v34 = ((v30 ^ 0xCE) - 92);
  LODWORD(v19) = *(v19 - 1) ^ v24;
  v35 = *(*(&off_278E1E490 + v15 - 7829) + (BYTE1(v31) ^ 0x2ELL) - 2) ^ *(*(&off_278E1E490 + (v15 ^ 0x2239)) + (v31 ^ 0x19) - 3);
  v36 = *(*(&off_278E1E490 + (v15 ^ 0x24C6)) + (v29 ^ 0x10u) - 1);
  v37 = (v25 >> 25) - ((2 * (v25 >> 25)) & 0xFFFFFFCA) - 27;
  v38 = ((v31 >> 9) & 0x80 | (v31 >> 17) & 0x7F) ^ 0x65;
  HIDWORD(v25) = v36 ^ 0x2C6;
  LODWORD(v25) = v36 ^ 0xB6572800;
  v39 = *(&off_278E1E490 + v15 - 7632) + 4 * ((-13 * (*(STACK[0x920] + ((v38 - 284683761 - 2 * (v38 & 0xF)) ^ 0xEF081238)) ^ (((v38 + 15 - 2 * (v38 & 0xF)) ^ 0x5E) - ((2 * ((v38 + 15 - 2 * (v38 & 0xF)) ^ 0x5E) + 60) & 0x6A) + 83) ^ 0x5E)) ^ 0x89u);
  v40 = (*(v33 - 1) - 759765279) ^ ((v35 ^ 0x1AA3E13E) + 1262833636 - 2 * ((v35 ^ 0x1AA3E13E) & 0x4B454FE5 ^ v35 & 1));
  v41 = *(&STACK[0xDFA0] + v17 + 56);
  v42 = *(STACK[0x970] + (v34 ^ 0x4E)) - 49;
  LODWORD(v32) = (v25 >> 11) ^ (*(*(&off_278E1E490 + v15 - 7824) + (BYTE2(v23) ^ 0x61) - 3) + 185193689) ^ (2042689313 - 1654583895 * *(v32 - 1));
  v43 = *(*(&off_278E1E490 + v15 - 7204) + (BYTE1(v41) ^ 0xD0) - 2);
  HIDWORD(v25) = v43 ^ 0x2CB7A56;
  LODWORD(v25) = v43 ^ 0x8FFFFFFF;
  v44 = (v25 >> 26) - ((2 * (v25 >> 26)) & 0x668E39C8);
  HIDWORD(v25) = v42 ^ 0xFFFFFFF1;
  LODWORD(v25) = (v42 ^ 0x20) << 24;
  v45 = v25 >> 29;
  v46 = *(*(&off_278E1E490 + (v15 ^ 0x26EF)) + (BYTE2(v41) ^ 0x10) - 2);
  HIDWORD(v25) = v46 ^ 0xF386B;
  LODWORD(v25) = v46 ^ 0x58300000;
  v47 = v25 >> 20;
  LODWORD(v41) = *(*(&off_278E1E490 + (v15 ^ 0x20B3)) + ((v41 >> 22) & 0x3FC ^ 0x274) - 8);
  LODWORD(v39) = *(v39 - 1) ^ v40;
  HIDWORD(v25) = v41 ^ 0xAAAAAAAA;
  LODWORD(v25) = v41 ^ 0xDB05FE60;
  LODWORD(v41) = v47 ^ *(*(&off_278E1E490 + (v15 ^ 0x2639)) + (*(&STACK[0xDFA0] + v17 + 56) ^ 0xD3)) ^ (v25 >> 4) ^ (v44 + 860298468);
  v48 = v32 - ((2 * v32) & 0x75AC9126);
  v49 = *(&off_278E1E490 + v15 - 8806) + 4 * (v45 ^ 0x79u);
  LODWORD(v32) = LODWORD(STACK[0x978]) ^ 0x476974CD;
  v50 = ((LODWORD(STACK[0x978]) ^ 0xE2C3260E ^ v39) - v32) ^ ((a7 ^ 0xE0DC491C ^ v39) - (a7 ^ 0x45761BDF));
  v51 = ((2 * a3) & 0xDF37F6EE ^ 0x1403940C) + (a3 ^ 0xE5DA3571);
  v52 = v51 + v12;
  v53 = ((v13 - 430277715) ^ 0xFA46194F) + v51;
  v54 = v48 + 987121811;
  v55 = *(*(&off_278E1E490 + (v15 ^ 0x2156)) + ((v18 >> 22) & 0x3FC ^ 0x118) - 8);
  v56 = v39 ^ 0x79275456;
  v57 = v53 - ((2 * v13 + 213186394) & 0xB73CD60) + 274990218;
  LODWORD(v18) = v19 ^ 0x6AB0F5F5 ^ *(v49 - 2);
  v58 = ((2 * (v13 - 334208419)) & 0xFFB7CF82 ^ 0x2A250282) + ((v13 - 334208419) ^ 0xEACD768C);
  LODWORD(v19) = ((2 * (v57 ^ (v52 - 885153609))) & 0x6FF5FDB6) + (v57 ^ (v52 - 885153609) ^ 0x37FAFEDB);
  LODWORD(v49) = v54 ^ *(*(&off_278E1E490 + v15 - 7933) + ((-13 * (*(STACK[0x920] + (v37 ^ 0xD2)) ^ ((v37 ^ 0xB4) - ((2 * (v37 ^ 0xB4) + 60) & 0x6A) + 83) ^ 0x5E)) ^ 0x4Du) - 3);
  v59 = v52 - v58 - 643957810 - ((2 * (v52 - v58) - 19529216) & 0xB465F59C);
  v60 = (LODWORD(STACK[0x8F8]) ^ 0xE23F7099 ^ (v12 - ((2 * v12 + 1974679644) & 0xFC17B4F6) - 1192921431)) - v58 + 875389001;
  LODWORD(v39) = v18 - ((2 * v18) & 0x9E938CD8);
  LODWORD(v18) = ((2 * v60) & 0xFF6EB8FE) + (v60 ^ 0xFFB75C7F);
  v61 = LODWORD(STACK[0x8E0]) ^ 0x293A837A;
  LODWORD(v33) = (v12 - 1160143826) ^ (v13 - ((2 * v13 + 405324986) & 0x38713798) + 139263529) ^ 0xA82FF7A2 ^ v49;
  v62 = ((2 * (v61 + (a7 ^ 0x45761BDF))) & 0x7D4D7EB6) + ((v61 + (a7 ^ 0x45761BDF)) ^ 0x3EA6BF5B);
  LODWORD(v32) = ((2 * ((v62 - 1051115355) ^ (v61 - v32))) & 0xBDC5AAFC) + ((v62 - 1051115355) ^ (v61 - v32) ^ 0x5EE2D57E);
  v63 = LODWORD(STACK[0x978]) ^ 0x527FE580;
  LODWORD(v34) = v62 - v63 - ((2 * (v62 - v63) + 1800761946) & 0x4B6BA6A0) - 1688171395;
  v64 = v59 ^ (v58 - 875389001);
  LODWORD(v39) = v55 ^ (v39 + 1330234988);
  LODWORD(v33) = v33 - 594737515 - ((2 * v33) & 0xB91A0D2A);
  v65 = (((v63 - 877754504) ^ 0xB4016292 ^ v41) - v63 + 877754504) ^ ((v34 ^ 0x11B4B1C2 ^ v41) - (v34 ^ 0xA5B5D350));
  v66 = v63 - v32;
  v67 = v33 ^ v56;
  v68 = (v19 - 1952474963) ^ v59 ^ (v58 - v19 + 63807122) ^ 0xDA32FACE;
  v69 = v68 + 1982685361 - ((2 * v68) & 0xEC5AC162);
  v70 = v67 - (v33 ^ 0xDC8D0695);
  v71 = (v32 + 1689764362) ^ v34 ^ (v63 - v32 + 714169590);
  LODWORD(v33) = (v71 ^ 0xA5B5D350) - 786688893 - 2 * ((v71 ^ 0xA5B5D350) & 0x511C1487 ^ v71 & 4);
  v72 = LODWORD(STACK[0x8F8]) ^ 0x1C34AAE2;
  LODWORD(STACK[0x8D8]) = v18;
  v73 = v72 + v18 + (v49 ^ 0xB4176C6E) + *(&STACK[0x79D0] + v17) + *(&STACK[0x79D0] + v17 + 36);
  LODWORD(v49) = v70 ^ v50;
  v74 = a7 ^ 0x42703470 ^ LODWORD(STACK[0x8B8]);
  LODWORD(v34) = v74 - v63;
  v75 = v73 - 27527823 + (v39 ^ 0x24DE4E6E);
  v76 = v19 - ((2 * v19 - 255553832) & 0xD751036E);
  LODWORD(v19) = v18 + v19;
  LODWORD(v39) = v65 ^ ((v64 ^ v39 ^ v41 ^ 0x4AEDD632) - (v64 ^ v39 ^ 0xFEECB4A0));
  v77 = v32 + v74 - v63;
  v78 = v32 - ((2 * v32 + 586473874) & 0x7E3CC56C) + 278451071;
  v76 -= 469055197;
  LODWORD(v32) = (LODWORD(STACK[0x8B8]) ^ 0xF8F9D050) - v34;
  v79 = v17 + 64;
  LODWORD(v22) = v32 + *(&STACK[0xD760] + v17) + *(&STACK[0xD760] + v17 + 36) + v49;
  *(&STACK[0x79D0] + v79) = v75 + 16144136;
  v80 = 841308152 - v75 - ((-2 * v75) & 0x644AAFF0);
  LODWORD(v32) = v22 + 1560279203 + v39 + 2016552461 - ((2 * (v22 + 1560279203 + v39)) & 0xF0644C1A);
  v81 = (((((v19 + 166506369) ^ 0x7832260D ^ v32) - ((2 * ((v19 + 166506369) ^ 0x7832260D ^ v32)) & 0xD751036E) - 341278281) ^ v76) - ((((v77 + 386772453) ^ 0x322557F8 ^ v80) + 1058955958 - ((2 * ((v77 + 386772453) ^ 0x322557F8 ^ v80)) & 0x7E3CC56C)) ^ v78)) ^ v69;
  v82 = STACK[0x8D0];
  LODWORD(v39) = *(STACK[0x8D0] + (((v81 >> 9) & 0x80 | (v81 >> 17) & 0x7F) ^ 0xEALL));
  LODWORD(v49) = ((v32 ^ ((v76 ^ 0xD98DD64F ^ v80) + 2016552461 - ((2 * (v76 ^ 0xD98DD64F ^ v80)) & 0xF0644C1A))) - (v78 ^ 0x3F1E62B6)) ^ v33 ^ ((v32 ^ (((v19 + 166506369) ^ 0x322557F8 ^ v80) + 2016552461 - ((2 * ((v19 + 166506369) ^ 0x322557F8 ^ v80)) & 0xF0644C1A))) - v77 - 386772453);
  v83 = STACK[0x948];
  v84 = *(STACK[0x948] + 4 * (((((((v19 - 127) ^ 0xD ^ v32) - ((2 * ((v19 - 127) ^ 0xD ^ v32)) & 0x6E) - 73) ^ v76) - ((((v77 - 27) ^ 0xF8 ^ v80) - 74 - ((2 * ((v77 - 27) ^ 0xF8 ^ v80)) & 0x6C)) ^ v78)) ^ v69) ^ 0xFu)) + 2083238470;
  LODWORD(STACK[0x8F8]) = v66 - 1492435560 + (v33 ^ 0xD11C1483);
  HIDWORD(v25) = v39 ^ 0x54;
  LODWORD(v25) = ~v39 << 24;
  LOBYTE(v66) = (v25 >> 31) ^ 0xD6;
  HIDWORD(v25) = v84 ^ 0x7D;
  LODWORD(v25) = v84 ^ 0x86770200;
  v85 = v25 >> 8;
  v86 = *(STACK[0x958] + 4 * ((-13 * v66) ^ 0x73u));
  HIDWORD(v25) = v86 ^ 0xC91292;
  LODWORD(v25) = v86 ^ 0xB9000000;
  LODWORD(v39) = v25 >> 24;
  v87 = *(v83 + 4 * (HIBYTE(v81) ^ 0xFA)) + 2083238470;
  HIDWORD(v25) = v87 ^ 0xF0AC;
  LODWORD(v25) = v87 ^ 0x7C820000;
  *(&STACK[0x7E00] + v79) = (*(v83 + 4 * (BYTE1(v81) ^ 0xE5u)) + 2083238470) ^ v85 ^ (v25 >> 16) ^ 0x860ECED8 ^ v39;
  LODWORD(v33) = *(v82 + (((v49 >> 1) & 0x80 | ((v49 ^ 0x6AA5) >> 9)) ^ 0x9BLL));
  v88 = STACK[0x950];
  v89 = *(STACK[0x950] + 4 * ((7 * ((*(STACK[0x938] + ((((v49 ^ 0xA5) >> 3) & 0x1F | (32 * ((v49 ^ 0x2976AA5) & 7))) ^ 0xBDLL)) + 103) ^ 0xEE)) ^ 0xE2u));
  HIDWORD(v25) = v33 ^ 0x54;
  LODWORD(v25) = ~v33 << 24;
  LOBYTE(v33) = v25 >> 31;
  HIDWORD(v25) = v89 ^ 0xF69;
  LODWORD(v25) = v89 ^ 0x2B7E8000;
  v90 = v25 >> 12;
  HIDWORD(v25) = v90 ^ 0x15;
  LODWORD(v25) = v90 ^ 0xB6B16200;
  LODWORD(v39) = v25 >> 8;
  v91 = *(STACK[0x960] + 4 * ((-13 * (v33 ^ 0xD6)) ^ 0xFAu));
  v92 = *(STACK[0x950] + 4 * (((v49 ^ 0x2976AA5) >> 16) ^ 0xE6u));
  HIDWORD(v25) = v91 ^ 8;
  LODWORD(v25) = v91 ^ 0x6BA90E90;
  LODWORD(v33) = v25 >> 4;
  HIDWORD(v25) = v92 ^ 0xF69;
  LODWORD(v25) = v92 ^ 0x2B7E8000;
  v93 = v25 >> 12;
  v94 = v33 ^ v39;
  HIDWORD(v25) = v93 ^ 0x52DB7;
  LODWORD(v25) = v93 ^ 0x51000000;
  v95 = (v25 >> 24) - 1425928955 - ((2 * (v25 >> 24)) & 0x56041A0A);
  v96 = (v94 & 0x10 ^ 0x79B1637A) + 2 * (v94 & 0x10);
  LODWORD(STACK[0x978]) = v74 - ((2 * v74 + 1243461616) & 0x8ED2E99A) - 327659323;
  *(&STACK[0xD760] + v79) = (((v32 ^ 0x7832260D) + 364576704) ^ 0x27FD47EB) - 107020352 + ((2 * ((v32 ^ 0x7832260D) + 364576704)) & 0x4FFA8FD6);
  v97 = *(v88 + 4 * ((v49 >> 24) ^ 0x9B));
  v98 = v96 - 16785408;
  if (((v95 ^ 0xAB020D00) & (v96 - 2041668474)) != 0)
  {
    v98 = -228415756 - v96;
  }

  HIDWORD(v100) = v97 ^ 0xF69;
  LODWORD(v100) = v97 ^ 0x2B7E8000;
  v99 = v100 >> 12;
  HIDWORD(v100) = v99 ^ 0x682B;
  LODWORD(v100) = v99 ^ 0x33EE0000;
  *(&STACK[0xDFA0] + v79) = v94 & 0xFFFFFFEF ^ (v100 >> 16) ^ 0xA1E7DEE6 ^ ((v95 ^ 0xAB020D05) - 2024883066 + v98);
  return (*(STACK[0x940] + 8 * ((252 * (STACK[0x8E8] != 1260594910)) ^ v15)))();
}

uint64_t sub_2447E4DD8(int a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v13 = STACK[0x650];
  v14 = 2 * LODWORD(STACK[0x650]) - 1253207672;
  v15 = LODWORD(STACK[0x8B0]) ^ 0x603296F6u;
  STACK[0x6D8] = v15;
  v16 = v13 - ((v15 ^ 0x880F9458) & v14) + 1321561655;
  v17 = LODWORD(STACK[0x58C]) - ((2 * LODWORD(STACK[0x58C]) + 386664892) & 0x1C11906A) + 1502530835;
  v18 = 44327860 - LODWORD(STACK[0x584]) - ((951192510 - 2 * LODWORD(STACK[0x584])) & 0x4C96BBAA);
  v19 = v8 ^ 0x293A837A;
  LODWORD(STACK[0x890]) = a1 ^ 0x465A74C5 ^ (((2 * ((a8 ^ v18 ^ 0xA14D727A) & 0x293A837B ^ (a8 ^ v18) & 1) - (a8 ^ v18 ^ 0xA14D727A) - 691700603) ^ v8) - (((v17 ^ 0x7003124E ^ a6) + 525565950 - ((2 * (v17 ^ 0x7003124E ^ a6)) & 0x3EA6FFFC)) ^ 0x293F098 ^ a2));
  LODWORD(STACK[0x8A0]) = v11 ^ ((v17 ^ 0xE23F7099 ^ ((v18 ^ 0x584087AE ^ a6) - 1912027083 - ((2 * (v18 ^ 0x584087AE ^ a6)) & 0x1C11906A))) - (a8 ^ 0x7062FAF)) ^ 0xFDD9660C ^ ((v17 ^ 0x1512B1F8 ^ ((v18 ^ 0xB918222B ^ a3) - 1912027083 - ((2 * (v18 ^ 0xB918222B ^ a3)) & 0x1C11906A))) - (v8 ^ 0x293A837A));
  v20 = LODWORD(STACK[0x5BC]) - ((2 * LODWORD(STACK[0x5BC]) + 690510934) & 0x7AF51870) + 1376696931;
  v21 = ((2 * (v10 - (v9 ^ (v12 - 334208419)))) & 0x7C7CFD16) + ((v10 - (v9 ^ (v12 - 334208419))) ^ 0x3E3E7E8B);
  v22 = a2 + v12 - 334208419 - v21;
  v23 = (v12 - 334208419) ^ 0xFE0BDA7B ^ a6 ^ (v21 - 1044283019);
  v24 = v23 - ((2 * v23) & 0x6D6FBD4C) - 1229463898;
  v25 = LODWORD(STACK[0x978]) ^ 0x476974CD;
  v26 = v19 + v25;
  v27 = a8 ^ LODWORD(STACK[0x978]);
  v28 = ((v12 + 1722322986) ^ 0x3B04B8FC) + v21;
  v29 = v28 + v21 - v22;
  v30 = ((2 * ((v11 ^ 0xE5359FFA) - (v27 ^ 0x406F5B62))) & 0x3EBCCFDC) + (((v11 ^ 0xE5359FFA) - (v27 ^ 0x406F5B62)) ^ 0x9F5E67EE);
  LODWORD(v15) = v26 - v30;
  v31 = ((v30 + 1621202962) ^ v27 ^ 0x406F5B62) - 1807608415 - 2 * (((v30 + 1621202962) ^ v27 ^ 0x406F5B62) & 0x144215A5 ^ ((v30 + 1621202962) ^ v27) & 4);
  v32 = -582968999 - LODWORD(STACK[0x5D0]) - ((759081130 - 2 * LODWORD(STACK[0x5D0])) & 0x8D428A08);
  v33 = v30 - (((2 * (v25 + 2056531405)) & 0x97FBBBFC ^ 0x81F28A04) + ((v25 + 2056531405) ^ 0x8F069AFD));
  v34 = (v20 ^ 0xE23F7099 ^ ((v24 ^ v32 ^ 0x70169BA2) + 1031441464 - 2 * ((v24 ^ v32 ^ 0x70169BA2) & 0x3D7A8C3C ^ (v24 ^ v32) & 4))) - (v31 ^ 0x944215A1);
  v35 = 1621202962 - v15 + (((v32 ^ 0xC6A14504 ^ (v22 + 1044283019)) + 1031441464 - ((2 * (v32 ^ 0xC6A14504 ^ (v22 + 1044283019))) & 0x7AF51870)) ^ v20);
  v36 = (v20 ^ (v22 + 1044283019) ^ 0x69F22207 ^ v24) - (v32 ^ (v15 - 1621202962) ^ 0x52E350A5 ^ v31);
  LODWORD(STACK[0x870]) = (v36 ^ (v28 - 1044283018)) - 1552946369 - ((2 * (v36 ^ (v28 - 1044283018))) & 0x46DFD67E);
  v37 = v33 - 1398835696;
  LODWORD(STACK[0x868]) = (v35 ^ (v33 - 1398835696) ^ v34) + 418183670 - ((2 * (v35 ^ (v33 - 1398835696) ^ v34)) & 0x31D9F3EC);
  LODWORD(STACK[0x978]) = v28 + 1571154720;
  v38 = (v28 - 1044283018) ^ (v28 + 1571154720) ^ v24;
  LODWORD(STACK[0x8A8]) = v38;
  v39 = v22 - ((2 * v22 + 876990570) & 0x5B60CFF4) - 2016194513;
  LODWORD(STACK[0x8F8]) = v39;
  v40 = ((2 * (v39 ^ (v29 - 517411318))) & 0xFEFFFBF6 ^ 0x5A60CBF4) + (v39 ^ (v29 - 517411318) ^ 0x52CF9A01);
  v41 = ((2 * (((v28 + 1571154720) ^ 0xE8DEED26) - v40 - 8389125)) & 0xFFD5DEBE) + ((((v28 + 1571154720) ^ 0xE8DEED26) - v40 - 8389125) ^ 0xFFEAEF5F);
  v42 = ((v41 + 1380513) ^ 0x41F555BF) + 656456159 - ((2 * ((v41 + 1380513) ^ 0x41F555BF)) & 0x4E4173BE);
  LODWORD(STACK[0x8D8]) = v42;
  v43 = v40 - v41 - ((2 * (v40 - v41) + 14017224) & 0x4645540) + 43850756;
  LODWORD(STACK[0x898]) = v43;
  v44 = (((v43 ^ 0x2322AA0) + 1574917570) ^ 0x7D6FBF3F) - 2104475455 + ((2 * ((v43 ^ 0x2322AA0) + 1574917570)) & 0xFADF7E7E);
  v45 = ((2 * (v44 + (v42 ^ 0x2720B9DF))) & 0x87AFFB7E) + ((v44 + (v42 ^ 0x2720B9DF)) ^ 0x43D7FDBF);
  v46 = v29 + 1427494872 - ((2 * (v29 + 1427494872) + 857960626) & 0x63E656EC) + 1267000271;
  v47 = (v38 ^ 0x5488AE3F) - ((2 * (v38 ^ 0x5488AE3F) + 1362189866) & 0xD9DDE8C6) - 1786272904;
  LODWORD(STACK[0x888]) = v47;
  v48 = (v46 ^ 0xDD1DDF15 ^ v47) - 1106546803;
  v49 = v48 + (v46 ^ 0x1731EAF4) - 2054767616 - ((2 * (v48 + (v46 ^ 0x1731EAF4))) & 0xB0D7800);
  v50 = v45 - 95190216;
  v51 = v45 - ((2 * v45 - 190380432) & 0x96E1D436) + 1170500947;
  v52 = (v44 ^ 0x4B70EA1B ^ v51) - 1047704547 - ((2 * (v44 ^ 0x4B70EA1B ^ v51)) & 0x831A983A);
  v53 = ((v45 - 95190216 + (v49 ^ 0x8586BC00)) ^ 0x77F7FE7F) - 2012741247 + ((2 * (v45 - 95190216 + (v49 ^ 0x8586BC00))) & 0xEFEFFCFE);
  v54 = ((2 * ((v52 ^ 0xC18D4C1D) + v53)) & 0xFBFD8CBE) + (((v52 ^ 0xC18D4C1D) + v53) ^ 0x7DFEC65F);
  v55 = v54 + 2093119345 - ((2 * v54 + 1021754108) & 0xBC9E518A) + 3794;
  v56 = ((v54 - 2113848927) ^ v53) + 1341321234 - ((2 * ((v54 - 2113848927) ^ v53)) & 0x9FE5E024);
  LODWORD(STACK[0x858]) = v56;
  v57 = v33 - ((2 * v33 - 1861763212) & 0xD5F58936) + 863937621;
  v58 = ((2 * (v30 - v15 - 1052561372 + (v57 ^ 0xEAFAC49B))) & 0xABFE99F0) + ((v30 - v15 - 1052561372 + (v57 ^ 0xEAFAC49B)) ^ 0xD5FF4CF8);
  LODWORD(v15) = v15 - ((2 * v15 + 1988469552) & 0x400850C2) + 1531378169;
  LODWORD(STACK[0x880]) = v15;
  v59 = ((2 * ((v58 + 704688904) ^ v15)) & 0x36F55FFE ^ 0x50C2) + ((v58 + 704688904) ^ v15 ^ 0xBB7E879E);
  v60 = v57;
  LODWORD(STACK[0x8E0]) = v57;
  v61 = (v57 ^ 0x22429BD) - v59 + 1572733222 - ((2 * ((v57 ^ 0x22429BD) - v59 - 1686458369)) & 0x8486A24E);
  LODWORD(STACK[0x8E8]) = v61;
  v62 = ((2 * (v59 + 1686458370 + (v61 ^ 0x3DBCAED8))) & 0x7F77DEFC) + ((v59 + 1686458370 + (v61 ^ 0x3DBCAED8)) ^ 0x3FBBEF7E);
  v63 = v62 + (v61 ^ 0x83B60498);
  v64 = v63 + 1548674875;
  v65 = ((v63 + 1548674875) ^ (v62 + 505636420)) + 1080614032 - ((2 * ((v63 + 1548674875) ^ (v62 + 505636420))) & 0x80D1B920);
  v66 = v60 ^ v37 ^ v31;
  LODWORD(STACK[0x878]) = v66;
  v67 = v58 - ((2 * v58 + 788441694) & 0x29D01E1E) + 1281844286;
  v68 = (v66 ^ 0x7EB8D13A) - ((2 * (v66 ^ 0x7EB8D13A) + 1362189866) & 0xC791EB94) - 1939757857;
  v69 = v68 ^ 0x7720FAC5 ^ v67;
  v70 = v69 + (v67 ^ 0xB22ACE8D);
  v71 = v70 + 442128072 + v63;
  v72 = ((2 * ((v65 ^ 0x4068DC90) + v71)) & 0xF5FDDFDA) + (((v65 ^ 0x4068DC90) + v71) ^ 0xFAFEEFED);
  v73 = ((v72 + 83955731) ^ v71) + 209300618 - ((2 * ((v72 + 83955731) ^ v71)) & 0x18F35914);
  v74 = (LODWORD(STACK[0x654]) ^ 0x7C0FE03C) - ((2 * (LODWORD(STACK[0x654]) ^ 0x7C0FE03C) + 2) & 0xE4072A0C) + 1912837383;
  v75 = v45 + 41290059;
  v76 = ((v45 + 41290059) ^ 0x5E4F28C5 ^ v55) + 783029320 - ((2 * ((v45 + 41290059) ^ 0x5E4F28C5 ^ v55)) & 0x5D582890);
  LODWORD(STACK[0x8B8]) = v76 ^ 0xC7195D61 ^ ((v55 ^ 0x1512B1F8 ^ ((v56 ^ v16 ^ 0xAEFEE499) + 1582246085 - ((2 * (v56 ^ v16 ^ 0xAEFEE499)) & 0xBC9E518A))) - (v74 ^ (v72 - 1586285584) ^ 0x7E7A398C ^ v73));
  v77 = v16 ^ ((v55 ^ v74 ^ 0x2C4CBDC3) - 199318157 - 2 * ((v55 ^ v74 ^ 0x2C4CBDC3) & 0x741EA57B ^ (v55 ^ v74) & 8));
  v78 = ((v74 ^ 0x28E3D4EC ^ v56) - 199318157 - ((2 * (v74 ^ 0x28E3D4EC ^ v56)) & 0xE83D4AE6)) ^ v16 ^ 0x1512B1F8;
  v79 = ((v72 - 1586285584) ^ (v63 + 1685155150)) + 1163525665 - ((2 * ((v72 - 1586285584) ^ (v63 + 1685155150))) & 0x8AB3FC42);
  v80 = v73 ^ 0xC79AC8A;
  v81 = v79 ^ (v78 - (v73 ^ 0xC79AC8A)) ^ 0xE8CE2602 ^ (v77 - v72 + 1586285584);
  LODWORD(STACK[0x850]) = v63 + v69;
  v82 = (((v50 ^ v48) + 1265691163 - ((2 * (v50 ^ v48)) & 0x96E1D436)) ^ v51) + v75;
  v83 = LODWORD(STACK[0x624]) - ((2 * LODWORD(STACK[0x624]) - 1400345028) & 0xEF825452) + 1308975431;
  v84 = 954763140 - LODWORD(STACK[0x628]) - ((-1458012214 - 2 * LODWORD(STACK[0x628])) & 0xC8B88F3E);
  v85 = v51 ^ 0xA2C5A332 ^ ((v52 ^ ((v49 ^ v83 ^ 0xF2479629) - 1047704547 - 2 * ((v49 ^ v83 ^ 0xF2479629) & 0x418D4C1F ^ (v49 ^ v83) & 2))) - (v65 ^ ((v84 ^ 0xE45C479F ^ (v70 - 1106546803)) + 1080614032 - ((2 * (v84 ^ 0xE45C479F ^ (v70 - 1106546803))) & 0x80D1B920))));
  v86 = v64 ^ ((((v84 ^ 0x61DAFB9F ^ v49) + 2009147945 - ((2 * (v84 ^ 0x61DAFB9F ^ v49)) & 0xEF825452)) ^ v83) - v70 + 1106546803) ^ ((((v84 ^ 0x25D10B82 ^ v52) + 2009147945 - ((2 * (v84 ^ 0x25D10B82 ^ v52)) & 0xEF825452)) ^ v83) - (v65 ^ 0x4068DC90));
  v87 = v86 - 1382557661 - ((2 * v86) & 0x5B2FB046);
  LODWORD(STACK[0x860]) = LODWORD(STACK[0x8D8]) ^ 0x844F52E0 ^ ((((LODWORD(STACK[0x5E8]) ^ 0x9E66432C ^ LODWORD(STACK[0x888])) + 36842144 - ((2 * (LODWORD(STACK[0x5E8]) ^ 0x9E66432C ^ LODWORD(STACK[0x888]))) & 0x4645540)) ^ 0xA6C2C182 ^ LODWORD(STACK[0x898])) - ((634863094 - LODWORD(STACK[0x5C0]) - ((256708308 - 2 * LODWORD(STACK[0x5C0])) & 0x1C616D18)) ^ v68 ^ 0xCB3A82C4 ^ (v62 - 1069281150)));
  v88 = -1825283356 - LODWORD(STACK[0x5C4]) - ((116253942 - 2 * LODWORD(STACK[0x5C4])) & 0xF7AE0D2);
  v89 = STACK[0x880];
  LODWORD(v15) = ((LODWORD(STACK[0x5D8]) ^ 0xE23F7099 ^ ((v88 ^ 0x310AAECF ^ LODWORD(STACK[0x8A8])) - 1313515815 - ((2 * (v88 ^ 0x310AAECF ^ LODWORD(STACK[0x8A8]))) & 0x636AADB2))) - (v66 ^ 0x7EB8D13A)) ^ ((((LODWORD(STACK[0x8F8]) ^ v88 ^ 0x2A0D1793) - 1313515815 - 2 * ((LODWORD(STACK[0x8F8]) ^ v88 ^ 0x2A0D1793) & 0x31B556DD ^ (LODWORD(STACK[0x8F8]) ^ v88) & 4)) ^ LODWORD(STACK[0x5D8])) - (LODWORD(STACK[0x880]) ^ 0x20042861));
  v90 = v15 - 352664421 - ((2 * v15) & 0xD5F58936);
  LODWORD(v15) = LODWORD(STACK[0x8F8]) ^ 0xE23F7099 ^ ((LODWORD(STACK[0x5D8]) ^ 0x702887F ^ LODWORD(STACK[0x8A8])) - ((2 * (LODWORD(STACK[0x5D8]) ^ 0x702887F ^ LODWORD(STACK[0x8A8]))) & 0x5B60CFF4) - 1380947974);
  LODWORD(STACK[0x888]) = LODWORD(STACK[0x5C8]) - 415251521;
  v91 = LODWORD(STACK[0x588]) - ((2 * LODWORD(STACK[0x588]) + 176837046) & 0x18A7ADB8) - 1852244041;
  LODWORD(STACK[0x8A8]) = LODWORD(STACK[0x978]) ^ 0x4BB10619 ^ (v15 - (((v88 ^ 0xF905A153 ^ LODWORD(STACK[0x878])) + 537143393 - ((2 * (v88 ^ 0xF905A153 ^ LODWORD(STACK[0x878]))) & 0x400850C2)) ^ v89));
  v92 = v82 + (v55 ^ 0x5E4F28C5) - ((2 * (v82 + (v55 ^ 0x5E4F28C5))) & 0x79DE9EB6) + 1022316379;
  v93 = v92 ^ 0xB92B2FF5;
  v94 = ((LODWORD(STACK[0x858]) ^ 0x4FF2F012) + (v55 ^ 0x5E4F28C5) - ((2 * ((LODWORD(STACK[0x858]) ^ 0x4FF2F012) + (v55 ^ 0x5E4F28C5))) & 0xE491D994) - 230101814) ^ v92;
  v95 = (v94 ^ 0x31585C6E) + (v76 ^ 0x2EAC1448) - ((2 * ((v94 ^ 0x31585C6E) + (v76 ^ 0x2EAC1448)) + 857639060) & 0xB8C1F688) - 168804466;
  v96 = v54 + 529428445 + v93 + 1793235748 - ((2 * (v54 + 529428445 + v93)) & 0xD5C53648);
  v97 = LODWORD(STACK[0x850]) + v72 - ((2 * (LODWORD(STACK[0x850]) + v72) - 2015354474) & 0x89D72856) - 1998871306;
  v98 = v80 + v72 - 1586285584 - ((2 * (v80 + v72 - 1586285584)) & 0xFC453E8C) + 2116198214;
  v99 = v98 ^ v97;
  v100 = (v98 ^ v97 ^ 0x4536F492) + (v79 ^ 0x4559FE21) - ((2 * ((v98 ^ v97 ^ 0x4536F492) + (v79 ^ 0x4559FE21)) + 857639060) & 0xCA1FF4E4) - 23118148;
  v101 = (LODWORD(STACK[0x658]) ^ 0xBEFB2275) - ((2 * (LODWORD(STACK[0x658]) ^ 0xBEFB2275) + 2) & 0x8E9B9FF8) + 1196281853;
  v102 = v72 - 1567734193 + (v97 ^ 0x412FF485) + 279844957 - ((2 * (v72 - 1567734193 + (v97 ^ 0x412FF485))) & 0x215C30BA);
  LODWORD(STACK[0x8F8]) = v100 ^ ((v91 ^ 0xE23F7099 ^ ((v94 ^ v101 ^ 0x6BD51CF4) + 206821084 - 2 * ((v94 ^ v101 ^ 0x6BD51CF4) & 0xC53D6DE ^ (v94 ^ v101) & 2))) - (v99 ^ 0xBAC90B6D)) ^ 0x8CBAB35B ^ ((((v101 ^ 0x2DAF54D8 ^ v96) + 206821084 - ((2 * (v101 ^ 0x2DAF54D8 ^ v96)) & 0x18A7ADB8)) ^ v91) - (v102 ^ 0x10AE185D));
  LODWORD(STACK[0x978]) = v95 ^ 0xF1F72367 ^ ((v96 ^ 0xE23F7099 ^ ((v94 ^ v91 ^ 0x20CB05D4) + 1793235748 - 2 * ((v94 ^ v91 ^ 0x20CB05D4) & 0x6AE29B25 ^ (v94 ^ v91) & 1))) - (((v101 ^ 0xFD84C491 ^ v99) + 279844957 - ((2 * (v101 ^ 0xFD84C491 ^ v99)) & 0x215C30BA)) ^ v102));
  v103 = v95 ^ v94;
  v104 = (v100 ^ v99 ^ 0xDFC6F11F) + (v98 ^ v102 ^ 0xEB48E7B5);
  LODWORD(STACK[0x880]) = (v104 ^ 0x7BFAD5F9) - 427294721 + ((2 * v104) & 0xF7F5ABF2);
  LODWORD(STACK[0x898]) = LODWORD(STACK[0x8E0]) ^ 0xF03214D0 ^ v90;
  v105 = (((v98 ^ 0xFBE6FFE8) - 2077090918) ^ 0xBBFBEBB7) + 1568128764 + ((2 * ((v98 ^ 0xFBE6FFE8) - 2077090918)) & 0x77F7D76E);
  v106 = *(STACK[0x940] + 8 * SLODWORD(STACK[0x8B0]));
  v107 = STACK[0x6D8];
  STACK[0x8E8] = 0x100000000;
  STACK[0x858] = &STACK[0xD760];
  STACK[0x850] = &STACK[0x79D0];
  LODWORD(STACK[0x580]) = v107 ^ 0x6032FE57;
  LODWORD(STACK[0x6D4]) = v107 ^ 0x59A71F85;
  LODWORD(STACK[0x6D0]) = v107 - 1613945839;
  LODWORD(STACK[0x6C4]) = v107 ^ 0x6032DDA0;
  LODWORD(STACK[0x8B0]) = STACK[0x66C];
  return v106(v105, v103 ^ 0xC1147B13, v81, v85, 3596471285, v87);
}

uint64_t sub_2447E63A0(int a1, int a2, int a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x700]) = a1;
  LODWORD(STACK[0x840]) = v8;
  LODWORD(STACK[0x828]) = v9;
  STACK[0x830] = v17;
  STACK[0x838] = v14;
  LODWORD(STACK[0x8E0]) = STACK[0x978];
  v20 = STACK[0x8F8];
  LODWORD(STACK[0x8D8]) = STACK[0x8F8];
  v21 = STACK[0x8B8];
  LODWORD(STACK[0x8F8]) = STACK[0x8B8];
  LODWORD(STACK[0x978]) = a3;
  LODWORD(STACK[0x878]) = a6 ^ v12;
  v23 = a4 ^ 0xE9B54929;
  LODWORD(STACK[0x6BC]) = a3 ^ v12;
  LODWORD(STACK[0x72C]) = (a6 ^ v12) & (v20 ^ v21) ^ (a3 ^ v12) & (a4 ^ 0xE9B54929);
  v24 = STACK[0x880];
  v25 = v11 - LODWORD(STACK[0x880]) - ((LODWORD(STACK[0x6D4]) + 2 * (v11 - LODWORD(STACK[0x880]))) & 0x7B840AB2) + 1519183350;
  LODWORD(STACK[0x718]) = a1 - 427010739;
  LODWORD(STACK[0x720]) = v25;
  v26 = ((a1 - 427010739) ^ 0x3DC20559 ^ v25) + (v25 ^ 0x3DC20559);
  v27 = ((2 * v26) & 0xBFDCE6EE) + (v26 ^ 0xDFEE7377);
  v28 = v27 - ((2 * v27 - 645624178) & 0x9628E310) + 936818895;
  v29 = ((2 * ((v25 ^ 0xB9B5D22D ^ v28) - (v28 ^ 0xCB147188))) & 0xBFFBEFFA) + (((v25 ^ 0xB9B5D22D ^ v28) - (v28 ^ 0xCB147188)) ^ 0xDFFDF7FD);
  LODWORD(STACK[0x8B8]) = a8 ^ 0xBE85838C;
  v31 = ((2 * (v28 ^ (v24 - v27 + 1370253240))) & 0xEDBFECFC ^ 0x8428E010) + (v28 ^ (v24 - v27 + 1370253240) ^ 0x3DCB87F6);
  v32 = (a8 ^ 0xBE85838C) + v24 - 1652741624 - ((2 * ((a8 ^ 0xBE85838C) + v24 - 1652741624) + 748021366) & 0x752190E2) - 790905940;
  LODWORD(STACK[0x708]) = v32;
  v33 = (v32 ^ 0xBFEC89B9) + 153094530 + v31 + 837708969 - ((2 * ((v32 ^ 0xBFEC89B9) + 153094530 + v31)) & 0x63DCD952);
  LODWORD(STACK[0x7C4]) = v33;
  v34 = v29;
  LODWORD(STACK[0x7D4]) = v29;
  v35 = (v33 ^ (v29 + 537004035) ^ 0x31EE6CA9) - 366113558 - 2 * ((v33 ^ (v29 + 537004035) ^ 0x31EE6CA9) & 0x6A2D8CFA ^ (v33 ^ (v29 + 537004035)) & 0x10);
  v36 = v27 - ((2 * v27 - 1998825866) & 0xF0D104CA) - 1126781536;
  LODWORD(STACK[0x7A8]) = v36;
  v37 = ((2 * (v35 ^ v36)) & 0xFF48C7EE ^ 0x2408050E) + (v35 ^ v36 ^ 0x6DE16D78);
  LODWORD(STACK[0x78C]) = v29 - v37;
  v38 = ((2 * ((v34 - v37 + 1498044755) ^ (v31 - 1169684049))) & 0xFCCFFDFE ^ 0x480A94A2) + ((v34 - v37 + 1498044755) ^ (v31 - 1169684049) ^ 0x5AE2B4AE);
  v39 = ((v38 - 2120744703) ^ (v31 + 1941000686)) + 936395965 - ((2 * ((v38 - 2120744703) ^ (v31 + 1941000686))) & 0x6FA0897A);
  LODWORD(STACK[0x7A0]) = v35 ^ 0xEA2D8CEA;
  v40 = (v35 ^ 0xEA2D8CEA) - v38 + 2123920528 + ((1987566770 - 2 * ((v35 ^ 0xEA2D8CEA) - v38)) | 0x8C573A2D);
  LODWORD(STACK[0x820]) = v40;
  LODWORD(STACK[0x7E0]) = v38;
  v41 = ((2 * (v40 ^ (v38 - 1077705023))) & 0xEFBCF59E ^ 0x63A8C592) + (v40 ^ (v38 - 1077705023) ^ 0xCE0A1826);
  v42 = v37 - (v34 - v37);
  LODWORD(STACK[0x7BC]) = v42;
  v42 += 246525371;
  LODWORD(STACK[0x81C]) = v42;
  v43 = (v39 ^ 0x37D044BD) + v42 + v41;
  v44 = v41 - ((2 * v41 + 1524822268) & 0xC9B1FE70) + 306870198;
  LODWORD(STACK[0x7DC]) = v44;
  LODWORD(STACK[0x7EC]) = v43 + 136414513;
  v45 = ((v43 + 136414513) ^ v15 ^ v44) + 892127392 - ((2 * ((v43 + 136414513) ^ v15 ^ v44)) & 0x6A599140);
  v46 = (v45 ^ 0x352CC8A0) - ((2 * (v45 ^ 0x352CC8A0) + 431886896) & 0x448CA900) - 282763880;
  LODWORD(STACK[0x800]) = v46;
  v47 = ((2 * (v46 ^ (v38 + 164221760 + (v39 ^ 0xD267DF9C)))) & 0xF59B75FE ^ 0x44882100) + (v46 ^ (v38 + 164221760 + (v39 ^ 0xD267DF9C)) ^ 0x588BEE7F);
  v48 = v45 ^ v39;
  LODWORD(STACK[0x7F0]) = v48 ^ 0xFFF644A1;
  v49 = (v46 ^ 0xA2465480) + (v48 ^ 0xFFF644A1);
  v50 = v47;
  LODWORD(STACK[0x7C0]) = v47 - 1599618321;
  v51 = v49 + v47 - 1599618321 + 1747804911 - ((2 * (v49 + v47 - 1599618321)) & 0xD05AC5DE);
  LODWORD(STACK[0x7D0]) = v43;
  LODWORD(STACK[0x7D8]) = v48 ^ 0x6F25272E;
  v47 += 16942351;
  v52 = v50;
  LODWORD(STACK[0x7C8]) = v50;
  v53 = v47 + (v48 ^ 0x6F25272E ^ (v43 - ((2 * v43 + 497187000) & v18) - 5988373));
  v54 = ((2 * v53) & 0xFFA7E5BE ^ 0x7825E1BC) + (v53 ^ 0xC3C10301);
  LODWORD(STACK[0x810]) = v54;
  v55 = v54 + v52 - ((2 * (v54 + v52) + 1101504544) & 0xBE78F004) + 1067026;
  LODWORD(STACK[0x7B0]) = v51;
  v56 = ((2 * ((v55 ^ 0xDF3C7802) + (v51 ^ 0x682D62EF))) & 0x8DBFF6DE) + (((v55 ^ 0xDF3C7802) + (v51 ^ 0x682D62EF)) ^ 0xC6DFFB6F);
  LODWORD(STACK[0x7FC]) = v56;
  LODWORD(STACK[0x808]) = ((v56 + 958399633) ^ v55 ^ 0x108B877D) + ((2 * ((v56 + 958399633) ^ v55)) & 0x9F6FFEFE ^ 0x9E68F004);
  v57 = v47 ^ v48 ^ v51;
  LODWORD(STACK[0x79C]) = v57;
  v57 ^= 0x97DB264E;
  LODWORD(STACK[0x7A4]) = v57;
  LODWORD(STACK[0x880]) = (v55 ^ (v57 + 1357623464) ^ 0xA593A5F8) - 405604354 + ((2 * (v55 ^ (v57 + 1357623464))) & 0xF55FBBF4 ^ 0xB458B004);
  v58 = ((2 * a2) & 0xDFEFDBEA ^ 0x2C18A0) + (a2 ^ 0x7FE9E3A5);
  LODWORD(STACK[0x784]) = v58;
  v59 = ((2 * v10) & 0xFAB37EB6 ^ 0xB2126090) + (v10 ^ 0xA4F08FB7);
  v60 = v58 - v59 - ((2 * (v58 - v59) + 449028812) & 0x97FA31E0) - 648091050;
  LODWORD(STACK[0x740]) = v60;
  v61 = ((v13 - ((2 * v13 + 1600239064) & 0x97FA31E0) + 2074997724) ^ v60) + (v60 ^ 0xCBFD18F0);
  v62 = ((2 * v61) & 0x2F5FE7DE) + (v61 ^ 0x97AFF3EF);
  v63 = v16;
  v64 = v59 + (v16 ^ 0x11E295E6) + 44449957 - ((2 * (v59 + (v16 ^ 0x11E295E6) + 44449957) + 748021366) & 0x76580EE0);
  v65 = v60 ^ 0x849EBE0C ^ (v62 - 1258240305);
  v66 = ((2 * ((v62 - 1258240305) ^ (v59 - v62 + 1855389389))) & 0xDE95F17A) + ((v62 - 1258240305) ^ (v59 - v62 + 1855389389) ^ 0xEF4AF8BD);
  v67 = v64 + 1366751915;
  v68 = ((v64 + 1366751915) ^ 0x3E5046B8) + 280299331 + v66 - 939287376 - ((2 * (((v64 + 1366751915) ^ 0x3E5046B8) + 280299331 + v66)) & 0x90073960);
  LODWORD(STACK[0x714]) = v68;
  v69 = v65 - v62;
  LODWORD(STACK[0x6FC]) = v65 - v62;
  v70 = ((v65 - v62 + 1258240305) ^ 0xC8039CB0 ^ v68) - 1116932640 - ((2 * ((v65 - v62 + 1258240305) ^ 0xC8039CB0 ^ v68)) & 0x7AD9EBC0);
  v71 = ((2 * (v70 ^ (v62 - 1934841149))) & 0xB3F7FCBE ^ 0x32D1E880) + (v70 ^ (v62 - 1934841149) ^ 0xE4970BBF);
  v72 = v69 - v71;
  LODWORD(STACK[0x6EC]) = v69 - v71;
  v73 = ((v69 - v71 - 559995671) ^ (v66 - 1042479248)) - ((2 * ((v69 - v71 - 559995671) ^ (v66 - 1042479248))) & 0xF948408) + 130695684;
  v74 = ((2 * v73) & 0xD1BFF5AC ^ 0x409E10A8) + (v73 ^ 0x4B90F283);
  v75 = ((2 * v73) & 0xDE84BE1C ^ 0x46841008) + (v73 ^ 0x4C0D575B);
  LODWORD(STACK[0x7AC]) = v75;
  LODWORD(STACK[0x71C]) = v70 ^ 0xBD6CF5E0;
  v76 = (v70 ^ 0xBD6CF5E0) - v75 - ((2 * ((v70 ^ 0xBD6CF5E0) - v75) + 188539754) & 0x181F5D78) - 1045553039;
  LODWORD(STACK[0x790]) = v76;
  LODWORD(STACK[0x738]) = v74;
  v77 = ((2 * (v76 ^ (v74 - 716469526))) & 0x5F97B33A ^ 0x18171138) + (v76 ^ (v74 - 716469526) ^ 0xA3C47721);
  v78 = v73 ^ (v66 + 2068205487);
  v79 = v77 - ((2 * v77 - 351784096) & 0xAD00338C);
  LODWORD(STACK[0x710]) = v71 - v72;
  v80 = v71 - v72 + (v78 ^ 0x234F0855) - 13013472 + v77;
  v81 = v80 + 507287781 - ((2 * v80) & 0x3C7931CA);
  v82 = (v79 + 1275343734) ^ v81;
  v83 = v82;
  LODWORD(STACK[0x734]) = v82;
  v84 = (v82 ^ 0xC8BC8123) + 1289685272;
  LODWORD(STACK[0x770]) = v84;
  v85 = ((2 * v84) & 0x7BEFD5FC) + (v84 ^ 0xBDF7EAFE);
  v86 = (v85 + 1107825922) ^ ((v78 ^ 0xC6F89374) + 525457257 + v74);
  v87 = v86 - 1453405977 - ((2 * v86) & 0x52BD91CE);
  LODWORD(STACK[0x730]) = v87;
  v88 = v87 ^ 0xA95EC8E7;
  v89 = ((2 * ((v87 ^ 0xA95EC8E7) - 1686798866)) & 0xFDEBB6C) + (((v87 ^ 0xA95EC8E7) - 1686798866) ^ 0x7EF5DB6);
  v90 = v83 ^ v78;
  v91 = v83 ^ v78 ^ 0x81EC47A5 ^ ((v81 ^ 0x1E3C98E5) - ((2 * (v81 ^ 0x1E3C98E5) + 224357974) & 0x2E2A0CDE) - 37438054);
  v92 = ((v88 - 70238194) ^ 0x7FFF4FED) - 2147438573 + ((2 * (v88 - 70238194)) & 0xFFFE9FDA);
  v93 = (STACK[0x6A4] & (2 * (v92 + v91)) ^ 0x78256394) + ((v92 + v91) ^ 0xC1E94235);
  v94 = v90;
  LODWORD(STACK[0x70C]) = v90;
  v95 = (v90 ^ 0x16F941CA) + v85 + 974698316 + v89 - 938970457 - ((2 * ((v90 ^ 0x16F941CA) + v85 + 974698316 + v89)) & 0x9010E54E);
  v96 = v89 + 2048192095 + v93;
  LODWORD(STACK[0x704]) = v95;
  v97 = ((2 * (v96 + (v95 ^ 0xC80872A7))) & 0xFF6759DE) + ((v96 + (v95 ^ 0xC80872A7)) ^ 0x7FB3ACEF);
  v98 = (v96 ^ 0xE23F7099) + 2099015133 - 2 * ((v96 ^ 0xE23F7099) & 0x7D1C6DDF ^ v96 & 2);
  LODWORD(STACK[0x788]) = v93 + 1386202170 + v97;
  LODWORD(STACK[0x778]) = v97 - ((2 * v97 + 1052767668) & 0x23C52BCC);
  LODWORD(STACK[0x750]) = (v98 ^ 0x7D1C6DDD ^ (v97 - 2142481647)) - ((2 * (v98 ^ 0x7D1C6DDD ^ (v97 - 2142481647))) & 0xE442FD92);
  v99 = v92 ^ v94 ^ v95;
  LODWORD(STACK[0x748]) = ((v99 ^ 0xDEF1336D) - 2 * (((v99 ^ 0xDEF1336D) + 1357623464) & 0x7D1C6DDF ^ v99 & 2) - 838328699) ^ v98;
  v100 = STACK[0x918];
  v101 = *(STACK[0x918] + (((BYTE1(a6) ^ 0xD8) + 110) ^ 0xB0));
  HIDWORD(v102) = v101 ^ 0x13;
  LODWORD(v102) = ~v101 << 24;
  LOBYTE(v101) = v102 >> 31;
  v103 = STACK[0x768];
  v104 = *(STACK[0x768] + 4 * (a6 ^ 0x6Fu)) + 98460627;
  HIDWORD(v102) = v104 ^ 0xFFFFFFC3;
  LODWORD(v102) = v104 ^ 0x8F775200;
  v105 = STACK[0x8E8];
  STACK[0x6F0] = v105;
  v106 = *(&off_278E1E490 + SLODWORD(STACK[0x6D0])) + 4 * (v105 ^ 0xE);
  v107 = STACK[0x8C0];
  v108 = *(STACK[0x8C0] + 4 * (v101 ^ 0x10u)) - 639563628;
  LODWORD(STACK[0x84C]) = a6;
  v109 = *(STACK[0x928] + (((a6 >> 11) & 0xE0 | (a6 >> 19) & 0x1F) ^ 0x5CLL));
  v110 = (v102 >> 8) ^ v108;
  HIDWORD(v102) = v109 ^ 0x39;
  LODWORD(v102) = v109 << 24;
  v111 = *(v103 + 4 * ((7 * ((v102 >> 30) ^ 0x88)) ^ 0x2Au)) + 98460627;
  HIDWORD(v102) = v111 ^ 0x11D1EE;
  LODWORD(v102) = v111 ^ 0x2F000000;
  v112 = v110 ^ (v102 >> 24);
  v113 = STACK[0x970];
  v114 = *(STACK[0x970] + (((HIBYTE(a6) ^ 0x82) - 92) ^ 0x4ELL)) - 49;
  HIDWORD(v102) = v114 ^ 0xFFFFFFF1;
  LODWORD(v102) = (v114 ^ 0x20) << 24;
  v115 = *(v103 + 4 * ((v102 >> 29) ^ 0x2Au)) + 98460627;
  HIDWORD(v102) = v115 ^ 0xD3EE;
  LODWORD(v102) = v115 ^ 0xAF530000;
  v116 = v112 ^ (v102 >> 16);
  v117 = (a8 ^ 0xE0F51C31 ^ v116) - LODWORD(STACK[0x8B8]);
  v118 = *(v107 + 4 * (a4 ^ 0x39u)) - 639563628;
  HIDWORD(v102) = v118 ^ 0xFFFFFFE7;
  LODWORD(v102) = v118 ^ 0x1E399D00;
  v119 = v102 >> 8;
  v120 = *(v100 + (((BYTE2(a4) ^ 0xD3) + 110) ^ 0xB0));
  HIDWORD(v102) = v120 ^ 0x13;
  LODWORD(v102) = ~v120 << 24;
  v121 = *(v103 + 4 * ((v102 >> 31) ^ 0xB8u)) + 98460627;
  HIDWORD(v102) = v121 ^ 0x7752C3;
  LODWORD(v102) = v121 ^ 0x8FFFFFFF;
  v122 = v102 >> 24;
  v123 = *(v107 + 4 * (HIBYTE(a4) ^ 0x2F)) - 639563628;
  HIDWORD(v102) = v123 ^ 0x9EA5;
  LODWORD(v102) = v123 ^ 0xDE520000;
  LODWORD(STACK[0x8B8]) = a4;
  LODWORD(v105) = v119 ^ (*(v107 + 4 * (BYTE1(a4) ^ 0xC1u)) - 639563628) ^ (v102 >> 16) ^ v122;
  LODWORD(STACK[0x6E8]) = v105;
  v124 = (v13 - ((2 * v13 + 526497240) & 0x23C52BCC) - 1047301934) ^ v63 ^ v105;
  v125 = v117 ^ (427010739 - LODWORD(STACK[0x700]) + (LODWORD(STACK[0x718]) ^ 0x5E709FBD ^ v116)) ^ ((v116 ^ v124 ^ 0x40050029) - (v124 ^ 0x1E759F94));
  v126 = STACK[0x8E0];
  v127 = (LODWORD(STACK[0x8E0]) ^ LODWORD(STACK[0x978])) & STACK[0x878];
  v128 = STACK[0x8D8];
  LODWORD(v105) = LODWORD(STACK[0x8D8]) ^ 0xE9B54929;
  LODWORD(STACK[0x700]) = v105;
  v129 = v105 & v23 ^ v127;
  LODWORD(v105) = LODWORD(STACK[0x8F8]) ^ 0xE9B54929;
  LODWORD(STACK[0x6C0]) = v105;
  v130 = v128 ^ v105 & v23 ^ v129;
  v131 = (LODWORD(STACK[0x708]) ^ v130 ^ 0xD3258158) - (LODWORD(STACK[0x708]) ^ 0x3A90C871);
  LODWORD(STACK[0x718]) = v126 ^ 0xAD97D823;
  v132 = LODWORD(STACK[0x72C]) ^ (v126 ^ 0xAD97D823) & v23 ^ v126;
  v133 = (-538021001 - v27 + ((v27 + 538021001) ^ v130 ^ 0xE9B54929)) ^ v131 ^ ((v130 ^ 0xFF0E967A ^ v132 ^ v67 ^ (v62 + 1750076433)) - (v132 ^ v67 ^ (v62 + 1750076433) ^ 0x16BBDF53));
  LODWORD(v105) = LODWORD(STACK[0x840]) + LODWORD(STACK[0x888]) + (LODWORD(STACK[0x720]) ^ 0x8D5E5C5A);
  v134 = *STACK[0x850];
  STACK[0x850] += 4;
  LODWORD(v105) = v105 + v134 + (*(v106 - 2) ^ 0xF1BDD13F);
  v135 = STACK[0x890];
  v136 = ((LODWORD(STACK[0x890]) >> 1) | ((STACK[0x890] & 1) << 7)) ^ 0x68;
  v137 = v136 + 1651199502 - 2 * (v136 & 0x1F ^ (LODWORD(STACK[0x890]) >> 1) & 0x11);
  v138 = STACK[0x758];
  v139 = *(STACK[0x758] + 4 * ((-13 * (((v137 ^ 0x5F) - ((2 * (v137 ^ 0x5F) + 60) & 0x6A) + 83) ^ *(STACK[0x920] + (v137 ^ 0x626B4E39u)) ^ 0x5E)) ^ 0x7Eu));
  HIDWORD(v102) = v139 ^ 0x7D;
  LODWORD(v102) = v139 ^ 0xBE96F300;
  v140 = v102 >> 8;
  LODWORD(v105) = v105 + v133 + 1370142410;
  v141 = *(STACK[0x758] + 4 * (BYTE2(LODWORD(STACK[0x890])) ^ 0x17u));
  LODWORD(v107) = v105 + v125;
  HIDWORD(v102) = v141 ^ 0x32C93A;
  LODWORD(v102) = v141 ^ 0xF5000000;
  LODWORD(v105) = v102 >> 24;
  v142 = STACK[0x760];
  v143 = *(STACK[0x760] + 4 * (HIBYTE(LODWORD(STACK[0x890])) ^ 0x69u));
  HIDWORD(v102) = v143 ^ 0xCC8E;
  LODWORD(v102) = v143 ^ 0x26940000;
  v144 = v105 ^ *(STACK[0x758] + 4 * (BYTE1(LODWORD(STACK[0x890])) ^ 0x50u)) ^ (v102 >> 16) ^ (v140 - 1862372638 - ((2 * v140) & 0x21FCE5C4));
  LODWORD(v105) = STACK[0x898];
  LODWORD(STACK[0x840]) = STACK[0x898];
  v145 = STACK[0x868];
  v146 = v105 ^ 0x18ECF9F6;
  v147 = (v105 ^ 0x18ECF9F6) & (v135 ^ 0xA36FEB3F);
  LODWORD(STACK[0x898]) = STACK[0x868];
  LODWORD(v105) = v145 ^ 0x18ECF9F6;
  v148 = v147 ^ (v135 ^ 0xA36FEB3F) & (v145 ^ 0x18ECF9F6);
  v149 = STACK[0x8A8];
  v150 = STACK[0x870];
  v151 = LODWORD(STACK[0x8A8]) ^ 0xA36FEB3F;
  LODWORD(STACK[0x8A8]) = STACK[0x870];
  v152 = v150 ^ 0xA36FEB3F;
  v153 = STACK[0x8A0];
  v154 = LODWORD(STACK[0x8A0]) ^ 0x18ECF9F6;
  v155 = v148 ^ v146 & (v150 ^ 0xA36FEB3F) ^ v151 & v105 ^ v154 & v151 ^ v154 & (v150 ^ 0xA36FEB3F);
  v156 = STACK[0x6EC];
  v157 = v155 + LODWORD(STACK[0x6FC]) + (v144 ^ 0x7EC08B1E) + v107 + LODWORD(STACK[0x6EC]) + 2122012022 - ((2 * (v155 + LODWORD(STACK[0x6FC]) + (v144 ^ 0x7EC08B1E) + v107 + LODWORD(STACK[0x6EC]) + 682100498)) & 0xABA69CC8);
  v89 -= 133127606;
  LODWORD(v100) = *(v138 + 4 * (LODWORD(STACK[0x8A0]) ^ 0x4Cu));
  HIDWORD(v102) = v100 ^ 0xBC;
  LODWORD(v102) = v100 ^ 0xE63AF900;
  v158 = v102 >> 8;
  LODWORD(v100) = *(v113 + (((HIWORD(LODWORD(STACK[0x8A0])) ^ 0x27) - 92) ^ 0x4ELL)) - 49;
  HIDWORD(v102) = v100 ^ 0xFFFFFFF1;
  LODWORD(v102) = (v100 ^ 0x20) << 24;
  v159 = *(v142 + 4 * ((v102 >> 29) ^ 0xA3u));
  HIDWORD(v102) = v159 ^ 0x1CE40B;
  LODWORD(v102) = v159 ^ 0x34000000;
  v160 = v102 >> 24;
  LODWORD(v100) = *(v142 + 4 * (HIBYTE(LODWORD(STACK[0x8A0])) ^ 0x2Fu));
  HIDWORD(v102) = v100 ^ 0xF3C9;
  LODWORD(v102) = v100 ^ 0xCD600000;
  v161 = v160 ^ *(v138 + 4 * ((7 * ((*(STACK[0x938] + (((v153 >> 3) & 0xE0 | (v153 >> 11)) ^ 0xDBLL)) + 103) ^ 0xEE)) ^ 0xBBu)) ^ (v158 - 1862372638 - ((2 * v158) & 0x21FCE5C4)) ^ (v102 >> 16);
  v162 = LODWORD(STACK[0x714]) ^ (v62 - ((2 * v62 + 425284998) & 0x29DB202E) - 1583727910) ^ v144;
  v163 = ((v162 ^ v161 ^ 0xDCEE0CA7) - (v162 ^ 0xA22E87B9)) ^ ((LODWORD(STACK[0x7A8]) ^ 0x6A8097B ^ v161) - (LODWORD(STACK[0x7A8]) ^ 0x78688265)) ^ ((LODWORD(STACK[0x7C4]) ^ 0x4F2EE7B7 ^ v161) - (LODWORD(STACK[0x7C4]) ^ 0x31EE6CA9));
  LODWORD(v100) = STACK[0x78C];
  v164 = ((2 * (LODWORD(STACK[0x7A0]) + 531000314 + LODWORD(STACK[0x78C]))) & 0xF6FFF93E) + ((LODWORD(STACK[0x7A0]) + 531000314 + LODWORD(STACK[0x78C])) ^ 0x7B7FFC9F);
  LODWORD(STACK[0x7A8]) = v151;
  LODWORD(STACK[0x7A0]) = v135 ^ 0xA36FEB3F;
  LODWORD(STACK[0x7C4]) = v105;
  LODWORD(STACK[0x72C]) = v146;
  LODWORD(STACK[0x720]) = v154;
  v165 = v146 & v105 ^ (v135 ^ 0xA36FEB3F) & v152 ^ v151 & (v135 ^ 0xA36FEB3F) ^ v151 & v152 ^ v154 & v146 ^ v154 & v105;
  v166 = STACK[0x710];
  v167 = (LODWORD(STACK[0x71C]) - 1527040112 + v156) ^ v155 ^ (LODWORD(STACK[0x710]) + 17353233);
  v168 = STACK[0x7BC];
  v169 = (2071985311 - v164 + ((v164 - 2071985311) ^ v165)) ^ (((LODWORD(STACK[0x7BC]) - 524996593) ^ v165) - LODWORD(STACK[0x7BC]) + 524996593) ^ ((v167 ^ v165) - v167);
  HIDWORD(v102) = *(*(&off_278E1E490 + SLODWORD(STACK[0x6C4])) + (STACK[0x6F0] ^ 0x13) - 2);
  LODWORD(v102) = HIDWORD(v102) ^ 0x3DA82888;
  v170 = (LODWORD(STACK[0x740]) ^ 0x7B6141F3) - (LODWORD(STACK[0x784]) + LODWORD(STACK[0x8B0])) + (v132 ^ 0x526827DC);
  v171 = LODWORD(STACK[0x6E8]) ^ 0xE18A606B;
  v172 = *STACK[0x858];
  STACK[0x858] += 4;
  v173 = v170 + v171 - v172 + ((v102 >> 3) ^ 0x7B7760E2) + 1139145520;
  v174 = LODWORD(STACK[0x7D4]) + v173 + v100 - v163 - v169 - 1331451711;
  v175 = v174 + 1568002442 - ((2 * v174) & 0xBAEBA314);
  LODWORD(v103) = ((((v157 ^ 0x14F8C6DC ^ v89) - ((2 * (v157 ^ 0x14F8C6DC ^ v89)) & 0x14B1650) - 2136634584) ^ v99 ^ 0x1F7F30FD) - (((v175 ^ 0x5D75D18A ^ LODWORD(STACK[0x7C0])) - ((2 * (v175 ^ 0x5D75D18A ^ LODWORD(STACK[0x7C0]))) & 0x4D67BC72) - 1498161607) ^ LODWORD(STACK[0x79C]) ^ 0x3168F877)) ^ LODWORD(STACK[0x704]);
  LODWORD(v113) = v175 ^ 0x5D75D18A ^ v89;
  v176 = STACK[0x830];
  v177 = (((v113 + 1439911524 - ((2 * v113) & 0xABA69CC8)) ^ v157) - LODWORD(STACK[0x7C8]) + 1599618321) ^ LODWORD(STACK[0x7B0]) ^ ((v157 ^ 0xF0824DA7 ^ ((v175 ^ 0x9696531F ^ v99) - ((2 * (v175 ^ 0x9696531F ^ v99)) & 0x60876476) - 1337740741)) - LODWORD(STACK[0x7A4]));
  v178 = STACK[0x838];
  LODWORD(v113) = (LODWORD(STACK[0x828]) ^ 0x18ECF9F6) + v107 + 509313121 + LODWORD(STACK[0x738]);
  LODWORD(v113) = v113 + 566685311 - ((2 * v113) & 0x438DDCFE);
  v179 = LODWORD(STACK[0x7E0]) + v173 - (((LODWORD(STACK[0x860]) ^ 0xC7B71407 ^ LODWORD(STACK[0x7DC])) - (LODWORD(STACK[0x7DC]) ^ 0x64D8FF38)) ^ ((LODWORD(STACK[0x860]) ^ 0xA36FEB3F ^ LODWORD(STACK[0x7EC])) - LODWORD(STACK[0x7D0]) - 136414513) ^ ((LODWORD(STACK[0x860]) ^ 0x733F93EA ^ LODWORD(STACK[0x734]) ^ LODWORD(STACK[0x828])) - (LODWORD(STACK[0x734]) ^ LODWORD(STACK[0x828]) ^ 0xD05078D5))) + 1092688555;
  v180 = v179 - 28331909 - ((2 * v179) & 0xFC9F60F6);
  v181 = ((LODWORD(STACK[0x70C]) ^ 0x6B77ED2A ^ ((v113 ^ 0x98C922B7 ^ LODWORD(STACK[0x730])) - ((2 * (v113 ^ 0x98C922B7 ^ LODWORD(STACK[0x730]))) & 0xDBBF519E) + 1843374287)) - ((((LODWORD(STACK[0x7C8]) + 87180545) ^ v180 ^ 0xFE4FB07B) - ((2 * ((LODWORD(STACK[0x7C8]) + 87180545) ^ v180 ^ 0xFE4FB07B)) & 0x21A6C71E) - 1865194609) ^ LODWORD(STACK[0x7D8]))) ^ LODWORD(STACK[0x770]);
  v182 = ((((v180 ^ 0x5711789C ^ LODWORD(STACK[0x730])) + 566685311 - ((2 * (v180 ^ 0x5711789C ^ LODWORD(STACK[0x730]))) & 0x438DDCFE)) ^ v113) - LODWORD(STACK[0x7C8]) - 87180545) ^ LODWORD(STACK[0x800]) ^ ((v113 ^ 0x7412E6EB ^ ((v180 ^ LODWORD(STACK[0x70C]) ^ 0xF7834994) + 1256304817 - 2 * ((v180 ^ LODWORD(STACK[0x70C]) ^ 0xF7834994) & 0x4AE1B0BB ^ (v180 ^ LODWORD(STACK[0x70C])) & 0xA))) - LODWORD(STACK[0x7F0]));
  LODWORD(v113) = (v166 + 788875197) ^ LODWORD(STACK[0x8E0]) ^ LODWORD(STACK[0x790]);
  v183 = (((LODWORD(STACK[0x8D8]) ^ 0xD0612BC0 ^ LODWORD(STACK[0x820])) - (LODWORD(STACK[0x820]) ^ 0x39D462E9)) ^ ((LODWORD(STACK[0x700]) ^ LODWORD(STACK[0x81C])) - v168 - 246525371) ^ ((LODWORD(STACK[0x8D8]) ^ 0xC82D3FB6 ^ v113) - (v113 ^ 0x2198769F))) - LODWORD(STACK[0x7E0]);
  LODWORD(STACK[0x8B0]) = ((LODWORD(STACK[0x718]) - 1866620686 + LODWORD(STACK[0x7AC])) ^ 0xF3EFED3F) + 1610489848 + ((2 * (LODWORD(STACK[0x718]) - 1866620686 + LODWORD(STACK[0x7AC]))) & 0xE7DFDA7E);
  v184 = (LODWORD(STACK[0x810]) - 759186331 + LODWORD(STACK[0x7FC]));
  v185 = STACK[0x6D8] ^ 0x603296F6 ^ (1721 * (((v176 | v178) & 0x8000000000000000) == 0));
  v186 = (LODWORD(STACK[0x750]) + 1914797769);
  LODWORD(STACK[0x888]) = v183 + 82396791;
  v187 = *(STACK[0x940] + 8 * v185);
  ++STACK[0x8E8];
  LODWORD(STACK[0x8D8]) = v103;
  LODWORD(STACK[0x8A0]) = v103 ^ 0xD0E48B51;
  LODWORD(STACK[0x890]) = v177 ^ 0xCB4289D0;
  LODWORD(STACK[0x838]) = v181;
  LODWORD(STACK[0x870]) = v135;
  LODWORD(STACK[0x8E0]) = v149;
  LODWORD(STACK[0x860]) = v149;
  LODWORD(STACK[0x868]) = v153;
  return v187(v184, v186, LODWORD(STACK[0x84C]), v182 ^ 0x4BF31DA9u);
}

uint64_t sub_2447E7EF0@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W6>, int a4@<W7>, int a5@<W8>)
{
  LODWORD(STACK[0x868]) = LODWORD(STACK[0x588]) + LODWORD(STACK[0x6BC]);
  LODWORD(STACK[0x888]) += LODWORD(STACK[0x5C8]);
  LODWORD(STACK[0x870]) = LODWORD(STACK[0x584]) + v5;
  LODWORD(STACK[0x4E4]) += 64;
  v13 = v9 ^ LODWORD(STACK[0x8A0]) ^ (v11 - ((2 * v11 + 526497240) & 0x31D9F3EC) - 929180446);
  v14 = ((2 * a2) & 0xFBB736FC ^ 0x203414A0) + (a2 ^ 0x6DC5952E);
  v15 = a4 ^ 0xBE85838C;
  LODWORD(STACK[0x8A0]) = ((LODWORD(STACK[0x890]) ^ 0xB28D7ED9 ^ v13) - (v13 ^ 0x11E295E6)) ^ ((a4 ^ v12 ^ 0xD6A8E163) - (a4 ^ 0xBE85838C)) ^ (427010739 - a1 + (v12 ^ 0x682D62EF ^ ((((LODWORD(STACK[0x580]) - 8360) | 0x4E31) ^ 0xE68C1B3C) + a1)));
  v16 = ((2 * v7) & 0x1FF7F9EE ^ 0x64440A8) + (a5 ^ 0xF74F9CD6);
  LODWORD(STACK[0x8E8]) = v14;
  v17 = v11 - v14;
  v18 = v9 ^ 0x11E295E6 ^ (v11 - v14 - 1383303574);
  v19 = ((2 * (v14 + 1099820085)) & 0xF96FBBF2 ^ 0xF12FA9A2) + ((v14 + 1099820085) ^ 0x8668092E);
  v20 = ((2 * (LODWORD(STACK[0x880]) - 1652741624)) & 0x667DBF7C ^ 0x24142170) + ((LODWORD(STACK[0x880]) - 1652741624) ^ 0xA9B5CF06);
  v21 = ((2 * (v8 - 105803176)) & 0xBFBE379C ^ 0xB5BE218C) + ((v8 - 105803176) ^ 0x2500CF19);
  v22 = v18 + v16;
  v23 = (v22 + 1879311113) ^ ((v10 ^ 0x862610A9) - ((2 * (v10 ^ 0x862610A9)) & 0xAF38AA48) + 1469863204);
  v24 = v17 - ((2 * v17 + 361434612) & 0xAF38AA48) + 1650580510;
  v25 = (v23 ^ v24) - 1039672966 + (~(2 * (v23 ^ v24)) | 0x7BF04D0D);
  v26 = a1 - v8 - ((2 * (a1 - v8) + 318420592) & 0xDECD1708) - 119281988;
  v27 = (a3 ^ 0x778A7272 ^ v26) - (v26 ^ 0x6F668B84);
  v28 = (a3 ^ 0xFFA2DB19 ^ v25) - (v25 ^ 0xE74E22EF);
  v29 = (v15 ^ (a1 - v8 + 742673064)) + v20;
  LODWORD(STACK[0x890]) = ((LODWORD(STACK[0x720]) ^ (v29 - 859758526)) - v29 + 859758526) ^ v27 ^ v28;
  v30 = (v16 - v19 - 323231486) ^ (v17 + 180717306);
  v31 = v22 - ((2 * v22 + 244570960) & 0x2F499602) + 2129574057;
  v32 = ((2 * (v31 ^ v24)) & 0x7D7EEFF8 ^ 0x702C48) + (v31 ^ v24 ^ 0xFE87E9D9);
  v33 = v19 - 2092424697 + (v24 ^ 0xA863AADB) + (v31 ^ 0x17A4CB01) + 1;
  v34 = ((2 * v33) & 0x5FEBED6E) + (v33 ^ 0xAFF5F6B7);
  LODWORD(STACK[0x880]) = v21;
  v35 = v29 - ((2 * v29 + 923074) & 0x55E11FC) + 1186337759;
  v36 = ((2 * (v35 ^ v26)) & 0xDEDBE996 ^ 0xDA930094) + (v35 ^ v26 ^ 0x2A477B1);
  v37 = (v20 - v21 - 2 * ((v20 - v21 + 748698640) & 0x6F668B8F ^ (v20 - v21) & 0xB) + 470206356) ^ v26;
  v38 = v21 + (v26 ^ 0x9099747B) + 539026483 + (v35 ^ 0x82AF08FE);
  v39 = ((2 * v38) & 0xEC7FFADE) + (v38 ^ 0x763FFD6F);
  v40 = (v32 - ((2 * v32 + 532375608) & 0x2F499602) + 1736605469) ^ v31;
  v41 = v36 - ((2 * v36 + 106851994) & 0x4E87AFE) - 1583123252;
  v42 = v41 ^ v35;
  v43 = ((LODWORD(STACK[0x8A8]) ^ 0x211BD640 ^ v41) - (v41 ^ 0x82743D7F)) ^ ((LODWORD(STACK[0x8A8]) ^ 0xAC27D9C8 ^ v31 ^ LODWORD(STACK[0x898])) - (v31 ^ LODWORD(STACK[0x898]) ^ 0xF4832F7));
  v44 = LODWORD(STACK[0x8A8]) ^ 0xA3B4DEBE ^ v42;
  v42 ^= 0xDB3581u;
  LODWORD(STACK[0x8A8]) = (v44 - v42) ^ v43;
  v45 = ((2 * (v30 - v32 - 1094748164)) & 0x3656A454 ^ 0x20062010) + ((v30 - v32 - 1094748164) ^ 0x2FAC4E67);
  LODWORD(STACK[0x860]) = v34;
  v46 = v40 + v34;
  v47 = (v40 + v34 + 1342835017) ^ (v34 - v32 - 2040931124);
  v48 = ((2 * v47) & 0xBED6FEF6) + (v47 ^ 0xDF6B7F7B);
  v49 = ((2 * (v39 - 1983905135 + v42)) & 0xBEF8EBBE) + ((v39 - 1983905135 + v42) ^ 0xDF7C75DF);
  v50 = ((2 * ((v49 + 545491489) ^ (v39 - v36 - 255962397))) & 0x7FDF69F6) + ((v49 + 545491489) ^ (v39 - v36 - 255962397) ^ 0x3FEFB4FB);
  v51 = v46 + v45;
  v52 = (v32 - ((2 * v32 + 798111990) & 0x46DFD67E) + 2067335098) ^ LODWORD(STACK[0x8E0]) ^ (v51 + 978305906);
  v53 = (v37 - v36 - 278006581) ^ 0xB4871C4D;
  v54 = v49 + v53;
  v55 = ((LODWORD(STACK[0x72C]) ^ (v54 - 1510697356)) - v54 + 1510697356) ^ ((LODWORD(STACK[0x72C]) ^ (v36 - 1491427412)) - v36 + 1491427412) ^ ((LODWORD(STACK[0x840]) ^ 0x8BF1857 ^ (v52 + 273932705 - ((2 * v52) & 0x20A7C342))) - ((v52 + 273932705 - ((2 * v52) & 0x20A7C342)) ^ 0x1053E1A1));
  v56 = v51 - v32;
  v57 = v48 - v32;
  v58 = v48 - ((2 * v48 + 332213186) & 0xF8860E56) + 103390476;
  v59 = v48 - v32 + v56;
  v60 = LODWORD(STACK[0x838]) ^ (v59 + 1305531003) ^ 0x6C120304 ^ v58;
  v61 = v60 - ((2 * v60) & 0xC771853E);
  v62 = v54 - v36;
  v63 = v50 - v36;
  v64 = v54 - v36 + v50 - v36;
  v65 = v50 - ((2 * v50 + 1388626114) & 0x8083EEF8) + 1772378077;
  v66 = ((v6 ^ 0xE207A3FC ^ v65) - (v65 ^ 0x4041F77C)) ^ ((v6 ^ 0xA2465480 ^ (v64 - 1169266277)) - (v64 + 28060716) + 1197326993) ^ ((v6 ^ 0xD1AF9230 ^ (v61 + 1673052831)) - ((v61 + 1673052831) ^ 0x73E9C6B0));
  v67 = v59 - ((2 * (v59 - 1030943930) - 1263226956) & 0x928558D6) - 433451125;
  v68 = ((2 * (v67 ^ (v57 + 1442269323))) & 0xBD7B9BBE ^ 0x90011896) + (v67 ^ (v57 + 1442269323) ^ 0x97FF61B4);
  v69 = v45 - v56 - 2 * v57 + v59 - 1030943930 + 1752125692;
  v70 = ((2 * v69) & 0x7A3FDFFC) + (v69 ^ 0xBD1FEFFE);
  v71 = v70 + 1121980418 + (v58 ^ 0x315491C5) + 1244658955 + (~(2 * (v70 + 1121980418 + (v58 ^ 0x315491C5))) | 0x6BA005E9);
  v72 = v53 - v62 + v64 + 28060716 - 2 * v63 - 196003087;
  v73 = ((2 * v72) & 0xF6FD7F7E) + (v72 ^ 0x7B7EBFBF);
  v74 = v64 + 28060716 - 2 * ((v64 + 157612608) & 0x49EC8417 ^ (v64 + 28060716) & 1) - 777694678;
  v75 = ((2 * (v74 ^ (v63 + 639733722))) & 0x5BFFDB7E ^ 0x13D9082C) + (v74 ^ (v63 + 639733722) ^ 0x641369A9);
  v76 = v73 - 2071904191 + (v65 ^ 0xD566192) + 1983096771 - ((2 * (v73 - 2071904191 + (v65 ^ 0xD566192))) & 0xEC674F86);
  ++v71;
  v77 = ((LODWORD(STACK[0x8B8]) ^ 0x9F86EEEA ^ v76) - (v76 ^ 0x7633A7C3)) ^ ((LODWORD(STACK[0x8B8]) ^ 0xA059CD3F ^ v74) - (v74 ^ 0x49EC8416)) ^ ((LODWORD(STACK[0x8B8]) ^ 0xC74FC06A ^ v67 ^ LODWORD(STACK[0x84C]) ^ v71) - (v67 ^ LODWORD(STACK[0x84C]) ^ v71 ^ 0x2EFA8943));
  v78 = ((v70 + 1121980418) ^ 0x4A2FFD0B ^ v71) - 845754192 - ((2 * ((v70 + 1121980418) ^ 0x4A2FFD0B ^ v71)) & 0x9B2DA160);
  v79 = ((2 * (v78 ^ (v59 + 484926240))) & 0xF6F2796C ^ 0x92202160) + (v78 ^ (v59 + 484926240) ^ 0xB6EFEC06);
  v80 = LODWORD(STACK[0x978]) ^ (v79 + 2113310129) ^ 0x8BBA35C5 ^ (((v79 + 2113310129 + (v78 ^ 0xCD96D0B0)) ^ 0xBA67D7A7) + 1167599705 + ((2 * (v79 + 2113310129 + (v78 ^ 0xCD96D0B0))) & 0x74CFAF4E));
  v81 = v80 - ((2 * v80) & 0xFDB51C40);
  LODWORD(STACK[0x624]) += LODWORD(STACK[0x838]) + 56417571 + v57;
  LODWORD(STACK[0x5C0]) = LODWORD(STACK[0x5C0]) + 1072674043 - v50 + v55;
  LODWORD(STACK[0x5C4]) = LODWORD(STACK[0x5C4]) + 1983905135 - v39 + LODWORD(STACK[0x8A8]);
  LODWORD(STACK[0x5BC]) = LODWORD(STACK[0x5BC]) - 2092424697 + LODWORD(STACK[0x7A0]) + v19;
  LODWORD(STACK[0x58C]) += (LODWORD(STACK[0x8D8]) ^ 0xC80872A7) + 35939458 + LODWORD(STACK[0x8E8]);
  v82 = ((v73 - 2071904191) ^ 0x7633A7C3 ^ v76) - 735643182 - ((2 * ((v73 - 2071904191) ^ 0x7633A7C3 ^ v76)) & 0xA84DF3A4);
  v83 = ((2 * (v82 ^ v74)) & 0xFD679536 ^ 0x39049100) + (v82 ^ v74 ^ 0xE379B75F);
  v84 = ((2 * (v83 + 2059141068 + (v82 ^ 0xD426F9D2))) & 0xFEC7FFEC) + ((v83 + 2059141068 + (v82 ^ 0xD426F9D2)) ^ 0xFF63FFF6);
  v85 = v83 - ((2 * v83 + 169876050) & 0xA117720) - 1843869511;
  v86 = (v75 - v73 + 1300156928) ^ 0xFC075EA8;
  LODWORD(STACK[0x978]) = ((v86 + 958696255) ^ 0x2EAD0EB9) + 10223626 + v84 + (v85 ^ 0x508BB90) + 1198093518 - ((2 * (((v86 + 958696255) ^ 0x2EAD0EB9) + 10223626 + v84 + (v85 ^ 0x508BB90) + 1)) & 0x8ED2E99A);
  LODWORD(STACK[0x8E8]) = (v86 + 958696255) ^ 0x912C5109 ^ v85;
  v87 = v68 - v70 - ((2 * (v68 - v70) + 1019495486) & 0x21B350F8) + 1866189467;
  v88 = ((2 * v87) & 0x4873FBFE ^ 0x4831E9A8) + (v87 ^ 0xC8E70B2B);
  v89 = v87 ^ 0xFC075EA8 ^ (v79 + v70 - 2 * ((v79 + v70 + 124179276) & 0x10D9A87F ^ (v79 + v70) & 3) - 666862648);
  LODWORD(STACK[0x8D8]) = (v79 - 545980875 + ((-546649630 - 2 * v79) | 0x61AB39B3)) ^ 0xA41CE06 ^ (v89 - ((2 * v89 + 1262158558) & 0x9E54C64C) - 188226411);
  v90 = ((-10223626 - v84 + (LODWORD(STACK[0x6C0]) ^ (v84 + 10223626))) ^ ((LODWORD(STACK[0x6C0]) ^ (v83 + 2059141068)) - v83 - 2059141068) ^ ((LODWORD(STACK[0x8F8]) ^ 0xB1422AEF ^ (v81 + 2128252448)) - ((v81 + 2128252448) ^ 0x58F763C6))) - v86;
  LODWORD(STACK[0x650]) = LODWORD(STACK[0x650]) - v75 + 771747263 + v77;
  LODWORD(STACK[0x588]) = LODWORD(STACK[0x868]) - 607780351 + v88;
  v91 = (LODWORD(STACK[0x5E8]) ^ 0xF288B74F) + LODWORD(STACK[0x7A8]) + 546603141 + v48;
  LODWORD(STACK[0x5E8]) = v91 - 225921201 - ((2 * v91) & 0xE5116E9E);
  LODWORD(STACK[0x584]) = LODWORD(STACK[0x870]) + 1169683803 + LODWORD(STACK[0x8A0]);
  LODWORD(STACK[0x5D0]) = LODWORD(STACK[0x5D0]) - LODWORD(STACK[0x880]) - 539026482 + LODWORD(STACK[0x890]);
  LODWORD(STACK[0x628]) = LODWORD(STACK[0x628]) - v63 + 746118030 + v66;
  v92 = STACK[0x468];
  v93 = (LODWORD(STACK[0x654]) ^ 0x83F01FC3) + LODWORD(STACK[0x878]) - 1589497311 + v68;
  LODWORD(STACK[0x654]) = v93 - 2081415229 - ((2 * v93) & 0x7E03F86);
  v94 = v92 < 0xD60F55C5;
  LODWORD(STACK[0x8B8]) = (v86 + 958696255) ^ 0xD654DEE9;
  LODWORD(STACK[0x8F8]) = (v88 - 2 * ((v88 + 350915904) & 0x7CA1901D ^ v88 & 8) + 294395221) ^ 0x31C7CBB1;
  LODWORD(STACK[0x5C8]) = LODWORD(STACK[0x888]) + 2038347912;
  v95 = (LODWORD(STACK[0x5D8]) ^ 0xB1B556D9) + 1342835017 + LODWORD(STACK[0x7C4]) + LODWORD(STACK[0x860]);
  LODWORD(STACK[0x5D8]) = v95 - 1313515815 - ((2 * v95) & 0x636AADB2);
  v96 = LODWORD(STACK[0x4F4]) - 2103108424;
  LODWORD(STACK[0x66C]) = LODWORD(STACK[0x66C]) - 1408109879 + LODWORD(STACK[0x8B0]);
  LODWORD(STACK[0x658]) = v90 + (LODWORD(STACK[0x658]) ^ 0x4104DD8A) + 1090837898 - ((2 * (v90 + (LODWORD(STACK[0x658]) ^ 0x4104DD8A))) & 0x8209BB14);
  v97 = v94 ^ (v96 < 0xD60F55C5);
  v98 = v96 < v92;
  if (!v97)
  {
    v94 = v98;
  }

  return (*(STACK[0x940] + 8 * (LODWORD(STACK[0x580]) ^ (501 * v94))))();
}

uint64_t sub_2447E913C@<X0>(int a1@<W4>, int a2@<W5>, int a3@<W8>)
{
  LODWORD(STACK[0x908]) = v11;
  LODWORD(STACK[0x910]) = v11 ^ 0x1AD;
  v12 = -1547376319 - LODWORD(STACK[0x584]) - ((-1196291138 - 2 * LODWORD(STACK[0x584])) & 0x8ED7C6C4);
  v13 = LODWORD(STACK[0x5BC]) - (((LODWORD(STACK[0x5BC]) << ((v11 ^ 0xAD) + 90)) + 690510934) & 0xF1C1CC2C) - 1921706943;
  v14 = LODWORD(STACK[0x58C]) - ((2 * LODWORD(STACK[0x58C]) + 386664892) & 0x6A47BD78) + 11133850;
  v15 = LODWORD(STACK[0x5C0]) - 2 * ((LODWORD(STACK[0x5C0]) + 140081302) & 0xA1038AF ^ STACK[0x5C0] & 1);
  v16 = LODWORD(STACK[0x5C4]) + 961662285 - ((2 * LODWORD(STACK[0x5C4]) - 384689398) & 0x89916CC8) - 2404;
  v17 = STACK[0x8D8];
  v18 = STACK[0x8F8];
  v19 = LODWORD(STACK[0x8B8]) ^ 0x7062FAF;
  v20 = (v14 ^ 0xE23F7099 ^ ((LODWORD(STACK[0x8F8]) ^ v12 ^ 0xB9603919) + 891543228 - ((2 * (LODWORD(STACK[0x8F8]) ^ v12 ^ 0xB9603919)) & 0x6A47BD78))) - v19;
  v21 = LODWORD(STACK[0x8F8]) ^ v14 ^ 0xCB2804C7;
  v22 = (v14 ^ 0x1512B1F8 ^ ((LODWORD(STACK[0x8D8]) ^ v12 ^ 0x58389C9C) + 891543228 - ((2 * (LODWORD(STACK[0x8D8]) ^ v12 ^ 0x58389C9C)) & 0x6A47BD78))) - (v4 ^ a1);
  v23 = LODWORD(STACK[0x8D8]) ^ 0xF72DC161 ^ (v21 + 525565950 - ((2 * v21) & 0x3EA6FFFC));
  v24 = ((LODWORD(STACK[0x8B8]) ^ v12 ^ 0x406DCCCD) + a1 - ((2 * (LODWORD(STACK[0x8B8]) ^ v12 ^ 0x406DCCCD)) & 0x527506F4)) ^ v4;
  v25 = STACK[0x8E8];
  LODWORD(STACK[0x958]) = v20 ^ LODWORD(STACK[0x8E8]) ^ v22;
  LODWORD(STACK[0x960]) = (v23 - v24) ^ v5;
  v26 = ((2 * (v17 ^ v5)) & 0xDCFF178A ^ 0xC4951008) + (v17 ^ v5 ^ 0x1CB507DB);
  v27 = (v18 ^ 0x1C34AAE2) - v26;
  v28 = a3 - v3;
  v29 = v26 - (a3 - v3) - ((2 * (v26 - (a3 - v3)) + 203959526) & 0xE8238E0) - 2058013981;
  v30 = v3 - v27 - 2 * ((v3 - v27 + 305569028) & 0x730511ED ^ (v3 - v27) & 1) - 2059686160;
  v31 = ((v28 + 325869000) ^ (v27 - 293631035)) + 873255461 - ((2 * ((v28 + 325869000) ^ (v27 - 293631035))) & 0x6819A44A);
  v32 = ((2 * (v25 ^ v4)) & 0x4D6BDFFA ^ 0x4809114A) + (v25 ^ v4 ^ 0x4AF97758);
  v33 = ((2 * (v19 - v32 + 649457661)) & 0x7ED7FDFA) + ((v19 - v32 + 649457661) ^ 0xBF6BFEFD);
  v34 = ((2 * ((v25 ^ 0x45761BDF) - 2135545655)) & 0x6DFBF960) + (((v25 ^ 0x45761BDF) - 2135545655) ^ 0x36FDFCB0);
  v35 = ((2 * ((LODWORD(STACK[0x978]) ^ a2) + 922614960 - v34)) & 0xE98FFFFE) + (((LODWORD(STACK[0x978]) ^ a2) + 922614960 - v34) ^ 0xF4C7FFFF);
  v36 = v34 - v33 - ((2 * (v34 - v33) + 282854554) & 0x8CF8ED84) - 823494385;
  v37 = v32 - v35;
  v38 = ((v35 + 188219393) ^ (v33 + 1083441411)) + 862308935 - ((2 * ((v35 + 188219393) ^ (v33 + 1083441411))) & 0x66CB948E);
  v39 = 1494310868 - LODWORD(STACK[0x5D0]) - ((759081130 - 2 * LODWORD(STACK[0x5D0])) & 0x84E416FE);
  LODWORD(STACK[0x950]) = ((((v39 ^ 0xC533170F ^ v29) + 2028004886 - ((2 * (v39 ^ 0xC533170F ^ v29)) & 0xF1C1CC2C)) ^ v13) - v37 + 837677054) ^ v36 ^ ((((v39 ^ 0x767ED95A ^ v31) + 2028004886 - ((2 * (v39 ^ 0x767ED95A ^ v31)) & 0xF1C1CC2C)) ^ v13) - (v38 ^ 0x3365CA47));
  LODWORD(STACK[0x978]) = ((((v13 ^ 0x4CEC3433 ^ v31) - ((2 * (v13 ^ 0x4CEC3433 ^ v31)) & 0xE8238E0) - 2025776016) ^ v29) - ((v37 - 837677054) ^ v39 ^ 0x7117C138 ^ v38)) ^ v30;
  v28 += 851876555;
  v40 = ((2 * (v28 + (v29 ^ 0x78BEE38F) + 1)) & 0xFB7FF99C) + ((v28 + (v29 ^ 0x78BEE38F) + 1) ^ 0xFDBFFCCE);
  v41 = ((v40 + 37749554) ^ (v28 + (v31 ^ 0x340CD225))) - 2069368008 - ((2 * ((v40 + 37749554) ^ (v28 + (v31 ^ 0x340CD225)))) & 0x94FE670);
  v42 = ((2 * v29) & 0xDEABFB8 ^ 0x54A1498) + (v29 ^ 0x3C5AD5B3);
  v43 = v42 + (v30 ^ 0x2A9EBFBA);
  v44 = v35 + 714226948 + (v38 ^ 0x3365CA47);
  v45 = v42 - v40 - ((2 * (v42 - v40) - 308987420) & 0x9CB03CCA) - 987579561;
  v46 = v36 ^ 0x9FE7D894;
  v47 = v40 - ((2 * v40 + 1616144734) & 0xFBE490D2) - 1373864680;
  v48 = v35 - v37;
  v49 = ((2 * (v37 - 837677054)) & 0xA7FFFF5E ^ 0x23DD2C1E) + ((v37 - 837677054) ^ 0x6E1169B0);
  v50 = v46 + v49;
  v51 = ((2 * (v44 ^ (v48 + 1551904002))) & 0xBEBEF87C) + (v44 ^ (v48 + 1551904002) ^ 0xDF5F7C3E);
  v52 = v51 + 800771050;
  v53 = (LODWORD(STACK[0x5D8]) ^ 0x4E4AA926) + 1938460003 - ((2 * (LODWORD(STACK[0x5D8]) ^ 0x4E4AA926) + 2) & 0xE7151AC6) + 1;
  v54 = v49 - v48;
  v55 = -547390402 - v51 + (((v53 ^ 0xF72D7E5B ^ v41) + 1154004580 - ((2 * (v53 ^ 0xF72D7E5B ^ v41)) & 0x89916CC8)) ^ v16);
  v56 = ((v53 ^ 0xBDD29306 ^ v45) + 1154004580 - ((2 * (v53 ^ 0xBDD29306 ^ v45)) & 0x89916CC8)) ^ v16;
  v57 = (v16 ^ 0xC06F455C ^ v41) - 833085851 - ((2 * (v16 ^ 0xC06F455C ^ v41)) & 0x9CB03CCA);
  v58 = v50 + v51 + 800771050;
  v59 = ((v57 ^ v45) - (v53 ^ 0x738A8D63 ^ (v54 - 813706417) ^ (v51 + 547390402))) ^ (v43 - 116744156);
  LODWORD(STACK[0x948]) = v59 - 1989311698 - ((2 * v59) & 0x12DB065C);
  v60 = v55 ^ (v50 + 738197585) ^ (v56 - v54 + 813706417);
  v61 = v60 + 1040301107 - ((2 * v60) & 0x7C037866);
  LODWORD(STACK[0x8B8]) = v61;
  v62 = v41 ^ 0x84A7F338;
  v63 = ((2 * ((v41 ^ 0x84A7F338) + (v45 ^ 0xCE581E65))) & 0x6F97EFEC) + (((v41 ^ 0x84A7F338) + (v45 ^ 0xCE581E65)) ^ 0x37CBF7F6);
  v64 = v43 - v40;
  v65 = (v47 ^ 0x784BAED9) + v64 + v62 + ((2 * v47) & 0xB73CD60 ^ 0xB608040);
  v66 = v65 - 1020885819 + (v47 ^ 0x7DF24869);
  v67 = v63 - v66 - ((2 * (v63 - v66) + 1590640198) & 0xA471345E);
  v68 = v66 + v64 - ((2 * (v66 + v64) + 132504408) & 0xD140186);
  v69 = v54 + 1085120333 + v52;
  v70 = (LODWORD(STACK[0x5E8]) ^ 0xD7748B0) - 955419940 - ((2 * (LODWORD(STACK[0x5E8]) ^ 0xD7748B0) + 2) & 0x8E1AE5B8) + 1;
  v71 = v67 - 2120205998;
  v15 += 1919529284;
  v72 = v69 - v48 - (v58 + 1581490219) - ((2 * (v69 - v48 - (v58 + 1581490219)) + 1002313964) & 0xFEA4DBCE) - 1657701795;
  v68 -= 495128977;
  v73 = v58 + 1581490219 + v50 - ((2 * (v58 + 1581490219 + v50) + 996750604) & 0x2F53F46E) + 358519997;
  LODWORD(STACK[0x840]) = ((((v70 ^ 0xC70D72DC ^ (v65 - 1020885819)) - 1978648402 - ((2 * (v70 ^ 0xC70D72DC ^ (v65 - 1020885819))) & 0x1420715C)) ^ v15) - (v58 + 1581490219) + 1096673282) ^ v73 ^ ((((v70 ^ 0x9535E8F3 ^ (v67 - 2120205998)) - 1978648402 - ((2 * (v70 ^ 0x9535E8F3 ^ (v67 - 2120205998))) & 0x1420715C)) ^ v15) - (v72 ^ 0xFF526DE7));
  v74 = (((v67 - 2120205998) ^ ((v15 ^ 0x8A1038AE ^ (v65 - 1020885819)) - ((2 * (v15 ^ 0x8A1038AE ^ (v65 - 1020885819))) & 0xA471345E) + 1379441199)) - (v72 ^ ((v70 ^ 0xC70D72DC ^ (v58 + 484816937)) - 11375129 - ((2 * (v70 ^ 0xC70D72DC ^ (v58 + 484816937))) & 0xFEA4DBCE)))) ^ v68;
  LOBYTE(v67) = v68 ^ 0x47;
  v75 = ((2 * v68) & 0x77DD7E5E ^ 0x70594450) + (v68 ^ 0x7D25D47);
  v76 = v71 ^ v68;
  v77 = ((2 * (v72 ^ v73)) & 0xDED99F66 ^ 0xD2119E42) + (v72 ^ v73 ^ 0x866630D2);
  v78 = ((2 * v73) & 0xACE9F5F6 ^ 0x8283130) + (v73 ^ 0x7B6BE267);
  v79 = v78 - 2 * ((v78 + 485136748) & 0x352DD297 ^ (v73 ^ 0x7B6BE267) & 1) - 1843893246;
  v80 = v63 - 936114165 + (v71 ^ v68 ^ 0xAABC0DA2);
  v81 = LODWORD(STACK[0x624]) - 643957810 - ((2 * LODWORD(STACK[0x624]) + 76049980) & 0x6B3A53E) + 3567;
  v82 = ((v75 + 1141981393) ^ (v65 - v63 - 84771653)) - ((2 * ((v75 + 1141981393) ^ (v65 - v63 - 84771653))) & 0xA2E8E658) + 1366586156;
  v83 = ((v78 + 696976645) ^ (1551904002 - v54 + v50)) + 947979279 - ((2 * ((v78 + 696976645) ^ (1551904002 - v54 + v50))) & 0x7102081E);
  v84 = -1309501896 - LODWORD(STACK[0x628]) - ((-1458012214 - 2 * LODWORD(STACK[0x628])) & 0xBACCACA6);
  v85 = v75 - 2 * ((v75 + 2003883320) & 0x7F37B7BD ^ v67 & 1) + 1990757620;
  v86 = ((v76 ^ 0x81F168B1 ^ ((v81 ^ 0x522DA1B3 ^ v82) - ((2 * (v81 ^ 0x522DA1B3 ^ v82)) & 0xA96535D8) - 726492436)) - (v84 ^ (v77 - 1869402035) ^ 0x65E7525C ^ v83)) ^ v85;
  LODWORD(STACK[0x84C]) = v86;
  LODWORD(STACK[0x930]) = ((v81 ^ 0x81F168B1 ^ ((v84 ^ 0x89D4CCBF ^ v76) + 56218271 - ((2 * (v84 ^ 0x89D4CCBF ^ v76)) & 0x6B3A53E))) - v77 + 1869402035) ^ v79 ^ ((((v84 ^ 0xC12257F ^ v82) + 56218271 - ((2 * (v84 ^ 0xC12257F ^ v82)) & 0x6B3A53E)) ^ v81) - (v83 ^ 0x3881040F));
  v87 = v82 ^ v85;
  v88 = v82 ^ v85 ^ v80;
  v89 = ((2 * ((v82 ^ v85 ^ 0x2E43C490) + v75 + 578551000)) & 0xBFF8FDBE) + (((v82 ^ v85 ^ 0x2E43C490) + v75 + 578551000) ^ 0x5FFC7EDF);
  v90 = ((2 * (v83 ^ v79)) & 0xFDFF7BBE ^ 0x19592932) + (v83 ^ v79 ^ 0x73536B46);
  v91 = (v76 ^ 0x5543F25D) - v75 + 1969404633 + (v87 ^ 0xD1BC3B6F);
  v92 = v91 + 1774676692 - ((2 * v91) & 0xD38ED5A8);
  v93 = 1313514158 - LODWORD(STACK[0x650]) - ((1253207672 - 2 * LODWORD(STACK[0x650])) & 0x51E2D6E4);
  v94 = v93 ^ 0xA8F16B72;
  v95 = ((v90 + 16794145) ^ (v69 - v77 - 282805363)) - ((2 * ((v90 + 16794145) ^ (v69 - v77 - 282805363))) & 0x4209C180);
  v96 = (v93 ^ 0xC13601A6 ^ v92) - 2081415229 - ((2 * (v93 ^ 0xC13601A6 ^ v92)) & 0x7E03F86);
  v97 = (v93 ^ 0xA8F16B72 ^ (v89 - 1610383071)) - 2081415229 - ((2 * (v93 ^ 0xA8F16B72 ^ (v89 - 1610383071))) & 0x7E03F86);
  v98 = v90 + v78;
  v99 = v77 - (v90 + v78);
  v95 -= 1593515840;
  v100 = (((LODWORD(STACK[0x654]) ^ 0x83F01FC3 ^ (v89 - 1610383071)) + 1774676692 - ((2 * (LODWORD(STACK[0x654]) ^ 0x83F01FC3 ^ (v89 - 1610383071))) & 0xD38ED5A8)) ^ v92) - (v94 ^ (v90 + v78 + 150340397) ^ (v99 + 528213200));
  v101 = v90 + v78 + 2028554168;
  v102 = (v96 ^ LODWORD(STACK[0x654])) - v99 - 528213200;
  v103 = (v97 ^ LODWORD(STACK[0x654])) - v101 + 1878213771;
  v104 = (v100 ^ (v75 + 578551000)) - 1015100843 - ((2 * (v100 ^ (v75 + 578551000))) & 0x86FD94AA);
  LODWORD(STACK[0x880]) = v104;
  v105 = ((2 * ((v92 ^ 0x69C76AD4) + (v88 ^ 0x71473C70))) & 0xF79778A6) + (((v92 ^ 0x69C76AD4) + (v88 ^ 0x71473C70)) ^ 0xFBCBBC53);
  v106 = (v102 ^ (v78 + 133546252) ^ v103) - 225894003 - ((2 * (v102 ^ (v78 + 133546252) ^ v103)) & 0xE512431A);
  LODWORD(STACK[0x8F8]) = v106;
  v107 = v75 - v89;
  v108 = (v88 ^ 0xCF8DE98) + 70534061 + v105;
  v109 = v89 - ((2 * v89 - 803960372) & 0xD67B749A) - 750256333;
  v110 = (v95 ^ 0xFE001820) + v99;
  v111 = v105 - v107 - ((2 * (v105 - v107) + 58167276) & 0x8E0A6DCC) + 1220607708;
  v112 = v95 ^ 0x83BFFAC8;
  v113 = -729880872 - LODWORD(STACK[0x588]) - ((-176837046 - 2 * LODWORD(STACK[0x588])) & 0xB3881F66);
  v114 = v112 + 528213200 + v110;
  v115 = v90 + v110;
  v116 = v90 + v110 - 431692982;
  v117 = -1316223213 - v90 - ((517402190 - 2 * v90) & 0x44411FD8);
  v118 = v98 - ((2 * v101 - 1339621772) & 0xF224351A) + 1242489215;
  v119 = v107 - ((2 * v107 + 97020414) & 0x1005D364) + 451354289;
  v115 += 545007345;
  v120 = ((((v109 ^ v113 ^ 0xB2F9B5FE) + 1090837898 - 2 * ((v109 ^ v113 ^ 0xB2F9B5FE) & 0x4104DD8B ^ (v109 ^ v113) & 1)) ^ LODWORD(STACK[0x658])) - (v118 ^ 0xF9121A8D)) ^ v117 ^ ((((v113 ^ 0x9EC13955 ^ v111) + 1090837898 - ((2 * (v113 ^ 0x9EC13955 ^ v111)) & 0x8209BB14)) ^ LODWORD(STACK[0x658])) - v116 - 976700327);
  v121 = ((v111 ^ ((LODWORD(STACK[0x658]) ^ 0xAA3967C7 ^ v109) - 955959578 - ((2 * (LODWORD(STACK[0x658]) ^ 0xAA3967C7 ^ v109)) & 0x8E0A6DCC))) - (v113 ^ v118 ^ 0xA0D6153E ^ v115)) ^ v119;
  LODWORD(STACK[0x898]) = v121;
  v122 = ((2 * (v111 ^ v119 ^ v108)) & 0x2D6B258E ^ 0xC0B2488) + (v111 ^ v119 ^ v108 ^ 0x59B24D93);
  v123 = v109 ^ 0x3958BBFE;
  v124 = (v111 ^ v119 ^ 0x4F07DF54) - v122 + 380998343;
  v125 = (v115 ^ v117 ^ 0xA2208FEC) + 1110479748 - 2 * ((v115 ^ v117 ^ 0xA2208FEC) & 0x42309397 ^ (v115 ^ v117) & 0x13);
  v126 = ((2 * (v125 ^ v114)) & 0xBDB7FFFE ^ 0x84212708) + (v125 ^ v114 ^ 0x1CEB6C7B);
  v127 = v123 - 380998343 + v122 + 1590800989 - ((2 * (v123 - 380998343 + v122)) & 0xBDA364BA);
  v128 = (v111 ^ 0xC70536E6) - v122 - ((2 * ((v111 ^ 0xC70536E6) - v122) - 1829939246) & 0xCFA6E47E) - 1320542680;
  v129 = v126 + (v118 ^ 0x2B771B3E);
  v130 = (v125 ^ 0x42309384) + 1591476223 - v126;
  v131 = 1052607230 - LODWORD(STACK[0x5C8]) - ((1048774514 - 2 * LODWORD(STACK[0x5C8])) & 0x3EF7FE8A);
  v132 = ((2 * (v116 - v126 - 875275064)) & 0xD9FFDDD6) + ((v116 - v126 - 875275064) ^ 0xECFFEEEB);
  v133 = LODWORD(STACK[0x66C]) - 1408109879;
  v134 = -318771477 - v132 + (v133 ^ v131 ^ 0xF8A88D7A ^ v128);
  v135 = 1591476223 - v129 + (v133 ^ v131 ^ 0xC1AA4D18 ^ v127);
  v136 = ((v131 ^ (v129 - 1591476223) ^ 0x608400BA ^ (v132 + 318771477)) - ((((2 * (v133 ^ 0x5ED1B25D ^ v127)) & 0xCFA6E47E) - (v133 ^ 0x5ED1B25D ^ v127) - 1741910592) ^ v128)) ^ v124;
  v137 = (LODWORD(STACK[0x958]) ^ 0x45761BDFu) - ((2 * (LODWORD(STACK[0x958]) ^ 0x45761BDFu)) & 0x149682DA0) - 0x2C2D4C705B4BE930;
  LODWORD(STACK[0x900]) = ((v137 >> 24) ^ 0xFFFFFFA4) - 2 * (((v137 >> 24) ^ 0xFFFFFFA4) & v6 ^ (v137 >> 24) & 8);
  v138 = (v106 ^ 0xF289218D) - ((2 * (v106 ^ 0xF289218D)) & 0x6274BEC0) + 0x227A150B313A5F60;
  LODWORD(STACK[0x8E8]) = ((v138 >> 24) ^ v10) - 2 * (((v138 >> 24) ^ v10) & 0xFFFFFFF7 ^ (v138 >> 24) & 6);
  v139 = BYTE1(v74);
  LODWORD(STACK[0x878]) = v74;
  v140 = (v74 ^ 0x868A00C3) - ((2 * (v74 ^ 0x868A00C3)) & 0x6E9765A0) + 0x72189A2D374BB2D0;
  LODWORD(STACK[0x8E0]) = ((v140 >> 24) ^ 0x37) - ((2 * ((v140 >> 24) ^ 0x37)) & 0xFFFFFFE3);
  v141 = STACK[0x948];
  v142 = (LODWORD(STACK[0x948]) ^ 0x896D832E) - ((2 * (LODWORD(STACK[0x948]) ^ 0x896D832E)) & 0xB6367D64) - 0x2F4EF2EAA4E4C14ELL;
  LODWORD(STACK[0x8C0]) = ((v142 >> 8) ^ 0x3E) - ((2 * ((v142 >> 8) ^ 0x3E)) & 0xFFFFFFE3);
  v143 = (v61 ^ 0x3E01BC33u) - ((2 * (v61 ^ 0x3E01BC33u)) & 0x189CFE972) + 0x78F8956FC4E7F4B9;
  LODWORD(STACK[0x8B0]) = ((v143 >> 24) ^ 0xFFFFFFC4) - 2 * (((v143 >> 24) ^ 0xFFFFFFC4) & 0xFFFFFFF9 ^ (v143 >> 24) & 8);
  v144 = (LODWORD(STACK[0x978]) ^ 0xF30511EC) - ((2 * (LODWORD(STACK[0x978]) ^ 0xF30511EC)) & 0xEB2ED0FCLL) - 0x6DFA4D7B8A689782;
  LODWORD(STACK[0x890]) = ((v144 >> 8) ^ 0x68) - 2 * (((v144 >> 8) ^ 0x68) & 0xFFFFFFF7 ^ (v144 >> 8) & 6);
  v145 = STACK[0x840];
  v146 = (LODWORD(STACK[0x840]) ^ 0x97A9FA37) - ((2 * (LODWORD(STACK[0x840]) ^ 0x97A9FA37)) & 0x13D13955ALL) - 0x3AA4D2CB61763553;
  STACK[0x820] = v146;
  LODWORD(STACK[0x8A8]) = ((v146 >> 8) ^ 0xFFFFFFCA) - ((2 * ((v146 >> 8) ^ 0xFFFFFFCA)) & 0xFFFFFFE3);
  LODWORD(STACK[0x870]) = ((v144 >> 16) ^ 0xFFFFFF97) - ((2 * ((v144 >> 16) ^ 0xFFFFFF97)) & 0xFFFFFFE3);
  v147 = (LODWORD(STACK[0x950]) ^ 0x467C76C2u) - ((2 * (LODWORD(STACK[0x950]) ^ 0x467C76C2u)) & 0x12987EB30) - 0x6F1F42066B3C0A68;
  LODWORD(STACK[0x868]) = ((v147 >> 8) ^ 0xFFFFFFF5) + (~(2 * ((v147 >> 8) ^ 0xFFFFFFF5)) | 0x1D);
  v148 = v135 ^ v130 ^ v134;
  v149 = v148 - ((2 * v148) & 0x6762D826) - 0x1F9ED564CC4E93EDLL;
  LODWORD(STACK[0x8D8]) = ((v149 >> 8) ^ 0x6C) - 2 * (((v149 >> 8) ^ 0x6C) & 0xFFFFFFF3 ^ (v149 >> 8) & 2);
  v150 = STACK[0x970];
  v151 = *(STACK[0x970] + ((v139 - 92) ^ 0x4ELL)) - 49;
  HIDWORD(v152) = v151 ^ 0x11;
  LODWORD(v152) = (v151 ^ 0x20) << 24;
  LODWORD(STACK[0x858]) = (v152 >> 29) - ((2 * (v152 >> 29)) & 0xFFFFFFE3);
  v153 = (v121 ^ 0x8802E9B2) - ((2 * (v121 ^ 0x8802E9B2)) & 0xCDF0F964) - 0x26E6D1339907834ELL;
  LODWORD(STACK[0x888]) = ((v153 >> 8) ^ 0x7C) + ~(2 * (((v153 >> 8) ^ 0x7C) & 0xFFFFFFF3 ^ (v153 >> 8) & 2));
  v154 = (v104 ^ 0xC37ECA55) - ((2 * (v104 ^ 0xC37ECA55)) & 0xC7B4E130) - 0x270DDC909C258F68;
  LODWORD(STACK[0x860]) = ((v154 >> 8) ^ 0x70) - ((2 * ((v154 >> 8) ^ 0x70)) & 0xFFFFFFE3);
  v155 = (v86 ^ 0x7F37B7BC) - ((2 * (v86 ^ 0x7F37B7BC)) & 0xF85F9A54) + 0xF0494C97C2FCD2ALL;
  LODWORD(STACK[0x830]) = ((v155 >> 8) ^ 0xFFFFFFCD) - 2 * (((v155 >> 8) ^ 0xFFFFFFCD) & 0xFFFFFFF3 ^ (v155 >> 8) & 2);
  v156 = (LODWORD(STACK[0x960]) ^ 0xF88B4218) - ((2 * (LODWORD(STACK[0x960]) ^ 0xF88B4218)) & 0x4F9AA172) + 0x8771E627CD50B9;
  LODWORD(STACK[0x8A0]) = ((v156 >> 8) ^ 0x50) - ((2 * ((v156 >> 8) ^ 0x50)) & 0xFFFFFFE3);
  v157 = (v120 ^ 0xA2208FEC) - ((2 * (v120 ^ 0xA2208FEC)) & 0x19356F838) + 0x542B9C8DC9AB7C1CLL;
  LODWORD(STACK[0x838]) = ((v157 >> 8) ^ 0x7C) - ((2 * ((v157 >> 8) ^ 0x7C)) & 0xFFFFFFE3);
  LODWORD(STACK[0x828]) = ((v138 >> 8) ^ 0x5F) - ((2 * ((v138 >> 8) ^ 0x5F)) & 0xFFFFFFE3);
  v158 = (LODWORD(STACK[0x930]) ^ 0xB52DD296) - ((2 * (LODWORD(STACK[0x930]) ^ 0xB52DD296)) & 0xFB6166ECLL) + 0x46334DF27DB0B376;
  LODWORD(STACK[0x808]) = ((v158 >> 8) ^ v7) - 2 * (((v158 >> 8) ^ v7) & 0xFFFFFFF9 ^ (v158 >> 8) & 8);
  LODWORD(STACK[0x7FC]) = ((v143 >> 8) ^ 0xFFFFFFF4) - ((2 * ((v143 >> 8) ^ 0xFFFFFFF4)) & 0xFFFFFFE3);
  LODWORD(STACK[0x850]) = ((v137 >> 8) ^ 0x16) - ((2 * ((v137 >> 8) ^ 0x16)) & 0xFFFFFFE3);
  v159 = *(v8 + (((BYTE2(v141) ^ 0x6D) + 110) ^ 0xB0));
  LODWORD(STACK[0x800]) = ((v153 >> 16) ^ 0xFFFFFFF8) - 2 * (((v153 >> 16) ^ 0xFFFFFFF8) & 0xFFFFFFF3 ^ (v153 >> 16) & 2);
  HIDWORD(v152) = v159 ^ 0x13;
  LODWORD(v152) = ~v159 << 24;
  LODWORD(STACK[0x7DC]) = v152 >> 31;
  LODWORD(STACK[0x81C]) = ((v149 >> 16) ^ 0xFFFFFFB1) - 2 * (((v149 >> 16) ^ 0xFFFFFFB1) & 0x75 ^ (v149 >> 16) & 4);
  LODWORD(STACK[0x7F0]) = ((v154 >> 16) ^ 0xFFFFFFDA) - 2 * (((v154 >> 16) ^ 0xFFFFFFDA) & 0x75 ^ (v154 >> 16) & 4);
  LODWORD(STACK[0x7D0]) = ((v140 >> 16) ^ v9) - 2 * (((v140 >> 16) ^ v9) & 0x75 ^ (v140 >> 16) & 4);
  LODWORD(STACK[0x7D4]) = ((v155 >> 16) ^ 0x2F) - ((2 * ((v155 >> 16) ^ 0x2F)) & 0xFFFFFFE3);
  LODWORD(STACK[0x810]) = ((v156 >> 16) ^ 0xFFFFFFCD) + ~(2 * (((v156 >> 16) ^ 0xFFFFFFCD) & 0x73 ^ (v156 >> 16) & 2));
  LODWORD(STACK[0x7EC]) = (((v136 - ((2 * v136) & 0x198C7117EuLL) + 0x5B4D8781CC6388BFLL) >> 16) ^ 0x63) - 2 * ((((v136 - ((2 * v136) & 0x198C7117EuLL) + 0x5B4D8781CC6388BFLL) >> 16) ^ 0x63) & 0xFFFFFFF9 ^ ((v136 - ((2 * v136) & 0x198C7117EuLL) + 0x5B4D8781CC6388BFLL) >> 16) & 8);
  LODWORD(STACK[0x7D8]) = ((v157 >> 16) ^ 0xFFFFFFAB) - ((2 * ((v157 >> 16) ^ 0xFFFFFFAB)) & 0xFFFFFFE3);
  LODWORD(STACK[0x7C8]) = ((v138 >> 16) ^ 0x3A) + (~(2 * ((v138 >> 16) ^ 0x3A)) | 0x1D);
  LOBYTE(v121) = v145;
  LODWORD(v138) = *(v8 + (((BYTE2(v145) ^ 0xA9) + 110) ^ 0xB0));
  HIDWORD(v152) = v138 ^ 0x13;
  LODWORD(v152) = ~v138 << 24;
  LODWORD(STACK[0x7C0]) = v152 >> 31;
  LODWORD(STACK[0x7C4]) = ((v158 >> 16) ^ 0xFFFFFFB0) - ((2 * ((v158 >> 16) ^ 0xFFFFFFB0)) & 0xFFFFFFE3);
  LODWORD(STACK[0x7E0]) = ((v137 >> 16) ^ 0xFFFFFFB4) - ((2 * ((v137 >> 16) ^ 0xFFFFFFB4)) & 0xFFFFFFE3);
  LODWORD(v138) = *(v150 + ((BYTE3(v148) - 92) ^ 0x4ELL)) - 49;
  HIDWORD(v152) = v138 ^ 0x11;
  LODWORD(v152) = (v138 ^ 0x20) << 24;
  LOBYTE(v150) = (v152 >> 29) - ((2 * (v152 >> 29)) & 0xE3);
  LOBYTE(v149) = (BYTE3(v147) ^ 0x94) - 2 * ((BYTE3(v147) ^ 0x94) & 0xF3 ^ BYTE3(v147) & 2);
  v160 = *(STACK[0x8D0] + (((v120 >> 17) & 0x80 | (v120 >> 25)) ^ 0xF7));
  HIDWORD(v152) = v160 ^ 0x54;
  LODWORD(v152) = ~v160 << 24;
  LOBYTE(v155) = -13 * ((v152 >> 31) ^ 0xD6) - ((-26 * ((v152 >> 31) ^ 0xD6)) & 0xE3);
  LOBYTE(v160) = (BYTE3(STACK[0x820]) ^ 0x9E) - ((2 * (BYTE3(STACK[0x820]) ^ 0x9E)) & 0xE3);
  LODWORD(v147) = STACK[0x950];
  LOBYTE(v145) = (HIWORD(LODWORD(STACK[0x950])) ^ 0x7C) - ((2 * (HIWORD(LODWORD(STACK[0x950])) ^ 0x7C)) & 0xE3);
  LODWORD(v137) = STACK[0x978];
  v161 = *(STACK[0x8D0] + (((v121 >> 1) | ((v121 & 1) << 7)) ^ 0x3DLL));
  v162 = STACK[0x8D0];
  HIDWORD(v152) = v161 ^ 0x54;
  LODWORD(v152) = ~v161 << 24;
  LOBYTE(STACK[0xBBC4]) = (HIBYTE(LODWORD(STACK[0x978])) ^ 0xF3) + ~(2 * ((HIBYTE(LODWORD(STACK[0x978])) ^ 0xF3) & 0x75 ^ HIBYTE(LODWORD(STACK[0x978])) & 4)) - 14;
  LOBYTE(STACK[0x64A4]) = v149 - 15;
  LOBYTE(STACK[0xBBC5]) = LODWORD(STACK[0x870]) - 15;
  LOBYTE(STACK[0x64A5]) = v145 - 15;
  LOBYTE(STACK[0xBBC6]) = LODWORD(STACK[0x890]) - 15;
  LOBYTE(STACK[0x64A6]) = LODWORD(STACK[0x868]) - 14;
  LOBYTE(STACK[0xBBC7]) = v137 ^ 0x1D;
  LOBYTE(STACK[0x64A7]) = v147 ^ 0x33;
  LOBYTE(STACK[0xBBC8]) = LODWORD(STACK[0x8B0]) - 15;
  v163 = STACK[0x918];
  LOBYTE(STACK[0x64A8]) = (BYTE3(v142) ^ 0x5B) - ((2 * (BYTE3(v142) ^ 0x5B)) & 0xE3) - 15;
  LOBYTE(STACK[0xBBC9]) = (BYTE2(v143) ^ 0xE7) - ((2 * (BYTE2(v143) ^ 0xE7)) & 0xE3) - 15;
  LOBYTE(STACK[0x64A9]) = LODWORD(STACK[0x7DC]) ^ 0x63;
  LOBYTE(STACK[0xBBCA]) = LODWORD(STACK[0x7FC]) - 15;
  LOBYTE(STACK[0x64AA]) = LODWORD(STACK[0x8C0]) - 15;
  LOBYTE(STACK[0xBBCB]) = LODWORD(STACK[0x8B8]) ^ 0xC2;
  LOBYTE(STACK[0x64AB]) = LODWORD(STACK[0x948]) ^ 0xDF;
  LOBYTE(STACK[0xBBCC]) = v160 - 15;
  LOBYTE(STACK[0x64AC]) = LODWORD(STACK[0x8E0]) - 15;
  LOBYTE(STACK[0xBBCD]) = LODWORD(STACK[0x7C0]) ^ 0x63;
  LOBYTE(STACK[0x64AD]) = LODWORD(STACK[0x7D0]) - 15;
  LOBYTE(STACK[0xBBCE]) = LODWORD(STACK[0x8A8]) - 15;
  LOBYTE(STACK[0x64AE]) = LODWORD(STACK[0x858]) - 15;
  LOBYTE(STACK[0xBBCF]) = -13 * ((v152 >> 31) ^ 0xD6) - ((-26 * ((v152 >> 31) ^ 0xD6)) & 0xE3) - 15;
  LOBYTE(STACK[0x64AF]) = LODWORD(STACK[0x878]) ^ 0x32;
  LOBYTE(STACK[0xBBD0]) = (BYTE3(v158) ^ 0x7D) - 2 * ((BYTE3(v158) ^ 0x7D) & 0xF3 ^ BYTE3(v158) & 2) - 15;
  LOBYTE(STACK[0x64B0]) = (BYTE3(v155) ^ 0x7C) - ((2 * (BYTE3(v155) ^ 0x7C)) & 0xE3) - 15;
  LOBYTE(STACK[0xBBD1]) = LODWORD(STACK[0x7C4]) - 15;
  LOBYTE(STACK[0x64B1]) = LODWORD(STACK[0x7D4]) - 15;
  LOBYTE(STACK[0xBBD2]) = LODWORD(STACK[0x808]) - 15;
  LOBYTE(STACK[0x64B2]) = LODWORD(STACK[0x830]) - 15;
  LOBYTE(STACK[0xBBD3]) = LODWORD(STACK[0x930]) ^ 0x67;
  LOBYTE(STACK[0x64B3]) = LODWORD(STACK[0x84C]) ^ 0x4D;
  LOBYTE(STACK[0xBBD4]) = LODWORD(STACK[0x8E8]) - 15;
  LOBYTE(STACK[0x64B4]) = (BYTE3(v154) ^ 0x63) - ((2 * (BYTE3(v154) ^ 0x63)) & 0xE3) - 15;
  LOBYTE(STACK[0xBBD5]) = LODWORD(STACK[0x7C8]) - 14;
  LOBYTE(STACK[0x64B5]) = LODWORD(STACK[0x7F0]) - 15;
  LOBYTE(STACK[0xBBD6]) = LODWORD(STACK[0x828]) - 15;
  LOBYTE(STACK[0x64B6]) = LODWORD(STACK[0x860]) - 15;
  LOBYTE(STACK[0xBBD7]) = LODWORD(STACK[0x8F8]) ^ 0x7C;
  LOBYTE(STACK[0x64B7]) = LODWORD(STACK[0x880]) ^ 0xA4;
  LOBYTE(STACK[0xBBD8]) = v155 - 15;
  LOBYTE(STACK[0x64B8]) = (BYTE3(v153) ^ 0x66) - 2 * ((BYTE3(v153) ^ 0x66) & 0xF9 ^ BYTE3(v153) & 8) - 15;
  LOBYTE(STACK[0xBBD9]) = LODWORD(STACK[0x7D8]) - 15;
  LOBYTE(STACK[0x64B9]) = LODWORD(STACK[0x800]) - 15;
  LOBYTE(STACK[0xBBDA]) = LODWORD(STACK[0x838]) - 15;
  LOBYTE(STACK[0x64BA]) = LODWORD(STACK[0x888]) - 14;
  LOBYTE(STACK[0xBBDB]) = v120 ^ 0x1D;
  LOBYTE(STACK[0x64BB]) = LODWORD(STACK[0x898]) ^ 0x43;
  LOBYTE(STACK[0xBBDC]) = (((v136 - ((2 * v136) & 0x98C7117E) - 865892161) >> 24) ^ 0xCC) + (~(2 * (((v136 - ((2 * v136) & 0x98C7117E) - 865892161) >> 24) ^ 0xCC)) | 0x1D) - 14;
  LOBYTE(STACK[0x64BC]) = v150 - 15;
  LOBYTE(STACK[0xBBDD]) = LODWORD(STACK[0x7EC]) - 15;
  LOBYTE(STACK[0x64BD]) = LODWORD(STACK[0x81C]) - 15;
  LOBYTE(STACK[0xBBDE]) = BYTE1(v136) - ((v136 >> 7) & 0xE2) - 15;
  LOBYTE(STACK[0x64BE]) = LODWORD(STACK[0x8D8]) - 15;
  LOBYTE(STACK[0xBBDF]) = v136 ^ 0xF1;
  LOBYTE(v138) = LODWORD(STACK[0x900]) - 15;
  LOBYTE(STACK[0x64BF]) = v148 ^ 0xF1;
  LOBYTE(STACK[0xBBC0]) = v138 ^ LOBYTE(STACK[0x44F0]) ^ 0xDF;
  LOBYTE(STACK[0x64A0]) = ((BYTE3(v156) ^ 0x27) - ((2 * (BYTE3(v156) ^ 0x27)) & 0xE3) - 15) ^ LOBYTE(STACK[0xE5C0]) ^ 0xF1;
  LOBYTE(v138) = *(STACK[0x8C8] + (((LOBYTE(STACK[0x44F1]) ^ 0xDF) + 110) ^ 0x64));
  v164 = STACK[0x8C8];
  LOBYTE(v137) = LODWORD(STACK[0x810]) - 14;
  LOBYTE(STACK[0xBBC1]) = (LODWORD(STACK[0x7E0]) - 15) ^ (v138 - ((2 * v138 - 100) & 0xE3) + 63) ^ 0x18;
  LOBYTE(v138) = v137 ^ LOBYTE(STACK[0xE5C1]);
  LOBYTE(v137) = LODWORD(STACK[0x850]) - 15;
  LOBYTE(STACK[0x64A1]) = v138 ^ 0xF1;
  LOBYTE(v138) = v137 ^ LOBYTE(STACK[0x44F2]);
  LOBYTE(v137) = LODWORD(STACK[0x8A0]) - 15;
  LOBYTE(STACK[0xBBC2]) = v138 ^ 0xDF;
  LOBYTE(STACK[0x64A2]) = v137 ^ LOBYTE(STACK[0xE5C2]) ^ 0xF1;
  LOBYTE(STACK[0xBBC3]) = LODWORD(STACK[0x958]) ^ LOBYTE(STACK[0x44F3]) ^ 0xF1;
  LODWORD(v138) = *(v163 + (((LOBYTE(STACK[0xE5C3]) ^ 0xF1) + 110) ^ 0xB0));
  HIDWORD(v152) = v138 ^ 0x13;
  LODWORD(v152) = ~v138 << 24;
  LOBYTE(STACK[0x64A3]) = LODWORD(STACK[0x960]) ^ ((v152 >> 31) + (~(2 * (v152 >> 31)) | 0x1D) - 14) ^ 0x8A;
  LOBYTE(STACK[0xBBC4]) ^= LOBYTE(STACK[0x44F4]) ^ 0xDF;
  LOBYTE(v138) = (((LOBYTE(STACK[0x64A4]) ^ LOBYTE(STACK[0xE5C4])) >> 1) | ((LOBYTE(STACK[0x64A4]) ^ LOBYTE(STACK[0xE5C4])) << 7)) + (~(LOBYTE(STACK[0x64A4]) ^ LOBYTE(STACK[0xE5C4])) | 0xE5) - 114;
  v165 = STACK[0x920];
  LOBYTE(v138) = *(STACK[0x920] + (v138 ^ 0xBALL)) ^ ((v138 ^ 0xDC) - ((2 * (v138 ^ 0xDC) + 60) & 0x6A) + 83) ^ 0x5E;
  LOBYTE(STACK[0x64A4]) = -13 * v138 - ((-26 * v138) & 0xE3) - 15;
  LOBYTE(STACK[0xBBC5]) ^= LOBYTE(STACK[0x44F5]) ^ 0xDF;
  LOBYTE(STACK[0x64A5]) ^= LOBYTE(STACK[0xE5C5]) ^ 0xF1;
  LOBYTE(STACK[0xBBC6]) ^= LOBYTE(STACK[0x44F6]) ^ 0xDF;
  LOBYTE(STACK[0x64A6]) ^= LOBYTE(STACK[0xE5C6]) ^ 0xF1;
  LOBYTE(STACK[0xBBC7]) ^= LOBYTE(STACK[0x44F7]) ^ 0xDF;
  LOBYTE(STACK[0x64A7]) ^= LOBYTE(STACK[0xE5C7]) ^ 0xF1;
  LOBYTE(STACK[0xBBC8]) ^= LOBYTE(STACK[0x44F8]) ^ 0xDF;
  v166 = STACK[0x8F0];
  LODWORD(v138) = *(STACK[0x8F0] + (((LOBYTE(STACK[0xE5C8]) ^ 0xF1) - 92) ^ 0x8ELL));
  HIDWORD(v152) = v138 ^ 1;
  LODWORD(v152) = ~v138 << 24;
  LOBYTE(STACK[0x64A8]) ^= v152 >> 29;
  LOBYTE(STACK[0xBBC9]) ^= LOBYTE(STACK[0x44F9]) ^ 0xDF;
  v167 = STACK[0x938];
  LOBYTE(v138) = (*(STACK[0x938] + ((((LOBYTE(STACK[0xE5C9]) ^ LOBYTE(STACK[0x64A9])) >> 3) | (32 * (LOBYTE(STACK[0xE5C9]) ^ LOBYTE(STACK[0x64A9])))) ^ 0xE4)) + 103) ^ 0xEE;
  LOBYTE(STACK[0x64A9]) = 7 * v138 - ((14 * v138) & 0xE3) - 15;
  LOBYTE(STACK[0xBBCA]) ^= LOBYTE(STACK[0x44FA]) ^ 0xDF;
  LOBYTE(STACK[0x64AA]) ^= LOBYTE(STACK[0xE5CA]) ^ 0xF1;
  HIDWORD(v152) = LOBYTE(STACK[0xBBCB]) ^ LOBYTE(STACK[0x44FB]);
  LODWORD(v152) = (HIDWORD(v152) ^ 0x2E) << 24;
  LODWORD(v138) = *(v162 + ((v152 >> 25) ^ 0xA6));
  HIDWORD(v152) = v138 ^ 0x54;
  LODWORD(v152) = ~v138 << 24;
  LOBYTE(STACK[0xBBCB]) = -13 * ((v152 >> 31) ^ 0xD6) - ((-26 * ((v152 >> 31) ^ 0xD6)) & 0xE3) - 15;
  LODWORD(v138) = *(v162 + ((((LOBYTE(STACK[0x64AB]) ^ LOBYTE(STACK[0xE5CB])) >> 1) | ((LOBYTE(STACK[0x64AB]) ^ LOBYTE(STACK[0xE5CB])) << 7)) ^ 0xA6));
  HIDWORD(v152) = v138 ^ 0x54;
  LODWORD(v152) = ~v138 << 24;
  LOBYTE(STACK[0x64AB]) = -13 * ((v152 >> 31) ^ 0xD6) - ((-26 * ((v152 >> 31) ^ 0xD6)) & 0xE3) - 15;
  LOBYTE(STACK[0xBBCC]) ^= LOBYTE(STACK[0x44FC]) ^ 0xDF;
  LOBYTE(STACK[0x64AC]) ^= LOBYTE(STACK[0xE5CC]) ^ 0xF1;
  LODWORD(v138) = LOBYTE(STACK[0x44FD]);
  HIDWORD(v152) = ~v138;
  LODWORD(v152) = (v138 ^ 0xFFFFFFDF) << 24;
  LOBYTE(STACK[0xBBCD]) ^= -13 * (((((v152 >> 25) & 0x80) != 0) | 0xD6) ^ (2 * *(v162 + ((v152 >> 25) ^ 0xA6))) ^ 0xA8);
  LOBYTE(STACK[0x64AD]) ^= LOBYTE(STACK[0xE5CD]) ^ 0xF1;
  LOBYTE(STACK[0xBBCE]) ^= LOBYTE(STACK[0x44FE]) ^ 0xDF;
  LOBYTE(STACK[0x64AE]) ^= LOBYTE(STACK[0xE5CE]) ^ 0xF1;
  LOBYTE(STACK[0xBBCF]) ^= LOBYTE(STACK[0x44FF]) ^ 0xDF;
  LOBYTE(v138) = *(v164 + (((LOBYTE(STACK[0x64AF]) ^ 0xF1) + 110) ^ 0x64));
  LOBYTE(STACK[0x64AF]) = LOBYTE(STACK[0xE5CF]) ^ (v138 - ((2 * v138 - 100) & 0xE3) + 63) ^ 0x18;
  LOBYTE(STACK[0xBBD0]) ^= LOBYTE(STACK[0x4500]) ^ 0xDF;
  LOBYTE(STACK[0x64B0]) ^= LOBYTE(STACK[0xE5D0]) ^ 0xF1;
  LOBYTE(STACK[0xBBD1]) ^= LOBYTE(STACK[0x4501]) ^ 0xDF;
  LOBYTE(STACK[0x64B1]) ^= LOBYTE(STACK[0xE5D1]) ^ 0xF1;
  LODWORD(v138) = LOBYTE(STACK[0xBBD2]);
  HIDWORD(v152) = v138 ^ 1;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LOBYTE(STACK[0xBBD2]) = LOBYTE(STACK[0x4502]) ^ 0x2E ^ (7 * ((*(v167 + ((v152 >> 27) ^ 0xE4)) + 103) ^ 0xEE));
  LOBYTE(STACK[0x64B2]) ^= LOBYTE(STACK[0xE5D2]) ^ 0xF1;
  LODWORD(v137) = LOBYTE(STACK[0x4503]);
  HIDWORD(v152) = ~v137;
  LODWORD(v152) = (v137 ^ 0xFFFFFFDF) << 24;
  LODWORD(v137) = *(v162 + ((v152 >> 25) ^ 0xA6));
  HIDWORD(v152) = v137 ^ 0x54;
  LODWORD(v152) = ~v137 << 24;
  LOBYTE(STACK[0xBBD3]) ^= -13 * ((v152 >> 31) ^ 0xD6);
  LODWORD(v138) = LOBYTE(STACK[0xE5D3]);
  HIDWORD(v152) = ~v138;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LODWORD(v138) = ((v152 >> 25) - ((2 * (v152 >> 25)) & 0x3C) + 30) ^ 0x4F;
  LOBYTE(STACK[0x64B3]) ^= -13 * (*(v165 + (((v152 >> 25) - ((2 * (v152 >> 25)) & 0x3C) + 30) ^ 0x29)) ^ (v138 - ((2 * v138 + 60) & 0x6A) + 83) ^ 0x5E);
  LOBYTE(STACK[0xBBD4]) ^= LOBYTE(STACK[0x4504]) ^ 0xDF;
  LODWORD(v138) = *(v166 + (((LOBYTE(STACK[0x64B4]) ^ LOBYTE(STACK[0xE5D4])) - 92) ^ 0x8ELL));
  HIDWORD(v152) = v138 ^ 1;
  LODWORD(v152) = ~v138 << 24;
  LOBYTE(STACK[0x64B4]) = (v152 >> 29) - ((2 * (v152 >> 29)) & 0xE3) - 15;
  LOBYTE(STACK[0xBBD5]) ^= LOBYTE(STACK[0x4505]) ^ 0xDF;
  LOBYTE(STACK[0x64B5]) ^= LOBYTE(STACK[0xE5D5]) ^ 0xF1;
  LOBYTE(STACK[0xBBD6]) ^= LOBYTE(STACK[0x4506]) ^ 0xDF;
  LOBYTE(STACK[0x64B6]) ^= LOBYTE(STACK[0xE5D6]) ^ 0xF1;
  LOBYTE(STACK[0xBBD7]) ^= LOBYTE(STACK[0x4507]) ^ 0xDF;
  LOBYTE(STACK[0x64B7]) ^= LOBYTE(STACK[0xE5D7]) ^ 0xF1;
  LODWORD(v138) = *(v163 + (((LOBYTE(STACK[0x4508]) ^ 0xDF) + 110) ^ 0xB0));
  HIDWORD(v152) = v138 ^ 0x13;
  LODWORD(v152) = ~v138 << 24;
  v168 = STACK[0x970];
  LODWORD(v138) = *(STACK[0x970] + (((LOBYTE(STACK[0xBBD8]) ^ 0x92 ^ ((v152 >> 31) - ((2 * (v152 >> 31)) & 0xE3) - 15)) - 92) ^ 0x4ELL)) - 49;
  HIDWORD(v152) = v138 ^ 0x11;
  LODWORD(v152) = (v138 ^ 0x20) << 24;
  LOBYTE(STACK[0xBBD8]) = (v152 >> 29) + (~(2 * (v152 >> 29)) | 0x1D) - 14;
  LODWORD(v138) = LOBYTE(STACK[0xE5D8]);
  HIDWORD(v152) = v138 ^ 1;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  v169 = STACK[0x928];
  LODWORD(v138) = *(STACK[0x928] + ((v152 >> 27) ^ 0xDBLL));
  LOBYTE(STACK[0x64B8]) ^= 7 * (((v138 >> 6) | 0x88) ^ (4 * v138) ^ 0xE4);
  LOBYTE(STACK[0xBBD9]) ^= LOBYTE(STACK[0x4509]) ^ 0xDF;
  LOBYTE(STACK[0x64B9]) ^= LOBYTE(STACK[0xE5D9]) ^ 0xF1;
  LOBYTE(STACK[0xBBDA]) ^= LOBYTE(STACK[0x450A]) ^ 0xDF;
  LODWORD(v138) = *(v168 + (((LOBYTE(STACK[0xE5DA]) ^ LOBYTE(STACK[0x64BA])) - 92) ^ 0x4ELL)) - 49;
  HIDWORD(v152) = v138 ^ 0x11;
  LODWORD(v152) = (v138 ^ 0x20) << 24;
  LOBYTE(STACK[0x64BA]) = (v152 >> 29) - ((2 * (v152 >> 29)) & 0xE3) - 15;
  LOBYTE(STACK[0xBBDB]) ^= LOBYTE(STACK[0x450B]) ^ 0xDF;
  LOBYTE(STACK[0x64BB]) ^= LOBYTE(STACK[0xE5DB]) ^ 0xF1;
  LODWORD(v138) = *(v168 + (((LOBYTE(STACK[0xBBDC]) ^ 0xF1) - 92) ^ 0x4ELL)) - 49;
  LODWORD(v137) = LOBYTE(STACK[0x450C]);
  HIDWORD(v152) = v138 ^ 0x11;
  LODWORD(v152) = (v138 ^ 0x20) << 24;
  LODWORD(v138) = v152 >> 29;
  HIDWORD(v152) = v138 ^ ~v137;
  LODWORD(v152) = (v138 ^ v137 ^ 0xFFFFFFDF) << 24;
  LODWORD(v138) = (v152 >> 25) - ((2 * (v152 >> 25)) & 0xFFFFFFBF) + 95;
  LOBYTE(v138) = *(v165 + (((v152 >> 25) - ((2 * (v152 >> 25)) & 0xBF) + 95) ^ 0x68)) ^ ((v138 ^ 0xE) - ((2 * (v138 ^ 0xE) + 60) & 0x6A) + 83) ^ 0x5E;
  LODWORD(v137) = LOBYTE(STACK[0xE5DC]);
  HIDWORD(v152) = ~v137;
  LODWORD(v152) = (v137 ^ 0xF0) << 24;
  LOBYTE(STACK[0xBBDC]) = -13 * v138 - ((-26 * v138) & 0xE3) - 15;
  LODWORD(v138) = *(v162 + ((v152 >> 25) ^ 0xA6));
  HIDWORD(v152) = v138 ^ 0x54;
  LODWORD(v152) = ~v138 << 24;
  LOBYTE(STACK[0x64BC]) ^= -13 * ((v152 >> 31) ^ 0xD6);
  LOBYTE(STACK[0xBBDD]) ^= LOBYTE(STACK[0x450D]) ^ 0xDF;
  LODWORD(v138) = LOBYTE(STACK[0xE5DD]);
  HIDWORD(v152) = v138 ^ 1;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LODWORD(v138) = *(v169 + ((v152 >> 27) ^ 0xDBLL));
  HIDWORD(v152) = v138 ^ 0xFFFFFFF9;
  LODWORD(v152) = v138 << 24;
  LOBYTE(STACK[0x64BD]) ^= 7 * ((v152 >> 30) ^ 0x88);
  LOBYTE(STACK[0xBBDE]) ^= LOBYTE(STACK[0x450E]) ^ 0xDF;
  LOBYTE(STACK[0x64BE]) ^= LOBYTE(STACK[0xE5DE]) ^ 0xF1;
  LOBYTE(v138) = *(v164 + (((LOBYTE(STACK[0xBBDF]) ^ 0xF1) + 110) ^ 0x64));
  LODWORD(v138) = *(v166 + (((LOBYTE(STACK[0x450F]) ^ 0xE9 ^ (v138 - ((2 * v138 - 100) & 0xBF) + 45)) - 92) ^ 0x8ELL));
  HIDWORD(v152) = v138 ^ 1;
  LODWORD(v152) = ~v138 << 24;
  LOBYTE(STACK[0xBBDF]) = (v152 >> 29) - ((2 * (v152 >> 29)) & 0xE3) - 15;
  LODWORD(v138) = LOBYTE(STACK[0x64BF]);
  HIDWORD(v152) = v138 ^ 1;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LODWORD(v137) = LOBYTE(STACK[0xE5DF]);
  LOBYTE(v138) = 7 * ((*(v167 + ((v152 >> 27) ^ 0xE4)) + 103) ^ 0xEE);
  HIDWORD(v152) = ~v137;
  LODWORD(v152) = (v137 ^ 0xF0) << 24;
  LODWORD(v137) = (v152 >> 25) - ((2 * (v152 >> 25)) & 0x4E) - 89;
  LOBYTE(STACK[0x64BF]) = v138 ^ (-13 * (*(v165 + (((v152 >> 25) - ((2 * (v152 >> 25)) & 0x4E) - 89) ^ 0x90)) ^ ((v137 ^ 0xF6) - ((2 * (v137 ^ 0xF6) + 60) & 0x6A) + 83) ^ 0x5E)) ^ 0xF1;
  LOBYTE(STACK[0xC8B0]) = -15;
  LOBYTE(STACK[0x64D0]) = -15;
  LOBYTE(STACK[0xC8B1]) = STACK[0xBBC0];
  LOBYTE(STACK[0x64D1]) = STACK[0x64A0];
  LOBYTE(STACK[0xC8B2]) = STACK[0xBBC1];
  LOBYTE(STACK[0x64D2]) = STACK[0x64A1];
  LOBYTE(STACK[0xC8B3]) = STACK[0xBBC2];
  LOBYTE(STACK[0x64D3]) = STACK[0x64A2];
  LOBYTE(STACK[0xC8B4]) = STACK[0xBBC3];
  LOBYTE(STACK[0x64D4]) = STACK[0x64A3];
  LODWORD(v138) = LOBYTE(STACK[0xBBC4]);
  HIDWORD(v152) = v138 ^ 1;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LOBYTE(v138) = (*(v167 + ((v152 >> 27) ^ 0xE4)) + 103) ^ 0xEE;
  LOBYTE(STACK[0xC8B5]) = 7 * v138 - ((14 * v138) & 0xE3) - 15;
  LOBYTE(STACK[0x64D5]) = STACK[0x64A4];
  LOBYTE(STACK[0xC8B6]) = STACK[0xBBC5];
  LODWORD(v137) = LOBYTE(STACK[0xBBC6]);
  HIDWORD(v152) = v137 ^ 1;
  LODWORD(v152) = (v137 ^ 0xF0) << 24;
  LOBYTE(STACK[0x64D6]) = STACK[0x64A5];
  LODWORD(v138) = *(v169 + ((v152 >> 27) ^ 0xDBLL));
  HIDWORD(v152) = v138 ^ 0x39;
  LODWORD(v152) = v138 << 24;
  LOBYTE(STACK[0xC8B7]) = (~(14 * ((v152 >> 30) ^ 0x88)) | 0x1D) - ((v152 >> 30) ^ 0x88) + 8 * ((v152 >> 30) ^ 0x88) - 14;
  LOBYTE(STACK[0x64D7]) = STACK[0x64A6];
  LOBYTE(STACK[0xC8B8]) = STACK[0xBBC7];
  LOBYTE(STACK[0x64D8]) = STACK[0x64A7];
  LOBYTE(STACK[0xC8B9]) = STACK[0xBBC8];
  LODWORD(v138) = *(v168 + (((LOBYTE(STACK[0x64A8]) ^ 0xF1) - 92) ^ 0x4ELL)) - 49;
  HIDWORD(v152) = v138 ^ 0x11;
  LODWORD(v152) = (v138 ^ 0x20) << 24;
  LOBYTE(STACK[0x64D9]) = (v152 >> 29) - ((2 * (v152 >> 29)) & 0xE3) - 15;
  LOBYTE(STACK[0xC8BA]) = STACK[0xBBC9];
  LOBYTE(STACK[0x64DA]) = STACK[0x64A9];
  LOBYTE(STACK[0xC8BB]) = STACK[0xBBCA];
  LOBYTE(STACK[0x64DB]) = STACK[0x64AA];
  LOBYTE(STACK[0xC8BC]) = STACK[0xBBCB];
  LODWORD(v138) = LOBYTE(STACK[0x64AB]);
  HIDWORD(v152) = ~v138;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LODWORD(v138) = *(v162 + ((v152 >> 25) ^ 0xA6));
  HIDWORD(v152) = v138 ^ 0x54;
  LODWORD(v152) = ~v138 << 24;
  LOBYTE(STACK[0x64DC]) = -13 * ((v152 >> 31) ^ 0xD6) - ((-26 * ((v152 >> 31) ^ 0xD6)) & 0xE3) - 15;
  LOBYTE(STACK[0xC8BD]) = STACK[0xBBCC];
  LOBYTE(STACK[0x64DD]) = STACK[0x64AC];
  LOBYTE(STACK[0xC8BE]) = STACK[0xBBCD];
  LOBYTE(STACK[0x64DE]) = STACK[0x64AD];
  LOBYTE(STACK[0xC8BF]) = STACK[0xBBCE];
  LOBYTE(STACK[0x64DF]) = STACK[0x64AE];
  LOBYTE(STACK[0xC8C0]) = STACK[0xBBCF];
  LOBYTE(STACK[0x64E0]) = STACK[0x64AF];
  LOBYTE(STACK[0xC8C1]) = STACK[0xBBD0];
  LOBYTE(STACK[0x64E1]) = STACK[0x64B0];
  LODWORD(v138) = LOBYTE(STACK[0xBBD1]);
  HIDWORD(v152) = ~v138;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LODWORD(v138) = (v152 >> 25) - ((2 * (v152 >> 25)) & 0x10) - 120;
  LOBYTE(v138) = *(v165 + (((v152 >> 25) - ((2 * (v152 >> 25)) & 0x10) - 120) ^ 0xBFLL)) ^ ((v138 ^ 0xD9) - ((2 * (v138 ^ 0xD9) + 60) & 0x6A) + 83) ^ 0x5E;
  LOBYTE(STACK[0xC8C2]) = -13 * v138 - ((-26 * v138) & 0xE3) - 15;
  LOBYTE(STACK[0x64E2]) = STACK[0x64B1];
  LOBYTE(STACK[0xC8C3]) = STACK[0xBBD2];
  LOBYTE(STACK[0x64E3]) = STACK[0x64B2];
  LOBYTE(STACK[0xC8C4]) = STACK[0xBBD3];
  LOBYTE(STACK[0x64E4]) = STACK[0x64B3];
  LOBYTE(STACK[0xC8C5]) = STACK[0xBBD4];
  LOBYTE(STACK[0x64E5]) = STACK[0x64B4];
  LOBYTE(STACK[0xC8C6]) = STACK[0xBBD5];
  LOBYTE(STACK[0x64E6]) = STACK[0x64B5];
  LOBYTE(STACK[0xC8C7]) = STACK[0xBBD6];
  LOBYTE(STACK[0x64E7]) = STACK[0x64B6];
  LOBYTE(STACK[0xC8C8]) = STACK[0xBBD7];
  LODWORD(v138) = LOBYTE(STACK[0x64B7]);
  HIDWORD(v152) = ~v138;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LODWORD(v138) = (v152 >> 25) - ((2 * (v152 >> 25)) & 0xFFFFFF8F) + 71;
  LOBYTE(v138) = *(v165 + (((v152 >> 25) - ((2 * (v152 >> 25)) & 0x8F) + 71) ^ 0x70)) ^ ((v138 ^ 0x16) - ((2 * (v138 ^ 0x16) + 60) & 0x6A) + 83) ^ 0x5E;
  LOBYTE(STACK[0x64E8]) = -13 * v138 - ((-26 * v138) & 0xE3) - 15;
  LOBYTE(STACK[0xC8C9]) = STACK[0xBBD8];
  LOBYTE(STACK[0x64E9]) = STACK[0x64B8];
  LOBYTE(STACK[0xC8CA]) = STACK[0xBBD9];
  LOBYTE(STACK[0x64EA]) = STACK[0x64B9];
  LOBYTE(STACK[0xC8CB]) = STACK[0xBBDA];
  LODWORD(v137) = LOBYTE(STACK[0xBBDB]);
  HIDWORD(v152) = v137 ^ 1;
  LODWORD(v152) = (v137 ^ 0xF0) << 24;
  LOBYTE(STACK[0x64EB]) = STACK[0x64BA];
  LODWORD(v138) = *(v169 + ((v152 >> 27) ^ 0xDBLL));
  HIDWORD(v152) = v138 ^ 0x39;
  LODWORD(v152) = v138 << 24;
  LOBYTE(STACK[0xC8CC]) = 7 * ((v152 >> 30) ^ 0x88) - ((14 * ((v152 >> 30) ^ 0x88)) & 0xE3) - 15;
  LOBYTE(STACK[0x64EC]) = STACK[0x64BB];
  LOBYTE(STACK[0xC8CD]) = STACK[0xBBDC];
  LOBYTE(STACK[0x64ED]) = STACK[0x64BC];
  LOBYTE(STACK[0xC8CE]) = STACK[0xBBDD];
  LOBYTE(STACK[0x64EE]) = STACK[0x64BD];
  LOBYTE(STACK[0xC8CF]) = STACK[0xBBDE];
  LOBYTE(STACK[0x64EF]) = STACK[0x64BE];
  LODWORD(v138) = *(v163 + (((LOBYTE(STACK[0xBBDF]) ^ 0xF1) + 110) ^ 0xB0));
  HIDWORD(v152) = v138 ^ 0x13;
  LODWORD(v152) = ~v138 << 24;
  LOBYTE(STACK[0xC8D0]) = (v152 >> 31) ^ 0x63;
  LOBYTE(STACK[0x64F0]) = STACK[0x64BF];
  LOBYTE(STACK[0xC8D1]) = STACK[0xE3D0];
  LOBYTE(STACK[0x64F1]) = STACK[0xCEF0];
  LOBYTE(STACK[0xC8D2]) = STACK[0xE3D1];
  LOBYTE(STACK[0x64F2]) = STACK[0xCEF1];
  LOBYTE(STACK[0xC8D3]) = STACK[0xE3D2];
  LOBYTE(STACK[0x64F3]) = STACK[0xCEF2];
  LOBYTE(STACK[0xC8D4]) = STACK[0xE3D3];
  LOBYTE(STACK[0x64F4]) = STACK[0xCEF3];
  LOBYTE(STACK[0xC8D5]) = (*(v164 + (((LOBYTE(STACK[0xE3D4]) ^ 0xF1) + 110) ^ 0x64)) + 78) ^ 0x18;
  LOBYTE(STACK[0x64F5]) = STACK[0xCEF4];
  LOBYTE(STACK[0xC8D6]) = STACK[0xE3D5];
  LOBYTE(STACK[0x64F6]) = STACK[0xCEF5];
  LOBYTE(STACK[0xC8D7]) = STACK[0xE3D6];
  LOBYTE(STACK[0x64F7]) = STACK[0xCEF6];
  LOBYTE(STACK[0xC8D8]) = STACK[0xE3D7];
  LOBYTE(STACK[0x64F8]) = STACK[0xCEF7];
  LODWORD(v138) = *(v168 + (((LOBYTE(STACK[0xE3D8]) ^ 0xF1) - 92) ^ 0x4ELL)) - 49;
  HIDWORD(v152) = v138 ^ 0x11;
  LODWORD(v152) = (v138 ^ 0x20) << 24;
  LOBYTE(STACK[0xC8D9]) = (v152 >> 29) - ((2 * (v152 >> 29)) & 0xE3) - 15;
  LOBYTE(STACK[0x64F9]) = STACK[0xCEF8];
  LOBYTE(STACK[0xC8DA]) = STACK[0xE3D9];
  LOBYTE(STACK[0x64FA]) = STACK[0xCEF9];
  LOBYTE(STACK[0xC8DB]) = STACK[0xE3DA];
  LOBYTE(STACK[0x64FB]) = STACK[0xCEFA];
  LOBYTE(STACK[0xC8DC]) = STACK[0xE3DB];
  LOBYTE(STACK[0x64FC]) = STACK[0xCEFB];
  LOBYTE(STACK[0xC8DD]) = STACK[0xE3DC];
  LODWORD(v138) = LOBYTE(STACK[0xCEFC]);
  HIDWORD(v152) = ~v138;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LODWORD(v138) = (v152 >> 25) - ((2 * (v152 >> 25)) & 0x16) + 11;
  LOBYTE(v138) = *(v165 + (((v152 >> 25) - ((2 * (v152 >> 25)) & 0x16) + 11) ^ 0x3CLL)) ^ ((v138 ^ 0x5A) - ((2 * (v138 ^ 0x5A) + 60) & 0x6A) + 83) ^ 0x5E;
  LOBYTE(STACK[0x64FD]) = -13 * v138 - ((-26 * v138) & 0xE3) - 15;
  LOBYTE(STACK[0xC8DE]) = STACK[0xE3DD];
  LOBYTE(STACK[0x64FE]) = STACK[0xCEFD];
  LOBYTE(STACK[0xC8DF]) = STACK[0xE3DE];
  LODWORD(v137) = LOBYTE(STACK[0xE3DF]);
  HIDWORD(v152) = ~v137;
  LODWORD(v152) = (v137 ^ 0xF0) << 24;
  LOBYTE(STACK[0x64FF]) = STACK[0xCEFE];
  LODWORD(v138) = *(v162 + ((v152 >> 25) ^ 0xA6));
  HIDWORD(v152) = v138 ^ 0x54;
  LODWORD(v152) = ~v138 << 24;
  LOBYTE(STACK[0xC8E0]) = (~(-26 * ((v152 >> 31) ^ 0xD6)) | 0x1D) - 13 * ((v152 >> 31) ^ 0xD6) - 14;
  LODWORD(v138) = *(v163 + (((LOBYTE(STACK[0xCEFF]) ^ 0xF1) + 110) ^ 0xB0));
  HIDWORD(v152) = v138 ^ 0x13;
  LODWORD(v152) = ~v138 << 24;
  LOBYTE(STACK[0x6500]) = (v152 >> 31) ^ 0x63;
  LOBYTE(STACK[0xC8E1]) = STACK[0xE3E0];
  LOBYTE(STACK[0x6501]) = STACK[0xCF00];
  LODWORD(v138) = *(v168 + (((LOBYTE(STACK[0xE3E1]) ^ 0xF1) - 92) ^ 0x4ELL)) - 49;
  HIDWORD(v152) = v138 ^ 0x11;
  LODWORD(v152) = (v138 ^ 0x20) << 24;
  LOBYTE(STACK[0xC8E2]) = (v152 >> 29) - ((2 * (v152 >> 29)) & 0xE3) - 15;
  LOBYTE(STACK[0x6502]) = STACK[0xCF01];
  LOBYTE(STACK[0xC8E3]) = STACK[0xE3E2];
  LOBYTE(STACK[0x6503]) = STACK[0xCF02];
  LOBYTE(STACK[0xC8E4]) = STACK[0xE3E3];
  LOBYTE(STACK[0x6504]) = STACK[0xCF03];
  LOBYTE(STACK[0xC8E5]) = STACK[0xE3E4];
  LOBYTE(STACK[0x6505]) = STACK[0xCF04];
  LOBYTE(STACK[0xC8E6]) = STACK[0xE3E5];
  LOBYTE(STACK[0x6506]) = STACK[0xCF05];
  LODWORD(v138) = LOBYTE(STACK[0xE3E6]);
  HIDWORD(v152) = ~v138;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LODWORD(v138) = (v152 >> 25) - ((2 * (v152 >> 25)) & 0xFFFFFFEA) - 11;
  LOBYTE(v138) = *(v165 + (((v152 >> 25) - ((2 * (v152 >> 25)) & 0xEA) - 11) ^ 0xC2)) ^ ((v138 ^ 0xA4) - ((2 * (v138 ^ 0xA4) + 60) & 0x6A) + 83) ^ 0x5E;
  LOBYTE(STACK[0xC8E7]) = -13 * v138 - ((-26 * v138) & 0xE3) - 15;
  LOBYTE(STACK[0x6507]) = STACK[0xCF06];
  LOBYTE(STACK[0xC8E8]) = STACK[0xE3E7];
  LOBYTE(STACK[0x6508]) = STACK[0xCF07];
  LOBYTE(STACK[0xC8E9]) = STACK[0xE3E8];
  LOBYTE(STACK[0x6509]) = STACK[0xCF08];
  LOBYTE(STACK[0xC8EA]) = STACK[0xE3E9];
  LOBYTE(STACK[0x650A]) = STACK[0xCF09];
  LOBYTE(STACK[0xC8EB]) = STACK[0xE3EA];
  LOBYTE(STACK[0x650B]) = STACK[0xCF0A];
  LOBYTE(STACK[0xC8EC]) = STACK[0xE3EB];
  LOBYTE(STACK[0x650C]) = STACK[0xCF0B];
  LODWORD(v137) = LOBYTE(STACK[0xCF0C]);
  HIDWORD(v152) = ~v137;
  LODWORD(v152) = (v137 ^ 0xF0) << 24;
  LOBYTE(STACK[0xC8ED]) = STACK[0xE3EC];
  LODWORD(v138) = *(v162 + ((v152 >> 25) ^ 0xA6));
  HIDWORD(v152) = v138 ^ 0x54;
  LODWORD(v152) = ~v138 << 24;
  LOBYTE(STACK[0x650D]) = -13 * ((v152 >> 31) ^ 0xD6) - ((-26 * ((v152 >> 31) ^ 0xD6)) & 0xE3) - 15;
  LOBYTE(STACK[0xC8EE]) = STACK[0xE3ED];
  LODWORD(v138) = *(v168 + (((LOBYTE(STACK[0xCF0D]) ^ 0xF1) - 92) ^ 0x4ELL)) - 49;
  HIDWORD(v152) = v138 ^ 0x11;
  LODWORD(v152) = (v138 ^ 0x20) << 24;
  LOBYTE(STACK[0x650E]) = (v152 >> 29) - ((2 * (v152 >> 29)) & 0xE3) - 15;
  LOBYTE(STACK[0xC8EF]) = STACK[0xE3EE];
  LOBYTE(STACK[0x650F]) = STACK[0xCF0E];
  LODWORD(v137) = LOBYTE(STACK[0xCF0F]);
  HIDWORD(v152) = ~v137;
  LODWORD(v152) = (v137 ^ 0xF0) << 24;
  LOBYTE(STACK[0xC8F0]) = STACK[0xE3EF];
  LODWORD(v138) = *(v162 + ((v152 >> 25) ^ 0xA6));
  HIDWORD(v152) = v138 ^ 0x54;
  LODWORD(v152) = ~v138 << 24;
  LOBYTE(STACK[0x6510]) = (~(-26 * ((v152 >> 31) ^ 0xD6)) | 0x1D) - 13 * ((v152 >> 31) ^ 0xD6) - 14;
  LOBYTE(STACK[0xC8F1]) = STACK[0xE3F0];
  LOBYTE(STACK[0x6511]) = STACK[0xCF10];
  LODWORD(v138) = LOBYTE(STACK[0xE3F1]);
  HIDWORD(v152) = ~v138;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LODWORD(v138) = (v152 >> 25) - ((2 * (v152 >> 25)) & 0x12) - 119;
  LOBYTE(v138) = *(v165 + (((v152 >> 25) - ((2 * (v152 >> 25)) & 0x12) - 119) ^ 0xBELL)) ^ ((v138 ^ 0xD8) + ((66 - 2 * (v138 ^ 0xD8)) | 0x95) + 84) ^ 0x5E;
  LOBYTE(STACK[0xC8F2]) = (~(-26 * v138) | 0x1D) - 13 * v138 - 14;
  LODWORD(v138) = *(v163 + (((LOBYTE(STACK[0xCF11]) ^ 0xF1) + 110) ^ 0xB0));
  HIDWORD(v152) = v138 ^ 0x13;
  LODWORD(v152) = ~v138 << 24;
  LOBYTE(STACK[0x6512]) = (v152 >> 31) ^ 0x63;
  LODWORD(v138) = *(v166 + (((LOBYTE(STACK[0xE3F2]) ^ 0xF1) - 92) ^ 0x8ELL));
  HIDWORD(v152) = v138 ^ 1;
  LODWORD(v152) = ~v138 << 24;
  LOBYTE(STACK[0xC8F3]) = (v152 >> 29) - ((2 * (v152 >> 29)) & 0xE3) - 15;
  LOBYTE(STACK[0x6513]) = STACK[0xCF12];
  LOBYTE(STACK[0xC8F4]) = STACK[0xE3F3];
  LOBYTE(STACK[0x6514]) = STACK[0xCF13];
  LOBYTE(STACK[0xC8F5]) = STACK[0xE3F4];
  LOBYTE(STACK[0x6515]) = STACK[0xCF14];
  LOBYTE(STACK[0xC8F6]) = STACK[0xE3F5];
  LOBYTE(STACK[0x6516]) = STACK[0xCF15];
  LOBYTE(STACK[0xC8F7]) = STACK[0xE3F6];
  LOBYTE(STACK[0x6517]) = STACK[0xCF16];
  LOBYTE(STACK[0xC8F8]) = STACK[0xE3F7];
  LOBYTE(STACK[0x6518]) = STACK[0xCF17];
  LOBYTE(STACK[0xC8F9]) = STACK[0xE3F8];
  LOBYTE(STACK[0x6519]) = STACK[0xCF18];
  LODWORD(v138) = LOBYTE(STACK[0xE3F9]);
  HIDWORD(v152) = v138 ^ 1;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LODWORD(v138) = *(v169 + ((v152 >> 27) ^ 0xDBLL));
  LODWORD(v138) = ((v138 >> 6) | 0xFFFFFF88) ^ (4 * v138) ^ 0xFFFFFFE4;
  LOBYTE(STACK[0xC8FA]) = 7 * v138 - ((14 * v138) & 0xE3) - 15;
  LOBYTE(STACK[0x651A]) = STACK[0xCF19];
  LOBYTE(STACK[0xC8FB]) = STACK[0xE3FA];
  LOBYTE(STACK[0x651B]) = STACK[0xCF1A];
  LODWORD(v138) = LOBYTE(STACK[0xE3FB]);
  HIDWORD(v152) = ~v138;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LODWORD(v138) = *(v162 + ((v152 >> 25) ^ 0xA6));
  HIDWORD(v152) = v138 ^ 0x54;
  LODWORD(v152) = ~v138 << 24;
  LOBYTE(STACK[0xC8FC]) = -13 * ((v152 >> 31) ^ 0xD6) - ((-26 * ((v152 >> 31) ^ 0xD6)) & 0xE3) - 15;
  LOBYTE(STACK[0x651C]) = STACK[0xCF1B];
  LOBYTE(STACK[0xC8FD]) = STACK[0xE3FC];
  LOBYTE(STACK[0x651D]) = STACK[0xCF1C];
  LOBYTE(STACK[0xC8FE]) = STACK[0xE3FD];
  LOBYTE(STACK[0x651E]) = STACK[0xCF1D];
  LOBYTE(STACK[0xC8FF]) = STACK[0xE3FE];
  LODWORD(v138) = LOBYTE(STACK[0xCF1E]);
  HIDWORD(v152) = v138 ^ 1;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LODWORD(v138) = *(v169 + ((v152 >> 27) ^ 0xDBLL));
  HIDWORD(v152) = v138 ^ 0x39;
  LODWORD(v152) = v138 << 24;
  LOBYTE(STACK[0x651F]) = (~(14 * ((v152 >> 30) ^ 0x88)) | 0x1D) - ((v152 >> 30) ^ 0x88) + 8 * ((v152 >> 30) ^ 0x88) - 14;
  LOBYTE(STACK[0xC900]) = STACK[0xE3FF];
  LODWORD(v138) = *(v166 + (((LOBYTE(STACK[0xCF1F]) ^ 0xF1) - 92) ^ 0x8ELL));
  HIDWORD(v152) = v138 ^ 1;
  LODWORD(v152) = ~v138 << 24;
  LOBYTE(STACK[0x6520]) = (v152 >> 29) - ((2 * (v152 >> 29)) & 0xE3) - 15;
  LOBYTE(STACK[0xC901]) = STACK[0xE400];
  LOBYTE(STACK[0x6521]) = STACK[0xCF20];
  LOBYTE(STACK[0xC902]) = STACK[0xE401];
  LOBYTE(STACK[0x6522]) = STACK[0xCF21];
  LOBYTE(STACK[0xC903]) = STACK[0xE402];
  LOBYTE(STACK[0x6523]) = STACK[0xCF22];
  LOBYTE(STACK[0xC904]) = STACK[0xE403];
  LOBYTE(STACK[0x6524]) = STACK[0xCF23];
  LOBYTE(STACK[0xC905]) = STACK[0xE404];
  LOBYTE(STACK[0x6525]) = STACK[0xCF24];
  LOBYTE(STACK[0xC906]) = STACK[0xE405];
  LODWORD(v138) = LOBYTE(STACK[0xCF25]);
  HIDWORD(v152) = ~v138;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LODWORD(v138) = *(v162 + ((v152 >> 25) ^ 0xA6));
  HIDWORD(v152) = v138 ^ 0x54;
  LODWORD(v152) = ~v138 << 24;
  LOBYTE(STACK[0x6526]) = -13 * ((v152 >> 31) ^ 0xD6) - ((-26 * ((v152 >> 31) ^ 0xD6)) & 0xE3) - 15;
  LODWORD(v138) = LOBYTE(STACK[0xE406]);
  HIDWORD(v152) = v138 ^ 1;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LOBYTE(v138) = (*(v167 + ((v152 >> 27) ^ 0xE4)) + 103) ^ 0xEE;
  LOBYTE(STACK[0xC907]) = (~(14 * v138) | 0x1D) - v138 + 8 * v138 - 14;
  LOBYTE(STACK[0x6527]) = STACK[0xCF26];
  LOBYTE(STACK[0xC908]) = STACK[0xE407];
  LOBYTE(STACK[0x6528]) = (*(v164 + (((LOBYTE(STACK[0xCF27]) ^ 0xF1) + 110) ^ 0x64)) + 78) ^ 0x18;
  LOBYTE(STACK[0xC909]) = STACK[0xE408];
  LOBYTE(STACK[0x6529]) = STACK[0xCF28];
  LODWORD(v138) = LOBYTE(STACK[0xE409]);
  HIDWORD(v152) = v138 ^ 1;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LOBYTE(v138) = (*(v167 + ((v152 >> 27) ^ 0xE4)) + 103) ^ 0xEE;
  LOBYTE(STACK[0xC90A]) = 7 * v138 - ((14 * v138) & 0xE3) - 15;
  LOBYTE(STACK[0x652A]) = STACK[0xCF29];
  LOBYTE(STACK[0xC90B]) = STACK[0xE40A];
  LOBYTE(STACK[0x652B]) = STACK[0xCF2A];
  LODWORD(v138) = LOBYTE(STACK[0xE40B]);
  HIDWORD(v152) = ~v138;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LODWORD(v138) = *(v162 + ((v152 >> 25) ^ 0xA6));
  HIDWORD(v152) = v138 ^ 0x54;
  LODWORD(v152) = ~v138 << 24;
  LOBYTE(STACK[0xC90C]) = -13 * ((v152 >> 31) ^ 0xD6) - ((-26 * ((v152 >> 31) ^ 0xD6)) & 0xE3) - 15;
  LOBYTE(STACK[0x652C]) = STACK[0xCF2B];
  LOBYTE(STACK[0xC90D]) = STACK[0xE40C];
  LOBYTE(STACK[0x652D]) = STACK[0xCF2C];
  LOBYTE(STACK[0xC90E]) = STACK[0xE40D];
  LOBYTE(STACK[0x652E]) = STACK[0xCF2D];
  LOBYTE(STACK[0xC90F]) = STACK[0xE40E];
  LOBYTE(STACK[0x652F]) = STACK[0xCF2E];
  LOBYTE(STACK[0xC910]) = STACK[0xE40F];
  LOBYTE(STACK[0x6530]) = STACK[0xCF2F];
  LOBYTE(STACK[0xC911]) = STACK[0xE410];
  LOBYTE(STACK[0x6531]) = STACK[0xCF30];
  LOBYTE(STACK[0xC912]) = STACK[0xE411];
  LOBYTE(STACK[0x6532]) = STACK[0xCF31];
  LODWORD(v138) = *(v168 + (((LOBYTE(STACK[0xE412]) ^ 0xF1) - 92) ^ 0x4ELL)) - 49;
  HIDWORD(v152) = v138 ^ 0x11;
  LODWORD(v152) = (v138 ^ 0x20) << 24;
  LOBYTE(STACK[0xC913]) = (v152 >> 29) - ((2 * (v152 >> 29)) & 0xE3) - 15;
  LOBYTE(STACK[0x6533]) = STACK[0xCF32];
  LOBYTE(STACK[0xC914]) = STACK[0xE413];
  LOBYTE(STACK[0x6534]) = STACK[0xCF33];
  LOBYTE(STACK[0xC915]) = STACK[0xE414];
  LOBYTE(STACK[0x6535]) = STACK[0xCF34];
  LOBYTE(STACK[0xC916]) = STACK[0xE415];
  LOBYTE(STACK[0x6536]) = STACK[0xCF35];
  LOBYTE(STACK[0xC917]) = STACK[0xE416];
  LOBYTE(STACK[0x6537]) = STACK[0xCF36];
  LODWORD(v138) = LOBYTE(STACK[0xE417]);
  HIDWORD(v152) = ~v138;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LODWORD(v138) = (v152 >> 25) - ((2 * (v152 >> 25)) & 0x2E) + 23;
  LOBYTE(v138) = *(v165 + (((v152 >> 25) - ((2 * (v152 >> 25)) & 0x2E) + 23) ^ 0x20)) ^ ((v138 ^ 0x46) - ((2 * (v138 ^ 0x46) + 60) & 0x6A) + 83) ^ 0x5E;
  LOBYTE(STACK[0xC918]) = -13 * v138 - ((-26 * v138) & 0xE3) - 15;
  LODWORD(v138) = LOBYTE(STACK[0xCF37]);
  HIDWORD(v152) = ~v138;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LODWORD(v138) = (v152 >> 25) - ((2 * (v152 >> 25)) & 0x7C) + 62;
  LOBYTE(v138) = *(v165 + (((v152 >> 25) - ((2 * (v152 >> 25)) & 0x7C) + 62) ^ 9)) ^ ((v138 ^ 0x6F) - ((2 * (v138 ^ 0x6F) + 60) & 0x6A) + 83) ^ 0x5E;
  LOBYTE(STACK[0x6538]) = -13 * v138 - ((-26 * v138) & 0xE3) - 15;
  LOBYTE(STACK[0xC919]) = STACK[0xE418];
  LOBYTE(STACK[0x6539]) = STACK[0xCF38];
  LOBYTE(STACK[0xC91A]) = STACK[0xE419];
  LOBYTE(STACK[0x653A]) = STACK[0xCF39];
  LOBYTE(STACK[0xC91B]) = STACK[0xE41A];
  LODWORD(v138) = *(v166 + (((LOBYTE(STACK[0xCF3A]) ^ 0xF1) - 92) ^ 0x8ELL));
  HIDWORD(v152) = v138 ^ 1;
  LODWORD(v152) = ~v138 << 24;
  LOBYTE(STACK[0x653B]) = (v152 >> 29) - ((2 * (v152 >> 29)) & 0xE3) - 15;
  LOBYTE(STACK[0xC91C]) = STACK[0xE41B];
  LOBYTE(STACK[0x653C]) = STACK[0xCF3B];
  LOBYTE(STACK[0xC91D]) = STACK[0xE41C];
  LOBYTE(STACK[0x653D]) = STACK[0xCF3C];
  LOBYTE(STACK[0xC91E]) = STACK[0xE41D];
  LOBYTE(STACK[0x653E]) = STACK[0xCF3D];
  LODWORD(v138) = *(v168 + (((LOBYTE(STACK[0xE41E]) ^ 0xF1) - 92) ^ 0x4ELL)) - 49;
  HIDWORD(v152) = v138 ^ 0x11;
  LODWORD(v152) = (v138 ^ 0x20) << 24;
  LOBYTE(STACK[0xC91F]) = (v152 >> 29) - ((2 * (v152 >> 29)) & 0xE3) - 15;
  LOBYTE(STACK[0x653F]) = (*(v164 + (((LOBYTE(STACK[0xCF3E]) ^ 0xF1) + 110) ^ 0x64)) + 78) ^ 0x18;
  LOBYTE(STACK[0xC920]) = STACK[0xE41F];
  LOBYTE(STACK[0x6540]) = STACK[0xCF3F];
  LOBYTE(STACK[0xC921]) = STACK[0xE420];
  LODWORD(v138) = *(v166 + (((LOBYTE(STACK[0xCF40]) ^ 0xF1) - 92) ^ 0x8ELL));
  HIDWORD(v152) = v138 ^ 1;
  LODWORD(v152) = ~v138 << 24;
  LOBYTE(STACK[0x6541]) = (v152 >> 29) - ((2 * (v152 >> 29)) & 0xE3) - 15;
  LOBYTE(STACK[0xC922]) = STACK[0xE421];
  LOBYTE(STACK[0x6542]) = STACK[0xCF41];
  LODWORD(v138) = *(v168 + (((LOBYTE(STACK[0xE422]) ^ 0xF1) - 92) ^ 0x4ELL)) - 49;
  HIDWORD(v152) = v138 ^ 0x11;
  LODWORD(v152) = (v138 ^ 0x20) << 24;
  LOBYTE(STACK[0xC923]) = (v152 >> 29) - ((2 * (v152 >> 29)) & 0xE3) - 15;
  LOBYTE(STACK[0x6543]) = STACK[0xCF42];
  LOBYTE(STACK[0xC924]) = STACK[0xE423];
  LOBYTE(STACK[0x6544]) = STACK[0xCF43];
  LOBYTE(STACK[0xC925]) = STACK[0xE424];
  LOBYTE(STACK[0x6545]) = STACK[0xCF44];
  LODWORD(v138) = *(v166 + (((LOBYTE(STACK[0xE425]) ^ 0xF1) - 92) ^ 0x8ELL));
  HIDWORD(v152) = v138 ^ 1;
  LODWORD(v152) = ~v138 << 24;
  LOBYTE(STACK[0xC926]) = (v152 >> 29) - ((2 * (v152 >> 29)) & 0xE3) - 15;
  LOBYTE(STACK[0x6546]) = STACK[0xCF45];
  LOBYTE(STACK[0xC927]) = STACK[0xE426];
  LOBYTE(STACK[0x6547]) = STACK[0xCF46];
  LOBYTE(STACK[0xC928]) = STACK[0xE427];
  LOBYTE(STACK[0x6548]) = STACK[0xCF47];
  LOBYTE(STACK[0xC929]) = STACK[0xE428];
  LOBYTE(STACK[0x6549]) = STACK[0xCF48];
  LOBYTE(STACK[0xC92A]) = STACK[0xE429];
  LOBYTE(STACK[0x654A]) = STACK[0xCF49];
  LOBYTE(STACK[0xC92B]) = STACK[0xE42A];
  LOBYTE(STACK[0x654B]) = STACK[0xCF4A];
  LOBYTE(STACK[0xC92C]) = STACK[0xE42B];
  LOBYTE(STACK[0x654C]) = STACK[0xCF4B];
  LODWORD(v138) = *(v168 + (((LOBYTE(STACK[0xE42C]) ^ 0xF1) - 92) ^ 0x4ELL)) - 49;
  HIDWORD(v152) = v138 ^ 0x11;
  LODWORD(v152) = (v138 ^ 0x20) << 24;
  LOBYTE(STACK[0xC92D]) = (v152 >> 29) - ((2 * (v152 >> 29)) & 0xE3) - 15;
  LODWORD(v138) = *(v163 + (((LOBYTE(STACK[0xCF4C]) ^ 0xF1) + 110) ^ 0xB0));
  HIDWORD(v152) = v138 ^ 0x13;
  LODWORD(v152) = ~v138 << 24;
  LOBYTE(STACK[0x654D]) = (v152 >> 31) ^ 0x63;
  LOBYTE(STACK[0xC92E]) = STACK[0xE42D];
  LOBYTE(STACK[0x654E]) = STACK[0xCF4D];
  LOBYTE(STACK[0xC92F]) = STACK[0xE42E];
  LOBYTE(STACK[0x654F]) = STACK[0xCF4E];
  LOBYTE(STACK[0xC930]) = STACK[0xE42F];
  LOBYTE(STACK[0x6550]) = STACK[0xCF4F];
  LODWORD(v138) = *(v166 + (((LOBYTE(STACK[0xE430]) ^ 0xF1) - 92) ^ 0x8ELL));
  HIDWORD(v152) = v138 ^ 1;
  LODWORD(v152) = ~v138 << 24;
  LOBYTE(STACK[0xC931]) = (v152 >> 29) + (~(2 * (v152 >> 29)) | 0x1D) - 14;
  LOBYTE(STACK[0x6551]) = STACK[0xCF50];
  LODWORD(v138) = *(v163 + (((LOBYTE(STACK[0xE431]) ^ 0xF1) + 110) ^ 0xB0));
  HIDWORD(v152) = v138 ^ 0x13;
  LODWORD(v152) = ~v138 << 24;
  LOBYTE(STACK[0xC932]) = (v152 >> 31) ^ 0x63;
  LOBYTE(STACK[0x6552]) = STACK[0xCF51];
  LOBYTE(STACK[0xC933]) = STACK[0xE432];
  LOBYTE(STACK[0x6553]) = STACK[0xCF52];
  LOBYTE(STACK[0xC934]) = STACK[0xE433];
  LOBYTE(STACK[0x6554]) = STACK[0xCF53];
  LOBYTE(STACK[0xC935]) = STACK[0xE434];
  LOBYTE(STACK[0x6555]) = STACK[0xCF54];
  LOBYTE(STACK[0xC936]) = STACK[0xE435];
  LOBYTE(STACK[0x6556]) = STACK[0xCF55];
  LOBYTE(STACK[0xC937]) = STACK[0xE436];
  LOBYTE(STACK[0x6557]) = STACK[0xCF56];
  LOBYTE(STACK[0xC938]) = STACK[0xE437];
  LOBYTE(STACK[0x6558]) = STACK[0xCF57];
  LOBYTE(STACK[0xC939]) = STACK[0xE438];
  LOBYTE(STACK[0x6559]) = STACK[0xCF58];
  LOBYTE(STACK[0xC93A]) = STACK[0xE439];
  LOBYTE(STACK[0x655A]) = STACK[0xCF59];
  LOBYTE(STACK[0xC93B]) = STACK[0xE43A];
  LOBYTE(STACK[0x655B]) = STACK[0xCF5A];
  LOBYTE(STACK[0xC93C]) = STACK[0xE43B];
  LOBYTE(STACK[0x655C]) = STACK[0xCF5B];
  LOBYTE(STACK[0xC93D]) = STACK[0xE43C];
  LOBYTE(STACK[0x655D]) = STACK[0xCF5C];
  LOBYTE(STACK[0xC93E]) = STACK[0xE43D];
  LOBYTE(STACK[0x655E]) = STACK[0xCF5D];
  LOBYTE(STACK[0xC93F]) = STACK[0xE43E];
  LOBYTE(STACK[0x655F]) = STACK[0xCF5E];
  LOBYTE(STACK[0xC940]) = STACK[0xE43F];
  LOBYTE(STACK[0x6560]) = STACK[0xCF5F];
  LOBYTE(STACK[0xC941]) = STACK[0xE440];
  LOBYTE(STACK[0x6561]) = STACK[0xCF60];
  LOBYTE(STACK[0xC942]) = STACK[0xE441];
  LOBYTE(STACK[0x6562]) = STACK[0xCF61];
  LOBYTE(STACK[0xC943]) = STACK[0xE442];
  LOBYTE(STACK[0x6563]) = STACK[0xCF62];
  LOBYTE(STACK[0xC944]) = STACK[0xE443];
  LOBYTE(STACK[0x6564]) = STACK[0xCF63];
  LOBYTE(STACK[0xC945]) = STACK[0xE444];
  LOBYTE(STACK[0x6565]) = STACK[0xCF64];
  LOBYTE(STACK[0xC946]) = STACK[0xE445];
  LOBYTE(STACK[0x6566]) = STACK[0xCF65];
  LOBYTE(STACK[0xC947]) = STACK[0xE446];
  LODWORD(v138) = *(v166 + (((LOBYTE(STACK[0xCF66]) ^ 0xF1) - 92) ^ 0x8ELL));
  HIDWORD(v152) = v138 ^ 1;
  LODWORD(v152) = ~v138 << 24;
  LOBYTE(STACK[0x6567]) = (v152 >> 29) - ((2 * (v152 >> 29)) & 0xE3) - 15;
  LOBYTE(STACK[0xC948]) = STACK[0xE447];
  LOBYTE(STACK[0x6568]) = STACK[0xCF67];
  LODWORD(v138) = LOBYTE(STACK[0xE448]);
  HIDWORD(v152) = v138 ^ 1;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LOBYTE(v138) = (*(v167 + ((v152 >> 27) ^ 0xE4)) + 103) ^ 0xEE;
  LOBYTE(STACK[0xC949]) = 7 * v138 - ((14 * v138) & 0xE3) - 15;
  LOBYTE(STACK[0x6569]) = STACK[0xCF68];
  LOBYTE(STACK[0xC94A]) = STACK[0xE449];
  LOBYTE(STACK[0x656A]) = STACK[0xCF69];
  LOBYTE(STACK[0xC94B]) = STACK[0xE44A];
  LOBYTE(STACK[0x656B]) = STACK[0xCF6A];
  LOBYTE(STACK[0xC94C]) = STACK[0xE44B];
  LOBYTE(STACK[0x656C]) = STACK[0xCF6B];
  LOBYTE(STACK[0xC94D]) = STACK[0xE44C];
  LOBYTE(STACK[0x656D]) = STACK[0xCF6C];
  LOBYTE(STACK[0xC94E]) = STACK[0xE44D];
  LOBYTE(STACK[0x656E]) = STACK[0xCF6D];
  LOBYTE(STACK[0xC94F]) = STACK[0xE44E];
  LOBYTE(STACK[0x656F]) = STACK[0xCF6E];
  LOBYTE(STACK[0xC950]) = STACK[0xE44F];
  LOBYTE(STACK[0x6570]) = STACK[0xCF6F];
  LOBYTE(STACK[0xC951]) = STACK[0xE450];
  LOBYTE(STACK[0x6571]) = STACK[0xCF70];
  LOBYTE(STACK[0xC952]) = STACK[0xE451];
  LOBYTE(STACK[0x6572]) = STACK[0xCF71];
  LOBYTE(STACK[0xC953]) = STACK[0xE452];
  LOBYTE(STACK[0x6573]) = STACK[0xCF72];
  LOBYTE(STACK[0xC954]) = STACK[0xE453];
  LOBYTE(STACK[0x6574]) = STACK[0xCF73];
  LOBYTE(STACK[0xC955]) = STACK[0xE454];
  LOBYTE(STACK[0x6575]) = STACK[0xCF74];
  LOBYTE(STACK[0xC956]) = STACK[0xE455];
  LOBYTE(STACK[0x6576]) = STACK[0xCF75];
  LOBYTE(STACK[0xC957]) = STACK[0xE456];
  LOBYTE(STACK[0x6577]) = STACK[0xCF76];
  LOBYTE(STACK[0xC958]) = STACK[0xE457];
  LOBYTE(STACK[0x6578]) = STACK[0xCF77];
  LOBYTE(STACK[0xC959]) = STACK[0xE458];
  LOBYTE(STACK[0x6579]) = STACK[0xCF78];
  LOBYTE(STACK[0xC95A]) = STACK[0xE459];
  LODWORD(v138) = LOBYTE(STACK[0xCF79]);
  HIDWORD(v152) = v138 ^ 1;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LODWORD(v138) = *(v169 + ((v152 >> 27) ^ 0xDBLL));
  HIDWORD(v152) = v138 ^ 0x39;
  LODWORD(v152) = v138 << 24;
  LOBYTE(STACK[0x657A]) = 7 * ((v152 >> 30) ^ 0x88) - ((14 * ((v152 >> 30) ^ 0x88)) & 0xE3) - 15;
  LOBYTE(STACK[0xC95B]) = STACK[0xE45A];
  LOBYTE(STACK[0x657B]) = STACK[0xCF7A];
  LODWORD(v138) = *(v166 + (((LOBYTE(STACK[0xE45B]) ^ 0xF1) - 92) ^ 0x8ELL));
  HIDWORD(v152) = v138 ^ 1;
  LODWORD(v152) = ~v138 << 24;
  LOBYTE(STACK[0xC95C]) = (v152 >> 29) - ((2 * (v152 >> 29)) & 0xE3) - 15;
  LOBYTE(STACK[0x657C]) = STACK[0xCF7B];
  LOBYTE(STACK[0xC95D]) = STACK[0xE45C];
  LOBYTE(STACK[0x657D]) = STACK[0xCF7C];
  LOBYTE(STACK[0xC95E]) = STACK[0xE45D];
  LOBYTE(STACK[0x657E]) = STACK[0xCF7D];
  LOBYTE(STACK[0xC95F]) = STACK[0xE45E];
  LOBYTE(STACK[0x657F]) = STACK[0xCF7E];
  LOBYTE(STACK[0xC960]) = STACK[0xE45F];
  LOBYTE(STACK[0x6580]) = STACK[0xCF7F];
  LOBYTE(STACK[0xC961]) = STACK[0xE460];
  LOBYTE(STACK[0x6581]) = STACK[0xCF80];
  LOBYTE(STACK[0xC962]) = STACK[0xE461];
  LOBYTE(STACK[0x6582]) = STACK[0xCF81];
  LOBYTE(STACK[0xC963]) = STACK[0xE462];
  LOBYTE(STACK[0x6583]) = STACK[0xCF82];
  LOBYTE(STACK[0xC964]) = STACK[0xE463];
  LOBYTE(STACK[0x6584]) = STACK[0xCF83];
  LOBYTE(STACK[0xC965]) = STACK[0xE464];
  LODWORD(v138) = LOBYTE(STACK[0xCF84]);
  HIDWORD(v152) = ~v138;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LODWORD(v138) = (v152 >> 25) - ((2 * (v152 >> 25)) & 0x5A) - 83;
  LOBYTE(v138) = *(v165 + (((v152 >> 25) - ((2 * (v152 >> 25)) & 0x5A) - 83) ^ 0x9ALL)) ^ ((v138 ^ 0xFC) - ((2 * (v138 ^ 0xFC) + 60) & 0x6A) + 83) ^ 0x5E;
  LOBYTE(STACK[0x6585]) = (~(-26 * v138) | 0x1D) - 13 * v138 - 14;
  LOBYTE(STACK[0xC966]) = STACK[0xE465];
  LOBYTE(STACK[0x6586]) = STACK[0xCF85];
  LOBYTE(STACK[0xC967]) = STACK[0xE466];
  LOBYTE(STACK[0x6587]) = STACK[0xCF86];
  LOBYTE(STACK[0xC968]) = STACK[0xE467];
  LOBYTE(STACK[0x6588]) = STACK[0xCF87];
  LOBYTE(STACK[0xC969]) = STACK[0xE468];
  LOBYTE(STACK[0x6589]) = STACK[0xCF88];
  LOBYTE(STACK[0xC96A]) = STACK[0xE469];
  LOBYTE(STACK[0x658A]) = STACK[0xCF89];
  LOBYTE(STACK[0xC96B]) = STACK[0xE46A];
  LOBYTE(STACK[0x658B]) = STACK[0xCF8A];
  LOBYTE(STACK[0xC96C]) = STACK[0xE46B];
  LOBYTE(STACK[0x658C]) = STACK[0xCF8B];
  LOBYTE(STACK[0xC96D]) = STACK[0xE46C];
  LOBYTE(STACK[0x658D]) = STACK[0xCF8C];
  LOBYTE(STACK[0xC96E]) = STACK[0xE46D];
  LOBYTE(STACK[0x658E]) = STACK[0xCF8D];
  LOBYTE(STACK[0xC96F]) = STACK[0xE46E];
  LOBYTE(STACK[0x658F]) = STACK[0xCF8E];
  LOBYTE(STACK[0xC970]) = STACK[0xE46F];
  LOBYTE(STACK[0x6590]) = STACK[0xCF8F];
  LOBYTE(STACK[0xC971]) = STACK[0xE470];
  LOBYTE(STACK[0x6591]) = STACK[0xCF90];
  LOBYTE(STACK[0xC972]) = STACK[0xE471];
  LODWORD(v138) = *(v168 + (((LOBYTE(STACK[0xCF91]) ^ 0xF1) - 92) ^ 0x4ELL)) - 49;
  HIDWORD(v152) = v138 ^ 0x11;
  LODWORD(v152) = (v138 ^ 0x20) << 24;
  LOBYTE(STACK[0x6592]) = (v152 >> 29) - ((2 * (v152 >> 29)) & 0xE3) - 15;
  LOBYTE(STACK[0xC973]) = STACK[0xE472];
  LOBYTE(STACK[0x6593]) = STACK[0xCF92];
  LOBYTE(STACK[0xC974]) = STACK[0xE473];
  LOBYTE(STACK[0x6594]) = STACK[0xCF93];
  LOBYTE(STACK[0xC975]) = STACK[0xE474];
  LOBYTE(STACK[0x6595]) = STACK[0xCF94];
  LOBYTE(STACK[0xC976]) = STACK[0xE475];
  LOBYTE(STACK[0x6596]) = STACK[0xCF95];
  LOBYTE(STACK[0xC977]) = STACK[0xE476];
  LOBYTE(STACK[0x6597]) = STACK[0xCF96];
  LOBYTE(STACK[0xC978]) = STACK[0xE477];
  LOBYTE(STACK[0x6598]) = STACK[0xCF97];
  LOBYTE(STACK[0xC979]) = STACK[0xE478];
  LOBYTE(STACK[0x6599]) = STACK[0xCF98];
  LOBYTE(STACK[0xC97A]) = STACK[0xE479];
  LODWORD(v138) = LOBYTE(STACK[0xCF99]);
  HIDWORD(v152) = ~v138;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LODWORD(v138) = ((v152 >> 25) - ((2 * (v152 >> 25)) & 0x20) + 16) ^ 0x41;
  LOBYTE(v138) = *(v165 + (((v152 >> 25) - ((2 * (v152 >> 25)) & 0x20) + 16) ^ 0x27)) ^ (v138 - ((2 * v138 + 60) & 0x6A) + 83) ^ 0x5E;
  LOBYTE(STACK[0x659A]) = (~(-26 * v138) | 0x1D) - 13 * v138 - 14;
  LOBYTE(STACK[0xC97B]) = STACK[0xE47A];
  LOBYTE(STACK[0x659B]) = STACK[0xCF9A];
  LOBYTE(STACK[0xC97C]) = STACK[0xE47B];
  LOBYTE(STACK[0x659C]) = STACK[0xCF9B];
  LOBYTE(STACK[0xC97D]) = STACK[0xE47C];
  LOBYTE(STACK[0x659D]) = STACK[0xCF9C];
  LOBYTE(STACK[0xC97E]) = STACK[0xE47D];
  LOBYTE(STACK[0x659E]) = STACK[0xCF9D];
  LOBYTE(STACK[0xC97F]) = STACK[0xE47E];
  LOBYTE(STACK[0x659F]) = STACK[0xCF9E];
  LOBYTE(STACK[0xC980]) = STACK[0xE47F];
  LOBYTE(STACK[0x65A0]) = STACK[0xCF9F];
  LOBYTE(STACK[0xC981]) = STACK[0xE480];
  LOBYTE(STACK[0x65A1]) = STACK[0xCFA0];
  LOBYTE(STACK[0xC982]) = STACK[0xE481];
  LOBYTE(STACK[0x65A2]) = STACK[0xCFA1];
  LOBYTE(STACK[0xC983]) = STACK[0xE482];
  LOBYTE(STACK[0x65A3]) = STACK[0xCFA2];
  LOBYTE(STACK[0xC984]) = STACK[0xE483];
  LOBYTE(STACK[0x65A4]) = STACK[0xCFA3];
  LOBYTE(STACK[0xC985]) = STACK[0xE484];
  LOBYTE(STACK[0x65A5]) = STACK[0xCFA4];
  LOBYTE(STACK[0xC986]) = STACK[0xE485];
  LOBYTE(STACK[0x65A6]) = STACK[0xCFA5];
  LOBYTE(STACK[0xC987]) = STACK[0xE486];
  LOBYTE(STACK[0x65A7]) = STACK[0xCFA6];
  LOBYTE(STACK[0xC988]) = STACK[0xE487];
  LOBYTE(STACK[0x65A8]) = STACK[0xCFA7];
  LOBYTE(STACK[0xC989]) = STACK[0xE488];
  LOBYTE(STACK[0x65A9]) = (*(v164 + (((LOBYTE(STACK[0xCFA8]) ^ 0xF1) + 110) ^ 0x64)) + 78) ^ 0x18;
  LODWORD(v138) = *(v166 + (((LOBYTE(STACK[0xE489]) ^ 0xF1) - 92) ^ 0x8ELL));
  HIDWORD(v152) = v138 ^ 1;
  LODWORD(v152) = ~v138 << 24;
  LOBYTE(v138) = (v152 >> 29) + (~(2 * (v152 >> 29)) | 0x1D) - 14;
  LODWORD(v137) = LOBYTE(STACK[0xCFA9]);
  HIDWORD(v152) = ~v137;
  LODWORD(v152) = (v137 ^ 0xF0) << 24;
  LOBYTE(STACK[0xC98A]) = v138;
  LODWORD(v138) = *(v162 + ((v152 >> 25) ^ 0xA6));
  HIDWORD(v152) = v138 ^ 0x54;
  LODWORD(v152) = ~v138 << 24;
  LOBYTE(STACK[0x65AA]) = (~(-26 * ((v152 >> 31) ^ 0xD6)) | 0x1D) - 13 * ((v152 >> 31) ^ 0xD6) - 14;
  LOBYTE(STACK[0xC98B]) = STACK[0xE48A];
  LOBYTE(STACK[0x65AB]) = STACK[0xCFAA];
  LOBYTE(STACK[0xC98C]) = STACK[0xE48B];
  LOBYTE(STACK[0x65AC]) = STACK[0xCFAB];
  LODWORD(v138) = LOBYTE(STACK[0xE48C]);
  HIDWORD(v152) = v138 ^ 1;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LODWORD(v138) = *(v169 + ((v152 >> 27) ^ 0xDBLL));
  HIDWORD(v152) = v138 ^ 0x39;
  LODWORD(v152) = v138 << 24;
  LOBYTE(STACK[0xC98D]) = 7 * ((v152 >> 30) ^ 0x88) - ((14 * ((v152 >> 30) ^ 0x88)) & 0xE3) - 15;
  LOBYTE(STACK[0x65AD]) = STACK[0xCFAC];
  LOBYTE(STACK[0xC98E]) = STACK[0xE48D];
  LOBYTE(STACK[0x65AE]) = STACK[0xCFAD];
  LOBYTE(STACK[0xC98F]) = STACK[0xE48E];
  LOBYTE(STACK[0x65AF]) = STACK[0xCFAE];
  LOBYTE(STACK[0xC990]) = STACK[0xE48F];
  LOBYTE(STACK[0x65B0]) = STACK[0xCFAF];
  LOBYTE(STACK[0xC991]) = STACK[0xE490];
  LOBYTE(STACK[0x65B1]) = STACK[0xCFB0];
  LODWORD(v138) = *(v163 + (((LOBYTE(STACK[0xE491]) ^ 0xF1) + 110) ^ 0xB0));
  HIDWORD(v152) = v138 ^ 0x13;
  LODWORD(v152) = ~v138 << 24;
  LOBYTE(STACK[0xC992]) = (v152 >> 31) ^ 0x63;
  LOBYTE(STACK[0x65B2]) = STACK[0xCFB1];
  LOBYTE(STACK[0xC993]) = STACK[0xE492];
  LOBYTE(STACK[0x65B3]) = STACK[0xCFB2];
  LOBYTE(STACK[0xC994]) = STACK[0xE493];
  LOBYTE(STACK[0x65B4]) = STACK[0xCFB3];
  LODWORD(v138) = LOBYTE(STACK[0xE494]);
  HIDWORD(v152) = v138 ^ 1;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LOBYTE(v138) = *(v167 + ((v152 >> 27) ^ 0xE4)) + 103;
  LOBYTE(STACK[0xC995]) = 7 * (v138 ^ 0xEE) - ((14 * (v138 ^ 0xEE)) & 0xE3) - 15;
  LOBYTE(STACK[0x65B5]) = STACK[0xCFB4];
  LODWORD(v138) = *(v168 + (((LOBYTE(STACK[0xE495]) ^ 0xF1) - 92) ^ 0x4ELL)) - 49;
  HIDWORD(v152) = v138 ^ 0x11;
  LODWORD(v152) = (v138 ^ 0x20) << 24;
  LOBYTE(STACK[0xC996]) = (v152 >> 29) - ((2 * (v152 >> 29)) & 0xE3) - 15;
  LOBYTE(STACK[0x65B6]) = STACK[0xCFB5];
  LODWORD(v137) = LOBYTE(STACK[0xCFB6]);
  HIDWORD(v152) = ~v137;
  LODWORD(v152) = (v137 ^ 0xF0) << 24;
  LOBYTE(STACK[0xC997]) = STACK[0xE496];
  LODWORD(v138) = *(v162 + ((v152 >> 25) ^ 0xA6));
  HIDWORD(v152) = v138 ^ 0x54;
  LODWORD(v152) = ~v138 << 24;
  LOBYTE(STACK[0x65B7]) = -13 * ((v152 >> 31) ^ 0xD6) - ((-26 * ((v152 >> 31) ^ 0xD6)) & 0xE3) - 15;
  LODWORD(v137) = LOBYTE(STACK[0xCFB7]);
  HIDWORD(v152) = ~v137;
  LODWORD(v152) = (v137 ^ 0xF0) << 24;
  LOBYTE(STACK[0xC998]) = STACK[0xE497];
  LODWORD(v138) = (v152 >> 25) - 2 * ((v152 >> 25) & 0x3F) + 63;
  LOBYTE(v138) = *(v165 + (((v152 >> 25) - 2 * ((v152 >> 25) & 0x3F) + 63) ^ 8)) ^ ((v138 ^ 0x6E) - ((2 * (v138 ^ 0x6E) + 60) & 0x6A) + 83) ^ 0x5E;
  LOBYTE(STACK[0x65B8]) = -13 * v138 - ((-26 * v138) & 0xE3) - 15;
  LOBYTE(STACK[0xC999]) = STACK[0xE498];
  LODWORD(v138) = LOBYTE(STACK[0xCFB8]);
  HIDWORD(v152) = v138 ^ 1;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LOBYTE(v138) = (*(v167 + ((v152 >> 27) ^ 0xE4)) + 103) ^ 0xEE;
  LODWORD(v137) = LOBYTE(STACK[0xE499]);
  HIDWORD(v152) = ~v137;
  LODWORD(v152) = (v137 ^ 0xF0) << 24;
  LOBYTE(STACK[0x65B9]) = (~(14 * v138) | 0x1D) - v138 + 8 * v138 - 14;
  LODWORD(v138) = *(v162 + ((v152 >> 25) ^ 0xA6));
  HIDWORD(v152) = v138 ^ 0x54;
  LODWORD(v152) = ~v138 << 24;
  LOBYTE(STACK[0xC99A]) = -13 * ((v152 >> 31) ^ 0xD6) - ((-26 * ((v152 >> 31) ^ 0xD6)) & 0xE3) - 15;
  LOBYTE(STACK[0x65BA]) = STACK[0xCFB9];
  LOBYTE(STACK[0xC99B]) = STACK[0xE49A];
  LOBYTE(STACK[0x65BB]) = STACK[0xCFBA];
  LOBYTE(STACK[0xC99C]) = STACK[0xE49B];
  LODWORD(v138) = *(v163 + (((LOBYTE(STACK[0xCFBB]) ^ 0xF1) + 110) ^ 0xB0));
  LOBYTE(STACK[0x65BC]) = (((~v138 & 0x80) != 0) | 0x4C) ^ (2 * v138) ^ 9;
  LOBYTE(STACK[0xC99D]) = STACK[0xE49C];
  LOBYTE(STACK[0x65BD]) = STACK[0xCFBC];
  LOBYTE(STACK[0xC99E]) = STACK[0xE49D];
  LOBYTE(STACK[0x65BE]) = STACK[0xCFBD];
  LOBYTE(STACK[0xC99F]) = STACK[0xE49E];
  LOBYTE(STACK[0x65BF]) = STACK[0xCFBE];
  LODWORD(v138) = LOBYTE(STACK[0xE49F]);
  HIDWORD(v152) = v138 ^ 1;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LODWORD(v138) = *(v169 + ((v152 >> 27) ^ 0xDBLL));
  HIDWORD(v152) = v138 ^ 0x39;
  LODWORD(v152) = v138 << 24;
  LOBYTE(STACK[0xC9A0]) = 7 * ((v152 >> 30) ^ 0x88) - ((14 * ((v152 >> 30) ^ 0x88)) & 0xE3) - 15;
  LOBYTE(STACK[0x65C0]) = STACK[0xCFBF];
  LOBYTE(STACK[0xC9A1]) = STACK[0xE4A0];
  LOBYTE(STACK[0x65C1]) = STACK[0xCFC0];
  LOBYTE(STACK[0xC9A2]) = STACK[0xE4A1];
  LOBYTE(STACK[0x65C2]) = STACK[0xCFC1];
  LOBYTE(STACK[0xC9A3]) = STACK[0xE4A2];
  LOBYTE(STACK[0x65C3]) = STACK[0xCFC2];
  LODWORD(v138) = LOBYTE(STACK[0xE4A3]);
  HIDWORD(v152) = v138 ^ 1;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LOBYTE(v138) = (*(v167 + ((v152 >> 27) ^ 0xE4)) + 103) ^ 0xEE;
  LOBYTE(STACK[0xC9A4]) = 7 * v138 - ((14 * v138) & 0xE3) - 15;
  LOBYTE(STACK[0x65C4]) = STACK[0xCFC3];
  LOBYTE(STACK[0xC9A5]) = STACK[0xE4A4];
  LOBYTE(STACK[0x65C5]) = STACK[0xCFC4];
  LOBYTE(STACK[0xC9A6]) = STACK[0xE4A5];
  LOBYTE(STACK[0x65C6]) = STACK[0xCFC5];
  LOBYTE(STACK[0xC9A7]) = STACK[0xE4A6];
  LOBYTE(STACK[0x65C7]) = STACK[0xCFC6];
  LOBYTE(STACK[0xC9A8]) = STACK[0xE4A7];
  LODWORD(v138) = LOBYTE(STACK[0xCFC7]);
  HIDWORD(v152) = v138 ^ 1;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LODWORD(v138) = *(v169 + ((v152 >> 27) ^ 0xDBLL));
  HIDWORD(v152) = v138 ^ 0x39;
  LODWORD(v152) = v138 << 24;
  LOBYTE(STACK[0x65C8]) = 7 * ((v152 >> 30) ^ 0x88) - ((14 * ((v152 >> 30) ^ 0x88)) & 0xE3) - 15;
  LOBYTE(STACK[0xC9A9]) = STACK[0xE4A8];
  LOBYTE(STACK[0x65C9]) = STACK[0xCFC8];
  LOBYTE(STACK[0xC9AA]) = STACK[0xE4A9];
  LOBYTE(STACK[0x65CA]) = STACK[0xCFC9];
  LOBYTE(STACK[0xC9AB]) = STACK[0xE4AA];
  LOBYTE(STACK[0x65CB]) = STACK[0xCFCA];
  LOBYTE(STACK[0xC9AC]) = STACK[0xE4AB];
  LOBYTE(STACK[0x65CC]) = STACK[0xCFCB];
  LOBYTE(STACK[0xC9AD]) = STACK[0xE4AC];
  LOBYTE(STACK[0x65CD]) = STACK[0xCFCC];
  LODWORD(v138) = LOBYTE(STACK[0xE4AD]);
  HIDWORD(v152) = v138 ^ 1;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LOBYTE(v138) = (*(v167 + ((v152 >> 27) ^ 0xE4)) + 103) ^ 0xEE;
  LOBYTE(STACK[0xC9AE]) = 7 * v138 - ((14 * v138) & 0xE3) - 15;
  LOBYTE(STACK[0x65CE]) = STACK[0xCFCD];
  LOBYTE(STACK[0xC9AF]) = STACK[0xE4AE];
  LOBYTE(STACK[0x65CF]) = STACK[0xCFCE];
  LOBYTE(STACK[0xC9B0]) = STACK[0xE4AF];
  LOBYTE(STACK[0x65D0]) = STACK[0xCFCF];
  LOBYTE(STACK[0xC9B1]) = STACK[0xE4B0];
  LOBYTE(STACK[0x65D1]) = STACK[0xCFD0];
  LOBYTE(STACK[0xC9B2]) = (*(v164 + (((LOBYTE(STACK[0xE4B1]) ^ 0xF1) + 110) ^ 0x64)) + 78) ^ 0x18;
  LOBYTE(STACK[0x65D2]) = STACK[0xCFD1];
  LOBYTE(STACK[0xC9B3]) = STACK[0xE4B2];
  LOBYTE(STACK[0x65D3]) = STACK[0xCFD2];
  LOBYTE(STACK[0xC9B4]) = STACK[0xE4B3];
  LOBYTE(STACK[0x65D4]) = STACK[0xCFD3];
  LOBYTE(STACK[0xC9B5]) = STACK[0xE4B4];
  LOBYTE(STACK[0x65D5]) = STACK[0xCFD4];
  LODWORD(v138) = *(v168 + (((LOBYTE(STACK[0xE4B5]) ^ 0xF1) - 92) ^ 0x4ELL)) - 49;
  HIDWORD(v152) = v138 ^ 0x11;
  LODWORD(v152) = (v138 ^ 0x20) << 24;
  LOBYTE(STACK[0xC9B6]) = (v152 >> 29) - ((2 * (v152 >> 29)) & 0xE3) - 15;
  LOBYTE(STACK[0x65D6]) = STACK[0xCFD5];
  LOBYTE(STACK[0xC9B7]) = STACK[0xE4B6];
  LOBYTE(STACK[0x65D7]) = STACK[0xCFD6];
  LOBYTE(STACK[0xC9B8]) = STACK[0xE4B7];
  LOBYTE(STACK[0x65D8]) = STACK[0xCFD7];
  LODWORD(v138) = LOBYTE(STACK[0xE4B8]);
  HIDWORD(v152) = v138 ^ 1;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LODWORD(v138) = *(v169 + ((v152 >> 27) ^ 0xDBLL));
  HIDWORD(v152) = v138 ^ 0x39;
  LODWORD(v152) = v138 << 24;
  LOBYTE(STACK[0xC9B9]) = 7 * ((v152 >> 30) ^ 0x88) - ((14 * ((v152 >> 30) ^ 0x88)) & 0xE3) - 15;
  LOBYTE(STACK[0x65D9]) = STACK[0xCFD8];
  LOBYTE(STACK[0xC9BA]) = STACK[0xE4B9];
  LODWORD(v137) = LOBYTE(STACK[0xE4BA]);
  HIDWORD(v152) = v137 ^ 1;
  LODWORD(v152) = (v137 ^ 0xF0) << 24;
  LOBYTE(STACK[0x65DA]) = STACK[0xCFD9];
  LOBYTE(v138) = (*(v167 + ((v152 >> 27) ^ 0xE4)) + 103) ^ 0xEE;
  LOBYTE(STACK[0xC9BB]) = 7 * v138 - ((14 * v138) & 0xE3) - 15;
  LOBYTE(STACK[0x65DB]) = STACK[0xCFDA];
  LOBYTE(STACK[0xC9BC]) = STACK[0xE4BB];
  LOBYTE(STACK[0x65DC]) = STACK[0xCFDB];
  LOBYTE(STACK[0xC9BD]) = STACK[0xE4BC];
  LOBYTE(STACK[0x65DD]) = STACK[0xCFDC];
  LOBYTE(STACK[0xC9BE]) = STACK[0xE4BD];
  LOBYTE(STACK[0x65DE]) = STACK[0xCFDD];
  LOBYTE(STACK[0xC9BF]) = STACK[0xE4BE];
  LOBYTE(STACK[0x65DF]) = STACK[0xCFDE];
  LOBYTE(STACK[0xC9C0]) = STACK[0xE4BF];
  LODWORD(v138) = *(v163 + (((LOBYTE(STACK[0xCFDF]) ^ 0xF1) + 110) ^ 0xB0));
  HIDWORD(v152) = v138 ^ 0x13;
  LODWORD(v152) = ~v138 << 24;
  LOBYTE(STACK[0x65E0]) = (v152 >> 31) ^ 0x63;
  LOBYTE(STACK[0xC9C1]) = STACK[0xE4C0];
  LOBYTE(STACK[0x65E1]) = STACK[0xCFE0];
  LOBYTE(STACK[0xC9C2]) = STACK[0xE4C1];
  LOBYTE(STACK[0x65E2]) = STACK[0xCFE1];
  LOBYTE(STACK[0xC9C3]) = STACK[0xE4C2];
  LOBYTE(STACK[0x65E3]) = STACK[0xCFE2];
  LOBYTE(STACK[0xC9C4]) = STACK[0xE4C3];
  LOBYTE(STACK[0x65E4]) = STACK[0xCFE3];
  LOBYTE(STACK[0xC9C5]) = STACK[0xE4C4];
  LOBYTE(STACK[0x65E5]) = STACK[0xCFE4];
  LODWORD(v138) = LOBYTE(STACK[0xE4C5]);
  HIDWORD(v152) = ~v138;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LODWORD(v138) = (v152 >> 25) - ((2 * (v152 >> 25)) & 0x22);
  LOBYTE(v138) = *(v165 + ((v138 - 111) ^ 0xA6)) ^ (((v138 - 111) ^ 0xC0) - ((2 * v138 + 94) & 0x6A) + 83) ^ 0x5E;
  LOBYTE(STACK[0xC9C6]) = -13 * v138 - ((-26 * v138) & 0xE3) - 15;
  LOBYTE(STACK[0x65E6]) = STACK[0xCFE5];
  LOBYTE(STACK[0xC9C7]) = STACK[0xE4C6];
  LOBYTE(STACK[0x65E7]) = STACK[0xCFE6];
  LOBYTE(STACK[0xC9C8]) = STACK[0xE4C7];
  LOBYTE(STACK[0x65E8]) = STACK[0xCFE7];
  LODWORD(v138) = LOBYTE(STACK[0xE4C8]);
  HIDWORD(v152) = ~v138;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LODWORD(v138) = *(v162 + ((v152 >> 25) ^ 0xA6));
  HIDWORD(v152) = v138 ^ 0x54;
  LODWORD(v152) = ~v138 << 24;
  LOBYTE(STACK[0xC9C9]) = -13 * ((v152 >> 31) ^ 0xD6) - ((-26 * ((v152 >> 31) ^ 0xD6)) & 0xE3) - 15;
  LOBYTE(STACK[0x65E9]) = STACK[0xCFE8];
  LOBYTE(STACK[0xC9CA]) = STACK[0xE4C9];
  LOBYTE(STACK[0x65EA]) = STACK[0xCFE9];
  LOBYTE(STACK[0xC9CB]) = STACK[0xE4CA];
  LOBYTE(STACK[0x65EB]) = STACK[0xCFEA];
  LODWORD(v138) = LOBYTE(STACK[0xE4CB]);
  HIDWORD(v152) = v138 ^ 1;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LODWORD(v138) = *(v169 + ((v152 >> 27) ^ 0xDBLL));
  HIDWORD(v152) = v138 ^ 0x39;
  LODWORD(v152) = v138 << 24;
  LOBYTE(STACK[0xC9CC]) = 7 * ((v152 >> 30) ^ 0x88) - ((14 * ((v152 >> 30) ^ 0x88)) & 0xE3) - 15;
  LOBYTE(STACK[0x65EC]) = STACK[0xCFEB];
  LOBYTE(STACK[0xC9CD]) = STACK[0xE4CC];
  LODWORD(v138) = LOBYTE(STACK[0xCFEC]);
  HIDWORD(v152) = ~v138;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LODWORD(v138) = *(v162 + ((v152 >> 25) ^ 0xA6));
  HIDWORD(v152) = v138 ^ 0x54;
  LODWORD(v152) = ~v138 << 24;
  LOBYTE(STACK[0x65ED]) = -13 * ((v152 >> 31) ^ 0xD6) - ((-26 * ((v152 >> 31) ^ 0xD6)) & 0xE3) - 15;
  LOBYTE(STACK[0xC9CE]) = STACK[0xE4CD];
  LOBYTE(STACK[0x65EE]) = STACK[0xCFED];
  LOBYTE(STACK[0xC9CF]) = STACK[0xE4CE];
  LOBYTE(STACK[0x65EF]) = STACK[0xCFEE];
  LOBYTE(STACK[0xC9D0]) = STACK[0xE4CF];
  LOBYTE(STACK[0x65F0]) = STACK[0xCFEF];
  LOBYTE(STACK[0xC9D1]) = STACK[0xE4D0];
  LOBYTE(STACK[0x65F1]) = STACK[0xCFF0];
  LOBYTE(STACK[0xC9D2]) = STACK[0xE4D1];
  LOBYTE(STACK[0x65F2]) = STACK[0xCFF1];
  LOBYTE(STACK[0xC9D3]) = STACK[0xE4D2];
  LOBYTE(STACK[0x65F3]) = STACK[0xCFF2];
  LOBYTE(STACK[0xC9D4]) = STACK[0xE4D3];
  LOBYTE(STACK[0x65F4]) = STACK[0xCFF3];
  LOBYTE(STACK[0xC9D5]) = STACK[0xE4D4];
  LOBYTE(STACK[0x65F5]) = STACK[0xCFF4];
  LOBYTE(STACK[0xC9D6]) = STACK[0xE4D5];
  LODWORD(v138) = LOBYTE(STACK[0xCFF5]);
  HIDWORD(v152) = ~v138;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LOBYTE(v138) = ((((v152 >> 25) & 0x80) != 0) | 0xD6) ^ (2 * *(v162 + ((v152 >> 25) ^ 0xA6))) ^ 0xA8;
  LOBYTE(STACK[0x65F6]) = -13 * v138 - ((-26 * v138) & 0xE3) - 15;
  LOBYTE(STACK[0xC9D7]) = STACK[0xE4D6];
  LOBYTE(STACK[0x65F7]) = STACK[0xCFF6];
  LOBYTE(STACK[0xC9D8]) = STACK[0xE4D7];
  LOBYTE(STACK[0x65F8]) = STACK[0xCFF7];
  LOBYTE(STACK[0xC9D9]) = STACK[0xE4D8];
  LOBYTE(STACK[0x65F9]) = STACK[0xCFF8];
  LOBYTE(STACK[0xC9DA]) = STACK[0xE4D9];
  LOBYTE(STACK[0x65FA]) = STACK[0xCFF9];
  LOBYTE(STACK[0xC9DB]) = STACK[0xE4DA];
  LOBYTE(STACK[0x65FB]) = STACK[0xCFFA];
  LOBYTE(STACK[0xC9DC]) = STACK[0xE4DB];
  LOBYTE(STACK[0x65FC]) = STACK[0xCFFB];
  LOBYTE(STACK[0xC9DD]) = STACK[0xE4DC];
  LOBYTE(STACK[0x65FD]) = STACK[0xCFFC];
  LOBYTE(STACK[0xC9DE]) = STACK[0xE4DD];
  LODWORD(v138) = *(v168 + (((LOBYTE(STACK[0xCFFD]) ^ 0xF1) - 92) ^ 0x4ELL)) - 49;
  HIDWORD(v152) = v138 ^ 0x11;
  LODWORD(v152) = (v138 ^ 0x20) << 24;
  LOBYTE(STACK[0x65FE]) = (v152 >> 29) - ((2 * (v152 >> 29)) & 0xE3) - 15;
  LOBYTE(STACK[0xC9DF]) = STACK[0xE4DE];
  LOBYTE(STACK[0x65FF]) = STACK[0xCFFE];
  LOBYTE(STACK[0xC9E0]) = STACK[0xE4DF];
  LOBYTE(STACK[0x6600]) = STACK[0xCFFF];
  LOBYTE(STACK[0xC9E1]) = STACK[0xE4E0];
  LOBYTE(STACK[0x6601]) = STACK[0xD000];
  LOBYTE(STACK[0xC9E2]) = STACK[0xE4E1];
  LOBYTE(STACK[0x6602]) = STACK[0xD001];
  LOBYTE(STACK[0xC9E3]) = STACK[0xE4E2];
  LOBYTE(STACK[0x6603]) = STACK[0xD002];
  LOBYTE(STACK[0xC9E4]) = STACK[0xE4E3];
  LOBYTE(STACK[0x6604]) = STACK[0xD003];
  LOBYTE(STACK[0xC9E5]) = STACK[0xE4E4];
  LODWORD(v138) = LOBYTE(STACK[0xD004]);
  HIDWORD(v152) = ~v138;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LODWORD(v138) = (v152 >> 25) - ((2 * (v152 >> 25)) & 0x2C) - 106;
  LOBYTE(v138) = *(v165 + (((v152 >> 25) - ((2 * (v152 >> 25)) & 0x2C) - 106) ^ 0xA1)) ^ ((v138 ^ 0xC7) - ((2 * (v138 ^ 0xC7) + 60) & 0x6A) + 83) ^ 0x5E;
  LOBYTE(STACK[0x6605]) = (~(-26 * v138) | 0x1D) - 13 * v138 - 14;
  LOBYTE(STACK[0xC9E6]) = STACK[0xE4E5];
  LOBYTE(STACK[0x6606]) = STACK[0xD005];
  LODWORD(v138) = LOBYTE(STACK[0xE4E6]);
  HIDWORD(v152) = v138 ^ 1;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LOBYTE(v138) = (*(v167 + ((v152 >> 27) ^ 0xE4)) + 103) ^ 0xEE;
  LOBYTE(STACK[0xC9E7]) = 7 * v138 - ((14 * v138) & 0xE3) - 15;
  LOBYTE(STACK[0x6607]) = STACK[0xD006];
  LOBYTE(STACK[0xC9E8]) = STACK[0xE4E7];
  LOBYTE(STACK[0x6608]) = STACK[0xD007];
  LOBYTE(STACK[0xC9E9]) = STACK[0xE4E8];
  LOBYTE(STACK[0x6609]) = STACK[0xD008];
  LOBYTE(STACK[0xC9EA]) = STACK[0xE4E9];
  LOBYTE(STACK[0x660A]) = STACK[0xD009];
  LOBYTE(STACK[0xC9EB]) = STACK[0xE4EA];
  LOBYTE(STACK[0x660B]) = STACK[0xD00A];
  LODWORD(v138) = LOBYTE(STACK[0xE4EB]);
  HIDWORD(v152) = v138 ^ 1;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LOBYTE(v138) = (*(v167 + ((v152 >> 27) ^ 0xE4)) + 103) ^ 0xEE;
  LOBYTE(STACK[0xC9EC]) = 7 * v138 - ((14 * v138) & 0xE3) - 15;
  LOBYTE(STACK[0x660C]) = STACK[0xD00B];
  LOBYTE(STACK[0xC9ED]) = STACK[0xE4EC];
  LOBYTE(STACK[0x660D]) = STACK[0xD00C];
  LOBYTE(STACK[0xC9EE]) = STACK[0xE4ED];
  LOBYTE(STACK[0x660E]) = STACK[0xD00D];
  LOBYTE(STACK[0xC9EF]) = STACK[0xE4EE];
  LOBYTE(STACK[0x660F]) = STACK[0xD00E];
  LOBYTE(STACK[0xC9F0]) = STACK[0xE4EF];
  LOBYTE(STACK[0x6610]) = STACK[0xD00F];
  LOBYTE(STACK[0xC9F1]) = STACK[0xE4F0];
  LOBYTE(STACK[0x6611]) = STACK[0xD010];
  LOBYTE(STACK[0xC9F2]) = STACK[0xE4F1];
  LODWORD(v138) = LOBYTE(STACK[0xD011]);
  HIDWORD(v152) = v138 ^ 1;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LOBYTE(v138) = (*(v167 + ((v152 >> 27) ^ 0xE4)) + 103) ^ 0xEE;
  LOBYTE(STACK[0x6612]) = 7 * v138 - ((14 * v138) & 0xE3) - 15;
  LOBYTE(STACK[0xC9F3]) = STACK[0xE4F2];
  LODWORD(v138) = LOBYTE(STACK[0xD012]);
  HIDWORD(v152) = v138 ^ 1;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LODWORD(v138) = *(v169 + ((v152 >> 27) ^ 0xDBLL));
  HIDWORD(v152) = v138 ^ 0x39;
  LODWORD(v152) = v138 << 24;
  LOBYTE(STACK[0x6613]) = (~(14 * ((v152 >> 30) ^ 0x88)) | 0x1D) - ((v152 >> 30) ^ 0x88) + 8 * ((v152 >> 30) ^ 0x88) - 14;
  LOBYTE(STACK[0xC9F4]) = STACK[0xE4F3];
  LOBYTE(STACK[0x6614]) = STACK[0xD013];
  LOBYTE(STACK[0xC9F5]) = STACK[0xE4F4];
  LOBYTE(STACK[0x6615]) = STACK[0xD014];
  LOBYTE(STACK[0xC9F6]) = STACK[0xE4F5];
  LOBYTE(STACK[0x6616]) = STACK[0xD015];
  LOBYTE(STACK[0xC9F7]) = STACK[0xE4F6];
  LOBYTE(STACK[0x6617]) = STACK[0xD016];
  LOBYTE(STACK[0xC9F8]) = STACK[0xE4F7];
  LOBYTE(STACK[0x6618]) = STACK[0xD017];
  LOBYTE(STACK[0xC9F9]) = (*(v164 + (((LOBYTE(STACK[0xE4F8]) ^ 0xF1) + 110) ^ 0x64)) + 78) ^ 0x18;
  LOBYTE(STACK[0x6619]) = STACK[0xD018];
  LOBYTE(STACK[0xC9FA]) = STACK[0xE4F9];
  LOBYTE(STACK[0x661A]) = STACK[0xD019];
  LODWORD(v138) = LOBYTE(STACK[0xE4FA]);
  HIDWORD(v152) = ~v138;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LODWORD(v138) = (v152 >> 25) - ((2 * (v152 >> 25)) & 0x4E) - 89;
  LOBYTE(v138) = *(v165 + (((v152 >> 25) - ((2 * (v152 >> 25)) & 0x4E) - 89) ^ 0x90)) ^ ((v138 ^ 0xF6) - ((2 * (v138 ^ 0xF6) + 60) & 0x6A) + 83) ^ 0x5E;
  LOBYTE(STACK[0xC9FB]) = -13 * v138 - ((-26 * v138) & 0xE3) - 15;
  LOBYTE(STACK[0x661B]) = STACK[0xD01A];
  LOBYTE(STACK[0xC9FC]) = STACK[0xE4FB];
  LOBYTE(STACK[0x661C]) = STACK[0xD01B];
  LOBYTE(STACK[0xC9FD]) = STACK[0xE4FC];
  LOBYTE(STACK[0x661D]) = STACK[0xD01C];
  LOBYTE(STACK[0xC9FE]) = STACK[0xE4FD];
  LOBYTE(STACK[0x661E]) = STACK[0xD01D];
  LOBYTE(STACK[0xC9FF]) = STACK[0xE4FE];
  LOBYTE(STACK[0x661F]) = STACK[0xD01E];
  LOBYTE(STACK[0xCA00]) = STACK[0xE4FF];
  LOBYTE(STACK[0x6620]) = STACK[0xD01F];
  LOBYTE(STACK[0xCA01]) = STACK[0xE500];
  LOBYTE(STACK[0x6621]) = STACK[0xD020];
  LOBYTE(STACK[0xCA02]) = STACK[0xE501];
  LOBYTE(STACK[0x6622]) = STACK[0xD021];
  LOBYTE(STACK[0xCA03]) = STACK[0xE502];
  LOBYTE(STACK[0x6623]) = STACK[0xD022];
  LOBYTE(STACK[0xCA04]) = STACK[0xE503];
  LOBYTE(STACK[0x6624]) = STACK[0xD023];
  LOBYTE(STACK[0xCA05]) = STACK[0xE504];
  LOBYTE(STACK[0x6625]) = STACK[0xD024];
  LOBYTE(STACK[0xCA06]) = STACK[0xE505];
  LODWORD(v137) = LOBYTE(STACK[0xE506]);
  HIDWORD(v152) = ~v137;
  LODWORD(v152) = (v137 ^ 0xF0) << 24;
  LOBYTE(STACK[0x6626]) = STACK[0xD025];
  LODWORD(v138) = (v152 >> 25) - ((2 * (v152 >> 25)) & 0xFFFFFFAE) + 87;
  LOBYTE(v138) = *(v165 + (((v152 >> 25) - ((2 * (v152 >> 25)) & 0xAE) + 87) ^ 0x60)) ^ ((v138 ^ 6) - ((2 * (v138 ^ 6) + 60) & 0x6A) + 83) ^ 0x5E;
  LOBYTE(STACK[0xCA07]) = -13 * v138 - ((-26 * v138) & 0xE3) - 15;
  LOBYTE(STACK[0x6627]) = STACK[0xD026];
  LOBYTE(STACK[0xCA08]) = STACK[0xE507];
  LOBYTE(STACK[0x6628]) = STACK[0xD027];
  LOBYTE(STACK[0xCA09]) = STACK[0xE508];
  LOBYTE(STACK[0x6629]) = STACK[0xD028];
  LOBYTE(STACK[0xCA0A]) = STACK[0xE509];
  LOBYTE(STACK[0x662A]) = STACK[0xD029];
  LOBYTE(STACK[0xCA0B]) = STACK[0xE50A];
  LOBYTE(STACK[0x662B]) = STACK[0xD02A];
  LOBYTE(STACK[0xCA0C]) = STACK[0xE50B];
  LOBYTE(STACK[0x662C]) = STACK[0xD02B];
  LOBYTE(STACK[0xCA0D]) = STACK[0xE50C];
  LODWORD(v138) = LOBYTE(STACK[0xD02C]);
  HIDWORD(v152) = v138 ^ 1;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LODWORD(v138) = *(v169 + ((v152 >> 27) ^ 0xDBLL));
  HIDWORD(v152) = v138 ^ 0x39;
  LODWORD(v152) = v138 << 24;
  LOBYTE(STACK[0x662D]) = 7 * ((v152 >> 30) ^ 0x88) - ((14 * ((v152 >> 30) ^ 0x88)) & 0xE3) - 15;
  LOBYTE(STACK[0xCA0E]) = STACK[0xE50D];
  LOBYTE(STACK[0x662E]) = STACK[0xD02D];
  LOBYTE(STACK[0xCA0F]) = STACK[0xE50E];
  LOBYTE(STACK[0x662F]) = STACK[0xD02E];
  LOBYTE(STACK[0xCA10]) = STACK[0xE50F];
  LOBYTE(STACK[0x6630]) = STACK[0xD02F];
  LOBYTE(STACK[0xCA11]) = STACK[0xE510];
  LOBYTE(STACK[0x6631]) = STACK[0xD030];
  LOBYTE(STACK[0xCA12]) = STACK[0xE511];
  LOBYTE(STACK[0x6632]) = STACK[0xD031];
  LOBYTE(STACK[0xCA13]) = STACK[0xE512];
  LOBYTE(STACK[0x6633]) = STACK[0xD032];
  LOBYTE(STACK[0xCA14]) = STACK[0xE513];
  LODWORD(v138) = LOBYTE(STACK[0xD033]);
  HIDWORD(v152) = ~v138;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LODWORD(v138) = *(v162 + ((v152 >> 25) ^ 0xA6));
  HIDWORD(v152) = v138 ^ 0x54;
  LODWORD(v152) = ~v138 << 24;
  LOBYTE(STACK[0x6634]) = -13 * ((v152 >> 31) ^ 0xD6) - ((-26 * ((v152 >> 31) ^ 0xD6)) & 0xE3) - 15;
  LOBYTE(STACK[0xCA15]) = STACK[0xE514];
  LOBYTE(STACK[0x6635]) = STACK[0xD034];
  LOBYTE(STACK[0xCA16]) = STACK[0xE515];
  LOBYTE(STACK[0x6636]) = STACK[0xD035];
  LOBYTE(STACK[0xCA17]) = STACK[0xE516];
  LOBYTE(STACK[0x6637]) = STACK[0xD036];
  LOBYTE(STACK[0xCA18]) = STACK[0xE517];
  LODWORD(v137) = LOBYTE(STACK[0xE518]);
  HIDWORD(v152) = ~v137;
  LODWORD(v152) = (v137 ^ 0xF0) << 24;
  LOBYTE(STACK[0x6638]) = STACK[0xD037];
  LODWORD(v138) = *(v162 + ((v152 >> 25) ^ 0xA6));
  HIDWORD(v152) = v138 ^ 0x54;
  LODWORD(v152) = ~v138 << 24;
  LOBYTE(STACK[0xCA19]) = -13 * ((v152 >> 31) ^ 0xD6) - ((-26 * ((v152 >> 31) ^ 0xD6)) & 0xE3) - 15;
  LOBYTE(STACK[0x6639]) = STACK[0xD038];
  LOBYTE(STACK[0xCA1A]) = STACK[0xE519];
  LOBYTE(STACK[0x663A]) = STACK[0xD039];
  LOBYTE(STACK[0xCA1B]) = STACK[0xE51A];
  LOBYTE(STACK[0x663B]) = STACK[0xD03A];
  LOBYTE(STACK[0xCA1C]) = STACK[0xE51B];
  LOBYTE(STACK[0x663C]) = STACK[0xD03B];
  LOBYTE(STACK[0xCA1D]) = STACK[0xE51C];
  LOBYTE(STACK[0x663D]) = STACK[0xD03C];
  LODWORD(v138) = LOBYTE(STACK[0xE51D]);
  HIDWORD(v152) = ~v138;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LODWORD(v138) = *(v162 + ((v152 >> 25) ^ 0xA6));
  HIDWORD(v152) = v138 ^ 0x54;
  LODWORD(v152) = ~v138 << 24;
  LOBYTE(STACK[0xCA1E]) = -13 * ((v152 >> 31) ^ 0xD6) - ((-26 * ((v152 >> 31) ^ 0xD6)) & 0xE3) - 15;
  LOBYTE(STACK[0x663E]) = STACK[0xD03D];
  LOBYTE(STACK[0xCA1F]) = STACK[0xE51E];
  LODWORD(v138) = *(v168 + (((LOBYTE(STACK[0xD03E]) ^ 0xF1) - 92) ^ 0x4ELL)) - 49;
  HIDWORD(v152) = v138 ^ 0x11;
  LODWORD(v152) = (v138 ^ 0x20) << 24;
  LOBYTE(STACK[0x663F]) = (v152 >> 29) - ((2 * (v152 >> 29)) & 0xE3) - 15;
  LOBYTE(STACK[0xCA20]) = STACK[0xE51F];
  LOBYTE(STACK[0x6640]) = STACK[0xD03F];
  LOBYTE(STACK[0xCA21]) = STACK[0xE520];
  LOBYTE(STACK[0x6641]) = STACK[0xD040];
  LOBYTE(STACK[0xCA22]) = STACK[0xE521];
  LODWORD(v138) = *(v166 + (((LOBYTE(STACK[0xD041]) ^ 0xF1) - 92) ^ 0x8ELL));
  HIDWORD(v152) = v138 ^ 1;
  LODWORD(v152) = ~v138 << 24;
  LOBYTE(STACK[0x6642]) = (v152 >> 29) - ((2 * (v152 >> 29)) & 0xE3) - 15;
  LODWORD(v137) = LOBYTE(STACK[0xD042]);
  HIDWORD(v152) = ~v137;
  LODWORD(v152) = (v137 ^ 0xF0) << 24;
  LOBYTE(STACK[0xCA23]) = STACK[0xE522];
  LODWORD(v138) = (v152 >> 25) - ((2 * (v152 >> 25)) & 0x4A) + 37;
  LOBYTE(v138) = *(v165 + (((v152 >> 25) - ((2 * (v152 >> 25)) & 0x4A) + 37) ^ 0x12)) ^ ((v138 ^ 0x74) + ((66 - 2 * (v138 ^ 0x74)) | 0x95) + 84) ^ 0x5E;
  LOBYTE(STACK[0x6643]) = -13 * v138 - ((-26 * v138) & 0xE3) - 15;
  LOBYTE(STACK[0xCA24]) = STACK[0xE523];
  LOBYTE(STACK[0x6644]) = STACK[0xD043];
  LOBYTE(STACK[0xCA25]) = STACK[0xE524];
  LOBYTE(STACK[0x6645]) = STACK[0xD044];
  LOBYTE(STACK[0xCA26]) = STACK[0xE525];
  LOBYTE(STACK[0x6646]) = STACK[0xD045];
  LOBYTE(STACK[0xCA27]) = STACK[0xE526];
  LOBYTE(STACK[0x6647]) = STACK[0xD046];
  LOBYTE(STACK[0xCA28]) = STACK[0xE527];
  LOBYTE(STACK[0x6648]) = STACK[0xD047];
  LOBYTE(STACK[0xCA29]) = STACK[0xE528];
  LODWORD(v138) = *(v168 + (((LOBYTE(STACK[0xD048]) ^ 0xF1) - 92) ^ 0x4ELL)) - 49;
  HIDWORD(v152) = v138 ^ 0x11;
  LODWORD(v152) = (v138 ^ 0x20) << 24;
  LOBYTE(STACK[0x6649]) = (v152 >> 29) - ((2 * (v152 >> 29)) & 0xE3) - 15;
  LOBYTE(STACK[0xCA2A]) = STACK[0xE529];
  LODWORD(v138) = *(v168 + (((LOBYTE(STACK[0xD049]) ^ 0xF1) - 92) ^ 0x4ELL)) - 49;
  HIDWORD(v152) = v138 ^ 0x11;
  LODWORD(v152) = (v138 ^ 0x20) << 24;
  LOBYTE(STACK[0x664A]) = (v152 >> 29) - ((2 * (v152 >> 29)) & 0xE3) - 15;
  LOBYTE(STACK[0xCA2B]) = STACK[0xE52A];
  LOBYTE(STACK[0x664B]) = STACK[0xD04A];
  LOBYTE(STACK[0xCA2C]) = STACK[0xE52B];
  LOBYTE(STACK[0x664C]) = STACK[0xD04B];
  LOBYTE(STACK[0xCA2D]) = STACK[0xE52C];
  LODWORD(v138) = *(v168 + (((LOBYTE(STACK[0xD04C]) ^ 0xF1) - 92) ^ 0x4ELL)) - 49;
  HIDWORD(v152) = v138 ^ 0x11;
  LODWORD(v152) = (v138 ^ 0x20) << 24;
  LOBYTE(STACK[0x664D]) = (v152 >> 29) - ((2 * (v152 >> 29)) & 0xE3) - 15;
  LOBYTE(STACK[0xCA2E]) = STACK[0xE52D];
  LODWORD(v138) = *(v166 + (((LOBYTE(STACK[0xD04D]) ^ 0xF1) - 92) ^ 0x8ELL));
  HIDWORD(v152) = v138 ^ 1;
  LODWORD(v152) = ~v138 << 24;
  LOBYTE(STACK[0x664E]) = (v152 >> 29) - ((2 * (v152 >> 29)) & 0xE3) - 15;
  LOBYTE(STACK[0xCA2F]) = STACK[0xE52E];
  LOBYTE(STACK[0x664F]) = STACK[0xD04E];
  LOBYTE(STACK[0xCA30]) = STACK[0xE52F];
  LOBYTE(STACK[0x6650]) = STACK[0xD04F];
  LOBYTE(STACK[0xCA31]) = STACK[0xE530];
  LOBYTE(STACK[0x6651]) = STACK[0xD050];
  LOBYTE(STACK[0xCA32]) = STACK[0xE531];
  LOBYTE(STACK[0x6652]) = STACK[0xD051];
  LOBYTE(STACK[0xCA33]) = STACK[0xE532];
  LOBYTE(STACK[0x6653]) = STACK[0xD052];
  LOBYTE(STACK[0xCA34]) = STACK[0xE533];
  LOBYTE(STACK[0x6654]) = STACK[0xD053];
  LOBYTE(STACK[0xCA35]) = STACK[0xE534];
  LOBYTE(STACK[0x6655]) = STACK[0xD054];
  LODWORD(v138) = LOBYTE(STACK[0xE535]);
  HIDWORD(v152) = ~v138;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LODWORD(v138) = (v152 >> 25) - ((2 * (v152 >> 25)) & 0x1C) + 14;
  LOBYTE(v138) = *(v165 + (((v152 >> 25) - ((2 * (v152 >> 25)) & 0x1C) + 14) ^ 0x39)) ^ ((v138 ^ 0x5F) - ((2 * (v138 ^ 0x5F) + 60) & 0x6A) + 83) ^ 0x5E;
  LOBYTE(STACK[0xCA36]) = -13 * v138 - ((-26 * v138) & 0xE3) - 15;
  LOBYTE(STACK[0x6656]) = (*(v164 + (((LOBYTE(STACK[0xD055]) ^ 0xF1) + 110) ^ 0x64)) + 78) ^ 0x18;
  LOBYTE(STACK[0xCA37]) = STACK[0xE536];
  LOBYTE(STACK[0x6657]) = STACK[0xD056];
  LOBYTE(STACK[0xCA38]) = STACK[0xE537];
  LOBYTE(STACK[0x6658]) = STACK[0xD057];
  LOBYTE(STACK[0xCA39]) = STACK[0xE538];
  LOBYTE(STACK[0x6659]) = STACK[0xD058];
  LOBYTE(STACK[0xCA3A]) = STACK[0xE539];
  LOBYTE(STACK[0x665A]) = STACK[0xD059];
  LOBYTE(STACK[0xCA3B]) = STACK[0xE53A];
  LOBYTE(STACK[0x665B]) = STACK[0xD05A];
  LOBYTE(STACK[0xCA3C]) = STACK[0xE53B];
  LOBYTE(STACK[0x665C]) = STACK[0xD05B];
  LOBYTE(STACK[0xCA3D]) = STACK[0xE53C];
  LOBYTE(STACK[0x665D]) = (*(v164 + (((LOBYTE(STACK[0xD05C]) ^ 0xF1) + 110) ^ 0x64)) + 78) ^ 0x18;
  LOBYTE(STACK[0xCA3E]) = STACK[0xE53D];
  LODWORD(v138) = LOBYTE(STACK[0xD05D]);
  HIDWORD(v152) = ~v138;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LODWORD(v138) = (v152 >> 25) - ((2 * (v152 >> 25)) & 0x28) - 108;
  LOBYTE(v138) = *(v165 + (((v152 >> 25) - ((2 * (v152 >> 25)) & 0x28) - 108) ^ 0xA3)) ^ ((v138 ^ 0xC5) - ((2 * (v138 ^ 0xC5) + 60) & 0x6A) + 83) ^ 0x5E;
  LOBYTE(STACK[0x665E]) = -13 * v138 - ((-26 * v138) & 0xE3) - 15;
  LOBYTE(STACK[0xCA3F]) = STACK[0xE53E];
  LOBYTE(STACK[0x665F]) = STACK[0xD05E];
  LOBYTE(STACK[0xCA40]) = STACK[0xE53F];
  LOBYTE(STACK[0x6660]) = STACK[0xD05F];
  LOBYTE(STACK[0xCA41]) = STACK[0xE540];
  LODWORD(v138) = *(v163 + (((LOBYTE(STACK[0xD060]) ^ 0xF1) + 110) ^ 0xB0));
  HIDWORD(v152) = v138 ^ 0x13;
  LODWORD(v152) = ~v138 << 24;
  LOBYTE(STACK[0x6661]) = (v152 >> 31) ^ 0x63;
  LOBYTE(STACK[0xCA42]) = STACK[0xE541];
  LOBYTE(STACK[0x6662]) = STACK[0xD061];
  LOBYTE(STACK[0xCA43]) = STACK[0xE542];
  LOBYTE(STACK[0x6663]) = STACK[0xD062];
  LODWORD(v138) = LOBYTE(STACK[0xE543]);
  HIDWORD(v152) = ~v138;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LODWORD(v138) = (v152 >> 25) + (~(2 * (v152 >> 25)) | 0xFFFFFFCF) + 25;
  LOBYTE(v138) = *(v165 + (((v152 >> 25) + (~(2 * (v152 >> 25)) | 0xCF) + 25) ^ 0x2FLL)) ^ ((v138 ^ 0x49) - ((2 * (v138 ^ 0x49) + 60) & 0x6A) + 83) ^ 0x5E;
  LOBYTE(STACK[0xCA44]) = -13 * v138 - ((-26 * v138) & 0xE3) - 15;
  LOBYTE(STACK[0x6664]) = STACK[0xD063];
  LODWORD(v138) = LOBYTE(STACK[0xE544]);
  HIDWORD(v152) = v138 ^ 1;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LODWORD(v138) = *(v169 + ((v152 >> 27) ^ 0xDBLL));
  HIDWORD(v152) = v138 ^ 0x39;
  LODWORD(v152) = v138 << 24;
  LOBYTE(STACK[0xCA45]) = 7 * ((v152 >> 30) ^ 0x88) - ((14 * ((v152 >> 30) ^ 0x88)) & 0xE3) - 15;
  LOBYTE(STACK[0x6665]) = STACK[0xD064];
  LOBYTE(STACK[0xCA46]) = STACK[0xE545];
  LOBYTE(STACK[0x6666]) = STACK[0xD065];
  LOBYTE(STACK[0xCA47]) = STACK[0xE546];
  LOBYTE(STACK[0x6667]) = STACK[0xD066];
  LOBYTE(STACK[0xCA48]) = STACK[0xE547];
  LOBYTE(STACK[0x6668]) = STACK[0xD067];
  LOBYTE(STACK[0xCA49]) = STACK[0xE548];
  LODWORD(v137) = LOBYTE(STACK[0xE549]);
  HIDWORD(v152) = v137 ^ 1;
  LODWORD(v152) = (v137 ^ 0xF0) << 24;
  LOBYTE(STACK[0x6669]) = STACK[0xD068];
  LODWORD(v138) = *(v169 + ((v152 >> 27) ^ 0xDBLL));
  LODWORD(v138) = ((v138 >> 6) | 0xFFFFFF88) ^ (4 * v138) ^ 0xFFFFFFE4;
  LOBYTE(STACK[0xCA4A]) = 7 * v138 - ((14 * v138) & 0xE3) - 15;
  LOBYTE(STACK[0x666A]) = STACK[0xD069];
  LODWORD(v138) = LOBYTE(STACK[0xE54A]);
  HIDWORD(v152) = v138 ^ 1;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LOBYTE(v138) = (*(v167 + ((v152 >> 27) ^ 0xE4)) + 103) ^ 0xEE;
  LOBYTE(STACK[0xCA4B]) = 7 * v138 - ((14 * v138) & 0xE3) - 15;
  LOBYTE(STACK[0x666B]) = STACK[0xD06A];
  LOBYTE(STACK[0xCA4C]) = STACK[0xE54B];
  LOBYTE(STACK[0x666C]) = STACK[0xD06B];
  LOBYTE(STACK[0xCA4D]) = (*(v164 + (((LOBYTE(STACK[0xE54C]) ^ 0xF1) + 110) ^ 0x64)) + 78) ^ 0x18;
  LOBYTE(STACK[0x666D]) = STACK[0xD06C];
  LOBYTE(STACK[0xCA4E]) = STACK[0xE54D];
  LODWORD(v138) = *(v163 + (((LOBYTE(STACK[0xD06D]) ^ 0xF1) + 110) ^ 0xB0));
  HIDWORD(v152) = v138 ^ 0x13;
  LODWORD(v152) = ~v138 << 24;
  LOBYTE(STACK[0x666E]) = (v152 >> 31) ^ 0x63;
  LOBYTE(STACK[0xCA4F]) = STACK[0xE54E];
  LOBYTE(STACK[0x666F]) = STACK[0xD06E];
  LOBYTE(STACK[0xCA50]) = STACK[0xE54F];
  LOBYTE(STACK[0x6670]) = STACK[0xD06F];
  LOBYTE(STACK[0xCA51]) = STACK[0xE550];
  LOBYTE(STACK[0x6671]) = STACK[0xD070];
  LOBYTE(STACK[0xCA52]) = STACK[0xE551];
  LOBYTE(STACK[0x6672]) = STACK[0xD071];
  LOBYTE(STACK[0xCA53]) = STACK[0xE552];
  LOBYTE(STACK[0x6673]) = STACK[0xD072];
  LOBYTE(STACK[0xCA54]) = STACK[0xE553];
  LOBYTE(STACK[0x6674]) = STACK[0xD073];
  LOBYTE(STACK[0xCA55]) = STACK[0xE554];
  LOBYTE(STACK[0x6675]) = STACK[0xD074];
  LOBYTE(STACK[0xCA56]) = STACK[0xE555];
  LOBYTE(STACK[0x6676]) = STACK[0xD075];
  LOBYTE(STACK[0xCA57]) = STACK[0xE556];
  LOBYTE(STACK[0x6677]) = STACK[0xD076];
  LOBYTE(STACK[0xCA58]) = STACK[0xE557];
  LOBYTE(STACK[0x6678]) = STACK[0xD077];
  LOBYTE(STACK[0xCA59]) = STACK[0xE558];
  LOBYTE(STACK[0x6679]) = STACK[0xD078];
  LOBYTE(STACK[0xCA5A]) = STACK[0xE559];
  LOBYTE(STACK[0x667A]) = STACK[0xD079];
  LOBYTE(STACK[0xCA5B]) = STACK[0xE55A];
  LOBYTE(STACK[0x667B]) = STACK[0xD07A];
  LOBYTE(STACK[0xCA5C]) = STACK[0xE55B];
  LOBYTE(STACK[0x667C]) = STACK[0xD07B];
  LOBYTE(STACK[0xCA5D]) = STACK[0xE55C];
  LOBYTE(STACK[0x667D]) = STACK[0xD07C];
  LODWORD(v138) = LOBYTE(STACK[0xE55D]);
  HIDWORD(v152) = v138 ^ 1;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LODWORD(v138) = *(v169 + ((v152 >> 27) ^ 0xDBLL));
  HIDWORD(v152) = v138 ^ 0x39;
  LODWORD(v152) = v138 << 24;
  LOBYTE(STACK[0xCA5E]) = 7 * ((v152 >> 30) ^ 0x88) - ((14 * ((v152 >> 30) ^ 0x88)) & 0xE3) - 15;
  LOBYTE(STACK[0x667E]) = STACK[0xD07D];
  LOBYTE(STACK[0xCA5F]) = STACK[0xE55E];
  LOBYTE(STACK[0x667F]) = STACK[0xD07E];
  LOBYTE(STACK[0xCA60]) = STACK[0xE55F];
  LOBYTE(STACK[0x6680]) = STACK[0xD07F];
  LOBYTE(STACK[0xCA61]) = STACK[0xE560];
  LOBYTE(STACK[0x6681]) = STACK[0xD080];
  LOBYTE(STACK[0xCA62]) = STACK[0xE561];
  LOBYTE(STACK[0x6682]) = STACK[0xD081];
  LOBYTE(STACK[0xCA63]) = STACK[0xE562];
  LOBYTE(STACK[0x6683]) = STACK[0xD082];
  LOBYTE(STACK[0xCA64]) = (*(v164 + (((LOBYTE(STACK[0xE563]) ^ 0xF1) + 110) ^ 0x64)) + 78) ^ 0x18;
  LOBYTE(STACK[0x6684]) = STACK[0xD083];
  LOBYTE(STACK[0xCA65]) = STACK[0xE564];
  LOBYTE(STACK[0x6685]) = STACK[0xD084];
  LOBYTE(STACK[0xCA66]) = STACK[0xE565];
  LOBYTE(STACK[0x6686]) = STACK[0xD085];
  LOBYTE(STACK[0xCA67]) = STACK[0xE566];
  LOBYTE(STACK[0x6687]) = STACK[0xD086];
  LOBYTE(STACK[0xCA68]) = STACK[0xE567];
  LOBYTE(STACK[0x6688]) = STACK[0xD087];
  LOBYTE(STACK[0xCA69]) = STACK[0xE568];
  LOBYTE(STACK[0x6689]) = STACK[0xD088];
  LOBYTE(STACK[0xCA6A]) = STACK[0xE569];
  LOBYTE(STACK[0x668A]) = STACK[0xD089];
  LOBYTE(STACK[0xCA6B]) = STACK[0xE56A];
  LOBYTE(STACK[0x668B]) = STACK[0xD08A];
  LOBYTE(STACK[0xCA6C]) = STACK[0xE56B];
  LOBYTE(STACK[0x668C]) = STACK[0xD08B];
  LODWORD(v137) = LOBYTE(STACK[0xD08C]);
  HIDWORD(v152) = ~v137;
  LODWORD(v152) = (v137 ^ 0xF0) << 24;
  LOBYTE(STACK[0xCA6D]) = STACK[0xE56C];
  LODWORD(v138) = (v152 >> 25) - ((2 * (v152 >> 25)) & 0xFFFFFFF7) + 123;
  LOBYTE(v138) = *(v165 + (((v152 >> 25) - ((2 * (v152 >> 25)) & 0xF7) + 123) ^ 0x4CLL)) ^ ((v138 ^ 0x2A) + ((66 - 2 * (v138 ^ 0x2A)) | 0x95) + 84) ^ 0x5E;
  LOBYTE(STACK[0x668D]) = -13 * v138 - ((-26 * v138) & 0xE3) - 15;
  LOBYTE(STACK[0xCA6E]) = STACK[0xE56D];
  LOBYTE(STACK[0x668E]) = STACK[0xD08D];
  LOBYTE(STACK[0xCA6F]) = STACK[0xE56E];
  LOBYTE(STACK[0x668F]) = STACK[0xD08E];
  LOBYTE(STACK[0xCA70]) = STACK[0xE56F];
  LOBYTE(STACK[0x6690]) = STACK[0xD08F];
  LOBYTE(STACK[0xCA71]) = STACK[0xE570];
  LOBYTE(STACK[0x6691]) = STACK[0xD090];
  LOBYTE(STACK[0xCA72]) = (*(v164 + (((LOBYTE(STACK[0xE571]) ^ 0xF1) + 110) ^ 0x64)) + 78) ^ 0x18;
  LOBYTE(STACK[0x6692]) = STACK[0xD091];
  LOBYTE(STACK[0xCA73]) = STACK[0xE572];
  LOBYTE(STACK[0x6693]) = STACK[0xD092];
  LOBYTE(STACK[0xCA74]) = STACK[0xE573];
  LOBYTE(STACK[0x6694]) = STACK[0xD093];
  LOBYTE(STACK[0xCA75]) = STACK[0xE574];
  LOBYTE(STACK[0x6695]) = STACK[0xD094];
  LOBYTE(STACK[0xCA76]) = STACK[0xE575];
  LOBYTE(STACK[0x6696]) = STACK[0xD095];
  LOBYTE(STACK[0xCA77]) = STACK[0xE576];
  LOBYTE(STACK[0x6697]) = STACK[0xD096];
  LOBYTE(STACK[0xCA78]) = STACK[0xE577];
  LOBYTE(STACK[0x6698]) = STACK[0xD097];
  LODWORD(v138) = *(v168 + (((LOBYTE(STACK[0xE578]) ^ 0xF1) - 92) ^ 0x4ELL)) - 49;
  HIDWORD(v152) = v138 ^ 0x11;
  LODWORD(v152) = (v138 ^ 0x20) << 24;
  LOBYTE(STACK[0xCA79]) = (v152 >> 29) - ((2 * (v152 >> 29)) & 0xE3) - 15;
  LOBYTE(STACK[0x6699]) = STACK[0xD098];
  LOBYTE(STACK[0xCA7A]) = STACK[0xE579];
  LOBYTE(STACK[0x669A]) = STACK[0xD099];
  LOBYTE(STACK[0xCA7B]) = STACK[0xE57A];
  LODWORD(v138) = LOBYTE(STACK[0xD09A]);
  HIDWORD(v152) = v138 ^ 1;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LODWORD(v138) = *(v169 + ((v152 >> 27) ^ 0xDBLL));
  LODWORD(v138) = ((v138 >> 6) | 0xFFFFFF88) ^ (4 * v138) ^ 0xFFFFFFE4;
  LOBYTE(STACK[0x669B]) = 7 * v138 - ((14 * v138) & 0xE3) - 15;
  LOBYTE(STACK[0xCA7C]) = STACK[0xE57B];
  LOBYTE(STACK[0x669C]) = STACK[0xD09B];
  LOBYTE(STACK[0xCA7D]) = STACK[0xE57C];
  LOBYTE(STACK[0x669D]) = STACK[0xD09C];
  LOBYTE(STACK[0xCA7E]) = STACK[0xE57D];
  LOBYTE(STACK[0x669E]) = STACK[0xD09D];
  LOBYTE(STACK[0xCA7F]) = STACK[0xE57E];
  LOBYTE(STACK[0x669F]) = STACK[0xD09E];
  LODWORD(v138) = *(v166 + (((LOBYTE(STACK[0xE57F]) ^ 0xF1) - 92) ^ 0x8ELL));
  HIDWORD(v152) = v138 ^ 1;
  LODWORD(v152) = ~v138 << 24;
  LOBYTE(STACK[0xCA80]) = (v152 >> 29) - ((2 * (v152 >> 29)) & 0xE3) - 15;
  LOBYTE(STACK[0x66A0]) = STACK[0xD09F];
  LOBYTE(STACK[0xCA81]) = STACK[0xE580];
  LOBYTE(STACK[0x66A1]) = STACK[0xD0A0];
  LOBYTE(STACK[0xCA82]) = STACK[0xE581];
  LOBYTE(STACK[0x66A2]) = STACK[0xD0A1];
  LOBYTE(STACK[0xCA83]) = STACK[0xE582];
  LOBYTE(STACK[0x66A3]) = STACK[0xD0A2];
  LOBYTE(STACK[0xCA84]) = STACK[0xE583];
  LODWORD(v138) = LOBYTE(STACK[0xD0A3]);
  HIDWORD(v152) = v138 ^ 1;
  LODWORD(v152) = (v138 ^ 0xF0) << 24;
  LODWORD(v137) = *(v169 + ((v152 >> 27) ^ 0xDBLL));
  LODWORD(v138) = LODWORD(STACK[0x908]) + 423;
  HIDWORD(v152) = v137 ^ 0x39;
  LODWORD(v152) = v137 << 24;
  LOBYTE(STACK[0x66A4]) = 7 * ((v152 >> 30) ^ 0x88) - ((14 * ((v152 >> 30) ^ 0x88)) & 0xE3) - 15;
  LOBYTE(STACK[0xCA85]) = STACK[0xE584];
  LODWORD(v137) = *(v168 + (((LOBYTE(STACK[0xD0A4]) ^ 0xF1) - 92) ^ 0x4ELL)) - 49;
  HIDWORD(v152) = v137 ^ 0x11;
  LODWORD(v152) = (v137 ^ 0x20) << 24;
  LOBYTE(STACK[0x66A5]) = (v152 >> 29) - ((2 * (v152 >> 29)) & 0xE3) - 15;
  LOBYTE(STACK[0xCA86]) = STACK[0xE585];
  LOBYTE(STACK[0x66A6]) = STACK[0xD0A5];
  LOBYTE(STACK[0xCA87]) = STACK[0xE586];
  LOBYTE(STACK[0x66A7]) = STACK[0xD0A6];
  LOBYTE(STACK[0xCA88]) = STACK[0xE587];
  LOBYTE(STACK[0x66A8]) = STACK[0xD0A7];
  LOBYTE(STACK[0xCA89]) = STACK[0xE588];
  LOBYTE(STACK[0x66A9]) = STACK[0xD0A8];
  LODWORD(v137) = LOBYTE(STACK[0xE589]);
  HIDWORD(v152) = ~v137;
  LODWORD(v152) = (v137 ^ 0xF0) << 24;
  LODWORD(v137) = (v152 >> 25) - ((2 * (v152 >> 25)) & 0x40) + 32;
  LOBYTE(v137) = *(v165 + (((v152 >> 25) - ((2 * (v152 >> 25)) & 0x40) + 32) ^ 0x17)) ^ ((v137 ^ 0x71) + ((66 - 2 * (v137 ^ 0x71)) | 0x95) + 84) ^ 0x5E;
  LOBYTE(STACK[0xCA8A]) = -13 * v137 - ((-26 * v137) & 0xE3) - 15;
  LOBYTE(STACK[0x66AA]) = STACK[0xD0A9];
  LOBYTE(STACK[0xCA8B]) = STACK[0xE58A];
  LOBYTE(STACK[0x66AB]) = STACK[0xD0AA];
  LODWORD(v137) = *(v163 + (((LOBYTE(STACK[0xE58B]) ^ 0xF1) + 110) ^ 0xB0));
  HIDWORD(v152) = v137 ^ 0x13;
  LODWORD(v152) = ~v137 << 24;
  LOBYTE(STACK[0xCA8C]) = (v152 >> 31) ^ 0x63;
  LOBYTE(STACK[0x66AC]) = STACK[0xD0AB];
  LOBYTE(STACK[0xCA8D]) = STACK[0xE58C];
  LODWORD(v147) = LOBYTE(STACK[0xE58D]);
  HIDWORD(v152) = ~v147;
  LODWORD(v152) = (v147 ^ 0xF0) << 24;
  LOBYTE(STACK[0x66AD]) = STACK[0xD0AC];
  LODWORD(v137) = (v152 >> 25) - ((2 * (v152 >> 25)) & 0xFFFFFFCC) + 102;
  LOBYTE(v137) = *(v165 + (((v152 >> 25) - ((2 * (v152 >> 25)) & 0xCC) + 102) ^ 0x51)) ^ ((v137 ^ 0x37) - ((2 * (v137 ^ 0x37) + 60) & 0x6A) + 83) ^ 0x5E;
  LOBYTE(STACK[0xCA8E]) = (~(-26 * v137) | 0x1D) - 13 * v137 - 14;
  LOBYTE(STACK[0x66AE]) = STACK[0xD0AD];
  LOBYTE(STACK[0xCA8F]) = STACK[0xE58E];
  LOBYTE(STACK[0x66AF]) = STACK[0xD0AE];
  LOBYTE(STACK[0xCA90]) = STACK[0xE58F];
  LOBYTE(STACK[0x66B0]) = STACK[0xD0AF];
  LOBYTE(STACK[0xCA91]) = STACK[0xE590];
  LOBYTE(STACK[0x66B1]) = STACK[0xD0B0];
  LOBYTE(STACK[0xCA92]) = STACK[0xE591];
  LOBYTE(STACK[0x66B2]) = STACK[0xD0B1];
  LOBYTE(STACK[0xCA93]) = STACK[0xE592];
  LOBYTE(STACK[0x66B3]) = STACK[0xD0B2];
  LOBYTE(STACK[0xCA94]) = STACK[0xE593];
  LOBYTE(STACK[0x66B4]) = STACK[0xD0B3];
  LOBYTE(STACK[0xCA95]) = STACK[0xE594];
  LOBYTE(STACK[0x66B5]) = STACK[0xD0B4];
  LOBYTE(STACK[0xCA96]) = STACK[0xE595];
  LOBYTE(STACK[0x66B6]) = STACK[0xD0B5];
  LOBYTE(STACK[0xCA97]) = STACK[0xE596];
  LOBYTE(STACK[0x66B7]) = STACK[0xD0B6];
  LOBYTE(STACK[0xCA98]) = STACK[0xE597];
  LOBYTE(STACK[0x66B8]) = STACK[0xD0B7];
  LOBYTE(STACK[0xCA99]) = STACK[0xE598];
  LOBYTE(STACK[0x66B9]) = STACK[0xD0B8];
  LOBYTE(STACK[0xCA9A]) = STACK[0xE599];
  LOBYTE(STACK[0x66BA]) = STACK[0xD0B9];
  LOBYTE(STACK[0xCA9B]) = STACK[0xE59A];
  LOBYTE(STACK[0x66BB]) = STACK[0xD0BA];
  LOBYTE(STACK[0xCA9C]) = STACK[0xE59B];
  LOBYTE(STACK[0x66BC]) = STACK[0xD0BB];
  LOBYTE(STACK[0xCA9D]) = STACK[0xE59C];
  LOBYTE(STACK[0x66BD]) = STACK[0xD0BC];
  LOBYTE(STACK[0xCA9E]) = STACK[0xE59D];
  LOBYTE(STACK[0x66BE]) = STACK[0xD0BD];
  LOBYTE(STACK[0xCA9F]) = STACK[0xE59E];
  LOBYTE(STACK[0x66BF]) = STACK[0xD0BE];
  LOBYTE(STACK[0xCAA0]) = STACK[0xE59F];
  LOBYTE(STACK[0x66C0]) = STACK[0xD0BF];
  LOBYTE(STACK[0xCAA1]) = STACK[0xE5A0];
  LOBYTE(STACK[0x66C1]) = STACK[0xD0C0];
  LOBYTE(STACK[0xCAA2]) = STACK[0xE5A1];
  LODWORD(v147) = LOBYTE(STACK[0xE5A2]);
  HIDWORD(v152) = v147 ^ 1;
  LODWORD(v152) = (v147 ^ 0xF0) << 24;
  LOBYTE(STACK[0x66C2]) = STACK[0xD0C1];
  LODWORD(v137) = *(v169 + ((v152 >> 27) ^ 0xDBLL));
  HIDWORD(v152) = v137 ^ 0x39;
  LODWORD(v152) = v137 << 24;
  LOBYTE(STACK[0xCAA3]) = 7 * ((v152 >> 30) ^ 0x88) - ((14 * ((v152 >> 30) ^ 0x88)) & 0xE3) - 15;
  LOBYTE(STACK[0x66C3]) = STACK[0xD0C2];
  LOBYTE(STACK[0xCAA4]) = STACK[0xE5A3];
  LOBYTE(STACK[0x66C4]) = STACK[0xD0C3];
  LODWORD(v137) = LOBYTE(STACK[0xE5A4]);
  HIDWORD(v152) = v137 ^ 1;
  LODWORD(v152) = (v137 ^ 0xF0) << 24;
  LODWORD(v137) = *(v169 + ((v152 >> 27) ^ 0xDBLL));
  HIDWORD(v152) = v137 ^ 0x39;
  LODWORD(v152) = v137 << 24;
  LOBYTE(STACK[0xCAA5]) = 7 * ((v152 >> 30) ^ 0x88) - ((14 * ((v152 >> 30) ^ 0x88)) & 0xE3) - 15;
  LOBYTE(STACK[0x66C5]) = STACK[0xD0C4];
  LOBYTE(STACK[0xCAA6]) = STACK[0xE5A5];
  LOBYTE(STACK[0x66C6]) = STACK[0xD0C5];
  LOBYTE(STACK[0xCAA7]) = STACK[0xE5A6];
  LOBYTE(STACK[0x66C7]) = STACK[0xD0C6];
  LOBYTE(STACK[0xCAA8]) = STACK[0xE5A7];
  LOBYTE(STACK[0x66C8]) = STACK[0xD0C7];
  LOBYTE(STACK[0xCAA9]) = STACK[0xE5A8];
  LODWORD(v137) = *(v168 + (((LOBYTE(STACK[0xD0C8]) ^ 0xF1) - 92) ^ 0x4ELL)) - 49;
  HIDWORD(v152) = v137 ^ 0x11;
  LODWORD(v152) = (v137 ^ 0x20) << 24;
  LOBYTE(STACK[0x66C9]) = (v152 >> 29) - ((2 * (v152 >> 29)) & 0xE3) - 15;
  LOBYTE(STACK[0xCAAA]) = STACK[0xE5A9];
  LODWORD(v147) = LOBYTE(STACK[0xE5AA]);
  HIDWORD(v152) = v147 ^ 1;
  LODWORD(v152) = (v147 ^ 0xF0) << 24;
  LOBYTE(STACK[0x66CA]) = STACK[0xD0C9];
  LOBYTE(v137) = (*(v167 + ((v152 >> 27) ^ 0xE4)) + 103) ^ 0xEE;
  LOBYTE(STACK[0xCAAB]) = 7 * v137 - ((14 * v137) & 0xE3) - 15;
  LOBYTE(STACK[0x66CB]) = STACK[0xD0CA];
  LOBYTE(STACK[0xCAAC]) = STACK[0xE5AB];
  LOBYTE(STACK[0x66CC]) = STACK[0xD0CB];
  LOBYTE(STACK[0xCAAD]) = STACK[0xE5AC];
  LOBYTE(STACK[0x66CD]) = STACK[0xD0CC];
  LOBYTE(STACK[0xCAAE]) = STACK[0xE5AD];
  LOBYTE(STACK[0x66CE]) = STACK[0xD0CD];
  LOBYTE(STACK[0xCAAF]) = STACK[0xE5AE];
  LOBYTE(STACK[0x66CF]) = STACK[0xD0CE];
  STACK[0x9770] = 0xD3879C4D733BB294;
  STACK[0x8EF0] = 0xD3879C4D733BB297;
  return (*(STACK[0x940] + 8 * v138))(22, 20, &off_278E1E490, v165);
}

uint64_t sub_2447EFD50(int a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = (v10 ^ 0xB5F51AD0) + v9;
  v13 = *(*(a3 + 8 * v8) - 12 + (v12 ^ 0x25));
  HIDWORD(v14) = v13 ^ v11;
  LODWORD(v14) = (v13 ^ 0xFFFFFFDF) << 24;
  *(&STACK[0x8220] + v9 - 1242224265) = *(a7 + ((*(*(a3 + 8 * v7) - 12 + 2 * (v12 ^ 0x24)) + 7735) ^ 0xD12ELL)) ^ ((v14 >> 28) - ((2 * (v14 >> 28)) & 0x66) - 77) ^ a2;
  return (*(a5 + 8 * (((v9 + 1 != a6 + 16) * a1) ^ v10)))();
}

uint64_t sub_2447EFE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = v8 - ((2 * v8 + 894717870) & (v7 + 1951366661)) + 125621246;
  v13 = *(*(a3 + 8 * (v7 ^ 0x6555DA42)) - 12 + 2 * (v12 ^ 0x6CD2AC03u));
  HIDWORD(v14) = ~v13;
  LODWORD(v14) = (v13 ^ 0x91EA) << 16;
  v15 = *(*(a3 + 8 * (v7 ^ 0x6555DEAB)) - 12 + (v12 ^ 0x6CD2AC3Cu));
  v16 = (v14 >> 17) ^ 0x27BDLL;
  HIDWORD(v14) = v15 ^ 0x10;
  LODWORD(v14) = (v15 ^ 0x40) << 24;
  v17 = v14 >> 29;
  HIDWORD(v14) = ~v17;
  LODWORD(v14) = (v17 ^ 0x92) << 24;
  v18 = *(a5 + 8 * ((30009 * (((v8 + 1 - v7) | (v7 - (v8 + 1))) >= 0)) ^ (v7 - 1700112034)));
  *(&STACK[0x8CD0] + v8 - 1700124729) = *(a7 + v16) ^ ((*(a4 + ((127 - (v14 >> 25)) ^ v9)) ^ (((127 - (v14 >> 25)) ^ 0x2E) - ((2 * ((127 - (v14 >> 25)) ^ 0x2E) + 60) & 0x6A) + 83) ^ v11) * v10) ^ 0xEE;
  return v18();
}

uint64_t sub_2447EFF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v14 = ((v9 + 402522198) & 0xE801FFFD ^ 0x4F566737) + v11 - ((2 * v11 + 312) & 0x6EC);
  v15 = (*(STACK[0x970] + (((*(a7 + ((*(v8 + 2 * (v14 ^ 0x73B56B52u)) + 7735) ^ 0xD12ELL)) ^ a8) - 92) ^ v13)) - 49) ^ *(v10 + (v14 ^ 0x73B56B6Du));
  HIDWORD(v16) = v15 ^ 1;
  LODWORD(v16) = (v15 ^ 0x60) << 24;
  v17 = *(a5 + 8 * ((500 * (v11 == 610225043)) ^ v9));
  *(&STACK[0xD0E0] + v11 - 610224516) = (v16 >> 29) ^ v12;
  return v17();
}

uint64_t sub_2447F0074@<X0>(uint64_t a1@<X4>, uint64_t a2@<X6>, uint64_t a3@<X8>)
{
  v11 = v5 - ((v9 + 2 * v5) & v10) - 1410323307;
  v12 = *(v3 + 2 * (v11 ^ (v6 + 1)));
  HIDWORD(v13) = ~v12;
  LODWORD(v13) = (((v4 ^ 0xDFE) + 17167) ^ v12) << 16;
  LOBYTE(v12) = *(a2 + ((v13 >> 17) ^ 0x27BDLL));
  v14 = *(a3 + (v11 ^ v6));
  HIDWORD(v13) = v14 ^ v7;
  LODWORD(v13) = (v14 ^ 0xFFFFFFDF) << 24;
  *(&STACK[0xACA0] + v5 - 183924380) = v12 ^ ((v13 >> 28) - ((2 * (v13 >> 28)) & 0x66) - 77) ^ 0x55;
  return (*(a1 + 8 * (((v5 == 183924907) * v8) ^ v4)))();
}

uint64_t sub_2447F013C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  STACK[0x2B50] = ((LOBYTE(STACK[0x822A]) ^ 0xF3u) << 40) ^ 0xD3879C4D733BB266 ^ ((LOBYTE(STACK[0x8229]) ^ 0xF3u) << 48) ^ (LOBYTE(STACK[0x822F]) | (((10 * (v5 ^ 0xDA) - 23) ^ LOBYTE(STACK[0x822E])) << 8) | ((LOBYTE(STACK[0x822D]) ^ 0xF3) << 16) | ((LOBYTE(STACK[0x822C]) ^ 0xF3) << 24) | ((LOBYTE(STACK[0x822B]) ^ 0xF3u) << 32)) ^ ((LOBYTE(STACK[0x8228]) ^ 0xFFFFFFF3) << 56);
  STACK[0x2B58] = ((LOBYTE(STACK[0x8222]) ^ 0xF3u) << 40) ^ 0xD3879C4D733BB266 ^ (LOBYTE(STACK[0x8227]) | ((LOBYTE(STACK[0x8226]) ^ 0xF3) << 8) | ((LOBYTE(STACK[0x8225]) ^ 0xF3) << 16) | ((LOBYTE(STACK[0x8224]) ^ 0xF3) << 24) | ((LOBYTE(STACK[0x8223]) ^ 0xF3u) << 32)) ^ ((LOBYTE(STACK[0x8221]) ^ 0xF3u) << 48) ^ ((LOBYTE(STACK[0x8220]) ^ 0xFFFFFFF3) << 56);
  return (*(a5 + 8 * (v5 ^ (45 * (LODWORD(STACK[0x62C]) == 211632980)))))();
}

uint64_t sub_2447F0294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  STACK[0xB350] = a8;
  v9 = *(a5 + 8 * (v8 - 7479));
  LODWORD(STACK[0x858]) = 130989216;
  return v9(a1, a2, a3, 1766);
}

uint64_t sub_2447F035C@<X0>(uint64_t a1@<X0>, char a2@<W2>, char a3@<W4>, int a4@<W7>, char a5@<W8>)
{
  LOBYTE(STACK[0xE5D4]) = (v6 - 114) ^ v5;
  LOBYTE(STACK[0xE5D5]) = (BYTE1(v5) ^ 0xED) + (~(2 * (BYTE1(v5) ^ 0xED)) | 0x1D) - 14;
  LOBYTE(STACK[0xE5D6]) = (BYTE2(v5) ^ 0xAC) - ((2 * (BYTE2(v5) ^ 0xAC)) & 0xE3) - 15;
  LOBYTE(STACK[0xE5D7]) = (a5 ^ 0xA) - ((2 * a5) & 0xE3) - 15;
  LOBYTE(STACK[0xE5D8]) = (a3 ^ 0xA6) - ((2 * (a3 ^ 0xA6)) & 0xE3) - 15;
  v8 = *(STACK[0x8F0] + (((a2 ^ 0xC8) + ~(2 * (((a2 ^ 0xC8) + 36) & 0x45 ^ BYTE5(v5) & 1)) + 105) ^ 0x4ALL));
  HIDWORD(v9) = v8 ^ 1;
  LODWORD(v9) = ~v8 << 24;
  LOBYTE(STACK[0xE5D9]) = (v9 >> 29) - ((2 * (v9 >> 29)) & 0xE3) - 15;
  LOBYTE(STACK[0xE5DA]) = (v7 ^ 0x99) - 2 * ((v7 ^ 0x99) & 0xF3 ^ v7 & 2) - 15;
  LOBYTE(STACK[0xE5DB]) = (HIBYTE(v5) ^ 0x71) - 2 * ((HIBYTE(v5) ^ 0x71) & 0x75 ^ HIBYTE(v5) & 4) - 15;
  v10 = *(a1 + 8 * (v6 ^ 0x91A3B226 ^ (1944 * (v6 > 0x4CAA450D))));
  LODWORD(STACK[0x8B0]) = STACK[0x960];
  LODWORD(STACK[0x898]) = STACK[0x630];
  LODWORD(STACK[0x890]) = STACK[0x640];
  LODWORD(STACK[0x8A0]) = a4;
  v11 = LODWORD(STACK[0x63C]);
  LODWORD(STACK[0x8A8]) = STACK[0x634];
  return v10(v11);
}

uint64_t sub_2447F0580@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, char a4@<W4>, uint64_t a5@<X5>, int a6@<W6>, char a7@<W7>, char a8@<W8>)
{
  LOBYTE(STACK[0x4500]) = v9;
  LOBYTE(STACK[0x4501]) = v11;
  LOBYTE(STACK[0x4502]) = v10;
  LOBYTE(STACK[0x4503]) = (a8 ^ 0xA) - ((2 * (a8 ^ 0xA)) & 0xBF) - 33;
  LOBYTE(STACK[0x4504]) = (a4 ^ 0xA6) - ((((v13 ^ 0x1E) * a7) ^ 0x8C) & (2 * (a4 ^ 0xA6))) - 33;
  LOBYTE(STACK[0x4505]) = (a3 ^ 0xC8) - ((2 * (a3 ^ 0xC8)) & 0xBF) - 33;
  LOBYTE(STACK[0x4506]) = (*(a5 + (((v12 ^ 0x99) + 110) ^ a2)) + 78) ^ 0x36;
  LOBYTE(STACK[0x4507]) = (HIBYTE(v8) ^ 0x71) - ((2 * (HIBYTE(v8) ^ 0x71)) & 0xBF) - 33;
  v14 = *(a1 + 8 * (v13 | 0x400));
  LODWORD(STACK[0x8B0]) = STACK[0x960];
  LODWORD(STACK[0x898]) = STACK[0x630];
  LODWORD(STACK[0x890]) = STACK[0x640];
  LODWORD(STACK[0x8A0]) = a6;
  v15 = LODWORD(STACK[0x63C]);
  LODWORD(STACK[0x8A8]) = STACK[0x634];
  return v14(v15);
}

uint64_t sub_2447F0694@<X0>(uint64_t a1@<X4>, int a2@<W8>)
{
  v2 = *(a1 + 8 * a2);
  LODWORD(STACK[0x858]) = 130989216;
  return v2();
}

uint64_t sub_2447F073C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v12 = a6 < v7;
  if (v12 == v8 < 0x65FA7A51)
  {
    v12 = v6 > v8;
  }

  return (*(a5 + 8 * ((((a1 + v9) & v10 ^ v11) * !v12) | a1)))();
}

uint64_t sub_2447F07EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + v8) = v6;
  LODWORD(STACK[0x858]) += v9 + ((v7 + 939692618) & 0xC7FD7DDB);
  return (*(a5 + 8 * v7))();
}

uint64_t sub_2447F086C@<X0>(uint64_t a1@<X0>, char a2@<W2>, char a3@<W3>, char a4@<W4>, int a5@<W7>, char a6@<W8>)
{
  LOBYTE(STACK[0x4510]) = v6 ^ ((v7 ^ 0x89) * a3) ^ v9;
  LOBYTE(STACK[0x4511]) = (BYTE1(v6) ^ 0xED) - ((2 * (BYTE1(v6) ^ 0xED)) & 0xBF) - 33;
  LOBYTE(STACK[0x4512]) = (BYTE2(v6) ^ 0xAC) - ((2 * (BYTE2(v6) ^ 0xAC)) & 0xBF) - 33;
  LOBYTE(STACK[0x4513]) = (a6 ^ 0xA) - ((2 * (a6 ^ 0xA)) & 0xBF) - 33;
  LOBYTE(STACK[0xE5C0]) = (a4 ^ 0xA6) - ((2 * (a4 ^ 0xA6)) & 0xE3) - 15;
  LOBYTE(STACK[0xE5C1]) = (a2 ^ 0xC8) - 2 * ((a2 ^ 0xC8) & 0xF7 ^ a2 & 6) - 15;
  LOBYTE(STACK[0xE5C2]) = (v8 ^ 0x99) + ~(2 * ((v8 ^ 0x99) & 0xF3 ^ v8 & 2)) - 14;
  LOBYTE(STACK[0xE5C3]) = (HIBYTE(v6) ^ 0x71) - ((2 * (HIBYTE(v6) ^ 0x71)) & 0xE3) - 15;
  v10 = *(a1 + 8 * v7);
  LODWORD(STACK[0x8B0]) = STACK[0x960];
  LODWORD(STACK[0x898]) = STACK[0x630];
  LODWORD(STACK[0x890]) = STACK[0x640];
  LODWORD(STACK[0x8A0]) = a5;
  v11 = LODWORD(STACK[0x63C]);
  LODWORD(STACK[0x8A8]) = STACK[0x634];
  return v10(v11);
}

uint64_t sub_2447F0A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + v8) = v6;
  LODWORD(STACK[0x858]) = LODWORD(STACK[0x858]) - 5330 + 3 * (v7 ^ 0xD8AB4555);
  return (*(a5 + 8 * ((23325 * (v7 < 0xCDC22C7F)) ^ (v7 + 659878709))))();
}

uint64_t sub_2447F0B34(int a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8)
{
  v13 = v8 < a7;
  *(v11 + v12) = a8;
  v14 = v10 + a3 + ((v9 + a1) & a2);
  v15 = v13 ^ (v14 < a7);
  v16 = v8 > v14;
  if (!v15)
  {
    v13 = v16;
  }

  return (*(a5 + 8 * ((60 * v13) ^ v9)))();
}

uint64_t sub_2447F0C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X7>, int a7@<W8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, unint64_t a48)
{
  v55 = (a7 + 10530) | 0x202;
  v56 = ((v49 + 2) & 0x3F ^ 0x5FDCBE47) + (v48 & 0xE);
  LODWORD(STACK[0x5C0]) = v56 - 1191707712;
  LODWORD(STACK[0x950]) = v55;
  if (v56 == 1608302151)
  {
    v57 = 1056439162;
  }

  else
  {
    v57 = 1056439160;
  }

  v58 = ((v55 - 880942347) ^ (v56 == 1608302151)) + v57;
  LODWORD(STACK[0x5BC]) = v58;
  v59 = LODWORD(STACK[0x858]);
  *(a46 + 8 * (v58 + v59 - 306498839)) = (v50 << (v56 - 71)) + a6 - ((a5 << (v56 - 71)) & v51);
  v60 = *(a4 + 8 * a7);
  LODWORD(STACK[0x58C]) = v52 + 2;
  STACK[0x750] = STACK[0x548];
  STACK[0x800] = STACK[0x540];
  STACK[0x748] = STACK[0x570];
  STACK[0x740] = STACK[0x538];
  STACK[0x870] = STACK[0x4D8];
  STACK[0x820] = STACK[0x4D0];
  STACK[0x910] = STACK[0x5A0];
  STACK[0x868] = STACK[0x598];
  LODWORD(STACK[0x7F0]) = STACK[0x5F4];
  v61 = LODWORD(STACK[0x608]);
  LODWORD(STACK[0x838]) = STACK[0x4CC];
  LODWORD(STACK[0x7EC]) = STACK[0x55C];
  LODWORD(STACK[0x930]) = v53;
  LODWORD(STACK[0x878]) = STACK[0x5A8];
  LODWORD(STACK[0x730]) = STACK[0x56C];
  LODWORD(STACK[0x828]) = v54;
  LODWORD(STACK[0x830]) = STACK[0x554];
  LODWORD(STACK[0x7FC]) = STACK[0x600];
  LODWORD(STACK[0x850]) = STACK[0x550];
  LODWORD(STACK[0x734]) = STACK[0x534];
  LODWORD(STACK[0x7E0]) = STACK[0x564];
  LODWORD(STACK[0x948]) = STACK[0x594];
  LODWORD(STACK[0x738]) = STACK[0x568];
  STACK[0x8B8] = a48;
  STACK[0x5C8] = STACK[0x290];
  STACK[0x5D0] = STACK[0x480];
  LODWORD(STACK[0x5D8]) = v59;
  LODWORD(STACK[0x7AC]) = STACK[0x638];
  LODWORD(STACK[0x758]) = STACK[0x630];
  LODWORD(STACK[0x810]) = v58 + v59 - 175509623;
  LODWORD(STACK[0x7A8]) = STACK[0x640];
  LODWORD(STACK[0x7A4]) = STACK[0x62C];
  LODWORD(STACK[0x7A0]) = STACK[0x63C];
  LODWORD(STACK[0x79C]) = STACK[0x634];
  return v60(a1, a2, v61, a3, v59);
}

uint64_t sub_2447F0E2C@<X0>(uint64_t a1@<X0>, char a2@<W2>, char a3@<W4>, int a4@<W6>, char a5@<W8>)
{
  LOBYTE(STACK[0x44F8]) = v6;
  LOBYTE(STACK[0x44F9]) = v9 - ((2 * v9) & 0xBF) - 33;
  LOBYTE(STACK[0x44FA]) = (BYTE2(v5) ^ v7 ^ 0x88) - ((2 * (BYTE2(v5) ^ v7 ^ 0x88)) & 0xBF) - 33;
  LOBYTE(STACK[0x44FB]) = (a5 ^ 0xA) - ((2 * (a5 ^ 0xA)) & 0xBF) - 33;
  LOBYTE(STACK[0x44FC]) = (a3 ^ 0xA6) - ((2 * (a3 ^ 0xA6)) & 0xBF) - 33;
  v10 = *(STACK[0x918] + (((a2 ^ 0xC8) + 110) ^ 0xB0));
  HIDWORD(v11) = v10 ^ 0x13;
  LODWORD(v11) = ~v10 << 24;
  LOBYTE(STACK[0x44FD]) = (v11 >> 31) ^ 0x4D;
  LOBYTE(STACK[0x44FE]) = (v8 ^ 0x99) - ((2 * (v8 ^ 0x99)) & 0xBF) - 33;
  LOBYTE(STACK[0x44FF]) = (HIBYTE(v5) ^ 0x71) - ((2 * (HIBYTE(v5) ^ 0x71)) & 0xBF) - 33;
  v12 = *(a1 + 8 * v7);
  LODWORD(STACK[0x8B0]) = STACK[0x960];
  LODWORD(STACK[0x898]) = STACK[0x630];
  LODWORD(STACK[0x890]) = STACK[0x640];
  LODWORD(STACK[0x8A0]) = a4;
  v13 = LODWORD(STACK[0x63C]);
  LODWORD(STACK[0x8A8]) = STACK[0x634];
  return v12(v13);
}

uint64_t sub_2447F0F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W4>, int a5@<W6>, int a6@<W7>, char a7@<W8>)
{
  v11 = *(STACK[0x8F0] + (((v7 ^ 0xD9) - 92) ^ 0x8ELL));
  HIDWORD(v12) = v11 ^ 1;
  LODWORD(v12) = ~v11 << 24;
  LOBYTE(STACK[0xE5CC]) = (v12 >> 29) - (((((v8 + 14) & 0x36) + 19) & 0xFA ^ 0xD0) & (2 * (v12 >> 29))) - 15;
  LOBYTE(STACK[0xE5CD]) = (BYTE1(v7) ^ 0xED) - 2 * ((BYTE1(v7) ^ 0xED) & 0xF3 ^ BYTE1(v7) & 2) - 15;
  LOBYTE(STACK[0xE5CE]) = (BYTE2(v7) ^ 0xAC) - ((2 * (BYTE2(v7) ^ 0xAC)) & 0xE3) - 15;
  LOBYTE(STACK[0xE5CF]) = (a7 ^ 0xA) - ((2 * a7) & 0xE3) - 15;
  LOBYTE(STACK[0xE5D0]) = (a4 ^ 0xA6) - 2 * ((a4 ^ 0xA6) & 0xF9 ^ a4 & 8) - 15;
  v13 = *(STACK[0x8D0] + (((v7 >> 33) & 0x80 | (v7 >> 41) & 0x7F) ^ 0xC2));
  HIDWORD(v12) = v13 ^ a5;
  LODWORD(v12) = ~v13 << 24;
  LOBYTE(STACK[0xE5D1]) = ((v12 >> 31) ^ 0xD6) * v10 - ((-26 * ((v12 >> 31) ^ 0xD6)) & 0xE3) - 15;
  LOBYTE(STACK[0xE5D2]) = (v9 ^ 0x99) - ((2 * (v9 ^ 0x99)) & 0xE3) - 15;
  LOBYTE(STACK[0xE5D3]) = (HIBYTE(v7) ^ 0x71) - 2 * ((HIBYTE(v7) ^ 0x71) & 0xF9 ^ HIBYTE(v7) & 8) - 15;
  v14 = *(a1 + 8 * ((v8 - 2132851186) & 0x7F207536));
  v15 = LODWORD(STACK[0x638]);
  LODWORD(STACK[0x8B0]) = STACK[0x960];
  LODWORD(STACK[0x898]) = STACK[0x630];
  LODWORD(STACK[0x890]) = STACK[0x640];
  LODWORD(STACK[0x8A0]) = a6;
  v16 = LODWORD(STACK[0x63C]);
  LODWORD(STACK[0x8A8]) = STACK[0x634];
  return v14(v16, a2, a3, 1, v15, 0);
}

uint64_t sub_2447F1164@<X0>(uint64_t a1@<X0>, char a2@<W2>, char a3@<W4>, uint64_t a4@<X5>, int a5@<W6>, char a6@<W8>)
{
  LOBYTE(STACK[0x4508]) = v7;
  v12 = v10 - 11534;
  LOBYTE(STACK[0x4509]) = v9;
  LOBYTE(STACK[0x450A]) = v8;
  LOBYTE(STACK[0x450B]) = (*(a4 + ((((v12 + 1658515987) & 0x9D252FFA) - 9934) ^ ((a6 ^ 0xA) + 110))) + 78) ^ 0x36;
  LOBYTE(STACK[0x450C]) = (a3 ^ 0xA6) - ((2 * (a3 ^ 0xA6)) & 0xBF) - 33;
  LOBYTE(STACK[0x450D]) = (a2 ^ 0xC8) - ((2 * (a2 ^ 0xC8)) & 0xBF) - 33;
  LOBYTE(STACK[0x450E]) = (v11 ^ 0x99) - ((2 * (v11 ^ 0x99)) & 0xBF) - 33;
  LOBYTE(STACK[0x450F]) = (HIBYTE(v6) ^ 0x71) - ((2 * (HIBYTE(v6) ^ 0x71)) & 0xBF) - 33;
  v13 = *(a1 + 8 * v12);
  LODWORD(STACK[0x8B0]) = STACK[0x960];
  LODWORD(STACK[0x898]) = STACK[0x630];
  LODWORD(STACK[0x890]) = STACK[0x640];
  LODWORD(STACK[0x8A0]) = a5;
  v14 = LODWORD(STACK[0x63C]);
  LODWORD(STACK[0x8A8]) = STACK[0x634];
  return v13(v14);
}

uint64_t sub_2447F1290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = *(STACK[0x940] + 8 * ((4 * (a5 != 130989216)) | (16 * (a5 != 130989216)) | (LODWORD(STACK[0x950]) - 3882)));
  LODWORD(STACK[0x958]) = 1;
  LODWORD(STACK[0x7D4]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  LODWORD(STACK[0x808]) = 1;
  LODWORD(STACK[0x7DC]) = 1;
  return v5();
}

uint64_t sub_2447F13B4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  *(v10 + v14) = (*(v16 + v14) ^ a4) + v8 + (*(v9 + v14) ^ a6) + a4 - (a5 & (2 * ((*(v16 + v14) ^ a4) + v8 + (*(v9 + v14) ^ a6))));
  v17 = a1 + v13;
  v18 = (a1 + 1);
  v19 = (v11 < v15) ^ (v17 < v15);
  v20 = v11 > v17;
  if (v19)
  {
    v20 = v11 < v15;
  }

  return (*(STACK[0x940] + 8 * ((v20 * a8) ^ v12)))(v18);
}

uint64_t sub_2447F1438@<X0>(int a1@<W6>, unsigned int a2@<W8>)
{
  v3 = v2 - 99850305 < (a1 - 99850305);
  if ((v2 - 99850305) < 0x1DB245F != a1 - 99850305 < 3 * (a2 ^ 0x1863) + 31126101)
  {
    v3 = a1 - 99850305 < 3 * (a2 ^ 0x1863) + 31126101;
  }

  return (*(STACK[0x940] + 8 * ((63 * v3) ^ a2)))();
}

uint64_t sub_2447F14B8@<X0>(char a1@<W1>, uint64_t a2@<X3>, uint64_t a3@<X4>, char a4@<W5>, int a5@<W7>, unsigned int a6@<W8>)
{
  *(v7 + v10) = v6 + (*(v13 + v10) ^ a2) - 1 + a2 - (((v6 + (*(v13 + v10) ^ a2) - 1) << ((a6 + a1) ^ a4)) & a3);
  v14 = v12 + 1 + a5;
  v15 = (v8 < v9) ^ (v14 < v11);
  v16 = v14 < v8;
  if (v15)
  {
    v16 = v8 < v9;
  }

  return (*(STACK[0x940] + 8 * ((63 * v16) ^ a6)))();
}

uint64_t sub_2447F1598@<X0>(uint64_t a1@<X1>, unsigned int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = a3 + (*(v6 + a5) ^ a3) - ((2 * (*(v6 + a5) ^ a3) + 2) & a4) + 1;
  *(v6 + a5) = v10;
  v11 = v7 < a2;
  if (v11 == v8 + v9 < a2)
  {
    v11 = v8 + v9 < v7;
  }

  if (v10 != a3)
  {
    v11 = 0;
  }

  return (*(a1 + 8 * ((31 * v11) ^ v5)))();
}

uint64_t sub_2447F160C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LODWORD(STACK[0x950]) = v4 + 11354;
  v12 = *(a2 + 8 * ((((v4 ^ 0xFFFFC84F) + v4 + 11354) * (v5 == a4)) ^ v4));
  STACK[0x548] = STACK[0x750];
  STACK[0x540] = STACK[0x800];
  STACK[0x570] = STACK[0x748];
  STACK[0x538] = STACK[0x740];
  LODWORD(STACK[0x5F4]) = STACK[0x7F0];
  LODWORD(STACK[0x900]) = v9;
  LODWORD(STACK[0x880]) = v6;
  LODWORD(STACK[0x888]) = STACK[0x7AC];
  LODWORD(STACK[0x55C]) = STACK[0x7EC];
  LODWORD(STACK[0x56C]) = STACK[0x730];
  LODWORD(STACK[0x898]) = v10;
  LODWORD(STACK[0x64C]) = v11;
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x81C]) = v8;
  LODWORD(STACK[0x600]) = STACK[0x7FC];
  LODWORD(STACK[0x534]) = STACK[0x734];
  LODWORD(STACK[0x564]) = STACK[0x7E0];
  LODWORD(STACK[0x890]) = STACK[0x7A8];
  LODWORD(STACK[0x644]) = v7;
  LODWORD(STACK[0x8A0]) = STACK[0x7A4];
  LODWORD(STACK[0x8B0]) = STACK[0x7A0];
  LODWORD(STACK[0x8A8]) = STACK[0x79C];
  LODWORD(STACK[0x568]) = STACK[0x738];
  return v12();
}

uint64_t sub_2447F16F4@<X0>(uint64_t a1@<X8>)
{
  v8 = v1 ^ 0xCA5;
  *(v2 + a1) = 0xD3879C4D733BB294;
  LODWORD(STACK[0x950]) = v8 ^ 0x3B1F;
  v9 = *(STACK[0x940] + 8 * v8);
  STACK[0x548] = STACK[0x750];
  STACK[0x540] = STACK[0x800];
  STACK[0x570] = STACK[0x748];
  STACK[0x538] = STACK[0x740];
  LODWORD(STACK[0x5F4]) = STACK[0x7F0];
  LODWORD(STACK[0x900]) = v3;
  LODWORD(STACK[0x880]) = STACK[0x5F8];
  LODWORD(STACK[0x888]) = STACK[0x7AC];
  LODWORD(STACK[0x55C]) = STACK[0x7EC];
  LODWORD(STACK[0x56C]) = STACK[0x730];
  LODWORD(STACK[0x898]) = v6;
  LODWORD(STACK[0x64C]) = v7;
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x81C]) = v5;
  LODWORD(STACK[0x600]) = STACK[0x7FC];
  LODWORD(STACK[0x534]) = STACK[0x734];
  LODWORD(STACK[0x564]) = STACK[0x7E0];
  LODWORD(STACK[0x890]) = STACK[0x7A8];
  LODWORD(STACK[0x644]) = v4;
  LODWORD(STACK[0x8A0]) = STACK[0x7A4];
  LODWORD(STACK[0x8B0]) = STACK[0x7A0];
  LODWORD(STACK[0x8A8]) = STACK[0x79C];
  LODWORD(STACK[0x568]) = STACK[0x738];
  return v9();
}

uint64_t sub_2447F1864(int a1, int a2, int a3, int a4, int a5, unint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x958]) = v8;
  LODWORD(STACK[0x7D0]) = v13;
  LODWORD(STACK[0x66C]) = a8;
  STACK[0x698] = a6;
  LODWORD(STACK[0x624]) = a5;
  LODWORD(STACK[0x628]) = a4;
  LODWORD(STACK[0x72C]) = a2;
  LODWORD(STACK[0x650]) = a1;
  STACK[0x860] = v12;
  LODWORD(STACK[0x840]) = v11;
  LODWORD(STACK[0x84C]) = v10;
  LODWORD(STACK[0x5F8]) = v9;
  LODWORD(STACK[0x950]) = 919223702;
  return (*(v14 + 8 * ((a3 - 11512) ^ 0x2FD3)))();
}

uint64_t sub_2447F1A34(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v13 = *a1;
  v12 = a1 - 1;
  v14 = v8 + a7 + a6;
  v16 = v13 != v10 || v14 == v7;
  return (*(v11 + 8 * (v16 ^ v9)))(v12);
}

uint64_t sub_2447F1AEC@<X0>(char a1@<W8>)
{
  v8 = *(v7 + 8 * ((((v1 + 2635 + v5) & v6 ^ (v1 + 2635 + v3) & v4 ^ v2) * (a1 & 1)) ^ (v1 + 2635)));
  LODWORD(STACK[0x978]) = 1;
  return v8();
}

uint64_t sub_2447F1B84()
{
  v4 = *(v3 + 8 * (((((v2 - 1497474319) & 0x5941B76A) - 3939) * (v1 & 1)) ^ v2));
  LODWORD(STACK[0x908]) = 130989217;
  STACK[0x8F8] = STACK[0x478];
  LODWORD(STACK[0x5EC]) = v0;
  return v4();
}

uint64_t sub_2447F1BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0x978]) = 0;
  v7 = LODWORD(STACK[0x958]) < 0x8C0F166A;
  v8 = a6 - 2076160136 + ((v6 - 128445541) ^ 0xF858391B);
  v9 = v7 ^ (v8 < 0x8C0F166A);
  v10 = LODWORD(STACK[0x958]) > v8;
  if (!v9)
  {
    v7 = v10;
  }

  v11 = *(STACK[0x940] + 8 * ((230 * !v7) ^ (v6 + 9660)));
  LODWORD(STACK[0x400]) = a6;
  return v11();
}

uint64_t sub_2447F1CE8(int a1)
{
  LODWORD(STACK[0x960]) = v1;
  v4 = v1 == ((a1 - 8236) | 0xA0) + 130985976 && LODWORD(STACK[0x948]) == 130989216;
  return (*(v2 + 8 * ((v4 * (((a1 + 1777324997) & 0x96102FFF) - 12270)) ^ a1)))();
}

uint64_t sub_2447F1D70()
{
  v3 = ((v0 - 2894) ^ 0xA3FEEB72) + LODWORD(STACK[0x960]);
  v4 = ((v1 - 1543581735) < 0xABCD8C79) ^ (v3 < 0xABCD8C79);
  v5 = v1 - 1543581735 > v3;
  if (v4)
  {
    v6 = (v1 - 1543581735) < 0xABCD8C79;
  }

  else
  {
    v6 = v5;
  }

  return (*(v2 + 8 * ((v6 * (90 * (v0 ^ 0x2FDD) + 4933)) ^ v0)))();
}

uint64_t sub_2447F1E04()
{
  v3 = LODWORD(STACK[0x960]) + 612802877;
  v4 = v1 + 612790067 + 2562 * (v0 ^ 0x24AE);
  v5 = v3 < 0x2C555DDD;
  v6 = v3 > v4;
  v7 = v5 ^ (v4 < ((6 * (v0 ^ 0x26B7)) ^ 0x2C555175u));
  v8 = v6;
  if (v7)
  {
    v9 = v5;
  }

  else
  {
    v9 = v8;
  }

  return (*(v2 + 8 * ((21 * (v9 ^ 1)) ^ v0)))();
}

uint64_t sub_2447F1FCC(unsigned int a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v6 = a1 < 0xFE6C550A;
  v7 = a4 - 109332291 + ((a5 - 8875) | 0x300A);
  if (v6 == v7 < 0xFE6C550A)
  {
    v6 = a1 > v7;
  }

  return (*(v5 + 8 * ((v6 * (a5 ^ 0x2CDE)) ^ a5)))();
}

uint64_t sub_2447F215C()
{
  v3 = *(v2 + 8 * (((v1 - 27545 + ((v1 - 10732) | 0x2200)) * (v0 & 1)) ^ (v1 - 3920)));
  LODWORD(STACK[0x978]) = 1;
  return v3();
}

uint64_t sub_2447F21C0(uint64_t a1, uint64_t a2, int a3)
{
  *(STACK[0x548] - 0x1DC6E026F0860055) = v3;
  v5 = *(v4 + 8 * (a3 - 7314));
  LODWORD(STACK[0x404]) = 130989217;
  LODWORD(STACK[0x878]) = 919223699;
  LODWORD(STACK[0x444]) = -1093398102;
  LODWORD(STACK[0x46C]) = 826280030;
  LODWORD(STACK[0x978]) = 1;
  STACK[0x910] = STACK[0x570];
  STACK[0x868] = STACK[0x508];
  LODWORD(STACK[0x930]) = STACK[0x56C];
  LODWORD(STACK[0x948]) = STACK[0x608];
  return v5(LODWORD(STACK[0x650]), LODWORD(STACK[0x72C]));
}

uint64_t sub_2447F2290()
{
  v3 = *(v1 + 8 * ((((v2 ^ ((v0 & 0xFD) + 118)) & 1) * (((v0 & 0xDF8476FD) - 1055150845) & 0x3EE42EF7 ^ 0xFCB)) ^ v0 & 0xDF8476FD));
  LODWORD(STACK[0x858]) = STACK[0x66C];
  LODWORD(STACK[0x5EC]) = STACK[0x7D0];
  return v3();
}

uint64_t sub_2447F2334(int a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  LODWORD(STACK[0x7D4]) = 0;
  STACK[0x7D8] = 0;
  LODWORD(STACK[0x808]) = 0;
  LODWORD(STACK[0x950]) = (v5 - 6229) | 0x2200;
  v13 = *(v11 + 8 * ((27620 * ((((v5 - 85) ^ 0xC7) + LOBYTE(STACK[0x3AC])) < (v5 - 91))) ^ v5));
  LODWORD(STACK[0x958]) = 1;
  STACK[0x750] = STACK[0x548];
  STACK[0x800] = STACK[0x540];
  STACK[0x748] = STACK[0x570];
  STACK[0x740] = STACK[0x538];
  STACK[0x618] = v8;
  STACK[0x5B0] = a3;
  LODWORD(STACK[0x7F0]) = STACK[0x374];
  LODWORD(STACK[0x5F0]) = a5;
  LODWORD(STACK[0x858]) = v10;
  LODWORD(STACK[0x60C]) = a1;
  LODWORD(STACK[0x7AC]) = STACK[0x888];
  LODWORD(STACK[0x7EC]) = v9;
  LODWORD(STACK[0x730]) = STACK[0x56C];
  LODWORD(STACK[0x614]) = v7;
  LODWORD(STACK[0x758]) = STACK[0x898];
  LODWORD(STACK[0x7FC]) = STACK[0x600];
  LODWORD(STACK[0x5EC]) = v12;
  LODWORD(STACK[0x734]) = STACK[0x534];
  LODWORD(STACK[0x7E0]) = STACK[0x564];
  LODWORD(STACK[0x610]) = v6;
  LODWORD(STACK[0x7A8]) = STACK[0x890];
  LODWORD(STACK[0x7A4]) = STACK[0x8A0];
  LODWORD(STACK[0x7A0]) = STACK[0x8B0];
  LODWORD(STACK[0x79C]) = STACK[0x8A8];
  LODWORD(STACK[0x738]) = STACK[0x568];
  return v13();
}

uint64_t sub_2447F24C4()
{
  LODWORD(STACK[0x950]) = v0 ^ 0x39EA;
  v3 = *(v1 + 8 * ((15103 * (LODWORD(STACK[0x3AC]) == ((v0 ^ 0xEA) + 41))) ^ v0));
  LODWORD(STACK[0x3AC]) = 51;
  STACK[0x750] = STACK[0x548];
  STACK[0x618] = STACK[0x860];
  STACK[0x5B0] = STACK[0x698];
  v4 = STACK[0x608];
  LODWORD(STACK[0x5F0]) = STACK[0x650];
  LODWORD(STACK[0x858]) = STACK[0x66C];
  LODWORD(STACK[0x60C]) = STACK[0x628];
  LODWORD(STACK[0x7AC]) = STACK[0x888];
  LODWORD(STACK[0x7EC]) = STACK[0x55C];
  LODWORD(STACK[0x614]) = STACK[0x840];
  LODWORD(STACK[0x758]) = STACK[0x898];
  v5 = STACK[0x624];
  LODWORD(STACK[0x5EC]) = STACK[0x7D0];
  LODWORD(STACK[0x7E0]) = v2;
  LODWORD(STACK[0x610]) = STACK[0x84C];
  LODWORD(STACK[0x7A8]) = STACK[0x890];
  v6 = STACK[0x72C];
  LODWORD(STACK[0x7A4]) = STACK[0x8A0];
  LODWORD(STACK[0x7A0]) = STACK[0x8B0];
  LODWORD(STACK[0x79C]) = STACK[0x8A8];
  LODWORD(STACK[0x900]) = v4;
  LODWORD(STACK[0x55C]) = v2;
  LODWORD(STACK[0x64C]) = v5;
  LODWORD(STACK[0x644]) = v6;
  STACK[0x800] = STACK[0x540];
  STACK[0x748] = STACK[0x570];
  STACK[0x740] = STACK[0x538];
  LODWORD(STACK[0x7F0]) = STACK[0x5F4];
  LODWORD(STACK[0x730]) = STACK[0x56C];
  LODWORD(STACK[0x7FC]) = STACK[0x600];
  LODWORD(STACK[0x734]) = STACK[0x534];
  LODWORD(STACK[0x738]) = STACK[0x568];
  LODWORD(STACK[0x880]) = STACK[0x5F8];
  return v3();
}

uint64_t sub_2447F2640()
{
  v3 = *(v1 + 8 * (((LODWORD(STACK[0x3AC]) == ((v0 + 56) ^ 0x3F)) * (21 * (v0 ^ 0x9B0) - 12760)) ^ v0));
  LODWORD(STACK[0x2BC]) = 46;
  STACK[0x300] = STACK[0x2B0];
  STACK[0x338] = STACK[0x2E0];
  STACK[0x320] = STACK[0x318];
  STACK[0x618] = STACK[0x860];
  STACK[0x5B0] = STACK[0x698];
  LODWORD(STACK[0x900]) = STACK[0x608];
  LODWORD(STACK[0x880]) = STACK[0x5F8];
  LODWORD(STACK[0x5F0]) = STACK[0x650];
  LODWORD(STACK[0x858]) = STACK[0x66C];
  LODWORD(STACK[0x60C]) = STACK[0x628];
  LODWORD(STACK[0x344]) = STACK[0x2E8];
  LODWORD(STACK[0x55C]) = v2;
  LODWORD(STACK[0x614]) = STACK[0x840];
  LODWORD(STACK[0x64C]) = STACK[0x624];
  LODWORD(STACK[0x5EC]) = STACK[0x7D0];
  LODWORD(STACK[0x32C]) = v2;
  LODWORD(STACK[0x610]) = STACK[0x84C];
  LODWORD(STACK[0x644]) = STACK[0x72C];
  return v3();
}

uint64_t sub_2447F2728()
{
  v2 = *(STACK[0x940] + 8 * (v0 - 9770));
  LODWORD(STACK[0x2BC]) = 48;
  STACK[0x300] = STACK[0x2B0];
  STACK[0x338] = STACK[0x2E0];
  STACK[0x320] = STACK[0x2C8];
  STACK[0x618] = STACK[0x860];
  STACK[0x5B0] = STACK[0x698];
  LODWORD(STACK[0x900]) = STACK[0x608];
  LODWORD(STACK[0x880]) = STACK[0x5F8];
  LODWORD(STACK[0x5F0]) = STACK[0x650];
  LODWORD(STACK[0x858]) = STACK[0x66C];
  LODWORD(STACK[0x60C]) = STACK[0x628];
  LODWORD(STACK[0x344]) = STACK[0x2E8];
  LODWORD(STACK[0x55C]) = v1;
  LODWORD(STACK[0x614]) = STACK[0x840];
  v3 = STACK[0x2D4];
  LODWORD(STACK[0x64C]) = STACK[0x624];
  LODWORD(STACK[0x5EC]) = STACK[0x7D0];
  LODWORD(STACK[0x32C]) = v3;
  LODWORD(STACK[0x610]) = STACK[0x84C];
  LODWORD(STACK[0x644]) = STACK[0x72C];
  return v2();
}

uint64_t sub_2447F27E8@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x3AC]) = a1;
  v4 = v1 - 12810;
  if (v3 - 130989216 >= (v2 - 130989216))
  {
    v5 = v2 - 130989216;
  }

  else
  {
    v5 = v3 - 130989216;
  }

  v6 = ((v5 - v4) | (v4 - v5)) >= 0;
  return (*(STACK[0x940] + 8 * (v4 ^ 0x11D8 ^ (v6 | (32 * v6)))))();
}

uint64_t sub_2447F2978@<X0>(int a1@<W1>, int a2@<W2>, unsigned int a3@<W3>, unsigned int a4@<W4>, int a5@<W5>, uint64_t a6@<X8>)
{
  *(a6 + v10) = *(v7 + v10) ^ v9 ^ *(v6 + v10);
  v14 = a2 + a5 + v13;
  v15 = (a3 > v12) ^ (v14 < v11);
  v16 = a4 > v14;
  if (v15)
  {
    v16 = a3 > v12;
  }

  return (*(v8 + 8 * (!v16 | (32 * !v16) | a1)))();
}

uint64_t sub_2447F29E0(uint64_t a1, uint64_t a2, int a3)
{
  v7 = (a3 + 8061) | 0x208;
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x950]) = v7;
  v8 = *(v5 + 8 * ((((((a3 + 18421) ^ (v3 == v4)) & 1) == 0) * (v7 ^ 0x321D)) ^ a3));
  LODWORD(STACK[0x888]) = STACK[0x638];
  LODWORD(STACK[0x898]) = STACK[0x630];
  LODWORD(STACK[0x890]) = STACK[0x640];
  LODWORD(STACK[0x8A0]) = v6;
  LODWORD(STACK[0x8B0]) = STACK[0x63C];
  LODWORD(STACK[0x8A8]) = STACK[0x634];
  return v8();
}

uint64_t sub_2447F2AAC(int a1, uint64_t a2)
{
  LODWORD(STACK[0x950]) = v3 ^ 0x113D;
  v4 = v2 - 1751708140 < (a1 + 934972993);
  if ((v2 - 1751708140) < 0x9F8A4C25 != (a1 + 934972993) < 0x9F8A4C25)
  {
    v4 = (a1 + 934972993) < 0x9F8A4C25;
  }

  if (v4)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a2 + 8 * ((97 * ((v5 | v4) != ((v3 ^ 0x3D) - 10))) ^ v3));
  LODWORD(STACK[0x888]) = STACK[0x638];
  LODWORD(STACK[0x898]) = STACK[0x630];
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x890]) = STACK[0x640];
  LODWORD(STACK[0x8A0]) = STACK[0x62C];
  LODWORD(STACK[0x8B0]) = STACK[0x63C];
  LODWORD(STACK[0x8A8]) = STACK[0x634];
  return v6();
}

uint64_t sub_2447F2B70@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 < 0x9F8A4C25;
  *(a1 - 0x1DC6E026F0860055) = *(v4 - 0x1DC6E026F0860055);
  LODWORD(STACK[0x950]) = (v1 - 1363198994) & 0x5140F61B;
  if (v5 == (v3 - 1751708139) < 0x9F8A4C25)
  {
    v5 = v3 - 1751708139 < v2;
  }

  if (v5)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(STACK[0x940] + 8 * ((97 * (((((v6 | v5) - v1) | (v1 - (v6 | v5))) >> 7) & 1)) ^ (v1 + 9015)));
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x888]) = STACK[0x638];
  LODWORD(STACK[0x898]) = STACK[0x630];
  LODWORD(STACK[0x890]) = STACK[0x640];
  LODWORD(STACK[0x8A0]) = STACK[0x62C];
  LODWORD(STACK[0x8B0]) = STACK[0x63C];
  LODWORD(STACK[0x8A8]) = STACK[0x634];
  return v7();
}

uint64_t sub_2447F2C7C(int a1, uint64_t a2)
{
  v4 = 21 * (v3 ^ 0x12E7);
  LODWORD(STACK[0x950]) = v4;
  v5 = a1 - 115809572 < (v4 ^ 0x60E892CAu);
  v6 = a1 - 115809572 > (v2 - 121555531);
  if ((v2 - 121555531) < 0x60E8A0C0 != v5)
  {
    v6 = v5;
  }

  v7 = *(a2 + 8 * ((v6 * (((v3 - 3813) | 0x410) ^ 0x2963)) ^ v3));
  LODWORD(STACK[0x888]) = STACK[0x638];
  LODWORD(STACK[0x898]) = STACK[0x630];
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x890]) = STACK[0x640];
  LODWORD(STACK[0x8A0]) = STACK[0x62C];
  LODWORD(STACK[0x8B0]) = STACK[0x63C];
  LODWORD(STACK[0x8A8]) = STACK[0x634];
  return v7();
}

uint64_t sub_2447F2D48@<X0>(unsigned int a1@<W2>, uint64_t a2@<X8>)
{
  v7 = v5 < v6;
  v8 = v4 + 11354;
  *(a2 - 0x1DC6E026F0860055) = *(v2 - 0x1DC6E026F0860055);
  if (v7 == v3 - 121555530 < a1)
  {
    v7 = v5 > v3 - 121555530;
  }

  LODWORD(STACK[0x950]) = v8;
  v9 = *(STACK[0x940] + 8 * ((v7 * (v8 ^ 0x2771)) ^ v4));
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x888]) = STACK[0x638];
  LODWORD(STACK[0x898]) = STACK[0x630];
  LODWORD(STACK[0x890]) = STACK[0x640];
  LODWORD(STACK[0x8A0]) = STACK[0x62C];
  LODWORD(STACK[0x8B0]) = STACK[0x63C];
  LODWORD(STACK[0x8A8]) = STACK[0x634];
  return v9();
}

uint64_t sub_2447F2E60()
{
  v5 = *(v4 + 8 * ((((5002 * (v0 ^ 0x31D1)) ^ 0x272E) * (v2 == v1 + 3)) ^ v0));
  LODWORD(STACK[0x5A8]) = v1 + 2;
  STACK[0x618] = STACK[0x860];
  STACK[0x5A0] = STACK[0x910];
  STACK[0x598] = STACK[0x868];
  STACK[0x5B0] = STACK[0x698];
  LODWORD(STACK[0x900]) = STACK[0x608];
  LODWORD(STACK[0x880]) = STACK[0x5F8];
  LODWORD(STACK[0x5F0]) = STACK[0x650];
  LODWORD(STACK[0x858]) = STACK[0x66C];
  LODWORD(STACK[0x60C]) = STACK[0x628];
  LODWORD(STACK[0x5AC]) = STACK[0x960];
  LODWORD(STACK[0x614]) = STACK[0x840];
  LODWORD(STACK[0x64C]) = STACK[0x624];
  LODWORD(STACK[0x5EC]) = STACK[0x7D0];
  LODWORD(STACK[0x610]) = STACK[0x84C];
  LODWORD(STACK[0x594]) = v3;
  LODWORD(STACK[0x644]) = STACK[0x72C];
  return v5();
}

uint64_t sub_2447F2F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, int a5@<W8>)
{
  v8 = v6 ^ 0x21F2;
  LODWORD(STACK[0x950]) = v8 ^ 0x34EC;
  v9 = *(STACK[0x940] + 8 * (((21 * (v8 ^ 0x484) - 9828) * a5) ^ v8));
  STACK[0x750] = STACK[0x548];
  STACK[0x800] = STACK[0x540];
  STACK[0x748] = STACK[0x570];
  STACK[0x740] = STACK[0x538];
  STACK[0x618] = STACK[0x860];
  STACK[0x5B0] = STACK[0x698];
  LODWORD(STACK[0x7F0]) = STACK[0x5F4];
  v10 = LODWORD(STACK[0x608]);
  LODWORD(STACK[0x5F0]) = STACK[0x650];
  LODWORD(STACK[0x858]) = STACK[0x66C];
  LODWORD(STACK[0x60C]) = STACK[0x628];
  LODWORD(STACK[0x7AC]) = STACK[0x638];
  LODWORD(STACK[0x7EC]) = STACK[0x55C];
  LODWORD(STACK[0x930]) = v7;
  LODWORD(STACK[0x878]) = v5;
  v11 = LODWORD(STACK[0x524]);
  v12 = LODWORD(STACK[0x648]);
  LODWORD(STACK[0x730]) = STACK[0x56C];
  LODWORD(STACK[0x614]) = STACK[0x840];
  LODWORD(STACK[0x758]) = STACK[0x630];
  LODWORD(STACK[0x7FC]) = STACK[0x600];
  LODWORD(STACK[0x5EC]) = STACK[0x7D0];
  LODWORD(STACK[0x734]) = STACK[0x534];
  LODWORD(STACK[0x7E0]) = STACK[0x564];
  LODWORD(STACK[0x610]) = STACK[0x84C];
  LODWORD(STACK[0x7A8]) = STACK[0x640];
  LODWORD(STACK[0x7A4]) = STACK[0x62C];
  LODWORD(STACK[0x7A0]) = STACK[0x63C];
  LODWORD(STACK[0x79C]) = STACK[0x634];
  LODWORD(STACK[0x738]) = STACK[0x568];
  return v9(a1, a2, v10, a3, v11, a4, v12);
}

uint64_t sub_2447F305C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = STACK[0x2F0]-- != 0;
  STACK[0x298] = v8 + STACK[0x298] - 1;
  v9 = *(STACK[0x940] + 8 * (v6 - 1300));
  LODWORD(STACK[0x950]) = v6;
  STACK[0x750] = STACK[0x548];
  STACK[0x800] = STACK[0x540];
  STACK[0x748] = STACK[0x570];
  STACK[0x740] = STACK[0x538];
  STACK[0x618] = STACK[0x860];
  STACK[0x5B0] = STACK[0x698];
  LODWORD(STACK[0x7F0]) = STACK[0x5F4];
  v10 = LODWORD(STACK[0x608]);
  LODWORD(STACK[0x5F0]) = STACK[0x650];
  LODWORD(STACK[0x858]) = STACK[0x66C];
  LODWORD(STACK[0x60C]) = STACK[0x628];
  LODWORD(STACK[0x7AC]) = STACK[0x888];
  LODWORD(STACK[0x7EC]) = STACK[0x55C];
  LODWORD(STACK[0x930]) = v7;
  LODWORD(STACK[0x730]) = STACK[0x56C];
  LODWORD(STACK[0x614]) = STACK[0x840];
  LODWORD(STACK[0x758]) = STACK[0x898];
  LODWORD(STACK[0x7FC]) = STACK[0x600];
  LODWORD(STACK[0x5EC]) = STACK[0x7D0];
  LODWORD(STACK[0x734]) = STACK[0x534];
  LODWORD(STACK[0x7E0]) = STACK[0x564];
  LODWORD(STACK[0x610]) = STACK[0x84C];
  LODWORD(STACK[0x7A8]) = STACK[0x890];
  LODWORD(STACK[0x7A4]) = STACK[0x8A0];
  LODWORD(STACK[0x7A0]) = STACK[0x8B0];
  LODWORD(STACK[0x79C]) = STACK[0x8A8];
  LODWORD(STACK[0x738]) = STACK[0x568];
  LODWORD(STACK[0x878]) = 919223701;
  return v9(a1, a2, v10, a4, LODWORD(STACK[0x5FC]), a6, LODWORD(STACK[0x524]));
}

uint64_t sub_2447F3198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0x900]) = 0;
  LODWORD(STACK[0x908]) = 0;
  LODWORD(STACK[0x8E0]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  LODWORD(STACK[0x8C0]) = 0;
  LODWORD(STACK[0x8D8]) = 0;
  v9 = (v6 + 128442049) | 0x2000;
  v10 = STACK[0x560];
  STACK[0x310] = *(STACK[0x308] + 8 * (LODWORD(STACK[0x560]) - 130989216) + v8);
  LODWORD(STACK[0x950]) = v9;
  v12 = (v9 ^ 0xBED423A0) - (((a6 - v10) << 7) & 0x7DA82300) + ((a6 - v10) << 6);
  v13 = *(v7 + 8 * ((2016 * (v6 > 0x4523F119)) ^ (v6 + 128438423)));
  STACK[0x618] = STACK[0x860];
  v14 = STACK[0x3C8];
  STACK[0x5B0] = STACK[0x698];
  LODWORD(STACK[0x5F0]) = STACK[0x650];
  LODWORD(STACK[0x858]) = STACK[0x66C];
  LODWORD(STACK[0x60C]) = STACK[0x628];
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x614]) = STACK[0x840];
  LODWORD(STACK[0x400]) = a6;
  LODWORD(STACK[0x64C]) = STACK[0x624];
  LODWORD(STACK[0x5EC]) = STACK[0x7D0];
  LODWORD(STACK[0x558]) = v12;
  LODWORD(STACK[0x610]) = STACK[0x84C];
  LODWORD(STACK[0x644]) = STACK[0x72C];
  return v13(a1, a2, a3, a4, a5, v14);
}

uint64_t sub_2447F32AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, unsigned __int8 a5@<W8>)
{
  v7 = *(v6 + 8 * ((2036 * ((a5 ^ ((105 * (v5 ^ 8)) ^ ((v5 ^ 0x82) - 1))) & 1)) ^ v5 ^ 0x7482));
  LODWORD(STACK[0x950]) = (v5 ^ 0x7482) - 4582;
  STACK[0x750] = STACK[0x548];
  STACK[0x800] = STACK[0x540];
  STACK[0x748] = STACK[0x570];
  STACK[0x740] = STACK[0x538];
  STACK[0x618] = STACK[0x860];
  STACK[0x5B0] = STACK[0x698];
  LODWORD(STACK[0x7F0]) = STACK[0x5F4];
  v8 = LODWORD(STACK[0x608]);
  LODWORD(STACK[0x5F0]) = STACK[0x650];
  LODWORD(STACK[0x858]) = STACK[0x66C];
  LODWORD(STACK[0x60C]) = STACK[0x628];
  LODWORD(STACK[0x7AC]) = STACK[0x888];
  LODWORD(STACK[0x7EC]) = STACK[0x55C];
  LODWORD(STACK[0x930]) = STACK[0x960];
  v9 = LODWORD(STACK[0x4AC]);
  v10 = LODWORD(STACK[0x604]);
  LODWORD(STACK[0x730]) = STACK[0x56C];
  LODWORD(STACK[0x614]) = STACK[0x840];
  LODWORD(STACK[0x758]) = STACK[0x898];
  LODWORD(STACK[0x7FC]) = STACK[0x600];
  LODWORD(STACK[0x5EC]) = STACK[0x7D0];
  LODWORD(STACK[0x734]) = STACK[0x534];
  LODWORD(STACK[0x7E0]) = STACK[0x564];
  LODWORD(STACK[0x610]) = STACK[0x84C];
  LODWORD(STACK[0x7A8]) = STACK[0x890];
  LODWORD(STACK[0x7A4]) = STACK[0x8A0];
  LODWORD(STACK[0x7A0]) = STACK[0x8B0];
  LODWORD(STACK[0x79C]) = STACK[0x8A8];
  LODWORD(STACK[0x738]) = STACK[0x568];
  return v7(a1, a2, v8, a3, v9, a4, v10);
}

uint64_t sub_2447F33F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(STACK[0x940] + 8 * (v6 - 9443));
  LODWORD(STACK[0x950]) = v6;
  STACK[0x750] = STACK[0x548];
  STACK[0x800] = STACK[0x540];
  STACK[0x748] = STACK[0x570];
  STACK[0x740] = STACK[0x538];
  STACK[0x618] = STACK[0x860];
  STACK[0x5B0] = STACK[0x698];
  LODWORD(STACK[0x7F0]) = STACK[0x5F4];
  v9 = LODWORD(STACK[0x608]);
  LODWORD(STACK[0x5F0]) = STACK[0x650];
  LODWORD(STACK[0x858]) = STACK[0x66C];
  LODWORD(STACK[0x60C]) = STACK[0x628];
  LODWORD(STACK[0x7AC]) = STACK[0x888];
  LODWORD(STACK[0x7EC]) = STACK[0x55C];
  LODWORD(STACK[0x930]) = v7;
  LODWORD(STACK[0x730]) = STACK[0x56C];
  LODWORD(STACK[0x614]) = STACK[0x840];
  LODWORD(STACK[0x758]) = STACK[0x898];
  LODWORD(STACK[0x7FC]) = STACK[0x600];
  LODWORD(STACK[0x5EC]) = STACK[0x7D0];
  LODWORD(STACK[0x734]) = STACK[0x534];
  LODWORD(STACK[0x7E0]) = STACK[0x564];
  LODWORD(STACK[0x610]) = STACK[0x84C];
  LODWORD(STACK[0x7A8]) = STACK[0x890];
  LODWORD(STACK[0x7A4]) = STACK[0x8A0];
  LODWORD(STACK[0x7A0]) = STACK[0x8B0];
  LODWORD(STACK[0x79C]) = STACK[0x8A8];
  LODWORD(STACK[0x738]) = STACK[0x568];
  return v8(a1, a2, v9, a4, LODWORD(STACK[0x604]), a6, LODWORD(STACK[0x4AC]));
}

uint64_t sub_2447F3508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, int a5@<W8>)
{
  LODWORD(STACK[0x950]) = v5 ^ 0x34EC;
  v7 = *(v6 + 8 * (((v5 ^ 0x220E) * a5) ^ v5));
  LODWORD(STACK[0x878]) = 919223702;
  STACK[0x750] = STACK[0x548];
  STACK[0x800] = STACK[0x540];
  STACK[0x748] = STACK[0x570];
  STACK[0x740] = STACK[0x538];
  STACK[0x618] = STACK[0x860];
  STACK[0x5B0] = STACK[0x698];
  LODWORD(STACK[0x7F0]) = STACK[0x5F4];
  v8 = LODWORD(STACK[0x608]);
  LODWORD(STACK[0x5F0]) = STACK[0x650];
  LODWORD(STACK[0x858]) = STACK[0x66C];
  LODWORD(STACK[0x60C]) = STACK[0x628];
  LODWORD(STACK[0x7AC]) = STACK[0x638];
  LODWORD(STACK[0x7EC]) = STACK[0x55C];
  LODWORD(STACK[0x930]) = STACK[0x960];
  v9 = LODWORD(STACK[0x524]);
  v10 = LODWORD(STACK[0x648]);
  LODWORD(STACK[0x730]) = STACK[0x56C];
  LODWORD(STACK[0x614]) = STACK[0x840];
  LODWORD(STACK[0x758]) = STACK[0x630];
  LODWORD(STACK[0x7FC]) = STACK[0x600];
  LODWORD(STACK[0x5EC]) = STACK[0x7D0];
  LODWORD(STACK[0x734]) = STACK[0x534];
  LODWORD(STACK[0x7E0]) = STACK[0x564];
  LODWORD(STACK[0x610]) = STACK[0x84C];
  LODWORD(STACK[0x7A8]) = STACK[0x640];
  LODWORD(STACK[0x7A4]) = STACK[0x62C];
  LODWORD(STACK[0x7A0]) = STACK[0x63C];
  LODWORD(STACK[0x79C]) = STACK[0x634];
  LODWORD(STACK[0x738]) = STACK[0x568];
  return v7(a1, a2, v8, a3, v9, a4, v10);
}

uint64_t sub_2447F3638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = LODWORD(STACK[0x950]) - 672;
  v8 = STACK[0x2F0]-- != 0;
  v9 = *(STACK[0x940] + 8 * v7);
  STACK[0x298] = v8 + STACK[0x298] - 1;
  STACK[0x750] = STACK[0x548];
  STACK[0x800] = STACK[0x540];
  STACK[0x748] = STACK[0x570];
  STACK[0x740] = STACK[0x538];
  STACK[0x618] = STACK[0x860];
  STACK[0x5B0] = STACK[0x698];
  LODWORD(STACK[0x7F0]) = STACK[0x5F4];
  v10 = LODWORD(STACK[0x608]);
  LODWORD(STACK[0x5F0]) = STACK[0x650];
  LODWORD(STACK[0x858]) = STACK[0x66C];
  LODWORD(STACK[0x60C]) = STACK[0x628];
  LODWORD(STACK[0x7AC]) = STACK[0x888];
  LODWORD(STACK[0x7EC]) = STACK[0x55C];
  LODWORD(STACK[0x930]) = v6;
  LODWORD(STACK[0x730]) = STACK[0x56C];
  LODWORD(STACK[0x614]) = STACK[0x840];
  LODWORD(STACK[0x758]) = STACK[0x898];
  LODWORD(STACK[0x7FC]) = STACK[0x600];
  LODWORD(STACK[0x5EC]) = STACK[0x7D0];
  LODWORD(STACK[0x734]) = STACK[0x534];
  LODWORD(STACK[0x7E0]) = STACK[0x564];
  LODWORD(STACK[0x610]) = STACK[0x84C];
  LODWORD(STACK[0x7A8]) = STACK[0x890];
  LODWORD(STACK[0x7A4]) = STACK[0x8A0];
  LODWORD(STACK[0x7A0]) = STACK[0x8B0];
  LODWORD(STACK[0x79C]) = STACK[0x8A8];
  LODWORD(STACK[0x738]) = STACK[0x568];
  return v9(a1, a2, v10, a4, LODWORD(STACK[0x5FC]), a6, LODWORD(STACK[0x524]));
}

uint64_t sub_2447F3764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x8240] = v8 - 1;
  LODWORD(STACK[0x950]) = v7 - 4067;
  v10 = *(v9 + 8 * (v7 - 13510));
  STACK[0x750] = STACK[0x548];
  STACK[0x800] = STACK[0x540];
  STACK[0x748] = STACK[0x570];
  STACK[0x740] = STACK[0x538];
  STACK[0x618] = STACK[0x860];
  STACK[0x5B0] = STACK[0x698];
  LODWORD(STACK[0x7F0]) = STACK[0x5F4];
  v11 = LODWORD(STACK[0x608]);
  LODWORD(STACK[0x5F0]) = STACK[0x650];
  LODWORD(STACK[0x858]) = STACK[0x66C];
  LODWORD(STACK[0x60C]) = STACK[0x628];
  LODWORD(STACK[0x7AC]) = STACK[0x888];
  LODWORD(STACK[0x7EC]) = STACK[0x55C];
  LODWORD(STACK[0x930]) = v6;
  LODWORD(STACK[0x730]) = STACK[0x56C];
  LODWORD(STACK[0x614]) = STACK[0x840];
  LODWORD(STACK[0x758]) = STACK[0x898];
  LODWORD(STACK[0x7FC]) = STACK[0x600];
  LODWORD(STACK[0x5EC]) = STACK[0x7D0];
  LODWORD(STACK[0x734]) = STACK[0x534];
  LODWORD(STACK[0x7E0]) = STACK[0x564];
  LODWORD(STACK[0x610]) = STACK[0x84C];
  LODWORD(STACK[0x7A8]) = STACK[0x890];
  LODWORD(STACK[0x7A4]) = STACK[0x8A0];
  LODWORD(STACK[0x7A0]) = STACK[0x8B0];
  LODWORD(STACK[0x79C]) = STACK[0x8A8];
  LODWORD(STACK[0x738]) = STACK[0x568];
  LODWORD(STACK[0x878]) = 919223703;
  return v10(a1, a2, v11, a4, 130989217, a6, LODWORD(STACK[0x57C]));
}

uint64_t sub_2447F3920(int a1, int a2, unint64_t a3, int a4, int a5)
{
  LODWORD(STACK[0x950]) = v5 + 12810;
  v13 = *(v12 + 8 * (((((v5 + 486367211) & 0xE302EFDF) - 2363) * v6) ^ (v5 + 1766)));
  STACK[0x750] = STACK[0x548];
  STACK[0x800] = STACK[0x540];
  STACK[0x748] = STACK[0x570];
  STACK[0x740] = STACK[0x538];
  STACK[0x618] = v9;
  STACK[0x5B0] = a3;
  LODWORD(STACK[0x7F0]) = STACK[0x5F4];
  LODWORD(STACK[0x5F0]) = a1;
  LODWORD(STACK[0x858]) = a4;
  LODWORD(STACK[0x7AC]) = STACK[0x888];
  LODWORD(STACK[0x7EC]) = STACK[0x55C];
  LODWORD(STACK[0x730]) = STACK[0x56C];
  LODWORD(STACK[0x614]) = v8;
  LODWORD(STACK[0x758]) = STACK[0x898];
  LODWORD(STACK[0x5E8]) = v10;
  LODWORD(STACK[0x7FC]) = STACK[0x600];
  LODWORD(STACK[0x5EC]) = a5;
  LODWORD(STACK[0x734]) = STACK[0x534];
  LODWORD(STACK[0x7E0]) = STACK[0x564];
  LODWORD(STACK[0x610]) = v7;
  LODWORD(STACK[0x7A8]) = STACK[0x890];
  LODWORD(STACK[0x7A4]) = STACK[0x8A0];
  LODWORD(STACK[0x7A0]) = STACK[0x8B0];
  LODWORD(STACK[0x79C]) = STACK[0x8A8];
  LODWORD(STACK[0x738]) = STACK[0x568];
  LODWORD(STACK[0x720]) = a2;
  LODWORD(STACK[0x60C]) = a2;
  v14 = STACK[0x960];
  LODWORD(STACK[0x5AC]) = STACK[0x960];
  LODWORD(STACK[0x930]) = v14;
  STACK[0x5A0] = STACK[0x910];
  STACK[0x598] = STACK[0x868];
  LODWORD(STACK[0x5A8]) = 919223698;
  LODWORD(STACK[0x5E4]) = STACK[0x828];
  LODWORD(STACK[0x554]) = STACK[0x830];
  LODWORD(STACK[0x5C4]) = STACK[0x2A0];
  LODWORD(STACK[0x658]) = STACK[0x404];
  LODWORD(STACK[0x550]) = STACK[0x850];
  LODWORD(STACK[0x594]) = v11;
  LODWORD(STACK[0x878]) = 919223698;
  return v13();
}

uint64_t sub_2447F3A90@<X0>(int a1@<W0>, int a2@<W1>, unint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, int a6@<W8>)
{
  LODWORD(STACK[0x7DC]) = 0;
  v11 = ((v6 | 0x648) + 11196) | 2;
  LODWORD(STACK[0x950]) = v11;
  v12 = *(v10 + 8 * (((v11 + (((v6 | 0x648) + 8311) ^ 0xFFFFFDAC)) * a6) ^ (v6 | 0x648)));
  LODWORD(STACK[0x958]) = 1;
  STACK[0x750] = STACK[0x548];
  STACK[0x800] = STACK[0x540];
  STACK[0x748] = STACK[0x570];
  STACK[0x740] = STACK[0x538];
  STACK[0x618] = v9;
  STACK[0x5B0] = a3;
  LODWORD(STACK[0x7F0]) = STACK[0x5F4];
  LODWORD(STACK[0x5F0]) = a1;
  LODWORD(STACK[0x858]) = a4;
  LODWORD(STACK[0x60C]) = a2;
  LODWORD(STACK[0x7AC]) = STACK[0x888];
  LODWORD(STACK[0x7EC]) = STACK[0x55C];
  LODWORD(STACK[0x930]) = STACK[0x960];
  LODWORD(STACK[0x730]) = STACK[0x56C];
  LODWORD(STACK[0x614]) = v8;
  LODWORD(STACK[0x758]) = STACK[0x898];
  LODWORD(STACK[0x7FC]) = STACK[0x600];
  LODWORD(STACK[0x5EC]) = a5;
  LODWORD(STACK[0x734]) = STACK[0x534];
  LODWORD(STACK[0x7E0]) = STACK[0x564];
  LODWORD(STACK[0x610]) = v7;
  LODWORD(STACK[0x7A8]) = STACK[0x890];
  LODWORD(STACK[0x7A4]) = STACK[0x8A0];
  LODWORD(STACK[0x7A0]) = STACK[0x8B0];
  LODWORD(STACK[0x79C]) = STACK[0x8A8];
  LODWORD(STACK[0x738]) = STACK[0x568];
  LODWORD(STACK[0x7D4]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  LODWORD(STACK[0x808]) = 1;
  return v12();
}

uint64_t sub_2447F3BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = *(STACK[0x940] + 8 * ((471 * (((134 * ((v6 - 488527943) & 0x1D1E37CF ^ 0x653u) - 4153) & STACK[0x9340]) == 0)) ^ v6));
  STACK[0x750] = STACK[0x548];
  v8 = STACK[0x540];
  STACK[0x748] = STACK[0x570];
  STACK[0x740] = STACK[0x538];
  STACK[0x618] = STACK[0x860];
  STACK[0x5B0] = STACK[0x698];
  LODWORD(STACK[0x7F0]) = STACK[0x5F4];
  LODWORD(STACK[0x5F0]) = STACK[0x650];
  LODWORD(STACK[0x858]) = STACK[0x66C];
  LODWORD(STACK[0x60C]) = STACK[0x628];
  LODWORD(STACK[0x7AC]) = STACK[0x888];
  LODWORD(STACK[0x7EC]) = STACK[0x55C];
  LODWORD(STACK[0x930]) = a6;
  LODWORD(STACK[0x730]) = STACK[0x56C];
  LODWORD(STACK[0x614]) = STACK[0x840];
  LODWORD(STACK[0x758]) = STACK[0x898];
  LODWORD(STACK[0x7FC]) = STACK[0x600];
  LODWORD(STACK[0x5EC]) = STACK[0x7D0];
  LODWORD(STACK[0x734]) = STACK[0x534];
  LODWORD(STACK[0x7E0]) = STACK[0x564];
  LODWORD(STACK[0x7A8]) = STACK[0x890];
  LODWORD(STACK[0x7A4]) = STACK[0x8A0];
  LODWORD(STACK[0x7A0]) = STACK[0x8B0];
  LODWORD(STACK[0x79C]) = STACK[0x8A8];
  LODWORD(STACK[0x610]) = STACK[0x84C];
  LODWORD(STACK[0x738]) = STACK[0x568];
  return v7(v8);
}

uint64_t sub_2447F3D08(uint64_t a1, uint64_t a2)
{
  v4 = *(STACK[0x940] + 8 * v2);
  STACK[0x750] = STACK[0x548];
  v5 = STACK[0x540];
  STACK[0x748] = STACK[0x570];
  STACK[0x740] = STACK[0x538];
  STACK[0x910] = STACK[0x5A0];
  STACK[0x868] = STACK[0x598];
  LODWORD(STACK[0x7F0]) = STACK[0x5F4];
  v6 = LODWORD(STACK[0x900]);
  LODWORD(STACK[0x5F8]) = STACK[0x880];
  LODWORD(STACK[0x7AC]) = STACK[0x888];
  LODWORD(STACK[0x7EC]) = STACK[0x55C];
  LODWORD(STACK[0x930]) = STACK[0x5AC];
  LODWORD(STACK[0x878]) = STACK[0x5A8];
  LODWORD(STACK[0x730]) = STACK[0x56C];
  LODWORD(STACK[0x758]) = STACK[0x898];
  LODWORD(STACK[0x7FC]) = STACK[0x600];
  LODWORD(STACK[0x734]) = STACK[0x534];
  LODWORD(STACK[0x604]) = v3;
  LODWORD(STACK[0x7E0]) = STACK[0x564];
  LODWORD(STACK[0x7A8]) = STACK[0x890];
  LODWORD(STACK[0x948]) = STACK[0x594];
  LODWORD(STACK[0x7A4]) = STACK[0x8A0];
  LODWORD(STACK[0x7A0]) = STACK[0x8B0];
  LODWORD(STACK[0x79C]) = STACK[0x8A8];
  LODWORD(STACK[0x738]) = STACK[0x568];
  return v4(v5, a2, v6);
}

uint64_t sub_2447F3E08@<X0>(unint64_t a1@<X0>, int a2@<W8>)
{
  LODWORD(STACK[0x558]) = v3;
  LODWORD(STACK[0x7DC]) = 0;
  v5 = (a2 + 7094) | 0x1008;
  LODWORD(STACK[0x950]) = v5;
  v6 = *(v4 + 8 * (((v2 & 1) * (((a2 + 228887603) & 0xF25B7DBA ^ 0xFFFFDEB1) + v5)) ^ a2));
  LODWORD(STACK[0x958]) = 1;
  STACK[0x800] = a1;
  LODWORD(STACK[0x7D4]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  LODWORD(STACK[0x808]) = 1;
  return v6();
}

uint64_t sub_2447F3E98()
{
  LODWORD(STACK[0x958]) = 0;
  LODWORD(STACK[0x908]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  LODWORD(STACK[0x8E0]) = 0;
  v3 = (v0 - 3640) | 0x3008;
  v4 = (((v0 + 8656) - 12809) & STACK[0x9C0]) == 0;
  LODWORD(STACK[0x950]) = v3;
  v5 = *(STACK[0x940] + 8 * ((v4 * (v3 + 3398)) ^ v0));
  v6 = STACK[0x5F8];
  STACK[0x548] = STACK[0x750];
  STACK[0x540] = STACK[0x800];
  STACK[0x570] = STACK[0x748];
  STACK[0x538] = STACK[0x740];
  STACK[0x5A0] = STACK[0x910];
  STACK[0x598] = STACK[0x868];
  LODWORD(STACK[0x790]) = STACK[0x648];
  LODWORD(STACK[0x5F4]) = STACK[0x7F0];
  LODWORD(STACK[0x880]) = v6;
  LODWORD(STACK[0x888]) = STACK[0x7AC];
  LODWORD(STACK[0x55C]) = STACK[0x7EC];
  LODWORD(STACK[0x5AC]) = STACK[0x930];
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x960]) = 1;
  LODWORD(STACK[0x860]) = 1;
  LODWORD(STACK[0x5A8]) = STACK[0x878];
  LODWORD(STACK[0x56C]) = STACK[0x730];
  LODWORD(STACK[0x898]) = STACK[0x758];
  LODWORD(STACK[0x64C]) = v1;
  LODWORD(STACK[0x600]) = STACK[0x7FC];
  LODWORD(STACK[0x534]) = STACK[0x734];
  LODWORD(STACK[0x564]) = STACK[0x7E0];
  LODWORD(STACK[0x890]) = STACK[0x7A8];
  LODWORD(STACK[0x594]) = STACK[0x948];
  LODWORD(STACK[0x644]) = v2;
  LODWORD(STACK[0x8A0]) = STACK[0x7A4];
  LODWORD(STACK[0x8B0]) = STACK[0x7A0];
  LODWORD(STACK[0x8A8]) = STACK[0x79C];
  LODWORD(STACK[0x568]) = STACK[0x738];
  return v5();
}

uint64_t sub_2447F4018(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0x840]) = a2;
  LODWORD(STACK[0x84C]) = v8;
  LODWORD(STACK[0x950]) = v6;
  return (*(STACK[0x940] + 8 * (v7 - 3873)))(a1, 1034161841, 6613, 4294950373, 1335, a6, STACK[0x3C8]);
}

uint64_t sub_2447F4078(uint64_t a1, int a2)
{
  LODWORD(STACK[0x648]) = v4;
  v8 = ((v2 >> 5) & 0x3FFD7FE ^ 0x1F6808C) + (((v3 ^ 0x222F) + 2131003284) ^ (v2 >> 6)) - 948773038;
  v9 = (v7 + a2 < v5) ^ (v8 < v5);
  v10 = v8 < v7 + a2;
  if (v9)
  {
    v10 = v7 + a2 < v5;
  }

  return (*(v6 + 8 * ((11323 * v10) ^ v3)))();
}

uint64_t sub_2447F4260(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = v8 < v14;
  v19 = ((*(a4 + v13) ^ v12) << v10) | ((*(a4 + a6) ^ v12) >> v9);
  *(a8 + a6) = v19 + v12 - (v15 & (2 * v19));
  if (v18 == a3 + v17 < v14)
  {
    v18 = a3 + v17 < v8;
  }

  return (*(v16 + 8 * ((v18 * a2) ^ v11)))();
}

uint64_t sub_2447F42DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = ((((v10 + 2554) | 0x1421u) - 0x2C7863B28CC48190) ^ *(v8 + a6)) >> v9;
  *(a8 + a6) = v14 + v11 - (v12 & (2 * v14));
  return (*(v13 + 8 * v10))(a1, 1034161841, 6613, 4294950373, 1335);
}

uint64_t sub_2447F4400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = v9 < v10;
  *(a8 + a6) = *(v8 + a6);
  v19 = v15 + v12 + 3083;
  v20 = v18 ^ (v19 < v10);
  v21 = v19 < v9;
  if (!v20)
  {
    v18 = v21;
  }

  return (*(v16 + 8 * ((v18 * (((v11 + v14) & v13) + v17)) ^ v11)))();
}

uint64_t sub_2447F44F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0x958]) = 0;
  LODWORD(STACK[0x960]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  LODWORD(STACK[0x8E0]) = 0;
  LODWORD(STACK[0x950]) = 0;
  v9 = *(v8 + 8 * (((((v7 ^ 0x72FF) - 7113) ^ a3) * (STACK[0x908] & 1)) ^ v7));
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x908]) = 1;
  LODWORD(STACK[0x860]) = 1;
  return v9(a7);
}

uint64_t sub_2447F45F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0x978]) = 0;
  LODWORD(STACK[0x7C8]) = 0;
  LODWORD(STACK[0x71C]) = 0;
  LODWORD(STACK[0x70C]) = 0;
  LODWORD(STACK[0x6F0]) = 0;
  LODWORD(STACK[0x6D8]) = 0;
  STACK[0x6C0] = 0;
  LODWORD(STACK[0x6FC]) = 0;
  STACK[0x6E8] = 0;
  LODWORD(STACK[0x710]) = 0;
  STACK[0x700] = 0;
  STACK[0x6D0] = 0;
  LODWORD(STACK[0x7B0]) = 0;
  LODWORD(STACK[0x7BC]) = 0;
  STACK[0x7D0] = 0;
  STACK[0x7C0] = 0;
  STACK[0x7D8] = 0;
  LODWORD(STACK[0x760]) = 0;
  LODWORD(STACK[0x778]) = 0;
  LODWORD(STACK[0x770]) = 0;
  LODWORD(STACK[0x708]) = 0;
  LODWORD(STACK[0x784]) = 0;
  LODWORD(STACK[0x6BC]) = 0;
  STACK[0x788] = 0;
  LODWORD(STACK[0x718]) = 0;
  LODWORD(STACK[0x768]) = 0;
  v10 = STACK[0x958] & 1;
  LODWORD(STACK[0x950]) = v6 + 8708;
  v11 = *(v9 + 8 * ((((v6 + 8708) ^ v6 ^ 0x220C ^ 0x39E6) * v10) ^ v6));
  STACK[0x4D8] = STACK[0x870];
  STACK[0x4D0] = STACK[0x820];
  STACK[0x7F0] = STACK[0x418];
  LODWORD(STACK[0x790]) = STACK[0x648];
  LODWORD(STACK[0x608]) = v7;
  LODWORD(STACK[0x5F8]) = STACK[0x880];
  LODWORD(STACK[0x800]) = STACK[0x5F0];
  LODWORD(STACK[0x720]) = STACK[0x60C];
  LODWORD(STACK[0x4CC]) = STACK[0x838];
  v12 = LODWORD(STACK[0x828]);
  LODWORD(STACK[0x714]) = 1;
  LODWORD(STACK[0x7EC]) = STACK[0x57C];
  LODWORD(STACK[0x5E4]) = v12;
  LODWORD(STACK[0x808]) = STACK[0x810];
  LODWORD(STACK[0x658]) = STACK[0x524];
  LODWORD(STACK[0x554]) = STACK[0x830];
  LODWORD(STACK[0x5E8]) = STACK[0x81C];
  LODWORD(STACK[0x7FC]) = STACK[0x470];
  LODWORD(STACK[0x550]) = STACK[0x850];
  LODWORD(STACK[0x604]) = v8;
  LODWORD(STACK[0x7E0]) = STACK[0x644];
  return v11(a1, a2, a3, a4, a5, a6, v12);
}

uint64_t sub_2447F475C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W8>)
{
  LODWORD(STACK[0x978]) = 0;
  LODWORD(STACK[0x7C8]) = 0;
  LODWORD(STACK[0x71C]) = 0;
  LODWORD(STACK[0x70C]) = 0;
  LODWORD(STACK[0x6F0]) = 0;
  LODWORD(STACK[0x6D8]) = 0;
  STACK[0x6C0] = 0;
  LODWORD(STACK[0x6FC]) = 0;
  STACK[0x6E8] = 0;
  LODWORD(STACK[0x710]) = 0;
  STACK[0x700] = 0;
  STACK[0x6D0] = 0;
  LODWORD(STACK[0x7B0]) = 0;
  LODWORD(STACK[0x7BC]) = 0;
  STACK[0x7D0] = 0;
  STACK[0x7C0] = 0;
  STACK[0x7D8] = 0;
  LODWORD(STACK[0x760]) = 0;
  LODWORD(STACK[0x778]) = 0;
  LODWORD(STACK[0x770]) = 0;
  LODWORD(STACK[0x708]) = 0;
  LODWORD(STACK[0x784]) = 0;
  LODWORD(STACK[0x6BC]) = 0;
  STACK[0x788] = 0;
  LODWORD(STACK[0x714]) = 0;
  LODWORD(STACK[0x718]) = 0;
  LODWORD(STACK[0x768]) = 0;
  v10 = *(STACK[0x940] + 8 * (a7 - 9672));
  LODWORD(STACK[0x950]) = a7;
  STACK[0x4D8] = STACK[0x870];
  STACK[0x4D0] = STACK[0x820];
  LODWORD(STACK[0x790]) = STACK[0x648];
  LODWORD(STACK[0x608]) = v9;
  LODWORD(STACK[0x5F8]) = STACK[0x880];
  LODWORD(STACK[0x800]) = STACK[0x5F0];
  LODWORD(STACK[0x720]) = STACK[0x60C];
  LODWORD(STACK[0x4CC]) = STACK[0x838];
  LODWORD(STACK[0x7EC]) = STACK[0x57C];
  v11 = LODWORD(STACK[0x828]);
  LODWORD(STACK[0x5E4]) = v11;
  LODWORD(STACK[0x4AC]) = v7;
  LODWORD(STACK[0x808]) = STACK[0x810];
  LODWORD(STACK[0x658]) = STACK[0x524];
  LODWORD(STACK[0x554]) = STACK[0x830];
  LODWORD(STACK[0x5E8]) = STACK[0x81C];
  LODWORD(STACK[0x550]) = STACK[0x850];
  LODWORD(STACK[0x604]) = v8;
  LODWORD(STACK[0x7E0]) = STACK[0x644];
  STACK[0x7F0] = STACK[0x3C0];
  LODWORD(STACK[0x7FC]) = STACK[0x470];
  return v10(a1, a2, a3, a4, a5, a6, v11);
}

uint64_t sub_2447F48D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LODWORD(STACK[0x900]) = 0;
  LODWORD(STACK[0x8E0]) = 0;
  LODWORD(STACK[0x8C0]) = 0;
  v10 = 10 * (v5 ^ 0x101);
  v11 = STACK[0x950] & 1;
  LODWORD(STACK[0x950]) = v10;
  v12 = *(v9 + 8 * (((((v5 + 1290658771) & 0xB3123EEF ^ 0xFFFFD64F) + v10) * v11) ^ v5));
  STACK[0x910] = STACK[0x5A0];
  STACK[0x868] = STACK[0x598];
  v13 = STACK[0x508];
  LODWORD(STACK[0x608]) = v8;
  LODWORD(STACK[0x5F8]) = STACK[0x880];
  LODWORD(STACK[0x930]) = STACK[0x5AC];
  LODWORD(STACK[0x878]) = STACK[0x5A8];
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x908]) = 1;
  LODWORD(STACK[0x8F8]) = 1;
  LODWORD(STACK[0x8D8]) = 1;
  LODWORD(STACK[0x604]) = v7;
  LODWORD(STACK[0x948]) = v6;
  return v12(a1, LODWORD(STACK[0x840]), a3, a4, a5, v13, v8, 1);
}

uint64_t sub_2447F499C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x444]) = (LODWORD(STACK[0x444]) ^ 0xBED411AA) - 1093398101 - ((((2 * a1) ^ 0x5DBC) + 2 * (LODWORD(STACK[0x444]) ^ 0xBED411AA) - 4152) & 0x7DA82354);
  v3 = *(STACK[0x940] + 8 * a1);
  STACK[0x910] = STACK[0x5A0];
  STACK[0x868] = STACK[0x598];
  LODWORD(STACK[0x5F8]) = v2;
  LODWORD(STACK[0x878]) = STACK[0x5A8];
  LODWORD(STACK[0x604]) = v1;
  LODWORD(STACK[0x948]) = STACK[0x594];
  return v3();
}

uint64_t sub_2447F4A74(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7)
{
  LODWORD(STACK[0x558]) = v14;
  LODWORD(STACK[0x958]) = 0;
  LODWORD(STACK[0x908]) = 0;
  if (v8 + (v7 ^ 0xCFC24D72) >= 0x948E80A)
  {
    v19 = STACK[0x508];
  }

  else
  {
    v19 = STACK[0x488];
  }

  v20 = STACK[0x5F8];
  v21 = *(v18 + 8 * v7);
  STACK[0x618] = v12;
  STACK[0x5A0] = STACK[0x910];
  STACK[0x598] = STACK[0x868];
  STACK[0x5B0] = v16;
  LODWORD(STACK[0x790]) = STACK[0x648];
  LODWORD(STACK[0x880]) = v20;
  LODWORD(STACK[0x5F0]) = a2;
  LODWORD(STACK[0x858]) = v17;
  LODWORD(STACK[0x60C]) = a7;
  LODWORD(STACK[0x888]) = STACK[0x638];
  LODWORD(STACK[0x5AC]) = a6;
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x5A8]) = STACK[0x878];
  LODWORD(STACK[0x614]) = v11;
  LODWORD(STACK[0x64C]) = v13;
  LODWORD(STACK[0x5EC]) = v15;
  LODWORD(STACK[0x610]) = v10;
  LODWORD(STACK[0x594]) = STACK[0x948];
  LODWORD(STACK[0x644]) = a5;
  LODWORD(STACK[0x960]) = 1;
  LODWORD(STACK[0x8F8]) = 1;
  LODWORD(STACK[0x8E0]) = 1;
  LODWORD(STACK[0x860]) = 1;
  LODWORD(STACK[0x898]) = STACK[0x630];
  LODWORD(STACK[0x890]) = STACK[0x640];
  LODWORD(STACK[0x8A0]) = STACK[0x62C];
  LODWORD(STACK[0x8B0]) = STACK[0x63C];
  LODWORD(STACK[0x8A8]) = STACK[0x634];
  return v21(v19, v9, a3, 1);
}

uint64_t sub_2447F4B9C@<X0>(char a1@<W8>)
{
  LODWORD(STACK[0x900]) = 0;
  LODWORD(STACK[0x908]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  LODWORD(STACK[0x8C0]) = 0;
  LODWORD(STACK[0x8D8]) = 0;
  v4 = (v1 + 7690) | 0x1000;
  LODWORD(STACK[0x950]) = v4;
  v5 = *(v3 + 8 * (((v4 ^ 0x2204 ^ (2395 * (v1 ^ 0x403))) * (a1 & 1)) ^ v1));
  STACK[0x910] = STACK[0x5A0];
  STACK[0x868] = STACK[0x598];
  LODWORD(STACK[0x608]) = STACK[0x840];
  LODWORD(STACK[0x5F8]) = STACK[0x880];
  LODWORD(STACK[0x930]) = STACK[0x5AC];
  LODWORD(STACK[0x878]) = STACK[0x5A8];
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x8E0]) = 1;
  LODWORD(STACK[0x5FC]) = v2;
  LODWORD(STACK[0x604]) = STACK[0x84C];
  LODWORD(STACK[0x948]) = STACK[0x594];
  return v5();
}

uint64_t sub_2447F4C68(uint64_t a1, uint64_t a2, int a3)
{
  v6 = STACK[0x648];
  v7 = (STACK[0x310] ^ 0xD3879C4D733BB295) > (*(STACK[0x288] + 8 * (LODWORD(STACK[0x648]) - 130989216 + ((2 * v3) ^ 0x3EC4u) - 1766)) ^ 0xD3879C4D733BB295);
  v8 = *(STACK[0x940] + 8 * ((((v3 + 26) ^ v7) & 1 | (32 * (((v3 + 26) ^ v7) & 1))) ^ v3));
  STACK[0x4D8] = STACK[0x870];
  STACK[0x4D0] = STACK[0x820];
  LODWORD(STACK[0x790]) = v6;
  LODWORD(STACK[0x608]) = a3;
  LODWORD(STACK[0x5F8]) = STACK[0x880];
  LODWORD(STACK[0x4CC]) = STACK[0x838];
  LODWORD(STACK[0x5FC]) = v4;
  LODWORD(STACK[0x5E4]) = STACK[0x828];
  LODWORD(STACK[0x808]) = STACK[0x810];
  LODWORD(STACK[0x658]) = STACK[0x524];
  LODWORD(STACK[0x554]) = STACK[0x830];
  LODWORD(STACK[0x5E8]) = STACK[0x81C];
  LODWORD(STACK[0x550]) = STACK[0x850];
  LODWORD(STACK[0x604]) = v5;
  return v8();
}

uint64_t sub_2447F4D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(STACK[0x4A0] - 0x1DC6E026F0860055) = 0xD3879C4D733BB294;
  v9 = *(STACK[0x940] + 8 * v6);
  LODWORD(STACK[0x950]) = 610 * (v6 ^ 0x6F3);
  STACK[0x750] = STACK[0x548];
  STACK[0x800] = STACK[0x540];
  STACK[0x748] = STACK[0x570];
  STACK[0x740] = STACK[0x538];
  STACK[0x910] = STACK[0x5A0];
  STACK[0x868] = STACK[0x598];
  LODWORD(STACK[0x7F0]) = STACK[0x5F4];
  LODWORD(STACK[0x5F8]) = STACK[0x880];
  LODWORD(STACK[0x7AC]) = STACK[0x888];
  LODWORD(STACK[0x7EC]) = STACK[0x55C];
  LODWORD(STACK[0x930]) = STACK[0x5AC];
  LODWORD(STACK[0x878]) = STACK[0x5A8];
  LODWORD(STACK[0x730]) = STACK[0x56C];
  LODWORD(STACK[0x5FC]) = v7;
  LODWORD(STACK[0x758]) = STACK[0x898];
  LODWORD(STACK[0x7FC]) = STACK[0x600];
  LODWORD(STACK[0x734]) = STACK[0x534];
  LODWORD(STACK[0x604]) = v8;
  LODWORD(STACK[0x7E0]) = STACK[0x564];
  LODWORD(STACK[0x7A8]) = STACK[0x890];
  LODWORD(STACK[0x948]) = STACK[0x594];
  LODWORD(STACK[0x7A4]) = STACK[0x8A0];
  LODWORD(STACK[0x7A0]) = STACK[0x8B0];
  LODWORD(STACK[0x79C]) = STACK[0x8A8];
  LODWORD(STACK[0x738]) = STACK[0x568];
  LODWORD(STACK[0x57C]) = 130989217;
  return v9(a1, a2, a3, a4, v7, a6, LODWORD(STACK[0x648]));
}

uint64_t sub_2447F4E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(v7 + 8 * (v5 - 10228));
  STACK[0x750] = STACK[0x548];
  v9 = STACK[0x540];
  STACK[0x748] = STACK[0x570];
  STACK[0x740] = STACK[0x538];
  STACK[0x910] = STACK[0x5A0];
  STACK[0x868] = STACK[0x598];
  LODWORD(STACK[0x7F0]) = STACK[0x5F4];
  v10 = LODWORD(STACK[0x840]);
  LODWORD(STACK[0x5F8]) = STACK[0x880];
  LODWORD(STACK[0x7EC]) = STACK[0x55C];
  LODWORD(STACK[0x930]) = STACK[0x5AC];
  LODWORD(STACK[0x878]) = STACK[0x5A8];
  LODWORD(STACK[0x730]) = STACK[0x56C];
  LODWORD(STACK[0x7FC]) = STACK[0x600];
  LODWORD(STACK[0x734]) = STACK[0x534];
  LODWORD(STACK[0x604]) = STACK[0x84C];
  LODWORD(STACK[0x7E0]) = STACK[0x564];
  v11 = LODWORD(STACK[0x594]);
  LODWORD(STACK[0x738]) = STACK[0x568];
  return v8(a1, a2, v11, v10, a5, v9, v6);
}

uint64_t sub_2447F4F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X5>, int a6@<W8>)
{
  STACK[0x800] = a5;
  LODWORD(STACK[0x948]) = a3;
  LODWORD(STACK[0x958]) = 0;
  LODWORD(STACK[0x7D4]) = 0;
  STACK[0x7D8] = 0;
  LODWORD(STACK[0x808]) = 0;
  LODWORD(STACK[0x950]) = v6;
  v8 = v6 - 8708 + a6 + 1789371944;
  v9 = LODWORD(STACK[0x454]) + 2014806410;
  v10 = (v9 < 0x9A4860DF) ^ (v8 < 0x9A4860DF);
  v11 = v8 < v9;
  if (v10)
  {
    v11 = v9 < 0x9A4860DF;
  }

  v12 = *(v7 + 8 * ((27410 * v11) ^ (v6 - 3882)));
  LODWORD(STACK[0x7AC]) = STACK[0x638];
  LODWORD(STACK[0x758]) = STACK[0x630];
  LODWORD(STACK[0x34C]) = a6;
  LODWORD(STACK[0x7A8]) = STACK[0x640];
  LODWORD(STACK[0x7A4]) = STACK[0x62C];
  LODWORD(STACK[0x7A0]) = STACK[0x63C];
  LODWORD(STACK[0x79C]) = STACK[0x634];
  return v12(a1, a2, a4);
}

uint64_t sub_2447F5024@<X0>(int a1@<W2>, int a2@<W8>)
{
  LODWORD(STACK[0x978]) = 0;
  LODWORD(STACK[0x7C8]) = 0;
  LODWORD(STACK[0x71C]) = 0;
  LODWORD(STACK[0x70C]) = 0;
  LODWORD(STACK[0x6F0]) = 0;
  LODWORD(STACK[0x6D8]) = 0;
  STACK[0x6C0] = 0;
  LODWORD(STACK[0x6FC]) = 0;
  STACK[0x6E8] = 0;
  LODWORD(STACK[0x710]) = 0;
  STACK[0x700] = 0;
  STACK[0x6D0] = 0;
  LODWORD(STACK[0x7B0]) = 0;
  LODWORD(STACK[0x7BC]) = 0;
  STACK[0x7D0] = 0;
  STACK[0x7C0] = 0;
  STACK[0x7D8] = 0;
  LODWORD(STACK[0x760]) = 0;
  LODWORD(STACK[0x778]) = 0;
  LODWORD(STACK[0x770]) = 0;
  LODWORD(STACK[0x708]) = 0;
  LODWORD(STACK[0x784]) = 0;
  LODWORD(STACK[0x6BC]) = 0;
  LODWORD(STACK[0x714]) = 0;
  LODWORD(STACK[0x718]) = 0;
  LODWORD(STACK[0x768]) = 0;
  LODWORD(STACK[0x788]) = 0;
  LODWORD(STACK[0x960]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  LODWORD(STACK[0x8E0]) = 0;
  LODWORD(STACK[0x860]) = 0;
  v6 = (v2 - 4092) | 0x3200;
  v7 = STACK[0x33E0] & 1;
  LODWORD(STACK[0x950]) = v6;
  v8 = *(STACK[0x940] + 8 * ((v7 * (v6 - 12750)) ^ v2));
  STACK[0x548] = STACK[0x750];
  STACK[0x540] = STACK[0x800];
  STACK[0x570] = STACK[0x748];
  STACK[0x538] = STACK[0x740];
  STACK[0x5A0] = STACK[0x910];
  STACK[0x598] = STACK[0x868];
  LODWORD(STACK[0x790]) = STACK[0x648];
  LODWORD(STACK[0x5F4]) = STACK[0x7F0];
  LODWORD(STACK[0x55C]) = STACK[0x7EC];
  LODWORD(STACK[0x5AC]) = STACK[0x930];
  LODWORD(STACK[0x5A8]) = STACK[0x878];
  LODWORD(STACK[0x56C]) = STACK[0x730];
  LODWORD(STACK[0x600]) = STACK[0x7FC];
  LODWORD(STACK[0x34C]) = a2;
  LODWORD(STACK[0x534]) = STACK[0x734];
  LODWORD(STACK[0x564]) = STACK[0x7E0];
  LODWORD(STACK[0x594]) = STACK[0x948];
  LODWORD(STACK[0x568]) = STACK[0x738];
  LODWORD(STACK[0x608]) = a1;
  LODWORD(STACK[0x5E8]) = v5;
  LODWORD(STACK[0x81C]) = v5;
  LODWORD(STACK[0x7E0]) = v4;
  LODWORD(STACK[0x644]) = v4;
  STACK[0x4D8] = STACK[0x870];
  STACK[0x4D0] = STACK[0x820];
  STACK[0x7F0] = STACK[0x378];
  LODWORD(STACK[0x800]) = STACK[0x5F0];
  LODWORD(STACK[0x720]) = STACK[0x60C];
  LODWORD(STACK[0x4CC]) = STACK[0x838];
  LODWORD(STACK[0x78C]) = 1;
  LODWORD(STACK[0x7EC]) = STACK[0x57C];
  LODWORD(STACK[0x5E4]) = STACK[0x828];
  LODWORD(STACK[0x808]) = STACK[0x810];
  LODWORD(STACK[0x658]) = STACK[0x524];
  LODWORD(STACK[0x554]) = STACK[0x830];
  LODWORD(STACK[0x7FC]) = STACK[0x424];
  LODWORD(STACK[0x550]) = STACK[0x850];
  LODWORD(STACK[0x880]) = STACK[0x5F8];
  LODWORD(STACK[0x888]) = STACK[0x638];
  LODWORD(STACK[0x958]) = 1;
  LODWORD(STACK[0x908]) = 1;
  LODWORD(STACK[0x898]) = STACK[0x630];
  LODWORD(STACK[0x64C]) = v3;
  LODWORD(STACK[0x890]) = STACK[0x640];
  LODWORD(STACK[0x8A0]) = STACK[0x62C];
  LODWORD(STACK[0x8B0]) = STACK[0x63C];
  LODWORD(STACK[0x8A8]) = STACK[0x634];
  return v8();
}

uint64_t sub_2447F5280(uint64_t a1, uint64_t a2)
{
  v7 = *(v6 + 8 * ((((LODWORD(STACK[0x8E0]) ^ (v2 - 126)) & 1) * ((v2 + 3801) ^ 0x432C)) ^ (v2 + 3801)));
  STACK[0x750] = STACK[0x548];
  v8 = STACK[0x540];
  STACK[0x748] = STACK[0x570];
  STACK[0x740] = STACK[0x538];
  STACK[0x910] = STACK[0x5A0];
  STACK[0x868] = STACK[0x598];
  LODWORD(STACK[0x7F0]) = STACK[0x5F4];
  LODWORD(STACK[0x5F8]) = STACK[0x880];
  LODWORD(STACK[0x7AC]) = STACK[0x888];
  LODWORD(STACK[0x7EC]) = STACK[0x55C];
  LODWORD(STACK[0x930]) = STACK[0x5AC];
  LODWORD(STACK[0x878]) = STACK[0x5A8];
  LODWORD(STACK[0x730]) = STACK[0x56C];
  LODWORD(STACK[0x758]) = STACK[0x898];
  LODWORD(STACK[0x7FC]) = STACK[0x600];
  LODWORD(STACK[0x734]) = STACK[0x534];
  LODWORD(STACK[0x604]) = v4;
  LODWORD(STACK[0x7E0]) = STACK[0x564];
  LODWORD(STACK[0x7A8]) = STACK[0x890];
  LODWORD(STACK[0x948]) = v3;
  LODWORD(STACK[0x7A4]) = STACK[0x8A0];
  LODWORD(STACK[0x7A0]) = STACK[0x8B0];
  LODWORD(STACK[0x79C]) = STACK[0x8A8];
  LODWORD(STACK[0x738]) = STACK[0x568];
  return v7(v8, a2, v5);
}

uint64_t sub_2447F5384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = (v6 - 4051) | 0x100A;
  v10 = STACK[0x880];
  v11 = LODWORD(STACK[0x880]) + 21637745;
  v12 = v11 < 0x918E711;
  v13 = v11 >= v7 + 21637745;
  if (v12 != (v7 + 21637745) < 0x918E711)
  {
    v13 = v12;
  }

  v14 = LODWORD(STACK[0x46C]) + v6 - 2751;
  LODWORD(STACK[0x950]) = v9;
  LODWORD(STACK[0x46C]) = v14 + v9 - 22813;
  v15 = *(v8 + 8 * (v6 ^ (29767 * v13)));
  LODWORD(STACK[0x878]) = 919223700;
  LODWORD(STACK[0x978]) = 1;
  STACK[0x910] = STACK[0x488];
  STACK[0x868] = STACK[0x508];
  LODWORD(STACK[0x930]) = v10;
  LODWORD(STACK[0x604]) = STACK[0x84C];
  LODWORD(STACK[0x900]) = v7;
  LODWORD(STACK[0x948]) = v7;
  return v15(a1, a2, a3, a4, a5, a6, v7);
}

uint64_t sub_2447F547C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W8>)
{
  LODWORD(STACK[0x978]) = 0;
  LODWORD(STACK[0x900]) = 0;
  LODWORD(STACK[0x908]) = 0;
  LODWORD(STACK[0x8E0]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  LODWORD(STACK[0x8C0]) = 0;
  LODWORD(STACK[0x8D8]) = 0;
  v9 = (a6 - 1010301331) & 0x3C37C68F;
  v10 = (v9 - 1022) | 0x3208;
  v11 = (STACK[0x860] & 1) == 0;
  LODWORD(STACK[0x950]) = v10;
  v12 = *(v8 + 8 * (((v10 - 12677) * v11) | v9));
  STACK[0x910] = STACK[0x5A0];
  STACK[0x868] = STACK[0x598];
  v13 = STACK[0x3C0];
  LODWORD(STACK[0x608]) = v6;
  LODWORD(STACK[0x5F8]) = STACK[0x880];
  LODWORD(STACK[0x930]) = STACK[0x5AC];
  LODWORD(STACK[0x878]) = STACK[0x5A8];
  v14 = LODWORD(STACK[0x470]);
  LODWORD(STACK[0x604]) = v7;
  LODWORD(STACK[0x948]) = STACK[0x594];
  return v12(a1, a2, a3, a4, a5, v13, v14, 0);
}

uint64_t sub_2447F5544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LODWORD(STACK[0x978]) = 0;
  LODWORD(STACK[0x900]) = 0;
  LODWORD(STACK[0x908]) = 0;
  LODWORD(STACK[0x8E0]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  LODWORD(STACK[0x8C0]) = 0;
  LODWORD(STACK[0x8D8]) = 0;
  v8 = *(STACK[0x940] + 8 * (LODWORD(STACK[0x950]) - 8215));
  STACK[0x910] = STACK[0x5A0];
  STACK[0x868] = STACK[0x598];
  v9 = STACK[0x418];
  LODWORD(STACK[0x608]) = v6;
  LODWORD(STACK[0x5F8]) = STACK[0x880];
  LODWORD(STACK[0x930]) = STACK[0x5AC];
  LODWORD(STACK[0x878]) = STACK[0x5A8];
  v10 = LODWORD(STACK[0x828]);
  LODWORD(STACK[0x4AC]) = v7;
  LODWORD(STACK[0x604]) = v5;
  LODWORD(STACK[0x948]) = STACK[0x594];
  return v8(a1, a2, a3, a4, a5, v9, v10, 0);
}

uint64_t sub_2447F55D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x958]) = v10;
  LODWORD(STACK[0x960]) = v7;
  LODWORD(STACK[0x948]) = v9;
  LODWORD(STACK[0x654]) = v8;
  v11 = LODWORD(STACK[0x7FC]) + 279376609;
  v12 = a7 + 279376609 > v11;
  if ((a7 + 279376609) < 0x1875AF81 != v11 < 0x1875AF81)
  {
    v12 = (a7 + 279376609) < 0x1875AF81;
  }

  return (*(STACK[0x940] + 8 * ((LODWORD(STACK[0x950]) + 1367) ^ (4 * v12))))();
}

uint64_t sub_2447F5784@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v15 = *a1;
  v14 = a1 + 1;
  v16 = (*v9 ^ v10) + a4;
  v17 = v15 ^ v10;
  if (a2 + v12 >= v6)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  *v8 = v16 + v18 + v10 - (v11 & (2 * (v16 + v18)));
  return (*(a3 + 8 * (((((a2 - v7) | (v7 - a2)) >= 0) * v13) ^ v4)))(v14, 0, v5 + a2 - 1229);
}

uint64_t sub_2447F5994@<X0>(int a1@<W2>, uint64_t a2@<X5>, int a3@<W8>)
{
  LODWORD(STACK[0x950]) = a3 + 5543;
  v4 = (STACK[0x6BC] & 1) == 0;
  if (STACK[0x6BC])
  {
    v5 = STACK[0x3F0];
  }

  else
  {
    v5 = STACK[0x338];
  }

  if (STACK[0x6BC])
  {
    v6 = STACK[0x528];
  }

  else
  {
    v6 = STACK[0x300];
  }

  v7 = STACK[0x3FC];
  if (STACK[0x6BC])
  {
    v8 = 2046963329;
  }

  else
  {
    v7 = STACK[0x344];
    v8 = 2046963330;
  }

  LODWORD(STACK[0x830]) = v8;
  v9 = STACK[0x564];
  if (v4)
  {
    v9 = a1;
  }

  LODWORD(STACK[0x564]) = v9;
  v10 = *(a2 + 8 * a3);
  STACK[0x870] = v5;
  STACK[0x910] = v5;
  STACK[0x868] = v6;
  STACK[0x820] = v6;
  LODWORD(STACK[0x648]) = STACK[0x790];
  LODWORD(STACK[0x900]) = STACK[0x608];
  LODWORD(STACK[0x880]) = STACK[0x5F8];
  LODWORD(STACK[0x5F0]) = STACK[0x800];
  LODWORD(STACK[0x60C]) = STACK[0x720];
  LODWORD(STACK[0x888]) = STACK[0x638];
  LODWORD(STACK[0x838]) = v7;
  LODWORD(STACK[0x930]) = v7;
  LODWORD(STACK[0x878]) = 919223698;
  LODWORD(STACK[0x898]) = STACK[0x630];
  LODWORD(STACK[0x64C]) = STACK[0x654];
  LODWORD(STACK[0x57C]) = STACK[0x7EC];
  LODWORD(STACK[0x828]) = STACK[0x5E4];
  LODWORD(STACK[0x810]) = STACK[0x808];
  LODWORD(STACK[0x524]) = STACK[0x658];
  LODWORD(STACK[0x81C]) = STACK[0x5E8];
  LODWORD(STACK[0x850]) = a1;
  LODWORD(STACK[0x948]) = a1;
  LODWORD(STACK[0x644]) = STACK[0x7E0];
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x890]) = STACK[0x640];
  LODWORD(STACK[0x8A0]) = v3;
  LODWORD(STACK[0x8B0]) = STACK[0x63C];
  LODWORD(STACK[0x8A8]) = STACK[0x634];
  return v10();
}

uint64_t sub_2447F5B38(char a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6 & 0x4CB3DDE3;
  LODWORD(STACK[0x950]) = v6 & 0x4CB3DDE3 ^ 0x2E69;
  if (a1)
  {
    v9 = STACK[0x4E8];
  }

  else
  {
    v9 = STACK[0x478];
  }

  v10 = STACK[0x720];
  if (a1)
  {
    v10 = a3;
  }

  LODWORD(STACK[0x60C]) = v10;
  if (a1)
  {
    v11 = 2046963365;
  }

  else
  {
    v11 = 2046963364;
  }

  LODWORD(STACK[0x830]) = v11;
  v12 = STACK[0x7E0];
  if ((a1 & 1) == 0)
  {
    v12 = a3;
  }

  LODWORD(STACK[0x644]) = v12;
  v13 = *(a6 + 8 * v8);
  v14 = STACK[0x480];
  STACK[0x870] = STACK[0x480];
  STACK[0x910] = v14;
  STACK[0x868] = v9;
  STACK[0x820] = v9;
  LODWORD(STACK[0x648]) = STACK[0x790];
  LODWORD(STACK[0x900]) = STACK[0x608];
  LODWORD(STACK[0x880]) = STACK[0x5F8];
  LODWORD(STACK[0x5F0]) = STACK[0x800];
  LODWORD(v14) = STACK[0x858];
  LODWORD(STACK[0x838]) = STACK[0x858];
  LODWORD(STACK[0x888]) = STACK[0x638];
  LODWORD(STACK[0x930]) = v14;
  LODWORD(STACK[0x878]) = 919223698;
  LODWORD(STACK[0x898]) = STACK[0x630];
  LODWORD(STACK[0x64C]) = STACK[0x654];
  LODWORD(STACK[0x57C]) = STACK[0x7EC];
  LODWORD(STACK[0x828]) = STACK[0x5E4];
  LODWORD(STACK[0x810]) = STACK[0x808];
  LODWORD(STACK[0x524]) = STACK[0x658];
  LODWORD(STACK[0x81C]) = STACK[0x5E8];
  LODWORD(STACK[0x850]) = a3;
  LODWORD(STACK[0x948]) = a3;
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x890]) = STACK[0x640];
  LODWORD(STACK[0x8A0]) = v7;
  LODWORD(STACK[0x8B0]) = STACK[0x63C];
  LODWORD(STACK[0x8A8]) = STACK[0x634];
  return v13();
}

uint64_t sub_2447F5D18@<X0>(int a1@<W2>, uint64_t a2@<X5>, int a3@<W8>)
{
  LODWORD(STACK[0x950]) = (a3 - 1306857770) & 0x4DE53A1E;
  v4 = (STACK[0x6EC] & 1) == 0;
  if (STACK[0x6EC])
  {
    v5 = STACK[0x478];
  }

  else
  {
    v5 = STACK[0x4E8];
  }

  v6 = STACK[0x720];
  if ((STACK[0x6EC] & 1) == 0)
  {
    v6 = a1;
  }

  LODWORD(STACK[0x60C]) = v6;
  if (v4)
  {
    v7 = 2046963355;
  }

  else
  {
    v7 = 2046963354;
  }

  LODWORD(STACK[0x830]) = v7;
  v8 = STACK[0x7E0];
  if (!v4)
  {
    v8 = a1;
  }

  LODWORD(STACK[0x644]) = v8;
  v9 = *(a2 + 8 * a3);
  v10 = STACK[0x480];
  STACK[0x870] = STACK[0x480];
  STACK[0x910] = v10;
  STACK[0x868] = v5;
  STACK[0x820] = v5;
  LODWORD(STACK[0x648]) = STACK[0x790];
  LODWORD(STACK[0x900]) = STACK[0x608];
  LODWORD(STACK[0x880]) = STACK[0x5F8];
  LODWORD(STACK[0x5F0]) = STACK[0x800];
  LODWORD(v10) = STACK[0x858];
  LODWORD(STACK[0x838]) = STACK[0x858];
  LODWORD(STACK[0x888]) = STACK[0x638];
  LODWORD(STACK[0x930]) = v10;
  LODWORD(STACK[0x878]) = 919223698;
  LODWORD(STACK[0x898]) = STACK[0x630];
  LODWORD(STACK[0x64C]) = STACK[0x654];
  LODWORD(STACK[0x57C]) = STACK[0x7EC];
  LODWORD(STACK[0x828]) = STACK[0x5E4];
  LODWORD(STACK[0x810]) = STACK[0x808];
  LODWORD(STACK[0x524]) = STACK[0x658];
  LODWORD(STACK[0x81C]) = STACK[0x5E8];
  LODWORD(STACK[0x850]) = a1;
  LODWORD(STACK[0x948]) = a1;
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x890]) = STACK[0x640];
  LODWORD(STACK[0x8A0]) = v3;
  LODWORD(STACK[0x8B0]) = STACK[0x63C];
  LODWORD(STACK[0x8A8]) = STACK[0x634];
  return v9();
}

uint64_t sub_2447F5E74@<X0>(int a1@<W2>, uint64_t a2@<X5>, int a3@<W8>)
{
  LODWORD(STACK[0x978]) = 0;
  LODWORD(STACK[0x960]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  LODWORD(STACK[0x8E0]) = 0;
  LODWORD(STACK[0x860]) = 0;
  v5 = (a3 - 96104530) & 0x5BA7F7B;
  LODWORD(STACK[0x950]) = v5;
  v6 = *(a2 + 8 * (((v5 + 13010) * (v4 & 1)) ^ a3));
  STACK[0x870] = STACK[0x4D8];
  STACK[0x820] = STACK[0x4D0];
  LODWORD(STACK[0x5F0]) = STACK[0x800];
  LODWORD(STACK[0x60C]) = STACK[0x720];
  LODWORD(STACK[0x838]) = STACK[0x4CC];
  LODWORD(STACK[0x57C]) = STACK[0x7EC];
  LODWORD(STACK[0x828]) = STACK[0x5E4];
  LODWORD(STACK[0x810]) = STACK[0x808];
  LODWORD(STACK[0x524]) = STACK[0x658];
  LODWORD(STACK[0x830]) = STACK[0x554];
  v7 = STACK[0x5E8];
  LODWORD(STACK[0x850]) = STACK[0x550];
  v8 = STACK[0x7E0];
  LODWORD(STACK[0x81C]) = v7;
  LODWORD(STACK[0x644]) = v8;
  LODWORD(STACK[0x738]) = 74;
  LODWORD(STACK[0x958]) = 1;
  STACK[0x750] = STACK[0x510];
  v9 = STACK[0x4F8];
  STACK[0x800] = STACK[0x4F8];
  STACK[0x748] = STACK[0x408];
  STACK[0x740] = v9;
  STACK[0x910] = STACK[0x5A0];
  STACK[0x868] = STACK[0x598];
  v10 = v3;
  LODWORD(STACK[0x648]) = STACK[0x790];
  LODWORD(STACK[0x7F0]) = STACK[0x5F4];
  v11 = STACK[0x638];
  LODWORD(STACK[0x7AC]) = STACK[0x638];
  LODWORD(STACK[0x7EC]) = STACK[0x55C];
  LODWORD(STACK[0x930]) = STACK[0x5AC];
  LODWORD(STACK[0x878]) = STACK[0x5A8];
  LODWORD(STACK[0x730]) = STACK[0x5EC];
  v12 = STACK[0x630];
  LODWORD(STACK[0x758]) = STACK[0x630];
  LODWORD(STACK[0x7FC]) = STACK[0x600];
  LODWORD(STACK[0x734]) = a1;
  LODWORD(STACK[0x7E0]) = STACK[0x564];
  v13 = STACK[0x640];
  LODWORD(STACK[0x7A8]) = STACK[0x640];
  LODWORD(STACK[0x948]) = STACK[0x594];
  LODWORD(STACK[0x7A4]) = v3;
  v14 = STACK[0x63C];
  LODWORD(STACK[0x7A0]) = STACK[0x63C];
  v15 = STACK[0x634];
  LODWORD(STACK[0x79C]) = STACK[0x634];
  LODWORD(STACK[0x7D4]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  LODWORD(STACK[0x808]) = 1;
  LODWORD(STACK[0x7DC]) = 1;
  LODWORD(STACK[0x880]) = STACK[0x5F8];
  LODWORD(STACK[0x888]) = v11;
  LODWORD(STACK[0x908]) = 1;
  LODWORD(STACK[0x898]) = v12;
  LODWORD(STACK[0x64C]) = STACK[0x654];
  LODWORD(STACK[0x890]) = v13;
  LODWORD(STACK[0x8A0]) = v10;
  LODWORD(STACK[0x8B0]) = v14;
  LODWORD(STACK[0x8A8]) = v15;
  return v6();
}

uint64_t sub_2447F60F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = (v6 + 876135667) & 0xCBC7374A;
  LODWORD(STACK[0x950]) = v9;
  v10 = *(a6 + 8 * (((((v6 - 1476) | 0x202) ^ v9 ^ 0x1E) * (v8 & 1)) ^ v6));
  LODWORD(STACK[0x830]) = 2046963342;
  v11 = STACK[0x480];
  STACK[0x870] = STACK[0x480];
  v12 = STACK[0x478];
  STACK[0x820] = STACK[0x478];
  STACK[0x910] = v11;
  STACK[0x868] = v12;
  LODWORD(STACK[0x648]) = STACK[0x790];
  LODWORD(STACK[0x900]) = STACK[0x608];
  LODWORD(STACK[0x880]) = STACK[0x5F8];
  LODWORD(STACK[0x5F0]) = STACK[0x800];
  LODWORD(STACK[0x60C]) = STACK[0x720];
  LODWORD(v11) = STACK[0x858];
  LODWORD(STACK[0x838]) = STACK[0x858];
  LODWORD(STACK[0x888]) = STACK[0x638];
  LODWORD(STACK[0x930]) = v11;
  LODWORD(STACK[0x878]) = 919223698;
  LODWORD(STACK[0x898]) = STACK[0x630];
  LODWORD(STACK[0x64C]) = STACK[0x654];
  LODWORD(STACK[0x57C]) = STACK[0x7EC];
  LODWORD(STACK[0x828]) = STACK[0x5E4];
  LODWORD(STACK[0x810]) = STACK[0x808];
  LODWORD(STACK[0x524]) = STACK[0x658];
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x81C]) = STACK[0x5E8];
  LODWORD(STACK[0x850]) = a3;
  LODWORD(STACK[0x890]) = STACK[0x640];
  LODWORD(STACK[0x948]) = a3;
  LODWORD(STACK[0x644]) = a3;
  LODWORD(STACK[0x8A0]) = v7;
  LODWORD(STACK[0x8B0]) = STACK[0x63C];
  LODWORD(STACK[0x8A8]) = STACK[0x634];
  return v10();
}

uint64_t sub_2447F6228@<X0>(int a1@<W2>, int a2@<W8>)
{
  v4 = *(STACK[0x940] + 8 * (a2 - 10485));
  LODWORD(STACK[0x830]) = 2046963343;
  LODWORD(STACK[0x950]) = a2;
  v5 = STACK[0x480];
  STACK[0x870] = STACK[0x480];
  v6 = STACK[0x4E8];
  STACK[0x820] = STACK[0x4E8];
  STACK[0x910] = v5;
  STACK[0x868] = v6;
  LODWORD(STACK[0x648]) = STACK[0x790];
  LODWORD(STACK[0x900]) = STACK[0x608];
  LODWORD(STACK[0x880]) = STACK[0x5F8];
  LODWORD(STACK[0x5F0]) = v2;
  LODWORD(STACK[0x60C]) = a1;
  LODWORD(v5) = STACK[0x858];
  LODWORD(STACK[0x838]) = STACK[0x858];
  LODWORD(STACK[0x888]) = STACK[0x638];
  LODWORD(STACK[0x930]) = v5;
  LODWORD(STACK[0x878]) = 919223698;
  LODWORD(STACK[0x898]) = STACK[0x630];
  LODWORD(STACK[0x64C]) = v3;
  LODWORD(STACK[0x57C]) = STACK[0x7EC];
  LODWORD(STACK[0x828]) = STACK[0x5E4];
  LODWORD(STACK[0x810]) = STACK[0x808];
  LODWORD(STACK[0x524]) = STACK[0x658];
  LODWORD(STACK[0x81C]) = STACK[0x5E8];
  LODWORD(STACK[0x850]) = a1;
  LODWORD(STACK[0x948]) = a1;
  LODWORD(STACK[0x644]) = STACK[0x7E0];
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x890]) = STACK[0x640];
  LODWORD(STACK[0x8A0]) = STACK[0x62C];
  LODWORD(STACK[0x8B0]) = STACK[0x63C];
  LODWORD(STACK[0x8A8]) = STACK[0x634];
  return v4();
}

uint64_t sub_2447F6324@<X0>(int a1@<W2>, uint64_t a2@<X5>, int a3@<W8>)
{
  v5 = 112 * (a3 ^ 0x621);
  LODWORD(STACK[0x950]) = v5 ^ 0x37BA;
  if (v4)
  {
    v6 = STACK[0x4E8];
  }

  else
  {
    v6 = STACK[0x478];
  }

  v7 = STACK[0x720];
  if (v4)
  {
    v7 = a1;
  }

  LODWORD(STACK[0x60C]) = v7;
  if (v4)
  {
    v8 = 2046963363;
  }

  else
  {
    v8 = 2046963362;
  }

  LODWORD(STACK[0x830]) = v8;
  v9 = STACK[0x7E0];
  if ((v4 & 1) == 0)
  {
    v9 = a1;
  }

  LODWORD(STACK[0x644]) = v9;
  v10 = *(a2 + 8 * v5);
  v11 = STACK[0x480];
  STACK[0x870] = STACK[0x480];
  STACK[0x910] = v11;
  STACK[0x868] = v6;
  STACK[0x820] = v6;
  LODWORD(STACK[0x648]) = STACK[0x790];
  LODWORD(STACK[0x900]) = STACK[0x608];
  LODWORD(STACK[0x880]) = STACK[0x5F8];
  LODWORD(STACK[0x5F0]) = STACK[0x800];
  LODWORD(v11) = STACK[0x858];
  LODWORD(STACK[0x838]) = STACK[0x858];
  LODWORD(STACK[0x888]) = STACK[0x638];
  LODWORD(STACK[0x930]) = v11;
  LODWORD(STACK[0x878]) = 919223698;
  LODWORD(STACK[0x898]) = STACK[0x630];
  LODWORD(STACK[0x64C]) = STACK[0x654];
  LODWORD(STACK[0x57C]) = STACK[0x7EC];
  LODWORD(STACK[0x828]) = STACK[0x5E4];
  LODWORD(STACK[0x810]) = STACK[0x808];
  LODWORD(STACK[0x524]) = STACK[0x658];
  LODWORD(STACK[0x81C]) = STACK[0x5E8];
  LODWORD(STACK[0x850]) = a1;
  LODWORD(STACK[0x948]) = a1;
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x890]) = STACK[0x640];
  LODWORD(STACK[0x8A0]) = v3;
  LODWORD(STACK[0x8B0]) = STACK[0x63C];
  LODWORD(STACK[0x8A8]) = STACK[0x634];
  return v10();
}

uint64_t sub_2447F64BC@<X0>(int a1@<W2>, uint64_t a2@<X5>, int a3@<W8>)
{
  LODWORD(STACK[0x950]) = (a3 + 3281) | 0x202;
  v4 = (STACK[0x6D0] & 1) == 0;
  if (STACK[0x6D0])
  {
    v5 = STACK[0x478];
  }

  else
  {
    v5 = STACK[0x4E8];
  }

  v6 = STACK[0x720];
  if ((STACK[0x6D0] & 1) == 0)
  {
    v6 = a1;
  }

  LODWORD(STACK[0x60C]) = v6;
  if (v4)
  {
    v7 = 2046963351;
  }

  else
  {
    v7 = 2046963350;
  }

  LODWORD(STACK[0x830]) = v7;
  v8 = STACK[0x7E0];
  if (!v4)
  {
    v8 = a1;
  }

  LODWORD(STACK[0x644]) = v8;
  v9 = *(a2 + 8 * a3);
  v10 = STACK[0x480];
  STACK[0x870] = STACK[0x480];
  STACK[0x910] = v10;
  STACK[0x868] = v5;
  STACK[0x820] = v5;
  LODWORD(STACK[0x648]) = STACK[0x790];
  LODWORD(STACK[0x900]) = STACK[0x608];
  LODWORD(STACK[0x880]) = STACK[0x5F8];
  LODWORD(STACK[0x5F0]) = STACK[0x800];
  LODWORD(v10) = STACK[0x858];
  LODWORD(STACK[0x838]) = STACK[0x858];
  LODWORD(STACK[0x888]) = STACK[0x638];
  LODWORD(STACK[0x930]) = v10;
  LODWORD(STACK[0x878]) = 919223698;
  LODWORD(STACK[0x898]) = STACK[0x630];
  LODWORD(STACK[0x64C]) = STACK[0x654];
  LODWORD(STACK[0x57C]) = STACK[0x7EC];
  LODWORD(STACK[0x828]) = STACK[0x5E4];
  LODWORD(STACK[0x810]) = STACK[0x808];
  LODWORD(STACK[0x524]) = STACK[0x658];
  LODWORD(STACK[0x81C]) = STACK[0x5E8];
  LODWORD(STACK[0x850]) = a1;
  LODWORD(STACK[0x948]) = a1;
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x890]) = STACK[0x640];
  LODWORD(STACK[0x8A0]) = v3;
  LODWORD(STACK[0x8B0]) = STACK[0x63C];
  LODWORD(STACK[0x8A8]) = STACK[0x634];
  return v9();
}

uint64_t sub_2447F65E4@<X0>(int a1@<W2>, uint64_t a2@<X5>, int a3@<W8>)
{
  v4 = a3 - 7472;
  LODWORD(STACK[0x950]) = (v4 - 1762677621) & 0x69107FCE;
  v5 = (STACK[0x714] & 1) == 0;
  if (STACK[0x714])
  {
    v6 = STACK[0x418];
  }

  else
  {
    v6 = STACK[0x3C0];
  }

  v7 = STACK[0x5E4];
  if (STACK[0x714])
  {
    v7 = a1;
  }

  LODWORD(STACK[0x828]) = v7;
  if (v5)
  {
    v8 = 2046963370;
  }

  else
  {
    v8 = 2046963368;
  }

  LODWORD(STACK[0x830]) = v8;
  v9 = *(a2 + 8 * v4);
  v10 = STACK[0x470];
  if (v5)
  {
    v10 = a1;
  }

  LODWORD(STACK[0x470]) = v10;
  v11 = STACK[0x430];
  STACK[0x870] = STACK[0x430];
  STACK[0x910] = v11;
  STACK[0x868] = v6;
  STACK[0x820] = v6;
  LODWORD(STACK[0x648]) = STACK[0x790];
  LODWORD(STACK[0x900]) = STACK[0x608];
  LODWORD(STACK[0x880]) = STACK[0x5F8];
  LODWORD(STACK[0x5F0]) = STACK[0x800];
  LODWORD(STACK[0x60C]) = STACK[0x720];
  LODWORD(v11) = STACK[0x43C];
  LODWORD(STACK[0x838]) = STACK[0x43C];
  LODWORD(STACK[0x888]) = STACK[0x638];
  LODWORD(STACK[0x930]) = v11;
  LODWORD(STACK[0x878]) = 919223698;
  LODWORD(STACK[0x898]) = STACK[0x630];
  LODWORD(STACK[0x64C]) = STACK[0x654];
  LODWORD(STACK[0x57C]) = STACK[0x7EC];
  LODWORD(STACK[0x810]) = STACK[0x808];
  LODWORD(STACK[0x524]) = STACK[0x658];
  LODWORD(STACK[0x81C]) = STACK[0x5E8];
  LODWORD(STACK[0x850]) = a1;
  LODWORD(STACK[0x948]) = a1;
  LODWORD(STACK[0x644]) = STACK[0x7E0];
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x890]) = STACK[0x640];
  LODWORD(STACK[0x8A0]) = v3;
  LODWORD(STACK[0x8B0]) = STACK[0x63C];
  LODWORD(STACK[0x8A8]) = STACK[0x634];
  return v9();
}

uint64_t sub_2447F6760(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = v6 | 0x900;
  LODWORD(STACK[0x950]) = ((v6 | 0x900) + 5867) | 0x120A;
  if (v8)
  {
    v10 = STACK[0x478];
  }

  else
  {
    v10 = STACK[0x4E8];
  }

  v11 = STACK[0x720];
  if ((v8 & 1) == 0)
  {
    v11 = a3;
  }

  LODWORD(STACK[0x60C]) = v11;
  if (v8)
  {
    v12 = 2046963336;
  }

  else
  {
    v12 = 2046963337;
  }

  LODWORD(STACK[0x830]) = v12;
  v13 = STACK[0x7E0];
  if (v8)
  {
    v13 = a3;
  }

  LODWORD(STACK[0x644]) = v13;
  v14 = *(a6 + 8 * v9);
  v15 = STACK[0x480];
  STACK[0x870] = STACK[0x480];
  STACK[0x910] = v15;
  STACK[0x868] = v10;
  STACK[0x820] = v10;
  LODWORD(STACK[0x648]) = STACK[0x790];
  LODWORD(STACK[0x900]) = STACK[0x608];
  LODWORD(STACK[0x880]) = STACK[0x5F8];
  LODWORD(STACK[0x5F0]) = STACK[0x800];
  LODWORD(v15) = STACK[0x858];
  LODWORD(STACK[0x838]) = STACK[0x858];
  LODWORD(STACK[0x888]) = STACK[0x638];
  LODWORD(STACK[0x930]) = v15;
  LODWORD(STACK[0x878]) = 919223698;
  LODWORD(STACK[0x898]) = STACK[0x630];
  LODWORD(STACK[0x64C]) = STACK[0x654];
  LODWORD(STACK[0x57C]) = STACK[0x7EC];
  LODWORD(STACK[0x828]) = STACK[0x5E4];
  LODWORD(STACK[0x810]) = STACK[0x808];
  LODWORD(STACK[0x524]) = STACK[0x658];
  LODWORD(STACK[0x81C]) = STACK[0x5E8];
  LODWORD(STACK[0x850]) = a3;
  LODWORD(STACK[0x948]) = a3;
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x890]) = STACK[0x640];
  LODWORD(STACK[0x8A0]) = v7;
  LODWORD(STACK[0x8B0]) = STACK[0x63C];
  LODWORD(STACK[0x8A8]) = STACK[0x634];
  return v14();
}

uint64_t sub_2447F68D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0x950]) = 105 * (v6 ^ 0x96F);
  v8 = (STACK[0x6C0] & 1) == 0;
  if (STACK[0x6C0])
  {
    v9 = STACK[0x478];
  }

  else
  {
    v9 = STACK[0x4E8];
  }

  v10 = STACK[0x720];
  if ((STACK[0x6C0] & 1) == 0)
  {
    v10 = a3;
  }

  LODWORD(STACK[0x60C]) = v10;
  if (v8)
  {
    v11 = 2046963359;
  }

  else
  {
    v11 = 2046963358;
  }

  LODWORD(STACK[0x830]) = v11;
  v12 = STACK[0x7E0];
  if (!v8)
  {
    v12 = a3;
  }

  LODWORD(STACK[0x644]) = v12;
  v13 = *(a6 + 8 * v6);
  v14 = STACK[0x480];
  STACK[0x870] = STACK[0x480];
  STACK[0x910] = v14;
  STACK[0x868] = v9;
  STACK[0x820] = v9;
  LODWORD(STACK[0x648]) = STACK[0x790];
  LODWORD(STACK[0x900]) = STACK[0x608];
  LODWORD(STACK[0x880]) = STACK[0x5F8];
  LODWORD(STACK[0x5F0]) = STACK[0x800];
  LODWORD(v14) = STACK[0x858];
  LODWORD(STACK[0x838]) = STACK[0x858];
  LODWORD(STACK[0x888]) = STACK[0x638];
  LODWORD(STACK[0x930]) = v14;
  LODWORD(STACK[0x878]) = 919223698;
  LODWORD(STACK[0x898]) = STACK[0x630];
  LODWORD(STACK[0x64C]) = STACK[0x654];
  LODWORD(STACK[0x57C]) = STACK[0x7EC];
  LODWORD(STACK[0x828]) = STACK[0x5E4];
  LODWORD(STACK[0x810]) = STACK[0x808];
  LODWORD(STACK[0x524]) = STACK[0x658];
  LODWORD(STACK[0x81C]) = STACK[0x5E8];
  LODWORD(STACK[0x850]) = a3;
  LODWORD(STACK[0x948]) = a3;
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x890]) = STACK[0x640];
  LODWORD(STACK[0x8A0]) = v7;
  LODWORD(STACK[0x8B0]) = STACK[0x63C];
  LODWORD(STACK[0x8A8]) = STACK[0x634];
  return v13();
}

uint64_t sub_2447F6A48@<X0>(int a1@<W2>, char a2@<W4>, uint64_t a3@<X5>, unsigned int a4@<W8>)
{
  LODWORD(STACK[0x950]) = 366 * (a4 ^ 0x35F1);
  if (a2)
  {
    v5 = STACK[0x478];
  }

  else
  {
    v5 = STACK[0x4E8];
  }

  v6 = STACK[0x720];
  if ((a2 & 1) == 0)
  {
    v6 = a1;
  }

  LODWORD(STACK[0x60C]) = v6;
  if (a2)
  {
    v7 = 2046963340;
  }

  else
  {
    v7 = 2046963341;
  }

  LODWORD(STACK[0x830]) = v7;
  v8 = STACK[0x7E0];
  if (a2)
  {
    v8 = a1;
  }

  LODWORD(STACK[0x644]) = v8;
  v9 = *(a3 + 8 * a4);
  v10 = STACK[0x480];
  STACK[0x870] = STACK[0x480];
  STACK[0x910] = v10;
  STACK[0x868] = v5;
  STACK[0x820] = v5;
  LODWORD(STACK[0x648]) = STACK[0x790];
  LODWORD(STACK[0x900]) = STACK[0x608];
  LODWORD(STACK[0x880]) = STACK[0x5F8];
  LODWORD(STACK[0x5F0]) = STACK[0x800];
  LODWORD(v10) = STACK[0x858];
  LODWORD(STACK[0x838]) = STACK[0x858];
  LODWORD(STACK[0x888]) = STACK[0x638];
  LODWORD(STACK[0x930]) = v10;
  LODWORD(STACK[0x878]) = 919223698;
  LODWORD(STACK[0x898]) = STACK[0x630];
  LODWORD(STACK[0x64C]) = STACK[0x654];
  LODWORD(STACK[0x57C]) = STACK[0x7EC];
  LODWORD(STACK[0x828]) = STACK[0x5E4];
  LODWORD(STACK[0x810]) = STACK[0x808];
  LODWORD(STACK[0x524]) = STACK[0x658];
  LODWORD(STACK[0x81C]) = STACK[0x5E8];
  LODWORD(STACK[0x850]) = a1;
  LODWORD(STACK[0x948]) = a1;
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x890]) = STACK[0x640];
  LODWORD(STACK[0x8A0]) = v4;
  LODWORD(STACK[0x8B0]) = STACK[0x63C];
  LODWORD(STACK[0x8A8]) = STACK[0x634];
  return v9();
}

uint64_t sub_2447F6BB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0x950]) = 366 * (v6 ^ 0x61F);
  v8 = (STACK[0x6D4] & 1) == 0;
  if (STACK[0x6D4])
  {
    v9 = STACK[0x478];
  }

  else
  {
    v9 = STACK[0x4E8];
  }

  v10 = STACK[0x720];
  if ((STACK[0x6D4] & 1) == 0)
  {
    v10 = a3;
  }

  LODWORD(STACK[0x60C]) = v10;
  if (v8)
  {
    v11 = 2046963349;
  }

  else
  {
    v11 = 2046963348;
  }

  LODWORD(STACK[0x830]) = v11;
  v12 = STACK[0x7E0];
  if (!v8)
  {
    v12 = a3;
  }

  LODWORD(STACK[0x644]) = v12;
  v13 = *(a6 + 8 * v6);
  v14 = STACK[0x480];
  STACK[0x870] = STACK[0x480];
  STACK[0x910] = v14;
  STACK[0x868] = v9;
  STACK[0x820] = v9;
  LODWORD(STACK[0x648]) = STACK[0x790];
  LODWORD(STACK[0x900]) = STACK[0x608];
  LODWORD(STACK[0x880]) = STACK[0x5F8];
  LODWORD(STACK[0x5F0]) = STACK[0x800];
  LODWORD(v14) = STACK[0x858];
  LODWORD(STACK[0x838]) = STACK[0x858];
  LODWORD(STACK[0x888]) = STACK[0x638];
  LODWORD(STACK[0x930]) = v14;
  LODWORD(STACK[0x878]) = 919223698;
  LODWORD(STACK[0x898]) = STACK[0x630];
  LODWORD(STACK[0x64C]) = STACK[0x654];
  LODWORD(STACK[0x57C]) = STACK[0x7EC];
  LODWORD(STACK[0x828]) = STACK[0x5E4];
  LODWORD(STACK[0x810]) = STACK[0x808];
  LODWORD(STACK[0x524]) = STACK[0x658];
  LODWORD(STACK[0x81C]) = STACK[0x5E8];
  LODWORD(STACK[0x850]) = a3;
  LODWORD(STACK[0x948]) = a3;
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x890]) = STACK[0x640];
  LODWORD(STACK[0x8A0]) = v7;
  LODWORD(STACK[0x8B0]) = STACK[0x63C];
  LODWORD(STACK[0x8A8]) = STACK[0x634];
  return v13();
}

uint64_t sub_2447F6CE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, int a38, uint64_t a39, unint64_t a40, uint64_t a41, int a42, int a43)
{
  v48 = (v43 - 11374) ^ 0x37BA;
  LODWORD(STACK[0x950]) = v48;
  v49 = *(a6 + 8 * ((((((v43 - 542) | 0x20A) ^ 0x278F) + v48) * (v47 & 1)) ^ (v43 - 11374)));
  LODWORD(STACK[0x830]) = 2046963333;
  v50 = STACK[0x480];
  STACK[0x870] = STACK[0x480];
  v51 = STACK[0x510];
  STACK[0x820] = STACK[0x510];
  STACK[0x910] = v50;
  STACK[0x868] = v51;
  LODWORD(STACK[0x648]) = STACK[0x790];
  v52 = STACK[0x800];
  LODWORD(STACK[0x5F0]) = STACK[0x800];
  LODWORD(STACK[0x60C]) = STACK[0x720];
  LODWORD(STACK[0x64C]) = a3;
  LODWORD(STACK[0x57C]) = STACK[0x7EC];
  LODWORD(STACK[0x828]) = STACK[0x5E4];
  LODWORD(STACK[0x810]) = STACK[0x808];
  LODWORD(STACK[0x524]) = STACK[0x658];
  LODWORD(STACK[0x81C]) = STACK[0x5E8];
  LODWORD(STACK[0x850]) = a3;
  LODWORD(STACK[0x948]) = a3;
  LODWORD(STACK[0x644]) = STACK[0x7E0];
  LODWORD(STACK[0x650]) = v52;
  LODWORD(STACK[0x628]) = a3;
  LODWORD(STACK[0x624]) = STACK[0x654];
  LODWORD(STACK[0x900]) = STACK[0x608];
  LODWORD(STACK[0x880]) = STACK[0x5F8];
  v53 = STACK[0x858];
  LODWORD(STACK[0x838]) = STACK[0x858];
  LODWORD(STACK[0x888]) = STACK[0x638];
  LODWORD(STACK[0x930]) = v53;
  LODWORD(STACK[0x878]) = 919223698;
  LODWORD(STACK[0x898]) = STACK[0x630];
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x890]) = STACK[0x640];
  LODWORD(STACK[0x8A0]) = v46;
  LODWORD(STACK[0x8B0]) = STACK[0x63C];
  LODWORD(STACK[0x8A8]) = STACK[0x634];
  STACK[0x860] = v44;
  STACK[0x8F8] = a40;
  STACK[0x698] = STACK[0x5B0];
  LODWORD(STACK[0x66C]) = v53;
  LODWORD(STACK[0x840]) = v45;
  LODWORD(STACK[0x72C]) = a38;
  LODWORD(STACK[0x908]) = a43;
  LODWORD(STACK[0x84C]) = STACK[0x610];
  return v49();
}

uint64_t sub_2447F6E64@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W5>, unint64_t a4@<X7>, int a5@<W8>)
{
  STACK[0x950] = a4;
  LODWORD(STACK[0x644]) = v6;
  LODWORD(STACK[0x610]) = STACK[0x84C];
  LODWORD(STACK[0x474]) = v5;
  LODWORD(STACK[0x57C]) = a3;
  LODWORD(STACK[0x64C]) = STACK[0x624];
  LODWORD(STACK[0x858]) = STACK[0x66C];
  LODWORD(STACK[0x880]) = STACK[0x5F8];
  LODWORD(STACK[0x900]) = STACK[0x608];
  STACK[0x5B0] = STACK[0x698];
  STACK[0x870] = v7;
  LODWORD(STACK[0x838]) = a5;
  return (*(STACK[0x940] + 8 * (((a5 == 130989214) * ((a1 + 8223) ^ 0x4805 ^ (610 * (a1 ^ 0x3201)))) ^ (a1 + 8223))))(1010751235, a2, 21036, 1342, 4294960587, 0xE2391FD90F79FFABLL);
}

uint64_t sub_2447F6F64@<X0>(int a1@<W0>, uint64_t a2@<X5>, unsigned int a3@<W6>, int a4@<W8>)
{
  *(v5 + a2) = v9;
  v10 = v6 + a1;
  v11 = (v4 < a3) ^ (v10 < a3);
  v12 = v10 < v4;
  if (v11)
  {
    v12 = v4 < a3;
  }

  return (*(v8 + 8 * ((!v12 * v7) ^ a4)))();
}

uint64_t sub_2447F6FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x60C]) = v12;
  LODWORD(STACK[0x614]) = v11;
  STACK[0x618] = v9;
  LODWORD(STACK[0x5F0]) = a8;
  STACK[0x960] = v10 - 0x13F560A921CBA24ELL;
  return (*(v13 + 8 * (((4 * (((LODWORD(STACK[0x908]) == 130989216) ^ (v8 - 1)) & 1)) & 0xF7 | (8 * (((LODWORD(STACK[0x908]) == 130989216) ^ (v8 - 1)) & 1))) ^ v8)))(a1, a2, a3, a4, a5, (v8 - 5114), 130989216, 0xD3879C4D733B808BLL);
}

uint64_t sub_2447F7070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = (v6 + 21922410) | 0x6802000;
  STACK[0x978] = *(STACK[0x950] - 0x1DC6E026F0860055) ^ (v9 + 532) ^ a6;
  v11 = LODWORD(STACK[0x838]) - 270572734;
  v12 = v11 < 0xF7AE1FE2;
  v13 = v7 - 270572734 < v11;
  if (v12 != v7 - 270572734 < 4 * (v10 ^ 0x7CEA9A3u) - 139605034)
  {
    v13 = v11 < 0xF7AE1FE2;
  }

  LODWORD(STACK[0x958]) = v13;
  LODWORD(STACK[0x948]) = v7 + 1;
  if ((v7 - 270572733) < 0xF7AE1FE2 != v12)
  {
    v14 = v11 < 0xF7AE1FE2;
  }

  else
  {
    v14 = v7 - 270572733 < v11;
  }

  LODWORD(STACK[0x930]) = v14;
  v15 = *(v8 + 8 * (v10 - 130988040));
  LODWORD(STACK[0x910]) = 52 * (((v7 - v10) | (v10 - v7)) < 0);
  return v15(2120358565);
}

uint64_t sub_2447F7198@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W4>, unsigned int a5@<W8>)
{
  v8 = a2 + 8;
  v9 = a5 < 0xBE506A25;
  *(a3 + v5) = v7;
  v10 = a1 + 1072582529;
  v11 = (a1 + 1);
  v12 = v9 ^ (v10 < ((a4 - 1843531193) & 0x6DE25D3E ^ 0xBE503E29));
  v13 = v10 < a5;
  if (!v12)
  {
    v9 = v13;
  }

  return (*(v6 + 8 * ((v9 * (a4 - 1128)) ^ a4)))(v11, v8);
}

uint64_t sub_2447F74AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a4 + v11) ^ v13;
  v16 = (v9 - 268994335) & 0x1008859F ^ v8 ^ 0xDFD83C53BAE32DC0;
  v17 = a8 ^ 0x947FEB2560E5975FLL;
  v18 = v10 - 0xABF663A5A610C4DLL + v16;
  v19 = __CFADD__(v10 - 0xABF663A5A610C4DLL, v16);
  v20 = __CFADD__(v18, v17);
  v21 = v18 + v17;
  if (v20)
  {
    v22 = v19 + 1;
  }

  else
  {
    v22 = v19;
  }

  v20 = __CFADD__(v21, v15);
  v23 = v21 + v15;
  if (v20)
  {
    v24 = v22 + 1;
  }

  else
  {
    v24 = v22;
  }

  *(a3 + v11) = v23 + v13 - (v14 & (2 * v23));
  return (*(v12 + 8 * ((15 * ((v24 ^ 0xEEE7D7FF7ABD4BADLL) + 0x3DDB7E08DFFFB800 + ((2 * v24) & 0xA) == 0x2CC356085ABD03ADLL)) ^ v9)))();
}

uint64_t sub_2447F75E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = ((6 * (v11 ^ v8)) ^ v9) + a6;
  v17 = (*(a4 + v6) ^ v14) + v16 + v14 - (v15 & (2 * ((*(a4 + v6) ^ v14) + v16)));
  *(a3 + v6) = v17;
  return (*(v13 + 8 * ((15 * (((((v17 ^ v14) < v16) | (2 * ((v17 ^ v14) < v16))) ^ v10) + v12 == v7)) ^ v11)))(a1, a2, a3 + 8, a4 + 8);
}