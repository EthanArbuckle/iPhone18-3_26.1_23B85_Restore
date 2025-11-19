uint64_t sub_244A62DD4@<X0>(uint64_t a1@<X5>, unint64_t a2@<X8>)
{
  STACK[0x480] = *(v3 + 8 * v4);
  STACK[0x3E8] = a2;
  return (*(v3 + 8 * (((a2 == a1) * (((v2 - 14224) | 0x408) ^ (v2 - 13188))) | v2)))();
}

uint64_t sub_244A62E8C@<X0>(uint64_t a1@<X8>)
{
  v4 = (*(v2 + 8 * (v3 ^ 0x5DC9)))(a1 - 0x146375EC570BCC2FLL);
  *v1 = 0x146375EC570BCC2FLL;
  return (*(v2 + 8 * (v3 + 13196)))(v4);
}

uint64_t sub_244A630DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x468] = v9;
  STACK[0x4C8] = v8;
  v13 = v7 == a6 || v8 == 0 || v9 == 0;
  return (*(v10 + 8 * ((v13 * ((((v6 + 912616235) & 0xC99A97F9) + 13447) ^ 0x4B1F)) ^ v6)))();
}

uint64_t sub_244A6313C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x3E0] = 0x750C1ABFB0567FDBLL;
  STACK[0x470] = 0;
  STACK[0x420] = 0x6838FB1E62AF01F1;
  return (*(v8 + 8 * (((((2901 * (v7 ^ 0x16B2)) ^ 0x1495) - 468) * (v6 == a6)) ^ v7)))();
}

uint64_t sub_244A63284()
{
  v2 = *(STACK[0x3E0] - 0x750C1ABFB0567FC3);
  STACK[0x478] = v2;
  return (*(v1 + 8 * (((v2 != 0) * (((v0 ^ 0x3700) - 350) ^ (v0 - 2865))) ^ v0)))();
}

uint64_t sub_244A632E8@<X0>(int a1@<W8>)
{
  v3 = (v1 | ((v1 < a1 + 174784833) << 32)) + 0x7BD859FDEE3120;
  STACK[0x520] = v3;
  v4 = STACK[0x420];
  STACK[0x528] = STACK[0x420];
  return (*(v2 + 8 * ((17407 * (((a1 - 5730) ^ 0x67BD22C45A55B8D2) - v4 + v3 < 0xFFFFFFFFFFFFFFF6)) ^ a1)))();
}

uint64_t sub_244A63370(uint64_t a1, unint64_t a2, int a3)
{
  LODWORD(STACK[0x310]) = a3;
  STACK[0x320] = a2;
  LODWORD(STACK[0x340]) = v4;
  return (*(v5 + 8 * ((((v3 + 1483329025) & 0xA796799D) - 15724) ^ v3)))();
}

uint64_t sub_244A633C4()
{
  v3 = STACK[0x528] - 0x6838FB1E62AF01EDLL;
  STACK[0x3B0] = (v3 ^ 0xAE6F99D2A96FDF7ELL) + 0x7BF3FFFFF7FFFFF6 + (((v0 - 17423) + 0x5CDF33A552DFBAF3) & (2 * v3));
  v4 = STACK[0x538] - 0x7FA425534B54D13ALL;
  v5 = STACK[0x460];
  STACK[0x3A0] = (v4 ^ 0x3EEBFDDBAF7FDF7DLL) - 0x148864090E100009 + ((2 * v4) & 0x7DD7FBB75EFFBEFALL);
  STACK[0x390] = ((v3 + 2) ^ 0x75BBFFCFFFCCBFFBLL) - 0x4000590196043200 + ((2 * (v3 + 2)) & 0xEB77FF9FFF997FF6);
  STACK[0x380] = ((v4 + 2) ^ 0xB7FBB6FFE9FE9FFFLL) + 0x7DBFEFCE7FC9EDFCLL + ((2 * (v4 + 2)) & 0x6FF76DFFD3FD3FFELL);
  v6 = *(v1 + 8 * v0);
  LODWORD(STACK[0x370]) = v2 - 1017;
  LODWORD(STACK[0x360]) = (v2 - 1017) ^ 0x4831;
  return v6(0x485E4DA30EB67D14, v5, 0x56F63FA25F0407ELL, 0x480F62C7FF771B8ALL, 0x3B1FFFBC03CF245ELL, -2130202477749310000, 0xEF88C9E2123BE00, 0xF7C056E55AA008D4);
}

uint64_t sub_244A63A54@<X0>(int a1@<W8>)
{
  v10 = v2 + v1;
  v11 = __ROR8__(v10 & 0xFFFFFFFFFFFFFFF8, 8) - 0x7653FFD844AF1482;
  v12 = __ROR8__(v11 ^ 0xB2CED1A6D4B9C292, 8);
  v11 ^= 0xFFAED09B0E3E9966;
  v13 = (((v12 + v11) | 0xCAB66297772ACC2FLL) + 0x35499D6888D533D0 - ((((LODWORD(STACK[0x3C4]) + 511761077) & 0xE17F37EB) + 0x35499D6888D51D26) | (v12 + v11))) ^ 0x47082B48FC140A25;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0x41285C582D9B8689;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0x1717D4ABBED3C077;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (0x1A8709C2DAE26258 - (v19 + v18) + ((2 * (v19 + v18)) & 0xCAF1EC7A4A3B3B4ELL)) ^ 0xF60F857D05D9B188;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (0xAD36F5F1651F6AA5 - (v22 + v21) + ((2 * (v22 + v21)) & 0xA592141D35C12AB4)) ^ 0x9DAE52E65DA48D86;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ 0x5028BB63E7A27580;
  v26 = (((__ROR8__(v25, 8) + (v25 ^ __ROR8__(v24, 61))) ^ 0x68B873F8FCD75EC8uLL) >> (8 * (v10 & 7u))) ^ a1;
  v27 = __ROR8__((v2 + v9) & 0xFFFFFFFFFFFFFFF8, 8);
  v28 = v27 - 0x7D4CC02146FAF678 - ((2 * v27 + 0x1358004F76A1D6FCLL) & 0xF20E7F6DFB683C14);
  v29 = v28 ^ 0x4BC9EE10290DDC98;
  v28 ^= 0x6A9EF2DF38A876CuLL;
  v30 = (__ROR8__(v29, 8) + v28) ^ 0x8DBE49DF8B3EC60ALL;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = __ROR8__(v30, 8);
  v33 = __ROR8__((0x716AC31C86BBB316 - (v32 + v31) + ((2 * (v32 + v31)) | 0x1D2A79C6F28899D4)) ^ 0xCFBD60BB54DFCA63, 8);
  v34 = (0x716AC31C86BBB316 - (v32 + v31) + ((2 * (v32 + v31)) | 0x1D2A79C6F28899D4)) ^ 0xCFBD60BB54DFCA63 ^ __ROR8__(v31, 61);
  v35 = (0x3CF877611A170E47 - ((v33 + v34) ^ 0x26BA9FA4E389EDEFLL) + ((2 * ((v33 + v34) ^ 0x26BA9FA4E389EDEFLL)) | 0x860F113DCBD1E372)) ^ 0xF2AAC391B8B2DC21;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0xEC888CBFDF3BD3D0;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0x3098A71738BBE723;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (0x3981C4A1CDAEE918 - (v41 + v40) + ((2 * (v41 + v40)) | 0x8CFC76BC64A22DD0)) ^ 0x9656803DD5F36368;
  v43 = v2 + v7;
  v44 = __ROR8__(v43 & 0xFFFFFFFFFFFFFFF8, 8);
  LOBYTE(v10) = (((__ROR8__(v42, 8) + (v42 ^ __ROR8__(v40, 61))) ^ 0x68B873F8FCD75EC8) >> (8 * ((v2 + v9) & 7))) ^ v6;
  v45 = (v44 - 0x7653FFD844AF1482) ^ 0xFFAED09B0E3E9966;
  v46 = (__ROR8__((v44 - 0x7653FFD844AF1482) ^ 0xB2CED1A6D4B9C292, 8) + v45) ^ 0x8DBE49DF8B3EC60ALL;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ 0x41285C582D9B8689;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ 0x1717D4ABBED3C077;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = __ROR8__(v50, 8);
  v53 = (v52 + v51 - 0x6652644FBDBC5E31 - ((2 * (v52 + v51)) & 0x335B37608487439ELL)) ^ 0x7525170F9D78721FLL;
  v54 = v53 ^ __ROR8__(v51, 61);
  v55 = __ROR8__(v53, 8);
  v56 = (0x87FED870A05565F9 - ((v55 + v54) | 0x87FED870A05565F9) + ((v55 + v54) | 0x7801278F5FAA9A06)) ^ 0x4899809867117D25;
  v57 = v56 ^ __ROR8__(v54, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ 0x5028BB63E7A27580;
  v59 = (((__ROR8__(v58, 8) + (v58 ^ __ROR8__(v57, 61))) ^ 0x68B873F8FCD75EC8uLL) >> (8 * (v43 & 7u))) ^ v5;
  v60 = v2 + v4;
  v61 = __ROR8__(v60 & 0xFFFFFFFFFFFFFFF8, 8);
  v62 = v61 + 0x47C22C17F0C37FF2 - ((2 * v61 + 0x1358004F76A1D6FCLL) & 0x742C57E06AE528E8);
  v63 = v62 ^ 0xCD8FA56E1CB56E6;
  v62 ^= 0x41B8FB6B3B4C0D12uLL;
  v64 = __ROR8__(v63, 8);
  v65 = (v64 + v62 + 0x6C70252AFAB47334 - ((2 * (v64 + v62)) & 0xD8E04A55F568E668)) ^ 0xE1CE6CF5718AB53ELL;
  v66 = v65 ^ __ROR8__(v62, 61);
  v67 = __ROR8__(v65, 8);
  v68 = (0x4767FC0E15A24441 - (v67 + v66) + ((2 * (v67 + v66)) | 0x713007E3D4BB777ELL)) ^ 0xF9B05FA9C7C63D36;
  v69 = v68 ^ __ROR8__(v66, 61);
  v70 = __ROR8__(v68, 8);
  v71 = (v70 + v69 + 0x4CCF9B0FA09AB8F3 - ((2 * (v70 + v69)) & 0x999F361F413571E6)) ^ 0x5BD84FA41E497884;
  v72 = v71 ^ __ROR8__(v69, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ 0xEC888CBFDF3BD3D0;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = (__ROR8__(v73, 8) + v74) ^ 0x3098A71738BBE723;
  v76 = v75 ^ __ROR8__(v74, 61);
  v77 = __ROR8__(v75, 8);
  v78 = (0xB6BC9619223F3FEELL - (v77 + v76) + ((2 * (v77 + v76)) | 0x9286D3CDBB818024)) ^ 0x196BD2853A62B592;
  LOBYTE(v60) = (((__ROR8__(v78, 8) + (v78 ^ __ROR8__(v76, 61))) ^ 0x68B873F8FCD75EC8) >> (8 * (v60 & 7u))) ^ v3;
  v79 = (v10 << 16) | (v26 << 24) | (v59 << 8) | v60;
  v80 = ((v79 + 237377513 - 2 * (v79 & 0xE2617EB ^ v60 & 2)) ^ 0xE2617E9) + STACK[0x528] - 0x6838FB1DCDF1C472;
  v81 = STACK[0x520] - 0x7BD859739C0BC7;
  v82 = v80 < 0x94BD3D75;
  v83 = v80 > v81;
  v84 = (v81 < 0x94BD3D75) ^ v82;
  v85 = v83;
  if (v84)
  {
    v86 = v82;
  }

  else
  {
    v86 = v85;
  }

  return (*(v8 + 8 * ((180 * v86) ^ (LODWORD(STACK[0x3C4]) + 11551))))();
}

uint64_t sub_244A641DC()
{
  *STACK[0x4C8] = 0;
  *STACK[0x468] = 0;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_244A64388@<X0>(int a1@<W8>)
{
  v10 = v2 + v1;
  v11 = __ROR8__(v10 & 0xFFFFFFFFFFFFFFF8, 8) - 0x7653FFD844AF1482;
  v12 = __ROR8__(v11 ^ 0xB2CED1A6D4B9C292, 8);
  v11 ^= 0xFFAED09B0E3E9966;
  v13 = (((v12 + v11) | 0xCAB66297772ACC2FLL) + 0x35499D6888D533D0 - ((((LODWORD(STACK[0x3C4]) + 3671) ^ 0x1A57u) + 0x35499D6888D55904) ^ ((LODWORD(STACK[0x3C4]) + 3671) | 0x408Bu) | (v12 + v11))) ^ 0x47082B48FC140A25;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0x41285C582D9B8689;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0x1717D4ABBED3C077;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (0x1A8709C2DAE26258 - (v19 + v18) + ((2 * (v19 + v18)) & 0xCAF1EC7A4A3B3B4ELL)) ^ 0xF60F857D05D9B188;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (0xAD36F5F1651F6AA5 - (v22 + v21) + ((2 * (v22 + v21)) & 0xA592141D35C12AB4)) ^ 0x9DAE52E65DA48D86;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ 0x5028BB63E7A27580;
  v26 = (((__ROR8__(v25, 8) + (v25 ^ __ROR8__(v24, 61))) ^ 0x68B873F8FCD75EC8uLL) >> (8 * (v10 & 7u))) ^ a1;
  v27 = __ROR8__((v2 + v9) & 0xFFFFFFFFFFFFFFF8, 8);
  v28 = v27 - 0x7D4CC02146FAF678 - ((2 * v27 + 0x1358004F76A1D6FCLL) & 0xF20E7F6DFB683C14);
  v29 = v28 ^ 0x4BC9EE10290DDC98;
  v28 ^= 0x6A9EF2DF38A876CuLL;
  v30 = (__ROR8__(v29, 8) + v28) ^ 0x8DBE49DF8B3EC60ALL;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (0x716AC31C86BBB316 - (v32 + v31) + ((2 * (v32 + v31)) | 0x1D2A79C6F28899D4)) ^ 0xCFBD60BB54DFCA63;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (0x3CF877611A170E47 - ((v35 + v34) ^ 0x26BA9FA4E389EDEFLL) + ((2 * ((v35 + v34) ^ 0x26BA9FA4E389EDEFLL)) | 0x860F113DCBD1E372)) ^ 0xF2AAC391B8B2DC21;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0xEC888CBFDF3BD3D0;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ 0x3098A71738BBE723;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = __ROR8__(v40, 8);
  v43 = (0x3981C4A1CDAEE918 - (v42 + v41) + ((2 * (v42 + v41)) | 0x8CFC76BC64A22DD0)) ^ 0x9656803DD5F36368;
  LOBYTE(v10) = (((__ROR8__(v43, 8) + (v43 ^ __ROR8__(v41, 61))) ^ 0x68B873F8FCD75EC8) >> (8 * ((v2 + v9) & 7))) ^ v6;
  v44 = v2 + v7;
  v45 = __ROR8__((v2 + v7) & 0xFFFFFFFFFFFFFFF8, 8);
  v46 = (v45 - 0x7653FFD844AF1482) ^ 0xFFAED09B0E3E9966;
  v47 = (__ROR8__((v45 - 0x7653FFD844AF1482) ^ 0xB2CED1A6D4B9C292, 8) + v46) ^ 0x8DBE49DF8B3EC60ALL;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ 0x41285C582D9B8689;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ 0x1717D4ABBED3C077;
  v52 = __ROR8__(v51, 8);
  v53 = v51 ^ __ROR8__(v50, 61);
  v54 = (v52 + v53 - 0x6652644FBDBC5E31 - ((2 * (v52 + v53)) & 0x335B37608487439ELL)) ^ 0x7525170F9D78721FLL;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = __ROR8__(v54, 8);
  v57 = (0x87FED870A05565F9 - ((v56 + v55) | 0x87FED870A05565F9) + ((v56 + v55) | 0x7801278F5FAA9A06)) ^ 0x4899809867117D25;
  v58 = v57 ^ __ROR8__(v55, 61);
  v59 = (__ROR8__(v57, 8) + v58) ^ 0x5028BB63E7A27580;
  v60 = (((__ROR8__(v59, 8) + (v59 ^ __ROR8__(v58, 61))) ^ 0x68B873F8FCD75EC8uLL) >> (8 * (v44 & 7u))) ^ v5;
  v61 = v2 + v4;
  v62 = __ROR8__(v61 & 0xFFFFFFFFFFFFFFF8, 8);
  v63 = v62 + 0x47C22C17F0C37FF2 - ((2 * v62 + 0x1358004F76A1D6FCLL) & 0x742C57E06AE528E8);
  v64 = v63 ^ 0xCD8FA56E1CB56E6;
  v63 ^= 0x41B8FB6B3B4C0D12uLL;
  v65 = __ROR8__(v64, 8);
  v66 = (v65 + v63 + 0x6C70252AFAB47334 - ((2 * (v65 + v63)) & 0xD8E04A55F568E668)) ^ 0xE1CE6CF5718AB53ELL;
  v67 = v66 ^ __ROR8__(v63, 61);
  v68 = __ROR8__(v66, 8);
  v69 = (0x4767FC0E15A24441 - (v68 + v67) + ((2 * (v68 + v67)) | 0x713007E3D4BB777ELL)) ^ 0xF9B05FA9C7C63D36;
  v70 = v69 ^ __ROR8__(v67, 61);
  v71 = __ROR8__(v69, 8);
  v72 = (v71 + v70 + 0x4CCF9B0FA09AB8F3 - ((2 * (v71 + v70)) & 0x999F361F413571E6)) ^ 0x5BD84FA41E497884;
  v73 = v72 ^ __ROR8__(v70, 61);
  v74 = (__ROR8__(v72, 8) + v73) ^ 0xEC888CBFDF3BD3D0;
  v75 = v74 ^ __ROR8__(v73, 61);
  v76 = (__ROR8__(v74, 8) + v75) ^ 0x3098A71738BBE723;
  v77 = v76 ^ __ROR8__(v75, 61);
  v78 = __ROR8__(v76, 8);
  v79 = (0xB6BC9619223F3FEELL - (v78 + v77) + ((2 * (v78 + v77)) | 0x9286D3CDBB818024)) ^ 0x196BD2853A62B592;
  LOBYTE(v61) = (((__ROR8__(v79, 8) + (v79 ^ __ROR8__(v77, 61))) ^ 0x68B873F8FCD75EC8) >> (8 * (v61 & 7u))) ^ v3;
  v80 = (v10 << 16) | (v26 << 24) | (v60 << 8) | v61;
  return (*(v8 + 8 * ((222 * (v80 + 237377513 - 2 * (v80 & 0xE2617EB ^ v61 & 2) != LODWORD(STACK[0x340]))) ^ (LODWORD(STACK[0x3C4]) + 3665))))();
}

uint64_t sub_244A64AE0@<X0>(int a1@<W8>)
{
  v3 = *v1;
  STACK[0x4C0] = *v1;
  return (*(v2 + 8 * (((v3 == 0x750C1ABFB0567FDBLL) * (61 * (a1 ^ 0x185F) + 71)) ^ a1)))();
}

uint64_t sub_244A64BA0()
{
  v2 = *(STACK[0x430] - 0x750C1ABFB0567FC3);
  STACK[0x460] = v2;
  return (*(v0 + 8 * (((((v1 - 385) | 0x1C14) ^ (v1 - 1369059226) & 0x519A2F99 ^ 0x1A91) * (v2 == 0)) | (v1 + 14679))))();
}

uint64_t sub_244A64C2C@<X0>(int a1@<W8>)
{
  v3 = (v1 | ((v1 < 0xA6B181C) << 32)) + ((a1 + 227352657) & 0xF272C51B) + 0x55CA08EC4F9E1D32;
  STACK[0x530] = v3;
  v4 = STACK[0x458];
  STACK[0x538] = STACK[0x458];
  return (*(v2 + 8 * ((14570 * (((a1 - 7699) ^ 0x29DA1C66F14B9754) - v4 + v3 < 0xFFFFFFFFFFFFFFF6)) ^ a1)))();
}

uint64_t sub_244A64CC8(uint64_t a1, unint64_t a2, int a3)
{
  LODWORD(STACK[0x310]) = a3;
  STACK[0x320] = a2;
  LODWORD(STACK[0x340]) = v4;
  return (*(v5 + 8 * (v3 ^ 0x4244 ^ (v3 + 137321558) & 0xF7D0EB38)))();
}

uint64_t sub_244A64D18@<X0>(int a1@<W8>)
{
  v10 = v2 + v1;
  v11 = __ROR8__(v10 & 0xFFFFFFFFFFFFFFF8, 8);
  v12 = (v11 - 0x7653FFD844AF1482) ^ 0xFFAED09B0E3E9966;
  v13 = __ROR8__((v11 - 0x7653FFD844AF1482) ^ 0xB2CED1A6D4B9C292, 8);
  v14 = (0x35499D6888D533D0 - ((v13 + v12) | 0x35499D6888D533D0) + ((v13 + v12) | 0xCAB66297772ACC2FLL)) ^ 0x47082B48FC140A25;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0x41285C582D9B8689;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0x1717D4ABBED3C077;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (0x1A8709C2DAE26258 - (v20 + v19) + ((2 * (v20 + v19)) & 0xCAF1EC7A4A3B3B4ELL)) ^ 0xF60F857D05D9B188;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (0xAD36F5F1651F6AA5 - (v23 + v22) + ((2 * (v23 + v22)) & 0xA592141D35C12AB4)) ^ 0x9DAE52E65DA48D86;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0x5028BB63E7A27580;
  v27 = (((__ROR8__(v26, 8) + (v26 ^ __ROR8__(v25, 61))) ^ 0x68B873F8FCD75EC8uLL) >> (8 * (v10 & 7u))) ^ a1;
  v28 = __ROR8__((v2 + v9) & 0xFFFFFFFFFFFFFFF8, 8);
  v29 = v28 - 0x7D4CC02146FAF678 - ((2 * v28 + 0x1358004F76A1D6FCLL) & 0xF20E7F6DFB683C14);
  v30 = v29 ^ 0x4BC9EE10290DDC98;
  v29 ^= 0x6A9EF2DF38A876CuLL;
  v31 = (__ROR8__(v30, 8) + v29) ^ 0x8DBE49DF8B3EC60ALL;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = __ROR8__(v31, 8);
  v34 = __ROR8__((0x716AC31C86BBB316 - (v33 + v32) + ((2 * (v33 + v32)) | 0x1D2A79C6F28899D4)) ^ 0xCFBD60BB54DFCA63, 8);
  v35 = (0x716AC31C86BBB316 - (v33 + v32) + ((2 * (v33 + v32)) | 0x1D2A79C6F28899D4)) ^ 0xCFBD60BB54DFCA63 ^ __ROR8__(v32, 61);
  v36 = (0x3CF877611A170E47 - ((v34 + v35) ^ 0x26BA9FA4E389EDEFLL) + ((2 * ((v34 + v35) ^ 0x26BA9FA4E389EDEFLL)) | 0x860F113DCBD1E372)) ^ 0xF2AAC391B8B2DC21;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0xEC888CBFDF3BD3D0;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ 0x3098A71738BBE723;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = __ROR8__(v40, 8);
  v43 = (0x3981C4A1CDAEE918 - (v42 + v41) + ((2 * (v42 + v41)) | 0x8CFC76BC64A22DD0)) ^ 0x9656803DD5F36368;
  v44 = v2 + v7;
  v45 = __ROR8__(v44 & 0xFFFFFFFFFFFFFFF8, 8);
  LOBYTE(v10) = (((__ROR8__(v43, 8) + (v43 ^ __ROR8__(v41, 61))) ^ 0x68B873F8FCD75EC8) >> (8 * ((v2 + v9) & 7))) ^ v6;
  v46 = (v45 - 0x7653FFD844AF1482) ^ 0xFFAED09B0E3E9966;
  v47 = (__ROR8__((v45 - 0x7653FFD844AF1482) ^ 0xB2CED1A6D4B9C292, 8) + v46) ^ 0x8DBE49DF8B3EC60ALL;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ 0x41285C582D9B8689;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ 0x1717D4ABBED3C077;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = __ROR8__(v51, 8);
  v54 = (v53 + v52 - 0x6652644FBDBC5E31 - ((2 * (v53 + v52)) & 0x335B37608487439ELL)) ^ 0x7525170F9D78721FLL;
  v55 = v54 ^ __ROR8__(v52, 61);
  v56 = __ROR8__(v54, 8);
  v57 = (0x87FED870A05565F9 - ((v56 + v55) | 0x87FED870A05565F9) + ((v56 + v55) | 0x7801278F5FAA9A06)) ^ 0x4899809867117D25;
  v58 = v57 ^ __ROR8__(v55, 61);
  v59 = (__ROR8__(v57, 8) + v58) ^ 0x5028BB63E7A27580;
  v60 = (((__ROR8__(v59, 8) + (v59 ^ __ROR8__(v58, 61))) ^ 0x68B873F8FCD75EC8uLL) >> (8 * (v44 & 7u))) ^ v5;
  v61 = v2 + v4;
  v62 = __ROR8__(v61 & 0xFFFFFFFFFFFFFFF8, 8);
  v63 = v62 + 0x47C22C17F0C37FF2 - ((2 * v62 + 0x1358004F76A1D6FCLL) & 0x742C57E06AE528E8);
  v64 = v63 ^ 0xCD8FA56E1CB56E6;
  v63 ^= 0x41B8FB6B3B4C0D12uLL;
  v65 = __ROR8__(v64, 8);
  v66 = (v65 + v63 + 0x6C70252AFAB47334 - ((2 * (v65 + v63)) & 0xD8E04A55F568E668)) ^ 0xE1CE6CF5718AB53ELL;
  v67 = v66 ^ __ROR8__(v63, 61);
  v68 = __ROR8__(v66, 8);
  v69 = (0x4767FC0E15A24441 - (v68 + v67) + ((2 * (v68 + v67)) | 0x713007E3D4BB777ELL)) ^ 0xF9B05FA9C7C63D36;
  v70 = v69 ^ __ROR8__(v67, 61);
  v71 = __ROR8__(v69, 8);
  v72 = (v71 + v70 + 0x4CCF9B0FA09AB8F3 - ((2 * (v71 + v70)) & 0x999F361F413571E6)) ^ 0x5BD84FA41E497884;
  v73 = v72 ^ __ROR8__(v70, 61);
  v74 = (__ROR8__(v72, 8) + v73) ^ 0xEC888CBFDF3BD3D0;
  v75 = v74 ^ __ROR8__(v73, 61);
  v76 = (__ROR8__(v74, 8) + v75) ^ 0x3098A71738BBE723;
  v77 = v76 ^ __ROR8__(v75, 61);
  v78 = __ROR8__(v76, 8);
  v79 = (0xB6BC9619223F3FEELL - (v78 + v77) + ((2 * (v78 + v77)) | 0x9286D3CDBB818024)) ^ 0x196BD2853A62B592;
  LOBYTE(v61) = (((__ROR8__(v79, 8) + (v79 ^ __ROR8__(v77, 61))) ^ 0x68B873F8FCD75EC8) >> (8 * (v61 & 7u))) ^ v3;
  v80 = (v27 << 24) | (v10 << 16) | (v60 << 8) | v61;
  v81 = STACK[0x538] + ((v80 + 237377513 - 2 * (v80 & 0xE2617EB ^ v61 & 2)) ^ 0xE2617E9);
  v82 = STACK[0x530] - 0x55CA08EBBBB5BC98;
  v83 = (v81 - 0x7FA42552AD015475 < 0x9E537CBF) ^ (v82 < 0x9E537CBF);
  v84 = v81 - 0x7FA42552AD015475 > v82;
  if (v83)
  {
    v85 = v81 - 0x7FA42552AD015475 < 0x9E537CBF;
  }

  else
  {
    v85 = v84;
  }

  v86 = LODWORD(STACK[0x3C4]) + 1194;
  STACK[0x510] = v81 + 10;
  return (*(v8 + 8 * ((315 * !v85) ^ v86)))();
}

uint64_t sub_244A6558C()
{
  v3 = (((v1 << (((v0 ^ 0x95) - 14) ^ 0xFAu)) & 0x9BF7FEFEFD784E7ELL) + (v1 ^ 0xCDFBFF7F7EBC273FLL) + STACK[0x460] + 0x320400808143D8C1);
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = LOWORD(STACK[0x50E]);
  STACK[0x458] = STACK[0x510];
  return (*(v2 + 8 * ((22955 * (v8 == 12645)) ^ v0)))(v7, v3 + 4, v6, v3 + 3, v5, v3 + 2, v4, v3 + 1);
}

uint64_t sub_244A65670@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, int a9@<W8>)
{
  v19 = (a9 + v12);
  STACK[0x3B0] = v19;
  v20 = __ROR8__(v16 & 0xFFFFFFFFFFFFFFF8, 8);
  LODWORD(STACK[0x3A0]) = v17;
  v21 = (0x7653FFD844AF1481 - v20) & 0xB55F80C7BE1258C6 | (v20 + 0x9AC0027BB50EB7ELL) & 0x4AA07F3841EDA739;
  v22 = __ROR8__(v21 ^ 0x79151616AAB9A54, 8);
  v23 = (v19 + 0x4AF1505CB02CBD97) ^ v21;
  v24 = __ROR8__((v23 + v22) ^ 0x8DBE49DF8B3EC60ALL, 8);
  v25 = (v23 + v22) ^ 0x8DBE49DF8B3EC60ALL ^ __ROR8__(v23, 61);
  v26 = (((v24 + v25) | 0x32D0D64D4270688ELL) - ((v24 + v25) | 0xCD2F29B2BD8F9771) - 0x32D0D64D4270688FLL) ^ 0x73F88A156FEBEE07;
  v27 = __ROR8__(v26, 8);
  v28 = v26 ^ __ROR8__(v25, 61);
  v29 = (((2 * (v27 + v28)) | 0x562CC8E4F1BBEDCCLL) - (v27 + v28) - 0x2B16647278DDF6E6) ^ 0x3C01B0D9C60E3691;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ v18;
  v32 = __ROR8__(v31, 8);
  v33 = v31 ^ __ROR8__(v30, 61);
  v34 = (((v32 + v33) | 0x266D8F709B2661D1) - ((v32 + v33) | 0xD992708F64D99E2ELL) - 0x266D8F709B2661D2) ^ 0x16F52867A39D86F2;
  v35 = __ROR8__(v34, 8);
  v36 = v34 ^ __ROR8__(v33, 61);
  v37 = (((v35 + v36) | 0xFE7D31885E37F5C1) - ((v35 + v36) | 0x182CE77A1C80A3ELL) + 0x182CE77A1C80A3ELL) ^ 0xAE558AEBB9958041;
  v38 = __ROR8__(v37, 8);
  v39 = __ROR8__(v36, 61);
  LODWORD(v36) = (((v38 + (v37 ^ v39) - ((2 * (v38 + (v37 ^ v39))) & 0x8951FAF1706958CALL) + 0x44A8FD78B834AC65) ^ 0x2C108E8044E3F2ADLL) >> (8 * (v16 & 7u))) ^ v15;
  v40 = (((v36 - ((2 * v36) & 0x72) + 248) << 56) - 0x3F00000000000000) ^ 0xB900000000000000;
  v41 = __ROR8__(a8 & 0xFFFFFFFFFFFFFFF8, 8) - 0x7653FFD844AF1482;
  v42 = __ROR8__(v41 ^ 0xB2CED1A6D4B9C292, 8);
  v43 = (v40 - ((2 * v40) & 0x3400000000000000) + 0x1AFDFF6CEB6F6797) ^ 0x1AFDFF6CEB6F6797;
  v44 = v41 ^ 0xFFAED09B0E3E9966;
  v45 = (((2 * (v42 + (v41 ^ 0xFFAED09B0E3E9966))) | 0xD7FAD21042F2E9F6) - (v42 + (v41 ^ 0xFFAED09B0E3E9966)) - 0x6BFD6908217974FBLL) ^ 0xE64320D7AA47B2F1;
  v46 = __ROR8__(v45, 8);
  v47 = v45 ^ __ROR8__(v44, 61);
  v48 = (((v46 + v47) | 0x3A2808815C23D964) - ((v46 + v47) | 0xC5D7F77EA3DC269BLL) - 0x3A2808815C23D965) ^ 0x7B0054D971B85FEDLL;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ 0x1717D4ABBED3C077;
  v51 = __ROR8__(v50, 8);
  v52 = v50 ^ __ROR8__(v49, 61);
  v53 = (((2 * ((v51 + v52) ^ 0xD408842FB46A4E43)) & 0x440D90F0109BC5F4) - ((v51 + v52) ^ 0xD408842FB46A4E43) - 0x2206C878084DE2FBLL) ^ 0xE5793F179CE38096;
  v54 = v53 ^ __ROR8__(v52, 61);
  LODWORD(STACK[0x390]) = v10;
  v55 = (__ROR8__(v53, 8) + v54) ^ 0x3098A71738BBE723;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ 0x5028BB63E7A27580;
  v58 = (((__ROR8__(v57, 8) + (v57 ^ __ROR8__(v56, 61))) ^ 0x68B873F8FCD75EC8uLL) >> (8 * (a8 & 7u))) ^ a7;
  v59 = (((v58 - ((2 * v58) & 0x36u) + 7714) << 48) - 0x7000000000000) ^ 0x1E1B000000000000;
  v60 = v43 | (v59 - ((2 * v59) & 0xD3A000000000000) + 0x69DEA13325AFA26) ^ 0x69DEA13325AFA26;
  v61 = __ROR8__(a6 & 0xFFFFFFFFFFFFFFF8, 8);
  v62 = ((2 * (v61 - 0x7653FFD844AF1482)) | 0x57766318D8555E06) - (v61 - 0x7653FFD844AF1482) - 0x2BBB318C6C2AAF03;
  v63 = __ROR8__(v62 ^ 0x9975E02AB8936D91, 8);
  v62 ^= 0xD415E11762143665;
  v64 = __ROR8__((v63 + v62) ^ 0x8DBE49DF8B3EC60ALL, 8);
  v65 = (v63 + v62) ^ 0x8DBE49DF8B3EC60ALL ^ __ROR8__(v62, 61);
  v66 = __ROR8__((v64 + v65 - ((2 * (v64 + v65)) & 0x178196D87B910AFELL) + 0xBC0CB6C3DC8857FLL) ^ 0x4AE89734105303F6, 8);
  v67 = (v64 + v65 - ((2 * (v64 + v65)) & 0x178196D87B910AFELL) + 0xBC0CB6C3DC8857FLL) ^ 0x4AE89734105303F6 ^ __ROR8__(v65, 61);
  v68 = (v66 + v67) ^ 0x1717D4ABBED3C077;
  v69 = v68 ^ __ROR8__(v67, 61);
  v70 = (__ROR8__(v68, 8) + v69) ^ v18;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = (__ROR8__(v70, 8) + v71) ^ 0x3098A71738BBE723;
  v73 = __ROR8__(v72, 8);
  v74 = v72 ^ __ROR8__(v71, 61);
  v75 = ((2 * (v73 + v74)) & 0x1A9298E04E50232ELL) - (v73 + v74) + 0x72B6B38FD8D7EE68;
  v76 = (((__ROR8__(v75 ^ 0x229E08EC3F759BE8, 8) + (v75 ^ 0x229E08EC3F759BE8 ^ __ROR8__(v74, 61))) ^ 0x68B873F8FCD75EC8uLL) >> (8 * (a6 & 7u))) ^ a5;
  v77 = (((v76 - ((2 * v76) & 0x36u) + 8426327) << 40) - 0x3C0000000000) ^ 0x80931B0000000000;
  v78 = (v60 - ((2 * v60) & 0xC5C7542C082005ALL) - 0x79D1C55E9FBEFFD3) ^ 0x862E3AA16041002DLL | (v77 - ((2 * v77) & 0x3B8D840000000000) + 0x5DC6C2ECF9DE3A52) ^ 0x5DC6C2ECF9DE3A52;
  v79 = __ROR8__(a4 & 0xFFFFFFFFFFFFFFF8, 8) - 0x7653FFD844AF1482;
  v80 = v79 ^ 0xFFAED09B0E3E9966;
  v81 = (__ROR8__(v79 ^ 0xB2CED1A6D4B9C292, 8) + (v79 ^ 0xFFAED09B0E3E9966)) ^ 0x8DBE49DF8B3EC60ALL;
  v82 = v81 ^ __ROR8__(v80, 61);
  v83 = (__ROR8__(v81, 8) + v82) ^ 0x41285C582D9B8689;
  v84 = __ROR8__(v83, 8);
  v85 = v83 ^ __ROR8__(v82, 61);
  v86 = (v84 + v85 - ((2 * (v84 + v85)) & 0x178B388C2E3B00A6) + 0xBC59C46171D8053) ^ 0x1CD248EDA9CE4024;
  v87 = __ROR8__(v86, 8);
  v88 = v86 ^ __ROR8__(v85, 61);
  v89 = (((2 * (v87 + v88)) | 0x630BB4B9EEC52676) - (v87 + v88) + 0x4E7A25A3089D6CC5) ^ 0x5D0D56E3285940EBLL;
  v90 = v89 ^ __ROR8__(v88, 61);
  v91 = (__ROR8__(v89, 8) + v90) ^ 0x3098A71738BBE723;
  v92 = v91 ^ __ROR8__(v90, 61);
  v93 = (__ROR8__(v91, 8) + v92) ^ 0x5028BB63E7A27580;
  v94 = v93 ^ __ROR8__(v92, 61);
  v95 = __ROR8__(v93, 8);
  v96 = (((((2 * (v95 + v94)) & 0xDD2F4BB1125BA10ALL) - (v95 + v94) + 0x11685A2776D22F7ALL) ^ 0x79D029DF8A0571B2) >> (8 * (a4 & 7u))) ^ a3;
  v97 = (((~(2 * v96) | 0xFFFFFF2D) + v96 - 1358946198) << 32) ^ 0xAF00206900000000;
  v98 = (v78 - ((2 * v78) & 0x311FD92E949EB106) - 0x67701368B5B0A77DLL) ^ 0x988FEC974A4F5883 | (v97 - ((2 * v97) & 0x56DE00000000) - 0x624A94900DDC5735) ^ 0x9DB56B6FF223A8CBLL;
  v99 = __ROR8__(a2 & 0xFFFFFFFFFFFFFFF8, 8) - 0x7653FFD844AF1482;
  v100 = v99 ^ 0xFFAED09B0E3E9966;
  v101 = STACK[0x338];
  v102 = (__ROR8__(v99 ^ 0xB2CED1A6D4B9C292, 8) + (v99 ^ 0xFFAED09B0E3E9966)) ^ 0x8DBE49DF8B3EC60ALL;
  v103 = __ROR8__(v102, 8);
  v104 = v102 ^ __ROR8__(v100, 61);
  v105 = (((v103 + v104) | 0x2AABDA015CBFF13FLL) - ((v103 + v104) | 0xD55425FEA3400EC0) - 0x2AABDA015CBFF140) ^ 0x6B838659712477B6;
  v106 = v105 ^ __ROR8__(v104, 61);
  v107 = (__ROR8__(v105, 8) + v106) ^ 0x1717D4ABBED3C077;
  v108 = v107 ^ __ROR8__(v106, 61);
  v109 = (__ROR8__(v107, 8) + v108) ^ v18;
  v110 = v109 ^ __ROR8__(v108, 61);
  v111 = (__ROR8__(v109, 8) + v110) ^ 0x3098A71738BBE723;
  v112 = v111 ^ __ROR8__(v110, 61);
  v113 = (__ROR8__(v111, 8) + v112) ^ 0x5028BB63E7A27580;
  v114 = v113 ^ __ROR8__(v112, 61);
  v115 = __ROR8__(v113, 8);
  v116 = (((((2 * (v115 + v114)) | 0x5AE51A94776BB02ELL) - (v115 + v114) + 0x528D72B5C44A27E9) ^ 0xC5CAFEB2C76286DFLL) >> (8 * (a2 & 7u))) ^ a1;
  v117 = (((v116 - ((2 * v116) & 0x12ELL)) << 24) - 0x5880801B69000000) ^ 0xA77F7FE497000000;
  v118 = (v98 - ((2 * v98) & 0x2678A5D1C62DCC80) + 0x133C52E8E316E640) ^ 0x133C52E8E316E640 | (v117 - ((2 * v117) & 0x173C036D12000000) + 0xB9E01B689F783ACLL) ^ 0xB9E01B689F783ACLL;
  v119 = __ROR8__(v14 & 0xFFFFFFFFFFFFFFF8, 8);
  v120 = ((0x7653FFD844AF1481 - v119) & 0xB30B0E04CEBC8992) + v119 - 0x7653FFD844AF1482 - ((v119 - 0x7653FFD844AF1482) & 0xB30B0E04CEBC8992);
  v121 = __ROR8__(v120 ^ 0x1C5DFA21A054B00, 8);
  v120 ^= 0x4CA5DE9FC08210F4uLL;
  v122 = __ROR8__((v121 + v120) ^ 0x8DBE49DF8B3EC60ALL, 8);
  v123 = (v121 + v120) ^ 0x8DBE49DF8B3EC60ALL ^ __ROR8__(v120, 61);
  v124 = __ROR8__((((2 * (v122 + v123)) & 0x3F33FA72E4ED7622) - (v122 + v123) + 0x606602C68D8944EELL) ^ 0x214E5E9EA012C267, 8);
  v125 = (((2 * (v122 + v123)) & 0x3F33FA72E4ED7622) - (v122 + v123) + 0x606602C68D8944EELL) ^ 0x214E5E9EA012C267 ^ __ROR8__(v123, 61);
  v126 = (v124 + v125) ^ 0x1717D4ABBED3C077;
  v127 = __ROR8__(v126, 8);
  v128 = v126 ^ __ROR8__(v125, 61);
  v129 = (v127 + v128 - ((2 * (v127 + v128)) & 0x1E478AE932743620) + 0xF23C574993A1B10) ^ 0xE3AB49CB4601C8C0;
  v130 = v129 ^ __ROR8__(v128, 61);
  v131 = (__ROR8__(v129, 8) + v130) ^ 0x3098A71738BBE723;
  v132 = __ROR8__(v131, 8);
  v133 = v131 ^ __ROR8__(v130, 61);
  v134 = ((2 * (v132 + v133)) & 0x55781032AF4E8526) - (v132 + v133) - 0x2ABC081957A74294;
  v135 = (((__ROR8__(v134 ^ 0x856B4C854FFAC8ECLL, 8) + (v134 ^ 0x856B4C854FFAC8ECLL ^ __ROR8__(v133, 61))) ^ 0x68B873F8FCD75EC8) >> (8 * (v14 & 7u))) ^ v13;
  v136 = (((v135 - ((2 * v135) & 0x15ELL)) << 16) + 0x30A78F5762AF0000) ^ 0x30A78F5762AF0000;
  v137 = (v118 - ((2 * v118) & 0xA81A98E1C9DEAB4ELL) - 0x2BF2B38F1B10AA59) ^ 0xD40D4C70E4EF55A7 | (v136 - ((2 * v136) & 0x3CB82722D9E20000) - 0x61A3EC6E930EB5C6) ^ 0x9E5C13916CF14A3ALL;
  v138 = __ROR8__(v11 & 0xFFFFFFFFFFFFFFF8, 8);
  v139 = ((0x7653FFD844AF1481 - v138) & 0x529ADAA51514455CLL) + v138 - 0x7653FFD844AF1482 - ((v138 - 0x7653FFD844AF1482) & 0x529ADAA51514455CLL);
  v140 = __ROR8__(v139 ^ 0xE0540B03C1AD87CELL, 8);
  v141 = (v137 - ((2 * v137) & 0xAB50CDA986396698) - 0x2A57992B3CE34CB4) ^ 0xD5A866D4C31CB34CLL;
  v142 = v139 ^ 0xAD340A3E1B2ADC3ALL;
  v143 = (((v140 + (v139 ^ 0xAD340A3E1B2ADC3ALL)) | 0x7DB19439D5F1CCCCLL) - ((v140 + (v139 ^ 0xAD340A3E1B2ADC3ALL)) | 0x824E6BC62A0E3333) - 0x7DB19439D5F1CCCDLL) ^ 0xF00FDDE65ECF0AC6;
  v144 = __ROR8__(v143, 8);
  v145 = v143 ^ __ROR8__(v142, 61);
  v146 = (((v144 + v145) & 0x788A5C50FF477F5FLL ^ 0x882404046034B0BLL) + ((v144 + v145) & 0x8775A3AF00B880A0 ^ 0x8175010600388081) - 1) ^ 0xC8DF1D1E6BA04D02;
  v147 = v146 ^ __ROR8__(v145, 61);
  v148 = (__ROR8__(v146, 8) + v147) ^ 0x1717D4ABBED3C077;
  v149 = __ROR8__(v148, 8);
  v150 = v148 ^ __ROR8__(v147, 61);
  v151 = (((2 * (v149 + v150)) | 0x75FF21A51885509ELL) - (v149 + v150) - 0x3AFF90D28C42A84FLL) ^ 0xD6771C6D53797B9FLL;
  v152 = __ROR8__(v151, 8);
  v153 = v151 ^ __ROR8__(v150, 61);
  v154 = (((2 * (v152 + v153)) | 0x5CA5DE9B2A16C314) - (v152 + v153) - 0x2E52EF4D950B618ALL) ^ 0x1ECA485AADB086A9;
  v155 = __ROR8__(v154, 8);
  v156 = v154 ^ __ROR8__(v153, 61);
  v157 = (((v155 + v156) | 0xACFB152F5E235A2ALL) - ((v155 + v156) | 0x5304EAD0A1DCA5D5) + 0x5304EAD0A1DCA5D5) ^ 0xFCD3AE4CB9812FAALL;
  v158 = v157 ^ __ROR8__(v156, 61);
  v159 = __ROR8__(v157, 8);
  v160 = (((((((v159 + v158) ^ 0x68B873F8FCD75EC8) >> (8 * (v11 & 7u))) ^ LOBYTE(STACK[0x3A0])) - ((2 * ((((v159 + v158) ^ 0x68B873F8FCD75EC8) >> (8 * (v11 & 7u))) ^ LODWORD(STACK[0x3A0]))) & 0xD8)) << 8) + 0x656F4C2EF9FB6C00) ^ 0x656F4C2EF9FB6C00;
  v161 = v141 | (v160 - ((2 * v160) & 0x4D0D95807EF16400) + 0x2686CAC03F78B2CELL) ^ 0x2686CAC03F78B2CELL;
  v162 = __ROR8__(v9 & 0xFFFFFFFFFFFFFFF8, 8);
  v163 = v162 - ((2 * v162 + 0x1358004F76A1D6FCLL) & 0x41AF948D421BCAB4) + 0x2E83CA6E5C5ED0D8;
  v164 = __ROR8__(v163 ^ 0x16191BE075B427C8, 8);
  v163 ^= 0x5B791ADDAF337C3CuLL;
  v165 = __ROR8__((v164 + v163) ^ 0x8DBE49DF8B3EC60ALL, 8);
  v166 = (v164 + v163) ^ 0x8DBE49DF8B3EC60ALL ^ __ROR8__(v163, 61);
  v167 = __ROR8__((((2 * (v165 + v166)) & 0x55C06E2F00B4CAB4) - (v165 + v166) - 0x2AE03717805A655BLL) ^ 0x943794B0523E1C2CLL, 8);
  v168 = (((2 * (v165 + v166)) & 0x55C06E2F00B4CAB4) - (v165 + v166) - 0x2AE03717805A655BLL) ^ 0x943794B0523E1C2CLL ^ __ROR8__(v166, 61);
  v169 = (((2 * (v167 + v168)) | 0x9B94C29DE3853946) - (v167 + v168) + 0x32359EB10E3D635DLL) ^ 0xDADDB5E54F115CD4;
  v170 = v169 ^ __ROR8__(v168, 61);
  v171 = (__ROR8__(v169, 8) + v170) ^ v18;
  v172 = __ROR8__(v171, 8);
  v173 = v171 ^ __ROR8__(v170, 61);
  v174 = (((2 * (v172 + v173)) | 0xF8965BD215354BBELL) - (v172 + v173) + 0x3B4D216F5655A21) ^ 0xCCD38AFE322142FCLL;
  v175 = __ROR8__(v174, 8);
  v176 = v174 ^ __ROR8__(v173, 61);
  v177 = ((v175 + v176) | 0xAE369C8CF25F2B72) - ((v175 + v176) | 0x51C963730DA0D48DLL) + 0x51C963730DA0D48DLL;
  v178 = (((__ROR8__(v177 ^ 0xFE1E27EF15FD5EF2, 8) + (v177 ^ 0xFE1E27EF15FD5EF2 ^ __ROR8__(v176, 61))) ^ 0x68B873F8FCD75EC8) >> (8 * (v9 & 7u))) ^ LODWORD(STACK[0x390]);
  v179 = (v161 - ((2 * v161) & 0x453D573D1F5CC204) - 0x5D61546170519EFELL) ^ 0xA29EAB9E8FAE6102 | (v178 - ((2 * v178) & 0x1FALL) - 0x655FB5C7BC995903) ^ 0x9AA04A384366A6FDLL;
  *STACK[0x400] = (v179 - ((2 * v179) & 0x93A8A56A12B5594ELL) - 0x362BAD4AF6A55359) ^ 0xC9D452B5095AACA7;
  return (*(v101 + 8 * ((6621 * (a9 == -1237781108)) ^ (STACK[0x3B0] + 1194))))();
}

uint64_t sub_244A667DC(uint64_t a1, unint64_t a2, int a3)
{
  LODWORD(STACK[0x310]) = a3;
  STACK[0x320] = a2;
  LODWORD(STACK[0x340]) = v4;
  return (*(v5 + 8 * (v3 ^ 0x42B7 ^ (v3 + 18334))))();
}

uint64_t sub_244A66B50()
{
  v2 = (*(v0 + 8 * (v1 ^ 0x6426u)))(*STACK[0x468]);
  STACK[0x238] = v2;
  return (*(v0 + 8 * (((((v1 + 64) ^ (v2 == 0)) & 1) * (6 * (v1 ^ 0x3E24) - 5780)) ^ v1)))();
}

uint64_t sub_244A66BC8()
{
  v3 = *v2 - ((2 * *v2) & 0x1FE327C8) + 267490276;
  v4 = ((v3 << (((v1 - 72) & 0x2C) - 7)) & 0xFFE7F72E ^ 0x1FE32708) + (v3 ^ 0xF0026873) + ((v1 - 1564767033) & 0x5D4437BF ^ 0x766EEA46) != 1986197635;
  return (*(v0 + 8 * ((8 * v4) | (16 * v4) | v1)))();
}

uint64_t sub_244A66D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v6 + 8 * (((v5 < ((v4 + 13954) ^ 0x369Au)) * (((v4 + 2104) | 0x14) - 2125)) ^ (v4 + 13954)));
  LODWORD(STACK[0x234]) = v5;
  return v7(a1, a2, a3, a4, 0);
}

uint64_t sub_244A66F30(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int8x16_t a9, int8x16_t a10, int64x2_t a11, int8x16_t a12, int64x2_t a13, int8x16_t a14, int8x16_t a15, int8x16_t a16)
{
  v37 = (v18 + v20);
  v38.i64[0] = v23 + (v18 + v22);
  v38.i64[1] = v23 + (v18 + v21);
  v39.i64[0] = v23 + (v18 + a3);
  v40 = STACK[0x338];
  v39.i64[1] = v23 + (v18 + a2);
  v41.i64[0] = v23 + v37;
  v41.i64[1] = v23 + (v18 + a7);
  v42.i64[0] = v23 + (v18 + a5);
  v42.i64[1] = v23 + (v18 + a4 + a6);
  v43 = vandq_s8(v42, a9);
  v44 = vandq_s8(v41, a9);
  v45 = vandq_s8(v39, a9);
  v46 = vandq_s8(v38, a9);
  v47 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL), a11);
  v48 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), a11);
  v49 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), a11);
  v50 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), a11);
  v51 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v49, v49), a12), v49), a13);
  v52 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v50, v50), a12), v50), a13);
  v53 = veorq_s8(v52, a16);
  v54 = veorq_s8(v51, a16);
  v55 = veorq_s8(v51, v24);
  v56 = veorq_s8(v52, v24);
  v57 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v55), v25);
  v58 = vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL);
  v59 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v56), v25);
  v60 = veorq_s8(v59, vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL));
  v61 = veorq_s8(v57, v58);
  v62 = vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL);
  v63 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL), v61);
  v64 = vaddq_s64(v62, v60);
  v65 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v63, v26), vorrq_s8(v63, a14)), a14), v27);
  v66 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v64, v26), vorrq_s8(v64, a14)), a14), v27);
  v67 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL));
  v68 = veorq_s8(v65, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v69 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v68);
  v70 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v67);
  v71 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v70, v70), v28), v70), v29), v30);
  v72 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v69, v69), v28), v69), v29), v30);
  v73 = vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL);
  v74 = veorq_s8(v72, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v75 = veorq_s8(v71, v73);
  v76 = vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL);
  v77 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL), v75);
  v78 = veorq_s8(vaddq_s64(v76, v74), v31);
  v79 = veorq_s8(v77, v31);
  v80 = vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL);
  v81 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v82 = veorq_s8(v78, v80);
  v83 = vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL);
  v84 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v82);
  v85 = veorq_s8(vaddq_s64(v83, v81), v32);
  v86 = vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL);
  v87 = veorq_s8(v84, v32);
  v88 = veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL));
  v89 = veorq_s8(v85, v86);
  v90 = vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL);
  v91 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v89);
  v92 = vaddq_s64(v90, v88);
  v93 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v91, v33), vorrq_s8(v91, a15)), a15), v34);
  v94 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v92, v33), vorrq_s8(v92, a15)), a15), v34);
  v95 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL));
  v96 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL));
  v97 = vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL);
  v98 = vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL);
  v99 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v48, v48), a12), v48), a13);
  v100 = vaddq_s64(v98, v96);
  v101 = veorq_s8(vaddq_s64(v97, v95), v35);
  v136.val[3] = vshlq_u64(veorq_s8(v100, v35), vnegq_s64(vandq_s8(vshlq_n_s64(v38, 3uLL), a10)));
  v136.val[2] = vshlq_u64(v101, vnegq_s64(vandq_s8(vshlq_n_s64(v39, 3uLL), a10)));
  v102 = veorq_s8(v99, a16);
  v103 = veorq_s8(v99, v24);
  v104 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103), v25);
  v105 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v105);
  v107 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v106, v26), vorrq_s8(v106, a14)), a14), v27);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108);
  v110 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v109, v109), v28), v109), v29), v30);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v112 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111), v31);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113), v32);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v116, v33), vorrq_s8(v116, a15)), a15), v34);
  v118 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v47, v47), a12), v47), a13);
  v136.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL))), v35), vnegq_s64(vandq_s8(vshlq_n_s64(v41, 3uLL), a10)));
  v119 = veorq_s8(v118, a16);
  v120 = veorq_s8(v118, v24);
  v121 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120), v25);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v123 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122);
  v124 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v123, v26), vorrq_s8(v123, a14)), a14), v27);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v125);
  v127 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v126, v126), v28), v126), v29), v30);
  v128 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v129 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v128), v31);
  v130 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v131 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v130), v32);
  v132 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL));
  v133 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v132);
  v134 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v133, v33), vorrq_s8(v133, a15)), a15), v34);
  v136.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL))), v35), vnegq_s64(vandq_s8(vshlq_n_s64(v42, 3uLL), a10)));
  *(v17 + v37) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v136, v36)), *(v23 + v37 - 7));
  return (*(v40 + 8 * (((v18 != v19) * a8) ^ v16)))(a1, (a2 - 8), (a3 - 8), (a4 - 8), (a5 - 8));
}

uint64_t sub_244A675A0(unint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, unint64_t a8)
{
  STACK[0x210] = v17 - 15;
  STACK[0x3A0] = *(v15 + 8 * v8);
  LODWORD(STACK[0x224]) = v10 & 0xFFFFFFF0;
  LODWORD(STACK[0x21C]) = -(v10 & 0xFFFFFFF0);
  LODWORD(STACK[0x22C]) = a2;
  LODWORD(STACK[0x228]) = a3;
  LODWORD(STACK[0x230]) = v11;
  v21 = a3 + a2 + v11 + a7;
  LODWORD(STACK[0x20C]) = v21 - 15;
  *&STACK[0x360] = vdupq_n_s64(0x38uLL);
  *&STACK[0x370] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x340] = vdupq_n_s64(a8);
  *&STACK[0x3B0] = vdupq_n_s64(v9);
  *&STACK[0x310] = vdupq_n_s64(v12);
  *&STACK[0x320] = vdupq_n_s64(v13);
  LODWORD(STACK[0x220]) = (4 * v8) ^ 0x688;
  *&STACK[0x2E0] = vdupq_n_s64(0x8DBE49DF8B3EC60ALL);
  *&STACK[0x2F0] = vdupq_n_s64(v19);
  *&STACK[0x2C0] = vdupq_n_s64(a1);
  *&STACK[0x2D0] = vdupq_n_s64(0x8574301568F42481);
  v22 = STACK[0x210];
  *&STACK[0x2A0] = vdupq_n_s64(v16);
  *&STACK[0x2B0] = vdupq_n_s64(v20);
  *&STACK[0x280] = vdupq_n_s64(v18);
  *&STACK[0x290] = vdupq_n_s64(v14);
  *&STACK[0x260] = vdupq_n_s64(0xC5D013FD68B9D45BLL);
  *&STACK[0x270] = vdupq_n_s64(0x3098A71738BBE723uLL);
  *&STACK[0x240] = vdupq_n_s64(0x68B873F8FCD75EC8uLL);
  *&STACK[0x250] = vdupq_n_s64(0x95F8A89E8F1BA1DBLL);
  *&STACK[0x380] = xmmword_245010D30;
  return (STACK[0x3A0])(v22, (v21 - 7), (v21 - 6), LODWORD(STACK[0x21C]), (v21 - 12), 4294967280);
}

uint64_t sub_244A67784@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, int a9@<W8>, int8x16_t a10@<Q4>, int64x2_t a11@<Q6>, int8x16_t a12@<Q7>)
{
  v38.i64[0] = v20 + (v23 + a6 + 16);
  v38.i64[1] = v20 + (v22 + a6 + 16);
  *&STACK[0x3A0] = v38;
  v38.i64[0] = v20 + (a5 + a6 + 16);
  v39.i64[0] = v20 + (a3 + a6 + 16);
  v38.i64[1] = v20 + (v14 + a6 + 16);
  v40 = v38;
  v39.i64[1] = v20 + (a2 + a6 + 16);
  v41.i64[0] = v20 + (v19 + a6 + 16);
  v41.i64[1] = v20 + (a8 + a6 + 16);
  v42 = (a7 + a6 + 16);
  v43.i64[0] = v20 + v42;
  v43.i64[1] = v20 + (v24 + a6 + 16);
  v44.i64[0] = v20 + (v16 + a6 + v12 + 16);
  v44.i64[1] = v20 + (a9 + a6 + 16);
  v45 = *&STACK[0x370];
  v46 = vandq_s8(v44, *&STACK[0x370]);
  v47 = vandq_s8(v43, *&STACK[0x370]);
  v48 = vandq_s8(v41, *&STACK[0x370]);
  v49 = vandq_s8(v39, *&STACK[0x370]);
  v50 = *&STACK[0x340];
  v51 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), *&STACK[0x340]);
  v52 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), *&STACK[0x340]);
  v53 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), *&STACK[0x340]);
  v54 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), *&STACK[0x340]);
  v55 = vsubq_s64(vorrq_s8(vaddq_s64(v54, v54), *&STACK[0x3B0]), v54);
  v56 = vsubq_s64(vorrq_s8(vaddq_s64(v53, v53), *&STACK[0x3B0]), v53);
  v57 = vsubq_s64(vorrq_s8(vaddq_s64(v52, v52), *&STACK[0x3B0]), v52);
  *&STACK[0x390] = vsubq_s64(vorrq_s8(vaddq_s64(v51, v51), *&STACK[0x3B0]), v51);
  v58 = vaddq_s64(v56, a11);
  v59 = vaddq_s64(v55, a11);
  v60 = veorq_s8(v59, *&STACK[0x310]);
  v61 = veorq_s8(v58, *&STACK[0x310]);
  v62 = veorq_s8(v58, a12);
  v63 = veorq_s8(v59, a12);
  v64 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL), v62), v27);
  v65 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v63), v27);
  v66 = veorq_s8(v65, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v67 = veorq_s8(v64, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v68 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v67);
  v69 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v66);
  v70 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v68, v28), vorrq_s8(v68, v26)), v26), v29);
  v71 = vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL);
  v72 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v69, v28), vorrq_s8(v69, v26)), v26), v29);
  v73 = veorq_s8(v72, vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL));
  v74 = veorq_s8(v70, v71);
  v75 = vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL);
  v76 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL), v74);
  v77 = vaddq_s64(v75, v73);
  v78 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v77, v77), v30), v77), v31), v32);
  v79 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v76, v76), v30), v76), v31), v32);
  v80 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL));
  v81 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v82 = vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL);
  v83 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v81);
  v84 = veorq_s8(vaddq_s64(v82, v80), v33);
  v85 = vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL);
  v86 = veorq_s8(v83, v33);
  v87 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL));
  v88 = veorq_s8(v84, v85);
  v89 = vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL);
  v90 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v88);
  v91 = veorq_s8(vaddq_s64(v89, v87), v34);
  v92 = vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL);
  v93 = veorq_s8(v90, v34);
  v94 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL));
  v95 = veorq_s8(v91, v92);
  v96 = vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL);
  v97 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v95);
  v98 = vaddq_s64(v96, v94);
  v99 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v97, v36), vorrq_s8(v97, v35)), v35), v37);
  v100 = vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL);
  v101 = vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL);
  v102 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v98, v36), vorrq_s8(v98, v35)), v35), v37);
  v103 = veorq_s8(v102, v101);
  v104 = veorq_s8(v99, v100);
  v105 = vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL);
  v106 = vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL);
  v65.i64[0] = v20 + (v17 + a6 + 16);
  v65.i64[1] = v20 + (v13 + a6 + 16);
  v107 = vaddq_s64(v57, a11);
  v108 = veorq_s8(vaddq_s64(v105, v103), a10);
  v190.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v106, v104), a10), vnegq_s64(vandq_s8(vshlq_n_s64(v39, 3uLL), *&STACK[0x360])));
  v190.val[1] = vshlq_u64(v108, vnegq_s64(vandq_s8(vshlq_n_s64(v41, 3uLL), *&STACK[0x360])));
  v109 = veorq_s8(v107, *&STACK[0x310]);
  v110 = veorq_s8(v107, a12);
  v111 = vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL);
  v112 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110), v27);
  v113 = veorq_s8(v112, v111);
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113);
  v115 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v114, v28), vorrq_s8(v114, v26)), v26), v29);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v117 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116);
  v118 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v117, v117), v30), v117), v31), v32);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v120 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119), v33);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v122 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121), v34);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v124 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123);
  v125 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v124, v36), vorrq_s8(v124, v35)), v35), v37);
  v39.i64[0] = v20 + (v18 + a6 + 16);
  v39.i64[1] = v20 + (v25 + a6 + 16);
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL)));
  v127 = vandq_s8(v39, v45);
  v128 = vaddq_s64(*&STACK[0x390], a11);
  v190.val[0] = vshlq_u64(veorq_s8(v126, a10), vnegq_s64(vandq_s8(vshlq_n_s64(v43, 3uLL), *&STACK[0x360])));
  v129 = veorq_s8(v128, *&STACK[0x310]);
  v130 = veorq_s8(v128, a12);
  v131 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v130), v27);
  v132 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL));
  v133 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v132);
  v134 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v133, v28), vorrq_s8(v133, v26)), v26), v29);
  v135 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v136 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v135);
  v137 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v136, v136), v30), v136), v31), v32);
  v138 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v139 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), v138), v33);
  v140 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v141 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), v140), v34);
  v142 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL));
  v143 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), v142);
  v144 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v143, v36), vorrq_s8(v143, v35)), v35), v37);
  v145 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v146 = vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL);
  v147 = vandq_s8(v65, v45);
  v148 = vaddq_s64(v146, v145);
  v149 = vandq_s8(v40, v45);
  v190.val[2] = vshlq_u64(veorq_s8(v148, a10), vnegq_s64(vandq_s8(vshlq_n_s64(v44, 3uLL), *&STACK[0x360])));
  v150 = vandq_s8(*&STACK[0x3A0], v45);
  v151 = vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL);
  v152 = vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL);
  v153 = vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL);
  v154 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v50);
  v155 = vaddq_s64(v153, v50);
  v156 = vaddq_s64(v152, v50);
  v157 = vaddq_s64(v151, v50);
  v158 = vsubq_s64(vorrq_s8(vaddq_s64(v157, v157), *&STACK[0x3B0]), v157);
  v159 = vsubq_s64(vorrq_s8(vaddq_s64(v155, v155), *&STACK[0x3B0]), v155);
  v160 = vsubq_s64(vorrq_s8(vaddq_s64(v154, v154), *&STACK[0x3B0]), v154);
  v161 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v156, v156), *&STACK[0x3B0]), v156), a11);
  v162 = vaddq_s64(v158, a11);
  v190.val[3].i64[0] = vqtbl4q_s8(v190, *&STACK[0x380]).u64[0];
  v163 = veorq_s8(v162, *&STACK[0x310]);
  v190.val[0] = veorq_s8(v161, *&STACK[0x310]);
  v164 = veorq_s8(v161, a12);
  v165 = veorq_s8(v162, a12);
  v190.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190.val[0], 0x38uLL), v190.val[0], 8uLL), v164), v27);
  v190.val[1] = vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL);
  v166 = vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL);
  v167 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), v165), v27);
  v168 = veorq_s8(v167, v166);
  v169 = veorq_s8(v190.val[0], v190.val[1]);
  v190.val[1] = vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL);
  v170 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190.val[0], 0x38uLL), v190.val[0], 8uLL), v169);
  v190.val[0] = vaddq_s64(v190.val[1], v168);
  v171 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v170, v28), vorrq_s8(v170, v26)), v26), v29);
  v190.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v190.val[0], v28), vorrq_s8(v190.val[0], v26)), v26), v29);
  v172 = veorq_s8(v190.val[0], vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v173 = veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v174 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), v173);
  v190.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190.val[0], 0x38uLL), v190.val[0], 8uLL), v172);
  v190.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v190.val[0], v190.val[0]), v30), v190.val[0]), v31), v32);
  v190.val[1] = vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL);
  v175 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v174, v174), v30), v174), v31), v32);
  v176 = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL));
  v177 = veorq_s8(v190.val[0], v190.val[1]);
  v190.val[1] = vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL);
  v178 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190.val[0], 0x38uLL), v190.val[0], 8uLL), v177);
  v190.val[0] = veorq_s8(vaddq_s64(v190.val[1], v176), v33);
  v179 = veorq_s8(v178, v33);
  v190.val[1] = vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL);
  v180 = veorq_s8(v179, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v181 = veorq_s8(v190.val[0], v190.val[1]);
  v190.val[1] = vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL);
  v182 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190.val[0], 0x38uLL), v190.val[0], 8uLL), v181);
  v190.val[0] = veorq_s8(vaddq_s64(v190.val[1], v180), v34);
  v190.val[1] = vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL);
  v183 = veorq_s8(v182, v34);
  v184 = veorq_s8(v183, vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL));
  v185 = veorq_s8(v190.val[0], v190.val[1]);
  v190.val[1] = vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL);
  v186 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190.val[0], 0x38uLL), v190.val[0], 8uLL), v185);
  v190.val[0] = vaddq_s64(v190.val[1], v184);
  v187 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v186, v36), vorrq_s8(v186, v35)), v35), v37);
  v190.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v190.val[0], v36), vorrq_s8(v190.val[0], v35)), v35), v37);
  v190.val[2] = vaddq_s64(v159, a11);
  v189.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL), veorq_s8(v187, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL))), a10), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3A0], 3uLL), *&STACK[0x360])));
  v189.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190.val[0], 0x38uLL), v190.val[0], 8uLL), veorq_s8(v190.val[0], vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL))), a10), vnegq_s64(vandq_s8(vshlq_n_s64(v40, 3uLL), *&STACK[0x360])));
  v190.val[0] = veorq_s8(v190.val[2], *&STACK[0x310]);
  v190.val[1] = veorq_s8(v190.val[2], a12);
  v190.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190.val[0], 0x38uLL), v190.val[0], 8uLL), v190.val[1]), v27);
  v190.val[1] = veorq_s8(v190.val[0], vsraq_n_u64(vshlq_n_s64(v190.val[1], 3uLL), v190.val[1], 0x3DuLL));
  v190.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190.val[0], 0x38uLL), v190.val[0], 8uLL), v190.val[1]);
  v190.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v190.val[0], v28), vorrq_s8(v190.val[0], v26)), v26), v29);
  v190.val[1] = veorq_s8(v190.val[0], vsraq_n_u64(vshlq_n_s64(v190.val[1], 3uLL), v190.val[1], 0x3DuLL));
  v190.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190.val[0], 0x38uLL), v190.val[0], 8uLL), v190.val[1]);
  v190.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v190.val[0], v190.val[0]), v30), v190.val[0]), v31), v32);
  v190.val[1] = veorq_s8(v190.val[0], vsraq_n_u64(vshlq_n_s64(v190.val[1], 3uLL), v190.val[1], 0x3DuLL));
  v190.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190.val[0], 0x38uLL), v190.val[0], 8uLL), v190.val[1]), v33);
  v190.val[1] = veorq_s8(v190.val[0], vsraq_n_u64(vshlq_n_s64(v190.val[1], 3uLL), v190.val[1], 0x3DuLL));
  v190.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190.val[0], 0x38uLL), v190.val[0], 8uLL), v190.val[1]), v34);
  v190.val[1] = veorq_s8(v190.val[0], vsraq_n_u64(vshlq_n_s64(v190.val[1], 3uLL), v190.val[1], 0x3DuLL));
  v190.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190.val[0], 0x38uLL), v190.val[0], 8uLL), v190.val[1]);
  v190.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v190.val[0], v36), vorrq_s8(v190.val[0], v35)), v35), v37);
  v190.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190.val[0], 0x38uLL), v190.val[0], 8uLL), veorq_s8(v190.val[0], vsraq_n_u64(vshlq_n_s64(v190.val[1], 3uLL), v190.val[1], 0x3DuLL)));
  v190.val[1] = vaddq_s64(v160, a11);
  v189.val[1] = vshlq_u64(veorq_s8(v190.val[0], a10), vnegq_s64(vandq_s8(vshlq_n_s64(v65, 3uLL), *&STACK[0x360])));
  v190.val[0] = veorq_s8(v190.val[1], *&STACK[0x310]);
  v190.val[1] = veorq_s8(v190.val[1], a12);
  v190.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190.val[0], 0x38uLL), v190.val[0], 8uLL), v190.val[1]), v27);
  v190.val[1] = veorq_s8(v190.val[0], vsraq_n_u64(vshlq_n_s64(v190.val[1], 3uLL), v190.val[1], 0x3DuLL));
  v190.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190.val[0], 0x38uLL), v190.val[0], 8uLL), v190.val[1]);
  v190.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v190.val[0], v28), vorrq_s8(v190.val[0], v26)), v26), v29);
  v190.val[1] = veorq_s8(v190.val[0], vsraq_n_u64(vshlq_n_s64(v190.val[1], 3uLL), v190.val[1], 0x3DuLL));
  v190.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190.val[0], 0x38uLL), v190.val[0], 8uLL), v190.val[1]);
  v190.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v190.val[0], v190.val[0]), v30), v190.val[0]), v31), v32);
  v190.val[1] = veorq_s8(v190.val[0], vsraq_n_u64(vshlq_n_s64(v190.val[1], 3uLL), v190.val[1], 0x3DuLL));
  v190.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190.val[0], 0x38uLL), v190.val[0], 8uLL), v190.val[1]), v33);
  v190.val[1] = veorq_s8(v190.val[0], vsraq_n_u64(vshlq_n_s64(v190.val[1], 3uLL), v190.val[1], 0x3DuLL));
  v190.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190.val[0], 0x38uLL), v190.val[0], 8uLL), v190.val[1]), v34);
  v190.val[1] = veorq_s8(v190.val[0], vsraq_n_u64(vshlq_n_s64(v190.val[1], 3uLL), v190.val[1], 0x3DuLL));
  v190.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190.val[0], 0x38uLL), v190.val[0], 8uLL), v190.val[1]);
  v190.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v190.val[0], v36), vorrq_s8(v190.val[0], v35)), v35), v37);
  v189.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190.val[0], 0x38uLL), v190.val[0], 8uLL), veorq_s8(v190.val[0], vsraq_n_u64(vshlq_n_s64(v190.val[1], 3uLL), v190.val[1], 0x3DuLL))), a10), vnegq_s64(vandq_s8(vshlq_n_s64(v39, 3uLL), *&STACK[0x360])));
  v190.val[3].i64[1] = vqtbl4q_s8(v189, *&STACK[0x380]).u64[0];
  v189.val[1] = vrev64q_s8(v190.val[3]);
  *(a1 + v42) = veorq_s8(vextq_s8(v189.val[1], v189.val[1], 8uLL), *(v20 + v42 - 15));
  return (*(v21 + 8 * ((219 * (a4 == a6)) ^ v15)))();
}

uint64_t sub_244A683B0@<X0>(uint64_t a1@<X0>, int a2@<W6>, uint64_t a3@<X7>, int a4@<W8>)
{
  v21 = (a4 + a2);
  v22 = __ROR8__((v13 + v21) & 0xFFFFFFFFFFFFFFF8, 8);
  v23 = (((v7 & v8) + v9) | (2 * (v22 + a3))) - (v22 + a3) + v12;
  v24 = v23 ^ v11;
  v25 = v23 ^ v19;
  v26 = (__ROR8__(v24, 8) + v25) ^ 0x8DBE49DF8B3EC60ALL;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (v4 - ((v28 + v27) | v4) + ((v28 + v27) | 0x8574301568F42481)) ^ a1;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = __ROR8__(v29, 8);
  v32 = __ROR8__(((v20 & (2 * (v31 + v30))) - (v31 + v30) + v16) ^ v14, 8);
  v33 = ((v20 & (2 * (v31 + v30))) - (v31 + v30) + v16) ^ v14 ^ __ROR8__(v30, 61);
  v34 = (v32 + v33) ^ v18;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0x3098A71738BBE723;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (v6 - ((v38 + v37) | v6) + ((v38 + v37) | 0xC5D013FD68B9D45BLL)) ^ 0x95F8A89E8F1BA1DBLL;
  *(v17 + v21) = (((__ROR8__(v39, 8) + (v39 ^ __ROR8__(v37, 61))) ^ 0x68B873F8FCD75EC8) >> (8 * ((v13 + a4 + a2) & 7))) ^ *(v13 + v21);
  return (*(v15 + 8 * (((a4 == 1986197636) * v10) ^ v5)))();
}

void sub_244A6854C(uint64_t a1)
{
  v1 = 810199703 * (((a1 ^ 0xA523A65C | 0xB3E8917D) - ((a1 ^ 0xA523A65C) & 0xB3E8917D)) ^ 0xF04221AC);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_244A686BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v9 - 208) = *v7;
  *(v9 - 207) = v7[1];
  *(v9 - 206) = v7[2];
  *(v9 - 205) = v7[3];
  *(v9 - 204) = v7[4];
  *(v9 - 203) = v7[5];
  *(v9 - 202) = v7[6];
  *(v9 - 201) = v7[7];
  *(v9 - 200) = v7[8];
  *(v9 - 199) = v7[9];
  *(v9 - 198) = v7[10];
  *(v9 - 197) = v7[11];
  *(v9 - 196) = v7[12];
  *(v9 - 195) = v7[13];
  *(v9 - 194) = v7[14];
  *(v9 - 193) = v7[15];
  return (*(a7 + 8 * ((v8 - 1588) | 0x643)))();
}

uint64_t sub_244A68764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a14)
  {
    v18 = v17 == v16;
  }

  else
  {
    v18 = 1;
  }

  v21 = v18 || a15 == 0 || *(&off_278E1E490 + v15 - 22557) == 12;
  return (*(a7 + 8 * (((((v15 + 17) ^ v21) & 1) * (5 * (v15 ^ 0x5CA3) - 6162)) | v15)))(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_244A688A4@<X0>(uint64_t a1@<X6>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v33 = *(&off_278E1E490 + v30 - 19920) - 8;
  v34 = *(&off_278E1E490 + (v30 ^ 0x4D52));
  v35 = (((8 * (v31 - 110 - ((2 * (v31 - 110)) & 0x72) + 113)) ^ 8) - ((16 * (v31 - 110 - ((2 * (v31 - 110)) & 0x72) + 113)) & 0x20) + 48) & 0x38;
  v36 = v31 - 0x14EE39B944FC1F66 - ((2 * (v31 - 0x14EE39B944FC1F66)) & 0x4CC6C02B34247E90) + 0x266360159A123F48;
  v37 = ((((v36 << 56) ^ 0x4800000000000000) - ((v36 << 57) & 0x6A00000000000000) - 0x4A6705191B7AC0B8) & 0xF800000000000000 | (v36 >> 8)) ^ 0xB0266360159A123FLL;
  v38 = (v37 - ((2 * v37) & 0x41DC7E3CF7522CECLL) - 0x5F11C0E18456E98ALL) ^ 0xA0EE3F1E7BA91676;
  v39 = v38 - ((2 * v38 + 0x1358004F76A1D6FCLL) & 0x6AB0B7BE06C4F5B6) + 0x3F045C06BEB36659;
  *(&v40 + 1) = v39 ^ 0x49;
  *&v40 = v39 ^ 0x7968A79D7DBB800;
  v41 = (v39 ^ 0x4AF68B440D5CE3BDLL) + ((v40 >> 8) ^ 0xF57AFDFDF5B6FE9BLL) + ((2 * (v40 >> 8)) & 0xEAF5FBFBEB6DFD36) + 0xA8502020A490165;
  v42 = v41 - ((2 * v41) & 0x5822FF511BAE468ELL) - 0x53EE80577228DCB9;
  *(&v40 + 1) = v39 ^ 0xAF68B440D5CE3BDLL;
  *&v40 = v39 ^ 0x4000000000000000;
  v43 = v42 ^ ((v40 >> 61) - ((2 * (v40 >> 61)) & 0x44251C198441320ELL) + 0x22128E0CC2209907);
  *(&v40 + 1) = v42 ^ 0x4D;
  *&v40 = v42 ^ 0x21AF367706E9E500;
  v44 = (v43 ^ 0x3BDB87BC4C97C4ALL) + ((v40 >> 8) ^ 0x4FBFBD3FCE8FFFEFLL) + ((2 * (v40 >> 8)) & 0x9F7F7A7F9D1FFFDELL) - 0x4FBFBD3FCE8FFFEFLL;
  v45 = v44 - ((2 * v44) & 0x72BF9DD35F996598) + 0x395FCEE9AFCCB2CCLL;
  *(&v40 + 1) = v43 ^ 0x3BDB87BC4C97C4ALL;
  *&v40 = v43;
  v46 = (v40 >> 61) - ((2 * (v40 >> 61)) & 0x3159510077B32E90) - 0x6753577FC42668B8;
  *(&v40 + 1) = v45 ^ 0x45;
  *&v40 = v45 ^ 0x787792B182573400;
  v47 = (v45 ^ v46 ^ 0xE0DB3A31B98EA30DLL) + ((v40 >> 8) ^ 0x7FADCEEDFABF3CFFLL) + ((2 * (v40 >> 8)) & 0xFF5B9DDBF57E79FELL) - 0x7FADCEEDFABF3CFFLL;
  *(&v40 + 1) = v45 ^ v46 ^ 0xDB3A31B98EA30DLL;
  *&v40 = v45 ^ ~v46;
  v48 = v47 - ((2 * v47) & 0x1D3E4B4347A4A40) - 0x7F160DA5E5C2DAE0;
  v49 = (v40 >> 61) - ((2 * (v40 >> 61)) & 0xE6BC2DEEFABCF72CLL) - 0xCA1E90882A1846ALL;
  *(&v40 + 1) = (v47 - ((2 * v47) & 0x347A4A40) + 440214816) ^ 0x57u;
  *&v40 = v48 ^ 0x97FE26F1A4EEE500;
  v50 = v48 ^ v49;
  v51 = (v50 ^ 0x64A03006D9B09EC1) + ((v40 >> 8) ^ 0xEFB7FFFADDCEE9FALL) + ((2 * (v40 >> 8)) & 0xDF6FFFF5BB9DD3F4) + 0x1048000522311606;
  v52 = v51 - ((2 * v51) & 0xEFF2D5C03C3CD658) + 0x77F96AE01E1E6B2CLL;
  *(&v40 + 1) = v50 ^ 0x4A03006D9B09EC1;
  *&v40 = v50 ^ 0x6000000000000000;
  v53 = v52 ^ ((v40 >> 61) - ((2 * (v40 >> 61)) & 0x4CDD157DA063CAA2) - 0x599175412FCE1AAFLL);
  *(&v40 + 1) = v52 ^ 0xFC;
  *&v40 = v52 ^ 0x9B71E65FC125B800;
  v54 = (v53 ^ 0x3D1F6CE111145DADLL) + ((v40 >> 8) ^ 0xFFF2BFEA877ADDDALL) + ((2 * (v40 >> 8)) & 0xFFE57FD50EF5BBB4) + 0xD401578852226;
  v55 = v54 - ((2 * v54) & 0xC5ECD2C88EC0DD04) + 0x62F6696447606E82;
  *(&v40 + 1) = v53 ^ 0x1D1F6CE111145DADLL;
  *&v40 = v53 ^ 0x2000000000000000;
  v56 = (v40 >> 61) - ((2 * (v40 >> 61)) & 0x60683649BD7DE87CLL) - 0x4FCBE4DB21410BC2;
  *(&v40 + 1) = v55 ^ 0xA1;
  *&v40 = v55 ^ 0x526ECE737FDB8900;
  v57 = v55 ^ v56 ^ 0xE25AD557A1657D9FLL;
  v58 = v57 + ((v40 >> 8) ^ 0xF8CFDBBFD75BDFBDLL) + ((2 * (v40 >> 8)) & 0xF19FB77FAEB7BF7ALL) + 0x730244028A42043;
  v59 = v58 - ((2 * v58) & 0xE381939EE0342606) - 0xE3F36308FE5ECFDLL;
  *(&v40 + 1) = v55 ^ v56 ^ 0x25AD557A1657D9FLL;
  *&v40 = v55 ^ ~v56;
  v60 = (v40 >> 61) - ((2 * (v40 >> 61)) & 0x37B79A930EF18A22) + 0x1BDBCD498778C511;
  *(&v40 + 1) = v59 ^ 0xFFFFFF83;
  *&v40 = v59 ^ 0xA1E872AC97B86600;
  v61 = (v60 ^ 0xBA33BFE510C0A392 ^ v59) + ((v40 >> 8) ^ 0xEF5F036B76DEFB6FLL) + ((2 * (v40 >> 8)) & 0xDEBE06D6EDBDF6DELL) + 0x10A0FC9489210491;
  v62 = (v61 - ((2 * v61) & 0x6574524696D27534) + 0x32BA29234B693A9ALL) ^ 0x5A025ADBB7BE6452;
  *(v32 - 240) = *(&off_278E1E490 + (v30 ^ 0x481C)) - 12;
  *(v32 - 256) = v34;
  *(v32 - 248) = v33;
  HIDWORD(a6) = a2 ^ 0xB9C4BEF1;
  return (*(a1 + 8 * v30))(4120094672, 70, (v62 >> (v35 ^ 0x30u)) - ((2 * (v62 >> (v35 ^ 0x30u))) & 0x384E37D4878ED130) - 0x63D8E415BC389768, v35 ^ 0xB, 0xFE6621446E777EALL, v57, a1, 352, a3, a4, a9 + 0x32E7700E700DEC15, a6, a1, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_244A6AF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, int a39, int a40, int a41, int a42, int a43, int a44, int a45, int a46, int a47, int a48, int a49, uint64_t a50)
{
  LODWORD(v331) = v51;
  v53 = v50 ^ 0x1E4325D4u;
  *(v52 - 216) = v53;
  v54 = a11 + v53;
  v55 = a11 + v53 - 0x32E7700E700DEC15;
  v320 = (v51 - 112215211) ^ 0xF94FF7EC;
  v56 = v55 << (((v51 + 85) ^ 0xEC) - 30);
  LODWORD(v323) = (v51 - 112215211) & 0x6B05E9E;
  v57 = (((((v51 + 85) & 0x9E ^ 0x8A) + 8 * (v55 - (v56 & 0xE2)) + 112) ^ 8) + 38) & 0x38;
  v58 = (((((v55 - (v56 & 0xDF65BF5FC2740766) - 0x104D20501EC5FC4DLL) << 56) ^ 0xB300000000000000) - ((2 * (((v55 - (v56 & 0xDF65BF5FC2740766) - 0x104D20501EC5FC4DLL) << 56) ^ 0xB300000000000000)) & 0x9600000000000000) + 0x4B8EF35499CEA0D6) & 0xF800000000000000 | ((v55 - (v56 & 0xDF65BF5FC2740766) - 0x104D20501EC5FC4DLL) >> 8)) ^ 0x48EFB2DFAFE13A03;
  v59 = (v58 - 0x3CEA5F2F93BB411ELL - ((2 * v58) & 0x802B41A0D8897DC4)) ^ 0xC315A0D06C44BEE2;
  v60 = v59 - ((2 * v59 + 0x1358004F76A1D6FCLL) & 0x4E4CE948C673B73ELL) - 0x4F2D8B33E17538E3;
  *(&v61 + 1) = v60 ^ 0xD;
  *&v61 = v60 ^ 0x95E8A502B7801900;
  v62 = v50;
  v63 = (v60 ^ 0xD888A43F6D0742F9) + ((v61 >> 8) ^ 0xCE5EB5D7EDDBBF7CLL) + ((2 * (v61 >> 8)) & 0x9CBD6BAFDBB77EF8) + 0x31A14A2812244084;
  v64 = v63 - ((2 * v63) & 0xBDADA52E7D05DEC8) + 0x5ED6D2973E82EF64;
  *(&v61 + 1) = v60 ^ 0x1888A43F6D0742F9;
  *&v61 = v60 ^ 0xC000000000000000;
  v65 = v64 ^ ((v61 >> 61) - ((2 * (v61 >> 61)) & 0x8DFBCE7742D86824) + 0x46FDE73BA16C3412);
  v66 = (((v65 ^ 0x95957C7314D01D7CLL) + ((v64 >> 8) ^ 0xD3689B48B5BC29)) ^ 0xFFF7C7FFB6FF7BDDLL) + ((2 * ((v65 ^ 0x95957C7314D01D7CLL) + ((v64 >> 8) ^ 0xD3689B48B5BC29))) & 0xFFEF8FFF6DFEF7BALL) + ((((v64 << 56) ^ 0x6E00000000000000) - 0x46F2F866D76374DDLL - ((2 * ((v64 << 56) ^ 0x6E00000000000000)) & 0x7200000000000000)) ^ 0xB90D0799289C8B23) + 0x8380049008423;
  v67 = v66 - ((2 * v66) & 0x541B2977E4191742) - 0x55F26B440DF3745FLL;
  *(&v61 + 1) = v65 ^ 0x15957C7314D01D7CLL;
  *&v61 = v65 ^ 0x8000000000000000;
  v68 = v67 ^ ((v61 >> 61) - ((2 * (v61 >> 61)) & 0x7430E9F6B8BF50E2) - 0x45E78B04A3A0578FLL);
  *(&v61 + 1) = v67 ^ 0x28;
  *&v61 = v67 ^ 0xEB25C8E3DF970D00;
  v69 = (v68 ^ 0x513DBC1883C8A559) + ((v61 >> 8) ^ 0xFFBFFDFF83FAB2BFLL) + ((2 * (v61 >> 8)) & 0xFF7FFBFF07F5657ELL) + 0x4002007C054D41;
  *(&v61 + 1) = v68 ^ 0x113DBC1883C8A559;
  *&v61 = v68 ^ 0x4000000000000000;
  v70 = v69 - ((2 * v69) & 0x8D27E95EBFAE33B4) - 0x396C0B50A028E626;
  v71 = v70 ^ ((v61 >> 61) - ((2 * (v61 >> 61)) & 0x69240C4D7E8E6D3ELL) - 0x4B6DF9D940B8C961);
  *(&v61 + 1) = v70 ^ 0xAD;
  *&v61 = v70 ^ 0xD1842004E104D900;
  v72 = (v71 ^ 0x651626225E43EF32) + ((v61 >> 8) ^ 0xEA7F07BFEEDDDA2FLL) + ((2 * (v61 >> 8)) & 0xD4FE0F7FDDBBB45ELL) + 0x1580F840112225D1;
  v73 = v72 - ((2 * v72) & 0x87077CFD2116C980) - 0x3C7C41816F749B40;
  *(&v61 + 1) = v71 ^ 0x51626225E43EF32;
  *&v61 = v71 ^ 0x6000000000000000;
  v74 = v73 ^ ((v61 >> 61) - ((2 * (v61 >> 61)) & 0x4789B9DDEE1A1B6ELL) + 0x23C4DCEEF70D0DB7);
  *(&v61 + 1) = v73 ^ 0x10;
  *&v61 = v73 ^ 0x2F0B32C14FB0B700;
  v75 = (v74 ^ 0xCCFEE2FB8BDBAA7) + ((v61 >> 8) ^ 0xB79FFF6CF4DFBDBBLL) + ((2 * (v61 >> 8)) & 0x6F3FFED9E9BF7B76) + 0x486000930B204245;
  v76 = v75 - ((2 * v75) & 0xFAD5A1CA6B11B518) - 0x2952F1ACA772574;
  *(&v61 + 1) = v74 ^ 0xCCFEE2FB8BDBAA7;
  *&v61 = v74;
  v77 = (v61 >> 61) - ((2 * (v61 >> 61)) & 0x81B5086D1D6F7CFCLL) + 0x40DA84368EB7BE7ELL;
  *(&v61 + 1) = v76 ^ 0xAF;
  *&v61 = v76 ^ 0xCDF277F20D333D00;
  v78 = v76 ^ v77;
  v79 = (v78 ^ 0x8D28F3C4838483D1) + ((v61 >> 8) ^ 0xEFD5FE6FFDDFFFFELL) + ((2 * (v61 >> 8)) & 0xDFABFCDFFBBFFFFCLL) + 0x102A019002200002;
  v80 = v79 - ((2 * v79) & 0x79350861D08250E2) - 0x43657BCF17BED78FLL;
  *(&v61 + 1) = v78 ^ 0xD28F3C4838483D1;
  *&v61 = v78 ^ 0x8000000000000000;
  v81 = (v61 >> 61) - ((2 * (v61 >> 61)) & 0x7FBB48F32D7FF298) - 0x40225B86694006B4;
  *(&v61 + 1) = v80 ^ 0xFFFFFFF1;
  *&v61 = v80 ^ 0xECB23F530FE35D00;
  v82 = (v81 ^ 0x536F9B2A995CA4BDLL ^ v80) + ((v61 >> 8) ^ 0xBDF7BEF7FBA5F7FDLL) + ((2 * (v61 >> 8)) & 0x7BEF7DEFF74BEFFALL) + 0x42084108045A0803;
  v83 = ((v82 - ((2 * v82) & 0xA5E13CCBB5097AD6) + 0x52F09E65DA84BD6BLL) ^ 0x3A48ED9D2653E3A3) >> (v57 ^ 0x20u);
  v84 = v83 + 0x6EF5D4D634A8BF6BLL - ((2 * v83) & 0xDDEBA9AC69517ED6);
  *(&v61 + 1) = (v54 - 1465584397 - ((2 * (v54 - 1879960589)) & 0x3165C350) + 168) & 0xF8 ^ 0xA8u;
  *&v61 = (v54 + 0x47BCBD5A8A4F4F3 - ((2 * (v54 - 0x32E7700E700DEC0DLL)) & 0x6EC677C83165C350) + 168) ^ 0x37633BE418B2E100;
  v85 = ((2 * (v61 >> 8)) & 0x91BD1CEFF7FEFFDALL) + ((v61 >> 8) ^ 0x4FDE8E77FBFF7FEDLL);
  v86 = v85 - ((2 * v85 + 0x139AE35F7EA2D722) & 0x178E8CF85F0AF3F4) - 0x3A6B47D411291A75;
  v87 = ((((v86 >> 8) ^ 0x390997DAFB3CBBLL) + (v86 ^ 0x746996E721BBE09CLL)) ^ 0x3BF5C6FDCFD71FD3) + ((2 * (((v86 >> 8) ^ 0x390997DAFB3CBBLL) + (v86 ^ 0x746996E721BBE09CLL))) & 0x77EB8DFB9FAE3FA6) + ((((v86 << 56) ^ 0x6800000000000000) - 0x5CA132A851A972CELL - ((2 * ((v86 << 56) ^ 0x6800000000000000)) & 0x4600000000000000)) ^ 0xA35ECD57AE568D32) - 0x3BF5C6FDCFD71FD3;
  *(&v61 + 1) = v86 ^ 0x146996E721BBE09CLL;
  *&v61 = v86 ^ 0x6000000000000000;
  v88 = v87 - ((2 * v87) & 0x108BF7CD5D8812A0) + 0x845FBE6AEC40950;
  v89 = v88 ^ ((v61 >> 61) - ((2 * (v61 >> 61)) & 0xCC16146A43F666CELL) - 0x19F4F5CADE04CC99);
  *(&v61 + 1) = v88 ^ 0x5A;
  *&v61 = v88 ^ 0x85FBB23925FACF00;
  v90 = (v89 ^ 0x63F0B80C0401FC3DLL) + ((v61 >> 8) ^ 0x9FFFEF6CFCEEDD7FLL) + ((2 * (v61 >> 8)) & 0x3FFFDED9F9DDBAFELL) + 0x6000109303112281;
  v91 = v90 - ((2 * v90) & 0xE2572A537D18C6A2) + 0x712B9529BE8C6351;
  *(&v61 + 1) = v89 ^ 0x3F0B80C0401FC3DLL;
  *&v61 = v89 ^ 0x6000000000000000;
  v92 = v91 ^ ((v61 >> 61) - ((2 * (v61 >> 61)) & 0x245BC885E1A05B7ELL) + 0x122DE442F0D02DBFLL);
  *(&v61 + 1) = v91 ^ 0xD8;
  *&v61 = v91 ^ 0x3003C9719317E500;
  v93 = (v92 ^ 0x222E2D3363C7C867) + ((v61 >> 8) ^ 0x75FF73FEFFD7DEF4) + ((2 * (v61 >> 8)) & 0xEBFEE7FDFFAFBDE8) - 0x75FF73FEFFD7DEF4;
  *(&v61 + 1) = v92 ^ 0x22E2D3363C7C867;
  *&v61 = v92 ^ 0x2000000000000000;
  v94 = v93 - ((2 * v93) & 0x59BCACCAB75AED6ELL) - 0x5321A99AA4528949;
  v95 = v94 ^ ((v61 >> 61) - ((2 * (v61 >> 61)) & 0xEFDD07DD2166BF2ALL) - 0x8117C116F4CA06BLL);
  v96 = ((((v94 >> 8) ^ 0xBBC982CEE57EB6) + (v95 ^ 0x4C27012075CDE955)) ^ 0x23F6656B97FF3FFELL) + ((2 * (((v94 >> 8) ^ 0xBBC982CEE57EB6) + (v95 ^ 0x4C27012075CDE955))) & 0x47ECCAD72FFE7FFCLL) + ((((v94 << 56) ^ 0xC000000000000000) + 0x3DA97A40DAECACDELL - ((v94 << 57) & 0x7A00000000000000)) ^ 0x3DA97A40DAECACDELL) - 0x23F6656B97FF3FFELL;
  v97 = v96 - ((2 * v96) & 0x1CB2D44E656AC878) + 0xE596A2732B5643CLL;
  *(&v61 + 1) = v95 ^ 0xC27012075CDE955;
  *&v61 = v95 ^ 0x4000000000000000;
  v98 = (v61 >> 61) - ((2 * (v61 >> 61)) & 0x325FA5089D40743ELL) + 0x192FD2844EA03A1FLL;
  v99 = ((v97 << 56) ^ 0xEC00000000000000) - 0x11A10479183B5A7FLL - ((2 * ((v97 << 56) ^ 0xEC00000000000000)) & 0xDDDDDDDDDDDDDDDDLL);
  v100 = (v97 >> 8) ^ 0xE2D1E698ED8EB7;
  v101 = v100 - ((((v99 ^ 0xEE5EFB86E7C4A581 | (v97 >> 8)) ^ 0xE2D1E698ED8EB7) - 0x531210C13378D4F5 - ((2 * ((v99 ^ 0xEE5EFB86E7C4A581 | (v97 >> 8)) ^ 0xE2D1E698ED8EB7)) & 0x59DBDE7D990E5616)) ^ 0xACEDEF3ECC872B0BLL);
  v102 = (v99 ^ ((v99 ^ 0x11A10479183B5A7ELL) - ((2 * (v99 ^ 0x11A10479183B5A7ELL) + 2) & 0x637344BEB922338CLL) + 0x31B9A25F5C9119C7) ^ 0x7FCDB37D562AC803 ^ (v101 - ((2 * v101) & 0x4055D549DAFEE888) - 0x5FD5155B12808BBCLL)) + v100;
  v103 = (v97 ^ v98 ^ 0xFBFE341CA32E8DF3) + (v102 ^ 0xEC96FFF67EE75F1FLL) + ((2 * v102) & 0xD92DFFECFDCEBE3ELL) + 0x136900098118A0E1;
  v104 = v103 - ((2 * v103) & 0xA809A86E7940C634) - 0x2BFB2BC8C35F9CE6;
  *(&v61 + 1) = v97 ^ v98 ^ 0x1BFE341CA32E8DF3;
  *&v61 = v97 ^ ~v98;
  v105 = (v61 >> 61) - ((2 * (v61 >> 61)) & 0x8026F311AA02725ALL) - 0x3FEC86772AFEC6D3;
  *(&v61 + 1) = v104 ^ 0x39;
  *&v61 = v104 ^ 0xE49C7320041B8400;
  v106 = v104 ^ v105;
  v107 = (v106 ^ 0x248F0AA8D11ABD14) + ((v61 >> 8) ^ 0xEFFFFB076FBFFFFFLL) + ((2 * (v61 >> 8)) & 0xDFFFF60EDF7FFFFELL) + 0x100004F890400001;
  v108 = v107 - ((2 * v107) & 0xD74C36E884BC72CALL) - 0x1459E48BBDA1C69BLL;
  *(&v61 + 1) = v106 ^ 0x48F0AA8D11ABD14;
  *&v61 = v106 ^ 0x2000000000000000;
  v109 = (v61 >> 61) - ((2 * (v61 >> 61)) & 0x2A321F327DB0D682) + 0x15190F993ED86B41;
  *(&v61 + 1) = v108 ^ 0xE5;
  *&v61 = v108 ^ 0xBB8EA017A5FC4C00;
  v110 = (v109 ^ 0xAE97AF8E9B2427A4 ^ v108) + ((v61 >> 8) ^ 0xDEFDFB77FFEFF3CFLL) + ((2 * (v61 >> 8)) & 0xBDFBF6EFFFDFE79ELL) + 0x2102048800100C31;
  v111 = (v110 - ((2 * v110) & 0x294576D6F9A8AEEELL) - 0x6B5D4494832BA889) ^ 0xFC1AC893800309BFLL;
  v112 = (v111 >> (v57 ^ 0x20u)) + 0x31E7704BCA864A61 - ((2 * (v111 >> (v57 ^ 0x20u))) & 0x63CEE097950C94C2);
  LOBYTE(v108) = v57 ^ 0x1E;
  v113 = (4 * ((v111 << (v57 ^ 0x1Eu)) - ((2 * (v111 << (v57 ^ 0x1Eu))) & 0x3CA29843C006E100)) - 0x6BACF787FF23DF4) ^ 0xF9453087800DC20CLL;
  v114 = ((v113 + 0x75BCC1E784018159 - ((2 * v113) & 0xEB7983CF080302B0)) ^ 0x75BCC1E784018159) + (v84 ^ 0x6EF5D4D634A8BF6BLL);
  v115 = v54 - 0x25B3105032EEA005 - ((2 * (v54 - 0x32E7700E700DEC05)) & 0x1A68BF7C7A3E991ALL) + 141;
  *(&v61 + 1) = v115 & 0xF8 ^ 0x88888888;
  *&v61 = v115 ^ 0xD345FBE3D1F4C00;
  v116 = v114 - ((2 * v114) & 0x165DFCBE8F82894) - 0x7F4D101A0B83EBB6;
  v117 = ((2 * (v61 >> 8)) & 0x91DDFE8FFFF5EEF2) + ((v61 >> 8) ^ 0x4FEEFF47FFFAF779);
  v118 = v117 - ((2 * v117 + 0x737A01BF76ABE80ALL) & 0x8DC5782263749322) + 0x9FBCF0ED103D96;
  *(&v61 + 1) = v118 ^ 3;
  *&v61 = v118 ^ 0x742C6DB7E5038B00;
  v119 = (v118 ^ 0x394C6C8A3F84D0F7) + ((v61 >> 8) ^ 0x6E77FBBFC87AEFC6) + ((2 * (v61 >> 8)) & 0xDCEFF77F90F5DF8CLL) - 0x6E77FBBFC87AEFC6;
  *(&v61 + 1) = v118 ^ 0x194C6C8A3F84D0F7;
  *&v61 = v118 ^ 0x2000000000000000;
  v120 = v119 - ((2 * v119) & 0xF91D748921DC7628) + 0x7C8EBA4490EE3B14;
  v121 = v120 ^ ((v61 >> 61) - ((2 * (v61 >> 61)) & 0x9A7268727F77F172) + 0x4D3934393FBBF8B9);
  *(&v61 + 1) = v120 ^ 0x1E;
  *&v61 = v120 ^ 0xF130F39B1BD0FD00;
  v122 = (v121 ^ 0xBC09C7A2246B05A7) + ((v61 >> 8) ^ 0x6FFE7AFD9C7DD77DLL) + ((2 * (v61 >> 8)) & 0xDFFCF5FB38FBAEFALL) - 0x6FFE7AFD9C7DD77DLL;
  v123 = v122 - ((2 * v122) & 0x90031417F790FD2ALL) + 0x48018A0BFBC87E95;
  *(&v61 + 1) = v121 ^ 0x1C09C7A2246B05A7;
  *&v61 = v121 ^ 0xBFFFFFFFFFFFFFFFLL;
  v124 = v123 ^ ((v61 >> 61) - ((2 * (v61 >> 61)) & 0x6990BD0E774678D4) - 0x4B37A178C45CC396);
  *(&v61 + 1) = v123 ^ 0x1C;
  *&v61 = v123 ^ 0x929D653D653F800;
  v125 = (v124 ^ 0xBDE188D4EDF0C476) + ((v61 >> 8) ^ 0xFF1ED5FE73AFF52BLL) + ((2 * (v61 >> 8)) & 0xFE3DABFCE75FEA56) + 0xE12A018C500AD5;
  *(&v61 + 1) = v124 ^ 0x1DE188D4EDF0C476;
  *&v61 = v124 ^ 0xBFFFFFFFFFFFFFFFLL;
  v126 = v125 - ((2 * v125) & 0x2B5874C3983912C2) - 0x6A53C59E33E3769FLL;
  v127 = v126 ^ ((v61 >> 61) - ((2 * (v61 >> 61)) & 0xD6344817B7D3E0ECLL) - 0x14E5DBF424160F8ALL);
  *(&v61 + 1) = v126 ^ 0x16;
  *&v61 = v126 ^ 0x82BBEECA72CF4900;
  v128 = (v127 ^ 0x69A1CAC1A926B960) + ((v61 >> 8) ^ 0xF8FFF6DE69DEF1F7) + ((2 * (v61 >> 8)) & 0xF1FFEDBCD3BDE3EELL) + 0x700092196210E09;
  v129 = v128 - ((2 * v128) & 0xA9D62EEB08EF9624) + 0x54EB17758477CB12;
  *(&v61 + 1) = v127 ^ 0x9A1CAC1A926B960;
  *&v61 = v127 ^ 0x6000000000000000;
  v130 = (v61 >> 61) - ((2 * (v61 >> 61)) & 0xB1DA9D48166F08F4) + 0x58ED4EA40B37847ALL;
  *(&v61 + 1) = v129 ^ 0xC2;
  *&v61 = v129 ^ 0xB8639BCA5B4C1800;
  v131 = (v129 ^ v130 ^ 0xE08ED56E507B9CB8) + ((v61 >> 8) ^ 0x67FCBFBED8F746FFLL) + ((2 * (v61 >> 8)) & 0xCFF97F7DB1EE8DFELL) - 0x67FCBFBED8F746FFLL;
  *(&v61 + 1) = v129 ^ v130 ^ 0x8ED56E507B9CB8;
  *&v61 = v129 ^ ~v130;
  v132 = v131 - ((2 * v131) & 0xE0811570FCEF3A52) + 0x70408AB87E779D29;
  v133 = (v61 >> 61) - ((2 * (v61 >> 61)) & 0x77AF9D1063498EB4) - 0x44283177CE5B38A6;
  *(&v61 + 1) = v132 ^ 0xA;
  *&v61 = v132 ^ 0x40D82DAF46CC7A00;
  v134 = (v132 ^ v133 ^ 0xFB0FE3277768BD50) + ((v61 >> 8) ^ 0x77965FBFFF7C9FFDLL) + ((2 * (v61 >> 8)) & 0xEF2CBF7FFEF93FFALL) - 0x77965FBFFF7C9FFDLL;
  v135 = v134 - ((2 * v134) & 0x69170191130723C0) - 0x4B747F37767C6E20;
  *(&v61 + 1) = v132 ^ v133 ^ 0x1B0FE3277768BD50;
  *&v61 = v132 ^ ~v133;
  v136 = (v61 >> 61) - ((2 * (v61 >> 61)) & 0xF5ACEF405C69018ALL) + 0x7AD677A02E3480C5;
  *(&v61 + 1) = v135 ^ 0x60;
  *&v61 = v135 ^ 0xE4A33BAB6E21E400;
  v137 = (v136 ^ 0x9E754C0B401564A5 ^ v135) + ((v61 >> 8) ^ 0x77FFFAF9591BAF6BLL) + ((2 * (v61 >> 8)) & 0xEFFFF5F2B2375ED6) - 0x77FFFAF9591BAF6BLL;
  v138 = ((v137 - ((2 * v137) & 0x69C950ABBD764692) + 0x34E4A855DEBB2349) ^ 0x1C5CDBAD226C7D81) << v108;
  v139 = (4 * (v138 - ((2 * v138) & 0x15CD0C95D7197600)) + 0x2B9A192BAE32EC40) ^ 0x2B9A192BAE32EC40;
  v140 = (v112 ^ 0x31E7704BCA864A61) + ((v139 + 0x10770172F32BF3C5 - 2 * (v139 & 0x10770172F32BF3ECLL)) ^ 0x10770172F32BF3C5);
  LODWORD(v108) = *(*(v52 - 240) + (v84 ^ 0x78));
  v141 = *(v52 - 240);
  v142 = *(v52 - 256);
  DWORD1(v61) = *(v142 + (BYTE1(v116) ^ 0x72));
  LODWORD(v61) = (DWORD1(v61) ^ 0x3A) << 24;
  v143 = v140 - ((2 * v140) & 0x3816E288AAE10C2CLL) - 0x63F48EBBAA8F79EALL;
  LODWORD(v108) = ((((v108 ^ 0xF4) - ((2 * (v108 ^ 0xF4)) & 0x9C)) << 24) - 838860800) ^ 0xCE000000;
  LODWORD(v140) = ((((((v61 >> 25) - ((2 * (v61 >> 25)) & 0x88) - 60) ^ 0x7D) - ((2 * (((v61 >> 25) - ((2 * (v61 >> 25)) & 0x88) - 60) ^ 0x7D)) & 0x2E)) << 16) + 1612120064) ^ 0x60170000;
  LODWORD(v140) = (v140 + 1578212481 - ((2 * v140) & 0x3C220000)) ^ 0x5E119C81 | (v108 + 1058672345 - ((2 * v108) & 0x7E000000)) ^ 0x3F1A0ED9;
  LODWORD(v108) = *(a50 + (BYTE2(v116) ^ 0x14)) ^ 0x17;
  LODWORD(v108) = (((v108 - ((2 * v108) & 0x166)) << 8) + 77509376) ^ 0x49EB300;
  LODWORD(v140) = (v140 + 139575666 - ((2 * v140) & 0x10A382E4)) ^ 0x851C172 | (v108 - 1713743150 - ((2 * v108) & 0x33B4B400)) ^ 0x99DA5AD2;
  v144 = *(v52 - 248);
  LODWORD(v108) = *(v144 + (BYTE3(v116) ^ 0x38)) ^ 0x75;
  LODWORD(v140) = (v140 - 34465770 - ((2 * v140) & 0xFBE4302C)) ^ 0xFDF21816 | (v108 + 844128692 - ((2 * v108) & 0x168)) ^ 0x325061B4;
  *(v52 - 220) = v140 + 680682753 - ((2 * v140) & 0x5124CA02);
  LODWORD(v140) = *(v141 + (BYTE4(v116) ^ 0x43)) ^ 0x76;
  LODWORD(v140) = (((v140 - ((2 * v140) & 0xF8)) << 24) + 2080374784) ^ 0x7C000000;
  DWORD1(v61) = *(v142 + (BYTE5(v116) ^ 0x39));
  LODWORD(v61) = (DWORD1(v61) ^ 0x3A) << 24;
  LODWORD(v108) = ((((((v61 >> 25) - ((2 * (v61 >> 25)) & 0xD4) - 22) ^ 0x91) - ((2 * (((v61 >> 25) - ((2 * (v61 >> 25)) & 0xD4) - 22) ^ 0x91)) & 0xE6)) << 16) + 645070848) ^ 0x26730000;
  LODWORD(v140) = (v108 + 2031504350 - ((2 * v108) & 0x722C0000)) ^ 0x79164BDE | (v140 + 228557375 - ((2 * v140) & 0x1A000000)) ^ 0xD9F823F;
  LODWORD(v108) = *(a50 + (BYTE6(v116) ^ 0xDALL));
  LODWORD(v108) = ((((v108 ^ 0x17) - ((2 * v108) & 0x100)) << 8) - 721125376) ^ 0xD5048000;
  LODWORD(v140) = (v140 + 1650092255 - ((2 * v140) & 0xC4B4D1BE)) ^ 0x625A68DF | (v108 - 1408359893 - ((2 * v108) & 0x581C4400)) ^ 0xAC0E222B;
  LODWORD(v116) = *(v144 + (HIBYTE(v116) ^ 0x37));
  LODWORD(v108) = *(v141 + (v112 ^ 0x76)) ^ 0x2F;
  LODWORD(v108) = (((v108 - ((2 * v108) & 0x68)) << 24) + 872415232) ^ 0x34000000;
  LODWORD(v116) = (v140 + 1766458606 - ((2 * v140) & 0xD29409DC)) ^ 0x694A04EE | ((v116 ^ 0x86) - 1500276415 - ((2 * v116) & 0x82)) ^ 0xA6939941;
  *(v52 - 224) = v116 - 1680418722 - ((2 * v116) & 0x37ADB0BC);
  DWORD1(v61) = *(v142 + (BYTE1(v143) ^ 0x93));
  LODWORD(v61) = (DWORD1(v61) ^ 0x3A) << 24;
  LODWORD(v116) = ((v61 >> 25) - ((2 * (v61 >> 25)) & 0xB8) + 92) ^ 0xE8;
  LODWORD(v116) = ((((~(2 * v116) | 0xFFFFFF87) + v116) << 16) + 1044185088) ^ 0x3E3C0000;
  LODWORD(v116) = (v116 + 1229559946 - ((2 * v116) & 0x2920000)) ^ 0x4949988A | (v108 - 504953990 - ((2 * v108) & 0xC3FFFFFF)) ^ 0xE1E7037A;
  LODWORD(v140) = *(a50 + (BYTE2(v143) ^ 0x73)) ^ 0x5F;
  LODWORD(v140) = (((v140 - ((2 * v140) & 0x12A)) << 8) - 196963072) ^ 0xF4429500;
  LODWORD(v116) = (v116 - 1914979935 - ((2 * v116) & 0x1BB77342)) ^ 0x8DDBB9A1 | (v140 + 1789965118 - ((2 * v140) & 0x55616600)) ^ 0x6AB0B33E;
  LODWORD(v140) = *(v144 + (BYTE3(v143) ^ 0xD1)) ^ 0x49;
  LODWORD(v116) = (v116 + 1804450508 - ((2 * v116) & 0xD71B7598)) ^ 0x6B8DBACC | (v140 - 532968592 - ((2 * v140) & 0xE0)) ^ 0xE03B8B70;
  *(v52 - 228) = v116 - 1303690955 - ((2 * v116) & 0x6496826A);
  LODWORD(v116) = *(v141 + (BYTE4(v143) ^ 0xD3)) ^ 0x37;
  LODWORD(v116) = (((v116 - ((2 * v116) & 0xA6)) << 24) + 1392508928) ^ 0x53000000;
  DWORD1(v61) = *(v142 + (BYTE5(v143) ^ 0xEDLL));
  LODWORD(v61) = (DWORD1(v61) ^ 0x3A) << 24;
  LODWORD(v140) = ((((((v61 >> 25) - ((2 * (v61 >> 25)) & 0x2E) - 105) ^ 0xF0) - ((2 * (((v61 >> 25) - ((2 * (v61 >> 25)) & 0x2E) - 105) ^ 0xF0)) & 0x6E)) << 16) + 1144455168) ^ 0x44370000;
  LODWORD(v116) = (v140 - 1943773598 - ((2 * v140) & 0x18480000)) ^ 0x8C245E62 | (v116 - 1995541484 - ((2 * v116) & 0x12000000)) ^ 0x890E7414;
  LODWORD(v140) = *(a50 + (BYTE6(v143) ^ 0xAELL)) ^ 0xA9;
  LODWORD(v140) = (((v140 - ((2 * v140) & 0x152)) << 8) - 2142394112) ^ 0x804DA900;
  LODWORD(v116) = (v116 - 1247816141 - ((2 * v116) & 0x6B3FAC66)) ^ 0xB59FD633 | (v140 - 1046010874 - ((2 * v140) & 0x34E4800)) ^ 0xC1A72406;
  LODWORD(v143) = *(v144 + (HIBYTE(v143) ^ 0xD1)) ^ 0x4A;
  LODWORD(v116) = (v116 - 434764915 - ((2 * v116) & 0xCC2C071A)) ^ 0xE616038D | (v143 + 1059968881 - ((2 * v143) & 0xE2)) ^ 0x3F2DD771;
  *(v52 - 232) = v116 + 1145279667 - ((2 * v116) & 0x88872966);
  v346 = ((v62 & 0xFFFFFFF7 ^ 0x1E4325DC) + 699498967 + ((2 * ((v62 & 0xFFFFFFF7 ^ 0x1E4325DC) & 0x29B181D7 ^ (v62 | 0x7FFFFFFD))) ^ 0x15) + 7) ^ 0x29B181DD;
  v342 = v50 & 0xFFFFFFF1 ^ 0x1E4325DE;
  LODWORD(v112) = *(v141 + (*(a15 + v346) ^ 0xC0)) ^ 0xA;
  LODWORD(v112) = (((v112 - ((2 * v112) & 0x50)) << 24) + 671088640) ^ 0x28000000;
  LODWORD(v108) = *(a50 + (*(((v342 - 25485990 - ((2 * v342) & 0xFCF63AB4)) ^ 0x5FF7663F8086862DLL) + a15 + ((2 * ((v342 - 25485990 - ((2 * v342) & 0xFCF63AB4)) ^ 0xFE7B1D5A)) & 0xFDFB36EELL) - 0x5FF7663F7EFD9B77) ^ 0x43)) ^ 0xFF;
  LODWORD(v108) = (((v108 - ((2 * v108) & 0xFFFFFF03)) << 8) + 132481280) ^ 0x7E58100;
  v345 = v50 & 0xFFFFFFF3 ^ 0x1E4325DC;
  v338 = v50 & 0xFFFFFFF9 ^ 0x1E4325D6;
  LODWORD(v143) = *(v141 + (*(((v345 + 1097404113 - 2 * (v345 & 0x41690EF1 ^ v62 & 0x20)) ^ 0xFF9EFDFF0EB6B564) + a15 + ((2 * ((v345 + 1097404113 - 2 * (v345 & 0x41690EF1 ^ v62 & 0x20)) ^ 0x41690ED1)) & 0x9FBF776ALL) + 0x610200B020444BLL) ^ 0xE7)) ^ 0xB6;
  LODWORD(v143) = (((v143 - ((2 * v143) & 0xFFFFFFE3)) << 24) - 251658240) ^ 0xF1000000;
  v145 = v50;
  v336 = v50 & 0xFFFFFFF8 ^ 0x1E4325D7;
  LODWORD(v108) = (v143 + 1028741804 - ((2 * v143) & 0x7A000000)) ^ 0x3D515AAC | (v108 - 919958288 - ((2 * v108) & 0x12551800)) ^ 0xC92A8CF0;
  v146 = v108 + 1835302139 - ((2 * v108) & 0xDAC8F9F6);
  LODWORD(v108) = *(a50 + (*(((v338 - 697647224 - ((2 * v338) & 0xACD57F10)) ^ 0xFDFDFFEFE9D0A1FALL) + a15 + ((2 * ((v338 - 697647224 - ((2 * v338) & 0xACD57F10)) ^ 0xD66ABF88)) & 0x7F743CE4) + 0x2020010C045E18ELL) ^ 0x23)) ^ 0x6E;
  LODWORD(v108) = (((v108 - ((2 * v108) & 0x84)) << 8) - 2065808896) ^ 0x84DE4200;
  v344 = v62 & 0xFFFFFFF6 ^ 0x1E4325DD;
  LODWORD(v140) = *(v144 + (*(((v336 - 1158520617 + ((2 * (v336 & 0x3AF260D8 ^ (v62 | 0x7FFFFFF7))) ^ 0x1F) + 1) ^ 0x7A1FDEAD49D75B6CLL) + a15 + ((2 * ((v336 - 1158520617 + ((2 * (v336 & 0x3AF260D8 ^ (v62 | 0x7FFFFFF7))) ^ 0x1F) + 1) ^ 0xBAF260D7)) & 0x1E64A7776) - 0x7A1FDEADF3253BBBLL) ^ 0xE7)) ^ 0x4B;
  LODWORD(v140) = (v108 - 815733950 - ((2 * v108) & 0x1EC1C600)) ^ 0xCF60E342 | (v140 - 1619598153 - ((2 * v140) & 0x16E)) ^ 0x9F76E4B7;
  DWORD1(v61) = *(v142 + (*(((v344 + 1268961522 + ((2 * (v344 & 0x4BA2D0F2 ^ (v62 | 0x7FFFFFFD))) ^ 0x17) + 8) ^ 0xEF9ABD5D741D2F26) + a15 + ((2 * ((v344 + 1268961522 + ((2 * (v344 & 0x4BA2D0F2 ^ (v62 | 0x7FFFFFFD))) ^ 0x17) + 8) ^ 0x4BA2D0F9)) & 0x7F7FFFBE) + 0x106542A2C0400021) ^ 0x25));
  LODWORD(v61) = (DWORD1(v61) ^ 0x3A) << 24;
  LODWORD(v101) = v140 - 1299140877 - ((2 * v140) & 0x65215DE6);
  LODWORD(v140) = ((((((v61 >> 25) - ((2 * (v61 >> 25)) & 0xE4) + 114) ^ 0x13) - ((2 * (((v61 >> 25) - ((2 * (v61 >> 25)) & 0xE4) + 114) ^ 0x13)) & 0xE6)) << 16) + 376635392) ^ 0x16730000;
  LODWORD(v140) = (v140 - 1143049589 + (~(2 * v140) | 0x8843FFFF) + 1) ^ 0xBBDE728B | (v112 - 1351947404 - ((2 * v112) & 0x5E000000)) ^ 0xAF6AEB74;
  LODWORD(v100) = v140 - 332078090 - ((2 * v140) & 0xD869C7EC);
  v343 = v62 & 0xFFFFFFFD ^ 0x1E4325D6;
  LODWORD(v140) = *(a50 + (*(((v343 - 1641343955 - ((2 * v343) & 0x3C56285A)) ^ 0x7C39FAEF60B0C3CALL) + a15 + ((2 * ((v343 - 1641343955 - ((2 * v343) & 0x3C56285A)) ^ 0x9E2B142D)) & 0x1FD37AFCELL) - 0x7C39FAEFFE9BD7E7) ^ 0x6BLL)) ^ 0x71;
  LODWORD(v140) = (((v140 - ((2 * v140) & 0xDA)) << 8) - 77959936) ^ 0xFB5A6D00;
  v341 = ((v62 & 0xFFFFFFFC ^ 0x1E4325D7) - 265880423 - ((2 * (v62 & 0xFFFFFFFC ^ 0x1E4325D7)) & 0xE04DF932)) ^ 0xF026FC99;
  LODWORD(v132) = *(v144 + (*(a15 + v341) ^ 0x16)) ^ 0x8E;
  LODWORD(v140) = (v140 - 465613254 + (~(2 * v140) | 0xB78163FF) + 1) ^ 0xE43F4E3A | (v132 + 2119025029 - ((2 * v132) & 0x10A)) ^ 0x7E4DC185;
  LODWORD(v132) = *(v141 + (*(a15 + *(v52 - 216)) ^ 0x82));
  LODWORD(v132) = ((((v132 ^ 3) - ((2 * v132) & 0xE8)) << 24) + 1946157056) ^ 0x74000000;
  LODWORD(v140) = (v140 + 1451344122 - ((2 * v140) & 0x2D0381F4)) ^ 0x5681C0FA | (v132 - 1360945664 - ((2 * v132) & 0x5C000000)) ^ 0xAEE19E00;
  v339 = v145 & 0xFFFFFFFA ^ 0x1E4325D5;
  v340 = ((v145 & 0xFFFFFFF0 ^ 0x1E4325DF) + 1624107125 - ((2 * (v145 & 0xFFFFFFF0 ^ 0x1E4325DF)) & 0xC19BD0EA)) ^ 0x60CDE875;
  LODWORD(v135) = *(v144 + (*(a15 + v340) ^ 0xB9)) ^ 0x8E;
  v147 = (v135 - 2142276893 - ((2 * v135) & 0xFFFFFFC7)) ^ 0x804F72E3 | v146 ^ 0x6D647CFB;
  DWORD1(v61) = *(v142 + (*(((v339 + 571359278 - ((2 * v339) & 0x441C805C)) ^ 0x5EE77FE8E1B13FD9) + a15 + ((2 * ((v339 + 571359278 - ((2 * v339) & 0x441C805C)) ^ 0x220E402E)) & 0x1877EFFEELL) - 0x5EE77FE8C3BF7FF7) ^ 0x81));
  LODWORD(v61) = (DWORD1(v61) ^ 0x3A) << 24;
  LODWORD(v135) = ((((((v61 >> 25) - ((2 * (v61 >> 25)) & 0xFA) + 125) ^ 0xF1) - ((2 * (((v61 >> 25) - ((2 * (v61 >> 25)) & 0xFA) + 125) ^ 0xF1)) & 0xF0)) << 16) + 1400373248) ^ 0x53780000;
  LODWORD(v135) = (v135 - 429786 - ((2 * v135) & 0x7FF20000)) ^ 0xFFF97126 | v101 ^ 0xB290AEF3;
  v337 = v145 & 0xFFFFFFF5 ^ 0x1E4325DE;
  LODWORD(v116) = *(a50 + (*(((v337 + 1414729756 - ((2 * v337) & 0xA8A62038)) ^ 0x5FEDFF43ADADEDA2) + a15 + ((2 * ((v337 + 1414729756 - ((2 * v337) & 0xA8A62038)) ^ 0x5453101C)) & 0x1F3FDFB7CLL) - 0x5FEDFF43F9FEFDBELL) ^ 0x4ALL)) ^ 0x67;
  LODWORD(v116) = (((v116 - ((2 * v116) & 0x1C4)) << 8) - 733421056) ^ 0xD448E200;
  LODWORD(v116) = (v116 - 1869628563 - ((2 * v116) & 0x211F7600)) ^ 0x908FBB6D | v100 ^ 0xEC34E3F6;
  v333 = ((v145 & 0xFFFFFFFB ^ 0x1E4325D4) - 405402530 + ((2 * ((v145 & 0xFFFFFFFB ^ 0x1E4325D4) & 0x67D60C5B ^ (v145 | 0x7FFFFFFE))) ^ 0xB) + 1) ^ 0xE7D60C5E;
  LODWORD(v100) = *(v141 + (*(a15 + v333) ^ 0x71)) ^ 0x53;
  LODWORD(v100) = (((v100 - ((2 * v100) & 0x4E)) << 24) + 654311424) ^ 0x27000000;
  LODWORD(v135) = (v135 + 1208268066 - ((2 * v135) & 0x90096A44)) ^ 0x4804B522 | (v100 - 1531441492 - ((2 * v100) & 0x48000000)) ^ 0xA4B80EAC;
  HIDWORD(v331) = ((v62 & 0xFFFFFFFE ^ 0x1E4325D5) - 2126400237 + ((2 * ((v62 & 0xFFFFFFFE ^ 0x1E4325D5) & 0x141B51A ^ (v62 | 0x7FFFFFF7))) ^ 0x13) + 1) ^ 0x8141B513;
  DWORD1(v61) = *(v142 + (*(a15 + HIDWORD(v331)) ^ 0x58));
  LODWORD(v61) = (DWORD1(v61) ^ 0x3A) << 24;
  LODWORD(v143) = ((v61 >> 25) + (~(2 * (v61 >> 25)) | 0x83) - 65) ^ 0x8A;
  LODWORD(v143) = ((((~(2 * v143) | 0xFFFFFE1F) + v143) << 16) - 1276051456) ^ 0xB3F00000;
  LODWORD(v143) = (v143 + 875657246 - ((2 * v143) & 0x28620000)) ^ 0x3431781E | (v140 + 580589328 - ((2 * v140) & 0x45362E20)) ^ 0x229B1710;
  v334 = ((v62 & 0xFFFFFFF2 ^ 0x1E4325DD) + 1143110572 - ((2 * (v62 & 0xFFFFFFF2 ^ 0x1E4325DD)) & 0x8844F758)) ^ 0x44227BAC;
  v335 = v62;
  LODWORD(v140) = v143 - ((2 * v143) & 0x40DD6578);
  DWORD1(v61) = *(v142 + (*(a15 + v334) ^ 4));
  LODWORD(v61) = (DWORD1(v61) ^ 0x3A) << 24;
  LODWORD(v143) = ((((((((v61 >> 25) - ((2 * (v61 >> 25)) & 0xDC) + 118) ^ 5) - 8) ^ 0x26) - ((2 * (((((v61 >> 25) - ((2 * (v61 >> 25)) & 0xFFFFFFDC) + 118) ^ 5) - 8) ^ 0x26)) & 0x104)) << 16) - 1719533568) ^ 0x99820000;
  LODWORD(v108) = (v143 + 1321339127 - ((2 * v143) & 0x1D840000)) ^ 0x4EC208F7 | (v147 - 874728025 - ((2 * v147) & 0x97B96B4E)) ^ 0xCBDCB5A7;
  v332 = v62 & 0xFFFFFFF4 ^ 0x1E4325DF;
  LODWORD(v143) = *(v144 + (*(((v332 + 1774953735 - ((2 * v332) & 0xD3974A0E)) ^ 0x7F2BB7F70634A2F0) + a15 + ((2 * ((v332 + 1774953735 - ((2 * v332) & 0xD3974A0E)) ^ 0x69CBA507)) & 0xDFFE0FEELL) - 0x7F2BB7F76FFF07F7) ^ 0x22)) ^ 0x8E;
  LODWORD(v116) = (v116 + 2010730898 - ((2 * v116) & 0xEFB2A324)) ^ 0x77D95192 | (v143 + 823925926 - ((2 * v143) & 0x14C)) ^ 0x311C1CA6;
  v148 = v51;
  v149 = *(&off_278E1E490 + (v51 - 13049)) - 4;
  HIDWORD(v322) = v135 - ((2 * v135) & 0x82432BC4) + 1092720098;
  LODWORD(v143) = HIDWORD(v322) ^ *(v52 - 224);
  LODWORD(v132) = *&v149[4 * (BYTE3(v143) ^ 0x6C)];
  DWORD1(v61) = v132 ^ 0x18EA4;
  LODWORD(v61) = v132 ^ 0xDA800000;
  LODWORD(v132) = v61 >> 19;
  LODWORD(v322) = v116 - ((2 * v116) & 0x632818AC) - 1315697578;
  LODWORD(v101) = v322 ^ *(v52 - 228);
  LODWORD(v116) = *&v149[4 * (BYTE3(v101) ^ 0xD7)];
  DWORD1(v61) = v116 ^ 0x18EA4;
  LODWORD(v61) = v116 ^ 0xDA800000;
  v150 = v132 - ((2 * v132) & 0x732D2576);
  LODWORD(v112) = (v61 >> 19) - ((2 * (v61 >> 19)) & 0x36829A00);
  LODWORD(v321) = v108 - ((2 * v108) & 0x47D90074) - 1544781766;
  LODWORD(v116) = v321 ^ *(v52 - 232);
  LODWORD(v108) = *&v149[4 * (BYTE3(v116) ^ 0xF2)];
  DWORD1(v61) = v108 ^ 0x18EA4;
  LODWORD(v61) = v108 ^ 0xDA800000;
  LODWORD(v108) = (v61 >> 19) - ((2 * (v61 >> 19)) & 0xBC5240BC);
  LODWORD(v100) = (v140 - 1603358020) ^ 0xC07A2296;
  v151 = *(&off_278E1E490 + (v51 ^ 0x3760)) - 12;
  LODWORD(v140) = *&v151[4 * (BYTE1(v116) ^ 0x44)];
  HIDWORD(v321) = v100;
  LODWORD(v132) = v100 ^ *(v52 - 220);
  LODWORD(v100) = *&v149[4 * (BYTE3(v132) ^ 0x43)];
  DWORD1(v61) = v100 ^ 0x18EA4;
  LODWORD(v61) = v100 ^ 0xDA800000;
  LODWORD(v135) = *&v151[4 * (BYTE1(v101) ^ 0xE1)];
  v152 = *(&off_278E1E490 + (v331 ^ 0x3623)) - 8;
  v153 = *(&off_278E1E490 + (v331 ^ 0x368F)) - 4;
  v154 = *&v152[4 * ((v322 ^ *(v52 - 228)) ^ 7)] ^ (v140 - ((2 * v140 + 889856618) & 0x87FA2B28) + 1585587913) ^ *&v153[4 * (BYTE2(v132) ^ 4)] ^ (v150 + 966169275);
  v155 = *&v151[4 * (BYTE1(v132) ^ 0xA7)];
  LODWORD(v112) = *&v152[4 * ((v321 ^ *(v52 - 232)) ^ 0x22)] ^ *&v153[4 * (BYTE2(v143) ^ 0xB6)] ^ (v112 + 457264384) ^ (v155 - ((2 * v155 + 889856618) & 0x535F9AF0) + 1144315565);
  v156 = *&v151[4 * (BYTE1(v143) ^ 0x65)];
  v157 = (v108 - 567730082) ^ *&v152[4 * (v132 ^ 0x3F)] ^ *&v153[4 * (BYTE2(v101) ^ 8)] ^ (v156 - ((2 * v156 + 889856618) & 0xFE5D48D8) - 1716275807);
  LODWORD(v108) = ((v61 >> 19) - ((2 * (v61 >> 19)) & 0x632EC5AC) - 1315478826) ^ *&v153[4 * (BYTE2(v116) ^ 0x8F)] ^ (v135 - ((2 * v135 + 889856618) & 0x4DAE761A) - 1050915774) ^ *&v152[4 * ((BYTE4(v322) ^ *(v52 - 224)) ^ 0x9E)];
  LODWORD(v140) = *&v149[4 * (BYTE3(v108) ^ 0xC0)];
  DWORD1(v61) = v140 ^ 0x18EA4;
  LODWORD(v61) = v140 ^ 0xDA800000;
  LODWORD(v140) = (v61 >> 19) - ((2 * (v61 >> 19)) & 0x2198A99C);
  LODWORD(v135) = *&v151[4 * (BYTE1(v154) ^ 0x10)];
  v158 = *&v149[4 * (BYTE3(v112) ^ 0x4A)];
  LODWORD(v144) = v135 + 383618878 + ((-889856620 - 2 * v135) | 0x74F03EF);
  DWORD1(v61) = v158 ^ 0x18EA4;
  LODWORD(v61) = v158 ^ 0xDA800000;
  LODWORD(v135) = (v61 >> 19) - ((2 * (v61 >> 19)) & 0x1A5AAA0);
  v159 = *&v149[4 * (HIBYTE(v157) ^ 0xF0)];
  DWORD1(v61) = v159 ^ 0x18EA4;
  LODWORD(v61) = v159 ^ 0xDA800000;
  LODWORD(v116) = *&v153[4 * (BYTE2(v112) ^ 0xFA)] ^ *&v152[4 * ((BYTE2(v116) ^ v108) ^ 0x89)] ^ v144 ^ ((v61 >> 19) - ((2 * (v61 >> 19)) & 0x5EBEF854) + 794786858);
  LODWORD(v144) = *&v151[4 * (BYTE1(v112) ^ 0x8D)];
  v160 = *&v151[4 * (BYTE1(v157) ^ 0x50)];
  LODWORD(v132) = (v140 - 1865657138) ^ *&v153[4 * (BYTE2(v157) ^ 0xD7)] ^ (v144 - ((2 * v144 + 889856618) & 0x8F77654E) - 499072036) ^ *&v152[4 * ((BYTE2(v132) ^ v154) ^ 0xA)];
  LODWORD(v140) = *&v152[4 * ((v157 ^ BYTE2(v101)) ^ 0x13)];
  LODWORD(v101) = *&v151[4 * (BYTE1(v108) ^ 0x38)];
  LODWORD(v140) = *&v153[4 * (BYTE2(v154) ^ 0x9E)] ^ v140 ^ (v135 + 13817168);
  LODWORD(v135) = v101 - ((2 * v101 + 84550250) & 0xAC20D3C) + 535173075;
  LODWORD(v101) = *&v149[4 * (HIBYTE(v154) ^ 0x23)];
  LODWORD(v144) = v140 ^ v135;
  DWORD1(v61) = v101 ^ 0x18EA4;
  LODWORD(v61) = v101 ^ 0xDA800000;
  LODWORD(v143) = *&v152[4 * ((v112 ^ BYTE2(v143)) ^ 0x28)] ^ *&v153[4 * (BYTE2(v108) ^ 0xA4)] ^ (v160 - ((2 * v160 + 889856618) & 0x7DD9617E) + 1500627444) ^ ((v61 >> 19) - ((2 * (v61 >> 19)) & 0x3B897F72) + 499433401);
  LODWORD(v101) = *&v151[4 * (BYTE1(v132) ^ 0x57)];
  LODWORD(v140) = *&v152[4 * ((v140 ^ v135 ^ BYTE2(v154)) ^ 0xCD)] ^ *&v153[4 * (BYTE2(v132) ^ 0xA2)];
  LODWORD(v135) = *&v151[4 * (BYTE1(v144) ^ 0x31)];
  v161 = *&v149[4 * (BYTE3(v143) ^ 0x41)];
  DWORD1(v61) = v161 ^ 0x18EA4;
  LODWORD(v61) = v161 ^ 0xDA800000;
  v162 = *&v151[4 * (BYTE1(v143) ^ 0x81)];
  v163 = v162 - ((2 * v162 + 889856618) & 0x5B6191F2);
  v164 = (v61 >> 19) - ((2 * (v61 >> 19)) & 0xA8CDFEA8);
  v165 = *&v149[4 * (BYTE3(v144) ^ 0xC8)];
  DWORD1(v61) = v165 ^ 0x18EA4;
  LODWORD(v61) = v165 ^ 0xDA800000;
  v166 = (v61 >> 19) - ((2 * (v61 >> 19)) & 0xED18A66C);
  v167 = *&v149[4 * (BYTE3(v132) ^ 0xFE)];
  DWORD1(v61) = v167 ^ 0x18EA4;
  LODWORD(v61) = v167 ^ 0xDA800000;
  v168 = (v61 >> 19) - ((2 * (v61 >> 19)) & 0x68F0495C);
  LODWORD(v112) = (v101 - ((2 * v101 + 889856618) & 0x7CA16BD4) + 1490405151) ^ *&v153[4 * (BYTE2(v143) ^ 0x9C)] ^ *&v152[4 * ((v116 ^ BYTE2(v112)) ^ 0x4D)] ^ (v166 + 1988907830);
  LODWORD(v101) = *&v149[4 * (BYTE3(v116) ^ 0x16)];
  DWORD1(v61) = v101 ^ 0x18EA4;
  LODWORD(v61) = v101 ^ 0xDA800000;
  LODWORD(v101) = *&v153[4 * (BYTE2(v144) ^ 0xF7)] ^ *&v152[4 * ((v132 ^ BYTE2(v157)) ^ 0xA2)] ^ (v163 + 1211488814) ^ ((v61 >> 19) - ((2 * (v61 >> 19)) & 0x43BB872) - 2111972295);
  v169 = *&v151[4 * (BYTE1(v116) ^ 0xA3)];
  v170 = v140 ^ (v169 - ((2 * v169 + 889856618) & 0xF359C876) + 338818416) ^ (v164 - 731447468);
  v171 = *&v151[4 * (((v140 ^ (v169 - ((2 * v169 + 8810) & 0xC876) - 2704) ^ (v164 - 172)) >> 8) ^ 0x5C)];
  v172 = (v135 - ((2 * v135 + 889856618) & 0x807BED1A) - 624752702) ^ *&v152[4 * ((v143 ^ BYTE2(v108)) ^ 4)] ^ *&v153[4 * (BYTE2(v116) ^ 0x66)] ^ (v168 - 1267194706);
  LODWORD(v140) = (v171 - ((2 * v171 + 889856618) & 0x26C86A88) + 770262649) ^ *&v153[4 * (BYTE2(v112) ^ 0x89)];
  LODWORD(v108) = *&v151[4 * (BYTE1(v101) ^ 0x2F)];
  LODWORD(v135) = v108 - ((2 * v108 + 889856618) & 0xA0A7DD92);
  LODWORD(v108) = *&v149[4 * (BYTE3(v101) ^ 0x4B)];
  DWORD1(v61) = v108 ^ 0x18EA4;
  LODWORD(v61) = v108 ^ 0xDA800000;
  v173 = *&v149[4 * (BYTE3(v112) ^ 0xB)];
  LODWORD(v140) = v140 ^ ((v61 >> 19) - ((2 * (v61 >> 19)) & 0x585DB43A) - 1406215651);
  DWORD1(v61) = v173 ^ 0x18EA4;
  LODWORD(v61) = v173 ^ 0xDA800000;
  v174 = (v61 >> 19) - ((2 * (v61 >> 19)) & 0xA146E01A);
  LODWORD(v108) = *&v151[4 * (BYTE1(v112) ^ 0xF2)];
  v175 = *&v149[4 * (HIBYTE(v170) ^ 0xA)];
  DWORD1(v61) = v175 ^ 0x18EA4;
  LODWORD(v61) = v175 ^ 0xDA800000;
  LODWORD(v143) = *&v153[4 * (BYTE2(v172) ^ 0xFA)] ^ *&v152[4 * ((v112 ^ BYTE2(v143)) ^ 0x21)] ^ (v135 + 1792606206) ^ ((v61 >> 19) - ((2 * (v61 >> 19)) & 0xBEF5B674) + 1601887034);
  v176 = *&v151[4 * (BYTE1(v172) ^ 0xA1)];
  LODWORD(v135) = *&v153[4 * (BYTE2(v170) ^ 0xE)] ^ *&v152[4 * ((v101 ^ BYTE2(v144)) ^ 0x65)];
  LODWORD(v144) = v176 - ((2 * v176 + 889856618) & 0xEF595F42) - 1842233130;
  v177 = *&v149[4 * (HIBYTE(v172) ^ 0x76)];
  DWORD1(v61) = v177 ^ 0x18EA4;
  LODWORD(v61) = v177 ^ 0xDA800000;
  v178 = v135 ^ v144 ^ (v174 + 1352888333);
  v179 = (v108 - ((2 * v108 + 889856618) & 0x72DD7C34) - 738996401) ^ *&v153[4 * (BYTE2(v101) ^ 0x2D)] ^ *&v152[4 * ((v170 ^ BYTE2(v132)) ^ 0x2D)] ^ ((v61 >> 19) - ((2 * (v61 >> 19)) & 0x4D73A642) + 649712417);
  LODWORD(v108) = v140 ^ *&v152[4 * ((v172 ^ BYTE2(v116)) ^ 0xB)];
  LODWORD(v116) = *&v151[4 * (BYTE1(v179) ^ 0x7D)];
  LODWORD(v140) = v116 - ((2 * v116 + 889856618) & 0x5451A18C);
  LODWORD(v116) = *&v151[4 * (BYTE1(v143) ^ 0x79)];
  LODWORD(v135) = *&v151[4 * (BYTE1(v178) ^ 0xF4)];
  LODWORD(v132) = v116 - ((2 * v116 + 889856618) & 0x536F16EA);
  LODWORD(v116) = (v135 - ((2 * v135 + 889856618) & 0x95C23FFC) + 1701196083) ^ *&v152[4 * ((v143 ^ BYTE2(v172)) ^ 0xFD)];
  LODWORD(v135) = *&v149[4 * (HIBYTE(v179) ^ 0xE4)];
  DWORD1(v61) = v135 ^ 0x18EA4;
  LODWORD(v61) = v135 ^ 0xDA800000;
  LODWORD(v135) = (v61 >> 19) - ((2 * (v61 >> 19)) & 0x900B980);
  LODWORD(v144) = *&v151[4 * (BYTE1(v108) ^ 0xB8)];
  v180 = *&v152[4 * ((v178 ^ BYTE2(v170)) ^ 0x79)] ^ *&v153[4 * (BYTE2(v179) ^ 0xA0)] ^ (v144 - ((2 * v144 + 889856618) & 0x53463554) - 1004000289);
  LODWORD(v144) = *&v149[4 * (BYTE3(v108) ^ 0xF4)];
  DWORD1(v61) = v144 ^ 0x18EA4;
  LODWORD(v61) = v144 ^ 0xDA800000;
  LODWORD(v132) = *&v152[4 * ((v179 ^ BYTE2(v101)) ^ 0xFE)] ^ *&v153[4 * (BYTE2(v178) ^ 0x3B)] ^ (v132 + 1144822954) ^ ((v61 >> 19) - ((2 * (v61 >> 19)) & 0x84508B50) - 1037548120);
  LODWORD(v101) = *&v149[4 * (HIBYTE(v178) ^ 0xAF)];
  DWORD1(v61) = v101 ^ 0x18EA4;
  LODWORD(v61) = v101 ^ 0xDA800000;
  v181 = *&v153[4 * (BYTE2(v143) ^ 0xF7)] ^ *&v152[4 * ((v108 ^ BYTE2(v112)) ^ 0xB9)] ^ (v140 - 995237381) ^ ((v61 >> 19) - ((2 * (v61 >> 19)) & 0xF0E1837C) + 2020655550);
  LODWORD(v140) = *&v149[4 * (BYTE3(v143) ^ 0xC6)];
  DWORD1(v61) = v140 ^ 0x18EA4;
  LODWORD(v61) = v140 ^ 0xDA800000;
  LODWORD(v101) = v180 ^ ((v61 >> 19) - ((2 * (v61 >> 19)) & 0xEC0A1DE6) - 167440653);
  LODWORD(v112) = *&v149[4 * (HIBYTE(v181) ^ 0x7F)];
  DWORD1(v61) = v112 ^ 0x18EA4;
  LODWORD(v61) = v112 ^ 0xDA800000;
  LODWORD(v144) = v116 ^ *&v153[4 * (BYTE2(v108) ^ 0x3A)] ^ (v135 + 75521216);
  LODWORD(v112) = *&v151[4 * (BYTE1(v101) ^ 0x30)];
  LODWORD(v116) = (v61 >> 19) - ((2 * (v61 >> 19)) & 0x3820C15A);
  LODWORD(v140) = v112 - ((2 * v112 + 352985706) & 0x1AE1F016);
  LODWORD(v112) = *&v149[4 * (BYTE3(v101) ^ 1)];
  DWORD1(v61) = v112 ^ 0x18EA4;
  LODWORD(v61) = v112 ^ 0xDA800000;
  LODWORD(v135) = *&v151[4 * (BYTE1(v144) ^ 0x8A)];
  v182 = v135 - ((2 * v135 + 889856618) & 0x5D022ECC);
  v183 = *&v149[4 * (BYTE3(v132) ^ 0xC4)];
  v184 = (v61 >> 19) - 1589241336 + (~(2 * (v61 >> 19)) | 0xBD73CBF1);
  DWORD1(v61) = v183 ^ 0x18EA4;
  LODWORD(v61) = v183 ^ 0xDA800000;
  LODWORD(v135) = (v61 >> 19) - ((2 * (v61 >> 19)) & 0xF168FC66);
  LODWORD(v112) = *&v151[4 * (BYTE1(v181) ^ 0xE)];
  v185 = *&v149[4 * (BYTE3(v144) ^ 0xF5)];
  DWORD1(v61) = v185 ^ 0x18EA4;
  LODWORD(v61) = v185 ^ 0xDA800000;
  LODWORD(v116) = *&v153[4 * (BYTE2(v101) ^ 0xAA)] ^ (v182 - 922343269) ^ (v116 - 1676648275) ^ *&v152[4 * ((v132 ^ BYTE2(v178)) ^ 0xE)];
  LODWORD(v112) = (v112 - ((2 * v112 + 889856618) & 0x8B02F980) - 536441355) ^ *&v153[4 * (BYTE2(v132) ^ 0x7E)] ^ *&v152[4 * ((v101 ^ BYTE2(v179)) ^ 0xBF)] ^ ((v61 >> 19) - ((2 * (v61 >> 19)) & 0x2671BBBC) - 1824989730);
  v186 = *&v151[4 * (BYTE1(v132) ^ 0xCA)];
  v187 = *&v153[4 * (BYTE2(v144) ^ 0x8C)] ^ *&v152[4 * ((v181 ^ BYTE2(v143)) ^ 0xFA)] ^ (v186 - ((2 * v186 + 889856618) & 0xF7AE0B82) - 1772349706) ^ v184;
  v188 = (v140 + 670435648) ^ *&v152[4 * ((v144 ^ BYTE2(v108)) ^ 0xEF)] ^ *&v153[4 * (BYTE2(v181) ^ 0x17)] ^ (v135 - 122388941);
  LODWORD(v143) = *&v149[4 * (BYTE3(v116) ^ 0x2D)];
  DWORD1(v61) = v143 ^ 0x18EA4;
  LODWORD(v61) = v143 ^ 0xDA800000;
  LODWORD(v140) = *&v151[4 * (BYTE1(v116) ^ 0x34)];
  LODWORD(v143) = (v61 >> 19) - ((2 * (v61 >> 19)) & 0x79ABB322);
  LODWORD(v108) = *&v149[4 * (HIBYTE(v187) ^ 0xD3)];
  DWORD1(v61) = v108 ^ 0x18EA4;
  LODWORD(v61) = v108 ^ 0xDA800000;
  LODWORD(v108) = (v61 >> 19) - ((2 * (v61 >> 19)) & 0xD3C22AFC);
  v189 = *&v151[4 * (BYTE1(v112) ^ 0xE9)];
  LODWORD(v135) = *&v152[4 * ((v188 ^ BYTE2(v181)) ^ 0xE8)] ^ *&v153[4 * (BYTE2(v187) ^ 0xD5)] ^ (v189 - ((2 * v189 + 889856618) & 0x5C936724) - 925973305);
  v190 = *&v149[4 * (BYTE3(v112) ^ 0x4E)];
  LODWORD(v143) = (v143 + 1020647825) ^ v135;
  DWORD1(v61) = v190 ^ 0x18EA4;
  LODWORD(v61) = v190 ^ 0xDA800000;
  LODWORD(v135) = (v61 >> 19) - ((2 * (v61 >> 19)) & 0x4E76AB28);
  v191 = *&v149[4 * (HIBYTE(v188) ^ 0x9B)];
  DWORD1(v61) = v191 ^ 0x18EA4;
  LODWORD(v61) = v191 ^ 0xDA800000;
  v192 = *&v151[4 * (BYTE1(v188) ^ 0xE5)];
  LODWORD(v108) = (v108 - 371124866) ^ *&v153[4 * (BYTE2(v112) ^ 0xD1)] ^ *&v152[4 * ((v116 ^ BYTE2(v101)) ^ 8)] ^ (v192 - ((2 * v192 + 889856618) & 0x86950972) - 573598226);
  LODWORD(v101) = *&v152[4 * ((v187 ^ BYTE2(v144)) ^ 0xBD)] ^ *&v153[4 * (BYTE2(v188) ^ 0xCF)];
  LODWORD(v144) = *&v151[4 * (BYTE1(v187) ^ 0x8A)];
  LODWORD(v132) = *&v153[4 * (BYTE2(v116) ^ 0x77)] ^ *&v152[4 * ((v112 ^ BYTE2(v132)) ^ 0xEC)] ^ (v144 - ((2 * v144 + 889856618) & 0xBE9E7EF6) - 103526224) ^ ((v61 >> 19) - ((2 * (v61 >> 19)) & 0x6936CBC8) - 1264884252);
  LODWORD(v144) = *&v151[4 * (BYTE1(v132) ^ 2)];
  LODWORD(v101) = (v140 - ((2 * v140 + 352985706) & 0x19B7631E) - 1486830908) ^ v101 ^ (v135 - 1489283692);
  LODWORD(v140) = *&v151[4 * (BYTE1(v101) ^ 0x42)];
  LODWORD(v135) = v140 - ((2 * v140 + 889856618) & 0x46693EB0);
  v193 = *&v149[4 * (BYTE3(v143) ^ 0x68)];
  LODWORD(v140) = *&v152[4 * ((v101 ^ BYTE2(v188)) ^ 0x2E)] ^ *&v153[4 * (BYTE2(v143) ^ 0x9B)];
  DWORD1(v61) = v193 ^ 0x18EA4;
  LODWORD(v61) = v193 ^ 0xDA800000;
  v194 = (v61 >> 19) - ((2 * (v61 >> 19)) & 0x39075F78);
  v195 = *&v151[4 * (BYTE1(v143) ^ 0xC4)];
  v196 = *&v151[4 * (BYTE1(v108) ^ 0x34)];
  v197 = *&v149[4 * (BYTE3(v108) ^ 0xD7)];
  v198 = ((((v196 - 568943841) ^ 0x3C6E7616) - 1257723226 - 2 * (((v196 - 568943841) ^ 0x3C6E7616) & 0x3508AAAF ^ (v196 - 568943841) & 9)) ^ 0xB508AAA6) + ((2 * v196 - ((4 * v196 + 2019191932) & 0x73924184) + 1979078401) & 0x78DCEC2C ^ 0x38C82000);
  DWORD1(v61) = v197 ^ 0x18EA4;
  LODWORD(v61) = v197 ^ 0xDA800000;
  v199 = *&v152[4 * ((v143 ^ BYTE2(v187)) ^ 0x12)] ^ *&v153[4 * (BYTE2(v101) ^ 0x3B)] ^ (v144 - ((2 * v144 + 17441386) & 0x1C38B14) + 459724479) ^ ((v61 >> 19) - ((2 * (v61 >> 19)) & 0x4320E094) - 1584369590);
  LODWORD(v144) = *&v149[4 * (BYTE3(v101) ^ 0x87)];
  LODWORD(v112) = *&v153[4 * (BYTE2(v132) ^ 0x9C)] ^ *&v152[4 * ((v108 ^ BYTE2(v112)) ^ 0x37)] ^ (v195 - ((2 * v195 + 889856618) & 0xC73B0038) + 2116194641) ^ (v144 >> 19) ^ (((v144 << 13) ^ 0x31D48000) - ((2 * ((v144 << 13) ^ 0x31D48000)) & 0x9E07C000) - 821826415);
  LODWORD(v116) = *&v153[4 * (BYTE2(v108) ^ 0x22)] ^ (v135 + 1035579533) ^ *&v152[4 * ((v132 ^ BYTE2(v116)) ^ 0x1C)] ^ (v194 - 1669091396);
  LODWORD(v135) = *&v149[4 * (BYTE3(v132) ^ 0xF6)];
  DWORD1(v61) = v135 ^ 0x18EA4;
  LODWORD(v61) = v135 ^ 0xDA800000;
  v200 = v140 ^ ((v61 >> 19) - ((2 * (v61 >> 19)) & 0x476B91E8) - 1548367628) ^ (v198 - ((2 * v198) & 0xE969BA6E) - 189473481);
  LODWORD(v135) = *&v151[4 * (BYTE1(v116) ^ 0x43)];
  LODWORD(v140) = *&v149[4 * (HIBYTE(v199) ^ 0x1C)];
  DWORD1(v61) = v140 ^ 0x18EA4;
  LODWORD(v61) = v140 ^ 0xDA800000;
  LODWORD(v135) = (v135 - ((2 * v135 + 889856618) & 0x6DC3A808) + 1365697849) ^ *&v152[4 * ((v199 ^ BYTE2(v101)) ^ 0x7A)];
  v201 = (v61 >> 19) - ((2 * (v61 >> 19)) & 0x7F07E436);
  LODWORD(v140) = *&v149[4 * (HIBYTE(v200) ^ 0xDC)];
  DWORD1(v61) = v140 ^ 0x18EA4;
  LODWORD(v61) = v140 ^ 0xDA800000;
  LODWORD(v140) = (v61 >> 19) - ((2 * (v61 >> 19)) & 0x2D2ED846);
  LODWORD(v101) = *&v149[4 * (BYTE3(v112) ^ 0x6A)];
  v202 = *&v151[4 * (BYTE1(v199) ^ 0xCE)];
  v203 = *&v151[4 * (BYTE1(v200) ^ 0x9B)];
  LODWORD(v149) = *&v149[4 * (BYTE3(v116) ^ 0x54)];
  DWORD1(v61) = v149 ^ 0x18EA4;
  LODWORD(v61) = v149 ^ 0xDA800000;
  LODWORD(v108) = *&v153[4 * (BYTE2(v112) ^ 0x8C)] ^ *&v152[4 * ((v116 ^ BYTE2(v108)) ^ 0x79)] ^ (v201 + 1065611803) ^ (v203 - ((2 * v203 + 889856618) & 0x47AA6B44) - 1101379881);
  v204 = *&v151[4 * (BYTE1(v112) ^ 0xB1)];
  v205 = *&v153[4 * (BYTE2(v199) ^ 0x86)] ^ *&v152[4 * ((v200 ^ BYTE2(v143)) ^ 0x32)] ^ (v204 - ((2 * v204 + 889856618) & 0xAFD2D510) - 227640387) ^ ((v61 >> 19) - ((2 * (v61 >> 19)) & 0xB4DBD52E) + 1517152919);
  LODWORD(v140) = (v140 - 1768461277) ^ *&v153[4 * (BYTE2(v116) ^ 0x9C)] ^ (v202 - ((2 * v202 + 889856618) & 0xC4D3D738) - 51446575) ^ *&v152[4 * ((v112 ^ BYTE2(v132)) ^ 0xF)];
  LODWORD(v135) = v135 ^ (v101 >> 19) ^ (((v101 << 13) ^ 0x31D48000) - ((2 * ((v101 << 13) ^ 0x31D48000)) & 0x8BAE8000) + 1171739545) ^ *&v153[4 * (BYTE2(v200) ^ 0xEB)];
  LODWORD(v101) = (v108 ^ BYTE2(v112));
  v206 = *(&off_278E1E490 + (v331 ^ 0x366F));
  LODWORD(v328) = *(v206 + 4 * (v101 ^ 0x90));
  HIDWORD(v329) = (v140 ^ BYTE2(v116));
  LODWORD(v329) = *(v206 + 4 * (HIDWORD(v329) ^ 0x9Cu));
  LODWORD(v330) = (v135 ^ BYTE2(v200));
  HIDWORD(v330) = v101;
  HIDWORD(v325) = *(v206 + 4 * (v330 ^ 0xEA));
  v207 = (v205 ^ BYTE2(v199));
  LODWORD(v153) = *(v206 + 4 * (v207 ^ 0xCDu));
  v208 = *(&off_278E1E490 + v331 - 12415) - 12;
  HIDWORD(v323) = *&v208[4 * (BYTE2(v205) ^ 0x21)];
  LODWORD(v326) = *&v208[4 * (BYTE2(v140) ^ 0x46)];
  HIDWORD(v327) = *&v208[4 * (BYTE2(v108) ^ 0xCA)];
  LODWORD(v132) = *&v208[4 * (BYTE2(v135) ^ 0x80)];
  v209 = *(&off_278E1E490 + (v331 ^ 0x30B1)) - 12;
  LODWORD(v143) = *&v209[4 * (BYTE1(v140) ^ 0xA5)];
  v210 = *(&off_278E1E490 + v331 - 11897) - 8;
  v211 = *&v210[4 * (BYTE3(v108) ^ 0x76)];
  HIDWORD(v326) = *&v209[4 * (BYTE1(v205) ^ 0x57)];
  HIDWORD(a22) = *&v209[4 * (BYTE1(v108) ^ 0xA5)];
  HIDWORD(v328) = *&v209[4 * (BYTE1(v135) ^ 0xEB)];
  v212 = *&v210[4 * (BYTE3(v140) ^ 0x85)];
  LODWORD(v325) = *&v210[4 * (BYTE3(v135) ^ 0xB3)];
  LODWORD(v327) = *&v210[4 * (HIBYTE(v205) ^ 0x4A)];
  v213 = (a14 + *(v52 - 216));
  v214 = v213;
  v215 = &v213[-((2 * v213) & 0xA1A5707A232A808ELL) - 0x2F2D47C2EE6ABFB9];
  v216 = ((((v215 << 56) ^ 0x4700000000000000) - ((2 * ((v215 << 56) ^ 0x4700000000000000)) & 0x7E00000000000000) + 0x3F08C97F415207CFLL) & 0xF800000000000000 | (v215 >> 8)) ^ 0x38D0D2B83D119540;
  v217 = (v216 - 0x4EAA62D4C91B5834 - 2 * (v216 & 0x30559D2B36E4A7DDLL ^ (v215 >> 8) & 0x11)) ^ 0xB1559D2B36E4A7CCLL;
  v218 = v217 - ((2 * v217 + 0x358004F76A1D6FCLL) & 0xA858EA7376CBC70);
  *(&v61 + 1) = (v218 + 1460095414) ^ 0xAAAAAAAA;
  *&v61 = (v218 - 0x71113884A8F8B64ALL) ^ 0xB78C16F54F0F9C00;
  v219 = ((v218 - 0x71113884A8F8B64ALL) ^ 0xFAEC17C89588C75ELL) + ((v61 >> 8) ^ 0x77FECFBEEEC55FB5) + ((2 * (v61 >> 8)) & 0xEFFD9F7DDD8ABF6ALL) - 0x77FECFBEEEC55FB5;
  *(&v61 + 1) = (v218 - 0x71113884A8F8B64ALL) ^ 0x1AEC17C89588C75ELL;
  *&v61 = 0x71113884A8F8B649 - v218;
  v220 = v219 - ((2 * v219) & 0x3DD4F9E1BFB42820) + 0x1EEA7CF0DFDA1410;
  v221 = v220 ^ ((v61 >> 61) - ((2 * (v61 >> 61)) & 0x998182CD4A7AA7D4) + 0x4CC0C166A53D53EALL);
  *(&v61 + 1) = (v219 - ((2 * v219) & 0xBFB42820) - 539356144) ^ 0x1A;
  *&v61 = v220 ^ 0x9354352F54E4D200;
  v222 = (v221 ^ 0xDF94F449F1D981F0) + ((v61 >> 8) ^ 0x3FFF3DC9DFE7EFFDLL) + ((2 * (v61 >> 8)) & 0x7FFE7B93BFCFDFFALL) - 0x3FFF3DC9DFE7EFFDLL;
  *(&v61 + 1) = v221 ^ 0x1F94F449F1D981F0;
  *&v61 = v221 ^ 0xC000000000000000;
  v223 = v222 - ((2 * v222) & 0xCD0D01A1C53A50C6) - 0x19797F2F1D62D79DLL;
  v224 = v223 ^ ((v61 >> 61) - ((2 * (v61 >> 61)) & 0x71560DE1506803A6) + 0x38AB06F0A83401D3);
  *(&v61 + 1) = v223 ^ 0xEA;
  *&v61 = v223 ^ 0xA7AEDC88CF06AE00;
  v225 = v61 >> 8;
  *(&v61 + 1) = v224 ^ 0x1F05DA786732AF39;
  *&v61 = v224 ^ 0x8000000000000000;
  v226 = (v224 ^ 0x9F05DA786732AF39) + (v225 ^ 0xB16B3EFABFE7FE8FLL) + ((2 * v225) & 0x62D67DF57FCFFD1ELL) + 0x4E94C10540180171;
  v227 = v226 - ((2 * v226) & 0xA516A7C68156ED9ALL) + 0x528B53E340AB76CDLL;
  v228 = v227 ^ ((v61 >> 61) - ((2 * (v61 >> 61)) & 0x8180150E67FCCB14) + 0x40C00A8733FE658ALL);
  *(&v61 + 1) = v227 ^ 0xBA;
  *&v61 = v227 ^ 0x459C8748FE78B600;
  v229 = (v228 ^ 0x55C8DCFCD86D330) + ((v61 >> 8) ^ 0x6EB7DBFFEBCFBD6ELL) + ((2 * (v61 >> 8)) & 0xDD6FB7FFD79F7ADCLL) - 0x6EB7DBFFEBCFBD6ELL;
  *(&v61 + 1) = v228 ^ 0x55C8DCFCD86D330;
  *&v61 = v228;
  v230 = (v61 >> 61) - ((2 * (v61 >> 61)) & 0x11425AF6031FEF68);
  v231 = v229 - ((2 * v229) & 0x3FBE479FC06B9EALL) + 0x1FDF23CFE035CF5;
  *(&v61 + 1) = v231 ^ 0x25;
  *&v61 = v231 ^ 0xED757E8321388F00;
  v232 = v231 ^ (v230 - 0x775ED284FE70084CLL);
  v233 = (v232 ^ 0x65D453F820B77891) + ((v61 >> 8) ^ 0xFADFD8B6F77FB75ELL) + ((2 * (v61 >> 8)) & 0xF5BFB16DEEFF6EBCLL) + 0x5202749088048A2;
  v234 = v233 - ((2 * v233) & 0xB76657B83999EE9CLL) + 0x5BB32BDC1CCCF74ELL;
  *(&v61 + 1) = v234 ^ 0x6D;
  *&v61 = v234 ^ 0x6B2B8CCB24771000;
  v235 = v61 >> 8;
  *(&v61 + 1) = v232 ^ 0x5D453F820B77891;
  *&v61 = v232 ^ 0x6000000000000000;
  LOBYTE(v108) = (8 * (v213 - ((2 * v213) & 0x3A)) - 24) ^ 0xE8;
  v236 = v234 ^ ((v61 >> 61) - ((2 * (v61 >> 61)) & 0xD0E1AA6CD5D532AELL) + 0x6870D5366AEA9957);
  v237 = (v236 ^ 0x35B59FD4E9D893ALL) + (v235 ^ 0x6E71CB7B26CEBEFBLL) + ((2 * v235) & 0xDCE396F64D9D7DF6) - 0x6E71CB7B26CEBEFBLL;
  *(&v61 + 1) = v236 ^ 0x35B59FD4E9D893ALL;
  *&v61 = v236;
  v238 = (v61 >> 61) - ((2 * (v61 >> 61)) & 0x7637559D9E1E1384);
  v239 = v237 - ((2 * v237) & 0xABB9AC916E87F32CLL) + 0x55DCD648B743F996;
  *(&v61 + 1) = v239 ^ 0x16;
  *&v61 = v239 ^ 0x5F46D2B50E18C00;
  v240 = ((v238 - 0x44E4553130F0F63ELL) ^ 0xBEEFC7E59FEE85D4 ^ v239) + ((v61 >> 8) ^ 0xC979FBAE4F5FEAFFLL) + ((2 * (v61 >> 8)) & 0x92F3F75C9EBFD5FELL) + 0x36860451B0A01501;
  LOBYTE(v108) = (((2 * v108) & 0x30) - v108) & 0x38;
  v241 = ((v240 - ((2 * v240) & 0x68BE61C57DE3BE0ELL) - 0x4BA0CF1D410E20F9) ^ 0xDCE7431A422681CFLL) >> v108;
  v242 = v241 - 0x5B47EC78F4FFC2B9 - ((2 * v241) & 0x4970270E16007A8ELL);
  v324 = v213;
  v243 = &v214[-((2 * (v214 + 8)) & 0xD142AA464D7E2AF8) - 0x175EAADCD940EA7CLL];
  v244 = (((v243 << 56) ^ 0x7C00000000000000) - ((2 * ((v243 << 56) ^ 0x7C00000000000000)) & 0x6E00000000000000) + 0x3734DDED310A9942) & 0xF800000000000000 | (v243 >> 8);
  v245 = ((v244 ^ 0x30E8A1552326BF15) - 0x2926D5731A3DE563 - 2 * ((v244 ^ 0x30E8A1552326BF15) & 0x50D92A8CE5C21A9FLL ^ (v243 >> 8) & 2)) ^ 0xD6D92A8CE5C21A9DLL;
  v246 = v245 - ((2 * v245 + 0x1358004F76A1D6FCLL) & 0xE750C1208597087ELL) + 0x7D5460B7FE1C6FBDLL;
  *(&v61 + 1) = v246 ^ 0xAD;
  *&v61 = v246 ^ 0x4166B13696724600;
  v247 = (v246 ^ 0xC06B00B4CF51D59) + ((v61 >> 8) ^ 0x4EEAF7FD5FFBF5F7) + ((2 * (v61 >> 8)) & 0x9DD5EFFABFF7EBEELL) - 0x4EEAF7FD5FFBF5F7;
  *(&v61 + 1) = v246 ^ 0xC06B00B4CF51D59;
  *&v61 = v246;
  v248 = (v61 >> 61) - ((2 * (v61 >> 61)) & 0x2BBA0E2555FA1744);
  v249 = v247 - ((2 * v247) & 0x87ED29798CAF97B6) - 0x3C096B4339A83425;
  *(&v61 + 1) = v249 ^ 0xD1;
  *&v61 = v249 ^ 0x4E48DD634D690D00;
  v250 = v249 ^ (v248 - 0x6A22F8ED5502F45ELL);
  v251 = (v250 ^ 0xDB95DA71E7940673) + ((v61 >> 8) ^ 0xBAAFD79FF7F1DD5FLL) + ((2 * (v61 >> 8)) & 0x755FAF3FEFE3BABELL);
  *(&v61 + 1) = v250 ^ 0x1B95DA71E7940673;
  *&v61 = v250 ^ 0xC000000000000000;
  v252 = v251 + 0x45502860080E22A1 - ((2 * (v251 + 0x45502860080E22A1)) & 0x3BFCA678F8C7ED82) + 0x1DFE533C7C63F6C1;
  v253 = v252 ^ ((v61 >> 61) - ((2 * (v61 >> 61)) & 0xB29D87F955B9A182) - 0x26B13C0355232F3FLL);
  *(&v61 + 1) = v252 ^ 0x48;
  *&v61 = v252 ^ 0x5CD60F6451F87000;
  v254 = (v253 ^ 0x8598CC98FB24A089) + ((v61 >> 8) ^ 0xFE8FD8753F8FD7EFLL) + ((2 * (v61 >> 8)) & 0xFD1FB0EA7F1FAFDELL) + 0x170278AC0702811;
  *(&v61 + 1) = v253 ^ 0x598CC98FB24A089;
  *&v61 = v253 ^ 0x8000000000000000;
  v255 = (v61 >> 61) - ((2 * (v61 >> 61)) & 0xE9EDF826C3DC1AECLL);
  v256 = v254 - ((2 * v254) & 0x21F4016CAFB4662CLL) + 0x10FA00B657DA3316;
  *(&v61 + 1) = v256 ^ 0x61;
  *&v61 = v256 ^ 0x7EDD41DE909F300;
  v257 = v256 ^ (v255 + 0x74F6FC1361EE0D76);
  v258 = (v257 ^ 0x731B280E88E7FE17) + ((v61 >> 8) ^ 0xFFEBDFF386FFFBF7) + ((2 * (v61 >> 8)) & 0xFFD7BFE70DFFF7EELL);
  *(&v61 + 1) = v257 ^ 0x131B280E88E7FE17;
  *&v61 = v257 ^ 0x6000000000000000;
  v259 = v258 + 0x14200C79000409 - ((2 * (v258 + 0x14200C79000409)) & 0x1A92B88BCE5F3F96) - 0x72B6A3BA18D06035;
  v260 = v259 ^ ((v61 >> 61) - ((2 * (v61 >> 61)) & 0xB593064FD8744322) - 0x25367CD813C5DE6FLL);
  *(&v61 + 1) = v259 ^ 0x1B;
  *&v61 = v259 ^ 0x61C1D0FA38144C00;
  v261 = (v260 ^ 0xBB0853DDD42E6D8ALL) + ((v61 >> 8) ^ 0xEBFFAB33FDFF775FLL) + ((2 * (v61 >> 8)) & 0xD7FF5667FBFEEEBELL) + 0x140054CC020088A1;
  *(&v61 + 1) = v260 ^ 0x1B0853DDD42E6D8ALL;
  *&v61 = v260 ^ 0xBFFFFFFFFFFFFFFFLL;
  v262 = (v61 >> 61) - ((2 * (v61 >> 61)) & 0xA1DA87467C0E54CELL);
  v263 = v261 - ((2 * v261) & 0xA696B627A72C9C82) + 0x534B5B13D3964E41;
  *(&v61 + 1) = v263 ^ 0x62;
  *&v61 = v263 ^ 0x63D3FC04EB2DA900;
  v264 = v263 ^ (v262 + 0x50ED43A33E072A67);
  v265 = (v264 ^ 0x333EBFA7D52A8305) + ((v61 >> 8) ^ 0x3FD55BABF2F272FFLL) + ((2 * (v61 >> 8)) & 0x7FAAB757E5E4E5FELL);
  *(&v61 + 1) = v264 ^ 0x133EBFA7D52A8305;
  *&v61 = v264 ^ 0x2000000000000000;
  v266 = (v61 >> 61) - ((2 * (v61 >> 61)) & 0x398035FACB525EE0);
  v267 = v265 - 0x3FD55BABF2F272FFLL - ((2 * (v265 - 0x3FD55BABF2F272FFLL)) & 0xC7C59BF7F62F4114) + 0x63E2CDFBFB17A08ALL;
  *(&v61 + 1) = v267 ^ 0xA;
  *&v61 = v267 ^ 0x33CA76981CB5D500;
  v268 = ((v266 - 0x633FE5029A56D090) ^ 0xAF0A6C65791CFA7ALL ^ v267) + ((v61 >> 8) ^ 0x7FDF7F77FFEFF76DLL) + ((2 * (v61 >> 8)) & 0xFFBEFEEFFFDFEEDALL) - 0x7FDF7F77FFEFF76DLL;
  v269 = (v268 - ((2 * v268) & 0xA69B44DAB102D0F6) + 0x534DA26D5881687BLL) ^ 0x3BF5D195A45636B3;
  v270 = (v269 >> v108) - 0x7DF85FBF22D192DELL - ((2 * (v269 >> v108)) & 0x40F4081BA5CDA44);
  LOBYTE(v108) = v108 ^ 0x3E;
  v271 = (4 * ((v269 << v108) - ((2 * (v269 << v108)) & 0x3EF9F99B1B02C400)) + 0x7DF3F33636058864) ^ 0x7DF3F33636058864;
  v272 = ((v271 - 0x3D34BC5F460FD061 - ((2 * v271) & 0x8596874173E05F38)) ^ 0xC2CB43A0B9F02F9FLL) + (v242 ^ 0xA4B813870B003D47);
  v273 = &v214[-((2 * (v214 + 16)) & 0xEBABB2F925963F44) - 0xA2A26836D34E04ELL];
  v274 = ((((v273 << 56) ^ 0xA200000000000000) - ((v273 << 57) & 0xB200000000000000) - 0x263EF278320CC7AELL) & 0xF800000000000000 | (v273 >> 8)) ^ 0xD8F5D5D97C92CB1FLL;
  v275 = (v274 - 0x1609F062C3B29CLL - ((2 * v274) & 0xF1D3EC1F3A789AC8)) ^ 0xFFE9F60F9D3C4D64;
  v276 = v275 - ((2 * v275 + 0x1358004F76A1D6FCLL) & 0xD69933E20045EA10) + 0x74F89A18BB73E086;
  *(&v61 + 1) = v276 ^ 0x9A;
  *&v61 = v276 ^ 0x59824857D49B3700;
  v277 = v272 - ((2 * v272) & 0xAC8B135932F2C17ELL);
  v278 = (v276 ^ 0x14E2496A0E1C6C6ELL) + ((v61 >> 8) ^ 0x87BAEFECFEF5A7FALL) + ((2 * (v61 >> 8)) & 0xF75DFD9FDEB4FF4) + 0x78451013010A5806;
  v279 = v278 - ((2 * v278) & 0xD8610DE65F2DAD90) - 0x13CF790CD0692938;
  *(&v61 + 1) = v279 ^ 0xC2;
  *&v61 = v279 ^ 0x618ECF2CA4A81000;
  v280 = v61 >> 8;
  *(&v61 + 1) = v276 ^ 0x14E2496A0E1C6C6ELL;
  *&v61 = v276;
  v281 = v279 ^ ((v61 >> 61) - ((2 * (v61 >> 61)) & 0xED3DBE36A6DB7334) - 0x96120E4AC924666);
  v282 = (v281 ^ 0x97101037F7C5A958) + (v280 ^ 0xE7CFE6BF9FEFFFCFLL) + ((2 * v280) & 0xCF9FCD7F3FDFFF9ELL) + 0x1830194060100031;
  *(&v61 + 1) = v281 ^ 0x17101037F7C5A958;
  *&v61 = v281 ^ 0x8000000000000000;
  v283 = v282 - ((2 * v282) & 0x2101A97C2E79094ALL) + 0x1080D4BE173C84A5;
  v284 = v283 ^ ((v61 >> 61) - ((2 * (v61 >> 61)) & 0x8564F5EF2D2FFB00) + 0x42B27AF79697FD80);
  *(&v61 + 1) = v283 ^ 0x2C;
  *&v61 = v283 ^ 0x51A888E63AA70200;
  v285 = (v284 ^ 0x131AF211AC30FFACLL) + ((v61 >> 8) ^ 0x564FBDFB6DFFBF30) + ((2 * (v61 >> 8)) & 0xAC9F7BF6DBFF7E60) - 0x564FBDFB6DFFBF30;
  *(&v61 + 1) = v284 ^ 0x131AF211AC30FFACLL;
  *&v61 = v284;
  v286 = v285 - ((2 * v285) & 0x8FCB2F0F1DE5F516) + 0x47E597878EF2FA8BLL;
  v287 = v286 ^ ((v61 >> 61) - ((2 * (v61 >> 61)) & 0xFD5B70F082510AD4) + 0x7EADB8784128856ALL);
  *(&v61 + 1) = v286 ^ 0xFC;
  *&v61 = v286 ^ 0x50F2432C30213A00;
  v288 = (v287 ^ 0x2E5FFB547109BF96) + ((v61 >> 8) ^ 0x7FFFFFFEF5B3FFFFLL) + ((2 * (v61 >> 8)) & 0xFFFFFFFDEB67FFFELL) - 0x7FFFFFFEF5B3FFFFLL;
  v289 = v288 - ((2 * v288) & 0xDD4019ACBBC78A5ELL);
  *(&v61 + 1) = v287 ^ 0xE5FFB547109BF96;
  *&v61 = v287 ^ 0x2000000000000000;
  v290 = (v289 - 0x115FF329A21C3AD1) ^ ((v61 >> 61) - ((2 * (v61 >> 61)) & 0xB037AE36106B325ALL) + 0x581BD71B0835992DLL);
  *(&v61 + 1) = (-1575208240 - v289);
  *&v61 = (v289 - 0x115FF329A21C3AD1) ^ 0x228806982D81600;
  v291 = (v290 ^ 0x5A3357728AED8FD2) + ((v61 >> 8) ^ 0x8BFADFF6FCFC7FF9) + ((2 * (v61 >> 8)) & 0x17F5BFEDF9F8FFF2) + 0x7405200903038007;
  *(&v61 + 1) = v290 ^ 0x1A3357728AED8FD2;
  *&v61 = v290 ^ 0x4000000000000000;
  v292 = v291 - ((2 * v291) & 0x24569A70C8CF2C2) + 0x122B4D386467961;
  v293 = v292 ^ ((v61 >> 61) - ((2 * (v61 >> 61)) & 0xE33F56951FEFB61ALL) - 0xE6054B5700824F3);
  *(&v61 + 1) = v292 ^ 0x42;
  *&v61 = v292 ^ 0x31BA13C4BEFD9E00;
  v294 = (v293 ^ 0xC025B88E310A454FLL) + ((v61 >> 8) ^ 0xFA6EF7E9B71F9CEELL) + ((2 * (v61 >> 8)) & 0xF4DDEFD36E3F39DCLL) + 0x591081648E06312;
  *(&v61 + 1) = v293 ^ 0x25B88E310A454FLL;
  *&v61 = v293 ^ 0xC000000000000000;
  v295 = v61 >> 61;
  v296 = v294 - ((2 * v294) & 0xC191589A9BE77276) + 0x60C8AC4D4DF3B93BLL;
  *(&v61 + 1) = v296 ^ 0xBBBBBBBB;
  *&v61 = v296 ^ 0x30E0172EAA51CC00;
  v297 = ((v295 - ((2 * v295) & 0xC03E719920947B46) + 0x601F38CC904A3DA3) ^ 0x10FF2FE23A1BF118 ^ v296) + ((v61 >> 8) ^ 0x51FFFFFFFE61DD3FLL) + ((2 * (v61 >> 8)) & 0xA3FFFFFFFCC3BA7ELL) - 0x51FFFFFFFE61DD3FLL;
  v298 = ((v297 - ((2 * v297) & 0x3BBBC42CA9C63BD4) - 0x62221DE9AB1CE216) ^ 0xB56591EEA8344322) << v108;
  v299 = (4 * (v298 - ((2 * v298) & 0xA57A7453F60BA00)) - 0x6B50B175813E8B38) ^ 0x94AF4E8A7EC174C8;
  v300 = ((v299 + 0x63D1F40C52DBCAA7 - ((2 * v299) & 0xC7A3E818A5B79548)) ^ 0x63D1F40C52DBCAA7) + (v270 ^ 0x8207A040DD2E6D22);
  v301 = v277 - 0x29BA765366869F41;
  v302 = *(v52 - 240);
  LODWORD(v296) = *(v302 + (((v277 - 0x29BA765366869F41) >> 32) ^ 0x6ELL));
  v303 = v300 - ((2 * v300) & 0x740AE7633B08C066);
  LODWORD(v300) = ((((v296 ^ 0x54) - ((2 * (v296 ^ 0x54)) & 0xA)) << 24) + 83886080) ^ 0x5000000;
  v304 = *(v52 - 256);
  DWORD1(v61) = *(v304 + (BYTE5(v301) ^ 0x8CLL));
  LODWORD(v61) = (DWORD1(v61) ^ 0x3A) << 24;
  LODWORD(v296) = ((v61 >> 25) - ((2 * (v61 >> 25)) & 0x42) - 95) ^ 0x3D;
  LODWORD(v296) = ((((~(2 * v296) | 0xFE85) + v296) << 16) - 943849472) ^ 0xC7BD0000;
  LODWORD(v280) = *(a50 + (BYTE6(v301) ^ 0x6FLL)) ^ 0x26;
  LODWORD(v280) = (((v280 - ((2 * v280) & 0xE6)) << 8) + 1974956800) ^ 0x75B77300;
  v305 = *(v52 - 248);
  LODWORD(v141) = *(v305 + (HIBYTE(v301) ^ 0xEE)) ^ 0x8E;
  LODWORD(v153) = a42 ^ a38 ^ a43 ^ v143 ^ v153 ^ (v211 - ((2 * v211 + 2035473224) & 0x9955CA6A) + 156521177) ^ (-775238233 * v132 - ((-1550476466 * v132 + 424990468) & 0xADA93CAA) - 478213673) ^ (v141 - ((2 * v141) & 0x64) + 1930539826) ^ (v300 - ((2 * v300) & 0x58000000) - 1408123142) ^ (v280 - ((2 * v280) & 0x18C4B400) - 1939711395) ^ (v296 - ((2 * v296) & 0x44FE0000) - 1568698051);
  v306 = *(&off_278E1E490 + v331 - 13060) - 4;
  LOBYTE(v280) = v306[(v153 ^ v207) ^ 0x5ELL] ^ ((v153 ^ v207 ^ 0xD9) + ((8 - 2 * (v153 ^ v207 ^ 0xD9)) | 0xF1) - 37) ^ 0x9C;
  LODWORD(v296) = *(v302 + (v242 ^ 0xE5));
  LODWORD(v300) = *(v304 + (BYTE1(v301) ^ 0xF9));
  LODWORD(v141) = *(a50 + (BYTE2(v301) ^ 0x79));
  LODWORD(v242) = *(v305 + (BYTE3(v301) ^ 0xFCLL));
  v307 = *(v302 + (v270 ^ 0x9CLL));
  v308 = *(v304 + (((v303 + 24627) >> 8) ^ 0x8CLL));
  LODWORD(v302) = *(a50 + (((v303 - 1652269005) >> 16) ^ 0xCALL));
  LODWORD(v142) = *(v305 + (((v303 - 1652269005) >> 24) ^ 0x1ALL));
  LODWORD(v301) = *(*(v52 - 240) + (((v303 + 0x3A0573B19D846033) >> 32) ^ 0x66));
  LODWORD(v304) = *(v304 + ((((v303 + 0x3A0573B19D846033) >> 32) >> 8) ^ 0xD8));
  v309 = *(a50 + (((v303 + 0x3A0573B19D846033) >> 48) ^ 0xD2));
  v310 = *(v305 + (((v303 + 0x3A0573B19D846033) >> 56) ^ 0x16));
  *(a14 + v336) = v280;
  DWORD1(v61) = v304;
  LODWORD(v61) = (v304 ^ 0x3A) << 24;
  LODWORD(v301) = ((((v301 ^ 0xB0) - ((2 * v301) & 0xFFFFFF9F)) << 24) - 822083584) ^ 0xCF000000;
  LODWORD(v304) = (v61 >> 25) - ((2 * (v61 >> 25)) & 0x42) + 33;
  LODWORD(v304) = ((((v304 ^ 0xF) - ((2 * v304) & 0x100)) << 16) - 2071986176) ^ 0x84800000;
  v311 = ((((v309 ^ 0x10) - ((2 * (v309 ^ 0x10)) & 0xFFFFFF3F)) << 8) + 1778949888) ^ 0x6A089F00;
  v312 = a39 ^ a44 ^ a47 ^ HIDWORD(v325) ^ HIDWORD(a22) ^ (-775238233 * HIDWORD(v323) - ((597007182 * HIDWORD(v323) + 424990468) & 0x56C4691C) + 940351504) ^ ((v310 ^ 0xD6) - ((2 * (v310 ^ 0xD6)) & 0x10A) - 2131449211) ^ (v212 - ((2 * v212 + 2035473224) & 0xE98DBBDE) - 1318040685) ^ (v301 - ((2 * v301) & 0x46000000) - 1556629164) ^ (v311 - ((2 * v311) & 0x30BC6400) + 1482568267) ^ (v304 - ((2 * v304) & 0x5EFE0000) + 796898348);
  v313 = ((a39 ^ a44 ^ a47 ^ WORD2(v325) ^ WORD2(a22) ^ (-12889 * WORD2(v323) - ((-25778 * WORD2(v323) - 10492) & 0x691C) - 24560) ^ ((v310 ^ 0xD6) - ((2 * (v310 ^ 0xD6)) & 0x10A) - 21883) ^ (v212 - ((2 * v212 - 9400) & 0xBBDE) + 19347) ^ (v301 - 18092) ^ (v311 - ((2 * v311) & 0x6400) + 12875) ^ (v304 - 19412)) >> 8) ^ 0xBDLL;
  v314 = *(&off_278E1E490 + v148 - 11931);
  *(a14 + v342) = (((111 * *(v314 + v313) - ((-122 - 34 * *(v314 + v313)) & 0x8E) + 18) ^ 3) - 8) ^ 0x5B;
  *(a14 + v338) = (((34 * *(v314 + (BYTE1(v153) ^ 0xFFLL)) + 121) | 0x83) + 111 * *(v314 + (BYTE1(v153) ^ 0xFFLL)) + 2) ^ 0xAE;
  LODWORD(v296) = ((((v296 ^ 0xAD) - ((2 * (v296 ^ 0xAD)) & 0x3A)) << 24) + 486539264) ^ 0x1D000000;
  DWORD1(v61) = v300;
  LODWORD(v61) = (v300 ^ 0x3A) << 24;
  LODWORD(v300) = ((((((v61 >> 25) - ((2 * (v61 >> 25)) & 0xF4) - 6) ^ 0x9B) - ((2 * (((v61 >> 25) - ((2 * (v61 >> 25)) & 0xF4) - 6) ^ 0x9B)) & 0x19C)) << 16) + 818806784) ^ 0x30CE0000;
  LODWORD(v270) = ((((v141 ^ 0xE9) - ((2 * (v141 ^ 0xE9)) & 0x46)) << 8) - 610131200) ^ 0xDBA22300;
  LODWORD(v280) = a49 ^ a46 ^ a40 ^ v328 ^ HIDWORD(v326) ^ (v325 - ((2 * v325 + 2035473224) & 0x8882E6F0) - 2132090596) ^ ((v242 ^ 0x8E) - ((2 * (v242 ^ 0x8E)) & 0x10A) - 54460283) ^ (v296 - ((2 * v296) & 0x32000000) + 425757241) ^ (v270 - ((2 * v270) & 0x594B4A00) - 1398430290) ^ (v300 - ((2 * v300) & 0x30F80000) - 662921283) ^ (-775238233 * v326 - ((424990468 - 1550476466 * v326) & 0xC48EF200) + 1861346434);
  v315 = *(&off_278E1E490 + (v148 ^ 0x31A6));
  *(a14 + HIDWORD(v331)) = *(v315 + (BYTE2(v280) ^ 0x24)) ^ 0xE2;
  v316 = *(&off_278E1E490 + (v148 ^ 0x32A1));
  *v324 = ((BYTE3(v280) ^ 0x32) - ((2 * (BYTE3(v280) ^ 0x32) + 2) & 0x3A) - 98) ^ 0x23 ^ *(v316 + (BYTE3(v280) ^ 0x68));
  *(a14 + v333) = ((BYTE3(v153) ^ 0x4E) + ((-4 - 2 * (BYTE3(v153) ^ 0x4E)) | 0x49) - 35) ^ 0x3A ^ *(v316 + ((v153 >> 24) ^ 0x14));
  DWORD1(v61) = v308;
  LODWORD(v61) = (v308 ^ 0x3A) << 24;
  LODWORD(v214) = ((((v307 ^ 0xA6) - ((2 * (v307 ^ 0xA6)) & 0x6C)) << 24) - 1241513984) ^ 0xB6000000;
  LODWORD(v303) = ((((((v61 >> 25) - ((2 * (v61 >> 25)) & 0xC8) + 100) ^ 0x45) - ((2 * (((v61 >> 25) - ((2 * (v61 >> 25)) & 0xC8) + 100) ^ 0x45)) & 0x38)) << 16) + 119275520) ^ 0x71C0000;
  v317 = ((((v302 ^ 0xE3) - ((2 * (v302 ^ 0xE3)) & 0x32)) << 8) + 1163532544) ^ 0x455A1900;
  v318 = v317 - ((2 * v317) & 0x1A658E00);
  LODWORD(v300) = a41 ^ a45 ^ a48 ^ v329 ^ HIDWORD(v328) ^ (v327 - 2 * ((v327 + 1017736612) & 0x323895D9 ^ v327 & 1) - 287177860) ^ ((v142 ^ 0x8E) - ((2 * (v142 ^ 0x8E)) & 0x178) + 495059132) ^ (v214 - ((2 * v214) & 0xC4000000) - 495598193) ^ (v318 - 1926052044) ^ (v303 - ((2 * v303) & 0x2FCE0000) + 1474757321) ^ (((476734642 * HIDWORD(v327) + 111880443) | 0xE619D1F3) - 775238233 * HIDWORD(v327) - 1717730679);
  *(a14 + v344) = *(v315 + (BYTE2(v300) ^ 0xEFLL)) ^ 0xF5;
  *(a14 + v334) = *(v315 + (BYTE2(v312) ^ 0x42)) ^ 0x81;
  *(a14 + v332) = ((v300 ^ BYTE4(v329) ^ 0x22) - ((2 * (v300 ^ BYTE4(v329) ^ 0x22) - 90) & 0xE0) + 67) ^ v306[(v300 ^ BYTE4(v329)) ^ 0xA5] ^ 0xEE;
  LODWORD(v296) = v280 ^ HIDWORD(v330) ^ 0xFFFFFF99;
  *(a14 + v341) = (v296 - ((2 * v296 + 38) & 0x26) + 102) ^ 0x6F ^ v306[(v280 ^ BYTE4(v330)) ^ 0x1ELL];
  *(a14 + v339) = *(v315 + (BYTE2(v153) ^ 0xBLL)) ^ 0xB7;
  *(a14 + v343) = (111 * *(v314 + (BYTE1(v280) ^ 0xB8)) - ((-122 - 34 * *(v314 + (BYTE1(v280) ^ 0xB8))) & 0xC3) - 92) ^ 0x7A;
  *(a14 + v340) = ((v312 ^ v330 ^ 0xE9) - ((2 * (v312 ^ v330 ^ 0xE9) - 90) & 0xBB) - 80) ^ 0xB ^ v306[(v312 ^ v330) ^ 0x6ELL];
  *(a14 + v337) = (111 * *(v314 + (BYTE1(v300) ^ 0x5DLL)) - ((94 * *(v314 + (BYTE1(v300) ^ 0x5DLL)) + 6) & 0x66) + 118) ^ 0xF9;
  *(a14 + v345) = ((BYTE3(v312) ^ 0xFB) - ((2 * (BYTE3(v312) ^ 0xFB) + 2) & 0x58) + 45) ^ 0x4E ^ *(v316 + (BYTE3(v312) ^ 0xA1));
  LODWORD(v313) = *(v52 - 216) + 507717092 - 2 * ((*(v52 - 216) + 16) & 0x1E4325D6 ^ v335 & 2);
  *(a14 + v346) = ((BYTE3(v300) ^ 0x5B) - ((2 * (BYTE3(v300) ^ 0x5B) + 2) & 0x60) + 49) ^ 0xB1 ^ *(v316 + (BYTE3(v300) ^ 1));
  return (*(a13 + 8 * ((24973 * ((v313 ^ 0x1E4325D4) < HIDWORD(a12))) ^ v148)))((2 * v296 + 38) & 0x26, v315, 38, v312, v318, 495059132, a13, v148, a9, a10, a11, a12, a13, a14, a15, a16, v320, v321, v322, v323, v324, a22, v325, v326, v327, v328, v329, v330, v331);
}

uint64_t sub_244A71610(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(&off_278E1E490 + ((49 * (dword_27EDF1108 ^ 0x27 ^ qword_27EDF1468)) ^ byte_244F6B2B0[byte_244F1BDB0[(49 * (dword_27EDF1108 ^ 0x27 ^ qword_27EDF1468))] ^ 7]) + 147);
  v3 = 49 * ((qword_27EDF1468 + *v2) ^ 0x27);
  v4 = *(&off_278E1E490 + (byte_244FB9598[(byte_244F6B3B8[v3 - 8] ^ 7) - 8] ^ v3) + 545);
  v5 = (*v4 ^ *v2) - &v10;
  *v2 = 2085698353 * (v5 + 0x1FC28598584843D9);
  *v4 = 2085698353 * (v5 ^ 0xE03D7A67A7B7BC27);
  v6 = *(&off_278E1E490 + ((49 * ((qword_27EDF1468 - dword_27EDF1108) ^ 0x27)) ^ byte_244F6B2B0[byte_244F1BDB0[(49 * ((qword_27EDF1468 - dword_27EDF1108) ^ 0x27))] ^ 0x67]) - 72);
  v7 = 1649972239 * ((((2 * &v11) | 0x6512A91F03AE99BCLL) - &v11 - 0x3289548F81D74CDELL) ^ 0x539D6A945A6F60A6);
  v8 = *(v6 + 8712) - v7;
  v12 = a1;
  v14 = v8;
  v15 = a2;
  v11 = v7 - 721054033;
  (*(v6 + 8 * ((byte_244F6B2B0[byte_244F1BDB8[(49 * ((*v4 + *v2) ^ 0x27)) - 8] ^ 7] ^ (49 * ((*v4 + *v2) ^ 0x27))) + 22778) - 8))(&v11);
  return v13;
}

void sub_244A71820(_DWORD *a1)
{
  v1 = *a1 + 1230911237 * (a1 ^ 0x5303B2F5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_244A718E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v39 = v37 - 956;
  v40 = (*(v38 + 8 * ((v37 - 956) ^ 0x7701)))(&a37, 0, 704);
  return (*(v38 + 8 * v39))(v40, 0);
}

uint64_t sub_244A71930@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v7 = (v5 + a1);
  *v7 = a2;
  v7[1] = a2;
  return (*(v6 + 8 * (((a1 + v2 == 1780) * v3) ^ v4)))();
}

uint64_t sub_244A71A4C@<X0>(int a1@<W8>, __n128 a2@<Q0>)
{
  v3[-1] = a2;
  *v3 = a2;
  return (*(v5 + 8 * (((v2 == 0) * v4) ^ a1)))();
}

uint64_t sub_244A71A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, __int16 a41, char a42, char a43, char a44, char a45, char a46, char a47)
{
  *v47 = v47;
  STACK[0x2E0] = v47;
  STACK[0x360] = 0x800000008;
  a47 = v49 >> (v48 + 35);
  a46 = BYTE6(v49);
  a45 = BYTE5(v49);
  a44 = BYTE4(v49);
  a43 = BYTE3(v49);
  a42 = BYTE2(v49);
  a41 = v49;
  STACK[0x2E8] = &a41;
  STACK[0x3A0] = 0x100000002;
  v51 = (*(v50 + 8 * (v48 + 14590)))(0);
  return (*(v50 + 8 * ((7789 * (LODWORD(STACK[0x3A4]) == 1)) ^ v48)))(v51);
}

uint64_t sub_244A71B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 32 * a2) = a1;
  *(v2 + 8 * LODWORD(STACK[0x3A0]) + 512) = v2 + 32 * LODWORD(STACK[0x3A0]);
  *(v2 + 4 * LODWORD(STACK[0x3A0]) + 640) = 8;
  LODWORD(STACK[0x3A0]) = ((v3 - 702038295) & 0x29D82DEF) + LODWORD(STACK[0x3A0]) - 3565;
  return (*(v4 + 8 * v3))();
}

uint64_t sub_244A71CA0@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v6 = (v3 + 32 * a2);
  v6[3] = HIBYTE(a1);
  v6[2] = BYTE2(a1);
  v6[1] = a1 >> (v4 | 8);
  *v6 = a1;
  *(v3 + 8 * LODWORD(STACK[0x3A0]) + 512) = v3 + 32 * LODWORD(STACK[0x3A0]);
  *(v3 + 4 * LODWORD(STACK[0x3A0]) + 640) = 4;
  LODWORD(STACK[0x3A0]) += ((v2 - 998328333) & 0x3B813A1E) + 1;
  return (*(v5 + 8 * v2))();
}

uint64_t sub_244A71D18()
{
  *v4 = (*(v3 + 8 * (v0 + 23121)))(419);
  (*(v3 + 8 * (v0 + 23005)))();
  **(v2 + 8 * (v0 ^ 0x6AF)) = (*(v3 + 8 * (v0 + 23121)))(34);
  v5 = (*(v3 + 8 * (v0 + 23005)))();
  *(v1 + 24) = 0;
  v6 = *v4;
  *(v6 + 219) = 63;
  *(v6 + 221) = -107;
  *(v6 + 245) = 22;
  *(v6 + 276) = -75;
  *(v6 + 201) = 65;
  *(v6 + 109) = -48;
  *(v6 + 258) = 37;
  *(v6 + 96) = -10;
  *(v6 + 316) = 117;
  *(v6 + 357) = -40;
  *(v6 + 403) = 72;
  *(v6 + 229) = -19303;
  *(v6 + 203) = -36;
  *(v6 + 54) = -55;
  *(v6 + 154) = -1;
  *(v6 + 273) = 105;
  *(v6 + 170) = -66;
  *(v6 + 289) = -97;
  *(v6 + 270) = -32;
  *(v6 + 401) = -67;
  *(v6 + 66) = 79;
  *(v6 + 150) = -66;
  *(v6 + 199) = 21;
  *(v6 + 106) = 19;
  *(v6 + 412) = -49;
  *(v6 + 241) = 123;
  *(v6 + 299) = 18;
  *(v6 + 210) = 6;
  *(v6 + 356) = 19;
  *(v6 + 48) = 0x80;
  *(v6 + 176) = -56;
  *(v6 + 61) = 24;
  *(v6 + 72) = 62;
  *(v6 + 362) = 28;
  *(v6 + 95) = -49;
  *(v6 + 55) = -24;
  *(v6 + 135) = -5;
  *(v6 + 228) = -49;
  *(v6 + 177) = 77;
  return (*(v3 + 8 * ((460 * ((((v0 + 160) ^ (((LODWORD(STACK[0x3A0]) - v0) | (v0 - LODWORD(STACK[0x3A0]))) >> 31) ^ (v0 - 1)) & 1) == 0)) ^ (v0 + 20676))))(v5);
}

uint64_t sub_244A71F24(uint64_t a1, uint64_t a2)
{
  v6 = (v2 + 1664) | 0x1102;
  v7 = *v5;
  v8 = *(v3 + 8 * (v6 - 5181));
  return (*(v4 + 8 * v6))(((v7[228] | ((75 * (v7[106] ^ 0xEC ^ *(v8 + 7 + (v7[106] ^ 0x58)))) << 8) | (v7[61] << 16) | (v7[176] << 24) | (v7[299] << 32) | (v7[241] << 40)) + (((v7[54] << 48) - ((v7[54] << 49) & 0x9A000000000000) + 0x424D8198DD994928) ^ 0x424D8198DD994928)) ^ (v7[203] << 56) ^ 0x33FCFBE5960D5AEDLL, a2, 627793983, ((v7[210] << 40) | (v7[55] << 48) | v7[72] | ((75 * (v7[403] ^ 0xEC ^ *(v8 + 7 + (v7[403] ^ 0x58)))) << 8) | ((((*v5)[316] ^ *(v8 + ((*v5)[316] ^ 0xECLL) + 539) ^ 0x20) - 28) << 16) | (v7[276] << 24) | (v7[170] << 32)) ^ (v7[199] << 56) ^ 0xE6F9A41F27FBC0DDLL);
}

uint64_t sub_244A72640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19, uint64_t a20, int a21, unsigned int a22, uint64_t a23, uint64_t a24, int a25, int a26)
{
  v31 = v28 + 10046;
  v32 = a22 > 0x63A17D69;
  v33 = a6 - ((2 * a6) & 0x1373B89BCLL) + 0x410CCDD89B9DC4DELL;
  *(&v35 + 1) = v27 ^ 0x2CC875;
  *&v35 = v27 ^ 0x29AD1AA26A000000;
  v34 = v35 >> 22;
  *(&v35 + 1) = v34 ^ 0x2766713E7E7 ^ ((v28 - 1330927615) & 0x4F5457FE ^ 0x523) & (v33 >> 22);
  *&v35 = v34 ^ (v33 << 42) ^ 0x7A47680000000000;
  v36 = v35 >> 42;
  v37 = v36 ^ a20 ^ 0xCB6594FB63E0F95DLL;
  v38 = v29 ^ a1 ^ 0x585A386C2CCF5CD7;
  v39 = v37 ^ a4;
  v40 = v26 ^ 0x47D0F2D61A021CE7;
  v41 = v26 ^ 0x47D0F2D61A021CE7 ^ a1 ^ 0x585A386C2CCF5CD7;
  v42 = v36 ^ a20 ^ 0xD97B1A5AF4C9BD3ALL;
  v43 = (v36 & 0x10) == 0;
  v44 = -16;
  if (!v43)
  {
    v44 = 16;
  }

  v45 = v39 ^ (v26 ^ 0x257218BD33439B57) & (a1 ^ 0xC2D827834B8B70A5);
  v46 = (v38 ^ 0xB23290C1FC148666) & (v41 ^ 0xF820F5844E05ABC2);
  v47 = ((v44 + v42) ^ 0xFFFFFFFFFFFFFFEFLL) & (v39 ^ 0xAC83F9978CD5EFC1) ^ v38;
  v48 = v47 ^ 0xFAE0BF793F94FA79 ^ (((v39 ^ 0x537C0668732A103ELL) & (v26 ^ 0xDA8DE742CCBC64A8)) - ((2 * ((v39 ^ 0x537C0668732A103ELL) & (v26 ^ 0xDA8DE742CCBC64A8))) & 0x91A45F718700F83ELL) + 0x48D22FB8C3807C1FLL);
  v49 = (v48 - ((2 * v48) & 0x243D1D432E5288CELL) + 0x121E8EA197294467) ^ v37;
  v50 = v42 & (v38 ^ 0x4DCD6F3E03EB7999) ^ v41;
  v51 = v45 ^ 0xAC83F997E37536B2;
  v52 = v45 & 0x16DA99297E72A4FCLL ^ 0xEDA7FFD78DDDFFC3;
  v53 = (2 * v45) & 0xDF41B2E6 ^ 0x19019282;
  v54 = (v46 - ((2 * v46) & 0x69C37BC2D963267CLL) - 0x4B1E421E934E6CC2) ^ v45 ^ 0x18624476E0647CFFLL;
  v55 = v51 - 1872812403 + v53 - ((2 * (v51 - 1872812403 + v53)) & 0xDC20DE2B51DA2BELL) - 0x791EF90EA5712EA1;
  v56 = (v54 - ((2 * v54) & 0x3ABA2B29AD7CF09ELL) - 0x62A2EA6B294187B1) ^ v40;
  *(&v58 + 1) = v49 ^ 0x4ED2A5E0836B012;
  *&v58 = v49 ^ 0x4000000000000000;
  v57 = v58 >> 61;
  v59 = v52 - (v55 ^ 0x6FC46027DB038A5CLL);
  v60 = v59 ^ v55 & 0x16DA99297E72A4FCLL;
  *(&v58 + 1) = ~v59;
  *&v58 = v60 ^ 0xEFE566F7DB8FDB5ELL;
  v61 = (v58 >> 1) ^ v60;
  v62 = (((v60 << 58) ^ 0x7C00000000000000) + 0x46C5F01D79BEE26 - ((2 * ((v60 << 58) ^ 0x7C00000000000000)) & 0x800000000000000)) ^ 0x46C5F01D79BEE26;
  v63 = (((v47 ^ v50) >> 19) ^ ((v47 ^ v50) >> 28) | ((v47 ^ v50) << 45)) ^ ((v47 ^ v50) << 36) ^ 0xFE1803025AC6F0A0;
  v64 = v49 ^ __ROR8__(v49, 39) ^ v57;
  *(&v58 + 1) = v61 ^ 0xFDB5F;
  *&v58 = v62 + (v61 ^ 0xEFE566F7DB8FDB5FLL) - 2 * (v62 & (v61 ^ 0x6FE566F7DB8FDB5FLL));
  v65 = (v58 >> 20) ^ __ROR8__(v60, 26) & 0xFFFFF03FFFFFFFFFLL;
  *(&v58 + 1) = v65 ^ 0x7C5420BC222;
  *&v58 = v65 ^ 0x1F5A800000000000;
  v66 = v58 >> 44;
  v67 = ((v56 ^ (v56 << 54)) & 0xC4796787C07183A6 ^ (v56 >> 10) & 0x396787C07183A6 | (v56 ^ (v56 << 54)) & 0x3B8698783F8E7C59 ^ (v56 >> 10) & 0x698783F8E7C59) ^ __ROR8__(v56, 17);
  v68 = (v50 << 23) ^ (v50 >> 7) ^ ((v50 >> 41) | (v50 << 57)) ^ 0x9A58236EB7C45271;
  v69 = v68 - ((2 * v68) & 0xAAC287CB48EAA7F4) - 0x2A9EBC1A5B8AAC06;
  v70 = v69 ^ v50;
  v71 = v69 ^ v47 ^ (v63 - ((2 * v63) & 0x4E54A1B52EE3FE6) + 0x272A50DA9771FF3);
  v72 = (v66 - ((2 * v66) & 0x7EDF8FF2CD60E86) + 0x3F6FC7F966B0743) ^ v64 ^ 0x2D7A6784EC063125;
  v73 = v67 ^ 0x7C847D1AB21E2078 ^ v70;
  v74 = (v73 ^ 0xBD32E51E65DA4D58) & (v71 ^ 0x62CEE73AC700D4AELL);
  v75 = (v72 ^ 0xA99A69E2AB9D96E5) & (v64 ^ 0x702B8C1D34095B9) ^ v71;
  v76 = (v64 ^ 0xF8FD473E2CBF6A46) & (v71 ^ 0x9D3118C538FF2B51) ^ v73;
  v77 = v75 ^ v76;
  v78 = v75 ^ v76 ^ 0xB50385AB7107542CLL;
  v79 = v72 ^ (v67 ^ 0xC3291DE7D683CE89) & (v70 ^ 0x29F85E30147A3A9);
  v80 = v75 ^ v64 ^ 0x2D7A6784EC063125 ^ (((v72 ^ 0x5665961D5462691ALL) & (v67 ^ 0x3CD6E218297C3176)) - ((2 * ((v72 ^ 0x5665961D5462691ALL) & (v67 ^ 0x3CD6E218297C3176))) & 0xAB0E41758172B6C6) - 0x2A78DF453F46A49DLL);
  v81 = (v74 - ((2 * v74) & 0x80A53E0536C4221CLL) + 0x40529F029B62110ELL) ^ v67 ^ 0x7C847D1AB21E2078 ^ v79;
  v82 = ((v80 << 25) ^ 0x1BE2315C3E000000) - ((2 * ((v80 << 25) ^ 0x1BE2315C3E000000)) & 0xB605E4108C000000);
  v83 = v82 - 0x24FD0DF7B97D85AFLL;
  v84 = ((0x24FD0DF7B97D85AELL - v82) & 0x200000000000000 ^ 0x9FD6EE4D6FF5FFBFLL) + 2 * ((0x24FD0DF7B97D85AELL - v82) & 0x200000000000000);
  v85 = v84 + 0x66FBBFF7F77F777DLL;
  v86 = v78 ^ (v78 >> 19);
  *(&v58 + 1) = v76 ^ 0xA25B2A7;
  *&v58 = v76 ^ 0x42CD1AE190000000;
  v87 = v58 >> 28;
  v43 = a5 == -1756;
  v88 = v86 ^ 0x68EE47BD630BEBB5;
  if (v43)
  {
    v88 = 0x1000000000000000;
  }

  v43 = ((v84 + 0x602911B2900A0041) & (v80 ^ 0x6200000000000000)) == 0;
  v89 = ((2 * (v88 & (v86 ^ 0x8711B8429CF4144ALL))) & 0xFE7FF9EFA2FBF6BELL) + (v88 & (v86 ^ 0x8711B8429CF4144ALL) ^ 0x7F3FFCF7D17DFB5FLL);
  v90 = v89 - 0x510E609480490259;
  v91 = 0xA6A99C92D76B76FBLL - v84;
  if (v43)
  {
    v91 = v85;
  }

  v92 = (v80 ^ 0xA393B18DF118AE1FLL) - 0x6D2AE456775773CLL + v91;
  v93 = v83 & 0xFDFFFFFFFE000000;
  v94 = (((v77 << 45) ^ 0xEAAB400000000000) - 0x6B28AF46D6880E0CLL - ((2 * ((v77 << 45) ^ 0xEAAB400000000000)) & 0x29AE800000000000)) ^ 0x94D750B92977F1F4;
  v43 = ((v89 - 0x7F3FFCF7D17DFB5FLL) & v94) == 0;
  *(&v96 + 1) = v79;
  *&v96 = v79 ^ 0xEB4921FD8B5C5C36;
  v95 = v96 >> 1;
  v97 = v86 & 0xEFFFFFFFFFFFFFFFLL;
  v98 = 0xAD71995B22B2F465 - v89;
  if (v43)
  {
    v98 = v90;
  }

  v99 = v94 - 0x2E319C635134F906 + v98 - 0x103954061496AD06 - ((2 * (v94 - 0x2E319C635134F906 + v98)) & 0xDF8D57F3D6D2A5F4);
  *(&v101 + 1) = v87 ^ 0x68E8FBE51;
  *&v101 = v87 ^ 0xFB2D3E9000000000;
  v100 = v101 >> 36;
  v102 = v97 ^ (v78 << 36) ^ v99;
  *(&v101 + 1) = v81 ^ 0x7CE4;
  *&v101 = v81 ^ 0xA0E994DFD760000;
  v103 = (v80 >> 61) ^ (v80 >> 39) ^ (8 * v80) ^ v93 ^ v92;
  v104 = (2 * (v102 & 0x20)) ^ 0x40 | v102 & 0x20;
  v105 = v100 ^ (v100 << 57);
  v106 = v79 ^ __ROR8__(v79, 6) ^ v95;
  v107 = ((v100 >> 7) ^ 0xFE842EF317FAD466) + 1;
  v108 = (((v100 >> 7) ^ 0x17BD10CE8052B99) - ((v100 >> 7) ^ 0x30935778EA90E75FLL ^ v105)) ^ ((v105 ^ 0xCE17798BFD6A3339) + 1);
  v109 = v105 ^ 0x3E08B12BE793E4FCLL ^ (v108 - ((2 * v108) & 0xE03F914035F3AF8ALL) - 0xFE0375FE506283BLL);
  v110 = v105 ^ 0x31E886740295CCC6;
  v111 = v107 + v110 + v109;
  v112 = v81 ^ __ROR8__(v81, 10) ^ (v101 >> 17);
  v113 = (v77 >> 28) ^ 0x32122D0BDLL;
  v43 = ((v104 - 0x5AD0A15000000020) & v113) == 0;
  v114 = v104 + 0x25234E81A953C6E0;
  v115 = 0x25234E81A953C720 - v104;
  if (v43)
  {
    v115 = v114;
  }

  *(&v116 + 1) = v100 ^ 0x740295CCC6;
  *&v116 = v100 ^ 0xBDE8860000000000;
  v117 = (((v100 >> 7) ^ 0xC9845C8EFDCE330CLL ^ (((v111 + 1) ^ v107) - ((2 * ((v111 + 1) ^ v107)) & 0x91FF1B042B96312ALL) - 0x3700727DEA34E76BLL)) + v110) ^ (v116 >> 41);
  v118 = v117 ^ v112 ^ 0x2FA4952DD613F21DLL;
  v119 = v103 ^ 0xCF5C00C033C1E928 ^ v106;
  v120 = v102 & 0xFFFFFFFFFFFFFFDFLL ^ v117 ^ (v113 - 0x25234E81A953C700 + v115);
  v121 = (v103 ^ 0x3A608198307DA861) & (v106 ^ 0x30E4057A7D712D46);
  v122 = v120 ^ 0xF6D704DB779D4690;
  v43 = v99 == 0xEFC6ABF9EB6952FALL;
  v123 = v120 ^ 0x755EA4933A876E94;
  if (v43)
  {
    v123 = 0x7C765FB7B2E5D7FBLL;
  }

  v124 = v123 & v122;
  v125 = v120 & 0x8389A0484D1A2804 ^ 0x8281004845180000;
  v126 = ((((v120 ^ 0xF6D704DB779D4690) - (v120 ^ 0x928FB248862B96FLL)) ^ 0xFFFFFFFFFFFFFFFELL) + v122) & (v103 ^ 0xC59F7E67CF82579ELL);
  v127 = v120 ^ v121;
  v128 = v119 ^ v117 & (v112 ^ 0xCCF3E51451F6DE84);
  v129 = v126 ^ v118;
  v130 = (((v119 ^ 0xC5D884227ECD6C0FLL) & (v112 ^ 0x330C1AEBAE09217BLL)) - ((2 * ((v119 ^ 0xC5D884227ECD6C0FLL) & (v112 ^ 0x330C1AEBAE09217BLL))) & 0x1586FD4FF8877D6CLL) + 0xAC37EA7FC43BEB6) ^ v103 ^ 0xCF5C00C033C1E928;
  v131 = (v124 + v125) & (v118 ^ 0xE357703987E52C99);
  v132 = v66 & 1;
  LOBYTE(v124) = !(v66 & 1);
  v133 = v128 ^ 0x4F6BACFBD7464EFCLL ^ (v131 - ((2 * v131) & 0xEA99AE4CACE9BA18) + 0x754CD7265674DD0CLL);
  v134 = (v133 - ((2 * v133) & 0x39511F8CF035A6CCLL) + 0x1CA88FC6781AD366) ^ v112 ^ 0x2FA4952DD613F21DLL;
  v135 = (v128 ^ 0xCDC359CB9828EFD9) >> v124 >> v132;
  *(&v136 + 1) = v130 ^ v127 ^ 0x1F80365EE85180A2;
  *&v136 = v130 ^ ~v127;
  v137 = v127 ^ 0xBD91B7A70981C569 ^ v129 ^ ((v127 ^ 0xBD91B7A70981C569 ^ v129) << 36) ^ (((v127 ^ 0xBD91B7A70981C569 ^ v129) >> 19) ^ ((v127 ^ 0xBD91B7A70981C569 ^ v129) >> 28) | ((v127 ^ 0xBD91B7A70981C569 ^ v129) << 45));
  v138 = v137 ^ 0x3162D362BCDCC070;
  v139 = v130 ^ v127 ^ __ROR8__(v130 ^ v127, 39) ^ (v136 >> 61);
  v140 = v139 ^ 0x42BBDEA1A9D3DFC9;
  v141 = (v139 ^ 0x42BBDEA1A9D3DFC9) & 0xA2EB103F18682ABBLL;
  *(&v136 + 1) = v141 ^ 0xA03;
  *&v136 = v141 ^ 0xEB003E00680000;
  v142 = v136 >> 17;
  v143 = v129 ^ (v129 >> 7) ^ (((v129 << 57) ^ (v129 << 23)) & 0xFFFFFFFFFF800000 | (v129 >> 41));
  v144 = v143 ^ 0xD177207DEE30F016;
  v145 = v128 ^ (~v128 << 63) ^ __ROR8__(v128, 6) ^ v135;
  *(&v136 + 1) = v142 ^ 0x798DB7657670;
  *&v136 = v142 ^ 0x96C9000000000000;
  v146 = v137 ^ v143 ^ 0xD177207DEE30F016;
  v147 = (v136 >> 47) ^ 0x51F07EF5F4890729 | (v139 ^ 0x42BBDEA1A9D3DFC9) & 0x5D14EFC0E797D544;
  v148 = v146 ^ 0xD128BC8B691FD70DLL;
  if (v139 == 0x4250955FADAE80CELL)
  {
    v148 = v143 ^ 0xD177207DEE30F016;
  }

  v149 = v139 ^ 0x4250955FADAE80CELL;
  v150 = v148 ^ 0x88A8A9F5FB7DE084 | v137 ^ 0xD128BC8B691FD70DLL;
  v151 = v146 ^ 0x46358568B85EDF0BLL;
  v152 = v147 ^ 0x5D14A400E3828040;
  v153 = v149 + (v145 ^ 0xAAF454ACB6484C66) - 2 * (v149 & (v145 ^ 0x2AF454ACB6484C66));
  v154 = v153 - 0x7BF8F48748FFFC13 - ((2 * v153) & 0x80E16F16E0007DALL);
  if (v129 == 0xF5833B7F6F690309)
  {
    v155 = v138;
  }

  else
  {
    v155 = v151;
  }

  v156 = v143 ^ 0x59DF8988154D1092;
  v157 = (v155 ^ 0xE04A6FE9D5C3177DLL) & v156 ^ v150;
  v158 = ((v134 >> 17) | (v134 << 54)) ^ (v134 << 47) ^ (((v134 >> 10) ^ 0x22FE3FFD566CB2) + (v134 ^ 0x8BF8FFF559B2CB82) - 2 * (((v134 >> 10) ^ 0x22FE3FFD566CB2) & (v134 ^ 0xBF8FFF559B2CB82)));
  v159 = v149 & ~v157;
  v160 = (v158 ^ 0x7ABEBA0380055326) & v156;
  v161 = (v158 ^ v144 ^ 0xF21613F67B78B3A2) & v157;
  v162 = v160 ^ v154;
  v163 = v157 ^ v152 & (v154 ^ 0x84070B78B70003EDLL);
  v164 = (((v158 ^ 0x854145FC7FFAACD9) & (v154 ^ 0x7BF8F48748FFFC12)) - ((2 * ((v158 ^ 0x854145FC7FFAACD9) & (v154 ^ 0x7BF8F48748FFFC12))) & 0x1D697FC08FABE0ELL) + 0xEB4BFE047D5F07) ^ v140;
  v165 = (v163 & 0x40000 ^ 0x363DCEB6EFBEFD5ALL) + 2 * (v163 & 0x40000);
  v166 = v165 - 0x2040CA04402500ALL;
  v167 = v158 ^ v144 ^ v159;
  v168 = v165 - 0x363DCEB6EFBEFD5ALL;
  v169 = v164 - ((2 * v164) & 0xC8E8BEDD9806A52ELL) + 0x64745F6ECC035297;
  v170 = 0x6A7790CD9B7BAAAALL - v165;
  if ((v168 & (v167 ^ 0xDE9EC0984840000)) != 0)
  {
    v171 = v170;
  }

  else
  {
    v171 = v166;
  }

  v172 = ((v167 ^ 0xDE9EC0984874C5DLL) - 0x3439C216ABBCAD50 + v171) ^ v163 & 0xFFFFFFFFFFFBFFFFLL;
  v173 = v172 ^ (v172 << 36);
  v174 = v161 ^ v158 ^ v162;
  *(&v176 + 1) = v174 ^ 0xAAF34;
  *&v176 = v174 ^ 0x1464E84C8F00000;
  v175 = v176 >> 20;
  *(&v176 + 1) = v173 ^ 0xCE2E15BDDB8;
  *&v176 = v173 ^ 0x7910600000000000;
  v177 = v176 >> 45;
  *(&v176 + 1) = v175 ^ 0x1617B987140;
  *&v176 = v175 ^ 0x570D300000000000;
  v178 = v169 ^ v163;
  v179 = (v176 >> 44) - ((2 * (v176 >> 44)) & 0xD30CF728E89494E6) + 0x69867B94744A4A73;
  v180 = ((v172 << 45) ^ 0x7BB7000000000000) - ((2 * ((v172 << 45) ^ 0x7BB7000000000000)) & 0xBB2C000000000000);
  v181 = v162 ^ (v162 >> 1);
  v182 = (v162 >> 6) ^ 0xA66F4B777749BELL;
  v183 = (v181 ^ 0x1563BB3333B5861) & v182;
  v184 = (v181 ^ 0x3D563BB3333B5861) + v182;
  v185 = ((v162 << 58) ^ 0xF800000000000000) - 0x6BD89F9673971556 - ((2 * ((v162 << 58) ^ 0xF800000000000000)) & 0x2800000000000000);
  v186 = ((v179 << 47) ^ 0x34A800000000000) + 0x3DBF0C9CAA269A6FLL - ((2 * ((v179 << 47) ^ 0x34A800000000000)) & 0x7B7E000000000000);
  v187 = (v179 & 0x10000000000000 ^ 0x1CFEDFBAEFF73B3FLL) + 2 * (v179 & 0x10000000000000);
  *(&v176 + 1) = v178 ^ 0x7DB1EE628F630D7;
  *&v176 = v178 ^ 0xC000000000000000;
  v188 = v176 >> 61;
  v189 = v172 >> 19;
  *(&v176 + 1) = v177 ^ 0x4BD94;
  *&v176 = v177 ^ (v172 >> 9) ^ 0x2C3E577A2BB80000;
  v190 = ((2 * (v184 - 2 * v183)) & 0xDABEF67E7B7EAEF8) + ((v184 - 2 * v183) ^ 0xED5F7B3F3DBF577CLL) + 0x12A084C0C240A884;
  v191 = (v176 >> 19) - ((2 * (v176 >> 19)) & 0xBB9CFDC551FD3506) + 0x5DCE7EE2A8FE9A83;
  v192 = (v190 + (v185 ^ 0x6BD89F9673971555 ^ v190) + 1) ^ ((v185 ^ 0x6BD89F9673971555) + 1);
  v193 = v189 ^ 0x35830909E1D90A0ELL ^ v191;
  v194 = ((2 * v191) & 0xC5DBF4473E7F1F3CLL ^ 0x84D9F44710151334) + (v191 ^ 0x2891014037F52644);
  v195 = v178 ^ __ROR8__(v178, 39) ^ v188;
  v196 = (v193 + 0x1D1205DC60C07062 + v194 + 1) ^ ((v189 ^ 0xFFFFF26A4913A3D4) + 1);
  v197 = v189 ^ 0x62922559F5054B08 ^ (v196 - ((2 * v196) & 0xC524519887D22E46) + 0x629228CC43E91723);
  v198 = v180 + 0x5D961F637C096AF8;
  v199 = ((v192 - 0x6BD89F9673971556 - ((2 * v192) & 0x284EC0D318D1D554)) ^ v185) + v190;
  v200 = (v167 >> 41) & 2;
  v201 = v199 ^ (v162 << 63);
  v202 = v187 - 0x70050021860101;
  v203 = v194 + 0x1D1205DC60C07062 + v197 - ((2 * (v194 + 0x1D1205DC60C07062 + v197)) & 0xEA78BB78325B89BCLL) - 0xAC3A243E6D23B22;
  if (((v186 ^ 0x3DB0000000000000) & (v187 - 0x1CFEDFBAEFF73B3FLL)) != 0)
  {
    v202 = 0x398DBA75BE68757DLL - v187;
  }

  v204 = (v186 ^ 0x3DBF0C9CAA269A6FLL) - 0x1C8EDABACE713A3ELL + v202;
  v205 = v167 ^ (v167 << 23) ^ (v167 >> 7);
  v43 = (~v205 & v200) == 0;
  v206 = (v167 >> 41) & 0xFFFFFFFFFFFFFFFDLL;
  v207 = (v205 ^ (v167 << 57) ^ 0x16ED886AB458E0ELL) + v200;
  v208 = 2 * v200;
  if (v43)
  {
    v209 = 0;
  }

  else
  {
    v209 = -v208;
  }

  v210 = v203 & 0x2C74CC185E9F8861 ^ v198 & 0x2C74C00000000000 | v203 & 0xD38B33E7A160779ELL ^ v198 & 0xD38B200000000000;
  v211 = v201 ^ v195 ^ 0x266FFA13A788DBE4;
  v212 = (v207 + v209) ^ v206;
  v213 = v179 & 0xFFEFFFFFFFFFFFFFLL ^ (v179 >> 10) ^ ((v179 >> 17) | (v179 << 54)) ^ v204;
  v214 = v213 ^ v212;
  v215 = (v213 ^ 0x2CE8D73C15F04062) & (v212 ^ 0x71D5D4);
  v216 = v213 ^ v211 ^ 0xFEF22057CAFEE293;
  v217 = v213 ^ 0xD31728C3EA0FBF9DLL;
  v218 = v214 ^ 0x7E6DEEB868858CBDLL;
  v219 = v210 ^ v212;
  v220 = v211 ^ 0x59E58F1974069193 ^ v215;
  v221 = (v216 + (v217 | v211 ^ 0xD21AF76BDF0EA2F1) + 1 - ((2 * (v216 + (v217 | v211 ^ 0xD21AF76BDF0EA2F1) + 1)) & 0x5BCA112841E2BA1CLL) + 0x2DE5089420F15D0ELL) ^ v195 ^ 0x266FFA13A788DBE4;
  v222 = (v219 ^ 0x5755A243E6A3EEF5) & (v195 ^ 0xB8AF287877986EALL);
  v223 = v195 ^ 0xF4750D7878867915;
  v224 = (v214 ^ 0x7E6DEEB868858CBDLL) & 0x29EC448D28643C4 ^ 0x284000050040100 ^ (v219 ^ 0xAA3499F4CBDA52CELL) & (v214 ^ 0x2CE8D73C158195B6);
  v225 = (v224 | v217) - 0x69D60E89C7B5D94FLL - ((2 * (v224 | v217)) & 0x2C53E2EC70944D62);
  v226 = v222 ^ v218;
  v227 = v219 ^ v201 & v223;
  v228 = v226 ^ v227;
  v229 = v227 ^ (v221 - ((2 * v221) & 0xE98A8B5E3593AF10) + 0x74C545AF1AC9D788);
  v230 = 0x6626979A624A220ELL - (v220 & 0x1000000000 | 0x33134BCD31251107);
  if ((v220 & 0x1000000000 & ~v225) == 0)
  {
    v230 = v220 & 0x1000000000 | 0x33134BCD31251107;
  }

  v231 = (v225 ^ 0x9629F176384A26B1) - 0x33134BCD31251107 + v230;
  v232 = v228 ^ 0xD9F65985089475B1 ^ (((v228 << 36) ^ 0x53A3BC7000000000) - ((2 * ((v228 << 36) ^ 0x53A3BC7000000000)) & 0xD0A07C8000000000) - 0x17AFC1B41251B18ALL);
  v233 = v224 & v217;
  v234 = v232 - ((2 * v232 + 0x1FFFFFFFECDBB456) & 0x1A4171D7E5E865B8) + 0xD20B8EBE9620D07;
  v235 = v233 ^ v220 & 0xFFFFFFEFFFFFFFFFLL ^ v231;
  *(&v237 + 1) = v235 ^ 0x39E;
  *&v237 = v235 ^ 0xD27A39BED33C0000;
  v236 = v237 >> 10;
  *&v237 = v235 ^ 0xD27A39BED33C0000;
  v238 = v226 ^ (v226 >> 7) ^ (v226 << 23) ^ (v226 >> 41) ^ (v226 << 57);
  v239 = (((v228 >> 28) | (v228 << 45)) ^ (v228 >> 19) ^ v238 ^ (((2 * v234) & 0x13244BAA ^ 0x12041A8) + (v234 ^ 0xD20B8EBFB661709)) ^ 0xF7CFE5C84EFCBA14) & (v229 ^ (v229 << 25) ^ (8 * v229) ^ (v229 >> 39) ^ (v229 >> 61) ^ 0xBBD9C0A1D5BCE119) ^ v236 ^ v235 ^ (v237 >> 17) ^ 0xD21E1F35FA807870 ^ v238;
  v240 = (v239 ^ 0xD71255D72E4CE4CALL) - ((2 * (v239 ^ 0xD71255D72E4CE4CALL) + 0x6DE311342F02560CLL) & 0x58CC2CE61F9BAB5CLL) + 0x63579F0D274F00B4;
  if ((v239 ^ 0xD71255D72E4CE4CALL) < 0xC90E7765E87ED4FALL)
  {
    v240 = v239 ^ 0xFB7443A421813164;
  }

  v241 = v240 ^ 0x2C6616730FCDD5AELL;
  if ((v239 ^ 0xD71255D72E4CE4CALL) >= 0xC90E7765E87ED4FALL)
  {
    v242 = 0xC90E7765E87ED4FALL;
  }

  else
  {
    v242 = 0;
  }

  v243 = v241 + v242 - ((2 * (v241 + v242)) & 0x3DE711D164125B58) + 0x1EF388E8B2092DACLL;
  v244 = (((v243 << 23) ^ 0x74590496D6000000) + 0x2D8FE7001CFE1419 - ((2 * ((v243 << 23) ^ 0x74590496D6000000)) & 0x5B1FCE0039000000)) ^ 0x2D8FE7001CFE1419;
  v245 = v244 + (v239 ^ (v239 >> 7) ^ 0xD6BC717C80107D03) - 2 * (v244 & (v239 ^ (v239 >> 7) ^ 0x56BC717C80107D03)) - ((2 * (v244 + (v239 ^ (v239 >> 7) ^ 0xD6BC717C80107D03) - 2 * (v244 & (v239 ^ (v239 >> 7) ^ 0x56BC717C80107D03)))) & 0xB82B5EEFA56447B4);
  if (v32 == (a26 + 1995645528) < 0x9C5E8296)
  {
    v32 = a26 + 1995645528 < a19;
  }

  return (*(v30 + 8 * (v31 ^ (62 * v32))))((v245 - 0x23EA50882D4DDC26) ^ (v243 >> 41) ^ (v243 << 57) ^ 0xB7E9549244B000F3);
}

uint64_t sub_244A74630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6, unsigned int a7, unsigned int a8)
{
  v12 = a6 > a8;
  if (v12 == v9 < v11)
  {
    v12 = a7 > v9;
  }

  return (*(v10 + 8 * ((511 * ((((v8 - 1724) ^ v12) & 1) == 0)) ^ v8)))(a1, a2, a3, a4, (a5 + 1));
}

uint64_t sub_244A746C8(uint64_t a1)
{
  v7 = (v4 ^ a1 ^ 0x6533AB4ED139DAB4 ^ 0x534A5683C5C71EA4) & (v2 ^ v3) ^ v1 ^ a1 ^ 0x6533AB4ED139DAB4;
  v8 = v7 ^ 0x55842371D3F26DF5;
  v9 = ((v8 << 23) ^ 0xC7E2CAB766000000) - 0x314B8EA471449DA5 - ((2 * ((v8 << 23) ^ 0xC7E2CAB766000000)) & 0x9D68E2B71D000000);
  v10 = (v9 ^ 0xCEB4715B8EBB625BLL) + ((v7 >> 7) ^ 0x8D9DE9FC2CCE06) - 2 * ((v9 ^ 0xB4715B8EBB625BLL) & ((v7 >> 7) ^ 0x8D9DE9FC2CCE06));
  return (*(v6 + 8 * v5))((v8 & 0xFFB5C9BBDCC5E836 ^ (v8 << 57) ^ (v10 - ((2 * v10) & 0x7C3CFFD5A8F197CELL) + 0x3E1E7FEAD478CBE7) & 0xFFB5C9BBDCC5E836 | ((v10 - ((2 * v10) & 0x7C3CFFD5A8F197CELL) + 0x3E1E7FEAD478CBE7) ^ v8) & 0x4A3644233A17C9) ^ (v7 >> 41) ^ 0x86A8538087C398BCLL);
}

uint64_t sub_244A74D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, _BYTE *a12)
{
  a12[221] = (v13 + 89) ^ BYTE2(v14);
  a12[201] = BYTE1(v14) ^ 0x90;
  a12[96] = BYTE6(v14) ^ 0xC1;
  a12[270] = HIBYTE(v14) ^ 0xDE;
  a12[154] = BYTE4(v14) ^ 0x7E;
  a12[109] = BYTE5(v14) ^ 0x47;
  a12[357] = BYTE2(v12) ^ 8;
  a12[177] = BYTE3(v12) ^ 0xD2;
  a12[273] = BYTE3(v14) ^ 0xBB;
  a12[245] = BYTE1(v12) ^ 0x7D;
  a12[230] = v14 ^ 0x44;
  a12[258] = v12 ^ 0x71;
  a12[219] = BYTE4(v12) ^ 0xC5;
  v17 = *(a10 + (BYTE5(v12) ^ 0x88));
  v18 = (BYTE5(v12) & 8 | 0x82) ^ BYTE5(v12) & 0xF7;
  a12[66] = BYTE6(v12) ^ 0x54;
  a12[401] = HIBYTE(v12) ^ 0x31;
  a12[356] = 75 * (v18 ^ 0xBE ^ v17);
  a12[72] = v16 ^ 0x49;
  v19 = *(a11 + (BYTE1(v16) ^ 0x5FLL));
  a12[316] = BYTE2(v16) ^ 0x95;
  a12[276] = BYTE3(v16) ^ 0xF0;
  a12[403] = (v19 ^ 0xE7) + 71;
  a12[170] = BYTE4(v16) ^ 0xA8;
  v20 = *(a11 + (BYTE5(v16) ^ 0xB8));
  a12[55] = BYTE6(v16) ^ 0xA2;
  HIDWORD(v21) = (v20 >> 4) ^ 7;
  LODWORD(v21) = (v20 << 28) ^ 0x40000000;
  a12[199] = (v16 ^ 0x24A2E8A8F0950F49uLL) >> (v18 & 0x38 ^ 0x38u) >> (v18 & 0x38);
  a12[210] = ((v21 >> 28) ^ 0x93) + 71;
  v22 = *(a10 + (a7 ^ 0x58));
  a12[229] = HIBYTE(a7);
  a12[362] = a7 >> (a6 & 0x20) >> (a6 & 0x20 ^ 0x20u);
  a12[228] = a6 ^ 0x1E;
  a12[48] = BYTE5(a7);
  a12[289] = BYTE2(a7);
  a12[241] = BYTE5(a5) ^ 0xAF;
  a12[203] = HIBYTE(a8) ^ 0x84;
  a12[106] = BYTE1(a6) ^ 0x5A;
  a12[95] = BYTE1(a7);
  a12[135] = BYTE6(a7);
  a12[150] = BYTE3(a7);
  a12[412] = 75 * (a7 ^ 0xEC ^ v22);
  a12[61] = BYTE2(a6) ^ 0xBD;
  a12[54] = BYTE6(a5) ^ 0x15;
  a12[176] = BYTE3(a5) ^ 0xD2;
  a12[299] = BYTE4(a5) ^ 0x77;
  return (*(v15 + 8 * (v13 - 10333)))();
}

uint64_t sub_244A7500C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, _BYTE *a15)
{
  *(v16 + 24) = v18 - 804260741 + v15 + 11446;
  *a15 = 1;
  return (*(v17 + 8 * v15))();
}

uint64_t sub_244A75040@<X0>(int a1@<W8>)
{
  v4 = a1 ^ 0x75FFDF7D;
  v5 = (2 * a1) & 0xEBFFBEFA;
  v6 = *v3;
  v252 = (*v3)[201];
  v7 = *(v2 + 8 * (v1 - 12229));
  v8 = v7 + 789;
  v9 = *(v7 + 789 + ((*v3)[66] ^ 0xD5));
  v10 = (*v3)[221];
  v11 = (*v3)[230];
  v12 = (v6[273] << 24) - ((v6[273] << 25) & 0x144000000) + 0xEFD3443A20AA307;
  v13 = v6[258] - ((2 * v6[258]) & 0x140) - 0xDB904B123D9E960;
  v14 = ((v6[245] << 8) - ((v6[245] << 9) & 0x11000) - 0xA013F5FDBAD77C3) ^ 0xF5FEC0A02452883DLL;
  v15 = (v14 - (v13 ^ 0xF246FB4EDC2616A0 | v14)) ^ ((v13 ^ 0xDB904B123D9E95FLL) + 1);
  v16 = ((v15 - ((2 * v15) & 0xE48DF69DB84C2D40) - 0xDB904B123D9E960) ^ v13) + v14;
  v17 = (*v3)[72];
  v18 = v12 ^ 0xEFD3443A20AA307;
  HIDWORD(v20) = v9 ^ 1;
  LODWORD(v20) = (v9 ^ (8 * v9) ^ 0x14) << 24;
  v19 = v20 >> 26;
  v21 = (v6[316] << 16) - ((v6[316] << 17) & 0xFFFBFFFF) + 0x577C82FB68FDC204;
  v22 = v7 + 529;
  v23 = *(v7 + 529 + (((*v3)[276] + 54) ^ 0xFLL));
  LODWORD(v13) = *(v7 + 529 + (((*v3)[199] + 54) ^ 0xFLL));
  v24 = v17 | ((*v3)[403] << 8);
  v25 = (v24 - 2 * (v24 & 0x3627 ^ v17 & 0x21) - 0x47A5BC73A23EC9FALL) ^ 0xB85A438C5DC13606;
  v26 = v13 ^ 0x64;
  LODWORD(v13) = (((16 * (v13 ^ 0x64)) ^ 0x10) - ((2 * ((16 * (v13 ^ 0x64)) ^ 0x10)) & 0x60) - 65) ^ v13;
  HIDWORD(v20) = v23 ^ 2;
  LODWORD(v20) = (v23 ^ (16 * v23) ^ 0xBBBBBBBB) << 24;
  v27 = v20 >> 26;
  v28 = (v25 - (v25 | v21 ^ 0x577C82FB68FDC204)) ^ ((v21 ^ 0xA8837D0497023DFBLL) + 1);
  v29 = (v28 - ((2 * v28) & 0xAEF905F6D1FB8408) + 0x577C82FB68FDC204) ^ v21;
  v30 = v7 + 262;
  LODWORD(v21) = *(v7 + 262 + (((*v3)[412] - 25) ^ 0x5CLL));
  v31 = v29 + v25;
  v32 = v7 + 1;
  LODWORD(v25) = *(v32 + (((*v3)[95] - 83) ^ 0x13));
  v33 = (v21 >> 3) | (32 * v21);
  LODWORD(v21) = *(v22 + (((*v3)[289] + 54) ^ 0xFLL));
  HIDWORD(v20) = v13 ^ 1;
  LODWORD(v20) = (v13 ^ 0x55555555) << 24;
  v34 = (v20 >> 26);
  HIDWORD(v20) = v25 + 78;
  LODWORD(v20) = (v25 << 24) - 838860800;
  LODWORD(v13) = (__PAIR64__(((v21 >> 2) | (v21 << 6)) ^ 0x38, (v21 << 30) ^ 0x40000000u) >> 30) - ((2 * (__PAIR64__(((v21 >> 2) | (v21 << 6)) ^ 0x38, (v21 << 30) ^ 0x40000000u) >> 30)) & 0x6E) - 73;
  LODWORD(v28) = ((16 * v13) ^ 0x70) - ((2 * ((16 * v13) ^ 0x70)) & 0x60) - 73;
  v35 = ((((v20 >> 31) ^ 0x74u) << 8) | ((__PAIR64__(v28 ^ ~v13, (v28 ^ v13 ^ 0x48) << 24) >> 26) << 16) | v33) - 2 * (((((v20 >> 31) ^ 0x74) << 8) & 0x3E00 | (((__PAIR64__(v28 ^ ~v13, (v28 ^ v13 ^ 0x48) << 24) >> 26) << 16) & 0x1B3EBF) | v33 & 0xBF) ^ v33 & 8);
  v36 = v5 + v4 - 1979703165;
  v37 = *(v22 + (((*v3)[106] + 54) ^ 0xFLL));
  v38 = ((v36 ^ (v6[357] << 16) | (v6[356] << 40)) ^ (v6[177] << 24) | (v6[219] << 32) | (v19 << 48)) ^ v16;
  HIDWORD(v20) = v37 ^ 2;
  LODWORD(v20) = (v37 ^ (16 * v37) ^ 0xBBBBBBBB) << 24;
  v39 = ((v6[150] << 24) | (v6[362] << 32) | (v6[48] << 40) | (v6[135] << 48) | (v35 - 0x744305F4CEE4C149) ^ 0x8BBCFA0B311B3EB7) ^ (v6[229] << 56);
  *(&v41 + 1) = (((v20 >> 26) << 8) - 1480966144 - (((v20 >> 26) << 9) & 0x8200) + 362) ^ 0x16A | (*v3)[228];
  *&v41 = (((v20 >> 26) << 8) + 0x45DD5E58A7BA4000 - (((v20 >> 26) << 9) & 0x8200) + 362) ^ 0x45DD5E58A7BA4000 | ((*v3)[61] << 16);
  v40 = v41 >> 10;
  *(&v41 + 1) = (v40 + ((*v3)[176] << 14)) ^ 0x2DDC7FECE32846;
  *&v41 = v40 ^ 0x96C0000000000000;
  v42 = (v41 >> 54) ^ ((v6[54] << 48) | (v6[203] << 56) | (v6[299] << 32) | (v6[241] << 40));
  v43 = v38 ^ ((*v3)[401] << 56);
  v44 = ((v252 << 8) | (v10 << 16) | v11 | v12 ^ 0xEFD3443A20AA307 | (v6[154] << 32)) ^ ((v6[270] << 56) | (v6[109] << 40) | (v6[96] << 48)) ^ v42;
  v45 = ((v6[210] << 40) | (v6[170] << 32) | (v27 << 24) | (v6[55] << 48)) ^ v31 ^ v43 ^ (v34 << 56);
  *(&v41 + 1) = v38 ^ 0x120142D317DDALL;
  *&v41 = v43 ^ 0xC590000000000000;
  v46 = v41 >> 52;
  v47 = v39 ^ v42;
  v48 = v47 ^ (v44 ^ 0xC0D8FC5EC7CAE87BLL) & (v43 ^ 0xC59120142D317DDALL);
  v49 = (v47 ^ 0x24A8B3630B08BED9) & (v39 ^ 0xBFE34788D9657355);
  *(&v41 + 1) = v47 ^ 0x58842F3AALL;
  *&v41 = v47 ^ 0x1FF8492000000000;
  v50 = v41 >> 36;
  *(&v41 + 1) = v50 ^ 0xF1EFAE4;
  *&v41 = v50 ^ 0x1686D4CEA0000000;
  v51 = v41 >> 28;
  *(&v41 + 1) = v46 ^ 0x681;
  *&v41 = v46 ^ 0x10D77F55E8E75000;
  v52 = (v51 ^ 0xE1051BE9792B315) & (v44 ^ 0x3F2703A138351784);
  v53 = v44 ^ (v45 ^ 0x5AEF8793EBB0E36) & ((v41 >> 12) ^ 0x97EEF2880AA1718ALL);
  v54 = v52 ^ v39;
  v55 = (v39 ^ 0x401CB877269A8CAALL) & (v45 ^ 0xFA510786C144F1C9);
  v56 = v48 ^ v53 ^ 0x20DF4A84B077E42ELL;
  v57 = v56 - (v48 ^ v53 ^ 0xEB0D0393F1CD9996) - ((2 * (v56 - (v48 ^ v53 ^ 0xEB0D0393F1CD9996))) & 0xB0ABAD060C147E78) - 0x27AA297CF9F5C0C4;
  v58 = v39 & 0x3B50FA46834A4D73 ^ v45 ^ v49;
  *(&v41 + 1) = v58 ^ 7;
  *&v41 = v58 ^ 0x3EEEBA79BFFB4F60;
  v59 = v41 >> 4;
  v60 = (v48 ^ v53 ^ 0x77563F8498224E2 ^ v57) + 2 * ((v57 ^ 0x27AA297CF9F5C0CCLL) & v56);
  v61 = v60 - ((2 * v60) & 0xA3E524DA6E273128) - 0x2E0D6D92C8EC676CLL;
  v62 = v53 ^ v43 ^ (v55 - ((2 * v55) & 0x8747EE87D6A123AELL) + 0x43A3F743EB5091D7);
  *(&v41 + 1) = v59 ^ 0x845D9A42EB99B0ALL;
  *&v41 = v59 ^ 0x1000000000000000;
  v63 = v41 >> 60;
  v64 = v63 - ((2 * v63) & 0x98145EDD27BA78ACLL) + 0x4C0A2F6E93DD3C56;
  v65 = ((v64 & 0x698A473C871CB912 ^ 0x4802052C00048812) + (v54 & 0x698A473C871CB912 ^ 0x4008003406188802) - 2 * ((v64 & 0x698A473C871CB912 ^ 0x4802052C00048812) & (v54 ^ 0x4008003406188802))) | (v64 ^ v54) & 0x9675B8C378E346EDLL ^ 0x8041084358C2004DLL;
  *(&v41 + 1) = v61 ^ 0x39894;
  *&v41 = v61 ^ 0xD1F2926D37100000;
  v66 = v41 >> 19;
  LODWORD(v53) = *(v8 + ((v62 >> 61) ^ 0xD7));
  v67 = v8;
  DWORD1(v41) = v53 ^ 2;
  LODWORD(v41) = (v53 & 4 ^ 0xFFFFFF87) << 24;
  v68 = v41 >> 26;
  v69 = (v61 << 36) ^ 0x7139894000000000;
  v70 = v61 ^ (v61 >> 28) ^ v66;
  LODWORD(v66) = (((4 * v68 - 56) ^ v53 & 0xF8) & 0xFFFFFFFC | ((v68 - 14) >> 6)) ^ 0x30;
  LODWORD(v66) = v66 - 2 * (v66 ^ (((v68 - 14) & 0xC0u) >> 6) & 1) + 126;
  *(&v41 + 1) = ~v63;
  *&v41 = v64 ^ 0x59B6899B4DE46694;
  v71 = v41 >> 1;
  LODWORD(v53) = ((8 * v66) ^ 0xFFFFFFF0) + ~(2 * ((8 * v66) ^ 0xFFFFFFF0)) + 127;
  DWORD1(v41) = v53 ^ ~v66;
  LODWORD(v41) = (v53 ^ v66 ^ 0x99999999) << 24;
  LOBYTE(v66) = v41 >> 26;
  *(&v41 + 1) = v65 ^ 0x3CB;
  *&v41 = v65 ^ 0x7B2AA5F7C68C7000;
  v72 = v41 >> 10;
  *&v41 = __ROR8__(v64, 6);
  v73 = (v71 ^ v41 ^ 0x5566DA266D37919ALL) - ((2 * (v71 ^ v41 ^ 0x5566DA266D37919ALL)) & 0x53F2EF3E3800D9E8) - 0x56068860E3FF930CLL;
  v74 = v62 ^ (8 * v62) ^ (v62 >> 39) ^ (v62 << 25);
  v75 = v74 ^ v66;
  *(&v41 + 1) = v75 ^ 0x426AB;
  *&v41 = v74 ^ 0xB0D92EFE0B00000;
  v76 = v41 >> 20;
  LOBYTE(v11) = v11 & 0x2F;
  v77 = ((~v70 & 0x8000000000000000 | v65) ^ 0x7B2AA5F7C68C73CBLL) << v11;
  LOBYTE(v29) = v11 ^ 0x2F;
  *(&v41 + 1) = (v76 << 20) ^ 0x3FFFFF5F2E8;
  *&v41 = ~(v76 << 20);
  v78 = v41 >> 42;
  v79 = v77 << v29;
  *(&v41 + 1) = v78 ^ 0xAE34E;
  *&v41 = v78 ^ (v76 >> 22) ^ 0x1B804CD367000000;
  v80 = v48 ^ (v48 << 23) ^ (v48 >> 7) ^ ((v48 >> 41) | (v48 << 57));
  v81 = v75 ^ v64 ^ v73;
  v82 = v65 ^ (v65 >> 17) ^ v72 ^ v79;
  v83 = v70 ^ v80 ^ (v69 - ((2 * v69) & 0x1FA93EA000000000) - 0x702B60A83F0971BELL);
  v84 = (((v41 >> 22) - ((2 * (v41 >> 22)) & 0x37CC48E60FBE6876) - 0x6419DB8CF820CBC5) ^ 0xB06B1C1D06E674B0) & (v81 ^ 0xFB426CEBB1502CCALL) ^ v83;
  v85 = (v82 ^ 0x84D5679D6B886F72) & (v80 ^ 0x90985E88D3F965C9) ^ v81;
  v86 = v82 ^ v80 ^ (v83 ^ 0x3141AC40C4CAAA33) & (v75 ^ 0xB0D92EFE0B426ABLL);
  v87 = v84 ^ v75 ^ (v82 ^ 0x7B2A98629477908DLL) & (v81 ^ 0x4BD93144EAFD335);
  v88 = (v82 ^ v80 ^ 0x144D3915B8710ABBLL) & (v83 ^ 0x7DD31393CDC150BDLL);
  v89 = (v82 ^ v80) & 0xB36D402CF6F40571;
  v90 = v82 ^ 0x87AF30AAF072E14FLL ^ v85;
  v91 = v89 ^ 0x104D0004B0700031 ^ v88;
  v92 = (v90 | v91) - ((2 * (v90 | v91)) & 0xF675D443E4964AECLL);
  v93 = (v91 & v90) - 0x5E590CBAC1C34E33 - ((2 * (v91 & v90)) & 0x434DE68A7C79639ALL);
  v94 = v92 - 0x4C515DE0DB4DA8ALL;
  v95 = (0x4C515DE0DB4DA89 - v92) & 0x20000000000000 | 0x528C71ADD432E287;
  if ((~v93 & 0x20000000000000) != 0)
  {
    v95 = 0xA518E35BA865C50ELL - v95;
  }

  *(&v97 + 1) = ~v85;
  *&v97 = v85 ^ 0xAF47D75AC1325DDALL;
  v96 = v97 >> 1;
  v98 = ((v93 ^ 0xA1A6F3453E3CB1CDLL) - 0x528C71ADD432E287 + v95) ^ v94 & 0xFFDFFFFFFFFFFFFFLL;
  v99 = v87 ^ (v87 >> 61) ^ 0x5B3235190FAB77B9;
  v100 = (((8 * v87) ^ 0xD991A8C87D5BBDD8) - ((2 * ((8 * v87) ^ 0xD991A8C87D5BBDD8)) & 0x5DB8A2E4BCFC9900) + 0x2EDC51725E7E4C82) ^ 0x2EDC51725E7E4C82;
  v101 = v86 ^ v84;
  *(&v97 + 1) = v86 ^ v84 ^ 0x57FA4;
  *&v97 = v86 ^ v84 ^ 0xF6F27B246CE00000;
  v102 = v97 >> 19;
  v103 = v96 ^ v85;
  v104 = (v85 >> 6) ^ 0x2BD1F5D6B04C977;
  if ((v84 & 0x8F4A90E7CAABFAE3) == 0x8E0A10A70A2150C0)
  {
    v105 = 0;
  }

  else
  {
    v105 = v103 ^ 0xAF47D75AC1325DDBLL;
  }

  v106 = v104 ^ v105 | v103 ^ 0xAF47D75AC1325DDBLL;
  v107 = v100 + v99;
  v108 = v100 & v99;
  *(&v110 + 1) = v98 ^ 0x176;
  *&v110 = v98 ^ 0xFB1AEA21F24B2400;
  v109 = v110 >> 10;
  if (v10)
  {
    v111 = v84 ^ 0xE2BF4231D4947500;
  }

  else
  {
    v111 = 0;
  }

  v112 = v86 ^ 0xB062DC6BA5320700 | v111 & (v84 ^ 0x1D40BDCE2B6B8A80);
  v113 = v98 ^ __ROR8__(v98, 17) ^ v109;
  v114 = (v107 - 2 * v108) ^ __ROR8__(v87, 39);
  *(&v115 + 1) = v86 ^ 0x2D;
  *&v115 = v112;
  v116 = v86 ^ __ROR8__(v86, 41) ^ (v115 >> 7);
  v117 = v106 ^ ((v103 ^ 0x347D75AC1325DDBLL) & v104 | (v85 << 58));
  v118 = v114 ^ v117;
  *(&v115 + 1) = v113 ^ v116 ^ 0x210;
  *&v115 = v113 ^ v116 ^ 0xEC11D2C4B4B1E800;
  v119 = v115 >> 10;
  v120 = v101 ^ __ROR8__(v101, 28) ^ v102 ^ v116;
  *(&v115 + 1) = v120 ^ 0x44033028FBA1;
  *&v115 = v120 ^ 0xBD15800000000000;
  v121 = v115 >> 47;
  *(&v115 + 1) = v119 ^ 0x5ED33FF57672FLL;
  *&v115 = v119 ^ 0xDCC0000000000000;
  v122 = (v115 >> 54) - ((2 * (v115 >> 54)) & 0x5CD1488F6CF6E0E4) - 0x51975BB849848F8ELL;
  *(&v115 + 1) = v121 ^ 0xF1FB;
  *&v115 = v121 ^ 0xEB9076130BDE0000;
  v123 = (v115 >> 17) - ((2 * (v115 >> 17)) & 0x8C3554DDA7F89016) - 0x39E555912C03B7F5;
  v124 = (v114 ^ 0xCDE0A91089499B95) & (v117 ^ 0x6C00000000000000) ^ v123;
  v125 = (v113 ^ 0x69A197AC875BDC53) & (v114 ^ v117 ^ 0xA1E0A91089499B95) ^ v114;
  v126 = (v122 ^ 0xB9DC6BBAEBE7CF01) & (v113 ^ 0x965E685378A423ACLL) ^ v118;
  v127 = ((v122 ^ 0x46239445141830FELL) & (v123 ^ 0xBEE75FA6E8F5CDE4)) - ((2 * ((v122 ^ 0x46239445141830FELL) & (v123 ^ 0xBEE75FA6E8F5CDE4))) & 0xDBCA3976D7C2BCEELL) - 0x121AE344941EA189;
  v128 = v122 ^ (v123 ^ 0x4118A059170A321BLL) & (v114 ^ 0x321F56EF76B6646ALL);
  v129 = (v124 & 0x80000000 | ((((v124 & 0x80000000) >> 31) & 1) << 32) | 0x7D7575B65DFAFFDBLL) ^ 0x100000000;
  v130 = ((v125 ^ 0x321F56EF00000000) & (v129 - 0x7D7575B6DDFAFFDBLL)) == 0;
  v131 = v125 ^ 0xB508137F027CC6D1;
  v132 = v129 - 0x440100009020445ALL;
  v133 = 0xB6E9EB6D2BD5BB5CLL - v129;
  if (v130)
  {
    v133 = v132;
  }

  v134 = v128 ^ 0x2804EE6E604E1C00;
  v135 = v131 - 0x397475B64DDABB81 + v133 - ((2 * (v131 - 0x397475B64DDABB81 + v133)) & 0x752ED2CB1973048ELL) - 0x4568969A73467DB9;
  v136 = v128 ^ 0x2804EE6E604E1C00 ^ v12;
  v137 = v126 ^ v113 ^ v127;
  *(&v138 + 1) = v135 ^ ((v124 & 0x7FFFFFFF ^ 0x68F5CDE4) - ((2 * (v124 & 0x7FFFFFFF ^ 0x68F5CDE4)) & 0x1973048E) - 1933999545);
  *&v138 = v124 ^ 0x47036C300000000 ^ v135;
  v139 = (v138 >> 32) ^ 0x91BF186E00000000;
  *(&v138 + 1) = DWORD1(v138) ^ 0x5A89E80u;
  *&v138 = v139;
  v140 = (v138 >> 32) - ((2 * (v138 >> 32)) & 0xE8CFE37A35F8CD0CLL);
  *(&v138 + 1) = v128 ^ v124 ^ 0x5CFE2;
  *&v138 = v128 ^ v124 ^ 0xAD2E53D39DC00000;
  v141 = v138 >> 19;
  v142 = (v128 ^ 0x46239445141830FELL) + 1;
  *&v138 = __ROR8__(v128 ^ v124, 28);
  v143 = ((v141 ^ v138 ^ 0xDC5CFE2AD2E53D39) - ((2 * (v141 ^ v138 ^ 0xDC5CFE2AD2E53D39)) & 0x6473F76B4B14BA04) - 0x4DC6044A5A75A2FELL) ^ v128 ^ v124;
  *(&v138 + 1) = (v140 - 0xB980E42E503997ALL) ^ 0x11CF6F3D8B437EE8;
  *&v138 = 0xB980E42E5039979 - v140;
  v144 = (((((v136 ^ 0x9F25B19729A37006) - v18) ^ v142) - ((2 * (((v136 ^ 0x9F25B19729A37006) - v18) ^ v142)) & 0x23B10BA91753A602) - 0x6E277A2B74562CFFLL) ^ v134) + (v136 ^ 0x9F25B19729A37006);
  v145 = (v140 - 0xB980E42E503997ALL) ^ __ROR8__(v140 - 0xB980E42E503997ALL, 39) ^ (v138 >> 61);
  *(&v138 + 1) = v126;
  *&v138 = v126 ^ 0x682E9320E958A3CLL;
  v146 = ((v126 << 58) ^ 0xF000000000000000) - ((2 * ((v126 << 58) ^ 0xF000000000000000)) & 0xDFFFFFFFFFFFFFFFLL) + 0x6E1EEF078E998F8BLL;
  v147 = v126 ^ (v126 >> 6) ^ (v138 >> 1);
  *(&v138 + 1) = v137 ^ 0x3BE;
  *&v138 = v137 ^ 0x85813373A2AC3800;
  v148 = v137 ^ __ROR8__(v137, 17) ^ (v138 >> 10);
  v149 = ((v147 ^ 0xF9671D69395023EBLL) + 1) ^ v147 ^ ((v146 ^ 0x6E1EEF078E998F8BLL) - (v147 ^ 0x68860D914836539FLL ^ v146));
  v150 = v144 - ((2 * v144) & 0xE3588040633D80C6) - 0xE53BFDFCE613F9DLL;
  *(&v138 + 1) = (v144 - ((2 * v144) & 0x633D80C6) + 832487523) ^ v136 ^ 0x6A;
  *&v138 = v150 ^ v136 ^ 0xE43096D6AD86E200;
  v151 = v150 ^ v136 ^ __ROR8__(v150 ^ v136, 41) ^ (v138 >> 7);
  v152 = (v151 ^ 0x8F6655A798F4FA21) & (v148 ^ 0x67A18E4CC4EA1517);
  v153 = (v146 ^ 0x68860D914836539FLL ^ v149) + 2 * ((v149 ^ 0x400000000000000) & (v146 ^ 0x6E1EEF078E998F8BLL)) - ((2 * ((v146 ^ 0x68860D914836539FLL ^ v149) + 2 * ((v149 ^ 0x400000000000000) & (v146 ^ 0x6E1EEF078E998F8BLL)))) & 0x904CBDE94849EE14) - 0x37D9A10B5BDB08F6;
  v154 = v145 ^ 0x46BC609EF2EF83EFLL;
  v155 = v143 ^ v151;
  v156 = (v143 ^ v151 ^ 0x6F8E023E5F44973ELL) & (v145 ^ 0x8AD9E9C05AA0E036);
  v157 = v151 ^ v148;
  v158 = v157 ^ 0xC98E6A6FAD53337ELL;
  v159 = (((2 * (v157 ^ 0xC98E6A6FAD53337ELL)) ^ 0x42936309E29BB891) + (v157 ^ 0x17382414A3E110C9)) & (v155 ^ 0x9071FDC1A0BB68C1);
  v160 = (v153 ^ 0xC8265EF4A424F70ALL) & (v145 ^ 0x7526163FA55F1FC9) ^ v155;
  v161 = v153 ^ v145 ^ 0x46BC609EF2EF83EFLL;
  v162 = v152 ^ v161;
  v163 = (((v161 ^ 0xFBBC2855F3946B2CLL) & (v148 ^ 0x985E71B33B15EAE8)) - ((2 * ((v161 ^ 0xFBBC2855F3946B2CLL) & (v148 ^ 0x985E71B33B15EAE8))) & 0x98CB12BD509EC7B2) - 0x339A76A157B09C27) ^ v154;
  v164 = v156 ^ v158;
  v165 = v159 + (v148 ^ 0x985E71B33B15EAE8) - 2 * (v159 & (v148 ^ 0x185E71B33B15EAE8));
  v166 = v163 - ((2 * v163) & 0xAAA003CC09AF5ABELL) + 0x555001E604D7AD5FLL;
  *(&v138 + 1) = v162 ^ 0x53;
  *&v138 = v162 ^ 0x443D7AA0C6B9480;
  v167 = v138 >> 7;
  v168 = v165 - ((2 * v165) & 0xBCD807D27D9E5E68) + 0x5E6C03E93ECF2F34;
  v169 = ((v168 ^ 0x5E6C03E93ECF2F34) >> (v126 & 7 ^ 4) >> (v126 & 7 ^ 3)) - ((2 * ((v168 ^ 0x5E6C03E93ECF2F34) >> (v126 & 7 ^ 4) >> (v126 & 7 ^ 3))) & 0x1AE2D965263BF7ACLL) + 0xD716CB2931DFBD6;
  v170 = v169 ^ (((v168 << 57) ^ 0x6800000000000000) - ((2 * ((v168 << 57) ^ 0x6800000000000000)) & 0x1800000000000000) + 0xD716CB2931DFBD6);
  *(&v138 + 1) = v167 ^ 0x4951FEC3C7 ^ v169;
  *&v138 = v167 ^ 0x8DD4380000000000 ^ (v170 - ((2 * v170) & 0xA47CCB82CEFC8BFALL) - 0x2DC19A3E9881BA03);
  v171 = v138 >> 42;
  *(&v138 + 1) = v171 ^ 0x218254;
  *&v138 = v171 ^ 0x121655C368800000;
  v172 = (v138 >> 22) - ((2 * (v138 >> 22)) & 0x87969A946941B9CLL) - 0x7BC34B2B5CB5F232;
  v173 = (v172 ^ 0x235E49CFA1D006CLL) << (v26 & 7 ^ 1u) << (v26 & 7 ^ 6u);
  v174 = (v173 - ((2 * v173) & 0x3F859B2B1BF5DECALL) - 0x603D326A7205109BLL) & 0x2000000 | ((v173 - ((2 * v173) & 0x3F859B2B1BF5DECALL) - 0x603D326A7205109BLL) ^ 0x603D326A7005109ALL) & ((v172 >> 57) ^ 0xFFFFFFFFFDFFFFFELL);
  v175 = v162 ^ (v162 >> 1);
  *(&v138 + 1) = v175 ^ 0x346A83E8FLL;
  *&v138 = v175 ^ 0xFF98921C00000000;
  v176 = v138 >> 34;
  v177 = v166 ^ v160 ^ (8 * (v166 ^ v160)) ^ ((v166 ^ v160) >> 39) ^ ((v166 ^ v160) >> 61) ^ ((v166 ^ v160) << 25);
  *(&v138 + 1) = v176 ^ (v162 << 29) ^ 0x3B95E07C;
  *&v138 = v176 ^ 0xA318978BC0000000;
  v178 = v138 >> 30;
  v179 = (((v164 ^ v160) >> 28) ^ ((v164 ^ v160) >> 19) | ((v164 ^ v160) << 45)) ^ ((v164 ^ v160) << 36) ^ 0xE4B2FAC7D76EC030;
  *(&v138 + 1) = v174 ^ 0x2D5801436CE8F052;
  *&v138 = v174 ^ 0x2D5801436EE8F052;
  v180 = v138 >> 10;
  *&v138 = v174 ^ 0xD2A7FEBC93170FADLL;
  v181 = (v138 >> 17) ^ v174 ^ 0xD2A7FEBC93170FADLL ^ v180;
  v182 = v162 >> 6;
  v183 = ((v178 ^ (v162 << 58) ^ 0xD400000000000000) - 2 * ((v178 ^ (v162 << 58)) & 0x85B9DAFF5DEF27DLL ^ v178 & 8) - 0x77A462500A210D8BLL) ^ (v162 >> 6) ^ v177;
  v184 = v183 ^ 0x8AF021DFA3CDCD26;
  v185 = (v181 ^ 0x2306FDECB23BFB0) & (v183 ^ 0xF991077184E2A538) ^ (v183 ^ 0x8AF021DFA3CDCD26) & 0xFDCFEFDEC923BEB0;
  *(&v138 + 1) = v164 ^ 2;
  *&v138 = v164 ^ 0x939069ECDDAB8C00;
  v186 = (v138 >> 7) ^ __ROR8__(v164, 41);
  v187 = v186 ^ v164;
  v188 = v186 ^ v160 ^ (v179 - ((2 * v179) & 0xEA49078C80D48638) - 0xADB7C39BF95BCE4);
  v189 = v177 ^ 0x93887E2D5591E1DELL ^ v185;
  v190 = v185 ^ 0x7141268E01232810;
  v191 = v177 ^ 0x6D80D97B79ECB1F7 ^ (((v190 - v189) ^ ((v177 ^ 0x1D36A75CAB4D3631) + 1)) - ((2 * ((v190 - v189) ^ ((v177 ^ 0x1D36A75CAB4D3631) + 1))) & 0x1E9303B05ABCF072) - 0x70B67E27D2A187C7);
  v192 = (v183 ^ 0x66EF88E7B1D5AC7) & (v177 ^ 0x1D36A75CAB4D3631);
  v193 = v177 ^ 0xE2C958A354B2C9CELL;
  v194 = (v181 ^ v187 ^ 0x65FEC3D5211DBAC9) & (v188 ^ 0xF3D50304E935FC40);
  if (v252)
  {
    v195 = v177 ^ 0xE2C958A354B2C9CELL;
  }

  else
  {
    v195 = -1;
  }

  v196 = (v188 ^ 0xF3D50304E935FC40 ^ v195) & v193;
  v197 = (v181 ^ 0x7FFFFDFFFEFFLL) & (v187 ^ 0x65FEBC2ADCE24436) ^ v184;
  v198 = v192 ^ v188;
  v199 = v181 ^ v187 ^ v196;
  v200 = (v191 + v190 - ((2 * (v191 + v190)) & 0x33214E4BD818261CLL) + 0x1990A725EC0C130ELL) ^ v198;
  v201 = v199 ^ v198;
  v202 = ((v201 << 36) ^ 0x661BE5A000000000) - ((2 * ((v201 << 36) ^ 0x661BE5A000000000)) & 0x63296FE000000000);
  *(&v203 + 1) = v201 ^ 0x1BE5A;
  *&v203 = v201 ^ 0x9760B42486600000;
  v204 = v201 ^ (v201 >> 28) ^ (v203 >> 19);
  v205 = v204 ^ 0x26F403D356F5AB06;
  v204 ^= 0x9760B42DF06AFC12;
  v202 -= 0x4E6B48015960A8ECLL;
  v206 = (v204 - (v205 ^ v202)) ^ ((v202 ^ 0x4E6B48015960A8EBLL) + 1);
  v207 = ((v197 ^ 0x8C9ED951D8D097E1) - (v197 ^ 0x73615951DAD096E1 ^ v194 ^ v181)) ^ ((v194 ^ v181 ^ 0x7FFFFDFFFEFFLL) + 1);
  v208 = (v194 ^ v181 ^ 0xC3D44885D0B1EF05 ^ (v207 - ((2 * v207) & 0x7857910BA563DC0ALL) + 0x3C2BC885D2B1EE05)) + (v197 ^ 0x8C9ED951D8D097E1);
  v209 = ((v206 - ((2 * v206) & 0x63296FFD4D3EAE28) - 0x4E6B48015960A8ECLL) ^ v202) + v204;
  *(&v203 + 1) = ~v197;
  *&v203 = v197 ^ 0xBCE25D1F0763A562;
  v210 = v203 >> 1;
  *(&v203 + 1) = ((v194 ^ v181 ^ 0xD0B1EF05 ^ (v207 - ((2 * v207) & 0xA563DC0A) - 760091131)) + (v197 ^ 0xD8D097E1)) ^ 0x3D3;
  *&v203 = v208 ^ 0x7FA5B5DD665B1800;
  v211 = v203 >> 10;
  v212 = ((v199 ^ 0xBFC1F19F49EE5FFLL) - (v199 ^ 0xBEBE727C777D834 ^ (v199 >> 7))) ^ (((v199 >> 7) ^ 0xFFE807C1CC16C234) + 1);
  *(&v203 + 1) = v200 ^ 0x10AB8FD2891315CBLL;
  *&v203 = v200;
  v213 = ((v203 >> 61) ^ v200) & 0xFF7FFFFFFFFFFFFFLL ^ (v200 << 25) ^ (((v203 >> 61) ^ v200) & 0x80000000000000 | (v200 >> 39));
  v214 = v197 ^ (v197 >> 6) ^ v210 ^ ((v197 ^ 0xBCE25D1F0763A563) << (v182 & 0x3A ^ 0x12) << (v182 & 0x3A ^ 0x28));
  v215 = ((v199 >> 41) | (~v199 << 57)) ^ (v199 << 23) ^ (((v199 >> 7) ^ 0x537C516CECE1B979 ^ (v212 - ((2 * v212) & 0xA6D752A5BE110964) + 0x536BA952DF0884B2)) + (v199 ^ 0xBFC1F19F49EE5FFLL));
  v216 = v213 ^ 0xDA42FE437FFB0CCALL ^ v214;
  v217 = v208 ^ __ROR8__(v208, 17) ^ v211;
  v218 = (((v216 ^ 0x2E157C2EE4489A17) & (v217 ^ 0xF24C0A0FBCB5A8FELL)) - ((2 * ((v216 ^ 0x2E157C2EE4489A17) & (v217 ^ 0xF24C0A0FBCB5A8FELL))) & 0xDFF6AF74C1929C3CLL) + 0x6FFB57BA60C94E1ELL) ^ v213 ^ 0xDA42FE437FFB0CCALL;
  v219 = v217 ^ 0xCC04C03C7835B61 ^ v215;
  v220 = (v213 ^ 0x4A465606E0CDBD2BLL) & (v214 ^ 0xBE11D46B7B7E2BF6) ^ v209 ^ v215;
  v221 = (v213 ^ 0xB5B9A9F91F3242D4) & (v209 ^ v215 ^ 0x7305B08D007A01F0) ^ v219;
  v222 = (((v219 ^ 0x8D89F6817B4CF26FLL) & (v209 ^ v215 ^ 0x8CFA4F72FF85FE0FLL)) - ((2 * ((v219 ^ 0x8D89F6817B4CF26FLL) & (v209 ^ v215 ^ 0x8CFA4F72FF85FE0FLL))) & 0xFD188C18F66DE73ELL) - 0x173B9F384C90C61) ^ v217 ^ 0xCC04C03C7835B61;
  v223 = v220 >> 52;
  *(&v203 + 1) = (v220 >> 52) ^ 0x670;
  *&v203 = (v220 << 12) ^ 0x259F3487BF52E000;
  v224 = (v218 - ((2 * v218) & 0x563DE04E40843AAELL) + 0x2B1EF02720421D57) ^ v220;
  v225 = ((v203 >> 12) - ((2 * (v203 >> 12)) & 0x474181309B3578B0) - 0x5C5F3F67B26543A8) ^ v221;
  v226 = v225 ^ 0xD1D6C9E6C929B1C8;
  v227 = v216 ^ (v217 ^ 0xDB3F5F0434A5701) & (v215 ^ 0x8CFA4F72FF85FE0FLL);
  v228 = v225 ^ 0x25DD144A871C0504 ^ ((((v225 ^ 0xD1D6C9E6C929B1C8) >> 19) ^ 0x12BD55C01FE0) - 2 * ((((v225 ^ 0xD1D6C9E6C929B1C8) >> 19) ^ 0x12BD55C01FE0) & 0x13ACB132733BLL ^ ((v225 ^ 0xD1D6C9E6C929B1C8) >> 19) & 9) + 0x61E173ACB1327332);
  v229 = ((((v225 ^ 0xD1D6C9E6C929B1C8) << 45) ^ 0xF8FFC00000000000) - ((2 * (((v225 ^ 0xD1D6C9E6C929B1C8) << 45) ^ 0xF8FFC00000000000)) & 0x7A5C400000000000) - 0x42D1C322426EF9EBLL) ^ 0xBD2E3CDDBD910615;
  v230 = v229 & (v225 ^ 0x443C67E6362E7636);
  v231 = v228 | v229;
  v232 = ((8 * v224) ^ 0x61BBC6B8284440A0) - 2 * (((8 * v224) ^ 0x61BBC6B8284440A0) & 0x521DE60D74C017D8 ^ (8 * v224) & 0x18) - 0x2DE219F28B3FE83ALL;
  v233 = (v230 & 0xFFFFFFF000000000 | (v226 >> 28)) ^ v231;
  v234 = (v222 - ((2 * v222) & 0x1D4A531BB1A8F8FELL) - 0x715AD672272B8381) ^ v227;
  v235 = v232 & 0x89E7E0474C3D0F00 ^ (v224 ^ (v224 >> 61)) & 0x89E7E0474C3D0F04 | v232 & 0x76181FB8B3C2F0F8 ^ (v224 ^ (v224 >> 61)) & 0x76181FB8B3C2F0FBLL;
  v236 = v233 ^ (v226 << 36);
  v237 = v234 ^ (v234 >> 17);
  v238 = v237 ^ 0x46CC5A65178FB2A1;
  v239 = v237 ^ 0xB42CDE86107B01BALL;
  LOBYTE(v237) = BYTE3(v233) ^ 0x5E;
  v6[230] = v233 ^ 0xF;
  v240 = ((v234 << 54) ^ 0x28C0000000000000) - ((2 * ((v234 << 54) ^ 0x28C0000000000000)) & 0xE580000000000000) - 0xD1F7B1CF80B4CE5;
  v241 = (v239 - (v238 ^ v240)) ^ ((v240 ^ 0xD1F7B1CF80B4CE4) + 1);
  v242 = (v227 >> 6) ^ (v227 >> 1) ^ (v227 << 58) ^ ((v150 ^ 0xF1AC4020319EC063) + (~v227 << 63)) ^ 0x7343B0071E48DC69;
  v243 = v227 ^ v150 ^ (v242 - ((2 * v242) & 0xE3588040633D80C6) - 0xE53BFDFCE613F9DLL);
  v6[201] = (v236 ^ 0xF07C7FE95EAAE00FLL) >> (v148 & 8 ^ 8) >> (v148 & 8);
  v6[154] = BYTE4(v236) ^ 0xE9;
  v244 = v235 ^ (v224 >> 39);
  v245 = v244 ^ (v224 << 25);
  v6[273] = v237;
  v6[109] = BYTE5(v236) ^ 0x7F;
  v6[270] = HIBYTE(v236) ^ 0xF0;
  v6[96] = BYTE6(v236) ^ 0x7C;
  v6[221] = (v236 ^ 0xF07C7FE95EAAE00FLL) >> (v57 & 0x10) >> (v57 & 0x10 ^ 0x10);
  LODWORD(v237) = *(v30 + (((v244 ^ 0x27) - 25) ^ 0x5CLL));
  v6[177] = BYTE3(v245) ^ 0x59;
  v246 = v221 ^ (v221 << 23) ^ (v221 >> 7);
  v6[357] = BYTE2(v244) ^ 0x50;
  v6[245] = BYTE1(v244) ^ 0xF1;
  v6[258] = ((v237 >> 3) | (32 * v237)) ^ 6;
  LODWORD(v230) = *(v22 + (((BYTE4(v245) ^ 0xCA) + 54) ^ 0xFLL));
  v6[356] = BYTE5(v245) ^ 0x8F;
  DWORD1(v203) = v230 ^ 2;
  LODWORD(v203) = (v230 ^ (16 * v230) ^ 0xBBBBBBBB) << 24;
  v6[219] = v203 >> 26;
  LODWORD(v237) = *(v22 + (((BYTE6(v245) ^ 0x20) + 54) ^ 0xFLL));
  DWORD1(v203) = v237 ^ 0xA;
  LODWORD(v203) = ~v237 << 24;
  LODWORD(v230) = ((((((16 * v237) ^ 0x55) & 0xF0) >> (~v23 & 5)) >> (5 - (~v23 & 5u))) | (~v237 << 7)) ^ (v203 >> 29);
  v6[72] = (~v243 | 0x3F) & (v243 ^ 0xD5);
  v6[401] = HIBYTE(v245) ^ 0x30;
  DWORD1(v203) = v230 ^ 6;
  LODWORD(v203) = (v230 ^ 0x28) << 24;
  LODWORD(v230) = v203 >> 27;
  DWORD1(v203) = v230 ^ 1;
  LODWORD(v203) = (v230 ^ 0xFFFFFFC7) << 24;
  v6[66] = v203 >> 26;
  LODWORD(v230) = *(v32 + ((BYTE1(v243) - 83) ^ 0x13));
  v6[170] = BYTE4(v243) ^ 0x16;
  v6[276] = BYTE3(v243) ^ 0x88;
  v6[55] = BYTE6(v243) ^ 0xE0;
  DWORD1(v203) = v230 + 78;
  LODWORD(v203) = (v230 << 24) - 838860800;
  v247 = (((v241 - ((2 * v241) & 0xE5C109C60FE96636) - 0xD1F7B1CF80B4CE5) ^ v240) + v239) ^ (v234 >> 10);
  v248 = v247 ^ (v234 << 47);
  v6[403] = (v203 >> 31) ^ 0x74;
  v6[316] = BYTE2(v243) ^ 0xD7;
  v6[210] = BYTE5(v243) ^ 0x63;
  LODWORD(v244) = *(v67 + (HIBYTE(v243) ^ 0x99));
  v6[95] = BYTE1(v247) ^ 0x8C;
  LODWORD(v240) = v244 - ((2 * v244) & 0xFFFFFFA6);
  LODWORD(v230) = (1249129 - (v247 ^ 0x240783A3)) ^ ((v247 ^ 0xDBEB7335) + 1);
  v6[412] = v247 ^ 0xCA;
  v6[229] = HIBYTE(v248) ^ 0x94;
  v6[48] = BYTE5(v248) ^ 0x8B;
  v6[289] = BYTE2(v247) ^ 0x14;
  result = 38;
  DWORD1(v203) = (v240 - 1) ^ 2;
  LODWORD(v203) = ((v240 - 45) ^ (8 * v244) ^ 0xFFFFFFC7) << 24;
  v6[135] = BYTE6(v248) ^ 0x7C;
  v6[199] = v203 >> 26;
  v6[228] = (((v221 ^ (v221 >> 7) ^ (v221 >> 41)) & 0x7E ^ 0x26) + (v221 ^ (v221 >> 7) ^ (v221 >> 41) ^ 0x59)) & (v221 ^ (v221 >> 7) ^ (v221 >> 41) ^ 0x27);
  v6[299] = BYTE4(v246) ^ 0xAC;
  v6[241] = BYTE5(v246) ^ 0x79;
  v6[362] = (v248 ^ 0x947C8B2124148CCALL) >> (v223 & 0x20) >> (v223 & 0x20 ^ 0x20);
  v6[203] = ((v246 ^ ((v221 >> 41) | (v221 << 57))) >> 56) ^ 0x34;
  v6[61] = ((v246 ^ (v221 >> 41)) >> 16) ^ 0x13;
  v6[106] = ((v221 ^ (v221 >> 7) ^ (v221 >> 41)) >> 8) ^ 0x6F;
  v6[176] = ((v221 ^ (v221 << 23) ^ (v221 >> 7)) >> 24) ^ 0xAC;
  v6[150] = ((v247 ^ 0xD7CC38F4 ^ (v230 - ((2 * v230) & 0xE7B1687C) - 203901890)) + 1249129) >> 24;
  v6[54] = BYTE6(v246) ^ 0xBB;
  *(v251 + 24) = v36 + 1;
  *(v250 + 8) = v236 ^ 0x1CB10233EB6CBD1FLL;
  return result;
}

void sub_244A7760C(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 24) + 715682041 * (((a1 | 0x8155C0F4) - (a1 | 0x7EAA3F0B) + 2125086475) ^ 0x74133BA6);
  v3 = (*a1 ^ &v2 ^ 0xD4F8080126ABCF73) + 2 * ((*a1 ^ 0x54F8080126ABCF70) & &v2);
  v2 = ((2 * v3) & 0x2E73F492) + ((488429787 - (v3 & 0x148A4849)) & 0x148A4849) + ((1135830824 - (v3 & 0xA1512294)) & 0xA1512294) + (((v3 & 0x4A249522) + 304650820) & ((v1 ^ 0x479) + 1243910314));
  __asm { BRAA            X14, X17 }
}

uint64_t sub_244A77978(uint64_t a1)
{
  v6 = *(a1 + 16);
  v7 = *(v1 + 8 * (v3 ^ 0x964));
  v8 = *(v1 + 8 * (v3 - 1706));
  v9 = *v7;
  v10 = *(v8 + 4 * v9);
  v11 = ((v2 + v4) ^ v4) + ((v2 + v4) ^ v4) * v10;
  if (v2 == ((v3 - 2105) & 0xFFFFFFFE))
  {
    v12 = *(v8 + 4 * v9);
  }

  else
  {
    v12 = 0;
  }

  *(v8 + 4 * v9) = (v11 + v12) * v10;
  *v7 = (v9 + 1) % ((v3 - 1450521506) & 0x56752B69 ^ 7u);
  return (*(v5 + 8 * ((7 * (v6 != 0)) ^ v3)))();
}

uint64_t sub_244A77BBC@<X0>(uint64_t a1@<X8>)
{
  v5 = ((2 * v4) & 0x18) + (v4 ^ 0x3AFF5F7F6BFBFDADLL) + a1 - 0x3AFF5F7F6BFBFDADLL;
  v6 = (((*v5 - ((2 * *v5) & 0x72)) << 24) - 1191182336) ^ 0xB9000000;
  v7 = *(((2 * v4) & 0x18) + (v4 ^ 0x3AFF5F7F6BFBFDADLL) + a1 - 0x3AFF5F7F6BFBFDACLL);
  v8 = (((v7 - ((2 * v7) & 0xDDDDDDDD)) << 16) + 1122893824) ^ 0x42EE0000;
  v9 = (v8 - ((2 * v8) & 0x373E0000) + 463407057) ^ 0x1B9F07D1 | (v6 - ((2 * v6) & 0x94000000) - 891795044) ^ 0xCAD8499C;
  v10 = *(((2 * v4) & 0x18) + (v4 ^ 0x3AFF5F7F6BFBFDADLL) + a1 - 0x3AFF5F7F6BFBFDABLL);
  v11 = (((v10 - ((2 * v10) & 0x16E) + 5418702) << 8) - 5888) ^ 0x52AEB700;
  v12 = (v9 - ((2 * v9) & 0xA20FC24A) + 1359470885) ^ 0x5107E125 | ((v11 + 121000587 + (~(2 * v11) | 0xF1935BFF)) | 1) ^ 0x736528B;
  LODWORD(v5) = *(((2 * v4) & 0x18) + (v4 ^ 0x3AFF5F7F6BFBFDADLL) + a1 - 0x3AFF5F7F6BFBFDAALL);
  LODWORD(v5) = (v12 - ((2 * v12) & 0x39D6E702) - 1662291071) ^ 0x9CEB7381 | (v5 - ((2 * v5) & 0x4C) + 37327398) ^ 0x2399226;
  v13 = ((v4 | (32 * (v5 - ((2 * v5) & 0x1C4C2FD2) + 237377513))) ^ 0xC4C2FD20) + 1855354931;
  v14 = v13 < 0x6E96782F;
  v15 = v13 > v1 + 189499056;
  if ((v1 + 189499056) < 0x6E96782F != v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  return (*(v2 + 8 * (v3 ^ 0x16A7 ^ ((2 * v16) | (8 * v16)))))();
}

uint64_t sub_244A77DCC()
{
  v4 = ((v1 + 286727735) | (((v1 + 286727735) < 0x11171E33) << 32)) + 148851963;
  v6 = v4 < 0x19F66B2A || v4 > (v0 - 1665855871) + 435579690;
  return (*(v2 + 8 * ((v3 | 0x1590) ^ ((2 * v6) | (32 * v6)))))();
}

uint64_t sub_244A77E40@<X0>(int a1@<W1>, int a2@<W2>, int a3@<W3>, int a4@<W4>, int a5@<W5>, int a6@<W6>, int a7@<W7>, uint64_t a8@<X8>)
{
  v20 = (v10 + 0x6D90D9BBFE5F1B14 + a8 - 0x6D90D9BC0F763947);
  v21 = (v18 + ((*v20 - ((2 * *v20) & 0x72)) << 24) - 872415232) ^ v17;
  v22 = (((v20[1] - ((2 * v20[1]) & 0xDDDD)) << 16) + 1122893824) ^ 0x42EE0000;
  v23 = (v22 + a7 - ((2 * v22) & 0x373E0000)) ^ a7 | (v21 + a5 - (v19 & (2 * v21))) ^ a5;
  v24 = (((v20[2] + a6 - ((2 * v20[2]) & 0x16E)) << 8) - 5888) ^ a1;
  v25 = (((v23 + v13 - (a4 & (2 * v23))) ^ v13 | (a2 + v24 - (a3 & (2 * v24))) ^ a2) + v9 - ((2 * ((v23 + v13 - (a4 & (2 * v23))) ^ v13 | (a2 + v24 - (a3 & (2 * v24))) ^ a2)) & 0x39D6E702)) ^ v9 | (v20[3] + v11 - ((2 * v20[3]) & 0x4C)) ^ v11;
  LODWORD(v20) = (v12 - 951263265 - ((2 * v16 - 573455454) & 0x8E99BFBE) + 8) ^ 0xC74CDFDF;
  v26 = ((2 * (((v25 + 237377513 - ((2 * v25) & 0x1C4C2FD2)) ^ 0xE2617E9) + v20)) & 0x5D36DEDE) + ((((v25 + 237377513 - ((2 * v25) & 0x1C4C2FD2)) ^ 0xE2617E9) + v20) ^ 0x2E9B6F6F) - 568256503;
  v27 = v8 - 1452173959;
  v28 = (v27 < 0xCBC86F8) ^ (v26 < 0xCBC86F8);
  v29 = v26 > v27;
  if (v28)
  {
    v29 = v26 < 0xCBC86F8;
  }

  return (*(v14 + 8 * ((386 * v29) ^ (v15 | 0x22F8))))();
}

uint64_t sub_244A7802C@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, unsigned int a8, uint64_t a9, uint64_t a10, unint64_t a11, int a12)
{
  v19 = (v15 ^ 0xE5D8481F) + 526757866 + ((2 * v15) & 0xD7FCBFEC ^ 0x144C2FC0);
  v20 = 1659165839 * (((&a5 | 0xE57745D) - (&a5 & 0xE57745D)) ^ 0x15236AD2);
  LODWORD(a11) = v12 - v20 - 1906944715;
  HIDWORD(a11) = v14 + v20;
  a7 = v16 - v20 + 955905621;
  a8 = 89981164 - v20;
  a5 = v18 - v20 + 8372;
  a6 = v19 ^ v20;
  a10 = a1;
  HIDWORD(a9) = v20 - 781938543 + v13;
  (*(v17 + 8 * (v18 ^ 0x5A16)))(&a5);
  v21 = 399162391 * (&a5 ^ 0xE426DE7B8256F2C7);
  a12 = v18 - 238484459 - v21 - 17;
  a11 = a9 ^ v21;
  LODWORD(a10) = v18 - 238484459 - v21;
  a7 = v21 + 910896317 + v18;
  a8 = v21 + v18 - 238484459 - 1009;
  a5 = -399162391 * (&a5 ^ 0x8256F2C7);
  a9 = v21 ^ 0x487C94D4;
  v22 = (*(v17 + 8 * (v18 + 23003)))(&a5);
  return (*(v17 + 8 * a6))(v22);
}

uint64_t sub_244A781C4()
{
  v7 = *(v5 + 32);
  v8 = (v4 ^ 0xE2617E9) + ((v0 + v6) ^ 0xB7836B2A) + (((v2 - (v0 + v6)) | (v0 + v6 - v2)) >= 0) + 1;
  *(v7 - 0x79B0837E92812339) = (v8 ^ 0x6FEEF7BB7DFFDA7FLL) - 0x10C262060050000 + ((2 * v8) & 0xFBFFB4FELL);
  *(v7 - 0x79B0837E92812331) = v3 + 0x44D59A3D66E6129BLL;
  return (*(v1 + 8 * (v0 + v6 - 1216118312)))(v5);
}

void sub_244A78338(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *a1 - 867706601 * (((a1 | 0x32B662B2) - (a1 & 0x32B662B2)) ^ 0x36AF58D9);
  v3 = v2 + (*(a1 + 16) | 0xDD801A17218E1F17) - (~*(a1 + 16) | 0x227FE5E8DE71E0E8) + ((~*(a1 + 16) << ((v1 - 77) ^ 0x5Eu)) & 0x44FFCBD1BCE3C1D0);
  v2[0] = v3 + 888339599;
  __asm { BRAA            X6, X17 }
}

uint64_t sub_244A786A4@<X0>(int a1@<W8>)
{
  v7 = *(v5 + 4);
  v8 = (v4 ^ v1) + 2 * (v4 & v1);
  v9 = v8 ^ v1;
  v10 = *(v2 + 8 * (v3 - 8352));
  v11 = *(v2 + 8 * (v3 - 8302));
  v12 = *v10;
  if (v8 == v1)
  {
    v13 = *(v11 + 4 * v12);
  }

  else
  {
    v13 = 0;
  }

  *(v11 + 4 * v12) *= v13 + (*(v11 + 4 * v12) + ((v3 - 1274200848) & 0x4BF2E7B6 ^ 0x46A5)) * v9;
  *v10 = (v12 + 1) % 6u;
  return (*(v6 + 8 * ((1017 * ((v7 + a1 - 120004638) < 4)) ^ v3)))();
}

uint64_t sub_244A78870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, unint64_t a12, int a13, unsigned int a14, uint64_t a15, int a16, int a17, uint64_t a18)
{
  v24 = 715682041 * (((&a12 | 0xC5495FAD) - (&a12 & 0xC5495FAD)) ^ 0x300FA4FF);
  a12 = &a10 ^ 0xD4F8080126ABCF73;
  a16 = v23 - v24 - 3780;
  a13 = v18 - v24 + 1188245941 + v23 + v19;
  a14 = 2114407590 - v24;
  a15 = v21;
  a18 = v22;
  v25 = (*(v20 + 8 * (v23 + 19298)))(&a12);
  return (*(v20 + 8 * ((6723 * (a17 == ((v23 + 892282890) & 0x4AD0EB34) + 1216115408)) ^ v23)))(v25);
}

uint64_t sub_244A789C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, int a12, int a13, unint64_t a14, int a15, uint64_t a16, unint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  v28 = 810199703 * ((~&a12 & 0x15E29D63A768EA86 | &a12 & 0xEA1D629C58971579) ^ 0x1E374AD541E1FC0BLL);
  a14 = v28 + v23 - 0x43ED4EA42C6C81DALL - (((v23 << (((v27 + 39) ^ 0xE8u) - 3)) - 0x73F3DEC7D0DCCD3ELL) & 0xEC19417F7803C98ALL);
  a16 = v24;
  a17 = &a10 ^ 0x854B31859C8D3808;
  a20 = v28 ^ 0x5E;
  a15 = v27 - v28 + 1788890910;
  a13 = v28 + 1814116683 * v20 - 463208183;
  a18 = v22;
  a19 = (v25 - (((v25 << ((v27 + 39) & 0xBF ^ 0xADu)) + 0x2D646F0EF7EE3EE6) & 0x68355B72EBC1735ALL) + 0xACCE540F1D7D920) ^ v28;
  v29 = (*(v21 + 8 * (v27 ^ 0x54C5)))(&a12);
  return (*(v21 + 8 * ((6723 * (a12 == v26)) ^ v27)))(v29);
}

uint64_t sub_244A78B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, int a12, int a13, unint64_t a14, int a15, uint64_t a16, unint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  v28 = 810199703 * (&a12 ^ 0xBD5D7B6E689168DLL);
  a13 = v28 + 1814116683 * v20 + ((v27 + 4927) ^ 0xE464230D);
  a14 = v28 + v23 - 0x43ED4EA42C6C81DALL - ((2 * v23 - 0x73F3DEC7D0DCCD3ELL) & 0xEC19417F7803C98ALL);
  a16 = v24;
  a17 = &a10 ^ 0x854B31859C8D3808;
  a20 = v28 ^ 0x5D;
  a18 = v22;
  a19 = (v25 - ((2 * v25 + 0x2D646F0EF7EE3EE6) & 0x68355B72EBC1735ALL) + 0xACCE540F1D7D920) ^ v28;
  a15 = v27 - v28 + 1788890910;
  v29 = (*(v21 + 8 * (v27 ^ 0x54C5)))(&a12);
  return (*(v21 + 8 * ((6723 * (a12 == v26)) ^ v27)))(v29);
}

uint64_t sub_244A78CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, unint64_t a12, unsigned int a13, unsigned int a14, uint64_t a15, int a16, int a17, uint64_t a18)
{
  v24 = v19 ^ 0x4308;
  v25 = 715682041 * (((&a12 | 0x7E8673B1) - &a12 + (&a12 & 0x81798C48)) ^ 0x8BC088E3);
  a16 = v24 - v25 - 3780;
  a15 = v21;
  a18 = v22;
  a13 = v18 - v25 + ((v24 + 22055619) | 0x14000624) + ((v24 + 169911424) & 0xF5DF6EBE ^ 0x46D313B1);
  a14 = 2114407591 - v25;
  a12 = &a10 ^ 0xD4F8080126ABCF73;
  v26 = (*(v20 + 8 * (v24 ^ 0x54E2)))(&a12);
  return (*(v20 + 8 * ((6723 * (a17 == v23)) ^ v24)))(v26);
}

uint64_t sub_244A78DC8()
{
  *(v4 - 0x79B0837E92812369) = (*v2 ^ 0x7FE4E2BB) - 815809025 + ((((v6 + 356514216) | 0x108400) ^ (v0 + 3571)) & (2 * *v2));
  *(v4 - 0x79B0837E92812361) = v5;
  *(v4 - 0x79B0837E92812359) = v3;
  return (*(v1 + 8 * v6))();
}

void sub_244A78E9C(uint64_t a1)
{
  v1 = 426870883 * ((((2 * a1) | 0xCC9944BE) - a1 + 431185313) ^ 0x2365DF68);
  v2 = *(a1 + 16) + v1;
  v3 = *a1 - v1;
  if (*(a1 + 8))
  {
    v4 = v3 == 172871735;
  }

  else
  {
    v4 = 0;
  }

  v5 = !v4;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_244A78F9C()
{
  v3 = 1649972239 * ((2 * ((v2 - 136) & 0x5812D12A742B7D70) - (v2 - 136) - 0x5812D12A742B7D74) ^ 0xC6F910CE506CAEF4);
  *(v2 - 112) = *(v1 + 8 * v0) - v3;
  *(v2 - 104) = &STACK[0x73677CA6E94FE56B];
  *(v2 - 136) = v3 - 721055101 + v0;
  *(v2 - 128) = &STACK[0x7569E2FC767C5E75];
  v4 = (*(v1 + 8 * (v0 + 21930)))(v2 - 136);
  return (*(v1 + 8 * (v0 ^ 0x2913 ^ (7630 * (*(v2 - 120) == v0 + 10515 + (v0 ^ 0xB00) + 1216108649)))))(v4);
}

void sub_244A7C718()
{
  v0 = MEMORY[0x28223BE20]();
  v1 = *v0 ^ (1459227061 * ((-2 - ((v0 | 0x5B6CD975) + (~v0 | 0xA493268A))) ^ 0xAEAB0C43));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_244A7C8A0()
{
  v3 = *(v0 - 0x118F82CC174639F5);
  STACK[0x28D0] = v3;
  v4 = *(v0 - 0x118F82CC174639EDLL);
  v5 = *(v0 - 0x118F82CC174639E5);
  STACK[0x28F8] = *(v0 - 0x118F82CC174639C5);
  if (v3)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v8 = v6 || v4 != -256949580;
  return (*(v2 + 8 * ((v8 * (v1 - 2766 + (v1 ^ 0x1CEB) - 21564)) ^ v1)))();
}

uint64_t sub_244A7CCE4()
{
  STACK[0x2850] = *(v0 - 0x118F82CC174639DDLL);
  STACK[0x2848] = *(v0 - 0x118F82CC174639D5);
  LODWORD(STACK[0x2840]) = *(v0 - 0x118F82CC174639CDLL);
  return (*(v2 + 8 * (v1 - 17701)))();
}

uint64_t sub_244A7CE10()
{
  v2 = *(v1 + 8 * (v0 + 5656));
  LODWORD(STACK[0x2608]) = 295728306;
  LODWORD(STACK[0x25FC]) = 1;
  return v2();
}

uint64_t sub_244A7CE44()
{
  LODWORD(STACK[0x260C]) = 1057597496;
  LODWORD(STACK[0x2608]) = 295728946;
  return (*(v3 + 8 * ((((((2 * v2) ^ 0x3FF6) + 665691106) & 0xD8524F3E ^ 0x4420) * (v0 < v1 + 4)) ^ v2)))();
}

uint64_t sub_244A7CEA4()
{
  v2 = *(v1 + 8 * (v0 - 11423));
  LODWORD(STACK[0x25FC]) = 1;
  return v2();
}

uint64_t sub_244A7CF04()
{
  LODWORD(STACK[0x25FC]) = 0;
  v2 = *(v1 + 8 * (v0 - 11423));
  LODWORD(STACK[0x2608]) = 295728306;
  LODWORD(STACK[0x260C]) = 1057597512;
  return v2();
}

uint64_t sub_244A7CF70()
{
  LODWORD(STACK[0x25FC]) = 0;
  v2 = *(v1 + 8 * (v0 - 8129));
  LODWORD(STACK[0x2608]) = 295729074;
  LODWORD(STACK[0x260C]) = 1057597512;
  return v2();
}

uint64_t sub_244A7CFAC()
{
  LODWORD(STACK[0x25FC]) = 0;
  LODWORD(STACK[0x2608]) = 295728946;
  v2 = *(v1 + 8 * ((((v0 + 1751407092) & 0x6198D4FB ^ 0x7EB1) * (v0 < 0x8519E6A7)) ^ (v0 - 906172394)));
  LODWORD(STACK[0x260C]) = 1057597512;
  return v2();
}

uint64_t sub_244A7D01C()
{
  v3 = *(v2 + 8 * ((11650 * (v0 == ((v1 + 9470) ^ 0x7E2D) + 1610951797)) ^ v1));
  LODWORD(STACK[0x2608]) = 295729074;
  LODWORD(STACK[0x25FC]) = 1;
  return v3();
}

uint64_t sub_244A7D070@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x2870]) = v1 - 5794;
  LODWORD(STACK[0x2868]) = v1 - 14810;
  v3 = ((a1 << (v1 + 23)) & 0xADD5EBDE) + (a1 ^ 0x56EAE2FF ^ (v1 - 14810));
  LODWORD(STACK[0x2860]) = v3 - 1082819585;
  LODWORD(STACK[0x28A4]) = v3 - 1082819585;
  LODWORD(STACK[0x2858]) = v3;
  v4 = (*(v2 + 8 * (v1 + 2267)))(v3 - 1458238959);
  STACK[0x28E8] = v4;
  STACK[0x2878] = v4;
  return (*(v2 + 8 * ((2 * (v4 == 0)) | (16 * (v4 == 0)) | LODWORD(STACK[0x2870]))))();
}

uint64_t sub_244A7D1D8(int a1, int a2)
{
  v10 = v5 < v4;
  v11 = v3 + a2 - 527;
  v12 = *(**v9 + v11);
  *(v2 + v11) = v12 - ((2 * v12) & 0x8F) + 71;
  if (v10 == a2 + v7 < v4)
  {
    v10 = a2 + v7 < v5;
  }

  return (*(v8 + 8 * ((v10 * a1) ^ v6)))();
}

uint64_t sub_244A7D244()
{
  v3 = *(*v2 + 24);
  LODWORD(STACK[0x2870]) = v0 - 17459;
  v4 = v3 - 256949004 - ((v3 << ((v0 - 51) ^ 0xC8)) & 0xE15E89E8);
  LODWORD(STACK[0x28C4]) = v4;
  LODWORD(STACK[0x2860]) = v0 - 6920;
  LODWORD(STACK[0x2868]) = v4;
  v5 = *(v1 + 8 * (v0 ^ 0x1439));
  STACK[0x2838] = v4 ^ (v0 - 256968968);
  v6 = v5();
  STACK[0x2830] = v6 + 0x5BF2E1F5580CD66FLL;
  STACK[0x2918] = v6 + 0x5BF2E1F5580CD66FLL;
  return (*(v1 + 8 * ((1015 * (v6 == 0)) ^ v0)))();
}

uint64_t sub_244A7D3E0@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v9 = *(*(*v8 + 16) + (v4 + v3));
  *(a1 + (v4 + v3)) = v9 + (v6 | ~(v9 << v5)) + 72;
  return (*(v7 + 8 * ((15 * (v4 == v2)) ^ a2)))();
}

uint64_t sub_244A7D428()
{
  v3 = *(*v2 + 40) - ((*(*v2 + 40) << ((v0 ^ 0x1B) - 14)) & 0x2340ED64) + 295728818;
  LODWORD(STACK[0x2920]) = v3;
  v4 = (*(v1 + 8 * (v0 ^ 0x56D1)))(v3 ^ 0x11A076B2u);
  STACK[0x2908] = v4;
  return (*(v1 + 8 * ((14 * (v4 != 0)) ^ v0)))();
}

uint64_t sub_244A7D558@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v12 = *(*(*v11 + 32) + (v9 + v5));
  *(a1 + (v9 + v5)) = v12 - ((2 * v12) & 0x8F) + 71;
  return (*(v10 + 8 * (((v7 & ~(((v9 - v2) | (v2 - v9)) >> ((v3 | v4) + v6))) * v8) ^ a2)))();
}

uint64_t sub_244A7D5B0()
{
  v3 = ((2 * *(*(v2 + 16) + 8)) & 0xFFEFDCBA) + (*(*(v2 + 16) + 8) ^ 0xFFF7EE5D);
  LODWORD(STACK[0x28CC]) = v3 + 1040186347;
  v4 = (*(v1 + 8 * (v0 ^ 0x6A2F)))(v3 + 528803);
  STACK[0x28A8] = v4;
  return (*(v1 + 8 * ((2034 * (v4 != 0)) ^ v0)))();
}

uint64_t sub_244A7D6E0(uint64_t a1, int a2, int a3)
{
  v13 = v6 < v4;
  v14 = *(**(v12 + 16) + (a3 + v8));
  *(a1 + (a3 + v8)) = (v14 ^ v9) + (v10 & (2 * v14)) - 64;
  v15 = (((v3 + 923) | v7) ^ a2) + a3;
  v16 = v13 ^ (v15 < v4);
  v17 = v15 < v6;
  if (!v16)
  {
    v13 = v17;
  }

  return (*(v11 + 8 * (!v13 | v5)))();
}

uint64_t sub_244A7D850@<X0>(int a1@<W8>)
{
  v3 = v1 + LODWORD(STACK[0x260C]) + ((a1 + 1214334840) & 0xB79E9AE0) - 71362713;
  v5 = v3 > ((4 * a1) ^ 0xB9435D01) && LODWORD(STACK[0x260C]) + 2050628613 > v3;
  return (*(v2 + 8 * ((27 * v5) ^ a1)))();
}

uint64_t sub_244A7D8C8()
{
  v3 = (v0 + 1115380713) / (LODWORD(STACK[0x260C]) - 1057597464) * (LODWORD(STACK[0x260C]) - 1057597464) + 375419374;
  LODWORD(STACK[0x2924]) = v3;
  v4 = (*(v2 + 8 * (v1 + 20773)))(v3 + (v1 ^ 0xE99F86B2));
  STACK[0x2890] = v4 + 0x4E180AB76DEB82A1;
  return (*(v2 + 8 * (((((((v1 + 88) ^ (v4 == 0)) & 1) == 0) << 7) | ((((v1 + 88) ^ ~(v4 == 0)) & 1) << 8)) ^ v1)))();
}

uint64_t sub_244A7D980()
{
  v4 = (*(v3 + 8 * ((v0 ^ 0x2055) + 12496)))(v1);
  STACK[0x2898] = v4 + 0x6434497BACB1A4A1;
  return (*(v3 + 8 * (v0 ^ 0x2055 | (2 * (v2 & ~((2087 * (v0 ^ 0x8A3)) ^ 0x398D ^ (v4 == 0)))))))();
}

uint64_t sub_244A7D9F0()
{
  v3 = (*(v2 + 8 * (v0 + 16720)))(v1);
  STACK[0x28B8] = v3;
  return (*(v2 + 8 * (((v3 == 0) * (((2 * v0) ^ 0x1112) + (v0 ^ 0xFFFFC69C))) ^ v0)))();
}

uint64_t sub_244A7DA3C()
{
  v3 = v0 ^ 0x4A86;
  v4 = (*(v2 + 8 * (v3 ^ 0xB36)))(v1);
  STACK[0x28E0] = v4 + 0x4DBF7CD8CD2951E1;
  return (*(v2 + 8 * (((v4 == 0) * (((v3 - 1370744053) & 0x51B3DAB3) + ((v3 - 12539) ^ 0xFFFF98B1))) ^ v3)))();
}

uint64_t sub_244A7DABC()
{
  v3 = (*(v2 + 8 * (v1 + 4371)))(v0);
  STACK[0x2928] = v3 + 0x39CE2A58EF18D71BLL;
  return (*(v2 + 8 * (((v3 == 0) * (((v1 ^ 0x48B6) + 10600) ^ 0x89B ^ (2174 * (v1 ^ 0x48B6)))) ^ v1)))();
}

uint64_t sub_244A7DB2C()
{
  v2 = *(v1 + 8 * (((((v0 + 498479219) & 0xE249BFFE) - 6599) * **(&off_278E1E490 + (v0 ^ 0x2BDE))) ^ v0));
  STACK[0x2560] = *(&off_278E1E490 + (v0 ^ 0x2D1F)) - 4;
  v3 = *(&off_278E1E490 + v0 - 10029);
  STACK[0x2548] = *(&off_278E1E490 + v0 - 8893);
  v4 = *(&off_278E1E490 + (v0 ^ 0x2F34));
  STACK[0x2600] = v3 - 4;
  STACK[0x2550] = v4 - 4;
  STACK[0x2558] = *(&off_278E1E490 + v0 - 9755);
  return v2();
}

uint64_t sub_244A7DBD4@<X0>(_BYTE *a1@<X8>)
{
  v3 = STACK[0x2600];
  *(*v3 + 56) = 0;
  *(*v3 + 204) = 0;
  v4 = *v3;
  v5 = STACK[0x2548];
  v6 = *STACK[0x2548];
  v7 = STACK[0x2560];
  *(v7 + 187) = 116;
  v4[282] = -73;
  v8 = STACK[0x2558];
  *(v8 + 35) = -6;
  *(v8 + 24) = -46;
  *(v8 + 17) = 45;
  v9 = STACK[0x2550];
  v9[112] = -71;
  v9[53] = -35;
  v4[238] = -66;
  *(v8 + 18) = 54;
  v9[39] = 92;
  *(v6 + 32) = 14397;
  v9[108] = -20;
  v4[200] = -37;
  v4[224] = 104;
  *(v6 + 16) = 7;
  *(v6 + 12) = -35;
  *(v7 + 152) = -39;
  *(v7 + 173) = 86;
  v4[244] = 85;
  *(v6 + 19) = 120;
  v9[37] = -59;
  *(v7 + 46) = -108;
  *(v7 + 131) = 85;
  v9[18] = -54;
  *(v6 + 24) = 105;
  v4[178] = 69;
  *(v8 + 30) = 57;
  *(v7 + 114) = 13;
  *(v8 + 1) = 107;
  *(v8 + 22) = -103;
  v9[77] = -101;
  *(v6 + 9) = -76;
  *(v6 + 15) = -81;
  *(v6 + 26) = -44;
  v4[74] = 22;
  *(v7 + 74) = 84;
  v4[387] = -39;
  *(v8 + 34) = 124;
  v4[235] = -72;
  v10 = *v3;
  v11 = *v5;
  v11[25] = 76;
  *(v7 + 95) = 112;
  v9[41] = -27;
  v9[21] = 8;
  v10[184] = -25;
  v10[359] = -74;
  *(v8 + 12) = 85;
  v9[61] = 109;
  *(v8 + 38) = 1;
  *(v7 + 160) = 46;
  *(v7 + 198) = 104;
  v10[73] = 103;
  v10[250] = 30;
  *(v8 + 13) = 3784;
  v9[9] = 26;
  *(v8 + 46) = -57;
  *(v8 + 29) = 109;
  *(v7 + 44) = 61;
  *(v7 + 102) = -23;
  v9[6] = 99;
  *(v7 + 27) = -13;
  v11[8] = -15;
  v11[13] = -43;
  *(v8 + 41) = -109;
  *(v8 + 15) = -51;
  v11[17] = -71;
  *(v7 + 141) = 102;
  v11[18] = 59;
  *(v8 + 45) = -41;
  *(v7 + 55) = 110;
  v11[10] = 113;
  *(v7 + 43) = 116;
  *(v8 + 33) = 58;
  *(v7 + 220) = -35;
  v11[27] = 126;
  v9[54] = -114;
  v9[74] = 65;
  *v8 = 95;
  v10[185] = 39;
  *(v7 + 32) = 0;
  v12 = *v3;
  v13 = *v5;
  v12[31] = -115;
  v13[11] = -31;
  v12[194] = 91;
  v9[97] = 125;
  *(v7 + 117) = -101;
  v9[16] = 9;
  *(v8 + 2) = 67;
  *(v8 + 20) = -3;
  *(v7 + 75) = -74;
  v9[12] = -19;
  v12[264] = 43;
  *(v8 + 9) = 47;
  v12[247] = -98;
  *(v7 + 192) = -126;
  v12[284] = 47;
  *(v8 + 16) = -117;
  v12[234] = -115;
  v9[40] = 119;
  *(v8 + 36) = -13;
  *(v7 + 140) = -49;
  *(v7 + 80) = 3;
  *(v8 + 25) = 10;
  v9[93] = -53;
  v13[14] = 122;
  v12[313] = 49;
  v12[104] = -70;
  *(v7 + 213) = -37;
  v12[202] = -62;
  v12[75] = 122;
  v9[94] = -61;
  *(v7 + 171) = -91;
  v9[35] = 18;
  v9[72] = 117;
  v9[91] = -104;
  v12[136] = 83;
  *(v7 + 170) = -118;
  *(v7 + 23) = 65;
  *(v7 + 39) = 20;
  *(v8 + 43) = 80;
  v12[98] = 116;
  *a1 = 1;
  STACK[0x2830] = STACK[0x2918];
  LODWORD(STACK[0x2868]) = STACK[0x28C4];
  return (*(v2 + 8 * (v1 + 3997)))();
}

uint64_t sub_244A7DFB4()
{
  v4 = STACK[0x2830] - 0x5BF2E1F5580CD66FLL;
  STACK[0x6DA0] = v3;
  STACK[0x6DA8] = v4;
  LODWORD(STACK[0xE538]) = v2;
  LODWORD(STACK[0xE53C]) = STACK[0x2868];
  v5 = *STACK[0x2600];
  v6 = *(v5 + 56) - ((2 * *(v5 + 56)) & 0x6A20F754) + 890272682;
  v7 = v6 & 0xFFF7FFFF ^ 0xFA5E33FD ^ ((v0 ^ 0xCF4E5189) - (v6 & 0x80000));
  v8 = v7 + (v6 ^ 0xCAEF8455) - 193404319 - ((2 * (v7 + (v6 ^ 0xCAEF8455)) + 6) & 0xE8F1C4C2) + 3;
  HIDWORD(v10) = (v6 >> 10) ^ 0x433;
  LODWORD(v10) = __ROR4__(v6, 10) ^ 0xAD5BF000;
  v9 = v10 >> 12;
  HIDWORD(v10) = v9 ^ 0x6A;
  LODWORD(v10) = v9 ^ 0xFE110C00;
  v11 = v8 ^ v6;
  v12 = (v8 ^ v6 ^ 0xFAA2E40E) - 1003126215 + ((2 * (v8 ^ v6)) & 0x7794FB8E ^ 0x2903382);
  v13 = v8 ^ 0xF478E261;
  v14 = (v12 + (v8 ^ 0xF478E261)) ^ 0xDBCFBE6A;
  v15 = (2 * (v12 + v13)) & 0xB79F7CD4;
  v16 = *(&off_278E1E490 + (v0 ^ 0x1987));
  STACK[0x2810] = *STACK[0x2548];
  v17 = (v12 << 32) - ((v12 << 33) & 0x75B8E63600000000) + 0x3ADC731B77350ED3;
  STACK[0x2818] = v5;
  v18 = v6 ^ 0xD6AF3A12 ^ (v7 + ((v10 >> 10) ^ 0xBF80CEA3) + 3);
  v19 = v7 - ((2 * v7 + 1701893010) & 0x5F210296) + 1648945940;
  v20 = -1435505203 - (v6 ^ 0x35107BAA) - ((-1701893006 - 2 * (v6 ^ 0x35107BAA)) & 0xBA50AF28);
  LODWORD(STACK[0x28C0]) = v6;
  v21 = (v20 ^ 0xF2B8D6DF ^ v19) + 2 * ((v19 ^ 0x2F90814B) & (v20 ^ 0x5D285794));
  v22 = v6 ^ 0x2EFFFAC0 ^ (v21 - ((2 * v21) & 0xC820FD2E) - 468681065);
  HIDWORD(v10) = v11 ^ 0x99C9;
  LODWORD(v10) = v11 ^ 0xC1680000;
  v23 = v10 >> 16;
  HIDWORD(v10) = v23 ^ 0xA29B;
  LODWORD(v10) = v23 ^ 0xBD350000;
  v24 = v15 + v14 + 607142295;
  STACK[0x2870] = v0 ^ 0x875u;
  STACK[0x2860] = v17 & 0x100000000000000;
  v25 = v17 & 0x100000000000000 | 0x68F1E907428C0396;
  STACK[0x2838] = v17 & 0xFEFFFFFF00000000;
  STACK[0x2858] = v25;
  STACK[0x2830] = 0xD1E3D20E8518072CLL - v25;
  STACK[0x2828] = ((v24 + v22 - ((2 * (v24 + v22)) & 0xC77E8370) - 474005064) ^ v18) - ((v24 + ((v10 >> 16) ^ 0x5D6442CA) - ((2 * (v24 + ((v10 >> 16) ^ 0x5D6442CA))) & 0xC77E8370) - 474005064) ^ v18);
  if (v13 <= 1)
  {
    v26 = 1;
  }

  else
  {
    v26 = v13;
  }

  v27 = *(v1 + 8 * v0);
  LODWORD(STACK[0x2820]) = v26 + 657783768;
  LODWORD(STACK[0x2878]) = 657783769;
  STACK[0x2808] = v16;
  STACK[0x2800] = v16 - 12;
  return v27(9544);
}

uint64_t sub_244A7E68C()
{
  v2 = 3 * (v1 ^ 0x11F4);
  LODWORD(STACK[0x2868]) = v2;
  STACK[0x2870] = (v2 + 640321350) & 0xD9D571FB;
  v3 = *(v0 + 8 * (v1 ^ ((LODWORD(STACK[0x2878]) != LODWORD(STACK[0x2820])) | (8 * (LODWORD(STACK[0x2878]) != LODWORD(STACK[0x2820]))))));
  ++LODWORD(STACK[0x2878]);
  return v3();
}

uint64_t sub_244A804D0(uint64_t a1, int a2)
{
  v7 = v3 + a2 + 1;
  v9 = v2 < v7 || (v7 ^ v4) == -256949004;
  return (*(v5 + 8 * (v6 ^ (31 * v9))))();
}

uint64_t sub_244A80A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v10 >> 7;
  v16 = (LODWORD(STACK[0x2868]) - 5586) | 0x1120u;
  v17 = STACK[0x2810];
  v17[33] = HIBYTE(a8) ^ 7;
  v18 = STACK[0x2818];
  v18[224] = (v14 >> (v16 + 81)) ^ 0x35;
  v19 = STACK[0x2550];
  v19[108] = a8 ^ 0x8D;
  v17[15] = BYTE5(a8) ^ 0x90;
  v20 = STACK[0x2558];
  v20[24] = BYTE3(v14) ^ 0xAC;
  v17[32] = BYTE6(v14) ^ 0xE5;
  v18[238] = v14 ^ 0x4A;
  v17[19] = BYTE2(a8) ^ 0x8D;
  v18[244] = HIBYTE(v14) ^ 0x21;
  v20[17] = BYTE2(v14) ^ 0x11;
  v21 = STACK[0x2560];
  v21[173] = a2 ^ 0x43;
  v21[46] = BYTE5(a2) ^ 0xD8;
  v19[53] = BYTE4(v14) ^ 0x93;
  v21[152] = BYTE6(a8) ^ 0x26;
  v19[112] = BYTE5(v14) ^ 0xE2;
  v21[187] = BYTE1(a8) ^ 0xA;
  v19[39] = BYTE4(a2) ^ 0x46;
  v18[282] = BYTE4(a8) ^ 0x4E;
  v18[200] = BYTE3(a8) ^ 0x12;
  v20[35] = BYTE1(a2) ^ 0xAA;
  v17[16] = BYTE3(a2) ^ 0x9B;
  v18[178] = BYTE2(a2) ^ 0x1F;
  v22 = *(STACK[0x2808] + (BYTE6(a2) ^ 0x19));
  v21[114] = BYTE2(v13) ^ 0xD2;
  v23 = ((v22 & 0x14 | (8 * ((v22 & 4) != 0))) - 4 * (v22 & 4) + 4) | v22 & 0xEB ^ 0x29;
  v24 = v23 - ((2 * v23) & 0xE4) - 14;
  v17[26] = BYTE3(v13) ^ 0x4A;
  v20[22] = BYTE1(v13) ^ 0x53;
  v19[77] = HIBYTE(v12) ^ 0x16;
  v18[74] = v13 ^ 0x23;
  v19[18] = BYTE4(v13) ^ 0xE;
  v21[131] = -69 * (v24 ^ 0xD9 ^ (8 * (v24 ^ 0x12) * (v24 ^ 0x12) - ((16 * (v24 ^ 0x12) * (v24 ^ 0x12)) & 0xE0) - 14));
  v25 = *(STACK[0x2800] + (((BYTE5(v8) ^ 0x3A) + 59) ^ 0x88) + 279);
  v26 = 119 - ((v25 >> 1) & 0x47 ^ 2);
  v19[37] = v9 ^ 0xA5;
  HIDWORD(v27) = v26 ^ v25 ^ 0x6A;
  LODWORD(v27) = (v26 ^ ~v25) << 24;
  v20[1] = BYTE6(v8) ^ 0xD5;
  v20[18] = HIBYTE(v8) ^ 0x6A;
  v28 = (v15 & 0xD7 ^ 0xAD) - (v15 ^ 0x8D) - ((2 * ((v15 & 0xD7 ^ 0xAD) - (v15 ^ 0x8D))) & 0xF7) - 5;
  v20[30] = BYTE2(v9) ^ 0xA4;
  v21[74] = BYTE6(v9) ^ 0xC;
  v17[9] = v27 >> 31;
  v18[387] = BYTE4(v9) ^ 0xA0;
  v20[34] = HIBYTE(v9) ^ 1;
  v17[24] = BYTE3(v9) ^ 0x90;
  v17[12] = BYTE1(v9) ^ 0xFE;
  v18[235] = (v9 ^ 0x10CF1A090A4FEA5uLL) >> (v28 ^ 0xFBu) >> (v28 ^ 0xD3u);
  v29 = STACK[0x2600];
  *(*v29 + 56) = (LODWORD(STACK[0x28C0]) ^ 0x35107BAA) + 1;
  v30 = *v29;
  v31 = *(*v29 + 204) + 890272682 - ((2 * *(*v29 + 204)) & 0x6A20F754);
  v32 = *STACK[0x2548];
  v33 = STACK[0x2868];
  v34 = *(&off_278E1E490 + LODWORD(STACK[0x2868]) - 5796);
  v35 = -35 * v19[21] - ((-70 * v19[21]) & 0xEF) + 119;
  STACK[0x2800] = v34 + 791;
  v36 = *(v32 + 27);
  v37 = ((v20[12] >> 1) | (v20[12] << 7)) ^ 0x63;
  v38 = (*(v32 + 18) | (v19[61] << 8)) | ((((2 * (*(v34 + 791 + (v35 ^ 0xB5)) ^ v35)) & 0x26 ^ 6) + (*(v34 + 791 + (v35 ^ 0xB5)) ^ v35 ^ 0xD4)) << 16) | (v20[14] << 24) | (*(v30 + 359) << 32);
  v39 = v38 - 0x71357923E0C969D0 - ((2 * v38) & 0x1D950DB83E6D2C78) + 12;
  v40 = (*v20 << 56) - ((*v20 << 57) & 0x2222222222222222) + 0x110C90F2CA93522CLL;
  STACK[0x2858] = v34 + 533;
  *(&v42 + 1) = v39 ^ 0xC;
  *&v42 = v39 ^ 0x8ECA86DC1F369630;
  v41 = v42 >> 4;
  *(&v42 + 1) = v41 ^ (((*(v34 + 533 + v37) ^ (*(v34 + 533 + v37) >> 2) & 0x33 ^ 0x77) + 81) << 36) ^ 0x1EE5C97B7C944D3;
  *&v42 = v41 ^ 0x7000000000000000;
  v43 = v42 >> 60;
  *(&v42 + 1) = v43 ^ 0xEE5C97B7C944D37;
  *&v42 = v43 ^ 0x1000000000000000;
  v44 = v42 >> 60;
  *(&v42 + 1) = v44 ^ 0xE;
  *&v42 = v44 ^ ((v36 << 52) | 0xB00805981A778910);
  v45 = (v42 >> 4) - ((2 * (v42 >> 4)) & 0x9B3EC911B883B4E0) - 0x32609B7723BE2590;
  v46 = 2 * ((v45 ^ 0x268684C014262220) & (v40 ^ 0xCCA0E1CFCAD201ELL) ^ v45 & 0x1DC69EEE363E7232);
  STACK[0x2878] = v34 + 275;
  LODWORD(STACK[0x28C0]) = v31;
  STACK[0x2808] = v32;
  STACK[0x2810] = v30;
  STACK[0x27F8] = v34 - 12;
  LODWORD(v37) = ((4 * v31) ^ 0xD441EEAA) - ((4 * v31) ^ 0xD441EEA8);
  v47 = ((v31 ^ 0x35107BAAu) << 32) - (((v31 ^ 0x35107BAAu) << 33) & 0xB49CB52600000000) - 0x25B1A56CE3996B82;
  STACK[0x2830] = v47;
  STACK[0x2828] = v47 ^ 0xDA4E5A931C66947ELL;
  v48 = *(v11 + 8 * v33);
  STACK[0x2868] = v16;
  LODWORD(STACK[0x2838]) = v37;
  LODWORD(STACK[0x2818]) = v37 - 418015433;
  LODWORD(STACK[0x2870]) = 1948365754;
  return v48((v40 ^ 0x379374239775F0CDLL ^ v45) + (v46 ^ 0x90D0980284C4440) + (v46 ^ 0xF6F2F67FD7B3BBBFLL) + 1 - ((2 * ((v40 ^ 0x379374239775F0CDLL ^ v45) + (v46 ^ 0x90D0980284C4440) + (v46 ^ 0xF6F2F67FD7B3BBBFLL) + 1)) & 0x62A2E7744CB4F0F8) - 0x4EAE8C45D9A58784);
}

uint64_t sub_244A81418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x2860]) = LODWORD(STACK[0x2838]) > 0x18EA68C8;
  LODWORD(STACK[0x2820]) = v11 ^ 0x1D18;
  v13 = (v11 ^ 0x1D18u) - 5497;
  v14 = STACK[0x2828] - (STACK[0x2830] ^ a1 ^ 0x6B1F29293A3CEC02);
  v15 = a7 ^ 0x628A8F3A05958110 ^ v8;
  v16 = (((v14 ^ ((a1 ^ 0x4EAE8C45D9A58783) + 1)) - 0x4EAE8C45D9A58784 - ((2 * (v14 ^ ((a1 ^ 0x4EAE8C45D9A58783) + 1))) & 0x62A2E7744CB4F0F8)) ^ a1) + STACK[0x2828];
  v17 = v12 ^ a7 ^ 0x628A8F3A05958110;
  v18 = v16 ^ v9;
  STACK[0x2868] = v13;
  v19 = (v13 + 0x7D36A8732CED0C5CLL) ^ v18;
  v20 = v19 ^ a8;
  v21 = (v17 ^ 0x2550E4BFD7D25798) & (v15 ^ 0xE0180E8162C700F2) ^ v12;
  v22 = (v12 ^ 0x48ACC0D6B92457FDLL) & (a7 ^ 0x53CABD5C7FA4CAE1) ^ v12 & 0x5CBC160F14C74B94;
  v23 = (v20 ^ 0x3470A8010ECCBFD4) & (v18 ^ 0x439E3970345FD64) ^ v15;
  v24 = (v20 ^ 0xCB8F57FEF133402BLL) & (v12 ^ 0xC34D5870417E3AB5);
  v25 = (2 * (v21 & 0x40000000)) ^ 0x80000000 | v21 & 0x40000000;
  v26 = v23 ^ v19;
  v27 = (v24 & 0x20000000 ^ 0x1FBFFF7CFDFFB6FFLL) + 2 * (v24 & 0x20000000);
  v28 = ((v27 - 0x1FBFFF7CFDFFB6FFLL) & (v23 ^ v19 ^ 0x66E8BA9AA0000000)) == 0;
  v29 = (v20 ^ 0x3470A8010ECCBFD4) + (v22 ^ 0x48AC000610044394);
  v30 = (v29 ^ 0x9C98DFFEC3FEAF7DLL) - 2 * ((v20 ^ 0x3470A8010ECCBFD4) & (v22 ^ 0x48AC000610044394)) + ((2 * v29) & 0x3931BFFD87FD5EFALL) + 0x636720013C015083;
  v31 = v30 - 0x2F091FB5DE12ACE1 - ((2 * v30) & 0xA1EDC09443DAA63ELL);
  v32 = v15 & 0x713A144228346758 ^ v17 ^ (v18 ^ 0x8AFC082AD48E65C3) & (v15 ^ 0x1FE7F17E9D38FF0DLL) ^ 0xCB8D0B02201DCF6FLL;
  v33 = v32 - ((2 * v32) & 0x2A6D8329A7A16FD0);
  v34 = v27 - 0x83024F9412412;
  v35 = v24 & 0xFFFFFFFFDFFFFFFFLL ^ v20 & 0x741E675907A592B7;
  v36 = 0x3F77CED502BE49ECLL - v27;
  if (v28)
  {
    v36 = v34;
  }

  v37 = v33 - 0x6AC93E6B2C2F4818;
  v38 = v23 ^ (v33 - 0x6AC93E6B2C2F4818);
  v39 = v35 ^ ((v26 ^ 0x76257337BD493828) - 0x1FB7CF5804BE92EDLL + v36);
  v40 = 0x627915453FECDB8DLL - v25;
  if (((v31 ^ 0xD0F6E04A00000000) & (v25 - 0x40000000)) == 0)
  {
    v40 = v25 + 0x62791544BFECDB8DLL;
  }

  v41 = ((((v31 ^ 0xD0F6E04A21ED531FLL) - 0x62791544FFECDB8DLL + v40) ^ 0x90CE6F3D4B08492ALL) + (v21 & 0x8000000000000000) + 0x8000000000000000) ^ v21 & 0x7FFFFFFFBFFFFFFFLL;
  v42 = *(STACK[0x2858] + (((v39 >> 54) & 0x80 | (v39 >> 62)) ^ 0x62));
  v43 = ((v38 >> 19) ^ (v38 >> 28) | (v38 << 45)) ^ (v38 << 36) ^ 0x19335837D0165C4CLL;
  v44 = v43 - ((2 * v43) & 0x3FBDEFEE35AC5B64) + 0x1FDEF7F71AD62DB2;
  LODWORD(v43) = (v42 >> 2) & 0x33;
  *(&v46 + 1) = v39 ^ 0x5801210023;
  *&v46 = v39 ^ 0x400E470000000000;
  v45 = v46 >> 39;
  v47 = (v31 >> 6) | (v29 << 63);
  *(&v46 + 1) = v41 ^ 0x1A802;
  *&v46 = v41 ^ 0x37533F2906DA0000;
  v48 = v39 ^ ((((v43 ^ 0xA4 ^ ((((v42 ^ 0x34) - (v42 ^ 0x35 ^ v43)) ^ ((v43 ^ 0xFE) + 1)) - ((2 * (((v42 ^ 0x34) - (v42 ^ 0x35 ^ v43)) ^ ((v43 ^ 0xFE) + 1))) & 0x4A) - 91)) + (v42 ^ 0x34)) ^ 0x42) + 81) ^ (8 * v39) ^ v45;
  v49 = v48 ^ 0x195D747B25B9A53ALL;
  v50 = (v37 << 57) ^ (v37 << 23) ^ (v37 ^ (v37 >> 7)) & 0xB4E1EC3B5A285A91 ^ ((v37 ^ (v37 >> 7)) & 0x4B1E13C4A5D7A56ELL ^ (v37 >> 41) & 0x57A56E | (v37 >> 41) & 0x285A91);
  v51 = v41 ^ __ROR8__(v41, 10) ^ (v46 >> 17);
  v52 = v51 ^ 0xB41D4666FEE647ADLL;
  v53 = v38 ^ v50 ^ v44;
  v54 = v31 ^ (v31 << 58) ^ (v31 >> 1) ^ v47;
  v55 = v48 ^ 0x195D747B25B9A53ALL ^ v54;
  LOBYTE(v41) = v22 & 0x2D;
  v56 = v22 & 0x2D ^ 4;
  v57 = v51 ^ 0xB41D4666FEE647ADLL ^ v50;
  v58 = (v48 ^ 0x407C7D980829013BLL) & (v53 ^ 0xEE107F30DF9070AFLL);
  v59 = (v48 ^ 0xBF838267F7D6FEC4) & (v54 ^ 0x535B159BEF79E915) ^ v53;
  v60 = v59 ^ 0x98388F13533FFD73 ^ (((v51 ^ 0x37DEEBE6CC9A1EE8) & (v55 ^ 0xF585E3873D16B2EBLL)) - ((2 * ((v51 ^ 0x37DEEBE6CC9A1EE8) & (v55 ^ 0xF585E3873D16B2EBLL))) & 0x13AE1FB8E6A0E446) - 0x7628F0238CAF8DDDLL);
  v61 = (v51 ^ 0xC82114193365E117) & (v50 ^ 0x90C08F76FFBBEA5CLL) ^ v55;
  v62 = ((2 * v59) & 0x451F33EB76F28FCLL ^ 0xFFAEFEE1FFB0F75FLL) + (v59 ^ 0x11EF80CF206F8F50);
  v63 = v62 - ((2 * v62 + 0x451F33EB76F28FELL) & 0x2D1AC571DDD16128) + 0x18B65C584AA04513;
  v64 = (v60 - ((2 * v60) & 0xB24213C65B214802) + 0x592109E32D90A401) ^ v49;
  v65 = v57 ^ v58;
  v66 = v61 ^ v52 ^ (((v57 ^ 0xECFCDD0932384CE6) & (v53 ^ 0x11EF80CF206F8F50)) - ((2 * ((v57 ^ 0xECFCDD0932384CE6) & (v53 ^ 0x11EF80CF206F8F50))) & 0x7875B0064F8B28ALL) - 0x7C3C527FCD83A6BBLL);
  v67 = ((v65 ^ 0x130322F6CDC7B319) - (v65 ^ 0x58E404E232F038DLL ^ v63)) ^ ((v63 ^ 0xE9729D4711174F6BLL) + 1);
  v68 = ((v67 - ((2 * v67) & 0x2D1AC571DDD16128) + 0x168D62B8EEE8B094) ^ v63) + (v65 ^ 0x130322F6CDC7B319);
  v69 = v68 + 0x7D0ADFE89B154789 - ((2 * v68) & 0xFA15BFD1362A8F12);
  *(&v46 + 1) = v69 ^ 0xB154789;
  *&v46 = v69 ^ 0x7D0ADFE890000000;
  v70 = (v46 >> 28) ^ (v69 >> 19) ^ ((v69 ^ 0x7D0ADFE89B154789) << v56 << (v41 ^ 0x29u)) ^ 0xFA15BFD1362;
  *(&v46 + 1) = v64 ^ 0x1130D1EEE9078C52;
  *&v46 = v64 ^ 0x6000000000000000;
  v71 = v46 >> 61;
  *(&v46 + 1) = ~v61;
  *&v46 = v61 ^ 0x67FA638A0ED5DFD6;
  v72 = v46 >> 1;
  *(&v46 + 1) = v66 ^ 0x3D8;
  *&v46 = v66 ^ 0x6F8CBC3196253800;
  v73 = v61 ^ __ROR8__(v61, 6) ^ v72;
  v74 = v66 ^ __ROR8__(v66, 17) ^ (v46 >> 10);
  v75 = v74 ^ 0x7719F5583832E5BLL;
  v76 = v64 ^ __ROR8__(v64, 39) ^ v71;
  v77 = (v65 >> 7) ^ (v65 << 23) ^ (v65 >> 41) ^ (v65 << 57) ^ 0x35194A16A715FBFBLL;
  v78 = (v77 - ((2 * v77) & 0xD63D849AA7E7AC68) + 0x6B1EC24D53F3D634) ^ v65;
  v79 = v69 ^ v78 ^ (v70 + 0x7D0ADFE89B154789 - ((2 * v70) & 0xFA15BFD1362A8F12));
  v80 = v76 ^ 0xF9C6D9BC5AFE2044 ^ v73;
  v81 = v74 ^ 0x7719F5583832E5BLL ^ v78;
  v82 = (v80 ^ 0x10BE72B1CE0ABAE2) & (v74 ^ 0x72608BF7C83DF0CALL);
  v83 = v80 ^ 0x90BE72B1CE0ABAE2 | v74 ^ 0xF2608BF7C83DF0CALL;
  v84 = v76 & 0x7E07D3762F610AB0 ^ (v76 ^ 0x531D2109B21A120ELL) & (v73 ^ 0x44625972098F8218) ^ 0x25ED2D429E0DCC8ALL ^ v79;
  v74 ^= 0xD9F740837C20F35uLL;
  v85 = v80 ^ v74 & (v78 ^ 0x77E82C42BC0DCE8ALL);
  v86 = v84 - ((2 * v84) & 0xCEE35ECF6666F3FALL) - 0x188E50984CCC8603;
  v87 = (((v79 ^ 0x77E82C42BC0DCE8ALL) & (v81 ^ 0x7D06C71F084CEFE4)) - ((2 * ((v79 ^ 0x77E82C42BC0DCE8ALL) & (v81 ^ 0x7D06C71F084CEFE4))) & 0xEA222944977DBD22) - 0xAEEEB5DB441216FLL) ^ v75;
  v88 = v74 + (v80 ^ 0x6F418D4E31F5451DLL) + v83 + 2 * v82 + 2;
  v89 = (v88 - ((2 * v88) & 0xAA480E942E379B6ALL) + 0x5524074A171BCDB5) ^ v76 ^ 0xF9C6D9BC5AFE2044;
  v90 = v89 ^ v86;
  *(&v46 + 1) = v87 ^ 0xD6FCD39EAEE44;
  *&v46 = v87 ^ 0x6A10000000000000;
  v91 = v46 >> 52;
  v92 = (v89 ^ v86) << 25;
  v93 = (v79 ^ 0x8817D3BD43F23175) & (v76 ^ 0xACE2DEF64DE5EDF1);
  v94 = v89 ^ ~v86;
  *(&v46 + 1) = v91 ^ 0x9F1;
  *&v46 = v91 ^ 0xB7E2EFB030C3C000;
  v95 = v93 ^ v81;
  v96 = ((v46 >> 12) - ((2 * (v46 >> 12)) & 0x7E582602CDCF3C3CLL) - 0x40D3ECFE991861E2) ^ v85;
  *(&v46 + 1) = ~v85;
  *&v46 = v85 ^ 0x33594D148CFE5878;
  v97 = v46 >> 1;
  v98 = ((v95 << 57) ^ 0x7800000000000000) - 0x190C2A1235767034 - ((2 * ((v95 << 57) ^ 0x7800000000000000)) & 0xCFFFFFFFFFFFFFFFLL);
  *(&v46 + 1) = v95 ^ 0x1F52FFFFCBCLL;
  *&v46 = v95 ^ 0x17ED320000000000;
  v99 = v86 ^ v95;
  v100 = v95 ^ (v95 >> 7) ^ (v46 >> 41);
  v101 = v96 ^ ((v96 ^ 0xD06D9E4F5712DB03) << 47) ^ (((v96 ^ 0xD06D9E4F5712DB03) >> 17) ^ (v96 >> 10) | ((v96 ^ 0xD06D9E4F5712DB03) << 54));
  v102 = v101 ^ 0xCC2FC45F2673252CLL;
  v103 = v90 ^ (v90 >> 39) ^ ((v92 ^ (8 * v90)) & 0xFFFFFFFFFFFFFFF8 | (v94 >> 61));
  v104 = v97 ^ (v85 << 58) ^ ((v85 >> 6) & 0x2024B4B5087F63CLL ^ v85 & 0xCA024B4B5087F63CLL | (v85 >> 6) & 0x1FDB4B4AF7809C3 ^ v85 & 0x35FDB4B4AF7809C3);
  v105 = (((((v100 ^ 0x17C2E992C5A00345) - (v100 ^ 0xF1313C7F0F298C89 ^ v98)) ^ ((v98 ^ 0x190C2A1235767033) + 1)) - 0x190C2A1235767034 - ((2 * (((v100 ^ 0x17C2E992C5A00345) - (v100 ^ 0xF1313C7F0F298C89 ^ v98)) ^ ((v98 ^ 0x190C2A1235767033) + 1))) & 0xCDE7ABDB95131F98)) ^ v98) + (v100 ^ 0x17C2E992C5A00345);
  v106 = v105 - 0x67B64AF868EBDC84 - ((2 * v105) & 0x30936A0F2E2846F8);
  v107 = v103 ^ 0x458B20E092662497 ^ v104;
  v108 = v101 ^ 0xCC2FC45F2673252CLL ^ v106;
  v109 = (((v101 ^ 0x3B84462C0ED38AD0) & (v107 ^ 0xCAB3DB19B3FCE4EALL)) - ((2 * ((v101 ^ 0x3B84462C0ED38AD0) & (v107 ^ 0xCAB3DB19B3FCE4EALL))) & 0xC5B0198D259D741ALL) - 0x1D27F3396D3145F3) ^ v103 ^ 0x458B20E092662497;
  v110 = (v99 >> 19) ^ (v99 >> 28) ^ (v99 << 36) ^ (v99 << 45) ^ 0xB0E6449C0AD5EFAFLL;
  v111 = (v110 - ((2 * v110) & 0x434A2539D7559594) - 0x5E5AED6314553536) ^ v99 ^ v106;
  v112 = (v108 ^ 0x901DC88B404B737FLL) & (v111 ^ 0xA9C4E51546DE5EDFLL);
  v113 = (v101 ^ 0xC47BB9D3F12C752FLL) & (v106 ^ 0x9849B5079714237CLL) ^ v107;
  v114 = (v103 ^ 0x58ACD3D9FF576165) & (v104 ^ 0xD7942820DECDA118);
  v115 = (v111 ^ 0x563B1AEAB921A120) & (v103 ^ 0xA7532C2600A89E9ALL);
  v116 = v111 ^ v114;
  v117 = (v109 - ((2 * v109) & 0x6FD574C6F46B830) + 0x37EABA637A35C18) ^ v116;
  v118 = v108 ^ v115;
  LOBYTE(v101) = (v18 & 0xF5 ^ 0x6E) - (v18 ^ 0x6E) - ((2 * ((v18 & 0xF5 ^ 0x6E) - (v18 ^ 0x6E))) & 0x6C) - 74;
  v119 = v113 ^ v102 ^ (v112 - ((2 * v112) & 0xEF5704E651415FF8) - 0x8547D8CD75F5004);
  v120 = ((v108 ^ v115 ^ 0x6FE23774BFB48C80) - (v116 ^ 0x9859926B8D2E1A7FLL ^ v108 ^ v115)) ^ ((v116 ^ 0x8445AE0CD656900) + 1);
  v121 = (v116 ^ 0x2CBE5E08CBDA0C5BLL ^ (v120 - ((2 * v120) & 0xB60BF62FF2813548) - 0x24FA04E806BF655CLL)) + (v108 ^ v115 ^ 0x6FE23774BFB48C80);
  v122 = v121 - 0x44374FCD84D3DA30 - ((2 * v121) & 0x77916064F6584BA0);
  v123 = (v119 ^ 0xDBCF89BCEE7496DCLL) >> (v101 ^ 0xB6u) >> (v101 ^ 0xBCu);
  v124 = v123 - ((2 * v123) & 0xC72F7467D3A49FD8) + 0x6397BA33E9D24FECLL;
  *(&v46 + 1) = v122 ^ 0x425D0;
  *&v46 = v122 ^ 0xBBC8B0327B280000;
  v125 = v46 >> 19;
  *(&v46 + 1) = v122 ^ 0xB2C25D0;
  *&v46 = v122 ^ 0xBBC8B03270000000;
  v127 = (v124 & 0x8000000000 | ((((v124 & 0x8000000000) >> 39) & 1) << 40)) ^ 0xCDFFF6ADCFEDC7FFLL;
  v128 = (v46 >> 28) ^ v125;
  v28 = ((v127 + 0x3200095230123801) & (v119 ^ 0x354C248000000000)) == 0;
  *(&v46 + 1) = v108 ^ v115 ^ 0x18C90FAF594;
  *&v46 = v108 ^ v115 ^ 0xE36F4A0000000000;
  v129 = v46 >> 41;
  v130 = v128 - 0x44374FCD84D3DA30 - ((2 * v128) & 0x77916064F6584BA0);
  v131 = v127 + 0x7FAFF9DF7ED7FE98;
  v132 = 0x1BAFE73B1EB38E96 - v127;
  if (!v28)
  {
    v131 = v132;
  }

  *(&v133 + 1) = v117 ^ 0x1639977967904F63;
  *&v133 = v117;
  v134 = v117 ^ __ROR8__(v117, 39) ^ (v133 >> 61);
  v135 = v113 ^ (v113 << 58) ^ ((v113 >> 1) ^ (v113 >> 6) | (v113 << 63));
  v136 = v129 ^ v118;
  v137 = v124 & 0xFFFFFF7FFFFFFFFFLL ^ (v119 << 47) ^ ((v119 ^ 0xDBCF89BCEE7496DCLL) - 0x4DAFF08D4EC5C697 + v131);
  *(&v133 + 1) = ((((v136 << 20) ^ 0x49C5A0D8ED030800) - 2048) >> 38) ^ 0x31C7EE7;
  *&v133 = __ROR8__(v136, 18) ^ 0xBDCA866524000000;
  v126 = ((v118 << 13) ^ 0xE971921F5EB28000) - ((2 * ((v118 << 13) ^ 0xE971921F5EB28000)) & 0xA2134C99A86B8000) + 0x5109A64CD435D3AELL;
  v138 = v126 & 0xE662D63605700000 ^ 0xA6625032014CE570 ^ (v126 & 0xFFFFFFFFFFF00000 ^ 0xB76B707AD14CE570 | v126 & 0xE662D63605700000 ^ 0x4000860404300000);
  v139 = (v119 >> 17) ^ 0x28F9D7D42D0C38D6 ^ v137;
  v137 ^= 0x28F9BA33E9D24FECuLL;
  v140 = (v137 - v139) ^ (((v119 >> 17) ^ 0xFFFF92183B2188C5) + 1);
  v141 = ((v119 >> 17) ^ 0xCF76F0DD743AA8ABLL ^ (v140 - ((2 * v140) & 0x9EED3A7561C9BF22) - 0x308962C54F1B206FLL)) + v137;
  v142 = (v138 & 0xFFFFFFFFFFFFE000 | (v118 >> 51)) ^ (v133 >> 26);
  v143 = v141 ^ (v119 << 54);
  v144 = v143 ^ 0xDCE9481BB4E0BF79;
  *(&v133 + 1) = v142 ^ 0xA4FAD;
  *&v133 = v142 ^ 0xB80E6BCF47B00000;
  v145 = v134 ^ 0x7D9E1AAA283957ACLL ^ v135;
  v146 = (v133 >> 20) ^ (v118 << 57);
  v147 = v146 ^ v122 ^ v130;
  v148 = (((((v146 ^ 0x77C7D8E1D7D4F6C5) - (v146 ^ 0xC0C7D8E1D7D4F6C5 ^ v143)) ^ ((v143 ^ 0x48FFFFFFFFFFFFFFLL) + 1)) + 0x6BE9481BB4E0BF79 - ((2 * (((v146 ^ 0x77C7D8E1D7D4F6C5) - (v146 ^ 0xC0C7D8E1D7D4F6C5 ^ v143)) ^ ((v143 ^ 0x48FFFFFFFFFFFFFFLL) + 1))) & 0xD7D2903769C17EF2)) ^ v143 ^ 0xDCE9481BB4E0BF79) + (v146 ^ 0x77C7D8E1D7D4F6C5);
  v149 = v148 - 0x1EBC5BA5B540C5E3 - ((2 * v148) & 0xC28748B4957E743ALL);
  v150 = (v149 ^ 0xE143A45A4ABF3A1DLL) & (v143 ^ 0x48FFFFFFFFFFFFFFLL);
  v151 = v147 ^ (v134 ^ 0x1B0948185E43C3B2) & (v135 ^ 0xA4724B52B2A0BDD0);
  v152 = (v143 ^ 0xB700000000000000) & (v145 ^ 0xC2E519E0C4DA29CELL);
  v153 = v149 ^ (v147 ^ 0x8838271E282B093ALL) & (v134 ^ 0xE4F6B7E7A1BC3C4DLL);
  v154 = v153 ^ v151;
  v155 = v152 - ((2 * v152) & 0x32D15A9B130AD7C2) - 0x669752B2767A941FLL;
  v156 = v151 ^ v134 ^ 0x7D9E1AAA283957ACLL;
  v157 = v156 ^ v155;
  v158 = v149 ^ 0x1EBC5BA5B540C5E2;
  v159 = v150 ^ v145;
  v160 = v150 ^ v145 ^ 0xCADB881174565119 ^ ((v158 & (v147 ^ 0x77C7D8E1D7D4F6C5)) - ((2 * (v158 & (v147 ^ 0x77C7D8E1D7D4F6C5))) & 0xEF82DC1C9EE70E50) - 0x83E91F1B08C78D8);
  v161 = (v160 + 0x6BE9481BB4E0BF79 - ((2 * v160) & 0xD7D2903769C17EF2)) ^ v144;
  LODWORD(v150) = *(STACK[0x2858] + ((((v156 ^ v155) >> 54) & 0x80 | ((v156 ^ ~v155) >> 62)) ^ 0xE3));
  v162 = (((v156 ^ v155) << 25) ^ 0x3BB7EAB88A000000) - 0x6BE92CE0BAA609CALL - ((2 * (((v156 ^ v155) << 25) ^ 0x3BB7EAB88A000000)) & 0x282DA63E88000000);
  v163 = (((8 * v157) ^ (v157 >> 39) ^ 0xBE3EC70EBE483999) - ((2 * ((8 * v157) ^ (v157 >> 39) ^ 0xBE3EC70EBE483999)) & 0x795650358450D8A8) - 0x4354D7E53DD793ACLL) ^ v157;
  v164 = (v154 >> 19) ^ (v154 >> 28) ^ (v154 << 36) ^ (v154 << 45) ^ 0x32B7C864BC4F96BCLL;
  v165 = (v164 - ((2 * v164) & 0x3105ABCBD5136A94) - 0x677D2A1A15764AB6) ^ v154;
  v166 = ((v163 ^ 0x261BEEE778000000) & (v162 ^ 0x9416D31F4559F636) | ((v150 ^ (((v150 >> 2) & 0xF3 ^ 1) - 2 * (((v150 >> 2) & 0xF3 ^ 1) & 3 ^ (v150 >> 2) & 2) - 51) ^ 0xBB) + 81)) ^ (v163 ^ 0x261BEEE779C83332 | v162 ^ 0x9416D31F4559F636);
  *(&v133 + 1) = v153 ^ 0x1607FEDDDD5;
  *&v133 = v153 ^ 0x5E09B60000000000;
  v167 = ((v153 << 57) ^ 0xAA00000000000000) + 0x6EDDF1D73D38D044 - ((2 * ((v153 << 57) ^ 0xAA00000000000000)) & 0xDFFFFFFFFFFFFFFFLL);
  v168 = v153 ^ (v153 >> 7) ^ (v133 >> 41);
  v169 = (v168 ^ 0x5374DDA27D72C758 ^ ((((v167 ^ 0x6EDDF1D73D38D044) - (v168 ^ 0x306855D9822AD62ALL ^ v167)) ^ ((v168 ^ 0xA14A5BF140EDF991) + 1)) - ((2 * (((v167 ^ 0x6EDDF1D73D38D044) - (v168 ^ 0x306855D9822AD62ALL ^ v167)) ^ ((v168 ^ 0xA14A5BF140EDF991) + 1))) & 0x1B82F35984C1826CLL) + 0xDC179ACC260C136)) + (v167 ^ 0x6EDDF1D73D38D044);
  v170 = v159 ^ (v159 >> 1) ^ (v159 << 58) ^ (~v159 << 63) ^ (v159 >> 6);
  v171 = v165 ^ (v169 - 0x4AD17B5E6B97CED4 - ((2 * v169) & 0x6A5D094328D06258));
  v172 = (v161 ^ (v161 << 47) ^ ((v161 >> 17) ^ (v161 >> 10) | (v161 << 54)) ^ 0x389FAF0D7FAF6A0DLL) & (v170 ^ v166 ^ 0xEB2107848BA7CB12) ^ v166;
  v173 = (((v171 ^ (v170 ^ 0x14DEF87B745834EDLL) & ~v166 ^ v172) & 0x960408001813040 | (v171 ^ (v170 ^ 0x14DEF87B745834EDLL) & ~v166) & 0x8614866162084024) ^ v172 & 0x8614866162084024 | (v171 ^ (v170 ^ 0x14DEF87B745834EDLL) & ~v166 ^ v172) & 0x708B391E9C768F9BLL) ^ 0xD4755FBFB6E41313;
  v174 = v173 - ((2 * v173) & 0x3BC0A7CE7DD3EC20) + 0x1DE053E73EE9F610;
  *(&v133 + 1) = v174 ^ 0x52045381E0CC2E0;
  *&v133 = v174;
  v175 = v174 ^ __ROR8__(v174, 39) ^ (v133 >> 61);
  LODWORD(v150) = LODWORD(STACK[0x2870]) + 1928586110;
  LODWORD(v158) = LODWORD(STACK[0x2860]) ^ (v150 < 0xE7159737);
  v176 = LODWORD(STACK[0x2818]) > v150;
  if (v158)
  {
    v177 = STACK[0x2860];
  }

  else
  {
    v177 = v176;
  }

  v178 = *(v10 + 8 * (v11 ^ (102 * v177)));
  ++LODWORD(STACK[0x2870]);
  return v178(v175 ^ 0xC44D2F07F85CFA16);
}

uint64_t sub_244A831F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(&v12 + 1) = a1 ^ 0x1899183D8;
  *&v12 = a1 ^ 0xF3752C8000000000;
  v13 = (v12 >> 35) + 0x77EC111692F182B7 - ((2 * (v12 >> 35)) & 0xEFD8222D25E3056ELL);
  *(&v12 + 1) = (((v9 - 405577668) | 0x1A0) + 0x2BF0CAC77) ^ a8;
  *&v12 = a8 ^ 0x4F80372000000000;
  *&v12 = __ROR8__((v12 >> 35) ^ ((v13 ^ 0x77EC111692F182B7) + 0x353F4339EE3469F3 + ((2 * v13) & 0x6A7E8673DC68D3E4 ^ 0x95A7FDDEFB9FFE9BLL)), 29);
  v14 = a1 ^ 0xF3752C81899183D8;
  v15 = (a1 ^ 0xF3752C81899183D8) + (v12 ^ 0x71A34F91A9FA19CFLL) + ((2 * v12) ^ 0x1CB960DCAC0BCC61) + 1;
  if ((a1 & 0x200000000000000) != 0)
  {
    v16 = 0x200000000000000;
  }

  else
  {
    v16 = 0xFE00000000000000;
  }

  v17 = v16 + v14;
  v18 = ((v15 ^ ((a8 ^ 0xB07FC8DD40F33FD1) + 1)) + 0x4F803722BF0CC02ELL - ((2 * (v15 ^ ((a8 ^ 0xB07FC8DD40F33FD1) + 1))) & 0x9F006E457E19805CLL)) ^ a8;
  v19 = v18 + v14 - ((2 * (v18 + v14)) & 0xF0052953D046444ALL) + 0x780294A9E8232225;
  v20 = ((2 * a1) & 0x3AA7CAB0E087ABD4 ^ 0xDD5DB7FFFFFCFC6FLL) + v14 - ((2 * (((2 * a1) & 0x3AA7CAB0E087ABD4 ^ 0xDD5DB7FFFFFCFC6FLL) + v14) + 0x3AA7CAB0E087ABD6) & 0xDA3D520055CFEA90) + 0xA728E589B2BCB33;
  v21 = (v19 ^ 0x830FA2BD3B9287D4) & (v11 ^ 0xD221A9E94127F872) ^ v19 & 0xB386BC6FA2C98D83;
  v22 = v20 ^ 0x6E18092D086770C8 ^ v21;
  v21 ^= 0x8306A02D22808580;
  v23 = (v21 - v22 - 0x4D1B6DA6EBF78858 - ((2 * (v21 - v22)) & 0x65C924B22810EF50)) ^ ((v20 ^ 0x12E156FFD5180AB7) - 0x4D1B6DA6EBF78858 + ((0x7FFFFFFFFFFFFFFCLL - 2 * (v20 ^ 0x12E156FFD5180AB7)) | 0x9A36DB4DD7EF10AFLL) + 2);
  v24 = (((v23 - ((2 * v23) & 0xDA3D520055CFEA90) - 0x12E156FFD5180AB8) ^ v20) + v21) ^ (v19 ^ 0x7CF05D42C46D782BLL) & (v17 ^ 0xFDFFFFFFFFFFFFFFLL) ^ v8 ^ (((2 * a7) & 0x82631288316CB9D6 ^ 0xFDDFFFF7DE93EEFFLL) + (a7 ^ 0x2110522E50B70A94) - ((2 * (((2 * a7) & 0x82631288316CB9D6 ^ 0xFDDFFFF7DE93EEFFLL) + (a7 ^ 0x2110522E50B70A94)) + 0x2631288316CB9D8) & 0x2D2D1B4FB79FE69CLL) - 0x2837E9140B79AFC6);
  LODWORD(v22) = ((v24 >> 61) ^ 4) - ((2 * ((v24 >> 61) ^ 4) + 10) & 0xFFFFFFFB) - 1910767758;
  v25 = *(STACK[0x2878] + (v22 ^ 0x8E1BFFE0));
  v26 = (v22 ^ 0x21) - (v22 ^ 0x3C);
  HIDWORD(v27) = v26 ^ ~v25;
  LODWORD(v27) = (v26 ^ v25 ^ 0xFFFFFFBF) << 24;
  v28 = (v24 ^ 0x970D0D6E80BD7D8CLL) - 2 * ((v24 ^ 0x970D0D6E80BD7D8CLL) & 0x14253A529AF4B9BELL ^ v24 & 0x10) - 0x6BDAC5AD650B4652;
  return (*(v10 + 8 * (v9 ^ 0x182C966F ^ (27697 * (v9 < 0x2E577C1D)))))(v24 ^ (v28 >> 39) ^ (8 * v28) ^ (v28 << 25) ^ 0x224045332C6A82F4 ^ (v27 >> 27));
}

uint64_t sub_244A83944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v17 = STACK[0x2820];
  v18 = STACK[0x2558];
  v18[38] = v8 ^ 0xA7;
  v19 = STACK[0x2808];
  v19[10] = BYTE2(v8) ^ 0x31;
  v20 = STACK[0x2560];
  *(v20 + 102) = BYTE1(v8) ^ 0x55;
  STACK[0x2870] = (v17 - 10198) | 0x3005u;
  v21 = (v8 >> (((v17 + 42) | 5) ^ 0x47)) ^ 0x9F;
  LOBYTE(v21) = -35 * v21 - ((-70 * v21) & 0x1C) - 114;
  v22 = ((v8 >> 40) ^ 0xEF0AA7) - ((2 * ((v8 >> 40) ^ 0xEF0AA7) + 170) & 0x30183B0) + 1937818157;
  v23 = STACK[0x2800];
  LOBYTE(v21) = v21 ^ *(STACK[0x2800] + (v21 ^ 0x4CLL));
  *(v20 + 95) = ((v21 ^ 0xBE) - ((2 * (v21 ^ 0xBE) + 38) & 0x8F) - 38) ^ 0x47;
  v18[46] = BYTE4(v8) ^ 0xD;
  v24 = (v22 ^ 0xC4) - (v22 ^ 0xD9);
  v25 = *(STACK[0x2878] + (((BYTE5(v8) ^ 0xA7) - ((2 * (BYTE5(v8) ^ 0xA7) - 86) & 0xB0) + 45) ^ 5));
  HIDWORD(v26) = v25 ^ ~v24;
  LODWORD(v26) = (v25 ^ v24 ^ 0xFFFFFFBF) << 24;
  *(v20 + 160) = v26 >> 27;
  v27 = *(v23 + ((-35 * (BYTE6(v8) ^ 0xA) - ((-70 * (BYTE6(v8) ^ 0xA)) & 0xF8) + 124) ^ 0xBELL)) ^ (221 * (HIWORD(v8) ^ 0xEF0A) - ((442 * (HIWORD(v8) ^ 0xEF0A)) & 0x1DFBCF8) + 1274011260);
  v28 = STACK[0x2550];
  v28[21] = BYTE2(v10) ^ 6;
  v29 = STACK[0x2810];
  v29[73] = HIBYTE(v8) ^ 0xEF;
  v18[12] = BYTE5(v10) ^ 0x5C;
  v28[6] = ((2 * v27) & 0x26) + (v27 ^ 0xDF);
  v28[61] = BYTE1(v10) ^ 0x82;
  v19[25] = v9 ^ 0x44;
  *(v20 + 27) = BYTE4(v16) ^ 0x25;
  v19[18] = v10 ^ 0x6A;
  v18[14] = BYTE3(v10) ^ 0xDE;
  v18[45] = HIBYTE(v9) ^ 0xDA;
  v29[359] = BYTE4(v10) ^ 0xBD;
  v29[250] = BYTE2(v16) ^ 0x82;
  v19[27] = BYTE6(v10) ^ 0x1C;
  *v18 = HIBYTE(v10) ^ 0x75;
  v29[184] = (((1 - v21) & 1 | 0x4F803722BF0CC02ELL) ^ a8) >> (v14 & 0x28 ^ 0x20u) >> (v14 & 0x28 ^ 8u);
  *(v20 + 55) = BYTE1(v15) ^ 0x1B;
  v28[41] = HIBYTE(v16) ^ 0x15;
  v19[13] = BYTE3(v16) ^ 0x7D;
  *(v20 + 43) = BYTE2(v15) ^ 0x3D;
  *(v20 + 198) = v15 ^ 0x54;
  v19[8] = BYTE6(v16) ^ 0xF8;
  v30 = *(v23 + ((-35 * (BYTE3(v15) ^ 0x44) - ((-70 * (BYTE3(v15) ^ 0x44)) & 0xAE) - 41) ^ 0x15));
  v18[15] = BYTE4(v15) ^ 0xEE;
  v19[17] = BYTE5(v15) ^ 0x37;
  v18[33] = ((-35 * (BYTE3(v15) ^ 0x44) - ((-70 * (BYTE3(v15) ^ 0x44)) & 0xAE) - 41) ^ v30 ^ 0xE7) - 109;
  v31 = STACK[0x27F8] + 16;
  v32 = *(v31 + ((-73 * (BYTE6(v15) ^ 0x65)) ^ 0x86));
  v28[9] = BYTE2(v11) ^ 0xB2;
  *(v20 + 141) = HIBYTE(v13) ^ 0x85;
  v33 = (~v32 >> 7) & 1 ^ (v32 >> 4);
  v18[13] = HIBYTE(v15) ^ 0x1A;
  v28[74] = BYTE5(v11) ^ 0xE3;
  v18[29] = BYTE4(v11) ^ 0xAB;
  *(v20 + 44) = BYTE3(v11) ^ 0x3F;
  v28[54] = v13 ^ 0x29;
  v18[41] = (v32 ^ 0x3A ^ ((v33 ^ 0xB) + ((2 * ((v33 ^ 0xB | 0x7C) ^ v33)) ^ 0x11) - 67)) + 109;
  v34 = *(v31 + ((-73 * (BYTE6(v11) ^ 0x23)) ^ 0x86));
  v29[185] = HIBYTE(v11) ^ 0xF3;
  *(v20 + 220) = (v34 ^ (v34 >> 4) ^ ((~v34 & 0x80) >> 7) ^ 0x8D) + 109;
  v35 = STACK[0x2600];
  *(*v35 + 204) = (LODWORD(STACK[0x28C0]) ^ 0x35107BAA) + 1;
  v36 = *(v20 + 32) + 622243611 - ((2 * *(v20 + 32)) & 0x4A2D5E36);
  LODWORD(STACK[0x2910]) = v36;
  v37 = *v35;
  v38 = *STACK[0x2548];
  v39 = v28[35];
  v40 = *(*v35 + 234) << 8;
  v41 = *(v38 + 14);
  v42 = v37[31];
  v43 = v37[194];
  STACK[0x2810] = v38;
  v44 = *(v38 + 11);
  v45 = (-1412543598 - (v36 ^ 0x2516AF1B)) ^ ((v36 ^ 0x71271B76) + 1);
  v46 = v36 ^ 0x8414E78F ^ (v45 + 181139028 - ((2 * v45) & 0x1598060C) + 3250);
  LOWORD(v31) = (v43 << 8) - ((v43 << 9) & 0x400) - 32088;
  v47 = v46 - ((2 * v46 + 396138276) & 0x35F26846) + 1187479477;
  LODWORD(v23) = *(v20 + 192) - ((2 * *(v20 + 192)) & 0x1CA);
  v48 = v41 << (v44 & 0x28) << (v44 & 0x28 ^ 0x28);
  v49 = 126 - 2 * v36;
  v50 = v36 ^ 0x2516AF19;
  v51 = v40 | (v39 << 32) | v42 | (v18[20] << 16) | (v18[9] << 24);
  v52 = v28[16];
  v53 = ((v23 + 5) & 0x1E | (1315264538 - v23) & 0xE1 | v31 & 0xFF00 | (*(v20 + 75) << 32) | (v37[264] << 16) | (v18[16] << 24)) ^ (v37[247] << 40);
  v54 = (v37[284] << 48) - ((v37[284] << 49) & 0x100000000000000) - 0x1B7FC5BE6FDD4A1BLL;
  v55 = 0x2992387ECA3BCD35;
  v56 = v48 ^ (v44 << 48) ^ v51 ^ (*(v20 + 117) << 56) ^ 0xD61F957D83840A65;
  v57 = v53 & 0x2992387ECA3BCD35;
  v58 = v54 ^ 0xE4803A419022B5E5;
  v59 = ((v54 ^ 0xE4803A419022B5E5) - (v54 ^ 0xE4803A41902237E1 ^ v53) - ((2 * ((v54 ^ 0xE4803A419022B5E5) - (v54 ^ 0xE4803A41902237E1 ^ v53))) & 0xFDFC3009710E73DALL) + 0x7EFE1804B88739EDLL) ^ ((v53 ^ 0xFFFFFFFFFFFF7DFBLL) - ((2 * (v53 ^ 0xFFFFFFFFFFFF7DFBLL) + 2) & 0x39E182AEAD609E28) - 0x630F3EA8A94FB0EBLL);
  *(&v60 + 1) = v59 ^ 0x76F9;
  *&v60 = v59 ^ 0xE20ED953EE370000;
  v61 = (v60 >> 15) - ((2 * (v60 >> 15)) & 0x5679991FA15E714ELL) + 0x2B3CCC8FD0AF38A7;
  v62 = 49 * v28[97] - ((98 * v28[97]) & 0x84) - 62;
  *(&v60 + 1) = v61 ^ 0x68B179EFE817;
  *&v60 = v61 ^ 0x2DC2000000000000;
  v63 = (v60 >> 49) - ((2 * (v60 >> 49)) & 0xC100F701BE2DD57ELL) - 0x1F7F847F20E91541;
  if (v61 != 0x2DC268B179EFE817)
  {
    v55 = v63 ^ 0x64F2E8A1828ADB0ALL;
  }

  v64 = v55 & (v63 ^ 0xB29F2F20B74EE9C0);
  v65 = (v63 ^ v53) & 0xD66DC78135C432CALL;
  v66 = v64 ^ v57 ^ 0x8004;
  v67 = (v66 - (v65 ^ 0x920D07003544A2C4 ^ v64 ^ v57)) ^ ((v65 ^ 0x6DF2F8FFCABBDD3FLL) + 1);
  v68 = v65 ^ 0x25D62EAC24951302 ^ (v67 - ((2 * v67) & 0x6FB6535823A26384) - 0x4824D653EE2ECE3ELL);
  v69 = *(&off_278E1E490 + v17 - 8938);
  STACK[0x2808] = v69 + 805;
  v70 = v62;
  v71 = (v66 + v58 + v68) ^ (v52 << 56);
  v72 = ((v18[43] - ((2 * v18[43] + 26) & 0x16) - 88) ^ 0xFFFFFF9C) - 125;
  v73 = (v18[43] - ((2 * v18[43] + 26) & 0x16) - 88) ^ 0x3CLL;
  STACK[0x2800] = v69 + 12;
  v74 = *(v69 + 12 + v73) ^ v72;
  v75 = ((8 * v74) ^ 0x20) + (v74 >> 3 << 7) + 71;
  if (v70 == 131)
  {
    v76 = 0;
  }

  else
  {
    v76 = v75 ^ 0x47;
  }

  v77 = (v28[94] << 8) | (v37[202] << 16) | (v28[40] << 24) | v18[36] | ((((((v76 & 0xF8 | (v74 >> 5)) ^ 3) + (~(2 * ((v76 & 0xF8 | (v74 >> 5)) ^ 3)) | 0x71) + 72) ^ v75) + v76) << 32) | (v28[91] << 40) | (v28[93] << 48) | (*(v20 + 171) << 56);
  v78 = ((2 * v47) & 0xE6EBCF5E ^ 0x24E24846) + (v47 ^ 0xE98CD38C);
  STACK[0x2818] = v37;
  v79 = v71 ^ 0x9930156B765A773ALL;
  STACK[0x2860] = (v78 - 1937106863) << 32;
  v80 = (v49 & 4) + v50 - v78 + 1937106863;
  v81 = *(v12 + 8 * v17);
  STACK[0x2838] = 0x50939E664B5134FLL;
  LODWORD(STACK[0x2858]) = v80;
  LODWORD(STACK[0x2830]) = v80 + 117779418;
  LODWORD(STACK[0x2878]) = 750164345;
  LODWORD(STACK[0x2820]) = 75534;
  return v81(0x9930156B765A773ALL, v77 - ((2 * v77) & 0xBDE0088E316A8C7ELL) - 0x210FFBB8E74AB9C1, v79, v56, 721360189);
}

uint64_t sub_244A845D0()
{
  LODWORD(STACK[0x2868]) = LODWORD(STACK[0x2858]) > 0xF8FAD425;
  STACK[0x2870] = (v0 - 4319) ^ 0x2917u;
  STACK[0x2828] = (v0 - 4319) | 0x4120u;
  v2 = LODWORD(STACK[0x2878]) - 632384926;
  v3 = STACK[0x2868];
  if (LODWORD(STACK[0x2868]) == v2 < 0x7052BDA)
  {
    v3 = LODWORD(STACK[0x2830]) > v2;
  }

  v4 = *(v1 + 8 * (v0 ^ (23 * v3)));
  ++LODWORD(STACK[0x2878]);
  return v4();
}

uint64_t sub_244A86310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(v7 + ((v8 + 7421) ^ ((16 * (v8 + v9) - 64) & 0x70) ^ a7) + 285);
  v16 = ((v15 >> 4) | (16 * v15)) + (v10 | ~(2 * ((v15 >> 4) | (16 * v15)))) - 57;
  return (*(v11 + 8 * (((v9 < 8) * v14) ^ v8)))(a1, a2, a3, ((*(v12 + v9) - 90) << ((v16 ^ v13) + ((2 * v16) & 0x7C ^ 0xF3u) + 63)) ^ a4);
}

uint64_t sub_244A86858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v15 = STACK[0x2828];
  v16 = 49 * (a8 ^ 0x42) - ((98 * (a8 ^ 0x42)) & 0x58) + 44;
  v17 = STACK[0x2808];
  v18 = *(STACK[0x2808] + ((104 * (STACK[0x2828] ^ 0x591F) - 12252) ^ v16));
  v19 = STACK[0x2818];
  v19[234] = (a8 >> (((2 * STACK[0x2828]) ^ 0x3A) + 30)) ^ 0x85;
  v20 = STACK[0x2560];
  *(v20 + 192) = v9 ^ 0xB1;
  v21 = STACK[0x2550];
  v21[35] = BYTE4(a8) ^ 0x9F;
  v22 = STACK[0x2810];
  *(v22 + 14) = BYTE5(a8) ^ 0x25;
  v23 = STACK[0x2558];
  v23[9] = BYTE3(a8) ^ 0xDD;
  v19[31] = ((((2 * v16) & 0xB4 ^ 0x90) + (v16 ^ 0x37)) ^ v16 ^ v18 ^ 0x78) + 111;
  v23[20] = BYTE2(a8) ^ 0x36;
  *(v22 + 11) = BYTE6(a8) ^ 0x15;
  *(v20 + 117) = HIBYTE(a8) ^ 0x97;
  v19[194] = BYTE1(v9) ^ 0x84;
  v24 = 49 * (BYTE5(v9) ^ 0x8F) - ((98 * (BYTE5(v9) ^ 0x8F)) & 0x14) + 10;
  v23[16] = BYTE3(v9) ^ 0xC9;
  *(v20 + 75) = BYTE4(v9) ^ 0x3F;
  v19[264] = BYTE2(v9) ^ 0x1A;
  v19[247] = (v24 ^ ((v24 ^ 0x4B) + 90) ^ 0x5E ^ *(v17 + (v24 ^ 0x5ALL))) + 111;
  v25 = STACK[0x2800];
  v26 = *(STACK[0x2800] + (((BYTE6(v9) ^ 0x9C) - ((2 * (BYTE6(v9) ^ 0x9C) + 58) & 0xD4) + 7) ^ 0x5DLL)) ^ ((((HIWORD(v9) ^ 0xDD9C) - ((2 * (HIWORD(v9) ^ 0xDD9C) + 314) & 0x216D4) - 630518777) ^ 0xFFFFFFFD) - 125);
  v19[284] = ((v26 >> 5) | (8 * v26)) ^ 0x23;
  v27 = *(v17 + ((49 * (HIBYTE(v9) ^ 0xDD)) ^ 0x50));
  v21[72] = v10 ^ 0x98;
  *(v20 + 23) = BYTE1(v10) ^ 8;
  v21[16] = ((49 * (HIBYTE(v9) ^ 0xDD)) ^ (((49 * (HIBYTE(v9) ^ 0xDD)) ^ 0x41) + 90) ^ 0x54 ^ v27) + 111;
  v28 = 49 * (BYTE4(v10) ^ 0xA) - ((98 * (BYTE4(v10) ^ 0xA)) & 0xE8) - 12;
  HIDWORD(v29) = *(v8 + ((-107 * (BYTE2(v10) ^ 0x7C)) ^ 0x71) + 549);
  LODWORD(v29) = (HIDWORD(v29) << 24) + 335544320;
  v30 = (v29 >> 25) - ((2 * (v29 >> 25)) & 0x38);
  HIDWORD(v29) = (v30 + 28) ^ 0x1C;
  LODWORD(v29) = (99 - v30) << 24;
  v21[97] = BYTE3(v10) ^ 0x91;
  *(v20 + 80) = ((v29 >> 31) ^ 0xC8) - 3;
  v31 = *(v17 + (v28 ^ 0xA4));
  *(v20 + 213) = BYTE6(v10) ^ 0x42;
  v21[12] = BYTE5(v10) ^ 0x2D;
  v23[25] = (v28 ^ ((v28 ^ 0xB5) + 90) ^ 0xA0 ^ v31) + 111;
  v32 = *(v25 + (((HIBYTE(v10) ^ 0xF4) - ((2 * (HIBYTE(v10) ^ 0xF4) + 58) & 0x6E) + 84) ^ 0x80)) ^ ((((HIBYTE(v10) ^ 0xF4) - ((2 * (HIBYTE(v10) ^ 0xF4) + 314) & 0x16E) + 1328222548) ^ 0x20) - 125);
  v19[202] = BYTE2(v13) ^ 0x86;
  v23[36] = v13 ^ 0x24;
  v21[40] = ~BYTE3(v13);
  v21[94] = BYTE1(v13) ^ 0x41;
  v19[313] = ((((2 * ((v32 >> 5) | (8 * v32))) & 0x66) - (((v32 >> 5) | (8 * v32)) - 76)) & 0x33 ^ 0xEF) & ((~((2 * ((v32 >> 5) | (8 * v32))) & 0x66) + ((v32 >> 5) | (8 * v32)) - 76) & 0xCC ^ 0xB3);
  v33 = *(v17 + ((49 * (BYTE4(v13) ^ 0x82)) ^ 0x50));
  *(v20 + 171) = HIBYTE(v14) ^ 0x84;
  v21[91] = BYTE5(v13) ^ 0x96;
  *(v20 + 39) = BYTE5(v12) ^ 0xAC;
  v23[43] = ((49 * (BYTE4(v13) ^ 0x82)) ^ (((49 * (BYTE4(v13) ^ 0x82)) ^ 0x41) + 90) ^ 0x54 ^ v33) + 111;
  v21[93] = BYTE6(v13) ^ 0xE7;
  v19[98] = BYTE6(v12) ^ 0xC8;
  *(v20 + 140) = BYTE1(v12) ^ 0x8E;
  *(v20 + 170) = BYTE4(v12) ^ 0xDB;
  v23[2] = v12 ^ 0x31;
  v19[104] = BYTE2(v12) ^ 0x58;
  v19[75] = BYTE3(v12) ^ 0x92;
  v19[136] = HIBYTE(v12) ^ 9;
  *(v20 + 32) = (LODWORD(STACK[0x2910]) ^ 0x2516AF1B) + 1;
  return (*(v11 + 8 * (v15 ^ (LODWORD(STACK[0x2840]) != -518509983))))();
}

uint64_t sub_244A86D7C()
{
  v2 = *STACK[0x2600];
  STACK[0x2820] = v2;
  LODWORD(STACK[0x28F4]) = *(v2 + 56) - ((2 * *(v2 + 56)) & 0x2E261538) + 387123868;
  if (STACK[0x2850])
  {
    v3 = STACK[0x2848] == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  LODWORD(STACK[0x2810]) = v4;
  return (*(v1 + 8 * ((((v0 + 7830) ^ 0x4EED) * v4) ^ v0)))();
}

uint64_t sub_244A86DF0()
{
  v4 = *STACK[0x2548];
  v5 = STACK[0x2550];
  v6 = v0 ^ 0x42A3;
  STACK[0x2870] = ((v0 ^ 0x42A3) - 2507) | 0x1060u;
  v7 = ((*(v5 + 77) >> 5) | (8 * *(v5 + 77))) ^ 0x43;
  v8 = *(&off_278E1E490 + (v0 ^ 0x42A3) - 2469);
  STACK[0x2808] = v8 + 267;
  LOBYTE(v7) = *(v8 + 267 + v7) - 2 * ((*(v8 + 267 + v7) + 24) & 0x37 ^ *(v8 + 267 + v7) & 5) + 74;
  STACK[0x2818] = v4;
  v9 = STACK[0x2840] & 0xCFB7F3FA ^ 0xC03590EA;
  v10 = v1 ^ LODWORD(STACK[0x2840]);
  v11 = LODWORD(STACK[0x2840]) ^ 0xE1182A61;
  if (v7 == 97)
  {
    v9 = -829275792;
  }

  v12 = v11 - (v1 ^ v2);
  v13 = (v10 & 0xCE924170 ^ 0xC6020070 ^ v9 & v11) + (v1 & 0x316DBE8F ^ 0x11010A8C);
  v14 = v11 + ((2 * v1) ^ 0x2E261538) + ((2 * v1) ^ 0xD1D9EAC7) + 1;
  v15 = ((v14 - ((2 * v14) & 0xEC1641FA) - 167042819) ^ v10) + v12;
  STACK[0x2800] = v8 - 4;
  STACK[0x2860] = v13 << 32;
  v16 = *(v3 + 8 * v6);
  LODWORD(STACK[0x2868]) = v15;
  LODWORD(STACK[0x2858]) = v15 - 1033713517;
  LODWORD(STACK[0x2878]) = 1732758129;
  return v16();
}

uint64_t sub_244A8734C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v14 = LODWORD(STACK[0x2868]) > 0x3D9D376C;
  LODWORD(STACK[0x2838]) = v11 ^ 0x3C16;
  v15 = (v11 ^ 0x3C16u) - 7545;
  v16 = a5 ^ v9 ^ 0x6F2D226A9DA6389ALL;
  STACK[0x2870] = v15;
  v17 = v12 ^ 0xB486C8E5A4FF3FD5 ^ v9 ^ 0x6F2D226A9DA6389ALL;
  v18 = v8 & 0xFEFFFFFFFFFFFFFFLL ^ STACK[0x2860] ^ (((v15 ^ 0xD96BBE23) + a8) | v8 & 0x100000000000000);
  v19 = v18 ^ 0x70EEA4D85D4D455 ^ v13;
  v20 = (v16 ^ 0x49D5E4614251A3E5) & (v17 ^ 0xF3E95AE0D6592DA1);
  v21 = (v18 ^ 0x2AE358DE7732932) & (v16 ^ 0xB62A1B9EBDAE5C1ALL) ^ v17;
  v22 = (v19 ^ 0xB2A7F8B2632993B2) & (v18 ^ 0xFD51CA72188CD6CDLL) ^ v16 ^ v18 ^ 0x70EEA4D85D4D455 ^ (((v19 ^ 0x4D58074D9CD66C4DLL) & (v12 ^ 0x4B90131811B21C02)) - ((2 * ((v19 ^ 0x4D58074D9CD66C4DLL) & (v12 ^ 0x4B90131811B21C02))) & 0xB41BF80C54FFACELL) + 0x5A0DFC062A7FD67);
  v23 = v19 ^ (v12 ^ 0xB46FECE7EE4DE3FDLL) & (v9 ^ 0x9C2D5C88014DC913);
  v24 = (v22 >> 61) ^ 2;
  v25 = (v20 - ((2 * v20) & 0xFE2DB7FB6A9A47AELL) - 0xE924024AB2DC29) ^ v12 ^ 0xB486C8E5A4FF3FD5 ^ v23;
  *(&v27 + 1) = v25 ^ 0x821DA98;
  *&v27 = v25 ^ 0x2269978F20000000;
  v26 = v27 >> 29;
  v28 = (v24 - (v22 ^ 0x59182DCC4D88B9B5 ^ (v22 >> 61))) ^ ((v22 ^ 0xA6E7D233B2774648) + 1);
  *(&v27 + 1) = v26 ^ 0x58E4930BELL;
  *&v27 = v26 ^ 0xB8853F4000000000;
  v29 = v27 >> 35;
  v30 = __ROR8__(v22, 39) ^ (8 * v22) ^ (v24 + (v22 ^ 0x59182DCC4D88B9B7) + v28 - 2 * (v28 & (v22 ^ 0x59182DCC4D88B9B7)));
  *(&v27 + 1) = v29 ^ 0x3E8;
  *&v27 = v29 ^ 0xB1C92617D710A400;
  v31 = v27 >> 10;
  *(&v27 + 1) = v29 ^ 0xA7E8;
  *&v27 = v29 ^ 0xB1C92617D7100000;
  v32 = v30 ^ 0x3235F456C09C47A0 ^ v23 ^ (v23 << 58) ^ (v23 << 63) ^ (v23 >> 1) ^ (v23 >> 6) ^ ((v27 >> 17) ^ v29 ^ v31 ^ 0x4E36D9E828EF5817) & (v21 ^ (v21 >> 41) ^ (v21 >> 7) ^ (v21 << 23) ^ (v21 << 57) ^ 0x212F9006C975F313);
  v33 = (v32 & 2 ^ 0x8F569DFFE77949D7) + 2 * (v32 & 2);
  v34 = v33 + 0x7CBB773FBDBFB76CLL;
  v35 = v33 + 0x70A962001886B629;
  v36 = (v32 >> 1) ^ 0x5D2218E4B1C1B936;
  v37 = 0x9B68B33F8CB24B1ALL - v33;
  if ((v35 & v36) == 0)
  {
    v37 = v34;
  }

  STACK[0x2830] = (v32 << 63) - 0x34A183985FDC44E6;
  STACK[0x2828] = v36 - 0xC12153FA5390143 + v37 + 0x708D9659E9EDFED2 - ((2 * (v36 - 0xC12153FA5390143 + v37)) & 0xE11B2CB3D3DBFDA4);
  v38 = LODWORD(STACK[0x2878]) + 1528495651;
  v39 = v14 ^ (v38 < 0xC262C893);
  v40 = LODWORD(STACK[0x2858]) > v38;
  if (v39)
  {
    v40 = v14;
  }

  v41 = *(v10 + 8 * (v11 ^ (46 * !v40)));
  ++LODWORD(STACK[0x2878]);
  return v41();
}

uint64_t sub_244A88E0C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v12 = v7 < v9;
  if (v12 == v10 + a7 < v9)
  {
    LOBYTE(v12) = v10 + a7 < v7;
  }

  return (*(v11 + 8 * ((v12 ^ (67 * (a1 ^ v8))) & 1 ^ a1)))();
}

uint64_t sub_244A89560(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v8 = STACK[0x2838];
  v9 = ((BYTE3(v7) ^ 0x48) - ((((2 * LODWORD(STACK[0x2838])) ^ 0x58) - 54) & (2 * (BYTE3(v7) ^ 0x48) - 118)) + 33);
  v10 = ((2 * ((BYTE3(v7) ^ 0x48) - ((((2 * LODWORD(STACK[0x2838])) ^ 0x2E58) - 19766) & (2 * (BYTE3(v7) ^ 0x48) + 138)) + 956855073)) & 0x1EC ^ 0x1A8) + (v9 ^ 0x37D8DF2A);
  v11 = STACK[0x2820];
  v11[238] = v7 ^ 0xE5;
  v11[224] = BYTE1(v7) ^ 0x4C;
  v12 = STACK[0x2558];
  v12[17] = BYTE2(v7) ^ 0x83;
  v13 = *(STACK[0x2800] + v10 - 936959990 + (((v9 ^ 0xFFFFFF39) - 936959990 + v10 + 1) ^ 0xFFFFFFFC) + 1);
  v14 = STACK[0x2550];
  v14[53] = BYTE4(v7) ^ 0xC2;
  v11[244] = HIBYTE(v7) ^ 0xC;
  v15 = STACK[0x2818];
  v15[32] = BYTE6(v7) ^ 0xE1;
  v16 = STACK[0x2560];
  v16[187] = BYTE1(v6) ^ 0x68;
  v14[112] = BYTE5(v7) ^ 0x1C;
  HIDWORD(v17) = ((v13 >> 5) | (8 * v13)) ^ 7;
  LODWORD(v17) = (v13 << 27) ^ 0x10000000;
  v14[108] = v6 ^ 0x3A;
  v12[24] = (v17 >> 28) ^ 0xB4;
  v15[19] = BYTE2(v6) ^ 0x30;
  v11[282] = BYTE4(v6) ^ 0x16;
  v16[152] = BYTE6(v6) ^ 0xD5;
  v11[200] = BYTE3(v6) ^ 0x16;
  v18 = (a3 >> 53) & 0xF8;
  v15[15] = BYTE5(v6) ^ 0xB7;
  v15[33] = HIBYTE(v6) ^ 0xF3;
  v16[173] = a1 ^ 0xEC;
  v19 = STACK[0x2808];
  v20 = *(STACK[0x2808] + (((a1 >> 5) & 0xF8 | (a1 >> 13)) ^ 0xEBLL));
  v21 = (a3 >> 61) ^ 0x8AE5FC8E;
  v22 = ((v18 | (a3 >> 61)) ^ 0x68) - ((2 * ((v18 | (a3 >> 61)) ^ 0x68)) & 0x11C) - 1964639090;
  if (a1 >> 13)
  {
    v21 = v22;
  }

  v11[178] = BYTE2(a1) ^ 7;
  v14[39] = BYTE4(a1) ^ 0x18;
  v15[16] = BYTE3(a1) ^ 0x52;
  v23 = ((2 * v3) & 0xEE ^ 0xA6) + (v3 ^ 0xAC);
  v16[131] = BYTE6(a1) ^ 0x7F;
  v12[35] = ((v20 - ((2 * v20 + 48) & 0xAE) + 111) ^ 0x8B ^ (87 - (((v20 - ((2 * v20 + 48) & 0xFFFFFFAE) + 111) >> 3) & 5))) - 5;
  v16[46] = BYTE5(a1) ^ 0x7D;
  v24 = *(v19 + ((v21 ^ 0x8AE5FC8E | v18 ^ 0x68) ^ 0x43));
  if ((STACK[0x2828] ^ STACK[0x2830]) == 0xBBD3EA3E49CE45C8)
  {
    v25 = 0;
  }

  else
  {
    v25 = (v23 - ((2 * v23 + 2) & 0x5E) + 48) ^ 0x2F;
  }

  v26 = (v25 | (v23 + 1)) + (~(2 * (v25 | (v23 + 1))) | 0xB9) + 36;
  if ((v3 & 8) != 0)
  {
    v26 = (v3 ^ 0x5B) - ((2 * (v3 ^ 0x5B) + 16) & 0x46) + 43;
  }

  v11[74] = v26 ^ 0x2B;
  HIDWORD(v28) = v24 ^ 3;
  LODWORD(v28) = (v24 << 24) - 1744830464;
  v27 = v28 >> 28;
  HIDWORD(v28) = v27 ^ 0xC;
  LODWORD(v28) = (v27 ^ (78 - 2 * v24) & 0x55555555 ^ 0x70) << 24;
  v16[114] = BYTE2(v3) ^ 0xC6;
  v12[1] = BYTE6(v3) ^ 0x64;
  v14[37] = v4 ^ 0xAD;
  v12[22] = BYTE1(v3) ^ 0xA;
  v12[18] = HIBYTE(v3) ^ 0x16;
  v15[9] = BYTE5(v3) ^ 0xA3;
  v15[12] = BYTE1(v4) ^ 0xEA;
  v12[30] = BYTE2(v4) ^ 0x87;
  v14[77] = ((v28 >> 28) ^ 0xC2) - 5;
  v14[18] = BYTE4(v3) ^ 0xD8;
  v15[26] = BYTE3(v3) ^ 0x26;
  v29 = *(v19 + (((v4 >> 29) - ((v4 >> 21) & 0xF8 ^ 0xFFF7FFE7) - 524289) ^ 0x41));
  v30 = v29 - ((2 * v29 + 48) & 0x66) + 75;
  v11[235] = BYTE5(v4) ^ 0xD1;
  v12[34] = HIBYTE(v4) ^ 0xDB;
  v16[74] = BYTE6(v4) ^ 0x14;
  v11[387] = BYTE4(v4) ^ 0x86;
  v15[24] = (v30 ^ 0x8B ^ (((v30 >> 3) & 5 ^ 4) - ((v30 >> 2) & 2) + 51)) - 5;
  STACK[0x2820] = *STACK[0x2600];
  return (*(v5 + 8 * v8))();
}

uint64_t sub_244A89A48()
{
  *(STACK[0x2820] + 56) = (v1 ^ 0x17130A9C) + 1;
  v3 = *STACK[0x2600];
  STACK[0x2818] = v3;
  LODWORD(STACK[0x28F4]) = *(v3 + 204) + 387123868 + (v0 ^ 0x4B55) - ((*(v3 + 204) << (61 * ~v0 - 12)) & 0x2E261538) - 1467;
  return (*(v2 + 8 * (v0 ^ (480 * LODWORD(STACK[0x2810])))))();
}

uint64_t sub_244A89AD0@<X0>(int a1@<W8>)
{
  v3 = *STACK[0x2548];
  STACK[0x2870] = (4 * a1) ^ 0x5CF4u;
  v4 = (v1 ^ 0xE4C317) + 402114956 + ((v1 << (((4 * a1) ^ 0xF4) - 23)) & 0x2FEF9316 ^ 0xFE367DF9);
  v5 = ((2 * v4) & 0x7F5F67CE) + (v4 ^ 0xBFAFB3E7);
  v6 = LODWORD(STACK[0x2840]) ^ 0xE1182A61;
  v7 = *(&off_278E1E490 + a1 - 817);
  v8 = v5 + 1079004185;
  v9 = v5 + v6 - (v1 ^ 0x17130A9C);
  STACK[0x2808] = v3;
  STACK[0x2830] = v7 + 9;
  STACK[0x2800] = v7 + 798;
  LODWORD(STACK[0x2868]) = v9 + 1482250175;
  STACK[0x2828] = (v6 ^ v8 ^ (v9 + 1079004185)) << 32;
  v10 = *(v2 + 8 * a1);
  LODWORD(STACK[0x2878]) = 1848116861;
  return v10(16585);
}

uint64_t sub_244A8A2C4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(STACK[0x2860]) = a4 & 0xF7E547CF;
  v6 = v5 ^ ((LODWORD(STACK[0x2858]) - 647254847) + STACK[0x2828]);
  STACK[0x2870] = a4 & 0xF7E547CF ^ 0x4F95;
  v7 = (v6 ^ 0xCE6C8C92C6D0D611) / (a4 & 0xF7E547CF ^ 0x4478A311272DB80FuLL) * (a4 & 0xF7E547CF ^ 0x4478A311272DB80FLL);
  STACK[0x2838] = ((2 * ((v6 ^ 0xCE6C8C92C6D0D611) - v7)) & 0xFFCFF92FFFFBFE3ELL) + (((v6 ^ 0xCE6C8C92C6D0D611) - v7) ^ 0x7FE7FC97FFFDFF1FLL);
  LODWORD(STACK[0x2858]) = LODWORD(STACK[0x2868]) < 0x18090BA6;
  STACK[0x2820] = ((a4 & 0xF7E547CF) - 859) | 0xD08;
  v8 = LODWORD(STACK[0x2878]) - 1444870870;
  v9 = LODWORD(STACK[0x2858]) ^ (v8 < 0x18090BA6);
  v10 = v8 < LODWORD(STACK[0x2868]);
  if (v9)
  {
    v11 = STACK[0x2858];
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v4 + 8 * (LODWORD(STACK[0x2860]) ^ (54 * v11)));
  ++LODWORD(STACK[0x2878]);
  return v12();
}

uint64_t sub_244A8BF10()
{
  v1 = STACK[0x2870];
  LODWORD(STACK[0x2858]) = *(STACK[0x2848] + 4 * (LODWORD(STACK[0x2878]) - 1848116861));
  return (*(v0 + 8 * v1))();
}

uint64_t sub_244A8BF68@<X0>(unsigned int a1@<W8>)
{
  v9 = a1 < v2;
  v10 = v2 + v4 + 1;
  v11 = v9 ^ (v10 < v2);
  v12 = v10 < a1;
  if (!v11)
  {
    LOBYTE(v9) = v12;
  }

  return (*(v6 + 8 * ((((v9 ^ (v3 + v8)) & 1) * (((v3 ^ v5) * v7) ^ v1)) ^ v3)))();
}

uint64_t sub_244A8C4F4@<X0>(uint64_t a1@<X1>, char a2@<W3>, uint64_t a3@<X8>)
{
  v11 = STACK[0x2820];
  v12 = STACK[0x2558];
  v12[38] = v7 ^ 0x56;
  v13 = STACK[0x2560];
  v13[95] = HIBYTE(v7) ^ 0x25;
  v14 = STACK[0x2808];
  v14[18] = a2 ^ 0xAA;
  v13[102] = BYTE1(v7) ^ 0xA0;
  *v12 = (61 * (v11 ^ 0x2B) + 76) ^ HIBYTE(a1);
  v15 = STACK[0x2550];
  v15[6] = BYTE6(v10) ^ 0x4F;
  v16 = (WORD1(v3) ^ 0x80EF) - ((2 * (WORD1(v3) ^ 0x80EF)) & 0x1F054) - 1950877654;
  v15[61] = BYTE1(a1) ^ 0xD3;
  v13[160] = BYTE5(v10) ^ 0x4B;
  v12[14] = BYTE3(a1) ^ 0xC0;
  v17 = STACK[0x2818];
  v17[73] = HIBYTE(v10) ^ 2;
  v14[10] = BYTE2(v7) ^ 0x84;
  v14[25] = v3 ^ 0xC5;
  v14[27] = BYTE6(a1) ^ 0x4B;
  v12[45] = BYTE1(v3) ^ 0x52;
  v12[46] = BYTE4(v10) ^ 0x98;
  v17[359] = BYTE4(a1) ^ 0x63;
  v18 = (v5 ^ 0x53E42FFF80EF52C5uLL) >> (v6 & 0x20 ^ 0x20) >> (v6 & 0x20);
  v15[21] = BYTE2(a1) ^ 0x37;
  v12[12] = BYTE5(a1) ^ 0x3B;
  v19 = STACK[0x2830];
  v20 = *(STACK[0x2830] + (((BYTE2(v3) ^ 0xEF) - ((2 * (BYTE2(v3) ^ 0xEF)) & 0x54) + 42) ^ 1));
  v21 = (((BYTE2(v3) ^ 0xEF) - ((2 * (BYTE2(v3) ^ 0xEF)) & 0x54) + 50) & 4 | 0x28) ^ v16 ^ v16 & 0xFB;
  v13[27] = ((v18 - ((2 * v18) & 0x98) + 76) & 0x98 ^ 0x6F) & ((v18 - ((2 * v18) & 0x98) + 76) ^ 0x4C);
  v17[184] = BYTE5(v3) ^ 0x2F;
  v12[33] = BYTE3(a3) ^ 0x5C;
  v14[8] = BYTE6(v3) ^ 0xE4;
  v15[41] = HIBYTE(v5) ^ 0x53;
  v13[198] = a3 ^ 0x10;
  HIDWORD(v22) = v20 ^ ~v21;
  LODWORD(v22) = (v20 ^ v21 ^ 0xFFFFFF83) << 24;
  v17[250] = (v22 >> 25) ^ 0x41;
  v14[13] = BYTE3(v3) ^ 0x80;
  v13[55] = BYTE1(a3) ^ 0x3A;
  v12[15] = BYTE4(a3) ^ 0x1E;
  v13[43] = BYTE2(a3) ^ 0x60;
  v14[17] = BYTE5(a3) ^ 0x1C;
  v23 = *(v19 + (BYTE6(v4) ^ 0x83));
  HIDWORD(v22) = ~v23;
  LODWORD(v22) = (v23 ^ 0x28) << 24;
  v12[41] = v22 >> 25;
  v24 = STACK[0x2800];
  v25 = *(STACK[0x2800] + (HIBYTE(v9) ^ 0x5C));
  v15[74] = (BYTE5(v6) & 0x26 ^ 0xF9) & (BYTE5(v6) & 0xD9 ^ 0xEF);
  v15[54] = v6 ^ 0xFB;
  v13[141] = BYTE1(v6) ^ 0xF9;
  v12[29] = BYTE4(v6) ^ 0xD6;
  v13[44] = BYTE3(v6) ^ 0x93;
  v15[9] = BYTE2(v6) ^ 0x21;
  v12[13] = (((HIBYTE(v9) ^ 0xC1) + v25 - 119) ^ 0xF5) - 34;
  v26 = *(v24 + (BYTE6(v6) ^ 0xALL));
  v17[185] = HIBYTE(v6) ^ 0x5F;
  v13[220] = (((BYTE6(v6) ^ 0xEF) + ((2 * BYTE6(v6)) & 0xF0 ^ 0x2F) + v26 + 2) ^ 0xF5) - 34;
  STACK[0x2818] = *STACK[0x2600];
  return (*(v8 + 8 * v11))();
}

uint64_t sub_244A8C86C()
{
  *(STACK[0x2818] + 204) = (v0 ^ 0x17130A9C) + 1;
  LODWORD(STACK[0x28B0]) = (*(STACK[0x2560] + 32) ^ (v1 - 4331412)) + 231077343 + ((*(STACK[0x2560] + 32) << (v1 - 12)) & 0xFF7C3EF2);
  return (*(v2 + 8 * (v1 ^ (86 * LODWORD(STACK[0x2810])))))();
}

uint64_t sub_244A8C8E4()
{
  v3 = v0 - 11469;
  v4 = (v0 + 1250064614) & 0xB57D575E;
  v5 = *STACK[0x2600];
  v6 = *STACK[0x2548];
  v7 = STACK[0x2840];
  v8 = ((2 * (v1 - 226760024 + (v7 ^ 0xE1182A61))) & 0xBFDE597A) + ((v1 - 226760024 + (v7 ^ 0xE1182A61)) ^ 0x5FEF2CBD);
  STACK[0x2870] = v4;
  v9 = ((2 * v7) & 0xFFF9FFE6 ^ 0xD2E09C44) + 193062 + ((v4 + 378317447) ^ v7);
  v10 = (v9 + ((v9 + (v7 ^ 0x1EE7D59E) + 3560) ^ 0xFFFFFFFE) + 3559) ^ (v1 - 226760024);
  v11 = v10 - ((2 * v10) & 0xBCD08178) + 1583890620;
  STACK[0x2818] = v6;
  v12 = *(&off_278E1E490 + v3 - 1191);
  STACK[0x2820] = v12 + 541;
  v13 = v11 ^ (v8 - v1 - ((2 * (v8 - v1) + 455725366) & 0x3CD08178) + 201140567);
  v14 = ((2 * (v11 ^ v7)) & 0xCF2FDF6E ^ 0x4E20D52A) + (v11 ^ v7 ^ 0xD8E7856A);
  STACK[0x2808] = v12 - 2;
  LODWORD(STACK[0x2810]) = -56;
  STACK[0x2828] = v5;
  v15 = v8 - 2 * v13 + 947446668 + v14;
  STACK[0x2858] = (v14 - 1738010551) << 32;
  v16 = *(v2 + 8 * v3);
  LODWORD(STACK[0x2840]) = 196358;
  LODWORD(STACK[0x2860]) = v15;
  LODWORD(STACK[0x2838]) = v15 - 778346495;
  LODWORD(STACK[0x2878]) = 90973310;
  LODWORD(STACK[0x2830]) = 112122;
  return v16();
}

uint64_t sub_244A8CEBC()
{
  v2 = LODWORD(STACK[0x2860]) > 0x2E649FFE;
  STACK[0x2870] = 2 * (v1 ^ 0x35ADu);
  v3 = LODWORD(STACK[0x2878]) - 869319804;
  v4 = v3 < LODWORD(STACK[0x2838]);
  if (v2 != v3 < 0xD19B6001)
  {
    v4 = v2;
  }

  v5 = *(v0 + 8 * (v1 ^ (95 * !v4)));
  ++LODWORD(STACK[0x2878]);
  return v5();
}

uint64_t sub_244A8EBC8()
{
  v1 = STACK[0x2870];
  LODWORD(STACK[0x2868]) = *(STACK[0x2848] + 4 * (LODWORD(STACK[0x2878]) + ((STACK[0x2870] + 10831) ^ 0xFA93EA23)));
  return (*(v0 + 8 * v1))();
}

uint64_t sub_244A8EC2C@<X0>(int a1@<W5>, int a2@<W6>, unsigned int a3@<W8>)
{
  v7 = v6 < a3;
  v8 = v4 + v3 + (v3 ^ a1) * a2;
  v9 = v7 ^ (v8 < a3);
  v10 = v6 > v8;
  if (!v9)
  {
    v7 = v10;
  }

  return (*(v5 + 8 * ((30 * v7) ^ v3)))();
}

uint64_t sub_244A8F318()
{
  v7 = STACK[0x2550];
  v7[35] = BYTE4(v4) ^ 0x13;
  v8 = STACK[0x2828];
  v8[234] = (((v6 + 71) & 0xBF) + 108) ^ BYTE1(v4);
  v8[194] = BYTE1(v2) ^ 0xCC;
  v9 = STACK[0x2558];
  v9[20] = BYTE2(v4) ^ 0xB0;
  v10 = STACK[0x2560];
  v10[117] = HIBYTE(v4) ^ 0x1C;
  v9[9] = BYTE3(v4) ^ 6;
  v8[31] = v4 ^ 0xB0;
  v11 = STACK[0x2818];
  *(v11 + 14) = BYTE5(v4) ^ 3;
  *(v11 + 11) = BYTE6(v4) ^ 0x68;
  v8[264] = BYTE2(v2) ^ 0x9E;
  v10[192] = v2 ^ 0xEF;
  v12 = STACK[0x2808];
  v13 = *(STACK[0x2808] + (((v2 >> 18) & 0xC0 | (v2 >> 26)) ^ 0xA6));
  v14 = STACK[0x2810];
  v15 = ((v14 + 104 * v13) ^ (v13 + 93)) - ((2 * ((v14 + 104 * v13) ^ (v13 + 93))) & 0x2E) - 105;
  v9[16] = (v15 ^ 0x97) + ((2 * v15) & 0xEF ^ 0xD1) + 20;
  v16 = *(v12 + (((v2 >> 26) & 0xC0 | (v2 >> 34) & 0x3F) ^ 0x5D));
  v17 = v16 - ((2 * v16 - 70) & 0xD8) + 73;
  v7[72] = v1 ^ 0xB7;
  v8[247] = BYTE5(v2) ^ 0x6E;
  v7[16] = HIBYTE(v2) ^ 0x46;
  v8[284] = BYTE6(v2) ^ 0x6B;
  v10[75] = (v17 ^ 0x9B ^ (104 * (v17 ^ 0xC))) - 100;
  v18 = STACK[0x2820];
  v19 = *(STACK[0x2820] + (((v1 >> 5) & 0xF8 | (v1 >> 13)) ^ 0x7C));
  v7[97] = BYTE3(v1) ^ 6;
  v10[80] = BYTE2(v1) ^ 0xDB;
  v10[23] = (((v19 >> 5) | (8 * v19)) ^ 0xA) + 22;
  v20 = *(v12 + (((v1 >> 26) & 0xC0 | (v1 >> 34) & 0x3F) ^ 0x8E));
  v7[12] = BYTE5(v1) ^ 0x3E;
  v7[94] = BYTE1(v3) ^ 0x33;
  v9[36] = v3 ^ 0xFE;
  v7[40] = BYTE3(v3) ^ 0x69;
  v8[313] = HIBYTE(v1) ^ 0xF7;
  v8[202] = BYTE2(v3) ^ 0x87;
  v9[43] = BYTE4(v3) ^ 0xE9;
  v10[213] = BYTE6(v1) ^ 0xEB;
  v9[25] = ((v20 + 93) ^ (v14 + 104 * v20) ^ 0x77) - 100;
  v21 = *(v18 + (((v3 >> 37) & 0xF8 | (v3 >> 45) & 7) ^ 0xCE));
  v7[93] = BYTE6(v3) ^ 0x20;
  v10[140] = BYTE1(v0) ^ 0x10;
  v10[171] = HIBYTE(v3) ^ 0x7D;
  v9[2] = v0 ^ 0x7F;
  v7[91] = (((v21 >> 5) | (8 * v21)) ^ 0xA) + 22;
  v10[39] = BYTE5(v0) ^ 0x16;
  v8[75] = BYTE3(v0) ^ 0x44;
  v8[104] = BYTE2(v0) ^ 0xD8;
  v8[98] = BYTE6(v0) ^ 0x75;
  v10[170] = BYTE4(v0) ^ 0x19;
  v8[136] = HIBYTE(v0) ^ 0xCC;
  return (*(v5 + 8 * v6))();
}

uint64_t sub_244A8F678@<X0>(int a1@<W8>)
{
  v2 = STACK[0x28D0];
  v3 = *(v1 + 8 * (a1 - 267));
  LODWORD(STACK[0x2878]) = a1 - 14935;
  return v3(v2, (a1 - 14935) ^ 0x8Cu, 457430817, 2432, 4212663509, 3170164658, 147101200, 4289585136);
}

uint64_t sub_244A8FA40@<X0>(int a1@<W8>)
{
  v2 = *(v1 + 8 * a1);
  STACK[0x1DE0] = *(&off_278E1E490 + (a1 ^ 0x1CF0)) - 8;
  return v2(738345978);
}

uint64_t sub_244A8FD88@<X0>(int a1@<W1>, int a2@<W2>, int a3@<W8>)
{
  v5 = ((1637824192 * a2) | ((1501986011 * a2 - 334054959) >> 26)) + 95319104;
  v6 = ((2 * v5) & 0xE897EB7E) + (v5 ^ 0x744BF5BF);
  HIDWORD(v7) = a1 + 194;
  LODWORD(v7) = -1239008767 * a1 + 1893952706;
  v8 = ((2 * (v7 >> 9)) & 0xFE8E5B7A) + ((v7 >> 9) ^ 0x7F472DBD);
  v9 = ((2 * ((-503349248 * v3) | ((-1235631105 * v3) >> 17))) & 0xFED7DE7E) + (((-503349248 * v3) | ((-1235631105 * v3) >> 17)) ^ 0x7F6BEF3F);
  v10 = v6 - v8 - 264632664 * a3 + ((-1106820907 * a3 + 1933006238) >> 29) + v9 - 2011780014;
  v11 = ((-1677721600 * v10) | ((1004281255 * v10 - 693082965) >> 6)) - 1409286144;
  v12 = ((2 * v11) & 0xBFDDDCFE) + (v11 ^ 0x5FEEEE7F);
  v13 = ((-882882856 * v8) | ((-110360357 * v8 - 1007552687) >> 29)) + 529513096;
  v14 = ((2 * v13) & 0x7ADEDDD6) + (v13 ^ 0xBD6F6EEB);
  v15 = ((-1676501888 * v9) | ((-281533127 * v9 - 526671879) >> 25)) + 1305476224;
  v16 = ((2 * v15) & 0x5FF736B4) + (v15 ^ 0x2FFB9B5A);
  v17 = ((-1925308416 * v6) | ((1533831665 * v6 - 887205839) >> 19)) + v14 - v16 - 158406823 + v12;
  v18 = (((-1444156271 * v12 - 1606887919) >> 6) | (1140850688 * v12)) + 1140850688;
  v19 = ((2 * v18) & 0xEDFFBDCE) + (v18 ^ 0x76FFDEE7);
  v20 = ((-579207168 * v17) | ((1982918333 * v17 - 1179914373) >> 15)) - 554303488;
  v21 = ((2 * v20) & 0x49FD6AFA) + (v20 ^ 0xA4FEB57D);
  v22 = ((472369996 * v16) | ((1191834323 * v16 + 781836498) >> 30)) - 1167621304 - 2 * ((((472369996 * v16) | ((1191834323 * v16 + 781836498) >> 30)) - 1167621304) & 0x58500307 ^ (472369996 * v16) & 4) + 1481638659;
  v23 = (((568467456 * v14) | ((-1940320495 * v14 - 798565019) >> 19)) - v19 + v21 - 1381119638) ^ v22;
  v24 = ((2 * v23) & 0xBB95D7FE ^ 0xB0800606) + (v23 ^ 0x859AE8FC);
  v22 ^= 0x58500303u;
  v25 = ((-637398528 * v19) | ((-622001911 * v19 - 1085848863) >> 23)) - 1903836672 - 2 * ((((-637398528 * v19) | ((-622001911 * v19 - 1085848863) >> 23)) - 1903836672) & 0x129AE2F3 ^ ((-622001911 * v19 - 1085848863) >> 23) & 0x20) - 1835343149;
  v26 = ((-400556032 * v21) | ((1121253185 * v21 - 726380477) >> 11)) + 140509184 - 2 * ((((-400556032 * v21) | ((1121253185 * v21 - 726380477) >> 11)) + 140509184) & 0x57C5FC54 ^ ((1121253185 * v21 - 726380477) >> 11) & 0x10) - 674890684;
  v27 = ((-578027520 * v24) | ((751908707 * v24 + 581170019) >> 14)) - 846462976 - 2 * ((((-578027520 * v24) | ((751908707 * v24 + 581170019) >> 14)) - 846462976) & 0x782A0BBF ^ ((751908707 * v24 + 581170019) >> 14) & 0x11) + 2016021422;
  HIDWORD(v7) = 179275401 * v22;
  LODWORD(v7) = 179275401 * v22;
  v28 = ((v7 >> 31) - 2 * ((v7 >> 31) & 0x129AE2DB ^ (18 * v22) & 8) - 1835343149) ^ v25;
  v29 = (v28 - ((2 * v28) & 0xAF8BF888) - 674890684) ^ v26;
  v26 ^= 0xD7C5FC44;
  v30 = (v27 ^ 0x782A0BAE) + v29 - ((2 * ((v27 ^ 0x782A0BAE) + v29)) & 0xDAA3F7C8) - 313394204;
  v31 = -452853717 * (v27 ^ (1395913287 * (v26 + (v25 ^ 0x929AE2D3)) - ((-1503140722 * (v26 + (v25 ^ 0x929AE2D3))) & 0xF054175C) + 2016021422)) - (v30 ^ 0xED51FBE4);
  v32 = ((2 * v31) & 0xEFEE3FD6) + (v31 ^ 0xF7F71FEB);
  v33 = v32 - ((2 * v32 + 2023819238) & 0xA24AC3AA) - 1921653304;
  LODWORD(STACK[0x2800]) = v30;
  v34 = v33 ^ v30;
  v35 = ((2 * (v26 - (v33 ^ 0xD12561D5))) & 0x7EEFDFB6) + ((v26 - (v33 ^ 0xD12561D5)) ^ 0x3F77EFDB);
  LODWORD(STACK[0x2838]) = v33 ^ v27;
  v36 = v33 ^ v27 ^ 0xA90F6A7B;
  LODWORD(STACK[0x27C0]) = v33 ^ v30;
  LODWORD(STACK[0x27F8]) = v35;
  v37 = ((818343936 * v36) | ((-708637585 * v36) >> 20)) - 2 * (((818343936 * v36) | ((-708637585 * v36) >> 20)) & 0x306084DF ^ ((-708637585 * v36) >> 20) & 0x10) + 811631823;
  v38 = ((-767033344 * v35) | ((2008595017 * v35 - 1876984691) >> 13)) - 462946304;
  v39 = ((2 * v38) & 0x7FFF38BA) + (v38 ^ 0xBFFF9C5D);
  v40 = (1855832064 * (v34 ^ 0x3C749A31)) | ((50969207 * (v34 ^ 0x3C749A31u)) >> 18);
  v41 = ((2 * v40) & 0xFFFF2DB4) + (v40 ^ 0x7FFF96DA);
  v42 = ((-162201600 * (v33 ^ 0xD12561D5)) | ((1678112341 * (v33 ^ 0xD12561D5)) >> 16)) - 1073767331 - v39;
  v43 = v41 - 844207034 + ((v42 - ((2 * v42) & 0x60C1099E) + 811631823) ^ v37);
  v44 = ((-1749024768 * v43) | ((579010143 * v43 - 1357703392) >> 10)) - 939524096;
  v45 = ((2 * v44) & 0xA6BBB9FE) + (v44 ^ 0x535DDCFF);
  v46 = (-1476395008 * (v37 ^ 0x306084CF)) | ((1756454485 * (v37 ^ 0x306084CF)) >> 5);
  v47 = ((2 * v46) & 0xF5FDFE78) + (v46 ^ 0x7AFEFF3C);
  v48 = ((-638758912 * v41) | ((-1408393515 * v41 - 1607798626) >> 20)) - 1358307328;
  v49 = ((2 * v48) & 0xD576EDE6) + (v48 ^ 0xEABB76F3);
  v50 = ((-1652173048 * v39) | ((-1817134367 * v39 - 1580466109) >> 29)) - v49 + v47 + 948936746 + v45;
  v51 = ((687889920 * v45) | ((-996900817 * v45 - 1009193681) >> 23)) - 1311089152;
  v52 = ((2 * v51) & 0xDEA6F956) + (v51 ^ 0xEF537CAB);
  v53 = ((-1114326081 * v50 - 1584152102) >> 6) - (v50 << 26) + 1744830464;
  v54 = ((2 * v53) & 0xEBF9A7B4) + (v53 ^ 0x75FCD3DA);
  v55 = ((-964820992 * v49) | ((1952539455 * v49 - 1899314893) >> 15)) - 2107244544 - 2 * ((((-964820992 * v49) | ((1952539455 * v49 - 1899314893) >> 15)) - 2107244544) & 0x1E6D98DF ^ ((1952539455 * v49 - 1899314893) >> 15) & 0xC) - 1636984621;
  v56 = (((-1826904456 * v47) | ((1919120591 * v47 - 1812697476) >> 29)) + v52 + 978523223 + v54 + 3844) ^ v55;
  v57 = ((2 * v56) & 0xFF6DFFFE ^ 0x3C4931A6) + (v56 ^ 0x61DB672C);
  v58 = ((1662681088 * v52) | ((704824885 * v52 - 638259559) >> 17)) + 2001502208 - 2 * ((((1662681088 * v52) | ((704824885 * v52 - 638259559) >> 17)) + 2001502208) & 0x71B6CC71 ^ ((704824885 * v52 - 638259559) >> 17) & 0x11) + 1907805280;
  v59 = ((1116022144 * v54) | ((142936651 * v54 - 1369085150) >> 25)) + 850759936;
  v60 = v59 - ((2 * v59) & 0x72EDD3BE) + 964094431;
  v61 = v58 ^ (((29360128 * (v55 ^ 0x9E6D98D3)) | ((-964272121 * (v55 ^ 0x9E6D98D3)) >> 10)) - 2 * (((29360128 * (v55 ^ 0x9E6D98D3)) | ((-964272121 * (v55 ^ 0x9E6D98D3)) >> 10)) & 0x71B6CC7B ^ ((-964272121 * (v55 ^ 0x9E6D98D3)) >> 10) & 0x1B) + 1907805280);
  v62 = ((323223552 * v57) | ((1968374993 * v57 - 722729775) >> 14)) + 323223552 - 2 * ((((323223552 * v57) | ((1968374993 * v57 - 722729775) >> 14)) + 323223552) & 0x29FD26FE ^ ((1968374993 * v57 - 722729775) >> 14) & 0x14) + 704456426;
  v63 = (v62 ^ 0x29FD26EA) + ((v61 - ((2 * v61) & 0x72EDD3BE) + 964094431) ^ v60);
  v64 = v63 - ((2 * v63) & 0xDF8C4F10) - 272226424;
  v65 = (v62 ^ ((v58 ^ 0x48C025BF ^ v60) - ((2 * (v58 ^ 0x48C025BF ^ v60) + 1671701154) & 0x53FA4DD4) - 1680918469)) + (v64 ^ 0xEFC62788);
  v66 = v65 - 1525976875;
  v67 = v65 - 1525976875 - ((2 * v65 - 989077234) & 0x850B005C) - 32;
  v68 = ((2 * ((v60 ^ 0x3976E9DF) - (v67 ^ 0xC285802E))) & 0xDFDEF65A) + (((v60 ^ 0x3976E9DF) - (v67 ^ 0xC285802E)) ^ 0x6FEF7B2D);
  v69 = (v62 ^ 0x29FD26EA) - (v67 ^ 0xC285802E);
  v70 = -1281758319 * (v67 ^ 0xC285802E);
  v71 = v69 - ((2 * v69) & 0xD39D610E) + 1775153287;
  LODWORD(STACK[0x2840]) = v71;
  LODWORD(STACK[0x2738]) = v67;
  v72 = v67 ^ v64;
  v73 = ((271581184 * v68) | ((-1477816061 * v68 - 132755079) >> 12)) + 395313152;
  v74 = ((2 * v73) & 0xF67FEA1E) + (v73 ^ 0x7B3FF50F);
  HIDWORD(v7) = v66 ^ 2;
  LODWORD(v7) = v70;
  v75 = v7 >> 2;
  HIDWORD(v7) = v69;
  LODWORD(v7) = -2062418337 * (v71 ^ 0x69CEB087);
  v76 = ((2 * (v7 >> 1)) & 0xF9BE7FF2) + ((v7 >> 1) ^ 0xFCDF3FF9);
  LODWORD(STACK[0x27F0]) = v72;
  HIDWORD(v7) = v72 ^ 2;
  LODWORD(v7) = -1068104323 * (v72 ^ 0x2D43A7A6);
  v77 = ((2 * (v7 >> 2)) & 0xF9E5FDBE) + ((v7 >> 2) ^ 0xFCF2FEDF);
  v78 = (((-1861205997 * (v75 - v77 + v74 - 1797965614 + v76) + 1500906335) >> 3) | (1610612736 * (v75 - v77 + v74 - 1797965614 + v76))) - 0x20000000;
  v79 = ((2 * v78) & 0xC7FFFE96) + (v78 ^ 0xE3FFFF4B);
  v80 = (-1390411776 * v76) | ((-710032023 * v76 + 334439903) >> 11);
  v81 = ((2 * (v80 - 1142947840)) & 0xE86B37AC) + ((v80 - 1142947840) ^ 0xF4359BD6);
  v82 = ((-538378240 * v77) | ((-576004119 * v77 + 1471923721) >> 16)) - 972488704 - 2 * ((((-538378240 * v77) | ((-576004119 * v77 + 1471923721) >> 16)) - 972488704) & 0x4EB705B ^ ((-576004119 * v77 + 1471923721) >> 16) & 2) - 2064945063;
  v83 = (((-1153660928 * v74) | ((-287873135 * v74 - 1282135679) >> 21)) - v81 - 1316903797 + v79) ^ v82;
  v84 = ((2 * v83) & 0xFFFB78FA ^ 0x9D260B2) + (v83 ^ 0x7B16CC24);
  v85 = v82 ^ 0x84EB7059;
  v86 = -739738181 * v81 - 741364562;
  v87 = ((1740129792 * v84) | ((1320410147 * v84 + 283954921) >> 23)) - 643968512;
  v88 = ((2 * v87) & 0xEBFF66F6) + (v87 ^ 0x75FFB37B);
  v89 = ((-1804212224 * v79) | ((-2041409859 * v79 - 1537283167) >> 21)) - 144898048;
  v90 = ((2 * v89) & 0xAFBFF176) + (v89 ^ 0xD7DFF8BB);
  v91 = 527351808 * v81;
  v92 = ((2 * ((-510493696 * v85) | ((-558340961 * v85) >> 22))) & 0xFFBFB7EE) + (((-510493696 * v85) | ((-558340961 * v85) >> 22)) ^ 0xFFDFDBF7);
  v93 = v91 & 0xFFFFC000 | (v86 >> 18);
  v94 = -1704977075 * v90 - 296419135;
  v95 = 1770026292 * v90 - 1185676540;
  v96 = ((2 * (v93 - v92 - v90 - v88 + 954927149)) & 0xFCFF3A96) + ((v93 - v92 - v90 - v88 + 954927149) ^ 0xFE7F9D4B);
  v97 = 504062149 * v88 + 782484057;
  v98 = -524940208 * v88;
  v99 = STACK[0x2878];
  v100 = *(&off_278E1E490 + LODWORD(STACK[0x2878]) - 6168) - 8;
  STACK[0x2698] = v100;
  LODWORD(v100) = ((*(v100 + ((v94 >> 28) & 0xC ^ 0x4CLL)) ^ 0x22) - 73) ^ v95;
  v101 = ((2 * v100) & 0xC2DE146E) + (v100 ^ 0xE16F0A37);
  LODWORD(v100) = (v98 & 0xFFFFFFF0 | (v97 >> 28)) - 365156976 - 2 * (((v98 & 0xFFFFFFF0 | (v97 >> 28)) - 365156976) & 0x1644FD7F ^ (v97 >> 28) & 8) + 373620087;
  v102 = ((-826989660 * v96 - 206112012) & 0xFFFFFFFC | ((-206747415 * v96 - 51528003) >> 30)) - 2 * (((-826989660 * v96 - 206112012) & 0x48F75E14 | ((-206747415 * v96 - 51528003) >> 30) & 0x48F75E17) ^ (-826989660 * v96 - 206112012) & 0x14) + 1224171011;
  v103 = v102 ^ 0x48F75E03;
  v104 = ((192937984 * v92) | ((1349105359 - 202036713 * v92) >> 9)) + (v100 ^ 0xE9BB0288) + (v102 ^ 0x48F75E03) - v101 + 1223625272;
  v105 = ((2 * v104) & 0x777A779C) + (v104 ^ 0x3BBD3BCE);
  v106 = (v102 ^ 0x2EF7EE5B ^ ((v100 ^ 0x1644FD77) + 512234953 + v101 + 581632 - ((2 * ((v100 ^ 0x1644FD77) + 512234953 + v101 + 581632) + 1703214858) & 0x91EEBC06) - 71705208)) - v105;
  v107 = -462516843 * (v106 + 1533688063) - ((-925033686 * (v106 + 1533688063) - 1281537290) & 0x8F9F1024) + 564014477;
  v108 = ((2 * (v103 - (v107 ^ 0x47CF8812))) & 0x8F7E74EA) + ((v103 - (v107 ^ 0x47CF8812)) ^ 0xC7BF3A75);
  v109 = ((2 * (v105 - 1002257358 + (v107 ^ 0x47CF8812))) & 0xED755BBE) + ((v105 - 1002257358 + (v107 ^ 0x47CF8812)) ^ 0x76BAADDF);
  LODWORD(STACK[0x27E8]) = v107 ^ v100;
  HIDWORD(v7) = 225010483 * (v107 ^ v100 ^ 0x518B7565);
  LODWORD(v7) = HIDWORD(v7);
  LODWORD(v100) = ((2 * (v7 >> 29)) & 0xAF97BE5E) + ((v7 >> 29) ^ 0x57CBDF2F);
  LODWORD(STACK[0x27B0]) = v108;
  v110 = ((1345716618 * v108) | ((-1474625339 * v108 + 1468072951) >> 31)) - 1358821394;
  v111 = ((2 * v110) & 0xAEFDA5BE) + (v110 ^ 0x577ED2DF);
  LODWORD(STACK[0x27B8]) = v109;
  v112 = ((-896598336 * v109) | ((2133474299 * v109 + 1766793563) >> 26)) + 1405638336;
  v113 = ((2 * v112) & 0xFFD6EFFE) + (v112 ^ 0x7FEB77FF);
  v114 = ((-322124160 * v106) | ((-136734323 * v106 + 1939213942) >> 25)) - v100 + v111 + v113 - 1899125549;
  v115 = ((-1264398336 * v114) | ((1273711149 * v114 - 315038682) >> 20)) - 1908252672 - 2 * ((((-1264398336 * v114) | ((1273711149 * v114 - 315038682) >> 20)) - 1908252672) & 0x6D1C0297 ^ ((1273711149 * v114 - 315038682) >> 20) & 0x12) - 316931451;
  v116 = v115 ^ (((-1342177280 * v100) | ((595376843 * v100 - 1184243781) >> 4)) - 1659108731 - 2 * ((((-1342177280 * v100) | ((595376843 * v100 - 1184243781) >> 4)) - 1342177280) & 0x6D1C0295 ^ ((595376843 * v100 - 1184243781) >> 4) & 0x10));
  v117 = ((409919488 * v111) | ((940622711 * v111 - 1015276201) >> 19)) - 2085953536 - 2 * ((((409919488 * v111) | ((940622711 * v111 - 1015276201) >> 19)) - 2085953536) & 0xC8333D8 ^ ((940622711 * v111 - 1015276201) >> 19) & 8) + 209925072;
  v118 = ((-266043392 * v113) | ((-804265911 * v113 + 1156229193) >> 17)) + 1411678208 - 2 * ((((-266043392 * v113) | ((-804265911 * v113 + 1156229193) >> 17)) + 1411678208) & 0x7C3BD33F ^ ((-804265911 * v113 + 1156229193) >> 17) & 1) + 2084295486;
  v119 = v118 ^ v117 ^ (v116 + 209925072 + (~(2 * v116) | 0xE6F9985F) + 1);
  v120 = ((2 * v119) & 0x38EB677C ^ 0x3863267C) + (v119 ^ 0x604E6080);
  v121 = (1061794368 * (v115 ^ 0xED1C0285)) | ((-50518327 * (v115 ^ 0xED1C0285)) >> 26);
  v122 = ((2 * v121) & 0xFF7F6B7C) + (v121 ^ 0x7FBFB5BE);
  v123 = ((-1301200896 * v120) | ((1468451269 * v120 + 131629258) >> 18)) + 540180480;
  v124 = ((2 * v123) & 0xDBB7FDEE) + (v123 ^ 0x6DDBFEF7);
  LODWORD(v100) = (((1476395008 * (v118 ^ 0x7C3BD33E)) | ((-216070869 * (v118 ^ 0x7C3BD33E)) >> 5)) ^ 0x75DDDA7) + (((-216070869 * (v118 ^ 0x7C3BD33E)) >> 4) & 0xEBBBB4E);
  v125 = ((-1625948160 * (v117 ^ 0xC8333D0)) | ((20959115 * (v117 ^ 0xC8333D0)) >> 15)) - v100 + v122 - v124 - 176544032;
  v126 = ((2 * v125) & 0xC3FDE9BE) + (v125 ^ 0x61FEF4DF);
  v127 = ((1876326400 * v122) | ((-55706929 * v122 - 1558544546) >> 21)) - 738529280;
  v128 = ((-1686347776 * v124) | ((2146229219 * v124 - 837050885) >> 19)) + 1941921792;
  v129 = ((2 * v128) & 0xFE7FFD9E) + (v128 ^ 0x7F3FFECF);
  v130 = ((2 * v127) & 0xFBFDE7F0) + (v127 ^ 0xFDFEF3F8) + v129;
  v131 = ((158949376 * v126) | ((-1961866293 * v126 + 908492331) >> 19)) - 809148416 - 2 * ((((158949376 * v126) | ((-1961866293 * v126 + 908492331) >> 19)) - 809148416) & 0x1FDF6EBE ^ ((-1961866293 * v126 + 908492331) >> 19) & 2) - 1612747076;
  LODWORD(v100) = ((-211550208 * v100) | ((-1230111527 * v100 - 681330319) >> 14)) + v130 + 1753550137 + (v131 ^ 0x9FDF6EBC);
  v132 = v100 - ((2 * v100) & 0x40AF6E5E) - 1604864209;
  LODWORD(v100) = v132 ^ (((v130 - ((2 * v130 + 589990578) & 0x3FBEDD78) - 780880875) ^ v131) + 1385037329);
  LODWORD(v100) = ((2 * v100) & 0xFFFFFBF2 ^ 0x40AF6A52) + (v100 ^ 0xDFA84AD6);
  v133 = 1175473889 * v100 - ((-1944019518 * v100 + 371184718) & 0xD848A400) + 1999911975;
  v134 = ((2 * ((v131 ^ 0x9FDF6EBC) - (v133 ^ 0xEC245200))) & 0xF265BB76) + (((v131 ^ 0x9FDF6EBC) - (v133 ^ 0xEC245200)) ^ 0x7932DDBB);
  v135 = ((2 * (v129 - 2134900431 + (v133 ^ 0xEC245200))) & 0xC37EFE66) + ((v129 - 2134900431 + (v133 ^ 0xEC245200)) ^ 0xE1BF7F33);
  v136 = ((561905664 * v134) | ((1753747647 * v134 - 1579622021) >> 15)) - 1024065536;
  v137 = ((2 * v136) & 0xFE9BFFD2) + (v136 ^ 0x7F4DFFE9);
  v138 = ((172425216 * v137) | ((1189349959 * v137 + 64679009) >> 16)) - 329187328 - 2 * ((((172425216 * v137) | ((1189349959 * v137 + 64679009) >> 16)) - 329187328) & 0x7A8E6F9 ^ ((1189349959 * v137 + 64679009) >> 16) & 9) + 128509680;
  LODWORD(STACK[0x2730]) = v133;
  LODWORD(STACK[0x2830]) = v132;
  LODWORD(STACK[0x2818]) = v133 ^ v132;
  v139 = (1174405120 * (v133 ^ v132 ^ 0x4C73E52F)) | ((1063954595 * (v133 ^ v132 ^ 0x4C73E52Fu)) >> 7);
  v140 = ((2 * v139) & 0xBFD77BDA) + (v139 ^ 0xDFEBBDED);
  v141 = 299392923 * v140 - 204403071;
  v142 = 598785846 * v140 - 408806142;
  v143 = ((677576704 * v135) | ((-226285469 * v135 + 2046351175) >> 16)) - 683212800 - 2 * ((((677576704 * v135) | ((-226285469 * v135 + 2046351175) >> 16)) - 683212800) & 0x2C6BBEBF ^ ((-226285469 * v135 + 2046351175) >> 16) & 0x17) - 1402224984;
  LODWORD(v100) = v140 - v137 - 145833298 + (v143 ^ (((787677184 * v100) | ((-1110757645 * v100 + 1189883557) >> 16)) + 782565376 - 2 * ((((787677184 * v100) | ((-1110757645 * v100 + 1189883557) >> 16)) + 782565376) & 0x2C6BBEB9 ^ ((-1110757645 * v100 + 1189883557) >> 16) & 0x11) - 1402224984));
  LODWORD(v100) = ((-1591664640 * v100) | ((1398606089 * v100 + 561985470) >> 19)) - 809201447 - 2 * ((((-1591664640 * v100) | ((1398606089 * v100 + 561985470) >> 19)) - 419971072) & 0x68CCD0DB ^ ((1398606089 * v100 + 561985470) >> 19) & 2);
  HIDWORD(v7) = 1045962913 * (v100 ^ 0xE8CCD0D9);
  LODWORD(v7) = HIDWORD(v7);
  v144 = (v7 >> 30) - 1161765512 - ((1925252360 * (v100 ^ 0xE8CCD0D9)) & 0x7581BAF0);
  LODWORD(v100) = v100 ^ (((309973120 * (v143 ^ 0xAC6BBEA8)) | ((606401441 * (v143 ^ 0xAC6BBEA8)) >> 25)) - 2 * (((309973120 * (v143 ^ 0xAC6BBEA8)) | ((606401441 * (v143 ^ 0xAC6BBEA8)) >> 25)) & 0x68CCD0DD ^ ((606401441 * (v143 ^ 0xAC6BBEA8)) >> 25) & 4) - 389230375);
  v145 = ((v142 & 0xFFFFFFFE | (v141 >> 31)) ^ 0x5FC27BDE) + ((2 * v142) & 0xBF84F7BC);
  LODWORD(v100) = ((v100 - ((2 * v100) & 0xF51CDE0) + 128509680) ^ v138) - v145 - 2064110328;
  LODWORD(v100) = ((591809536 * v100) | ((998822291 * v100 + 3668706) >> 22)) - 538212352;
  v146 = ((2 * v100) & 0xB7DB5FD4) + (v100 ^ 0x5BEDAFEA);
  LODWORD(v100) = ((-1711013888 * v145) | ((1962894977 * v145 + 1199776034) >> 14)) - 2071461888;
  LODWORD(v100) = ((2 * v100) & 0xFFEEF3F2) + (v100 ^ 0xFFF779F9);
  v147 = (v144 ^ (((-569137190 * (v138 ^ 0x7A8E6F0)) | ((-284568595 * (v138 ^ 0x7A8E6F0)) >> 31)) - 2 * (((-569137190 * (v138 ^ 0x7A8E6F0)) & 0x3AC0DD79 | ((-284568595 * (v138 ^ 0x7A8E6F0)) >> 31)) ^ ((-284568595 * (v138 ^ 0x7A8E6F0)) >> 31)) - 1161765512)) - v100 - v146 + 1541745123;
  v148 = ((2 * v147) & 0xED3BBE3E) + (v147 ^ 0xF69DDF1F);
  v149 = (1121976320 * (v144 ^ 0xBAC0DD78)) | ((1547147799 * (v144 ^ 0xBAC0DD78)) >> 11);
  v150 = ((2 * v149) & 0xBC4DDBBC) + (v149 ^ 0x5E26EDDE);
  v151 = ((-805306368 * v148) | ((1149068573 * v148 - 1728872835) >> 4)) + 1190049857 - 2 * ((((-805306368 * v148) | ((1149068573 * v148 - 1728872835) >> 4)) - 805306368) & 0x76EEB857 ^ ((1149068573 * v148 - 1728872835) >> 4) & 0x16);
  LODWORD(v100) = ((1839947776 * v100) | ((1186164059 * v100 + 1157472125) >> 19)) - v150 + 303467998;
  v152 = v100 - ((2 * v100) & 0xED2F4522);
  LODWORD(v100) = ((-37591040 * v146) | ((396343373 * v146 + 985392798) >> 21)) - 550178816 - 2 * ((((-37591040 * v146) | ((396343373 * v146 + 985392798) >> 21)) - 550178816) & 0x7697A299 ^ ((396343373 * v146 + 985392798) >> 21) & 8) - 157834607;
  v153 = v100 ^ (v152 - 157834607);
  v154 = v151 ^ 0x76EEB841;
  v155 = ((v153 - (v151 ^ 0x76EEB841)) ^ 0x47F9F7FF) - 1207564287 + ((2 * (v153 - (v151 ^ 0x76EEB841))) & 0x8FF3EFFE);
  v156 = v155 + (v151 ^ 0xABF07FCB ^ (1808770885 * (v150 - 1579609565 + (v100 ^ 0x9685D6E)) - ((-677425526 * (v150 - 1579609565 + (v100 ^ 0x9685D6E))) & 0xEDDD7082) + 1995356225));
  v157 = v156 - ((2 * v156 - 335160036) & 0xBC143128) + 1410139938;
  v158 = ((2 * ((v157 ^ 0x5E0A1894) + v155)) & 0xFD4FB47E) + (((v157 ^ 0x5E0A1894) + v155) ^ 0x7EA7DA3F);
  v159 = ((2 * (v154 - (v157 ^ 0x5E0A1894))) & 0xF9BFFBFE) + ((v154 - (v157 ^ 0x5E0A1894)) ^ 0x7CDFFDFF);
  LODWORD(STACK[0x27E0]) = v157 ^ v100;
  HIDWORD(v7) = v157 ^ ~v100;
  LODWORD(v7) = 1056867259 * (v157 ^ v100 ^ 0xA89DBA05);
  LODWORD(STACK[0x2820]) = v159;
  v160 = ((2 * (v7 >> 1)) & 0x74F7D2EE) + ((v7 >> 1) ^ 0xBA7BE977);
  LODWORD(v100) = ((-474267648 * v159) | ((2124648173 * v159 - 362714899) >> 18)) + 1513832448;
  v161 = ((2 * v100) & 0x77BF6FBE) + (v100 ^ 0xBBDFB7DF);
  LODWORD(STACK[0x2798]) = v158;
  LODWORD(v100) = (((-1060047223 * v158 + 1497606729) >> 6) | (603979776 * v158)) + 603979776;
  LODWORD(v100) = ((2 * v100) & 0xD7F67D7C) + (v100 ^ 0xEBFB3EBE);
  v162 = ((-1960050688 * (v157 ^ 0x5E0A1894)) | ((-415931701 * (v157 ^ 0x5E0A1894)) >> 14)) + v160 + v161 - 1092438664 + v100;
  v163 = ((253755392 * v161) | ((-573024135 * v161 - 1528467559) >> 11)) - 216006656;
  v164 = ((2 * v163) & 0xDFEFFDDE) + (v163 ^ 0x6FF7FEEF);
  LODWORD(v100) = ((-2084921344 * v100) | ((1713118677 * v100 - 1592703510) >> 19)) + 683491328;
  LODWORD(v100) = ((2 * v100) & 0xFFFEEAF4) + (v100 ^ 0xFFFF757A);
  v165 = ((-379584512 * v162) | ((2093844299 * v162 + 1428708348) >> 11)) + 2139095040 - 2 * ((((-379584512 * v162) | ((2093844299 * v162 + 1428708348) >> 11)) + 2139095040) & 0x1F4851E3 ^ ((2093844299 * v162 + 1428708348) >> 11) & 3) - 1622650400;
  v166 = v164 - v100 - 1292833269 + (v165 ^ (((-1029306368 * v160) | ((1849185473 * v160 - 1947078327) >> 21)) - 1886763008 - 2 * ((((-1029306368 * v160) | ((1849185473 * v160 - 1947078327) >> 21)) - 1886763008) & 0x1F4851FD ^ ((1849185473 * v160 - 1947078327) >> 21) & 0x1D) - 1622650400));
  v167 = 2058926097 * v166 - 56946560;
  v168 = 142606336 * v166 + 0x40000000;
  v169 = *(&off_278E1E490 + v99 - 5693) - 4;
  STACK[0x2850] = v169;
  v170 = *(v169 + ((v32 - 47) ^ 0x68));
  HIDWORD(v7) = v170 ^ 0x1D;
  LODWORD(v7) = v170 << 24;
  v171 = v7 >> 31;
  HIDWORD(v7) = v171 ^ 1;
  LODWORD(v7) = (v171 ^ 0xFFFFFFE7) << 24;
  v172 = (v7 >> 26) - ((2 * (v7 >> 26)) & 0x56);
  HIDWORD(v7) = 839556369 * (v165 ^ 0x9F4851E0);
  LODWORD(v7) = HIDWORD(v7);
  LODWORD(v169) = ((2 * (v7 >> 31)) & 0x97FD9CBA) + ((v7 >> 31) ^ 0x4BFECE5D);
  v173 = (v167 >> 9) - ((v167 >> 8) & 0xC60886) + 912458819;
  v174 = ((2 * (v173 ^ 0x36630443 | v168)) & 0x9DBDFDB4) + ((v173 ^ 0x36630443 | v168) ^ 0x4EDEFEDA);
  LODWORD(v100) = ((-986614784 * v100) | ((1978747997 * v100 - 814212434) >> 22)) - 529876992 - 2 * ((((-986614784 * v100) | ((1978747997 * v100 - 814212434) >> 22)) - 529876992) & 0x7CC05755 ^ ((1978747997 * v100 - 814212434) >> 22) & 0x10) - 54503611;
  v175 = (((-9917232 * v164) | ((-269055283 * v164 - 1940781923) >> 28)) - v169 - 1035986605 + v174) ^ v100;
  v176 = ((2 * v175) & 0xFAFFAF6E ^ 0xF880AE0A) + (v175 ^ 0x1BF80F2);
  LODWORD(v100) = v100 ^ 0xFCC05745;
  LODWORD(v169) = ((-1627220282 * v169) | ((-813610141 * v169 - 970722551) >> 31)) - 1941445102;
  LODWORD(v169) = ((2 * v169) & 0xAF93FFDA) + (v169 ^ 0xD7C9FFED);
  HIDWORD(v7) = v173 ^ 3;
  LODWORD(v7) = -341495407 * v174 + 1147661446;
  v177 = 2025895979 * v100;
  v178 = (v7 >> 4) - ((2 * (v7 >> 4)) & 0x8ED7088A) + 1198228549;
  v179 = ((2109734912 * v176) | ((1810679287 * v176 - 1359803537) >> 10)) - 608174080 - 2 * ((((2109734912 * v176) | ((1810679287 * v176 - 1359803537) >> 10)) - 608174080) & 0x41B06177 ^ ((1810679287 * v176 - 1359803537) >> 10) & 1) - 1045405322;
  LODWORD(v100) = 360710144 * v100 - ((721420288 * v100) & 0x23000000) + 294162670;
  LODWORD(STACK[0x328]) = v100;
  LODWORD(v100) = ((v100 ^ 0x118890EE) & 0xFF800000 | (v177 >> 9)) - 674627603 - v169 + (v178 ^ 0x476B8445) + (v179 ^ 0xC1B06176);
  LODWORD(v100) = ((2 * v100) & 0x7CF7E98E) + (v100 ^ 0xBE7BF4C7);
  LODWORD(v169) = (((v178 ^ 0xB8947BBA) + v169 - ((2 * ((v178 ^ 0xB8947BBA) + v169) + 1349255208) & 0x8360C2EC) - 370777718) ^ v179 ^ 0x1DEC2668) - v100;
  v180 = 677951797 * v169 - ((282161770 * v169 + 522103270) & 0x200CAF3A) - 1617580912;
  LODWORD(STACK[0x2848]) = (v180 ^ 0x6FF9A862) + v100 - ((2 * ((v180 ^ 0x6FF9A862) + v100) - 2096621964) & 0xD2AE23BA) + 719002903;
  LODWORD(STACK[0x27A8]) = v180 ^ v179;
  LODWORD(STACK[0x2870]) = v68 - 1877965613;
  LODWORD(STACK[0x2790]) = HIBYTE(v107);
  LODWORD(STACK[0x2828]) = v172 + 43;
  v181 = *(&off_278E1E490 + (v99 ^ 0x1954)) - 12;
  STACK[0x2858] = v181;
  LODWORD(STACK[0x2860]) = v181[((HIBYTE(v157) ^ 0x5E) + 71) ^ 0x39];
  LODWORD(STACK[0x2808]) = v135 + 507543757;
  LODWORD(STACK[0x27A0]) = v134 - 2033376699;
  LODWORD(STACK[0x2748]) = v180;
  LODWORD(STACK[0x2868]) = v33;
  LODWORD(STACK[0x2810]) = HIWORD(v33);
  LODWORD(STACK[0x2750]) = v107;
  LODWORD(STACK[0x27D8]) = v107 >> 8;
  LODWORD(STACK[0x2758]) = v157;
  LODWORD(STACK[0x27D0]) = v157 >> 8;
  return (*(v4 + 8 * v99))(255, 185);
}

uint64_t sub_244A921F4@<X0>(int a1@<W0>, unsigned int a2@<W1>, char a3@<W3>, char a4@<W7>, int a5@<W8>)
{
  v20 = *(STACK[0x2850] + (((LODWORD(STACK[0x2860]) ^ (((a4 - (v14 & v18)) ^ a3) - 2 * (((a4 - (v14 & v18)) ^ a3) & 0x3F ^ (a4 - (v14 & v18)) & ((v8 - 10) ^ v17)) + 57) ^ 0x40) - 34) ^ 0x68));
  HIDWORD(v22) = v20 ^ 0x1D;
  LODWORD(v22) = v20 << 24;
  v21 = v22 >> 31;
  HIDWORD(v22) = v21 ^ 1;
  LODWORD(v22) = (v21 ^ 0xFFFFFFE7) << 24;
  v23 = *(*(&off_278E1E490 + v15) + (v16 ^ (v22 >> 26)) - 3) ^ LODWORD(STACK[0x2870]);
  v24 = ((v23 ^ v6) + 1775153287 - 2 * ((v23 ^ v6) & 0x69CEB08F ^ v23 & 8)) ^ LODWORD(STACK[0x2840]);
  v25 = v10 ^ (v24 - 272226424 - ((2 * v24) & 0xDF8C4F10));
  v26 = (v25 - 1604864209 - ((2 * v25) & 0x40AF6E5E)) ^ LODWORD(STACK[0x2830]);
  v27 = (v26 - 1045405322 - ((2 * v26) & 0x8360C2EC)) ^ v9;
  v28 = (v27 + 1198228549 - ((2 * v27) & 0x8ED7088A)) ^ a5;
  v29 = (v28 - ((2 * v28) & 0xD2AE23BA) + v19) ^ LODWORD(STACK[0x2848]);
  *(v11 + 4 * ((a4 - (v14 & v18)) ^ a2)) = v5 ^ (v29 + v7 - ((2 * v29) & 0x200CAF3A));
  return (*(v12 + 8 * (((a1 == 0) * v13) ^ v8)))((a1 - 1));
}

uint64_t sub_244A92398@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, int a3@<W8>)
{
  LODWORD(STACK[0x2878]) = LODWORD(STACK[0x2810]) ^ 0xC00B7EFE;
  LODWORD(STACK[0x27C8]) = HIWORD(LODWORD(STACK[0x2758]));
  LODWORD(STACK[0x2810]) = LODWORD(STACK[0x2868]) >> 8;
  LODWORD(STACK[0x2830]) = LODWORD(STACK[0x2748]) ^ a3;
  LODWORD(STACK[0x2820]) -= 2095054335;
  v4 = *(v3 + 8 * a1);
  LODWORD(STACK[0x20E4]) = -1210476894;
  return v4(1166273370, 103, a1, 182, a2, (a1 - 8099), 1077550791, 1377752310);
}

uint64_t sub_244A924DC@<X0>(int a1@<W0>, unint64_t a2@<X1>, int a3@<W2>, char a4@<W3>, int a5@<W5>, int a6@<W6>, int a7@<W7>, int a8@<W8>)
{
  v19 = (v10 + v12) * v8 - (v13 & (2 * (v10 + v12) * v8)) + a1;
  v20 = v14 ^ a8 ^ a6 ^ *(*(&off_278E1E490 + a5) + (((*(STACK[0x2698] + ((((v9 ^ v19) >> 6) & 3 | (4 * ((v9 ^ v19) & 0x3Fu))) ^ a2)) ^ 0x22) - 73) ^ BYTE1(LODWORD(STACK[0x2868])) ^ a4) - 3);
  *(v16 + 4 * (((v10 + v12) * v8 - (v13 & (2 * (v10 + v12) * v8)) + a1) ^ v15)) = LODWORD(STACK[0x2838]) ^ 0xF2EFFB82 ^ (v20 - 1458607493 - (a7 & (2 * v20)));
  return (*(v18 + 8 * (((v11 == 0) * v17) ^ a3)))();
}

uint64_t sub_244A92594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = HIWORD(LODWORD(STACK[0x2750]));
  v8 = *(v6 + 8 * v5);
  v9 = LODWORD(STACK[0x27C8]) ^ 0x2951E4F5u;
  LODWORD(STACK[0x27B0]) = v7;
  return v8(255, 1386444286, v9, 3024556214, a5, 3659761755, v7 ^ 0xDA23CF94, 182);
}

uint64_t sub_244A92694(int a1, char a2, char a3, char a4, uint64_t a5, char a6, char a7, char a8)
{
  v22 = a7 ^ ((a3 ^ (v11 + v9 - (v10 & a2))) - (a4 & (2 * (a3 ^ (v11 + v9 - (v10 & a2))))) + a6);
  v23 = v15 ^ *(*(&off_278E1E490 + v14) + (((v22 - (a8 & (2 * v22)) - 37) ^ LODWORD(STACK[0x2878])) ^ v13) - 3);
  v24 = (v23 + 1282663727 - (v17 & (2 * v23))) ^ LODWORD(STACK[0x2818]);
  *(v20 + 4 * (v12 + (v10 & a2))) = v19 ^ (v24 + 759408550 - (v18 & (2 * v24)));
  return (*(v16 + 8 * (((a1 == 0) * v21) ^ v8)))((a1 - 1));
}

uint64_t sub_244A92754()
{
  v3 = (STACK[0x2748] & 0xFFFFFFFE ^ 0xE8ACF395 ^ (v0 - 16)) + 759336702;
  v4 = LODWORD(STACK[0x27F8]) - 1064824795;
  v5 = LODWORD(STACK[0x27B8]) - 1991945695;
  v6 = vdupq_n_s32(STACK[0x2800]);
  v7 = LODWORD(STACK[0x2798]) - 2124929599;
  v8 = vdupq_n_s32(STACK[0x2750]);
  v9 = STACK[0x2838];
  LODWORD(STACK[0x27B8]) = v4;
  v10 = vdupq_n_s32(v4 ^ v9);
  v11 = LODWORD(STACK[0x27E8]) ^ v1;
  LODWORD(STACK[0x2798]) = v5;
  v12 = LODWORD(STACK[0x27E0]) ^ LODWORD(STACK[0x2820]);
  LODWORD(STACK[0x2788]) = v7;
  v13 = *(v2 + 8 * v0);
  LODWORD(STACK[0x2820]) = 1299021099 - 1335538948 * (v3 ^ 0x974AC1BE);
  LODWORD(STACK[0x2818]) = 4 * (v3 ^ 0x974AC1BE);
  LODWORD(STACK[0x2800]) = 1623889400 * (v3 ^ 0x974AC1BE);
  LODWORD(STACK[0x27F8]) = 8 * (v3 ^ 0x974AC1BE);
  LODWORD(STACK[0x27F0]) = 1299021099 - 1335538949 * (v3 ^ 0x974AC1BE);
  LODWORD(STACK[0x2838]) = (v0 + 8906) | 0x65;
  return v13(v6, v8, vdupq_n_s32(v5 ^ v11), vdupq_n_s32(v7 ^ v12), veorq_s8(v10, vdupq_n_s32(0x5F975021u)), vdupq_n_s32(0xDAA3F7C8), vdupq_n_s32(0xED51FBE4), vdupq_n_s32(0xA316EACA));
}

uint64_t sub_244A9297C@<X0>(int a1@<W1>, int a2@<W2>, char a3@<W4>, char a4@<W6>, int a5@<W7>, int a6@<W8>, int8x16_t a7@<Q0>, int8x16_t a8@<Q1>, int8x16_t a9@<Q2>, int8x16_t a10@<Q3>, int8x16_t a11@<Q4>, int8x16_t a12@<Q5>, int32x4_t a13@<Q6>, int8x16_t a14@<Q7>)
{
  v35 = v15 + v20 - ((v22 + a1) & v24);
  v36 = a4 + v20 - ((v21 + a1) & (v24 - 2));
  v37 = LODWORD(STACK[0x27F0]) + v20 - (((a6 + v20) << v16) & v24);
  v38 = LODWORD(STACK[0x2820]) + v20 - ((LODWORD(STACK[0x2800]) + a1) & (v24 - 6));
  v39 = ((v17 ^ v37) - (v25 & (2 * (v17 ^ v37))) - 47) ^ a3;
  v40 = ((v17 ^ v38) - (v25 & (2 * (v17 ^ v38))) - 47) ^ a3;
  v41 = LODWORD(STACK[0x2860]) ^ 3;
  v42 = *(&off_278E1E490 + a5) - 8;
  v43.i32[0] = *&v42[4 * (LODWORD(STACK[0x2860]) ^ 3 ^ ((((v17 ^ v35) - (v25 & (2 * (v17 ^ v35))) - 47) ^ a3) - (v14 & (2 * (((v17 ^ v35) - (v25 & (2 * (v17 ^ v35))) - 47) ^ a3))) + 57))];
  v43.i32[1] = *&v42[4 * (LODWORD(STACK[0x2860]) ^ 3 ^ ((((v17 ^ v36) - (v25 & (2 * (v17 ^ v36))) - 47) ^ a3) - (v14 & (2 * (((v17 ^ v36) - (v25 & (2 * (v17 ^ v36))) - 47) ^ a3))) + 57))];
  v43.i32[2] = *&v42[4 * (v41 ^ (v39 - (v14 & (2 * v39)) + 57))];
  v43.i32[3] = *&v42[4 * (v41 ^ (v40 - (v14 & (2 * v40)) + 57))];
  v44 = veorq_s8(a11, v43);
  v45 = veorq_s8(vaddq_s32(vsubq_s32(v44, vandq_s8(vaddq_s32(v44, v44), a12)), a13), a7);
  v46 = veorq_s8(vaddq_s32(vsubq_s32(v45, vandq_s8(vaddq_s32(v45, v45), a14)), v27), a9);
  v47 = veorq_s8(vaddq_s32(vsubq_s32(v46, vandq_s8(vaddq_s32(v46, v46), v28)), v29), a8);
  v48 = veorq_s8(vaddq_s32(vsubq_s32(v47, vandq_s8(vaddq_s32(v47, v47), v30)), v31), a10);
  v49 = veorq_s8(v34, vaddq_s32(vsubq_s32(v48, vandq_s8(vaddq_s32(v48, v48), v32)), v33));
  *(v19 + 4 * (v35 ^ v26)) = v49.i32[0];
  *(v19 + 4 * (v36 ^ v26)) = v49.i32[1];
  *(v19 + 4 * (v37 ^ v26)) = v49.i32[2];
  *(v19 + 4 * (v38 ^ v26)) = v49.i32[3];
  return (*(v23 + 8 * (v18 ^ (16 * (a2 != 0)))))();
}

uint64_t sub_244A92CA0(char a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  v19 = *(&off_278E1E490 + v13) - 12;
  STACK[0x2800] = v19;
  v20 = v19[(v10 + v12) ^ v8];
  v21 = *(*(&off_278E1E490 + a3) + (a1 ^ ((v20 ^ v9) - (v14 & (2 * (v20 ^ v9))) + 43)));
  *(v16 + 4 * (v20 ^ v15)) = LODWORD(STACK[0x2870]) ^ LODWORD(STACK[0x2808]) ^ LODWORD(STACK[0x2830]) ^ a8 ^ (v21 - ((a5 + 2 * v21) & a6) + a7);
  return (*(v18 + 8 * (((v11 == 0) * v17) ^ LODWORD(STACK[0x2838]))))();
}

uint64_t sub_244A92E80(int a1, uint64_t a2, int a3, int a4, int a5, char a6, uint64_t a7)
{
  v15 = *(STACK[0x2858] + (v10 ^ v12));
  v16 = a3 ^ (*(*(&off_278E1E490 + v13) + ((v9 ^ v15) ^ 0xFu) - 2) + a1);
  *(a7 + 4 * (v15 ^ a6)) = a5 ^ (v16 + 1014274609 - (a4 & (2 * v16)));
  return (*(v14 + 8 * (((v11 != 0) * v7) ^ v8)))();
}

uint64_t sub_244A93094@<X0>(char a1@<W0>, unsigned __int8 a2@<W2>, char a3@<W3>, char a4@<W4>, char a5@<W5>, unsigned int a6@<W6>, unsigned int a7@<W7>, unsigned int a8@<W8>)
{
  v20 = *(*(&off_278E1E490 + a7) + ((((a5 ^ ((a2 ^ (v8 - (v9 & a1))) - 2 - (((a2 ^ (v8 - (v9 & a1))) << a3) & a4))) - ((2 * (a5 ^ ((a2 ^ (v8 - (v9 & a1))) - 2 - (((a2 ^ (v8 - (v9 & a1))) << a3) & a4)))) & 0x78) - 68) ^ LODWORD(STACK[0x2810])) ^ a6));
  v21 = v15 ^ (v20 - 2 * ((v20 + v11) & v12 ^ v20 & 4) + v13);
  *(v18 + 4 * ((v8 - (v9 & a1)) ^ v17)) = v16 ^ (v21 + 1775153287 - ((2 * v21) & 0xD39D610E));
  return (*(v14 + 8 * (((v10 == 0) * v19) ^ a8)))();
}

uint64_t sub_244A9315C()
{
  v2 = *(v1 + 8 * v0);
  LODWORD(STACK[0x27F8]) = -100;
  return v2(4294967180);
}

uint64_t sub_244A93264@<X0>(int a1@<W0>, char a2@<W2>, char a3@<W3>, int a4@<W4>, int a5@<W5>, int a6@<W6>, int a7@<W7>, int a8@<W8>)
{
  v17 = *(&off_278E1E490 + v12);
  STACK[0x2830] = v17;
  v18 = ((LODWORD(STACK[0x27F8]) + *(v17 + (v8 & v10 ^ v11)) * v13) ^ a1) - 37;
  v19 = a5 ^ *(*(&off_278E1E490 + a4) + ((LODWORD(STACK[0x2828]) ^ ((a2 ^ v18) - (a3 & (2 * (a2 ^ v18))) + 43)) ^ 0xCu) - 3);
  *(v14 + 4 * (((LOBYTE(STACK[0x27F8]) + *(v17 + (v8 & v10 ^ v11)) * v13) ^ a1) - 37)) = a7 ^ (v19 + 1368094053 - (a6 & (2 * v19)));
  return (*(v16 + 8 * (((v9 != 0) * v15) ^ a8)))();
}

uint64_t sub_244A93300()
{
  LODWORD(STACK[0x2728]) = (LODWORD(STACK[0x2860]) ^ 0x19C59086) - 2 * (((v0 - 647007777) & 0x26907FAF ^ 0x3A2E) & STACK[0x2860] ^ (LODWORD(STACK[0x2860]) ^ 0x19C59086) & 0x1EEBAAEB) - 1628722454;
  v2 = *(v1 + 8 * v0);
  LODWORD(STACK[0x2720]) = 518761215;
  v3 = STACK[0x2758];
  LODWORD(STACK[0x2718]) = LODWORD(STACK[0x2758]) ^ 0x5E0A183E;
  LODWORD(STACK[0x2710]) = v3 ^ 0xC73AFAAF;
  LODWORD(STACK[0x2848]) = 115500682;
  LODWORD(STACK[0x2838]) = 710498861;
  LODWORD(STACK[0x2840]) = 1060751307;
  LODWORD(STACK[0x2828]) = -2078877998;
  return v2();
}

uint64_t sub_244A933CC@<X0>(int a1@<W8>)
{
  v4 = (a1 - 587922609) & 0x7FFFEBF5;
  LODWORD(STACK[0x2780]) = v4;
  v5 = 310 * (v4 ^ 0x5CF5296B);
  LODWORD(STACK[0x2740]) = v5;
  v6 = v1 & 0xFFFFFFF5 ^ 0xF83D57FA;
  LODWORD(STACK[0x27D8]) = v6;
  v7 = (v5 - 9623) & v1 ^ 0xF83D57FE;
  v8 = *(&off_278E1E490 + a1 - 14781) - 12;
  v9 = v8[*(&STACK[0x32F0] + v6) ^ (31 * v6 - ((62 * v6) & 0x46) - 93) ^ 0x5E];
  HIDWORD(v10) = (v9 + 35) ^ 0xEEEEEEEE;
  LODWORD(v10) = (v9 << 24) + 1660944384;
  v11 = *(&off_278E1E490 + (a1 ^ 0x3EAE)) - 4;
  STACK[0x2870] = v11;
  v12 = (((*(v11 + ((v10 >> 30) ^ 0x29)) ^ 0xC4) - 73) ^ 0xE6) << 8;
  LODWORD(v11) = v1 & 0xFFFFFFF7 ^ 0xF83D57FA;
  LODWORD(STACK[0x27F0]) = v11;
  v13 = *(&off_278E1E490 + a1 - 13851);
  v14 = v1 & 0xFFFFFFF1 ^ 0xF83D57FE;
  v15 = v12 | ((*(v13 + ((31 * v11 - ((62 * v11) & 0x46) - 93) ^ 0x82u ^ *(&STACK[0x32F0] + v11))) ^ 0x64) << 24);
  LODWORD(STACK[0x27E0]) = v1 ^ 0xF83D57F2;
  v16 = v1 & 0xFFFFFFF2 ^ 0xF83D57FF;
  LODWORD(STACK[0x27E8]) = v16;
  v17 = *(&STACK[0x32F0] + v16);
  LODWORD(STACK[0x27C0]) = v14;
  v18 = *(&off_278E1E490 + (a1 ^ 0x38BE)) - 12;
  HIDWORD(v10) = *(v18 + ((((v8[(31 * v14 - ((62 * v14) & 0x46) - 93) ^ 0xC6 ^ *(&STACK[0x32F0] + v14)] - 29) ^ 0x58) - 34) ^ 0x5DLL));
  LODWORD(v10) = (HIDWORD(v10) ^ 0xFFFFFF9F) << 24;
  LODWORD(v8) = v10 >> 28;
  HIDWORD(v10) = ~v8;
  LODWORD(v10) = (v8 ^ 0x40) << 24;
  LOBYTE(v8) = v10 >> 26;
  LODWORD(STACK[0x2820]) = v7;
  v19 = *(v13 + (((~(62 * v7) | 0xB9) - v7 + 32 * v7 - 92) ^ *(&STACK[0x32F0] + v7) ^ 0x9E)) ^ 0xCA;
  v20 = v1 & 0xFFFFFFF0 ^ 0xF83D57FF;
  LODWORD(STACK[0x27C8]) = v20;
  v21 = *(&off_278E1E490 + (a1 ^ 0x39EB)) - 8;
  v22 = v21[*(STACK[0x2800] + ((((((-64 - 2 * ~(v1 & 0xF0)) & 0x40 ^ 0xFD) + (v1 & 0xF0) + 1 + 32 * ~(v1 & 0xF0) - 92) ^ *(&STACK[0x32F0] + v20) ^ 0x20) + 71) ^ 0xF9)) ^ 0x6FLL];
  HIDWORD(v10) = ~v22;
  LODWORD(v10) = (v22 ^ 0xF0) << 24;
  v23 = STACK[0x2800];
  v24 = *(STACK[0x2800] + ((((v10 >> 25) ^ 0xFD) + 71) ^ 0xF9)) ^ 0x3F | (v19 << 24) | (v8 << 8);
  v25 = v1 & 0xFFFFFFFB ^ 0xF83D57F6;
  LODWORD(STACK[0x2818]) = v25;
  v26 = ((*(*(&off_278E1E490 + (a1 ^ 0x3824)) + (((31 * v25 - ((62 * v25) & 0x46) - 93) ^ *(&STACK[0x32F0] + v25)) ^ 0xE3u) - 4) + 58) ^ 0x28) << 24;
  v27 = v1 & 0xFFFFFFFA ^ 0xF83D57F7;
  LODWORD(STACK[0x2810]) = v27;
  v28 = a1;
  v29 = *(&off_278E1E490 + a1 - 13850) - 8;
  v30 = v26 | ((v29[(31 * v27 - ((-64 - 2 * v27) & 0x46) - 93) ^ 0x27 ^ *(&STACK[0x32F0] + v27)] ^ 0xB1) << 16);
  v31 = v1 & 0xFFFFFFF8 ^ 0xF83D57F7;
  LODWORD(STACK[0x27B8]) = v31;
  LODWORD(v21) = v21[(31 * v31 - ((62 * v31) & 0xB0) + 90) ^ 0x27 ^ *(v23 + (((*(&STACK[0x32F0] + v31) ^ 0xA3) + 71) ^ 0xF9))];
  HIDWORD(v10) = ~v21;
  LODWORD(v10) = (v21 ^ 0xF0) << 24;
  LOBYTE(v31) = v10 >> 25;
  LOBYTE(v21) = (31 * (v1 ^ 0xF2) - (((v1 << 6) - 2 * (v1 ^ 0xF2)) & 0x46) - 93) ^ 0x16 ^ *(&STACK[0x32F0] + (v1 ^ 0xF83D57F2));
  v32 = v1 & 0xFFFFFFFE ^ 0xF83D57F3;
  LODWORD(STACK[0x27B0]) = v32;
  v33 = *(&off_278E1E490 + v28 - 13436);
  LODWORD(v21) = ((*(v13 + v21) ^ 0xBE) << 24) | ((*(v23 + (((*(v33 + ((31 * v32 - ((-64 - 2 * v32) & 0x46) - 93) ^ 0xDu ^ *(&STACK[0x32F0] + v32))) ^ 0xA3) + 71) ^ 0xF9)) ^ 0xA) << 16);
  v34 = STACK[0x27F8];
  LODWORD(v13) = v24 | ((*(v33 + ((((v34 + 115 * *(STACK[0x2830] + ((111 * (v17 ^ (31 * ~(v1 & 0xF2) - ((-64 - 2 * ~(v1 & 0xF2)) & 0x46) - 93))) ^ 0x9DLL))) ^ 0x8C) - 37) ^ 0xA8)) ^ 0x8D) << 16);
  v35 = v1 & 0xFFFFFFF4 ^ 0xF83D57FB;
  LODWORD(STACK[0x27D0]) = v35;
  v36 = ((31 * v35 - ((-64 - 2 * v35) & 0x42) - 93) ^ *(&STACK[0x32F0] + v35)) ^ 6u;
  LODWORD(STACK[0x2878]) = v28;
  v37 = *(&off_278E1E490 + (v28 ^ 0x3955));
  LODWORD(v36) = *(v37 + v36);
  HIDWORD(v10) = v36 ^ 0x2B;
  LODWORD(v10) = v36 << 24;
  LOBYTE(v36) = v10 >> 30;
  v38 = v1 & 0xFFFFFFF6 ^ 0xF83D57FB;
  LODWORD(STACK[0x27A8]) = v38;
  v39 = ((v29[(31 * v38 - ((-64 - 2 * v38) & 0x46) - 93) ^ 0x14 ^ *(&STACK[0x32F0] + v38)] ^ 0x43) - 34) ^ 0x5DLL;
  STACK[0x2860] = v18;
  HIDWORD(v10) = *(v18 + v39);
  LODWORD(v10) = (HIDWORD(v10) ^ 0xFFFFFF9F) << 24;
  LODWORD(v39) = v10 >> 28;
  HIDWORD(v10) = ~v39;
  LODWORD(v10) = (v39 ^ 0x40) << 24;
  LOBYTE(v39) = v10 >> 26;
  v40 = v1 & 0xFFFFFFFC ^ 0xF83D57F3;
  LODWORD(STACK[0x27A0]) = v40;
  v41 = *(&STACK[0x32F0] + v40) ^ (31 * v40 - ((257293504 - 2 * v40) & 0x42) - 93);
  HIDWORD(v10) = v41 ^ 0xFFFFFFF9;
  LODWORD(v10) = (v41 ^ 0x40) << 24;
  v42 = v36 ^ 0xA9;
  v43 = v15 & 0xFF00FF00 | (v39 << 16) | ((*(STACK[0x2870] + v42) ^ 0xC4) - 73);
  LODWORD(v42) = v43 - 1628722454 - 2 * (v43 & STACK[0x2720] ^ ((*(STACK[0x2870] + v42) ^ 0xC4) - 73) & 0x15);
  LODWORD(v36) = *(v37 + (((*(STACK[0x2870] + ((v10 >> 30) ^ 0x29)) ^ 0xC4) - 73) ^ 0xD3)) ^ 0x7E | v21;
  LODWORD(v21) = v1 & 0xFFFFFFF9 ^ 0xF83D57F6;
  LODWORD(STACK[0x2790]) = v21;
  v44 = *(&off_278E1E490 + v28 - 14710) - 12;
  HIDWORD(v10) = v44[((31 * v21 - ((62 * v21) & 0x46) - 93) ^ *(&STACK[0x32F0] + v21)) ^ 0x87];
  LODWORD(v10) = (HIDWORD(v10) ^ 0x4A) << 24;
  v45 = v30 & 0xFFFF0000 | (((v10 >> 25) ^ 0x9C) << 8) | v31;
  LODWORD(v11) = v1 & 0xFFFFFFFD ^ 0xF83D57F2;
  LODWORD(STACK[0x2798]) = v11;
  v46 = *(&STACK[0x32F0] + v11) ^ (31 * v11) & 0xFE ^ 0x65;
  LODWORD(v11) = v45 - 2 * (v45 & 0x55989A6C ^ v31 & 8) - 711419292;
  HIDWORD(v10) = v44[v46];
  LODWORD(v10) = (HIDWORD(v10) ^ 0x4A) << 24;
  LODWORD(v36) = v36 & 0xFFFF00FF | (((v10 >> 25) ^ 0xB1) << 8);
  LODWORD(v39) = STACK[0x2758];
  LODWORD(STACK[0x2768]) = v11;
  LODWORD(v33) = STACK[0x2750];
  LODWORD(v39) = ((v11 ^ v39 ^ 0x8B9282F0) + 1204783122 - 2 * ((v11 ^ v39 ^ 0x8B9282F0) & 0x47CF8813 ^ (v11 ^ v39) & 1)) ^ LODWORD(STACK[0x2750]);
  v47 = STACK[0x2868];
  v48 = (v39 - 786079275 - ((2 * v39) & 0xA24AC3AA)) ^ LODWORD(STACK[0x2868]);
  v49 = STACK[0x2728];
  LODWORD(STACK[0x2778]) = v42;
  v50 = ((v42 ^ v49) - 786079275 - ((2 * (v42 ^ v49)) & 0xA24AC3AA)) ^ v47;
  v51 = (v48 ^ 0x2B10BD83u) - ((2 * (v48 ^ 0x2B10BD83u)) & 0x50F5112) + 0x41A117910287A889;
  v52 = (v50 ^ 0x4B2F6E79u) - ((2 * (v50 ^ 0x4B2F6E79u)) & 0x1889293A2) - 0x504A76843BB6B62FLL;
  v53 = *(&STACK[0x11870] + (BYTE2(v51) ^ 0x87)) ^ 0xBD1DD084 ^ *(&STACK[0x5870] + ((4 * (v52 >> 24)) ^ 0x2BED625EF10));
  LODWORD(v44) = STACK[0x2718];
  LODWORD(STACK[0x2770]) = v36;
  LODWORD(v44) = ((v44 ^ v36) + 1204783122 - ((2 * (v44 ^ v36)) & 0x8F9F1024)) ^ v33;
  LODWORD(v44) = (v44 - 786079275 - ((2 * v44) & 0xA24AC3AA)) ^ v47;
  LODWORD(v44) = ((2 * v44) & 0x36FB7BFE ^ 0x6CA0310) + (v44 ^ 0xB89AFE77);
  v54 = (v44 - 461225471) - ((2 * (v44 - 461225471)) & 0x19BD1E8A4) + 0xE40D3CACDE8F452;
  v55 = (v53 - 175223879 - ((2 * v53) & 0xEB1C9772)) ^ *(&STACK[0xF780] + (BYTE1(v54) ^ 0xF4));
  v56 = v13 - ((2 * v13) & 0x3261C476) - 1724849605;
  LODWORD(v21) = STACK[0x2710];
  LODWORD(STACK[0x2760]) = v56;
  LODWORD(v21) = ((v21 ^ v56) + 1204783122 - ((2 * (v21 ^ v56)) & 0x8F9F1024)) ^ v33;
  LODWORD(v21) = (v21 - 786079275 - ((2 * v21) & 0xA24AC3AA)) ^ v47;
  LODWORD(v21) = ((2 * v21) & 0x8FFD7FFE ^ 0xF3C49AC) + (v21 ^ 0xC8619B29);
  HIDWORD(v10) = *(v18 + ((v21 - 33) ^ 0x5DLL));
  LODWORD(v10) = (HIDWORD(v10) ^ 0xFFFFFF9F) << 24;
  LODWORD(v42) = v10 >> 28;
  HIDWORD(v10) = ~v42;
  LODWORD(v10) = (v42 ^ 0x40) << 24;
  LODWORD(v13) = (v55 + 507785983 - ((2 * v55) & 0x3C8865FE)) ^ *(&STACK[0x10ED0] + (v10 >> 26));
  v57 = (v21 + 939606017) - ((2 * (v21 + 939606017)) & 0xB4FC2750) - 0x2F3F24F6A581EC58;
  v58 = *(&STACK[0x5870] + ((4 * (v57 >> 24)) ^ 0x343036C2568)) ^ *(&STACK[0x11870] + (BYTE2(v52) ^ 0x49));
  LODWORD(v42) = ((v58 ^ 0xBD1DD084) - 175223879 - 2 * ((v58 ^ 0xBD1DD084) & 0x758E4BBB ^ v58 & 2)) ^ *(&STACK[0xF780] + (BYTE1(v51) ^ 0xA8));
  v59 = (v42 + 507785983 - ((2 * v42) & 0x3C8865FE)) ^ *(&STACK[0x10ED0] + (*(STACK[0x2858] + ((v44 + 72) ^ 0x39)) ^ 0x79));
  LODWORD(v51) = *(&STACK[0x11870] + (BYTE2(v54) ^ 0xE8)) ^ 0xBD1DD084 ^ *(&STACK[0x5870] + ((4 * (v51 >> 24)) ^ 0x106845E4408));
  LODWORD(v51) = (v51 - 175223879 - ((2 * v51) & 0xEB1C9772)) ^ *(&STACK[0xF780] + (BYTE1(v57) ^ 0x13));
  v60 = (v51 + 507785983 - ((2 * v51) & 0x3C8865FE)) ^ *(&STACK[0x10ED0] + (v50 ^ 0x79u));
  LODWORD(v44) = *(&STACK[0x5870] + ((4 * (v54 >> 24)) ^ 0x39034F2B34)) ^ 0xBD1DD084 ^ *(&STACK[0x11870] + (BYTE2(v57) ^ 0x7ELL));
  LODWORD(v44) = (v44 - 175223879 - ((2 * v44) & 0xEB1C9772)) ^ *(&STACK[0xF780] + (BYTE1(v52) ^ 0x49));
  LODWORD(v44) = (v44 + 507785983 - ((2 * v44) & 0x3C8865FE)) ^ *(&STACK[0x10ED0] + (v48 ^ 0x83u));
  v61 = (v60 ^ 0xBA62BB25) - ((2 * (v60 ^ 0xBA62BB25)) & 0x150DF054ELL) + 0x7AE7CB92A86F82A7;
  LODWORD(v57) = *(&STACK[0x11870] + ((*(STACK[0x2698] + (((v44 >> 14) & 0xFC | (v44 >> 22) & 3) ^ 0xDBLL)) ^ 0x22) - 73)) ^ *(&STACK[0x5870] + ((4 * (v61 >> 24)) ^ 0x1EB9F2E4AA0));
  v62 = (v59 ^ 0x477367A6u) - ((2 * (v59 ^ 0x477367A6u)) & 0x17DD0F504) + 0x57E7DB7ABEE87A82;
  LODWORD(v57) = ((v57 ^ 0xBD1DD084) - 175223879 - 2 * ((v57 ^ 0xBD1DD084) & 0x758E4BBB ^ v57 & 2)) ^ *(&STACK[0xF780] + (BYTE1(v62) ^ 0x7ALL));
  v63 = (v57 + 507785983 - ((2 * v57) & 0x3C8865FE)) ^ *(&STACK[0x10ED0] + (v13 ^ 0xAEu));
  v64 = (v13 ^ 0xB15BBDAE) - ((2 * (v13 ^ 0xB15BBDAE)) & 0xA0BC2C62) - 0x72A46EF1AFA1E9CFLL;
  LODWORD(v13) = *(&STACK[0x11870] + (BYTE2(v64) ^ 0x5ELL)) ^ 0xBD1DD084 ^ *(&STACK[0x5870] + ((4 * (v62 >> 24)) ^ 0x15F9F6DEAF8));
  LODWORD(v61) = (v13 - 175223879 - ((2 * v13) & 0xEB1C9772)) ^ *(&STACK[0xF780] + (BYTE1(v61) ^ 0x82));
  LODWORD(v61) = v61 + 507785983 - ((2 * v61) & 0x3C8865FE);
  LODWORD(v13) = *(&STACK[0x10ED0] + (((v34 + 115 * *(STACK[0x2830] + ((111 * (v44 ^ 0x54)) ^ 0x9DLL))) ^ 0x8C) - 37));
  LOBYTE(v48) = v61 ^ v13;
  v65 = (v44 ^ 0xEDE5D254) - ((2 * (v44 ^ 0xEDE5D254)) & 0xF127A4D4) + 0x2FD757807893D26ALL;
  LODWORD(v44) = *(&STACK[0x11870] + (BYTE2(v62) ^ 0xE8)) ^ *(&STACK[0x5870] + ((4 * (v65 >> 24)) ^ 0xBF5D5E01E0));
  LODWORD(v44) = ((v44 ^ 0xBD1DD084) - 175223879 - 2 * ((v44 ^ 0xBD1DD084) & 0x758E4BBB ^ v44 & 2)) ^ *(&STACK[0xF780] + (BYTE1(v64) ^ 0x16));
  LODWORD(v52) = (v44 + 507785983 - ((2 * v44) & 0x3C8865FE)) ^ *(&STACK[0x10ED0] + (v60 ^ 0x25u));
  LODWORD(v44) = (v61 ^ v13 ^ 0xF628DA08) - ((2 * (v61 ^ v13 ^ 0xF628DA08)) & 0xB6E85362) + 1534339505;
  LODWORD(v62) = *(&STACK[0x11870] + (BYTE2(v44) ^ 0x74)) ^ 0xBD1DD084 ^ *(&STACK[0x5870] + ((*(STACK[0x2870] + (((v52 >> 22) & 0xFC | (v52 >> 30)) ^ 0x44)) ^ 0xC4) - 73));
  LODWORD(v64) = *(&STACK[0x5870] + ((4 * (v64 >> 24)) ^ 0x2356E443940)) ^ *(&STACK[0x11870] + ((*(STACK[0x2698] + (((v60 >> 14) & 0xFC | (v60 >> 22) & 3) ^ 0xC5)) ^ 0x22) - 73)) ^ 0xBD1DD084;
  LODWORD(v64) = (v64 - 175223879 - ((2 * v64) & 0xEB1C9772)) ^ *(&STACK[0xF780] + (BYTE1(v65) ^ 0xD2));
  v66 = (v64 + 507785983 - ((2 * v64) & 0x3C8865FE)) ^ *(&STACK[0x10ED0] + (v59 ^ 0xA6u));
  LODWORD(v65) = v62 - 175223879 - ((2 * v62) & 0xEB1C9772);
  v67 = (v66 ^ 0xB39068Bu) - ((2 * (v66 ^ 0xB39068Bu)) & 0x7F985130) - 0x252711E6C033D768;
  LODWORD(v64) = *(&STACK[0xF780] + (BYTE1(v67) ^ 0x28)) ^ v65;
  v68 = (v64 + 507785983 - ((2 * v64) & 0x3C8865FE)) ^ *(&STACK[0x10ED0] + (v63 ^ 0x71u));
  v69 = ((v61 ^ v13) >> 22) & 0xFC | ((v61 ^ ~v13) >> 30);
  v70 = (v63 ^ 0x57876971u) - ((2 * (v63 ^ 0x57876971u)) & 0x1379292BCLL) - 0x4C7AA5156436B6A2;
  LODWORD(v54) = (v52 ^ 0x5BE1E252) - ((2 * (v52 ^ 0x5BE1E252)) & 0x7D840660) - 1094581456;
  LODWORD(v61) = *(&STACK[0x5870] + ((4 * (v70 >> 24)) ^ 0x2CE156BAA6CLL)) ^ *(&STACK[0x11870] + (BYTE2(v54) ^ 0xC2)) ^ 0xBD1DD084;
  LODWORD(v61) = (v61 - 175223879 - ((2 * v61) & 0xEB1C9772)) ^ *(&STACK[0xF780] + (BYTE1(v44) ^ 0x29));
  LODWORD(v61) = (v61 + 507785983 - ((2 * v61) & 0x3C8865FE)) ^ *(&STACK[0x10ED0] + (v66 ^ 0x8Bu));
  LODWORD(v44) = *(&STACK[0x11870] + (BYTE2(v70) ^ 0xC9)) ^ *(&STACK[0x5870] + ((4 * (v67 >> 24)) ^ 0x36B63B864FCLL));
  LODWORD(v44) = ((v44 ^ 0xBD1DD084) - 175223879 - 2 * ((v44 ^ 0xBD1DD084) & 0x758E4BBB ^ v44 & 2)) ^ *(&STACK[0xF780] + (BYTE1(v54) ^ 3));
  LOBYTE(v66) = *(STACK[0x2870] + (v69 ^ 0xF1));
  LODWORD(v69) = (v44 + 507785983 - ((2 * v44) & 0x3C8865FE)) ^ *(&STACK[0x10ED0] + (v48 ^ 8u));
  LODWORD(v44) = *(&STACK[0x5870] + ((v66 ^ 0xC4) - 73)) ^ *(&STACK[0x11870] + (BYTE2(v67) ^ 0xCCLL));
  LODWORD(v44) = ((v44 ^ 0xBD1DD084) - 175223879 - 2 * ((v44 ^ 0xBD1DD084) & 0x758E4BBB ^ v44 & 2)) ^ *(&STACK[0xF780] + (BYTE1(v70) ^ 0x49));
  LODWORD(v44) = (v44 + 507785983 - ((2 * v44) & 0x3C8865FE)) ^ *(&STACK[0x10ED0] + (v52 ^ 0x52u));
  HIDWORD(v10) = *(STACK[0x2860] + (((BYTE3(v69) ^ 0x5C) - 34) ^ 0x5DLL));
  LODWORD(v10) = (HIDWORD(v10) ^ 0xFFFFFF9F) << 24;
  LODWORD(v67) = v10 >> 28;
  HIDWORD(v10) = ~v67;
  LODWORD(v10) = (v67 ^ 0x40) << 24;
  v71 = (v68 ^ 0x518D476Fu) - ((2 * (v68 ^ 0x518D476Fu)) & 0x10D71A546) - 0x41433EA779472D5DLL;
  v72 = (v44 ^ 0xFD11DC83) - ((2 * (v44 ^ 0xFD11DC83)) & 0x28200482) + 0x10E8D0D614100241;
  v73 = *(&STACK[0x11870] + (BYTE2(v72) ^ 0x10)) ^ *(&STACK[0x5870] + ((4 * (v71 >> 24)) ^ 0x2FAF3056218));
  LODWORD(v65) = v73 ^ 0xBD1DD084;
  v74 = (v73 ^ 0xBD1DD084) & 0x758E4BBB ^ v73 & 2;
  v75 = (v69 ^ 0x5CBE6FFA) - ((2 * (v69 ^ 0x5CBE6FFA)) & 0xA8ABF1EC) - 732563210;
  LODWORD(v65) = (v65 - 175223879 - 2 * v74) ^ *(&STACK[0xF780] + (BYTE1(v75) ^ 0xF8));
  LODWORD(v52) = v65 + 507785983 - ((2 * v65) & 0x3C8865FE);
  v76 = (v61 ^ 0xC668B23) - ((2 * (v61 ^ 0xC668B23)) & 0x3C3F9EBE) - 0x61A0B9DDE1E030A1;
  v77 = v52 ^ *(&STACK[0x10ED0] + (v61 ^ 0x23u));
  LODWORD(v61) = *(&STACK[0x11870] + (BYTE2(v71) ^ 0xB8)) ^ *(&STACK[0x5870] + ((4 * (v76 >> 24)) ^ 0x2797D188878)) ^ 0xBD1DD084;
  LODWORD(v61) = (v61 - 175223879 - ((2 * v61) & 0xEB1C9772)) ^ *(&STACK[0xF780] + (BYTE1(v72) ^ 2));
  LODWORD(v54) = *(&STACK[0x11870] + (BYTE2(v76) ^ 0x1FLL)) ^ 0xBD1DD084 ^ *(&STACK[0x5870] + (v10 >> 26));
  LODWORD(v71) = (v54 - 175223879 - ((2 * v54) & 0xEB1C9772)) ^ *(&STACK[0xF780] + (BYTE1(v71) ^ 0xD2));
  LODWORD(v69) = (v61 + 507785983 - ((2 * v61) & 0x3C8865FE)) ^ *(&STACK[0x10ED0] + (v69 ^ 0xFAu));
  LODWORD(v61) = (v71 + 507785983 - ((2 * v71) & 0x3C8865FE)) ^ *(&STACK[0x10ED0] + (v44 ^ 0x83u));
  LODWORD(v44) = *(&STACK[0x11870] + (BYTE2(v75) ^ 0x55)) ^ 0xBD1DD084 ^ *(&STACK[0x5870] + ((4 * (v72 >> 24)) ^ 0x43A3435850));
  LODWORD(v72) = (v44 - 175223879 - ((2 * v44) & 0xEB1C9772)) ^ *(&STACK[0xF780] + (BYTE1(v76) ^ 0xCFLL));
  LODWORD(v71) = ((2 * v69) & 0x69FB9D7E ^ 0x29D39818) + (v69 ^ 0xE91602F3);
  LODWORD(v69) = *(STACK[0x2850] + ((v71 + 31) ^ 0x68));
  v78 = STACK[0x2850];
  HIDWORD(v10) = v69 ^ 0x1D;
  LODWORD(v10) = v69 << 24;
  LODWORD(v69) = v10 >> 31;
  HIDWORD(v10) = v69 ^ 1;
  LODWORD(v10) = (v69 ^ 0xFFFFFFE7) << 24;
  LODWORD(v69) = (v72 + 507785983 - ((2 * v72) & 0x3C8865FE)) ^ *(&STACK[0x10ED0] + (v68 ^ 0x6Fu));
  v79 = (v71 + 1258434881) - ((2 * (v71 + 1258434881)) & 0xBF57E658);
  v80 = (v61 ^ 0x50D8E4D9) - ((2 * (v61 ^ 0x50D8E4D9)) & 0x1DA65042ELL);
  v81 = (v77 ^ 0xC80B2ED2) - ((2 * (v77 ^ 0xC80B2ED2)) & 0x1C178376CLL) + 0x1F97582EE0BC1BB6;
  v82 = (v69 ^ 0xA1AFB379) - ((2 * (v69 ^ 0xA1AFB379)) & 0x14630FF56) + 0x327B709A3187FABLL;
  LODWORD(v76) = *(&STACK[0x5870] + ((4 * (v81 >> 24)) ^ 0x7E5D60BB80)) ^ *(&STACK[0x11870] + (BYTE2(v82) ^ 0x18)) ^ 0xBD1DD084;
  v83 = *(&off_278E1E490 + LODWORD(STACK[0x2878]) - 14310);
  LODWORD(v76) = (v76 - 175223879 - ((2 * v76) & 0xEB1C9772)) ^ *(&STACK[0xF780] + ((*(v83 + ((111 * (BYTE1(v61) ^ 0xE4)) ^ 0x6ELL)) ^ 0x21) - 37));
  v84 = (v76 + 507785983 - ((2 * v76) & 0x3C8865FE)) ^ *(&STACK[0x10ED0] + (v10 >> 26));
  v79 -= 0x43D89C94A0540CD4;
  v85 = *(&STACK[0x5870] + ((4 * (v79 >> 24)) ^ 0x2F09D8DAD7CLL)) ^ *(&STACK[0xF780] + (BYTE1(v82) ^ 0x7FLL)) ^ 0xE42E3D0B;
  LODWORD(v61) = (v85 + 507785983 - ((2 * v85) & 0x3C8865FE)) ^ *(&STACK[0x10ED0] + (((LODWORD(STACK[0x27F8]) + 115 * *(STACK[0x2830] + ((111 * (v61 ^ 0xD9)) ^ 0x9DLL))) ^ 0x8C) - 37));
  STACK[0x2808] = v83;
  v86 = (v61 - 1396857290 - ((2 * v61) & 0x597B4C6C)) ^ *(&STACK[0x11870] + ((*(v83 + ((111 * (BYTE2(v77) ^ 0xB)) ^ 0x6ELL)) ^ 0x21) - 37));
  LODWORD(v61) = v80 - 315457001;
  LODWORD(v80) = *(&STACK[0x5870] + ((4 * ((v80 - 0x517AE50C12CD7DE9) >> 24)) ^ 0x2BA146BCFB4)) ^ *(&STACK[0x11870] + (BYTE2(v79) ^ 0xABLL)) ^ 0xBD1DD084;
  LODWORD(v80) = (v80 - 175223879 - ((2 * v80) & 0xEB1C9772)) ^ *(&STACK[0xF780] + (BYTE1(v81) ^ 0x1BLL));
  LODWORD(v69) = (v80 + 507785983 - ((2 * v80) & 0x3C8865FE)) ^ *(&STACK[0x10ED0] + (v69 ^ 0x79u));
  LODWORD(v61) = *(&STACK[0x11870] + (BYTE2(v61) ^ 0x32)) ^ *(&STACK[0x5870] + ((4 * (v82 >> 24)) ^ 0xC9EDC268CLL)) ^ 0xBD1DD084;
  LODWORD(v61) = (v61 - 175223879 - ((2 * v61) & 0xEB1C9772)) ^ *(&STACK[0xF780] + (BYTE1(v79) ^ 0xF3));
  LODWORD(v61) = (v61 + 507785983 - ((2 * v61) & 0x3C8865FE)) ^ *(&STACK[0x10ED0] + (v77 ^ 0xD2u));
  LODWORD(v82) = *(v78 + (((HIBYTE(v84) ^ 0xFB) - 34) ^ 0x68));
  HIDWORD(v10) = v82 ^ 0x1D;
  LODWORD(v10) = v82 << 24;
  LODWORD(v82) = v10 >> 31;
  HIDWORD(v10) = v82 ^ 1;
  LODWORD(v10) = (v82 ^ 0xFFFFFFE7) << 24;
  v87 = (v69 ^ 0xD332895) - ((2 * (v69 ^ 0xD332895)) & 0x1E4867638);
  v88 = (v61 ^ 0xF17757A0) - ((2 * (v61 ^ 0xF17757A0)) & 0x1DE5D5276) - 0xC4BCC6C10D156C5;
  v89 = *(&STACK[0x5870] + (v10 >> 26)) ^ *(&STACK[0x11870] + (BYTE2(v88) ^ 0x2ELL)) ^ 0xBD1DD084;
  v90 = (v89 - 175223879 - ((2 * v89) & 0xEB1C9772)) ^ *(&STACK[0xF780] + (*(STACK[0x2858] + (((BYTE1(v69) ^ 0x28) + 71) ^ 0x39)) ^ 0x79));
  LODWORD(v79) = (v84 ^ 0xFB6E6D8B) - ((2 * (v84 ^ 0xFB6E6D8B)) & 0xC5FDCAEE) - 486611593;
  v91 = (v86 ^ 0x95E0E29E) - ((2 * (v86 ^ 0x95E0E29E)) & 0x1E64F90F8) + 0x35985E70F327C87CLL;
  v92 = (v90 + 507785983 - ((2 * v90) & 0x3C8865FE)) ^ *(&STACK[0x10ED0] + (v86 ^ 0x9Eu));
  v93 = *(&STACK[0x11870] + (BYTE2(v79) ^ 0xFELL)) ^ 0xBD1DD084 ^ *(&STACK[0x5870] + ((4 * (v91 >> 24)) ^ 0xD66179C3CCLL));
  v94 = (v93 - 175223879 - ((2 * v93) & 0xEB1C9772)) ^ *(&STACK[0xF780] + (BYTE1(v88) ^ 0xA9));
  LODWORD(v69) = (v94 + 507785983 - ((2 * v94) & 0x3C8865FE)) ^ *(&STACK[0x10ED0] + (*(STACK[0x2800] + (((v69 ^ 0x95) + 71) ^ 0xF9)) ^ 0xALL));
  v87 -= 0x358D45970DBCC4E4;
  v95 = *(&STACK[0x5870] + ((4 * (v87 >> 24)) ^ 0x329CAE9A3C8)) ^ 0xBD1DD084 ^ *(&STACK[0x11870] + (BYTE2(v91) ^ 0x27));
  v96 = (v95 - 175223879 - ((2 * v95) & 0xEB1C9772)) ^ *(&STACK[0xF780] + (BYTE1(v79) ^ 0xE5));
  LODWORD(v61) = (v96 + 507785983 - ((2 * v96) & 0x3C8865FE)) ^ *(&STACK[0x10ED0] + (v61 ^ 0xA0u));
  LODWORD(v88) = *(&STACK[0x11870] + (BYTE2(v87) ^ 0x43)) ^ 0xBD1DD084 ^ *(&STACK[0x5870] + ((4 * (v88 >> 24)) ^ 0x3CED0CE4FBCLL));
  LODWORD(v88) = (v88 - 175223879 - ((2 * v88) & 0xEB1C9772)) ^ *(&STACK[0xF780] + (BYTE1(v91) ^ 0xC8));
  v97 = v88 + 507785983 - ((2 * v88) & 0x3C8865FE);
  LODWORD(v79) = *(&STACK[0x10ED0] + (v84 ^ 0x8Bu));
  LODWORD(v88) = v97 ^ v79;
  v98 = (v97 ^ v79 ^ 0xFC447F35) - ((2 * (v97 ^ v79 ^ 0xFC447F35)) & 0x6C73E9D6);
  v99 = v97 ^ ~v79;
  v100 = (v92 ^ 0x7CF06001u) - ((2 * (v92 ^ 0x7CF06001u)) & 0x84781890) + 0x4F212293423C0C48;
  v98 += 909767915;
  v101 = (v88 >> 22) & 0xFC | (v99 >> 30);
  v102 = *(&STACK[0x5870] + ((4 * (v100 >> 24)) ^ 0x13C848A4D08)) ^ *(&STACK[0x11870] + (BYTE2(v98) ^ 0x39));
  v103 = (v61 ^ 0x98D3CA0B) - ((2 * (v61 ^ 0x98D3CA0B)) & 0xE2DD6C62) - 0x4487CF608E9149CFLL;
  v104 = ((v102 ^ 0xBD1DD084) - 175223879 - 2 * ((v102 ^ 0xBD1DD084) & 0x758E4BBB ^ v102 & 2)) ^ *(&STACK[0xF780] + (BYTE1(v103) ^ 0xB6));
  v105 = (v69 ^ 0x6E8E8F15) - ((2 * (v69 ^ 0x6E8E8F15)) & 0x1029CF37ELL) + 0x72FE473C814E79BFLL;
  v106 = (v104 + 507785983 - ((2 * v104) & 0x3C8865FE)) ^ *(&STACK[0x10ED0] + (v69 ^ 0x15u));
  v107 = *(&STACK[0x5870] + ((4 * (v105 >> 24)) ^ 0x1CBF91CF204)) ^ 0xBD1DD084 ^ *(&STACK[0x11870] + (BYTE2(v100) ^ 0x3CLL));
  v108 = (v107 - 175223879 - ((2 * v107) & 0xEB1C9772)) ^ *(&STACK[0xF780] + (BYTE1(v98) ^ 0xF4));
  v109 = (v108 + 507785983 - ((2 * v108) & 0x3C8865FE)) ^ *(&STACK[0x10ED0] + (v61 ^ 0xBu));
  LODWORD(v61) = *(&STACK[0x5870] + ((4 * (v103 >> 24)) ^ 0x2EDE0C27DC4)) ^ 0xBD1DD084 ^ *(&STACK[0x11870] + (*(STACK[0x2800] + (((BYTE2(v69) ^ 0x8E) + 71) ^ 0xF9)) ^ 0xALL));
  LODWORD(v61) = (v61 - 175223879 - ((2 * v61) & 0xEB1C9772)) ^ *(&STACK[0xF780] + (BYTE1(v100) ^ 0xCLL));
  LODWORD(v88) = (v61 + 507785983 - ((2 * v61) & 0x3C8865FE)) ^ *(&STACK[0x10ED0] + (v88 ^ 0x35u));
  v110 = STACK[0x2698];
  LODWORD(v61) = *(&STACK[0x11870] + (BYTE2(v103) ^ 0x6ELL)) ^ 0xBD1DD084 ^ *(&STACK[0x5870] + ((*(STACK[0x2698] + (v101 ^ 0xBC)) ^ 0x22) - 73));
  LODWORD(v61) = (v61 + 507785983 - ((2 * v61) & 0x3C8865FE)) ^ *(&STACK[0x10ED0] + (v92 ^ 1u));
  LODWORD(v61) = (v61 - 175223879 - ((2 * v61) & 0xEB1C9772)) ^ *(&STACK[0xF780] + (BYTE1(v105) ^ 0x79));
  v111 = (v109 ^ 0x127EEF14u) - 0x2976596BBBD8E304 + (~(2 * (v109 ^ 0x127EEF14u)) | 0xFFFFFFFF77B1C609);
  v112 = (v106 ^ 0x52870127u) - ((2 * (v106 ^ 0x52870127u)) & 0xEA4FF9E2) - 0x72DCC10C8AD8030FLL;
  v113 = (v61 ^ 0x6497B53E) - ((2 * (v61 ^ 0x6497B53E)) & 0x49BB01A0) - 0x3D14194CDB227F30;
  LODWORD(v100) = *(&STACK[0x5870] + ((4 * (v112 >> 24)) ^ 0x2348CFBCDD4)) ^ *(&STACK[0x11870] + (BYTE2(v113) ^ 0xDDLL)) ^ 0xBD1DD084;
  v114 = (v88 ^ 0xF65D451E) - ((2 * (v88 ^ 0xF65D451E)) & 0x1BFD90F36) - 0x4AED7DFA20137865;
  LODWORD(v100) = (v100 - 175223879 - ((2 * v100) & 0xEB1C9772)) ^ *(&STACK[0xF780] + (BYTE1(v114) ^ 0x87));
  v115 = (v100 + 507785983 - ((2 * v100) & 0x3C8865FE)) ^ *(&STACK[0x10ED0] + (v109 ^ 0x14u));
  LODWORD(v100) = *(&STACK[0x11870] + (BYTE2(v112) ^ 0x27)) ^ *(&STACK[0x5870] + ((v111 >> 22) & 0x35A269A5FFCLL ^ 0x35A269A5110)) ^ 0xBD1DD084;
  LODWORD(v100) = (v100 - 175223879 - ((2 * v100) & 0xEB1C9772)) ^ *(&STACK[0xF780] + (BYTE1(v113) ^ 0x80));
  LODWORD(v52) = (v100 + 507785983 - ((2 * v100) & 0x3C8865FE)) ^ *(&STACK[0x10ED0] + (v88 ^ 0x1Eu));
  LODWORD(v88) = *(&STACK[0x5870] + ((4 * (v114 >> 24)) ^ 0x2D44A08177CLL)) ^ 0xBD1DD084;
  LODWORD(v100) = v88 ^ *(&STACK[0x11870] + ((((v109 ^ 0x127EEF14) + 1143414012 + (~(2 * (v109 ^ 0x127EEF14)) | 0x77B1C609u)) >> 16) ^ 0x27));
  LODWORD(v112) = *(&STACK[0xF780] + (BYTE1(v112) ^ 0xFCLL));
  LODWORD(v100) = (v100 - 175223879 - ((2 * v100) & 0xEB1C9772)) ^ v112;
  LODWORD(v113) = *(&STACK[0x11870] + (BYTE2(v114) ^ 0xECLL)) ^ *(&STACK[0x5870] + ((4 * (v113 >> 24)) ^ 0x30BAF9ACC90)) ^ 0xBD1DD084;
  LODWORD(v113) = (v113 - 175223879 - ((2 * v113) & 0xEB1C9772)) ^ *(&STACK[0xF780] + (BYTE1(v111) ^ 0x1CLL));
  LODWORD(v78) = (v113 + 507785983 - ((2 * v113) & 0x3C8865FE)) ^ *(&STACK[0x10ED0] + (v106 ^ 0x27u));
  LODWORD(v61) = *(&STACK[0x10ED0] + (v61 ^ 0x3Eu));
  v116 = (v100 + 507785983 - ((2 * v100) & 0x3C8865FE)) ^ v61;
  v117 = (v115 ^ 0x3950F3DBu) - ((2 * (v115 ^ 0x3950F3DBu)) & 0x2962D436) - 0x1334FD51EB4E95E5;
  v118 = (v78 ^ 0x92CAF020) - ((2 * (v78 ^ 0x92CAF020)) & 0xA96D54DELL) - 0x1D945C34AB495591;
  v119 = *(&STACK[0x11870] + (BYTE2(v118) ^ 0xB6)) ^ 0x48939B3D ^ *(&STACK[0x5870] + ((4 * (v117 >> 24)) ^ 0x3B32C0AB850));
  v120 = (v116 ^ 0xE423AA0A) - ((2 * (v116 ^ 0xE423AA0A)) & 0x1D82580) - 0x1807243AFF13ED40;
  LODWORD(v113) = v119 ^ *(&STACK[0xF780] + (BYTE1(v120) ^ 0x12));
  LODWORD(STACK[0x2788]) = v113 + 507785983 - ((2 * v113) & 0x3C8865FE);
  LODWORD(v88) = v88 ^ *(&STACK[0x11870] + ((*(v110 + (((v111 >> 14) & 0xFC | (BYTE2(v111) >> 6)) ^ 0xD0)) ^ 0x22) - 73));
  LODWORD(v88) = (v88 - 175223879 - ((2 * v88) & 0xEB1C9772)) ^ v112;
  LODWORD(v111) = (v88 + 507785983 - ((2 * v88) & 0x3C8865FE)) ^ v61;
  v121 = (v52 ^ 0x40F9EE33) - ((2 * (v52 ^ 0x40F9EE33)) & 0x6C8AB43E) + 0x2445D4636455A1FLL;
  LODWORD(v61) = *(&STACK[0x5870] + ((4 * (v120 >> 24)) ^ 0x39FE36F1400)) ^ 0xBD1DD084 ^ *(&STACK[0x11870] + (BYTE2(v121) ^ 0x45));
  LODWORD(v61) = (v61 - 175223879 - ((2 * v61) & 0xEB1C9772)) ^ *(&STACK[0xF780] + (BYTE1(v117) ^ 0x6ALL));
  LODWORD(v112) = v61 + 507785983 - ((2 * v61) & 0x3C8865FE);
  LODWORD(v61) = *(STACK[0x2850] + (((BYTE2(v121) ^ 0x45) - 34) ^ 0x68));
  HIDWORD(v10) = v61 ^ 0x1D;
  LODWORD(v10) = v61 << 24;
  LODWORD(v61) = v10 >> 31;
  HIDWORD(v10) = v61 ^ 1;
  LODWORD(v10) = (v61 ^ 0xFFFFFFE7) << 24;
  v122 = (v111 ^ 0xE423AA0A) - ((2 * (v111 ^ 0xE423AA0A)) & 0xD4D94090) - 0x2511B3695935FB8;
  LODWORD(v88) = *(&STACK[0x11870] + (v10 >> 26)) ^ *(&STACK[0x5870] + ((4 * (v122 >> 24)) ^ 0x3F6BB9325A8)) ^ 0xBD1DD084;
  LODWORD(v88) = (v88 - 175223879 - ((2 * v88) & 0xEB1C9772)) ^ *(&STACK[0xF780] + ((*(STACK[0x2870] + (((v117 >> 6) & 0xFC | (BYTE1(v117) >> 6)) ^ 0x80)) ^ 0xC4) - 73));
  LODWORD(v18) = *(&STACK[0x11870] + (BYTE2(v122) ^ 0x6CLL)) ^ 0xB2F994C9 ^ *(&STACK[0x10ED0] + ((*(v110 + (((v115 >> 6) | (4 * (v115 & 0x3Fu))) ^ 0x23)) ^ 0x22) - 73));
  v123 = v18 + 295728818 - ((2 * v18) & 0x2340ED64);
  LODWORD(v18) = *(&STACK[0x5870] + ((4 * (v118 >> 24)) ^ 0x389AE8F2D50));
  LODWORD(v110) = (v123 ^ v18) - 175223879 - ((2 * (v123 ^ v18)) & 0xEB1C9772);
  LODWORD(v78) = *(&STACK[0x10ED0] + (v78 ^ 0x20u));
  v124 = v78 ^ 0xA4DA4439 ^ v112;
  LODWORD(v112) = *(&STACK[0xF780] + (BYTE1(v121) ^ 0x5ALL));
  LODWORD(v78) = ((2 * ((v88 + 507785983 - ((2 * v88) & 0x3C8865FE)) ^ v78)) & 0x7DBFB974 ^ 0x49B48870) + ((v88 + 507785983 - ((2 * v88) & 0x3C8865FE)) ^ v78 ^ 0x9A059883);
  LODWORD(v103) = ((2 * (v110 ^ v112)) & 0xFDDBFFBA ^ 0xEDD2B410) + (v110 ^ v112 ^ 0x804A5F7);
  v125 = STACK[0x2860];
  HIDWORD(v10) = *(STACK[0x2860] + (((BYTE1(v118) ^ 0xAA) - 34) ^ 0x5DLL));
  LODWORD(v10) = (HIDWORD(v10) ^ 0xFFFFFF9F) << 24;
  v126 = v10 >> 28;
  HIDWORD(v10) = ~v126;
  LODWORD(v10) = (v126 ^ 0x40) << 24;
  v127 = *(&STACK[0x10ED0] + (v116 ^ 0xAu)) ^ *(&STACK[0xF780] + (v10 >> 26));
  LODWORD(v110) = *(&STACK[0x5870] + ((4 * (v121 >> 24)) ^ 0x9117518D8)) ^ *(&STACK[0x11870] + (BYTE2(v117) ^ 0xB1));
  v128 = v110 ^ 0x79A91DE8 ^ ((v127 ^ 0xEBCA7946) - 1122119548 - 2 * ((v127 ^ 0xEBCA7946) & 0x3D1DD094 ^ v127 & 0x10));
  LODWORD(v111) = *(&STACK[0xF780] + (BYTE1(v118) ^ 0xAALL)) ^ 0xEBCA7946 ^ *(&STACK[0x10ED0] + (v111 ^ 0xAu));
  LODWORD(v110) = (v111 - 1122119548 - ((2 * v111) & 0x7A3BA108)) ^ v110;
  LODWORD(v111) = ((2 * v110) & 0xDF9DD7EC ^ 0xD31013C0) + (v110 ^ 0x1667F61E);
  v129 = -204079397 - 1673098661 * ((v128 - v111 - 851287474) ^ 0xC4C7FD52) - ((948769974 * ((v128 - v111 - 851287474) ^ 0xC4C7FD52)) & 0xE7ABFDB6);
  LODWORD(v110) = *(&STACK[0x10ED0] + (v52 ^ 0x33u));
  LODWORD(v122) = v119 ^ *(&STACK[0xF780] + (BYTE1(v122) ^ 0xA0));
  LODWORD(v122) = (v122 + 507785983 - ((2 * v122) & 0x3C8865FE)) ^ v110;
  LODWORD(v122) = ((2 * v122) & 0xEDF65F56 ^ 0xC544704) + (v122 ^ 0xF8D14C69);
  v130 = *(&STACK[0x11870] + (BYTE2(v120) ^ 0xECLL)) ^ *(&STACK[0x10ED0] + (v115 ^ 0xDBu)) ^ 0xB2F994C9;
  v131 = (v130 + 295728818 - ((2 * v130) & 0x2340ED64)) ^ v18;
  v132 = ((v112 ^ 0x76E95A2A ^ (v131 - 175223879 - ((2 * v131) & 0xEB1C9772))) - v103 - 250079568) ^ 0xEF07B51B;
  LODWORD(v88) = -1472857901 * ((v124 - v78 + 2083625311) ^ 0xE867D059) - ((275509670 * ((v124 - v78 + 2083625311) ^ 0xE867D059)) & 0x1207ED80) + 151254720;
  LODWORD(v112) = v129 ^ (-1239562539 * (((v110 ^ 0x8E2A63C2 ^ LODWORD(STACK[0x2788])) - v122 + 578364593) ^ 0xB93A0FCA));
  v133 = -961249493 * v132 - ((224984662 * v132) & 0x55A14464) + 718316082;
  LODWORD(v110) = v133 ^ v112;
  v134 = (v88 ^ v129 ^ 0xFAD6081B) - (v133 ^ v112 ^ 0xD9055CE9);
  LODWORD(v113) = ((2 * (v112 ^ v88)) & 0xDFDFFFFE ^ 0xD58C1036) + (v112 ^ v88 ^ 0x1539F7E4);
  v135 = (v112 ^ 0xF3D5FEDB) - (v88 ^ v133 ^ 0x23D354F2) - ((2 * ((v112 ^ 0xF3D5FEDB) - (v88 ^ v133 ^ 0x23D354F2))) & 0xBCB35DB4) + 1582935770;
  v136 = (v134 ^ v110 ^ 0x78A30DCC ^ v135) + v122;
  v137 = (v110 ^ 0x78A30DCC ^ v135) + v111;
  v138 = v78 - v113;
  LODWORD(STACK[0x2788]) = v78 - v113;
  LODWORD(v78) = v103 - v113 + (v134 ^ v110 ^ 0x26FAA316);
  HIDWORD(v10) = *(v125 + ((v78 - 63) ^ 0x5DLL));
  LODWORD(v10) = (HIDWORD(v10) ^ 0xFFFFFF9F) << 24;
  LODWORD(v112) = v10 >> 28;
  HIDWORD(v10) = ~v112;
  LODWORD(v10) = (v112 ^ 0x40) << 24;
  v139 = (v136 + 1395137170) - ((2 * (v136 + 1395137170)) & 0x2D14DE44) - 0x46977D2AE97590DELL;
  v140 = (v137 - 1444128841) - ((2 * (v137 - 1444128841)) & 0x14424668ELL) + 0x260C4444A2123347;
  v141 = (v138 - 691113013) - ((2 * (v138 - 691113013)) & 0x11EF36D2ELL) + 0x46D87EAC8F79B697;
  LODWORD(v122) = *(&STACK[0x11F30] + ((4 * (v141 >> 24)) ^ 0x11B61FAB23CLL)) ^ *(&STACK[0x133D0] + (BYTE2(v140) ^ 0x12)) ^ *(&STACK[0xF350] + (BYTE1(v139) ^ 0x6FLL)) ^ *(&STACK[0x13AE0] + (v10 >> 26));
  LODWORD(v18) = STACK[0x2748];
  LODWORD(v122) = ((v122 ^ 0x4362816C) - 1878632547 - 2 * ((v122 ^ 0x4362816C) & 0x1006579F ^ v122 & 2)) ^ LODWORD(STACK[0x2748]);
  LODWORD(v110) = STACK[0x2730];
  LODWORD(v122) = (v122 - 333164032 - ((2 * v122) & 0xD848A400)) ^ LODWORD(STACK[0x2730]);
  LODWORD(v112) = STACK[0x2738];
  LODWORD(v52) = LODWORD(STACK[0x2828]) ^ LODWORD(STACK[0x2738]) ^ (v122 - 1628722454 - ((2 * v122) & 0x3DD755D4));
  LODWORD(v125) = STACK[0x2878];
  v142 = *(&off_278E1E490 + LODWORD(STACK[0x2878]) - 13290) - 8;
  *(&STACK[0x32F0] + LODWORD(STACK[0x27D8])) = v142[BYTE1(v52) ^ 0xACLL] ^ 0x63;
  v143 = (v78 + 116875491) - ((2 * (v78 + 116875491)) & 0x1B9D5520ALL) - 0x3EFEACE4231556FBLL;
  LODWORD(v122) = *(&STACK[0x133D0] + (BYTE2(v141) ^ 0x79)) ^ *(&STACK[0x11F30] + ((4 * (v143 >> 24)) ^ 0x304054C6F70));
  LODWORD(v122) = ((v122 ^ 0xBF079B08) - 1436948342 - 2 * ((v122 ^ 0xBF079B08) & 0x2A59E89A ^ v122 & 0x10)) ^ *(&STACK[0xF350] + (BYTE1(v140) ^ 0x33));
  LODWORD(v122) = (v122 + 1446834926 - ((2 * v122) & 0xAC79E5DC)) ^ *(&STACK[0x13AE0] + (v136 - 110));
  LODWORD(v122) = (v122 - ((2 * v122) & 0xE042FAEC) + 1881242998) ^ LODWORD(STACK[0x2838]);
  LODWORD(v122) = (v122 - 1878632547 - ((2 * v122) & 0x200CAF3A)) ^ v18;
  v144 = v110 ^ v112;
  v145 = v110 ^ v112 ^ (v122 - 333164032 - ((2 * v122) & 0xD848A400));
  v146 = ((v110 ^ v112 ^ (v122 + 20992 - ((2 * v122) & 0xA400))) >> 8) ^ 0xD3;
  v147 = *(&off_278E1E490 + (v125 ^ 0x3A1F)) - 12;
  *(&STACK[0x32F0] + LODWORD(STACK[0x27C0])) = v147[v146] ^ 0x42;
  v148 = *(&off_278E1E490 + (v125 ^ 0x3A19)) - 8;
  *(&STACK[0x32F0] + LODWORD(STACK[0x27F0])) = (-24 - 119 * v148[BYTE3(v52) ^ 0xA4]) ^ 0xF0;
  v149 = *(&off_278E1E490 + v125 - 13609);
  *(&STACK[0x32F0] + LODWORD(STACK[0x27E8])) = *(v149 + (BYTE2(v145) ^ 0xAELL)) ^ 0xF9;
  v150 = *(STACK[0x2850] + (((v145 ^ 0x1F) - 34) ^ 0x68));
  HIDWORD(v10) = v150 ^ 0x1D;
  LODWORD(v10) = v150 << 24;
  v151 = v10 >> 31;
  HIDWORD(v10) = v151 ^ 1;
  LODWORD(v10) = (v151 ^ 0xFFFFFFE7) << 24;
  v152 = *(&off_278E1E490 + (v125 ^ 0x3FA8)) - 8;
  LODWORD(v110) = v152[(v10 >> 26) ^ 0x86];
  HIDWORD(v10) = v110 ^ 0xF;
  LODWORD(v10) = (v110 ^ 0x40) << 24;
  LOBYTE(v110) = *(STACK[0x2698] + ((v10 >> 30) ^ 0x4CLL)) ^ 0x22;
  *(&STACK[0x32F0] + LODWORD(STACK[0x27C8])) = v110 + ((16 - 2 * v110) | 0xB9) + 91;
  LODWORD(v110) = *(&STACK[0x13AE0] + (v137 - 73)) ^ *(&STACK[0xF350] + (BYTE1(v141) ^ 0xB6));
  LODWORD(v113) = *(&STACK[0x11F30] + ((4 * (v140 >> 24)) ^ 0x9831111288)) ^ *(&STACK[0x133D0] + (BYTE2(v139) ^ 0x8ALL)) ^ 0xBF079B08;
  LODWORD(v113) = (v113 - 1436948342 - ((2 * v113) & 0x54B3D114)) ^ *(&STACK[0xF350] + (BYTE1(v143) ^ 0xA9));
  v153 = (v113 + 1446834926 - ((2 * v113) & 0xAC79E5DC)) ^ *(&STACK[0x13AE0] + (LODWORD(STACK[0x2788]) - 53));
  LODWORD(v110) = *(&STACK[0x133D0] + (BYTE2(v143) ^ 0xEALL)) ^ LODWORD(STACK[0x2840]) ^ *(&STACK[0x11F30] + ((4 * (v139 >> 24)) ^ 0x2E5A20B5458)) ^ ((v110 ^ 0xFC651A64) + 2047438920 - 2 * ((v110 ^ 0xFC651A64) & 0x7A0970E3 ^ v110 & 1) + 154);
  v154 = (v153 - ((2 * v153) & 0xD7A50682) - 338525375) ^ LODWORD(STACK[0x2848]);
  v155 = (v154 - 1878632547 - ((2 * v154) & 0x200CAF3A)) ^ v18;
  v156 = v144 ^ (v155 - 333164032 - ((2 * v155) & 0xD848A400));
  *(&STACK[0x32F0] + LODWORD(STACK[0x2790])) = v147[BYTE1(v156) ^ 0x5FLL] ^ 0xF8;
  v157 = *(&off_278E1E490 + v125 - 13943);
  *(&STACK[0x32F0] + LODWORD(STACK[0x27B8])) = *(v157 + (v156 ^ 0xA0)) ^ 0x6C;
  LODWORD(v147) = ((v110 ^ 0xBF079B08) - 1878632547 - 2 * ((v110 ^ 0xBF079B08) & 0x1006579F ^ v110 & 2)) ^ v18;
  LODWORD(v122) = v144 ^ (v147 - 333164032 - ((2 * v147) & 0xD848A400));
  *(&STACK[0x32F0] + LODWORD(STACK[0x27B0])) = *(v149 + (BYTE2(v122) ^ 8)) ^ 0x51;
  *(&STACK[0x32F0] + LODWORD(STACK[0x27A0])) = *(STACK[0x2858] + (((*(v157 + ((((LODWORD(STACK[0x27F8]) + 115 * *(STACK[0x2830] + ((111 * (((*(STACK[0x2870] + ((((v144 ^ v147) >> 6) & 3 | (4 * ((v144 ^ v147) & 0x3Fu))) ^ 0xE4)) ^ 0xC4) - 73) ^ 0xD2)) ^ 0x9DLL))) ^ 0x8C) - 37) ^ 0xC6)) ^ 0xD9) + 71) ^ 0x39)) ^ 0xE5;
  v158 = *(&off_278E1E490 + v125 - 13520) - 4;
  LODWORD(v146) = v158[HIBYTE(v145) ^ 8];
  HIDWORD(v10) = v146 ^ 8;
  LODWORD(v10) = (v146 ^ 0xFFFFFFBF) << 24;
  *(&STACK[0x32F0] + LODWORD(STACK[0x2820])) = (v10 >> 28) ^ 0x82;
  v159 = STACK[0x27E0];
  *(&STACK[0x32F0] + v159) = ((-119 * v148[BYTE3(v122) ^ 0x82]) ^ 3) - 24;
  v160 = *(&off_278E1E490 + (v125 ^ 0x3F68)) - 12;
  LODWORD(v146) = v160[BYTE2(v52) ^ 0x2CLL];
  HIDWORD(v10) = v146 ^ 0x55555555;
  LODWORD(v10) = (v146 ^ 0x20) << 24;
  *(&STACK[0x32F0] + LODWORD(STACK[0x27A8])) = (v10 >> 28) ^ 0x69;
  LODWORD(v146) = v160[BYTE2(v156) ^ 0xA9];
  HIDWORD(v10) = v146 ^ 0x55555555;
  LODWORD(v10) = (v146 ^ 0x20) << 24;
  *(&STACK[0x32F0] + LODWORD(STACK[0x2810])) = (v10 >> 28) ^ 0xE5;
  *(&STACK[0x32F0] + LODWORD(STACK[0x2798])) = v142[BYTE1(v122) ^ 0x94] ^ 0x9E;
  LODWORD(v122) = v158[HIBYTE(v156) ^ 0x98];
  HIDWORD(v10) = v122 ^ 8;
  LODWORD(v10) = (v122 ^ 0xFFFFFFBF) << 24;
  *(&STACK[0x32F0] + LODWORD(STACK[0x2818])) = (v10 >> 28) ^ 0xD8;
  *(&STACK[0x32F0] + LODWORD(STACK[0x27D0])) = v152[v52 ^ 0x41] ^ 0xB0;
  return (*(v2 + 8 * ((78 * (((v159 - 130197518 - ((2 * v159 + 32) & 0xF07AAFE4) + 16) ^ 0xF83D57C0) > 0x63F)) ^ v125)))();
}

uint64_t sub_244A96618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = STACK[0x2780];
  LODWORD(STACK[0x2838]) = LODWORD(STACK[0x2760]) ^ 0xE9119F76;
  LODWORD(STACK[0x2840]) = LODWORD(STACK[0x2770]) ^ a7;
  LODWORD(STACK[0x2848]) = LODWORD(STACK[0x2768]) ^ 0x3E4A195A;
  v9 = *(v7 + 8 * ((32633 * (v8 <= ((45 * (v8 ^ 0x5CF5283F)) ^ 0xD863737B))) ^ (v8 - 1559556507)));
  LODWORD(STACK[0x2828]) = STACK[0x2778];
  return v9();
}

uint64_t sub_244A97028(uint64_t a1, uint64_t a2, unsigned int a3, int a4, int a5, int a6, int a7)
{
  *(a2 + (a4 + a7)) = *(a1 + (a4 + a7));
  v10 = a7 + a5 < a3;
  if (a3 < v7 != a7 + a5 < v7)
  {
    v10 = a3 < v7;
  }

  return (*(v9 + 8 * ((!v10 * a6) ^ v8)))();
}

uint64_t sub_244A970C4@<X0>(int a1@<W4>, unsigned int a2@<W8>)
{
  if (a2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  return (*(v2 + 8 * (((((a2 < 8) ^ (a1 - 34)) & 1) * ((a1 + 480565729) & 0xE35B1EFB ^ 0x1ACD)) ^ a1)))(1465973600, v3);
}

uint64_t sub_244A972C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6, int a7, int a8)
{
  v12 = v10[1];
  v13 = (v8 + a6);
  *v13 = *v10;
  v13[1] = v12;
  return (*(v11 + 8 * ((((a8 | a7) >= 0) * v9) ^ a5)))();
}

uint64_t sub_244A97534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = (a8 + 295716253) ^ v8 ^ (a8 + 12709303) & 0xFF3E2157;
  if (v10 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  return (*(v9 + 8 * (((v10 > 7) | (16 * (v10 > 7))) ^ a8)))(v11);
}

uint64_t sub_244A97700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, unsigned int a8)
{
  v13 = *v9;
  v14 = (v8 + a8);
  *v14 = *(v9 - 1);
  v14[1] = v13;
  return (*(v12 + 8 * (((v10 == 0) * v11) ^ a6)))();
}

uint64_t sub_244A9790C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  STACK[0x2500] = 0;
  v17 = v14 + v12 + (v15 ^ 0x11A071B4 ^ ((a6 - 1491) | 0x106));
  v18 = ((v17 << (((a6 + 119) | 0xA0) ^ 0xEB)) & 0xAFC7EBBE) + (v17 ^ (v13 - 2544));
  LODWORD(STACK[0x217C]) = v10 + v18 + 2544;
  v19 = ((2 * (v11 + (v18 & 0xFFFFFFF8) + 2551)) & 0xEFEB3FE0) + ((v11 + (v18 & 0xFFFFFFF8) + 2551) ^ 0xF7F59FF1) - 2074291942;
  v20 = v18 - 1536263380 < v19;
  if (v18 - 1536263380 < 0x7C52710B != v19 < 0x7C52710B)
  {
    v20 = v19 < 0x7C52710B;
  }

  v21 = *(v16 + 8 * ((7972 * v20) ^ a6));
  LODWORD(STACK[0x23B8]) = 1466233309;
  LODWORD(STACK[0x2524]) = 26;
  LODWORD(STACK[0x2010]) = 36;
  LODWORD(STACK[0x43C]) = 57;
  LODWORD(STACK[0x1CE0]) = 95;
  LODWORD(STACK[0x1DE8]) = 212;
  LODWORD(STACK[0x2578]) = 52;
  LODWORD(STACK[0x21C8]) = 211;
  LODWORD(STACK[0x24E4]) = 227;
  LODWORD(STACK[0x1DB4]) = 28;
  v22 = STACK[0x3B0];
  STACK[0x518] = STACK[0x3B0];
  STACK[0x4B8] = v22;
  STACK[0x4C8] = v22;
  STACK[0x4F8] = v22;
  STACK[0x3E0] = v22;
  STACK[0x3A8] = v22;
  STACK[0x3C8] = v22;
  STACK[0x360] = v22;
  STACK[0x3A0] = v22;
  STACK[0x3D8] = v22;
  STACK[0x2118] = v22;
  STACK[0x2108] = v22;
  STACK[0x2110] = v22;
  STACK[0x1E88] = v22;
  STACK[0x398] = v22;
  STACK[0x3D0] = v22;
  STACK[0x2170] = v22;
  STACK[0x2180] = v22;
  STACK[0x24F0] = v22;
  STACK[0x2168] = v22;
  STACK[0x2020] = v22;
  STACK[0x2028] = v22;
  STACK[0x2038] = v22;
  STACK[0x388] = v22;
  STACK[0x4E8] = v22;
  STACK[0x378] = v22;
  STACK[0x390] = STACK[0x500];
  STACK[0x3C0] = v22;
  STACK[0x20B0] = v22;
  STACK[0x20A8] = v22;
  STACK[0x24A0] = v22;
  STACK[0x2100] = v22;
  STACK[0x1DD8] = v22;
  return v21(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_244A97B3C(int a1, int a2, uint64_t a3, int a4)
{
  STACK[0x2500] = 0;
  v13 = v4 < v6;
  *(v8 + (v7 ^ v9 ^ v10) + a4) = v11;
  if (v13 == a4 + a1 < v6)
  {
    v13 = a4 + a1 < v4;
  }

  v14 = *(v12 + 8 * ((!v13 * a2) ^ v5));
  LODWORD(STACK[0x23B8]) = 1466233309;
  LODWORD(STACK[0x2524]) = 26;
  LODWORD(STACK[0x2010]) = 36;
  LODWORD(STACK[0x43C]) = 57;
  LODWORD(STACK[0x1CE0]) = 95;
  LODWORD(STACK[0x1DE8]) = 212;
  LODWORD(STACK[0x2578]) = 52;
  LODWORD(STACK[0x21C8]) = 211;
  LODWORD(STACK[0x24E4]) = 227;
  LODWORD(STACK[0x1DB4]) = 28;
  v15 = STACK[0x3B0];
  STACK[0x518] = STACK[0x3B0];
  STACK[0x4B8] = v15;
  STACK[0x4C8] = v15;
  STACK[0x4F8] = v15;
  STACK[0x3E0] = v15;
  STACK[0x3A8] = v15;
  STACK[0x3C8] = v15;
  STACK[0x360] = v15;
  STACK[0x3A0] = v15;
  STACK[0x3D8] = v15;
  STACK[0x2118] = v15;
  STACK[0x2108] = v15;
  STACK[0x2110] = v15;
  STACK[0x1E88] = v15;
  STACK[0x398] = v15;
  STACK[0x3D0] = v15;
  STACK[0x2170] = v15;
  STACK[0x2180] = v15;
  STACK[0x24F0] = v15;
  STACK[0x2168] = v15;
  STACK[0x2020] = v15;
  STACK[0x2028] = v15;
  STACK[0x2038] = v15;
  STACK[0x388] = v15;
  STACK[0x4E8] = v15;
  STACK[0x378] = v15;
  STACK[0x390] = STACK[0x500];
  STACK[0x3C0] = v15;
  STACK[0x20B0] = v15;
  STACK[0x20A8] = v15;
  STACK[0x24A0] = v15;
  STACK[0x2100] = v15;
  STACK[0x1DD8] = v15;
  return v14();
}

uint64_t sub_244A97D40(uint64_t a1, unsigned int a2, uint64_t a3, int a4, int a5, int a6, char a7, unint64_t a8)
{
  v14 = a2 < v9;
  *(a1 + (v11 + a6)) = *(v13 + (((*(a3 + (v11 + a6)) ^ a7) + 71) ^ a8)) ^ 0x3E;
  v15 = v11 + v10 + (a4 & a5);
  v16 = v14 ^ (v15 < v9);
  v17 = v15 < a2;
  if (!v16)
  {
    v14 = v17;
  }

  return (*(v12 + 8 * ((!v14 | (4 * !v14)) ^ v8)))();
}

uint64_t sub_244A97DEC@<X0>(unsigned int a1@<W8>)
{
  if (a1 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a1;
  }

  return (*(v2 + 8 * (((v1 - 10774) | 0xEAF) ^ (8184 * (a1 > 7)))))((((2 * ((v1 - 10774) | 0xEAF)) ^ 0xF14) - 10199) | 0x1028u, v3);
}

uint64_t sub_244A97FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, int a8)
{
  v15 = (v8 + a6);
  v16 = *v15;
  v17 = v15[1];
  v18 = (v9 + v10 + a6);
  *v18 = v16;
  v18[1] = v17;
  return (*(v13 + 8 * (((v12 == a6) * v14) ^ a8)))(a1, a2, a3, a4, a5, a6 + v11);
}

uint64_t sub_244A98274@<X0>(int a1@<W8>)
{
  v3 = v1 ^ 0x11A076B2;
  if ((v1 ^ 0x11A076B2u) <= 1)
  {
    v3 = 1;
  }

  return (*(v2 + 8 * a1))(150551528, (v3 + 150551528), 4144408256, 71, 111, 110, 150551529, 33);
}

uint64_t sub_244A982E8@<X0>(int a1@<W1>, int a2@<W2>, char a3@<W3>, char a4@<W4>, unint64_t a5@<X5>, int a6@<W6>, char a7@<W7>, int a8@<W8>)
{
  v13 = *(STACK[0x2808] + (((*(v8 + (a8 ^ 0x1E0u) + a6 + a2) ^ a3) * a4) ^ a5)) ^ a7;
  *(v10 + (v9 + a6)) = v13 - ((2 * v13 - 74) & 0x8F) + 34;
  return (*(v12 + 8 * (((a6 == a1) * v11) ^ a8)))();
}

uint64_t sub_244A98350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  STACK[0x2500] = 0;
  v16 = (v13 ^ 0x11A076B2) + v12 - 2080367297 + ((a1 - 1704142457) & 0x65932D65);
  v17 = (2 * v16) & 0xAFC7FF9E;
  LODWORD(STACK[0x217C]) = v17 + (v16 ^ v14) + v10;
  v18 = v11 - (((LODWORD(STACK[0x27F8]) + 115 * *(STACK[0x2830] + ((111 * ((((2 * v16) & 0x9E) + (v16 ^ v14)) & 3)) ^ 0x9DLL))) ^ 0x8C) - 37) + v17 + (v16 ^ v14) + 3;
  v19 = v18 + 294162670 - ((2 * v18) & 0x231121DC);
  LODWORD(STACK[0x328]) = v19;
  v20 = *(v15 + 8 * ((14503 * ((v19 ^ 0x118890EEu) > v17 + (v16 ^ v14) + v11)) ^ a1));
  LODWORD(STACK[0x2524]) = 26;
  LODWORD(STACK[0x2010]) = 36;
  LODWORD(STACK[0x43C]) = 57;
  LODWORD(STACK[0x1CE0]) = 95;
  LODWORD(STACK[0x1DE8]) = 212;
  LODWORD(STACK[0x2578]) = 52;
  LODWORD(STACK[0x21C8]) = 211;
  LODWORD(STACK[0x24E4]) = 227;
  LODWORD(STACK[0x1DB4]) = 28;
  v21 = STACK[0x3B0];
  STACK[0x518] = STACK[0x3B0];
  STACK[0x4B8] = v21;
  STACK[0x4C8] = v21;
  STACK[0x4F8] = v21;
  STACK[0x3E0] = v21;
  STACK[0x3A8] = v21;
  STACK[0x3C8] = v21;
  STACK[0x360] = v21;
  STACK[0x3A0] = v21;
  STACK[0x3D8] = v21;
  STACK[0x2118] = v21;
  STACK[0x2108] = v21;
  STACK[0x2110] = v21;
  STACK[0x1E88] = v21;
  STACK[0x398] = v21;
  STACK[0x3D0] = v21;
  STACK[0x2170] = v21;
  STACK[0x2180] = v21;
  STACK[0x24F0] = v21;
  STACK[0x2168] = v21;
  STACK[0x2020] = v21;
  STACK[0x2028] = v21;
  STACK[0x2038] = v21;
  STACK[0x388] = v21;
  STACK[0x4E8] = v21;
  STACK[0x378] = v21;
  STACK[0x390] = STACK[0x500];
  STACK[0x3C0] = v21;
  STACK[0x20B0] = v21;
  STACK[0x20A8] = v21;
  STACK[0x24A0] = v21;
  STACK[0x2100] = v21;
  STACK[0x1DD8] = v21;
  LODWORD(STACK[0x23B8]) = 1466233245;
  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_244A985E0()
{
  v3.n128_u64[0] = 0x4747474747474747;
  v3.n128_u64[1] = 0x4747474747474747;
  return (*(v2 + 8 * (v0 - 10420)))((v0 - 20682), v0 - 20682 - (v1 & 0xFFFFFFE0), 31178, v3);
}

uint64_t sub_244A98614@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W8>, __n128 a5@<Q0>)
{
  v8 = (v6 + v5);
  *v8 = a5;
  v8[1] = a5;
  return (*(v7 + 8 * (((a2 == 0) * a3) ^ a4)))(a1, (a2 + a1));
}

uint64_t sub_244A98640()
{
  STACK[0x2500] = 0;
  v4 = *(v3 + 8 * (((((v0 - 12110) | 0x840) ^ 0x29E1) * (v1 != v2)) ^ (v0 + 1139)));
  LODWORD(STACK[0x2524]) = 26;
  LODWORD(STACK[0x2010]) = 36;
  LODWORD(STACK[0x43C]) = 57;
  LODWORD(STACK[0x1CE0]) = 95;
  LODWORD(STACK[0x1DE8]) = 212;
  LODWORD(STACK[0x2578]) = 52;
  LODWORD(STACK[0x21C8]) = 211;
  LODWORD(STACK[0x24E4]) = 227;
  LODWORD(STACK[0x1DB4]) = 28;
  v5 = STACK[0x3B0];
  STACK[0x518] = STACK[0x3B0];
  STACK[0x4B8] = v5;
  STACK[0x4C8] = v5;
  STACK[0x4F8] = v5;
  STACK[0x3E0] = v5;
  STACK[0x3A8] = v5;
  STACK[0x3C8] = v5;
  STACK[0x360] = v5;
  STACK[0x3A0] = v5;
  STACK[0x3D8] = v5;
  STACK[0x2118] = v5;
  STACK[0x2108] = v5;
  STACK[0x2110] = v5;
  STACK[0x1E88] = v5;
  STACK[0x398] = v5;
  STACK[0x3D0] = v5;
  STACK[0x2170] = v5;
  STACK[0x2180] = v5;
  STACK[0x24F0] = v5;
  STACK[0x2168] = v5;
  STACK[0x2020] = v5;
  STACK[0x2028] = v5;
  STACK[0x2038] = v5;
  STACK[0x388] = v5;
  STACK[0x4E8] = v5;
  STACK[0x378] = v5;
  STACK[0x390] = STACK[0x500];
  STACK[0x3C0] = v5;
  STACK[0x20B0] = v5;
  STACK[0x20A8] = v5;
  STACK[0x24A0] = v5;
  STACK[0x2100] = v5;
  STACK[0x1DD8] = v5;
  LODWORD(STACK[0x23B8]) = 1466233245;
  return v4();
}

uint64_t sub_244A9879C@<X0>(int a1@<W8>, __n128 a2@<Q0>)
{
  a2.n128_u16[0] = 18247;
  a2.n128_u8[2] = 71;
  a2.n128_u8[3] = 71;
  a2.n128_u8[4] = 71;
  a2.n128_u8[5] = 71;
  a2.n128_u8[6] = 71;
  a2.n128_u8[7] = 71;
  return (*(v4 + 8 * a1))(v3 - (v2 & 0xFFFFFFF8) + 8, a2);
}

uint64_t sub_244A98808()
{
  STACK[0x2500] = 0;
  v4 = *(v3 + 8 * ((((((v1 - 9564) | 0x260) ^ 0x2EFB) + ((v1 + 9836) | 0xA2)) * (v2 == v0)) ^ v1));
  LODWORD(STACK[0x2524]) = 26;
  LODWORD(STACK[0x2010]) = 36;
  LODWORD(STACK[0x43C]) = 57;
  LODWORD(STACK[0x1CE0]) = 95;
  LODWORD(STACK[0x1DE8]) = 212;
  LODWORD(STACK[0x2578]) = 52;
  LODWORD(STACK[0x21C8]) = 211;
  LODWORD(STACK[0x24E4]) = 227;
  LODWORD(STACK[0x1DB4]) = 28;
  v5 = STACK[0x3B0];
  STACK[0x518] = STACK[0x3B0];
  STACK[0x4B8] = v5;
  STACK[0x4C8] = v5;
  STACK[0x4F8] = v5;
  STACK[0x3E0] = v5;
  STACK[0x3A8] = v5;
  STACK[0x3C8] = v5;
  STACK[0x360] = v5;
  STACK[0x3A0] = v5;
  STACK[0x3D8] = v5;
  STACK[0x2118] = v5;
  STACK[0x2108] = v5;
  STACK[0x2110] = v5;
  STACK[0x1E88] = v5;
  STACK[0x398] = v5;
  STACK[0x3D0] = v5;
  STACK[0x2170] = v5;
  STACK[0x2180] = v5;
  STACK[0x24F0] = v5;
  STACK[0x2168] = v5;
  STACK[0x2020] = v5;
  STACK[0x2028] = v5;
  STACK[0x2038] = v5;
  STACK[0x388] = v5;
  STACK[0x4E8] = v5;
  STACK[0x378] = v5;
  STACK[0x390] = STACK[0x500];
  STACK[0x3C0] = v5;
  STACK[0x20B0] = v5;
  STACK[0x20A8] = v5;
  STACK[0x24A0] = v5;
  STACK[0x2100] = v5;
  STACK[0x1DD8] = v5;
  LODWORD(STACK[0x23B8]) = 1466233245;
  return v4();
}

uint64_t sub_244A98958()
{
  STACK[0x2500] = 0;
  *(v2 + (v5 - 1371730313)) = v6;
  v8 = *(v7 + 8 * (((v0 <= v5 - 1371730312) * ((v3 | v4) - 1740)) ^ v1));
  LODWORD(STACK[0x2524]) = 26;
  LODWORD(STACK[0x2010]) = 36;
  LODWORD(STACK[0x43C]) = 57;
  LODWORD(STACK[0x1CE0]) = 95;
  LODWORD(STACK[0x1DE8]) = 212;
  LODWORD(STACK[0x2578]) = 52;
  LODWORD(STACK[0x21C8]) = 211;
  LODWORD(STACK[0x24E4]) = 227;
  LODWORD(STACK[0x1DB4]) = 28;
  v9 = STACK[0x3B0];
  STACK[0x518] = STACK[0x3B0];
  STACK[0x4B8] = v9;
  STACK[0x4C8] = v9;
  STACK[0x4F8] = v9;
  STACK[0x3E0] = v9;
  STACK[0x3A8] = v9;
  STACK[0x3C8] = v9;
  STACK[0x360] = v9;
  STACK[0x3A0] = v9;
  STACK[0x3D8] = v9;
  STACK[0x2118] = v9;
  STACK[0x2108] = v9;
  STACK[0x2110] = v9;
  STACK[0x1E88] = v9;
  STACK[0x398] = v9;
  STACK[0x3D0] = v9;
  STACK[0x2170] = v9;
  STACK[0x2180] = v9;
  STACK[0x24F0] = v9;
  STACK[0x2168] = v9;
  STACK[0x2020] = v9;
  STACK[0x2028] = v9;
  STACK[0x2038] = v9;
  STACK[0x388] = v9;
  STACK[0x4E8] = v9;
  STACK[0x378] = v9;
  STACK[0x390] = STACK[0x500];
  STACK[0x3C0] = v9;
  STACK[0x20B0] = v9;
  STACK[0x20A8] = v9;
  STACK[0x24A0] = v9;
  STACK[0x2100] = v9;
  STACK[0x1DD8] = v9;
  LODWORD(STACK[0x23B8]) = 1466233245;
  return v8();
}

uint64_t sub_244A98A78@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x27B8]) = 0;
  v2 = *(v1 + 8 * (((LODWORD(STACK[0x2924]) - 375419374 <= (LODWORD(STACK[0x328]) ^ 0x118890EEu)) * (((a1 + 11314) ^ 0x1ECD) - 11257)) ^ a1));
  LODWORD(STACK[0x27B0]) = 1;
  LODWORD(STACK[0x2440]) = 1;
  return v2();
}

uint64_t sub_244A98ADC()
{
  v2 = *(v1 + 8 * ((((((LODWORD(STACK[0x23B8]) - 1466233245) < 8) ^ (v0 + 80)) & 1) * (v0 - 11694)) ^ v0));
  LODWORD(STACK[0x27B0]) = 1;
  LODWORD(STACK[0x2440]) = 1;
  LODWORD(STACK[0x27B8]) = 1;
  return v2();
}

uint64_t sub_244A98B84(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, int a6, unint64_t a7)
{
  LODWORD(STACK[0x2210]) = 0;
  LOBYTE(STACK[0x13AA8]) = a7 ^ 0x75;
  LOBYTE(STACK[0x13AA9]) = (BYTE1(a7) ^ 0x3C) - ((2 * (BYTE1(a7) ^ 0x3C)) & 0x8F) + 71;
  v12 = *(STACK[0x2698] + (((a7 >> (((v7 + 48) & 0x73u) - 4)) & 0xFC | (a7 >> 22) & 3) ^ 0x2F)) ^ 0x22;
  LOBYTE(STACK[0x13AAA]) = v12 - ((2 * v12 + 110) & 0x8F) - 2;
  LOBYTE(STACK[0x13AAB]) = (v11 ^ 0xF2) - ((2 * (v11 ^ 0xF2)) & 0x8F) + 71;
  LOBYTE(STACK[0x13AAC]) = (a4 ^ 0x1A) - ((2 * (a4 ^ 0x1A)) & 0x8F) + 71;
  LOBYTE(STACK[0x13AAD]) = (v10 ^ 0x4A) - ((2 * (v10 ^ 0x4A)) & 0x8F) + 71;
  LOBYTE(STACK[0x13AAE]) = (v8 ^ 0x3E) - ((2 * (v8 ^ 0x3E)) & 0x8F) + 71;
  v13 = (a6 ^ 0xFFFFFFB9) - ((2 * (a6 ^ 0xFFFFFFB9)) & 0xFFFFFF8F) + 71;
  LODWORD(STACK[0x2524]) = v13;
  LOBYTE(STACK[0x13AAF]) = v13;
  v14 = *(v9 + 8 * v7);
  LODWORD(STACK[0x2580]) = 1;
  STACK[0x2188] = 0x6013C80FCAB9EAE1;
  LODWORD(STACK[0x2470]) = STACK[0x212C];
  LODWORD(STACK[0x2878]) = STACK[0x2130];
  LODWORD(STACK[0x2840]) = 1;
  LODWORD(STACK[0x2360]) = 1;
  LODWORD(STACK[0x22B0]) = 1;
  LODWORD(STACK[0x2218]) = 1;
  LODWORD(STACK[0x2220]) = 1;
  LODWORD(STACK[0x22B8]) = 1;
  LODWORD(STACK[0x2228]) = 1;
  LODWORD(STACK[0x2230]) = 1;
  LODWORD(STACK[0x2440]) = 1;
  LODWORD(STACK[0x22C8]) = 1;
  LODWORD(STACK[0x2238]) = 1;
  LODWORD(STACK[0x21E8]) = 1;
  LODWORD(STACK[0x21F0]) = 1;
  LODWORD(STACK[0x21F8]) = 1;
  LODWORD(STACK[0x22D0]) = 1;
  LODWORD(STACK[0x2240]) = 1;
  LODWORD(STACK[0x2200]) = 1;
  LODWORD(STACK[0x2208]) = 1;
  return v14();
}

uint64_t sub_244A98D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x27D8]) = 0;
  LODWORD(STACK[0x27B8]) = 0;
  v9 = *(v8 + 8 * a8);
  STACK[0x27E0] = STACK[0x2188];
  LODWORD(STACK[0x212C]) = STACK[0x2470];
  LODWORD(STACK[0x2130]) = STACK[0x2878];
  v10 = STACK[0x2440];
  LODWORD(STACK[0x27D0]) = STACK[0x2440];
  LODWORD(STACK[0x27B0]) = v10;
  return v9(2 * (a8 ^ 0x3F44u));
}

uint64_t sub_244A98D6C(int a1)
{
  v2 = a1 - 3208;
  LODWORD(STACK[0x2878]) = a1;
  v3 = *STACK[0x2600];
  v4 = STACK[0x2558];
  v5 = *(STACK[0x2558] + 20) << 16;
  v6 = *(&off_278E1E490 + a1 - 5660);
  v7 = *(v6 + 798 + ((v3[234] + ((a1 + 120) ^ 0xEE)) ^ 0xA5));
  v8 = *STACK[0x2548];
  STACK[0x2848] = v8;
  HIDWORD(v9) = ~v7;
  LODWORD(v9) = (v7 << 24) - 1761607680;
  v10 = (v9 >> 25) - ((2 * (v9 >> 25)) & 0x70);
  v11 = STACK[0x2550];
  HIDWORD(v9) = (v10 + 56) ^ 0x38;
  LODWORD(v9) = (71 - v10) << 24;
  v12 = v9 >> 31;
  HIDWORD(v9) = v12;
  LODWORD(v9) = ((v12 - ((2 * v12) & 0xB8) + 92) ^ 0x5C) << 24;
  v13 = v3[31] + 0x3B44F557FF04ECBFLL - ((2 * v3[31]) & 0xFF7F);
  v14 = v6 + 15;
  v15 = (*(v6 + 15 + (*(v8 + 11) ^ 0x27)) ^ 0x69) - 118;
  v16 = v13 ^ 0x3B44F557FF04ECBFLL | (((v9 >> 25) ^ 0x2Bu) << 8);
  v17 = v15 - 0x243EA7724E1D0DE0 - ((2 * v15) & 0x7ALL) + 29;
  *(&v19 + 1) = v17 ^ 0xFFFFFFFD;
  *&v19 = v17 ^ 0xDBC1588DB1E2F220;
  v18 = v19 >> 5;
  v20 = v3[264] - 54;
  *(&v19 + 1) = v18 ^ 0x292;
  *&v19 = v18 ^ ((v16 + (v5 | (v4[9] << 24) | (*(v8 + 14) << 40) | (*(STACK[0x2550] + 35) << 32))) << 11) ^ 0x5A70AD2D5E7B5000;
  v21 = v19 >> 11;
  LODWORD(v16) = v20 - 545737595 - ((2 * v20) & 0x10A);
  *(&v19 + 1) = v21 ^ 8;
  *&v19 = v21 ^ 0x3148B868622DED70;
  v22 = v19 >> 4;
  v23 = STACK[0x2560];
  *(&v19 + 1) = v22 ^ 0x6303F67DC786221;
  *&v19 = v22 ^ 0x2000000000000000;
  LODWORD(v18) = (v16 ^ 0xDF78B485) - (v20 ^ 0xE6) - ((2 * ((v16 ^ 0xDF78B485) - (v20 ^ 0xE6))) & 0xE019050) - 2029991896;
  v24 = (v16 ^ 0xA7878351 ^ v18) + 2 * ((v18 ^ 0xD4) & (v16 ^ 0xDF78B485));
  v25 = (v19 >> 60) ^ (*(STACK[0x2560] + 117) << 56);
  LOBYTE(v22) = *(v6 + 279 + (((*(v23 + 192) >> 6) | (4 * *(v23 + 192))) ^ 0xBLL));
  STACK[0x2868] = v6 + 279;
  v26 = (v22 - 88) | (v3[194] << 8);
  v27 = v11[97];
  LOBYTE(v18) = (v11[97] >> 6) | (4 * v11[97]);
  v28 = v6 + 798;
  LODWORD(v24) = *(v6 + 798 + (v24 ^ 0x43));
  LODWORD(STACK[0x2818]) = v2;
  v29 = *(v23 + 32);
  LODWORD(STACK[0x2810]) = v2 | 0x4112;
  v30 = ((v29 << ((v2 | 0x12) - 53)) & 0x5CFBFDBA) + (v29 ^ 0x2E7DFEDD);
  LOBYTE(v13) = (-33 - v13) & 0x10;
  v31 = v11[72];
  v32 = *(v23 + 23);
  v33 = v4[16];
  DWORD1(v19) = ~v24;
  LODWORD(v19) = (v24 << 24) - 1761607680;
  v34 = *(v23 + 80);
  v35 = v4[25];
  LOBYTE(v18) = *(v6 + 279 + (v18 ^ 0xBLL)) - 88;
  LODWORD(v24) = *(v6 + 798 + ((*(v23 + 213) - 54) ^ 0xA5));
  STACK[0x2838] = v6 + 798;
  v36 = (((v19 >> 25) ^ 0x2Bu) << v13 << (v13 ^ 0x10u)) ^ v26 | (v33 << 24);
  v37 = v6 + 535;
  v38 = (v31 | (v32 << 8) | (v34 << 16)) & 0xFFFFFFFF00FFFFFFLL | ((v18 ^ 0xE1u) << 24) | (v35 << 32);
  LODWORD(v26) = *(v37 + (v11[40] ^ 0x9ELL));
  LODWORD(v18) = (((v26 >> 4) ^ 2) - 2 * (((v26 >> 4) ^ 2) & 3 ^ (v26 >> 4) & 1) + 82) ^ v26;
  DWORD1(v19) = ~v24;
  LODWORD(v19) = (((2 * v24) & 0x2E) + (v24 ^ 0x97)) << 24;
  LOBYTE(v32) = v19 >> 25;
  v39 = *(v23 + 171);
  LODWORD(STACK[0x28C8]) = v30 - 68420745;
  v40 = v4[36];
  DWORD1(v19) = v18 ^ 0xFFFFFFF7;
  LODWORD(v19) = (v18 ^ 0xFFFFFFBF) << 24;
  LODWORD(v8) = (v39 ^ 0xFFFFFF9F) + (v39 ^ 0x24) - 2 * ((v39 ^ 0x1F) & (v39 ^ 0x24));
  v41 = (v4[43] << 32) | (v11[91] << 40) | ((v19 >> 29) << 24) | (v11[93] << 48) | ((((v8 - 2 * (v8 & 0x3F) + 63) ^ 0xED) + *(v14 + (v39 ^ 0x27)) - 2 * (((v8 - 2 * (v8 & 0x3F) + 63) ^ 0x6D) & *(v14 + (v39 ^ 0x27))) - 118) << 56) | v40 | (v11[94] << 8) | (v3[202] << 16);
  v42 = v41 - 2 * (v41 & 0x348A8DE8E3FEE9BELL ^ v40 & 0x1A);
  LODWORD(v41) = *(v28 + ((*(v23 + 140) - 54) ^ 0xA5));
  v43 = (v30 - 780009181) | (*(v23 + 75) << 32) | (v3[284] << 48) | (v11[16] << 56);
  v44 = v42 - 0x4B7572171C01165CLL;
  v45 = v36 ^ (v43 | (v3[247] << 40));
  DWORD1(v19) = ~v41;
  LODWORD(v19) = (v41 << 24) - 1761607680;
  v46 = v45 ^ (v11[12] << 40) ^ v38 ^ ((v32 ^ 0x2Bu) << 48) ^ (v3[313] << 56);
  v47 = ((((*(v14 + (v3[104] ^ 0x27)) ^ 0x69) - 118) << v13 << (v13 ^ 0x10u)) ^ (v4[2] | (((v19 >> 25) ^ 0x2Bu) << 8)) | (v3[75] << 24)) ^ ((*(v23 + 39) << 40) | (v3[98] << 48) | (*(v23 + 170) << 32) | (v3[136] << 56));
  v48 = v25 ^ v47;
  v49 = v47 ^ v44;
  v50 = v48 ^ (v46 ^ 0x9DBCD203B2920474) & (v45 ^ 0xD2ABE1CD29B114BFLL);
  v51 = (v49 ^ 0xA7D537D18ABC8EA0) & (v48 ^ 0xA18CEBFAA338FF90);
  v52 = (v48 ^ 0x5E7314055CC7006FLL) & (v45 ^ 0x2D541E32D64EEB40) ^ v49;
  v53 = v50 ^ v45 ^ (((v44 ^ 0xA46DA4CF0E340BDDLL) & (v46 ^ 0x62432DFC4D6DFB8BLL)) - ((2 * ((v44 ^ 0xA46DA4CF0E340BDDLL) & (v46 ^ 0x62432DFC4D6DFB8BLL))) & 0xAE5E9ABE0471E558) - 0x28D0B2A0FDC70D54);
  v54 = v52 ^ v50 ^ 0xB3379183C14A17A2;
  v55 = (v49 ^ 0x582AC82E7543715FLL) & (v44 ^ 0x5B925B30F1CBF422) ^ v46;
  v56 = v55 ^ v44 ^ (v51 - ((2 * v51) & 0x388C578DD39906EALL) - 0x63B9D43916337C8BLL);
  v57 = __ROR8__(v53, 58) & 0xFFFFFFFFFFFFFFC7;
  *(&v19 + 1) = v53 ^ 0xDD28A46AB8D09 ^ (((v53 >> 61) ^ 6) - ((2 * ((v53 >> 61) ^ 6)) & 4) + 0x15F36FDD3686D812);
  *&v19 = v53 ^ 0xC000000000000000;
  v58 = (v52 ^ v50 | 0xFFFF7FFFFFFFFFFFLL) ^ ((v52 ^ v50) >> 28) ^ (v54 << 45) ^ (v54 & 0x800000000000 | (v54 >> 19));
  v59 = (((v19 >> 61) ^ v57) >> 3) ^ (v53 >> 39) | (((v19 >> 61) ^ v57) << 61);
  v60 = (v58 ^ (v54 << 36) ^ 0x43985C3264836699) - 2 * ((v58 ^ (v54 << 36) ^ 0x43985C3264836699) & 0x700B8FCC3F87FFLL ^ v58 & 0x20) - 0x7F8FF47033C07821;
  if ((v56 ^ 0x3A81033EC0410D88uLL) >= 0xA8729D9E4B4692ECLL)
  {
    v61 = (v56 ^ 0x3A81033EC0410D8BLL) - ((2 * (v56 ^ 0x3A81033EC0410D8BLL) + 0x2F1AC4C36972DA28) & 0x45269734B97414BALL) - 0x5DF5203EE8C888FLL;
  }

  else
  {
    v61 = v56 ^ 0x981248A49CFB07D6;
  }

  *(&v63 + 1) = v55;
  *&v63 = v55 ^ 0xE3749C619E6871B4;
  v62 = v63 >> 1;
  *(&v63 + 1) = v55 ^ 0x34;
  *&v63 = v55 ^ 0xE3749C619E687180;
  v64 = v63 >> 6;
  *(&v63 + 1) = v52 ^ 0xFFFFFFFB;
  *&v63 = v52 ^ 0x3D9B3673DFA0FB00;
  v65 = v63 >> 7;
  v66 = 0xAE1D60417FC98B1;
  if ((v56 ^ 0x3A81033EC0410D88uLL) < 0xA8729D9E4B4692ECLL)
  {
    v66 = 0xA2934B9A5CBA0A5DLL;
  }

  v67 = ((v62 ^ v64) - ((2 * (v62 ^ v64)) & 0xAF06B0D6BC4F9EA6) - 0x287CA794A1D830ADLL) ^ v55;
  if (v61 == 0xA2934B9A5CBA0A5DLL)
  {
    v68 = v66;
  }

  else
  {
    v68 = v56 ^ 0x981248A49CFB07D6;
  }

  v69 = v59 ^ (v53 << 25);
  v70 = v67 ^ v69;
  v71 = v65 ^ __ROR8__(v52, 41);
  v72 = v71 ^ v52;
  *(&v73 + 1) = v56 ^ 0x18B;
  *&v73 = v56 ^ 0x3A81033EC0410C00;
  v74 = v70 ^ 0x35E2741B768EEB45;
  v75 = v71 ^ v50 ^ v60;
  v76 = (v73 >> 10) ^ v56 ^ (v68 >> 17) ^ (v68 << 47);
  v77 = v76 ^ 0xF16074C6F1C145B6;
  v78 = (v70 ^ 0x35E2741B768EEB45) & (v69 ^ 0xFEEA4FEE493EAA5DLL) ^ v75;
  v79 = v76 ^ 0xF16074C6F1C145B6 ^ v72;
  v80 = v78 ^ v69 ^ (((v76 ^ 0x3FAFD277658C23D6) & (v70 ^ 0xCA1D8BE4897114BALL)) - ((2 * ((v76 ^ 0x3FAFD277658C23D6) & (v70 ^ 0xCA1D8BE4897114BALL))) & 0x6EBD57DD2268D86) + 0x375EABEE91346C3);
  v81 = v79 ^ (v69 ^ 0x115B011B6C155A2) & (v75 ^ 0xF19A17240952B6D3);
  v82 = ((v81 ^ 0xCABB40BFF6735080) - (v78 ^ v81 ^ 0xC4DEA86400DE19ACLL)) ^ ((v78 ^ 0xF19A17240952B6D3) + 1);
  v83 = (v78 ^ 0x12D5AE4740957B8BLL ^ (v82 - ((2 * v82) & 0x39608D396C70654ELL) + 0x1CB0469CB63832A7)) + (v81 ^ 0xCABB40BFF6735080);
  v84 = v76 & 0x532BC3C007568A00 ^ 0x4000018002528800 ^ (v76 ^ 0xC0502D889A73DC29) & (v72 ^ 0x575F25CE6568BCE0);
  v85 = v84 + v74;
  v86 = (((v79 ^ 0x3544BF40098CAF7FLL) & (v75 ^ 0xE65E8DBF6AD492CLL)) - ((2 * ((v79 ^ 0x3544BF40098CAF7FLL) & (v75 ^ 0xE65E8DBF6AD492CLL))) & 0x9D9F4D63289ACCC0) - 0x3130594E6BB299A0) ^ v77;
  v87 = ((v84 + v74) ^ 0xEEE1F373F893EF7ELL) - 2 * (v84 & v74) + ((2 * (v84 + v74)) & 0xDDC3E6E7F127DEFCLL) + 0x111E0C8C076C1082;
  v88 = v87 - ((2 * v87) & 0x7AD2E8DF3AC1754ELL) - 0x42968B90629F4559;
  v89 = v86 ^ v88;
  v90 = ((8 * v80) ^ 0x80C512D63AE48FD8) - 0xBF808B7BA7A1692 - ((2 * ((8 * v80) ^ 0x80C512D63AE48FD8)) & 0xE80FEE908B0BD2D0);
  *(&v73 + 1) = v83 ^ 0x7521A;
  *&v73 = v83 ^ 0x272F2D4C9480000;
  v91 = (v73 >> 19) ^ v83;
  v92 = ((v88 << 58) ^ 0xA400000000000000) + 0x390FD8773745BD0CLL - ((2 * ((v88 << 58) ^ 0xA400000000000000)) & 0x7000000000000000);
  v93 = v80 & 0x100000 ^ 0x7A7CB7BFFB521CFCLL;
  v94 = ((v88 >> 1) ^ (v88 >> 6) | (v85 << 63)) ^ v88;
  v95 = ((v89 >> 17) & 1 ^ 0x3EDDF97FFA7A3D8FLL) + 2 * ((v89 >> 17) & 1);
  v96 = v93 - 0x1840018810000048;
  if ((v90 & (v93 - 0x7A7CB7BFFB421CFCLL)) != 0)
  {
    v96 = 0xDCB96DF7E68439B0 - v93;
  }

  v97 = (v90 ^ 0xF407F7484585E96ELL) - 0x623CB637EB421CB4 + v96;
  v98 = v94 ^ v92 ^ 0xE4E86997AA4510DDLL;
  v99 = v92 ^ 0x390FD8773745BD0CLL;
  *(&v100 + 1) = v81 ^ 0x72;
  *&v100 = v81 ^ 0xCABB40BFF6735080;
  v101 = v94 ^ 0x8B49463035680BB7 ^ (((v99 - v98) ^ ((v94 ^ 0x22184E1F62FF522ELL) + 1)) - ((2 * ((v99 - v98) ^ ((v94 ^ 0x22184E1F62FF522ELL) + 1))) & 0xAD5DEFA150D14CCCLL) + 0x56AEF7D0A868A666);
  v102 = v95 - 0x8989091040110ELL;
  v103 = v101 + v99 - 0x7ABFC52C6B8C9B8ALL - ((2 * (v101 + v99)) & 0xA8075A728E6C8ECLL);
  v104 = (v91 ^ 0x272F2D4C94F521ALL) + ((v83 >> 28) ^ 0x272F2D4C) - 2 * ((v91 ^ 0x4C94F521ALL) & ((v83 >> 28) ^ 0x272F2D4C));
  v105 = v89 ^ (v89 >> 10) ^ 0xF597D14F1AA12FEALL;
  v106 = v81 ^ 0xCF253DBE280E11D3 ^ (((v100 >> 7) ^ (v81 >> 41) ^ (v81 << 23) ^ 0xEF28796BB91E3B11) + 0x2CC80C9F2CC2EFC7 - 2 * (((v100 >> 7) ^ (v81 >> 41) ^ (v81 << 23) ^ 0xEF28796BB91E3B11) & 0x2CC80C9F2CC2EFEFLL ^ ((v100 >> 7) ^ (v81 >> 41)) & 0x28));
  v107 = v104 ^ (v83 << 36) ^ 0x94F521A000000000;
  v108 = v80 & 0xFFFFFFFFFFEFFFFFLL ^ ((*(v14 + ((v80 >> 61) ^ 0x22)) ^ 0x69) - 118) ^ (v80 << 25) ^ (v80 >> 39) ^ v97;
  if (((v95 - 0x3EDDF97FFA7A3D8FLL) & v105) != 0)
  {
    v102 = 0x7D3269F6E4B46A10 - v95;
  }

  v109 = (v105 - 0x3E547076EA3A2C81 + v102) ^ (v89 >> 17) & 0x7FFFFFFFFFFELL;
  v110 = v103 ^ v108;
  v111 = (v89 << 47) ^ (v89 << 54) ^ v109;
  v112 = v111 ^ v106;
  v113 = (v107 + 0x28BBEB5831F2AD9BLL - 2 * (v107 & 0x28BBEB5831F2ADBBLL ^ v104 & 0x20)) ^ v106;
  v114 = (v103 ^ v108 ^ 0x7F29DE555BA03B36) & (v111 ^ 0xAFC67AD55DF0F16CLL) ^ v108;
  v115 = (v111 ^ v106 ^ 0x8E4F0D13357C24FALL) & (v113 ^ 0xF6CD6361A68187F2) ^ v111;
  v116 = (v103 ^ 0x85403AD394736476) & (v108 ^ 0xFA69E486CFD35F40) ^ v113;
  v117 = v116 & 0xFFFFFFFFF7FFFFFFLL;
  v118 = v116 & 0x8000000;
  v119 = v110 ^ (v112 ^ 0x71B0F2ECCA83DB05) & (v111 ^ 0x5039852AA20F0E93);
  v120 = (((2 * v113) ^ 0x1265393CB2FCF01BLL) + (v113 ^ 0xF6CD6361A68187F2)) & (v108 ^ 0x5961B79302CA0BFLL) ^ v112;
  v121 = v116 ^ v120;
  v122 = v116 ^ v120 ^ 0x694E5D2C3BCB9397;
  v123 = (v110 ^ 0xD621AAA45FC4C9) & (v115 ^ 0x2FC67AD55DF0F16CLL);
  if ((v114 & v118) != 0)
  {
    v124 = -2 * v118;
  }

  else
  {
    v124 = 0;
  }

  v125 = ((v114 ^ 0x5961B79302CA0BFLL) + v118 + v124) ^ v117;
  v126 = (v119 ^ 0x80D621AAA45FC4C9) + (v115 ^ 0xAFC67AD55DF0F16CLL) - 2 * v123;
  v127 = v122 >> 28;
  *(&v128 + 1) = v121 ^ 0x3CE02;
  *&v128 = v121 ^ 0x1B829E0854800000;
  v129 = (v128 >> 19) ^ v122;
  v130 = v120 ^ 0x71B0F2ECCA83DB05;
  v131 = (v120 & 0x400000) == 0;
  v132 = 0x400000;
  if (!v131)
  {
    v132 = -4194304;
  }

  v133 = v132 + v130;
  v134 = v129 ^ 0x72CCC32343846FD3;
  v135 = v129 ^ 0x72CCC32343846FD3 ^ v127;
  v136 = v129 ^ 0x72CCC3246F485D95;
  *(&v137 + 1) = v125 ^ 0x1A1F399843172567;
  *&v137 = v125 ^ 0x4000000000000000;
  v138 = ((v127 ^ 0xFFFFFFF8D333CDB9) + 1) ^ v127 ^ (v136 - v135);
  v139 = (v138 ^ 0x72CCC3246) & v136;
  v140 = v109 & 0x22;
  LOBYTE(v135) = v109 & 0x22 ^ 0x20;
  v141 = v133 ^ (v133 >> 7);
  v142 = v134 ^ v138;
  v143 = v125 ^ __ROR8__(v125, 39) ^ (v137 >> 61);
  v144 = (v141 ^ 0x1CD64B41C3BA76C5) << v135;
  *(&v137 + 1) = v119;
  *&v137 = v119 ^ 0x4E239807E694E8BALL;
  v145 = v137 >> 1;
  v146 = v144 << (v140 ^ 2u);
  *(&v137 + 1) = v126 ^ 0x287;
  *&v137 = v126 ^ 0xC8FDDAE481DBF000;
  v147 = v137 >> 10;
  v148 = v142 + 2 * v139;
  *(&v137 + 1) = (v146 | (v141 >> 30) ^ 0x73592D07) ^ (v130 << 27) ^ 0x24F3904D7;
  *&v137 = v146 ^ 0xFFBEF63400000000;
  v149 = v137 >> 34;
  v150 = v126 ^ __ROR8__(v126, 17) ^ v147;
  v151 = v150 ^ 0xA48CB1DCB3DC16ADLL;
  *&v137 = __ROR8__(v119, 6);
  v152 = ((v143 << 57) ^ 0x2800000000000000) + 0x53A9CB36A3F087D9 - ((v143 << 58) & 0xA400000000000000);
  v153 = ((v143 >> 6) & 0x33F5B7D7FDFDDBELL ^ 0x813086969D2C880) + ((v143 >> 7) ^ 0x7BF63BCB0B069A9FLL);
  v154 = v149 ^ __ROR8__(v133, 41);
  v155 = ((v145 ^ v137 ^ 0xE9388E601F9A53A2) - ((2 * (v145 ^ v137 ^ 0xE9388E601F9A53A2)) & 0xD1B494BEB3CFB510) - 0x1725B5A0A6182578) ^ v119 ^ v143;
  v156 = (v153 + 0x3860524140101121 + ((v152 ^ 0x53A9CB36A3F087D9 | (v143 >> 7)) ^ 0x4396698A4B168BBFLL) + 1) ^ ((v152 ^ 0xAC5634C95C0F7826) + 1);
  v157 = ((v156 + 0x53A9CB36A3F087D9 - ((2 * v156) & 0xA753966D47E10FB2)) ^ v152) + v153;
  *(&v137 + 1) = v157 + 0x60524140101121;
  *&v137 = v157 + 0x3860524140101121;
  v158 = v154 ^ (v121 << 36) ^ v148;
  v159 = v154 ^ v150 ^ 0xA48CB1DCB3DC16ADLL;
  v160 = ((v137 >> 57) ^ 0xA1ADD2F706E6C4A1) & (v155 ^ 0xCC60C58A32D02926) ^ v158;
  v161 = v143 ^ 0x1B44948928A63079 ^ (((v155 ^ 0x339F3A75CD2FD6D9) & (v150 ^ 0x31BE3E9A6CA9B26ALL)) - ((2 * ((v155 ^ 0x339F3A75CD2FD6D9) & (v150 ^ 0x31BE3E9A6CA9B26ALL))) & 0xE3BB06B74A0A56DALL) + 0x71DD835BA5052B6DLL);
  v162 = (v154 ^ 0x3D468D97D961CA47) & (v150 ^ 0xCE41C16593564D95);
  v163 = (v158 ^ 0x8A859248269E35B8) & (v143 ^ 0x6A9917D28DA31B14) ^ v159;
  v164 = v160 ^ (v161 - ((2 * v161) & 0xD257985046A8D0D0) - 0x16D433D7DCAB9798);
  v165 = v162 ^ v155;
  v166 = v162 ^ v155 ^ v151 ^ (((v158 ^ 0x757A6DB7D961CA47) & (v159 ^ 0x578BFD2EF9EB917FLL)) - ((2 * ((v158 ^ 0x757A6DB7D961CA47) & (v159 ^ 0x578BFD2EF9EB917FLL))) & 0x2A651E8DBEEB498ELL) - 0x6ACD70B9208A5B39);
  *(&v137 + 1) = v160 ^ v163 ^ LODWORD(STACK[0x1CE4]);
  *&v137 = v160 ^ v163 ^ 0xAB180E8930F80000;
  v167 = v166 ^ 0xCC60C58A32D02926;
  v168 = ((((v166 ^ 0x4C60C58A32D02926) - (v166 ^ 0x613AF75E7BCC7073)) ^ 0x7FFFFFFFFFFFFFFELL) + (v166 ^ 0x4C60C58A32D02926)) ^ v166 & 0x52A5CD2BB6E3A6AALL;
  v169 = ((v164 << 25) ^ 0xFE2D1F5BF8000000) + 0x2C1A8A70511171FELL - ((2 * ((v164 << 25) ^ 0xFE2D1F5BF8000000)) & 0x583514E0A0000000);
  v170 = ((2 * v168) ^ 0x250A104308470D11) + v167 - ((2 * (((2 * v168) ^ 0x250A104308470D11) + v167) + 0x1AB465A89238B2ACLL) & 0x2E6D067589C2E96CLL) - 0x3B6F49F0F20231F4;
  v171 = 0xF87D24C43885743BLL - (v165 ^ 0xB4BB5B066B5A7EC1);
  v172 = v164 ^ (v164 >> 61) ^ (v164 >> 39) ^ (8 * v164);
  v173 = v160 ^ v163 ^ __ROR8__(v160 ^ v163, 28) ^ (v137 >> 19);
  *(&v137 + 1) = v171 ^ 0x4FDAB932;
  *&v137 = v171 ^ 0xF25DA37200000000;
  v174 = (v137 >> 32) ^ 0x4FDAB93200000000;
  *(&v137 + 1) = DWORD1(v137) ^ 0xF25DA372;
  *&v137 = v174;
  v175 = (v137 >> 32) + 0x782DB3BC77A8BC5;
  *(&v137 + 1) = ((v172 ^ 0xA2B1FDCC) - (v172 ^ v169 ^ 0xF3A08C32) - ((2 * ((v172 ^ 0xA2B1FDCC) - (v172 ^ v169 ^ 0xF3A08C32))) & 0x6238689E) + 823931983) ^ 0x344F;
  *&v137 = v169 ^ 0xA7C11691600D0000 ^ ((v172 ^ 0x2D60AF07A2B1FDCCLL) - (v172 ^ v169 ^ 0x17A2577F3A08C32) - ((2 * ((v172 ^ 0x2D60AF07A2B1FDCCLL) - (v172 ^ v169 ^ 0x17A2577F3A08C32))) & 0x17B739C26238689ELL) - 0x7424631ECEE3CBB1);
  v176 = v137 >> 16;
  v177 = (v165 >> 1) ^ 0x5A5DAD8335AD3F60;
  v178 = v175 ^ (v177 - (v165 ^ 0xEEE6F6855EF741A1 ^ (v165 >> 1)));
  *(&v137 + 1) = v176 ^ (((v169 ^ 0xD3E5758FAEEE8E01) + 1) >> 16) ^ 0x7E8C7E80153DLL;
  *&v137 = v176 ^ 0x47C1000000000000;
  v179 = v137 >> 48;
  *(&v137 + 1) = v170 ^ 0xB6;
  *&v137 = v170 ^ 0x9736833AC4E17400;
  v169 ^= 0x2C1A8A70511171FEuLL;
  v180 = (v169 + (v172 ^ 0xAC132E78487345F2 ^ v179) - 2 * ((v179 ^ 0x7E8C7E80153D47C1) & (v172 ^ 0x2D60AF07A2B1FDCCLL)) + 1) ^ ((v172 ^ 0xD29F50F85D4E0233) + 1);
  v181 = (v172 ^ 0xC866B609A3C7A067 ^ (v180 - ((2 * v180) & 0xCA0C321C02ECBB56) - 0x1AF9E6F1FE89A255)) + v169;
  v182 = v181 - 0xC1F99920FAED7E9 - ((2 * v181) & 0xE7C0CCDBE0A2502ELL);
  v183 = ((~v165 << 63) | 0x34D694A1C6C84034) ^ (v165 >> 6) ^ (((v165 << 58) ^ 0x400000000000000) - ((2 * ((v165 << 58) ^ 0x400000000000000)) & 0x8FFFFFFFFFFFFFFFLL) - 0x3ADC46E18B7FD34ELL) ^ ((v165 ^ 0x3C955AF2675939EELL ^ (v178 - ((2 * v178) & 0x105C03E818068E5ELL) - 0x77D1FE0BF3FCB8D1)) + v177);
  v184 = v170 ^ __ROR8__(v170, 17) ^ (v137 >> 10);
  v185 = v184 ^ 0xB168083F8460FD3ALL;
  *(&v137 + 1) = v163 ^ 0x42;
  *&v137 = v163 ^ 0x8418712CB0AFAD80;
  v186 = v163 ^ __ROR8__(v163, 41) ^ (v137 >> 7);
  v187 = v184 ^ 0xB168083F8460FD3ALL ^ v186 ^ 0x54C509F42E195653;
  v188 = (v187 & 0x20000 ^ 0x79BCFCFADEDEF6EDLL) + 2 * (v187 & 0x20000);
  v189 = v188 - 0x31002822040C0288;
  v190 = v173 ^ v186 ^ 0x54C509F42E195653;
  v191 = (v183 ^ 0xC7A6BE5BB42D6ALL ^ v182) - 0x5E4D40B1AA900FBLL - ((2 * (v183 ^ 0xC7A6BE5BB42D6ALL ^ v182)) & 0xF43657E9CAADFE0ALL);
  v192 = (v191 ^ 0x5E4D40B1AA900FALL) & (v184 ^ 0x2D6DC8A1857C16C6);
  v193 = v190 ^ 0x1A66697FB8857E14;
  v194 = (v191 ^ 0xFA1B2BF4E556FF05) & (v182 ^ 0xC1F99920FAED7E8) ^ v190 ^ 0x1A66697FB8857E14;
  v195 = v173 ^ 0x718E8ED0420D9F7BLL ^ v184;
  v196 = v184 & 0x2066E534574145A0 ^ 0x2251452014120 ^ (v184 ^ 0xD292375E7A83E939) & (v186 ^ 0x3226C3CE06ACE45ALL);
  v197 = (v191 ^ 0x257A016A35CE21ALL ^ v194) + v196 - 2 * ((v191 ^ 0x257A016A35CE21ALL ^ v194) & v196);
  v198 = v197 - ((2 * v197) & 0xB59D1C77233A950ALL) - 0x253171C46E62B57BLL;
  v199 = (v198 & 0x40000000 ^ 0xDFDF4EFEEFFF7FFDLL) + 2 * (v198 & 0x40000000);
  v200 = (v182 ^ 0x7C900932E16366DFLL) & (v190 ^ 0x1DD51D6201709CF4) ^ (v190 ^ 0x1A66697FB8857E14) & 0x8F706F5F11324EC8;
  v201 = v199 + 0x31FEB75DB6FBE374;
  if (v27)
  {
    v202 = v195;
  }

  else
  {
    v202 = v193;
  }

  v204 = (v202 ^ 0xF84C8BE2460A1D1FLL) & (v187 ^ 0x257F106F8117E3AALL);
  v205 = v187 & 0xFFFFFFFFFFFDFFFFLL;
  v206 = v188 - 0x79BCFCFADEDEF6EDLL;
  v131 = ((v199 + 0x2020B10110008003) & (v194 ^ 0xF84C8BE240000000)) == 0;
  v207 = 0xF1BD555B96FAE36ELL - v199;
  if (v131)
  {
    v207 = v201;
  }

  v208 = (v194 ^ 0xF84C8BE2460A1D1FLL) - 0x11DE065CA6FB6371 + v207;
  v209 = 0xC279D1D3B9B1EB52 - v188;
  if (((v200 ^ 0x730641D11300000) & v206) != 0)
  {
    v189 = v209;
  }

  v210 = v208 ^ v198 & 0xFFFFFFFFBFFFFFFFLL;
  v211 = ((v200 ^ 0x730641D113042C0) - 0x48BCD4D8DAD2F465 + v189) ^ v205;
  v203 = (v192 - 0xC1F99920FAED7E9 - ((2 * v192) & 0xE7C0CCDBE0A2502ELL)) ^ v182;
  v212 = v198 ^ (v203 - 0x166D6B249B4AEE2CLL - ((2 * v203) & 0xD32529B6C96A23A8));
  v213 = v212 ^ v210 ^ 0xE99294DB64B511D4;
  v214 = v198 ^ v211 ^ v210;
  v215 = (v204 - ((2 * v204) & 0x380B813C0239D7F8) - 0x63FA3F61FEE31404) ^ v185;
  v216 = v210 ^ 0xE99294DB64B511D4 ^ (v215 - ((2 * v215) & 0x66B835C1EA50B6A2) + 0x335C1AE0F5285B51);
  v217 = ((v211 << 57) ^ 0x4000000000000000) - ((v211 & 1) << 58) - 0x7DD4109B27F7162FLL;
  v218 = 0xBC71FD4EE537D37 - ((v212 ^ ~(v210 ^ 0xE99294DB64B511D4)) >> 61);
  v219 = v211 ^ (v211 >> 7);
  v220 = ((v210 << 58) ^ 0x3800000000000000) - 0x3AF3D25164C277DALL - ((v210 << 59) & 0x8FFFFFFFFFFFFFFFLL);
  *(&v221 + 1) = v210;
  *&v221 = v210 ^ 0x27351DBBA399790ELL;
  v222 = (v217 & 0xDA00000000000000 ^ v219 & 0xDB4E565B41980B77 | v217 & 0x2400000000000000 ^ v219 & 0x24B1A9A4BE67F488) ^ 0xD9347F62F7773D20;
  v223 = v222 + 0x2B14A9AF0B905782 - 2 * (v222 & 0x2B14A9AF0B90578ALL ^ v219 & 8);
  v224 = v210 ^ (v210 >> 6) ^ (v221 >> 1);
  v225 = (v214 << 36) ^ (v214 >> 19) ^ ((v214 >> 28) | (v214 << 45)) ^ 0x7C95E71EF774250BLL;
  v226 = v213 ^ (8 * v213) ^ (v213 >> 39) ^ (v213 << 25) ^ v218;
  v227 = (v224 ^ 0x27A9C9CD4D171CEALL) + (v220 ^ 0xC50C2DAE9B3D8826) - 2 * ((v224 ^ 0x2400000000000000) & (v220 ^ 0x450C2DAE9B3D8826));
  v228 = v227 + 0x6784FF6FA68664C3 - ((2 * v227) & 0xCF09FEDF4D0CC986);
  v229 = v228 ^ v226;
  v230 = (v223 & 0x58CD337EFE025621 ^ (v211 >> 41) & 0x25621 | v223 & 0xA732CC8101FDA9DELL ^ (v211 >> 41) & 0x7DA9DE) ^ (v211 << 23);
  v231 = v230 ^ v214 ^ (v225 - ((2 * v225) & 0x335AF879F7596978) + 0x19AD7C3CFBACB4BCLL);
  v232 = v216 ^ (v216 << 47) ^ (v216 >> 10) ^ ((v216 >> 17) | (v216 << 54));
  v233 = v232 ^ 0x8D98B5A67439E202;
  v234 = (v228 ^ 0x6784FF6FA68664C3) & (v226 ^ 0xE659E0505763DC23);
  v235 = v232 ^ 0x8D98B5A67439E202 ^ v230;
  v236 = v226 ^ 0x19A61FAFA89C23DCLL;
  v237 = (v231 ^ 0x8199E45D8F7D7004) & v236;
  if (v183 == 0xF327C0D3ABE5057DLL)
  {
    v238 = 0x81DD1F3FF1E5B8E0;
  }

  else
  {
    v238 = v232 ^ 0x8F1920F186164DLL;
  }

  v239 = v237 ^ v235;
  v240 = v231 ^ 0x7E661BA270828FFBLL;
  v241 = v240 ^ v234;
  v242 = (v229 & 0x800000 | ((((v229 & 0x800000) >> 23) & 1) << 24)) ^ 0x9FFEDDFF6EDE77B7;
  v243 = (v236 ^ (v229 ^ v238) & (v232 ^ 0x7EADF9E0FF9C5152)) + v241 - 2 * ((v236 ^ (v229 ^ v238) & (v232 ^ 0x7EADF9E0FF9C5152)) & v241);
  v244 = (v237 ^ v235 ^ 0xAB5D21FB53C2BE56) + v241 - 2 * ((v237 ^ v235 ^ 0x2B5D21FB53C2BE56) & v241);
  v245 = v244 - ((2 * v244) & 0xEE22AF4DF6E719BCLL) + 0x771157A6FB738CDELL;
  v246 = v240 & (v235 ^ 0xEF3475566FE7DA91);
  v247 = v232 & 0xCF14554422D363C3 ^ 0x8110040400432281 ^ (v232 ^ 0x8152061F0063AEADLL) & (v230 ^ 0x2CEA93AB396EF5FDLL);
  v248 = 0xB7FCFB72BDB0EB4ELL - v242;
  if (((v242 + 0x6001220091218849) & v247) == 0)
  {
    v248 = v242 + 0x77FF3F73DFF3FBE0;
  }

  v249 = (v247 - 0x17FE1D734ED27397 + v248) ^ v229 & 0xFFFFFFFFFF7FFFFFLL;
  v250 = (v246 - ((2 * v246) & 0xE66A988D174B66A0) - 0xCCAB3B9745A4CB0) ^ v233;
  v251 = v249 ^ (v250 - ((2 * v250) & 0x11D79BF62F070506) - 0x77143204E87C7D7DLL);
  v252 = v251 ^ 0xF6C92D3B1999C59CLL;
  v253 = (0x6C8C4384040945ALL - (v249 & 0xAEC8DC386BE49D5FLL ^ 0x28C804384A409145)) ^ v249 & 0xAEC8DC386BE49D5FLL ^ ((v249 & 0xAEC8DC386BE49D5FLL ^ 0xD1FF3FFFF5FFFAE0) + 1);
  v254 = (v253 ^ 0x2E00C0000A00051FLL) + 0x6C8C4384040945ALL + (v249 & 0x513723C7941B62A0 ^ 0x50330147840A2000) - 0x111950627114FF5ELL - 2 * (((v253 ^ 0x2E00C0000A00051FLL) + 0x6C8C4384040945ALL + (v249 & 0x513723C7941B62A0 ^ 0x50330147840A2000)) & 0x6EE6AF9D8EEB00BFLL ^ ((v253 ^ 0x2E00C0000A00051FLL) + 0x6C8C4384040945ALL) & 0x1D);
  v255 = ((v251 << 47) ^ 0x83CA000000000000) + 0x713A6A1843D7A379 - ((2 * ((v251 << 47) ^ 0x83CA000000000000)) & 0xE274000000000000);
  *(&v256 + 1) = v245 ^ LODWORD(STACK[0x1CE8]);
  *&v256 = v245 ^ 0x771157A6FB700000;
  v257 = v245 ^ __ROR8__(v245, 28) ^ (v256 >> 19);
  v258 = v251 >> 17;
  v259 = ((v255 ^ 0x713A6A1843D7A379) + ((v251 >> 10) ^ 0x3EBD580BC11DC1) - 2 * ((v255 ^ 0x3A6A1843D7A379) & ((v251 >> 10) ^ 0x3EBD580BC11DC1))) ^ v251;
  v260 = ((((v254 >> 1) ^ 0x777357CEC7758051) - 0x111950627114FF5ELL - ((2 * ((v254 >> 1) ^ 0x777357CEC7758051)) & 0xDDCD5F3B1DD60144)) ^ v254) + (~v253 << 63);
  v3[31] = v257 ^ 0xB1;
  v261 = v259 & 0x200000 ^ 0x200000;
  v262 = *(v37 + (((BYTE1(v257) ^ 0xF6) - ((2 * (BYTE1(v257) ^ 0xF6)) & 0xDC) - 18) ^ 0xEE) + ((2 * (((v257 >> 8) ^ 0x8A66F6) - ((2 * ((v257 >> 8) ^ 0x8A66F6)) & 0x12B35DC) - 1869243666)) & 0x13C ^ 0xFFFFFEE3) + 159);
  if ((v261 & v258) != 0)
  {
    v263 = (v258 ^ 0x7D7AB017823BLL) - v261 + 0x3573C08D62A7FEA8 - 2 * (((v258 ^ 0x7D7AB017823BLL) - v261) & 0x3573C08D62A7FEBDLL ^ (v258 ^ 0x7D7AB017823BLL) & 0x15);
  }

  else
  {
    v263 = v258 ^ 0xE55904EEA0C3FD5ELL ^ (v259 & 0x200000 | 0xD02AB919725381CDLL);
  }

  v264 = STACK[0x2848];
  *(v264 + 14) = BYTE5(v257) ^ 0x9A;
  v265 = v262 >> 4;
  *(v23 + 117) = HIBYTE(v257) ^ 0xC0;
  *(v264 + 11) = BYTE6(v257) ^ 0x29;
  v266 = v259 & 0xFFFFFFFFFFDFFFFFLL ^ (((v252 << 54) ^ 0x8200000000000000) + 0x3573C08D62A7FEA8 - ((v252 << 55) & 0x6A80000000000000)) ^ v263;
  v267 = ((v262 >> 4) ^ 2) - ((v262 >> 3) & 0x10) + 24;
  v268 = v239 ^ (v239 << 23) ^ ((v239 >> 7) ^ (v239 >> 41) | (v239 << 57));
  v269 = v267 ^ v262;
  v270 = v267 ^ ~v262;
  v271 = BYTE4(v257) & 0x3F ^ 1;
  if (v254 == 0xEEE6AF9D8EEB00A2)
  {
    v271 = 63;
  }

  HIDWORD(v272) = v269;
  LODWORD(v272) = v270 << 24;
  v273 = v243 ^ (v243 >> 39) ^ (~v243 >> 61) ^ (8 * v243);
  v274 = v273 ^ (v243 << 25);
  v11[35] = (v271 & (BYTE4(v257) ^ 0x41) | BYTE4(v257) & 0xC0) ^ 0x40;
  v275 = ((v272 >> 28) ^ 0x36) << 24;
  HIDWORD(v272) = ~v265;
  LODWORD(v272) = v275;
  v4[20] = BYTE2(v257) ^ 0x66;
  v4[9] = BYTE3(v257) ^ 0x8A;
  v276 = v260 ^ (v254 >> 6);
  v277 = v276 ^ (v254 << 58);
  v3[234] = (v272 >> 25) ^ 0xF3;
  *(v23 + 192) = v273 ^ 0x3B;
  v278 = STACK[0x2838];
  v279 = *(STACK[0x2838] + (((BYTE1(v274) ^ 0x22) - 54) ^ 0xA5));
  v11[16] = HIBYTE(v274) ^ 0x2F;
  *(v23 + 75) = BYTE4(v274) ^ 0x46;
  HIDWORD(v272) = ~v279;
  LODWORD(v272) = ((v279 - ((2 * v279 + 46) & 0x84)) << 24) + 1493172224;
  v280 = v268 ^ 0xC701006D;
  v3[264] = BYTE2(v273) ^ 0x67;
  v3[247] = BYTE5(v274) ^ 0xE5;
  v3[194] = (v272 >> 25) ^ 0x4A;
  v11[72] = v276 ^ 2;
  v3[284] = BYTE6(v274) ^ 0x82;
  v4[16] = BYTE3(v274) ^ 0x34;
  v281 = *(v37 + (BYTE1(v276) ^ 0x32));
  v282 = v281 ^ 0x28;
  if (v48 == 0xFC476CE17B777A82)
  {
    v282 = 40;
  }

  v283 = (v282 | v281) ^ (v281 & 0x28 | 0xFFFFFFC4);
  v11[12] = BYTE5(v276) ^ 0x9A;
  v11[97] = BYTE3(v276) ^ 0x76;
  v284 = ((v283 >> 4) ^ 0xC) - ((2 * ((v283 >> 4) ^ 0xC)) & 0x55555555) - 6;
  *(v23 + 80) = BYTE2(v276) ^ 0x3B;
  HIDWORD(v285) = v284 ^ v283 ^ 0xFFFFFFF3;
  LODWORD(v285) = (v284 ^ ~v283) << 24;
  *(v23 + 23) = v285 >> 29;
  v4[25] = BYTE4(v276) ^ 0xBE;
  v286 = *(v278 + (((BYTE6(v276) ^ 0xBB) - 54) ^ 0xA5));
  v11[40] = BYTE3(v266) ^ 4;
  v3[313] = HIBYTE(v277) ^ 0x8B;
  v4[43] = BYTE4(v266) ^ 0x2F;
  v11[94] = BYTE1(v266) ^ 7;
  v4[36] = v266 ^ 0x94;
  HIDWORD(v285) = ~v286;
  LODWORD(v285) = (v286 << 24) - 1761607680;
  *(v23 + 213) = (v285 >> 25) ^ 0x2B;
  v3[202] = BYTE2(v266) ^ 0x57;
  LOBYTE(v284) = *(v14 + (BYTE5(v266) ^ 0x47));
  *(v23 + 171) = HIBYTE(v266) ^ 0xFA;
  v11[93] = BYTE6(v266) ^ 0xF5;
  v11[91] = (v284 ^ 0x69) - 118;
  v287 = *(v278 + (((v268 ^ 0xA2) - 54) ^ 0xA5));
  v288 = 2 * ((((2 * v287) & 0x2E) + (v287 ^ 0xFFFFFF97)) & 0x3F) + ((((2 * v287) & 0x2E) + (v287 ^ 0xFFFFFF97)) ^ 0xFFFFFFBF);
  HIDWORD(v285) = ~v287;
  LODWORD(v285) = ((v288 - ((2 * v288 - 126) & 0xAC)) << 24) - 1761607680;
  v289 = (HIBYTE(v280) ^ 0x58) - ((2 * (HIBYTE(v280) ^ 0x58)) & 0x66666666) - 543422925;
  v4[2] = v285 >> 25;
  LOBYTE(v287) = (v289 & 0x4B ^ 0xB7) + 117 + ((2 * ((v289 & 0x4B ^ 0xB7) & 0x49 ^ (v289 | 0xF7))) ^ 0x79) + 1;
  v290 = *(v37 + (BYTE1(v268) ^ 0x13));
  LOBYTE(v289) = (v287 ^ 0x75) - (v289 ^ 0x46 ^ v287) - ((2 * ((v287 ^ 0x75) - (v289 ^ 0x46 ^ v287))) & 0x54) + 42;
  v291 = (v290 >> 4) ^ 2;
  v292 = (-51 - (v290 ^ 0xFFFFFFE5)) ^ ((v290 ^ 0xFFFFFFD7) + 1);
  v293 = (v290 ^ 0xFFFFFFB3 ^ (v292 - ((2 * v292) & 0xFFFFFFC8) + 100)) - 77;
  v294 = (v277 ^ v268 ^ 0x97293784E98621A0) + (v277 ^ 0x8BBB9ABE763BAC02) - 2 * ((v277 ^ v268 ^ 0x17293784E98621A0) & (v277 ^ 0xBBB9ABE763BAC02));
  v295 = v294 - ((2 * v294) & 0x3C54E8999B664EA8) - 0x61D58BB3324CD8ACLL;
  HIDWORD(v285) = v293 ^ (~(2 * v291) + v291);
  LODWORD(v285) = (v293 ^ 0x60) << 24;
  *(v23 + 140) = v285 >> 29;
  v3[104] = BYTE2(v280) ^ 0xBC;
  LOBYTE(v289) = *(STACK[0x2868] + (((v289 >> 6) | (4 * (v289 & 0x3Fu))) ^ 0xA3));
  v3[136] = HIBYTE(v295) ^ 0x9E;
  *(v23 + 39) = BYTE5(v295) ^ 0x74;
  v3[98] = BYTE6(v295) ^ 0x2A;
  *(v23 + 170) = BYTE4(v295) ^ 0x4C;
  STACK[0x2188] = v257 ^ 0xD92D82153861D6D3;
  v3[75] = (v289 - 88) ^ 0xE1;
  *(v23 + 32) = LODWORD(STACK[0x28C8]) - 711588435;
  v296 = STACK[0x2878];
  v297 = *(v1 + 8 * ((31 * ((STACK[0x2580] & 1) == 0)) ^ LODWORD(STACK[0x2878])));
  STACK[0x27A8] = *(&off_278E1E490 + LODWORD(STACK[0x2878]) - 5305) - 8;
  STACK[0x2868] = *(&off_278E1E490 + v296 - 5974);
  STACK[0x24A8] = *(&off_278E1E490 + v296 - 5832) - 12;
  STACK[0x2828] = *(&off_278E1E490 + (v296 ^ 0x1BFC)) - 12;
  STACK[0x24D8] = *(&off_278E1E490 + (v296 ^ 0x1C29));
  STACK[0x24B8] = *(&off_278E1E490 + v296 - 5975) - 8;
  v298 = *(&off_278E1E490 + v296 - 4786);
  STACK[0x27C0] = *(&off_278E1E490 + (v296 ^ 0x18D6)) - 4;
  STACK[0x2820] = v298 - 8;
  STACK[0x27F0] = *(&off_278E1E490 + (v296 ^ 0x1B3D));
  STACK[0x2498] = *(&off_278E1E490 + (v296 ^ 0x1B58)) - 8;
  STACK[0x27E8] = *(&off_278E1E490 + (v296 ^ 0x1A75)) - 12;
  STACK[0x27C8] = *(&off_278E1E490 + (v296 ^ 0x1E2A)) - 4;
  LODWORD(STACK[0x24F8]) = -11;
  return v297();
}

uint64_t sub_244A9B9D8()
{
  v3 = v1 - ((2 * v1 + 2844) & 0xF02) + 8064271;
  HIDWORD(v4) = *(STACK[0x2498] + 2 * (v3 ^ ((v0 ^ 0x22F24463) + 1075733713)));
  LODWORD(v4) = (HIDWORD(v4) ^ 0x35E8) << 16;
  v5 = (v4 >> 17) ^ 0xA121;
  LODWORD(v3) = *(STACK[0x24A8] + (v3 ^ 0x6310BF8C));
  HIDWORD(v4) = v3 ^ 0x79;
  LODWORD(v4) = ~v3 << 24;
  *(&STACK[0x32F0] + v5) = *(&STACK[0x86D0] + v1 - 1653978258) ^ 0xC5 ^ ((v4 >> 31) - ((2 * (v4 >> 31)) & 0x1A) + 13);
  return (*(v2 + 8 * (((v1 != 1653978785) | (2 * (v1 != 1653978785))) ^ v0)))();
}

uint64_t sub_244A9BACC@<X0>(int a1@<W8>)
{
  v2 = STACK[0x20A4];
  v3 = ((((v2 - a1) | (a1 - v2)) >> ((11 * ((a1 - 51) & 0xF7 ^ 0x62)) ^ 0xE4)) & 1) == 0;
  v4 = *(v1 + 8 * (a1 ^ 0x22F27BEC ^ (v3 | (4 * v3))));
  LODWORD(STACK[0x23B8]) = 1466233309;
  LODWORD(STACK[0x215C]) = v2;
  return v4();
}

uint64_t sub_244A9BC98(char a1, uint64_t a2, int a3)
{
  v9 = v4 < v5;
  v10 = (v7 ^ 0x6013C80FCAB9EAE1uLL) >> ((a1 - 31) & (((a3 - 5) | 0xB1) + 76));
  *(&STACK[0xAFD0] + (v3 - v6)) = v10 - ((2 * v10) & 0x1A) + 13;
  LODWORD(v10) = v6 - 907967964 + 10357 * (a3 ^ 0x2105);
  v11 = v9 ^ (v10 < 0x2C14302C);
  v12 = v10 < v4;
  if (!v11)
  {
    v9 = v12;
  }

  v13 = *(v8 + 8 * ((6289 * v9) ^ a3));
  LODWORD(STACK[0x23B8]) = 1466233309;
  LODWORD(STACK[0x215C]) = STACK[0x20A4];
  return v13();
}

uint64_t sub_244A9BF18@<X0>(__int16 a1@<W6>, char a2@<W8>)
{
  LODWORD(STACK[0x2440]) = 0;
  LODWORD(STACK[0x22C8]) = 0;
  LODWORD(STACK[0x21F0]) = 0;
  LODWORD(STACK[0x21F8]) = 0;
  LODWORD(STACK[0x22D0]) = 0;
  LODWORD(STACK[0x2240]) = 0;
  LODWORD(STACK[0x2200]) = 0;
  LODWORD(STACK[0x2208]) = 0;
  LODWORD(STACK[0x2210]) = 0;
  LOBYTE(STACK[0x13AB8]) = a1 ^ 0x75;
  LOBYTE(STACK[0x13AB9]) = (HIBYTE(a1) ^ 0x3C) - (((3 * (v3 ^ 0x91)) ^ 0x9C) & (2 * (HIBYTE(a1) ^ 0x3C))) + 71;
  LOBYTE(STACK[0x13ABA]) = a2;
  LOBYTE(STACK[0x13ABB]) = v2;
  LOBYTE(STACK[0x13ABC]) = v4;
  LOBYTE(STACK[0x13ABD]) = v5;
  LOBYTE(STACK[0x13ABE]) = v6;
  LOBYTE(STACK[0x13ABF]) = STACK[0x24E4];
  v8 = *(v7 + 8 * v3);
  LODWORD(STACK[0x2580]) = 1;
  STACK[0x2188] = 0x6013C80FCAB9EAE1;
  LODWORD(STACK[0x2470]) = STACK[0x212C];
  LODWORD(STACK[0x2878]) = STACK[0x2130];
  LODWORD(STACK[0x2840]) = 1;
  LODWORD(STACK[0x2360]) = 1;
  LODWORD(STACK[0x22B0]) = 1;
  LODWORD(STACK[0x2218]) = 1;
  LODWORD(STACK[0x2220]) = 1;
  LODWORD(STACK[0x22B8]) = 1;
  LODWORD(STACK[0x2228]) = 1;
  LODWORD(STACK[0x2230]) = 1;
  LODWORD(STACK[0x2238]) = 1;
  LODWORD(STACK[0x21E8]) = 1;
  return v8();
}

uint64_t sub_244A9C0C0@<X0>(char a1@<W3>, int a2@<W5>, int a3@<W6>, int a4@<W8>)
{
  LOBYTE(STACK[0x13AA0]) = a3 ^ 0x75;
  LOBYTE(STACK[0x13AA1]) = (v4 ^ 0x3C) + ~(((a4 + 4) ^ 0x9C) & (2 * (v4 ^ 0x3C))) + 72;
  LOBYTE(STACK[0x13AA2]) = (BYTE2(a3) ^ 0xD8) + (~(2 * (BYTE2(a3) ^ 0xD8)) | 0x71) + 72;
  HIDWORD(v10) = *(STACK[0x2860] + (((v8 ^ 0xF2) - 34) ^ 0x5DLL));
  LODWORD(v10) = (HIDWORD(v10) ^ 0xFFFFFF9F) << 24;
  v9 = v10 >> 28;
  HIDWORD(v10) = ~v9;
  LODWORD(v10) = (v9 ^ 0x40) << 24;
  LOBYTE(STACK[0x13AA3]) = (v10 >> 26) - ((2 * (v10 >> 26)) & 0x8F) + 71;
  LOBYTE(STACK[0x13AA4]) = (a1 ^ 0x1A) - ((2 * (a1 ^ 0x1A)) & 0x8F) + 71;
  LOBYTE(STACK[0x13AA5]) = (v7 ^ 0x4A) - ((2 * (v7 ^ 0x4A)) & 0x8F) + 71;
  LOBYTE(STACK[0x13AA6]) = (v5 ^ 0x3E) - ((2 * (v5 ^ 0x3E)) & 0x8F) + 71;
  v11 = (a2 ^ 0xFFFFFFB9) + (~(2 * (a2 ^ 0xFFFFFFB9)) | 0x71) + 72;
  LODWORD(STACK[0x2524]) = v11;
  LOBYTE(STACK[0x13AA7]) = v11;
  v12 = *(v6 + 8 * a4);
  LODWORD(STACK[0x43C]) = 246;
  LODWORD(STACK[0x2580]) = 1;
  STACK[0x2188] = 0x6013C80FCAB9EAE1;
  LODWORD(STACK[0x2470]) = STACK[0x212C];
  LODWORD(STACK[0x2878]) = STACK[0x2130];
  LODWORD(STACK[0x2840]) = 1;
  LODWORD(STACK[0x2360]) = 1;
  LODWORD(STACK[0x22B0]) = 1;
  LODWORD(STACK[0x2218]) = 1;
  LODWORD(STACK[0x2220]) = 1;
  LODWORD(STACK[0x22B8]) = 1;
  LODWORD(STACK[0x2228]) = 1;
  LODWORD(STACK[0x2230]) = 1;
  LODWORD(STACK[0x2440]) = 1;
  LODWORD(STACK[0x22C8]) = 1;
  LODWORD(STACK[0x2238]) = 1;
  LODWORD(STACK[0x21E8]) = 1;
  LODWORD(STACK[0x21F0]) = 1;
  LODWORD(STACK[0x21F8]) = 1;
  LODWORD(STACK[0x22D0]) = 1;
  LODWORD(STACK[0x2240]) = 1;
  LODWORD(STACK[0x2200]) = 1;
  LODWORD(STACK[0x2208]) = 1;
  LODWORD(STACK[0x2210]) = 1;
  return v12();
}

uint64_t sub_244A9C3E0()
{
  LODWORD(STACK[0x23B8]) += 56;
  v2 = *(v1 + 8 * (v0 - 12945));
  LODWORD(STACK[0x2470]) = STACK[0x212C];
  LODWORD(STACK[0x2878]) = STACK[0x2130];
  return v2();
}

uint64_t sub_244A9C4A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, int a6, unint64_t a7)
{
  LODWORD(STACK[0x2440]) = 0;
  LODWORD(STACK[0x22C8]) = 0;
  LODWORD(STACK[0x21F8]) = 0;
  LODWORD(STACK[0x22D0]) = 0;
  LODWORD(STACK[0x2240]) = 0;
  LODWORD(STACK[0x2200]) = 0;
  LODWORD(STACK[0x2208]) = 0;
  LODWORD(STACK[0x2210]) = 0;
  LOBYTE(STACK[0x13AB0]) = a7 ^ 0x75;
  LOBYTE(STACK[0x13AB1]) = (BYTE1(a7) ^ 0x3C) - ((2 * (BYTE1(a7) ^ 0x3C)) & 0x8F) + 71;
  LOBYTE(STACK[0x13AB2]) = (BYTE2(a7) ^ 0xD8) - ((((a7 >> 16) ^ 0xFFFFFFD8) << (v7 - 13)) & 0x8E) + 71;
  LOBYTE(STACK[0x13AB3]) = (v11 ^ 0xF2) - ((2 * (v11 ^ 0xF2)) & 0x8F) + 71;
  LOBYTE(STACK[0x13AB4]) = (a4 ^ 0x1A) - ((2 * (a4 ^ 0x1A)) & 0x8F) + 71;
  LOBYTE(STACK[0x13AB5]) = (v10 ^ 0x4A) - ((2 * (v10 ^ 0x4A)) & 0x8F) + 71;
  LOBYTE(STACK[0x13AB6]) = (v8 ^ 0x3E) - ((2 * (v8 ^ 0x3E)) & 0x8F) + 71;
  v12 = (a6 ^ 0xFFFFFFB9) - ((2 * (a6 ^ 0xFFFFFFB9)) & 0xFFFFFF8F) + 71;
  LODWORD(STACK[0x24E4]) = v12;
  LOBYTE(STACK[0x13AB7]) = v12;
  v13 = *(v9 + 8 * v7);
  LODWORD(STACK[0x2580]) = 1;
  STACK[0x2188] = 0x6013C80FCAB9EAE1;
  LODWORD(STACK[0x2470]) = STACK[0x212C];
  LODWORD(STACK[0x2878]) = STACK[0x2130];
  LODWORD(STACK[0x2840]) = 1;
  LODWORD(STACK[0x2360]) = 1;
  LODWORD(STACK[0x22B0]) = 1;
  LODWORD(STACK[0x2218]) = 1;
  LODWORD(STACK[0x2220]) = 1;
  LODWORD(STACK[0x22B8]) = 1;
  LODWORD(STACK[0x2228]) = 1;
  LODWORD(STACK[0x2230]) = 1;
  LODWORD(STACK[0x2238]) = 1;
  LODWORD(STACK[0x21E8]) = 1;
  LODWORD(STACK[0x21F0]) = 1;
  return v13();
}

uint64_t sub_244A9C754@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x23B8]) += 56;
  v2 = *(v1 + 8 * (a1 - 9155));
  LODWORD(STACK[0x2470]) = STACK[0x212C];
  LODWORD(STACK[0x2878]) = STACK[0x2130];
  return v2();
}

uint64_t sub_244A9C7D8@<X0>(int a1@<W8>)
{
  v3 = v1 - ((2 * v1 + 1290451460) & 0x9053D18A) - 291551801;
  v4 = (*(STACK[0x24D8] + 2 * (v3 ^ 0x4829E8EAu)) + 17001) ^ 0xAA2BLL;
  v5 = *(STACK[0x24B8] + (v3 ^ 0x4829E8C6u));
  HIDWORD(v6) = ~v5;
  LODWORD(v6) = (v5 ^ 0x90) << 24;
  *(&STACK[0x32F0] + v4) = *(STACK[0x2858] + (((*(&STACK[0x112F0] + ((a1 - 696742558) & 0x29875FDA ^ 0xFFFFFFFFA6754760) + v1) ^ 0xB5) + 71) ^ 0x39)) ^ ((v6 >> 27) - ((2 * (v6 >> 27)) & 0x30) + 24) ^ 0x7D;
  return (*(v2 + 8 * (a1 ^ (8 * (v1 == 1502258461)))))();
}

uint64_t sub_244A9C8F0()
{
  v2 = STACK[0x20A4];
  v3 = *(v1 + 8 * ((59 * (LODWORD(STACK[0x20A4]) != (((v0 - 5874) | 0x4A01) ^ 0x22F2144F))) ^ v0));
  LODWORD(STACK[0x23B8]) = 1466233309;
  LODWORD(STACK[0x215C]) = v2;
  return v3();
}

uint64_t sub_244A9CAA0@<X0>(int a1@<W0>, int a2@<W8>)
{
  v7 = v2 < 0xB602A2E7;
  v8 = (v4 ^ 0x6013C80FCAB9EAE1uLL) >> (((2 * ((a1 - 47) & 0xD7 ^ 0xE2)) ^ 0x15u) & (v5 + 57));
  v9 = STACK[0x20A4];
  *(&STACK[0x86D0] + (LODWORD(STACK[0x20A4]) + a2 - v3 + 509934021)) = v8 - ((2 * v8) & 0x1A) + 13;
  if (v7 == (v3 + 1957363018) < 0xB602A2E7)
  {
    v7 = v2 > v3 + 1957363018;
  }

  v10 = *(v6 + 8 * (a1 ^ (28 * !v7)));
  LODWORD(STACK[0x23B8]) = 1466233309;
  LODWORD(STACK[0x215C]) = v9;
  return v10();
}

uint64_t sub_244A9CBDC@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x2580]) = 0;
  LODWORD(STACK[0x22B8]) = 0;
  LODWORD(STACK[0x2230]) = 0;
  LODWORD(STACK[0x2440]) = 0;
  LODWORD(STACK[0x22C8]) = 0;
  LODWORD(STACK[0x2238]) = 0;
  LODWORD(STACK[0x21E8]) = 0;
  LODWORD(STACK[0x21F0]) = 0;
  LODWORD(STACK[0x21F8]) = 0;
  LODWORD(STACK[0x22D0]) = 0;
  LODWORD(STACK[0x2240]) = 0;
  LODWORD(STACK[0x2200]) = 0;
  LODWORD(STACK[0x2208]) = 0;
  LODWORD(STACK[0x2210]) = 0;
  v2 = ((((a1 - 8602) | 0x1000) + 295715744) ^ LODWORD(STACK[0x1D6C])) - 2 * ((((((a1 - 8602) | 0x1000) + 295715744) ^ LODWORD(STACK[0x1D6C])) + 1990567662) & 0x7698C731 ^ STACK[0x1D6C] & 1) - 314675682;
  v3 = ((2 * v2) & 0x12B4B224 ^ 0x308220) + (v2 ^ 0xFFC29E22);
  v4 = STACK[0x1DD8];
  *(STACK[0x1DD8] - 0x9C77599F5C8B022) = STACK[0x2188];
  v5 = v3 + 295728818 - ((2 * v3) & 0x2340ED64);
  v6 = LODWORD(STACK[0x1D68]) + 1;
  v7 = *(v1 + 8 * ((31 * ((v5 ^ 0x11A076B2u) > LODWORD(STACK[0x1D68]) - 122305760)) ^ a1));
  LODWORD(STACK[0x2840]) = 1;
  STACK[0x2008] = v4 + 8;
  STACK[0x1DD8] = v4 + 8;
  STACK[0x2188] = STACK[0x27E0];
  LODWORD(STACK[0x2470]) = STACK[0x212C];
  LODWORD(STACK[0x2878]) = STACK[0x2130];
  LODWORD(STACK[0x2018]) = v5;
  LODWORD(STACK[0x1D6C]) = v5;
  LODWORD(STACK[0x2000]) = v6;
  LODWORD(STACK[0x1D68]) = v6;
  LODWORD(STACK[0x2360]) = 1;
  LODWORD(STACK[0x22B0]) = 1;
  LODWORD(STACK[0x2218]) = 1;
  LODWORD(STACK[0x2220]) = 1;
  LODWORD(STACK[0x2228]) = 1;
  return v7();
}

uint64_t sub_244A9CDB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, int a6@<W8>)
{
  LODWORD(STACK[0x2878]) = 0;
  v8 = (10357 * v6);
  v9 = STACK[0xB1F8];
  STACK[0x2840] = v8;
  STACK[0xB1F8] = ((v8 - 0x1FEC37F035466609) ^ v9 & 0x7FFFFFFFFFFFFFFFLL) + 0x6013C80FCAB9EAE1 - 2 * (((v8 - 0x1FEC37F035466609) ^ v9 & 0x7FFFFFFFFFFFFFFFLL) & 0x6013C80FCAB9EAF7 ^ v9 & 0x16);
  STACK[0xB1F0] = (STACK[0xB1F0] & 0xFFFFFFFFFFFFFFFELL ^ 0x6013C80FCAB9EAE1) + 0x6013C80FCAB9EAE1 + ((2 * ((STACK[0xB1F0] & 0xFFFFFFFFFFFFFFFELL ^ 0x6013C80FCAB9EAE1) & 0x6013C80FCAB9EAF4 ^ (STACK[0xB1F0] | 0x7FFFFFFFFFFFFFEBLL))) ^ 0x2B) + 1;
  v10 = *(v7 + 8 * ((1849 * (a6 != -478964511)) ^ (a6 + 466203118)));
  STACK[0x2188] = STACK[0x27E0];
  LODWORD(STACK[0x2470]) = STACK[0x212C];
  LODWORD(STACK[0x2060]) = STACK[0x2130];
  LODWORD(STACK[0x21B0]) = STACK[0x1D64];
  LODWORD(STACK[0x21A0]) = STACK[0x1EA0];
  LODWORD(STACK[0x2068]) = STACK[0x1DEC];
  LODWORD(STACK[0x2078]) = STACK[0x21A8];
  LODWORD(STACK[0x2818]) = STACK[0x2018];
  LODWORD(STACK[0x2088]) = STACK[0x1DF0];
  LODWORD(STACK[0x2070]) = STACK[0x2190];
  LODWORD(STACK[0x2040]) = STACK[0x20F8];
  LODWORD(STACK[0x1FF8]) = STACK[0x1DB4];
  LODWORD(STACK[0x2030]) = STACK[0x21C8];
  LODWORD(STACK[0x21C0]) = STACK[0x1CE0];
  return v10(a1, 0, a2, a3, a4, 0, a5, 0);
}

uint64_t sub_244A9CFD0()
{
  v3 = ((STACK[0x27E0] << ((2 * v0) ^ 0xCCu)) + v1) ^ 0xE1B93E4A1AF2D83CLL;
  STACK[0x2188] = v3 + 0x6013C80FCAB9EAE1 - ((2 * v3) & 0xC027901F9573D5C2);
  return (*(v2 + 8 * v0))();
}

uint64_t sub_244A9D03C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x23B8]) += 56;
  v2 = *(v1 + 8 * (a1 - 17903));
  LODWORD(STACK[0x2470]) = STACK[0x212C];
  LODWORD(STACK[0x2878]) = STACK[0x2130];
  return v2();
}

uint64_t sub_244A9D0BC@<X0>(char a1@<W3>, int a2@<W5>, int a3@<W6>, int a4@<W8>)
{
  LODWORD(STACK[0x22D0]) = 0;
  LODWORD(STACK[0x2210]) = 0;
  LOBYTE(STACK[0x13AB0]) = a3 ^ 0x75;
  LOBYTE(STACK[0x13AB1]) = (BYTE1(a3) ^ 0x3C) - ((2 * (BYTE1(a3) ^ 0x3C)) & 0x8F) + 71;
  LOBYTE(STACK[0x13AB2]) = (BYTE2(a3) ^ (-119 * (a4 ^ 0x27)) ^ 0xCA) - ((2 * (BYTE2(a3) ^ (-119 * (a4 ^ 0x27)) ^ 0xCA)) & 0x8F) + 71;
  HIDWORD(v9) = *(STACK[0x2860] + (((v7 ^ 0xF2) - 34) ^ 0x5DLL));
  LODWORD(v9) = (HIDWORD(v9) ^ 0xFFFFFF9F) << 24;
  v8 = v9 >> 28;
  HIDWORD(v9) = ~v8;
  LODWORD(v9) = (v8 ^ 0x40) << 24;
  LOBYTE(STACK[0x13AB3]) = (v9 >> 26) - ((2 * (v9 >> 26)) & 0x8F) + 71;
  LOBYTE(STACK[0x13AB4]) = (a1 ^ 0x1A) - ((2 * (a1 ^ 0x1A)) & 0x8F) + 71;
  LOBYTE(STACK[0x13AB5]) = (v6 ^ 0x4A) - ((2 * (v6 ^ 0x4A)) & 0x8F) + 71;
  LOBYTE(STACK[0x13AB6]) = (v4 ^ 0x3E) + (~(2 * (v4 ^ 0x3E)) | 0x71) + 72;
  v10 = (a2 ^ 0xFFFFFFB9) + (~(2 * (a2 ^ 0xFFFFFFB9)) | 0x71) + 72;
  LODWORD(STACK[0x2524]) = v10;
  LOBYTE(STACK[0x13AB7]) = v10;
  v11 = *(v5 + 8 * a4);
  LODWORD(STACK[0x2580]) = 1;
  STACK[0x2188] = 0x6013C80FCAB9EAE1;
  LODWORD(STACK[0x2470]) = STACK[0x212C];
  LODWORD(STACK[0x2878]) = STACK[0x2130];
  LODWORD(STACK[0x2840]) = 1;
  LODWORD(STACK[0x2360]) = 1;
  LODWORD(STACK[0x22B0]) = 1;
  LODWORD(STACK[0x2218]) = 1;
  LODWORD(STACK[0x2220]) = 1;
  LODWORD(STACK[0x22B8]) = 1;
  LODWORD(STACK[0x2228]) = 1;
  LODWORD(STACK[0x2230]) = 1;
  LODWORD(STACK[0x2440]) = 1;
  LODWORD(STACK[0x22C8]) = 1;
  LODWORD(STACK[0x2238]) = 1;
  LODWORD(STACK[0x21E8]) = 1;
  LODWORD(STACK[0x21F0]) = 1;
  LODWORD(STACK[0x21F8]) = 1;
  LODWORD(STACK[0x2240]) = 1;
  LODWORD(STACK[0x2200]) = 1;
  LODWORD(STACK[0x2208]) = 1;
  return v11();
}

uint64_t sub_244A9D298(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, int a6, unint64_t a7)
{
  LODWORD(STACK[0x2440]) = 0;
  LODWORD(STACK[0x22D0]) = 0;
  LODWORD(STACK[0x2240]) = 0;
  LODWORD(STACK[0x2200]) = 0;
  LODWORD(STACK[0x2208]) = 0;
  LODWORD(STACK[0x2210]) = 0;
  v12 = v7 - 4155;
  LOBYTE(STACK[0x13AA0]) = a7 ^ 0x75;
  LOBYTE(STACK[0x13AA1]) = (v8 ^ 0x3C) - ((2 * (v8 ^ 0x3C)) & 0x8F) + 71;
  LOBYTE(STACK[0x13AA2]) = (BYTE2(a7) ^ (v7 + 105) ^ 0xCA) - ((2 * (BYTE2(a7) ^ (v7 + 105) ^ 0xCA)) & 0x8F) + 71;
  LOBYTE(STACK[0x13AA3]) = (v11 ^ 0xF2) - ((2 * (v11 ^ 0xF2)) & 0x8F) + 71;
  LOBYTE(STACK[0x13AA4]) = (a4 ^ 0x1A) - ((2 * (a4 ^ 0x1A)) & 0x8F) + 71;
  v13 = *(STACK[0x2698] + (((a7 >> 38) & 0xFC | (a7 >> 46) & 3) ^ 0x65)) ^ 0x22;
  LOBYTE(STACK[0x13AA5]) = v13 - ((2 * v13 + 110) & 0x8F) - 2;
  v14 = *(STACK[0x2830] + ((111 * (v9 ^ 0x3E)) ^ 0x9DLL));
  LOBYTE(STACK[0x13AA6]) = ((LODWORD(STACK[0x27F8]) + 115 * v14) ^ 0x8C) - ((2 * ((LODWORD(STACK[0x27F8]) + 115 * v14) ^ 0x8C) - 74) & 0x8F) + 34;
  v15 = (a6 ^ 0xFFFFFFB9) - ((2 * (a6 ^ 0xFFFFFFB9)) & 0xFFFFFF8F) + 71;
  LODWORD(STACK[0x24E4]) = v15;
  LOBYTE(STACK[0x13AA7]) = v15;
  v16 = *(v10 + 8 * v12);
  LODWORD(STACK[0x43C]) = 230;
  LODWORD(STACK[0x2580]) = 1;
  STACK[0x2188] = 0x6013C80FCAB9EAE1;
  LODWORD(STACK[0x2470]) = STACK[0x212C];
  LODWORD(STACK[0x2878]) = STACK[0x2130];
  LODWORD(STACK[0x2840]) = 1;
  LODWORD(STACK[0x2360]) = 1;
  LODWORD(STACK[0x22B0]) = 1;
  LODWORD(STACK[0x2218]) = 1;
  LODWORD(STACK[0x2220]) = 1;
  LODWORD(STACK[0x22B8]) = 1;
  LODWORD(STACK[0x2228]) = 1;
  LODWORD(STACK[0x2230]) = 1;
  LODWORD(STACK[0x22C8]) = 1;
  LODWORD(STACK[0x2238]) = 1;
  LODWORD(STACK[0x21E8]) = 1;
  LODWORD(STACK[0x21F0]) = 1;
  LODWORD(STACK[0x21F8]) = 1;
  return v16();
}

uint64_t sub_244A9D584()
{
  LODWORD(STACK[0x23B8]) += 56;
  v2 = *(v1 + 8 * (v0 ^ 0x449B30BB ^ (18943 * (v0 > 0x9E6C7D8A))));
  LODWORD(STACK[0x2470]) = STACK[0x212C];
  LODWORD(STACK[0x2878]) = STACK[0x2130];
  return v2();
}

uint64_t sub_244A9D710()
{
  v2 = STACK[0x2924];
  LODWORD(STACK[0x2680]) = STACK[0x2924];
  LODWORD(STACK[0x26A0]) = (v0 ^ 0xBFD61019) + 8 * v2 - ((16 * v2 - 1711742688) & 0xE5B39230);
  STACK[0x2670] = STACK[0x2890] - 0x4E180AB76DEB82A1;
  v3 = *(v1 + 8 * v0);
  LODWORD(STACK[0x2878]) = 640521065;
  LODWORD(STACK[0x27D8]) = -1708503071;
  LODWORD(STACK[0x2880]) = -640563975;
  LODWORD(STACK[0x2678]) = 1674992167;
  LODWORD(STACK[0x2810]) = 1503268058;
  LODWORD(STACK[0x27E0]) = -296446846;
  return v3();
}

uint64_t sub_244A9D868()
{
  LODWORD(STACK[0x2848]) = v0;
  v2 = STACK[0x2678];
  v3 = STACK[0x2670];
  LODWORD(STACK[0x2838]) = *(STACK[0x2858] + (((*(STACK[0x2670] + ((v0 - 8560) ^ 0x9C29ACA2) + LODWORD(STACK[0x2678])) ^ 0x47) + 71) ^ 0x39));
  LODWORD(STACK[0x2840]) = *(v3 + (v2 - 1674992164));
  LODWORD(STACK[0x2780]) = *(v3 + (v2 - 1674992163));
  LODWORD(STACK[0x2790]) = *(v3 + (v2 - 1674992162));
  LODWORD(STACK[0x2798]) = *(v3 + (v2 - 1674992160));
  LODWORD(STACK[0x27A0]) = *(v3 + (v2 - 1674992159));
  v4 = *(v3 + (v2 - 1674992156));
  v5 = *(v3 + (v2 - 1674992154));
  LODWORD(STACK[0x27B0]) = *(v3 + (v2 - 1674992153));
  v6 = *(v3 + (v2 - 1674992146));
  v7 = *(v3 + (v2 - 1674992145));
  v8 = *(STACK[0x2800] + (((*(v3 + (v2 - 1674992144)) ^ 0x47) + 71) ^ 0xF9));
  LODWORD(STACK[0x27B8]) = *(v3 + (v2 - 1674992142));
  v9 = *(v3 + (v2 - 1674992140));
  v10 = *(v3 + (v2 - 1674992139));
  v11 = *(v3 + (v2 - 1674992137));
  LODWORD(STACK[0x2818]) = *(v3 + (v2 - 1674992167));
  v12 = *(v3 + (v2 - 1674992136));
  LODWORD(STACK[0x2678]) = v2 + 32;
  LODWORD(STACK[0x2680]) -= 32;
  LODWORD(STACK[0x27D0]) = v8 ^ 0x53;
  LODWORD(STACK[0x2838]) ^= 0x3Eu;
  return (*(v1 + 8 * SLODWORD(STACK[0x2848])))(v9, v6, v10, v5, v12, v11, v7, v4);
}

uint64_t sub_244A9DAE0()
{
  v2 = *(v1 + 8 * ((((v0 - 244236620) & 0xE8EBD9E ^ 0x16604804 ^ ((v0 + 35644556) | 0x1440502A)) * (LODWORD(STACK[0x2680]) == 375419374)) ^ v0));
  LODWORD(STACK[0x2818]) = 199;
  LODWORD(STACK[0x2838]) = 71;
  LODWORD(STACK[0x2840]) = 71;
  LODWORD(STACK[0x2878]) = 71;
  return v2();
}

uint64_t sub_244A9DB70()
{
  v2 = STACK[0x2680];
  LODWORD(STACK[0x2818]) = *(STACK[0x2670] + (LODWORD(STACK[0x2678]) - 1674992167));
  v3 = *(v1 + 8 * (v0 ^ 0x16603BAA ^ ((((v2 - v0) | (v0 - v2)) >= 0) * ((127 * (v0 ^ 0x1660719B)) ^ 0x3999))));
  LODWORD(STACK[0x2840]) = 71;
  LODWORD(STACK[0x2838]) = 199;
  LODWORD(STACK[0x2878]) = 71;
  return v3();
}

uint64_t sub_244A9DC04@<X0>(int a1@<W8>)
{
  v2 = LODWORD(STACK[0x2680]) == 375419376;
  LODWORD(STACK[0x2838]) = *(STACK[0x2670] + (LODWORD(STACK[0x2678]) - 1674992166));
  v3 = *(v1 + 8 * (a1 ^ 0xD76 ^ (452 * v2)));
  LODWORD(STACK[0x2878]) = 199;
  LODWORD(STACK[0x2840]) = 71;
  return v3();
}

uint64_t sub_244A9DCA8()
{
  LODWORD(STACK[0x2878]) = *(STACK[0x2670] + (v1 + 2));
  v3 = *(v2 + 8 * (v0 ^ 0x16607E16 ^ (8185 * (((((LODWORD(STACK[0x2680]) - v0) | (v0 - LODWORD(STACK[0x2680]))) >> (99 * (((v0 + 24) | 0xF0) ^ 0xFD) - 109)) & 1) == 0))));
  LODWORD(STACK[0x2840]) = 199;
  return v3();
}

uint64_t sub_244A9DD40()
{
  v2 = *(STACK[0x2850] + (((*(STACK[0x2670] + (LODWORD(STACK[0x2678]) - 1674992164)) ^ 0x47) - 34) ^ 0xE4u ^ (2 * ((v0 + 6) & 0x4F ^ 0x89))));
  HIDWORD(v4) = v2 ^ 0x1D;
  LODWORD(v4) = v2 << 24;
  v3 = v4 >> 31;
  v5 = LODWORD(STACK[0x2680]) != 375419378;
  HIDWORD(v4) = v3 ^ 1;
  LODWORD(v4) = (v3 ^ 0xFFFFFFE7) << 24;
  LODWORD(STACK[0x2840]) = (v4 >> 26) - ((2 * (v4 >> 26)) & 0xFFFFFF8F) + 71;
  return (*(v1 + 8 * (v0 ^ (1020 * v5))))();
}

uint64_t sub_244A9DE10(int a1)
{
  LODWORD(STACK[0x2780]) = *(STACK[0x2670] + (v1 + 4));
  v3 = *(v2 + 8 * (((((a1 - 4799) | 0x2023) - 10392) * (LODWORD(STACK[0x2680]) != 375419379)) ^ a1));
  LODWORD(STACK[0x27D0]) = 89;
  LODWORD(STACK[0x2790]) = 199;
  LODWORD(STACK[0x27B8]) = 71;
  LODWORD(STACK[0x27B0]) = 71;
  LODWORD(STACK[0x27A0]) = 71;
  LODWORD(STACK[0x2798]) = 71;
  return v3();
}

uint64_t sub_244A9DED4(int a1)
{
  LODWORD(STACK[0x2790]) = *(STACK[0x2670] + (LODWORD(STACK[0x2678]) - 1674992162));
  v2 = *(v1 + 8 * ((LODWORD(STACK[0x2680]) != a1 + 375412389) | ((LODWORD(STACK[0x2680]) != a1 + 375412389) << 7) | (a1 + 6085)));
  LODWORD(STACK[0x27D0]) = 89;
  LODWORD(STACK[0x27B8]) = 71;
  LODWORD(STACK[0x27B0]) = 71;
  LODWORD(STACK[0x27A0]) = 71;
  LODWORD(STACK[0x2798]) = 71;
  return v2();
}

uint64_t sub_244A9DF78(int a1)
{
  v2 = *(v1 + 8 * ((75 * (LODWORD(STACK[0x2680]) == ((a1 + 1563167763) & 0xA2D3EAFF) + 375408962)) | a1));
  LODWORD(STACK[0x27D0]) = 89;
  LODWORD(STACK[0x2798]) = 199;
  LODWORD(STACK[0x27B8]) = 71;
  LODWORD(STACK[0x27B0]) = 71;
  LODWORD(STACK[0x27A0]) = 71;
  return v2();
}

uint64_t sub_244A9E000(int a1)
{
  LODWORD(STACK[0x2798]) = *(STACK[0x2670] + LODWORD(STACK[0x2678]) - 1674998464 + ((a1 - 11501) ^ 0xED4u) + 3641);
  v2 = *(v1 + 8 * ((a1 - 11501) | (8 * (LODWORD(STACK[0x2680]) == 375419382))));
  LODWORD(STACK[0x27D0]) = 89;
  LODWORD(STACK[0x27A0]) = 199;
  LODWORD(STACK[0x27B8]) = 71;
  LODWORD(STACK[0x27B0]) = 71;
  return v2();
}

uint64_t sub_244A9E0A0(int a1)
{
  LODWORD(STACK[0x27A0]) = *(STACK[0x2670] + (LODWORD(STACK[0x2678]) - 1674992159));
  v2 = *(v1 + 8 * ((26 * (LODWORD(STACK[0x2680]) != ((a1 + 1441) | 0x2303) + 375406316)) ^ a1));
  LODWORD(STACK[0x27D0]) = 89;
  LODWORD(STACK[0x27B8]) = 71;
  LODWORD(STACK[0x27B0]) = 71;
  return v2();
}

uint64_t sub_244A9E138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = *(v6 + 8 * ((19 * (LODWORD(STACK[0x2680]) == (((a5 ^ 0x37A2) + 9226) ^ 0x166013DB ^ (16 * (a5 ^ 0x37A2))))) ^ a5));
  LODWORD(STACK[0x27D0]) = 89;
  LODWORD(STACK[0x27B8]) = 71;
  LODWORD(STACK[0x27B0]) = v5;
  return v7();
}

uint64_t sub_244A9E1B0(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(v3 + 8 * (a3 ^ (15 * (LODWORD(STACK[0x2680]) != 375419385))));
  LODWORD(STACK[0x27D0]) = 89;
  LODWORD(STACK[0x27B8]) = 71;
  LODWORD(STACK[0x27B0]) = 71;
  return v4();
}

uint64_t sub_244A9E254(int a1)
{
  v2 = *(v1 + 8 * (((a1 - 12448) * (LODWORD(STACK[0x2680]) == 375419386)) ^ a1));
  LODWORD(STACK[0x27D0]) = 89;
  LODWORD(STACK[0x27B8]) = 71;
  LODWORD(STACK[0x27B0]) = 71;
  return v2();
}

uint64_t sub_244A9E2D4(int a1)
{
  v2 = *(v1 + 8 * ((a1 + 9490) ^ ((LODWORD(STACK[0x2680]) == 375419387) | (8 * (LODWORD(STACK[0x2680]) == 375419387)))));
  LODWORD(STACK[0x27D0]) = 89;
  LODWORD(STACK[0x27B8]) = 71;
  LODWORD(STACK[0x27B0]) = 71;
  return v2();
}

uint64_t sub_244A9E3B8(int a1)
{
  v2 = *(v1 + 8 * ((503 * (LODWORD(STACK[0x2680]) != ((a1 - 8918) | 0x891) + 375408969)) ^ a1));
  LODWORD(STACK[0x27D0]) = 89;
  LODWORD(STACK[0x27B0]) = 199;
  LODWORD(STACK[0x27B8]) = 71;
  return v2();
}

uint64_t sub_244A9E440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = LODWORD(STACK[0x2680]) != 375419389;
  LODWORD(STACK[0x27B0]) = *(STACK[0x2670] + (((a5 ^ 0x1297) + 5490) ^ 0x9C299BC2) + LODWORD(STACK[0x2678]));
  v7 = *(v5 + 8 * (a5 ^ ((2 * v6) | (v6 << 6))));
  LODWORD(STACK[0x27D0]) = 89;
  LODWORD(STACK[0x27B8]) = 71;
  return v7();
}

uint64_t sub_244A9E4C8(int a1)
{
  v2 = *(v1 + 8 * (a1 ^ (126 * (LODWORD(STACK[0x2680]) != 375419390))));
  LODWORD(STACK[0x27D0]) = 89;
  return v2();
}

uint64_t sub_244A9E59C(int a1)
{
  v2 = *(v1 + 8 * ((a1 - 6538) ^ (61 * (LODWORD(STACK[0x2680]) == 375419391))));
  LODWORD(STACK[0x27D0]) = 89;
  LODWORD(STACK[0x27B8]) = 71;
  return v2();
}

uint64_t sub_244A9E61C(int a1)
{
  v2 = *(v1 + 8 * (((((((a1 ^ 0x3AEF) - 7667) | 0xF62) + 6352) ^ 0x2823) * (LODWORD(STACK[0x2680]) != 375419392)) ^ a1 ^ 0x3AEF));
  LODWORD(STACK[0x27D0]) = 89;
  LODWORD(STACK[0x27B8]) = 71;
  return v2();
}

uint64_t sub_244A9E6B0(int a1)
{
  v2 = *(v1 + 8 * (a1 ^ (21 * (LODWORD(STACK[0x2680]) == 375419393))));
  LODWORD(STACK[0x27D0]) = 89;
  LODWORD(STACK[0x27B8]) = 71;
  return v2();
}

uint64_t sub_244A9E730(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(v3 + 8 * ((7 * (LODWORD(STACK[0x2680]) != ((a3 - 1850) ^ 0x1660564A))) ^ a3));
  LODWORD(STACK[0x27D0]) = 89;
  LODWORD(STACK[0x27B8]) = 71;
  return v4();
}

uint64_t sub_244A9E7B8(int a1)
{
  v2 = *(v1 + 8 * ((44 * (LODWORD(STACK[0x2680]) != (((a1 ^ 0xCFB) - 5022) ^ 0x16606716))) ^ a1));
  LODWORD(STACK[0x27D0]) = 89;
  return v2();
}

uint64_t sub_244A9E880(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v6 = *(STACK[0x2670] + (a3 + 21));
  v7 = *(v5 + 8 * ((121 * (LODWORD(STACK[0x2680]) != a5 + 375413999)) ^ a5));
  LODWORD(STACK[0x27D0]) = 89;
  LODWORD(STACK[0x27B8]) = 71;
  return v7(a1, v6);
}

uint64_t sub_244A9E90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = *(v6 + 8 * (a6 ^ (59 * (LODWORD(STACK[0x2680]) != 375419397))));
  LODWORD(STACK[0x27D0]) = 217;
  LODWORD(STACK[0x27B8]) = 71;
  return v7();
}

uint64_t sub_244A9E9A4(unsigned int a1)
{
  v2 = LODWORD(STACK[0x2680]) != ((a1 - 6395) | 0x822) + 375408979;
  LODWORD(STACK[0x27D0]) = *(STACK[0x2858] + (((*(STACK[0x2670] + LODWORD(STACK[0x2678]) - 1675003090 + a1 - 3786) ^ 0x47) + 71) ^ 0x39)) ^ 0x20;
  return (*(v1 + 8 * (v2 ^ a1)))();
}

uint64_t sub_244A9EA38(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(v3 + 8 * (a3 ^ ((LODWORD(STACK[0x2680]) == 375419399) | (8 * (LODWORD(STACK[0x2680]) == 375419399)))));
  LODWORD(STACK[0x27B8]) = 199;
  return v4();
}

uint64_t sub_244A9ED24@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * a1);
  LODWORD(STACK[0x2780]) = *(STACK[0x2800] + v1) ^ ((a1 ^ 0x113F) - 102);
  LODWORD(STACK[0x27D0]) = 89;
  LODWORD(STACK[0x27B8]) = 71;
  LODWORD(STACK[0x27B0]) = 71;
  LODWORD(STACK[0x27A0]) = 71;
  LODWORD(STACK[0x2798]) = 71;
  LODWORD(STACK[0x2790]) = 71;
  return v3();
}

uint64_t sub_244A9EDB4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  HIDWORD(v5) = *(STACK[0x2860] + a2);
  LODWORD(v5) = (HIDWORD(v5) ^ 0xFFFFFF9F) << 24;
  v4 = v5 >> 28;
  HIDWORD(v5) = ~v4;
  LODWORD(v5) = (v4 ^ 0x40) << 24;
  return (*(v3 + 8 * v2))((v5 >> 26) - (((v2 - 5261) ^ 0xFFFFFFA8) & (2 * (v5 >> 26))) + 71, a1, 71);
}

uint64_t sub_244A9EE9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, unsigned int a4@<W8>)
{
  v6 = STACK[0x26A0];
  v7 = LODWORD(STACK[0x26A0]) ^ 0x58u;
  v8 = ((404 * (a4 ^ 0x2AEE) + 81) ^ (v6 >> 8)) - ((2 * ((404 * (a4 ^ 0x2AEE) + 81) ^ (v6 >> 8))) & 0xFFFFFF8F) + 71;
  LODWORD(STACK[0x26A0]) = HIBYTE(LODWORD(STACK[0x26A0])) ^ 0x72D9C96D;
  v9 = *(v4 + 8 * a4);
  LODWORD(STACK[0x2878]) = 640521066;
  LODWORD(STACK[0x2678]) = v5;
  return v9(a1, a2, HIBYTE(v6) ^ 0x35, a3, v7, v8);
}

uint64_t sub_244A9EF48()
{
  v3 = *(v1 + 8 * v0);
  LODWORD(STACK[0x2878]) = 640521067;
  LODWORD(STACK[0x2678]) = v2;
  return v3();
}

uint64_t sub_244A9EFB8(int a1, unsigned __int8 a2, unsigned __int8 a3, unsigned __int8 a4, int a5, unsigned __int8 a6, unsigned __int8 a7, int a8)
{
  LODWORD(STACK[0x2788]) = v17;
  LODWORD(STACK[0x2848]) = v17 - 403;
  LODWORD(STACK[0x26D8]) = v15 - ((v17 - 403 + 2 * v15 - 100) & 0x8E);
  v24 = ((LODWORD(STACK[0x2790]) ^ 0x47) << 8) | ((LODWORD(STACK[0x2780]) ^ 0x47) << 16) | v8 ^ 0x47;
  v25 = ((v20 ^ 0x47) << 8) | ((LODWORD(STACK[0x27A0]) ^ 0x47) << 16);
  v26 = v25 - 2085625520 - ((2 * v25) & 0x15FC200);
  v27 = (LODWORD(STACK[0x2798]) ^ 0x47 | (v24 << 8)) - 259785349 - 2 * (((LODWORD(STACK[0x2798]) ^ 0x47) & 0x7F | (v24 << 8) & 0x7083FD7F) ^ (LODWORD(STACK[0x2798]) ^ 0x47) & 4);
  v28 = (a8 ^ 0x47) - 129214718 + (~(2 * (a8 ^ 0x47)) | 0xFFFFFFFB) + 1;
  v29 = v28 ^ 0xF84C5702 | (((v26 ^ 0x83AFE150) + (v22 ^ 0x47)) << 8);
  v30 = v29 + 709686400 - 2 * (v29 & 0x2A4CF4BF ^ ((a8 ^ 0x47) + 2 + (~(2 * (a8 ^ 0x47)) | 0xFB) + 1) & 0x14);
  v31 = ((v21 ^ 0x47) << 16) | ((a4 ^ 0x47) << 8);
  v32 = v31 + 626260953 - ((2 * v31) & 0xA7F600);
  v33 = (v12 ^ 0x47) - 1816390165 - ((2 * (v12 ^ 0x47)) & 0x1D6);
  v34 = v33 ^ 0x93BC15EB | (((v32 ^ 0x2553FBD9) + (LODWORD(STACK[0x27B0]) ^ 0x47)) << 8);
  v35 = v34 - 32388045 - 2 * (v34 & 0x7E11CC3B ^ (v33 ^ 0x93BC15EB) & 8);
  v36 = ((v23 ^ 0x47) << 8) | ((v9 ^ 0x47) << 16);
  v37 = v36 + 575442134 - ((2 * v36) & 0x991800);
  v38 = (v19 ^ 0x47) - 203504882 - ((2 * (v19 ^ 0x47)) & 0x1C);
  v39 = v38 ^ 0xF3DEC30E | (((v37 ^ 0x224C8CD6) + (v14 ^ 0x47)) << 8);
  v40 = ((a2 ^ 0x47) << 8) | ((v13 ^ 0x47) << 16);
  v41 = v40 - 1686236483 - ((2 * v40) & 0xFC2400);
  v42 = (v41 ^ 0x9B7E12BD) + (a7 ^ 0x47);
  v43 = (LOBYTE(STACK[0x27D0]) ^ 0x59) - 1837638842 - ((2 * (LODWORD(STACK[0x27D0]) ^ 0x59)) & 0x8C);
  v44 = (v43 ^ 0x9277DB46 | (v42 << 8)) - 1795456717 - 2 * ((v43 ^ 0x9277DB46 | (v42 << 8)) & 0x14FB8137 ^ (v43 ^ 0x9277DB46) & 4);
  v45 = (a1 ^ 0x47) - 2044021794 - ((2 * (a1 ^ 0x47)) & 0x1BC);
  v46 = ((LODWORD(STACK[0x27B8]) ^ 0x47) << 8) | ((v16 ^ 0x47) << 16);
  v47 = v46 - 244784502 - ((2 * v46) & 0xD1C400);
  v48 = (v10 ^ 0x47 | v47 ^ 0xF168E28A) - ((2 * (v10 ^ 0x47 | v47 ^ 0xF168E28A)) & 0x191B87D8) + 1284359148;
  v49 = ((v11 ^ 0x47) << 8) | ((a3 ^ 0x47) << 16);
  v50 = v49 + 1482181717 - ((2 * v49) & 0xB09800);
  v51 = (v50 ^ 0x58584C55 | a6 ^ 0x47) - ((2 * (v50 ^ 0x58584C55 | a6 ^ 0x47)) & 0x1E51B578) - 819406148;
  v52 = (a5 ^ 0x47) + 1217240813 - ((2 * (a5 ^ 0x47)) & 0x1DA);
  v30 += 43;
  LODWORD(STACK[0x26C0]) = v30;
  HIDWORD(v53) = v28 ^ 2;
  LODWORD(v53) = v30 ^ 0x2A4CF480;
  v54 = ((v48 << 8) ^ 0x8DC3EC00 | v45 ^ 0x862AB3DE) - 1380498816 - ((2 * ((v48 << 8) ^ 0x8DC3EC00 | v45 ^ 0x862AB3DE)) & 0x5B6E85B4) + 90;
  LODWORD(STACK[0x26B8]) = v27;
  v55 = ((v52 ^ 0x488D9EED | (v51 << 8)) ^ 0x28DABC00) - 764303744 + (~(2 * ((v52 ^ 0x488D9EED | (v51 << 8)) ^ 0x28DABC00)) | 0x5B1CB265) + 78;
  v56 = ((v27 ^ 0xF083FD7B) + ((v26 >> 10) ^ 0x20EBF8) + ((v30 << 14) ^ 0x3D2AC000) + (v53 >> 7) + ((v30 >> 3) ^ 0x5499E95) + (((v54 << 15) ^ 0xA16D0000 | (v47 >> 9) ^ 0x78B471) ^ (v48 >> 2) ^ ((v54 << 13) ^ 0xE85B4000 | (v47 >> 11) ^ 0x1E2D1C) ^ 0x132370FB)) ^ v27;
  HIDWORD(v53) = v33 ^ 0x6B;
  LODWORD(v53) = v35 ^ 0xFE11CC00;
  v57 = ((v50 >> 9) ^ 0xFFD3D3D9) + ((v50 >> 11) ^ 0xB0B09) + ((v51 >> 2) ^ 0x33CA36AF) + ((v55 << 13) ^ 0x34D9A000) + ((v55 << 15) ^ 0x2C997FFF) + ((v35 >> 3) ^ 0x1FC23986 ^ (((v32 >> 10) ^ 0xFFF6AB01) + ((v35 << 14) ^ 0x8CF33FFF) + (v53 >> 7) + 2)) - 1544258413 - ((2 * (((v50 >> 9) ^ 0xFFD3D3D9) + ((v50 >> 11) ^ 0xB0B09) + ((v51 >> 2) ^ 0x33CA36AF) + ((v55 << 13) ^ 0x34D9A000) + ((v55 << 15) ^ 0x2C997FFF) + ((v35 >> 3) ^ 0x1FC23986 ^ (((v32 >> 10) ^ 0xFFF6AB01) + ((v35 << 14) ^ 0x8CF33FFF) + (v53 >> 7) + 2)) + 2)) & 0x47E8F922);
  v58 = v39 + 398342528 - 2 * (v39 & 0x17BE39B7 ^ (v38 ^ 0xF3DEC30E) & 0x13) + 36;
  HIDWORD(v53) = v38 ^ 0xE;
  LODWORD(v53) = v58 ^ 0x17BE3980;
  v59 = v53 >> 7;
  HIDWORD(v53) = v56 ^ 0x1FD7B;
  LODWORD(v53) = v56 ^ 0xF0820000;
  v60 = v53 >> 17;
  LODWORD(STACK[0x26D0]) = v58;
  LODWORD(STACK[0x26C8]) = v35 ^ 0xFE11CC33;
  HIDWORD(v53) = v56 ^ 0x3FD7B;
  LODWORD(v53) = v56 ^ 0xF0800000;
  v61 = (((v58 << 14) ^ 0x8E690000) + ((v37 >> 10) ^ 0x89323) + v59 + ((v58 >> 3) ^ 0x2F7C734) + (v35 ^ 0xFE11CC33) - (v53 >> 19) + v60 + ((v56 >> 10) ^ 0x3C20FF)) ^ v35;
  HIDWORD(v53) = v43 ^ 0x46;
  LODWORD(v53) = v44 ^ 0x94FB8100;
  v62 = v53 >> 7;
  HIDWORD(v53) = v57 ^ 0x47C91;
  LODWORD(v53) = v57 ^ 0xA3F00000;
  v63 = v53 >> 19;
  HIDWORD(v53) = v57 ^ 0x7C91;
  LODWORD(v53) = v57 ^ 0xA3F40000;
  LODWORD(STACK[0x26E0]) = v44;
  v64 = ((2 * v58) ^ 0xD0838CB7) + ((((v44 << 14) ^ 0xE04CC000) + ((v41 >> 10) ^ 0x26DF84) + v62) ^ (v44 >> 3) ^ 0x129F7026) + ((v57 >> 10) ^ 0xFFD702E0) + ((v53 >> 17) ^ v63) + 2;
  HIDWORD(v53) = v45 ^ 0x5E;
  LODWORD(v53) = v54 ^ 0xADB74280;
  LODWORD(STACK[0x26E8]) = v54;
  v65 = ((2 * v44) ^ 0xD608FD99) + ((v53 >> 7) ^ (v54 >> 3) ^ ((v54 << 14) ^ 0xD0B68000 | (v47 >> 10) ^ 0x3C5A38) ^ 0x15B6E85B) + ((v61 >> 10) ^ 0x3F8473);
  HIDWORD(v53) = v61 ^ 0x1CC33;
  LODWORD(v53) = v61 ^ 0xFE100000;
  v66 = v65 - (v53 >> 17);
  HIDWORD(v53) = v61 ^ 0x1CC33;
  LODWORD(v53) = v61 ^ 0xFE100000;
  v67 = v66 - (v53 >> 19) - 1319162594 - ((2 * (v66 - (v53 >> 19) + 1)) & 0x62BE5A3A);
  LODWORD(STACK[0x26F0]) = v55;
  HIDWORD(v53) = v52 ^ 0x6D;
  LODWORD(v53) = v55 ^ 0xD271A680;
  v68 = ((v55 << 14) ^ 0x69B34000 | (v50 >> 10) ^ 0x161613) ^ (v53 >> 7);
  v69 = ((v55 >> 3) ^ 0xE5B1CB26) + ((2 * v54) ^ 0x5B6E85B4);
  v70 = v64 + 1898475179 + (~(2 * v64) | 0x1DAF22A9) + 1;
  HIDWORD(v53) = v70 ^ 0x6EAB;
  LODWORD(v53) = v70 ^ 0x71280000;
  v71 = v53 >> 17;
  HIDWORD(v53) = v70 ^ 0x6EAB;
  LODWORD(v53) = v70 ^ 0x71280000;
  v72 = (v53 >> 19) + v71;
  LODWORD(STACK[0x2700]) = v56;
  HIDWORD(v53) = v56 ^ 0xFFFFFFFB;
  LODWORD(v53) = v56 ^ 0xF083FD00;
  v73 = v53 >> 7;
  HIDWORD(v53) = v56 ^ 0x3FD7B;
  LODWORD(v53) = v56 ^ 0xF0800000;
  v74 = v53 >> 18;
  HIDWORD(v53) = v67 ^ 0x12D1D;
  LODWORD(v53) = v67 ^ 0xB15E0000;
  v75 = v53 >> 17;
  v76 = v69 + v68 + (v72 ^ (v70 >> 10) ^ 0x1C4A1B) + 1;
  HIDWORD(v53) = v67 ^ 0x72D1D;
  LODWORD(v53) = v67 ^ 0xB1580000;
  v77 = ((v74 + v73) ^ (v56 >> 3) ^ 0x1E107FAF) - ((v75 - (v53 >> 19)) ^ (v67 >> 10) ^ 0x2C57CB);
  v78 = v77 + 1775660474 - ((2 * v77) & 0xD3ACDB74);
  HIDWORD(v53) = v57 ^ 0x11111111;
  LODWORD(v53) = v57 ^ 0xA3F47C80;
  v79 = v53 >> 7;
  HIDWORD(v53) = v57 ^ 0x7C91;
  LODWORD(v53) = v57 ^ 0xA3F40000;
  v80 = v53 >> 18;
  v81 = v76 + 728086272 - ((2 * v76) & 0x56CB6E6E) + 55;
  HIDWORD(v53) = v81 ^ 0x5B737;
  LODWORD(v53) = v81 ^ 0x2B600000;
  v82 = v53 >> 19;
  HIDWORD(v53) = v61 ^ 0x33333333;
  LODWORD(v53) = v61 ^ 0xFE11CC00;
  v83 = v53 >> 7;
  HIDWORD(v53) = v81 ^ 0x1B737;
  LODWORD(v53) = v81 ^ 0x2B640000;
  v84 = ((v57 >> 3) ^ 0xEB81706D) - v80 + v79 + ((v81 >> 10) ^ 0xFFF52692) + v82 - (v53 >> 17) + 2;
  v85 = v84 + 755479690 - ((2 * v84) & 0x5A0F6914);
  HIDWORD(v53) = v61 ^ 0x1CC33;
  LODWORD(v53) = v61 ^ 0xFE100000;
  v86 = v53 >> 18;
  HIDWORD(v53) = v78 ^ 0x6DBA;
  LODWORD(v53) = v78 ^ 0x69D60000;
  v87 = v53 >> 17;
  HIDWORD(v53) = v78 ^ 0x66DBA;
  LODWORD(v53) = v78 ^ 0x69D00000;
  LODWORD(STACK[0x2708]) = v61;
  LODWORD(STACK[0x26F8]) = v57 ^ 0xA3F47C91;
  v88 = (((v87 + (v53 >> 19) + ((v78 >> 10) ^ 0xFFE58A64) + 1) ^ (v83 + v86 + ((v61 >> 3) ^ 0x1FC23986))) + (v57 ^ 0xA3F47C91)) ^ v57;
  HIDWORD(v53) = v70 ^ 0x2B;
  LODWORD(v53) = v70 ^ 0x71286E80;
  v89 = v53 >> 7;
  HIDWORD(v53) = v85 ^ 0x1B48A;
  LODWORD(v53) = v85 ^ 0x2D060000;
  v90 = v53 >> 17;
  HIDWORD(v53) = v85 ^ 0x7B48A;
  LODWORD(v53) = v85 ^ 0x2D000000;
  v91 = ((2 * v61) ^ 0x3DC6799) - (__PAIR64__(v70 ^ 0x6EAB, v70 ^ 0x71280000) >> 18) + v89 + ((v70 >> 3) ^ 0xE250DD5) + ((v85 >> 10) ^ 0xB41ED) - (v90 ^ (v53 >> 19));
  HIDWORD(v53) = v67 ^ 0x1D;
  LODWORD(v53) = v67 ^ 0xB15F2D00;
  v92 = v53 >> 7;
  v93 = v91 + 701227439 - ((2 * (v91 + 1)) & 0x5397C35C);
  HIDWORD(v53) = v67 ^ 0x32D1D;
  LODWORD(v53) = v67 ^ 0xB15C0000;
  v94 = v53 >> 18;
  HIDWORD(v53) = v88 ^ 0x47C91;
  LODWORD(v53) = v88 ^ 0xA3F00000;
  v95 = v53 >> 19;
  v96 = v92 - v94;
  v97 = v88 ^ 0xA3F40000;
  v98 = v88 ^ 0x7C91;
  HIDWORD(v53) = v88 ^ 0x7C91;
  LODWORD(v53) = v88 ^ 0xA3F40000;
  v99 = v88;
  v100 = v96 ^ (v67 >> 3) ^ (((v53 >> 17) ^ v95) + ((v88 >> 10) ^ 0x28FD1F));
  LODWORD(STACK[0x2710]) = v70;
  v101 = (((v100 ^ 0x162BE5A3) + 1898475179 - 2 * ((v100 ^ 0x162BE5A3) & 0x71286EBB ^ v100 & 0x10)) ^ v70) - (v70 ^ 0x71286EAB);
  v102 = v101 - 271702589 - ((2 * v101) & 0xDF9C4B86);
  HIDWORD(v53) = v81 ^ 0x1B737;
  LODWORD(v53) = v81 ^ 0x2B640000;
  v103 = v53 >> 18;
  LODWORD(STACK[0x2718]) = v81;
  HIDWORD(v53) = v81 ^ 0x37;
  LODWORD(v53) = v81 ^ 0x2B65B700;
  v104 = (v103 ^ (v53 >> 7)) + ((v81 >> 3) ^ 0x56CB6E6);
  v105 = v93;
  HIDWORD(v53) = v93 ^ 0x1E1AE;
  LODWORD(v53) = v93 ^ 0x29CA0000;
  v106 = v53 >> 17;
  v107 = v93 ^ 0x3E1AE;
  v108 = v93 ^ 0x29C80000;
  HIDWORD(v53) = v93 ^ 0x3E1AE;
  LODWORD(v53) = v93 ^ 0x29C80000;
  v109 = ((v106 ^ (v53 >> 19)) - ((v93 >> 10) ^ 0xA72F8)) ^ v104;
  v110 = ((v109 - 1319162595 - ((2 * v109) & 0x62BE5A3A)) ^ v67) + (v67 ^ 0xB15F2D1D);
  HIDWORD(v53) = v78 ^ 0x3A;
  LODWORD(v53) = v78 ^ 0x69D66D80;
  v111 = v53 >> 7;
  LODWORD(STACK[0x26B0]) = v78;
  HIDWORD(v53) = v78 ^ 0x26DBA;
  LODWORD(v53) = v78 ^ 0x69D40000;
  v112 = v53 >> 18;
  HIDWORD(v53) = v102 ^ 0x625C3;
  LODWORD(v53) = v102 ^ 0xEFC80000;
  v113 = v53 >> 19;
  HIDWORD(v53) = v102 ^ 0x25C3;
  LODWORD(v53) = v102 ^ 0xEFCE0000;
  v114 = (v111 ^ v112) - ((v78 >> 3) ^ 0xD3ACDB7);
  v115 = (v53 >> 17) + v113 + ((v102 >> 10) ^ 0x3BF389);
  HIDWORD(v53) = v85 ^ 0xA;
  LODWORD(v53) = v85 ^ 0x2D07B480;
  v116 = v53 >> 7;
  HIDWORD(v53) = v85 ^ 0x3B48A;
  LODWORD(v53) = v85 ^ 0x2D040000;
  v117 = v53 >> 18;
  v118 = v110 - 1470447232 - ((2 * v110) & 0x50B58394) + 74;
  HIDWORD(v53) = v118 ^ 0xC1CA;
  LODWORD(v53) = v118 ^ 0xA85A0000;
  v119 = v53 >> 17;
  v120 = v115 ^ v114;
  LODWORD(STACK[0x26A8]) = v85;
  HIDWORD(v53) = v118 ^ 0x2C1CA;
  LODWORD(v53) = v118 ^ 0xA8580000;
  v121 = v116 - v117 + ((v85 >> 3) ^ 0x5A0F691) + ((v118 >> 10) ^ 0x2A16B0 ^ (v53 >> 19) ^ v119);
  HIDWORD(v53) = v99 ^ 0x11111111;
  LODWORD(v53) = v99 ^ 0xA3F47C80;
  v122 = (((v53 >> 7) - (__PAIR64__(v98, v97) >> 18)) ^ (v99 >> 3) ^ 0x147E8F92) + ((2 * v85) ^ 0x5A0F6914);
  HIDWORD(v53) = v115 ^ v114;
  LODWORD(v53) = v115 ^ v114;
  v123 = v122 + (v53 >> 17);
  HIDWORD(v53) = v115 ^ v114;
  LODWORD(v53) = v115 ^ v114;
  v124 = v123 + (v53 >> 19) - ((v115 ^ v114) >> 10);
  v125 = v124 + 642619828 - ((2 * v124) & 0x4C9B3368);
  HIDWORD(v53) = v105 ^ 0x2E;
  LODWORD(v53) = v105 ^ 0x29CBE180;
  v126 = v53 >> 7;
  v127 = __PAIR64__(v107, v108) >> 18;
  v128 = v121 - 557649408 - ((2 * v121) & 0xBD85E44C) + 38;
  HIDWORD(v53) = v128 ^ 0xF226;
  LODWORD(v53) = v128 ^ 0xDEC20000;
  v129 = v53 >> 17;
  HIDWORD(v53) = v128 ^ 0x2F226;
  LODWORD(v53) = v128 ^ 0xDEC00000;
  v130 = v127 + v126 + ((v105 >> 3) ^ 0xFAC683CA) + ((v128 >> 10) ^ 0xFFC84F43) - (v129 ^ (v53 >> 19)) + 2;
  LODWORD(STACK[0x2720]) = v99;
  HIDWORD(v53) = v102 ^ LODWORD(STACK[0x25A4]);
  LODWORD(v53) = v102 ^ 0xEFCC0000;
  v131 = v53 >> 18;
  v132 = (v99 ^ 0xEAD892F7 ^ (v130 - ((2 * v130) & 0x9259DCCC) + 1227681382)) + (v99 ^ 0xA3F47C91);
  HIDWORD(v53) = v102 ^ 0xFFFFFFC3;
  LODWORD(v53) = v102 ^ 0xEFCE2580;
  v133 = v53 >> 7;
  HIDWORD(v53) = v125 ^ 0x599B4;
  LODWORD(v53) = v125 ^ 0x26480000;
  v134 = v53 >> 19;
  HIDWORD(v53) = v125 ^ 0x199B4;
  LODWORD(v53) = v125 ^ 0x264C0000;
  v135 = ((v133 - v131) ^ (v102 >> 3) ^ 0x1DF9C4B8) + ((v125 >> 10) ^ 0xFFF66C99) - (v53 >> 17) - v134 + 1;
  LODWORD(STACK[0x2728]) = v105;
  v136 = ((v135 + 701227438 - ((2 * v135) & 0x5397C35C)) ^ v105) + (v105 ^ 0x29CBE1AE);
  LODWORD(STACK[0x2768]) = v118;
  HIDWORD(v53) = v118 ^ 0x4A;
  LODWORD(v53) = v118 ^ 0xA85AC180;
  v137 = v53 >> 7;
  HIDWORD(v53) = v118 ^ 0x2C1CA;
  LODWORD(v53) = v118 ^ 0xA8580000;
  v138 = ((v118 >> 3) ^ 0xEAF4A7C6) - (v53 >> 18);
  v139 = v132 + 254638240 - ((2 * v132) & 0x1E5AF140);
  HIDWORD(v53) = v139 ^ 0x578A0;
  LODWORD(v53) = v139 ^ 0xF280000;
  v140 = v53 >> 19;
  HIDWORD(v53) = v139 ^ 0x178A0;
  LODWORD(v53) = v139 ^ 0xF2C0000;
  v141 = v138 + v137 + ((v139 >> 10) ^ 0x3CB5E) + ((v53 >> 17) ^ v140) + 1;
  v142 = (v141 - 271702589 - ((2 * v141) & 0xDF9C4B86)) ^ v102;
  v102 ^= 0xEFCE25C3;
  LODWORD(STACK[0x2730]) = v102;
  v143 = v142 - v102 + 1597066880 - ((2 * (v142 - v102)) & 0xBE629DE0);
  v144 = v136 - 1204314240 - ((2 * v136) & 0x706F3F74) + 58;
  HIDWORD(v53) = v144 ^ 0x79FBA;
  LODWORD(v53) = v144 ^ 0xB8300000;
  v145 = v53 >> 19;
  HIDWORD(v53) = v144 ^ 0x19FBA;
  LODWORD(v53) = v144 ^ 0xB8360000;
  v146 = (v53 >> 17) - v145;
  HIDWORD(v53) = v120;
  LODWORD(v53) = v115 ^ v114;
  v147 = (v53 >> 7) ^ __ROR4__(v120, 18) ^ (v120 >> 3) ^ (v144 >> 10) ^ v146;
  LODWORD(STACK[0x2770]) = v128;
  HIDWORD(v53) = v128 ^ 0x26;
  LODWORD(v53) = v128 ^ 0xDEC2F200;
  v148 = v53 >> 7;
  HIDWORD(v53) = v128 ^ 0x2F226;
  LODWORD(v53) = v128 ^ 0xDEC00000;
  v149 = v53 >> 18;
  v150 = v143 + 112;
  v151 = (v143 + 112) ^ 0x14EF0;
  HIDWORD(v53) = v151;
  LODWORD(v53) = v150 ^ 0x5F300000;
  v152 = v53 >> 17;
  HIDWORD(v53) = v151;
  LODWORD(v53) = v150 ^ 0x5F300000;
  v153 = ((v149 + v148 + ((v128 >> 3) ^ 0xE427A1BB) + 1) ^ 0x17CC53 ^ (v150 >> 10) ^ (v152 - (v53 >> 19))) + 2 * v120;
  v154 = v120;
  HIDWORD(v53) = v125 ^ 0x34;
  LODWORD(v53) = v125 ^ 0x264D9980;
  v155 = v53 >> 7;
  HIDWORD(v53) = v125 ^ 0x199B4;
  LODWORD(v53) = v125 ^ 0x264C0000;
  v156 = v53 >> 18;
  HIDWORD(v53) = v147 ^ 0xDE7;
  LODWORD(v53) = v147 ^ 0x2E0000;
  v157 = v53 >> 17;
  LODWORD(STACK[0x2790]) = v147;
  HIDWORD(v53) = v147 ^ 0x60DE7;
  LODWORD(v53) = v147 ^ 0x280000;
  v158 = (v157 ^ (v53 >> 19)) - ((v147 >> 10) ^ 0xB83) + (v156 ^ (v125 >> 3) ^ v155 ^ 0x4C9B336);
  HIDWORD(v53) = v139 ^ 0x20;
  LODWORD(v53) = v139 ^ 0xF2D7880;
  v159 = v53 >> 7;
  v160 = v153 - ((2 * v153) & 0x2B0E8964) - 1786297166;
  HIDWORD(v53) = v160 ^ 0x144B2;
  LODWORD(v53) = v160 ^ 0x95860000;
  v161 = v53 >> 17;
  LODWORD(STACK[0x2798]) = v160;
  HIDWORD(v53) = v160 ^ 0x744B2;
  LODWORD(v53) = v160 ^ 0x95800000;
  v162 = (v159 ^ (__PAIR64__(v139 ^ 0x178A0, v139 ^ 0xF2C0000) >> 18)) - ((v139 >> 3) ^ 0x1E5AF14) + ((v160 >> 10) ^ 0x2561D1) + (v161 ^ (v53 >> 19));
  LODWORD(STACK[0x2738]) = v144;
  HIDWORD(v53) = v144 ^ 0x3A;
  LODWORD(v53) = v144 ^ 0xB8379F80;
  LODWORD(STACK[0x2748]) = v53 >> 7;
  HIDWORD(v53) = v144 ^ 0x39FBA;
  LODWORD(v53) = v144 ^ 0xB8340000;
  LODWORD(STACK[0x2740]) = v53 >> 18;
  v163 = v158 - ((2 * v158) & 0x435B6A86) - 1582451389;
  LODWORD(STACK[0x2750]) = v163;
  HIDWORD(v53) = v163 ^ 0x1B543;
  LODWORD(v53) = v163 ^ 0xA1AC0000;
  LODWORD(STACK[0x2780]) = v53 >> 17;
  HIDWORD(v53) = v163 ^ 0x5B543;
  LODWORD(v53) = v163 ^ 0xA1A80000;
  LODWORD(STACK[0x2758]) = v53 >> 19;
  LODWORD(STACK[0x2778]) = v150;
  HIDWORD(v53) = v150 ^ 0x70;
  LODWORD(v53) = v150 ^ 0x5F314E80;
  LODWORD(STACK[0x27D0]) = v53 >> 7;
  LODWORD(STACK[0x2760]) = v125 ^ 0x264D99B4;
  v164 = ((v162 + 642619828 - ((2 * v162) & 0x4C9B3368)) ^ v125) - (v125 ^ 0x264D99B4);
  HIDWORD(v53) = v151;
  LODWORD(v53) = v150 ^ 0x5F300000;
  LODWORD(STACK[0x27B8]) = v53 >> 18;
  v165 = v164 - ((2 * v164) & 0xEBE63B50) + 1978867112;
  LODWORD(STACK[0x27A0]) = v165;
  HIDWORD(v53) = v165 ^ 0x11DA8;
  LODWORD(v53) = v165 ^ 0x75F20000;
  LODWORD(STACK[0x27B0]) = v53 >> 17;
  v166 = ((LODWORD(STACK[0x2838]) ^ 0x47) << 8) | ((LODWORD(STACK[0x2818]) ^ 0x47) << 16);
  HIDWORD(v53) = v165 ^ 0x31DA8;
  LODWORD(v53) = v165 ^ 0x75F00000;
  LODWORD(STACK[0x2838]) = v53 >> 19;
  v167 = STACK[0x27D8];
  HIDWORD(v53) = LODWORD(STACK[0x27D8]) ^ 0xFAC;
  LODWORD(v53) = LODWORD(STACK[0x27D8]) ^ 0x9A060000;
  v168 = v53 >> 13;
  v169 = v166 & 0xFFFFFF00 | (LODWORD(STACK[0x26D8]) + 31) ^ 0x47;
  HIDWORD(v53) = LODWORD(STACK[0x27D8]) ^ 0x2C;
  LODWORD(v53) = LODWORD(STACK[0x27D8]) ^ 0x9A060F80;
  v170 = v53 >> 6;
  HIDWORD(v53) = LODWORD(STACK[0x27D8]) ^ 0x7AC;
  LODWORD(v53) = LODWORD(STACK[0x27D8]) ^ 0x9A060800;
  v171 = v53 >> 11;
  HIDWORD(v53) = LODWORD(STACK[0x27D8]) ^ 0x60FAC;
  LODWORD(v53) = LODWORD(STACK[0x27D8]) ^ 0x9A000000;
  v172 = v53 >> 22;
  v173 = v170 - ((v53 >> 25) + v171);
  v174 = LODWORD(STACK[0x2810]) ^ 0x11C16D23;
  v175 = ((v167 ^ 0x9A060FAC) + v174 - 1710878804 - ((2 * ((v167 ^ 0x9A060FAC) + v174)) & 0x340C1F58)) ^ v167;
  v176 = STACK[0x27E0];
  LODWORD(STACK[0x2818]) = v174;
  v177 = (((v175 - 1287682533 - ((2 * v175) & 0x667F0C36)) ^ v176) + v174) ^ v173;
  HIDWORD(v53) = v167;
  LODWORD(v53) = v167 ^ 0x9A060FAC;
  v178 = ((2 * v176) ^ 0x667F0C36 ^ (v53 >> 2) ^ v168 ^ v172) + ((v177 - 897038588 - ((2 * v177) & 0x95108E08)) ^ LODWORD(STACK[0x2880])) + (LODWORD(STACK[0x2840]) ^ 0x47);
  v179 = v178 + (v169 << 8) + 115533165 - ((2 * (v178 + (v169 << 8) - 1758301380)) & 0xDF60E462);
  HIDWORD(v53) = v179 ^ 1;
  LODWORD(v53) = v179 ^ 0x6FB07230;
  v180 = v53 >> 2;
  HIDWORD(v53) = v179 ^ 0x1231;
  LODWORD(v53) = v179 ^ 0x6FB06000;
  v181 = (v53 >> 13) ^ v180;
  HIDWORD(v53) = v179 ^ 0x307231;
  LODWORD(v53) = v179 ^ 0x6F800000;
  v182 = v53 >> 22;
  HIDWORD(v53) = v179 ^ 0xFFFFFFF1;
  LODWORD(v53) = v179 ^ 0x6FB07200;
  v183 = v53 >> 6;
  HIDWORD(v53) = v179 ^ 0x231;
  LODWORD(v53) = v179 ^ 0x6FB07000;
  v184 = v183 - (v53 >> 11);
  HIDWORD(v53) = v179 ^ 0x1B07231;
  LODWORD(v53) = v179 ^ 0x6E000000;
  v185 = (((v179 ^ 0x6FB07231) + (v167 ^ 0x9A060FAC)) ^ 0x7BBEFD8F) - 2076114319 + ((2 * ((v179 ^ 0x6FB07231) + (v167 ^ 0x9A060FAC))) & 0xF77DFB1E);
  v186 = LODWORD(STACK[0x26B8]) ^ 0xF7C0284;
  LODWORD(STACK[0x2810]) = v167 ^ 0x65F9F053;
  LODWORD(STACK[0x2840]) = v176 ^ 0xB33F861B;
  v187 = (v176 ^ 0x4CC079E4) + (v167 ^ 0x65F9F053) + v186 + v182 + v181 - (v185 ^ ((v179 ^ 0x6FB07231) + (v176 ^ 0xB33F861B))) + (((v176 ^ 0xDC8FF42A ^ v179) + (v176 ^ 0xB33F861B) + v185) ^ ((v184 ^ (v53 >> 25)) + v174)) - 14953286;
  v188 = v187 + 1168821218;
  v189 = v187 + 1168821218 - ((2 * v187) & 0x8B5597C4);
  HIDWORD(v53) = v188 ^ 2;
  LODWORD(v53) = v189 ^ 0x45AACBE0;
  v190 = v53 >> 2;
  HIDWORD(v53) = v189 ^ 0xBE2;
  LODWORD(v53) = v189 ^ 0x45AAC000;
  v191 = v190 ^ (v53 >> 13);
  HIDWORD(v53) = v189 ^ 0x2ACBE2;
  LODWORD(v53) = v189 ^ 0x45800000;
  v192 = v53 >> 22;
  HIDWORD(v53) = v189 ^ 0x22222222;
  LODWORD(v53) = v189 ^ 0x45AACBC0;
  v193 = v53 >> 6;
  HIDWORD(v53) = v189 ^ 0x3E2;
  LODWORD(v53) = v189 ^ 0x45AAC800;
  v194 = v189 ^ 0x45AACBE2;
  v195 = (v176 ^ 0xB33F861B) + (v167 ^ 0x65F9F053) + (LODWORD(STACK[0x26C0]) ^ 0xD5B30B54) + (v167 ^ 0x20533BB1 ^ v189) + (v179 ^ 0x2A1AB9D3 ^ v189) + (((((v189 ^ 0x45AACBE2) - (v179 ^ 0x6FB07231)) ^ ((v189 ^ 0x45AACBE2) + (v167 ^ 0x9A060FAC))) + v185) ^ (v191 - v192)) + (((v53 >> 11) + v193) ^ __ROR4__(v189, 25) ^ 0xD565F122) - 1341247802;
  v196 = v195 + 1919351615 - ((2 * v195) & 0xE4CDF67E);
  HIDWORD(v53) = -5 - v196;
  LODWORD(v53) = v196 ^ 0x7266FB3C;
  v197 = v53 >> 2;
  HIDWORD(v53) = v196 ^ 0x1B3F;
  LODWORD(v53) = v196 ^ 0x7266E000;
  v198 = v53 >> 13;
  HIDWORD(v53) = v196 ^ 0x26FB3F;
  LODWORD(v53) = v196 ^ 0x72400000;
  v199 = v53 >> 22;
  v200 = v197 + v198;
  HIDWORD(v53) = ~v196;
  LODWORD(v53) = v196 ^ 0x7266FB00;
  v201 = v53 >> 6;
  v202 = v200 ^ v199;
  HIDWORD(v53) = v196 ^ 0x33F;
  LODWORD(v53) = v196 ^ 0x7266F800;
  v203 = v201 ^ (v53 >> 11);
  HIDWORD(v53) = v196 ^ 0x66FB3F;
  LODWORD(v53) = v196 ^ 0x72000000;
  v204 = ((2 * ((v196 ^ 0x7266FB3F) - (v179 ^ 0x6FB07231))) & 0x3EFBBD7E) + (((v196 ^ 0x7266FB3F) - (v179 ^ 0x6FB07231)) ^ 0x1F7DDEBF);
  v205 = ((2 * (v196 ^ v189)) & 0xBF9E7C38 ^ 0x2F986038) + (v196 ^ v189 ^ 0x68030EC1);
  v206 = (v167 ^ 0x9A060FAC) + 2 * (v179 ^ 0x6FB07231) + LODWORD(STACK[0x26C8]) + (v189 ^ 0x45AACBE2) + (v53 >> 25) + v203 + v202 + v205 - v204 - ((v204 - 528342719) ^ ((v196 ^ 0x7266FB3F) + (v189 ^ 0x45AACBE2))) + 1384954049;
  v207 = v206 - 1411030265 - ((2 * v206) & 0x57CAC60E);
  HIDWORD(v53) = -29 - v207;
  LODWORD(v53) = v207 ^ 0xABE56304;
  v208 = v53 >> 2;
  HIDWORD(v53) = v207 ^ 0x256307;
  LODWORD(v53) = v207 ^ 0xABC00000;
  v209 = v53 >> 22;
  HIDWORD(v53) = v207 ^ 0x307;
  LODWORD(v53) = v207 ^ 0xABE56000;
  v210 = (v53 >> 13) + v208 + v209;
  HIDWORD(v53) = v207 ^ 0x307;
  LODWORD(v53) = v207 ^ 0xABE56000;
  v211 = v53 >> 11;
  HIDWORD(v53) = v207 ^ 7;
  LODWORD(v53) = v207 ^ 0xABE56300;
  v212 = v211 + (v53 >> 6);
  HIDWORD(v53) = v207 ^ 0x1E56307;
  LODWORD(v53) = v207 ^ 0xAA000000;
  v213 = (v207 ^ 0xABE56307) + (v189 ^ 0x45AACBE2);
  v214 = v212 ^ (v53 >> 25) ^ (v213 + (v196 ^ 0x8D9904C0) + (v189 ^ 0xEE4FA8E5 ^ v207) + 1);
  v215 = (v214 + 1873834545 - ((2 * v214) & 0xDF60E462)) ^ v179;
  v216 = ((v215 - ((2 * v215 + 733373868) & 0x2F7C7348) + 228158586) ^ LODWORD(STACK[0x26D0])) + (v210 ^ (v205 - 1607417372 + (v213 ^ ((v207 ^ 0xABE56307) + (v196 ^ 0x7266FB3F)))));
  v217 = v216 - 1138094165 - ((2 * v216) & 0x78541F56);
  HIDWORD(v53) = ~(v217 + 4);
  LODWORD(v53) = v217 ^ 0xBC2A0FA8;
  v218 = v53 >> 2;
  HIDWORD(v53) = v217 ^ 0xFAB;
  LODWORD(v53) = v217 ^ 0xBC2A0000;
  v219 = v53 >> 13;
  HIDWORD(v53) = v217 ^ 0x2B;
  LODWORD(v53) = v217 ^ 0xBC2A0F80;
  v220 = v53 >> 6;
  HIDWORD(v53) = v217 ^ 0x7AB;
  LODWORD(v53) = v217 ^ 0xBC2A0800;
  v221 = v220 - (v53 >> 11);
  HIDWORD(v53) = v217 ^ 0x2A0FAB;
  LODWORD(v53) = v217 ^ 0xBC000000;
  v222 = v53 >> 22;
  HIDWORD(v53) = v217 ^ 0x2A0FAB;
  LODWORD(v53) = v217 ^ 0xBC000000;
  v223 = v221 ^ (v53 >> 25);
  v224 = ((2 * ((v217 ^ 0xBC2A0FAB) + (v207 ^ 0xABE56307))) & 0xBEF7CFF0) + (((v217 ^ 0xBC2A0FAB) + (v207 ^ 0xABE56307)) ^ 0x5F7BE7F8);
  v225 = (v196 ^ 0x31B30B6B ^ v217) - 1601955832 + v224;
  v224 -= 1601955832;
  v226 = (LODWORD(STACK[0x26E0]) ^ 0x94FB8133) + v222 + v218 - ((-1919351616 - ((v225 + 1) ^ (v223 + v194)) + ((2 * ((v225 + 1) ^ (v223 + v194))) & 0xE4CDF67E)) ^ v196);
  v227 = (v224 + (v217 ^ 0xBC2A0FAB) - (v196 ^ 0x7266FB3F) + 1919351615 - ((2 * (v224 + (v217 ^ 0xBC2A0FAB) - (v196 ^ 0x7266FB3F))) & 0xE4CDF67E)) ^ v196;
  v228 = v226 - 24415704 + ((((2 * v227) & 0x57CAC60E) - v227 + 1411030264) ^ v207) - v219;
  v229 = v228 + 119147555 - ((2 * v228) & 0xE341846);
  HIDWORD(v53) = -13 - v229;
  LODWORD(v53) = v229 ^ 0x71A0C20;
  v230 = v53 >> 2;
  HIDWORD(v53) = v229 ^ 0xC23;
  LODWORD(v53) = v229 ^ 0x71A0000;
  v231 = (v53 >> 13) + v230;
  HIDWORD(v53) = v229 ^ 0x1A0C23;
  LODWORD(v53) = v229 ^ 0x7000000;
  v232 = v231 - (v53 >> 22);
  HIDWORD(v53) = v229 ^ 0xFFFFFFE3;
  LODWORD(v53) = v229 ^ 0x71A0C00;
  v233 = v53 >> 6;
  HIDWORD(v53) = v229 ^ 0x423;
  LODWORD(v53) = v229 ^ 0x71A0800;
  v234 = (v53 >> 11) ^ v233;
  v235 = v229 ^ 0x71A0C23;
  v236 = (((v229 ^ 0x71A0C23) + (v217 ^ 0xBC2A0FAB)) ^ 0x6E7FFF57) - 1853882199 + ((2 * ((v229 ^ 0x71A0C23) + (v217 ^ 0xBC2A0FAB))) & 0xDCFFFEAE);
  HIDWORD(v53) = v229 ^ 0x11A0C23;
  LODWORD(v53) = v229 ^ 0x6000000;
  v237 = ((v229 ^ 0x71A0C23) - (v217 ^ 0xBC2A0FAB) - 1411030265 - ((2 * ((v229 ^ 0x71A0C23) - (v217 ^ 0xBC2A0FAB))) & 0x57CAC60E)) ^ v207;
  v238 = v232 ^ v224;
  v239 = (((v237 + 119147555 - ((2 * v237) & 0xE341846)) ^ v229) - (v207 ^ 0xABE56307)) ^ (v234 - (v53 >> 25));
  v240 = (v239 + 1919351615 - ((2 * v239) & 0xE4CDF67E)) ^ v196;
  v241 = ((v240 - ((2 * v240 + 664853230) & 0x5B6E85B4) - 2121813935) ^ LODWORD(STACK[0x26E8])) + (v238 ^ ((v229 ^ 0x71A0C23) + (v207 ^ 0xABE56307) + v236));
  v242 = v241 - 1591776409 - ((2 * v241) & 0x423ED6CE);
  HIDWORD(v53) = -29 - v242;
  LODWORD(v53) = v242 ^ 0xA11F6B64;
  v243 = v53 >> 2;
  HIDWORD(v53) = v242 ^ 0xB67;
  LODWORD(v53) = v242 ^ 0xA11F6000;
  v244 = v53 >> 13;
  HIDWORD(v53) = v242 ^ 0x1F6B67;
  LODWORD(v53) = v242 ^ 0xA1000000;
  v245 = v53 >> 22;
  HIDWORD(v53) = v242 ^ 0xFFFFFFE7;
  LODWORD(v53) = v242 ^ 0xA11F6B40;
  v246 = v53 >> 6;
  HIDWORD(v53) = v242 ^ 0x367;
  LODWORD(v53) = v242 ^ 0xA11F6800;
  v247 = v53 >> 11;
  HIDWORD(v53) = v242 ^ 0x11F6B67;
  LODWORD(v53) = v242 ^ 0xA0000000;
  v248 = v244 ^ v243;
  v249 = v242 ^ 0xA11F6B67;
  v250 = ((v242 ^ 0xA11F6B67) + (v229 ^ 0x71A0C23) - 1138094165 - ((2 * ((v242 ^ 0xA11F6B67) + (v229 ^ 0x71A0C23))) & 0x78541F56)) ^ v217;
  v251 = (LODWORD(STACK[0x26F0]) ^ 0xD271A6CD) + (v217 ^ 0x43D5F054) - v245 + v248 + (((v217 ^ 0x43D5F054) + (v242 ^ 0x5EE09498) + (v229 ^ 0xA6056744 ^ v242) + 2) ^ v236) + (((v246 ^ v247) - (v53 >> 25) - 1411030265 - ((2 * ((v246 ^ v247) - (v53 >> 25))) & 0x57CAC60E)) ^ v207) - ((v250 - 1591776409 - ((2 * v250) & 0x423ED6CE)) ^ v242) - 422261992;
  v252 = v251 - 374050483 - ((2 * v251) & 0xD368E29A);
  HIDWORD(v53) = v252 ^ 1;
  LODWORD(v53) = v252 ^ 0xE9B4714C;
  v253 = v53 >> 2;
  HIDWORD(v53) = v252 ^ 0x114D;
  LODWORD(v53) = v252 ^ 0xE9B46000;
  v254 = v253 + (v53 >> 13);
  HIDWORD(v53) = v252 ^ 0x34714D;
  LODWORD(v53) = v252 ^ LODWORD(STACK[0x25A8]);
  v255 = v53 >> 22;
  HIDWORD(v53) = v252 ^ 0x14D;
  LODWORD(v53) = v252 ^ 0xE9B47000;
  v256 = v53 >> 11;
  HIDWORD(v53) = v252 ^ 0xD;
  LODWORD(v53) = v252 ^ 0xE9B47140;
  v257 = v53 >> 6;
  HIDWORD(v53) = v252 ^ 0x1B4714D;
  LODWORD(v53) = v252 ^ 0xE8000000;
  v258 = (v252 ^ 0x164B8EB2) + 1;
  v259 = (LODWORD(STACK[0x2700]) ^ 0xF083FD7B) + (v217 ^ 0xBC2A0FAB) + (v229 ^ 0xF8E5F3DC) + (v242 ^ 0xA11F6B67) + (v229 ^ 0x11518291 ^ v252) + v258 + (v53 >> 25) - (v256 ^ v257) + (v254 ^ v255) + 2 * (((2 * ((v252 ^ 0xE9B4714D) + (v242 ^ 0xA11F6B67))) & 0x75F5EF36) + (((v252 ^ 0xE9B4714D) + (v242 ^ 0xA11F6B67)) ^ 0x7AFAF79B)) - 999522448;
  v260 = v259 + 1089459965 - ((2 * v259) & 0x81DFADFA);
  HIDWORD(v53) = v260 ^ 0x16FD;
  LODWORD(v53) = v260 ^ 0x40EFC000;
  v261 = v53 >> 13;
  HIDWORD(v53) = (v260 + 20) ^ 1;
  LODWORD(v53) = v260 ^ 0x40EFD6FC;
  v262 = v53 >> 2;
  HIDWORD(v53) = v260 ^ 0x2FD6FD;
  LODWORD(v53) = v260 ^ 0x40C00000;
  v263 = v53 >> 22;
  HIDWORD(v53) = v260 ^ 0xFFFFFFFD;
  LODWORD(v53) = v260 ^ 0x40EFD6C0;
  v264 = v53 >> 6;
  HIDWORD(v53) = v260 ^ 0x6FD;
  LODWORD(v53) = v260 ^ 0x40EFD000;
  v265 = v53 >> 11;
  HIDWORD(v53) = v260 ^ 0xEFD6FD;
  LODWORD(v53) = v260 ^ 0x40000000;
  v266 = ((2 * (v260 ^ v252)) & 0xE3FD4BFE ^ 0x42B54B60) + (v260 ^ v252 ^ 0xD8A5024F);
  v267 = v260 ^ 0x40EFD6FD;
  v268 = LODWORD(STACK[0x26F8]) + v235 + (v242 ^ 0xA11F6B67) + (v242 ^ 0xB754E5D5 ^ v252) + v258 + (v260 ^ 0x40EFD6FD) - v261 - v263 + v262 + v264 + v265 + (v53 >> 25) + v266 + 2 * (((2 * (v260 ^ v242)) & 0x33FFFF16 ^ 0x7C1E84EB) + (v260 ^ v242 ^ 0x47F0BDEE)) - 280978903;
  v269 = v268 - 498298409 - ((2 * v268) & 0xC49923AE);
  HIDWORD(v53) = ~v269;
  LODWORD(v53) = v269 ^ 0xE24C91D4;
  v270 = v53 >> 2;
  HIDWORD(v53) = v269 ^ 0x11D7;
  LODWORD(v53) = v269 ^ 0xE24C8000;
  v271 = v270 ^ (v53 >> 13);
  HIDWORD(v53) = v269 ^ 0xC91D7;
  LODWORD(v53) = v269 ^ 0xE2400000;
  v272 = v53 >> 22;
  HIDWORD(v53) = v269 ^ 0x17;
  LODWORD(v53) = v269 ^ 0xE24C91C0;
  v273 = v53 >> 6;
  HIDWORD(v53) = v269 ^ 0x1D7;
  LODWORD(v53) = v269 ^ 0xE24C9000;
  v274 = v53 >> 11;
  HIDWORD(v53) = v269 ^ 0x4C91D7;
  LODWORD(v53) = v269 ^ LODWORD(STACK[0x25AC]);
  v275 = (LODWORD(STACK[0x2708]) ^ 0x1EE33CC) + v249 - v266 + (v269 ^ 0xE24C91D7) + (v260 ^ 0xA2A3472A ^ v269) - v272 + (v53 >> 25) + v274 - v273 - (((v269 ^ 0xE24C91D7) - (v252 ^ 0xE9B4714D)) ^ ((v269 ^ 0xE24C91D7) - (v260 ^ 0x40EFD6FD))) + v271 + 926257878;
  v276 = v275 + 1251931537 - ((2 * v275) & 0x953DEB22);
  HIDWORD(v53) = v276 ^ 1;
  LODWORD(v53) = v276 ^ 0x4A9EF590;
  v277 = v53 >> 2;
  HIDWORD(v53) = v276 ^ 0x1591;
  LODWORD(v53) = v276 ^ 0x4A9EE000;
  v278 = v53 >> 13;
  HIDWORD(v53) = v276 ^ 0x1EF591;
  LODWORD(v53) = v276 ^ 0x4A800000;
  v279 = v53 >> 22;
  HIDWORD(v53) = v276 ^ 0x11111111;
  LODWORD(v53) = v276 ^ 0x4A9EF580;
  v280 = v53 >> 6;
  HIDWORD(v53) = v276 ^ 0x591;
  LODWORD(v53) = v276 ^ 0x4A9EF000;
  v281 = v53 >> 11;
  v282 = *(STACK[0x2850] + ((((v276 >> 25) ^ 0x25) - 34) ^ 0x68));
  HIDWORD(v53) = v282 ^ 0x1D;
  LODWORD(v53) = v282 << 24;
  v283 = v53 >> 31;
  HIDWORD(v53) = v283 ^ 1;
  LODWORD(v53) = (v283 ^ 0xFFFFFFE7) << 24;
  v284 = v281 ^ v280;
  v285 = v276 ^ 0x4A9EF591;
  v286 = ((2 * ((v276 ^ 0x4A9EF591) - (v269 ^ 0xE24C91D7))) & 0xBF5F9ABE) + (((v276 ^ 0x4A9EF591) - (v269 ^ 0xE24C91D7)) ^ 0xDFAFCD5F);
  v287 = v284 + ((v53 >> 26) ^ (v276 << 7) ^ 0x4F7AC880);
  v288 = (v276 ^ 0x4A9EF591) + (v260 ^ 0x40EFD6FD) + (v269 ^ 0xA8D26446 ^ v276);
  v289 = (LODWORD(STACK[0x2710]) ^ 0x8ED79154) + ((2 * v260) ^ 0x7E205205) + (v269 ^ 0x1DB36E28) + (v276 ^ 0x4A9EF591) - v278 + v277 + v279 + v286 + ((v288 + 1089459965 - ((2 * v288) & 0x81DFADFA)) ^ v260) - 2139609670 + ((v287 - 374050483 - ((2 * v287) & 0xD368E29A)) ^ v252);
  v290 = v289 + 918148379 - ((2 * v289) & 0x6D73AA36);
  HIDWORD(v53) = -9 - v290;
  LODWORD(v53) = v290 ^ 0x36B9D518;
  v291 = v53 >> 2;
  HIDWORD(v53) = v290 ^ 0x151B;
  LODWORD(v53) = v290 ^ 0x36B9C000;
  v292 = v53 >> 13;
  HIDWORD(v53) = v290 ^ 0x39D51B;
  LODWORD(v53) = v290 ^ 0x36800000;
  v293 = v53 >> 22;
  HIDWORD(v53) = v290 ^ 0x1B;
  LODWORD(v53) = v290 ^ 0x36B9D500;
  v294 = v53 >> 6;
  HIDWORD(v53) = v290 ^ 0x51B;
  LODWORD(v53) = v290 ^ 0x36B9D000;
  v295 = v294 ^ (v53 >> 11);
  HIDWORD(v53) = v290 ^ 0xB9D51B;
  LODWORD(v53) = v290 ^ 0x36000000;
  v296 = ((2 * (v290 ^ v276)) & 0xBDFEFEEA ^ 0xB84E4000) + (v290 ^ v276 ^ 0x22D85FFF);
  v297 = (v290 ^ 0xC9462AE4) + 1;
  v298 = (v67 ^ 0x4EA0D2E2) + v267 + ((2 * v269) ^ 0x3B66DC51) + v297 + v292 + v291 + v293 + (v53 >> 25) + v295 + v296 + (((v269 ^ 0xD4F544CC ^ v290) - 1593802613 + v296) ^ (v286 + 542126753)) + 1082451177;
  v299 = v298 + 1513039268 - ((2 * v298) & 0xB45E4B48);
  HIDWORD(v53) = v299 ^ 0x24;
  LODWORD(v53) = v299 ^ 0x5A2F2580;
  v300 = v53 >> 6;
  HIDWORD(v53) = v299 ^ 0x5A4;
  LODWORD(v53) = v299 ^ 0x5A2F2000;
  v301 = v53 >> 11;
  HIDWORD(v53) = v299 ^ 0x5A4;
  LODWORD(v53) = v299 ^ 0x5A2F2000;
  v302 = v53 >> 13;
  v303 = v299 ^ 0x5A2F25A4;
  HIDWORD(v53) = v298;
  LODWORD(v53) = v299 ^ 0x5A2F25A4;
  v304 = (v53 >> 2) + v302;
  HIDWORD(v53) = v299 ^ 0x2F25A4;
  LODWORD(v53) = v299 ^ 0x5A000000;
  v305 = v53 >> 22;
  HIDWORD(v53) = *(STACK[0x2860] + ((((v299 >> 25) ^ 0x2D) - 34) ^ 0x5DLL));
  LODWORD(v53) = (HIDWORD(v53) ^ 0xFFFFFF9F) << 24;
  v306 = v301 + v300 + (((((v299 << 7) ^ 0x1792D200) + 295728818 - ((2 * ((v299 << 7) ^ 0x1792D200)) & 0x2340ED00)) ^ 0x11A076B2 | ((v53 >> 28) >> 2) ^ 0x10) ^ ((~(v53 >> 28) & 3) << 6));
  v307 = v290 ^ 0x36B9D51B;
  v308 = (v306 - 498298409 - ((2 * v306) & 0xC49923AE)) ^ v269;
  v309 = v299 ^ v276;
  v310 = ((v299 ^ 0x5A2F25A4) + (v290 ^ 0x36B9D51B) + 280088629 - ((2 * ((v299 ^ 0x5A2F25A4) + (v290 ^ 0x36B9D51B))) & 0x2163A06A)) ^ v299 ^ v276;
  v311 = (v276 ^ 0xB5610A6E) + 2;
  v312 = v311 + (v290 ^ 0x93690F40 ^ v299) + (v309 ^ 0x10B1D035) + v308;
  v313 = v311 + (v290 ^ 0xC9462AE4) + (v304 ^ v305) - v310 + ((v312 - ((2 * v312 + 2061043826) & 0x56CB6E6E) - 388875408) ^ LODWORD(STACK[0x2718]));
  v314 = v313 - 926452805 - ((2 * v313) & 0x918EE776);
  HIDWORD(v53) = -25 - v314;
  LODWORD(v53) = v314 ^ 0xC8C773B8;
  v315 = v53 >> 2;
  HIDWORD(v53) = v314 ^ 0x13BB;
  LODWORD(v53) = v314 ^ 0xC8C76000;
  v316 = v53 >> 13;
  HIDWORD(v53) = v314 ^ 0x773BB;
  LODWORD(v53) = v314 ^ 0xC8C00000;
  v317 = v53 >> 22;
  HIDWORD(v53) = v314 ^ 0xFFFFFFFB;
  LODWORD(v53) = v314 ^ 0xC8C77380;
  v318 = v53 >> 6;
  HIDWORD(v53) = v314 ^ 0xBBBBBBBB;
  LODWORD(v53) = v314 ^ 0xC8C77000;
  v319 = v53 >> 11;
  HIDWORD(v53) = v314 ^ 0xC773BB;
  LODWORD(v53) = v314 ^ 0xC8000000;
  v320 = v318 - v319;
  v321 = v314 ^ 0xC8C773BB;
  v322 = (v314 ^ 0xC8C773BB) + (v299 ^ 0x5A2F25A4) - 117672724 - ((2 * ((v314 ^ 0xC8C773BB) + (v299 ^ 0x5A2F25A4))) & 0xF1F8E9D8);
  v323 = ((v314 ^ 0xC8C773BB) + (v290 ^ 0x36B9D51B) - 117672724 - ((2 * ((v314 ^ 0xC8C773BB) + (v290 ^ 0x36B9D51B))) & 0xF1F8E9D8)) ^ v322;
  v324 = (LODWORD(STACK[0x26B0]) ^ 0x69D66DBA) + v285 + v297 + (v299 ^ 0x5A2F25A4) + v315 - v316 - v317 - (v320 ^ (v53 >> 25)) - (((v314 ^ v290 ^ 0xFE7EA6A0) - 117672724 - 2 * ((v314 ^ v290 ^ 0xFE7EA6A0) & 0x78FC74FE ^ (v314 ^ v290) & 0x12)) ^ v322) + 1282128546 + ((v323 + 918148379 - ((2 * v323) & 0x6D73AA36)) ^ v290);
  v325 = v324 + 395846108 - ((2 * v324) & 0x2F3043B8);
  HIDWORD(v53) = v325 ^ 0x1821DC;
  LODWORD(v53) = v325 ^ 0x17800000;
  v326 = v53 >> 22;
  v327 = v325 ^ 0x179821DC;
  HIDWORD(v53) = v324;
  LODWORD(v53) = v325 ^ 0x179821DC;
  v328 = v53 >> 2;
  HIDWORD(v53) = v325 ^ 0x1DC;
  LODWORD(v53) = v325 ^ 0x17982000;
  v329 = v328 + (v53 >> 13);
  HIDWORD(v53) = v325 ^ 0x1DC;
  LODWORD(v53) = v325 ^ 0x17982000;
  v330 = v53 >> 11;
  HIDWORD(v53) = v325 ^ 0x1C;
  LODWORD(v53) = v325 ^ 0x179821C0;
  v331 = v53 >> 6;
  HIDWORD(v53) = v325 ^ 0x19821DC;
  LODWORD(v53) = v325 ^ 0x16000000;
  v332 = (v329 - v326) ^ ((v299 ^ 0x5A2F25A4) + (v325 ^ 0xE867DE23) + (v325 ^ v314 ^ 0xDF5F5267) + 1);
  v333 = (v332 + 1513039268 - ((2 * v332) & 0xB45E4B48)) ^ v299;
  v334 = (LODWORD(STACK[0x26A8]) ^ 0x2D07B48A) + (((((v325 ^ 0x179821DC) + (v299 ^ 0x5A2F25A4) - 547401113 - ((2 * ((v325 ^ 0x179821DC) + (v299 ^ 0x5A2F25A4))) & 0xBEBEA4CE)) ^ v325 ^ v314) - (v299 ^ 0x5A2F25A4)) ^ (v331 + v307 + v330 - (v53 >> 25))) - 1893780899 + ((v333 - 926452805 - ((2 * v333) & 0x918EE776)) ^ v314);
  v335 = (2 * v334) & 0x2C88249C;
  v334 += 373559886;
  v336 = v334 - v335;
  HIDWORD(v53) = v336 ^ 0xE;
  LODWORD(v53) = v336 ^ 0x16441240;
  v337 = v53 >> 6;
  HIDWORD(v53) = v336 ^ 0x24E;
  LODWORD(v53) = v336 ^ 0x16441000;
  v338 = v53 >> 11;
  HIDWORD(v53) = v336 ^ 0x4124E;
  LODWORD(v53) = v336 ^ 0x16400000;
  v339 = (((v334 << 30) | 0x17E1B6B3) ^ __ROR4__(v336, 13) ^ (v336 >> 2)) - (v53 >> 22);
  HIDWORD(v53) = v336 ^ 0x44124E;
  LODWORD(v53) = v336 ^ 0x16000000;
  v340 = (v338 + v337) ^ (v53 >> 25);
  v341 = v336 ^ 0x1644124E;
  v342 = (v336 ^ 0x1644124E) + (v325 ^ 0x179821DC) - 1511330455 - ((2 * ((v336 ^ 0x1644124E) + (v325 ^ 0x179821DC))) & 0x4BD5DAD2);
  v343 = (v340 + v303 + 373559886 - ((2 * (v340 + v303)) & 0x2C88249C)) ^ v336;
  v344 = (LODWORD(STACK[0x2720]) ^ 0x5C0B836E) + (((v314 ^ 0xDE8361F5 ^ v336) - 1511330455 - ((2 * (v314 ^ 0xDE8361F5 ^ v336)) & 0x4BD5DAD2)) ^ ((v325 ^ 0x179821DC) - (v314 ^ 0xC8C773BB)) ^ v339 ^ v342) + 755367691 + ((v343 - 1511330455 - ((2 * v343) & 0x4BD5DAD2)) ^ v342);
  v345 = v344 - 685813440 - ((2 * v344) & 0xAE3EA2BA);
  v346 = v345 + 29;
  HIDWORD(v53) = (v345 + 53) ^ 1;
  LODWORD(v53) = (v345 + 29) ^ 0xD71F515C;
  v347 = v53 >> 2;
  HIDWORD(v53) = (v345 + 29) ^ 0x115D;
  LODWORD(v53) = (v345 + 29) ^ 0xD71F4000;
  v348 = v53 >> 13;
  HIDWORD(v53) = (v345 + 29) ^ 0x1F515D;
  LODWORD(v53) = (v345 + 29) ^ 0xD7000000;
  v349 = v53 >> 22;
  HIDWORD(v53) = (v345 + 29) ^ 0xDDDDDDDD;
  LODWORD(v53) = (v345 + 29) ^ 0xD71F5140;
  v350 = v53 >> 6;
  HIDWORD(v53) = (v345 + 29) ^ 0x15D;
  LODWORD(v53) = (v345 + 29) ^ 0xD71F5000;
  v351 = v53 >> 11;
  HIDWORD(v53) = (v345 + 29) ^ 0x11F515D;
  LODWORD(v53) = (v345 + 29) ^ 0xD6000000;
  v352 = (v345 + 29) ^ 0xD71F515D;
  v353 = ((2 * (v352 - (v336 ^ 0x1644124E))) & 0xFAAB35BA) + ((v352 - (v336 ^ 0x1644124E)) ^ 0xFD559ADD);
  v354 = ((v325 ^ 0xE867DE23) + (v325 ^ 0xC0877081 ^ v346) + 44721444 + v353) ^ (v351 + v321 - (v53 >> 25) - v350);
  v355 = (v325 ^ 0x179821DC) + (v342 ^ 0x5A151296) + v352 + (v336 ^ 0x3EA4BCEC ^ v346) + v347 + v348 - v349 + ((v354 - 2 * ((v354 + 893667132) & 0x29CBE1AF ^ v354 & 1) - 552589078) ^ LODWORD(STACK[0x2728])) + 2;
  v356 = v355 - 623195398;
  v357 = v355 - 623195398 - ((2 * v355) & 0xB5B595F4);
  HIDWORD(v53) = v356 ^ 2;
  LODWORD(v53) = v357 ^ 0xDADACAF8;
  v358 = v53 >> 2;
  HIDWORD(v53) = v357 ^ 0xAFA;
  LODWORD(v53) = v357 ^ 0xDADAC000;
  v359 = v53 >> 13;
  HIDWORD(v53) = v357 ^ 0x1ACAFA;
  LODWORD(v53) = v357 ^ 0xDAC00000;
  v360 = v53 >> 22;
  HIDWORD(v53) = v357 ^ 0x3A;
  LODWORD(v53) = v357 ^ 0xDADACAC0;
  v361 = v53 >> 6;
  HIDWORD(v53) = v357 ^ 0x2FA;
  LODWORD(v53) = v357 ^ 0xDADAC800;
  v362 = v53 >> 11;
  v363 = v359 ^ v358;
  HIDWORD(v53) = v357 ^ 0xDACAFA;
  LODWORD(v53) = v357 ^ 0xDA000000;
  v364 = (v346 ^ 0x28E0AEA2) + 1;
  v365 = LODWORD(STACK[0x2730]) + v327 + v364 + v353 + (v336 ^ 0x3361274B ^ v357) - v362 - v360 + v361 + (v53 >> 25) + v363 + (((v357 ^ 0xDADACAFA) + v352) ^ 0x90008411) - ((2 * ((v357 ^ 0xDADACAFA) + v352)) & 0xDFFEF7DC) + 1 - 1118793575;
  v366 = (2 * v365) & 0xC8CF76DC;
  v365 += 1684519790;
  v367 = v365 - v366;
  HIDWORD(v53) = v365 ^ 2;
  LODWORD(v53) = v367 ^ 0x6467BB6C;
  v368 = v53 >> 2;
  HIDWORD(v53) = v367 ^ 0x1B6E;
  LODWORD(v53) = v367 ^ 0x6467A000;
  v369 = v53 >> 13;
  HIDWORD(v53) = v367 ^ 0x27BB6E;
  LODWORD(v53) = v367 ^ 0x64400000;
  v370 = v53 >> 22;
  HIDWORD(v53) = v367 ^ 0xEEEEEEEE;
  LODWORD(v53) = v367 ^ 0x6467BB40;
  v371 = v53 >> 6;
  HIDWORD(v53) = v367 ^ 0x36E;
  LODWORD(v53) = v367 ^ 0x6467B800;
  v372 = v368 ^ v369;
  v373 = (v53 >> 11) + v371;
  HIDWORD(v53) = v367 ^ 0x67BB6E;
  LODWORD(v53) = v367 ^ 0x64000000;
  v374 = (v367 ^ 0x6467BB6E) + (v357 ^ 0xDADACAFA) + 843110212 - ((2 * ((v367 ^ 0x6467BB6E) + (v357 ^ 0xDADACAFA))) & 0x6481AE88);
  v375 = v364 + v341 - (v373 ^ (v53 >> 25)) - (((v367 ^ 0x6467BB6E) - v352 + 843110212 - ((2 * ((v367 ^ 0x6467BB6E) - v352)) & 0x6481AE88)) ^ v374);
  v376 = (((v357 ^ 0xDADACAFA) + v352) ^ 0x90008411) - ((2 * ((v357 ^ 0xDADACAFA) + v352)) & 0xDFFEF7DC) + 1879014383 - v370 + v372 + (v374 ^ ((v346 ^ 0xB378EA33 ^ v367) + 843110212 - ((2 * (v346 ^ 0xB378EA33 ^ v367)) & 0x6481AE88))) + ((v375 - 2 * ((v375 + 771614310) & 0x285AC1CB ^ v375 & 1) - 698832848) ^ LODWORD(STACK[0x2768]));
  HIDWORD(v53) = v376;
  LODWORD(v53) = v376;
  v377 = v53 >> 2;
  HIDWORD(v53) = v376;
  LODWORD(v53) = v376;
  v378 = v377 + (v53 >> 13);
  HIDWORD(v53) = v376;
  LODWORD(v53) = v376;
  v379 = v53 >> 11;
  HIDWORD(v53) = v376;
  LODWORD(v53) = v376;
  v380 = ((v376 + (v357 ^ 0xDADACAFA)) ^ 0x4FF3FF7F) - 1341390719 + ((2 * (v376 + (v357 ^ 0xDADACAFA))) & 0x9FE7FEFE);
  v381 = v376 + (v367 ^ 0x6467BB6E);
  v382 = ((v367 ^ 0x6467BB6E ^ v376 ^ v380) - (v357 ^ 0xDADACAFA)) ^ (v352 - (((v53 >> 6) - v379) ^ __ROR4__(v376, 25)));
  v383 = ((v381 + v380 + 843110212 - ((2 * (v381 + v380)) & 0x6481AE88)) ^ v374) + (v378 ^ __ROR4__(v376, 22)) + (v154 ^ 0xDF12E0F1 ^ (v382 - ((2 * v382 - 723799700) & 0xBE25C1E2) - 914310745));
  v384 = v383 + 246986808 - ((2 * v383) & 0x1D717070);
  HIDWORD(v53) = v384 ^ 0x38383838;
  LODWORD(v53) = v384 ^ 0xEB8A000;
  v385 = v53 >> 13;
  HIDWORD(v53) = v384 ^ 0x38B838;
  LODWORD(v53) = v384 ^ 0xE800000;
  v386 = v53 >> 22;
  HIDWORD(v53) = v383;
  LODWORD(v53) = v384 ^ 0xEB8B838;
  v387 = v385 ^ (v53 >> 2);
  HIDWORD(v53) = v384 ^ 0x38;
  LODWORD(v53) = v384 ^ 0xEB8B800;
  v388 = v53 >> 6;
  HIDWORD(v53) = v384 ^ 0x38;
  LODWORD(v53) = v384 ^ 0xEB8B800;
  v389 = v388 ^ (v53 >> 11);
  HIDWORD(v53) = v384 ^ 0xB8B838;
  LODWORD(v53) = v384 ^ 0xE000000;
  v390 = (v387 ^ v386) + (v381 ^ (v376 - (v367 ^ 0x6467BB6E)));
  v391 = ((v389 - (v53 >> 25) - 623195398 - ((2 * (v389 - (v53 >> 25))) & 0xB5B595F4)) ^ v357) - v376;
  v392 = v390 + ((v391 - ((2 * v391 + 2071154584) & 0xBD85E44C) + 477927922) ^ LODWORD(STACK[0x2770]));
  v393 = (2 * v392) & 0xE42B4F64;
  v392 += 1914021810;
  v394 = v392 - v393;
  HIDWORD(v53) = v392 ^ 2;
  LODWORD(v53) = v394 ^ 0x7215A7B0;
  v395 = v53 >> 2;
  HIDWORD(v53) = v394 ^ 0x7B2;
  LODWORD(v53) = v394 ^ 0x7215A000;
  v396 = (v53 >> 13) + v395;
  HIDWORD(v53) = v394 ^ 0x15A7B2;
  LODWORD(v53) = v394 ^ 0x72000000;
  v397 = v396 + (v53 >> 22);
  HIDWORD(v53) = v394 ^ 0x32;
  LODWORD(v53) = v394 ^ 0x7215A780;
  v398 = v53 >> 6;
  HIDWORD(v53) = v394 ^ 0x7B2;
  LODWORD(v53) = v394 ^ 0x7215A000;
  v399 = v398 - (v53 >> 11);
  HIDWORD(v53) = v394 ^ 0x15A7B2;
  LODWORD(v53) = v394 ^ 0x72000000;
  v400 = (v394 ^ 0x7215A7B2) + 1;
  v401 = (v399 + (v53 >> 25)) ^ (v400 - v376 + (v384 ^ 0xEB8B838) + (v394 ^ 0x8DEA584D ^ v376));
  v402 = LODWORD(STACK[0x2760]) + (((v394 ^ 0x7215A7B2) - (v384 ^ 0xEB8B838)) ^ ((v384 ^ 0xEB8B838) + v376) ^ ((v394 ^ 0x7215A7B2) + v376) ^ v397) + 30331517 + ((v401 + 1684519790 - ((2 * v401) & 0xC8CF76DC)) ^ v367);
  v403 = v402 - 218552412 - ((2 * v402) & 0xE5F24F48);
  HIDWORD(v53) = v403 ^ 0x3927A4;
  LODWORD(v53) = v403 ^ 0xF2C00000;
  v404 = v53 >> 22;
  HIDWORD(v53) = v403 ^ 0x24;
  LODWORD(v53) = v403 ^ 0xF2F92780;
  v405 = v53 >> 6;
  HIDWORD(v53) = v403 ^ 0x7A4;
  LODWORD(v53) = v403 ^ 0xF2F92000;
  v406 = v53 >> 13;
  HIDWORD(v53) = v403 ^ 0x7A4;
  LODWORD(v53) = v403 ^ 0xF2F92000;
  v407 = v53 >> 11;
  HIDWORD(v53) = v403 ^ 0xF927A4;
  LODWORD(v53) = v403 ^ 0xF2000000;
  v408 = v376 - v407;
  v409 = v405 + (v53 >> 25);
  v410 = v403 ^ 0xF2F927A4;
  HIDWORD(v53) = v402;
  LODWORD(v53) = v403 ^ 0xF2F927A4;
  v411 = (v139 ^ 0xF0D2875F) + (v384 ^ 0xEB8B838) + (v384 ^ 0x7CAD1F8A ^ v394) + (v394 ^ 0x8DEA584D) - v406 - v404 + (v53 >> 2) + ((v408 + v409) ^ (v400 + ((2 * v384) ^ 0xE28E8F8F) + ((2 * v403) ^ 0xE5F24F48))) + 204689627 - ((2 * ((v139 ^ 0xF0D2875F) + (v384 ^ 0xEB8B838) + (v384 ^ 0x7CAD1F8A ^ v394) + (v394 ^ 0x8DEA584D) - v406 - v404 + (v53 >> 2) + ((v408 + v409) ^ (v400 + ((2 * v384) ^ 0xE28E8F8F) + ((2 * v403) ^ 0xE5F24F48))) - 1148383013)) & 0xA14C9D36);
  v412 = v411 + 3739;
  HIDWORD(v53) = -3756 - v411;
  LODWORD(v53) = (v411 + 3739) ^ 0x50A64E98;
  v413 = v53 >> 2;
  HIDWORD(v53) = (v411 + 3739) ^ 0xE9B;
  LODWORD(v53) = (v411 + 3739) ^ 0x50A64000;
  v414 = v53 >> 13;
  HIDWORD(v53) = (v411 + 3739) ^ 0x264E9B;
  LODWORD(v53) = (v411 + 3739) ^ 0x50800000;
  v415 = v53 >> 22;
  HIDWORD(v53) = (v411 + 3739) ^ 0x1B;
  LODWORD(v53) = (v411 + 3739) ^ 0x50A64E80;
  v416 = v53 >> 6;
  HIDWORD(v53) = (v411 + 3739) ^ 0x69B;
  LODWORD(v53) = (v411 + 3739) ^ 0x50A64800;
  v417 = v53 >> 11;
  v418 = (v411 + 3739) ^ 0x50A64E9B;
  v419 = v418 + (v403 ^ 0xF2F927A4) - 1813737986 - ((2 * (v418 + (v403 ^ 0xF2F927A4))) & 0x27C91BFC);
  HIDWORD(v53) = v412 ^ 0xA64E9B;
  LODWORD(v53) = v412 ^ 0x50000000;
  v420 = (v416 - ((v53 >> 25) + v417)) ^ (((v418 + (v394 ^ 0x7215A7B2)) ^ (v418 - (v403 ^ 0xF2F927A4))) + (v394 ^ 0x7215A7B2));
  v421 = (v420 + 246986808 - ((2 * v420) & 0x1D717070)) ^ v384;
  v422 = v413 + (v394 ^ 0x80EC8016 ^ v403) + v414 - v415 - (v419 ^ ((v394 ^ 0x22B3E929 ^ v412) - 1813737986 - ((2 * (v394 ^ 0x22B3E929 ^ v412)) & 0x27C91BFC))) + ((v421 - ((2 * v421 + 414182522) & 0x706F3F74) - 2070964745) ^ LODWORD(STACK[0x2738]));
  v423 = v422 + 473605061 - ((2 * v422) & 0x3875478A);
  HIDWORD(v53) = (v423 + 16) ^ 1;
  LODWORD(v53) = v423 ^ 0x1C3AA3C4;
  v424 = v53 >> 2;
  HIDWORD(v53) = v423 ^ 0x3C5;
  LODWORD(v53) = v423 ^ 0x1C3AA000;
  v425 = v424 ^ (v53 >> 13);
  HIDWORD(v53) = v423 ^ 0x3AA3C5;
  LODWORD(v53) = v423 ^ 0x1C000000;
  v426 = v425 ^ (v53 >> 22);
  HIDWORD(v53) = v423 ^ 5;
  LODWORD(v53) = v423 ^ 0x1C3AA3C0;
  v427 = v53 >> 6;
  HIDWORD(v53) = v423 ^ 0x3C5;
  LODWORD(v53) = v423 ^ 0x1C3AA000;
  v428 = v53 >> 11;
  v429 = ((2 * (v423 ^ v412)) & 0xFACCBABC ^ 0x98089ABC) + (v423 ^ v412 ^ 0xB1FAB000);
  HIDWORD(v53) = v423 ^ 0x3AA3C5;
  LODWORD(v53) = v423 ^ 0x1C000000;
  v430 = v426 ^ ((v403 ^ 0xEEC38461 ^ v423) + 43623074 + v429);
  v431 = (v423 ^ 0xE3C55C3A) - v429 - 43623073 + ((v427 + v428 + (v53 >> 25) + 1914021810 - ((2 * (v427 + v428 + (v53 >> 25))) & 0xE42B4F64)) ^ v394);
  v432 = ((v431 - ((2 * v431 + 575213370) & 0xBE629DE0) + 1884673677) ^ LODWORD(STACK[0x2778])) + ((v430 - 1813737986 - ((2 * v430) & 0x27C91BFC)) ^ v419);
  HIDWORD(v53) = v432;
  LODWORD(v53) = v432;
  v433 = v53 >> 2;
  HIDWORD(v53) = v432;
  LODWORD(v53) = v432;
  v434 = v53 >> 13;
  HIDWORD(v53) = v432;
  LODWORD(v53) = v432;
  v435 = v53 >> 22;
  HIDWORD(v53) = v432;
  LODWORD(v53) = v432;
  v436 = v53 >> 11;
  v438 = __PAIR64__(v432, __ROR4__(v432, 6));
  v437 = v436 ^ v438;
  LODWORD(v438) = v432;
  v439 = (LODWORD(STACK[0x2790]) ^ 0xFFD1F218) + (v412 ^ 0xAF59B164) + 1906386164 + (v423 ^ 0xE3C55C3A) + v429 + v434 + v433 - v435 - 966308365 + ((v410 - (v438 >> 25) + v437) ^ (v418 - 1906386162 + (v412 ^ 0xAF59B164) + 1906386164 + (v423 ^ 0xE3C55C3A)));
  v440 = v439 - 1867382784 - ((2 * v439) & 0x21641C52);
  v441 = v440 + 3625;
  HIDWORD(v438) = (v440 + 3645) ^ 1;
  LODWORD(v438) = (v440 + 3625) ^ 0x90B20E28;
  v442 = v438 >> 2;
  HIDWORD(v438) = v441 ^ 0xE29;
  LODWORD(v438) = v441 ^ 0x90B20000;
  v443 = (v438 >> 13) + v442;
  HIDWORD(v438) = v441 ^ 0x320E29;
  LODWORD(v438) = v441 ^ 0x90800000;
  v444 = v443 ^ (v438 >> 22);
  HIDWORD(v438) = v441 ^ 0x29;
  LODWORD(v438) = v441 ^ 0x90B20E00;
  v445 = v438 >> 6;
  HIDWORD(v438) = v441 ^ 0x629;
  LODWORD(v438) = v441 ^ 0x90B20800;
  v446 = v423 ^ 0x1C3AA3C5;
  v447 = v441 ^ 0x90B20E29;
  v448 = ((2 * ((v441 ^ 0x90B20E29) - v432)) & 0xF7FFBFFE) + (((v441 ^ 0x90B20E29) - v432) ^ 0x7BFFDFFF);
  v449 = ((v441 ^ 0x90B20E29) - (v423 ^ 0x1C3AA3C5)) ^ ((v441 ^ 0x90B20E29) + v432) ^ (((((LODWORD(STACK[0x27F8]) + 115 * *(STACK[0x2830] + ((111 * ((v441 >> 25) ^ 0x48)) ^ 0x9DLL))) ^ 0x8C) - 37) ^ (v441 << 7) ^ 0x59071480) + v418 + (v438 >> 11) - v445);
  v450 = (LODWORD(STACK[0x2798]) ^ 0x6A78BB4D) + v444 - (((v423 ^ 0x73775213 ^ v441) - 2080367297 + v448 + 707) ^ (v432 + (v423 ^ 0x1C3AA3C5))) - 1121345091 + ((v449 + 473605061 - ((2 * v449) & 0x3875478A)) ^ v423);
  v451 = v450 + 568693972 - ((2 * v450) & 0x43CB29A8);
  HIDWORD(v438) = v451 ^ 0x14D4;
  LODWORD(v438) = v451 ^ 0x21E58000;
  v452 = v438 >> 13;
  HIDWORD(v438) = v451 ^ 0x1E594D4;
  LODWORD(v438) = v451 ^ 0x20000000;
  v453 = v438 >> 25;
  HIDWORD(v438) = v451 ^ 0x4D4;
  LODWORD(v438) = v451 ^ 0x21E59000;
  v454 = v438 >> 11;
  HIDWORD(v438) = v451 ^ 0x14;
  LODWORD(v438) = v451 ^ 0x21E594C0;
  v455 = (v446 - v453 - (v454 ^ (v438 >> 6))) ^ ((v451 ^ 0xDE1A6B2B) + (v441 ^ 0xB1579AFD ^ v451) + 1);
  HIDWORD(v438) = v450;
  LODWORD(v438) = v451 ^ 0x21E594D4;
  v456 = v452 + (v438 >> 2);
  HIDWORD(v438) = v451 ^ 0x2594D4;
  LODWORD(v438) = v451 ^ 0x21C00000;
  v457 = ((2 * ((v451 ^ 0x21E594D4) - v447)) & 0x7D3FFFE4) + (((v451 ^ 0x21E594D4) - v447) ^ 0x3E9FFFF2);
  v458 = ((v455 - ((2 * v455 + 1700594874) & 0x435B6A86) + 1415329696) ^ LODWORD(STACK[0x2750])) + (v456 ^ (v438 >> 22) ^ ((v432 ^ 0xDE1A6B2B ^ v451) - v448 + 1029693454 + v457));
  v459 = v458 - 714189072 - ((2 * v458) & 0xAADCADE0);
  HIDWORD(v438) = v459 ^ 0x2E56F0;
  LODWORD(v438) = v459 ^ 0xD5400000;
  v460 = v438 >> 22;
  HIDWORD(v438) = v459 ^ 0x16F0;
  LODWORD(v438) = v459 ^ 0xD56E4000;
  v461 = v438 >> 13;
  v462 = v459 ^ 0xD56E56F0;
  HIDWORD(v438) = v458;
  LODWORD(v438) = v459 ^ 0xD56E56F0;
  v463 = ((v438 >> 2) + v461 - v460) ^ (v447 + 1050673138 + (v451 ^ 0x21E594D4) - v457 + 2 * (v459 ^ 0xD56E56F0));
  HIDWORD(v438) = v459 ^ 0x6F0;
  LODWORD(v438) = v459 ^ 0xD56E5000;
  v464 = v438 >> 11;
  HIDWORD(v438) = v459 ^ 0x30;
  LODWORD(v438) = v459 ^ 0xD56E56C0;
  v465 = v464 ^ (v438 >> 6);
  HIDWORD(v438) = v459 ^ 0x16E56F0;
  LODWORD(v438) = v459 ^ 0xD4000000;
  v466 = v432 - (v451 ^ 0xF48BC224 ^ v459) + (v459 ^ 0xD56E56F0) + (v465 ^ (v438 >> 25));
  v467 = ((v466 - ((2 * v466 - 908403762) & 0xEBE63B50) + 1524665231) ^ LODWORD(STACK[0x27A0])) + v463;
  v468 = v467 + 922351616 - ((2 * v467) & 0x6DF3F7E2);
  v469 = v468 + 1009;
  HIDWORD(v438) = (v468 + 1009) ^ 0xF9FBF1;
  LODWORD(v438) = (v468 + 1009) ^ 0x36000000;
  v470 = v438 >> 25;
  HIDWORD(v438) = (v468 + 1009) ^ 0x3F1;
  LODWORD(v438) = (v468 + 1009) ^ 0x36F9F800;
  v471 = v438 >> 11;
  HIDWORD(v438) = (v468 + 1009) ^ 0xFFFFFFF1;
  LODWORD(v438) = (v468 + 1009) ^ 0x36F9FBC0;
  v472 = (v471 + (v438 >> 6)) ^ v470;
  v473 = (v468 + 1009) ^ 0x36F9FBF1;
  v474 = ((2 * (v473 - (v459 ^ 0xD56E56F0))) & 0x93FBDFEE) + ((v473 - (v459 ^ 0xD56E56F0)) ^ 0xC9FDEFF7);
  v475 = (v447 + (v451 ^ 0xDE1A6B2B) + (v451 ^ 0xE8E390DA ^ (v468 + 1009)) + v472 + v474 + 1288098975) ^ ((v139 ^ 0xF2D78A0) + (LODWORD(STACK[0x2748]) ^ (LODWORD(STACK[0x2738]) >> 3) ^ LODWORD(STACK[0x2740]) ^ 0x1706F3F7) + ((LODWORD(STACK[0x2750]) >> 10) ^ 0xFFD79492) + LODWORD(STACK[0x2758]) - LODWORD(STACK[0x2780]) + 1);
  HIDWORD(v438) = (v468 + 1009) ^ 0x39FBF1;
  LODWORD(v438) = (v468 + 1009) ^ 0x36C00000;
  v476 = v438 >> 22;
  HIDWORD(v438) = (v468 + 1009) ^ 0x1BF1;
  LODWORD(v438) = (v468 + 1009) ^ 0x36F9E000;
  v477 = v438 >> 13;
  HIDWORD(v438) = (v468 + 1013) ^ 1;
  LODWORD(v438) = (v468 + 1009) ^ 0x36F9FBF0;
  v478 = 2 * (v451 ^ 0xDE1A6B2B) - 906104841 + (v459 ^ 0xD56E56F0) + v473 + (v438 >> 2) + v477 + v476 - v474 + ((v475 + 254638240 - ((2 * v475) & 0x1E5AF140)) ^ v139) + 2;
  v479 = v478 + 1468225536 - ((2 * v478) & 0xAF06B3DE);
  v480 = v479 + 495;
  HIDWORD(v438) = -516 - v479;
  LODWORD(v438) = (v479 + 495) ^ 0x578359EC;
  v481 = v438 >> 2;
  HIDWORD(v438) = v480 ^ 0x19EF;
  LODWORD(v438) = v480 ^ 0x57834000;
  v482 = (v438 >> 13) + v481;
  HIDWORD(v438) = v480 ^ 0x359EF;
  LODWORD(v438) = v480 ^ 0x57800000;
  v483 = v482 ^ (v438 >> 22);
  HIDWORD(v438) = v480 ^ 0xFFFFFFEF;
  LODWORD(v438) = v480 ^ 0x578359C0;
  v484 = v438 >> 6;
  HIDWORD(v438) = v480 ^ 0x1EF;
  LODWORD(v438) = v480 ^ 0x57835800;
  v485 = (v438 >> 11) + v484;
  HIDWORD(v438) = v480 ^ 0x18359EF;
  LODWORD(v438) = v480 ^ 0x56000000;
  v486 = v459 ^ 0x82ED0F1F ^ v480;
  v480 ^= 0x578359EFu;
  v487 = v469 ^ v459;
  v488 = (v485 + (v438 >> 25)) ^ ((v459 ^ 0x2A91A90F) + v473 + v480 + v486 + 1);
  v489 = LODWORD(STACK[0x2810]) - LODWORD(STACK[0x27D0]) - LODWORD(STACK[0x27B8]) + ((LODWORD(STACK[0x2778]) >> 3) ^ 0xBE629DE) + ((LODWORD(STACK[0x27A0]) >> 10) ^ 0xFFE28338) - (LODWORD(STACK[0x2838]) ^ LODWORD(STACK[0x27B0])) + ((2 * v487) ^ 0xC72F5A02) + v483 - 354925207 + ((v488 + 568693972 - ((2 * v488) & 0x43CB29A8)) ^ v451);
  LODWORD(STACK[0x27D8]) = v489 - 1710878804 - ((2 * v489) & 0x340C1F58);
  LODWORD(STACK[0x2810]) = v473 - LODWORD(STACK[0x2818]) + 297889059 - ((2 * (v473 - LODWORD(STACK[0x2818]))) & 0x2382DA46);
  LODWORD(STACK[0x2880]) = v462 + (LODWORD(STACK[0x2880]) ^ 0xCA884704) - 897038588 - ((2 * (v462 + (LODWORD(STACK[0x2880]) ^ 0xCA884704))) & 0x95108E08);
  LODWORD(STACK[0x27E0]) = v480 - LODWORD(STACK[0x2840]) - 1287682533 - ((2 * (v480 - LODWORD(STACK[0x2840]))) & 0x667F0C36);
  return (*(v18 + 8 * SLODWORD(STACK[0x2788])))();
}

uint64_t sub_244AA2B54()
{
  v2 = LODWORD(STACK[0x26A0]) ^ 0x58u;
  v3 = ((LODWORD(STACK[0x26A0]) >> 8) ^ 0xFFFFFFC9) - ((((LODWORD(STACK[0x26A0]) >> 8) ^ 0xFFFFFFC9) << (v0 ^ 0x9E)) & 0xFFFFFF8E) + 71;
  v4 = HIBYTE(LODWORD(STACK[0x26A0]));
  LODWORD(STACK[0x26A0]) = v4 ^ 0x72D9C96D;
  v5 = *(v1 + 8 * ((299 * (v0 != 407339879)) ^ (v0 - 1856318028)));
  LODWORD(STACK[0x27D0]) = 89;
  LODWORD(STACK[0x27B8]) = 71;
  LODWORD(STACK[0x2878]) = 640521066;
  LODWORD(STACK[0x27B0]) = 71;
  LODWORD(STACK[0x27A0]) = 71;
  LODWORD(STACK[0x2798]) = 71;
  LODWORD(STACK[0x2790]) = 71;
  LODWORD(STACK[0x2780]) = 71;
  LODWORD(STACK[0x2838]) = 71;
  LODWORD(STACK[0x2840]) = 71;
  LODWORD(STACK[0x2818]) = 71;
  return v5(71, 71, v4 ^ 0x35u, 71, v2, v3, 71, 71);
}

uint64_t sub_244AA2EA0()
{
  LODWORD(STACK[0x23B8]) += 56;
  v2 = *(v1 + 8 * (v0 - 16157));
  LODWORD(STACK[0x2470]) = STACK[0x212C];
  LODWORD(STACK[0x2878]) = STACK[0x2130];
  return v2();
}

uint64_t sub_244AA2EE8()
{
  v2 = HIWORD(LODWORD(STACK[0x27D8])) ^ 6;
  LODWORD(STACK[0x1E28]) = (2 * v2) & 0x1FFAC;
  v3 = STACK[0x27E0];
  v4 = HIWORD(LODWORD(STACK[0x27E0])) ^ 0x3F;
  LODWORD(STACK[0x1D58]) = (2 * v4) & 0x1FFEA;
  v5 = HIBYTE(v3) ^ 0xFFFFFFB3;
  LODWORD(STACK[0x1E20]) = v2 - 42;
  v6 = (v3 >> 8) ^ 0xFFFFFF86;
  LODWORD(STACK[0x2708]) = v6 & 0x7B ^ (v3 >> 8) & 1;
  LODWORD(STACK[0x26D8]) = v6 + 122;
  v7 = STACK[0x2810];
  LODWORD(STACK[0x1D50]) = v4 - 11;
  LODWORD(STACK[0x26D0]) = (2 * v5) & 0x72;
  LODWORD(STACK[0x26C8]) = v5 + 57;
  v8 = (v7 >> 8) ^ 0x6D;
  v9 = HIBYTE(v7) ^ 0x11;
  LODWORD(STACK[0x2738]) = v9;
  v10 = v9 & 0x3C ^ HIBYTE(v7) & 8;
  v11 = HIWORD(v7) ^ 0xFFFFFFC1;
  v12 = (LODWORD(STACK[0x2880]) >> 8) ^ 0x47;
  v13 = HIBYTE(LODWORD(STACK[0x2880])) ^ 0xFFFFFFCA;
  LODWORD(STACK[0x26C0]) = (2 * v12) & 0xFFFFFF9F;
  LODWORD(STACK[0x26B8]) = v12 + 79;
  LODWORD(STACK[0x1E18]) = v13 + 61;
  v14 = STACK[0x4C4];
  LODWORD(STACK[0x26A0]) = LODWORD(STACK[0x4C4]) ^ 0x5508E9;
  STACK[0x27D0] = LODWORD(STACK[0x1D78]) ^ 0x265B4004u;
  STACK[0x2788] = LODWORD(STACK[0x1D70]) ^ 0x95F1C88C;
  v15 = LODWORD(STACK[0x338]);
  LODWORD(STACK[0x26B0]) = ~(2 * v10);
  STACK[0x2848] = v15 ^ 0xCDu;
  v16 = LODWORD(STACK[0x330]);
  LODWORD(STACK[0x1E10]) = (2 * v13) & 0x7A;
  STACK[0x2878] = v16 ^ 0x20u;
  LODWORD(STACK[0x2838]) = v14 ^ 0x175508E9;
  LODWORD(STACK[0x26A8]) = LODWORD(STACK[0x1D74]) ^ 0x14;
  v17 = *(v1 + 8 * v0);
  STACK[0x2840] = LODWORD(STACK[0x33C]) ^ 0xCu;
  LODWORD(STACK[0x27B8]) = LODWORD(STACK[0x24E0]) ^ LODWORD(STACK[0x24E8]);
  LODWORD(STACK[0x2760]) = v8;
  LODWORD(STACK[0x1E00]) = ~(2 * v8) | 0x69;
  LODWORD(STACK[0x1D48]) = v11;
  LODWORD(STACK[0x1CC8]) = ~(2 * v11) | 0x53;
  return v17();
}

uint64_t sub_244AA3174()
{
  v5 = *(&off_278E1E490 + v2) - 12;
  STACK[0x2538] = v5;
  LODWORD(v5) = (*(v5 + 2 * (v3 ^ 0xCEDCF06C)) - 2060) ^ 0x24D0;
  LODWORD(v5) = v5 - 178803284 - ((2 * v5) & 0x15B58);
  LODWORD(STACK[0x27A0]) = 3 * v1;
  LODWORD(v5) = v5 ^ 0xF557ADAC ^ (2 * (((3 * v1) ^ 0xF557A94F ^ v5) & LODWORD(STACK[0x26A0])));
  LODWORD(v5) = ((v5 & STACK[0x2788]) >> STACK[0x2878]) | ((v5 & STACK[0x27D0]) << STACK[0x2848]);
  v6 = v3 ^ (2 * ((v3 ^ 0x4EDCF094) & STACK[0x2838])) ^ 0x94u;
  v7 = ((v6 & STACK[0x26A8]) >> STACK[0x2840]) ^ LODWORD(STACK[0x27B8]);
  *(&STACK[0x5870] + ((*(STACK[0x2858] + (((v6 << STACK[0x2848]) + 71) ^ 0x39)) ^ ((v7 ^ 0x62) - ((2 * v7) & 0x30) + 24)) ^ 0x61u)) = LODWORD(STACK[0x27B8]) ^ 0xEC378E28 ^ (v5 - 1579847176 - ((2 * v5) & 0x43AAE3F0));
  return (*(v4 + 8 * (v0 ^ (8 * ((((v3 ^ 0xCEDCF094) - 824381292 - ((2 * (v3 ^ 0xCEDCF094) + 2) & 0x9DB9E128) + 1) ^ 0xCEDCF000) < 0x100)))))();
}

uint64_t sub_244AA3308@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x1E08]) = v3 ^ 0x21;
  v7 = (v3 ^ 0x21) - 37;
  LODWORD(STACK[0x2710]) = v7;
  v8 = (LODWORD(STACK[0x27D8]) | ((v2 ^ 0x79) << 8) | (((v1 ^ 0x9B) + a1) << 24)) + 1694498816;
  v9 = STACK[0x27D8] & 0xFF0000;
  LODWORD(STACK[0x1DF8]) = v8;
  v10 = ((v8 | v9) ^ 0x600AC) - 554287870 - ((2 * ((v8 | v9) ^ 0x600AC)) & 0xBDEC7A04);
  v11 = STACK[0x2880];
  v12 = (STACK[0x2880] & 0xFF00FFFF | (v7 << 16)) ^ 0xCA004704;
  v13 = v12 - 321657521 - 2 * (v12 & 0x6CD3E55F ^ STACK[0x2880] & 0x10);
  v14 = 2 * LODWORD(STACK[0x4F4]);
  LODWORD(STACK[0x1ED0]) = v14;
  v15 = STACK[0x1D78];
  v16 = STACK[0x1D78];
  LODWORD(STACK[0x1D78]) = STACK[0x1D78];
  v17 = LODWORD(STACK[0x334]) ^ 0xC6u;
  v18 = STACK[0x2840];
  v19 = STACK[0x1D70];
  v20 = ((((v14 & 0x970601F2 ^ 0xCD83011B) & STACK[0x2788]) >> STACK[0x2840]) | (((v15 ^ 0x6030000) & (v14 & 0x970601F2 ^ 0xCD83011B)) << (LODWORD(STACK[0x334]) ^ 0xC6u))) ^ ((((v16 ^ 0x26030000) & (v14 & 0x7D0601F2 ^ 0xF283011B)) << (LODWORD(STACK[0x334]) ^ 0xC6u)) + (((v14 & 0x7D0601F2 ^ 0xF283011B) & (LODWORD(STACK[0x1D70]) ^ 0x95810088)) >> STACK[0x2878]));
  v21 = v13;
  LODWORD(STACK[0x2780]) = v13;
  v22 = (v13 ^ 0xECD3E54F) - ((2 * (v13 ^ 0xECD3E54F)) & 0xD227AF76) - 0x33694EC496EC2845;
  v23 = *(&STACK[0x5870] + (BYTE2(v22) ^ 0x13));
  HIDWORD(v25) = v23 ^ 0x76B2;
  LODWORD(v25) = v23 ^ 0x11A00000;
  v24 = v25 >> 16;
  v26 = *(&STACK[0x5870] + (BYTE1(v22) ^ 0xD7));
  v27 = *(STACK[0x2850] + (((HIBYTE(v26) ^ 0x11) - 34) ^ 0x68));
  HIDWORD(v25) = v27 ^ 0x1D;
  LODWORD(v25) = v27 << 24;
  v28 = v25 >> 31;
  HIDWORD(v25) = v28 ^ 1;
  LODWORD(v25) = (v28 ^ 0xFFFFFFE7) << 24;
  LODWORD(v22) = *(&STACK[0x5870] + ((4 * (v22 >> 24)) ^ 0x3325AC4EDA4));
  v29 = (v25 >> 26) | (v26 << 8);
  HIDWORD(v25) = v22 ^ 0xB2;
  LODWORD(v25) = v22 ^ 0x11A07600;
  v30 = v20 ^ *(&STACK[0x5870] + (v11 ^ 4u)) ^ v24 ^ (v25 >> 8) ^ v29;
  v31 = STACK[0x24E0];
  LODWORD(STACK[0x2770]) = v10;
  LODWORD(v22) = ((v30 ^ v31 ^ 0x1003B54A) - 554287870 - 2 * ((v30 ^ v31 ^ 0x1003B54A) & 0x5EF63D03 ^ (v30 ^ v31) & 1)) ^ v10;
  LODWORD(v22) = (v22 - 999449517 - ((2 * v22) & 0x88DB38A6)) ^ LODWORD(STACK[0x2134]);
  v32 = STACK[0x2134];
  v33 = STACK[0x24E8];
  LODWORD(v22) = LODWORD(STACK[0x27E0]) ^ LODWORD(STACK[0x24E8]) ^ (v22 - 40372070 - ((2 * v22) & 0xFB2FF134));
  v34 = v30 ^ v10;
  LODWORD(STACK[0x2778]) = v30 ^ v10;
  v35 = STACK[0x1E98];
  v36 = v22;
  LODWORD(STACK[0x25B0]) = v22;
  v37 = ((v22 ^ v35 ^ 0x41016010) + 297889059 - 2 * ((v22 ^ v35 ^ 0x41016010) & 0x11C16D2B ^ (v22 ^ v35) & 8)) ^ LODWORD(STACK[0x2810]);
  v38 = STACK[0x24D4];
  v39 = STACK[0x24D0];
  LODWORD(STACK[0x24D4]) = STACK[0x24D4];
  LODWORD(STACK[0x20D0]) = v39 ^ v38;
  v40 = v39 ^ v38 ^ (v37 + 818286253 - ((2 * v37) & 0x618C1D5A));
  LODWORD(v22) = ((v40 ^ v21 ^ 0x2E5EAC42) - 1579847176 - 2 * ((v40 ^ v21 ^ 0x2E5EAC42) & 0x21D571FD ^ (v40 ^ v21) & 5)) ^ v31;
  LODWORD(v22) = (v22 - 40372070 - ((2 * v22) & 0xFB2FF134)) ^ v33;
  v41 = v32 ^ v35 ^ (v22 - 999449517 - ((2 * v22) & 0x88DB38A6));
  v42 = 2 * LODWORD(STACK[0x4C4]);
  v43 = STACK[0x1D60];
  LODWORD(v22) = v42 & 0x99D426EA ^ 0xC46A13B7;
  v44 = (v22 & (LODWORD(STACK[0x1D60]) ^ 0x10282654)) << STACK[0x2848];
  v45 = v32 ^ v35 ^ 0xB53E9B0B ^ v40;
  LODWORD(STACK[0x2718]) = v45;
  v46 = LODWORD(STACK[0x1D74]) ^ 0x95C80114;
  v47 = v42;
  LODWORD(STACK[0x1D70]) = v19;
  v48 = v43 ^ 0x1029EE54u;
  LODWORD(STACK[0x1D60]) = v43;
  STACK[0x27D8] = v48;
  v49 = ((((v42 & 0xF5D426EA ^ 0xDE6A13B7) & v48) << v17) | (((v42 & 0xF5D426EA ^ 0xDE6A13B7) & (v19 ^ 0x95F0008C)) >> v18)) ^ (v44 | ((v22 & v46) >> v18));
  v50 = (v41 ^ 0xF23EE60B) - ((2 * (v41 ^ 0xF23EE60B)) & 0x1D912C8D2) - 0x2798BA9E13769B97;
  v51 = v41;
  LODWORD(STACK[0x2700]) = v41;
  v52 = *(&STACK[0x5870] + ((4 * (v50 >> 24)) ^ 0x3619D1587B0));
  HIDWORD(v25) = v52 ^ 0xB2;
  LODWORD(v25) = v52 ^ 0x11A07600;
  v53 = v25 >> 8;
  v54 = *(&STACK[0x5870] + (BYTE2(v50) ^ 0x89));
  HIDWORD(v25) = v54 ^ 0x76B2;
  LODWORD(v25) = v54 ^ 0x11A00000;
  LODWORD(v50) = *(&STACK[0x5870] + (BYTE1(v50) ^ 0x64));
  v55 = *(&STACK[0x5870] + (v41 ^ 0xBu)) ^ (v49 + 295728818 - ((2 * v49) & 0x2340ED64)) ^ (v25 >> 16) ^ v53;
  HIDWORD(v25) = v50 ^ 0xA076B2;
  LODWORD(v25) = v50 ^ 0x11111111;
  LODWORD(v50) = v34 ^ v32 ^ v35;
  v56 = v32 ^ v35;
  LODWORD(STACK[0x1EF0]) = v32 ^ v35;
  LODWORD(v50) = v50 ^ ((v55 ^ (v25 >> 24)) + 911440472 - ((2 * (v55 ^ (v25 >> 24))) & 0x6CA6F4B0));
  v57 = v50 ^ v38 ^ v36;
  v58 = v50;
  LODWORD(STACK[0x2510]) = v50;
  v59 = v32;
  LODWORD(STACK[0x2134]) = v32;
  LODWORD(STACK[0x24D0]) = v39;
  LODWORD(v50) = ((v32 ^ 0xDAFFAAF5 ^ v57) + 818286253 - ((2 * (v32 ^ 0xDAFFAAF5 ^ v57)) & 0x618C1D5A)) ^ v39;
  LODWORD(v50) = v45 ^ (v50 + 1105242206 - ((2 * v50) & 0x83C150BC));
  v60 = v57 ^ v39;
  LODWORD(STACK[0x2748]) = v57 ^ v39;
  LODWORD(STACK[0x24E0]) = v31;
  v61 = v33;
  LODWORD(STACK[0x2680]) = v31 ^ v33;
  LODWORD(v44) = v31 ^ v33 ^ (v50 - 1579847176 - ((2 * v50) & 0x43AAE3F0));
  LODWORD(v50) = v44 ^ 0x2D600524;
  LODWORD(STACK[0x27B0]) = v44 ^ 0x2D600524;
  LODWORD(v44) = ((v44 ^ v51 ^ 0xFA91E91) - 1579847176 - ((2 * (v44 ^ v51 ^ 0xFA91E91)) & 0x43AAE3F0)) ^ v31;
  LODWORD(v44) = (v44 - 40372070 - ((2 * v44) & 0xFB2FF134)) ^ v33;
  v62 = v35;
  LODWORD(v44) = (v44 - 999449517 - ((2 * v44) & 0x88DB38A6)) ^ v35;
  v63 = v44 ^ v59;
  v64 = v50 ^ v35;
  LODWORD(STACK[0x2758]) = v50 ^ v35;
  v65 = STACK[0x1D78];
  v66 = STACK[0x1D74];
  v67 = STACK[0x2848];
  v68 = STACK[0x2878];
  v69 = (((LODWORD(STACK[0x1D78]) ^ 0x22194000) & (STACK[0x1ED0] & 0x32196612 ^ 0x1B15B70Bu)) << STACK[0x2848]) ^ (((LODWORD(STACK[0x1D74]) ^ 0x13090110) & (STACK[0x1ED0] & 0x32196612 ^ 0x1B15B70Bu)) >> STACK[0x2878]);
  v70 = STACK[0x1ED0] & 0x10196612 ^ 0x815B70B;
  STACK[0x2818] = v17;
  LOBYTE(v48) = v63;
  LODWORD(STACK[0x2768]) = v63;
  v71 = (v63 ^ 0xF23EE60B) - ((2 * (v63 ^ 0xF23EE60B)) & 0xC302DC9ALL) - 0x22BDEEEA9E7E91B3;
  v72 = *(&STACK[0x5870] + ((4 * (v71 >> 24)) ^ 0x37508445584));
  v73 = ((v70 & (v19 ^ 0x1011C008u)) >> v18) ^ ((v70 & (v43 ^ 0x1009E610u)) << v17);
  HIDWORD(v25) = v72 ^ 0xB2;
  LODWORD(v25) = v72 ^ 0x11A07600;
  v74 = (v25 >> 8) ^ v69;
  v75 = *(&STACK[0x5870] + (BYTE1(v71) ^ 0x6ELL));
  HIDWORD(v25) = v75 ^ 0xA076B2;
  LODWORD(v25) = v75 ^ 0x11111111;
  v76 = v25 >> 24;
  LODWORD(v71) = *(&STACK[0x5870] + (BYTE2(v71) ^ 0x81));
  HIDWORD(v25) = v71 ^ 0x76B2;
  LODWORD(v25) = v71 ^ 0x11A00000;
  v77 = *(&STACK[0x5870] + (v48 ^ 0xBu)) ^ v73 ^ v76 ^ (v25 >> 16) ^ (v74 + 295728818 - ((2 * v74) & 0x2340ED64));
  v78 = v62;
  v79 = v58 ^ v62 ^ (v77 - 230758901 - ((2 * v77) & 0xE47DCC16));
  LODWORD(STACK[0x2728]) = v79;
  LODWORD(STACK[0x1EE0]) = v56 ^ v61;
  v80 = STACK[0x24E0];
  v81 = ((v60 ^ v79 ^ v64 ^ 0x63BDDA0E) - 1579847176 - ((2 * (v60 ^ v79 ^ v64 ^ 0x63BDDA0E)) & 0x43AAE3F0)) ^ LODWORD(STACK[0x24E0]);
  v82 = v56 ^ v61 ^ 0xBD5157E3 ^ (v81 - ((2 * v81) & 0xED2BAA42) + 1989530913);
  v83 = v44 ^ (v82 - ((2 * v82) & 0x896FC054) + 1152901162);
  LODWORD(STACK[0x1EC8]) = v42;
  LODWORD(STACK[0x1EC0]) = v65 ^ 0x64B4004;
  v84 = v66 ^ 0x97C90914;
  STACK[0x2790] = v84;
  v85 = (((v47 & 0xB94B4E9E ^ 0x74AFA7DD) & STACK[0x27D0]) << v17) + (((v47 & 0xB94B4E9E ^ 0x74AFA7DD) & (v66 ^ 0x97C90914)) >> v68);
  LODWORD(STACK[0x2750]) = v83;
  LODWORD(v44) = *(STACK[0x2850] + (((HIBYTE(v83) ^ 0x72) - 34) ^ 0x68));
  HIDWORD(v25) = v44 ^ 0x1D;
  LODWORD(v25) = v44 << 24;
  LODWORD(v44) = v25 >> 31;
  HIDWORD(v25) = v44 ^ 1;
  LODWORD(v25) = (v44 ^ 0xFFFFFFE7) << 24;
  LODWORD(v44) = *(&STACK[0x5870] + (v25 >> 26));
  HIDWORD(v25) = v44 ^ 0xB2;
  LODWORD(v25) = v44 ^ 0x11A07600;
  LODWORD(v71) = v25 >> 8;
  LODWORD(v44) = v83 ^ 0xB6890621;
  v86 = *(&STACK[0x5870] + (((v83 ^ 0xB6890621) >> 16) ^ 0x6Du));
  HIDWORD(v25) = v86 ^ 0x76B2;
  LODWORD(v25) = v86 ^ 0x11A00000;
  v87 = v85 ^ ((((v47 & 0xD4B4E9E ^ 0xAAFA7DD) & (v65 ^ 0x64B4004u)) << v67) + (((v47 & 0xD4B4E9E ^ 0xAAFA7DD) & v84) >> v68)) ^ (v25 >> 16);
  HIDWORD(v25) = *(STACK[0x2860] + (((BYTE1(v83) ^ 0x9A) - 34) ^ 0x5DLL));
  LODWORD(v25) = (HIDWORD(v25) ^ 0xFFFFFF9F) << 24;
  v88 = v25 >> 28;
  HIDWORD(v25) = ~v88;
  LODWORD(v25) = (v88 ^ 0x40) << 24;
  v89 = *(&STACK[0x5870] + (v25 >> 26));
  HIDWORD(v25) = v89 ^ 0xA076B2;
  LODWORD(v25) = v89 ^ 0x11111111;
  v90 = v60 ^ v79 ^ 0xF561DE8B;
  v91 = LODWORD(STACK[0x27B0]) ^ v90;
  LODWORD(STACK[0x2720]) = v91;
  LODWORD(v84) = v78 ^ LODWORD(STACK[0x20D0]) ^ v90;
  LODWORD(STACK[0x2740]) = v84;
  v92 = *(&STACK[0x5870] + (v83 ^ 0x72u)) ^ v79 ^ 0x669F1F4D ^ ((v87 ^ v71 ^ (v25 >> 24)) + 295728818 - ((2 * (v87 ^ v71 ^ (v25 >> 24))) & 0x2340ED64));
  v93 = ((v84 ^ 0xB460BE9B) - 1579847176 - ((2 * (v84 ^ 0xB460BE9B)) & 0x43AAE3F0)) ^ v80;
  v94 = v80;
  v95 = (v93 - 40372070 - ((2 * v93) & 0xFB2FF134)) ^ v61;
  v96 = STACK[0x1ED0];
  v97 = STACK[0x2840];
  v98 = (((v96 & 0xD8A2647A ^ 0x24713657) & (LODWORD(STACK[0x1D60]) ^ 0x10216654)) << v67) ^ (((v96 & 0xD8A2647A ^ 0x24713657) & (LODWORD(STACK[0x1D70]) ^ 0x94F1400C)) >> STACK[0x2840]) ^ ((((v96 & 0x8CA2647A ^ 0x4A713657) & (LODWORD(STACK[0x1D60]) ^ 0x216654)) << v67) | (((v96 & 0x8CA2647A ^ 0x4A713657) & (LODWORD(STACK[0x1D70]) ^ 0x84F1400C)) >> v68));
  LODWORD(v84) = v92;
  LODWORD(STACK[0x26F8]) = v92;
  v99 = (v95 - ((2 * v95) & 0xF70201EC) - 75431690) ^ v92;
  LODWORD(STACK[0x2730]) = v99 ^ 0x264AFDFD;
  v100 = STACK[0x24D0];
  LODWORD(v71) = v99 ^ 0x264AFDFD ^ LODWORD(STACK[0x24D0]) ^ v91;
  v101 = v71 ^ v44 ^ 0x11803853;
  LODWORD(v44) = *(&STACK[0x5870] + (((v101 ^ LODWORD(STACK[0x24D0])) >> 16) ^ 0x7Bu));
  HIDWORD(v25) = v44 ^ 0x76B2;
  LODWORD(v25) = v44 ^ 0x11A00000;
  LODWORD(v44) = v25 >> 16;
  v102 = *(&STACK[0x5870] + ((*(STACK[0x2870] + ((((v101 ^ v100) >> 22) & 0xFC | ((v101 ^ v100) >> 30)) ^ 0xBCLL)) ^ 0xC4) - 73));
  LODWORD(STACK[0x1EE8]) = 295728640;
  HIDWORD(v25) = v102 ^ 0xB2;
  LODWORD(v25) = v102 ^ 0x11A07600;
  LODWORD(STACK[0x2798]) = v101 ^ v100;
  v103 = *(&STACK[0x5870] + (*(STACK[0x2858] + (((((v101 ^ v100) >> 8) ^ 0x5D) + 71) ^ 0x39)) ^ 0x79));
  LODWORD(v48) = *(&STACK[0x5870] + ((v101 ^ v100) ^ 0x78u)) ^ v78 ^ ((v44 ^ v98) + 295728818 - ((2 * (v44 ^ v98)) & 0x2340ED64)) ^ v84 ^ (v25 >> 8) ^ (*(STACK[0x2858] + (((HIBYTE(v103) ^ 0x11) + 71) ^ 0x39)) ^ 0xDD | (v103 << 8));
  LODWORD(STACK[0x25D0]) = v48;
  v104 = v61;
  LODWORD(STACK[0x24E8]) = v61;
  LODWORD(v44) = (v99 ^ v104 ^ 0xFA91E91) - 999449517 - 2 * ((v99 ^ v104 ^ 0xFA91E91) & 0x446D9C5F ^ (v99 ^ v104) & 0xC);
  v105 = STACK[0x2134];
  LODWORD(v44) = ((v44 ^ v105) + 1464117319 - ((2 * (v44 ^ v105)) & 0xAE89508E)) ^ v48 ^ 0xCB31AB1;
  LODWORD(STACK[0x2648]) = v94 ^ v78;
  LODWORD(v44) = v94 ^ v78 ^ 0xEDC39218 ^ (v44 - 230758901 - ((2 * v44) & 0xE47DCC16));
  v106 = STACK[0x24D4];
  LODWORD(STACK[0x26F0]) = v71 ^ LODWORD(STACK[0x24D4]);
  LODWORD(v71) = v44 ^ ((v104 ^ 0xBF4A4642 ^ v71 ^ v106) + 1276568544 - ((2 * (v104 ^ 0xBF4A4642 ^ v71 ^ v106)) & 0x982DC7C0));
  v107 = v44;
  LODWORD(STACK[0x2448]) = v44;
  LODWORD(v71) = (v71 - 230758901 - ((2 * v71) & 0xE47DCC16)) ^ v78;
  LODWORD(STACK[0x2630]) = v94 ^ v105;
  v108 = v94 ^ v105 ^ (v71 - 999449517 - ((2 * v71) & 0x88DB38A6));
  v109 = v108 ^ v101;
  LODWORD(v68) = v105;
  v110 = ((v105 ^ 0x3005BE7E ^ v108 ^ v101) - 230758901 - ((2 * (v105 ^ 0x3005BE7E ^ v108 ^ v101)) & 0xE47DCC16)) ^ v78;
  LOBYTE(v61) = STACK[0x2818];
  LODWORD(v18) = ((((STACK[0x1EC8] & 0x5AB2814C ^ 0x27FB41E6) & STACK[0x2790]) >> v97) | (((STACK[0x1EC8] & 0x5AB2814C ^ 0x27FB41E6) & STACK[0x27D0]) << v61)) ^ ((((STACK[0x1EC8] & 0x42B2814C ^ 0x23FB41E6) & (LODWORD(STACK[0x1D74]) ^ 0x3C90104u)) >> v97) | (((STACK[0x1EC8] & 0x42B2814C ^ 0x23FB41E6) & STACK[0x27D8]) << v61));
  LODWORD(v44) = v106;
  v111 = (v110 - 1030928115 - ((2 * v110) & 0x851A921A)) ^ v106;
  LODWORD(STACK[0x26E8]) = v111;
  v112 = (v111 ^ 0xA4) - ((2 * (v111 ^ 0xA4)) & 0x171EE758CLL) - 0x32DFA23D4708C53ALL;
  v113 = *(&STACK[0x5870] + ((4 * (v112 >> 24)) ^ 0x33481770AE0));
  HIDWORD(v25) = v113 ^ 0xB2;
  LODWORD(v25) = v113 ^ 0x11A07600;
  v114 = v25 >> 8;
  v115 = *(&STACK[0x5870] + (BYTE2(v112) ^ 0xF7));
  HIDWORD(v25) = v115 ^ 0x76B2;
  LODWORD(v25) = v115 ^ 0x11A00000;
  LODWORD(v18) = v114 ^ v18 ^ (v25 >> 16);
  LODWORD(v112) = *(&STACK[0x5870] + (BYTE1(v112) ^ 0x3ALL));
  HIDWORD(v25) = v112 ^ 0xA076B2;
  LODWORD(v25) = v112 ^ 0x11111111;
  LODWORD(v112) = ((v18 ^ (v25 >> 24)) + 295728818 - ((2 * (v18 ^ (v25 >> 24))) & 0x2340ED64)) ^ *(&STACK[0x5870] + (v111 ^ 0xA4u));
  LODWORD(v112) = (v112 + 1464117319 - ((2 * v112) & 0xAE89508E)) ^ v48 ^ 0xCB31AB1;
  v116 = v107 ^ ((v68 ^ 0xC46D9CF7 ^ v112) + 1276568544 - ((2 * (v68 ^ 0xC46D9CF7 ^ v112)) & 0x982DC7C0));
  v117 = (v116 - 1030928115 - ((2 * v116) & 0x851A921A)) ^ v44;
  LODWORD(v17) = STACK[0x24D0];
  v118 = (v117 + 818286253 - ((2 * v117) & 0x618C1D5A)) ^ LODWORD(STACK[0x24D0]);
  LODWORD(v18) = v118 - 999449517 - ((2 * v118) & 0x88DB38A6);
  LODWORD(STACK[0x2468]) = v108 ^ v78;
  LODWORD(v48) = v68 ^ 0x836FB833 ^ v18;
  LODWORD(STACK[0x2458]) = v48;
  v119 = STACK[0x2680];
  LODWORD(v18) = LODWORD(STACK[0x2680]) ^ ((v18 ^ v108 ^ v78 ^ 0x97860B04) - 1579847176 - 2 * ((v18 ^ v108 ^ v78 ^ 0x97860B04) & 0x21D571FB ^ (v18 ^ v108 ^ v78) & 3));
  v120 = v109 ^ v17 ^ v18;
  v121 = STACK[0x1ED0];
  v122 = STACK[0x1ED0] & 0xCFA3942A ^ 0xA9F0CE3F;
  v123 = LODWORD(STACK[0x1D78]) ^ 0x26534004;
  v124 = v123;
  LODWORD(STACK[0x1ED8]) = v123;
  v125 = STACK[0x2848];
  v126 = STACK[0x2878];
  v127 = ((v123 & v122) << STACK[0x2848]) | ((v122 & STACK[0x2788]) >> STACK[0x2878]);
  v128 = LODWORD(STACK[0x1D70]) ^ 0x15F1C80C;
  LODWORD(STACK[0x27B0]) = v128;
  v129 = (v120 ^ 0x3939D41Au) - ((2 * (v120 ^ 0x3939D41Au)) & 0x6D223A2A) + 0x59DA778036911D15;
  v130 = *(&STACK[0x5870] + (BYTE1(v129) ^ 0x1DLL));
  HIDWORD(v25) = v130 ^ 0xA076B2;
  LODWORD(v25) = v130 ^ 0x11111111;
  v131 = v127 ^ (((v124 & (v121 & 0x5FA3942A ^ 0x61F0CE3Fu)) << v61) + (((v121 & 0x5FA3942A ^ 0x61F0CE3F) & v128) >> v126)) ^ __ROR4__(*(&STACK[0x5870] + ((4 * (v129 >> 24)) ^ 0x16769DE00D8)), 8) ^ (v25 >> 24);
  LODWORD(v129) = *(&STACK[0x5870] + (BYTE2(v129) ^ 0x91));
  HIDWORD(v25) = v129 ^ 0x76B2;
  LODWORD(v25) = v129 ^ 0x11A00000;
  v132 = v68;
  v133 = *(&STACK[0x5870] + (v120 ^ 0x1Au)) ^ v68 ^ (v25 >> 16) ^ ((v131 ^ 0xB211A076) + 295728818 - 2 * ((v131 ^ 0xB211A076) & 0x11A076B3 ^ v131 & 1));
  v134 = STACK[0x1EF0];
  LODWORD(STACK[0x26E0]) = v112 ^ LODWORD(STACK[0x1EF0]);
  LODWORD(v129) = v112 ^ v134 ^ 0x52D77C1C ^ ((v78 ^ 0x36537A58 ^ v133) - ((2 * (v78 ^ 0x36537A58 ^ v133)) & 0xC9080DC0) + 1686374112);
  LODWORD(v129) = v48 ^ (v129 - 2089830249 - ((2 * v129) & 0x6DF712E));
  v135 = v119 ^ (v129 - 40372070 - ((2 * v129) & 0xFB2FF134));
  v136 = v133 ^ v78 ^ v112;
  LODWORD(STACK[0x2670]) = v136;
  LODWORD(STACK[0x2660]) = v135;
  LODWORD(v126) = ((v135 ^ v78 ^ 0x53EB97F3) - 999449517 - 2 * ((v135 ^ v78 ^ 0x53EB97F3) & 0x446D9C5B ^ (v135 ^ v78) & 8)) ^ v68;
  LODWORD(v112) = v134 ^ ((v18 ^ 0xFD97F83E) - 999449517 - ((2 * (v18 ^ 0xFD97F83E)) & 0x88DB38A6));
  LODWORD(STACK[0x2680]) = v112;
  LODWORD(v48) = v134;
  LODWORD(v126) = v112 ^ 0xAB32011C ^ (v126 - ((2 * v126) & 0xB219CE2E) + 1494017815);
  LODWORD(v126) = LODWORD(STACK[0x20D0]) ^ (v126 - 1030928115 - ((2 * v126) & 0x851A921A));
  LODWORD(v112) = LODWORD(STACK[0x1EE0]) ^ 0xFB028C6F ^ v126;
  LODWORD(STACK[0x2678]) = v120 ^ 0x21579BCA;
  v137 = STACK[0x24E0];
  v138 = v120 ^ 0x21579BCA ^ LODWORD(STACK[0x24E0]) ^ (v112 + 409882576 - ((2 * v112) & 0x30DC9FA0));
  LODWORD(v44) = STACK[0x1EC8];
  LODWORD(v97) = STACK[0x1D74];
  LOBYTE(v130) = v125;
  v139 = STACK[0x2840];
  LODWORD(v112) = (((v44 & 0x98C61B96 ^ 0xC4E11C59) & STACK[0x27D8]) << v125) + (((v44 & 0x98C61B96 ^ 0xC4E11C59) & (LODWORD(STACK[0x1D74]) ^ 0x94C10914)) >> STACK[0x2840]);
  v140 = (((v44 & 0x9EC61B96 ^ 0xC1E11C59) & STACK[0x27D8]) << v125) + (((v44 & 0x9EC61B96 ^ 0xC1E11C59) & STACK[0x2790]) >> STACK[0x2840]);
  v141 = (v138 ^ 0xA1D571F8) - ((2 * (v138 ^ 0xA1D571F8)) & 0x839ECCBELL) + 0x57E317F541CF665FLL;
  v142 = *(&STACK[0x5870] + ((4 * (v141 >> 24)) ^ 0x15F8C5FD504));
  LODWORD(v125) = STACK[0x1EE8];
  HIDWORD(v25) = v142 ^ 0xB2;
  LODWORD(v25) = v142 ^ LODWORD(STACK[0x1EE8]);
  v143 = v25 >> 8;
  LODWORD(v112) = v140 ^ v112;
  v144 = *(&STACK[0x5870] + (BYTE2(v141) ^ 0xCFLL));
  HIDWORD(v25) = v144 ^ 0x76B2;
  LODWORD(v25) = v144 ^ 0x11A00000;
  LODWORD(v112) = (v112 ^ (v25 >> 16) ^ v143) + 295728818 - ((2 * (v112 ^ (v25 >> 16) ^ v143)) & 0x2340ED64);
  v145 = *(&STACK[0x5870] + (BYTE1(v141) ^ 0x66));
  HIDWORD(v25) = v145 ^ 0xA076B2;
  LODWORD(v25) = v145 ^ 0x11111111;
  LODWORD(STACK[0x2658]) = v138;
  v146 = (v25 >> 24) ^ *(&STACK[0x5870] + (v138 ^ 0xF8u)) ^ v136 ^ v112;
  LODWORD(STACK[0x2638]) = v146;
  LODWORD(v112) = ((v132 ^ 0xF23EE6AF ^ v146) + 818286253 - ((2 * (v132 ^ 0xF23EE6AF ^ v146)) & 0x618C1D5A)) ^ v17;
  v147 = v17;
  v148 = STACK[0x24D4];
  v149 = (v112 - 1030928115 - ((2 * v112) & 0x851A921A)) ^ LODWORD(STACK[0x24D4]) ^ v135;
  LODWORD(STACK[0x2518]) = v149;
  LODWORD(v129) = STACK[0x24E8];
  LODWORD(v112) = ((v78 ^ 0x53EB97F3 ^ v149) - 40372070 - ((2 * (v78 ^ 0x53EB97F3 ^ v149)) & 0xFB2FF134)) ^ LODWORD(STACK[0x24E8]);
  LODWORD(STACK[0x2650]) = v126 ^ v48;
  LODWORD(v112) = (v112 - 1579847176 - ((2 * v112) & 0x43AAE3F0)) ^ v137 ^ v126 ^ v48;
  v150 = v78;
  LODWORD(STACK[0x2668]) = (v78 ^ 0xF4AB92FE ^ v112) - 999449517 - ((2 * (v78 ^ 0xF4AB92FE ^ v112)) & 0x88DB38A6);
  LODWORD(v48) = STACK[0x1D70];
  v151 = STACK[0x2878];
  v152 = STACK[0x2818];
  LODWORD(v141) = (((LODWORD(STACK[0x1D78]) ^ 0x4534004) & (v121 & 0x8862D486 ^ 0x4C516EC1)) << STACK[0x2818]) + (((v121 & 0x8862D486 ^ 0x4C516EC1) & (LODWORD(STACK[0x1D70]) ^ 0x8471C884)) >> STACK[0x2878]);
  LODWORD(STACK[0x2610]) = v132 ^ v129;
  v153 = v132 ^ v129 ^ ((v112 ^ v138 ^ 0xA740050D) - 999449517 - ((2 * (v112 ^ v138 ^ 0xA740050D)) & 0x88DB38A6));
  v154 = LODWORD(STACK[0x2648]) ^ v153;
  v155 = v121 & 0xEE62D486 ^ 0x39516EC1;
  v156 = (v97 ^ 0x97410804) & v155;
  LOBYTE(v108) = v130;
  v157 = (STACK[0x1ED8] & v155) << v130;
  v158 = (v154 ^ 0xAE7C6F69) - ((2 * (v154 ^ 0xAE7C6F69)) & 0xE48D4EBELL) + 0x242BC8C07246A75FLL;
  v159 = *(&STACK[0x5870] + (BYTE1(v158) ^ 0xA7));
  HIDWORD(v25) = v159 ^ 0xA076B2;
  LODWORD(v25) = v159 ^ 0x11111111;
  LODWORD(v158) = *(&STACK[0x5870] + ((4 * (v158 >> 24)) ^ 0x90AF2301C8));
  LODWORD(v157) = ((v25 >> 24) ^ (v157 + (v156 >> v139))) + 295728818 - ((2 * ((v25 >> 24) ^ (v157 + (v156 >> v139)))) & 0x2340ED64);
  v160 = v125;
  HIDWORD(v25) = v158 ^ 0xB2;
  LODWORD(v25) = v158 ^ v125;
  LODWORD(v158) = v25 >> 8;
  LODWORD(STACK[0x2640]) = v154;
  v161 = STACK[0x2870];
  LODWORD(v156) = *(&STACK[0x5870] + ((*(STACK[0x2870] + (((v154 >> 14) & 0xFC | (v154 >> 22) & 3) ^ 0xD8)) ^ 0xC4) - 73));
  HIDWORD(v25) = v156 ^ 0x76B2;
  LODWORD(v25) = v156 ^ 0x11A00000;
  v162 = *(&STACK[0x5870] + (v154 ^ 0x69u)) ^ v141 ^ v146 ^ v158 ^ v157 ^ (v25 >> 16);
  LODWORD(STACK[0x1E98]) = v150;
  LODWORD(v158) = ((v147 ^ 0x91137F55 ^ v149) - 230758901 - ((2 * (v147 ^ 0x91137F55 ^ v149)) & 0xE47DCC16)) ^ v150;
  v163 = v148;
  LODWORD(v158) = v148 ^ (v158 - ((2 * v158) & 0x4EF6307C) + 662378558) ^ 0x112862C2 ^ v162;
  LODWORD(STACK[0x25E0]) = v162;
  LODWORD(v112) = v158 ^ LODWORD(STACK[0x1EE0]) ^ v112;
  LODWORD(STACK[0x2648]) = v153 ^ v112;
  v164 = (v153 ^ v112 ^ v147 ^ 0xC28D490D) - 1030928115 - 2 * ((v153 ^ v112 ^ v147 ^ 0xC28D490D) & 0x428D491D ^ (v153 ^ v112 ^ v147) & 0x10);
  LODWORD(v157) = LODWORD(STACK[0x2630]) ^ v112;
  LODWORD(STACK[0x25D8]) = v157;
  v165 = v48;
  v166 = STACK[0x1EC8];
  v167 = STACK[0x27D8];
  LOBYTE(v132) = v152;
  LODWORD(v112) = (((v121 & 0x89045A2C ^ 0xCC82253E) & v167) << v108) ^ (((v121 & 0x89045A2C ^ 0xCC82253E) & (v48 ^ 0x8580480C)) >> v139) ^ (((STACK[0x1EC8] & 0x8B045A2C ^ 0xCF823D16) & (v48 ^ 0x8580480C)) >> v151) ^ (((STACK[0x1EC8] & 0x8B045A2C ^ 0xCF823D16) & v167) << v152);
  LODWORD(v152) = STACK[0x2134];
  LODWORD(v125) = LODWORD(STACK[0x2134]) ^ v163;
  v168 = v125 ^ v164;
  LODWORD(v125) = *(&STACK[0x5870] + ((*(v161 + ((((v125 ^ v164) >> 22) & 0xFC | ((v125 ^ ~v164) >> 30)) ^ 0x39)) ^ 0xC4) - 73));
  HIDWORD(v25) = v125 ^ 0xB2;
  LODWORD(v25) = v125 ^ v160;
  LODWORD(v125) = v25 >> 8;
  v169 = *(&STACK[0x5870] + (BYTE1(v168) ^ 0x9Cu));
  HIDWORD(v25) = v169 ^ 0xA076B2;
  LODWORD(v25) = v169 ^ 0x11111111;
  LODWORD(v112) = v125 ^ v112 ^ (v25 >> 24);
  LODWORD(STACK[0x2630]) = v168;
  LODWORD(v125) = *(&STACK[0x5870] + ((*(STACK[0x2698] + (((v168 >> 14) & 0xFC | (v168 >> 22) & 3) ^ 0xF9)) ^ 0x22) - 73));
  HIDWORD(v25) = v125 ^ 0x76B2;
  LODWORD(v25) = v125 ^ 0x11A00000;
  LODWORD(v112) = ((v112 ^ (v25 >> 16)) + 295728818 - ((2 * (v112 ^ (v25 >> 16))) & 0x2340ED64)) ^ *(&STACK[0x5870] + (v168 ^ 0x53u));
  LODWORD(v112) = (v112 - 230758901 - ((2 * v112) & 0xE47DCC16)) ^ v150;
  LODWORD(v48) = v158 ^ LODWORD(STACK[0x1EF0]);
  LODWORD(STACK[0x25E8]) = v48;
  v170 = (v112 - 999449517 - ((2 * v112) & 0x88DB38A6)) ^ v162;
  LODWORD(STACK[0x2628]) = v170;
  LODWORD(v48) = LODWORD(STACK[0x20D0]) ^ ((v170 ^ v152 ^ v48 ^ 0xC28D49A9) - 1030928115 - 2 * ((v170 ^ v152 ^ v48 ^ 0xC28D49A9) & 0x428D491F ^ (v170 ^ v152 ^ v48) & 0x12));
  LODWORD(STACK[0x2618]) = v48;
  LODWORD(STACK[0x2610]) ^= (v157 ^ 0x5AA25C3C ^ v48) - 40372070 - ((2 * (v157 ^ 0x5AA25C3C ^ v48)) & 0xFB2FF134);
  LODWORD(v156) = STACK[0x1D78];
  LODWORD(v97) = STACK[0x1D74];
  LODWORD(STACK[0x2350]) = (v152 ^ 0x9F9A2EA5 ^ LODWORD(STACK[0x25D0])) - 230758901 - ((2 * (v152 ^ 0x9F9A2EA5 ^ LODWORD(STACK[0x25D0]))) & 0xE47DCC16);
  LOBYTE(v61) = v132;
  LODWORD(STACK[0x25D0]) = (((v97 ^ 0x86C10914) & (v121 & 0x84C37FDC ^ 0xC620B226)) >> v139) ^ (((v156 ^ 0x6434004) & (v121 & 0x84C37FDC ^ 0xC620B226)) << v132) ^ (((v166 & 0x83C478DA ^ 0x43622CBF) & (v97 ^ 0x83C00814)) >> v151) ^ (((v166 & 0x83C478DA ^ 0x43622CBF) & (v156 ^ 0x2424004)) << v132);
  v171 = STACK[0x2788];
  LODWORD(STACK[0x1E68]) = v97 ^ 0x97880914;
  LODWORD(v161) = ((((v166 & 0x5C3B58E0 ^ 0x2237BCB0) & v167) << v108) | (((v166 & 0x5C3B58E0 ^ 0x2237BCB0) & v171) >> v151)) ^ ((((v156 ^ 0x261A4004) & (v121 & 0x5B3C5FE6 ^ 0xE7A62211)) << v108) + (((v97 ^ 0x97880914) & (v121 & 0x5B3C5FE6 ^ 0xE7A62211)) >> v139));
  LODWORD(STACK[0x25C8]) = v161 + v5 - (v6 & (2 * v161));
  LODWORD(v157) = v167;
  LODWORD(v161) = (((v166 & 0x5DED1780 ^ 0xA25E9A40) & (v165 ^ 0x95F18880)) >> v151) ^ (((v166 & 0x5DED1780 ^ 0xA25E9A40) & v167) << v132);
  LODWORD(v158) = v121 & 0x5AEA1086 ^ 0x671D08C1;
  v172 = v158 & (v165 ^ 0x15F10884);
  v173 = (v158 & v167) << v132;
  LOBYTE(v132) = v139;
  LODWORD(STACK[0x25C0]) = (v161 ^ ((v172 >> v139) + v173)) + 297889059 - ((2 * (v161 ^ ((v172 >> v139) + v173))) & 0x2382DA46);
  v174 = v171;
  LODWORD(v161) = (((v121 & 0xAE6655EE ^ 0x59532F1D) & v167) << v108) | (((v121 & 0xAE6655EE ^ 0x59532F1D) & v171) >> v151);
  v175 = v166;
  v176 = STACK[0x27D0];
  LOBYTE(v139) = v108;
  v177 = STACK[0x2790];
  LODWORD(STACK[0x25B8]) = (((v166 & 0xA96152E8 ^ 0xFC90B9B4) & STACK[0x2790]) >> v151) ^ (((v166 & 0xA96152E8 ^ 0xFC90B9B4) & STACK[0x27D0]) << v108) ^ v161;
  LODWORD(v171) = v177;
  LODWORD(STACK[0x2598]) = (((v166 & 0x859623B8 ^ 0x4649104C) & v176) << v61) + (((v166 & 0x859623B8 ^ 0x4649104C) & v177) >> v132);
  LODWORD(v141) = STACK[0x1D60];
  LODWORD(STACK[0x2508]) = (((v121 & 0xCDDE6BF0 ^ 0x2AB73C18) & (LODWORD(STACK[0x1D60]) ^ 0x296E50)) << v108) ^ (((v97 ^ 0x87C90910) & (v121 & 0xCDDE6BF0 ^ 0x2AB73C18)) >> v132);
  LODWORD(STACK[0x2358]) = ((((v121 & 0x446BF330 ^ 0x665CF8B8) & (v141 ^ 0x29EA10)) << v108) + (((v97 ^ 0x6490910) & (v121 & 0x446BF330 ^ 0x665CF8B8)) >> v132)) ^ v152 ^ ((((v166 & 0xC23BB78 ^ 0xA33CCEC) & (v165 ^ 0x431C88Cu)) >> v151) + (((v166 & 0xC23BB78 ^ 0xA33CCEC) & (v156 ^ 0x6134004)) << v61)) ^ LODWORD(STACK[0x25B0]);
  LODWORD(STACK[0x1E80]) = v156 ^ 0x245B4004;
  LODWORD(v161) = ((((v166 & 0x58EE538C ^ 0x24DD3846) & (v156 ^ 0x245B4004)) << v61) + (((v166 & 0x58EE538C ^ 0x24DD3846) & (v165 ^ 0x14F1488Cu)) >> v151)) ^ ((((v166 & 0x10A61BC4 ^ 0x8F11C22) & v157) << v61) | (((v166 & 0x10A61BC4 ^ 0x8F11C22) & (v97 ^ 0x10C10904)) >> v151));
  LODWORD(STACK[0x2380]) = v161 + 1105242206 - ((2 * v161) & 0x83C150BC);
  LODWORD(v161) = (((v156 ^ 0x20590004) & (v121 & 0x71E90B9C ^ 0x789D8C46)) << v108) ^ (((v121 & 0x71E90B9C ^ 0x789D8C46) & v174) >> v132) ^ ((((v166 & 0x39A143D4 ^ 0x3470A03A) & v177) >> v151) | (((v166 & 0x39A143D4 ^ 0x3470A03A) & v157) << v108));
  LODWORD(STACK[0x2368]) = v161 - ((2 * v161) & 0xA8D938B6);
  LODWORD(STACK[0x1EB8]) = v156 ^ 0x265B4000;
  LODWORD(v161) = ((((v156 ^ 0x265B4000) & (v121 & 0x3E53A912 ^ 0x9178DD8B)) << v108) + (((v121 & 0x3E53A912 ^ 0x9178DD8B) & v174) >> v151)) ^ ((((v121 & 0x5538C278 ^ 0x6EA46154) & (v165 ^ 0x15B0C00Cu)) >> v132) + (((v156 ^ 0x26184004) & (v121 & 0x5538C278 ^ 0x6EA46154)) << v61));
  LODWORD(v161) = (v161 - ((2 * v161) & 0x87911656) + 1137216299) ^ 0x2CE8729B ^ LODWORD(STACK[0x2510]);
  LODWORD(v161) = (v161 - 999449517 - ((2 * v161) & 0x88DB38A6)) ^ v152;
  LODWORD(STACK[0x2370]) = v161 - 230758901 - ((2 * v161) & 0xE47DCC16);
  LODWORD(STACK[0x25B0]) = (((v166 & 0xBF4EE92C ^ 0x71AD7596) & v157) << v61) ^ (((v166 & 0xBF4EE92C ^ 0x71AD7596) & v177) >> v132) ^ ((((v166 & 0xD4258246 ^ 0xEE32C161) & v157) << v108) | (((v166 & 0xD4258246 ^ 0xEE32C161) & (v97 ^ 0x96010104)) >> v151));
  LODWORD(STACK[0x2510]) = ((((v121 & 0xAD27E1C6 ^ 0x5AB2F121) & (v165 ^ 0x95B1C084)) >> v132) + (((v121 & 0xAD27E1C6 ^ 0x5AB2F121) & (v141 ^ 0x1021E044)) << v61)) ^ ((((v121 & 0xC64C8AAC ^ 0xA56E4DFE) & (v165 ^ 0x8560C88C)) >> v132) | (((v156 ^ 0x264A4004) & (v121 & 0xC64C8AAC ^ 0xA56E4DFE)) << v61));
  LODWORD(STACK[0x2478]) = (((v121 & 0x8EA2B6D4 ^ 0x49715FAA) & v174) >> v132) ^ (((v156 ^ 0x6534004) & (v121 & 0x8EA2B6D4 ^ 0x49715FAA)) << v61) ^ ((((v166 & 0xE5C9DDBE ^ 0xD66CFF4D) & v177) >> v151) | (((v166 & 0xE5C9DDBE ^ 0xD66CFF4D) & (v156 ^ 0x26494004)) << v108));
  LODWORD(STACK[0x2488]) = (((v166 & 0xF6097F5C ^ 0xDD0CAEFE) & v177) >> v151) + (((v166 & 0xF6097F5C ^ 0xDD0CAEFE) & v157) << v108);
  LODWORD(v173) = v121 & 0x28D7A182 ^ 0x9C3AD143;
  STACK[0x2470] = v173 & (v141 ^ 0x1029E040);
  STACK[0x2460] = (v97 ^ 0x94C90100) & v173;
  LODWORD(STACK[0x2450]) = ((((v166 & 0xB227BCC4 ^ 0x7B31CEA2) & v174) >> v151) + (((v166 & 0xB227BCC4 ^ 0x7B31CEA2) & v176) << v61)) ^ ((((v166 & 0x6CF9621A ^ 0x1AD4B11F) & (v165 ^ 0x14F1C00Cu)) >> v132) + (((v166 & 0x6CF9621A ^ 0x1AD4B11F) & v157) << v61));
  LODWORD(STACK[0x1E78]) = v97 ^ 0x91C80914;
  LODWORD(STACK[0x1EA8]) = v97 ^ 0x17C90814;
  LODWORD(STACK[0x2440]) = (((v166 & 0x7FB6D43A ^ 0x11797A0F) & v176) << v61) ^ (((v166 & 0x7FB6D43A ^ 0x11797A0F) & (v97 ^ 0x17C90814)) >> v132) ^ ((((v156 ^ 0x20580004) & (v121 & 0xA1680AE4 ^ 0x50DC0D92)) << v108) | (((v97 ^ 0x91C80914) & (v121 & 0xA1680AE4 ^ 0x50DC0D92)) >> v151));
  LODWORD(STACK[0x2438]) = (((v121 & 0xFAA2C528 ^ 0x377167BC) & v157) << v108) ^ (((v121 & 0xFAA2C528 ^ 0x377167BC) & (v165 ^ 0x95F1C08C)) >> v151);
  LODWORD(STACK[0x2390]) = (((v166 & 0x247C1BF6 ^ 0x36161C29) & (v165 ^ 0x1470088Cu)) >> v132) + (((v166 & 0x247C1BF6 ^ 0x36161C29) & (v156 ^ 0x265A0004)) << v108);
  LODWORD(STACK[0x1CB8]) = v97 ^ 0x97C90910;
  LODWORD(STACK[0x2388]) = ((((v166 & 0xB8A0D8A0 ^ 0x74F07CD0) & v176) << v108) + (((v166 & 0xB8A0D8A0 ^ 0x74F07CD0) & (v97 ^ 0x94C00810)) >> v132)) ^ ((((v97 ^ 0x97C90910) & (v121 & 0xEAF28AF2 ^ 0x3F094D9B)) >> v151) | (((v121 & 0xEAF28AF2 ^ 0x3F094D9B) & v157) << v61));
  LODWORD(v161) = (((v175 & 0x34C02DD0 ^ 0xBEE01738) & (v97 ^ 0x96C00910)) >> v132) ^ (((v175 & 0x34C02DD0 ^ 0xBEE01738) & (v156 ^ 0x26400000)) << v108) ^ ((((v121 & 0x66927F82 ^ 0xF5593243) & (v165 ^ 0x95D14880)) >> v151) | (((v121 & 0x66927F82 ^ 0xF5593243) & (v141 ^ 0x10096E40)) << v61));
  LODWORD(STACK[0x2378]) = v161 - ((2 * v161) & 0xA8E837EC);
  LODWORD(v161) = ((v176 & (v121 & 0xA5F25C96 ^ 0x568922C9)) << v61) ^ (((v121 & 0xA5F25C96 ^ 0x568922C9) & v174) >> v151);
  LODWORD(STACK[0x2360]) = (((v121 & 0xF7A00EC4 ^ 0x3DF00BA2) & (v141 ^ 0x10200E44)) << v61) ^ 0xC13D76BD ^ (((v121 & 0xF7A00EC4 ^ 0x3DF00BA2) & v174) >> v151) ^ (v161 - 1052936515 - ((2 * v161) & 0x827AED7A));
  v178 = v141;
  LODWORD(STACK[0x2798]) ^= ((((v166 & 0x7158F626 ^ 0x18A46B11) & (v97 ^ 0x11C80914)) >> v132) + (((v166 & 0x7158F626 ^ 0x18A46B11) & (v141 ^ 0x1028EE14)) << v139)) ^ (((v166 & 0x230AA474 ^ 0x338F526A) & v176) << v61) ^ (((v166 & 0x230AA474 ^ 0x338F526A) & (v165 ^ 0x1181C00Cu)) >> v151);
  v179 = v121 & 0x73F27CF6 ^ 0x7B893299;
  v180 = v179 & (v141 ^ 0x10296E54);
  LODWORD(v173) = (((v175 & 0x63E26CE6 ^ 0x135336B1) & (v97 ^ 0x13C10814)) >> v132) + (((v175 & 0x63E26CE6 ^ 0x135336B1) & (v141 ^ 0x10216E54)) << v139);
  LOBYTE(v141) = v139;
  v181 = v132;
  LODWORD(v125) = STACK[0x1E98];
  LODWORD(STACK[0x2350]) ^= (v180 << v139) ^ LODWORD(STACK[0x1E98]) ^ (((v97 ^ 0x13C90814) & v179) >> v132) ^ v173;
  v182 = ((((v175 & 0xD04EAB22 ^ 0xE82D5493) & v177) >> v132) + (((v175 & 0xD04EAB22 ^ 0xE82D5493) & (v178 ^ 0x1029EE10)) << v61)) ^ ((((v156 ^ 0x205B4000) & (v121 & 0xC05EBB32 ^ 0xA07754BB)) << v61) + (((v121 & 0xC05EBB32 ^ 0xA07754BB) & (v165 ^ 0x8071C888)) >> v151));
  LODWORD(STACK[0x2448]) ^= v182 + 1276568544 - ((2 * v182) & 0x982DC7C0);
  v183 = ((((v175 & 0xC374F2EC ^ 0xE39A69B6) & (v97 ^ 0x83C80914)) >> v132) + (((v175 & 0xC374F2EC ^ 0xE39A69B6) & v157) << v139)) ^ ((((v156 ^ 0x22524004) & (v121 & 0xD364E2FC ^ 0xABD27196)) << v139) + (((v121 & 0xD364E2FC ^ 0xABD27196) & (v165 ^ 0x91F0C08C)) >> v151));
  LODWORD(STACK[0x2468]) ^= v152 ^ (v183 - ((2 * v183) & 0xC8C1F97E) + 1684077759) ^ 0xF3E6F71F;
  LODWORD(STACK[0x2348]) = (((v156 ^ 0x26434000) & (v121 & 0x4AC64252 ^ 0xEF23216B)) << v61) + (((v121 & 0x4AC64252 ^ 0xEF23216B) & (v165 ^ 0x85E14008)) >> v151);
  v184 = v121 & 0x5AD65242 ^ 0xE73B2963;
  STACK[0x2340] = v184 & (v165 ^ 0x95F14800);
  STACK[0x2338] = v184 & (v178 ^ 0x10296A40);
  LODWORD(STACK[0x1E40]) = v97 ^ 0x97890910;
  LODWORD(STACK[0x1E48]) = v156 ^ 0x26584004;
  LODWORD(STACK[0x2330]) = ((((v166 & 0x651E3710 ^ 0x96850A98) & v176) << v139) | (((v166 & 0x651E3710 ^ 0x96850A98) & (v97 ^ 0x97890910)) >> v132)) ^ ((((v156 ^ 0x26584004) & (v121 & 0xEB90B99E ^ 0xBFD85545)) << v139) | (((v97 ^ 0x97C80914) & (v121 & 0xEB90B99E ^ 0xBFD85545)) >> v132));
  v185 = ((((v175 & 0xCD8F6342 ^ 0x6A4DB0E3) & (v178 ^ 0x9E240)) << v61) | (((v175 & 0xCD8F6342 ^ 0x6A4DB0E3) & (v165 ^ 0x85C1C080)) >> v151)) ^ ((((v97 ^ 0x3810904) & (v121 & 0x4301EDCC ^ 0x6381FB2E)) >> v132) | (((v121 & 0x4301EDCC ^ 0x6381FB2E) & (v178 ^ 0x1EE44u)) << v61));
  v186 = LODWORD(STACK[0x2458]) ^ (v185 - 2089830249 - ((2 * v185) & 0x6DF712E));
  v187 = (v186 - 230758901 - ((2 * v186) & 0xE47DCC16)) ^ v125;
  LODWORD(STACK[0x2458]) = v187 - 999449517 - ((2 * v187) & 0x88DB38A6);
  LODWORD(STACK[0x2328]) = (((v166 & 0x1D529D1C ^ 0x2AB5F9E) & (v156 ^ 0x65B4004)) << v139) + (((v166 & 0x1D529D1C ^ 0x2AB5F9E) & (v165 ^ 0x15F1C88Cu)) >> v151);
  LODWORD(STACK[0x2320]) = (((v97 ^ 0x93C80910) & (v121 & 0x93DC1392 ^ 0x4BB6084B)) >> v132) | (((v121 & 0x93DC1392 ^ 0x4BB6084B) & (v178 ^ 0x10280A50)) << v61);
  LODWORD(STACK[0x1E38]) = v156 ^ 0x225B4004;
  LODWORD(v173) = (((v156 ^ 0x225B4004) & (v121 & 0xF2D7C166 ^ 0xBB3AE1D1)) << v61) ^ (((v97 ^ 0x93C90114) & (v121 & 0xF2D7C166 ^ 0xBB3AE1D1)) >> v151) ^ (((v175 & 0x7C594FE8 ^ 0x9224A634) & v174) >> v151) ^ (((v175 & 0x7C594FE8 ^ 0x9224A634) & v176) << v139);
  LODWORD(STACK[0x2318]) = v173 + 409882576 - ((2 * v173) & 0x30DC9FA0);
  LODWORD(v173) = ((((v175 & 0xE3324DFC ^ 0xD3BB272E) & v157) << v139) + (((v175 & 0xE3324DFC ^ 0xD3BB272E) & (v165 ^ 0x91B1488C)) >> v132)) ^ (((v175 & 0x3BEA9524 ^ 0xB75F5B92) & v177) >> v132) ^ (((v175 & 0x3BEA9524 ^ 0xB75F5B92) & v157) << v61);
  LODWORD(STACK[0x2310]) = v173 - ((2 * v173) & 0x9A78046);
  LODWORD(v173) = (((v175 & 0x3B34E75A ^ 0xB7BA72FF) & v177) >> v132) ^ (((v175 & 0x3B34E75A ^ 0xB7BA72FF) & v176) << v61) ^ ((((v156 ^ 0x225A0000) & (v121 & 0xE3EC3F82 ^ 0xB39E1243)) << v139) + (((v121 & 0xE3EC3F82 ^ 0xB39E1243) & v174) >> v151));
  LODWORD(STACK[0x2308]) = v173 - ((2 * v173) & 0xC51411F0);
  LODWORD(v173) = (((v121 & 0xE727EB50 ^ 0x35B2FCE8) & (v165 ^ 0x95B1C888)) >> v151) ^ (((v121 & 0x3FFF3388 ^ 0x1186984C) & (v178 ^ 0x1029AA44u)) << v61) ^ (((v97 ^ 0x17C90904) & (v121 & 0x3FFF3388 ^ 0x1186984C)) >> v132) ^ (((v121 & 0xE727EB50 ^ 0x35B2FCE8) & (v178 ^ 0x1021EE50)) << v139);
  LODWORD(STACK[0x2300]) = v173 - ((2 * v173) & 0xCA787E78);
  LODWORD(STACK[0x22F8]) = (((v166 & 0x54E0F1B4 ^ 0x2ED0694A) & v176) << v139) ^ (((v166 & 0x54E0F1B4 ^ 0x2ED0694A) & (v165 ^ 0x14F0C88Cu)) >> v151) ^ ((((v166 & 0x8C38296C ^ 0x4A3415F6) & (v97 ^ 0x86080914)) >> v151) | (((v166 & 0x8C38296C ^ 0x4A3415F6) & (v178 ^ 0x282C54)) << v139));
  LODWORD(STACK[0x22F0]) = (((v121 & 0x1B7B706C ^ 0x7C4B85Eu) & STACK[0x27B0]) >> v132) ^ (((v156 ^ 0x65B4004) & (v121 & 0x1B7B706C ^ 0x7C4B85E)) << v61);
  LODWORD(STACK[0x22E8]) = (((v156 ^ 0x20584004) & (v121 & 0xF0909B86 ^ 0xB8584441)) << v61) + (((v121 & 0xF0909B86 ^ 0xB8584441) & v174) >> v151);
  LODWORD(STACK[0x1E70]) = v178 ^ 0x10298E54;
  v188 = ((((v175 & 0x93D4F592 ^ 0x4B6A6B5B) & (v178 ^ 0x1028EE50)) << v139) + (((v175 & 0x93D4F592 ^ 0x4B6A6B5B) & (v97 ^ 0x93C80910)) >> v132)) ^ ((((v175 & 0x783F1E78 ^ 0x94359F6C) & (v178 ^ 0x10298E54)) << v61) + (((v175 & 0x783F1E78 ^ 0x94359F6C) & v174) >> v151));
  v189 = (v188 - ((2 * v188) & 0x4DE43CC6) + 653401699) ^ 0x87276F9B ^ LODWORD(STACK[0x2518]);
  LODWORD(STACK[0x2518]) = v189 - 999449517 - ((2 * v189) & 0x88DB38A6);
  LODWORD(STACK[0x1E30]) = v156 ^ 0x26034004;
  LODWORD(STACK[0x22E0]) = (((v156 ^ 0x26034004) & (v121 & 0x3A068464 ^ 0x17034652)) << v139) + (((v97 ^ 0x17010014) & (v121 & 0x3A068464 ^ 0x17034652)) >> v132);
  LODWORD(STACK[0x22D8]) = (((v166 & 0xD1ED6F8E ^ 0xE85EB645) & v174) >> v151) + (((v166 & 0xD1ED6F8E ^ 0xE85EB645) & v157) << v139);
  v190 = ((((v175 & 0x2D97B35A ^ 0xBA49C8FF) & v157) << v61) + (((v175 & 0x2D97B35A ^ 0xBA49C8FF) & v174) >> v132)) ^ ((((v97 ^ 0x87480810) & (v121 & 0xC67C58B0 ^ 0x254624F8)) >> v132) + (((v156 ^ 0x265A4000) & (v121 & 0xC67C58B0 ^ 0x254624F8)) << v61));
  LODWORD(STACK[0x22D0]) = v190 - ((2 * v190) & 0x984562E0);
  LODWORD(STACK[0x22C8]) = (((v97 ^ 0x91C10110) & (v121 & 0xE14627E0 ^ 0x30E31610) ^ (v97 ^ 0x11C10110) & (v121 & 0x2186E720 ^ 0x10C376B0)) >> v151) ^ (((v121 & 0xE14627E0 ^ 0x30E31610) & v157) << v61) ^ (((v156 ^ 0x20434000) & (v121 & 0x2186E720 ^ 0x10C376B0)) << v139);
  LODWORD(STACK[0x22C0]) = (((v166 & 0x2B6228C0 ^ 0x3F9314A0) & (v165 ^ 0x15F10880u)) >> v132) + (((v166 & 0x2B6228C0 ^ 0x3F9314A0) & v176) << v139);
  LODWORD(STACK[0x22B8]) = (((v156 ^ 0x26534000) & (v121 & 0xEBA2E800 ^ 0x3FF17C00)) << v139) ^ (((v121 & 0xEBA2E800 ^ 0x3FF17C00) & v174) >> v132);
  LODWORD(STACK[0x22B0]) = (((v166 & 0x75A1DDCC ^ 0x1E70FF26) & v157) << v61) + (((v166 & 0x75A1DDCC ^ 0x1E70FF26) & (v97 ^ 0x17C10904)) >> v151);
  LODWORD(STACK[0x22A8]) = (((v166 & 0xB5611D0C ^ 0x7E909F86) & (v97 ^ 0x97C10904)) >> v132) | (((v166 & 0xB5611D0C ^ 0x7E909F86) & (v156 ^ 0x26510004)) << v61);
  LODWORD(STACK[0x22A0]) = (((v121 & 0x84CCE290 ^ 0x462E71C8) & (v178 ^ 0x28E250)) << v139) + (((v121 & 0x84CCE290 ^ 0x462E71C8) & v174) >> v151);
  LODWORD(STACK[0x2298]) = (((v156 ^ 0x260A0000) & (v121 & 0x440C2250 ^ 0x660E1168)) << v139) + (((v121 & 0x440C2250 ^ 0x660E1168) & (v165 ^ 0x4000008u)) >> v132);
  LODWORD(v97) = STACK[0x2358];
  v191 = ((LODWORD(STACK[0x2358]) ^ 0x48) + (LODWORD(STACK[0x2798]) ^ 0x87) + 9);
  LODWORD(v180) = LODWORD(STACK[0x4F4]) ^ 0x273C86F5;
  v192 = (16843009 * v191 + 559311507 - ((33686018 * v191) & 0x42ACD526)) ^ 0x21566A93;
  LODWORD(STACK[0x27B0]) = v180;
  v193 = v192 ^ (2 * (v192 & v180));
  v194 = ((v193 & v157) - ((2 * (v193 & v157)) & 0x43FFD95E) + 0x778FAF9021FFECAFLL) ^ 0x21FFECAF;
  STACK[0x2288] = v194;
  LODWORD(v177) = (v194 << v61) - 813359376 - ((2 * (v194 << v61)) & 0x9F0A3DE0);
  LODWORD(STACK[0x2270]) = v177;
  LODWORD(v194) = v192 ^ (2 * (v192 & STACK[0x2838]));
  v195 = (v194 & v157) - 1944356335 - ((2 * (v194 & v157)) & 0x1836F422);
  LODWORD(STACK[0x2280]) = ((v195 ^ 0x8C1B7A11) << v139) - ((2 * ((v195 ^ 0x8C1B7A11) << v139)) & 0x13680336);
  v196 = ((v195 ^ 0x8C1B7A11) << v61) - 357750900 - ((2 * ((v195 ^ 0x8C1B7A11) << v61)) & 0xD55A4F18);
  LODWORD(STACK[0x2258]) = v194;
  v197 = ((v194 & v174) + 0x1E70B94E3BA2DCB2 - ((2 * (v194 & v174)) & 0x7745B964)) ^ 0x1E70B94E3BA2DCB2;
  STACK[0x2290] = v197;
  v198 = (v197 >> v181) + 1824763902 - ((2 * (v197 >> v181)) & 0xD9875FFC);
  v199 = v193 & v171;
  v200 = ((2 * (v199 >> v151)) & 0xDDBFBFE4) + ((v199 >> v151) ^ 0x6EDFDFF2);
  LODWORD(v173) = v176;
  v201 = (v193 & v176) + 267591966 - ((2 * (v193 & v176)) & 0x1FE6423C);
  LODWORD(v172) = ((2 * ((v201 ^ 0xFF3211Eu) << v139)) & 0xBE97D9DE) + (((v201 ^ 0xFF3211Eu) << v139) ^ 0x5F4BECEF);
  v202 = v172 + v200 - ((2 * (v172 + v200) + 1671980606) & 0xA9C975A8);
  LODWORD(v157) = (LODWORD(STACK[0x2368]) - 731079589) ^ LODWORD(STACK[0x2700]);
  LODWORD(v156) = LODWORD(STACK[0x2380]) ^ LODWORD(STACK[0x2718]);
  v203 = ((v194 & v176) - 0x7985531C7D2E0B04 - ((2 * (v194 & v176)) & 0x105A3E9F8)) ^ 0x867AACE382D1F4FCLL;
  STACK[0x2718] = v203;
  v204 = (v203 << v139) + 1900893929 - ((2 * (v203 << v139)) & 0xE29AADD2);
  LODWORD(v176) = LODWORD(STACK[0x2508]) ^ LODWORD(STACK[0x2598]) ^ LODWORD(STACK[0x2778]) ^ 0xFD411AB;
  LODWORD(v203) = v198 ^ 0x6CC3AFFE;
  LODWORD(STACK[0x2368]) = v204 ^ 0x714D56E9;
  LODWORD(STACK[0x2260]) = v198 ^ 0x6CC3AFFE;
  LODWORD(STACK[0x2700]) = v176 ^ (v198 ^ 0x6CC3AFFE | v204 ^ 0x714D56E9);
  LODWORD(v176) = LODWORD(STACK[0x25B8]) ^ LODWORD(STACK[0x2780]);
  LODWORD(STACK[0x2780]) = v177 ^ 0xCF851EF0;
  LODWORD(STACK[0x2778]) = v176 ^ 0x96ACD5E2 ^ (v200 - 1860165618 + (v177 ^ 0xCF851EF0));
  v205 = LODWORD(STACK[0x2810]) ^ LODWORD(STACK[0x25C0]);
  v202 += 112782835;
  LODWORD(STACK[0x25C0]) = v157 ^ 0x9242289F ^ v202;
  LODWORD(STACK[0x25B8]) = v156 ^ 0xB41052CF ^ v202;
  LODWORD(STACK[0x2380]) = v205 ^ v202;
  v206 = v196 ^ v198;
  LODWORD(v139) = v196;
  LODWORD(v156) = STACK[0x1E98];
  LODWORD(STACK[0x2598]) = LODWORD(STACK[0x1E98]) ^ LODWORD(STACK[0x2370]) ^ 0xABCF497C ^ v206;
  LODWORD(STACK[0x2508]) = v97 ^ 0x91C87A21 ^ v206;
  LODWORD(STACK[0x25C8]) ^= LODWORD(STACK[0x27E0]) ^ 0xFC11B8DF ^ v206;
  LODWORD(v177) = ((v201 ^ 0xFF3211Eu) << v61) + 41101116 - ((2 * ((v201 ^ 0xFF3211Eu) << v61)) & 0x4E64E78);
  v207 = ((v193 & v174) - 0x77E46A76454CFD73 - ((2 * (v193 & v174)) & 0x17566051ALL)) ^ 0x881B9589BAB3028DLL;
  v208 = v177 ^ (LODWORD(STACK[0x25D0]) + 41101116 - ((2 * LODWORD(STACK[0x25D0])) & 0x4E64E78));
  LODWORD(v152) = (v207 >> v181) - ((2 * (v207 >> v181)) & 0x85CEA134) - 1025027942;
  LODWORD(STACK[0x25D0]) = LODWORD(STACK[0x2770]) ^ v152 ^ 0xA4890DAF ^ (v208 - ((2 * v208) & 0x85CEA134) - 1025027942);
  v209 = STACK[0x1D74];
  LODWORD(v97) = STACK[0x1D60];
  v210 = LODWORD(STACK[0x1D78]) ^ 0x265B0004;
  LODWORD(STACK[0x1DF4]) = v210;
  LODWORD(STACK[0x2370]) = (((v175 & 0xF5A520DC ^ 0x5E7290BE) & (v209 ^ 0x97C10014)) >> v151) ^ (((v175 & 0xF5A520DC ^ 0x5E7290BE) & (v97 ^ 0x1021A054)) << v141) ^ ((((v175 & 0xC59510EC ^ 0x664A98B6) & v210) << v61) | (((v175 & 0xC59510EC ^ 0x664A98B6) & v174) >> v151));
  v211 = v97 ^ 0x1029EE14;
  v212 = v97;
  LODWORD(v97) = STACK[0x1ED0];
  LODWORD(v157) = v171;
  LODWORD(STACK[0x2358]) = LODWORD(STACK[0x24E0]) ^ ((((STACK[0x1ED0] & 0x6F4AFE36 ^ 0xF9ED7339) & v211) << v141) | ((v171 & (STACK[0x1ED0] & 0x6F4AFE36 ^ 0xF9ED7339)) >> v181)) ^ (((v173 & (STACK[0x1ED0] & 0x5F7ACE06 ^ 0xE1C56B01)) << v141) + (((STACK[0x1ED0] & 0x5F7ACE06 ^ 0xE1C56B01) & (LODWORD(STACK[0x1D70]) ^ 0x95F1C804)) >> v151));
  v213 = STACK[0x27D8];
  v214 = ((((v175 & 0xFE9D6046 ^ 0xD1C6B061) & (v209 ^ 0x97C90004)) >> v181) + (((v175 & 0xFE9D6046 ^ 0xD1C6B061) & STACK[0x27D8]) << v61)) ^ ((((v97 & 0xCEAD5076 ^ 0xA97FA859) & v174) >> v181) + ((v173 & (v97 & 0xCEAD5076 ^ 0xA97FA859)) << v61));
  v215 = (v214 + 911440472 - ((2 * v214) & 0x6CA6F4B0)) ^ LODWORD(STACK[0x1EF0]);
  LODWORD(STACK[0x2278]) = v215 - ((2 * v215) & 0x75E5EC64);
  LODWORD(STACK[0x1EB0]) = v212 ^ 0x1021AE54;
  LODWORD(STACK[0x2268]) = ((((v175 & 0xADC12B9A ^ 0xFA60945F) & v157) >> v151) + (((v175 & 0xADC12B9A ^ 0xFA60945F) & (v212 ^ 0x1021AE54)) << v61)) ^ ((((v175 & 0x9DF11BAA ^ 0xC2589C57) & v213) << v141) + (((v175 & 0x9DF11BAA ^ 0xC2589C57) & v157) >> v151));
  LODWORD(v173) = (LODWORD(STACK[0x2280]) - 1984691813) ^ 0x89B4019B;
  v216 = STACK[0x2258] & v157;
  v217 = LODWORD(STACK[0x25B0]) ^ (v173 | (v216 >> v181));
  LODWORD(STACK[0x2280]) = v156 ^ LODWORD(STACK[0x2748]) ^ 0x3F5F905 ^ (v217 - 230758901 - ((2 * v217) & 0xE47DCC16));
  LODWORD(v177) = v177 ^ 0x273273C;
  LODWORD(v156) = ((v207 >> v151) + 979499970 - ((2 * (v207 >> v151)) & 0x74C3F784)) ^ 0x3A61FBC2;
  LODWORD(v157) = STACK[0x2134];
  LODWORD(STACK[0x2510]) = LODWORD(STACK[0x2134]) ^ LODWORD(STACK[0x2758]) ^ 0xF68DABB ^ ((LODWORD(STACK[0x2510]) ^ (v177 + v156)) - 999449517 - ((2 * (LODWORD(STACK[0x2510]) ^ (v177 + v156))) & 0x88DB38A6));
  LODWORD(STACK[0x2478]) ^= LODWORD(STACK[0x2768]) ^ 0xDF9F2705 ^ (v173 + v203);
  v218 = (v199 - 0x1B0AE0E21B45BBFFLL - ((2 * v199) & 0x1C9748802)) ^ 0xE4F51F1DE4BA4401;
  LODWORD(v207) = v157 ^ (STACK[0x2470] << v141) ^ (STACK[0x2460] >> v181) ^ LODWORD(STACK[0x2488]) ^ LODWORD(STACK[0x2728]);
  LODWORD(v203) = ((v218 >> v151) - 841310867 - ((2 * (v218 >> v151)) & 0x9BB53ADA)) ^ 0xCDDA9D6D;
  LODWORD(STACK[0x2460]) = v203;
  LODWORD(STACK[0x25B0]) = v207 ^ 0x1F6A83EE ^ (v203 | v177);
  v219 = v172 - 1598811375;
  LODWORD(v173) = LODWORD(STACK[0x2450]) ^ (v172 - 1598811375 + (v152 ^ 0xC2E7509A));
  LODWORD(v173) = (v173 - 999449517 - ((2 * v173) & 0x88DB38A6)) ^ v157;
  LODWORD(STACK[0x2770]) = LODWORD(STACK[0x2740]) ^ 0x2E4F854C ^ (v173 - ((2 * v173) & 0x5C11BBB4) + 772333018);
  v220 = (v216 + 0x3C0D6ACFB470F611 - ((2 * v216) & 0x168E1EC22)) ^ 0x3C0D6ACFB470F611;
  LODWORD(v173) = (v220 >> v151) - ((2 * (v220 >> v151)) & 0xEA391048) + 1964804132;
  v221 = v139 ^ 0xEAAD278C;
  LODWORD(v172) = v173 ^ 0x751C8824;
  LODWORD(STACK[0x2768]) = LODWORD(STACK[0x2440]) ^ LODWORD(STACK[0x2720]) ^ 0xD0C50483 ^ (v173 ^ 0x751C8824 | v139 ^ 0xEAAD278C);
  LODWORD(v207) = ((STACK[0x2288] << v141) + 545885623 - ((2 * (STACK[0x2288] << v141)) & 0x41131B6E)) ^ 0x20898DB7;
  LODWORD(STACK[0x2488]) = LODWORD(STACK[0x2438]) ^ LODWORD(STACK[0x2390]) ^ LODWORD(STACK[0x2750]) ^ 0xC6C37C7F ^ (v152 ^ 0xC2E7509A | v207);
  v222 = (STACK[0x2718] << v61) - ((2 * (STACK[0x2718] << v61)) & 0x71F101D0) - 1191673624;
  LODWORD(v203) = LODWORD(STACK[0x2388]) ^ (v222 ^ 0xB8F880E8 | v173 ^ 0x751C8824);
  LODWORD(STACK[0x2470]) = v157 ^ LODWORD(STACK[0x26F8]) ^ 0x83EB60B8 ^ (v203 - ((2 * v203) & 0x137FCDFA) + 163571453);
  LODWORD(v213) = LODWORD(STACK[0x2270]) ^ v152;
  LODWORD(v141) = (LODWORD(STACK[0x2378]) - 730588170) ^ LODWORD(STACK[0x2730]);
  LODWORD(v203) = v204 ^ (LODWORD(STACK[0x2360]) + 1900893929 - ((2 * LODWORD(STACK[0x2360])) & 0xE29AADD2));
  v223 = v204;
  LODWORD(STACK[0x2758]) = LODWORD(STACK[0x26F0]) ^ 0x55B4233 ^ (v203 - ((2 * v203) & 0xEA391048) + 1964804132) ^ v173;
  LODWORD(v177) = (v220 >> v181) - 1544317012 - ((2 * (v220 >> v181)) & 0x47E72F58);
  LODWORD(v173) = (v177 ^ 0x88096D77) - 737868507 + ((2 * v177) & 0x57F5F5B6 ^ 0x47E52510);
  LODWORD(STACK[0x2440]) = (v173 | v222 ^ 0xB8F880E8) ^ LODWORD(STACK[0x2798]);
  v224 = v207 + v156 + 252855257 - ((2 * (v207 + v156)) & 0x1E2487B2);
  LODWORD(STACK[0x2450]) = LODWORD(STACK[0x2350]) + 252855257 - ((2 * LODWORD(STACK[0x2350])) & 0x1E2487B2);
  v225 = v173 + (v139 ^ 0xEAAD278C) - 887621020 - ((2 * (v173 + (v139 ^ 0xEAAD278C))) & 0x962FF4C8);
  LODWORD(STACK[0x2448]) = LODWORD(STACK[0x2448]) - 887621020 - ((2 * LODWORD(STACK[0x2448])) & 0x962FF4C8);
  v226 = v219 + v156 + 1684434702 - ((2 * (v219 + v156)) & 0xC8CCDE1C);
  v227 = LODWORD(STACK[0x2468]) + 1684434702 - ((2 * LODWORD(STACK[0x2468])) & 0xC8CCDE1C);
  LODWORD(v203) = (v218 >> v181) + 1665409870 - ((2 * (v218 >> v181)) & 0xC688469C);
  LODWORD(v218) = (STACK[0x2338] << v61) ^ 0x41EECD86 ^ (STACK[0x2340] >> v151) ^ LODWORD(STACK[0x2348]);
  v228 = STACK[0x2780];
  LODWORD(STACK[0x2798]) = v218 ^ ((v203 ^ 0x6344234E) + LODWORD(STACK[0x2780])) ^ LODWORD(STACK[0x26E8]);
  LODWORD(v199) = (STACK[0x2290] >> v151) - 38164035 - ((2 * (STACK[0x2290] >> v151)) & 0xFB73537A);
  LODWORD(v97) = STACK[0x2368];
  LODWORD(STACK[0x2750]) = LODWORD(STACK[0x2330]) ^ (LODWORD(STACK[0x2368]) + (v199 ^ 0xFDB9A9BD)) ^ 0x3EBA1D99 ^ LODWORD(STACK[0x26E0]);
  LODWORD(STACK[0x2748]) = v141 ^ 0x4AE4B281 ^ v213;
  LODWORD(STACK[0x2740]) = v157 ^ 0x58B290F ^ v213 ^ LODWORD(STACK[0x2458]);
  LODWORD(STACK[0x2680]) ^= LODWORD(STACK[0x2320]) ^ LODWORD(STACK[0x2328]) ^ (v97 + v172) ^ 0xFAD7816E;
  LODWORD(v213) = LODWORD(STACK[0x2678]) ^ LODWORD(STACK[0x2318]) ^ v225;
  LODWORD(STACK[0x2730]) = (LODWORD(STACK[0x2310]) + 80986147) ^ v226 ^ 0x44120E91 ^ LODWORD(STACK[0x2670]);
  LODWORD(STACK[0x2728]) = (LODWORD(STACK[0x2308]) - 494270216) ^ v225 ^ 0x9ABC5824 ^ LODWORD(STACK[0x2660]);
  LODWORD(STACK[0x2670]) = (LODWORD(STACK[0x2300]) + 1698447164) ^ v226 ^ 0x153BFF87 ^ LODWORD(STACK[0x2650]);
  LODWORD(STACK[0x2660]) = LODWORD(STACK[0x22F8]) ^ (v173 + (v222 ^ 0xB8F880E8)) ^ 0xB321AAB8 ^ LODWORD(STACK[0x2658]);
  LODWORD(v172) = LODWORD(STACK[0x22E8]) ^ LODWORD(STACK[0x22F0]);
  LODWORD(STACK[0x2678]) = v156;
  LODWORD(STACK[0x2658]) = v172 ^ (v207 | v156) ^ 0xE7F92A2B ^ LODWORD(STACK[0x2638]);
  v229 = (v203 ^ 0x6344234E | v228) - ((2 * (v203 ^ 0x6344234E | v228)) & 0x8B0CA004) + 1166430210;
  LODWORD(v151) = v157;
  LODWORD(STACK[0x2720]) = v157 ^ v229 ^ 0x942C00D5 ^ LODWORD(STACK[0x2518]);
  LODWORD(STACK[0x2718]) = v157 ^ 0xD1AA50D7 ^ LODWORD(STACK[0x22E0]) ^ LODWORD(STACK[0x22D8]) ^ (v97 | v199 ^ 0xFDB9A9BD) ^ LODWORD(STACK[0x2668]);
  LODWORD(STACK[0x2668]) = (LODWORD(STACK[0x22D0]) + 1277342064) ^ v224 ^ 0x3CE6CD17 ^ LODWORD(STACK[0x2640]);
  LODWORD(v177) = v177 ^ (LODWORD(STACK[0x22C8]) - 1544317012 - ((2 * LODWORD(STACK[0x22C8])) & 0x47E72F58));
  v230 = LODWORD(STACK[0x25E0]) ^ (v177 - ((2 * v177) & 0x71F101D0) - 1191673624) ^ v222 ^ 0xDDA8D7E2;
  v231 = LODWORD(STACK[0x22B8]) ^ LODWORD(STACK[0x22C0]) ^ (v219 | v203 ^ 0x6344234E) ^ 0x1F259E4B ^ LODWORD(STACK[0x25E8]);
  v232 = LODWORD(STACK[0x1E98]) ^ LODWORD(STACK[0x22A8]) ^ LODWORD(STACK[0x22B0]) ^ (v199 ^ 0xFDB9A9BD | v221) ^ 0x73A11984 ^ LODWORD(STACK[0x25D8]);
  v233 = LODWORD(STACK[0x2298]) ^ LODWORD(STACK[0x22A0]) ^ (v207 + LODWORD(STACK[0x2460])) ^ 0x2F96314D ^ LODWORD(STACK[0x2630]);
  LODWORD(v220) = ((LODWORD(STACK[0x2268]) ^ (LODWORD(STACK[0x2260]) + (v222 ^ 0xB8F880E8))) - 230758901 - ((2 * (LODWORD(STACK[0x2268]) ^ (LODWORD(STACK[0x2260]) + (v222 ^ 0xB8F880E8)))) & 0xE47DCC16)) ^ LODWORD(STACK[0x1E98]);
  v234 = LODWORD(STACK[0x2628]) ^ (v220 - ((2 * v220) & 0x4E573426) - 1490314733) ^ 0xB98CDD1B;
  v235 = (LODWORD(STACK[0x2278]) - 1158482382) ^ v229 ^ 0x232B093A ^ LODWORD(STACK[0x2618]);
  v236 = v223 ^ v199 ^ 0x9DD4F74E ^ ((LODWORD(STACK[0x2358]) ^ 0x65B8EDAB ^ LODWORD(STACK[0x2610])) - 38164035 - ((2 * (LODWORD(STACK[0x2358]) ^ 0x65B8EDAB ^ LODWORD(STACK[0x2610]))) & 0xFB73537A));
  v237 = STACK[0x2440];
  v238 = STACK[0x2380];
  LODWORD(v199) = v173 + v97;
  v239 = v213 ^ 0xC3FE9D01;
  v240 = (LODWORD(STACK[0x2440]) ^ 0x657B5D78) + (LODWORD(STACK[0x2380]) ^ 0xD4E4BAD4) + (v213 ^ 0xCB17FA64);
  LODWORD(v213) = LODWORD(STACK[0x2610]) ^ ((v199 ^ LODWORD(STACK[0x2370])) - ((2 * (v199 ^ LODWORD(STACK[0x2370]))) & 0xA7CBBFFC) - 739909634);
  LODWORD(v213) = ((v213 ^ 0x178843AD) - 230758901 - 2 * ((v213 ^ 0x178843AD) & 0x723EE61B ^ v213 & 0x10)) ^ LODWORD(STACK[0x1E98]);
  LODWORD(v213) = (v213 - 1579847176 - ((2 * v213) & 0x43AAE3F0)) ^ LODWORD(STACK[0x24E0]);
  LODWORD(v213) = (v213 - 999449517 - ((2 * v213) & 0x88DB38A6)) ^ v151;
  v241 = LODWORD(STACK[0x1E98]) ^ LODWORD(STACK[0x2648]) ^ 0xFA8F420A ^ (v213 - ((2 * v213) & 0x2CC6840C) + 375603718);
  LODWORD(STACK[0x2468]) = 1 - v240;
  v242 = STACK[0x2700];
  v243 = STACK[0x25C0];
  if ((1 - v240))
  {
    v244 = STACK[0x2700];
  }

  else
  {
    v244 = STACK[0x25C0];
  }

  LODWORD(STACK[0x26F8]) = v244;
  v245 = STACK[0x2508];
  if ((1 - v240))
  {
    v242 = STACK[0x2508];
  }

  LODWORD(STACK[0x2700]) = v242;
  v246 = STACK[0x25B8];
  if ((1 - v240))
  {
    v247 = STACK[0x25B8];
  }

  else
  {
    v247 = v245;
  }

  LODWORD(STACK[0x26E0]) = v247;
  if ((1 - v240))
  {
    v248 = v243;
  }

  else
  {
    v248 = v246;
  }

  v249 = STACK[0x2598];
  v250 = STACK[0x2478];
  if ((1 - v240))
  {
    v251 = STACK[0x2598];
  }

  else
  {
    v251 = STACK[0x2478];
  }

  LODWORD(STACK[0x26E8]) = v251;
  v252 = STACK[0x2280];
  if ((1 - v240))
  {
    v249 = STACK[0x2280];
  }

  LODWORD(STACK[0x26F0]) = v249;
  if ((1 - v240))
  {
    v253 = v250;
  }

  else
  {
    v253 = STACK[0x2510];
  }

  if ((1 - v240))
  {
    v254 = STACK[0x2510];
  }

  else
  {
    v254 = v252;
  }

  v255 = LODWORD(STACK[0x2450]) ^ v224 ^ 0x41EECD86;
  v256 = v227 ^ v226 ^ 0x41EECD86;
  v257 = LODWORD(STACK[0x2448]) ^ v225 ^ 0x41EECD86;
  if ((1 - v240))
  {
    v258 = v231;
  }

  else
  {
    v258 = v230;
  }

  LODWORD(STACK[0x2630]) = v258;
  if ((1 - v240))
  {
    v259 = v230;
  }

  else
  {
    v259 = v233;
  }

  if ((1 - v240))
  {
    v260 = v233;
  }

  else
  {
    v260 = v232;
  }

  LODWORD(STACK[0x25E0]) = v260;
  if ((1 - v240))
  {
    v261 = v232;
  }

  else
  {
    v261 = v231;
  }

  if ((1 - v240))
  {
    v262 = v235;
  }

  else
  {
    v262 = v234;
  }

  if ((1 - v240))
  {
    v263 = v234;
  }

  else
  {
    v263 = v241;
  }

  if ((1 - v240))
  {
    v264 = v236;
  }

  else
  {
    v264 = v235;
  }

  if ((1 - v240))
  {
    v265 = v241;
  }

  else
  {
    v265 = v236;
  }

  v266 = v237 ^ 0x22FDA193;
  v267 = v240 - ((2 * v240 + 1222212842) & 0xF18F0706);
  v268 = STACK[0x25C8];
  LODWORD(STACK[0x2368]) = v238 ^ 0xAE9B8A79;
  if ((1 - v240))
  {
    v269 = v238 ^ 0xAE9B8A79;
  }

  else
  {
    v269 = v268;
  }

  v270 = STACK[0x25D0];
  if (((1 - v240) & 1) == 0)
  {
    v268 = STACK[0x25D0];
  }

  LODWORD(STACK[0x2508]) = v268;
  if ((1 - v240))
  {
    v271 = v270;
  }

  else
  {
    v271 = STACK[0x2778];
  }

  v272 = STACK[0x25B0];
  v273 = STACK[0x2488];
  if ((1 - v240))
  {
    v274 = STACK[0x25B0];
  }

  else
  {
    v274 = STACK[0x2488];
  }

  LODWORD(STACK[0x25D8]) = v274;
  if ((1 - v240))
  {
    v275 = v273;
  }

  else
  {
    v275 = STACK[0x2768];
  }

  if ((1 - v240))
  {
    v276 = STACK[0x2770];
  }

  else
  {
    v276 = v272;
  }

  v277 = STACK[0x2470];
  if ((1 - v240))
  {
    v278 = STACK[0x2748];
  }

  else
  {
    v278 = STACK[0x2470];
  }

  if (((1 - v240) & 1) == 0)
  {
    v277 = v266;
  }

  LODWORD(STACK[0x25D0]) = v277;
  if ((1 - v240))
  {
    v279 = v266;
  }

  else
  {
    v279 = STACK[0x2758];
  }

  LODWORD(STACK[0x2598]) = v257;
  if (((1 - v240) & 1) == 0)
  {
    v257 = v255;
  }

  v280 = STACK[0x2798];
  if ((1 - v240))
  {
    v281 = v255;
  }

  else
  {
    v281 = STACK[0x2798];
  }

  LODWORD(STACK[0x25C8]) = v281;
  LODWORD(STACK[0x25B8]) = v256;
  if ((1 - v240))
  {
    v256 = v280;
    v282 = STACK[0x2680];
  }

  else
  {
    v282 = STACK[0x2740];
  }

  if ((1 - v240))
  {
    v283 = v239;
  }

  else
  {
    v283 = STACK[0x2680];
  }

  LODWORD(STACK[0x25B0]) = v283;
  if ((1 - v240))
  {
    v284 = STACK[0x2750];
  }

  else
  {
    v284 = v239;
  }

  if ((1 - v240))
  {
    v285 = STACK[0x2670];
  }

  else
  {
    v285 = STACK[0x2728];
  }

  v286 = STACK[0x2660];
  if ((1 - v240))
  {
    v287 = STACK[0x2660];
  }

  else
  {
    v287 = STACK[0x2670];
  }

  LODWORD(STACK[0x2510]) = v287;
  if ((1 - v240))
  {
    v288 = STACK[0x2730];
  }

  else
  {
    v288 = v286;
  }

  v289 = STACK[0x2658];
  v290 = STACK[0x2668];
  if ((1 - v240))
  {
    v291 = STACK[0x2658];
  }

  else
  {
    v291 = STACK[0x2668];
  }

  LODWORD(STACK[0x2518]) = v291;
  if ((1 - v240))
  {
    v292 = v290;
  }

  else
  {
    v292 = STACK[0x2718];
  }

  if ((1 - v240))
  {
    v293 = STACK[0x2720];
  }

  else
  {
    v293 = v289;
  }

  LODWORD(STACK[0x2328]) = 1657519599 - v267;
  if (((1657519599 - v267) & 2) != 0)
  {
    v294 = v288;
  }

  else
  {
    v294 = v285;
  }

  LODWORD(STACK[0x2798]) = v294;
  if (((1657519599 - v267) & 2) != 0)
  {
    v295 = v285;
  }

  else
  {
    v295 = v288;
  }

  LODWORD(STACK[0x2668]) = v295;
  LODWORD(STACK[0x1CA8]) = LODWORD(STACK[0x2760]) + 76;
  LODWORD(STACK[0x2320]) = LODWORD(STACK[0x2738]) + 53;
  LODWORD(STACK[0x1CB0]) = LODWORD(STACK[0x2710]) << 16;
  LODWORD(STACK[0x25C0]) = v267 - 1657519597;
  v296 = v240 + 611106421;
  LODWORD(STACK[0x2338]) = 2 * v296;
  LODWORD(STACK[0x2330]) = (v296 ^ 0x75BDF457) - 537673796;
  LODWORD(STACK[0x2680]) = LODWORD(STACK[0x1D70]) ^ 0x8C;
  v297 = LODWORD(STACK[0x27A0]) ^ 0x2E33;
  v298 = *(v4 + 8 * SLODWORD(STACK[0x27A0]));
  LODWORD(STACK[0x2440]) = v269;
  LODWORD(STACK[0x2380]) = v271;
  if (((1657519599 - v267) & 2) != 0)
  {
    v299 = v271;
  }

  else
  {
    v299 = v269;
  }

  LODWORD(STACK[0x2710]) = v299;
  LODWORD(STACK[0x2610]) = v248;
  v300 = STACK[0x2700];
  if (((1657519599 - v267) & 2) != 0)
  {
    v300 = v248;
  }

  LODWORD(STACK[0x2738]) = v300;
  v301 = STACK[0x26F8];
  if (((1657519599 - v267) & 2) == 0)
  {
    v301 = STACK[0x26E0];
  }

  LODWORD(STACK[0x27A0]) = v301;
  LODWORD(STACK[0x25E8]) = v253;
  v302 = STACK[0x26F0];
  if (((1657519599 - v267) & 2) != 0)
  {
    v302 = v253;
  }

  LODWORD(STACK[0x2638]) = v302;
  LODWORD(STACK[0x2388]) = v254;
  v303 = STACK[0x26E8];
  if (((1657519599 - v267) & 2) == 0)
  {
    v303 = v254;
  }

  LODWORD(STACK[0x2640]) = v303;
  LODWORD(STACK[0x2438]) = v275;
  LODWORD(STACK[0x2390]) = v276;
  if (((1657519599 - v267) & 2) != 0)
  {
    v304 = v276;
  }

  else
  {
    v304 = v275;
  }

  LODWORD(STACK[0x2760]) = v304;
  LODWORD(STACK[0x2378]) = v278;
  if (((1657519599 - v267) & 2) != 0)
  {
    v305 = v278;
  }

  else
  {
    v305 = v279;
  }

  LODWORD(STACK[0x2648]) = v305;
  LODWORD(STACK[0x2370]) = v257;
  LODWORD(STACK[0x2360]) = v256;
  if (((1657519599 - v267) & 2) != 0)
  {
    v306 = v256;
  }

  else
  {
    v306 = v257;
  }

  LODWORD(STACK[0x2650]) = v306;
  LODWORD(STACK[0x2358]) = v282;
  LODWORD(STACK[0x2350]) = v284;
  if (((1657519599 - v267) & 2) != 0)
  {
    v307 = v282;
  }

  else
  {
    v307 = v284;
  }

  LODWORD(STACK[0x2658]) = v307;
  LODWORD(STACK[0x2348]) = v292;
  LODWORD(STACK[0x2340]) = v293;
  if (((1657519599 - v267) & 2) != 0)
  {
    v308 = v292;
  }

  else
  {
    v308 = v293;
  }

  LODWORD(STACK[0x2660]) = v308;
  LODWORD(STACK[0x2488]) = v259;
  LODWORD(STACK[0x2460]) = v261;
  if (((1657519599 - v267) & 2) != 0)
  {
    v309 = v261;
  }

  else
  {
    v309 = v259;
  }

  LODWORD(STACK[0x2670]) = v309;
  LODWORD(STACK[0x2470]) = v262;
  LODWORD(STACK[0x2448]) = v265;
  if (((1657519599 - v267) & 2) != 0)
  {
    v310 = v265;
  }

  else
  {
    v310 = v262;
  }

  LODWORD(STACK[0x2628]) = v310;
  LODWORD(STACK[0x2458]) = v263;
  LODWORD(STACK[0x2450]) = v264;
  if (((1657519599 - v267) & 2) != 0)
  {
    v311 = v263;
  }

  else
  {
    v311 = v264;
  }

  LODWORD(STACK[0x2618]) = v311;
  v312 = STACK[0x4F4];
  LODWORD(STACK[0x2478]) = LODWORD(STACK[0x4F4]) ^ 0xA73C86F5;
  LODWORD(STACK[0x2088]) = v297;
  return v298(2960747174, v312 ^ 0x13C86F5u);
}

uint64_t sub_244AA7A60(int a1, int a2)
{
  v5 = STACK[0x2088];
  v6 = a1 ^ 0xB0796AA6;
  v7 = a1 ^ (2 * ((a1 ^ 0xB0796AA6) & STACK[0x2478]));
  v8 = STACK[0x2818];
  v9 = STACK[0x2840];
  v10 = (((v7 ^ 0xA6) & STACK[0x2680]) >> STACK[0x2840]) | (((LODWORD(STACK[0x2088]) - 150) ^ 0xB079409C ^ v7) << STACK[0x2818]);
  v11 = (v10 - 1579847176 - ((2 * v10) & 0x43AAE3F0)) ^ LODWORD(STACK[0x24E0]);
  v12 = *(*(&off_278E1E490 + v3) + (a1 ^ 0xB0796A12) - 3) ^ 0x4C45796B;
  v13 = STACK[0x2790];
  v14 = (((((v12 ^ (2 * (v12 & STACK[0x2838]))) & v13) + 295728818 - ((2 * ((v12 ^ (2 * (v12 & STACK[0x2838]))) & v13)) & 0x2340ED64)) ^ 0x11A076B2) >> STACK[0x2878]) + (((v12 ^ (2 * (v12 & STACK[0x2838]))) & STACK[0x27D0]) << STACK[0x2848]);
  v15 = LODWORD(STACK[0x23A8]) ^ LODWORD(STACK[0x23B0]);
  v16 = ((v11 - ((2 * v11) & 0x34) - 102) ^ LODWORD(STACK[0x24E8]));
  v17 = 4 * ((v16 ^ 0x3CF9FF7FDFFFDE75) + ((2 * v16) & 0xEA)) + 0xC1802008000862CLL;
  *(&STACK[0x10ED0] + v17) = v15 ^ 0x865AEDA5 ^ (v14 - 445443787 - ((2 * v14) & 0xCAE6226A));
  v18 = (-8177 * *(*(&off_278E1E490 + v2) + (a1 ^ 0xB0796AB2) - 2) + 16726) ^ 0x55BA;
  v19 = (v18 - 1354662897 - ((2 * v18) & 0xF81E)) ^ 0xAF417C0F;
  v20 = (((v19 ^ (2 * (v19 & a2))) & v13) >> v9) + (((v19 ^ (2 * (v19 & a2))) & STACK[0x27D8]) << v8);
  *(&STACK[0x11870] + v17) = v15 ^ 0x34A3796C ^ (v20 - 445443787 - ((2 * v20) & 0xCAE6226A));
  return (*(v4 + 8 * ((47 * (((v6 - 1334220122 - ((2 * v6 + 2) & 0x60F2D54C) + 1) ^ 0xB0796A00) < 0x100)) | v5)))();
}

uint64_t sub_244AA7CB8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(STACK[0x1C90]) = LODWORD(STACK[0x26D8]) - 2 * LODWORD(STACK[0x2708]);
  LODWORD(STACK[0x1C88]) = LODWORD(STACK[0x26C8]) - LODWORD(STACK[0x26D0]);
  LODWORD(STACK[0x1C98]) = LODWORD(STACK[0x2320]) + LODWORD(STACK[0x26B0]);
  LODWORD(STACK[0x1CA0]) = LODWORD(STACK[0x26B8]) - LODWORD(STACK[0x26C0]);
  if (STACK[0x2468])
  {
    v6 = STACK[0x2778];
  }

  else
  {
    v6 = STACK[0x2368];
  }

  if (STACK[0x2468])
  {
    v7 = STACK[0x2768];
  }

  else
  {
    v7 = STACK[0x2770];
  }

  if (STACK[0x2468])
  {
    v8 = STACK[0x2758];
  }

  else
  {
    v8 = STACK[0x2748];
  }

  v9 = STACK[0x2598];
  if (STACK[0x2468])
  {
    v9 = STACK[0x25B8];
    v10 = STACK[0x2740];
  }

  else
  {
    v10 = STACK[0x2750];
  }

  if (STACK[0x2468])
  {
    v11 = STACK[0x2728];
  }

  else
  {
    v11 = STACK[0x2730];
  }

  if (STACK[0x2468])
  {
    v12 = STACK[0x2718];
  }

  else
  {
    v12 = STACK[0x2720];
  }

  v13 = (STACK[0x2328] & 2) == 0;
  if ((STACK[0x2328] & 2) != 0)
  {
    v14 = STACK[0x2440];
  }

  else
  {
    v14 = STACK[0x2380];
  }

  LODWORD(STACK[0x2708]) = v14;
  if (v13)
  {
    v15 = STACK[0x26F8];
  }

  else
  {
    v15 = STACK[0x26E0];
  }

  LODWORD(STACK[0x2778]) = v15;
  if (v13)
  {
    v16 = STACK[0x2610];
  }

  else
  {
    v16 = STACK[0x2700];
  }

  LODWORD(STACK[0x26E0]) = v16;
  if (v13)
  {
    v17 = STACK[0x26E8];
  }

  else
  {
    v17 = STACK[0x2388];
  }

  LODWORD(STACK[0x26D8]) = v17;
  if (v13)
  {
    v18 = STACK[0x25E8];
  }

  else
  {
    v18 = STACK[0x26F0];
  }

  if (v13)
  {
    v19 = STACK[0x2390];
  }

  else
  {
    v19 = STACK[0x2438];
  }

  LODWORD(STACK[0x2748]) = v19;
  if (v13)
  {
    v20 = STACK[0x2378];
  }

  else
  {
    v20 = a4;
  }

  if (v13)
  {
    v21 = STACK[0x2360];
  }

  else
  {
    v21 = STACK[0x2370];
  }

  LODWORD(STACK[0x2468]) = v21;
  v22 = STACK[0x2358];
  if (!v13)
  {
    v22 = STACK[0x2350];
  }

  LODWORD(STACK[0x2740]) = v22;
  v23 = STACK[0x2348];
  if (!v13)
  {
    v23 = STACK[0x2340];
  }

  LODWORD(STACK[0x2758]) = v23;
  v24 = STACK[0x2488];
  if (v13)
  {
    v24 = STACK[0x2460];
  }

  LODWORD(STACK[0x2750]) = v24;
  v25 = STACK[0x2458];
  if (!v13)
  {
    v25 = STACK[0x2450];
  }

  LODWORD(STACK[0x25B8]) = v25;
  v26 = STACK[0x2470];
  if (v13)
  {
    v26 = STACK[0x2448];
  }

  LODWORD(STACK[0x2610]) = v26;
  LODWORD(STACK[0x25E8]) = LODWORD(STACK[0x2678]) | LODWORD(STACK[0x2780]);
  LODWORD(STACK[0x2598]) = LODWORD(STACK[0x2330]) + (STACK[0x2338] & 0xEB7BE8AE);
  v27 = STACK[0x2508];
  if (v13)
  {
    v28 = STACK[0x2508];
  }

  else
  {
    v28 = v6;
  }

  LODWORD(STACK[0x2700]) = v28;
  if (v13)
  {
    v27 = v6;
  }

  LODWORD(STACK[0x26F8]) = v27;
  if (v13)
  {
    v29 = STACK[0x25D8];
  }

  else
  {
    v29 = v7;
  }

  if (v13)
  {
    v30 = v7;
  }

  else
  {
    v30 = STACK[0x25D8];
  }

  LODWORD(STACK[0x2770]) = v30;
  v31 = STACK[0x25D0];
  if (v13)
  {
    v32 = v8;
  }

  else
  {
    v32 = STACK[0x25D0];
  }

  LODWORD(STACK[0x26D0]) = v32;
  if (v13)
  {
    v33 = v31;
  }

  else
  {
    v33 = v8;
  }

  v34 = STACK[0x25C8];
  if (v13)
  {
    v35 = v9;
  }

  else
  {
    v35 = STACK[0x25C8];
  }

  LODWORD(STACK[0x26C0]) = v35;
  if (v13)
  {
    v36 = v34;
  }

  else
  {
    v36 = v9;
  }

  LODWORD(STACK[0x26B8]) = v36;
  v37 = STACK[0x25B0];
  if (v13)
  {
    v38 = v10;
  }

  else
  {
    v38 = STACK[0x25B0];
  }

  LODWORD(STACK[0x25D0]) = v38;
  if (v13)
  {
    v10 = v37;
  }

  v39 = STACK[0x2510];
  if (v13)
  {
    v40 = v11;
  }

  else
  {
    v40 = STACK[0x2510];
  }

  if (!v13)
  {
    v39 = v11;
  }

  LODWORD(STACK[0x26C8]) = v39;
  v41 = STACK[0x2518];
  if (v13)
  {
    v42 = STACK[0x2518];
  }

  else
  {
    v42 = v12;
  }

  LODWORD(STACK[0x25D8]) = v42;
  if (v13)
  {
    v41 = v12;
  }

  LODWORD(STACK[0x2720]) = v41;
  v43 = STACK[0x2630];
  v44 = STACK[0x25E0];
  if (v13)
  {
    v45 = STACK[0x25E0];
  }

  else
  {
    v45 = STACK[0x2630];
  }

  LODWORD(STACK[0x2678]) = v45;
  if (!v13)
  {
    v43 = v44;
  }

  LODWORD(STACK[0x2730]) = v43;
  v46 = v27 ^ LODWORD(STACK[0x27A0]) ^ 0x1A8BD8B6;
  LODWORD(STACK[0x2768]) = v4 + 7534;
  v47 = (v46 + 2055155885 - (((v4 + 7534) ^ 0xF4FE26F2) & (2 * v46))) ^ v14;
  v48 = (v47 + 2055155885 - ((2 * v47) & 0xF4FE615A)) ^ LODWORD(STACK[0x2710]);
  v49 = ((LODWORD(STACK[0x2738]) ^ 0x1A8BD8B6 ^ v28) + 1626662939 - ((2 * (LODWORD(STACK[0x2738]) ^ 0x1A8BD8B6 ^ v28)) & 0xC1E9D036)) ^ v16;
  v50 = (v48 + 1626662939 - ((2 * v48) & 0xC1E9D036)) ^ v15;
  v51 = STACK[0x2638];
  v52 = (v49 + 765575438 - ((2 * v49) & 0x5B43821C)) ^ LODWORD(STACK[0x2638]);
  v53 = STACK[0x2640];
  v54 = (v52 + 765575438 - ((2 * v52) & 0x5B43821C)) ^ LODWORD(STACK[0x2640]);
  v55 = (v50 - 1272453619 - ((2 * v50) & 0x684FCC1A)) ^ v30;
  v56 = (v55 - 1272453619 - ((2 * v55) & 0x684FCC1A)) ^ v19;
  v57 = (v56 + 765575438 - ((2 * v56) & 0x5B43821C)) ^ v17;
  v58 = (v57 - 1272453619 - ((2 * v57) & 0x684FCC1A)) ^ LODWORD(STACK[0x2760]);
  v59 = (v54 + 765575438 - ((2 * v54) & 0x5B43821C)) ^ v18;
  v60 = v18;
  v61 = STACK[0x2650];
  v62 = (v58 + 1106169122 - ((2 * v58) & 0x83DD9A44)) ^ LODWORD(STACK[0x2650]);
  v63 = (v62 + 1200028907 - ((2 * v62) & 0x8F0DF9D6)) ^ v32;
  v64 = v33;
  v65 = v20 ^ v29 ^ v33 ^ (v59 - 1272453619 - ((2 * v59) & 0x684FCC1A));
  v66 = STACK[0x2648];
  v67 = (v63 + 1200028907 - ((2 * v63) & 0x8F0DF9D6)) ^ LODWORD(STACK[0x2648]);
  v68 = (v65 + 1106169122 - ((2 * v65) & 0x83DD9A44)) ^ v35;
  v69 = (v68 + 1106169122 - ((2 * v68) & 0x83DD9A44)) ^ v21;
  v70 = (v67 + 1106169222 + ~((2 * v67) & 0x83DD9A44) - 99) ^ v36;
  v71 = (v69 + 149514085 - ((2 * v69) & 0x11D2CECA)) ^ v38;
  v72 = (v71 + 149514085 - ((2 * v71) & 0x11D2CECA)) ^ LODWORD(STACK[0x2740]);
  v73 = (v70 + 149514085 - ((2 * v70) & 0x11D2CECA)) ^ v10;
  v74 = (v73 + 318036800 - ((2 * v73) & 0x25E9B680)) ^ LODWORD(STACK[0x2798]);
  v75 = STACK[0x2658];
  v76 = (v72 + 149514085 - ((2 * v72) & 0x11D2CECA)) ^ LODWORD(STACK[0x2658]);
  v77 = (v74 + 318036800 - ((2 * v74) & 0x25E9B680)) ^ v40;
  v78 = v40;
  v79 = STACK[0x2660];
  v80 = (v77 - 777367337 - ((2 * v77) & 0xA354A1AE)) ^ LODWORD(STACK[0x2660]);
  v81 = STACK[0x26C8];
  v82 = (v76 + 318036800 - ((2 * v76) & 0x25E9B680)) ^ LODWORD(STACK[0x26C8]);
  v83 = (v82 - 777367337 - ((2 * v82) & 0xA354A1AE)) ^ LODWORD(STACK[0x2758]);
  v84 = (v83 - 777367337 - ((2 * v83) & 0xA354A1AE)) ^ v42;
  v85 = STACK[0x2668];
  v86 = (v80 + 318036800 - ((2 * v80) & 0x25E9B680)) ^ LODWORD(STACK[0x2668]);
  LODWORD(STACK[0x2728]) = LODWORD(STACK[0x2750]) ^ LODWORD(STACK[0x2730]) ^ (v84 - 335827682 - ((2 * v84) & 0xD7F75A3C));
  v87 = STACK[0x2678];
  v88 = (v86 - 335827682 - ((2 * v86) & 0xD7F75A3C)) ^ LODWORD(STACK[0x2678]);
  v89 = STACK[0x2670];
  v90 = STACK[0x2720];
  LODWORD(STACK[0x2718]) = LODWORD(STACK[0x2670]) ^ LODWORD(STACK[0x2720]) ^ (v88 - 777367337 - ((2 * v88) & 0xA354A1AE));
  v91 = STACK[0x20D0];
  v92 = LODWORD(STACK[0x20D0]) ^ 0x3085F128 ^ LODWORD(STACK[0x26E0]);
  v93 = STACK[0x27B8];
  LODWORD(STACK[0x26F0]) = LODWORD(STACK[0x27B8]) ^ 0x9E8C3FEA ^ LODWORD(STACK[0x2738]);
  LODWORD(STACK[0x26E0]) = v93 ^ 0x9E8C3FEA ^ LODWORD(STACK[0x2778]);
  LODWORD(STACK[0x26E8]) = v91 ^ 0xA864315F ^ v51;
  LODWORD(STACK[0x2780]) = v91 ^ 0xA864315F ^ v60;
  LODWORD(STACK[0x2778]) = v93 ^ 0x66DFF9D ^ v53;
  LODWORD(STACK[0x26B0]) = v93 ^ 0x66DFF9D ^ LODWORD(STACK[0x26D8]);
  v94 = v91 ^ 0xE44957B5 ^ LODWORD(STACK[0x2748]);
  v95 = v93 ^ 0x4A409977 ^ LODWORD(STACK[0x2770]);
  LODWORD(STACK[0x26D8]) = v93 ^ 0x4A409977 ^ v29;
  v96 = v91 ^ 0x33862839 ^ v20;
  LODWORD(STACK[0x26D0]) ^= v91 ^ 0x33862839;
  v97 = v93 ^ 0x9D8FE6FB ^ v66;
  v98 = v93 ^ 0x9D8FE6FB ^ v64;
  LODWORD(STACK[0x2770]) = v91 ^ 0xAA244AAF ^ v61;
  v99 = v91 ^ 0xAA244AAF ^ LODWORD(STACK[0x2468]);
  LODWORD(STACK[0x2748]) = v93 ^ 0x42D846D ^ LODWORD(STACK[0x26C0]);
  v100 = v93 ^ 0x42D846D ^ LODWORD(STACK[0x26B8]);
  LODWORD(STACK[0x26C0]) = v91 ^ 0x9D03466A ^ LODWORD(STACK[0x25D0]);
  v101 = v91 ^ 0x9D03466A ^ v10;
  v102 = v93 ^ 0x330A88A8 ^ LODWORD(STACK[0x2740]);
  LODWORD(STACK[0x26B8]) = v93 ^ 0x330A88A8 ^ v75;
  v103 = v91 ^ 0xF11FEA52 ^ v78;
  LODWORD(STACK[0x26C8]) = v91 ^ 0xF11FEA52 ^ v81;
  v104 = v91 ^ 0xF11FEA52 ^ v85;
  v105 = v93 ^ 0x666D749E ^ v79;
  v106 = v93 ^ 0x666D749E ^ LODWORD(STACK[0x2758]);
  v107 = v91 ^ 0xC864BA5C ^ v90;
  v108 = v91 ^ 0xC864BA5C ^ LODWORD(STACK[0x25D8]);
  v109 = v93 ^ 0xE62A140F ^ v87;
  v110 = v93 ^ 0xE62A140F ^ LODWORD(STACK[0x2730]);
  v111 = LODWORD(STACK[0x27A0]) ^ v93;
  LODWORD(STACK[0x2738]) = v111;
  v112 = LODWORD(STACK[0x2760]) ^ v91;
  LODWORD(STACK[0x2740]) = v112;
  LODWORD(STACK[0x2638]) = v92;
  v113 = ((v111 ^ v112 ^ 0x7ADAC0D4) - 1573233005 - ((2 * (v111 ^ v112 ^ 0x7ADAC0D4)) & 0x4474BD26)) ^ v92;
  v114 = v91 ^ 0x4823DACD ^ v89;
  v115 = (v113 + 2055155885 - ((2 * v113) & 0xF4FE615A)) ^ LODWORD(STACK[0x2700]);
  LODWORD(STACK[0x2670]) = v94;
  v116 = (v115 - 1574570472 - ((2 * v115) & 0x444BEC30)) ^ v94;
  LODWORD(STACK[0x25D0]) = v101;
  v117 = (v116 + 1738630831 - ((2 * v116) & 0xCF42CD5E)) ^ v101;
  LODWORD(STACK[0x27A0]) = v100;
  v118 = (v117 + 427933741 - ((2 * v117) & 0x3303805A)) ^ v100;
  v119 = (v118 + 2055155885 - ((2 * v118) & 0xF4FE615A)) ^ LODWORD(STACK[0x2710]);
  LODWORD(STACK[0x2658]) = v98;
  v120 = (v119 - 2041867406 - ((2 * v119) & 0xC9726E4)) ^ v98;
  LODWORD(STACK[0x2730]) = v105;
  v121 = (v120 - 343560917 - ((2 * v120) & 0xD70B5A56)) ^ v105;
  LODWORD(STACK[0x2678]) = v95;
  v122 = (v121 - 1574570472 - ((2 * v121) & 0x444BEC30)) ^ v95;
  v123 = (v122 + 2055155885 - ((2 * v122) & 0xF4FE615A)) ^ LODWORD(STACK[0x2708]);
  LODWORD(STACK[0x2348]) = v104;
  v124 = (v123 + 295728818 - ((2 * v123) & 0x2340ED64)) ^ v104;
  v125 = v93 ^ LODWORD(STACK[0x2798]) ^ 0x5F162490;
  LODWORD(STACK[0x25E0]) = v125;
  v126 = (v124 + 295728818 - ((2 * v124) & 0x2340ED64)) ^ v125;
  LODWORD(STACK[0x2650]) = v108;
  v127 = (v126 - 343560917 - ((2 * v126) & 0xD70B5A56)) ^ v108;
  LODWORD(STACK[0x25D8]) = v102;
  v128 = (v127 + 1738630831 - ((2 * v127) & 0xCF42CD5E)) ^ v102;
  LODWORD(STACK[0x2668]) = v96;
  v129 = (v128 - 2041867406 - ((2 * v128) & 0xC9726E4)) ^ v96;
  LODWORD(STACK[0x2660]) = v97;
  v130 = (v129 - 2041867406 - ((2 * v129) & 0xC9726E4)) ^ v97;
  v131 = (v130 - 2041867406 - ((2 * v130) & 0xC9726E4)) ^ LODWORD(STACK[0x26D0]);
  LODWORD(STACK[0x25C8]) = v109;
  v132 = (v131 + 1368600691 - ((2 * v131) & 0xA32660E6)) ^ v109;
  LODWORD(STACK[0x2760]) = v99;
  v133 = (v132 + 427933741 - ((2 * v132) & 0x3303805A)) ^ v99;
  v134 = (v133 + 2005841905 - ((2 * v133) & 0xEF1D6FE2)) ^ LODWORD(STACK[0x2778]);
  LODWORD(STACK[0x2758]) = v107;
  v135 = (v134 - 343560917 - ((2 * v134) & 0xD70B5A56)) ^ v107;
  LODWORD(STACK[0x2640]) = v114;
  v136 = (v135 + 1368600691 - ((2 * v135) & 0xA32660E6)) ^ v114;
  LODWORD(STACK[0x2630]) = v103;
  v137 = (v136 + 295728818 - ((2 * v136) & 0x2340ED64)) ^ v103;
  LODWORD(STACK[0x2720]) = v106;
  v138 = (v137 - 343560917 - ((2 * v137) & 0xD70B5A56)) ^ v106;
  v139 = (v138 + 2055155885 - ((2 * v138) & 0xF4FE615A)) ^ LODWORD(STACK[0x26F8]);
  v140 = (v139 + 2005841905 - ((2 * v139) & 0xEF1D6FE2)) ^ LODWORD(STACK[0x26E8]);
  v141 = (v140 - 1574570472 - ((2 * v140) & 0x444BEC30)) ^ LODWORD(STACK[0x26D8]);
  v142 = (v141 + 1738630831 - ((2 * v141) & 0xCF42CD5E)) ^ LODWORD(STACK[0x26B8]);
  v143 = (v142 + 2005841905 - ((2 * v142) & 0xEF1D6FE2)) ^ LODWORD(STACK[0x2780]);
  v144 = (v143 + 295728818 - ((2 * v143) & 0x2340ED64)) ^ LODWORD(STACK[0x26C8]);
  LODWORD(STACK[0x2648]) = v110;
  v145 = (v144 + 1368600691 - ((2 * v144) & 0xA32660E6)) ^ v110;
  v146 = (v145 + 1738630831 - ((2 * v145) & 0xCF42CD5E)) ^ LODWORD(STACK[0x26C0]);
  v147 = (v146 + 427933741 - ((2 * v146) & 0x3303805A)) ^ LODWORD(STACK[0x2770]);
  v148 = (v147 + 2005841905 - ((2 * v147) & 0xEF1D6FE2)) ^ LODWORD(STACK[0x26B0]);
  v149 = (v148 + 427933741 - ((2 * v148) & 0x3303805A)) ^ LODWORD(STACK[0x2748]);
  v150 = (v149 - 1573233005 - ((2 * v149) & 0x4474BD26)) ^ LODWORD(STACK[0x26F0]);
  v151 = LODWORD(STACK[0x2750]) ^ v91;
  LODWORD(STACK[0x2798]) = v151;
  LODWORD(STACK[0x2750]) = v151 ^ LODWORD(STACK[0x26E0]) ^ (v150 - 1573233005 - ((2 * v150) & 0x4474BD26));
  v152 = LODWORD(STACK[0x24E0]) ^ LODWORD(STACK[0x24E8]) ^ 0x4F7947F9;
  LODWORD(STACK[0x2628]) ^= v152;
  v153 = *(&off_278E1E490 + (v4 ^ 0x28A6)) - 4;
  v154 = v153[LOBYTE(STACK[0xD6E3]) ^ 0x64];
  LODWORD(STACK[0x2618]) ^= v152;
  HIDWORD(v155) = v154 ^ 1;
  LODWORD(v155) = (v154 ^ 0xB0) << 24;
  LOBYTE(v152) = v155 >> 27;
  LODWORD(STACK[0x2610]) ^= LODWORD(STACK[0x24D0]) ^ LODWORD(STACK[0x24D4]) ^ 0xE170893B;
  v156 = v153[LOBYTE(STACK[0xD6E2]) ^ 0xBLL];
  HIDWORD(v155) = v156 ^ 1;
  LODWORD(v155) = (v156 ^ 0xB0) << 24;
  v157 = v155 >> 27;
  v158 = LODWORD(STACK[0x25E8]) + 1513681843 - ((2 * LODWORD(STACK[0x25E8])) & 0xB471E766);
  HIDWORD(v155) = v157 ^ 0x1A;
  LODWORD(v155) = ~v157 << 24;
  v159 = *(&off_278E1E490 + v4 - 9979) - 8;
  v160 = v152 ^ 0xDA | ((((*(STACK[0x2698] + ((v155 >> 30) ^ 0x4CLL)) ^ 0x22) - 73) ^ 0xDD) << 8) | (((v159[LOBYTE(STACK[0xD6E0]) ^ 0x88] + 41) ^ 0xA) << 24);
  STACK[0x2098] = v153;
  v161 = LOBYTE(STACK[0xD6E1]);
  STACK[0x2090] = v159;
  LODWORD(v161) = (v160 & 0xFF00FFFF | (((v159[v161] + 41) ^ 0x53) << 16)) ^ 0x11;
  LODWORD(v161) = v161 ^ (2 * (v161 & LODWORD(STACK[0x2838])));
  v162 = STACK[0x2788];
  v163 = STACK[0x2840];
  v164 = ((v161 & v162) >> v163) - ((2 * ((v161 & v162) >> v163)) & 0xB89068CE) + 1548235879;
  LODWORD(STACK[0x2920]) = v164 ^ 0x4DE842D5;
  v165 = STACK[0x27D0];
  v166 = STACK[0x2818];
  LODWORD(v161) = (((v161 & v165) << v166) - ((2 * ((v161 & v165) << v166)) & 0xB89068CE) + 1548235879) ^ v164;
  LODWORD(STACK[0x2518]) = v161 - 437209539 + (~(2 * v161) | 0x341E9385);
  v167 = STACK[0x27D8];
  v168 = STACK[0x2790];
  v169 = STACK[0x2848];
  v170 = STACK[0x2878];
  v171 = STACK[0x1EC8];
  v172 = STACK[0x1EC8] & 0x7070706 ^ 0x85818281;
  v173 = STACK[0x1D78];
  v174 = STACK[0x1ED0];
  v175 = STACK[0x1ED0] & 0x7070706 ^ 0x85828681;
  v176 = LODWORD(STACK[0x1D60]) ^ 0x18604;
  LODWORD(v161) = ((v172 & v168) >> v170) - ((2 * ((v172 & v168) >> v170)) & 0xDC165CC0) + 1846226528;
  LODWORD(STACK[0x2508]) = (((v172 & (LODWORD(STACK[0x1D78]) ^ 0x6030004)) << STACK[0x2848]) + 1846226528 - ((2 * ((v172 & (LODWORD(STACK[0x1D78]) ^ 0x6030004)) << STACK[0x2848])) & 0xDC165CC0)) ^ v161;
  LODWORD(STACK[0x2510]) = (((v172 & v176) << v169) + 1846226528 - ((2 * ((v172 & v176) << v169)) & 0xDC165CC0)) ^ v161;
  v177 = (((v175 & v162) >> v163) - ((2 * ((v175 & v162) >> v163)) & 0x54E41DAE) + 712117975) ^ 0x2A720ED7;
  LODWORD(STACK[0x2488]) = v177 | ((v175 & v176) << v166);
  LODWORD(STACK[0x2470]) = v177 | (((v173 ^ 0x6030004) & v175) << v166);
  v178 = ((v171 & 0x48484848 ^ 0x2C2C2464) - 1728263170 - ((2 * (v171 & 0x48484848 ^ 0x2C2C2464)) & 0x10D890D8)) ^ 0x98FCCBFE;
  v179 = ((v178 & v167) - ((2 * (v178 & v167)) & 0x76037950) + 0x27E6CBF23B01BCA8) ^ 0x3B01BCA8;
  LODWORD(STACK[0x2468]) = (v179 << v166) | ((v178 & v162) >> v170);
  v180 = ((v174 & 0x48484848 ^ 0x6C6C2C6C) - 2076525384 - ((2 * (v174 & 0x48484848 ^ 0x6C6C2C6C)) & 0x8505850)) ^ 0x843ABCB8;
  v181 = ((v180 & v165) - ((2 * (v180 & v165)) & 0xEDB0B490) + 0x45EF8019F6D85A48) ^ 0xF6D85A48;
  LODWORD(STACK[0x2460]) = (v181 << v169) + ((v180 & v168) >> v163);
  v182 = (v179 << v169) ^ ((v178 & v168) >> v163);
  LODWORD(STACK[0x2458]) = v182 - 1573233005 - ((2 * v182) & 0x4474BD26);
  LODWORD(STACK[0x2450]) = (v181 << v166) ^ ((((v180 & v162) + 295728818 - ((2 * (v180 & v162)) & 0x2340ED64)) ^ 0x11A076B2) >> v170);
  v183 = v171 & 0x6B6B6B6A ^ 0x9F9FB4F7;
  LODWORD(v181) = v174 & 0x6B6B6B6A ^ 0xFFDCBCDF;
  v184 = (((v181 & v162) >> v170) ^ 0xDB3BEEFB) + 616829189 + ((2 * ((v181 & v162) >> v170)) & 0xB677DDF6);
  LODWORD(STACK[0x2448]) = ((v165 & v181) << v169) + v184;
  LODWORD(STACK[0x2440]) = ((v181 & v167) << v169) + v184;
  LODWORD(v179) = ((v183 & v168) >> v163) - ((2 * ((v183 & v168) >> v163)) & 0xF6BD6F70) - 77678664;
  LODWORD(STACK[0x2438]) = (((v183 & v167) << v166) - 77678664 - ((2 * ((v183 & v167) << v166)) & 0xF6BD6F70)) ^ v179;
  LODWORD(STACK[0x2390]) = v179 ^ 0xFB5EB7B8 | ((v183 & v165) << v166);
  v185 = STACK[0x2728];
  v186 = STACK[0x2718];
  v187 = STACK[0x2750];
  LODWORD(STACK[0x2078]) = (1660169909 * (LODWORD(STACK[0x2750]) ^ LODWORD(STACK[0x2718]) ^ 0x2E110EA)) ^ (1660169909 * (LODWORD(STACK[0x2728]) ^ 0x1B51FA54));
  v188 = v174 & 0xDEDEDEDE ^ 0x213763A5;
  v189 = ((v165 & v188) - ((2 * (v165 & v188)) & 0x43F6CC20) - 0xFCDA9DFDE0499F0) ^ 0x21FB6610;
  LODWORD(STACK[0x2388]) = (v189 << v166) ^ ((v188 & v162) >> v170);
  v190 = v171 & 0xDEDEDEDE ^ 0x61E57FBD;
  v191 = ((v190 & v167) - ((2 * (v190 & v167)) & 0x11467A6A4) - 0x5330C1C675CC2CAELL) ^ 0x8A33D352;
  LODWORD(STACK[0x2380]) = (v191 << v169) | ((v190 & v168) >> v163);
  LODWORD(STACK[0x2070]) = (v191 << v166) ^ ((v190 & v162) >> v170);
  LODWORD(STACK[0x2378]) = (v189 << v169) | ((v168 & v188) >> v163);
  v192 = ((v174 & 0x52525252 ^ 0x6B79296B) + 117711411 + ((2 * (v174 & 0x52525252 ^ 0x6B79296B)) & 0x4000424 ^ 0xFDFFBFBD) + 1) ^ 0x7042233;
  v193 = STACK[0x1D70];
  v194 = ((v192 & (v193 ^ 0x9571C88C)) + 0x448EE858F70DA0DBLL - ((2 * (v192 & (v193 ^ 0x9571C88C))) & 0x1EE1B41B6)) ^ 0x448EE858F70DA0DBLL;
  LODWORD(STACK[0x2370]) = (v194 >> v170) + ((v192 & v165) << v169);
  v195 = ((v171 & 0x52525252 ^ 0x2B2B397B) + 1594227563 - ((2 * (v171 & 0x52525252 ^ 0x2B2B397B)) & 0xB602F6D6)) ^ 0x5F05FB6B;
  v196 = ((v195 & v168) - 0x6EDDF3FFCC751D5ELL - ((2 * (v195 & v168)) & 0x6715C544)) ^ 0x91220C00338AE2A2;
  LODWORD(STACK[0x2368]) = (v196 >> v163) + ((v195 & v167) << v166);
  LODWORD(STACK[0x2360]) = (v196 >> v170) + ((v195 & v165) << v169);
  LODWORD(STACK[0x2358]) = (v194 >> v163) + ((v192 & v167) << v166);
  LODWORD(v196) = v174 & 0x10101010 ^ 0x8180808;
  LODWORD(STACK[0x1E60]) = v196;
  v197 = (v196 - 2025978227 + ((2 * (v196 & 0x100010 ^ (v174 | 0x7FFFFFEF))) ^ 0x100031) + 1) ^ 0x873E068D;
  LODWORD(v194) = ((v197 & v165) << v166) ^ ((v197 & v168) >> v163);
  LODWORD(STACK[0x2164]) = v194 + 1576442319 - ((2 * v194) & 0xBBED339E);
  LODWORD(STACK[0x2350]) = ((v197 & v167) << v166) + ((v197 & v162) >> v163);
  LODWORD(v194) = v171 & 0x10101010 ^ 0x8081818;
  LODWORD(STACK[0x1E50]) = 2 * v194;
  LODWORD(STACK[0x1E58]) = v194;
  v198 = (v194 - 13812235 - ((2 * v194) & 0x30103020)) ^ 0xFF2D3DF5;
  LODWORD(STACK[0x2340]) = ((v198 & v162) >> v170) + ((v198 & v167) << v169);
  LODWORD(STACK[0x2718]) = (v187 ^ 0xE64F1541) + (v186 ^ v185);
  LODWORD(STACK[0x2728]) = ((v198 & v165) << v169) + ((v198 & v168) >> v170);
  v199 = v174 & 0x8E8E8E8E ^ 0x494F4BCD;
  v200 = STACK[0x1D74];
  v201 = (((LODWORD(STACK[0x1D74]) ^ 0x87C90904) & v199) >> v163) - ((2 * (((LODWORD(STACK[0x1D74]) ^ 0x87C90904) & v199) >> v163)) & 0x6D5A7B20) + 917323152;
  LODWORD(STACK[0x2338]) = v201 ^ (((v199 & v167) << v166) - ((2 * ((v199 & v167) << v166)) & 0x6D5A7B20) + 917323152);
  LODWORD(STACK[0x2330]) = (v201 ^ 0x36AD3D90) + ((STACK[0x1EC0] & v199) << v166);
  v202 = v171 & 0x8E8E8E8E ^ 0x49CD47C5;
  v203 = ((v202 & (v193 ^ 0x85C1C88C)) >> v170) - ((2 * ((v202 & (v193 ^ 0x85C1C88C)) >> v170)) & 0xF34CB03A) - 106538979;
  LODWORD(STACK[0x2328]) = (v203 ^ 0xF9A6581D) + ((v202 & v165) << v169);
  LODWORD(STACK[0x2320]) = (((v202 & v167) << v169) - ((2 * ((v202 & v167) << v169)) & 0xF34CB03A) - 106538979) ^ v203;
  v204 = v171 & 0xD8D8D8D8 ^ 0x64E47CBC;
  LODWORD(STACK[0x2318]) = ((v204 & (v193 ^ 0x94F0C88C)) >> v170) ^ ((v204 & v167) << v169);
  v205 = v174 & 0xD8D8D8D8 ^ 0x243464A4;
  LODWORD(STACK[0x1CC0]) = v193 ^ 0x94F0C88C;
  LODWORD(STACK[0x2310]) = ((v205 & v167) << v166) | ((v205 & (v193 ^ 0x94F0C88C)) >> v170);
  v206 = v173;
  LODWORD(STACK[0x2308]) = ((v204 & v168) >> v163) + ((v204 & (v173 ^ 0x24584004)) << v169);
  LODWORD(STACK[0x2068]) = (((v200 ^ 0x94C80814) & v205) >> v163) ^ (((v173 ^ 0x24584004) & v205) << v166);
  v207 = v174 & 0xEBEBEBEA ^ 0xBF9CFC1F;
  v208 = ((v207 & v167) - ((2 * (v207 & v167)) & 0x161341B88) + 0xDC50BE9B09A0DC4) ^ 0xB09A0DC4;
  LODWORD(STACK[0x2300]) = (v208 << v169) ^ ((v207 & v162) >> v170);
  LODWORD(v194) = v171 & 0xEBEBEBEA ^ 0xDF5FF437;
  v209 = ((v194 & v165) - ((2 * (v194 & v165)) & 0x1D567ABF4) - 0x326279D2154C2A06) ^ 0xEAB3D5FALL;
  LODWORD(STACK[0x22F8]) = (v209 << v166) + ((v194 & v168) >> v163);
  LODWORD(STACK[0x22F0]) = (v209 << v169) | ((v194 & v162) >> v170);
  LODWORD(STACK[0x22E8]) = ((v168 & v207) >> v163) | (v208 << v166);
  v210 = v171 & 0xC0C0C0C0 ^ 0x60E060A0;
  LODWORD(v208) = ((v210 & v168) >> v163) - ((2 * ((v210 & v168) >> v163)) & 0xAF944420) - 674618864;
  LODWORD(v167) = v208 ^ 0xD7CA2210 | ((v210 & v167) << v166);
  LODWORD(v194) = v174 & 0xC0C0C0C0 ^ 0x202060A0;
  v211 = (((v210 & (v206 ^ 0x20404000)) << v166) - 674618864 - ((2 * ((v210 & (v206 ^ 0x20404000)) << v166)) & 0xAF944400)) ^ v208;
  LODWORD(v208) = ((v194 & (v193 ^ 0x80E0C080)) >> v170) - ((2 * ((v194 & (v193 ^ 0x80E0C080)) >> v170)) & 0x7DCD2732) + 1055298457;
  LODWORD(v209) = ((((v206 ^ 0x20404000) & v194) << v169) + 1055298457 - ((2 * (((v206 ^ 0x20404000) & v194) << v169)) & 0x7DCD2700)) ^ v208;
  LODWORD(v196) = (((v194 & (LODWORD(STACK[0x1D60]) ^ 0x20E040)) << v169) + 1055298457 - ((2 * ((v194 & (LODWORD(STACK[0x1D60]) ^ 0x20E040)) << v169)) & 0x7DCD2700)) ^ v208;
  v212 = v171 & 0x30303030 ^ 0x38380808;
  LODWORD(v194) = ((v212 & v165) << v169) ^ ((v212 & v168) >> v163);
  v213 = v174 & 0x30303030 ^ 0x18281838;
  LODWORD(v208) = ((v213 & (LODWORD(STACK[0x1D60]) ^ 0x10282810u)) << v166) ^ ((v213 & (v193 ^ 0x10300808u)) >> v170);
  v214 = ((v212 & (LODWORD(STACK[0x1D60]) ^ 0x10282810u)) << v166) ^ ((v212 & v162) >> v170);
  v215 = (((v206 ^ 0x20180000) & v213) << v169) | (((LODWORD(STACK[0x1D74]) ^ 0x10080810) & v213) >> v163);
  LODWORD(STACK[0x2750]) = LODWORD(STACK[0x25C0]) - 27;
  LODWORD(STACK[0x25B8]) = LODWORD(STACK[0x2738]) ^ 0x9E8C3FEA;
  LODWORD(STACK[0x25C0]) = LODWORD(STACK[0x2740]) ^ 0xE44957B5;
  LODWORD(STACK[0x25B0]) = LODWORD(STACK[0x2798]) ^ 0x4823DACD;
  STACK[0x2060] = STACK[0x2890] - 0x4E180AB76DEB82A1;
  LODWORD(STACK[0x2058]) = 154515267 * LODWORD(STACK[0x2718]) + 154515267;
  STACK[0x2050] = STACK[0x2898] - 0x6434497BACB1A4A1;
  LODWORD(STACK[0x2048]) = LODWORD(STACK[0x2924]) - 375419374;
  v216 = *(v5 + 8 * v4);
  LODWORD(STACK[0x2040]) = v158 ^ LODWORD(STACK[0x2508]);
  LODWORD(STACK[0x2038]) = v158 ^ LODWORD(STACK[0x2488]);
  LODWORD(STACK[0x2030]) = v158 ^ LODWORD(STACK[0x2510]);
  LODWORD(STACK[0x2028]) = v158 ^ LODWORD(STACK[0x2470]);
  LODWORD(STACK[0x2020]) = v158 ^ LODWORD(STACK[0x2468]);
  LODWORD(STACK[0x2018]) = v158 ^ LODWORD(STACK[0x2460]);
  LODWORD(STACK[0x2010]) = v158 ^ LODWORD(STACK[0x2458]);
  LODWORD(STACK[0x2008]) = v158 ^ LODWORD(STACK[0x2450]);
  LODWORD(STACK[0x2000]) = v158 ^ LODWORD(STACK[0x2438]);
  LODWORD(STACK[0x1FF8]) = v158 ^ LODWORD(STACK[0x2448]);
  LODWORD(STACK[0x1FF0]) = v158 ^ LODWORD(STACK[0x2440]);
  LODWORD(STACK[0x1FE8]) = v158 ^ LODWORD(STACK[0x2390]);
  LODWORD(STACK[0x1FE0]) = v158 ^ LODWORD(STACK[0x2388]);
  LODWORD(STACK[0x1FD8]) = v158 ^ LODWORD(STACK[0x2380]);
  LODWORD(STACK[0x1FD0]) = v158 ^ LODWORD(STACK[0x2378]);
  LODWORD(STACK[0x1FC8]) = v158 ^ LODWORD(STACK[0x2370]);
  LODWORD(STACK[0x1FC0]) = v158 ^ LODWORD(STACK[0x2368]);
  LODWORD(STACK[0x1FB8]) = v158 ^ LODWORD(STACK[0x2360]);
  LODWORD(STACK[0x1FB0]) = v158 ^ LODWORD(STACK[0x2358]);
  LODWORD(STACK[0x1FA8]) = v158 ^ LODWORD(STACK[0x2350]);
  LODWORD(STACK[0x1FA0]) = v158 ^ LODWORD(STACK[0x2340]);
  LODWORD(STACK[0x1F98]) = v158 ^ LODWORD(STACK[0x2728]);
  LODWORD(STACK[0x1F90]) = v158 ^ LODWORD(STACK[0x2338]);
  LODWORD(STACK[0x1F88]) = v158 ^ LODWORD(STACK[0x2330]);
  LODWORD(STACK[0x1F80]) = v158 ^ LODWORD(STACK[0x2328]);
  LODWORD(STACK[0x1F78]) = v158 ^ LODWORD(STACK[0x2320]);
  LODWORD(STACK[0x1F70]) = v158 ^ LODWORD(STACK[0x2318]);
  LODWORD(STACK[0x1F68]) = v158 ^ LODWORD(STACK[0x2310]);
  LODWORD(STACK[0x1F60]) = v158 ^ LODWORD(STACK[0x2308]);
  LODWORD(STACK[0x1F58]) = v158 ^ LODWORD(STACK[0x2300]);
  LODWORD(STACK[0x1F50]) = v158 ^ LODWORD(STACK[0x22F8]);
  LODWORD(STACK[0x1F48]) = v158 ^ LODWORD(STACK[0x22F0]);
  LODWORD(STACK[0x1F40]) = v158 ^ LODWORD(STACK[0x22E8]);
  LODWORD(STACK[0x1F38]) = v158 ^ v167;
  LODWORD(STACK[0x1F30]) = v158 ^ v209;
  LODWORD(STACK[0x1F28]) = v158 ^ v211;
  LODWORD(STACK[0x1F20]) = v158 ^ v196;
  LODWORD(STACK[0x1F18]) = v158 ^ v194;
  LODWORD(STACK[0x1F10]) = v158 ^ v208;
  LODWORD(STACK[0x1F08]) = v158 ^ v214;
  LODWORD(STACK[0x25E8]) = v158;
  LODWORD(STACK[0x1F00]) = v158 ^ v215;
  LODWORD(STACK[0x22C8]) = STACK[0x2598];
  return v216();
}