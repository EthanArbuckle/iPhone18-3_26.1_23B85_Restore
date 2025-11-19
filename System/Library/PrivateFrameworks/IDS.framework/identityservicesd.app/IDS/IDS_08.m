uint64_t sub_100186BF8()
{
  v5 = (((v2 - 4589) | 0x2102) - 432575509) ^ v1;
  v7 = (v0 - v3) > 0x1F && v5 > 7;
  return (*(v4 + 8 * ((2011 * v7) ^ v2)))();
}

uint64_t sub_100186D08()
{
  v4 = *(v1 + 8);
  STACK[0x4D0] = v2;
  STACK[0x720] = 0;
  STACK[0x638] = 0;
  return (*(v3 + 8 * (((((v0 ^ 0xD59) + 37) ^ (121 * (v0 ^ 0xD59))) * (v4 == 0)) ^ v0)))();
}

uint64_t sub_100186D54(uint64_t a1)
{
  v5 = (v1 - 1713428436) & 0x6620CBD6;
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0x8F8] = (v2 ^ 0xBFD3F5FBBFFD963CLL) + ((2 * v2) & 0x17FFB2C78) + 0x7D7E9B3DF6EFE9EALL + 1874 * (v5 ^ 0x9D5u);
  *(a1 + 16) = v2 + 10;
  v6 = (*(v3 + 8 * (v5 ^ 0x2C74u)))();
  v7 = STACK[0x330];
  *(a1 + 24) = v6;
  return (*(v7 + 8 * (((v6 == 0) * ((v5 - 1008) ^ 0x5E8)) ^ v5)))();
}

uint64_t sub_100186E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, int a14, char a15, int a16, unsigned int a17, uint64_t a18, char *a19)
{
  a18 = a10;
  a19 = &a15;
  a17 = (v21 + 873) ^ (33731311 * (((&a16 | 0x19B68295) - (&a16 & 0x19B68295)) ^ 0x204048B6));
  (*(v19 + 8 * (v21 ^ 0x2C5A)))(&a16);
  a17 = (v21 + 873) ^ (33731311 * ((&a16 & 0xEB26CAC7 | ~(&a16 | 0xEB26CAC7)) ^ 0x2D2FFF1B));
  a18 = a10;
  a19 = &a12;
  (*(v19 + 8 * (v21 + 7222)))(&a16);
  LODWORD(a19) = v21 - 2008441969 * ((1095657516 - (&a16 | 0x414E682C) + (&a16 | 0xBEB197D3)) ^ 0xF628C3DD) + 3306;
  a18 = a10;
  v22 = (*(v19 + 8 * (v21 + 7272)))(&a16);
  return (*(v19 + 8 * ((11 * (((v21 - 20) ^ (a16 == v20 + ((v21 - 1013419958) & 0x8FBA) + 2654)) & 1)) ^ v21)))(v22);
}

uint64_t sub_10018709C()
{
  v5 = (*(v4 + 8 * (v0 + 5441)))(0, 0, 0);
  (*(v4 + 8 * (v0 + 5476)))(v5, *(&off_100BFFA10 + (v0 ^ 0x10CF)) - 4, v3, (v0 ^ 0xBC589C4) + v1);
  v6 = *(v4 + 8 * (v0 ^ 0x36BB));
  STACK[0x3B0] = v5;
  v7 = v6(v2, v5) == 0;
  return (*(v4 + 8 * (((2 * (((v0 + 120) ^ v7) & 1)) & 0xF7 | (8 * (((v0 + 120) ^ v7) & 1))) ^ v0)))();
}

uint64_t sub_100187168(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  *a4 = 0;
  *a5 = 0;
  a15 = 476323082 - 1710126949 * ((&a15 + 997951345 - 2 * (&a15 & 0x3B7B8771)) ^ 0x960DCE1);
  v17 = (*(v16 + 77088))(&a15);
  return (*(v16 + 8 * ((7304 * (a16 == 16257999)) ^ 0xD2Au)))(v17);
}

uint64_t sub_100187234@<X0>(uint64_t a1@<X8>)
{
  (*(v2 + 8 * (v1 + 1663)))(a1);
  *(STACK[0x550] + 24) = 0;
  return sub_100070E38();
}

uint64_t sub_100187264@<X0>(__int16 a1@<W8>)
{
  v4 = (((2 * v2) & 0x5EFF7ABFFDF6D3ECLL) + (v2 ^ 0x6F7FBD5FFEFB69F6) + v1 - 0x6F7FBD5FFEFB69F6);
  v5 = (v4[1] << ((v3 & 0xF7) - 64)) | (*v4 << 24) | (v4[2] << 8);
  LODWORD(STACK[0x944]) = (v5 | v4[3]) + 197499219 - 2 * ((v5 | v4[3]) & 0xBC5995F ^ v4[3] & 0xC);
  return sub_1001DC5F8(a1);
}

void sub_100187318(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  STACK[0x720] = STACK[0x6C0];
  STACK[0x6D0] = *(a1 + 8 * a2);
  JUMPOUT(0x1000ED160);
}

void sub_100187380(uint64_t a1)
{
  v1 = *(a1 + 12) ^ (2048652491 * ((-2 - ((a1 | 0x1C417471) + (~a1 | 0xE3BE8B8E))) ^ 0x520F1C8B));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10018747C(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a2 - 1;
  v24 = a6 + v23 + v8;
  v25 = __ROR8__((v13 + v23) & ((a3 ^ 0x8F8u) - 6204), 8);
  v26 = ((v25 - 0x6AF7234D0CC131D5) | v16) - ((v25 - 0x6AF7234D0CC131D5) | v10) + v10;
  v27 = v26 ^ 0x513852535460B9BLL;
  v26 ^= 0xAD5560B2ACB07AC7;
  v28 = (__ROR8__(v27, 8) + v26) ^ v15;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0xF5A2F1B9B5D0B209;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (v32 + v31 - ((2 * (v32 + v31)) & 0x68767FB9A21293ELL) + 0x343B3FDCD10949FLL) ^ 0x5A20053898C9EB80;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (v9 - ((v35 + v34) | v9) + ((v35 + v34) | 0x20842EAD28A8535ALL)) ^ 0x41C1B387D8B777ADLL;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (v11 - ((v38 + v37) | v11) + ((v38 + v37) | 0x9D61AAA81A10264DLL)) ^ 0xF9A2B6AA6A94F821;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0x1A2AEBE44253AF03;
  v42 = __ROR8__(v41, 8);
  v43 = __ROR8__(v40, 61);
  v44 = ((((2 * (v42 + (v41 ^ v43))) & 0x170BF460A85E9EEELL) - (v42 + (v41 ^ v43)) - 0xB85FA30542F4F78) ^ 0x5F4A471D8357ECC9uLL) >> (8 * ((v13 + v23) & 7));
  v45 = __ROR8__(v24 & 0xFFFFFFFFFFFFFFF8, 8);
  v46 = ((0x29702F06207D0E1CLL - v45) & 0x5879FD990C46CAD5) + v45 + 0x568FD0F9DF82F1E3 - ((v45 + 0x568FD0F9DF82F1E3) & 0x5E79FD990C46CAD5);
  v47 = v46 ^ 0x6F262667B511DA8BLL;
  v46 ^= 0xDB58A1A949065591;
  v48 = __ROR8__(v47, 8);
  v49 = (((2 * ((v48 + v46) ^ 0xBC7AB44B3A189480)) | 0xF0BA186BA47F666CLL) - ((v48 + v46) ^ 0xBC7AB44B3A189480) - 0x785D0C35D23FB336) ^ a7;
  v50 = v49 ^ __ROR8__(v46, 61);
  v51 = __ROR8__(v49, 8);
  v52 = (v51 + v50 - (a8 & (2 * (v51 + v50))) + v18) ^ v19;
  v53 = v52 ^ __ROR8__(v50, 61);
  v54 = (__ROR8__(v52, 8) + v53) ^ 0x57D072DFC3A5F657;
  v55 = __ROR8__(v54, 8);
  v56 = v54 ^ __ROR8__(v53, 61);
  v57 = (v55 + v56 - (v20 & (2 * (v55 + v56))) + v21) ^ v22;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = __ROR8__(v57, 8);
  v60 = (v12 - ((v59 + v58) | v12) + ((v59 + v58) | v17)) ^ v14;
  v61 = v60 ^ __ROR8__(v58, 61);
  v62 = (__ROR8__(v60, 8) + v61) ^ 0x6E1E19DDB33CB23ALL;
  *v24 = (((__ROR8__(v62, 8) + (v62 ^ __ROR8__(v61, 61))) ^ 0x3532CD90FD5B1622uLL) >> (8 * (v24 & 7u))) ^ v44 ^ *(v13 + v23);
  return (*(STACK[0x330] + 8 * (((v23 != 0) * a1) ^ a3)))();
}

uint64_t sub_10018782C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0x900] = (((v2 ^ 0x81F79B03FF7C823) - 0x81F79B03FF7C823) ^ ((v2 ^ 0x949FD4AC1394ECDCLL) + 0x6B602B53EC6B1324) ^ ((v2 ^ 0x9C80AD1C27A6A85ALL ^ ((v1 ^ 0x2208u) + 4639)) + 0x637F52E3D8594254)) + 0x63E7D9382C628DAALL;
  *(a1 + 16) = (((v2 ^ 0x83C4E5C9) + 2084248119) ^ ((v2 ^ 0x89D7F94C) + 1982334644) ^ ((v2 ^ 0x1D685D6) - 30836182)) + 197499229;
  v5 = (*(v3 + 8 * (v1 ^ 0x47D)))();
  v6 = STACK[0x330];
  *(a1 + 24) = v5;
  return (*(v6 + 8 * ((45 * (v5 == 0)) ^ v1)))();
}

uint64_t sub_100187AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v22 = (&a14 ^ 0x5869D362) * v19;
  a15 = v22 + 1658120796;
  a16 = a10;
  a17 = &a11;
  a18 = -654855621 - v22;
  a19 = v22 + v21 + 1674576449;
  v23 = (*(v20 + 8 * (v21 ^ 0x2FE1u)))(&a14);
  return (*(v20 + 8 * (((a14 == ((v21 - 485) | 0x1170) + 16251355) * (((v21 - 339741292) & 0xE3FC9BFE) + 474180601)) ^ v21)))(v23);
}

void sub_100187B64()
{
  v0 = *(&off_100BFFA10 + ((-85 * ((dword_100CBC1F0 + dword_100CBC0E8) ^ 0xDF)) ^ byte_1009DAFB0[byte_1009D40D0[(-85 * ((dword_100CBC1F0 + dword_100CBC0E8) ^ 0xDF))] ^ 0xBF]) + 118);
  v1 = *(v0 - 4);
  v2 = *(&off_100BFFA10 + (byte_1009DAFB8[(byte_1009D40D8[(-85 * (v1 ^ dword_100CBC1F0 ^ 0xDF)) - 8] ^ 0x6D) - 8] ^ (-85 * (v1 ^ dword_100CBC1F0 ^ 0xDF))) + 184);
  v3 = &v5[*v2 ^ v1];
  *(v0 - 4) = 2054362027 * (v3 - 0xB4207763EF64BDFLL);
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * ((v6 & 0xB1703B09 | ~(v6 | 0xB1703B09)) ^ 0x7C949F66);
  LOBYTE(v2) = -85 * (*(v0 - 4) ^ 0xDF ^ *v2);
  v4 = *(&off_100BFFA10 + ((-85 * ((dword_100CBC1F0 - dword_100CBC0E8) ^ 0xDF)) ^ byte_1009DB0B0[byte_1009D41D0[(-85 * ((dword_100CBC1F0 - dword_100CBC0E8) ^ 0xDF))] ^ 0x2A]) + 107) - 8;
  (*&v4[8 * (byte_1009D3FDC[(byte_1009C9A60[v2] ^ 0xEE) - 12] ^ v2) + 76160])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100187E60@<X0>(int a1@<W8>, uint64_t a2, uint64_t *a3, int a4, uint64_t a5, int a6, unsigned int a7)
{
  v11 = v7 ^ 0x1A7C;
  v12 = (&a3 ^ 0x2CFCB17B) * a1;
  a3 = &a2;
  a4 = ((v7 ^ 0x1A7C) - 1715) ^ v12;
  a5 = v8;
  a6 = v12 ^ 0x19EC4105;
  a7 = -1146238160 - v12;
  v13 = (*(v9 + 8 * ((v7 ^ 0x1A7C) + 6961)))(&a3);
  return (*(v9 + 8 * ((4592 * (*(v8 + 24) == ((v11 + 1054) ^ 0x1939 ^ v10))) ^ v11)))(v13);
}

uint64_t sub_100187FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LOWORD(STACK[0x90A]) = v63;
  LODWORD(STACK[0x300]) = v63;
  return sub_10014DBAC(a1, a63 - 2230, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_100187FD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  LODWORD(STACK[0x3D0]) = a3;
  STACK[0x3C0] = v6;
  return (*(a4 + 8 * (((((v5 + a5 + v7) & v8 ^ 0xFFFFFD21) + ((v5 + a5) ^ v9) * v10) * (*v6 == 0)) ^ (v5 + a5))))();
}

uint64_t sub_100188064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char *a12, int a13, unsigned int a14)
{
  a14 = 1317436891 * ((&a12 & 0xB57B906E | ~(&a12 | 0xB57B906E)) ^ 0xFA87F7E7) + 8154;
  a12 = &a10;
  v16 = (*(v14 + 77096))(&a12);
  return (*(v14 + 8 * ((10221 * (a13 == v15)) ^ 0x4BEu)))(v16);
}

uint64_t sub_100188140@<X0>(unint64_t a1@<X8>)
{
  v3 = v1 ^ 0x74AD484;
  v4 = (3 * (v1 ^ 0x74AF2AC) + 523505656) & 0xE0CBDB77;
  STACK[0x968] = a1;
  v5 = STACK[0x690];
  STACK[0x970] = STACK[0x690];
  return (*(v2 + 8 * (((a1 - v5 > 9) * (v4 + 1128)) ^ v3)))();
}

void sub_100188218(uint64_t a1@<X8>)
{
  *v2 = v1;
  *(v1 + 8) = *(a1 + 8);
  *(a1 + 8) = v1;
  JUMPOUT(0x1000F7A28);
}

uint64_t sub_10018827C()
{
  STACK[0x420] = 0;
  v2 = STACK[0x850];
  STACK[0x540] = *(v1 + 8 * v0);
  return sub_100152998(v2);
}

uint64_t sub_1001882AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0x360];
  if (LODWORD(STACK[0x360]) == 17168)
  {
    return (*(v3 + 8 * ((STACK[0x3F8] - 2773) ^ (21 * (LODWORD(STACK[0x2F0]) == LODWORD(STACK[0x390]))))))(a1, a2, a3, 16215981);
  }

  if (v4 == 20706)
  {
    return (*(v3 + 8 * ((1979 * (LODWORD(STACK[0xB38]) == STACK[0x3F8] + 197489979)) ^ (STACK[0x3F8] - 504))))(a1, a2, a3, 16215981);
  }

  if (v4 == 33980)
  {
    return (*(v3 + 8 * ((27 * (LODWORD(STACK[0xB48]) - ((2 * LODWORD(STACK[0xB48])) & 0xDCE86D8E) + ((STACK[0x3F8] + 1335594389) & 0xB0645F7E) - 294378093 == -294373689)) ^ (STACK[0x3F8] - 6484))))(a1, a2, a3, 16215976);
  }

  return sub_100188510(a1, a2, a3, 16215976);
}

uint64_t sub_1001883E8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 16257999)
  {
    v7 = STACK[0x860];
    v8 = *(STACK[0x860] + 8);
    v9 = STACK[0x988];
    v9[1] = v8;
    *v9 = *v7;
    return (*(v5 + 8 * (((((v8 == 0) ^ (v4 - 1)) & 1) * ((v4 - 7660) ^ 0x606)) ^ (v4 - 2702))))(a1, a2, a3);
  }

  else if (a4 == 16215947)
  {
    return (*(v5 + 8 * (((*(STACK[0x580] + 8) == 0) * ((((v4 - 8224) | 0x888) - 2125) ^ (v4 - 752475630) & 0x2CD9BDED)) ^ (v4 + 1))))(a1, a2, a3);
  }

  else
  {
    return sub_100188510(a1, a2, a3, a4);
  }
}

uint64_t sub_1001884B8@<X0>(uint64_t a1@<X8>)
{
  (*(v2 + 8 * (v1 ^ 0x29C4)))(a1);
  *(STACK[0x860] + 24) = 0;
  return sub_1001884E4();
}

void sub_1001884E4()
{
  (*(v1 + 8 * (v0 ^ 0x21A4)))();
  STACK[0x860] = 0;
  JUMPOUT(0x100188504);
}

void sub_1001885AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v5 = a5 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10018862C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W8>)
{
  v10 = LODWORD(STACK[0x340]);
  if (v10 == 17168)
  {
    return (*(v9 + 8 * ((v8 - 4385) ^ (10225 * (a7 == v7 + 4)))))(a1, a2, a3, a4, a5, a6, v8);
  }

  if (v10 == 20706)
  {
    return (*(v9 + 8 * ((((v8 ^ 0x135) + 1193) * (a7 == v7 + 8)) ^ (v8 - 4420))))(a1, a2, a3, a4, a5, a6, v8);
  }

  if (v10 != 33980)
  {
    return sub_100189604(a1, a2, a3, a4, a5, a6, v8);
  }

  STACK[0x4F8] = STACK[0x758] + STACK[0x2A0];
  return sub_1001895D0(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_100188704()
{
  v2 = v0 ^ 0x1079u;
  v3 = ((v2 + 0x77FD7FAF9BF7E0ABLL) & (2 * STACK[0x2A0])) + (STACK[0x2A0] ^ 0xBBFEBFD7CDFBF399) + STACK[0x758] + 0x4401402832040C67;
  v4 = __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8);
  v5 = (0x6AF7234D0CC131D4 - v4) & 0xE17ED4F2859DC12FLL | (v4 + 0x1508DCB2F33ECE2BLL) & 0x1A812B0D7A623ED0;
  v6 = v5 ^ 0xAC9796C9EA8B26FDLL;
  v5 ^= 0x4D1735E737D57A1uLL;
  v7 = __ROR8__(v6, 8);
  v8 = (v7 + v5 - ((2 * (v7 + v5)) & 0xA8F535F8906AB678) - 0x2B856503B7CAA4C4) ^ 0x30E7ED23CF08E442;
  v9 = v8 ^ __ROR8__(v5, 61);
  v10 = (__ROR8__(v8, 8) + v9) ^ 0xF5A2F1B9B5D0B209;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0x5963B6C555D97F1FLL;
  v13 = __ROR8__(v12, 8);
  v14 = v12 ^ __ROR8__(v11, 61);
  v15 = (((2 * ((v13 + v14) ^ 0xE7B5DC45273D63A1)) | 0x504C6837B780C63ELL) - ((v13 + v14) ^ 0xE7B5DC45273D63A1) + 0x57D9CBE4243F9CE1) ^ 0x2ED675740CE22449;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = __ROR8__(v15, 8);
  v18 = __ROR8__((((2 * (v17 + v16)) | 0x4F1E4801C06BB8FCLL) - (v17 + v16) + 0x5870DBFF1FCA2382) ^ 0xC34C380290B10212, 8);
  v19 = (((2 * (v17 + v16)) | 0x4F1E4801C06BB8FCLL) - (v17 + v16) + 0x5870DBFF1FCA2382) ^ 0xC34C380290B10212 ^ __ROR8__(v16, 61);
  v20 = __ROR8__((v3 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v21 = v20 - ((2 * v20 + 0x2A11B965E67D9C56) & 0x86491E2C94CF3D9ALL) - 0x27D29436C2599308;
  v22 = v21 ^ 0xACDCD2D2571791FLL;
  v21 ^= 0xA28B28BABC870843;
  v23 = __ROR8__(v22, 8);
  v24 = __ROR8__((((2 * ((v23 + v21) ^ 0xE86B6D598CE7C62CLL)) & 0x3776BD40C68BCDALL) - ((v23 + v21) ^ 0xE86B6D598CE7C62CLL) - 0x1BBB5EA06345E6ELL) ^ 0xF2B25093F211D8C0, 8);
  v25 = (((2 * ((v23 + v21) ^ 0xE86B6D598CE7C62CLL)) & 0x3776BD40C68BCDALL) - ((v23 + v21) ^ 0xE86B6D598CE7C62CLL) - 0x1BBB5EA06345E6ELL) ^ 0xF2B25093F211D8C0 ^ __ROR8__(v21, 61);
  v26 = (v24 + v25) ^ 0xF5A2F1B9B5D0B209;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0x5963B6C555D97F1FLL;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ v1;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0x64C31C027084DE6CLL;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0x1A2AEBE44253AF03;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (((((v36 + v35 - ((2 * (v36 + v35)) & 0x46C4DEB32D067766) + 0x23626F5996833BB3) ^ 0x88522D8BBE0467F2) >> (8 * ((v3 + 1) & 7))) ^ *(v3 + 1)) << 48) | (((((__ROR8__((v18 + v19) ^ 0x1A2AEBE44253AF03, 8) + ((v18 + v19) ^ 0x1A2AEBE44253AF03 ^ __ROR8__(v19, 61))) ^ 0xAB3042D228875C41) >> (8 * ((((v2 - 85) & (2 * LOBYTE(STACK[0x2A0]))) + (LOBYTE(STACK[0x2A0]) ^ 0x99) + LOBYTE(STACK[0x758]) + 103) & 7))) ^ *v3) << 56);
  v38 = __ROR8__((v3 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v39 = ((2 * (v38 - 0x6AF7234D0CC131D5)) | 0xE988EE55C850EEE4) - (v38 - 0x6AF7234D0CC131D5) + 0xB3B88D51BD7888ELL;
  v40 = v39 ^ 0xBD2D35118B3E90A0;
  v39 ^= 0x156BD08612C8E1FCuLL;
  v41 = (__ROR8__(v40, 8) + v39) ^ 0xE49D77DF873DBF7ELL;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = __ROR8__(v41, 8);
  v44 = (v43 + v42 - ((2 * (v43 + v42)) & 0x6A1EDDA6EAF44D6) - 0x7CAF0912C8A85D95) ^ 0x76F2075482871062;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ 0x5963B6C555D97F1FLL;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ v1;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ 0x64C31C027084DE6CLL;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ 0x1A2AEBE44253AF03;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = __ROR8__(v52, 8);
  v55 = v37 | (((((((v54 + v53) | 0xC0D69FAEA99994B0) - ((v54 + v53) | 0x3F29605156666B4FLL) + 0x3F29605156666B4FLL) ^ 0x6BE6DD7C811EC8F1) >> (8 * ((v3 + 2) & 7))) ^ *(v3 + 2)) << 40);
  v56 = (__ROR8__((v3 + 3) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5) & 0xFBFFFFFFFFFFFFFFLL;
  v57 = v56 ^ 0x4DE9423B6F16E7D2;
  v56 ^= 0xE5AFA7ACF6E0968ELL;
  v58 = (__ROR8__(v57, 8) + v56) ^ 0xE49D77DF873DBF7ELL;
  v59 = v58 ^ __ROR8__(v56, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ 0xF5A2F1B9B5D0B209;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = (__ROR8__(v60, 8) + v61) ^ 0x5963B6C555D97F1FLL;
  v63 = v62 ^ __ROR8__(v61, 61);
  v64 = __ROR8__(v62, 8);
  v65 = (((v64 + v63) | 0xAC2390E6C13EB103) - ((v64 + v63) | 0x53DC6F193EC14EFCLL) + 0x53DC6F193EC14EFCLL) ^ 0xCD660DCC312195F4;
  v66 = v65 ^ __ROR8__(v63, 61);
  v67 = (__ROR8__(v65, 8) + v66) ^ 0x64C31C027084DE6CLL;
  v68 = v67 ^ __ROR8__(v66, 61);
  v69 = __ROR8__(v67, 8);
  v70 = (v69 + v68 - ((2 * (v69 + v68)) & 0xE3F30D59F9F95424) + 0x71F986ACFCFCAA12) ^ 0x6BD36D48BEAF0511;
  v71 = v55 | (((((__ROR8__(v70, 8) + (v70 ^ __ROR8__(v68, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v3 + 3) & 7))) ^ *(v3 + 3)) << 32);
  v72 = __ROR8__((v3 + 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v73 = -2 - (((0x6AF7234D0CC131D4 - v72) | 0x44BA01A51A183DE0) + ((v72 + 0x1508DCB2F33ECE2BLL) | 0xBB45FE5AE5E7C21FLL));
  v74 = __ROR8__(v73 ^ 0xD53439E750EDA32, 8);
  v73 ^= 0xA515A609ECF8AB6ELL;
  v75 = (((2 * ((v74 + v73) ^ 0xBE8B2A9C9DF400CFLL)) & 0xAA23D21ABB2D7C00) - ((v74 + v73) ^ 0xBE8B2A9C9DF400CFLL) + 0x2AEE16F2A26941FFLL) ^ 0x70F84BB1B8A0FE4ELL;
  v76 = v75 ^ __ROR8__(v73, 61);
  v77 = __ROR8__(v75, 8);
  v78 = __ROR8__((((2 * (v77 + v76)) & 0x7D84ABA23E9CFE7ELL) - (v77 + v76) - 0x3EC255D11F4E7F40) ^ 0x349F5B97556132C9, 8);
  v79 = (((2 * (v77 + v76)) & 0x7D84ABA23E9CFE7ELL) - (v77 + v76) - 0x3EC255D11F4E7F40) ^ 0x349F5B97556132C9 ^ __ROR8__(v76, 61);
  v80 = (((v78 + v79) | 0xD44CE57641558F6ELL) - ((v78 + v79) | 0x2BB31A89BEAA7091) + 0x2BB31A89BEAA7091) ^ 0x8D2F53B3148CF071;
  v81 = __ROR8__(v80, 8);
  v82 = v80 ^ __ROR8__(v79, 61);
  v83 = (((2 * (v81 + v82)) & 0x56507D4A3E0F7B40) - (v81 + v82) - 0x2B283EA51F07BDA1) ^ 0xB5925C7010E766A8;
  v84 = v83 ^ __ROR8__(v82, 61);
  v85 = __ROR8__(v83, 8);
  v86 = (((2 * (v85 + v84)) & 0xEEF74AFFBBE4930CLL) - (v85 + v84) + 0x8845A80220DB679) ^ 0x6C47468252896815;
  v87 = v86 ^ __ROR8__(v84, 61);
  v88 = __ROR8__(v86, 8);
  v89 = (((2 * (v88 + v87)) & 0x29B65A41F14458CCLL) - (v88 + v87) - 0x14DB2D20F8A22C67) ^ 0xF10E393B450E7C9ALL;
  v90 = v89 ^ __ROR8__(v87, 61);
  v91 = __ROR8__(v89, 8);
  v92 = v71 & 0xFFFFFFFF00FFFFFFLL | (((((v91 + v90 - ((2 * (v91 + v90)) & 0xDE26E3A15DEF6F6ALL) + 0x6F1371D0AEF7B7B5) ^ 0xC42333028670EBF4) >> (8 * ((v3 + 4) & 7))) ^ *(v3 + 4)) << 24);
  v93 = __ROR8__((v3 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v94 = ((2 * v93 + 0x2A11B965E67D9C56) & 0xCB0FE93C98309366) - v93 + 0x56F2EAEC0A8E821;
  v95 = v94 ^ 0xD391495ADCF1519ELL;
  v94 ^= 0x7BD7ACCD450720C2uLL;
  v96 = __ROR8__(v95, 8);
  v97 = (((v96 + v94) ^ 0x8FF42FE233FDEFE0 | 0xCCF5982A4DA0F226) - ((v96 + v94) ^ 0x8FF42FE233FDEFE0 | 0x330A67D5B25F0DD9) + 0x330A67D5B25F0DD9) ^ 0xA79CC017F960A2B8;
  v98 = v97 ^ __ROR8__(v94, 61);
  v99 = (__ROR8__(v97, 8) + v98) ^ 0xF5A2F1B9B5D0B209;
  v100 = v99 ^ __ROR8__(v98, 61);
  v101 = (__ROR8__(v99, 8) + v100) ^ 0x5963B6C555D97F1FLL;
  v102 = v101 ^ __ROR8__(v100, 61);
  v103 = __ROR8__(v101, 8);
  v104 = (((2 * (v103 + v102)) | 0x6B60C641F567F5AALL) - (v103 + v102) - 0x35B06320FAB3FAD5) ^ 0x54F5FE0A0AACDE22;
  v105 = v104 ^ __ROR8__(v102, 61);
  v106 = (__ROR8__(v104, 8) + v105) ^ 0x64C31C027084DE6CLL;
  v107 = v106 ^ __ROR8__(v105, 61);
  v108 = (__ROR8__(v106, 8) + v107) ^ 0x1A2AEBE44253AF03;
  v109 = v92 & 0xFFFFFFFFFF00FFFFLL | (((((__ROR8__(v108, 8) + (v108 ^ __ROR8__(v107, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v3 + 5) & 7))) ^ *(v3 + 5)) << 16);
  v110 = (__ROR8__((v3 + 6) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5) & 0xFBFFFFFFFFFFFFFFLL;
  v111 = (__ROR8__(v110 ^ 0x4DE9423B6F16E7D2, 8) + (v110 ^ 0xE5AFA7ACF6E0968ELL)) ^ 0xE49D77DF873DBF7ELL;
  v112 = v111 ^ __ROR8__(v110 ^ 0xE5AFA7ACF6E0968ELL, 61);
  v113 = __ROR8__(v111, 8);
  v114 = (v113 + v112 - ((2 * (v113 + v112)) & 0x10D88C22F14EF5CLL) + 0x86C461178A77AELL) ^ 0xF52435D8A25AC5A7;
  v115 = v114 ^ __ROR8__(v112, 61);
  v116 = (__ROR8__(v114, 8) + v115) ^ 0x5963B6C555D97F1FLL;
  v117 = v116 ^ __ROR8__(v115, 61);
  v118 = __ROR8__(v116, 8);
  v119 = (((2 * (v118 + v117)) | 0xF8F4D7410A173B82) - (v118 + v117) - 0x7C7A6BA0850B9DC1) ^ 0x1D3FF68A7514B936;
  v120 = v119 ^ __ROR8__(v117, 61);
  v121 = (__ROR8__(v119, 8) + v120) ^ 0x64C31C027084DE6CLL;
  v122 = v121 ^ __ROR8__(v120, 61);
  v123 = __ROR8__(v121, 8);
  v124 = (((v123 + v122) & 0x865B83655FEF6F5 ^ 0x2498320576F0D5) + ((v123 + v122) & 0xF79A47C9AA01090ALL ^ 0xC68006C000000803) - 1) ^ 0xDC8E7516472557D4;
  v125 = v109 & 0xFFFFFFFFFFFF00FFLL | (((((__ROR8__(v124, 8) + (v124 ^ __ROR8__(v122, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v3 + 6) & 7))) ^ *(v3 + 6)) << 8);
  v126 = *(v3 + 7);
  v3 += 7;
  v127 = __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8);
  v128 = ((2 * (v127 - 0x6AF7234D0CC131D5)) | 0x804B0297E5FB7EA4) - (v127 - 0x6AF7234D0CC131D5) - 0x4025814BF2FDBF52;
  v129 = v128 ^ 0x9CCC3709DEB5880;
  v128 ^= 0xA18A26E7041D29DCLL;
  v130 = __ROR8__(v129, 8);
  v131 = (((2 * (v130 + v128)) & 0xC07D41EEC5780520) - (v130 + v128) + 0x1FC15F089D43FD6FLL) ^ 0xFB5C28D71A7E4211;
  v132 = v131 ^ __ROR8__(v128, 61);
  v133 = __ROR8__(v131, 8);
  v134 = (v133 + v132 - ((2 * (v133 + v132)) & 0xC66D97DBD851D3B2) - 0x1CC9341213D71627) ^ 0x16943A5459F85BD0;
  v135 = v134 ^ __ROR8__(v132, 61);
  v136 = __ROR8__(v134, 8);
  v137 = (((2 * (v136 + v135)) | 0x341E0CCC86BF04E6) - (v136 + v135) + 0x65F0F999BCA07D8DLL) ^ 0xC36CB0A31686FD6CLL;
  v138 = v137 ^ __ROR8__(v135, 61);
  v139 = __ROR8__(v137, 8);
  v140 = __ROR8__((v139 + v138 - ((2 * (v139 + v138)) & 0xA996373FDA7782A4) + 0x54CB1B9FED3BC152) ^ 0x358E86B51D24E5A5, 8);
  v141 = (v139 + v138 - ((2 * (v139 + v138)) & 0xA996373FDA7782A4) + 0x54CB1B9FED3BC152) ^ 0x358E86B51D24E5A5 ^ __ROR8__(v138, 61);
  v142 = (v140 + v141) ^ 0x64C31C027084DE6CLL;
  v143 = v142 ^ __ROR8__(v141, 61);
  v144 = __ROR8__(v142, 8);
  v145 = (v144 + v143 - ((2 * (v144 + v143)) & 0xAB9BCCB5A89BD69ALL) + 0x55CDE65AD44DEB4DLL) ^ 0x4FE70DBE961E444ELL;
  v146 = v145 ^ __ROR8__(v143, 61);
  v147 = __ROR8__(v145, 8);
  v148 = v125 | ((((((2 * (v147 + v146)) & 0x970A9B9F1F62DE94) - (v147 + v146) - 0x4B854DCF8FB16F4BLL) ^ 0x1F4AF0E258C9CCF4) >> (8 * (v3 & 7u))) ^ v126);
  STACK[0x400] = v148 - ((2 * v148) & 0x8F13CB4E9EA6B5BALL) + 0x4789E5A74F535ADDLL;
  return sub_1001895D0();
}

uint64_t sub_1001895D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x728] = STACK[0x9D8];
  LODWORD(STACK[0x8B0]) = STACK[0x9CC];
  LOWORD(STACK[0x6F6]) = STACK[0x9D2];
  LODWORD(STACK[0x634]) = STACK[0x9D4];
  return sub_100189604(a1, a2, a3, a4, a5, a6, (v6 + 4420));
}

uint64_t sub_100189CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a14 = &a10;
  a16 = 1317436891 * (((&a14 | 0xCA273CD1) + (~&a14 | 0x35D8C32E)) ^ 0x7A24A4A6) + 8154;
  v19 = (*(v16 + 77096))(&a14);
  return (*(v16 + 8 * ((6817 * (a15 == v17)) ^ v18)))(v19);
}

uint64_t sub_10018A884(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 16257999)
  {
    v7 = STACK[0x420];
    v8 = *(STACK[0x420] + 8);
    v9 = STACK[0x998];
    v9[1] = v8;
    *v9 = *v7;
    return (*(v5 + 8 * (((v8 == 0) * (v4 - 17098 + 20 * (v4 ^ 0x25AA))) ^ (v4 - 946))))();
  }

  else if (a4 == 16215947)
  {
    return (*(v5 + 8 * (((((v4 ^ (*(STACK[0x850] + 8) == 0)) & 1) == 0) * ((v4 - 1786) ^ 0x1D1A)) ^ (v4 - 6168))))();
  }

  else
  {
    return sub_10018A8EC();
  }
}

uint64_t sub_10018AA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x330]) = 197499223;
  STACK[0x370] = STACK[0x778] + 24;
  LODWORD(STACK[0x2A0]) = LODWORD(STACK[0x9A4]) ^ 0xD6A561FA;
  v63 = LOWORD(STACK[0x99E]);
  LODWORD(STACK[0x320]) = v63;
  LODWORD(STACK[0x300]) = v63 ^ 0x4CF9;
  STACK[0x360] = STACK[0x440] + 24;
  v64 = LOWORD(STACK[0xA7E]);
  LODWORD(STACK[0x310]) = v64;
  LODWORD(STACK[0x2F0]) = v64 ^ 0xFFFFA60A;
  LODWORD(STACK[0x290]) = LODWORD(STACK[0xA84]) ^ 0xD6A561FA;
  STACK[0x350] = STACK[0x4C0] + 24;
  STACK[0x340] = STACK[0x7B8] + 24;
  v65 = STACK[0x9A0];
  LODWORD(STACK[0x2C0]) = STACK[0x9A0];
  LODWORD(STACK[0x2E0]) = v65 ^ 0xD6A561FA;
  v66 = STACK[0xA80];
  LODWORD(STACK[0x2B0]) = STACK[0xA80];
  LODWORD(STACK[0x2D0]) = v66 ^ 0xD6A561FA;
  return sub_10017EC50(0x126AA61F6F56C0D8, a2, 0x2A5638492DD55EAELL, 0x4C48AAE1C333D048, 0xEAD4E3DB691550A9, 169, 0x64C31C027084DE6CLL, 0x61459D2AF01F24F7, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

void sub_10018AA78()
{
  v0 = *(&off_100BFFA10 + ((-85 * ((dword_100CBC1F0 + dword_100CBC228) ^ 0xDF)) ^ byte_1009D3FD0[byte_1009C9A60[(-85 * ((dword_100CBC1F0 + dword_100CBC228) ^ 0xDF))] ^ 0xEE]) - 106);
  v1 = -85 * ((dword_100CBC1F0 + *v0) ^ 0xDF);
  v2 = *(&off_100BFFA10 + (byte_1009DAFB8[(byte_1009D40D8[v1 - 8] ^ 0xBF) - 8] ^ v1) - 14);
  v3 = &v5[*v2 - *v0];
  *v0 = 2054362027 * v3 + 0x1FC86B74B1533AF5;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * (((v6 | 0xE77584D2) - v6 + (v6 & 0x188A7B28)) ^ 0xD56EDF42);
  LOBYTE(v2) = -85 * ((*v2 + *v0) ^ 0xDF);
  v4 = *(&off_100BFFA10 + ((-85 * ((dword_100CBC1F0 - dword_100CBC228) ^ 0xDF)) ^ byte_1009DAFB0[byte_1009D40D0[(-85 * ((dword_100CBC1F0 - dword_100CBC228) ^ 0xDF))] ^ 1]) + 92) - 8;
  (*&v4[8 * (byte_1009C9D6C[(byte_1009E331C[v2 - 12] ^ 0xD9) - 12] ^ v2) + 75248])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10018AD00()
{
  (*(v2 + 8 * (v0 ^ 0x3FCE)))(v1);
  STACK[0x578] = 0;
  return (*(v2 + 8 * (((STACK[0x7D8] != 0) * (((v0 + 1511357844) & 0xA5EA6DAD) - 1372)) ^ (v0 + 1872))))();
}

uint64_t sub_10018AD64@<X0>(int a1@<W8>)
{
  v2 = STACK[0x508];
  STACK[0x470] = *(v1 + 8 * a1);
  return sub_1001C9B44(v2);
}

void sub_10018ADE0()
{
  *v1 = v0;
  v1[1] = v0;
  JUMPOUT(0x10018AE00);
}

uint64_t sub_10018AE5C@<X0>(unint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  v5 = (*(((2 * (a4 + 6)) & 0x3F1E7FB3FDF7177CLL) + ((a4 + 6) ^ 0x1F8F3FD9FEFB8BBELL) + a2 - 0x1F8F3FD9FEFB8BBELL) << 24) | (*(((2 * (a4 + 6)) & 0x3F1E7FB3FDF7177CLL) + ((a4 + 6) ^ 0x1F8F3FD9FEFB8BBELL) + a2 - 0x1F8F3FD9FEFB8BBDLL) << 16) | (*(((2 * (a4 + 6)) & 0x3F1E7FB3FDF7177CLL) + ((a4 + 6) ^ 0x1F8F3FD9FEFB8BBELL) + a2 - 0x1F8F3FD9FEFB8BBCLL) << 8);
  v6 = *(((2 * (a4 + 6)) & 0x3F1E7FB3FDF7177CLL) + ((a4 + 6) ^ 0x1F8F3FD9FEFB8BBELL) + a2 - 0x1F8F3FD9FEFB8BBBLL);
  v7 = (((v5 | v6) + 197499219 - 2 * ((v5 | v6) & 0xBC5995F ^ v6 & 0xC)) ^ 0xBC59953u) + a4 + 10 <= a1;
  v8 = *(a3 + 8 * ((v7 | (4 * v7)) ^ v4));
  STACK[0x2A8] = a2;
  return v8();
}

uint64_t sub_10018AF58(uint64_t a1)
{
  v1 = *a1 + 956911519 * ((((2 * a1) | 0x28A16880) - a1 - 340833344) ^ 0xFEC1C445);
  v2 = *(a1 + 8);
  v8 = v2[1];
  v3 = (1824088897 * (&v7 ^ 0x5869D362)) ^ (v1 + 501374782);
  v9 = v3;
  v4 = (*(&off_100BFFA10 + v1 + 501366715) + 8 * (v1 ^ 0xE21DE4D0));
  (*(v4 - 1))(&v7);
  v5 = *v2;
  v9 = v3;
  v8 = v5;
  return (*(v4 - 1))(&v7);
}

void sub_10018B078(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v59 = 257 * (v57 ^ 0x774);
  (*(v58 + 8 * (v57 ^ 0x22F9)))(a1);
  *(STACK[0x538] + 24) = 0;
  (*(a57 + 8 * (v59 + 7291)))();
  STACK[0x538] = 0;
  JUMPOUT(0x1001A3430);
}

void sub_10018B120()
{
  v0 = *(&off_100BFFA10 + ((-85 * (dword_100CBC398 ^ 0xDF ^ dword_100CBC1F0)) ^ byte_1009DAFB0[byte_1009D40D0[(-85 * (dword_100CBC398 ^ 0xDF ^ dword_100CBC1F0))] ^ 0xBF]) + 48);
  v1 = *(v0 - 4);
  v2 = *(&off_100BFFA10 + (byte_1009C9D60[byte_1009E3310[(-85 * ((dword_100CBC1F0 - v1) ^ 0xDF))] ^ 0xB1] ^ (-85 * ((dword_100CBC1F0 - v1) ^ 0xDF))) + 156);
  v3 = *v2 - v1 - &v5;
  *(v0 - 4) = 2054362027 * (v3 - 0xB4207763EF64BDFLL);
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * ((((2 * (v6 ^ 0xBF49A99E)) | 0xF34E26A2) - (v6 ^ 0xBF49A99E) + 106491055) ^ 0x74F5E15F);
  LOBYTE(v2) = -85 * ((*v2 - *(v0 - 4)) ^ 0xDF);
  v4 = *(&off_100BFFA10 + ((-85 * ((dword_100CBC1F0 + dword_100CBC398) ^ 0xDF)) ^ byte_1009C9D60[byte_1009E3310[(-85 * ((dword_100CBC1F0 + dword_100CBC398) ^ 0xDF))] ^ 0x71]) + 120) - 8;
  (*&v4[8 * (v2 ^ byte_1009C9D60[byte_1009E3310[v2] ^ 0xB1]) + 76728])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10018B350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, unsigned int a17, uint64_t a18)
{
  v24 = v21 ^ 0x30DCBEBE;
  v25 = (2 * v21) & 0x61B97D7C;
  v26 = v23 + 6415;
  v27 = 1875091903 * (((&a15 | 0x294378EE) - (&a15 & 0x294378EE)) ^ 0x1F36FB6D);
  a18 = a13;
  a16 = v24 + v25 + (v23 ^ 0x10) - 281021729 + v27;
  a17 = v23 + 6415 + v27;
  (*(v22 + 8 * (v23 ^ 0x20B0)))(&a15);
  v28 = 1875091903 * ((((2 * &a15) | 0x30D4F6EE) - &a15 + 1737852041) ^ 0xAE1FF8F4);
  a18 = a13;
  a16 = ((2 * v20) & 0xFFBB7F56) + ((v23 - 2246002) ^ v20) + 540997375 + v28;
  a17 = v23 + 6415 + v28;
  (*(v22 + 8 * (v23 ^ 0x20B0)))(&a15);
  if (v19)
  {
    v29 = 538752682;
  }

  else
  {
    v29 = 538752683;
  }

  v30 = 1875091903 * ((&a15 + 1400552204 - 2 * (&a15 & 0x537ABB0C)) ^ 0x650F388F);
  a18 = a13;
  a16 = v30 + v29;
  a17 = v26 + v30;
  (*(v22 + 8 * (v23 ^ 0x20B0)))(&a15);
  v31 = *v18 ^ 0xF51FBFBB;
  v32 = (2 * *v18) & 0xEA3F7F76;
  v33 = 1875091903 * ((&a15 - 1955118577 - 2 * (&a15 & 0x8B77420F)) ^ 0xBD02C18C);
  a18 = a13;
  a16 = v33 + v31 + v32 + 721221359;
  a17 = v26 + v33;
  v34 = (*(v22 + 8 * (v23 + 8336)))(&a15);
  return (*(v22 + 8 * ((3180 * (a15 == 16257999)) ^ v23)))(v34);
}

uint64_t sub_10018B588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *v5 = v4;
  *(v4 + 8) = *(a4 + 8);
  *(a4 + 8) = v4;
  return sub_10013EDD0(a1, a2, a3);
}

uint64_t sub_10018B5A4(uint64_t a1)
{
  v6 = (v3 ^ 0xFFFFFFFFFFFFFBEBLL ^ (v4 - 1970)) + v1;
  *(a1 - 7 + v6) = *(v2 - 7 + v6);
  return (*(v5 + 8 * ((5819 * (v3 + 8 == v1)) ^ v4)))();
}

uint64_t sub_10018B5F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, unint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x9D4]) = a7;
  v67 = (a7 ^ v65) + STACK[0x2A0];
  STACK[0x9D8] = v67;
  return (*(v66 + 8 * ((a65 - 4385) | (v67 <= a30))))(a1, a2, a3, a4, a5, a6, a65);
}

uint64_t sub_10018B650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * ((50 * (v6 != 0)) ^ (v2 + v4 + 2484))))();
}

uint64_t sub_10018B684@<X0>(uint64_t a1@<X8>)
{
  STACK[0x838] = 0;
  STACK[0x590] = 0;
  STACK[0x540] = *(v3 + 8 * v2);
  return sub_100152998(a1);
}

uint64_t sub_10018B6B4@<X0>(int a1@<W8>)
{
  v2 = STACK[0x858];
  STACK[0x4D0] = *(v1 + 8 * a1);
  return sub_1001CF524(v2);
}

uint64_t sub_10018B818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v23 = (((&a14 | 0x939556B5) - &a14 + (&a14 & 0x6C6AA948)) ^ 0xCBFC85D7) * v21;
  a18 = -654855621 - v23;
  a19 = v23 + v22 + 1674575463;
  a15 = v23 - 1869903813;
  a16 = a11;
  a17 = &a10;
  v24 = (*(v19 + 8 * (v22 + 5957)))(&a14);
  return (*(v19 + 8 * ((7020 * (a14 == v20 + (v22 ^ 0x1A42) - 2359 - 2762)) ^ v22)))(v24);
}

uint64_t sub_10018B91C@<X0>(uint64_t a1@<X8>)
{
  v7 = v2 - 2749;
  v8 = 38 * ((v2 - 2749) ^ 0x64E);
  v9 = STACK[0x568];
  v10 = 1358806181 * (((v5 - 232) & 0xB4C1DC2B | ~((v5 - 232) | 0xB4C1DC2B)) ^ 0x74114F57);
  *(v5 - 232) = a1;
  *(v5 - 216) = v1;
  *(v5 - 208) = a1;
  *(v5 - 200) = (v4 ^ 0xBD9DD73B ^ v8) + v10;
  *(v5 - 192) = v9;
  *(v5 - 224) = v10 + v7 + 3183;
  *(v5 - 220) = (v3 ^ 0x7D69FA95) - v10 + ((2 * v3) & 0xFAD3F52A) - 268509824;
  v11 = (*(v6 + 8 * (v7 + 7941)))(v5 - 232);
  return (*(v6 + 8 * (((*(v5 - 196) == ((v8 + 1528584040) & 0xA4E3AB4F) + 16255365) * (((v8 - 1937) | 0xE78) - 889)) ^ v8)))(v11);
}

uint64_t sub_10018BA40@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = a2 ^ 0x156D;
  result = (*(v5 + 8 * (a2 + 4199)))(a1, v3, 4096);
  if (result >= 833 * v6 - 7496)
  {
    v8 = 16257999;
  }

  else
  {
    v8 = v4;
  }

  *(v2 + 8) = v8;
  return result;
}

uint64_t sub_10018BA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, uint64_t a14, uint64_t *a15, unsigned int a16, int a17)
{
  v21 = ((&a12 - 910348272 - 2 * (&a12 & 0xC9BD3010)) ^ 0x91D4E372) * v19;
  a16 = -654855621 - v21;
  a17 = v21 + v20 + 1674578184;
  a14 = a11;
  a15 = &a9;
  a13 = v21 + 1365278254;
  v22 = (*(v17 + 8 * (v20 ^ 0x262A)))(&a12);
  return (*(v17 + 8 * ((1190 * (a12 == ((v18 + ((v20 + 886831597) & 0xCB240675) + 1474) ^ ((v20 + 2655) | 0x58)))) ^ v20)))(v22);
}

void sub_10018BB84(uint64_t a1@<X8>)
{
  v7 = 74 * (v3 ^ 0x170A);
  v8 = 1358806181 * ((((v6 - 232) | 0x3C74305A) - ((v6 - 232) & 0x3C74305A)) ^ 0x35B5CD9);
  *(v6 - 192) = STACK[0x428];
  *(v6 - 216) = v1;
  *(v6 - 208) = a1;
  *(v6 - 200) = (v2 ^ 0xBD9DD0A9) + v8;
  *(v6 - 224) = v8 + v7 - 780;
  *(v6 - 220) = (v4 ^ 0x7F68DF57) - v8 + ((v4 << (v7 + 9)) & 0xFED1BEAE) - 301991746;
  *(v6 - 232) = a1;
  (*(v5 + 8 * (v7 + 3978)))(v6 - 232);
  JUMPOUT(0x1001485E8);
}

void sub_10018BC54()
{
  STACK[0x440] = STACK[0x628];
  LODWORD(STACK[0x820]) = STACK[0x8B4];
  sub_100110CD0();
}

void sub_10018BC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a6)
  {
    v7 = a7 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10018BD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = v12 + v10;
  v14 = (v13 ^ 0xE7790A74) & (2 * (v13 & 0xF779AB65)) ^ v13 & 0xF779AB65;
  v15 = ((2 * (v13 ^ 0x69080CB6)) ^ 0x3CE34FA6) & (v13 ^ 0x69080CB6) ^ (2 * (v13 ^ 0x69080CB6)) & 0x9E71A7D2;
  v16 = v15 ^ 0x8210A051;
  v17 = (v15 ^ 0x1C610780) & (4 * v14) ^ v14;
  v18 = ((4 * v16) ^ 0x79C69F4C) & v16 ^ (4 * v16) & 0x9E71A7D0;
  v19 = (v18 ^ 0x18408740) & (16 * v17) ^ v17;
  v20 = ((16 * (v18 ^ 0x86312093)) ^ 0xE71A7D30) & (v18 ^ 0x86312093) ^ (16 * (v18 ^ 0x86312093)) & 0x9E71A7D0;
  v21 = v19 ^ 0x9E71A7D3 ^ (v20 ^ 0x86102500) & (v19 << 8);
  v22 = v13 ^ (2 * ((v21 << 16) & 0x1E710000 ^ v21 ^ ((v21 << 16) ^ 0x27D30000) & (((v20 ^ 0x186182C3) << 8) & 0x1E710000 ^ 0xE500000 ^ (((v20 ^ 0x186182C3) << 8) ^ 0x71A70000) & (v20 ^ 0x186182C3))));
  v24 = v22 == -952572733 || (v22 & 0xF) != 3;
  return (*(a1 + 8 * (((((v11 - 2790) | 0x41C) - 5298) * v24) ^ v11)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_10018BE90@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v60 = a1 - v57 + 531232226;
  v61 = ((v60 & 0xE0560A38) << (((v58 - 109) & 0xDB) - 90)) & (v60 ^ 0xF0476831) ^ v60 & 0xE0560A38;
  v62 = ((2 * (v60 ^ 0x30EB7C21)) ^ 0xA17AEC32) & (v60 ^ 0x30EB7C21) ^ (2 * (v60 ^ 0x30EB7C21)) & 0xD0BD7618;
  v63 = v62 ^ 0x50851209;
  v64 = (v62 ^ 0xD03D6209) & (4 * v61) ^ v61;
  v65 = ((4 * v63) ^ 0x42F5D864) & v63 ^ (4 * v63) & 0xD0BD7618;
  v66 = (v65 ^ 0x40B55019) & (16 * v64) ^ v64;
  v67 = ((16 * (v65 ^ 0x90082619)) ^ 0xBD76190) & (v65 ^ 0x90082619) ^ (16 * (v65 ^ 0x90082619)) & 0xD0BD7610;
  v68 = v66 ^ 0xD0BD7619 ^ (v67 ^ 0x956009) & (v66 << 8);
  v69 = v60 ^ (2 * ((v68 << 16) & 0x50BD0000 ^ v68 ^ ((v68 << 16) ^ 0x76190000) & (((v67 ^ 0xD0281609) << 8) & 0x50BD0000 ^ 0x40890000 ^ (((v67 ^ 0xD0281609) << 8) ^ 0x3D760000) & (v67 ^ 0xD0281609))));
  LODWORD(STACK[0x5DC]) = v69 ^ 0xEADB7F59;
  v70 = (*(v59 + 8 * (v58 + 1974)))(v69 ^ 0xE11EE60A, 0x100004077774924);
  STACK[0x710] = v70;
  return (*(a57 + 8 * (((v70 == 0) | (16 * (v70 == 0))) ^ v58)))();
}

uint64_t sub_10018C068@<X0>(int a1@<W8>)
{
  (*(v2 + 8 * (a1 ^ 0x37AA)))(v1);
  STACK[0x7A8] = 0;
  return sub_1001BD60C();
}

void sub_10018C0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x790] = 0;
  STACK[0x518] = *(a64 + 8 * (v64 - 2382));
  JUMPOUT(0x10017F2C8);
}

uint64_t sub_10018C120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, uint64_t a15, char a16, int a17, int a18, char a19, int a20, unsigned int a21, uint64_t a22, char *a23, unsigned int a24, char *a25)
{
  a24 = (v26 + 1305603844) ^ (1358806181 * ((2 * (&a20 & 0x5DBC5E80) - &a20 - 1572626056) ^ 0x9D6CCDFB));
  a25 = &a19;
  a22 = a15;
  a23 = &a16;
  (*(v27 + 8 * (v26 + 5393)))(&a20);
  a22 = a15;
  a23 = &a14;
  a21 = (v26 - 1061) ^ (33731311 * ((&a20 - 1420760676 - 2 * (&a20 & 0xAB50E99C)) ^ 0x92A623BF));
  (*(v27 + 8 * (v26 ^ 0x35A8)))(&a20);
  a22 = a15;
  LODWORD(a23) = v26 - 2008441969 * (((&a20 | 0x9F5837C4) - &a20 + (&a20 & 0x60A7C838)) ^ 0xD7C163CA) + 1372;
  v28 = (*(v27 + 8 * (v26 + 5338)))(&a20);
  return (*(v27 + 8 * (((a20 == v25) * ((v26 + 2861) ^ 0xF87 ^ (2902 * (v26 ^ 0x10C3)))) ^ v26)))(v28);
}

uint64_t sub_10018C2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = LOWORD(STACK[0x9A6]);
  STACK[0x6C0] = STACK[0x9A8];
  return (*(v71 + 8 * ((6056 * (v72 == (a71 + 11077))) ^ (a71 - 4096))))();
}

void sub_10018C300()
{
  *&STACK[0x3B0] = vdupq_n_s64(0x9AB21C279A9FA3B4);
  *&STACK[0x3C0] = vdupq_n_s64(v1);
  *&STACK[0x390] = vdupq_n_s64(0xFC06D5ED7418C184);
  *&STACK[0x3A0] = vdupq_n_s64(0x23E8DF0DACD2C3BDuLL);
  *&STACK[0x370] = vdupq_n_s64(v2);
  *&STACK[0x380] = vdupq_n_s64(0x48785223880F4E9EuLL);
  *&STACK[0x350] = vdupq_n_s64(0x738A5B9B3A13903AuLL);
  *&STACK[0x360] = vdupq_n_s64(0x18EB48C98BD8DF8CuLL);
  *&STACK[0x330] = vdupq_n_s64(0x57D072DFC3A5F657uLL);
  *&STACK[0x340] = vdupq_n_s64(0xC4AB9D20D7B66D92);
  *&STACK[0x310] = vdupq_n_s64(0x16297ECC4BDE2FAEuLL);
  *&STACK[0x320] = vdupq_n_s64(0x2C52FD9897BC5F5CuLL);
  *&STACK[0x2F0] = vdupq_n_s64(v0);
  *&STACK[0x300] = vdupq_n_s64(0xE44B7CAA9406F12CLL);
  *&STACK[0x2D0] = vdupq_n_s64(0x5202C593F84559D0uLL);
  *&STACK[0x2E0] = vdupq_n_s64(v3);
  *&STACK[0x2B0] = vdupq_n_s64(0xE3CC50A6FE864535);
  *&STACK[0x2C0] = vdupq_n_s64(0xD6FE9D3603DD5317);
  *&STACK[0x290] = vdupq_n_s64(0x6AF7234D0CC131D4uLL);
  *&STACK[0x2A0] = vdupq_n_s64(0x1508DCB2F33ECE2BuLL);
  *&STACK[0x280] = vdupq_n_s64(0xA03A397A7DAB0203);
  *&STACK[0x270] = xmmword_1009E3420;
  JUMPOUT(0x10018C570);
}

uint64_t sub_10018CFDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, int a3@<W5>, uint64_t a4@<X8>)
{
  v12 = a4 + ((a3 - 1123) ^ 0x15FFLL) + a2;
  v13 = __ROR8__(v12 & 0xFFFFFFFFFFFFFFF8, 8);
  v14 = v13 - ((2 * v13 + 0x2A11B965E67D9C56) & v5) + v6;
  v15 = v14 ^ v7;
  v16 = v14 ^ v8;
  v17 = (__ROR8__(v15, 8) + v16) ^ 0xE49D77DF873DBF7ELL;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0xF5A2F1B9B5D0B209;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0x5963B6C555D97F1FLL;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  v24 = ((v9 & (2 * (v23 + v22))) - (v23 + v22) + v10) ^ a1;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = a2 - 1;
  v27 = (__ROR8__(v24, 8) + v25) ^ 0x64C31C027084DE6CLL;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ 0x1A2AEBE44253AF03;
  *v12 = (((__ROR8__(v29, 8) + (v29 ^ __ROR8__(v28, 61))) ^ 0xAB3042D228875C41) >> (8 * (v12 & 7u))) ^ *(v4 + v26);
  return (*(v11 + 8 * ((1938 * (v26 == 0)) ^ a3)))();
}

uint64_t sub_10018D12C@<X0>(uint64_t a1@<X8>)
{
  *v3 = v2;
  *(v2 + 8) = *(a1 + 8);
  *(a1 + 8) = v2;
  return sub_100176DF0();
}

uint64_t sub_10018D36C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 16257999)
  {
    v7 = STACK[0x6B0];
    v8 = *(STACK[0x6B0] + 8);
    v9 = STACK[0x750];
    v9[1] = v8;
    *v9 = *v7;
    return (*(v5 + 8 * (((((v8 == 0) ^ (3 * (v4 ^ 0x11))) & 1) * (((v4 - 542) | 0x158) ^ 0x235E)) | (v4 - 2957))))();
  }

  else if (a4 == 16215947)
  {
    return (*(v5 + 8 * (((*(STACK[0x7A8] + 8) == 0) * ((v4 ^ 0x3E56) + v4 - 15789)) ^ (v4 - 8114))))();
  }

  else
  {
    return sub_10018D3D4();
  }
}

void sub_10018D490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x420]) = v12;
  LODWORD(STACK[0x3F0]) = a5;
  LODWORD(STACK[0x3FC]) = v11;
  v14 = (LODWORD(STACK[0x524]) - 1439664961) & 0x55CF8F69;
  LODWORD(STACK[0x404]) = v9 - 1055721099;
  LODWORD(STACK[0x400]) = v10 - 588423315;
  LODWORD(STACK[0x3F8]) = v13 + v14 - 1098362327;
  LODWORD(STACK[0x3F4]) = a8 - 1148183754;
  LODWORD(STACK[0x3E8]) += LODWORD(STACK[0x570]);
  LODWORD(STACK[0x3E0]) = v8 + 64;
  JUMPOUT(0x1000576C4);
}

uint64_t sub_10018D578@<X0>(int a1@<W8>)
{
  STACK[0x9A8] = v1;
  v3 = STACK[0x3F0];
  STACK[0x9B0] = STACK[0x3F0];
  return (*(v2 + 8 * ((((((a1 - 1421427491) ^ (v1 - v3 > 9)) & 1) == 0) * (a1 - 7541)) ^ (a1 - 4531))))();
}

uint64_t sub_10018D634@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  STACK[0x3D0] = *(a1 + 8 * v2);
  STACK[0x8A0] = 0;
  return (*(a1 + 8 * ((126 * (((a2 ^ (STACK[0x8A0] < 0x20)) & 1) == 0)) ^ a2)))(0xF5A2F1B9B5D0B209, 0xE49D77DF873DBF7ELL, 0x64C31C027084DE6CLL, 0x43E0E1A1BF0A5C84, 0x4191986715653828, 0x5BBB73835736972BLL, 177, 0x5E0F8F2F207AD1BELL);
}

uint64_t sub_10018D7C4()
{
  v2 = (v0 + 1242020879) & 0xB5F85FF6;
  v3 = STACK[0x718];
  v4 = v2 ^ LODWORD(STACK[0x898]) ^ 0x472AD13;
  STACK[0x4C0] = *(v1 + 8 * v0);
  STACK[0x670] = &STACK[0x8A0];
  LODWORD(STACK[0x630]) = v4;
  STACK[0x698] = v3;
  STACK[0x548] = 0;
  LODWORD(STACK[0x944]) = 197499219;
  STACK[0x8F0] = 0x431A33AA2E6D965FLL;
  STACK[0x490] = 0;
  v5 = (*(v1 + 8 * (v2 + 1996)))(16, 0x20040A4A59CD2);
  STACK[0x840] = v5;
  return (*(v1 + 8 * (((v5 == 0) * ((v2 - 1547) ^ ((v2 - 5608) | 0x11) ^ 0x1000)) ^ v2)))();
}

uint64_t sub_10018D8A4()
{
  v2 = *(STACK[0x508] + 24);
  STACK[0x360] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((v0 - 3772) ^ 0xFFFFE389) + v0 - 6845)) ^ v0)))();
}

void sub_10018D8F0(uint64_t a1@<X8>)
{
  *v2 = v1;
  *(v1 + 8) = *(a1 + 8);
  *(a1 + 8) = v1;
  JUMPOUT(0x10018D918);
}

uint64_t sub_10018D998(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0x950] = v1 ^ 0xBC59953u;
  *(a1 + 16) = (((v1 ^ 0x9DD4610F) + 1647025905) ^ ((v1 ^ 0x8C1A465E) + 1944435106) ^ ((v1 ^ 0x1A0BBE02) - 436978039 + ((23 * ((v2 + 2318) ^ 0x1D90)) ^ 0x1710))) + 197499229;
  v4 = STACK[0x3E8];
  v5 = (*(STACK[0x3E8] + 8 * ((v2 + 2318) ^ 0x38D1)))();
  *(a1 + 24) = v5;
  return (*(v4 + 8 * ((232 * (v5 != 0)) ^ (v2 + 2318))))();
}

void sub_10018DAB8(uint64_t a1@<X8>)
{
  v3 = (v1 + 404377037) & 0xE7E5AFBF;
  (*(v2 + 8 * (v1 + 7267)))(a1);
  *(STACK[0x5E0] + 24) = 0;
  (*(v2 + 8 * (v3 + 7894)))();
  STACK[0x5E0] = 0;
  JUMPOUT(0x1000F7A28);
}

uint64_t sub_10018DB18(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t (*a57)(void))
{
  *a4 = a1;
  *a5 = a47;
  return a57();
}

uint64_t sub_10018DB3C(uint64_t a1)
{
  v5 = ((v1 ^ 0x18D1) - 594650992) & 0x23719FFE;
  *v3 = a1;
  *v2 = v8;
  v6 = 706 * (v5 ^ 0xCFD);
  v13 = (v5 + 5020) ^ (1824088897 * ((2 * (&v11 & 0x158224C8) - &v11 - 360850639) ^ 0xB2140853));
  v12 = v9;
  (*(v4 + 8 * (v5 ^ 0x2972)))(&v11);
  v13 = (v6 + 6228) ^ (1824088897 * ((&v11 & 0x5F793CDE | ~(&v11 | 0x5F793CDE)) ^ 0xF8EF1043));
  v12 = v10;
  (*(v4 + 8 * (v6 ^ 0x2DCA)))(&v11);
  return 0;
}

uint64_t sub_10018DCC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, unsigned int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, unsigned int a24)
{
  v26 = a17 < a16;
  if (v26 == a24 > 0xA421C5B9)
  {
    v26 = a24 + ((v24 - 1166) ^ 0x5BDE3708) < a17;
  }

  return (*(v25 + 8 * ((!v26 * ((53 * (v24 ^ 0x11DE)) ^ 0x39B)) ^ v24)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t sub_10018DD50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, int a63)
{
  v65 = v63 == (a63 ^ 0x1BF7) - 328594303;
  LOBYTE(STACK[0x57F]) = v65;
  return (*(v64 + 8 * ((4763 * v65) ^ (a63 + 1172))))();
}

uint64_t sub_10018DDA4(int8x16_t a1, int8x16_t a2, int64x2_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  v30 = v14 - v16 + v13;
  v31.i64[0] = v30 - 15;
  v31.i64[1] = v30 - 16;
  *&v32 = v30 - 13;
  *(&v32 + 1) = v30 - 14;
  *&STACK[0x370] = v32;
  v33.i64[0] = v30 - 11;
  v33.i64[1] = v30 - 12;
  v34.i64[0] = v30 - 7;
  v34.i64[1] = v30 - 8;
  v35.i64[0] = v30 - 5;
  v35.i64[1] = v30 - 6;
  v36.i64[0] = v30 - 3;
  v36.i64[1] = v30 - 4;
  v37 = v18 + v14 - v16;
  v38.i64[0] = v13 + v37;
  v38.i64[1] = v30 - 2;
  v39 = vandq_s8(v38, a1);
  v40 = vandq_s8(v36, a1);
  v41 = vandq_s8(v35, a1);
  v42 = vandq_s8(v34, a1);
  v43 = vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL);
  v44 = vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL);
  v45 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL), a3), a4);
  v46 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL), a3), a4);
  v47 = veorq_s8(v46, a5);
  v48 = veorq_s8(v45, a5);
  v49 = veorq_s8(v45, a6);
  v50 = veorq_s8(v46, a6);
  v51 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v49), a7);
  v52 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v50), a7);
  v53 = vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL);
  v54 = veorq_s8(v52, vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL));
  v55 = veorq_s8(v51, v53);
  v56 = vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL);
  v57 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v55);
  v58 = vaddq_s64(v56, v54);
  v59 = veorq_s8(vaddq_s64(vsubq_s64(v58, vandq_s8(vaddq_s64(v58, v58), a8)), v20), v21);
  v60 = veorq_s8(vaddq_s64(vsubq_s64(v57, vandq_s8(vaddq_s64(v57, v57), a8)), v20), v21);
  v61 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL));
  v62 = veorq_s8(v59, vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL));
  v63 = vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL);
  v64 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v62);
  v65 = veorq_s8(vaddq_s64(v63, v61), v22);
  v66 = veorq_s8(v64, v22);
  v67 = vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL);
  v68 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v69 = veorq_s8(v65, v67);
  v70 = vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL);
  v71 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v69);
  v72 = veorq_s8(vaddq_s64(v70, v68), v23);
  v73 = veorq_s8(v71, v23);
  v74 = vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL);
  v75 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v76 = veorq_s8(v72, v74);
  v77 = vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL);
  v78 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v76);
  v79 = veorq_s8(vaddq_s64(v77, v75), v24);
  v80 = veorq_s8(v78, v24);
  v81 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v80, v80), v25), v80), v26), v27);
  v82 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v79, v79), v25), v79), v26), v27);
  v83 = veorq_s8(v82, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v84 = veorq_s8(v81, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v85 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v83), v28);
  v86 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), v84), v28);
  v87 = vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL);
  v88 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL));
  v89 = veorq_s8(v85, v87);
  v87.i64[0] = v30 - 9;
  v87.i64[1] = v30 - 10;
  v90 = vandq_s8(vaddq_s64(v43, a3), a4);
  v178.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v89), v29), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), a2)));
  v178.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v88), v29), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), a2)));
  v91 = veorq_s8(v90, a5);
  v92 = veorq_s8(v90, a6);
  v93 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v92), a7);
  v94 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL));
  v95 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v94);
  v96 = veorq_s8(vaddq_s64(vsubq_s64(v95, vandq_s8(vaddq_s64(v95, v95), a8)), v20), v21);
  v97 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v98 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v97), v22);
  v99 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v100 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v99), v23);
  v101 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v102 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101), v24);
  v103 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v102, v102), v25), v102), v26), v27);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104), v28);
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL)));
  v107 = vandq_s8(v87, a1);
  v108 = vandq_s8(vaddq_s64(v44, a3), a4);
  v178.val[1] = vshlq_u64(veorq_s8(v106, v29), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), a2)));
  v109 = veorq_s8(v108, a5);
  v110 = veorq_s8(v108, a6);
  v111 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110), a7);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112);
  v114 = veorq_s8(vaddq_s64(vsubq_s64(v113, vandq_s8(vaddq_s64(v113, v113), a8)), v20), v21);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v116 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115), v22);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v118 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117), v23);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v120 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119), v24);
  v121 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v120, v120), v25), v120), v26), v27);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v123 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122), v28);
  v124 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v125 = vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL);
  v126 = vandq_s8(v33, a1);
  v127 = vaddq_s64(v125, v124);
  v128 = vandq_s8(*&STACK[0x370], a1);
  v178.val[0] = vshlq_u64(veorq_s8(v127, v29), vnegq_s64(vandq_s8(vshlq_n_s64(v38, 3uLL), a2)));
  v129 = vandq_s8(v31, a1);
  v130 = vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL);
  v131 = vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL);
  v132 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), a3), a4);
  v133 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), a3), a4);
  v129.i64[0] = vqtbl4q_s8(v178, *&STACK[0x360]).u64[0];
  v178.val[0] = veorq_s8(v133, a5);
  v178.val[1] = veorq_s8(v132, a5);
  v178.val[2] = veorq_s8(v132, a6);
  v178.val[3] = veorq_s8(v133, a6);
  v178.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[1], 0x38uLL), v178.val[1], 8uLL), v178.val[2]), a7);
  v178.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[0], 0x38uLL), v178.val[0], 8uLL), v178.val[3]), a7);
  v134 = vsraq_n_u64(vshlq_n_s64(v178.val[2], 3uLL), v178.val[2], 0x3DuLL);
  v178.val[2] = veorq_s8(v178.val[0], vsraq_n_u64(vshlq_n_s64(v178.val[3], 3uLL), v178.val[3], 0x3DuLL));
  v178.val[3] = veorq_s8(v178.val[1], v134);
  v135 = vsraq_n_u64(vshlq_n_s64(v178.val[0], 0x38uLL), v178.val[0], 8uLL);
  v178.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[1], 0x38uLL), v178.val[1], 8uLL), v178.val[3]);
  v178.val[1] = vaddq_s64(v135, v178.val[2]);
  v178.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v178.val[1], vandq_s8(vaddq_s64(v178.val[1], v178.val[1]), a8)), v20), v21);
  v178.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v178.val[0], vandq_s8(vaddq_s64(v178.val[0], v178.val[0]), a8)), v20), v21);
  v136 = vsraq_n_u64(vshlq_n_s64(v178.val[2], 3uLL), v178.val[2], 0x3DuLL);
  v178.val[2] = veorq_s8(v178.val[0], vsraq_n_u64(vshlq_n_s64(v178.val[3], 3uLL), v178.val[3], 0x3DuLL));
  v178.val[3] = veorq_s8(v178.val[1], v136);
  v137 = vsraq_n_u64(vshlq_n_s64(v178.val[0], 0x38uLL), v178.val[0], 8uLL);
  v178.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[1], 0x38uLL), v178.val[1], 8uLL), v178.val[3]);
  v178.val[1] = veorq_s8(vaddq_s64(v137, v178.val[2]), v22);
  v178.val[0] = veorq_s8(v178.val[0], v22);
  v138 = vsraq_n_u64(vshlq_n_s64(v178.val[2], 3uLL), v178.val[2], 0x3DuLL);
  v178.val[2] = veorq_s8(v178.val[0], vsraq_n_u64(vshlq_n_s64(v178.val[3], 3uLL), v178.val[3], 0x3DuLL));
  v178.val[3] = veorq_s8(v178.val[1], v138);
  v139 = vsraq_n_u64(vshlq_n_s64(v178.val[0], 0x38uLL), v178.val[0], 8uLL);
  v178.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[1], 0x38uLL), v178.val[1], 8uLL), v178.val[3]);
  v178.val[1] = veorq_s8(vaddq_s64(v139, v178.val[2]), v23);
  v178.val[0] = veorq_s8(v178.val[0], v23);
  v140 = vsraq_n_u64(vshlq_n_s64(v178.val[2], 3uLL), v178.val[2], 0x3DuLL);
  v178.val[2] = veorq_s8(v178.val[0], vsraq_n_u64(vshlq_n_s64(v178.val[3], 3uLL), v178.val[3], 0x3DuLL));
  v178.val[3] = veorq_s8(v178.val[1], v140);
  v141 = vsraq_n_u64(vshlq_n_s64(v178.val[0], 0x38uLL), v178.val[0], 8uLL);
  v178.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[1], 0x38uLL), v178.val[1], 8uLL), v178.val[3]);
  v178.val[1] = veorq_s8(vaddq_s64(v141, v178.val[2]), v24);
  v178.val[0] = veorq_s8(v178.val[0], v24);
  v178.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v178.val[0], v178.val[0]), v25), v178.val[0]), v26), v27);
  v178.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v178.val[1], v178.val[1]), v25), v178.val[1]), v26), v27);
  v178.val[2] = veorq_s8(v178.val[1], vsraq_n_u64(vshlq_n_s64(v178.val[2], 3uLL), v178.val[2], 0x3DuLL));
  v178.val[3] = veorq_s8(v178.val[0], vsraq_n_u64(vshlq_n_s64(v178.val[3], 3uLL), v178.val[3], 0x3DuLL));
  v178.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[1], 0x38uLL), v178.val[1], 8uLL), v178.val[2]), v28);
  v178.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[0], 0x38uLL), v178.val[0], 8uLL), v178.val[3]), v28);
  v142 = vsraq_n_u64(vshlq_n_s64(v178.val[2], 3uLL), v178.val[2], 0x3DuLL);
  v178.val[2] = veorq_s8(v178.val[0], vsraq_n_u64(vshlq_n_s64(v178.val[3], 3uLL), v178.val[3], 0x3DuLL));
  v143 = vandq_s8(vaddq_s64(v130, a3), a4);
  v178.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[1], 0x38uLL), v178.val[1], 8uLL), veorq_s8(v178.val[1], v142)), v29), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), a2)));
  v178.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[0], 0x38uLL), v178.val[0], 8uLL), v178.val[2]), v29), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x370], 3uLL), a2)));
  v144 = veorq_s8(v143, a5);
  v145 = veorq_s8(v143, a6);
  v146 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v145), a7);
  v147 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v148 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL), v147);
  v149 = veorq_s8(vaddq_s64(vsubq_s64(v148, vandq_s8(vaddq_s64(v148, v148), a8)), v20), v21);
  v150 = veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL));
  v151 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL), v150), v22);
  v152 = veorq_s8(v151, vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL));
  v153 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL), v152), v23);
  v154 = veorq_s8(v153, vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v155 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL), v154), v24);
  v156 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v155, v155), v25), v155), v26), v27);
  v157 = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL));
  v158 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v157), v28);
  v159 = vandq_s8(vaddq_s64(v131, a3), a4);
  v178.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL))), v29), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), a2)));
  v160 = veorq_s8(v159, a5);
  v161 = veorq_s8(v159, a6);
  v162 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v161), a7);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL));
  v164 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163);
  v165 = veorq_s8(vaddq_s64(vsubq_s64(v164, vandq_s8(vaddq_s64(v164, v164), a8)), v20), v21);
  v166 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v167 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166), v22);
  v168 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v169 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168), v23);
  v170 = veorq_s8(v169, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v171 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), v170), v24);
  v172 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v171, v171), v25), v171), v26), v27);
  v173 = veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL));
  v174 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v173), v28);
  v178.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL))), v29), vnegq_s64(vandq_s8(vshlq_n_s64(v87, 3uLL), a2)));
  v129.i64[1] = vqtbl4q_s8(v178, *&STACK[0x360]).u64[0];
  v175 = vrev64q_s8(*(v17 + v37));
  v178.val[0].i64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v178.val[0].i64[1] = 0x3C3C3C3C3C3C3C3CLL;
  v176 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v175, v175, 8uLL), v178.val[0]), v129));
  *(v13 + v37 - 15) = vextq_s8(v176, v176, 8uLL);
  return (*(v19 + 8 * (((v16 + 16 == v14) * a13) ^ v15)))();
}

void sub_10018E6D8()
{
  STACK[0x500] = 0;
  STACK[0x848] = *(STACK[0x3E8] + 8 * (v0 - 4335));
  JUMPOUT(0x1000D2338);
}

uint64_t sub_10018E79C@<X0>(__int16 a1@<W8>)
{
  v3 = STACK[0x840];
  STACK[0x880] = *(v2 + 8 * v1);
  return sub_1000ED9B4(v3, a1);
}

uint64_t sub_10018E7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = (*(v66 + 8 * ((v64 - 423) ^ 0x31C1)))(64, v65);
  STACK[0x7A8] = v67;
  return (*(a64 + 8 * (((((878 * ((v64 - 423) ^ 0x1460) - 2057) | 0x430) - 1642) * (v67 != 0)) ^ (v64 - 423))))();
}

uint64_t sub_10018E880@<X0>(int a1@<W8>)
{
  v2 = (a1 + 2028382481) & 0x871967F7;
  (*(v1 + 8 * (a1 ^ 0x2A69)))();
  return (*(STACK[0x330] + 8 * (((STACK[0x5E0] != 0) * (v2 - 7939)) ^ v2)))();
}

void sub_10018E8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v6 = a4 == 0;
  }

  else
  {
    v6 = 1;
  }

  v9 = !v6 && a5 != 0 && a6 != 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10018E9D0()
{
  v3 = *(v1 + 8);
  STACK[0x818] = v0;
  return (*(STACK[0x400] + 8 * (((((v2 - 1532) | 0x200) ^ ((v2 + 2292) | 0x829) ^ 0x1B3A) * (v3 != 0)) ^ v2)))();
}

uint64_t sub_10018EC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, int a63)
{
  v64 = LOWORD(STACK[0x92E]);
  STACK[0x638] = STACK[0x930];
  return (*(v63 + 8 * (((v64 == 17168) * ((a63 ^ 0x204) + 342)) ^ (a63 + 2930))))();
}

uint64_t sub_10018ECAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0x49C]) = v6;
  STACK[0x700] = STACK[0x550];
  v7 = STACK[0x3E8];
  STACK[0x480] = *(STACK[0x3E8] + 8 * (a6 - 4669));
  return sub_1001377B8(a1, a2, a3, v7);
}

uint64_t sub_10018ECDC(uint64_t a1, uint64_t a2)
{
  STACK[0x7F0] = STACK[0x3E8];
  LODWORD(STACK[0x3E4]) = STACK[0x64C];
  return sub_100152C00(a1, a2);
}

uint64_t sub_10018ED9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v80 = v70 - 1;
  v81 = __ROR8__((v77 + v80) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5;
  v82 = __ROR8__(v81 ^ 0x49E9423B6F16E7D2, 8);
  v81 ^= 0xE1AFA7ACF6E0968ELL;
  v83 = (v82 + v81) ^ v73;
  v84 = v83 ^ __ROR8__(v81, 61);
  v85 = __ROR8__(v83, 8);
  v86 = (((2 * (v85 + v84)) & 0x202D8EFF3E134550) - (v85 + v84) + 0x6FE9388060F65D57) ^ 0x9A4BC939D526EF5ELL;
  v87 = v86 ^ __ROR8__(v84, 61);
  v88 = __ROR8__(v86, 8);
  v89 = (((2 * (v88 + v87)) | 0x45B996DFB575EE6) - (v88 + v87) - 0x22DCCB6FDABAF73) ^ 0x5B4E7A73A872D06CLL;
  v90 = v89 ^ __ROR8__(v87, 61);
  v91 = __ROR8__(v89, 8);
  v92 = (((2 * (v91 + v90)) & 0xE50EF93BD6C6A2AALL) - (v91 + v90) - 0x72877C9DEB635156) ^ 0xEC3D1E48E4838A5DLL;
  v93 = v92 ^ __ROR8__(v90, 61);
  v94 = (__ROR8__(v92, 8) + v93) ^ a4;
  v95 = v94 ^ __ROR8__(v93, 61);
  v96 = (__ROR8__(v94, 8) + v95) ^ 0x1A2AEBE44253AF03;
  v97 = v96 ^ __ROR8__(v95, 61);
  v98 = __ROR8__(v96, 8);
  v99 = ((((2 * (v98 + v97)) & 0x8D3B02A49A14CEA0) - (v98 + v97) + 0x39627EADB2F598AFLL) ^ 0x92523C7F9A72C4EELL) >> (8 * ((v77 + v80) & 7));
  v100 = __ROR8__((a1 + v80) & 0xFFFFFFFFFFFFFFF8, 8);
  v101 = v74 - (((v71 - v100) | a5) + ((v100 + a2) | 0xD54EE0FE93425299));
  v102 = v101 ^ a6;
  v103 = v101 ^ a7;
  v104 = __ROR8__(v102, 8);
  v105 = ((v76 | (2 * (v104 + v103))) - (v104 + v103) + v78) ^ v79;
  v106 = v105 ^ __ROR8__(v103, 61);
  v107 = (__ROR8__(v105, 8) + v106) ^ 0xF5A2F1B9B5D0B209;
  v108 = __ROR8__(v107, 8);
  v109 = v107 ^ __ROR8__(v106, 61);
  v110 = (v108 + v109) ^ 0x5963B6C555D97F1FLL;
  v111 = v110 ^ __ROR8__(v109, 61);
  v112 = (__ROR8__(v110, 8) + v111) ^ 0x61459D2AF01F24F7;
  v113 = v112 ^ __ROR8__(v111, 61);
  v114 = (__ROR8__(v112, 8) + v113) ^ a4;
  v115 = v114 ^ __ROR8__(v113, 61);
  v116 = (__ROR8__(v114, 8) + v115) ^ a8;
  v117 = (v72 - (v116 | v72) + (v116 | v65)) ^ v66;
  v118 = v117 ^ __ROR8__(v115, 61);
  v119 = __ROR8__(v117, 8);
  *(a1 + v80) = ((((v67 & (2 * (v119 + v118))) - (v119 + v118) + v68) ^ v69) >> (8 * ((a1 + v80) & 7))) ^ *(v77 + v80) ^ v99;
  return (*(a65 + 8 * (((v80 != 0) * v75) ^ a3)))();
}

uint64_t sub_10018F094@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, unsigned int a14)
{
  a13 = a1;
  a14 = v14 - 2008441969 * ((-1298253526 - (&a12 | 0xB29E392A) + (&a12 | 0x4D61C6D5)) ^ 0x5F892DB) + 3496;
  v17 = (*(v16 + 8 * (v14 ^ 0x2DEE)))(&a12);
  return (*(v16 + 8 * (((a12 == v15) * ((v14 + 1589159737) & 0xA1475EFB ^ 0xCCF)) ^ v14)))(v17);
}

uint64_t sub_10018F234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = ((v4 & 0xF9169EAF) - 1745) | 0x1020;
  v6 = STACK[0x5F8];
  STACK[0x448] = STACK[0x5F8];
  STACK[0x4E8] = v5 + STACK[0x4E8] - 7580;
  v7 = STACK[0x4D8];
  STACK[0x858] = STACK[0x4D8];
  STACK[0x4C8] = v6;
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  return (*(a4 + 8 * ((v9 * ((((v5 - 6510) | 0x160) + 1360) ^ 0xA76)) ^ v5)))();
}

uint64_t sub_10018F2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v24 = v12 - 1;
  v25 = __ROR8__((v19 + v24) & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = ((v25 - 0x6AF7234D0CC131D5) | v20) - ((v25 - 0x6AF7234D0CC131D5) | a2) + a2;
  v27 = __ROR8__(v26 ^ a4, 8);
  v28 = v26 ^ a6;
  v29 = (v27 + v28) ^ v23;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v32 = __ROR8__(((a5 | (2 * (v31 + v30))) - (v31 + v30) + a7) ^ v16, 8);
  v33 = ((a5 | (2 * (v31 + v30))) - (v31 + v30) + a7) ^ v16 ^ __ROR8__(v30, 61);
  v34 = ((v17 & (2 * (v32 + v33))) - (v32 + v33) + v15) ^ a3;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0x61459D2AF01F24F7;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0x64C31C027084DE6CLL;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (v22 - ((v40 + v39) | v22) + ((v40 + v39) | a8)) ^ v18;
  *(a1 + v24) = *(v10 + (v24 & 0xF)) ^ *(v19 + v24) ^ *((v24 & 0xF) + v9 + 2) ^ ((v24 & 0xF) * v13) ^ *((v24 & 0xF) + v8 + 1) ^ (((__ROR8__(v41, 8) + (v41 ^ __ROR8__(v39, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v19 + v24) & 7)));
  return (*(v21 + 8 * (((v24 == 0) * v14) ^ (v11 - 1334))))();
}

uint64_t sub_10018F4E0@<X0>(char a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  v57 = a1 + 19;
  v58 = STACK[0x9A0];
  STACK[0x210] = ((STACK[0x9A0] + 4) ^ 0x7F57DEFBFFFFB5BELL) - 0x19149C8A4F8011A8 + (((STACK[0x9A0] + 4) << (v57 ^ 0xF7u)) & 0xFEAFBDF7FFFF6B7CLL);
  v59 = STACK[0x990] + 10;
  v80 = ((STACK[0x950] + 4) ^ 0x774B7371BC7FB676) - 0x110831000C001260 + ((2 * (STACK[0x950] + 4)) & 0xEE96E6E378FF6CECLL);
  v79 = ((STACK[0x940] + 4) ^ 0xEF7FDEF9F67FAF5ELL) + 0x76C36377B9FFF4B8 + ((2 * (STACK[0x940] + 4)) & 0xDEFFBDF3ECFF5EBCLL);
  v78 = ((STACK[0x930] + 4) ^ 0xF7EB4F7BBA7FEEF6) + 0x6E57F2F5F5FFB520 + ((2 * (STACK[0x930] + 4)) & 0xEFD69EF774FFDDECLL);
  v77 = ((STACK[0x920] + 4) ^ 0xF7637BF3B1FFFDD6) + 0x6EDFC67DFE7FA640 + ((2 * (STACK[0x920] + 4)) & 0xEEC6F7E763FFFBACLL);
  v60 = STACK[0x9E8];
  v76 = ((STACK[0x9E8] + 4) ^ 0xE7C356FDF47FAF76) + 0x7E7FEB73BBFFF4A0 + ((2 * (STACK[0x9E8] + 4)) & 0xCF86ADFBE8FF5EECLL);
  v75 = ((STACK[0x910] + 4) ^ 0x675FEEFDB2FFFEDELL) - 0x11CAC8C02805AC8 + ((2 * (STACK[0x910] + 4)) & 0xCEBFDDFB65FFFDBCLL);
  v61 = STACK[0xA18];
  v74 = ((STACK[0xA18] + 4) ^ 0x7F73DB77FF7FF65FLL) - 0x193099064F005249 + ((2 * (STACK[0xA18] + 4)) & 0xFEE7B6EFFEFFECBELL);
  v73 = ((STACK[0x9B0] + 6) ^ 0xEE4FFFBFFCFFFFBBLL) + 0x73BEBFF9FBFBF17ELL + ((2 * (STACK[0x9B0] + 6)) & 0xDC9FFF7FF9FFFF76);
  v72 = ((STACK[0x990] + 6) ^ 0x765EFFFBF8FFF739) - 0x1450404200040600 + ((2 * (STACK[0x990] + 6)) & 0xECBDFFF7F1FFEE72);
  v71 = ((STACK[0x970] + 6) ^ 0xF64FBFBDF8FBFFFDLL) + 0x6BBEFFFBFFFFF13CLL + ((2 * (STACK[0x970] + 6)) & 0xEC9F7F7BF1F7FFFALL);
  v70 = ((STACK[0x950] + 6) ^ 0x7E1EFFFDFDFBF1BBLL) - 0x1C10404405000082 + ((2 * (STACK[0x950] + 6)) & 0xFC3DFFFBFBF7E376);
  v69 = ((STACK[0x940] + 6) ^ 0xE69EFFBDFEFBF7B9) + 0x7B6FBFFBF9FFF980 + ((2 * (STACK[0x940] + 6)) & 0xCD3DFF7BFDF7EF72);
  v68 = ((STACK[0x930] + 6) ^ 0x765FBFF9F8FBF97FLL) - 0x1451004000000846 + ((2 * (STACK[0x930] + 6)) & 0xECBF7FF3F1F7F2FELL);
  v67 = ((STACK[0x920] + 6) ^ 0x7BEFBFFFFBFFFB7FLL) - 0x19E1004603040A46 + ((2 * (STACK[0x920] + 6)) & 0xF7DF7FFFF7FFF6FELL);
  v66 = ((STACK[0x910] + 6) ^ 0x6B9EBFFBFFFBFB39) - 0x990004207000A00 + ((2 * (STACK[0x910] + 6)) & 0xD73D7FF7FFF7F672);
  STACK[0x200] = v58 + 10;
  STACK[0x220] = v60 + 10;
  STACK[0x310] = STACK[0x570];
  v65 = STACK[0x998];
  STACK[0x290] = STACK[0x840];
  v64 = STACK[0x988];
  STACK[0x300] = STACK[0x588];
  STACK[0x280] = STACK[0x398];
  STACK[0x270] = STACK[0x630];
  STACK[0x260] = STACK[0x7E0];
  STACK[0x250] = STACK[0x360];
  STACK[0x240] = STACK[0x420];
  STACK[0x2F0] = STACK[0x718];
  v63 = STACK[0x9E0];
  STACK[0x230] = STACK[0x620];
  STACK[0x2E0] = STACK[0x768];
  v62 = STACK[0xA10];
  LODWORD(STACK[0x2A0]) = LOWORD(STACK[0x8E6]);
  LODWORD(STACK[0x2D0]) = LOWORD(STACK[0x8D6]);
  LODWORD(STACK[0x2B0]) = LOWORD(STACK[0x89A]);
  LODWORD(STACK[0x2C0]) = LOWORD(STACK[0x886]);
  return (*(STACK[0x330] + 8 * v56))(0x84D53DF2213B4FA4, 0x6FEAED2DD55A32A7, 0x3D2CC4E5C304AE09, 0x5D07E2954C9434CALL, 0xE1AFA7ACF6E0968ELL, 0xCC6D33EEA00FE42, 0xAB3042D228875C41, 0xD17C0EB559B5E59ALL, a2, a3, a4, a5, a6, ((v61 + 10) ^ 0xE3DFBFBFF9FBF73FLL) + 0x7E2EFFF9FEFFF9FALL + ((2 * (v61 + 10)) & 0xC7BF7F7FF3F7EE7ELL), ((v60 + 10) ^ 0xE3CFBFFDFCFFFD3FLL) + 0x7E3EFFBBFBFBF3FALL + ((2 * (v60 + 10)) & 0xC79F7FFBF9FFFA7ELL), (v59 ^ 0x72CEFFF9FDFFFBBBLL) - 0x10C0404005040A82 + ((2 * v59) & 0xE59DFFF3FBFFF776), ((v58 + 10) ^ 0xF6BEBFB9FDFFF7BBLL) + 0x6B4FFFFFFAFBF97ELL + ((2 * (v58 + 10)) & 0xED7D7F73FBFFEF76), a11, v62, a13, v63, a15, v64, a17, v65, a19, v61 + 10, a21, ((v61 + 6) ^ 0x623EFFBFF9FFF13BLL) - 0x30400601040002 + ((2 * (v61 + 6)) & 0xC47DFF7FF3FFE276), a23, v66, a25, ((v60 + 6) ^ 0x765EBFFFF8FBF7FBLL) - 0x14500046000006C2 + ((2 * (v60 + 6)) & 0xECBD7FFFF1F7EFF6), a27, v67, a29, v68, a31, v69, a33, v70, a35, v71, a37, v72, a39, v73, a41, ((v58 + 6) ^ 0xF61EBFFBFEFFF379) + 0x6BEFFFBDF9FBFDC0 + ((2 * (v58 + 6)) & 0xEC3D7FF7FDFFE6F2), a43, v74, a45, v75, a47, v76, a49, v77, a51, v78, a53, v79, a55, v80);
}

uint64_t sub_10018FE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18)
{
  a17 = a10;
  a18 = &a13;
  a16 = (v20 - 1168) ^ (33731311 * (((&a15 | 0x7A9034B2) - &a15 + (&a15 & 0x856FCB48)) ^ 0x4366FE91));
  (*(v19 + 8 * (v20 + 5181)))(&a15);
  LODWORD(a18) = v20 + 940 - 2008441969 * ((&a15 & 0x2686759A | ~(&a15 | 0x2686759A)) ^ 0x91E0DE6B) + 325;
  a17 = a10;
  v21 = (*(v19 + 8 * (v20 + 5231)))(&a15);
  return (*(v19 + 8 * (((a15 == v18) * (96 * ((v20 + 940) ^ 0x14F3) - 4091)) | (v20 + 940))))(v21);
}

uint64_t sub_10018FF90()
{
  STACK[0x810] = 0;
  v3 = STACK[0x888];
  STACK[0x518] = *(v2 + 8 * (v1 - 2374));
  return sub_1001A446C(v3);
}

void sub_10018FFC4(uint64_t a1@<X8>)
{
  *v2 = v1;
  *(v1 + 8) = *(a1 + 8);
  *(a1 + 8) = v1;
  JUMPOUT(0x1000CAA10);
}

uint64_t sub_100190354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *v12 + v15 - 0x5EA5347A8335DC6CLL;
  v18 = __ROR8__(v17 & 0xFFFFFFFFFFFFFFF8, 8);
  v19 = ((0x6AF7234D0CC131D4 - v18) & a2) + v18 + a6 - ((v18 + a6) & a2);
  v20 = __ROR8__(v19 ^ 0xAB257711D84E66DLL, 8);
  v19 ^= 0xA2F4B2E684729731;
  v21 = (((v20 + v19) & 0xB9CE2113715ACFF7 ^ 0x184A000231524D61) + ((v20 + v19) & 0x4631DEEC8EA53008 ^ 0x460196A406053009) - 1) ^ 0xBAD6E179B06AC217;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0xF5A2F1B9B5D0B209;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ v16;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ a7;
  v28 = __ROR8__(v27, 8);
  v29 = v27 ^ __ROR8__(v26, 61);
  v30 = (v28 + v29) ^ a5;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8) + v31;
  v33 = __ROR8__((v17 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v34 = (0x6AF7234D0CC131D4 - v33) & 0xC2A16714FA488FC8 | (v33 + 0x1508DCB2F33ECE2BLL) & 0x3D5E98EB05B77037;
  v35 = __ROR8__(v34 ^ 0x8B48252F955E681ALL, 8);
  v34 ^= 0x230EC0B80CA81946uLL;
  v36 = (((2 * v32) | 0x36A4398A31861B6ALL) - v32 - 0x1B521CC518C30DB5) ^ 0x178F7215A90A2B6;
  v37 = (((2 * (v35 + v34)) & 0xAC7FF88AB7D467A0) - (v35 + v34) - 0x563FFC455BEA33D1) ^ 0x4D5D746523287351;
  v38 = v37 ^ __ROR8__(v34, 61);
  v39 = __ROR8__(v37, 8);
  LOBYTE(v31) = (((__ROR8__(v36, 8) + (v36 ^ __ROR8__(v31, 61))) ^ 0xAB3042D228875C41) >> (8 * (v17 & 7u))) ^ HIBYTE(v9);
  v40 = (v39 + v38 - ((2 * (v39 + v38)) & 0xBB63D01A1060ED3ALL) - 0x224E17F2F7CF8963) ^ 0x281319B4BDE0C494;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = *(STACK[0x400] + 8 * v11);
  *v17 = v31 ^ 0xDD;
  v43 = (__ROR8__(v40, 8) + v41) ^ v16;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ a7;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = __ROR8__(v45, 8);
  v48 = (((2 * (v47 + v46)) | 0x63B77BB044F1F226) - (v47 + v46) + 0x4E244227DD8706EDLL) ^ 0xD518A1DA52FC277FLL;
  v49 = v48 ^ __ROR8__(v46, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ 0x1A2AEBE44253AF03;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = __ROR8__(v50, 8);
  *(v17 + 1) = (((v52 + v51 - ((2 * (v52 + v51)) & 0x7F0D34FB28D08226) + 0x3F869A7D94684113) ^ 0x94B6D8AFBCEF1D52) >> (8 * ((v17 + 1) & 7))) ^ BYTE2(v9) ^ 0x60;
  v53 = __ROR8__((v17 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v54 = ((2 * v53 + 0x2A11B965E67D9C56) & 0xC8758E867E4F43EALL) - v53 + 0x6BC5C09CD998FDFLL;
  v55 = __ROR8__(v54 ^ 0xD22C7A87AFCEB9D8, 8);
  v54 ^= 0x7A6A9F103638C884uLL;
  v56 = (v55 + v54) ^ 0xE49D77DF873DBF7ELL;
  v57 = v56 ^ __ROR8__(v54, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ 0xF5A2F1B9B5D0B209;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ v16;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = __ROR8__(v60, 8);
  v63 = (((2 * (v62 + v61)) | 0x316A40512FDE1242) - (v62 + v61) + 0x674ADFD76810F6DFLL) ^ 0xF9F0BD0267F02DD6;
  v64 = v63 ^ __ROR8__(v61, 61);
  v65 = (__ROR8__(v63, 8) + v64) ^ a5;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = (__ROR8__(v65, 8) + v66) ^ 0x1A2AEBE44253AF03;
  *(v17 + 2) = (((__ROR8__(v67, 8) + (v67 ^ __ROR8__(v66, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v17 + 2) & 7))) ^ BYTE1(v9) ^ 0xF8;
  v68 = __ROR8__((v17 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v69 = (0xAF7234D0CC131D4 - v68) & 0x126AA61F6F56C0D8 | (v68 + a6) & v13;
  v70 = v69 ^ a8;
  v71 = v69 ^ v14;
  v72 = (__ROR8__(v70, 8) + v71) ^ 0xE49D77DF873DBF7ELL;
  v73 = v72 ^ __ROR8__(v71, 61);
  v74 = (__ROR8__(v72, 8) + v73) ^ 0xF5A2F1B9B5D0B209;
  v75 = v74 ^ __ROR8__(v73, 61);
  v76 = __ROR8__(v74, 8);
  v77 = ((a3 | (2 * (v76 + v75))) - (v76 + v75) + v10) ^ a1;
  v78 = v77 ^ __ROR8__(v75, 61);
  v79 = (__ROR8__(v77, 8) + v78) ^ a7;
  v80 = v79 ^ __ROR8__(v78, 61);
  v81 = (__ROR8__(v79, 8) + v80) ^ a5;
  v82 = v81 ^ __ROR8__(v80, 61);
  v83 = (__ROR8__(v81, 8) + v82) ^ 0x1A2AEBE44253AF03;
  *(v17 + 3) = v9 ^ v8 ^ (((__ROR8__(v83, 8) + (v83 ^ __ROR8__(v82, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v17 + 3) & 7)));
  return v42();
}

uint64_t sub_100190A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v70 - 224) = v67 ^ (914963389 * ((2 * ((v70 - 232) & 0x5DD03058) - (v70 - 232) + 573558688) ^ 0xED37EDB));
  v71 = (*(v64 + 8 * v69))(v70 - 232);
  *(v68 + 8) = *(v70 - 232) ^ v65;
  return (*(a64 + 8 * ((2395 * (((v66 - 2454) ^ 0xBBuLL) > 8)) ^ (v66 - 847))))(v71, 16215976);
}

uint64_t sub_100190B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LOWORD(STACK[0x8DA]) = v5;
  LODWORD(STACK[0x360]) = v5;
  return sub_100189654(a1, a2, STACK[0x3D0], a4, a5, v6 - 4631);
}

uint64_t sub_100190B3C(uint64_t a1)
{
  v4 = *(v2 + 4);
  *(a1 + 20) = v4;
  return (*(v3 + 8 * (((v4 == 0) * (v1 + v1 + 611 - 648)) ^ v1)))();
}

uint64_t sub_100190B74(uint64_t a1)
{
  v8 = -v5 - a1;
  v10 = (v6 - a1) >= 0x10 && v8 + v3 + 16 >= ((6 * (v4 ^ 0x25E1u)) ^ 0xA5AuLL) && (v8 + v2 + 18) >= 0x10;
  v11 = v8 + v1 + 17;
  v13 = !v10 || v11 < (((v4 ^ 0x25E1u) + 6422) ^ 0x1ADDuLL);
  return (*(v7 + 8 * ((62 * v13) ^ v4)))();
}

uint64_t sub_100190C58(uint64_t a1)
{
  v2 = 1358806181 * (((a1 | 0x30E0F658) - (a1 & 0x30E0F658)) ^ 0xFCF9ADB);
  v3 = *(a1 + 4) - v2;
  v4 = *a1 - v2;
  v5 = ((2 * (v4 & 0x84EAA7A6)) & 0x1140000 | v4 & 0x84EAA7A6) ^ (2 * (v4 & 0x84EAA7A6)) & (v4 ^ 0xF1DCA796);
  v6 = ((2 * (v4 ^ 0xF1DCA796)) ^ 0xEA6C0060) & (v4 ^ 0xF1DCA796) ^ (2 * (v4 ^ 0xF1DCA796)) & 0x75360030;
  v7 = v6 ^ 0x15120010;
  v8 = (v6 ^ 0x20240020) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0xD4D800C0) & v7 ^ (4 * v7) & 0x75360030;
  v10 = v8 ^ 0x75360030 ^ (v9 ^ 0x54100000) & (16 * v8);
  v11 = (16 * (v9 ^ 0x21260030)) & 0x75360030 ^ 0x24160030 ^ ((16 * (v9 ^ 0x21260030)) ^ 0x53600300) & (v9 ^ 0x21260030);
  v12 = (v10 << 8) & 0x75360000 ^ v10 ^ ((v10 << 8) ^ 0x36003000) & v11;
  v13 = v4 ^ (2 * ((v12 << 16) & 0x75360000 ^ v12 ^ ((v12 << 16) ^ 0x300000) & ((v11 << 8) & 0x75360000 ^ 0x41360000 ^ ((v11 << 8) ^ 0x36000000) & v11))) ^ 0xB2CC5E20;
  v14 = 914963389 * ((((2 * v16) | 0xE06954DC) - v16 - 1882499694) ^ 0x5CC81B15);
  v17 = *(a1 + 16);
  v18 = v13 - v14;
  v16[1] = v14 ^ (v3 + 740061702);
  v16[2] = v14 + 1378321594;
  result = (*(*(&off_100BFFA10 + v3 + 740056760) + v3 + 740066191))(v16);
  *(a1 + 8) = v16[0];
  return result;
}

void sub_100190F38(uint64_t a1)
{
  v2 = *(&off_100BFFA10 + ((-85 * ((dword_100CBC1F0 + dword_100CBC368) ^ 0xDF)) ^ byte_1009DAFB0[byte_1009D40D0[(-85 * ((dword_100CBC1F0 + dword_100CBC368) ^ 0xDF))] ^ 0x67]) + 271);
  v3 = *(v2 - 4);
  v4 = *(&off_100BFFA10 + ((-85 * (v3 ^ dword_100CBC1F0 ^ 0xDF)) ^ byte_1009D3FD0[byte_1009C9A60[(-85 * (v3 ^ dword_100CBC1F0 ^ 0xDF))] ^ 0xEE]) + 85);
  v5 = 2054362027 * ((v3 - &v7 + *v4) ^ 0xB4207763EF64BDFLL);
  *(v2 - 4) = v5;
  *v4 = v5;
  LODWORD(v4) = *(v2 - 4);
  v6 = *(&off_100BFFA10 + ((-85 * ((dword_100CBC1F0 + dword_100CBC368) ^ 0xDF)) ^ byte_1009C9B60[byte_1009E3210[(-85 * ((dword_100CBC1F0 + dword_100CBC368) ^ 0xDF))] ^ 0xDD]) + 36) - 8;
  (*&v6[8 * (byte_1009C9D60[byte_1009E3310[(-85 * (v4 ^ 0xDF ^ v5))] ^ 0xE2] ^ (-85 * (v4 ^ 0xDF ^ v5))) + 76888])(*(&off_100BFFA10 + ((-85 * ((v5 - v4) ^ 0xDF)) ^ byte_1009C9D60[byte_1009E3310[(-85 * ((v5 - v4) ^ 0xDF))] ^ 0x71]) - 28), sub_1000D3B58);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1001911A4()
{
  LODWORD(STACK[0x35C]) = STACK[0x2F0];
  LOBYTE(STACK[0x79B]) = STACK[0x310];
  LODWORD(STACK[0x49C]) = v1;
  STACK[0x8A8] = STACK[0x300];
  LODWORD(STACK[0x8B4]) = v0;
  return sub_10019CA8C();
}

void sub_1001911D4()
{
  v0 = *(&off_100BFFA10 + (byte_1009C9B60[byte_1009E3218[(-85 * ((dword_100CBC1F0 - dword_100CBC308) ^ 0xDF)) - 8] ^ 0xDD] ^ (-85 * ((dword_100CBC1F0 - dword_100CBC308) ^ 0xDF))) - 19);
  v1 = *(v0 - 4);
  v2 = *(&off_100BFFA10 + (byte_1009DAFB8[(byte_1009D40D8[(-85 * ((dword_100CBC1F0 - v1) ^ 0xDF)) - 8] ^ 0x67) - 8] ^ (-85 * ((dword_100CBC1F0 - v1) ^ 0xDF))) + 143);
  v3 = 2054362027 * (&v5[v1 + *v2] ^ 0xB4207763EF64BDFLL);
  *(v0 - 4) = v3;
  *v2 = v3;
  v6[0] = 476323082 - 1710126949 * (v6 ^ 0x321B5B90);
  LOBYTE(v2) = -85 * (*(v0 - 4) ^ 0xDF ^ *v2);
  v4 = *(&off_100BFFA10 + ((-85 * (dword_100CBC308 ^ 0xDF ^ dword_100CBC1F0)) ^ byte_1009C9D60[byte_1009E3310[(-85 * (dword_100CBC308 ^ 0xDF ^ dword_100CBC1F0))] ^ 0xB1]) + 234) - 8;
  (*&v4[8 * (byte_1009D3FDC[(byte_1009C9A60[v2] ^ 0x21) - 12] ^ v2) + 76056])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100191404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, unint64_t *a39)
{
  *(v42 - 224) = *a37;
  *(v42 - 232) = v40 + 1710126949 * ((v42 + 359721786 - 2 * ((v42 - 232) & 0x1570EC22)) ^ 0x276BB7B2) + 6265;
  v43 = (*(v39 + 8 * (v40 + 7176)))(v42 - 232);
  v44 = STACK[0x3E8];
  v45 = *a39;
  STACK[0x558] = &STACK[0xA20];
  STACK[0x4E8] = 80;
  STACK[0x4E0] = v41;
  STACK[0x438] = 0;
  STACK[0x470] = 0;
  STACK[0x518] = v45;
  return (*(v44 + 8 * ((109 * (((3 * (v40 ^ 0xEA)) ^ (v45 == 0)) & 1)) ^ v40)))(v43);
}

uint64_t sub_1001915BC()
{
  if (v0 == 16257999)
  {
    v4 = STACK[0x748];
    v5 = *(STACK[0x748] + 8);
    v6 = STACK[0x470];
    v6[1] = v5;
    *v6 = *v4;
    return (*(v2 + 8 * (((v5 == 0) * ((((v1 + 981887477) & 0xC5799ABE) - 1574) ^ 0x14EB)) ^ (v1 + 3635))))();
  }

  else if (v0 == 16215947)
  {
    return (*(v2 + 8 * (((*(STACK[0x378] + 8) == 0) * ((((v1 - 5096) | 0x961) + 53) ^ ((v1 - 3023) | 0x148))) ^ (v1 + 366))))();
  }

  else
  {
    return (*(v2 + 8 * (((*(STACK[0x470] + 24) == 0) * ((((v1 - 5414) | 0x908) - 223) ^ 0x8CA)) ^ (v1 + 3807))))();
  }
}

uint64_t sub_100191770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, unint64_t a32)
{
  v34 = STACK[0x3F8] - 4763;
  LODWORD(STACK[0x9EC]) = v32;
  v35 = (v32 ^ v33) + STACK[0x2B0];
  STACK[0x9F0] = v35;
  return (*(STACK[0x400] + 8 * (v34 ^ ((4 * (v35 <= a32)) | (16 * (v35 <= a32))))))();
}

void sub_10019181C(uint64_t a1)
{
  v1 = *(a1 + 4) ^ (914963389 * ((~a1 & 0x357A62A9 | a1 & 0xCA859D56) ^ 0x1986D3D2));
  __asm { BRAA            X10, X17 }
}

void sub_100191A80(int a1@<W8>)
{
  if (a1 > 203186114)
  {
    if (a1 == 203186115)
    {
      __asm { BRAA            X10, X17 }
    }

    v6 = 24517;
  }

  else
  {
    if (a1 == 203186112)
    {
      goto LABEL_7;
    }

    v6 = 24514;
  }

  if (a1 == (v6 | 0xC1C0000))
  {
LABEL_7:
    __asm { BRAA            X8, X17 }
  }

  *(v3 + 12) = (((v2 ^ 0xE4C99C2D) - 1618687204) ^ ((v2 ^ 0x533B2B60) + 678853719) ^ ((v2 ^ 0xEE565728) - 1793392609)) - 569484165;
}

uint64_t sub_100191D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, unsigned int a14)
{
  a13 = a9;
  a14 = (v16 - 1000537268) ^ (((((2 * &a12) | 0xADC23A00) - &a12 + 689890048) ^ 0x8E88CE62) * v15);
  v17 = (*(v14 + 8 * (v16 ^ 0x3BA338C2)))(&a12);
  return sub_100191D78(v17);
}

void sub_100191DBC()
{
  STACK[0x480] = 0;
  STACK[0x540] = *(v1 + 8 * (v0 - 8403));
  JUMPOUT(0x100191DE4);
}

uint64_t sub_100191F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, int a16)
{
  a16 = (v18 + 474186910) ^ (((&a14 + 383697008 - 2 * (&a14 & 0x16DEC070)) ^ 0x4EB71312) * v16);
  a15 = a10;
  v19 = (*(v17 + 8 * (v18 ^ 0xE3BCBE70)))(&a14);
  return sub_100191FD8(v19);
}

uint64_t sub_10019201C@<X0>(int a1@<W8>)
{
  STACK[0xA10] = v1;
  v2 = STACK[0x448];
  STACK[0xA18] = STACK[0x448];
  return (*(STACK[0x330] + 8 * (((v1 - v2 > 9) * (((a1 - 5902) ^ 0xC51) + ((a1 - 5902) | 0x105))) ^ a1)))();
}

uint64_t sub_1001921C8()
{
  LODWORD(STACK[0x394]) = v0;
  v3 = STACK[0x348];
  STACK[0x5C8] = STACK[0x348];
  STACK[0x728] -= 32;
  v4 = STACK[0x5B0];
  STACK[0x730] = STACK[0x5B0];
  STACK[0x3A8] = v3;
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  return (*(v2 + 8 * ((v6 * (v1 ^ 0x15F9)) ^ (v1 + 1328))))();
}

uint64_t sub_100192270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = *(&off_100BFFA10 + v65 - 891);
  *(v68 + 96) = 0;
  *(v68 + 104) = 0;
  *(v66 - 228) = v65 + 1710126949 * ((2 * ((v66 - 232) & 0x33FB9DA8) - (v66 - 232) + 1275355734) ^ 0x7E1F39C6) + 1664195590;
  v69 = (*(v67 + 8 * (v65 ^ 0x267E)))(v66 - 232);
  return (*(a64 + 8 * (((*(v66 - 232) != v64 + 3299) * ((v65 + 1699) ^ 0xA44)) ^ v65)))(v69);
}

uint64_t sub_1001923E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18)
{
  a16 = (v18 + 1951) ^ (33731311 * (&a15 ^ 0x39F6CA23));
  a17 = a13;
  a18 = &a11;
  (*(v20 + 8 * (v18 + 8300)))(&a15);
  a17 = a13;
  LODWORD(a18) = v18 - 2008441969 * ((-1253428310 - (&a15 | 0xB54A33AA) + (&a15 | 0x4AB5CC55)) ^ 0x22C985B) + 4384;
  v21 = (*(v20 + 8 * (v18 ^ 0x2166)))(&a15);
  return (*(v20 + 8 * (((a15 == v19) * (v18 - 774)) ^ v18)))(v21);
}

uint64_t sub_100192594()
{
  if (v0 == 16257999)
  {
    v4 = STACK[0x590];
    v5 = *(STACK[0x590] + 8);
    v6 = STACK[0x6F0];
    v6[1] = v5;
    *v6 = *v4;
    return (*(v2 + 8 * ((((((v1 + 2024) ^ (v5 == 0)) & 1) == 0) * ((7 * (v1 ^ 0x14BE)) ^ 0x8FA)) ^ (v1 - 3326))))();
  }

  else if (v0 == 16215947)
  {
    return (*(v2 + 8 * ((((v1 ^ 0xB1 ^ (*(STACK[0x6F8] + 8) == 0)) & 1) * (v1 - 5573)) ^ (v1 - 863))))();
  }

  else
  {
    return sub_1001925F8();
  }
}

uint64_t sub_1001928A8@<X0>(uint64_t a1@<X8>)
{
  v3 = STACK[0x6F8];
  STACK[0x508] = *(v2 + 8 * a1);
  return (*(v2 + 8 * (((((v3 == 0) ^ (a1 + 95)) & 1) * (((a1 - 201) | 0x1582) - 6078)) ^ (a1 + 4704))))();
}

void sub_1001929B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  *&STACK[0x270] = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  *&STACK[0x280] = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  *&STACK[0x250] = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  *&STACK[0x260] = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  *&STACK[0x230] = vdupq_n_s64(0x6FE9388060F65D57uLL);
  *&STACK[0x240] = vdupq_n_s64(0x202D8EFF3E134550uLL);
  *&STACK[0x210] = vdupq_n_s64(0x45B996DFB575EE6uLL);
  *&STACK[0x220] = vdupq_n_s64(0x9A4BC939D526EF5ELL);
  *&STACK[0x200] = vdupq_n_s64(0xFDD233490254508DLL);
  *&STACK[0x370] = vdupq_n_s64(0x64C31C027084DE6CuLL);
  *&STACK[0x3A0] = vdupq_n_s64(0xD54EE0FE93425299);
  *&STACK[0x3B0] = vdupq_n_s64(0x1508DCB2F33ECE2BuLL);
  *&STACK[0x380] = vdupq_n_s64(a6);
  *&STACK[0x390] = vdupq_n_s64(0x6AF7234D0CC131D4uLL);
  JUMPOUT(0x100192C44);
}

uint64_t sub_100194130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, uint64_t a15, uint64_t a16, unsigned int a17)
{
  a17 = (33731311 * (((&a14 | 0x4D13EFBB) + (~&a14 | 0xB2EC1044)) ^ 0x74E52599)) ^ 0x208C;
  a15 = v17;
  a16 = a12;
  v20 = (*(v18 + 77256))(&a14);
  return (*(v18 + 8 * ((7923 * (a14 == v19 - 962517632)) ^ 0xEBCu)))(v20);
}

uint64_t sub_100194270(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = 193 * (a3 ^ 0x1B1B);
  LODWORD(STACK[0x270]) = v72;
  return (*(a71 + 8 * ((91 * (0xEFEEE7DAFDD4E84CLL - a1 + v71 - a67 - a65 + ((v72 - 867287018) & 0x33B1AF75) > 0xF)) ^ a3)))();
}

uint64_t sub_100194360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, int a18, unsigned int a19)
{
  a19 = 1317436891 * ((((2 * &a17) | 0xB1127C68) - &a17 - 1485389364) ^ 0xE88AA642) + 8154;
  a17 = &a11;
  v20 = (*(v19 + 77096))(&a17);
  return (*(v19 + 8 * ((2279 * (a18 == 16257999)) ^ 0x128Du)))(v20);
}

uint64_t sub_1001943F0@<X0>(uint64_t a1@<X8>)
{
  *(a1 + v5) = 0;
  v8 = v5 < v4 && v5 + 840616316 < v1;
  return (*(v6 + 8 * ((v8 * v2) ^ v3)))();
}

uint64_t sub_100194524()
{
  LODWORD(STACK[0x47C]) = STACK[0x2E0];
  LODWORD(STACK[0x754]) = STACK[0x2F0];
  LODWORD(STACK[0x6C4]) = STACK[0x300];
  LODWORD(STACK[0x3D4]) = v0;
  return sub_100194550();
}

uint64_t sub_100194550(uint64_t a1)
{
  if (v2)
  {
    v4 = a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  return (*(v3 + 8 * ((v5 * ((v1 - 95711010) & 0x5B47DFF ^ 0x15C8)) ^ v1)))();
}

uint64_t sub_1001946E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, int8x16_t a59, int8x16_t a60)
{
  v66 = v62 ^ 0xD04u;
  v67 = (a37 + v60 + a2 + a8);
  v68.i64[0] = v61 + a8 - 15;
  v68.i64[1] = v61 + a8 - 16;
  v259 = v68;
  v68.i64[0] = v61 + a8 - 13;
  v68.i64[1] = v61 + a8 - 14;
  v258 = v68;
  v69.i64[0] = v61 + a8 - 5;
  v69.i64[1] = v61 + a8 - 6;
  v70.i64[0] = v61 + a8 - 3;
  v70.i64[1] = v61 + a8 - 4;
  v71.i64[0] = v61 + a8 - 1;
  v71.i64[1] = v61 + a8 - 2;
  v72.i64[0] = v61 + a8 + ((v66 + 7680) ^ 0xFFFFFFFFFFFFDD73);
  v72.i64[1] = v61 + a8 - 8;
  v73 = vandq_s8(v72, *&STACK[0x310]);
  v74 = vandq_s8(v71, *&STACK[0x310]);
  v75 = vandq_s8(v70, *&STACK[0x310]);
  v76 = vandq_s8(v69, *&STACK[0x310]);
  v77 = vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL);
  v78 = vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL);
  v79 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v80 = vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL);
  v256 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x2E0], v80), *&STACK[0x2D0]), vorrq_s8(vaddq_s64(v80, *&STACK[0x300]), *&STACK[0x2F0]));
  v81 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x2E0], v79), *&STACK[0x2D0]), vorrq_s8(vaddq_s64(v79, *&STACK[0x300]), *&STACK[0x2F0]));
  v82 = vsubq_s64(*&STACK[0x2A0], vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x2E0], v77), *&STACK[0x2D0]), vorrq_s8(vaddq_s64(v77, *&STACK[0x300]), *&STACK[0x2F0])));
  v83 = vsubq_s64(*&STACK[0x2A0], vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x2E0], v78), *&STACK[0x2D0]), vorrq_s8(vaddq_s64(v78, *&STACK[0x300]), *&STACK[0x2F0])));
  v84 = veorq_s8(v83, *&STACK[0x290]);
  v85 = veorq_s8(v82, *&STACK[0x290]);
  v86 = veorq_s8(v82, *&STACK[0x280]);
  v87 = veorq_s8(v83, *&STACK[0x280]);
  v88 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v86), *&STACK[0x270]);
  v89 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v87), *&STACK[0x270]);
  v90 = veorq_s8(v89, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL));
  v91 = veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL));
  v92 = vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL);
  v93 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v91);
  v94 = vaddq_s64(v92, v90);
  v95 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v94, v94), *&STACK[0x260]), v94), *&STACK[0x250]), *&STACK[0x240]);
  v96 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v93, v93), *&STACK[0x260]), v93), *&STACK[0x250]), *&STACK[0x240]);
  v97 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v98 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v99 = vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL);
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v98);
  v101 = veorq_s8(vaddq_s64(v99, v97), *&STACK[0x230]);
  v102 = veorq_s8(v100, *&STACK[0x230]);
  v103 = vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL);
  v104 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v105 = veorq_s8(v101, v103);
  v106 = vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL);
  v107 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v105);
  v108 = veorq_s8(vaddq_s64(v106, v104), *&STACK[0x2C0]);
  v109 = veorq_s8(v107, *&STACK[0x2C0]);
  v110 = vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL);
  v111 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v112 = veorq_s8(v108, v110);
  v113 = vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL);
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v112);
  v115 = vaddq_s64(v113, v111);
  v116 = veorq_s8(v115, *&STACK[0x2B0]);
  v117 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v115, v64), *&STACK[0x220]), v116), vandq_s8(v116, v64));
  v118 = veorq_s8(v114, *&STACK[0x2B0]);
  v119 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v114, v64), *&STACK[0x220]), v118), vandq_s8(v118, v64)), *&STACK[0x210]);
  v120 = veorq_s8(v117, *&STACK[0x210]);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v122 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v123 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121), *&STACK[0x200]);
  v124 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v122), *&STACK[0x200]);
  v125 = vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL);
  v126 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v127 = veorq_s8(v123, v125);
  v128 = vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL);
  v129 = vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL);
  v130.i64[0] = v61 + a8 - 11;
  v130.i64[1] = v61 + a8 - 12;
  v131 = vsubq_s64(*&STACK[0x2A0], v81);
  v261.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v129, v127), v65), vnegq_s64(vandq_s8(vshlq_n_s64(v69, 3uLL), a60)));
  v261.val[1] = vshlq_u64(veorq_s8(vaddq_s64(v128, v126), v65), vnegq_s64(vandq_s8(vshlq_n_s64(v70, 3uLL), a60)));
  v132 = veorq_s8(v131, *&STACK[0x290]);
  v133 = veorq_s8(v131, *&STACK[0x280]);
  v134 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v133), *&STACK[0x270]);
  v135 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v136 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v135);
  v137 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v136, v136), *&STACK[0x260]), v136), *&STACK[0x250]), *&STACK[0x240]);
  v138 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v139 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), v138), *&STACK[0x230]);
  v140 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v141 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), v140), *&STACK[0x2C0]);
  v142 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL));
  v143 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), v142);
  v144 = veorq_s8(v143, *&STACK[0x2B0]);
  v145 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v143, v64), *&STACK[0x220]), v144), vandq_s8(v144, v64)), *&STACK[0x210]);
  v146 = veorq_s8(v145, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v147 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL), v146), *&STACK[0x200]);
  v148 = veorq_s8(v147, vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL));
  v149 = vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL);
  v147.i64[0] = v61 + a8 - 9;
  v147.i64[1] = v61 + a8 - 10;
  v150 = vaddq_s64(v149, v148);
  v151 = vandq_s8(v147, *&STACK[0x310]);
  v152 = vsubq_s64(*&STACK[0x2A0], v256);
  v261.val[0] = vshlq_u64(veorq_s8(v150, v65), vnegq_s64(vandq_s8(vshlq_n_s64(v71, 3uLL), a60)));
  v153 = veorq_s8(v152, *&STACK[0x290]);
  v154 = veorq_s8(v152, *&STACK[0x280]);
  v155 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL), v154), *&STACK[0x270]);
  v156 = veorq_s8(v155, vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL));
  v157 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), v156);
  v158 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v157, v157), *&STACK[0x260]), v157), *&STACK[0x250]), *&STACK[0x240]);
  v159 = veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v156, 3uLL), v156, 0x3DuLL));
  v160 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), v159), *&STACK[0x230]);
  v161 = veorq_s8(v160, vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL));
  v162 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v161), *&STACK[0x2C0]);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL));
  v164 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163);
  v165 = veorq_s8(v164, *&STACK[0x2B0]);
  v166 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v164, v64), *&STACK[0x220]), v165), vandq_s8(v165, v64)), *&STACK[0x210]);
  v167 = veorq_s8(v166, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v168 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), v167), *&STACK[0x200]);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL));
  v170 = vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL);
  v171 = vandq_s8(v130, *&STACK[0x310]);
  v172 = vaddq_s64(v170, v169);
  v173 = vandq_s8(v258, *&STACK[0x310]);
  v261.val[3] = vshlq_u64(veorq_s8(v172, v65), vnegq_s64(vandq_s8(vshlq_n_s64(v72, 3uLL), a60)));
  v174 = vandq_s8(v259, *&STACK[0x310]);
  v175 = vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL);
  v176 = vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL);
  v177 = vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL);
  v178 = vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL);
  v257 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x2E0], v178), *&STACK[0x2D0]), vorrq_s8(vaddq_s64(v178, *&STACK[0x300]), *&STACK[0x2F0]));
  v179 = vsubq_s64(*&STACK[0x2A0], vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x2E0], v175), *&STACK[0x2D0]), vorrq_s8(vaddq_s64(v175, *&STACK[0x300]), *&STACK[0x2F0])));
  v180 = vsubq_s64(*&STACK[0x2A0], vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x2E0], v176), *&STACK[0x2D0]), vorrq_s8(vaddq_s64(v176, *&STACK[0x300]), *&STACK[0x2F0])));
  v261.val[1].i64[0] = vqtbl4q_s8(v261, a59).u64[0];
  v181 = veorq_s8(v180, *&STACK[0x290]);
  v182 = veorq_s8(v179, *&STACK[0x290]);
  v183 = veorq_s8(v179, *&STACK[0x280]);
  v184 = veorq_s8(v180, *&STACK[0x280]);
  v185 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL), v183), *&STACK[0x270]);
  v186 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v184), *&STACK[0x270]);
  v187 = vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL);
  v188 = veorq_s8(v186, vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL));
  v189 = veorq_s8(v185, v187);
  v190 = vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL);
  v191 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL), v189);
  v192 = vaddq_s64(v190, v188);
  v193 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v192, v192), *&STACK[0x260]), v192), *&STACK[0x250]), *&STACK[0x240]);
  v194 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v191, v191), *&STACK[0x260]), v191), *&STACK[0x250]), *&STACK[0x240]);
  v195 = vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL);
  v196 = veorq_s8(v194, vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL));
  v197 = veorq_s8(v193, v195);
  v198 = vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL);
  v199 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL), v197);
  v200 = veorq_s8(vaddq_s64(v198, v196), *&STACK[0x230]);
  v201 = veorq_s8(v199, *&STACK[0x230]);
  v202 = vsraq_n_u64(vshlq_n_s64(v196, 3uLL), v196, 0x3DuLL);
  v203 = veorq_s8(v201, vsraq_n_u64(vshlq_n_s64(v197, 3uLL), v197, 0x3DuLL));
  v204 = veorq_s8(v200, v202);
  v205 = vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL);
  v206 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), v204);
  v207 = veorq_s8(vaddq_s64(v205, v203), *&STACK[0x2C0]);
  v208 = veorq_s8(v206, *&STACK[0x2C0]);
  v209 = vsraq_n_u64(vshlq_n_s64(v203, 3uLL), v203, 0x3DuLL);
  v210 = veorq_s8(v208, vsraq_n_u64(vshlq_n_s64(v204, 3uLL), v204, 0x3DuLL));
  v211 = veorq_s8(v207, v209);
  v212 = vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL);
  v213 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v207, 0x38uLL), v207, 8uLL), v211);
  v214 = vaddq_s64(v212, v210);
  v215 = veorq_s8(v214, *&STACK[0x2B0]);
  v216 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v214, v64), *&STACK[0x220]), v215), vandq_s8(v215, v64));
  v217 = veorq_s8(v213, *&STACK[0x2B0]);
  v218 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v213, v64), *&STACK[0x220]), v217), vandq_s8(v217, v64)), *&STACK[0x210]);
  v219 = veorq_s8(v216, *&STACK[0x210]);
  v220 = veorq_s8(v219, vsraq_n_u64(vshlq_n_s64(v210, 3uLL), v210, 0x3DuLL));
  v221 = veorq_s8(v218, vsraq_n_u64(vshlq_n_s64(v211, 3uLL), v211, 0x3DuLL));
  v222 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v219, 0x38uLL), v219, 8uLL), v220), *&STACK[0x200]);
  v223 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v218, 0x38uLL), v218, 8uLL), v221), *&STACK[0x200]);
  v224 = vsraq_n_u64(vshlq_n_s64(v220, 3uLL), v220, 0x3DuLL);
  v225 = veorq_s8(v223, vsraq_n_u64(vshlq_n_s64(v221, 3uLL), v221, 0x3DuLL));
  v226 = vsubq_s64(*&STACK[0x2A0], vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x2E0], v177), *&STACK[0x2D0]), vorrq_s8(vaddq_s64(v177, *&STACK[0x300]), *&STACK[0x2F0])));
  v260.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v222, 0x38uLL), v222, 8uLL), veorq_s8(v222, v224)), v65), vnegq_s64(vandq_s8(vshlq_n_s64(v259, 3uLL), a60)));
  v260.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL), v225), v65), vnegq_s64(vandq_s8(vshlq_n_s64(v258, 3uLL), a60)));
  v227 = veorq_s8(v226, *&STACK[0x290]);
  v228 = veorq_s8(v226, *&STACK[0x280]);
  v229 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v227, 0x38uLL), v227, 8uLL), v228), *&STACK[0x270]);
  v230 = veorq_s8(v229, vsraq_n_u64(vshlq_n_s64(v228, 3uLL), v228, 0x3DuLL));
  v231 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL), v230);
  v232 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v231, v231), *&STACK[0x260]), v231), *&STACK[0x250]), *&STACK[0x240]);
  v233 = veorq_s8(v232, vsraq_n_u64(vshlq_n_s64(v230, 3uLL), v230, 0x3DuLL));
  v234 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL), v233), *&STACK[0x230]);
  v235 = veorq_s8(v234, vsraq_n_u64(vshlq_n_s64(v233, 3uLL), v233, 0x3DuLL));
  v236 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234, 0x38uLL), v234, 8uLL), v235), *&STACK[0x2C0]);
  v237 = veorq_s8(v236, vsraq_n_u64(vshlq_n_s64(v235, 3uLL), v235, 0x3DuLL));
  v238 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236, 0x38uLL), v236, 8uLL), v237);
  v239 = veorq_s8(v238, *&STACK[0x2B0]);
  v240 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v238, v64), *&STACK[0x220]), v239), vandq_s8(v239, v64)), *&STACK[0x210]);
  v241 = veorq_s8(v240, vsraq_n_u64(vshlq_n_s64(v237, 3uLL), v237, 0x3DuLL));
  v242 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v240, 0x38uLL), v240, 8uLL), v241), *&STACK[0x200]);
  v243 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v242, 0x38uLL), v242, 8uLL), veorq_s8(v242, vsraq_n_u64(vshlq_n_s64(v241, 3uLL), v241, 0x3DuLL)));
  v244 = vsubq_s64(*&STACK[0x2A0], v257);
  v260.val[1] = vshlq_u64(veorq_s8(v243, v65), vnegq_s64(vandq_s8(vshlq_n_s64(v130, 3uLL), a60)));
  v245 = veorq_s8(v244, *&STACK[0x290]);
  v261.val[0] = veorq_s8(v244, *&STACK[0x280]);
  v246 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v245, 0x38uLL), v245, 8uLL), v261.val[0]), *&STACK[0x270]);
  v261.val[0] = veorq_s8(v246, vsraq_n_u64(vshlq_n_s64(v261.val[0], 3uLL), v261.val[0], 0x3DuLL));
  v247 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v246, 0x38uLL), v246, 8uLL), v261.val[0]);
  v248 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v247, v247), *&STACK[0x260]), v247), *&STACK[0x250]), *&STACK[0x240]);
  v261.val[0] = veorq_s8(v248, vsraq_n_u64(vshlq_n_s64(v261.val[0], 3uLL), v261.val[0], 0x3DuLL));
  v249 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v248, 0x38uLL), v248, 8uLL), v261.val[0]), *&STACK[0x230]);
  v261.val[0] = veorq_s8(v249, vsraq_n_u64(vshlq_n_s64(v261.val[0], 3uLL), v261.val[0], 0x3DuLL));
  v250 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v249, 0x38uLL), v249, 8uLL), v261.val[0]), *&STACK[0x2C0]);
  v261.val[0] = veorq_s8(v250, vsraq_n_u64(vshlq_n_s64(v261.val[0], 3uLL), v261.val[0], 0x3DuLL));
  v251 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v250, 0x38uLL), v250, 8uLL), v261.val[0]);
  v252 = veorq_s8(v251, *&STACK[0x2B0]);
  v253 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v251, v64), *&STACK[0x220]), v252), vandq_s8(v252, v64)), *&STACK[0x210]);
  v261.val[0] = veorq_s8(v253, vsraq_n_u64(vshlq_n_s64(v261.val[0], 3uLL), v261.val[0], 0x3DuLL));
  v254 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v253, 0x38uLL), v253, 8uLL), v261.val[0]), *&STACK[0x200]);
  v260.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v254, 0x38uLL), v254, 8uLL), veorq_s8(v254, vsraq_n_u64(vshlq_n_s64(v261.val[0], 3uLL), v261.val[0], 0x3DuLL))), v65), vnegq_s64(vandq_s8(vshlq_n_s64(v147, 3uLL), a60)));
  v261.val[1].i64[1] = vqtbl4q_s8(v260, a59).u64[0];
  v260.val[0] = vrev64q_s8(v261.val[1]);
  *v67 = veorq_s8(vextq_s8(v260.val[0], v260.val[0], 8uLL), *(v61 + a8 - 16));
  return (*(v63 + 8 * ((3640 * ((a8 & 0xFFFFFFF0) == 16)) ^ v66)))(a1, 3640, 16 - (a8 & 0xFFFFFFF0), a4, a5, v66, v67, 0, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59.i64[0], a59.i64[1], a60.i64[0], a60.i64[1]);
}

uint64_t sub_100195210(_DWORD *a1)
{
  *STACK[0x658] = v1;
  *a1 = STACK[0x6D4];
  return (STACK[0x5B8])();
}

uint64_t sub_100195238()
{
  v2 = (*(v1 + 8 * (v0 + 6143)))(32, 0x103004054B5FA7DLL);
  STACK[0x440] = v2;
  return (*(v1 + 8 * (((v2 != 0) * (((v0 - 2913) | 0x808) - 2531)) ^ v0)))();
}

uint64_t sub_100195298()
{
  v2 = STACK[0x680];
  v3 = &STACK[0xAB0] + STACK[0x640];
  STACK[0x5A8] = v3;
  STACK[0x630] = (v3 + 16);
  STACK[0x450] = 0;
  STACK[0x6C0] = 0;
  LODWORD(STACK[0x80C]) = 197499219;
  STACK[0x7A0] = 0;
  LODWORD(STACK[0x7E4]) = 197499219;
  STACK[0x530] = v2;
  return (*(v1 + 8 * (((((v0 - 1281) ^ 0xD54) - 8665 + ((v0 - 4345) | 0x86)) * (v2 == 0)) | (v0 - 1281))))();
}

uint64_t sub_100195358()
{
  v3 = *(v0 + 8);
  STACK[0x558] = v3;
  return (*(v2 + 8 * (((v3 != 0) * (((v1 + 2039) ^ 0x809) - 853)) ^ (v1 + 2039))))();
}

uint64_t sub_100195390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char *a15, int a16, unsigned int a17)
{
  a15 = &a13;
  a17 = 1317436891 * (((&a15 | 0xF3B4D3AA) - (&a15 & 0xF3B4D3AA)) ^ 0x43B74BDC) + 8154;
  v19 = (*(v17 + 77096))(&a15);
  return (*(v17 + 8 * ((15414 * (a16 == 16257999)) ^ v18)))(v19);
}

uint64_t sub_10019542C(uint64_t a1)
{
  v6 = v2 + 2235;
  v7 = 3394 * ((v2 + 2235) ^ 0x1C36);
  v11 = (v3 + v1 - 16) < 0x10 || (v1 - 104 + *(v4 + 8 * (v6 - 7053)) - 4) < 0x10 || (v1 + *(v4 + 8 * (v6 ^ 0x1C85)) - 12 - 100) < 0x10 || (v1 - 104 + *(v4 + 8 * (v6 - 7131)) - 12) < 0x10;
  return (*(v5 + 8 * ((v11 * (v7 - 6775)) ^ v6)))(a1, 16);
}

uint64_t sub_100195564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, int a16, unsigned int a17, uint64_t a18, char *a19, unsigned int a20, unsigned int a21)
{
  v23 = 1824088897 * ((&a16 + 630365894 - 2 * (&a16 & 0x25929EC6)) ^ 0x7DFB4DA4);
  a20 = -654855621 - v23;
  a21 = v23 + 1674579114;
  a17 = v23 + 1018602645;
  a18 = a13;
  a19 = &a14;
  v24 = (*(v21 + 76864))(&a16);
  return (*(v21 + 8 * ((11 * (a16 == v22)) ^ 0x905)))(v24);
}

uint64_t sub_10019580C(uint64_t a1)
{
  v5 = *(v4 + 8 * (v2 ^ (238 * (((v1 + 1815398884) ^ 0x6C34C9E4u) > 7))));
  STACK[0x3D0] = *(v3 + 24);
  return v5(a1, 0xD02B2EB47D7683C6, 0xDF7BD152D757ACA5, 0xB30538E1A5AF13B6, 0x629E5557E5EFD9B2, 0x2451E0AF25CF2710, 0xBC6F38E694B3D867);
}

uint64_t sub_100195A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned int a20, int a21, unsigned int a22, uint64_t a23, uint64_t a24)
{
  v30 = 1875091903 * (&a20 ^ 0x36758383);
  a23 = a16;
  a21 = (v28 ^ 0xB75DBFEF) + ((2 * v28) & 0x6EBB7FDE) + 1757345467 + v30;
  a22 = v26 + 3853 + v30;
  (*(v24 + 8 * (v26 ^ 0x2AB2)))(&a20);
  v31 = 1875091903 * ((2 * (&a20 & 0x60076C00) - &a20 - 1611099143) ^ 0xA98D107A);
  a23 = a16;
  a21 = ((2 * v27) & 0x4AFB7FD6) + (v27 ^ 0x257DB2BD ^ (1138 * (v26 ^ 0xF1C))) + v31 - 90245441;
  a22 = v26 + 3853 + v31;
  (*(v24 + 8 * (v26 + 5774)))(&a20);
  v32 = 1824088897 * ((2 * (&a20 & 0x3F03218) - &a20 + 2081410535) ^ 0x24661E85);
  a24 = a16;
  a23 = a13;
  a22 = (a12 ^ 0x7EFEFFFE) + ((2 * a12) & 0xFDFDFFFC) - v32 - 811210100;
  a20 = v26 - 114 + v32;
  (*(v24 + 8 * (v26 + 5760)))(&a20);
  v33 = 1824088897 * ((2 * (&a20 & 0x2B04DAF8) - &a20 + 1425745156) ^ 0xC92F666);
  a20 = v26 - 114 + v33;
  a22 = (a14 ^ 0xDEA6EAEA) + ((2 * a14) & 0xBD4DD5D4) - v33 + 1878917024;
  a24 = a16;
  a23 = v29;
  (*(v24 + 8 * (v26 ^ 0x2A80)))(&a20);
  v34 = *v25 ^ 0xE0BCFEEA;
  v35 = (2 * *v25) & 0xC179FDD4;
  v36 = 1875091903 * ((((&a20 | 0xE499EA52) ^ 0xFFFFFFFE) - (~&a20 | 0x1B6615AD)) ^ 0x2D13962E);
  a23 = a16;
  a21 = v36 + v34 + v35 + 1063237568;
  a22 = v26 + 3853 + v36;
  v37 = (*(v24 + 8 * (v26 + 5774)))(&a20);
  return (*(v24 + 8 * ((11168 * (a20 == 16257999)) ^ v26)))(v37);
}

void sub_100195E0C(uint64_t a1@<X8>)
{
  *v2 = v1;
  *(v1 + 8) = *(a1 + 8);
  *(a1 + 8) = v1;
  sub_1000F828C();
}

uint64_t sub_100195E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned int a18, uint64_t a19)
{
  v26 = v24 ^ 0x68FFFF2D ^ (v19 - 898028733) & 0x4997;
  v27 = (2 * v24) & 0xD1FFED5E;
  v28 = v19 + 2437;
  v29 = 1875091903 * (((&a17 | 0x2DBF70EF) - &a17 + (&a17 & 0xD2408F10)) ^ 0x1BCAF36C);
  HIDWORD(a17) = v27 + v26 - 1222852613 + v29;
  a18 = v28 + v29;
  a19 = a13;
  (*(v25 + 77160))(&a17);
  v30 = 1875091903 * (((&a17 | 0x10A3565C) - &a17 + (&a17 & 0xEF5CA9A0)) ^ 0x26D6D5DF);
  a19 = a13;
  HIDWORD(a17) = (HIDWORD(v23) ^ 0xEC5FBEAA) + ((2 * HIDWORD(v23)) & 0xD8BF7D54) + 868022272 + v30;
  a18 = v28 + v30;
  (*(v25 + 77160))(&a17);
  v31 = 1875091903 * ((&a17 - 260782466 - 2 * (&a17 & 0xF074C67E)) ^ 0xC60145FD);
  a19 = a13;
  HIDWORD(a17) = (v23 ^ 0xEF1DF6EB) + ((2 * v23) & 0xDE3BEDD6) + 822001599 + v31;
  a18 = v28 + v31;
  (*(v25 + 77160))(&a17);
  a18 = 1824088897 * (((&a17 | 0xA8F12686) - &a17 + (&a17 & 0x570ED978)) ^ 0xF098F5E4) + 2305;
  a17 = v22;
  a19 = a13;
  (*(v25 + 76720))(&a17);
  v32 = 1875091903 * ((&a17 & 0x4DBB6714 | ~(&a17 | 0x4DBB6714)) ^ 0x84311B68);
  a19 = a13;
  HIDWORD(a17) = (v21 ^ 0x287CF6AA) + ((2 * v21) & 0x50F9ED54) - 140525568 + v32;
  a18 = v28 + v32;
  (*(v25 + 77160))(&a17);
  v33 = 1875091903 * ((&a17 & 0x8A5D01B2 | ~(&a17 | 0x8A5D01B2)) ^ 0x43D77DCE);
  HIDWORD(a17) = (v20 ^ 0x7E7EF6EB) + ((2 * v20) & 0x1EDD6) - 1583497281 + v33;
  a18 = v28 + v33;
  a19 = a13;
  v34 = (*(v25 + 77160))(&a17);
  return (*(v25 + 8 * ((2375 * (a17 == 16257999)) ^ 0x14A7u)))(v34);
}

uint64_t sub_100196300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v18 = a7 + v10;
  v19 = a7 + v10 + 9;
  v20 = __ROR8__(v19 & 0xFFFFFFFFFFFFFFF8, 8);
  v21 = (v20 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v22 = (__ROR8__((5 * (v12 ^ 0x15D0u)) ^ 0x49E9423B6F16E76CLL ^ (v20 - 0x6AF7234D0CC131D5), 8) + v21) ^ 0xE49D77DF873DBF7ELL;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = __ROR8__(v22, 8);
  v25 = ((v13 & (2 * (v24 + v23))) - (v24 + v23) + v15) ^ v16;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (v27 + v26 - (a1 & (2 * (v27 + v26))) + a2) ^ v14;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x61459D2AF01F24F7;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (v8 - ((v32 + v31) | v8) + ((v32 + v31) | a3)) ^ a4;
  v34 = a7 - 1;
  v35 = v33 ^ __ROR8__(v31, 61);
  v36 = (__ROR8__(v33, 8) + v35) ^ 0x1A2AEBE44253AF03;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  *(v18 + 9) = *(v7 + v34) ^ (((v9 - ((v38 + v37) ^ a5 | v9) + ((v38 + v37) ^ a5 | a6)) ^ v11) >> (8 * (v19 & 7u))) ^ 0x3C;
  return (*(v17 + 8 * ((15247 * (v34 == 0)) ^ (v12 + 2269))))();
}

void sub_1001964D0()
{
  STACK[0x6A8] = 0;
  LODWORD(STACK[0x474]) = 0;
  JUMPOUT(0x100196504);
}

uint64_t sub_10019674C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, _DWORD *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, int a63)
{
  *a33 = a57;
  *a35 = a43;
  if (v63 == -1998503080)
  {
    return (*(v64 + 8 * ((((a63 - 576) | 0x11) + 3396) ^ (a63 + 1296))))();
  }

  if (v63 != 1593862305)
  {
    JUMPOUT(0x10019670CLL);
  }

  return (*(v64 + 8 * ((6 * (a63 ^ 0xA67)) ^ 0x1F8C ^ (a63 - 2364))))();
}

uint64_t sub_1001967D4()
{
  v2 = STACK[0x650];
  LODWORD(STACK[0x8F4]) = STACK[0x7C4];
  STACK[0x378] = v2;
  return (*(v1 + 8 * ((((((v0 - 7608) | 0x200) + 926) ^ 0x5C4) * (v2 != 0)) | v0)))();
}

uint64_t sub_1001968A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, int a35, int a36, int a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, _DWORD *a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  v56 = (v54 - 9483);
  v57 = 4 * v52;
  v58 = -778651209 * ((*(*a43 + (*a42 & 0x5FEC0178)) ^ (a41 + 4 * v52)) & 0x7FFFFFFF);
  v59 = v58 ^ HIWORD(v58);
  v60 = -778651209 * v59;
  *(&a51 + v57) ^= (((((~v56 + v52) ^ (v55 - v56)) - 1) & (v56 - v52)) >> 63) ^ v56 & 0x418747CD ^ *(a41 + v57) ^ *(*(&off_100BFFA10 + a36) + HIBYTE(v60) - 1) ^ *(*(&off_100BFFA10 + a35) + HIBYTE(v60) + 2) ^ *(*(&off_100BFFA10 + a34) + HIBYTE(v60) + 4) ^ (v59 * (a37 & 0x8F596FE6 ^ 0xB9B70DE6)) ^ v60 ^ (-1235337193 * ((-778651209 * v59) >> 24)) ^ 1;
  return (*(v53 + 8 * (((v51 - 1 == ((((a37 & 0x8F596FE6) + 4890) | 0x40E) ^ 0x250E)) * ((a37 & 0x8F596FE6) - 3533)) | a37 & 0x8F596FE6)))();
}

uint64_t sub_100196A54@<X0>(uint64_t a1@<X8>)
{
  if (*v1)
  {
    v4 = a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  return (*(v3 + 8 * ((v5 * ((v2 + 1192944494) & 0xB8E51EFE ^ 0x6C3)) ^ (v2 - 2234))))();
}

uint64_t sub_100196AA8()
{
  (*(v2 + 8 * (v1 ^ 0x2DC0)))(v3);
  *v0 = 0;
  return (STACK[0x580])(13908, 197499219, 4294958795, 4294961678, 4294961640);
}

void sub_100196B50(uint64_t a1@<X8>)
{
  (*(v2 + 8 * (v1 ^ 0x329C)))(a1);
  *(STACK[0x870] + 24) = 0;
  sub_100172E64();
}

uint64_t sub_100196B80@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v10 = v4 + 32;
  v11 = (v10 ^ v7 ^ v3) + v2;
  v12 = *(a1 + v11 - 15);
  v13 = *(a1 + v11 - 31);
  v14 = a2 + v11;
  *(v14 - 15) = v12;
  *(v14 - 31) = v13;
  return (*(v9 + 8 * (((v5 == v10) * v8) ^ v6)))();
}

uint64_t sub_100196B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W8>)
{
  v5 = *(STACK[0x910] + 24);
  STACK[0x6D8] = v5;
  return (*(v4 + 8 * (((v5 != 0) * (a4 - 902)) ^ a4)))(a1, a2, a3, 16215976);
}

uint64_t sub_100196BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x288] = 0;
  STACK[0x230] = 0;
  v68 = (v67 + 1021391274) & 0xC31ECDFF;
  v69 = *(a7 + 8 * ((70 * (a67 == ((((v67 - 1442) | 0x84) + 16258553) ^ v68))) ^ v67));
  HIDWORD(a10) = 197499219;
  STACK[0x2A8] = STACK[0x240];
  return v69(a1, a2, a3, v68, a5, a6, a7, LODWORD(STACK[0x2BC]), a9, a10, a11, 0, a13, a14, a15, a16);
}

uint64_t sub_100196C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18, unsigned int a19, unsigned int a20)
{
  v23 = (((&a15 | 0x7DDBA180) - &a15 + (&a15 & 0x82245E78)) ^ 0x25B272E2) * v20;
  a16 = v23 + 170561316;
  a19 = -654855621 - v23;
  a20 = v23 + v22 + 1674576591;
  a17 = a13;
  a18 = &a11;
  v24 = (*(v21 + 8 * (v22 + 7085)))(&a15);
  return (*(v21 + 8 * ((7136 * (a15 == (((v22 + 3110) | 0x800) ^ (v22 + 16253939)))) ^ v22)))(v24);
}

uint64_t sub_100196D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18)
{
  *a13 = a1;
  v23 = (*(v22 + 8 * (v19 ^ 0x780)))(a18, v20);
  return (*(v22 + 8 * ((19 * (a18 + v21 - (v18 & (2 * a18)) != ((2 * v19) ^ 0x1A819A7C))) ^ v19)))(v23);
}

uint64_t sub_100196EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, unsigned int a15, unsigned int a16, uint64_t a17, uint64_t a18)
{
  v24 = 1875091903 * (((&a14 | 0x30D47817) + (~&a14 | 0xCF2B87E8)) ^ 0x6A1FB95);
  a17 = a11;
  a15 = (v22 ^ 0x747FB6FA) + ((2 * v22) & 0xE8FF6DF4) - 1415774288 + v24;
  a16 = v24 + 7724;
  (*(v23 + 77160))(&a14);
  v25 = 1824088897 * ((&a14 & 0x83E0AD80 | ~(&a14 | 0x83E0AD80)) ^ 0x2476811D);
  a17 = v20;
  a18 = a11;
  a16 = ((2 * v21) & 0xDFDFF7DC) - v25 + (v21 ^ 0xEFEFFBEE) + 1588915868;
  a14 = v25 + 3757;
  (*(v23 + 77048))(&a14);
  v26 = 1824088897 * ((-826744994 - (&a14 | 0xCEB8DF5E) + (&a14 | 0x314720A1)) ^ 0x692EF3C3);
  a17 = v18;
  a18 = a11;
  a14 = v26 + 3757;
  a16 = (v19 ^ 0xEFE5EEFF) + ((2 * v19) & 0xDFCBDDFE) - v26 + 1589574539;
  v27 = (*(v23 + 77048))(&a14);
  return (*(v23 + 8 * ((8151 * (a15 != 16257999)) ^ 0xFF7u)))(v27);
}

uint64_t sub_1001970D8()
{
  v3 = *(v2 + 8);
  STACK[0x4C0] = v1;
  return (*(STACK[0x330] + 8 * (((v3 == 0) * ((v0 ^ 0x1B82) - 4730 + ((v0 - 6729) | 0x1841))) ^ v0)))();
}

uint64_t sub_100197124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, int a63)
{
  v64 = STACK[0x320];
  if (LODWORD(STACK[0x320]) == 17168)
  {
    return (*(a64 + 8 * ((a63 + 1994) ^ (1049 * (LODWORD(STACK[0x2C0]) == LODWORD(STACK[0x330]))))))();
  }

  if (v64 == 20706)
  {
    return (*(a64 + 8 * (((LODWORD(STACK[0x9A0]) == 197499227) * ((a63 - 824259820) & 0x31212AB7 ^ 0x77B)) ^ (a63 + 1994))))();
  }

  if (v64 == 33980)
  {
    return (*(a64 + 8 * ((240 * (LODWORD(STACK[0x9B0]) - ((2 * LODWORD(STACK[0x9B0])) & 0xDCE86D8E) + ((a63 - 2146470503) & 0x7FF09FDE ^ 0xFFFFE022) - 294373657 == -294373689)) ^ (a63 + 2086))))();
  }

  return (*(a64 + 8 * (((*(STACK[0x778] + 24) != 0) * (((a63 + 2618) | 0x160) ^ (a63 + 2887))) ^ (a63 + 5088))))();
}

uint64_t sub_1001973E0()
{
  v4 = (((((v2 - 5884) | 0x1100) ^ 0xEEC920FF ^ *(v1 + 16)) - 1748908938) ^ ((*(v1 + 16) ^ 0xB2EB5BC) + 1915110549) ^ ((*(v1 + 16) ^ 0x1A187F1E) + 1662029367)) + ((v2 - 1448) ^ 0xDDF39B0);
  v5 = (v0 > 0x6B29C4E1) ^ (v4 < 0x94D63B1E);
  v6 = v0 - 1797899490 > v4;
  if (v5)
  {
    v6 = v0 > 0x6B29C4E1;
  }

  return (*(v3 + 8 * ((94 * v6) ^ v2)))();
}

void sub_100197568()
{
  (*(v2 + 8 * (v0 ^ 0x35D2)))();
  *(v1 + 24) = 0;
  JUMPOUT(0x100197590);
}

void sub_1001975EC(uint64_t a1)
{
  (*(v1 + 77696))();
  (*(v1 + 76832))(a1);
  JUMPOUT(0x100197630);
}

uint64_t sub_100197698@<X0>(int a1@<W8>)
{
  STACK[0x4A0] = 0;
  v2 = *(STACK[0x800] + 8);
  STACK[0x6A8] = 0;
  LODWORD(STACK[0x514]) = 0;
  LODWORD(STACK[0x420]) = 197499219;
  return (*(v1 + 8 * (((v2 == 0) * (((a1 - 7861) | 0x619) - 1648)) ^ a1)))();
}

uint64_t sub_1001976F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, int a12, int a13, unsigned int a14, uint64_t a15, char *a16, unsigned int a17, unsigned int a18)
{
  v22 = (&a13 ^ 0x5869D362) * v19;
  a15 = a10;
  a16 = &a11;
  a14 = v22 + 469620298;
  a17 = -654855621 - v22;
  a18 = v22 + v20 + 1674577938;
  v23 = (*(v18 + 8 * (v20 + 8432)))(&a13);
  return (*(v18 + 8 * ((8030 * (a13 == ((v20 + 2943) ^ 0x1746 ^ (v21 + 207)))) ^ v20)))(v23);
}

uint64_t sub_100197794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W8>)
{
  STACK[0xAA8] = v4;
  v6 = STACK[0x500];
  STACK[0xAB0] = STACK[0x500];
  return (*(STACK[0x400] + 8 * ((15336 * (v4 - v6 > (a4 + 1189) - 9239)) ^ a4)))(a1, a2, a3, (v5 + 5));
}

uint64_t sub_1001978FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, int a63)
{
  v65 = STACK[0x600];
  v66 = STACK[0x3C0];
  v67 = 1824088897 * ((v64 + 360742419 - 2 * ((v64 - 232) & 0x15807EFB)) ^ 0x4DE9AD99);
  *(v64 - 216) = v67 - 125652507;
  *(v64 - 212) = 744417810 - v67 + a63;
  *(v64 - 224) = a29;
  *(v64 - 208) = 1461241532 - v67;
  *(v64 - 200) = v66;
  *(v64 - 192) = v65;
  v68 = (*(a64 + 8 * (a63 ^ 0x2FAF)))(v64 - 232);
  v69 = *(v64 - 232);
  LODWORD(STACK[0x900]) = v69;
  return (*(a64 + 8 * ((89 * ((((a63 - 1606) ^ (v69 == 16257999)) & 1) == 0)) ^ (a63 + 1908))))(v68);
}

uint64_t sub_1001979E0()
{
  v3 = *v1;
  STACK[0x708] = 0;
  STACK[0x478] = 0;
  return (*(v2 + 8 * ((61 * ((((v0 - 6673) ^ (v3 == 0)) & 1) == 0)) ^ v0)))();
}

uint64_t sub_100197A60()
{
  v2 = *(STACK[0x858] + 24);
  STACK[0x490] = v2;
  return (*(v1 + 8 * ((((((v0 - 7222) | 0x181C) - 3576) ^ (v0 - 438193515) & 0x1A1E3B7E) * (v2 == 0)) ^ v0)))();
}

uint64_t sub_100197AC4()
{
  v3 = STACK[0x804];
  STACK[0x728] += ((v1 ^ 0x8E2) + 1301029403) & 0xB273DDF9 ^ 0xFFFFFFFFFFFFE2F9;
  v4 = v3 != v0 + (((v1 ^ 0x8E2) - 44379438) & 0x2A515FF) - 1510;
  return (*(v2 + 8 * ((v4 | (8 * v4)) ^ v1 ^ 0x8E2)))();
}

uint64_t sub_1001982B8()
{
  v2 = STACK[0x7C0];
  STACK[0x408] = STACK[0x7C0];
  return (*(v1 + 8 * ((((v0 - 539545751) & 0x2028EFDD ^ 0x23CA) * (v2 == 0)) ^ (v0 + 4477))))();
}

uint64_t sub_100198314@<X0>(int a1@<W8>)
{
  v3 = (*(v2 + 8 * (a1 + 4225)))();
  STACK[0x8B0] = 0;
  return v1(v3);
}

uint64_t sub_100198350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, __int16 a13, char a14, __int16 a15, char a16, uint64_t a17, char a18, int a19, int a20, unsigned int a21, uint64_t a22, char *a23, unsigned int a24, char *a25)
{
  a21 = (v25 - 3677) ^ (((2 * (&a20 & 0x77014BB8) - &a20 - 1996573627) ^ 0xB1087E66) * v27);
  a22 = a10;
  a23 = &a12;
  (*(v28 + 8 * (v25 ^ 0x3F90u)))(&a20);
  a22 = a10;
  a23 = &a16;
  a25 = &a18;
  a24 = (v26 + 657) ^ (1710126949 * (((&a20 | 0xBD441385) - (&a20 & 0xBD441385)) ^ 0x8F5F4815));
  (*(v28 + 8 * (v26 ^ 0x2F1A)))(&a20);
  a21 = (v26 + 551) ^ (((2 * (&a20 & 0x54BC9608) - &a20 - 1421645324) ^ 0x92B5A3D7) * v27);
  a22 = a10;
  a23 = &a14;
  (*(v28 + 8 * (v26 + 6900)))(&a20);
  LODWORD(a23) = v26 - 2008441969 * ((-917680827 - (&a20 | 0xC94D4D45) + (&a20 | 0x36B2B2BA)) ^ 0x7E2BE6B4) + 2984;
  a22 = a10;
  v30 = (*(v28 + 8 * (v26 ^ 0x2FEE)))(&a20);
  return (*(v28 + 8 * ((509 * (a20 == (((v26 - 2401) | 0x403) ^ (v29 + 777)))) ^ v26)))(v30);
}

uint64_t sub_100198524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10)
{
  v17 = *v14;
  v18 = 1875091903 * ((v11 - 1027664624 - 2 * (v11 & 0xC2BF1510)) ^ 0xF4CA9693);
  *(v16 - 132) = v18 + a10 + a9;
  *(v16 - 128) = v15 + 1579 + v18;
  *(v13 + 16) = v17;
  (*(v12 + 8 * (v15 ^ 0x3DAC)))(v16 - 136);
  v19 = *v14;
  v20 = 1875091903 * ((2 * (v11 & 0x6C7E86D0) - v11 + 327252267) ^ 0x25F4FAA8);
  *(v16 - 132) = v20 + (*v10 ^ 0x261DFEBF) + ((2 * *v10) & 0x4C3BFD7E) - 100747285;
  *(v16 - 128) = v15 + 1579 + v20;
  *(v13 + 16) = v19;
  (*(v12 + 8 * (v15 ^ 0x3DAC)))(v16 - 136);
  v21 = *v14;
  v22 = 956911519 * (((~v11 | 0xC011CC87ADDAC294) + (v11 | 0x3FEE337852253D6BLL)) ^ 0x7AD846A4B8B44D6FLL);
  v23 = v22 + *(v10 + 8) - 0x632958EA97E09F34 - (((v15 + 2064255867) + 0x39AD4E2A55349E1CLL) & (2 * *(v10 + 8)));
  *(v16 - 136) = (v15 - 5123) ^ v22;
  *(v13 + 8) = v23;
  *(v13 + 16) = v21;
  (*(v12 + 8 * (v15 ^ 0x3D7E)))(v16 - 136);
  v24 = *v14;
  v25 = *(v10 + 16);
  v26 = v16 - 136;
  v27 = 956911519 * ((((2 * v11) | 0x17743CE676412CDALL) - v11 - 0xBBA1E733B20966DLL) ^ 0x4E8C6BAFD1B1E668);
  *(v16 - 136) = (v15 - 5123) ^ v27;
  *(v26 + 8) = v27 + v25 - 0x632958EA97E09F34 - ((2 * v25) & 0x39AD4E2AD03EC198);
  *(v26 + 16) = v24;
  (*(v12 + 8 * (v15 ^ 0x3D7E)))(v16 - 136);
  v28 = *v14;
  v29 = *(v10 + 24);
  v30 = v16 - 136;
  v31 = 956911519 * (((v11 | 0x351C394C16DA5F1DLL) - v11 + (v11 & 0xCAE3C6B3E925A0E0)) ^ 0x702A4C90FC4B2F18);
  *(v16 - 136) = (v15 - 5123) ^ v31;
  *(v30 + 8) = v31 + v29 - 0x632958EA97E09F34 - ((2 * v29) & 0x39AD4E2AD03EC198);
  *(v30 + 16) = v28;
  v32 = (*(v12 + 8 * (v15 + 3454)))(v16 - 136);
  return (*(v12 + 8 * ((1873 * (*(v16 - 112) == 16257999)) ^ v15)))(v32);
}

uint64_t sub_1001989C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  *(a22 + 384) = STACK[0x8B8];
  *(a22 + 376) = 1;
  LODWORD(STACK[0x4D4]) = 16257999;
  return (*(v23 + 8 * ((((((v22 - 1140) | 0x178A) ^ 0xF80404) != 16257999) * (((v22 + 1763439434) & 0x96E41FCB) - 6040)) ^ (v22 + 2919))))();
}

uint64_t sub_100198ACC@<X0>(uint64_t a1@<X8>)
{
  v8 = a1 + v1 - 2703;
  *(v6 + v8) = v7 ^ HIBYTE(v2) ^ v4;
  return (*(v5 + 8 * ((16 * (v8 > 0x1E)) | (32 * (v8 > 0x1E)) | v3)))();
}

uint64_t sub_100198C10()
{
  v2 = STACK[0x580];
  STACK[0x548] = *(v1 + 8 * (v0 - 2348));
  return (*(v1 + 8 * ((((((v0 - 65) | 0x46) - 13) ^ 0xBFA ^ ((((v0 - 65) | 0x46) - 13) | 8) ^ 0xBD8) * (v2 == 0)) ^ ((v0 - 65) | 0x46))))();
}

uint64_t sub_100198CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, unsigned int a22, uint64_t a23, char *a24, unsigned int a25, unsigned int a26)
{
  v29 = (((&a21 | 0x740E429E) - &a21 + (&a21 & 0x8BF1BD60)) ^ 0x2C6791FC) * v27;
  a22 = v29 - 829730014;
  a25 = 1032869496 - v29;
  a26 = v29 + v26 + 1674576798;
  a23 = a18;
  a24 = &a15;
  v30 = (*(v28 + 8 * (v26 + 7292)))(&a21);
  return (*(v28 + 8 * ((11281 * (a21 == ((v26 - 1136716117) & 0x36CE ^ 0xF80F3B ^ (2 * (v26 ^ 0xC35))))) ^ v26)))(v30);
}

uint64_t sub_100198EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  LODWORD(STACK[0x25C]) = v25;
  v31 = (((v22 + 67) | 0x100Au) ^ 0x179ABFF90) & (2 * v24);
  v29 = *(*(v27 - 256) + 8 * (v22 ^ (4054 * ((v23 ^ a6) < 8))));
  STACK[0x2B0] = *(v20 + 24);
  return v29(v28, a2, v21, 4958, a5, 0xE49D77DF873DBF7ELL, v26, 0x186483527E1519FELL, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v24 ^ 0x17FFFF8FBCD5F3CFLL, v31, v20);
}

uint64_t sub_100198FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int a52, int a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = (*(v72 + 8 * ((a72 - 1504) ^ 0x3449)))(LODWORD(STACK[0x544]) ^ (a72 + 1439577056) & 0xAA31BDFD ^ 0xBC590FA, 0x100004077774924);
  STACK[0xAD8] = v73;
  if (v73)
  {
    a53 = 16257999;
  }

  LODWORD(STACK[0xAE4]) = a53;
  return (*(v72 + 8 * ((26 * (((((a72 + 32) ^ 0xF1) + 1) ^ (v73 == 0)) & 1)) ^ (a72 - 1504))))();
}

uint64_t sub_100199070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, unsigned int a17, uint64_t a18, char *a19, unsigned int a20, unsigned int a21)
{
  v24 = ((&a16 + 742090578 - 2 * (&a16 & 0x2C3B6752)) ^ 0x7452B430) * v22;
  a20 = -654855621 - v24;
  a21 = v24 + v23 + 1674575039;
  a17 = v24 + 1520183258;
  a18 = a14;
  a19 = &a11;
  v25 = (*(v21 + 8 * (v23 + 5533)))(&a16);
  return (*(v21 + 8 * ((5395 * (a16 == ((v23 + 780134145) & 0x2C6929D7) - 728829173)) ^ v23)))(v25);
}

uint64_t sub_10019913C()
{
  v3 = *v1;
  STACK[0x8D8] = 0;
  STACK[0x3C0] = 0;
  return (*(v2 + 8 * (((((v0 - 2071) | 0x20) - 401) * (v3 == 0)) ^ v0)))();
}

uint64_t sub_1001991DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (v4 - 8076) | 0xBC0;
  LODWORD(STACK[0x300]) = v7;
  return (*(v6 + 8 * (((v5 < v4 - 8095) * (v7 - 2928)) ^ (v4 - 762))))(a1, a2, a3, a4);
}

uint64_t sub_100199334()
{
  v2 = v0 ^ 0x3FB3;
  (*(v1 + 8 * (v0 + 1720)))();
  return (*(STACK[0x400] + 8 * (((((STACK[0x620] == 0) ^ v2) & 1) * ((11 * (v2 ^ 0x21BA)) ^ 0x893)) ^ v2)))();
}

uint64_t sub_100199398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W8>)
{
  v6 = a4 - 8617;
  v7 = *(v4 + 8);
  STACK[0x900] = *(v5 + 8 * v6);
  return sub_10015F850(a1, a2, a3, v7);
}

uint64_t sub_1001993CC(uint64_t a1)
{
  *(a1 + 80) = 16640;
  *a1 = 1442350434;
  strcpy((a1 + 8), "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<");
  *(a1 + 73) = 0;
  *(a1 + 74) = 0;
  *(a1 + 76) = 0;
  v2 = STACK[0x408];
  *(v2 + 84) = 7;
  *(v2 + 105) = 0;
  *(v2 + 106) = 0;
  strcpy((v2 + 88), "<<<<<<<<<<<<<<<<");
  *(v2 + 108) = 0;
  *v1 = v2;
  return (STACK[0x728])();
}

uint64_t sub_1001994AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, unsigned int a25)
{
  v27 = *(a7 + 8 * (((a25 > v26) * ((151 * (v25 ^ 0x8A)) ^ 0x242D)) ^ v25));
  STACK[0x270] = STACK[0x2A8];
  LODWORD(STACK[0x25C]) = 16257999;
  return v27();
}

uint64_t sub_100199508()
{
  v2 = *(v1 - 140);
  v3 = v2 + 2900;
  v4 = LODWORD(STACK[0x2D0]) + 189077863;
  v5 = ((v4 & 0x9DD0CCCA) << (v2 + 98)) & (v4 ^ 0xD980EAC2) ^ v4 & 0x9DD0CCCA;
  v6 = ((2 * (v4 ^ 0xC9017246)) ^ 0xA9A37D18) & (v4 ^ 0xC9017246) ^ (2 * (v4 ^ 0xC9017246)) & 0x54D1BE8C;
  v7 = v6 ^ 0x54508284;
  v8 = (v6 ^ 0x91B48C) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0x5346FA30) & v7 ^ (4 * v7) & 0x54D1BE8C;
  v10 = (v9 ^ 0x5040BA0C) & (16 * v8) ^ v8;
  v11 = ((16 * (v9 ^ 0x491048C)) ^ 0x4D1BE8C0) & (v9 ^ 0x491048C) ^ (16 * (v9 ^ 0x491048C)) & 0x54D1BE80;
  v12 = v10 ^ 0x54D1BE8C ^ (v11 ^ 0x4411A80C) & (v10 << 8);
  v13 = v4 ^ (2 * ((v12 << 16) & 0x54D10000 ^ v12 ^ ((v12 << 16) ^ 0x3E8C0000) & (((v11 ^ 0x10C0160C) << 8) & 0x54D10000 ^ 0x4410000 ^ (((v11 ^ 0x10C0160C) << 8) ^ 0x51BE0000) & (v11 ^ 0x10C0160C))));
  v14 = (v2 - 517) | 0x205;
  v16 = v13 != (v14 ^ 0x1D73A74D) && ((((v3 + 675244291) & 0xD7C07D3F) - 2087) & v13) == 2;
  v17 = *(v0 + 8 * ((1000 * v16) ^ v3));
  *(v1 - 144) = -42899;
  *(v1 - 140) = v14;
  return v17();
}

uint64_t sub_1001996C4@<X0>(int a1@<W8>)
{
  v2 = a1 & 0xEC69EFDF;
  v3 = (v2 + 2413) | 0xC74;
  (*(v1 + 8 * (v2 + 7783)))();
  STACK[0x4C8] = 0;
  return (*(v1 + 8 * (((STACK[0x7A8] != 0) * (((v3 - 5374) | 0x500) - 2822)) ^ v3)))();
}

uint64_t sub_100199738()
{
  v2 = (*(v1 + 8 * (v0 + 4523)))(STACK[0x4A0], 0x100004077774924);
  v3 = STACK[0x330];
  STACK[0x520] = v2;
  return (*(v3 + 8 * (((v2 == 0) * ((v0 - 465) ^ (v0 + 511))) ^ v0)))();
}

uint64_t sub_100199824@<X0>(int a1@<W8>)
{
  v3 = (*(v2 + 8 * (a1 + 6553)))();
  *(v1 + 24) = 0;
  return sub_100199848(v3);
}

uint64_t sub_1001998BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char *a15, int a16, unsigned int a17, int a18)
{
  v21 = 956911519 * ((2 * (&a15 & 0x1E65E548) - &a15 + 1637489328) ^ 0x8B0B6AB5);
  HIDWORD(a15) = v21 + 543642722;
  a16 = v21 ^ 0x61FE7920;
  a17 = 1002199528 - v21;
  a18 = (v19 + 3516) ^ v21;
  (*(v18 + 8 * (v19 + 7508)))(&a15);
  a17 = v19 + 1317436891 * ((&a15 - 1289156786 - 2 * (&a15 & 0xB329074E)) ^ 0x32A9F38) + 6036;
  a15 = &a13;
  v22 = (*(v18 + 8 * (v19 ^ 0x2DE3)))(&a15);
  return (*(v18 + 8 * (((a16 == v20) * ((v19 + 2015176633) & 0x1CFE ^ 0x1143)) ^ v19)))(v22);
}

uint64_t sub_100199A3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  *(v34 - 208) = a3;
  *(v34 - 204) = 1965680252;
  v35 = **(v33 + 8 * (v30 - 4779));
  v36 = 1824088897 * ((0x2B9B12B217EFDC9 - (v32 | 0x2B9B12B217EFDC9) + a30) ^ 0x90C123DF86E8D154);
  *(v34 - 128) = (v30 - 1005083424) ^ v36;
  *(a4 + 88) = v36;
  *(a4 + 72) = v35 ^ v36;
  *(v34 - 168) = v36;
  *(v34 - 144) = v30 - 1005083424 - v36 + 863;
  *(v34 - 160) = v36 + v30 + 1454885161;
  *(v34 - 156) = ((v30 - 1005083424) ^ 2) + v36;
  v37 = (*(v31 + 8 * ((v30 + 4477) ^ 0xCD)))(v34 - 168);
  return (*(v31 + 8 * *(v34 - 164)))(v37);
}

uint64_t sub_100199B40()
{
  STACK[0x918] = v1;
  v3 = STACK[0x460];
  STACK[0x920] = STACK[0x460];
  v4 = v1 - v3 > (v0 ^ 0xE0u) - 5986 + (((v0 ^ 0x16F7) - 977) | 0x165u);
  return (*(v2 + 8 * (((2 * v4) | (8 * v4)) ^ v0 ^ 0x16F7)))();
}

uint64_t sub_100199BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, _DWORD *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, int a18)
{
  *a6 = 0;
  *a7 = 0;
  a17 = 476323082 - 1710126949 * (&a17 ^ 0x321B5B90);
  v19 = (*(v18 + 77088))(&a17);
  return (*(v18 + 8 * ((627 * (a18 == 16257999)) ^ 0x982u)))(v19);
}

uint64_t sub_100199C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, unsigned int a17, unsigned int a18, uint64_t a19, uint64_t a20)
{
  v25 = 1875091903 * ((1777401401 - (&a16 | 0x69F0FE39) + (&a16 | 0x960F01C6)) ^ 0xA07A8245);
  a17 = (v22 ^ 0xE15DFEBB) + ((2 * v22) & 0xC2BBFD76) + 1052686319 + v25;
  a18 = v25 + 7724;
  a19 = a14;
  (*(v23 + 77160))(&a16);
  v26 = 1824088897 * (((&a16 | 0xF6A235F8) - (&a16 & 0xF6A235F8)) ^ 0xAECBE69A);
  a16 = v26 + 3757;
  a18 = (v21 ^ 0x5FEDFF8B) + ((2 * v21) & 0xBFDBFF16) - v26 - 290002177;
  a19 = v20;
  a20 = a14;
  v27 = (*(v23 + 77048))(&a16);
  return (*(v23 + 8 * ((8137 * (a17 == v24)) ^ 0xFEBu)))(v27);
}

uint64_t sub_100199E0C(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *v2 = a1;
  return (*(v3 + 8 * ((((((1317 * ((v1 + 4068) ^ 0x1A2C)) ^ (STACK[0x5B8] == 0)) & 1) == 0) * (((v1 - 522) | 0x20A) - 2607)) ^ (v1 + 4068))))();
}

uint64_t sub_100199EB4@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v9 = v4 + 32;
  v10 = (v6 ^ v9) + v2;
  v11 = *(v7 + v10 - 15);
  v12 = *(v7 + v10 - 31);
  v13 = a2 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v8 + 8 * (((v5 == v9) * a1) ^ v3)))();
}

uint64_t sub_100199EBC@<X0>(uint64_t a1@<X6>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62)
{
  v63 = *(v62 - 208);
  v64 = v63[1];
  a62[1] = v64;
  *a62 = *v63;
  return (*(a1 + 8 * (((v64 != 0) * ((a2 + 1429537509) & 0xAACADDE1 ^ 0x55F)) ^ a2)))();
}

uint64_t sub_100199FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, int a17, unsigned int a18, uint64_t a19, char *a20, unsigned int a21, unsigned int a22)
{
  if (v22)
  {
    v26 = 1032869496;
  }

  else
  {
    v26 = -1574372683;
  }

  v27 = ((832643036 - (&a17 | 0x31A11FDC) + (&a17 | 0xCE5EE023)) ^ 0x96373341) * v25;
  a19 = a13;
  a20 = &a15;
  a21 = v26 - v27;
  a22 = v27 + v24 + 1674576883;
  a18 = v27 + 1733649567;
  v28 = (*(v23 + 8 * (v24 + 7377)))(&a17);
  return (*(v23 + 8 * ((7570 * (a17 == ((((v24 + 246347591) & 0x10B7F) + 16255524) ^ v24 ^ 0xEDA))) ^ v24)))(v28);
}

uint64_t sub_10019A114()
{
  v2 = *(STACK[0x3E0] + 24);
  STACK[0x810] = v2;
  return (*(v1 + 8 * ((507 * (((v2 == 0) ^ v0) & 1)) ^ v0)))();
}

void sub_10019A154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13)
{
  v16 = *a13;
  *(v14 - 232) = v13 + 1358806181 * ((((2 * (v14 - 232)) | 0xF36E1DE4) - (v14 - 232) + 105443598) ^ 0xC6986271) + 1853;
  *(v14 - 224) = v16;
  (*(v15 + 8 * (v13 + 8150)))(v14 - 232);
  JUMPOUT(0x10019A1D0);
}

uint64_t sub_10019A1D4()
{
  LODWORD(STACK[0x45C]) = v1;
  STACK[0x7D8] = *(v3 + 8 * v0);
  LODWORD(STACK[0x310]) = v2 - 5614;
  LODWORD(STACK[0x300]) = v2 - 5021;
  LODWORD(STACK[0x2F0]) = v2 - 5055;
  LODWORD(STACK[0x2E0]) = v2 - 4572;
  LODWORD(STACK[0x2D0]) = v2 - 5037;
  return sub_10019A39C();
}

uint64_t sub_10019A1F4()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x3CB4u)))(64, 0x100004077774924);
  STACK[0x688] = v2;
  return (*(v1 + 8 * (((v2 == 0) * ((v0 + 1721151209) & 0x99693C8E ^ (v0 - 5263))) | v0)))();
}

uint64_t sub_10019A2B0@<X0>(uint64_t a1@<X8>)
{
  v3 = (((2 * v1) & 0x6FFDFB7ABB9F34FALL) + (v1 ^ 0xB7FEFDBD5DCF9A7DLL) + a1 + 0x48010242A2306583);
  v4 = (v3[1] << ((v2 ^ 0xF6u) - 59)) | (*v3 << 56) | (v3[2] << 40) | (v3[3] << 32) | (v3[4] << 24) | (v3[5] << 16) | (v3[6] << 8) | v3[7];
  STACK[0x718] = v4 + 0x431A33AA2E6D965FLL - ((2 * v4) & 0x863467545CDB2CBELL);
  return sub_10019A370();
}

uint64_t sub_10019A4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, unint64_t a21, uint64_t a22, uint64_t a23)
{
  v29 = 1875091903 * (((v23 | 0x9D6A0BB0) - v23 + (v23 & 0x6295F448)) ^ 0xAB1F8833);
  a22 = a15;
  a20 = (v26 ^ 0x62BCFFAE) + ((2 * v26) & 0xC579FF5C) - 1117800708 + v29;
  LODWORD(a21) = v29 + v28 + 3149;
  (*(v27 + 8 * (v28 + 5070)))(&a19);
  v30 = 956911519 * (((v23 | 0x57C321ADA5CCBD27) - (v23 & 0x57C321ADA5CCBD27)) ^ 0x12F554714F5DCD22);
  a19 = (v28 - 3553) ^ v30;
  a21 = v25 - ((2 * v25) & 0x39AD4E2AD03EC198) + v30 + ((v28 - 2288) ^ 0x9CD6A715681F6823);
  a22 = a15;
  (*(v27 + 8 * (v28 ^ 0x34A0)))(&a19);
  v31 = *(v24 + 8);
  v32 = 1824088897 * ((2 * (v23 & 0x71260A0) - v23 + 2028838744) ^ 0x20844C3A);
  v33 = (*v24 ^ 0xDEE7FBFF) - v32 + ((2 * *v24) & 0xBDCFF7FE) + 1874652811;
  a19 = v28 - 818 + v32;
  LODWORD(a21) = v33;
  a22 = v31;
  a23 = a15;
  (*(v27 + 8 * (v28 + 5056)))(&a19);
  v34 = *(v24 + 16);
  v35 = 1824088897 * ((((v23 | 0x17425BBA) ^ 0xFFFFFFFE) - (~v23 | 0xE8BDA445)) ^ 0xB0D47727);
  a22 = *(v24 + 24);
  a23 = a15;
  a19 = v28 - 818 + v35;
  LODWORD(a21) = (v34 ^ 0xFFE4EFCB) - v35 + ((2 * v34) & 0xFFC9DF96) + 1321204415;
  (*(v27 + 8 * (v28 + 5056)))(&a19);
  v36 = *(v24 + 40);
  v37 = 1824088897 * ((((2 * v23) | 0x943D0BF4) - v23 - 1243514362) ^ 0x12775698);
  LODWORD(a21) = (*(v24 + 32) ^ 0x4EA4FFDB) - v37 + ((2 * *(v24 + 32)) & 0x9D49FFB6) - 5457;
  a19 = v28 - 818 + v37;
  a22 = v36;
  a23 = a15;
  v38 = (*(v27 + 8 * (v28 ^ 0x3440)))(&a19);
  return (*(v27 + 8 * ((743 * (a20 == 16257999)) ^ v28)))(v38);
}

uint64_t sub_10019A8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, int a21, unsigned int a22, uint64_t a23, char *a24, unsigned int a25, unsigned int a26)
{
  v29 = ((((2 * (&a21 ^ 0xD01FE6E3)) | 0xBC4D6C00) - (&a21 ^ 0xD01FE6E3) - 1579595264) ^ 0xD6508381) * v27;
  a23 = a16;
  a24 = &a19;
  a25 = -654855621 - v29;
  a26 = v29 + v26 + 1674578036;
  a22 = v29 - 1843823478;
  v30 = (*(v28 + 8 * (v26 ^ 0x21BE)))(&a21);
  return (*(v28 + 8 * ((7490 * (a21 == ((v26 + 1644) ^ 0x1FFB) + ((v26 + 1644) | 0x10D) + 16249543)) ^ v26)))(v30);
}

uint64_t sub_10019A99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x330]) = 197499223;
  STACK[0x370] = STACK[0x778] + 24;
  LODWORD(STACK[0x2A0]) = LODWORD(STACK[0x9A4]) ^ 0xD6A561FA;
  v63 = LOWORD(STACK[0x99E]);
  LODWORD(STACK[0x320]) = v63;
  LODWORD(STACK[0x300]) = v63 ^ 0x4CF9;
  STACK[0x360] = STACK[0x440] + 24;
  v64 = LOWORD(STACK[0xA7E]);
  LODWORD(STACK[0x310]) = v64;
  LODWORD(STACK[0x2F0]) = v64 ^ 0xFFFFA60A;
  LODWORD(STACK[0x290]) = LODWORD(STACK[0xA84]) ^ 0xD6A561FA;
  STACK[0x350] = STACK[0x4C0] + 24;
  STACK[0x340] = STACK[0x7B8] + 24;
  v65 = STACK[0x9A0];
  LODWORD(STACK[0x2C0]) = STACK[0x9A0];
  LODWORD(STACK[0x2E0]) = v65 ^ 0xD6A561FA;
  v66 = STACK[0xA80];
  LODWORD(STACK[0x2B0]) = STACK[0xA80];
  LODWORD(STACK[0x2D0]) = v66 ^ 0xD6A561FA;
  return sub_10017EC50(0x126AA61F6F56C0D8, a2, 0x2A5638492DD55EAELL, 0x4C48AAE1C333D048, 0xEAD4E3DB691550A9, 169, 0x64C31C027084DE6CLL, 0x61459D2AF01F24F7, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_10019AA1C()
{
  v2 = *(STACK[0x738] + 24);
  STACK[0x480] = v2;
  return (*(v1 + 8 * ((((1321 * (((v0 + 3511) | 0x2C9) ^ 0x17C9)) ^ 0xA46) * (v2 == 0)) | v0)))();
}

uint64_t sub_10019AB50(uint64_t a1, uint64_t a2)
{
  v9 = ((v3 - 4972) ^ 0x71BLL) + a2;
  v10 = a2 - 1;
  *(v4 + v10) = *(v5 + v10) ^ *(v6 + v10) ^ (47 * v10) ^ *(v2 + v10) ^ *(v7 + v9) ^ 0x3C;
  return (*(v8 + 8 * ((37 * (v10 != 0)) ^ v3)))();
}

uint64_t sub_10019ACFC()
{
  v6 = *v1;
  LODWORD(v5) = v2 + 1358806181 * ((2 * (&v5 & 0x72401C58) - &v5 - 1916804190) ^ 0xB2908F21) - 684;
  (*(v0 + 8 * (v2 + 5613)))(&v5);
  HIDWORD(v6) = v2 - 2089 + 1824088897 * (((&v5 | 0x308DAF57) - (&v5 & 0x308DAF57)) ^ 0x68E47C35) + 1624352635;
  v5 = v4;
  (*(v0 + 8 * (v2 + 5689)))(&v5);
  return (v6 - 16257999);
}

void sub_10019AEB4(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, char a4, uint64_t a5, unsigned int a6)
{
  a5 = a1;
  a6 = (v7 + 4970) ^ (1824088897 * (&a4 ^ 0x5869D362));
  (*(v6 + 8 * (v7 ^ 0x28BC)))(&a4);
  sub_1001EAA28();
}

uint64_t sub_10019B03C@<X0>(_BYTE *a1@<X8>)
{
  *(v2 + 72) = 32;
  *(v2 + 39) = a1[55];
  *(v2 + 38) = a1[54];
  *(v2 + 37) = a1[53];
  *(v2 + 36) = a1[52];
  *(v2 + 35) = a1[51];
  *(v2 + 34) = a1[50];
  *(v2 + 33) = a1[49];
  *(v2 + 32) = a1[48];
  *(v2 + 31) = a1[47];
  *(v2 + 30) = a1[46];
  *(v2 + 29) = a1[45];
  *(v2 + 28) = a1[44];
  *(v2 + 27) = a1[43];
  *(v2 + 26) = a1[42];
  *(v2 + 25) = a1[41];
  *(v2 + 24) = a1[40];
  *(v2 + 23) = a1[39];
  *(v2 + 22) = a1[38];
  *(v2 + 21) = a1[37];
  *(v2 + 20) = a1[36];
  *(v2 + 19) = a1[35];
  *(v2 + 18) = a1[34];
  *(v2 + 17) = a1[33];
  *(v2 + 16) = a1[32];
  *(v2 + 15) = a1[31];
  *(v2 + 14) = a1[30];
  *(v2 + 13) = a1[29];
  *(v2 + 12) = a1[28];
  *(v2 + 11) = a1[27];
  *(v2 + 10) = a1[26];
  *(v2 + 9) = a1[25];
  *(v2 + 8) = a1[24];
  return (*(v3 + 8 * (((STACK[0x418] != 0) * ((v1 ^ 0x1C4E) + 1055)) ^ v1)))();
}

uint64_t sub_10019B184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  *(v14 - 224) = *a13;
  *(v14 - 232) = v13 + 1710126949 * ((v14 - 1833412130 - 2 * ((v14 - 232) & 0x92B85AC6)) ^ 0xA0A30156) + 6670;
  v16 = (*(v15 + 8 * (v13 + 7581)))(v14 - 232);
  v17 = STACK[0x330];
  v18 = *(a10 + 384);
  v19 = STACK[0x4E8];
  LODWORD(STACK[0x51C]) = STACK[0x880];
  v20 = STACK[0x728];
  STACK[0x598] = &STACK[0xA30] + STACK[0x728];
  STACK[0x728] = v20 + (((v13 ^ 0x1536u) - 5348) ^ 0x800);
  STACK[0x488] = v19;
  STACK[0x530] = 0;
  STACK[0x868] = 0;
  STACK[0x6B0] = v18;
  if (v18)
  {
    v21 = v19 == 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = v21;
  return (*(v17 + 8 * (((2 * v22) | (16 * v22)) ^ v13)))(v16);
}

void sub_10019B298()
{
  STACK[0x550] = 0;
  STACK[0x908] = *(v1 + 8 * (v0 - 5678));
  JUMPOUT(0x1000D4554);
}

uint64_t sub_10019B2D0@<X0>(int a1@<W3>, unint64_t a2@<X8>)
{
  v7 = LOWORD(STACK[0x9CE]);
  if (v7 == 17168)
  {
    goto LABEL_4;
  }

  if (v7 == 33980)
  {
    v9 = STACK[0x528];
    STACK[0x820] = a2;
    LODWORD(STACK[0x564]) = v5;
    STACK[0x5A8] = v9 + v2;
    v8 = v4;
    a1 = 16257999;
    return (*(v6 + 8 * (((a1 == 16257999) * ((v8 ^ 0x3B10) - 4081)) ^ (v8 - 4999))))();
  }

  v8 = v4;
  if (v7 == 20706)
  {
LABEL_4:
    STACK[0x820] = a2;
    LODWORD(STACK[0x564]) = v5;
    a1 = v3 - 338;
    v8 = v4;
  }

  return (*(v6 + 8 * (((a1 == 16257999) * ((v8 ^ 0x3B10) - 4081)) ^ (v8 - 4999))))();
}

uint64_t sub_10019B3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  v41 = (a6 - 6335) | 0x203u;
  v42 = 1124 * (v41 ^ 0x789);
  v43 = (v42 - 2198);
  v44 = *(v39 + 8 * ((v43 * (v40 < 0x10)) ^ a6));
  return v44(a1, a2, a3, v42, v41, v44, v43, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39);
}

uint64_t sub_10019B43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19, unsigned int a20, unsigned int a21, uint64_t a22, uint64_t a23)
{
  v41 = v28;
  v29 = v27 + 75;
  v30 = 1875091903 * ((&a19 + 1303224019 - 2 * (&a19 & 0x4DAD9ED3)) ^ 0x7BD81D50);
  v31 = v27 + 3572;
  a22 = a14;
  a20 = (v25 ^ 0xEB7DB6AE) + ((2 * v25) & 0xD6FB6D5C) + 882835452 + v30;
  a21 = v27 + 3572 + v30;
  (*(v26 + 8 * (v27 + 5493)))(&a19);
  v32 = 1824088897 * ((((2 * &a19) | 0x35A1CCC6) - &a19 + 1697585565) ^ 0xC2B93501);
  a19 = v27 - 395 + v32;
  a21 = (v24 ^ 0x4FFDEE9E) - v32 + (((v27 + 1550) ^ 0x9FFBCB7A) & (2 * v24)) - 22610964;
  a23 = a14;
  a22 = a11;
  (*(v26 + 8 * (v27 + 5479)))(&a19);
  v33 = 1824088897 * ((813528453 - (&a19 | 0x307D7585) + (&a19 | 0xCF828A7A)) ^ 0x97EB5918);
  a19 = v27 - 395 + v33;
  a21 = (v23 ^ 0xEEA5EAFE) + ((2 * v23) & 0xDD4BD5FC) - v33 + 1610547084;
  a23 = a14;
  a22 = a12;
  (*(v26 + 8 * (v27 + 5479)))(&a19);
  if (a13)
  {
    v34 = -1289881679;
  }

  else
  {
    v34 = -1289881681;
  }

  v35 = ((a13 != 0) ^ 0x6CFEBEFB) + v34;
  v36 = 1875091903 * ((&a19 - 297590837 - 2 * (&a19 & 0xEE431FCB)) ^ 0xD8369C48);
  a22 = a14;
  a20 = v35 + v36;
  a21 = v31 + v36;
  (*(v26 + 8 * (v29 ^ 0x352E)))(&a19);
  if (v41)
  {
    v37 = 538752683;
  }

  else
  {
    v37 = 538752682;
  }

  v38 = 1875091903 * ((2 * (&a19 & 0x4E844888) - &a19 - 1317292170) ^ 0x870E34F5);
  a22 = a14;
  a20 = v38 + v37;
  a21 = v31 + v38;
  v39 = (*(v26 + 8 * (v27 + 5493)))(&a19);
  return (*(v26 + 8 * ((3098 * (a19 == 16257999)) ^ v29)))(v39);
}

uint64_t sub_10019B784@<X0>(int a1@<W8>)
{
  STACK[0x848] = *(v1 + 8 * a1);
  LODWORD(STACK[0x2E0]) = STACK[0x47C];
  LODWORD(STACK[0x2F0]) = STACK[0x754];
  LODWORD(STACK[0x310]) = 16215971;
  LODWORD(STACK[0x300]) = STACK[0x6C4];
  LODWORD(STACK[0x2D0]) = (LODWORD(STACK[0x32C]) - 100857855) & 0x602FEFF;
  return sub_1000EB5E8();
}

uint64_t sub_10019B810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = 2802 * ((v65 - 490) ^ 0x862);
  (*(v64 + 8 * ((v65 - 490) ^ 0x2DE4)))();
  *(v66 + 24) = 0;
  v69 = (*(a64 + 8 * (v68 + 4000)))(v66);
  LODWORD(STACK[0x4E4]) = v67;
  STACK[0x758] = STACK[0x6E0];
  STACK[0x500] = *(a64 + 8 * (v68 - 5242));
  return sub_1001B0AD8(v69, 16215976);
}

uint64_t sub_10019B894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, int a63)
{
  v64 = LOWORD(STACK[0x8C6]);
  STACK[0x7C0] = STACK[0x8C8];
  return (*(v63 + 8 * (((v64 == 17168) * (107 * (a63 ^ 0xA46) - 1047)) ^ (a63 - 1350))))();
}

uint64_t sub_10019B9E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, int a48, int a49, char a50)
{
  v56 = *v54 + v53;
  v57 = **(v54 + 8);
  v58 = 2008441969 * ((v55 - 1684006776 - 2 * ((v55 - 168) & 0x9BA01930)) ^ 0xD3394D3E);
  *(v55 - 140) = (v50 + 3480) ^ v58;
  a4[11] = v57;
  a4[12] = &a50;
  a4[13] = a4;
  a4[9] = &a47;
  a4[7] = v55 - 184;
  *(v55 - 160) = (((v50 - 921199408) & 0x36E87FCE ^ 0x905593D6) + v56 * (((v50 + 310668992) & 0xED7BADDE) + 1528137967)) ^ v58;
  *(v55 - 144) = v58 + v52 - ((2 * v52) & 0x10) + 958279752;
  v59 = (*(v51 + 8 * (v50 + 7598)))(v55 - 168);
  return (*(v51 + 8 * ((233 * (*(v55 - 112) == 16257999)) ^ v50)))(v59);
}

uint64_t sub_10019BB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, int a63)
{
  v64 = (LODWORD(STACK[0x7B0]) ^ 0xBFDD7E77) - 952637522 + ((2 * LODWORD(STACK[0x7B0])) & 0x7FBAFCEE);
  v65 = (v64 ^ 0xFBAD7AFC) - 2092440793;
  v66 = ((v64 ^ (((a63 - 1496697427) & 0x5935DFFB) - 1168989475)) - 1028105461) ^ v64 ^ ((v64 ^ 0xD2362A3C) - 1428376601) ^ ((v64 ^ 0x14DCF435) + 1815506416);
  return (*(a64 + 8 * (((4 * ((v66 ^ v65) == 2266326565)) | (8 * ((v66 ^ v65) == 2266326565))) ^ (a63 + 2298))))();
}

uint64_t sub_10019BC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char *a17, int a18, unsigned int a19)
{
  a19 = 1317436891 * (((&a17 | 0x1DFB06E4) - &a17 + (&a17 & 0xE204F918)) ^ 0xADF89E92) + 8154;
  a17 = &a14;
  v21 = (*(v19 + 77096))(&a17);
  return (*(v19 + 8 * ((10826 * (a18 == v20)) ^ 0x8A5u)))(v21);
}

uint64_t sub_10019BD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, uint64_t a11, uint64_t a12, char a13, int a14, int a15, unsigned int a16, uint64_t a17, char *a18, unsigned int a19, char *a20)
{
  a19 = (v21 - 2544) ^ (((-739300074 - (&a15 | 0xD3EF2D16) + (&a15 | 0x2C10D2E9)) ^ 0x1E0B8979) * v23);
  a20 = &a13;
  a17 = a11;
  a18 = v20;
  (*(v22 + 8 * (v21 ^ 0x3399)))(&a15);
  a17 = a11;
  a18 = &a10;
  a16 = (v21 - 2650) ^ (33731311 * ((-479929121 - (&a15 | 0xE364DCDF) + (&a15 | 0x1C9B2320)) ^ 0x256DE903));
  (*(v22 + 8 * (v21 + 3699)))(&a15);
  a17 = a11;
  LODWORD(a18) = v21 - 2008441969 * ((404744118 - (&a15 ^ 0x7E40317B | 0x181FE7B6) + (&a15 ^ 0x7E40317B | 0xE7E01849)) ^ 0xD1397D3C) - 217;
  v24 = (*(v22 + 8 * (v21 ^ 0x336D)))(&a15);
  return (*(v22 + 8 * ((2769 * (a15 == ((7 * (v21 ^ 0x1759)) ^ 0xF81806))) ^ v21)))(v24);
}

void sub_10019BF04()
{
  LODWORD(STACK[0x47C]) = v0;
  LODWORD(STACK[0x754]) = STACK[0x2F0];
  LODWORD(STACK[0x6C4]) = STACK[0x300];
  JUMPOUT(0x10019BF24);
}

uint64_t sub_10019C368@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, int a58)
{
  v60 = LODWORD(STACK[0x310]);
  if (v60 == 17168)
  {
    return (*(v59 + 8 * ((a58 + 1573) ^ (3035 * (a3 == 197499223)))))();
  }

  if (v60 == 20706 || (v62 = a58, v60 == 33980))
  {
    STACK[0x410] = a2;
    v58 = 16215638;
    v62 = a58;
  }

  return (*(v59 + 8 * ((3558 * (v58 == v62 + 16253558 + ((v62 - 2536) | 0x608) + 165)) ^ (v62 - 934))))(a1, 16215976);
}

uint64_t sub_10019C4A4()
{
  v2 = *(STACK[0x528] + 24);
  STACK[0x880] = v2;
  return (*(v1 + 8 * (((4 * ((((v0 + 112) ^ 0xD7 ^ (v2 == 0)) & 1) == 0)) & 0xEF | (16 * (((v0 - 3472) ^ 0xDD7 ^ ~(v2 == 0)) & 1))) ^ v0)))();
}

void sub_10019CA64()
{
  LODWORD(STACK[0x35C]) = v0;
  LOBYTE(STACK[0x79B]) = STACK[0x310];
  LODWORD(STACK[0x49C]) = STACK[0x2D0];
  JUMPOUT(0x10019CA7CLL);
}

void sub_10019CA98()
{
  if (v0 == 16215947)
  {
    (*(v2 + 8 * (((*(STACK[0x348] + 97) == 65) * (((v1 - 1464860711) & 0x574FEB33) + 7262)) ^ (v1 - 2849))))();
  }

  else if (v0 == 16257999)
  {
    v3 = *(STACK[0x388] + 24);
    STACK[0x620] = v3;
    (*(v2 + 8 * (((v3 == 0) * ((v1 ^ 0x120D) + 5997)) ^ (v1 - 1668))))();
  }

  else
  {
    sub_10019CA8C();
  }
}

void sub_10019CB4C()
{
  v2 = STACK[0x330];
  if (v0 == 16215947)
  {
    v3 = STACK[0x348];
    LODWORD(STACK[0x4D4]) = 1473592423 * *(STACK[0x348] + 16) - 516596334;
  }

  else
  {
    if (v0 != 16257999)
    {
      sub_10019CA8C();
      return;
    }

    v3 = STACK[0x348];
  }

  v4 = *v3;
  STACK[0x6E0] = 0;
  STACK[0x460] = 0;
  (*(v2 + 8 * ((4053 * (((v4 == 0) ^ (v1 + 13)) & 1)) ^ (v1 + 503))))();
}

void sub_10019CBF0(uint64_t a1)
{
  *a1 = *v1;
  *(a1 + 4) = *(v1 + 4);
  *(a1 + 5) = *(v1 + 5);
  JUMPOUT(0x10013AA50);
}

void sub_10019CC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (((a31 - v39) | (v39 - a31)) > ((18 * (v39 ^ 0x20F)) ^ 0xFFFFDAF1))
  {
    v42 = 0x80000000;
  }

  else
  {
    v42 = 0x7FFFFFFF;
  }

  *v40 = v42;
  (*(v41 + 8 * (v39 + 9604)))(a39);
  JUMPOUT(0x10019CC7CLL);
}

uint64_t sub_10019CD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = v13 - 1;
  v23 = (v9 + v22);
  v24 = a1 + v22 + a2;
  v25 = __ROR8__((v9 + v22) & 0xFFFFFFFFFFFFFFF8, 8) + a7;
  v26 = __ROR8__(v25 ^ v19, 8);
  v25 ^= 0xE1AFA7ACF6E0968ELL;
  v27 = (v26 + v25) ^ v20;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = __ROR8__(v27, 8);
  v30 = ((v14 | (2 * (v29 + v28))) - (v29 + v28) + 0x5DD837EF7E3E3A91) ^ 0x578539A934117766;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ a6;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0x61459D2AF01F24F7;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8) + v35;
  v37 = __ROR8__(v24 & 0xFFFFFFFFFFFFFFF8, 8);
  v40 = v37 - ((2 * v37 + 0x5B38AD8DDB3A7C5CLL) & 0x89E752B3FB5DDBECLL) + 0x72900020EB4C2C24;
  v41 = v40 ^ 0xCF99C25E83E78D67;
  v40 ^= 0xA37B7469EF0E7C16;
  v42 = (__ROR8__(v41, 8) + v40) ^ 0xFB9714BECA2C68E9;
  v43 = __ROR8__(v42, 8);
  v44 = v42 ^ __ROR8__(v40, 61);
  v45 = (((2 * v36) | 0x953D53DE148E1D56) - v36 + a4) ^ 0x2E5DB5ED7AC3D0C7;
  v46 = v45 ^ __ROR8__(v35, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ 0x1A2AEBE44253AF03;
  v48 = ((v18 | (2 * (v43 + v44))) - (v43 + v44) + v16) ^ v12;
  v49 = v48 ^ __ROR8__(v44, 61);
  v50 = __ROR8__(v47, 8) + (v47 ^ __ROR8__(v46, 61));
  v51 = __ROR8__(v48, 8);
  v52 = (v11 - ((v51 + v49) | v11) + ((v51 + v49) | 0xA11B1487180DD3BBLL)) ^ 0x5C9047B9C167908FLL;
  v53 = v52 ^ __ROR8__(v49, 61);
  v54 = __ROR8__(v52, 8);
  v55 = (v54 + v53 - (v17 & (2 * (v54 + v53))) - 0x7E82382C39D64E0ELL) ^ v8;
  v56 = v55 ^ __ROR8__(v53, 61);
  v57 = __ROR8__(v55, 8);
  v58 = STACK[0x370];
  v59 = (v57 + v56 - (a5 & (2 * (v57 + v56))) + 0x9C5006C0ECFC07FLL) ^ a8;
  v60 = v59 ^ __ROR8__(v56, 61);
  v61 = (__ROR8__(v59, 8) + v60) ^ 0x8E4D6ECA343D275ELL;
  *v24 = (((__ROR8__(v61, 8) + (v61 ^ __ROR8__(v60, 61))) ^ a3) >> (8 * (v24 & 7u))) ^ (((v10 - (v50 | v10) + (v50 | 0x4AC0565324D70174)) ^ 0xE1F014810C505D35) >> (8 * (v23 & 7u))) ^ *v23;
  return (*(v21 + 8 * ((5780 * (v22 == 0)) ^ (v15 - 1252))))(v58, a2);
}

void sub_10019D0D4()
{
  *&STACK[0x300] = vdupq_n_s64(0x6AF7234D0CC131D4uLL);
  *&STACK[0x310] = vdupq_n_s64(0x1508DCB2F33ECE2BuLL);
  *&STACK[0x2F0] = vdupq_n_s64(0xA03A397A7DAB0203);
  *&STACK[0x2D0] = vdupq_n_s64(0x14FFD55FD52326CCuLL);
  *&STACK[0x2E0] = vdupq_n_s64(0xF5A2F1B9B5D0B209);
  JUMPOUT(0x10019D354);
}

uint64_t sub_10019E854@<X0>(int a1@<W1>, unint64_t a2@<X8>)
{
  v13 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v14 = vdupq_n_s64(0x38uLL);
  v15 = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  v16 = v10 + v11 + v6;
  v17 = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  v18 = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  v19 = vdupq_n_s64(v8);
  v20 = vdupq_n_s64(v2);
  v21 = vdupq_n_s64(v3);
  v22 = vdupq_n_s64(0xF5A2F1B9B5D0B209);
  v23 = vdupq_n_s64(v4);
  v24 = vdupq_n_s64(a2);
  v25 = vdupq_n_s64(v5);
  v26 = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  v27 = vdupq_n_s64(0x64C31C027084DE6CuLL);
  v28 = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  v29 = vdupq_n_s64(0xAB3042D228875C41);
  v30.i64[0] = v16 - v7 + 3;
  v30.i64[1] = v16 - v7 + 2;
  v31.i64[0] = v16 - v7 + 7;
  v31.i64[1] = v16 - v7 + 6;
  v32.i64[0] = v16 - v7 + 9;
  v32.i64[1] = v16 - v7 + 8;
  v33.i64[0] = v16 - v7 + ((a1 - 49) ^ 0xE58u) - 2795;
  v33.i64[1] = v16 - v7 + 4;
  v34 = vandq_s8(v33, v13);
  v35 = vandq_s8(v32, v13);
  v36 = vandq_s8(v31, v13);
  v37 = vandq_s8(v30, v13);
  v38 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v39 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v40 = vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL);
  v41 = vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL);
  v42 = vaddq_s64(v39, v15);
  v43 = vaddq_s64(v38, v15);
  v44 = veorq_s8(v43, v17);
  v45 = veorq_s8(v42, v17);
  v46 = veorq_s8(v42, v18);
  v47 = veorq_s8(v43, v18);
  v48 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), v47);
  v49 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), v46);
  v50 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v48, v19), vorrq_s8(v48, v20)), v20), v21);
  v51 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v49, v19), vorrq_s8(v49, v20)), v20), v21);
  v52 = veorq_s8(v51, vsraq_n_u64(vshlq_n_s64(v46, 3uLL), v46, 0x3DuLL));
  v53 = veorq_s8(v50, vsraq_n_u64(vshlq_n_s64(v47, 3uLL), v47, 0x3DuLL));
  v54 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v52), v22);
  v55 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v53), v22);
  v56 = vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL);
  v57 = veorq_s8(v55, vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL));
  v58 = veorq_s8(v54, v56);
  v59 = vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL);
  v60 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v58);
  v61 = vaddq_s64(v59, v57);
  v62 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v60, v23), vorrq_s8(v60, v24)), v24), v25);
  v63 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v61, v23), vorrq_s8(v61, v24)), v24), v25);
  v64 = veorq_s8(v63, vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL));
  v65 = veorq_s8(v62, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v66 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v64), v26);
  v67 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v65), v26);
  v68 = vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL);
  v69 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL));
  v70 = veorq_s8(v66, v68);
  v71 = vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL);
  v72 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v70);
  v73 = veorq_s8(vaddq_s64(v71, v69), v27);
  v74 = veorq_s8(v72, v27);
  v75 = vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL);
  v76 = veorq_s8(v74, vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL));
  v77 = veorq_s8(v73, v75);
  v78 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v79 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v77);
  v80 = veorq_s8(vaddq_s64(v78, v76), v28);
  v81 = veorq_s8(v79, v28);
  v82 = vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL);
  v83 = veorq_s8(v81, vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL));
  v84 = veorq_s8(v80, v82);
  v85 = vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL);
  v86 = vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL);
  v87 = vaddq_s64(v40, v15);
  v120.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v86, v84), v29), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), v14)));
  v120.val[1] = vshlq_u64(veorq_s8(vaddq_s64(v85, v83), v29), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), v14)));
  v88 = veorq_s8(v87, v17);
  v89 = veorq_s8(v87, v18);
  v90 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v89);
  v91 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v90, v19), vorrq_s8(v90, v20)), v20), v21);
  v92 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL));
  v93 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v92), v22);
  v94 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL));
  v95 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v94);
  v96 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v95, v23), vorrq_s8(v95, v24)), v24), v25);
  v97 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v98 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v97), v26);
  v99 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v100 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v99), v27);
  v101 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v102 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101), v28);
  v103 = vaddq_s64(v41, v15);
  v120.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL))), v29), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), v14)));
  v104 = veorq_s8(v103, v17);
  v105 = veorq_s8(v103, v18);
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v105);
  v107 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v106, v19), vorrq_s8(v106, v20)), v20), v21);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108), v22);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110);
  v112 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v111, v23), vorrq_s8(v111, v24)), v24), v25);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113), v26);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v116 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115), v27);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v118 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117), v28);
  v120.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL))), v29), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), v14)));
  *(v6 + v9 - 8 - v7) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(*(v16 - v7 + 2)), 0x3C3C3C3C3C3C3C3CLL), *&vqtbl4q_s8(v120, xmmword_1009E3420)));
  return (*(v12 + 8 * ((113 * (-v7 != 8 - (((a1 - 49) ^ 0xFFFFFB50) & v6))) ^ (a1 - 49))))();
}

uint64_t sub_10019EDE4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = *v12 == 0;
  STACK[0x240] = a1;
  return (*(a7 + 8 * ((((v14 ^ (v13 - 31)) & 1) * ((v13 - 495864095) ^ 0xE271BE31)) ^ v13)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t sub_10019EE98@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = LOWORD(STACK[0x9A2]);
  if (v69 == 17168)
  {
    goto LABEL_4;
  }

  if (v69 == 33980)
  {
    v71 = STACK[0x6F8];
    STACK[0x730] = v65;
    STACK[0x560] = v71 + v66;
    return (*(v68 + 8 * (((a64 - 521) * (a1 == 197499203)) ^ (a64 - 4204))))();
  }

  v70 = a64;
  if (v69 == 20706)
  {
LABEL_4:
    STACK[0x730] = v65;
    v67 = 16215638;
    v70 = a64;
  }

  LODWORD(STACK[0x824]) = v67;
  STACK[0x7F0] = STACK[0x5F0];
  STACK[0x8E0] = *(v68 + 8 * (v70 ^ 0x1722));
  STACK[0x538] = &STACK[0x7F0];
  v64 = STACK[0x7F0];
  STACK[0x818] = STACK[0x7F0];
  return (*(v68 + 8 * ((21 * (v64 != 0)) ^ ((v70 ^ 0x1722) + 8800))))();
}

uint64_t sub_10019F0C8()
{
  v2 = STACK[0x580];
  STACK[0x548] = *(v1 + 8 * v0);
  return (*(v1 + 8 * (((((v0 ^ 0xB66) - 13) ^ 0xBFA ^ (((v0 ^ 0xB66) - 13) | 8) ^ 0xBD8) * (v2 == 0)) ^ v0 ^ 0xB66)))();
}

uint64_t sub_10019F3F8()
{
  v4 = LODWORD(STACK[0x2A0]);
  if (v4 == 17168)
  {
    return (*(STACK[0x330] + 8 * ((LODWORD(STACK[0x32C]) - 2617) ^ (8138 * (v2 == 197499223)))))();
  }

  if (v4 == 20706 || (v6 = STACK[0x32C], v4 == 33980))
  {
    STACK[0x698] = v0;
    v3 = v1 - 338;
    v6 = STACK[0x32C];
  }

  LODWORD(STACK[0x3F4]) = v3;
  STACK[0x670] = *(STACK[0x330] + 8 * (v6 - 5458));
  return sub_1001DE0A8(143 * (v6 ^ 0x15E8u));
}

uint64_t sub_10019F528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, int a15)
{
  a14 = 476323082 - 1710126949 * ((((2 * &a14) | 0xB44E539E) - &a14 + 634967601) ^ 0xE83C725F);
  v16 = (*(v15 + 77088))(&a14);
  return (*(v15 + 8 * ((14806 * (a15 == 16257999)) ^ 0x1BFCu)))(v16);
}

uint64_t sub_10019F5D4()
{
  v2 = *(STACK[0x508] + 24);
  STACK[0x5E8] = v2;
  return (*(v1 + 8 * (((3 * ((v0 + 1973953831) & 0x8A57CCDF ^ 0xB20) - 2605) * (v2 == 0)) ^ v0)))();
}

uint64_t sub_10019F630@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56)
{
  v57 = (a1 ^ 0xBC59953u) + a22;
  STACK[0x8C8] = v57;
  return (*(v56 + 8 * ((a56 + 2903) ^ (117 * (v57 <= a18)))))();
}

uint64_t sub_10019F688()
{
  if (v0 == 16257999)
  {
    v4 = STACK[0x870];
    v5 = *(STACK[0x870] + 8);
    v6 = STACK[0x4C0];
    v6[1] = v5;
    *v6 = *v4;
    return (*(v2 + 8 * (((v5 == 0) * (((v1 - 1322) | 0xE) ^ 0x506)) | (v1 - 1348))))();
  }

  else if (v0 == 16215947)
  {
    return (*(v2 + 8 * ((v1 + 6231) | (16 * (*(STACK[0x558] + 8) != 0)))))();
  }

  else
  {
    return (*(v2 + 8 * ((((((v1 + 1231984040) ^ (*(STACK[0x4C0] + 24) == 0)) & 1) == 0) * ((v1 + 2856) ^ 0x1543)) ^ (v1 + 3207))))();
  }
}

uint64_t sub_10019F780@<X0>(int a1@<W8>)
{
  v2 = (a1 + 386107231) & 0xE8FC7BFB;
  (*(v1 + 8 * (a1 ^ 0x2A11)))();
  v3 = STACK[0x330];
  STACK[0x4E8] = 0;
  return (*(v3 + 8 * (((151 * (v2 ^ 0x12EB) - 3584) * (STACK[0x528] != 0)) ^ v2)))();
}

uint64_t sub_10019F86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v80 = *(a72 + 8 * a8);
  v81 = *v78;
  v82 = __ROR8__((v81 + 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v83 = (v82 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v84 = __ROR8__((v82 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2, 8);
  v85 = (v75 - ((v84 + v83) | v75) + ((v84 + v83) | 0x1EC48F9A8BC8C84FLL)) ^ 0xFA59F8450CF57731;
  v86 = v85 ^ __ROR8__(v83, 61);
  v87 = __ROR8__(v85, 8);
  v88 = (v73 - ((v87 + v86) | v73) + ((v87 + v86) | 0x15BDDEA04F62FFAALL)) ^ 0xE01F2F19FAB24DA3;
  v89 = v88 ^ __ROR8__(v86, 61);
  v90 = (__ROR8__(v88, 8) + v89) ^ 0x5963B6C555D97F1FLL;
  v91 = v90 ^ __ROR8__(v89, 61);
  v92 = __ROR8__(v90, 8);
  v93 = (v72 - ((v92 + v91) | v72) + ((v92 + v91) | 0x43769D215A5E7E7)) ^ 0x6572F4F8E5BAC310;
  v94 = v93 ^ __ROR8__(v91, 61);
  v95 = __ROR8__(v93, 8);
  v96 = (((2 * (v95 + v94)) & 0x95D159776768EC9ALL) - (v95 + v94) - 0x4AE8ACBBB3B4764ELL) ^ 0xD1D44F463CCF57DELL;
  v97 = v96 ^ __ROR8__(v94, 61);
  v98 = __ROR8__(v96, 8);
  v99 = (((2 * (v98 + v97)) & 0xD800CF627F7DCE02) - (v98 + v97) + 0x13FF984EC04118FELL) ^ 0x9D573AA8212B7FDLL;
  v100 = v99 ^ __ROR8__(v97, 61);
  v101 = __ROR8__(v99, 8);
  *(v81 + 4) = v77 ^ 0x98 ^ (((((2 * (v101 + v100)) & 0x4CC31BBC7D14A244) - (v101 + v100) + 0x599E7221C175AEDDLL) ^ 0xF2AE30F3E9F2F29CLL) >> (8 * ((v81 + 4) & 7)));
  v102 = __ROR8__((v81 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v103 = ((2 * (v102 - 0x6AF7234D0CC131D5)) | 0x3E48AF211110F5F6) - (v102 - 0x6AF7234D0CC131D5) - 0x1F24579088887AFBLL;
  v104 = v103 ^ 0x56CD15ABE79E9D29;
  v103 ^= 0xFE8BF03C7E68EC75;
  v105 = __ROR8__(v104, 8);
  v106 = (((2 * (v105 + v103)) & 0x42379E9795A534D6) - (v105 + v103) + 0x5EE430B4352D6594) ^ 0xBA79476BB210DAEALL;
  v107 = v106 ^ __ROR8__(v103, 61);
  v108 = __ROR8__(v106, 8);
  v109 = (((2 * (v108 + v107)) | 0xF087926224A8E20ALL) - (v108 + v107) - 0x7843C93112547105) ^ 0x8DE13888A784C30CLL;
  v110 = v109 ^ __ROR8__(v107, 61);
  v111 = (__ROR8__(v109, 8) + v110) ^ 0x5963B6C555D97F1FLL;
  v112 = v111 ^ __ROR8__(v110, 61);
  v113 = (__ROR8__(v111, 8) + v112) ^ 0x61459D2AF01F24F7;
  v114 = v113 ^ __ROR8__(v112, 61);
  v115 = __ROR8__(v113, 8);
  v116 = (((2 * (v115 + v114)) | 0x8BD1FBA0C354CF8ELL) - (v115 + v114) - 0x45E8FDD061AA67C7) ^ 0x212BE1D2112EB9ABLL;
  v117 = v116 ^ __ROR8__(v114, 61);
  v118 = (__ROR8__(v116, 8) + v117) ^ v79;
  v119 = __ROR8__(v118, 8) + (v118 ^ __ROR8__(v117, 61));
  *(v81 + 5) = v76 ^ 0x9E ^ (((v74 - (v119 | v74) + (v119 | 0x1B453AE3A5BDDFB3)) ^ 0xB07578318D3A83F2) >> (8 * ((v81 + 5) & 7)));
  return v80();
}

uint64_t sub_10019FC7C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  LODWORD(STACK[0x47C]) = v1;
  LODWORD(STACK[0x754]) = 197499219;
  LODWORD(STACK[0x6C4]) = 197499219;
  LODWORD(STACK[0x3D4]) = v2;
  return sub_100194550(a1);
}

uint64_t sub_10019FD4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (v3 ^ 0x163A) + LODWORD(STACK[0x464]);
  LODWORD(STACK[0x464]) = v5;
  return (*(v4 + 8 * ((7304 * (v5 == (((v3 ^ 0x1DE0) + 1930961490) & 0x8CE7F5F2 ^ 0xFFFFCB55) + (v3 ^ 0x6B0))) ^ v3 ^ 0x1DE0)))(a1, a2, a3, 16257999);
}

uint64_t sub_1001A019C()
{
  v6 = v2 - 1;
  *(v4 + v6) = *(v0 + v6) ^ (v3 - 116) & 0xEF ^ 0xDA;
  return (*(v5 + 8 * ((11998 * (v6 == 0)) ^ (v1 + v3 + 3145))))();
}

uint64_t sub_1001A0208@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, int a8@<W8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v82 = v71 - 1;
  v83 = (v70 + v82);
  v84 = __ROR8__((v70 + v82) & 0xFFFFFFFFFFFFFFF8, 8);
  v85 = a4 - ((v84 + v76) | a3) - ((((a8 + v69) & v68 ^ v73) - v84) | v77);
  v86 = __ROR8__(v85 ^ a5, 8);
  v87 = v85 ^ a6;
  v88 = (v86 + v87) ^ 0xE49D77DF873DBF7ELL;
  v89 = v88 ^ __ROR8__(v87, 61);
  v90 = __ROR8__(v88, 8);
  v91 = __ROR8__(((a7 & (2 * (v90 + v89))) - (v90 + v89) + v79) ^ v65, 8);
  v92 = ((a7 & (2 * (v90 + v89))) - (v90 + v89) + v79) ^ v65 ^ __ROR8__(v89, 61);
  v93 = (v91 + v92) ^ 0x5963B6C555D97F1FLL;
  v94 = v93 ^ __ROR8__(v92, 61);
  v95 = (__ROR8__(v93, 8) + v94) ^ v80;
  v96 = v95 ^ __ROR8__(v94, 61);
  v97 = __ROR8__(v95, 8);
  v98 = (((v97 + v96) & v78 ^ v81) + ((v97 + v96) ^ v67) - (((v97 + v96) ^ v67) & v78)) ^ v75;
  v99 = v98 ^ __ROR8__(v96, 61);
  v100 = (__ROR8__(v98, 8) + v99) ^ v66;
  *(a1 + v82 + v72) = (((__ROR8__(v100, 8) + (v100 ^ __ROR8__(v99, 61))) ^ a2) >> (8 * (v83 & 7u))) ^ *v83;
  return (*(a65 + 8 * (((v82 == 0) * v74) ^ a8)))();
}

uint64_t sub_1001A0394@<X0>(int a1@<W8>)
{
  if (a1 == v2 - 1570)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  *v1 = v4;
  return sub_1001A03A4();
}

uint64_t sub_1001A0424(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13, int a14)
{
  *a4 = 0;
  *a5 = 0;
  a13 = 476323082 - 1710126949 * ((2 * (&a13 & 0x710C9170) - &a13 + 250834572) ^ 0x3CE8351C);
  v15 = (*(v14 + 77088))(&a13);
  return (*(v14 + 8 * ((13487 * (a14 == 16257999)) ^ 0x172Du)))(v15);
}

uint64_t sub_1001A04D8@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = (v2 - 164704334) & 0x9D13FDD;
  *v4 = a1;
  *v3 = a2;
  v12 = (v6 + 3277) ^ (1824088897 * ((2 * (&v10 & 0x7F58E400) - &v10 + 10951673) ^ 0x58CEC89B));
  v11 = v9;
  (*(v5 + 8 * (v6 ^ 0x3641)))(&v10);
  v12 = (v6 + 3277) ^ (1824088897 * (&v10 ^ 0x5869D362));
  v11 = v8;
  (*(v5 + 8 * (v6 + 4543)))(&v10);
  return 0;
}

uint64_t sub_1001A0628@<X0>(int a1@<W8>)
{
  v5 = ((a1 - 1888) ^ 0xFFFFFFFFFFFFF878) + v2;
  *(v3 + v5) = *(v1 + v5);
  return (*(v4 + 8 * ((6360 * (v5 == 0)) ^ a1)))();
}

void sub_1001A0690()
{
  LODWORD(STACK[0x310]) = v0;
  LODWORD(STACK[0x2D0]) = 16257999;
  JUMPOUT(0x100159C04);
}

uint64_t sub_1001A0728()
{
  v9 = (v0 + 4116) ^ (((&v7 - 1356712562 - 2 * (&v7 & 0xAF22358E)) ^ 0xF74BE6EC) * v2);
  v8 = v6;
  (*(v1 + 8 * (v0 ^ 0x350A)))(&v7);
  v8 = v5;
  v9 = (v0 + 4116) ^ (((((&v7 | 0xBD69CD6A) ^ 0xFFFFFFFE) - (~&v7 | 0x42963295)) ^ 0x1AFFE1F7) * v2);
  (*(v1 + 8 * ((v0 + 1010) ^ 0x31F4)))(&v7);
  return (v3 - 16257999);
}

uint64_t sub_1001A0840(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *v1 = a1;
  return (*(v3 + 8 * ((39 * ((((v2 + 859) ^ (STACK[0x6E0] == 0)) & 1) == 0)) ^ v2)))();
}

uint64_t sub_1001A0968@<X0>(int a1@<W8>)
{
  v6 = LOWORD(STACK[0x8D6]);
  if (v6 == 17168)
  {
LABEL_4:
    STACK[0x478] = v1;
    LODWORD(STACK[0x5F4]) = a1;
    v3 = 16215638;
    goto LABEL_6;
  }

  if (v6 != 33980)
  {
    if (v6 != 20706)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  v7 = STACK[0x498];
  STACK[0x478] = v1;
  LODWORD(STACK[0x5F4]) = a1;
  STACK[0x660] = v7 + v2;
  v3 = 16257999;
LABEL_6:
  if (v3 == 16215947)
  {
    return (*(v5 + 8 * (((*(STACK[0x4B0] + 97) == 65) * (((v4 - 1210159759) & 0x48218FD6) - 351)) ^ (v4 + 4169))))();
  }

  if (v3 != 16257999)
  {
    return sub_1001A0CAC();
  }

  if (*(STACK[0x4B0] + 20) == 1)
  {
    return sub_1001A0A9C(STACK[0x4B0]);
  }

  return sub_1001A0C68();
}

uint64_t sub_1001A0A9C@<X0>(uint64_t *a1@<X8>)
{
  v2 = (v1 - 1739893371) & 0x67B4BAF5;
  LODWORD(STACK[0x340]) = v2;
  LODWORD(STACK[0x360]) = v2 - 6581;
  LODWORD(STACK[0x350]) = v1 ^ 0xA32;
  LODWORD(STACK[0x320]) = (v1 ^ 0x19B0) - 4806;
  LODWORD(STACK[0x330]) = v1 ^ 0x19B0;
  LODWORD(STACK[0x310]) = (v1 ^ 0x19B0) - 4842;
  return sub_1001C7B5C(a1);
}

uint64_t sub_1001A0B20@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56)
{
  v59 = LOWORD(STACK[0x8FE]);
  if (v59 == 17168)
  {
    goto LABEL_5;
  }

  if (v59 != 33980)
  {
    if (v59 != 20706)
    {
      return sub_1001A0C68();
    }

LABEL_5:
    STACK[0x540] = v56;
    JUMPOUT(0x1001A0B90);
  }

  v61 = STACK[0x490];
  STACK[0x540] = v56;
  STACK[0x568] = v61 + v57;
  return (*(v58 + 8 * ((2456 * (a1 == ((a56 + 1436062640) & 0xAA67733F ^ 0xBC58849))) ^ (a56 - 696))))();
}

uint64_t sub_1001A0CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = *(a5 + 24);
  LODWORD(STACK[0x200]) = v65;
  v68 = *(v66 + 8 * ((467 * (((22 * (v63 ^ 0x1C8A) + 2021812274) ^ v64) < 8)) ^ v63 ^ 0x946));
  STACK[0x3B0] = v67;
  return v68(a63, 0xAB3042D228875C41);
}

uint64_t sub_1001A1180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19, int a20, unsigned int a21)
{
  a21 = v22 + 1317436891 * ((((2 * &a19) | 0xF391E60) - &a19 - 127700784) ^ 0xB79F1746) + 5867;
  a19 = &a15;
  v23 = (*(v21 + 8 * (v22 + 7350)))(&a19);
  return (*(v21 + 8 * ((7544 * (a20 == (((v22 + 1823) | 0x1D1) ^ 0xF80210))) ^ v22)))(v23);
}

uint64_t sub_1001A1288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v24 = ((((2 * &a14) | 0xE0DD7CEE) - &a14 + 261177737) ^ 0xA8076D15) * v21;
  a15 = v24 - 1027597129;
  a16 = a12;
  a17 = &a10;
  a18 = -654855621 - v24;
  a19 = v24 + v20 + 1674577212;
  v25 = (*(v19 + 8 * (v20 + 7706)))(&a14);
  return (*(v19 + 8 * (((a14 == v23) * (((v20 + 1006773652) | 0x81008034) - v22 - 9318)) ^ v20)))(v25);
}

uint64_t sub_1001A1350()
{
  v2 = STACK[0x450];
  STACK[0x878] = STACK[0x450];
  return (*(v1 + 8 * (((((v2 == 0) ^ (v0 - 51)) & 1) * (((v0 + 920541133) ^ 0x36DE6CFB) - 1650)) ^ v0)))();
}

uint64_t sub_1001A1398@<X0>(uint64_t a1@<X8>)
{
  v4 = (v2 - 2616) | 0xF80;
  *(a1 + 16) = *v1;
  *(a1 + 88) = *(v1 + 72);
  *(a1 + 92) = *(v1 + 76);
  *(a1 + 96) = *(v1 + 80);
  *(a1 + 97) = *(v1 + 81);
  *(a1 + 120) = *(v1 + 104);
  *(a1 + 100) = *(v1 + 84);
  *(a1 + 124) = *(v1 + 108) & 1;
  *(a1 + 55) = *(v1 + 39) ^ (15 * (v4 ^ 0x2F)) ^ *(*(&off_100BFFA10 + v4 - 3868) + 7) ^ *(*(&off_100BFFA10 + v4 - 3691) + 15) ^ *(*(&off_100BFFA10 + (v4 ^ 0xEDE)) + 6) ^ 0x3C;
  return (*(v3 + 8 * v4))();
}

void sub_1001A1488()
{
  LODWORD(STACK[0x864]) = v1;
  STACK[0x910] = STACK[0x840];
  STACK[0x778] = *(v2 + 16 * (v0 ^ 0x17FA));
  JUMPOUT(0x1000D2384);
}

uint64_t sub_1001A169C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15, uint64_t a16, int a17, unsigned int a18, uint64_t a19, int *a20)
{
  a14 = 0;
  a18 = (v20 + 1477) ^ (33731311 * ((((&a17 | 0x75471CCE) ^ 0xFFFFFFFE) - (~&a17 | 0x8AB8E331)) ^ 0xB34E2912));
  a19 = a12;
  a20 = &a14;
  (*(v21 + 8 * (v20 ^ 0x23BE)))(&a17);
  a18 = (v20 + 1477) ^ (33731311 * (((&a17 | 0xC4796B67) + (~&a17 | 0x3B869498)) ^ 0xFD8FA145));
  a19 = a12;
  a20 = &a15;
  (*(v21 + 8 * (v20 + 7826)))(&a17);
  LODWORD(a20) = v20 - 2008441969 * ((2 * (&a17 & 0x4C2BF210) - &a17 + 869535209) ^ 0x7B4D59E7) + 3910;
  a19 = a12;
  v22 = (*(v21 + 8 * (v20 ^ 0x234C)))(&a17);
  return (*(v21 + 8 * (((((v20 + 110) ^ (a17 == 16257999)) & 1) * ((591 * (v20 ^ 0x6D4)) ^ 0x6D7)) ^ v20)))(v22);
}

uint64_t sub_1001A1864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18)
{
  a16 = (v18 - 876) ^ (33731311 * (((&a15 | 0x2DADD13B) + (~&a15 | 0xD2522EC4)) ^ 0x145B1B19));
  a17 = a13;
  a18 = &a11;
  (*(v20 + 8 * (v18 + 5473)))(&a15);
  a17 = a13;
  LODWORD(a18) = v18 - 2008441969 * ((2 * (&a15 & 0x6CF5CC38) - &a15 - 1828047932) ^ 0xDB9367CA) + 1557;
  v21 = (*(v20 + 8 * (v18 ^ 0x3593)))(&a15);
  return (*(v20 + 8 * ((1421 * (a15 == (((v18 - 3912) | 0x522) ^ (v19 + 606)))) ^ v18)))(v21);
}

uint64_t sub_1001A1964@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(v2 + v6);
  return (*(v5 + 8 * ((53 * (((v6 == 0) ^ (v4 + 112)) & 1)) ^ (a2 + v4 + 755))))();
}

uint64_t sub_1001A1A24(uint64_t a1, int a2)
{
  v8 = (v4 - 32);
  v9 = (v5 - 32);
  v10 = *v9;
  *(v8 - 1) = *(v9 - 1);
  *v8 = v10;
  return (*(v7 + 8 * (((v3 == 32) * a2) ^ (v2 + v6))))();
}

void sub_1001A1AC8()
{
  LODWORD(STACK[0x47C]) = STACK[0x2E0];
  LODWORD(STACK[0x754]) = STACK[0x2F0];
  LODWORD(STACK[0x6C4]) = STACK[0x300];
  LODWORD(STACK[0x3D4]) = v0;
  JUMPOUT(0x1001E21C0);
}

uint64_t sub_1001A1C84()
{
  v2 = (*(v1 + 8 * (v0 + 5012)))(32, 0x103004054B5FA7DLL);
  STACK[0x778] = v2;
  return (*(v1 + 8 * (((v2 == 0) * ((((v0 + 1587) | 0x5A4) - 5013) ^ v0 ^ 0x1844)) ^ v0)))();
}

uint64_t sub_1001A1CF4()
{
  v1 = STACK[0x2A0];
  if (LODWORD(STACK[0x2A0]) == 17168)
  {
    return (*(v0 + 8 * ((LODWORD(STACK[0x32C]) + 1341) ^ ((LODWORD(STACK[0x230]) != LODWORD(STACK[0x2D0])) | (4 * (LODWORD(STACK[0x230]) != LODWORD(STACK[0x2D0])))))))();
  }

  if (v1 == 20706)
  {
    return (*(v0 + 8 * ((695 * (LODWORD(STACK[0x9F8]) == 190 * (LODWORD(STACK[0x32C]) ^ 0x15F2) + 197498467)) ^ (LODWORD(STACK[0x32C]) + 2756))))();
  }

  if (v1 == 33980)
  {
    return (*(v0 + 8 * ((26 * (LODWORD(STACK[0xA08]) - ((2 * LODWORD(STACK[0xA08])) & 0xDCE86D8E) + 3 * (LODWORD(STACK[0x32C]) ^ 0x1D6F) - 294380292 != -294373689)) ^ (LODWORD(STACK[0x32C]) + 1709))))();
  }

  return sub_1001A1F40();
}

uint64_t sub_1001A1E24()
{
  if (v0 == 16257999)
  {
    v4 = STACK[0x878];
    v5 = *(STACK[0x878] + 8);
    v6 = STACK[0x820];
    v6[1] = v5;
    *v6 = *v4;
    return (*(v2 + 8 * (((v5 != 0) * (((v1 - 4982) | 0x1120) ^ 0x13AC)) ^ (v1 + 3472))))();
  }

  else if (v0 == 16215947)
  {
    return (*(v2 + 8 * ((47 * (((*(STACK[0x640] + 8) == 0) ^ (v1 + 1)) & 1)) ^ (v1 - 1716))))();
  }

  else
  {
    return sub_1001A1F40();
  }
}

uint64_t sub_1001A1ED8@<X0>(uint64_t a1@<X8>)
{
  (*(v2 + 8 * (v1 ^ 0x35F7u)))(a1);
  *(STACK[0x878] + 24) = 0;
  return sub_1001A1F04();
}

uint64_t sub_1001A1F04()
{
  v2 = (*(v1 + 8 * (v0 + 1581)))();
  STACK[0x878] = 0;
  return sub_1001A1F40(v2);
}

uint64_t sub_1001A1F88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *a1 = 0;
  a1[1] = 0;
  *(v64 + 8) = a1;
  v67 = (*(v66 + 8 * (v65 + 1685)))(16, 0x20040A4A59CD2);
  return (*(a64 + 8 * ((35 * ((((v65 ^ 0x47) - 1) ^ (v67 == 0)) & 1)) ^ v65)))();
}

uint64_t sub_1001A1FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20 = a2 + v7 + 0x6049503442230843;
  v21 = v10 - 1;
  v22 = __ROR8__((v9 + v21) & 0xFFFFFFFFFFFFFFF8, 8);
  v23 = -2 - (((v13 - v22) | 0x186483527E1519FELL) + ((v22 + ((v12 + 119927139) & v16 ^ v18)) | 0xE79B7CAD81EAE601));
  v24 = v23 ^ v14;
  v25 = v23 ^ a6;
  v26 = (__ROR8__(v24, 8) + v25) ^ a3;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = __ROR8__(((v6 & (2 * (v28 + v27))) - (v28 + v27) + v11) ^ v15, 8);
  v30 = ((v6 & (2 * (v28 + v27))) - (v28 + v27) + v11) ^ v15 ^ __ROR8__(v27, 61);
  v31 = (v29 + v30) ^ 0x5963B6C555D97F1FLL;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0x61459D2AF01F24F7;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (((v35 + v34) & v8 ^ a4) + ((v35 + v34) ^ v17) - (((v35 + v34) ^ v17) & v8)) ^ a5;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0x1A2AEBE44253AF03;
  *(a1 + v21 + v20) = (((__ROR8__(v38, 8) + (v38 ^ __ROR8__(v37, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v9 + v21) & 7))) ^ *(v9 + v21);
  return (*(v19 + 8 * ((16 * (v21 != 0)) | ((v21 != 0) << 6) | (v12 - 80))))();
}

uint64_t sub_1001A2178(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x668] = a1;
  *a1 = 5;
  *(a1 + 4) = 0;
  v72 = (*(v71 + 8 * (a71 + 3543)))(120, 0x1000040F604211FLL);
  STACK[0x798] = v72;
  return (*(v71 + 8 * (((((a71 - 110) ^ (v72 == 0)) & 1) * (a71 - 6078)) ^ (a71 + 2763))))();
}

uint64_t sub_1001A224C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = (a3 + v3 - 32);
  v9 = *v7;
  v8 = v7[1];
  v10 = (a1 + v3 - 32);
  *v10 = v9;
  v10[1] = v8;
  return (*(v6 + 8 * ((1748 * (v4 - (v3 & 0xFFFFFFE0) == 1104)) ^ (a2 + v5))))();
}

uint64_t sub_1001A27F8()
{
  v4 = (((v2 ^ 0x4A5785A9540F2FFFLL) - 0x4A5785A9540F2FFFLL) ^ ((v2 ^ 0x92BCB2C5301D71C8) + 0x6D434D3ACFE28E38) ^ ((((v1 - 2624) | 0x9A5u) ^ 0x471FC3FCC249480BLL) + (v2 ^ 0xB8E03C033DB6BE52))) + 0x600B0B7037B9DF8CLL;
  v5 = (((v0 ^ 0x615A526EF4F45749) - 0x615A526EF4F45749) ^ ((v0 ^ 0xF89E37E1A1F93A38) + 0x761C81E5E06C5C8) ^ ((v0 ^ 0xF9CF6EE00CA98D14) + 0x630911FF35672ECLL)) + 0x600B0B7037B9DF8CLL;
  v6 = v5 < 0xDE14FF27;
  v7 = v4 < v5;
  if (v6 != v4 < 0xDE14FF27)
  {
    v7 = v6;
  }

  return (*(v3 + 8 * ((10531 * v7) ^ v1)))();
}

uint64_t sub_1001A29B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, _DWORD *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43)
{
  v48 = (a12 - 2822) | 0x48;
  v49 = (*(v45 + 8 * (a12 ^ 0x2B47)))(&a43, 0);
  (*(v45 + 8 * (a12 ^ 0x2B1C)))(v49);
  *a35 = (*(v45 + 8 * (a12 ^ 0x2B1C)))();
  v44[1] = *a35 + ((1664525 * (*v44 ^ (*v44 >> 30))) ^ v44[1]);
  *(v46 + 40) = v43 ^ 2;
  *(v46 + 16) = a28;
  v50 = v48 - 694722404 + v43;
  *(v47 - 152) = (v48 + 1745252473) ^ v43;
  *(v47 - 136) = v50;
  *(v47 - 112) = v43 ^ 1;
  *(v47 - 128) = v50 + 36;
  *(v47 - 124) = ((v48 - 694722404) ^ 0x347) + v43;
  v51 = (*(v45 + 8 * (v48 ^ 0x261A)))(v47 - 152);
  return (*(v45 + 8 * *(v47 - 132)))(v51);
}

uint64_t sub_1001A2AEC(uint64_t result)
{
  v4 = *(v1 + 16);
  *result = v3;
  *(result + 8) = v2;
  *(result + 12) = v2;
  *(result + 16) = 0xA11037FC51F1E714;
  *(result + 24) = 16257999;
  *v4 = result;
  *v1 = 16257999;
  return result;
}

uint64_t sub_1001A2CF8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a2)
  {
    v6 = a5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  return (*(v5 + 8 * ((v7 | (2 * v7)) ^ 0x1AC9u)))();
}

uint64_t sub_1001A2D20()
{
  v0 = STACK[0x32C];
  v1 = LOWORD(STACK[0x8D6]);
  STACK[0x6C8] = STACK[0x8D8];
  return (*(STACK[0x330] + 8 * ((3054 * (v1 == 17168)) ^ (v0 - 4225))))();
}

uint64_t sub_1001A2E24(uint64_t a1)
{
  v4 = (*(v3 + 8 * (v2 ^ 0x3705)))(a1, 1207676257);
  *v1 = v4;
  return (*(v3 + 8 * (((v4 == 0) * ((v2 ^ 0x3308) - 8599)) ^ v2)))();
}

uint64_t sub_1001A2E94()
{
  v3 = *v1;
  STACK[0x508] = 0;
  STACK[0x740] = 0;
  return (*(v2 + 8 * (((((v0 - 3961) | 0x192) ^ 0x15F4) * (v3 == 0)) ^ v0)))();
}

uint64_t sub_1001A2ED8@<X0>(int a1@<W8>, uint64_t a2, char a3, __int16 a4, char a5, __int16 a6, char a7, uint64_t a8, uint64_t a9, int a10, char a11, int a12, int a13, uint64_t a14, char *a15, unsigned int a16, char *a17)
{
  a13 = (a1 - 987) ^ (((&a12 - 1236850838 - 2 * (&a12 & 0xB647276A)) ^ 0x8FB1ED49) * v19);
  a14 = a8;
  a15 = &a11;
  (*(v18 + 8 * (a1 + 5362)))(&a12);
  a16 = (v17 + 663) ^ (1710126949 * ((896004148 - (&a12 | 0x3567F034) + (&a12 | 0xCA980FCB)) ^ 0xF883545B));
  a14 = a8;
  a15 = &a3;
  a17 = &a7;
  (*(v18 + 8 * (v17 ^ 0x2F00)))(&a12);
  a13 = (v17 + 557) ^ (((2 * (&a12 & 0x7EA737C8) - &a12 - 2124888012) ^ 0xB8AE0217) * v19);
  a14 = a8;
  a15 = &a5;
  (*(v18 + 8 * (v17 ^ 0x2F06)))(&a12);
  a14 = a8;
  LODWORD(a15) = v17 - 2008441969 * ((((&a12 ^ 0xC08A2034 | 0x2B71198A) ^ 0xFFFFFFFE) - (&a12 ^ 0xB001100 | 0xD48EE675)) ^ 0x7CEC9AC5) + 2990;
  v20 = (*(v18 + 8 * (v17 + 6956)))(&a12);
  return (*(v18 + 8 * ((207 * ((((v17 ^ 0x91) + 1) ^ (a12 == ((v17 - 854900607) & 0x32F4BFAF ^ 0xF8196F))) & 1)) ^ v17)))(v20);
}

uint64_t sub_1001A3174@<X0>(int a1@<W8>)
{
  v8 = (a1 + 2164) ^ ((((&v6 | 0x5146C02A) - &v6 + (&v6 & 0xAEB93FD0)) ^ 0x92F1348) * v3);
  v7 = v1;
  (*(v2 + 8 * (a1 + 3430)))(&v6);
  return (v4 - 16257999);
}

uint64_t sub_1001A3210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v64 = STACK[0x310];
  if (LODWORD(STACK[0x310]) == 43491)
  {
    return (*(a64 + 8 * ((a63 + 215) ^ (11 * (LODWORD(STACK[0x2B0]) != LODWORD(STACK[0x330]))))))();
  }

  if (v64 == 28239)
  {
    return (*(a64 + 8 * ((1984 * (((101 * (a63 ^ 0x77)) ^ (LODWORD(STACK[0xA98]) == ((2 * LODWORD(STACK[0xA98])) & 0x4AB7A8BE))) & 1)) ^ (a63 + 4531))))();
  }

  if (v64 == 47633)
  {
    return (*(a64 + 8 * (((LODWORD(STACK[0xA80]) == 197499227) * ((a63 - 2627) ^ 0x1CC)) ^ (a63 + 5595))))();
  }

  return sub_1001A343C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_1001A3348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v64 == 16257999)
  {
    v68 = STACK[0x538];
    v69 = *(STACK[0x538] + 8);
    v70 = STACK[0x440];
    v70[1] = v69;
    *v70 = *v68;
    return (*(v66 + 8 * (((v69 == 0) * (((v65 - 1946) | 0xD43) + ((v65 - 1504) ^ 0xFFFFF454))) ^ (v65 - 1519))))(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else if (v64 == 16215947)
  {
    return (*(a64 + 8 * (((*(STACK[0x6B0] + 8) == 0) * (((v65 - 344411739) & 0x14874D19) + ((v65 - 321) ^ 0xFFFFFFF3))) ^ (v65 + 6087))))(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    return sub_1001A343C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
  }
}

uint64_t sub_1001A3550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = v64 - 4248;
  *a18 = STACK[0x680];
  *(a18 + 8) = 1;
  v68 = v64 - 5257;
  *(v65 - 224) = *a19;
  *(v65 - 232) = v64 - 4248 + 1358806181 * ((2 * ((v65 - 232) & 0x5EE0148) - (v65 - 232) + 2047999665) ^ 0x453E9232) + 1173;
  (*(v66 + 8 * ((v64 - 4248) ^ 0x2D32)))(v65 - 232);
  return (*(a64 + 8 * (((STACK[0x7F0] == 0) * (v68 ^ 0x132A ^ (463 * (v67 ^ 0x883)))) ^ v67)))();
}

uint64_t sub_1001A3634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  *v66 = v65;
  *(v65 + 8) = *(x8_0 + 8);
  *(x8_0 + 8) = v65;
  return sub_1001A343C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_1001A3728(uint64_t a1, uint64_t a2)
{
  LOWORD(STACK[0x9BE]) = v2;
  LODWORD(STACK[0x350]) = v2;
  return sub_100162C60(a1, a2, v3 - 8584);
}

uint64_t sub_1001A3784@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v19 = a6 + v9 + ((v10 - 8439) ^ 0x320);
  v20 = __ROR8__(v19 & 0xFFFFFFFFFFFFFFF8, 8);
  v21 = (v20 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v22 = (__ROR8__((v20 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2, 8) + v21) ^ 0xE49D77DF873DBF7ELL;
  v23 = __ROR8__(v22, 8);
  v24 = v22 ^ __ROR8__(v21, 61);
  v25 = ((v16 & (2 * (v23 + v24))) - (v23 + v24) + v12) ^ a1;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (v27 + v26 - (v14 & (2 * (v27 + v26))) + a2) ^ v17;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x61459D2AF01F24F7;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (v8 - ((v32 + v31) | v8) + ((v32 + v31) | a3)) ^ a4;
  v34 = v9 - 1;
  v35 = v33 ^ __ROR8__(v31, 61);
  v36 = (__ROR8__(v33, 8) + v35) ^ v15;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  *v19 = *(v6 + v34) ^ (((v13 - ((v38 + v37) ^ a5 | v13) + ((v38 + v37) ^ a5 | v7)) ^ v11) >> (8 * (v19 & 7u))) ^ 0x3C;
  return (*(v18 + 8 * ((45 * (v34 != 0)) | (v10 - 6350))))();
}

uint64_t sub_1001A38E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, unsigned int a14, uint64_t a15, uint64_t a16)
{
  v22 = 1875091903 * ((1395883505 - (&a12 | 0x53337DF1) + (&a12 | 0xACCC820E)) ^ 0x9AB9018D);
  a15 = a9;
  a13 = (v19 ^ 0x79DCB7EF) + ((2 * v19) & 0xF3B96FDE) - 1505755461 + v22;
  a14 = v21 + 2625 + v22;
  (*(v20 + 8 * (v21 + 4546)))(&a12);
  v23 = 1875091903 * (((&a12 | 0x2B5B3615) - &a12 + (&a12 & 0xD4A4C9E8)) ^ 0x1D2EB596);
  a15 = a9;
  a13 = (HIDWORD(v18) ^ 0xE43CB7BB) + ((HIDWORD(v18) << (((v21 - 60) & 0x7C) - 43)) & 0xC8796F76) + v23 + 1004535535;
  a14 = v21 + 2625 + v23;
  (*(v20 + 8 * (v21 ^ 0x3646)))(&a12);
  v24 = 1875091903 * (((&a12 | 0xFBA5EDBE) - (&a12 & 0xFBA5EDBE)) ^ 0xCDD06E3D);
  a15 = a9;
  a13 = (v18 ^ 0x775FFEFF) + ((2 * v18) & 0xEEBFFDFE) - 1464027221 + v24;
  a14 = v21 + 2625 + v24;
  (*(v20 + 8 * (v21 ^ 0x3646)))(&a12);
  v25 = 1824088897 * ((&a12 + 571233158 - 2 * (&a12 & 0x220C5386)) ^ 0x7A6580E4);
  a15 = v16;
  a16 = a9;
  a12 = v25 + v21 - 1342;
  a14 = (v17 ^ 0x7FF5FBDE) + ((2 * v17) & 0xFFEBF7BC) - v25 - 827396436;
  v26 = (*(v20 + 8 * (v21 ^ 0x3674)))(&a12);
  return (*(v20 + 8 * (((2 * (a13 == 16257999)) | (4 * (a13 == 16257999))) ^ v21)))(v26);
}

uint64_t sub_1001A3B64()
{
  LODWORD(STACK[0x4A4]) = v0 + 49;
  v3 = (*(v2 + 8 * (v1 + 5091)))(49);
  v4 = STACK[0x400];
  STACK[0x5F8] = v3;
  return (*(v4 + 8 * ((93 * (v3 != 0)) ^ v1)))();
}

uint64_t sub_1001A3BC0()
{
  STACK[0x860] = 0;
  v3 = STACK[0x580];
  STACK[0x540] = *(v2 + 8 * (v1 - 8405));
  return sub_100152998(v3);
}

uint64_t sub_1001A3BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, int a13, unsigned int a14, uint64_t a15, char *a16)
{
  a14 = ((v17 ^ 0x23145C03) + 627) ^ (33731311 * (((&a13 | 0xF62FDACB) - (&a13 & 0xF62FDACB)) ^ 0xCFD910E8));
  a15 = a10;
  a16 = &a12;
  (*(v16 + 8 * (v17 ^ 0x23147343)))(&a13);
  LODWORD(a16) = (v17 ^ 0x23145C03) - 2008441969 * (&a13 ^ 0x4899540E) + 3060;
  a15 = a10;
  v18 = (*(v16 + 8 * (v17 ^ 0x231473B1)))(&a13);
  return (*(v16 + 8 * ((25 * ((((v17 ^ 3) + 8) ^ (a13 == (((v17 ^ 0x23145C03) + 18086913) | 0x22005000) - 572277339)) & 1)) ^ v17 ^ 0x23145C03)))(v18);
}

uint64_t sub_1001A3D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W8>)
{
  LODWORD(STACK[0x694]) = v4;
  v5 = STACK[0x680];
  STACK[0x888] = STACK[0x680];
  return (*(STACK[0x400] + 8 * ((168 * (((v5 == 0) ^ (a4 - 70)) & 1)) ^ a4)))(a1, a2, a3, 16215976);
}

uint64_t sub_1001A3DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, int a14, unsigned int a15)
{
  a13 = &a9;
  a15 = 1317436891 * (((&a13 ^ 0x34865BB7) - 1137388041 - 2 * ((&a13 ^ 0x34865BB7) & 0xBC34D5F7)) ^ 0x38B11636) + 8154;
  v17 = (*(v15 + 77096))(&a13);
  return (*(v15 + 8 * ((3696 * (a14 == 16257999)) ^ v16)))(v17);
}

uint64_t sub_1001A3E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v13 = (((v7 ^ 0x2D5EF2F7FDFE104CLL) & (2 * a4)) + (a4 ^ 0x56AF797BFEFF1A36) + v5 - 0x56AF797BFEFF1A36);
  v14 = (*v13 << 24) | (v13[1] << 16) | (v13[2] << 8);
  v15 = (v14 | v13[3]) + 197499219 - 2 * ((v14 | v13[3]) & v8 ^ v13[3] & 0xC);
  v16 = ((2 * (a4 + 4)) & 0x6DF67D7B2C59FCEELL) + ((a4 + 4) ^ 0x76FB3EBD962CFE77) + v5 - 0x76FB3EBD962CFE77;
  v17 = (_byteswap_ushort(*v16) - 2 * (_byteswap_ushort(*v16) & 0x3E9E ^ *(v16 + 1) & 0xA) + 16023);
  switch(v17)
  {
    case 28242:
      STACK[0x570] = v5 + v6;
      STACK[0x658] = v4;
      return (*(v12 + 8 * (((v15 != (v10 ^ 0x25E4) + 197498767) * (11 * (v10 ^ 0x2441) - 996)) ^ (v10 - 7909))))();
    case 47636:
      return (*(v12 + 8 * ((v9 == v10 + 197489979) | (v10 - 8254))))(a1, a2, a3, (v11 + 5));
    case 43494:
      return (*(v12 + 8 * ((4147 * (v9 == ((1931 * (v10 ^ 0x2423)) ^ 0xBC58FF6))) ^ (v10 - 8254))))(a1, a2, a3, (v11 + 5));
    default:
      return sub_100054948(a1, a2, a3, v11 + 5);
  }
}

uint64_t sub_1001A42C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v68 - 224) = (v65 - 2140798744) ^ (914963389 * ((((2 * (v68 - 232)) | 0x64960514) - (v68 - 232) - 843776650) ^ 0x1EB7B3F1));
  v69 = (*(v64 + 8 * (v65 + 7004)))(v68 - 232);
  *(v67 + 8) = *(v68 - 232) ^ v66;
  return (*(a64 + 8 * ((v65 + 765) ^ 0xAu)))(v69);
}

void sub_1001A4388()
{
  *(v2 - 224) = (v1 - 2140798744) ^ (914963389 * (((((v2 - 232) ^ 0x1689709E) & 0x50A15172) + ((v2 - 232) ^ 0xE9768F61) - (((v2 - 232) ^ 0xE9768F61) & 0x50A15172)) ^ 0x952B6F68));
  (*(v0 + 8 * (v1 + 7004)))(v2 - 232);
  JUMPOUT(0x1001A4428);
}

uint64_t sub_1001A446C@<X0>(uint64_t a1@<X8>)
{
  LODWORD(STACK[0xAA4]) = v2;
  STACK[0xAA8] = v3;
  return (*(v4 + 8 * ((a1 == 0) | v1)))();
}

uint64_t sub_1001A448C()
{
  v5 = (v0 + 1848053134) & 0x11D8FDC3;
  *v2 = v10;
  v13 = v11;
  v14 = (v5 + 4119) ^ (((((&v12 | 0x866D4258) ^ 0xFFFFFFFE) - (~&v12 | 0x7992BDA7)) ^ 0x21FB6EC5) * v3);
  v6 = v5 + 5385;
  v7 = 2 * (v5 ^ 0x1BA0);
  (*(v4 + 8 * v6))(&v12);
  v13 = v9;
  v14 = (v7 + 2644) ^ (((&v12 & 0x889AD7C9 | ~(&v12 | 0x889AD7C9)) ^ 0x2F0CFB54) * v3);
  (*(v4 + 8 * (v7 + 3910)))(&v12);
  return (v1 - 16257999);
}

uint64_t sub_1001A4608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, char a11, uint64_t a12, uint64_t a13, int a14, int a15, char *a16, char *a17, unsigned int a18, unsigned int a19)
{
  v22 = 1875091903 * (((&a14 | 0x9656FBAD) - (&a14 & 0x9656FBAD)) ^ 0xA023782E);
  a17 = a10;
  a15 = ((2 * v19) & 0x667B7D76) + v22 + (v19 ^ 0x333DBEBB) - 320931857;
  LODWORD(a16) = v22 + 7724;
  (*(v21 + 77160))(&a14);
  v23 = 1824088897 * ((((&a14 ^ 0xAA88098) & 0x5ABFCE9E) + (&a14 ^ 0x55575F46) - ((&a14 ^ 0x55575F46) & 0x5ABFCE9E)) ^ 0x578142BA);
  a16 = a10;
  a17 = &a11;
  a18 = -654855621 - v23;
  a19 = v23 + 1674579114;
  a15 = v23 - 2100247884;
  v24 = (*(v21 + 76864))(&a14);
  return (*(v21 + 8 * ((14 * (((a14 == v20) ^ 0x3D) & 1)) ^ 0xB15u)))(v24);
}

uint64_t sub_1001A47A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 4);
  *(a2 + 20) = v5;
  return (*(v4 + 8 * (((v5 == ((732 * ((v3 - 276) ^ 0x1437)) ^ 0x2250)) * ((v3 - 276) ^ 0x2096)) ^ (v3 - 276))))(a1, 16215976);
}

uint64_t sub_1001A47FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x6F8] = v64 + 8;
  v67 = STACK[0x748];
  LODWORD(STACK[0x394]) = STACK[0x7B4];
  STACK[0x848] = v67;
  STACK[0x5A0] = 0;
  LODWORD(STACK[0x470]) = 197499219;
  LOWORD(STACK[0x48E]) = -11161;
  LODWORD(STACK[0x62C]) = 197499219;
  LODWORD(STACK[0x89C]) = 197499219;
  STACK[0x588] = 0x4789E5A74F535ADDLL;
  STACK[0x4E8] = 0;
  v68 = (*(v66 + 8 * (v65 ^ 0x6A6)))(16, 0x20040A4A59CD2);
  STACK[0x6E0] = v68;
  return (*(a64 + 8 * ((((((v65 - 6330) ^ (v68 == 0)) & 1) == 0) * (v65 ^ 0x233B)) ^ v65)))();
}

void sub_1001A48C4(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v1;
  JUMPOUT(0x1000CAA10);
}

uint64_t sub_1001A48E4@<X0>(unint64_t a1@<X8>)
{
  STACK[0x598] = a1;
  v3 = (*(v2 + 8 * (v1 + 7913)))(32, 0x103004054B5FA7DLL);
  STACK[0x658] = v3;
  return (*(v2 + 8 * (((v3 != 0) * ((((v1 + 4113) | 0x101) - 227) ^ v1 ^ 0x11E5)) ^ v1)))();
}

uint64_t sub_1001A4950@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v59 = a1 ^ 0x577;
  (*(v58 + 8 * (a1 ^ 0x32E3)))(v57);
  STACK[0x3C0] = 0;
  return (*(a57 + 8 * (((((v59 - 738671603) & 0x2C073BFF ^ 0xFFFFEA03) + ((v59 - 3588) | 0x3E3)) * (STACK[0x600] == 0)) | v59)))();
}

uint64_t sub_1001A4C58()
{
  (*(v2 + 8 * (v0 & 0xB691757F ^ 0x30F6)))();
  *(v1 + 24) = 0;
  return sub_1001E9920();
}

uint64_t sub_1001A4C94@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v8 = LOWORD(STACK[0x940]);
  if (v8 == 17168)
  {
    goto LABEL_4;
  }

  if (v8 == 33980)
  {
    v10 = STACK[0x690];
    STACK[0x590] = v2;
    LODWORD(STACK[0x7E4]) = a2;
    return (*(v7 + 8 * (((v10 + v4 != 0) * (((v6 - 2026) | 0x1002) ^ 0x121B)) ^ (v6 + 5463))))();
  }

  v9 = v6;
  if (v8 == 20706)
  {
LABEL_4:
    STACK[0x590] = v2;
    v3 = 16215638;
    v9 = v6;
  }

  STACK[0x7A0] = 0;
  LODWORD(STACK[0x7E4]) = 197499219;
  return (*(v7 + 8 * (((v3 == v5) * (850 * (v9 ^ 0xA48) - 1697)) | (850 * (v9 ^ 0xA48)))))(a1, 16215976);
}

uint64_t sub_1001A4DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(STACK[0x870] + 24);
  STACK[0x4C8] = v5;
  return (*(v4 + 8 * (((v5 == 0) * ((v3 + 5096) ^ (v3 + 2406) ^ 0x3DCA)) ^ v3)))(a1, a2, a3, 16215976);
}

uint64_t sub_1001A4E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = ~v4 + a2;
  v10 = *(v7 + v9 - 15);
  v11 = *(v7 + v9 - 31);
  v12 = a1 + v9;
  *(v12 - 15) = v10;
  *(v12 - 31) = v11;
  return (*(v8 + 8 * (((v5 + v4 == v2) * v6) ^ (v3 + 1949))))();
}

uint64_t sub_1001A4E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, uint64_t a11, uint64_t a12, int a13, unsigned int a14, uint64_t a15, char *a16)
{
  a14 = (v16 + 1355) ^ (33731311 * ((2 * (&a13 & 0x655625A8) - &a13 + 447339088) ^ 0x235F1073));
  a15 = a12;
  a16 = &a10;
  (*(v17 + 8 * (v16 ^ 0x2238u)))(&a13);
  LODWORD(a16) = v16 - 2008441969 * ((-1315476372 - (&a13 | 0xB1976C6C) + (&a13 | 0x4E689393)) ^ 0x6F1C79D) + 3788;
  a15 = a12;
  v19 = (*(v17 + 8 * (v16 + 7754)))(&a13);
  return (*(v17 + 8 * (v16 | (8 * (((v16 - 86) ^ (a13 == v18)) & 1u)))))(v19);
}

uint64_t sub_1001A4FBC@<X0>(unint64_t a1@<X8>)
{
  STACK[0x740] = *(v5 + 8 * v1);
  STACK[0x950] = v2;
  LODWORD(STACK[0x6BC]) = v3;
  STACK[0x828] = a1;
  STACK[0x658] = 0;
  LODWORD(STACK[0x494]) = 197499219;
  STACK[0x788] = 0x431A33AA2E6D965FLL;
  STACK[0x570] = 0;
  v6 = (*(v5 + 8 * (v4 ^ 0x2AC0)))(16, 0x20040A4A59CD2);
  v7 = STACK[0x400];
  STACK[0x5B0] = v6;
  return (*(v7 + 8 * (((v6 == 0) * ((68 * (v4 ^ 0xFEA) - 6730) ^ (v4 - 1426))) ^ v4)))();
}

uint64_t sub_1001A5078@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v65 = (a1 ^ 0xBC59953u) + a64;
  STACK[0x920] = v65;
  return (*(v64 + 8 * ((a56 + 1552) ^ (53 * (v65 > a20)))))();
}

void sub_1001A5158(uint64_t a1)
{
  *a1 = *v1;
  *(a1 + 4) = *(v1 + 4);
  *(a1 + 5) = *(v1 + 5);
  JUMPOUT(0x100110504);
}

uint64_t sub_1001A5374(uint64_t a1)
{
  v5 = (v1 + 1313207367) & 0xB1BA1DDF;
  *v3 = a1;
  *v2 = v7;
  v12 = (v5 + 702) ^ (1824088897 * ((((&v10 | 0x7477634E) ^ 0xFFFFFFFE) - (~&v10 | 0x8B889CB1)) ^ 0xD3E14FD3));
  v11 = v8;
  (*(v4 + 8 * (v5 + 1968)))(&v10);
  v11 = v9;
  v12 = ((v5 ^ 0x1146) + 5120) ^ (1824088897 * ((2 * (&v10 & 0x46416098) - &v10 - 1178689690) ^ 0xE1D74C04));
  (*(v4 + 8 * (v5 ^ 0x3850)))(&v10);
  return 0;
}

uint64_t sub_1001A54C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LOWORD(STACK[0x91E]) = v63;
  LODWORD(STACK[0x310]) = v63;
  return sub_10014DBAC(a1, a63 - 2288, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_1001A54DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = (*(v65 + 8 * (v64 + 2843)))(128, 0x10800400FED9166);
  STACK[0x4B0] = v66;
  return (*(a64 + 8 * (((v66 == 0) * (((v64 - 1216496908) & 0x48822BE6) + ((v64 + 567733533) & 0xDE28FEFF) - 1971)) ^ v64)))();
}

uint64_t sub_1001A557C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v3 = a2 - 1993;
  v4 = (a2 - 844040789) & 0x324F01EE;
  v5 = a2 + 3197;
  v6 = STACK[0x4C8];
  STACK[0x3B8] = *(v2 + 8 * v3);
  return (*(v2 + 8 * (((v6 == 0) * (v4 - 6)) ^ v5)))(a1, 16215976);
}

uint64_t sub_1001A563C()
{
  LOWORD(STACK[0x8E6]) = v2;
  LODWORD(STACK[0x2A0]) = v2;
  return (*(STACK[0x330] + 8 * (v1 - 5327)))();
}

void sub_1001A5664()
{
  *v1 = 0;
  *v0 = 0;
  JUMPOUT(0x100114F98);
}

uint64_t sub_1001A56A4()
{
  STACK[0x6E0] = v0;
  LODWORD(STACK[0x574]) = STACK[0x420];
  return (*(v2 + 8 * (((STACK[0x6B8] == 0) * (29 * ((v1 + 347997488) & 0xEB41F7FF ^ 0x17CF) - 79)) ^ v1)))();
}

uint64_t sub_1001A573C@<X0>(int a1@<W8>)
{
  v2 = a1 + 44;
  v3 = (v2 ^ 0xA6A) + LODWORD(STACK[0x5C4]);
  LODWORD(STACK[0x5C4]) = v3;
  return (*(v1 + 8 * (((v3 == (v2 ^ 0xA6B)) * ((v2 + 11) ^ 0x10D8)) ^ v2)))();
}

uint64_t sub_1001A57EC@<X0>(int a1@<W8>)
{
  v5 = LOWORD(STACK[0x942]);
  if (v5 == 17168)
  {
    goto LABEL_4;
  }

  if (v5 == 33980)
  {
    v7 = STACK[0x4F8];
    STACK[0x7F8] = v1;
    LODWORD(STACK[0x7E4]) = a1;
    return (*(v4 + 8 * (((v7 + v2 == 0) * ((v3 ^ 0x12AA) - 5388)) ^ (v3 + 5013))))();
  }

  v6 = v3;
  if (v5 == 20706)
  {
LABEL_4:
    STACK[0x7F8] = v1;
    v6 = v3;
  }

  STACK[0x7A0] = 0;
  LODWORD(STACK[0x7E4]) = 197499219;
  return (*(v4 + 8 * ((59 * (((*STACK[0x878] == 0) ^ (((v6 - 113) ^ 0xC8) - 108)) & 1)) ^ (v6 + 399))))();
}

uint64_t sub_1001A5884()
{
  (*(v3 + 8 * (v1 + 5620)))(v2);
  *v0 = 0;
  return (STACK[0x778])(LODWORD(STACK[0x3B0]), 2957007803, 4294961329, 7479, 4294961230);
}

uint64_t sub_1001A5930@<X0>(int a1@<W8>)
{
  STACK[0x988] = v1;
  v2 = STACK[0x6C8];
  STACK[0x990] = STACK[0x6C8];
  return (*(STACK[0x330] + 8 * (((v1 - v2 > 9) * ((((a1 - 1385) | 0x140) + 3534) ^ (a1 - 158396287) & 0x970FFFF)) ^ a1)))();
}

uint64_t sub_1001A5988()
{
  STACK[0x668] = 0;
  STACK[0x4C8] = 0;
  return (*(v1 + 8 * ((3314 * (LODWORD(STACK[0x67C]) == ((v0 + 1985612020) & 0x89A5FDC9 ^ 0xF802C7))) ^ (v0 + 1805))))();
}

uint64_t sub_1001A59E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v28 = LODWORD(STACK[0x32C]) + 3283;
  v29 = (v27 ^ 0xBC59953u) + a27;
  STACK[0x888] = v29;
  return (*(STACK[0x330] + 8 * (v28 ^ (39 * (v29 > a19)))))();
}

uint64_t sub_1001A5B80(uint64_t a1)
{
  v6 = (v3 ^ 0xFFFFFFFFFFFFF3AFLL ^ (8 * v4) ^ 0x2BD0u) + v2;
  *(a1 - 7 + v6) = *(v1 - 7 + v6);
  return (*(v5 + 8 * ((6730 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

uint64_t sub_1001A5BD8@<X0>(int a1@<W8>)
{
  v3 = STACK[0x7C0];
  STACK[0x600] = v1 + 116;
  STACK[0x650] = v3;
  return (*(v2 + 8 * (((v3 == 0) * ((a1 ^ 0xFFFFEFF0) + a1 + 4099)) | a1)))();
}

void sub_1001A5CC8()
{
  STACK[0x538] = 0;
  STACK[0x7F8] = 0;
  STACK[0x3D8] = *(v1 + 8 * (v0 ^ 0x22C6));
  JUMPOUT(0x1001D780CLL);
}

uint64_t sub_1001A5D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, unsigned int a16)
{
  a15 = a11;
  a16 = (v16 + 6276) ^ (1824088897 * (&a14 ^ 0x5869D362));
  (*(v17 + 8 * (v16 ^ 0x2D9A)))(&a14);
  a16 = (v16 + 6276) ^ (1824088897 * ((((&a14 | 0xDE6D0146) ^ 0xFFFFFFFE) - (~&a14 | 0x2192FEB9)) ^ 0x79FB2DDB));
  a15 = a10;
  v19 = (*(v17 + 8 * (v16 ^ 0x2D9A)))(&a14);
  return (*(v17 + 8 * ((4266 * (v18 == ((v16 - 335751194) & 0xF7BFBBFF) + 490436563)) ^ v16)))(v19);
}

uint64_t sub_1001A5E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  v61 = (v49 - v51 + 26);
  v53 = (*(v52 + 8 * (v50 ^ 0x2B44)))();
  return (*(STACK[0x330] + 8 * (((v53 != 0) * (v50 - 4841 + ((v50 - 2786) | 9))) ^ v50)))(v53, a2, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, v61, a48, a49);
}

uint64_t sub_1001A5FEC()
{
  v9 = *(v8 + 8 * v5);
  v10 = *v6;
  v11 = __ROR8__((v10 + 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v12 = (v11 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v13 = __ROR8__((v11 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2, 8);
  v14 = (v3 - ((v13 + v12) | v3) + ((v13 + v12) | 0x1EC48F9A8BC8C84FLL)) ^ 0xFA59F8450CF57731;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (v1 - ((v16 + v15) | v1) + ((v16 + v15) | 0x15BDDEA04F62FFAALL)) ^ 0xE01F2F19FAB24DA3;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0x5963B6C555D97F1FLL;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (v0 - ((v21 + v20) | v0) + ((v21 + v20) | 0x43769D215A5E7E7)) ^ 0x6572F4F8E5BAC310;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (((2 * (v24 + v23)) & 0x95D159776768EC9ALL) - (v24 + v23) - 0x4AE8ACBBB3B4764ELL) ^ 0xD1D44F463CCF57DELL;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (((2 * (v27 + v26)) & 0xD800CF627F7DCE02) - (v27 + v26) + 0x13FF984EC04118FELL) ^ 0x9D573AA8212B7FDLL;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = __ROR8__(v28, 8);
  *(v10 + 4) = v7 ^ 0x98 ^ (((((2 * (v30 + v29)) & 0x4CC31BBC7D14A244) - (v30 + v29) + 0x599E7221C175AEDDLL) ^ 0xF2AE30F3E9F2F29CLL) >> (8 * ((v10 + 4) & 7)));
  v31 = __ROR8__((v10 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v32 = ((2 * (v31 - 0x6AF7234D0CC131D5)) | 0x3E48AF211110F5F6) - (v31 - 0x6AF7234D0CC131D5) - 0x1F24579088887AFBLL;
  v33 = v32 ^ 0x56CD15ABE79E9D29;
  v32 ^= 0xFE8BF03C7E68EC75;
  v34 = __ROR8__(v33, 8);
  v35 = (((2 * (v34 + v32)) & 0x42379E9795A534D6) - (v34 + v32) + 0x5EE430B4352D6594) ^ 0xBA79476BB210DAEALL;
  v36 = v35 ^ __ROR8__(v32, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (((2 * (v37 + v36)) | 0xF087926224A8E20ALL) - (v37 + v36) - 0x7843C93112547105) ^ 0x8DE13888A784C30CLL;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ 0x5963B6C555D97F1FLL;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ 0x61459D2AF01F24F7;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = __ROR8__(v42, 8);
  v45 = (((2 * (v44 + v43)) | 0x8BD1FBA0C354CF8ELL) - (v44 + v43) - 0x45E8FDD061AA67C7) ^ 0x212BE1D2112EB9ABLL;
  v46 = v45 ^ __ROR8__(v43, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ 0x1A2AEBE44253AF03;
  v48 = __ROR8__(v47, 8) + (v47 ^ __ROR8__(v46, 61));
  *(v10 + 5) = v4 ^ 0x9E ^ (((v2 - (v48 | v2) + (v48 | 0x1B453AE3A5BDDFB3)) ^ 0xB07578318D3A83F2) >> (8 * ((v10 + 5) & 7)));
  return v9();
}

uint64_t sub_1001A6420@<X0>(int a1@<W8>)
{
  STACK[0x420] = 0;
  v2 = *(STACK[0x4B8] + 8);
  STACK[0x710] = 0;
  LODWORD(STACK[0x7B0]) = 0;
  LODWORD(STACK[0x5DC]) = 197499219;
  return (*(v1 + 8 * (((v2 == 0) * (((a1 - 6645) | 0x1002) - 4166)) ^ a1)))();
}

uint64_t sub_1001A64AC@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, char a3@<W2>, int a4@<W3>, int a5@<W8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41)
{
  v50 = *(v48 + 8 * (a41 + a4));
  v51 = (v41 + 4 + a5);
  v52 = *(v49 + 8 * v43) - 8;
  v53 = *(v49 + 8 * v44);
  v54 = *(v49 + 8 * v45) - 4;
  *(a1 + v51) = *(v52 + (v51 & 0xC)) ^ HIBYTE(v42) ^ (((v41 + 4 + a5) & 0xC) * v46) ^ *(v53 + (v51 & 0xC)) ^ *((v51 & 0xC) + *(v49 + 8 * v45)) ^ v47;
  *(a1 + (v51 + 1)) = (((v51 + 1) & a2) * v46) ^ BYTE2(v42) ^ *(v53 + ((v51 + 1) & a2)) ^ *(v52 + ((v51 + 1) & a2)) ^ *(((v51 + 1) & a2) + v54 + 4) ^ 0x22;
  *(a1 + (v51 + 2)) = (((v51 + 2) & 0xE) * v46) ^ BYTE1(v42) ^ *(v53 + ((v51 + 2) & 0xELL)) ^ *(v52 + ((v51 + 2) & 0xELL)) ^ *(((v51 + 2) & 0xELL) + v54 + 4) ^ 0x8F;
  *(a1 + (v51 + 3)) = v42 ^ ((v51 + 3) * v46) ^ *(v53 + (v51 + 3)) ^ *(v52 + (v51 + 3)) ^ *((v51 + 3) + v54 + 4) ^ a3;
  return v50();
}

uint64_t sub_1001A6694(uint64_t a1, uint64_t a2, int a3)
{
  v11 = (((v8 & v9) + a2) ^ v6) + v4;
  *(v5 + v11) = *(v3 + v11);
  return (*(v10 + 8 * (((v6 + 8 == v4) * a3) ^ v7)))();
}

uint64_t sub_1001A6710()
{
  v2 = (*(v1 + 8 * (v0 + 1611)))(32, 0x103004054B5FA7DLL);
  v3 = STACK[0x330];
  STACK[0x820] = v2;
  return (*(v3 + 8 * ((62 * (((v2 == 0) ^ (-87 * (v0 ^ 0x51) + 1)) & 1)) ^ v0)))();
}

uint64_t sub_1001A677C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9)
{
  *v10 = a1;
  *a9 = v9;
  return sub_1001DADC4();
}

uint64_t sub_1001A67C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19, int a20, unsigned int a21)
{
  a19 = &a14;
  a21 = v21 + 1317436891 * ((&a19 & 0xA2960451 | ~(&a19 | 0xA2960451)) ^ 0xED6A63D8) + 2466;
  v24 = (*(v23 + 8 * (v21 + 3949)))(&a19);
  return (*(v23 + 8 * ((126 * (a20 != v22 + ((v21 - 616671297) & 0xF6DBBB39) + 16253847)) ^ v21)))(v24);
}

uint64_t sub_1001A6868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char *a20, int a21, unsigned int a22)
{
  a22 = 1317436891 * ((2 * (&a20 & 0x1A5D5FF8) - &a20 + 1705156613) ^ 0xD5A13873) + 8154;
  a20 = &a18;
  v23 = (*(v22 + 77096))(&a20);
  return (*(v22 + 8 * ((15097 * (a21 == 16257999)) ^ 0x1BB3u)))(v23);
}

uint64_t sub_1001A6910()
{
  v4 = (((v0 - v1 + 655383029) ^ 0x2023B9A1) - 120840314) ^ (v0 - v1 + 655383029) ^ (((v0 - v1 + 655383029) ^ 0x59C312CC) - 2127776535) ^ (((v0 - v1 + 655383029) ^ 0xFAFDFFFF) + 571627996) ^ (((2 * (((v2 - 4685) | 0xA09) ^ 0x36)) ^ 0x7CE2BE98) + ((v0 - v1 + 655383029) ^ 0xA40D0D49));
  LODWORD(STACK[0x6D4]) = v4 ^ 0x2CD5C088;
  v5 = (*(v3 + 8 * (v2 + 4753)))(v4 ^ 0x271059DB, 0x100004077774924);
  v6 = STACK[0x330];
  STACK[0x4A8] = v5;
  return (*(v6 + 8 * ((56 * (v5 == 0)) ^ v2)))();
}

uint64_t sub_1001A6A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v12 - 232) = a9;
  *(v12 - 224) = -97 * ((125 - ((v12 + 24) | 0x7D) + ((v12 + 24) | 0x82)) ^ 0x87) + 34;
  *(v12 - 220) = 956911519 * ((-1036799619 - ((v12 - 232) | 0xC233B17D) + ((v12 - 232) | 0x3DCC4E82)) ^ 0xD75D3E87) + v10 + 604;
  (*(v13 + 8 * (v10 + 3705)))(v12 - 232);
  v14 = STACK[0x330];
  v15 = *(v12 - 216);
  LODWORD(STACK[0x54C]) = v15;
  LOBYTE(STACK[0x77F]) = v15 == (v9 ^ (v11 + 1866));
  return (*(v14 + 8 * (((STACK[0x4E8] != 0) * (v9 - 2253)) | v9)))();
}

void sub_1001A6B74()
{
  STACK[0x4D8] = 0;
  STACK[0x6D8] = 0;
  STACK[0x3D8] = *(v1 + 8 * v0);
  JUMPOUT(0x1001D780CLL);
}

uint64_t sub_1001A6BA8(uint64_t a1, double a2, double a3, int8x16_t a4, int8x16_t a5, double a6, int8x16_t a7, int8x16_t a8, int8x16_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v82 = STACK[0x310];
  v83 = v76 + STACK[0x310];
  *&v84 = v83 - 15;
  *(&v84 + 1) = v83 - 16;
  *&STACK[0x350] = v84;
  *&v84 = v83 - 13;
  *(&v84 + 1) = v83 - 14;
  *&STACK[0x340] = v84;
  v85.i64[0] = v83 - 7;
  v85.i64[1] = v83 - 8;
  v86.i64[0] = v83 - 3;
  v86.i64[1] = v83 - 4;
  v87.i64[0] = v82 + v76 - 1;
  v87.i64[1] = v83 - 2;
  v88.i64[0] = v83 - 5;
  v88.i64[1] = v83 + ((v77 - 4227) ^ 0xFFFFFFFFFFFFF5B0);
  v89 = vandq_s8(v88, *&STACK[0x2D0]);
  v90 = vandq_s8(v87, *&STACK[0x2D0]);
  v91 = vandq_s8(v86, *&STACK[0x2D0]);
  v92 = vandq_s8(v85, *&STACK[0x2D0]);
  v93 = *&STACK[0x2D0];
  v94 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), *&STACK[0x360]);
  v95 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), *&STACK[0x360]);
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), *&STACK[0x360]);
  v97 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), *&STACK[0x360]);
  v99 = *&STACK[0x2A0];
  v98 = *&STACK[0x2B0];
  v100 = vsubq_s64(vorrq_s8(v94, *&STACK[0x2B0]), vorrq_s8(v94, v79));
  v101 = vsubq_s64(vorrq_s8(v95, *&STACK[0x2B0]), vorrq_s8(v95, v79));
  v102 = vaddq_s64(vsubq_s64(vorrq_s8(v97, *&STACK[0x2B0]), vorrq_s8(v97, v79)), v79);
  v103 = vaddq_s64(vsubq_s64(vorrq_s8(v96, *&STACK[0x2B0]), vorrq_s8(v96, v79)), v79);
  v104 = veorq_s8(v103, *&STACK[0x2A0]);
  v105 = veorq_s8(v102, *&STACK[0x2A0]);
  v106 = veorq_s8(v102, *&STACK[0x290]);
  v107 = veorq_s8(v103, *&STACK[0x290]);
  v108 = *&STACK[0x290];
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106), a7);
  v110 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v107), a7);
  v111 = vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL);
  v112 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v113 = veorq_s8(v109, v111);
  v114 = vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL);
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v113);
  v116 = vaddq_s64(v114, v112);
  v117 = *&STACK[0x270];
  v118 = *&STACK[0x250];
  v119 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v116, v116), a9), v116), *&STACK[0x270]), *&STACK[0x260]);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v115, v115), a9), v115), *&STACK[0x270]), *&STACK[0x260]);
  v121 = *&STACK[0x260];
  v122 = vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL);
  v123 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v124 = veorq_s8(v119, v122);
  v125 = vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL);
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v124);
  v127 = vaddq_s64(v125, v123);
  v129 = *&STACK[0x230];
  v128 = *&STACK[0x240];
  v130 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v127, v127), *&STACK[0x250]), v127), *&STACK[0x240]), *&STACK[0x230]);
  v131 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v126, v126), *&STACK[0x250]), v126), *&STACK[0x240]), *&STACK[0x230]);
  v132 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v133 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v134 = vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL);
  v135 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v133);
  v136 = veorq_s8(vaddq_s64(v134, v132), v78);
  v137 = veorq_s8(v135, v78);
  v138 = vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL);
  v139 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v140 = veorq_s8(v136, v138);
  v141 = vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL);
  v142 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL), v140);
  v143 = veorq_s8(vaddq_s64(v141, v139), a8);
  v144 = veorq_s8(v142, a8);
  v145 = vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL);
  v146 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL));
  v147 = veorq_s8(v143, v145);
  v148 = vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL);
  v149 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL), v147);
  v150 = vaddq_s64(v148, v146);
  v151 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v149, v80), vorrq_s8(v149, a75)), a75), v81);
  v152 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v150, v80), vorrq_s8(v150, a75)), a75), v81);
  v153.i64[0] = v83 - 11;
  v153.i64[1] = v83 - 12;
  *&STACK[0x320] = v153;
  v154 = vaddq_s64(v101, v79);
  v261.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL), veorq_s8(v151, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL))), a5), vnegq_s64(vandq_s8(vshlq_n_s64(v85, 3uLL), a4)));
  v261.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), veorq_s8(v152, vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL))), a5), vnegq_s64(vandq_s8(vshlq_n_s64(v86, 3uLL), a4)));
  v155 = *&STACK[0x300];
  v156 = veorq_s8(v154, v99);
  v157 = veorq_s8(v154, v108);
  v158 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v157), *&STACK[0x300]);
  v159 = veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL));
  v160 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), v159);
  v161 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v160, v160), a9), v160), v117), v121);
  v162 = veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL));
  v163 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v162);
  v164 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v163, v163), v118), v163), v128), v129);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL));
  v166 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165), v78);
  v167 = veorq_s8(v166, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v168 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), v167), a8);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL));
  v170 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169);
  v171 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v170, v80), vorrq_s8(v170, a75)), a75), v81);
  v172 = veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v173 = vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL);
  v171.i64[0] = v83 - 9;
  v171.i64[1] = v83 - 10;
  *&STACK[0x330] = v171;
  v174 = vaddq_s64(v173, v172);
  v175 = vandq_s8(v171, v93);
  v176 = vaddq_s64(v100, v79);
  v261.val[0] = vshlq_u64(veorq_s8(v174, a5), vnegq_s64(vandq_s8(vshlq_n_s64(v87, 3uLL), a4)));
  v177 = veorq_s8(v176, v99);
  v178 = veorq_s8(v176, v108);
  v179 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v178), v155);
  v180 = veorq_s8(v179, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL));
  v181 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), v180);
  v182 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v181, v181), a9), v181), v117), v121);
  v183 = veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v184 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL), v183);
  v185 = v128;
  v186 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v184, v184), v118), v184), v128), v129);
  v187 = veorq_s8(v186, vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL));
  v188 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), v187), v78);
  v189 = veorq_s8(v188, vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL));
  v190 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL), v189), a8);
  v191 = veorq_s8(v190, vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL));
  v192 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL), v191);
  v193 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v192, v80), vorrq_s8(v192, a75)), a75), v81);
  v194 = veorq_s8(v193, vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL));
  v195 = vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL);
  v196 = vandq_s8(v153, v93);
  v197 = vaddq_s64(v195, v194);
  v198 = vandq_s8(*&STACK[0x340], v93);
  v261.val[2] = vshlq_u64(veorq_s8(v197, a5), vnegq_s64(vandq_s8(vshlq_n_s64(v88, 3uLL), a4)));
  v199 = vandq_s8(*&STACK[0x350], v93);
  v200 = vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL);
  v201 = vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL);
  v202 = vsraq_n_u64(vshlq_n_s64(v196, 0x38uLL), v196, 8uLL);
  v203 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), *&STACK[0x360]);
  v204 = vaddq_s64(v202, *&STACK[0x360]);
  v205 = vaddq_s64(v201, *&STACK[0x360]);
  v206 = vaddq_s64(v200, *&STACK[0x360]);
  v207 = vsubq_s64(vorrq_s8(v204, v98), vorrq_s8(v204, v79));
  v208 = vaddq_s64(vsubq_s64(vorrq_s8(v206, v98), vorrq_s8(v206, v79)), v79);
  v209 = vaddq_s64(vsubq_s64(vorrq_s8(v205, v98), vorrq_s8(v205, v79)), v79);
  v205.i64[0] = vqtbl4q_s8(v261, *&STACK[0x2E0]).u64[0];
  v261.val[0] = veorq_s8(v209, v99);
  v261.val[1] = veorq_s8(v208, v99);
  v210 = v99;
  v211 = veorq_s8(v208, v108);
  v212 = veorq_s8(v209, v108);
  v261.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v261.val[1], 0x38uLL), v261.val[1], 8uLL), v211), v155);
  v261.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v261.val[0], 0x38uLL), v261.val[0], 8uLL), v212), v155);
  v261.val[2] = vsraq_n_u64(vshlq_n_s64(v211, 3uLL), v211, 0x3DuLL);
  v213 = veorq_s8(v261.val[0], vsraq_n_u64(vshlq_n_s64(v212, 3uLL), v212, 0x3DuLL));
  v214 = veorq_s8(v261.val[1], v261.val[2]);
  v261.val[2] = vsraq_n_u64(vshlq_n_s64(v261.val[0], 0x38uLL), v261.val[0], 8uLL);
  v261.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v261.val[1], 0x38uLL), v261.val[1], 8uLL), v214);
  v261.val[1] = vaddq_s64(v261.val[2], v213);
  v261.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v261.val[1], v261.val[1]), a9), v261.val[1]), v117), v121);
  v261.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v261.val[0], v261.val[0]), a9), v261.val[0]), v117), v121);
  v261.val[2] = vsraq_n_u64(vshlq_n_s64(v213, 3uLL), v213, 0x3DuLL);
  v215 = veorq_s8(v261.val[0], vsraq_n_u64(vshlq_n_s64(v214, 3uLL), v214, 0x3DuLL));
  v216 = veorq_s8(v261.val[1], v261.val[2]);
  v261.val[2] = vsraq_n_u64(vshlq_n_s64(v261.val[0], 0x38uLL), v261.val[0], 8uLL);
  v261.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v261.val[1], 0x38uLL), v261.val[1], 8uLL), v216);
  v261.val[1] = vaddq_s64(v261.val[2], v215);
  v261.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v261.val[1], v261.val[1]), v118), v261.val[1]), v185), v129);
  v261.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v261.val[0], v261.val[0]), v118), v261.val[0]), v185), v129);
  v261.val[2] = vsraq_n_u64(vshlq_n_s64(v215, 3uLL), v215, 0x3DuLL);
  v217 = veorq_s8(v261.val[0], vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL));
  v218 = veorq_s8(v261.val[1], v261.val[2]);
  v261.val[2] = vsraq_n_u64(vshlq_n_s64(v261.val[0], 0x38uLL), v261.val[0], 8uLL);
  v261.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v261.val[1], 0x38uLL), v261.val[1], 8uLL), v218);
  v261.val[1] = veorq_s8(vaddq_s64(v261.val[2], v217), *&STACK[0x370]);
  v261.val[0] = veorq_s8(v261.val[0], *&STACK[0x370]);
  v261.val[2] = vsraq_n_u64(vshlq_n_s64(v217, 3uLL), v217, 0x3DuLL);
  v219 = veorq_s8(v261.val[0], vsraq_n_u64(vshlq_n_s64(v218, 3uLL), v218, 0x3DuLL));
  v220 = veorq_s8(v261.val[1], v261.val[2]);
  v261.val[2] = vsraq_n_u64(vshlq_n_s64(v261.val[0], 0x38uLL), v261.val[0], 8uLL);
  v261.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v261.val[1], 0x38uLL), v261.val[1], 8uLL), v220);
  v261.val[1] = veorq_s8(vaddq_s64(v261.val[2], v219), a8);
  v261.val[0] = veorq_s8(v261.val[0], a8);
  v261.val[2] = vsraq_n_u64(vshlq_n_s64(v219, 3uLL), v219, 0x3DuLL);
  v221 = veorq_s8(v261.val[0], vsraq_n_u64(vshlq_n_s64(v220, 3uLL), v220, 0x3DuLL));
  v222 = veorq_s8(v261.val[1], v261.val[2]);
  v261.val[2] = vsraq_n_u64(vshlq_n_s64(v261.val[0], 0x38uLL), v261.val[0], 8uLL);
  v261.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v261.val[1], 0x38uLL), v261.val[1], 8uLL), v222);
  v261.val[1] = vaddq_s64(v261.val[2], v221);
  v261.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v261.val[0], v80), vorrq_s8(v261.val[0], a75)), a75), v81);
  v261.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v261.val[1], v80), vorrq_s8(v261.val[1], a75)), a75), v81);
  v223 = vaddq_s64(v207, v79);
  v261.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v261.val[0], 0x38uLL), v261.val[0], 8uLL), veorq_s8(v261.val[0], vsraq_n_u64(vshlq_n_s64(v222, 3uLL), v222, 0x3DuLL))), a5), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x350], 3uLL), a4)));
  v261.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v261.val[1], 0x38uLL), v261.val[1], 8uLL), veorq_s8(v261.val[1], vsraq_n_u64(vshlq_n_s64(v221, 3uLL), v221, 0x3DuLL))), a5), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x340], 3uLL), a4)));
  v224 = veorq_s8(v223, v99);
  v225 = veorq_s8(v223, v108);
  v226 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224, 0x38uLL), v224, 8uLL), v225), v155);
  v227 = veorq_s8(v226, vsraq_n_u64(vshlq_n_s64(v225, 3uLL), v225, 0x3DuLL));
  v228 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL), v227);
  v229 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v228, v228), a9), v228), v117), v121);
  v230 = veorq_s8(v229, vsraq_n_u64(vshlq_n_s64(v227, 3uLL), v227, 0x3DuLL));
  v231 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL), v230);
  v232 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v231, v231), v118), v231), v185), v129);
  v233 = veorq_s8(v232, vsraq_n_u64(vshlq_n_s64(v230, 3uLL), v230, 0x3DuLL));
  v234 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL), v233), *&STACK[0x370]);
  v235 = veorq_s8(v234, vsraq_n_u64(vshlq_n_s64(v233, 3uLL), v233, 0x3DuLL));
  v236 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234, 0x38uLL), v234, 8uLL), v235), a8);
  v237 = veorq_s8(v236, vsraq_n_u64(vshlq_n_s64(v235, 3uLL), v235, 0x3DuLL));
  v238 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236, 0x38uLL), v236, 8uLL), v237);
  v239 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v238, v80), vorrq_s8(v238, a75)), a75), v81);
  v240 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v239, 0x38uLL), v239, 8uLL), veorq_s8(v239, vsraq_n_u64(vshlq_n_s64(v237, 3uLL), v237, 0x3DuLL)));
  v241 = vaddq_s64(vsubq_s64(vorrq_s8(v203, v98), vorrq_s8(v203, v79)), v79);
  v261.val[1] = vshlq_u64(veorq_s8(v240, a5), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x320], 3uLL), a4)));
  v242 = veorq_s8(v241, v210);
  v243 = veorq_s8(v241, v108);
  v244 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v242, 0x38uLL), v242, 8uLL), v243), v155);
  v245 = veorq_s8(v244, vsraq_n_u64(vshlq_n_s64(v243, 3uLL), v243, 0x3DuLL));
  v246 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v244, 0x38uLL), v244, 8uLL), v245);
  v247 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v246, v246), a9), v246), v117), v121);
  v248 = veorq_s8(v247, vsraq_n_u64(vshlq_n_s64(v245, 3uLL), v245, 0x3DuLL));
  v249 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v247, 0x38uLL), v247, 8uLL), v248);
  v250 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v249, v249), v118), v249), v185), v129);
  v251 = veorq_s8(v250, vsraq_n_u64(vshlq_n_s64(v248, 3uLL), v248, 0x3DuLL));
  v252 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v250, 0x38uLL), v250, 8uLL), v251), *&STACK[0x370]);
  v253 = veorq_s8(v252, vsraq_n_u64(vshlq_n_s64(v251, 3uLL), v251, 0x3DuLL));
  v254 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v252, 0x38uLL), v252, 8uLL), v253), a8);
  v255 = veorq_s8(v254, vsraq_n_u64(vshlq_n_s64(v253, 3uLL), v253, 0x3DuLL));
  v256 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v254, 0x38uLL), v254, 8uLL), v255);
  v257 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v256, v80), vorrq_s8(v256, a75)), a75), v81);
  v261.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v257, 0x38uLL), v257, 8uLL), veorq_s8(v257, vsraq_n_u64(vshlq_n_s64(v255, 3uLL), v255, 0x3DuLL))), a5), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x330], 3uLL), a4)));
  v205.i64[1] = vqtbl4q_s8(v261, *&STACK[0x2E0]).u64[0];
  v258 = vrev64q_s8(*(v82 + v76 - 1 - 15));
  v259 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v258, v258, 8uLL), a76), v205));
  *(a1 - 15 + v76 - 1) = vextq_s8(v259, v259, 8uLL);
  return (*(a72 + 8 * ((62 * (v76 == 16)) ^ v77)))();
}

uint64_t sub_1001A7AC8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  *&STACK[0x370] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v17 = vdupq_n_s64(0x38uLL);
  v18 = vdupq_n_s64(0x2D9C56C6ED9D3E2EuLL);
  v19 = vdupq_n_s64(a2);
  v20 = vdupq_n_s64(a3);
  v21 = vdupq_n_s64(a1);
  v22 = vdupq_n_s64(a4);
  v23 = vdupq_n_s64(a5);
  v24 = vdupq_n_s64(a6);
  v25 = v7 + v15 + v13;
  v26 = v12 + v11 - v16 + 12;
  v27 = vdupq_n_s64(v10);
  v28 = vdupq_n_s64(a7);
  v29 = vdupq_n_s64(0x365717C7E4CB1A76uLL);
  v30 = vdupq_n_s64(0x8BD86B3AFACC8D6DLL);
  v31 = vdupq_n_s64(0x1323CE1A44C5F46EuLL);
  v32 = vdupq_n_s64(v8);
  v33 = vdupq_n_s64(0xEEA89D249DAFB75ALL);
  v34 = vdupq_n_s64(0xAC7DA0564C1838BuLL);
  v35 = vdupq_n_s64(0x2A5861B0BA21BA34uLL);
  v36 = vdupq_n_s64(0xEAD3CF27A2EF22E5);
  v37 = vdupq_n_s64(0x8B436845DC92299CLL);
  v38 = vdupq_n_s64(0x8E4D6ECA343D275ELL);
  v39 = vdupq_n_s64(0x51BB4171AFEDC628uLL);
  *&STACK[0x360] = xmmword_1009E3420;
  v40.i64[0] = v25 + v26 - 3;
  v40.i64[1] = v25 + v26 + ((v9 - 235) ^ 0xFFFFFFFFFFFFF4B5) + 4;
  v41.i64[0] = v25 + v26 + 3;
  v41.i64[1] = v25 + v26 + 2;
  v42.i64[0] = v25 + v26 + 1;
  v42.i64[1] = v25 + v26;
  v43.i64[0] = v25 + v26 - 1;
  v43.i64[1] = v25 + v26 - 2;
  v44 = vandq_s8(v43, *&STACK[0x370]);
  v45 = vandq_s8(v42, *&STACK[0x370]);
  v46 = vandq_s8(v41, *&STACK[0x370]);
  v47 = vandq_s8(v40, *&STACK[0x370]);
  v48 = vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL);
  v49 = vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL);
  v50 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), v18);
  v51 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), v18);
  v52 = vaddq_s64(v49, v18);
  v53 = vaddq_s64(v48, v18);
  v54 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v50, v50), v19), v50), v20);
  v55 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v51, v51), v19), v51), v20);
  v56 = veorq_s8(v55, v21);
  v57 = veorq_s8(v54, v21);
  v58 = veorq_s8(v54, v22);
  v59 = veorq_s8(v55, v22);
  v60 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v59);
  v61 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL), v58);
  v62 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v61, v61), v23), v61), v24), v27);
  v63 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v60, v60), v23), v60), v24), v27);
  v64 = veorq_s8(v63, vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL));
  v65 = veorq_s8(v62, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v66 = vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL);
  v67 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v65);
  v68 = vaddq_s64(v66, v64);
  v69 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v68, v68), v28), v68), v29), v30);
  v70 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v67, v67), v28), v67), v29), v30);
  v71 = vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL);
  v72 = veorq_s8(v70, vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL));
  v73 = veorq_s8(v69, v71);
  v74 = vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL);
  v75 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v73);
  v76 = vaddq_s64(v74, v72);
  v77 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v75, v31), vorrq_s8(v75, v32)), v32), v33);
  v78 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v76, v31), vorrq_s8(v76, v32)), v32), v33);
  v79 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v80 = veorq_s8(v77, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v81 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v79), v34);
  v82 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), v80), v34);
  v83 = vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL);
  v84 = veorq_s8(v82, vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL));
  v85 = veorq_s8(v81, v83);
  v86 = vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL);
  v87 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), v85);
  v88 = vaddq_s64(v86, v84);
  v89 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v88, v88), v35), v88), v36), v37);
  v90 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v87, v87), v35), v87), v36), v37);
  v91 = vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL);
  v92 = veorq_s8(v90, vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL));
  v93 = veorq_s8(v89, v91);
  v94 = vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL);
  v95 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v93);
  v96 = veorq_s8(vaddq_s64(v94, v92), v38);
  v97 = veorq_s8(v95, v38);
  v98 = vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL);
  v99 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v100 = veorq_s8(v96, v98);
  v101 = vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL);
  v102 = vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL);
  v103 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v52, v52), v19), v52), v20);
  v141.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v102, v100), v39), vnegq_s64(vandq_s8(vshlq_n_s64(v43, 3uLL), v17)));
  v141.val[1] = vshlq_u64(veorq_s8(vaddq_s64(v101, v99), v39), vnegq_s64(vandq_s8(vshlq_n_s64(v42, 3uLL), v17)));
  v104 = veorq_s8(v103, v21);
  v105 = veorq_s8(v103, v22);
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v105);
  v107 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v106, v106), v23), v106), v24), v27);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108);
  v110 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v109, v109), v28), v109), v29), v30);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111);
  v113 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v112, v31), vorrq_s8(v112, v32)), v32), v33);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v115 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114), v34);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v117 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116);
  v118 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v117, v117), v35), v117), v36), v37);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v120 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119), v38);
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL)));
  v122 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v53, v53), v19), v53), v20);
  v141.val[0] = vshlq_u64(veorq_s8(v121, v39), vnegq_s64(vandq_s8(vshlq_n_s64(v41, 3uLL), v17)));
  v123 = veorq_s8(v122, v21);
  v124 = veorq_s8(v122, v22);
  v125 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v124);
  v126 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v125, v125), v23), v125), v24), v27);
  v127 = veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v128 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v127);
  v129 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v128, v128), v28), v128), v29), v30);
  v130 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL));
  v131 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v130);
  v132 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v131, v31), vorrq_s8(v131, v32)), v32), v33);
  v133 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL));
  v134 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v133), v34);
  v135 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v136 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v135);
  v137 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v136, v136), v35), v136), v36), v37);
  v138 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v139 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), v138), v38);
  v141.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL))), v39), vnegq_s64(vandq_s8(vshlq_n_s64(v40, 3uLL), v17)));
  *(v25 + v26 - 4) = vrev64_s8(*&vqtbl4q_s8(v141, *&STACK[0x360]));
  return (*(v14 + 8 * ((115 * (-v16 == 8 - (v11 & 0xFFFFFFF8))) ^ v9)))();
}

uint64_t sub_1001A8238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, int a18, unsigned int a19)
{
  a17 = &a12;
  a19 = 1317436891 * ((&a17 & 0x9A083929 | ~(&a17 | 0x9A083929)) ^ 0xD5F45EA0) + 8154;
  v22 = (*(v20 + 77096))(&a17);
  return (*(v20 + 8 * ((3448 * (a18 == v21)) ^ v19)))(v22);
}

uint64_t sub_1001A82BC()
{
  v2 = *(STACK[0x560] + 24);
  STACK[0x690] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (3 * (v0 ^ 0x77C) + 439 * (v0 ^ 0x63C) - 3505)) ^ v0)))();
}

uint64_t sub_1001A8388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, unsigned int a16)
{
  v19 = (v16 - 3840) | 0x100C;
  a15 = a10;
  a16 = (v16 + 4218) ^ (((1477419285 - (&a14 | 0x580FA115) + (&a14 | 0xA7F05EEA)) ^ 0xFF998D88) * v17);
  (*(v18 + 8 * (v16 + 5484)))(&a14);
  a16 = (v19 + 3950) ^ (((((2 * &a14) | 0x7192FAD0) - &a14 + 1194754712) ^ 0xE0A0AE0A) * v17);
  a15 = a11;
  v20 = (*(v18 + 8 * (v19 + 5216)))(&a14);
  return sub_1001A845C(v20);
}

uint64_t sub_1001A85B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v62 = STACK[0xA70];
  v63 = STACK[0xA40];
  STACK[0x290] = ((STACK[0xA70] + 4) ^ 0x6EEB7373FE7FF71FLL) - 0x8A831024E005309 + ((2 * (STACK[0xA70] + 4)) & 0xDDD6E6E7FCFFEE3ELL);
  v64 = STACK[0xA90];
  STACK[0x280] = ((((v76 + 3862) | 0x208u) + 1315 + STACK[0xA90] - 6087) ^ 0x76DF63FFBEFFEF9FLL) - 0x109C218E0E804B89 + ((2 * (((v76 + 3862) | 0x208u) + 1315 + STACK[0xA90] - 6087)) & 0xEDBEC7FF7DFFDF3ELL);
  STACK[0x270] = ((v63 + 4) ^ 0xFE6347F3F67FB71FLL) + 0x67DFFA7DB9FFECF7 + ((2 * (v63 + 4)) & 0xFCC68FE7ECFF6E3ELL);
  v65 = STACK[0xAB0];
  STACK[0x260] = ((STACK[0xAB0] + 4) ^ 0x6E536371BE7FB53FLL) - 0x81021000E001129 + ((2 * (STACK[0xAB0] + 4)) & 0xDCA6C6E37CFF6A7ELL);
  v66 = STACK[0xAD0];
  STACK[0x250] = ((STACK[0xAD0] + 4) ^ 0xF74FFE7DFDFFBFF6) + 0x6EF343F3B27FE420 + ((2 * (STACK[0xAD0] + 4)) & 0xEE9FFCFBFBFF7FECLL);
  v67 = STACK[0xAF0];
  STACK[0x240] = ((STACK[0xAF0] + 4) ^ 0x7FDBF6F3B77FA51FLL) - 0x1998B48207000109 + ((2 * (STACK[0xAF0] + 4)) & 0xFFB7EDE76EFF4A3ELL);
  v68 = STACK[0xB00];
  STACK[0x230] = ((STACK[0xB00] + 4) ^ 0xFE6346F5B5FFB4B7) + 0x67DFFB7BFA7FEF5FLL + ((2 * (STACK[0xB00] + 4)) & 0xFCC68DEB6BFF696ELL);
  v69 = STACK[0xA30];
  STACK[0x220] = ((STACK[0xA30] + 4) ^ 0xE77F6F75BF7FBCD7) + 0x7EC3D2FBF0FFE73FLL + ((2 * (STACK[0xA30] + 4)) & 0xCEFEDEEB7EFF79AELL);
  v70 = STACK[0xA20];
  STACK[0x210] = ((STACK[0xA20] + 4) ^ 0xFECFDBF1BE7FBDF6) + 0x6773667FF1FFE620 + ((2 * (STACK[0xA20] + 4)) & 0xFD9FB7E37CFF7BECLL);
  v71 = STACK[0xA10];
  STACK[0x200] = ((STACK[0xA10] + 4) ^ 0xE6DFF379B3FFAF56) + 0x7F634EF7FC7FF4C0 + ((2 * (STACK[0xA10] + 4)) & 0xCDBFE6F367FF5EACLL);
  v72 = STACK[0xA00];
  v73 = STACK[0xB58];
  v84 = ((v67 + 6) ^ 0xF34EFFFFFDFFF3FFLL) + 0x6EBFBFB9FAFBFD3ALL + ((2 * (v67 + 6)) & 0xE69DFFFFFBFFE7FELL);
  v83 = ((STACK[0x9F0] + 6) ^ 0xFB3EBFFDFFFBF7B9) + 0x66CFFFBBF8FFF980 + ((2 * (STACK[0x9F0] + 6)) & 0xF67D7FFBFFF7EF72);
  v82 = ((STACK[0xB58] + 6) ^ 0x627EBFB9FEFFF1BBLL) - 0x70000006040082 + ((2 * (STACK[0xB58] + 6)) & 0xC4FD7F73FDFFE376);
  STACK[0x2A0] = v63 + 10;
  v81 = v67 + 10;
  v77 = ((v67 + 10) ^ 0xF2FEFFBBF8FBFB7DLL) + 0x6F0FBFFDFFFFF5BCLL + ((2 * (v67 + 10)) & 0xE5FDFF77F1F7F6FALL);
  v80 = STACK[0xA38];
  STACK[0x3B0] = STACK[0x758];
  STACK[0x330] = STACK[0x5B0];
  STACK[0x320] = STACK[0x920];
  STACK[0x310] = STACK[0x890];
  STACK[0x300] = STACK[0x870];
  STACK[0x3A0] = STACK[0x3F8];
  v74 = STACK[0xAE8];
  STACK[0x390] = STACK[0x3D0];
  v79 = STACK[0xAF8];
  STACK[0x2F0] = STACK[0x480];
  STACK[0x2E0] = STACK[0x6F8];
  STACK[0x2D0] = STACK[0x438];
  STACK[0x2C0] = STACK[0x4B0];
  STACK[0x2B0] = STACK[0x430];
  STACK[0x380] = STACK[0x810];
  v78 = STACK[0xB50];
  LODWORD(STACK[0x340]) = LOWORD(STACK[0x9D2]);
  LODWORD(STACK[0x370]) = LOWORD(STACK[0x9B6]);
  LODWORD(STACK[0x350]) = LOWORD(STACK[0x9A6]);
  LODWORD(STACK[0x360]) = LOWORD(STACK[0x966]);
  return sub_100111688(0xF99C96608AFF80DELL, 0x6FEAED2DD55A32A7, 0xC3E67D93F2F32D7, v72, 0x1D5EE00E4A8A2CA0, 0x84D53DF2213B4FA4, 0xF29EBFF9FEFFF1C0, 0xF1508FF8DABAE9B0, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, ((v73 + 10) ^ 0xEF3EBFFBFBFFF1FBLL) + 0x72CFFFBDFCFBFF3ELL + ((2 * (v73 + 10)) & 0xDE7D7FF7F7FFE3F6), ((v68 + 10) ^ 0x738EBFBBF8FBFFFDLL) - 0x1180000200000EC4 + ((2 * (v68 + 10)) & 0xE71D7F77F1F7FFFALL), v77, ((v63 + 10) ^ 0xE3AEBFFBF9FFFF7BLL) + 0x7E5FFFBDFEFBF1BELL + ((2 * (v63 + 10)) & 0xC75D7FF7F3FFFEF6), v78, v79, v74, v80, v73 + 10, v68 + 10, a34, v81, a36, v82, a38, v83, a40, ((v72 + 6) ^ 0xEA2FFFBBFAFFFB7BLL) + 0x77DEBFFDFDFBF5BELL + ((2 * (v72 + 6)) & 0xD45FFF77F5FFF6F6), a42, ((v71 + 6) ^ 0xFE1EBFBFF9FFFDFDLL) + 0x63EFFFF9FEFBF33CLL + ((2 * (v71 + 6)) & 0xFC3D7F7FF3FFFBFALL), a44, ((v70 + 6) ^ 0x7B5EFFBFFEFFFB79) - 0x1950400606040A40 + ((2 * (v70 + 6)) & 0xF6BDFF7FFDFFF6F2), a46, ((v68 + 6) ^ 0x6EDFBFBDF9FBF93FLL) - 0xCD1000401000806 + ((2 * (v68 + 6)) & 0xDDBF7F7BF3F7F27ELL), a48, v84, a50, a51, a52, ((v69 + 6) ^ 0xFA7EFFB9FDFBF33FLL) + 0x678FBFFFFAFFFDFALL + ((2 * (v69 + 6)) & 0xF4FDFF73FBF7E67ELL), a54, ((v66 + 6) ^ 0xEB7EBFFDFFFFF3B9) + 0x768FFFBBF8FBFD80 + ((2 * (v66 + 6)) & 0xD6FD7FFBFFFFE772), a56, ((v65 + 6) ^ 0xEA7FFFB9FEFBFBFFLL) + 0x778EBFFFF9FFF53ALL + ((2 * (v65 + 6)) & 0xD4FFFF73FDF7F7FELL), a58, ((v64 + 6) ^ 0x6F6FFFBFF9FBFF79) - 0xD61400601000E40 + ((2 * (v64 + 6)) & 0xDEDFFF7FF3F7FEF2), a60, ((v63 + 6) ^ 0xF22FFFFDFEFFFFBDLL) + 0x6FDEBFBBF9FBF17CLL + ((2 * (v63 + 6)) & 0xE45FFFFBFDFFFF7ALL), a62, ((v62 + 6) ^ 0x6B1EBFB9FDFFFF79) - 0x910000005040E40 + ((2 * (v62 + 6)) & 0xD63D7F73FBFFFEF2));
}

uint64_t sub_1001A8670(double a1, int8x16_t a2, int64x2_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int8x16_t a62, int8x16_t a63)
{
  v78 = v71 - 16;
  *&STACK[0x370] = *(v72 + v78 - 16);
  v79.i64[0] = v72 + v78 - 3;
  v79.i64[1] = STACK[0x280] + v78 + v73;
  v80.i64[0] = v72 + v78 - 1;
  v80.i64[1] = v72 + v78 - 2;
  v81.i64[0] = v72 + v78 - 5;
  v81.i64[1] = v72 + v78 - 6;
  v82 = v81;
  *&STACK[0x330] = v80;
  *&STACK[0x340] = v81;
  v81.i64[0] = v72 + v78 - 7;
  v81.i64[1] = v72 + v78 - 8;
  v83 = v81;
  *&STACK[0x360] = v81;
  v84.i64[0] = v72 + v78 - 9;
  v84.i64[1] = v72 + v78 - 10;
  v85.i64[0] = v72 + v78 - 11;
  v85.i64[1] = v72 + v78 - 12;
  v86.i64[0] = v72 + v78 - 13;
  v86.i64[1] = v72 + v78 - 14;
  v87.i64[0] = v72 + v78 - 15;
  v87.i64[1] = v72 + v78 - 16;
  v88 = vandq_s8(v87, v74);
  v89 = vandq_s8(v86, v74);
  v90 = vandq_s8(v85, v74);
  v91 = vandq_s8(v84, v74);
  v92 = vandq_s8(v83, v74);
  v93 = vandq_s8(v82, v74);
  v94 = vandq_s8(v80, v74);
  v95 = vandq_s8(v79, v74);
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), a3);
  v97 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), a3);
  v98 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), a3);
  v99 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), a3);
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), a3);
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), a3);
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), a3);
  v103 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), a3);
  v104 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v96, v96), *&STACK[0x320]), v96), *&STACK[0x310]);
  v105 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v97, v97), *&STACK[0x320]), v97), *&STACK[0x310]);
  v106 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v98, v98), *&STACK[0x320]), v98), *&STACK[0x310]);
  v107 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v99, v99), *&STACK[0x320]), v99), *&STACK[0x310]);
  v108 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v100, v100), *&STACK[0x320]), v100), *&STACK[0x310]);
  v109 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v101, v101), *&STACK[0x320]), v101), *&STACK[0x310]);
  v110 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v102, v102), *&STACK[0x320]), v102), *&STACK[0x310]);
  v111 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v103, v103), *&STACK[0x320]), v103), *&STACK[0x310]);
  v112 = veorq_s8(v111, *&STACK[0x300]);
  v113 = veorq_s8(v110, *&STACK[0x300]);
  v114 = veorq_s8(v109, *&STACK[0x300]);
  v115 = veorq_s8(v108, *&STACK[0x300]);
  v116 = veorq_s8(v107, *&STACK[0x300]);
  v117 = veorq_s8(v106, *&STACK[0x300]);
  v118 = veorq_s8(v105, *&STACK[0x300]);
  v119 = veorq_s8(v104, *&STACK[0x300]);
  v120 = veorq_s8(v104, *&STACK[0x2F0]);
  v121 = veorq_s8(v105, *&STACK[0x2F0]);
  v122 = veorq_s8(v106, *&STACK[0x2F0]);
  v123 = veorq_s8(v107, *&STACK[0x2F0]);
  v124 = veorq_s8(v108, *&STACK[0x2F0]);
  v125 = veorq_s8(v109, *&STACK[0x2F0]);
  v126 = veorq_s8(v110, *&STACK[0x2F0]);
  v127 = veorq_s8(v111, *&STACK[0x2F0]);
  v128 = vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL);
  v129 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v127);
  v130 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v126);
  v131 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v125);
  v132 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v124);
  v133 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v123);
  v134 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v122);
  v135 = vaddq_s64(v128, v121);
  v136 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120);
  v137 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v136, v136), *&STACK[0x2E0]), v136), *&STACK[0x2D0]), *&STACK[0x2B0]);
  v138 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v135, v135), *&STACK[0x2E0]), v135), *&STACK[0x2D0]), *&STACK[0x2B0]);
  v139 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v134, v134), *&STACK[0x2E0]), v134), *&STACK[0x2D0]), *&STACK[0x2B0]);
  v140 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v133, v133), *&STACK[0x2E0]), v133), *&STACK[0x2D0]), *&STACK[0x2B0]);
  v141 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v132, v132), *&STACK[0x2E0]), v132), *&STACK[0x2D0]), *&STACK[0x2B0]);
  v142 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v131, v131), *&STACK[0x2E0]), v131), *&STACK[0x2D0]), *&STACK[0x2B0]);
  v143 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v130, v130), *&STACK[0x2E0]), v130), *&STACK[0x2D0]), *&STACK[0x2B0]);
  v144 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v129, v129), *&STACK[0x2E0]), v129), *&STACK[0x2D0]), *&STACK[0x2B0]);
  v145 = vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL);
  v146 = vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL);
  v147 = vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL);
  v148 = vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL);
  v149 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL));
  v150 = veorq_s8(v143, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v151 = veorq_s8(v142, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v152 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v153 = veorq_s8(v140, v148);
  v154 = veorq_s8(v139, v147);
  v155 = veorq_s8(v138, v146);
  v156 = veorq_s8(v137, v145);
  v157 = vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL);
  v158 = vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL);
  v159 = vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL);
  v160 = vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL);
  v161 = vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL);
  v162 = vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL);
  v163 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), v156);
  v164 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v155);
  v165 = vaddq_s64(v162, v154);
  v166 = vaddq_s64(v161, v153);
  v167 = vaddq_s64(v160, v152);
  v168 = vaddq_s64(v159, v151);
  v169 = vaddq_s64(v158, v150);
  v170 = vaddq_s64(v157, v149);
  v171 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v170, v170), *&STACK[0x2A0]), v170), *&STACK[0x290]), *&STACK[0x270]);
  v172 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v169, v169), *&STACK[0x2A0]), v169), *&STACK[0x290]), *&STACK[0x270]);
  v173 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v168, v168), *&STACK[0x2A0]), v168), *&STACK[0x290]), *&STACK[0x270]);
  v174 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v167, v167), *&STACK[0x2A0]), v167), *&STACK[0x290]), *&STACK[0x270]);
  v175 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v166, v166), *&STACK[0x2A0]), v166), *&STACK[0x290]), *&STACK[0x270]);
  v176 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v165, v165), *&STACK[0x2A0]), v165), *&STACK[0x290]), *&STACK[0x270]);
  v177 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v164, v164), *&STACK[0x2A0]), v164), *&STACK[0x290]), *&STACK[0x270]);
  v178 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v163, v163), *&STACK[0x2A0]), v163), *&STACK[0x290]), *&STACK[0x270]);
  v179 = veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v156, 3uLL), v156, 0x3DuLL));
  v180 = veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL));
  v181 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL));
  v182 = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL));
  v183 = veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v184 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v185 = veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL));
  v186 = veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL));
  v187 = vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL);
  v188 = vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL);
  v189 = vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL);
  v190 = vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL);
  v191 = vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL);
  v192 = vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL);
  v193 = vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL);
  v194 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), v186);
  v195 = veorq_s8(vaddq_s64(v187, v179), v75);
  v196 = veorq_s8(vaddq_s64(v188, v180), v75);
  v197 = veorq_s8(vaddq_s64(v189, v181), v75);
  v198 = veorq_s8(vaddq_s64(v190, v182), v75);
  v199 = veorq_s8(vaddq_s64(v191, v183), v75);
  v200 = veorq_s8(vaddq_s64(v192, v184), v75);
  v201 = veorq_s8(vaddq_s64(v193, v185), v75);
  v202 = veorq_s8(v194, v75);
  v203 = vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL);
  v204 = vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL);
  v205 = vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL);
  v206 = vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL);
  v207 = vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL);
  v208 = vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL);
  v209 = vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL);
  v210 = veorq_s8(v202, vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL));
  v211 = veorq_s8(v201, v209);
  v212 = veorq_s8(v200, v208);
  v213 = veorq_s8(v199, v207);
  v214 = veorq_s8(v198, v206);
  v215 = veorq_s8(v197, v205);
  v216 = veorq_s8(v196, v204);
  v217 = veorq_s8(v195, v203);
  v218 = vsraq_n_u64(vshlq_n_s64(v202, 0x38uLL), v202, 8uLL);
  v219 = vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL);
  v220 = vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL);
  v221 = vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL);
  v222 = vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL);
  v223 = vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL);
  v224 = vsraq_n_u64(vshlq_n_s64(v196, 0x38uLL), v196, 8uLL);
  v225 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL), v217);
  v226 = veorq_s8(vaddq_s64(v218, v210), v76);
  v227 = veorq_s8(vaddq_s64(v219, v211), v76);
  v228 = veorq_s8(vaddq_s64(v220, v212), v76);
  v229 = veorq_s8(vaddq_s64(v221, v213), v76);
  v230 = veorq_s8(vaddq_s64(v222, v214), v76);
  v231 = veorq_s8(vaddq_s64(v223, v215), v76);
  v232 = veorq_s8(vaddq_s64(v224, v216), v76);
  v233 = veorq_s8(v225, v76);
  v234 = vsraq_n_u64(vshlq_n_s64(v210, 3uLL), v210, 0x3DuLL);
  v235 = vsraq_n_u64(vshlq_n_s64(v211, 3uLL), v211, 0x3DuLL);
  v236 = vsraq_n_u64(vshlq_n_s64(v212, 3uLL), v212, 0x3DuLL);
  v237 = vsraq_n_u64(vshlq_n_s64(v213, 3uLL), v213, 0x3DuLL);
  v238 = vsraq_n_u64(vshlq_n_s64(v214, 3uLL), v214, 0x3DuLL);
  v239 = vsraq_n_u64(vshlq_n_s64(v215, 3uLL), v215, 0x3DuLL);
  v240 = vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL);
  v241 = veorq_s8(v233, vsraq_n_u64(vshlq_n_s64(v217, 3uLL), v217, 0x3DuLL));
  v242 = veorq_s8(v232, v240);
  v243 = veorq_s8(v231, v239);
  v244 = veorq_s8(v230, v238);
  v245 = veorq_s8(v229, v237);
  v246 = veorq_s8(v228, v236);
  v247 = veorq_s8(v227, v235);
  v248 = veorq_s8(v226, v234);
  v249 = vsraq_n_u64(vshlq_n_s64(v233, 0x38uLL), v233, 8uLL);
  v250 = vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL);
  v251 = vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL);
  v252 = vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL);
  v253 = vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL);
  v254 = vsraq_n_u64(vshlq_n_s64(v228, 0x38uLL), v228, 8uLL);
  v255 = vsraq_n_u64(vshlq_n_s64(v227, 0x38uLL), v227, 8uLL);
  v256 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL), v248);
  v257 = veorq_s8(vaddq_s64(v249, v241), v77);
  v258 = veorq_s8(vaddq_s64(v250, v242), v77);
  v259 = veorq_s8(vaddq_s64(v251, v243), v77);
  v260 = veorq_s8(vaddq_s64(v252, v244), v77);
  v261 = veorq_s8(vaddq_s64(v253, v245), v77);
  v262 = veorq_s8(vaddq_s64(v254, v246), v77);
  v263 = veorq_s8(vaddq_s64(v255, v247), v77);
  v264 = veorq_s8(v256, v77);
  v265 = veorq_s8(v264, vsraq_n_u64(vshlq_n_s64(v248, 3uLL), v248, 0x3DuLL));
  v266 = veorq_s8(v263, vsraq_n_u64(vshlq_n_s64(v247, 3uLL), v247, 0x3DuLL));
  v267 = veorq_s8(v262, vsraq_n_u64(vshlq_n_s64(v246, 3uLL), v246, 0x3DuLL));
  v268 = veorq_s8(v261, vsraq_n_u64(vshlq_n_s64(v245, 3uLL), v245, 0x3DuLL));
  v269 = veorq_s8(v260, vsraq_n_u64(vshlq_n_s64(v244, 3uLL), v244, 0x3DuLL));
  v270 = veorq_s8(v259, vsraq_n_u64(vshlq_n_s64(v243, 3uLL), v243, 0x3DuLL));
  v271 = veorq_s8(v258, vsraq_n_u64(vshlq_n_s64(v242, 3uLL), v242, 0x3DuLL));
  v272 = veorq_s8(v257, vsraq_n_u64(vshlq_n_s64(v241, 3uLL), v241, 0x3DuLL));
  v273 = vsraq_n_u64(vshlq_n_s64(v264, 0x38uLL), v264, 8uLL);
  v274 = vsraq_n_u64(vshlq_n_s64(v263, 0x38uLL), v263, 8uLL);
  v275 = vsraq_n_u64(vshlq_n_s64(v262, 0x38uLL), v262, 8uLL);
  v276 = vsraq_n_u64(vshlq_n_s64(v261, 0x38uLL), v261, 8uLL);
  v277 = vsraq_n_u64(vshlq_n_s64(v260, 0x38uLL), v260, 8uLL);
  v278 = vsraq_n_u64(vshlq_n_s64(v259, 0x38uLL), v259, 8uLL);
  v279 = vsraq_n_u64(vshlq_n_s64(v258, 0x38uLL), v258, 8uLL);
  v280 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v257, 0x38uLL), v257, 8uLL), v272);
  v281 = vaddq_s64(v279, v271);
  v282 = vaddq_s64(v278, v270);
  v283 = vaddq_s64(v277, v269);
  v284 = vaddq_s64(v276, v268);
  v285 = vaddq_s64(v275, v267);
  v286 = vaddq_s64(v274, v266);
  v287 = vaddq_s64(v273, v265);
  v288 = veorq_s8(vaddq_s64(vsubq_s64(v287, vandq_s8(vaddq_s64(v287, v287), *&STACK[0x260])), *&STACK[0x250]), *&STACK[0x240]);
  v289 = veorq_s8(vaddq_s64(vsubq_s64(v286, vandq_s8(vaddq_s64(v286, v286), *&STACK[0x260])), *&STACK[0x250]), *&STACK[0x240]);
  v290 = veorq_s8(vaddq_s64(vsubq_s64(v285, vandq_s8(vaddq_s64(v285, v285), *&STACK[0x260])), *&STACK[0x250]), *&STACK[0x240]);
  v291 = veorq_s8(vaddq_s64(vsubq_s64(v284, vandq_s8(vaddq_s64(v284, v284), *&STACK[0x260])), *&STACK[0x250]), *&STACK[0x240]);
  v292 = veorq_s8(vaddq_s64(vsubq_s64(v283, vandq_s8(vaddq_s64(v283, v283), *&STACK[0x260])), *&STACK[0x250]), *&STACK[0x240]);
  v293 = veorq_s8(vaddq_s64(vsubq_s64(v282, vandq_s8(vaddq_s64(v282, v282), *&STACK[0x260])), *&STACK[0x250]), *&STACK[0x240]);
  v294 = veorq_s8(vaddq_s64(vsubq_s64(v281, vandq_s8(vaddq_s64(v281, v281), *&STACK[0x260])), *&STACK[0x250]), *&STACK[0x240]);
  v295 = veorq_s8(vaddq_s64(vsubq_s64(v280, vandq_s8(vaddq_s64(v280, v280), *&STACK[0x260])), *&STACK[0x250]), *&STACK[0x240]);
  v296 = veorq_s8(v295, vsraq_n_u64(vshlq_n_s64(v272, 3uLL), v272, 0x3DuLL));
  v297 = veorq_s8(v294, vsraq_n_u64(vshlq_n_s64(v271, 3uLL), v271, 0x3DuLL));
  v298 = veorq_s8(v293, vsraq_n_u64(vshlq_n_s64(v270, 3uLL), v270, 0x3DuLL));
  v299 = veorq_s8(v292, vsraq_n_u64(vshlq_n_s64(v269, 3uLL), v269, 0x3DuLL));
  v300 = veorq_s8(v291, vsraq_n_u64(vshlq_n_s64(v268, 3uLL), v268, 0x3DuLL));
  v301 = veorq_s8(v290, vsraq_n_u64(vshlq_n_s64(v267, 3uLL), v267, 0x3DuLL));
  v302 = veorq_s8(v289, vsraq_n_u64(vshlq_n_s64(v266, 3uLL), v266, 0x3DuLL));
  v303 = veorq_s8(v288, vsraq_n_u64(vshlq_n_s64(v265, 3uLL), v265, 0x3DuLL));
  v304 = vsraq_n_u64(vshlq_n_s64(v295, 0x38uLL), v295, 8uLL);
  v305 = vsraq_n_u64(vshlq_n_s64(v294, 0x38uLL), v294, 8uLL);
  v306 = vsraq_n_u64(vshlq_n_s64(v293, 0x38uLL), v293, 8uLL);
  v307 = vsraq_n_u64(vshlq_n_s64(v292, 0x38uLL), v292, 8uLL);
  v308 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v291, 0x38uLL), v291, 8uLL), v300);
  v309 = vaddq_s64(v307, v299);
  v310 = STACK[0x2C0] + v78;
  v311 = vaddq_s64(v306, v298);
  v298.i64[0] = v310 + 7;
  v298.i64[1] = v310 + 6;
  v312 = vaddq_s64(v305, v297);
  v297.i64[0] = v310 + 9;
  v297.i64[1] = v310 + 8;
  v299.i64[0] = v310 + 5;
  v299.i64[1] = v310 + 4;
  v313 = *&STACK[0x230];
  *&STACK[0x350] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v288, 0x38uLL), v288, 8uLL), v303), *&STACK[0x230]), vnegq_s64(vandq_s8(vshlq_n_s64(v79, 3uLL), a2)));
  v300.i64[0] = v310 + 3;
  v300.i64[1] = v310 + 2;
  v314 = veorq_s8(vaddq_s64(v304, v296), v313);
  v315 = veorq_s8(v312, v313);
  v316 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v290, 0x38uLL), v290, 8uLL), v301), v313);
  v317 = vandq_s8(vshlq_n_s64(v87, 3uLL), a2);
  v318 = vandq_s8(vshlq_n_s64(v85, 3uLL), a2);
  v319 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v289, 0x38uLL), v289, 8uLL), v302), v313), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x330], 3uLL), a2)));
  v320 = vshlq_u64(v316, vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x340], 3uLL), a2)));
  v321 = vshlq_u64(veorq_s8(v308, v313), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x360], 3uLL), a2)));
  *&STACK[0x360] = vshlq_u64(veorq_s8(v309, v313), vnegq_s64(vandq_s8(vshlq_n_s64(v84, 3uLL), a2)));
  v322 = vshlq_u64(veorq_s8(v311, v313), vnegq_s64(v318));
  v323 = vshlq_u64(v315, vnegq_s64(vandq_s8(vshlq_n_s64(v86, 3uLL), a2)));
  v324 = vshlq_u64(v314, vnegq_s64(v317));
  v325 = vandq_s8(v300, v74);
  v326 = vandq_s8(v299, v74);
  v327 = vandq_s8(v297, v74);
  v328 = vandq_s8(v298, v74);
  v329 = vsraq_n_u64(vshlq_n_s64(v328, 0x38uLL), v328, 8uLL);
  v330 = vsraq_n_u64(vshlq_n_s64(v327, 0x38uLL), v327, 8uLL);
  v331 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v325, 0x38uLL), v325, 8uLL), a3);
  v332 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v326, 0x38uLL), v326, 8uLL), a3);
  v333 = veorq_s8(v332, *&STACK[0x220]);
  v334 = veorq_s8(v331, *&STACK[0x220]);
  v335 = veorq_s8(v331, *&STACK[0x210]);
  v336 = veorq_s8(v332, *&STACK[0x210]);
  v337 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v334, 0x38uLL), v334, 8uLL), v335), *&STACK[0x200]);
  v338 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v333, 0x38uLL), v333, 8uLL), v336), *&STACK[0x200]);
  v339 = vsraq_n_u64(vshlq_n_s64(v335, 3uLL), v335, 0x3DuLL);
  v340 = veorq_s8(v338, vsraq_n_u64(vshlq_n_s64(v336, 3uLL), v336, 0x3DuLL));
  v341 = veorq_s8(v337, v339);
  v342 = vsraq_n_u64(vshlq_n_s64(v338, 0x38uLL), v338, 8uLL);
  v343 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v337, 0x38uLL), v337, 8uLL), v341);
  v344 = veorq_s8(vaddq_s64(v342, v340), a69);
  v345 = veorq_s8(v343, a69);
  v346 = vsraq_n_u64(vshlq_n_s64(v340, 3uLL), v340, 0x3DuLL);
  v347 = veorq_s8(v345, vsraq_n_u64(vshlq_n_s64(v341, 3uLL), v341, 0x3DuLL));
  v348 = veorq_s8(v344, v346);
  v349 = vsraq_n_u64(vshlq_n_s64(v345, 0x38uLL), v345, 8uLL);
  v350 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v344, 0x38uLL), v344, 8uLL), v348);
  v351 = veorq_s8(vaddq_s64(v349, v347), v75);
  v352 = veorq_s8(v350, v75);
  v353 = vsraq_n_u64(vshlq_n_s64(v347, 3uLL), v347, 0x3DuLL);
  v354 = veorq_s8(v352, vsraq_n_u64(vshlq_n_s64(v348, 3uLL), v348, 0x3DuLL));
  v355 = veorq_s8(v351, v353);
  v356 = vsraq_n_u64(vshlq_n_s64(v352, 0x38uLL), v352, 8uLL);
  v357 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v351, 0x38uLL), v351, 8uLL), v355);
  v358 = veorq_s8(vaddq_s64(v356, v354), v76);
  v359 = veorq_s8(v357, v76);
  v360 = vsraq_n_u64(vshlq_n_s64(v354, 3uLL), v354, 0x3DuLL);
  v361 = veorq_s8(v359, vsraq_n_u64(vshlq_n_s64(v355, 3uLL), v355, 0x3DuLL));
  v362 = veorq_s8(v358, v360);
  v363 = vsraq_n_u64(vshlq_n_s64(v359, 0x38uLL), v359, 8uLL);
  v364 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v358, 0x38uLL), v358, 8uLL), v362);
  v365 = veorq_s8(vaddq_s64(v363, v361), v77);
  v366 = veorq_s8(v364, v77);
  v367 = vsraq_n_u64(vshlq_n_s64(v361, 3uLL), v361, 0x3DuLL);
  v368 = veorq_s8(v366, vsraq_n_u64(vshlq_n_s64(v362, 3uLL), v362, 0x3DuLL));
  v369 = veorq_s8(v365, v367);
  v370 = vsraq_n_u64(vshlq_n_s64(v366, 0x38uLL), v366, 8uLL);
  v371 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v365, 0x38uLL), v365, 8uLL), v369);
  v372 = veorq_s8(vaddq_s64(v370, v368), a68);
  v373 = veorq_s8(v371, a68);
  v374 = vsraq_n_u64(vshlq_n_s64(v368, 3uLL), v368, 0x3DuLL);
  v375 = veorq_s8(v373, vsraq_n_u64(vshlq_n_s64(v369, 3uLL), v369, 0x3DuLL));
  v376 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v372, 0x38uLL), v372, 8uLL), veorq_s8(v372, v374));
  v377 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v373, 0x38uLL), v373, 8uLL), v375);
  v378 = vsubq_s64(v377, vandq_s8(vaddq_s64(v377, v377), a67));
  v377.i64[0] = v310 + 1;
  v377.i64[1] = v310;
  v379 = vaddq_s64(v330, a3);
  v483.val[3] = veorq_s8(v321, vshlq_u64(veorq_s8(vaddq_s64(v378, a66), a63), vnegq_s64(vandq_s8(vshlq_n_s64(v300, 3uLL), a2))));
  v483.val[2] = veorq_s8(v320, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v376, vandq_s8(vaddq_s64(v376, v376), a67)), a66), a63), vnegq_s64(vandq_s8(vshlq_n_s64(v299, 3uLL), a2))));
  v380 = veorq_s8(v379, *&STACK[0x220]);
  v381 = veorq_s8(v379, *&STACK[0x210]);
  v382 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v380, 0x38uLL), v380, 8uLL), v381), *&STACK[0x200]);
  v383 = veorq_s8(v382, vsraq_n_u64(vshlq_n_s64(v381, 3uLL), v381, 0x3DuLL));
  v384 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v382, 0x38uLL), v382, 8uLL), v383), a69);
  v385 = veorq_s8(v384, vsraq_n_u64(vshlq_n_s64(v383, 3uLL), v383, 0x3DuLL));
  v386 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v384, 0x38uLL), v384, 8uLL), v385), v75);
  v387 = veorq_s8(v386, vsraq_n_u64(vshlq_n_s64(v385, 3uLL), v385, 0x3DuLL));
  v388 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v386, 0x38uLL), v386, 8uLL), v387), v76);
  v389 = veorq_s8(v388, vsraq_n_u64(vshlq_n_s64(v387, 3uLL), v387, 0x3DuLL));
  v390 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v388, 0x38uLL), v388, 8uLL), v389), v77);
  v391 = veorq_s8(v390, vsraq_n_u64(vshlq_n_s64(v389, 3uLL), v389, 0x3DuLL));
  v392 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v390, 0x38uLL), v390, 8uLL), v391), a68);
  v393 = veorq_s8(v392, vsraq_n_u64(vshlq_n_s64(v391, 3uLL), v391, 0x3DuLL));
  v394 = vsraq_n_u64(vshlq_n_s64(v392, 0x38uLL), v392, 8uLL);
  v392.i64[0] = v310 - 1;
  v392.i64[1] = v310 - 2;
  v395 = vaddq_s64(v394, v393);
  v396 = vsubq_s64(v395, vandq_s8(vaddq_s64(v395, v395), a67));
  v395.i64[0] = v310 - 3;
  v395.i64[1] = v310 - 4;
  v397 = vshlq_u64(veorq_s8(vaddq_s64(v396, a66), a63), vnegq_s64(vandq_s8(vshlq_n_s64(v297, 3uLL), a2)));
  v297.i64[0] = v310 - 5;
  v297.i64[1] = v310 - 6;
  v398 = vaddq_s64(v329, a3);
  v483.val[0] = veorq_s8(v319, v397);
  v399 = veorq_s8(v398, *&STACK[0x220]);
  v400 = veorq_s8(v398, *&STACK[0x210]);
  v401 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v399, 0x38uLL), v399, 8uLL), v400), *&STACK[0x200]);
  v402 = veorq_s8(v401, vsraq_n_u64(vshlq_n_s64(v400, 3uLL), v400, 0x3DuLL));
  v403 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v401, 0x38uLL), v401, 8uLL), v402), a69);
  v404 = veorq_s8(v403, vsraq_n_u64(vshlq_n_s64(v402, 3uLL), v402, 0x3DuLL));
  v405 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v403, 0x38uLL), v403, 8uLL), v404), v75);
  v406 = veorq_s8(v405, vsraq_n_u64(vshlq_n_s64(v404, 3uLL), v404, 0x3DuLL));
  v407 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v405, 0x38uLL), v405, 8uLL), v406), v76);
  v408 = veorq_s8(v407, vsraq_n_u64(vshlq_n_s64(v406, 3uLL), v406, 0x3DuLL));
  v409 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v407, 0x38uLL), v407, 8uLL), v408), v77);
  v410 = veorq_s8(v409, vsraq_n_u64(vshlq_n_s64(v408, 3uLL), v408, 0x3DuLL));
  v411 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v409, 0x38uLL), v409, 8uLL), v410), a68);
  v412 = vandq_s8(v297, v74);
  v413 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v411, 0x38uLL), v411, 8uLL), veorq_s8(v411, vsraq_n_u64(vshlq_n_s64(v410, 3uLL), v410, 0x3DuLL)));
  v414 = vandq_s8(v395, v74);
  v415 = vandq_s8(v392, v74);
  v483.val[1] = veorq_s8(*&STACK[0x350], vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v413, vandq_s8(vaddq_s64(v413, v413), a67)), a66), a63), vnegq_s64(vandq_s8(vshlq_n_s64(v298, 3uLL), a2))));
  v416 = vandq_s8(v377, v74);
  v417 = vsraq_n_u64(vshlq_n_s64(v416, 0x38uLL), v416, 8uLL);
  v418 = vsraq_n_u64(vshlq_n_s64(v415, 0x38uLL), v415, 8uLL);
  v419 = vsraq_n_u64(vshlq_n_s64(v414, 0x38uLL), v414, 8uLL);
  v420 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v412, 0x38uLL), v412, 8uLL), a3);
  v421 = vaddq_s64(v419, a3);
  v419.i64[0] = vqtbl4q_s8(v483, a62).u64[0];
  v422 = veorq_s8(v421, *&STACK[0x220]);
  v483.val[0] = veorq_s8(v420, *&STACK[0x220]);
  v423 = veorq_s8(v420, *&STACK[0x210]);
  v424 = veorq_s8(v421, *&STACK[0x210]);
  v483.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v483.val[0], 0x38uLL), v483.val[0], 8uLL), v423), *&STACK[0x200]);
  v425 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v422, 0x38uLL), v422, 8uLL), v424), *&STACK[0x200]);
  v483.val[1] = vsraq_n_u64(vshlq_n_s64(v423, 3uLL), v423, 0x3DuLL);
  v426 = veorq_s8(v425, vsraq_n_u64(vshlq_n_s64(v424, 3uLL), v424, 0x3DuLL));
  v427 = veorq_s8(v483.val[0], v483.val[1]);
  v483.val[1] = vsraq_n_u64(vshlq_n_s64(v425, 0x38uLL), v425, 8uLL);
  v428 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v483.val[0], 0x38uLL), v483.val[0], 8uLL), v427);
  v483.val[0] = veorq_s8(vaddq_s64(v483.val[1], v426), a69);
  v429 = veorq_s8(v428, a69);
  v483.val[1] = vsraq_n_u64(vshlq_n_s64(v426, 3uLL), v426, 0x3DuLL);
  v430 = veorq_s8(v429, vsraq_n_u64(vshlq_n_s64(v427, 3uLL), v427, 0x3DuLL));
  v431 = veorq_s8(v483.val[0], v483.val[1]);
  v483.val[1] = vsraq_n_u64(vshlq_n_s64(v429, 0x38uLL), v429, 8uLL);
  v432 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v483.val[0], 0x38uLL), v483.val[0], 8uLL), v431);
  v483.val[0] = veorq_s8(vaddq_s64(v483.val[1], v430), v75);
  v433 = veorq_s8(v432, v75);
  v483.val[1] = vsraq_n_u64(vshlq_n_s64(v430, 3uLL), v430, 0x3DuLL);
  v434 = veorq_s8(v433, vsraq_n_u64(vshlq_n_s64(v431, 3uLL), v431, 0x3DuLL));
  v435 = veorq_s8(v483.val[0], v483.val[1]);
  v483.val[1] = vsraq_n_u64(vshlq_n_s64(v433, 0x38uLL), v433, 8uLL);
  v436 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v483.val[0], 0x38uLL), v483.val[0], 8uLL), v435);
  v483.val[0] = veorq_s8(vaddq_s64(v483.val[1], v434), v76);
  v437 = veorq_s8(v436, v76);
  v483.val[1] = vsraq_n_u64(vshlq_n_s64(v434, 3uLL), v434, 0x3DuLL);
  v438 = veorq_s8(v437, vsraq_n_u64(vshlq_n_s64(v435, 3uLL), v435, 0x3DuLL));
  v439 = veorq_s8(v483.val[0], v483.val[1]);
  v483.val[1] = vsraq_n_u64(vshlq_n_s64(v437, 0x38uLL), v437, 8uLL);
  v440 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v483.val[0], 0x38uLL), v483.val[0], 8uLL), v439);
  v483.val[0] = veorq_s8(vaddq_s64(v483.val[1], v438), v77);
  v441 = veorq_s8(v440, v77);
  v483.val[1] = vsraq_n_u64(vshlq_n_s64(v438, 3uLL), v438, 0x3DuLL);
  v442 = veorq_s8(v441, vsraq_n_u64(vshlq_n_s64(v439, 3uLL), v439, 0x3DuLL));
  v443 = veorq_s8(v483.val[0], v483.val[1]);
  v483.val[1] = vsraq_n_u64(vshlq_n_s64(v441, 0x38uLL), v441, 8uLL);
  v444 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v483.val[0], 0x38uLL), v483.val[0], 8uLL), v443);
  v483.val[0] = veorq_s8(vaddq_s64(v483.val[1], v442), a68);
  v445 = veorq_s8(v444, a68);
  v483.val[1] = vsraq_n_u64(vshlq_n_s64(v442, 3uLL), v442, 0x3DuLL);
  v446 = veorq_s8(v445, vsraq_n_u64(vshlq_n_s64(v443, 3uLL), v443, 0x3DuLL));
  v447 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v483.val[0], 0x38uLL), v483.val[0], 8uLL), veorq_s8(v483.val[0], v483.val[1]));
  v448 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v445, 0x38uLL), v445, 8uLL), v446);
  v449 = vaddq_s64(v418, a3);
  v482.val[3] = veorq_s8(v324, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v448, vandq_s8(vaddq_s64(v448, v448), a67)), a66), a63), vnegq_s64(vandq_s8(vshlq_n_s64(v297, 3uLL), a2))));
  v482.val[2] = veorq_s8(v323, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v447, vandq_s8(vaddq_s64(v447, v447), a67)), a66), a63), vnegq_s64(vandq_s8(vshlq_n_s64(v395, 3uLL), a2))));
  v450 = veorq_s8(v449, *&STACK[0x220]);
  v451 = veorq_s8(v449, *&STACK[0x210]);
  v452 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v450, 0x38uLL), v450, 8uLL), v451), *&STACK[0x200]);
  v453 = veorq_s8(v452, vsraq_n_u64(vshlq_n_s64(v451, 3uLL), v451, 0x3DuLL));
  v454 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v452, 0x38uLL), v452, 8uLL), v453), a69);
  v455 = veorq_s8(v454, vsraq_n_u64(vshlq_n_s64(v453, 3uLL), v453, 0x3DuLL));
  v456 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v454, 0x38uLL), v454, 8uLL), v455), v75);
  v457 = veorq_s8(v456, vsraq_n_u64(vshlq_n_s64(v455, 3uLL), v455, 0x3DuLL));
  v458 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v456, 0x38uLL), v456, 8uLL), v457), v76);
  v459 = veorq_s8(v458, vsraq_n_u64(vshlq_n_s64(v457, 3uLL), v457, 0x3DuLL));
  v460 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v458, 0x38uLL), v458, 8uLL), v459), v77);
  v461 = veorq_s8(v460, vsraq_n_u64(vshlq_n_s64(v459, 3uLL), v459, 0x3DuLL));
  v462 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v460, 0x38uLL), v460, 8uLL), v461), a68);
  v463 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v462, 0x38uLL), v462, 8uLL), veorq_s8(v462, vsraq_n_u64(vshlq_n_s64(v461, 3uLL), v461, 0x3DuLL)));
  v464 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v463, vandq_s8(vaddq_s64(v463, v463), a67)), a66), a63), vnegq_s64(vandq_s8(vshlq_n_s64(v392, 3uLL), a2)));
  v465 = vaddq_s64(v417, a3);
  v482.val[1] = veorq_s8(v322, v464);
  v466 = veorq_s8(v465, *&STACK[0x220]);
  v467 = veorq_s8(v465, *&STACK[0x210]);
  v468 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v466, 0x38uLL), v466, 8uLL), v467), *&STACK[0x200]);
  v469 = veorq_s8(v468, vsraq_n_u64(vshlq_n_s64(v467, 3uLL), v467, 0x3DuLL));
  v470 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v468, 0x38uLL), v468, 8uLL), v469), a69);
  v471 = veorq_s8(v470, vsraq_n_u64(vshlq_n_s64(v469, 3uLL), v469, 0x3DuLL));
  v472 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v470, 0x38uLL), v470, 8uLL), v471), v75);
  v473 = veorq_s8(v472, vsraq_n_u64(vshlq_n_s64(v471, 3uLL), v471, 0x3DuLL));
  v474 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v472, 0x38uLL), v472, 8uLL), v473), v76);
  v475 = veorq_s8(v474, vsraq_n_u64(vshlq_n_s64(v473, 3uLL), v473, 0x3DuLL));
  v476 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v474, 0x38uLL), v474, 8uLL), v475), v77);
  v477 = veorq_s8(v476, vsraq_n_u64(vshlq_n_s64(v475, 3uLL), v475, 0x3DuLL));
  v478 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v476, 0x38uLL), v476, 8uLL), v477), a68);
  v479 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v478, 0x38uLL), v478, 8uLL), veorq_s8(v478, vsraq_n_u64(vshlq_n_s64(v477, 3uLL), v477, 0x3DuLL)));
  v482.val[0] = veorq_s8(*&STACK[0x360], vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v479, vandq_s8(vaddq_s64(v479, v479), a67)), a66), a63), vnegq_s64(vandq_s8(vshlq_n_s64(v377, 3uLL), a2))));
  v419.i64[1] = vqtbl4q_s8(v482, a62).u64[0];
  v480 = vrev64q_s8(v419);
  *(v310 - 6) = veorq_s8(vextq_s8(v480, v480, 8uLL), *&STACK[0x370]);
  return (*(a65 + 8 * ((62 * (v70 == v78)) ^ v69)))();
}

uint64_t sub_1001A8678()
{
  v2 = STACK[0x580];
  STACK[0x5F8] = *(v1 + 8 * v0);
  return sub_1001EADB4(v2);
}

uint64_t sub_1001A86EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a4 + 40 * v4 + 28);
  switch(v8)
  {
    case 1:
      v10 = STACK[0x5F0];
      STACK[0x4D0] = *(v7 + 8 * (v5 - 8417));
      return sub_1001CF524(v10);
    case 3:
      return (*(v7 + 8 * (((11 * (v5 ^ 0x246F) + 271 * (v5 ^ 0x2435) - 6545) * (*(a4 + 40 * v4 + 16) == 0)) ^ (v5 - 5020))))();
    case 2:
      return (*(v7 + 8 * (((STACK[0x5F0] != 0) * (v5 - 9061)) ^ (v5 - 771))))();
    default:
      return (STACK[0x958])(a1, a2, a3, (v6 + 5));
  }
}

uint64_t sub_1001A87E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  LODWORD(STACK[0x25C]) = v63;
  STACK[0x2A8] = v62;
  LODWORD(STACK[0x220]) = 165422439;
  return sub_1001C68E8(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

void sub_1001A880C(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v1;
  JUMPOUT(0x10011A7F4);
}

uint64_t sub_1001A882C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, uint64_t a13, uint64_t a14, int a15, char a16, int a17, unsigned int a18, uint64_t a19, char *a20)
{
  a18 = (v20 - 4101) ^ (33731311 * ((1639025179 - (&a17 ^ 0xBAAF4092 | 0x61B18A1B) + (&a17 ^ 0xBAAF4092 | 0x9E4E75E4)) ^ 0x1D17FF55));
  a19 = a13;
  a20 = &a12;
  (*(v21 + 8 * (v20 + 2248)))(&a17);
  a19 = a13;
  a20 = &a16;
  a18 = (v20 - 4101) ^ (33731311 * ((&a17 & 0x8FEBB0C5 | ~(&a17 | 0x8FEBB0C5)) ^ 0x49E28519));
  (*(v21 + 8 * (v20 + 2248)))(&a17);
  a18 = (v20 - 4101) ^ (33731311 * ((((2 * &a17) | 0x94298832) - &a17 + 904608743) ^ 0xF3E20E3A));
  a19 = a13;
  a20 = &a10;
  (*(v21 + 8 * (v20 ^ 0x39C8)))(&a17);
  a19 = a13;
  LODWORD(a20) = v20 - 2008441969 * (((&a17 | 0x4B3C9D43) + (~&a17 | 0xB4C362BC)) ^ 0x3A5C94C) - 1668;
  v23 = (*(v21 + 8 * (v20 ^ 0x393A)))(&a17);
  return (*(v21 + 8 * ((15 * (a17 == v22 + v20 - 1811696420)) ^ v20)))(v23);
}

uint64_t sub_1001A89E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  (*(v17 + 8 * (v13 + 4046)))(v15);
  v18 = STACK[0x330];
  *(v16 - 224) = *a13;
  *(v16 - 232) = v13 + 1358806181 * ((v16 - 232) ^ 0x3F2F6C83) - 2259;
  v19 = (*(v18 + 8 * (v13 + 4038)))(v16 - 232);
  if (v14)
  {
    v20 = 1;
  }

  else
  {
    v20 = LODWORD(STACK[0x7AC]) == ((v13 - 138917504) & 0x847B79D ^ 0xFFFF4C2C);
  }

  v21 = v20;
  return (*(STACK[0x330] + 8 * ((v13 - 757) ^ (32 * v21))))(v19);
}

uint64_t sub_1001A8B44()
{
  v4 = 3 * (v3 ^ 0xCF8);
  v10 = (v3 + 5483) ^ (((((&v8 | 0x8A32E5F4) ^ 0xFFFFFFFE) - (~&v8 | 0x75CD1A0B)) ^ 0x2DA4C969) * v1);
  v9 = v6;
  (*(v0 + 8 * (v3 ^ 0x2EA3)))(&v8);
  v9 = v7;
  v10 = (v4 + 2325) ^ (((&v8 + 1838873659 - 2 * (&v8 & 0x6D9AFC3B)) ^ 0x35F32F59) * v1);
  (*(v0 + 8 * (v4 + 3591)))(&v8);
  return (v2 - 16257999);
}

uint64_t sub_1001A8C4C(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  return sub_1001A8C58();
}

uint64_t sub_1001A8CBC@<X0>(int a1@<W8>)
{
  v2 = a1 ^ 0x4A4;
  v3 = (*(v1 + 8 * (a1 + 7136)))();
  STACK[0x7A8] = 0;
  v4 = STACK[0x524];
  v5 = (v2 - 2123);
  STACK[0x740] += v5 ^ 0xFFFFFFFFFFFFFB65;
  return (*(v1 + 8 * ((913 * (v4 == v2 + 16254671)) ^ v5)))(v3);
}

uint64_t sub_1001A8E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, __int16 a15, char a16, __int16 a17, char a18, uint64_t a19, int a20, unsigned int a21, uint64_t a22, char *a23, unsigned int a24, char *a25)
{
  a24 = (1710126949 * (((&a20 | 0xD6919CF8) - (&a20 & 0xD6919CF8)) ^ 0xE48AC768)) ^ 0xD06;
  a22 = a19;
  a23 = &a14;
  a25 = &a18;
  (*(v25 + 76664))(&a20);
  a21 = (33731311 * (((&a20 | 0x96AB87FF) - (&a20 & 0x96AB87FF)) ^ 0xAF5D4DDC)) ^ 0xC9C;
  a22 = a19;
  a23 = &a16;
  (*(v25 + 76616))(&a20);
  a22 = a19;
  LODWORD(a23) = 5661 - 2008441969 * (((&a20 | 0x46594474) - (&a20 & 0x46594474)) ^ 0xEC0107A);
  v26 = (*(v25 + 77016))(&a20);
  return (*(v25 + 8 * ((50 * (a20 == 16257999)) | 0x138C)))(v26);
}

uint64_t sub_1001A90A0(int8x16_t a1, int8x16_t a2, int64x2_t a3, int8x16_t a4, int64x2_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v29 = a15 - 8;
  v30 = a16 + v29 + v18;
  v31.i64[0] = a16 + v29 + 11;
  v31.i64[1] = a16 + v29 + 10;
  v32.i64[0] = a16 + v29 + 13;
  v32.i64[1] = a16 + v29 + 12;
  v33.i64[0] = a16 + v29 + 15;
  v33.i64[1] = a16 + v29 + 14;
  v34.i64[0] = v30 + 8;
  v34.i64[1] = a16 + v29 + 16;
  v35 = vandq_s8(v34, a1);
  v36 = vandq_s8(v33, a1);
  v37 = vandq_s8(v32, a1);
  v38 = vandq_s8(v31, a1);
  v39 = vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL);
  v40 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v41 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v42 = vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL);
  v43 = vsubq_s64(v41, vandq_s8(vaddq_s64(vaddq_s64(v41, v41), a3), a4));
  v44 = vsubq_s64(v42, vandq_s8(vaddq_s64(vaddq_s64(v42, v42), a3), a4));
  v45 = vaddq_s64(vsubq_s64(v40, vandq_s8(vaddq_s64(vaddq_s64(v40, v40), a3), a4)), a5);
  v46 = vaddq_s64(vsubq_s64(v39, vandq_s8(vaddq_s64(vaddq_s64(v39, v39), a3), a4)), a5);
  v47 = veorq_s8(v46, a6);
  v48 = veorq_s8(v45, a6);
  v49 = veorq_s8(v45, a7);
  v50 = veorq_s8(v46, a7);
  v51 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v49), a8);
  v52 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v50), a8);
  v53 = vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL);
  v54 = veorq_s8(v52, vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL));
  v55 = veorq_s8(v51, v53);
  v56 = vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL);
  v57 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v55);
  v58 = veorq_s8(vaddq_s64(v56, v54), v20);
  v59 = veorq_s8(v57, v20);
  v60 = vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL);
  v61 = veorq_s8(v59, vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL));
  v62 = veorq_s8(v58, v60);
  v63 = vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL);
  v64 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v62);
  v65 = veorq_s8(vaddq_s64(v63, v61), v21);
  v66 = veorq_s8(v64, v21);
  v67 = vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL);
  v68 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v69 = veorq_s8(v65, v67);
  v70 = vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL);
  v71 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v69);
  v72 = vaddq_s64(v70, v68);
  v73 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v72, v72), v22), v72), v23), v24);
  v74 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v71, v71), v22), v71), v23), v24);
  v75 = vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL);
  v76 = veorq_s8(v74, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v77 = veorq_s8(v73, v75);
  v78 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v79 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v77);
  v80 = veorq_s8(vaddq_s64(v78, v76), v25);
  v81 = veorq_s8(v79, v25);
  v82 = vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL);
  v83 = veorq_s8(v81, vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL));
  v84 = veorq_s8(v80, v82);
  v85 = vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL);
  v86 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), v84);
  v87 = veorq_s8(vaddq_s64(v85, v83), v26);
  v88 = veorq_s8(v86, v26);
  v89 = vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL);
  v90 = veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL));
  v91 = veorq_s8(v87, v89);
  v92 = vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL);
  v93 = vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL);
  v94 = vaddq_s64(v43, a5);
  v95 = vaddq_s64(v93, v91);
  v96 = veorq_s8(vaddq_s64(v92, v90), v28);
  v127.val[3] = vshlq_u64(veorq_s8(v95, v28), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), a2)));
  v127.val[2] = vshlq_u64(v96, vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), a2)));
  v97 = veorq_s8(v94, a6);
  v98 = veorq_s8(v94, a7);
  v99 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98), a8);
  v100 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v101 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v100), v20);
  v102 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v103 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102), v21);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v105 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104);
  v106 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v105, v105), v22), v105), v23), v24);
  v107 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v108 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107), v25);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v110 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109), v26);
  v111 = vaddq_s64(v44, a5);
  v127.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL))), v28), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), a2)));
  v112 = veorq_s8(v111, a6);
  v113 = veorq_s8(v111, a7);
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113), a8);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v116 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115), v20);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v118 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117), v21);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v120 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119);
  v121 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v120, v120), v22), v120), v23), v24);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v123 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122), v25);
  v124 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v125 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v124), v26);
  v127.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL))), v28), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), a2)));
  *(v30 + 1) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v127, v27)), *(v17 + v29));
  return (*(STACK[0x330] + 8 * (((a14 == v29) * v19) ^ v16)))();
}

uint64_t sub_1001A90D4@<X0>(_DWORD *a1@<X8>)
{
  v4 = (v1 - 901052120) & 0x15B4FFFE;
  *(v2 + 80) = 1;
  v5 = v4 - 943;
  *(v2 + 84) = *a1;
  v6 = STACK[0x728];
  STACK[0x808] = &STACK[0xA30] + STACK[0x728];
  STACK[0x728] = ((v4 - 4397) | 0x1026u) - 2354 + v6 - 2973;
  v7 = STACK[0x340];
  STACK[0x5A8] = STACK[0x340];
  STACK[0x3B8] = 0;
  STACK[0x338] = 0;
  STACK[0x610] = 0;
  LODWORD(STACK[0x4D4]) = 0;
  STACK[0x5E8] = 0;
  STACK[0x7C8] = 0;
  v8 = (*(v3 + 8 * (v4 + 3978)))();
  if (v7)
  {
    v9 = LODWORD(STACK[0x684]) == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  return (*(STACK[0x330] + 8 * ((11 * v10) ^ v5)))(v8);
}

uint64_t sub_1001A92F0@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 - 7764) | 0xAA0;
  v4 = (*(v2 + 8 * (v3 ^ 0x2B08)))(a1 << (((((v1 - 84) | 0xA0) + 86) | 0x86u) + 125), 0x100004000313F17) != 0;
  return (*(v2 + 8 * (v3 ^ (4 * v4))))();
}

uint64_t sub_1001A93CC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = LOWORD(STACK[0x974]);
  if (v68 == 17168)
  {
    goto LABEL_4;
  }

  if (v68 != 33980)
  {
    v69 = a64;
    if (v68 != 20706)
    {
LABEL_5:
      STACK[0x938] = 0;
      LODWORD(STACK[0x6B4]) = 197499219;
      return (*(v67 + 8 * (((v66 == v69 + 16251908) * (((v69 - 510838125) & 0x1E72BDBD) - 1897)) ^ (v69 - 4886))))();
    }

LABEL_4:
    STACK[0x410] = v64;
    v66 = 16215638;
    v69 = a64;
    goto LABEL_5;
  }

  v71 = STACK[0x430];
  STACK[0x410] = v64;
  LODWORD(STACK[0x6B4]) = a1;
  return (*(v67 + 8 * (((v71 + v65 == 0) * (((a64 - 507246742) & 0x1E3BF9FF) - 6364)) | (a64 - 3877))))();
}

uint64_t sub_1001A9548@<X0>(uint64_t a1@<X8>)
{
  v2 = STACK[0x3E8];
  STACK[0x848] = *(STACK[0x3E8] + 8 * v1);
  return sub_1001CC000(v2, a1);
}

uint64_t sub_1001A95B4(void *a1)
{
  v3 = v1 ^ 0x552;
  v4 = (v1 ^ 0x552) + 5615;
  *a1 = 0;
  a1[1] = 0;
  STACK[0x838] = *(v2 + 8 * v3);
  v5 = (*(v2 + 8 * (v4 ^ 0x3269)))(112, 0x100004098D10E67);
  STACK[0x828] = v5;
  return (*(v2 + 8 * (((v5 == 0) * (v4 ^ 0x17D4)) ^ (v4 - 1218))))();
}

uint64_t sub_1001A9748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x3E4];
  v6 = (LODWORD(STACK[0x3E4]) - 4673) | 0x11;
  LODWORD(STACK[0x534]) = STACK[0x3A0];
  LODWORD(STACK[0x61C]) = STACK[0x3B0];
  LODWORD(STACK[0x7E0]) = STACK[0x3C0];
  LODWORD(STACK[0x844]) = v4;
  return (*(a4 + 8 * (((v6 - 540) * (a1 != 0)) ^ (v5 + 3363))))();
}

void sub_1001A97A0()
{
  v0 = *(&off_100BFFA10 + ((-85 * ((dword_100CBC1F0 + dword_100CBC340) ^ 0xDF)) ^ byte_1009C9D60[byte_1009E3310[(-85 * ((dword_100CBC1F0 + dword_100CBC340) ^ 0xDF))] ^ 0x71]) - 151);
  v1 = *(v0 - 4);
  v2 = *(&off_100BFFA10 + (byte_1009C9D6C[(byte_1009E331C[(-85 * ((dword_100CBC1F0 + v1) ^ 0xDF)) - 12] ^ 0x71) - 12] ^ (-85 * ((dword_100CBC1F0 + v1) ^ 0xDF))) + 42);
  v3 = &v5[*v2 - v1];
  *(v0 - 4) = 2054362027 * v3 - 0xB4207763EF64BDFLL;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * (((v6 | 0x3C431B9F) - v6 + (v6 & 0xC3BCE460)) ^ 0xE58400F);
  LOBYTE(v2) = -85 * ((*v2 - *(v0 - 4)) ^ 0xDF);
  v4 = *(&off_100BFFA10 + ((-85 * ((dword_100CBC1F0 + dword_100CBC340) ^ 0xDF)) ^ byte_1009C9D60[byte_1009E3310[(-85 * ((dword_100CBC1F0 + dword_100CBC340) ^ 0xDF))] ^ 0xE9]) + 135) - 8;
  (*&v4[8 * (byte_1009DAFB8[(byte_1009D40D8[v2 - 8] ^ 0xBF) - 8] ^ v2) + 75368])(v6);
  __asm { BRAA            X8, X17 }
}

void sub_1001A9A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, char a6, _BYTE *a7, char a8)
{
  *a5 = a6;
  *a7 = a8;
  JUMPOUT(0x100184FC8);
}

uint64_t sub_1001A9AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, unsigned int a16)
{
  v19 = v18 | 0x142;
  v20 = (v18 | 0x142) + 5287;
  a16 = (v19 + 6943) ^ (((-1107368521 - (&a14 | 0xBDFEE5B7) + (&a14 | 0x42011A48)) ^ 0x1A68C92A) * v17);
  a15 = a12;
  (*(v16 + 8 * (v19 ^ 0x20F7u)))(&a14);
  a16 = (v20 + 1656) ^ (((((2 * &a14) | 0xEE054350) - &a14 + 150822488) ^ 0xAF6B72CA) * v17);
  a15 = a11;
  v21 = (*(v16 + 8 * (v20 ^ 0x3FAEu)))(&a14);
  return sub_1001CCB9C(v21);
}

uint64_t sub_1001A9AC0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, uint64_t a55, uint64_t a56)
{
  *(((2 * v56) & 0x168F7AFE8) + (v56 ^ 0xF76B9F7EB47BD7F4) + a56 + 0x89460814B84280CLL) = 0;
  v58 = (((a1 - 687) | 0x64) ^ 0xC61) + v56;
  *(((2 * v58) & 0x35DF13DE) + (v58 ^ 0xDFD5DDF51AEF89EFLL) + a56 + 0x202A220AE5107611) = -9392;
  v59 = (a54 ^ 0xCF980618) & (2 * (a54 & 0x19)) ^ a54 & 0x19;
  LODWORD(v58) = ((2 * (a54 ^ 0x8F100618)) ^ 0x81104902) & (a54 ^ 0x8F100618);
  v60 = v58 | 1;
  LODWORD(v58) = (v58 | 0x60C00681) & (4 * v59) ^ v59;
  v61 = ((4 * v60) ^ 0x83309804) & v60 ^ (4 * v60) & 0x60CC2680;
  LODWORD(v58) = v58 ^ 0x60CC2681 ^ (v61 ^ 0x200) & (16 * v58);
  v62 = (16 * (v61 ^ 0x60CC2481)) & 0x60CC2680 ^ 0x600C0681 ^ ((16 * (v61 ^ 0x60CC2481)) ^ 0xCC26810) & (v61 ^ 0x60CC2481);
  v63 = (v58 << 8) & 0x60CC2600 ^ v58 ^ ((v58 << 8) ^ 0xCC268100) & v62;
  v64 = a54 ^ (2 * ((v63 << 16) & 0x60CC0000 ^ v63 ^ ((v63 << 16) ^ 0x26810000) & ((v62 << 8) & 0x60CC0000 ^ 0x20C80000 ^ ((v62 << 8) ^ 0x4C260000) & v62)));
  v65 = (((2 * (v56 + 6)) & 0x17CE7EEDALL) + ((v56 + 6) ^ 0xFBEF9D2EBE73F76DLL) + a56 + 0x41062D1418C0893);
  *v65 = HIBYTE(v64) ^ 0xEF;
  v65[1] = BYTE2(v64) ^ 0x4C;
  v65[2] = BYTE1(v64) ^ 0x6D;
  v65[3] = v64 ^ 0x9B;
  return (*(v57 + 8 * ((121 * ((LODWORD(STACK[0x48C]) | ((LODWORD(STACK[0x48C]) < 0x1023DF67) << 32)) == 270786407)) ^ a1)))();
}

uint64_t sub_1001A9D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21)
{
  a20 = 476323082 - 1710126949 * ((&a20 + 528296211 - 2 * (&a20 & 0x1F7D2913)) ^ 0x2D667283);
  v22 = (*(v21 + 77088))(&a20);
  return (*(v21 + 8 * ((47 * (a21 == 16257999)) ^ 0x18C9u)))(v22);
}

uint64_t sub_1001A9E28@<X0>(uint64_t a1@<X3>, unint64_t a2@<X8>)
{
  v5 = STACK[0x8DC];
  STACK[0x6A8] = a2;
  LODWORD(STACK[0x938]) = v4;
  LOWORD(STACK[0x93E]) = v3;
  LODWORD(STACK[0x940]) = v5;
  LODWORD(STACK[0x944]) = STACK[0x87C];
  STACK[0x948] = STACK[0x810];
  STACK[0x6E8] = STACK[0x708];
  return (*(a1 + 8 * (((((v2 + 31) ^ 0xFFFFF2C9) + v2 - 1229) * (a2 == 0)) ^ v2)))();
}

uint64_t sub_1001A9EDC()
{
  v4 = LOWORD(STACK[0x8C6]);
  switch(v4)
  {
    case 17168:
      goto LABEL_4;
    case 33980:
      v5 = (LODWORD(STACK[0x32C]) - 1059446587) & 0x3F25DFCD;
      v6 = LODWORD(STACK[0x32C]) + 756;
      v7 = STACK[0x630];
      STACK[0x6D8] = v0;
      LODWORD(STACK[0x4B4]) = v2;
      return (*(v3 + 8 * (((v7 + v1 != 0) * (v5 ^ 0x1694)) ^ v6)))();
    case 20706:
LABEL_4:
      STACK[0x6D8] = v0;
      break;
  }

  *STACK[0x4C0] = 0;
  LODWORD(STACK[0x4B4]) = 197499219;
  return sub_1001A9F84();
}

uint64_t sub_1001A9F84()
{
  v2 = *STACK[0x3A8];
  v3 = STACK[0x730];
  STACK[0x3B0] = STACK[0x730];
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  return (*(v1 + 8 * ((v5 * ((v0 + 2087919628) & 0x838CC6A9 ^ 0x372)) ^ v0)))();
}

uint64_t sub_1001AA0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, int a13, unsigned int a14)
{
  a14 = 1317436891 * ((257339326 - (&a12 | 0xF56AFBE) + (&a12 | 0xF0A95041)) ^ 0x40AAC837) + 8154;
  a12 = &a9;
  v16 = (*(v14 + 77096))(&a12);
  return (*(v14 + 8 * ((12 * (a13 == 16257999)) ^ v15)))(v16);
}

uint64_t sub_1001AA2AC@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v6 = (v3 ^ 0xFFFFFFFFFFFFE563 ^ (v4 + 2122)) + v2;
  *(v5 - 7 + v6) = *(a2 - 7 + v6);
  return (*(a1 + 8 * ((2222 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

uint64_t sub_1001AA350()
{
  v0 = STACK[0x3F8] - 25649;
  v1 = STACK[0x3F8] - 8111;
  v2 = LOWORD(STACK[0x9FE]);
  STACK[0x520] = STACK[0xA00];
  return (*(STACK[0x400] + 8 * ((535 * (v2 == (v0 & 0x5D77 ^ 0x5E77))) ^ v1)))();
}

uint64_t sub_1001AA3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a14 = &a11;
  a16 = 1317436891 * ((&a14 + 599706472 - 2 * (&a14 & 0x23BECB68)) ^ 0x93BD531E) + 8154;
  v19 = (*(v16 + 77096))(&a14);
  return (*(v16 + 8 * ((387 * (a15 == v18)) ^ v17)))(v19);
}

uint64_t sub_1001AA4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = LODWORD(STACK[0x3E4]) - 1932;
  v6 = v4 == -328589762;
  LOBYTE(STACK[0x457]) = v6;
  return (*(a4 + 8 * ((LODWORD(STACK[0x3A0]) * v6) ^ v5)))();
}

void sub_1001AA4F8(uint64_t a1@<X8>)
{
  *v2 = v1;
  *(v1 + 8) = *(a1 + 8);
  *(a1 + 8) = v1;
  JUMPOUT(0x1001E6E14);
}

void sub_1001AA518(int a1@<W8>)
{
  v1 = ((2 * STACK[0x220]) & 0x7BE8F7FFFBC6D5A6) + (STACK[0x220] ^ 0x3DF47BFFFDE36AD3) + STACK[0x718] - 0x3DF47BFFFDE36AD3;
  v2 = __ROR8__(v1 & 0xFFFFFFFFFFFFFFF8, 8);
  v3 = ((a1 - 1375) - v2 + 0x6AF7234D0CC11FB8) & 0xE17ED4F2859DC12FLL | (v2 + 0x1508DCB2F33ECE2BLL) & 0x1A812B0D7A623ED0;
  v4 = v3 ^ 0xAC9796C9EA8B26FDLL;
  v3 ^= 0x4D1735E737D57A1uLL;
  v5 = __ROR8__(v4, 8);
  v6 = (v5 + v3 - ((2 * (v5 + v3)) & 0xA8F535F8906AB678) - 0x2B856503B7CAA4C4) ^ 0x30E7ED23CF08E442;
  v7 = v6 ^ __ROR8__(v3, 61);
  v8 = (__ROR8__(v6, 8) + v7) ^ 0xF5A2F1B9B5D0B209;
  v9 = v8 ^ __ROR8__(v7, 61);
  v10 = (__ROR8__(v8, 8) + v9) ^ 0x5963B6C555D97F1FLL;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = __ROR8__(v10, 8);
  v13 = __ROR8__((((2 * ((v12 + v11) ^ 0xE7B5DC45273D63A1)) | 0x504C6837B780C63ELL) - ((v12 + v11) ^ 0xE7B5DC45273D63A1) + 0x57D9CBE4243F9CE1) ^ 0x2ED675740CE22449, 8);
  v14 = (((2 * ((v12 + v11) ^ 0xE7B5DC45273D63A1)) | 0x504C6837B780C63ELL) - ((v12 + v11) ^ 0xE7B5DC45273D63A1) + 0x57D9CBE4243F9CE1) ^ 0x2ED675740CE22449 ^ __ROR8__(v11, 61);
  v15 = (((2 * (v13 + v14)) | 0x4F1E4801C06BB8FCLL) - (v13 + v14) + 0x5870DBFF1FCA2382) ^ 0xC34C380290B10212;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0x1A2AEBE44253AF03;
  v18 = __ROR8__((((2 * STACK[0x220]) & 0x7BE8F7FFFBC6D5A6) + (STACK[0x220] ^ 0x3DF47BFFFDE36AD3) + STACK[0x718] - 0x3DF47BFFFDE36AD2) & 0xFFFFFFFFFFFFFFF8, 8);
  v19 = v18 - ((2 * v18 + 0x2A11B965E67D9C56) & 0x86491E2C94CF3D9ALL) - 0x27D29436C2599308;
  v20 = v19 ^ 0xACDCD2D2571791FLL;
  v19 ^= 0xA28B28BABC870843;
  v21 = __ROR8__(v20, 8);
  v22 = (((2 * ((v21 + v19) ^ 0xE86B6D598CE7C62CLL)) & 0x3776BD40C68BCDALL) - ((v21 + v19) ^ 0xE86B6D598CE7C62CLL) - 0x1BBB5EA06345E6ELL) ^ 0xF2B25093F211D8C0;
  v23 = v22 ^ __ROR8__(v19, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0xF5A2F1B9B5D0B209;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0x5963B6C555D97F1FLL;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0x61459D2AF01F24F7;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x64C31C027084DE6CLL;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0x1A2AEBE44253AF03;
  v33 = __ROR8__(v32, 8);
  v34 = __ROR8__(v31, 61);
  v35 = (((((v33 + (v32 ^ v34) - ((2 * (v33 + (v32 ^ v34))) & 0x46C4DEB32D067766) + 0x23626F5996833BB3) ^ 0x88522D8BBE0467F2) >> (8 * ((((2 * LOBYTE(STACK[0x220])) & 0xA6) + (LOBYTE(STACK[0x220]) ^ 0xD3) + LOBYTE(STACK[0x718]) + 46) & 7u))) ^ *(((2 * STACK[0x220]) & 0x7BE8F7FFFBC6D5A6) + (STACK[0x220] ^ 0x3DF47BFFFDE36AD3) + STACK[0x718] - 0x3DF47BFFFDE36AD2)) << 48) | (((((__ROR8__(v17, 8) + (v17 ^ __ROR8__(v16, 61))) ^ 0xAB3042D228875C41) >> (8 * ((((2 * LOBYTE(STACK[0x220])) & 0xA6) + (LOBYTE(STACK[0x220]) ^ 0xD3) + LOBYTE(STACK[0x718]) + 45) & 7u))) ^ *v1) << 56);
  v36 = __ROR8__((((2 * STACK[0x220]) & 0x7BE8F7FFFBC6D5A6) + (STACK[0x220] ^ 0x3DF47BFFFDE36AD3) + STACK[0x718] - 0x3DF47BFFFDE36AD1) & 0xFFFFFFFFFFFFFFF8, 8);
  v37 = ((2 * (v36 - 0x6AF7234D0CC131D5)) | 0xE988EE55C850EEE4) - (v36 - 0x6AF7234D0CC131D5) + 0xB3B88D51BD7888ELL;
  v38 = v37 ^ 0xBD2D35118B3E90A0;
  v37 ^= 0x156BD08612C8E1FCuLL;
  v39 = (__ROR8__(v38, 8) + v37) ^ 0xE49D77DF873DBF7ELL;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = __ROR8__(v39, 8);
  v42 = __ROR8__((v41 + v40 - ((2 * (v41 + v40)) & 0x6A1EDDA6EAF44D6) - 0x7CAF0912C8A85D95) ^ 0x76F2075482871062, 8);
  v43 = (v41 + v40 - ((2 * (v41 + v40)) & 0x6A1EDDA6EAF44D6) - 0x7CAF0912C8A85D95) ^ 0x76F2075482871062 ^ __ROR8__(v40, 61);
  v44 = (v42 + v43) ^ 0x5963B6C555D97F1FLL;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ 0x61459D2AF01F24F7;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ 0x64C31C027084DE6CLL;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ 0x1A2AEBE44253AF03;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = __ROR8__(v50, 8);
  v53 = v35 | (((((((v52 + v51) | 0xC0D69FAEA99994B0) - ((v52 + v51) | 0x3F29605156666B4FLL) + 0x3F29605156666B4FLL) ^ 0x6BE6DD7C811EC8F1) >> (8 * ((((2 * LOBYTE(STACK[0x220])) & 0xA6) + (LOBYTE(STACK[0x220]) ^ 0xD3) + LOBYTE(STACK[0x718]) + 47) & 7u))) ^ *(((2 * STACK[0x220]) & 0x7BE8F7FFFBC6D5A6) + (STACK[0x220] ^ 0x3DF47BFFFDE36AD3) + STACK[0x718] - 0x3DF47BFFFDE36AD1)) << 40);
  v54 = (__ROR8__((((2 * STACK[0x220]) & 0x7BE8F7FFFBC6D5A6) + (STACK[0x220] ^ 0x3DF47BFFFDE36AD3) + STACK[0x718] - 0x3DF47BFFFDE36AD0) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5) & 0xFBFFFFFFFFFFFFFFLL;
  v55 = __ROR8__(v54 ^ 0x4DE9423B6F16E7D2, 8);
  v54 ^= 0xE5AFA7ACF6E0968ELL;
  v56 = (v55 + v54) ^ 0xE49D77DF873DBF7ELL;
  v57 = v56 ^ __ROR8__(v54, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ 0xF5A2F1B9B5D0B209;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ 0x5963B6C555D97F1FLL;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = __ROR8__(v60, 8);
  v63 = (((v62 + v61) | 0xAC2390E6C13EB103) - ((v62 + v61) | 0x53DC6F193EC14EFCLL) + 0x53DC6F193EC14EFCLL) ^ 0xCD660DCC312195F4;
  v64 = v63 ^ __ROR8__(v61, 61);
  v65 = (__ROR8__(v63, 8) + v64) ^ 0x64C31C027084DE6CLL;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = __ROR8__(v65, 8);
  v68 = (v67 + v66 - ((2 * (v67 + v66)) & 0xE3F30D59F9F95424) + 0x71F986ACFCFCAA12) ^ 0x6BD36D48BEAF0511;
  v69 = v53 | (((((__ROR8__(v68, 8) + (v68 ^ __ROR8__(v66, 61))) ^ 0xAB3042D228875C41) >> (8 * ((((2 * LOBYTE(STACK[0x220])) & 0xA6) + (LOBYTE(STACK[0x220]) ^ 0xD3) + LOBYTE(STACK[0x718]) + 48) & 7u))) ^ *(((2 * STACK[0x220]) & 0x7BE8F7FFFBC6D5A6) + (STACK[0x220] ^ 0x3DF47BFFFDE36AD3) + STACK[0x718] - 0x3DF47BFFFDE36AD0)) << 32);
  v70 = __ROR8__((((2 * STACK[0x220]) & 0x7BE8F7FFFBC6D5A6) + (STACK[0x220] ^ 0x3DF47BFFFDE36AD3) + STACK[0x718] - 0x3DF47BFFFDE36ACFLL) & 0xFFFFFFFFFFFFFFF8, 8);
  v71 = -2 - (((0x6AF7234D0CC131D4 - v70) | 0x44BA01A51A183DE0) + ((v70 + 0x1508DCB2F33ECE2BLL) | 0xBB45FE5AE5E7C21FLL));
  v72 = __ROR8__(v71 ^ 0xD53439E750EDA32, 8);
  v71 ^= 0xA515A609ECF8AB6ELL;
  v73 = (((2 * ((v72 + v71) ^ 0xBE8B2A9C9DF400CFLL)) & 0xAA23D21ABB2D7C00) - ((v72 + v71) ^ 0xBE8B2A9C9DF400CFLL) + 0x2AEE16F2A26941FFLL) ^ 0x70F84BB1B8A0FE4ELL;
  v74 = v73 ^ __ROR8__(v71, 61);
  v75 = __ROR8__(v73, 8);
  v76 = __ROR8__((((2 * (v75 + v74)) & 0x7D84ABA23E9CFE7ELL) - (v75 + v74) - 0x3EC255D11F4E7F40) ^ 0x349F5B97556132C9, 8);
  v77 = (((2 * (v75 + v74)) & 0x7D84ABA23E9CFE7ELL) - (v75 + v74) - 0x3EC255D11F4E7F40) ^ 0x349F5B97556132C9 ^ __ROR8__(v74, 61);
  v78 = (((v76 + v77) | 0xD44CE57641558F6ELL) - ((v76 + v77) | 0x2BB31A89BEAA7091) + 0x2BB31A89BEAA7091) ^ 0x8D2F53B3148CF071;
  v79 = __ROR8__(v78, 8);
  v80 = v78 ^ __ROR8__(v77, 61);
  v81 = (((2 * (v79 + v80)) & 0x56507D4A3E0F7B40) - (v79 + v80) - 0x2B283EA51F07BDA1) ^ 0xB5925C7010E766A8;
  v82 = v81 ^ __ROR8__(v80, 61);
  v83 = __ROR8__(v81, 8);
  v84 = (((2 * (v83 + v82)) & 0xEEF74AFFBBE4930CLL) - (v83 + v82) + 0x8845A80220DB679) ^ 0x6C47468252896815;
  v85 = v84 ^ __ROR8__(v82, 61);
  v86 = __ROR8__(v84, 8);
  v87 = (((2 * (v86 + v85)) & 0x29B65A41F14458CCLL) - (v86 + v85) - 0x14DB2D20F8A22C67) ^ 0xF10E393B450E7C9ALL;
  v88 = v87 ^ __ROR8__(v85, 61);
  v89 = __ROR8__(v87, 8);
  v90 = v69 & 0xFFFFFFFF00FFFFFFLL | (((((v89 + v88 - ((2 * (v89 + v88)) & 0xDE26E3A15DEF6F6ALL) + 0x6F1371D0AEF7B7B5) ^ 0xC42333028670EBF4) >> (8 * ((((2 * LOBYTE(STACK[0x220])) & 0xA6) + (LOBYTE(STACK[0x220]) ^ 0xD3) + LOBYTE(STACK[0x718]) + 49) & 7u))) ^ *(((2 * STACK[0x220]) & 0x7BE8F7FFFBC6D5A6) + (STACK[0x220] ^ 0x3DF47BFFFDE36AD3) + STACK[0x718] - 0x3DF47BFFFDE36ACFLL)) << 24);
  v91 = __ROR8__((((2 * STACK[0x220]) & 0x7BE8F7FFFBC6D5A6) + (STACK[0x220] ^ 0x3DF47BFFFDE36AD3) + STACK[0x718] - 0x3DF47BFFFDE36ACELL) & 0xFFFFFFFFFFFFFFF8, 8);
  v92 = ((2 * v91 + 0x2A11B965E67D9C56) & 0xCB0FE93C98309366) - v91 + 0x56F2EAEC0A8E821;
  v93 = v92 ^ 0xD391495ADCF1519ELL;
  v92 ^= 0x7BD7ACCD450720C2uLL;
  v94 = __ROR8__(v93, 8);
  v95 = (((v94 + v92) ^ 0x8FF42FE233FDEFE0 | 0xCCF5982A4DA0F226) - ((v94 + v92) ^ 0x8FF42FE233FDEFE0 | 0x330A67D5B25F0DD9) + 0x330A67D5B25F0DD9) ^ 0xA79CC017F960A2B8;
  v96 = v95 ^ __ROR8__(v92, 61);
  v97 = (__ROR8__(v95, 8) + v96) ^ 0xF5A2F1B9B5D0B209;
  v98 = v97 ^ __ROR8__(v96, 61);
  v99 = (__ROR8__(v97, 8) + v98) ^ 0x5963B6C555D97F1FLL;
  v100 = v99 ^ __ROR8__(v98, 61);
  v101 = __ROR8__(v99, 8);
  v102 = (((2 * (v101 + v100)) | 0x6B60C641F567F5AALL) - (v101 + v100) - 0x35B06320FAB3FAD5) ^ 0x54F5FE0A0AACDE22;
  v103 = v102 ^ __ROR8__(v100, 61);
  v104 = (__ROR8__(v102, 8) + v103) ^ 0x64C31C027084DE6CLL;
  v105 = v104 ^ __ROR8__(v103, 61);
  v106 = (__ROR8__(v104, 8) + v105) ^ 0x1A2AEBE44253AF03;
  v107 = v90 & 0xFFFFFFFFFF00FFFFLL | (((((__ROR8__(v106, 8) + (v106 ^ __ROR8__(v105, 61))) ^ 0xAB3042D228875C41) >> (8 * ((((2 * LOBYTE(STACK[0x220])) & 0xA6) + (LOBYTE(STACK[0x220]) ^ 0xD3) + LOBYTE(STACK[0x718]) + 50) & 7u))) ^ *(((2 * STACK[0x220]) & 0x7BE8F7FFFBC6D5A6) + (STACK[0x220] ^ 0x3DF47BFFFDE36AD3) + STACK[0x718] - 0x3DF47BFFFDE36ACELL)) << 16);
  v108 = (__ROR8__((((2 * STACK[0x220]) & 0x7BE8F7FFFBC6D5A6) + (STACK[0x220] ^ 0x3DF47BFFFDE36AD3) + STACK[0x718] - 0x3DF47BFFFDE36ACDLL) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5) & 0xFBFFFFFFFFFFFFFFLL;
  v109 = (__ROR8__(v108 ^ 0x4DE9423B6F16E7D2, 8) + (v108 ^ 0xE5AFA7ACF6E0968ELL)) ^ 0xE49D77DF873DBF7ELL;
  v110 = v109 ^ __ROR8__(v108 ^ 0xE5AFA7ACF6E0968ELL, 61);
  v111 = __ROR8__(v109, 8);
  v112 = (v111 + v110 - ((2 * (v111 + v110)) & 0x10D88C22F14EF5CLL) + 0x86C461178A77AELL) ^ 0xF52435D8A25AC5A7;
  v113 = v112 ^ __ROR8__(v110, 61);
  v114 = (__ROR8__(v112, 8) + v113) ^ 0x5963B6C555D97F1FLL;
  v115 = v114 ^ __ROR8__(v113, 61);
  v116 = __ROR8__(v114, 8);
  v117 = (((2 * (v116 + v115)) | 0xF8F4D7410A173B82) - (v116 + v115) - 0x7C7A6BA0850B9DC1) ^ 0x1D3FF68A7514B936;
  v118 = v117 ^ __ROR8__(v115, 61);
  v119 = (__ROR8__(v117, 8) + v118) ^ 0x64C31C027084DE6CLL;
  v120 = v119 ^ __ROR8__(v118, 61);
  v121 = __ROR8__(v119, 8);
  v122 = (((v121 + v120) & 0x865B83655FEF6F5 ^ 0x2498320576F0D5) + ((v121 + v120) & 0xF79A47C9AA01090ALL ^ 0xC68006C000000803) - 1) ^ 0xDC8E7516472557D4;
  v123 = v107 & 0xFFFFFFFFFFFF00FFLL | (((((__ROR8__(v122, 8) + (v122 ^ __ROR8__(v120, 61))) ^ 0xAB3042D228875C41) >> (8 * ((((2 * LOBYTE(STACK[0x220])) & 0xA6) + (LOBYTE(STACK[0x220]) ^ 0xD3) + LOBYTE(STACK[0x718]) + 51) & 7u))) ^ *(((2 * STACK[0x220]) & 0x7BE8F7FFFBC6D5A6) + (STACK[0x220] ^ 0x3DF47BFFFDE36AD3) + STACK[0x718] - 0x3DF47BFFFDE36ACDLL)) << 8);
  v124 = __ROR8__((((2 * STACK[0x220]) & 0x7BE8F7FFFBC6D5A6) + (STACK[0x220] ^ 0x3DF47BFFFDE36AD3) + STACK[0x718] - 0x3DF47BFFFDE36ACCLL) & 0xFFFFFFFFFFFFFFF8, 8);
  v125 = ((2 * (v124 - 0x6AF7234D0CC131D5)) | 0x804B0297E5FB7EA4) - (v124 - 0x6AF7234D0CC131D5) - 0x4025814BF2FDBF52;
  v126 = v125 ^ 0x9CCC3709DEB5880;
  v125 ^= 0xA18A26E7041D29DCLL;
  v127 = __ROR8__(v126, 8);
  v128 = (((2 * (v127 + v125)) & 0xC07D41EEC5780520) - (v127 + v125) + 0x1FC15F089D43FD6FLL) ^ 0xFB5C28D71A7E4211;
  v129 = v128 ^ __ROR8__(v125, 61);
  v130 = __ROR8__(v128, 8);
  v131 = (v130 + v129 - ((2 * (v130 + v129)) & 0xC66D97DBD851D3B2) - 0x1CC9341213D71627) ^ 0x16943A5459F85BD0;
  v132 = v131 ^ __ROR8__(v129, 61);
  v133 = __ROR8__(v131, 8);
  v134 = (((2 * (v133 + v132)) | 0x341E0CCC86BF04E6) - (v133 + v132) + 0x65F0F999BCA07D8DLL) ^ 0xC36CB0A31686FD6CLL;
  v135 = v134 ^ __ROR8__(v132, 61);
  v136 = __ROR8__(v134, 8);
  v137 = __ROR8__((v136 + v135 - ((2 * (v136 + v135)) & 0xA996373FDA7782A4) + 0x54CB1B9FED3BC152) ^ 0x358E86B51D24E5A5, 8);
  v138 = (v136 + v135 - ((2 * (v136 + v135)) & 0xA996373FDA7782A4) + 0x54CB1B9FED3BC152) ^ 0x358E86B51D24E5A5 ^ __ROR8__(v135, 61);
  v139 = (v137 + v138) ^ 0x64C31C027084DE6CLL;
  v140 = v139 ^ __ROR8__(v138, 61);
  v141 = __ROR8__(v139, 8);
  v142 = (v141 + v140 - ((2 * (v141 + v140)) & 0xAB9BCCB5A89BD69ALL) + 0x55CDE65AD44DEB4DLL) ^ 0x4FE70DBE961E444ELL;
  v143 = v142 ^ __ROR8__(v140, 61);
  v144 = __ROR8__(v142, 8);
  v145 = v123 | ((((((2 * (v144 + v143)) & 0x970A9B9F1F62DE94) - (v144 + v143) - 0x4B854DCF8FB16F4BLL) ^ 0x1F4AF0E258C9CCF4) >> (8 * ((((2 * LOBYTE(STACK[0x220])) & 0xA6) + (LOBYTE(STACK[0x220]) ^ 0xD3) + LOBYTE(STACK[0x718]) + 52) & 7u))) ^ *(((2 * STACK[0x220]) & 0x7BE8F7FFFBC6D5A6) + (STACK[0x220] ^ 0x3DF47BFFFDE36AD3) + STACK[0x718] - 0x3DF47BFFFDE36ACCLL));
  STACK[0x710] = v145 - ((2 * v145) & 0x8F13CB4E9EA6B5BALL) + 0x4789E5A74F535ADDLL;
  JUMPOUT(0x1001AB400);
}

uint64_t sub_1001AB40C@<X0>(int a1@<W8>)
{
  STACK[0x628] = STACK[0x8A0];
  v3 = LODWORD(STACK[0x894]) == 197499219 && LOWORD(STACK[0x89A]) == 33980;
  return (*(v1 + 8 * ((v3 * (((a1 - 1356) ^ 0x2DBD) - 8478)) ^ a1)))();
}

uint64_t sub_1001AB464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 26;
  v67 = (*(v65 + 8 * ((v64 ^ 0x7C60) + 3418)))(26, 0x100004077774924);
  *(a1 + 24) = v67;
  return (*(a64 + 8 * (((v67 != 0) * ((v64 ^ 0x614F) - 1356)) ^ v64 ^ 0x7C60)))();
}

uint64_t sub_1001AB4DC@<X0>(uint64_t a1@<X8>)
{
  *v2 = v1;
  *(v1 + 8) = *(a1 + 8);
  *(a1 + 8) = v1;
  return sub_100182528();
}

uint64_t sub_1001AB53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, __int16 a12, char a13, int a14, int a15, char a16, uint64_t a17, uint64_t a18, int a19, unsigned int a20, uint64_t a21, char *a22, unsigned int a23, char *a24)
{
  a24 = &a13;
  a21 = a17;
  a22 = &a11;
  a23 = (v24 + 518) ^ (1710126949 * ((&a19 - 270038435 - 2 * (&a19 & 0xEFE78A5D)) ^ 0xDDFCD1CD));
  (*(v25 + 8 * (v24 ^ 0x2E6Fu)))(&a19);
  a20 = (v24 + 412) ^ (33731311 * (((&a19 | 0xDE3A44FE) - (&a19 & 0xDE3A44FE)) ^ 0xE7CC8EDD));
  a21 = a17;
  a22 = &a16;
  (*(v25 + 8 * (v24 ^ 0x2E69u)))(&a19);
  LODWORD(a22) = v24 - 2008441969 * ((&a19 & 0xAAB1D4BB | ~(&a19 | 0xAAB1D4BB)) ^ 0x1DD77F4A) + 2845;
  a21 = a17;
  v27 = (*(v25 + 8 * (v24 ^ 0x2E9Bu)))(&a19);
  return (*(v25 + 8 * (((a19 == v26) * (((v24 + 3865) ^ 0x1541) - 3918)) | v24)))(v27);
}

uint64_t sub_1001AB69C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 16257999)
  {
    v7 = STACK[0x8A0];
    v8 = *(STACK[0x8A0] + 8);
    v9 = STACK[0x8A8];
    v9[1] = v8;
    *v9 = *v7;
    return (*(v5 + 8 * (((v8 != 0) * (((v4 - 4984) | 0x210) - 4773)) | (v4 - 376))))();
  }

  else if (a4 == 16215947)
  {
    return (*(v5 + 8 * ((((((v4 - 6431) | 0x1018) ^ 0xFFFFF786) + ((v4 - 3096) | 0x311)) * (*(STACK[0x670] + 8) == 0)) ^ (v4 - 4138))))();
  }

  else
  {
    return sub_1001AB714();
  }
}

uint64_t sub_1001AB7C0()
{
  STACK[0x9F8] = v0;
  v3 = STACK[0x3C0];
  STACK[0xA00] = STACK[0x3C0];
  return (*(v2 + 8 * (((v0 - v3 > ((v1 + 708716580) & 0xD5C1D7DB ^ 0x17C2uLL)) * (((v1 - 6083) | 0x182) + 15682)) ^ (v1 + 1903))))();
}

uint64_t sub_1001AB8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = -v8 - v14;
  v17 = v12 - v11 >= (((v10 - 5880) | 0x508u) ^ 0x51BuLL) && v15 + v9 + 16 >= ((v10 - 2045622060) & 0x79EDB7FB) - 6075 && (v15 + a6 + 18) > 0xF;
  v18 = v15 + a8 + 17;
  v20 = v17 && v18 > 0xF;
  return (*(v13 + 8 * ((464 * v20) ^ v10)))();
}

uint64_t sub_1001AB9E8(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, unsigned int a46)
{
  v50 = v47[396] ^ ((((34 * (v46 ^ 0xE0C)) ^ 0x7FFFDAF0) & *v47 | v47[623] & 0x80000000) >> 1);
  v47[623] = (v50 + a1 - (a2 & (2 * v50))) ^ *(v49 + 4 * ((((v46 - 2581) | 0x2008) ^ 0x250F) & *v47));
  return (*(v48 + 8 * ((4866 * (a46 > 0x26F)) ^ v46)))();
}

uint64_t sub_1001ABAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char *a15, int a16, unsigned int a17)
{
  a15 = &a13;
  a17 = v18 + 3 + 1317436891 * (((&a15 | 0xB9A10AAA) - &a15 + (&a15 & 0x465EF550)) ^ 0x9A292DC) + 5959;
  v20 = (*(v17 + 8 * (v18 + 7445)))(&a15);
  return (*(v17 + 8 * (((a16 == v19) * ((v18 - 2138287347) ^ (v18 - 2138293542))) ^ (v18 + 3))))(v20);
}

uint64_t sub_1001ABBD8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *a1;
  STACK[0x388] = 0;
  STACK[0x6A0] = 0;
  return (*(v2 + 8 * (((((1874 * (v1 ^ 0x9CD) - 5556) | 0x80) ^ 0xF9) * (v3 == 0)) ^ v1)))();
}

uint64_t sub_1001ABC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = 34 * (v64 ^ 0x1AA6);
  v68 = (*(v66 + 8 * (v64 ^ 0x3F43)))();
  return (*(a64 + 8 * ((((1095 * (((v67 - 3004) | 0x1800) ^ 0x1924)) ^ 0x9CB) * (LODWORD(STACK[0x648]) == v65)) ^ v67)))(v68);
}

uint64_t sub_1001ABCB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, __int16 a13, char a14, uint64_t a15, int a16, unsigned int a17, uint64_t a18, char *a19, unsigned int a20, char *a21)
{
  a20 = (v21 + 2249) ^ (1710126949 * (((&a16 | 0x614C9C37) - &a16 + (&a16 & 0x9EB363C8)) ^ 0x5357C7A7));
  a21 = &a14;
  a18 = a15;
  a19 = &a10;
  (*(v22 + 8 * (v21 ^ 0x2152)))(&a16);
  a18 = a15;
  a19 = &a12;
  a17 = (v21 + 2143) ^ (33731311 * ((((&a16 | 0x8CE1AF78) ^ 0xFFFFFFFE) - (~&a16 | 0x731E5087)) ^ 0x4AE89AA4));
  (*(v22 + 8 * (v21 ^ 0x2154)))(&a16);
  a18 = a15;
  LODWORD(a19) = v21 - 2008441969 * ((&a16 + 1941461791 - 2 * (&a16 & 0x73B85B1F)) ^ 0x3B210F11) + 4576;
  v23 = (*(v22 + 8 * (v21 + 8542)))(&a16);
  return (*(v22 + 8 * (((a16 == 16257999) * (137 * (v21 ^ 0x418) - 4999)) ^ v21)))(v23);
}

void sub_1001ABE2C()
{
  v0 = *(&off_100BFFA10 + ((-85 * ((dword_100CBC1F0 - dword_100CBBE78) ^ 0xDF)) ^ byte_1009DAFB0[byte_1009D40D0[(-85 * ((dword_100CBC1F0 - dword_100CBBE78) ^ 0xDF))] ^ 0xBF]) + 109);
  v1 = *(v0 - 4);
  v2 = *(&off_100BFFA10 + ((-85 * (v1 ^ dword_100CBC1F0 ^ 0xDF)) ^ byte_1009D3FD0[byte_1009C9A60[(-85 * (v1 ^ dword_100CBC1F0 ^ 0xDF))] ^ 0xEE]) + 85);
  v3 = v1 ^ &v5 ^ *v2;
  *(v0 - 4) = (2054362027 * v3) ^ 0xB4207763EF64BDFLL;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * ((v6 & 0x95EB65D9 | ~(v6 | 0x95EB65D9)) ^ 0x580FC1B6);
  LOBYTE(v2) = -85 * (*(v0 - 4) ^ 0xDF ^ *v2);
  v4 = *(&off_100BFFA10 + ((-85 * ((dword_100CBC1F0 + dword_100CBBE78) ^ 0xDF)) ^ byte_1009D3FD0[byte_1009C9A60[(-85 * ((dword_100CBC1F0 + dword_100CBBE78) ^ 0xDF))] ^ 0x21]) + 150) - 8;
  (*&v4[8 * (byte_1009DAFB8[(byte_1009D40D8[v2 - 8] ^ 1) - 8] ^ v2) + 75592])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1001AC040@<X0>(unsigned __int16 a1@<W8>)
{
  v4 = (((((v2 ^ 0x8206) + 32250) ^ ((v2 ^ 0x88B8) + 30536) ^ ((v2 ^ 0xE028 ^ ((v1 ^ 0x597) - 1594)) + 5707)) - 19509) >> 6) < 0x343u;
  v5 = ((((v2 ^ 0x8206) + 32250) ^ ((v2 ^ 0x88B8) + 30536) ^ ((v2 ^ 0xE028 ^ ((v1 ^ 0x597) - 1594)) + 5707)) - 19509) > (a1 - 12096);
  if ((a1 >> 6) > 0xBCu == v4)
  {
    v4 = v5;
  }

  return (*(v3 + 8 * ((1773 * v4) ^ v1)))();
}

void sub_1001AC0E0()
{
  v0 = *(&off_100BFFA10 + ((-85 * ((dword_100CBC1F0 + dword_100CBC390) ^ 0xDF)) ^ byte_1009C9D60[byte_1009E3310[(-85 * ((dword_100CBC1F0 + dword_100CBC390) ^ 0xDF))] ^ 0xE2]) + 99);
  v1 = *(v0 - 4);
  v2 = *(&off_100BFFA10 + (byte_1009C9D60[byte_1009E3310[(-85 * (v1 ^ dword_100CBC1F0 ^ 0xDF))] ^ 0xB1] ^ (-85 * (v1 ^ dword_100CBC1F0 ^ 0xDF))) + 156);
  v3 = (*v2 + v1) ^ &v6;
  *(v0 - 4) = 2054362027 * v3 + 0xB4207763EF64BDFLL;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v7[0] = 476323082 - 1710126949 * (((v7 | 0xD1A7DB17) - v7 + (v7 & 0x2E5824E8)) ^ 0xE3BC8087);
  LOBYTE(v2) = -85 * (*(v0 - 4) ^ 0xDF ^ *v2);
  v4 = *(&off_100BFFA10 + ((-85 * ((dword_100CBC1F0 + dword_100CBC390) ^ 0xDF)) ^ byte_1009D42D0[byte_1009C9C60[(-85 * ((dword_100CBC1F0 + dword_100CBC390) ^ 0xDF))] ^ 0xAD]) + 277) - 8;
  (*&v4[8 * (v2 ^ byte_1009C9D60[byte_1009E3310[v2] ^ 0x1F]) + 76384])(v7);
  if (v7[1] == 16257999)
  {
    v5 = 1793;
  }

  else
  {
    v5 = 1792;
  }

  __asm { BRAA            X8, X17 }
}

uint64_t sub_1001AC404@<X0>(int a1@<W8>)
{
  STACK[0x9E0] = v1;
  v2 = STACK[0x620];
  STACK[0x9E8] = STACK[0x620];
  return (*(STACK[0x3E8] + 8 * (((v1 - v2 > ((a1 - 923966709) & 0x37128AC6) - 569) * ((a1 - 11) ^ 0x1FF0)) ^ a1)))();
}

uint64_t sub_1001AC464(uint64_t a1, uint64_t a2)
{
  LOWORD(STACK[0xA3E]) = v2;
  LODWORD(STACK[0x330]) = v2;
  return sub_100162C60(a1, a2, v3 - 8558);
}

uint64_t sub_1001AC480(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, int a18)
{
  *a4 = 0;
  *a5 = 0;
  a17 = 476323082 - 1710126949 * (&a17 ^ 0x321B5B90);
  v19 = (*(v18 + 77088))(&a17);
  return (*(v18 + 8 * ((3302 * (a18 == 16257999)) ^ 0x1249)))(v19);
}

uint64_t sub_1001AC52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char *a16, int a17, unsigned int a18)
{
  a18 = 1317436891 * (&a16 ^ 0xB0039876) + 8154;
  a16 = &a14;
  v20 = (*(v19 + 77096))(&a16);
  return (*(v19 + 8 * ((12193 * (a17 == 16257999)) ^ v18)))(v20);
}

uint64_t sub_1001AC62C()
{
  v4 = (*(v0 + 8 * (v1 + 3971)))(128, v2);
  v5 = STACK[0x3E8];
  STACK[0x510] = v4;
  return (*(v5 + 8 * ((13488 * (v3 - v4 < (v1 - 2927) - 2704)) ^ v1)))();
}

uint64_t sub_1001AC684@<X0>(__int16 a1@<W8>)
{
  v3 = STACK[0x350];
  STACK[0x7B0] = *(v2 + 8 * v1);
  return sub_1001D78AC(v3, a1);
}

uint64_t sub_1001AC6B8@<X0>(unsigned int a1@<W8>)
{
  v4 = (((*(v1 + 16) ^ 0x832D56F) + ((v2 - 5465) ^ 0x42389386)) ^ ((*(v1 + 16) ^ 0xE0C665D5) - 1429461689) ^ (((v2 - 1033) ^ 0x170B588E ^ *(v1 + 16)) + 1560350679)) + 1463797431;
  v5 = (a1 > 0xF2CA79DB) ^ (v4 < 0xD358624);
  v6 = a1 + 221611556 > v4;
  if (v5)
  {
    v6 = a1 > 0xF2CA79DB;
  }

  return (*(v3 + 8 * ((!v6 | (8 * !v6)) ^ v2)))();
}

uint64_t sub_1001AC788()
{
  v6 = (((v3 - 1100) - 2938) ^ v2) + v0;
  *(v5 - 7 + v6) = veor_s8(*(v1 - 7 + v6), 0x3C3C3C3C3C3C3C3CLL);
  return (*(v4 + 8 * ((((v0 & 0xFFFFFFF8) - 8 == v2) | (2 * ((v0 & 0xFFFFFFF8) - 8 == v2))) ^ v3)))();
}

uint64_t sub_1001AC7E4()
{
  STACK[0xA38] = v3;
  STACK[0xA40] = v1;
  return (*(v4 + 8 * (((v2 > (((v0 ^ 0xC1Fu) + 4420) ^ 0x17C2uLL)) * (((v0 ^ 0xC1F) - 1178) ^ 0x2411)) ^ v0 ^ 0xC1F)))();
}

uint64_t sub_1001AC83C@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  (*(a1 + 8 * (v2 + 7603)))(a2);
  *(STACK[0x4B8] + 24) = 0;
  return sub_1001AC870();
}

void sub_1001AC870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 8 * (v4 + 0x1FFF)))();
  STACK[0x4B8] = 0;
  JUMPOUT(0x1001AC8A4);
}

uint64_t sub_1001ACA70@<X0>(int a1@<W8>)
{
  v3 = STACK[0x450];
  STACK[0x8A0] = v1 + 116;
  STACK[0x550] = v3;
  return (*(v2 + 8 * (((((a1 - 642) | 0xC00) - 3382) * (v3 == 0)) ^ a1)))();
}

uint64_t sub_1001ACB90@<X0>(int a1@<W2>, int a2@<W3>, int a3@<W4>, int a4@<W5>, int a5@<W6>, int a6@<W7>, unsigned int a7@<W8>)
{
  v11 = (((*(v7 + 16) ^ a3) + a4) ^ ((v8 ^ a2) + a6 + (*(v7 + 16) ^ a5)) ^ ((*(v7 + 16) ^ (((v8 - 598) | a1) + 1270346645)) - 1533535899)) + 1072899615;
  v12 = a7 + v9 > v11;
  v13 = (a7 > 0xAF3CBE9B) ^ (v11 < v9);
  v14 = v12;
  if (v13)
  {
    v15 = a7 > 0xAF3CBE9B;
  }

  else
  {
    v15 = v14;
  }

  return (*(v10 + 8 * ((428 * v15) ^ v8)))();
}

uint64_t sub_1001ACC34()
{
  v2 = *(STACK[0x4B8] + 20);
  if (!v2)
  {
    return sub_1001ACF40();
  }

  if (v2 != 1)
  {
    JUMPOUT(0x100122064);
  }

  v3 = (*(v1 + 8 * (v0 ^ 0x3076)))(STACK[0x7A0], 0, 32);
  return sub_1001ACC94(v3, v4, v5);
}

uint64_t sub_1001ACC94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0x2B0]) = STACK[0x6C4];
  LODWORD(STACK[0x2A0]) = ((v5 - 208) | 0x200C) + 197489942;
  STACK[0x280] = STACK[0x7C8];
  STACK[0x2C0] = v3;
  STACK[0x290] = v3 + 56;
  LODWORD(STACK[0x2F0]) = STACK[0x35C];
  LODWORD(STACK[0x310]) = LOBYTE(STACK[0x79B]);
  LODWORD(STACK[0x2D0]) = STACK[0x49C];
  STACK[0x300] = STACK[0x8A8];
  LODWORD(STACK[0x260]) = v6 ^ 0x15BC;
  LODWORD(STACK[0x250]) = v6 ^ 0x4A5;
  LODWORD(STACK[0x270]) = v6 + 1758965744;
  LODWORD(STACK[0x240]) = v6 ^ 0x17A6;
  STACK[0x2E0] = v4;
  return sub_1001ACD78(3690921440, a2, a3, 4371, 2770712349);
}

uint64_t sub_1001ACDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (v6 == a5)
  {
    return (*(v8 + 8 * (LODWORD(STACK[0x32C]) + 3371)))();
  }

  if (v6 == v7)
  {
    return (*(v8 + 8 * (((8 * ((5 * LOBYTE(STACK[0x240]) - 1) & 1)) & 0xEF | (16 * ((5 * LODWORD(STACK[0x240]) - 1) & 1))) ^ (LODWORD(STACK[0x32C]) - 464))))();
  }

  if (v6 != 2021246416)
  {
    JUMPOUT(0x1001ACD98);
  }

  v10 = STACK[0x32C];
  LODWORD(STACK[0x35C]) = STACK[0x2F0];
  LOBYTE(STACK[0x79B]) = STACK[0x310];
  LODWORD(STACK[0x49C]) = STACK[0x2D0];
  STACK[0x8A8] = STACK[0x300];
  LODWORD(STACK[0x8B4]) = v5;
  return (*(v8 + 8 * ((29 * (v10 != -36401)) ^ (v10 - 4616))))();
}

uint64_t sub_1001AD05C(int *a1)
{
  v2 = a1[1] + 33731311 * (((a1 ^ 0xFE2044FE | 0xC923161C) - (a1 ^ 0xFE2044FE) + ((a1 ^ 0xFE2044FE) & 0x36DCE9E3)) ^ 0xEF598C1);
  result = (*(*(&off_100BFFA10 + (v2 ^ 0x7350D0D9)) + (v2 - 1934666789) - 1))(*(&off_100BFFA10 + (v2 ^ 0x7350D101)) - 12, sub_100042620);
  v4 = **(&off_100BFFA10 + (v2 - 1934676154));
  if (result)
  {
    v4 = 16215693;
  }

  *a1 = v4;
  return result;
}

void sub_1001AD164(uint64_t a1)
{
  v1 = 1358806181 * ((a1 & 0xE3B80B69 | ~(a1 | 0xE3B80B69)) ^ 0x23689815);
  v2 = *(*(a1 + 8) + 12) + 763869471;
  v3 = *(a1 + 20) - v1 + 160859340;
  v4 = v3 < 0x47B2E1F5;
  v5 = v4 ^ (v2 < 0x47B2E1F5);
  v6 = v2 < v3;
  if (!v5)
  {
    v4 = v6;
  }

  __asm { BRAA            X12, X17 }
}

uint64_t sub_1001AD280@<X0>(unint64_t a1@<X8>)
{
  STACK[0x408] = *(v5 + 8 * v1);
  STACK[0x5F8] = v2;
  LODWORD(STACK[0x6AC]) = v3;
  STACK[0x6E8] = a1;
  STACK[0x608] = 0;
  LODWORD(STACK[0x580]) = 197499219;
  STACK[0x7D0] = 0x431A33AA2E6D965FLL;
  STACK[0x568] = 0;
  v6 = (*(v5 + 8 * (v4 + 4376)))(16, 0x20040A4A59CD2);
  v7 = STACK[0x330];
  STACK[0x350] = v6;
  return (*(v7 + 8 * (((v6 != 0) * (((v4 - 1966978291) & 0x753DB1EF) - 4471)) ^ v4)))();
}

uint64_t sub_1001AD390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(STACK[0x630] + 24);
  STACK[0x588] = v5;
  return (*(STACK[0x400] + 8 * (((v5 == 0) * ((v3 ^ v4) + v3 - 190 - 17182)) ^ v3)))(a1, a2, a3, 16215976);
}

uint64_t sub_1001AD3DC()
{
  STACK[0xA88] = v1;
  v3 = STACK[0x478];
  STACK[0xA90] = STACK[0x478];
  return (*(v2 + 8 * ((2288 * (v1 - v3 > ((v0 + 2048285961) & 0x85E98F79) - 799)) ^ v0)))();
}

void sub_1001AD4B0()
{
  STACK[0x588] = 0;
  STACK[0x7D0] = 0;
  STACK[0x908] = *(v1 + 8 * v0);
  JUMPOUT(0x10002E3FCLL);
}

uint64_t sub_1001AD518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v6 + 127 - v4;
  v8 = *(v7 - 31);
  v9 = a1 + 127 - v4;
  *(v9 - 15) = *(v7 - 15);
  *(v9 - 31) = v8;
  return (*(a4 + 8 * ((13939 * (v4 + 32 == 23 * (v5 ^ 0x1689u) - 5093)) ^ v5)))();
}

uint64_t sub_1001AD594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char *a19, int a20, unsigned int a21)
{
  a19 = &a16;
  a21 = v23 + 1317436891 * (&a19 ^ 0xB0039876) + 2914;
  v24 = (*(v22 + 8 * (v23 + 4397)))(&a19);
  return (*(v22 + 8 * (((a20 == 16257999) * (((v23 + 1342169989) & 0xFB37892E ^ (v21 + 706)) + (v23 ^ 0x4FE))) ^ v23)))(v24);
}

uint64_t sub_1001AD694(unint64_t a1)
{
  v5 = *(v4 + 8 * (((*v1 == 0) * ((v3 + 2152) ^ v2)) ^ v3));
  STACK[0x370] = a1;
  return v5();
}

uint64_t sub_1001AD7C8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v64 = STACK[0x9C0];
  STACK[0x260] = ((v63 - 2024) | 0x242u) + ((STACK[0x9C0] + 4) ^ 0x7673CFF7F47FFDDELL) + ((2 * (STACK[0x9C0] + 4)) & 0xECE79FEFE8FFFBBCLL) - 0x10308D8644006412;
  v65 = STACK[0x9E0];
  STACK[0x250] = ((STACK[0x9E0] + 4) ^ 0xF6CFDF75F67FEDF6) + 0x6F7362FBB9FFB620 + ((2 * (STACK[0x9E0] + 4)) & 0xED9FBEEBECFFDBECLL);
  v66 = STACK[0xA00];
  STACK[0x240] = ((STACK[0xA00] + 4) ^ 0x7E57CAF7BCFFBD9FLL) - 0x181488860C801989 + ((2 * (STACK[0xA00] + 4)) & 0xFCAF95EF79FF7B3ELL);
  v67 = STACK[0xA20];
  STACK[0x230] = ((STACK[0xA20] + 4) ^ 0x76C376F7F5FFBCFELL) - 0x10803486458018E8 + ((2 * (STACK[0xA20] + 4)) & 0xED86EDEFEBFF79FCLL);
  v68 = STACK[0xA40];
  STACK[0x220] = ((STACK[0xA40] + 4) ^ 0x7E5FC6F9B77FA5BELL) - 0x181C8488070001A8 + ((2 * (STACK[0xA40] + 4)) & 0xFCBF8DF36EFF4B7CLL);
  v69 = STACK[0xA50];
  STACK[0x200] = ((STACK[0xA50] + 4) ^ 0xEF7BF277B3FFECD7) + 0x76C74FF9FC7FB73FLL + ((2 * (STACK[0xA50] + 4)) & 0xDEF7E4EF67FFD9AELL);
  v70 = STACK[0x990] + 10;
  v71 = STACK[0x980];
  v84 = ((STACK[0x960] + 4) ^ 0xF767C375BDFFA4B7) + 0x6EDB7EFBF27FFF5FLL + ((2 * (STACK[0x960] + 4)) & 0xEECF86EB7BFF496ELL);
  v83 = ((STACK[0x950] + 4) ^ 0xF6E7427DF17FEC3ELL) + 0x6F5BFFF3BEFFB7D8 + ((2 * (STACK[0x950] + 4)) & 0xEDCE84FBE2FFD87CLL);
  v72 = STACK[0xA70];
  v82 = ((STACK[0xA70] + 4) ^ 0x7EEB567BB87FAF9ELL) - 0x18A8140A08000B88 + ((2 * (STACK[0xA70] + 4)) & 0xFDD6ACF770FF5F3CLL);
  v81 = ((STACK[0x990] + 6) ^ 0x6B3EFFFFFCFFFF3FLL) - 0x930404604040E06 + ((2 * (STACK[0x990] + 6)) & 0xD67DFFFFF9FFFE7ELL);
  v80 = ((STACK[0x970] + 6) ^ 0xE31EBFFDF9FFFFBFLL) + 0x7EEFFFBBFEFBF17ALL + ((2 * (STACK[0x970] + 6)) & 0xC63D7FFBF3FFFF7ELL);
  v79 = ((STACK[0x960] + 6) ^ 0x7A6EBFF9FEFBF1F9) - 0x18600040060000C0 + ((2 * (STACK[0x960] + 6)) & 0xF4DD7FF3FDF7E3F2);
  v78 = ((STACK[0x950] + 6) ^ 0x7E9EBFBDFAFFF1FDLL) - 0x1C900004020400C4 + ((2 * (STACK[0x950] + 6)) & 0xFD3D7F7BF5FFE3FALL);
  STACK[0x210] = v68 + 10;
  STACK[0x270] = v70;
  STACK[0x2F0] = STACK[0x880];
  STACK[0x2E0] = STACK[0x860];
  STACK[0x2D0] = STACK[0x4F8];
  STACK[0x2C0] = STACK[0x690];
  STACK[0x370] = STACK[0x388];
  v77 = STACK[0xA38];
  STACK[0x360] = STACK[0x5E8];
  v75 = STACK[0x988];
  v76 = STACK[0xA48];
  STACK[0x350] = STACK[0x838];
  STACK[0x2B0] = STACK[0x490];
  STACK[0x2A0] = STACK[0x398];
  STACK[0x290] = STACK[0x780];
  STACK[0x280] = STACK[0x498];
  STACK[0x340] = STACK[0x850];
  v74 = STACK[0xA68];
  LODWORD(STACK[0x330]) = LOWORD(STACK[0x92E]);
  LODWORD(STACK[0x310]) = LOWORD(STACK[0x91E]);
  LODWORD(STACK[0x300]) = LOWORD(STACK[0x90A]);
  LODWORD(STACK[0x320]) = LOWORD(STACK[0x8C6]);
  return sub_10014DBAC(v71, a2, 0x3D956106EF62582ELL, 0x3D2CC4E5C304AE09, 0x695ADC2B381AFB93, 0xCC6D33EEA00FE42, 0xF99C96608AFF80DELL, 0xC3E67D93F2F32D7, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, ((v72 + 10) ^ 0xEE1EBFFDFBFBF7FBLL) + 0x73EFFFBBFCFFF93ELL + ((2 * (v72 + 10)) & 0xDC3D7FFBF7F7EFF6), (v70 ^ 0x66EFBFB9FAFFF37DLL) - 0x4E1000002040244 + ((2 * v70) & 0xCDDF7F73F5FFE6FALL), ((v69 + 10) ^ 0x633EBFBDF9FFF53FLL) - 0x130000401040406 + ((2 * (v69 + 10)) & 0xC67D7F7BF3FFEA7ELL), ((v68 + 10) ^ 0x6ADEFFFFFCFBFF3BLL) - 0x8D0404604000E02 + ((2 * (v68 + 10)) & 0xD5BDFFFFF9F7FE76), v74, v75, v76, v77, v72 + 10, a30, ((v72 + 6) ^ 0x671FFFFDFEFBFF79) - 0x511404406000E40 + ((2 * (v72 + 6)) & 0xCE3FFFFBFDF7FEF2), a32, v78, a34, v79, a36, v80, a38, ((v71 + 6) ^ 0x66DEBFF9FCFFFF3FLL) - 0x4D0004004040E06 + ((2 * (v71 + 6)) & 0xCDBD7FF3F9FFFE7ELL), a40, v81, a42, ((v69 + 6) ^ 0xE21EBFBBFAFBFB7BLL) + 0x7FEFFFFDFDFFF5BELL + ((2 * (v69 + 6)) & 0xC43D7F77F5F7F6F6), a44, ((v68 + 6) ^ 0xE6BFFFBBFCFBFD79) + 0x7B4EBFFDFBFFF3C0 + ((2 * (v68 + 6)) & 0xCD7FFF77F9F7FAF2), a46, ((v67 + 6) ^ 0xF24FFFBDF9FFFFBFLL) + 0x6FBEBFFBFEFBF17ALL + ((2 * (v67 + 6)) & 0xE49FFF7BF3FFFF7ELL), a48, a49, a50, ((v66 + 6) ^ 0x777FFFB9FBFFFBFFLL) - 0x1571400003040AC6 + ((2 * (v66 + 6)) & 0xEEFFFF73F7FFF7FELL), a52, ((v65 + 6) ^ 0xFFEEFFBDFDFBF73FLL) + 0x621FBFFBFAFFF9FALL + ((2 * (v65 + 6)) & 0xFFDDFF7BFBF7EE7ELL), a54, ((v64 + 6) ^ 0x7A8EBFB9F8FBF5BBLL) - 0x1880000000000482 + ((2 * (v64 + 6)) & 0xF51D7F73F1F7EB76), a56, v82, a58, v83, a60, v84, a62, a63);
}

void sub_1001AE134(int a1@<W8>, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7)
{
  v9 = ((&a3 - 2079601309 - 2 * (&a3 & 0x840BCD63)) ^ 0xA8F77C18) * a1;
  a6 = v9 ^ 0x19EC40F9;
  a7 = -1683109072 - v9;
  a4 = (v7 - 2769) ^ v9;
  a3 = 0;
  (*(v8 + 8 * (v7 ^ 0x2B6Du)))(&a3);
  JUMPOUT(0x1001AA204);
}

uint64_t sub_1001AE264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v22 = v8 + (v16 ^ 0x1D1Bu) - 2635;
  v23 = __ROR8__((v7 + v22) & 0xFFFFFFFFFFFFFFF8, 8);
  v24 = ((v23 - 0x2607A7720729A79) | 0x7F50B0EAB20D7126) - ((v23 - 0x2607A7720729A79) | v9) + v9;
  v25 = __ROR8__(v24 ^ 0xA166AAF4BCB468F5, 8);
  v26 = (((2 * (v25 + (v24 ^ 0x4D9A86B240DF44CALL))) | 0x8E237DE192A9CA6ALL) - (v25 + (v24 ^ 0x4D9A86B240DF44CALL)) + 0x38EE410F36AB1ACBLL) ^ 0xF9D62AAA5A604418;
  v27 = v26 ^ __ROR8__(v24 ^ 0x4D9A86B240DF44CALL, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (((2 * (v28 + v27)) & 0x7381049A069EAA6) - (v28 + v27) - 0x39C0824D034F554) ^ 0xF8C85E9088759E58;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0x87C30A0A7B081733;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (((2 * (v33 + v32)) & 0x295CF5CC1B28F7C6) - (v33 + v32) - 0x14AE7AE60D947BE4) ^ 0xCE2C7D00F8642E60 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__((((2 * (v33 + v32)) & 0x295CF5CC1B28F7C6) - (v33 + v32) - 0x14AE7AE60D947BE4) ^ 0xCE2C7D00F8642E60, 8) + v34) ^ 0x2E769D09049CAA6ALL;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (((2 * ((v37 + v36) ^ 0xB26D991E94D41A74)) | 0x113E4DE7F9261D5ELL) - ((v37 + v36) ^ 0xB26D991E94D41A74) - 0x89F26F3FC930EAFLL) ^ 0x703A61C38953CBECLL;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = __ROR8__((a7 + v22) & 0xFFFFFFFFFFFFFFF8, 8);
  v41 = __ROR8__(v38, 8);
  v42 = ((v40 - 0x6AF7234D0CC131D5) & a2 ^ a3) + ((v40 - 0x6AF7234D0CC131D5) & v14 ^ a1) - 1;
  v43 = v42 ^ a4;
  v44 = v42 ^ a5;
  v45 = v41 + v39 - ((2 * (v41 + v39)) & 0x1B79F8777AE58672);
  v46 = (__ROR8__(v43, 8) + v44) ^ v18;
  v47 = v46 ^ __ROR8__(v44, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ v20;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ v10;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ v19;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = (__ROR8__(v52, 8) + v53) ^ 0x64C31C027084DE6CLL;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ v11;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = __ROR8__(v56, 8);
  *(a7 + v22) = (((v45 + v12) ^ v13) >> (8 * ((v7 + v22) & 7))) ^ (((v17 - ((v58 + v57) | v17) + ((v58 + v57) | a6)) ^ v15) >> (8 * ((a7 + v22) & 7))) ^ *(v7 + v22);
  return (*(v21 + 8 * ((2 * (v22 != 0)) | (4 * (v22 != 0)) | v16)))();
}

uint64_t sub_1001AE590@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v2 = *(STACK[0x640] + 24);
  STACK[0x668] = v2;
  return (*(a1 + 8 * (((v2 == 0) * ((227 * (a2 ^ 0x1EA6)) ^ 0x1468)) ^ a2)))();
}

uint64_t sub_1001AE5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LOWORD(STACK[0x8C6]) = v63;
  LODWORD(STACK[0x320]) = v63;
  return sub_10014DBAC(a1, a63 - 2293, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_1001AF090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>)
{
  v17 = v9 + a2;
  v18 = v9 - 1;
  v19 = __ROR8__((a1 + v18) & 0xFFFFFFFFFFFFFFF8, 8);
  v20 = v19 + (((a9 - 5588) | 0x90u) ^ 0x23E8DF0DACD2C30FLL) - ((v12 + 2 * v19) & 0x9AB21C279A9FA3B4);
  v21 = v20 ^ 0xFC06D5ED7418C184;
  v20 ^= 0x48785223880F4E9EuLL;
  v22 = (__ROR8__(v21, 8) + v20) ^ 0x8174304F61371433;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (((2 * (v24 + v23)) | 0x18EB48C98BD8DF8CLL) - (v24 + v23) + 0x738A5B9B3A13903ALL) ^ 0xC4AB9D20D7B66D92;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ 0x57D072DFC3A5F657;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = __ROR8__((v17 + 9) & 0xFFFFFFFFFFFFFFF8, 8);
  v31 = (v29 + v28 - ((2 * (v29 + v28)) & 0x2C52FD9897BC5F5CLL) + 0x16297ECC4BDE2FAELL) ^ 0xE44B7CAA9406F12CLL;
  v32 = v31 ^ __ROR8__(v28, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ v15;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0x6E1E19DDB33CB23ALL;
  v36 = (0x6AF7234D0CC131D4 - v30) & 0xA03A397A7DAB0203 | (v30 + 0x1508DCB2F33ECE2BLL) & 0x5FC5C6858254FDFCLL;
  v37 = v36 ^ 0xE9D37B4112BDE5D1;
  v36 ^= 0x41959ED68B4B948DuLL;
  v38 = (__ROR8__(v37, 8) + v36) ^ 0xE49D77DF873DBF7ELL;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = __ROR8__(v35, 8) + (v35 ^ __ROR8__(v34, 61));
  v41 = (__ROR8__(v38, 8) + v39) ^ 0xF5A2F1B9B5D0B209;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = __ROR8__(v41, 8);
  v44 = __ROR8__((v10 - ((v43 + v42) | v10) + ((v43 + v42) | 0x14FFD55FD52326CCLL)) ^ 0x4D9C639A80FA59D3, 8);
  v45 = (v10 - ((v43 + v42) | v10) + ((v43 + v42) | 0x14FFD55FD52326CCLL)) ^ 0x4D9C639A80FA59D3 ^ __ROR8__(v42, 61);
  v46 = ((a3 | (2 * (v44 + v45))) - (v44 + v45) + a4) ^ a5;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = __ROR8__(v46, 8);
  v49 = (v48 + v47 - (a6 & (2 * (v48 + v47))) + a7) ^ a8;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = __ROR8__(v49, 8);
  v52 = (v11 - ((v51 + v50) | v11) + ((v51 + v50) | v13)) ^ v14;
  *(v17 + 9) = (((__ROR8__(v52, 8) + (v52 ^ __ROR8__(v50, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v17 + 9) & 7))) ^ (((((2 * v40) & 0x5202C593F84559D0) - v40 - 0x290162C9FC22ACE9) ^ 0xE3CC50A6FE864535) >> (8 * ((a1 + v18) & 7))) ^ *(a1 + v18);
  return (*(v16 + 8 * ((47 * (v18 != 0)) ^ (a9 + 2067))))();
}

void sub_1001AF460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _DWORD *a6)
{
  v6 = *(&off_100BFFA10 + ((-85 * ((dword_100CBC1F0 + dword_100CBC248) ^ 0xDF)) ^ byte_1009D3FD0[byte_1009C9A60[(-85 * ((dword_100CBC1F0 + dword_100CBC248) ^ 0xDF))] ^ 0xEE]) + 143);
  v7 = -85 * ((dword_100CBC1F0 + *v6) ^ 0xDF);
  v8 = *(&off_100BFFA10 + (byte_1009DAFB8[(byte_1009D40D8[v7 - 8] ^ 0x67) - 8] ^ v7) + 143);
  v9 = *v8 - *v6 - &v11;
  *v6 = 2054362027 * (v9 - 0xB4207763EF64BDFLL);
  *v8 = 2054362027 * (v9 ^ 0xB4207763EF64BDFLL);
  *a5 = 0;
  *a6 = 0;
  v12[0] = 476323082 - 1710126949 * ((((2 * v12) | 0x88903A6A) - v12 + 1001906891) ^ 0xF65346A5);
  LOBYTE(v8) = -85 * (*v6 ^ 0xDF ^ *v8);
  v10 = *(&off_100BFFA10 + ((-85 * (dword_100CBC248 ^ 0xDF ^ dword_100CBC1F0)) ^ byte_1009C9D60[byte_1009E3310[(-85 * (dword_100CBC248 ^ 0xDF ^ dword_100CBC1F0))] ^ 0xB1]) + 234) - 8;
  (*&v10[8 * (byte_1009C9D6C[(byte_1009E331C[v8 - 12] ^ 0xE9) - 12] ^ v8) + 75936])(v12);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1001AF69C()
{
  v3 = *v1;
  STACK[0x7D8] = 0;
  STACK[0x3A0] = 0;
  return (*(v2 + 8 * ((((v0 + 878532775) & 0xCBA29ADE ^ 0xA5C) * (v3 != 0)) ^ v0)))();
}

uint64_t sub_1001AF6EC()
{
  v3 = *v1;
  STACK[0x568] = 0;
  STACK[0x730] = 0;
  return (*(v2 + 8 * ((49 * (((v3 == 0) ^ (((v0 + 82) & 0xF7) + 37)) & 1)) ^ v0)))();
}

uint64_t sub_1001AF748()
{
  (*(v2 + 8 * (v0 ^ 0x3C42)))();
  *(v1 + 24) = 0;
  return sub_1001808D0();
}

uint64_t sub_1001AF770()
{
  v2 = LODWORD(STACK[0x2D0]);
  if (v2 == 17168)
  {
    return (*(STACK[0x330] + 8 * ((LODWORD(STACK[0x32C]) - 4225) ^ (2742 * (v1 == 197499223)))))();
  }

  v4 = STACK[0x32C];
  if (v2 == 20706 || (v5 = STACK[0x32C], v2 == 33980))
  {
    STACK[0x6C8] = v0;
    v5 = v4;
  }

  v6 = *STACK[0x3A0];
  STACK[0x668] = 0;
  STACK[0x698] = 0;
  return (*(STACK[0x330] + 8 * (((v6 != 0) * (((v5 - 5458) | 9) ^ 0xAA)) ^ (v5 + 1445))))();
}

uint64_t sub_1001AF89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v17 = STACK[0x32C];
  v18 = (LODWORD(STACK[0x778]) ^ 0x7E373BFEF9EBFD77) - 0x50000842E1204805 + ((LODWORD(STACK[0x778]) << ((92 * (v17 ^ 0xF4) + 124) ^ (v17 + 63))) & 0x1F3D7FAEELL);
  v19 = ((LODWORD(STACK[0x778]) ^ 0xF9EBFD77) + 517978107 + ((LODWORD(STACK[0x778]) << ((92 * (v17 ^ 0xF4) + 124) ^ (v17 + 63))) & 0xF3D7FAEE)) & 0xE7344A8E;
  v20 = (((LODWORD(STACK[0x778]) ^ 0xF9EBFD77) + 517978107 + ((LODWORD(STACK[0x778]) << ((92 * (v17 ^ 0xF4) + 124) ^ (v17 + 63))) & 0xF3D7FAEE)) ^ 0xD632202C) & (2 * v19) ^ v19;
  v21 = ((2 * (v18 ^ 0x127A2130)) ^ 0xEA9CD77C) & (v18 ^ 0x127A2130) ^ (2 * (v18 ^ 0x127A2130)) & 0xF54E6BBE;
  v22 = v21 ^ 0x15422882;
  v23 = (v21 ^ 0xA0004238) & (4 * v20) ^ v20;
  v24 = ((4 * v22) ^ 0xD539AEF8) & v22 ^ (4 * v22) & 0xF54E6BBC;
  v25 = (v24 ^ 0xD5082AA0) & (16 * v23) ^ v23;
  v26 = ((16 * (v24 ^ 0x20464106)) ^ 0x54E6BBE0) & (v24 ^ 0x20464106) ^ (16 * (v24 ^ 0x20464106)) & 0xF54E6BB0;
  return (*(STACK[0x330] + 8 * ((23 * ((((LODWORD(STACK[0x778]) ^ 0xF9EBFD77) + 517978107 + ((LODWORD(STACK[0x778]) << ((92 * (v17 ^ 0xF4) + 124) ^ (v17 + 63))) & 0xF3D7FAEE)) ^ (2 * ((((v26 ^ 0xA108401E) << 8) & 0x754E0000 ^ 0x444A0000 ^ (((v26 ^ 0xA108401E) << 8) ^ 0x4E6B0000) & (v26 ^ 0xA108401E)) & (((v26 ^ 0x54462B00) & (v25 << 8) ^ v25) << 16) ^ (v26 ^ 0x54462B00) & (v25 << 8) ^ v25))) != -416003442)) ^ (v17 - 4400))))(a17);
}

uint64_t sub_1001AFA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  LODWORD(a61) = 0;
  LODWORD(STACK[0x220]) = -1706067298;
  return sub_1001C68E8(a1, a2, a3, (v62 - 6270) | 0x45u, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_1001AFB28@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  *(a2 + 104) = veorq_s8(*(v2 + 88), xmmword_1009E3430);
  v4 = *(v2 + 4);
  *(a2 + 20) = v4;
  return (*(v3 + 8 * ((52 * (v4 == ((((a1 - 1924012393) & 0x72AE0F13) - 3727) | 0x1400) - 5250)) ^ (a1 - 1924012393) & 0x72AE0F13)))();
}

uint64_t sub_1001AFBE4()
{
  LODWORD(STACK[0xB14]) = v1;
  STACK[0x740] -= 32;
  return (*(v2 + 8 * ((((((22 * (v0 ^ 0x2116) - 1102) | 0x81) + 33) ^ 0x1E72) * (v1 == 16257999)) ^ (22 * (v0 ^ 0x2116)))))();
}

uint64_t sub_1001AFC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, unsigned int a11)
{
  a11 = (v12 - 1451034854) ^ (956911519 * ((&a10 - 1542318116 - 2 * (&a10 & 0xA41217DC)) ^ 0x4E8367D9));
  v13 = (*(v11 + 8 * (v12 + 6890)))(&a10);
  return (*(v11 + 8 * (((a10 == ((v12 + 791728398) & 0xD0CF3D74) + 538285483) * ((v12 + 3715) ^ 0x3239)) ^ v12)))(v13);
}

uint64_t sub_1001AFD18@<X0>(uint64_t a1@<X8>)
{
  STACK[0x6F0] = v1;
  STACK[0x5B0] = 0;
  STACK[0x7C0] = 0;
  if (a1)
  {
    v4 = v1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  return (*(v3 + 8 * ((v5 * ((v2 ^ 0x2E69) + ((v2 + 1339510458) & 0xB0288DE7) - 2813)) ^ v2)))();
}

void sub_1001AFE64(uint64_t a1)
{
  v1 = *(a1 + 24) ^ (33731311 * (((a1 | 0x9DC1A4FD) - (a1 & 0x9DC1A4FD)) ^ 0xA4376EDE));
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1001AFF14@<X0>(int a1@<W8>)
{
  (*(v2 + 8 * (a1 + 6414)))(v1);
  STACK[0x760] = 0;
  return sub_1000FE7F8();
}

uint64_t sub_1001AFF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = v9 + v8;
  v21 = v9 + v8 + 9;
  v22 = __ROR8__(v21 & 0xFFFFFFFFFFFFFFF8, 8);
  v23 = (v22 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v24 = (__ROR8__((v22 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2, 8) + v23) ^ v17;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = __ROR8__(((((v26 + v25) << ((v10 - 89) ^ 0xCAu)) & v16) - (v26 + v25) + v15) ^ a5, 8);
  v28 = ((((v26 + v25) << ((v10 - 89) ^ 0xCAu)) & v16) - (v26 + v25) + v15) ^ a5 ^ __ROR8__(v25, 61);
  v29 = (v27 + v28 - (a6 & (2 * (v27 + v28))) + a7) ^ a8;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0x61459D2AF01F24F7;
  v32 = v9 - 1;
  v33 = v31 ^ __ROR8__(v30, 61);
  v34 = __ROR8__(v31, 8);
  v35 = (((v34 + v33) | a2) - ((v34 + v33) | a3) + a3) ^ a4;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ v19;
  v38 = (__ROR8__(v37, 8) + (v37 ^ __ROR8__(v36, 61))) ^ v12;
  *(v20 + 9) = *(v11 + v32) ^ ((((v38 | v14) - (v38 | a1) + a1) ^ v13) >> (8 * (v21 & 7u))) ^ 0x3C;
  return (*(v18 + 8 * (v10 | (16 * (v32 != 0)))))();
}

uint64_t sub_1001B00D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = STACK[0x7D0];
  STACK[0x420] = STACK[0x7D0];
  v69 = STACK[0x3F8];
  v70 = STACK[0x6A0];
  v71 = 2048652491 * ((((v66 - 232) | 0xB767C13D) - ((v66 - 232) & 0xB767C13D)) ^ 0x6D65638);
  v72 = (((LODWORD(STACK[0x45C]) ^ 0x416EB1F9) - 1097773561) ^ ((LODWORD(STACK[0x45C]) ^ 0x6003C45F) - 1610859615) ^ ((LODWORD(STACK[0x45C]) ^ ((((v65 ^ 0x251) - 1102241348) & 0x41B2D73C) + (((v65 ^ 0x251) + 559) ^ 0x2AA8E1AB))) - 715713781)) - v71 + 340520430;
  *(v66 - 208) = v71 + (v65 ^ 0x251) + 3457;
  *(v66 - 204) = v72;
  *(v66 - 200) = v71 ^ 0x6600C1C6;
  *(v66 - 224) = v69;
  *(v66 - 216) = v70;
  *(v66 - 192) = v68;
  *(v66 - 184) = v68;
  v73 = (*(v67 + 8 * (v65 ^ 0x2FF9)))(v66 - 232);
  return (*(a64 + 8 * ((1364 * (*(v66 - 232) == v64)) ^ v65 ^ 0x251)))(v73, 16215976);
}

uint64_t sub_1001B021C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  (*(v34 + 8 * (v33 + 148)))(a16 + a17, 0x100004077774924);
  v35 = (*(v34 + 8 * SHIDWORD(a15)))();
  *v31 = v35;
  return sub_1001B028C(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v32, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31);
}

uint64_t sub_1001B02D0@<X0>(int a1@<W8>)
{
  v5 = LOWORD(STACK[0x946]);
  switch(v5)
  {
    case 17168:
      goto LABEL_4;
    case 33980:
      v6 = STACK[0x880];
      STACK[0x428] = v1;
      LODWORD(STACK[0x80C]) = a1;
      return (*(v4 + 8 * (((v6 + v2 != 0) * (((v3 - 2504) | 0x524) - 1198)) ^ (v3 + 6181))))();
    case 20706:
LABEL_4:
      STACK[0x428] = v1;
      break;
  }

  STACK[0x6C0] = 0;
  LODWORD(STACK[0x80C]) = 197499219;
  return sub_1001A4C04();
}

uint64_t sub_1001B03BC()
{
  v4 = STACK[0x7A8];
  v5 = STACK[0x900];
  STACK[0xB08] = &STACK[0xB60] + v0;
  STACK[0x740] = v1;
  STACK[0x7E0] = v4;
  STACK[0x858] = v5;
  v6 = (*(v3 + 8 * (v2 ^ 0x563)))();
  STACK[0x760] = 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  return (*(v3 + 8 * ((v8 * (2 * ((v2 + 1937985260) & 0x8C7C94BE ^ 0x805) - 6400)) ^ v2)))(v6);
}

uint64_t sub_1001B044C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, int a3@<W4>, uint64_t a4@<X8>)
{
  v18 = a2 - 1;
  v19 = __ROR8__((v14 + v18) & ((a3 - 1801709186) & 0x6B63E69D ^ 0xFFFFFFFFFFFFF9E0), 8);
  v20 = (v19 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v21 = (__ROR8__((v19 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2, 8) + v20) ^ v12;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  v24 = ((a4 & (2 * (v23 + v22))) - (v23 + v22) + v15) ^ v13;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (((2 * (v26 + v25)) | 0x45B996DFB575EE6) - (v26 + v25) - 0x22DCCB6FDABAF73) ^ 0x5B4E7A73A872D06CLL;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = __ROR8__(v27, 8);
  v30 = __ROR8__((a1 + v18) & 0xFFFFFFFFFFFFFFF8, 8);
  v31 = -2 - (((v16 - v30) | 0x2AB11F016CBDAD66) + ((v30 + v17) | 0xD54EE0FE93425299));
  v32 = __ROR8__(v31 ^ 0x63585D3A03AB4AB4, 8);
  v31 ^= 0xCB1EB8AD9A5D3BE8;
  v33 = (((2 * (v29 + v28)) & 0xE50EF93BD6C6A2AALL) - (v29 + v28) - 0x72877C9DEB635156) ^ 0xEC3D1E48E4838A5DLL;
  v34 = v33 ^ __ROR8__(v28, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0x64C31C027084DE6CLL;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (((2 * (v32 + v31)) | 0xF382F877F675E8D6) - (v32 + v31) - 0x79C17C3BFB3AF46BLL) ^ 0x9D5C0BE47C074B15;
  v38 = (__ROR8__(v35, 8) + v36) ^ 0x1A2AEBE44253AF03;
  v39 = v37 ^ __ROR8__(v31, 61);
  v40 = (__ROR8__(v37, 8) + v39) ^ 0xF5A2F1B9B5D0B209;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ 0x5963B6C555D97F1FLL;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = __ROR8__(v38, 8) + (v38 ^ __ROR8__(v36, 61));
  v45 = (__ROR8__(v42, 8) + v43) ^ 0x61459D2AF01F24F7;
  v46 = v45 ^ __ROR8__(v43, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ 0x64C31C027084DE6CLL;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = __ROR8__(v47, 8);
  v50 = (v4 - ((v49 + v48) ^ v5 | v4) + ((v49 + v48) ^ v5 | v6)) ^ v7;
  v51 = v50 ^ __ROR8__(v48, 61);
  v52 = __ROR8__(v50, 8);
  *(a1 + v18) = ((((v8 & (2 * (v52 + v51))) - (v52 + v51) + v9) ^ v10) >> (8 * ((a1 + v18) & 7))) ^ *(v14 + v18) ^ (((((2 * v44) & 0x8D3B02A49A14CEA0) - v44 + 0x39627EADB2F598AFLL) ^ 0x92523C7F9A72C4EELL) >> (8 * ((v14 + v18) & 7)));
  return (*(v11 + 8 * ((975 * (v18 == 0)) ^ a3)))();
}

uint64_t sub_1001B07F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x330]) = 197499223;
  STACK[0x370] = STACK[0x778] + 24;
  LODWORD(STACK[0x2A0]) = LODWORD(STACK[0x9A4]) ^ 0xD6A561FA;
  v63 = LOWORD(STACK[0x99E]);
  LODWORD(STACK[0x320]) = v63;
  LODWORD(STACK[0x300]) = v63 ^ 0x4CF9;
  STACK[0x360] = STACK[0x440] + 24;
  v64 = LOWORD(STACK[0xA7E]);
  LODWORD(STACK[0x310]) = v64;
  LODWORD(STACK[0x2F0]) = v64 ^ 0xFFFFA60A;
  LODWORD(STACK[0x290]) = LODWORD(STACK[0xA84]) ^ 0xD6A561FA;
  STACK[0x350] = STACK[0x4C0] + 24;
  STACK[0x340] = STACK[0x7B8] + 24;
  v65 = STACK[0x9A0];
  LODWORD(STACK[0x2C0]) = STACK[0x9A0];
  LODWORD(STACK[0x2E0]) = v65 ^ 0xD6A561FA;
  v66 = STACK[0xA80];
  LODWORD(STACK[0x2B0]) = STACK[0xA80];
  LODWORD(STACK[0x2D0]) = v66 ^ 0xD6A561FA;
  return sub_10017EC50(0x126AA61F6F56C0D8, a2, 0x2A5638492DD55EAELL, 0x4C48AAE1C333D048, 0xEAD4E3DB691550A9, 169, 0x64C31C027084DE6CLL, 0x61459D2AF01F24F7, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_1001B0840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = v11 - 1;
  v15 = v9 + v14 + v8;
  v16 = __ROR8__(v15 & 0xFFFFFFFFFFFFFFF8, 8);
  v17 = (a2 | (2 * (v16 + 0x2D9C56C6ED9D3E2ELL))) - (v16 + 0x2D9C56C6ED9D3E2ELL) + a3;
  v18 = v17 ^ ((v7 - 847) + 0x572C57D23557E35);
  v19 = v17 ^ a4;
  v20 = __ROR8__(v18, 8);
  v21 = __ROR8__(((a5 & (2 * (v20 + v19))) - (v20 + v19) + a6) ^ v12, 8);
  v22 = ((a5 & (2 * (v20 + v19))) - (v20 + v19) + a6) ^ v12 ^ __ROR8__(v19, 61);
  v23 = ((a7 & (2 * (v21 + v22))) - (v21 + v22) + 0x365717C7E4CB1A76) ^ 0x8BD86B3AFACC8D6DLL;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (v10 - ((v25 + v24) | v10) + ((v25 + v24) | 0x1323CE1A44C5F46ELL)) ^ 0xEEA89D249DAFB75ALL;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0xAC7DA0564C1838BLL;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (((2 * (v30 + v29)) & 0x2A5861B0BA21BA34) - (v30 + v29) - 0x152C30D85D10DD1BLL) ^ 0x8B436845DC92299CLL;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0x8E4D6ECA343D275ELL;
  *v15 = ((__ROR8__(v33, 8) + (v33 ^ __ROR8__(v32, 61))) ^ 0x51BB4171AFEDC628) >> (8 * (v15 & 7u));
  return (*(v13 + 8 * ((11886 * (v14 == 0)) ^ (v7 + 1133))))();
}

uint64_t sub_1001B0A00()
{
  v2 = *(STACK[0x4D8] + 24);
  STACK[0x630] = v2;
  return (*(v1 + 8 * (((v2 == 0) * ((((v0 - 456) | 0x1126) - 3885) ^ 0x698)) ^ v0)))();
}

uint64_t sub_1001B0B84()
{
  v3 = STACK[0x614];
  STACK[0x640] = (v1 - 1740) + STACK[0x640] - 974;
  return (*(v2 + 8 * ((12675 * (v3 == v0)) ^ (v1 + 1805))))();
}

void sub_1001B0BC4(id a1)
{
  v1 = *(&off_100BFFA10 + ((-85 * (dword_100CBC258 ^ 0xDF ^ dword_100CBC1F0)) ^ byte_1009DAFB0[byte_1009D40D0[(-85 * (dword_100CBC258 ^ 0xDF ^ dword_100CBC1F0))] ^ 0x67]) + 268);
  v2 = *(&off_100BFFA10 + (byte_1009C9D60[byte_1009E3310[(-85 * ((dword_100CBC1F0 - *v1) ^ 0xDF))] ^ 0xE9] ^ (-85 * ((dword_100CBC1F0 - *v1) ^ 0xDF))) + 57);
  v3 = (*v2 + *v1) ^ &v4;
  *v1 = 2054362027 * v3 + 0xB4207763EF64BDFLL;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v7 = 2094 - 33731311 * ((1680157476 - (v5 | 0x64252B24) + (v5 | 0x9BDAD4DB)) ^ 0xA22C1EF8);
  v6 = *(&off_100BFFA10 + ((-85 * ((*v2 + *v1) ^ 0xDF)) ^ byte_1009C9D60[byte_1009E3310[(-85 * ((*v2 + *v1) ^ 0xDF))] ^ 0xD9]) - 121) - 4;
  LOBYTE(v1) = -85 * ((*v2 + *v1) ^ 0xDF);
  (*(*(&off_100BFFA10 + ((-85 * (dword_100CBC258 ^ 0xDF ^ dword_100CBC1F0)) ^ byte_1009C9D60[byte_1009E3310[(-85 * (dword_100CBC258 ^ 0xDF ^ dword_100CBC1F0))] ^ 0xB1]) + 234) + (byte_1009DAFB8[(byte_1009D40D8[v1 - 8] ^ 0x67) - 8] ^ v1) + 9685))(v5);
}

uint64_t sub_1001B0FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v65 - 232) = 0;
  *(v65 - 220) = v64 - 869295389 * ((2 * ((v65 - 232) & 0x76510168) - (v65 - 232) + 162463380) ^ 0xB8FAD2C7) - 656015794;
  v67 = (*(v66 + 8 * (v64 ^ 0x2910)))(v65 - 232);
  return (*(a64 + 8 * (((*(v65 - 224) == v64 + 16254701) * ((v64 - 2363) ^ 0x2D0B)) ^ v64)))(v67);
}

void sub_1001B125C(id a1, void *a2)
{
  v2 = *(&off_100BFFA10 + ((-85 * ((dword_100CBC1F0 + dword_100CBBE70) ^ 0xDF)) ^ byte_1009C9D60[byte_1009E3310[(-85 * ((dword_100CBC1F0 + dword_100CBBE70) ^ 0xDF))] ^ 0x71]) + 11);
  v3 = *(v2 - 4);
  v4 = *(&off_100BFFA10 + (byte_1009D42D0[byte_1009C9C60[(-85 * (v3 ^ dword_100CBC1F0 ^ 0xDF))] ^ 0x80] ^ (-85 * (v3 ^ dword_100CBC1F0 ^ 0xDF))) + 100);
  v5 = *v4 - v3 - &v11;
  v6 = 2054362027 * (v5 - 0xB4207763EF64BDFLL);
  v7 = 2054362027 * (v5 ^ 0xB4207763EF64BDFLL);
  *(v2 - 4) = v6;
  *v4 = v7;
  LOBYTE(v7) = -85 * ((v7 - *(v2 - 4)) ^ 0xDF);
  v8 = *(&off_100BFFA10 + ((-85 * ((dword_100CBC1F0 - dword_100CBBE70) ^ 0xDF)) ^ byte_1009D3FD0[byte_1009C9A60[(-85 * ((dword_100CBC1F0 - dword_100CBBE70) ^ 0xDF))] ^ 0x21]) + 150) - 8;
  v9 = (*&v8[8 * (byte_1009C9D6C[(byte_1009E331C[v7 - 12] ^ 0xB1) - 12] ^ v7) + 77112])(a2);
  v10 = *&v8[8 * ((-85 * ((*v4 + *(v2 - 4)) ^ 0xDF)) ^ byte_1009D42D0[byte_1009C9C60[(-85 * ((*v4 + *(v2 - 4)) ^ 0xDF))] ^ 0xAD]) + 76816];

  v10(v9);
}

void sub_1001B1454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = a4 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1001B14C4()
{
  v6 = (*(v2 + 8 * (3 * (v0 ^ 0x39F) + 749)))(*v3, *v1, *(v1 + 8) + ((3 * (v0 ^ 0x39F) - 7373) ^ 0xE5D4D2D8));
  *v1 = v5;
  *(v1 + 8) = v4;
  *(v1 + 12) = v4;
  return sub_1001B150C(v6);
}

void sub_1001B1570()
{
  STACK[0x560] = 0;
  STACK[0x590] = 0;
  STACK[0x518] = *(v1 + 8 * v0);
  JUMPOUT(0x1001B1594);
}

uint64_t sub_1001B1688@<X0>(uint64_t a1@<X8>)
{
  v7 = v2 - 1;
  *(a1 + v7) = *(v4 + v7);
  return (*(v6 + 8 * (((v7 != (v5 ^ 0x114E)) * v3) ^ v1)))();
}

uint64_t sub_1001B16FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, int a16, unsigned int a17, uint64_t a18, char *a19, unsigned int a20, unsigned int a21)
{
  if (a10 == 925652384)
  {
    v24 = -654855621;
  }

  else
  {
    v24 = 1032869496;
  }

  v25 = (((&a16 | 0x6FE79C14) - (&a16 & 0x6FE79C14)) ^ 0x378E4F76) * v21;
  a17 = v25 + 851381303;
  a18 = a14;
  a19 = &a13;
  a20 = v24 - v25;
  a21 = v25 + v23 + 1674575794;
  v26 = (*(v22 + 8 * (v23 + 6288)))(&a16);
  return (*(v22 + 8 * ((2 * (((v23 - 1) ^ (a16 == (v23 ^ 0xF81F37))) & 1)) & 0xFB | (4 * (((v23 - 1) ^ (a16 == (v23 ^ 0xF81F37))) & 1)) | v23)))(v26);
}

uint64_t sub_1001B1904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, __int16 a15, char a16, int a17, unsigned int a18, uint64_t a19, char *a20, unsigned int a21, char *a22)
{
  a21 = (v22 - 502) ^ (1710126949 * ((&a17 - 2063676954 - 2 * (&a17 & 0x84FEC9E6)) ^ 0xB6E59276));
  a22 = &a12;
  a19 = a13;
  a20 = &a14;
  (*(v23 + 8 * (v22 + 5747)))(&a17);
  a18 = (v22 - 608) ^ (33731311 * ((2 * ((&a17 ^ 0xB3ADA4AA) & 0x672826FA) - (&a17 ^ 0xB3ADA4AA) + 416798976) ^ 0x928CB789));
  a19 = a13;
  a20 = &a16;
  (*(v23 + 8 * (v22 ^ 0x2B95)))(&a17);
  LODWORD(a20) = v22 - 2008441969 * (&a17 ^ 0x4899540E) + 1825;
  a19 = a13;
  v24 = (*(v23 + 8 * (v22 ^ 0x2B67)))(&a17);
  return (*(v23 + 8 * (((a17 == 16257999) * ((v22 + 1236114077) & 0x1F77 ^ 0x2482)) ^ v22)))(v24);
}

uint64_t sub_1001B1A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v10 = 1525 * ((v6 + 362417901) & 0xEA65EFE6 ^ 0x625);
  *v7 = a1;
  *a6 = v14;
  v17 = (v10 + 3771) ^ ((((&v15 | 0x447DB515) + (~&v15 | 0xBB824AEA)) ^ 0x1C146676) * v8);
  v16 = v13;
  (*(v9 + 8 * (v10 ^ 0x3453)))(&v15);
  v16 = v12;
  v17 = ((v10 ^ 0x1930) + 6059) ^ (((&v15 - 1031723266 - 2 * (&v15 & 0xC28126FE)) ^ 0x9AE8F59C) * v8);
  (*(v9 + 8 * ((v10 ^ 0x1930) + 7325)))(&v15);
  return 0;
}

uint64_t sub_1001B1BB0@<X0>(int a1@<W8>, uint64_t a2, uint64_t *a3, int a4, uint64_t a5, unsigned int a6, int a7)
{
  v12 = v9 & 0x4A4E6E71;
  v13 = (((v9 & 0x4A4E6E71 ^ 0x285E) + 2845) ^ 0x134D) + (v8 ^ 0xBCD0635C);
  v14 = (&a3 ^ 0x2CFCB17B) * a1;
  a4 = ((v9 & 0x4A4E6E71) - 7317) ^ v14;
  a3 = &a2;
  a5 = v10;
  a6 = ((v13 ^ 0xBFFF56FB) + 1508698622 + ((2 * v13) & 0x7FFEADF6)) ^ v14;
  a7 = v7 - v14;
  v15 = (*(v11 + 8 * (v9 & 0x4A4E6E71 ^ 0x5B1u)))(&a3);
  if (v13)
  {
    v16 = *(v10 + 24) == 16257999;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  return (*(v11 + 8 * ((245 * v17) ^ v12)))(v15);
}

uint64_t sub_1001B1D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, int a15)
{
  a14 = 476323082 - 1710126949 * ((((&a14 | 0x19FB468E) ^ 0xFFFFFFFE) - (~&a14 | 0xE604B971)) ^ 0xD41FE2E1);
  v16 = (*(v15 + 77088))(&a14);
  return (*(v15 + 8 * ((4609 * (a15 == 16257999)) ^ 0x5D4u)))(v16);
}

void sub_1001B1E00(uint64_t a1@<X3>, int a2@<W8>)
{
  (*(a1 + 8 * (a2 + 1013)))();
  *(v2 + 24) = 0;
  JUMPOUT(0x100179970);
}

uint64_t sub_1001B2010()
{
  v5 = v2 == v0;
  v6 = (*(v1 + 8 * (v3 + 4259)))();
  *(v4 + 128) = 0;
  return (*(v1 + 8 * ((((v3 + 1119) ^ 0x17C5) * v5) ^ v3)))(v6);
}

uint64_t sub_1001B2050@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5) - ((*(v1 + v5) << ((v3 + 74) & 0x8F ^ 0x82)) & 0x78) + 60;
  return (*(v4 + 8 * ((42 * (v5 != 0)) ^ (v3 + 1385758794) & 0xAD66FF8F)))();
}

uint64_t sub_1001B20A8()
{
  (*(v3 + 8 * (v2 ^ 0x2883)))(v1);
  *v0 = 0;
  return (STACK[0x7D8])(LODWORD(STACK[0x300]), 5076, 1048, LODWORD(STACK[0x2F0]), LODWORD(STACK[0x2E0]), LODWORD(STACK[0x2D0]));
}

uint64_t sub_1001B20FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LOWORD(STACK[0x9B6]) = a7;
  LODWORD(STACK[0x370]) = a7;
  return sub_100111688(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_1001B211C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, uint64_t a14, int a15, char a16, __int16 a17, char a18, __int16 a19, char a20, __int16 a21, char a22, __int16 a23, char a24, __int16 a25, char a26, __int16 a27, char a28, __int16 a29, char a30, __int16 a31, char a32, __int16 a33, char a34, uint64_t a35, uint64_t a36, int a37, char a38, _BYTE *a39)
{
  a39[15] = *(v39 - 153);
  a39[14] = *(v39 - 154);
  a39[13] = *(v39 - 155);
  a39[12] = *(v39 - 156);
  a39[11] = a38;
  a39[10] = a13;
  a39[9] = a34;
  a39[8] = a32;
  a39[7] = a30;
  a39[6] = a28;
  a39[5] = a26;
  a39[4] = a24;
  a39[3] = a22;
  a39[2] = a20;
  a39[1] = a18;
  *a39 = a16;
  return sub_1001B2194();
}

uint64_t sub_1001B2194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20)
{
  v24 = *a13;
  v25 = 956911519 * ((v23 - 152 - 2 * ((v23 - 152) & 0x41237F8D5E275CC5) + 0x41237F8D5E275CC5) ^ 0x4150A51B4B62CC0);
  *(v23 - 152) = (v22 - 8355) ^ v25;
  *(v23 - 144) = v25 + a11 - ((2 * a11) & 0x39AD4E2AD03EC198) + 9 * (v22 ^ 0x27B4u) - 0x632958EA97E0BAF1;
  *(v23 - 136) = v24;
  (*(v21 + 8 * (v22 + 222)))(v23 - 152);
  v26 = *a13;
  v27 = 956911519 * ((2 * (((v23 - 152) ^ 0xD226AB63756EA798) & 0x1FED0509F227CB60) - ((v23 - 152) ^ 0xD226AB63756EA798) + 0x6012FAF60DD8349CLL) ^ 0xF70224499227E301);
  *(v23 - 152) = (v22 - 8355) ^ v27;
  *(v23 - 144) = v27 + v20 - ((((v22 - 8288) | 0x806u) + 0x39AD4E2AD03EB551) & (2 * v20)) - 0x632958EA97E09F34;
  *(v23 - 136) = v26;
  (*(v21 + 8 * (v22 ^ 0x1DE)))(v23 - 152);
  v28 = 1875091903 * (((v23 - 152) & 0x29517A57 | ~((v23 - 152) | 0x29517A57)) ^ 0xE0DB062B);
  *(v23 - 136) = *a13;
  *(v23 - 148) = a20 + v28 - 966322250;
  *(v23 - 144) = v28 + v22 - 1653;
  v29 = (*(v21 + 8 * (v22 + 268)))(v23 - 152);
  return (*(v21 + 8 * ((42 * (*(v23 - 152) == 16257999)) ^ (v22 - 6234))))(v29);
}

void sub_1001B23F0(uint64_t a1)
{
  v1 = 956911519 * ((1672410106 - (a1 | 0x63AEF3FA) + (a1 | 0x9C510C05)) ^ 0x76C07C00);
  v2 = *(a1 + 8) + v1;
  if (*(a1 + 24))
  {
    v3 = *(a1 + 4) + v1 == 439036118;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1001B252C()
{
  v4 = (*(v3 + 8 * (v0 + 3907)))();
  *v1 = 0;
  return v2(v4);
}

void sub_1001B25A0(uint64_t a1)
{
  v1 = 1710126949 * (((a1 | 0x4FBA5857) - (a1 & 0x4FBA5857)) ^ 0x7DA103C7);
  if (*(a1 + 8))
  {
    v2 = *(a1 + 24) - v1 == 439036118;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1001B2670()
{
  STACK[0xA48] = v1;
  v3 = STACK[0x410];
  STACK[0xA50] = STACK[0x410];
  return (*(v2 + 8 * (((v1 - v3 > 9) * (((v0 + 508) ^ 0xBD0) + 5954)) ^ v0)))();
}

void sub_1001B26BC(uint64_t a1)
{
  v1 = *(a1 + 4) + 914963389 * ((a1 - 1512095091 - 2 * (a1 & 0xA5DF428D)) ^ 0x8923F3F6);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1001B2848(_DWORD *a1)
{
  v2 = *a1 + 1710126949 * ((a1 - 941948727 - 2 * (a1 & 0xC7DB00C9)) ^ 0xF5C05B59);
  result = (*(*(&off_100BFFA10 + (v2 ^ 0x1C641C1D)) + (v2 - 476313441) - 1))(*(&off_100BFFA10 + (v2 ^ 0x1C641D0B)) - 12, sub_1000E1E80);
  v4 = **(&off_100BFFA10 + (v2 - 476322962));
  if (result)
  {
    v4 = 16215693;
  }

  a1[1] = v4;
  return result;
}

void sub_1001B2924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v6 = a3 == 0;
  }

  else
  {
    v6 = 1;
  }

  v9 = v6 || a4 == 0 || a6 == 0;
  __asm { BRAA            X10, X17 }
}

void sub_1001B2984(uint64_t a1)
{
  v1 = 2048652491 * (a1 ^ 0xB1B19705);
  v2 = *(a1 + 8) ^ v1;
  v3 = *a1;
  v19 = 0;
  v4 = (v3 ^ v1) - 197562552;
  v17 = v4;
  v13[1] = 0;
  v8 = 0;
  v22 = 0;
  v12 = 0;
  v11 = 0;
  v16 = 0;
  v9 = 197499219;
  v13[0] = 0;
  v26 = v2 + 869295389 * ((825306066 - (&v26 | 0x31312BD2) + (&v26 | 0xCECED42D)) ^ 0x7F9AF87E) + 1903870429;
  v27 = v13;
  v5 = *(&off_100BFFA10 + (v2 ^ 0x14E1)) - 8;
  v6 = *(a1 + 24);
  (*&v5[8 * v2 + 32080])(&v26);
  v10 = 0;
  v25 = 197499219;
  v23 = 0;
  v15 = 197499219;
  v20 = 0;
  v14 = 197499219;
  v24 = 197499219;
  v18 = 0;
  v21 = 0;
  v7 = 2008441969 * ((((&v26 | 0xD189ABDE) ^ 0xFFFFFFFE) - (~&v26 | 0x2E765421)) ^ 0x66EF002F);
  v29 = v7 ^ 0x6B1AFA5B;
  v27 = v6;
  v28 = &v8;
  v26 = (v4 ^ 0xBEEFDEAD) + v7 + ((2 * v4) & 0x7DDFBD5A) + 1574566776;
  v31 = v2 - v7 + 2778;
  v30 = &v22;
  (*&v5[8 * v2 + 32696])(&v26);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1001B2C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16, uint64_t a17)
{
  a15 = 1824088897 * ((-474998306 - (&a14 | 0xE3B019DE) + (&a14 | 0x1C4FE621)) ^ 0x44263543) + 2305;
  a17 = a12;
  a14 = v17;
  v20 = (*(v18 + 76720))(&a14);
  return (*(v18 + 8 * ((9064 * (a16 == v19)) ^ 0x76E)))(v20);
}

uint64_t sub_1001B2D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, unsigned int a18)
{
  a17 = a14;
  a18 = (v18 - 1546333244) ^ (((((2 * &a16) | 0xE28A70DC) - &a16 - 1900361838) ^ 0x292CEB0C) * v19);
  v21 = (*(v20 + 8 * (v18 - 1546331978)))(&a16);
  return sub_1001B2D64(v21);
}

uint64_t sub_1001B2DE4(uint64_t a1)
{
  v6 = (v1 - 1195736292) & 0x47457E7F ^ 0x1ADA;
  *v3 = a1;
  *v2 = v9;
  v12 = v10;
  v13 = (v6 + 1013) ^ ((((&v11 | 0x408A5AE9) - (&v11 & 0x408A5AE9)) ^ 0x18E3898B) * v5);
  (*(v4 + 8 * ((v1 - 1195736292) & 0x47457E7F ^ 0x23F3u)))(&v11);
  v12 = v8;
  v13 = (v6 + 1013) ^ (1824088897 * (&v11 ^ 0x5869D362));
  (*(v4 + 8 * ((v6 - 1139) ^ 0x3DBE)))(&v11);
  return 0;
}

uint64_t sub_1001B2F04(uint64_t a1)
{
  *(a1 + 80) = 16640;
  *a1 = 1442350434;
  strcpy((a1 + 8), "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<");
  *(a1 + 73) = 0;
  *(a1 + 74) = 0;
  *(a1 + 76) = 0;
  v2 = STACK[0x8F0];
  *(v2 + 84) = 7;
  *(v2 + 105) = 0;
  *(v2 + 106) = 0;
  strcpy((v2 + 88), "<<<<<<<<<<<<<<<<");
  *(v2 + 108) = 0;
  *v1 = v2;
  return (STACK[0x7F8])();
}

void sub_1001B2F70(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  JUMPOUT(0x1001AD714);
}

uint64_t sub_1001B2F90(uint64_t a1, uint64_t a2)
{
  v7 = a2 + 29 * (v5 ^ v4) - 1045;
  *(a1 + v7) = *(v2 + v7);
  return (*(v6 + 8 * ((13081 * (v7 == 0)) ^ (v3 + v5 + 3256))))();
}

uint64_t sub_1001B3064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, int a14, uint64_t a15, int a16, uint64_t a17, int a18, unsigned int a19)
{
  v24 = *v19;
  v25 = 1358806181 * ((&a12 - 1220297718 - 2 * (&a12 & 0xB743BC0A)) ^ 0x886CD089);
  a17 = v19[6];
  a15 = a9;
  a18 = (((v22 ^ 0x2BCBD050) - 734777424) ^ ((v22 ^ 0x1DCC10BC) - 499912892) ^ ((v22 ^ 0xF19F0A4) - 253363883 + v23 - 2532)) - v25 + 1685200740;
  a19 = (a11 ^ 0xFFEBEA9E) - v25 + ((2 * a11) & 0xFFD7D53C) + 1874755578;
  a16 = (v23 + 915937495) ^ v25;
  a12 = a9;
  a13 = v24;
  v26 = (*(v21 + 8 * (v23 ^ 0x39F4)))(&a12);
  return (*(v21 + 8 * ((4 * (a14 == v20)) | (16 * (a14 == v20)) | v23)))(v26);
}

uint64_t sub_1001B32BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = (*(v65 + 8 * (v64 ^ 0x33A8)))(64, 0x100004077774924);
  STACK[0x868] = v66;
  return (*(a64 + 8 * (((v66 != 0) * (v64 - 5563)) ^ v64)))();
}

uint64_t sub_1001B33CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(STACK[0x758] + 24);
  STACK[0x778] = v5;
  return (*(v4 + 8 * (((v5 == 0) * ((v3 - 1933) ^ 0xBE5)) ^ v3)))(a1, a2, a3, 16215976);
}

uint64_t sub_1001B3470()
{
  STACK[0xA48] = v1;
  v3 = STACK[0x670];
  STACK[0xA50] = STACK[0x670];
  return (*(v2 + 8 * ((6172 * (v1 - v3 > ((v0 + 4077) ^ 0x14F1u) - 809)) ^ v0)))();
}

uint64_t sub_1001B34BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LOWORD(STACK[0x966]) = a7;
  LODWORD(STACK[0x360]) = a7;
  return sub_100111688(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_1001B34DC()
{
  v3 = STACK[0x824];
  STACK[0x640] += (v1 + 1901211049) & 0x8EADCBDD ^ 0xFFFFFFFFFFFFFC51;
  return (*(v2 + 8 * ((1396 * (v3 == v0)) ^ (v1 - 1657))))();
}

uint64_t sub_1001B3544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(a2 + v7);
  return (*(v6 + 8 * ((31 * (v5 & ~(v3 ^ (v7 == 0)))) ^ v2)))();
}

void sub_1001B3574(uint64_t a1@<X8>)
{
  v9 = (((2 * a1) & 0x2F5EF6B7FFFF567CLL) + (a1 ^ 0xD7AF7B5BFFFFAB3ELL) + v1);
  v10 = v9[v4 ^ 0x285084A400004309] << 24;
  v9 += 0x285084A4000054C3;
  v11 = v10 | (*v9 << 16) | (v9[1] << 8);
  v12 = (v11 | v9[2]) + 197499219 - 2 * ((v11 | v9[2]) & v5 ^ v9[2] & 0xC);
  v13 = ((2 * (a1 + 4)) & 0x797EFB7FB6F3FE6ELL) + ((a1 + 4) ^ 0x7CBF7DBFDB79FF37) + v1 - 0x7CBF7DBFDB79FF37;
  v14 = (_byteswap_ushort(*v13) - 2 * (_byteswap_ushort(*v13) & 0x3E9E ^ *(v13 + 1) & 0xA) + 16023);
  switch(v14)
  {
    case 28242:
      STACK[0x490] = v1 + v3;
      STACK[0x548] = v2;
      v15 = v12 != ((((v7 + 192710707) & 0xF4837BCD) + 197492010) ^ (v7 - 665889252) & 0x27B093BD);
      (*(v8 + 8 * ((4 * v15) | (16 * v15) | (v7 - 2976))))();
      break;
    case 47636:
      (*(v8 + 8 * ((12772 * (v6 == 298 * (v7 ^ 0x17C3) + 197496843)) ^ (v7 - 1157))))();
      break;
    case 43494:
      (*(v8 + 8 * ((35 * ((((v7 - 342083699) ^ (v6 == 197499223)) & 1) == 0)) ^ (v7 - 2753))))();
      break;
    default:
      sub_1001A1488();
      break;
  }
}

void sub_1001B37CC(uint64_t a1@<X8>)
{
  v7 = *(v4 + 120);
  v8 = *(v4 + 100);
  v9 = 914963389 * ((1673253698 - ((v5 - 232) ^ 0x5D50D186 | 0x63BBD342) + ((v5 - 232) ^ 0x5D50D186 | 0x9C442CBD)) ^ 0xEDE84C40);
  *(v5 - 200) = v1;
  *(v5 - 224) = a1;
  *(v5 - 184) = a1;
  *(v5 - 168) = v4 + 104;
  *(v5 - 232) = 1491323843 - v9;
  *(v5 - 176) = v9 + v2 + 2912;
  *(v5 - 208) = v9 + (v7 ^ 0x6FFF3FAB) + ((2 * v7) & 0xDFFE7F56) - 1700136576;
  *(v5 - 216) = (((v3 ^ 0x3C19926E) - 1008308846) ^ ((v3 ^ 0xEBDC32B3) + 337890637) ^ ((v3 ^ 0xDC00398E) + 603965042)) - v9 + 1996137537;
  *(v5 - 192) = (((19 * (v2 ^ 0x61B)) ^ v8 ^ 0xBDFCB889) + ((2 * v8) & 0x7BF97E36) + 1654908670) ^ v9;
  (*(v6 + 8 * (v2 + 8009)))(v5 - 232);
  JUMPOUT(0x10018B9E8);
}

uint64_t sub_1001B3950()
{
  v1 = STACK[0x848];
  STACK[0x838] = STACK[0x848];
  return (*(((v0 - 1426011080) & 0x54FF1AEA) + 8 * ((((v0 - 1426011080) & 0x54FF1AEA ^ 0xA41) * (v1 == 0)) ^ v0)))();
}

uint64_t sub_1001B3D20()
{
  v3 = *(v1 + 8);
  STACK[0x530] = *(v2 + 8 * v0);
  return sub_100149B00(v3);
}

uint64_t sub_1001B565C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, unsigned int a14)
{
  a14 = (v18 + v14) ^ (((((2 * &a12) | 0x3595737A) - &a12 + 1697990211) ^ 0xC2A36ADF) * v17);
  a13 = a10;
  (*(v15 + 8 * (v18 ^ v16)))(&a12);
  a14 = (v18 + v14) ^ (((&a12 & 0xE34F9597 | ~(&a12 | 0xE34F9597)) ^ 0x44D9B90A) * v17);
  a13 = a9;
  v19 = (*(v15 + 8 * (v18 ^ v16)))(&a12);
  return sub_1001B570C(v19);
}

uint64_t sub_1001B5750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (v3 == -1768145036 || v3 == 792772863 || v3 == -1651519320)
  {
    JUMPOUT(0x1001B5814);
  }

  return (*(v5 + 8 * ((v4 - 7327) ^ (1816 * ((v6 & 8) == 0)))))(a1, a2, a3, v7 - 224);
}

uint64_t sub_1001B5934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = v2 + (v4 + v3 + 1317) - 1368;
  *(a1 + v7) = *(a2 + v7);
  return (*(v6 + 8 * ((220 * (v7 != 0)) ^ (v5 + v3 + 2559))))();
}

uint64_t sub_1001B59A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = LODWORD(STACK[0x390]);
  if (v7 == 17168)
  {
    return (*(STACK[0x3E8] + 8 * ((v6 - 3364) ^ (5409 * (a3 == 197499223)))))();
  }

  if (v7 == 20706 || (v9 = v6, v7 == 33980))
  {
    STACK[0x7B8] = a6;
    v9 = v6;
  }

  v10 = *STACK[0x588];
  STACK[0x860] = 0;
  STACK[0x7B0] = 0;
  return (*(STACK[0x3E8] + 8 * (((v10 == 0) * ((v9 - 4420) ^ 0x314)) ^ (v9 - 722))))();
}

uint64_t sub_1001B5A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unint64_t a6)
{
  v19 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v20 = vdupq_n_s64(0x38uLL);
  v21 = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  v22 = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  v23 = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  v24 = vdupq_n_s64(v8);
  v25 = vdupq_n_s64(v7);
  v26 = vdupq_n_s64(v9);
  v27 = vdupq_n_s64(v15);
  v28 = vdupq_n_s64(v10);
  v29 = vdupq_n_s64(v6);
  v30 = vdupq_n_s64(v11);
  v31 = vdupq_n_s64(v17);
  v32 = vdupq_n_s64(a6);
  v33 = vdupq_n_s64(v18);
  v34 = vdupq_n_s64(v16);
  v35.i64[0] = v14 + v12 - v13 - 7;
  v35.i64[1] = v14 + v12 - v13 - 8;
  v36.i64[0] = v14 + v12 - v13 - 5;
  v36.i64[1] = v14 + v12 - v13 - 6;
  v37.i64[0] = v14 + v12 - v13 - 1;
  v37.i64[1] = v14 + v12 - v13 - 2;
  v38.i64[0] = v14 + v12 - v13 + ((a5 - 84) ^ 0xFFFFFFFFFFFFE59BLL);
  v38.i64[1] = v14 + v12 - v13 - 4;
  v39 = vandq_s8(v38, v19);
  v40 = vandq_s8(v37, v19);
  v41 = vandq_s8(v36, v19);
  v42 = vandq_s8(v35, v19);
  v43 = vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL);
  v44 = vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL);
  v45 = vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL);
  v46 = vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL);
  v47 = vaddq_s64(v44, v21);
  v48 = vaddq_s64(v43, v21);
  v49 = veorq_s8(v48, v22);
  v50 = veorq_s8(v47, v22);
  v51 = veorq_s8(v47, v23);
  v52 = veorq_s8(v48, v23);
  v53 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v52);
  v54 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v51);
  v55 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v53, v24), vorrq_s8(v53, v25)), v25), v26);
  v56 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v54, v24), vorrq_s8(v54, v25)), v25), v26);
  v57 = veorq_s8(v56, vsraq_n_u64(vshlq_n_s64(v51, 3uLL), v51, 0x3DuLL));
  v58 = veorq_s8(v55, vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL));
  v59 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v57), v27);
  v60 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL), v58), v27);
  v61 = vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL);
  v62 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v63 = veorq_s8(v59, v61);
  v64 = vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL);
  v65 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v63);
  v66 = vaddq_s64(v64, v62);
  v67 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v65, v28), vorrq_s8(v65, v29)), v29), v30);
  v68 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v66, v28), vorrq_s8(v66, v29)), v29), v30);
  v69 = veorq_s8(v68, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v70 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v71 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v69), v31);
  v72 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL), v70), v31);
  v73 = vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL);
  v74 = veorq_s8(v72, vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL));
  v75 = veorq_s8(v71, v73);
  v76 = vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL);
  v77 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL), v75);
  v78 = veorq_s8(vaddq_s64(v76, v74), v32);
  v79 = veorq_s8(v77, v32);
  v80 = vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL);
  v81 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v82 = veorq_s8(v78, v80);
  v83 = vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL);
  v84 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v82);
  v85 = veorq_s8(vaddq_s64(v83, v81), v33);
  v86 = veorq_s8(v84, v33);
  v87 = vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL);
  v88 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL));
  v89 = veorq_s8(v85, v87);
  v90 = vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL);
  v91 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v92 = vaddq_s64(v45, v21);
  v125.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v91, v89), v34), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), v20)));
  v125.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v90, v88), v34), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), v20)));
  v93 = veorq_s8(v92, v22);
  v94 = veorq_s8(v92, v23);
  v95 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v94);
  v96 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v95, v24), vorrq_s8(v95, v25)), v25), v26);
  v97 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v98 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v97), v27);
  v99 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v99);
  v101 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v100, v28), vorrq_s8(v100, v29)), v29), v30);
  v102 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v103 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102), v31);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104), v32);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106), v33);
  v108 = vaddq_s64(v46, v21);
  v125.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL))), v34), vnegq_s64(vandq_s8(vshlq_n_s64(v37, 3uLL), v20)));
  v109 = veorq_s8(v108, v22);
  v110 = veorq_s8(v108, v23);
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110);
  v112 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v111, v24), vorrq_s8(v111, v25)), v25), v26);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113), v27);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v116, v28), vorrq_s8(v116, v29)), v29), v30);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v119 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118), v31);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v121 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120), v32);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v123 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122), v33);
  v125.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL))), v34), vnegq_s64(vandq_s8(vshlq_n_s64(v38, 3uLL), v20)));
  *(v12 + a1 - 8 - v13) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(*(v14 + v12 - v13 - 8)), 0x3C3C3C3C3C3C3C3CLL), *&vqtbl4q_s8(v125, xmmword_1009E3420)));
  return (*(STACK[0x3E8] + 8 * ((220 * (8 - (v12 & 0xFFFFFFF8) != -v13)) ^ (a5 - 84))))();
}

void sub_1001B5FA8(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  JUMPOUT(0x1000E1E34);
}

void sub_1001B5FF0()
{
  STACK[0x468] = 0;
  STACK[0x700] = 0;
  STACK[0x908] = *(v1 + 8 * v0);
  JUMPOUT(0x10002E3FCLL);
}

uint64_t sub_1001B6194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, unsigned int a13, uint64_t a14)
{
  v19 = 2 * &a12;
  a14 = **(v15 + 512);
  a12 = 1710126949 * (((v19 | 0xDCEB5768) - &a12 + 294278220) ^ 0xDC6EF024) + 8752;
  (*(v14 + 77304))(&a12);
  a13 = (v18 + 4047) ^ ((((v19 | 0xA5E6003C) - &a12 + 755826658) ^ 0x3862701B) * v17);
  v20 = (*(v14 + 77112))(&a12);
  return (*(v14 + 8 * ((9 * (a12 == (v16 ^ 0xFCF))) ^ 0xC71)))(v20);
}

uint64_t sub_1001B62A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, unsigned int a20, uint64_t a21, char *a22, unsigned int a23, unsigned int a24)
{
  v28 = ((&a19 & 0xF7BEDF96 | ~(&a19 | 0xF7BEDF96)) ^ 0x5028F30B) * v26;
  a21 = a12;
  a22 = &a15;
  a20 = v28 - 560830745;
  a23 = -654855621 - v28;
  a24 = v28 + v24 + 1674576121;
  v29 = (*(v27 + 8 * (v24 ^ 0x2E39u)))(&a19);
  return (*(v27 + 8 * (((a19 == v25 + ((v24 - 952114683) & 0x1E5D) + 1262) * (((v24 - 2991) | 0x1100) + 1049)) ^ v24)))(v29);
}

uint64_t sub_1001B6374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LOWORD(STACK[0x88E]) = v5;
  LODWORD(STACK[0x380]) = v5;
  return sub_100189654(a1, a2, STACK[0x3A0], a4, a5, v6 - 4690);
}

uint64_t sub_1001B6390(uint64_t a1)
{
  v5 = (v2 - 932770614) & 0x3798F37A;
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0xB38] = v1 ^ 0xBC59953u;
  *(a1 + 16) = (((v1 ^ 0x13B0F1C9) - 330363337) ^ ((v1 ^ 0x6186374E) - 1636185934) ^ ((v1 ^ 0x79F35FD4) - 2045999007 + ((v5 - 7622) | 0x1241))) + 197499229;
  v6 = (*(v3 + 8 * (v5 ^ 0x6F2u)))();
  *(a1 + 24) = v6;
  return (*(v3 + 8 * ((v6 == 0) ^ v5)))();
}

uint64_t sub_1001B64E0(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  return sub_1001B8210(3674 * (v1 ^ 0x2306u));
}

uint64_t sub_1001B6574()
{
  v2 = *(STACK[0x860] + 24);
  STACK[0x4F8] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (v0 + 1675 + (v0 ^ 0x18B3) - 10119)) ^ v0)))();
}

uint64_t sub_1001B6700@<X0>(unint64_t a1@<X0>, __int16 a2@<W8>)
{
  STACK[0x840] = a1;
  LODWORD(STACK[0xAF8]) = v7;
  LOWORD(STACK[0xAFE]) = a2;
  LODWORD(STACK[0xB00]) = v5;
  LODWORD(STACK[0xB04]) = v2;
  STACK[0xB08] = v4;
  STACK[0xB10] = v6;
  return (*(v8 + 8 * (((a1 != 0) * (v3 - 6435)) ^ v3)))();
}

void sub_1001B6798(uint64_t a1@<X8>)
{
  *v2 = v1;
  *(v1 + 8) = *(a1 + 8);
  *(a1 + 8) = v1;
  JUMPOUT(0x1000AE62CLL);
}

uint64_t sub_1001B67BC@<X0>(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  STACK[0x5E0] = v58 + (((v60 - 2254) | 0xA01u) ^ 0x1AB7);
  STACK[0x640] = v57 + 80;
  STACK[0x818] = a1;
  STACK[0x618] = 0;
  STACK[0x568] = 0;
  STACK[0x748] = 0;
  LODWORD(STACK[0x7B4]) = 197499219;
  LODWORD(STACK[0x524]) = 0;
  STACK[0x830] = 0;
  STACK[0x660] = 0;
  LODWORD(STACK[0x5F4]) = 197499219;
  v62 = (*(v61 + 8 * (v60 + 3116)))();
  return (*(a57 + 8 * (v60 ^ (215 * (v59 != 0)))))(v62, 16215976);
}

uint64_t sub_1001B6BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = (v5 ^ v3) + v4;
  *(a1 + v8) = *(a2 + v8);
  return (*(v7 + 8 * (((v8 != 0) * v6) ^ v2)))();
}

uint64_t sub_1001B6BD0()
{
  v2 = *(STACK[0x608] + 24);
  STACK[0x780] = v2;
  return (*(v1 + 8 * (((((v2 == 0) ^ (v0 - 1)) & 1) * (((v0 - 6412) | 2) ^ 0xA78)) ^ v0)))();
}

uint64_t sub_1001B6E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, int a63)
{
  v65 = STACK[0x868];
  v66 = STACK[0x7A8];
  v67 = 1824088897 * ((((v64 - 232) | 0xBF6B7031) + (~(v64 - 232) | 0x40948FCE)) ^ 0xE702A352);
  *(v64 - 224) = STACK[0xA58];
  *(v64 - 200) = v66;
  *(v64 - 192) = v65;
  *(v64 - 208) = 1461241532 - v67;
  *(v64 - 216) = v67 - 1304320635;
  *(v64 - 212) = 744417810 - v67 + a63;
  v68 = (*(a64 + 8 * (a63 ^ 0x2FAF)))(v64 - 232);
  v69 = *(v64 - 232);
  LODWORD(STACK[0x8F8]) = v69;
  return (*(a64 + 8 * (((v69 == 16257999) * ((((a63 + 5558) | 0x40D) - 8453) ^ 0x363)) ^ (a63 + 1141))))(v68);
}

uint64_t sub_1001B6F74@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, int a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  a6 = a3;
  a7 = a1;
  a5 = (v9 - 2819) ^ (33731311 * ((((2 * &a4) | 0xEDAD54B2) - &a4 + 153703847) ^ 0xCF20607A));
  v10 = (*(v8 + 8 * (v9 + 3530)))(&a4);
  return (*(v8 + 8 * (((a4 != v7) * ((v9 - 2671) ^ 0xD0D)) ^ v9)))(v10);
}

uint64_t sub_1001B7004@<X0>(unsigned int a1@<W8>)
{
  v3 = (a1 - 960650307) & 0x39424BE7;
  LODWORD(STACK[0x300]) = v3;
  return (*(v2 + 8 * ((187 * (((v3 + ((a1 - 4596) ^ 0xFFFFFE6F)) & v1) != 0)) ^ a1)))();
}

uint64_t sub_1001B7068()
{
  v5 = v2 - 1;
  *(v3 + v5) = v1 + 7 + *(v4 + v5) - ((2 * *(v4 + v5)) & 0x78) - 123;
  return (*(v0 + 8 * (v1 | (4 * (v5 != 0)))))();
}

uint64_t sub_1001B70D4(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7, unint64_t a8)
{
  v14 = (v11 + 4 * v10);
  v15 = ((v8 + a6) & a7 ^ a8) + v10;
  v16 = *(v11 + 4 * v15);
  v17 = v14[397] ^ ((v16 & 0x7FFFFFFE | v9 & 0x80000000) >> 1);
  *v14 = (v17 + a1 - (a2 & (2 * v17))) ^ *(v13 + 4 * (v16 & 1));
  return (*(v12 + 8 * ((14 * (v15 == 227)) ^ v8)))();
}

uint64_t sub_1001B71D4()
{
  STACK[0xAC8] = v1;
  v3 = STACK[0x700];
  STACK[0xAD0] = STACK[0x700];
  return (*(v2 + 8 * ((6928 * (v1 - v3 > (((v0 ^ 0x1E62u) - 5643) ^ 0x1C9uLL))) ^ v0)))();
}

uint64_t sub_1001B7228@<X0>(uint64_t a1@<X8>)
{
  v8 = 956911519 * ((31255041 - ((v6 - 232) ^ 0x965DDD9A | 0x1DCEA01) + ((v6 - 232) ^ 0x965DDD9A | 0xFE2315FE)) ^ 0x82EFB861);
  *(v6 - 216) = ((v2 ^ 0xAFFAFDEF) + 2145375226 + ((v2 << ((v4 - 120) & 0xDA ^ 0x4B)) & 0x18403144)) ^ v8;
  *(v6 - 192) = v8 ^ 0x5A8CE82;
  *(v6 - 188) = (v4 + 305) ^ v8;
  *(v6 - 232) = v5;
  *(v6 - 224) = a1;
  *(v6 - 208) = v3;
  *(v6 - 200) = ((v1 ^ 0x3FF7FDFC) - 1057067040 + ((2 * v1) & 0x7FEFFBF8)) ^ v8;
  v9 = (*(v7 + 8 * (v4 ^ 0x2D49)))(v6 - 232);
  return (STACK[0x3D0])(v9);
}

uint64_t sub_1001B7384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  v55 = (v52 + 10) & 0xF;
  LODWORD(STACK[0x48C]) = 270786423 - v55;
  return (*(v54 + 8 * ((478 * ((16 - v55) + v52 < 0xFFFFFFF6)) ^ v53)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_1001B77D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, int a13)
{
  a12 = 476323082 - 1710126949 * ((82496230 - (&a12 | 0x4EACAE6) + (&a12 | 0xFB153519)) ^ 0xC90E6E89);
  v14 = (*(v13 + 77088))(&a12);
  return (*(v13 + 8 * ((1846 * (a13 == 16257999)) ^ 0x1017u)))(v14);
}

uint64_t sub_1001B78A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = v67 ^ 0x31;
  v70 = v68 == 1;
  v71 = v65 + v68 - 1;
  v72 = v68 + a9;
  v73 = v68 + a9 + 9;
  v74 = __ROR8__(v71 & 0xFFFFFFFFFFFFFFF8, 8);
  v75 = ((2 * (v74 - 0x6AF7234D0CC131D5)) | 0x19C69BDE09677532) - (v74 - 0x6AF7234D0CC131D5) + 0x731CB210FB4C4567;
  v76 = (v69 - 1796739804) & 0x6B180EDA ^ 0xC50A0FD46BA55701 ^ v75;
  v75 ^= 0x6D4CEA43F2532C17uLL;
  v77 = __ROR8__(v76, 8);
  v78 = __ROR8__((((2 * (v77 + v75)) | 0xE7FEEAD13AAEBCF2) - (v77 + v75) + 0xC008A9762A8A187) ^ 0x176202B71A6AE107, 8);
  v79 = (((2 * (v77 + v75)) | 0xE7FEEAD13AAEBCF2) - (v77 + v75) + 0xC008A9762A8A187) ^ 0x176202B71A6AE107 ^ __ROR8__(v75, 61);
  v80 = ((v66 & (2 * (v78 + v79))) - (v78 + v79) + a1) ^ a2;
  v81 = v80 ^ __ROR8__(v79, 61);
  v82 = (__ROR8__(v80, 8) + v81) ^ 0x5963B6C555D97F1FLL;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = (__ROR8__(v82, 8) + v83) ^ 0x61459D2AF01F24F7;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = (__ROR8__(v84, 8) + v85) ^ 0x64C31C027084DE6CLL;
  v87 = v86 ^ __ROR8__(v85, 61);
  v88 = __ROR8__(v86, 8);
  v89 = (v88 + v87 - (a3 & (2 * (v88 + v87))) + a4) ^ a5;
  v90 = ((__ROR8__(v89, 8) + (v89 ^ __ROR8__(v87, 61))) ^ 0xAB3042D228875C41) >> (8 * (v71 & 7u));
  v91 = __ROR8__(v73 & 0xFFFFFFFFFFFFFFF8, 8);
  v92 = (v91 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v93 = (__ROR8__((v91 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2, 8) + v92) ^ 0xE49D77DF873DBF7ELL;
  v94 = v93 ^ __ROR8__(v92, 61);
  v95 = (__ROR8__(v93, 8) + v94) ^ 0xF5A2F1B9B5D0B209;
  v96 = v95 ^ __ROR8__(v94, 61);
  v97 = (__ROR8__(v95, 8) + v96) ^ 0x5963B6C555D97F1FLL;
  v98 = v97 ^ __ROR8__(v96, 61);
  v99 = (__ROR8__(v97, 8) + v98) ^ 0x61459D2AF01F24F7;
  v100 = v99 ^ __ROR8__(v98, 61);
  v101 = (__ROR8__(v99, 8) + v100) ^ 0x64C31C027084DE6CLL;
  v102 = v101 ^ __ROR8__(v100, 61);
  v103 = (__ROR8__(v101, 8) + v102) ^ 0x1A2AEBE44253AF03;
  v104 = __ROR8__(v103, 8) + (v103 ^ __ROR8__(v102, 61));
  *(v72 + 9) = v90 ^ (((v104 - (a6 & (2 * v104)) + a7) ^ a8) >> (8 * (v73 & 7u))) ^ *v71;
  v105 = !v70;
  return (*(a65 + 8 * ((49 * v105) ^ v69)))();
}

uint64_t sub_1001B7B60()
{
  v2 = STACK[0x4C8];
  v3 = STACK[0x8C8];
  v4 = &STACK[0xB60] + STACK[0x740];
  STACK[0x740] = (v0 - 409) + STACK[0x740] - 1134;
  STACK[0x8D0] = v2;
  STACK[0x4D8] = v3;
  v5 = (*(v1 + 8 * (v0 ^ 0x23A7)))(v4, 0, 32);
  STACK[0x578] = 0;
  if (v2)
  {
    v6 = v3 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  return (*(v1 + 8 * ((v7 * ((v0 + 6845) ^ 0x20EC)) ^ v0)))(v5);
}

uint64_t sub_1001B7CA0()
{
  v6 = *v4;
  *(v3 - 1) = *(v4 - 1);
  *v3 = v6;
  return (*(v5 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

uint64_t sub_1001B7E64@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x67C]) = v1;
  STACK[0x4C8] = STACK[0x668];
  return (*(v2 + 8 * ((3314 * (v1 == (((a1 ^ 0x50B) + 1985612020) & 0x89A5FDC9 ^ 0xF802C7))) ^ ((a1 ^ 0x50B) + 1805))))();
}

uint64_t sub_1001B808C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(STACK[0x5D8] + 24);
  STACK[0x7A0] = v5;
  return (*(a4 + 8 * (((v5 == 0) * ((v4 - 2631) ^ 0x14F7)) | v4)))();
}

uint64_t sub_1001B8150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * (((v6 == 0) * (((v4 + 1869960751) & 0x4A26CFBF) + 7908)) ^ (v4 + v2))))();
}

uint64_t sub_1001B826C@<X0>(int a1@<W8>)
{
  STACK[0x998] = v1;
  v2 = STACK[0x7B8];
  STACK[0x9A0] = STACK[0x7B8];
  return (*(STACK[0x3E8] + 8 * ((140 * (v1 - v2 > ((a1 - 1309) ^ 0x1641u) - 5212)) | a1)))();
}

uint64_t sub_1001B82EC@<X0>(unint64_t a1@<X1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57)
{
  v58 = LODWORD(STACK[0x330]);
  if (v58 == 17168)
  {
    return (*(v57 + 8 * ((a57 + 836) ^ (8027 * (a2 == 197499223)))))();
  }

  if (v58 == 20706 || (v60 = a57, v58 == 33980))
  {
    STACK[0x638] = a1;
    v60 = a57;
  }

  v61 = *STACK[0x550];
  v62 = STACK[0x8A0];
  STACK[0x400] = STACK[0x8A0];
  STACK[0x508] = 0;
  STACK[0x410] = 0;
  if (v61)
  {
    v63 = v62 == 0;
  }

  else
  {
    v63 = 1;
  }

  v64 = v63;
  return (*(v57 + 8 * ((v64 * (((v60 - 2617) | 0xE6) ^ 0x8D)) ^ (v60 - 534))))();
}

uint64_t sub_1001B83C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6)
{
  v9 = (v6 + 1307867319) & 0xB20B7B7F;
  *a6 = v12 >> (((v6 - 73) & 0x7F) - 121);
  v10 = 1185 * (v9 ^ 0xB7D);
  v17 = (v9 + 5404) ^ ((&v15 ^ 0x5869D362) * v7);
  v16 = v14;
  (*(v8 + 8 * (v9 ^ 0x2EF2)))(&v15);
  v16 = v13;
  v17 = (v10 + 4791) ^ (1824088897 * ((&v15 & 0x459FF876 | ~(&v15 | 0x459FF876)) ^ 0xE209D4EB));
  (*(v8 + 8 * (v10 ^ 0x286F)))(&v15);
  return 0;
}

uint64_t sub_1001B84F4()
{
  *(v6 - 224) = v3 ^ (914963389 * ((v6 - 232) ^ 0x2CFCB17B));
  v7 = (*(v0 + 8 * v5))(v6 - 232);
  v8 = STACK[0x3E8];
  *(v1 + 8) = *(v6 - 232) ^ v4;
  return (*(v8 + 8 * ((v2 + 1340) | 8)))(v7);
}

uint64_t sub_1001B865C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x330]) = 197499223;
  STACK[0x370] = STACK[0x778] + 24;
  LODWORD(STACK[0x2A0]) = LODWORD(STACK[0x9A4]) ^ 0xD6A561FA;
  v63 = LOWORD(STACK[0x99E]);
  LODWORD(STACK[0x320]) = v63;
  LODWORD(STACK[0x300]) = v63 ^ 0x4CF9;
  STACK[0x360] = STACK[0x440] + 24;
  v64 = LOWORD(STACK[0xA7E]);
  LODWORD(STACK[0x310]) = v64;
  LODWORD(STACK[0x2F0]) = v64 ^ 0xFFFFA60A;
  LODWORD(STACK[0x290]) = LODWORD(STACK[0xA84]) ^ 0xD6A561FA;
  STACK[0x350] = STACK[0x4C0] + 24;
  STACK[0x340] = STACK[0x7B8] + 24;
  v65 = STACK[0x9A0];
  LODWORD(STACK[0x2C0]) = STACK[0x9A0];
  LODWORD(STACK[0x2E0]) = v65 ^ 0xD6A561FA;
  v66 = STACK[0xA80];
  LODWORD(STACK[0x2B0]) = STACK[0xA80];
  LODWORD(STACK[0x2D0]) = v66 ^ 0xD6A561FA;
  return sub_10017EC50(0x126AA61F6F56C0D8, a2, 0x2A5638492DD55EAELL, 0x4C48AAE1C333D048, 0xEAD4E3DB691550A9, 169, 0x64C31C027084DE6CLL, 0x61459D2AF01F24F7, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_1001B8674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>)
{
  v25 = v16 - 1;
  v26 = (v14 + v25);
  v27 = __ROR8__((v14 + v25) & 0xFFFFFFFFFFFFFFF8, 8);
  v29 = a7 - ((v27 + a8) | v22) - ((((a9 + v10) | a6) + 0x6AF7234D0CC131D4 - v27 - 3350) | v21);
  v30 = __ROR8__(v29 ^ a5, 8);
  v31 = v29 ^ v19;
  v32 = (v30 + v31) ^ v24;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = __ROR8__(((v23 & (2 * (v34 + v33))) - (v34 + v33) + v12) ^ v9, 8);
  v36 = ((v23 & (2 * (v34 + v33))) - (v34 + v33) + v12) ^ v9 ^ __ROR8__(v33, 61);
  v37 = (v35 + v36) ^ v20;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ a4;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (((v41 + v40) & v11 ^ a3) + ((v41 + v40) ^ v18) - (((v41 + v40) ^ v18) & v11)) ^ v15;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ 0x1A2AEBE44253AF03;
  *(a1 + v25 + a2) = (((__ROR8__(v44, 8) + (v44 ^ __ROR8__(v43, 61))) ^ v17) >> (8 * (v26 & 7u))) ^ *v26;
  return (*(STACK[0x3E8] + 8 * (((v25 == 0) * v13) ^ a9)))();
}

uint64_t sub_1001B87FC@<X0>(uint64_t a1@<X3>, unint64_t *a2@<X8>)
{
  v3 = *a2;
  STACK[0x750] = *a2;
  return (*(a1 + 8 * ((212 * (((v3 == 0) ^ (61 * (((v2 + 58) | 0x30) ^ 0xB4) + 1)) & 1)) ^ v2)))();
}

uint64_t sub_1001B889C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, uint64_t a19, char *a20, unsigned int a21, unsigned int a22)
{
  v26 = ((((2 * &a17) | 0xEE80E9C0) - &a17 + 146770720) ^ 0xAF29A782) * v25;
  a18 = v26 + 739404086;
  a21 = -654855621 - v26;
  a22 = v26 + v24 + 1674571964;
  a19 = a12;
  a20 = &a14;
  v27 = (*(v23 + 8 * (v24 + 2458)))(&a17);
  return (*(v23 + 8 * ((14422 * (a17 == (v22 ^ 0x288) + 16253710)) ^ v24)))(v27);
}

void sub_1001B8A6C(_BYTE *a1@<X8>)
{
  *(v1 + 72) = 32;
  *(v1 + 39) = a1[55];
  *(v1 + 38) = a1[54];
  *(v1 + 37) = a1[53];
  *(v1 + 36) = a1[52];
  *(v1 + 35) = a1[51];
  *(v1 + 34) = a1[50];
  *(v1 + 33) = a1[49];
  *(v1 + 32) = a1[48];
  *(v1 + 31) = a1[47];
  *(v1 + 30) = a1[46];
  *(v1 + 29) = a1[45];
  *(v1 + 28) = a1[44];
  *(v1 + 27) = a1[43];
  *(v1 + 26) = a1[42];
  *(v1 + 25) = a1[41];
  *(v1 + 24) = a1[40];
  *(v1 + 23) = a1[39];
  *(v1 + 22) = a1[38];
  *(v1 + 21) = a1[37];
  *(v1 + 20) = a1[36];
  *(v1 + 19) = a1[35];
  *(v1 + 18) = a1[34];
  *(v1 + 17) = a1[33];
  *(v1 + 16) = a1[32];
  *(v1 + 15) = a1[31];
  *(v1 + 14) = a1[30];
  *(v1 + 13) = a1[29];
  *(v1 + 12) = a1[28];
  *(v1 + 11) = a1[27];
  *(v1 + 10) = a1[26];
  *(v1 + 9) = a1[25];
  *(v1 + 8) = a1[24];
  JUMPOUT(0x1000B4D04);
}

uint64_t sub_1001B8BC0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, _DWORD *a15, unsigned int *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, int a30)
{
  *a15 = a30 + 1;
  v33 = *a16;
  *(v32 - 112) = a12 ^ 1;
  *(v31 + 16) = a11;
  v34 = a1 - 1566343548 + a12;
  *(v32 - 152) = (a1 + 1745252473) ^ a12;
  *(v32 - 136) = v34;
  *(v32 - 128) = ((a1 - 1566343548) ^ 0x18) + a12;
  *(v32 - 124) = v34 - 111;
  *(v31 + 40) = v33 ^ a12;
  v35 = (*(v30 + 8 * (a1 ^ 0x261A)))(v32 - 152);
  return (*(v30 + 8 * *(v32 - 132)))(v35);
}

uint64_t sub_1001B8C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v22 = ((&a14 + 831182668 - 2 * (&a14 & 0x318AD74C)) ^ 0x69E3042E) * v19;
  a15 = v22 - 2048112905;
  a18 = -654855621 - v22;
  a19 = v22 + v21 + 1674574986;
  a16 = a11;
  a17 = &a10;
  v23 = (*(v20 + 8 * (v21 + 5480)))(&a14);
  return (*(v20 + 8 * ((2942 * (a14 == ((v21 - 3836) | 0x1008) + 16253603)) ^ v21)))(v23);
}

uint64_t sub_1001B8D18()
{
  v5 = *(v1 + 4 * (v2 - 1));
  *(v1 + 4 * v2) = ((1566083941 * (v5 ^ (v5 >> 30))) ^ *(v1 + 4 * v2)) - v2;
  v6 = 2048652491 * ((v4 - 0x51FF6CCB51695EE2 - 2 * ((v4 - 168) & 0xAE009334AE96A1C6)) ^ 0x7AE41CB81F2736C3);
  v7 = v0 + 1309009960 + v6;
  v8 = v4 - 224;
  *(v8 + 88) = (v2 + 1) ^ v6;
  *(v4 - 152) = v7;
  *(v4 - 168) = (v0 + 1745243958) ^ v6;
  *(v4 - 128) = v6 ^ 1;
  *(v4 - 144) = ((v0 + 1309009960) ^ 1) + v6;
  *(v4 - 140) = v7 + 338;
  *(v8 + 64) = 623 - v6;
  v9 = (*(v3 + 8 * (v0 + 195)))(v4 - 168);
  return (*(v3 + 8 * *(v4 - 148)))(v9);
}

uint64_t sub_1001B8E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  a12 = 476323082 - 1710126949 * ((&a12 - 1660343191 - 2 * (&a12 & 0x9D092C69)) ^ 0xAF1277F9);
  v14 = (*(v13 + 77088))(&a12);
  return (*(v13 + 8 * ((62 * (a13 == 16257999)) ^ 0x99Cu)))(v14);
}

uint64_t sub_1001B8F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = (*(a7 + 8 * (v7 ^ 0x38F6u)))();
  v11 = *(v9 - 256);
  *(v8 + 24) = 0;
  return sub_100081F74(v10, v12, v13, v14, v15, v16, v11);
}

void sub_1001B8F50(unint64_t a1)
{
  STACK[0x958] = a1;
  v1 = STACK[0x798];
  *(v1 + 112) = 197499219;
  *(v1 + 116) = 197499219;
  *(v1 + 108) = 0;
  *(v1 + 104) = 0;
  JUMPOUT(0x100116A00);
}

uint64_t sub_1001B8F70@<X0>(int a1@<W8>)
{
  STACK[0xA78] = v1;
  v3 = STACK[0x648];
  STACK[0xA80] = STACK[0x648];
  return (*(v2 + 8 * ((35 * (((v1 - v3 > 9) ^ ((a1 ^ 0x11) - 110)) & 1)) ^ a1)))();
}

uint64_t sub_1001B9034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v20 = a9 + v9;
  v21 = a9 + v9 + 9;
  v22 = __ROR8__(v21 & 0xFFFFFFFFFFFFFFF8, 8) + ((v10 + 595) ^ 0x9508DCB2F33EC461);
  v23 = v22 ^ 0x49E9423B6F16E7D2;
  v22 ^= 0xE1AFA7ACF6E0968ELL;
  v24 = (__ROR8__(v23, 8) + v22) ^ v17;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = __ROR8__(v24, 8);
  v27 = ((v16 & (2 * (v26 + v25))) - (v26 + v25) + a5) ^ a6;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = __ROR8__(v27, 8);
  v30 = __ROR8__((v29 + v28 - (a7 & (2 * (v29 + v28))) + a8) ^ v15, 8);
  v31 = (v29 + v28 - (a7 & (2 * (v29 + v28))) + a8) ^ v15 ^ __ROR8__(v28, 61);
  v32 = (v30 + v31) ^ v18;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (((v34 + v33) | a2) - ((v34 + v33) | a3) + a3) ^ a4;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0x1A2AEBE44253AF03;
  v38 = a9 - 1;
  v39 = (__ROR8__(v37, 8) + (v37 ^ __ROR8__(v36, 61))) ^ v12;
  *(v20 + 9) = *(v11 + v38) ^ ((((v39 | v14) - (v39 | a1) + a1) ^ v13) >> (8 * (v21 & 7u))) ^ 0x3C;
  return (*(v19 + 8 * ((3163 * (v38 == 0)) ^ v10)))();
}

uint64_t sub_1001B9180@<X0>(int a1@<W8>)
{
  result = (*(v1 + 8 * (a1 + 6970)))();
  *(v2 + 8) = v3;
  return result;
}

uint64_t sub_1001B91E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v23 = ((2 * (&a14 & 0x744A5920) - &a14 + 196454104) ^ 0x53DC75BA) * v21;
  a15 = v23 - 606002271;
  a16 = a11;
  a17 = &a12;
  a18 = -654855621 - v23;
  a19 = v23 + v22 + 1674578093;
  v24 = (*(v20 + 8 * (v22 ^ 0x2675)))(&a14);
  return (*(v20 + 8 * (((a14 == (v22 ^ 0xA06 ^ (v19 + 1637))) * (v22 + 7829)) ^ v22)))(v24);
}

uint64_t sub_1001B92A8()
{
  v2 = *STACK[0x4B0];
  STACK[0x698] = *(v1 + 8 * v0);
  return sub_1001AFD18(v2);
}

uint64_t sub_1001B92D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v6 - 224) = (v5 - 2140801331) ^ (914963389 * ((((v6 - 232) | 0xA07CD5F5) - (v6 - 232) + ((v6 - 232) & 0x5F832A08)) ^ 0x8C80648E));
  v7 = (*(a4 + 8 * (v5 ^ 0x31C3)))(v6 - 232);
  v8 = STACK[0x3E8];
  *v4 = *(v6 - 232) ^ 0xAC;
  return (*(v8 + 8 * (v5 - 2034)))(v7);
}

uint64_t sub_1001B9390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v22 = 956911519 * (v21 ^ 0x453675DCEA917005);
  LODWORD(a15) = v22 ^ 0x3FE;
  a16 = v19 - ((2 * v19) & 0x39AD4E2AD03EC198) - 0x632958EA97E09F34 + v22;
  a17 = a13;
  (*(v20 + 76792))(&a15);
  a17 = a13;
  a15 = v18;
  LODWORD(a16) = 1824088897 * ((((2 * v21) | 0x53A5509E) - v21 + 1445812145) ^ 0xF1BB7B2D) + 2305;
  (*(v20 + 76720))(&a15);
  v23 = 1875091903 * ((2 * (v21 & 0x2B1B8A8) - v21 - 45201577) ^ 0xCB3BC4D4);
  HIDWORD(a15) = ((2 * v17) & 0x76FB6FF4) + (v17 ^ 0x3B7DB7FA) - 459342160 + v23;
  LODWORD(a16) = v23 + 7724;
  a17 = a13;
  v24 = (*(v20 + 77160))(&a15);
  return (*(v20 + 8 * ((4945 * (a15 == 16257999)) ^ 0x9DBu)))(v24);
}

uint64_t sub_1001B96B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, int a13, unsigned int a14, uint64_t a15, char *a16)
{
  a14 = (v18 + 2199) ^ (33731311 * (&a13 ^ 0x39F6CA23));
  a15 = a9;
  a16 = &a11;
  (*(v16 + 8 * (v18 + 8548)))(&a13);
  LODWORD(a16) = v18 - 2008441969 * ((((&a13 | 0x9095E7C8) ^ 0xFFFFFFFE) - (~&a13 | 0x6F6A1837)) ^ 0x27F34C39) + 4632;
  a15 = a9;
  v19 = (*(v16 + 8 * (v18 + 8598)))(&a13);
  return (*(v16 + 8 * (((a13 == v17) * ((v18 - 1139925067) & 0x43F1DFE7 ^ 0x25F5)) ^ v18)))(v19);
}

uint64_t sub_1001B9840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, unsigned int a17, uint64_t a18, char *a19, unsigned int a20, unsigned int a21)
{
  v23 = 1824088897 * (((&a16 | 0x35430471) + (~&a16 | 0xCABCFB8E)) ^ 0x6D2AD712);
  a17 = v23 + 525715759;
  a20 = -654855621 - v23;
  a21 = v23 + 1674579114;
  a18 = a12;
  a19 = &a10;
  v24 = (*(v22 + 76864))(&a16);
  return (*(v22 + 8 * ((7565 * (a16 == v21)) ^ 0x60Au)))(v24);
}

uint64_t sub_1001B997C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = *(STACK[0x588] + 24);
  STACK[0x890] = v72;
  return (*(v71 + 8 * (((v72 == 0) * (((a71 + 2698) ^ 0x359E) - 14397 + ((a71 - 6015) | 0x2103))) ^ (a71 + 2698))))();
}

uint64_t sub_1001B99D4@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, int a8, int a9, char a10, uint64_t a11, int a12, uint64_t a13, char a14, unsigned int a15, uint64_t a16, int *a17, unsigned int a18, char *a19)
{
  a19 = &a7;
  a18 = (v19 + 1169) ^ (1710126949 * ((1196828650 - (&a14 | 0x475627EA) + (&a14 | 0xB8A9D815)) ^ 0x8AB28385));
  a16 = a1;
  a17 = &a10;
  (*(v21 + 8 * (v19 + 7418)))(&a14);
  a16 = a13;
  a17 = &a12;
  a15 = (v19 + 1063) ^ ((((&a14 | 0xF588F6C) - &a14 + (&a14 & 0xF0A77090)) ^ 0x36AE454F) * v20);
  v22 = (*(v21 + 8 * (v19 + 7412)))(&a14);
  return (*(v21 + 8 * ((56 * (((v19 - 24) ^ (a12 == (((v19 - 2131) | 0x8C4) ^ 0x8E6))) & 1)) ^ (v19 + 6633))))(v22);
}

uint64_t sub_1001B9AFC@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 - 1;
  *(a1 + v5) = *(v3 + v5) + 19 * (v2 ^ 0x9F) - ((2 * *(v3 + v5)) & 0x78) + 31;
  return (*(v4 + 8 * ((92 * (v5 != 0)) ^ v2)))();
}

uint64_t sub_1001B9B48@<X0>(uint64_t a1@<X0>, unint64_t a2@<X2>, unint64_t a3@<X3>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = v10;
  v18 = v14;
  v19 = a4 - 4715;
  v20 = a1 + v15 + a9 + v18;
  v510 = *(v11 + v18 - 16);
  v21.i64[0] = v11 + v18 - 7;
  v21.i64[1] = v11 + v18 - 8;
  v22.i64[0] = v11 + v18 - 5;
  v22.i64[1] = v11 + v18 - 6;
  v23.i64[0] = v20 + v9;
  v23.i64[1] = v20 - 0x67EBC7BE9E6FE604;
  v24.i64[0] = v20 - 0x67EBC7BE9E6FE601;
  v24.i64[1] = v20 - 0x67EBC7BE9E6FE602;
  v25 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v26 = vandq_s8(v22, v25);
  v27 = vandq_s8(v21, v25);
  v28 = vdupq_n_s64(0x38uLL);
  v29 = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  v30 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v26, 0x38uLL), v26, 8uLL), v29);
  v31 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v27, 0x38uLL), v27, 8uLL), v29);
  v32 = v29;
  v33 = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  v34 = veorq_s8(v31, v33);
  v35 = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  *&STACK[0x2B0] = v35;
  v36 = veorq_s8(v30, v33);
  v37 = veorq_s8(v30, v35);
  v38 = veorq_s8(v31, v35);
  v512 = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  v39 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL), v37), v512);
  v40 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL), v38), v512);
  v41 = veorq_s8(v40, vsraq_n_u64(vshlq_n_s64(v38, 3uLL), v38, 0x3DuLL));
  v42 = veorq_s8(v39, vsraq_n_u64(vshlq_n_s64(v37, 3uLL), v37, 0x3DuLL));
  v43 = vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL);
  v44 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL), v42);
  v45 = vaddq_s64(v43, v41);
  v46 = vdupq_n_s64(0x444F902103838ADEuLL);
  *&STACK[0x2C0] = v46;
  v511 = vdupq_n_s64(0x5DD837EF7E3E3A91uLL);
  v47 = vdupq_n_s64(0x578539A934117766uLL);
  v48 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v45, v45), v46), v45), v511), v47);
  v49 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v44, v44), v46), v44), v511), v47);
  v50 = veorq_s8(v49, vsraq_n_u64(vshlq_n_s64(v42, 3uLL), v42, 0x3DuLL));
  v51 = veorq_s8(v48, vsraq_n_u64(vshlq_n_s64(v41, 3uLL), v41, 0x3DuLL));
  v52 = vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL);
  v53 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v51);
  v54 = vdupq_n_s64(0x5963B6C555D97F1FuLL);
  v55 = veorq_s8(vaddq_s64(v52, v50), v54);
  v56 = veorq_s8(v53, v54);
  v57 = vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL);
  v58 = veorq_s8(v56, vsraq_n_u64(vshlq_n_s64(v51, 3uLL), v51, 0x3DuLL));
  v59 = veorq_s8(v55, v57);
  v60 = vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL);
  v61 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL), v59);
  v62 = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  v63 = veorq_s8(vaddq_s64(v60, v58), v62);
  v64 = veorq_s8(v61, v62);
  v65 = veorq_s8(v64, vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL));
  v66 = veorq_s8(v63, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v67 = vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL);
  v68 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v66);
  v69 = vaddq_s64(v67, v65);
  v70 = vdupq_n_s64(0x953D53DE148E1D56);
  v71 = vdupq_n_s64(a3);
  *&STACK[0x200] = v71;
  v72 = vdupq_n_s64(0x2E5DB5ED7AC3D0C7uLL);
  v73 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v69, v69), v70), v69), v71), v72);
  v74 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v68, v68), v70), v68), v71), v72);
  v75 = veorq_s8(v74, vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL));
  v76 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL));
  v77 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v78 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v76);
  v79 = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  v80 = veorq_s8(vaddq_s64(v77, v75), v79);
  v81 = veorq_s8(v78, v79);
  v82 = vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL);
  v83 = veorq_s8(v81, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v84 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), veorq_s8(v80, v82));
  v85 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), v83);
  v86 = vdupq_n_s64(0x4AC0565324D70174uLL);
  *&STACK[0x350] = v86;
  v87 = vdupq_n_s64(v12);
  v88 = vdupq_n_s64(0xE1F014810C505D35);
  v89 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v85, v86), vorrq_s8(v85, v87)), v87), v88), vnegq_s64(vandq_s8(vshlq_n_s64(v22, 3uLL), v28)));
  v90 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v84, v86), vorrq_s8(v84, v87)), v87), v88), vnegq_s64(vandq_s8(vshlq_n_s64(v21, 3uLL), v28)));
  v91 = vandq_s8(v24, v25);
  v92 = vandq_s8(v23, v25);
  v93 = v25;
  v94 = vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL);
  v95 = vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL);
  v96 = vdupq_n_s64(0x5B38AD8DDB3A7C5CuLL);
  v97 = vdupq_n_s64(0x89E752B3FB5DDBECLL);
  v98 = vdupq_n_s64(0x72900020EB4C2C24uLL);
  v99 = vaddq_s64(vsubq_s64(v95, vandq_s8(vaddq_s64(vaddq_s64(v95, v95), v96), v97)), v98);
  v100 = vaddq_s64(vsubq_s64(v94, vandq_s8(vaddq_s64(vaddq_s64(v94, v94), v96), v97)), v98);
  v101 = vdupq_n_s64(0xCF99C25E83E78D67);
  v102 = veorq_s8(v100, v101);
  v103 = veorq_s8(v99, v101);
  v104 = vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL);
  v105 = vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL);
  v106 = vdupq_n_s64(0xA37B7469EF0E7C16);
  v107 = veorq_s8(v99, v106);
  v108 = v106;
  *&STACK[0x290] = v106;
  v109 = vaddq_s64(v104, v107);
  v110 = vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL);
  v111 = veorq_s8(v100, v108);
  v112 = vaddq_s64(v105, v111);
  v113 = vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL);
  v114 = vdupq_n_s64(0xFB9714BECA2C68E9);
  v115 = veorq_s8(v112, v114);
  v116 = v114;
  *&STACK[0x2A0] = v114;
  v117 = veorq_s8(v115, v113);
  v118 = vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL);
  v119 = veorq_s8(v109, v116);
  v120 = veorq_s8(v119, v110);
  v121 = vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL);
  v122 = vaddq_s64(v118, v117);
  v123 = vdupq_n_s64(0x5ABE700122B28302uLL);
  v124 = vaddq_s64(v121, v120);
  *&STACK[0x250] = v123;
  v125 = vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL);
  v126 = vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL);
  v127 = vdupq_n_s64(0xD2A0C7FF6EA6BE7FLL);
  v128 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v124, v124), v123), v124), v127);
  *&STACK[0x280] = v127;
  v129 = vdupq_n_s64(0x90D044FD8F5ED69ALL);
  v130 = veorq_s8(v128, v129);
  v131 = v129;
  *&STACK[0x340] = v129;
  v132 = veorq_s8(v130, v126);
  v133 = vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL);
  v134 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v122, v122), v123), v122), v127), v131);
  v135 = veorq_s8(v134, v125);
  v136 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v135);
  v137 = vdupq_n_s64(0xA11B1487180DD3BBLL);
  *&STACK[0x320] = v137;
  v138 = vdupq_n_s64(v13);
  v139 = vsubq_s64(vorrq_s8(v136, v137), vorrq_s8(v136, v138));
  v140 = vaddq_s64(v133, v132);
  v141 = vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL);
  v142 = vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL);
  v143 = vaddq_s64(vsubq_s64(vorrq_s8(v140, v137), vorrq_s8(v140, v138)), v138);
  v144 = v138;
  *&STACK[0x2E0] = v138;
  v145 = vdupq_n_s64(0x5C9047B9C167908FuLL);
  v146 = veorq_s8(v143, v145);
  v147 = v145;
  *&STACK[0x2F0] = v145;
  v148 = veorq_s8(v146, v142);
  v149 = vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL);
  v150 = veorq_s8(vaddq_s64(v139, v144), v147);
  v151 = veorq_s8(v150, v141);
  v152 = vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL);
  v153 = vaddq_s64(v149, v148);
  v154 = vdupq_n_s64(0x2FB8FA78C5363E4uLL);
  *&STACK[0x330] = v154;
  v155 = vsubq_s64(v153, vandq_s8(vaddq_s64(v153, v153), v154));
  v156 = vaddq_s64(v152, v151);
  v157 = vsubq_s64(v156, vandq_s8(vaddq_s64(v156, v156), v154));
  v158 = vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL);
  v159 = vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL);
  v160 = vdupq_n_s64(0x817DC7D3C629B1F2);
  v161 = vaddq_s64(v157, v160);
  *&STACK[0x270] = v160;
  v162 = vdupq_n_s64(0x8BBA1DD6A2E83279);
  v163 = veorq_s8(v161, v162);
  v164 = v162;
  *&STACK[0x310] = v162;
  v165 = veorq_s8(v163, v159);
  v166 = vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL);
  v167 = veorq_s8(vaddq_s64(v155, v160), v164);
  v168 = veorq_s8(v167, v158);
  v169 = vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL);
  v170 = vaddq_s64(v166, v165);
  v171 = vdupq_n_s64(0x138A00D81D9F80FEuLL);
  *&STACK[0x300] = v171;
  v172 = vsubq_s64(v170, vandq_s8(vaddq_s64(v170, v170), v171));
  v173 = vaddq_s64(v169, v168);
  v174 = vsubq_s64(v173, vandq_s8(vaddq_s64(v173, v173), v171));
  v175 = vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL);
  v176 = vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL);
  v177 = vdupq_n_s64(0x9C5006C0ECFC07FuLL);
  v178 = vaddq_s64(v174, v177);
  *&STACK[0x260] = v177;
  v179 = vdupq_n_s64(0x6855A70E70B2CB06uLL);
  v180 = veorq_s8(v178, v179);
  v181 = v179;
  *&STACK[0x2D0] = v179;
  v182 = veorq_s8(v180, v176);
  v183 = vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL);
  v184 = veorq_s8(vaddq_s64(v172, v177), v181);
  v185 = veorq_s8(v184, v175);
  v186 = vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL);
  v187 = vaddq_s64(v183, v182);
  v188 = vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL);
  v189 = vaddq_s64(v186, v185);
  v190 = vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL);
  v191 = vdupq_n_s64(0x8E4D6ECA343D275ELL);
  v192 = veorq_s8(v189, v191);
  v193 = v191;
  *&STACK[0x360] = v191;
  v194 = veorq_s8(v192, v190);
  v195 = vsraq_n_u64(vshlq_n_s64(v192, 0x38uLL), v192, 8uLL);
  v196 = veorq_s8(v187, v193);
  v197 = vaddq_s64(v195, v194);
  v198 = vdupq_n_s64(a2);
  *&STACK[0x210] = v198;
  v515.val[3] = veorq_s8(vshlq_u64(veorq_s8(v197, v198), vnegq_s64(vandq_s8(vshlq_n_s64(v23, 3uLL), v28))), v90);
  v515.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v196, 0x38uLL), v196, 8uLL), veorq_s8(v196, v188)), v198), vnegq_s64(vandq_s8(vshlq_n_s64(v24, 3uLL), v28))), v89);
  v195.i64[0] = v11 + v18 - 1;
  v195.i64[1] = v11 + v18 - 2;
  v199 = vandq_s8(v195, v93);
  v200 = v32;
  *&STACK[0x220] = v32;
  v201 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL), v32);
  v202 = v33;
  v203 = veorq_s8(v201, v33);
  v204 = *&STACK[0x2B0];
  v205 = *&STACK[0x2C0];
  v206 = veorq_s8(v201, *&STACK[0x2B0]);
  v207 = vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL);
  v208 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL), v206), v512);
  v209 = veorq_s8(v208, v207);
  v210 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL), v209);
  v211 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v210, v210), *&STACK[0x2C0]), v210), v511), v47);
  v212 = veorq_s8(v211, vsraq_n_u64(vshlq_n_s64(v209, 3uLL), v209, 0x3DuLL));
  v213 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211, 0x38uLL), v211, 8uLL), v212), v54);
  v214 = veorq_s8(v213, vsraq_n_u64(vshlq_n_s64(v212, 3uLL), v212, 0x3DuLL));
  v215 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v213, 0x38uLL), v213, 8uLL), v214), v62);
  v216 = veorq_s8(v215, vsraq_n_u64(vshlq_n_s64(v214, 3uLL), v214, 0x3DuLL));
  v217 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v215, 0x38uLL), v215, 8uLL), v216);
  v218 = *&STACK[0x200];
  v508 = v87;
  v509 = v72;
  v219 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v217, v217), v70), v217), *&STACK[0x200]), v72);
  v220 = veorq_s8(v219, vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL));
  v221 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v219, 0x38uLL), v219, 8uLL), v220), v79);
  v222 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v221, 0x38uLL), v221, 8uLL), veorq_s8(v221, vsraq_n_u64(vshlq_n_s64(v220, 3uLL), v220, 0x3DuLL)));
  v223 = vaddq_s64(vsubq_s64(vorrq_s8(v222, *&STACK[0x350]), vorrq_s8(v222, v87)), v87);
  *&STACK[0x230] = v96;
  *&STACK[0x240] = v88;
  v224 = vshlq_u64(veorq_s8(v223, v88), vnegq_s64(vandq_s8(vshlq_n_s64(v195, 3uLL), v28)));
  v223.i64[0] = v20 + v17;
  v223.i64[1] = v20 - 0x67EBC7BE9E6FE5FELL;
  v225 = vandq_s8(v223, v93);
  v226 = vsraq_n_u64(vshlq_n_s64(v225, 0x38uLL), v225, 8uLL);
  v513 = v101;
  v227 = vaddq_s64(vsubq_s64(v226, vandq_s8(vaddq_s64(vaddq_s64(v226, v226), v96), v97)), v98);
  v228 = veorq_s8(v227, v101);
  v229 = veorq_s8(v227, *&STACK[0x290]);
  v230 = vsraq_n_u64(vshlq_n_s64(v229, 3uLL), v229, 0x3DuLL);
  v231 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228, 0x38uLL), v228, 8uLL), v229), *&STACK[0x2A0]);
  v232 = veorq_s8(v231, v230);
  v233 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL), v232);
  v234 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v233, v233), v123), v233), *&STACK[0x280]), *&STACK[0x340]);
  v235 = veorq_s8(v234, vsraq_n_u64(vshlq_n_s64(v232, 3uLL), v232, 0x3DuLL));
  v236 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234, 0x38uLL), v234, 8uLL), v235);
  v237 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v236, *&STACK[0x320]), vorrq_s8(v236, *&STACK[0x2E0])), *&STACK[0x2E0]), *&STACK[0x2F0]);
  v238 = veorq_s8(v237, vsraq_n_u64(vshlq_n_s64(v235, 3uLL), v235, 0x3DuLL));
  v239 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v237, 0x38uLL), v237, 8uLL), v238);
  v240 = veorq_s8(vaddq_s64(vsubq_s64(v239, vandq_s8(vaddq_s64(v239, v239), *&STACK[0x330])), *&STACK[0x270]), *&STACK[0x310]);
  v241 = veorq_s8(v240, vsraq_n_u64(vshlq_n_s64(v238, 3uLL), v238, 0x3DuLL));
  v242 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v240, 0x38uLL), v240, 8uLL), v241);
  v243 = veorq_s8(vaddq_s64(vsubq_s64(v242, vandq_s8(vaddq_s64(v242, v242), *&STACK[0x300])), *&STACK[0x260]), *&STACK[0x2D0]);
  v244 = veorq_s8(v243, vsraq_n_u64(vshlq_n_s64(v241, 3uLL), v241, 0x3DuLL));
  v245 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v243, 0x38uLL), v243, 8uLL), v244), *&STACK[0x360]);
  v515.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v245, 0x38uLL), v245, 8uLL), veorq_s8(v245, vsraq_n_u64(vshlq_n_s64(v244, 3uLL), v244, 0x3DuLL))), *&STACK[0x210]), vnegq_s64(vandq_s8(vshlq_n_s64(v223, 3uLL), v28))), v224);
  v246 = (v19 - 2074) | 0x1000u;
  v223.i64[0] = v11 + v18 - 3;
  v223.i64[1] = v11 + v18 - 4660 + v246;
  v247 = vandq_s8(v223, v93);
  v248 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v247, 0x38uLL), v247, 8uLL), v200);
  v249 = veorq_s8(v248, v202);
  v250 = veorq_s8(v248, v204);
  v251 = vsraq_n_u64(vshlq_n_s64(v250, 3uLL), v250, 0x3DuLL);
  v252 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v249, 0x38uLL), v249, 8uLL), v250), v512);
  v253 = veorq_s8(v252, v251);
  v254 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v252, 0x38uLL), v252, 8uLL), v253);
  v255 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v254, v254), v205), v254), v511), v47);
  v256 = veorq_s8(v255, vsraq_n_u64(vshlq_n_s64(v253, 3uLL), v253, 0x3DuLL));
  v257 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v255, 0x38uLL), v255, 8uLL), v256), v54);
  v258 = veorq_s8(v257, vsraq_n_u64(vshlq_n_s64(v256, 3uLL), v256, 0x3DuLL));
  v259 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v257, 0x38uLL), v257, 8uLL), v258), v62);
  v260 = veorq_s8(v259, vsraq_n_u64(vshlq_n_s64(v258, 3uLL), v258, 0x3DuLL));
  v261 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v259, 0x38uLL), v259, 8uLL), v260);
  v262 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v261, v261), v70), v261), v218), v72);
  v263 = veorq_s8(v262, vsraq_n_u64(vshlq_n_s64(v260, 3uLL), v260, 0x3DuLL));
  v264 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v262, 0x38uLL), v262, 8uLL), v263), v79);
  v265 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v264, 0x38uLL), v264, 8uLL), veorq_s8(v264, vsraq_n_u64(vshlq_n_s64(v263, 3uLL), v263, 0x3DuLL)));
  v264.i64[0] = v20 - 0x67EBC7BE9E6FE5FFLL;
  v264.i64[1] = v20 - 0x67EBC7BE9E6FF830 + v246;
  v266 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v265, *&STACK[0x350]), vorrq_s8(v265, v87)), v87), v88);
  v267 = v28;
  v268 = vshlq_u64(v266, vnegq_s64(vandq_s8(vshlq_n_s64(v223, 3uLL), v28)));
  v269 = vandq_s8(v264, v93);
  v270 = vsraq_n_u64(vshlq_n_s64(v269, 0x38uLL), v269, 8uLL);
  v271 = vaddq_s64(vsubq_s64(v270, vandq_s8(vaddq_s64(vaddq_s64(v270, v270), v96), v97)), v98);
  v272 = veorq_s8(v271, v513);
  v273 = veorq_s8(v271, *&STACK[0x290]);
  v274 = vsraq_n_u64(vshlq_n_s64(v273, 3uLL), v273, 0x3DuLL);
  v275 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v272, 0x38uLL), v272, 8uLL), v273), *&STACK[0x2A0]);
  v276 = veorq_s8(v275, v274);
  v277 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v275, 0x38uLL), v275, 8uLL), v276);
  v278 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v277, v277), *&STACK[0x250]), v277), *&STACK[0x280]), *&STACK[0x340]);
  v279 = veorq_s8(v278, vsraq_n_u64(vshlq_n_s64(v276, 3uLL), v276, 0x3DuLL));
  v280 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v278, 0x38uLL), v278, 8uLL), v279);
  v281 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v280, *&STACK[0x320]), vorrq_s8(v280, *&STACK[0x2E0])), *&STACK[0x2E0]), *&STACK[0x2F0]);
  v282 = veorq_s8(v281, vsraq_n_u64(vshlq_n_s64(v279, 3uLL), v279, 0x3DuLL));
  v283 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v281, 0x38uLL), v281, 8uLL), v282);
  v284 = veorq_s8(vaddq_s64(vsubq_s64(v283, vandq_s8(vaddq_s64(v283, v283), *&STACK[0x330])), *&STACK[0x270]), *&STACK[0x310]);
  v285 = veorq_s8(v284, vsraq_n_u64(vshlq_n_s64(v282, 3uLL), v282, 0x3DuLL));
  v286 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v284, 0x38uLL), v284, 8uLL), v285);
  v287 = veorq_s8(vaddq_s64(vsubq_s64(v286, vandq_s8(vaddq_s64(v286, v286), *&STACK[0x300])), *&STACK[0x260]), *&STACK[0x2D0]);
  v288 = veorq_s8(v287, vsraq_n_u64(vshlq_n_s64(v285, 3uLL), v285, 0x3DuLL));
  v289 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v287, 0x38uLL), v287, 8uLL), v288), *&STACK[0x360]);
  v515.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v289, 0x38uLL), v289, 8uLL), veorq_s8(v289, vsraq_n_u64(vshlq_n_s64(v288, 3uLL), v288, 0x3DuLL))), *&STACK[0x210]), vnegq_s64(vandq_s8(vshlq_n_s64(v264, 3uLL), v28))), v268);
  v196.i64[0] = v11 + v18 - 15;
  v196.i64[1] = v11 + v18 - 16;
  v290 = vandq_s8(v196, v93);
  v291 = vsraq_n_u64(vshlq_n_s64(v290, 0x38uLL), v290, 8uLL);
  v290.i64[0] = v11 + v18 - 13;
  v290.i64[1] = v11 + v18 - 14;
  v292 = vandq_s8(v290, v93);
  v293 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v292, 0x38uLL), v292, 8uLL), *&STACK[0x220]);
  v294 = veorq_s8(v293, v202);
  v295 = vsraq_n_u64(vshlq_n_s64(v294, 0x38uLL), v294, 8uLL);
  v296 = vaddq_s64(v291, *&STACK[0x220]);
  v297 = veorq_s8(v296, v202);
  v298 = vsraq_n_u64(vshlq_n_s64(v297, 0x38uLL), v297, 8uLL);
  v299 = veorq_s8(v293, *&STACK[0x2B0]);
  v300 = vaddq_s64(v295, v299);
  v301 = vsraq_n_u64(vshlq_n_s64(v299, 3uLL), v299, 0x3DuLL);
  v302 = veorq_s8(v296, *&STACK[0x2B0]);
  v303 = vaddq_s64(v298, v302);
  v304 = vsraq_n_u64(vshlq_n_s64(v302, 3uLL), v302, 0x3DuLL);
  v305 = veorq_s8(v303, v512);
  v306 = veorq_s8(v305, v304);
  v307 = vsraq_n_u64(vshlq_n_s64(v305, 0x38uLL), v305, 8uLL);
  v308 = veorq_s8(v300, v512);
  v309 = veorq_s8(v308, v301);
  v310 = vsraq_n_u64(vshlq_n_s64(v308, 0x38uLL), v308, 8uLL);
  v311 = vaddq_s64(v307, v306);
  v312 = vaddq_s64(v310, v309);
  v313 = vsraq_n_u64(vshlq_n_s64(v306, 3uLL), v306, 0x3DuLL);
  v314 = vsraq_n_u64(vshlq_n_s64(v309, 3uLL), v309, 0x3DuLL);
  v315 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v312, v312), *&STACK[0x2C0]), v312), v511), v47);
  v316 = veorq_s8(v315, v314);
  v317 = vsraq_n_u64(vshlq_n_s64(v315, 0x38uLL), v315, 8uLL);
  v318 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v311, v311), *&STACK[0x2C0]), v311), v511), v47);
  v319 = veorq_s8(v318, v313);
  v320 = vsraq_n_u64(vshlq_n_s64(v318, 0x38uLL), v318, 8uLL);
  v321 = vaddq_s64(v317, v316);
  v322 = vsraq_n_u64(vshlq_n_s64(v316, 3uLL), v316, 0x3DuLL);
  v323 = veorq_s8(vaddq_s64(v320, v319), v54);
  v324 = veorq_s8(v323, vsraq_n_u64(vshlq_n_s64(v319, 3uLL), v319, 0x3DuLL));
  v325 = vsraq_n_u64(vshlq_n_s64(v323, 0x38uLL), v323, 8uLL);
  v326 = veorq_s8(v321, v54);
  v327 = veorq_s8(v326, v322);
  v328 = vsraq_n_u64(vshlq_n_s64(v326, 0x38uLL), v326, 8uLL);
  v329 = vaddq_s64(v325, v324);
  v330 = vsraq_n_u64(vshlq_n_s64(v324, 3uLL), v324, 0x3DuLL);
  v331 = vaddq_s64(v328, v327);
  v332 = vsraq_n_u64(vshlq_n_s64(v327, 3uLL), v327, 0x3DuLL);
  v333 = veorq_s8(v331, v62);
  v334 = veorq_s8(v333, v332);
  v335 = vsraq_n_u64(vshlq_n_s64(v333, 0x38uLL), v333, 8uLL);
  v336 = veorq_s8(v329, v62);
  v337 = veorq_s8(v336, v330);
  v338 = vsraq_n_u64(vshlq_n_s64(v336, 0x38uLL), v336, 8uLL);
  v339 = vaddq_s64(v335, v334);
  v340 = vaddq_s64(v338, v337);
  v341 = vsraq_n_u64(vshlq_n_s64(v334, 3uLL), v334, 0x3DuLL);
  v342 = vsraq_n_u64(vshlq_n_s64(v337, 3uLL), v337, 0x3DuLL);
  v343 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v340, v340), v70), v340), *&STACK[0x200]), v509);
  v344 = veorq_s8(v343, v342);
  v345 = vsraq_n_u64(vshlq_n_s64(v343, 0x38uLL), v343, 8uLL);
  v346 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v339, v339), v70), v339), *&STACK[0x200]), v509);
  v347 = veorq_s8(v346, v341);
  v348 = vsraq_n_u64(vshlq_n_s64(v346, 0x38uLL), v346, 8uLL);
  v349 = vaddq_s64(v345, v344);
  v350 = vsraq_n_u64(vshlq_n_s64(v344, 3uLL), v344, 0x3DuLL);
  v351 = vaddq_s64(v348, v347);
  v352 = vsraq_n_u64(vshlq_n_s64(v347, 3uLL), v347, 0x3DuLL);
  v353 = veorq_s8(v351, v79);
  v354 = veorq_s8(v349, v79);
  v355 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v354, 0x38uLL), v354, 8uLL), veorq_s8(v354, v350));
  v356 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v353, 0x38uLL), v353, 8uLL), veorq_s8(v353, v352));
  v357 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v356, *&STACK[0x350]), vorrq_s8(v356, v508)), v508), *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(v290, 3uLL), v267)));
  v358 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v355, *&STACK[0x350]), vorrq_s8(v355, v508)), v508), *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(v196, 3uLL), v267)));
  v290.i64[0] = v20 - 0x67EBC7BE9E6FE60BLL;
  v290.i64[1] = v20 - 0x67EBC7BE9E6FE60CLL;
  v359 = vandq_s8(v290, v93);
  v360 = vsraq_n_u64(vshlq_n_s64(v359, 0x38uLL), v359, 8uLL);
  v359.i64[0] = v20 - 0x67EBC7BE9E6FE609;
  v359.i64[1] = v20 - 0x67EBC7BE9E6FE60ALL;
  v361 = vandq_s8(v359, v93);
  v362 = vsraq_n_u64(vshlq_n_s64(v361, 0x38uLL), v361, 8uLL);
  v363 = vaddq_s64(vsubq_s64(v362, vandq_s8(vaddq_s64(vaddq_s64(v362, v362), *&STACK[0x230]), v97)), v98);
  v364 = veorq_s8(v363, v513);
  v365 = vsraq_n_u64(vshlq_n_s64(v364, 0x38uLL), v364, 8uLL);
  v366 = vaddq_s64(vsubq_s64(v360, vandq_s8(vaddq_s64(vaddq_s64(v360, v360), *&STACK[0x230]), v97)), v98);
  v367 = veorq_s8(v366, v513);
  v368 = vsraq_n_u64(vshlq_n_s64(v367, 0x38uLL), v367, 8uLL);
  v369 = veorq_s8(v363, *&STACK[0x290]);
  v370 = vaddq_s64(v365, v369);
  v371 = vsraq_n_u64(vshlq_n_s64(v369, 3uLL), v369, 0x3DuLL);
  v372 = veorq_s8(v366, *&STACK[0x290]);
  v373 = vaddq_s64(v368, v372);
  v374 = vsraq_n_u64(vshlq_n_s64(v372, 3uLL), v372, 0x3DuLL);
  v375 = veorq_s8(v373, *&STACK[0x2A0]);
  v376 = veorq_s8(v375, v374);
  v377 = vsraq_n_u64(vshlq_n_s64(v375, 0x38uLL), v375, 8uLL);
  v378 = veorq_s8(v370, *&STACK[0x2A0]);
  v379 = veorq_s8(v378, v371);
  v380 = vsraq_n_u64(vshlq_n_s64(v378, 0x38uLL), v378, 8uLL);
  v381 = vaddq_s64(v377, v376);
  v382 = vaddq_s64(v380, v379);
  v383 = vsraq_n_u64(vshlq_n_s64(v376, 3uLL), v376, 0x3DuLL);
  v384 = vsraq_n_u64(vshlq_n_s64(v379, 3uLL), v379, 0x3DuLL);
  v385 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v382, v382), *&STACK[0x250]), v382), *&STACK[0x280]), *&STACK[0x340]);
  v386 = veorq_s8(v385, v384);
  v387 = vsraq_n_u64(vshlq_n_s64(v385, 0x38uLL), v385, 8uLL);
  v388 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v381, v381), *&STACK[0x250]), v381), *&STACK[0x280]), *&STACK[0x340]);
  v389 = veorq_s8(v388, v383);
  v390 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v388, 0x38uLL), v388, 8uLL), v389);
  v391 = vaddq_s64(v387, v386);
  v392 = vsraq_n_u64(vshlq_n_s64(v389, 3uLL), v389, 0x3DuLL);
  v393 = vsraq_n_u64(vshlq_n_s64(v386, 3uLL), v386, 0x3DuLL);
  v394 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v391, *&STACK[0x320]), vorrq_s8(v391, *&STACK[0x2E0])), *&STACK[0x2E0]), *&STACK[0x2F0]);
  v395 = veorq_s8(v394, v393);
  v396 = vsraq_n_u64(vshlq_n_s64(v394, 0x38uLL), v394, 8uLL);
  v397 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v390, *&STACK[0x320]), vorrq_s8(v390, *&STACK[0x2E0])), *&STACK[0x2E0]), *&STACK[0x2F0]);
  v398 = veorq_s8(v397, v392);
  v399 = vsraq_n_u64(vshlq_n_s64(v397, 0x38uLL), v397, 8uLL);
  v400 = vaddq_s64(v396, v395);
  v401 = vaddq_s64(v399, v398);
  v402 = vsraq_n_u64(vshlq_n_s64(v395, 3uLL), v395, 0x3DuLL);
  v403 = vsraq_n_u64(vshlq_n_s64(v398, 3uLL), v398, 0x3DuLL);
  v404 = veorq_s8(vaddq_s64(vsubq_s64(v401, vandq_s8(vaddq_s64(v401, v401), *&STACK[0x330])), *&STACK[0x270]), *&STACK[0x310]);
  v405 = veorq_s8(v404, v403);
  v406 = vsraq_n_u64(vshlq_n_s64(v404, 0x38uLL), v404, 8uLL);
  v407 = veorq_s8(vaddq_s64(vsubq_s64(v400, vandq_s8(vaddq_s64(v400, v400), *&STACK[0x330])), *&STACK[0x270]), *&STACK[0x310]);
  v408 = veorq_s8(v407, v402);
  v409 = vsraq_n_u64(vshlq_n_s64(v407, 0x38uLL), v407, 8uLL);
  v410 = vaddq_s64(v406, v405);
  v411 = vaddq_s64(v409, v408);
  v412 = vsraq_n_u64(vshlq_n_s64(v405, 3uLL), v405, 0x3DuLL);
  v413 = vsraq_n_u64(vshlq_n_s64(v408, 3uLL), v408, 0x3DuLL);
  v414 = veorq_s8(vaddq_s64(vsubq_s64(v411, vandq_s8(vaddq_s64(v411, v411), *&STACK[0x300])), *&STACK[0x260]), *&STACK[0x2D0]);
  v415 = veorq_s8(v414, v413);
  v416 = vsraq_n_u64(vshlq_n_s64(v414, 0x38uLL), v414, 8uLL);
  v417 = veorq_s8(vaddq_s64(vsubq_s64(v410, vandq_s8(vaddq_s64(v410, v410), *&STACK[0x300])), *&STACK[0x260]), *&STACK[0x2D0]);
  v418 = veorq_s8(v417, v412);
  v419 = vsraq_n_u64(vshlq_n_s64(v417, 0x38uLL), v417, 8uLL);
  v420 = vaddq_s64(v416, v415);
  v421 = vsraq_n_u64(vshlq_n_s64(v415, 3uLL), v415, 0x3DuLL);
  v422 = vaddq_s64(v419, v418);
  v423 = vsraq_n_u64(vshlq_n_s64(v418, 3uLL), v418, 0x3DuLL);
  v424 = veorq_s8(v422, *&STACK[0x360]);
  v425 = veorq_s8(v420, *&STACK[0x360]);
  v514.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v424, 0x38uLL), v424, 8uLL), veorq_s8(v424, v423)), *&STACK[0x210]), vnegq_s64(vandq_s8(vshlq_n_s64(v290, 3uLL), v267))), v358);
  v514.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v425, 0x38uLL), v425, 8uLL), veorq_s8(v425, v421)), *&STACK[0x210]), vnegq_s64(vandq_s8(vshlq_n_s64(v359, 3uLL), v267))), v357);
  v358.i64[0] = v11 + v18 - 11;
  v358.i64[1] = v11 + v18 - 12;
  v426 = vandq_s8(v358, v93);
  v427 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v426, 0x38uLL), v426, 8uLL), *&STACK[0x220]);
  v428 = veorq_s8(v427, v202);
  v429 = veorq_s8(v427, *&STACK[0x2B0]);
  v430 = vsraq_n_u64(vshlq_n_s64(v429, 3uLL), v429, 0x3DuLL);
  v431 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v428, 0x38uLL), v428, 8uLL), v429), v512);
  v432 = veorq_s8(v431, v430);
  v433 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v431, 0x38uLL), v431, 8uLL), v432);
  v434 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v433, v433), *&STACK[0x2C0]), v433), v511), v47);
  v435 = veorq_s8(v434, vsraq_n_u64(vshlq_n_s64(v432, 3uLL), v432, 0x3DuLL));
  v436 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v434, 0x38uLL), v434, 8uLL), v435), v54);
  v437 = veorq_s8(v436, vsraq_n_u64(vshlq_n_s64(v435, 3uLL), v435, 0x3DuLL));
  v438 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v436, 0x38uLL), v436, 8uLL), v437), v62);
  v439 = veorq_s8(v438, vsraq_n_u64(vshlq_n_s64(v437, 3uLL), v437, 0x3DuLL));
  v440 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v438, 0x38uLL), v438, 8uLL), v439);
  v441 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v440, v440), v70), v440), *&STACK[0x200]), v509);
  v442 = veorq_s8(v441, vsraq_n_u64(vshlq_n_s64(v439, 3uLL), v439, 0x3DuLL));
  v443 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v441, 0x38uLL), v441, 8uLL), v442), v79);
  v444 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v443, 0x38uLL), v443, 8uLL), veorq_s8(v443, vsraq_n_u64(vshlq_n_s64(v442, 3uLL), v442, 0x3DuLL)));
  v445 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v444, *&STACK[0x350]), vorrq_s8(v444, v508)), v508), *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(v358, 3uLL), v267)));
  v358.i64[0] = v20 - 0x67EBC7BE9E6FE607;
  v358.i64[1] = v20 - 0x67EBC7BE9E6FE608;
  v446 = vandq_s8(v358, v93);
  v447 = vsraq_n_u64(vshlq_n_s64(v446, 0x38uLL), v446, 8uLL);
  v448 = vaddq_s64(vsubq_s64(v447, vandq_s8(vaddq_s64(vaddq_s64(v447, v447), *&STACK[0x230]), v97)), v98);
  v449 = veorq_s8(v448, v513);
  v450 = veorq_s8(v448, *&STACK[0x290]);
  v451 = vsraq_n_u64(vshlq_n_s64(v450, 3uLL), v450, 0x3DuLL);
  v452 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v449, 0x38uLL), v449, 8uLL), v450), *&STACK[0x2A0]);
  v453 = veorq_s8(v452, v451);
  v454 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v452, 0x38uLL), v452, 8uLL), v453);
  v455 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v454, v454), *&STACK[0x250]), v454), *&STACK[0x280]), *&STACK[0x340]);
  v456 = veorq_s8(v455, vsraq_n_u64(vshlq_n_s64(v453, 3uLL), v453, 0x3DuLL));
  v457 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v455, 0x38uLL), v455, 8uLL), v456);
  v458 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v457, *&STACK[0x320]), vorrq_s8(v457, *&STACK[0x2E0])), *&STACK[0x2E0]), *&STACK[0x2F0]);
  v459 = veorq_s8(v458, vsraq_n_u64(vshlq_n_s64(v456, 3uLL), v456, 0x3DuLL));
  v460 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v458, 0x38uLL), v458, 8uLL), v459);
  v461 = veorq_s8(vaddq_s64(vsubq_s64(v460, vandq_s8(vaddq_s64(v460, v460), *&STACK[0x330])), *&STACK[0x270]), *&STACK[0x310]);
  v462 = veorq_s8(v461, vsraq_n_u64(vshlq_n_s64(v459, 3uLL), v459, 0x3DuLL));
  v463 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v461, 0x38uLL), v461, 8uLL), v462);
  v464 = veorq_s8(vaddq_s64(vsubq_s64(v463, vandq_s8(vaddq_s64(v463, v463), *&STACK[0x300])), *&STACK[0x260]), *&STACK[0x2D0]);
  v465 = veorq_s8(v464, vsraq_n_u64(vshlq_n_s64(v462, 3uLL), v462, 0x3DuLL));
  v466 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v464, 0x38uLL), v464, 8uLL), v465), *&STACK[0x360]);
  v514.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v466, 0x38uLL), v466, 8uLL), veorq_s8(v466, vsraq_n_u64(vshlq_n_s64(v465, 3uLL), v465, 0x3DuLL))), *&STACK[0x210]), vnegq_s64(vandq_s8(vshlq_n_s64(v358, 3uLL), v267))), v445);
  v358.i64[0] = v11 + v18 - 9;
  v358.i64[1] = v11 + v18 - 10;
  v467 = vandq_s8(v358, v93);
  v468 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v467, 0x38uLL), v467, 8uLL), *&STACK[0x220]);
  v469 = veorq_s8(v468, v202);
  v470 = veorq_s8(v468, *&STACK[0x2B0]);
  v471 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v469, 0x38uLL), v469, 8uLL), v470), v512);
  v472 = veorq_s8(v471, vsraq_n_u64(vshlq_n_s64(v470, 3uLL), v470, 0x3DuLL));
  v473 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v471, 0x38uLL), v471, 8uLL), v472);
  v474 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v473, v473), *&STACK[0x2C0]), v473), v511), v47);
  v475 = veorq_s8(v474, vsraq_n_u64(vshlq_n_s64(v472, 3uLL), v472, 0x3DuLL));
  v476 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v474, 0x38uLL), v474, 8uLL), v475), v54);
  v477 = veorq_s8(v476, vsraq_n_u64(vshlq_n_s64(v475, 3uLL), v475, 0x3DuLL));
  v478 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v476, 0x38uLL), v476, 8uLL), v477), v62);
  v479 = veorq_s8(v478, vsraq_n_u64(vshlq_n_s64(v477, 3uLL), v477, 0x3DuLL));
  v480 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v478, 0x38uLL), v478, 8uLL), v479);
  v481 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v480, v480), v70), v480), *&STACK[0x200]), v509);
  v482 = veorq_s8(v481, vsraq_n_u64(vshlq_n_s64(v479, 3uLL), v479, 0x3DuLL));
  v483 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v481, 0x38uLL), v481, 8uLL), v482), v79);
  v484 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v483, 0x38uLL), v483, 8uLL), veorq_s8(v483, vsraq_n_u64(vshlq_n_s64(v482, 3uLL), v482, 0x3DuLL)));
  v445.i64[0] = v20 - 0x67EBC7BE9E6FE605;
  v445.i64[1] = v20 - 0x67EBC7BE9E6FE606;
  v485 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v484, *&STACK[0x350]), vorrq_s8(v484, v508)), v508), *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(v358, 3uLL), v267)));
  v486 = vandq_s8(v445, v93);
  v487 = vsraq_n_u64(vshlq_n_s64(v486, 0x38uLL), v486, 8uLL);
  v488 = vaddq_s64(vsubq_s64(v487, vandq_s8(vaddq_s64(vaddq_s64(v487, v487), *&STACK[0x230]), v97)), v98);
  v489 = veorq_s8(v488, v513);
  v490 = veorq_s8(v488, *&STACK[0x290]);
  v491 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v489, 0x38uLL), v489, 8uLL), v490), *&STACK[0x2A0]);
  v492 = veorq_s8(v491, vsraq_n_u64(vshlq_n_s64(v490, 3uLL), v490, 0x3DuLL));
  v493 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v491, 0x38uLL), v491, 8uLL), v492);
  v494 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v493, v493), *&STACK[0x250]), v493), *&STACK[0x280]), *&STACK[0x340]);
  v495 = veorq_s8(v494, vsraq_n_u64(vshlq_n_s64(v492, 3uLL), v492, 0x3DuLL));
  v496 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v494, 0x38uLL), v494, 8uLL), v495);
  v497 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v496, *&STACK[0x320]), vorrq_s8(v496, *&STACK[0x2E0])), *&STACK[0x2E0]), *&STACK[0x2F0]);
  v498 = veorq_s8(v497, vsraq_n_u64(vshlq_n_s64(v495, 3uLL), v495, 0x3DuLL));
  v499 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v497, 0x38uLL), v497, 8uLL), v498);
  v500 = veorq_s8(vaddq_s64(vsubq_s64(v499, vandq_s8(vaddq_s64(v499, v499), *&STACK[0x330])), *&STACK[0x270]), *&STACK[0x310]);
  v501 = veorq_s8(v500, vsraq_n_u64(vshlq_n_s64(v498, 3uLL), v498, 0x3DuLL));
  v502 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v500, 0x38uLL), v500, 8uLL), v501);
  v503 = veorq_s8(vaddq_s64(vsubq_s64(v502, vandq_s8(vaddq_s64(v502, v502), *&STACK[0x300])), *&STACK[0x260]), *&STACK[0x2D0]);
  v504 = veorq_s8(v503, vsraq_n_u64(vshlq_n_s64(v501, 3uLL), v501, 0x3DuLL));
  v505 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v503, 0x38uLL), v503, 8uLL), v504), *&STACK[0x360]);
  v514.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v505, 0x38uLL), v505, 8uLL), veorq_s8(v505, vsraq_n_u64(vshlq_n_s64(v504, 3uLL), v504, 0x3DuLL))), *&STACK[0x210]), vnegq_s64(vandq_s8(vshlq_n_s64(v445, 3uLL), v267))), v485);
  v505.i64[0] = vqtbl4q_s8(v515, xmmword_1009E3440).u64[0];
  v505.i64[1] = vqtbl4q_s8(v514, xmmword_1009E3440).u64[0];
  v506 = vrev64q_s8(v505);
  *(v20 - 0x67EBC7BE9E6FE60CLL) = veorq_s8(vextq_s8(v506, v506, 8uLL), v510);
  return (*(v16 + 8 * ((6443 * ((v18 & 0xFFFFFFF0) == 16)) ^ (v19 + 1308))))(0xE1AFA7ACF6E0968ELL);
}

uint64_t sub_1001BB5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, int a13, unsigned int a14, uint64_t a15, char *a16, unsigned int a17, unsigned int a18)
{
  v22 = (((&a13 | 0xED5A087A) - (&a13 & 0xED5A087A)) ^ 0xB533DB18) * v18;
  a17 = -654855621 - v22;
  a18 = v22 + v21 + 1674571470;
  a14 = v22 - 1659501;
  a15 = a11;
  a16 = &a10;
  v23 = (*(v19 + 8 * (v21 ^ 0x3854)))(&a13);
  return (*(v19 + 8 * (((a13 == v20) * ((v21 ^ 0x144E) + 13627)) ^ v21)))(v23);
}

uint64_t sub_1001BB70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, uint64_t a14, char a15, int a16, int a17, char a18, uint64_t a19, int a20, unsigned int a21, uint64_t a22, char *a23, unsigned int a24, char *a25)
{
  a25 = &a15;
  a24 = (v25 + 1525) ^ (1710126949 * ((&a20 & 0x4B89DAD6 | ~(&a20 | 0x4B89DAD6)) ^ 0x866D7EB9));
  a22 = a14;
  a23 = &a18;
  (*(v26 + 8 * (v25 ^ 0x227E)))(&a20);
  a22 = a14;
  a23 = &a12;
  a21 = (v25 + 1419) ^ (33731311 * ((&a20 & 0x278901B0 | ~(&a20 | 0x278901B0)) ^ 0xE180346C));
  (*(v26 + 8 * (v25 ^ 0x2278)))(&a20);
  LODWORD(a23) = v25 - 2008441969 * ((&a20 + 529290510 - 2 * (&a20 & 0x1F8C550E)) ^ 0x57150100) + 3852;
  a22 = a14;
  v27 = (*(v26 + 8 * (v25 ^ 0x228A)))(&a20);
  return (*(v26 + 8 * ((6326 * (a20 == ((v25 + 458) ^ 0xF81B14))) ^ v25)))(v27);
}

uint64_t sub_1001BB870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&STACK[0x220] = vdupq_n_s64(0x38uLL);
  *&STACK[0x390] = vdupq_n_s64(0x1508DCB2F33ECE2BuLL);
  *&STACK[0x3A0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x370] = vdupq_n_s64(0x6AF7234D0CC131D4uLL);
  *&STACK[0x380] = vdupq_n_s64(0xE79B7CAD81EAE601);
  *&STACK[0x360] = vdupq_n_s64(0x186483527E1519FEuLL);
  *&STACK[0x310] = vdupq_n_s64(0x518DC1691103FE2CuLL);
  *&STACK[0x320] = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
  *&STACK[0x2F0] = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  *&STACK[0x300] = vdupq_n_s64(0xF9CB24FE88F58F70);
  *&STACK[0x2D0] = vdupq_n_s64(0xD8E8834EF9F28923);
  *&STACK[0x2E0] = vdupq_n_s64(0x4E2EF9620C1AEDB8uLL);
  *&STACK[0x2B0] = vdupq_n_s64(v5);
  *&STACK[0x2C0] = vdupq_n_s64(0x2D4A72F74C223B2AuLL);
  *&STACK[0x340] = vdupq_n_s64(0xF8C32E29FF588391);
  *&STACK[0x350] = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  *&STACK[0x330] = vdupq_n_s64(0x71C80D200006C20uLL);
  *&STACK[0x290] = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  *&STACK[0x2A0] = vdupq_n_s64(0x9BDDB8F1D8DC304DLL);
  *&STACK[0x280] = vdupq_n_s64(0xAB3042D228875C41);
  *&STACK[0x210] = xmmword_1009E3440;
  return sub_1001B8858(a1, a2, a3, 0xE79B7CAD81EAE601, a5);
}

uint64_t sub_1001BBAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = v4;
  a4[1] = v4;
  return sub_10017D8D8(a1, a2, a3);
}

uint64_t sub_1001BBB14@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(v2 + v6);
  return (*(v5 + 8 * (((v6 == 0) * (((v4 + 1206706767) & 0x7AEA3BF9) - 2790)) ^ (v4 + a2))))();
}

uint64_t sub_1001BBCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = v8 - 1;
  *(a6 + v11) = *(v6 + v11);
  return (*(v10 + 8 * ((57 * (v11 == (((v9 + v7 + 1668) | 0x80u) ^ 0x24DELL))) ^ (v9 + v7))))();
}

uint64_t sub_1001BBCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, int a12, unsigned int a13, uint64_t a14, char *a15, unsigned int a16, unsigned int a17)
{
  v24 = (&a12 ^ v17) * v20;
  a13 = v24 - 1218044670;
  a16 = -654855621 - v24;
  a17 = v24 + v23 + 1674573002;
  a14 = a9;
  a15 = &a10;
  v25 = (*(v18 + 8 * (v23 + 3496)))(&a12);
  return (*(v18 + 8 * (((a12 == v22) * ((v21 - v19 - 3397) ^ 0x1C3)) ^ v23)))(v25);
}

uint64_t sub_1001BBD84@<X0>(int a1@<W6>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = LODWORD(STACK[0x350]);
  if (v69 == 17168)
  {
    return (*(a65 + 8 * (a1 ^ (2742 * (a2 == v66 + 4)))))();
  }

  if (v69 == 20706 || (v71 = v67, v69 == 33980))
  {
    STACK[0x6C0] = v65;
    v68 = 16215638;
    v71 = v67;
  }

  return (*(a65 + 8 * ((((v71 - 5865) ^ ((v71 + 2741) | 0x35) ^ 0x39EA) * (v68 == 16257999)) ^ (v71 - 4925))))();
}

void sub_1001BBE74(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, int a6@<W7>, unint64_t a7@<X8>)
{
  STACK[0x288] = v10;
  v13 = (((v8 + 0x5FBEFFFFFFF72050 + v7) & (2 * a7)) + (a7 ^ 0xAFDF7FFFFFFB9577) + a3 + 0x5020800000046A89);
  v14 = (*v13 << 24) | (v13[1] << 16) | (v13[2] << 8);
  v15 = (v14 | v13[3]) + v11 - 2 * ((v14 | v13[3]) & v9 ^ v13[3] & 0xC);
  LOWORD(v14) = _byteswap_ushort(*(((2 * (a7 + 4)) & 0x7B766973FFF7F5AELL) + ((a7 + 4) ^ 0x7DBB34B9FFFBFAD7) + a3 - 0x7DBB34B9FFFBFAD7));
  v16 = (v14 - 2 * (v14 & 0x3E9E ^ *(((2 * (a7 + 4)) & 0x7B766973FFF7F5AELL) + ((a7 + 4) ^ 0x7DBB34B9FFFBFAD7) + a3 - 0x7DBB34B9FFFBFAD6) & 0xA) + 16023);
  switch(v16)
  {
    case 28242:
      v20 = *(a5 + 8 * ((((a6 - 1125691320) & 0x4318AB7F ^ 0x2816) * (v15 == v11)) ^ (a6 + 1170)));
      LODWORD(STACK[0x25C]) = 16257999;
      v20(a1, a2, a3, a4);
      break;
    case 47636:
      v19 = *(a5 + 8 * ((((a6 - 1073032028) & 0x3FF52FED ^ 0x1B62) * (v12 == v11 + 8)) ^ (a6 + 50)));
      STACK[0x2A8] = a3;
      v19();
      break;
    case 43494:
      v17 = v12 == (a6 ^ 0xCAE ^ (v11 - 2205));
      v18 = *(a5 + 8 * ((32 * v17) | (v17 << 8) | (a6 + 4873)));
      STACK[0x2A8] = a3;
      v18();
      break;
    default:
      STACK[0x2A8] = a3;
      sub_100164A8C(a1, a7);
      break;
  }
}

uint64_t sub_1001BC0BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (a1 + v2 - 16);
  v7 = (a2 + v2 - 16);
  v8 = *v7;
  *(v6 - 1) = *(v7 - 1);
  *v6 = v8;
  return (*(v5 + 8 * ((((v2 & 0xFFFFFFE0) == 32) * ((v3 + 892161538) ^ 0x3854)) ^ (v4 + v3 + 1179))))();
}

uint64_t sub_1001BC144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a3 + a1;
  v10 = a3 - 1;
  *(v5 + v10) = *(v6 + v10) ^ *(v7 + v10) ^ (47 * v10) ^ *(v9 + 3) ^ *(v3 + v10) ^ 0x3C;
  return (*(v8 + 8 * (((v10 == 0) * (v4 + 8812)) ^ v4)))();
}

uint64_t sub_1001BC19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, unsigned int a14, int a15, uint64_t a16)
{
  v20 = 1875091903 * ((2 * (&a13 & 0x11E3E2E0) - &a13 + 1847336223) ^ 0x58699E9C);
  a16 = a11;
  a14 = (v16 ^ 0x2A9EF7BE) + ((v16 << ((2 * ((v19 + 66) ^ 0x91)) ^ 0x9B)) & 0x553DEF7C) - 176308500 + v20;
  a15 = v20 + v19 + 4418 + 80;
  v21 = (*(v17 + 8 * (v19 + 6419)))(&a13);
  return (*(v17 + 8 * ((1002 * (a13 == v18)) ^ (v19 + 4418))))(v21);
}

uint64_t sub_1001BC284@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v59 = 7 * (a1 ^ 0x94C);
  v60 = *(v58 + 8 * v57);
  v61 = a1 + 6063;
  STACK[0x728] = v60;
  v62 = (*(v58 + 8 * (a1 ^ 0x2FE8)))(112, 0x100004098D10E67);
  STACK[0x408] = v62;
  return (*(a57 + 8 * (((v62 == 0) * (v59 ^ 0x16D9)) ^ v61)))();
}

uint64_t sub_1001BC35C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = v4 + (v5 ^ (v3 + 1621)) - 2715;
  *(a1 + v7) = *(a2 + v7);
  return (*(v6 + 8 * (((v7 == 0) << 8) | ((v7 == 0) << 12) | (v2 + v5 + 1691))))();
}

uint64_t sub_1001BC504()
{
  v2 = *(STACK[0x7D8] + 24);
  STACK[0x398] = v2;
  return (*(v1 + 8 * (((v2 != 0) * (((v0 + 3453) ^ 0xFFFFE982) + (v0 ^ 0x491))) ^ v0)))();
}

uint64_t sub_1001BC550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v65 = *(STACK[0x778] + 24);
  v66 = __ROR8__((v65 + 10) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5;
  v67 = __ROR8__(v66 ^ 0x49E9423B6F16E7D2, 8);
  v66 ^= 0xE1AFA7ACF6E0968ELL;
  v68 = __ROR8__((v67 + v66) ^ 0xE49D77DF873DBF7ELL, 8);
  v69 = (v67 + v66) ^ 0xE49D77DF873DBF7ELL ^ __ROR8__(v66, 61);
  v70 = (v68 + v69) ^ 0xF5A2F1B9B5D0B209;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = __ROR8__(v70, 8);
  v73 = (v72 + v71 - ((2 * (v72 + v71)) & 0x512B57FB6494046ALL) + 0x2895ABFDB24A0235) ^ 0x71F61D38E7937D2ALL;
  v74 = v73 ^ __ROR8__(v71, 61);
  v75 = (__ROR8__(v73, 8) + v74) ^ 0x61459D2AF01F24F7;
  v76 = v75 ^ __ROR8__(v74, 61);
  v77 = __ROR8__(v75, 8);
  v78 = (v64 + 2612) ^ STACK[0x9A8] ^ 0x32B9C33CFFC0C79FLL;
  v79 = *(a64 + 8 * v64);
  v80 = (((v77 + v76) ^ 0x79C11BFC4894BC72 | 0xC3906BA06D3A2EC5) - ((v77 + v76) ^ 0x79C11BFC4894BC72 | 0x3C6F945F92C5D13ALL) + 0x3C6F945F92C5D13ALL) ^ 0xDE926C5E552A4CDBLL;
  v81 = v80 ^ __ROR8__(v76, 61);
  v82 = (__ROR8__(v80, 8) + v81) ^ 0x1A2AEBE44253AF03;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = __ROR8__(v82, 8);
  v65[10] = (((((2 * (v84 + v83)) | 0xC38C36871CFCF294) - (v84 + v83) - 0x61C61B438E7E794ALL) ^ 0xCAF65991A6F9250BLL) >> (8 * ((v65 + 10) & 7u))) ^ HIBYTE(v78) ^ 0x75;
  v85 = __ROR8__((v65 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v86 = v85 - ((2 * v85 + 0x2A11B965E67D9C56) & 0x89AD15096A95E46ELL) - 0x262098C857763F9ELL;
  v87 = v86 ^ 0xD3FC8BFDA5C15E5;
  v86 ^= 0xA5792D2843AA64B9;
  v88 = __ROR8__(v87, 8);
  v89 = (((2 * (v88 + v86)) & 0x172EA68DBB7EC94) - (v88 + v86) + 0x7F468ACB922409B5) ^ 0x9BDBFD141519B6CBLL;
  v90 = v89 ^ __ROR8__(v86, 61);
  v91 = __ROR8__(v89, 8);
  v92 = (((2 * (v91 + v90)) & 0xD4F2B43A3958542) - (v91 + v90) - 0x6A795A1D1CAC2A2) ^ 0xCFA9BE79BE58F57;
  v93 = v92 ^ __ROR8__(v90, 61);
  v94 = (__ROR8__(v92, 8) + v93) ^ 0x5963B6C555D97F1FLL;
  v95 = v94 ^ __ROR8__(v93, 61);
  v96 = __ROR8__(v94, 8);
  v97 = (((v96 + v95) | 0x3A57A17B6EDF06BLL) - ((v96 + v95) | 0xFC5A85E849120F94) - 0x3A57A17B6EDF06CLL) ^ 0x62E0E73D46F2D49CLL;
  v98 = v97 ^ __ROR8__(v95, 61);
  v99 = (__ROR8__(v97, 8) + v98) ^ 0x64C31C027084DE6CLL;
  v100 = __ROR8__(v99, 8);
  v101 = v99 ^ __ROR8__(v98, 61);
  v102 = (((v100 + v101) | 0x3F31863D75651161) - ((v100 + v101) | 0xC0CE79C28A9AEE9ELL) - 0x3F31863D75651162) ^ 0x251B6DD93736BE62;
  v103 = __ROR8__(v102, 8);
  v104 = __ROR8__(v101, 61);
  v65[11] = (((((2 * (v103 + (v102 ^ v104))) | 0xAB41BFF64D60CE6CLL) - (v103 + (v102 ^ v104)) - 0x55A0DFFB26B06736) ^ 0xFE909D290E373B77) >> (8 * ((v65 + 11) & 7u))) ^ BYTE6(v78) ^ 0x30;
  v105 = (__ROR8__((v65 + 12) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5) & 0xFBFFFFFFFFFFFFFFLL;
  v106 = __ROR8__(v105 ^ 0x4DE9423B6F16E7D2, 8);
  v105 ^= 0xE5AFA7ACF6E0968ELL;
  v107 = (v106 + v105 - ((2 * (v106 + v105)) & 0xA684DABE1F7F2120) - 0x2CBD92A0F0406F70) ^ 0x37DF1A8088822FEELL;
  v108 = v107 ^ __ROR8__(v105, 61);
  v109 = __ROR8__(v107, 8);
  v110 = (((v109 + v108) | 0x2D1013F9AFD52057) - ((v109 + v108) | 0xD2EFEC06502ADFA8) - 0x2D1013F9AFD52058) ^ 0xD8B2E2401A05925ELL;
  v111 = v110 ^ __ROR8__(v108, 61);
  v112 = (__ROR8__(v110, 8) + v111) ^ 0x5963B6C555D97F1FLL;
  v113 = v112 ^ __ROR8__(v111, 61);
  v114 = __ROR8__(v112, 8);
  v115 = (v114 + v113 - ((2 * (v114 + v113)) & 0x505C9B69C721B602) + 0x282E4DB4E390DB01) ^ 0x496BD09E138FFFF6;
  v116 = v115 ^ __ROR8__(v113, 61);
  v117 = (__ROR8__(v115, 8) + v116) ^ 0x64C31C027084DE6CLL;
  v118 = v117 ^ __ROR8__(v116, 61);
  v119 = (__ROR8__(v117, 8) + v118) ^ 0x1A2AEBE44253AF03;
  v120 = v119 ^ __ROR8__(v118, 61);
  v121 = __ROR8__(v119, 8);
  v65[12] = (((((2 * (v121 + v120)) & 0xA6AF603E61524BD2) - (v121 + v120) + 0x2CA84FE0CF56DA16) ^ 0x87980D32E7D18657) >> (8 * ((v65 + 12) & 7u))) ^ BYTE5(v78) ^ 0x26;
  v122 = __ROR8__((v65 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v123 = ((2 * (v122 - 0x6AF7234D0CC131D5)) | 0xBCD338F7A72AF0E2) - (v122 - 0x6AF7234D0CC131D5) - 0x5E699C7BD3957871;
  v124 = v123 ^ 0x1780DE40BC839FA3;
  v123 ^= 0xBFC63BD72575EEFFLL;
  v125 = __ROR8__(v124, 8);
  v126 = (((v125 + v123) | 0x524D786A2DAA5236) - ((v125 + v123) | 0xADB28795D255ADC9) - 0x524D786A2DAA5237) ^ 0xB6D00FB5AA97ED48;
  v127 = v126 ^ __ROR8__(v123, 61);
  v128 = __ROR8__(v126, 8);
  v129 = (((2 * (v128 + v127)) | 0xC461725543BD74EALL) - (v128 + v127) - 0x6230B92AA1DEBA75) ^ 0x97924893140E087CLL;
  v130 = v129 ^ __ROR8__(v127, 61);
  v131 = (__ROR8__(v129, 8) + v130) ^ 0x5963B6C555D97F1FLL;
  v132 = v131 ^ __ROR8__(v130, 61);
  v133 = (__ROR8__(v131, 8) + v132) ^ 0x61459D2AF01F24F7;
  v134 = v133 ^ __ROR8__(v132, 61);
  v135 = __ROR8__(v133, 8);
  v136 = (((v135 + v134) | 0xD6A77E9273FF605BLL) - ((v135 + v134) | 0x2958816D8C009FA4) + 0x2958816D8C009FA4) ^ 0xB2646290037BBE37;
  v137 = v136 ^ __ROR8__(v134, 61);
  v138 = __ROR8__(v136, 8);
  v139 = (v138 + v137 - ((2 * (v138 + v137)) & 0x9E7D2340626A9232) - 0x30C16E5FCECAB6E7) ^ 0xD5147A447366E61ALL;
  v65[13] = (((__ROR8__(v139, 8) + (v139 ^ __ROR8__(v137, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v65 + 13) & 7u))) ^ BYTE4(v78) ^ 0x9B;
  v140 = __ROR8__((v65 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v141 = v140 - ((2 * v140 + 0x2A11B965E67D9C56) & 0x20559374910370F8) - 0x5ACC5992C43F7959;
  v142 = v141 ^ 0x59C38B8127975FAELL;
  v141 ^= 0xF1856E16BE612EF2;
  v143 = (__ROR8__(v142, 8) + v141) ^ 0xE49D77DF873DBF7ELL;
  v144 = v143 ^ __ROR8__(v141, 61);
  v145 = (__ROR8__(v143, 8) + v144) ^ 0xF5A2F1B9B5D0B209;
  v146 = v145 ^ __ROR8__(v144, 61);
  v147 = (__ROR8__(v145, 8) + v146) ^ 0x5963B6C555D97F1FLL;
  v148 = v147 ^ __ROR8__(v146, 61);
  v149 = __ROR8__(v147, 8);
  v150 = __ROR8__((v149 + v148 - ((2 * (v149 + v148)) & 0xF9BA02E111CAE97ALL) + 0x7CDD017088E574BDLL) ^ 0x1D989C5A78FA504ALL, 8);
  v151 = (v149 + v148 - ((2 * (v149 + v148)) & 0xF9BA02E111CAE97ALL) + 0x7CDD017088E574BDLL) ^ 0x1D989C5A78FA504ALL ^ __ROR8__(v148, 61);
  v152 = (v150 + v151 - ((2 * (v150 + v151)) & 0xBB2E9B3140AA9E2CLL) + 0x5D974D98A0554F16) ^ 0x3954519AD0D1917ALL;
  v153 = v152 ^ __ROR8__(v151, 61);
  v154 = (__ROR8__(v152, 8) + v153) ^ 0x1A2AEBE44253AF03;
  v155 = v154 ^ __ROR8__(v153, 61);
  v156 = __ROR8__(v154, 8);
  v65[14] = (((((v156 + v155) | 0x6B6AF9C6B406ECE7) - ((v156 + v155) | 0x949506394BF91318) - 0x6B6AF9C6B406ECE8) ^ 0xC05ABB149C81B0A6) >> (8 * ((v65 + 14) & 7u))) ^ BYTE3(v78) ^ 0xB0;
  v157 = __ROR8__((v65 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v158 = ((v157 - 0x6AF7234D0CC131D5) & 0xF89A3C6BA21CFB5FLL ^ 0x40000C09A010C112) + ((v157 - 0x6AF7234D0CC131D5) ^ 0xB9DB32660AEF3ECDLL) - (((v157 - 0x6AF7234D0CC131D5) ^ 0xB9DB32660AEF3ECDLL) & 0xF89A3C6BA21CFB5FLL);
  v159 = v158 ^ 0x8A84C36C7E52240;
  v158 ^= 0xA0EEA9A15E13531CLL;
  v160 = (__ROR8__(v159, 8) + v158) ^ 0xE49D77DF873DBF7ELL;
  v161 = v160 ^ __ROR8__(v158, 61);
  v162 = (__ROR8__(v160, 8) + v161) ^ 0xF5A2F1B9B5D0B209;
  v163 = v162 ^ __ROR8__(v161, 61);
  v164 = __ROR8__(v162, 8);
  v165 = __ROR8__((((2 * (v164 + v163)) & 0x7EC0B560615BD22) - (v164 + v163) - 0x3F605AB030ADE92) ^ 0xA56A4C91A92C5E71, 8);
  v166 = (((2 * (v164 + v163)) & 0x7EC0B560615BD22) - (v164 + v163) - 0x3F605AB030ADE92) ^ 0xA56A4C91A92C5E71 ^ __ROR8__(v163, 61);
  v167 = (((v165 + v166) & 0xF4B1E271DC896087 ^ 0xA0425158896006) + ((v165 + v166) ^ 0xFE51A922A5729599) - (((v165 + v166) ^ 0xFE51A922A5729599) & 0xF4B1E271DC896087)) ^ 0x6BA5D67989E4D1E9;
  v168 = v167 ^ __ROR8__(v166, 61);
  v169 = __ROR8__(v167, 8);
  v170 = (((2 * (v169 + v168)) | 0x81910D2EFE6F15ACLL) - (v169 + v168) - 0x40C886977F378AD6) ^ 0x240B9A950FB354BALL;
  v171 = v170 ^ __ROR8__(v168, 61);
  v172 = __ROR8__(v170, 8);
  v173 = (((v172 + v171) | 0x452FEAF2D8983268) - ((v172 + v171) | 0xBAD0150D2767CD97) - 0x452FEAF2D8983269) ^ 0x5F0501169ACB9D6BLL;
  v174 = v173 ^ __ROR8__(v171, 61);
  v175 = __ROR8__(v173, 8);
  v65[15] = (((v175 + v174 - ((2 * (v175 + v174)) & 0x5CD5F962F5DFE9B2) - 0x5195034E85100B27) ^ 0x55ABE635268A898) >> (8 * ((v65 + 15) & 7u))) ^ BYTE2(v78) ^ 0x93;
  v176 = __ROR8__((v65 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v177 = -2 - (((0x6AF7234D0CC131D4 - v176) | 0xB9373BCC9E95648DLL) + ((v176 - 0x6AF7234D0CC131D5) | 0x46C8C433616A9B72));
  v178 = v177 ^ 0xF0DE79F7F183835FLL;
  v177 ^= 0x58989C606875F203uLL;
  v179 = (__ROR8__(v178, 8) + v177) ^ 0xE49D77DF873DBF7ELL;
  v180 = v179 ^ __ROR8__(v177, 61);
  v181 = (__ROR8__(v179, 8) + v180) ^ 0xF5A2F1B9B5D0B209;
  v182 = v181 ^ __ROR8__(v180, 61);
  v183 = (__ROR8__(v181, 8) + v182) ^ 0x5963B6C555D97F1FLL;
  v184 = v183 ^ __ROR8__(v182, 61);
  v185 = __ROR8__(v183, 8);
  v186 = (((2 * (v185 + v184)) & 0x24C3B6EDA515D42ALL) - (v185 + v184) + 0x6D9E24892D7515EALL) ^ 0xCDBB9A3DD6A311DLL;
  v187 = v186 ^ __ROR8__(v184, 61);
  v188 = __ROR8__(v186, 8);
  v189 = (((v188 + v187) | 0x3A521DF821A27A3ELL) - ((v188 + v187) | 0xC5ADE207DE5D85C1) - 0x3A521DF821A27A3FLL) ^ 0x5E9101FA5126A452;
  v190 = v189 ^ __ROR8__(v187, 61);
  v191 = (__ROR8__(v189, 8) + v190) ^ 0x1A2AEBE44253AF03;
  v192 = __ROR8__(v191, 8);
  v193 = __ROR8__(v190, 61);
  LOBYTE(v190) = (((((2 * (v192 + (v191 ^ v193))) | 0x4D724CAE0D8F11E6) - (v192 + (v191 ^ v193)) + 0x5946D9A8F938770DLL) ^ 0xD8964852E40D4B2uLL) >> (8 * ((v65 + 16) & 7u))) ^ BYTE1(v78) ^ 0x97;
  v194 = __ROR8__((v65 + 17) & 0xFFFFFFFFFFFFFFF8, 8);
  v65[16] = v190;
  v195 = ((2 * ((v194 - 0x6AF7234D0CC131D5) ^ 0x5C0D666DD0C97AA4)) | 0x301A5F137AACAE0ELL) - ((v194 - 0x6AF7234D0CC131D5) ^ 0x5C0D666DD0C97AA4) - 0x180D2F89BD565707;
  v196 = v195 ^ 0xDE90BDF0289CA71;
  v195 ^= 0xA5AFEE489B7FBB2DLL;
  v197 = __ROR8__(v196, 8);
  v198 = (((2 * (v197 + v195)) | 0x692CEF71A0CBBC0ELL) - (v197 + v195) - 0x349677B8D065DE07) ^ 0xD00B006757586179;
  v199 = v198 ^ __ROR8__(v195, 61);
  v200 = __ROR8__(v198, 8);
  v201 = __ROR8__((((2 * (v200 + v199)) & 0xFD81E0C09A12569ALL) - (v200 + v199) - 0x7EC0F0604D092B4ELL) ^ 0x749DFE26072666BBLL, 8);
  v202 = (((2 * (v200 + v199)) & 0xFD81E0C09A12569ALL) - (v200 + v199) - 0x7EC0F0604D092B4ELL) ^ 0x749DFE26072666BBLL ^ __ROR8__(v199, 61);
  v203 = (v201 + v202) ^ 0x5963B6C555D97F1FLL;
  v204 = v203 ^ __ROR8__(v202, 61);
  v205 = (__ROR8__(v203, 8) + v204) ^ 0x61459D2AF01F24F7;
  v206 = v205 ^ __ROR8__(v204, 61);
  v207 = __ROR8__(v205, 8);
  v208 = (v207 + v206 - ((2 * (v207 + v206)) & 0x3076304A369A11B8) - 0x67C4E7DAE4B2F724) ^ 0xFCF804276BC9D6B0;
  v209 = v208 ^ __ROR8__(v206, 61);
  v210 = __ROR8__(v208, 8);
  v211 = (v210 + v209 - ((2 * (v210 + v209)) & 0x43F5BC2EBD15E7BELL) + 0x21FADE175E8AF3DFLL) ^ 0x3BD035F31CD95CDCLL;
  v65[17] = (((__ROR8__(v211, 8) + (v211 ^ __ROR8__(v209, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v65 + 17) & 7u))) ^ v78 ^ 8;
  return v79();
}