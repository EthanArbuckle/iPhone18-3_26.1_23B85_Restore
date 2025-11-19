uint64_t sub_2448E6898@<X0>(int a1@<W6>, uint64_t a2@<X8>, __n128 a3@<Q1>, int8x16_t a4@<Q4>, uint64_t a5@<D5>, int8x16_t a6@<Q6>)
{
  v16 = v13 & 0xF;
  v17 = v11;
  v18.i64[0] = vqtbl4q_s8(*(&a3 - 1), a4).u64[0];
  v18.i64[1] = a5;
  v19 = vrev64q_s8(vmulq_s8(v18, a6));
  *(v12 + v13) = veorq_s8(veorq_s8(veorq_s8(*(v9 + v16 - 15), *(v10 + v13)), veorq_s8(*(a2 + v16 - 15), *(v16 + v8 - 13))), vextq_s8(v19, v19, 8uLL));
  return (*(v15 + 8 * ((1008 * (v14 == 0)) ^ a1)))();
}

uint64_t sub_2448E69E0@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W5>, char a5@<W6>, uint64_t a6@<X8>)
{
  v13 = (a4 + a2);
  *(v11 + v13) = *(v8 + (v13 & 0xF)) ^ *(a1 + v13) ^ *(a6 + (v13 & 0xF)) ^ *((v13 & 0xF) + v7 + 2) ^ ((v13 & 0xF) * ((v10 & a5) - 74));
  return (*(v12 + 8 * (((a4 - 1 == v6) * a3) ^ v9)))();
}

uint64_t sub_2448E6C18@<X0>(unsigned int a1@<W8>)
{
  v3 = STACK[0x7C0];
  STACK[0x2C0] = STACK[0x7C0];
  STACK[0x2D0] = v3 + (v1 ^ 0xE262009 ^ ((a1 + 2126132851) | 0x3620)) - 16;
  v4 = STACK[0x8F8];
  STACK[0x2F0] = STACK[0x8F8];
  STACK[0x2E0] = v4 + 96;
  return (*(v2 + 8 * (a1 ^ 0x8145F8B6 ^ (23549 * (a1 < 0x4CD81F23)))))(103790565, 1000, 0);
}

uint64_t sub_2448E6CD4()
{
  STACK[0x300] = *(v4 + 8 * v2);
  STACK[0x8F8] = STACK[0x2E0];
  *v3 = 0;
  *(v1 + 83) = 0;
  *(v1 + 75) = 0;
  return (*(v4 + 8 * (v0 - 5271)))();
}

uint64_t sub_2448E6D78()
{
  v7 = (*(v6 + 8 * (v3 + 11128)))(v1, 74, 0, -1, *(&off_278E1E490 + (v3 ^ 0x2DD0)) - 4);
  v8 = *(STACK[0x320] + 8 * (v3 + 11128));
  STACK[0x310] = *(&off_278E1E490 + (v3 ^ 0x2E99)) - 2;
  v9 = v8(v1 + ((v7 + v5 - (v2 & (2 * v7))) ^ v5), 74, 0, -1);
  v10 = STACK[0x320];
  v11 = *v0;
  if (*v0 - 127 < 0xFFFFFFA1)
  {
    v11 = 46;
  }

  *v4 = v11;
  *(v1 + 75) = 0;
  return (*(v10 + 8 * v3))(v9);
}

uint64_t sub_2448E6E5C@<X0>(int a1@<W8>)
{
  v10 = (*(v9 + 8 * v3))(v2 + (a1 ^ v4), 74, 0, -1, STACK[0x310]);
  v11 = STACK[0x320];
  v12 = *(v1 + v5);
  v13 = (v7 + (((v6 + 2406) ^ 0x37EFLL) & v8));
  if ((v12 - 127) < 0xFFFFFFA1)
  {
    LOBYTE(v12) = 46;
  }

  *v13 = v12;
  v13[1] = 0;
  return (*(v11 + 8 * ((5354 * (v5 == 14)) ^ v6)))(v10);
}

uint64_t sub_2448E6F5C(uint64_t a1, uint64_t a2)
{
  v3 = LODWORD(STACK[0x31C]) - 3879;
  LOBYTE(STACK[0x483]) = 121;
  return (*(v2 + 8 * v3))(a1, a2, LODWORD(STACK[0x9E4]));
}

uint64_t sub_2448E6FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v9 = a7 + 1093;
  v10 = (*(v8 + 8 * (a7 ^ 0x6E20)))(v7);
  return (*(STACK[0x320] + 8 * v9))(v10);
}

uint64_t sub_2448E71C8()
{
  v3 = (*(v2 + 8 * (v1 + 7190)))();
  v4 = STACK[0x320];
  *(v0 + 1024) = 0;
  return (*(v4 + 8 * v1))(v3);
}

uint64_t sub_2448E71F8()
{
  v3 = (*(v2 + 8 * (v0 ^ 0x4849)))(v1);
  v4 = STACK[0x320];
  STACK[0x538] = 0;
  return (*(v4 + 8 * v0))(v3);
}

uint64_t sub_2448E7234(uint64_t a1, uint64_t a2)
{
  v4 = STACK[0x8E8];
  STACK[0x9E8] = STACK[0x8E8];
  LODWORD(STACK[0x86C]) = 237377513;
  return (*(v3 + 8 * (((v4 == 0) * ((v2 - 7055) ^ 0x37FE)) ^ v2)))(a1, a2, 1216081105);
}

uint64_t sub_2448E7334(uint64_t a1, uint64_t a2)
{
  v4 = *(STACK[0x730] + 144);
  v5 = *(STACK[0x730] + 128);
  v6 = *(STACK[0x730] + 136);
  STACK[0x8C8] += 48;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  v9 = !v7 && v6 == ((v2 - 1575671088) & 0x5DEAD1CB) - 4481;
  return (*(v3 + 8 * ((490 * v9) ^ v2)))(a1, a2, 1216117114);
}

uint64_t sub_2448E73A4@<X0>(uint64_t a1@<X8>)
{
  v7 = &STACK[0xB60] + v3 - 0x6919E10D53E8061FLL;
  *v7 = v2;
  *(v7 + 2) = ((2 * v1) & 0x7AFADFEC) + (v1 ^ 0xBD7D6FF6) + ((((v4 - 1125) | 0x101) - 3751) ^ 0x77ABDD82);
  *(v7 + 2) = a1;
  *(v7 + 6) = 1144786314;
  *(v7 + 4) = &STACK[0xC50];
  *(v7 + 10) = 1117684363;
  *(v5 - 216) = v7 + 0x11EF7C8AED77072ALL;
  *(v5 - 208) = (v4 + 2449) ^ (810199703 * ((((v5 - 224) | 0xD558BFF) - ((v5 - 224) & 0xD558BFF)) ^ 0xEBDC9D72));
  v8 = (*(v6 + 8 * (v4 ^ 0x4EC7)))(v5 - 224);
  v9 = STACK[0x320];
  v10 = *(v5 - 224);
  LODWORD(STACK[0x9FC]) = v10;
  return (*(v9 + 8 * ((10756 * (v10 == 1216124116)) ^ v4)))(v8);
}

uint64_t sub_2448E7570@<X0>(int a1@<W8>)
{
  STACK[0x310] = STACK[0x9F0];
  v3 = STACK[0xB48];
  v4 = ((2 * (STACK[0xB48] - 0x79310257FAE9BBB4)) & 0xA735F3F9EF9FE57CLL) + ((STACK[0xB48] - 0x79310257FAE9BBB4) ^ 0xD39AF9FCF7CFF2BELL) + 0x2C65060308300D42;
  v5 = STACK[0xB48] + ((3 * (a1 ^ 0x3B6Cu)) ^ 0x86CEFDA8051673AELL);
  STACK[0x280] = (v5 ^ 0x3AF3FBF74EFFF79DLL) - 0x22A0A18004143290 + ((2 * v5) & 0x75E7F7EE9DFFEF3ALL);
  STACK[0x270] = STACK[0xB40] - 0x75B6D334CF5CD4F6;
  STACK[0x2C0] = v3;
  v6 = *(v2 + 8 * a1);
  LODWORD(STACK[0x260]) = v1 + 302696083;
  LODWORD(STACK[0x210]) = v1 + 5159;
  LODWORD(STACK[0x2B0]) = (v1 + 119285279) ^ 0x71C5B35;
  LODWORD(STACK[0x200]) = v1 - 11051;
  LODWORD(STACK[0x2D0]) = (v1 + 281033751) & 0xEF3FAEDD;
  LODWORD(STACK[0x250]) = ((v1 - 13136) | 0x825) ^ 0xCBE;
  STACK[0x240] = STACK[0x9E8];
  STACK[0x2F0] = STACK[0x6B0];
  STACK[0x290] = v4;
  STACK[0x230] = v4 + 1;
  STACK[0x2A0] = STACK[0x9D0];
  LODWORD(STACK[0x300]) = STACK[0x938];
  v7 = LOWORD(STACK[0x90A]);
  LODWORD(STACK[0x220]) = v1 - 10290;
  LODWORD(STACK[0x2E0]) = v7;
  return v6(2632676225, 1359470885);
}

uint64_t sub_2448E7878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = STACK[0x880];
  v15 = STACK[0x730];
  v16 = 867706601 * ((2 * ((v12 - 224) & 0x7C7B9DBF651EF728) - (v12 - 224) - 0x7C7B9DBF651EF72ELL) ^ 0x12A11DA39EF832B9);
  v17 = *(v13 + 8 * v11) + v16;
  *(v12 - 184) = v16 + v11 - 59111567;
  *(v12 - 176) = a10;
  *(v12 - 224) = v17;
  *(v12 - 216) = v15;
  *(v12 - 192) = v14;
  *(v12 - 208) = a11;
  v18 = (*(v13 + 8 * (v11 + 21978)))(v12 - 224);
  return (*(STACK[0x320] + 8 * (((*(v12 - 200) == 1216124116) * (((v11 - 1096) | 0x1180) - 3969)) | (v11 - 764) ^ v11)))(v18);
}

uint64_t sub_2448E79AC()
{
  v2 = v0 + 10417;
  v3 = (*(v1 + 8 * (v2 ^ 0x63FF)))(16) == 0;
  return (*(STACK[0x320] + 8 * ((v3 * (v2 ^ 0x3873 ^ (v2 + 1661) ^ 0x4298)) ^ v2)))();
}

uint64_t sub_2448E7A14(void *a1)
{
  *a1 = 0x750C1ABFB0567FDBLL;
  a1[1] = 0x750C1ABFB0567FDBLL;
  STACK[0x5A0] = a1 + v2;
  STACK[0x348] = *(v3 + 8 * v1);
  return (*(v3 + 8 * (v1 ^ 0x3773 ^ (v1 + 9555))))();
}

uint64_t sub_2448E7AB8()
{
  STACK[0x740] = STACK[0x5A0];
  LODWORD(STACK[0x40C]) = 329620445;
  STACK[0x848] = &STACK[0xC50];
  LODWORD(STACK[0x5F4]) = 237377529;
  LODWORD(STACK[0x444]) = 1249610555;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_2448E7B3C()
{
  v2 = STACK[0x7F0];
  STACK[0x740] = STACK[0x5A0];
  LODWORD(STACK[0x40C]) = 1159665132;
  STACK[0x848] = v2;
  LODWORD(STACK[0x5F4]) = 237377449;
  LODWORD(STACK[0x444]) = -961162342;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_2448E7BD8()
{
  v2 = *(STACK[0x730] + 160);
  STACK[0x740] = STACK[0x5A0];
  LODWORD(STACK[0x40C]) = -2103075229;
  STACK[0x848] = v2;
  LODWORD(STACK[0x5F4]) = 237377529;
  LODWORD(STACK[0x444]) = 1123032057;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_2448E7C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = STACK[0x8A8];
  v9 = ((v6 - 2212) | 0x5090) ^ LODWORD(STACK[0x590]) ^ 0x6D0B186C;
  STACK[0x740] = STACK[0x5A0];
  LODWORD(STACK[0x40C]) = 918465384;
  STACK[0x848] = v8;
  LODWORD(STACK[0x5F4]) = v9;
  LODWORD(STACK[0x444]) = -1087740840;
  return (*(v7 + 8 * v6))(a1, a2, a3, a4, a5, a6, 237377513);
}

uint64_t sub_2448E7DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, unint64_t a30)
{
  STACK[0x820] = STACK[0x2C0];
  STACK[0x960] = a30;
  STACK[0x968] = STACK[0x310];
  return (*(v32 + 8 * (((((((v31 - 829) | 0x104) - 1251) | 0x4980) ^ 0x2F0) * v30) ^ ((v31 - 829) | 0x104))))();
}

uint64_t sub_2448E7E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  v4 = STACK[0x710];
  LODWORD(STACK[0x65C]) = STACK[0x45C];
  return (*(v3 + 8 * ((75 * (v4 != 0)) ^ a3)))(a1, a2, 1216081105);
}

uint64_t sub_2448E7EAC@<X0>(int a1@<W8>)
{
  v3 = a1 - 1432;
  STACK[0x5B0] = 0;
  LODWORD(STACK[0x8D4]) = 2048419028;
  STACK[0x618] = 0x3E0DD92B1DE16FEALL;
  LODWORD(STACK[0x85C]) = 237377513;
  STACK[0x528] = 0;
  v4 = v1 == ((v3 - 16391) | 0x38) + 237376431;
  return (*(v2 + 8 * (((2 * v4) | (4 * v4)) ^ v3)))();
}

uint64_t sub_2448E7F30()
{
  v3 = 810199703 * ((((v1 - 224) ^ 0xF02EAAA809BE006 | 0xDBDBCA34164D1EBLL) - ((v1 - 224) ^ 0xF02EAAA809BE006 | 0xF242435CBE9B2E14) - 0xDBDBCA34164D1ECLL) ^ 0x96A81BF27762760);
  *(v1 - 216) = *(v2 + 8 * v0) ^ v3;
  *(v1 - 208) = v3 + 1007955315 + v0;
  v4 = (*(v2 + 8 * (v0 ^ 0x5D5B)))(v1 - 224);
  return (*(STACK[0x320] + 8 * ((6727 * (*(v1 - 224) == 1216124116)) ^ (v0 + 14906 + ((v0 + 13222) ^ 0x3363)))))(v4);
}

uint64_t sub_2448E8020()
{
  STACK[0xB50] = *(v2 + 8 * v0);
  *(v1 - 216) = &STACK[0xB50];
  *(v1 - 224) = v0 + 1649972239 * ((1628840859 - ((v1 - 224) | 0x6116239B) + ((v1 - 224) | 0x9EE9DC64)) ^ 0x4551F01C) - 572929518;
  v3 = (*(v2 + 8 * (v0 ^ 0x5D79)))(v1 - 224);
  v4 = STACK[0x320];
  v5 = *(v1 - 220);
  v6 = *(&off_278E1E490 + (v0 ^ 0x6C0));
  v7 = *(&off_278E1E490 + (v0 ^ 0x728));
  if (v5 == 93)
  {
    v8 = v7 - 4;
  }

  else
  {
    v8 = v6 - 12;
  }

  STACK[0x528] = v8;
  v9 = (v7 + 20);
  v10 = (v6 + 12);
  if (v5 == 93)
  {
    v10 = v9;
  }

  return (*(v4 + 8 * ((((v0 + 2989) | 0x284) + 9806) ^ v0 ^ (29199 * (*v10 == (((v0 - 1746502808) ^ 0xA4) & 0xF4))))))(v3);
}

uint64_t sub_2448E8154()
{
  v6 = (v2 + 40);
  v7 = (v1 + 40);
  if (v0 == 93)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = *v8;
  v10 = STACK[0x8C8];
  STACK[0x560] = &STACK[0xB60] + STACK[0x8C8] + ((((v4 - 4516) | 0xC0u) - 0x6919E10D53E833CFLL) ^ (v4 + 1465820482) & 0xA8A17FE9);
  STACK[0x8C8] = v10 + 48;
  STACK[0x838] = v3;
  STACK[0x860] = 0x19847B594A0B84A2;
  STACK[0x520] = 0x6286B82630F8F22CLL;
  STACK[0x7A8] = v9;
  return (*(v5 + 8 * ((122 * (v9 == 0x58FA20369C313ACELL)) ^ v4)))();
}

uint64_t sub_2448E82E0()
{
  v3 = *(v2 + 8 * ((v0 - 13806) ^ 0x349A));
  LODWORD(STACK[0x310]) = 237377513;
  LODWORD(STACK[0x300]) = 237377513;
  LODWORD(STACK[0x2C0]) = v1;
  return v3();
}

uint64_t sub_2448E8388()
{
  v2 = (*(v1 + 8 * (v0 + 7296)))(112);
  v3 = STACK[0x320];
  STACK[0x610] = v2 + 0x19847B594A0B84A2;
  return (*(v3 + 8 * (((v2 == 0) * (v0 - 18875 + (v0 ^ 0x31E1))) ^ v0)))();
}

uint64_t sub_2448E83F8(uint64_t a1)
{
  *a1 = STACK[0x2E0];
  *(a1 + 4) = 2142665936;
  *(a1 + 72) = 1253342090;
  *(a1 + 76) = 1253342090;
  *(a1 + 80) = 11781;
  *(a1 + 8) = v2;
  *(a1 + 16) = v2;
  *(a1 + 24) = v2;
  *(a1 + 32) = v2;
  *(a1 + 40) = v2;
  *(a1 + 48) = v2;
  *(a1 + 56) = v2;
  *(a1 + 64) = v2;
  v6 = STACK[0x610];
  *(v6 - 0x19847B594A0B844ELL) = 1956268794;
  *(v6 + v4) = 2136666251;
  *(v6 - 0x19847B594A0B844ALL) = v2;
  *(v6 - 0x19847B594A0B8442) = v2;
  *(v6 - 0x19847B594A0B8436) = -15;
  *v3 = v6;
  return (*(v5 + 8 * v1))();
}

uint64_t sub_2448E8568(uint64_t a1)
{
  v5 = STACK[0x7A8];
  *(v2 + v3) = 2136666267;
  *(v2 - 0x19847B594A0B843BLL) = *(v5 - 0x58FA20369C313AB7);
  *(v2 - 0x19847B594A0B843CLL) = *(v5 - 0x58FA20369C313AB8);
  *(v2 - 0x19847B594A0B843DLL) = *(v5 - 0x58FA20369C313AB9);
  *(v2 - 0x19847B594A0B843ELL) = *(v5 - 0x58FA20369C313ABALL);
  *(v2 - 0x19847B594A0B843FLL) = *(v5 - 0x58FA20369C313ABBLL);
  *(v2 - 0x19847B594A0B8440) = *(v5 - 0x58FA20369C313ABCLL);
  *(v2 - 0x19847B594A0B8441) = *(v5 - 0x58FA20369C313ABDLL);
  *(v2 - 0x19847B594A0B8442) = *(v5 - 0x58FA20369C313ABELL);
  *(v2 - 0x19847B594A0B8443) = *(v5 - 0x58FA20369C313ABFLL);
  *(v2 - 0x19847B594A0B8444) = *(v5 - 0x58FA20369C313AC0);
  *(v2 - 0x19847B594A0B8445) = *(v5 - 0x58FA20369C313AC1);
  *(v2 - 0x19847B594A0B8446) = *(v5 - 0x58FA20369C313AC2);
  *(v2 - 0x19847B594A0B8447) = *(v5 - 0x58FA20369C313AC3);
  *(v2 - 0x19847B594A0B8448) = *(v5 - 0x58FA20369C313AC4);
  *(v2 - 0x19847B594A0B8449) = *(v5 - 0x58FA20369C313AC5);
  *(v2 - 0x19847B594A0B844ALL) = *(v5 - 0x58FA20369C313AC6);
  return (*(v4 + 8 * ((243 * (((v1 - 12) ^ (STACK[0x860] == a1)) & 1)) ^ v1)))();
}

uint64_t sub_2448E8948@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 0x19847B594A0B845ALL) = 1253342122;
  v4 = a1 - v1 - 0x3F75A4DD5225DDFDLL + ((v2 - 9239) ^ 0x1485u) < 0x20;
  return (*(v3 + 8 * (((2 * v4) | (4 * v4)) ^ v2)))();
}

uint64_t sub_2448E8AFC()
{
  v4 = STACK[0x798];
  *(v0 + v2) = 2136666267;
  *(v0 - 0x19847B594A0B843BLL) = *(v4 - 0x58FA20369C313AB7);
  *(v0 - 0x19847B594A0B843CLL) = *(v4 - 0x58FA20369C313AB8);
  *(v0 - 0x19847B594A0B843DLL) = *(v4 - 0x58FA20369C313AB9);
  *(v0 - 0x19847B594A0B843ELL) = *(v4 - 0x58FA20369C313ABALL);
  *(v0 - 0x19847B594A0B843FLL) = *(v4 - 0x58FA20369C313ABBLL);
  *(v0 - 0x19847B594A0B8440) = *(v4 - 0x58FA20369C313ABCLL);
  *(v0 - 0x19847B594A0B8441) = *(v4 - 0x58FA20369C313ABDLL);
  *(v0 - 0x19847B594A0B8442) = *(v4 - 0x58FA20369C313ABELL);
  *(v0 - 0x19847B594A0B8443) = *(v4 - 0x58FA20369C313ABFLL);
  *(v0 - 0x19847B594A0B8444) = *(v4 - 0x58FA20369C313AC0);
  *(v0 - 0x19847B594A0B8445) = *(v4 - 0x58FA20369C313AC1);
  *(v0 - 0x19847B594A0B8446) = *(v4 - 0x58FA20369C313AC2);
  *(v0 - 0x19847B594A0B8447) = *(v4 - 0x58FA20369C313AC3);
  *(v0 - 0x19847B594A0B8448) = *(v4 - 0x58FA20369C313AC4);
  *(v0 - 0x19847B594A0B8449) = *(v4 - 0x58FA20369C313AC5);
  *(v0 - 0x19847B594A0B844ALL) = *(v4 - 0x58FA20369C313AC6);
  return (*(v3 + 8 * (((*(v4 - 0x58FA20369C313ACALL) != 14) * (((v1 - 3425) | 0x1942) ^ 0x59AD)) ^ v1)))();
}

uint64_t sub_2448E8E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v3 - 14086;
  v6 = (v3 - 1859018662) & 0x6ECE5FFF;
  v8 = v2 == a1 || a2 == 0x58FA20369C313AB6;
  return (*(v4 + 8 * (((v6 ^ (v5 + 14097)) * v8) ^ v5)))();
}

uint64_t sub_2448E8F68@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 - 0x58FA20369C313AB6);
  *(v1 - 0x19847B594A0B848ALL) = *(a1 - 0x58FA20369C313AA6);
  *(v1 - 0x19847B594A0B849ALL) = v4;
  return (*(v3 + 8 * v2))();
}

uint64_t sub_2448E9040@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 0x19847B594A0B844ELL) = *(a2 - 0x58FA20369C313ACELL);
  v5 = STACK[0x8C8];
  STACK[0x758] = &STACK[0xB60] + STACK[0x8C8] + ((v3 - 1219656621) & 0x48B26F5F ^ 0x96E61EF2AC17B1EELL);
  STACK[0x8C8] = v5 + 32;
  v6 = STACK[0x818];
  STACK[0x3F8] = STACK[0x818];
  STACK[0x358] = 0;
  STACK[0x720] = 0;
  STACK[0x508] = 0;
  LODWORD(STACK[0x6FC]) = 0;
  STACK[0x6F0] = a1;
  STACK[0x748] = 0;
  v7 = (*(v4 + 8 * (v3 ^ 0xD81)))();
  if (v6)
  {
    v8 = LODWORD(STACK[0x888]) == 2048419028;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  return (*(STACK[0x320] + 8 * ((v9 * (((v3 - 1219656621) ^ 0xB74DDCFC) - 901)) ^ v3)))(v7);
}

uint64_t sub_2448E9140()
{
  v2 = (*(v1 + 8 * (v0 + 4534)))(128);
  v3 = STACK[0x320];
  STACK[0x5C8] = v2 + 0x6286B82630F8F22CLL;
  return (*(v3 + 8 * (((v2 == 0) * (v0 - 25069 + ((v0 - 14233) | 0x980))) ^ v0)))();
}

uint64_t sub_2448E9238@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 - 0x58FA20369C313AB6);
  *(v1 - 0x19847B594A0B848ALL) = *(a1 - 0x58FA20369C313AA6);
  *(v1 - 0x19847B594A0B849ALL) = v4;
  return (*(v3 + 8 * v2))();
}

uint64_t sub_2448E929C@<X0>(uint64_t a1@<X8>)
{
  v4 = STACK[0x560];
  *v4 = 0x44046241CC2D2A4ELL;
  *(v4 + 8) = *(a1 - 0x58FA20369C313A62) + 237377513 - ((v1 ^ 0x1C4C11E4) & (2 * *(a1 - 0x58FA20369C313A62)));
  *(v4 + 16) = 0;
  *(v4 + 24) = -190490885;
  *(v4 + 28) = 2104531865;
  *(v4 + 32) = 237377517;
  *(v4 + 36) = 2036363867;
  STACK[0x830] = v4;
  LODWORD(STACK[0x58C]) = 0;
  STACK[0x6D0] = 0x19847B594A0B84A2;
  v5 = (*(v3 + 8 * (v1 ^ 0x67F3)))(128);
  v6 = STACK[0x320];
  STACK[0x668] = v5 + v2;
  return (*(v6 + 8 * (((v5 == 0) * ((v1 - 12917) ^ 0xBB9)) ^ v1)))();
}

uint64_t sub_2448E93D0()
{
  v3 = *(v2 + 8 * ((v0 - 13818) ^ 0x348E));
  LODWORD(STACK[0x2F0]) = v1;
  return v3();
}

uint64_t sub_2448E93F4(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(STACK[0x5BC]) = a3;
  LODWORD(STACK[0x694]) = STACK[0x300];
  LODWORD(STACK[0x5AC]) = STACK[0x310];
  LODWORD(STACK[0x63C]) = STACK[0x2F0];
  return (*(v4 + 8 * ((1327 * (v3 != -200753742)) ^ (v3 - 1108169773))))(3300551070, a2, 1216081105);
}

uint64_t sub_2448E9460(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(STACK[0x5BC]) = STACK[0x2C0];
  LODWORD(STACK[0x694]) = STACK[0x300];
  LODWORD(STACK[0x5AC]) = STACK[0x310];
  LODWORD(STACK[0x63C]) = a3;
  return (*(v4 + 8 * v3))(3300551070, a2, 1216081105);
}

uint64_t sub_2448E94A4()
{
  LODWORD(STACK[0x5BC]) = v1;
  LODWORD(STACK[0x694]) = 237377513;
  LODWORD(STACK[0x5AC]) = 237377513;
  LODWORD(STACK[0x63C]) = STACK[0x2F0];
  STACK[0x8C8] = v2;
  return (*(v3 + 8 * v0))(3300551070);
}

uint64_t sub_2448E94F0@<X0>(uint64_t a1@<X8>)
{
  v3 = LODWORD(STACK[0x31C]) - 7652;
  LODWORD(STACK[0x5BC]) = STACK[0x2C0];
  LODWORD(STACK[0x694]) = STACK[0x300];
  LODWORD(STACK[0x5AC]) = STACK[0x310];
  LODWORD(STACK[0x63C]) = STACK[0x2F0];
  return (*(v2 + 8 * ((1010 * (a1 != v1)) ^ v3)))(3300551070);
}

uint64_t sub_2448E95A8@<X0>(uint64_t a1@<X8>)
{
  v3 = LODWORD(STACK[0x31C]) - 14105;
  v4 = LODWORD(STACK[0x31C]) + 2533;
  LODWORD(STACK[0x5BC]) = STACK[0x2C0];
  LODWORD(STACK[0x694]) = STACK[0x300];
  LODWORD(STACK[0x5AC]) = STACK[0x310];
  LODWORD(STACK[0x63C]) = STACK[0x2F0];
  return (*(v2 + 8 * ((962 * (((a1 == v1) ^ v3) & 1)) ^ v4)))();
}

uint64_t sub_2448E965C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = STACK[0x290];
  LODWORD(STACK[0x5BC]) = STACK[0x2C0];
  LODWORD(STACK[0x694]) = STACK[0x300];
  LODWORD(STACK[0x5AC]) = STACK[0x310];
  LODWORD(STACK[0x63C]) = a3;
  return (*(v3 + 8 * v4))(3300551070);
}

uint64_t sub_2448E96AC(uint64_t a1, uint64_t a2, int a3)
{
  v4 = STACK[0x2D0];
  LODWORD(STACK[0x5BC]) = a3;
  LODWORD(STACK[0x694]) = STACK[0x300];
  LODWORD(STACK[0x5AC]) = STACK[0x310];
  LODWORD(STACK[0x63C]) = STACK[0x2F0];
  return (*(v3 + 8 * v4))(3300551070);
}

uint64_t sub_2448E96E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0x5BC]) = STACK[0x2C0];
  LODWORD(STACK[0x694]) = STACK[0x300];
  LODWORD(STACK[0x5AC]) = STACK[0x310];
  LODWORD(STACK[0x63C]) = v6;
  return (*(v8 + 8 * v7))(3300551070, a2, 1216081107, a4, a5, a6, 1647873780);
}

uint64_t sub_2448E9754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0x5BC]) = STACK[0x2C0];
  LODWORD(STACK[0x694]) = STACK[0x300];
  LODWORD(STACK[0x5AC]) = STACK[0x310];
  LODWORD(STACK[0x63C]) = v4;
  return (*(v5 + 8 * v3))(a1, a2, a3, 3260909861);
}

uint64_t sub_2448E97A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0x5BC]) = v4;
  LODWORD(STACK[0x694]) = 237377513;
  LODWORD(STACK[0x5AC]) = 237377513;
  LODWORD(STACK[0x63C]) = STACK[0x2F0];
  return (*(v5 + 8 * (v3 ^ 0x1A50)))(a1, a2, a3, 1323979975);
}

uint64_t sub_2448E97FC(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v9 = v5 != 0x19847B594A0B84A2 && a2 != v6;
  STACK[0x2D0] = a2 - 0x6286B82630F8F1C4;
  v10 = *(&off_278E1E490 + (v4 ^ 0xCE9)) - 4;
  STACK[0x2C0] = v10;
  v11 = &v10[v6 - a2 - 104];
  v12 = *(&off_278E1E490 + v4 - 2356) - 4;
  v13 = v6 - a2 - 103;
  STACK[0x2B0] = v12;
  v14 = &v12[v13];
  v15 = *(&off_278E1E490 + v4 - 2605);
  STACK[0x2A0] = v15 - 4;
  v16 = v13 + v15 - 4;
  v17 = v5 - a2 + 0x49023CCCE6ED6D7ALL >= 0x10 && v11 >= 0x10;
  STACK[0x290] = v5 - 0x19847B594A0B844ALL;
  v20 = !v17 || v14 < 0x10 || v16 < (((v4 + 4541) | 0x80u) ^ 0x21D6uLL);
  LODWORD(STACK[0x280]) = v20;
  v21 = *(v7 + 8 * v4);
  STACK[0x310] = v5;
  STACK[0x300] = a2;
  LODWORD(STACK[0x2F0]) = a4;
  LODWORD(STACK[0x2E0]) = v9;
  return v21(v5 - 0x19847B594A0B847ALL, xmmword_245010D50);
}

uint64_t sub_2448E9A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(a2 - 0x6286B82630F8F21CLL) = *(v5 - 0x19847B594A0B84A2);
  *(a2 - 0x6286B82630F8F1D4) = *(v5 - 0x19847B594A0B845ALL);
  *(a2 - 0x6286B82630F8F1D0) = *(v5 - 0x19847B594A0B8456);
  *(a2 - 0x6286B82630F8F1CCLL) = *(v5 - 0x19847B594A0B8452);
  *(a2 - 0x6286B82630F8F1CBLL) = *(v5 - 0x19847B594A0B8451);
  *(a2 - 0x6286B82630F8F1B4) = *(v5 + v6);
  *(a2 - 0x6286B82630F8F1C8) = *(v5 - 0x19847B594A0B844ELL);
  *(a2 - 0x6286B82630F8F1B0) = *(v5 - 0x19847B594A0B8436) & 1 | 0xE8;
  return (*(v7 + 8 * (a5 + 1984)))(a1, (a5 + 1984) ^ 0x2B24u);
}

uint64_t sub_2448E9B70(uint64_t a1, int a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, int a8)
{
  v16 = v8 + a7 + a5;
  *(v14 + v16) = *(v12 + v16) ^ *(*(&off_278E1E490 + v10) + (v16 & 0xF)) ^ ((v16 & 0xF) * a3) ^ *(*(&off_278E1E490 + v11) + (v16 & 0xF) + 2) ^ *(*(&off_278E1E490 + a2) + (v16 & 0xF)) ^ a6;
  return (*(v15 + 8 * (((v8 - 1 == v9) * a8) ^ v13)))();
}

uint64_t sub_2448E9BE4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  v14 = a4 + v8;
  *(v9 + v14) = *(v5 + (v14 & 0xF)) ^ *(a1 + a4 + v8) ^ (a5 + v10) ^ *((v14 & 0xF) + v6 + 6) ^ ((v14 & 0xF) * a3) ^ *(v11 + (v14 & 0xF));
  return (*(v13 + 8 * (((a4 - 1 == v7) * v12) ^ a5)))();
}

uint64_t sub_2448E9D30()
{
  v2 = *(STACK[0x310] - 0x19847B594A0B849ELL);
  *(STACK[0x300] - 0x6286B82630F8F218) = v2;
  v3 = v2 != (v0 ^ 0x1664 ^ v0 ^ 0x4AB45A0E ^ 0x350230BA);
  return (*(v1 + 8 * ((2 * v3) | (v3 << 6) | v0)))();
}

uint64_t sub_2448EA21C(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(STACK[0x5BC]) = STACK[0x2C0];
  LODWORD(STACK[0x694]) = STACK[0x300];
  LODWORD(STACK[0x5AC]) = STACK[0x310];
  LODWORD(STACK[0x63C]) = a3;
  return (*(v4 + 8 * v3))(3300551070, a2, 1216081105);
}

uint64_t sub_2448EA334(void *a1)
{
  *a1 = 0x750C1ABFB0567FDBLL;
  a1[1] = 0x750C1ABFB0567FDBLL;
  *(v1 - 0x6286B82630F8F224) = a1 + v3;
  return (*(v4 + 8 * ((((v2 + 94977323) ^ 0x5A92A38 ^ (v2 + 94977323) & 0xFA569B7E ^ 0x4E8E) * (v1 == 0x6286B82630F8F22CLL)) ^ v2)))();
}

uint64_t sub_2448EA434(void *a1)
{
  *a1 = 0x750C1ABFB0567FDBLL;
  a1[1] = 0x750C1ABFB0567FDBLL;
  *v1 = a1 + v3;
  return (*(v4 + 8 * (((STACK[0x830] == 0) * (((v2 - 168351026) & 0xFFEFFBB3) + ((v2 - 6607) | 0x4A0) + 169366709)) ^ v2)))();
}

uint64_t sub_2448EA4A8()
{
  STACK[0x570] = *(v2 - 0x6286B82630F8F224);
  LODWORD(STACK[0x3B4]) = 1787705831;
  STACK[0x670] = v1;
  LODWORD(STACK[0x494]) = 1332223837;
  LODWORD(STACK[0x3A0]) = 1617790442;
  return (*(v3 + 8 * (v0 ^ 0xF5E76043 ^ (13421 * (v0 < 0x99D13643)))))();
}

uint64_t sub_2448EA588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x570] = *(STACK[0x668] - 0x6286B82630F8F22CLL);
  LODWORD(STACK[0x3B4]) = 1787705830;
  STACK[0x670] = STACK[0x830];
  LODWORD(STACK[0x494]) = 1332223837;
  LODWORD(STACK[0x3A0]) = -703030677;
  return (*(v7 + 8 * v6))(a1, 1617790442, a3, 1593881378, a5, a6, 237377513);
}

uint64_t sub_2448EA748()
{
  *(v1 - 224) = v0 - 1230911237 * ((((v1 - 224) | 0x8849063F) - ((v1 - 224) & 0x8849063F)) ^ 0xDB4AB4CA) + 12360;
  v3 = (*(v2 + 8 * (v0 + 22436)))(v1 - 224);
  v4 = STACK[0x320];
  STACK[0x348] = *(STACK[0x320] + 8 * v0);
  return (*(v4 + 8 * (v0 + 4182)))(v3);
}

uint64_t sub_2448EA8A0(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(STACK[0x71C]) = a3;
  v5 = a3 == (((v3 ^ 0x7327) - 14239) ^ 0x487C9495);
  return (*(v4 + 8 * ((8 * v5) | (32 * v5) | v3)))();
}

void *sub_2448EA91C()
{
  STACK[0x698] = STACK[0x668];
  STACK[0x8C0] = *(v1 + 8 * v0);
  return (*(v1 + 8 * ((((v0 + 3071) | 0x30A4) ^ 0x37F8) + v0)))(&STACK[0x698], 3300551070);
}

uint64_t sub_2448EAA54@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 - 0x6286B82630F8F224);
  STACK[0x728] = v4;
  return (*(v3 + 8 * (((v4 == v2) * ((((v1 - 1781292075) & 0x6A2C257D) + 3034) ^ 0x2D77)) | (v1 - 8654))))();
}

uint64_t sub_2448EAB4C()
{
  v2 = (*(v1 + 8 * (v0 + 9640)))(32);
  v3 = STACK[0x320];
  STACK[0x580] = v2 + 0x750C1ABFB0567FDBLL;
  return (*(v3 + 8 * (((v2 == 0) * (v0 - 35179 + 5 * (v0 ^ 0x2537))) ^ v0)))();
}

uint64_t sub_2448EABCC(uint64_t a1)
{
  *a1 = 0x750C1ABFB0567FDBLL;
  *(a1 + 8) = 0x750C1ABFB0567FDBLL;
  v5 = v2 ^ 0xE2617E9u;
  STACK[0xA00] = v5;
  LODWORD(v5) = ((v5 + 10) ^ 0xEFB5CBC) + ((2 * (v5 + 10)) & 0x1DF6B978) - 76577920 + v1 - 7666;
  *(a1 + 16) = v5;
  v6 = (*(v3 + 8 * (v1 ^ 0xC17)))(v5 + ((v1 - 11394) ^ 0xF594CEB4));
  v7 = STACK[0x320];
  *(a1 + 24) = v6;
  return (*(v7 + 8 * (((2 * (v6 == 0)) | (8 * (v6 == 0))) ^ v1)))();
}

uint64_t sub_2448EAD44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v21 = *v15 + v18 - 0x60F92125641679AALL;
  v22 = __ROR8__(v21 & 0xFFFFFFFFFFFFFFF8, 8);
  v23 = ((2 * v22 + 0x1358004F76A1D6FCLL) & 0x52654FF3073825D0) - v22 - 0x36DEA8213EECFE67;
  v24 = __ROR8__(v23 ^ 0xE00389A0A8DA2F85, 8);
  v23 ^= 0xAD63889D725D7471;
  v25 = (((2 * (v24 + v23)) & 0x6AB7D0CE24EE43E8) - (v24 + v23) - 0x355BE867127721F5) ^ 0x471A5E4766B61801;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (((2 * (v27 + v26)) & 0xE674F2A747EA81D8) - (v27 + v26) + 0xCC586AC5C0ABF13) ^ 0x4DEDDAF47191399ALL;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x1717D4ABBED3C077;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (((2 * (v32 + v31)) & 0x652AFBEC07153E02) - (v32 + v31) - 0x32957DF6038A9F02) ^ 0x21E20EB6234EB32ELL;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0x3098A71738BBE723;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  v38 = __ROR8__((v9 - ((v37 + v36) | v9) + ((v37 + v36) | 0x1E5940AE4771D176)) ^ 0x4E71FBCDA0D3A4F6, 8) + ((v9 - ((v37 + v36) | v9) + ((v37 + v36) | 0x1E5940AE4771D176)) ^ 0x4E71FBCDA0D3A4F6 ^ __ROR8__(v36, 61));
  v39 = __ROR8__((v21 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v40 = ((a2 - v39) & 0x968887040D1C5000) + v39 + a8 - ((v39 + a8) & 0x928887040D1C5000);
  v41 = __ROR8__(v40 ^ 0x244656A2D9A59292, 8);
  v42 = *(a5 + 8 * v17);
  *v21 = ((((v38 & v12 ^ 0x372A12000080EE21) + (v38 ^ 0x885028F6F338005ELL) - ((v38 ^ 0x885028F6F338005ELL) & v12)) ^ 0xDF82493E1D77B0BDLL) >> (8 * (v21 & 7u))) ^ HIBYTE(v14) ^ 0x12;
  v43 = v40 ^ 0x6926579F0322C966;
  v44 = (a1 - ((v41 + (v40 ^ 0x6926579F0322C966)) | a1) + ((v41 + (v40 ^ 0x6926579F0322C966)) | 0xF0E418D3F39C0B0DLL)) ^ 0x7D5A510C78A2CD07;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ a7;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ 0x1717D4ABBED3C077;
  v49 = __ROR8__(v48, 8);
  v50 = v48 ^ __ROR8__(v47, 61);
  v51 = (((2 * (v49 + v50)) | 0x1FB1BCB025A9A32) - (v49 + v50) - 0xFD8DE5812D4D19) ^ 0xEC75015A5E169EC9;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ 0x3098A71738BBE723;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ a4;
  *(v21 + 1) = (((__ROR8__(v55, 8) + (v55 ^ __ROR8__(v54, 61))) ^ v16) >> (8 * ((v21 + 1) & 7))) ^ BYTE2(v14) ^ 0x1C;
  v56 = __ROR8__((v21 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v57 = (v56 + a8) ^ 0xFFAED09B0E3E9966;
  v58 = (__ROR8__((v56 + a8) ^ v20, 8) + v57) ^ v19;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = __ROR8__(v58, 8);
  v61 = __ROR8__((((2 * ((v60 + v59) ^ 0x13AC9FC9158C886CLL)) | 0x26C2470D59C93E66) - ((v60 + v59) ^ 0x13AC9FC9158C886CLL) - 0x13612386ACE49F33) ^ 0x41E5E01794F391D6, 8);
  v62 = (((2 * ((v60 + v59) ^ 0x13AC9FC9158C886CLL)) | 0x26C2470D59C93E66) - ((v60 + v59) ^ 0x13AC9FC9158C886CLL) - 0x13612386ACE49F33) ^ 0x41E5E01794F391D6 ^ __ROR8__(v59, 61);
  v63 = (v61 + v62) ^ 0x1717D4ABBED3C077;
  v64 = v63 ^ __ROR8__(v62, 61);
  v65 = (__ROR8__(v63, 8) + v64) ^ 0xEC888CBFDF3BD3D0;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = __ROR8__(v65, 8);
  v68 = (v11 - ((v67 + v66) | v11) + ((v67 + v66) | 0x756319745B15AE33)) ^ 0x45FBBE6363AE4910;
  v69 = v68 ^ __ROR8__(v66, 61);
  v70 = (__ROR8__(v68, 8) + v69) ^ a4;
  *(v21 + 2) = (((__ROR8__(v70, 8) + (v70 ^ __ROR8__(v69, 61))) ^ v16) >> (8 * ((v21 + 2) & 7))) ^ BYTE1(v14) ^ v10;
  v71 = __ROR8__((v21 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v72 = (v71 + a8) ^ 0xFFAED09B0E3E9966;
  v73 = (__ROR8__((v71 + a8) ^ v20, 8) + v72) ^ v19;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = (__ROR8__(v73, 8) + v74) ^ a7;
  v76 = v75 ^ __ROR8__(v74, 61);
  v77 = (__ROR8__(v75, 8) + v76) ^ 0x1717D4ABBED3C077;
  v78 = v77 ^ __ROR8__(v76, 61);
  v79 = __ROR8__(v77, 8);
  v80 = (v13 - ((v79 + v78) | v13) + ((v79 + v78) | a6)) ^ v8;
  v81 = v80 ^ __ROR8__(v78, 61);
  v82 = (__ROR8__(v80, 8) + v81) ^ 0x3098A71738BBE723;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = (__ROR8__(v82, 8) + v83) ^ a4;
  *(v21 + 3) = v14 ^ a3 ^ (((__ROR8__(v84, 8) + (v84 ^ __ROR8__(v83, 61))) ^ v16) >> (8 * ((v21 + 3) & 7)));
  return v42();
}

uint64_t sub_2448EB52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a6 + 8 * v7);
  v11 = *v9;
  v12 = *v9 + 4;
  v13 = __ROR8__(v12 & 0xFFFFFFFFFFFFFFF8, 8);
  v14 = ((2 * v13 + 0x1358004F76A1D6FCLL) & 0xB543C47627A6A004) - v13 + 0x17B21D9D30DBC47FLL;
  v15 = v14 ^ 0x1390CC6238956D6FLL;
  v14 ^= 0x5EF0CD5FE212369BuLL;
  v16 = (__ROR8__(v15, 8) + v14) ^ 0x8DBE49DF8B3EC60ALL;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0x41285C582D9B8689;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (((2 * (v20 + v19)) & 0x3EC3AD2A46AC9354) - (v20 + v19) + 0x609E296ADCA9B655) ^ 0x7789FDC1627A7622;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0xEC888CBFDF3BD3D0;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ a2;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ 0x5028BB63E7A27580;
  v28 = __ROR8__(v27, 8);
  v29 = __ROR8__(v26, 61);
  *(v11 + 4) = v8 ^ 0x93 ^ (((v28 + (v27 ^ v29) - ((2 * (v28 + (v27 ^ v29))) & 0x9FF91FBD96B0FA88) - 0x3003702134A782BCLL) ^ 0xA744FC26378F238CLL) >> (8 * (v12 & 7u)));
  v30 = __ROR8__((v11 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v31 = v30 - ((2 * v30 + 0x1358004F76A1D6FCLL) & 0x53F10677A11C3C64) + 0x37A483638BDF09B0;
  v32 = v31 ^ 0x1F36529D0437DCA0;
  v31 ^= 0x525653A0DEB08754uLL;
  v33 = (__ROR8__(v32, 8) + v31) ^ 0x8DBE49DF8B3EC60ALL;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0x41285C582D9B8689;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (v37 + v36 - ((2 * (v37 + v36)) & 0xD9CB08B4ECE0576CLL) + 0x6CE5845A76702BB6) ^ 0x7BF250F1C8A3EBC1;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ 0xEC888CBFDF3BD3D0;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = __ROR8__(v40, 8);
  v43 = (((2 * (v42 + v41)) & 0xD648B671C1CE70FALL) - (v42 + v41) + 0x14DBA4C71F18C782) ^ 0x244303D027A320A1;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ 0x5028BB63E7A27580;
  *(v11 + 5) = v6 ^ (((__ROR8__(v45, 8) + (v45 ^ __ROR8__(v44, 61))) ^ 0x68B873F8FCD75EC8uLL) >> (8 * ((v11 + 5) & 7))) ^ 0xEE;
  return v10();
}

uint64_t sub_2448EBBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x498] = 0x750C1ABFB0567FDBLL;
  STACK[0x7D8] = STACK[0x728];
  LODWORD(STACK[0x4B4]) = -41143177;
  STACK[0x898] = &STACK[0x498];
  LODWORD(STACK[0x41C]) = 1401132029;
  return (*(v7 + 8 * v6))(a1, a2, a3, a4, a5, a6, 1647873780);
}

uint64_t sub_2448EBC1C@<X0>(uint64_t a1@<X6>, uint64_t a2@<X7>, unsigned int a3@<W8>)
{
  v11 = (v6 - 1);
  v12 = (v11 | ((v11 < a3) << 32)) - 1819935941;
  v13 = v5 + v12;
  v14 = v12 + v4;
  v15 = v12 + v4 + 10;
  v16 = __ROR8__(v13 & 0xFFFFFFFFFFFFFFF8, 8);
  v17 = (v16 + a2) ^ 0xB74DE7873E22183;
  v18 = __ROR8__((v3 - 13445) ^ 0x46CB58E297BC59FBLL ^ (v16 + a2), 8);
  v19 = __ROR8__((((2 * (v18 + v17)) | 0x5A674FDF1756D5A2) - (v18 + v17) + 0x52CC58107454952FLL) ^ 0xBAEC1222C318C06BLL, 8);
  v20 = (((2 * (v18 + v17)) | 0x5A674FDF1756D5A2) - (v18 + v17) + 0x52CC58107454952FLL) ^ 0xBAEC1222C318C06BLL ^ __ROR8__(v17, 61);
  v21 = (v19 + v20) ^ v9;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ a1;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = __ROR8__(v15 & 0xFFFFFFFFFFFFFFF8, 8) - 0x7653FFD844AF1482;
  v26 = v25 ^ 0xB2CED1A6D4B9C292;
  v27 = __ROR8__(v23, 8);
  v25 ^= 0xFFAED09B0E3E9966;
  v28 = (__ROR8__(v26, 8) + v25) ^ 0x8DBE49DF8B3EC60ALL;
  v29 = v28 ^ __ROR8__(v25, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ v8;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (v32 + v31 - ((2 * (v32 + v31)) & 0x1CDA1B05ADC53F2CLL) - 0x7192F27D291D606ALL) ^ 0x997AD92968315FE1;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (((v27 + v24) | 0x6B3C3A68AAE458CALL) - ((v27 + v24) | 0x94C3C597551BA735) - 0x6B3C3A68AAE458CBLL) ^ 0xCA1EA81159D0CDAELL;
  v37 = v36 ^ __ROR8__(v24, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0x3DFD662A599D9AF9;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ 0xF5D96172F3B103E6;
  v41 = (((v35 + v34) | 0x276D29752D95C365) - ((v35 + v34) | 0xD892D68AD26A3C9ALL) - 0x276D29752D95C366) ^ 0xCBE5A5CAF2AE10B5;
  v42 = v41 ^ __ROR8__(v34, 61);
  v43 = __ROR8__(v40, 8) + (v40 ^ __ROR8__(v39, 61));
  v44 = (__ROR8__(v41, 8) + v42) ^ 0x3098A71738BBE723;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = __ROR8__(v44, 8);
  v47 = (((2 * (v46 + v45)) | 0x6A6BEF16EAD396BALL) - (v46 + v45) + 0x4ACA08748A9634A3) ^ 0xE51D4CE892CBBEDDLL;
  *(v14 + 10) = (((__ROR8__(v47, 8) + (v47 ^ __ROR8__(v45, 61))) ^ v7) >> (8 * (v15 & 7u))) ^ ((v43 ^ 0x8A3898548E787E8BLL) >> (8 * (v13 & 7u))) ^ *v13;
  return (*(v10 + 8 * ((60 * (v11 == a3)) ^ v3)))();
}

uint64_t sub_2448EC15C@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v7 = (v5 - 1);
  v8 = (v7 | ((v7 < v2) << 32)) + 0x5262476B33452863;
  v9 = v4 + v8 + ((a2 + 726904526) & 0xD4AC77F1 ^ 0xAD9DB8946BB6A9B6);
  v10 = v8 + v3 - 0x5262476B944961A0;
  v11 = __ROR8__(v9 & 0xFFFFFFFFFFFFFFF8, 8) - 0x7653FFD844AF1482;
  v12 = v11 ^ 0xFFAED09B0E3E9966;
  v13 = __ROR8__(v11 ^ 0xB2CED1A6D4B9C292, 8) + (v11 ^ 0xFFAED09B0E3E9966);
  v14 = ((v13 | 0xD408256BCF0DF4BALL) - (v13 | 0x2BF7DA9430F20B45) + 0x2BF7DA9430F20B45) ^ 0x59B66CB4443332B0;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (((2 * (v16 + v15)) | 0xB30143A17B512198) - (v16 + v15) - 0x5980A1D0BDA890CCLL) ^ 0x18A8FD8890331645 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__((((2 * (v16 + v15)) | 0xB30143A17B512198) - (v16 + v15) - 0x5980A1D0BDA890CCLL) ^ 0x18A8FD8890331645, 8) + v17) ^ 0x1717D4ABBED3C077;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (((2 * (v20 + v19)) | 0x2F2FE27F94D7D59CLL) - (v20 + v19) + 0x68680EC035941532) ^ 0x7B1F7D801550391ELL;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = __ROR8__(v21, 8);
  v24 = ((v23 + v22) | 0x398F0AE4B26C3B04) - ((v23 + v22) | 0xC670F51B4D93C4FBLL);
  v25 = __ROR8__(v10 & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = (v24 - 0x398F0AE4B26C3B05) ^ 0x917ADF38AD7DC27;
  v27 = (0x7653FFD844AF1481 - v25) & 0xA16C8C544D5E23C8 | (v25 + 0x9AC0027BB50EB7ELL) & 0x5A9373ABB2A1DC37;
  v28 = v27 ^ 0x13A25DF299E7E15ALL;
  v27 ^= 0x5EC25CCF4360BAAEuLL;
  v29 = v26 ^ __ROR8__(v22, 61);
  v30 = __ROR8__(v28, 8) + v27;
  v31 = __ROR8__(v26, 8) + v29;
  v32 = (v30 - ((2 * v30) & 0xABB5637936BDEFB4) + 0x55DAB1BC9B5EF7DALL) ^ 0xD864F863106031D0;
  v33 = v32 ^ __ROR8__(v27, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0x41285C582D9B8689;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (((2 * (v36 + v35)) | 0xB0D7263BF68D6C1ALL) - (v36 + v35) + 0x27946CE204B949F3) ^ 0xCF7C47B64595767ALL;
  v38 = (v31 - ((2 * v31) & 0x4E27738A1387A88) + 0x2713B9C509C3D44) ^ 0x525980FFB73E48C4;
  v39 = v37 ^ __ROR8__(v35, 61);
  v40 = (__ROR8__(v37, 8) + v39) ^ 0xEC888CBFDF3BD3D0;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ 0x3098A71738BBE723;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = __ROR8__(v38, 8) + (v38 ^ __ROR8__(v29, 61));
  v45 = (__ROR8__(v42, 8) + v43) ^ 0x5028BB63E7A27580;
  *v10 = ((v44 ^ 0x68B873F8FCD75EC8uLL) >> (8 * (v9 & 7u))) ^ (((__ROR8__(v45, 8) + (v45 ^ __ROR8__(v43, 61))) ^ 0x68B873F8FCD75EC8uLL) >> (8 * (v10 & 7u))) ^ *v9;
  return (*(a1 + 8 * (((v7 != v2) * v6) ^ a2)))();
}

uint64_t sub_2448EC5F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W8>)
{
  v7 = LODWORD(STACK[0xAE8]) - ((((a6 - 1295572821) | 0x3340) ^ 0x2460A0AA) & (2 * LODWORD(STACK[0xAE8]))) + 305154981;
  v8 = (v7 ^ 0xCF8BA052) + 1870460926 + ((2 * v7) & 0xBB77D7EE ^ 0x2060974A);
  return (*(v6 + 8 * ((56 * ((((v8 - a6) | (a6 - v8)) & 0x80000000) == 0)) ^ (a6 - 1295572515))))(a1, a2, a3, a4, a5, v6);
}

uint64_t sub_2448EC7F4@<X0>(unsigned int a1@<W0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, int a6@<W8>)
{
  v23 = (v6 - 1);
  v24 = v23 == a1;
  v25 = (v23 | ((v23 < a1) << 32)) + v12;
  v26 = v25 + v7 + 10;
  v27 = __ROR8__(v26 & 0xFFFFFFFFFFFFFFF8, 8);
  v28 = -2 - (((0x7653FFD844AF1481 - v27) | 0x4D40EBB8E606437CLL) + ((v27 + 0x9AC0027BB50EB7ELL) | 0xB2BF144719F9BC83));
  v29 = __ROR8__(v28 ^ 0xFF8E3A1E32BF81EELL, 8);
  v28 ^= 0xB2EE3B23E838DA1ALL;
  v30 = (v29 + v28 - (a2 & (2 * (v29 + v28))) + a4) ^ a5;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0x41285C582D9B8689;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0x1717D4ABBED3C077;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (v9 - ((v36 + v35) | v9) + ((v36 + v35) | v13)) ^ v14;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = __ROR8__(v37, 8);
  v40 = ((v15 & (2 * (v39 + v38))) - (v39 + v38) + v16) ^ v17;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = __ROR8__(v40, 8);
  v43 = (v8 - ((v42 + v41) | v8) + ((v42 + v41) | v18)) ^ v19;
  v44 = __ROR8__(v43, 8) + (v43 ^ __ROR8__(v41, 61));
  *v26 = ((((v20 & (2 * v44)) - v44 + v21) ^ v22) >> (8 * (v26 & 7u))) ^ *(v10 + v25);
  v45 = !v24;
  return (*(a3 + 8 * ((v45 * a6) ^ v11)))(1295574005);
}

uint64_t sub_2448ECACC@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 - 0x750C1ABFB0567FC3);
  v5 = __ROR8__((v4 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v6 = *(v3 + 8 * v2);
  v7 = ((0x1653FFD844AF1481 - v5) & 0x130468B0ADC0E86ELL) + v5 - 0x7653FFD844AF1482 - ((v5 - 0x7653FFD844AF1482) & 0x130468B0ADC0E86ELL);
  v8 = v7 ^ 0xA1CAB91679792AFCLL;
  v7 ^= 0xECAAB82BA3FE7108;
  v9 = __ROR8__(v8, 8);
  v10 = (((2 * (v9 + v7)) & 0x8FCBB528808EB37CLL) - (v9 + v7) + 0x381A256BBFB8A641) ^ 0xB5A46CB43486604BLL;
  v11 = v10 ^ __ROR8__(v7, 61);
  v12 = __ROR8__(v10, 8);
  v13 = (v12 + v11 - ((2 * (v12 + v11)) & 0x54FF189EF0F80B50) + 0x2A7F8C4F787C05A8) ^ 0x6B57D01755E78321;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0x1717D4ABBED3C077;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (((2 * (v17 + v16)) & 0x15C8C1EBA79D52F6) - (v17 + v16) + 0x751B9F0A2C315684) ^ 0x999313B5F30A8554;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = __ROR8__(v18, 8);
  v21 = __ROR8__((v20 + v19 - ((2 * (v20 + v19)) & 0x596CDF2F575C1AE0) - 0x534990685451F290) ^ 0x9C2EC8809315EA53, 8);
  v22 = (v20 + v19 - ((2 * (v20 + v19)) & 0x596CDF2F575C1AE0) - 0x534990685451F290) ^ 0x9C2EC8809315EA53 ^ __ROR8__(v19, 61);
  v4[10] = (((__ROR8__((v21 + v22) ^ 0x5028BB63E7A27580, 8) + ((v21 + v22) ^ 0x5028BB63E7A27580 ^ __ROR8__(v22, 61))) ^ 0x68B873F8FCD75EC8) >> (8 * ((v4 + 10) & 7u))) ^ HIBYTE(a1) ^ 0x91;
  v23 = __ROR8__((v4 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v24 = ((0x7653FFD844AF1481 - v23) & 0x70831D5BAED8CA38) + v23 - 0x7653FFD844AF1482 - ((v23 - 0x7653FFD844AF1482) & 0x70831D5BAED8CA38);
  v25 = v24 ^ 0xC24DCCFD7A6108AALL;
  v24 ^= 0x8F2DCDC0A0E6535ELL;
  v26 = __ROR8__(v25, 8);
  v27 = __ROR8__((((2 * (v26 + v24)) & 0x6E525F98C78DC348) - (v26 + v24) - 0x37292FCC63C6E1A5) ^ 0x456899EC1707D851, 8);
  v28 = (((2 * (v26 + v24)) & 0x6E525F98C78DC348) - (v26 + v24) - 0x37292FCC63C6E1A5) ^ 0x456899EC1707D851 ^ __ROR8__(v24, 61);
  v29 = (v27 + v28 - ((2 * (v27 + v28)) & 0xC56FF7F50AB548DALL) - 0x1D4804057AA55B93) ^ 0xA39FA7A2A8C122E4;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0x1717D4ABBED3C077;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0xEC888CBFDF3BD3D0;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (((2 * (v35 + v34)) | 0x7A6D1720E44E8DA0) - (v35 + v34) + 0x42C9746F8DD8B930) ^ 0x8DAE2C874A9CA1F3;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (((2 * (v38 + v37)) & 0xB9A93452FE95BBA4) - (v38 + v37) - 0x5CD49A297F4ADDD3) ^ 0xF303DEB5671757ADLL;
  v4[11] = (((__ROR8__(v39, 8) + (v39 ^ __ROR8__(v37, 61))) ^ 0x68B873F8FCD75EC8) >> (8 * ((v4 + 11) & 7u))) ^ BYTE6(a1) ^ 0xE;
  v40 = __ROR8__((v4 + 12) & 0xFFFFFFFFFFFFFFF8, 8);
  v41 = ((2 * (v40 - 0x7653FFD844AF1482)) | 0x45442B74ECC86264) - (v40 - 0x7653FFD844AF1482) - 0x22A215BA76643132;
  v42 = v41 ^ 0x906CC41CA2DDF3A0;
  v41 ^= 0xDD0CC521785AA854;
  v43 = (__ROR8__(v42, 8) + v41) ^ 0x8DBE49DF8B3EC60ALL;
  v44 = __ROR8__(v43, 8);
  v45 = v43 ^ __ROR8__(v41, 61);
  v46 = (v44 + v45 - ((2 * (v44 + v45)) & 0x621F3207827676ACLL) + 0x310F9903C13B3B56) ^ 0x7027C55BECA0BDDFLL;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = __ROR8__(v46, 8);
  v49 = (((v48 + v47) & 0xF2F70C921EAF6767 ^ 0x129204900E202063) + ((v48 + v47) & 0xD08F36DE1509898 ^ 0x8536880509889) - 1) ^ 0x58D835330A3789CLL;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = __ROR8__(v49, 8);
  v52 = (((v51 + v50) | 0x79E82E87A79FB37) - ((v51 + v50) | 0xF8617D17858604C8) - 0x79E82E87A79FB38) ^ 0xEB160E57A54228E7;
  v53 = v52 ^ __ROR8__(v50, 61);
  v54 = __ROR8__(v52, 8);
  v55 = (((2 * (v54 + v53)) | 0x595BEEF0A4B15B5ELL) - (v54 + v53) + 0x53520887ADA75251) ^ 0x9C35506F6AE34A8CLL;
  v56 = v55 ^ __ROR8__(v53, 61);
  v57 = __ROR8__(v55, 8);
  v58 = (((2 * (v57 + v56)) | 0x6A5ED517B9BA5572) - (v57 + v56) - 0x352F6A8BDCDD2AB9) ^ 0x6507D1E83B7F5F39;
  v59 = v58 ^ __ROR8__(v56, 61);
  v60 = __ROR8__(v58, 8);
  v4[12] = (((((v60 + v59) | 0x5FAF6B1693D6825ALL) - ((v60 + v59) | 0xA05094E96C297DA5) - 0x5FAF6B1693D6825BLL) ^ 0x371718EE6F01DC92) >> (8 * ((v4 + 12) & 7u))) ^ BYTE5(a1) ^ 0xCE;
  v61 = __ROR8__((v4 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v62 = ((2 * (v61 - 0x7653FFD844AF1482)) | 0x726974BEE01D68F0) - (v61 - 0x7653FFD844AF1482) - 0x3934BA5F700EB478;
  v63 = v62 ^ 0x8BFA6BF9A4B776EALL;
  v62 ^= 0xC69A6AC47E302D1ELL;
  v64 = (__ROR8__(v63, 8) + v62) ^ 0x8DBE49DF8B3EC60ALL;
  v65 = v64 ^ __ROR8__(v62, 61);
  v66 = (__ROR8__(v64, 8) + v65) ^ 0x41285C582D9B8689;
  v67 = v66 ^ __ROR8__(v65, 61);
  v68 = (__ROR8__(v66, 8) + v67) ^ 0x1717D4ABBED3C077;
  v69 = v68 ^ __ROR8__(v67, 61);
  v70 = (__ROR8__(v68, 8) + v69) ^ 0xEC888CBFDF3BD3D0;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = (__ROR8__(v70, 8) + v71) ^ 0x3098A71738BBE723;
  v73 = v72 ^ __ROR8__(v71, 61);
  v74 = (__ROR8__(v72, 8) + v73) ^ 0x5028BB63E7A27580;
  v75 = ((__ROR8__(v74, 8) + (v74 ^ __ROR8__(v73, 61))) ^ 0x68B873F8FCD75EC8uLL) >> (8 * ((v4 + 13) & 7u));
  v76 = __ROR8__((v4 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v77 = ((0x7653FFD844AF1481 - v76) & 0xFE542F78DA5444B9) + v76 - 0x7653FFD844AF1482 - ((v76 - 0x7653FFD844AF1482) & 0xFA542F78DA5444B9);
  v78 = v77 ^ 0x4C9AFEDE0EED862BLL;
  v77 ^= 0x1FAFFE3D46ADDDFuLL;
  v79 = (__ROR8__(v78, 8) + v77) ^ 0x8DBE49DF8B3EC60ALL;
  v80 = __ROR8__(v79, 8);
  v81 = v79 ^ __ROR8__(v77, 61);
  v82 = (((v80 + v81) & 0x23EC8C234378AF19 ^ 0x3C8000341608D11) + ((v80 + v81) & 0xDC1373DCBC8750E6 ^ 0xDC006048288600E1) - 1) ^ 0x9EE03C13447D0B78;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = (__ROR8__(v82, 8) + v83) ^ 0x1717D4ABBED3C077;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = __ROR8__(v84, 8);
  v87 = (((2 * (v86 + v85)) | 0xEBEEBD579C80540CLL) - (v86 + v85) + 0xA08A15431BFD5FALL) ^ 0x197FD214117BF9D6;
  v88 = v87 ^ __ROR8__(v85, 61);
  v89 = (__ROR8__(v87, 8) + v88) ^ 0x3098A71738BBE723;
  v90 = v89 ^ __ROR8__(v88, 61);
  v91 = __ROR8__(v89, 8);
  LOBYTE(v90) = (((__ROR8__((v91 + v90 - ((2 * (v91 + v90)) & 0x1D2A56B20491C28) + 0xE952B590248E14) ^ 0x50C1E9D67786FB94, 8) + ((v91 + v90 - ((2 * (v91 + v90)) & 0x1D2A56B20491C28) + 0xE952B590248E14) ^ 0x50C1E9D67786FB94 ^ __ROR8__(v90, 61))) ^ 0x68B873F8FCD75EC8uLL) >> (8 * ((v4 + 14) & 7u))) ^ BYTE3(a1);
  v92 = __ROR8__((v4 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v93 = ((v92 - 0x7653FFD844AF1482) | 0x3482ED2F4BE36F82) - ((v92 - 0x7653FFD844AF1482) | 0xCB7D12D0B41C907DLL) - 0x3482ED2F4BE36F83;
  v94 = v93 ^ 0x864C3C899F5AAD10;
  v93 ^= 0xCB2C3DB445DDF6E4;
  v95 = (__ROR8__(v94, 8) + v93) ^ 0x8DBE49DF8B3EC60ALL;
  v96 = v95 ^ __ROR8__(v93, 61);
  v4[13] = v75 ^ BYTE4(a1) ^ 0x63;
  v4[14] = v90 ^ 0x19;
  v97 = (__ROR8__(v95, 8) + v96) ^ 0x41285C582D9B8689;
  v98 = v97 ^ __ROR8__(v96, 61);
  v99 = (__ROR8__(v97, 8) + v98) ^ 0x1717D4ABBED3C077;
  v100 = v99 ^ __ROR8__(v98, 61);
  v101 = __ROR8__(v99, 8);
  v102 = (((2 * (v101 + v100)) | 0x421E3E46FF8178FELL) - (v101 + v100) + 0x5EF0E0DC803F4381) ^ 0x4D87939CA0FB6FAFLL;
  v103 = v102 ^ __ROR8__(v100, 61);
  v104 = (__ROR8__(v102, 8) + v103) ^ 0x3098A71738BBE723;
  v105 = __ROR8__(v104, 8);
  v106 = v104 ^ __ROR8__(v103, 61);
  v107 = (v105 + v106) ^ 0x5028BB63E7A27580;
  v108 = v107 ^ __ROR8__(v106, 61);
  v109 = __ROR8__(v107, 8);
  LOBYTE(v108) = (((((v109 + v108) | 0xC03966FD3C50E4A5) - ((v109 + v108) | 0x3FC69902C3AF1B5ALL) + 0x3FC69902C3AF1B5ALL) ^ 0xA8811505C087BA6DLL) >> (8 * ((v4 + 15) & 7u))) ^ BYTE2(a1) ^ 0x9C;
  v110 = __ROR8__((v4 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v4[15] = v108;
  v111 = ((2 * (v110 - 0x7653FFD844AF1482)) | 0x75D79D827AEEC060) - (v110 - 0x7653FFD844AF1482) + 0x4514313EC2889FD0;
  v112 = __ROR8__(v111 ^ 0x8251F67E9CEA2A2, 8);
  v111 ^= 0x45451E5A3349F956uLL;
  v113 = (v112 + v111) ^ 0x8DBE49DF8B3EC60ALL;
  v114 = v113 ^ __ROR8__(v111, 61);
  v115 = (__ROR8__(v113, 8) + v114) ^ 0x41285C582D9B8689;
  v116 = v115 ^ __ROR8__(v114, 61);
  v117 = (__ROR8__(v115, 8) + v116) ^ 0x1717D4ABBED3C077;
  v118 = v117 ^ __ROR8__(v116, 61);
  v119 = (__ROR8__(v117, 8) + v118) ^ 0xEC888CBFDF3BD3D0;
  v120 = v119 ^ __ROR8__(v118, 61);
  v121 = (__ROR8__(v119, 8) + v120) ^ 0x3098A71738BBE723;
  v122 = v121 ^ __ROR8__(v120, 61);
  v123 = (__ROR8__(v121, 8) + v122) ^ 0x5028BB63E7A27580;
  v124 = __ROR8__(v123, 8);
  v125 = __ROR8__(v122, 61);
  v4[16] = (((((v124 + (v123 ^ v125)) | 0xD08AEA42F2DFEC1BLL) - ((v124 + (v123 ^ v125)) | 0x2F7515BD0D2013E4) + 0x2F7515BD0D2013E4) ^ 0xB83299BA0E08B2D3) >> (8 * ((v4 + 16) & 7u))) ^ BYTE1(a1) ^ 0xD8;
  v126 = __ROR8__((v4 + 17) & 0xFFFFFFFFFFFFFFF8, 8);
  v127 = ((2 * v126 + 0x1358004F76A1D6FCLL) & 0xF72D73938192B118) - v126 - 0x942B9F17C1A440BLL;
  v128 = v127 ^ 0x32A79790EB8F65E1;
  v127 ^= 0x7FC796AD31083E15uLL;
  v129 = (__ROR8__(v128, 8) + v127) ^ 0x8DBE49DF8B3EC60ALL;
  v130 = v129 ^ __ROR8__(v127, 61);
  v131 = (__ROR8__(v129, 8) + v130) ^ 0x41285C582D9B8689;
  v132 = v131 ^ __ROR8__(v130, 61);
  v133 = (__ROR8__(v131, 8) + v132) ^ 0x1717D4ABBED3C077;
  v134 = v133 ^ __ROR8__(v132, 61);
  v135 = (__ROR8__(v133, 8) + v134) ^ 0xEC888CBFDF3BD3D0;
  v136 = v135 ^ __ROR8__(v134, 61);
  v137 = (__ROR8__(v135, 8) + v136) ^ 0x3098A71738BBE723;
  v138 = v137 ^ __ROR8__(v136, 61);
  v139 = (__ROR8__(v137, 8) + v138) ^ 0x5028BB63E7A27580;
  v4[17] = (((__ROR8__(v139, 8) + (v139 ^ __ROR8__(v138, 61))) ^ 0x68B873F8FCD75EC8uLL) >> (8 * ((v4 + 17) & 7u))) ^ a1 ^ 0x3B;
  return v6();
}

uint64_t sub_2448ED80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x750] = 0x750C1ABFB0567FDBLL;
  STACK[0x7D8] = STACK[0x530];
  LODWORD(STACK[0x4B4]) = STACK[0xB00];
  STACK[0x898] = &STACK[0x750];
  LODWORD(STACK[0x41C]) = 157621918;
  return (*(a6 + 8 * (v6 - 12561)))();
}

uint64_t sub_2448ED8A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x468] = 0x750C1ABFB0567FDBLL;
  STACK[0x7D8] = STACK[0x608];
  LODWORD(STACK[0x4B4]) = STACK[0xAC8];
  STACK[0x898] = &STACK[0x468];
  LODWORD(STACK[0x41C]) = 1965568992;
  return (*(a6 + 8 * (v6 - 12561)))();
}

uint64_t sub_2448EDA7C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + v1) = v2;
  *(a1 - 0x146375EC570BCC2FLL) = v2;
  return (*(v4 + 8 * v3))();
}

uint64_t sub_2448EDAAC()
{
  v2 = STACK[0x498];
  v3 = *(STACK[0x498] - 0x750C1ABFB0567FD3);
  v4 = STACK[0x580];
  *(v4 - 0x750C1ABFB0567FD3) = v3;
  *(v4 - 0x750C1ABFB0567FDBLL) = *(v2 - 0x750C1ABFB0567FDBLL);
  return (*(v1 + 8 * (((((-85 * (v0 ^ 0xD6)) ^ (v3 == 0x750C1ABFB0567FDBLL)) & 1) * (((v0 + 13185) | 9) ^ 0x5070)) ^ v0)))();
}

uint64_t sub_2448EDD50()
{
  v2 = (*(v1 + 8 * (v0 + 21715)))();
  v3 = STACK[0x320];
  *(STACK[0x498] - 0x750C1ABFB0567FC3) = 0;
  return (*(v3 + 8 * v0))(v2);
}

uint64_t sub_2448EDE14@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 & 0xD4ABF7F;
  (*(v2 + 8 * (v1 & 0xD4ABF7F ^ 0x44AFu)))(a1 - 0x750C1ABFB0567FDBLL);
  v4 = STACK[0x320];
  STACK[0x498] = 0x750C1ABFB0567FDBLL;
  return (*(v4 + 8 * (((LODWORD(STACK[0x7D4]) == 1216124116) * (((v3 ^ 0x3C16) + 2606) ^ 0x1FE4)) ^ v3)))(3300551070);
}

uint64_t sub_2448EDF24()
{
  v3 = (*(v2 + 8 * (v0 + 15640)))();
  v4 = STACK[0x320];
  *(v1 - 0x750C1ABFB0567FC3) = 0;
  return (*(v4 + 8 * v0))(v3);
}

uint64_t sub_2448EE024@<X0>(uint64_t a1@<X8>)
{
  *(v4 - 0x750C1ABFB0567FDBLL) = v2;
  *(v2 - 0x750C1ABFB0567FD3) = *(a1 + v1);
  *(a1 + v1) = v2;
  return (*(v5 + 8 * v3))();
}

uint64_t sub_2448EE17C()
{
  *(v2 - 224) = v1 - 1230911237 * ((((2 * (v2 - 224)) | 0x6D938206) - (v2 - 224) + 1228291837) ^ 0xE5CA73F6) + 770023122;
  (*(v3 + 8 * (v1 + 770033198)))(v2 - 224);
  v4 = STACK[0x320];
  *(v0 - 0x58FA20369C313A5ELL) = *(v2 - 216) ^ 0x58CB8C59;
  return (*(v4 + 8 * (v1 ^ 0xD21A8A7D ^ (23600 * (v1 > 10 * (v1 ^ 0xD21A93F8) + 1134542156)))))(3300551070);
}

uint64_t sub_2448EE37C(uint64_t a1, uint64_t a2)
{
  v5 = STACK[0x520];
  STACK[0x3A8] = *(v4 + 8 * v3);
  return (*(v4 + 8 * (((v5 != 0x6286B82630F8F22CLL) * ((v2 + 213286734) & 0xF3497FE2 ^ 0x37FC)) ^ v2)))(a1, a2, 1216081105);
}

uint64_t sub_2448EE570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = STACK[0x520];
  v14 = STACK[0x8C8];
  v15 = &a9 + STACK[0x8C8] - 0x6919E10D53E7FABFLL;
  STACK[0x350] = v15;
  v16 = v15 + 16;
  STACK[0x850] = (v15 + 16);
  STACK[0x6C0] = (v15 + 48);
  STACK[0x8C8] = (v9 - 12227) + v14 - 153;
  (*(v12 + 8 * (v9 ^ 0x6971)))();
  v17 = (*(STACK[0x320] + 8 * (v9 + 10545)))(v16, 0, 32);
  v18 = STACK[0x320];
  STACK[0x4C8] = v11;
  STACK[0x7C8] = 0;
  LODWORD(STACK[0x64C]) = 237377513;
  STACK[0x4A8] = 0;
  LODWORD(STACK[0x6B8]) = 2048419028;
  STACK[0x368] = v13;
  return (*(v18 + 8 * (((v13 == v10) * ((11 * (v9 ^ 0x33A7)) ^ 0x211E)) ^ v9)))(v17);
}

uint64_t sub_2448EE674()
{
  STACK[0x7E8] = 0;
  LODWORD(STACK[0x39C]) = 2048419028;
  return (*(v1 + 8 * (v0 ^ 0x6D50 ^ ((v0 + 935) | 0x4040))))();
}

uint64_t sub_2448EE924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v13 = (v9 + a8);
  v14 = ((2 * v13) & 0xBFCFDBEALL) + (v13 ^ 0xFC7F7FFE5FE7EDF5) + a1;
  *(v14 + ((v10 + 651788835) ^ 0x380800186C1D703)) = 0;
  v14 += 0x3808001A018120CLL;
  *v14 = 0;
  *(v14 + 2) = 0;
  *(((2 * (v13 + 4)) & 0xDFBEFBECLL) + ((v13 + 4) ^ 0x7C7C57FF6FDF7DF6) + a1 - 0x7C7C57FF6FDF7DF6) = -9392;
  v15 = ((2 * (v13 + 6)) & 0x1B78EDF7ALL) + ((v13 + 6) ^ 0x7DFF7FFEDBC76FBDLL) + a1 - 0x7DFF7FFEDBC76FBDLL;
  *v15 = 0;
  *(v15 + 2) = 0;
  *(v15 + 3) = (-31 - (v11 + 2 * ((16 - v11) & 0x55 ^ v8 & 4))) ^ 0xD1;
  return (*(v12 + 8 * (v10 ^ (486 * (((16 - v11) ^ 0xD9D7E5E6F57D56EFLL) + 2 * ((16 - v11) & 0xFLL) != 0xD9D7E5E6F57D56EFLL)))))();
}

uint64_t sub_2448EEAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *v9 = a1;
  *v8 = a6;
  return (*(v10 + 8 * (v7 ^ (v6 + 2627) ^ (7862 * (v7 == ((596 * (v7 ^ (v6 + 34))) ^ 0x2FF7E9A))))))();
}

uint64_t sub_2448EEB68(uint64_t a1, uint64_t a2)
{
  STACK[0x5B0] = STACK[0x4A8];
  LODWORD(STACK[0x8D4]) = STACK[0x6B8];
  return (*(v3 + 8 * v2))(a1, a2, 1216124116);
}

uint64_t sub_2448EEC4C(uint64_t a1, uint64_t a2)
{
  v6 = (((v3 - 7703) | 0x23A0) ^ 0xDCA8330C) + v4;
  v7 = 1280229365 - *(v2 - 0x750C1ABFB0567FCBLL);
  v8 = v6 < 0x41E3A7DA;
  v9 = v6 > v7;
  v10 = (v7 < 0x41E3A7DA) ^ v8;
  v11 = v9;
  if (v10)
  {
    v12 = v8;
  }

  else
  {
    v12 = v11;
  }

  return (*(v5 + 8 * ((15 * v12) ^ v3)))(a1, a2, 1216081110);
}

uint64_t sub_2448EEEC4(uint64_t a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = (v11 | ((v11 < a2) << 32)) + 0x11AE0A4DF081507ELL;
  v13 = v12 + a3 - 0x11AE0A4E51860416;
  v14 = __ROR8__(v13 & 0xFFFFFFFFFFFFFFF8, 8);
  v15 = (((a4 + 3458) ^ (a5 + 3808)) - v14) & 0xED4F91AA4A423CBDLL | (v14 + a7) & 0x12B06E55B5BDC342;
  v16 = __ROR8__(v15 ^ 0x5F81400C9EFBFE2FLL, 8);
  v15 ^= 0x12E14131447CA5DBuLL;
  v17 = (v16 + v15) ^ v9;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ v8;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (a6 - ((v21 + v20) | a6) + ((v21 + v20) | 0x8D3B3089BCC3568ELL)) ^ 0x9A2CE422021096F9;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (((2 * (v24 + v23)) | 0xF728AA7174275F3ALL) - (v24 + v23) + 0x46BAAC745EC5063) ^ 0x171CD98765287C4DLL;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (((2 * (v27 + v26)) & 0xE1834BC7A0790E66) - (v27 + v26) + 0xF3E5A1C2FC378CCLL) ^ 0x3FA6FD0B17789FEFLL;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (((2 * (v30 + v29)) & 0x660E5FCC7C2DD5DALL) - (v30 + v29) + 0x4CF8D019C1E91512) ^ 0x1CD06B7A264B6092;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = __ROR8__(v31, 8);
  v34 = STACK[0x320];
  *(a1 + a8 + v12) = (((((2 * (v33 + v32)) | 0xC86F2EB5B2D86E6CLL) - (v33 + v32) - 0x6437975AD96C3736) ^ 0xC8FE4A225BB69FELL) >> (8 * (v13 & 7u))) ^ *v13;
  return (*(v34 + 8 * ((24959 * (v10 == 0)) ^ a4)))();
}

uint64_t sub_2448EF184()
{
  v7 = v2 < v3;
  *(v5 + v0 - 0x1A4A7C6654488C80) = 0;
  if (v7 == v5 - 0x1A4A7C6567C0EB25 < v3)
  {
    v7 = v5 - 0x1A4A7C6567C0EB25 < v2;
  }

  return (*(v6 + 8 * ((v7 * (v4 ^ 0x26D987ED ^ v1)) ^ v4)))();
}

uint64_t sub_2448EF3C4()
{
  STACK[0x300] = *(v2 + 8 * v0);
  *&STACK[0x270] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x290] = vdupq_n_s64(0x136FE1A6B9179FACuLL);
  *&STACK[0x250] = vdupq_n_s64(0x7F1FF34107FDA43BuLL);
  *&STACK[0x260] = vdupq_n_s64(0x265037D736ED17DCuLL);
  *&STACK[0x230] = vdupq_n_s64(0x63A33A6C176B5592uLL);
  *&STACK[0x240] = vdupq_n_s64(0x2E1CBCF6F3352B25uLL);
  *&STACK[0x210] = vdupq_n_s64(v1);
  *&STACK[0x220] = vdupq_n_s64(0x17DFB5CD48B3AABAuLL);
  *&STACK[0x200] = vdupq_n_s64(0xAB7B7FBB6B88FBCBLL);
  STACK[0x2C0] = STACK[0x820];
  STACK[0x310] = STACK[0x968];
  v3 = STACK[0x300];
  *&STACK[0x2A0] = vdupq_n_s64(0x553B2A364E371E0CuLL);
  *&STACK[0x280] = vdupq_n_s64(0xD5626AE4D8E470F9);
  *&STACK[0x2E0] = vdupq_n_s64(0x98A79D594FD45327);
  *&STACK[0x2F0] = vdupq_n_s64(0xED60FAF23E53D254);
  return v3(0x17BFFCF11092B47ELL);
}

uint64_t sub_2448EF7D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W8>)
{
  v7 = -394779199 - *(v4 - 0x750C1ABFB0567FCBLL);
  if (a4 - 1263843008 < v6 + 2682 != v7 < (((v5 - 19856) | 0x60A) ^ v6))
  {
    v8 = a4 - 1263843008 < v6 + 2682;
  }

  else
  {
    v8 = a4 - 1263843008 > v7;
  }

  return (*(a3 + 8 * ((77 * ((v5 ^ 0x4D ^ v8) & 1)) ^ v5)))(a1, a2, 1216081110);
}

uint64_t sub_2448EF954@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  LODWORD(a22) = ((v49 + 7298) ^ 0x4013BE49) - v50 + a1 - ((((((v49 + 7298) ^ 0x4013BE49) - v50 + a1) << (v49 ^ 0x8B)) + ((v49 - 528209579) & 0xF7BFFF4 ^ 0xD157B0A)) & 0x1C4C2FD2) - 1531920808;
  v51 = (*(STACK[0x320] + 8 * ((v49 + 7298) ^ 0x72C9u)))(a22 ^ 0xE2617E9);
  STACK[0x2D0] = v51;
  return (*(STACK[0x320] + 8 * ((49 * (v51 != 0)) ^ (v49 + 7298))))(0x17BFFCF11092B47ELL, 0x8AF3E5404FA98025, 1216081107, a27, 0xCE472B18A6288DE3, a26, a25, a24, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49);
}

uint64_t sub_2448EFB34(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57)
{
  STACK[0x2C0] = a5;
  LODWORD(STACK[0x300]) = 2 * a57 + 2144916886;
  return (*(STACK[0x320] + 8 * (a3 ^ 0x2B28)))(0x97BB041959E2EA4ALL, 3222861572);
}

uint64_t sub_2448EFFE8(uint64_t a1, __int16 a2, int a3, uint64_t a4)
{
  v12 = v4 + a4 + a1;
  v13 = __ROR8__(v12 & 0xFFFFFFFFFFFFFFF8, 8);
  v14 = ((v6 - v13) & 0x24D95A6FCF82AE4ELL) + v13 + v5 - ((v13 + v5) & 0x20D95A6FCF82AE4ELL);
  v15 = __ROR8__(v14 ^ 0x6212028D583EF17ALL, 8);
  v14 ^= 0x2FAD8417BC608FCDuLL;
  v16 = __ROR8__((((2 * (v15 + v14)) & 0x863DF203D7CD43ELL) - (v15 + v14) + 0x7BCE106FE14195E0) ^ 0x6C11A5A2A9F23F5ALL, 8);
  v17 = (((2 * (v15 + v14)) & 0x863DF203D7CD43ELL) - (v15 + v14) + 0x7BCE106FE14195E0) ^ 0x6C11A5A2A9F23F5ALL ^ __ROR8__(v14, 61);
  v18 = (v16 + v17) ^ v10;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0xECC83F369EF51C3ELL;
  v21 = __ROR8__(v20, 8);
  v22 = *(v11 + 8 * a3);
  v23 = v20 ^ __ROR8__(v19, 61);
  v24 = (((2 * (v21 + v23)) & 0x2EA57472DD57E1E0) - (v21 + v23) - 0x1752BA396EABF0F1) ^ 0x498FD7BF62609A6BLL;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (v26 + v25 - ((2 * (v26 + v25)) & 0xE88C35A3C70E36C8) + 0x74461AD1E3871B64) ^ 0x49BB7CFBBA1A819DLL;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (v29 + v28 - ((2 * (v29 + v28)) & 0x2A07DFB7FD806E98) - 0x6AFC1024013FC8B4) ^ 0x60DA8EA90D7134AALL;
  v31 = __ROR8__(v30, 8);
  v32 = __ROR8__(v28, 61);
  *v12 = ((0xFB6983405B4ED50FLL - ((v31 + (v30 ^ v32)) | 0xFB6983405B4ED50FLL) + ((v31 + (v30 ^ v32)) | 0x4967CBFA4B12AF0)) ^ 0x8EAEE4EB2AC9547BLL) >> (8 * (v12 & 7u));
  v33 = __ROR8__((v12 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v34 = v33 - ((2 * v33 + 0x136FE1A6B9179FACLL) & 0x2781D76CBF2F0836) + 0x178DC89BC2353F1;
  v35 = v34 ^ 0x510BB354C82BDB2FLL;
  v34 ^= 0x1CB435CE2C75A598uLL;
  v36 = (__ROR8__(v35, 8) + v34) ^ 0x17DFB5CD48B3AABALL;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (((2 * (v38 + v37)) & 0x5EF68222E9BD709CLL) - (v38 + v37) + 0x5084BEEE8B2147B1) ^ 0xDE782BC4EC14EE6DLL;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0xECC83F369EF51C3ELL;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = __ROR8__(v41, 8);
  v44 = __ROR8__((v8 - ((v43 + v42) | v8) + ((v43 + v42) | 0xC7975E5DF76293E0)) ^ 0x66B5CC2404560684, 8);
  v45 = (v8 - ((v43 + v42) | v8) + ((v43 + v42) | 0xC7975E5DF76293E0)) ^ 0x66B5CC2404560684 ^ __ROR8__(v42, 61);
  v46 = (((2 * (v44 + v45)) | 0xEF359D77A13F518CLL) - (v44 + v45) + 0x86531442F60573ALL) ^ 0xCA67A8918902323FLL;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ 0xF5D96172F3B103E6;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = __ROR8__(v48, 8);
  *(v12 + 1) = ((((v50 + v49) & 0xFEDA796B56DB599BLL ^ 0x6A08414100124098) + ((v50 + v49) & 0x1258694A924A664 ^ 0x204A1202401) - 1) ^ 0xE030DB112F4A1A13) >> (8 * ((v12 + 1) & 7));
  v51 = __ROR8__((v12 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v52 = ((2 * (v51 + v5)) | 0x942AC465F311F89ELL) - (v51 + v5) - 0x4A156232F988FC4FLL;
  v53 = __ROR8__(v52 ^ 0xCDE3AD06E34A37BLL, 8);
  v52 ^= 0x4161BC4A8A6ADDCCuLL;
  v54 = (v53 + v52) ^ 0x17DFB5CD48B3AABALL;
  v55 = v54 ^ __ROR8__(v52, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ v10;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = __ROR8__(v56, 8);
  v59 = __ROR8__((v58 + v57 - ((2 * (v58 + v57)) & 0x289691EA58AD6270) + 0x144B48F52C56B138) ^ 0xF88377C3B2A3AD06, 8);
  v60 = (v58 + v57 - ((2 * (v58 + v57)) & 0x289691EA58AD6270) + 0x144B48F52C56B138) ^ 0xF88377C3B2A3AD06 ^ __ROR8__(v57, 61);
  v61 = (v59 + v60) ^ 0xA1229279F3349564;
  v62 = v61 ^ __ROR8__(v60, 61);
  v63 = __ROR8__(v61, 8);
  v64 = (v63 + v62 - ((2 * (v63 + v62)) & 0xFA695A78BC373002) + 0x7D34AD3C5E1B9801) ^ 0x40C9CB16078602F8;
  v65 = v64 ^ __ROR8__(v62, 61);
  v66 = (__ROR8__(v64, 8) + v65) ^ 0xF5D96172F3B103E6;
  *(v12 + 2) = (((__ROR8__(v66, 8) + (v66 ^ __ROR8__(v65, 61))) ^ 0x8A3898548E787E8BLL) >> (8 * ((v12 + 2) & 7))) ^ HIBYTE(a2) ^ 0xF7;
  v67 = __ROR8__((v12 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v68 = ((v67 + v5) | 0xCA9151DD609C8C82) - ((v67 + v5) | v9) + v9;
  v69 = v68 ^ 0x8C5A093FF720D3B6;
  v68 ^= 0xC1E58FA5137EAD01;
  v70 = (__ROR8__(v69, 8) + v68) ^ 0x17DFB5CD48B3AABALL;
  v71 = v70 ^ __ROR8__(v68, 61);
  v72 = __ROR8__(v70, 8);
  v73 = (0xE0D40237F8085144 - ((v72 + v71) | 0xE0D40237F8085144) + ((v72 + v71) | 0x1F2BFDC807F7AEBBLL)) ^ 0x91D768E260C20767;
  v74 = v73 ^ __ROR8__(v71, 61);
  v75 = (__ROR8__(v73, 8) + v74) ^ 0xECC83F369EF51C3ELL;
  v76 = v75 ^ __ROR8__(v74, 61);
  v77 = __ROR8__(v75, 8);
  v78 = __ROR8__((((2 * ((v77 + v76) ^ 0x8BA04F721F9FE89CLL)) & 0x123E101A43A0F0D2) - ((v77 + v76) ^ 0x8BA04F721F9FE89CLL) + 0x76E0F7F2DE2F8796) ^ 0x5C622AF93284FA6ELL, 8);
  v79 = (((2 * ((v77 + v76) ^ 0x8BA04F721F9FE89CLL)) & 0x123E101A43A0F0D2) - ((v77 + v76) ^ 0x8BA04F721F9FE89CLL) + 0x76E0F7F2DE2F8796) ^ 0x5C622AF93284FA6ELL ^ __ROR8__(v76, 61);
  v80 = (v78 + v79) ^ v7;
  v81 = v80 ^ __ROR8__(v79, 61);
  v82 = (__ROR8__(v80, 8) + v81) ^ 0xF5D96172F3B103E6;
  *(v12 + 3) = a2 ^ (((__ROR8__(v82, 8) + (v82 ^ __ROR8__(v81, 61))) ^ 0x8A3898548E787E8BLL) >> (8 * ((v12 + 3) & 7))) ^ 4;
  return v22();
}

uint64_t sub_2448F0718(uint64_t a1)
{
  *v1 = v2;
  *v3 = v4;
  return (*(v8 + 8 * (v7 - 3679)))(a1, v6, (v7 - 13648), v5);
}

uint64_t sub_2448F07BC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  v7 = ((v6 - 7012) ^ 0x34A0) + *(a5 - 0x750C1ABFB0567FCBLL) - ((2 * *(a5 - 0x750C1ABFB0567FCBLL) + 1797902280) & 0x73142370) - 1356938820;
  v8 = a4 + (v7 ^ 0x741DBA5) + ((v7 << (((v6 - 100) | 1) ^ 0x40)) & 0x7D97943A ^ 0x71140030) + 1 != a6;
  return (*(STACK[0x320] + 8 * (((4 * v8) | (16 * v8)) ^ v6)))();
}

uint64_t sub_2448F0874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  STACK[0x2C0] = a5;
  STACK[0x310] = *(a5 - 0x750C1ABFB0567FC3);
  LODWORD(STACK[0x2B0]) = v6;
  v7 = *(STACK[0x320] + 8 * v5);
  STACK[0x300] = ((v6 - 1429459589) ^ 0xBF8ECADBFFFEEFDFLL) + ((2 * (v6 - 1429459589)) & 0x1FFFDDFBELL) + ((v5 + 33549523) | 0x14880209u) + STACK[0x2D0] - 0xB1CB16B43B48F40;
  return v7(0x10C451FDEBF960B8);
}

uint64_t sub_2448F0A34@<X0>(uint64_t a1@<X0>, unsigned int a2@<W5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v22 = (v9 | ((v9 < a2) << 32)) + 0x4B8DE68F16A59B27;
  v23 = v22 + STACK[0x310] - 0x4B8DE68F2D2D9D44;
  v24 = STACK[0x300] + v22;
  v25 = __ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = ((0x653FFD844AF1481 - v25) & ((v7 - 377997885) ^ 0x68192F52EEDEA4FLL)) + v25 + a3 - ((v25 + a3) & 0x28192F52EEDDDAFLL);
  v27 = v26 ^ 0xB44F4353FA541F3DLL;
  v26 ^= 0xF92F426E20D344C9;
  v28 = __ROR8__(v27, 8);
  v29 = (v20 - ((v28 + v26) | v20) + ((v28 + v26) | 0x469495A91D8C25D5)) ^ 0xCB2ADC7696B2E3DFLL;
  v30 = v29 ^ __ROR8__(v26, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0x41285C582D9B8689;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0x1717D4ABBED3C077;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (v35 + v34 - ((2 * (v35 + v34)) & 0x2D1F34E73514C3DCLL) - 0x6970658C65759E12) ^ 0x7A0716CC45B1B23ELL;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (v38 + v37 - ((2 * (v38 + v37)) & 0xCE208E478446816ELL) - 0x18EFB8DC3DDCBF49) ^ 0xD788E034FA98A794;
  v40 = __ROR8__(v24 & 0xFFFFFFFFFFFFFFF8, 8) - 0x16480F2CA374302ALL;
  v41 = v39 ^ __ROR8__(v37, 61);
  v42 = ((2 * v40) | 0x28EEB20E853F7082) - v40 - 0x14775907429FB841;
  v43 = v42 ^ 0x52BC01E5D523E775;
  v44 = __ROR8__(v39, 8);
  v42 ^= 0x1F03877F317D99C2uLL;
  v45 = __ROR8__(v43, 8);
  v46 = (((2 * (v45 + v42)) | 0x706841FC22E0D7B8) - (v45 + v42) + a5) ^ v18;
  v47 = v46 ^ __ROR8__(v42, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ 0x8EFC952A6735A9DCLL;
  v49 = __ROR8__(v48, 8);
  v50 = v48 ^ __ROR8__(v47, 61);
  v51 = ((v49 + v50) ^ v16) - (v19 & (2 * ((v49 + v50) ^ v16)));
  v52 = (((2 * (v44 + v41)) | 0xB55A8D32B8DC1880) - (v44 + v41) - 0x5AAD46995C6E0C40) ^ 0xA85FDFABBCC79C0;
  v53 = __ROR8__(v52, 8) + (v52 ^ __ROR8__(v41, 61));
  v54 = (v51 + v13) ^ v6 ^ __ROR8__(v50, 61);
  v55 = __ROR8__((v51 + v13) ^ v6, 8);
  v56 = ((v21 & (2 * (v55 + v54))) - (v55 + v54) + v11) ^ v14;
  v57 = v56 ^ __ROR8__(v54, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ 0x3DFD662A599D9AF9;
  v59 = __ROR8__(v58, 8);
  v60 = v58 ^ __ROR8__(v57, 61);
  v61 = ((a1 | (2 * (v59 + v60))) - (v59 + v60) + v15) ^ a4;
  v62 = v61 ^ __ROR8__(v60, 61);
  v63 = __ROR8__(v61, 8);
  *v24 = (((v17 - ((v63 + v62) | v17) + ((v63 + v62) | v12)) ^ v5) >> (8 * (v24 & 7u))) ^ (((v53 - ((2 * v53) & 0x1FE01D123E3422C8) + 0xFF00E891F1A1164) ^ 0x67487D71E3CD4FACLL) >> (8 * (v23 & 7u))) ^ *v23;
  return (*(STACK[0x320] + 8 * (v7 ^ 0x16881137 ^ (107 * ((v10 | v8) >> 31)))))();
}

uint64_t sub_2448F0ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, int a59)
{
  STACK[0x310] = ((v60 - 1429480541 + a23) ^ 0x47EFFBF9EFFEFFE6) - 0x508700180D23946 + (((v60 - 1429480541 + a23) << (a28 + 108)) & 0x1DFFDFFCCLL);
  v62 = a59 - (STACK[0x300] & 0xD71894E4) + 1804356226;
  LODWORD(a24) = v62 ^ 0xCC3B34AD;
  return (*(v61 + 8 * ((v59 + 2093) ^ (27 * (((2 * v62) & 0x4F6EFDBE ^ 0x470894A4) + (v62 ^ 0xCC3B34AD) + 1559886266 == 78739609)))))(5301, 0x5484804494770434, 0x29C04B4CCF5E3260, 4216227686, 0x7F1FF34107FDA43BLL, 0x2E1CBCF6F3352B25, 0x63A33A6C176B5592, 0xAB7B7FBB6B88FBCBLL, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_2448F123C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X6>, uint64_t a3@<X7>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int8x16_t a41, int8x16_t a42, uint64_t a43, uint64_t a44, int8x16_t a45, int8x16_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int8x16_t a53, int8x16_t a54, int64x2_t a55, int8x16_t a56, int8x16_t a57, int64x2_t a58)
{
  v72 = v67 + v68 + a1;
  *&v73 = v72 + (a39 + v63 + 16);
  *(&v73 + 1) = v72 + (v70 + v63 + 16);
  *&STACK[0x300] = v73;
  *&v73 = v72 + (a35 + v63 + 16);
  *(&v73 + 1) = v72 + (a37 + v63 + 16);
  *&STACK[0x2B0] = v73;
  v74.i64[0] = v72 + (a2 + v63 + 16);
  v74.i64[1] = v72 + (v66 + v63 + 16);
  v75.i64[0] = v72 + (v58 + v63 + 16);
  v75.i64[1] = v72 + (v61 + v63 + 16);
  v76 = v72 + (v60 + v63 + 16);
  v77.i64[0] = v76;
  v77.i64[1] = v72 + (v59 + v63 + 16);
  v78 = (a33 + v63 + 16);
  v79 = v72 + (v64 + v63 + 16);
  v80 = v72 + (a3 + v63 + 16);
  v81 = v72 + (a4 + v63 + v65 + 16);
  v82 = v72 + (a31 + v63 + 16);
  v83 = v72 + (a32 + v63 + 16);
  v84 = v72 + v78;
  v85.i64[0] = v81;
  v85.i64[1] = v79;
  v86 = vandq_s8(v85, *&STACK[0x270]);
  v87 = vandq_s8(v77, *&STACK[0x270]);
  v88 = vandq_s8(v75, *&STACK[0x270]);
  v89 = vandq_s8(v74, *&STACK[0x270]);
  v90 = vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL);
  v91 = vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL);
  v92 = vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL);
  v93 = vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL);
  v94 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v92, v92), *&STACK[0x290]), *&STACK[0x260]), v92);
  v255 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v93, v93), *&STACK[0x290]), *&STACK[0x260]), v93);
  v95 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v91, v91), *&STACK[0x290]), *&STACK[0x260]), v91), *&STACK[0x250]);
  v96 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v90, v90), *&STACK[0x290]), *&STACK[0x260]), v90), *&STACK[0x250]);
  v97 = veorq_s8(v96, *&STACK[0x240]);
  v98 = veorq_s8(v95, *&STACK[0x240]);
  v99 = veorq_s8(v95, *&STACK[0x230]);
  v100 = veorq_s8(v96, *&STACK[0x230]);
  v101 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v99), *&STACK[0x220]);
  v102 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v100), *&STACK[0x220]);
  v103 = vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL);
  v104 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v105 = veorq_s8(v101, v103);
  v106 = vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL);
  v107 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v105);
  v108 = veorq_s8(vaddq_s64(v106, v104), *&STACK[0x210]);
  v109 = vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL);
  v110 = veorq_s8(v107, *&STACK[0x210]);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v112 = veorq_s8(v108, v109);
  v113 = vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL);
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v112);
  v115 = vaddq_s64(v113, v111);
  v116 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v114, *&STACK[0x200]), vorrq_s8(v114, a58)), a58), a57);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v115, *&STACK[0x200]), vorrq_s8(v115, a58)), a58), a57);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v119 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v120 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v119);
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118);
  v122 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v120, a56), vorrq_s8(v120, a55)), a55), a54);
  v123 = vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL);
  v124 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v121, a56), vorrq_s8(v121, a55)), a55), a54);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v126 = veorq_s8(v122, v123);
  v127 = vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL);
  v128 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v126);
  v129 = veorq_s8(vaddq_s64(v127, v125), a53);
  v130 = veorq_s8(v128, a53);
  v131 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v132 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v133 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v132);
  v134 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v131);
  v135 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v134, v134), *&STACK[0x2A0]), v134), *&STACK[0x280]), a46);
  v136 = vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL);
  v137 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v133, v133), *&STACK[0x2A0]), v133), *&STACK[0x280]), a46);
  v138 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v139 = vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL);
  v140.i64[0] = v83;
  v140.i64[1] = v84;
  v254 = v140;
  v141 = vaddq_s64(v94, *&STACK[0x250]);
  v142 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), veorq_s8(v135, v136));
  v143 = vaddq_s64(v139, v138);
  v256.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v142, v142), a45), v142), *&STACK[0x2F0]), *&STACK[0x2E0]), vnegq_s64(vandq_s8(vshlq_n_s64(v74, 3uLL), a41)));
  v256.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v143, v143), a45), v143), *&STACK[0x2F0]), *&STACK[0x2E0]), vnegq_s64(vandq_s8(vshlq_n_s64(v75, 3uLL), a41)));
  v144 = veorq_s8(v141, *&STACK[0x240]);
  v145 = veorq_s8(v141, *&STACK[0x230]);
  v146 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v145), *&STACK[0x220]);
  v147 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v148 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL), v147), *&STACK[0x210]);
  v149 = veorq_s8(v148, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL));
  v150 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL), v149);
  v151 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v150, *&STACK[0x200]), vorrq_s8(v150, a58)), a58), a57);
  v152 = veorq_s8(v151, vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL));
  v153 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL), v152);
  v154 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v153, a56), vorrq_s8(v153, a55)), a55), a54);
  v155 = veorq_s8(v154, vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v156 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v155), a53);
  v157 = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL));
  v158 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v157);
  v159 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v158, v158), *&STACK[0x2A0]), v158), *&STACK[0x280]), a46);
  v160.i64[0] = v80;
  v160.i64[1] = v82;
  v161 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL)));
  v162 = vsubq_s64(vorrq_s8(vaddq_s64(v161, v161), a45), v161);
  v163 = vandq_s8(v160, *&STACK[0x270]);
  v164 = vaddq_s64(v255, *&STACK[0x250]);
  v256.val[0] = vshlq_u64(veorq_s8(vaddq_s64(v162, *&STACK[0x2F0]), *&STACK[0x2E0]), vnegq_s64(vandq_s8(vshlq_n_s64(v77, 3uLL), a41)));
  v165 = veorq_s8(v164, *&STACK[0x240]);
  v166 = veorq_s8(v164, *&STACK[0x230]);
  v167 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166), *&STACK[0x220]);
  v168 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v169 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168), *&STACK[0x210]);
  v170 = veorq_s8(v169, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v171 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), v170);
  v172 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v171, *&STACK[0x200]), vorrq_s8(v171, a58)), a58), a57);
  v173 = veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL));
  v174 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v173);
  v175 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v174, a56), vorrq_s8(v174, a55)), a55), a54);
  v176 = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL));
  v177 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v176), a53);
  v178 = veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL));
  v179 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v178);
  v180 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v179, v179), *&STACK[0x2A0]), v179), *&STACK[0x280]), a46);
  v181 = veorq_s8(v180, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL));
  v182 = vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL);
  v183 = vandq_s8(v140, *&STACK[0x270]);
  v184 = vaddq_s64(v182, v181);
  v185 = vandq_s8(*&STACK[0x2B0], *&STACK[0x270]);
  v256.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v184, v184), a45), v184), *&STACK[0x2F0]), *&STACK[0x2E0]), vnegq_s64(vandq_s8(vshlq_n_s64(v85, 3uLL), a41)));
  v186 = vandq_s8(*&STACK[0x300], *&STACK[0x270]);
  v187 = vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL);
  v188 = vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL);
  v189 = vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL);
  v190 = vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL);
  v191 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v189, v189), *&STACK[0x290]), *&STACK[0x260]), v189);
  v192 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v188, v188), *&STACK[0x290]), *&STACK[0x260]), v188), *&STACK[0x250]);
  v193 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v187, v187), *&STACK[0x290]), *&STACK[0x260]), v187), *&STACK[0x250]);
  v188.i64[0] = vqtbl4q_s8(v256, a42).u64[0];
  v256.val[0] = veorq_s8(v193, *&STACK[0x240]);
  v256.val[1] = veorq_s8(v192, *&STACK[0x240]);
  v194 = veorq_s8(v192, *&STACK[0x230]);
  v195 = veorq_s8(v193, *&STACK[0x230]);
  v256.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v256.val[1], 0x38uLL), v256.val[1], 8uLL), v194), *&STACK[0x220]);
  v256.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v256.val[0], 0x38uLL), v256.val[0], 8uLL), v195), *&STACK[0x220]);
  v196 = veorq_s8(v256.val[0], vsraq_n_u64(vshlq_n_s64(v195, 3uLL), v195, 0x3DuLL));
  v197 = veorq_s8(v256.val[1], vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL));
  v256.val[2] = vsraq_n_u64(vshlq_n_s64(v256.val[0], 0x38uLL), v256.val[0], 8uLL);
  v256.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v256.val[1], 0x38uLL), v256.val[1], 8uLL), v197);
  v256.val[1] = veorq_s8(vaddq_s64(v256.val[2], v196), *&STACK[0x210]);
  v256.val[0] = veorq_s8(v256.val[0], *&STACK[0x210]);
  v256.val[2] = vsraq_n_u64(vshlq_n_s64(v196, 3uLL), v196, 0x3DuLL);
  v198 = veorq_s8(v256.val[0], vsraq_n_u64(vshlq_n_s64(v197, 3uLL), v197, 0x3DuLL));
  v199 = veorq_s8(v256.val[1], v256.val[2]);
  v256.val[2] = vsraq_n_u64(vshlq_n_s64(v256.val[0], 0x38uLL), v256.val[0], 8uLL);
  v256.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v256.val[1], 0x38uLL), v256.val[1], 8uLL), v199);
  v256.val[1] = vaddq_s64(v256.val[2], v198);
  v256.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v256.val[0], *&STACK[0x200]), vorrq_s8(v256.val[0], a58)), a58), a57);
  v256.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v256.val[1], *&STACK[0x200]), vorrq_s8(v256.val[1], a58)), a58), a57);
  v200 = veorq_s8(v256.val[1], vsraq_n_u64(vshlq_n_s64(v198, 3uLL), v198, 0x3DuLL));
  v201 = veorq_s8(v256.val[0], vsraq_n_u64(vshlq_n_s64(v199, 3uLL), v199, 0x3DuLL));
  v256.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v256.val[0], 0x38uLL), v256.val[0], 8uLL), v201);
  v256.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v256.val[1], 0x38uLL), v256.val[1], 8uLL), v200);
  v256.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v256.val[0], a56), vorrq_s8(v256.val[0], a55)), a55), a54);
  v256.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v256.val[1], a56), vorrq_s8(v256.val[1], a55)), a55), a54);
  v202 = veorq_s8(v256.val[1], vsraq_n_u64(vshlq_n_s64(v200, 3uLL), v200, 0x3DuLL));
  v203 = veorq_s8(v256.val[0], vsraq_n_u64(vshlq_n_s64(v201, 3uLL), v201, 0x3DuLL));
  v256.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v256.val[1], 0x38uLL), v256.val[1], 8uLL), v202), a53);
  v256.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v256.val[0], 0x38uLL), v256.val[0], 8uLL), v203), a53);
  v256.val[2] = vsraq_n_u64(vshlq_n_s64(v202, 3uLL), v202, 0x3DuLL);
  v204 = veorq_s8(v256.val[0], vsraq_n_u64(vshlq_n_s64(v203, 3uLL), v203, 0x3DuLL));
  v205 = veorq_s8(v256.val[1], v256.val[2]);
  v256.val[2] = vsraq_n_u64(vshlq_n_s64(v256.val[0], 0x38uLL), v256.val[0], 8uLL);
  v256.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v256.val[1], 0x38uLL), v256.val[1], 8uLL), v205);
  v256.val[1] = vaddq_s64(v256.val[2], v204);
  v256.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v256.val[1], v256.val[1]), *&STACK[0x2A0]), v256.val[1]), *&STACK[0x280]), a46);
  v256.val[2] = vsraq_n_u64(vshlq_n_s64(v204, 3uLL), v204, 0x3DuLL);
  v256.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v256.val[0], v256.val[0]), *&STACK[0x2A0]), v256.val[0]), *&STACK[0x280]), a46);
  v206 = veorq_s8(v256.val[0], vsraq_n_u64(vshlq_n_s64(v205, 3uLL), v205, 0x3DuLL));
  v207 = vaddq_s64(v191, *&STACK[0x250]);
  v208 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v256.val[1], 0x38uLL), v256.val[1], 8uLL), veorq_s8(v256.val[1], v256.val[2]));
  v209 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v256.val[0], 0x38uLL), v256.val[0], 8uLL), v206);
  v256.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v208, v208), a45), v208), *&STACK[0x2F0]), *&STACK[0x2E0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x300], 3uLL), a41)));
  v256.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v209, v209), a45), v209), *&STACK[0x2F0]), *&STACK[0x2E0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x2B0], 3uLL), a41)));
  v210 = veorq_s8(v207, *&STACK[0x240]);
  v211 = veorq_s8(v207, *&STACK[0x230]);
  v212 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v210, 0x38uLL), v210, 8uLL), v211), *&STACK[0x220]);
  v213 = veorq_s8(v212, vsraq_n_u64(vshlq_n_s64(v211, 3uLL), v211, 0x3DuLL));
  v214 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v212, 0x38uLL), v212, 8uLL), v213), *&STACK[0x210]);
  v215 = veorq_s8(v214, vsraq_n_u64(vshlq_n_s64(v213, 3uLL), v213, 0x3DuLL));
  v216 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL), v215);
  v217 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v216, *&STACK[0x200]), vorrq_s8(v216, a58)), a58), a57);
  v218 = veorq_s8(v217, vsraq_n_u64(vshlq_n_s64(v215, 3uLL), v215, 0x3DuLL));
  v219 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL), v218);
  v220 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v219, a56), vorrq_s8(v219, a55)), a55), a54);
  v221 = veorq_s8(v220, vsraq_n_u64(vshlq_n_s64(v218, 3uLL), v218, 0x3DuLL));
  v222 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v220, 0x38uLL), v220, 8uLL), v221), a53);
  v223 = veorq_s8(v222, vsraq_n_u64(vshlq_n_s64(v221, 3uLL), v221, 0x3DuLL));
  v224 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v222, 0x38uLL), v222, 8uLL), v223);
  v225 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v224, v224), *&STACK[0x2A0]), v224), *&STACK[0x280]), a46);
  v226 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v225, 0x38uLL), v225, 8uLL), veorq_s8(v225, vsraq_n_u64(vshlq_n_s64(v223, 3uLL), v223, 0x3DuLL)));
  v227 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v190, v190), *&STACK[0x290]), *&STACK[0x260]), v190), *&STACK[0x250]);
  v256.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v226, v226), a45), v226), *&STACK[0x2F0]), *&STACK[0x2E0]), vnegq_s64(vandq_s8(vshlq_n_s64(v254, 3uLL), a41)));
  v228 = veorq_s8(v227, *&STACK[0x240]);
  v229 = veorq_s8(v227, *&STACK[0x230]);
  v230 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228, 0x38uLL), v228, 8uLL), v229), *&STACK[0x220]);
  v231 = vsraq_n_u64(vshlq_n_s64(v229, 3uLL), v229, 0x3DuLL);
  v232 = vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL);
  v233 = veorq_s8(v230, v231);
  v234 = veorq_s8(vaddq_s64(v232, v233), *&STACK[0x210]);
  v235 = veorq_s8(v234, vsraq_n_u64(vshlq_n_s64(v233, 3uLL), v233, 0x3DuLL));
  v236 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234, 0x38uLL), v234, 8uLL), v235);
  v237 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v236, *&STACK[0x200]), vorrq_s8(v236, a58)), a58), a57);
  v238 = vsraq_n_u64(vshlq_n_s64(v235, 3uLL), v235, 0x3DuLL);
  v239 = vsraq_n_u64(vshlq_n_s64(v237, 0x38uLL), v237, 8uLL);
  v240 = veorq_s8(v237, v238);
  v241 = vaddq_s64(v239, v240);
  v242 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v241, a56), vorrq_s8(v241, a55)), a55), a54);
  v243 = veorq_s8(v242, vsraq_n_u64(vshlq_n_s64(v240, 3uLL), v240, 0x3DuLL));
  v244 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v242, 0x38uLL), v242, 8uLL), v243), a53);
  v245 = vsraq_n_u64(vshlq_n_s64(v243, 3uLL), v243, 0x3DuLL);
  v246 = vsraq_n_u64(vshlq_n_s64(v244, 0x38uLL), v244, 8uLL);
  v247 = veorq_s8(v244, v245);
  v248 = vaddq_s64(v246, v247);
  v249 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v248, v248), *&STACK[0x2A0]), v248), *&STACK[0x280]), a46);
  v250 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v249, 0x38uLL), v249, 8uLL), veorq_s8(v249, vsraq_n_u64(vshlq_n_s64(v247, 3uLL), v247, 0x3DuLL)));
  v256.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v250, v250), a45), v250), *&STACK[0x2F0]), *&STACK[0x2E0]), vnegq_s64(vandq_s8(vshlq_n_s64(v160, 3uLL), a41)));
  v188.i64[1] = vqtbl4q_s8(v256, a42).u64[0];
  v251 = vrev64q_s8(v188);
  *(v76 - 15) = vextq_s8(v251, v251, 8uLL);
  v252 = *(v71 + 8 * ((248 * (v69 == v63)) ^ v62));
  return v252(a1, v252, v82, v83, v84, v78, a2, a3, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41.i64[0], a41.i64[1], a42.i64[0], a42.i64[1], a43, a44, a45.i64[0], a45.i64[1]);
}

uint64_t sub_2448F1DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22)
{
  v25 = *(v24 + 8 * (v22 ^ (a22 == v23)));
  LODWORD(STACK[0x300]) = v23;
  return v25(5301, 0x5484804494770434, 0x29C04B4CCF5E3260, 4216227686, 0x7F1FF34107FDA43BLL, 0x2E1CBCF6F3352B25, 0x63A33A6C176B5592, 0xAB7B7FBB6B88FBCBLL);
}

uint64_t sub_2448F2034@<X0>(unint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, int8x16_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, int8x16_t a59, int8x16_t a60, int64x2_t a61, int8x16_t a62, int8x16_t a63)
{
  v80 = v73 + v72 + v69;
  v81 = STACK[0x320];
  v82.i64[0] = v80 + (v68 + v66 + 8);
  v83.i64[0] = v80 + (a3 + v66 + 8);
  v82.i64[1] = v80 + (v67 + v66 + 8);
  v83.i64[1] = v80 + (a2 + v66 + 8);
  v84.i64[0] = v80 + (a5 + v66 + 8);
  v85.i64[0] = v80 + (a6 + v66 + 8);
  v84.i64[1] = v80 + (a4 + v66 + 8);
  v85.i64[1] = v80 + a7 + v66 + ((v64 + 942) ^ (v70 + 712)) + 8;
  v86 = vandq_s8(v84, *&STACK[0x270]);
  v87 = vandq_s8(v83, *&STACK[0x270]);
  v88 = vandq_s8(v82, *&STACK[0x270]);
  v89 = vandq_s8(v85, *&STACK[0x270]);
  v90 = vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL);
  v91 = vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL);
  v92 = vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL);
  v93 = vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL);
  v94 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v91, v91), *&STACK[0x290]), *&STACK[0x260]), v91), *&STACK[0x250]);
  v95 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v90, v90), *&STACK[0x290]), *&STACK[0x260]), v90), *&STACK[0x250]);
  v96 = veorq_s8(v95, *&STACK[0x240]);
  v97 = veorq_s8(v94, *&STACK[0x240]);
  v98 = veorq_s8(v94, *&STACK[0x230]);
  v99 = veorq_s8(v95, *&STACK[0x230]);
  v100 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98), *&STACK[0x220]);
  v101 = vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL);
  v102 = vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL);
  v103 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v99), *&STACK[0x220]);
  v104 = veorq_s8(v103, v102);
  v105 = veorq_s8(v100, v101);
  v106 = vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL);
  v107 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v105);
  v108 = veorq_s8(vaddq_s64(v106, v104), *&STACK[0x210]);
  v109 = vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL);
  v110 = veorq_s8(v107, *&STACK[0x210]);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v112 = veorq_s8(v108, v109);
  v113 = vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL);
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v112);
  v115 = vaddq_s64(v113, v111);
  v116 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v114, *&STACK[0x200]), vorrq_s8(v114, a64)), a64), a63);
  v117 = vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL);
  v118 = vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL);
  v119 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v115, *&STACK[0x200]), vorrq_s8(v115, a64)), a64), a63);
  v120 = veorq_s8(v119, v118);
  v121 = veorq_s8(v116, v117);
  v122 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v121);
  v123 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120);
  v124 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v122, a62), vorrq_s8(v122, a61)), a61), a60);
  v125 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v123, a62), vorrq_s8(v123, a61)), a61), a60);
  v126 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v127 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v128 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126), a59);
  v129 = vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL);
  v130 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v127), a59);
  v131 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL));
  v132 = veorq_s8(v128, v129);
  v133 = vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL);
  v134 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v132);
  v135 = vaddq_s64(v133, v131);
  v136 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v135, v135), v77), v135), v76), v79);
  v137 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v134, v134), v77), v134), v76), v79);
  v138 = vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL);
  v139 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v140 = veorq_s8(v136, v138);
  v141 = vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL);
  v142 = vdupq_n_s64(a1);
  v143 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v92, v92), *&STACK[0x290]), *&STACK[0x260]), v92), *&STACK[0x250]);
  v144 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL), v140);
  v145 = vaddq_s64(v141, v139);
  v184.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v144, v144), v78), v144), v74), v75), vnegq_s64(vandq_s8(vshlq_n_s64(v82, 3uLL), v142)));
  v184.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v145, v145), v78), v145), v74), v75), vnegq_s64(vandq_s8(vshlq_n_s64(v83, 3uLL), v142)));
  v146 = veorq_s8(v143, *&STACK[0x240]);
  v147 = veorq_s8(v143, *&STACK[0x230]);
  v148 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL), v147), *&STACK[0x220]);
  v149 = veorq_s8(v148, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL));
  v150 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL), v149), *&STACK[0x210]);
  v151 = veorq_s8(v150, vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL));
  v152 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v151);
  v153 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v152, *&STACK[0x200]), vorrq_s8(v152, a64)), a64), a63);
  v154 = veorq_s8(v153, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v155 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL), v154);
  v156 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v155, a62), vorrq_s8(v155, a61)), a61), a60);
  v157 = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL));
  v158 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v157), a59);
  v159 = veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL));
  v160 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), v159);
  v161 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v160, v160), v77), v160), *&STACK[0x280]), v79);
  v162 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL)));
  v163 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v93, v93), *&STACK[0x290]), *&STACK[0x260]), v93), *&STACK[0x250]);
  v184.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v162, v162), v78), v162), v74), v75), vnegq_s64(vandq_s8(vshlq_n_s64(v84, 3uLL), v142)));
  v164 = veorq_s8(v163, *&STACK[0x240]);
  v165 = veorq_s8(v163, *&STACK[0x230]);
  v166 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165), *&STACK[0x220]);
  v167 = veorq_s8(v166, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v168 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), v167), *&STACK[0x210]);
  v169 = vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL);
  v170 = vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL);
  v171 = veorq_s8(v168, v169);
  v172 = vaddq_s64(v170, v171);
  v173 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v172, *&STACK[0x200]), vorrq_s8(v172, a64)), a64), a63);
  v174 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL));
  v175 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v174);
  v176 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v175, a62), vorrq_s8(v175, a61)), a61), a60);
  v177 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL));
  v178 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), v177), a59);
  v179 = veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v180 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL), v179);
  v181 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v180, v180), v77), v180), *&STACK[0x280]), v79);
  v182 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL)));
  v184.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v182, v182), v78), v182), v74), v75), vnegq_s64(vandq_s8(vshlq_n_s64(v85, 3uLL), v142)));
  *(v85.i64[0] - 7) = vrev64_s8(*&vqtbl4q_s8(v184, a48));
  return (*(v81 + 8 * (((v65 == v66) * v71) ^ v64)))();
}

uint64_t sub_2448F2774@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>)
{
  v24 = STACK[0x2D0] + STACK[0x310] + v11 + (v9 + a4);
  v25 = __ROR8__(v24 & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = (((v10 | 0x60u) + 2 * v25 + v12) & 0x265037D736ED17DCLL) - v25 + a5;
  v27 = v26 ^ a6;
  v28 = v26 ^ a7;
  v29 = (__ROR8__(v27, 8) + v28) ^ 0x17DFB5CD48B3AABALL;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0x8EFC952A6735A9DCLL;
  v32 = __ROR8__(v31, 8);
  v33 = v31 ^ __ROR8__(v30, 61);
  v34 = (a2 - ((v32 + v33) | a2) + ((v32 + v33) | a8)) ^ v19;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = __ROR8__((a3 - ((v36 + v35) | a3) + ((v36 + v35) | v13)) ^ v16, 8);
  v38 = (a3 - ((v36 + v35) | a3) + ((v36 + v35) | v13)) ^ v16 ^ __ROR8__(v35, 61);
  v39 = (v37 + v38) ^ v18;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = __ROR8__(v39, 8);
  v42 = ((v22 & (2 * (v41 + v40))) - (v41 + v40) + v15) ^ v14;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = __ROR8__(v42, 8);
  *v24 = ((((2 * (v44 + v43)) | 0x253E0A1B83585B58) - (v44 + v43) + v21) ^ v20) >> (8 * (v24 & 7u));
  return (*(v23 + 8 * (((v9 - 1 == v17) * a1) ^ a9)))();
}

uint64_t sub_2448F28CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, _DWORD *a27, uint64_t a28, int a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, unsigned int a34)
{
  *a26 = a30;
  *a27 = a29;
  return (*(v35 + 8 * v34))(0x17BFFCF11092B47ELL, 0x8AF3E5404FA98025, 1216124116, a34, 0xCE472B18A6288DE3, a33, a32, a31);
}

uint64_t sub_2448F2A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, unint64_t a30)
{
  STACK[0x820] = STACK[0x2C0];
  STACK[0x960] = a30;
  STACK[0x968] = STACK[0x310];
  return (*(v32 + 8 * (((((v31 + 2248) | 0x81) + ((v31 + 1019) ^ 0x1074)) * v30) ^ (v31 + 1019))))();
}

uint64_t sub_2448F2AD0()
{
  STACK[0x740] = STACK[0x4C8];
  LODWORD(STACK[0x40C]) = -149197095;
  STACK[0x848] = v0;
  LODWORD(STACK[0x5F4]) = 237377529;
  LODWORD(STACK[0x444]) = -1214319338;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_2448F2B80()
{
  *(v3 - 224) = v2 - 1230911237 * ((2 * ((v3 - 224) & 0x4B5726D0) - (v3 - 224) + 883480877) ^ 0x67AB6BD8) + 7374;
  v5 = (*(v4 + 8 * (v2 + 17450)))(v3 - 224);
  v6 = STACK[0x320];
  *(v1 + v0 - 310694733) = *(v3 - 216) ^ 0xB0;
  return (*(v6 + 8 * (v2 | (4 * (v1 != (((v2 ^ 0x1A22u) + 17922) ^ 0x128486B6))))))(v5);
}

uint64_t sub_2448F2DD4@<X0>(uint64_t a1@<X8>)
{
  v7 = v2 + 6521;
  *(v4 + (v7 ^ 0x1C4Fu ^ (a1 + 869)) + v5) = BYTE6(v1) ^ 0x8D;
  return (*(v6 + 8 * ((19 * (v5 == (v7 - 8101) + v3)) ^ v7)))();
}

uint64_t sub_2448F2E2C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + v5 + v4 + ((v2 + 394271798) & 0xE87FBFEF) + 188) = HIBYTE(v1) ^ 0x35;
  v7 = v5 - 13519 + 9 * (v2 ^ 0x361Du) == v3 + 4079;
  return (*(v6 + 8 * (((2 * v7) | (32 * v7)) ^ v2)))();
}

uint64_t sub_2448F2F34()
{
  v3 = STACK[0x7C8];
  v4 = STACK[0x368];
  v5 = *(STACK[0x368] - 0x6286B82630F8F1C8);
  STACK[0x8D8] = STACK[0x7C8];
  v6 = v4 - 0x18B00F50F48C0FALL;
  v7 = STACK[0x350];
  LODWORD(v4) = (*(v4 - 0x6286B82630F8F1B4) ^ 0x10AB66B4) - 1086427683 + ((2 * *(v4 - 0x6286B82630F8F1B4)) & 0xDFE32C7E ^ 0xDEA12016);
  v8 = 201256697 * ((((v1 - 224) | 0xE76F9C1D) + (~(v1 - 224) | 0x189063E2)) ^ 0x91D09A55);
  *(v1 - 172) = (LODWORD(STACK[0x64C]) ^ 0xC6E9B556) + v8;
  *(v1 - 168) = v3;
  *(v1 - 224) = v0 - v8 + 13956;
  *(v1 - 200) = v3;
  *(v1 - 192) = v6;
  *(v1 - 216) = v7;
  *(v1 - 208) = v8 ^ 0x68BD8DA2;
  *(v1 - 184) = v4 ^ v8;
  *(v1 - 180) = v5 - v8 - (((v5 << ((v0 - 90) & 0xEA ^ 0xE9)) + 382429722) & 0xEBCD1B30) + 21775013;
  v9 = (*(v2 + 8 * (v0 + 20148)))(v1 - 224);
  return (*(STACK[0x320] + 8 * ((8825 * (*(v1 - 176) == 1216124116)) ^ v0)))(v9);
}

uint64_t sub_2448F30D0()
{
  v2 = STACK[0x850];
  STACK[0x740] = STACK[0x4C8];
  LODWORD(STACK[0x40C]) = -106723608;
  STACK[0x848] = v2;
  LODWORD(STACK[0x5F4]) = 237377481;
  LODWORD(STACK[0x444]) = 869875061;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_2448F3170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = STACK[0x8D8];
  v9 = STACK[0x64C];
  STACK[0x740] = STACK[0x4C8];
  LODWORD(STACK[0x40C]) = -217172434;
  STACK[0x848] = v8;
  LODWORD(STACK[0x5F4]) = v9;
  LODWORD(STACK[0x444]) = -1340897836;
  return (*(v7 + 8 * v6))(a1, a2, a3, a4, a5, a6, 237377513);
}

uint64_t sub_2448F331C()
{
  v2 = *(v1 + 8 * v0);
  v3 = STACK[0x31C];
  LODWORD(STACK[0x2F0]) = LODWORD(STACK[0x31C]) - 12491;
  LODWORD(STACK[0x300]) = v3 + 884437461;
  return v2();
}

uint64_t sub_2448F33B0(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  STACK[0x700] = *(v5 + 8 * v4);
  return (*(v5 + 8 * (((v6 != 0x146375EC570BCC2FLL) * ((v3 + 656584726) & 0xD8DD3FF3 ^ ((v3 ^ 0x486F) + 10373))) ^ v3)))(a1, a2, 1216081105);
}

uint64_t sub_2448F3420@<X0>(int a1@<W8>)
{
  v8 = 715682041 * ((((v6 - 224) | 0x4D960F4D) + (~(v6 - 224) | 0xB269F0B2)) ^ 0xB8D0F41E);
  *(v6 - 196) = v8 ^ 0xBDD8363C;
  *(v6 - 216) = ((a1 ^ 0xF7FEC3FD) + 805158560 + ((2 * a1) & 0xA8480560)) ^ v8;
  *(v6 - 212) = -715682041 * ((((v6 - 224) | 0x4D960F4D) + (~(v6 - 224) | 0xB269F0B2)) ^ 0xB8D0F41E) + 975743565 * v3 + ((v4 - 1717114813) & 0x66593FE3) - 1926580713;
  *(v6 - 224) = v2;
  *(v6 - 184) = (v4 + 7241) ^ v8;
  *(v6 - 192) = v5;
  *(v6 - 208) = v1;
  v9 = (*(v7 + 8 * (v4 + 18986)))(v6 - 224);
  return (*(STACK[0x320] + 8 * v4))(v9);
}

uint64_t sub_2448F36D4@<X0>(uint64_t a1@<X3>, uint64_t a2@<X6>, int a3@<W8>)
{
  STACK[0x310] = *(v4 + 8 * v3);
  STACK[0x978] = 0;
  return (*(v4 + 8 * (((STACK[0x978] > 0x1F) * (16 * (a3 ^ 0x60F) - 14064)) ^ a3)))(1984758740, 0x32E547E78C630CC3, 0x3F2B15206AB20240, a1, 0x97C87A91155159C6, 0xD06F0ADDD55D4C72, a2, 0x7B40F62ECA6A8A16);
}

uint64_t sub_2448F3974()
{
  v2 = STACK[0x300] & 0xCB4857FF;
  v3 = LODWORD(STACK[0x31C]) - 10936;
  if (v0 == 1984758740)
  {
    v4 = 90;
  }

  else
  {
    v4 = 89;
  }

  LOBYTE(STACK[0x8F7]) = v4;
  return (*(v1 + 8 * (((v2 + 9328) * (v0 == 1984758740)) ^ v3)))();
}

uint64_t sub_2448F3A54()
{
  v2 = STACK[0x758];
  *v2 = 0u;
  v2[1] = 0u;
  return (*(v1 + 8 * ((v0 ^ 0x3D49) + v0)))();
}

uint64_t sub_2448F3BF8()
{
  v2 = STACK[0x6C0];
  STACK[0x740] = STACK[0x4C8];
  LODWORD(STACK[0x40C]) = 1375866203;
  STACK[0x848] = v2;
  LODWORD(STACK[0x5F4]) = 237377481;
  LODWORD(STACK[0x444]) = 743296563;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_2448F3C9C(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(STACK[0x7E4]) = a3;
  STACK[0x4A0] = &STACK[0x4C8];
  LODWORD(STACK[0x4B0]) = 1109901553;
  return (*(v4 + 8 * v3))(1569933550);
}

uint64_t sub_2448F3D68@<X0>(int a1@<W8>)
{
  v2 = a1 | 0xC1B04480;
  v3 = (*(v1 + 8 * ((a1 | 0xC1B04480) ^ 0xFFB1A461)))();
  return (*(STACK[0x320] + 8 * ((59 * (v2 > 0xF2227F0B)) ^ (v2 + 5113704))))(v3);
}

void *sub_2448F3E28@<X0>(int a1@<W2>, int a2@<W8>)
{
  LODWORD(STACK[0x5E4]) = a1;
  STACK[0x8C0] = *(v2 + 8 * a2);
  return (*(v2 + 8 * ((((a2 + 13513) | 0x804) - 12698) ^ a2)))(&STACK[0x520]);
}

uint64_t sub_2448F3E84@<X0>(int a1@<W8>)
{
  v2 = STACK[0x5E4];
  STACK[0x8C8] -= 48;
  return (*(v1 + 8 * ((31 * (v2 != 1216124116)) ^ a1)))();
}

uint64_t sub_2448F3ED4@<X0>(int a1@<W8>)
{
  v3 = a1 - 95;
  STACK[0xB50] = *(v2 + 8 * (a1 - 95));
  *(v1 - 216) = &STACK[0xB50];
  *(v1 - 224) = a1 - 95 + 1649972239 * ((((v1 - 224) | 0x68A0B307) - ((v1 - 224) & 0x68A0B307)) ^ 0xB3189F7F) - 572929518;
  v4 = (*(v2 + 8 * ((a1 - 95) ^ 0x5D79)))(v1 - 224);
  return (*(STACK[0x320] + 8 * (((*(v1 - 220) != 93) * (((v3 ^ 0x5EC) + 700) ^ 0x48 ^ (3 * (v3 ^ 0x5EC)))) ^ (v3 + 21719))))(v4);
}

uint64_t sub_2448F3F98()
{
  v5 = STACK[0x528];
  v6 = STACK[0x5B0];
  v7 = STACK[0x8D4];
  *(v4 - 200) = *(v0 + 8 * v2) + 715682041 * ((((2 * v3) | 0x8CCA044A401B9E74) - v3 + 0x399AFDDADFF230C6) ^ 0xBFB48100D54B3468);
  *(v4 - 192) = v5;
  *(v4 - 216) = v6;
  *(v4 - 204) = v1 - 715682041 * ((((2 * v3) | 0x401B9E74) - v3 - 537775930) ^ 0xD54B3468) + v2 + 34;
  *(v4 - 224) = -1559256860 - 715682041 * ((((2 * v3) | 0x401B9E74) - v3 - 537775930) ^ 0xD54B3468) + v7 + v2 + 14678 + 3309568;
  v8 = (*(v0 + 8 * (v2 + 21957)))(v4 - 224);
  return (*(STACK[0x320] + 8 * (v2 + 5031)))(v8);
}

uint64_t sub_2448F4068()
{
  v5 = STACK[0x528];
  v6 = STACK[0x5B0];
  v7 = *(v0 + 8 * v2);
  v8 = 715682041 * (((~v3 | 0xCDC6B9CF6247335ELL) + (v3 | 0x323946309DB8CCA1)) ^ 0x4BE8C51568FE37F2);
  *(v4 - 224) = (v2 ^ 0x39CC) - v8 + LODWORD(STACK[0x8D4]) - 1434943847;
  *(v4 - 204) = v1 - v8 + v2;
  *(v4 - 200) = v7 + v8;
  *(v4 - 192) = v5;
  *(v4 - 216) = v6;
  v9 = (*(v0 + 8 * (v2 + 21923)))(v4 - 224);
  return (*(STACK[0x320] + 8 * (v2 ^ 0x139F)))(v9);
}

uint64_t sub_2448F4178(uint64_t a1, uint64_t a2)
{
  STACK[0x818] = v3;
  LODWORD(STACK[0x888]) = v4;
  STACK[0x798] = 0x58FA20369C313ACELL;
  LODWORD(STACK[0x828]) = 237377513;
  LODWORD(STACK[0x7A4]) = 237377513;
  STACK[0x400] = 0x6286B82630F8F22CLL;
  STACK[0x478] = 0x19847B594A0B84A2;
  return (*(v5 + 8 * (((((v2 ^ 0xAF4) + 2690) ^ v2 ^ 0x7FE3) * (v3 == 0)) ^ v2)))(a1, a2, 1216081105);
}

uint64_t sub_2448F4270@<X0>(int a1@<W8>)
{
  STACK[0x6E8] = *(v2 + 8 * a1);
  LODWORD(STACK[0x2C0]) = STACK[0x5BC];
  LODWORD(STACK[0x300]) = STACK[0x694];
  LODWORD(STACK[0x310]) = STACK[0x5AC];
  LODWORD(STACK[0x2F0]) = STACK[0x63C];
  v3 = *(v2 + 8 * (v1 - 4596));
  v4 = STACK[0x31C];
  v5 = 209 * (LODWORD(STACK[0x31C]) ^ 0x37C9);
  LODWORD(STACK[0x2A0]) = LODWORD(STACK[0x31C]) - 8334;
  LODWORD(STACK[0x290]) = v5;
  LODWORD(STACK[0x2B0]) = v4 - 22799 + v5;
  LODWORD(STACK[0x2D0]) = v4 - 13197;
  LODWORD(STACK[0x2E0]) = -318161901;
  return v3();
}

uint64_t sub_2448F4468@<X0>(uint64_t a1@<X8>)
{
  (*(v3 + 8 * (v2 ^ 0x11C5)))(a1 - 0x19847B594A0B84A2);
  v4 = STACK[0x320];
  *v1 = 0x19847B594A0B84A2;
  return (*(v4 + 8 * v2))(3300551070, 7643, 1216124116, 103, 18627, 5129, 1647873780, 5595);
}

uint64_t sub_2448F472C@<X0>(unint64_t a1@<X8>)
{
  STACK[0x3B8] = *(v6 + 8 * v1);
  STACK[0x518] = v2;
  LODWORD(STACK[0x344]) = v4;
  STACK[0x568] = a1;
  STACK[0x640] = 0x79310257FAE9BBB8;
  LODWORD(STACK[0x844]) = 237377513;
  STACK[0x438] = 0x44046241CC2D2A4ELL;
  STACK[0x428] = 0;
  v7 = (*(v6 + 8 * (v3 + 19179)))(16);
  v8 = STACK[0x320];
  STACK[0x738] = v7 + v5;
  return (*(v8 + 8 * ((478 * (((v3 + v3 - 84 + 1) ^ (v7 == 0)) & 1)) ^ v3)))();
}

uint64_t sub_2448F47E4(void *a1)
{
  *a1 = 0x750C1ABFB0567FDBLL;
  a1[1] = 0x750C1ABFB0567FDBLL;
  return (*(v2 + 8 * ((9661 * (v1 <= ((v1 + 2057605433) & 0x183059F7) - 1331606417)) ^ (v1 - 1831555120))))();
}

uint64_t sub_2448F4948(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v30 = v27 - ((2 * v27) & 0x9A76DF1A) - 851742835;
  v31 = (v28 + 1013496409) & 0x8F943DD3 ^ 0x1A56A39B ^ (v30 << (((v28 + 89) ^ 0x97) - 57)) & 0x7BDE9EFE;
  v32 = *(v29 + 8 * (v28 ^ 0x34030A44 ^ ((((v31 + (v30 ^ 0x70D420F2) + 1981019605 - v28) | (v28 - (v31 + (v30 ^ 0x70D420F2) + 1981019605))) >> 31) | (8 * (((v31 + (v30 ^ 0x70D420F2) + 1981019605 - v28) | (v28 - (v31 + (v30 ^ 0x70D420F2) + 1981019605))) >> 31)))));
  STACK[0x310] = a1;
  return v32(a1, v31, a3, 0x89AC0027BB50EB7ELL, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

uint64_t sub_2448F4BFC(int a1, int a2, uint64_t a3, unint64_t a4)
{
  v11 = *(v10 + 8 * v4);
  *&STACK[0x250] = vdupq_n_s64(0x38uLL);
  *&STACK[0x260] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x2F0] = vdupq_n_s64(v5);
  *&STACK[0x300] = vdupq_n_s64(a4);
  *&STACK[0x230] = vdupq_n_s64(v9);
  *&STACK[0x240] = vdupq_n_s64(v8);
  *&STACK[0x210] = vdupq_n_s64(v7);
  *&STACK[0x220] = vdupq_n_s64(0x8DBE49DF8B3EC60ALL);
  LODWORD(STACK[0x200]) = a2 + v6 + a1 - 1;
  *&STACK[0x2D0] = vdupq_n_s64(0x3098A71738BBE723uLL);
  *&STACK[0x2E0] = vdupq_n_s64(0x1329D3C80F2776A3uLL);
  return v11(a3, v10);
}

uint64_t sub_2448F4DE8@<X0>(uint64_t a1@<X1>, int a2@<W3>, int a3@<W5>, int a4@<W6>, int a5@<W7>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int8x16_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int8x16_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, int a59, uint64_t a60, int a61, uint64_t a62, int a63)
{
  v90.i64[0] = a6 + (a3 + v75 + 16);
  v90.i64[1] = a6 + (v71 + v75 + 16);
  v91.i64[0] = a6 + (v69 + v75 + 16);
  v91.i64[1] = a6 + (v70 + v75 + 16);
  v92.i64[0] = a6 + (v73 + v75 + 16);
  v92.i64[1] = a6 + (a4 + v75 + 16);
  v93.i64[0] = a6 + (LODWORD(STACK[0x200]) + v75 + 16);
  v93.i64[1] = a6 + (v68 + v75 + 16);
  v94 = v93;
  *&STACK[0x290] = v93;
  v93.i64[0] = a6 + (a66 + v75 + 16);
  v93.i64[1] = a6 + (v76 + v75 + 16);
  *&STACK[0x2C0] = v93;
  v93.i64[0] = a6 + (a59 + v75 + 16);
  v93.i64[1] = a6 + (a61 + v75 + 16);
  *&STACK[0x2B0] = v93;
  v95 = *&STACK[0x260];
  v96 = vandq_s8(v94, *&STACK[0x260]);
  v97 = vandq_s8(v92, *&STACK[0x260]);
  v98 = vandq_s8(v91, *&STACK[0x260]);
  v99 = vandq_s8(v90, *&STACK[0x260]);
  v100 = *&STACK[0x2F0];
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), *&STACK[0x300]);
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), *&STACK[0x300]);
  v103 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), *&STACK[0x300]);
  v104 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), *&STACK[0x300]);
  v105 = vorrq_s8(v104, *&STACK[0x2F0]);
  v106 = vorrq_s8(v103, *&STACK[0x2F0]);
  *&STACK[0x2A0] = vsubq_s64(vorrq_s8(v101, *&STACK[0x2F0]), vorrq_s8(v101, v84));
  v107 = vsubq_s64(vorrq_s8(v102, v100), vorrq_s8(v102, v84));
  v108 = vsubq_s64(v106, vorrq_s8(v103, v84));
  v109 = vaddq_s64(vsubq_s64(v105, vorrq_s8(v104, v84)), v84);
  v110 = vaddq_s64(v108, v84);
  v111 = *&STACK[0x240];
  v112 = veorq_s8(v110, *&STACK[0x240]);
  v113 = veorq_s8(v109, *&STACK[0x240]);
  v114 = veorq_s8(v109, v77);
  v115 = veorq_s8(v110, v77);
  v116 = vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL);
  v117 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v115);
  v118 = *&STACK[0x220];
  v119 = veorq_s8(vaddq_s64(v116, v114), *&STACK[0x220]);
  v120 = vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL);
  v121 = (v74 + v75 + 16);
  v122 = veorq_s8(v117, *&STACK[0x220]);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v124 = veorq_s8(v119, v120);
  v125 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v124);
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123);
  v127 = *&STACK[0x210];
  v128 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v126, v126), *&STACK[0x210]), v126), v80), v81);
  v129 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v125, v125), *&STACK[0x210]), v125), v80), v81);
  v130 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v131 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v132 = vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL);
  v133 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v131);
  v134 = veorq_s8(vaddq_s64(v132, v130), v82);
  v135 = veorq_s8(v133, v82);
  v136 = vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL);
  v137 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL));
  v138 = veorq_s8(v134, v136);
  v139 = vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL);
  v140 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v138);
  v141 = vaddq_s64(v139, v137);
  v143 = *&STACK[0x2D0];
  v142 = *&STACK[0x2E0];
  v144 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v140, a52), vorrq_s8(v140, v79)), v79), *&STACK[0x2E0]);
  v145 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v141, a52), vorrq_s8(v141, v79)), v79), *&STACK[0x2E0]);
  v146 = veorq_s8(v145, vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL));
  v147 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v148 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL), v146), *&STACK[0x2D0]);
  v149 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v147), *&STACK[0x2D0]);
  v150 = veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL));
  v151 = veorq_s8(v148, vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL));
  v152 = vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL);
  v153 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL), v151);
  v154 = vaddq_s64(v152, v150);
  v155 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v154, v154), v85), v154), v86), v87);
  v156 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v153, v153), v85), v153), v86), v87);
  v157 = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v158 = veorq_s8(v155, vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL));
  v159 = vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL);
  v160 = vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL);
  v161.i64[0] = a6 + v121;
  v161.i64[1] = a6 + (v72 + v75 + 16);
  *&STACK[0x270] = v161;
  v162 = vaddq_s64(v107, v84);
  v163 = vaddq_s64(v160, v158);
  v164 = vaddq_s64(v159, v157);
  v286.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v163, vandq_s8(vaddq_s64(v163, v163), v88)), v89), v83), vnegq_s64(vandq_s8(vshlq_n_s64(v90, 3uLL), v78)));
  v286.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v164, vandq_s8(vaddq_s64(v164, v164), v88)), v89), v83), vnegq_s64(vandq_s8(vshlq_n_s64(v91, 3uLL), v78)));
  v165 = veorq_s8(v162, v111);
  v166 = veorq_s8(v162, v77);
  v167 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166), v118);
  v168 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v169 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168);
  v170 = v127;
  v171 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v169, v169), v127), v169), v80), v81);
  v172 = veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v173 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), v172), v82);
  v174 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL));
  v175 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v174);
  v176 = v142;
  v177 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v175, a52), vorrq_s8(v175, v79)), v79), v142);
  v178 = veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL));
  v179 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v178), v143);
  v180 = veorq_s8(v179, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL));
  v181 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), v180);
  v182 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v181, v181), v85), v181), v86), v87);
  v142.i64[0] = a6 + (a63 + v75 + a5 + 16);
  v142.i64[1] = a6 + (a65 + v75 + 16);
  *&STACK[0x280] = v142;
  v183 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL), veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL)));
  v184 = vandq_s8(v142, v95);
  v185 = vaddq_s64(*&STACK[0x2A0], v84);
  v286.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v183, vandq_s8(vaddq_s64(v183, v183), v88)), v89), v83), vnegq_s64(vandq_s8(vshlq_n_s64(v92, 3uLL), v78)));
  v186 = veorq_s8(v185, v111);
  v187 = veorq_s8(v185, v77);
  v188 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), v187), v118);
  v189 = v118;
  v190 = veorq_s8(v188, vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL));
  v191 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL), v190);
  v192 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v191, v191), v170), v191), v80), v81);
  v193 = veorq_s8(v192, vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL));
  v194 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192, 0x38uLL), v192, 8uLL), v193), v82);
  v195 = veorq_s8(v194, vsraq_n_u64(vshlq_n_s64(v193, 3uLL), v193, 0x3DuLL));
  v196 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL), v195);
  v197 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v196, a52), vorrq_s8(v196, v79)), v79), v176);
  v198 = veorq_s8(v197, vsraq_n_u64(vshlq_n_s64(v195, 3uLL), v195, 0x3DuLL));
  v199 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL), v198), v143);
  v200 = veorq_s8(v199, vsraq_n_u64(vshlq_n_s64(v198, 3uLL), v198, 0x3DuLL));
  v201 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL), v200);
  v202 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v201, v201), v85), v201), v86), v87);
  v203 = veorq_s8(v202, vsraq_n_u64(vshlq_n_s64(v200, 3uLL), v200, 0x3DuLL));
  v204 = vsraq_n_u64(vshlq_n_s64(v202, 0x38uLL), v202, 8uLL);
  v205 = vandq_s8(v161, v95);
  v206 = vaddq_s64(v204, v203);
  v208 = *&STACK[0x2B0];
  v207 = *&STACK[0x2C0];
  v209 = vandq_s8(*&STACK[0x2B0], v95);
  v286.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v206, vandq_s8(vaddq_s64(v206, v206), v88)), v89), v83), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x290], 3uLL), v78)));
  v210 = vandq_s8(*&STACK[0x2C0], v95);
  v211 = vsraq_n_u64(vshlq_n_s64(v210, 0x38uLL), v210, 8uLL);
  v212 = vsraq_n_u64(vshlq_n_s64(v209, 0x38uLL), v209, 8uLL);
  v213 = vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL);
  v214 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL), *&STACK[0x300]);
  v215 = vaddq_s64(v213, *&STACK[0x300]);
  v216 = vaddq_s64(v212, *&STACK[0x300]);
  v217 = vaddq_s64(v211, *&STACK[0x300]);
  v218 = vsubq_s64(vorrq_s8(v214, *&STACK[0x2F0]), vorrq_s8(v214, v84));
  v219 = vsubq_s64(vorrq_s8(v215, *&STACK[0x2F0]), vorrq_s8(v215, v84));
  v220 = vsubq_s64(vorrq_s8(v216, *&STACK[0x2F0]), vorrq_s8(v216, v84));
  v221 = vaddq_s64(vsubq_s64(vorrq_s8(v217, *&STACK[0x2F0]), vorrq_s8(v217, v84)), v84);
  v222 = vaddq_s64(v220, v84);
  *&STACK[0x2A0] = vqtbl4q_s8(v286, a39);
  v223 = veorq_s8(v222, v111);
  v286.val[0] = veorq_s8(v221, v111);
  v286.val[1] = veorq_s8(v221, v77);
  v286.val[2] = veorq_s8(v222, v77);
  v286.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v286.val[0], 0x38uLL), v286.val[0], 8uLL), v286.val[1]), v189);
  v224 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL), v286.val[2]), v189);
  v225 = v189;
  v226 = vsraq_n_u64(vshlq_n_s64(v286.val[1], 3uLL), v286.val[1], 0x3DuLL);
  v286.val[1] = veorq_s8(v224, vsraq_n_u64(vshlq_n_s64(v286.val[2], 3uLL), v286.val[2], 0x3DuLL));
  v286.val[2] = veorq_s8(v286.val[0], v226);
  v227 = vsraq_n_u64(vshlq_n_s64(v224, 0x38uLL), v224, 8uLL);
  v228 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v286.val[0], 0x38uLL), v286.val[0], 8uLL), v286.val[2]);
  v286.val[0] = vaddq_s64(v227, v286.val[1]);
  v229 = v170;
  v286.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v286.val[0], v286.val[0]), v170), v286.val[0]), v80), v81);
  v230 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v228, v228), v170), v228), v80), v81);
  v231 = vsraq_n_u64(vshlq_n_s64(v286.val[1], 3uLL), v286.val[1], 0x3DuLL);
  v286.val[1] = veorq_s8(v230, vsraq_n_u64(vshlq_n_s64(v286.val[2], 3uLL), v286.val[2], 0x3DuLL));
  v286.val[2] = veorq_s8(v286.val[0], v231);
  v232 = vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL);
  v233 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v286.val[0], 0x38uLL), v286.val[0], 8uLL), v286.val[2]);
  v286.val[0] = veorq_s8(vaddq_s64(v232, v286.val[1]), v82);
  v234 = veorq_s8(v233, v82);
  v235 = vsraq_n_u64(vshlq_n_s64(v286.val[1], 3uLL), v286.val[1], 0x3DuLL);
  v286.val[1] = veorq_s8(v234, vsraq_n_u64(vshlq_n_s64(v286.val[2], 3uLL), v286.val[2], 0x3DuLL));
  v286.val[2] = veorq_s8(v286.val[0], v235);
  v236 = vsraq_n_u64(vshlq_n_s64(v234, 0x38uLL), v234, 8uLL);
  v237 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v286.val[0], 0x38uLL), v286.val[0], 8uLL), v286.val[2]);
  v286.val[0] = vaddq_s64(v236, v286.val[1]);
  v238 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v237, a52), vorrq_s8(v237, v79)), v79), *&STACK[0x2E0]);
  v286.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v286.val[0], a52), vorrq_s8(v286.val[0], v79)), v79), *&STACK[0x2E0]);
  v286.val[1] = veorq_s8(v286.val[0], vsraq_n_u64(vshlq_n_s64(v286.val[1], 3uLL), v286.val[1], 0x3DuLL));
  v286.val[2] = veorq_s8(v238, vsraq_n_u64(vshlq_n_s64(v286.val[2], 3uLL), v286.val[2], 0x3DuLL));
  v286.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v286.val[0], 0x38uLL), v286.val[0], 8uLL), v286.val[1]), *&STACK[0x2D0]);
  v239 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v238, 0x38uLL), v238, 8uLL), v286.val[2]), *&STACK[0x2D0]);
  v240 = vsraq_n_u64(vshlq_n_s64(v286.val[1], 3uLL), v286.val[1], 0x3DuLL);
  v286.val[1] = veorq_s8(v239, vsraq_n_u64(vshlq_n_s64(v286.val[2], 3uLL), v286.val[2], 0x3DuLL));
  v286.val[2] = veorq_s8(v286.val[0], v240);
  v241 = vsraq_n_u64(vshlq_n_s64(v239, 0x38uLL), v239, 8uLL);
  v242 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v286.val[0], 0x38uLL), v286.val[0], 8uLL), v286.val[2]);
  v286.val[0] = vaddq_s64(v241, v286.val[1]);
  v286.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v286.val[0], v286.val[0]), v85), v286.val[0]), v86), v87);
  v243 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v242, v242), v85), v242), v86), v87);
  v244 = vsraq_n_u64(vshlq_n_s64(v286.val[1], 3uLL), v286.val[1], 0x3DuLL);
  v286.val[1] = veorq_s8(v243, vsraq_n_u64(vshlq_n_s64(v286.val[2], 3uLL), v286.val[2], 0x3DuLL));
  v286.val[2] = veorq_s8(v286.val[0], v244);
  v245 = vsraq_n_u64(vshlq_n_s64(v243, 0x38uLL), v243, 8uLL);
  v246 = vaddq_s64(v219, v84);
  v247 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v286.val[0], 0x38uLL), v286.val[0], 8uLL), v286.val[2]);
  v286.val[0] = vaddq_s64(v245, v286.val[1]);
  v286.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v247, vandq_s8(vaddq_s64(v247, v247), v88)), v89), v83), vnegq_s64(vandq_s8(vshlq_n_s64(v207, 3uLL), v78)));
  v286.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v286.val[0], vandq_s8(vaddq_s64(v286.val[0], v286.val[0]), v88)), v89), v83), vnegq_s64(vandq_s8(vshlq_n_s64(v208, 3uLL), v78)));
  v248 = veorq_s8(v246, v111);
  v249 = veorq_s8(v246, v77);
  v250 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v248, 0x38uLL), v248, 8uLL), v249), v225);
  v251 = veorq_s8(v250, vsraq_n_u64(vshlq_n_s64(v249, 3uLL), v249, 0x3DuLL));
  v252 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v250, 0x38uLL), v250, 8uLL), v251);
  v253 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v252, v252), v170), v252), v80), v81);
  v254 = veorq_s8(v253, vsraq_n_u64(vshlq_n_s64(v251, 3uLL), v251, 0x3DuLL));
  v255 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v253, 0x38uLL), v253, 8uLL), v254), v82);
  v256 = veorq_s8(v255, vsraq_n_u64(vshlq_n_s64(v254, 3uLL), v254, 0x3DuLL));
  v257 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v255, 0x38uLL), v255, 8uLL), v256);
  v258 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v257, a52), vorrq_s8(v257, v79)), v79), *&STACK[0x2E0]);
  v259 = veorq_s8(v258, vsraq_n_u64(vshlq_n_s64(v256, 3uLL), v256, 0x3DuLL));
  v260 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v258, 0x38uLL), v258, 8uLL), v259), *&STACK[0x2D0]);
  v261 = veorq_s8(v260, vsraq_n_u64(vshlq_n_s64(v259, 3uLL), v259, 0x3DuLL));
  v262 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v260, 0x38uLL), v260, 8uLL), v261);
  v263 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v262, v262), v85), v262), v86), v87);
  v264 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v263, 0x38uLL), v263, 8uLL), veorq_s8(v263, vsraq_n_u64(vshlq_n_s64(v261, 3uLL), v261, 0x3DuLL)));
  v265 = vaddq_s64(v218, v84);
  v266 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v264, vandq_s8(vaddq_s64(v264, v264), v88)), v89), v83), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x270], 3uLL), v78)));
  v267 = veorq_s8(v265, v111);
  v268 = veorq_s8(v265, v77);
  v269 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v267, 0x38uLL), v267, 8uLL), v268), v225);
  v270 = veorq_s8(v269, vsraq_n_u64(vshlq_n_s64(v268, 3uLL), v268, 0x3DuLL));
  v271 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v269, 0x38uLL), v269, 8uLL), v270);
  v272 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v271, v271), v229), v271), v80), v81);
  v273 = veorq_s8(v272, vsraq_n_u64(vshlq_n_s64(v270, 3uLL), v270, 0x3DuLL));
  v274 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v272, 0x38uLL), v272, 8uLL), v273), v82);
  v275 = veorq_s8(v274, vsraq_n_u64(vshlq_n_s64(v273, 3uLL), v273, 0x3DuLL));
  v276 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v274, 0x38uLL), v274, 8uLL), v275);
  v277 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v276, a52), vorrq_s8(v276, v79)), v79), *&STACK[0x2E0]);
  v278 = veorq_s8(v277, vsraq_n_u64(vshlq_n_s64(v275, 3uLL), v275, 0x3DuLL));
  v279 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v277, 0x38uLL), v277, 8uLL), v278), *&STACK[0x2D0]);
  v280 = veorq_s8(v279, vsraq_n_u64(vshlq_n_s64(v278, 3uLL), v278, 0x3DuLL));
  v281 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v279, 0x38uLL), v279, 8uLL), v280);
  v282 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v281, v281), v85), v281), v86), v87);
  v283 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v282, 0x38uLL), v282, 8uLL), veorq_s8(v282, vsraq_n_u64(vshlq_n_s64(v280, 3uLL), v280, 0x3DuLL)));
  v286.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v283, vandq_s8(vaddq_s64(v283, v283), v88)), v89), v83), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x280], 3uLL), v78)));
  v266.i64[0] = vqtbl4q_s8(v286, a39).u64[0];
  v266.i64[1] = STACK[0x2A0];
  v286.val[0] = vrev64q_s8(*(v67 + v121));
  v286.val[1].i64[0] = 0x5D5D5D5D5D5D5D5DLL;
  v286.val[1].i64[1] = 0x5D5D5D5D5D5D5D5DLL;
  v284 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v286.val[0], v286.val[0], 8uLL), v286.val[1]), v266));
  *(a6 + v121 - 15) = vextq_s8(v284, v284, 8uLL);
  return (*(a1 + 8 * ((12403 * (a2 == v75)) ^ v66)))();
}

uint64_t sub_2448F5ACC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v8 = *(v7 + 8 * v6);
  *&STACK[0x2F0] = vdupq_n_s64(0x38uLL);
  *&STACK[0x300] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x2E0] = vdupq_n_s64(a4);
  LODWORD(STACK[0x2C0]) = v5 & 0xFFFFFFF8;
  *&STACK[0x2D0] = xmmword_245010D40;
  return v8(a5 - 7);
}

uint64_t sub_2448F5C24@<X0>(uint64_t a1@<X0>, int a2@<W4>, int a3@<W5>, uint64_t a4@<X8>, int8x16_t a5@<Q3>, int8x16_t a6@<Q4>, int8x16_t a7@<Q5>, int8x16_t a8@<Q6>, int8x16_t a9@<Q7>)
{
  v35 = (v12 + v18 + 8);
  v36.i64[0] = a4 + (v19 + v18 + 8);
  v36.i64[1] = a4 + (v14 + v18 + 8);
  v37.i64[0] = a4 + (v15 + v18 + 8);
  v38.i64[0] = a4 + (v10 + v18 + 8);
  v37.i64[1] = a4 + (a2 + v18 + 8);
  v38.i64[1] = a4 + (v9 + v18 + 8);
  v39.i64[0] = a4 + v35;
  v39.i64[1] = a4 + (v11 + v18 + v13 + 8);
  v40 = vandq_s8(v39, *&STACK[0x300]);
  v41 = vandq_s8(v38, *&STACK[0x300]);
  v42 = vandq_s8(v37, *&STACK[0x300]);
  v43 = vandq_s8(v36, *&STACK[0x300]);
  v44 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL), *&STACK[0x2E0]);
  v45 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL), *&STACK[0x2E0]);
  v46 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL), *&STACK[0x2E0]);
  v47 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL), *&STACK[0x2E0]);
  v48 = vsubq_s64(vorrq_s8(v46, a5), vorrq_s8(v46, a6));
  v49 = vaddq_s64(vsubq_s64(vorrq_s8(v47, a5), vorrq_s8(v47, a6)), a6);
  v50 = vaddq_s64(v48, a6);
  v51 = veorq_s8(v50, a7);
  v52 = veorq_s8(v49, a7);
  v53 = veorq_s8(v49, a8);
  v54 = veorq_s8(v50, a8);
  v55 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v53), a9);
  v56 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v54), a9);
  v57 = veorq_s8(v56, vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL));
  v58 = veorq_s8(v55, vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL));
  v59 = vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL);
  v60 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL), v58);
  v61 = vaddq_s64(v59, v57);
  v62 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v61, v61), v21), v61), v22), v23);
  v63 = vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL);
  v64 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v60, v60), v21), v60), v22), v23);
  v65 = veorq_s8(v64, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v66 = veorq_s8(v62, v63);
  v67 = vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL);
  v68 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v66);
  v69 = veorq_s8(vaddq_s64(v67, v65), v24);
  v70 = veorq_s8(v68, v24);
  v71 = vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL);
  v72 = veorq_s8(v70, vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL));
  v73 = veorq_s8(v69, v71);
  v74 = vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL);
  v75 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v73);
  v76 = vaddq_s64(v74, v72);
  v77 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v75, v25), vorrq_s8(v75, v26)), v26), v27);
  v78 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v76, v25), vorrq_s8(v76, v26)), v26), v27);
  v79 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v80 = veorq_s8(v77, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v81 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v79), v28);
  v82 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), v80), v28);
  v83 = vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL);
  v84 = veorq_s8(v82, vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL));
  v85 = veorq_s8(v81, v83);
  v86 = vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL);
  v87 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), v85);
  v88 = vaddq_s64(v86, v84);
  v89 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v88, v88), v29), v88), v30), v31);
  v90 = vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL);
  v91 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v87, v87), v29), v87), v30), v31);
  v92 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL));
  v93 = vaddq_s64(vsubq_s64(vorrq_s8(v45, a5), vorrq_s8(v45, a6)), a6);
  v94 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), veorq_s8(v89, v90));
  v95 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v92);
  v138.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v94, vandq_s8(vaddq_s64(v94, v94), v32)), v33), v34), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), *&STACK[0x2F0])));
  v138.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v95, vandq_s8(vaddq_s64(v95, v95), v32)), v33), v34), vnegq_s64(vandq_s8(vshlq_n_s64(v37, 3uLL), *&STACK[0x2F0])));
  v96 = veorq_s8(v93, a7);
  v97 = veorq_s8(v93, a8);
  v98 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v97), a9);
  v99 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v99);
  v101 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v100, v100), v21), v100), v22), v23);
  v102 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v103 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102), v24);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v105 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104);
  v106 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v105, v25), vorrq_s8(v105, v26)), v26), v27);
  v107 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v108 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107), v28);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v110 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109);
  v111 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v110, v110), v29), v110), v30), v31);
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL)));
  v113 = vaddq_s64(vsubq_s64(vorrq_s8(v44, a5), vorrq_s8(v44, a6)), a6);
  v138.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v112, vandq_s8(vaddq_s64(v112, v112), v32)), v33), v34), vnegq_s64(vandq_s8(vshlq_n_s64(v38, 3uLL), *&STACK[0x2F0])));
  v114 = veorq_s8(v113, a7);
  v115 = veorq_s8(v113, a8);
  v116 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115), a9);
  v117 = vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL);
  v118 = vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL);
  v119 = veorq_s8(v116, v117);
  v120 = vaddq_s64(v118, v119);
  v121 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v120, v120), v21), v120), v22), v23);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v123 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122), v24);
  v124 = vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL);
  v125 = vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL);
  v126 = veorq_s8(v123, v124);
  v127 = vaddq_s64(v125, v126);
  v128 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v127, v25), vorrq_s8(v127, v26)), v26), v27);
  v129 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v130 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v129), v28);
  v131 = vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL);
  v132 = vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL);
  v133 = veorq_s8(v130, v131);
  v134 = vaddq_s64(v132, v133);
  v135 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v134, v134), v29), v134), v30), v31);
  v136 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL)));
  v138.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v136, vandq_s8(vaddq_s64(v136, v136), v32)), v33), v34), vnegq_s64(vandq_s8(vshlq_n_s64(v39, 3uLL), *&STACK[0x2F0])));
  *(v39.i64[0] - 7) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(*(a1 + v35)), 0x5D5D5D5D5D5D5D5DLL), *&vqtbl4q_s8(v138, *&STACK[0x2D0])));
  return (*(v20 + 8 * (((v17 == v18) * a3) ^ v16)))();
}

uint64_t sub_2448F6348@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, int a6@<W7>, uint64_t a7@<X8>)
{
  v22 = ((v8 + v10) ^ v12) + a6;
  v23 = STACK[0x310] + v22;
  v24 = __ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = ((v24 + a2) | v11) - ((v24 + a2) | v7) + v7;
  v26 = __ROR8__(v25 ^ v19, 8);
  v27 = v25 ^ v20;
  v28 = (v26 + v27) ^ 0x8DBE49DF8B3EC60ALL;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = __ROR8__(((v18 & (2 * (v30 + v29))) - (v30 + v29) + a5) ^ v14, 8);
  v32 = ((v18 & (2 * (v30 + v29))) - (v30 + v29) + a5) ^ v14 ^ __ROR8__(v29, 61);
  v33 = (v31 + v32) ^ 0x1717D4ABBED3C077;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (v9 - ((v35 + v34) | v9) + ((v35 + v34) | a1)) ^ 0x1329D3C80F2776A3;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0x3098A71738BBE723;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = ((a7 | (2 * (v40 + v39))) - (v40 + v39) + 0x31D67F1C8D5E088) ^ 0xACCA236DD0886AF8;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = __ROR8__(v41, 8);
  *v23 = *(a3 + v22) ^ v13 ^ (((v43 + v42 - (v17 & (2 * (v43 + v42))) + a4) ^ 0x362E54264EF41603) >> (8 * (v23 & 7u)));
  return (*(v21 + 8 * (((a6 - 1 == v15) * v16) ^ v8)))();
}

uint64_t sub_2448F64D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36)
{
  STACK[0x388] = STACK[0x310];
  LODWORD(STACK[0x8A4]) = a36;
  return (*(v37 + 8 * v36))(a1, a2, 1216124116);
}

uint64_t sub_2448F655C()
{
  v2 = (*(v1 + 8 * (v0 + 8672)))();
  v3 = STACK[0x320];
  STACK[0x5B0] = 0;
  return (*(v3 + 8 * (v0 - 3226)))(v2);
}

uint64_t sub_2448F66BC@<X0>(int a1@<W8>)
{
  STACK[0x8B8] = *(v6 + 8 * a1);
  STACK[0x380] = v2;
  LODWORD(STACK[0x434]) = v3;
  STACK[0x760] = v1;
  STACK[0x688] = 0x35FC38389A91BCB0;
  LODWORD(STACK[0x684]) = 237377513;
  LOWORD(STACK[0x4F6]) = -18976;
  LODWORD(STACK[0x408]) = 237377513;
  LODWORD(STACK[0x514]) = 237377513;
  STACK[0x770] = 0xC9D452B5095AACA7;
  STACK[0x4C0] = 0;
  v7 = (*(v6 + 8 * (v4 ^ 0x7A1D)))(16);
  v8 = STACK[0x320];
  STACK[0x3E8] = v7 + v5;
  return (*(v8 + 8 * (((v7 == 0) * ((v4 ^ 0x1438) - 12296)) ^ v4)))();
}

uint64_t sub_2448F6784(void *a1)
{
  *a1 = 0x750C1ABFB0567FDBLL;
  a1[1] = 0x750C1ABFB0567FDBLL;
  return (*(v2 + 8 * ((11042 * (v1 + 1734805101 > ((v1 + 696115219) & 0xD681EE9F ^ 0x81780B5A))) ^ (v1 - 7902))))();
}

uint64_t sub_2448F6878(uint64_t a1, uint64_t a2)
{
  v4 = STACK[0x760] == 0;
  STACK[0x4E8] = STACK[0x760];
  return (*(v3 + 8 * ((v4 * (v2 - 8802 + ((v2 + 1582790442) & 0xA1A89E5B))) ^ (v2 + 11268))))(a1, a2, 1216081105);
}

uint64_t sub_2448F68D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v6 = ((((v4 + 1063) | 0x17A0u) ^ 0xFDBBE89ELL) & (2 * v3)) + (v3 ^ 0xFADBF7D77EDDEF0BLL ^ (v4 + 1712130022) & 0x99F2DCB4);
  STACK[0xAF0] = v6 + 0x4FFCFFBFEB7FB1D0;
  STACK[0xAF8] = a3;
  return (*(v5 + 8 * ((12945 * (v6 - a3 + 0x3B2040611BB3CCE7 < 0xFFFFFFFFFFFFFFF6)) ^ v4)))(a1, a2, 1216081110);
}

uint64_t sub_2448F6AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a3 - 0x6286B82630F8F22CLL);
  STACK[0x708] = 0x750C1ABFB0567FDBLL;
  STACK[0x360] = 0x4186ACCFD03D8C57;
  return (*(v4 + 8 * (((v5 == 0x146375EC570BCC2FLL) * ((v3 - 254) ^ 0x3114 ^ (21 * (v3 ^ 0x388D)))) ^ v3)))(a1, a2, 1216081105);
}

uint64_t sub_2448F6B3C@<X0>(unint64_t a1@<X8>)
{
  STACK[0x7D8] = a1;
  LODWORD(STACK[0x4B4]) = 1375866203;
  STACK[0x898] = &STACK[0x708];
  LODWORD(STACK[0x41C]) = 836695066;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_2448F6D8C()
{
  v2 = *(STACK[0x708] - 0x750C1ABFB0567FC3);
  STACK[0x470] = v2;
  return (*(v1 + 8 * (((((v0 - 360257154) & 0x1578F3F8 ^ 0xFFFF9A49) + ((v0 + 1705280141) & 0x9A5B7D7F)) * (v2 == 0)) ^ v0)))();
}

uint64_t sub_2448F6E1C@<X0>(int a1@<W8>)
{
  v3 = (v1 | ((v1 < 0xA6B181C) << 32)) + 0x582A04F51B77DE25;
  STACK[0xA08] = v3;
  v4 = STACK[0x360];
  STACK[0xA10] = STACK[0x360];
  return (*(v2 + 8 * ((5451 * (v3 - v4 + ((a1 - 260511383) & 0xF86D2AE) + ((a1 - 260511383) ^ 0xE95CA7DA5A23B8A1) < 0xFFFFFFFFFFFFFFF6)) ^ a1)))();
}

uint64_t sub_2448F6F0C()
{
  v2 = STACK[0x31C];
  LOWORD(STACK[0x9CE]) = v0;
  return (*(v1 + 8 * ((2279 * (((v2 - 14271) ^ 0xA559B489) > 0x5451BE63)) ^ (v2 - 13885))))();
}

uint64_t sub_2448F758C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  v42 = LODWORD(STACK[0x31C]) - 7933;
  v43 = (v39 ^ v40) + a39;
  STACK[0x940] = v43 + 10;
  v43 -= 0x4E16826817C723BDLL;
  v44 = v43 < 0x6608D053;
  v45 = v43 > a24;
  if (a24 < 0x6608D053 != v44)
  {
    v46 = v44;
  }

  else
  {
    v46 = v45;
  }

  return (*(v41 + 8 * (v42 ^ (496 * v46))))();
}

uint64_t sub_2448F7764(uint64_t a1, uint64_t a2)
{
  v4 = *(v3 + 8 * (((v2 ^ 0x2762) - 14175) ^ 0x9C5));
  LODWORD(STACK[0x2F0]) = 8855;
  return v4(a1, a2, 0x8DBE49DF8B3EC60ALL);
}

uint64_t sub_2448F77F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, unint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = ((LODWORD(STACK[0x31C]) - 1133263226) & 0xDFFDA5FF) + 1670296763;
  v68 = LODWORD(STACK[0x31C]) - 9341;
  v69 = (v65 ^ v66) + a65;
  STACK[0x9A0] = v69 + 10;
  v70 = (v67 ^ 0x9EFC14BC09E9EE10) + v69;
  v71 = v70 < 0xD62BCB3B;
  v72 = v70 > a61;
  if (a61 < 0xD62BCB3B != v71)
  {
    v73 = v71;
  }

  else
  {
    v73 = v72;
  }

  return (*(STACK[0x320] + 8 * ((25 * !v73) ^ v68)))();
}

uint64_t sub_2448F7A04(uint64_t a1, uint64_t a2)
{
  v4 = *(v3 + 8 * (v2 ^ 0x9FB ^ (7125 * (v2 - 815325177 == ((12 * (v2 ^ 0x417)) ^ 0x3AD7D0BF)))));
  LODWORD(STACK[0x2B0]) = 8855;
  return v4(a1, a2, 0x8DBE49DF8B3EC60ALL);
}

uint64_t sub_2448F7AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, unint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v74 = LODWORD(STACK[0x31C]) + 6663;
  LODWORD(STACK[0x954]) = v71;
  v75 = (v71 ^ v72) + a71;
  STACK[0x958] = v75 + 10;
  v75 -= 0x35FC3837BEBA52C7;
  v76 = v75 < 0xDBD769DF;
  v77 = v75 > a41;
  if (a41 < 0xDBD769DF != v76)
  {
    v78 = v76;
  }

  else
  {
    v78 = v77;
  }

  return (*(v73 + 8 * (v74 ^ (v78 | (8 * v78)))))(1569933550);
}

uint64_t sub_2448F7C84(uint64_t a1, uint64_t a2)
{
  v4 = *(v3 + 8 * (v2 - 11932));
  LODWORD(STACK[0x260]) = 8855;
  return v4(a1, a2, 0x8DBE49DF8B3EC60ALL);
}

uint64_t sub_2448F7D38()
{
  v2 = LODWORD(STACK[0x31C]) - 14119;
  LODWORD(STACK[0x94C]) = v0;
  return (*(v1 + 8 * (v2 ^ 0x94E)))();
}

uint64_t sub_2448F7D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, unint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v62 = LODWORD(STACK[0x31C]) + 8104;
  v63 = (v59 ^ v60) + a59;
  STACK[0x990] = (((LODWORD(STACK[0x31C]) - 14272) | 0x11u) ^ 0x3BLL) + v63;
  v63 -= 0x68DC2B035EDC64C5;
  v64 = v63 < 0x75EFFA2F;
  v65 = v63 > a55;
  if (a55 < 0x75EFFA2F != v64)
  {
    v66 = v64;
  }

  else
  {
    v66 = v65;
  }

  return (*(v61 + 8 * (v62 ^ (29 * v66))))(3300551070, a2, 1216081110);
}

uint64_t sub_2448F7F44(uint64_t a1, uint64_t a2)
{
  v4 = *(v3 + 8 * ((v2 - 14114) ^ 0x9FA));
  LODWORD(STACK[0x310]) = 8855;
  return v4(a1, a2, 0x8DBE49DF8B3EC60ALL);
}

uint64_t sub_2448F7FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20, uint64_t a21)
{
  v24 = LODWORD(STACK[0x31C]) - 4203;
  v25 = (v21 ^ v22) + a21;
  STACK[0x9B0] = v25 + (LODWORD(STACK[0x31C]) - 14255) - 39;
  v25 -= 0x4EAB185481A0CDF3;
  v26 = v25 < 0x5533F8F;
  v27 = v25 > a19;
  if (a19 < 0x5533F8F != v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = v27;
  }

  return (*(v23 + 8 * (v24 ^ (253 * !v28))))(3300551070, a2, 1216081110);
}

uint64_t sub_2448F81D4(uint64_t a1, uint64_t a2)
{
  v4 = *(v3 + 8 * ((v2 - 14115) ^ 0x9F9));
  LODWORD(STACK[0x300]) = 8855;
  return v4(a1, a2, 0x8DBE49DF8B3EC60ALL);
}

uint64_t sub_2448F8210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unint64_t a22, uint64_t a23)
{
  v26 = (LODWORD(STACK[0x31C]) - 14272) | 0x3950u;
  v27 = LODWORD(STACK[0x31C]) + 4090;
  v28 = (v23 ^ v24) + a23;
  STACK[0x9C0] = v28 + 10;
  v29 = (v26 ^ 0x854A658021CD6972) + v28;
  v30 = v29 < 0x840B8149;
  v31 = v29 > a22;
  if (a22 < 0x840B8149 != v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = v31;
  }

  return (*(v25 + 8 * ((4085 * v32) ^ v27)))();
}

uint64_t sub_2448F83BC(uint64_t a1, uint64_t a2)
{
  v4 = *(v3 + 8 * (v2 - 11932));
  LODWORD(STACK[0x290]) = 8855;
  return v4(a1, a2, 0x8DBE49DF8B3EC60ALL);
}

uint64_t sub_2448F883C()
{
  v2 = STACK[0x31C];
  LOWORD(STACK[0x93E]) = v0;
  v3 = *(v1 + 8 * ((v2 - 14149) ^ 0x9DF));
  LODWORD(STACK[0x2F0]) = v0;
  return v3();
}

uint64_t sub_2448F886C()
{
  v2 = STACK[0x31C];
  LOWORD(STACK[0x988]) = v0;
  return (*(v1 + 8 * ((v2 - 14123) ^ 0x9F1)))();
}

uint64_t sub_2448F8898()
{
  v2 = STACK[0x31C];
  LOWORD(STACK[0x9AE]) = v0;
  v3 = *(v1 + 8 * ((v2 - 14103) ^ 0x98D));
  LODWORD(STACK[0x300]) = v0;
  return v3();
}

uint64_t sub_2448F88C8()
{
  v2 = STACK[0x31C];
  LOWORD(STACK[0x976]) = v0;
  return (*(v1 + 8 * (v2 - 11932)))();
}

uint64_t sub_2448F88F4()
{
  v2 = STACK[0x31C];
  LOWORD(STACK[0x986]) = v0;
  return (*(v1 + 8 * ((v2 - 14156) ^ 0x9D0)))();
}

uint64_t sub_2448F8920()
{
  v2 = STACK[0x31C];
  LOWORD(STACK[0x98E]) = v0;
  v3 = *(v1 + 8 * (v2 - 11932));
  LODWORD(STACK[0x310]) = v0;
  return v3();
}

uint64_t sub_2448F8950()
{
  v2 = STACK[0x31C];
  LOWORD(STACK[0x952]) = v0;
  v3 = *(v1 + 8 * ((v2 - 14164) ^ 0x9C8));
  LODWORD(STACK[0x260]) = v0;
  return v3();
}

uint64_t sub_2448F8980()
{
  v2 = STACK[0x31C];
  LOWORD(STACK[0x98A]) = v0;
  return (*(v1 + 8 * (v2 - 11932)))();
}

uint64_t sub_2448F89AC()
{
  v2 = STACK[0x31C];
  LOWORD(STACK[0x98C]) = v0;
  return (*(v1 + 8 * (v2 - 11932)))();
}

uint64_t sub_2448F89D8()
{
  v2 = STACK[0x31C];
  LOWORD(STACK[0x9BE]) = v0;
  v3 = *(v1 + 8 * ((7112 * (v2 == -1525742600)) ^ (v2 - 11932)));
  LODWORD(STACK[0x290]) = v0;
  return v3();
}

uint64_t sub_2448F8A24()
{
  v2 = STACK[0x31C];
  LOWORD(STACK[0x99E]) = v0;
  v3 = *(v1 + 8 * ((v2 - 14134) ^ 0x9EE));
  LODWORD(STACK[0x2B0]) = v0;
  return v3();
}

uint64_t sub_2448F8A54(uint64_t a1, uint64_t a2)
{
  v5 = STACK[0xA70] + (v2 ^ v3) - 0x3B34AA0547705173;
  v6 = STACK[0xA68] - 0xD610D55E13B3899;
  v7 = v5 < 0x27AD0698;
  v8 = v5 > v6;
  if (v7 != v6 < 0x27AD0698)
  {
    v8 = v7;
  }

  return (*(v4 + 8 * ((8 * !v8) | (!v8 << 7) | (LODWORD(STACK[0x31C]) + 4965))))(3300551070, a2, 1216081110);
}

uint64_t sub_2448F8BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v7 = v5 + 20482;
  v8 = (v5 + 1413642858) & 0xABBDD65D;
  v9 = STACK[0x810];
  STACK[0x5D0] = a3;
  LODWORD(STACK[0x85C]) = v3;
  return (*(v6 + 8 * (((v9 + v4 == 0) * (v8 ^ 0x560E)) ^ v7)))(a1, a2, 1216081107);
}

uint64_t sub_2448F8C30(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(v4 + 8 * (v3 + 948)))(LODWORD(STACK[0x85C]) ^ 0xE2612A0 ^ (596 * (v3 ^ 0x5609)) ^ 0x32A9u);
  v7 = STACK[0x320];
  STACK[0xA78] = v6 + 0x3E0DD92B1DE16FEALL;
  if (v6)
  {
    v8 = 1216124116;
  }

  else
  {
    v8 = a3;
  }

  LODWORD(STACK[0xA84]) = v8;
  return (*(v7 + 8 * ((11 * (v6 != 0)) ^ v3)))();
}

uint64_t sub_2448F8CE0()
{
  v3 = STACK[0xA50] + (v0 ^ v1) - 0x7AB632582EE425FALL;
  v4 = STACK[0xA48] - 0x2E0E6A44981922D7;
  v5 = v3 < 0x93C0D21D;
  v6 = v3 > v4;
  if (v5 != v4 < 0x93C0D21D)
  {
    v6 = v5;
  }

  return (*(v2 + 8 * ((13 * !v6) ^ (LODWORD(STACK[0x31C]) - 7200))))(3300551070);
}

uint64_t sub_2448F8E50@<X0>(unint64_t a1@<X8>)
{
  v5 = STACK[0x800];
  STACK[0x500] = a1;
  LODWORD(STACK[0x85C]) = v1;
  return (*(v4 + 8 * (((v5 + v2 == 0) * (v3 - 17273 + ((v3 + 9668) | 0x680))) ^ v3)))();
}

uint64_t sub_2448F8E9C()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x1B1F)))(LODWORD(STACK[0x85C]) ^ 0xE262009 ^ ((v0 - 8570) | 0x1680u));
  v3 = STACK[0x320];
  STACK[0xA58] = v2 + 0x3E0DD92B1DE16FEALL;
  if (v2)
  {
    v4 = 1216124116;
  }

  else
  {
    v4 = 1216081107;
  }

  LODWORD(STACK[0xA64]) = v4;
  return (*(v3 + 8 * (((v2 == 0) * ((v0 ^ 0x44B9) - 1170)) ^ v0)))();
}

uint64_t sub_2448F8F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v32 = v30 - ((2 * v30) & 0xAD076CC) + 90717030;
  v33 = (2 * v32) & 0xBCF6DDCA ^ 0x8D054C8;
  return (*(v31 + 8 * (((2 * (v33 + (v29 ^ 0xDB136263 ^ v32) + 771620320 != 209284293)) | (4 * (v33 + (v29 ^ 0xDB136263 ^ v32) + 771620320 != 209284293))) ^ (v29 - 6085))))(a1, v29 ^ 0xDB136263 ^ v32, v33, a4, v33 + (v29 ^ 0xDB136263 ^ v32) + 771620320, a6, a7, 0x8DBE49DF8B3EC60ALL, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29);
}

uint64_t sub_2448F8FFC(unint64_t a1, int a2, int a3)
{
  v7 = a3 + a2 + 562336027 < (v3 ^ 0x4CFFu) + 2 || v4 - a1 < ((1764 * (v3 ^ 0x4CFFu)) ^ 0x2948uLL);
  v8 = *(v5 + 8 * ((454 * v7) ^ v3));
  STACK[0x310] = a1;
  return v8();
}

uint64_t sub_2448F914C@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, unint64_t a6@<X6>, unint64_t a7@<X7>, unint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  LODWORD(a33) = a5;
  v49 = v40;
  v50 = *(v48 + 8 * ((v39 - 1344031662) ^ 0xAFE3DCC2 ^ (((v39 - 1344031662) > 0x1610804C) * ((v39 - 1464) ^ 0x168))));
  LODWORD(a32) = v38 & 0xFFFFFFF0;
  LODWORD(a35) = a2;
  LODWORD(a34) = a3;
  *&STACK[0x2F0] = vdupq_n_s64(0x89AC0027BB50EB7ELL);
  *&STACK[0x300] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v51 = a2 + a3 + a4;
  *&STACK[0x2D0] = vdupq_n_s64(0x7653FFD844AF1481uLL);
  *&STACK[0x2E0] = vdupq_n_s64(v49);
  v63 = vdupq_n_s64(v46);
  v64 = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
  v61 = vdupq_n_s64(a7);
  v62 = vdupq_n_s64(v47);
  *&STACK[0x2B0] = vdupq_n_s64(v42);
  *&STACK[0x2C0] = vdupq_n_s64(v44);
  v60 = vdupq_n_s64(v41);
  *&STACK[0x290] = vdupq_n_s64(0x9085EC444E5742A3);
  *&STACK[0x2A0] = vdupq_n_s64(a8);
  *&STACK[0x270] = vdupq_n_s64(a6);
  *&STACK[0x280] = vdupq_n_s64(v45);
  *&STACK[0x250] = vdupq_n_s64(0x3098A71738BBE723uLL);
  *&STACK[0x260] = vdupq_n_s64(0xAD5AA633B9E64FC5);
  v58 = vdupq_n_s64(0x766965B073161301uLL);
  v59 = vdupq_n_s64(0x132D349F19D3D9FEuLL);
  *&STACK[0x230] = vdupq_n_s64(0xE4396F13D6615992);
  *&STACK[0x240] = vdupq_n_s64(0xD9BE212C6B4B997FLL);
  v57 = vdupq_n_s64(0x378D21D8533D4CDCuLL);
  *&STACK[0x220] = xmmword_245010D30;
  v52 = vdupq_n_s64(v43);
  v54 = vdupq_n_s64(0x786DC7100F7B7D2BuLL);
  v53 = vdupq_n_s64(0x737EE314D549F8A6uLL);
  v55 = vdupq_n_s64(0x38uLL);
  return v50((v51 + 7), (v51 + 2), (v51 + 3), (v51 + 4), (v51 + 5), (v51 + 6), 3806, 4294967280, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a1 - 15, a32, a33, a34, a35, a36, a37, a38, v54.i64[0], v54.i64[1], v53.i64[0], v53.i64[1], v57.i64[0], v57.i64[1], v58.i64[0], v58.i64[1], v59.i64[0], v59.i64[1], v52.i64[0], v52.i64[1], v60.i64[0], v60.i64[1], v61.i64[0], v61.i64[1], v62.i64[0], v62.i64[1], v63.i64[0], v63.i64[1], v64.i64[0], v64.i64[1], v55.i64[0], v55.i64[1]);
}

uint64_t sub_2448FA178()
{
  v7 = *(v6 + 8 * v0);
  *&STACK[0x2E0] = vdupq_n_s64(0x38uLL);
  *&STACK[0x2F0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x2C0] = vdupq_n_s64(v2);
  *&STACK[0x2D0] = vdupq_n_s64(0x89AC0027BB50EB7ELL);
  LODWORD(STACK[0x250]) = v1 & 0xFFFFFFF8;
  *&STACK[0x2A0] = vdupq_n_s64(v3);
  *&STACK[0x2B0] = vdupq_n_s64(0x7653FFD844AF1481uLL);
  *&STACK[0x280] = vdupq_n_s64(v4);
  *&STACK[0x290] = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
  *&STACK[0x270] = vdupq_n_s64(v5);
  *&STACK[0x260] = xmmword_245010D40;
  return v7();
}

uint64_t sub_2448FA338(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  v33 = (v14 + v9 + 8);
  v34.i64[0] = v13 + (a4 + v9 + 8);
  v34.i64[1] = v13 + (a3 + v9 + 8);
  v35.i64[0] = v13 + (a6 + v9 + 8);
  v35.i64[1] = v13 + (a5 + v9 + 8);
  v36.i64[0] = v13 + v33;
  v36.i64[1] = v13 + (v15 + v9 + 8);
  v37.i64[0] = v13 + (a2 + v9 + v10 + 8);
  v37.i64[1] = v13 + (v11 + v9 + 8);
  v38 = STACK[0x320];
  v39 = vandq_s8(v36, *&STACK[0x2F0]);
  v40 = vandq_s8(v35, *&STACK[0x2F0]);
  v41 = vandq_s8(v37, *&STACK[0x2F0]);
  v42 = vandq_s8(v34, *&STACK[0x2F0]);
  v43 = vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL);
  v44 = vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL);
  v45 = vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL);
  v46 = vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL);
  v48 = *&STACK[0x2C0];
  v47 = *&STACK[0x2D0];
  v49 = vaddq_s64(v45, *&STACK[0x2D0]);
  v50 = vaddq_s64(v44, *&STACK[0x2D0]);
  v52 = *&STACK[0x2A0];
  v51 = *&STACK[0x2B0];
  *&STACK[0x300] = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x2B0], v46), *&STACK[0x2A0]), vorrq_s8(vaddq_s64(v46, *&STACK[0x2D0]), *&STACK[0x2C0]));
  v53 = vaddq_s64(vorrq_s8(vsubq_s64(v51, v45), v52), vorrq_s8(v49, v48));
  v54 = vaddq_s64(vorrq_s8(vsubq_s64(v51, v44), v52), vorrq_s8(v50, v48));
  v55 = vsubq_s64(*&STACK[0x290], vaddq_s64(vorrq_s8(vsubq_s64(v51, v43), v52), vorrq_s8(vaddq_s64(v43, v47), v48)));
  v56 = vsubq_s64(*&STACK[0x290], v54);
  v57 = veorq_s8(v56, *&STACK[0x280]);
  v58 = veorq_s8(v55, *&STACK[0x280]);
  v59 = veorq_s8(v55, *&STACK[0x270]);
  v60 = veorq_s8(v56, *&STACK[0x270]);
  v61 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v59), v18);
  v62 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL), v60), v18);
  v63 = veorq_s8(v62, vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL));
  v64 = veorq_s8(v61, vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL));
  v65 = vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL);
  v66 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL), v64);
  v67 = vaddq_s64(v65, v63);
  v68 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v67, v67), v19), v67), v20), v21);
  v69 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v66, v66), v19), v66), v20), v21);
  v70 = vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL);
  v71 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL));
  v72 = veorq_s8(v68, v70);
  v73 = vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL);
  v74 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v72);
  v75 = vaddq_s64(v73, v71);
  v76 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v74, v22), vorrq_s8(v74, v23)), v23), v24);
  v77 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v75, v22), vorrq_s8(v75, v23)), v23), v24);
  v78 = veorq_s8(v77, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v79 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v80 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL), v79);
  v81 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), v78);
  v82 = veorq_s8(vaddq_s64(vsubq_s64(v81, vandq_s8(vaddq_s64(v81, v81), v25)), v26), v27);
  v83 = veorq_s8(vaddq_s64(vsubq_s64(v80, vandq_s8(vaddq_s64(v80, v80), v25)), v26), v27);
  v84 = vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL);
  v85 = veorq_s8(v83, vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL));
  v86 = veorq_s8(v82, v84);
  v87 = vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL);
  v88 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v86);
  v89 = veorq_s8(vaddq_s64(v87, v85), v28);
  v90 = vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL);
  v91 = veorq_s8(v88, v28);
  v92 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL));
  v93 = veorq_s8(v89, v90);
  v94 = vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL);
  v95 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v93);
  v96 = vaddq_s64(v94, v92);
  v97 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v96, v96), v29), v96), v30), v31);
  v98 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v95, v95), v29), v95), v30), v31);
  v99 = vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL);
  v100 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v101 = veorq_s8(v97, v99);
  v102 = vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL);
  v103 = vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL);
  v104 = vsubq_s64(*&STACK[0x290], v53);
  v105 = vaddq_s64(v103, v101);
  v106 = vaddq_s64(v102, v100);
  v145.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v105, v105), v32), v105), v16), v17), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), *&STACK[0x2E0])));
  v145.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v106, v106), v32), v106), v16), v17), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), *&STACK[0x2E0])));
  v107 = veorq_s8(v104, *&STACK[0x280]);
  v108 = veorq_s8(v104, *&STACK[0x270]);
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108), v18);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110);
  v112 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v111, v111), v19), v111), v20), v21);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113);
  v115 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v114, v22), vorrq_s8(v114, v23)), v23), v24);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v117 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116);
  v118 = veorq_s8(vaddq_s64(vsubq_s64(v117, vandq_s8(vaddq_s64(v117, v117), v25)), v26), v27);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v120 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119), v28);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v122 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121);
  v123 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v122, v122), v29), v122), v30), v31);
  v124 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL)));
  v125 = vsubq_s64(*&STACK[0x290], *&STACK[0x300]);
  v145.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v124, v124), v32), v124), v16), v17), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), *&STACK[0x2E0])));
  v126 = veorq_s8(v125, *&STACK[0x280]);
  v127 = veorq_s8(v125, *&STACK[0x270]);
  v128 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v127), v18);
  v129 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL));
  v130 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v129);
  v131 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v130, v130), v19), v130), v20), v21);
  v132 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v133 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v132);
  v134 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v133, v22), vorrq_s8(v133, v23)), v23), v24);
  v135 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v136 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v135);
  v137 = veorq_s8(vaddq_s64(vsubq_s64(v136, vandq_s8(vaddq_s64(v136, v136), v25)), v26), v27);
  v138 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v139 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), v138), v28);
  v140 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v141 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), v140);
  v142 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v141, v141), v29), v141), v30), v31);
  v143 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL), veorq_s8(v142, vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL)));
  v145.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v143, v143), v32), v143), v16), v17), vnegq_s64(vandq_s8(vshlq_n_s64(v37, 3uLL), *&STACK[0x2E0])));
  *(v7 + v33) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(*(v13 + v33 - 7)), 0x5D5D5D5D5D5D5D5DLL), *&vqtbl4q_s8(v145, *&STACK[0x260])));
  return (*(v38 + 8 * (((v8 == v9) * v12) ^ v6)))();
}

uint64_t sub_2448FAAC4@<X0>(int a1@<W1>, uint64_t a2@<X6>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v22 = (v4 + v8);
  v23 = __ROR8__((v14 + v22) & 0xFFFFFFFFFFFFFFF8, 8);
  v24 = v10 - (((v6 - v23) | v17) + ((v23 + v9) | v12));
  v25 = v24 ^ v19;
  v26 = v24 ^ v20;
  v27 = (__ROR8__(v25, 8) + v26) ^ a3;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = ((v13 | (2 * (v29 + v28))) - (v29 + v28) + v15) ^ v16;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = __ROR8__(v30, 8);
  v33 = __ROR8__((v5 - ((v32 + v31) | v5) + ((v32 + v31) | a4)) ^ 0x9085EC444E5742A3, 8);
  v34 = (v5 - ((v32 + v31) | v5) + ((v32 + v31) | a4)) ^ 0x9085EC444E5742A3 ^ __ROR8__(v31, 61);
  v35 = (v33 + v34 - (v18 & (2 * (v33 + v34))) + a2) ^ 0xAD5AA633B9E64FC5;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0x3098A71738BBE723;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (((2 * (v39 + v38)) | 0x132D349F19D3D9FELL) - (v39 + v38) + 0x766965B073161301) ^ 0xD9BE212C6B4B997FLL;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = __ROR8__(v40, 8);
  *(STACK[0x310] + v22) = *(v14 + v22) ^ v11 ^ (((((2 * (v42 + v41)) | 0x378D21D8533D4CDCLL) - (v42 + v41) - 0x1BC690EC299EA66ELL) ^ 0x737EE314D549F8A6) >> (8 * ((v14 + v4 + v8) & 7)));
  return (*(v21 + 8 * (((v4 != 209284294) * a1) ^ v7)))();
}

uint64_t sub_2448FAC80(uint64_t a1, uint64_t a2)
{
  v3 = 11 * (LODWORD(STACK[0x31C]) ^ 0x379B);
  v4 = LODWORD(STACK[0x31C]) - 214048760;
  STACK[0x618] = STACK[0xA78];
  return (*(v2 + 8 * (v4 ^ 0xF33E3B55 ^ ((v4 > 0xF8AD45BD) * (v3 + 28641)))))(a1, a2, LODWORD(STACK[0xA84]));
}

uint64_t sub_2448FAD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = STACK[0xA20] + (v6 ^ v7) - 0x7AE95E9FB799DDF1;
  v10 = STACK[0xA18] - 0xE5F07BB68B7C3F7;
  v11 = v9 < 0x6F6B382;
  v12 = v9 > v10;
  if (v11 != v10 < 0x6F6B382)
  {
    v12 = v11;
  }

  return (*(v8 + 8 * ((4091 * !v12) ^ (LODWORD(STACK[0x31C]) - 12281))))(a1, a2, 1216081110, a4, a5, a6, 1647873780);
}

uint64_t sub_2448FAEC8@<X0>(unint64_t a1@<X8>)
{
  v5 = STACK[0x3E0];
  STACK[0x6A8] = a1;
  LODWORD(STACK[0x694]) = v1;
  STACK[0x508] = v5 + v2;
  return (*(v4 + 8 * ((4371 * (*(STACK[0x5C8] - 0x6286B82630F8F1B0) & (LODWORD(STACK[0x6FC]) != (v3 ^ 0x367) - 31207 + ((v3 - 13216) | 0x2100)))) ^ v3)))();
}

uint64_t sub_2448FAF40(uint64_t a1, uint64_t a2)
{
  v5 = *(v3 - 0x6286B82630F8F22CLL);
  STACK[0x5F8] = 0x750C1ABFB0567FDBLL;
  STACK[0x6E0] = 0x3A3A7B0303FB832DLL;
  return (*(v4 + 8 * (((v5 == 0x146375EC570BCC2FLL) * (v2 - 32379 + ((v2 - 17495) | 0x3560))) ^ v2)))(a1, a2, 1216081105);
}

uint64_t sub_2448FAFD4@<X0>(unint64_t a1@<X8>)
{
  STACK[0x7D8] = a1;
  LODWORD(STACK[0x4B4]) = -149197095;
  STACK[0x898] = &STACK[0x5F8];
  LODWORD(STACK[0x41C]) = -971252008;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_2448FB02C()
{
  v3 = STACK[0xA10] + (v0 ^ v1) - 0x4186ACCF70EAD41ALL;
  v4 = ((LODWORD(STACK[0x31C]) - 1052529129) & 0x3EBC3BE8 ^ 0xA7D5FB0B396FE012) + STACK[0xA08];
  v5 = v3 < 0x5F52B833;
  v6 = v3 > v4;
  if (v5 != v4 < 0x5F52B833)
  {
    v6 = v5;
  }

  return (*(v2 + 8 * ((251 * !v6) ^ (LODWORD(STACK[0x31C]) - 1653))))();
}

uint64_t sub_2448FB2A4()
{
  v2 = LODWORD(STACK[0x31C]) - 4782;
  LODWORD(STACK[0x4E4]) = v0;
  return (*(v1 + 8 * v2))();
}

uint64_t sub_2448FB2E0()
{
  v2 = STACK[0x31C];
  LODWORD(STACK[0x514]) = v0;
  return (*(v1 + 8 * (v2 - 8561)))(1569933550);
}

uint64_t sub_2448FB324()
{
  v2 = LODWORD(STACK[0x31C]) - 4876;
  LODWORD(STACK[0x8B4]) = v0;
  LODWORD(STACK[0x310]) = LOWORD(STACK[0x98E]);
  return (*(v1 + 8 * v2))(3300551070);
}

uint64_t sub_2448FB35C()
{
  v2 = LODWORD(STACK[0x31C]) - 4442;
  LODWORD(STACK[0x88C]) = v0;
  LODWORD(STACK[0x300]) = LOWORD(STACK[0x9AE]);
  return (*(v1 + 8 * v2))(3300551070);
}

uint64_t sub_2448FB3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = STACK[0xA30] + (v6 ^ v7) - 0x3A3A7B022E11DCBCLL;
  v10 = STACK[0xA28] - 0x213B8933F06A9E57;
  v11 = v9 < 0xD5E9A667;
  v12 = v9 > v10;
  if (v11 != v10 < 0xD5E9A667)
  {
    v12 = v11;
  }

  return (*(v8 + 8 * ((32706 * v12) ^ (LODWORD(STACK[0x31C]) + 2016))))(a1, a2, 1216081110, a4, a5, a6, 1647873780);
}

uint64_t sub_2448FB53C()
{
  v2 = STACK[0x31C];
  LODWORD(STACK[0x660]) = v0;
  return (*(v1 + 8 * (v2 - 4389)))();
}

uint64_t sub_2448FB570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = STACK[0xA40] + (v6 ^ v7) - 0x31D67741283EEDFBLL;
  v10 = STACK[0xA38] - 0x7E8936057458B719;
  v11 = v9 < 0xFC46401F;
  v12 = v9 > v10;
  if (v11 != v10 < 0xFC46401F)
  {
    v12 = v11;
  }

  return (*(v8 + 8 * ((50 * v12) ^ (LODWORD(STACK[0x31C]) + 1341))))(a1, a2, 1216081110, a4, a5, a6, 1647873780);
}

uint64_t sub_2448FB718()
{
  v2 = STACK[0x31C];
  LODWORD(STACK[0x600]) = v0;
  return (*(v1 + 8 * (v2 - 10736)))();
}

uint64_t sub_2448FB8F0@<X0>(int a1@<W8>)
{
  v3 = a1 + 18352;
  *STACK[0x630] = (v3 - 6336) ^ (v1 + 2080) ^ LODWORD(STACK[0x4E4]);
  return (*(v2 + 8 * v3))();
}

uint64_t sub_2448FBC64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 - 0x58FA20369C313A5ELL) = STACK[0x7A4];
  *(a3 + v4) = ((v3 + 237367412) ^ v5) + 237377513 - ((2 * ((v3 + 237367412) ^ v5) + 2) & 0x1C4C2FD2) + 1;
  return (*(v6 + 8 * v3))(a1, a2, 1216124116);
}

uint64_t sub_2448FBF00@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v65 = (a64 - 0x35FC38389A91BCACLL + STACK[0x4E8]);
  v66 = v65 + 13;
  v67 = __ROR8__((v65 + 6) & 0xFFFFFFFFFFFFFFF8, 8);
  v68 = (0x7653FFD844AF1481 - v67) & 0xB55F80C7BE1258C6 | (v67 + 0x9AC0027BB50EB7ELL) & ((894 * (a1 ^ 0x167Fu)) ^ 0x4AA07F3841ED90D9);
  v69 = v68 ^ 0x79151616AAB9A54;
  v68 ^= 0x4AF1505CB02CC1A0uLL;
  v70 = (__ROR8__(v69, 8) + v68) ^ 0x8DBE49DF8B3EC60ALL;
  v71 = __ROR8__(v70, 8);
  v72 = v70 ^ __ROR8__(v68, 61);
  v73 = (((v71 + v72) | 0x32D0D64D4270688ELL) - ((v71 + v72) | 0xCD2F29B2BD8F9771) - 0x32D0D64D4270688FLL) ^ 0x73F88A156FEBEE07;
  v74 = __ROR8__(v73, 8);
  v75 = v73 ^ __ROR8__(v72, 61);
  v76 = (((2 * (v74 + v75)) | 0x562CC8E4F1BBEDCCLL) - (v74 + v75) - 0x2B16647278DDF6E6) ^ 0x3C01B0D9C60E3691;
  v77 = v76 ^ __ROR8__(v75, 61);
  v78 = (__ROR8__(v76, 8) + v77) ^ 0xEC888CBFDF3BD3D0;
  v79 = v78 ^ __ROR8__(v77, 61);
  v80 = __ROR8__(v78, 8);
  v81 = (((v80 + v79) | 0x266D8F709B2661D1) - ((v80 + v79) | 0xD992708F64D99E2ELL) - 0x266D8F709B2661D2) ^ 0x16F52867A39D86F2;
  v82 = v81 ^ __ROR8__(v79, 61);
  v83 = __ROR8__(v81, 8);
  v84 = (((v83 + v82) | 0xFE7D31885E37F5C1) - ((v83 + v82) | 0x182CE77A1C80A3ELL) + 0x182CE77A1C80A3ELL) ^ 0xAE558AEBB9958041;
  v85 = v84 ^ __ROR8__(v82, 61);
  v86 = __ROR8__(v84, 8);
  LODWORD(v85) = (((v86 + v85 - ((2 * (v86 + v85)) & 0x8951FAF1706958CALL) + 0x44A8FD78B834AC65) ^ 0x2C108E8044E3F2ADLL) >> (8 * ((a64 + 84 + LOBYTE(STACK[0x4E8]) + 6) & 7))) ^ v65[6];
  v87 = (((v85 - ((2 * v85) & 0x72) + 248) << 56) - 0x3F00000000000000) ^ 0xB900000000000000;
  v88 = __ROR8__((v65 + 7) & 0xFFFFFFFFFFFFFFF8, 8) - 0x7653FFD844AF1482;
  v89 = __ROR8__(v88 ^ 0xB2CED1A6D4B9C292, 8);
  v88 ^= 0xFFAED09B0E3E9966;
  v90 = (((2 * (v89 + v88)) | 0xD7FAD21042F2E9F6) - (v89 + v88) - 0x6BFD6908217974FBLL) ^ 0xE64320D7AA47B2F1;
  v91 = v90 ^ __ROR8__(v88, 61);
  v92 = __ROR8__(v90, 8);
  v93 = (((v92 + v91) | 0x3A2808815C23D964) - ((v92 + v91) | 0xC5D7F77EA3DC269BLL) - 0x3A2808815C23D965) ^ 0x7B0054D971B85FEDLL;
  v94 = v93 ^ __ROR8__(v91, 61);
  v95 = (__ROR8__(v93, 8) + v94) ^ 0x1717D4ABBED3C077;
  v96 = v95 ^ __ROR8__(v94, 61);
  v97 = __ROR8__(v95, 8);
  v98 = (((2 * ((v97 + v96) ^ 0xD408842FB46A4E43)) & 0x440D90F0109BC5F4) - ((v97 + v96) ^ 0xD408842FB46A4E43) - 0x2206C878084DE2FBLL) ^ 0xE5793F179CE38096;
  v99 = v98 ^ __ROR8__(v96, 61);
  v100 = (__ROR8__(v98, 8) + v99) ^ 0x3098A71738BBE723;
  v101 = v100 ^ __ROR8__(v99, 61);
  v102 = (__ROR8__(v100, 8) + v101) ^ 0x5028BB63E7A27580;
  v103 = v102 ^ __ROR8__(v101, 61);
  v104 = __ROR8__(v102, 8);
  v105 = (((((((v104 + v103) ^ 0x68B873F8FCD75EC8uLL) >> (8 * ((v66 - 6) & 7u))) ^ *(v66 - 6)) - ((2 * ((((v104 + v103) ^ 0x68B873F8FCD75EC8uLL) >> (8 * ((v66 - 6) & 7u))) ^ *(v66 - 6))) & 0x36) + 7714) << 48) - 0x7000000000000) ^ 0x1E1B000000000000;
  v106 = (v87 - ((2 * v87) & 0x3400000000000000) + 0x1AFDFF6CEB6F6797) ^ 0x1AFDFF6CEB6F6797 | (v105 - ((2 * v105) & 0xD3A000000000000) + 0x69DEA13325AFA26) ^ 0x69DEA13325AFA26;
  v107 = __ROR8__((v65 + 8) & 0xFFFFFFFFFFFFFFF8, 8);
  v108 = ((2 * (v107 - 0x7653FFD844AF1482)) | 0x57766318D8555E06) - (v107 - 0x7653FFD844AF1482) - 0x2BBB318C6C2AAF03;
  v109 = __ROR8__(v108 ^ 0x9975E02AB8936D91, 8);
  v108 ^= 0xD415E11762143665;
  v110 = (v109 + v108) ^ 0x8DBE49DF8B3EC60ALL;
  v111 = v110 ^ __ROR8__(v108, 61);
  v112 = __ROR8__(v110, 8);
  v113 = (v112 + v111 - ((2 * (v112 + v111)) & 0x178196D87B910AFELL) + 0xBC0CB6C3DC8857FLL) ^ 0x4AE89734105303F6;
  v114 = v113 ^ __ROR8__(v111, 61);
  v115 = (__ROR8__(v113, 8) + v114) ^ 0x1717D4ABBED3C077;
  v116 = v115 ^ __ROR8__(v114, 61);
  v117 = (__ROR8__(v115, 8) + v116) ^ 0xEC888CBFDF3BD3D0;
  v118 = v117 ^ __ROR8__(v116, 61);
  v119 = (__ROR8__(v117, 8) + v118) ^ 0x3098A71738BBE723;
  v120 = v119 ^ __ROR8__(v118, 61);
  v121 = __ROR8__(v119, 8);
  v122 = (((2 * (v121 + v120)) & 0x1A9298E04E50232ELL) - (v121 + v120) + 0x72B6B38FD8D7EE68) ^ 0x229E08EC3F759BE8;
  v123 = __ROR8__(v122, 8);
  v124 = __ROR8__(v120, 61);
  v125 = (((((((v123 + (v122 ^ v124)) ^ 0x68B873F8FCD75EC8uLL) >> (8 * ((v66 - 5) & 7u))) ^ *(v66 - 5)) - ((2 * ((((v123 + (v122 ^ v124)) ^ 0x68B873F8FCD75EC8uLL) >> (8 * ((v66 - 5) & 7u))) ^ *(v66 - 5))) & 0x36) + 8426327) << 40) - 0x3C0000000000) ^ 0x80931B0000000000;
  v126 = (v106 - ((2 * v106) & 0xC5C7542C082005ALL) - 0x79D1C55E9FBEFFD3) ^ 0x862E3AA16041002DLL | (v125 - ((2 * v125) & 0x3B8D840000000000) + 0x5DC6C2ECF9DE3A52) ^ 0x5DC6C2ECF9DE3A52;
  v127 = __ROR8__((v65 + 9) & 0xFFFFFFFFFFFFFFF8, 8);
  v128 = (v127 - 0x7653FFD844AF1482) ^ 0xFFAED09B0E3E9966;
  v129 = (__ROR8__((v127 - 0x7653FFD844AF1482) ^ 0xB2CED1A6D4B9C292, 8) + v128) ^ 0x8DBE49DF8B3EC60ALL;
  v130 = v129 ^ __ROR8__(v128, 61);
  v131 = (__ROR8__(v129, 8) + v130) ^ 0x41285C582D9B8689;
  v132 = v131 ^ __ROR8__(v130, 61);
  v133 = __ROR8__(v131, 8);
  v134 = (v133 + v132 - ((2 * (v133 + v132)) & 0x178B388C2E3B00A6) + 0xBC59C46171D8053) ^ 0x1CD248EDA9CE4024;
  v135 = v134 ^ __ROR8__(v132, 61);
  v136 = __ROR8__(v134, 8);
  v137 = (((2 * (v136 + v135)) | 0x630BB4B9EEC52676) - (v136 + v135) + 0x4E7A25A3089D6CC5) ^ 0x5D0D56E3285940EBLL;
  v138 = v137 ^ __ROR8__(v135, 61);
  v139 = (__ROR8__(v137, 8) + v138) ^ 0x3098A71738BBE723;
  v140 = v139 ^ __ROR8__(v138, 61);
  v141 = (__ROR8__(v139, 8) + v140) ^ 0x5028BB63E7A27580;
  v142 = v141 ^ __ROR8__(v140, 61);
  v143 = __ROR8__(v141, 8);
  v144 = (((((2 * (v143 + v142)) & 0xDD2F4BB1125BA10ALL) - (v143 + v142) + 0x11685A2776D22F7ALL) ^ 0x79D029DF8A0571B2) >> (8 * ((a64 + 84 + LOBYTE(STACK[0x4E8]) + 9) & 7))) ^ v65[9];
  v145 = (((~(2 * v144) | 0xFFFFFF2D) + v144 - 1358946198) << 32) ^ 0xAF00206900000000;
  v146 = (v126 - ((2 * v126) & 0x311FD92E949EB106) - 0x67701368B5B0A77DLL) ^ 0x988FEC974A4F5883 | (v145 - ((2 * v145) & 0x56DE00000000) - 0x624A94900DDC5735) ^ 0x9DB56B6FF223A8CBLL;
  v147 = __ROR8__((v65 + 10) & 0xFFFFFFFFFFFFFFF8, 8) - 0x7653FFD844AF1482;
  v148 = __ROR8__(v147 ^ 0xB2CED1A6D4B9C292, 8);
  v147 ^= 0xFFAED09B0E3E9966;
  v149 = (v148 + v147) ^ 0x8DBE49DF8B3EC60ALL;
  v150 = v149 ^ __ROR8__(v147, 61);
  v151 = __ROR8__(v149, 8);
  v152 = (((v151 + v150) | 0x2AABDA015CBFF13FLL) - ((v151 + v150) | 0xD55425FEA3400EC0) - 0x2AABDA015CBFF140) ^ 0x6B838659712477B6;
  v153 = v152 ^ __ROR8__(v150, 61);
  v154 = (__ROR8__(v152, 8) + v153) ^ 0x1717D4ABBED3C077;
  v155 = v154 ^ __ROR8__(v153, 61);
  v156 = (__ROR8__(v154, 8) + v155) ^ 0xEC888CBFDF3BD3D0;
  v157 = v156 ^ __ROR8__(v155, 61);
  v158 = (__ROR8__(v156, 8) + v157) ^ 0x3098A71738BBE723;
  v159 = v158 ^ __ROR8__(v157, 61);
  v160 = (__ROR8__(v158, 8) + v159) ^ 0x5028BB63E7A27580;
  v161 = v160 ^ __ROR8__(v159, 61);
  v162 = __ROR8__(v160, 8);
  v163 = (((((((((2 * (v162 + v161)) | 0x5AE51A94776BB02ELL) - (v162 + v161) + 0x528D72B5C44A27E9) ^ 0xC5CAFEB2C76286DFLL) >> (8 * ((v66 - 3) & 7u))) ^ *(v66 - 3)) - ((2 * ((((((2 * (v162 + v161)) | 0x5AE51A94776BB02ELL) - (v162 + v161) + 0x528D72B5C44A27E9) ^ 0xC5CAFEB2C76286DFLL) >> (8 * ((v66 - 3) & 7u))) ^ *(v66 - 3))) & 0x12ELL)) << 24) - 0x5880801B69000000) ^ 0xA77F7FE497000000;
  v164 = (v146 - ((2 * v146) & 0x2678A5D1C62DCC80) + 0x133C52E8E316E640) ^ 0x133C52E8E316E640 | (v163 - ((2 * v163) & 0x173C036D12000000) + 0xB9E01B689F783ACLL) ^ 0xB9E01B689F783ACLL;
  v165 = v164 - ((2 * v164) & 0xA81A98E1C9DEAB4ELL);
  v166 = __ROR8__((v65 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v167 = ((0x7653FFD844AF1481 - v166) & 0xB30B0E04CEBC8992) + v166 - 0x7653FFD844AF1482 - ((v166 - 0x7653FFD844AF1482) & 0xB30B0E04CEBC8992);
  v168 = v167 ^ 0x1C5DFA21A054B00;
  v167 ^= 0x4CA5DE9FC08210F4uLL;
  v169 = (__ROR8__(v168, 8) + v167) ^ 0x8DBE49DF8B3EC60ALL;
  v170 = v169 ^ __ROR8__(v167, 61);
  v171 = __ROR8__(v169, 8);
  v172 = (((2 * (v171 + v170)) & 0x3F33FA72E4ED7622) - (v171 + v170) + 0x606602C68D8944EELL) ^ 0x214E5E9EA012C267;
  v173 = v172 ^ __ROR8__(v170, 61);
  v174 = (__ROR8__(v172, 8) + v173) ^ 0x1717D4ABBED3C077;
  v175 = __ROR8__(v174, 8);
  v176 = v174 ^ __ROR8__(v173, 61);
  v177 = (v175 + v176 - ((2 * (v175 + v176)) & 0x1E478AE932743620) + 0xF23C574993A1B10) ^ 0xE3AB49CB4601C8C0;
  v178 = v177 ^ __ROR8__(v176, 61);
  v179 = (__ROR8__(v177, 8) + v178) ^ 0x3098A71738BBE723;
  v180 = v179 ^ __ROR8__(v178, 61);
  v181 = __ROR8__(v179, 8);
  v182 = (((2 * (v181 + v180)) & 0x55781032AF4E8526) - (v181 + v180) - 0x2ABC081957A74294) ^ 0x856B4C854FFAC8ECLL;
  v183 = v182 ^ __ROR8__(v180, 61);
  v184 = __ROR8__(v182, 8);
  v185 = (((((((v184 + v183) ^ 0x68B873F8FCD75EC8) >> (8 * ((v66 - 2) & 7u))) ^ *(v66 - 2)) - ((2 * ((((v184 + v183) ^ 0x68B873F8FCD75EC8) >> (8 * ((v66 - 2) & 7u))) ^ *(v66 - 2))) & 0x15ELL)) << 16) + 0x30A78F5762AF0000) ^ 0x30A78F5762AF0000;
  v186 = (v165 - 0x2BF2B38F1B10AA59) ^ 0xD40D4C70E4EF55A7 | (v185 - ((2 * v185) & 0x3CB82722D9E20000) - 0x61A3EC6E930EB5C6) ^ 0x9E5C13916CF14A3ALL;
  v187 = __ROR8__((v65 + 12) & 0xFFFFFFFFFFFFFFF8, 8);
  v188 = ((0x7653FFD844AF1481 - v187) & 0x529ADAA51514455CLL) + v187 - 0x7653FFD844AF1482 - ((v187 - 0x7653FFD844AF1482) & 0x529ADAA51514455CLL);
  v189 = v188 ^ 0xE0540B03C1AD87CELL;
  v188 ^= 0xAD340A3E1B2ADC3ALL;
  v190 = __ROR8__(v189, 8);
  v191 = (((v190 + v188) | 0x7DB19439D5F1CCCCLL) - ((v190 + v188) | 0x824E6BC62A0E3333) - 0x7DB19439D5F1CCCDLL) ^ 0xF00FDDE65ECF0AC6;
  v192 = v191 ^ __ROR8__(v188, 61);
  v193 = __ROR8__(v191, 8);
  v194 = (((v193 + v192) & 0x788A5C50FF477F5FLL ^ 0x882404046034B0BLL) + ((v193 + v192) & 0x8775A3AF00B880A0 ^ 0x8175010600388081) - 1) ^ 0xC8DF1D1E6BA04D02;
  v195 = v194 ^ __ROR8__(v192, 61);
  v196 = (__ROR8__(v194, 8) + v195) ^ 0x1717D4ABBED3C077;
  v197 = v196 ^ __ROR8__(v195, 61);
  v198 = __ROR8__(v196, 8);
  v199 = (((2 * (v198 + v197)) | 0x75FF21A51885509ELL) - (v198 + v197) - 0x3AFF90D28C42A84FLL) ^ 0xD6771C6D53797B9FLL;
  v200 = v199 ^ __ROR8__(v197, 61);
  v201 = __ROR8__(v199, 8);
  v202 = (((2 * (v201 + v200)) | 0x5CA5DE9B2A16C314) - (v201 + v200) - 0x2E52EF4D950B618ALL) ^ 0x1ECA485AADB086A9;
  v203 = v202 ^ __ROR8__(v200, 61);
  v204 = __ROR8__(v202, 8);
  v205 = (((v204 + v203) | 0xACFB152F5E235A2ALL) - ((v204 + v203) | 0x5304EAD0A1DCA5D5) + 0x5304EAD0A1DCA5D5) ^ 0xFCD3AE4CB9812FAALL;
  LODWORD(v66) = (((__ROR8__(v205, 8) + (v205 ^ __ROR8__(v203, 61))) ^ 0x68B873F8FCD75EC8) >> (8 * ((a64 + 84 + LOBYTE(STACK[0x4E8]) + 12) & 7))) ^ v65[12];
  v206 = (((v66 - ((2 * v66) & 0xD8)) << 8) + 0x656F4C2EF9FB6C00) ^ 0x656F4C2EF9FB6C00;
  v207 = (v186 - ((2 * v186) & 0xAB50CDA986396698) - 0x2A57992B3CE34CB4) ^ 0xD5A866D4C31CB34CLL | (v206 - ((2 * v206) & 0x4D0D95807EF16400) + 0x2686CAC03F78B2CELL) ^ 0x2686CAC03F78B2CELL;
  v208 = __ROR8__((v65 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v209 = v208 - ((2 * v208 + 0x1358004F76A1D6FCLL) & 0x41AF948D421BCAB4) + 0x2E83CA6E5C5ED0D8;
  v210 = __ROR8__(v209 ^ 0x16191BE075B427C8, 8);
  v209 ^= 0x5B791ADDAF337C3CuLL;
  v211 = (v210 + v209) ^ 0x8DBE49DF8B3EC60ALL;
  v212 = v211 ^ __ROR8__(v209, 61);
  v213 = __ROR8__(v211, 8);
  v214 = (((2 * (v213 + v212)) & 0x55C06E2F00B4CAB4) - (v213 + v212) - 0x2AE03717805A655BLL) ^ 0x943794B0523E1C2CLL;
  v215 = v214 ^ __ROR8__(v212, 61);
  v216 = __ROR8__(v214, 8);
  v217 = (((2 * (v216 + v215)) | 0x9B94C29DE3853946) - (v216 + v215) + 0x32359EB10E3D635DLL) ^ 0xDADDB5E54F115CD4;
  v218 = v217 ^ __ROR8__(v215, 61);
  v219 = (__ROR8__(v217, 8) + v218) ^ 0xEC888CBFDF3BD3D0;
  v220 = v219 ^ __ROR8__(v218, 61);
  v221 = __ROR8__(v219, 8);
  v222 = (((2 * (v221 + v220)) | 0xF8965BD215354BBELL) - (v221 + v220) + 0x3B4D216F5655A21) ^ 0xCCD38AFE322142FCLL;
  v223 = v222 ^ __ROR8__(v220, 61);
  v224 = __ROR8__(v222, 8);
  v225 = (((v224 + v223) | 0xAE369C8CF25F2B72) - ((v224 + v223) | 0x51C963730DA0D48DLL) + 0x51C963730DA0D48DLL) ^ 0xFE1E27EF15FD5EF2;
  v226 = (((__ROR8__(v225, 8) + (v225 ^ __ROR8__(v223, 61))) ^ 0x68B873F8FCD75EC8) >> (8 * ((a64 + 84 + LOBYTE(STACK[0x4E8]) + 13) & 7))) ^ v65[13];
  v227 = (v207 - ((2 * v207) & 0x453D573D1F5CC204) - 0x5D61546170519EFELL) ^ 0xA29EAB9E8FAE6102 | (v226 - ((2 * v226) & 0x1FALL) - 0x655FB5C7BC995903) ^ 0x9AA04A384366A6FDLL;
  STACK[0x770] = v227 - 0x362BAD4AF6A55359 - ((2 * v227) & 0x93A8A56A12B5594ELL);
  return (*(v64 + 8 * a1))(1569933550);
}

uint64_t sub_2448FD0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x688] = STACK[0x958];
  LODWORD(STACK[0x684]) = STACK[0x94C];
  LOWORD(STACK[0x4F6]) = STACK[0x952];
  LODWORD(STACK[0x408]) = STACK[0x954];
  return (*(v7 + 8 * (v6 - 1283)))(a1, a2, 1216124116, a4, a5, a6, 1647873780);
}

uint64_t sub_2448FD1D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  STACK[0x530] = a3;
  LODWORD(STACK[0xB00]) = v5;
  LOWORD(STACK[0xB06]) = v4;
  v8 = STACK[0x408];
  LODWORD(STACK[0xB08]) = STACK[0x408];
  LODWORD(STACK[0xB0C]) = STACK[0x514];
  STACK[0xB10] = STACK[0x770];
  STACK[0x338] = STACK[0x4C0];
  v10 = a3 != v6 && (v8 ^ 0xE2617E8u) < 0xFFFFFFF6;
  return (*(v7 + 8 * ((v10 * (((2 * v3) ^ 0x2BF2) + 13583)) ^ v3)))(a1, a2, 1216081105);
}

uint64_t sub_2448FD244()
{
  v2 = v0 ^ 0x2FC5;
  v3 = 3 * (v0 ^ 0x14FB);
  v4 = 3195 * (v0 ^ 0x1EDD);
  v5 = (*(v1 + 8 * ((v0 ^ 0x2FC5) + 10409)))(32);
  v6 = STACK[0x320];
  STACK[0x328] = v5 + 0x750C1ABFB0567FDBLL;
  return (*(v6 + 8 * (((((v4 ^ (v5 == 0)) & 1) == 0) * (v3 - 7660)) ^ v2)))();
}

uint64_t sub_2448FD2D8(uint64_t a1)
{
  *a1 = 0x750C1ABFB0567FDBLL;
  *(a1 + 8) = 0x750C1ABFB0567FDBLL;
  v5 = v1 ^ 0xE2617E9u;
  STACK[0xB18] = v5;
  LODWORD(v5) = ((v5 + v2 - 4998 + ((v2 - 12204) | 0xC) - 8360) ^ 0x4FEB1E3F) - 1166018083 + ((2 * (v5 + v2 - 4998 + ((v2 - 12204) | 0xC) - 8360)) & 0x9FD63C7E);
  *(a1 + 16) = v5;
  v6 = (*(v3 + 8 * (v2 + 10201)))((v5 - 174790684));
  v7 = STACK[0x320];
  *(a1 + 24) = v6;
  return (*(v7 + 8 * (((4 * (v6 == 0)) | (16 * (v6 == 0))) ^ v2)))();
}

uint64_t sub_2448FD578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  LODWORD(STACK[0x828]) = a3;
  v5 = STACK[0x400];
  STACK[0x878] = STACK[0x400];
  return (*(v4 + 8 * (((v5 != 0x6286B82630F8F22CLL) * (((v3 ^ 0x776D) - 16476) ^ 0x29)) ^ (v3 + 3075))))(a1, a2, 1216081105);
}

uint64_t sub_2448FD5D4@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 - 0x6286B82630F8F224);
  STACK[0x790] = 0x750C1ABFB0567FDBLL;
  LODWORD(STACK[0x600]) = v2;
  STACK[0x6D8] = 0x6103EB44CC421414;
  return (*(v3 + 8 * (((v4 == 0x146375EC570BCC2FLL) * (((v1 ^ 0x4642) + 21074) ^ 0x596E)) ^ v1)))();
}

uint64_t sub_2448FD658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X8>)
{
  STACK[0x7D8] = a7;
  LODWORD(STACK[0x4B4]) = -214693917;
  STACK[0x898] = &STACK[0x790];
  LODWORD(STACK[0x41C]) = -292178860;
  return (*(v8 + 8 * v7))(a1, a2, a3, a4, a5, a6, 1647873780);
}

uint64_t sub_2448FD8D4@<X0>(unint64_t a1@<X8>)
{
  v5 = STACK[0x470];
  STACK[0x360] = a1;
  LODWORD(STACK[0x5AC]) = v1;
  STACK[0x748] = v5 + v2;
  return (*(v4 + 8 * v3))();
}

uint64_t sub_2448FD9C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v4 - 0x6286B82630F8F1CBLL) == (((v3 + 59) | 0x60) ^ 0xCE))
  {
    a3 = 1216081108;
  }

  else
  {
    a3 = a3;
  }

  return (*(v5 + 8 * v3))(a1, a2, a3);
}

uint64_t sub_2448FDA64@<X0>(unint64_t a1@<X8>)
{
  v6 = STACK[0x778];
  STACK[0x6E0] = a1;
  STACK[0x358] = v6 + v2;
  return (*(v5 + 8 * (((v1 == ((10 * (v3 ^ 0xD4E)) ^ (v4 + 1940))) * ((v3 ^ 0x3A74) - 4691)) ^ v3)))();
}

uint64_t sub_2448FDAB8(uint64_t a1, uint64_t a2)
{
  v4 = *(STACK[0x5C8] - 0x6286B82630F8F22CLL);
  STACK[0x4D0] = 0x750C1ABFB0567FDBLL;
  STACK[0x420] = 0x31D6774224852E24;
  return (*(v3 + 8 * (((v4 != 0x146375EC570BCC2FLL) * (v2 ^ 0x3EF1 ^ ((v2 + 2844) | 0x2440))) ^ v2)))(a1, a2, 1216081105);
}

uint64_t sub_2448FDB4C@<X0>(unint64_t a1@<X8>)
{
  STACK[0x7D8] = a1;
  LODWORD(STACK[0x4B4]) = -106723608;
  STACK[0x898] = &STACK[0x4D0];
  LODWORD(STACK[0x41C]) = 272258103;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_2448FDBFC@<X0>(unint64_t a1@<X8>)
{
  v6 = STACK[0x3D0];
  STACK[0x420] = a1;
  STACK[0x720] = v6 + v2;
  return (*(v5 + 8 * ((((v3 ^ 0x3007) + 3973) * (v1 == v4 - 32)) ^ v3)))();
}

uint64_t sub_2448FDCA0@<X0>(uint64_t a1@<X8>)
{
  v7 = *(v4 - 0x6286B82630F8F1B4);
  v8 = ((20 * (v3 ^ 0x18A0)) ^ 0x8085CE53) + 1197783899 * *(v4 - 0x6286B82630F8F1C8);
  v9 = 1649972239 * ((((v5 - 224) | 0x541EE3D7) - ((v5 - 224) & 0x541EE3D7)) ^ 0x8FA6CFAF);
  *(v5 - 224) = 1270344271 - v9;
  *(v5 - 176) = v4 + 0x154269182B6B91FALL;
  *(v5 - 192) = v1;
  *(v5 - 184) = (v7 ^ 0x80275F64) - v9 + 330979250 + ((2 * v7) & 0xFEFB5FDE ^ 0xFEB14116);
  *(v5 - 180) = v3 - v9 + 322432740;
  *(v5 - 200) = v8 ^ v9;
  *(v5 - 196) = v9 ^ v2 ^ 0x5351E767;
  *(v5 - 216) = v1;
  *(v5 - 208) = a1;
  v10 = (*(v6 + 8 * (v3 ^ 0x42E2)))(v5 - 224);
  return (*(STACK[0x320] + 8 * v3))(v10);
}

uint64_t sub_2448FDF28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  STACK[0x6A8] = a3;
  LODWORD(STACK[0x694]) = v3;
  return (*(v5 + 8 * v4))(a1, a2, 1216081111);
}

uint64_t sub_2448FDF9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  STACK[0x360] = a3;
  LODWORD(STACK[0x5AC]) = v3;
  return (*(v5 + 8 * v4))(a1, a2, 1216081111);
}

uint64_t sub_2448FE164()
{
  v1 = LODWORD(STACK[0x31C]) + 2859;
  STACK[0x618] = STACK[0xA58];
  return (*(v0 + 8 * v1))();
}

uint64_t sub_2448FE248(uint64_t a1, uint64_t a2)
{
  v4 = STACK[0x400];
  STACK[0x808] = STACK[0x400];
  return (*(v3 + 8 * (((v4 == 0x6286B82630F8F22CLL) * (((v2 + 2322) ^ 0x4E6D) + 162)) ^ v2)))(a1, a2, 1216081105);
}

uint64_t sub_2448FE294@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 - 0x6286B82630F8F224);
  STACK[0x4F8] = 0x750C1ABFB0567FDBLL;
  LODWORD(STACK[0x660]) = v2;
  STACK[0x488] = 0x7AB59A80623E3151;
  return (*(v3 + 8 * ((62 * (((((v1 ^ 0x1AFD2FEB) - 452798535) ^ (v4 == 0x146375EC570BCC2FLL)) & 1) == 0)) ^ v1)))();
}

uint64_t sub_2448FE324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X8>)
{
  STACK[0x7D8] = a7;
  LODWORD(STACK[0x4B4]) = -156791547;
  STACK[0x898] = &STACK[0x4F8];
  LODWORD(STACK[0x41C]) = -1535688971;
  return (*(v8 + 8 * (v7 - 452811496)))(a1, a2, a3, a4, a5, a6, 1647873780);
}

uint64_t sub_2448FE39C@<X0>(uint64_t a1@<X8>)
{
  v7 = STACK[0x720];
  v8 = 810199703 * (((v5 - 224) & 0xBBE1A5D3 | ~((v5 - 224) | 0xBBE1A5D3)) ^ 0xA2974CA1);
  *(v5 - 216) = v8 ^ v2 ^ 0xB7E2A918;
  *(v5 - 212) = v8 + (v3 ^ 0xDDCBEFBE) + 2012688377 + ((v3 << ((v4 + 34) & 0x94 ^ 0x85)) & 0xBB97DF7C) + 1895;
  *(v5 - 176) = v1;
  *(v5 - 224) = v1;
  *(v5 - 184) = v4 - v8 - 174;
  *(v5 - 192) = v7;
  *(v5 - 208) = a1;
  v9 = (*(v6 + 8 * (v4 ^ 0x42F7)))(v5 - 224);
  return (*(STACK[0x320] + 8 * v4))(v9);
}

uint64_t sub_2448FE630(void *a1)
{
  *a1 = 0x750C1ABFB0567FDBLL;
  a1[1] = 0x750C1ABFB0567FDBLL;
  *(v1 - 0x6286B82630F8F224) = a1 + 0x146375EC570BCC2FLL;
  LODWORD(STACK[0x6BC]) = 1216124116;
  return (*(v3 + 8 * (v2 & 0x4F1177F7)))(3300551070);
}

uint64_t sub_2448FE7F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a3 - 0x6286B82630F8F22CLL);
  STACK[0x540] = 0x750C1ABFB0567FDBLL;
  STACK[0x6A8] = 0x7AE95E9FBE90917DLL;
  return (*(v5 + 8 * (((v6 == v4) * (((v3 - 2498) | 0x3420) - 14282)) ^ v3)))(a1, a2, 1216081105);
}

uint64_t sub_2448FE868@<X0>(unint64_t a1@<X8>)
{
  STACK[0x7D8] = a1;
  LODWORD(STACK[0x4B4]) = -217172434;
  STACK[0x898] = &STACK[0x540];
  LODWORD(STACK[0x41C]) = 2080205177;
  return (*(v2 + 8 * (v1 - 1715)))();
}

uint64_t sub_2448FE91C(uint64_t a1, uint64_t a2)
{
  v4 = *(STACK[0x540] - 0x750C1ABFB0567FC3);
  STACK[0x3E0] = v4;
  return (*(v3 + 8 * (((v4 != 0) * (((v2 - 20252) | 0x500) - 3465)) ^ v2)))(a1, a2, 1216081105);
}

uint64_t sub_2448FE98C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  v5 = (v3 | ((v3 < ((a3 - 3330) | 8u) + 174790530) << 32)) + 0xE5F07BB65435F5DLL;
  STACK[0xA18] = v5;
  v6 = STACK[0x6A8];
  STACK[0xA20] = STACK[0x6A8];
  return (*(v4 + 8 * ((7392 * ((((a3 + 652) | 0x27C0u) ^ 0x6C8A56E44EE22E1ALL) - v6 + v5 < 0xFFFFFFFFFFFFFFF6)) ^ a3)))(a1, a2, 1216081110);
}

uint64_t sub_2448FEAB0(uint64_t a1, uint64_t a2)
{
  v4 = *(STACK[0x5F8] - 0x750C1ABFB0567FC3);
  STACK[0x778] = v4;
  return (*(v3 + 8 * (((v4 == 0) * (((v2 + 741) | 0x98D) - 10543)) ^ v2)))(a1, a2, 1216081105);
}

uint64_t sub_2448FEB20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  v5 = (v3 | ((v3 < 0xA6B181C) << 32)) + ((a3 + 3635) ^ 0x213B8934BBE91B42);
  STACK[0xA28] = v5;
  v6 = STACK[0x6E0];
  STACK[0xA30] = STACK[0x6E0];
  return (*(v4 + 8 * (((v5 - v6 + 0x18FEF1CE3DA73E65 < 0xFFFFFFFFFFFFFFF6) * (a3 ^ 0x44C1)) ^ a3)))(a1, a2, 1216081110);
}

uint64_t sub_2448FEC48(uint64_t a1, uint64_t a2)
{
  v4 = *(STACK[0x4D0] - 0x750C1ABFB0567FC3);
  STACK[0x3D0] = v4;
  return (*(v3 + 8 * (((v4 == 0) * (v2 ^ 0x1DF3 ^ (v2 - 441895648) & 0x1A56BDFD)) ^ v2)))(a1, a2, 1216081105);
}

uint64_t sub_2448FECC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W8>)
{
  v5 = (v3 | ((v3 < 0xA6B181C) << 32)) + 0x7E8936066633DF1CLL;
  STACK[0xA38] = v5;
  v6 = STACK[0x420];
  STACK[0xA40] = STACK[0x420];
  return (*(v4 + 8 * ((13363 * (v5 - v6 - 0x4CB2BEC44C19C91ELL < a3 + 12124 - 14488 + ((a3 + 1676788011) & 0x9C0E36FE))) ^ a3)))(a1, a2, 1216081110);
}

uint64_t sub_2448FEE14()
{
  v1 = STACK[0x31C];
  LODWORD(STACK[0x6BC]) = 1216124116;
  return (*(v0 + 8 * (v1 - 594)))(3300551070);
}

uint64_t sub_2448FEE54()
{
  STACK[0x400] = v1;
  STACK[0x8C8] += (v0 + 368) ^ 0xFFFFFFFFFFFFC6B0;
  return (*(v2 + 8 * (v0 - 4985)))();
}

uint64_t sub_2448FEF38@<X0>(uint64_t a1@<X8>)
{
  STACK[0x390] = 0x750C1ABFB0567FDBLL;
  STACK[0x500] = 0x7AB63258C2A4F821;
  return (*(v3 + 8 * (((((v1 - 1922642855) & 0x729927DF) + ((v1 - 2023332518) & 0x7899BFEF) - 16014) * (a1 == v2)) | v1)))();
}

uint64_t sub_2448FEFC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X8>)
{
  STACK[0x7D8] = a7;
  LODWORD(STACK[0x4B4]) = -41143177;
  STACK[0x898] = &STACK[0x390];
  LODWORD(STACK[0x41C]) = 951331251;
  return (*(v8 + 8 * v7))(a1, a2, a3, a4, a5, a6, 1647873780);
}

void *sub_2448FF030()
{
  STACK[0x330] = STACK[0x5C8];
  STACK[0x8C0] = *(v1 + 8 * v0);
  return (*(v1 + 8 * (((v0 + 15518) ^ 0x37F3) + v0)))(&STACK[0x330]);
}

uint64_t sub_2448FF080()
{
  STACK[0x5C8] = v1;
  v3 = STACK[0x6BC];
  STACK[0x400] = v1;
  STACK[0x8C8] -= 32;
  return (*(v2 + 8 * (((v3 == ((v0 - 813660656) & 0x307F7B5F) + 1216109444) * ((v0 - 14255) ^ 0x2005)) ^ (v0 - 13197))))();
}

uint64_t sub_2448FF158()
{
  v2 = *(STACK[0x390] - 0x750C1ABFB0567FC3);
  STACK[0x800] = v2;
  return (*(v1 + 8 * (((v2 == 0) * ((((v0 - 2122712602) & 0x7E85B6E7) + 12669) ^ 0x3795)) ^ v0)))();
}

uint64_t sub_2448FF1CC@<X0>(unsigned int a1@<W8>)
{
  v3 = (v1 | ((v1 < 0xA6B181C) << 32)) + ((a1 + 1363391322) & 0xAEBC46DE ^ (a1 + 623770001) & 0xDAD237EB ^ 0x2E0E6A45216EEBA4);
  STACK[0xA48] = v3;
  v4 = STACK[0x500];
  STACK[0xA50] = STACK[0x500];
  return (*(v2 + 8 * ((18236 * (v3 - v4 + 0x4CA7C81396CB0323 < 0xFFFFFFFFFFFFFFF6)) ^ a1)))();
}

uint64_t sub_2448FF2B0()
{
  STACK[0x618] = 0x3E0DD92B1DE16FEALL;
  LODWORD(STACK[0x85C]) = v1;
  return (*(v2 + 8 * (v0 - 5789)))();
}

uint64_t sub_2448FF348@<X0>(uint64_t a1@<X8>)
{
  STACK[0x678] = 0x750C1ABFB0567FDBLL;
  STACK[0x5D0] = 0x3B34AA056F1D5815;
  return (*(v2 + 8 * ((445 * (((a1 == 0x146375EC570BCC2FLL) ^ (v1 - 1)) & 1)) ^ v1)))();
}

uint64_t sub_2448FF3D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X8>)
{
  STACK[0x7D8] = a7;
  LODWORD(STACK[0x4B4]) = -41143177;
  STACK[0x898] = &STACK[0x678];
  LODWORD(STACK[0x41C]) = 1515768214;
  return (*(v8 + 8 * v7))(a1, a2, a3, a4, a5, a6, 1647873780);
}

uint64_t sub_2448FF494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  v4 = *(STACK[0x678] - 0x750C1ABFB0567FC3);
  STACK[0x810] = v4;
  return (*(v3 + 8 * (a3 + 4 * (((a3 ^ (v4 == 0)) & 1) == 0))))(a1, a2, 1216081105);
}

uint64_t sub_2448FF500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  v5 = a3 ^ 0x23C2;
  v6 = (v3 | ((v3 < 0xA6B181C) << 32)) + 0xD610D55FE7D265BLL + ((3576 * (a3 ^ 0x357C)) ^ 0x375Au);
  STACK[0xA68] = v6;
  v7 = STACK[0x5D0];
  STACK[0xA70] = STACK[0x5D0];
  return (*(v4 + 8 * ((4034 * (v6 - v7 + 0x2DD39CAF663518DALL < 0xFFFFFFFFFFFFFFF6)) ^ v5)))(a1, a2, 1216081110);
}

uint64_t sub_2448FF61C()
{
  STACK[0x618] = 0x3E0DD92B1DE16FEALL;
  LODWORD(STACK[0x85C]) = v1;
  return (*(v2 + 8 * (v0 - 13197)))();
}

uint64_t sub_2448FF658@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  v65 = STACK[0xA90];
  v64 = STACK[0xA88] - 0x302AE1E0A6345944;
  v63 = STACK[0xAA0];
  v62 = STACK[0xA98] - 0x4C5EC457E798706ELL;
  v83 = STACK[0xAB0];
  v82 = STACK[0xAA8] - 0x5B4E13A5BA2C7B70;
  v81 = STACK[0xAC0];
  v80 = STACK[0xAB8] - 0x27E7469B7B6C5CF6;
  v79 = ((STACK[0xA50] - 0x7AB63258C2A4F81DLL) ^ 0x6EE39DF2B97FFFF5) - 0x4480042018102081 + ((2 * (STACK[0xA50] - 0x7AB63258C2A4F81DLL)) & 0xDDC73BE572FFFFEALL);
  v78 = ((STACK[0xA40] - 0x31D6774224852E20) ^ 0x3F77FFF6B7FFFF76) - 0x1514662416902002 + ((2 * (STACK[0xA40] - 0x31D6774224852E20)) & 0x7EEFFFED6FFFFEECLL);
  v56 = STACK[0xA30] - 0x3A3A7B0303FB8329;
  v77 = ((STACK[0xA20] - 0x7AE95E9FBE909179) ^ 0xBB63BBDEB7EFFF7CLL) + 0x6EFFDDF3E97FDFF8 + ((2 * (STACK[0xA20] - 0x7AE95E9FBE909179)) & 0x76C777BD6FDFFEF8);
  v76 = ((STACK[0xA10] - 0x4186ACCFD03D8C53) ^ 0x2EFF9DF2ED6FDFF6) - 0x49C04204C000082 + ((2 * (STACK[0xA10] - 0x4186ACCFD03D8C53)) & 0x5DFF3BE5DADFBFECLL);
  v57 = STACK[0xAF8] - 0x35FC38389A91BCACLL;
  v75 = STACK[0xAF0] - 0x4AD8F7968E8637B0;
  v74 = STACK[0xB28];
  v73 = ((STACK[0xA70] - 0x3B34AA056F1D580FLL) ^ 0xFDFBBEFEE9CFADFFLL) + 0x37BFE7CF7FF8DFFCLL + ((2 * (STACK[0xA70] - 0x3B34AA056F1D580FLL)) & 0xFBF77DFDD39F5BFELL);
  v72 = ((STACK[0xA50] - 0x7AB63258C2A4F81BLL) ^ 0x7DFBEFFEFDDDEFFFLL) - 0x4840493094156204 + ((2 * (STACK[0xA50] - 0x7AB63258C2A4F81BLL)) & 0xFBF7DFFDFBBBDFFELL);
  v71 = ((STACK[0xA40] - 0x31D6774224852E1ELL) ^ 0xFFBFA6EF7FDA9FFBLL) + 0x35FBFFDEE9EDEE00 + ((2 * (STACK[0xA40] - 0x31D6774224852E1ELL)) & 0xFF7F4DDEFFB53FF6);
  v70 = ((STACK[0xA30] - 0x3A3A7B0303FB8327) ^ 0x3FBBF7CFFDDBEDFFLL) - 0xA00510194136004 + ((2 * (STACK[0xA30] - 0x3A3A7B0303FB8327)) & 0x7F77EF9FFBB7DBFELL);
  v69 = ((STACK[0xA20] - 0x7AE95E9FBE909177) ^ 0x75FBAFDE7BDDDDFBLL) - 0x4040091012155000 + ((2 * (STACK[0xA20] - 0x7AE95E9FBE909177)) & 0xEBF75FBCF7BBBBF6);
  v68 = ((STACK[0xA10] - 0x4186ACCFD03D8C51) ^ 0xFFFBAFFEE9CBCFFBLL) + 0x35BFF6CF7FFCBE00 + ((2 * (STACK[0xA10] - 0x4186ACCFD03D8C51)) & 0xFFF75FFDD3979FF6);
  v67 = ((STACK[0xAF8] - 0x35FC38389A91BCAALL) ^ 0x7DFBA6FEFFECADFBLL) - 0x4840003096242000 + ((2 * (STACK[0xAF8] - 0x35FC38389A91BCAALL)) & 0xFBF74DFDFFD95BF6);
  v66 = STACK[0xB20] - 0x4F215ACE5EB4D56BLL;
  v61 = ((STACK[0xB28] - 0x4E1682687DCFF410) ^ 0x35BBBEFFEDFB9DFBLL) - 0x183184331000 + ((2 * (STACK[0xB28] - 0x4E1682687DCFF410)) & 0x6B777DFFDBF73BF6);
  v60 = STACK[0xAF8] - 0x40916A30C92EABLL;
  v58 = *(v55 + 8 * a1);
  STACK[0x250] = STACK[0x810];
  STACK[0x2E0] = STACK[0x5C0];
  STACK[0x270] = STACK[0x448];
  STACK[0x2D0] = STACK[0x650];
  STACK[0x2C0] = STACK[0x7F8];
  STACK[0x240] = STACK[0x800];
  STACK[0x230] = STACK[0x3D0];
  STACK[0x220] = STACK[0x778];
  STACK[0x210] = STACK[0x3E0];
  STACK[0x200] = STACK[0x470];
  STACK[0x2A0] = STACK[0x4E8];
  STACK[0x280] = STACK[0x598];
  LODWORD(STACK[0x290]) = LOWORD(STACK[0x9BE]);
  LODWORD(STACK[0x300]) = LOWORD(STACK[0x9AE]);
  LODWORD(STACK[0x2B0]) = LOWORD(STACK[0x99E]);
  LODWORD(STACK[0x310]) = LOWORD(STACK[0x98E]);
  LODWORD(STACK[0x260]) = LOWORD(STACK[0x952]);
  LODWORD(STACK[0x2F0]) = LOWORD(STACK[0x93E]);
  return v58(0xB7BFFFCF69DBE000, v56, 0x8DBE49DF8B3EC60ALL, 0x999F361F413571E6, v57, 0xB2CED1A6D4B9C292, 0x4CCF9B0FA09AB8F3, 0x5BD84FA41E497884, a2, a3, a4, a5, v60, v61, ((v81 - 0x68DC2B03D4CC5EF4) ^ 0x3FFFBFFF79CF8FFBLL) - 0xA44193110070200 + ((2 * (v81 - 0x68DC2B03D4CC5EF4)) & 0x7FFF7FFEF39F1FF6), ((v83 - 0x6103EB44CC42140ALL) ^ 0x35BBEFEFFBDF8FFFLL) - 0x492192170204 + ((2 * (v83 - 0x6103EB44CC42140ALL)) & 0x6B77DFDFF7BF1FFELL), ((v63 - 0x4EAB185486F40D82) ^ 0xFFFBEEFFF9FF8FFBLL) + 0x35BFB7CE6FC8FE00 + ((2 * (v63 - 0x4EAB185486F40D82)) & 0xFFF7DDFFF3FF1FF6), ((v65 - 0x7AB59A80623E3147) ^ 0x75FBEECFF9DBDDFFLL) - 0x4040480190135004 + ((2 * (v65 - 0x7AB59A80623E3147)) & 0xEBF7DD9FF3B7BBFELL), v62, ((v63 - 0x4EAB185486F40D88) ^ 0x2E6BFDF3FF6FDFFELL) - 0x40864215E00008ALL + ((2 * (v63 - 0x4EAB185486F40D88)) & 0x5CD7FBE7FEDFBFFCLL), v63, v64, v65, v66, ((v74 - 0x4E1682687DCFF414) ^ 0x7DFFA6DF69DB9FFFLL) - 0x4844001100131204 + ((2 * (v74 - 0x4E1682687DCFF414)) & 0xFBFF4DBED3B73FFELL), v67, v68, v69, v70, v71, v72, ((v81 - 0x68DC2B03D4CC5EF8) ^ 0x75FBBFEFEFFC8FFFLL) - 0x4040192186340204 + ((2 * (v81 - 0x68DC2B03D4CC5EF8)) & 0xEBF77FDFDFF91FFELL), ((v83 - 0x6103EB44CC42140ELL) ^ 0x37BBE6CFEDCFDFFFLL) - 0x200400184075204 + ((2 * (v83 - 0x6103EB44CC42140ELL)) & 0x6F77CD9FDB9FBFFELL), ((v63 - 0x4EAB185486F40D86) ^ 0xF5BFA6CEEBD9AFFFLL) + 0x3FFBFFFF7DEEDDFCLL + ((2 * (v63 - 0x4EAB185486F40D86)) & 0xEB7F4D9DD7B35FFELL), ((v65 - 0x7AB59A80623E314BLL) ^ 0xFDBFB7FEFFEA9FFBLL) + 0x37FBEECF69DDEE00 + ((2 * (v65 - 0x7AB59A80623E314BLL)) & 0xFB7F6FFDFFD53FF6), v73, ((v74 - 0x4E1682687DCFF416) ^ 0xBA6BD9FABF7FFFFELL) + 0x6FF7BFD7E1EFDF76 + ((2 * (v74 - 0x4E1682687DCFF416)) & 0x74D7B3F57EFFFFFCLL), a31, v74, a33, v75, a35, (v57 ^ 0xAAE3BDFFF7FFFFF6) + 0x7F7FDBD2A96FDF7ELL + ((2 * v57) & 0x55C77BFFEFFFFFECLL), a37, v76, a39, v77, a41, (v56 ^ 0xAE7FB9D2E3EFDF7CLL) + 0x7BE3DFFFBD7FFFF8 + ((2 * v56) & 0x5CFF73A5C7DFBEF8), a43, v78, a45, v79, a47, v80, a49, ((v81 - 0x68DC2B03D4CC5EFALL) ^ 0xAAEFFBF6FF7FDF7FLL) + 0x7F739DDBA1EFFFF5 + ((2 * (v81 - 0x68DC2B03D4CC5EFALL)) & 0x55DFF7EDFEFFBEFELL), a51, v81, a53, v82, a55, ((v83 - 0x6103EB44CC421410) ^ 0x2F6BDBFAE5FFFF7CLL) - 0x508422844902008 + ((2 * (v83 - 0x6103EB44CC421410)) & 0x5ED7B7F5CBFFFEF8));
}

uint64_t sub_244900214()
{
  v2 = *(STACK[0x4F8] - 0x750C1ABFB0567FC3);
  STACK[0x5C0] = v2;
  return (*(v1 + 8 * (((((8 * ((v0 + 6127) ^ 0x5671) + 1409336447) & 0xABFF23F7) - 8487) * (v2 != 0)) ^ (v0 + 6127))))();
}

uint64_t sub_244900294@<X0>(int a1@<W8>)
{
  v3 = (v1 | ((v1 < ((16 * a1) ^ 0xA69066Cu)) << 32)) + 0x302AE1E11FD4C271;
  STACK[0xA88] = v3;
  v4 = STACK[0x488];
  STACK[0xA90] = STACK[0x488];
  return (*(v2 + 8 * (((2 * (v3 - v4 + 0x4A8AB89F37FE56BALL < 0xFFFFFFFFFFFFFFF6)) | (8 * (v3 - v4 + 0x4A8AB89F37FE56BALL < 0xFFFFFFFFFFFFFFF6))) ^ a1)))();
}

uint64_t sub_244900364(uint64_t a1, uint64_t a2)
{
  v5 = *(STACK[0x808] - 0x6286B82630F8F22CLL);
  STACK[0x620] = 0x750C1ABFB0567FDBLL;
  LODWORD(STACK[0x88C]) = v3;
  STACK[0x578] = 0x4EAB185486F40D8CLL;
  return (*(v4 + 8 * ((199 * (((v5 == 0x146375EC570BCC2FLL) ^ (21 * ((v2 + 73) & 0x77 ^ 0x62))) & 1)) ^ v2)))(3300551070, a2, 1216081105);
}

uint64_t sub_244900418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X8>)
{
  STACK[0x7D8] = a7;
  LODWORD(STACK[0x4B4]) = -156791547;
  STACK[0x898] = &STACK[0x620];
  LODWORD(STACK[0x41C]) = -1650325156;
  return (*(v8 + 8 * v7))(a1, a2, a3, a4, a5, a6, 1647873780);
}

uint64_t sub_2449004C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  v4 = *(STACK[0x620] - 0x750C1ABFB0567FC3);
  STACK[0x448] = v4;
  return (*(v3 + 8 * (((v4 == 0) * (((a3 + 790) ^ 0x3C57) - 14555 + 2096 * ((a3 + 790) ^ 0x3C61))) ^ (a3 + 790))))(a1, a2, 1216081105);
}

uint64_t sub_244900540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W8>)
{
  v5 = (v3 | ((v3 < 0xA6B181C) << 32)) + 0x4C5EC457E280971ALL + ((a3 - 1707757393) & 0x65CA16C7);
  STACK[0xA98] = v5;
  v6 = STACK[0x578];
  STACK[0xAA0] = STACK[0x578];
  return (*(v4 + 8 * ((1546 * (v5 - v6 + 0x24C53FC9A085D85 < (a3 ^ 0xFFFFFFFFFFFFC6A6))) | a3)))(a1, a2, 1216081110);
}

uint64_t sub_244900690()
{
  v2 = *(STACK[0x790] - 0x750C1ABFB0567FC3);
  STACK[0x650] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((v0 - 4129) | 0x1021) - 22763)) ^ (v0 - 5129))))();
}

uint64_t sub_2449006F8@<X0>(uint64_t a1@<X8>)
{
  v3 = (a1 | ((a1 < 0xA6B181C) << 32)) + 0x5B4E13A685ED2E8FLL;
  STACK[0xAA8] = v3;
  v4 = STACK[0x6D8];
  STACK[0xAB0] = STACK[0x6D8];
  return (*(v2 + 8 * (((v3 - v4 + 0x5B5D79E3BE9CD5FLL < 0xFFFFFFFFFFFFFFF6) * (((v1 - 17854) ^ 0x13A2) + 16746)) ^ (v1 - 17854))))();
}

uint64_t sub_2449007CC(uint64_t a1, uint64_t a2)
{
  v5 = *(STACK[0x878] - 0x6286B82630F8F22CLL);
  STACK[0x7B0] = 0x750C1ABFB0567FDBLL;
  LODWORD(STACK[0x8B4]) = v2;
  STACK[0x780] = 0x68DC2B03D4CC5EFELL;
  return (*(v4 + 8 * (((v5 == 0x146375EC570BCC2FLL) * (((v3 + 1045746192) & 0xC1AAD4FF) + ((v3 - 22813) | 0x6CB) - 1789)) ^ v3)))(3300551070, a2, 1216081105);
}

void *sub_244900880(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(STACK[0x440]) = a3;
  STACK[0x8C0] = *(v4 + 8 * v3);
  return (*(v4 + 8 * (v3 ^ 0x3788 ^ (v3 + 15539))))(&STACK[0x400]);
}

uint64_t sub_2449008D4@<X0>(unint64_t *a1@<X8>)
{
  STACK[0x378] = a1;
  v4 = *a1;
  STACK[0x4B8] = v4;
  return (*(v3 + 8 * (((v4 == v2) * (v1 - 21276 + ((v1 - 10468) | 0x240))) | v1)))();
}

uint64_t sub_244900948@<X0>(uint64_t a1@<X8>)
{
  STACK[0x4A0] = a1 - 0x6286B82630F8F224;
  LODWORD(STACK[0x4B0]) = v2 + 4;
  return (*(v3 + 8 * v1))(1569933550);
}

uint64_t sub_24490099C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X8>)
{
  STACK[0x7D8] = a7;
  LODWORD(STACK[0x4B4]) = -214693917;
  STACK[0x898] = &STACK[0x7B0];
  LODWORD(STACK[0x41C]) = -406815045;
  return (*(v8 + 8 * v7))(a1, a2, a3, a4, a5, a6, 1647873780);
}

uint64_t sub_244900A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  v4 = *(STACK[0x7B0] - 0x750C1ABFB0567FC3);
  STACK[0x7F8] = v4;
  return (*(v3 + 8 * (((v4 == 0) * ((((a3 - 1108) & 0xFFFFFFF6) + 93) ^ (a3 - 1058))) ^ (a3 + 21719))))(a1, a2, 1216081105);
}

uint64_t sub_244900AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W8>)
{
  v5 = (v3 | ((v3 < 0xA6B181C) << 32)) + 0x27E7469BE6F13ED8 + a3 + 59;
  STACK[0xAB8] = v5;
  v6 = STACK[0x780];
  STACK[0xAC0] = STACK[0x780];
  v7 = ((a3 + 9) << ((a3 - 122) ^ 0x5C)) + a3;
  return (*(v4 + 8 * (a3 ^ 0xFFFFFBA5 ^ (9672 * (((v7 | ~(v5 - v6 + 0x40F4E467E37007CFLL)) & (v5 - v6 + 0x40F4E467E37007CFLL - v7) | v7 & ~(v5 - v6 + 0x40F4E467E37007CFLL)) >> 63)))))(a1, a2, 1216081110);
}

uint64_t sub_244900C7C@<X0>(uint64_t a1@<X8>)
{
  STACK[0x630] = v1;
  STACK[0x768] = 0x750C1ABFB0567FDBLL;
  LODWORD(STACK[0x4E4]) = v3;
  STACK[0x558] = 0x4E1682687DCFF41ALL;
  return (*(v5 + 8 * (((a1 != v4) * ((((v2 - 8712) | 0x2120) - 12543) ^ ((v2 - 13950) | 0x485))) ^ v2)))();
}

uint64_t sub_244900CFC@<X0>(unint64_t a1@<X8>)
{
  STACK[0x7D8] = a1;
  LODWORD(STACK[0x4B4]) = v1;
  STACK[0x898] = &STACK[0x768];
  LODWORD(STACK[0x41C]) = -1085888193;
  return (*(v3 + 8 * v2))();
}

uint64_t sub_244900E54@<X0>(int a1@<W8>)
{
  v3 = a1 - 2240;
  v4 = (*(v2 + 8 * ((a1 - 2240) ^ 0x6114)))();
  v5 = STACK[0x320];
  *(v1 + 1024) = 0;
  return (*(v5 + 8 * v3))(v4);
}

uint64_t sub_244900E98()
{
  v3 = (*(v2 + 8 * (v0 ^ 0x40CD)))(v1);
  v4 = STACK[0x320];
  STACK[0x8E8] = 0;
  return (*(v4 + 8 * v0))(v3);
}

uint64_t sub_244900F20@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v3 + 8 * a1);
  *(v2 - 224) = v1;
  *(v2 - 208) = v4 - 715682041 * ((2 * ((v2 - 224) & 0x3D085E4988F8EB8) - (v2 - 224) - 0x3D085E4988F8EBFLL) ^ 0x85FEF93E92368A13);
  *(v2 - 216) = (a1 + 2094776499) ^ (715682041 * ((2 * ((v2 - 224) & 0x988F8EB8) - (v2 - 224) + 1735422273) ^ 0x92368A13));
  v5 = (*(v3 + 8 * (a1 ^ 0x5DA5)))(v2 - 224);
  v6 = STACK[0x320];
  STACK[0x730] = 0;
  return (*(v6 + 21744))(v5);
}

uint64_t sub_244901008@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v3 + 8 * v1);
  v5 = 715682041 * ((((v2 - 224) | 0x5FD0C2F44F0545E0) - (v2 - 224) + ((v2 - 224) & 0xA02F3D0BB0FABA18)) ^ 0x260141D1BA43BEB2);
  *(v2 - 224) = a1;
  *(v2 - 208) = v4 - v5;
  *(v2 - 216) = (v1 + 2094776499) ^ v5;
  v6 = (*(v3 + 8 * (v1 + 21923)))(v2 - 224);
  v7 = STACK[0x320];
  STACK[0x880] = 0;
  return (*(v7 + 8 * ((((v1 + 2567) | 0x4124) - 9497) ^ v1)))(v6);
}

uint64_t sub_244901100()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x7F39)))();
  v3 = STACK[0x320];
  STACK[0x8A8] = 0;
  return (*(v3 + 8 * v0))(v2);
}

uint64_t sub_244901178()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x1E86)))();
  v3 = STACK[0x320];
  STACK[0x7F0] = 0;
  return (*(v3 + 8 * v0))(v2);
}

uint64_t sub_2449011E4()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x565A)))();
  v3 = STACK[0x320];
  STACK[0x710] = 0;
  return (*(v3 + 8 * v0))(v2);
}

uint64_t sub_244901278()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x6182)))();
  v3 = STACK[0x320];
  STACK[0x388] = 0;
  return (*(v3 + 8 * v0))(v2);
}

uint64_t sub_2449012AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x4A0] = &STACK[0x5A0];
  LODWORD(STACK[0x4B0]) = 1109901554;
  return (*(v7 + 8 * (v6 - 493165158)))(1569933550, a2, a3, a4, a5, a6, 1647873780);
}

uint64_t sub_2449013BC(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = v6 - 2859;
  v11 = (v6 - 2859 + a2) | a3;
  v12 = *v7;
  STACK[0x5D8] = *v7;
  return (*(v9 + 8 * (((((v12 == v8) ^ (v10 - 1)) & 1) * (v11 ^ a6)) ^ v10)))();
}

uint64_t sub_244901548()
{
  v3 = (*(v2 + 8 * (v1 ^ 0x4EF2)))();
  v4 = STACK[0x320];
  *(v0 - 0x750C1ABFB0567FC3) = 0;
  return (*(v4 + 8 * v1))(v3);
}

uint64_t sub_2449015F8()
{
  (*(v3 + 8 * (v1 - 1073914502)))(v0 - 0x146375EC570BCC2FLL);
  v4 = STACK[0x320];
  *v2 = 0x146375EC570BCC2FLL;
  return (*(v4 + 8 * ((7282 * (v1 < 0x7041A7D7)) ^ (v1 - 1073927441))))(1569933550, 4294955286, 4168, 3642642380, 652326903, 4361, 1647873780, 5461);
}

uint64_t sub_244901710@<X0>(int a1@<W8>)
{
  v4 = v1 ^ v2;
  v5 = a1 < (((v4 - 8522) | 0x124) ^ 0x4227F594);
  return (*(v3 + 8 * ((v5 | (32 * v5)) ^ v4)))();
}

uint64_t sub_244901790()
{
  STACK[0x4A0] = &STACK[0x370];
  LODWORD(STACK[0x4B0]) = v1 + 1;
  return (*(v2 + 8 * ((5629 * (v0 > 0x80798069)) ^ (v0 - 1569944165))))();
}

uint64_t sub_244901970()
{
  STACK[0x4A0] = STACK[0x4B8] - 0x6286B82630F8F22CLL;
  LODWORD(STACK[0x4B0]) = v1;
  return (*(v2 + 8 * v0))();
}

uint64_t sub_244901C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W6>, int a4@<W8>)
{
  STACK[0x608] = v4;
  LODWORD(STACK[0xAC8]) = v9;
  LOWORD(STACK[0xACE]) = v7;
  LODWORD(STACK[0xAD0]) = v10;
  LODWORD(STACK[0xAD4]) = a4;
  STACK[0xAD8] = v5;
  STACK[0xAE0] = v8;
  v14 = v4 != v11 && (v10 ^ (a3 - 1)) < ((v6 + 9226) ^ 0xFFFFC816);
  return (*(v12 + 8 * ((17514 * v14) ^ v6)))(a1, a2, 1216081105);
}

uint64_t sub_244901CC8()
{
  v2 = v0 ^ 0x750E;
  v3 = (*(v1 + 8 * ((v0 ^ 0x750E) + 5847)))(32);
  v4 = STACK[0x320];
  STACK[0x788] = v3 + 0x750C1ABFB0567FDBLL;
  return (*(v4 + 8 * (((v2 + 23) ^ (v3 == 0)) & 1 ^ v2)))();
}

uint64_t sub_244901D38(uint64_t a1)
{
  *a1 = 0x750C1ABFB0567FDBLL;
  *(a1 + 8) = 0x750C1ABFB0567FDBLL;
  v5 = v2 ^ 0xE2617E9u;
  STACK[0xAE8] = v5;
  LODWORD(v5) = ((v5 + 10) ^ 0xFEEFBAFE) + ((2 * (v5 + 10)) & 0xFDDF75FC) + 192619838 + ((v1 + 423704815) & 0xE6BEBFEB);
  *(a1 + 16) = v5;
  v6 = (*(v3 + 8 * (v1 ^ 0x66C0)))(v5 + ((v1 + 614560850) & 0xDB5E4EFF ^ 0xF594E5B3));
  v7 = STACK[0x320];
  *(a1 + 24) = v6;
  return (*(v7 + 8 * ((16 * (v6 != 0)) | (32 * (v6 != 0)) | v1)))();
}

uint64_t sub_244901E68()
{
  STACK[0x310] = STACK[0x788] - 0x750C1ABFB0567FC3;
  v2 = SLOWORD(STACK[0xACE]);
  LODWORD(STACK[0x2B0]) = v2;
  LODWORD(STACK[0x290]) = v2 ^ 0xFFFFDD8C;
  LODWORD(STACK[0x2E0]) = STACK[0xAD0];
  STACK[0x300] = STACK[0x328] - 0x750C1ABFB0567FC3;
  v3 = SLOWORD(STACK[0xB06]);
  LODWORD(STACK[0x2A0]) = v3;
  LODWORD(STACK[0x280]) = v3 ^ 0x260E;
  STACK[0x2F0] = STACK[0x580] - 0x750C1ABFB0567FC3;
  v4 = *(v1 + 8 * (v0 - 9471));
  v5 = STACK[0x31C];
  LODWORD(STACK[0x270]) = LODWORD(STACK[0x31C]) - 4150;
  LODWORD(STACK[0x260]) = v5 + 7641;
  LODWORD(STACK[0x250]) = v5 ^ 0xFFFFF8C9;
  LODWORD(STACK[0x240]) = v5 + 7597;
  LODWORD(STACK[0x230]) = v5 - 8708;
  LODWORD(STACK[0x220]) = (v5 - 10926) ^ 0xD427;
  LODWORD(STACK[0x210]) = v5 - 8284;
  LODWORD(STACK[0x2C0]) = 237377517;
  LODWORD(STACK[0x2D0]) = STACK[0xB08];
  LODWORD(STACK[0x200]) = STACK[0x65C];
  return v4(0xF1BE72C0C63F4F2);
}

uint64_t sub_2449021C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + v3) = v5;
  *(a3 - 0x146375EC570BCC2FLL) = v5;
  return (*(v7 + 8 * (v6 ^ (v4 + 1981) ^ (2093 * (v6 > 0xD33EF34C)))))(a1, a2, 1216124116);
}

uint64_t sub_244902224()
{
  v2 = STACK[0x468];
  v3 = *(STACK[0x468] - 0x750C1ABFB0567FD3);
  v4 = STACK[0x788];
  *(v4 - 0x750C1ABFB0567FD3) = v3;
  *(v4 - 0x750C1ABFB0567FDBLL) = *(v2 - 0x750C1ABFB0567FDBLL);
  return (*(v1 + 8 * (((v3 == 0x750C1ABFB0567FDBLL) * ((v0 + 1100) ^ 0xDFF83A44 ^ (v0 - 537320940) & 0xFFFEFBFC)) ^ v0)))();
}

uint64_t sub_2449024DC()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x6E99)))();
  v3 = STACK[0x320];
  *(STACK[0x468] - 0x750C1ABFB0567FC3) = 0;
  return (*(v3 + 8 * v0))(v2);
}

uint64_t sub_24490257C@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(v2 + 8 * (v1 ^ 0x50EC)))(a1 - 0x750C1ABFB0567FDBLL);
  v4 = STACK[0x320];
  STACK[0x468] = 0x750C1ABFB0567FDBLL;
  return (*(v4 + 8 * v1))(v3);
}

uint64_t sub_2449025D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v6 - 0x750C1ABFB0567FDBLL) = v4;
  *(v4 - 0x750C1ABFB0567FD3) = *(a3 + v3);
  *(a3 + v3) = v4;
  return (*(v7 + 8 * v5))(a1, a2, 1216124116);
}

uint64_t sub_2449026B8()
{
  v3 = (*(v2 + 8 * (v1 + 21225)))();
  v4 = STACK[0x320];
  *(v0 - 0x750C1ABFB0567FC3) = 0;
  return (*(v4 + 8 * v1))(v3);
}

uint64_t sub_244902918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = STACK[0x568];
  STACK[0x6B0] = STACK[0x568];
  return (*(v6 + 8 * ((((v5 - 13249) ^ 0x10A6 ^ ((v5 - 13387) | 0x1000)) * (v7 == 0)) ^ v5)))(a1, a2, a3, a4, a5, 1216081105);
}

uint64_t sub_244902964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W8>)
{
  v9 = (v7 | ((v7 < 0x7A1864D4) << 32)) + 0x75B6D33511902007;
  STACK[0xB40] = v9;
  STACK[0xB48] = v6;
  return (*(v8 + 8 * ((5537 * (v9 - v6 + ((a6 + 3958) ^ 0x37A2F226F412093) < 0xFFFFFFFFFFFFFFF6)) ^ a6)))(a1, a2, a3, a4, a5, 1216081110);
}

uint64_t sub_244902A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0x7BC]) = a6;
  STACK[0x450] = STACK[0x738];
  STACK[0x4A0] = &STACK[0x450];
  LODWORD(STACK[0x4B0]) = 1109901556;
  return (*(v7 + 8 * v6))(1569933550);
}

uint64_t sub_2449031E0()
{
  v2 = STACK[0x750];
  v3 = *(STACK[0x750] - 0x750C1ABFB0567FD3);
  v4 = STACK[0x328];
  *(v4 - 0x750C1ABFB0567FD3) = v3;
  *(v4 - 0x750C1ABFB0567FDBLL) = *(v2 - 0x750C1ABFB0567FDBLL);
  return (*(v1 + 8 * ((((v0 ^ 0xCB ^ (v3 == 0x750C1ABFB0567FDBLL)) & 1) * ((v0 ^ 0x1C5) - 19749)) ^ v0)))();
}

uint64_t sub_2449033FC()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x1AA9)))();
  v3 = STACK[0x320];
  *(STACK[0x750] - 0x750C1ABFB0567FC3) = 0;
  return (*(v3 + 8 * v0))(v2);
}

uint64_t sub_244903494@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(v2 + 8 * (v1 + 17623)))(a1 - 0x750C1ABFB0567FDBLL);
  v4 = STACK[0x320];
  STACK[0x750] = 0x750C1ABFB0567FDBLL;
  return (*(v4 + 8 * (((LODWORD(STACK[0x3A4]) == (((v1 + 829) | 0x640) ^ 0x487C8AB2)) * (((v1 + 200607865) & 0xF40AFB9F) + 6311)) ^ v1)))(v3);
}

uint64_t sub_24490357C()
{
  v3 = (*(v2 + 8 * (v0 ^ 0x47AF)))();
  v4 = STACK[0x320];
  *(v1 - 0x750C1ABFB0567FC3) = 0;
  return (*(v4 + 8 * v0))(v3);
}

uint64_t sub_244903684(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(STACK[0x604]) = a3;
  STACK[0x410] = STACK[0x3E8];
  STACK[0x4A0] = &STACK[0x410];
  LODWORD(STACK[0x4B0]) = 1109901552;
  return (*(v4 + 8 * v3))();
}

uint64_t sub_244903728@<X0>(void *a1@<X8>)
{
  *(v3 - 0x750C1ABFB0567FDBLL) = v1;
  *(v1 - 0x750C1ABFB0567FD3) = *a1;
  return (*(v4 + 8 * v2))();
}

uint64_t sub_244903824()
{
  v2 = *(STACK[0x768] - 0x750C1ABFB0567FC3);
  STACK[0x598] = v2;
  return (*(v1 + 8 * (((v2 == 0) * ((v0 - 1846876304) ^ 0x6E14C80D ^ (v0 - 1846876304) & 0x6E14FFE4 ^ 0xFFFFC83D)) ^ v0)))();
}

uint64_t sub_2449038A8@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 | ((v1 < 0xA6B181C) << 32)) + 0x4F215ACEBA528DA2;
  STACK[0xB20] = v3;
  v4 = STACK[0x558];
  STACK[0xB28] = STACK[0x558];
  return (*(v2 + 8 * ((27 * (((((a1 | ((a1 + 9) << 32)) & ~(v3 - v4 - 0x10AD86646EDB1AELL) | ((v3 - v4 - 0x10AD86646EDB1AELL) ^ (((a1 + 138) | 0x18u) - 153) | a1 | ((a1 + 9) << 32)) & (v3 - v4 - 0x10AD86646EDB1AELL - (a1 | ((a1 + 9) << 32)))) >> ((a1 - 22) ^ 0xDF)) & 1) == 0)) ^ (a1 + 2293))))();
}

uint64_t sub_2449039C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LODWORD(STACK[0xB34]) = v3;
  STACK[0xB38] = v5;
  v9 = a3 == v6 || v5 == 0;
  return (*(v7 + 8 * ((v9 * ((v4 + 2270) ^ 0x7E04 ^ (2703 * (v4 ^ 0x2F05)))) ^ v4)))(a1, a2, 1216081105);
}

uint64_t sub_244903BA4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  STACK[0x4D8] = *v2;
  return (*(v4 + 8 * (((v5 == 0x750C1ABFB0567FDBLL) * (v3 - 24510 + ((v3 - 13118) | 0x2345))) | (v3 + 4592))))(a1, a2, 1216081113);
}

uint64_t sub_2449043D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  STACK[0x548] = v6;
  LODWORD(STACK[0x6A4]) = v5;
  STACK[0x870] = v4;
  LODWORD(STACK[0x3CC]) = v3;
  return (*(v7 + 8 * (((v4 != 0) * ((a3 + 7358) ^ 0x3A94)) ^ a3)))(a1, a2, 1216081105);
}

uint64_t sub_244904424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W3>, int a4@<W8>)
{
  LODWORD(STACK[0x82C]) = v5;
  v7 = ((29 * (a4 ^ 0x1D7E)) ^ ((a4 - 7106) | 0x3880) ^ 0x40A7C4AB) + v5;
  v8 = v4 + 261657542;
  v9 = v8 < a3;
  v10 = v7 < v8;
  if (v9 != v7 < a3)
  {
    v10 = v9;
  }

  return (*(v6 + 8 * ((13878 * v10) ^ a4)))(a1, a2, 1216124116);
}

uint64_t sub_244904728()
{
  v5 = v1 + 40 * v0;
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  STACK[0x740] = STACK[0x548];
  LODWORD(STACK[0x40C]) = v6;
  STACK[0x848] = v3;
  LODWORD(STACK[0x5F4]) = v7;
  LODWORD(STACK[0x444]) = 996453559;
  return (*(v4 + 8 * (v2 - 3659)))();
}

uint64_t sub_2449048C4()
{
  v2 = (v0 - 2372) | 3;
  STACK[0x3C0] = *(v1 + 8 * v2);
  return (*(v1 + 8 * (v2 ^ 0x69A ^ (4243 * ((((v2 ^ 0x13F9) - 1153612754) ^ v2) != -2138921786)))))();
}

void sub_244904944(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = *(a1 + 32) == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v1 = *(a1 + 16) + 412655981 * (((a1 | 0xFAA6D145) - a1 + (a1 & 0x5592EBA)) ^ 0x37DFC4C7);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_244904A50@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, unint64_t *a8, unint64_t *a9, int a10, int a11, int a12, uint64_t a13)
{
  v19 = v16[5] + v15;
  v20 = 1143492667 * ((((2 * (&a6 ^ 0x292836D5)) | 0xEC566FD2) - (&a6 ^ 0x292836D5) + 164939799) ^ 0xC0281730);
  a6 = v20 + ((2 * (*v16 - v15)) & 0xBFF9F3FE ^ 0x1A01616E) - 402917480 + ((*v16 - v15) ^ (((v18 - 1216112482) ^ 0x3542) - 218352360));
  a13 = v13;
  a7 = a1;
  a8 = &STACK[0x6C24B3BD0557B8B9];
  a11 = (v14 + v18 + 918) ^ v20;
  a12 = v20 + v19 + 124467440 + ((-869814822 - 2 * v19) | 0x2501E045);
  a9 = &STACK[0x597F48B5D94E0D20];
  v21 = (*(v17 + 8 * (v18 - 1216101071)))(&a6);
  return (*(v17 + 8 * ((26591 * (((a10 - v18) | (v18 - a10)) >= 0)) ^ (v18 - 1216112440))))(v21);
}

uint64_t sub_244904BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, unsigned int a13, char a14, uint64_t a15, int a16, uint64_t a17, char *a18)
{
  a15 = a12;
  a17 = a9;
  a18 = &a10;
  a13 = v20 - 1459227061 * ((&a13 - 2 * (&a13 & 0x7D799CB3) + 2105121971) ^ 0x7741B67A) + 1707;
  a14 = 1;
  v21 = (*(v18 + 8 * (v20 ^ 0x41E0)))(&a13);
  return (*(v18 + 8 * (((a16 == v20 + 5442 + v19) * ((v20 - 5148) ^ 0x410)) ^ v20)))(v21);
}

uint64_t sub_244904C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, int a15, unint64_t a16, unint64_t *a17)
{
  v20 = 1649972239 * ((~v19 & 0x85754206574BFACDLL | v19 & 0x7A8ABDF9A8B40532) ^ 0xE4617C1D8CF3D6B5);
  a16 = *(v17 + 8 * v18) - v20;
  a17 = &STACK[0x6EFFD31DA51BA2F4];
  a14 = a10;
  a13 = v20 - 721055077 + v18;
  v21 = (*(v17 + 8 * (v18 + 21954)))(&a13);
  return (*(v17 + 8 * ((v18 + 9588) ^ v18 ^ ((a15 == 1216124116) * (((v18 + 9500) | 0x442) - 7416)))))(v21);
}

uint64_t sub_244904DCC()
{
  v4 = *(v1 + 8 * (v2 - 10543));
  v5 = 715682041 * (&v9 ^ 0x79D18325F546FB52);
  v9 = v8;
  v10 = (v2 + 2094765956) ^ v5;
  v11 = v4 - v5;
  (*(v1 + 8 * (v2 ^ 0x7494)))(&v9);
  v11 = *(v1 + 8 * (v2 - 10543)) - 715682041 * ((((2 * &v9) | 0x69561BAF631DCDC6) - &v9 - 0x34AB0DD7B18EE6E3) ^ 0x4D7A8EF244C81DB1);
  v10 = (v2 + 2094765956) ^ (715682041 * ((((2 * &v9) | 0x631DCDC6) - &v9 + 1316034845) ^ 0x44C81DB1));
  v9 = v7;
  result = (*(v1 + 8 * (v2 + 11380)))(&v9);
  *(v0 + 24) = v3;
  return result;
}

uint64_t sub_244904EF0(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(&off_278E1E490 + ((49 * ((qword_27EDF1468 - dword_27EDF08F0) ^ 0x27)) ^ byte_244FB9690[byte_244F6B4B0[(49 * ((qword_27EDF1468 - dword_27EDF08F0) ^ 0x27))] ^ 0xB5]) + 1139);
  v3 = 49 * ((qword_27EDF1468 - *v2) ^ 0x27);
  v4 = *(&off_278E1E490 + (byte_244F1BEB4[(byte_245010C34[v3 - 4] ^ 0x78) - 4] ^ v3) + 694);
  v5 = 2085698353 * ((*v4 + *v2) ^ &v11 ^ 0xE03D7A67A7B7BC27);
  *v2 = v5;
  *v4 = v5;
  v6 = *(&off_278E1E490 + ((49 * (dword_27EDF08F0 ^ 0x27 ^ qword_27EDF1468)) ^ byte_244F6B2B0[byte_244F1BDB0[(49 * (dword_27EDF08F0 ^ 0x27 ^ qword_27EDF1468))] ^ 7]) - 110);
  v7 = *(v6 + 8672);
  v8 = 1649972239 * (((&v12 | 0xDBF8767387E91E23) - &v12 + (&v12 & 0x2407898C7816E1D8)) ^ 0xBAEC48685C51325BLL);
  v12 = v8 - 721054033;
  v13 = a1;
  v15 = v7 - v8;
  v16 = a2;
  v9 = 49 * (*v2 ^ 0x27 ^ *v4);
  (*(v6 + 8 * ((byte_244FB969C[(byte_244F6B4BC[v9 - 12] ^ 0x6F) - 12] ^ v9) + 22927) - 8))(&v12);
  return v14;
}

uint64_t sub_24490519C()
{
  v5 = v3 + v2;
  v6 = *(v1 + 28);
  v7 = *(v1 + 20);
  v8 = *(v1 + 8);
  *(v8 + 8) = v0;
  *(v8 + 12) = v7;
  *(v8 + 20) = v6;
  return (*(v4 + 8 * v5))();
}

uint64_t sub_2449051C4()
{
  v4 = v2 - 981579924;
  v5 = v2 + v1;
  v7 = *(v0 + 8) == 0x58A0B944F98C117 || *(v0 + 32) == 0x65F2B306F7450B35;
  return (*(v3 + 8 * ((4 * ((v7 ^ v4) & 1)) & 0xEF | (16 * ((v7 ^ v4) & 1)) | v5)))();
}

uint64_t sub_244905228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v3 & 0xB87331FF;
  v7 = v2 == (v5 ^ 0xA35) + 447204046 && *(a2 - 0x65F2B306F7450B35) == 447214964;
  return (*(v4 + 8 * ((30812 * v7) ^ v5)))(a1);
}

uint64_t sub_2449052DC@<X0>(uint64_t a1@<X8>, _DWORD *a2)
{
  *(a1 - 0x65F2B306F7450B2DLL) = v4;
  *(a1 - 0x65F2B306F7450B25) = v3;
  *a2 = v2;
  return (*(v6 + 8 * v5))();
}

uint64_t sub_244905358@<X0>(int a1@<W8>, uint64_t a2, int a3, unsigned int a4)
{
  v8 = v4 - 670;
  *(*(v5 + 8 * (v4 - 9941)) - 4) = *(v5 + 8 * ((v4 - 670) ^ 0x2E10)) - 4;
  **(v5 + 8 * (v4 - 10336)) = *(v5 + 8 * (v4 - 10701)) - 4;
  **(v5 + 8 * ((v4 - 670) ^ 0x2986)) = *(v5 + 8 * (v4 - 10001));
  *(*(v5 + 8 * (v4 - 9770)) - 4) = *(v5 + 8 * ((v4 - 670) ^ 0x2C42)) - 4;
  *(*(v5 + 8 * (v4 - 10519)) - 4) = *(v5 + 8 * ((v4 - 670) ^ 0x2CBD)) - 4;
  *(*(v5 + 8 * (v4 - 10663)) - 4) = *(v5 + 8 * ((v4 - 670) ^ 0x2B18));
  *(*(v5 + 8 * (v4 - 9222)) - 4) = *(v5 + 8 * (v4 - 9335));
  *(*(v5 + 8 * (v8 ^ 0x2CBE)) - 4) = *(v5 + 8 * (v4 - 9376)) - 12;
  a4 = (v4 - 7843) ^ (((&a4 & 0xBF81F04A | ~(&a4 | 0xBF81F04A)) ^ 0x9BC623CD) * a1);
  v9 = (*(v6 + 8 * ((v4 - 670) ^ 0x71F2)))(&a4);
  *v7 = 1;
  return (*(v6 + 8 * v8))(v9);
}

void sub_2449054D0()
{
  v0 = MEMORY[0x28223BE20]();
  v1 = *v0 ^ (1659165839 * ((-2 - ((v0 | 0x94BF6461) + (~v0 | 0x6B409B9E))) ^ 0x70348511));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_2449055B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0xEF0] = *(a6 - 0x49AA6D12F2E39796);
  STACK[0xF30] = *(a6 - 0x49AA6D12F2E39776);
  STACK[0xEF8] = *(a6 - 0x49AA6D12F2E39766);
  v8 = *(a6 - 0x49AA6D12F2E3975ELL);
  STACK[0xF18] = *(a6 - 0x49AA6D12F2E39756);
  STACK[0xF08] = *(a6 - 0x49AA6D12F2E39746);
  v9 = *(a6 - 0x49AA6D12F2E3973ELL);
  STACK[0xF40] = *(a6 - 0x49AA6D12F2E39736);
  v10 = *(a6 - 0x49AA6D12F2E3972ELL);
  STACK[0xE98] = *(a6 - 0x49AA6D12F2E39726);
  STACK[0xE90] = *(a6 - 0x49AA6D12F2E3971ELL);
  STACK[0xF10] = *(a6 - 0x49AA6D12F2E3970ELL);
  return (*(v7 + 384 * (v6 ^ 0x4689)))(a1, v9, v10, v8);
}

uint64_t sub_24490593C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0xE80]) = v10;
  LODWORD(STACK[0x7F4]) = v9;
  STACK[0x7F8] = v8;
  v13 = *(v11 + 8 * (((21 * (v7 ^ 0x4660) - 7163) * ((**(v12 + 8 * (v7 - 18233)) & 1) == 0)) ^ v7));
  v14 = (v7 - 16524);
  v15 = *(v12 + 8 * v14);
  STACK[0xC40] = v15;
  return v13(a1, v13, v14, a4, a5, a6, a7, v15);
}

uint64_t sub_2449059D0@<X0>(uint64_t a1@<X7>, _BYTE *a2@<X8>)
{
  *(*a1 + 28) = 0;
  *(v5 + 48) = 0;
  v8 = *v6;
  *(v4 + 221) = -65;
  *(v5 + 82) = 73;
  *(v5 + 66) = -9;
  v8[369] = -114;
  v8[147] = 27;
  v8[107] = -27;
  *(v5 + 1) = -124;
  *(v5 + 4) = 114;
  v8[373] = -86;
  *(v5 + 95) = 105;
  v8[173] = -66;
  *(v5 + 104) = -51;
  *(v4 + 45) = 58;
  v8[23] = 126;
  v8[267] = 34;
  v8[70] = -100;
  v8[182] = -28;
  v8[259] = -19;
  v8[292] = -109;
  *(v4 + 96) = -21;
  *(v4 + 81) = 103;
  *(v4 + 16) = -45;
  v8[296] = -107;
  v8[144] = 97;
  *(v5 + 44) = 121;
  v8[181] = -25;
  *(v5 + 43) = -84;
  *(v4 + 135) = 60;
  *(v4 + 194) = -82;
  *(v5 + 19) = -88;
  *(v5 + 46) = 104;
  *(v5 + 98) = -7;
  *(v5 + 3) = -123;
  v8[330] = -35;
  v8[325] = -44;
  *(v4 + 191) = 31;
  v8[243] = -29;
  *(v4 + 174) = -110;
  *(v4 + 133) = 67;
  *(v5 + 102) = -51;
  v9 = *v6;
  v9[321] = -96;
  v9[9] = 74;
  *(v5 + 110) = 86;
  *(v4 + 119) = -24;
  v9[14] = -80;
  v9[125] = 14;
  *v9 = 38;
  *(v4 + 22) = -115;
  v9[317] = -27;
  *(v5 + 109) = -31;
  *(v4 + 215) = -67;
  *(v4 + 178) = 84;
  *(v5 + 84) = 42;
  *(v4 + 147) = -89;
  *(v4 + 10) = 73;
  *(v4 + 210) = -44;
  *(v5 + 63) = -47;
  v9[1] = -122;
  v9[51] = 15;
  *(v5 + 17) = -3;
  *(v5 + 70) = 37;
  *(v5 + 88) = -125;
  *(v4 + 98) = 99;
  *(v5 + 69) = -48;
  *(v4 + 11) = 125;
  *(v4 + 180) = -94;
  v9[261] = -123;
  v9[285] = -55;
  *(v4 + 127) = 6;
  *(v4 + 42) = 81;
  *(v4 + 78) = -61;
  *(v4 + 56) = 51;
  v9[346] = -48;
  *(v4 + 110) = -51;
  *(v4 + 59) = -42;
  *(v5 + 67) = 44;
  *(v4 + 92) = -93;
  v9[278] = -27;
  *(v5 + 64) = -83;
  *(v4 + 150) = 90;
  *(v4 + 68) = 0;
  v10 = *v6;
  *(v4 + 185) = -1;
  *(v4 + 177) = 84;
  *(v4 + 84) = 110;
  *(v4 + 15) = 25;
  v10[400] = 17;
  *(v5 + 103) = -41;
  *(v5 + 68) = 0x80;
  *(v5 + 111) = -62;
  v10[398] = -35;
  *(v4 + 28) = -60;
  *(v5 + 8) = -34;
  *(v5 + 80) = -127;
  *(v5 + 13) = -3;
  v10[17] = -8;
  v10[315] = 57;
  v10[395] = -52;
  *(v5 + 5) = -43;
  *(v4 + 168) = -26;
  v10[358] = 64;
  v10[115] = -82;
  *(v4 + 125) = 120;
  v10[78] = -29;
  *(v4 + 38) = 69;
  *(v5 + 105) = -80;
  *(v4 + 115) = 97;
  *(v5 + 87) = 13;
  v10[294] = -123;
  v10[137] = 54;
  v10[162] = -117;
  v10[389] = 101;
  *(v4 + 14) = -30;
  v10[223] = -127;
  v10[318] = -112;
  *(v5 + 2) = 67;
  v10[411] = 98;
  *(v4 + 31) = 72;
  *(v5 + 11) = -8;
  *(v4 + 182) = -102;
  *(v4 + 53) = -70;
  v10[323] = -119;
  *a2 = v2;
  return (*(v7 + 8 * (v3 ^ 0x6E31)))();
}

uint64_t sub_244905DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x1DE0] = v9;
  STACK[0x1DE8] = v10;
  STACK[0x1DF0] = v11;
  STACK[0x1DF8] = v12 - 0x6830C533A7E43785;
  STACK[0x1E00] = v13;
  STACK[0x1E08] = v16;
  LODWORD(STACK[0x1998]) = v18 + 16;
  LODWORD(STACK[0x199C]) = v18 - 8;
  v21 = *(*a8 + 28);
  LODWORD(STACK[0x19A8]) = v18;
  LODWORD(STACK[0x19AC]) = v18 + 48;
  v22 = ((2 * v21) & 0x3F5CEFEE) + (v21 ^ 0x9FAE77F7);
  LODWORD(STACK[0xF4C]) = v22 + 2088234976;
  v23 = *(v15 + 1);
  STACK[0xC48] = v17;
  v24 = *v17;
  v25 = *(v20 + 8 * (v8 ^ 0x1D4D));
  v26 = *(v25 + 14 + (v8 ^ 0xFC ^ ((v23 >> 2) | (v23 << 6)) ^ 0x1Eu));
  v27 = *(v15 + 104);
  v28 = (*(*v17 + 147) << 16) | (*(v14 + 96) << 8) | *(*v17 + 23) | (*(*v17 + 369) << 24);
  v29 = *(*v17 + 107);
  v30 = ((*(*v17 + 182) >> 2) | (*(*v17 + 182) << 6)) ^ 0x95;
  STACK[0xEB8] = v25 + 14;
  LODWORD(v30) = *(v25 + 14 + v30);
  v31 = ((2 * v30) & 0xFFFFFFBF ^ 0xFFFFFF8E) + (v30 ^ 0x18);
  v32 = (8 * v30) ^ 0xFFFFFFB3 ^ (((8 * v30) ^ 0x7F) + 1);
  v33 = v27 << 40;
  LODWORD(v27) = v31 + ((8 * v30) ^ (v30 - ((2 * v30) & 0xFFFFFFAE) + 87) ^ 0xFFFFFFEF);
  LODWORD(v27) = (v27 - ((2 * v27 + 68) & 0x66) + 85) ^ v32;
  STACK[0xEA8] = v25 + 276;
  STACK[0xEC0] = v24;
  STACK[0xEB0] = v25 + 810;
  STACK[0xC58] = v14;
  STACK[0xCA8] = v15;
  LODWORD(STACK[0x19A0]) = v18;
  LODWORD(STACK[0x19A4]) = v18;
  STACK[0xEC8] = (v22 + 1615955977) << 32;
  v34 = *(v19 + 8 * v8);
  STACK[0xED0] = v19;
  return v34((v28 | ((((2 * (v26 ^ (8 * v26))) & 0x22 ^ 0x20) + (v26 ^ (8 * v26) ^ 0xEB)) << 32) | v33 | (v29 << 48)) ^ ((((v31 + ((51 - v27 - ((-2 * v27) & 0x66)) ^ v32) + 33) ^ 0x3Du) - 111) << 56) ^ 0x134389B8479D2AF5);
}

uint64_t sub_244906488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, int a3@<W4>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  STACK[0xED8] = (a3 - 2049961534) & 0x7A2FFF37;
  v7 = (v5 ^ 0x5E9898E11D8AB4E6) - ((((v5 ^ 0x5E9898E11D8AB4E6) << (((a3 - 62) & 0x37u) - 22)) + 2) & 0x9D6F362B12B945C6) - 0x314864EA76A35D1CLL;
  v8 = v7 & 0x27;
  v9 = v7 & 0x27 ^ (((a3 - 62) ^ 0x54) - 104);
  v10 = v7 ^ (0x6348D730DC8E442DLL - (v5 ^ 0x35F65B05B144EA53) - ((0x29227836A6634294 - 2 * (v5 ^ 0x35F65B05B144EA53)) & 0x9D6F362B12B945C6));
  v11 = (v10 - 0x5E9898E11D8AB4E7 - ((2 * v10) & 0x42CECE3DC4EA9632)) ^ v5;
  v12 = a1 ^ 0x134389B846000000;
  *(&v13 + 1) = a1 ^ 0x19D2AF5;
  *&v13 = a1 ^ 0x134389B846000000;
  v14 = v11 - ((2 * v11 + 0x29227836A6634294) & 0xF441E153C53C411ELL) - 0x714DD33ACA303E27;
  v15 = (v14 ^ 0xFA20F0A9E29E208FLL) << v9 << (v8 ^ 4u);
  v16 = v14 ^ a4;
  v17 = v15 ^ (v14 >> 25);
  v18 = v17 ^ ((v13 >> 25) - ((2 * (v13 >> 25)) & 0xD848AFC23218A900) + 0x6C2457E1190C5480);
  v19 = a5 ^ ((LODWORD(STACK[0xEE0]) - 749991508) + STACK[0xEC8]);
  v20 = v19 ^ a2;
  v21 = (v16 ^ 0x3A13CC50B4ACBEF2) & (a4 ^ 0x3FCCC306A9CD6182);
  v22 = a2 ^ 0x1656E5C4E018E9A3;
  *(&v13 + 1) = v18 ^ 0x3E44DCE9E5;
  *&v13 = v18 ^ 0x81B7438000000000;
  v23 = (v13 >> 39) - ((2 * (v13 >> 39)) & 0xE7D982BEF8FABB0) + 0x73ECC15F7C7D5D8;
  v24 = v19 ^ a2 ^ 0xA26E48D3CB5AA050;
  if (v12 >> 25)
  {
    v25 = v22;
  }

  else
  {
    v25 = v24;
  }

  v26 = v23 ^ (v25 ^ 0x910D8F33482E6C19) & (v19 ^ 0x4BC752E8D4BDB60CLL);
  v27 = (v23 ^ 0x5B625BCD00C6699FLL) & (v19 ^ 0xB438AD172B4249F3) ^ v16;
  v28 = (((v23 ^ 0xA49DA432FF399660) & (v16 ^ 0xC5EC33AF4B53410DLL)) - ((2 * ((v23 ^ 0xA49DA432FF399660) & (v16 ^ 0xC5EC33AF4B53410DLL))) & 0x7126F0469F648064) - 0x476C87DCB04DBFCELL) ^ a4;
  v29 = v27 ^ v26;
  v30 = v19 ^ 0x4C00B0B03E880C34 ^ (((a4 ^ 0xC0333CF956329E7DLL) & (v20 ^ 0xCC9C381F7C8B33B6)) - ((2 * ((a4 ^ 0xC0333CF956329E7DLL) & (v20 ^ 0xCC9C381F7C8B33B6))) & 0xF0703B4E2B948B8ELL) - 0x7C7E258EA35BA39);
  v31 = v26 ^ (v30 - ((2 * v30) & 0x44B055CE03D383CLL) + 0x22582AE701E9C1ELL);
  v32 = v21 ^ v20;
  v33 = (v28 - ((2 * v28) & 0x30B0394A591D1356) + 0x18581CA52C8E89ABLL) ^ v21 ^ v20;
  *(&v35 + 1) = v21 ^ v20;
  *&v35 = v21 ^ v20 ^ 0x5329B3BBC488DD58;
  v34 = v35 >> 1;
  *(&v35 + 1) = v33 ^ 0x13814;
  *&v35 = v33 ^ 0x7547F3B82CA00000;
  v36 = v31 ^ (v31 >> 39) ^ (8 * v31) ^ (v31 << 25) ^ (v31 >> 61);
  v37 = v33 ^ __ROR8__(v33, 10) ^ (v35 >> 17);
  v38 = v32 ^ __ROR8__(v32, 6) ^ v34;
  v39 = v36 ^ 0xACBE3E1C8BA07432 ^ v38;
  v40 = v27 & 0xFF7FFFFFFFFFFFFFLL ^ (v27 << 23) ^ (v27 >> 7) ^ (v27 >> 41) ^ (v27 & 0x80000000000000 | (v27 << 57));
  v41 = v37 ^ v40;
  v42 = (v29 >> 28) ^ (v29 >> 19) ^ (v29 << 36) ^ v40 ^ (0x200000000001 * (v29 ^ 0x5CEB87CE653E76DELL) - (((v29 << 46) ^ 0x9DB7800000000000) & ((2 * v29) ^ 0xB9D70F9CCA7CEDBCLL)));
  v43 = v42 ^ (v36 ^ 0xE80CCB93A160996FLL) & (v38 ^ 0x326515752B9AFE2DLL);
  v44 = (v37 ^ 0x8FA55DBB3D55EFA5) & (v40 ^ 0x60685076D6DC9A2) ^ v39;
  v45 = v41 ^ (v42 ^ 0xAA1E1C802CD3861CLL) & (v36 ^ 0x17F3346C5E9F6690);
  v46 = v43 ^ 0xD016B9AFA44656C4 ^ (((v37 ^ 0x705AA244C2AA105ALL) & (v39 ^ 0x76D7E0FA015A1370)) - ((2 * ((v37 ^ 0x705AA244C2AA105ALL) & (v39 ^ 0x76D7E0FA015A1370))) & 0xBEEB5A0EED45E4ELL) - 0x7A08A52F8895D0D9);
  v47 = (v46 - ((2 * v46) & 0x769A14E1AA7E2544) - 0x44B2F58F2AC0ED5ELL) ^ v36 ^ 0xACBE3E1C8BA07432;
  v48 = v37 ^ v44 ^ 0xFEACEEE79A4FBFAFLL ^ (((v41 ^ 0x89A3D8BC50382607) & (v42 ^ 0x55E1E37FD32C79E3)) - ((2 * ((v41 ^ 0x89A3D8BC50382607) & (v42 ^ 0x55E1E37FD32C79E3))) & 0xEF09E3C4C9D4A640) + 0x7784F1E264EA5320);
  v49 = v45 ^ v43;
  v50 = (v45 ^ 0x765C2743AFC7D9F8) - 0x2FC94EBEF2D5E804 - ((2 * v45) & 0xA06D62821A542FF8 ^ 0xA02842821A0423F0) - 0x511543EA6F4DBE0DLL - 2 * (((v45 ^ 0x765C2743AFC7D9F8) - 0x2FC94EBEF2D5E804 - ((2 * v45) & 0xA06D62821A542FF8 ^ 0xA02842821A0423F0)) & 0x2EEABC1590B241F7 ^ ((v45 ^ 0x765C2743AFC7D9F8) - 0x2FC94EBEF2D5E804) & 4);
  *(&v35 + 1) = v47 ^ (8 * v47) ^ 0x2C5AE43A7C048F4FLL;
  *&v35 = v47 ^ (8 * v47);
  v51 = (v35 >> 62) - ((2 * (v35 >> 62)) & 0x1EE12EFFEFD520ALL);
  *(&v35 + 1) = v49 ^ 0xEC6BB7D;
  *&v35 = v49 ^ 0x5D9FD0C30000000;
  v52 = v35 >> 28;
  v53 = ((8476410 - v51) & 0x4000000 | 0xCF1520A95390BA19) ^ (v51 + 0xF70977FF7EA905) & 0xFFFFFFFFFBFFFFFFLL;
  v54 = (((v50 ^ 0xAEEABC1590B241F3) + 32) ^ 0x5F9B7BF97FF3BFE1) - 0x80030101E102480 + ((2 * ((v50 ^ 0xAEEABC1590B241F3) + 32)) & 0xBF36F7F2FFE77FC2);
  *(&v35 + 1) = v53 ^ 1;
  *&v35 = v53 ^ ((v47 >> 59) | 0xF70977FB7EA900);
  v55 = v35 >> 2;
  *&v35 = __ROR8__(v49, 19);
  v56 = ((v52 ^ v35 ^ 0xD76FA0BB3FA187D8) - ((2 * (v52 ^ v35 ^ 0xD76FA0BB3FA187D8)) & 0x65891693BB3C513CLL) - 0x4D3B74B62261D762) ^ v49;
  if ((~v50 & 0x20) != 0)
  {
    v54 = (v50 ^ 0x511543EA6F4DBE13) + 0x579B4BE961E39B61 + ((v50 >> 5 << 6) ^ 0x5DD5782B216483C0);
  }

  v57 = v55 ^ __ROR8__(v47, 39);
  v58 = v54 - 0x579B4BE961E39B61;
  v59 = ((v54 - 0x579B4BE961E39B61) ^ 0x20) + 0x729D5548EB29A0EBLL - 2 * (((v54 - 0x579B4BE961E39B61) ^ 0x20) & 0x729D5548EB29A0EFLL ^ (v54 - 0x579B4BE961E39B61) & 4);
  *(&v61 + 1) = v59 ^ 0x148EB29A0EBLL;
  *&v61 = v58;
  v60 = v61 >> 41;
  *(&v61 + 1) = v59;
  *&v61 = v50;
  v62 = (v61 >> 7) ^ v50 ^ v60;
  v63 = v56 ^ v62;
  *(&v61 + 1) = ~v44;
  *&v61 = v44 ^ 0x8E4200C9ED31F8D4;
  v64 = v61 >> 1;
  *(&v61 + 1) = v44 ^ 0x55555555;
  *&v61 = v44 ^ 0x8E4200C9ED31F8C0;
  v65 = v48 ^ (v48 << 54) ^ __ROR8__(v48, 17) ^ (v48 >> 10);
  v66 = v63 ^ 0x3155E0D7A734496CLL;
  v67 = v62 ^ v65;
  v68 = (((v61 >> 6) ^ v64) - ((2 * ((v61 >> 6) ^ v64)) & 0x909C7CFD6C7389E4) - 0x37B1C18149C63B0ELL) ^ v44 ^ v57;
  v69 = (v67 ^ 0x6FD090377144BD88) & (v63 ^ 0xCEAA1F2858CBB693);
  v70 = v63 ^ (v68 ^ 0x3AB8530CE1AF6B29) & (v57 ^ 0x834B92444558A8F1);
  v71 = (v68 ^ 0xC547ACF31E5094D6) & (v65 ^ 0xE99806A535286707);
  v72 = (v67 ^ 0x902F6FC88EBB4277) & (v65 ^ 0x1667F95ACAD798F8) ^ v68;
  v73 = v66 & (v57 ^ 0x7CB46DBBBAA7570ELL) ^ v67;
  v74 = ((((v70 ^ 0xCEAA1F2858CBB693) - (v70 ^ 0x3FBC7FF16C00C79)) ^ 0xFFFFFFFFFFFFFFFCLL) + (v70 ^ 0xCEAA1F2858CBB693)) ^ v73;
  v75 = v70 ^ v57;
  *(&v61 + 1) = v74 ^ 0x8EBB4277;
  *&v61 = v74 ^ 0x902F6FC800000000;
  v76 = v61 >> 33;
  v77 = v75 ^ (v71 - ((2 * v71) & 0xC8BC2787E2DD2BC8) - 0x1BA1EC3C0E916A1CLL);
  *(&v61 + 1) = v72 ^ 0x38530CE1AF6B29;
  *&v61 = v72 ^ 0x3A80000000000000;
  v78 = v61 >> 55;
  v79 = __ROR8__(v74, 52) & 0xFFFFFFFF80000FFFLL ^ v76;
  *(&v61 + 1) = v78 ^ 0x196;
  *&v61 = v78 ^ 0xF584E767195D8C00;
  v80 = (((v61 >> 9) ^ v69) - ((2 * ((v61 >> 9) ^ v69)) & 0x8A0CDD004AB377C4) - 0x3AF9917FDAA6441ELL) ^ v65;
  *(&v61 + 1) = v79 ^ 0x4A694ACC;
  *&v61 = v79 ^ 0x7F688A5800000000;
  v81 = ((~v72 << 63) | 0x1B584926C0C1DBD7) ^ (v72 >> 1) ^ ((v72 >> 6) ^ 0x2CC88513EEA4564 | v72 ^ 0xB322144FBA91590BLL) ^ (((v72 >> 6) ^ 0x2CC88513EEA4564) & (v72 ^ 0x322144FBA91590BLL) | (v72 << 58));
  v82 = v77 ^ (v77 >> 39) ^ (v77 >> 61) ^ (8 * v77) ^ (v77 << 25);
  v83 = (v73 ^ (v73 >> 7) ^ (v73 << 23) ^ (v73 << 57) ^ 0xB7CB40F7F3F970A6) + ((v73 >> 41) ^ 0x63879B) - 2 * ((v73 ^ (v73 >> 7) ^ 0x7970A6) & ((v73 >> 41) ^ 0x63879B));
  v84 = v83 - 0x5121898CB1C54875 - ((2 * v83) & 0x5DBCECE69C756F16);
  v85 = v80 ^ (v80 << 47) ^ (v80 >> 10) ^ ((v80 >> 17) | (v80 << 54));
  v86 = v85 ^ v84 ^ 0xD3B60CA64AA21986;
  v87 = __ROR8__(v74, 28) ^ (v74 << 45) ^ (v61 >> 31) ^ v84;
  v88 = v82 ^ v81;
  v89 = v82 ^ v81 ^ 0x20CBF5CF0893D548;
  v90 = v85 & 0x200000 ^ 0xEF6FBF5FFF7B3DEFLL;
  v91 = v86 & 0xB0F6FB09E2E2BD9BLL ^ (v85 ^ v84 ^ 0xEFDAAA373FA75849) & (v87 ^ 0x900CD9EBD06F3FFLL);
  v92 = (v85 ^ 0x4104DC44719DEFC2) & (v84 ^ 0xAEDE76734E3AB78BLL);
  v93 = v87 ^ (v82 ^ 0x4E02B6CE151AA21ALL) & (v81 ^ 0x6EC943011D897752);
  v94 = v93 ^ 0xC191A74F8A4061F2;
  v95 = v86 ^ (v87 ^ 0x4609C968A01BB19BLL) & (v82 ^ 0xB1FD4931EAE55DE5);
  v96 = ((v95 ^ 0xC393596E8AFABE30) - (v93 ^ 0x7A656FF9D51EF054 ^ v95)) ^ ((v93 ^ 0x4609C968A01BB19BLL) + 1);
  v97 = (v96 + 0x786791D8D5A42F96 - ((2 * v96) & 0xF0CF23B1AB485F2CLL)) ^ v93 ^ 0xC191A74F8A4061F2;
  v98 = v94 ^ v82 ^ (((v85 ^ 0xBEFB23BB8E62103DLL) & v89) + 0x786791D8D5A42F96 - ((2 * ((v85 ^ 0xBEFB23BB8E62103DLL) & v89)) & 0xF0CF23B1AB485F2CLL));
  v99 = v85 & 0xFFFFFFFFFFDFFFFFLL;
  v100 = v97 + (v95 ^ 0xC393596E8AFABE30);
  v101 = v92 ^ v88;
  v102 = 0x1EDF49716EAB6E96 - v90;
  if ((v91 & (v90 + 0x109040A000A4C211)) == 0)
  {
    v102 = v90 + 0x3FFFCAB16FF4F2B8;
  }

  v103 = v99 ^ 0xBEFB23BB8E42103DLL ^ ((v91 ^ 0x3064A2016000018BLL) - 0x2F6F8A116F5030A7 + v102);
  v104 = v17 & 6;
  v105 = v17 & 6 ^ 4;
  v106 = v92 ^ ~v88;
  v107 = (v103 - ((2 * v103) & 0x421F7074D38D3158) - 0x5EF047C596396754) ^ v101;
  *(&v108 + 1) = v100 ^ 0x364C8;
  *&v108 = v100 ^ 0x5DB38CC630E80000;
  v109 = (v107 ^ 0x7E3BB20A9EAAB21BuLL) >> 17;
  v110 = (v101 ^ 0x2A1A5B246C428DFFLL) >> v105;
  v111 = v100 ^ (v100 << 36) ^ (v108 >> 19);
  v112 = v110 >> (v104 ^ 2u);
  *(&v108 + 1) = (v103 - ((2 * v103) & 0xD38D3158) + 1774622892) ^ v101 ^ 0x170;
  *&v108 = v107 ^ 0x32B63B164CBD5C00;
  v113 = (v108 >> 10) ^ v107 ^ 0x7E3BB20A9EAAB21BLL;
  v114 = ((v98 & 0x59ADFBE0CECE45E8 ^ 0x1884E1C0064A0460) - 2 * ((v98 & 0x2652041F3131BA17 ^ 0x2000000A21011212) & (v98 ^ 0x65204151030A805))) ^ v98 & 0xA652041F3131BA17;
  v115 = v111 & 0x200000000000000 | (v100 >> 28);
  v116 = v101 ^ (v106 << 58) ^ v112;
  v117 = (v114 >> 39) & 0x25AE08 ^ v98 & 0xD01B7FE5FE25AE08;
  v118 = v98 & 0x2FE4801A01DA51F7 ^ (v98 >> 61) ^ (v114 >> 39) & 0x1DA51F7;
  v119 = ((v114 << 25) ^ 0xD5DF9EAFF4000000) - ((2 * ((v114 << 25) ^ 0xD5DF9EAFF4000000)) & 0x66E89BDCEC000000) - 0x4C8BB211888FE13FLL;
  *(&v108 + 1) = v95 ^ 0x1BF33564550;
  *&v108 = v95 ^ 0x4AE4D20000000000;
  v120 = v108 >> 41;
  v121 = v119 & 0xAFE52E071A000000 ^ ((v117 | v118) ^ (8 * v98)) & 0xAFE52E071BAA1F8FLL | ((v117 | v118) ^ (8 * v98)) & 0x501AD1F8E455E070 ^ v119 & 0x501AD1F8E4000000;
  v122 = (v121 ^ 0xDB158693D35C94BELL) - 0x5132F9F6DF1778B7 - ((2 * (v121 ^ 0xDB158693D35C94BELL)) & 0x5D9A0C1241D10E92);
  *(&v108 + 1) = v95 ^ 0x50;
  *&v108 = v95 ^ 0x4AE4D3BF33564500;
  v123 = (v108 >> 7) ^ v95 ^ v120;
  v124 = ((v116 ^ (v101 >> 1)) & 0x4C1A0529B08EFC74 | v116 & 0xB3E5FAD64F71038BLL ^ (v101 >> 1) & 0x33E5FAD64F71038BLL) ^ (v106 << 63);
  v125 = v111 & 0xFDFFFFFFFFFFFFFFLL ^ v123 ^ v115;
  v126 = ((v109 ^ 0x4B0CFE42C0A40DA2 ^ ((((v113 ^ 0x4C8D891CD217EF6BLL) - (v109 ^ 0x4C8DAF5A16998660 ^ v113)) ^ ((v109 ^ 0xFFFFD9B93B7196F4) + 1)) - ((2 * (((v113 ^ 0x4C8D891CD217EF6BLL) - (v109 ^ 0x4C8DAF5A16998660 ^ v113)) ^ ((v109 ^ 0xFFFFD9B93B7196F4) + 1))) & 0x9619B0080854C952) + 0x4B0CD804042A64A9)) + (v113 ^ 0x4C8D891CD217EF6BLL)) ^ (v107 << 47);
  v127 = v126 ^ 0xFDE9D49F174DDF48;
  v128 = v126 ^ 0xFDE9D49F174DDF48 ^ v123;
  v129 = (v121 ^ 0x24EA796C2CA36B41) & (v124 ^ 0x3F1776B65A63CB00);
  v130 = (v128 ^ 0xE64AF8DFDBE465E7) & (v125 ^ 0x19E113FCD885EDFBLL);
  v131 = v122 ^ v124;
  v132 = (v126 ^ 0x5147FFFFFFFFFFFFLL) & (v123 ^ 0x4AE4D3BF33564550) ^ v131;
  v133 = v131 ^ 0x6E258F408574B3B6;
  v134 = v128 ^ (v122 ^ 0xAECD060920E88749) & (v125 ^ 0xE61EEC03277A1204);
  v135 = ((v133 & (v126 ^ 0xAEB8000000000000)) - 0x5132F9F6DF1778B7 - ((2 * (v133 & (v126 ^ 0xAEB8000000000000))) & 0x5D9A0C1241D10E92)) ^ v122;
  v136 = v129 ^ v125;
  v137 = (v135 - ((2 * v135) & 0x81D143B064684F8CLL) - 0x3F175E27CDCBD83ALL) ^ v136;
  v138 = (v130 - ((2 * v130) & 0xA6A3A93E2E9BBE90) + 0x5351D49F174DDF48) ^ v127;
  v139 = (v138 - ((2 * v138) & 0xE421D313210FA688) - 0xDEF16766F782CBCLL) ^ v132;
  v140 = v134 ^ v136;
  v141 = ((v137 << 25) ^ 0x827515E5D4000000) - ((2 * ((v137 << 25) ^ 0x827515E5D4000000)) & 0x83C7FD94E8000000) - 0x3E1C01358B0EACF6;
  v142 = v141 & 0x1D2C07E8E4000000 ^ v137 & 0x1D2C07E8E4E5D369;
  *(&v108 + 1) = v142 ^ 0x480D268;
  *&v108 = v142 ^ 0x42C050840000000;
  v143 = v108 >> 30;
  *(&v108 + 1) = v143 ^ 0x2EBFC7A8BLL;
  *&v108 = v143 ^ 0x6FFD62C800000000;
  v144 = (0x200000000001 * (v140 ^ 0xC348CE448702CC7FLL) - 2 * (((v140 << 45) ^ 0x598FE00000000000) & (v140 ^ 0x4348CE448702CC7FLL))) ^ (v140 << 36);
  v145 = v137 & 0xE2D3F8171B1A2C96 ^ (8 * v137) ^ (v137 >> 39) ^ v141 & 0xE2D3F8171A000000 ^ (v108 >> 34);
  v146 = (v140 >> 19) ^ 0x186919C890E0;
  v147 = (v146 - ((v140 >> 19) ^ 0x702CDF9919C890E0 ^ v144)) ^ ((v144 ^ 0x8FD3380FFFFFFFFFLL) + 1);
  v148 = v134 ^ (v134 << 23) ^ (v134 >> 7) ^ ((v134 >> 41) | (v134 << 57));
  *(&v108 + 1) = v139 ^ 0x271;
  *&v108 = v139 ^ 0x74CB661D8F660000;
  v149 = (v145 ^ 0x20330A8052C7077) + ((v137 >> 61) ^ 2) - 2 * (~v145 & ((v137 >> 61) ^ 2)) + 0x455957D6BACEA346 - ((2 * ((v145 ^ 0x20330A8052C7077) + ((v137 >> 61) ^ 2) - 2 * (~v145 & ((v137 >> 61) ^ 2)))) & 0x8AB2AFAD759D468CLL);
  v150 = v132 ^ (v132 << 58) ^ ((v132 >> 6) ^ (v132 >> 1) | (v132 << 63));
  v151 = v148 ^ (v140 >> 28) ^ ((v144 ^ 0xD4E63B77E189C7F9 ^ (v147 - ((2 * v147) & 0x4995F90FC3138FF2) - 0x5B3503781E763807)) + v146);
  v152 = ((v150 ^ 0xD3BD7077C6EFE5D0) + (v149 ^ v150 ^ 0x96E427A17C214696 | v149 ^ 0xBAA6A82945315CB9) + 1) ^ v151;
  v153 = ((((v152 ^ 0x6C34D652C8BCEF99) - (v152 ^ 0xECAF9061DBFAEDFLL)) ^ 0xFFFFFFFFFFFFFFFCLL) + (v152 ^ 0x6C34D652C8BCEF99)) ^ (v149 ^ 0x455957D6BACEA346) & (v151 ^ 0x93CB29AD37431066) ^ v139 ^ __ROR8__(v139, 10) ^ (v108 >> 17) ^ 0xB2CF5A1A4FD99A2ELL ^ v148;
  return (*(v6 + 8 * (a3 ^ (106 * (STACK[0xEE8] != 292950526)))))(v153 ^ (v153 << 36) ^ ((v153 >> 28) ^ (v153 >> 19) | (v153 << 45)) ^ 0x12AB371621BCFF8DLL);
}

uint64_t sub_244907E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  STACK[0xEE8] = a8;
  LODWORD(STACK[0xEE0]) = *(&STACK[0x1998] + ((v8 + 13112) ^ 0xFFFFFFFFEE89A4C4) + a8);
  return (*(v9 + 8 * v8))();
}

uint64_t sub_244907E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v15 = v11 < v10;
  if (v15 == v13 < v10)
  {
    v15 = v13 < v11;
  }

  return (*(v14 + 8 * ((((((v12 + a6) & v6 ^ v7) * v8) ^ v9) * v15) | v12)))();
}

uint64_t sub_244907F14@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v6 = v5 ^ 0xD925CB3BD6FF5BACLL;
  v7 = a1 ^ v5 ^ 0xD925CB3BD6FF5BACLL;
  v8 = a4 ^ 0x49CFED9584B459C9 ^ (a2 - 13114) ^ v6;
  v9 = (a5 & 0x20000000000 ^ 0x7CFFF7E0B6FE76BFLL) + 2 * (a5 & 0x20000000000);
  v10 = v9 - 0x4805048086281014;
  v11 = (((a3 & 0xA48DF572EBFDC03 ^ 0x808DC52042D0402) - (a3 & 0xA48DF572EBFDC03 ^ 0x2400A470EBDDC02)) ^ 0xFFFFFFFFFFFFF000) + (a3 ^ 0x2928FCF2946D272ELL);
  v12 = v9 - 0x7CFFF7E0B6FE76BFLL;
  v13 = 0xB1FAEB40E7D4DD6ALL - v9;
  if ((v11 & v12) == 0)
  {
    v13 = v10;
  }

  v14 = v8 ^ (v7 ^ 0x90E8ABC3ADF2C040) & (a5 ^ 0xF0B858F553FD56A1) ^ ((v11 - 0x34FAF36030D666ABLL + v13 - 0x1C1A814CF81EF4C1 - ((2 * (v11 - 0x34FAF36030D666ABLL + v13)) & 0xC7CAFD660FC2167ELL)) ^ 0xE3E57EB307E10B3FLL) & (a5 ^ 0xF47A70AAC02A95ELL) ^ v7;
  v15 = ((v14 << 45) ^ 0x9F0E200000000000) + 0x2EEAB8AC70A39510 - ((2 * ((v14 << 45) ^ 0x9F0E200000000000)) & 0x5DD5400000000000);
  return (*(STACK[0xED0] + 8 * (a2 + 3)))(((v15 ^ 0x2EEAB8AC70A39510) + (v14 ^ (v14 >> 28) ^ (v14 >> 19) ^ 0xD06190AFEE3989B2) - 2 * ((v15 ^ 0x2EEAB8AC70A39510) & (v14 ^ (v14 >> 28) ^ (v14 >> 19) ^ 0x506190AFEE3989B2))) ^ (v14 << 36) ^ 0x840C0EA8479D2AF5);
}

uint64_t sub_2449083EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = STACK[0xED8];
  v10 = (v6 >> (STACK[0xED8] ^ 0x1Fu)) ^ 0xE3;
  v11 = STACK[0xC58];
  v11[96] = BYTE1(v5) ^ 0xD5;
  v12 = STACK[0xCA8];
  *(v12 + 1) = BYTE4(v5) ^ 0xAE;
  v13 = STACK[0xEC0];
  v13[369] = BYTE3(v5) ^ 0x66;
  v13[147] = BYTE2(v5) ^ 0x21;
  v13[292] = BYTE3(v6) ^ 0x19;
  v13[107] = BYTE6(v5) ^ 0xE8;
  v11[221] = v6 ^ 0x57;
  v13[23] = v5 ^ 0x78;
  *(v12 + 4) = BYTE2(v6) ^ 0x96;
  v13[267] = HIBYTE(v6) ^ 0xF3;
  v13[182] = HIBYTE(v5) ^ 1;
  *(v12 + 104) = BYTE5(v5) ^ 0xBE;
  *(v12 + 95) = BYTE6(v6) ^ 5;
  *(v12 + 98) = (BYTE5(v6) & 0xD8 ^ 0xB7) & (BYTE5(v6) & 0x27 ^ 0xDE);
  *(v12 + 66) = v10;
  v11[45] = BYTE4(v6) ^ 0x55;
  v14 = STACK[0xEB0];
  v15 = *(STACK[0xEB0] + (v4 ^ 0x56));
  v16 = v15 - ((2 * v15 - 52) & 0xFFFFFFEF);
  *(v12 + 82) = BYTE1(v4) ^ 0x3D;
  v17 = ((16 * (v16 - 35)) ^ (32 * ~(v16 - 27))) & 0x60 ^ (v16 - 35) & 0x6C | ((16 * (v16 - 35)) ^ (32 * ~(v16 - 27))) & 0xFFFFFF9F ^ (v16 - 35) & 0xFFFFFF93;
  HIDWORD(v18) = v17 ^ 6;
  LODWORD(v18) = (v17 ^ 0xFFFFFF9F) << 24;
  v11[81] = v18 >> 28;
  LOBYTE(v17) = *(STACK[0xEB8] + (((v4 >> 10) & 0xC0 | (v4 >> 18) & 0x3F) ^ 0x85));
  v13[70] = BYTE3(v4) ^ 0xA6;
  *(v12 + 19) = 8 * v17 + (v17 ^ ((v17 ^ 5) + 1) ^ 0xFA ^ (((8 * v17) ^ 0x80) - ((8 * v17) ^ (v17 - ((2 * v17) & 8) - 124) ^ 0xFE))) + 17;
  v19 = *(STACK[0xEA8] + (((BYTE4(v4) ^ 0x22) - 50) ^ 0xDFLL)) - 78;
  v13[330] = HIBYTE(v4) ^ 0x82;
  v13[243] = BYTE6(v4) ^ 0xCF;
  v13[259] = -15 * (v19 ^ 2);
  HIDWORD(v18) = (v3 >> 6) ^ 2;
  LODWORD(v18) = (v3 << 26) ^ 0x18000000;
  v13[181] = BYTE5(v4) ^ 0x1C;
  v20 = *(v14 + ((v18 >> 26) ^ 0x68));
  v21 = (v20 ^ 0xFFFFFF80) - 2 * ((v20 + 6) & 0x13 ^ v20 & 1) - 8;
  v22 = ((2 * v21) ^ 0x24) + (~(2 * ((2 * v21) ^ 0x24)) | 0xB) - 12;
  v23 = ((v22 ^ 0xFFFFFFF3) - (v21 ^ v22 ^ 0xFFFFFFE1)) ^ (10 - v20);
  v24 = ((v23 + (~(2 * v23) | 0xFFFFFFFB) + 3) ^ v21) + (v22 ^ 3);
  v11[174] = BYTE2(v3) ^ 0xA7;
  *(v12 + 44) = BYTE1(v3) ^ 0x3D;
  v25 = (16 * v24 - 32 * (v24 & 1) + 18) ^ v21;
  v13[296] = BYTE3(v3) ^ 0xFA;
  HIDWORD(v18) = v25 ^ 1;
  LODWORD(v18) = (v25 ^ 0xFFFFFF9F) << 24;
  *(v12 + 102) = BYTE4(v3) ^ 0x9A;
  v13[373] = v18 >> 28;
  v11[16] = BYTE5(v3) ^ 0x78;
  v26 = *(v14 + (BYTE6(v3) ^ 0x18));
  v27 = v26 - ((2 * v26 + 76) & 0x52) - 113;
  v11[194] = a3 ^ 0x16;
  v28 = (((32 * v27) ^ (16 * v27) ^ 0xFFFFFFB0) - ((2 * ((32 * v27) ^ (16 * v27) ^ 0xFFFFFFB0)) & 0x40) + 41) ^ v27;
  *(v12 + 43) = HIBYTE(v3) ^ 0x98;
  *(v12 + 46) = HIBYTE(a3) ^ 0x48;
  v11[133] = BYTE6(a3) ^ 0x5D;
  v13[173] = BYTE4(a3) ^ 0xAD;
  v11[191] = BYTE2(a3) ^ 0xF3;
  HIDWORD(v18) = v28 ^ 1;
  LODWORD(v18) = (v28 ^ 0xFFFFFF9F) << 24;
  v11[135] = BYTE5(a3) ^ 0xA4;
  v13[325] = v18 >> 28;
  v13[144] = BYTE1(a3) ^ 0x40;
  *(v12 + 3) = BYTE3(a3) ^ 0xA2;
  *(*STACK[0xC40] + 28) = LODWORD(STACK[0xF4C]) - 472278998;
  v29 = ((2 * *(v12 + 48)) & 0xBEFCCFAE) + (*(v12 + 48) ^ 0x5F7E67D7);
  LODWORD(STACK[0xF4C]) = v29 - 1129840640;
  v30 = *STACK[0xC48];
  v31 = *(v8 + 8 * (v9 - 11256));
  STACK[0xE78] = v31 + 265;
  STACK[0xE88] = v30;
  STACK[0xE70] = v31;
  STACK[0xE68] = v31 + 5;
  STACK[0xEC0] = (v29 - 1602119639) << 32;
  v32 = *(v7 + 8 * v9);
  STACK[0xEB8] = 0xF71F3C3D65D819ELL;
  return v32();
}

uint64_t sub_244908D3C()
{
  STACK[0xEE8] = v1;
  LODWORD(STACK[0xEE0]) = *(&STACK[0x1998] + v1 - 858167629);
  return (*(STACK[0xED0] + 8 * v0))();
}

uint64_t sub_244908DB4@<X0>(int a1@<W0>, unsigned int a2@<W2>, int a3@<W3>, int a4@<W5>, int a5@<W8>)
{
  v8 = a2 < v7;
  v9 = v6 + a5 + a1 + a3;
  v10 = v8 ^ (v9 < v5);
  v11 = v9 < a2;
  if (!v10)
  {
    v8 = v11;
  }

  return (*(STACK[0xED0] + 8 * ((v8 * a4) ^ a1)))();
}

uint64_t sub_2449093C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = 17 * (v10 ^ 0x244Du);
  v13 = a7 ^ v11;
  *(&v15 + 1) = v7 ^ v11 ^ 0x114;
  *&v15 = v7 ^ v11 ^ 0x7993E70F629B4000;
  v14 = v15 >> 10;
  STACK[0xEB0] = (v10 - 6903);
  STACK[0xEC8] = v12;
  v16 = ((v12 ^ 0x7FFFEF2EDF6DD000) & (v14 << 11) ^ 0x1E4D4F0C504C1000) + ((v14 << ((v10 + 9) ^ 0xF9u)) ^ 0x70D95039D798F7FBLL);
  v17 = v8 ^ ((LODWORD(STACK[0xEE0]) - 749991508) + STACK[0xEC0]);
  v18 = ((2 * (((v14 << 11) | 0x61B2B0A28FA3EFFFLL) + 0xF26B017487709B3 + v16)) & 0x55B76FBBFFF9F34ALL) + ((((v14 << 11) | 0x61B2B0A28FA3EFFFLL) + 0xF26B017487709B3 + v16) ^ 0xAADBB7DDFFFCFBE5);
  v19 = v17 ^ 0x8E0CFE7FA62774DLL;
  v20 = (v16 - 0x3FFFF7976FB6FFFBLL + ((v16 + v18 - 2 * v18 + 0x6ADBC0469045FBEALL) ^ 0xFFFFFFFFFFFFFFFELL)) ^ (v14 >> 54);
  v21 = (a7 ^ v11 ^ 0xD25680E2A091E552) & (v17 ^ 0x353D3F701277CA38);
  v22 = (a7 ^ v11) & 0x4548F38333C60A0;
  v23 = v17 ^ 0x8E0CFE7FA62774DLL ^ v9;
  STACK[0xEE0] = v20 ^ 0x1AD;
  v24 = (v20 ^ 0xFFFFFFFFFFFFFE52) & (v13 ^ 0x2DA97F1D5F6E1AADLL);
  v25 = ((v17 ^ 0xCE964FB7DEB45566 ^ ((v17 ^ 0x3169B048214BAA98) - (v17 ^ 0xCE964FB7DEB45567))) + 2 * ((((v17 ^ 0x3169B048214BAA98) - (v17 ^ 0xCE964FB7DEB45567)) ^ 0x7FFFFFFFFFFFFFFELL) & (v17 ^ 0x3169B048214BAA98))) & (v23 ^ 0xC57E22A4B2B8927FLL) ^ v13;
  v26 = (v22 ^ v21 ^ 0x548020201061ADLL ^ v20) + 0x141745E860577FC9 - ((2 * (v22 ^ v21 ^ 0x548020201061ADLL ^ v20)) & 0x282E8BD0C0AEFF92);
  v27 = v26 ^ v25;
  v28 = (((v23 ^ 0x3A81DD5B4D476D80) & (v7 ^ 0xE564F9C6FB37C4F1)) - ((2 * ((v23 ^ 0x3A81DD5B4D476D80) & (v7 ^ 0xE564F9C6FB37C4F1))) & 0x381A724916ECB8B2) + 0x1C0D39248B765C59) ^ v25 ^ 0x31A44639D41846F4;
  v29 = v28 - ((2 * v28) & 0x7312FF5FB653BBAALL) + 0x39897FAFDB29DDD5;
  v30 = v29 ^ v17 ^ 0x8E0CFE7FA62774DLL;
  v31 = v7 ^ 0xDDFD1111244D24DELL ^ (v24 - ((2 * v24) & 0x7133D1AFBEF5C05ELL) + 0x3899E8D7DF7AE02FLL);
  v32 = (v20 ^ 0x1AD) & (v7 ^ 0x1A9B063904C83B0ELL) ^ v23;
  v33 = v29 ^ ~v19;
  *(&v15 + 1) = v27 ^ 0x23B28;
  *&v15 = v27 ^ 0xFBDBD55911900000;
  v34 = (v31 - ((2 * v31) & 0x5C5111C9764E8036) + 0x2E2888E4BB27401BLL) ^ v32;
  v35 = v27 ^ __ROR8__(v27, 28) ^ (v15 >> 19);
  v36 = v30 ^ (v30 >> 39) ^ (8 * v30) ^ (v30 << 25) ^ (v33 >> 61);
  v37 = v36 ^ 0x8706ABD662337294;
  *(&v15 + 1) = v26 ^ 0x18CA4130FD1;
  *&v15 = v26 ^ 0xE7A9220000000000;
  STACK[0xEA8] = v26;
  v38 = v26 ^ (v26 >> 7) ^ (v15 >> 41);
  v39 = (((v26 << 57) ^ 0xA200000000000000) + 0x744BDA590FFDF0BDLL - ((2 * ((v26 << 57) ^ 0xA200000000000000)) & 0xE800000000000000)) ^ 0x744BDA590FFDF0BDLL;
  v40 = v32 ^ 0x47FBFD949008236ELL ^ (((v32 << 58) ^ 0xB800000000000000 ^ (v32 << 63)) - (((v32 << 58) ^ 0xB800000000000000) >> 61 << 62) - 0x1D3054949AB36000);
  v41 = v39 + (v38 ^ 0xE66671CBBD5B29CELL) - 2 * (v39 & (v38 ^ 0x666671CBBD5B29CELL)) + 0x1168949A3745833CLL - 2 * ((v39 + (v38 ^ 0xE66671CBBD5B29CELL) - 2 * (v39 & (v38 ^ 0x666671CBBD5B29CELL))) & 0x1168949A3745833DLL ^ (v39 + (v38 ^ 0xE66671CBBD5B29CELL)) & 1);
  v42 = (v34 ^ (v34 >> 17) ^ (v34 >> 10)) & 0xFFFFFFFFFFF7FFFFLL ^ (v34 << 47) ^ ((v34 ^ (v34 >> 17) ^ (v34 >> 10)) & 0x80000 | (v34 << 54));
  *(&v15 + 1) = v38 ^ 0x11744777 ^ v35;
  *&v15 = v35 ^ 0xF390F34C00000000 ^ v41;
  v43 = (v15 >> 32) ^ 0x35005A8E00000000;
  *(&v15 + 1) = DWORD1(v15) ^ 0xCAC41F57;
  *&v15 = v43;
  v44 = (v15 >> 32) - ((2 * (v15 >> 32)) & 0x2D7237DBF1026D20) - 0x6946E412077EC970;
  v45 = v41 ^ v42 ^ 0x683964968F995CA4;
  v46 = v36 ^ 0x8706ABD662337294 ^ (v32 >> 1) ^ (v32 >> 6) ^ (v40 + 0x3A92C3D637FE3DC5 - ((2 * v40) & 0x752587AC6FFC7B8ALL));
  v47 = (v41 ^ 0x1168949A3745833CLL) & (v42 ^ 0x7DE8BDEC966C969CLL);
  if ((v20 ^ v7) == 0x1A9B063904C83AA3)
  {
    v48 = v36 ^ 0x8706ABD662337294;
  }

  else
  {
    v48 = v36 ^ 0xDB7BAF6CAFB21E8ALL ^ v44;
  }

  v49 = v48 ^ 0x3A92C3D637FE3DC5;
  v50 = v44 ^ 0xA382FB45327E93E1;
  if (v20 == 0x5971A82EA076A02DLL)
  {
    v49 = -1;
  }

  v51 = v47 ^ v46;
  v52 = ((v44 ^ 0x5C7D04BACD816C1ELL) & (v45 ^ 0x4B94DE02EB04904)) - ((2 * ((v44 ^ 0x5C7D04BACD816C1ELL) & (v45 ^ 0x4B94DE02EB04904))) & 0xD45C4D0BCC146B8ELL) - 0x15D1D97A19F5CA39;
  v53 = (v46 ^ 0x500EFA24057753BALL) & (v36 ^ 0x426B97FFAA32B0AELL) ^ 0x508D4463EA0FF14ALL ^ v44;
  v54 = v50 & (v36 ^ 0xBD94680055CD4F51) & v49 ^ v45;
  v55 = v54 ^ v53;
  v56 = v53 ^ (((v42 ^ 0x8217421369936963) & (v46 ^ 0xAFF105DBFA88AC45)) - ((2 * ((v42 ^ 0x8217421369936963) & (v46 ^ 0xAFF105DBFA88AC45))) & 0x19E081B24F1D3AA8) + 0xCF040D9278E9D54);
  v57 = (v56 + 0x3A92C3D637FE3DC5 - ((2 * v56) & 0x752587AC6FFC7B8ALL)) ^ v37;
  v58 = ((v52 ^ v42 ^ 0x683964968F995CA4) - ((2 * (v52 ^ v42 ^ 0x683964968F995CA4)) & 0xFAA88B8CA6C1ADCLL) + 0x7D5445C65360D6ELL) ^ v51;
  v59 = (v54 ^ 0xFB46B21FD14FB6FBLL) - ((2 * (v54 ^ 0xFB46B21FD14FB6FBLL) + 0x126912BDALL) & 0xEF9D400165343F6ELL) + 0x77CEA00145E2B5A4;
  if ((v55 & 0x1000000) != 0)
  {
    v60 = -16777216;
  }

  else
  {
    v60 = 0x1000000;
  }

  v61 = v60 + (v55 ^ 0xD1D2CBF6B4EC30C9) + 0x3EE540A0EB479AF2 - 2 * ((v60 + (v55 ^ 0xD1D2CBF6B4EC30C9)) & 0x3EE540A0EB479AFELL ^ (v55 ^ 0xD1D2CBF6B4EC30C9) & 0xC);
  v62 = (v61 >> 28) ^ (v55 >> 19);
  v63 = v58 ^ ((v58 ^ 0x57DBBE7860415ED4) >> 10) ^ ((v58 >> 17) | ((v58 ^ 0x57DBBE7860415ED4) << 54));
  v64 = ((2 * v59) & 0xFFFFFFFED96ED426 ^ 0xEF9D400041241426) + (v59 ^ 0x88315FFFDE2D75A4);
  v65 = v64 - ((2 * v64) & 0x8AE2A7C3292ED03CLL);
  v66 = v65 + 0x457153E19497681ELL;
  v67 = (0xBA8EAC1E6B6897E1 - v65) & 0x100000000;
  v68 = v57 ^ (v57 >> 39) ^ (8 * v57) ^ (v57 >> 61) ^ (v57 << 25);
  *(&v70 + 1) = v63 ^ 0x3F188EDD278;
  *&v70 = v63 ^ 0x32709C0000000000;
  v69 = v70 >> 42;
  v71 = (v62 | (v55 << 45)) ^ (v61 << 36) ^ 0x910C5519B72ADC93;
  v72 = v51 ^ (v51 << 58) ^ ((v51 >> 6) ^ (v51 >> 1) | (v51 << 63));
  v73 = v68 ^ 0x959DFA374D946CC2 ^ v72;
  *(&v70 + 1) = (32 * v58) ^ 0x24493 ^ v69;
  *&v70 = v69 ^ 0x69E2A8F4B4800000;
  v74 = (v70 >> 22) - ((2 * (v70 >> 22)) & 0xB9EAEC4A9900B0C4) - 0x230A89DAB37FA79ELL;
  v75 = (0xD036B1410D2A17FCLL - v67) ^ v66 & 0xFFFFFFFEFFFFFFFFLL ^ (((0xD036B1410D2A17FCLL - v67) ^ v66 & 0xFFFFFFFEFFFFFFFFLL) >> 7) ^ (((0xD036B1410D2A17FCLL - v67) ^ v66 & 0xFFFFFFFEFFFFFFFFLL) << 23) ^ ((((0xD036B1410D2A17FCLL - v67) ^ v66 & 0xFFFFFFFEFFFFFFFFLL) >> 41) | (((0xD036B1410D2A17FCLL - v67) ^ v66 & 0xFFFFFFFEFFFFFFFFLL) << 57));
  v76 = (v71 - 2 * (v71 & 0x76C81033DC1BB1D6 ^ v62 & 0x40) - 0x937EFCC23E44E6ALL) ^ v55 ^ v75;
  v77 = v75 ^ v74;
  v78 = v76 ^ (v68 ^ 0xDCD43E546DB80939) & (v72 ^ 0xFD8B048BBDC9690FLL);
  v79 = (v77 ^ 0x11E441719CBF74D7) & (v74 ^ 0x67AA447D39DC754FLL) ^ v73;
  v80 = (v76 ^ 0xE2381EC9CD9480C7) & (v68 ^ 0x232BC1AB9247F6C6) ^ v77;
  *(&v70 + 1) = v80 ^ 0x19CBF74D7;
  *&v70 = v80 ^ 0x11E4417000000000;
  STACK[0xED8] = (((v78 << 29) ^ 0x81B0EBA683D48034) + ((v78 >> 35) ^ 0x3B8FC26) - 2 * (((v78 >> 35) ^ 0x3908024) & ((v78 << 29) ^ 0x1B0EBA683D48034))) ^ (v70 >> 35);
  *&v70 = __ROR8__((((v78 << 29) ^ 0x81B0EBA683D48034) + ((v78 >> 35) ^ 0x3B8FC26) - 2 * (((v78 >> 35) ^ 0x3908024) & ((v78 << 29) ^ 0x1B0EBA683D48034))) ^ (v70 >> 35), 29);
  v81 = (((v74 ^ 0x9855BB82C6238AB0) & (v73 ^ 0xB4C2C0E89DE50CF4)) - ((2 * ((v74 ^ 0x9855BB82C6238AB0) & (v73 ^ 0xB4C2C0E89DE50CF4))) & 0x6D6C7739BFA73408) - 0x4949C463202C65FCLL) ^ v68 ^ 0x959DFA374D946CC2 ^ v78;
  v82 = ((v70 << 36) ^ 0x1E798E6000000000) + 0x1BFDE1E5FA773445 - ((2 * ((v70 << 36) ^ 0x1E798E6000000000)) & 0x37FBC3C000000000);
  v83 = (((v70 << 45) ^ 0xF31CC00000000000) + 0x54FEE3EAA2019C4DLL - ((2 * ((v70 << 45) ^ 0xF31CC00000000000)) & 0xA9FDC00000000000)) ^ 0x54FEE3EAA2019C4DLL;
  v84 = v74 ^ v79 ^ 0xC1E4670E01C47D6ALL ^ (((v76 ^ 0x1DC7E136326B7F38) & (v77 ^ 0xEE1BBE8E63408B28)) - ((2 * ((v76 ^ 0x1DC7E136326B7F38) & (v77 ^ 0xEE1BBE8E63408B28))) & 0x15B2B032C7BD1CC2) - 0x7526A7E69C21719FLL);
  v85 = (v83 + (v70 ^ (v70 >> 19) ^ 0xD3F5C30BCAC936DALL) - 2 * (v83 & (v70 ^ (v70 >> 19) ^ 0x53F5C30BCAC936DALL))) ^ (v70 >> 28);
  v86 = v82 ^ 0x1BFDE1E8C52AA312 ^ v85;
  *(&v70 + 1) = v81 ^ 0x35C59575D5;
  *&v70 = v81 ^ 0x1DC7E10000000000;
  v85 ^= 0xD3F5D9757uLL;
  v87 = (v85 - v86 - ((2 * (v85 - v86)) & 0x470428EAE2C516F0) - 0x5C7DEB8A8E9D7488) ^ ((v82 ^ 0xE4021E1A0588CBBALL) - ((2 * (v82 ^ 0xE4021E1A0588CBBALL) + 2) & 0x8D7C26CD71FA3DB6) + 0x46BE1366B8FD1EDCLL);
  STACK[0xEA0] = v87;
  v88 = ((v70 >> 39) ^ v81) & 0xFFFFFFFFFBFFFFFFLL ^ (8 * v81) ^ (((v70 >> 39) ^ v81) & 0x4000000 | (v81 >> 61));
  v89 = (((v80 << 57) ^ (v80 << 23)) & 0xFFFFFFFFFF800000 | (v80 >> 41)) ^ (v80 >> 7);
  v90 = ((v89 ^ 0x8B4EE243452ECBC3) + 0x1737307C82AAC9E1 - 2 * ((v89 ^ 0x8B4EE243452ECBC3) & 0x1737307C82AAC9F9 ^ v89 & 0x18)) ^ v80;
  v91 = ((((v87 ^ 0xE53C0713C99F95A3) + 0x1BFDE1E5FA773445 - ((2 * (v87 ^ 0xE53C0713C99F95A3)) & 0x37FBC3CBF4EE688ALL)) ^ v82) + v85) ^ v90;
  v92 = v79 ^ (~v79 << 63) ^ __ROR8__(v79, 6) ^ (((v79 >> 1) ^ 0x6153BC2A1C926094) + 0x30CEFD59478E119ELL - 2 * (((v79 >> 1) ^ 0x6153BC2A1C926094) & 0x30CEFD59478E119FLL ^ (v79 >> 1) & 1));
  v93 = v92 ^ v88 ^ 0x90CB8361CCFFFDD6;
  v94 = v84 ^ (v84 >> 10) ^ (((v84 << 54) ^ (v84 << 47)) & 0xFFFF800000000000 | (v84 >> 17));
  v95 = (v91 ^ 0xB7F32837047E2E45) & (v94 ^ v90 ^ 0xD1D0B63BEDCE7C45);
  v96 = v91 ^ 0x480CD7C8FB81D1BALL;
  v97 = (v92 ^ 0x1D89A840A1275AB2) & (v88 ^ 0xFE70CD6417977393) ^ v88 & 0x48EAB0AC8F691901 ^ 0xDB78718573922BB0 ^ v91;
  v98 = (((v94 ^ 0x99DC61F3164FADFFLL) & (v93 ^ 0x3BD856E9F526CDF6)) - ((2 * ((v94 ^ 0x99DC61F3164FADFFLL) & (v93 ^ 0x3BD856E9F526CDF6))) & 0x2E6DB1035E4ED3CLL) + 0x1736D881AF2769ELL) ^ 0x2598B41E6A1F626ALL ^ v97;
  v99 = (v98 - ((2 * v98) & 0x228963F4492EE374) - 0x6EBB4E05DB688E46) ^ v88 ^ 0x90CB8361CCFFFDD6;
  v100 = v94 & 0x4067569B0AD0DB2FLL ^ 0x4023160808905200 ^ (v90 ^ 0xF7947EAC0EAEF56ALL) & (v94 ^ 0x66239E0CE9B05200);
  v101 = v96 & (v88 ^ 0x18F329BE8688C6CLL) ^ v94 ^ v90;
  v102 = v101 ^ v97;
  v103 = v100 + (v93 ^ 0xC427A9160AD93209);
  v104 = (v103 ^ 0x5BC1FFD7E8F3FFFFLL) - 2 * (v100 & (v93 ^ 0x4427A9160AD93209)) + ((2 * v103) & 0xB783FFAFD1E7FFFELL) - 0x5BC1FFD7E8F3FFFFLL;
  v105 = v104 - ((2 * v104) & 0xA812F5E352F7A570) - 0x2BF6850E56842D48;
  v106 = v105 ^ v94 ^ v95;
  v107 = (8 * v99) ^ 0x86A298D81B0073F8;
  v108 = v102 ^ (v102 >> 19) ^ ((v102 >> 28) | (v102 << 45));
  v109 = v108 >> 13;
  v110 = (v108 >> 13) & 0x4224169B6391BLL;
  v111 = ((v108 << 51) ^ 0x8428000000000000) - ((2 * ((v108 << 51) ^ 0x8428000000000000)) & 0x93D0000000000000) + 0x49ED53901268D54BLL;
  v112 = (v102 & 0xFFFFFFF) << 23;
  v114 = v109 ^ 0x16A7FDA480FBELL;
  if (v79 == 0xC2A778543924C129)
  {
    v114 = 0x3DDBE9649C6E4;
  }

  v115 = ((v111 & 0x5B10000000000000 | v114 & (v109 ^ 0x5483EB3FE36A5)) ^ 0x4900000000000000) + ((v111 & 0xA4E8000000000000 | v110) ^ 0xEC000021B63001);
  v116 = (v106 >> 17) ^ 0xAC490F3691;
  v113 = ((v99 >> 39) ^ 0x1A1A8A6) - 0x8000000 + ((2 * (v99 >> 39)) ^ 0xFFFFFFFFFCBCAEB3);
  v117 = (v107 - ((2 * v107) & 0xE22E57A7D6B12240) - 0xEE8D42C14A76EDBLL) ^ v99 ^ ((((v99 >> 61) | (v99 << 25)) ^ 0x3606C01CFE000006 ^ v113) - ((2 * (((v99 >> 61) | (v99 << 25)) ^ 0x3606C01CFE000006 ^ v113)) & 0xA0C7B47E1636BBE6) - 0x2F9C25C0F4E4A20DLL);
  v118 = (v115 ^ 0x673389CD47D081CLL) + (v112 ^ 0x11BF9C3000000) - 2 * ((v115 ^ 0x3389CD4000000) & (v112 ^ 0x11BF9C3000000));
  v119 = ((2 * v118) & 0xB3EFEE6FD3FF1BC6) + (v118 ^ 0xD9F7F737E9FF8DE3);
  v120 = (v116 - (v106 ^ 0x15892B2242CA6BDLL ^ (v106 >> 17))) ^ ((v106 ^ 0xFEA76DE192DC6FD3) + 1);
  *(&v122 + 1) = v119 + 0x8C81600721DLL;
  *&v122 = v119 + 0x260808C81600721DLL;
  v121 = v122 >> 51;
  v123 = v105 ^ (v103 << 63) ^ (v105 << 58) ^ (v105 >> 1) ^ v117;
  *(&v122 + 1) = v123 ^ 0x3E31FBFA3F25ELL;
  *&v122 = v123 ^ 0xFFE8000000000000;
  v124 = v122 >> 50;
  *(&v122 + 1) = v124 ^ 0x2CF4;
  *&v122 = v124 ^ 0xA2C1761CC2F5C000;
  v125 = (v122 >> 14) ^ (v105 >> 6);
  *(&v122 + 1) = v106 ^ 0x2C;
  *&v122 = v106 ^ 0x158921E6D239000;
  v126 = v101 ^ (v101 >> 7) ^ (v101 << 23) ^ (v101 >> 41) ^ (v101 << 57);
  v127 = (v122 >> 10) ^ (v106 << 47) ^ ((v106 ^ 0x2BABBF2985CCB940 ^ (v120 - ((2 * v120) & 0x55E65A6FD1DE52D8) + 0x2AF32D37E8EF296CLL)) + v116);
  v128 = v127 ^ 0x6EBA8609C6BC6E11;
  v121 ^= 0x67139A8FA10380CEuLL;
  v129 = v121 & (v126 ^ 0x18C3BC2FED99EE4ALL);
  v130 = v121 + (v126 ^ 0x98C3BC2FED99EE4ALL);
  v131 = v127 ^ 0x6EBA8609C6BC6E11 ^ v126;
  *(&v122 + 1) = v131 ^ 0x5FBAD;
  *&v122 = v131 ^ 0x6B54B0AEE5B00000;
  v132 = v122 >> 20;
  v133 = v130 - 2 * v129 - 0x5EED8CABCDA7ADB3 - ((2 * (v130 - 2 * v129)) & 0x4224E6A864B0A49ALL);
  v134 = v133 ^ (v125 ^ 0xB35617AA4CBA5E00) & (v117 ^ 0xF1A0A2F7EB23C2A9);
  if ((v134 & 0x1000) != 0)
  {
    v135 = 4096;
  }

  else
  {
    v135 = -4096;
  }

  v136 = v106 == 0x158921E6D23902CLL;
  *(&v138 + 1) = v133 ^ 0x8524D;
  *&v138 = v133 ^ 0xA112735432500000;
  v137 = v138 >> 20;
  *(&v138 + 1) = v137 ^ 0x9E838C37BA3;
  *&v138 = v137 ^ 0x39CE400000000000;
  v139 = v135 + (v134 ^ 0xA11273543258524DLL);
  v140 = v126 ^ 0xA26F887AEABBA8DBLL;
  v141 = ((v138 >> 44) ^ 0x617C73C845CC631BLL) & (v117 ^ 0xE5F5D0814DC3D56) ^ v131;
  v142 = v131 ^ 0x4C30E732C07C6CALL;
  v143 = (((v125 ^ 0x4CA9E855B345A1FFLL) & (v127 ^ 0xC816000000000000)) - ((2 * ((v125 ^ 0x4CA9E855B345A1FFLL) & (v127 ^ 0xC816000000000000))) & 0x2C9C437A63A7CAF8) + 0x164E21BD31D3E57CLL) ^ v117 ^ v134;
  if (!v136)
  {
    v142 = v140;
  }

  v144 = v125 ^ (v142 ^ 0x3AAC345507224691) & (v127 ^ 0x37E9FFFFFFFFFFFFLL);
  *(&v145 + 1) = v132 ^ 0x553B8A88CE9;
  *&v145 = v132 ^ 0x7BF600000000000;
  v146 = (v141 ^ 0x3E6F3A262B25805BLL) + (v139 ^ 0xC31CDA987B9CAB9CLL) - 2 * ((v141 ^ 0x3E6F3A262B25805BLL) & (v139 ^ 0x431CDA987B9CAB9CLL));
  v147 = v146 - ((2 * v146) & 0x64481D16C10D16CCLL) - 0x4DDBF1749F79749ALL;
  v148 = (v133 ^ 0xA11273543258524DLL) & ~(v145 >> 44);
  v149 = v144 ^ 0xE2411C5207FFE4C6 ^ (v148 - ((2 * v148) & 0xA22E17F0968B758CLL) + 0x51170BF84B45BAC6);
  v150 = (v149 - ((2 * v149) & 0x4D590C138D78DC22) - 0x595379F6394391EFLL) ^ v128;
  v151 = (((v147 << 36) ^ 0x868B66000000000) + 0x6162EEB5224EF925 - ((2 * ((v147 << 36) ^ 0x868B66000000000)) & 0xC2C5DD6000000000)) ^ 0x6162EEB5224EF925;
  v152 = (v143 << 25) ^ (8 * v143) ^ ((v143 ^ (v143 >> 61) ^ 0x27453604C76CB2B1) + ((v143 >> 39) ^ 0x4E8A6C) - 2 * ((v143 ^ (v143 >> 61) ^ 0x16CB2B1) & ((v143 >> 39) ^ 0x4E8A6C)));
  v153 = v151 + (v147 ^ (v147 >> 28) ^ (v147 >> 19) ^ 0xB22418C4C3170FC0) - 2 * (v151 & (v147 ^ (v147 >> 28) ^ (v147 >> 19) ^ 0x322418C4C3170FC0));
  *(&v145 + 1) = v150 ^ 0x17C;
  *&v145 = v150 ^ 0x1701FF2B656A9C00;
  v154 = v150 ^ __ROR8__(v150, 17) ^ (v145 >> 10);
  *(&v145 + 1) = v152 ^ 0x69435B659580;
  *&v145 = v152 ^ 0x33A7000000000000;
  v155 = v145 >> 48;
  *(&v145 + 1) = v141 ^ 0x52;
  *&v145 = v141 ^ 0x52E91371D402F180;
  v156 = v145 >> 7;
  *(&v145 + 1) = v141 ^ 0x171D402F1D2;
  *&v145 = v141 ^ 0x52E9120000000000;
  v157 = (v145 >> 41) ^ v141 ^ v156 ^ (v147 << 45) ^ v153;
  *(&v145 + 1) = v155 ^ 0x340A;
  *&v145 = v155 ^ 0x1F29CE587A860000;
  v158 = ((v144 >> 1) ^ (v144 >> 6) | (~v144 << 63)) ^ (v144 << 58) ^ 0x36DBE1B1F0DF9167;
  v159 = (v158 - ((2 * v158) & 0x1BD29C28D21FE0B0) - 0x7216B1EB96F00FA8) ^ v144 ^ v152;
  v160 = v157 ^ ((v145 >> 16) ^ 0xCBF5E0D631A78579) & (v159 ^ 0x4C68D392FDAB4E4BLL) ^ (((v154 ^ 0x59BFF4AB9AFF2FC9) & (v159 ^ 0xB3972C6D0254B1B4)) - ((2 * ((v154 ^ 0x59BFF4AB9AFF2FC9) & (v159 ^ 0xB3972C6D0254B1B4))) & 0xA93A3DB6EC45B3BCLL) + 0x549D1EDB7622D9DELL);
  v161 = (v160 ^ 0xD718CDAAA220280CLL) + 0x3EE20286F1531DD6 - 2 * ((v160 ^ 0xD718CDAAA220280CLL) & 0x3EE20286F1531DF7 ^ v160 & 0x21);
  *(&v145 + 1) = v161 ^ v152;
  *&v145 = v161 ^ ~v152;
  return (*(STACK[0xED0] + 8 * (v10 ^ ((2 * (STACK[0xEE8] == 858167634)) | (4 * (STACK[0xEE8] == 858167634))))))(v161 ^ v152 ^ ((v161 ^ v152) << 25) ^ (v145 >> 61) ^ ((v161 ^ v152 ^ 0xF12B5ACCB128F611) >> ((24 - v107) & 0x20) >> ((24 - v107) & 0x20 ^ 0x27)));
}

uint64_t sub_24490B438(uint64_t a1, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v12 = a7 >> 6;
  v13 = STACK[0xEB0];
  v14 = STACK[0xEB0] + 5197;
  LODWORD(STACK[0xEE8]) = v14;
  v15 = STACK[0xC58];
  *(v15 + 210) = BYTE4(v11) ^ 0xA5;
  v16 = STACK[0xE88];
  v16[317] = v14 ^ BYTE2(a2) ^ 0xDE;
  v17 = STACK[0xCA8];
  *(v17 + 109) = BYTE1(a2) ^ 0xE6;
  v16[9] = HIBYTE(a2) ^ 0x57;
  v16[321] = BYTE6(v11) ^ 0x89;
  *(v17 + 84) = BYTE5(v11) ^ 0xDB;
  v16[125] = a1 ^ 0x99;
  *(v15 + 119) = HIBYTE(v11) ^ 0x34;
  v16[14] = BYTE3(a1) ^ 0x1A;
  *(v15 + 178) = a2 ^ 0xC8;
  *(v15 + 180) = BYTE2(a1) ^ 0x6F;
  v16[1] = BYTE1(a1) ^ 0x46;
  *(v17 + 110) = BYTE4(a1) ^ 0x45;
  v18 = *(STACK[0xE68] + (BYTE5(a1) ^ 0x57));
  *(v15 + 22) = BYTE4(v10) ^ 0x7D;
  *v16 = v10 ^ 0xCF;
  HIDWORD(v19) = v18;
  LODWORD(v19) = (v18 << 24) - 1778384896;
  *(v17 + 64) = HIBYTE(a1) ^ 0xE1;
  *(v15 + 98) = (v19 >> 25) ^ 0x7E;
  *(v15 + 147) = BYTE1(v10) ^ 0x1B;
  v20 = HIBYTE(v9) ^ 0x26;
  *(v15 + 215) = BYTE6(a1) ^ 0x13;
  *(v17 + 70) = BYTE5(v10) ^ 0x73;
  *(v17 + 88) = BYTE2(v10) ^ 0xD1;
  v16[261] = BYTE3(v10) ^ 0xE4;
  v21 = BYTE4(a3) & 0x3E ^ 0x34;
  if (STACK[0xEA8] == 0x141745E860577FC9)
  {
    v21 = 62;
  }

  v22 = STACK[0xE78];
  v23 = *(STACK[0xE78] + ((-17 * (BYTE6(v10) ^ 1)) ^ 0x1BLL));
  *(v15 + 78) = v20;
  v24 = v12 ^ 0xEB;
  if (STACK[0xEA0] == 0xE53C0713C99F95A3)
  {
    v24 = 16;
  }

  v16[346] = BYTE1(a3) ^ 0xB3;
  v16[278] = BYTE2(a3) ^ 0x20;
  HIDWORD(v25) = v23 ^ 0xFFFFFFF1;
  LODWORD(v25) = (v23 ^ 0x80) << 24;
  *(v15 + 127) = v25 >> 30;
  *(v15 + 11) = BYTE5(a3) ^ 0x24;
  *(v15 + 10) = (a3 ^ 0x9A9924748420B3EFLL) >> ((v12 ^ 4) & v24 ^ v12 & 8) >> ((v12 ^ 4) & v24 ^ v12 & 8 ^ 0x18);
  *(v15 + 42) = (v21 & (BYTE4(a3) ^ 0x74) | BYTE4(a3) & 0xC1) ^ 0x40;
  v16[51] = a3 ^ 0xEF;
  v26 = *(STACK[0xE70] + (((a3 >> 47) & 0xFE | (a3 >> 55) & 1) ^ 0xB0) + 530);
  v16[285] = HIBYTE(a3) ^ 0x9A;
  *(v15 + 56) = v8 ^ 0xB0;
  *(v17 + 17) = (v26 ^ 0xC9) + 54;
  *(v17 + 63) = BYTE1(v8) ^ 0x3E;
  *(v15 + 150) = BYTE3(v7) ^ 0xAE;
  *(v15 + 110) = BYTE2(v8) ^ 0x68;
  v27 = *(v22 + ((-17 * (BYTE4(v7) ^ 0xAC)) ^ 0x1BLL));
  *(v15 + 92) = BYTE6(v7) ^ 0xC6;
  *(v17 + 69) = HIBYTE(v7) ^ 0xB0;
  HIDWORD(v25) = v27 ^ 0xFFFFFFF1;
  LODWORD(v25) = (v27 ^ 0x80) << 24;
  *(v17 + 67) = v25 >> 30;
  *(v15 + 59) = BYTE5(v7) ^ 0xBD;
  *(v17 + 48) = LODWORD(STACK[0xF4C]) - 472278998;
  v28 = ((2 * *(v15 + 68)) & 0x5F6F7BF6) + (*(v15 + 68) ^ 0x2FB7BDFB);
  LODWORD(STACK[0xF48]) = v28 - 69536072;
  v29 = *STACK[0xC48];
  STACK[0xEC8] = *(&off_278E1E490 + (v13 ^ 0x98F)) + 775;
  STACK[0xEA0] = v29;
  v30 = ((v28 - 800570875) ^ 0xBC14FB8A) - 2 * (((v28 - 800570875) ^ 0xBC14FB8A) & 0x57C39BD ^ (v28 + 5) & 0x10) - 2055456339;
  LODWORD(STACK[0xEC0]) = v28 + (v30 ^ 0x7A83C652) - 1368692842 + ((2 * v30) & 0x7829F714 ^ 0x8287310);
  STACK[0xEB8] = ((v28 - 800570875) << 32) - (((v28 - 800570875) << 33) & 0xF5B84E1A00000000) - 0x523D8F22614AAA6;
  v31 = *(STACK[0xED0] + 8 * v13);
  LODWORD(STACK[0xEB0]) = 150023;
  return v31(4294951353);
}

uint64_t sub_24490BF88@<X0>(uint64_t a1@<X4>, int a2@<W6>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v6 = STACK[0xEC0];
  LODWORD(STACK[0xEE0]) = LODWORD(STACK[0xEC0]) < 0x9A382114;
  v7 = (a2 ^ 0x2B8Eu) + 2825;
  v8 = a3 ^ STACK[0xEB8];
  v9 = v4 ^ 0x4EB17701BFD156E0 ^ v5;
  v10 = (LODWORD(STACK[0xED8]) - 749991508) - ((2 * (LODWORD(STACK[0xED8]) - 749991508)) & 0x1386682C6) - 0x7348D7EA63CCE9E6;
  STACK[0xED8] = v7;
  v11 = a4 ^ 0x8AFD4FA396987818;
  v12 = ((v10 + v7) & 0x53C12773 ^ v8 & 0xA119895A53C12773 | v8 & 0x5EE676A5AC3ED88CLL) ^ (v10 + v7) & 0xAC3ED88C;
  v13 = a4 ^ 0x8AFD4FA396987818 ^ v4 ^ 0x4EB17701BFD156E0;
  v14 = v12 ^ a1;
  v15 = v12 ^ a1 ^ 0xDAD142961B896A5;
  v16 = (v13 ^ 0xB8522CDC399B8C96) & (v9 ^ 0x89DB272BF610A2ALL);
  v17 = (a4 ^ 0x515BE55D96931136) & (v4 ^ 0x2D45F1238641B358);
  v18 = (v14 ^ 0xDEABD63E1B59AE2FLL) & (a4 ^ 0x7357114FE2D67C29);
  v19 = (v14 ^ 0x215429C1E4A651D0) & (v12 ^ 0x427F9BB2854877D9) ^ v9;
  v20 = (v12 ^ 0xBD80644D7AB78826) & (v9 ^ 0xF7624D8D409EF5D5) ^ v13;
  v21 = v18 ^ v12 ^ v15 & 0xDDF30BED8BBA92E0 ^ v19;
  *(&v22 + 1) = v21 ^ 0xE8F1C;
  *&v22 = v21 ^ 0x8039EF3543C00000;
  v23 = v15 ^ v17;
  v24 = (v22 >> 20) - ((2 * (v22 >> 20)) & 0x44D7E030A0CE4FALL) - 0x7DD940FE7AF98D83;
  v25 = v19 ^ v20;
  v26 = (v16 - ((2 * v16) & 0xBEE8266D262A4792) + 0x5F741336931523C9) ^ v15 ^ v17 ^ 0x738D2EDE160BE4BCLL;
  v27 = (v26 - ((2 * v26) & 0x48B2AA03FFE92DA2) + 0x24595501FFF496D1) ^ v11;
  *(&v22 + 1) = v24 ^ 0xF018506727DLL;
  *&v22 = v24 ^ 0x8226B00000000000;
  v28 = (v22 >> 44) - ((2 * (v22 >> 44)) & 0x5529F1AFA5D7A4A4) + 0x2A94F8D7D2EBD252;
  LODWORD(v26) = HIBYTE(v28) & 0xE0;
  v29 = v23 & 0x400 ^ 0x37FFDBF6FDFFB7FALL;
  v30 = v29 - 0x4A4802060C00248;
  LODWORD(v19) = ((2 * v26) ^ 0x122) + (v26 ^ 0xF6FEED6E);
  *(&v22 + 1) = v25 ^ 0x465DC;
  *&v22 = v25 ^ 0xA4F983DCE4700000;
  v31 = v25 ^ (v25 >> 28) ^ (v22 >> 19);
  LOBYTE(v16) = *(STACK[0xEC8] + ((-151065091 - v19) ^ (208 - (v26 ^ 0x43)) ^ (v19 + 151065091)) + 208);
  v32 = ((v25 << 36) ^ 0x47465DC000000000) - 0x59EC40F240CF8B25 - ((2 * ((v25 << 36) ^ 0x47465DC000000000)) & 0x4C277E0000000000);
  LOBYTE(v26) = ((v19 - (HIBYTE(v28) & 0xE0) - 26) & 0xE2 ^ 0xE8) + v19 + 3;
  LOBYTE(v26) = v26 - ((2 * v26) & 0xE2) + 113;
  v33 = v26 ^ 0x71;
  v34 = v16 ^ 0x6D;
  LOBYTE(v26) = v16 ^ v26;
  LOBYTE(v16) = v33 | v16 ^ 0x6D;
  v35 = v33 + v34;
  v36 = v31 ^ 0x528F320CD96DDCEDLL ^ v32;
  v32 ^= 0xA613BF0DBF3074DBLL;
  LOBYTE(v26) = (v26 ^ 0x1C) - v16;
  *(&v22 + 1) = v28 ^ 0x57D2EBD252;
  *&v22 = v28 ^ 0x2A94F88000000000;
  v37 = (v32 + (v36 ^ 0x50650ED7CDB1F024) + ((2 * v36) ^ 0x5F35E250649C1FB7) + 1) ^ ((v31 ^ 0x5B067C295413A7EDLL) + 1);
  v38 = v28 ^ (8 * v28) ^ (v22 >> 39);
  v39 = ((-47 * (v35 + 2 * v26)) ^ 0x73EFBCFFEDF2EFFFLL) + 2 * (-47 * (v35 + 2 * v26)) - 0x73EFBCFFEDF2EFFFLL;
  v40 = ((v37 - ((2 * v37) & 0xECED63B4E50309FELL) - 0x9894E258D7E7B01) ^ v31 ^ 0x528F320CD96DDCEDLL) + v32;
  v41 = (0x37FFDBF6FDFFB3F9 - v29) | (v23 >> 6);
  v42 = 0x6B5B37CD9B3F65ACLL - v29;
  if (v41 == -1)
  {
    v43 = v30;
  }

  else
  {
    v43 = v42;
  }

  v44 = ((v23 >> 6) ^ 0x768B8BA5713E39) - 0x335B5BD69D3FB1B2 + v43 - ((2 * (((v23 >> 6) ^ 0x768B8BA5713E39) - 0x335B5BD69D3FB1B2 + v43)) & 0xA29F3EDF00812F16) + 0x514F9F6F8040978BLL;
  v45 = (v38 ^ 0xBC91297332B457D6 ^ (((v39 + (v38 ^ 0x81CCC196BA4ABF3DLL ^ v39) + 1) ^ ((v38 ^ 0x81CCC196BA4ABF3DLL) + 1)) - ((2 * ((v39 + (v38 ^ 0x81CCC196BA4ABF3DLL ^ v39) + 1) ^ ((v38 ^ 0x81CCC196BA4ABF3DLL) + 1))) & 0x85442E34EE022E28) - 0x3D5DE8E588FEE8ECLL)) + v39;
  v46 = v45 - ((2 * v45) & 0x54CE7C98E5ADD528) - 0x5598C1B38D29156CLL;
  v47 = v27 ^ (v27 >> 10) ^ (v27 >> 17) ^ (v27 << 47) ^ (v27 << 54);
  v48 = v20 ^ (v20 >> 7) ^ (v20 >> 41) ^ (v20 << 23) ^ (v20 << 57);
  v49 = (v23 >> 1) ^ (v23 << 58) ^ ((~v23 << 63) | 0x60188E7BB24497E5) ^ (v44 & 0x8D599F59CCC6D684 ^ v23 & 0x8D599F59CCC6D284 | (v44 ^ v23) & 0x72A660A63339297BLL);
  v50 = v40 ^ v48;
  v51 = v47 ^ v48;
  v52 = (v46 ^ 0x5598C1B38D29156BLL) & (v49 ^ 0xE248289C06C4D00) ^ v40 ^ v48;
  v53 = v52 ^ v46;
  v54 = (v46 ^ v49 ^ 0x5BBC433A4D45586BLL) & (v47 ^ 0xFEC9B09FCDC1EF85);
  v55 = v46 ^ v49 ^ (v47 ^ 0x1364F60323E107ALL) & (v48 ^ 0x2C330EE54FF933C4);
  v56 = v50 & 0x2C7898D824AEEAFCLL ^ v51 ^ (v46 ^ 0x861FA69456780068) & (v50 ^ 0xD3CCF11AB006CC3BLL);
  v57 = (v56 ^ 0xD2B22E62A23E1479) + 0x57754ACECD4379C3 - ((2 * ((v56 ^ 0xD2B22E62A23E1479) & 0x57754ACECD4379D3 ^ v56 & 0x10)) ^ 0x20);
  v58 = (v52 & 0x8000000000000000 | 0x7E3056C4580F7E75) ^ v52 & 0x7FFFFFFFFFFFFFFFLL ^ v57;
  v59 = v53 ^ (v54 - ((2 * v54) & 0x5EAD45F1A30B3BELL) + 0x2F56A2F8D1859DFLL);
  v60 = (v50 ^ 0x2C330EE54FF933C4) & (v51 ^ 0x2D0541857DC723BELL);
  *(&v62 + 1) = v58 ^ LODWORD(STACK[0xEB0]);
  *&v62 = v58 ^ 0x7B46442B82B80000;
  v61 = v62 >> 19;
  v63 = ((8 * v59) ^ 0x709DF65F552B2F78) + 0x78A773772398408ALL + (~(2 * ((8 * v59) ^ 0x709DF65F552B2F78)) | 0xEB11911B8CF7EEFLL);
  v64 = v63 & 0x100000000000000;
  v65 = v63 & 0x100000000000000 | 0x1CE7817C923339BFLL;
  v66 = v63 & 0xFEFFFFFFFFFFFFF8;
  v67 = (v60 - ((2 * v60) & 0x336DD847C9128D08) - 0x664913DC1B76B97CLL) ^ v47;
  v68 = v67 ^ v55;
  *&v62 = __ROR8__(v58, 28);
  v69 = ((v61 ^ v62 ^ 0x2BA4A077B46442B8) - ((2 * (v61 ^ v62 ^ 0x2BA4A077B46442B8)) & 0x39EF30931D449980) - 0x630867B6715DB340) ^ v58;
  *(&v62 + 1) = v55 ^ 0x30;
  *&v62 = v55 ^ 0xFBB58071B1F4A740;
  v70 = v62 >> 6;
  *(&v62 + 1) = v67 ^ v55;
  *&v62 = v67 ^ ~v55;
  v71 = (v62 >> 63) & 0xFFFFFFFFFFFC0001;
  v72 = 0x39CF02F92466737ELL - v65;
  if ((v64 & v59) == 0)
  {
    v72 = v65;
  }

  *(&v74 + 1) = v68 ^ 0x3B23A9FD8B24;
  *&v74 = v68 ^ 0xC33CC00000000000;
  v73 = v74 >> 46;
  *(&v74 + 1) = v59 ^ 0x4BEAA565EFLL;
  *&v74 = v59 ^ 0xE13BE8000000000;
  v75 = (v74 >> 39) ^ (v59 >> 61) ^ v66 ^ ((v59 ^ 0xE13BECBEAA565EFLL) - 0x1CE7817C923339BFLL + v72);
  v76 = v71 ^ v73;
  *(&v74 + 1) = v68 ^ 0x324;
  *&v74 = v68 ^ 0xCCE9BB23A9FD8800;
  v77 = v74 >> 10;
  *(&v74 + 1) = v76 ^ 0x157DC;
  *&v74 = v76 ^ 0xC90810E323180000;
  v78 = (v74 >> 18) - ((2 * (v74 >> 18)) & 0xBD5AAE02E6D79438) - 0x2152A8FE8C9435E4;
  *(&v74 + 1) = v57 ^ 0x52;
  *&v74 = v57 ^ 0x6D9A7F7039C82100;
  v79 = (((v57 << 23) ^ 0xB81CE410A9000000) + 0x291D8D3556D32523 - ((2 * ((v57 << 23) ^ 0xB81CE410A9000000)) & 0x523B1A6AAD000000)) ^ 0x291D8D3556D32523;
  v80 = v55 ^ __ROR8__(v55, 1) ^ v70;
  v81 = (v77 ^ (v68 << 47) ^ v78 ^ 0x411D0337AAC2D624) + 0x28C0A92307521F89 - 2 * ((v77 ^ (v68 << 47) ^ v78 ^ 0x411D0337AAC2D624) & 0x28C0A92307521FC9 ^ (v77 ^ (v68 << 47) ^ v78) & 0x40);
  v82 = (v79 + (v57 ^ 0x6D9A7F7039C82152 ^ (v74 >> 7)) - 2 * (v79 & (v57 ^ 0x6D9A7F7039C82152 ^ (v74 >> 7)))) ^ (v57 >> 41);
  v83 = (v69 ^ v82 ^ 0xE7B1DC620C2ECBF8) & (v82 ^ v81 ^ 0xD73F56DCF89B2D49);
  STACK[0xEA8] = v83 ^ v81 ^ v75 ^ 0x6FA0C9BE55CC400CLL ^ v80 ^ (v82 ^ 0x36CD3F) & (v81 ^ 0xD73F56DCF8ADE076) ^ ((v83 ^ v81 ^ v75 ^ 0x6FA0C9BE55CC400CLL ^ v80 ^ (v82 ^ 0x36CD3F) & (v81 ^ 0xD73F56DCF8ADE076)) >> 17);
  LODWORD(v79) = LODWORD(STACK[0xEE8]) - 1782567706;
  v84 = v6 > v79;
  if (LODWORD(STACK[0xEE0]) != v79 < 0x9A382114)
  {
    v84 = STACK[0xEE0];
  }

  return (*(STACK[0xED0] + 8 * (a2 ^ (61 * v84))))();
}

uint64_t sub_24490DF08(uint64_t a1)
{
  LODWORD(STACK[0xEE8]) = v1;
  LODWORD(STACK[0xED8]) = *(&STACK[0x1998] + (v2 + 4713 + v1 - 74983128));
  return (*(STACK[0xED0] + 8 * v2))(a1, 1661129068);
}

uint64_t sub_24490DF64(int a1, int a2)
{
  v5 = v4 < 0xDBDB76A8;
  if (v5 == (a2 + v2) < 0xDBDB76A8)
  {
    v5 = a2 + v2 < v4;
  }

  return (*(STACK[0xED0] + 8 * (((v3 + a1) * v5) ^ v3)))();
}

uint64_t sub_24490E780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = STACK[0xED8];
  v13 = (v5 >> ((STACK[0xED8] ^ 0x2D) + STACK[0xED8] + 123)) ^ 0x5D;
  v14 = STACK[0xEA0];
  v14[294] = BYTE4(v5) ^ 0x8C;
  v15 = STACK[0xCA8];
  v15[80] = BYTE3(v5) ^ 0x87;
  v15[103] = v13;
  v15[5] = BYTE1(v5) ^ 0x35;
  v15[68] = v5 ^ 0x61;
  v15[13] = BYTE2(v5) ^ 0x48;
  v16 = (v5 >> 51) & 0x18 ^ 8 | (v5 >> 51) & 0x1F ^ 8;
  v17 = (v16 | (v5 >> 43) & 0xE0) ^ 0x60;
  v18 = v17 - 606490879 - 2 * (v17 & 0x73 ^ v16 & 0xFFFFFFF1) + 97;
  LOBYTE(v16) = *(STACK[0xEC8] + (v18 ^ 0xDBD9AF01));
  v14[398] = v8 ^ 0xA7;
  v19 = v16 ^ v18;
  if ((v16 ^ v18))
  {
    v20 = (v19 ^ 0xD1) + 1;
  }

  else
  {
    v20 = (v19 ^ 0xD1) - 1;
  }

  v21 = STACK[0xC58];
  *(v21 + 185) = BYTE1(v6) ^ 0x6B;
  v14[358] = -47 * (v20 ^ 0xE2);
  *(v21 + 31) = HIBYTE(v5) ^ 0x91;
  v15[111] = BYTE2(v6) ^ 0x39;
  v22 = *(v7 + (((v4 >> 21) & 0xF8 | (v4 >> 29)) ^ 0x37));
  *(v21 + 28) = BYTE5(v4) ^ 0xAC;
  v14[400] = BYTE4(v4) ^ 0xD6;
  *(v21 + 84) = BYTE6(v4) ^ 0x3B;
  *(v21 + 168) = BYTE1(a2) ^ 0xE6;
  v14[17] = (v22 ^ (((v22 >> 1) & 0x99 ^ 0x11) - (v22 & 0x10) + 46) ^ 0xFD) - 48;
  v15[8] = a2 ^ 0xE6;
  *(v21 + 182) = BYTE1(v9) ^ 0x70;
  v14[115] = BYTE2(a2) ^ 0x8A;
  *(v21 + 177) = (a2 ^ 0x1EDA0A44788AE6E6uLL) >> (v10 & 0x20 ^ 0x20u) >> (v10 & 0x20);
  v14[318] = BYTE5(a2) ^ 0xA;
  *(v21 + 38) = HIBYTE(v4) ^ 0x69;
  v14[78] = BYTE3(a2) ^ 0x78;
  v14[323] = BYTE3(v9) ^ 0xE;
  v14[162] = BYTE2(v9) ^ 0xAD;
  *(v21 + 15) = (BYTE6(a2) & 0xAF ^ 0xDA) & (~BYTE6(a2) | 0xAF);
  *(v21 + 125) = (~v9 | 0x95) & (v9 ^ 0x6E);
  v14[315] = HIBYTE(a2) ^ 0x1E;
  v23 = *(a4 + (BYTE4(v9) ^ 0x7BLL) + 259);
  v24 = ((v23 >> 1) | (v23 << 7)) - ((2 * ((v23 >> 1) | (v23 << 7))) & 0xFFD4) - 22;
  v25 = (v24 >> 3) ^ (v24 >> 1);
  v14[395] = BYTE5(v9) ^ 0xCA;
  *(v21 + 115) = HIBYTE(v9) ^ 0xCF;
  v15[11] = (v25 ^ 0x68) + (v24 ^ 0x4A ^ ((((v25 ^ 0x68) - (v24 ^ 0xBE ^ v25)) ^ ((v24 ^ 0x29) + 1)) - ((2 * (((v25 ^ 0x68) - (v24 ^ 0xBE ^ v25)) ^ ((v24 ^ 0x29) + 1))) & 0x38) - 100)) + 105;
  v15[2] = BYTE3(v11) ^ 0x67;
  v14[137] = v11 ^ 0xF4;
  v15[105] = BYTE6(v9) ^ 0x28;
  v14[389] = BYTE2(v11) ^ 0x9C;
  v15[87] = BYTE1(v11) ^ 0xF0;
  v26 = *(v7 + (((v11 >> 29) & 0xF8 | (v11 >> 37) & 7) ^ 0xA8));
  *(v21 + 53) = BYTE5(v11) ^ 0x2A;
  v14[223] = HIBYTE(v11) ^ 0xA5;
  v14[411] = (v26 ^ 0x28 ^ (((v26 >> 1) & 0x19 ^ 0x11) + ((2 * ((v26 >> 1) & 0x19)) ^ 0xDD) - 4)) - 48;
  *(v21 + 14) = (v11 ^ 0xA5DB2A82679CF0F4) >> (STACK[0xEA8] & 0x30 ^ 0x30u) >> (STACK[0xEA8] & 0x30);
  *(v21 + 68) = LODWORD(STACK[0xF48]) - 731034802;
  return (*(STACK[0xED0] + 8 * (v12 ^ ((8 * (LODWORD(STACK[0xE80]) != 1365296218)) | (32 * (LODWORD(STACK[0xE80]) != 1365296218))))))();
}

uint64_t sub_24490EBC0@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xF28]) = *(*STACK[0xC40] + 28) + 145145329 - ((((a1 + 644) | 0x1025) + 290270069) & (2 * *(*STACK[0xC40] + 28)));
  if (STACK[0xE98])
  {
    v2 = STACK[0xE90] == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  return (*(v1 + 8 * (a1 ^ (13 * v3))))(1506179499);
}

uint64_t sub_24490EC30@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xE78]) = v2;
  v8 = a1 - 10320;
  v9 = (a1 + 379564376) & 0xE9601BFB;
  v10 = *STACK[0xC48];
  v11 = v1 ^ v3;
  v12 = (v1 ^ v3) & (v5 ^ v6);
  STACK[0xEE8] = v9;
  HIDWORD(v14) = v1 ^ v5 ^ 0x679AB;
  LODWORD(v14) = v1 ^ v5 ^ v9 ^ 0x59C00000;
  v13 = v14 >> 20;
  HIDWORD(v14) = v13 ^ 0x29E;
  LODWORD(v14) = v13 ^ 0x225A1000;
  v15 = *(v4 + 8 * (v8 & 0x7D510CFA));
  v16 = ((v14 >> 12) ^ 0x29E225A1) - v11 + 2 * v12;
  v17 = ((2 * v16) & 0xDFFFBBEC) + (v16 ^ 0xEFFFDDF6);
  STACK[0xE68] = v15 + 793;
  STACK[0xE60] = v15 + 521;
  STACK[0xEC0] = v15 + 265;
  STACK[0xE70] = v10;
  STACK[0xEB8] = ((v16 + 1506179499 - ((2 * v16) & 0xB38CF356)) ^ v1 ^ v5) << 32;
  LODWORD(STACK[0xEB0]) = ((2 * v5) ^ 0x5D3E774B) + ((2 * v5) ^ 0xA2C188B4) + 1;
  v18 = *(v7 + 8 * v8);
  LODWORD(STACK[0xEA8]) = (v1 ^ 0xF759420E) + 268444170 + v17 + (v1 ^ v5 ^ 0x59C679AB ^ (v17 + 268444170)) + 1;
  LODWORD(STACK[0xEA0]) = (v1 ^ 0xF759420E) + 268444170 + v17 + (v1 ^ v5 ^ 0x59C679AB ^ (v17 + 268444170)) + 1179449668;
  return v18();
}

uint64_t sub_24490F2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0xED8]) = LODWORD(STACK[0xEA8]) > 0xB9B306BC;
  STACK[0xE88] = (a6 - 1109) | 0x25u;
  STACK[0xEE8] = a6 ^ 0x1E4Fu;
  v6 = LODWORD(STACK[0xEE0]) + 691667697;
  v7 = LODWORD(STACK[0xED8]) ^ (v6 < 0x464CF943);
  v8 = v6 < LODWORD(STACK[0xEA0]);
  if (v7)
  {
    v8 = STACK[0xED8];
  }

  return (*(STACK[0xED0] + 8 * (a6 ^ (35 * v8))))();
}

uint64_t sub_2449110B8()
{
  v1 = STACK[0xEE8];
  v2 = (STACK[0xEE8] - 825281529) & 0x3130EBEB;
  LODWORD(STACK[0xEE0]) = v0;
  LODWORD(STACK[0xEC8]) = *(STACK[0xE90] + 4 * (v0 + (v2 ^ 0xE2ED22A6)));
  return (*(STACK[0xED0] + 8 * v1))(125482302);
}

uint64_t sub_244911128(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v11 = v9 < v7;
  v12 = a1 + v6;
  v13 = ((v5 + a5) ^ v10) + a1;
  v14 = v11 ^ (v12 < ((v5 - 726) ^ v8));
  v15 = v12 < v9;
  if (!v14)
  {
    v11 = v15;
  }

  return (*(STACK[0xED0] + 8 * ((14 * v11) | v5)))(v13);
}

uint64_t sub_24491174C(uint64_t a1)
{
  v6 = STACK[0xE88];
  v7 = STACK[0xE88] ^ 0x4A;
  v8 = STACK[0xC58];
  v8[96] = BYTE1(v4) ^ 0x12;
  v9 = STACK[0xE70];
  v9[23] = v4 ^ v7 ^ 0x25;
  v10 = STACK[0xEC0];
  v11 = *(STACK[0xEC0] + ((-7 * (BYTE2(v4) ^ 0x3D)) ^ 0x53));
  v9[182] = HIBYTE(v4) ^ 0xCE;
  v12 = (((v1 >> 11) & 0xE0 | (v1 >> 19) & 0x1F) ^ 0xB8) - ((v1 >> 18) & 8) - 347564540;
  HIDWORD(v13) = v11 >> 7;
  LODWORD(v13) = ((((v11 >> 7) | (2 * v11)) - ((2 * ((v11 >> 7) | (2 * v11))) & 0x16) - 117) ^ 0x8A) << 24;
  v14 = STACK[0xCA8];
  v14[1] = BYTE4(v4) ^ 0x5F;
  v14[66] = BYTE1(v1) ^ 0x21;
  v14[104] = BYTE5(v4) ^ 0x79;
  v9[369] = BYTE3(v4) ^ 5;
  v8[221] = v1 ^ 0xAC;
  v9[107] = BYTE6(v4) ^ 2;
  v9[147] = ((v13 >> 25) ^ 0x7B) + 85;
  v15 = STACK[0xE68];
  v16 = *(STACK[0xE68] + (v12 ^ 0xEB4896F7));
  v14[95] = BYTE6(v1) ^ 0xFD;
  v8[45] = BYTE4(v1) ^ 0xD1;
  v14[98] = BYTE5(v1) ^ 0x1F;
  v9[292] = BYTE3(v1) ^ 0x6F;
  v14[19] = BYTE2(a1) ^ 0x1B;
  v17 = ((v5 >> 7) & 0xFFB3F6 ^ 0xAB02A0) + ((v5 >> 8) ^ 0xFFAA78AF);
  v14[4] = (v12 ^ 0xC4) + (v16 ^ 0x2D) - 2 * ((v16 ^ 0x2D) & (v12 ^ 0x44)) - 113;
  v14[82] = BYTE1(a1) ^ 0xB2;
  v8[81] = a1 ^ 0xD4;
  v9[267] = HIBYTE(v1) ^ 0x82;
  v9[243] = BYTE6(a1) ^ 0x71;
  v9[330] = HIBYTE(a1) ^ 3;
  v9[181] = BYTE5(a1) ^ 0x75;
  v9[259] = BYTE4(a1) ^ 0xD8;
  v9[373] = v5 ^ 0x1D;
  v9[70] = BYTE3(a1) ^ 0x64;
  v18 = *(v10 + (-7 * v17 - 35) - ((242 * v17 + 186) & 0xA6) + 83);
  v8[174] = BYTE2(v5) ^ 0xA1;
  v14[44] = (v18 ^ 0x7B) + 85;
  v14[102] = BYTE4(v5) ^ 0x5F;
  v9[296] = BYTE3(v5) ^ 0xD5;
  v19 = STACK[0xE60];
  v20 = *(STACK[0xE60] + ((35 * (BYTE5(v5) ^ 0x31) - ((70 * (BYTE5(v5) ^ 0x31)) & 0xD6) - 21) ^ 0xF7)) ^ (35 * ((v5 >> 40) ^ 0x77FD31) - ((70 * ((v5 >> 40) ^ 0x77FD31)) & 0x521809D6) + 688653547);
  v9[325] = BYTE6(v3) ^ 0xFD;
  HIDWORD(v13) = v20 ^ 1;
  LODWORD(v13) = (v20 ^ 0xC8) << 24;
  v8[16] = v13 >> 26;
  v21 = ((v2 >> 11) & 0xE0 | (v2 >> 19) & 0x1F) ^ 0x90;
  v22 = *(v19 + ((35 * (HIBYTE(v3) ^ 0x77) - ((70 * (HIBYTE(v3) ^ 0x77)) & 0x4E) - 89) ^ 0xBBLL)) ^ (35 * (HIBYTE(v3) ^ 0x77) - ((70 * (HIBYTE(v3) ^ 0x77)) & 0x794E) - 1666188121);
  v9[144] = BYTE1(v2) ^ 0x45;
  v8[194] = v2 ^ 0x25;
  HIDWORD(v13) = v22 ^ 1;
  LODWORD(v13) = (v22 ^ 0xFFFFFF87) << 24;
  v14[43] = v13 >> 26;
  v23 = (v21 + 59 - 2 * (v21 & 0xCC ^ (v2 >> 19) & 4) - 115) ^ 0x25 ^ *(v15 + ((v21 - 139718341 - 2 * (v21 & 0xCCCCCCCC ^ (v2 >> 19) & 4) + 141) ^ 0xF7AC113B));
  v8[133] = BYTE6(v2) ^ 0x4F;
  v14[46] = HIBYTE(v2) ^ 0xDC;
  v8[191] = v23 - 113;
  v14[3] = BYTE3(v2) ^ 0x58;
  v9[173] = BYTE4(v2) ^ 0x5C;
  v8[135] = BYTE5(v2) ^ 0x41;
  return (*(STACK[0xED0] + 8 * v6))(1506179499);
}

uint64_t sub_244911BAC()
{
  *(v0 + 28) = (v1 ^ v4) + 1;
  LODWORD(STACK[0xF28]) = *(STACK[0xCA8] + 48) + v4 - ((v2 + v5) & (2 * *(STACK[0xCA8] + 48)));
  return (*(v6 + 8 * ((((v2 + 880577969) & 0xCB8373F7 ^ 0x52DE) * (v3 ^ 1)) ^ v2)))();
}

uint64_t sub_244911C0C(int a1)
{
  LODWORD(STACK[0xE78]) = v4;
  v9 = v2 - 16456;
  v10 = 5 * ((v2 - 16456) ^ 0x1C);
  v11 = *STACK[0xC48];
  v12 = v1 ^ v3;
  v13 = (v1 ^ v3) + (v6 ^ v7) + ((2 * v1) ^ 0xEEB2841D) + (v10 ^ 0x511C);
  v14 = v13 ^ 0xFB3BB0FF;
  v15 = (2 * v13) & 0xF67761FE;
  v16 = v1 ^ v6;
  v17 = v1 ^ v6 ^ a1;
  v18 = *(v5 + 8 * (v9 - 4034));
  v19 = v15 + v14 + v12 + 79974145;
  v20 = v19 - ((2 * v19) & 0x65183032) + 848042009;
  v21 = v17 - (v20 ^ (v17 - 2 * (v17 & 0x328C181D ^ v16 & 4) + 848042009));
  STACK[0xE68] = v18 + 525;
  v22 = ((v21 ^ ((v20 ^ 0xCD73E7E6) + 1)) - ((2 * (v21 ^ ((v20 ^ 0xCD73E7E6) + 1))) & 0x65183032) + 848042009) ^ v20;
  STACK[0xE70] = v11;
  v23 = ((2 * (v20 ^ v16)) & 0xFFFFEF5E ^ 0xD694C344) + (v20 ^ v16 ^ 0x94B5961D);
  STACK[0xEC0] = (v23 + 2129) << 32;
  v24 = v19 + (v16 ^ 0xA6398654) + v23 - v22 + 2130;
  v25 = *(v8 + 8 * v9);
  STACK[0xEC8] = v18 - 4;
  LODWORD(STACK[0xEB0]) = 149270;
  LODWORD(STACK[0xEA8]) = 356572;
  LODWORD(STACK[0xEB8]) = v24;
  LODWORD(STACK[0xEA0]) = v24 - 535900495;
  return v25();
}

uint64_t sub_2449122A8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(STACK[0xEE0]) = LODWORD(STACK[0xEB8]) > 0x1FF1314E;
  STACK[0xE88] = (a4 + 4570) | 0x82u;
  v4 = LODWORD(STACK[0xEE8]) - 1427031789;
  v5 = LODWORD(STACK[0xEE0]) ^ (v4 < 0xE00ECEB1);
  v6 = LODWORD(STACK[0xEA0]) > v4;
  if (v5)
  {
    v7 = STACK[0xEE0];
  }

  else
  {
    v7 = v6;
  }

  return (*(STACK[0xED0] + 8 * (a4 ^ (897 * (v7 ^ 1)))))();
}

uint64_t sub_244914034(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(STACK[0xEE8]) = a3;
  LODWORD(STACK[0xED8]) = *(STACK[0xE90] + 4 * (a3 - 891131295));
  return (*(STACK[0xED0] + 8 * v3))(36657529);
}

uint64_t sub_2449140A0(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, int a8)
{
  v10 = v8 < a1;
  if (v10 == a8 + a7 < a1)
  {
    v10 = v8 > a8 + a7;
  }

  return (*(STACK[0xED0] + 8 * (a5 ^ (!v10 * v9))))();
}

uint64_t sub_2449146D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = STACK[0xE88];
  v9 = BYTE2(a5) ^ 0xB7;
  v10 = BYTE3(a5) ^ 0x52;
  v11 = BYTE5(a5) ^ 0xAB;
  v12 = STACK[0xC58];
  v12[119] = (a5 >> ((STACK[0xE88] + 43) ^ 0x2E)) ^ 0xA4;
  v12[210] = BYTE4(a5) ^ 0x5C;
  v13 = a5 ^ 0x2E;
  v14 = STACK[0xCA8];
  v14[109] = BYTE1(a5) ^ 0x19;
  v15 = BYTE6(a5) ^ 0x6F;
  v16 = STACK[0xE70];
  v16[317] = v9;
  v16[125] = v6 ^ 0x1D;
  v12[98] = BYTE5(v6) ^ 0x85;
  v16[1] = BYTE1(v6) ^ 0x50;
  v14[84] = v11;
  v12[178] = v13;
  v16[321] = v15;
  v16[9] = v10;
  v14[110] = BYTE4(v6) ^ 0xBD;
  v12[180] = BYTE2(v6) ^ 0x15;
  v12[215] = BYTE6(v6) ^ 0x29;
  v16[14] = BYTE3(v6) ^ 0x4C;
  v14[64] = (HIBYTE(v6) & 0xD1 ^ 0x2F) & (HIBYTE(v6) ^ 0xD);
  v17 = STACK[0xEC8];
  v18 = *(STACK[0xEC8] + (((v5 ^ 0x57) - 32) ^ 0x86));
  v19 = ((v18 >> 2) | (v18 << 6)) - ((v18 >> 1) & 0x36);
  v20 = ((v19 - 101) & 0x3C ^ (4 * (v19 - 101))) & 0xFC | (100 - v19) & 3;
  v12[78] = HIBYTE(v5) ^ 0x25;
  v12[147] = BYTE1(v5) ^ 0x1E;
  v14[88] = BYTE2(v5) ^ 0x3C;
  v12[22] = BYTE4(v5) ^ 0xB;
  v16[261] = BYTE3(v5) ^ 0x3B;
  v21 = ((v7 >> 10) ^ 0x21) - 2 * (((v7 >> 10) ^ 0x21) & 0x3F ^ (v7 >> 10) & 4);
  *v16 = (v19 - 101) ^ 0xF2 ^ (((4 * v20) ^ 0xD0) - 2 * (((4 * v20) ^ 0xD0) & 0x1C ^ (4 * v20) & 4) - 101);
  v14[70] = BYTE5(v5) ^ 0xD;
  v16[51] = v7;
  v12[127] = BYTE6(v5) ^ 0x79;
  v22 = *(STACK[0xE68] + (((v21 + 123) & 0x17 | (((v7 >> 8) & 3) << 6) & 0xD7) ^ ((-60 - v21) & 0x38 | 0x91)));
  v16[278] = BYTE2(v7) ^ 0xF8;
  v12[10] = ~BYTE3(v7);
  v16[346] = (((((v21 + 123) & 0x3F | ((BYTE1(v7) & 3) << 6)) ^ 0x6E) + 28) ^ 0x6D ^ v22) - 37;
  v23 = *(v17 + (((BYTE4(v7) ^ 0xA9) - 32) ^ 0x86));
  v24 = ((v23 >> 2) | (v23 << 6)) - ((2 * ((v23 >> 2) | (v23 << 6))) & 0x7FCA) - 27;
  v14[17] = BYTE6(v7) ^ 0xC8;
  v12[11] = BYTE5(v7) ^ 0x30;
  v12[56] = a2 ^ 0xF4;
  v16[285] = HIBYTE(v7) ^ 0xFD;
  v12[92] = BYTE6(a2) ^ 0xFD;
  v12[42] = v24 ^ 0xF2 ^ (((16 * v24) ^ (4 * v24) ^ 0xC4) - ((2 * ((16 * v24) ^ (4 * v24) ^ 0xC4)) & 0xC8) - 27);
  v14[63] = BYTE1(a2) ^ 0x31;
  v12[110] = BYTE2(a2) ^ 0x86;
  v14[67] = BYTE4(a2) ^ 0x74;
  v12[59] = BYTE5(a2) ^ 0x58;
  v12[150] = BYTE3(a2) ^ 0xAE;
  v14[69] = HIBYTE(a2) ^ 0x8B;
  return (*(STACK[0xED0] + 8 * v8))();
}

uint64_t sub_244914A90()
{
  *(v4 + 48) = (v0 ^ v2) + 1;
  LODWORD(STACK[0xF3C]) = (*(v5 + 68) ^ 0x4EFADDE5) - 11014244 + ((2 * *(v5 + 68)) & 0x9DF5BBCA);
  return (*(v6 + 8 * ((62 * v3) ^ v1)))();
}

uint64_t sub_244914B00()
{
  STACK[0xEE8] = (v0 - 4688);
  v7 = *STACK[0xC48];
  v8 = *(v2 + 8 * (v0 - 11196));
  STACK[0xE80] = v8 + 532;
  STACK[0xE70] = v8 + 268;
  STACK[0xE78] = v8 + 792;
  STACK[0xE88] = v7;
  STACK[0xEC8] = (v5 + v1 + 1571) << 32;
  v9 = v3 ^ v4;
  if ((v3 ^ v4) <= 1)
  {
    v9 = 1;
  }

  LODWORD(STACK[0xEC0]) = v9 + 1783323847;
  v10 = *(v6 + 8 * v0);
  STACK[0xED8] = v8 + 7;
  return v10();
}

uint64_t sub_244915280(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = (a4 - 10224) | 0x2852u;
  v13 = (a4 - 1619857707) & 0x608CFEF7;
  STACK[0xEE0] = v13;
  v14 = v8 ^ (STACK[0xEC8] + v9);
  v15 = v14 ^ 0x46BFE4A44B46685ALL;
  v16 = v14 ^ 0x46BFE4A44B46685ALL ^ a7;
  STACK[0xEB8] = v12;
  v17 = ((v13 ^ 0xD73067562FE58723) + v12) ^ v10;
  v18 = v17 ^ a3 ^ 0x1EBB748CAE406846;
  v19 = a3 ^ 0x1EBB748CAE406846 ^ v11;
  v20 = v14 ^ 0xA9822A80E021D743;
  v21 = v18 ^ (v19 ^ 0x86B6ABEE5F970486) & (v14 ^ 0x567DD57F1FDE28BCLL);
  v22 = v19 ^ (((v16 ^ 0x377F4B65A9462A95) & v20) - ((2 * ((v16 ^ 0x377F4B65A9462A95) & v20)) & 0xAF09ABDA3AEE9E7CLL) + 0x5784D5ED1D774F3ELL) ^ 0x4ABE5C6BD5D5466ALL;
  v23 = v22 ^ (((v16 ^ 0xC880B49A56B9D56ALL) & (v10 ^ 0xA90F208C07934331)) - ((2 * ((v16 ^ 0xC880B49A56B9D56ALL) & (v10 ^ 0xA90F208C07934331))) & 0xC8E7BB2ED195E45ALL) + 0x6473DD9768CAF22DLL);
  v24 = v16 ^ v10 & 0x789A39387A9452A4 ^ (a3 ^ 0xEA6A4C51AA6A1D01) & (v10 ^ 0x56F0DF73F86CBCCELL);
  *(&v26 + 1) = v24 ^ 0x35255D1423A11;
  *&v26 = v24 ^ 0x67EC000000000000;
  v25 = v26 >> 50;
  v27 = (v18 ^ 0xD8BB9C0A937516DLL) & (v19 ^ 0x79495411A068FB79);
  *(&v26 + 1) = v25 ^ 0xEC2;
  *&v26 = v25 ^ 0x375E85D686C60000;
  v28 = (v26 >> 14) + 0x7F5453E257FFA310 - ((2 * (v26 >> 14)) & 0xFEA8A7C4AFFF4620);
  v29 = v22 ^ 0xB75FAD47C63D849CLL ^ v21;
  v30 = v23 - ((2 * v23) & 0x218463B6A93081CCLL) + 0x10C231DB549840E6;
  v31 = (v28 & 0xFD6A522E1A934CDELL ^ 0x7502500818904016 | v28 ^ 0x886D03B78367BDE8) & (v28 & 0xFD6A522E1A934CDELL ^ 0x7797FDD9FDFCF337);
  v32 = v31 + 0x24B8BD5BE2539B9CLL - ((2 * v31) & 0x49717AB7C4A7373ALL) + 1;
  v33 = (v27 - ((2 * v27) & 0xFC7E8FB450ED12E2) + 0x7E3F47DA28768971) ^ v17;
  v34 = (v33 + 0x7F5453E257FFA310 - ((2 * v33) & 0xFEA8A7C4AFFF4620)) ^ v28;
  *(&v26 + 1) = v26 >> 14;
  *&v26 = v32 ^ 0x24B8BD5BE2539B9CLL;
  v35 = (v29 >> 19) ^ (v29 << 36) ^ ((v29 >> 28) | (v29 << 45));
  v36 = v28 ^ __ROR8__(v32, 6) ^ (v26 >> 1);
  v37 = v30 ^ v15 ^ ((v30 ^ v15) << 25) ^ (8 * (v30 ^ v15)) ^ ((v30 ^ v15) >> 39) ^ ((v30 ^ ~v15) >> 61);
  v38 = v37 ^ 0xA8F6CC8216E7F2DCLL;
  v39 = v36 ^ v37 ^ 0xA8F6CC8216E7F2DCLL;
  v40 = v21 ^ (v21 << 23) ^ (v21 >> 7) ^ (v21 << 57) ^ (v21 >> 41);
  v41 = v40 ^ v29 ^ ((v35 ^ 0x8C7BCFE7AFC0B921) + 0x7CCC4E4EF043F1F1 - 2 * ((v35 ^ 0x8C7BCFE7AFC0B921) & 0x7CCC4E4EF043F1FFLL ^ v35 & 0xE));
  v42 = v34 ^ (v34 >> 10) ^ (v34 << 47) ^ (v34 << 54) ^ (v34 >> 17);
  v43 = v42 ^ 0x845F2C4C45AFC48 ^ v40;
  v44 = v41 ^ (v36 ^ 0x195B36CF67DBF58) & (v37 ^ 0x25F16CB7374F4299);
  v45 = v43 ^ (v41 ^ 0xA96B06174D0D2252) & (v37 ^ 0xDA0E9348C8B0BD66);
  v46 = v45 ^ v44;
  v47 = (((v42 ^ 0xE43B256EAA329B6) & (v39 ^ 0x8C921359D7D50F1DLL)) - ((2 * ((v42 ^ 0xE43B256EAA329B6) & (v39 ^ 0x8C921359D7D50F1DLL))) & 0xE5F0BF95BCAE9F74) + 0x72F85FCADE574FBALL) ^ v38;
  v48 = (v47 - ((2 * v47) & 0xD85D42A3EC0AE6BALL) + 0x6C2EA151F605735DLL) ^ v44;
  v49 = (v42 ^ 0xF1BC4DA9155CD649) & (v40 ^ 0xE0C97EBD1BAE5B4ELL) ^ v39;
  v50 = (((v43 ^ 0x1930C1D0CAA8714FLL) & (v41 ^ 0x5694F9E8B2F2DDADLL)) - ((2 * ((v43 ^ 0x1930C1D0CAA8714FLL) & (v41 ^ 0x5694F9E8B2F2DDADLL))) & 0xC0C81245DF3ABFCLL) + 0x60640922EF9D5FELL) ^ v42 ^ 0x845F2C4C45AFC48;
  v51 = (v50 - ((2 * v50) & 0x5045F73BDCBDB1E0) - 0x57DD046211A12710) ^ v49;
  v52 = (v48 >> 39) ^ (8 * v48);
  v53 = ((67 * ((*(STACK[0xED8] + ((((v48 >> 61) ^ 5) + 52) ^ 0xA4)) + 74) ^ 0x8B)) | (v48 << 25)) ^ v48;
  v54 = v49 << 63;
  v55 = (v45 >> 41) ^ 0x6E1005;
  v56 = v55 | v45 ^ 0xDC200B91C1DCD621;
  v57 = v52 ^ 0xD87191C3CC2F0669 ^ v53;
  v53 ^= 0x583476633E654B90uLL;
  v58 = v52 ^ 0xE1FE4AD7F23C892FLL ^ (((v53 - v57) ^ ((v52 ^ 0x7FBA185F0DB5B206) + 1)) - ((2 * ((v53 - v57) ^ ((v52 ^ 0x7FBA185F0DB5B206) + 1))) & 0xC3775AEE00ED89ACLL) + 0x61BBAD770076C4D6);
  v59 = (v46 >> 19) ^ (v46 << 36) ^ (v46 << 45) ^ (v46 >> 28);
  *(&v26 + 1) = v51 ^ 0x1A3;
  *&v26 = v51 ^ 0xD49A4C61F47BAC00;
  v60 = v26 >> 10;
  *(&v26 + 1) = v45 ^ 0x21;
  *&v26 = v45 ^ 0xDC200B91C1DCD600;
  v61 = v58 + v53 + 0x6429D36E38B1D21DLL - ((2 * (v58 + v53)) & 0xC853A6DC7163A43ALL);
  v62 = v51 ^ __ROR8__(v51, 17) ^ v60;
  v63 = v55 & (v45 ^ 0xDC200B91C1DCD621) | (v45 << 23);
  STACK[0xEB0] = v49;
  v64 = v49 ^ (v49 >> 6) ^ (v49 >> 1) ^ (v49 << 58) ^ ((v49 << 63) - 0x42106D59D3AD7E26);
  v65 = v61 ^ v64;
  v66 = v56 ^ (v26 >> 7) ^ v63;
  v67 = v61 ^ v64 ^ 0x45DE96C9D67B7FDLL;
  *(&v26 + 1) = v62 ^ 0x1E;
  *&v26 = v62 ^ 0x24BA62CD24B5780;
  v68 = v26 >> 7;
  v69 = v66 ^ v46 ^ ((v59 ^ 0xBF0FCF4194996BC8) + 0x311E1CC875D2E68BLL - 2 * ((v59 ^ 0xBF0FCF4194996BC8) & 0x311E1CC875D2E68FLL ^ v59 & 4));
  v70 = v62 ^ v66;
  *(&v26 + 1) = v68 ^ 0x1E3C2DB5DD61741;
  *&v26 = v68 ^ 0x5A00000000000000;
  v71 = (v70 ^ 0x3554B7B83D34A861) & (v69 ^ 0x379563A0BAF8CBE3);
  v72 = (v61 ^ 0x9BD62C91C74E2DE2 | v69 ^ 0x379563A0BAF8CBE3) ^ v70;
  v73 = ((v26 >> 57) ^ 0xE1E925114F45F52) & (v70 ^ 0x2B45D6CBA089FF7) ^ (v26 >> 57) & 0xC81F152B78C3C869;
  v74 = (v61 ^ 0x9BD62C91C74E2DE2) & (v64 ^ 0x9F8BC5FD5A299A1FLL) ^ v69;
  v75 = v74 ^ v61 ^ ((v67 & (v62 ^ 0x24BA62CD24B579ELL)) + 0x6429D36E38B1D21DLL - ((2 * (v67 & (v62 ^ 0x24BA62CD24B579ELL))) & 0xC853A6DC7163A43ALL));
  v76 = v74 ^ v72 ^ 0x4961FBD0EEFC2506;
  v77 = (v65 ^ 0x265A74F237D4ED28 ^ ((((v73 ^ 0x81E100110C04840) - (v73 ^ 0xF3BC069272580042 ^ v65)) ^ (v67 + 1)) - ((2 * (((v73 ^ 0x81E100110C04840) - (v73 ^ 0xF3BC069272580042 ^ v65)) ^ (v67 + 1))) & 0xBBF0C4C2AA994A54) - 0x22079D9EAAB35AD6)) + (v73 ^ 0x81E100110C04840);
  v78 = v77 + 0x23A69357A8C6DCEDLL - ((2 * v77) & 0x474D26AF518DB9DALL);
  v79 = (((v76 << 36) ^ 0x9E185EC000000000) - 0x502D32E4846513 - ((2 * ((v76 << 36) ^ 0x9E185EC000000000)) & 0xFF5FA58000000000)) ^ 0xFFAFD2CD1B7B9AEDLL;
  v80 = v76 >> 28;
  v81 = v79 & (v76 ^ (v76 >> 19) ^ 0x6218C8020169A6D0) ^ (v76 << 45) ^ (v79 | v76 ^ (v76 >> 19) ^ 0x6218C8020169A6D0);
  v82 = v81 ^ 0xB96D8A1D1CF3CA8ELL;
  v83 = v81 ^ 0xB96D8A1D1CF3CA8ELL ^ (v76 >> 28);
  v84 = (0x1A5365B5EE337331 - (v72 ^ 0x2F07D20DD307DB50)) ^ ((v72 ^ 0xCAAB4847C2CB579ELL) + 1);
  v85 = v72 ^ 0x73B5947287619C17 ^ (v84 - ((2 * v84) & 0x8DC2479574AA68ECLL) + 0x46E123CABA553476);
  if (v78 != 0xF21997D645E67C3BLL)
  {
    v82 = v83 ^ 0x9DE73BBEELL;
  }

  STACK[0xEA0] = v83;
  v86 = v83 & 0x800000000;
  v87 = (2 * (v83 & 0x800000000)) ^ 0x1000000000 | v83 & 0x800000000;
  v88 = v87 + 0x6B1CFD37BD4A421CLL;
  v89 = (v71 + 0x23A69357A8C6DCEDLL - ((2 * v71) & 0x474D26AF518DB9DALL)) ^ v62 ^ v78;
  v90 = v85 - ((2 * v85 + 0x34A6CB6BDC66E662) & 0x89C37F7931103622) - 0x20CADA8D794471BELL;
  v91 = v80 ^ 0x6218C4411;
  v92 = ((v82 ^ 0xD1CF3CA8ELL) & (v80 ^ 0x6218C4411)) - 0x35811E8306D54F1 - ((2 * ((v82 ^ 0xD1CF3CA8ELL) & (v80 ^ 0x6218C4411))) & 0xF9F25561ELL);
  *(&v94 + 1) = v75 ^ 0x1BC2094DDCLL;
  *&v94 = v75 ^ 0x3795638000000000;
  v93 = v94 >> 39;
  v95 = v81 | v91;
  v96 = ((v92 ^ 0xFCA7EE1000000000) & (v87 + 0x7FFFFFF800000000)) == 0;
  v97 = v89 ^ (v89 >> 10);
  v98 = 0x6B1CFD47BD4A421CLL - v87;
  if (v96)
  {
    v98 = v88;
  }

  v99 = (v92 ^ 0xFCA7EE17CF92AB0FLL) - 0x6B1CFD3FBD4A421CLL + v98 - 0x7D04F4F8BCD6EF90 - ((2 * ((v92 ^ 0xFCA7EE17CF92AB0FLL) - 0x6B1CFD3FBD4A421CLL + v98)) & 0x5F6160E865220E0);
  *(&v101 + 1) = v77;
  *&v101 = v78 ^ 0xF21997D645E67C3ALL;
  v100 = v101 >> 1;
  STACK[0xEA8] = v99;
  v102 = v99 ^ ((v95 ^ 0x30BD800000000000) - 0x7D04F4F8BCD6EF90 - 2 * ((v95 ^ 0x30BD800000000000) & 0x2FB0B074329107CLL ^ v95 & 0xC));
  v103 = (v102 - ((2 * v102) & 0x3D428D22005E0B7ELL) - 0x615EB96EFFD0FA41) ^ (v86 | 0x17714C823D508B20);
  v104 = (v89 << 47) ^ 0x8CD994CB8161C81CLL ^ v97;
  v105 = v97 ^ 0xAB1E14CB8161C81CLL;
  v106 = (v89 << 47) ^ 0x1E368F147C92D08DLL ^ (((v105 - v104) ^ (((v89 << 47) ^ 0xD8387FFFFFFFFFFFLL) + 1)) + 0x39F10F147C92D08DLL - 2 * (((v105 - v104) ^ (((v89 << 47) ^ 0xD8387FFFFFFFFFFFLL) + 1)) & 0x39F10F147C92D08FLL ^ (v105 - v104) & 2));
  v107 = v75 ^ __ROR8__(v75, 61) ^ v93;
  *(&v101 + 1) = v90 ^ 0x11111111;
  *&v101 = v90 ^ 0xC4E1BFBC98881B00;
  v108 = v90 ^ __ROR8__(v90, 41) ^ (v101 >> 7);
  v109 = v78 ^ __ROR8__(v78, 6) ^ v100;
  v110 = v109 ^ 0xA3F0954CCEBE1AB9;
  v111 = v109 ^ 0xA3F0954CCEBE1AB9 ^ v107;
  v109 ^= 0x1DD1F1891CF1E5CBuLL;
  v112 = (v106 + v105) ^ (v89 >> 17) ^ ((v89 ^ 0xAB34D9FDFE1E4F8FLL) << (v103 & 0x36u ^ a8) << (v103 & 0x36 ^ 0x20));
  v113 = ((v107 ^ 0x41DE9B3A2DB0008DLL) + 1) ^ v107 ^ (v109 - v111);
  v114 = v112 ^ v108 ^ 0x5C5E038BE29D4811;
  v115 = (v110 ^ v113) + 2 * ((v113 ^ 0x3E2164C5D24FFF72) & v109);
  v116 = v115 - 0x4EFC7546129CB021 - ((2 * v115) & 0x62071573DAC69FBELL);
  v117 = v103 ^ v108 ^ 0x5C5E038BE29D4811;
  v118 = v114 ^ 0xB437F3500340EB6BLL ^ (v117 ^ 0x30DC0DDE307752BFLL) & (v107 ^ 0xBE2164C5D24FFF72);
  v119 = (v116 ^ 0xB1038AB9ED634FDFLL) & (v107 ^ 0x41DE9B3A2DB0008DLL) ^ 0x9B0811FE07483B64 ^ v117;
  v120 = (v112 ^ 0xFFFFAA65930100F0) & (v108 ^ 0x1AADFBB1106A6BCELL);
  v121 = (((v118 ^ v119 ^ 0xA6EFBD2F5589A19FLL) - (v118 ^ v119 ^ 0x84A2FE67C5C67E33)) ^ 0xFFFFFFFFFFFFFFF8) + (v118 ^ v119 ^ 0xA6EFBD2F5589A19FLL);
  v122 = v121 - ((2 * v121) & 0x550A4122701CE05ELL) - 0x557ADF6EC7F18FD1;
  v123 = v107 ^ 0x20B996BE5AF77F2 ^ (((v112 ^ 0x559A6CFEFF0FLL) & (v116 ^ 0x4EFC7546129CB020)) - ((2 * ((v112 ^ 0x559A6CFEFF0FLL) & (v116 ^ 0x4EFC7546129CB020))) & 0x7855FB5C6FC11100) - 0x43D50251C81F7780);
  v124 = (v114 ^ 0xB90C525F61F6232FLL) & (v117 ^ 0x8091211D09DA9F2CLL) ^ v112 ^ (v114 ^ 0xB437F3500340EB6BLL) & 0x4FB2D33CC652326CLL;
  *(&v101 + 1) = v124 ^ 0x162EECFF4BLL;
  *&v101 = v124 ^ 0xD32D48000000000;
  v125 = v101 >> 37;
  v126 = ((v122 << 36) ^ 0x80E702F000000000) - ((2 * ((v122 << 36) ^ 0x80E702F000000000)) & 0x248C6C0000000000) - 0x6DB9C9F1C088D20FLL;
  v127 = (v123 - ((2 * v123) & 0xA857C7BF91812C48) + 0x542BE3DFC8C09624) ^ v119;
  v128 = v120 ^ v116;
  *(&v101 + 1) = v125 ^ 0x1512024;
  *&v101 = v125 ^ 0x46C6790DD0000000;
  v129 = (v101 >> 27) - ((2 * (v101 >> 27)) & 0x1237395745F5ED06);
  v130 = v126 & 0xEC66ABC000000000 ^ v122;
  v131 = v130 & 0xCC66ABC8DD91ED02 | v126 & 0x1399543000000000 ^ v122 & 0x13995437226E12FDLL;
  v132 = (2 * (v130 & 0x2000000000000000)) ^ 0x4000000000000000 | v130 & 0x2000000000000000;
  v133 = v132 | 0x1C2F8EF9B148F93DLL;
  *(&v101 + 1) = v118 ^ 0xC45EF09D4937BBLL;
  *&v101 = v118 ^ 0xF200000000000000;
  v134 = v101 >> 56;
  v135 = v132 - 0x2000000000000000;
  v136 = (((v122 << 45) ^ 0xCE05E00000000000) - 0x3453342E6530E5FDLL - ((2 * ((v122 << 45) ^ 0xCE05E00000000000)) & 0x9759800000000000)) ^ 0xCBACCBD19ACF1A03;
  v137 = 0x5C2F8EF9B148F93DLL - v132;
  if ((v135 & v136) != 0)
  {
    v138 = v137;
  }

  else
  {
    v138 = v133;
  }

  *(&v140 + 1) = v127 ^ 0x4B3270E2E0;
  *&v140 = v127 ^ 0xC94BE60000000000;
  v139 = v140 >> 39;
  v141 = v136 - 0x3C2F8EF9B148F93DLL + v138;
  *(&v140 + 1) = v134 ^ 0x4B;
  *&v140 = v134 ^ 0x2C04E32FAABFA00;
  v142 = v140 >> 8;
  v143 = (v129 + 0x91B9CABA2FAF683) ^ v128;
  v144 = v127 ^ __ROR8__(v127, 61) ^ v139;
  v145 = (0x400000000000001 * (v128 ^ 0x46213B0A53DA9E24) - (((v128 << 59) ^ 0x2000000000000000) & ((2 * v128) ^ 0x8C427614A7B53C48))) ^ ((v128 >> 6) & 0x1C05089E15FF55 ^ (v128 >> 1) & 0x381C05089E15FF55 | (v128 >> 1) & 0x47E3FAF761EA00AALL ^ (v128 >> 6) & 0x3E3FAF761EA00AALL);
  v146 = (v144 ^ 0x8314D412A1F7F5E6) + (((v128 << 63) - 0x4DFEC180A8ABBD16) ^ 0x9009271657F66780 ^ v145) - 2 * ((v144 ^ 0x314D412A1F7F5E6) & (v145 ^ 0x2208196900A2256ALL));
  v147 = v146 - 0x688C31DD6390ECELL - ((2 * v146) & 0xF2EE79C4538DE264);
  *(&v140 + 1) = ((v134 ^ 0x2C04E32FAABFA00) >> 8) ^ 0x14;
  *&v140 = v142 ^ 0x68DA832D027CAC80;
  v148 = (v143 ^ (v143 >> 10) ^ (v143 >> 17)) & 0xFFF7FFFFFFFFFFFFLL ^ (v143 << 47) ^ ((v143 ^ (v143 >> 10) ^ (v143 >> 17)) & 0x8000000000000 | (v143 << 54));
  v149 = (v140 >> 7) ^ (v142 << 23) ^ (((v142 >> 41) ^ 0x346D41) + (v142 ^ 0x68DA832D027CAC94) - 2 * (((v142 >> 41) ^ 0x346D41) & (v142 ^ 0x7CAC94)));
  v150 = (v122 >> 28) ^ (v122 >> 19) ^ v149 ^ v131 ^ v141;
  v151 = (v150 ^ 0x8E423D9D7E4E5E3DLL) & (v148 ^ v149 ^ 0xE1A0DB0C8D43599ALL);
  v152 = v150 ^ (v147 ^ 0xF9773CE229C6F132) & (v144 ^ 0x7CEB2BED5E080A19);
  v153 = (v150 ^ 0x71BDC26281B1A1C2) & (v144 ^ 0x8314D412A1F7F5E6) ^ v148 ^ v149;
  v154 = v147 ^ (v148 ^ 0x7721E55AC743599ALL) & (v149 ^ 0x96813E564A000000);
  v155 = v153 ^ v152;
  v156 = v153 ^ v152 ^ 0x164FD2B08889B7A6;
  v157 = ((v156 << 45) ^ 0x8567000000000000) + 0x289E38352FA9AF41 - ((2 * ((v156 << 45) ^ 0x8567000000000000)) & 0x513C400000000000);
  v158 = (((2 * v147) ^ 0xD11863BAC721D9BLL) + (v147 ^ 0xF9773CE229C6F132)) & (v148 ^ 0x88DE1AA538BCA665);
  v159 = v152 ^ (v158 - ((2 * v158) & 0x27C98E6022A121E8) + 0x13E4C730115090F4);
  v160 = ((v159 ^ 0x9DA6FAAD6F1ECEC9) - 2 * ((v159 ^ 0x9DA6FAAD6F1ECEC9) & 0x983CE16AAF954FELL ^ v159 & a8) - 0x767C31E95506AB18) ^ v144;
  v161 = ((v154 ^ 0xF9773CE229C6F132) - (v148 ^ 0xCA6B57ACFFC42996 ^ v154)) ^ ((v148 ^ 0xCCE394B129FD275BLL) + 1);
  v162 = (v148 ^ 0x7B26C25703C4220CLL ^ (v161 - ((2 * v161) & 0x90755233AB8DF550) + 0x483AA919D5C6FAA8)) + (v154 ^ 0xF9773CE229C6F132);
  v163 = v160 ^ (v160 >> 39);
  v164 = (v156 ^ (v156 >> 19) ^ ((v156 ^ (v156 >> 19) ^ 0xA84AFB7E562D35C4) + 1) ^ 0xD4F86F069BFC1D3ELL ^ ((v157 ^ 0x289E38352FA9AF41) - (v156 ^ (v156 >> 19) ^ 0x7F2B3CB4867B657ALL ^ v157) - ((2 * ((v157 ^ 0x289E38352FA9AF41) - (v156 ^ (v156 >> 19) ^ 0x7F2B3CB4867B657ALL ^ v157))) & 0x69AD70E645DAE0ALL) - 0x7CB29478CDD128FBLL)) + (v157 ^ 0x289E38352FA9AF41);
  v165 = v151 ^ v162;
  v166 = (v153 ^ v152 ^ 0x41FADCC780959C9ELL) >> (v163 & 0x1C ^ 0x14) >> (v163 & 0x1C ^ 8);
  v167 = (v160 << 25) ^ (8 * v160) ^ ((v163 ^ 0x5AE692752C30BF54) + ((v160 >> 61) ^ 2) - 2 * ((v163 ^ 4) & ((v160 >> 61) ^ 2)));
  if (v54)
  {
    v168 = v165 ^ (v165 << 54);
  }

  else
  {
    v168 = 0;
  }

  v169 = ((v153 << 57) ^ 0xA600000000000000) - 0xE8C5D982E971B7ELL - (((v153 << 57) ^ 0xA600000000000000) >> 60 << 61);
  v170 = ((v153 << 23) ^ 0x74D3B96E29800000) + 0x775B9F9229F77152 - ((2 * ((v153 << 23) ^ 0x74D3B96E29800000)) & 0xEEB73F2453000000);
  v171 = v153 ^ (v153 >> 7) ^ (v153 >> 41) ^ 0x50371C88741472F3;
  v172 = (v170 ^ 0x775B9F9229F77152) + v171 - 2 * ((v170 ^ 0x775B9F9229F77152) & v171);
  v173 = (v172 ^ 0xF7FF7F8BEB7FF77DLL) + 0x800807414800883 + ((2 * v172) & 0xEFFEFF17D6FFEEFALL);
  v174 = v173 + (v169 ^ 0xF173A267D168E482) - 2 * (v173 & (v169 ^ 0x7173A267D168E482));
  v175 = (v166 ^ (v155 << 36) ^ v164 ^ (v174 - 0x77B8DB6BD15442FCLL - ((2 * v174) & 0x108E49285D577A08)) ^ 0x7EE1128BD15442FBLL) & (v167 ^ 0x3D6D994D842B9380) ^ (v174 - 0x77B8DB6BD15442FCLL - ((2 * v174) & 0x108E49285D577A08)) ^ (v165 >> 10) & v165 ^ __ROR8__(v165, 17) ^ (v168 ^ (v165 >> 10) | v165 ^ (v165 << 54)) ^ 0x89466984BBC4B12BLL;
  v176 = (0xAF2FCE306695822 - (v175 ^ 0xBF3B1F39306540DLL)) ^ ((v175 ^ 0xFEFEB2EF6A90F3D0) + 1);
  v177 = v175 ^ 0x91116AF17636BB26 ^ (v176 - ((2 * v176) & 0x20204FC3C6B36E12) - 0x6FEFD81E1CA648F7);
  v178 = v177 - ((2 * v177 + 0x15E5F9C60CD2B044) & 0x37DA2579CA3F5D08) - 0x591FF0601476F95ALL;
  v179 = ((v178 << 57) ^ 0x800000000000000) - 0x4DBD4F03C2393F19 - ((v178 << 58) & 0x6666666666666666);
  v180 = v179 ^ 0x1400000000000000;
  if (v178 == 0x9BED12BCE51FAE84)
  {
    v180 = 0x5800000000000000;
  }

  v181 = v180 & (v179 ^ 0xB242B0FC3DC6C0E7) ^ (v178 << 23) ^ (v179 & 0xA600000000000000 ^ (v178 ^ (v178 >> 7)) & 0xA7899A64DBE88BE7 | (v178 ^ (v178 >> 7)) & 0x5876659B24177418);
  *(&v183 + 1) = (((v178 >> 41) ^ 0x4DF689) - 2 * (((v178 >> 41) ^ 0x4DF689) & 0x5F2AFC ^ (v178 >> 41) & 0x14) + 0x5C0F9DF2AE8) ^ 0x28E270ABB31 ^ v181;
  *&v183 = v181 ^ 0x66A8400000000000;
  v182 = v183 >> 43;
  *(&v183 + 1) = v182 ^ 0x1EE101;
  *&v183 = v182 ^ 0x1C23DCB2BF400000;
  return (*(STACK[0xED0] + 8 * (a4 ^ (45 * (LODWORD(STACK[0xEE8]) != LODWORD(STACK[0xEC0]))))))(v183 >> 21, a2, (v183 >> 21) ^ 0x9AEA5EEB334A4368);
}

uint64_t sub_244917268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = v8 ^ a3;
  v11 = a3 ^ v7;
  *(&v13 + 1) = v11 ^ 0x130318C;
  *&v13 = v11 ^ 0xB25D8C2560000000;
  v12 = v13 >> 26;
  *(&v13 + 1) = v12 ^ 0x10CB10DE0FLL;
  *&v13 = v12 ^ 0x557C4DC000000000;
  v14 = (v10 ^ 0x138AE28BB427AD33) & (v6 ^ 0x9EAB63FC8A62B760) ^ ((v13 >> 38) - ((2 * (v13 >> 38)) & 0x27B926280C991718) - 0x6C236CEBF9B37474);
  *(&v13 + 1) = v14 ^ 0x1DC14153C30;
  *&v13 = v14 ^ 0xF73EAA0000000000;
  return (*(v9 + 8 * a6))(a1, 4294961975, v14 ^ __ROR8__(v14, 7) ^ 0xFB3280818192C0DALL ^ (v13 >> 41));
}

uint64_t sub_244917654@<X0>(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v7 = STACK[0xEB8];
  v8 = STACK[0xEB8] ^ 0x81;
  v9 = STACK[0xEA0] & 0xFFFFFFF7FFFFFFFFLL;
  v10 = STACK[0xCA8];
  v10[68] = a2 ^ 0xDA;
  v10[80] = BYTE3(a2) ^ 0x27;
  v10[5] = BYTE1(a2) ^ 0x2C;
  v11 = STACK[0xE88];
  v11[294] = BYTE4(a2) ^ 0x2A;
  v11[358] = (a2 >> (v8 ^ 0x4Bu)) ^ 0x4A;
  v10[13] = BYTE2(a2) ^ 0x93;
  v10[103] = BYTE5(a2) ^ 0x67;
  v11[398] = v3 ^ 0x3A;
  v11[400] = BYTE4(v3) ^ 0xA4;
  v11[17] = BYTE3(v3) ^ 0x4C;
  v12 = STACK[0xC58];
  v12[28] = BYTE5(v3) ^ 0xE;
  v13 = ((v5 >> 21) & 0xF8 | (v5 >> 29)) ^ 0x9A;
  v14 = v13 + 1937269867 - ((2 * v13) & 0x15C) + 67;
  v12[185] = BYTE1(v3) ^ 0x2A;
  v11[115] = BYTE2(v5) ^ 0x70;
  v10[111] = BYTE2(v3) ^ 0xA7;
  v12[84] = BYTE6(v3) ^ 0x70;
  v12[168] = BYTE1(v5) ^ 0xB3;
  v12[31] = HIBYTE(a2) ^ 0x23;
  v10[8] = v5 ^ 0x15;
  v12[38] = HIBYTE(v3) ^ 0x5E;
  v15 = STACK[0xE80];
  LOBYTE(v14) = (*(STACK[0xE80] + (v14 ^ 0x7378646Bu)) + (v14 ^ 0x5C)) ^ 0x77;
  HIDWORD(v16) = (v5 >> 45) ^ 6;
  LODWORD(v16) = ((v5 >> 37) ^ 0x30) << 24;
  v12[177] = BYTE4(v5) ^ 0x60;
  v11[78] = v14 - 12;
  v17 = *(STACK[0xE70] + ((v16 >> 27) ^ 0x84));
  v11[315] = HIBYTE(v2) ^ 0x5B;
  v12[15] = BYTE6(v5) ^ 0x6C;
  v12[125] = v4 ^ 0x5F;
  HIDWORD(v16) = v17 ^ 0xFFFFFFFB;
  LODWORD(v16) = (v17 ^ 0xFFFFFFBF) << 24;
  v11[318] = v16 >> 29;
  v18 = STACK[0xE78];
  v19 = *(STACK[0xE78] + (((BYTE1(v4) ^ 0xE0) - 111) ^ 0x41));
  if ((STACK[0xEA8] ^ v9) == 0xB2B01147E569EEFLL)
  {
    v20 = 56;
  }

  else
  {
    v20 = v19 ^ 0x5A;
  }

  v21 = (v20 & (v19 ^ 0xFFFFFF9D) | v19 ^ 0x25) - ((2 * (v20 & (v19 ^ 0xFFFFFF9D) | v19 ^ 0x25)) & 0x5E);
  v11[162] = BYTE2(v4) ^ 0xF8;
  HIDWORD(v22) = v19 ^ 9;
  LODWORD(v22) = (v19 ^ 0x30) << 24;
  v23 = ((32 * ~(v21 + 55)) | ((v21 - 81) >> 3) & 0xF) ^ (v22 >> 28);
  HIDWORD(v22) = v23 ^ 4;
  LODWORD(v22) = (v23 ^ 0x55555555) << 24;
  v24 = v22 >> 28;
  v25 = v24 ^ 0xE9;
  v26 = v24 & 0x52 ^ 0x10;
  v27 = v24 & 0xAD ^ 0xF9;
  if (v3 != 0x5E700EA44CA72A3ALL)
  {
    v27 = v25;
  }

  v12[182] = 47 * (v27 ^ 0xFC | v26);
  v28 = *(v18 + (((BYTE3(v4) ^ 0xB8) - 111) ^ 0x41));
  v10[11] = BYTE4(v4) ^ 0xD8;
  v11[323] = 47 * (v28 & 0xEF ^ 0x29 ^ (((2 * v28) & 0x8F ^ 0x7A) - (~v28 & 0x10)));
  v29 = *(STACK[0xED8] + ((51 - BYTE5(v4)) ^ 0xA4)) + 74;
  v30 = STACK[0xEB0] & 0x30;
  v10[105] = BYTE6(v4) ^ 0xF;
  v31 = ((v4 >> 53) & 0xF8 | (v4 >> 61)) ^ 0xF1;
  v32 = v31 - 1762953620 - 2 * (v31 & 0xAF ^ (v4 >> 61) & 6) + 61;
  v11[395] = 67 * (v29 ^ 0x8B);
  v33 = *(v15 + (v32 ^ 0x96EB766C));
  v10[2] = BYTE3(a1) ^ 0x1E;
  v11[223] = HIBYTE(a1) ^ 0xF7;
  v11[411] = BYTE4(a1) ^ 0xE1;
  v12[14] = (a1 ^ 0xF70808E11EE595FALL) >> v30 >> (v30 ^ 0x30u);
  v11[137] = a1 ^ 0xFA;
  v11[389] = BYTE2(a1) ^ 0xE5;
  v12[53] = BYTE5(a1) ^ 8;
  v12[115] = ((v33 + (v32 ^ 0x5B)) ^ 0x77) - 12;
  v10[87] = BYTE1(a1) ^ 0x95;
  return (*(v6 + 8 * v7))();
}

uint64_t sub_244917B00(uint64_t a1, uint64_t a2, unint64_t a3)
{
  LODWORD(STACK[0xE90]) = a3 ^ 0x3E4;
  v5 = STACK[0xEF8];
  v6 = *STACK[0xEF8] ^ 0x2D4C15CC;
  v7 = (v4 - 208);
  *v7 = 0;
  LOBYTE(STACK[0x1070]) = v6 ^ 0xF3;
  v8 = v5[1] ^ 0xF0;
  v9 = *(v3 + 8 * (a3 - 541)) - 12;
  STACK[0xE98] = v9;
  LODWORD(v9) = ((a3 ^ 0x6D ^ *(v9 + v8)) + 100) ^ v6;
  v10 = v6 ^ 0xFFFFFFCC;
  v7[1] = v6 ^ 0xCC;
  LOBYTE(STACK[0x1071]) = v9 ^ 0xF3;
  v11 = v9 ^ v5[2];
  v7[2] = v9 ^ 0xCC;
  LOBYTE(STACK[0x1072]) = v11 ^ 0xF3;
  LODWORD(v9) = v5[3] ^ v11;
  v7[3] = v11 ^ 0xCC;
  LOBYTE(STACK[0x1073]) = v9 ^ 0xF3;
  v12 = v5[4] ^ v9;
  v7[4] = v9 ^ 0xCC;
  LOBYTE(STACK[0x1074]) = v12 ^ 0xF3;
  LODWORD(v9) = v5[5] ^ v12;
  v7[5] = v12 ^ 0xCC;
  LOBYTE(STACK[0x1075]) = v9 ^ 0xF3;
  v13 = v5[6] ^ v9;
  v7[6] = v9 ^ 0xCC;
  LOBYTE(STACK[0x1076]) = v13 ^ 0xF3;
  LODWORD(v9) = v5[7] ^ v13;
  v7[7] = v13 ^ 0xCC;
  LOBYTE(STACK[0x1077]) = v9 ^ 0xF3;
  v14 = v5[8] ^ v9;
  v7[8] = v9 ^ 0xCC;
  LOBYTE(STACK[0x1078]) = v14 ^ 0xF3;
  LODWORD(v9) = v5[9] ^ v14;
  v7[9] = v14 ^ 0xCC;
  LOBYTE(STACK[0x1079]) = v9 ^ 0xF3;
  v15 = v5[10] ^ v9;
  v7[10] = v9 ^ 0xCC;
  LOBYTE(STACK[0x107A]) = v15 ^ 0xF3;
  LODWORD(v9) = v5[11] ^ v15;
  v7[11] = v15 ^ 0xCC;
  LOBYTE(STACK[0x107B]) = v9 ^ 0xF3;
  v16 = v5[12] ^ v9;
  v7[12] = v9 ^ 0xCC;
  v17 = v16 ^ 0xFFFFFFF3;
  LOBYTE(STACK[0x107C]) = v16 ^ 0xF3;
  v18 = (-73 * v5[13]) ^ 0x6FLL;
  v19 = *(v3 + 8 * (a3 - 873)) - 4;
  STACK[0xE58] = v19;
  v20 = v3;
  v21 = (((*(v19 + v18) + 71) ^ 0x4E) - 55) ^ v16;
  v7[13] = v16 ^ 0xCC;
  v22 = v21 ^ 0xFFFFFFF3;
  LOBYTE(STACK[0x107D]) = v21 ^ 0xF3;
  v23 = v21 ^ v5[14];
  v21 ^= 0xCCu;
  v7[14] = v21;
  LOBYTE(STACK[0x107E]) = v23 ^ 0xF3;
  v25 = v5[15] ^ v23;
  v7[15] = v23 ^ 0xCC;
  v26 = v25 ^ 0xF3;
  v27 = (v25 ^ 0xCCu) - ((2 * v25) & 0x66) - 0x5E7566CE743350CDLL;
  v28 = v4 - 208;
  v29 = v23 ^ 0xFFFFFFCC ^ v25 ^ 0xFFFFFFF3 ^ 0x3F;
  *((v25 ^ 0x77AC7F79D0B1F8BFLL) + ((2 * (v25 ^ 0x2D4C15CC)) & 0xFBFBDAE6) + (((v27 ^ 0x5E7566CE743350CCLL) + 16) ^ 0x7B0FF3EDAE3F32F7) + ((2 * ((v27 ^ 0x5E7566CE743350CCLL) + 16)) & 0xF61FE7DB5C7E65EELL) + v4 - 208 + 0xD438C9853C2DF96) = v29;
  v30 = ((v23 ^ 0xCC ^ v25 ^ 0xF3 ^ 0x3F) - ((2 * v29) & 0x13C) - 56364898) ^ v25;
  v31 = v23 ^ 0xCCLL;
  v32 = v23 ^ 0xFFFFFFF3 ^ *(v4 - 194) ^ 0x3F;
  v33 = (v32 ^ 0x5FF27DF3) + ((2 * v32) & 0x1E6) - 1609727474 + (v30 ^ 0x2E101AAD);
  v34 = ((2 * v31) & 0x1FC) + (v31 ^ 0xBFCEF5FE) + (v33 ^ 0xFA9BEDFE);
  v35 = v34 + ((2 * v33) & 0xF537DBFC) - 2 * ((v34 + ((2 * v33) & 0xF537DBFC) + 93658116) & 0xEFEB353 ^ v34 & 1) + 1418973014;
  v7[14] = v35 ^ 0x52;
  v36 = v35 ^ v30;
  v37 = ((2 * v21) & 0x1FCLL) + (v22 ^ 0xEE7ADF9CFFFDFDC1);
  v38 = ((2 * (v36 ^ 0xDF115600)) & 0x8FF697BALL) + (v36 ^ 0x9FEFF98F98EA1DDDLL);
  v39 = v22 ^ *(v4 - 195) ^ 0x3F;
  *(v28 + ((0xAA60FFEB2BF292A1 * v37 - ((0x54C1FFD657E52542 * v37 - 0x733FFB533B67317CLL) & 0xBCACA2601076CCF0) - 0x5B49AC7995783246) ^ 0x5EAEBB4C71439D3BLL ^ (0xAA60FFEB2BF292A1 * v38 - ((0xC1FFD657E52542 * v38 + 0x2E9B57278E8006) & 0x1F1D4F8F2F1F69CLL) - 0x4EFC7D7F2BFC4AFLL))) = v39;
  v40 = v36 ^ (v39 - ((2 * v39) & 0xFA) - 1489933187);
  v41 = v17 ^ 0x3FLL;
  v42 = v17 ^ 0x888114FC;
  v43 = v17 ^ *(v4 - 196) ^ 0x3F;
  v44 = v42 + (v43 ^ 0x7FBDCFFD) - ((2 * v41) & 0x78) + ((2 * v43) & 0x1FA) - 138339520 + (v40 ^ 0x78203A7D);
  v45 = v44 - ((2 * v44) & 0x85A898E0) - 1026274192;
  v7[12] = v45 ^ 0x70;
  v46 = v45 ^ v40;
  v47 = LOBYTE(STACK[0x107B]);
  LOBYTE(v40) = v47 ^ *(v4 - 197);
  v48 = ((v46 ^ 0xBAF4760D) + 0x710280E9E776FA74 - ((2 * (v46 ^ 0xBAF4760D)) & 0x1CEEDF4FELL) + 11) ^ 0x710280E9E776FA74;
  v49 = v48 - ((2 * v48) & 0x1C4FCD652CLL) - 0x7FBEE2D1D8194D6ALL;
  v50 = 0x18FDB05E72DEB9FFLL - (v47 ^ 0x3F);
  *(v28 + (v50 ^ 0x98BCAD7055380B69 ^ v49)) = v40 ^ 0x3F;
  v51 = *(v4 - 198);
  v7[10] = v40 ^ v51 ^ 0x32 ^ v46;
  v52 = LOBYTE(STACK[0x1079]);
  v53 = ((2 * (v52 ^ 0x3F)) & 0x1EELL) + (v52 ^ 0xFFFDEFBFFDFCF1C8);
  LODWORD(v52) = *(v4 - 199) ^ v52 ^ 0x3F;
  *(v28 + ((0xB3BBF562D734CEC7 * (((2 * v51) & 0xDDDDDDDDDDDDDDDDLL) + (v51 ^ 0xCFD1E6EFFF7B12EELL)) - ((0x6777EAC5AE699D8ELL * (((2 * v51) & 0xDDDDDDDDDDDDDDDDLL) + (v51 ^ 0xCFD1E6EFFF7B12EELL)) + 0x7F3629B3478189FCLL) & 0x716AD308F3ABCE16) + 0x78507E5E1D96AC09) ^ 0xE0C9F6354EFCE351 ^ (0xB3BBF562D734CEC7 * v53 - ((0x6777EAC5AE699D8ELL * v53 - 0x12E7CD8B2301B202) & 0xB0F93F626E5208A6) - 0x30F747145A57D4AELL))) = v52;
  LODWORD(v51) = ((2 * (v52 ^ v51)) & 0x172) + ((v52 ^ v51) ^ 0x7D7A4BB9);
  LODWORD(v52) = LOBYTE(STACK[0x1078]);
  LODWORD(v49) = v52 ^ 0x8BEC147F;
  LODWORD(v52) = v52 ^ 0x3F;
  LODWORD(v49) = v49 + ((v52 ^ *(v4 - 200)) ^ 0x77DFBFFA) - ((2 * v52) & 0xFFFFFF7F) + v51 + 1;
  v54 = v49 + ((2 * (v52 ^ *(v4 - 200))) & 0x1F4);
  LODWORD(v49) = v54 - 2 * ((v54 + 2126110732) & 0x6C5341CE ^ v49 & 2) + 1796022744;
  v55 = ((v51 - 2105166777) ^ 0xEC5341CC ^ v49) - ((2 * ((v51 - 2105166777) ^ 0xEC5341CC ^ v49)) & 0x344B40DE) + 438673519;
  v56 = LOBYTE(STACK[0x1077]);
  v57 = ((v56 ^ 0x3F) - ((2 * (v56 ^ 0x3F)) & 0xCA) - 0x35DCB6BC75B0089BLL) ^ 0xCA2349438A4FF765;
  v7[8] = v49 ^ 0xCC;
  LODWORD(v49) = v56 ^ *(v4 - 201) ^ 0x3F;
  *(((0xBC5A0F47A5B633BALL * v57) & 0xFFECFBFD3A7DBFD6) + ((0xDE2D07A3D2DB19DDLL * v57) ^ 0xFFF67DFE9D3EDFEBLL) + 0x21D2F85C2D24E623 * (((2 * (v55 ^ 0x1A25A06F)) & 0xBC6DEFDELL) + (v55 ^ 0xEFFD5B3D44135780)) + v4 - 208 - 0x5AC2A53BC21F7F91) = v49;
  LOBYTE(STACK[0x107F]) = v26;
  v58 = v55 ^ (v49 - ((2 * v49) & 0x2C) + 621280022);
  v59 = LOBYTE(STACK[0x1076]);
  STACK[0xDF0] = a3;
  v60 = v20;
  v61 = *(v20 + 8 * (a3 ^ 0x7FE)) - 4;
  LODWORD(v56) = *(v61 + (((v59 ^ 0x3F) - ((2 * (v59 ^ 0x3F) - 122) & 0x83) + 4) ^ 0xACLL));
  HIDWORD(v62) = ~v56;
  LODWORD(v62) = (v56 ^ 0x96) << 24;
  LODWORD(v56) = ((v62 >> 25) - 2 * ((v62 >> 25) & 0x3F) + 63) ^ 0x3F;
  LODWORD(v18) = ((v56 ^ *(v4 - 202)) ^ 0xFD9EFC66) + ((2 * (v56 ^ *(v4 - 202))) & 0xCC) + (v58 ^ 0x3F225B79) + 39912346;
  LODWORD(v18) = (((v62 >> 25) - 2 * ((v62 >> 25) & 0x3F) + 63) ^ 0x600043D) - ((2 * v56) & 0x1FA) + (v18 ^ 0xDB87DB7B) + ((2 * v18) & 0xB70FB6F6) + 1;
  LODWORD(v18) = v18 - ((2 * v18 + 1022378244) & 0xE9637BD8) - 1825972626;
  v63 = ((2 * (v59 ^ 0x3F)) & 0x9A) + (v59 ^ 0x3F3FB9FD6BC77C72);
  v64 = (((v62 >> 25) - 2 * ((v62 >> 25) & 0x3F) + 63) ^ 0xFFFDFE72D5EDFFC0) + 2 * v56;
  *(v4 - 208 + ((0x4AB741F302142D81 * v63 - ((0x956E83E604285B02 * v63 - 0x4ECF929560C6579ALL) & 0x932A4799690083E4) - 0x5DD2A57DFBE2E9DBLL) ^ 0x693108C12209DCD6 ^ (0x4AB741F302142D81 * v64 - ((0x156E83E604285B02 * v64 + 0x40E28FC4BE4C5B02) & 0x4148561B2D133A44) - 0x7EEA8D100A50355DLL))) = v18 ^ 0xEC;
  LODWORD(v18) = v18 ^ v58;
  v65 = LOBYTE(STACK[0x1075]);
  v66 = *(v4 - 203) ^ v65;
  v67 = ((2 * (v65 ^ 0x3F)) & 0xF6) + (v65 ^ 0xBCBFF7771EEDFD44);
  *(v67 + (v18 ^ 0x197103805B91E217) - ((2 * (v18 ^ 0x4B93E695)) & 0x1DFFBF6FALL) + v4 - 208 + 0x29CF0508D10FFE08) = v66 ^ 0x3F;
  v68 = *(v4 - 204);
  v7[4] = v66 ^ v68 ^ v18 ^ 0xAA;
  v69 = LOBYTE(STACK[0x1073]);
  v70 = ((2 * ~v69) & 0x7A) + (v69 ^ 0xBFF76BEFFFFCFF02);
  LOBYTE(v20) = *(v4 - 205) ^ v69 ^ 0x3F;
  *(v4 - 208 + 0x5BDA45FCB9B43055 * ((v68 ^ 0x7FE8FF737ED9BFFFLL) + 2 * v68 - v70) - 0x427765EE3DD86067) = v20;
  v71 = (((v10 - ((2 * v10) & 0x2E) + 71) << 56) - 0x3000000000000000) ^ 0x1700000000000000;
  v72 = (LOBYTE(STACK[0x1074]) ^ 0x3FLL) - ((2 * (LOBYTE(STACK[0x1074]) ^ 0x3FLL)) & 0xCA);
  v73 = (LOBYTE(STACK[0x107A]) ^ 0x3F) - ((2 * (LOBYTE(STACK[0x107A]) ^ 0x3F)) & 0x36);
  v74 = v41 - ((2 * v41) & 0x68);
  v75 = v31 - ((2 * v31) & 0x1A0);
  LODWORD(v31) = (LOBYTE(STACK[0x1072]) ^ 0x3F) - 2 * ((LOBYTE(STACK[0x1072]) ^ 0x3F) & 3);
  v76 = *(v4 - 206);
  v7[2] = v20 ^ v68 ^ v76;
  v77 = (v76 - 0x6A3A55E734846EBCLL - ((2 * v76) & 0x8A) + 1) ^ 0x95C5AA18CB7B9144;
  v78 = v77 - ((2 * v77) & 0x21CC) - 0x1A22C3EE314CCF1ALL;
  v79 = LOBYTE(STACK[0x1071]);
  LOBYTE(v20) = *(v4 - 207) ^ v79;
  v80 = (v79 ^ 0x3F) - ((2 * (v79 ^ 0x3F)) & 0xFA) + 0x79B80F9F82AFF7DLL;
  *(v4 - 208 + (v78 ^ v80 ^ 0xE246BCE83699CF9BLL)) = v20 ^ 0x3F;
  *v7 = v20 ^ 0x3F ^ v76 ^ *(v4 - 208);
  v81 = ((v63 << 8) - (((v63 << 9) - 0x7F73FAD78EF89A00) & 0xBAB946F3FB137E00) + 0x1DA2A60E360D72ABLL) ^ 0x5D5CA379FD89BFABLL | v57;
  v82 = ((v64 << 8) - (((v64 << 9) + 0x4031A5424000200) & 0xDCD8B49D81261800) + 0x706DE778D2930D8FLL) ^ 0x6E6C5A4EC0930C8FLL | v57;
  v83 = (((v73 + 427603) << 40) - 0x380000000000) ^ 0x6861B0000000000;
  v84 = (((v31 + 9314613) << 40) - 0x320000000000) ^ 0x8E21030000000000;
  v85 = v84 - ((2 * v84) & 0x7FB3080000000000) - 0x267B4CBEB74CFCLL;
  v86 = ((v80 << 48) ^ 0xFF7D000000000000) - ((2 * ((v80 << 48) ^ 0xFF7D000000000000)) & 0x9686000000000000) - 0x34BCDC97F5DA31A7;
  v87 = (((v52 - ((2 * v52) & 0x30) + 173) << 56) - 0x1500000000000000) ^ 0x9800000000000000;
  v88 = ((((v75 << 8) - 0x17A12D711E773000) ^ 0xE85ED28EE188D000) - ((2 * (((v75 << 8) - 0x17A12D711E773000) ^ 0xE85ED28EE188D000)) & 0xE85A7E41233400) - 0x3F8BD2C0DF6E655ALL) ^ v27 ^ ((v37 << 16) - (((v37 << 17) + 0x40C6000404040000) & 0x81968CC8639E0000) - 0x1ED1B999CC2E4CEDLL) ^ ((((v74 << 24) - 0xE00DD78CC000000) ^ 0xF1FF228734000000) - ((2 * (((v74 << 24) - 0xE00DD78CC000000) ^ 0xF1FF228734000000)) & 0x17B09D2916000000) + 0xBD84E948BEA5CB0) ^ (((v50 << 32) ^ 0x72DEB9FF00000000) - ((2 * ((v50 << 32) ^ 0x72DEB9FF00000000)) & 0x29B464C000000000) + 0x14DA3260DD7ECEBELL) ^ (v83 - ((2 * v83) & 0x6045060000000000) + 0x7022837592112994) ^ ((v53 << 48) - (((v53 << 49) + 0x1C12000000000000) & 0x64AC000000000000) - 0x3FA0E644594785A9) ^ (v87 - ((2 * v87) & 0xA000000000000000) - 0x2F3294F5C6612E27);
  v89 = (v71 - ((2 * v71) & 0xE400000000000000) + 0x728461C2A5970CE6) ^ ((v67 << 16) - (((v67 << 17) + 0x1111C224050A0000) & 0x9C6358BF71B80000) - 0x2945728E449E48CDLL) ^ ((((v72 << 24) + 0x34EA927165000000) ^ 0x34EA927165000000) - ((2 * (((v72 << 24) + 0x34EA927165000000) ^ 0x34EA927165000000)) & 0x322A33089C000000) + 0x591519844EF13F7ALL) ^ ((v70 << 32) - (((v70 << 33) + 0x6018600000000) & 0x8164FA5000000000) - 0x3F4A8214B4BF7C56);
  STACK[0xEE8] = v88 ^ 0x6313C592DEF0E6F0;
  v90 = v89 ^ (v81 - ((2 * v81) & 0x51C421557C4EC6ACLL) - 0x571DEF5541D89CAALL) ^ v85 ^ v86 ^ 0x93A34A534D9495B8;
  v91 = v89 ^ v85 ^ v86 ^ 0x9CF99095F3C0EA8ALL ^ (v82 - ((2 * v82) & 0x4B8A436836004A24) - 0x5A3ADE4BE4FFDAEELL);
  LODWORD(v37) = ((2 * (v88 ^ 0xDEF0E6F0)) & 0x5FFFCDB4 ^ 0x5A81C590) + (v88 ^ 0x9C4FFBE6);
  STACK[0xEB0] = v88 ^ 0x6D0220530BC57324;
  LODWORD(v53) = ((2 * (v88 ^ 0xBC57324)) & 0xFFFEFFCC ^ 0x70EADC00) + (v88 ^ 0xCC4F62DA);
  STACK[0xEC8] = v90;
  LODWORD(v88) = ((2 * v90) & 0x7CD7FFDA ^ 0x4401085A) + (v90 ^ 0x1C7F7BC0);
  STACK[0xEE0] = v91;
  LODWORD(v91) = ((2 * v91) & 0x57F3BCBA ^ 0x52C338B2) + (v91 ^ 0x929E6306);
  v92 = STACK[0xF18];
  LODWORD(v90) = *(STACK[0xF18] - 0x6830C533A7E43785);
  LODWORD(v89) = (1850340985 * v53 - ((-594285326 * v53 + 1568608404) & 0x8E78C0F6) - 168040251) ^ (1850340985 * v37 - ((-594285326 * v37 - 803680788) & 0xC027A572) - 937412177) ^ (v90 - ((2 * v90) & 0x1A0) + 308393168);
  LOBYTE(STACK[0x24E0]) = v90 ^ 0x12 ^ (121 * v53 - ((-14 * v53 - 108) & 0xF6) - 59) ^ (121 * v37 - ((-14 * v37 - 20) & 0x72) - 81) ^ (v90 - ((2 * v90) & 0xA0) - 48);
  LOBYTE(STACK[0x1070]) = (121 * v53 - ((-14 * v53 - 108) & 0xF6) - 59) ^ (121 * v37 - ((-14 * v37 - 20) & 0x72) - 81) ^ (v90 - ((2 * v90) & 0xA0) - 48) ^ 0x2D;
  LODWORD(v90) = *(v92 - 0x6830C533A7E43784);
  LODWORD(v89) = v88 + 1100218387 + (v89 ^ (v90 - ((2 * v90) & 0x19C) - 2016523058) ^ 0x32804ADC);
  LODWORD(v89) = (v89 ^ 0xFD3F7F7F) - v91 + ((2 * v89) & 0xFA7EFEFE);
  LODWORD(v89) = v89 + 47514310 + ((-1567931838 - 2 * v89) | 0x57CAB831);
  LOBYTE(STACK[0x24E1]) = v90 ^ v89 ^ 0xE7;
  LOBYTE(STACK[0x1071]) = v89 ^ 0xD8;
  LODWORD(v90) = *(v92 - 0x6830C533A7E43783);
  v93 = (v90 - ((2 * v90) & 0xA) + 858018565) ^ 0xE73EF0E2 ^ v89;
  v94 = ((v93 + v37 + 1342183718) ^ 0x6FCDF7F5) - v53 + ((2 * (v93 + v37 + 1342183718)) & 0xDF9BEFEA);
  v95 = v94 - ((2 * v94 + 543363042) & 0xA83547CE) + 1682713560;
  LOBYTE(STACK[0x24E2]) = v90 ^ v95 ^ 0xE7;
  LOBYTE(STACK[0x1072]) = v95 ^ 0xD8;
  v96 = *(v60 + 8 * (a3 ^ 8)) - 4;
  HIDWORD(v62) = *(v96 + ((-73 * *(v92 - 0x6830C533A7E43782) - ((46 * *(v92 - 0x6830C533A7E43782)) & 0x3A) - 99) ^ 6));
  LODWORD(v62) = ~HIDWORD(v62) << 24;
  LODWORD(v50) = ((v62 >> 25) - ((2 * (v62 >> 25)) & 0x1C) + 14) ^ 0x67;
  LODWORD(v50) = ((v50 - 55) ^ 0x7F) + 2 * v50 + 19;
  v97 = ((v50 + 231037954 - ((2 * v50) & 0x10E) + 1157) ^ 0xD9DFC360 ^ v95) - v88 - 1100218387;
  v98 = (v97 ^ 0xE417F7D9) + v91 + ((2 * v97) & 0xC82FEFB2);
  v99 = v98 - 1006056014 + ((539208810 - 2 * v98) | 0x57CAB831);
  LOBYTE(STACK[0x24E3]) = ((v50 ^ v99 ^ 0xE7) - ((2 * (v50 ^ v99 ^ 0xE7)) & 0x72) + 57) ^ 0x39;
  LOBYTE(STACK[0x1073]) = v99 ^ 0xD8;
  LODWORD(v81) = *(v92 - 0x6830C533A7E43781);
  v100 = ((v81 - ((2 * v81) & 0xA4) + 555711058) ^ 0xF505D9B5 ^ v99) - 363682247 * v53 + 528572874;
  v101 = (v100 ^ 0xFBFFDBEF) + 363682247 * v37 + ((2 * v100) & 0xF7FFB7DE) + 312639098;
  v102 = v101 - ((2 * v101 - 1917136830) & 0xA83547CE) + 452463624;
  LOBYTE(STACK[0x24E4]) = v81 ^ v102 ^ 0xE7;
  LOBYTE(STACK[0x1074]) = v102 ^ 0xD8;
  LODWORD(v81) = *(v92 - 0x6830C533A7E43780);
  v103 = ((v81 - ((2 * v81) & 0x7A) - 643099843) ^ 0xDB1B0DA ^ v102) + v88 + 1100218387;
  v104 = (v103 ^ 0x3CDD7FCF) - v91 + ((2 * v103) & 0x79BAFF9E);
  v105 = v104 - ((2 * v104 - 566706916) & 0xA83547CE) - 1019805067;
  LOBYTE(STACK[0x24E5]) = v81 ^ v105 ^ 0xE7;
  LOBYTE(STACK[0x1075]) = v105 ^ 0xD8;
  LODWORD(v81) = *(v92 - 0x6830C533A7E4377FLL);
  v106 = ((v81 - ((2 * v81) & 0x68) - 632352972) ^ 0xE55ACD3 ^ v105) - v53 - 32794;
  v107 = (v106 ^ 0x6E73FB3F) + v37 + ((2 * v106) & 0xDCE7F67E);
  v108 = v107 - ((2 * v107 - 1021822002) & 0xA83547CE) - 1247362610;
  LOBYTE(STACK[0x24E6]) = v81 ^ v108 ^ 0xE7;
  LOBYTE(STACK[0x1076]) = v108 ^ 0xD8;
  LODWORD(v81) = *(v92 - 0x6830C533A7E4377ELL);
  v109 = v91 - 737799252 + ((v81 - 304752085 - ((2 * v81) & 0x9A) + 2594) ^ 0x39CF47AA ^ v108) + 3575;
  v110 = (v109 ^ 0x7E7F9E3E) - v88 + ((2 * v109) & 0xFCFF3C7C);
  v111 = v110 - ((2 * v110 + 2144912222) & 0xA83547CE) + 336004502;
  LOBYTE(STACK[0x24E7]) = v81 ^ v111 ^ 0xE7;
  LOBYTE(STACK[0x1077]) = v111 ^ 0xD8;
  v112 = v111 ^ (-1555150193 * v37 - ((1184666910 * v37 + 634261620) & 0xA85D4420) + 1729473098);
  LODWORD(v70) = (*(v92 - 0x6830C533A7E4377DLL) - ((2 * *(v92 - 0x6830C533A7E4377DLL)) & 0x168) - 312163148) ^ (-1555150193 * v53 - 2 * ((-1555150193 * v53 + 993727110) & 0x224DBE27 ^ (-1555150193 * v53) & 1) - 578236244) ^ v112;
  LOBYTE(STACK[0x24E8]) = v112 ^ (-113 * v53 - 2 * ((-113 * v53 - 122) & 0x27 ^ (-113 * v53) & 1) - 84) ^ 0xD1;
  LOBYTE(STACK[0x1078]) = v70 ^ 0x5A;
  LODWORD(v64) = *(v61 + ((*(v92 - 0x6830C533A7E4377CLL) - ((2 * *(v92 - 0x6830C533A7E4377CLL) + 6) & 0x10) + 75) ^ 0x65));
  HIDWORD(v62) = ~v64;
  LODWORD(v62) = (v64 ^ 0x96) << 24;
  LODWORD(v90) = (v62 >> 25) - ((2 * (v62 >> 25)) & 0x3A) - 99;
  LODWORD(v72) = (((v90 ^ 0x9D) - ((2 * (v90 ^ 0x9D)) & 0x192) + 931611593) ^ 0xF89A38AC ^ v70) + v88 + 1100218387;
  LODWORD(v72) = (v72 ^ 0xE7BFFCDE) - v91 + ((2 * v72) & 0xCF7FF9BC);
  LODWORD(v72) = v72 - ((2 * v72 - 2005679362) & 0xA83547CE) + 408192358;
  LOBYTE(STACK[0x24E9]) = v90 ^ 0x7A ^ v72;
  LOBYTE(STACK[0x1079]) = v72 ^ 0xD8;
  LODWORD(v69) = *(v61 + ((*(v92 - 0x6830C533A7E4377BLL) - ((2 * *(v92 - 0x6830C533A7E4377BLL) + 6) & 0x5C) + 113) ^ 0x43));
  HIDWORD(v62) = ~v69;
  LODWORD(v62) = (v69 ^ 0x96) << 24;
  LODWORD(v69) = (v62 >> 25) - ((2 * (v62 >> 25)) & 0x10) + 8;
  LODWORD(v89) = (((v69 ^ 8) - ((2 * v69) & 0x88) + 1790972228) ^ 0xBEDAB2A3 ^ v72) + v37 + 1342183718;
  LODWORD(v89) = (v89 ^ 0x5BFBD7DB) - v53 + ((2 * v89) & 0xB7F7AFB6);
  LODWORD(v89) = v89 - ((2 * v89 + 1208438806) & 0xA83547CE) + 2015251442;
  LOBYTE(STACK[0x24EA]) = v69 ^ v89 ^ 0xEF;
  LOBYTE(STACK[0x107A]) = v89 ^ 0xD8;
  LODWORD(v69) = *(v92 - 0x6830C533A7E4377ALL);
  LODWORD(v89) = ((v69 - ((2 * v69) & 0xA0) - 275869104) ^ 0x3B9431B7 ^ v89) - 1919365791 * v88 - 546619853;
  LODWORD(v89) = (v89 ^ 0xB71FDFEF) + 1919365791 * v91 + ((2 * v89) & 0x6E3FBFDE) + 834933652;
  LODWORD(v89) = v89 - ((2 * v89 + 807636340) & 0xA83547CE) - 332633439;
  LOBYTE(STACK[0x24EB]) = v69 ^ v89 ^ 0xE7;
  LOBYTE(STACK[0x107B]) = v89 ^ 0xD8;
  LODWORD(v89) = v89 ^ (-1775477891 * v53 + 1849674418);
  v113 = STACK[0xE58];
  LODWORD(v69) = ((((*(STACK[0xE58] + ((-73 * *(v92 - 0x6830C533A7E43779)) ^ 0x6FLL)) + 71) ^ 0x4E) - 55) - ((2 * (((*(STACK[0xE58] + ((-73 * *(v92 - 0x6830C533A7E43779)) ^ 0x6FLL)) + 71) ^ 0x4E) - 55)) & 0xD2) - 335690135) ^ (-1775477891 * v37 - ((744011514 * v37 + 1594463004) & 0x40A7C73E) - 807883475) ^ v89;
  LOBYTE(STACK[0x24EC]) = v89 ^ (125 * v37 - ((-6 * v37 + 28) & 0x3E) + 45) ^ 0x78;
  LODWORD(v90) = v69 ^ 0x2E;
  LOBYTE(STACK[0x107C]) = v69 ^ 0x2E;
  LODWORD(v89) = ((*(v113 + ((-73 * *(v92 - 0x6830C533A7E43778)) ^ 0x6FLL)) + 71) ^ 0x4E) - 55;
  LODWORD(v69) = (((((*(v113 + ((-73 * *(v92 - 0x6830C533A7E43778)) ^ 0x6FLL)) + 71) ^ 0x4E) - 55) - ((2 * v89) & 0x1CE) - 736451609) ^ 0xCBAE25F6 ^ v69) + 778196017 * (v91 - v88) + 872131728;
  v114 = v69 - ((2 * v69) & 0xA83547CE) - 736451609;
  LOBYTE(STACK[0x24ED]) = v89 ^ v114 ^ 0xE7;
  LODWORD(v89) = v53 - v37;
  LOBYTE(STACK[0x107D]) = v114 ^ 0xD8;
  LODWORD(v37) = *(v92 - 0x6830C533A7E43777);
  LODWORD(v89) = v89 - 1342150924 + (v114 ^ (v37 - ((2 * v37) & 0xFFFFFFCF) - 736451609));
  LODWORD(v89) = v89 - ((2 * v89) & 0xA83547CE) - 736451609;
  LOBYTE(STACK[0x24EE]) = v37 ^ v89 ^ 0xE7;
  LODWORD(v37) = v89 ^ 0xFFFFFFD8;
  LOBYTE(STACK[0x107E]) = v89 ^ 0xD8;
  LODWORD(v50) = *(v92 - 0x6830C533A7E43776);
  LODWORD(v88) = (v89 ^ (v50 - ((2 * v50) & 0xFFFFFFCF) - 736451609)) + 177452523 * (v88 - v91) - 103784240;
  LODWORD(v88) = v88 - ((2 * v88) & 0xA83547CE) - 736451609;
  LOBYTE(v89) = v88 ^ 0xD8;
  v115 = v88 ^ 0xE7;
  STACK[0xEC0] = v115;
  v115 *= 2;
  STACK[0xE70] = v115;
  v116 = (v115 & 0xFFFFFFFFFFFFFFF7) + (v88 ^ 0x6DBBDF9E41DFDF1CLL);
  STACK[0xE88] = v116;
  LODWORD(v53) = v50 ^ v88 ^ 0xFFFFFFE7;
  LOBYTE(STACK[0x24EF]) = v53;
  LODWORD(v53) = v88 ^ 0xFFFFFFD8 ^ v53 ^ 0x3F;
  *(&STACK[0x24E0] + 0x3FB2915D4662A11FLL * (v116 + (v88 ^ 0x8880A810D41333E3) - ((2 * (v88 ^ 0xD41AA3E7)) & 0x1FFECDFF6)) - 0x43EF342D6451EED2) = v53;
  LODWORD(v115) = v88 ^ (v53 - ((2 * v53) & 0xA6) + 1406230099);
  v117 = v37 ^ 0x3FLL;
  LODWORD(v53) = (v37 ^ 0x89068A3E) - ((2 * v117) & 0x1FC);
  LODWORD(v37) = ((v37 ^ LOBYTE(STACK[0x24EE])) ^ 0xFFDEBF8D) + ((2 * (v37 ^ LOBYTE(STACK[0x24EE]) ^ 0x3F)) & 0x164) + 2179150 + (v115 ^ 0x87CBFDB4);
  LODWORD(v37) = v53 + (v37 ^ 0xFFBFDAFD) + ((2 * v37) & 0xFF7FB5FA) + 1;
  LODWORD(v37) = v37 - ((2 * v37 - 294439422) & 0xAECD18F0) + 1319118713;
  LODWORD(v115) = v37 ^ v115;
  LOBYTE(STACK[0x24EE]) = v37 ^ 0x78;
  v118 = ((2 * (v114 ^ 0xFFFFFFEF)) & 0x1E8) + (v114 ^ 0x6EFDFF8FADBFDF13);
  LODWORD(v69) = v114 ^ 0xFFFFFFD8 ^ LOBYTE(STACK[0x24ED]) ^ 0x3F;
  *(&STACK[0x24E0] + 0x569F6866BE0AA9BLL * ((v115 ^ 0xEEBD5FFFB3728AB3) - v118) + 0x569F6866BE0AA9BLL * ((2 * (v115 ^ 0x50AD71CC)) & 0x1C7BFF6FELL) + 0x15FE53C0B5A504E4) = v69;
  LODWORD(v69) = v115 ^ (v69 - ((2 * v69) & 0x192) + 2090291145);
  v119 = v90 ^ 0x3FLL;
  LODWORD(v90) = (v90 ^ 0xF9357568) + ((2 * v119) & 0xAE) + ((v90 ^ LOBYTE(STACK[0x24EC])) ^ 0xFF3D7D0B) + ((2 * (v90 ^ LOBYTE(STACK[0x24EC]) ^ 0x3F)) & 0x68) + 126684534 + (v69 ^ 0xD3C5C1FA);
  LODWORD(v90) = v90 - ((2 * v90) & 0xCBC9C240) + 1709498656;
  v120 = LOBYTE(STACK[0x107B]);
  v121 = (v120 ^ 0x3F) - ((2 * (v120 ^ 0x3F)) & 0xA) - 0x3DB62453FAE721FBLL;
  STACK[0xE80] = v121;
  LODWORD(v69) = v90 ^ v69;
  LOBYTE(STACK[0x24EC]) = v90 ^ 0x20;
  LOBYTE(v90) = LOBYTE(STACK[0x24EB]) ^ v120;
  *(&STACK[0x24E0] + 0x43AF208A9B85410BLL * ((2 * (v69 ^ 0x49DEDF25)) & 0x7BFDE6BE) + 0x43AF208A9B85410BLL * (v69 ^ 0xDE77FFBF74202C7ALL) + ((0x78A1BEEAC8F57DEALL * (v121 ^ 0xC249DBAC0518DE05)) & 0x7FEAF7ED57DDDFBELL) + ((0xBC50DF75647ABEF5 * (v121 ^ 0xC249DBAC0518DE05)) ^ 0xBFF57BF6ABEEEFDFLL) + 0xB42540EF8F67C17) = v90 ^ 0x3F;
  v122 = LOBYTE(STACK[0x24EA]);
  LOBYTE(STACK[0x24EA]) = v90 ^ v122 ^ 0x1A ^ v69;
  v123 = LOBYTE(STACK[0x1079]);
  LODWORD(v90) = v123 ^ LOBYTE(STACK[0x24E9]);
  v124 = ((2 * (v123 ^ 0x3F)) & 0xDELL) + (v123 ^ 0x7FDF7A97F7FC5F50);
  STACK[0xE78] = v124;
  LODWORD(v90) = v90 ^ 0x3F;
  *(&STACK[0x24E0] + v124 - v122 - 0x7FDF7A97F7FC5F66) = v90;
  LOBYTE(STACK[0x107F]) = v89;
  v125 = (LOBYTE(STACK[0x24E8]) - ((2 * LOBYTE(STACK[0x24E8]) - 122) & 0xF3) + 60) ^ 0x94;
  STACK[0xED8] = v61;
  LODWORD(v125) = *(v61 + v125);
  HIDWORD(v62) = ~v125;
  LODWORD(v62) = (v125 ^ 0x96) << 24;
  LODWORD(v89) = ((2 * (v90 ^ v122)) & 0x1F6) + ((v90 ^ v122) ^ 0xDEEFE8FB);
  LODWORD(v125) = LOBYTE(STACK[0x1078]);
  v126 = v125 ^ 0x3F;
  v127 = 2 * (v125 ^ 0x3F);
  LODWORD(v90) = v127 - v89 + (v125 ^ 0xBFCFADC0) + (v125 ^ 0x4A ^ ((v62 >> 25) - ((2 * (v62 >> 25)) & 0xEA) + 117) ^ 0x7C2EFDDD) + ((2 * (v125 ^ 0x4A ^ ((v62 >> 25) - ((2 * (v62 >> 25)) & 0xEA) + 117))) & 0x1BA);
  LODWORD(v90) = v90 - ((2 * v90 + 1172470334) & 0x4F27FBC8) - 897238269;
  LODWORD(v89) = (v90 ^ (v89 + 554702597) ^ 0x2793FDE4) - 2 * ((v90 ^ (v89 + 554702597) ^ 0x2793FDE4) & 0x5AE894DB ^ (v90 ^ (v89 + 554702597)) & 0x10);
  LOBYTE(STACK[0x24E8]) = v90 ^ 0xE4;
  LOBYTE(v90) = *(v113 + ((-73 * LOBYTE(STACK[0x24E7]) - ((110 * LOBYTE(STACK[0x24E7])) & 0xDA) - 19) ^ 0x82));
  LOBYTE(v90) = (v90 - ((2 * v90 - 114) & 0xDC) - 75) ^ 0x20;
  v128 = LOBYTE(STACK[0x1077]);
  v129 = *(STACK[0xE98] + (v128 ^ 0xCF));
  LODWORD(v121) = (((v129 ^ 0x49) + 100) ^ 0x7F) + 2 * ((v129 ^ 0x49) + 100);
  v130 = v121 - 127;
  LOBYTE(v90) = (v121 - 127) ^ 0xD6 ^ (v90 - ((2 * v90 - 110) & 0xAC) - 97);
  LOBYTE(v90) = (v90 - ((2 * v90) & 0x6E) - 73) ^ 0xB7;
  LOBYTE(v53) = v90 ^ 0x9F;
  LOBYTE(v50) = (2 * v90) & 0x3E;
  v131 = v89 - 622291765;
  v132 = ((2 * (v131 ^ 0xDAE894CB)) & 0x1BAE7BFECLL) + (v131 ^ 0xEBCF93FF079B4B3DLL);
  v133 = 0xC9066A81627C352BLL * v132 - ((0x120CD502C4F86A56 * v132 + 0x1FC9A8B45206E75CLL) & 0x752E459017582F26) + 0xA7BF72234AF8B41;
  v134 = v128 ^ 0x3F;
  LOBYTE(v132) = ((2 * (v128 ^ 0x3F)) & 0x7C) + (v128 ^ 0x81);
  v135 = v121 - 75;
  LODWORD(v121) = (v121 - 75);
  v136 = v121 >= 0x34;
  v137 = v132 - v121 + v53 + v50 - ((2 * (v132 - v121 + v53 + v50) - 82) & 0x8C);
  v138 = !v136;
  v139 = v133 ^ (0xC9066A81627C352BLL * ((v135 | (v138 << 8)) + 0x555DFA9E371052A7) - ((0x20CD502C4F86A56 * ((v135 | (v138 << 8)) + 0x555DFA9E371052A7) + 0x1E59816CE0D7C6ELL) & 0xE9E924C7CF28A7ELL) + 0x60421531A5800376);
  v140 = ((v139 ^ 0xBDD86BEE35D552ABLL) + 0x4A1D59D30B70C84DLL + ((2 * ((v139 ^ 0xBDD86BEE35D552ABLL) & 0x4A1D59D30B70C84FLL ^ v139 & 2)) ^ 0xFFFFFFFFFFFFFFFBLL) + 1) ^ 0x4A1D59D30B70C84DLL;
  LOBYTE(v139) = v137 - 99;
  *(&STACK[0x24E0] + v140) = (v137 - 99) ^ 0xC6;
  v141 = LOBYTE(STACK[0x1076]);
  STACK[0xEB8] = v96;
  HIDWORD(v142) = *(v96 + ((-73 * (v141 ^ 0x3F) - ((46 * (v141 ^ 0x3F)) & 0x24) - 110) ^ 9));
  LODWORD(v142) = ~HIDWORD(v142) << 24;
  v143 = (((v142 >> 25) - ((2 * (v142 >> 25)) & 0x7C) - 66) ^ 0xFFFFFFD7) - 55;
  v144 = ((2 * (v141 ^ 0x3F)) & 0xAAAAAAAAAAAAAAAALL) + (v141 ^ 0x5EBEBDDAFACAF66ALL);
  v145 = ((v143 ^ 0xD3) + ((2 * v143) & 0xA6) + 62);
  v146 = (v145 | ((v145 < 0x11u) << 8)) + 0x2D39DB0B1CE7F67DLL;
  v147 = (0xBAC2E8099E0E1F37 * v146 - ((0x7585D0133C1C3E6ELL * v146 + 0x62C8FC872715AAFCLL) & 0x448B4CC94C4A052CLL) + 0x53AA24A839AFD814) ^ (0xBAC2E8099E0E1F37 * v144 - ((0x7585D0133C1C3E6ELL * v144 + 0x28F60AED37D5917ALL) & 0x64327A5FB266CC4CLL) - 0x796BBD598AE1D11DLL);
  v148 = LOBYTE(STACK[0x24E6]);
  *(&STACK[0x24E0] + (((v147 ^ 0x905C9B4B7F1664B6) - 2 * ((v147 ^ 0x905C9B4B7F1664B6) & 0x3E15086F6C4C067FLL ^ v147 & 8) - 0x41EAF79093B3F989) ^ 0xBE15086F6C4C0677)) = v148 ^ v131 ^ 0xD ^ v139;
  v149 = LOBYTE(STACK[0x1075]);
  HIDWORD(v142) = ~v149;
  LODWORD(v142) = (v149 ^ 0x3E) << 24;
  v150 = STACK[0xDF0];
  v151 = *(&off_278E1E490 + (STACK[0xDF0] - 499)) - 4;
  STACK[0xEA0] = v151;
  LODWORD(v139) = v151[((v142 >> 25) - ((2 * (v142 >> 25)) & 0xA8) + 84) ^ 0x40];
  LODWORD(v139) = ((v139 - ((2 * v139 - 106) & 0xFFFFFF98) - 105) ^ 0x53) - 41;
  LODWORD(v139) = ((2 * v139) & 0xFFFFFFC7) + (v139 ^ 0xFFFFFFE3);
  v152 = v139 + 29;
  v153 = (((v139 + 29) ^ LOBYTE(STACK[0x24E5])) - ((2 * ((v139 + 29) ^ LOBYTE(STACK[0x24E5]))) & 0x9A) + 77) ^ 0xCFEFDF86;
  v155 = v149 ^ 0x3F;
  LODWORD(v139) = (v139 + 95);
  v156 = (v149 ^ 0xE57395C2) + ((2 * (v149 ^ 0x3F)) & 0xFFFFFFFB) - v139;
  if (v139 >= 0x42)
  {
    v157 = 0;
  }

  else
  {
    v157 = -256;
  }

  v154 = (2 * (((v152 ^ LOBYTE(STACK[0x24E5])) - ((2 * (v152 ^ LOBYTE(STACK[0x24E5]))) & 0x9A) + 77) ^ 0x4D)) & 0x196;
  v158 = v156 + v157 + v153 + v154 - 1376156912 - ((2 * (v156 + v157 + v153 + v154 - 1376156912) + 960892628) & 0x5D1494FC) + 1261261288;
  v159 = v152 - ((2 * v152) & 0xA2) + 0x5F28943B5600CE51;
  *(&STACK[0x24E0] + ((((v148 - 2 * (v148 & 1) - 0x4CAE5CBD91B0FEFFLL) ^ 0xB351A3426E4F0104) - ((2 * (v148 - 2 * (v148 & 1) - 0x4CAE5CBD91B0FEFFLL)) & 0x10540) - 0x5E8B56F730D77D60) ^ 0xFE5C3D3399284CF1 ^ v159)) = v158 ^ 0x7E;
  v160 = v158 ^ (v148 - ((2 * v148) & 0x9A) + 1487525965);
  v161 = LOBYTE(STACK[0x1074]);
  v162 = (v161 ^ LOBYTE(STACK[0x24E4]) ^ 0x7ABEFEC0) + 2 * (v161 ^ LOBYTE(STACK[0x24E4]) ^ 0x3F) - 2059337470 + (v160 ^ 0x9DC6DCC);
  v163 = v161 ^ 0x3F;
  v164 = ((2 * (v161 ^ 0x3F)) & 0xFFFFFF7F) + (v161 ^ 0x57AF5380) + (v162 ^ 0xF7676BFE) + ((2 * v162) & 0xEECED7FC);
  v165 = v164 - ((2 * v164 + 1641185414) & 0x8E41E2BC) + 2013933985;
  v166 = v165 ^ v160;
  LOBYTE(STACK[0x24E4]) = v165 ^ 0x5E;
  v167 = ((2 * (v166 ^ 0x3103636D)) & 0xFE4BFF94) + (v166 ^ 0xEDF776F74E269CA7);
  v168 = LOBYTE(STACK[0x1073]);
  v169 = ((2 * (v168 ^ 0x3F)) & 0x1F6) + (v168 ^ 0xCFBBEAEFEFD76FC4);
  v170 = (0xBB29E441ADBBF0B9 * v169 - ((0x653C8835B77E172 * v169 + 0x1EF07F691F7873ALL) & 0x609523F9E40FB7ALL) - 0x1803D2E4E7E3BEA6) ^ 0xD340A5809DE17C7FLL ^ (0xBB29E441ADBBF0B9 * v167 - ((0x7653C8835B77E172 * v167 + 0x76392E14465D8E0CLL) & 0xA088193EA5820382) + 0xB60A3A975EFC8C7);
  LODWORD(v168) = v168 ^ LOBYTE(STACK[0x24E3]) ^ 0x3F;
  *(&STACK[0x24E0] + ((v170 - ((2 * v170) & 0x74EE59379B68CFE0) - 0x4588D364324B9810) ^ 0xBA772C9BCDB467F0)) = v168;
  LODWORD(v170) = v166 ^ (v168 - ((2 * v168) & 0x1D0) + 1055867368);
  v171 = LOBYTE(STACK[0x1072]);
  LODWORD(v168) = v171 ^ 0x8BCEF2C0;
  v171 ^= 0x3Fu;
  LODWORD(v168) = 2 * v171 + v168 + ((v171 ^ LOBYTE(STACK[0x24E2])) ^ 0xFFDFFBCD) + ((2 * (v171 ^ LOBYTE(STACK[0x24E2]))) & 0x19A) + 1951469877 + (v170 ^ 0xF013DD7A);
  LODWORD(v168) = v168 - ((2 * v168) & 0x4A7AB6CC) - 1522705562;
  v172 = v168 ^ v170;
  LOBYTE(STACK[0x24E2]) = v168 ^ 0x66;
  v173 = LOBYTE(STACK[0x1071]);
  v174 = ((2 * (v173 ^ 0x7E)) & 0x114) + (v173 ^ 0x5FBFFEFFFF5D87B5);
  LOBYTE(v173) = LOBYTE(STACK[0x24E1]) ^ v173;
  *(&STACK[0x24E0] + 0x6F3C9ABBFD0E2601 * ((v172 ^ 0xCBAEFB6FD0BEB65CLL) - v174) + 0x6F3C9ABBFD0E2601 * ((2 * (v172 ^ 0xAAD179E3)) & 0xF4DF9F7ELL) + 0x52A80A387A4FD9CCLL) = v173 ^ 0x3F;
  STACK[0xEF8] = v4 - 208;
  v175 = ((((LOBYTE(STACK[0x1070]) ^ 0x3F) - ((2 * (LOBYTE(STACK[0x1070]) ^ 0x3F)) & 0x68u) + 236) << 56) - 0x3800000000000000) ^ 0xB400000000000000;
  v176 = v175 - ((2 * v175) & 0xBC00000000000000) - 0x21BED6525417ECB2;
  v177 = v119 - ((2 * v119) & 0xCE);
  v178 = (LOBYTE(STACK[0x107A]) ^ 0x3F) - ((2 * (LOBYTE(STACK[0x107A]) ^ 0x3F)) & 0xFFFFFFEF);
  v179 = v126 - (v127 & 0xFFFFFFFB);
  v180 = v171 - ((2 * v171) & 0x55555555);
  v181 = (LOBYTE(STACK[0x24E0]) - ((2 * LOBYTE(STACK[0x24E0]) - 122) & 0xA8) + 23) ^ 0x5ALL;
  v182 = *(&off_278E1E490 + v150 - 1474) - 12;
  STACK[0xEA8] = v182;
  LODWORD(v181) = v182[v181];
  HIDWORD(v183) = ~v181;
  LODWORD(v183) = (v181 ^ 0xE8) << 24;
  LOBYTE(STACK[0x24E0]) = v173 ^ ((v183 >> 25) - ((2 * (v183 >> 25)) & 0x78) - 68) ^ v172 ^ 0x11;
  v184 = (((v163 - ((2 * v163) & 0x168)) << 24) + 0x653CAF8DB4000000) ^ 0x653CAF8DB4000000;
  v185 = (v118 << 16) - (((v118 << 17) + 0xE0A48040180000) & 0x5D37D092B7960000) + 0x2F0C3A897BD7C27CLL;
  v186 = ((((v117 - ((2 * v117) & 0xEEEEEEEEEEEEEEEELL)) << 8) - 0x6260E4E996F38900) ^ 0x9D9F1B16690C7700) - ((2 * ((((v117 - ((2 * v117) & 0xEEEEEEEEEEEEEEEELL)) << 8) - 0x6260E4E996F38900) ^ 0x9D9F1B16690C7700)) & 0xDF05404737BE200) + 0x46F82A0239BDF19CLL;
  v187 = (((v177 << 24) - 0x2DB9232399000000) ^ 0xD246DCDC67000000) - ((2 * (((v177 << 24) - 0x2DB9232399000000) ^ 0xD246DCDC67000000)) & 0x43EB3D3508000000) + 0x21F59E9A84F79486;
  v188 = STACK[0xEC0] - (STACK[0xE70] & 0xCCCCCCCCCCCCCCCCLL);
  v189 = ((v144 << 8) - (((v144 << 9) + 0x2844A0A6A135600) & 0x48F1C342CC648A00) - 0x1A44F95964C40F47) ^ 0xA478E1A1663245B9 | (v134 - ((2 * v134) & 0xDE) + 0x67D09C9FE29F756FLL) ^ 0x67D09C9FE29F756FLL;
  v190 = (((((v155 - ((2 * v155) & 0xBC)) << 16) - 0x2F9AA988CEA20000) ^ 0xD0655677315E0000) - ((2 * ((((v155 - ((2 * v155) & 0xBC)) << 16) - 0x2F9AA988CEA20000) ^ 0xD0655677315E0000)) & 0x15DCF46B5F440000) - 0x351185CA505DEF2DLL) ^ 0xCAEE7A35AFA210D3 | (v189 - ((2 * v189) & 0x22B73083D3A02224) - 0x6EA467BE162FEEEELL) ^ 0x915B9841E9D01112;
  v191 = v190 - ((2 * v190) & 0xDDA29792FE2600C6);
  HIDWORD(v183) = ~v129;
  LODWORD(v183) = v130 << 24;
  v192 = *(&off_278E1E490 + (v150 ^ 0x23E));
  STACK[0xEC0] = v192;
  v193 = *(v192 + (((v183 >> 25) - ((2 * (v183 >> 25)) & 0xB2) + 89) ^ 0x1ELL));
  HIDWORD(v183) = v193 ^ 0x15;
  LODWORD(v183) = (v193 ^ 0x80) << 24;
  v194 = (((v183 >> 30) + (~(2 * (v183 >> 30)) | 0x75) + 70) ^ 0xFFFFFFD7) - 41;
  v195 = (v194 ^ 0x3F) + 2 * (v194 & 0x3F) - 63;
  v196 = (v195 - ((2 * v195) & 0x58) - 0x48781D0F153F34D4) ^ 0xB787E2F0EAC0CB2CLL | ((v146 << 8) - (((v146 << 9) - 0x73B61639CFED1C00) & 0x97EFF82C20914800) + 0x121CF0F9285216B4) ^ 0x4BF7FC161048A4B4;
  v197 = (v196 - ((2 * v196) & 0x379FD432D3503BACLL) - 0x643015E69657E22ALL) ^ 0x9BCFEA1969A81DD6 | (((v159 << 16) ^ 0x943B5600CE510000) - ((2 * ((v159 << 16) ^ 0x943B5600CE510000)) & 0x26E45BAD95D60000) + 0x13722DD6CAEBE20ALL) ^ 0x13722DD6CAEBE20ALL;
  v198 = (v197 - ((2 * v197) & 0x675073CCBBD758C8) + 0x33A839E65DEBAC64) ^ 0x33A839E65DEBAC64 | (v184 - ((2 * v184) & 0x3F372DB8C2000000) - 0x606469239EB24269) ^ 0x9F9B96DC614DBD97;
  v199 = (((v163 - ((2 * v163) & 0x26)) << 24) - 0xDDD0A9FED000000) ^ 0xF222F56013000000;
  v200 = (v191 - 0x112EB43680ECFF9DLL) ^ 0xEED14BC97F130063 | (v199 - ((2 * v199) & 0x49AE6DD820000000) + 0x24D736EC10D33507) ^ 0x24D736EC10D33507;
  v201 = v200 - ((2 * v200) & 0xB73A4516A4A32A60) - 0x2462DD74ADAE6AD0;
  v202 = (STACK[0xE80] << 32) ^ 0x518DE0500000000;
  v203 = (v202 - ((2 * v202) & 0x36D069AA00000000) - 0x6497CB2AB14535A8) ^ 0x9B6834D54EBACA58 | (STACK[0xE88] - 0x6DBBDF9E41DFDFFBLL);
  v204 = v203 - ((2 * v203) & 0xB38B5000D0A0A67CLL) + 0x59C5A8006850533ELL;
  v205 = (v202 - ((2 * v202) & 0x1D02AE7000000000) + 0x4E81573887F0B306) ^ 0x4E81573887F0B306 | (v188 - 0x238663CF8FF3409ALL) ^ 0xDC799C30700CBF66;
  v206 = v205 - ((2 * v205) & 0x5C4ED51DD69A5CF8) + 0x6E276A8EEB4D2E7CLL;
  v207 = (((v178 + 5950261) << 40) - 0x3E0000000000) ^ 0x5ACAF70000000000;
  v208 = v207 - ((2 * v207) & 0x6AC9320000000000) - 0x4A9B66F1906B934CLL;
  v209 = (((v180 + 7434710) << 40) - 0x2C0000000000) ^ 0x7171AA0000000000;
  v210 = v209 - ((2 * v209) & 0x71FFBA0000000000) - 0x4700227F89895460;
  v211 = (STACK[0xE78] << 48) - (((STACK[0xE78] << 49) + 0x4122000000000000) & 0x40B6000000000000) - 0x3F1363B36E382AE4;
  v212 = (v174 << 48) - (((v174 << 49) + 0x70EC000000000000) & 0x64A2000000000000) + 0x2AC7B16D57E3D304;
  v213 = (((v179 + 161) << 56) - 0x2400000000000000) ^ 0x7D00000000000000;
  v214 = v213 - ((2 * v213) & 0xD800000000000000) + 0x6CFA47901509C2E7;
  v215 = STACK[0xEB0] ^ v185 ^ v187 ^ v186 ^ v208 ^ v211 ^ v214 ^ 0xE996B603658B8F17 ^ v204;
  v216 = v176 ^ ((v169 << 32) - (((v169 << 33) + 0x51200A00000000) & 0x167D2CC00000000) + 0x10DC796B5B1BBF67);
  v217 = STACK[0xEC8] ^ v216 ^ v210 ^ v212 ^ 0xA35A27A3E7B7CCLL ^ (v198 - ((2 * v198) & 0xA9FFEC02E502C682) - 0x2B0009FE8D7E9CBFLL);
  v218 = STACK[0xEE0] ^ v216 ^ v201 ^ v210 ^ v212 ^ 0xFC18EAD833741BDLL;
  v219 = STACK[0xEE8] ^ v185 ^ v187 ^ v186 ^ v208 ^ v211 ^ v214 ^ 0xDE74748DE696F255 ^ v206;
  STACK[0xF18] = &STACK[0x6830C533A7E45C65];
  STACK[0xEC8] = v219;
  LODWORD(v208) = ((2 * v219) & 0xEF556BAE ^ 0xCA016388) + (v219 ^ 0x1AEA4E1B);
  STACK[0xEE8] = v217;
  v220 = ((2 * v217) & 0xFABF7DEE ^ 0x4029084A) + (v217 ^ 0xDF4B3ADA);
  STACK[0xEB0] = v215;
  LODWORD(v187) = ((2 * v215) & 0xFBD7E3F4 ^ 0x70C2C030) + (v215 ^ 0xC59E9FE2);
  LODWORD(STACK[0xE78]) = -1359931283 * (v220 - 470423056) - 2093322843;
  LODWORD(STACK[0xE70]) = -1019108487 * (v208 + 484436843) - 838155826;
  STACK[0xEE0] = v218;
  LODWORD(v215) = ((2 * v218) & 0x2DEDF2FE ^ 0x20CD72B6) + (v218 ^ 0x2F914424);
  LODWORD(STACK[0xE60]) = 2016219805 * (v215 + 2044706804) + 302984825;
  LODWORD(STACK[0xE50]) = -57238801 * (v187 + 2138963646) + 58299448;
  LODWORD(STACK[0xE48]) = -21395921 * (v187 + 2138963646) + 9731640;
  LODWORD(STACK[0xE40]) = (-537394907 * v187 - 2 * ((-537394907 * v187 + 281283806) & 0x10B8F28D ^ (-537394907 * v187) & 1) + 1098710890) ^ (-537394907 * v208 - ((816562650 - 1074789814 * v208) & 0xB04577F4) - 260530969);
  LODWORD(STACK[0xE38]) = 1019108487 * (v187 + 2138963646);
  LODWORD(STACK[0xE30]) = 21395921 * (v208 + 484436843);
  LODWORD(STACK[0xE28]) = 57238801 * (v208 + 484436843);
  LODWORD(STACK[0xE20]) = -1414125393 * (v215 + 2044706804) + 1199260259;
  LODWORD(STACK[0xE18]) = 1359931283 * (v215 + 2044706804);
  LODWORD(STACK[0xE10]) = 1679247135 * (v215 + 2044706804);
  LODWORD(STACK[0xE08]) = -1679247135 * (v220 - 470423056) - 201816839;
  LODWORD(STACK[0xE00]) = -2016219805 * (v220 - 470423056);
  LODWORD(STACK[0xDF8]) = 1414125393 * (v220 - 470423056);
  LODWORD(STACK[0xE80]) = v220;
  LODWORD(STACK[0xE68]) = v215;
  v221 = *(STACK[0xED0] + 8 * v150);
  LODWORD(v211) = LODWORD(STACK[0xE90]) + 15309;
  LODWORD(STACK[0xE88]) = v211;
  LODWORD(STACK[0xDE8]) = v211 ^ 0x418C;
  LODWORD(STACK[0xDF0]) = v220 - 2103426807;
  LODWORD(STACK[0xDE0]) = (v220 - 2103426807) ^ 0xF995A21B;
  LODWORD(STACK[0xDD8]) = (v187 + 34868742) ^ 0xCA5823D4;
  LODWORD(STACK[0xDD0]) = (v208 + 139807273) ^ 0x2C24A9DB;
  return v221();
}

uint64_t sub_24491B568@<X0>(uint64_t a1@<X1>, int a2@<W2>, int a3@<W4>, int a4@<W5>, int a5@<W7>, char a6@<W8>)
{
  v17 = v9 + a1;
  v18 = *(v8 + v9 + a1);
  v19 = (a3 ^ 0x65BB2FF6 ^ (v18 - ((2 * v18) & 0x44444444) - 1344074718)) - v6 - 139807273;
  v20 = (v19 ^ 0x7D2FFF7D) + v11 + ((v19 << LODWORD(STACK[0xDE8])) & 0xFA5FFEFA);
  v21 = v18 ^ v15;
  v22 = v20 - ((2 * v20 + 164109586) & v7) + 1329345117;
  *(v16 + v17) = v21 ^ v22;
  v23 = v9 + a1 + 1;
  v24 = *(v8 + v23) - ((2 * *(v8 + v23)) & 0x1C);
  *(v16 + v23) = v22 ^ v14 ^ v12;
  v25 = v9 + a1 + 2;
  v26 = *(v8 + v25);
  v27 = (v24 - 874304498) ^ v14 ^ v22;
  v28 = LODWORD(STACK[0xE48]) + ((v26 - ((2 * v26) & 0x38) + 1434260508) ^ 0x540EED70 ^ v27);
  v29 = (v28 ^ 0x3EF6F5AF) + LODWORD(STACK[0xE30]) + ((2 * v28) & 0x7DEDEB5E);
  v30 = v29 - ((2 * v29 + 925786846) & v7) - 437299901;
  *(v16 + v25) = v26 ^ v15 ^ v30;
  v31 = v9 + a1 + 3;
  v32 = *(v8 + v31);
  v33 = ((v32 - ((2 * v32) & 0xFFFFFF03) + 993572737) ^ 0xF1609455 ^ v30) - LODWORD(STACK[0xE68]) - 1762199169;
  v34 = (v33 ^ 0x3AEF7FFF) + LODWORD(STACK[0xE80]) + ((2 * v33) & 0x75DEFFFE);
  *(v13 + v23) = v27 ^ 4;
  *(v16 + v31) = v32 ^ v15 ^ (v34 - ((2 * v34 + 20) & v7) - 34);
  v35 = v9 + a1 + 4;
  v36 = *(v8 + v35);
  *(v13 + v25) = v30 ^ a6;
  LODWORD(v25) = LODWORD(STACK[0xE40]) ^ (v34 - ((2 * v34 - 1889435116) & v7) + 302572766);
  *(v13 + v31) = (v34 - ((2 * v34 + 20) & v7) - 34) ^ a6;
  v37 = v25 ^ (v36 - 78136049 - ((2 * v36) & 0x172) + 2986);
  *(v16 + v35) = v25 ^ 0xA2;
  v38 = v9 + a1 + 5;
  LODWORD(v25) = (LODWORD(STACK[0xDE0]) ^ v37) - 844173710 - ((2 * (LODWORD(STACK[0xDE0]) ^ v37)) & 0x9B5DDCE4);
  LODWORD(v23) = (*(v8 + v38) - ((2 * *(v8 + v38)) & 0x11C) + 2065887118) ^ a5 ^ v25;
  LODWORD(v31) = v23 ^ 0xB68C01FC;
  v39 = (v23 ^ 0xB68C01FC) & a2 ^ v23 & 2;
  *(v16 + v38) = ((a5 ^ 0x72 ^ v25) - ((2 * (a5 ^ 0x72 ^ v25)) & 0xFB) + 125) ^ 0x7D;
  v40 = v9 + a1 + 6;
  LODWORD(v25) = *(v8 + v40);
  LODWORD(v31) = v31 - 900193324 - 2 * v39;
  v41 = LODWORD(STACK[0xE70]) + ((v25 - ((2 * v25) & 0x1A0) - 1764233520) ^ 0x5C8FCD04 ^ v31);
  v42 = (v41 ^ 0xFFFF1FE7) + LODWORD(STACK[0xE38]);
  *(v13 + v35) = v37 ^ 0x73;
  v43 = v42 + ((2 * v41) & 0xFFFE3FCE) - 865537307 - ((2 * (v42 + ((2 * v41) & 0xFFFE3FCE)) + 69312034) & v7);
  *(v16 + v40) = v25 ^ v15 ^ v43;
  v44 = v9 + a1 + 7;
  LODWORD(v35) = *(v8 + v44);
  *(v13 + v38) = v31 ^ a6;
  LODWORD(v38) = LODWORD(STACK[0xE78]) + ((v35 - ((2 * v35) & 0xFFFFFF9F) - 1336340273) ^ 0x7A01331B ^ v43);
  LODWORD(v38) = (v38 ^ 0x9BFFFFA9) + LODWORD(STACK[0xE18]) + ((2 * v38) & 0x37FFFF52) + 980083235 + ~(2 * (((v38 ^ 0x9BFFFFA9) + LODWORD(STACK[0xE18]) + ((2 * v38) & 0x37FFFF52) + 1880276558) & (a2 - 1) ^ ((v38 ^ 0x9BFFFFA9) + LODWORD(STACK[0xE18])) & 1));
  *(v16 + v44) = v35 ^ v15 ^ v38;
  v45 = v9 + a1 + 8;
  LODWORD(v35) = *(v8 + v45);
  *(v13 + v40) = v43 ^ a6;
  v46 = ((v35 - ((2 * v35) & 0x146) + 922139555) ^ 0xFCAE9877 ^ v38) - v11 - 34868742;
  v47 = (v46 ^ 0x3FAFDDBB) + v6 + ((2 * v46) & 0x7F5FBB76);
  *(v13 + v44) = v38 ^ a6;
  v48 = v47 - ((2 * v47 - 1857365796) & v7) - 1828876222;
  LODWORD(v40) = LODWORD(STACK[0xDF0]) ^ 0xCA5823D4 ^ v48;
  *(v16 + v45) = v35 ^ v15 ^ v48;
  v49 = v9 + a1 + 9;
  LODWORD(v44) = (v40 + a4 - ((2 * v40) & 0xAB0A0862)) ^ a5;
  LODWORD(v44) = (v44 ^ a4) + 2041082691 - 2 * ((v44 ^ a4) & 0x79A8734F ^ v44 & 0xC);
  LODWORD(v40) = *(v8 + v49) - ((2 * *(v8 + v49)) & 0xDDDD);
  *(v16 + v49) = v44 ^ 0x43;
  LODWORD(v35) = v40 - 1461679890;
  v50 = v9 + a1 + 10;
  v51 = *(v8 + v50);
  LODWORD(v44) = v44 ^ v35;
  LODWORD(v35) = LODWORD(STACK[0xE50]) + ((v51 - ((2 * v51) & 0x166) - 1912249677) ^ 0x5F4D991E ^ v44);
  LODWORD(v35) = (v35 ^ 0xBF66F7DF) + LODWORD(STACK[0xE28]) + ((2 * v35) & 0x7ECDEFBE);
  LODWORD(v35) = v35 - ((2 * v35 - 1889103490) & v7) + 302738579;
  *(v13 + v45) = v48 ^ a6;
  *(v16 + v50) = v51 ^ v15 ^ v35;
  v52 = v9 + a1 + 11;
  HIDWORD(v53) = *(STACK[0xEB8] + ((-73 * *(v8 + v52) - ((46 * *(v8 + v52)) & 0x22) - 111) ^ 0xALL));
  LODWORD(v53) = ~HIDWORD(v53) << 24;
  *(v13 + v49) = v44 ^ 0xC5;
  LODWORD(v44) = ((v53 >> 25) - ((2 * (v53 >> 25)) & 0xFFFFFFAC) + 86) ^ 0x3F;
  LODWORD(v44) = ((v44 - 55) ^ 0x7F) + 2 * v44 + 19;
  LOBYTE(v45) = v35 ^ a6;
  LODWORD(v49) = LODWORD(STACK[0xE60]) + ((v44 - ((2 * v44) & 0x15C) - 343285842) ^ 0x21D1FC7A ^ v35);
  LODWORD(v35) = (v49 ^ 0x7C7559FD) + LODWORD(STACK[0xE00]);
  *(v13 + v50) = v45;
  LODWORD(v50) = v35 + ((2 * v49) & 0xF8EAB3FA) - ((2 * (v35 + ((2 * v49) & 0xF8EAB3FA)) + 1729950556) & v7) - 35218046;
  LOBYTE(v44) = ((v44 ^ 0xD4 ^ v50) - (v12 & (2 * (v44 ^ 0xD4 ^ v50))) - 79) ^ 0xB1;
  *(v13 + v52) = v50 ^ a6;
  LODWORD(v50) = LODWORD(STACK[0xDD8]) ^ v50;
  *(v16 + v52) = v44;
  LODWORD(v52) = v50 + 740600283 - ((2 * v50) & 0x584953B6);
  v54 = v9 + a1 + 12;
  LODWORD(v44) = *(v8 + v54);
  LODWORD(v52) = (LODWORD(STACK[0xDD0]) ^ v52) - ((2 * (LODWORD(STACK[0xDD0]) ^ v52)) & 0xBD69D8BA) + 1588915293;
  *(v16 + v54) = v52 ^ 0x5D;
  v55 = v9 + a1 + 13;
  LODWORD(v35) = *(v8 + v55);
  LODWORD(v52) = v52 ^ (v44 - ((2 * v44) & 0x99999999) - 2143236404);
  LODWORD(v44) = LODWORD(STACK[0xE08]) + ((v35 - ((2 * v35) & 0x99999999) + 1029511628) ^ 0xE3A93B5D ^ v52);
  LODWORD(v44) = (v44 ^ 0xF937FFDF) + LODWORD(STACK[0xE10]) + ((2 * v44) & 0xF26FFFBE);
  LODWORD(v44) = v44 - 2 * ((v44 + 1510188596) & (a2 + 1) ^ v44 & 3) - 1537488376;
  *(v13 + v17) = v22 ^ a6;
  *(v16 + v55) = v35 ^ v15 ^ v44;
  v56 = v9 + a1 + 14;
  v57 = *(STACK[0xEA8] + ((*(v8 + v56) - ((2 * *(v8 + v56) + 6) & 0x64) - 11) ^ 0x3CLL));
  *(v13 + v54) = v52 ^ 0xF9;
  HIDWORD(v53) = ~v57;
  LODWORD(v53) = (v57 ^ 0xE8) << 24;
  LODWORD(v52) = (v53 >> 25) - ((2 * (v53 >> 25)) & 0x7C) - 66;
  *(v13 + v55) = v44 ^ a6;
  LODWORD(v44) = (((v52 ^ 0xCF) + 1045465866 - ((2 * (v52 ^ 0xCF)) & 0x14)) ^ 0xF408A8DE ^ v44) - v11 - 34868742;
  LODWORD(v44) = (v44 ^ 0xEFFEB9FD) + v6 + ((2 * v44) & 0xDFFD73FA);
  LODWORD(v44) = v44 - 2 * ((v44 + 408326188) & a2 ^ v44 & 2) - 491867136;
  *(v16 + v56) = v52 ^ 0x1B ^ v44;
  *(v13 + v56) = v44 ^ a6;
  LODWORD(v56) = (((v9 - 536720549) | 0xF) + v10 - ((2 * ((v9 - 536720549) | 0xF)) & 0x67CA44BE)) ^ v10;
  LODWORD(v52) = *(v8 + v56);
  LODWORD(v44) = LODWORD(STACK[0xE20]) + ((v52 - ((2 * v52) & 0x14E) + 1939538855) ^ 0xB9C32073 ^ v44);
  LODWORD(v44) = (v44 ^ 0x5CCDFE9F) + LODWORD(STACK[0xDF8]) + ((2 * v44) & 0xB99BFD3E);
  LOBYTE(v44) = v44 - ((2 * v44 - 108) & v7);
  *(v16 + v56) = v52 ^ v15 ^ (v44 + 30);
  *(v13 + v56) = (v44 + 30) ^ a6;
  return (*(STACK[0xED0] + 8 * ((996 * ((v9 + 16 + a1) < 0x40)) ^ LODWORD(STACK[0xE90]))))();
}

uint64_t sub_24491BF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v6 = STACK[0xE88];
  v7 = STACK[0xE88];
  STACK[0xDF8] = (LODWORD(STACK[0xE88]) + 782072437);
  v8 = v5 << (v6 + 116);
  v9 = (v5 - ((v8 + 875887612) & 0x699D4300) + 0x76DF5EE94EE91F7FLL) ^ 0x8920A1164B315E7ELL;
  v10 = *(&STACK[0x10F0] + v9 + 64);
  STACK[0xE28] = v10;
  v11 = v10 ^ 0x68;
  LODWORD(v10) = *(STACK[0xE58] + ((-73 * (v10 ^ 0x68) - ((110 * (v10 ^ 0x68)) & 0xF8) - 4) ^ 0x93));
  v12 = *(&STACK[0x2070] + v9 + 64);
  LODWORD(v10) = ((((v10 - ((2 * v10 - 114) & 0xFFFFFFBF) - 86) ^ 3) - 4) ^ 0x12) - 55;
  LODWORD(v10) = ((2 * v10) & 0xFFFFFFB4) + (v10 ^ 0x5A);
  v13 = v10 - 80;
  v14 = (v10 - 90);
  STACK[0xE80] = v14;
  v15 = ((v14 ^ v12) - ((2 * (v14 ^ v12)) & 0xBC) - 34) ^ 0xDE;
  v16 = (a5 ^ 0x7D3FFF1535AF587BLL) + ((2 * (a5 ^ 0xCA5823D4)) & 0x1FFEEF75ELL) + v9;
  if (v13 >= 0xAu)
  {
    v17 = 0;
  }

  else
  {
    v17 = -256;
  }

  v18 = (v11 ^ 0xBC) + ((2 * v11) & 0x78) - v13 + (v15 ^ 0xB4) + ((2 * v15) & 0x68) - 44;
  v19 = v18 - ((2 * v18 - 116) & 0x1C) + 84;
  *(&STACK[0x2070] + v16 - v13 + v17 - 0x7D3FFF15FFF77B65) = v19 ^ 0x8E;
  v20 = ((v5 - ((v8 + 875887614) & 0xE9AD121A) - 0x3576B638F10EF8F4) ^ 0x3576B6388B2976F2) + 64;
  v21 = *(&STACK[0x2070] + v20);
  STACK[0xE18] = v20;
  v22 = (v5 - (v8 & 0x5C) + 0x2A9E120EED57EA2FLL) ^ 0xD561EDF0ACC293D0;
  v23 = *(&STACK[0x10F0] + v22 + 64);
  v24 = v23 ^ *(&STACK[0x2070] + v22 + 64);
  STACK[0xE20] = v23 ^ 0x68;
  v25 = v23 ^ 0xCF6F75E7EBF6BCFLL;
  v26 = 2 * (v23 ^ 0x68);
  v27 = v21 ^ a5 ^ 0x5A ^ v19;
  v28 = &STACK[0x2070] + v25 + (v26 & 0x14E);
  v29 = v22 + (v21 ^ 0x8006820050462D0) - ((2 * v21) & 0x5E);
  *(&STACK[0x2070] + v20) = v27;
  v30 = ((v5 - (v8 & 0x58) + 0xD6C5D4F082BA46CLL) ^ 0xF293A2B091EED992) + 64;
  LOBYTE(v21) = v24 ^ 0x68 ^ v21;
  v28[v29 - 0x14F75F7E83C3CE37] = v24 ^ 0x68;
  v31 = (v5 - ((v8 + 4) & 0xC4) + 0x1955D00FD070C3E4) ^ 0xE6AA2FEFC9A9BA1DLL;
  v32 = *(&STACK[0x2070] + v30);
  v33 = *(&STACK[0x10F0] + v31 + 64);
  v34 = *(&STACK[0x2070] + v31 + 64) ^ v33;
  STACK[0xE50] = v33 ^ 0x68;
  *(&STACK[0x2070] + v30) = v21 ^ v32;
  v35 = 2 * (v33 ^ 0x68);
  STACK[0xE48] = v35;
  v36 = &STACK[0x2070] + 0x64A64175C3E47E7FLL * ((v32 ^ 0x7DB7DDCF39F3F9EFLL) + ((2 * v32) & 0xFFFFFFFFFFFFFFDFLL) + (v33 ^ 0xAC210A08110000A8) - (v35 & 0x7E)) + v31;
  v37 = v5;
  v38 = 1709539900 - v5;
  *(v36 - 0x1C2F94EBD5477E91) = v34 ^ 0x68;
  v39 = *(&STACK[0x10F0] + 1709539900 - v5);
  v40 = *(&off_278E1E490 + (v7 & 0x57D02F7A)) - 4;
  STACK[0xE90] = v40;
  LODWORD(v40) = v40[v39 ^ 0xAD] ^ 0x18;
  LODWORD(STACK[0xE78]) = v40;
  STACK[0xE60] = 2 * (v39 ^ 0x68);
  STACK[0xE30] = v39 ^ 0x68;
  v41 = (v40 - 54) - (v39 ^ 0x68);
  LODWORD(v31) = (v34 ^ 0x68 ^ v32 ^ 0xDFAC47FB) + ((2 * (v34 ^ 0x68 ^ v32)) & 0x1F6) + 542357509;
  LODWORD(v39) = v31 - (v39 ^ 0x68) + ((*(&STACK[0x2070] + v38) - ((2 * *(&STACK[0x2070] + v38)) & 0xD0) + 104) ^ v39);
  LODWORD(v39) = v39 - 460841099 - ((2 * v39) & 0xC9103EEA);
  *(&STACK[0x2070] + 0x6A7682D8419F1A63 * (v41 + (((v40 - 54) < 0x66u) << 8)) - v37 - 0x6B382229BF7F0136) = v39 ^ 0x75;
  LODWORD(v31) = v31 ^ 0xE4881F75 ^ v39;
  v42 = (v37 - ((v8 + 8) & 0x34) - 0x52332D9529FD6AE1) ^ 0x52332D94C417E8E4;
  LODWORD(v41) = *(&STACK[0x10F0] + v42 + 64);
  LODWORD(STACK[0xE38]) = v41 ^ 0x68;
  v43 = 2 * (v41 ^ 0x68);
  LODWORD(STACK[0xE40]) = v43;
  v44 = *(STACK[0xEA8] + (((v41 ^ 0x68) - ((v43 + 6) & 0x10) - 53) ^ 6));
  HIDWORD(v45) = ~v44;
  LODWORD(v45) = (v44 ^ 0xE8) << 24;
  LODWORD(v31) = v31 - 1917523106 - ((2 * v31) & 0x1B69D6BC);
  STACK[0xE70] = ((v45 >> 25) - 4 * ((v45 >> 25) >> 1) - 2) ^ 0xFFFFFF8F;
  v46 = 2 * (((v45 >> 25) - 4 * ((v45 >> 25) >> 1) - 2) ^ 0x8Fu);
  STACK[0xE68] = v46;
  LOBYTE(v38) = *(&STACK[0x2070] + v42 + 64) ^ v41;
  *(&STACK[0x2070] + 0x3B5B10DA8CCC65BBLL * (v46 + (((v45 >> 25) - 4 * ((v45 >> 25) >> 1) - 2) ^ 0x5FF577FFCEC3ED70) + (v31 ^ 0x710A00029F8DCBD4) - ((2 * (v31 ^ 0x8DB4EB5E)) & 0x1DB8DBEEALL)) + v42 - 0x43990567B0C1AAD3) = v38 ^ 0x68;
  v47 = ((v37 - ((v8 + 10) & 0x22) - 0x6162C2E167E698EALL) ^ 0x6162C2E1020116EELL) + 64;
  v48 = *(&STACK[0x2070] + v47);
  *(&STACK[0x2070] + v47) = v38 ^ v48 ^ 0x36 ^ v31;
  v49 = (v37 - ((v8 + 12) & 0xD0) + 0x2FAD85FCBE3CCC6ELL) ^ 0xD0527A02DBDDB197;
  v50 = v49 + (v48 ^ 0xFF7FFE7E6FDB59BELL) + ((2 * v48) & 0x17C);
  v49 += 64;
  v51 = *(&STACK[0x10F0] + v49);
  v52 = v51 ^ 0x68;
  v53 = 2 * (v51 ^ 0x68);
  LODWORD(v49) = *(&STACK[0x2070] + v49) ^ v51 ^ 0x68;
  *(&STACK[0x2070] + v50 + (v51 ^ 0x8201008104001DDLL) - (v53 & 0x94) - 0x7A00E86801B5B33) = v49;
  LODWORD(v49) = ((2 * (v49 ^ v48)) & 0xF8) + ((v49 ^ v48) ^ 0xF7F9EF7C);
  v54 = ((v37 - ((v8 + 14) & 0xA0) - 0x7DDE276304B32CA9) ^ 0x7DDE27629ECDAAAFLL) + 64;
  v55 = *(&STACK[0x10F0] + v54);
  v56 = v55 ^ 0x68;
  LODWORD(v55) = (v55 ^ 0x3ACFED97) + 2 * (v55 ^ 0x68) + (v55 ^ *(&STACK[0x2070] + v54) ^ 0x9B63EF94) - v49 + ((2 * (v55 ^ *(&STACK[0x2070] + v54) ^ 0x68)) & 0x1F8);
  LODWORD(v55) = v55 - ((2 * v55 + 59515650) & 0x1665267A) - 1392991042;
  *(&STACK[0x2070] + v54) = v55 ^ 0x3D;
  v57 = (v37 - ((v8 + 16) & 0x9CLL) + 0x4B42968AE906DED7) ^ 0xB4BD6974B1139F30;
  LODWORD(v51) = (v55 ^ (v49 + 134615172) ^ 0x8B32933D) + 1152643217 - 2 * ((v55 ^ (v49 + 134615172) ^ 0x8B32933D) & 0x44B3F093 ^ (v55 ^ (v49 + 134615172)) & 2);
  v58 = ((2 * (v51 ^ 0x44B3F091)) & 0x1FBFEBF7ELL) + (v51 ^ 0xFDAB7F75B94CAF2ELL);
  v59 = 0x4A65BB5662B5084DLL * v58 - ((0x6561E4659E4E771ALL - 0x6B3489533A95EF66 * v58) & 0x86D871DF80EA5E5ALL);
  v60 = *(&STACK[0x10F0] + v57 + 64);
  v61 = v60 ^ 0x68;
  v62 = 2 * (v60 ^ 0x68);
  v63 = v60 ^ *(&STACK[0x2070] + v57 + 64);
  *(&STACK[0x2070] + ((0x4A65BB5662B5084DLL * ((v62 & 0x1F4) + (v60 ^ 0x1ED5FFFCF37F6E92)) - ((0x94CB76ACC56A109ALL * ((v62 & 0x1F4) + (v60 ^ 0x1ED5FFFCF37F6E92)) - 0x71DD7C84C71C6264) & 0xF2958D50CA785C26) - 0x3FA3F799FE52031FLL) ^ (v57 - ((2 * (v57 + 64)) & 0x744DFC8F4A92027CLL) + 0x3A26FE47A549017ELL) ^ (v59 + 0x761D2B228F9C6ABALL))) = v63 ^ 0x68;
  v64 = ((v37 - (v8 & 8) + 0x22E681380ACAA30CLL) ^ 0xDD197EC78F4FDAFALL) + 64;
  LODWORD(v51) = v51 ^ ((v63 ^ 0x68) - ((2 * v63) & 0x26) - 1376527085);
  v65 = *(&STACK[0x10F0] + v64) ^ 0x68;
  v66 = v65 - ((2 * v65) & 0xDDDDDDDDDDDDDDDDLL) + 0x2ACB7E5B940ED6EELL;
  STACK[0xE00] = v66;
  LODWORD(v60) = (v65 ^ 0x7F569DFE) + ((2 * v65) & 0x1FC) - 2136382974 + ((*(&STACK[0x2070] + v64) - ((2 * *(&STACK[0x2070] + v64)) & 0x1EA) + 1201277685) ^ 0x7E715365 ^ (v65 - ((2 * v65) & 0x120) + 971725200));
  LODWORD(v60) = (v60 ^ 0x5C77FFF6) + ((2 * v60) & 0xB8EFFFEC) - 1551368181 + (v51 ^ 0x16BFD27D);
  v67 = v65 - ((2 * v65) & 0x84) - 0x3DA98B480C34D0BELL;
  *(&STACK[0x2070] + (v64 ^ v66 ^ v67 ^ 0xE89D0AEC67C5F9ACLL)) = (v60 - ((2 * v60) & 0xA) + 5) ^ 5;
  v68 = (v37 - ((v8 + 20) & 0x3C) + 0x732D434C3B2C03A8) ^ 0x8CD2BCB35EEE7A61;
  LODWORD(v51) = (v60 - ((2 * v60) & 0x21B7520A) - 1864652539) ^ v51;
  v69 = *(&STACK[0x10F0] + v68 + 64);
  v70 = ((2 * (v69 ^ 0x28)) & 0x17ELL) + (v69 ^ 0x9CFF4AEBDF7D2DD7);
  LOBYTE(v65) = v69 ^ *(&STACK[0x2070] + v68 + 64);
  *(&STACK[0x2070] + 0x5A154C246CB1E8D3 * (v70 + (v51 ^ 0xEA410121351DB1C3) - ((2 * (v51 ^ 0x799B8487)) & 0x166F39576)) + v68 - 0x41B54B4711985339) = v65 ^ 0x68;
  v71 = ((v37 - 0x279001145559D5F4) ^ 0x27900113EF7453FCLL) + 64;
  v72 = *(&STACK[0x2070] + v71);
  *(&STACK[0x2070] + v71) = v65 ^ v72 ^ v51 ^ 0xEF;
  STACK[0xE10] = v37;
  v73 = (v37 - ((v8 + 24) & 0xA4) - 0x5C4C26529002E9A1) ^ 0x5C4C26522A1D67ACLL;
  v74 = *(&STACK[0x10F0] + v73 + 64);
  HIDWORD(v45) = *(STACK[0xEB8] + ((-73 * (v74 ^ 0x68) - ((110 * (v74 ^ 0x68)) & 0x9C) + 78) ^ 0xD5));
  LODWORD(v45) = ~HIDWORD(v45) << 24;
  LODWORD(v51) = (((v45 >> 25) - ((2 * (v45 >> 25)) & 0xFFFFFFA4) + 82) ^ 0x3B) - 55;
  v75 = v51 ^ 0xFFFFFFF9;
  LODWORD(v51) = (2 * v51) & 0xFFFFFFF3;
  LODWORD(STACK[0xE08]) = v51 + v75;
  LOBYTE(v29) = (v74 ^ 0xC7) + (v74 ^ *(&STACK[0x2070] + v73 + 64) ^ 0x16) + ((2 * (v74 ^ 0x68)) & 0x5E) + ((2 * (v74 ^ *(&STACK[0x2070] + v73 + 64) ^ 0x68)) & 0xFC) - (v51 + v75 + 127) + 46;
  v76 = ((2 * (v74 ^ 0x68)) & 0xFFFFFFFFFFFFFFDFLL) + (v74 ^ 0x5FF56EBFEF17FB87);
  v77 = (v29 - ((2 * v29 + 58) & 0x66) - 48) ^ 0xB3;
  *(&STACK[0x2070] + v73 + (v72 ^ 0x7BBE70DF7F69E79FLL) + ((2 * v72) & 0xFFFFFFFFFFFFFF3FLL) - v76 - 0x1BC9021F9051EB70) = v77;
  v78 = (v37 - ((v8 + 26) & 0x6ALL) - 0x66FD2F386C9540BELL) ^ 0x66FD2F3806AFBECALL;
  v79 = *(&STACK[0x10F0] + v78 + 64);
  v80 = ((2 * (v79 ^ 0x68)) & 0xFFFFFFFFFFFFFF7FLL) + (v79 ^ 0xF7FB1EBFFE9FDED7);
  HIDWORD(v45) = *(&STACK[0x10F0] + v78 + 64);
  LODWORD(v45) = (v79 ^ 0x68) << 24;
  v81 = *(STACK[0xEA0] + (((v45 >> 25) - ((2 * (v45 >> 25)) & 0xFB) - 3) ^ 0xE9));
  v82 = ((v81 - ((2 * v81 - 106) & 0xFFFFFFE8) + 63) ^ 0xFFFFFFEB) - 41;
  v83 = (v82 ^ 0x6D) + ((2 * v82) & 0xFFFFFFDA) - 64;
  if (((v82 ^ 0x6D) + ((2 * v82) & 0xDA) - 64) >= 0x2Du)
  {
    v84 = 0;
  }

  else
  {
    v84 = -256;
  }

  *(&STACK[0x2070] + 0x5D5E498C85B52033 * (v80 - v83) + 0x5D5E498C85B52033 * v84 + v78 + 0x1E97706A131A692ALL) = v77 ^ v72 ^ *(&STACK[0x2070] + v78 + 64);
  v85 = *(&STACK[0x10F0] + v30);
  v86 = *(&STACK[0x10F0] + STACK[0xE18]);
  LODWORD(STACK[0xE18]) = *(&STACK[0x10F0] + v47);
  v87 = (*(&STACK[0x10F0] + v71) ^ 0x68) - ((2 * (*(&STACK[0x10F0] + v71) ^ 0x68)) & 0xD8u) + 1563040;
  v86 ^= 0x68uLL;
  v88 = (((v86 - ((2 * v86) & 0x98)) << 8) + 0x2B4244C38ECC4C00) ^ 0x2B4244C38ECC4C00;
  v89 = v52 + 0x78AFF872A0AB9DDELL - (v53 & 0x1BC);
  v90 = v52 - 0x19D5E03BB90EBA02 - (v53 & 0x1FC);
  v91 = (((v56 - ((2 * v56) & 0xFFFFFFFFFFFFFFBFLL)) << 8) - 0x67E1E0ED91AE2100) ^ 0x981E1F126E51DF00;
  v92 = (((v56 - ((2 * v56) & 0xAE)) << 8) - 0x6E85D05EB74DA900) ^ 0x917A2FA148B25700;
  v93 = v92 + 0x2A292F14BD9E08E7 - ((2 * v92) & 0x54525E297B3C1000);
  v94 = (((v86 - ((2 * v86) & 0x19A)) << 8) - 0x7494409C92283300) ^ 0x8B6BBF636DD7CD00;
  v95 = v94 + 0x57A2E15FB53AAB82 - ((2 * v94) & 0x2F45C2BF6A755600);
  v96 = (v88 + 0x1CBD0860157498E0 - ((2 * v88) & 0x397A10C02AE93000)) ^ 0x1CBD0860157498E0 | (v11 - 0x13A6D0A14B80116ELL - ((2 * STACK[0xE28]) & 0x124)) ^ 0xEC592F5EB47FEE92;
  v97 = (v91 + 0xB8882C4B9301981 - ((2 * v91) & 0x1711058972603200)) ^ 0xB8882C4B9301981 | v89 ^ 0x78AFF872A0AB9DDELL;
  v98 = v97 - 0x5EAA8F37F696C3ELL - ((2 * v97) & 0x742AAE19012D2784);
  v99 = (v93 ^ 0x2A292F14BD9E08E7 | v90 ^ 0xE62A1FC446F145FELL) + 0x608710904707B7A9 - ((2 * (v93 ^ 0x2A292F14BD9E08E7 | v90 ^ 0xE62A1FC446F145FELL)) & 0x410E21208E0F6F52);
  v100 = (((STACK[0xE20] - (v26 & 4)) << 16) - 0x228B841F20FE0000) ^ 0xDD747BE0DF020000;
  v101 = (((v61 - (v62 & 0x174)) << 16) + 0x4A6E216430BA0000) ^ 0x4A6E216430BA0000;
  v102 = (v96 + 0x2B8C1BDBBB2AAF4FLL - ((2 * v96) & 0x571837B776555E9ELL)) ^ 0x2B8C1BDBBB2AAF4FLL | (v100 - 0x304A4E1D1F96E1E7 - ((2 * v100) & 0x1F6B63C5C0D20000)) ^ 0xCFB5B1E2E0691E19;
  v103 = v102 - 0x38C53FC3E6231BE6 - ((2 * v102) & 0xE75807833B9C834);
  v104 = (((STACK[0xE20] - (v26 & 0x1A8)) << 16) + 0x5090B90BC6D40000) ^ 0x5090B90BC6D40000;
  v105 = v104 - 0x5B61285F863C7235 - ((2 * v104) & 0x493DAF40F3860000);
  v106 = (((v61 - (v62 & 0x8C)) << 16) - 0x44B7E0FFFCBA0000) ^ 0xBB481F0003460000;
  v107 = v106 - 0xD24E65DA74B689 - ((2 * v106) & 0x7E5B63344B160000);
  v108 = v85 ^ 0x68;
  v109 = (((v108 - ((2 * v108) & 0x146)) << 24) + 0x519490B7A3000000) ^ 0x519490B7A3000000;
  v110 = (STACK[0xE80] + 0x31739893A5A65402 - ((2 * STACK[0xE80]) & 4)) ^ 0x31739893A5A65402 | v95 ^ 0x57A2E15FB53AAB82;
  v111 = v103 ^ 0xC73AC03C19DCE41ALL | (v109 + 0x5C91AA958B4D03DCLL - ((2 * v109) & 0x3923552B16000000)) ^ 0x5C91AA958B4D03DCLL;
  v112 = (v99 ^ 0x608710904707B7A9 | v107 ^ 0xFF2DB19A258B4977) - 0x586537F5F4449849 - ((2 * (v99 ^ 0x608710904707B7A9 | v107 ^ 0xFF2DB19A258B4977)) & 0x4F3590141776CF6ELL);
  v113 = ((v67 << 24) ^ 0xB7F3CB2F42000000) + 0x516E009F1EACD73FLL - ((2 * ((v67 << 24) ^ 0xB7F3CB2F42000000)) & 0x22DC013E3C000000);
  v114 = ((v98 ^ 0xFA15570C809693C2 | (v101 - 0x6979C1D43FD4D93CLL - ((2 * v101) & 0x2D0C7C5780560000)) ^ 0x96863E2BC02B26C4) - 0x4F517433B6E0CB32 - ((2 * (v98 ^ 0xFA15570C809693C2 | (v101 - 0x6979C1D43FD4D93CLL - ((2 * v101) & 0x2D0C7C5780560000)) ^ 0x96863E2BC02B26C4)) & 0x615D1798923E699CLL)) ^ 0xB0AE8BCC491F34CELL | (((STACK[0xE00] << 24) ^ 0x5B940ED6EE000000) - 0x2905B04E565183B4 - ((2 * ((STACK[0xE00] << 24) ^ 0x5B940ED6EE000000)) & 0x2DF49F6352000000)) ^ 0xD6FA4FB1A9AE7C4CLL;
  v115 = (v110 + 0x4ECDF6FB73379D0BLL - ((2 * v110) & 0x1D9BEDF6E66F3A16)) ^ 0x4ECDF6FB73379D0BLL | v105 ^ 0xA49ED7A079C38DCBLL;
  v116 = v114 + 0x7C6D0EFCF3D1EF74 - ((2 * v114) & 0x78DA1DF9E7A3DEE8);
  v117 = (v112 ^ 0xA79AC80A0BBB67B7 | v113 ^ 0x516E009F1EACD73FLL) - 0x253388BF5DACB147 - ((2 * (v112 ^ 0xA79AC80A0BBB67B7 | v113 ^ 0x516E009F1EACD73FLL)) & 0x3598EE8144A69D72);
  v118 = (((v108 - ((2 * v108) & 0x104)) << 24) + 0x77BC9E9B82000000) ^ 0x77BC9E9B82000000;
  v119 = (((STACK[0xE50] - (STACK[0xE48] & 0x126) + 1161690826) << 32) - 0x3700000000) ^ 0x453DFE9300000000;
  v120 = (v111 + 0x47BDCB5A0ABFB613 - ((2 * v111) & 0xF7B96B4157F6C26)) ^ 0x47BDCB5A0ABFB613 | (v119 + 0x143770BF2D410FB5 - ((2 * v119) & 0x286EE17E00000000)) ^ 0x143770BF2D410FB5;
  v121 = v120 - ((2 * v120) & 0x7B1F22BF52B30AAELL) - 0x42706EA056A67AA9;
  v122 = (v115 + 0x7D32C0F51C154085 + (~(2 * v115) | 0x859A7E15C7D57EF5) + 1) ^ 0x7D32C0F51C154085 | (v118 - 0x70497FF4B7A22942 - ((2 * v118) & 0x1F6D001690000000)) ^ 0x8FB6800B485DD6BELL;
  v123 = (v70 << 32) - (((v70 << 33) + 0x4105A48200000000) & 0xCBADAF8C00000000) - 0x79A655F8250CB412;
  v124 = (((STACK[0xE50] - (STACK[0xE48] & 0xB4) + 1715976551) << 32) - 0xD00000000) ^ 0x6647B95A00000000;
  v125 = (v122 + 0x1F39A85F8C0E85D0 - ((2 * v122) & 0x3E7350BF181D0BA0)) ^ 0x1F39A85F8C0E85D0 | (v124 - 0x6DB01EF24DA7E07DLL - ((2 * v124) & 0x249FC21A00000000)) ^ 0x924FE10DB2581F83;
  v126 = (((STACK[0xE30] - (STACK[0xE60] & 0x146) + 15957967) << 40) - 0x2C0000000000) ^ 0xF37FA30000000000;
  v127 = v126 - ((2 * v126) & 0x2A193A0000000000) + 0x550C9DB3C5406F26;
  v128 = v125 - ((2 * v125) & 0x501A038ED1C538E0) - 0x57F2FE38971D6390;
  v129 = (((v87 << 40) - 0x340000000000) ^ 0x17D96C0000000000) - ((2 * (((v87 << 40) - 0x340000000000) ^ 0x17D96C0000000000)) & 0x60EAC60000000000) - 0x4F8A9C5E8E5DC66FLL;
  v130 = ((((LOBYTE(STACK[0xE78]) + 100) - ((2 * (LODWORD(STACK[0xE78]) + 100)) & 0x8Cu) + 7402350) << 40) - 0x280000000000) ^ 0x70F3460000000000;
  v131 = (((LODWORD(STACK[0xE38]) - (STACK[0xE40] & 0xFFFFFFC7) + 17438) << 48) - 0x3B000000000000) ^ 0x43E3000000000000;
  v132 = v131 - ((2 * v131) & 0x7BC6000000000000) - 0x21C3CBF9D939B0DLL;
  v133 = v116 ^ 0x7C6D0EFCF3D1EF74 | ((v76 << 48) - (((v76 << 49) + 0x822000000000000) & 0xEC8E000000000000) - 0x5A72E1762B352CALL) ^ 0xF647D1E89D4CAD36;
  v134 = v130 - ((2 * v130) & 0x7CF4180000000000) - 0x4185F38A7A168657;
  v135 = ((((LOBYTE(STACK[0xE08]) + 7) - ((2 * (LODWORD(STACK[0xE08]) + 7)) & 0x10u) + 42038) << 48) - 0x2E000000000000) ^ 0xA408000000000000;
  v136 = (((STACK[0xE70] - (STACK[0xE68] & 0x1FC) + 17690) << 48) - 0x1C000000000000) ^ 0x44FE000000000000;
  v137 = (v135 + 0x22EF2E167D7403A1 - ((2 * v135) & 0x45DE000000000000)) ^ 0x22EF2E167D7403A1 | v117 ^ 0xDACC7740A2534EB9;
  v138 = LODWORD(STACK[0xE18]) ^ 0x68;
  v139 = (((v138 - ((2 * v138) & 0x5Cu) + 181) << 56) - 0x700000000000000) ^ 0xAE00000000000000;
  STACK[0xEB0] ^= v127 ^ v132 ^ (v139 - ((2 * v139) & 0xDDDDDDDDDDDDDDDDLL) + 0x6E1652F24217D8CFLL) ^ 0x7B769D5E4C62564DLL ^ v121;
  STACK[0xEE8] ^= v129 ^ v123 ^ ((v80 << 56) - (((v80 << 57) - 0x7E00000000000000) & 0x8A00000000000000) - 0x79943F79CCC391ECLL) ^ 0x4C3D0E553867C233 ^ (v133 - ((2 * v133) & 0xB9EAF5694015BCB0) - 0x230A854B5FF521A8);
  v140 = ((v138 - ((2 * v138) & 0x44444444u) + 93) << 56) - 0x3B00000000000000;
  v141 = STACK[0xEE0] ^ v129 ^ v123 ^ ((v83 << 56) - (((v83 << 57) - 0x5A00000000000000) & 0xD400000000000000) + 0x3DF29AB3BE06CA74) ^ 0xDD96EF6573F575D1;
  STACK[0xEC8] ^= v134 ^ ((v140 ^ 0x2200000000000000) + (v140 >> 62 << 63) + 0x40CF42F18CEF0170) ^ (v136 - ((2 * v136) & 0x5C2A000000000000) - 0x11EA14ADDA0A924DLL) ^ 0xB8ADA4114411891ALL ^ v128;
  v142 = STACK[0xE10] - 1709539826;
  STACK[0xEE0] = v141 ^ (v137 - ((2 * v137) & 0x458F8362CD459BB4) + 0x62C7C1B166A2CDDALL);
  return (*(STACK[0xED0] + 8 * (((v142 > 0x3F) | (2 * (v142 > 0x3F))) ^ LODWORD(STACK[0xE88]))))();
}

uint64_t sub_24491DB78(uint64_t a1, char a2)
{
  v4 = STACK[0xDF8] - 782070943;
  v5 = (((STACK[0xEB0] << 23) ^ 0x221C3AB70C000000) - ((2 * ((STACK[0xEB0] << 23) ^ 0x221C3AB70C000000)) & 0x9EDE49E40D000000) - 0x3090DB0DF90468CFLL) ^ STACK[0xEB0];
  v6 = v5 ^ (v5 >> 17) ^ STACK[0xEE0] ^ (STACK[0xEE0] >> 26);
  v7 = v6 ^ v4 ^ 0x22F5956558DFCC89;
  v8 = (((STACK[0xEE0] << 23) ^ 0xAD5CB3DEAD800000) - ((2 * ((STACK[0xEE0] << 23) ^ 0xAD5CB3DEAD800000)) & 0xFF60F2841A000000) + 0x7FB079420D7C44E7) ^ STACK[0xEE0];
  v9 = v8 ^ (v6 >> 26) ^ (v8 >> 17) ^ v7;
  v10 = v7 ^ (((v6 << 23) ^ 0x6EF0D086CD800000) - ((2 * ((v6 << 23) ^ 0x6EF0D086CD800000)) & 0x69F791EDEF000000) - 0x4B043709085B1938);
  v11 = (v10 >> 17) ^ v10 ^ (v9 >> 26) ^ v9 ^ 0xB6E94B9D;
  v12 = (((STACK[0xEC8] << 23) ^ 0xC2F6A07DE6000000) - ((2 * ((STACK[0xEC8] << 23) ^ 0xC2F6A07DE6000000)) & 0x3BF9111B06000000) + 0x1DFC888D8371FAFBLL) ^ STACK[0xEC8];
  v13 = v12 ^ (v12 >> 17) ^ STACK[0xEE8] ^ (STACK[0xEE8] >> 26);
  v14 = (((STACK[0xEE8] << 23) ^ 0x41510A4216800000) - ((2 * ((STACK[0xEE8] << 23) ^ 0x41510A4216800000)) & 0x16636230F8000000) - 0x74CE4EE783EACBE7) ^ STACK[0xEE8];
  v15 = v13 ^ 0x3E096787CAA9C542 ^ (v13 >> 26) ^ v14 ^ (v14 >> 17);
  v16 = (((v13 << 23) ^ 0x7D08E40955000000) - ((2 * ((v13 << 23) ^ 0x7D08E40955000000)) & 0x613668CE48000000) - 0x4F64CB98DBBEBED1) ^ v13 ^ 0x3E096787CAA9C542;
  v17 = v16 ^ (v16 >> 17) ^ (v15 >> 26) ^ v15 ^ 0x6FF41F9A685CAB59;
  LODWORD(v14) = v17 ^ 0x3B065580;
  v18 = (((v9 << 23) ^ 0xE3ADD2495C000000) - ((2 * ((v9 << 23) ^ 0xE3ADD2495C000000)) & 0x5D27D04045000000) - 0x516C17DFDD423DDCLL) ^ v9 ^ 0x50405342B6E94B9DLL;
  v19 = v17 ^ 0xA8E3987F3B065580 ^ (v17 >> 26) ^ v18 ^ (v18 >> 17);
  LODWORD(v6) = ((2 * v6) & 0x64F9FBCC ^ 0x40401B04) + (v6 ^ 0x53DDF07D);
  LODWORD(v18) = (STACK[0xEE0] ^ 0xB967BD5B) + 1300431386 + v6;
  v20 = ((2 * v9) & 0xEFFBFF98 ^ 0xA7492510) + (v9 ^ 0x2C596D74);
  LODWORD(v6) = ((v18 - (v3 & (2 * v18)) + 70) ^ 0xFFFFFFBD) + ((2 * (v18 - (v3 & (2 * v18)) + 70)) & 0xFFFFFFF7 ^ 0xFFFFFF84) + ((v20 + v6 - ((2 * (v20 + v6) - 100) & 0x80) - 114) ^ 0x40) + 5;
  LODWORD(v6) = ((v20 + (v11 ^ 0xC782EF27) - 2013134796 - ((2 * (v20 + (v11 ^ 0xC782EF27) - 2013134796)) & 0x50) + 40) ^ 0x28) + (v6 ^ 0x7B) + ((2 * v6) & 0xFFFFFFF7) - 123;
  LODWORD(v18) = ((2 * v17) & 0x7FBFFFAE ^ 0x20120C02) + (v17 ^ 0x6FD6F9FE);
  v21 = ((2 * v19) & 0xB17CDBB4) + (v19 ^ 0x1CC387E);
  v22 = v6 - ((2 * v6) & 0x2E);
  LODWORD(v6) = v21 + v18 - ((2 * (v21 + v18) + 1321411742) & 0x62E5FD38) + 416583915;
  LODWORD(v13) = ((2 * v13) & 0xDEF79F9E ^ 0x2900514) + (v13 ^ 0xFEB3DD65);
  v23 = (STACK[0xEE8] ^ 0xA214842D) + 277098545 + v13;
  v24 = ((2 * v15) & 0xDFDDFBF8 ^ 0xDB0568B0) + (v15 ^ 0x927D4BA4);
  v25 = ((((2 * v23) & 0xF8) - v23 - 125) ^ 0xFFFFFFFC) + ((2 * (((2 * v23) & 0xF8) - v23 - 125)) ^ 6) + ((((v24 + v13 - ((2 * (v24 + v13) + 106) & v2) + 3) ^ 0x17) - 32) ^ 0xFFFFFFB9) - 127;
  LODWORD(v18) = (v25 ^ 0xFFFFFFEF) + ((2 * v25) & 0xFFFFFFDF) + ((v18 + v24 - ((2 * (v18 + v24) + 90) & 0x46) + 80) ^ 0x23) + 17;
  v26 = v18 - ((2 * v18) & 0xFFFFFFB6) - 37;
  LODWORD(v18) = (v26 ^ 0xAD0082F1) - ((2 * (v26 ^ 0xDB)) & 0x1AA) + (v6 ^ 0x9C) + 1392475606;
  LODWORD(v18) = (v18 ^ 0x77FF779B) + 2 * ((v22 - 105) ^ 0x97) + ((v22 - 105) ^ 0x9EAFF868) + ((2 * v18) & 0xEFFEEF36);
  v27 = v18 + 1677118582 + ((761192754 - 2 * v18) | 0xAB385E1);
  LODWORD(STACK[0xEE8]) = 2 * v27;
  v28 = (v27 & 0x7F ^ 0xEDF5DBB0) + 2078013309 + ((2 * v27) & 0x7E ^ 0x1E);
  v29 = v26 ^ v6 ^ (v22 - 105) ^ ((((v22 - 105) ^ v26) & 0xF8) >> 3) ^ 0xFFFFFFD9;
  v30 = (v29 ^ 0x5FEE63FF) + 2 * v29;
  LODWORD(STACK[0xEC8]) = v30 + 1;
  v31 = ((v30 + 1) & 0x7F ^ 0xEFF8FCFF) + 2 * ((v30 + 1) & 0x7F);
  LODWORD(STACK[0xEB0]) = 16843009 * v28;
  LODWORD(STACK[0xE38]) = 33686018 * v31;
  LODWORD(v13) = 33686018 * v31 + 907413506;
  LODWORD(STACK[0xC70]) = v13;
  LODWORD(v18) = v13 & 0x66C2D5F0;
  LODWORD(v13) = 16843009 * v31 - 831754503;
  LODWORD(STACK[0xA68]) = v13;
  LODWORD(v13) = v13 - v18;
  LODWORD(STACK[0xC6C]) = v13;
  v32 = 16843009 * v28 + 382120409 * (v28 - v31) + (v13 ^ 0x4C9E9507) - 1250623036;
  LODWORD(STACK[0xDE8]) = v31;
  LODWORD(STACK[0xE88]) = (v32 ^ 0x7E6FBC5F) + 217681857 * (v31 - v28);
  v33 = (((v17 << 23) ^ 0xF5E8048314800000) - ((2 * ((v17 << 23) ^ 0xF5E8048314800000)) & 0x92BA39DB8E000000) - 0x36A2E31238E41033) ^ v17 ^ 0xA8E3987F3B065580;
  v34 = v33 ^ (v33 >> 17) ^ (v19 >> 26) ^ v19 ^ 0x1F1004F66918C162;
  v35 = ((v19 << 23) - ((v19 << 24) & 0xD4980036A3000000) + 0x6A4C001B518B9883) ^ v19 ^ 0x1F1004F66918C162;
  v36 = v34 ^ v35 ^ (v34 >> 26) ^ (v35 >> 17);
  v37 = v17 ^ v11 ^ 0x7D2D2D1C;
  v38 = (v36 ^ 0x9EE1DB9298DB3875) + (v34 ^ 0x2BD86E3778B8491ELL);
  v39 = (2 * v38) & 0xD3F61A6B6B51B082;
  v38 -= 0x1604F2CA4A5727BFLL;
  v40 = v38 - v39;
  v41 = ((((v38 << 7) ^ 0x80) - 46) & 0x80 | (v40 >> 1)) ^ 0xA0;
  LODWORD(v41) = *(STACK[0xEC0] + ((v41 - 0x1D8D2CEAEA89184CLL - 2 * (v41 & 0xFFFFFFFFFFFFFFF7 ^ (v40 >> 1) & 4) + 63) ^ 0xE272D3151576E7B4));
  HIDWORD(v42) = v41 ^ 0x15;
  LODWORD(v42) = (v41 ^ 0x80) << 24;
  LODWORD(v41) = (((v42 >> 30) - ((2 * (v42 >> 30)) & 0x62) + 49) ^ 0xFFFFFFA3) - 41;
  LODWORD(v41) = (v41 ^ 0x75) + ((2 * v41) & 0xEA) - 117;
  LODWORD(v41) = (((8 * (v11 ^ v14)) ^ 0x646DE470) - 2 * (((8 * (v11 ^ v14)) ^ 0x646DE470) & 0x15A39FF8 ^ (8 * (v11 ^ v14)) & 8) + 363044852) ^ (v41 - ((2 * v41) & 0x38) + 1607391004);
  LODWORD(STACK[0xE78]) = v41;
  v43 = v37 ^ v41;
  v44 = (((v37 ^ v41) ^ 0xFD) + 1) & 7;
  v45 = (v37 ^ v41) & 7;
  LODWORD(STACK[0xE80]) = v45;
  if (v45 == 2)
  {
    v46 = 0;
  }

  else
  {
    v46 = 255;
  }

  LODWORD(STACK[0xE70]) = v44;
  v47 = (v46 << v44) - ((2 * (v46 << v44)) & 0xAB2E);
  v48 = ((2 * v34) & 0xF9FFFBFE ^ 0xF170923C) + (v34 ^ 0x8447B4E1);
  v49 = v48 + 50332161 + (v36 ^ 0x98DB3875) - ((2 * (v48 + 50332161 + (v36 ^ 0x98DB3875))) & 0xF4);
  if (v45 == 2)
  {
    v50 = 0;
  }

  else
  {
    v50 = (v47 - 105) ^ a2;
  }

  v51 = v49 + 250;
  LODWORD(STACK[0xE60]) = v51;
  LODWORD(STACK[0xE48]) = v51;
  v52 = v37 ^ v51;
  v53 = ((v37 ^ v51) - 1) & 7;
  LODWORD(STACK[0xE68]) = v53;
  v54 = v53 ^ 7;
  if ((v52 & 7) != 0)
  {
    v55 = -1;
  }

  else
  {
    v55 = 0;
  }

  v56 = (v55 << v54) - ((2 * (v55 << v54)) & 0x76) + 59;
  v57 = (v56 ^ 0xC4) - ((2 * (v56 ^ 0xC4)) & 0x82);
  STACK[0xF40] = &STACK[0x2070];
  v58 = (v56 ^ 0x3FEF36C4) + 2 * (v56 ^ 0x3B);
  v59 = (v48 + v21 - ((2 * (v48 + v21) + 78) & 0xDD) - 107);
  v60 = v59 ^ v9 ^ v15 ^ 0x685CAB59 ^ ((v9 ^ 0x50405342B6E94B9DLL ^ v15 ^ 0x6FF41F9A685CAB59) >> 8);
  v61 = ((-687865856 * v58 - ((771751936 * v58 + 771751936) & 0x7A000000) - 1802398514) ^ 0xBD9194CE) & (v60 ^ 0x18000000);
  LODWORD(STACK[0xE50]) = v61 - ((2 * v61) & 0x96000000) + 1269490590;
  v62 = 16843009 * v58 - ((33686018 * v58 + 901092354) & 0x78264BA0) - 689049647;
  v63 = (v57 - 580306367) ^ 0xDD693A41;
  LODWORD(STACK[0xE40]) = v52 & 7;
  if ((v52 & 7) == 0)
  {
    v63 = 0;
  }

  v64 = (v63 & (v27 ^ 0x7AA63D0F)) - ((2 * (v63 & (v27 ^ 0x7AA63D0F))) & 0x3E9E2AF6);
  v65 = (v60 ^ 0x18130D13) + (((v27 ^ 0x7AA63D0F) + 1064723999) ^ 0xABEFD7FD) + ((2 * ((v27 ^ 0x7AA63D0F) + 1064723999)) & 0x57DFAFFA) + 1410344963 - ((2 * ((v60 ^ 0x18130D13) + (((v27 ^ 0x7AA63D0F) + 1064723999) ^ 0xABEFD7FD) + ((2 * ((v27 ^ 0x7AA63D0F) + 1064723999)) & 0x57DFAFFA) + 1410344963)) & 0xACBFD6D0) + 1449126760;
  v66 = (v65 ^ BYTE1(v65) ^ BYTE2(v65)) ^ HIBYTE(v65) ^ 0xD1;
  v67 = 16843009 * v66 - ((33686018 * v66) & 0xD88671A0) - 331138864;
  v68 = ((315749514 * (v15 ^ 0xFD93B658)) & 0x2CEFDCFE) + ((694745669 * (v15 ^ 0xFD93B658)) ^ 0x9677EE7F) + 1770525057 + (v59 ^ 0x6E);
  v69 = ((-694745669 * (v9 ^ 0x5BA492B8)) ^ 0x6FAEF7BB) + ((-1389491338 * (v9 ^ 0x5BA492B8)) & 0xDF5DEF76) + (v68 ^ 0x3AFF7DEC) + ((2 * v68) & 0x75FEFBD8);
  v70 = v69 - ((2 * v69 + 715330738) & 0x7C465506) - 1821068068;
  v71 = ((2 * (v47 + 410342807)) & 0x1E4 ^ 0x124) + ((v47 - 105) ^ 0xFFF67F65);
  v72 = (v70 ^ 0x3E000000) & ((-754974720 * v71 - ((637534208 * v71 + 335544320) & 0x6E000000) + 1091372618) ^ 0xB70D064A);
  v73 = 16843009 * v71 - 2 * ((16843009 * v71 + 395808270) & 0x69E4921F ^ (16843009 * v71) & 1) + 24911916;
  v74 = (*(STACK[0xE98] + (((v29 & v50) + (~(2 * (v29 & v50)) | 0xD7) - 107) ^ 0x64)) ^ 0x49) + 100;
  v75 = (v74 ^ 0x7A) + ((2 * v74) & 0xF4) - 122;
  v76 = v75 - ((2 * v75) & 0x82) + 1780471361;
  v77 = v30 - 544734688 + (v70 ^ 0x3E232A83) - ((2 * (v30 - 544734688 + (v70 ^ 0x3E232A83))) & 0xBC51D66E) - 567743689;
  v78 = (v77 ^ BYTE1(v77) ^ BYTE2(v77)) ^ HIBYTE(v77) ^ 0x8F;
  v79 = 16843009 * v78 - ((33686018 * v78) & 0x6F37A858) - 1214524372;
  LODWORD(STACK[0xE20]) = (2 * v32) & 0xFCDF78BE;
  LODWORD(STACK[0xE28]) = v79 ^ 0x3A470804;
  LODWORD(STACK[0xEE0]) = v67 ^ 0x20AD6A42;
  v80 = (v67 ^ 0x20AD6A42 ^ v79 ^ 0x3A470804 ^ ((v67 ^ 0x20AD6A42 ^ v79 ^ 0x3A470804) >> 2) ^ 0xB64EBBE1) + (v67 ^ 0xB718638B);
  v81 = (v79 ^ 0xEDC18E76) + (v80 ^ 0xBB17F7FE) + ((2 * v80) & 0x762FEFFC) + 1156057091;
  LODWORD(STACK[0xE18]) = v81 - ((2 * v81) & 0xE357155A) - 240416083;
  LODWORD(STACK[0xA98]) = v67 ^ 0xB718638B;
  LODWORD(STACK[0xE00]) = v79;
  LODWORD(STACK[0x7F0]) = v79 ^ 0x123E7189;
  v82 = 1326404007 * (v79 ^ 0x123E7189) - ((-1642159282 * (v79 ^ 0x123E7189)) & 0xF406F29E) + 2047048015;
  v83 = STACK[0xEB0];
  v84 = v52 ^ 0x6AA6C4E8;
  v85 = ((-1306823474 * (v52 ^ 0x6AA6C4E8)) & 0xBFD4FCCA) + ((-653411737 * (v52 ^ 0x6AA6C4E8)) ^ 0xDFEA7E65) + 538280347 + (v62 ^ (v64 + 1599018363) ^ 0x635C30AB);
  v86 = 810793976 - (STACK[0xEC8] & 0x80);
  v87 = STACK[0xC6C];
  v88 = LODWORD(STACK[0xC6C]);
  v89 = (v88 ^ 0xF8) + (v86 ^ 0x3053BBF8);
  v90 = (v73 ^ 0x9006D73E ^ (v72 - ((2 * v72) & 0xC000000) + 102611679)) - v30 + 1609458687;
  v91 = (LOBYTE(STACK[0xEB0]) - 60) - ((2 * (LODWORD(STACK[0xEB0]) + 196)) & 0x90) - 1597245112;
  v92 = v27;
  v93 = v91 ^ v27 & 0xFFFFFF80;
  v94 = (v62 ^ 0x884639B1 ^ LODWORD(STACK[0xE50])) + (((LODWORD(STACK[0xEE8]) ^ 0xF54C7A1E) - ((2 * (LODWORD(STACK[0xEE8]) ^ 0xF54C7A1E)) & 0x2F4F9F8) - 2122679043) ^ 0x817A7CFD);
  v95 = (v93 ^ 0xDA6DC448) + (((v91 ^ 0xA0CBF948) + (v27 & 0xFFFFFF80 ^ 0x7AA63D00)) ^ 0x38ECDFED) + ((2 * ((v91 ^ 0xA0CBF948) + (v27 & 0xFFFFFF80 ^ 0x7AA63D00))) & 0x71D9BFDA) - 955047917;
  v96 = (v95 ^ 0xA8608450) - ((2 * v95) & 0xAF3EF75E) + (v94 ^ 0xE9F31FFE) + ((2 * v94) & 0xD3E63FFC) + 1;
  LODWORD(STACK[0xE30]) = (2 * v96 - 614942878) & 0xC0926A2E;
  v97 = v88 ^ v86;
  v98 = ((816565370 * (v43 ^ 0x20CB8CFA)) & 0xF85ED8CE) + ((-1739200963 * (v43 ^ 0x20CB8CFA)) ^ 0x7C2F6C67) - 2083482727 + (v76 ^ v73 ^ 0x3FB445F);
  v99 = ((1739200963 * (v43 ^ 0x20CB8CFA)) ^ 0x377FE7E9) + ((1330918278 * (v43 ^ 0x20CB8CFA)) & 0x6EFFCFD2) + (v98 ^ 0x7EFF7EFF) + ((2 * v98) & 0xFDFEFDFE);
  v100 = v99 - ((2 * v99 - 1828638160) & 0xDA77794A) - 1229171267;
  v101 = ((-227855039 * v84) ^ 0xBBDEB77F) + ((1691773570 * v84) & 0x77BD6EFE) + ((455710078 * v84) & 0xFDFEEBAE) + ((227855039 * v84) ^ 0x7EFF75D7) + ((1306823474 * v84) & 0xAD5DFFB8) + ((653411737 * (v52 ^ 0x6AA6C4E8)) ^ 0xD6AEFFDC) + (v85 ^ 0x7FFD7BF6) + ((2 * v85) & 0xFFFAF7EC);
  v102 = (645871595 * v30 - ((218001366 * v30 + 106616790) & 0x38D573D6) + 1603806678) ^ (v30 - 1609458687) ^ v97 ^ (645871595 * (v97 ^ 0x3053BB00) - ((1291743190 * (v97 ^ 0x3053BB00)) & 0x7F0FF8FA) - 1081607043) ^ (((2 * v89) & 0x76F7DA7A) + (v89 ^ 0x3B7BED3D) + (v90 ^ 0xFDE767FB) + ((2 * v90) & 0xFBCECFF6) - 2 * ((((2 * v89) & 0x76F7DA7A) + (v89 ^ 0x3B7BED3D) + (v90 ^ 0xFDE767FB) + ((2 * v90) & 0xFBCECFF6) + 1184672456) & 0x5FD4B84B ^ (((2 * v89) & 0x76F7DA7A) + (v89 ^ 0x3B7BED3D) + (v90 ^ 0xFDE767FB)) & 1) - 1502518510);
  LODWORD(STACK[0xE50]) = v102;
  v103 = (v102 ^ 0x4C6A46DC) - ((2 * (v102 ^ 0x4C6A46DC)) & 0x95DA3798);
  LODWORD(STACK[0xDF0]) = (v92 ^ 0x8559C2F0) + v30 + v83 - 1854754613;
  v104 = (v65 ^ 0xBD9F53FB) - ((1326404007 * (v67 ^ 0xB718638B) - ((-1642159282 * (v67 ^ 0xB718638B)) & 0xCA5A274E) + 1697452967) ^ v82 ^ 0xEE85E045 ^ LODWORD(STACK[0xE18]));
  LODWORD(STACK[0xDE0]) = LODWORD(STACK[0xE88]) + LODWORD(STACK[0xE20]) + (v104 ^ 0x70EF9DFB) + ((2 * v104) & 0xE1DF3BF6) - 977317802;
  LODWORD(STACK[0xE08]) = v101 - ((2 * v101 + 485141936) & 0x322B8CCE) - 2020926145;
  v105 = STACK[0xDF8] - 782080151;
  v106 = STACK[0xDF8] < 0x66529085;
  LODWORD(STACK[0xEB0]) = (v4 - 335284070) & 0x13FBEDFE;
  LODWORD(STACK[0xDF8]) = v96 - 839544632;
  LODWORD(STACK[0xE80]) = v92;
  LODWORD(STACK[0xE48]) = v93;
  LODWORD(STACK[0xE20]) = (v93 ^ v92) >> 3;
  LODWORD(STACK[0xE10]) = v100;
  STACK[0xE68] = v100 ^ 0x6D3BBCA5;
  v107 = *(STACK[0xED0] + 8 * ((25608 * v106) ^ v105));
  LODWORD(STACK[0xEC8]) = v87 ^ 0xB3616AF8;
  LODWORD(STACK[0xD30]) = v67;
  LODWORD(STACK[0xE18]) = v103 + 1257053132;
  STACK[0xE60] = (v103 + 1257053132) ^ 0x4AED1BCC;
  return v107(v67 ^ 0x8B, 1749845000, 1513207882, 38400, 42183, 237, 150, 3499690000);
}

uint64_t sub_24491F1D8@<X0>(char a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, __int16 a5@<W4>, unint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, int a9@<W8>)
{
  v22 = *(*(v17 + 8 * v12) + 2 * (v13 ^ (a2 + 173)) - 8);
  HIDWORD(v23) = v22 ^ v16;
  LODWORD(v23) = (v22 ^ a4) << 16;
  v24 = (((v23 >> 21) ^ a5) + a3 - ((LODWORD(STACK[0xEB0]) ^ v18) & (2 * ((v23 >> 21) ^ a5)))) ^ a3;
  v25 = v13 ^ a2;
  v26 = v13 ^ (2 * ((v13 ^ a2) & STACK[0xEC8])) ^ 8;
  v27 = (((v24 ^ (2 * (v24 & v9))) & STACK[0xE60]) << v21) + (((v24 ^ (2 * (v24 & v9))) & STACK[0xE68]) >> v20);
  v28 = *(STACK[0xED8] + (((((v26 & v11) >> v20) | (v26 << v19)) - 61) ^ a6));
  HIDWORD(v23) = ~v28;
  LODWORD(v23) = (v28 ^ a7) << 24;
  v29 = ((a2 + v25 - ((2 * v25 + 2) & a8) + 1) ^ (a2 - 8)) < 0x100;
  *(v14 + 4 * (a1 ^ (v23 >> 25))) = (v27 + v10 - (a9 & (2 * v27))) ^ LODWORD(STACK[0xEE0]);
  return (*(STACK[0xED0] + 8 * ((4 * ((v29 | (2 * v29)) == 0)) | (8 * ((v29 | (2 * v29)) == 0)) | v15)))();
}

uint64_t sub_2449316A8@<X0>(int a1@<W1>, unsigned int a2@<W8>)
{
  v8 = STACK[0xEE8];
  v9 = *(STACK[0xE98] + ((v5 - ((v4 + (v2 ^ 0x29)) & 0xBA)) ^ 0x2DLL)) ^ 0x49;
  *(&STACK[0x1E50] + v8) = *(v3 + LODWORD(STACK[0xEE8])) ^ 0x39 ^ (v9 - 2 * ((v9 + 100) & 0x79 ^ v9 & 1) + 92);
  v10 = v8 + 1;
  LODWORD(STACK[0xEE8]) = v10;
  if (v6 < 0x7EF1F15E != v10 + a2 < a2)
  {
    v11 = v6 < 0x7EF1F15E;
  }

  else
  {
    v11 = v10 + a2 < v7;
  }

  return (*(STACK[0xED0] + 8 * ((!v11 * a1) ^ v2)))();
}

uint64_t sub_24493193C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = 6 * (v6 ^ 0x29DD1AD6);
  LODWORD(STACK[0x938]) = LODWORD(STACK[0x930]) - LODWORD(STACK[0x938]);
  v8 = *(STACK[0xED0] + 8 * (v6 ^ 0x29DD1DA0 ^ (2928 * (v6 > (v7 ^ 0x90617CD1)))));
  LODWORD(STACK[0xEB0]) = (v7 - 571516953) & 0xEAD8EEFF;
  return v8(2684080856, 2952926868, 36280, 402571245, 1673159807, a6, 805142490, 3892396051);
}

uint64_t sub_244931A5C()
{
  v5 = (v0 - ((2 * v0 + 62) & 0x38) + 59) ^ 0x1C;
  *(&STACK[0x1E50] + (v0 - 1935658209)) = *(v1 + (v0 - 1935658209)) ^ 0xC5 ^ (31 * v5 - ((-2 * v5) & 8) + 4);
  v6 = *(STACK[0xED0] + 8 * ((((v0 & 0xFFFFFFF0) == v2) * v4) ^ v3));
  ++LODWORD(STACK[0xEE8]);
  return v6();
}

uint64_t sub_244931C84()
{
  v2 = LODWORD(STACK[0xB40]) ^ LODWORD(STACK[0xB38]);
  LODWORD(STACK[0xB40]) = LODWORD(STACK[0x948]) + LODWORD(STACK[0x940]);
  v3 = STACK[0xA38];
  v4 = STACK[0xBCC];
  v5 = STACK[0x950];
  LODWORD(STACK[0x578]) = LODWORD(STACK[0xBCC]) ^ LODWORD(STACK[0xA38]) ^ LODWORD(STACK[0x950]) ^ LODWORD(STACK[0xC60]) ^ LODWORD(STACK[0x938]) ^ 0x9C2DBCD5;
  v6 = (((v1 ^ 0x6AA37B25) - ((v1 >> 13) ^ 0x3551B)) ^ 0xB3D4FE7B) + 1277886853 + (((5 * (LODWORD(STACK[0xEB0]) ^ 0xC8C8463E)) ^ 0x67A9C914) & (2 * ((v1 ^ 0x6AA37B25) - ((v1 >> 13) ^ 0x3551B))));
  v7 = (((v6 >> 5) - ((v6 >> 4) & 0xE3394EA) - 417740171) ^ 0xE719CA75) + v6;
  v8 = ((2 * v7) & 0xF8FFFDF6) + (v7 ^ 0x7C7FFEFB);
  v9 = v8 - 752277777 + ((((v8 - 752277777) >> 8) - (((v8 - 752277777) >> 7) & 0x12D1A68) - 694776524) ^ 0x296972CB) + 1;
  v10 = ((2 * v9) & 0xF68777FE) + (v9 ^ 0x7B43BBFF) - 2068036607;
  v11 = v10 + (((v10 >> 5) - ((v10 >> 4) & 0xDC1520) + 812518032) ^ 0xCF91F56F) + 1;
  v12 = ((2 * v11) & 0xF5D7FF38) + (v11 ^ 0x7AEBFF9C);
  v13 = ((((v12 - 1473140496) >> 13) - (((v12 - 1473140496) >> 12) & 0x352A8) - 2136889004) ^ 0x80A1A954) + v12 - 1473140496;
  v14 = (v13 ^ 0x7FAF75FA) - 2142205434 + ((2 * v13) & 0xFF5EEBF4);
  v15 = (((v14 >> 8) - ((v14 >> 7) & 0x6DD690) + 1664543560) ^ 0x6336EB48) + v14;
  v16 = ((v0 ^ 0xEC820230 ^ (v8 - 2088763131)) - ((2 * (v0 ^ 0xEC820230 ^ (v8 - 2088763131))) & 0x4F1AB09E) + 663574607) ^ 0x278D584F ^ (v12 - 2062286748);
  v17 = ((2 * v15) & 0xF3F35BFC) + (v15 ^ 0xF9F9ADFE) + 101077506;
  LODWORD(STACK[0xB38]) = v17;
  v18 = (v16 - ((2 * v16) & 0x1C7B035A) + 238911917) ^ 0xE3D81AD ^ v17;
  v19 = STACK[0xCB0];
  v20 = STACK[0xC00];
  v21 = STACK[0xCC8];
  v22 = STACK[0xD40];
  v23 = STACK[0xC08];
  v24 = STACK[0xD50];
  v25 = STACK[0xC10];
  v26 = STACK[0xCE0];
  v27 = STACK[0xCF0];
  v28 = STACK[0xBA0];
  v29 = STACK[0xB7C];
  v30 = STACK[0xB28];
  v31 = STACK[0xBE8];
  v32 = LODWORD(STACK[0xDA8]) ^ LODWORD(STACK[0xD88]) ^ LODWORD(STACK[0xC1C]) ^ LODWORD(STACK[0xD10]) ^ LODWORD(STACK[0xDA0]) ^ LODWORD(STACK[0xCA0]) ^ v19 ^ v20 ^ LODWORD(STACK[0xCC0]) ^ LODWORD(STACK[0xCB8]) ^ v21 ^ LODWORD(STACK[0xDC0]) ^ LODWORD(STACK[0xD38]) ^ v22 ^ LODWORD(STACK[0xC08]) ^ LODWORD(STACK[0xDB8]) ^ LODWORD(STACK[0xD50]) ^ LODWORD(STACK[0xD48]) ^ LODWORD(STACK[0xC10]) ^ LODWORD(STACK[0xD58]) ^ LODWORD(STACK[0xDC8]) ^ LODWORD(STACK[0xDD8]) ^ LODWORD(STACK[0xDD0]) ^ LODWORD(STACK[0xCD0]) ^ LODWORD(STACK[0xCD8]) ^ LODWORD(STACK[0xCE0]) ^ LODWORD(STACK[0xD70]) ^ LODWORD(STACK[0xD60]) ^ LODWORD(STACK[0xD80]) ^ LODWORD(STACK[0xD78]) ^ LODWORD(STACK[0xCF0]) ^ LODWORD(STACK[0xDE8]) ^ LODWORD(STACK[0xD68]) ^ LODWORD(STACK[0xD08]) ^ LODWORD(STACK[0xD90]) ^ LODWORD(STACK[0xCE8]) ^ LODWORD(STACK[0xDE0]) ^ LODWORD(STACK[0xB20]) ^ LODWORD(STACK[0xBB8]) ^ LODWORD(STACK[0xB08]) ^ LODWORD(STACK[0xA60]) ^ LODWORD(STACK[0xBC0]) ^ LODWORD(STACK[0xAC0]) ^ LODWORD(STACK[0xC28]) ^ LODWORD(STACK[0xAA8]) ^ LODWORD(STACK[0xB80]) ^ LODWORD(STACK[0xAC8]) ^ LODWORD(STACK[0xB88]) ^ LODWORD(STACK[0xB98]) ^ LODWORD(STACK[0xB90]) ^ LODWORD(STACK[0xA48]) ^ LODWORD(STACK[0xB10]) ^ LODWORD(STACK[0xBD8]) ^ LODWORD(STACK[0xC90]) ^ LODWORD(STACK[0xAD0]) ^ LODWORD(STACK[0xB70]) ^ v28 ^ LODWORD(STACK[0xB7C]) ^ LODWORD(STACK[0xBE0]) ^ LODWORD(STACK[0xB28]) ^ LODWORD(STACK[0xBE8]) ^ LODWORD(STACK[0xC98]) ^ LODWORD(STACK[0xA58]) ^ LODWORD(STACK[0xBA8]) ^ LODWORD(STACK[0xAD8]) ^ LODWORD(STACK[0xAE8]) ^ LODWORD(STACK[0xC88]);
  v33 = STACK[0xB18];
  v34 = STACK[0xAF0];
  v35 = STACK[0xAB0];
  v36 = v32 ^ LODWORD(STACK[0xBD0]) ^ LODWORD(STACK[0xB18]) ^ LODWORD(STACK[0xAE0]) ^ LODWORD(STACK[0xC80]) ^ LODWORD(STACK[0xAF0]) ^ LODWORD(STACK[0xC84]) ^ LODWORD(STACK[0xAB0]);
  v37 = STACK[0xD00];
  v38 = STACK[0xBF0];
  v39 = LODWORD(STACK[0xBF8]) ^ v4 ^ v5;
  v40 = STACK[0xAB8];
  v41 = LODWORD(STACK[0xD2C]) ^ LODWORD(STACK[0xCFC]) ^ LODWORD(STACK[0xD00]) ^ LODWORD(STACK[0xD98]) ^ v2 ^ LODWORD(STACK[0xBF0]) ^ v39 ^ LODWORD(STACK[0xAB8]);
  v42 = STACK[0xC20];
  v43 = STACK[0xB00];
  v44 = STACK[0xAF8];
  v45 = v41 ^ LODWORD(STACK[0xC20]) ^ LODWORD(STACK[0xC7C]) ^ LODWORD(STACK[0xAA0]) ^ LODWORD(STACK[0xB00]) ^ LODWORD(STACK[0xAF8]) ^ LODWORD(STACK[0xBB4]) ^ 0x32CE1D0E;
  v46 = ((v18 - ((2 * v18) & 0x3B3559C) - 2116441394) ^ 0x8E3262C8) - 2 * (((v18 - ((2 * v18) & 0x3B3559C) - 2116441394) ^ 0x8E3262C8) & 0xFBD89C ^ (v18 - ((2 * v18) & 0x3B3559C) - 2116441394) & 4) + 16504984;
  LODWORD(STACK[0xEE8]) = v46;
  v47 = v36 ^ v46;
  LODWORD(STACK[0x794]) = v47;
  v48 = v3 ^ 0x1F237D9B ^ ((v45 ^ v47) - ((2 * (v45 ^ v47)) & 0x3E46FB36) + 522419611);
  LODWORD(STACK[0x568]) = v48 - ((2 * v48) & 0x7D5E93C8) + 1051675108;
  v49 = (v30 ^ 0x92262C2 ^ (LODWORD(STACK[0xA20]) - (STACK[0xA08] & 0xA06D14A8) - 801732012)) + LODWORD(STACK[0xA0C]);
  v50 = (v23 ^ 0xB1DB246B ^ (v49 - ((2 * v49) & 0x733B8288) - 1180843708)) - LODWORD(STACK[0xA1C]);
  v51 = (v25 ^ 0x4254C745 ^ (v50 - ((2 * v50) & 0x8B0381E8) - 981352204)) + LODWORD(STACK[0xA10]);
  v52 = LODWORD(STACK[0xA30]) + (v51 ^ 0x77D5FF7D) + ((2 * v51) & 0xEFABFEFA) - 2010513276;
  v53 = (v22 ^ v20 ^ 0x5C440172 ^ (v52 - ((2 * v52) & 0xF57CB128) - 88188780)) + LODWORD(STACK[0x958]);
  v54 = LODWORD(STACK[0x960]) + (v53 ^ 0x89A177DF) + ((2 * v53) & 0x1342EFBE) + 1985906721;
  v55 = LODWORD(STACK[0x968]) + (v54 ^ 0x5DED47FF) + ((2 * v54) & 0xBBDA8FFE) - 1575831551;
  v56 = LODWORD(STACK[0xA88]) + (v55 ^ 0xBFEDD4C7) + ((2 * v55) & 0x7FDBA98E) + 1074932537;
  v57 = LODWORD(STACK[0x970]) + (v56 ^ 0x71EF53FF) + ((2 * v56) & 0xE3DEA7FE) - 1911510015;
  v58 = (v21 ^ 0xEEC2F488) + (((v35 ^ 0x2186B44B) + (v37 ^ 0x3F2C064E)) ^ 0x6BFFB9FF) + ((2 * ((v35 ^ 0x2186B44B) + (v37 ^ 0x3F2C064E))) & 0xD7FF73FE) - 1811921407;
  v59 = (v58 ^ 0x89CA0048) - ((2 * v58) & 0xEC6BFF6E) + 1983250360 + (v26 ^ v43 ^ 0x2A8FE11E ^ (v57 - ((2 * v57) & 0xA5C02B2E) - 757066345));
  v60 = LODWORD(STACK[0x988]) + (v59 ^ 0x7FBBECFB) + ((2 * v59) & 0xFF77D9F6) - 2143022331;
  v61 = LODWORD(STACK[0x978]) + (v60 ^ 0xEEBFCE7F) + ((2 * v60) & 0xDD7F9CFE) + 289419649;
  v62 = LODWORD(STACK[0x990]) + (v61 ^ 0xBA57B1BF) + ((2 * v61) & 0x74AF637E) + 1168657986;
  v63 = (v27 ^ 0xD1EE5DD3 ^ (v62 - ((2 * v62) & 0xC35551A) + 102410893)) - LODWORD(STACK[0x99C]);
  v64 = (v24 ^ v29 ^ v40 ^ 0x8E03CFA2 ^ (v63 - ((2 * v63) & 0xC7AD1D2C) - 472478058)) + LODWORD(STACK[0x984]);
  v65 = LODWORD(STACK[0xA50]) + (v64 ^ 0xFDF6DFFF) + ((2 * v64) & 0xFBEDBFFE) + 34152449;
  v66 = (v19 ^ 0xAEBCBCC9) + (((v28 ^ 0x44151050) + (v33 ^ 0xCAE85E24)) ^ 0x7C79FBE7) + ((2 * ((v28 ^ 0x44151050) + (v33 ^ 0xCAE85E24))) & 0xF8F3F7CE) - 2088369127;
  v67 = LODWORD(STACK[0x9E8]) + (v66 ^ 0x91203302) - ((2 * v66) & 0xDDBF99FA) + (v65 ^ 0x7DB37FA7) + ((2 * v65) & 0xFB66FF4E) - 248754857;
  v68 = (LODWORD(STACK[0xBCC]) ^ 0xC32BD882 ^ (v67 - ((2 * v67) & 0x53102C20) + 696784400)) + LODWORD(STACK[0x9C0]);
  v69 = LODWORD(STACK[0x9F8]) + (v68 ^ 0x6A93FDFA) + ((2 * v68) & 0xD527FBF4) - 1788083706;
  v70 = LODWORD(STACK[0x9FC]) + (((LODWORD(STACK[0xC60]) ^ 0xE31CA554) + (LODWORD(STACK[0xDC0]) ^ 0xEEC2F488)) ^ 0x22250276) - ((2 * ((LODWORD(STACK[0xC60]) ^ 0xE31CA554) + (LODWORD(STACK[0xDC0]) ^ 0xEEC2F488))) & 0xBBB5FB12) + (v69 ^ 0x7BFFDF7D) + ((2 * v69) & 0xF7FFBEFA) + 1641750029;
  v71 = LODWORD(STACK[0xA00]) + (v70 ^ 0x76F6FF7F) + ((2 * v70) & 0xEDEDFEFE) - 1995898751;
  v72 = (v38 ^ LODWORD(STACK[0xDB8]) ^ LODWORD(STACK[0xDD8]) ^ v34 ^ 0x83CA9C03 ^ (v71 - ((2 * v71) & 0xDA2E66CC) + 1830237030)) + LODWORD(STACK[0x9F0]);
  v73 = (v72 - 652941162 - ((2 * v72) & 0xB229D12C)) ^ v31;
  v74 = ((v73 + 633734701 - ((2 * v73) & 0x4B8C0C5A)) ^ v44) - LODWORD(STACK[0x9E4]);
  v75 = (v74 - 890741212 - ((2 * v74) & 0x95D0BC48)) ^ LODWORD(STACK[0xC88]);
  v76 = (v75 + 299459947 - ((2 * v75) & 0x23B2CAD6)) ^ LODWORD(STACK[0xBB8]);
  v77 = ((v76 - 1143938366 - ((2 * v76) & 0x77A1C584)) ^ LODWORD(STACK[0xC90])) + LODWORD(STACK[0x9D8]);
  v78 = LODWORD(STACK[0xB40]) - ((-562476108 - v77 + ((2 * v77) & 0x430D6896)) ^ v42);
  v79 = ((v78 - ((2 * v78 + 1959599604) & 0x7E580C9C) - 1181575864) ^ LODWORD(STACK[0xDE0])) + LODWORD(STACK[0x9E0]);
  v80 = ((v79 + 633734701 - ((2 * v79) & 0x4B8C0C5A)) ^ LODWORD(STACK[0xBB4])) - LODWORD(STACK[0x9D4]);
  v81 = ((v80 + 1395197880 - ((2 * v80) & 0xA6520F70)) ^ LODWORD(STACK[0xDD0])) + LODWORD(STACK[0x9C8]);
  v82 = ((v81 + 562476107 - ((2 * v81) & 0x430D6896)) ^ LODWORD(STACK[0xC7C])) + LODWORD(STACK[0xA5C]);
  v83 = ((v82 + 578752738 - ((2 * v82) & 0x44FE21C4)) ^ LODWORD(STACK[0xC80])) + LODWORD(STACK[0x9B0]);
  LODWORD(STACK[0xAA0]) = LODWORD(STACK[0xC60]) ^ 0x188890C6;
  v84 = ((v83 + 578752738 - ((2 * v83) & 0x44FE21C4)) ^ LODWORD(STACK[0xC84])) + LODWORD(STACK[0x9B8]);
  v85 = (v84 - 2016081999 - ((2 * v84) & 0xFAA0F62)) ^ LODWORD(STACK[0xDC8]);
  v86 = ((v85 - 671811746 - ((2 * v85) & 0xAFE9EEBC)) ^ LODWORD(STACK[0xDE8])) + LODWORD(STACK[0x9A8]);
  v87 = ((v86 - 652941162 - ((2 * v86) & 0xB229D12C)) ^ LODWORD(STACK[0xC98])) + LODWORD(STACK[0x9A0]);
  LODWORD(STACK[0x510]) = (2 * v87) & 0xC777DEAC;
  LODWORD(STACK[0x508]) = v87 + 1673260886;
  return (*(STACK[0xED0] + 8 * ((23111 * (LODWORD(STACK[0xEB0]) < 0xA60B1B77)) ^ (LODWORD(STACK[0xEB0]) + 926411051))))(2074350515);
}

uint64_t sub_244932BEC@<X0>(int a1@<W0>, uint64_t a2@<X2>, int a3@<W3>, unint64_t a4@<X4>, unsigned int a5@<W5>, uint64_t a6@<X6>, uint64_t a7@<X7>, int a8@<W8>)
{
  v24 = *(STACK[0xEC0] + (v10 & 0xBFFE3EB5 ^ 0xBEB83CD2 ^ (v20 ^ 0x17) & v8));
  HIDWORD(v25) = v24 ^ 0x15;
  LODWORD(v25) = (v24 ^ 0x80) << 24;
  LOBYTE(v24) = (((v20 ^ 0x97u ^ (((v25 >> 30) ^ 0x92) - 41)) & v9) >> STACK[0xE78]) ^ ((v20 ^ 0x97u ^ (((v25 >> 30) ^ 0x92) - 41)) << v13);
  v26 = *(*(v22 + 8 * v11) + 4 * (v20 ^ (v21 - 88)) - 8) ^ 0x2E45CAC4;
  v27 = STACK[0xE48];
  v28 = (((v26 ^ (2 * (v26 & STACK[0xEC8]))) & STACK[0xE50]) << v13) ^ (((v26 ^ (2 * (v26 & STACK[0xEC8]))) & STACK[0xE80]) >> LODWORD(STACK[0xE70]));
  v29 = (*(STACK[0xE98] + (((v24 - ((2 * v24) & 0x92) - 55) ^ LODWORD(STACK[0xEE0])) ^ 0xF0)) ^ a3) + 100;
  v30 = a6 + 4 * ((v29 ^ a4) + ((2 * v29) & a5));
  *(a7 + v30) = (v28 + a1 - (v23 & (2 * v28))) ^ LODWORD(STACK[0xE48]);
  v31 = *(*(v22 + 8 * v12) + 2 * (v20 ^ 0x4181463u) - 4) ^ v14;
  *(a2 + v30) = v27 ^ a8 ^ v16 ^ (v31 + a1 - (v15 & (2 * v31)));
  return (*(STACK[0xED0] + 8 * ((((((v20 ^ 0x4181497) + 68686999 - ((2 * (v20 ^ 0x4181497) + 2) & v18) + 1) ^ 0x4181400u) < 0x100) * v19) ^ v17)))();
}

uint64_t sub_24494BADC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v16 = LODWORD(STACK[0x7A8]) ^ LODWORD(STACK[0xEE8]) ^ LODWORD(STACK[0xC88]) ^ LODWORD(STACK[0x7A4]) ^ LODWORD(STACK[0x798]) ^ LODWORD(STACK[0x788]) ^ LODWORD(STACK[0x780]) ^ LODWORD(STACK[0x784]) ^ LODWORD(STACK[0x778]) ^ LODWORD(STACK[0x770]) ^ LODWORD(STACK[0x76C]) ^ LODWORD(STACK[0xC30]) ^ LODWORD(STACK[0xBF8]) ^ LODWORD(STACK[0xC98]) ^ LODWORD(STACK[0x760]) ^ LODWORD(STACK[0xD30]) ^ LODWORD(STACK[0x768]) ^ LODWORD(STACK[0x758]) ^ LODWORD(STACK[0x750]) ^ LODWORD(STACK[0xBCC]) ^ LODWORD(STACK[0xBE8]) ^ LODWORD(STACK[0x7B8]) ^ LODWORD(STACK[0x7C0]) ^ LODWORD(STACK[0x7B0]) ^ LODWORD(STACK[0x7C8]) ^ LODWORD(STACK[0x740]) ^ LODWORD(STACK[0x74C]) ^ LODWORD(STACK[0xBE0]) ^ LODWORD(STACK[0x80C]) ^ LODWORD(STACK[0xB7C]) ^ LODWORD(STACK[0xB20]) ^ LODWORD(STACK[0xB70]) ^ LODWORD(STACK[0xB18]) ^ LODWORD(STACK[0x790]) ^ LODWORD(STACK[0xBD0]) ^ LODWORD(STACK[0xBD8]) ^ LODWORD(STACK[0xBB8]) ^ LODWORD(STACK[0xC90]) ^ LODWORD(STACK[0xB90]) ^ LODWORD(STACK[0xB80]) ^ LODWORD(STACK[0xBB4]) ^ a6 ^ a5 ^ a7 ^ a8;
  v17 = LODWORD(STACK[0xEE8]) ^ LODWORD(STACK[0xAA0]);
  v18 = v17 ^ v15 ^ v16 ^ 0x36CBCB2F ^ v8 ^ a3 ^ v12 ^ a4 ^ v11 ^ a1;
  v19 = ((350670765 * LODWORD(STACK[0xD98])) ^ 0xF4FDBE7D) + ((701341530 * LODWORD(STACK[0xD98])) & 0xE9FB7CFA) + ((-701341530 * (LODWORD(STACK[0xC60]) ^ 0x4F265637 ^ v16)) & 0xA4B7FCF4) + ((-350670765 * (LODWORD(STACK[0xC60]) ^ 0x4F265637 ^ v16)) ^ 0xD25BFE7A) + a2 + v13 + v14;
  v20 = v17 ^ v16 ^ 0x36CBCB2F ^ v9;
  v21 = ((1246286886 * (LODWORD(STACK[0xC60]) ^ LODWORD(STACK[0xEE8]) ^ 0xE3E77DCC)) & 0x8E17FBEC) + ((623143443 * (LODWORD(STACK[0xC60]) ^ LODWORD(STACK[0xEE8]) ^ 0xE3E77DCC)) ^ 0xC70BFDF6) + 955515402 + (v10 ^ 0xF7228811);
  v22 = ((623143443 * (v16 ^ 0xAC3AF363)) ^ 0x2C5CCAA8) - ((1246286886 * (v16 ^ 0xAC3AF363)) & 0xA7466AAE) + (v21 ^ 0xDFEDDABF) + ((2 * v21) & 0xBFDBB57E);
  v23 = (v18 ^ 0xE5BC44A6) - ((2 * (v18 ^ 0xE5BC44A6) + 1757932916) & 0xD3DBF2E6) + 508686381;
  v24 = v19 - ((2 * v19 - 401973264) & 0xD863B1C0) + 1614219480;
  v25 = (v20 ^ 0x32BD8FF0) - ((2 * (v20 ^ 0x32BD8FF0) - 878834226) & 0xCCC25A62) + 1278227480;
  v26 = v22 + 1 - ((2 * (v22 + 1) + 1411691756) & 0x76E01B6C) - 444438484;
  v27 = (v25 ^ 0x66612D31 ^ (v19 - 1042467736)) - ((2 * (v25 ^ 0x66612D31 ^ (v19 - 1042467736))) & 0xC89C99FE) - 464630529;
  v28 = ((v22 - 206218599) ^ 0xE9EDF973 ^ v23) - ((2 * ((v22 - 206218599) ^ 0xE9EDF973 ^ v23)) & 0x27BFA578) - 1814048068;
  v29 = ((v27 >> 17) & 0x80 | (v27 >> 25)) ^ 0xB2;
  v30 = STACK[0xEA0];
  LOBYTE(v29) = *(STACK[0xEA0] + ((v29 + 557277870 - 2 * (v29 & 0xBE ^ (v27 >> 25) & 4) + 12) ^ 0x213762AE));
  v31 = (v29 + ((104 - 2 * v29) | 0x63) - 102) ^ 0x51;
  v32 = v26 ^ v20;
  LOBYTE(v29) = *(STACK[0xE98] + (((v26 ^ v20) >> 16) ^ 0xCLL)) ^ 0x49;
  v33 = STACK[0x81C];
  v34 = *(&off_278E1E490 + LODWORD(STACK[0x81C]) - 2372) - 4;
  LOBYTE(STACK[0x1E59]) = v34[(v29 - ((2 * v29 + 8) & 0x38)) ^ 0x11] ^ 0x90;
  v35 = *(&off_278E1E490 + v33 - 2875) - 12;
  LOBYTE(STACK[0x1E5E]) = v35[BYTE1(v28) ^ 0x78] ^ 0x7A;
  LOBYTE(STACK[0x1E5B]) = v35[v32 ^ 0xD7] ^ 0xB2;
  v36 = *(STACK[0xEA8] + (((BYTE2(v27) ^ 0x54) - ((2 * (BYTE2(v27) ^ 0x54) + 6) & 0x6A) - 8) ^ 0x3BLL));
  HIDWORD(v37) = ~v36;
  LODWORD(v37) = (v36 ^ 0xE8) << 24;
  LOBYTE(STACK[0x1E53]) = v35[(v18 ^ v24) ^ 0x2FLL] ^ 0x74;
  LOBYTE(STACK[0x1E55]) = v34[((v37 >> 25) - ((2 * (v37 >> 25)) & 0x90) - 56) ^ 0x34] ^ 0x28;
  LOBYTE(STACK[0x1E5D]) = v35[BYTE2(v28) ^ 0x63] ^ 0x4C;
  LOBYTE(STACK[0x1E57]) = v34[v27 ^ 0x3FLL] ^ 0x45;
  v38 = *(STACK[0xED8] + (((HIBYTE(v18) ^ HIBYTE(v24) ^ 0xB7) - ((2 * (HIBYTE(v18) ^ HIBYTE(v24) ^ 0xB7) - 122) & 0x90) + 11) ^ 0xA5));
  HIDWORD(v37) = ~v38;
  LODWORD(v37) = (v38 ^ 0x96) << 24;
  LOBYTE(v38) = v34[((v37 >> 25) - ((2 * (v37 >> 25)) & 0xC0) + 96) ^ 0xEDLL];
  LOBYTE(STACK[0x1E58]) = v35[HIBYTE(v32) ^ 0x23] ^ 0x26;
  LOBYTE(STACK[0x1E50]) = v38 ^ 2;
  v39 = STACK[0xEB8];
  v40 = *(STACK[0xEB8] + ((-73 * (BYTE1(v27) ^ 0x34) - ((110 * (BYTE1(v27) ^ 0x34)) & 0xD0) + 104) ^ 0xF3));
  v41 = ((v40 << 7) - 62) ^ (v40 >> 1) ^ 0xFFFFFFD4;
  LOBYTE(STACK[0x1E56]) = v35[(v41 - ((2 * v41 + 18) & 0x1C) + 87) ^ 0xD2] ^ 0x50;
  v42 = v34[(((2 * v31 - 82) & 0x84) - v31 + 102)];
  LOBYTE(STACK[0x1E5F]) = v34[v28 ^ 0xBELL] ^ 0xE1;
  LOBYTE(STACK[0x1E54]) = v42 ^ 0x4E;
  LOBYTE(STACK[0x1E5C]) = v35[HIBYTE(v28) ^ 0x5ELL] ^ 0x22;
  LOBYTE(STACK[0x1E52]) = v35[((v18 ^ v24) >> 8) ^ 0x97] ^ 0x49;
  LOBYTE(STACK[0x1E51]) = v35[((v18 ^ v24) >> 16) ^ 0xE7] ^ 0x2F;
  v43 = STACK[0x7E8];
  HIDWORD(v37) = LODWORD(STACK[0x7E8]) ^ 0xD4EB20;
  LODWORD(v37) = LODWORD(STACK[0x7E8]) ^ 0xBA000000;
  LOBYTE(STACK[0x1E5A]) = v35[BYTE1(v32) ^ 0x8ELL] ^ 0x26;
  v44 = (v37 >> 24) - ((2 * (v37 >> 24)) & 0xD8515784) - 332878910;
  HIDWORD(v37) = v43 ^ 0xEB20;
  LODWORD(v37) = v43 ^ 0xBAD40000;
  v45 = ((((v43 << 24) ^ 0x20000000) - ((v43 << 25) & 0x8FFFFFFF) + 1191384236) ^ 0x470314AC | (v43 >> 8)) ^ 0xBAD4EB;
  v46 = ((v37 >> 16) - ((2 * (v37 >> 16)) & 0xD753755A) - 341198163) ^ v43 ^ v44 ^ (v45 - ((2 * v45) & 0x33E8297A) + 435426493) ^ LODWORD(STACK[0xEB0]);
  v47 = v25 ^ v46;
  v48 = v24 ^ v46;
  v49 = v26 ^ v46;
  v50 = v23 ^ v46;
  LODWORD(STACK[0x7D8]) = v35[BYTE1(v48) ^ 0xC9] ^ 0xFFFFFFD7;
  LOBYTE(v26) = v35[v47 ^ 0x5BLL] ^ 0x1F;
  v51 = *(STACK[0xE58] + ((-73 * v26 - ((110 * v26) & 0x4A) - 91) ^ 0xCALL));
  v52 = (v51 - ((2 * v51 - 114) & 0xFFFFFFE7) - 70) ^ 0x3D;
  v53 = BYTE2(v50) ^ 0xE3;
  LODWORD(STACK[0x5F8]) = v35[HIBYTE(v49) ^ 0xA6] ^ 0xFFFFFF97;
  LOBYTE(v43) = *(STACK[0xE90] + (BYTE2(v48) ^ 0xFLL));
  HIDWORD(v37) = v34[((v43 ^ 0x18) - 2 * (((v43 ^ 0x18) + 100) & 0x5F ^ v43 & 1) - 62) ^ 0xD3];
  LODWORD(v37) = (HIDWORD(v37) ^ 0xFFFFFF9F) << 24;
  v54 = *(STACK[0xEC0] + (((v37 >> 25) - ((2 * (v37 >> 25)) & 0x42) - 95) ^ 0x98));
  HIDWORD(v37) = v54 ^ 0x15;
  LODWORD(v37) = (v54 ^ 0x80) << 24;
  v55 = ((v37 >> 30) - 16 * ((v37 >> 30) >> 3) + 120) ^ 0xFFFFFFEA;
  v56 = HIBYTE(v47) ^ 0x39;
  v57 = v34[HIBYTE(v50) ^ 0xE1];
  HIDWORD(v37) = ~v57;
  LODWORD(v37) = (v57 ^ 0xFFFFFFF7) << 24;
  v58 = *(v30 + (((v37 >> 25) - ((2 * (v37 >> 25)) & 0x68) + 52) ^ 0x20));
  v59 = ((v58 - ((2 * v58 - 106) & 0xFFFFFFE8) - 57) ^ 5) - 8;
  LODWORD(STACK[0x7B8]) = ((v59 ^ 0xFFFFFFEE) - ((((2 * v59) ^ 0x5C) + 46) & 0x52)) ^ 0x66;
  LODWORD(STACK[0x7D0]) = v34[BYTE1(v47) ^ 0xELL] ^ 0x13;
  HIDWORD(v37) = *(v39 + ((-73 * (v50 ^ 0x92) - ((110 * (v50 ^ 0x92)) & 0x48) - 92) ^ 0x3FLL));
  LODWORD(v37) = ~HIDWORD(v37) << 24;
  v60 = (v37 >> 25) - ((2 * (v37 >> 25)) & 0x28) + 20;
  HIDWORD(v37) = v60 ^ 4;
  LODWORD(v37) = (v60 ^ 0x10) << 24;
  v61 = v34[v48 ^ 0xB5];
  v62 = v34[BYTE2(v47) ^ 0x18];
  LODWORD(STACK[0x7C8]) = (v52 - ((2 * v52 - 110) & 0xFFFFFFBC) - 89) ^ 0xFFFFFFF3;
  LODWORD(STACK[0x7A8]) = v62 ^ 0xFFFFFFF0;
  LODWORD(STACK[0x608]) = v34[v53] ^ 0xFFFFFFFB;
  LODWORD(STACK[0x8E8]) = v55 - ((2 * v55 - 82) & 0xFFFFFF9C) + 37;
  LODWORD(STACK[0x600]) = v35[v56] ^ 0x78;
  LODWORD(STACK[0x7F0]) = v35[BYTE2(v49) ^ 0x48] ^ 0xFFFFFF81;
  v63 = v35[BYTE1(v49) ^ 0x9ELL];
  v64 = (v37 >> 28) - ((2 * (v37 >> 28)) & 0x6A) - 75;
  HIDWORD(v37) = v64 ^ 0xB;
  LODWORD(v37) = (v64 ^ 0x20) << 24;
  v65 = ((2 * (v37 >> 28)) & 0xFFFFFFE7) + ((v37 >> 28) ^ 0x73);
  LODWORD(STACK[0x358]) = v34[(v65 - ((2 * v65 + 44) & 0x56) + 1) ^ 0xA6];
  HIDWORD(v37) = *(v39 + ((-73 * (v49 ^ 0x67) - ((110 * (v49 ^ 0x67)) & 0xBB) + 93) ^ 0xC6));
  LODWORD(v37) = ~HIDWORD(v37) << 24;
  LODWORD(STACK[0x7B0]) = v63 ^ 0xFFFFFFB4;
  v66 = ((v37 >> 25) - 8 * ((v37 >> 25) >> 2) + 124) ^ 0x15;
  LODWORD(STACK[0x7C0]) = v35[(v66 - ((2 * v66 - 110) & 0xD2) + 50) ^ 0x35] ^ 0xFFFFFF90;
  LODWORD(STACK[0x614]) = v34[HIBYTE(v48) ^ 0xE8] ^ 0x59;
  LODWORD(STACK[0x618]) = v61 ^ 0xFFFFFFB1;
  return (*(STACK[0xED0] + 8 * v33))(&STACK[0x10F0]);
}

uint64_t sub_24494C7B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X6>, int a3@<W7>, uint64_t a4@<X8>)
{
  v16 = *(a4 + v5) ^ *(*(&off_278E1E490 + v8) + (v5 ^ 4) - 12) ^ 0x3F;
  v17 = *(v14 + ((v4 + v16 + ((v9 - 2 * v16) | v12) + 20) ^ v10));
  HIDWORD(v18) = ~v17;
  LODWORD(v18) = (v17 ^ v15) << 24;
  v19 = *(a2 + 8 * ((((v5 + 1) > 0x1F) * a3) ^ v13));
  *(a1 + (*(*(&off_278E1E490 + v6) + (v5 ^ 7)) ^ v7)) = ((v18 >> 25) - ((2 * (v18 >> 25)) & 0x77) - 69) ^ v11;
  return v19();
}

uint64_t sub_24494C850(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, int a6, uint64_t a7)
{
  LODWORD(STACK[0x7E0]) = a6;
  STACK[0xC38] = a4;
  STACK[0xC50] = a5;
  return (*(a7 + 8 * (v7 - 14663)))(180, &STACK[0x10F0], 15457);
}

uint64_t sub_24494C934@<X0>(uint64_t a1@<X6>, unsigned int a2@<W8>)
{
  STACK[0x7E8] = v2;
  LODWORD(STACK[0xD18]) = 0;
  LODWORD(STACK[0xDF0]) = 0;
  LODWORD(STACK[0xD10]) = 0;
  LODWORD(STACK[0xD2C]) = 0;
  LODWORD(STACK[0xD20]) = 0;
  LODWORD(STACK[0xB70]) = 0;
  LODWORD(STACK[0xB68]) = 0;
  LODWORD(STACK[0xB60]) = 0;
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xB50]) = 0;
  LODWORD(STACK[0xB48]) = 0;
  LODWORD(STACK[0xB40]) = 0;
  LODWORD(STACK[0xB38]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xB20]) = 0;
  LODWORD(STACK[0xB18]) = 0;
  LODWORD(STACK[0xB10]) = 0;
  LODWORD(STACK[0xB08]) = 0;
  LODWORD(STACK[0xB00]) = 0;
  LODWORD(STACK[0xAF8]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  memset(&STACK[0x10C0], 149, 40);
  LODWORD(STACK[0x354]) = (&STACK[0x19B0] - ((2 * &STACK[0x19B0]) & 0xB056E40) + 92452654) ^ (&STACK[0x20C0] - ((571 * (a2 ^ 0xE81C729A) + 980783105) & (2 * &STACK[0x20C0])) + 490395271) ^ 0x41553584;
  STACK[0x348] = &STACK[0x6830C533A7E45C85];
  LODWORD(STACK[0x9A8]) = 118475570;
  v3 = *(a1 + 8 * ((12424 * (a2 < 0x986B9C9E)) ^ (a2 + 400793052)));
  LODWORD(STACK[0xCFC]) = 1361660928;
  LODWORD(STACK[0xCF0]) = 1237519590;
  LODWORD(STACK[0x9D8]) = 864132518;
  LODWORD(STACK[0xCE8]) = 146829722;
  LODWORD(STACK[0xCE0]) = 195660318;
  LODWORD(STACK[0x9D4]) = -33620396;
  LODWORD(STACK[0x344]) = 218005438;
  LODWORD(STACK[0x340]) = 2132683734;
  LODWORD(STACK[0x33C]) = -740281626;
  LODWORD(STACK[0x338]) = 1815725578;
  LODWORD(STACK[0x334]) = 18089600;
  LODWORD(STACK[0x330]) = -1890198174;
  LODWORD(STACK[0x32C]) = 220969920;
  LODWORD(STACK[0x328]) = -1206449126;
  LODWORD(STACK[0x324]) = -2112600482;
  LODWORD(STACK[0x320]) = 1879595014;
  LODWORD(STACK[0x31C]) = -1474788898;
  LODWORD(STACK[0x318]) = -2075935136;
  LODWORD(STACK[0x314]) = 2099922769;
  LODWORD(STACK[0x310]) = -1679383562;
  v4.n128_u64[0] = 0x1C1C1C1C1C1C1C1CLL;
  v4.n128_u64[1] = 0x1C1C1C1C1C1C1C1CLL;
  LODWORD(STACK[0xC30]) = -281993958;
  LODWORD(STACK[0xC7C]) = -580310272;
  LODWORD(STACK[0xC70]) = 2142207999;
  LODWORD(STACK[0x9A0]) = -276856965;
  LODWORD(STACK[0x99C]) = -1006053594;
  LODWORD(STACK[0xC6C]) = -1202490938;
  LODWORD(STACK[0xC68]) = -1262895900;
  LODWORD(STACK[0xC60]) = 48140469;
  LODWORD(STACK[0xC28]) = -1048866580;
  LODWORD(STACK[0xC20]) = -1079070762;
  LODWORD(STACK[0xC1C]) = -1979711488;
  LODWORD(STACK[0x9F8]) = 109153;
  LODWORD(STACK[0x700]) = 224;
  LODWORD(STACK[0x30C]) = 96;
  LODWORD(STACK[0x6F8]) = 240;
  LODWORD(STACK[0x708]) = 64;
  LODWORD(STACK[0x518]) = 28;
  LODWORD(STACK[0x710]) = 63;
  LODWORD(STACK[0x970]) = -1787430135;
  LODWORD(STACK[0x988]) = 963009268;
  STACK[0x968] = 3508509564;
  LODWORD(STACK[0xD30]) = -373414431;
  LODWORD(STACK[0x960]) = 738064295;
  LODWORD(STACK[0x950]) = -1026879767;
  LODWORD(STACK[0x948]) = 1917836137;
  LODWORD(STACK[0x5F0]) = -538452991;
  LODWORD(STACK[0x990]) = 1003281849;
  LODWORD(STACK[0x918]) = -868338041;
  LODWORD(STACK[0x930]) = 1884346065;
  LODWORD(STACK[0x984]) = -2065885098;
  LODWORD(STACK[0x5E8]) = -694341173;
  LODWORD(STACK[0x958]) = 1382272445;
  LODWORD(STACK[0x940]) = -971819319;
  STACK[0x9C8] = &STACK[0x31B4];
  STACK[0x9C0] = &STACK[0x1EB0];
  STACK[0x9B8] = &STACK[0x2560];
  STACK[0x9B0] = &STACK[0xF74];
  LODWORD(STACK[0x938]) = -1936003936;
  STACK[0xCD8] = &STACK[0x2528];
  STACK[0xCD0] = &STACK[0xF58];
  STACK[0xCC8] = &STACK[0x3198];
  STACK[0xCC0] = &STACK[0x1E78];
  LODWORD(STACK[0x308]) = (&STACK[0x19B0] ^ &STACK[0x20C0]) - 1297623994;
  LODWORD(STACK[0xEE8]) = 1;
  LODWORD(STACK[0xE28]) = 1;
  LODWORD(STACK[0xE00]) = 1;
  LODWORD(STACK[0xDC8]) = 1;
  LODWORD(STACK[0xD60]) = 1;
  LODWORD(STACK[0xB7C]) = 1;
  LODWORD(STACK[0xB80]) = 1;
  LODWORD(STACK[0xDD0]) = 1;
  LODWORD(STACK[0xD68]) = 1;
  LODWORD(STACK[0xBD0]) = 1;
  LODWORD(STACK[0xBD8]) = 1;
  LODWORD(STACK[0xD70]) = 1;
  LODWORD(STACK[0xBE0]) = 1;
  LODWORD(STACK[0xBE8]) = 1;
  LODWORD(STACK[0xE30]) = 1;
  LODWORD(STACK[0xE08]) = 1;
  LODWORD(STACK[0xDD8]) = 1;
  LODWORD(STACK[0xD78]) = 1;
  LODWORD(STACK[0xBF0]) = 1;
  LODWORD(STACK[0xA20]) = 1;
  LODWORD(STACK[0xA28]) = 1;
  LODWORD(STACK[0xD80]) = 1;
  LODWORD(STACK[0xBF8]) = 1;
  LODWORD(STACK[0xA30]) = 1;
  LODWORD(STACK[0xA40]) = 1;
  LODWORD(STACK[0xC00]) = 1;
  LODWORD(STACK[0xA38]) = 1;
  LODWORD(STACK[0xA5C]) = 1;
  LODWORD(STACK[0xDE0]) = 1;
  LODWORD(STACK[0xD88]) = 1;
  LODWORD(STACK[0xA48]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0xC08]) = 1;
  LODWORD(STACK[0xA50]) = 1;
  LODWORD(STACK[0xA70]) = 1;
  LODWORD(STACK[0xD98]) = 1;
  LODWORD(STACK[0xC10]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xA80]) = 1;
  LODWORD(STACK[0xC84]) = 1;
  LODWORD(STACK[0xA88]) = 1;
  LODWORD(STACK[0xAA0]) = 1;
  LODWORD(STACK[0xE10]) = 1;
  LODWORD(STACK[0xD90]) = 1;
  LODWORD(STACK[0xC80]) = 1;
  LODWORD(STACK[0xA68]) = 1;
  LODWORD(STACK[0xA78]) = 1;
  LODWORD(STACK[0xA90]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0xDA0]) = 1;
  LODWORD(STACK[0xC88]) = 1;
  LODWORD(STACK[0xA98]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xC90]) = 1;
  LODWORD(STACK[0xAB8]) = 1;
  LODWORD(STACK[0xDE8]) = 1;
  LODWORD(STACK[0xDA8]) = 1;
  LODWORD(STACK[0xC98]) = 1;
  LODWORD(STACK[0xAC0]) = 1;
  LODWORD(STACK[0xAD0]) = 1;
  LODWORD(STACK[0xCA0]) = 1;
  LODWORD(STACK[0xAC8]) = 1;
  LODWORD(STACK[0xAE0]) = 1;
  LODWORD(STACK[0xDB0]) = 1;
  LODWORD(STACK[0xD00]) = 1;
  LODWORD(STACK[0xAD8]) = 1;
  LODWORD(STACK[0xD08]) = 1;
  LODWORD(STACK[0xAE8]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xD38]) = 1;
  LODWORD(STACK[0xDB8]) = 1;
  LODWORD(STACK[0xD48]) = 1;
  LODWORD(STACK[0xB98]) = 1;
  LODWORD(STACK[0xBA0]) = 1;
  LODWORD(STACK[0xD50]) = 1;
  LODWORD(STACK[0xBB4]) = 1;
  LODWORD(STACK[0xDC0]) = 1;
  LODWORD(STACK[0xBB8]) = 1;
  LODWORD(STACK[0xD58]) = 1;
  LODWORD(STACK[0xBC0]) = 1;
  LODWORD(STACK[0xBCC]) = 1;
  LODWORD(STACK[0xDF8]) = 1;
  LODWORD(STACK[0xB88]) = 1;
  LODWORD(STACK[0xA0C]) = 1;
  LODWORD(STACK[0xD40]) = 1;
  LODWORD(STACK[0xB90]) = 1;
  LODWORD(STACK[0xBA8]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0xA1C]) = 1;
  LODWORD(STACK[0x588]) = 7;
  LODWORD(STACK[0x740]) = 12;
  LODWORD(STACK[0x6B8]) = 112;
  LODWORD(STACK[0x8E0]) = 5;
  LODWORD(STACK[0x6F0]) = 125;
  LODWORD(STACK[0x810]) = 187;
  LODWORD(STACK[0xCB8]) = 12;
  LODWORD(STACK[0x7A4]) = 172;
  LODWORD(STACK[0x9E8]) = 234;
  LODWORD(STACK[0x6C0]) = 110;
  LODWORD(STACK[0x798]) = 188;
  LODWORD(STACK[0x5A0]) = 133;
  LODWORD(STACK[0x6B0]) = 173;
  LODWORD(STACK[0x6D8]) = 249;
  LODWORD(STACK[0x530]) = 157;
  LODWORD(STACK[0x900]) = 140;
  LODWORD(STACK[0x8C0]) = 16;
  LODWORD(STACK[0x698]) = 198;
  LODWORD(STACK[0x5C8]) = 119;
  LODWORD(STACK[0x768]) = 95;
  LODWORD(STACK[0x760]) = 144;
  LODWORD(STACK[0x5B0]) = 54;
  LODWORD(STACK[0x86C]) = 33;
  LODWORD(STACK[0x860]) = 106;
  LODWORD(STACK[0x778]) = 205;
  LODWORD(STACK[0x738]) = 253;
  LODWORD(STACK[0x5C0]) = 191;
  LODWORD(STACK[0x9E0]) = 121;
  LODWORD(STACK[0x8B0]) = 244;
  LODWORD(STACK[0x6E8]) = 155;
  LODWORD(STACK[0x7F4]) = 5;
  LODWORD(STACK[0x880]) = 229;
  LODWORD(STACK[0x560]) = 164;
  LODWORD(STACK[0x5D8]) = 68;
  LODWORD(STACK[0x750]) = 249;
  LODWORD(STACK[0x304]) = 196;
  LODWORD(STACK[0x648]) = 111;
  LODWORD(STACK[0x568]) = 117;
  LODWORD(STACK[0x898]) = 226;
  LODWORD(STACK[0x6E0]) = 190;
  LODWORD(STACK[0x5A8]) = 149;
  LODWORD(STACK[0x5B8]) = 203;
  LODWORD(STACK[0x870]) = 82;
  LODWORD(STACK[0x794]) = 93;
  LODWORD(STACK[0x978]) = 180;
  LODWORD(STACK[0x598]) = 251;
  LODWORD(STACK[0x7F8]) = 211;
  LODWORD(STACK[0x9E4]) = 110;
  LODWORD(STACK[0x74C]) = 69;
  LODWORD(STACK[0x80C]) = 255;
  LODWORD(STACK[0x81C]) = 236;
  LODWORD(STACK[0x908]) = 104;
  LODWORD(STACK[0x650]) = 120;
  LODWORD(STACK[0x8C4]) = 145;
  LODWORD(STACK[0x8F8]) = 135;
  LODWORD(STACK[0x920]) = 69;
  LODWORD(STACK[0x87C]) = 101;
  LODWORD(STACK[0x684]) = 89;
  LODWORD(STACK[0x6A8]) = 94;
  LODWORD(STACK[0x5D0]) = 44;
  LODWORD(STACK[0x690]) = 147;
  LODWORD(STACK[0x770]) = 182;
  LODWORD(STACK[0x758]) = 6;
  LODWORD(STACK[0x850]) = 141;
  LODWORD(STACK[0x76C]) = 115;
  LODWORD(STACK[0x838]) = 240;
  LODWORD(STACK[0x678]) = 119;
  LODWORD(STACK[0x578]) = 20;
  LODWORD(STACK[0x8B8]) = 128;
  LODWORD(STACK[0x848]) = 104;
  LODWORD(STACK[0x858]) = 128;
  LODWORD(STACK[0x628]) = 2;
  LODWORD(STACK[0x6A0]) = 5;
  LODWORD(STACK[0x728]) = 22;
  LODWORD(STACK[0x800]) = 128;
  LODWORD(STACK[0x640]) = 44;
  LODWORD(STACK[0x818]) = 234;
  LODWORD(STACK[0x730]) = 184;
  LODWORD(STACK[0x928]) = 201;
  LODWORD(STACK[0x638]) = 239;
  LODWORD(STACK[0x914]) = 221;
  LODWORD(STACK[0x550]) = 112;
  LODWORD(STACK[0x548]) = 95;
  LODWORD(STACK[0x590]) = 93;
  LODWORD(STACK[0x660]) = 16;
  LODWORD(STACK[0x688]) = 200;
  LODWORD(STACK[0x570]) = 180;
  LODWORD(STACK[0x670]) = 174;
  LODWORD(STACK[0x520]) = 201;
  LODWORD(STACK[0xCB0]) = 150;
  LODWORD(STACK[0x828]) = 91;
  LODWORD(STACK[0x8F0]) = 161;
  LODWORD(STACK[0x8D0]) = 28;
  LODWORD(STACK[0x528]) = 210;
  LODWORD(STACK[0x6C8]) = 191;
  LODWORD(STACK[0x840]) = 127;
  LODWORD(STACK[0x580]) = 213;
  LODWORD(STACK[0x784]) = 73;
  LODWORD(STACK[0x620]) = 254;
  LODWORD(STACK[0x720]) = 50;
  STACK[0x9F0] = 233;
  LODWORD(STACK[0x820]) = 12;
  LODWORD(STACK[0x788]) = 116;
  LODWORD(STACK[0x8A8]) = 141;
  LODWORD(STACK[0x5E0]) = 76;
  LODWORD(STACK[0x8A0]) = 161;
  LODWORD(STACK[0x668]) = 139;
  LODWORD(STACK[0x790]) = 105;
  LODWORD(STACK[0x890]) = 235;
  LODWORD(STACK[0x658]) = 197;
  LODWORD(STACK[0x780]) = 158;
  LODWORD(STACK[0x558]) = 214;
  LODWORD(STACK[0x538]) = 57;
  LODWORD(STACK[0x718]) = 172;
  LODWORD(STACK[0x8D8]) = 33;
  LODWORD(STACK[0x540]) = 169;
  LODWORD(STACK[0x8C8]) = 208;
  LODWORD(STACK[0x83C]) = 213;
  LODWORD(STACK[0x630]) = 145;
  LODWORD(STACK[0x888]) = 254;
  LODWORD(STACK[0x6D0]) = 119;
  LODWORD(STACK[0x834]) = 107;
  return v3(v4);
}

uint64_t sub_24494D4A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X7>, int a3@<W8>)
{
  LODWORD(STACK[0xEE8]) = 0;
  LODWORD(STACK[0xE28]) = 0;
  LODWORD(STACK[0xDD0]) = 0;
  LODWORD(STACK[0xD70]) = 0;
  LODWORD(STACK[0xBE0]) = 0;
  LODWORD(STACK[0xBE8]) = 0;
  LODWORD(STACK[0xE30]) = 0;
  LODWORD(STACK[0xE08]) = 0;
  LODWORD(STACK[0xDD8]) = 0;
  LODWORD(STACK[0xD78]) = 0;
  LODWORD(STACK[0xBF0]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0xA28]) = 0;
  LODWORD(STACK[0xD80]) = 0;
  LODWORD(STACK[0xBF8]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  LODWORD(STACK[0xC00]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  STACK[0xA58] = 0;
  LODWORD(STACK[0xDE0]) = 0;
  LODWORD(STACK[0xD88]) = 0;
  LODWORD(STACK[0xA48]) = 0;
  LODWORD(STACK[0xC08]) = 0;
  LODWORD(STACK[0xA50]) = 0;
  LODWORD(STACK[0xA70]) = 0;
  LODWORD(STACK[0xD98]) = 0;
  LODWORD(STACK[0xC10]) = 0;
  LODWORD(STACK[0xA60]) = 0;
  LODWORD(STACK[0xA80]) = 0;
  STACK[0xC80] = 0;
  LODWORD(STACK[0xA88]) = 0;
  LODWORD(STACK[0xAA0]) = 0;
  LODWORD(STACK[0xE10]) = 0;
  LODWORD(STACK[0xD90]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xA90]) = 0;
  LODWORD(STACK[0xAA8]) = 0;
  LODWORD(STACK[0xDA0]) = 0;
  LODWORD(STACK[0xC88]) = 0;
  LODWORD(STACK[0xA98]) = 0;
  LODWORD(STACK[0xAB0]) = 0;
  LODWORD(STACK[0xC90]) = 0;
  LODWORD(STACK[0xAB8]) = 0;
  LODWORD(STACK[0xDE8]) = 0;
  LODWORD(STACK[0xDA8]) = 0;
  LODWORD(STACK[0xC98]) = 0;
  LODWORD(STACK[0xAC0]) = 0;
  LODWORD(STACK[0xAD0]) = 0;
  LODWORD(STACK[0xCA0]) = 0;
  LODWORD(STACK[0xAC8]) = 0;
  LODWORD(STACK[0xAE0]) = 0;
  LODWORD(STACK[0xDB0]) = 0;
  LODWORD(STACK[0xD00]) = 0;
  LODWORD(STACK[0xAD8]) = 0;
  LODWORD(STACK[0xD08]) = 0;
  LODWORD(STACK[0xAE8]) = 0;
  LODWORD(STACK[0xD2C]) = 0;
  LODWORD(STACK[0xD20]) = 0;
  LODWORD(STACK[0xDB8]) = 0;
  LODWORD(STACK[0xD48]) = 0;
  LODWORD(STACK[0xB98]) = 0;
  LODWORD(STACK[0xB70]) = 0;
  LODWORD(STACK[0xB68]) = 0;
  LODWORD(STACK[0xBA0]) = 0;
  LODWORD(STACK[0xB60]) = 0;
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xD50]) = 0;
  LODWORD(STACK[0xB50]) = 0;
  LODWORD(STACK[0xB48]) = 0;
  LODWORD(STACK[0xBB4]) = 0;
  LODWORD(STACK[0xB40]) = 0;
  LODWORD(STACK[0xDC0]) = 0;
  LODWORD(STACK[0xB38]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xBB8]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xB20]) = 0;
  LODWORD(STACK[0xD58]) = 0;
  LODWORD(STACK[0xBC0]) = 0;
  LODWORD(STACK[0xB18]) = 0;
  LODWORD(STACK[0xB10]) = 0;
  LODWORD(STACK[0xB08]) = 0;
  LODWORD(STACK[0xB00]) = 0;
  LODWORD(STACK[0xBCC]) = 0;
  LODWORD(STACK[0xAF8]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xDF8]) = 0;
  LODWORD(STACK[0xB88]) = 0;
  LODWORD(STACK[0xA0C]) = 0;
  LODWORD(STACK[0xD40]) = 0;
  LODWORD(STACK[0xB90]) = 0;
  LODWORD(STACK[0xBA8]) = 0;
  LODWORD(STACK[0xA10]) = 0;
  LODWORD(STACK[0xA1C]) = 0;
  LOBYTE(STACK[0x1FDB]) = v4 ^ v5;
  v6 = *(a1 + (((LOBYTE(STACK[0x1E27]) ^ 0xEC) - ((2 * (LOBYTE(STACK[0x1E27]) ^ 0xEC) - 122) & 0xB0) + 27) ^ v3));
  HIDWORD(v7) = (479 * (a3 ^ 0x567) - 1) ^ v6;
  LODWORD(v7) = (v6 ^ 0x96) << 24;
  LODWORD(STACK[0x8E0]) = (v7 >> 25) - ((2 * (v7 >> 25)) & 0xFFFFFFFB) - 3;
  v8 = *(a2 + 8 * a3);
  LODWORD(STACK[0xD18]) = 1;
  LODWORD(STACK[0xE00]) = 1;
  LODWORD(STACK[0xDC8]) = 1;
  LODWORD(STACK[0xD60]) = 1;
  LODWORD(STACK[0xD68]) = 1;
  LODWORD(STACK[0xBD0]) = 1;
  LODWORD(STACK[0xBD8]) = 1;
  LODWORD(STACK[0xDF0]) = 1;
  LODWORD(STACK[0xD10]) = 1;
  LODWORD(STACK[0xD38]) = 1;
  return v8();
}

uint64_t sub_24494D6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0xB7C]) = v9;
  LODWORD(STACK[0xB80]) = v8;
  LODWORD(STACK[0xCB0]) = v12;
  LODWORD(STACK[0xCB8]) = v11;
  LODWORD(STACK[0xA08]) = 0;
  return (*(a8 + 8 * (v10 - 13991)))(a1, a2, a3, (v10 - 15113) | 0x10EEu, a5, a6, a7, STACK[0xC48]);
}

uint64_t sub_24494D71C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 **a8)
{
  v9 = *(*STACK[0xC40] + 28);
  LODWORD(STACK[0xEB0]) = (2 * v9) & 0xF73F6FFA;
  v10 = *a8;
  v11 = ((((*a8)[107] - ((2 * (*a8)[107]) & 0xFF3Fu) + 14530) << 48) - 0x23000000000000) ^ 0x389F000000000000;
  v12 = STACK[0xCA8];
  v13 = (((*(STACK[0xCA8] + 1) - ((2 * *(STACK[0xCA8] + 1)) & 0x1B0u) - 850999557) << 32) - 0x2300000000) ^ 0xCD46C6D800000000;
  v14 = STACK[0xC58];
  v15 = (((*(STACK[0xC58] + 96) - ((2 * *(STACK[0xC58] + 96)) & 0x1B2)) << 8) - 0x3764DE985CCD2700) ^ 0xC89B2167A332D900;
  v16 = (*a8)[369] ^ 0xF0;
  v17 = *(&off_278E1E490 + (a4 ^ 0x1F1E));
  STACK[0xE88] = v17;
  v17 += 802;
  LODWORD(v16) = *(v17 + v16);
  STACK[0xEE0] = v17;
  v19 = (((*(v14 + 45) - (v8 & (2 * *(v14 + 45))) + 795834185) << 32) - 0x1200000000) ^ 0x2F6F773700000000;
  v20 = (v15 - 0x780F5750F29605FFLL - ((2 * v15) & 0xEC111101893F400)) ^ 0x87F0A8AF0D69FA01 | (v10[23] + 0x4E6B6DDD9E847595 - ((2 * v10[23]) & 0x12A)) ^ 0x4E6B6DDD9E847595;
  LODWORD(v15) = *(v17 + (*(v14 + 221) ^ 0xF0));
  v21 = (v15 >> 3) | (32 * v15);
  v22 = (((v10[147] - ((2 * v10[147]) & 0x50)) << 16) - 0x59A85B2293D80000) ^ 0xA657A4DD6C280000;
  v23 = (v20 + 0x67565E1CBBFACE3ALL - ((2 * v20) & 0x4EACBC3977F59C74)) ^ 0x67565E1CBBFACE3ALL | (v22 + 0x50488F0ED70316B7 - ((2 * v22) & 0x20911E1DAE060000)) ^ 0x50488F0ED70316B7;
  LODWORD(v16) = ((v16 >> 3) | (32 * v16)) - (v16 << 6) - 32;
  v24 = v16 ^ (v16 >> 3) ^ (v16 >> 1);
  v25 = (((v10[182] - ((2 * v10[182]) & 0xCu) + 28) << 56) - 0x1600000000000000) ^ 0x600000000000000;
  v26 = (((v12[104] - ((2 * v12[104]) & 0x158u) + 10285240) << 40) - 0xC0000000000) ^ 0x9CF0AC0000000000;
  v27 = (((v12[98] - ((2 * v12[98]) & 0xCu) + 11544114) << 40) - 0x2C0000000000) ^ 0xB026060000000000;
  v28 = (((v12[66] - ((2 * v12[66]) & 0x196)) << 8) + 1062456064) ^ 0x3F53CB00;
  v29 = (((v12[4] - ((2 * v12[4]) & 0xBE)) << 16) + 1214185472) ^ 0x485F0000;
  LODWORD(STACK[0xEC8]) = a4;
  LODWORD(v15) = a4 + 8185;
  LODWORD(v16) = (a4 + 475107964) & 0xE3AE77E6;
  v30 = LODWORD(STACK[0xEB0]) + (v9 ^ 0x7B9FB7FD);
  LODWORD(STACK[0xE60]) = v30;
  LODWORD(STACK[0xE18]) = v16;
  LODWORD(STACK[0xE20]) = v15;
  v31 = v30 + ((v16 - 705390346) ^ v15);
  STACK[0xE78] = v11 - ((2 * v11) & 0x6C14000000000000);
  v32 = v13 - ((2 * v13) & 0x70BBABDA00000000) + 0x785DD5ED5A36E27ALL;
  v33 = v19 - ((2 * v19) & 0x157C30A600000000) - 0x3541E7ACB3A1BF68;
  LODWORD(v16) = v21 - ((2 * v21) & 0x3FC8) + 100;
  LODWORD(v15) = (v21 - ((2 * v21) & 0xC8) + 100);
  v34 = v25 - ((2 * v25) & 0xDA00000000000000) + 0x6D92BC57D2FBB703;
  v35 = v32 & 0xFB00000000;
  STACK[0xE68] = v26 - ((2 * v26) & 0x7AE9DC0000000000);
  STACK[0xE50] = v27 - ((2 * v27) & 0xCECBE0000000000);
  LODWORD(STACK[0xF2C]) = v31;
  v36 = v12[19];
  LODWORD(v17) = (((v24 ^ 0xFFFFFF8C) - (v24 ^ 0xA) - ((2 * ((v24 ^ 0xFFFFFF8C) - (v24 ^ 0xA))) & 0x30) + 24) ^ 0xFFFFFFE4) + (v24 ^ 0xFFFFFF8C);
  v37 = v12;
  v38 = v12[82];
  v39 = v32 & 0x400000000;
  LODWORD(v32) = v12[95];
  v40 = ((v34 & 0x9000000000000000 | v35) ^ 0xE900000000) - 0x75CDD53C4040CFD5 - ((2 * ((v34 & 0x9000000000000000 | v35) ^ 0xE900000000)) & 0x8F8F8F8F8F8F8F8FLL);
  v41 = ((v34 & 0x6F00000000000000 | v39) ^ 0x6D00000400000000) + 0x73C11FCE4A7A186ALL - ((2 * ((v34 & 0x6F00000000000000 | v39) ^ 0x6D00000400000000)) & 0xC7FFFFFFFFFFFFFFLL);
  LODWORD(v17) = (v17 ^ 0x7B) + ((2 * v17) & 0xF6) + 111;
  v42 = (((v17 - ((2 * v17) & 0x6ELL)) << 24) + 0x14BC408337000000) ^ 0x14BC408337000000;
  LODWORD(v15) = (v16 ^ (v15 >> 3) ^ (v15 >> 1) ^ 0x36) + ((((2 * (v16 ^ (v15 >> 3) ^ (v15 >> 1))) ^ 0xFFFFFFB4) - 2 * (((2 * (v16 ^ (v15 >> 3) ^ (v15 >> 1))) ^ 0xFFFFFFB4) & 0xE ^ (2 * (v16 ^ (v15 >> 3) ^ (v15 >> 1))) & 8) - 121) & 0xFFFFFFD4) - 128;
  v43 = (v42 + 0x6C80D2C40E4F7CDFLL - ((2 * v42) & 0x5901A5881C000000)) ^ 0x6C80D2C40E4F7CDFLL | (v23 - 0x3A6B801097AECE40 - ((2 * v23) & 0xB28FFDED0A26380)) ^ 0xC5947FEF685131C0;
  v44 = v43 - 0x13E3EBA8FAD18BDDLL - ((2 * v43) & 0x583828AE0A5CE846);
  v45 = (((v10[292] - ((2 * v10[292]) & 0xCA)) << 18) - 0x1F2F3EA56E6C0000) ^ 0xE0D0C15A91940000;
  v46 = v45 - ((2 * v45) & 0x29EDD47E78E00000) - 0x6B0915C0C38E663ELL;
  LODWORD(v45) = (v15 ^ 0x7E) + ((2 * v15) & 0xFC) - 126;
  LODWORD(v45) = (v45 - 154414821 - ((2 * v45) & 0x36)) ^ 0xF6CBD11B | (v28 + 11926721 - ((2 * v28) & 0x16BF800)) ^ 0xB5FCC1;
  LODWORD(v45) = (v45 - 852099806 - ((2 * v45) & 0x9A6BFA44)) ^ 0xCD35FD22 | (v29 - 482571183 - ((2 * v29) & 0xC6780000)) ^ 0xE33C8C51;
  LODWORD(v15) = v45 - ((2 * v45) & 0xB4A64E90) - 632084664;
  v47 = (v40 ^ 0x8A322AC3BFBF302BLL | v41 ^ 0x73C11FCE4A7A186ALL) + 0x328B1A0E3AE1C374 - ((2 * (v40 ^ 0x8A322AC3BFBF302BLL | v41 ^ 0x73C11FCE4A7A186ALL)) & 0x6516341C75C386E8);
  v48 = (((v15 & 0x710E47 | v33 & 0x2F00000000) ^ 0x300510640) + 0x77BCD37499C355FCLL - 2 * (((v15 & 0x710E47 | v33 & 0x2F00000000) ^ 0x300510640) & 0x2400410447 ^ v45 & 3)) ^ 0x77BCD37499C355FCLL | (((v15 & 0x8EF1B8 | v33 & 0xD000000000) ^ 0x5000022108) - 0x1ACA545CC27316C5 - ((2 * ((v15 & 0x8EF1B8 | v33 & 0xD000000000) ^ 0x5000022108)) & 0x1000119C270)) ^ 0xE535ABA33D8CE93BLL;
  v49 = v10;
  v50 = v10[267];
  v51 = ((((v48 - ((2 * v48) & 0x2373FA4BF62E3A12) - 0x2E4602DA04E8E2F7) << 59) ^ 0xB7FFFFFFFFFFFFFFLL) - 0x15FE3A441F8AEECLL + (((v48 - ((2 * v48) & 0x2373FA4BF62E3A12) - 0x2E4602DA04E8E2F7) << 58) ^ 0x2400000000000000) + 1) ^ 0xFEA01C5BBE075114 | ((v48 - ((2 * v48) & 0x2373FA4BF62E3A12) - 0x2E4602DA04E8E2F7) >> 6);
  v52 = (v51 ^ 0x346E7F497EC5C74) - 0x2D20CC622F7B7212 - ((2 * (v51 ^ 0x346E7F497EC5C74)) & 0xA5BE673BA1091BDCLL);
  v53 = STACK[0xE88];
  v54 = STACK[0xE88] + 12;
  LODWORD(v16) = *(v54 + ((((v38 >> 7) | (2 * v38)) - ((4 * v38) & 0xB0) - 40) ^ 0x13));
  STACK[0xEB0] = v54;
  v55 = STACK[0xC58];
  v56 = *(STACK[0xC58] + 81);
  LODWORD(v41) = v10[259];
  STACK[0xE48] = (v44 ^ 0xEC1C1457052E7423 | v47 ^ 0x328B1A0E3AE1C374) - ((2 * (v44 ^ 0xEC1C1457052E7423 | v47 ^ 0x328B1A0E3AE1C374)) & 0x381710512B294F5CLL);
  v57 = (2 * (((v51 ^ 0x346E7F497EC5C74) - 2 * ((v51 ^ 0x346E7F497EC5C74) & 0x1C542515CD27CEFBLL ^ v51 & 2) + 0x5E542515CD27CEF9) ^ v52)) ^ 0x19162D103B46862ELL;
  v58 = ((v57 - 0x342936D882DFF12BLL - ((2 * v57) & 0x97AD924EFA401DA8)) ^ 0xCBD6C9277D200ED5) + (v52 ^ 0xD2DF339DD0848DEELL);
  v59 = (v58 - ((2 * v58) & 0x3C48E8B252651DEELL) - 0x61DB8BA6D6CD7109) ^ v46;
  LODWORD(v39) = v16 ^ 0xFFFFFFDE;
  LODWORD(v27) = (-73 * (v16 ^ 0xFFFFFFDE)) ^ 0x7F;
  v60 = (((v32 - ((2 * v32) & 0x116) + 50322) << 48) - 0x7000000000000) ^ 0xC48B000000000000;
  STACK[0xE38] = v60 - ((2 * v60) & 0x6B1C000000000000);
  LODWORD(v26) = v10[330];
  v61 = *(v53 + 270 + ((83 * v36 - ((-90 * v36) & 0x9F) + 79) ^ 0xAELL));
  v62 = (((v10[70] - ((2 * v10[70]) & 0x50)) << 24) - 0x76627E59D8000000) ^ 0x899D81A628000000;
  v63 = v62 - 0x21D820999997D109 - ((2 * v62) & 0x3C4FBECCCC000000);
  *(&v64 + 1) = v59 ^ 0x918B947168FFAFLL;
  *&v64 = v59 ^ 0x7777777777777777;
  v65 = (v64 >> 58) - ((2 * (v64 >> 58)) & 0xCA807374A4264A3ALL);
  v66 = (((v10[181] - ((2 * v10[181]) & 0x126u) + 3114184) << 40) - 0x350000000000) ^ 0x2F84930000000000;
  STACK[0xE40] = v66 - ((2 * v66) & 0x51B2580000000000);
  v67 = (((v50 - ((2 * v50) & 0x2Au) + 63) << 56) - 0x2A00000000000000) ^ 0x1500000000000000;
  v68 = v67 - ((2 * v67) & 0xBFFFFFFFFFFFFFFFLL);
  v69 = ((((v27 + 110 * v39 - 127) - ((2 * (v27 + 110 * v39 - 127)) & 0x16CLL)) << 8) - 0x718A2A1666B74A00) ^ 0x8E75D5E99948B600;
  v70 = v10[296];
  LODWORD(v41) = *(v54 + ((((v41 >> 7) | (2 * v41)) - ((4 * v41) & 0x4C) - 90) ^ 0x6DLL));
  v71 = (((v26 - ((2 * v26) & 0x70) + 247) << 56) - 0x3F00000000000000) ^ 0xB800000000000000;
  v72 = v71 - ((2 * v71) & 0xD600000000000000);
  v73 = (v69 + 0x92A2161073D7FLL - ((2 * v69) & 0x125442C20E7A00)) ^ 0x92A2161073D7FLL | (v56 - 0x5753736D254D19C6 - ((2 * v56) & 0x74)) ^ 0xA8AC8C92DAB2E63ALL;
  v74 = v73 + 0x5695247A59BC2690 - ((2 * v73) & 0x2D2A48F4B3784D20);
  v75 = v55[174];
  STACK[0xE70] = v61;
  v76 = (((v37[44] - ((2 * v37[44]) & 0x66)) << 8) - 0x7E6E4868A8ACCD00) ^ 0x8191B79757533300;
  v77 = v76 + 0x1DA80C4223DEF57DLL - ((2 * v76) & 0x3B50188447BDEA00);
  LODWORD(v73) = (-((16 * v61) ^ 0xFFFFFFE0) - 9) ^ 0xFFFFFFF7 | (v61 >> 4);
  LODWORD(v73) = ((v73 ^ 4) - ((2 * v73) & 0x22) - 111) ^ 0x91;
  v78 = (((v73 - ((2 * v73) & 0x178)) << 16) + 0x2341377B6ABC0000) ^ 0x2341377B6ABC0000;
  v79 = *(STACK[0xEE0] + (v70 ^ 0xF0));
  v80 = (((v49[243] - 2 * (v49[243] & 0x7Fu) + 48310) << 48) - 0x37000000000000) ^ 0xBC7F000000000000;
  v81 = v80 - ((2 * v80) & 0x1FCE000000000000);
  LODWORD(v60) = ((2 * v41 - ((4 * v41) & 0xFFFFFFDF) - 18) & 0xFFFFFFBC ^ 0x53) + v41;
  LODWORD(v41) = v10[325];
  v82 = (v78 - 0x6821FDBE9D95AEAALL - ((2 * v78) & 0x2FBC0482C4D40000)) ^ 0x97DE0241626A5156 | v74 ^ 0x5695247A59BC2690;
  v83 = ((((-73 * v60 + 105) - ((2 * (-73 * v60 + 105)) & 0x7Cu) - 1232827072) << 32) - 0x200000000) ^ 0xB6848D3E00000000;
  v84 = (v82 - 0x5144137571B1CDABLL + (~(2 * v82) | 0xA28826EAE3639B55) + 1) ^ 0xAEBBEC8A8E4E3255 | v63 ^ 0xDE27DF6666682EF7;
  v85 = (((v75 - ((2 * v75) & 0x60)) << 16) - 0x302F3C6D40D00000) ^ 0xCFD0C392BF300000;
  v86 = v85 - 0x7F3661D5F5A41E6 - ((2 * v85) & 0x701933C5414A0000);
  v87 = (v84 + 0x30C9CEDA82D02BBDLL - ((2 * v84) & 0x61939DB505A0577ALL)) ^ 0x30C9CEDA82D02BBDLL | (v83 - 0x64336A3EE3F1D357 - ((2 * v83) & 0x37992B8200000000)) ^ 0x9BCC95C11C0E2CA9;
  v88 = v87 - ((2 * v87) & 0x5D698C9FE6D9E7EELL);
  LODWORD(v87) = *(STACK[0xEE0] + (v55[16] ^ 0xF0));
  v89 = ((v79 >> 3) | (32 * v79)) + (~(v79 >> 2) | 0xFFFFFFC5) - 98;
  LOBYTE(v74) = (~(6 * v55[191]) | 0xF7) - 53 * v55[191];
  LODWORD(v83) = (((v79 >> 3) | (32 * v79)) + (~(v79 >> 2) | 0xC5) - 98);
  v90 = (v49[373] + 0xBFA1E8512A5B6F9 - ((2 * v49[373]) & 0xFFF3)) ^ 0xBFA1E8512A5B6F9 | v86 ^ 0xF80C99E2A0A5BE1ALL;
  LOBYTE(v86) = v37[3];
  v91 = (v90 - 0x78212EB0DE8164D7 - ((2 * v90) & 0xFBDA29E42FD3652)) ^ 0x87DED14F217E9B29 | v77 ^ 0x1DA80C4223DEF57DLL;
  v92 = (((v37[102] - ((2 * v37[102]) & 0x6Cu) - 545123486) << 32) - 0x2C00000000) ^ 0xDF82133600000000;
  v93 = v92 + 0x1AE4166862C64A64 + (~(2 * v92) | 0xCA37D32FFFFFFFFFLL);
  LODWORD(v70) = ((v87 >> 3) | (32 * v87)) - ((2 * ((v87 >> 3) | (32 * v87))) & 0xFFFFFF87) - 61;
  LODWORD(v87) = (v89 ^ (v83 >> 3) ^ (v83 >> 1) ^ 0x46) - 22;
  LODWORD(v87) = (v87 ^ 0x66) + ((2 * v87) & 0xCC) - 102;
  v94 = (((v87 - ((2 * v87) & 0x1D0)) << 24) - 0x41F6B62018000000) ^ 0xBE0949DFE8000000;
  v95 = (((v37[43] - ((2 * v37[43]) & 0xC4u) + 155) << 56) - 0x3900000000000000) ^ 0x6200000000000000;
  v96 = v95 - ((2 * v95) & 0xA800000000000000);
  STACK[0xE80] = v10;
  v97 = (v94 + 0x7918DA67824A8F6 - ((2 * v94) & 0xF231B4CF0000000)) ^ 0x7918DA67824A8F6 | (v91 - 0x1E9608019F8A5389 - ((2 * v91) & 0x42D3EFFCC0EB58EELL)) ^ 0xE169F7FE6075AC77;
  LOBYTE(v91) = 83 * v86 - ((-90 * v86) & 0xF4);
  v98 = (((v49[144] - ((2 * v49[144]) & 0x114)) << 8) - 0x2560F9944F6C7600) ^ 0xDA9F066BB0938A00;
  v99 = v98 - 0x271D98C62D84E9D7 - ((2 * v98) & 0x31C4CE73A4F62C00);
  v100 = (((((v70 ^ (v70 >> 3) ^ (v70 >> 1) ^ 0x3C) - 22) - ((2 * ((v70 ^ (v70 >> 3) ^ (v70 >> 1) ^ 0x3C) - 22)) & 0xBA) + 15790181) << 40) - 0x80000000000) ^ 0xF0F05D0000000000;
  v101 = v100 - ((2 * v100) & 0xB3EBC0000000000);
  LODWORD(v100) = v55[133];
  STACK[0xE88] = v53 + 536;
  v102 = *(v53 + 536 + ((v74 - 123) ^ 0xEALL));
  LODWORD(v91) = *(v53 + 270 + ((v91 + 122) ^ 0x9BLL));
  v103 = (v97 - 0x7D68C6A43CB4B5D1 - ((2 * v97) & 0x52E72B78696945ELL)) ^ 0x8297395BC34B4A2FLL | (v93 + 1) ^ 0x1AE4166862C64A64;
  v104 = v103 - ((2 * v103) & 0x15A270DAE2A55418);
  v105 = (((v41 - ((2 * v41) & 0x18A) + 17865) << 48) - 0x4000000000000) ^ 0x45C5000000000000;
  v106 = v105 - ((2 * v105) & 0x368000000000000);
  v107 = (((v49[173] - ((2 * v49[173]) & 0xFF83u) - 791958271) << 32) - 0x4000000000) ^ 0xD0CBACC100000000;
  v108 = v107 + 0x3951F5E77C0ECBCALL - ((2 * v107) & 0x72A3EBCE00000000);
  v109 = (((v100 - ((2 * v100) & 0x42) + 16981) << 48) - 0x34000000000000) ^ 0x4221000000000000;
  v110 = v109 + 0x57102BB14EF4743 - ((2 * v109) & 0xAE2000000000000);
  DWORD1(v64) = v91 ^ 0xE;
  LODWORD(v64) = (v91 ^ 0x40) << 24;
  v111 = v55;
  v112 = v55[194];
  LODWORD(v91) = (v102 ^ 0xFFFFFFD4 ^ (v102 >> 3) & 0xF) + 62;
  v113 = (STACK[0xE50] - 0x3989A02F754FF4E3) ^ (STACK[0xE38] - 0x4A71E9C864EF382CLL) ^ ((LODWORD(STACK[0xE60]) - 2074064893) - ((2 * (LODWORD(STACK[0xE60]) - 2074064893)) & 0x1389B6018) + 0x6EC29D249C4DB00CLL) ^ (v68 - 0x20EA49AC18D26D1CLL) ^ (v65 - 0x1ABFC645ADECDAE3);
  LODWORD(v91) = (v91 ^ 0x62) + ((2 * v91) & 0xC4) - 98;
  v114 = (((v91 - ((2 * v91) & 0x146)) << 16) + 0x3E7D1651D1A30000) ^ 0x3E7D1651D1A30000;
  v115 = (((v111[135] + 3591487 - ((2 * v111[135]) & 0x1111u) + 1387) << 40) - 0x220000000000) ^ 0x36D2880000000000;
  v116 = ((((v64 >> 28) - ((2 * (v64 >> 28)) & 0x1FALL)) << 24) - 0x590C16F903000000) ^ 0xA6F3E906FD000000;
  v117 = v112 - 0x73685354C432BE2BLL - ((2 * v112) & 0x1AA);
  v118 = (v114 - 0x4BFA5DCF68F7C5A1 + (~(2 * v114) | 0x97F4BB9ED1EFFFFFLL) + 1) ^ 0xB405A23097083A5FLL | v99 ^ 0xD8E26739D27B1629;
  v119 = (v118 + 0x445BEF3E99295761 - ((2 * v118) & 0x8B7DE7D3252AEC2)) ^ 0x445BEF3E99295761 | v117 ^ 0x8C97ACAB3BCD41D5;
  v120 = (v116 - 0x3D4627BDD9378440 - ((2 * v116) & 0x1020844C000000)) ^ 0xC2B9D84226C87BC0 | v108 ^ 0x3951F5E77C0ECBCALL;
  v121 = (v119 + 0x2F2928C8B288ACE7 - ((2 * v119) & 0x5E525191651159CELL)) ^ 0x2F2928C8B288ACE7 | (v120 - 0x18990A9BD471E5B8 - ((2 * v120) & 0x4ECDEAC8571C3490)) ^ 0xE766F5642B8E1A48;
  v122 = (((*(STACK[0xCA8] + 46) - ((2 * *(STACK[0xCA8] + 46)) & 0x7Au) + 83) << 56) - 0x1600000000000000) ^ 0x3D00000000000000;
  v123 = (v122 + 0x4FBBD7AA1BC408D7 - ((2 * v122) & 0x9FFFFFFFFFFFFFFFLL)) ^ 0x4FBBD7AA1BC408D7 | v110 ^ 0x57102BB14EF4743;
  v124 = (v123 + 0x3351A45D62EBB938 - ((2 * v123) & 0x66A348BAC5D77270)) ^ 0x3351A45D62EBB938 | (v115 - 0x6F11C485EE35A07 - ((2 * v115) & 0x721DC60000000000)) ^ 0xF90EE3B7A11CA5F9;
  v125 = (v121 + 0x20CE42EABC2B0333 - ((2 * v121) & 0x419C85D578560666)) ^ 0x20CE42EABC2B0333 | (v124 + 0x2BA5D65804315413 - ((2 * v124) & 0x574BACB00862A826)) ^ 0x2BA5D65804315413;
  v126 = v125 - ((2 * v125) & 0xD821C3D7967FE018) - 0x13EF1E1434C00FF4;
  v127 = (STACK[0xE40] - 0x5726D3048275F2D0) ^ (v72 + 0x6B0F61F3F7904FEDLL) ^ (v81 - 0x3018113F94D6855DLL) ^ (v88 - 0x114B39B00C930C09) ^ v113;
  v128 = (v96 + 0x54236E975ADB55A9) ^ (v106 - 0x7E4B3C8321B21986) ^ (v101 - 0x3A60A13962FD4E6ELL) ^ (v104 - 0x352EC7928EAD55F4);
  v129 = (STACK[0xE68] + 0x7D74EE43B43E3C48) ^ (STACK[0xE78] + 0x760A95887D9DF0E5) ^ (STACK[0xE48] - 0x63F477D76A6B5852) ^ v126;
  *(&v64 + 1) = v113 ^ 0x3B33229EDA3;
  *&v64 = v113 ^ 0xB7AA240000000000;
  v130 = (v64 >> 42) - ((2 * (v64 >> 42)) & 0xA2E25E7AF0709CC4) + 0x51712F3D78384E62;
  *(&v64 + 1) = v130 ^ 0x384E62;
  *&v64 = v130 ^ 0x51712F3D78000000;
  v131 = (v64 >> 22) - ((2 * (v64 >> 22)) & 0x1CC03FF4DEF20A2) - 0x7F19FE0059086FAFLL;
  v132 = (((v129 ^ 0xC819EACDA4941C86) - 0x41D816307A066968) ^ 0x5FAFF58FFEFFF7E5) + ((2 * ((v129 ^ 0xC819EACDA4941C86) - 0x41D816307A066968)) & 0xBF5FEB1FFDFFEFCALL) - 0x5FAFF58FFEFFF7E4 + ((((2 * v129) ^ 0x9033D59B4928390CLL) - ((2 * ((2 * v129) ^ 0x9033D59B4928390CLL)) & 0x6E51FE91A5978A78) + 0x7728FF48D2CBC53CLL) & 0x7C4FD39F0BF32D30 ^ 0x8BF72CF7FD3CFACFLL);
  v133 = v131 ^ (((v127 ^ 0xC1308D32282A962FLL) & (v128 ^ 0x579816D85731A7B4)) - ((2 * ((v127 ^ 0xC1308D32282A962FLL) & (v128 ^ 0x579816D85731A7B4))) & 0xDFC53B9AF69F0B8ALL) + 0x6FE29DCD7B4F85C5);
  v134 = (v131 ^ 0x4585D97143ED8581) & ((v132 + 0x3FE7AF4DFA2B7BFFLL - ((2 * v132) & 0x7FCF5E9BF456F7FELL)) ^ 0x3FE7AF4DFA2B7BFFLL);
  v135 = v129 ^ 0xD7F168267790BB5DLL ^ (((v131 ^ 0xBA7A268EBC127A7ELL) & (v127 ^ 0x3ECF72CDD7D569D0)) - ((2 * ((v131 ^ 0xBA7A268EBC127A7ELL) & (v127 ^ 0x3ECF72CDD7D569D0))) & 0x24CF66D7154DEE8CLL) + 0x1267B36B8AA6F746);
  v136 = (v134 - ((2 * v134) & 0x846974904DCF2AF8) - 0x3DCB45B7D9186A84) ^ v126 ^ v128;
  v137 = v136 ^ 0xBC6EEE562F84C461;
  v138 = v136 ^ 0xBC6EEE562F84C461 ^ v135;
  v139 = v133 ^ v135;
  v140 = (((v129 ^ 0x89C1FCFDDE9275E1) & (v126 ^ v128 ^ 0xF70BF009506D2FCELL)) - ((2 * ((v129 ^ 0x89C1FCFDDE9275E1) & (v126 ^ v128 ^ 0xF70BF009506D2FCELL))) & 0xE19CF95BBBD8712CLL) + 0x70CE7CADDDEC3896) ^ v128;
  v141 = (((v126 ^ 0x5F6C192EF8A37785) + 1) ^ 0x5FFFFFEFEFF3FFD7) + ((2 * ((v126 ^ 0x5F6C192EF8A37785) + 1)) & 0xBFFFFFDFDFE7FFAELL) - 0x5FFFFFEFEFF3FFD7 + (((v126 ^ v128 ^ 0x8F40FF6AF92D031 | v128 ^ 0xA867E927A8CE584BLL) - 0x508FD22AA2DF0535 - ((2 * (v126 ^ v128 ^ 0x8F40FF6AF92D031 | v128 ^ 0xA867E927A8CE584BLL)) & 0x5EE05BAABA41F596)) ^ 0xAF702DD55D20FACBLL);
  v142 = (v141 - ((2 * v141) & 0x6D8C4271D9065298) + 0x36C62138EC83294CLL) ^ v127;
  v143 = ((v138 << 45) ^ 0x6FC4200000000000) - 0x1BE538D1601021DELL - ((2 * ((v138 << 45) ^ 0x6FC4200000000000)) & 0xC835800000000000);
  v144 = v140 ^ v142;
  v145 = v140 ^ v142 ^ 0x882D1FF066CE575DLL;
  v146 = (v138 ^ ((v138 ^ 0x2979A97A2CC81DELL) - ((2 * (v138 ^ 0x2979A97A2CC81DELL) + 2) & 0xB3D4C51C1AD449EALL) - 0x26159D71F295DB0ALL) ^ (((v138 >> 19) ^ 0x1FAD0CAD0BA6) - (v138 ^ 0xFD687AC5519E7587 ^ (v138 >> 19)) - ((2 * (((v138 >> 19) ^ 0x1FAD0CAD0BA6) - (v138 ^ 0xFD687AC5519E7587 ^ (v138 >> 19)))) & 0xCD0054437D1C7680) - 0x197FD5DE4171C4C0) ^ 0xC2022DC7EED76194) + ((v138 >> 19) ^ 0x1FAD0CAD0BA6);
  v147 = ((2 * v146) & 0x3AEFEFFEDBFFF7FELL) + (v146 ^ 0x9D77F7FF6DFFFBFFLL);
  v148 = v147 + 0x6288080092000401;
  v149 = (((v143 ^ 0xE41AC72E9FEFDE22 ^ (v147 + 0x6288080092000401)) - ((2 * (v143 ^ 0xE41AC72E9FEFDE22 ^ (v147 + 0x6288080092000401))) & 0x2E6A342EC6793F2) + 0x17351A17633C9F9) ^ 0xFE8CAE5E89CC3606) + v147;
  v150 = ((8 * v139) ^ 0xF7F327E9FC8D8460) - ((2 * ((8 * v139) ^ 0xF7F327E9FC8D8460)) & 0x15677C116B881770) + 0xAB3BE08B5C40BBBLL;
  v151 = v150 & 0xC17C634844EC1E10;
  v152 = ((v142 << 58) ^ 0x9400000000000000) - 0x4CF3E6AFCB6997DFLL - ((2 * ((v142 << 58) ^ 0x9400000000000000)) & 0x6000000000000000);
  v153 = v142 ^ (v142 >> 1);
  v154 = (v143 ^ ((v143 ^ 0x1BE538D1601021DDLL) - ((2 * (v143 ^ 0x1BE538D1601021DDLL) + 2) & 0x44C8DF4AB5DB98D0) + 0x22646FA55AEDCC69) ^ 0x80D6879806FC4927 ^ (v149 - ((2 * v149 - 0x3AEFEFFEDBFFF7FCLL) & 0x8D505E2787FCB6DALL) - 0x56CFC8EBAA01A091)) + v148;
  v155 = v154 - ((2 * v154) & 0xA81B2147185E124CLL) - 0x2BF26F5C73D0F6DALL;
  v156 = (((v136 ^ 0xBC6EEE562F84C461) << 23) ^ 0xE16158BF06000000) - ((2 * (((v136 ^ 0xBC6EEE562F84C461) << 23) ^ 0xE16158BF06000000)) & 0x8397151375000000) - 0x3E347576452BC99ELL;
  v157 = v150 & 0x3E839CB7BB13E1E8;
  *(&v64 + 1) = v153 ^ 0x18BDD4F7;
  *&v64 = v153 ^ 0xC5F11F3280000000;
  v158 = (v64 >> 31) - ((2 * (v64 >> 31)) & 0xA50C87174A3C4C88);
  *(&v64 + 1) = v138 ^ 0xD337E21;
  *&v64 = v138 ^ 0xFD68656850000000;
  v159 = (v64 >> 28) - ((2 * (v64 >> 28)) & 0x247B2F76868A0858) - 0x6DC26844BCBAFBD4;
  v160 = ((v139 << 25) ^ 0xFA7F236118000000) - ((2 * ((v139 << 25) ^ 0xFA7F236118000000)) & 0xBD64B09628000000) - 0x214DA7B4EA8EA0FCLL;
  v161 = (v158 + 0x5286438BA51E2644) ^ (((v142 & 1) << 32) | 0xEFCE3F504B86EB21);
  *(&v64 + 1) = v161 ^ 0x1DF9B5BD6;
  *&v64 = v161 ^ 0xEB326D2600000000;
  v163 = (v64 >> 33) - ((2 * (v64 >> 33)) & 0x890075BED5CC62CLL);
  v164 = ((0x7BB7FC5209519CE9 - v163) & 0x8000000000000 | (((((0x7BB7FC5209519CE9 - v163) & 0x8000000000000uLL) >> 51) & 1) << 52)) ^ 0xFFCFFFE5FCEDF72ELL;
  v165 = (v142 >> 6) ^ 0x21A87A88C435A62;
  v166 = v145 ^ (v145 >> 10);
  STACK[0xE78] = v166;
  v167 = ((v151 ^ (v139 ^ (v139 >> 61) ^ 0x56FA132876A44643) & 0xC17C634844EC1E16 | v157 ^ (v139 ^ (v139 >> 61) ^ 0x56FA132876A44643) & 0x3E839CB7BB13E1E9) ^ 0x62B7C9DDFCF1FD76) - ((2 * ((v151 ^ (v139 ^ (v139 >> 61) ^ 0x56FA132876A44643) & 0xC17C634844EC1E16 | v157 ^ (v139 ^ (v139 >> 61) ^ 0x56FA132876A44643) & 0x3E839CB7BB13E1E9) ^ 0x62B7C9DDFCF1FD76)) & 0x22C84276BD4BE430) + 0x1164213B5EA5F218;
  v168 = ((v164 + 0x30001A031208D2) & v165) + 0x25E77959787B0C63 - ((2 * ((v164 + 0x30001A031208D2) & v165)) & 0x3C0000000000000) == 0x25E77959787B0C63;
  v169 = v164 + 0x6B7D8DFFEF9B99F6;
  v170 = (v163 - 0x7BB7FC5209519CEALL) & 0xFFF7FFFFFFFFFFFFLL;
  v171 = 0x6B1D8DCBE9778852 - v164;
  if (v168)
  {
    v171 = v169;
  }

  v172 = v167 ^ (v139 >> 39);
  v173 = (v165 - 0x6B4D8DE5EC899124 + v171 - ((2 * (v165 - 0x6B4D8DE5EC899124 + v171)) & 0xEABDCA9141C627A2) - 0xAA11AB75F1CEC2FLL) ^ v170;
  v174 = (2 * (((v173 ^ 0xE800000000000000) & (v152 ^ 0xB30C195034966821)) - ((2 * ((v173 ^ 0xE800000000000000) & (v152 ^ 0xB30C195034966821))) & 0x2B7F3C469CCF36ECLL)) - 0x5480C3B96330C914) ^ 0xAB7F3C469CCF36ECLL;
  v162 = ((v145 << 54) ^ 0x1F00000000000000) - 0x359EAF10B3DD9B4CLL - ((2 * ((v145 << 54) ^ 0x1F00000000000000)) & 0x9480000000000000);
  v175 = v166 ^ 0xC7623CF63ECE9632 ^ ((v162 ^ 0xCA6150EF4C2264B4 | (v144 >> 17) ^ 0x289FE2184EBLL) - ((2 * (v162 ^ 0xCA6150EF4C2264B4 | (v144 >> 17) ^ 0x289FE2184EBLL)) & 0x1303F0864E27A95ALL) - 0x767E07BCD8EC2B53);
  v176 = (((v173 ^ 0xE99F2DBCFD707839) + (v152 ^ 0xB30C195034966821)) ^ 0xB3E57E35FFF2EFFDLL) + ((2 * ((v173 ^ 0xE99F2DBCFD707839) + (v152 ^ 0xB30C195034966821))) & 0x67CAFC6BFFE5DFFALL) + 0x4C1A81CA000D1004 + ((v174 - ((2 * v174) & 0x492054C71A2471E4) + 0x24902A638D1238F3) ^ 0xDB6FD59C72EDC70CLL);
  v177 = v172 ^ v160;
  v178 = ((v145 << 47) ^ 0x6C3E000000000000) - ((2 * ((v145 << 47) ^ 0x6C3E000000000000)) & 0x1AD7000000000000) + 0xD6BAC9DAEF60DDALL;
  v179 = v175 & 0x9BA160D415C329C2 ^ v178 & 0x9BA1000000000000;
  *(&v180 + 1) = v172 ^ v173 ^ 0x76E8;
  *&v180 = v177 ^ 0x720503653E820000 ^ (v176 - ((2 * v176) & 0x7BA6F42AEA56AA2ELL) - 0x422C85EA8AD4AAE9);
  v181 = (v180 >> 15) - ((2 * (v180 >> 15)) & 0x4B8785C93839B744) - 0x5A3C3D1B63E3245ELL;
  v182 = v178 & 0x645E800000000000;
  *(&v180 + 1) = v136 ^ 0x6D;
  *&v180 = v136 ^ 0x9DF37394ED35BA00;
  v183 = (v180 >> 7) - ((2 * (v180 >> 7)) & 0xCC16F7E9C47DBF5CLL) - 0x19F4840B1DC12052;
  *(&v180 + 1) = v181 ^ 0x17DCBC9428DB5;
  *&v180 = v181 ^ 0x890000000000000;
  v184 = (v180 >> 49) - ((2 * (v180 >> 49)) & 0xF600C15E4FA7F634) + 0x7B0060AF27D3FB1ALL;
  v185 = v137 ^ (v137 >> 41) ^ v183 ^ v156;
  v186 = ((v175 & 0x645E9F2BEA3CD63DLL ^ v182 | v179) ^ 0xCE95E8BE9A1E5CD5) + 0x6015E8F7E0EB17A5 - ((2 * ((v175 & 0x645E9F2BEA3CD63DLL ^ v182 | v179) ^ 0xCE95E8BE9A1E5CD5)) & 0xC02BD1EFC1D62F4ALL);
  v187 = v185 ^ 0x7B6ADCC504DC6D71 ^ v159 ^ v155;
  v188 = v186 ^ v185 ^ 0x7B6ADCC504DC6D71;
  v189 = ((v187 ^ 0xC4F8489DAE02C68ALL) & (v177 ^ 0xCFD679704BA951D5)) - ((2 * ((v187 ^ 0xC4F8489DAE02C68ALL) & (v177 ^ 0xCFD679704BA951D5))) & 0x2001A378FD0FB9CLL) - 0x7EFFF2E438178232;
  v190 = v117 & 0x13;
  LOBYTE(v179) = v117 & 0x13 ^ 0x10;
  v191 = (((v188 & 0x10000000 ^ 0xE0512AF5D244900BLL) - 0x2DA2461B209D4177) ^ 0x52FFCE2F63E3DE9FLL) - ((((2 * (v188 & 0x10000000)) ^ 0x2078428A) + 1073741818) & 0x20000000);
  v192 = (((v184 ^ 0xDB6835FFF327D24CLL) & (v186 ^ 0x6015E8F7E0EB17A5)) - ((2 * ((v184 ^ 0xDB6835FFF327D24CLL) & (v186 ^ 0x6015E8F7E0EB17A5))) & 0x692FABFF2A5707DCLL) - 0x4B682A006AD47C12) ^ v177;
  v193 = (((v184 ^ 0x2497CA000CD82DB3) & (v177 ^ 0x3029868FB456AE2ALL)) - ((2 * ((v184 ^ 0x2497CA000CD82DB3) & (v177 ^ 0x3029868FB456AE2ALL))) & 0x3DDC36953FFA5952) + 0x1EEE1B4A9FFD2CA9) ^ v187;
  v194 = v192 ^ v193;
  v195 = v192 ^ v193 ^ 0x4A42B5DF5FF69F2ELL;
  v196 = v189 ^ v188;
  v197 = v193 ^ v189 ^ v188;
  v198 = ((((v197 ^ 0xC5A523EF229DB259) >> v179) + 0x5EA53F058BBCFC38 - ((2 * ((v197 ^ 0xC5A523EF229DB259) >> v179)) & 0xBD4A7E0B1779F870)) ^ 0x5EA53F058BBCFC38) >> (v190 ^ 3u);
  v199 = v198 - ((2 * v198) & 0x8FF7EE9432DB44FALL) + 0x47FBF74A196DA27DLL;
  v200 = (v187 ^ 0x3B07B76251FD3975) & (v188 & 0xFFFFFFFFEFFFFFFFLL ^ 0x5865A6155D18A81ALL ^ (((2 * v191) & 0xC0825148E4892016) + (v191 ^ 0x7BCFFDAE7BFFBD7BLL) - ((2 * (((2 * v191) & 0xC0825148E4892016) + (v191 ^ 0x7BCFFDAE7BFFBD7BLL)) + 0x47BDAEB7837764F2) & 0x8A8FFD3066C91780) - 0x16D92A0C0ADFC1C7));
  v201 = (v200 - ((2 * v200) & 0xDD01DC2CB0BD9B52) + 0x6E80EE16585ECDA9) ^ v186;
  v202 = v184 ^ (((v186 ^ 0x9FEA17081F14E85ALL) & (v185 ^ 0x65D6CBF9A4B590ELL)) - ((2 * ((v186 ^ 0x9FEA17081F14E85ALL) & (v185 ^ 0x65D6CBF9A4B590ELL))) & 0x43340D085A3872CELL) + 0x219A06842D1C3967);
  v203 = STACK[0xEE0];
  v204 = *(STACK[0xEE0] + (v194 >> 61) + 240);
  v205 = v201 ^ v202;
  LODWORD(v191) = ((v204 >> 3) - ((v204 >> 2) & 0x2C) + 86) ^ 0x56 | (32 * v204);
  *(&v180 + 1) = v205 ^ 0x659971CED8;
  *&v180 = v205 ^ 0xB98CA0000000000;
  v206 = (v180 >> 39) - ((2 * (v180 >> 39)) & 0x5E5A158A9E2CB326) + 0x2F2D0AC54F165993;
  LODWORD(v191) = ((v191 - ((2 * v191) & 0x4A) - 91) ^ ((v191 - ((2 * v191) & 0x4A) - 91) >> 3) ^ ((v191 - ((2 * v191) & 0x4A) - 91) >> 1) ^ 0x65) - 22;
  LODWORD(v191) = (v191 ^ 0x7B) + ((2 * v191) & 0xF6) - 123;
  v207 = v195 ^ (((8 * v195) ^ 0x70CA866A9D5144E0) - ((2 * ((8 * v195) ^ 0x70CA866A9D5144E0)) & 0x817724789D29DE70) - 0x3F446DC3B16B10C1) ^ (((v195 << 25) ^ 0x9AA7545138000000) - ((2 * ((v195 << 25) ^ 0x9AA7545138000000)) & 0x26A70A514000000) + 0x13538528A524C8FLL) ^ (v191 - ((2 * v191) & 0xEELL) + 0xE97E02098BBE177);
  *(&v180 + 1) = v206 ^ 0x1059F28;
  *&v180 = v206 ^ 0x7B24C3308A000000;
  v208 = (v180 >> 25) - ((2 * (v180 >> 25)) & 0x6E3C3E147A86EB72) + 0x371E1F0A3D4375B9;
  v209 = (v194 >> 39) ^ 0x8B7CA;
  v210 = ((v207 ^ 0x1D76A5B) & v209) - ((2 * ((v207 ^ 0x1D76A5B) & v209)) & 0x428BA);
  *(&v180 + 1) = v202;
  *&v180 = v202 ^ 0xAA1D6F7F3707051ALL;
  v211 = (((v207 ^ 0x81001A830FD76A5BLL) + v209) ^ 0x6F7CDFB7F6F35FEDLL) + ((2 * ((v207 ^ 0x81001A830FD76A5BLL) + v209)) & 0xDEF9BF6FEDE6BFDALL) - 0x6F7CDFB7F6F35FECLL + ((((2 * v210 + 0x20A986B1640428BALL) ^ 0x20A986B1640428BALL) - ((2 * ((2 * v210 + 0x20A986B1640428BALL) ^ 0x20A986B1640428BALL)) & 0x702456CE089E3A84) + 0x78122B67044F1D42) ^ 0x87EDD498FBB0E2BDLL);
  v212 = v211 + 0x38604492AF89DDD9 - ((2 * v211) & 0x70C089255F13BBB2);
  v213 = v202 ^ (v202 >> 6) ^ (((v202 << 58) ^ 0x6800000000000000) - ((2 * ((v202 << 58) ^ 0x6800000000000000)) & 0x7000000000000000) - 0x45EB427D5D213AD2) ^ ((v180 >> 1) - ((2 * (v180 >> 1)) & 0x18933B9C0CE1A8C4) - 0x73B66231F98F2B9ELL);
  *(&v180 + 1) = v196 ^ 0x56;
  *&v180 = v196 ^ 0x76749BF658AFE380;
  v214 = (v180 >> 7) - ((2 * (v180 >> 7)) & 0x7EB159105DC59D30) - 0x40A75377D11D3168;
  *(&v180 + 1) = v208 ^ 0x2FA;
  *&v180 = v208 ^ 0x43EB5A4E21A0A800;
  v215 = (v180 >> 10) - ((2 * (v180 >> 10)) & 0x5645623E3C717C04) + 0x2B22B11F1E38BE02;
  v216 = v212 ^ v213;
  *(&v180 + 1) = v196 ^ 0x1F658AFE3D6;
  *&v180 = v196 ^ 0x76749A0000000000;
  v217 = v196 ^ v214 ^ ((v180 >> 41) - ((2 * (v180 >> 41)) & 0x643F47505BFDBA58) - 0x4DE05C57D20122D4) ^ 0xFD61A25455283CC9;
  v218 = v197 ^ v217 ^ (v197 >> 28) ^ (((v197 << 45) ^ 0xB64B200000000000) - ((2 * ((v197 << 45) ^ 0xB64B200000000000)) & 0xBFA8000000000000) + 0x5FD407CD38E29851) ^ (((v197 << 36) ^ 0x29DB259000000000) - ((2 * ((v197 << 36) ^ 0x29DB259000000000)) & 0x9285798000000000) + 0x4942BCCA3F056564) ^ v199;
  v219 = v208 ^ (v208 >> 17) ^ (((v208 << 47) ^ 0x557D000000000000) - ((2 * ((v208 << 47) ^ 0x557D000000000000)) & 0x46ED000000000000) + 0x2376DAD926943103) ^ v215;
  v220 = v219 ^ 0x3FC9DA3A26FBFE11 ^ v217;
  v221 = (((v216 ^ 0x597781E33F032A64) & (v219 ^ 0x4BBF107DB42B352BLL)) + 0x539952096F70D758 - ((2 * ((v216 ^ 0x597781E33F032A64) & (v219 ^ 0x4BBF107DB42B352BLL))) & 0xA732A412DEE1AEB0)) ^ 0x539952096F70D758;
  v222 = (((v220 ^ 0xDDB033A63B4F86ELL) & (v218 ^ 0x129A592C68DE1F48)) - ((2 * ((v220 ^ 0xDDB033A63B4F86ELL) & (v218 ^ 0x129A592C68DE1F48))) & 0x7085B5D7B06208AALL) - 0x47BD251427CEFBABLL) ^ v219 ^ 0x3FC9DA3A26FBFE11;
  v223 = ((((2 * v219) ^ 0x977E20FB68566A56) + 0x24171EF1DBA1AA0CLL - 2 * (((2 * v219) ^ 0x977E20FB68566A56) & 0x24171EF1DBA1AA2CLL ^ (2 * v219) & 0x20)) ^ 0xDBE8E10E245E55F3) + (v219 ^ 0x4BBF107DB42B352BLL);
  v224 = ((v223 + 0x355D87D586E80A4FLL - ((2 * v223) & 0x6ABB0FAB0DD0149ELL)) ^ 0x355D87D586E80A4FLL) & (v220 ^ 0xF224FCC59C4B0791);
  v225 = (v221 + (v212 ^ 0x38604492AF89DDD9)) ^ 0x7EDBEF73EF6BB966;
  v226 = (2 * (v221 + (v212 ^ 0x38604492AF89DDD9))) & 0xFDB7DEE7DED772CCLL;
  v227 = (2 * ((v221 & (v212 ^ 0x38604492AF89DDD9)) - ((2 * (v221 & (v212 ^ 0x38604492AF89DDD9))) & 0x3B3464A1E765210ELL)) - 0x44CB9B5E189ADEF2) ^ 0xBB3464A1E765210ELL;
  v228 = ((v212 ^ 0x38604492AF89DDD9) & (v218 ^ 0xED65A6D39721E0B7)) - ((2 * ((v212 ^ 0x38604492AF89DDD9) & (v218 ^ 0xED65A6D39721E0B7))) & 0x9A17274710E36A80) + 0x4D0B93A38871B540;
  v229 = v218 ^ 0xC369F48E81CD9DDFLL ^ (((v212 ^ 0xC79FBB6D50762226) & (v213 ^ 0x9EE83A8E6F750842)) - ((2 * ((v212 ^ 0xC79FBB6D50762226) & (v213 ^ 0x9EE83A8E6F750842))) & 0x53DBE5C2BA99FE8CLL) + 0x29EDF2E15D4CFF46);
  v230 = v225 + v226 - 0x7EDBEF73EF6BB965 + ((v227 - ((2 * v227) & 0x8FD81DD823D71734) - 0x3813F113EE147466) ^ 0x3813F113EE147465);
  v231 = (v230 - ((2 * v230) & 0x8EB8734A27B1B254) + 0x475C39A513D8D92ALL) ^ v229;
  v232 = (v224 - ((2 * v224) & 0x5539C36AE7E2EE96) + 0x2A9CE1B573F1774BLL) ^ v216;
  v233 = v228 ^ v220;
  v234 = v229 ^ v233;
  v235 = v222 ^ v232;
  v236 = (((v229 ^ v233) << 36) ^ 0x19A6885000000000) - ((2 * (((v229 ^ v233) << 36) ^ 0x19A6885000000000)) & 0xD9F38DA000000000);
  *(&v180 + 1) = v229 ^ v233 ^ 0x26885;
  *&v180 = v229 ^ v233 ^ 0x6C46E53B91980000;
  v237 = ((v232 & 0x8000000000000000 | (v232 >> 1)) ^ 0xC405DDE28CC87C92) - ((2 * ((v232 & 0x8000000000000000 | (v232 >> 1)) ^ 0xC405DDE28CC87C92)) & 0xD16D51EA0BDF6B60) + 0x68B6A8F505EFB5B0;
  v238 = v232 & 0x7FFFFFFFFFFFFFFFLL ^ 0x80BBBC51990F925;
  v239 = v238 - (v232 & 0x7FFFFFFFFFFFFFFFLL ^ 0x60BD13301C7F4C95 ^ v237) - ((2 * (v238 - (v232 & 0x7FFFFFFFFFFFFFFFLL ^ 0x60BD13301C7F4C95 ^ v237))) & 0x6FB1C390AF0E86F2);
  v240 = ((~v232 << 63) | 0x725D03B900BC644DLL) ^ (v232 >> 6);
  v241 = (v232 << 58) ^ 0x9400000000000000;
  v242 = (v180 >> 19) - ((2 * (v180 >> 19)) & 0x5C6BD3B021924AF4) + 0x2E35E9D810C9257ALL;
  v243 = v231 ^ (v231 >> 61) ^ (v231 >> 39) ^ (((8 * v231) ^ 0xC29E13A55399FBB8) - ((2 * ((8 * v231) ^ 0xC29E13A55399FBB8)) & 0xAE913E7287578CA0) + 0x57489F3943ABC656) ^ (((v231 << 25) ^ 0xE954E67EEE000000) - ((2 * ((v231 << 25) ^ 0xE954E67EEE000000)) & 0x76B7C0F484000000) - 0x44A41F85BCBA90ECLL);
  v244 = (v237 ^ (v239 - 0x48271E37A878BC87) ^ ((v237 ^ 0x9749570AFA104A4FLL) - ((2 * (v237 ^ 0x9749570AFA104A4FLL) + 2) & 0x3984157D14FFD572) - 0x633DF54175801546) ^ 0x43AC4383D8171C70) + v238;
  v245 = v244 - ((2 * v244) & 0x6B95AB8D597E897ELL) - 0x4A352A395340BB41;
  v246 = ((((v235 << 54) ^ 0xD440000000000000) - 0x4519EE0D6465EEB1 - ((2 * ((v235 << 54) ^ 0xD440000000000000)) & 0x7580000000000000)) ^ 0xBAE611F29B9A114FLL | (v235 >> 10) ^ (v235 >> 17)) ^ 0x385D4C8CB928CDLL;
  v247 = (((v235 << 47) ^ 0xEFA8800000000000) - ((2 * ((v235 << 47) ^ 0xEFA8800000000000)) & 0xB31F000000000000) + 0x598F8778BCCBDE0DLL) ^ v235 ^ (v246 - ((2 * v246) & 0xB18E8ED5F9A31FBCLL) + 0x58C7476AFCD18FDELL);
  *(&v180 + 1) = ~v233;
  *&v180 = v233 ^ 0x82721F3891292900;
  v248 = v234 ^ (v234 >> 28) ^ (v236 - 0x13063920FC2E63B9) ^ v242;
  v249 = v233 ^ (v233 >> 41) ^ (((v233 << 23) ^ 0x9C489494BF800000) - ((2 * ((v233 << 23) ^ 0x9C489494BF800000)) & 0x217F489300000000) - 0x6F405BB67F87F4BCLL) ^ ((v180 >> 7) - ((2 * (v180 >> 7)) & 0xC4F29F172FFC3A94) + 0x62794F8B97FE1D4ALL);
  v250 = v247 ^ 0x166CA3A892522D1BLL ^ v249;
  v251 = v240 ^ (v241 - ((2 * v241) & 0x8FFFFFFFFFFFFFFFLL) - 0x3B59115EEFD0E61DLL) ^ v245 ^ v243 ^ 0xFC167B1648F39B2BLL;
  v252 = v248 ^ 0xAE8ACA3A46EC8201;
  v253 = (v248 ^ 0xAE8ACA3A46EC8201) - (v249 ^ 0xDE3E3EC0C002847FLL ^ v248) - ((2 * ((v248 ^ 0xAE8ACA3A46EC8201) - (v249 ^ 0xDE3E3EC0C002847FLL ^ v248))) & 0x5AFAC3835E1A13BALL) + 0x2D7D61C1AF0D09DDLL;
  v254 = ((((2 * v243) ^ 0x68817A6F545A6366) - ((2 * ((2 * v243) ^ 0x68817A6F545A6366)) & 0xC036280A8C7E8A04) - 0x1FE4EBFAB9C0BAFDLL) ^ 0x1FE4EBFAB9C0BAFCLL) + (v243 ^ 0xB440BD37AA2D31B3);
  v255 = ((v254 - 0xD991473A6722E66 - ((2 * v254) & 0xE4CDD718B31BA334)) ^ 0xF266EB8C598DD19ALL) & (v251 ^ 0x4947D0104A94D06DLL);
  v256 = (v249 ^ ((v249 ^ 0x8F4B0B057911F981) - ((2 * (v249 ^ 0x8F4B0B057911F981) + 2) & 0x1270F27F23D05508) - 0x76C786C06E17D57BLL) ^ v253 ^ 0xD4F1EC04B80B2527) + v252;
  v257 = v256 - 0x42AC104974EC0B0DLL - ((2 * v256) & 0x7AA7DF6D1627E9E6);
  v258 = (v255 - ((2 * v255) & 0x33CFF390C9CFB0ACLL) - 0x661806379B1827AALL) ^ v257;
  v259 = (((v257 ^ 0xBD53EFB68B13F4F3) & (v250 ^ 0x78DB3238402C5A18)) - ((2 * ((v257 ^ 0xBD53EFB68B13F4F3) & (v250 ^ 0x78DB3238402C5A18))) & 0xBD8B1F121E866D9ALL) + 0x5EC58F890F4336CDLL) ^ v247 ^ 0x166CA3A892522D1BLL;
  v260 = ((((2 * v250) ^ 0xE499B8F7FA74BCELL) - ((2 * ((2 * v250) ^ 0xE499B8F7FA74BCELL)) & 0x83B611C8) + 0x141DB08E4) & 0x1500C1868 ^ 0x140080860) - 2818968628;
  v261 = (((v251 ^ 0xB6B82FEFB56B2F92) & (v247 ^ 0xE1FC9A95AB6F8E82)) - ((2 * ((v251 ^ 0xB6B82FEFB56B2F92) & (v247 ^ 0xE1FC9A95AB6F8E82))) & 0x59CABE1900D8A708) - 0x531AA0F37F93AC7CLL) ^ v243 ^ 0xFC167B1648F39B2BLL ^ v258;
  v262 = (v250 ^ 0x8724CDC717D5A9D3) + (v260 ^ 0x5CFEF6EDFFFF9ABFLL) + ((2 * v260) & 0xB9FDEDDBFFFF3578) - 0x5CFEF6EDFFFF9ABFLL;
  v263 = v262 + 0x367F86A144C95F42 - ((2 * v262) & 0x6CFF0D428992BE84);
  v264 = (((v243 ^ 0xB440BD37AA2D31B3) & (v257 ^ 0x42AC104974EC0B0CLL)) - ((2 * ((v243 ^ 0xB440BD37AA2D31B3) & (v257 ^ 0x42AC104974EC0B0CLL))) & 0xEBC76EB9E4BB851CLL) - 0xA1C48A30DA23D72) ^ v263;
  v265 = (((v263 ^ 0x367F86A144C95F42) & (v247 ^ 0x1E03656A5490717DLL)) - ((2 * ((v263 ^ 0x367F86A144C95F42) & (v247 ^ 0x1E03656A5490717DLL))) & 0x2075F223CE1D5DD6) + 0x103AF911E70EAEEBLL) ^ v251;
  v266 = v261 ^ (v261 >> 61);
  v267 = v258 ^ v264;
  v268 = v259 ^ v265;
  v269 = (((v258 ^ v264) << 36) ^ 0x26DF366000000000) - ((2 * (((v258 ^ v264) << 36) ^ 0x26DF366000000000)) & 0xD9C464E000000000);
  v270 = ((((v258 ^ v264) << 45) ^ 0xBE6CC00000000000) - 0x4B2A1A3C51160C66 - ((2 * (((v258 ^ v264) << 45) ^ 0xBE6CC00000000000)) & 0x69ABC00000000000)) ^ 0xB4D5E5C3AEE9F39ALL | ((v258 ^ v264) >> 28) ^ 0x1BA10A773;
  v271 = v270 - ((2 * v270) & 0xCA4152A09A912718);
  v272 = ((8 * v261) ^ 0x12DC2BD0687E05E8) - ((2 * ((8 * v261) ^ 0x12DC2BD0687E05E8)) & 0x162472E7FDDC79F0) + 0xB123973FEEE3CFCLL;
  *(&v180 + 1) = v265 ^ 0x36;
  *&v180 = v265 ^ 0xC46F1FF16D113E80;
  v273 = (v180 >> 6) - ((2 * (v180 >> 6)) & 0x707575CA655ED6ECLL);
  v274 = v272 & 0x8EBBDC68AE67F808;
  *(&v180 + 1) = v265;
  *&v180 = v265 ^ 0xC46F1FF16D113EB6;
  v275 = (v180 >> 1) - ((2 * (v180 >> 1)) & 0x189F5B06761C44D0);
  v276 = v272 & 0x71442397519807F0 ^ v266 & 0x71442397519807F4;
  v277 = v274 ^ v266;
  v278 = (2 * (v277 & 0x20000000)) ^ 0x40000000 | v277 & 0x20000000;
  v279 = (((v261 << 25) ^ 0xF41A1F817A000000) + 0x1A186E1105909712 - ((2 * ((v261 << 25) ^ 0xF41A1F817A000000)) & 0x3430DC2208000000)) ^ 0x1A186E1105909712;
  v280 = ((v277 & 0x8EBBDC688E67F80BLL | v276) ^ 0x8949BC09D3E1FC41) - ((2 * ((v277 & 0x8EBBDC688E67F80BLL | v276) ^ 0x8949BC09D3E1FC41)) & 0x35D1232E9A043EF4);
  v281 = 0x460FF7CA602669 - v278;
  if (((v278 - 0x20000000) & v279) - 0x382EF8B973746098 - ((2 * ((v278 - 0x20000000) & v279)) & 0x8FA20E8D19173E74) == 0xC7D107468C8B9F68)
  {
    v281 = v278 | 0x460FF78A602669;
  }

  v282 = ((v231 ^ (v231 >> 61) ^ (v231 >> 39) ^ (((8 * v231) ^ 0xB8) - ((2 * ((8 * v231) ^ 0xB8)) & 0xA0) + 86) ^ 0x10) + 5) & 7;
  v283 = ((v268 ^ 0xB3CD8CF5BED540A4) >> ((STACK[0xE70] & 0x10) != 0)) + 0x523D4876BC046359 - ((2 * ((v268 ^ 0xB3CD8CF5BED540A4) >> ((STACK[0xE70] & 0x10) != 0))) & 0xA47A90ED7808C6B2);
  v284 = ((v264 ^ 0xF0CDFEE98DB3055BLL) >> (v282 ^ 3u)) + 0x19947D004894D1D6 - ((2 * ((v264 ^ 0xF0CDFEE98DB3055BLL) >> (v282 ^ 3u))) & 0x3328FA009129A3ACLL);
  v285 = (v280 - 0x65176E6892FDE086) ^ (v261 >> 39) ^ (v279 - 0x460FF7AA602669 + v281 - ((2 * (v279 - 0x460FF7AA602669 + v281)) & 0x979B3D0E482E57CELL) - 0x34326178DBE8D419);
  *(&v286 + 1) = v268 ^ 0xA4;
  *&v286 = v268 ^ 0xB3CD8CF5BED54000;
  v287 = ((v275 - 0x73B0527CC4F1DD98) ^ v265 ^ (v273 + 0x383ABAE532AF6B76) ^ v285 ^ 0x9991D68FCD46E743 ^ 0xB8AED108E1E7137CLL) + 0x32C210CF3AF13D88 - ((2 * (((v275 - 0x73B0527CC4F1DD98) ^ v265 ^ (v273 + 0x383ABAE532AF6B76) ^ v285 ^ 0x9991D68FCD46E743 ^ 0xB8AED108E1E7137CLL) & 0x32C210CF3AF13D8CLL ^ ((v275 - 0x73B0527CC4F1DD98) ^ v265 ^ (v273 + 0x383ABAE532AF6B76) ^ v285 ^ 0x9991D68FCD46E743) & 4)) ^ 8);
  v288 = (((v268 << 47) ^ 0xA052000000000000) - ((2 * ((v268 << 47) ^ 0xA052000000000000)) & 0xEF5C000000000000) + 0x77AE0CC4C5097B5ELL) ^ v268 ^ ((v286 >> 10) - ((2 * (v286 >> 10)) & 0x238DED47AD46E12CLL) - 0x6E39095C295C8F6ALL) ^ (((v283 ^ 0x523D4876BC046359) >> (((STACK[0xE70] & 0x10) != 0) ^ 0x11u)) - ((2 * ((v283 ^ 0x523D4876BC046359) >> (((STACK[0xE70] & 0x10) != 0) ^ 0x11u))) & 0x776B100DCBD4) + 0x43E43BB58806E5EALL);
  v289 = v288 ^ 0x9E7FE494E1525B20;
  v290 = (((v264 << 57) ^ 0xB600000000000000) - ((2 * ((v264 << 57) ^ 0xB600000000000000)) & 0xD800000000000000) + 0x6D951B669EAC05D1) ^ v264 ^ (((v284 ^ 0x19947D004894D1D6) >> (v282 ^ 4u)) - ((2 * ((v284 ^ 0x19947D004894D1D6) >> (v282 ^ 4u))) & 0x522F10F53ABBE8D6) + 0x2917887A9D5DF46BLL);
  v291 = v290 ^ 0xEBB1F53816C2948;
  v292 = ((v290 ^ 0xEBB1F53816C2948) & 0x5B8C69E65B2325BFLL ^ 0x1A8460A60B2205A9) + 0x464A308CC2DC26C9 - 2 * (((v290 ^ 0xEBB1F53816C2948) & 0x5B8C69E65B2325BFLL ^ 0x1A8460A60B2205A9) & 0x4208208442002499 ^ v290 & 0x10);
  *(&v286 + 1) = v264 ^ 0xE98DB3055BLL;
  *&v286 = v264 ^ 0xF0CDFE0000000000;
  v293 = ((v292 ^ 0x464A308CC2DC26C9 | v291 & 0xA4739619A4DCDA40 ^ 0xA0701200040CD800) + 0x380D030E11FA4DCLL - 2 * ((v292 ^ 0x464A308CC2DC26C9 | v291 & 0xA4739619A4DCDA40 ^ 0xA0701200040CD800) & 0x380D030E11FA4FCLL ^ v292 & 0x20)) ^ ((v286 >> 41) - ((2 * (v286 >> 41)) & 0xA982C1F82B217E52) + 0x54C160FC1590BF29);
  v294 = v293 ^ v288 ^ 0x9E7FE494E1525B20;
  v295 = v267 ^ (v267 >> 19) ^ (v269 - 0x131DCD81C471458CLL) ^ (v271 - 0x1ADF56AFB2B76C74) ^ v293;
  v296 = v295 ^ 0x7682643301E48568 ^ (((v287 ^ 0x32C210CF3AF13D88) & (v285 ^ 0xAEDAF0EFB7EE7C68)) - ((2 * ((v287 ^ 0x32C210CF3AF13D88) & (v285 ^ 0xAEDAF0EFB7EE7C68))) & 0xEC01FECBB3FE916ELL) + 0x7600FF65D9FF48B7);
  v297 = (((v287 ^ 0xCD3DEF30C50EC277) & (v288 ^ 0x16414D272579AE86)) - ((2 * ((v287 ^ 0xCD3DEF30C50EC277) & (v288 ^ 0x16414D272579AE86))) & 0x80FE097FEBB944B8) + 0x407F04BFF5DCA25CLL) ^ v285 ^ 0x9991D68FCD46E743 ^ v296;
  v298 = v287 ^ (((v293 ^ 0x5741B0CCF48F1BF5) & (v288 ^ 0xE9BEB2D8DA865179)) - ((2 * ((v293 ^ 0x5741B0CCF48F1BF5) & (v288 ^ 0xE9BEB2D8DA865179))) & 0x9445E7D61C32B9AALL) - 0x35DD0C14F1E6A32BLL);
  v299 = (((v285 ^ 0x51250F1048118397) & (v295 ^ 0xBADDDD1E6E95D8D9)) - ((2 * ((v285 ^ 0x51250F1048118397) & (v295 ^ 0xBADDDD1E6E95D8D9))) & 0x81A1215A27E9BDE4) - 0x3F2F6F52EC0B210ELL) ^ v294;
  v300 = v296 ^ v299;
  v301 = (((v295 ^ 0x452222E1916A2726) & (v294 ^ 0x2080E680CF5B11ACLL)) - ((2 * ((v295 ^ 0x452222E1916A2726) & (v294 ^ 0x2080E680CF5B11ACLL))) & 0xB0DE2E2D1FEF1B86) - 0x2790E8E97008723DLL) ^ v289 ^ v298;
  v302 = (((v296 ^ v299) << 36) ^ 0x7FE60AE000000000) - 0x2EBF1F3698A90462 - ((2 * (((v296 ^ v299) << 36) ^ 0x7FE60AE000000000)) & 0xA281C18000000000);
  v303 = v298 ^ (v298 >> 1);
  *(&v286 + 1) = v296 ^ v299 ^ 0x660AE;
  *&v286 = v296 ^ v299 ^ 0x2EFB20197F80000;
  v304 = (v286 >> 19) - ((2 * (v286 >> 19)) & 0x4CEC554F2084F624);
  *(&v286 + 1) = v297 ^ 0x1D3D9BE2FEE279BELL;
  *&v286 = v297 ^ 0xBFFFFFFFFFFFFFFFLL;
  v305 = v304 - 0x5989D5586FBD84EELL;
  v306 = (v286 >> 61) - ((2 * (v286 >> 61)) & 0x4FC4B9955B1C112CLL) - 0x581DA3355271F76ALL;
  *(&v286 + 1) = v298 ^ 0x180601F;
  *&v286 = v298 ^ 0x217834A98E000000;
  v307 = (v286 >> 25) - ((2 * (v286 >> 25)) & 0x21CB5083628601C6) + 0x10E5A841B14300E3;
  v308 = ((v298 << 58) ^ 0xC00000000000000) - ((2 * ((v298 << 58) ^ 0xC00000000000000)) & 0xCFFFFFFFFFFFFFFFLL) - 0x1B247789D91F5E5DLL;
  *(&v286 + 1) = v303 ^ 0x2331D02;
  *&v286 = v303 ^ 0xEE6B53D640000000;
  v309 = v300 ^ (v300 >> 28) ^ v305;
  v310 = ((v286 >> 26) - ((2 * (v286 >> 26)) & 0x19965D6F025AD9C4) - 0x7334D1487ED2931ELL) ^ (((v298 & 1) << 37) | 0x611B41936A7FB4DDLL);
  v311 = (2 * (v309 & 0x1000000000000)) ^ 0x2000000000000 | v309 & 0x1000000000000;
  v312 = v311 + 0x5606134AFDFECE57;
  v313 = ((v311 - 0x1000000000000) & (v302 ^ 0xD140000000000000)) - 0x1B6EB1361B1874DCLL - ((2 * ((v311 - 0x1000000000000) & (v302 ^ 0xD140000000000000))) & 0xC9229D93C9CF1614);
  v314 = v309 & 0xFFFEFFFFFFFFFFFFLL;
  v315 = v297 ^ (v297 >> 39) ^ (((v297 << 25) ^ 0xC5FDC4F37C000000) - ((2 * ((v297 << 25) ^ 0xC5FDC4F37C000000)) & 0x4354950A48000000) - 0x5E55B57ADBC9EBA8) ^ v306;
  v316 = v315 ^ 0xC0B1476860EE3542;
  *(&v286 + 1) = v301 ^ 0x19E;
  *&v286 = v301 ^ 0xCB7C2773AAE45C00;
  v317 = (v286 >> 10) - ((2 * (v286 >> 10)) & 0x230728385C920E24) - 0x6E7C6BE3D1B6F8EELL;
  v318 = 0x5608134AFDFECE57 - v311;
  if (v313 == 0xE4914EC9E4E78B24)
  {
    v318 = v312;
  }

  v319 = (v302 ^ 0xD140E0C96756FB9ELL) - 0x5607134AFDFECE57 + v318 - ((2 * ((v302 ^ 0xD140E0C96756FB9ELL) - 0x5607134AFDFECE57 + v318)) & 0x4F9453E0B87D87E6) - 0x5835D60FA3C13C0DLL;
  *(&v320 + 1) = v310 ^ 0x3173E4247FLL;
  *&v320 = v310 ^ 0x64E4134000000000;
  v321 = (v320 >> 38) - ((2 * (v320 >> 38)) & 0x1F1B9029C60FA85CLL) + 0xF8DC814E307D42ELL;
  *(&v320 + 1) = v307 ^ 0xB2B97E61ALL;
  *&v320 = v307 ^ 0xC1DEB68000000000;
  v322 = (v320 >> 39) - 0x63D9CED8781ACA83 + (~(2 * (v320 >> 39)) | 0xC7B39DB0F0359507);
  v323 = v301 ^ (v301 >> 17) ^ (((v301 << 47) ^ 0x2ECF000000000000) - ((2 * ((v301 << 47) ^ 0x2ECF000000000000)) & 0xDA9000000000000) - 0x792B4EB304A02435) ^ v317;
  v324 = 32 * (v204 & 7) - ((v204 << 6) & 0x140) + 0x25133D6535027EA7;
  *(&v320 + 1) = v299 ^ 0x2F;
  *&v320 = v299 ^ 0x97186D0E3E151000;
  v325 = (v320 >> 7) - ((2 * (v320 >> 7)) & 0x8A910618139BCA4ALL) - 0x3AB77CF3F6321ADBLL;
  *(&v320 + 1) = v324 ^ 0x3896D0D99 ^ v323 ^ 0xF75AC467D024270BLL;
  *&v320 = v323 ^ 0xDC2B679C00000000;
  v326 = ((v320 >> 34) - ((2 * (v320 >> 34)) & 0x1FEB22428F998FF4) - 0x700A6EDEB8333806) ^ (((v324 << 30) ^ 0x4D409FA9C0000000) - ((2 * ((v324 << 30) ^ 0x4D409FA9C0000000)) & 0x1FA7D4B000000000) + 0xFD3EA5F06666909);
  v327 = v299 ^ (v299 >> 41) ^ (((v299 << 23) ^ 0x871F0A8817800000) - ((2 * ((v299 << 23) ^ 0x871F0A8817800000)) & 0xF1115EE180000000) + 0x7888AF70C02826BELL) ^ v325 ^ 0xC941DB27B2343E93;
  v328 = v308 ^ (v322 >> 6) ^ v316 ^ v321;
  *(&v320 + 1) = v326 ^ 0x36C2BDAF;
  *&v320 = v326 ^ 0xCCC280D080000000;
  v329 = (v314 ^ v327 ^ v319 ^ 0xE0CB2B0330F69947) - 0x5CF6231E9EB68538 - ((2 * ((v314 ^ v327 ^ v319 ^ 0xE0CB2B0330F69947) & 0x2309DCE161497ADELL ^ (v314 ^ v327 ^ v319) & 0x16)) ^ 0xC);
  v330 = ((v320 >> 30) - ((2 * (v320 >> 30)) & 0x7DEA55AC8C4C0B20) - 0x410AD529B9D9FA70) ^ v327;
  v331 = ((v328 ^ 0xBB7F366DB0EDE453) & (v323 ^ 0xDC2B679D6C4B5435)) - ((2 * ((v328 ^ 0xBB7F366DB0EDE453) & (v323 ^ 0xDC2B679D6C4B5435))) & 0x711F4D3D2550A03ALL) + 0x388FA69E92A8501DLL;
  v332 = v329 ^ (((v328 ^ 0x4480C9924F121BACLL) & (v315 ^ 0x448A725289DFE1B8)) - ((2 * ((v328 ^ 0x4480C9924F121BACLL) & (v315 ^ 0x448A725289DFE1B8))) & 0x7FCE2C97B8E0BALL) + 0x3FE7164BDC705DLL);
  *(&v320 + 1) = v332 ^ 0x363BF72A950A95;
  *&v320 = v332 ^ 0xA300000000000000;
  v333 = ((v329 ^ 0xA309DCE161497AC8) & (v330 ^ 0x7F33020DCFC575C5)) - ((2 * ((v329 ^ 0xA309DCE161497AC8) & (v330 ^ 0x7F33020DCFC575C5))) & 0xD9ED08F78F08201ELL) - 0x13097B84387BEFF1;
  v334 = (((v329 ^ 0x5CF6231E9EB68537) & (v315 ^ 0xBB758DAD76201E47)) - ((2 * ((v329 ^ 0x5CF6231E9EB68537) & (v315 ^ 0xBB758DAD76201E47))) & 0xA05F2DEA72D22896) + 0x502F96F53969144BLL) ^ v330;
  v335 = ((v330 ^ 0x7F33020DCFC575C5 | v323 ^ 0xDC2B679D6C4B5435) - ((2 * (v330 ^ 0x7F33020DCFC575C5 | v323 ^ 0xDC2B679D6C4B5435)) & 0x141C812F758D8A26) + 0xA0E4097BAC6C513) ^ v328;
  v336 = ((v320 >> 56) - ((2 * (v320 >> 56)) & 0xC0D0B397B28455C2) + 0x606859CBD9422AE1) ^ 0xF8A01EE86E5A7F00;
  *(&v320 + 1) = ((v320 >> 56) - ((2 * (v320 >> 56)) & 0xB28455C2) - 649975071) ^ 0x3D;
  *&v320 = v336;
  v337 = ((v320 >> 8) - ((2 * (v320 >> 8)) & 0x1C5EEE8DCBAA8630) - 0x71D088B91A2ABCE8) ^ 0x2D4A87F304DCF045;
  v338 = v337 ^ v334;
  v339 = (((v331 ^ v316 ^ v337 ^ 0x3CB654A946D8D010) + 0x53FDE369474818E7) ^ 0xF92F6CDCFFDD1B5FLL) + ((2 * ((v331 ^ v316 ^ v337 ^ 0x3CB654A946D8D010) + 0x53FDE369474818E7)) & 0xF25ED9B9FFBA36BELL) + 0x6D093230022E4A2 + ((((2 * (v331 ^ v316 ^ v337)) ^ 0x796CA9528DB1A020) - ((2 * ((2 * (v331 ^ v316 ^ v337)) ^ 0x796CA9528DB1A020)) & 0xEC94DF127775BE30) + 0x764A6F893BBADF19) & 0xA7FBC6D28E9031CELL ^ 0xD9B5B97FF56FEEF7);
  v340 = v339 - ((2 * v339) & 0xF81D580A3DDFD1FALL) + 0x7C0EAC051EEFE8FDLL;
  v341 = (((v338 << 45) ^ 0xE800800000000000) + 0x3AA74D1DD923D097 - ((2 * ((v338 << 45) ^ 0xE800800000000000)) & 0x754E800000000000)) ^ 0x3AA74D1DD923D097;
  v342 = (v341 & (v338 ^ 0x74DA0D59F3674004)) - ((2 * (v341 & (v338 ^ 0x74DA0D59F3674004))) & 0x1D184BB26B29FC5ELL);
  v343 = ((v338 << 36) ^ 0x3674004000000000) - ((2 * ((v338 << 36) ^ 0x3674004000000000)) & 0xD3148A2000000000);
  v344 = ((v341 + (v338 ^ (v338 >> 19) ^ 0x74DA03C2B2CC7E68)) ^ 0x5FFFF7F7D739BE77) + ((2 * (v341 + (v338 ^ (v338 >> 19) ^ 0x74DA03C2B2CC7E68))) & 0xBFFFEFEFAE737CEELL) - 0x5FFFF7F7D739BE76 + ((((2 * v342 - 0x62E7B44D94D603A2) ^ 0x9D184BB26B29FC5ELL) - ((2 * ((2 * v342 - 0x62E7B44D94D603A2) ^ 0x9D184BB26B29FC5ELL)) & 0x1510FB79B07E93CLL) - 0x7F577824327C0B62) ^ 0x7F577824327C0B61);
  v345 = (v344 - ((2 * v344) & 0x447C13847F72871ALL) - 0x5DC1F63DC046BC73) ^ (v338 >> 28);
  v346 = ((v323 ^ 0x30DDE3E6ABCF443ALL ^ v333) - ((2 * (v323 ^ 0x30DDE3E6ABCF443ALL ^ v333)) & 0x14F219ABE132D23ALL) - 0x7586F32A0F6696E3) ^ v335;
  v347 = (((v340 << 23) ^ 0x28F77F47E800000) - 0x69D59D07CDAAF093 - ((2 * ((v340 << 23) ^ 0x28F77F47E800000)) & 0x2C54C5F064000000)) ^ 0x962A62F832550F6DLL | (v340 >> 41) & 0xFFFFF ^ 0xE0756;
  *(&v320 + 1) = v340 ^ (v340 >> 61) ^ 0xC051EEFE8FELL;
  *&v320 = v340 ^ 0x7C0EA00000000000;
  v348 = (v347 - ((2 * v347) & 0x561C48A3A4BA7C72) - 0x54F1DBAE2DA2C1C7) ^ ((v320 >> 44) - ((2 * (v320 >> 44)) & 0xC6209A7FE54EE80ELL) - 0x1CEFB2C00D588BF9);
  *(&v320 + 1) = v346 ^ 0x36;
  *&v320 = v346 ^ 0xB5FC1818DEF35400;
  v349 = (v320 >> 6) - ((2 * (v320 >> 6)) & 0x89559296EA3D0A62) - 0x3B5536B48AE17ACFLL;
  *(&v320 + 1) = v348 ^ 0x25F0F;
  *&v320 = v348 ^ 0x6053B90AE7200000;
  v350 = (v320 >> 20) - ((2 * (v320 >> 20)) & 0x8BAA1AEB094DD21ELL) - 0x3A2AF28A7B5916F1;
  v351 = (v334 >> 7) ^ 0xA253D92D68F69ELL;
  *(&v320 + 1) = v349 ^ 0x2A939C1;
  *&v320 = v349 ^ 0xB400000000000000;
  v352 = v351 + (v334 ^ 0x5129EC96B47B4F51);
  v353 = STACK[0xE80];
  v353[23] = v345 ^ 0x12;
  v354 = (2 * ((v351 & (v334 ^ 0x5129EC96B47B4F51)) - ((2 * (v351 & (v334 ^ 0x5129EC96B47B4F51))) & 0x167C54CA3C76326)) + 0x6167C54CA3C76326) ^ 0x6167C54CA3C76326;
  v355 = STACK[0xC58];
  v355[96] = BYTE1(v345) ^ 0x96;
  v356 = v350 ^ (v340 >> 39);
  v357 = ((((v320 >> 58) - ((2 * (v320 >> 58)) & 0x2DE) + 908) << 54) - 0x740000000000000) ^ 0xDBC0000000000000;
  v358 = v357 + 0x199572BF99348555 - ((2 * v357) & 0x3333333333333333);
  *(&v320 + 1) = v356 ^ 0x58B82A;
  *&v320 = v356 ^ 0x44861FF159000000;
  v359 = STACK[0xE88];
  v360 = *(STACK[0xE88] + ((-53 * (BYTE2(v345) ^ 0x19) - ((-106 * (BYTE2(v345) ^ 0x19)) & 0xB8) + 92) ^ 0x32));
  v361 = (v320 >> 24) - ((2 * (v320 >> 24)) & 0xDE0D04B755E0AA7ALL) + 0x6F06825BAAF0553DLL;
  *(&v320 + 1) = (((2 * v340) ^ 0xF81D580A3DDFD1FALL) - ((2 * ((2 * v340) ^ 0xF81D580A3DDFD1FALL)) & 0x7A6053F960) + 0x3D3029FCB1) & 0xFFFFFFFFFELL ^ 0xFD6479F41ELL ^ v361;
  *&v320 = v361 ^ 0x385BBF0000000000;
  v362 = (v320 >> 40) - ((2 * (v320 >> 40)) & 0x6D4EC8FB854F7548);
  *(&v320 + 1) = v335;
  *&v320 = v335 ^ 0x5C1EDA60CD5E4FELL;
  v363 = ((v334 << 23) ^ 0x4B5A3DA7A8800000) - ((2 * ((v334 << 23) ^ 0x4B5A3DA7A8800000)) & 0x59EF7F1DCF000000);
  v364 = ((((v334 << 57) ^ 0xA200000000000000) + 0x5EDB7A9CCD725BC2 - ((2 * ((v334 << 57) ^ 0xA200000000000000)) & 0xBFFFFFFFFFFFFFFFLL)) ^ 0x5EDB7A9CCD725BC2 | (v334 >> 41)) ^ 0x2894F6;
  v365 = (v352 ^ 0xFA9EFF9E757F5FDALL) + ((2 * v352) & 0xF53DFF3CEAFEBFB4) + 0x56100618A80A027 + ((v354 - ((2 * v354) & 0x8B3791F0CC334C0) - 0x3BA64370799E65A0) ^ 0x3BA64370799E659FLL);
  v366 = (v365 - ((2 * v365) & 0xE06FD1CABB8E9508) - 0xFC8171AA238B57CLL) ^ (v364 - ((2 * v364) & 0x4699B2DEA7B0250ALL) + 0x234CD96F53D81285);
  v367 = v358 ^ 0x199572BF99348555 | (v346 >> 10) ^ (v346 >> 17) ^ 0x2D25F80A3BD3ACLL;
  v368 = (((v346 << 47) ^ 0xAA1B000000000000) - ((2 * ((v346 << 47) ^ 0xAA1B000000000000)) & 0x8046000000000000) + 0x40234738CC98B095) ^ v346 ^ (v367 - ((2 * v367) & 0x6F8D378AC5352E32) + 0x37C69BC5629A9719);
  v369 = v345 ^ (v343 - 0x1675BAEFBACF4FEELL);
  v370 = (v320 >> 1) - ((2 * (v320 >> 1)) & 0xAFDC5482D81CDE90) + 0x57EE2A416C0E6F48;
  LODWORD(v354) = ((*(STACK[0xE88] + ((-53 * (BYTE2(v345) ^ 0x19) - ((-106 * (BYTE2(v345) ^ 0x19)) & 0xB8) + 92) ^ 0x32)) >> 2) - ((*(STACK[0xE88] + ((-53 * (BYTE2(v345) ^ 0x19) - ((-106 * (BYTE2(v345) ^ 0x19)) & 0xB8) + 92) ^ 0x32)) >> 1) & 8) + 20) & 0x1E;
  v353[369] = BYTE3(v345) ^ 0x72;
  DWORD1(v320) = v360 ^ 0x5C;
  LODWORD(v320) = ~v360 << 24;
  LODWORD(v345) = v320 >> 31;
  v371 = v335 ^ (v335 >> 6) ^ (((v335 << 58) ^ 0xF800000000000000) - ((v335 & 1) << 59) + 0x776CEB3ACF20A40) ^ v370;
  v372 = STACK[0xCA8];
  *(STACK[0xCA8] + 1) = BYTE4(v369) ^ 0xD5;
  v373 = (v369 >> 39) & 0xFE | (v369 >> 47) & 1;
  v374 = (v373 ^ 0x98) - 2 * ((v373 ^ 0x98) & 0x1F ^ ((v369 >> 39) & 2 | (v369 >> 47) & 1));
  DWORD1(v320) = v345;
  LODWORD(v320) = (v354 ^ (v345 - ((2 * v345) & 0xB0) - 40) ^ 0xCCCCCCCC) << 24;
  LODWORD(v354) = (((v320 >> 25) - ((2 * (v320 >> 25)) & 0xFFFFFFA2) - 47) ^ 0xFFFFFFD9) + 62;
  LODWORD(v367) = ((v369 >> 47) & 1) << 7;
  LODWORD(v345) = v367 ^ 0x80;
  LODWORD(v367) = (v367 | 0xDCFFFD7B) + 2 * (v367 ^ 0x80);
  LODWORD(v373) = v367 - v345 + 951461893 + ((2 * (v367 - v345) + 100664198) & 0x2B6C4C34 ^ 0xFFFFFFCB);
  v375 = v362 - 0x49589B823D58455CLL;
  v353[147] = (v354 ^ 0xDF) + ((2 * v354) & 0xBF) + 33;
  LODWORD(v374) = *(v203 + (((v374 + 0x1C184521CLL) >> 1) ^ 0xDB859D83 ^ (v367 + 587200119 + (v373 ^ 0xEA49D9BD) + 2958 - ((2 * (v367 + 587200119 + (v373 ^ 0xEA49D9BD) + 2958)) & 0x768F697E) + 994555071)));
  v376 = ((v374 >> 3) | (32 * v374)) - ((2 * ((v374 >> 3) | (32 * v374))) & 0x3FF4) + 122;
  v377 = STACK[0xE78] & 0x28;
  v378 = (((v374 >> 3) | (32 * v374)) - ((2 * ((v374 >> 3) | (32 * v374))) & 0xF4) + 122) >> 1;
  LODWORD(v373) = v378 & 0x20 ^ 0xFFFFFFBA;
  v353[107] = BYTE6(v369) ^ 0xB4;
  v355[45] = ((v362 - 0x49589B823D58455CLL) >> 32) ^ 0x20;
  v168 = ((v373 + 102) & (v376 ^ 0x70)) == 0;
  v380 = v373 + 112;
  v381 = -92 - v373;
  if (!v168)
  {
    v380 = v381;
  }

  v379 = (((v362 - 0x49589B823D58455CLL) ^ 0x2D59C42051F0E799uLL) >> (v377 ^ 8u)) + 0x1B4144AC2FC0F806 - ((2 * (((v362 - 0x49589B823D58455CLL) ^ 0x2D59C42051F0E799uLL) >> (v377 ^ 8u))) & 0x368289585F81F00CLL);
  v372[98] = (((v379 ^ 0x1B4144AC2FC0F806) >> (v377 ^ 0x20u)) - ((2 * ((v379 ^ 0x1B4144AC2FC0F806) >> (v377 ^ 0x20u))) & 0x1A) - 115) ^ 0x8D;
  STACK[0xEE0] = v369;
  v353[182] = HIBYTE(v369) ^ 0x4B;
  v372[95] = BYTE6(v375) ^ 0x59;
  v382 = (v378 & 0xDF ^ (v376 >> 3) ^ 0x50 ^ ((v376 ^ 0x7A) + v380 - 10 - ((2 * ((v376 ^ 0x7A) + v380 - 10)) & 0x88) - 60)) - 22;
  v372[104] = (v382 ^ 0xDF) + ((2 * v382) & 0xBF) + 33;
  v372[4] = BYTE2(v375) ^ 0xF0;
  v372[66] = BYTE1(v375) ^ 0xE7;
  v355[221] = v375 ^ 0x99;
  v353[292] = ((v362 - 1029195100) >> 24) ^ 0x51;
  v353[267] = HIBYTE(v375) ^ 0x2D;
  LODWORD(v379) = *(v359 + ((-53 * (v371 ^ 0x65) - ((22 * (v371 ^ 0x65)) & 0x44) - 94) ^ 0xCCLL));
  v383 = (v368 ^ 0x70F173BA) + (((v368 ^ 0xC519C4E570F173BALL) % 0x636F98C3A122FA65) ^ 0x48884008) - ((2 * ((v368 ^ 0xC519C4E570F173BALL) % 0x636F98C3A122FA65)) & 0x6EEF7FEE);
  v384 = v383 - ((2 * v383 - 16) & 0xA);
  v372[82] = BYTE1(v371) ^ 0xD6;
  v385 = ((v371 >> 31) & 0xFE | (v371 >> 39) & 1) ^ 0xC5;
  v372[19] = BYTE2(v371) ^ 0x1A;
  LODWORD(v379) = (v379 ^ 0xFFFFFFD4 ^ (v379 >> 3) & 0xF) + 62;
  v355[81] = (v379 ^ 0xF6) + ((2 * v379) & 0xEC) + 10;
  v386 = (((v368 ^ 0xC519C4E570F173BALL) - 0x636F98C3A122FA65) ^ 0x4B8F7FBEAFDBEFFFLL) - 0x4B8F7FBEAFDBEFFFLL + ((2 * ((v368 ^ 0xC519C4E570F173BALL) - 0x636F98C3A122FA65)) & 0x971EFF7D5FB7DFFELL);
  v353[70] = BYTE3(v371) ^ 0x54;
  v387 = *(STACK[0xEB0] + ((v385 - 0xA09B4BAA5E9EECLL - ((2 * v385) & 0x28)) ^ 0xFF5F64B455A161DFLL));
  v353[243] = BYTE6(v371) ^ 0x4E;
  v388 = v386 % 0x636F98C3A122FA65 - ((2 * (v386 % 0x636F98C3A122FA65)) & 0x66) - 77;
  if ((v368 ^ 0xC519C4E570F173BALL) <= 0x636F98C3A122FA64)
  {
    LOBYTE(v388) = v368 ^ 9;
  }

  v355[174] = BYTE2(v368) ^ 0xF1;
  v353[181] = BYTE5(v371) ^ 0xE;
  v353[330] = HIBYTE(v371) ^ 0x55;
  v372[44] = BYTE1(v368) ^ 0x73;
  v353[259] = ((110 * (v387 ^ 0xDE)) & 0x5E) + ((-73 * (v387 ^ 0xDE)) ^ 0x2F) - 47;
  *(&v389 + 1) = v334 ^ 0x11111111;
  *&v389 = v334 ^ 0x5129EC96B47B4F40;
  v353[373] = (((v388 ^ 0xB3) + ((v384 + 125) ^ 0x85)) ^ 0xFB) + ((2 * ((v388 ^ 0xB3) + ((v384 + 125) ^ 0x85))) & 0xF7) + 5;
  v390 = ((((v368 ^ v334) << 58) ^ 0xAC00000000000000) - ((2 * (((v368 ^ v334) << 58) ^ 0xAC00000000000000)) & 0xB000000000000000) + 0x5B80AF08CB747E73) ^ ((v389 >> 6) - ((2 * (v389 >> 6)) & 0xC0351CE2CD254F22) + 0x601A8E716692A791);
  *(&v389 + 1) = v390 ^ ((v368 ^ v334) >> 6) ^ 0x358941554C8B1ELL;
  *&v389 = v390 ^ 0xCFFFFFFFFFFFFFFFLL;
  v391 = (v389 >> 58) - ((2 * (v389 >> 58)) & 0x1D6F5CFC4ED43DE0) - 0x71485181D895E110;
  v355[16] = BYTE5(v368) ^ 0xC4;
  v355[194] = v366 ^ 1;
  v353[325] = BYTE6(v391) ^ 0x6D;
  v392 = v366 ^ (v363 - 0x53084071187D75AALL);
  v353[296] = BYTE3(v368) ^ 0x70;
  v372[43] = HIBYTE(v391) ^ 0xF1;
  v393 = v391 ^ v392;
  v372[102] = ((BYTE4(v368) & 0x82 ^ 0xFD) + ((2 * (BYTE4(v368) & 0x82)) ^ 0xA5) - 80) ^ 0x76 ^ ((BYTE4(v368) & 0x7D ^ 0xE7) - ((2 * (BYTE4(v368) & 0x7D ^ 0xE7)) & 0x4C) + 38);
  v353[144] = BYTE1(v366) ^ 0x58;
  v394 = *(v359 + ((-53 * (BYTE2(v392) ^ 0x9D) - ((-106 * (BYTE2(v392) ^ 0x9D)) & 0xC8) - 28) ^ 0x8ALL));
  v353[173] = BYTE4(v392) ^ 4;
  v395 = v394 & 0x10 | ((~(v394 >> 2) | 3) + (v394 >> 3) + 7) & 0xF;
  v396 = (v394 & 0xEF ^ ((v395 ^ 0x16) + ((2 * ((v395 ^ 0x16 | 0x7B) ^ v395)) ^ 0x25) + 92) ^ 0x9F) + 62;
  v355[191] = (v396 ^ 0x63) + ((2 * v396) & 0xC7) - 99;
  v397 = (v392 ^ ((v392 ^ 0x807371FB16622DA8) - ((2 * (v392 ^ 0x807371FB16622DA8) + 2) & 0x1A2DECD8F863E41ELL) + 0xD16F66C7C31F210) ^ 0x28A3360EFA1D06DLL ^ ((v391 ^ v392 ^ 0x8EE1063720E94F5ALL) - (v391 ^ 0xF16D8833C9749D0DLL) - ((2 * ((v391 ^ v392 ^ 0x8EE1063720E94F5ALL) - (v391 ^ 0xF16D8833C9749D0DLL))) & 0xE0209610F41BE06ALL) + 0x70104B087A0DF035)) + (v391 ^ v392 ^ 0x8EE1063720E94F5ALL);
  v372[3] = ((v366 ^ (v363 - 410875306)) >> 24) ^ 0xE9;
  v398 = (v397 - ((2 * v397) & 0xB590E6762B8A61A2) - 0x25378CC4EA3ACF2FLL) ^ v393;
  v372[46] = HIBYTE(v398) ^ 0x54;
  v355[133] = BYTE6(v398) ^ 0x29;
  v355[135] = BYTE5(v392) ^ 0x8E;
  *(*STACK[0xC40] + 28) = LODWORD(STACK[0xF2C]) - 1368700060;
  return (*(STACK[0xED0] + 8 * ((474 * (STACK[0xEE8] & 1)) ^ LODWORD(STACK[0xEC8]))))();
}

uint64_t sub_2449533B0@<X0>(int a1@<W1>, uint64_t a2@<X3>, int a3@<W8>)
{
  LODWORD(STACK[0xDE0]) = 0;
  LODWORD(STACK[0xD60]) = 0;
  LODWORD(STACK[0xA0C]) = 0;
  LODWORD(STACK[0xA00]) = 0;
  LODWORD(STACK[0xE10]) = 0;
  LODWORD(STACK[0xB60]) = 0;
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xD98]) = 0;
  LODWORD(STACK[0xD00]) = 0;
  LODWORD(STACK[0xB50]) = 0;
  LODWORD(STACK[0xB48]) = 0;
  LODWORD(STACK[0xD08]) = 0;
  LODWORD(STACK[0xB40]) = 0;
  LODWORD(STACK[0xB38]) = 0;
  LODWORD(STACK[0xDD8]) = 0;
  LODWORD(STACK[0xDA0]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xD10]) = 0;
  LODWORD(STACK[0xB20]) = 0;
  LODWORD(STACK[0xB18]) = 0;
  LODWORD(STACK[0xB10]) = 0;
  LODWORD(STACK[0xB08]) = 0;
  LODWORD(STACK[0xD40]) = 0;
  LODWORD(STACK[0xB00]) = 0;
  LODWORD(STACK[0xAF8]) = 0;
  LODWORD(STACK[0xBE8]) = 0;
  LODWORD(STACK[0xD88]) = 0;
  LODWORD(STACK[0xC88]) = 0;
  HIDWORD(v5) = a1 ^ LODWORD(STACK[0x738]);
  LODWORD(v5) = (HIDWORD(v5) ^ 0x34) << 24;
  v6 = *(a2 + ((a3 + 96) ^ (v5 >> 25)));
  HIDWORD(v5) = v6 ^ 0x55555555;
  LODWORD(v5) = (v6 ^ 0x80) << 24;
  LOBYTE(STACK[0x1E12]) = (((v5 >> 30) ^ 0x92) - 41) ^ v4;
  v7 = *(v3 + 8 * a3);
  LODWORD(STACK[0xBA0]) = 1;
  LODWORD(STACK[0xE28]) = 1;
  LODWORD(STACK[0xDE8]) = 1;
  LODWORD(STACK[0xD18]) = 1;
  LODWORD(STACK[0xB68]) = 1;
  LODWORD(STACK[0xB70]) = 1;
  LODWORD(STACK[0xD20]) = 1;
  LODWORD(STACK[0xB7C]) = 1;
  LODWORD(STACK[0xB88]) = 1;
  LODWORD(STACK[0xDA8]) = 1;
  LODWORD(STACK[0xD2C]) = 1;
  LODWORD(STACK[0xB80]) = 1;
  LODWORD(STACK[0xB90]) = 1;
  LODWORD(STACK[0xD38]) = 1;
  LODWORD(STACK[0xB98]) = 1;
  LODWORD(STACK[0xDF0]) = 1;
  LODWORD(STACK[0xDB0]) = 1;
  LODWORD(STACK[0xD48]) = 1;
  LODWORD(STACK[0xBA8]) = 1;
  LODWORD(STACK[0xA1C]) = 1;
  LODWORD(STACK[0xA20]) = 1;
  LODWORD(STACK[0xBB4]) = 1;
  LODWORD(STACK[0xA28]) = 1;
  LODWORD(STACK[0xA38]) = 1;
  LODWORD(STACK[0xD50]) = 1;
  LODWORD(STACK[0xBB8]) = 1;
  LODWORD(STACK[0xA30]) = 1;
  LODWORD(STACK[0xA48]) = 1;
  LODWORD(STACK[0xBCC]) = 1;
  LODWORD(STACK[0xA50]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xDB8]) = 1;
  LODWORD(STACK[0xD58]) = 1;
  LODWORD(STACK[0xBC0]) = 1;
  LODWORD(STACK[0xA40]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0xBD0]) = 1;
  LODWORD(STACK[0xA5C]) = 1;
  LODWORD(STACK[0xD68]) = 1;
  LODWORD(STACK[0xBE0]) = 1;
  LODWORD(STACK[0xA70]) = 1;
  LODWORD(STACK[0xA80]) = 1;
  LODWORD(STACK[0xBF8]) = 1;
  LODWORD(STACK[0xA90]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0xE30]) = 1;
  LODWORD(STACK[0xDF8]) = 1;
  LODWORD(STACK[0xDC0]) = 1;
  LODWORD(STACK[0xBD8]) = 1;
  LODWORD(STACK[0xA68]) = 1;
  LODWORD(STACK[0xA78]) = 1;
  LODWORD(STACK[0xBF0]) = 1;
  LODWORD(STACK[0xA88]) = 1;
  LODWORD(STACK[0xAA0]) = 1;
  LODWORD(STACK[0xD70]) = 1;
  LODWORD(STACK[0xC00]) = 1;
  LODWORD(STACK[0xA98]) = 1;
  LODWORD(STACK[0xAB8]) = 1;
  LODWORD(STACK[0xC10]) = 1;
  LODWORD(STACK[0xAC0]) = 1;
  LODWORD(STACK[0xAC8]) = 1;
  LODWORD(STACK[0xDC8]) = 1;
  LODWORD(STACK[0xD78]) = 1;
  LODWORD(STACK[0xC08]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xC80]) = 1;
  LODWORD(STACK[0xAD0]) = 1;
  LODWORD(STACK[0xD80]) = 1;
  LODWORD(STACK[0xC84]) = 1;
  LODWORD(STACK[0xAD8]) = 1;
  LODWORD(STACK[0xCA0]) = 1;
  LODWORD(STACK[0xAF0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xDD0]) = 1;
  LODWORD(STACK[0xD90]) = 1;
  LODWORD(STACK[0xC90]) = 1;
  LODWORD(STACK[0xAE0]) = 1;
  LODWORD(STACK[0xAE8]) = 1;
  LODWORD(STACK[0x9FC]) = 1;
  LODWORD(STACK[0xC98]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  return v7();
}

uint64_t sub_244953734@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xE28]) = 0;
  LODWORD(STACK[0xDE8]) = 0;
  LODWORD(STACK[0xDE0]) = 0;
  LODWORD(STACK[0xD20]) = 0;
  LODWORD(STACK[0xB7C]) = 0;
  LODWORD(STACK[0xB88]) = 0;
  LODWORD(STACK[0xDA8]) = 0;
  LODWORD(STACK[0xD2C]) = 0;
  LODWORD(STACK[0xB80]) = 0;
  LODWORD(STACK[0xB90]) = 0;
  LODWORD(STACK[0xD38]) = 0;
  LODWORD(STACK[0xB98]) = 0;
  LODWORD(STACK[0xBA0]) = 0;
  LODWORD(STACK[0xDF0]) = 0;
  LODWORD(STACK[0xDB0]) = 0;
  LODWORD(STACK[0xD48]) = 0;
  LODWORD(STACK[0xBA8]) = 0;
  LODWORD(STACK[0xA1C]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0xBB4]) = 0;
  LODWORD(STACK[0xA28]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0xD50]) = 0;
  LODWORD(STACK[0xBB8]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0xA48]) = 0;
  LODWORD(STACK[0xBCC]) = 0;
  LODWORD(STACK[0xA50]) = 0;
  LODWORD(STACK[0xA60]) = 0;
  LODWORD(STACK[0xDB8]) = 0;
  LODWORD(STACK[0xD58]) = 0;
  LODWORD(STACK[0xBC0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  STACK[0xA58] = 0;
  LODWORD(STACK[0xBD0]) = 0;
  LODWORD(STACK[0xD68]) = 0;
  LODWORD(STACK[0xBE0]) = 0;
  LODWORD(STACK[0xA70]) = 0;
  LODWORD(STACK[0xA80]) = 0;
  LODWORD(STACK[0xBF8]) = 0;
  LODWORD(STACK[0xA90]) = 0;
  LODWORD(STACK[0xAA8]) = 0;
  LODWORD(STACK[0xE30]) = 0;
  LODWORD(STACK[0xDF8]) = 0;
  LODWORD(STACK[0xDC0]) = 0;
  LODWORD(STACK[0xBD8]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xBF0]) = 0;
  LODWORD(STACK[0xA88]) = 0;
  LODWORD(STACK[0xAA0]) = 0;
  LODWORD(STACK[0xD70]) = 0;
  LODWORD(STACK[0xC00]) = 0;
  LODWORD(STACK[0xA98]) = 0;
  LODWORD(STACK[0xAB8]) = 0;
  LODWORD(STACK[0xC10]) = 0;
  LODWORD(STACK[0xAC0]) = 0;
  LODWORD(STACK[0xAC8]) = 0;
  LODWORD(STACK[0xDC8]) = 0;
  LODWORD(STACK[0xD78]) = 0;
  LODWORD(STACK[0xC08]) = 0;
  LODWORD(STACK[0xAB0]) = 0;
  STACK[0xC80] = 0;
  LODWORD(STACK[0xAD0]) = 0;
  LODWORD(STACK[0xD80]) = 0;
  LODWORD(STACK[0xAD8]) = 0;
  LODWORD(STACK[0xCA0]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA08]) = 0;
  LODWORD(STACK[0xE10]) = 0;
  LODWORD(STACK[0xDD0]) = 0;
  LODWORD(STACK[0xD90]) = 0;
  LODWORD(STACK[0xC90]) = 0;
  LODWORD(STACK[0xAE0]) = 0;
  LODWORD(STACK[0xAE8]) = 0;
  LODWORD(STACK[0x9FC]) = 0;
  LODWORD(STACK[0xC98]) = 0;
  LODWORD(STACK[0xB60]) = 0;
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xD98]) = 0;
  LODWORD(STACK[0xD00]) = 0;
  LODWORD(STACK[0xB50]) = 0;
  LODWORD(STACK[0xB48]) = 0;
  LODWORD(STACK[0xD08]) = 0;
  LODWORD(STACK[0xB40]) = 0;
  LODWORD(STACK[0xB38]) = 0;
  LODWORD(STACK[0xDD8]) = 0;
  LODWORD(STACK[0xDA0]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xD10]) = 0;
  LODWORD(STACK[0xB20]) = 0;
  LODWORD(STACK[0xB18]) = 0;
  LODWORD(STACK[0xB10]) = 0;
  LODWORD(STACK[0xB08]) = 0;
  LODWORD(STACK[0xD40]) = 0;
  LODWORD(STACK[0xB00]) = 0;
  LODWORD(STACK[0xAF8]) = 0;
  LODWORD(STACK[0xA10]) = 0;
  LODWORD(STACK[0xBE8]) = 0;
  LODWORD(STACK[0xD88]) = 0;
  LODWORD(STACK[0xC88]) = 0;
  LODWORD(STACK[0x984]) = v1 ^ 0x121258B1;
  v3 = *(v2 + 8 * ((a1 & 0xEA924FDA) - 16691));
  LODWORD(STACK[0xD60]) = 1;
  LODWORD(STACK[0xD18]) = 1;
  LODWORD(STACK[0xB68]) = 1;
  LODWORD(STACK[0xB70]) = 1;
  LODWORD(STACK[0xA0C]) = 1;
  LODWORD(STACK[0xA00]) = 1;
  return v3();
}

uint64_t sub_244953A98@<X0>(char a1@<W0>, char a2@<W4>, char a3@<W5>, int a4@<W8>)
{
  LODWORD(STACK[0xDE0]) = 0;
  LODWORD(STACK[0xE30]) = 0;
  LODWORD(STACK[0xD60]) = 0;
  LODWORD(STACK[0xDC8]) = 0;
  STACK[0xA08] = 0;
  LODWORD(STACK[0xD80]) = 0;
  LODWORD(STACK[0xC84]) = 0;
  LODWORD(STACK[0xAD8]) = 0;
  LODWORD(STACK[0xCA0]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xE10]) = 0;
  LODWORD(STACK[0xDD0]) = 0;
  LODWORD(STACK[0xD90]) = 0;
  LODWORD(STACK[0xC90]) = 0;
  LODWORD(STACK[0xAE0]) = 0;
  LODWORD(STACK[0xAE8]) = 0;
  LODWORD(STACK[0xC98]) = 0;
  LODWORD(STACK[0xB60]) = 0;
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xD98]) = 0;
  LODWORD(STACK[0xD00]) = 0;
  LODWORD(STACK[0xB50]) = 0;
  LODWORD(STACK[0xB48]) = 0;
  LODWORD(STACK[0xD08]) = 0;
  LODWORD(STACK[0xB40]) = 0;
  LODWORD(STACK[0xB38]) = 0;
  LODWORD(STACK[0xDD8]) = 0;
  LODWORD(STACK[0xDA0]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xD10]) = 0;
  LODWORD(STACK[0xB20]) = 0;
  LODWORD(STACK[0xB18]) = 0;
  LODWORD(STACK[0xB10]) = 0;
  LODWORD(STACK[0xB08]) = 0;
  LODWORD(STACK[0xD40]) = 0;
  LODWORD(STACK[0xB00]) = 0;
  LODWORD(STACK[0xAF8]) = 0;
  LODWORD(STACK[0xBE8]) = 0;
  LODWORD(STACK[0xD88]) = 0;
  LODWORD(STACK[0xC88]) = 0;
  v6 = *(v4 + (LODWORD(STACK[0x668]) ^ STACK[0xEE0] ^ a3)) ^ a2;
  LOBYTE(STACK[0x1E38]) = (19 * (a4 ^ 0x59)) ^ 0x2D ^ (v6 - ((2 * v6 - 56) & a1) + 86);
  v7 = *(v5 + 8 * a4);
  LODWORD(STACK[0xDB0]) = 1;
  LODWORD(STACK[0xE28]) = 1;
  LODWORD(STACK[0xDE8]) = 1;
  LODWORD(STACK[0xD18]) = 1;
  LODWORD(STACK[0xB68]) = 1;
  LODWORD(STACK[0xB70]) = 1;
  LODWORD(STACK[0xD20]) = 1;
  LODWORD(STACK[0xB7C]) = 1;
  LODWORD(STACK[0xB88]) = 1;
  LODWORD(STACK[0xDA8]) = 1;
  LODWORD(STACK[0xD2C]) = 1;
  LODWORD(STACK[0xB80]) = 1;
  LODWORD(STACK[0xB90]) = 1;
  LODWORD(STACK[0xD38]) = 1;
  LODWORD(STACK[0xB98]) = 1;
  LODWORD(STACK[0xBA0]) = 1;
  LODWORD(STACK[0xDF0]) = 1;
  LODWORD(STACK[0xD48]) = 1;
  LODWORD(STACK[0xBA8]) = 1;
  LODWORD(STACK[0xA1C]) = 1;
  LODWORD(STACK[0xA20]) = 1;
  LODWORD(STACK[0xBB4]) = 1;
  LODWORD(STACK[0xA28]) = 1;
  LODWORD(STACK[0xA38]) = 1;
  LODWORD(STACK[0xD50]) = 1;
  LODWORD(STACK[0xBB8]) = 1;
  LODWORD(STACK[0xA30]) = 1;
  LODWORD(STACK[0xA48]) = 1;
  LODWORD(STACK[0xBCC]) = 1;
  LODWORD(STACK[0xA50]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xDB8]) = 1;
  LODWORD(STACK[0xD58]) = 1;
  LODWORD(STACK[0xBC0]) = 1;
  LODWORD(STACK[0xA40]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0xBD0]) = 1;
  LODWORD(STACK[0xA5C]) = 1;
  LODWORD(STACK[0xD68]) = 1;
  LODWORD(STACK[0xBE0]) = 1;
  LODWORD(STACK[0xA70]) = 1;
  LODWORD(STACK[0xA80]) = 1;
  LODWORD(STACK[0xBF8]) = 1;
  LODWORD(STACK[0xA90]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0xDF8]) = 1;
  LODWORD(STACK[0xDC0]) = 1;
  LODWORD(STACK[0xBD8]) = 1;
  LODWORD(STACK[0xA68]) = 1;
  LODWORD(STACK[0xA78]) = 1;
  LODWORD(STACK[0xBF0]) = 1;
  LODWORD(STACK[0xA88]) = 1;
  LODWORD(STACK[0xAA0]) = 1;
  LODWORD(STACK[0xD70]) = 1;
  LODWORD(STACK[0xC00]) = 1;
  LODWORD(STACK[0xA98]) = 1;
  LODWORD(STACK[0xAB8]) = 1;
  LODWORD(STACK[0xC10]) = 1;
  LODWORD(STACK[0xAC0]) = 1;
  LODWORD(STACK[0xAC8]) = 1;
  LODWORD(STACK[0xD78]) = 1;
  LODWORD(STACK[0xC08]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xC80]) = 1;
  LODWORD(STACK[0xAD0]) = 1;
  LODWORD(STACK[0xA00]) = 1;
  LODWORD(STACK[0x9FC]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  return v7(210);
}

uint64_t sub_244953E40@<X0>(unint64_t a1@<X2>, uint64_t a2@<X3>, int a3@<W8>)
{
  LODWORD(STACK[0xDE0]) = 0;
  LODWORD(STACK[0xD68]) = 0;
  LODWORD(STACK[0xBE0]) = 0;
  LODWORD(STACK[0xA70]) = 0;
  LODWORD(STACK[0xA80]) = 0;
  LODWORD(STACK[0xBF8]) = 0;
  LODWORD(STACK[0xA90]) = 0;
  LODWORD(STACK[0xAA8]) = 0;
  LODWORD(STACK[0xE30]) = 0;
  LODWORD(STACK[0xDF8]) = 0;
  LODWORD(STACK[0xDC0]) = 0;
  LODWORD(STACK[0xBD8]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xBF0]) = 0;
  LODWORD(STACK[0xA88]) = 0;
  LODWORD(STACK[0xAA0]) = 0;
  LODWORD(STACK[0xD70]) = 0;
  LODWORD(STACK[0xC00]) = 0;
  LODWORD(STACK[0xA98]) = 0;
  LODWORD(STACK[0xAB8]) = 0;
  LODWORD(STACK[0xC10]) = 0;
  LODWORD(STACK[0xAC0]) = 0;
  LODWORD(STACK[0xAC8]) = 0;
  LODWORD(STACK[0xDC8]) = 0;
  LODWORD(STACK[0xD78]) = 0;
  LODWORD(STACK[0xC08]) = 0;
  LODWORD(STACK[0xAB0]) = 0;
  STACK[0xC80] = 0;
  LODWORD(STACK[0xAD0]) = 0;
  LODWORD(STACK[0xD80]) = 0;
  LODWORD(STACK[0xAD8]) = 0;
  LODWORD(STACK[0xCA0]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA08]) = 0;
  LODWORD(STACK[0xE10]) = 0;
  LODWORD(STACK[0xDD0]) = 0;
  LODWORD(STACK[0xD90]) = 0;
  LODWORD(STACK[0xC90]) = 0;
  LODWORD(STACK[0xAE0]) = 0;
  LODWORD(STACK[0xAE8]) = 0;
  LODWORD(STACK[0xC98]) = 0;
  LODWORD(STACK[0xB60]) = 0;
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xD98]) = 0;
  LODWORD(STACK[0xD00]) = 0;
  LODWORD(STACK[0xB50]) = 0;
  LODWORD(STACK[0xB48]) = 0;
  LODWORD(STACK[0xD08]) = 0;
  LODWORD(STACK[0xB40]) = 0;
  LODWORD(STACK[0xB38]) = 0;
  LODWORD(STACK[0xDD8]) = 0;
  LODWORD(STACK[0xDA0]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xD10]) = 0;
  LODWORD(STACK[0xB20]) = 0;
  LODWORD(STACK[0xB18]) = 0;
  LODWORD(STACK[0xB10]) = 0;
  LODWORD(STACK[0xB08]) = 0;
  LODWORD(STACK[0xD40]) = 0;
  LODWORD(STACK[0xB00]) = 0;
  LODWORD(STACK[0xAF8]) = 0;
  LODWORD(STACK[0xA10]) = 0;
  LODWORD(STACK[0xBE8]) = 0;
  LODWORD(STACK[0xD88]) = 0;
  LODWORD(STACK[0xC88]) = 0;
  v6 = v3 - (v4 & 2) - 127;
  HIDWORD(v7) = v6 ^ ~LODWORD(STACK[0x570]);
  LODWORD(v7) = (v6 ^ LODWORD(STACK[0x570]) ^ 0xE8) << 24;
  v8 = (*(a2 + ((v7 >> 25) ^ a1)) + 75) ^ 0x1F;
  LOBYTE(STACK[0x1E12]) = v8 - (((v8 << (((a3 + 49) | 2) - 25)) - 82) & 0x86) - 102;
  v9 = *(v5 + 8 * a3);
  LODWORD(STACK[0xDA8]) = 1;
  LODWORD(STACK[0xE28]) = 1;
  LODWORD(STACK[0xDE8]) = 1;
  LODWORD(STACK[0xD18]) = 1;
  LODWORD(STACK[0xB68]) = 1;
  LODWORD(STACK[0xB70]) = 1;
  LODWORD(STACK[0xD20]) = 1;
  LODWORD(STACK[0xB7C]) = 1;
  LODWORD(STACK[0xB88]) = 1;
  LODWORD(STACK[0xD2C]) = 1;
  LODWORD(STACK[0xB80]) = 1;
  LODWORD(STACK[0xB90]) = 1;
  LODWORD(STACK[0xD38]) = 1;
  LODWORD(STACK[0xB98]) = 1;
  LODWORD(STACK[0xBA0]) = 1;
  LODWORD(STACK[0xDF0]) = 1;
  LODWORD(STACK[0xDB0]) = 1;
  LODWORD(STACK[0xD48]) = 1;
  LODWORD(STACK[0xBA8]) = 1;
  LODWORD(STACK[0xA1C]) = 1;
  LODWORD(STACK[0xA20]) = 1;
  LODWORD(STACK[0xBB4]) = 1;
  LODWORD(STACK[0xA28]) = 1;
  LODWORD(STACK[0xA38]) = 1;
  LODWORD(STACK[0xD50]) = 1;
  LODWORD(STACK[0xBB8]) = 1;
  LODWORD(STACK[0xA30]) = 1;
  LODWORD(STACK[0xA48]) = 1;
  LODWORD(STACK[0xBCC]) = 1;
  LODWORD(STACK[0xA50]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xDB8]) = 1;
  LODWORD(STACK[0xD58]) = 1;
  LODWORD(STACK[0xBC0]) = 1;
  LODWORD(STACK[0xA40]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0xBD0]) = 1;
  LODWORD(STACK[0xA5C]) = 1;
  LODWORD(STACK[0xD60]) = 1;
  LODWORD(STACK[0xA0C]) = 1;
  LODWORD(STACK[0xA00]) = 1;
  LODWORD(STACK[0x9FC]) = 1;
  return v9(210);
}

uint64_t sub_2449541B8@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xDE0]) = 0;
  LODWORD(STACK[0xD60]) = 0;
  LODWORD(STACK[0xA0C]) = 0;
  LODWORD(STACK[0xA00]) = 0;
  LODWORD(STACK[0xB60]) = 0;
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xB50]) = 0;
  LODWORD(STACK[0xB48]) = 0;
  LODWORD(STACK[0xB40]) = 0;
  LODWORD(STACK[0xB38]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xB20]) = 0;
  LODWORD(STACK[0xB18]) = 0;
  LODWORD(STACK[0xB10]) = 0;
  LODWORD(STACK[0xD40]) = 0;
  LODWORD(STACK[0xB00]) = 0;
  LODWORD(STACK[0xAF8]) = 0;
  LODWORD(STACK[0xD88]) = 0;
  LODWORD(STACK[0x5E8]) = ((a1 - 908777280) ^ 0x77F3B6FD) - 806355016 + (((479 * (v1 ^ 0x5C1)) ^ 0xEFE72AE0) & (2 * (a1 - 908777280)));
  v3 = *(v2 + 8 * v1);
  LODWORD(STACK[0xD38]) = 1;
  LODWORD(STACK[0xE28]) = 1;
  LODWORD(STACK[0xDE8]) = 1;
  LODWORD(STACK[0xD18]) = 1;
  LODWORD(STACK[0xB68]) = 1;
  LODWORD(STACK[0xB70]) = 1;
  LODWORD(STACK[0xD20]) = 1;
  LODWORD(STACK[0xB7C]) = 1;
  LODWORD(STACK[0xB88]) = 1;
  LODWORD(STACK[0xDA8]) = 1;
  LODWORD(STACK[0xD2C]) = 1;
  LODWORD(STACK[0xB80]) = 1;
  LODWORD(STACK[0xB90]) = 1;
  LODWORD(STACK[0xB98]) = 1;
  LODWORD(STACK[0xBA0]) = 1;
  LODWORD(STACK[0xDF0]) = 1;
  LODWORD(STACK[0xDB0]) = 1;
  LODWORD(STACK[0xD48]) = 1;
  LODWORD(STACK[0xBA8]) = 1;
  LODWORD(STACK[0xA1C]) = 1;
  LODWORD(STACK[0xA20]) = 1;
  LODWORD(STACK[0xBB4]) = 1;
  LODWORD(STACK[0xA28]) = 1;
  LODWORD(STACK[0xA38]) = 1;
  LODWORD(STACK[0xD50]) = 1;
  LODWORD(STACK[0xBB8]) = 1;
  LODWORD(STACK[0xA30]) = 1;
  LODWORD(STACK[0xA48]) = 1;
  LODWORD(STACK[0xBCC]) = 1;
  LODWORD(STACK[0xA50]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xDB8]) = 1;
  LODWORD(STACK[0xD58]) = 1;
  LODWORD(STACK[0xBC0]) = 1;
  LODWORD(STACK[0xA40]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0xBD0]) = 1;
  LODWORD(STACK[0xA5C]) = 1;
  LODWORD(STACK[0xD68]) = 1;
  LODWORD(STACK[0xBE0]) = 1;
  LODWORD(STACK[0xA70]) = 1;
  LODWORD(STACK[0xA80]) = 1;
  LODWORD(STACK[0xBF8]) = 1;
  LODWORD(STACK[0xA90]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0xE30]) = 1;
  LODWORD(STACK[0xDF8]) = 1;
  LODWORD(STACK[0xDC0]) = 1;
  LODWORD(STACK[0xBD8]) = 1;
  LODWORD(STACK[0xA68]) = 1;
  LODWORD(STACK[0xA78]) = 1;
  LODWORD(STACK[0xBF0]) = 1;
  LODWORD(STACK[0xA88]) = 1;
  LODWORD(STACK[0xAA0]) = 1;
  LODWORD(STACK[0xD70]) = 1;
  LODWORD(STACK[0xC00]) = 1;
  LODWORD(STACK[0xA98]) = 1;
  LODWORD(STACK[0xAB8]) = 1;
  LODWORD(STACK[0xC10]) = 1;
  LODWORD(STACK[0xAC0]) = 1;
  LODWORD(STACK[0xAC8]) = 1;
  LODWORD(STACK[0xDC8]) = 1;
  LODWORD(STACK[0xD78]) = 1;
  LODWORD(STACK[0xC08]) = 1;
  LODWORD(STACK[0xAB0]) = 1;
  LODWORD(STACK[0xC80]) = 1;
  LODWORD(STACK[0xAD0]) = 1;
  LODWORD(STACK[0xD80]) = 1;
  LODWORD(STACK[0xC84]) = 1;
  LODWORD(STACK[0xAD8]) = 1;
  LODWORD(STACK[0xCA0]) = 1;
  LODWORD(STACK[0xAF0]) = 1;
  LODWORD(STACK[0xA08]) = 1;
  LODWORD(STACK[0xE10]) = 1;
  LODWORD(STACK[0xDD0]) = 1;
  LODWORD(STACK[0xD90]) = 1;
  LODWORD(STACK[0xC90]) = 1;
  LODWORD(STACK[0xAE0]) = 1;
  LODWORD(STACK[0xAE8]) = 1;
  LODWORD(STACK[0x9FC]) = 1;
  LODWORD(STACK[0xC98]) = 1;
  LODWORD(STACK[0xD98]) = 1;
  LODWORD(STACK[0xD00]) = 1;
  LODWORD(STACK[0xD08]) = 1;
  LODWORD(STACK[0xDD8]) = 1;
  LODWORD(STACK[0xDA0]) = 1;
  LODWORD(STACK[0xD10]) = 1;
  LODWORD(STACK[0xB08]) = 1;
  LODWORD(STACK[0xA10]) = 1;
  LODWORD(STACK[0xBE8]) = 1;
  LODWORD(STACK[0xC88]) = 1;
  return v3();
}

uint64_t sub_2449544B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W8>)
{
  LODWORD(STACK[0xE28]) = 0;
  LODWORD(STACK[0xDE0]) = 0;
  LODWORD(STACK[0xDA8]) = 0;
  LODWORD(STACK[0xD38]) = 0;
  LODWORD(STACK[0xB98]) = 0;
  LODWORD(STACK[0xBA0]) = 0;
  LODWORD(STACK[0xDF0]) = 0;
  LODWORD(STACK[0xDB0]) = 0;
  LODWORD(STACK[0xD48]) = 0;
  LODWORD(STACK[0xBA8]) = 0;
  LODWORD(STACK[0xA1C]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0xBB4]) = 0;
  LODWORD(STACK[0xA28]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0xD50]) = 0;
  LODWORD(STACK[0xBB8]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0xA48]) = 0;
  LODWORD(STACK[0xBCC]) = 0;
  LODWORD(STACK[0xA50]) = 0;
  LODWORD(STACK[0xA60]) = 0;
  LODWORD(STACK[0xDB8]) = 0;
  LODWORD(STACK[0xD58]) = 0;
  LODWORD(STACK[0xBC0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  STACK[0xA58] = 0;
  LODWORD(STACK[0xBD0]) = 0;
  LODWORD(STACK[0xD68]) = 0;
  LODWORD(STACK[0xBE0]) = 0;
  LODWORD(STACK[0xA70]) = 0;
  LODWORD(STACK[0xA80]) = 0;
  LODWORD(STACK[0xBF8]) = 0;
  LODWORD(STACK[0xA90]) = 0;
  LODWORD(STACK[0xAA8]) = 0;
  LODWORD(STACK[0xE30]) = 0;
  LODWORD(STACK[0xDF8]) = 0;
  LODWORD(STACK[0xDC0]) = 0;
  LODWORD(STACK[0xBD8]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xBF0]) = 0;
  LODWORD(STACK[0xA88]) = 0;
  LODWORD(STACK[0xAA0]) = 0;
  LODWORD(STACK[0xD70]) = 0;
  LODWORD(STACK[0xC00]) = 0;
  LODWORD(STACK[0xA98]) = 0;
  LODWORD(STACK[0xAB8]) = 0;
  LODWORD(STACK[0xC10]) = 0;
  LODWORD(STACK[0xAC0]) = 0;
  LODWORD(STACK[0xAC8]) = 0;
  LODWORD(STACK[0xDC8]) = 0;
  LODWORD(STACK[0xD78]) = 0;
  LODWORD(STACK[0xC08]) = 0;
  LODWORD(STACK[0xAB0]) = 0;
  STACK[0xC80] = 0;
  LODWORD(STACK[0xAD0]) = 0;
  LODWORD(STACK[0xD80]) = 0;
  LODWORD(STACK[0xAD8]) = 0;
  LODWORD(STACK[0xCA0]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA08]) = 0;
  LODWORD(STACK[0xE10]) = 0;
  LODWORD(STACK[0xDD0]) = 0;
  LODWORD(STACK[0xD90]) = 0;
  LODWORD(STACK[0xC90]) = 0;
  LODWORD(STACK[0xAE0]) = 0;
  LODWORD(STACK[0xAE8]) = 0;
  LODWORD(STACK[0x9FC]) = 0;
  LODWORD(STACK[0xC98]) = 0;
  LODWORD(STACK[0xB60]) = 0;
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xD98]) = 0;
  LODWORD(STACK[0xD00]) = 0;
  LODWORD(STACK[0xB50]) = 0;
  LODWORD(STACK[0xB48]) = 0;
  LODWORD(STACK[0xD08]) = 0;
  LODWORD(STACK[0xB40]) = 0;
  LODWORD(STACK[0xB38]) = 0;
  LODWORD(STACK[0xDD8]) = 0;
  LODWORD(STACK[0xDA0]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xD10]) = 0;
  LODWORD(STACK[0xB20]) = 0;
  LODWORD(STACK[0xB18]) = 0;
  LODWORD(STACK[0xB10]) = 0;
  LODWORD(STACK[0xB08]) = 0;
  LODWORD(STACK[0xD40]) = 0;
  LODWORD(STACK[0xB00]) = 0;
  LODWORD(STACK[0xAF8]) = 0;
  LODWORD(STACK[0xA10]) = 0;
  LODWORD(STACK[0xBE8]) = 0;
  LODWORD(STACK[0xD88]) = 0;
  LODWORD(STACK[0xC88]) = 0;
  v10 = *(STACK[0xEA8] + ((v8 - 61) ^ 0xELL));
  HIDWORD(v11) = ~v10;
  LODWORD(v11) = (v10 ^ 0xE8) << 24;
  LOBYTE(STACK[0x1E27]) = LODWORD(STACK[0x8E0]) ^ ((v11 >> 25) - ((2 * (v11 >> 25)) & 0xFB) - 3) ^ 0x1E;
  v12 = (a8 - 1315288776) & 0x4E65F7FA;
  v13 = *(v9 + 8 * a8);
  LODWORD(STACK[0xD2C]) = 1;
  LODWORD(STACK[0xDE8]) = 1;
  LODWORD(STACK[0xD18]) = 1;
  LODWORD(STACK[0xB68]) = 1;
  LODWORD(STACK[0xB70]) = 1;
  LODWORD(STACK[0xD20]) = 1;
  LODWORD(STACK[0xB7C]) = 1;
  LODWORD(STACK[0xB88]) = 1;
  LODWORD(STACK[0xB80]) = 1;
  LODWORD(STACK[0xB90]) = 1;
  LODWORD(STACK[0xD60]) = 1;
  LODWORD(STACK[0xA0C]) = 1;
  LODWORD(STACK[0xA00]) = 1;
  return v13(a1, a2, a3, a4, a5, a6, a7, v12);
}

uint64_t sub_2449547D0()
{
  LODWORD(STACK[0xDE0]) = 0;
  LODWORD(STACK[0xE30]) = 0;
  LODWORD(STACK[0xDF8]) = 0;
  LODWORD(STACK[0xD60]) = 0;
  LODWORD(STACK[0xD70]) = 0;
  LODWORD(STACK[0xC00]) = 0;
  LODWORD(STACK[0xA98]) = 0;
  LODWORD(STACK[0xAB8]) = 0;
  LODWORD(STACK[0xC10]) = 0;
  LODWORD(STACK[0xAC0]) = 0;
  LODWORD(STACK[0xAC8]) = 0;
  LODWORD(STACK[0xDC8]) = 0;
  LODWORD(STACK[0xD78]) = 0;
  LODWORD(STACK[0xC08]) = 0;
  LODWORD(STACK[0xAB0]) = 0;
  STACK[0xC80] = 0;
  LODWORD(STACK[0xAD0]) = 0;
  LODWORD(STACK[0xD80]) = 0;
  LODWORD(STACK[0xAD8]) = 0;
  LODWORD(STACK[0xCA0]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA08]) = 0;
  LODWORD(STACK[0xE10]) = 0;
  LODWORD(STACK[0xDD0]) = 0;
  LODWORD(STACK[0xD90]) = 0;
  LODWORD(STACK[0xC90]) = 0;
  LODWORD(STACK[0xAE0]) = 0;
  LODWORD(STACK[0xAE8]) = 0;
  LODWORD(STACK[0xC98]) = 0;
  LODWORD(STACK[0xB60]) = 0;
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xD98]) = 0;
  LODWORD(STACK[0xD00]) = 0;
  LODWORD(STACK[0xB50]) = 0;
  LODWORD(STACK[0xB48]) = 0;
  LODWORD(STACK[0xD08]) = 0;
  LODWORD(STACK[0xB40]) = 0;
  LODWORD(STACK[0xB38]) = 0;
  LODWORD(STACK[0xDD8]) = 0;
  LODWORD(STACK[0xDA0]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xD10]) = 0;
  LODWORD(STACK[0xB20]) = 0;
  LODWORD(STACK[0xB18]) = 0;
  LODWORD(STACK[0xB10]) = 0;
  LODWORD(STACK[0xB08]) = 0;
  LODWORD(STACK[0xD40]) = 0;
  LODWORD(STACK[0xB00]) = 0;
  LODWORD(STACK[0xAF8]) = 0;
  LODWORD(STACK[0xA10]) = 0;
  LODWORD(STACK[0xBE8]) = 0;
  LODWORD(STACK[0xD88]) = 0;
  LODWORD(STACK[0xC88]) = 0;
  LOBYTE(STACK[0x1E24]) = ((STACK[0xEE0] ^ 0xED) - ((2 * (STACK[0xEE0] ^ 0xED)) & 0xA4) + 82) ^ LODWORD(STACK[0x684]) ^ ((v0 ^ 0xFD) + 31);
  v2 = *(v1 + 8 * v0);
  LODWORD(STACK[0xE28]) = 1;
  LODWORD(STACK[0xDE8]) = 1;
  LODWORD(STACK[0xD18]) = 1;
  LODWORD(STACK[0xB68]) = 1;
  LODWORD(STACK[0xB70]) = 1;
  LODWORD(STACK[0xD20]) = 1;
  LODWORD(STACK[0xB7C]) = 1;
  LODWORD(STACK[0xB88]) = 1;
  LODWORD(STACK[0xDA8]) = 1;
  LODWORD(STACK[0xD2C]) = 1;
  LODWORD(STACK[0xB80]) = 1;
  LODWORD(STACK[0xB90]) = 1;
  LODWORD(STACK[0xD38]) = 1;
  LODWORD(STACK[0xB98]) = 1;
  LODWORD(STACK[0xBA0]) = 1;
  LODWORD(STACK[0xDF0]) = 1;
  LODWORD(STACK[0xDB0]) = 1;
  LODWORD(STACK[0xD48]) = 1;
  LODWORD(STACK[0xBA8]) = 1;
  LODWORD(STACK[0xA1C]) = 1;
  LODWORD(STACK[0xA20]) = 1;
  LODWORD(STACK[0xBB4]) = 1;
  LODWORD(STACK[0xA28]) = 1;
  LODWORD(STACK[0xA38]) = 1;
  LODWORD(STACK[0xD50]) = 1;
  LODWORD(STACK[0xBB8]) = 1;
  LODWORD(STACK[0xA30]) = 1;
  LODWORD(STACK[0xA48]) = 1;
  LODWORD(STACK[0xBCC]) = 1;
  LODWORD(STACK[0xA50]) = 1;
  LODWORD(STACK[0xA60]) = 1;
  LODWORD(STACK[0xDB8]) = 1;
  LODWORD(STACK[0xD58]) = 1;
  LODWORD(STACK[0xBC0]) = 1;
  LODWORD(STACK[0xA40]) = 1;
  LODWORD(STACK[0xA58]) = 1;
  LODWORD(STACK[0xBD0]) = 1;
  LODWORD(STACK[0xA5C]) = 1;
  LODWORD(STACK[0xD68]) = 1;
  LODWORD(STACK[0xBE0]) = 1;
  LODWORD(STACK[0xA70]) = 1;
  LODWORD(STACK[0xA80]) = 1;
  LODWORD(STACK[0xBF8]) = 1;
  LODWORD(STACK[0xA90]) = 1;
  LODWORD(STACK[0xAA8]) = 1;
  LODWORD(STACK[0xDC0]) = 1;
  LODWORD(STACK[0xBD8]) = 1;
  LODWORD(STACK[0xA68]) = 1;
  LODWORD(STACK[0xA78]) = 1;
  LODWORD(STACK[0xBF0]) = 1;
  LODWORD(STACK[0xA88]) = 1;
  LODWORD(STACK[0xAA0]) = 1;
  LODWORD(STACK[0xA0C]) = 1;
  LODWORD(STACK[0xA00]) = 1;
  LODWORD(STACK[0x9FC]) = 1;
  return v2(210);
}

uint64_t sub_244954ACC()
{
  LODWORD(STACK[0xDE0]) = 0;
  LODWORD(STACK[0xDF0]) = 0;
  LODWORD(STACK[0xDB0]) = 0;
  LODWORD(STACK[0xD48]) = 0;
  LODWORD(STACK[0xBA8]) = 0;
  LODWORD(STACK[0xA1C]) = 0;
  LODWORD(STACK[0xA20]) = 0;
  LODWORD(STACK[0xBB4]) = 0;
  LODWORD(STACK[0xA28]) = 0;
  LODWORD(STACK[0xA38]) = 0;
  LODWORD(STACK[0xD50]) = 0;
  LODWORD(STACK[0xBB8]) = 0;
  LODWORD(STACK[0xA30]) = 0;
  LODWORD(STACK[0xA48]) = 0;
  LODWORD(STACK[0xBCC]) = 0;
  LODWORD(STACK[0xA50]) = 0;
  LODWORD(STACK[0xA60]) = 0;
  LODWORD(STACK[0xDB8]) = 0;
  LODWORD(STACK[0xD58]) = 0;
  LODWORD(STACK[0xBC0]) = 0;
  LODWORD(STACK[0xA40]) = 0;
  STACK[0xA58] = 0;
  LODWORD(STACK[0xBD0]) = 0;
  LODWORD(STACK[0xD68]) = 0;
  LODWORD(STACK[0xBE0]) = 0;
  LODWORD(STACK[0xA70]) = 0;
  LODWORD(STACK[0xA80]) = 0;
  LODWORD(STACK[0xBF8]) = 0;
  LODWORD(STACK[0xA90]) = 0;
  LODWORD(STACK[0xAA8]) = 0;
  LODWORD(STACK[0xE30]) = 0;
  LODWORD(STACK[0xDF8]) = 0;
  LODWORD(STACK[0xDC0]) = 0;
  LODWORD(STACK[0xBD8]) = 0;
  LODWORD(STACK[0xA68]) = 0;
  LODWORD(STACK[0xA78]) = 0;
  LODWORD(STACK[0xBF0]) = 0;
  LODWORD(STACK[0xA88]) = 0;
  LODWORD(STACK[0xAA0]) = 0;
  LODWORD(STACK[0xD70]) = 0;
  LODWORD(STACK[0xC00]) = 0;
  LODWORD(STACK[0xA98]) = 0;
  LODWORD(STACK[0xAB8]) = 0;
  LODWORD(STACK[0xC10]) = 0;
  LODWORD(STACK[0xAC0]) = 0;
  LODWORD(STACK[0xAC8]) = 0;
  LODWORD(STACK[0xDC8]) = 0;
  LODWORD(STACK[0xD78]) = 0;
  LODWORD(STACK[0xC08]) = 0;
  LODWORD(STACK[0xAB0]) = 0;
  STACK[0xC80] = 0;
  LODWORD(STACK[0xAD0]) = 0;
  LODWORD(STACK[0xD80]) = 0;
  LODWORD(STACK[0xAD8]) = 0;
  LODWORD(STACK[0xCA0]) = 0;
  LODWORD(STACK[0xAF0]) = 0;
  LODWORD(STACK[0xA08]) = 0;
  LODWORD(STACK[0xE10]) = 0;
  LODWORD(STACK[0xDD0]) = 0;
  LODWORD(STACK[0xD90]) = 0;
  LODWORD(STACK[0xC90]) = 0;
  LODWORD(STACK[0xAE0]) = 0;
  LODWORD(STACK[0xAE8]) = 0;
  LODWORD(STACK[0x9FC]) = 0;
  LODWORD(STACK[0xC98]) = 0;
  LODWORD(STACK[0xB60]) = 0;
  LODWORD(STACK[0xB58]) = 0;
  LODWORD(STACK[0xD98]) = 0;
  LODWORD(STACK[0xD00]) = 0;
  LODWORD(STACK[0xB50]) = 0;
  LODWORD(STACK[0xB48]) = 0;
  LODWORD(STACK[0xD08]) = 0;
  LODWORD(STACK[0xB40]) = 0;
  LODWORD(STACK[0xB38]) = 0;
  LODWORD(STACK[0xDD8]) = 0;
  LODWORD(STACK[0xDA0]) = 0;
  LODWORD(STACK[0xB30]) = 0;
  LODWORD(STACK[0xB28]) = 0;
  LODWORD(STACK[0xD10]) = 0;
  LODWORD(STACK[0xB20]) = 0;
  LODWORD(STACK[0xB18]) = 0;
  LODWORD(STACK[0xB10]) = 0;
  LODWORD(STACK[0xB08]) = 0;
  LODWORD(STACK[0xD40]) = 0;
  LODWORD(STACK[0xB00]) = 0;
  LODWORD(STACK[0xAF8]) = 0;
  LODWORD(STACK[0xA10]) = 0;
  LODWORD(STACK[0xBE8]) = 0;
  LODWORD(STACK[0xD88]) = 0;
  LODWORD(STACK[0xC88]) = 0;
  LOBYTE(STACK[0x1E33]) = LODWORD(STACK[0x588]) ^ STACK[0xEE0] ^ v0 ^ 0xCA;
  v2 = *(v1 + 8 * v0);
  LODWORD(STACK[0xD60]) = 1;
  LODWORD(STACK[0xE28]) = 1;
  LODWORD(STACK[0xDE8]) = 1;
  LODWORD(STACK[0xD18]) = 1;
  LODWORD(STACK[0xB68]) = 1;
  LODWORD(STACK[0xB70]) = 1;
  LODWORD(STACK[0xD20]) = 1;
  LODWORD(STACK[0xB7C]) = 1;
  LODWORD(STACK[0xB88]) = 1;
  LODWORD(STACK[0xDA8]) = 1;
  LODWORD(STACK[0xD2C]) = 1;
  LODWORD(STACK[0xB80]) = 1;
  LODWORD(STACK[0xB90]) = 1;
  LODWORD(STACK[0xD38]) = 1;
  LODWORD(STACK[0xB98]) = 1;
  LODWORD(STACK[0xBA0]) = 1;
  LODWORD(STACK[0xA0C]) = 1;
  LODWORD(STACK[0xA00]) = 1;
  return v2();
}