uint64_t sub_2447F7658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v12 = a6 + 8;
  v13 = a4 + 8;
  v14 = v7 < 0xF7AE1FE2;
  v15 = a7 + 1 + v8;
  v16 = v14 ^ (v15 < (v10 ^ 0x279Eu) * v9 - 139585059);
  v17 = v15 < v7;
  if (!v16)
  {
    v14 = v17;
  }

  return (*(v11 + 8 * ((!v14 * ((v10 ^ 0x24AC) * v9 - 20202)) ^ v10)))(a1, a2, a3, v13, a5, v12);
}

uint64_t sub_2447F786C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a6 + 8;
  v13 = a4 + 8;
  v14 = v11 - ((2 * a8) & 0x28FFD64AC1CB2EFELL);
  v15 = v8 < 0x185E4696;
  if (v15 == (v9 - 1097299525) < 0x185E4696)
  {
    v15 = v9 - 1097299525 < v8;
  }

  return (*(STACK[0x940] + 8 * (((183 * ((v10 - 511074319) & 0x1E766FEC ^ 0x27A6) - 12728) * !v15) ^ v10)))(a1, a2, a3, v13, a5, v12, a7, v14);
}

uint64_t sub_2447F7AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v8 = (a6 + 7110) | 0x1008;
  v9 = STACK[0x838];
  v10 = LODWORD(STACK[0x838]) - 168320026 + ((a6 + 735623571) & 0xD4274EB4);
  v11 = LODWORD(STACK[0x908]) - 168316310;
  v12 = (v11 < 0xFDC66F0A) ^ (v10 < 0xFDC66F0A);
  LODWORD(STACK[0x958]) = v10;
  v13 = v10 > v11;
  if (v12)
  {
    v13 = v10 < 0xFDC66F0A;
  }

  LODWORD(STACK[0x950]) = v8;
  v14 = *(v7 + 8 * ((v13 * (v8 + 6004)) ^ a6));
  LODWORD(STACK[0x830]) = 2046963327;
  LODWORD(STACK[0x978]) = 1;
  v15 = STACK[0x518];
  STACK[0x820] = STACK[0x518];
  STACK[0x910] = STACK[0x870];
  STACK[0x868] = v15;
  LODWORD(STACK[0x930]) = v9;
  LODWORD(STACK[0x878]) = 919223698;
  LODWORD(STACK[0x850]) = a7;
  LODWORD(STACK[0x948]) = a7;
  return v14();
}

uint64_t sub_2447F7C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v12 = STACK[0x958];
  v13 = (v8 + 437512518) & 0xE5EC3FAE;
  *(v7 + v9) = v11;
  LODWORD(STACK[0x950]) = v13;
  v14 = v13 ^ 0xFFFFF964;
  v15 = ((v8 + 1878060254) & 0x900F3E9F) + LODWORD(STACK[0x908]);
  v16 = LODWORD(STACK[0x908]) - 168316309;
  v17 = (v12 < 0xFDC66F0A) ^ (v16 < 0xFDC66F0A);
  v18 = v12 > v16;
  if (v17)
  {
    v18 = v12 < 0xFDC66F0A;
  }

  v19 = *(v10 + 8 * (v8 ^ (1554 * v18)));
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x908]) = v15 + v14;
  v20 = STACK[0x518];
  STACK[0x820] = STACK[0x518];
  STACK[0x910] = STACK[0x870];
  STACK[0x868] = v20;
  LODWORD(STACK[0x930]) = STACK[0x838];
  LODWORD(STACK[0x878]) = 919223698;
  LODWORD(STACK[0x850]) = a7;
  LODWORD(STACK[0x948]) = a7;
  return v19();
}

uint64_t sub_2447F7E48(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v10 = a5 - ((a6 - 0xEC60B4A72AF1C8FLL) & (2 * a1));
  v11 = v7 < 0x4D26506E;
  v12 = a4 - 798762754;
  v13 = (a4 + 1);
  v14 = v11 ^ (v12 < (((a7 - 144) | v9) ^ 0x4D262AEF) + ((a7 - 657) | 8u));
  v15 = v7 > v12;
  if (!v14)
  {
    v11 = v15;
  }

  return (*(v8 + 8 * ((30137 * v11) ^ a7)))(v10, a2, a3, v13);
}

uint64_t sub_2447F7EE8(uint64_t a1, uint64_t a2, unint64_t a3, int a4, int a5)
{
  v9 = *(v5 - 0x1DC6E026F0860055) ^ v7;
  if (__CFADD__(v9 * a3, a1 ^ v8))
  {
    return (*(v6 + 8 * ((35 * (a4 != 2093119345)) ^ (a5 + 2115))))(((v9 * a3) >> 64) + 1);
  }

  else
  {
    return (*(v6 + 8 * ((35 * (a4 != 2093119345)) ^ (a5 + 2115))))((v9 * a3) >> 64);
  }
}

uint64_t sub_2447F8054@<X0>(uint64_t a1@<X0>, char a2@<W2>, int a3@<W3>, uint64_t a4@<X4>, int a5@<W5>, unsigned int a6@<W8>)
{
  v10 = a1 - ((a4 << (a2 + 118)) & 0xF139F4B58D511804);
  v11 = v6 < a6;
  v12 = (a5 ^ 0x8CABACBA) + a3;
  v13 = v11 ^ (v12 < ((a5 + 414396448) & 0xE74CBF7F ^ v8));
  v14 = v6 > v12;
  if (!v13)
  {
    v11 = v14;
  }

  return (*(v7 + 8 * ((v11 * v9) ^ a5)))(v10);
}

uint64_t sub_2447F80FC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = (a5 + 641);
  v10 = a5 + 714;
  v11 = *(v5 - 0x1DC6E026F0860055) ^ (v6 + ((a5 - 12262) | 0x2041u) - 1304);
  v12 = (v11 * a2) >> 64;
  v13 = __CFADD__(v11 * a2, a1 ^ v8);
  if (v13)
  {
    v14 = v12 + 1;
  }

  else
  {
    v14 = (v11 * a2) >> 64;
  }

  return (*(v7 + 8 * ((399 * (a4 != 130989216)) ^ v10)))(v12 + v13 + v8, a2, v9, a4, v14, v9);
}

uint64_t sub_2447F81F4(uint64_t a1, uint64_t a2, int a3)
{
  v9 = *(v4 - 0x1DC6E026F0860055) ^ v7;
  v10 = a1 ^ v8;
  v11 = v5 ^ 0xB69E269B84B5649;
  v12 = __CFADD__(v11, v10);
  v13 = v11 + v10;
  v14 = v12;
  v12 = __CFADD__(v13, v9);
  v15 = v13 + v9;
  if (v12)
  {
    v16 = v14 + 1;
  }

  else
  {
    v16 = v14;
  }

  *(v3 - 0x1DC6E026F0860055) = v15 + v7 - ((2 * v15) & 0xA70F389AE677652ALL);
  return (*(v6 + 8 * ((26 * ((v16 ^ 0xF7BCFCFF6682FA79) + 0x7AC7FF77FB7FE7E0 + ((v16 << ((a3 - 22) ^ 0x14u)) & 2) != 0x7284FC776202E259)) ^ a3)))();
}

uint64_t sub_2447F8318(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = v12 + v13;
  v18 = (v11 ^ v8 ^ *(v10 + v14)) + v17;
  v19 = v18 + v16 - (a4 & (2 * v18));
  *(v9 + v14) = v19;
  return (*(v15 + 8 * (((((((v19 ^ v16) < v17) | (2 * ((v19 ^ v16) < v17))) ^ a6) + a8 != a5) * a2) ^ a3)))();
}

uint64_t sub_2447F837C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0x950]) = 427 * (v6 ^ 0x5AE);
  v8 = (STACK[0x6E8] & 1) == 0;
  if (STACK[0x6E8])
  {
    v9 = STACK[0x478];
  }

  else
  {
    v9 = STACK[0x4E8];
  }

  v10 = STACK[0x720];
  if ((STACK[0x6E8] & 1) == 0)
  {
    v10 = a3;
  }

  LODWORD(STACK[0x60C]) = v10;
  if (v8)
  {
    v11 = 2046963357;
  }

  else
  {
    v11 = 2046963356;
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

uint64_t sub_2447F84A8@<X0>(int a1@<W2>, uint64_t a2@<X5>, int a3@<W8>)
{
  LODWORD(STACK[0x950]) = 610 * (a3 ^ 0x900);
  if (v4)
  {
    v5 = STACK[0x478];
  }

  else
  {
    v5 = STACK[0x4E8];
  }

  v6 = STACK[0x720];
  if ((v4 & 1) == 0)
  {
    v6 = a1;
  }

  LODWORD(STACK[0x60C]) = v6;
  if (v4)
  {
    v7 = 2046963344;
  }

  else
  {
    v7 = 2046963345;
  }

  LODWORD(STACK[0x830]) = v7;
  v8 = STACK[0x7E0];
  if (v4)
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

uint64_t sub_2447F85D0@<X0>(int a1@<W2>, uint64_t a2@<X5>, int a3@<W8>)
{
  v4 = a3 ^ 0x2687;
  LODWORD(STACK[0x950]) = 366 * (v4 ^ 0x593);
  v5 = (STACK[0x6C4] & 1) == 0;
  if (STACK[0x6C4])
  {
    v6 = STACK[0x478];
  }

  else
  {
    v6 = STACK[0x4E8];
  }

  v7 = STACK[0x720];
  if ((STACK[0x6C4] & 1) == 0)
  {
    v7 = a1;
  }

  LODWORD(STACK[0x60C]) = v7;
  if (v5)
  {
    v8 = 2046963353;
  }

  else
  {
    v8 = 2046963352;
  }

  LODWORD(STACK[0x830]) = v8;
  v9 = STACK[0x7E0];
  if (!v5)
  {
    v9 = a1;
  }

  LODWORD(STACK[0x644]) = v9;
  v10 = *(a2 + 8 * v4);
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

uint64_t sub_2447F8704@<X0>(int a1@<W2>, uint64_t a2@<X5>, int a3@<W8>)
{
  LODWORD(STACK[0x950]) = a3 + 311;
  v5 = *(a2 + 8 * (((((a3 - 807222569) & 0x301D3E5F) - 12716) * ((v4 & 1) == 0)) ^ (a3 - 10903)));
  LODWORD(STACK[0x830]) = 2046963334;
  v6 = STACK[0x480];
  STACK[0x870] = STACK[0x480];
  v7 = STACK[0x478];
  STACK[0x820] = STACK[0x478];
  STACK[0x910] = v6;
  STACK[0x868] = v7;
  LODWORD(STACK[0x648]) = STACK[0x790];
  LODWORD(STACK[0x900]) = STACK[0x608];
  LODWORD(STACK[0x880]) = STACK[0x5F8];
  LODWORD(STACK[0x5F0]) = STACK[0x800];
  LODWORD(STACK[0x60C]) = STACK[0x720];
  LODWORD(v6) = STACK[0x858];
  LODWORD(STACK[0x838]) = STACK[0x858];
  LODWORD(STACK[0x888]) = STACK[0x638];
  LODWORD(STACK[0x930]) = v6;
  LODWORD(STACK[0x878]) = 919223698;
  LODWORD(STACK[0x898]) = STACK[0x630];
  LODWORD(STACK[0x64C]) = STACK[0x654];
  LODWORD(STACK[0x57C]) = STACK[0x7EC];
  LODWORD(STACK[0x828]) = STACK[0x5E4];
  LODWORD(STACK[0x810]) = STACK[0x808];
  LODWORD(STACK[0x524]) = STACK[0x658];
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x81C]) = STACK[0x5E8];
  LODWORD(STACK[0x850]) = a1;
  LODWORD(STACK[0x890]) = STACK[0x640];
  LODWORD(STACK[0x948]) = a1;
  LODWORD(STACK[0x644]) = a1;
  LODWORD(STACK[0x8A0]) = v3;
  LODWORD(STACK[0x8B0]) = STACK[0x63C];
  LODWORD(STACK[0x8A8]) = STACK[0x634];
  return v5();
}

uint64_t sub_2447F883C@<X0>(int a1@<W2>, int a2@<W8>)
{
  v4 = *(STACK[0x940] + 8 * (a2 - 11354));
  LODWORD(STACK[0x830]) = 2046963335;
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

uint64_t sub_2447F8938@<X0>(int a1@<W2>, uint64_t a2@<X5>, int a3@<W8>)
{
  LODWORD(STACK[0x950]) = a3 + 3795;
  v4 = (STACK[0x6D8] & 1) == 0;
  if (STACK[0x6D8])
  {
    v5 = STACK[0x478];
  }

  else
  {
    v5 = STACK[0x4E8];
  }

  v6 = STACK[0x720];
  if ((STACK[0x6D8] & 1) == 0)
  {
    v6 = a1;
  }

  LODWORD(STACK[0x60C]) = v6;
  if (v4)
  {
    v7 = 2046963361;
  }

  else
  {
    v7 = 2046963360;
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

uint64_t sub_2447F8A58(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v10 = v8 - 7145;
  LODWORD(STACK[0x950]) = (v8 - 7145) ^ 0x1F64;
  if (a8)
  {
    v11 = STACK[0x478];
  }

  else
  {
    v11 = STACK[0x4E8];
  }

  v12 = STACK[0x720];
  if ((a8 & 1) == 0)
  {
    v12 = a3;
  }

  LODWORD(STACK[0x60C]) = v12;
  if (a8)
  {
    v13 = 2046963338;
  }

  else
  {
    v13 = 2046963339;
  }

  LODWORD(STACK[0x830]) = v13;
  v14 = STACK[0x7E0];
  if (a8)
  {
    v14 = a3;
  }

  LODWORD(STACK[0x644]) = v14;
  v15 = *(a6 + 8 * v10);
  v16 = STACK[0x480];
  STACK[0x870] = STACK[0x480];
  STACK[0x910] = v16;
  STACK[0x868] = v11;
  STACK[0x820] = v11;
  LODWORD(STACK[0x648]) = STACK[0x790];
  LODWORD(STACK[0x900]) = STACK[0x608];
  LODWORD(STACK[0x880]) = STACK[0x5F8];
  LODWORD(STACK[0x5F0]) = STACK[0x800];
  LODWORD(v16) = STACK[0x858];
  LODWORD(STACK[0x838]) = STACK[0x858];
  LODWORD(STACK[0x888]) = STACK[0x638];
  LODWORD(STACK[0x930]) = v16;
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
  LODWORD(STACK[0x8A0]) = v9;
  LODWORD(STACK[0x8B0]) = STACK[0x63C];
  LODWORD(STACK[0x8A8]) = STACK[0x634];
  return v15();
}

uint64_t sub_2447F8B80@<X0>(int a1@<W2>, uint64_t a2@<X5>, unsigned int a3@<W8>)
{
  LODWORD(STACK[0x950]) = a3 + 1719368267;
  if (v4)
  {
    v5 = STACK[0x478];
  }

  else
  {
    v5 = STACK[0x4E8];
  }

  v6 = STACK[0x720];
  if ((v4 & 1) == 0)
  {
    v6 = a1;
  }

  LODWORD(STACK[0x60C]) = v6;
  if (v4)
  {
    v7 = 2046963346;
  }

  else
  {
    v7 = 2046963347;
  }

  LODWORD(STACK[0x830]) = v7;
  v8 = STACK[0x7E0];
  if (v4)
  {
    v8 = a1;
  }

  LODWORD(STACK[0x644]) = v8;
  v9 = *(a2 + 8 * ((((a3 > 0x426AAE74) << 9) | ((a3 > 0x426AAE74) << 12)) ^ (a3 + 1719359140)));
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

uint64_t sub_2447F8CCC(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(STACK[0x8A8]) = STACK[0x79C];
  LODWORD(STACK[0x8B0]) = STACK[0x7A0];
  LODWORD(STACK[0x8A0]) = STACK[0x7A4];
  LODWORD(STACK[0x890]) = STACK[0x7A8];
  LODWORD(STACK[0x564]) = STACK[0x7E0];
  LODWORD(STACK[0x81C]) = v4;
  LODWORD(STACK[0x898]) = STACK[0x758];
  LODWORD(STACK[0x55C]) = STACK[0x7EC];
  LODWORD(STACK[0x888]) = STACK[0x7AC];
  v5 = LODWORD(STACK[0x950]) + 91;
  v6 = STACK[0x474];
  LODWORD(STACK[0x7EC]) = LODWORD(STACK[0x950]) - 12808 + LODWORD(STACK[0x474]) - 1671803136;
  LODWORD(STACK[0x7E0]) = v6 & 0x63A5B1FE;
  LODWORD(STACK[0x7D0]) = 1671803190;
  v7 = *(STACK[0x940] + 8 * v5);
  STACK[0x860] = STACK[0x618];
  LODWORD(STACK[0x5F4]) = STACK[0x7F0];
  LODWORD(STACK[0x644]) = a3;
  LODWORD(STACK[0x840]) = STACK[0x614];
  LODWORD(STACK[0x64C]) = v3;
  LODWORD(STACK[0x600]) = STACK[0x7FC];
  LODWORD(STACK[0x84C]) = STACK[0x610];
  return v7();
}

uint64_t sub_2447F8D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LODWORD(STACK[0x900]) = v6;
  LODWORD(STACK[0x908]) = v7;
  LODWORD(STACK[0x950]) = v8;
  v9 = STACK[0x738];
  LODWORD(STACK[0x534]) = STACK[0x734];
  LODWORD(STACK[0x56C]) = STACK[0x730];
  STACK[0x538] = STACK[0x740];
  STACK[0x570] = STACK[0x748];
  STACK[0x540] = STACK[0x800];
  STACK[0x548] = STACK[0x750];
  LODWORD(STACK[0x568]) = v9;
  LODWORD(STACK[0x800]) = (((v9 - 71) ^ v5) & v5) >> ((v5 - 34) ^ __clz((((v9 - 71) ^ v5) << 24) | 0x1000000) ^ 0xE7);
  v10 = *(STACK[0x940] + 8 * (v5 | 0x4B0));
  v11 = STACK[0x528];
  LODWORD(STACK[0x608]) = STACK[0x644];
  return v10(a1, LODWORD(STACK[0x808]), a3, a4, a5, v11);
}

uint64_t sub_2447F8E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(STACK[0x60C]) = v6;
  v7 = *(STACK[0x940] + 8 * v5);
  v8 = LODWORD(STACK[0x600]);
  LODWORD(STACK[0x644]) = a5;
  return v7(a1, a2, v8);
}

uint64_t sub_2447F8E80(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x600]) = a3;
  v9 = *(STACK[0x940] + 8 * ((3550 * (a8 == -1733432476)) ^ (a8 + 1257719046)));
  STACK[0x528] = a6;
  LODWORD(STACK[0x978]) = v8;
  return v9(a2);
}

uint64_t sub_2447F8EF8(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(STACK[0x940] + 8 * a3);
  STACK[0x860] = v3;
  return v4();
}

uint64_t sub_2447F8F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x840]) = v12;
  LODWORD(STACK[0x84C]) = a7;
  LODWORD(STACK[0x610]) = v11;
  LODWORD(STACK[0x614]) = v10;
  STACK[0x618] = v9;
  LODWORD(STACK[0x4C8]) = v8;
  v15 = *(STACK[0x940] + 8 * v7);
  LODWORD(STACK[0x694]) = v13;
  return v15(a1, 6 * (v7 ^ 0x419Cu), v14);
}

uint64_t sub_2447F8F5C(uint64_t a1, int a2)
{
  LODWORD(STACK[0x690]) = v2;
  v4 = *(STACK[0x940] + 8 * a2);
  LODWORD(STACK[0x694]) = v3;
  return v4();
}

uint64_t sub_2447F9098(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v15 = v9 < v13;
  *(v8 + v12) = *(a4 + v12);
  v16 = a2 + v10;
  v17 = (a2 + 1);
  v18 = a4 + 8;
  v19 = v15 ^ (v16 < v13);
  v20 = v9 > v16;
  if (!v19)
  {
    v15 = v20;
  }

  return (*(v14 + 8 * ((!v15 * (v11 + a8)) ^ v11)))(a1, v17, a3, v18);
}

uint64_t sub_2447F90F4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v7 = *(v5 + 8 * (((2 * ((a3 ^ (v3 - 46)) & 1)) & 0xEF | (16 * ((a3 ^ (v3 - 46)) & 1))) ^ v3));
  LODWORD(STACK[0x690]) = v4;
  LODWORD(STACK[0x694]) = v6;
  return v7();
}

uint64_t sub_2447F91B0()
{
  LODWORD(STACK[0x900]) = 0;
  LODWORD(STACK[0x908]) = 0;
  LODWORD(STACK[0x8E0]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  LODWORD(STACK[0x8C0]) = 0;
  LODWORD(STACK[0x8D8]) = 0;
  v3 = (v1 + 1907812106) & 0x8E493E9A;
  LODWORD(STACK[0x950]) = v3;
  v4 = *(v2 + 8 * (((v3 ^ (v1 + 876827866) & 0xCBBCBED6 ^ 0x12F6) * (v0 & 1)) ^ v1));
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x958]) = 1;
  return v4(0);
}

uint64_t sub_2447F9334()
{
  LODWORD(STACK[0x978]) = 0;
  v3 = (v0 + 10053);
  v4 = *(v2 + 8 * ((((v3 ^ 0xFFFFC1A3) + (v0 ^ 0x6A0)) * (v1 & 1)) ^ v0));
  LODWORD(STACK[0x958]) = 1;
  v5 = STACK[0x3B0];
  LODWORD(STACK[0x4AC]) = STACK[0x3BC];
  return v4(0, v3, 0, v5, 0);
}

uint64_t sub_2447F93F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = v5 + 6843;
  LODWORD(STACK[0x950]) = v7 - 5002;
  v8 = *(v6 + 8 * ((((v7 - 5002) ^ 0x29AB ^ ((v7 - 17228) | 0x883)) * (a5 & 1)) ^ v7));
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x900]) = STACK[0x608];
  v9 = STACK[0x960];
  LODWORD(STACK[0x880]) = STACK[0x960];
  v10 = STACK[0x570];
  LODWORD(STACK[0x608]) = v9;
  LODWORD(STACK[0x5F8]) = STACK[0x56C];
  LODWORD(STACK[0x958]) = 1;
  return v8(1, a2, 1, v10, 0);
}

uint64_t sub_2447F94DC()
{
  LODWORD(STACK[0x978]) = 1;
  v3 = *(v2 + 8 * ((((857 * (v0 ^ 0x2729) + 8928) ^ (1151 * (v0 ^ 0x2720))) * ((v1 & 1) == 0)) ^ v0));
  LODWORD(STACK[0x958]) = 1;
  return v3(0);
}

uint64_t sub_2447F977C()
{
  v1 = LODWORD(STACK[0x610]) - ((2 * LODWORD(STACK[0x610]) - 2119634234) & 0x8AD9C348) - 2042537209;
  v2 = LODWORD(STACK[0x614]) + 1;
  v3 = STACK[0x618] + 8 * ((v1 >> 6) & 1);
  v4 = *(STACK[0x940] + 8 * (v0 ^ (23 * ((LODWORD(STACK[0x614]) - 963835232) > 0x3F))));
  LODWORD(STACK[0x958]) = 1;
  LODWORD(STACK[0x614]) = v2;
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x610]) = (v1 & 0x3F ^ 0x3F7BA6FA) - 5251136 + ((((v0 ^ 0x6026) + 3842) ^ 0x3610) & (2 * v1) ^ 8);
  STACK[0x618] = v3;
  return v4(0);
}

uint64_t sub_2447F98F8()
{
  LODWORD(STACK[0x950]) = 0;
  LODWORD(STACK[0x900]) = 0;
  LODWORD(STACK[0x7DC]) = 0;
  LODWORD(STACK[0x908]) = 0;
  v2 = *(v1 + 8 * (((((v0 + 5711) | 0x10A) - 12281) * (LODWORD(STACK[0x568]) == 73)) ^ v0));
  LODWORD(STACK[0x958]) = 1;
  STACK[0x490] = STACK[0x510];
  STACK[0x3F0] = STACK[0x408];
  LODWORD(STACK[0x440]) = STACK[0x444];
  LODWORD(STACK[0x3D0]) = 1722570335;
  LODWORD(STACK[0x3D4]) = STACK[0x46C];
  v3 = STACK[0x404];
  LODWORD(STACK[0x64C]) = STACK[0x404];
  LODWORD(STACK[0x498]) = v3;
  LODWORD(STACK[0x3FC]) = STACK[0x5EC];
  v4 = LODWORD(STACK[0x960]);
  LODWORD(STACK[0x7D4]) = 1;
  LODWORD(STACK[0x808]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  STACK[0x528] = STACK[0x4F8];
  STACK[0x860] = STACK[0x618];
  LODWORD(STACK[0x978]) = 1;
  return v2(0, 0, v4);
}

uint64_t sub_2447F9A1C()
{
  LODWORD(STACK[0x950]) = 0;
  LODWORD(STACK[0x900]) = 0;
  LODWORD(STACK[0x7DC]) = 0;
  LODWORD(STACK[0x908]) = 0;
  v2 = *(v1 + 8 * (((6113 * (v0 ^ 0x498) - 12186) * (LODWORD(STACK[0x568]) != 71)) ^ v0));
  LODWORD(STACK[0x958]) = 1;
  STACK[0x490] = STACK[0x510];
  STACK[0x3F0] = STACK[0x408];
  LODWORD(STACK[0x440]) = STACK[0x444];
  LODWORD(STACK[0x3D0]) = 1722570335;
  LODWORD(STACK[0x3D4]) = STACK[0x46C];
  v3 = STACK[0x960];
  v4 = STACK[0x404];
  LODWORD(STACK[0x64C]) = STACK[0x404];
  LODWORD(STACK[0x498]) = v4;
  LODWORD(STACK[0x3FC]) = STACK[0x5EC];
  LODWORD(STACK[0x7D4]) = 1;
  LODWORD(STACK[0x808]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  STACK[0x528] = STACK[0x478];
  LODWORD(STACK[0x644]) = v3;
  LODWORD(STACK[0x978]) = 1;
  return v2(0, 0);
}

uint64_t sub_2447F9BB8@<X0>(int a1@<W7>, int a2@<W8>)
{
  v7 = *(v6 + 8 * ((((a2 + 1976136945) & 0x8A36B6CB ^ (a2 - 329861195) & 0x13A941FF ^ 0x32E9) * (LODWORD(STACK[0x474]) == LODWORD(STACK[0x7D0]))) ^ (a2 + 11288)));
  LODWORD(STACK[0x908]) = 130989217;
  LODWORD(STACK[0x958]) = 1;
  LODWORD(STACK[0x738]) = 71;
  STACK[0x750] = STACK[0x510];
  v8 = STACK[0x478];
  STACK[0x800] = STACK[0x478];
  STACK[0x748] = STACK[0x408];
  STACK[0x740] = v8;
  LODWORD(STACK[0x730]) = STACK[0x5EC];
  LODWORD(STACK[0x734]) = v5;
  LODWORD(STACK[0x7D4]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  LODWORD(STACK[0x808]) = 1;
  LODWORD(STACK[0x7DC]) = 1;
  STACK[0x8F8] = STACK[0x4E8];
  LODWORD(STACK[0x628]) = v4;
  LODWORD(STACK[0x72C]) = v4;
  STACK[0x698] = v3;
  LODWORD(STACK[0x650]) = a1;
  LODWORD(STACK[0x66C]) = STACK[0x858];
  LODWORD(STACK[0x624]) = v2;
  return v7();
}

uint64_t sub_2447F9CD8@<X0>(int a1@<W1>, int a2@<W3>, int a3@<W7>, int a4@<W8>)
{
  v11 = LODWORD(STACK[0x424]);
  v12 = *(v10 + 8 * (((a4 + 15971 + (a4 ^ 0x1C0Fu) + LODWORD(STACK[0x81C]) - 745878182 > 7) * a1) | a4));
  STACK[0x5B0] = v7;
  LODWORD(STACK[0x5F0]) = a3;
  STACK[0x618] = v4;
  LODWORD(STACK[0x614]) = v5;
  LODWORD(STACK[0x610]) = a2;
  LODWORD(STACK[0x60C]) = v8;
  LODWORD(STACK[0x64C]) = v6;
  LODWORD(STACK[0x644]) = v9;
  return v12(v11);
}

uint64_t sub_2447F9D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(v8 + 8 * (((((v7 + 1282804358) & 0xB389EDEF) - 3365) * (v6 > 9)) | v7));
  v11 = LODWORD(STACK[0x648]);
  LODWORD(STACK[0x658]) = v9;
  return v10(a1, a2, a3, a4, a5, a6, v11);
}

uint64_t sub_2447F9DE4(int a1, uint64_t a2, int a3, uint64_t a4, int a5, unint64_t a6)
{
  LODWORD(STACK[0x950]) = v7 | 0x3208;
  v15 = *(v12 + 8 * (((a3 == (v6 ^ 0x2C74DF58)) * ((v7 | 0x3208) + 54)) ^ v6));
  v17 = LODWORD(STACK[0x57C]);
  STACK[0x750] = STACK[0x548];
  STACK[0x800] = STACK[0x540];
  STACK[0x748] = STACK[0x570];
  STACK[0x740] = STACK[0x538];
  STACK[0x448] = a6;
  STACK[0x428] = v14;
  LODWORD(STACK[0x454]) = a5;
  LODWORD(STACK[0x7F0]) = STACK[0x5F4];
  LODWORD(STACK[0x7AC]) = STACK[0x888];
  LODWORD(STACK[0x7EC]) = STACK[0x55C];
  v18 = LODWORD(STACK[0x560]);
  LODWORD(STACK[0x730]) = STACK[0x56C];
  LODWORD(STACK[0x758]) = STACK[0x898];
  LODWORD(STACK[0x57C]) = v11;
  LODWORD(STACK[0x4AC]) = v10;
  LODWORD(STACK[0x524]) = v13;
  LODWORD(STACK[0x7A8]) = STACK[0x890];
  LODWORD(STACK[0x7A4]) = STACK[0x8A0];
  LODWORD(STACK[0x7A0]) = STACK[0x8B0];
  LODWORD(STACK[0x79C]) = STACK[0x8A8];
  LODWORD(STACK[0x5E8]) = v8 + 2;
  LODWORD(STACK[0x7FC]) = STACK[0x600];
  LODWORD(STACK[0x424]) = a1;
  LODWORD(STACK[0x734]) = STACK[0x534];
  LODWORD(STACK[0x7E0]) = STACK[0x564];
  LODWORD(STACK[0x738]) = STACK[0x568];
  return v15(v17, a2, v9, a4, v18);
}

uint64_t sub_2447F9FAC(int a1, int a2, int a3, uint64_t a4, int a5, unint64_t a6)
{
  v13 = 10 * (v6 ^ 0xBAC);
  LODWORD(STACK[0x950]) = v13;
  v14 = *(v12 + 8 * ((4814 * (a3 == v6 + 745836996 + v13)) ^ v6));
  LODWORD(STACK[0x5E8]) = v7 - 3;
  LODWORD(STACK[0x81C]) = v7 - 2;
  LODWORD(STACK[0x5A8]) = STACK[0x878];
  STACK[0x448] = a6;
  STACK[0x428] = 0;
  STACK[0x4D8] = STACK[0x870];
  STACK[0x4D0] = STACK[0x820];
  STACK[0x5A0] = STACK[0x910];
  STACK[0x598] = STACK[0x868];
  LODWORD(STACK[0x454]) = a5;
  LODWORD(STACK[0x790]) = v11;
  LODWORD(STACK[0x4CC]) = STACK[0x838];
  LODWORD(STACK[0x5AC]) = STACK[0x930];
  LODWORD(STACK[0x5E4]) = STACK[0x828];
  LODWORD(STACK[0x4AC]) = v9;
  LODWORD(STACK[0x808]) = STACK[0x810];
  LODWORD(STACK[0x554]) = STACK[0x830];
  LODWORD(STACK[0x424]) = a1;
  LODWORD(STACK[0x550]) = a2;
  LODWORD(STACK[0x594]) = v10;
  LODWORD(STACK[0x878]) = 919223702;
  LODWORD(STACK[0x524]) = v11;
  LODWORD(STACK[0x948]) = v11;
  STACK[0x910] = STACK[0x398];
  STACK[0x868] = STACK[0x330];
  LODWORD(STACK[0x900]) = STACK[0x608];
  LODWORD(STACK[0x880]) = STACK[0x5F8];
  LODWORD(STACK[0x930]) = v8;
  LODWORD(STACK[0x978]) = 1;
  return v14();
}

uint64_t sub_2447FA0D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, int a6@<W8>)
{
  STACK[0x900] = v11;
  LODWORD(STACK[0x958]) = 0;
  LODWORD(STACK[0x7D4]) = 0;
  STACK[0x7D8] = 0;
  LODWORD(STACK[0x808]) = 0;
  v12 = 15 * (a6 ^ 0x51A);
  LODWORD(STACK[0x950]) = v12;
  v13 = *(v9 + 8 * (((v12 + ((a6 + 16368) ^ 0xFFFF9071)) * (v6 < 0xE)) ^ a6));
  STACK[0x750] = STACK[0x548];
  STACK[0x800] = STACK[0x540];
  STACK[0x748] = STACK[0x570];
  STACK[0x740] = STACK[0x538];
  STACK[0x448] = STACK[0x500];
  STACK[0x428] = STACK[0x408];
  LODWORD(STACK[0x454]) = STACK[0x2A4];
  LODWORD(STACK[0x7F0]) = STACK[0x5F4];
  v14 = LODWORD(STACK[0x608]);
  LODWORD(STACK[0x7AC]) = STACK[0x888];
  LODWORD(STACK[0x7EC]) = STACK[0x55C];
  LODWORD(STACK[0x730]) = STACK[0x56C];
  LODWORD(STACK[0x758]) = STACK[0x898];
  LODWORD(STACK[0x4AC]) = v7;
  LODWORD(STACK[0x524]) = v10;
  LODWORD(STACK[0x7FC]) = v8;
  LODWORD(STACK[0x424]) = STACK[0x5EC];
  LODWORD(STACK[0x734]) = STACK[0x534];
  LODWORD(STACK[0x7E0]) = STACK[0x564];
  LODWORD(STACK[0x7A8]) = STACK[0x890];
  LODWORD(STACK[0x7A4]) = STACK[0x8A0];
  LODWORD(STACK[0x7A0]) = STACK[0x8B0];
  LODWORD(STACK[0x79C]) = STACK[0x8A8];
  LODWORD(STACK[0x738]) = STACK[0x568];
  LODWORD(STACK[0x8D8]) = v7;
  return v13(a1, a2, v14, a3, a4, a5, v8);
}

uint64_t sub_2447FA208(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unint64_t a6)
{
  LODWORD(STACK[0x960]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  LODWORD(STACK[0x8E0]) = 0;
  LODWORD(STACK[0x860]) = 0;
  v9 = *(STACK[0x940] + 8 * (((LODWORD(STACK[0x81C]) == ((v6 - 1419136974) & 0x54963B9B ^ 0x2C74E08A)) * (((v6 - 5178) | 8) - 9204)) ^ v6));
  LODWORD(STACK[0x81C]) = 745853569;
  LODWORD(STACK[0x958]) = 1;
  STACK[0x448] = a6;
  STACK[0x428] = STACK[0x900];
  STACK[0x5A0] = STACK[0x910];
  STACK[0x598] = STACK[0x868];
  LODWORD(STACK[0x454]) = a5;
  LODWORD(STACK[0x790]) = STACK[0x648];
  LODWORD(STACK[0x880]) = STACK[0x5F8];
  LODWORD(STACK[0x5AC]) = STACK[0x930];
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x908]) = 1;
  LODWORD(STACK[0x5A8]) = STACK[0x878];
  LODWORD(STACK[0x4AC]) = v7;
  LODWORD(STACK[0x524]) = v8;
  LODWORD(STACK[0x424]) = a1;
  LODWORD(STACK[0x594]) = STACK[0x948];
  return v9();
}

uint64_t sub_2447FA320@<X0>(int a1@<W4>, unint64_t a2@<X5>, int a3@<W8>)
{
  LODWORD(STACK[0x958]) = 0;
  LODWORD(STACK[0x960]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  LODWORD(STACK[0x8E0]) = 0;
  LODWORD(STACK[0x860]) = 0;
  v5 = *(STACK[0x940] + 8 * (a3 + 5170));
  LODWORD(STACK[0x81C]) = 745853568;
  LODWORD(STACK[0x908]) = 1;
  STACK[0x448] = a2;
  STACK[0x428] = STACK[0x900];
  STACK[0x5A0] = STACK[0x910];
  STACK[0x598] = STACK[0x868];
  LODWORD(STACK[0x454]) = a1;
  LODWORD(STACK[0x790]) = STACK[0x648];
  LODWORD(STACK[0x880]) = STACK[0x5F8];
  LODWORD(STACK[0x5AC]) = STACK[0x930];
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x5A8]) = STACK[0x878];
  LODWORD(STACK[0x4AC]) = STACK[0x8D8];
  LODWORD(STACK[0x524]) = v3;
  LODWORD(STACK[0x424]) = v4;
  LODWORD(STACK[0x594]) = STACK[0x948];
  return v5();
}

uint64_t sub_2447FA440(int a1, uint64_t a2, int a3, uint64_t a4, int a5, unint64_t a6)
{
  LODWORD(STACK[0x958]) = 0;
  LODWORD(STACK[0x908]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  v18 = *(v15 + 8 * (((a3 == v7) * ((10 * (v6 ^ 0x153B)) ^ 0x7168)) ^ v6));
  LODWORD(STACK[0x5E8]) = v9 - 9;
  STACK[0x750] = STACK[0x548];
  STACK[0x800] = STACK[0x540];
  STACK[0x748] = STACK[0x570];
  STACK[0x740] = STACK[0x538];
  STACK[0x448] = a6;
  STACK[0x428] = v17;
  STACK[0x5A0] = STACK[0x910];
  STACK[0x598] = STACK[0x868];
  LODWORD(STACK[0x454]) = a5;
  LODWORD(STACK[0x7F0]) = STACK[0x5F4];
  LODWORD(STACK[0x5AC]) = STACK[0x930];
  LODWORD(STACK[0x5A8]) = STACK[0x878];
  LODWORD(STACK[0x4AC]) = v12;
  LODWORD(STACK[0x524]) = v16;
  LODWORD(STACK[0x424]) = a1;
  LODWORD(STACK[0x658]) = STACK[0x404];
  LODWORD(STACK[0x550]) = v14;
  LODWORD(STACK[0x594]) = v13;
  LODWORD(STACK[0x404]) = v14;
  LODWORD(STACK[0x720]) = v11;
  LODWORD(STACK[0x7AC]) = STACK[0x888];
  LODWORD(STACK[0x7EC]) = STACK[0x55C];
  LODWORD(STACK[0x730]) = STACK[0x56C];
  LODWORD(STACK[0x758]) = STACK[0x898];
  LODWORD(STACK[0x5E4]) = STACK[0x828];
  LODWORD(STACK[0x554]) = STACK[0x830];
  LODWORD(STACK[0x7FC]) = STACK[0x600];
  LODWORD(STACK[0x5C4]) = STACK[0x2A0];
  LODWORD(STACK[0x734]) = STACK[0x534];
  LODWORD(STACK[0x7E0]) = STACK[0x564];
  LODWORD(STACK[0x7A8]) = STACK[0x890];
  LODWORD(STACK[0x7A4]) = STACK[0x8A0];
  LODWORD(STACK[0x7A0]) = STACK[0x8B0];
  LODWORD(STACK[0x79C]) = STACK[0x8A8];
  LODWORD(STACK[0x738]) = STACK[0x568];
  LODWORD(STACK[0x790]) = v10;
  LODWORD(STACK[0x880]) = v8;
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x960]) = 1;
  LODWORD(STACK[0x8E0]) = 1;
  LODWORD(STACK[0x860]) = 1;
  return v18();
}

uint64_t sub_2447FA634(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(STACK[0x978]) = a3;
  LODWORD(STACK[0x960]) = v5;
  v6 = v4 >= ((987 * (v3 ^ 0x6D2)) ^ ((v3 ^ 0x36F3u) + 10375));
  return (*(a2 + 8 * ((v6 | (2 * v6)) ^ v3)))();
}

uint64_t sub_2447FA798@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W5>, int a5@<W7>, int a6@<W8>)
{
  LODWORD(STACK[0x7C8]) = 0;
  STACK[0x710] = 0;
  STACK[0x6D0] = 0;
  LODWORD(STACK[0x7B0]) = 0;
  LODWORD(STACK[0x7BC]) = 0;
  STACK[0x7D0] = 0;
  STACK[0x7C0] = 0;
  STACK[0x7D8] = 0;
  LODWORD(STACK[0x760]) = 0;
  LODWORD(STACK[0x778]) = 0;
  LODWORD(STACK[0x704]) = 0;
  LODWORD(STACK[0x770]) = 0;
  LODWORD(STACK[0x708]) = 0;
  LODWORD(STACK[0x784]) = 0;
  LODWORD(STACK[0x6BC]) = 0;
  STACK[0x788] = 0;
  LODWORD(STACK[0x768]) = 0;
  v12 = (a6 + 1481) | 0x2008;
  LODWORD(STACK[0x950]) = v12;
  v13 = (a6 ^ 0xC7Fu) * v7;
  v14 = *(a2 + 8 * (((v10 == v12 + 2046950540) * (v13 ^ 0x3271)) ^ a6));
  STACK[0x548] = STACK[0x750];
  STACK[0x540] = STACK[0x800];
  STACK[0x570] = STACK[0x748];
  STACK[0x538] = STACK[0x740];
  STACK[0x4D8] = STACK[0x870];
  STACK[0x4D0] = STACK[0x820];
  LODWORD(STACK[0x5F4]) = STACK[0x7F0];
  LODWORD(STACK[0x608]) = STACK[0x978];
  LODWORD(STACK[0x4CC]) = STACK[0x838];
  LODWORD(STACK[0x55C]) = STACK[0x7EC];
  LODWORD(STACK[0x56C]) = STACK[0x730];
  LODWORD(STACK[0x600]) = STACK[0x7FC];
  LODWORD(STACK[0x2A0]) = STACK[0x5C4];
  LODWORD(STACK[0x404]) = STACK[0x658];
  LODWORD(STACK[0x534]) = STACK[0x734];
  LODWORD(STACK[0x564]) = STACK[0x7E0];
  LODWORD(STACK[0x568]) = STACK[0x738];
  LODWORD(STACK[0x800]) = v6;
  LODWORD(STACK[0x650]) = v6;
  LODWORD(STACK[0x888]) = STACK[0x7AC];
  LODWORD(STACK[0x898]) = STACK[0x758];
  LODWORD(STACK[0x7EC]) = a4;
  LODWORD(STACK[0x890]) = STACK[0x7A8];
  LODWORD(STACK[0x8A0]) = STACK[0x7A4];
  LODWORD(STACK[0x8B0]) = STACK[0x7A0];
  LODWORD(STACK[0x8A8]) = STACK[0x79C];
  LODWORD(STACK[0x554]) = 2046963350;
  LODWORD(STACK[0x71C]) = 1;
  STACK[0x7F0] = STACK[0x4E8];
  v15 = STACK[0x4B0];
  LODWORD(STACK[0x790]) = v11;
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x70C]) = 1;
  LODWORD(STACK[0x6F0]) = 1;
  LODWORD(STACK[0x6D8]) = 1;
  LODWORD(STACK[0x6C0]) = 1;
  LODWORD(STACK[0x6FC]) = 1;
  LODWORD(STACK[0x6E8]) = 1;
  LODWORD(STACK[0x6EC]) = 1;
  LODWORD(STACK[0x700]) = 1;
  LODWORD(STACK[0x6C4]) = 1;
  LODWORD(STACK[0x718]) = 1;
  LODWORD(STACK[0x808]) = STACK[0x810];
  LODWORD(STACK[0x658]) = a3;
  LODWORD(STACK[0x7FC]) = STACK[0x720];
  LODWORD(STACK[0x7E0]) = v8;
  STACK[0x860] = a1;
  STACK[0x8F8] = v15;
  v16 = STACK[0x478];
  STACK[0x698] = STACK[0x5B0];
  LODWORD(STACK[0x66C]) = STACK[0x858];
  LODWORD(STACK[0x628]) = v8;
  LODWORD(STACK[0x840]) = a5;
  LODWORD(STACK[0x72C]) = v8;
  LODWORD(STACK[0x624]) = STACK[0x654];
  LODWORD(STACK[0x828]) = STACK[0x5E4];
  LODWORD(STACK[0x81C]) = STACK[0x5E8];
  LODWORD(STACK[0x908]) = v9;
  LODWORD(STACK[0x84C]) = STACK[0x610];
  return v14(v13, v16);
}

uint64_t sub_2447FA9E0(int a1, uint64_t a2, int a3, uint64_t a4, int a5, unint64_t a6)
{
  LODWORD(STACK[0x950]) = v6 + 9443;
  v12 = *(v10 + 8 * (((a3 != ((v6 + 848408968) & 0xCD6E4FFD ^ (v7 + 2644))) * (v6 - 3362)) | (v6 + 18435)));
  STACK[0x750] = STACK[0x548];
  STACK[0x800] = STACK[0x540];
  STACK[0x748] = STACK[0x570];
  STACK[0x740] = STACK[0x538];
  STACK[0x448] = a6;
  STACK[0x428] = v11;
  LODWORD(STACK[0x454]) = a5;
  LODWORD(STACK[0x7F0]) = STACK[0x5F4];
  LODWORD(STACK[0x7AC]) = STACK[0x638];
  LODWORD(STACK[0x7EC]) = STACK[0x55C];
  LODWORD(STACK[0x730]) = STACK[0x56C];
  LODWORD(STACK[0x758]) = STACK[0x630];
  LODWORD(STACK[0x4AC]) = v8;
  LODWORD(STACK[0x524]) = v9;
  LODWORD(STACK[0x7FC]) = STACK[0x600];
  LODWORD(STACK[0x424]) = a1;
  LODWORD(STACK[0x734]) = STACK[0x534];
  LODWORD(STACK[0x7E0]) = STACK[0x564];
  LODWORD(STACK[0x7A8]) = STACK[0x640];
  LODWORD(STACK[0x7A4]) = STACK[0x62C];
  LODWORD(STACK[0x7A0]) = STACK[0x63C];
  LODWORD(STACK[0x79C]) = STACK[0x634];
  LODWORD(STACK[0x738]) = STACK[0x568];
  return v12();
}

uint64_t sub_2447FAB00(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  *(STACK[0x4A0] - 0x1DC6E026F0860055) = STACK[0x2F0] - 0x2C7863B28CC44D6BLL - ((STACK[0x2F0] << ((v6 + 126) ^ 0x2Au)) & 0xA70F389AE677652ALL);
  v11 = *(STACK[0x940] + 8 * v6);
  STACK[0x448] = a6;
  STACK[0x428] = v10;
  STACK[0x4D8] = STACK[0x870];
  STACK[0x4D0] = STACK[0x820];
  STACK[0x5A0] = STACK[0x910];
  STACK[0x598] = STACK[0x868];
  LODWORD(STACK[0x454]) = v7;
  LODWORD(STACK[0x790]) = v9;
  LODWORD(STACK[0x4CC]) = STACK[0x838];
  LODWORD(STACK[0x5AC]) = STACK[0x930];
  LODWORD(STACK[0x5A8]) = STACK[0x878];
  LODWORD(STACK[0x5E4]) = STACK[0x828];
  LODWORD(STACK[0x4AC]) = v8;
  LODWORD(STACK[0x808]) = STACK[0x810];
  LODWORD(STACK[0x554]) = STACK[0x830];
  LODWORD(STACK[0x5E8]) = 745853565;
  LODWORD(STACK[0x424]) = a1;
  LODWORD(STACK[0x550]) = STACK[0x850];
  LODWORD(STACK[0x594]) = STACK[0x948];
  return v11();
}

uint64_t sub_2447FABF4(int a1, int a2, int a3, uint64_t a4, int a5, unint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x708]) = 0;
  LODWORD(STACK[0x6BC]) = 0;
  STACK[0x788] = 0;
  LODWORD(STACK[0x714]) = 0;
  LODWORD(STACK[0x768]) = 0;
  LODWORD(STACK[0x950]) = v8 ^ 0x220C;
  v18 = *(v16 + 8 * ((((((v8 - 4102) | 0x2191) - 2614) ^ v8 ^ 0x220C) * (a3 == v9 - 5)) ^ v8));
  LODWORD(STACK[0x5E8]) = v9 - 4;
  LODWORD(STACK[0x7C8]) = 1;
  STACK[0x448] = a6;
  STACK[0x428] = v17;
  STACK[0x4D8] = STACK[0x870];
  STACK[0x4D0] = STACK[0x820];
  STACK[0x5A0] = STACK[0x910];
  STACK[0x598] = STACK[0x868];
  STACK[0x7F0] = STACK[0x4E8];
  LODWORD(STACK[0x454]) = a5;
  LODWORD(STACK[0x790]) = v10;
  LODWORD(STACK[0x800]) = a8;
  LODWORD(STACK[0x720]) = v12;
  LODWORD(STACK[0x4CC]) = STACK[0x838];
  LODWORD(STACK[0x5AC]) = STACK[0x930];
  LODWORD(STACK[0x5A8]) = STACK[0x878];
  LODWORD(STACK[0x808]) = STACK[0x810];
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x71C]) = 1;
  LODWORD(STACK[0x70C]) = 1;
  LODWORD(STACK[0x6F0]) = 1;
  LODWORD(STACK[0x6D8]) = 1;
  LODWORD(STACK[0x6C0]) = 1;
  LODWORD(STACK[0x6FC]) = 1;
  LODWORD(STACK[0x6E8]) = 1;
  LODWORD(STACK[0x6EC]) = 1;
  LODWORD(STACK[0x710]) = 1;
  LODWORD(STACK[0x700]) = 1;
  LODWORD(STACK[0x6C4]) = 1;
  LODWORD(STACK[0x6D0]) = 1;
  LODWORD(STACK[0x7B0]) = 1;
  LODWORD(STACK[0x6D4]) = 1;
  LODWORD(STACK[0x7BC]) = 1;
  LODWORD(STACK[0x7D4]) = 1;
  LODWORD(STACK[0x7C4]) = 1;
  LODWORD(STACK[0x7C0]) = 1;
  LODWORD(STACK[0x7D0]) = 1;
  LODWORD(STACK[0x7DC]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  LODWORD(STACK[0x760]) = 1;
  LODWORD(STACK[0x778]) = 1;
  LODWORD(STACK[0x704]) = 1;
  LODWORD(STACK[0x770]) = 1;
  LODWORD(STACK[0x784]) = 1;
  LODWORD(STACK[0x718]) = 1;
  LODWORD(STACK[0x7EC]) = v11;
  LODWORD(STACK[0x5E4]) = STACK[0x828];
  LODWORD(STACK[0x4AC]) = v13;
  LODWORD(STACK[0x554]) = STACK[0x830];
  LODWORD(STACK[0x7FC]) = v12;
  LODWORD(STACK[0x424]) = a1;
  LODWORD(STACK[0x550]) = a2;
  LODWORD(STACK[0x594]) = v14;
  LODWORD(STACK[0x7E0]) = v15;
  return v18();
}

uint64_t sub_2447FAD80(int a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5, unint64_t a6)
{
  v8 = *(STACK[0x940] + 8 * v6);
  STACK[0x750] = STACK[0x548];
  STACK[0x800] = STACK[0x540];
  STACK[0x748] = STACK[0x570];
  STACK[0x740] = STACK[0x538];
  STACK[0x448] = a6;
  STACK[0x428] = a3;
  LODWORD(STACK[0x454]) = a5;
  LODWORD(STACK[0x7F0]) = STACK[0x5F4];
  LODWORD(STACK[0x7AC]) = STACK[0x888];
  LODWORD(STACK[0x7EC]) = STACK[0x55C];
  LODWORD(STACK[0x730]) = STACK[0x56C];
  LODWORD(STACK[0x758]) = STACK[0x898];
  LODWORD(STACK[0x4AC]) = v7;
  LODWORD(STACK[0x524]) = STACK[0x658];
  LODWORD(STACK[0x7FC]) = STACK[0x600];
  LODWORD(STACK[0x424]) = a1;
  LODWORD(STACK[0x734]) = STACK[0x534];
  LODWORD(STACK[0x7E0]) = STACK[0x564];
  LODWORD(STACK[0x7A8]) = STACK[0x890];
  LODWORD(STACK[0x7A4]) = STACK[0x8A0];
  LODWORD(STACK[0x7A0]) = STACK[0x8B0];
  LODWORD(STACK[0x79C]) = STACK[0x8A8];
  LODWORD(STACK[0x738]) = STACK[0x568];
  return v8();
}

uint64_t sub_2447FAE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  LODWORD(STACK[0x900]) = 0;
  LODWORD(STACK[0x8E0]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  LODWORD(STACK[0x8D8]) = 0;
  LODWORD(STACK[0x808]) = 0;
  LODWORD(STACK[0x7DC]) = 0;
  LODWORD(STACK[0x950]) = v30;
  v33 = v30 - 2475;
  v34 = v28 + 940052464;
  v35 = v29 + 1374134411;
  v36 = (v29 + 1374134411) < 0x96DE8132;
  v37 = (v34 < 0x96DE8132) ^ v36;
  v38 = v34 < v35;
  if (v37)
  {
    v38 = v36;
  }

  v39 = *(a2 + 8 * ((31439 * v38) ^ v33));
  LODWORD(STACK[0x978]) = 1;
  v40 = STACK[0x5C8];
  LODWORD(STACK[0x908]) = 1;
  LODWORD(STACK[0x8C0]) = 1;
  LODWORD(STACK[0x810]) = v31;
  LODWORD(STACK[0x81C]) = v32;
  LODWORD(STACK[0x958]) = 1;
  LODWORD(STACK[0x7D4]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  return v39(a1, a2, a3, a4, a5, v40, v31, 1, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_2447FAF54@<X0>(int a1@<W0>, int a2@<W2>, int a3@<W4>, unint64_t a4@<X5>, int a5@<W7>, int a6@<W8>)
{
  LODWORD(STACK[0x6BC]) = 0;
  STACK[0x788] = 0;
  LODWORD(STACK[0x714]) = 0;
  LODWORD(STACK[0x768]) = 0;
  LODWORD(STACK[0x958]) = 0;
  LODWORD(STACK[0x960]) = 0;
  LODWORD(STACK[0x908]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  LODWORD(STACK[0x8E0]) = 0;
  v17 = a6 + 8708;
  LODWORD(STACK[0x5E8]) = v7 - 6;
  v18 = *(v14 + 8 * ((60 * (((a2 == v7 - 6) ^ (a6 - 1)) & 1)) ^ a6));
  LODWORD(STACK[0x978]) = 1;
  STACK[0x448] = a4;
  STACK[0x428] = v16;
  STACK[0x4D8] = STACK[0x870];
  STACK[0x4D0] = STACK[0x820];
  STACK[0x5A0] = STACK[0x910];
  STACK[0x598] = STACK[0x868];
  STACK[0x7F0] = STACK[0x300];
  LODWORD(STACK[0x454]) = a3;
  LODWORD(STACK[0x790]) = v8;
  LODWORD(STACK[0x5AC]) = STACK[0x930];
  LODWORD(STACK[0x5A8]) = STACK[0x878];
  LODWORD(STACK[0x4AC]) = v11;
  LODWORD(STACK[0x424]) = a1;
  LODWORD(STACK[0x594]) = v12;
  LODWORD(STACK[0x800]) = a5;
  LODWORD(STACK[0x720]) = v10;
  LODWORD(STACK[0x4CC]) = STACK[0x838];
  LODWORD(STACK[0x7C8]) = 1;
  LODWORD(STACK[0x71C]) = 1;
  LODWORD(STACK[0x70C]) = 1;
  LODWORD(STACK[0x6F0]) = 1;
  LODWORD(STACK[0x6D8]) = 1;
  LODWORD(STACK[0x6C0]) = 1;
  LODWORD(STACK[0x6FC]) = 1;
  LODWORD(STACK[0x6E8]) = 1;
  LODWORD(STACK[0x6EC]) = 1;
  LODWORD(STACK[0x710]) = 1;
  LODWORD(STACK[0x700]) = 1;
  LODWORD(STACK[0x6C4]) = 1;
  LODWORD(STACK[0x6D0]) = 1;
  LODWORD(STACK[0x7B0]) = 1;
  LODWORD(STACK[0x6D4]) = 1;
  LODWORD(STACK[0x7BC]) = 1;
  LODWORD(STACK[0x7D4]) = 1;
  LODWORD(STACK[0x7C4]) = 1;
  LODWORD(STACK[0x7C0]) = 1;
  LODWORD(STACK[0x7D0]) = 1;
  LODWORD(STACK[0x7DC]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  LODWORD(STACK[0x760]) = 1;
  LODWORD(STACK[0x778]) = 1;
  LODWORD(STACK[0x704]) = 1;
  LODWORD(STACK[0x770]) = 1;
  LODWORD(STACK[0x708]) = 1;
  LODWORD(STACK[0x784]) = 1;
  LODWORD(STACK[0x718]) = 1;
  LODWORD(STACK[0x7EC]) = v9;
  LODWORD(STACK[0x5E4]) = STACK[0x828];
  LODWORD(STACK[0x808]) = STACK[0x810];
  LODWORD(STACK[0x554]) = STACK[0x830];
  LODWORD(STACK[0x7FC]) = STACK[0x564];
  LODWORD(STACK[0x550]) = STACK[0x850];
  LODWORD(STACK[0x7E0]) = v13;
  LODWORD(STACK[0x950]) = v17;
  LODWORD(STACK[0x880]) = v6;
  LODWORD(STACK[0x860]) = 1;
  LODWORD(STACK[0x658]) = v15;
  LODWORD(STACK[0x524]) = v15;
  return v18();
}

uint64_t sub_2447FB134@<X0>(int a1@<W7>, char a2@<W8>)
{
  v4 = *(v3 + 8 * (((v2 ^ 0x1A13 ^ (v2 + 1198566953) & 0xB88F57FF) * (a2 & 1)) ^ v2));
  STACK[0x750] = STACK[0x548];
  STACK[0x748] = STACK[0x570];
  STACK[0x740] = STACK[0x538];
  LODWORD(STACK[0x7F0]) = STACK[0x5F4];
  LODWORD(STACK[0x7EC]) = STACK[0x55C];
  LODWORD(STACK[0x730]) = STACK[0x56C];
  v5 = STACK[0x81C];
  LODWORD(STACK[0x7FC]) = STACK[0x600];
  LODWORD(STACK[0x734]) = STACK[0x534];
  LODWORD(STACK[0x7E0]) = STACK[0x564];
  LODWORD(STACK[0x738]) = STACK[0x568];
  STACK[0x4D8] = STACK[0x870];
  STACK[0x4D0] = STACK[0x820];
  STACK[0x5A0] = STACK[0x910];
  STACK[0x598] = STACK[0x868];
  LODWORD(STACK[0x5E8]) = v5;
  LODWORD(STACK[0x600]) = a1;
  v6 = STACK[0x478];
  LODWORD(STACK[0x4CC]) = STACK[0x838];
  LODWORD(STACK[0x5AC]) = STACK[0x930];
  LODWORD(STACK[0x5A8]) = STACK[0x878];
  LODWORD(STACK[0x5E4]) = STACK[0x828];
  LODWORD(STACK[0x808]) = STACK[0x810];
  LODWORD(STACK[0x658]) = STACK[0x524];
  LODWORD(STACK[0x554]) = STACK[0x830];
  LODWORD(STACK[0x550]) = STACK[0x850];
  LODWORD(STACK[0x594]) = STACK[0x948];
  return v4(v6);
}

uint64_t sub_2447FB280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LODWORD(STACK[0x900]) = 0;
  LODWORD(STACK[0x8E0]) = 0;
  LODWORD(STACK[0x8C0]) = 0;
  LODWORD(STACK[0x8D8]) = 0;
  v6 = 35 * (v4 ^ 0x109D);
  v7 = LODWORD(STACK[0x440]) == v4 - 1093402697;
  LODWORD(STACK[0x950]) = v6;
  v8 = *(v5 + 8 * ((v7 * (v6 ^ 0x36A3)) ^ v4));
  v9 = STACK[0x410];
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x908]) = 1;
  LODWORD(STACK[0x8F8]) = 1;
  v10 = LODWORD(STACK[0x960]);
  STACK[0x4D8] = STACK[0x870];
  STACK[0x4D0] = STACK[0x820];
  STACK[0x5A0] = STACK[0x910];
  STACK[0x598] = STACK[0x868];
  LODWORD(STACK[0x4CC]) = STACK[0x838];
  LODWORD(STACK[0x5AC]) = STACK[0x930];
  LODWORD(STACK[0x5A8]) = STACK[0x878];
  LODWORD(STACK[0x5E4]) = STACK[0x828];
  LODWORD(STACK[0x808]) = STACK[0x810];
  LODWORD(STACK[0x554]) = STACK[0x830];
  LODWORD(STACK[0x550]) = STACK[0x850];
  LODWORD(STACK[0x594]) = STACK[0x948];
  return v8(a1, a2, a3, a4, v10, v9, v10, 1);
}

uint64_t sub_2447FB37C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  STACK[0x53F0] = 0xD3879C4D733BB295;
  STACK[0x8680] = 0xD3879C4D733BB294;
  v8 = *(STACK[0x940] + 8 * (a2 - 3006));
  LODWORD(STACK[0x2A4]) = 573628245;
  STACK[0x750] = STACK[0x548];
  STACK[0x800] = STACK[0x540];
  STACK[0x748] = STACK[0x570];
  STACK[0x740] = STACK[0x538];
  STACK[0x5A0] = STACK[0x910];
  STACK[0x598] = STACK[0x868];
  LODWORD(STACK[0x7F0]) = STACK[0x5F4];
  LODWORD(STACK[0x720]) = STACK[0x60C];
  LODWORD(STACK[0x7AC]) = STACK[0x888];
  LODWORD(STACK[0x7EC]) = STACK[0x55C];
  LODWORD(STACK[0x5AC]) = STACK[0x930];
  LODWORD(STACK[0x5A8]) = STACK[0x878];
  LODWORD(STACK[0x730]) = STACK[0x56C];
  LODWORD(STACK[0x758]) = STACK[0x898];
  LODWORD(STACK[0x4AC]) = a8;
  LODWORD(STACK[0x5E8]) = STACK[0x81C];
  LODWORD(STACK[0x7FC]) = STACK[0x600];
  LODWORD(STACK[0x734]) = STACK[0x534];
  LODWORD(STACK[0x7E0]) = STACK[0x564];
  LODWORD(STACK[0x7A8]) = STACK[0x890];
  LODWORD(STACK[0x7A4]) = STACK[0x8A0];
  LODWORD(STACK[0x7A0]) = STACK[0x8B0];
  LODWORD(STACK[0x79C]) = STACK[0x8A8];
  LODWORD(STACK[0x738]) = STACK[0x568];
  LODWORD(STACK[0x554]) = STACK[0x830];
  LODWORD(STACK[0x470]) = 130989217;
  LODWORD(STACK[0x5C4]) = STACK[0x2A0];
  LODWORD(STACK[0x658]) = STACK[0x404];
  LODWORD(STACK[0x550]) = STACK[0x850];
  LODWORD(STACK[0x594]) = STACK[0x948];
  return v8();
}

uint64_t sub_2447FB4D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, int a6@<W8>)
{
  LODWORD(STACK[0x950]) = v7;
  v9 = *(v6 + 8 * (((a6 ^ 1) * ((v7 - 8656) ^ 0x11E1)) ^ (v7 - 1300)));
  v10 = LODWORD(STACK[0x43C]);
  LODWORD(STACK[0x828]) = v8;
  return v9(a1, a2, a3, a4, v8, a5, v10);
}

uint64_t sub_2447FB528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(STACK[0x958]) = 0;
  LODWORD(STACK[0x960]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  LODWORD(STACK[0x8E0]) = 0;
  v8 = *(STACK[0x940] + 8 * ((((STACK[0x66E0] & 1) == 0) * ((5 * (v5 ^ 0x1A38)) ^ 0x938)) ^ v5));
  STACK[0x548] = STACK[0x750];
  STACK[0x540] = STACK[0x800];
  STACK[0x570] = STACK[0x748];
  STACK[0x538] = STACK[0x740];
  LODWORD(STACK[0x790]) = STACK[0x648];
  LODWORD(STACK[0x5F4]) = STACK[0x7F0];
  LODWORD(STACK[0x880]) = STACK[0x5F8];
  LODWORD(STACK[0x60C]) = STACK[0x720];
  LODWORD(STACK[0x888]) = STACK[0x7AC];
  LODWORD(STACK[0x55C]) = STACK[0x7EC];
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x908]) = 1;
  LODWORD(STACK[0x860]) = 1;
  LODWORD(STACK[0x56C]) = STACK[0x730];
  LODWORD(STACK[0x898]) = STACK[0x758];
  LODWORD(STACK[0x64C]) = v6;
  LODWORD(STACK[0x828]) = a5;
  LODWORD(STACK[0x830]) = STACK[0x554];
  LODWORD(STACK[0x81C]) = STACK[0x5E8];
  LODWORD(STACK[0x600]) = STACK[0x7FC];
  LODWORD(STACK[0x2A0]) = STACK[0x5C4];
  LODWORD(STACK[0x404]) = STACK[0x658];
  LODWORD(STACK[0x850]) = STACK[0x550];
  LODWORD(STACK[0x534]) = STACK[0x734];
  LODWORD(STACK[0x564]) = STACK[0x7E0];
  LODWORD(STACK[0x890]) = STACK[0x7A8];
  LODWORD(STACK[0x644]) = v7;
  LODWORD(STACK[0x8A0]) = STACK[0x7A4];
  LODWORD(STACK[0x8B0]) = STACK[0x7A0];
  LODWORD(STACK[0x8A8]) = STACK[0x79C];
  LODWORD(STACK[0x568]) = STACK[0x738];
  return v8();
}

uint64_t sub_2447FB690(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, unint64_t a50)
{
  LODWORD(STACK[0x958]) = 0;
  LODWORD(STACK[0x960]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  LODWORD(STACK[0x8E0]) = 0;
  LODWORD(STACK[0x860]) = 0;
  v53 = (2 * v50) ^ 0x127E;
  LODWORD(STACK[0x950]) = v53;
  v54 = *(STACK[0x940] + 8 * ((11069 * ((((v53 + 612634084) & 0xDB7BF21A ^ 0x320BLL) & STACK[0xE10]) == 0)) ^ v50));
  STACK[0x548] = STACK[0x750];
  STACK[0x540] = STACK[0x800];
  STACK[0x570] = STACK[0x748];
  STACK[0x538] = STACK[0x740];
  LODWORD(STACK[0x5F4]) = STACK[0x7F0];
  LODWORD(STACK[0x880]) = STACK[0x5F8];
  LODWORD(STACK[0x60C]) = STACK[0x720];
  LODWORD(STACK[0x888]) = STACK[0x7AC];
  LODWORD(STACK[0x55C]) = STACK[0x7EC];
  LODWORD(STACK[0x56C]) = STACK[0x730];
  LODWORD(STACK[0x898]) = STACK[0x758];
  LODWORD(STACK[0x64C]) = v51;
  LODWORD(STACK[0x828]) = a5;
  LODWORD(STACK[0x830]) = STACK[0x554];
  LODWORD(STACK[0x81C]) = STACK[0x5E8];
  LODWORD(STACK[0x600]) = STACK[0x7FC];
  LODWORD(STACK[0x2A0]) = STACK[0x5C4];
  LODWORD(STACK[0x404]) = STACK[0x658];
  LODWORD(STACK[0x850]) = STACK[0x550];
  LODWORD(STACK[0x534]) = STACK[0x734];
  LODWORD(STACK[0x564]) = STACK[0x7E0];
  LODWORD(STACK[0x890]) = STACK[0x7A8];
  LODWORD(STACK[0x644]) = v52;
  LODWORD(STACK[0x8A0]) = STACK[0x7A4];
  LODWORD(STACK[0x8B0]) = STACK[0x7A0];
  LODWORD(STACK[0x8A8]) = STACK[0x79C];
  LODWORD(STACK[0x568]) = STACK[0x738];
  LODWORD(STACK[0x900]) = a3;
  LODWORD(STACK[0x878]) = 919223704;
  STACK[0x910] = STACK[0x3E0];
  STACK[0x868] = a50;
  LODWORD(STACK[0x930]) = STACK[0x4AC];
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x948]) = STACK[0x604];
  LODWORD(STACK[0x790]) = STACK[0x648];
  LODWORD(STACK[0x908]) = 1;
  return v54();
}

uint64_t sub_2447FB92C@<X0>(uint64_t a1@<X1>, int a2@<W2>, int a3@<W4>, int a4@<W5>, int a5@<W6>, int a6@<W7>, int a7@<W8>)
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
  v14 = (a7 - 2643) | 0x2000;
  LODWORD(STACK[0x950]) = v14;
  v15 = *(a1 + 8 * (((v13 != v14 + 2046950553) * (a7 + 16887)) ^ a7));
  STACK[0x548] = STACK[0x750];
  STACK[0x540] = STACK[0x800];
  STACK[0x570] = STACK[0x748];
  STACK[0x538] = STACK[0x740];
  STACK[0x4D8] = STACK[0x870];
  STACK[0x4D0] = STACK[0x820];
  LODWORD(STACK[0x5F4]) = STACK[0x7F0];
  LODWORD(STACK[0x608]) = a5;
  LODWORD(STACK[0x4CC]) = STACK[0x838];
  LODWORD(STACK[0x55C]) = STACK[0x7EC];
  LODWORD(STACK[0x56C]) = STACK[0x730];
  LODWORD(STACK[0x600]) = STACK[0x7FC];
  LODWORD(STACK[0x2A0]) = STACK[0x5C4];
  LODWORD(STACK[0x404]) = STACK[0x658];
  LODWORD(STACK[0x534]) = STACK[0x734];
  LODWORD(STACK[0x564]) = STACK[0x7E0];
  LODWORD(STACK[0x568]) = STACK[0x738];
  LODWORD(STACK[0x800]) = v7;
  LODWORD(STACK[0x650]) = v7;
  LODWORD(STACK[0x888]) = STACK[0x7AC];
  LODWORD(STACK[0x898]) = a6;
  LODWORD(STACK[0x7EC]) = a4;
  LODWORD(STACK[0x890]) = STACK[0x7A8];
  LODWORD(STACK[0x8A0]) = STACK[0x7A4];
  LODWORD(STACK[0x8B0]) = STACK[0x7A0];
  LODWORD(STACK[0x8A8]) = STACK[0x79C];
  LODWORD(STACK[0x554]) = 2046963364;
  STACK[0x7F0] = STACK[0x4E8];
  v16 = STACK[0x4B0];
  LODWORD(STACK[0x790]) = v8;
  LODWORD(STACK[0x768]) = 1;
  LODWORD(STACK[0x808]) = STACK[0x810];
  LODWORD(STACK[0x658]) = v9;
  LODWORD(STACK[0x7FC]) = STACK[0x720];
  LODWORD(STACK[0x7E0]) = a3;
  STACK[0x860] = v10;
  STACK[0x8F8] = v16;
  v17 = STACK[0x478];
  STACK[0x698] = v11;
  LODWORD(STACK[0x66C]) = STACK[0x858];
  LODWORD(STACK[0x628]) = a3;
  LODWORD(STACK[0x840]) = a2;
  LODWORD(STACK[0x72C]) = a3;
  LODWORD(STACK[0x624]) = STACK[0x654];
  LODWORD(STACK[0x828]) = STACK[0x5E4];
  LODWORD(STACK[0x81C]) = STACK[0x5E8];
  LODWORD(STACK[0x908]) = v12;
  LODWORD(STACK[0x84C]) = STACK[0x610];
  return v15((a7 + 5549), v17);
}

uint64_t sub_2447FBB78@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  v3 = a2 + 5147;
  v4 = v2 >= ((((v3 - 1144931543) & 0x443E1AAF) - 498) ^ 0x1834u);
  return (*(a1 + 8 * ((v4 | (8 * v4)) ^ v3)))();
}

uint64_t sub_2447FBC20(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  STACK[0x7D0] = 0;
  STACK[0x7D8] = 0;
  LODWORD(STACK[0x760]) = 0;
  LODWORD(STACK[0x778]) = 0;
  LODWORD(STACK[0x704]) = 0;
  LODWORD(STACK[0x770]) = 0;
  LODWORD(STACK[0x708]) = 0;
  LODWORD(STACK[0x784]) = 0;
  LODWORD(STACK[0x6BC]) = 0;
  STACK[0x788] = 0;
  LODWORD(STACK[0x714]) = 0;
  LODWORD(STACK[0x768]) = 0;
  v15 = v6 + 5549;
  v16 = *(a2 + 8 * (((v13 == v6 + 2046956081) * ((v6 + 5549) ^ 0x6C5E)) ^ v6));
  STACK[0x548] = STACK[0x750];
  STACK[0x540] = STACK[0x800];
  STACK[0x570] = STACK[0x748];
  STACK[0x538] = STACK[0x740];
  STACK[0x4D8] = STACK[0x870];
  STACK[0x4D0] = STACK[0x820];
  LODWORD(STACK[0x5F4]) = STACK[0x7F0];
  LODWORD(STACK[0x608]) = STACK[0x978];
  LODWORD(STACK[0x4CC]) = STACK[0x838];
  LODWORD(STACK[0x55C]) = STACK[0x7EC];
  LODWORD(STACK[0x56C]) = STACK[0x730];
  LODWORD(STACK[0x600]) = STACK[0x7FC];
  LODWORD(STACK[0x2A0]) = STACK[0x5C4];
  LODWORD(STACK[0x404]) = STACK[0x658];
  LODWORD(STACK[0x534]) = STACK[0x734];
  LODWORD(STACK[0x564]) = STACK[0x7E0];
  LODWORD(STACK[0x568]) = STACK[0x738];
  LODWORD(STACK[0x800]) = v7;
  LODWORD(STACK[0x650]) = v7;
  LODWORD(STACK[0x888]) = STACK[0x7AC];
  LODWORD(STACK[0x898]) = STACK[0x758];
  LODWORD(STACK[0x7EC]) = a6;
  LODWORD(STACK[0x890]) = STACK[0x7A8];
  LODWORD(STACK[0x8A0]) = STACK[0x7A4];
  LODWORD(STACK[0x8B0]) = STACK[0x7A0];
  LODWORD(STACK[0x8A8]) = STACK[0x79C];
  LODWORD(STACK[0x554]) = 2046963342;
  LODWORD(STACK[0x978]) = 1;
  STACK[0x7F0] = STACK[0x4E8];
  v17 = STACK[0x4B0];
  LODWORD(STACK[0x790]) = v14;
  LODWORD(STACK[0x7C8]) = 1;
  LODWORD(STACK[0x71C]) = 1;
  LODWORD(STACK[0x70C]) = 1;
  LODWORD(STACK[0x6F0]) = 1;
  LODWORD(STACK[0x6D8]) = 1;
  LODWORD(STACK[0x6C0]) = 1;
  LODWORD(STACK[0x6FC]) = 1;
  LODWORD(STACK[0x6E8]) = 1;
  LODWORD(STACK[0x6EC]) = 1;
  LODWORD(STACK[0x710]) = 1;
  LODWORD(STACK[0x700]) = 1;
  LODWORD(STACK[0x6C4]) = 1;
  LODWORD(STACK[0x6D0]) = 1;
  LODWORD(STACK[0x7B0]) = 1;
  LODWORD(STACK[0x6D4]) = 1;
  LODWORD(STACK[0x7BC]) = 1;
  LODWORD(STACK[0x7C4]) = 1;
  LODWORD(STACK[0x7C0]) = 1;
  LODWORD(STACK[0x718]) = 1;
  LODWORD(STACK[0x808]) = STACK[0x810];
  LODWORD(STACK[0x658]) = a3;
  LODWORD(STACK[0x7FC]) = STACK[0x720];
  LODWORD(STACK[0x7E0]) = v11;
  LODWORD(STACK[0x950]) = v15;
  STACK[0x860] = v8;
  STACK[0x8F8] = v17;
  STACK[0x698] = v10;
  LODWORD(STACK[0x66C]) = STACK[0x858];
  LODWORD(STACK[0x628]) = v11;
  LODWORD(STACK[0x840]) = v9;
  LODWORD(STACK[0x72C]) = v11;
  LODWORD(STACK[0x624]) = STACK[0x654];
  LODWORD(STACK[0x828]) = STACK[0x5E4];
  LODWORD(STACK[0x81C]) = STACK[0x5E8];
  LODWORD(STACK[0x908]) = v12;
  LODWORD(STACK[0x84C]) = STACK[0x610];
  return v16();
}

uint64_t sub_2447FBEF8(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(STACK[0x978]) = 0;
  LODWORD(STACK[0x900]) = 0;
  LODWORD(STACK[0x908]) = 0;
  LODWORD(STACK[0x8E0]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  LODWORD(STACK[0x8C0]) = 0;
  LODWORD(STACK[0x8D8]) = 0;
  v8 = (v3 + 11264) | 0x20A;
  LODWORD(STACK[0x950]) = v8;
  v9 = *(v4 + 8 * ((6331 * (LODWORD(STACK[0x554]) == v5 + v8 + 1076)) ^ v3));
  LODWORD(STACK[0x830]) = 2046963370;
  STACK[0x548] = STACK[0x750];
  STACK[0x540] = STACK[0x800];
  STACK[0x570] = STACK[0x748];
  STACK[0x538] = STACK[0x740];
  STACK[0x910] = STACK[0x5A0];
  STACK[0x868] = STACK[0x598];
  LODWORD(STACK[0x5F4]) = STACK[0x7F0];
  LODWORD(STACK[0x608]) = a3;
  LODWORD(STACK[0x60C]) = STACK[0x720];
  LODWORD(STACK[0x888]) = STACK[0x7AC];
  LODWORD(STACK[0x55C]) = STACK[0x7EC];
  LODWORD(STACK[0x828]) = STACK[0x5E4];
  LODWORD(STACK[0x930]) = STACK[0x5AC];
  LODWORD(STACK[0x878]) = STACK[0x5A8];
  LODWORD(STACK[0x56C]) = STACK[0x730];
  LODWORD(STACK[0x898]) = STACK[0x758];
  LODWORD(STACK[0x64C]) = v6;
  v10 = STACK[0x550];
  LODWORD(STACK[0x470]) = STACK[0x550];
  LODWORD(STACK[0x81C]) = STACK[0x5E8];
  LODWORD(STACK[0x600]) = STACK[0x7FC];
  LODWORD(STACK[0x2A0]) = STACK[0x5C4];
  LODWORD(STACK[0x404]) = STACK[0x658];
  LODWORD(STACK[0x850]) = v10;
  LODWORD(STACK[0x534]) = STACK[0x734];
  LODWORD(STACK[0x564]) = STACK[0x7E0];
  LODWORD(STACK[0x890]) = STACK[0x7A8];
  LODWORD(STACK[0x948]) = STACK[0x594];
  LODWORD(STACK[0x644]) = v7;
  LODWORD(STACK[0x8A0]) = STACK[0x7A4];
  LODWORD(STACK[0x8B0]) = STACK[0x7A0];
  LODWORD(STACK[0x8A8]) = STACK[0x79C];
  LODWORD(STACK[0x568]) = STACK[0x738];
  return v9();
}

uint64_t sub_2447FC110@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W5>, int a5@<W8>)
{
  LODWORD(STACK[0x7C8]) = 0;
  LODWORD(STACK[0x71C]) = 0;
  LODWORD(STACK[0x70C]) = 0;
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
  LODWORD(STACK[0x768]) = 0;
  v11 = (a5 + 1000024697) & 0xC464F78A;
  v12 = 3 * (v11 ^ 0x22A4);
  LODWORD(STACK[0x950]) = v12;
  v13 = *(a2 + 8 * (((v12 ^ 0x312A) * (v9 == 2046963357)) | a5));
  STACK[0x548] = STACK[0x750];
  STACK[0x540] = STACK[0x800];
  STACK[0x570] = STACK[0x748];
  STACK[0x538] = STACK[0x740];
  STACK[0x4D8] = STACK[0x870];
  STACK[0x4D0] = STACK[0x820];
  LODWORD(STACK[0x5F4]) = STACK[0x7F0];
  LODWORD(STACK[0x608]) = STACK[0x978];
  LODWORD(STACK[0x4CC]) = STACK[0x838];
  LODWORD(STACK[0x55C]) = STACK[0x7EC];
  LODWORD(STACK[0x56C]) = STACK[0x730];
  LODWORD(STACK[0x600]) = STACK[0x7FC];
  LODWORD(STACK[0x2A0]) = STACK[0x5C4];
  LODWORD(STACK[0x404]) = STACK[0x658];
  LODWORD(STACK[0x534]) = STACK[0x734];
  LODWORD(STACK[0x564]) = STACK[0x7E0];
  LODWORD(STACK[0x568]) = STACK[0x738];
  LODWORD(STACK[0x800]) = v5;
  LODWORD(STACK[0x650]) = v5;
  LODWORD(STACK[0x888]) = STACK[0x7AC];
  LODWORD(STACK[0x898]) = STACK[0x758];
  LODWORD(STACK[0x7EC]) = a4;
  LODWORD(STACK[0x890]) = STACK[0x7A8];
  LODWORD(STACK[0x8A0]) = STACK[0x7A4];
  LODWORD(STACK[0x8B0]) = STACK[0x7A0];
  LODWORD(STACK[0x8A8]) = STACK[0x79C];
  LODWORD(STACK[0x554]) = 2046963358;
  LODWORD(STACK[0x6F0]) = 1;
  STACK[0x7F0] = STACK[0x4E8];
  v14 = STACK[0x4B0];
  LODWORD(STACK[0x790]) = v10;
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x6D8]) = 1;
  LODWORD(STACK[0x718]) = 1;
  LODWORD(STACK[0x808]) = STACK[0x810];
  LODWORD(STACK[0x658]) = a3;
  LODWORD(STACK[0x7FC]) = STACK[0x720];
  LODWORD(STACK[0x7E0]) = v7;
  STACK[0x860] = v6;
  STACK[0x8F8] = v14;
  v15 = STACK[0x478];
  STACK[0x698] = STACK[0x5B0];
  LODWORD(STACK[0x66C]) = STACK[0x858];
  LODWORD(STACK[0x628]) = v7;
  LODWORD(STACK[0x840]) = a1;
  LODWORD(STACK[0x72C]) = v7;
  LODWORD(STACK[0x624]) = STACK[0x654];
  LODWORD(STACK[0x828]) = STACK[0x5E4];
  LODWORD(STACK[0x81C]) = STACK[0x5E8];
  LODWORD(STACK[0x908]) = v8;
  LODWORD(STACK[0x84C]) = STACK[0x610];
  return v13(v11, v15);
}

uint64_t sub_2447FC3A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
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
  LODWORD(STACK[0x768]) = 0;
  v16 = v8 ^ 0x3E33;
  v17 = *(a2 + 8 * ((123 * (v15 != (v8 ^ 0x7A0222A6))) ^ v8));
  STACK[0x548] = STACK[0x750];
  STACK[0x540] = STACK[0x800];
  STACK[0x570] = STACK[0x748];
  STACK[0x538] = STACK[0x740];
  STACK[0x4D8] = STACK[0x870];
  STACK[0x4D0] = STACK[0x820];
  LODWORD(STACK[0x5F4]) = STACK[0x7F0];
  LODWORD(STACK[0x608]) = a7;
  LODWORD(STACK[0x4CC]) = STACK[0x838];
  LODWORD(STACK[0x55C]) = STACK[0x7EC];
  LODWORD(STACK[0x56C]) = STACK[0x730];
  LODWORD(STACK[0x600]) = STACK[0x7FC];
  LODWORD(STACK[0x2A0]) = STACK[0x5C4];
  LODWORD(STACK[0x404]) = STACK[0x658];
  LODWORD(STACK[0x534]) = STACK[0x734];
  LODWORD(STACK[0x564]) = STACK[0x7E0];
  LODWORD(STACK[0x568]) = STACK[0x738];
  LODWORD(STACK[0x800]) = v9;
  LODWORD(STACK[0x650]) = v9;
  LODWORD(STACK[0x888]) = STACK[0x7AC];
  LODWORD(STACK[0x898]) = a8;
  LODWORD(STACK[0x7EC]) = a6;
  LODWORD(STACK[0x890]) = STACK[0x7A8];
  LODWORD(STACK[0x8A0]) = STACK[0x7A4];
  LODWORD(STACK[0x8B0]) = STACK[0x7A0];
  LODWORD(STACK[0x8A8]) = STACK[0x79C];
  LODWORD(STACK[0x554]) = 2046963360;
  STACK[0x7F0] = STACK[0x4E8];
  v18 = STACK[0x4B0];
  LODWORD(STACK[0x790]) = v10;
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x718]) = 1;
  LODWORD(STACK[0x808]) = STACK[0x810];
  LODWORD(STACK[0x658]) = v11;
  LODWORD(STACK[0x7FC]) = STACK[0x720];
  LODWORD(STACK[0x7E0]) = a5;
  LODWORD(STACK[0x950]) = v16;
  STACK[0x860] = v12;
  STACK[0x8F8] = v18;
  STACK[0x698] = v13;
  LODWORD(STACK[0x66C]) = STACK[0x858];
  LODWORD(STACK[0x628]) = a5;
  LODWORD(STACK[0x840]) = a3;
  LODWORD(STACK[0x72C]) = a5;
  LODWORD(STACK[0x624]) = STACK[0x654];
  LODWORD(STACK[0x828]) = STACK[0x5E4];
  LODWORD(STACK[0x81C]) = STACK[0x5E8];
  LODWORD(STACK[0x908]) = v14;
  LODWORD(STACK[0x84C]) = STACK[0x610];
  return v17();
}

uint64_t sub_2447FC640(unint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x778]) = 0;
  LODWORD(STACK[0x770]) = 0;
  LODWORD(STACK[0x708]) = 0;
  LODWORD(STACK[0x784]) = 0;
  LODWORD(STACK[0x6BC]) = 0;
  STACK[0x788] = 0;
  LODWORD(STACK[0x714]) = 0;
  LODWORD(STACK[0x768]) = 0;
  v13 = (v8 - 3590) | 0x300Au;
  v14 = 61 * (v8 ^ 0x10D4);
  LODWORD(STACK[0x950]) = v14;
  v15 = *(a2 + 8 * ((800 * (v11 != (v13 ^ 0x7A022E86 ^ v14))) | v8));
  STACK[0x548] = STACK[0x750];
  STACK[0x540] = STACK[0x800];
  STACK[0x570] = STACK[0x748];
  STACK[0x538] = STACK[0x740];
  STACK[0x4D8] = STACK[0x870];
  STACK[0x4D0] = STACK[0x820];
  LODWORD(STACK[0x5F4]) = STACK[0x7F0];
  LODWORD(STACK[0x608]) = STACK[0x978];
  LODWORD(STACK[0x4CC]) = STACK[0x838];
  LODWORD(STACK[0x55C]) = STACK[0x7EC];
  LODWORD(STACK[0x56C]) = STACK[0x730];
  LODWORD(STACK[0x554]) = 2046963334;
  LODWORD(STACK[0x600]) = STACK[0x7FC];
  LODWORD(STACK[0x2A0]) = STACK[0x5C4];
  LODWORD(STACK[0x404]) = STACK[0x658];
  LODWORD(STACK[0x534]) = STACK[0x734];
  LODWORD(STACK[0x564]) = STACK[0x7E0];
  LODWORD(STACK[0x568]) = STACK[0x738];
  LODWORD(STACK[0x800]) = v9;
  LODWORD(STACK[0x650]) = v9;
  LODWORD(STACK[0x888]) = STACK[0x7AC];
  LODWORD(STACK[0x898]) = STACK[0x758];
  LODWORD(STACK[0x7EC]) = a6;
  LODWORD(STACK[0x890]) = STACK[0x7A8];
  LODWORD(STACK[0x8A0]) = STACK[0x7A4];
  LODWORD(STACK[0x8B0]) = STACK[0x7A0];
  LODWORD(STACK[0x8A8]) = STACK[0x79C];
  LODWORD(STACK[0x7C8]) = 1;
  STACK[0x7F0] = STACK[0x4E8];
  v16 = STACK[0x4B0];
  LODWORD(STACK[0x790]) = v12;
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x71C]) = 1;
  LODWORD(STACK[0x70C]) = 1;
  LODWORD(STACK[0x6F0]) = 1;
  LODWORD(STACK[0x6D8]) = 1;
  LODWORD(STACK[0x6C0]) = 1;
  LODWORD(STACK[0x6FC]) = 1;
  LODWORD(STACK[0x6E8]) = 1;
  LODWORD(STACK[0x6EC]) = 1;
  LODWORD(STACK[0x710]) = 1;
  LODWORD(STACK[0x700]) = 1;
  LODWORD(STACK[0x6C4]) = 1;
  LODWORD(STACK[0x6D0]) = 1;
  LODWORD(STACK[0x7B0]) = 1;
  LODWORD(STACK[0x6D4]) = 1;
  LODWORD(STACK[0x7BC]) = 1;
  LODWORD(STACK[0x7D4]) = 1;
  LODWORD(STACK[0x7C4]) = 1;
  LODWORD(STACK[0x7C0]) = 1;
  LODWORD(STACK[0x7D0]) = 1;
  LODWORD(STACK[0x7DC]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  LODWORD(STACK[0x760]) = 1;
  LODWORD(STACK[0x704]) = 1;
  LODWORD(STACK[0x718]) = 1;
  LODWORD(STACK[0x808]) = STACK[0x810];
  LODWORD(STACK[0x658]) = a3;
  v17 = STACK[0x720];
  LODWORD(STACK[0x7FC]) = STACK[0x720];
  LODWORD(STACK[0x7E0]) = v10;
  STACK[0x860] = a1;
  STACK[0x8F8] = v16;
  v18 = STACK[0x478];
  STACK[0x698] = STACK[0x5B0];
  LODWORD(STACK[0x66C]) = STACK[0x858];
  LODWORD(STACK[0x628]) = v17;
  LODWORD(STACK[0x840]) = a8;
  LODWORD(STACK[0x72C]) = v17;
  LODWORD(STACK[0x624]) = v10;
  LODWORD(STACK[0x828]) = STACK[0x5E4];
  LODWORD(STACK[0x81C]) = STACK[0x5E8];
  LODWORD(STACK[0x908]) = STACK[0x960];
  LODWORD(STACK[0x84C]) = STACK[0x610];
  return v15(v13, v18);
}

uint64_t sub_2447FC8E8(unint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x7C8]) = 0;
  LODWORD(STACK[0x7BC]) = 0;
  STACK[0x7D0] = 0;
  STACK[0x7C0] = 0;
  STACK[0x7D8] = 0;
  LODWORD(STACK[0x760]) = 0;
  LODWORD(STACK[0x778]) = 0;
  LODWORD(STACK[0x704]) = 0;
  LODWORD(STACK[0x770]) = 0;
  LODWORD(STACK[0x708]) = 0;
  LODWORD(STACK[0x784]) = 0;
  LODWORD(STACK[0x6BC]) = 0;
  STACK[0x788] = 0;
  LODWORD(STACK[0x714]) = 0;
  LODWORD(STACK[0x768]) = 0;
  v14 = (v8 - 795876603) & 0x2F703EFE;
  v15 = (v8 + 8708);
  LODWORD(STACK[0x950]) = v14;
  v16 = *(a2 + 8 * (((v8 - 16112 + v14) * (v12 == 2046963345)) ^ v8));
  STACK[0x548] = STACK[0x750];
  STACK[0x540] = STACK[0x800];
  STACK[0x570] = STACK[0x748];
  STACK[0x538] = STACK[0x740];
  STACK[0x4D8] = STACK[0x870];
  STACK[0x4D0] = STACK[0x820];
  LODWORD(STACK[0x5F4]) = STACK[0x7F0];
  LODWORD(STACK[0x608]) = STACK[0x978];
  LODWORD(STACK[0x4CC]) = STACK[0x838];
  LODWORD(STACK[0x55C]) = STACK[0x7EC];
  LODWORD(STACK[0x56C]) = STACK[0x730];
  LODWORD(STACK[0x600]) = STACK[0x7FC];
  LODWORD(STACK[0x2A0]) = STACK[0x5C4];
  LODWORD(STACK[0x404]) = STACK[0x658];
  LODWORD(STACK[0x534]) = STACK[0x734];
  LODWORD(STACK[0x564]) = STACK[0x7E0];
  LODWORD(STACK[0x568]) = STACK[0x738];
  LODWORD(STACK[0x800]) = v9;
  LODWORD(STACK[0x650]) = v9;
  LODWORD(STACK[0x888]) = STACK[0x7AC];
  LODWORD(STACK[0x898]) = STACK[0x758];
  LODWORD(STACK[0x7EC]) = a6;
  LODWORD(STACK[0x890]) = STACK[0x7A8];
  LODWORD(STACK[0x8A0]) = STACK[0x7A4];
  LODWORD(STACK[0x8B0]) = STACK[0x7A0];
  LODWORD(STACK[0x8A8]) = STACK[0x79C];
  LODWORD(STACK[0x71C]) = 1;
  STACK[0x7F0] = STACK[0x4E8];
  v17 = STACK[0x4B0];
  LODWORD(STACK[0x790]) = v13;
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x70C]) = 1;
  LODWORD(STACK[0x6F0]) = 1;
  LODWORD(STACK[0x6D8]) = 1;
  LODWORD(STACK[0x6C0]) = 1;
  LODWORD(STACK[0x6FC]) = 1;
  LODWORD(STACK[0x6E8]) = 1;
  LODWORD(STACK[0x6EC]) = 1;
  LODWORD(STACK[0x710]) = 1;
  LODWORD(STACK[0x700]) = 1;
  LODWORD(STACK[0x6C4]) = 1;
  LODWORD(STACK[0x6D0]) = 1;
  LODWORD(STACK[0x7B0]) = 1;
  LODWORD(STACK[0x6D4]) = 1;
  LODWORD(STACK[0x718]) = 1;
  LODWORD(STACK[0x808]) = STACK[0x810];
  LODWORD(STACK[0x658]) = a3;
  LODWORD(STACK[0x7FC]) = STACK[0x720];
  LODWORD(STACK[0x7E0]) = v10;
  STACK[0x860] = a1;
  STACK[0x8F8] = v17;
  v18 = STACK[0x478];
  STACK[0x698] = STACK[0x5B0];
  LODWORD(STACK[0x66C]) = STACK[0x858];
  LODWORD(STACK[0x628]) = v10;
  LODWORD(STACK[0x840]) = a8;
  LODWORD(STACK[0x72C]) = v10;
  LODWORD(STACK[0x624]) = STACK[0x654];
  LODWORD(STACK[0x828]) = STACK[0x5E4];
  LODWORD(STACK[0x81C]) = STACK[0x5E8];
  LODWORD(STACK[0x908]) = v11;
  LODWORD(STACK[0x84C]) = STACK[0x610];
  return v16(v15, v18);
}

uint64_t sub_2447FCB30(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, int a8)
{
  v14 = *(a2 + 8 * (((v13 != 2046963366) * ((((v8 ^ 0x61DE) + 1262239362) & 0xB4C3BEEB) - 12776)) | v8 ^ 0x61DE));
  STACK[0x548] = STACK[0x750];
  STACK[0x540] = STACK[0x800];
  STACK[0x570] = STACK[0x748];
  STACK[0x538] = STACK[0x740];
  STACK[0x860] = v10;
  STACK[0x8F8] = STACK[0x478];
  STACK[0x698] = v11;
  LODWORD(STACK[0x5F4]) = STACK[0x7F0];
  LODWORD(STACK[0x608]) = a7;
  LODWORD(STACK[0x650]) = v9;
  LODWORD(STACK[0x66C]) = STACK[0x858];
  LODWORD(STACK[0x628]) = a5;
  LODWORD(STACK[0x888]) = STACK[0x7AC];
  LODWORD(STACK[0x55C]) = STACK[0x7EC];
  LODWORD(STACK[0x56C]) = STACK[0x730];
  LODWORD(STACK[0x840]) = a3;
  LODWORD(STACK[0x72C]) = v12;
  LODWORD(STACK[0x898]) = a8;
  v15 = STACK[0x654];
  LODWORD(STACK[0x624]) = STACK[0x654];
  LODWORD(STACK[0x828]) = STACK[0x5E4];
  LODWORD(STACK[0x81C]) = STACK[0x5E8];
  LODWORD(STACK[0x600]) = STACK[0x7FC];
  LODWORD(STACK[0x908]) = v15;
  LODWORD(STACK[0x2A0]) = STACK[0x5C4];
  LODWORD(STACK[0x404]) = STACK[0x658];
  LODWORD(STACK[0x534]) = STACK[0x734];
  LODWORD(STACK[0x564]) = STACK[0x7E0];
  LODWORD(STACK[0x84C]) = STACK[0x610];
  LODWORD(STACK[0x890]) = STACK[0x7A8];
  LODWORD(STACK[0x8A0]) = STACK[0x7A4];
  LODWORD(STACK[0x8B0]) = STACK[0x7A0];
  LODWORD(STACK[0x8A8]) = STACK[0x79C];
  LODWORD(STACK[0x568]) = STACK[0x738];
  return v14();
}

uint64_t sub_2447FCCDC@<X0>(uint64_t a1@<X1>, int a2@<W2>, int a3@<W5>, int a4@<W7>, int a5@<W8>)
{
  LODWORD(STACK[0x760]) = 0;
  LODWORD(STACK[0x778]) = 0;
  LODWORD(STACK[0x704]) = 0;
  LODWORD(STACK[0x770]) = 0;
  LODWORD(STACK[0x708]) = 0;
  LODWORD(STACK[0x784]) = 0;
  LODWORD(STACK[0x6BC]) = 0;
  STACK[0x788] = 0;
  LODWORD(STACK[0x714]) = 0;
  LODWORD(STACK[0x768]) = 0;
  LODWORD(STACK[0x950]) = a5 ^ 0x220C;
  v13 = *(a1 + 8 * (((v11 != (a5 ^ 0x7A023E8C)) * ((a5 + 8708) ^ 0x312A)) | a5));
  STACK[0x548] = STACK[0x750];
  STACK[0x540] = STACK[0x800];
  STACK[0x570] = STACK[0x748];
  STACK[0x538] = STACK[0x740];
  STACK[0x4D8] = STACK[0x870];
  STACK[0x4D0] = STACK[0x820];
  LODWORD(STACK[0x5F4]) = STACK[0x7F0];
  LODWORD(STACK[0x608]) = STACK[0x978];
  LODWORD(STACK[0x4CC]) = STACK[0x838];
  LODWORD(STACK[0x55C]) = STACK[0x7EC];
  LODWORD(STACK[0x56C]) = STACK[0x730];
  LODWORD(STACK[0x600]) = STACK[0x7FC];
  LODWORD(STACK[0x2A0]) = STACK[0x5C4];
  LODWORD(STACK[0x404]) = STACK[0x658];
  LODWORD(STACK[0x534]) = STACK[0x734];
  LODWORD(STACK[0x564]) = STACK[0x7E0];
  LODWORD(STACK[0x568]) = STACK[0x738];
  LODWORD(STACK[0x800]) = v5;
  LODWORD(STACK[0x650]) = v5;
  LODWORD(STACK[0x888]) = STACK[0x7AC];
  LODWORD(STACK[0x898]) = a4;
  LODWORD(STACK[0x7EC]) = a3;
  LODWORD(STACK[0x890]) = STACK[0x7A8];
  LODWORD(STACK[0x8A0]) = STACK[0x7A4];
  LODWORD(STACK[0x8B0]) = STACK[0x7A0];
  LODWORD(STACK[0x8A8]) = STACK[0x79C];
  LODWORD(STACK[0x554]) = 2046963338;
  LODWORD(STACK[0x978]) = 1;
  STACK[0x7F0] = STACK[0x4E8];
  v14 = STACK[0x4B0];
  LODWORD(STACK[0x790]) = v12;
  LODWORD(STACK[0x7C8]) = 1;
  LODWORD(STACK[0x71C]) = 1;
  LODWORD(STACK[0x70C]) = 1;
  LODWORD(STACK[0x6F0]) = 1;
  LODWORD(STACK[0x6D8]) = 1;
  LODWORD(STACK[0x6C0]) = 1;
  LODWORD(STACK[0x6FC]) = 1;
  LODWORD(STACK[0x6E8]) = 1;
  LODWORD(STACK[0x6EC]) = 1;
  LODWORD(STACK[0x710]) = 1;
  LODWORD(STACK[0x700]) = 1;
  LODWORD(STACK[0x6C4]) = 1;
  LODWORD(STACK[0x6D0]) = 1;
  LODWORD(STACK[0x7B0]) = 1;
  LODWORD(STACK[0x6D4]) = 1;
  LODWORD(STACK[0x7BC]) = 1;
  LODWORD(STACK[0x7D4]) = 1;
  LODWORD(STACK[0x7C4]) = 1;
  LODWORD(STACK[0x7C0]) = 1;
  LODWORD(STACK[0x7D0]) = 1;
  LODWORD(STACK[0x7DC]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  LODWORD(STACK[0x718]) = 1;
  LODWORD(STACK[0x808]) = STACK[0x810];
  LODWORD(STACK[0x658]) = a2;
  LODWORD(STACK[0x7FC]) = STACK[0x720];
  LODWORD(STACK[0x7E0]) = v9;
  STACK[0x860] = v6;
  STACK[0x8F8] = v14;
  STACK[0x698] = v8;
  LODWORD(STACK[0x66C]) = STACK[0x858];
  LODWORD(STACK[0x628]) = v9;
  LODWORD(STACK[0x840]) = v7;
  LODWORD(STACK[0x72C]) = v9;
  LODWORD(STACK[0x624]) = STACK[0x654];
  LODWORD(STACK[0x828]) = STACK[0x5E4];
  LODWORD(STACK[0x81C]) = STACK[0x5E8];
  LODWORD(STACK[0x908]) = v10;
  LODWORD(STACK[0x84C]) = STACK[0x610];
  return v13();
}

uint64_t sub_2447FCF20@<X0>(int a1@<W2>, int a2@<W8>)
{
  LODWORD(STACK[0x978]) = 0;
  LODWORD(STACK[0x908]) = 0;
  LODWORD(STACK[0x8E0]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  LODWORD(STACK[0x8C0]) = 0;
  LODWORD(STACK[0x8D8]) = 0;
  v5 = (a2 - 457257641) & 0xA13F360A;
  v6 = ((LODWORD(STACK[0x554]) - a2) | (a2 - LODWORD(STACK[0x554]))) >> 31;
  LODWORD(STACK[0x950]) = v5;
  v7 = *(v2 + 8 * ((6331 * v6) | (v5 - 2144263352) & a2));
  LODWORD(STACK[0x830]) = 2046963368;
  LODWORD(STACK[0x900]) = 1;
  STACK[0x548] = STACK[0x750];
  STACK[0x540] = STACK[0x800];
  STACK[0x570] = STACK[0x748];
  STACK[0x538] = STACK[0x740];
  STACK[0x910] = STACK[0x5A0];
  STACK[0x868] = STACK[0x598];
  LODWORD(STACK[0x5F4]) = STACK[0x7F0];
  LODWORD(STACK[0x608]) = a1;
  LODWORD(STACK[0x60C]) = STACK[0x720];
  LODWORD(STACK[0x888]) = STACK[0x7AC];
  LODWORD(STACK[0x55C]) = STACK[0x7EC];
  LODWORD(STACK[0x930]) = STACK[0x5AC];
  LODWORD(STACK[0x878]) = STACK[0x5A8];
  LODWORD(STACK[0x56C]) = STACK[0x730];
  LODWORD(STACK[0x898]) = STACK[0x758];
  LODWORD(STACK[0x64C]) = v3;
  v8 = STACK[0x550];
  LODWORD(STACK[0x828]) = STACK[0x550];
  LODWORD(STACK[0x81C]) = STACK[0x5E8];
  LODWORD(STACK[0x600]) = STACK[0x7FC];
  LODWORD(STACK[0x2A0]) = STACK[0x5C4];
  LODWORD(STACK[0x404]) = STACK[0x658];
  LODWORD(STACK[0x850]) = v8;
  LODWORD(STACK[0x534]) = STACK[0x734];
  LODWORD(STACK[0x564]) = STACK[0x7E0];
  LODWORD(STACK[0x890]) = STACK[0x7A8];
  LODWORD(STACK[0x948]) = STACK[0x594];
  LODWORD(STACK[0x644]) = v4;
  LODWORD(STACK[0x8A0]) = STACK[0x7A4];
  LODWORD(STACK[0x8B0]) = STACK[0x7A0];
  LODWORD(STACK[0x8A8]) = STACK[0x79C];
  LODWORD(STACK[0x568]) = STACK[0x738];
  return v7();
}

uint64_t sub_2447FD0CC()
{
  v2 = (v0 - 5194) | 0x2008;
  v3 = *(STACK[0x940] + 8 * v0);
  LODWORD(STACK[0x2A4]) = LODWORD(STACK[0x2A4]) - 12809 + v2;
  LODWORD(STACK[0x470]) = v1;
  STACK[0x910] = STACK[0x5A0];
  STACK[0x868] = STACK[0x598];
  LODWORD(STACK[0x930]) = STACK[0x5AC];
  LODWORD(STACK[0x878]) = STACK[0x5A8];
  LODWORD(STACK[0x830]) = STACK[0x554];
  LODWORD(STACK[0x2A0]) = STACK[0x5C4];
  LODWORD(STACK[0x404]) = STACK[0x658];
  LODWORD(STACK[0x850]) = STACK[0x550];
  LODWORD(STACK[0x948]) = STACK[0x594];
  LODWORD(STACK[0x60C]) = STACK[0x720];
  return v3();
}

uint64_t sub_2447FD1B0@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W5>, int a5@<W8>)
{
  LODWORD(STACK[0x7C8]) = 0;
  LODWORD(STACK[0x710]) = 0;
  STACK[0x700] = 0;
  LODWORD(STACK[0x6C4]) = 0;
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
  LODWORD(STACK[0x768]) = 0;
  v11 = a5 ^ 0x5F3A;
  v12 = (v11 - 4092) | 0x3200u;
  LODWORD(STACK[0x950]) = v11 + 8708;
  v13 = *(a2 + 8 * ((800 * (v9 == ((v11 + 8708) ^ 0x7A022E97 ^ v12))) ^ v11));
  STACK[0x548] = STACK[0x750];
  STACK[0x540] = STACK[0x800];
  STACK[0x570] = STACK[0x748];
  STACK[0x538] = STACK[0x740];
  STACK[0x4D8] = STACK[0x870];
  STACK[0x4D0] = STACK[0x820];
  LODWORD(STACK[0x5F4]) = STACK[0x7F0];
  LODWORD(STACK[0x608]) = STACK[0x978];
  LODWORD(STACK[0x4CC]) = STACK[0x838];
  LODWORD(STACK[0x55C]) = STACK[0x7EC];
  LODWORD(STACK[0x56C]) = STACK[0x730];
  LODWORD(STACK[0x600]) = STACK[0x7FC];
  LODWORD(STACK[0x2A0]) = STACK[0x5C4];
  LODWORD(STACK[0x404]) = STACK[0x658];
  LODWORD(STACK[0x534]) = STACK[0x734];
  LODWORD(STACK[0x564]) = STACK[0x7E0];
  LODWORD(STACK[0x568]) = STACK[0x738];
  LODWORD(STACK[0x800]) = v5;
  LODWORD(STACK[0x650]) = v5;
  LODWORD(STACK[0x888]) = STACK[0x7AC];
  LODWORD(STACK[0x898]) = STACK[0x758];
  LODWORD(STACK[0x7EC]) = a4;
  LODWORD(STACK[0x890]) = STACK[0x7A8];
  LODWORD(STACK[0x8A0]) = STACK[0x7A4];
  LODWORD(STACK[0x8B0]) = STACK[0x7A0];
  LODWORD(STACK[0x8A8]) = STACK[0x79C];
  LODWORD(STACK[0x554]) = 2046963352;
  LODWORD(STACK[0x71C]) = 1;
  STACK[0x7F0] = STACK[0x4E8];
  v14 = STACK[0x4B0];
  LODWORD(STACK[0x790]) = v10;
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x70C]) = 1;
  LODWORD(STACK[0x6F0]) = 1;
  LODWORD(STACK[0x6D8]) = 1;
  LODWORD(STACK[0x6C0]) = 1;
  LODWORD(STACK[0x6FC]) = 1;
  LODWORD(STACK[0x6E8]) = 1;
  LODWORD(STACK[0x6EC]) = 1;
  LODWORD(STACK[0x718]) = 1;
  LODWORD(STACK[0x808]) = STACK[0x810];
  LODWORD(STACK[0x658]) = a3;
  LODWORD(STACK[0x7FC]) = STACK[0x720];
  LODWORD(STACK[0x7E0]) = v7;
  STACK[0x860] = v6;
  STACK[0x8F8] = v14;
  v15 = STACK[0x478];
  STACK[0x698] = STACK[0x5B0];
  LODWORD(STACK[0x66C]) = STACK[0x858];
  LODWORD(STACK[0x628]) = v7;
  LODWORD(STACK[0x840]) = a1;
  LODWORD(STACK[0x72C]) = v7;
  LODWORD(STACK[0x624]) = STACK[0x654];
  LODWORD(STACK[0x828]) = STACK[0x5E4];
  LODWORD(STACK[0x81C]) = STACK[0x5E8];
  LODWORD(STACK[0x908]) = v8;
  LODWORD(STACK[0x84C]) = STACK[0x610];
  return v13(v12, v15);
}

uint64_t sub_2447FD3F4@<X0>(uint64_t a1@<X1>, int a2@<W2>, int a3@<W4>, int a4@<W5>, int a5@<W6>, int a6@<W7>, int a7@<W8>)
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
  LODWORD(STACK[0x78C]) = 0;
  LODWORD(STACK[0x714]) = 0;
  LODWORD(STACK[0x768]) = 0;
  v14 = *(a1 + 8 * (((v13 == a7 + 2046960233) * ((a7 + 9681) ^ 0x3271)) ^ a7));
  STACK[0x548] = STACK[0x750];
  STACK[0x540] = STACK[0x800];
  STACK[0x570] = STACK[0x748];
  STACK[0x538] = STACK[0x740];
  STACK[0x4D8] = STACK[0x870];
  STACK[0x4D0] = STACK[0x820];
  LODWORD(STACK[0x5F4]) = STACK[0x7F0];
  LODWORD(STACK[0x608]) = a5;
  LODWORD(STACK[0x4CC]) = STACK[0x838];
  LODWORD(STACK[0x55C]) = STACK[0x7EC];
  LODWORD(STACK[0x56C]) = STACK[0x730];
  LODWORD(STACK[0x600]) = STACK[0x7FC];
  LODWORD(STACK[0x2A0]) = STACK[0x5C4];
  LODWORD(STACK[0x404]) = STACK[0x658];
  LODWORD(STACK[0x534]) = STACK[0x734];
  LODWORD(STACK[0x564]) = STACK[0x7E0];
  LODWORD(STACK[0x568]) = STACK[0x738];
  LODWORD(STACK[0x800]) = v7;
  LODWORD(STACK[0x650]) = v7;
  LODWORD(STACK[0x888]) = STACK[0x7AC];
  LODWORD(STACK[0x898]) = a6;
  LODWORD(STACK[0x7EC]) = a4;
  LODWORD(STACK[0x890]) = STACK[0x7A8];
  LODWORD(STACK[0x8A0]) = STACK[0x7A4];
  LODWORD(STACK[0x8B0]) = STACK[0x7A0];
  LODWORD(STACK[0x8A8]) = STACK[0x79C];
  LODWORD(STACK[0x554]) = 2046963362;
  STACK[0x7F0] = STACK[0x4E8];
  v15 = STACK[0x4B0];
  LODWORD(STACK[0x790]) = v8;
  LODWORD(STACK[0x718]) = 1;
  LODWORD(STACK[0x788]) = 1;
  LODWORD(STACK[0x808]) = STACK[0x810];
  LODWORD(STACK[0x658]) = v9;
  LODWORD(STACK[0x7FC]) = STACK[0x720];
  LODWORD(STACK[0x7E0]) = a3;
  LODWORD(STACK[0x950]) = a7 + 9681;
  STACK[0x860] = v10;
  STACK[0x8F8] = v15;
  STACK[0x698] = v11;
  LODWORD(STACK[0x66C]) = STACK[0x858];
  LODWORD(STACK[0x628]) = a3;
  LODWORD(STACK[0x840]) = a2;
  LODWORD(STACK[0x72C]) = a3;
  LODWORD(STACK[0x624]) = STACK[0x654];
  LODWORD(STACK[0x828]) = STACK[0x5E4];
  LODWORD(STACK[0x81C]) = STACK[0x5E8];
  LODWORD(STACK[0x908]) = v12;
  LODWORD(STACK[0x84C]) = STACK[0x610];
  return v14();
}

uint64_t sub_2447FD63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x950]) = v7 ^ 0x1A55;
  v15 = *(a2 + 8 * (((((v7 + 58) ^ (v14 == (v7 ^ 0x7A020620))) & 1) * v8) ^ v7));
  LODWORD(STACK[0x830]) = 2046963327;
  LODWORD(STACK[0x958]) = 1;
  STACK[0x910] = v10;
  STACK[0x868] = v11;
  LODWORD(STACK[0x60C]) = STACK[0x720];
  LODWORD(STACK[0x930]) = a7;
  LODWORD(STACK[0x878]) = v9;
  LODWORD(STACK[0x828]) = v13;
  LODWORD(STACK[0x2A0]) = STACK[0x5C4];
  LODWORD(STACK[0x404]) = STACK[0x658];
  LODWORD(STACK[0x850]) = v12;
  LODWORD(STACK[0x948]) = STACK[0x594];
  LODWORD(STACK[0x7D4]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  LODWORD(STACK[0x808]) = 1;
  LODWORD(STACK[0x7DC]) = 1;
  return v15();
}

uint64_t sub_2447FD718@<X0>(int a1@<W2>, unsigned int a2@<W8>)
{
  v4 = (LODWORD(STACK[0x3DC]) + 1);
  v5 = *(STACK[0x940] + 8 * ((a2 + 2173) ^ a2 ^ (22698 * (a2 < 0xEA54D031))));
  STACK[0x548] = STACK[0x750];
  STACK[0x540] = STACK[0x800];
  STACK[0x570] = STACK[0x748];
  STACK[0x538] = STACK[0x740];
  STACK[0x4D8] = STACK[0x870];
  STACK[0x4D0] = STACK[0x820];
  LODWORD(STACK[0x5F4]) = STACK[0x7F0];
  LODWORD(STACK[0x608]) = a1;
  LODWORD(STACK[0x4CC]) = STACK[0x838];
  LODWORD(STACK[0x55C]) = STACK[0x7EC];
  LODWORD(STACK[0x56C]) = STACK[0x730];
  LODWORD(STACK[0x808]) = STACK[0x810];
  LODWORD(STACK[0x600]) = STACK[0x7FC];
  LODWORD(STACK[0x2A0]) = STACK[0x5C4];
  LODWORD(STACK[0x404]) = STACK[0x658];
  LODWORD(STACK[0x534]) = STACK[0x734];
  LODWORD(STACK[0x564]) = STACK[0x7E0];
  LODWORD(STACK[0x568]) = STACK[0x738];
  LODWORD(STACK[0x60C]) = STACK[0x720];
  LODWORD(STACK[0x888]) = STACK[0x7AC];
  LODWORD(STACK[0x898]) = STACK[0x758];
  LODWORD(STACK[0x64C]) = v2;
  LODWORD(STACK[0x81C]) = STACK[0x5E8];
  LODWORD(STACK[0x890]) = STACK[0x7A8];
  LODWORD(STACK[0x8A0]) = STACK[0x7A4];
  LODWORD(STACK[0x8B0]) = STACK[0x7A0];
  LODWORD(STACK[0x8A8]) = STACK[0x79C];
  LODWORD(STACK[0x644]) = v3;
  return v5(LODWORD(STACK[0x498]), v4, LODWORD(STACK[0x3D8]), STACK[0x528], LODWORD(STACK[0x648]), LODWORD(STACK[0x524]));
}

uint64_t sub_2447FD8A8@<X0>(int a1@<W7>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, unint64_t a32)
{
  v34 = *(v33 + 8 * (((((a2 - 1609) ^ 0x426) + 16623) * (v32 & 1)) ^ (a2 - 1487)));
  STACK[0x860] = STACK[0x618];
  STACK[0x8F8] = a32;
  STACK[0x698] = a8;
  LODWORD(STACK[0x650]) = STACK[0x5F0];
  LODWORD(STACK[0x66C]) = STACK[0x5D8];
  LODWORD(STACK[0x628]) = STACK[0x60C];
  LODWORD(STACK[0x840]) = STACK[0x614];
  LODWORD(STACK[0x72C]) = a1;
  LODWORD(STACK[0x624]) = STACK[0x64C];
  LODWORD(STACK[0x908]) = a1;
  LODWORD(STACK[0x84C]) = STACK[0x610];
  return v34();
}

uint64_t sub_2447FD95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, unint64_t a35)
{
  v39 = *(STACK[0x940] + 8 * ((26171 * ((((*(a5 - 0x3DE63B339E41EA2DLL) ^ 0x7EA968B40C157391uLL) >> (v35 + 88 + ((30 * (v37 ^ 0x3F) + 49) & 0x9Eu))) & 1) == 0)) ^ v37));
  STACK[0x860] = a5;
  STACK[0x8F8] = a35;
  STACK[0x698] = STACK[0x5B0];
  LODWORD(STACK[0x650]) = STACK[0x5F0];
  LODWORD(STACK[0x66C]) = STACK[0x858];
  LODWORD(STACK[0x628]) = STACK[0x60C];
  LODWORD(STACK[0x840]) = v36;
  LODWORD(STACK[0x72C]) = STACK[0x694];
  LODWORD(STACK[0x624]) = STACK[0x64C];
  LODWORD(STACK[0x690]) = v38;
  LODWORD(STACK[0x908]) = v38;
  LODWORD(STACK[0x84C]) = v35;
  return v39();
}

uint64_t sub_2447FDA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v7 + 20868084;
  v10 = *(STACK[0x940] + 8 * v7);
  v11 = STACK[0x680];
  STACK[0x8F8] = STACK[0x680];
  STACK[0x698] = STACK[0x5B0];
  LODWORD(STACK[0x650]) = STACK[0x5F0];
  LODWORD(STACK[0x66C]) = STACK[0x858];
  LODWORD(STACK[0x628]) = STACK[0x60C];
  v12 = STACK[0x690];
  LODWORD(STACK[0x72C]) = STACK[0x690];
  LODWORD(STACK[0x624]) = STACK[0x64C];
  v13 = LODWORD(STACK[0x57C]);
  LODWORD(STACK[0x694]) = v8;
  LODWORD(STACK[0x908]) = v12;
  return v10(v9 & 0xFEC177DB, v11, a3, a4, a5, v13, a7, v11);
}

uint64_t sub_2447FDAE4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W5>, int a5@<W7>, int a6@<W8>)
{
  LODWORD(STACK[0x7C8]) = 0;
  LODWORD(STACK[0x7B0]) = 0;
  LODWORD(STACK[0x6D4]) = 0;
  LODWORD(STACK[0x7BC]) = 0;
  STACK[0x7D0] = 0;
  STACK[0x7C0] = 0;
  STACK[0x7D8] = 0;
  LODWORD(STACK[0x760]) = 0;
  LODWORD(STACK[0x778]) = 0;
  LODWORD(STACK[0x704]) = 0;
  LODWORD(STACK[0x770]) = 0;
  LODWORD(STACK[0x708]) = 0;
  LODWORD(STACK[0x784]) = 0;
  LODWORD(STACK[0x6BC]) = 0;
  STACK[0x788] = 0;
  LODWORD(STACK[0x714]) = 0;
  LODWORD(STACK[0x768]) = 0;
  v11 = (a6 + 9681);
  v12 = *(a2 + 8 * (((v11 ^ 0x3271) * (v9 != 2046963347)) ^ a6));
  STACK[0x548] = STACK[0x750];
  STACK[0x540] = STACK[0x800];
  STACK[0x570] = STACK[0x748];
  STACK[0x538] = STACK[0x740];
  STACK[0x4D8] = STACK[0x870];
  STACK[0x4D0] = STACK[0x820];
  LODWORD(STACK[0x5F4]) = STACK[0x7F0];
  LODWORD(STACK[0x608]) = STACK[0x978];
  LODWORD(STACK[0x4CC]) = STACK[0x838];
  LODWORD(STACK[0x55C]) = STACK[0x7EC];
  LODWORD(STACK[0x56C]) = STACK[0x730];
  LODWORD(STACK[0x600]) = STACK[0x7FC];
  LODWORD(STACK[0x2A0]) = STACK[0x5C4];
  LODWORD(STACK[0x404]) = STACK[0x658];
  LODWORD(STACK[0x534]) = STACK[0x734];
  LODWORD(STACK[0x564]) = STACK[0x7E0];
  LODWORD(STACK[0x568]) = STACK[0x738];
  LODWORD(STACK[0x800]) = v6;
  LODWORD(STACK[0x650]) = v6;
  LODWORD(STACK[0x888]) = STACK[0x7AC];
  LODWORD(STACK[0x898]) = STACK[0x758];
  LODWORD(STACK[0x7EC]) = a4;
  LODWORD(STACK[0x890]) = STACK[0x7A8];
  LODWORD(STACK[0x8A0]) = STACK[0x7A4];
  LODWORD(STACK[0x8B0]) = STACK[0x7A0];
  LODWORD(STACK[0x8A8]) = STACK[0x79C];
  LODWORD(STACK[0x554]) = 2046963348;
  LODWORD(STACK[0x71C]) = 1;
  STACK[0x7F0] = STACK[0x4E8];
  v13 = STACK[0x4B0];
  LODWORD(STACK[0x790]) = v10;
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x70C]) = 1;
  LODWORD(STACK[0x6F0]) = 1;
  LODWORD(STACK[0x6D8]) = 1;
  LODWORD(STACK[0x6C0]) = 1;
  LODWORD(STACK[0x6FC]) = 1;
  LODWORD(STACK[0x6E8]) = 1;
  LODWORD(STACK[0x6EC]) = 1;
  LODWORD(STACK[0x710]) = 1;
  LODWORD(STACK[0x700]) = 1;
  LODWORD(STACK[0x6C4]) = 1;
  LODWORD(STACK[0x6D0]) = 1;
  LODWORD(STACK[0x718]) = 1;
  LODWORD(STACK[0x808]) = STACK[0x810];
  LODWORD(STACK[0x658]) = a3;
  LODWORD(STACK[0x7FC]) = STACK[0x720];
  LODWORD(STACK[0x7E0]) = v7;
  LODWORD(STACK[0x950]) = v11;
  STACK[0x860] = a1;
  STACK[0x8F8] = v13;
  v14 = STACK[0x478];
  STACK[0x698] = STACK[0x5B0];
  LODWORD(STACK[0x66C]) = STACK[0x858];
  LODWORD(STACK[0x628]) = v7;
  LODWORD(STACK[0x840]) = a5;
  LODWORD(STACK[0x72C]) = v7;
  LODWORD(STACK[0x624]) = STACK[0x654];
  LODWORD(STACK[0x828]) = STACK[0x5E4];
  LODWORD(STACK[0x81C]) = STACK[0x5E8];
  LODWORD(STACK[0x908]) = v8;
  LODWORD(STACK[0x84C]) = STACK[0x610];
  return v12(v11, v14);
}

uint64_t sub_2447FDD18@<X0>(uint64_t a1@<X1>, int a2@<W2>, int a3@<W5>, int a4@<W8>)
{
  STACK[0x7D8] = 0;
  LODWORD(STACK[0x760]) = 0;
  LODWORD(STACK[0x778]) = 0;
  LODWORD(STACK[0x704]) = 0;
  LODWORD(STACK[0x770]) = 0;
  LODWORD(STACK[0x708]) = 0;
  LODWORD(STACK[0x784]) = 0;
  LODWORD(STACK[0x6BC]) = 0;
  STACK[0x788] = 0;
  LODWORD(STACK[0x714]) = 0;
  LODWORD(STACK[0x768]) = 0;
  LODWORD(STACK[0x950]) = a4 + 9681;
  v12 = *(a1 + 8 * ((((a4 - 31561242) & 0x1E1BBEA ^ (a4 + 9784)) * (v10 != 2046963339)) ^ a4));
  STACK[0x548] = STACK[0x750];
  STACK[0x540] = STACK[0x800];
  STACK[0x570] = STACK[0x748];
  STACK[0x538] = STACK[0x740];
  STACK[0x4D8] = STACK[0x870];
  STACK[0x4D0] = STACK[0x820];
  LODWORD(STACK[0x5F4]) = STACK[0x7F0];
  LODWORD(STACK[0x608]) = STACK[0x978];
  LODWORD(STACK[0x4CC]) = STACK[0x838];
  LODWORD(STACK[0x55C]) = STACK[0x7EC];
  LODWORD(STACK[0x56C]) = STACK[0x730];
  LODWORD(STACK[0x600]) = STACK[0x7FC];
  LODWORD(STACK[0x2A0]) = STACK[0x5C4];
  LODWORD(STACK[0x404]) = STACK[0x658];
  LODWORD(STACK[0x534]) = STACK[0x734];
  LODWORD(STACK[0x564]) = STACK[0x7E0];
  LODWORD(STACK[0x568]) = STACK[0x738];
  LODWORD(STACK[0x800]) = v4;
  LODWORD(STACK[0x650]) = v4;
  LODWORD(STACK[0x888]) = STACK[0x7AC];
  LODWORD(STACK[0x898]) = STACK[0x758];
  LODWORD(STACK[0x7EC]) = a3;
  LODWORD(STACK[0x890]) = STACK[0x7A8];
  LODWORD(STACK[0x8A0]) = STACK[0x7A4];
  LODWORD(STACK[0x8B0]) = STACK[0x7A0];
  LODWORD(STACK[0x8A8]) = STACK[0x79C];
  LODWORD(STACK[0x554]) = 2046963340;
  LODWORD(STACK[0x978]) = 1;
  STACK[0x7F0] = STACK[0x4E8];
  v13 = STACK[0x4B0];
  LODWORD(STACK[0x790]) = v11;
  LODWORD(STACK[0x7C8]) = 1;
  LODWORD(STACK[0x71C]) = 1;
  LODWORD(STACK[0x70C]) = 1;
  LODWORD(STACK[0x6F0]) = 1;
  LODWORD(STACK[0x6D8]) = 1;
  LODWORD(STACK[0x6C0]) = 1;
  LODWORD(STACK[0x6FC]) = 1;
  LODWORD(STACK[0x6E8]) = 1;
  LODWORD(STACK[0x6EC]) = 1;
  LODWORD(STACK[0x710]) = 1;
  LODWORD(STACK[0x700]) = 1;
  LODWORD(STACK[0x6C4]) = 1;
  LODWORD(STACK[0x6D0]) = 1;
  LODWORD(STACK[0x7B0]) = 1;
  LODWORD(STACK[0x6D4]) = 1;
  LODWORD(STACK[0x7BC]) = 1;
  LODWORD(STACK[0x7D4]) = 1;
  LODWORD(STACK[0x7C4]) = 1;
  LODWORD(STACK[0x7C0]) = 1;
  LODWORD(STACK[0x7D0]) = 1;
  LODWORD(STACK[0x718]) = 1;
  LODWORD(STACK[0x808]) = STACK[0x810];
  LODWORD(STACK[0x658]) = a2;
  LODWORD(STACK[0x7FC]) = STACK[0x720];
  LODWORD(STACK[0x7E0]) = v8;
  STACK[0x860] = v5;
  STACK[0x8F8] = v13;
  STACK[0x698] = v7;
  LODWORD(STACK[0x66C]) = STACK[0x858];
  LODWORD(STACK[0x628]) = v8;
  LODWORD(STACK[0x840]) = v6;
  LODWORD(STACK[0x72C]) = v8;
  LODWORD(STACK[0x624]) = STACK[0x654];
  LODWORD(STACK[0x828]) = STACK[0x5E4];
  LODWORD(STACK[0x81C]) = STACK[0x5E8];
  LODWORD(STACK[0x908]) = v9;
  LODWORD(STACK[0x84C]) = STACK[0x610];
  return v12();
}

uint64_t sub_2447FDF68(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0x7C8]) = 0;
  LODWORD(STACK[0x71C]) = 0;
  LODWORD(STACK[0x6FC]) = 0;
  STACK[0x6E8] = 0;
  LODWORD(STACK[0x710]) = 0;
  STACK[0x700] = 0;
  LODWORD(STACK[0x6C4]) = 0;
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
  LODWORD(STACK[0x768]) = 0;
  v13 = (v6 + 9681);
  LODWORD(STACK[0x950]) = v6 ^ 0x3E33;
  LODWORD(STACK[0x70C]) = 1;
  v14 = *(a2 + 8 * ((123 * (((v6 ^ 0x3E33 ^ (v11 == (v13 ^ 0x7A021C91))) & 1) == 0)) ^ v6));
  STACK[0x548] = STACK[0x750];
  STACK[0x540] = STACK[0x800];
  STACK[0x570] = STACK[0x748];
  STACK[0x538] = STACK[0x740];
  STACK[0x4D8] = STACK[0x870];
  STACK[0x4D0] = STACK[0x820];
  LODWORD(STACK[0x5F4]) = STACK[0x7F0];
  LODWORD(STACK[0x608]) = STACK[0x978];
  LODWORD(STACK[0x4CC]) = STACK[0x838];
  LODWORD(STACK[0x55C]) = STACK[0x7EC];
  LODWORD(STACK[0x56C]) = STACK[0x730];
  LODWORD(STACK[0x600]) = STACK[0x7FC];
  LODWORD(STACK[0x2A0]) = STACK[0x5C4];
  LODWORD(STACK[0x404]) = STACK[0x658];
  LODWORD(STACK[0x534]) = STACK[0x734];
  LODWORD(STACK[0x564]) = STACK[0x7E0];
  LODWORD(STACK[0x568]) = STACK[0x738];
  LODWORD(STACK[0x800]) = v7;
  LODWORD(STACK[0x650]) = v7;
  LODWORD(STACK[0x888]) = STACK[0x7AC];
  LODWORD(STACK[0x898]) = STACK[0x758];
  LODWORD(STACK[0x7EC]) = a6;
  LODWORD(STACK[0x890]) = STACK[0x7A8];
  LODWORD(STACK[0x8A0]) = STACK[0x7A4];
  LODWORD(STACK[0x8B0]) = STACK[0x7A0];
  LODWORD(STACK[0x8A8]) = STACK[0x79C];
  LODWORD(STACK[0x554]) = 2046963356;
  STACK[0x7F0] = STACK[0x4E8];
  v15 = STACK[0x4B0];
  LODWORD(STACK[0x790]) = v12;
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x6F0]) = 1;
  LODWORD(STACK[0x6D8]) = 1;
  LODWORD(STACK[0x6C0]) = 1;
  LODWORD(STACK[0x718]) = 1;
  LODWORD(STACK[0x808]) = STACK[0x810];
  LODWORD(STACK[0x658]) = a3;
  LODWORD(STACK[0x7FC]) = STACK[0x720];
  LODWORD(STACK[0x7E0]) = v9;
  STACK[0x860] = v8;
  STACK[0x8F8] = v15;
  v16 = STACK[0x478];
  STACK[0x698] = STACK[0x5B0];
  LODWORD(STACK[0x66C]) = STACK[0x858];
  LODWORD(STACK[0x628]) = v9;
  LODWORD(STACK[0x840]) = a1;
  LODWORD(STACK[0x72C]) = v9;
  LODWORD(STACK[0x624]) = STACK[0x654];
  LODWORD(STACK[0x828]) = STACK[0x5E4];
  LODWORD(STACK[0x81C]) = STACK[0x5E8];
  LODWORD(STACK[0x908]) = v10;
  LODWORD(STACK[0x84C]) = STACK[0x610];
  return v14(v13, v16);
}

uint64_t sub_2447FE430@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W5>, int a5@<W7>, int a6@<W8>)
{
  STACK[0x7D0] = 0;
  STACK[0x7C0] = 0;
  STACK[0x7D8] = 0;
  LODWORD(STACK[0x760]) = 0;
  LODWORD(STACK[0x778]) = 0;
  LODWORD(STACK[0x704]) = 0;
  LODWORD(STACK[0x770]) = 0;
  LODWORD(STACK[0x708]) = 0;
  LODWORD(STACK[0x784]) = 0;
  LODWORD(STACK[0x6BC]) = 0;
  STACK[0x788] = 0;
  LODWORD(STACK[0x714]) = 0;
  LODWORD(STACK[0x768]) = 0;
  v11 = a6 ^ 0x6B2;
  v12 = (v11 - 4092) | 0x3200;
  LODWORD(STACK[0x950]) = v12;
  v13 = *(a2 + 8 * (((v12 ^ 0x312A) * (v9 == 2046963343)) | v11));
  STACK[0x548] = STACK[0x750];
  STACK[0x540] = STACK[0x800];
  STACK[0x570] = STACK[0x748];
  STACK[0x538] = STACK[0x740];
  STACK[0x4D8] = STACK[0x870];
  STACK[0x4D0] = STACK[0x820];
  LODWORD(STACK[0x5F4]) = STACK[0x7F0];
  LODWORD(STACK[0x608]) = STACK[0x978];
  LODWORD(STACK[0x4CC]) = STACK[0x838];
  LODWORD(STACK[0x55C]) = STACK[0x7EC];
  LODWORD(STACK[0x56C]) = STACK[0x730];
  LODWORD(STACK[0x600]) = STACK[0x7FC];
  LODWORD(STACK[0x2A0]) = STACK[0x5C4];
  LODWORD(STACK[0x404]) = STACK[0x658];
  LODWORD(STACK[0x534]) = STACK[0x734];
  LODWORD(STACK[0x564]) = STACK[0x7E0];
  LODWORD(STACK[0x568]) = STACK[0x738];
  LODWORD(STACK[0x800]) = v6;
  LODWORD(STACK[0x650]) = v6;
  LODWORD(STACK[0x888]) = STACK[0x7AC];
  LODWORD(STACK[0x898]) = STACK[0x758];
  LODWORD(STACK[0x7EC]) = a4;
  LODWORD(STACK[0x890]) = STACK[0x7A8];
  LODWORD(STACK[0x8A0]) = STACK[0x7A4];
  LODWORD(STACK[0x8B0]) = STACK[0x7A0];
  LODWORD(STACK[0x8A8]) = STACK[0x79C];
  LODWORD(STACK[0x554]) = 2046963344;
  LODWORD(STACK[0x7C8]) = 1;
  STACK[0x7F0] = STACK[0x4E8];
  v14 = STACK[0x4B0];
  LODWORD(STACK[0x790]) = v10;
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x71C]) = 1;
  LODWORD(STACK[0x70C]) = 1;
  LODWORD(STACK[0x6F0]) = 1;
  LODWORD(STACK[0x6D8]) = 1;
  LODWORD(STACK[0x6C0]) = 1;
  LODWORD(STACK[0x6FC]) = 1;
  LODWORD(STACK[0x6E8]) = 1;
  LODWORD(STACK[0x6EC]) = 1;
  LODWORD(STACK[0x710]) = 1;
  LODWORD(STACK[0x700]) = 1;
  LODWORD(STACK[0x6C4]) = 1;
  LODWORD(STACK[0x6D0]) = 1;
  LODWORD(STACK[0x7B0]) = 1;
  LODWORD(STACK[0x6D4]) = 1;
  LODWORD(STACK[0x7BC]) = 1;
  LODWORD(STACK[0x718]) = 1;
  LODWORD(STACK[0x808]) = STACK[0x810];
  LODWORD(STACK[0x658]) = a3;
  LODWORD(STACK[0x7FC]) = STACK[0x720];
  LODWORD(STACK[0x7E0]) = v7;
  STACK[0x860] = a1;
  STACK[0x8F8] = v14;
  v15 = STACK[0x478];
  STACK[0x698] = STACK[0x5B0];
  LODWORD(STACK[0x66C]) = STACK[0x858];
  LODWORD(STACK[0x628]) = v7;
  LODWORD(STACK[0x840]) = a5;
  LODWORD(STACK[0x72C]) = v7;
  LODWORD(STACK[0x624]) = STACK[0x654];
  LODWORD(STACK[0x828]) = STACK[0x5E4];
  LODWORD(STACK[0x81C]) = STACK[0x5E8];
  LODWORD(STACK[0x908]) = v8;
  LODWORD(STACK[0x84C]) = STACK[0x610];
  return v13((v11 + 8708), v15);
}

uint64_t sub_2447FE678@<X0>(uint64_t a1@<X1>, int a2@<W2>, int a3@<W5>, int a4@<W7>, int a5@<W8>)
{
  LODWORD(STACK[0x778]) = 0;
  LODWORD(STACK[0x704]) = 0;
  LODWORD(STACK[0x770]) = 0;
  LODWORD(STACK[0x708]) = 0;
  LODWORD(STACK[0x784]) = 0;
  LODWORD(STACK[0x6BC]) = 0;
  STACK[0x788] = 0;
  LODWORD(STACK[0x714]) = 0;
  LODWORD(STACK[0x768]) = 0;
  v13 = (a5 + 1959619540) & 0x8B32B62F;
  LODWORD(STACK[0x950]) = v13;
  v14 = *(a1 + 8 * (((v11 == v13 + 2046950525) * (((a5 - 3590) | 0x300A) - 12010)) | a5));
  STACK[0x548] = STACK[0x750];
  STACK[0x540] = STACK[0x800];
  STACK[0x570] = STACK[0x748];
  STACK[0x538] = STACK[0x740];
  STACK[0x4D8] = STACK[0x870];
  STACK[0x4D0] = STACK[0x820];
  LODWORD(STACK[0x5F4]) = STACK[0x7F0];
  LODWORD(STACK[0x608]) = STACK[0x978];
  LODWORD(STACK[0x4CC]) = STACK[0x838];
  LODWORD(STACK[0x55C]) = STACK[0x7EC];
  LODWORD(STACK[0x56C]) = STACK[0x730];
  LODWORD(STACK[0x600]) = STACK[0x7FC];
  LODWORD(STACK[0x2A0]) = STACK[0x5C4];
  LODWORD(STACK[0x404]) = STACK[0x658];
  LODWORD(STACK[0x534]) = STACK[0x734];
  LODWORD(STACK[0x564]) = STACK[0x7E0];
  LODWORD(STACK[0x568]) = STACK[0x738];
  LODWORD(STACK[0x800]) = v5;
  LODWORD(STACK[0x650]) = v5;
  LODWORD(STACK[0x888]) = STACK[0x7AC];
  LODWORD(STACK[0x898]) = a4;
  LODWORD(STACK[0x7EC]) = a3;
  LODWORD(STACK[0x890]) = STACK[0x7A8];
  LODWORD(STACK[0x8A0]) = STACK[0x7A4];
  LODWORD(STACK[0x8B0]) = STACK[0x7A0];
  LODWORD(STACK[0x8A8]) = STACK[0x79C];
  LODWORD(STACK[0x554]) = 2046963336;
  LODWORD(STACK[0x978]) = 1;
  STACK[0x7F0] = STACK[0x4E8];
  v15 = STACK[0x4B0];
  LODWORD(STACK[0x790]) = v12;
  LODWORD(STACK[0x7C8]) = 1;
  LODWORD(STACK[0x71C]) = 1;
  LODWORD(STACK[0x70C]) = 1;
  LODWORD(STACK[0x6F0]) = 1;
  LODWORD(STACK[0x6D8]) = 1;
  LODWORD(STACK[0x6C0]) = 1;
  LODWORD(STACK[0x6FC]) = 1;
  LODWORD(STACK[0x6E8]) = 1;
  LODWORD(STACK[0x6EC]) = 1;
  LODWORD(STACK[0x710]) = 1;
  LODWORD(STACK[0x700]) = 1;
  LODWORD(STACK[0x6C4]) = 1;
  LODWORD(STACK[0x6D0]) = 1;
  LODWORD(STACK[0x7B0]) = 1;
  LODWORD(STACK[0x6D4]) = 1;
  LODWORD(STACK[0x7BC]) = 1;
  LODWORD(STACK[0x7D4]) = 1;
  LODWORD(STACK[0x7C4]) = 1;
  LODWORD(STACK[0x7C0]) = 1;
  LODWORD(STACK[0x7D0]) = 1;
  LODWORD(STACK[0x7DC]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  LODWORD(STACK[0x760]) = 1;
  LODWORD(STACK[0x718]) = 1;
  LODWORD(STACK[0x808]) = STACK[0x810];
  LODWORD(STACK[0x658]) = a2;
  LODWORD(STACK[0x7FC]) = STACK[0x720];
  LODWORD(STACK[0x7E0]) = v9;
  STACK[0x860] = v6;
  STACK[0x8F8] = v15;
  STACK[0x698] = v8;
  LODWORD(STACK[0x66C]) = STACK[0x858];
  LODWORD(STACK[0x628]) = v9;
  LODWORD(STACK[0x840]) = v7;
  LODWORD(STACK[0x72C]) = v9;
  LODWORD(STACK[0x624]) = STACK[0x654];
  LODWORD(STACK[0x828]) = STACK[0x5E4];
  LODWORD(STACK[0x81C]) = STACK[0x5E8];
  LODWORD(STACK[0x908]) = v10;
  LODWORD(STACK[0x84C]) = STACK[0x610];
  return v14();
}

uint64_t sub_2447FE8D4(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0x7C8]) = 0;
  LODWORD(STACK[0x71C]) = 0;
  LODWORD(STACK[0x6EC]) = 0;
  LODWORD(STACK[0x710]) = 0;
  STACK[0x700] = 0;
  LODWORD(STACK[0x6C4]) = 0;
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
  LODWORD(STACK[0x768]) = 0;
  v13 = v6 ^ 0x6B4u;
  v14 = *(a2 + 8 * (((v11 == (v6 ^ 0x7A021A24)) * (v6 ^ 0x4B51)) ^ v6));
  STACK[0x548] = STACK[0x750];
  STACK[0x540] = STACK[0x800];
  STACK[0x570] = STACK[0x748];
  STACK[0x538] = STACK[0x740];
  STACK[0x4D8] = STACK[0x870];
  STACK[0x4D0] = STACK[0x820];
  LODWORD(STACK[0x5F4]) = STACK[0x7F0];
  LODWORD(STACK[0x608]) = STACK[0x978];
  LODWORD(STACK[0x4CC]) = STACK[0x838];
  LODWORD(STACK[0x55C]) = STACK[0x7EC];
  LODWORD(STACK[0x56C]) = STACK[0x730];
  LODWORD(STACK[0x600]) = STACK[0x7FC];
  LODWORD(STACK[0x2A0]) = STACK[0x5C4];
  LODWORD(STACK[0x404]) = STACK[0x658];
  LODWORD(STACK[0x534]) = STACK[0x734];
  LODWORD(STACK[0x564]) = STACK[0x7E0];
  LODWORD(STACK[0x568]) = STACK[0x738];
  LODWORD(STACK[0x800]) = v7;
  LODWORD(STACK[0x650]) = v7;
  LODWORD(STACK[0x888]) = STACK[0x7AC];
  LODWORD(STACK[0x898]) = STACK[0x758];
  LODWORD(STACK[0x7EC]) = a6;
  LODWORD(STACK[0x890]) = STACK[0x7A8];
  LODWORD(STACK[0x8A0]) = STACK[0x7A4];
  LODWORD(STACK[0x8B0]) = STACK[0x7A0];
  LODWORD(STACK[0x8A8]) = STACK[0x79C];
  LODWORD(STACK[0x554]) = 2046963354;
  LODWORD(STACK[0x70C]) = 1;
  STACK[0x7F0] = STACK[0x4E8];
  v15 = STACK[0x4B0];
  LODWORD(STACK[0x790]) = v12;
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x6F0]) = 1;
  LODWORD(STACK[0x6D8]) = 1;
  LODWORD(STACK[0x6C0]) = 1;
  LODWORD(STACK[0x6FC]) = 1;
  LODWORD(STACK[0x6E8]) = 1;
  LODWORD(STACK[0x718]) = 1;
  LODWORD(STACK[0x808]) = STACK[0x810];
  LODWORD(STACK[0x658]) = a3;
  LODWORD(STACK[0x7FC]) = STACK[0x720];
  LODWORD(STACK[0x7E0]) = v9;
  LODWORD(STACK[0x950]) = v13;
  STACK[0x860] = v8;
  STACK[0x8F8] = v15;
  v16 = STACK[0x478];
  STACK[0x698] = STACK[0x5B0];
  LODWORD(STACK[0x66C]) = STACK[0x858];
  LODWORD(STACK[0x628]) = v9;
  LODWORD(STACK[0x840]) = a1;
  LODWORD(STACK[0x72C]) = v9;
  LODWORD(STACK[0x624]) = STACK[0x654];
  LODWORD(STACK[0x828]) = STACK[0x5E4];
  LODWORD(STACK[0x81C]) = STACK[0x5E8];
  LODWORD(STACK[0x908]) = v10;
  LODWORD(STACK[0x84C]) = STACK[0x610];
  return v14(v13, v16);
}

uint64_t sub_2447FEB68(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v14 = *(a2 + 8 * ((15172 * ((STACK[0x2BC] & 0xFE) == ((v7 + 42) ^ v8))) ^ v7));
  STACK[0x548] = STACK[0x750];
  STACK[0x540] = STACK[0x800];
  STACK[0x570] = STACK[0x748];
  STACK[0x538] = STACK[0x740];
  STACK[0x910] = v10;
  STACK[0x868] = v11;
  LODWORD(STACK[0x5F4]) = STACK[0x7F0];
  LODWORD(STACK[0x900]) = a3;
  LODWORD(STACK[0x880]) = a4;
  LODWORD(STACK[0x60C]) = STACK[0x720];
  LODWORD(STACK[0x55C]) = STACK[0x7EC];
  LODWORD(STACK[0x930]) = a7;
  LODWORD(STACK[0x878]) = v9;
  LODWORD(STACK[0x56C]) = STACK[0x730];
  LODWORD(STACK[0x64C]) = STACK[0x654];
  LODWORD(STACK[0x828]) = v13;
  LODWORD(STACK[0x830]) = 2046963330;
  LODWORD(STACK[0x81C]) = STACK[0x5E8];
  LODWORD(STACK[0x600]) = STACK[0x7FC];
  LODWORD(STACK[0x2A0]) = v12;
  LODWORD(STACK[0x404]) = STACK[0x658];
  LODWORD(STACK[0x850]) = v12;
  LODWORD(STACK[0x534]) = STACK[0x734];
  LODWORD(STACK[0x564]) = v12;
  LODWORD(STACK[0x948]) = STACK[0x594];
  LODWORD(STACK[0x644]) = STACK[0x960];
  LODWORD(STACK[0x568]) = STACK[0x738];
  return v14();
}

uint64_t sub_2447FEC68(int a1, uint64_t a2, int a3)
{
  v5 = *(STACK[0x940] + 8 * ((8922 * (LODWORD(STACK[0x2BC]) == (((v3 ^ 0xEA) - 39) ^ (v3 - 19)))) ^ v3));
  LODWORD(STACK[0x2BC]) = 47;
  STACK[0x548] = STACK[0x750];
  STACK[0x540] = STACK[0x800];
  STACK[0x570] = STACK[0x748];
  STACK[0x538] = STACK[0x740];
  STACK[0x910] = STACK[0x5A0];
  STACK[0x868] = STACK[0x598];
  LODWORD(STACK[0x5F4]) = STACK[0x7F0];
  LODWORD(STACK[0x900]) = a3;
  LODWORD(STACK[0x880]) = STACK[0x5F8];
  LODWORD(STACK[0x60C]) = STACK[0x720];
  v6 = STACK[0x550];
  LODWORD(STACK[0x55C]) = STACK[0x550];
  LODWORD(STACK[0x930]) = STACK[0x5AC];
  LODWORD(STACK[0x878]) = STACK[0x5A8];
  LODWORD(STACK[0x56C]) = STACK[0x730];
  v7 = STACK[0x5C4];
  LODWORD(STACK[0x64C]) = a1;
  LODWORD(STACK[0x828]) = STACK[0x5E4];
  LODWORD(STACK[0x830]) = 2046963330;
  LODWORD(STACK[0x81C]) = STACK[0x5E8];
  LODWORD(STACK[0x600]) = STACK[0x7FC];
  LODWORD(STACK[0x2A0]) = v7;
  LODWORD(STACK[0x404]) = STACK[0x658];
  LODWORD(STACK[0x850]) = v6;
  LODWORD(STACK[0x534]) = STACK[0x734];
  LODWORD(STACK[0x564]) = v6;
  LODWORD(STACK[0x948]) = STACK[0x594];
  LODWORD(STACK[0x644]) = v4;
  LODWORD(STACK[0x568]) = STACK[0x738];
  return v5();
}

uint64_t sub_2447FED98(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, unint64_t a30, int a31, int a32)
{
  v34 = *(STACK[0x940] + 8 * ((((183 * (v32 ^ 0x90C2EA8B)) ^ 0x383C) * (v32 > 0x5E82B6F6)) ^ (v32 + 1866274569)));
  LODWORD(STACK[0x2BC]) = 47;
  STACK[0x300] = STACK[0x318];
  STACK[0x548] = STACK[0x750];
  STACK[0x540] = STACK[0x800];
  STACK[0x570] = STACK[0x748];
  STACK[0x538] = STACK[0x740];
  STACK[0x910] = STACK[0x5A0];
  STACK[0x868] = STACK[0x598];
  LODWORD(STACK[0x5F4]) = STACK[0x7F0];
  LODWORD(STACK[0x900]) = a3;
  LODWORD(STACK[0x880]) = STACK[0x5F8];
  LODWORD(STACK[0x60C]) = STACK[0x720];
  LODWORD(STACK[0x55C]) = STACK[0x7EC];
  LODWORD(STACK[0x930]) = STACK[0x5AC];
  LODWORD(STACK[0x878]) = STACK[0x5A8];
  LODWORD(STACK[0x56C]) = STACK[0x730];
  LODWORD(STACK[0x64C]) = a1;
  LODWORD(STACK[0x828]) = STACK[0x5E4];
  LODWORD(STACK[0x81C]) = STACK[0x5E8];
  LODWORD(STACK[0x600]) = STACK[0x7FC];
  v35 = STACK[0x550];
  LODWORD(STACK[0x2A0]) = STACK[0x550];
  LODWORD(STACK[0x404]) = STACK[0x658];
  LODWORD(STACK[0x850]) = v35;
  LODWORD(STACK[0x534]) = STACK[0x734];
  LODWORD(STACK[0x564]) = v35;
  LODWORD(STACK[0x948]) = STACK[0x594];
  LODWORD(STACK[0x644]) = v33;
  LODWORD(STACK[0x568]) = STACK[0x738];
  STACK[0x338] = STACK[0x2E0];
  STACK[0x320] = a30;
  LODWORD(STACK[0x344]) = STACK[0x2E8];
  LODWORD(STACK[0x830]) = 2046963330;
  LODWORD(STACK[0x32C]) = a32;
  return v34();
}

uint64_t sub_2447FEEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, int a38, uint64_t a39, unint64_t a40, uint64_t a41, int a42, int a43)
{
  v44 = 6 * (((v43 - 3308) | 0x1200) ^ 0x3A5D);
  v45 = *(a32 - 0x1DC6E026F0860055) == 0xD3879C4D733BB295;
  LODWORD(STACK[0x950]) = v44;
  v46 = *(STACK[0x940] + 8 * (((v44 - 6594) * v45) ^ v43));
  STACK[0x750] = STACK[0x548];
  STACK[0x800] = STACK[0x540];
  STACK[0x748] = STACK[0x570];
  STACK[0x740] = STACK[0x538];
  LODWORD(STACK[0x7F0]) = STACK[0x5F4];
  LODWORD(STACK[0x60C]) = a8;
  LODWORD(STACK[0x7AC]) = STACK[0x888];
  LODWORD(STACK[0x7EC]) = STACK[0x55C];
  v47 = STACK[0x858];
  LODWORD(STACK[0x730]) = STACK[0x56C];
  LODWORD(STACK[0x758]) = STACK[0x898];
  v48 = STACK[0x64C];
  LODWORD(STACK[0x7FC]) = STACK[0x600];
  LODWORD(STACK[0x734]) = STACK[0x534];
  LODWORD(STACK[0x7E0]) = STACK[0x564];
  LODWORD(STACK[0x7A8]) = STACK[0x890];
  LODWORD(STACK[0x7A4]) = STACK[0x8A0];
  LODWORD(STACK[0x7A0]) = STACK[0x8B0];
  LODWORD(STACK[0x628]) = a8;
  LODWORD(STACK[0x624]) = v48;
  LODWORD(STACK[0x79C]) = STACK[0x8A8];
  LODWORD(STACK[0x738]) = STACK[0x568];
  STACK[0x860] = STACK[0x618];
  STACK[0x8F8] = a40;
  STACK[0x698] = STACK[0x5B0];
  LODWORD(STACK[0x650]) = STACK[0x5F0];
  LODWORD(STACK[0x66C]) = v47;
  LODWORD(STACK[0x840]) = STACK[0x614];
  LODWORD(STACK[0x72C]) = a38;
  LODWORD(STACK[0x908]) = a43;
  LODWORD(STACK[0x84C]) = STACK[0x610];
  return v46();
}

uint64_t sub_2447FF158@<X0>(unint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W5>, int a5@<W7>, int a6@<W8>)
{
  STACK[0x7D0] = 0;
  LODWORD(STACK[0x7C4]) = 0;
  STACK[0x7D8] = 0;
  LODWORD(STACK[0x760]) = 0;
  LODWORD(STACK[0x778]) = 0;
  LODWORD(STACK[0x704]) = 0;
  LODWORD(STACK[0x770]) = 0;
  LODWORD(STACK[0x708]) = 0;
  LODWORD(STACK[0x784]) = 0;
  LODWORD(STACK[0x6BC]) = 0;
  STACK[0x788] = 0;
  LODWORD(STACK[0x714]) = 0;
  LODWORD(STACK[0x768]) = 0;
  v15 = (a6 + 9167) | 0x202u;
  v16 = LODWORD(STACK[0x474]) == v15 + 1671790347;
  LODWORD(STACK[0x950]) = a6 + 9681;
  v17 = *(v14 + 8 * ((v16 * v6) ^ a6));
  STACK[0x4D8] = STACK[0x870];
  STACK[0x4D0] = STACK[0x820];
  STACK[0x5A0] = STACK[0x910];
  STACK[0x598] = STACK[0x868];
  LODWORD(STACK[0x4CC]) = STACK[0x838];
  LODWORD(STACK[0x5AC]) = STACK[0x930];
  LODWORD(STACK[0x5A8]) = STACK[0x878];
  LODWORD(STACK[0x554]) = STACK[0x830];
  LODWORD(STACK[0x550]) = a2;
  LODWORD(STACK[0x594]) = a3;
  LODWORD(STACK[0x7FC]) = v12;
  LODWORD(STACK[0x7E0]) = v12;
  LODWORD(STACK[0x800]) = a5;
  LODWORD(STACK[0x650]) = a5;
  LODWORD(STACK[0x624]) = v9;
  LODWORD(STACK[0x7EC]) = a4;
  LODWORD(STACK[0x628]) = v11;
  LODWORD(STACK[0x72C]) = v11;
  LODWORD(STACK[0x908]) = v11;
  LODWORD(STACK[0x720]) = v13;
  LODWORD(STACK[0x7C8]) = 1;
  STACK[0x618] = a1;
  STACK[0x7F0] = STACK[0x478];
  LODWORD(STACK[0x790]) = STACK[0x648];
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x71C]) = 1;
  LODWORD(STACK[0x70C]) = 1;
  LODWORD(STACK[0x6F0]) = 1;
  LODWORD(STACK[0x6D8]) = 1;
  LODWORD(STACK[0x6C0]) = 1;
  LODWORD(STACK[0x6FC]) = 1;
  LODWORD(STACK[0x6E8]) = 1;
  LODWORD(STACK[0x6EC]) = 1;
  LODWORD(STACK[0x710]) = 1;
  LODWORD(STACK[0x700]) = 1;
  LODWORD(STACK[0x6C4]) = 1;
  LODWORD(STACK[0x6D0]) = 1;
  LODWORD(STACK[0x7B0]) = 1;
  LODWORD(STACK[0x6D4]) = 1;
  LODWORD(STACK[0x7BC]) = 1;
  LODWORD(STACK[0x7C0]) = 1;
  LODWORD(STACK[0x718]) = 1;
  LODWORD(STACK[0x614]) = STACK[0x840];
  LODWORD(STACK[0x5E4]) = STACK[0x828];
  LODWORD(STACK[0x808]) = STACK[0x810];
  LODWORD(STACK[0x658]) = STACK[0x524];
  LODWORD(STACK[0x5E8]) = v7;
  LODWORD(STACK[0x610]) = STACK[0x84C];
  STACK[0x8F8] = STACK[0x4E8];
  STACK[0x698] = v10;
  LODWORD(STACK[0x66C]) = STACK[0x858];
  LODWORD(STACK[0x474]) = v8 + 23;
  return v17(v15);
}

uint64_t sub_2447FF3AC@<X0>(unint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W4>, int a5@<W5>, int a6@<W7>, int a7@<W8>)
{
  LODWORD(STACK[0x778]) = 0;
  LODWORD(STACK[0x704]) = 0;
  LODWORD(STACK[0x770]) = 0;
  LODWORD(STACK[0x708]) = 0;
  LODWORD(STACK[0x784]) = 0;
  LODWORD(STACK[0x6BC]) = 0;
  STACK[0x788] = 0;
  LODWORD(STACK[0x714]) = 0;
  LODWORD(STACK[0x768]) = 0;
  v14 = 1830 * (a7 ^ 0x1001);
  v15 = LODWORD(STACK[0x474]) == v7 + 15;
  LODWORD(STACK[0x950]) = v14;
  v16 = *(v13 + 8 * (((v14 ^ 0x312A) * v15) ^ a7));
  STACK[0x4D8] = STACK[0x870];
  STACK[0x4D0] = STACK[0x820];
  STACK[0x5A0] = STACK[0x910];
  STACK[0x598] = STACK[0x868];
  LODWORD(STACK[0x800]) = a6;
  LODWORD(STACK[0x4CC]) = STACK[0x838];
  LODWORD(STACK[0x5AC]) = STACK[0x930];
  LODWORD(STACK[0x5A8]) = STACK[0x878];
  LODWORD(STACK[0x554]) = STACK[0x830];
  LODWORD(STACK[0x550]) = a2;
  LODWORD(STACK[0x594]) = a4;
  LODWORD(STACK[0x720]) = v12;
  LODWORD(STACK[0x650]) = v12;
  LODWORD(STACK[0x628]) = v10;
  LODWORD(STACK[0x624]) = v8;
  LODWORD(STACK[0x7EC]) = a5;
  LODWORD(STACK[0x7FC]) = v11;
  LODWORD(STACK[0x7E0]) = v11;
  LODWORD(STACK[0x72C]) = v11;
  LODWORD(STACK[0x908]) = v11;
  LODWORD(STACK[0x474]) = v7 + 14;
  LODWORD(STACK[0x7C8]) = 1;
  STACK[0x618] = a1;
  v17 = STACK[0x478];
  STACK[0x7F0] = STACK[0x478];
  LODWORD(STACK[0x790]) = STACK[0x648];
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x71C]) = 1;
  LODWORD(STACK[0x70C]) = 1;
  LODWORD(STACK[0x6F0]) = 1;
  LODWORD(STACK[0x6D8]) = 1;
  LODWORD(STACK[0x6C0]) = 1;
  LODWORD(STACK[0x6FC]) = 1;
  LODWORD(STACK[0x6E8]) = 1;
  LODWORD(STACK[0x6EC]) = 1;
  LODWORD(STACK[0x710]) = 1;
  LODWORD(STACK[0x700]) = 1;
  LODWORD(STACK[0x6C4]) = 1;
  LODWORD(STACK[0x6D0]) = 1;
  LODWORD(STACK[0x7B0]) = 1;
  LODWORD(STACK[0x6D4]) = 1;
  LODWORD(STACK[0x7BC]) = 1;
  LODWORD(STACK[0x7D4]) = 1;
  LODWORD(STACK[0x7C4]) = 1;
  LODWORD(STACK[0x7C0]) = 1;
  LODWORD(STACK[0x7D0]) = 1;
  LODWORD(STACK[0x7DC]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  LODWORD(STACK[0x760]) = 1;
  LODWORD(STACK[0x718]) = 1;
  LODWORD(STACK[0x614]) = STACK[0x840];
  LODWORD(STACK[0x5E4]) = STACK[0x828];
  LODWORD(STACK[0x808]) = STACK[0x810];
  LODWORD(STACK[0x658]) = STACK[0x524];
  LODWORD(STACK[0x5E8]) = a3;
  LODWORD(STACK[0x610]) = STACK[0x84C];
  STACK[0x8F8] = v17;
  STACK[0x698] = v9;
  LODWORD(STACK[0x66C]) = STACK[0x858];
  return v16(a7 ^ 0x220Cu);
}

uint64_t sub_2447FF5CC@<X0>(unint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W4>, int a5@<W5>, int a6@<W7>, int a7@<W8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, int a41)
{
  LODWORD(STACK[0x708]) = 0;
  LODWORD(STACK[0x784]) = 0;
  LODWORD(STACK[0x6BC]) = 0;
  STACK[0x788] = 0;
  LODWORD(STACK[0x714]) = 0;
  LODWORD(STACK[0x768]) = 0;
  v48 = (a7 + 9681);
  v49 = *(v47 + 8 * (((LODWORD(STACK[0x474]) != a7 + 1671800009) * (v48 ^ 0x3271)) ^ a7));
  STACK[0x4D8] = STACK[0x870];
  STACK[0x4D0] = STACK[0x820];
  STACK[0x5A0] = STACK[0x910];
  STACK[0x598] = STACK[0x868];
  LODWORD(STACK[0x800]) = a6;
  LODWORD(STACK[0x4CC]) = STACK[0x838];
  LODWORD(STACK[0x5AC]) = STACK[0x930];
  LODWORD(STACK[0x5A8]) = STACK[0x878];
  LODWORD(STACK[0x7EC]) = a5;
  LODWORD(STACK[0x554]) = STACK[0x830];
  LODWORD(STACK[0x550]) = a2;
  LODWORD(STACK[0x594]) = a4;
  LODWORD(STACK[0x7E0]) = v45;
  LODWORD(STACK[0x650]) = a6;
  LODWORD(STACK[0x628]) = v44;
  LODWORD(STACK[0x624]) = v42;
  LODWORD(STACK[0x908]) = v44;
  LODWORD(STACK[0x720]) = v46;
  LODWORD(STACK[0x7FC]) = v46;
  LODWORD(STACK[0x978]) = 1;
  STACK[0x618] = a1;
  STACK[0x7F0] = STACK[0x510];
  v50 = STACK[0x4E8];
  LODWORD(STACK[0x790]) = STACK[0x648];
  LODWORD(STACK[0x7C8]) = 1;
  LODWORD(STACK[0x71C]) = 1;
  LODWORD(STACK[0x70C]) = 1;
  LODWORD(STACK[0x6F0]) = 1;
  LODWORD(STACK[0x6D8]) = 1;
  LODWORD(STACK[0x6C0]) = 1;
  LODWORD(STACK[0x6FC]) = 1;
  LODWORD(STACK[0x6E8]) = 1;
  LODWORD(STACK[0x6EC]) = 1;
  LODWORD(STACK[0x710]) = 1;
  LODWORD(STACK[0x700]) = 1;
  LODWORD(STACK[0x6C4]) = 1;
  LODWORD(STACK[0x6D0]) = 1;
  LODWORD(STACK[0x7B0]) = 1;
  LODWORD(STACK[0x6D4]) = 1;
  LODWORD(STACK[0x7BC]) = 1;
  LODWORD(STACK[0x7D4]) = 1;
  LODWORD(STACK[0x7C4]) = 1;
  LODWORD(STACK[0x7C0]) = 1;
  LODWORD(STACK[0x7D0]) = 1;
  LODWORD(STACK[0x7DC]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  LODWORD(STACK[0x760]) = 1;
  LODWORD(STACK[0x778]) = 1;
  LODWORD(STACK[0x704]) = 1;
  LODWORD(STACK[0x770]) = 1;
  LODWORD(STACK[0x718]) = 1;
  LODWORD(STACK[0x614]) = STACK[0x840];
  LODWORD(STACK[0x5E4]) = STACK[0x828];
  LODWORD(STACK[0x808]) = STACK[0x810];
  LODWORD(STACK[0x658]) = STACK[0x524];
  LODWORD(STACK[0x5E8]) = a3;
  LODWORD(STACK[0x610]) = STACK[0x84C];
  LODWORD(STACK[0x950]) = v48;
  STACK[0x8F8] = v50;
  STACK[0x698] = v43;
  LODWORD(STACK[0x66C]) = STACK[0x858];
  LODWORD(STACK[0x72C]) = a41;
  LODWORD(STACK[0x474]) = v41 + 5;
  return v49(v48);
}

uint64_t sub_2447FF7A8@<X0>(int a1@<W7>, int a2@<W8>)
{
  v8 = *(v7 + 8 * ((25 * (LODWORD(STACK[0x474]) != ((a2 - 86767342) & 0x52BE9F9 ^ 0x63A59839))) ^ a2));
  STACK[0x8F8] = STACK[0x478];
  STACK[0x698] = v3;
  LODWORD(STACK[0x650]) = a1;
  LODWORD(STACK[0x66C]) = STACK[0x858];
  LODWORD(STACK[0x628]) = v4;
  LODWORD(STACK[0x72C]) = v6;
  LODWORD(STACK[0x624]) = v2;
  LODWORD(STACK[0x908]) = v5;
  LODWORD(STACK[0x60C]) = v5;
  return v8((a2 - 1058));
}

uint64_t sub_2447FF84C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  *(a2 - 0x1DC6E026F0860055) = v2;
  LODWORD(STACK[0x60C]) += (v3 + 13946) ^ 0x5772;
  return (*(a1 + 8 * v3))();
}

uint64_t sub_2447FF8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unint64_t a29)
{
  LODWORD(STACK[0x978]) = v29;
  LODWORD(STACK[0x644]) = STACK[0x60C];
  return (*(STACK[0x940] + 8 * ((((((a29 < 0x10) | a24) ^ (19 * (v30 ^ 0x95))) & 1) * ((v30 + 5563) ^ 0x3E98)) ^ v30)))();
}

uint64_t sub_2447FFA50(double a1, double a2, double a3, int8x16_t a4, double a5, double a6, double a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, int8x16_t *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int8x16_t a61, int8x16_t a62, int8x16_t a63)
{
  v93 = v70 + (a13 + v76 - (v68 << v72));
  v197 = *(v93 + 96);
  v196 = *(v93 + 64);
  v195 = *(v93 + 32);
  v194 = *v93;
  v94 = vqtbl2q_s8(v196, *&STACK[0x200]);
  v95.i64[0] = 0xF1F1F1F1F1F1F1F1;
  v95.i64[1] = 0xF1F1F1F1F1F1F1F1;
  v96.i32[0] = vqtbl2q_s8(*v93, v83).u32[0];
  v94.i32[3] = vqtbl2q_s8(v197, a4).i32[3];
  v96.i32[1] = vqtbl2q_s8(v195, a8).i32[1];
  v97 = vqtbl2q_s8(v196, v85);
  v97.i32[3] = vqtbl2q_s8(v197, v84).i32[3];
  v98.i32[0] = vqtbl2q_s8(*v93, v87).u32[0];
  v99 = vqtbl2q_s8(v196, a67);
  v98.i32[1] = vqtbl2q_s8(v195, v86).i32[1];
  v99.i32[3] = vqtbl2q_s8(v197, v88).i32[3];
  v100.i32[0] = vqtbl2q_s8(*v93, a66).u32[0];
  v100.i32[1] = vqtbl2q_s8(v195, v90).i32[1];
  v101 = vqtbl2q_s8(v196, a64);
  v102.i32[0] = vqtbl2q_s8(*v93, a62).u32[0];
  v101.i32[3] = vqtbl2q_s8(v197, a65).i32[3];
  v102.i32[1] = vqtbl2q_s8(v195, a63).i32[1];
  v103 = vqtbl2q_s8(v196, a68);
  v96.i64[1] = v94.i64[1];
  v103.i32[3] = vqtbl2q_s8(v197, a61).i32[3];
  v94.i32[0] = vqtbl2q_s8(*v93, v91).u32[0];
  v98.i64[1] = v97.i64[1];
  v94.i32[1] = vqtbl2q_s8(v195, v89).i32[1];
  v104 = vqtbl2q_s8(v196, v77);
  v100.i64[1] = v99.i64[1];
  v104.i32[3] = vqtbl2q_s8(v197, v92).i32[3];
  v97.i32[0] = vqtbl2q_s8(*v93, v79).u32[0];
  v102.i64[1] = v101.i64[1];
  v97.i32[1] = vqtbl2q_s8(v195, v78).i32[1];
  v105 = vqtbl2q_s8(v196, v81);
  v94.i64[1] = v103.i64[1];
  v105.i32[3] = vqtbl2q_s8(v197, v80).i32[3];
  v97.i64[1] = v104.i64[1];
  v104.i32[0] = vqtbl2q_s8(*v93, a15[252]).u32[0];
  v104.i32[1] = vqtbl2q_s8(v195, v82).i32[1];
  v103.i64[0] = *(a16 + 688);
  v104.i64[1] = v105.i64[1];
  *v99.i8 = vqtbl1_s8(v197.val[1], *v103.i8);
  v99.i64[1] = v99.i64[0];
  v105.i64[0] = *(v73 + 696);
  *v197.val[1].i8 = vqtbl1_s8(v197.val[0], *v103.i8);
  *v197.val[0].i8 = vqtbl1_s8(v99, *v105.i8);
  v197.val[1].i64[1] = v197.val[1].i64[0];
  *v99.i8 = vqtbl1_s8(v196.val[1], *v103.i8);
  v99.i64[1] = v99.i64[0];
  v106.i64[0] = v197.val[0].u32[0];
  v106.i64[1] = v197.val[0].u32[1];
  v197.val[0] = v106;
  *v197.val[1].i8 = vqtbl1_s8(v197.val[1], *v105.i8);
  *v99.i8 = vqtbl1_s8(v99, *v105.i8);
  *v107.i8 = vqtbl1_s8(v195.val[1], *v103.i8);
  v107.i64[1] = v107.i64[0];
  v106.i64[0] = v197.val[1].u32[0];
  v106.i64[1] = v197.val[1].u32[1];
  v197.val[1] = v106;
  v106.i64[0] = v99.u32[0];
  v106.i64[1] = v99.u32[1];
  v108 = v106;
  *v107.i8 = vqtbl1_s8(v107, *v105.i8);
  *v196.val[0].i8 = vqtbl1_s8(v196.val[0], *v103.i8);
  v196.val[0].i64[1] = v196.val[0].i64[0];
  v106.i64[0] = v107.u32[0];
  v106.i64[1] = v107.u32[1];
  v109 = v106;
  *v196.val[0].i8 = vqtbl1_s8(v196.val[0], *v105.i8);
  *v195.val[0].i8 = vqtbl1_s8(v195.val[0], *v103.i8);
  v195.val[0].i64[1] = v195.val[0].i64[0];
  *v195.val[0].i8 = vqtbl1_s8(v195.val[0], *v105.i8);
  v106.i64[0] = v196.val[0].u32[0];
  v106.i64[1] = v196.val[0].u32[1];
  v195.val[1] = v106;
  v106.i64[0] = v195.val[0].u32[0];
  v106.i64[1] = v195.val[0].u32[1];
  v195.val[0] = v106;
  *v196.val[0].i8 = vqtbl1_s8(v194.val[1], *v103.i8);
  v196.val[0].i64[1] = v196.val[0].i64[0];
  *v196.val[0].i8 = vqtbl1_s8(v196.val[0], *v105.i8);
  v106.i64[0] = v196.val[0].u32[0];
  v106.i64[1] = v196.val[0].u32[1];
  v196.val[0] = v106;
  *v194.val[0].i8 = vqtbl1_s8(*v93, *v103.i8);
  v194.val[0].i64[1] = v194.val[0].i64[0];
  *v194.val[0].i8 = vqtbl1_s8(v194.val[0], *v105.i8);
  v106.i64[0] = v194.val[0].u32[0];
  v106.i64[1] = v194.val[0].u32[1];
  v194.val[1] = vrev64q_s8(veorq_s8(v104, v95));
  v194.val[1] = vextq_s8(v194.val[1], v194.val[1], 8uLL);
  v196.val[1] = vmovl_high_u8(v194.val[1]);
  v110 = vmovl_high_u16(v196.val[1]);
  v194.val[1] = vmovl_u8(*v194.val[1].i8);
  v196.val[1] = vmovl_u16(*v196.val[1].i8);
  v111 = vmovl_high_u16(v194.val[1]);
  v194.val[1] = vmovl_u16(*v194.val[1].i8);
  v112 = vshll_n_u32(*v194.val[1].i8, 8uLL);
  v113 = vshll_high_n_u32(v194.val[1], 8uLL);
  v194.val[0] = vorrq_s8(vshll_high_n_u32(v110, 8uLL), v106);
  v114 = vshll_n_u32(*v196.val[1].i8, 8uLL);
  v194.val[1] = vorrq_s8(vshll_n_u32(*v110.i8, 8uLL), v196.val[0]);
  v196.val[1] = vorrq_s8(vshll_high_n_u32(v196.val[1], 8uLL), v195.val[0]);
  v196.val[0] = vorrq_s8(vshll_high_n_u32(v111, 8uLL), v195.val[1]);
  v195.val[0] = vorrq_s8(v114, v109);
  v195.val[1] = vrev64q_s8(veorq_s8(v97, v95));
  v115 = vorrq_s8(vshll_n_u32(*v111.i8, 8uLL), v108);
  v195.val[1] = vextq_s8(v195.val[1], v195.val[1], 8uLL);
  v116 = vmovl_u8(*v195.val[1].i8);
  v117 = vmovl_u16(*v116.i8);
  v118 = vmovl_high_u16(v116);
  v119 = vmovl_high_u8(v195.val[1]);
  v195.val[1] = vorrq_s8(v113, v197.val[1]);
  v197.val[1] = vmovl_u16(*v119.i8);
  v120 = vmovl_high_u16(v119);
  v121 = veorq_s8(v94, v95);
  v122 = vorrq_s8(v112, v197.val[0]);
  v197.val[0] = vrev64q_s8(v121);
  v197.val[0] = vextq_s8(v197.val[0], v197.val[0], 8uLL);
  v123 = vmovl_high_u8(v197.val[0]);
  v124 = vmovl_high_u16(v123);
  v194.val[0] = vorrq_s8(v194.val[0], vorrq_s8(vshll_high_n_u32(v120, 0x10uLL), vshll_high_n_u32(v124, 0x18uLL)));
  v125 = vshll_n_u32(*v197.val[1].i8, 0x10uLL);
  v126 = vmovl_u16(*v123.i8);
  v197.val[0] = vmovl_u8(*v197.val[0].i8);
  v194.val[1] = vorrq_s8(v194.val[1], vorrq_s8(vshll_n_u32(*v120.i8, 0x10uLL), vshll_n_u32(*v124.i8, 0x18uLL)));
  v127 = vmovl_high_u16(v197.val[0]);
  v197.val[0] = vmovl_u16(*v197.val[0].i8);
  v197.val[1] = vorrq_s8(v196.val[1], vorrq_s8(vshll_high_n_u32(v197.val[1], 0x10uLL), vshll_high_n_u32(v126, 0x18uLL)));
  v128 = vshll_n_u32(*v197.val[0].i8, 0x18uLL);
  v129 = vshll_n_u32(*v126.i8, 0x18uLL);
  v130 = vorrq_s8(v196.val[0], vorrq_s8(vshll_high_n_u32(v118, 0x10uLL), vshll_high_n_u32(v127, 0x18uLL)));
  v196.val[1] = vorrq_s8(vshll_n_u32(*v118.i8, 0x10uLL), vshll_n_u32(*v127.i8, 0x18uLL));
  v197.val[0] = vorrq_s8(vshll_high_n_u32(v117, 0x10uLL), vshll_high_n_u32(v197.val[0], 0x18uLL));
  v131 = vorrq_s8(vshll_n_u32(*v117.i8, 0x10uLL), v128);
  v132 = vorrq_s8(v195.val[0], vorrq_s8(v125, v129));
  v133 = vrev64q_s8(veorq_s8(v102, v95));
  v134 = vextq_s8(v133, v133, 8uLL);
  v195.val[0] = vmovl_u8(*v134.i8);
  _Q24 = vmovl_u16(*v195.val[0].i8);
  _Q26 = vmovl_high_u16(v195.val[0]);
  v137 = vorrq_s8(v115, v196.val[1]);
  v138 = vmovl_high_u8(v134);
  v196.val[1] = vmovl_u16(*v138.i8);
  _Q3 = vmovl_high_u16(v138);
  __asm { SHLL2           V16.2D, V3.4S, #0x20 ; ' ' }

  v196.val[0] = vshll_n_s32(*_Q3.i8, 0x20uLL);
  v195.val[1] = vorrq_s8(v195.val[1], v197.val[0]);
  __asm
  {
    SHLL2           V29.2D, V19.4S, #0x20 ; ' '
    SHLL2           V27.2D, V26.4S, #0x20 ; ' '
  }

  v197.val[0] = vshll_n_s32(*_Q26.i8, 0x20uLL);
  __asm { SHLL2           V26.2D, V24.4S, #0x20 ; ' ' }

  v147 = vaddq_s64(vorrq_s8(v122, v131), vshll_n_s32(*_Q24.i8, 0x20uLL));
  v148 = vaddq_s64(v195.val[1], _Q26);
  v195.val[1] = vrev64q_s8(veorq_s8(v100, v95));
  v149 = vaddq_s64(v137, v197.val[0]);
  v195.val[1] = vextq_s8(v195.val[1], v195.val[1], 8uLL);
  v150 = vmovl_high_u8(v195.val[1]);
  v151 = vmovl_high_u16(v150);
  v106.i64[0] = v151.u32[2];
  v106.i64[1] = v151.u32[3];
  v152 = v106;
  v106.i64[0] = v151.u32[0];
  v106.i64[1] = v151.u32[1];
  v197.val[0] = v106;
  v153 = vaddq_s64(v132, vshll_n_s32(*v196.val[1].i8, 0x20uLL));
  v154 = vmovl_u16(*v150.i8);
  v106.i64[0] = v154.u32[2];
  v106.i64[1] = v154.u32[3];
  v196.val[1] = v106;
  v155 = vmovl_u8(*v195.val[1].i8);
  v156 = vmovl_high_u16(v155);
  v157 = vshlq_n_s64(v152, 0x28uLL);
  v195.val[1] = vaddq_s64(v130, _Q27);
  v158 = vrev64q_s8(veorq_s8(v98, v95));
  v159 = vextq_s8(v158, v158, 8uLL);
  v160 = vmovl_high_u8(v159);
  v161 = vmovl_high_u16(v160);
  v162 = vaddq_s64(v197.val[1], _Q29);
  v106.i64[0] = v161.u32[2];
  v106.i64[1] = v161.u32[3];
  v197.val[1] = vorrq_s8(v157, vshlq_n_s64(v106, 0x30uLL));
  v106.i64[0] = v156.u32[2];
  v106.i64[1] = v156.u32[3];
  v163 = v106;
  v106.i64[0] = v154.u32[0];
  v106.i64[1] = v154.u32[1];
  v164 = v106;
  v106.i64[0] = v156.u32[0];
  v106.i64[1] = v156.u32[1];
  v165 = v106;
  v166 = vmovl_u16(*v155.i8);
  v106.i64[0] = v161.u32[0];
  v106.i64[1] = v161.u32[1];
  v167 = v106;
  v168 = vmovl_u16(*v160.i8);
  v194.val[1] = vaddq_s64(v194.val[1], v196.val[0]);
  v106.i64[0] = v168.u32[2];
  v106.i64[1] = v168.u32[3];
  v169 = vmovl_u8(*v159.i8);
  v197.val[0] = vorrq_s8(vshlq_n_s64(v197.val[0], 0x28uLL), vshlq_n_s64(v167, 0x30uLL));
  v170 = vmovl_high_u16(v169);
  v196.val[0] = vorrq_s8(vshlq_n_s64(v196.val[1], 0x28uLL), vshlq_n_s64(v106, 0x30uLL));
  v106.i64[0] = v170.u32[2];
  v106.i64[1] = v170.u32[3];
  v196.val[1] = vorrq_s8(vshlq_n_s64(v163, 0x28uLL), vshlq_n_s64(v106, 0x30uLL));
  v106.i64[0] = v166.u32[2];
  v106.i64[1] = v166.u32[3];
  v171 = v106;
  v106.i64[0] = v166.u32[0];
  v106.i64[1] = v166.u32[1];
  v172 = vshlq_n_s64(v106, 0x28uLL);
  v106.i64[0] = v168.u32[0];
  v106.i64[1] = v168.u32[1];
  v173 = v106;
  v106.i64[0] = v170.u32[0];
  v106.i64[1] = v170.u32[1];
  v174 = v106;
  v175 = vmovl_u16(*v169.i8);
  v176 = vorrq_s8(vshlq_n_s64(v164, 0x28uLL), vshlq_n_s64(v173, 0x30uLL));
  v106.i64[0] = v175.u32[2];
  v106.i64[1] = v175.u32[3];
  v177 = v106;
  v106.i64[0] = v175.u32[0];
  v106.i64[1] = v175.u32[1];
  v178 = v106;
  v179 = vrev64q_s8(veorq_s8(v96, v95));
  v180 = vextq_s8(v179, v179, 8uLL);
  v194.val[0] = vaddq_s64(v194.val[0], v195.val[0]);
  v195.val[0] = vmovl_u8(*v180.i8);
  v181 = vorrq_s8(vshlq_n_s64(v165, 0x28uLL), vshlq_n_s64(v174, 0x30uLL));
  v182 = vmovl_high_u16(v195.val[0]);
  v106.i64[0] = v182.u32[0];
  v106.i64[1] = v182.u32[1];
  v183 = vmovl_high_u8(v180);
  v184 = vorrq_s8(v172, vshlq_n_s64(v178, 0x30uLL));
  v185 = vmovl_u16(*v183.i8);
  v186 = vorrq_s8(v181, vshlq_n_s64(v106, 0x38uLL));
  v106.i64[0] = v185.u32[0];
  v106.i64[1] = v185.u32[1];
  v187 = vorrq_s8(v176, vshlq_n_s64(v106, 0x38uLL));
  v106.i64[0] = v182.u32[2];
  v106.i64[1] = v182.u32[3];
  v196.val[1] = vorrq_s8(v196.val[1], vshlq_n_s64(v106, 0x38uLL));
  v106.i64[0] = v185.u32[2];
  v106.i64[1] = v185.u32[3];
  v188 = vmovl_high_u16(v183);
  v196.val[0] = vorrq_s8(v196.val[0], vshlq_n_s64(v106, 0x38uLL));
  v106.i64[0] = v188.u32[0];
  v106.i64[1] = v188.u32[1];
  v197.val[0] = vorrq_s8(v197.val[0], vshlq_n_s64(v106, 0x38uLL));
  v106.i64[0] = v188.u32[2];
  v106.i64[1] = v188.u32[3];
  v189 = veorq_s8(v196.val[0], v162);
  v196.val[0] = vdupq_n_s64(v74);
  v190 = (v71 + 8 * v68);
  v190[6] = veorq_s8(veorq_s8(v197.val[0], v194.val[1]), v196.val[0]);
  v190[7] = veorq_s8(veorq_s8(vorrq_s8(v197.val[1], vshlq_n_s64(v106, 0x38uLL)), v194.val[0]), v196.val[0]);
  v190[4] = veorq_s8(veorq_s8(v187, v153), v196.val[0]);
  v190[5] = veorq_s8(v189, v196.val[0]);
  v190[2] = veorq_s8(veorq_s8(v186, v149), v196.val[0]);
  v190[3] = veorq_s8(veorq_s8(v196.val[1], v195.val[1]), v196.val[0]);
  v191 = vmovl_u16(*v195.val[0].i8);
  v106.i64[0] = v191.u32[0];
  v106.i64[1] = v191.u32[1];
  v192 = vorrq_s8(v184, vshlq_n_s64(v106, 0x38uLL));
  v106.i64[0] = v191.u32[2];
  v106.i64[1] = v191.u32[3];
  *v190 = veorq_s8(veorq_s8(v192, v147), v196.val[0]);
  v190[1] = veorq_s8(veorq_s8(vorrq_s8(vorrq_s8(vshlq_n_s64(v171, 0x28uLL), vshlq_n_s64(v177, 0x30uLL)), vshlq_n_s64(v106, 0x38uLL)), v148), v196.val[0]);
  return (*(a11 + 8 * ((126 * (v68 + 16 == a12)) ^ v69)))((v69 + v75));
}

uint64_t sub_24480024C@<X0>(unsigned int a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *(a3 - 0x1DC6E026F0860055) = v4 ^ ((*(v3 + (v5 - 7)) ^ 0xFFFFFFF1) << 56);
  ++LODWORD(STACK[0x60C]);
  return (*(a2 + 8 * ((15 * (((v6 + v8) ^ v9) + v7 >= a1)) ^ v6)))();
}

uint64_t sub_2448002B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v12 = *(a2 + 8 * (v7 - 4217));
  LODWORD(STACK[0x830]) = 2046963331;
  LODWORD(STACK[0x850]) = v11;
  STACK[0x548] = STACK[0x750];
  STACK[0x540] = STACK[0x800];
  STACK[0x570] = STACK[0x748];
  STACK[0x538] = STACK[0x740];
  STACK[0x910] = v9;
  STACK[0x868] = v10;
  LODWORD(STACK[0x5F4]) = STACK[0x7F0];
  LODWORD(STACK[0x608]) = STACK[0x978];
  LODWORD(STACK[0x60C]) = STACK[0x720];
  LODWORD(STACK[0x888]) = STACK[0x7AC];
  LODWORD(STACK[0x55C]) = STACK[0x7EC];
  LODWORD(STACK[0x930]) = a7;
  LODWORD(STACK[0x878]) = v8;
  LODWORD(STACK[0x56C]) = STACK[0x730];
  LODWORD(STACK[0x898]) = STACK[0x758];
  LODWORD(STACK[0x64C]) = STACK[0x654];
  LODWORD(STACK[0x828]) = STACK[0x5E4];
  LODWORD(STACK[0x600]) = STACK[0x7FC];
  LODWORD(STACK[0x2A0]) = STACK[0x5C4];
  LODWORD(STACK[0x404]) = STACK[0x658];
  LODWORD(STACK[0x534]) = STACK[0x734];
  LODWORD(STACK[0x564]) = STACK[0x7E0];
  LODWORD(STACK[0x890]) = STACK[0x7A8];
  LODWORD(STACK[0x948]) = STACK[0x594];
  LODWORD(STACK[0x644]) = STACK[0x960];
  LODWORD(STACK[0x8A0]) = STACK[0x7A4];
  LODWORD(STACK[0x8B0]) = STACK[0x7A0];
  LODWORD(STACK[0x8A8]) = STACK[0x79C];
  LODWORD(STACK[0x568]) = STACK[0x738];
  return v12();
}

uint64_t sub_2448003D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  STACK[0x7D8] = 0;
  LODWORD(STACK[0x808]) = 0;
  LODWORD(STACK[0x950]) = v27 + 9208;
  v28 = 0x482E983826A0B468 - v26;
  v29 = *(a2 + 8 * (v27 + 6733));
  LODWORD(STACK[0x958]) = 1;
  v33 = STACK[0x5D0];
  STACK[0x670] = STACK[0x8B8];
  STACK[0x910] = STACK[0x5A0];
  STACK[0x868] = STACK[0x598];
  LODWORD(STACK[0x60C]) = STACK[0x720];
  HIDWORD(a17) = STACK[0x5D8];
  LODWORD(STACK[0x930]) = STACK[0x5AC];
  LODWORD(STACK[0x878]) = STACK[0x5A8];
  v30 = STACK[0x550];
  LODWORD(STACK[0x67C]) = STACK[0x550];
  LODWORD(STACK[0x828]) = STACK[0x5E4];
  LODWORD(STACK[0x830]) = STACK[0x554];
  LODWORD(STACK[0x2A0]) = STACK[0x5C4];
  LODWORD(STACK[0x404]) = STACK[0x658];
  LODWORD(STACK[0x850]) = v30;
  LODWORD(STACK[0x948]) = STACK[0x594];
  v31 = LODWORD(STACK[0x810]);
  LODWORD(STACK[0x694]) = v31;
  LODWORD(STACK[0x7D4]) = 1;
  return v29(a1, a2, LODWORD(STACK[0x978]), a4, a5, a6, v31, a8, a9, a10, a11, a12, a13, v28, a12, v33, a17, v28, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_244800514@<X0>(uint64_t a1@<X1>, int a2@<W6>, int a3@<W8>)
{
  v10 = 366 * (a3 ^ 0x287C);
  LODWORD(STACK[0x950]) = v10;
  v11 = *(a1 + 8 * ((5975 * (v4 == v10 + 838912972)) ^ a3));
  LODWORD(STACK[0x4C8]) = v3 + 1;
  LODWORD(STACK[0x830]) = 2046963329;
  LODWORD(STACK[0x958]) = 1;
  LODWORD(STACK[0x738]) = 73;
  STACK[0x750] = STACK[0x510];
  v12 = STACK[0x500];
  STACK[0x800] = STACK[0x500];
  STACK[0x748] = STACK[0x408];
  STACK[0x740] = v12;
  STACK[0x910] = v6;
  STACK[0x868] = v7;
  v13 = STACK[0x7FC];
  LODWORD(STACK[0x60C]) = v8;
  LODWORD(STACK[0x930]) = a2;
  LODWORD(STACK[0x878]) = v5;
  LODWORD(STACK[0x730]) = STACK[0x5EC];
  LODWORD(STACK[0x828]) = v9;
  LODWORD(STACK[0x2A0]) = STACK[0x5C4];
  LODWORD(STACK[0x404]) = STACK[0x658];
  LODWORD(STACK[0x850]) = v8;
  LODWORD(STACK[0x734]) = v13;
  LODWORD(STACK[0x948]) = STACK[0x594];
  LODWORD(STACK[0x7D4]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  LODWORD(STACK[0x808]) = 1;
  LODWORD(STACK[0x7DC]) = 1;
  return v11();
}

uint64_t sub_244800624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, int a6@<W8>)
{
  v6 = a6 ^ 0x1A55;
  LODWORD(STACK[0x950]) = v6;
  v7 = *(STACK[0x940] + 8 * (v6 - 3882));
  LODWORD(STACK[0x958]) = 1;
  LODWORD(STACK[0x738]) = 72;
  STACK[0x750] = STACK[0x510];
  v8 = STACK[0x4E8];
  STACK[0x800] = STACK[0x4E8];
  STACK[0x748] = STACK[0x408];
  STACK[0x740] = v8;
  STACK[0x910] = STACK[0x5A0];
  STACK[0x868] = STACK[0x598];
  v9 = LODWORD(STACK[0x720]);
  LODWORD(STACK[0x60C]) = v9;
  LODWORD(STACK[0x930]) = STACK[0x5AC];
  LODWORD(STACK[0x878]) = STACK[0x5A8];
  LODWORD(STACK[0x730]) = STACK[0x5EC];
  LODWORD(STACK[0x828]) = STACK[0x5E4];
  LODWORD(STACK[0x4C8]) = 838925782;
  LODWORD(STACK[0x2A0]) = STACK[0x5C4];
  LODWORD(STACK[0x404]) = STACK[0x658];
  LODWORD(STACK[0x850]) = STACK[0x550];
  LODWORD(STACK[0x734]) = v9;
  LODWORD(STACK[0x948]) = STACK[0x594];
  LODWORD(STACK[0x7D4]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  LODWORD(STACK[0x808]) = 1;
  LODWORD(STACK[0x7DC]) = 1;
  return v7(a1, a2, v9, a3, a4, a5, v9);
}

uint64_t sub_244800788@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, int a6@<W8>)
{
  v12 = a6 + 7502;
  v13 = *(v11 + 8 * ((25164 * (LODWORD(STACK[0x474]) == (((v12 - 634) | 0x200) ^ 0x63A58317))) ^ v12));
  v14 = STACK[0x478];
  STACK[0x8F8] = STACK[0x478];
  STACK[0x698] = v7;
  LODWORD(STACK[0x650]) = v10;
  LODWORD(STACK[0x66C]) = STACK[0x858];
  LODWORD(STACK[0x628]) = v8;
  LODWORD(STACK[0x72C]) = v9;
  LODWORD(STACK[0x624]) = v6;
  LODWORD(STACK[0x908]) = v9;
  return v13((v12 - 122), v14, a1, a2, a3, a4, a5, v14);
}

uint64_t sub_244800808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(STACK[0x940] + 8 * (v7 + 7216));
  v9 = STACK[0x4E8];
  STACK[0x8F8] = STACK[0x4E8];
  STACK[0x698] = STACK[0x5B0];
  LODWORD(STACK[0x650]) = STACK[0x5F0];
  LODWORD(STACK[0x66C]) = STACK[0x858];
  v10 = STACK[0x60C];
  LODWORD(STACK[0x628]) = STACK[0x60C];
  LODWORD(STACK[0x72C]) = v10;
  LODWORD(STACK[0x624]) = STACK[0x64C];
  v11 = LODWORD(STACK[0x57C]);
  LODWORD(STACK[0x908]) = v10;
  return v8(v7, v9, a3, a4, a5, v11, a7, v9);
}

uint64_t sub_2448008B4(unint64_t a1, int a2, int a3, uint64_t a4, int a5, int a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x778]) = 0;
  LODWORD(STACK[0x708]) = 0;
  LODWORD(STACK[0x784]) = 0;
  LODWORD(STACK[0x6BC]) = 0;
  STACK[0x788] = 0;
  LODWORD(STACK[0x714]) = 0;
  LODWORD(STACK[0x768]) = 0;
  v16 = (v8 + 1231824757) & 0xB693FE5B;
  v17 = 610 * (v16 ^ 0x321F);
  v18 = LODWORD(STACK[0x474]) == v9 + 8;
  LODWORD(STACK[0x950]) = v17;
  v19 = *(v15 + 8 * (((v17 - 12687) * v18) ^ v8));
  STACK[0x4D8] = STACK[0x870];
  STACK[0x4D0] = STACK[0x820];
  STACK[0x5A0] = STACK[0x910];
  STACK[0x598] = STACK[0x868];
  LODWORD(STACK[0x800]) = a8;
  LODWORD(STACK[0x720]) = v14;
  LODWORD(STACK[0x4CC]) = STACK[0x838];
  LODWORD(STACK[0x5AC]) = STACK[0x930];
  LODWORD(STACK[0x5A8]) = STACK[0x878];
  LODWORD(STACK[0x474]) = v9 + 8;
  LODWORD(STACK[0x554]) = STACK[0x830];
  LODWORD(STACK[0x550]) = a2;
  LODWORD(STACK[0x594]) = a5;
  LODWORD(STACK[0x650]) = v14;
  LODWORD(STACK[0x628]) = v12;
  LODWORD(STACK[0x624]) = v10;
  LODWORD(STACK[0x7EC]) = a6;
  LODWORD(STACK[0x7FC]) = v13;
  LODWORD(STACK[0x7E0]) = v13;
  LODWORD(STACK[0x72C]) = v13;
  LODWORD(STACK[0x908]) = v13;
  LODWORD(STACK[0x978]) = 1;
  STACK[0x618] = a1;
  v20 = STACK[0x478];
  STACK[0x7F0] = STACK[0x478];
  LODWORD(STACK[0x790]) = STACK[0x648];
  LODWORD(STACK[0x7C8]) = 1;
  LODWORD(STACK[0x71C]) = 1;
  LODWORD(STACK[0x70C]) = 1;
  LODWORD(STACK[0x6F0]) = 1;
  LODWORD(STACK[0x6D8]) = 1;
  LODWORD(STACK[0x6C0]) = 1;
  LODWORD(STACK[0x6FC]) = 1;
  LODWORD(STACK[0x6E8]) = 1;
  LODWORD(STACK[0x6EC]) = 1;
  LODWORD(STACK[0x710]) = 1;
  LODWORD(STACK[0x700]) = 1;
  LODWORD(STACK[0x6C4]) = 1;
  LODWORD(STACK[0x6D0]) = 1;
  LODWORD(STACK[0x7B0]) = 1;
  LODWORD(STACK[0x6D4]) = 1;
  LODWORD(STACK[0x7BC]) = 1;
  LODWORD(STACK[0x7D4]) = 1;
  LODWORD(STACK[0x7C4]) = 1;
  LODWORD(STACK[0x7C0]) = 1;
  LODWORD(STACK[0x7D0]) = 1;
  LODWORD(STACK[0x7DC]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  LODWORD(STACK[0x760]) = 1;
  LODWORD(STACK[0x704]) = 1;
  LODWORD(STACK[0x770]) = 1;
  LODWORD(STACK[0x718]) = 1;
  LODWORD(STACK[0x614]) = STACK[0x840];
  LODWORD(STACK[0x5E4]) = STACK[0x828];
  LODWORD(STACK[0x808]) = STACK[0x810];
  LODWORD(STACK[0x658]) = STACK[0x524];
  LODWORD(STACK[0x5E8]) = a3;
  LODWORD(STACK[0x610]) = STACK[0x84C];
  STACK[0x8F8] = v20;
  STACK[0x698] = v11;
  LODWORD(STACK[0x66C]) = STACK[0x858];
  return v19(v16);
}

uint64_t sub_244800A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v14 = *(v13 + 8 * (((LODWORD(STACK[0x474]) != ((v8 + 4700) ^ 0x63A5830F)) * v9) ^ v8));
  STACK[0x8F8] = STACK[0x4E8];
  STACK[0x698] = v11;
  LODWORD(STACK[0x650]) = a8;
  LODWORD(STACK[0x66C]) = STACK[0x858];
  LODWORD(STACK[0x628]) = v12;
  LODWORD(STACK[0x72C]) = v12;
  LODWORD(STACK[0x624]) = v10;
  LODWORD(STACK[0x908]) = v12;
  return v14();
}

uint64_t sub_244800B04()
{
  v2 = *(STACK[0x940] + 8 * (4270 * (v0 ^ 0x1FAD) - 5549));
  STACK[0x8F8] = STACK[0x478];
  STACK[0x698] = STACK[0x5B0];
  LODWORD(STACK[0x650]) = v1;
  LODWORD(STACK[0x66C]) = STACK[0x858];
  LODWORD(STACK[0x628]) = STACK[0x60C];
  v3 = STACK[0x644];
  LODWORD(STACK[0x72C]) = STACK[0x644];
  LODWORD(STACK[0x624]) = STACK[0x64C];
  LODWORD(STACK[0x908]) = v3;
  return v2();
}

uint64_t sub_244800B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  LODWORD(STACK[0x900]) = 0;
  LODWORD(STACK[0x908]) = 0;
  LODWORD(STACK[0x8E0]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  LODWORD(STACK[0x8C0]) = 0;
  LODWORD(STACK[0x8D8]) = 0;
  v43 = 21 * (v41 ^ 0x1391);
  v44 = LODWORD(STACK[0x8A0]) != 211632980;
  LODWORD(STACK[0x950]) = v43;
  v45 = *(STACK[0x940] + 8 * (((v43 + 874 * (v41 ^ 0x11F6) - 16186) * v44) ^ v41));
  STACK[0x618] = STACK[0x860];
  HIDWORD(a37) = v42;
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x614]) = STACK[0x840];
  HIDWORD(a41) = 130989216;
  LODWORD(STACK[0x600]) = 130989216;
  LODWORD(STACK[0x610]) = STACK[0x84C];
  return v45(a1, a2, a3, a4, a5, a33, 130989217, 1, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41);
}

uint64_t sub_244800C88(uint64_t a1, uint64_t a2)
{
  v5 = v2 < 0x9F8E0;
  if (v5 == (v4 - 2009108599) < 0x9F8E0)
  {
    v5 = v4 - 2009108599 < v2;
  }

  return (*(a2 + 8 * ((29 * !v5) ^ v3)))();
}

uint64_t sub_244800DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  LODWORD(STACK[0x7D4]) = 0;
  STACK[0x7D8] = 0;
  LODWORD(STACK[0x808]) = 0;
  v40 = (v32 - 185259947) & 0xB0AF77B;
  LODWORD(STACK[0x950]) = v40;
  v41 = *(a2 + 8 * (((v34 != v33 + ((v32 + 1349852527) & 0xAF8ADFFF) - 4006) * (v40 ^ 0x3273)) ^ (v32 + 17539)));
  LODWORD(STACK[0x4C8]) = v33 + 2;
  LODWORD(STACK[0x830]) = 2046963329;
  LODWORD(STACK[0x958]) = 1;
  v42 = STACK[0x500];
  STACK[0x430] = STACK[0x408];
  STACK[0x3B0] = v42;
  STACK[0x910] = v36;
  STACK[0x868] = v37;
  LODWORD(STACK[0x60C]) = STACK[0x720];
  LODWORD(STACK[0x930]) = a7;
  LODWORD(STACK[0x3BC]) = v38;
  LODWORD(STACK[0x878]) = v35;
  v43 = LODWORD(STACK[0x5EC]);
  LODWORD(STACK[0x828]) = v39;
  LODWORD(STACK[0x2A0]) = STACK[0x5C4];
  LODWORD(STACK[0x404]) = STACK[0x658];
  LODWORD(STACK[0x948]) = STACK[0x594];
  LODWORD(STACK[0x43C]) = v43;
  LODWORD(STACK[0x7FC]) = v38;
  LODWORD(STACK[0x850]) = v38;
  LODWORD(STACK[0x604]) = v43;
  return v41(0, a2, a3, a4, 0, a6, v43, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_244800F20@<X0>(unint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W5>, int a5@<W7>, int a6@<W8>)
{
  LODWORD(STACK[0x7DC]) = 0;
  LODWORD(STACK[0x760]) = 0;
  LODWORD(STACK[0x778]) = 0;
  LODWORD(STACK[0x704]) = 0;
  LODWORD(STACK[0x770]) = 0;
  LODWORD(STACK[0x708]) = 0;
  LODWORD(STACK[0x784]) = 0;
  LODWORD(STACK[0x6BC]) = 0;
  STACK[0x788] = 0;
  LODWORD(STACK[0x714]) = 0;
  LODWORD(STACK[0x768]) = 0;
  v15 = (a6 + 3063) | 0x30;
  v16 = (v15 + 5063) | 0x120Au;
  v17 = *(v14 + 8 * (((((LODWORD(STACK[0x474]) == v16 + 1671790340) ^ (v15 - 48)) & 1) * v6) ^ v15));
  LODWORD(STACK[0x950]) = (v15 + 9167) | 0x202;
  STACK[0x4D8] = STACK[0x870];
  STACK[0x4D0] = STACK[0x820];
  STACK[0x5A0] = STACK[0x910];
  STACK[0x598] = STACK[0x868];
  LODWORD(STACK[0x4CC]) = STACK[0x838];
  LODWORD(STACK[0x5AC]) = STACK[0x930];
  LODWORD(STACK[0x5A8]) = STACK[0x878];
  LODWORD(STACK[0x554]) = STACK[0x830];
  LODWORD(STACK[0x550]) = a2;
  LODWORD(STACK[0x594]) = a3;
  LODWORD(STACK[0x7FC]) = v12;
  LODWORD(STACK[0x7E0]) = v12;
  LODWORD(STACK[0x800]) = a5;
  LODWORD(STACK[0x650]) = a5;
  LODWORD(STACK[0x624]) = v9;
  LODWORD(STACK[0x7EC]) = a4;
  LODWORD(STACK[0x628]) = v11;
  LODWORD(STACK[0x72C]) = v11;
  LODWORD(STACK[0x908]) = v11;
  LODWORD(STACK[0x720]) = v13;
  LODWORD(STACK[0x7C8]) = 1;
  STACK[0x618] = a1;
  STACK[0x7F0] = STACK[0x478];
  LODWORD(STACK[0x790]) = STACK[0x648];
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x71C]) = 1;
  LODWORD(STACK[0x70C]) = 1;
  LODWORD(STACK[0x6F0]) = 1;
  LODWORD(STACK[0x6D8]) = 1;
  LODWORD(STACK[0x6C0]) = 1;
  LODWORD(STACK[0x6FC]) = 1;
  LODWORD(STACK[0x6E8]) = 1;
  LODWORD(STACK[0x6EC]) = 1;
  LODWORD(STACK[0x710]) = 1;
  LODWORD(STACK[0x700]) = 1;
  LODWORD(STACK[0x6C4]) = 1;
  LODWORD(STACK[0x6D0]) = 1;
  LODWORD(STACK[0x7B0]) = 1;
  LODWORD(STACK[0x6D4]) = 1;
  LODWORD(STACK[0x7BC]) = 1;
  LODWORD(STACK[0x7D4]) = 1;
  LODWORD(STACK[0x7C4]) = 1;
  LODWORD(STACK[0x7C0]) = 1;
  LODWORD(STACK[0x7D0]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  LODWORD(STACK[0x718]) = 1;
  LODWORD(STACK[0x614]) = STACK[0x840];
  LODWORD(STACK[0x5E4]) = STACK[0x828];
  LODWORD(STACK[0x808]) = STACK[0x810];
  LODWORD(STACK[0x658]) = STACK[0x524];
  LODWORD(STACK[0x5E8]) = v7;
  LODWORD(STACK[0x610]) = STACK[0x84C];
  STACK[0x8F8] = STACK[0x4E8];
  STACK[0x698] = v10;
  LODWORD(STACK[0x66C]) = STACK[0x858];
  LODWORD(STACK[0x474]) = v8 + 17;
  return v17(v16);
}

uint64_t sub_244801158@<X0>(unint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W5>, int a5@<W7>, int a6@<W8>)
{
  LODWORD(STACK[0x7C8]) = 0;
  STACK[0x7D0] = 0;
  STACK[0x7C0] = 0;
  STACK[0x7D8] = 0;
  LODWORD(STACK[0x760]) = 0;
  LODWORD(STACK[0x778]) = 0;
  LODWORD(STACK[0x704]) = 0;
  LODWORD(STACK[0x770]) = 0;
  LODWORD(STACK[0x708]) = 0;
  LODWORD(STACK[0x784]) = 0;
  LODWORD(STACK[0x6BC]) = 0;
  STACK[0x788] = 0;
  LODWORD(STACK[0x714]) = 0;
  LODWORD(STACK[0x768]) = 0;
  v15 = 305 * (a6 ^ 0xC13);
  v16 = LODWORD(STACK[0x474]) == ((a6 - 405805194) & 0x18303E5A ^ 0x63A58313);
  LODWORD(STACK[0x950]) = v15;
  LODWORD(STACK[0x71C]) = 1;
  v17 = *(v14 + 8 * (((((v15 ^ v16) & 1) == 0) * v6) ^ a6));
  STACK[0x4D8] = STACK[0x870];
  STACK[0x4D0] = STACK[0x820];
  STACK[0x5A0] = STACK[0x910];
  STACK[0x598] = STACK[0x868];
  LODWORD(STACK[0x4CC]) = STACK[0x838];
  LODWORD(STACK[0x800]) = a5;
  LODWORD(STACK[0x5AC]) = STACK[0x930];
  LODWORD(STACK[0x5A8]) = STACK[0x878];
  LODWORD(STACK[0x554]) = STACK[0x830];
  LODWORD(STACK[0x550]) = a2;
  LODWORD(STACK[0x594]) = a3;
  LODWORD(STACK[0x720]) = v13;
  LODWORD(STACK[0x650]) = v13;
  LODWORD(STACK[0x628]) = v11;
  LODWORD(STACK[0x624]) = v9;
  LODWORD(STACK[0x7EC]) = a4;
  LODWORD(STACK[0x7FC]) = v12;
  LODWORD(STACK[0x7E0]) = v12;
  LODWORD(STACK[0x72C]) = v12;
  LODWORD(STACK[0x908]) = v12;
  LODWORD(STACK[0x474]) = v8 + 26;
  STACK[0x618] = a1;
  v18 = STACK[0x478];
  STACK[0x7F0] = STACK[0x478];
  LODWORD(STACK[0x790]) = STACK[0x648];
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x70C]) = 1;
  LODWORD(STACK[0x6F0]) = 1;
  LODWORD(STACK[0x6D8]) = 1;
  LODWORD(STACK[0x6C0]) = 1;
  LODWORD(STACK[0x6FC]) = 1;
  LODWORD(STACK[0x6E8]) = 1;
  LODWORD(STACK[0x6EC]) = 1;
  LODWORD(STACK[0x710]) = 1;
  LODWORD(STACK[0x700]) = 1;
  LODWORD(STACK[0x6C4]) = 1;
  LODWORD(STACK[0x6D0]) = 1;
  LODWORD(STACK[0x7B0]) = 1;
  LODWORD(STACK[0x6D4]) = 1;
  LODWORD(STACK[0x7BC]) = 1;
  LODWORD(STACK[0x718]) = 1;
  LODWORD(STACK[0x614]) = STACK[0x840];
  LODWORD(STACK[0x5E4]) = STACK[0x828];
  LODWORD(STACK[0x808]) = STACK[0x810];
  LODWORD(STACK[0x658]) = STACK[0x524];
  LODWORD(STACK[0x5E8]) = v7;
  LODWORD(STACK[0x610]) = STACK[0x84C];
  STACK[0x8F8] = v18;
  STACK[0x698] = v10;
  LODWORD(STACK[0x66C]) = STACK[0x858];
  return v17((a6 - 405805194) & 0x18303E5A);
}

uint64_t sub_244801344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v15 = *(v14 + 8 * (((((LODWORD(STACK[0x474]) == v10 + 12) ^ 0x7F2D3F9F) + 2 * (LODWORD(STACK[0x474]) == v10 + 12) != ((v8 + 891020129) & 0xCAE4324B ^ 0x7F2D0D95)) * v9) ^ v8));
  STACK[0x8F8] = STACK[0x4E8];
  STACK[0x698] = v12;
  LODWORD(STACK[0x650]) = a8;
  LODWORD(STACK[0x66C]) = STACK[0x858];
  LODWORD(STACK[0x628]) = v13;
  LODWORD(STACK[0x72C]) = v13;
  LODWORD(STACK[0x624]) = v11;
  LODWORD(STACK[0x908]) = v13;
  return v15();
}

uint64_t sub_2448013DC()
{
  v2 = *(STACK[0x940] + 8 * (v0 + 12765));
  STACK[0x8F8] = STACK[0x478];
  STACK[0x698] = STACK[0x5B0];
  LODWORD(STACK[0x650]) = v1;
  LODWORD(STACK[0x66C]) = STACK[0x858];
  LODWORD(STACK[0x628]) = STACK[0x60C];
  v3 = STACK[0x644];
  LODWORD(STACK[0x72C]) = STACK[0x644];
  LODWORD(STACK[0x624]) = STACK[0x64C];
  LODWORD(STACK[0x908]) = v3;
  return v2();
}

uint64_t sub_24480144C@<X0>(unint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W4>, int a5@<W5>, int a6@<W7>, int a7@<W8>)
{
  LODWORD(STACK[0x778]) = 0;
  LODWORD(STACK[0x704]) = 0;
  LODWORD(STACK[0x770]) = 0;
  LODWORD(STACK[0x708]) = 0;
  LODWORD(STACK[0x784]) = 0;
  LODWORD(STACK[0x6BC]) = 0;
  STACK[0x788] = 0;
  LODWORD(STACK[0x714]) = 0;
  LODWORD(STACK[0x768]) = 0;
  v14 = a7 - 4114;
  v15 = (v14 + 5549);
  v16 = *(v13 + 8 * (((v14 + 16887) * (LODWORD(STACK[0x474]) == v7 + 11)) ^ v14));
  STACK[0x4D8] = STACK[0x870];
  STACK[0x4D0] = STACK[0x820];
  STACK[0x5A0] = STACK[0x910];
  STACK[0x598] = STACK[0x868];
  LODWORD(STACK[0x4CC]) = STACK[0x838];
  LODWORD(STACK[0x5AC]) = STACK[0x930];
  LODWORD(STACK[0x5A8]) = STACK[0x878];
  LODWORD(STACK[0x554]) = STACK[0x830];
  LODWORD(STACK[0x7FC]) = v11;
  LODWORD(STACK[0x550]) = a2;
  LODWORD(STACK[0x594]) = a4;
  LODWORD(STACK[0x7E0]) = v11;
  LODWORD(STACK[0x800]) = a6;
  LODWORD(STACK[0x650]) = a6;
  LODWORD(STACK[0x624]) = v8;
  LODWORD(STACK[0x7EC]) = a5;
  LODWORD(STACK[0x628]) = v10;
  LODWORD(STACK[0x72C]) = v10;
  LODWORD(STACK[0x908]) = v10;
  LODWORD(STACK[0x720]) = v12;
  LODWORD(STACK[0x978]) = 1;
  STACK[0x618] = a1;
  STACK[0x7F0] = STACK[0x478];
  LODWORD(STACK[0x790]) = STACK[0x648];
  LODWORD(STACK[0x7C8]) = 1;
  LODWORD(STACK[0x71C]) = 1;
  LODWORD(STACK[0x70C]) = 1;
  LODWORD(STACK[0x6F0]) = 1;
  LODWORD(STACK[0x6D8]) = 1;
  LODWORD(STACK[0x6C0]) = 1;
  LODWORD(STACK[0x6FC]) = 1;
  LODWORD(STACK[0x6E8]) = 1;
  LODWORD(STACK[0x6EC]) = 1;
  LODWORD(STACK[0x710]) = 1;
  LODWORD(STACK[0x700]) = 1;
  LODWORD(STACK[0x6C4]) = 1;
  LODWORD(STACK[0x6D0]) = 1;
  LODWORD(STACK[0x7B0]) = 1;
  LODWORD(STACK[0x6D4]) = 1;
  LODWORD(STACK[0x7BC]) = 1;
  LODWORD(STACK[0x7D4]) = 1;
  LODWORD(STACK[0x7C4]) = 1;
  LODWORD(STACK[0x7C0]) = 1;
  LODWORD(STACK[0x7D0]) = 1;
  LODWORD(STACK[0x7DC]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  LODWORD(STACK[0x760]) = 1;
  LODWORD(STACK[0x718]) = 1;
  LODWORD(STACK[0x614]) = STACK[0x840];
  LODWORD(STACK[0x5E4]) = STACK[0x828];
  LODWORD(STACK[0x808]) = STACK[0x810];
  LODWORD(STACK[0x658]) = STACK[0x524];
  LODWORD(STACK[0x474]) = v7 + 11;
  LODWORD(STACK[0x5E8]) = a3;
  LODWORD(STACK[0x610]) = STACK[0x84C];
  LODWORD(STACK[0x950]) = v15;
  STACK[0x8F8] = STACK[0x4E8];
  STACK[0x698] = v9;
  LODWORD(STACK[0x66C]) = STACK[0x858];
  return v16(v15);
}

uint64_t sub_2448016E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  LODWORD(STACK[0x900]) = 0;
  LODWORD(STACK[0x908]) = 0;
  LODWORD(STACK[0x8E0]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  LODWORD(STACK[0x8C0]) = 0;
  LODWORD(STACK[0x8D8]) = 0;
  v39 = LODWORD(STACK[0x8A0]) == 211632980;
  v40 = (v37 - 1675) | 0x1008;
  LODWORD(STACK[0x950]) = v40;
  v41 = *(v38 + 8 * ((((v40 ^ 0xFFFFEFCB) + v37 - 1598) * v39) ^ v37));
  LODWORD(STACK[0x978]) = 1;
  STACK[0x618] = STACK[0x860];
  HIDWORD(a37) = STACK[0x960];
  LODWORD(STACK[0x614]) = STACK[0x840];
  LODWORD(STACK[0x600]) = 130989216;
  LODWORD(STACK[0x610]) = STACK[0x84C];
  return v41(a1, a2, a3, a4, a5, a33, 130989217, 1, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37);
}

uint64_t sub_2448017C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3 < 0x9F8E0;
  if (v6 == (v5 - 2009108599) < 0x9F8E0)
  {
    LOBYTE(v6) = v5 - 2009108599 < v3;
  }

  return (*(a3 + 8 * ((11 * ((v6 ^ (v4 + 66)) & 1)) ^ v4)))(LODWORD(STACK[0x960]));
}

uint64_t sub_2448018B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 - 0x1DC6E026F0860055) = v4;
  LODWORD(STACK[0x600]) += ((v5 + 8179) | 0x1185) ^ 0x53C6;
  return (*(a3 + 8 * v5))();
}

uint64_t sub_244801910(unint64_t a1, int a2, int a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x7D4]) = 0;
  STACK[0x7D8] = 0;
  LODWORD(STACK[0x760]) = 0;
  LODWORD(STACK[0x778]) = 0;
  LODWORD(STACK[0x704]) = 0;
  LODWORD(STACK[0x770]) = 0;
  LODWORD(STACK[0x708]) = 0;
  LODWORD(STACK[0x784]) = 0;
  LODWORD(STACK[0x6BC]) = 0;
  STACK[0x788] = 0;
  LODWORD(STACK[0x714]) = 0;
  LODWORD(STACK[0x768]) = 0;
  v17 = 2135 * (v8 ^ 0xC3Fu);
  v18 = 854 * (v8 ^ 0xC36);
  LODWORD(STACK[0x950]) = v18;
  v19 = *(v16 + 8 * (((a4 == (v17 ^ 0x321E)) * (v18 ^ 0x3271)) ^ v8));
  STACK[0x4D8] = STACK[0x870];
  STACK[0x4D0] = STACK[0x820];
  STACK[0x5A0] = STACK[0x910];
  STACK[0x598] = STACK[0x868];
  LODWORD(STACK[0x4CC]) = STACK[0x838];
  LODWORD(STACK[0x800]) = a8;
  LODWORD(STACK[0x5AC]) = STACK[0x930];
  LODWORD(STACK[0x5A8]) = STACK[0x878];
  LODWORD(STACK[0x554]) = STACK[0x830];
  LODWORD(STACK[0x550]) = a2;
  LODWORD(STACK[0x594]) = a3;
  LODWORD(STACK[0x720]) = v15;
  LODWORD(STACK[0x650]) = v15;
  LODWORD(STACK[0x628]) = v13;
  LODWORD(STACK[0x624]) = v11;
  LODWORD(STACK[0x7EC]) = a6;
  LODWORD(STACK[0x7FC]) = v14;
  LODWORD(STACK[0x7E0]) = v14;
  LODWORD(STACK[0x72C]) = v14;
  LODWORD(STACK[0x908]) = v14;
  LODWORD(STACK[0x474]) = v10 + 20;
  LODWORD(STACK[0x7C8]) = 1;
  STACK[0x618] = a1;
  v20 = STACK[0x478];
  STACK[0x7F0] = STACK[0x478];
  LODWORD(STACK[0x790]) = STACK[0x648];
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x71C]) = 1;
  LODWORD(STACK[0x70C]) = 1;
  LODWORD(STACK[0x6F0]) = 1;
  LODWORD(STACK[0x6D8]) = 1;
  LODWORD(STACK[0x6C0]) = 1;
  LODWORD(STACK[0x6FC]) = 1;
  LODWORD(STACK[0x6E8]) = 1;
  LODWORD(STACK[0x6EC]) = 1;
  LODWORD(STACK[0x710]) = 1;
  LODWORD(STACK[0x700]) = 1;
  LODWORD(STACK[0x6C4]) = 1;
  LODWORD(STACK[0x6D0]) = 1;
  LODWORD(STACK[0x7B0]) = 1;
  LODWORD(STACK[0x6D4]) = 1;
  LODWORD(STACK[0x7BC]) = 1;
  LODWORD(STACK[0x7C4]) = 1;
  LODWORD(STACK[0x7C0]) = 1;
  LODWORD(STACK[0x7D0]) = 1;
  LODWORD(STACK[0x718]) = 1;
  LODWORD(STACK[0x614]) = STACK[0x840];
  LODWORD(STACK[0x5E4]) = STACK[0x828];
  LODWORD(STACK[0x808]) = STACK[0x810];
  LODWORD(STACK[0x658]) = STACK[0x524];
  LODWORD(STACK[0x5E8]) = v9;
  LODWORD(STACK[0x610]) = STACK[0x84C];
  STACK[0x8F8] = v20;
  STACK[0x698] = v12;
  LODWORD(STACK[0x66C]) = STACK[0x858];
  return v19(v17);
}

uint64_t sub_244801AEC@<X0>(unint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W5>, int a5@<W7>, int a6@<W8>)
{
  LODWORD(STACK[0x7C8]) = 0;
  LODWORD(STACK[0x7B0]) = 0;
  LODWORD(STACK[0x7BC]) = 0;
  STACK[0x7D0] = 0;
  STACK[0x7C0] = 0;
  STACK[0x7D8] = 0;
  LODWORD(STACK[0x760]) = 0;
  LODWORD(STACK[0x778]) = 0;
  LODWORD(STACK[0x704]) = 0;
  LODWORD(STACK[0x770]) = 0;
  LODWORD(STACK[0x708]) = 0;
  LODWORD(STACK[0x784]) = 0;
  LODWORD(STACK[0x6BC]) = 0;
  STACK[0x788] = 0;
  LODWORD(STACK[0x714]) = 0;
  LODWORD(STACK[0x768]) = 0;
  v15 = a6 - 2301;
  v16 = LODWORD(STACK[0x474]) == v8 + 28;
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x950]) = v15 + 9681;
  v17 = *(v14 + 8 * ((((((v15 + 1489) ^ v16) & 1) == 0) * v6) ^ v15));
  STACK[0x4D8] = STACK[0x870];
  STACK[0x4D0] = STACK[0x820];
  STACK[0x5A0] = STACK[0x910];
  STACK[0x598] = STACK[0x868];
  LODWORD(STACK[0x4CC]) = STACK[0x838];
  LODWORD(STACK[0x5AC]) = STACK[0x930];
  LODWORD(STACK[0x5A8]) = STACK[0x878];
  LODWORD(STACK[0x554]) = STACK[0x830];
  LODWORD(STACK[0x550]) = a2;
  LODWORD(STACK[0x594]) = a3;
  LODWORD(STACK[0x7FC]) = v12;
  LODWORD(STACK[0x7E0]) = v12;
  LODWORD(STACK[0x800]) = a5;
  LODWORD(STACK[0x650]) = a5;
  LODWORD(STACK[0x624]) = v9;
  LODWORD(STACK[0x7EC]) = a4;
  LODWORD(STACK[0x628]) = v11;
  LODWORD(STACK[0x72C]) = v11;
  LODWORD(STACK[0x908]) = v11;
  LODWORD(STACK[0x720]) = v13;
  STACK[0x618] = a1;
  STACK[0x7F0] = STACK[0x478];
  LODWORD(STACK[0x790]) = STACK[0x648];
  LODWORD(STACK[0x71C]) = 1;
  LODWORD(STACK[0x70C]) = 1;
  LODWORD(STACK[0x6F0]) = 1;
  LODWORD(STACK[0x6D8]) = 1;
  LODWORD(STACK[0x6C0]) = 1;
  LODWORD(STACK[0x6FC]) = 1;
  LODWORD(STACK[0x6E8]) = 1;
  LODWORD(STACK[0x6EC]) = 1;
  LODWORD(STACK[0x710]) = 1;
  LODWORD(STACK[0x700]) = 1;
  LODWORD(STACK[0x6C4]) = 1;
  LODWORD(STACK[0x6D0]) = 1;
  LODWORD(STACK[0x6D4]) = 1;
  LODWORD(STACK[0x718]) = 1;
  LODWORD(STACK[0x614]) = STACK[0x840];
  LODWORD(STACK[0x5E4]) = STACK[0x828];
  LODWORD(STACK[0x808]) = STACK[0x810];
  LODWORD(STACK[0x658]) = STACK[0x524];
  LODWORD(STACK[0x5E8]) = v7;
  LODWORD(STACK[0x610]) = STACK[0x84C];
  STACK[0x8F8] = STACK[0x4E8];
  STACK[0x698] = v10;
  LODWORD(STACK[0x66C]) = STACK[0x858];
  LODWORD(STACK[0x474]) = v8 + 29;
  return v17((v15 + 1489) | 0x2000u);
}

uint64_t sub_244801CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = (v7 + 5549);
  v15 = *(v13 + 8 * (((LODWORD(STACK[0x474]) == ((v7 - 1132109199) & 0x437AB33B ^ 0x63A5831B)) * (v7 + 12759)) ^ v7));
  v16 = STACK[0x478];
  STACK[0x8F8] = STACK[0x478];
  STACK[0x698] = v9;
  LODWORD(STACK[0x650]) = v12;
  LODWORD(STACK[0x66C]) = STACK[0x858];
  LODWORD(STACK[0x628]) = v10;
  LODWORD(STACK[0x72C]) = v11;
  LODWORD(STACK[0x624]) = v8;
  LODWORD(STACK[0x908]) = v11;
  return v15(v14, v16, a3, a4, a5, a6, a7, v16);
}

uint64_t sub_244801D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(STACK[0x940] + 8 * (v7 - 9681));
  v9 = STACK[0x4E8];
  STACK[0x8F8] = STACK[0x4E8];
  STACK[0x698] = STACK[0x5B0];
  LODWORD(STACK[0x650]) = STACK[0x5F0];
  LODWORD(STACK[0x66C]) = STACK[0x858];
  v10 = STACK[0x60C];
  LODWORD(STACK[0x628]) = STACK[0x60C];
  LODWORD(STACK[0x72C]) = v10;
  LODWORD(STACK[0x624]) = STACK[0x64C];
  v11 = LODWORD(STACK[0x57C]);
  LODWORD(STACK[0x908]) = v10;
  return v8(v7, v9, a3, a4, a5, v11, a7, v9);
}

uint64_t sub_244801DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v14 = *(v13 + 8 * ((((v8 + 9681) ^ 0x26BC) * (LODWORD(STACK[0x474]) == v9 + 24)) ^ v8));
  STACK[0x8F8] = STACK[0x4E8];
  STACK[0x698] = v11;
  LODWORD(STACK[0x650]) = a8;
  LODWORD(STACK[0x66C]) = STACK[0x858];
  LODWORD(STACK[0x628]) = v12;
  LODWORD(STACK[0x72C]) = v12;
  LODWORD(STACK[0x624]) = v10;
  LODWORD(STACK[0x908]) = v12;
  return v14();
}

uint64_t sub_244801E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(STACK[0x940] + 8 * ((1915 * (v7 > 0xB2076AB8)) ^ (v7 + 96788039)));
  v10 = STACK[0x478];
  STACK[0x8F8] = STACK[0x478];
  STACK[0x698] = STACK[0x5B0];
  LODWORD(STACK[0x650]) = v8;
  LODWORD(STACK[0x66C]) = STACK[0x858];
  LODWORD(STACK[0x628]) = STACK[0x60C];
  v11 = STACK[0x644];
  LODWORD(STACK[0x72C]) = STACK[0x644];
  LODWORD(STACK[0x624]) = STACK[0x64C];
  v12 = LODWORD(STACK[0x57C]);
  LODWORD(STACK[0x908]) = v11;
  return v9(a1, v10, a3, a4, a5, v12, a7, v10);
}

uint64_t sub_244801EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  LODWORD(STACK[0x900]) = 0;
  LODWORD(STACK[0x908]) = 0;
  LODWORD(STACK[0x8E0]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  LODWORD(STACK[0x8C0]) = 0;
  LODWORD(STACK[0x8D8]) = 0;
  v39 = (v37 | 0x4C05090) ^ 0x64D2F49C;
  v40 = *(STACK[0x940] + 8 * ((92 * ((((v39 + 12806) ^ (((v38 - (v37 | 0x4C05090)) | ((v37 | 0x4C05090u) - v38)) >> 31)) & 1) == 0)) ^ (((919 * v39) ^ 0x9B2D3271) + (v37 | 0x4C05090))));
  LODWORD(STACK[0x950]) = v39 + 12805;
  STACK[0x618] = STACK[0x860];
  HIDWORD(a37) = a1;
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x614]) = STACK[0x840];
  LODWORD(STACK[0x610]) = STACK[0x84C];
  return v40(a1, a2, a3, a4, a5, a33, 130989217, 1, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37);
}

uint64_t sub_244801FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  LODWORD(STACK[0x900]) = 0;
  LODWORD(STACK[0x908]) = 0;
  LODWORD(STACK[0x8E0]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  LODWORD(STACK[0x8C0]) = 0;
  LODWORD(STACK[0x8D8]) = 0;
  v33 = a6 + 8215;
  *(v31 - 0x1DC6E026F0860055) = v32;
  v34 = LODWORD(STACK[0x600]) - 12809;
  v35 = *(STACK[0x940] + 8 * a6);
  LODWORD(STACK[0x950]) = v33;
  LODWORD(STACK[0x600]) = v34 + v33;
  STACK[0x618] = STACK[0x860];
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x614]) = STACK[0x840];
  LODWORD(STACK[0x610]) = STACK[0x84C];
  return v35(a1, a2, a3, a4, a5, a31);
}

uint64_t sub_244802108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = (v7 - 693656015) & 0x295832EF;
  v15 = *(v13 + 8 * ((430 * (((LODWORD(STACK[0x474]) == (v7 ^ 0x6AE3) + 1671790360) ^ (v7 + 50)) & 1)) ^ v7));
  v16 = STACK[0x478];
  STACK[0x8F8] = STACK[0x478];
  STACK[0x698] = v9;
  LODWORD(STACK[0x650]) = v12;
  LODWORD(STACK[0x66C]) = STACK[0x858];
  LODWORD(STACK[0x628]) = v10;
  LODWORD(STACK[0x72C]) = v11;
  LODWORD(STACK[0x624]) = v8;
  LODWORD(STACK[0x908]) = v11;
  return v15(v14, v16, a3, a4, a5, a6, a7, v16);
}

uint64_t sub_2448021A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(STACK[0x940] + 8 * (v7 - 7908));
  v9 = STACK[0x4E8];
  STACK[0x8F8] = STACK[0x4E8];
  STACK[0x698] = STACK[0x5B0];
  LODWORD(STACK[0x650]) = STACK[0x5F0];
  LODWORD(STACK[0x66C]) = STACK[0x858];
  v10 = STACK[0x60C];
  LODWORD(STACK[0x628]) = STACK[0x60C];
  LODWORD(STACK[0x72C]) = v10;
  LODWORD(STACK[0x624]) = STACK[0x64C];
  v11 = LODWORD(STACK[0x57C]);
  LODWORD(STACK[0x908]) = v10;
  return v8(v7, v9, a3, a4, a5, v11, a7, v9);
}

uint64_t sub_2448022B8@<X0>(unint64_t a1@<X0>, int a2@<W1>, int a3@<W5>, int a4@<W7>, unsigned int a5@<W8>)
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
  v12 = LODWORD(STACK[0x474]) != v8 + 52;
  LODWORD(STACK[0x950]) = (a5 - 689543710) & 0x2919BFEE;
  v13 = *(v11 + 8 * ((123 * v12) ^ a5));
  STACK[0x4D8] = STACK[0x870];
  STACK[0x4D0] = STACK[0x820];
  STACK[0x5A0] = STACK[0x910];
  STACK[0x598] = STACK[0x868];
  LODWORD(STACK[0x4CC]) = STACK[0x838];
  LODWORD(STACK[0x5AC]) = STACK[0x930];
  LODWORD(STACK[0x5A8]) = STACK[0x878];
  LODWORD(STACK[0x554]) = STACK[0x830];
  LODWORD(STACK[0x550]) = a2;
  LODWORD(STACK[0x594]) = STACK[0x948];
  LODWORD(STACK[0x7FC]) = v9;
  LODWORD(STACK[0x7E0]) = v9;
  LODWORD(STACK[0x800]) = a4;
  LODWORD(STACK[0x650]) = a4;
  LODWORD(STACK[0x624]) = v5;
  LODWORD(STACK[0x7EC]) = a3;
  LODWORD(STACK[0x628]) = v7;
  LODWORD(STACK[0x72C]) = v7;
  LODWORD(STACK[0x908]) = v7;
  LODWORD(STACK[0x720]) = v10;
  STACK[0x618] = a1;
  STACK[0x7F0] = STACK[0x478];
  LODWORD(STACK[0x790]) = STACK[0x648];
  LODWORD(STACK[0x614]) = STACK[0x840];
  LODWORD(STACK[0x5E4]) = STACK[0x828];
  LODWORD(STACK[0x808]) = STACK[0x810];
  LODWORD(STACK[0x658]) = STACK[0x524];
  LODWORD(STACK[0x5E8]) = STACK[0x81C];
  LODWORD(STACK[0x610]) = STACK[0x84C];
  STACK[0x8F8] = STACK[0x4E8];
  STACK[0x698] = v6;
  LODWORD(STACK[0x66C]) = STACK[0x858];
  LODWORD(STACK[0x474]) = v8 + 53;
  return v13(a5 + 9681);
}

uint64_t sub_244802528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v13 = *(v12 + 8 * (((LODWORD(STACK[0x474]) != ((v8 - 7218) | 2) + 1671790367) * (((v8 - 7224) | 8) - 12701)) ^ v8));
  STACK[0x8F8] = STACK[0x4E8];
  STACK[0x698] = v10;
  LODWORD(STACK[0x650]) = a8;
  LODWORD(STACK[0x66C]) = STACK[0x858];
  LODWORD(STACK[0x628]) = v11;
  LODWORD(STACK[0x72C]) = v11;
  LODWORD(STACK[0x624]) = v9;
  LODWORD(STACK[0x908]) = v11;
  return v13();
}

uint64_t sub_2448025B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(STACK[0x940] + 8 * (v7 - 9681));
  v10 = STACK[0x478];
  STACK[0x8F8] = STACK[0x478];
  STACK[0x698] = STACK[0x5B0];
  LODWORD(STACK[0x650]) = v8;
  LODWORD(STACK[0x66C]) = STACK[0x858];
  LODWORD(STACK[0x628]) = STACK[0x60C];
  v11 = STACK[0x644];
  LODWORD(STACK[0x72C]) = STACK[0x644];
  LODWORD(STACK[0x624]) = STACK[0x64C];
  v12 = LODWORD(STACK[0x57C]);
  LODWORD(STACK[0x908]) = v11;
  return v9(v7, v10, a3, a4, a5, v12, a7, v10);
}

uint64_t sub_24480266C@<X0>(unint64_t a1@<X0>, int a2@<W1>, int a3@<W5>, int a4@<W7>, int a5@<W8>)
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
  LODWORD(STACK[0x768]) = 0;
  v13 = (a5 + 909123585) & 0xC9CFF25A;
  LODWORD(STACK[0x950]) = v13;
  v14 = *(v12 + 8 * ((18601 * (LODWORD(STACK[0x474]) == (v13 ^ 0x63A5833A))) ^ a5));
  STACK[0x4D8] = STACK[0x870];
  STACK[0x4D0] = STACK[0x820];
  STACK[0x5A0] = STACK[0x910];
  STACK[0x598] = STACK[0x868];
  LODWORD(STACK[0x4CC]) = STACK[0x838];
  LODWORD(STACK[0x800]) = a4;
  LODWORD(STACK[0x5AC]) = STACK[0x930];
  LODWORD(STACK[0x5A8]) = STACK[0x878];
  LODWORD(STACK[0x554]) = STACK[0x830];
  LODWORD(STACK[0x550]) = a2;
  LODWORD(STACK[0x594]) = v5;
  LODWORD(STACK[0x720]) = v11;
  LODWORD(STACK[0x650]) = v11;
  LODWORD(STACK[0x628]) = v8;
  LODWORD(STACK[0x624]) = v6;
  LODWORD(STACK[0x7EC]) = a3;
  LODWORD(STACK[0x7FC]) = v10;
  LODWORD(STACK[0x7E0]) = v10;
  LODWORD(STACK[0x72C]) = v10;
  LODWORD(STACK[0x908]) = v10;
  LODWORD(STACK[0x474]) = v9 + 50;
  STACK[0x618] = a1;
  v15 = STACK[0x478];
  STACK[0x7F0] = STACK[0x478];
  LODWORD(STACK[0x790]) = STACK[0x648];
  LODWORD(STACK[0x718]) = 1;
  LODWORD(STACK[0x614]) = STACK[0x840];
  LODWORD(STACK[0x5E4]) = STACK[0x828];
  LODWORD(STACK[0x808]) = STACK[0x810];
  LODWORD(STACK[0x658]) = STACK[0x524];
  LODWORD(STACK[0x5E8]) = STACK[0x81C];
  LODWORD(STACK[0x610]) = STACK[0x84C];
  STACK[0x8F8] = v15;
  STACK[0x698] = v7;
  LODWORD(STACK[0x66C]) = STACK[0x858];
  return v14((a5 + 4700));
}

uint64_t sub_24480288C(unint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x7C8]) = 0;
  STACK[0x710] = 0;
  LODWORD(STACK[0x7B0]) = 0;
  LODWORD(STACK[0x6D4]) = 0;
  LODWORD(STACK[0x7BC]) = 0;
  STACK[0x7D0] = 0;
  STACK[0x7C0] = 0;
  STACK[0x7D8] = 0;
  LODWORD(STACK[0x760]) = 0;
  LODWORD(STACK[0x778]) = 0;
  LODWORD(STACK[0x704]) = 0;
  LODWORD(STACK[0x770]) = 0;
  LODWORD(STACK[0x708]) = 0;
  LODWORD(STACK[0x784]) = 0;
  LODWORD(STACK[0x6BC]) = 0;
  STACK[0x788] = 0;
  LODWORD(STACK[0x768]) = 0;
  v17 = (v8 - 627146373) & 0x25617E0A;
  v18 = *(v16 + 8 * (((v17 - 10038) * (LODWORD(STACK[0x474]) == v13 + 32)) ^ v8));
  STACK[0x4D8] = STACK[0x870];
  STACK[0x4D0] = STACK[0x820];
  STACK[0x5A0] = STACK[0x910];
  STACK[0x598] = STACK[0x868];
  LODWORD(STACK[0x4CC]) = STACK[0x838];
  LODWORD(STACK[0x800]) = a8;
  LODWORD(STACK[0x5AC]) = STACK[0x930];
  LODWORD(STACK[0x5A8]) = STACK[0x878];
  LODWORD(STACK[0x474]) = v13 + 32;
  LODWORD(STACK[0x554]) = STACK[0x830];
  LODWORD(STACK[0x550]) = a2;
  LODWORD(STACK[0x594]) = a5;
  LODWORD(STACK[0x720]) = v15;
  LODWORD(STACK[0x650]) = v15;
  LODWORD(STACK[0x628]) = v12;
  LODWORD(STACK[0x624]) = v10;
  LODWORD(STACK[0x7EC]) = a6;
  LODWORD(STACK[0x7FC]) = v14;
  LODWORD(STACK[0x7E0]) = v14;
  LODWORD(STACK[0x72C]) = v14;
  LODWORD(STACK[0x908]) = v14;
  LODWORD(STACK[0x71C]) = 1;
  STACK[0x618] = a1;
  v19 = STACK[0x478];
  STACK[0x7F0] = STACK[0x478];
  LODWORD(STACK[0x790]) = STACK[0x648];
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x70C]) = 1;
  LODWORD(STACK[0x6F0]) = 1;
  LODWORD(STACK[0x6D8]) = 1;
  LODWORD(STACK[0x6C0]) = 1;
  LODWORD(STACK[0x6FC]) = 1;
  LODWORD(STACK[0x6E8]) = 1;
  LODWORD(STACK[0x6EC]) = 1;
  LODWORD(STACK[0x700]) = 1;
  LODWORD(STACK[0x6C4]) = 1;
  LODWORD(STACK[0x6D0]) = 1;
  LODWORD(STACK[0x718]) = 1;
  LODWORD(STACK[0x614]) = STACK[0x840];
  LODWORD(STACK[0x5E4]) = STACK[0x828];
  LODWORD(STACK[0x808]) = STACK[0x810];
  LODWORD(STACK[0x658]) = STACK[0x524];
  LODWORD(STACK[0x5E8]) = v9;
  LODWORD(STACK[0x610]) = STACK[0x84C];
  LODWORD(STACK[0x950]) = v17;
  STACK[0x8F8] = v19;
  STACK[0x698] = v11;
  LODWORD(STACK[0x66C]) = STACK[0x858];
  return v18(v17);
}

uint64_t sub_244802A84@<X0>(unint64_t a1@<X0>, int a2@<W1>, int a3@<W4>, int a4@<W5>, int a5@<W7>, int a6@<W8>)
{
  LODWORD(STACK[0x7C8]) = 0;
  LODWORD(STACK[0x71C]) = 0;
  LODWORD(STACK[0x70C]) = 0;
  LODWORD(STACK[0x6F0]) = 0;
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
  LODWORD(STACK[0x768]) = 0;
  v13 = a6 - 14853;
  LODWORD(STACK[0x950]) = v13 ^ 0x3E33;
  v14 = (v13 + 9681);
  v15 = *(v12 + 8 * ((123 * (LODWORD(STACK[0x474]) == (v13 ^ 0x63A5731A) + v14)) ^ v13));
  STACK[0x4D8] = STACK[0x870];
  STACK[0x4D0] = STACK[0x820];
  STACK[0x5A0] = STACK[0x910];
  STACK[0x598] = STACK[0x868];
  LODWORD(STACK[0x4CC]) = STACK[0x838];
  LODWORD(STACK[0x5AC]) = STACK[0x930];
  LODWORD(STACK[0x5A8]) = STACK[0x878];
  LODWORD(STACK[0x554]) = STACK[0x830];
  LODWORD(STACK[0x550]) = a2;
  LODWORD(STACK[0x594]) = a3;
  LODWORD(STACK[0x7FC]) = v10;
  LODWORD(STACK[0x7E0]) = v10;
  LODWORD(STACK[0x800]) = a5;
  LODWORD(STACK[0x650]) = a5;
  LODWORD(STACK[0x624]) = v6;
  LODWORD(STACK[0x7EC]) = a4;
  LODWORD(STACK[0x628]) = v8;
  LODWORD(STACK[0x72C]) = v8;
  LODWORD(STACK[0x908]) = v8;
  LODWORD(STACK[0x720]) = v11;
  LODWORD(STACK[0x6D8]) = 1;
  STACK[0x618] = a1;
  STACK[0x7F0] = STACK[0x478];
  LODWORD(STACK[0x790]) = STACK[0x648];
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x718]) = 1;
  LODWORD(STACK[0x614]) = STACK[0x840];
  LODWORD(STACK[0x5E4]) = STACK[0x828];
  LODWORD(STACK[0x808]) = STACK[0x810];
  LODWORD(STACK[0x658]) = STACK[0x524];
  LODWORD(STACK[0x5E8]) = STACK[0x81C];
  LODWORD(STACK[0x610]) = STACK[0x84C];
  STACK[0x8F8] = STACK[0x4E8];
  STACK[0x698] = v7;
  LODWORD(STACK[0x66C]) = STACK[0x858];
  LODWORD(STACK[0x474]) = v9 + 47;
  return v15(v14);
}

uint64_t sub_244802C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x950]) = (v8 ^ 0x1070) + 11956;
  v13 = *(v12 + 8 * ((23933 * (LODWORD(STACK[0x474]) == (v8 ^ 0x1070) + 1671789510 + 15 * (v8 ^ 0x1070) + 15)) ^ v8));
  STACK[0x8F8] = STACK[0x4E8];
  STACK[0x698] = v10;
  LODWORD(STACK[0x650]) = a8;
  LODWORD(STACK[0x66C]) = STACK[0x858];
  LODWORD(STACK[0x628]) = v11;
  LODWORD(STACK[0x72C]) = v11;
  LODWORD(STACK[0x624]) = v9;
  LODWORD(STACK[0x908]) = v9;
  return v13();
}

uint64_t sub_244802CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  LODWORD(STACK[0x978]) = 0;
  v11 = LODWORD(STACK[0x950]) - 11214;
  STACK[0x2730] = 0xD3879C4D733BB295;
  v12 = *(STACK[0x940] + 8 * v11);
  LODWORD(STACK[0x57C]) = 130989217;
  STACK[0x4A0] = STACK[0x408];
  STACK[0x308] = a9;
  STACK[0x2C0] = STACK[0x480];
  STACK[0x618] = STACK[0x860];
  LODWORD(STACK[0x900]) = STACK[0x608];
  LODWORD(STACK[0x880]) = STACK[0x5F8];
  LODWORD(STACK[0x60C]) = v10;
  LODWORD(STACK[0x614]) = STACK[0x840];
  LODWORD(STACK[0x400]) = STACK[0x858];
  LODWORD(STACK[0x474]) = v9;
  LODWORD(STACK[0x610]) = STACK[0x84C];
  LODWORD(STACK[0x560]) = STACK[0x58C];
  return v12();
}

uint64_t sub_244802D94()
{
  v7 = *(v6 + 8 * ((24696 * (LODWORD(STACK[0x474]) == ((v0 - 976805033) & 0x3A38FB5F) + 1671790373)) ^ (v0 + 8921)));
  STACK[0x8F8] = STACK[0x478];
  STACK[0x698] = v2;
  LODWORD(STACK[0x650]) = v5;
  LODWORD(STACK[0x66C]) = STACK[0x858];
  LODWORD(STACK[0x628]) = v3;
  LODWORD(STACK[0x72C]) = v4;
  LODWORD(STACK[0x624]) = v1;
  LODWORD(STACK[0x908]) = v4;
  return v7();
}

uint64_t sub_244802E20(int a1)
{
  v1 = *(STACK[0x940] + 8 * (a1 - 7908));
  STACK[0x8F8] = STACK[0x4E8];
  STACK[0x698] = STACK[0x5B0];
  LODWORD(STACK[0x650]) = STACK[0x5F0];
  LODWORD(STACK[0x66C]) = STACK[0x858];
  v2 = STACK[0x60C];
  LODWORD(STACK[0x628]) = STACK[0x60C];
  LODWORD(STACK[0x72C]) = v2;
  LODWORD(STACK[0x624]) = STACK[0x64C];
  LODWORD(STACK[0x908]) = v2;
  return v1();
}

uint64_t sub_244802E8C@<X0>(unint64_t a1@<X0>, int a2@<W1>, int a3@<W4>, int a4@<W5>, int a5@<W7>, int a6@<W8>)
{
  LODWORD(STACK[0x7C8]) = 0;
  LODWORD(STACK[0x71C]) = 0;
  LODWORD(STACK[0x710]) = 0;
  STACK[0x700] = 0;
  LODWORD(STACK[0x6C4]) = 0;
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
  LODWORD(STACK[0x768]) = 0;
  v13 = (4270 * (a6 ^ 0x3287) + 1759873456) & 0x971A764E;
  LODWORD(STACK[0x950]) = v13;
  v14 = *(v12 + 8 * ((2772 * (LODWORD(STACK[0x474]) != v13 + 1671790363)) ^ a6));
  STACK[0x4D8] = STACK[0x870];
  STACK[0x4D0] = STACK[0x820];
  STACK[0x5A0] = STACK[0x910];
  STACK[0x598] = STACK[0x868];
  LODWORD(STACK[0x4CC]) = STACK[0x838];
  LODWORD(STACK[0x800]) = a5;
  LODWORD(STACK[0x5AC]) = STACK[0x930];
  LODWORD(STACK[0x5A8]) = STACK[0x878];
  LODWORD(STACK[0x554]) = STACK[0x830];
  LODWORD(STACK[0x550]) = a2;
  LODWORD(STACK[0x594]) = a3;
  LODWORD(STACK[0x720]) = v11;
  LODWORD(STACK[0x650]) = v11;
  LODWORD(STACK[0x628]) = v8;
  LODWORD(STACK[0x624]) = v6;
  LODWORD(STACK[0x7EC]) = a4;
  LODWORD(STACK[0x7FC]) = v10;
  LODWORD(STACK[0x7E0]) = v10;
  LODWORD(STACK[0x72C]) = v10;
  LODWORD(STACK[0x908]) = v10;
  LODWORD(STACK[0x474]) = v9 + 38;
  LODWORD(STACK[0x70C]) = 1;
  STACK[0x618] = a1;
  v15 = STACK[0x478];
  STACK[0x7F0] = STACK[0x478];
  LODWORD(STACK[0x790]) = STACK[0x648];
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x6F0]) = 1;
  LODWORD(STACK[0x6D8]) = 1;
  LODWORD(STACK[0x6C0]) = 1;
  LODWORD(STACK[0x6FC]) = 1;
  LODWORD(STACK[0x6E8]) = 1;
  LODWORD(STACK[0x6EC]) = 1;
  LODWORD(STACK[0x718]) = 1;
  LODWORD(STACK[0x614]) = STACK[0x840];
  LODWORD(STACK[0x5E4]) = STACK[0x828];
  LODWORD(STACK[0x808]) = STACK[0x810];
  LODWORD(STACK[0x658]) = STACK[0x524];
  LODWORD(STACK[0x5E8]) = STACK[0x81C];
  LODWORD(STACK[0x610]) = STACK[0x84C];
  STACK[0x8F8] = v15;
  STACK[0x698] = v7;
  LODWORD(STACK[0x66C]) = STACK[0x858];
  return v14(4270 * (a6 ^ 0x3287u));
}

uint64_t sub_24480306C@<X0>(unint64_t a1@<X0>, int a2@<W1>, int a3@<W4>, int a4@<W5>, int a5@<W7>, int a6@<W8>)
{
  LODWORD(STACK[0x7C8]) = 0;
  LODWORD(STACK[0x71C]) = 0;
  LODWORD(STACK[0x6FC]) = 0;
  LODWORD(STACK[0x6EC]) = 0;
  LODWORD(STACK[0x710]) = 0;
  STACK[0x700] = 0;
  LODWORD(STACK[0x6C4]) = 0;
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
  LODWORD(STACK[0x768]) = 0;
  v13 = (a6 + 9681);
  v14 = *(v12 + 8 * ((123 * (LODWORD(STACK[0x474]) != a6 + 1671787235 + v13)) ^ a6));
  STACK[0x4D8] = STACK[0x870];
  STACK[0x4D0] = STACK[0x820];
  STACK[0x5A0] = STACK[0x910];
  STACK[0x598] = STACK[0x868];
  LODWORD(STACK[0x4CC]) = STACK[0x838];
  LODWORD(STACK[0x5AC]) = STACK[0x930];
  LODWORD(STACK[0x5A8]) = STACK[0x878];
  LODWORD(STACK[0x554]) = STACK[0x830];
  LODWORD(STACK[0x550]) = a2;
  LODWORD(STACK[0x594]) = a3;
  LODWORD(STACK[0x7FC]) = v10;
  LODWORD(STACK[0x7E0]) = v10;
  LODWORD(STACK[0x800]) = a5;
  LODWORD(STACK[0x650]) = a5;
  LODWORD(STACK[0x624]) = v6;
  LODWORD(STACK[0x7EC]) = a4;
  LODWORD(STACK[0x628]) = v8;
  LODWORD(STACK[0x72C]) = v8;
  LODWORD(STACK[0x908]) = v8;
  LODWORD(STACK[0x720]) = v11;
  LODWORD(STACK[0x70C]) = 1;
  STACK[0x618] = a1;
  STACK[0x7F0] = STACK[0x478];
  LODWORD(STACK[0x790]) = STACK[0x648];
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x6F0]) = 1;
  LODWORD(STACK[0x6D8]) = 1;
  LODWORD(STACK[0x6C0]) = 1;
  LODWORD(STACK[0x6E8]) = 1;
  LODWORD(STACK[0x718]) = 1;
  LODWORD(STACK[0x614]) = STACK[0x840];
  LODWORD(STACK[0x5E4]) = STACK[0x828];
  LODWORD(STACK[0x808]) = STACK[0x810];
  LODWORD(STACK[0x658]) = STACK[0x524];
  LODWORD(STACK[0x5E8]) = STACK[0x81C];
  LODWORD(STACK[0x610]) = STACK[0x84C];
  LODWORD(STACK[0x950]) = v13;
  STACK[0x8F8] = STACK[0x4E8];
  STACK[0x698] = v7;
  LODWORD(STACK[0x66C]) = STACK[0x858];
  LODWORD(STACK[0x474]) = v9 + 41;
  return v14(v13);
}

uint64_t sub_244803234@<X0>(unint64_t a1@<X0>, int a2@<W1>, int a3@<W4>, int a4@<W5>, int a5@<W7>, int a6@<W8>)
{
  LODWORD(STACK[0x7C8]) = 0;
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
  LODWORD(STACK[0x768]) = 0;
  v14 = v10 + 35;
  v15 = LODWORD(STACK[0x474]) == v14;
  v16 = (a6 - 130) | 8u;
  LODWORD(STACK[0x950]) = a6 ^ 0x8E;
  v17 = v15;
  v18 = *(v13 + 8 * (((a6 ^ 0xA5A ^ v16) * v17) ^ a6));
  STACK[0x4D8] = STACK[0x870];
  STACK[0x4D0] = STACK[0x820];
  STACK[0x5A0] = STACK[0x910];
  STACK[0x598] = STACK[0x868];
  LODWORD(STACK[0x4CC]) = STACK[0x838];
  LODWORD(STACK[0x5AC]) = STACK[0x930];
  LODWORD(STACK[0x5A8]) = STACK[0x878];
  LODWORD(STACK[0x554]) = STACK[0x830];
  LODWORD(STACK[0x550]) = a2;
  LODWORD(STACK[0x594]) = a3;
  LODWORD(STACK[0x7FC]) = v11;
  LODWORD(STACK[0x7E0]) = v11;
  LODWORD(STACK[0x800]) = a5;
  LODWORD(STACK[0x650]) = a5;
  LODWORD(STACK[0x624]) = v7;
  LODWORD(STACK[0x7EC]) = a4;
  LODWORD(STACK[0x628]) = v9;
  LODWORD(STACK[0x72C]) = v9;
  LODWORD(STACK[0x908]) = v9;
  LODWORD(STACK[0x720]) = v12;
  LODWORD(STACK[0x978]) = 1;
  STACK[0x618] = a1;
  STACK[0x7F0] = STACK[0x478];
  LODWORD(STACK[0x790]) = STACK[0x648];
  LODWORD(STACK[0x71C]) = 1;
  LODWORD(STACK[0x70C]) = 1;
  LODWORD(STACK[0x6F0]) = 1;
  LODWORD(STACK[0x6D8]) = 1;
  LODWORD(STACK[0x6C0]) = 1;
  LODWORD(STACK[0x6FC]) = 1;
  LODWORD(STACK[0x6E8]) = 1;
  LODWORD(STACK[0x6EC]) = 1;
  LODWORD(STACK[0x6C4]) = 1;
  LODWORD(STACK[0x718]) = 1;
  LODWORD(STACK[0x614]) = STACK[0x840];
  LODWORD(STACK[0x5E4]) = STACK[0x828];
  LODWORD(STACK[0x808]) = STACK[0x810];
  LODWORD(STACK[0x658]) = STACK[0x524];
  LODWORD(STACK[0x474]) = v14;
  LODWORD(STACK[0x5E8]) = v6;
  LODWORD(STACK[0x610]) = STACK[0x84C];
  STACK[0x8F8] = STACK[0x4E8];
  STACK[0x698] = v8;
  LODWORD(STACK[0x66C]) = STACK[0x858];
  return v18(v16);
}

uint64_t sub_2448033F0(unint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x7C8]) = 0;
  LODWORD(STACK[0x71C]) = 0;
  LODWORD(STACK[0x70C]) = 0;
  LODWORD(STACK[0x6FC]) = 0;
  STACK[0x6E8] = 0;
  LODWORD(STACK[0x710]) = 0;
  STACK[0x700] = 0;
  LODWORD(STACK[0x6C4]) = 0;
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
  LODWORD(STACK[0x768]) = 0;
  v16 = v8 ^ 0x6B4u;
  v17 = *(v15 + 8 * ((32751 * (LODWORD(STACK[0x474]) == (v8 ^ 0x63A58594))) ^ v8));
  STACK[0x4D8] = STACK[0x870];
  STACK[0x4D0] = STACK[0x820];
  STACK[0x5A0] = STACK[0x910];
  STACK[0x598] = STACK[0x868];
  LODWORD(STACK[0x4CC]) = STACK[0x838];
  LODWORD(STACK[0x800]) = a8;
  LODWORD(STACK[0x5AC]) = STACK[0x930];
  LODWORD(STACK[0x5A8]) = STACK[0x878];
  LODWORD(STACK[0x554]) = STACK[0x830];
  LODWORD(STACK[0x550]) = a2;
  LODWORD(STACK[0x594]) = a5;
  LODWORD(STACK[0x720]) = v14;
  LODWORD(STACK[0x650]) = v14;
  LODWORD(STACK[0x628]) = v11;
  LODWORD(STACK[0x624]) = v9;
  LODWORD(STACK[0x7EC]) = a6;
  LODWORD(STACK[0x7FC]) = v13;
  LODWORD(STACK[0x7E0]) = v13;
  LODWORD(STACK[0x72C]) = v13;
  LODWORD(STACK[0x908]) = v13;
  LODWORD(STACK[0x474]) = v12 + 44;
  LODWORD(STACK[0x6F0]) = 1;
  STACK[0x618] = a1;
  v18 = STACK[0x478];
  STACK[0x7F0] = STACK[0x478];
  LODWORD(STACK[0x790]) = STACK[0x648];
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x6D8]) = 1;
  LODWORD(STACK[0x6C0]) = 1;
  LODWORD(STACK[0x718]) = 1;
  LODWORD(STACK[0x614]) = STACK[0x840];
  LODWORD(STACK[0x5E4]) = STACK[0x828];
  LODWORD(STACK[0x808]) = STACK[0x810];
  LODWORD(STACK[0x658]) = STACK[0x524];
  LODWORD(STACK[0x5E8]) = STACK[0x81C];
  LODWORD(STACK[0x610]) = STACK[0x84C];
  LODWORD(STACK[0x950]) = v16;
  STACK[0x8F8] = v18;
  STACK[0x698] = v10;
  LODWORD(STACK[0x66C]) = STACK[0x858];
  return v17(v16);
}

uint64_t sub_2448035AC@<X0>(uint64_t a1@<X4>, int a2@<W8>)
{
  v3 = *(STACK[0x940] + 8 * a2);
  v4 = (LODWORD(STACK[0x3D4]) + LODWORD(STACK[0x3D0]));
  STACK[0x870] = STACK[0x4D8];
  STACK[0x820] = STACK[0x4D0];
  LODWORD(STACK[0x440]) = v2;
  LODWORD(STACK[0x720]) = STACK[0x60C];
  LODWORD(STACK[0x838]) = STACK[0x4CC];
  LODWORD(STACK[0x654]) = STACK[0x64C];
  LODWORD(STACK[0x810]) = STACK[0x808];
  LODWORD(STACK[0x5E8]) = STACK[0x81C];
  return v3(LODWORD(STACK[0x498]), 984291262, v4, STACK[0x528], LODWORD(STACK[0x648]), LODWORD(STACK[0x524]), a1, LODWORD(STACK[0x57C]));
}

uint64_t sub_24480367C(int a1, int a2, int a3, unint64_t a4, int a5, int a6, uint64_t a7, int a8)
{
  STACK[0x788] = 0;
  LODWORD(STACK[0x714]) = 0;
  LODWORD(STACK[0x768]) = 0;
  LODWORD(STACK[0x900]) = 0;
  LODWORD(STACK[0x8E0]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  LODWORD(STACK[0x8C0]) = 0;
  LODWORD(STACK[0x8D8]) = 0;
  LODWORD(STACK[0x3DC]) = a2;
  v26 = a2 + v8;
  LODWORD(STACK[0x3D8]) = a3;
  v27 = a3 + v11;
  v28 = a3 + v11 < (v9 ^ 0x31C31417u);
  v29 = (v26 < v10) ^ v28;
  v30 = v26 < v27;
  if (v29)
  {
    v30 = v28;
  }

  v31 = *(v25 + 8 * ((v30 * v13) ^ v9));
  LODWORD(STACK[0x950]) = v9 ^ v14;
  LODWORD(STACK[0x978]) = 1;
  STACK[0x528] = a4;
  STACK[0x7F0] = a4;
  STACK[0x490] = v23;
  LODWORD(STACK[0x648]) = a5;
  LODWORD(STACK[0x790]) = a5;
  LODWORD(STACK[0x5F0]) = v15;
  LODWORD(STACK[0x800]) = v15;
  LODWORD(STACK[0x7C8]) = 1;
  LODWORD(STACK[0x71C]) = 1;
  LODWORD(STACK[0x70C]) = 1;
  LODWORD(STACK[0x6F0]) = 1;
  LODWORD(STACK[0x6D8]) = 1;
  LODWORD(STACK[0x6C0]) = 1;
  LODWORD(STACK[0x6FC]) = 1;
  LODWORD(STACK[0x6E8]) = 1;
  LODWORD(STACK[0x6EC]) = 1;
  LODWORD(STACK[0x710]) = 1;
  LODWORD(STACK[0x700]) = 1;
  LODWORD(STACK[0x7E0]) = v22;
  LODWORD(STACK[0x6C4]) = 1;
  LODWORD(STACK[0x6D0]) = 1;
  LODWORD(STACK[0x7B0]) = 1;
  LODWORD(STACK[0x6D4]) = 1;
  LODWORD(STACK[0x7BC]) = 1;
  LODWORD(STACK[0x7D4]) = 1;
  LODWORD(STACK[0x7C4]) = 1;
  LODWORD(STACK[0x7C0]) = 1;
  LODWORD(STACK[0x7D0]) = 1;
  LODWORD(STACK[0x7DC]) = 1;
  LODWORD(STACK[0x7D8]) = 1;
  LODWORD(STACK[0x760]) = 1;
  LODWORD(STACK[0x778]) = 1;
  LODWORD(STACK[0x704]) = 1;
  LODWORD(STACK[0x770]) = 1;
  LODWORD(STACK[0x784]) = 1;
  LODWORD(STACK[0x718]) = 1;
  LODWORD(STACK[0x57C]) = a8;
  LODWORD(STACK[0x7EC]) = a8;
  LODWORD(STACK[0x524]) = a6;
  LODWORD(STACK[0x658]) = a6;
  LODWORD(STACK[0x498]) = a1;
  LODWORD(STACK[0x7FC]) = a1;
  LODWORD(STACK[0x850]) = v21;
  LODWORD(STACK[0x550]) = v21;
  STACK[0x5A0] = v18;
  STACK[0x910] = v18;
  STACK[0x598] = v19;
  STACK[0x868] = v19;
  LODWORD(STACK[0x5AC]) = v16;
  LODWORD(STACK[0x930]) = v16;
  LODWORD(STACK[0x5A8]) = v17;
  LODWORD(STACK[0x878]) = v17;
  LODWORD(STACK[0x908]) = 1;
  LODWORD(STACK[0x5E4]) = v24;
  LODWORD(STACK[0x828]) = v24;
  LODWORD(STACK[0x554]) = v12;
  LODWORD(STACK[0x830]) = v12;
  LODWORD(STACK[0x708]) = 1;
  LODWORD(STACK[0x594]) = v20;
  LODWORD(STACK[0x948]) = v20;
  LODWORD(STACK[0x6BC]) = 1;
  return v31();
}

uint64_t sub_244803834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x960]) = v7;
  LODWORD(STACK[0x594]) = STACK[0x948];
  LODWORD(STACK[0x550]) = STACK[0x850];
  LODWORD(STACK[0x554]) = STACK[0x830];
  LODWORD(STACK[0x808]) = STACK[0x810];
  LODWORD(STACK[0x5E4]) = STACK[0x828];
  LODWORD(STACK[0x5A8]) = STACK[0x878];
  LODWORD(STACK[0x5AC]) = STACK[0x930];
  LODWORD(STACK[0x4CC]) = STACK[0x838];
  STACK[0x598] = STACK[0x868];
  STACK[0x5A0] = STACK[0x910];
  STACK[0x4D0] = STACK[0x820];
  STACK[0x4D8] = STACK[0x870];
  return (*(STACK[0x940] + 8 * ((25 * (a7 == 130989216)) ^ (LODWORD(STACK[0x950]) - 7775))))(a1, a2, a3, 6104, 1450560830);
}

uint64_t sub_2448039A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(STACK[0x950]) = v5 + 11354;
  v9 = *(v7 + 8 * (((((v5 ^ 0x37BA) - 9459) ^ (v5 + 11354)) * v8) ^ v5));
  LODWORD(STACK[0x830]) = 2046963367;
  v10 = STACK[0x430];
  STACK[0x870] = STACK[0x430];
  v11 = STACK[0x418];
  STACK[0x820] = STACK[0x418];
  STACK[0x910] = v10;
  STACK[0x868] = v11;
  LODWORD(STACK[0x900]) = v6;
  LODWORD(STACK[0x880]) = STACK[0x5F8];
  LODWORD(v10) = STACK[0x43C];
  LODWORD(STACK[0x838]) = STACK[0x43C];
  LODWORD(STACK[0x930]) = v10;
  LODWORD(STACK[0x878]) = 919223698;
  LODWORD(STACK[0x828]) = a5;
  LODWORD(STACK[0x810]) = STACK[0x808];
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x850]) = a5;
  LODWORD(STACK[0x948]) = a5;
  return v9();
}

uint64_t sub_244803A4C@<X0>(int a1@<W4>, int a2@<W8>)
{
  v2 = *(STACK[0x940] + 8 * (a2 + 5002));
  LODWORD(STACK[0x830]) = 2046963366;
  LODWORD(STACK[0x950]) = a2;
  v3 = STACK[0x430];
  STACK[0x870] = STACK[0x430];
  v4 = STACK[0x3C0];
  STACK[0x820] = STACK[0x3C0];
  STACK[0x910] = v3;
  STACK[0x868] = v4;
  LODWORD(STACK[0x900]) = STACK[0x608];
  LODWORD(STACK[0x880]) = STACK[0x5F8];
  LODWORD(v3) = STACK[0x43C];
  LODWORD(STACK[0x838]) = STACK[0x43C];
  LODWORD(STACK[0x930]) = v3;
  LODWORD(STACK[0x878]) = 919223698;
  LODWORD(STACK[0x828]) = STACK[0x5E4];
  LODWORD(STACK[0x810]) = STACK[0x808];
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x470]) = a1;
  LODWORD(STACK[0x850]) = a1;
  LODWORD(STACK[0x948]) = a1;
  return v2();
}

uint64_t sub_244803C9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7)
{
  v13 = v8 < a7;
  *v9 = *v10;
  if (v13 == v11 + a6 < a7)
  {
    v13 = v11 + a6 < v8;
  }

  return (*(v12 + 8 * ((!v13 * a3) ^ v7)))();
}

uint64_t sub_244803D54@<X0>(unsigned int a1@<W0>, int a2@<W1>, unsigned int a3@<W2>, int a4@<W3>, int a5@<W4>, unsigned int a6@<W8>)
{
  v12 = a6 < a3;
  *(v6 - 0x1DC6E026F0860055) = v11;
  v13 = ((v7 + a4) ^ a5) + v9;
  v14 = v12 ^ (v13 < a1);
  v15 = v8 > v13;
  if (!v14)
  {
    v12 = v15;
  }

  return (*(v10 + 8 * ((v12 * a2) ^ v7)))();
}

uint64_t sub_244803E54@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, int a6@<W8>)
{
  LODWORD(STACK[0x958]) = 0;
  LODWORD(STACK[0x960]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  LODWORD(STACK[0x8E0]) = 0;
  v9 = (LODWORD(STACK[0x560]) << 6) - ((a6 + 2108166854) & ((LODWORD(STACK[0x560]) << 7) + 413249408)) - 886773398;
  v10 = *(v7 + 8 * a6);
  STACK[0x870] = STACK[0x4D8];
  STACK[0x820] = STACK[0x4D0];
  v11 = STACK[0x398];
  v12 = STACK[0x2C0];
  LODWORD(STACK[0x790]) = STACK[0x648];
  LODWORD(STACK[0x880]) = STACK[0x5F8];
  LODWORD(STACK[0x838]) = STACK[0x4CC];
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x908]) = 1;
  LODWORD(STACK[0x860]) = 1;
  LODWORD(STACK[0x5FC]) = v8;
  LODWORD(STACK[0x828]) = v6;
  LODWORD(STACK[0x810]) = STACK[0x808];
  LODWORD(STACK[0x830]) = STACK[0x554];
  LODWORD(STACK[0x558]) = v9;
  LODWORD(STACK[0x850]) = STACK[0x550];
  return v10(v12, a1, a2, 1, a3, a4, a5, v11);
}

uint64_t sub_244803F28@<X0>(int a1@<W4>, int a2@<W8>)
{
  LODWORD(STACK[0x950]) = a2 + 10485;
  v4 = LODWORD(STACK[0x900]) == 0;
  if (LODWORD(STACK[0x900]))
  {
    v5 = STACK[0x3C0];
  }

  else
  {
    v5 = STACK[0x418];
  }

  v6 = STACK[0x5E4];
  if (!LODWORD(STACK[0x900]))
  {
    v6 = a1;
  }

  LODWORD(STACK[0x828]) = v6;
  if (v4)
  {
    v7 = 2046963371;
  }

  else
  {
    v7 = 2046963369;
  }

  LODWORD(STACK[0x830]) = v7;
  v8 = STACK[0x470];
  if (!v4)
  {
    v8 = a1;
  }

  LODWORD(STACK[0x470]) = v8;
  v9 = *(v3 + 8 * a2);
  v10 = STACK[0x430];
  STACK[0x870] = STACK[0x430];
  STACK[0x910] = v10;
  STACK[0x868] = v5;
  STACK[0x820] = v5;
  LODWORD(STACK[0x900]) = v2;
  LODWORD(STACK[0x880]) = STACK[0x5F8];
  LODWORD(v10) = STACK[0x43C];
  LODWORD(STACK[0x838]) = STACK[0x43C];
  LODWORD(STACK[0x930]) = v10;
  LODWORD(STACK[0x878]) = 919223698;
  LODWORD(STACK[0x810]) = STACK[0x808];
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x850]) = a1;
  LODWORD(STACK[0x948]) = a1;
  return v9();
}

uint64_t sub_2448040EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v17 = v10 < v16;
  *v9 = (((*v11 ^ v14) >> v8) | a2 ^ v14) + ((v7 + 3904) ^ (v15 + 2305)) - (a7 & (2 * (((*v11 ^ v14) >> v8) | a2 ^ v14)));
  if (v17 == v12 < v16)
  {
    v17 = v10 > v12;
  }

  return (*(v13 + 8 * ((!v17 * a6) ^ v7)))();
}

uint64_t sub_2448041D4@<X0>(int a1@<W0>, unsigned int a2@<W1>, unsigned int a3@<W8>)
{
  v11 = a3 < a2;
  *(v4 - 0x1DC6E026F086005DLL) = v8;
  if (v11 == (v6 + v10) < 0xE1260965)
  {
    v11 = v5 > v6 + v10;
  }

  return (*(v7 + 8 * ((v11 * (((v3 + 4046) | v9) + a1)) ^ v3)))();
}

uint64_t sub_24480427C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0x950]) = (v6 ^ 0xD06) + 12777;
  v10 = *(v8 + 8 * ((((LODWORD(STACK[0x8D8]) ^ (-81 * (v6 ^ 6))) & 1) * ((v6 ^ 0xD06) - 10)) ^ v6));
  STACK[0x750] = STACK[0x548];
  STACK[0x800] = STACK[0x540];
  STACK[0x748] = STACK[0x570];
  STACK[0x740] = STACK[0x538];
  STACK[0x870] = STACK[0x4D8];
  STACK[0x820] = STACK[0x4D0];
  STACK[0x910] = STACK[0x5A0];
  STACK[0x868] = STACK[0x598];
  LODWORD(STACK[0x7F0]) = STACK[0x5F4];
  LODWORD(STACK[0x838]) = STACK[0x4CC];
  LODWORD(STACK[0x7AC]) = STACK[0x888];
  LODWORD(STACK[0x7EC]) = STACK[0x55C];
  LODWORD(STACK[0x930]) = STACK[0x5AC];
  LODWORD(STACK[0x878]) = STACK[0x5A8];
  v11 = LODWORD(STACK[0x534]);
  LODWORD(STACK[0x730]) = STACK[0x56C];
  LODWORD(STACK[0x758]) = STACK[0x898];
  LODWORD(STACK[0x828]) = v7;
  LODWORD(STACK[0x810]) = STACK[0x808];
  LODWORD(STACK[0x830]) = STACK[0x554];
  LODWORD(STACK[0x7FC]) = STACK[0x600];
  LODWORD(STACK[0x850]) = STACK[0x550];
  LODWORD(STACK[0x734]) = v11;
  LODWORD(STACK[0x7E0]) = STACK[0x564];
  LODWORD(STACK[0x7A8]) = STACK[0x890];
  LODWORD(STACK[0x948]) = STACK[0x594];
  LODWORD(STACK[0x7A4]) = STACK[0x8A0];
  LODWORD(STACK[0x7A0]) = STACK[0x8B0];
  LODWORD(STACK[0x79C]) = STACK[0x8A8];
  LODWORD(STACK[0x738]) = STACK[0x568];
  return v10(a1, a2, v9, a4, a5, a6, v11);
}

uint64_t sub_2448043C4@<X0>(int a1@<W1>, int a2@<W8>)
{
  v5 = a2 | 0x104;
  v6 = 610 * (v5 ^ 0x531);
  LODWORD(STACK[0x950]) = v6;
  v7 = *(v3 + 8 * (((((v6 - 1809644044) & 0x6BDCEF32) + 280) * LODWORD(STACK[0x960])) | v5));
  LODWORD(STACK[0x830]) = 2046963332;
  v8 = STACK[0x5D0];
  STACK[0x870] = STACK[0x5D0];
  v9 = STACK[0x8B8];
  STACK[0x820] = STACK[0x8B8];
  STACK[0x910] = v8;
  STACK[0x868] = v9;
  LODWORD(STACK[0x900]) = a1;
  LODWORD(STACK[0x880]) = STACK[0x5F8];
  LODWORD(v8) = STACK[0x5D8];
  LODWORD(STACK[0x838]) = STACK[0x5D8];
  LODWORD(STACK[0x930]) = v8;
  LODWORD(STACK[0x878]) = 919223698;
  LODWORD(STACK[0x828]) = v2;
  LODWORD(STACK[0x810]) = STACK[0x808];
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x850]) = v4;
  LODWORD(STACK[0x948]) = v4;
  STACK[0x8F8] = STACK[0x2F8];
  LODWORD(STACK[0x908]) = 2082823915;
  LODWORD(STACK[0x8D8]) = 1310430001;
  return v7(LODWORD(STACK[0x8B0]));
}

uint64_t sub_2448044CC(uint64_t a1, int a2)
{
  LODWORD(STACK[0x950]) = 1830 * (((v2 - 19068) | 0x3202) ^ 0x320D);
  v6 = *(v4 + 8 * ((61 * (LODWORD(STACK[0x8C0]) ^ 1)) ^ v2));
  LODWORD(STACK[0x830]) = 2046963331;
  LODWORD(STACK[0x978]) = 1;
  v7 = STACK[0x5D0];
  STACK[0x870] = STACK[0x5D0];
  v8 = STACK[0x5C8];
  STACK[0x820] = STACK[0x5C8];
  STACK[0x910] = v7;
  STACK[0x868] = v8;
  LODWORD(STACK[0x900]) = a2;
  LODWORD(STACK[0x880]) = STACK[0x5F8];
  LODWORD(v7) = STACK[0x5D8];
  LODWORD(STACK[0x838]) = STACK[0x5D8];
  LODWORD(STACK[0x930]) = v7;
  LODWORD(STACK[0x878]) = 919223698;
  LODWORD(STACK[0x828]) = v3;
  LODWORD(STACK[0x810]) = v5;
  LODWORD(STACK[0x850]) = v5;
  LODWORD(STACK[0x948]) = v5;
  return v6();
}

uint64_t sub_244804588@<X0>(int a1@<W4>, int a2@<W8>)
{
  v2 = *(STACK[0x940] + 8 * (a2 - 11354));
  LODWORD(STACK[0x830]) = 2046963328;
  LODWORD(STACK[0x950]) = a2;
  v3 = STACK[0x3F0];
  STACK[0x870] = STACK[0x3F0];
  v4 = STACK[0x410];
  STACK[0x820] = STACK[0x410];
  STACK[0x910] = v3;
  STACK[0x868] = v4;
  LODWORD(STACK[0x900]) = STACK[0x608];
  LODWORD(STACK[0x880]) = STACK[0x5F8];
  LODWORD(v3) = STACK[0x3FC];
  LODWORD(STACK[0x838]) = STACK[0x3FC];
  LODWORD(STACK[0x930]) = v3;
  LODWORD(STACK[0x878]) = 919223698;
  LODWORD(STACK[0x828]) = STACK[0x5E4];
  LODWORD(STACK[0x810]) = STACK[0x808];
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x850]) = a1;
  LODWORD(STACK[0x948]) = a1;
  return v2();
}

uint64_t sub_244804620(int a1)
{
  v3 = STACK[0x398] + 8 * (LODWORD(STACK[0x648]) - 130989216);
  v4 = *(v3 - 0x1DC6E026F086005DLL) ^ v2;
  v5 = ((v4 / (HIDWORD(STACK[0x310]) ^ 0xD3879C4D)) ^ ((a1 - 2551) | 0x1040u) ^ 0xF72FFFBF97BE2662) + ((2 * (v4 / (HIDWORD(STACK[0x310]) ^ 0xD3879C4D))) & 0xEE5FFF7F2F7C6F4CLL);
  v6 = v5 + 0x8D000406841C85ALL;
  if (v5 + 0x8D0003F6841C85ALL < 0xFFFFFFFF00000000)
  {
    v6 = 0xFFFFFFFFLL;
  }

  return (*(v1 + 8 * ((13341 * (__PAIR128__(v4, *(v3 - 0x1DC6E026F0860065) ^ v2) < __PAIR128__((STACK[0x310] ^ v2) >> 32, (STACK[0x310] ^ v2) << 32) * v6)) ^ a1)))(v5 + 0x5DFE0F6DFBFDF97ELL);
}

uint64_t sub_244804804@<X0>(unint64_t a1@<X5>, unint64_t a2@<X8>)
{
  v9 = __PAIR128__(v2, v5) - __PAIR128__(v6, v7);
  v10 = ((2 * ((v9 >> 32) / v4)) & 0xDFF7FFFDB5FE66EELL) + (((v9 >> 32) / v4) ^ 0x6FFBFFFEDAFF3377);
  if (v10 - 0x6FFBFFFFDAFF3377 >= 0xFFFFFFFF00000000)
  {
    a1 = v10 - 0x6FFBFFFEDAFF3377;
  }

  return (*(v8 + 8 * ((24905 * (v9 < a1 * a2)) ^ (v3 - 4202))))();
}

uint64_t sub_244804984(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v12 = (v10 - 0x6FFBFF7ACAEA3257) ^ v9;
  STACK[0x298] = a4;
  STACK[0x2F0] = v12;
  v13 = *(v11 + 8 * (((((3 * (v8 ^ 0xB3)) ^ ((v12 | a4) == 0)) & 1) * (1051 * (v8 ^ 0x3208) - 1924)) ^ (v8 - 1942)));
  LODWORD(STACK[0x790]) = a6;
  LODWORD(STACK[0x658]) = a8;
  LODWORD(STACK[0x5E8]) = STACK[0x81C];
  return v13();
}

uint64_t sub_244804A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  STACK[0x8240] = STACK[0x2F0] - 0x2C7863B28CC44D6BLL - ((((v45 + 1637247945) & 0x9E699C3F) - 0x58F0C7651988AB15) & (2 * STACK[0x2F0]));
  v46 = *(STACK[0x940] + 8 * v45);
  v47 = LODWORD(STACK[0x648]);
  LODWORD(STACK[0x658]) = STACK[0x524];
  LODWORD(STACK[0x5E8]) = STACK[0x81C];
  return v46(a45, 130989217, a3, a4, a5, a6, a7, v47);
}

uint64_t sub_244804AA8@<X0>(uint64_t a1@<X4>, int a2@<W8>)
{
  v3 = *(STACK[0x940] + 8 * ((29 * ((STACK[0x790] & 0xFFFFFFFE) == (a2 ^ 0x1814) + 130985057)) ^ a2));
  v4 = STACK[0x4A0];
  LODWORD(STACK[0x888]) = STACK[0x638];
  LODWORD(STACK[0x898]) = STACK[0x630];
  LODWORD(STACK[0x890]) = STACK[0x640];
  LODWORD(STACK[0x560]) = v2;
  LODWORD(STACK[0x8A0]) = STACK[0x62C];
  LODWORD(STACK[0x8B0]) = STACK[0x63C];
  LODWORD(STACK[0x8A8]) = STACK[0x634];
  return v3(v4, a1);
}

uint64_t sub_244804B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x790]) = a8;
  LODWORD(STACK[0x7EC]) = a5;
  LODWORD(STACK[0x7E0]) = STACK[0x644];
  LODWORD(STACK[0x720]) = STACK[0x60C];
  return (*(v9 + 8 * v8))(a1, a2, 1);
}

uint64_t sub_244804B7C@<X0>(int a1@<W1>, int a2@<W8>)
{
  LODWORD(STACK[0x978]) = v4;
  *(v3 - 0x1DC6E026F0860055) = 0xD3879C4D733BB295;
  v5 = a1 + v2 + ((a2 + 9434) ^ 0xF062A8B8) > 0xFFFFFFFD;
  return (*(STACK[0x940] + 8 * (((8 * v5) | (16 * v5)) ^ a2)))();
}

uint64_t sub_244804C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W7>, int a7@<W8>)
{
  v14 = v7 < v11;
  v15 = (((a7 + a6) | v9) ^ v8) + a4;
  v16 = (a4 + 1);
  *(a5 + v10) = v13;
  v17 = a5 + 8;
  v18 = v14 ^ (v15 < v11);
  v19 = v15 < v7;
  if (!v18)
  {
    v14 = v19;
  }

  return (*(v12 + 8 * (((8 * !v14) | (16 * !v14)) ^ a7)))(a1, a2, a3, v16, v17);
}

uint64_t sub_244804CE4(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = v4 < 0x7A95D39D;
  *(a4 + 8) = v5 + v9 - (v10 & (2 * v5));
  v12 = (((v6 ^ 0x2CBB) * v8) ^ 0x5736F6EB) + a1;
  v13 = (a1 + 1);
  v14 = v11 ^ (v12 < (v6 ^ 0x2CBBu) + 2056639030);
  v15 = v12 < v4;
  if (!v14)
  {
    v11 = v15;
  }

  return (*(v7 + 8 * ((987 * v11) ^ v6)))(v13);
}

uint64_t sub_244804DC4@<X0>(int a1@<W1>, void *a2@<X3>, uint64_t a3@<X4>, int a4@<W5>, void *a5@<X7>, unsigned int a6@<W8>)
{
  v10 = a6 < 0x5A89CEC2;
  *a2 = (*a5 ^ v8) * a3 + v6 + (*a2 ^ v8) + v8 - (v9 & (2 * ((*a5 ^ v8) * a3 + v6 + (*a2 ^ v8))));
  v11 = a4 + 1174 * (a1 ^ 0x3200);
  v12 = v10 ^ (v11 < 0x5A89CEC2);
  v13 = v11 < a6;
  if (!v12)
  {
    v10 = v13;
  }

  return (*(v7 + 8 * ((v10 | (16 * v10)) ^ (a1 - 1155))))();
}

uint64_t sub_244804EB8@<X0>(char a1@<W2>, int a2@<W3>, int a3@<W8>)
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
  LODWORD(STACK[0x950]) = a3 - 2639;
  v4 = *(v3 + 8 * (((((a3 - 1304728154) & 0x4DC45F2D) + ((a3 - 2639) ^ 0x3844)) * (a1 & 1)) ^ (a3 + 3832)));
  STACK[0x7F0] = STACK[0x4F8];
  LODWORD(STACK[0x7FC]) = a2;
  v5 = STACK[0x4E8];
  LODWORD(STACK[0x64C]) = a2;
  v6 = LODWORD(STACK[0x720]);
  LODWORD(STACK[0x800]) = a2;
  return v4(v5, v6, 0);
}

uint64_t sub_244804FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x958]) = 0;
  LODWORD(STACK[0x960]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  LODWORD(STACK[0x8E0]) = 0;
  v11 = STACK[0x5FC];
  v12 = *(v10 + 8 * v8);
  STACK[0x870] = STACK[0x4D8];
  STACK[0x820] = STACK[0x4D0];
  LODWORD(STACK[0x880]) = STACK[0x5F8];
  LODWORD(STACK[0x838]) = STACK[0x4CC];
  LODWORD(STACK[0x888]) = STACK[0x638];
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x908]) = 1;
  LODWORD(STACK[0x860]) = 1;
  LODWORD(STACK[0x57C]) = a5;
  LODWORD(STACK[0x828]) = STACK[0x5E4];
  LODWORD(STACK[0x810]) = STACK[0x808];
  LODWORD(STACK[0x524]) = STACK[0x658];
  LODWORD(STACK[0x830]) = STACK[0x554];
  LODWORD(STACK[0x81C]) = STACK[0x5E8];
  LODWORD(STACK[0x850]) = STACK[0x550];
  LODWORD(STACK[0x560]) = v9;
  LODWORD(STACK[0x898]) = STACK[0x630];
  LODWORD(STACK[0x558]) = ((v11 - a8) << 6) - 1093398101 - ((((v11 - a8) << ((v8 - 48) ^ 0xD)) + 128) & 0x7DA82300) + 63;
  LODWORD(STACK[0x890]) = STACK[0x640];
  LODWORD(STACK[0x8A0]) = STACK[0x62C];
  LODWORD(STACK[0x8B0]) = STACK[0x63C];
  LODWORD(STACK[0x8A8]) = STACK[0x634];
  return v12();
}

uint64_t sub_2448050E4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(STACK[0x950]) = (v4 | 0x900) + 10490;
  v6 = *(v5 + 8 * (((((v4 | 0x900) + 2113828591) & 0xBFE5FFFD ^ 0x3DE47FF8) * (STACK[0x978] & 1)) ^ (v4 | 0x900)));
  LODWORD(STACK[0x878]) = 919223701;
  STACK[0x870] = STACK[0x4D8];
  STACK[0x820] = STACK[0x4D0];
  STACK[0x910] = STACK[0x398];
  STACK[0x868] = STACK[0x330];
  v7 = STACK[0x790];
  LODWORD(STACK[0x648]) = STACK[0x790];
  LODWORD(STACK[0x900]) = STACK[0x608];
  LODWORD(STACK[0x880]) = STACK[0x5F8];
  LODWORD(STACK[0x60C]) = STACK[0x720];
  LODWORD(STACK[0x838]) = STACK[0x4CC];
  LODWORD(STACK[0x930]) = v7;
  LODWORD(STACK[0x57C]) = STACK[0x7EC];
  LODWORD(STACK[0x828]) = STACK[0x5E4];
  LODWORD(STACK[0x810]) = STACK[0x808];
  LODWORD(STACK[0x524]) = a4;
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x830]) = STACK[0x554];
  LODWORD(STACK[0x81C]) = STACK[0x5E8];
  LODWORD(STACK[0x850]) = STACK[0x550];
  LODWORD(STACK[0x948]) = a4;
  LODWORD(STACK[0x644]) = STACK[0x7E0];
  return v6();
}

uint64_t sub_244805208@<X0>(int a1@<W0>, unint64_t a2@<X5>, unsigned int a3@<W8>)
{
  v8 = (a3 - 1038384637) | 0x300A;
  LODWORD(STACK[0x950]) = v8;
  v9 = *(STACK[0x940] + 8 * ((v8 + 1038368110) ^ a3 ^ (12692 * (a3 > 0xCFACB23E))));
  LODWORD(STACK[0x878]) = 919223703;
  STACK[0x448] = a2;
  STACK[0x428] = v3;
  STACK[0x910] = STACK[0x2C0];
  STACK[0x868] = STACK[0x398];
  LODWORD(STACK[0x454]) = v4;
  LODWORD(STACK[0x648]) = v7;
  LODWORD(STACK[0x900]) = STACK[0x608];
  LODWORD(STACK[0x880]) = STACK[0x5F8];
  LODWORD(STACK[0x888]) = STACK[0x638];
  LODWORD(STACK[0x930]) = STACK[0x400];
  LODWORD(STACK[0x898]) = STACK[0x630];
  LODWORD(STACK[0x57C]) = a1;
  LODWORD(STACK[0x4AC]) = v6;
  LODWORD(STACK[0x524]) = STACK[0x658];
  LODWORD(STACK[0x978]) = 1;
  LODWORD(STACK[0x81C]) = STACK[0x5E8];
  LODWORD(STACK[0x424]) = v5;
  LODWORD(STACK[0x890]) = STACK[0x640];
  LODWORD(STACK[0x948]) = v7;
  LODWORD(STACK[0x8A0]) = STACK[0x62C];
  LODWORD(STACK[0x8B0]) = STACK[0x63C];
  LODWORD(STACK[0x8A8]) = STACK[0x634];
  return v9();
}

uint64_t sub_244805400(uint64_t a1, unsigned int a2, int a3, int a4, unsigned int a5)
{
  v8 = v5 < a2;
  if (v8 == v6 + a4 < ((v7 + 10) ^ (v7 + a3) ^ a5))
  {
    v8 = v5 > v6 + a4;
  }

  return (*(STACK[0x940] + 8 * ((30 * !v8) ^ v7)))();
}

uint64_t sub_244805520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v15 = v13 ^ v12;
  LODWORD(STACK[0x970]) = v13 ^ v12;
  v16 = *STACK[0x688];
  v17 = *(STACK[0x6E0] + 56);
  v18 = v17 ^ 0xEFF5DE73;
  v19 = (2 * v17) & 0xDFEBBCE6;
  v20 = *(*STACK[0x6A8] + 20);
  LODWORD(STACK[0x72C]) = 854 * ((((v13 ^ v12) - 17378) | 0x458C) ^ 0x4DA2);
  v21 = (v20 << (86 * ((((v13 ^ v12) + 30) | 0x8C) ^ 0xA2) - 9)) & 0xFCB77FAE;
  v22 = v20 ^ 0x1A44028;
  v23 = STACK[0x6C8];
  v24 = ((*(STACK[0x6C8] + 37) >> 5) | (8 * *(STACK[0x6C8] + 37))) - ((16 * *(STACK[0x6C8] + 37)) & 0xFC0);
  v25 = ((v24 - 32) ^ 0xE0) - ((2 * ((v24 - 32) ^ 0xE0)) & 0x1E0) + 2098207728;
  v26 = (v16[336] >> 5) | (8 * v16[336]);
  v27 = v26 + (~(2 * v26) | 0xFFFFFF97) + 53;
  v28 = (((v24 - 32) ^ 0xE0) - ((2 * ((v24 - 32) ^ 0xE0)) & 0xE0) - 16) & 0xBF ^ (607161292 - ((31 - v24) & 0x40));
  v29 = ((2 * (v27 ^ 0x34)) & 0x1EE) + (v27 ^ 0x55E756C3);
  v30 = (1441224439 - v29) ^ (212 - (v27 ^ 0xE0)) ^ (v29 - 1441224439);
  v31 = ((v28 ^ 0xFFFFFF4F) - 607160899 + ((2 * v28) & 0x48611630 ^ 0x20)) ^ ((v25 ^ 0x82EFE40F) + 1);
  v32 = v30 - 1149191178 - ((2 * v30 + 424) & 0x77017636);
  v33 = v32 - 7;
  v34 = (v32 - 7) ^ 0xBB80BBF6;
  v35 = (((v31 - ((2 * v31) & 0xFA2037E0) + 2098207728) ^ v25) + 212) ^ 0xE2;
  if (((v32 + 25) & 0x10) != 0)
  {
    v36 = 16;
  }

  else
  {
    v36 = 240;
  }

  v37 = v36 + v34;
  v38 = *(&off_278E1E490 + (v15 ^ 0x4A54));
  v39 = ((v37 - 2 * (v37 & 0x1F ^ v34 & 4) + 27) ^ v33 ^ 0x49) + *(v38 + 530 + (v33 ^ 0xBB80BBF9));
  v40 = ((2 * ((*(STACK[0x6C8] + 188) >> 5) | (8 * *(STACK[0x6C8] + 188)))) & 0xA2) + (((*(STACK[0x6C8] + 188) >> 5) | (8 * *(STACK[0x6C8] + 188))) ^ 0xBDB67F51) + 1112113327;
  v41 = (*(v38 + 530 + v35) - 76) ^ 0xFFFFFFE8;
  LODWORD(STACK[0x810]) = v41 - ((2 * v41 - 116) & 0xFFFFFFAE);
  v42 = ((v40 + (v40 ^ 0xFFFFFF2B) + 1) ^ 0xFFFFFFF8) + v40;
  v43 = v42 + 1704895068 - ((2 * v42) & 0xCB3D457C) + 98;
  LODWORD(STACK[0x928]) = v43;
  v44 = *(v38 + 530 + (v43 ^ 0x659EA25C));
  STACK[0x840] = v38 + 530;
  v45 = v44 - 76;
  v46 = v23[67];
  HIDWORD(v47) = ((v39 >> 5) | (8 * v39)) ^ 4;
  LODWORD(v47) = (v39 << 27) ^ 0x70000000;
  v48 = v23[128];
  v49 = 8 * v48;
  LODWORD(STACK[0x870]) = ((v47 >> 27) ^ 0x66) - ((2 * ((v47 >> 27) ^ 0x66) - 116) & 0xFFFFFFBA);
  v50 = ((v48 >> 5) | 0xFFFFFFF0) - ((v48 >> 4) & 6);
  v51 = (v50 - 5) ^ 0xFFFFFFEB | (8 * v48 - 125) ^ 0xFFFFFF83;
  v52 = v51 + (~(2 * v51) | 0x59) + 84;
  v53 = v46 ^ 0x3A;
  v54 = ((2 * v52) & 0xFFFFFFF7 ^ 6) + (v52 ^ 0xFFFFFFFC);
  v55 = (v52 ^ 0x47) - ((2 * (v52 ^ 0x47)) & 0x1A6) + 1682979539;
  if ((v49 & 0xF8) == 0)
  {
    v55 = (((2 * v52) & 0xF7 ^ 6) + (v52 ^ 0xFC) - 123) - ((2 * (v54 - 123)) & 0x1A6) + 1682979539;
  }

  v56 = v55 & 0x64503B1D;
  v57 = v38 + 798;
  v58 = *(v38 + 798 + v53) ^ 0x6C;
  LODWORD(STACK[0x950]) = v58 - ((2 * v58 + 18) & 0x12);
  LODWORD(STACK[0x8E8]) = (v45 ^ 0xFFFFFFE8) - 4 * ((v45 ^ 0xFFFFFFE8) >> 1);
  v59 = v23[138];
  v60 = (123 - v54) ^ ((v52 & 0xFFFFFFFD ^ 0x31) + 76) ^ (v54 - 123 - (-v50 & 2));
  v61 = *(v38 + 798 + (v59 ^ 0x3A));
  v62 = *(v38 + 530 + ((v56 | (((2 * v52) & 0xF7 ^ 6) + (v52 ^ 0xFC) - 123 - ((2 * (v54 - 123)) & 0xA6) - 45) & 0xE2) ^ 0x64503A31u)) + (v52 ^ 0x33) + v60;
  v63 = ((v61 ^ -v61 ^ (-41 - (v61 ^ 0xFFFFFFD7))) - 41) ^ ((((v59 ^ 0x51) - (v59 ^ 0xFFFFFFEA)) ^ 0xFFFFFFFE) + (v59 ^ 0x51));
  v64 = v59 ^ 0xFFFFFFC6 ^ (v63 - ((2 * v63) & 0x2E) - 105);
  v65 = v18 + v19 + v22;
  v66 = ((v16[111] >> 2) | (v16[111] << 6)) + (~(v16[111] >> 1) | 0xFFFFFFCB) - 101;
  v257 = v65 - v21 == -241557861;
  LODWORD(STACK[0x7F0]) = v64 + ((76 - 2 * v64) | 0xFFFFFFB7);
  v67 = v38 + 12;
  v68 = *(v38 + 12 + (v66 ^ 0x76));
  STACK[0x938] = (v62 ^ 0xFFFFFFE8) - ((2 * (v62 ^ 0xFFFFFFE8) + 12) & 0x46) - 23;
  v69 = v16[338];
  LODWORD(STACK[0x960]) = v69;
  HIDWORD(v70) = ((v69 >> 1) & 0xFFFF807F | (v69 << 7)) ^ 0x73;
  LODWORD(v70) = ~(v69 << 7) << 24;
  v71 = v16[214];
  v72 = v16[29];
  LODWORD(STACK[0x958]) = v71;
  LODWORD(STACK[0x910]) = v72;
  LOBYTE(v56) = v72 + (v71 ^ 0x24) - 2 * (v72 & (v71 ^ 0x24));
  v73 = v16[10];
  LODWORD(STACK[0x900]) = v73;
  v74 = (v73 ^ 3) - ((v70 >> 31) ^ 9);
  v75 = v66 ^ (v68 - ((2 * v68) & 0x34) - 102);
  v76 = v23[200];
  v77 = *v23;
  LODWORD(STACK[0x930]) = v76;
  LODWORD(STACK[0x918]) = v77;
  v78 = v76 ^ v77 ^ 0x50 | v56;
  v79 = v16[193];
  v80 = v23[129];
  LODWORD(STACK[0x908]) = v80;
  LODWORD(STACK[0x948]) = v79;
  v81 = (v79 ^ 0x2A) + (v80 ^ 0x27) + ((2 * v79) ^ 0xAB);
  v82 = *(v38 + 798 + (((v62 ^ 0xE8) - ((2 * (v62 ^ 0xE8) + 12) & 0x46) - 23) ^ 0xF1));
  v83 = v16[226];
  LODWORD(STACK[0x920]) = v83;
  v84 = ((((v82 ^ 0x6C) - 103) ^ v83) & 0x10 | 0xFFFFFFE3) ^ (((v82 ^ 0x6C) - 103) ^ v83) & 0xFFFFFFE3 | (((v82 ^ 0x6C) - 103) ^ v83) & 0xC;
  v85 = (v84 ^ 0xFFFFFF80) - 4 * (v84 >> 1);
  v86 = (v75 ^ 0x1F) - ((2 * (v75 ^ 0x1F) + 54) & 0xFFFFFFB4);
  LOBYTE(v75) = 1 - v85;
  v87 = ((v85 - 2) & 0xFFFFFFD5 ^ 0x7A) & ((1 - v85) | 0xFFFFFFD5);
  v88 = v87 - 2 * (v87 & 0x43 ^ v75 & 2);
  HIDWORD(v70) = (v88 + 69) ^ 1;
  LODWORD(v70) = ((v88 + 65) ^ 0x40) << 24;
  v89 = v23[111];
  LODWORD(STACK[0x8D8]) = v89;
  LOBYTE(v87) = v89 ^ 0x71;
  v90 = v16[252];
  LODWORD(STACK[0x8F8]) = v90;
  v91 = v87 - (v90 ^ 0xB) - ((2 * (v87 - (v90 ^ 0xB))) & 0x2E);
  v92 = (v70 >> 26) - ((2 * (v70 >> 26)) & 0x20) + 16;
  v93 = *(v38 + 12 + (((v70 >> 26) - ((2 * (v70 >> 26)) & 0x20) + 16) ^ 0xFCLL));
  v94 = v23[164];
  LODWORD(STACK[0x8E0]) = v94;
  HIDWORD(v70) = v94 ^ 2;
  LODWORD(v70) = (v94 ^ 0x24) << 24;
  v95 = (v93 - ((2 * v93) & 0x20) + 16) ^ v92;
  v96 = (v70 >> 26) - ((2 * (v70 >> 26)) & 0x18);
  v97 = v257;
  LODWORD(STACK[0x868]) = v97;
  v257 = v61 == 0;
  v98 = v23[51];
  LODWORD(STACK[0x8C8]) = v98;
  v99 = v98 ^ 0x8D;
  v100 = v16[22];
  LODWORD(STACK[0x8F0]) = v100;
  v101 = v78 | (v81 + 1) | ((v100 ^ 0x79) + v99 + ((2 * v100) ^ 0xD) + 1) | v74;
  v102 = (v91 + 23) & 0x3C | 3;
  if (!v257)
  {
    v102 = v91 + 23;
  }

  v103 = v101 | (v91 + 23) & 0xC3 ^ 3 | v102 ^ 0x17 | ((v95 ^ 0x1F) + 27);
  v104 = v16[49];
  LODWORD(STACK[0x8D0]) = v104;
  v105 = v23[123];
  LODWORD(STACK[0x8B8]) = v105;
  v106 = (v105 ^ 0xCB) - (v104 ^ 0x6D);
  v107 = *(v67 + ((v96 - 116) ^ 0x60)) ^ (v96 - 116);
  LODWORD(STACK[0x978]) = v86 + 117;
  v108 = v107 ^ 0x77;
  if ((v86 + 117) == 90)
  {
    v108 = 27;
  }

  v109 = (v107 ^ 0x88) + 2 * (v108 & (v107 ^ 0x13));
  v110 = v23[54];
  v111 = v23[64];
  LODWORD(STACK[0x8B0]) = v110;
  LODWORD(STACK[0x8A0]) = v111;
  v112 = (v111 ^ 0xF3) - (v110 ^ 0x40);
  v113 = v23[139];
  LODWORD(STACK[0x8C0]) = v113;
  v114 = ((2 * v113) & 0x90) - v113;
  v115 = v23[148];
  LODWORD(STACK[0x880]) = v115;
  v116 = v114 + (v115 ^ 0xF9);
  v117 = v23[99];
  LODWORD(STACK[0x8A8]) = v117;
  v118 = v117 ^ 0x2E ^ v109;
  v119 = v16[280];
  STACK[0x888] = v119;
  v120 = *(v57 + (v119 ^ 4)) ^ 0x6C;
  v121 = v23[116];
  STACK[0x898] = v121;
  v122 = *(v57 + (v121 ^ 0xF4)) & 0xEF ^ 0x54 ^ (*(v57 + (v121 ^ 0xF4)) & 0x10 | 0xC7);
  v123 = v120 - ((2 * v120 + 50) & 0xFFFFFF94) - 29;
  LODWORD(v121) = v23[40];
  v124 = v16[365];
  v125 = v16[239];
  LODWORD(STACK[0x860]) = v124;
  LODWORD(STACK[0x878]) = v125;
  v126 = v124 & 0x7F ^ 0xBE ^ ((v124 & 0x80) + v125);
  LODWORD(STACK[0x890]) = v121;
  HIDWORD(v127) = v123 ^ ~v121;
  LODWORD(v127) = (((v123 ^ v121 ^ 0x17) - ((2 * (v123 ^ v121 ^ 0x17)) & 0xC8) + 100) ^ 0x66666666) << 24;
  v128 = (v127 >> 26) - ((2 * (v127 >> 26)) & 0x16) + 11;
  v129 = ((v127 >> 26) - ((2 * (v127 >> 26)) & 0x16) + 11) ^ 0xE7;
  HIDWORD(v127) = v128 ^ 0xA;
  LODWORD(v127) = (v128 ^ 0x60) << 24;
  v130 = (v127 >> 28) - ((2 * (v127 >> 28)) & 0xFFFFFFB2) + 89;
  HIDWORD(v127) = v130 ^ 9;
  LODWORD(v127) = (v130 ^ 0x55555555) << 24;
  v131 = v127 >> 28;
  v132 = *(v67 + v129);
  HIDWORD(v127) = v132 & 0xD ^ 5 ^ v131;
  LODWORD(v127) = (v131 ^ 0x60) << 24;
  LODWORD(v121) = v16[160];
  LODWORD(STACK[0x850]) = v121;
  LOBYTE(v125) = (v121 ^ 0x7E) + v122;
  v133 = ((2 * (v127 >> 28)) & 0xFFFFFFBA ^ 0x28) + ((v127 >> 28) ^ 0xFFFFFFCB);
  v134 = v132 >> 4;
  v135 = ((v134 ^ 0xFFFFFFF8) + 1 + 2 * ((v133 + 3) & (v134 ^ 7))) ^ ((v134 ^ 0xFFFFFFF8) + 1);
  LODWORD(v121) = v133 + ((v132 >> 4) ^ 0x23 ^ (v135 - ((2 * v135) & 0x48) + 36));
  v136 = v16[297];
  v137 = v16[269];
  LODWORD(STACK[0x858]) = v136;
  LODWORD(STACK[0x830]) = v137;
  v138 = v137 ^ v136;
  v139 = v23[184];
  LODWORD(STACK[0x820]) = v139;
  v140 = (v139 ^ 1) - ((2 * v139) & 0xD6 ^ 2);
  v141 = *(v67 + ((((v138 >> 2) | (v138 << 6)) - ((v138 >> 1) & 0x62) + 49) ^ 0xCFLL)) ^ (((v138 >> 2) | (v138 << 6)) - ((v138 >> 1) & 0x62) + 49);
  LOBYTE(v139) = ((v121 - 93) ^ (16 * v132) & 0x20) >> 4;
  LOBYTE(v139) = v139 & 2 ^ (v139 | (16 * (v121 - 93)) | 2);
  LODWORD(v121) = v16[327];
  v142 = v23[24];
  LODWORD(STACK[0x81C]) = v142;
  LODWORD(STACK[0x84C]) = v121;
  STACK[0x790] = v57;
  v143 = (v121 + (v142 ^ 0x7B) + 1) | v112 | v126 | (v116 - 72) | v106 | (v125 + 104) | v118 | (v139 + 27) | ((*(v57 + (v103 ^ 0x3ALL)) ^ 0x6C) - 103);
  LODWORD(v121) = v16[133];
  LODWORD(STACK[0x838]) = v121;
  HIDWORD(v127) = v121 ^ 1;
  LODWORD(v127) = (v121 ^ 0xE0) << 24;
  v144 = v127 >> 26;
  v145 = ((2 * v141) & 0x36 ^ 0x30) + (v141 ^ 0x27);
  LODWORD(v121) = v23[176];
  LODWORD(STACK[0x828]) = v121;
  HIDWORD(v127) = ~((v121 >> 6) | (4 * v121));
  LODWORD(v127) = (v121 << 26) ^ 0xE7FFFFFF;
  v146 = (v127 >> 26) - ((2 * (v127 >> 26)) & 0x5A);
  v147 = *(v57 + (v140 + 107));
  v148 = ((2 * (v147 - ((2 * v147) & 0xFFFFFFD8) + 108)) & 0x6E) + ((v147 - ((2 * v147) & 0xFFFFFFD8) + 108) ^ 0x37);
  v149 = v145 - ((2 * v145) & 0x42) + 33;
  if (v138 == 227)
  {
    v150 = 33;
  }

  else
  {
    v150 = v145 - ((2 * v145) & 0x42) + 33;
  }

  v151 = (v143 + (~(2 * v143) | 0xBD) + 34) ^ v150;
  v152 = v38 + 12;
  v153 = *(v67 + (v144 ^ 0xECLL)) ^ ((v144 ^ 0xEA) + ((2 * (v144 & 0x75)) ^ 0xC0) + ((4 * (v144 & 0x75)) ^ 0x7F) - 10);
  v154 = v23[112];
  LODWORD(STACK[0x808]) = v154;
  v155 = v154 ^ 0x4A;
  v156 = v16[169];
  LODWORD(STACK[0x7FC]) = v156;
  v157 = (v156 ^ 0x1F) - v155;
  v158 = v146 + 45;
  v159 = (v146 + 45) & 8 ^ 8;
  v257 = ((v148 + 2) & v159) == 0;
  LOBYTE(v159) = ((v159 + v148 + 98) ^ 0x3E) + ((2 * (v159 + v148 + 98)) & 0x7C);
  v160 = (v158 & 8 ^ 0x79) + 2 * (v158 & 8) + v148 - 17;
  v161 = v159 - 48;
  if (!v257)
  {
    v161 = v160;
  }

  v162 = v158 & 0xF7 ^ 0x15 ^ (v161 - 14);
  v163 = v16[295];
  v164 = (2 * v163) & 8;
  v165 = v23[83];
  LODWORD(STACK[0x7EC]) = v163;
  LODWORD(STACK[0x800]) = v165;
  HIDWORD(v167) = v165 ^ (v163 - v164 + 4) ^ 0x1E;
  LODWORD(v167) = ((v163 + ~v164 - 123) ^ v165) << 24;
  v166 = v167 >> 31;
  v168 = LODWORD(STACK[0x810]) - 99;
  v169 = LODWORD(STACK[0x7F0]) - 66;
  LODWORD(STACK[0x7D8]) = v169;
  LODWORD(STACK[0x810]) = v168;
  v170 = (v169 ^ 0x9D) - (v168 ^ 5) - ((2 * ((v169 ^ 0x9D) - (v168 ^ 5))) & 0x30);
  v171 = v16[159];
  HIDWORD(v167) = ~v166;
  LODWORD(v167) = (v166 ^ 0x99999999) << 24;
  v172 = v23[9];
  LODWORD(STACK[0x7E0]) = v172;
  LODWORD(STACK[0x7F0]) = v171;
  v173 = v171 ^ -v171 ^ (-3 - (v171 ^ 0xFFFFFFFD));
  v174 = v38 + 273;
  v175 = *(v38 + 273 + ((65 * ((v167 >> 25) ^ 0xCC | v157 | ((v172 ^ 0x94) - v153 - 27) | v149 ^ 0x21 | v162 | (v170 + 24) ^ 0x18 | v151)) ^ 0x7DLL));
  v176 = v175 - ((2 * v175 + 4) & 0x1E) + 17;
  v177 = ((4 * v176) & 0xFFFFFFB8 ^ 0x7C) - ((2 * ((4 * v176) & 0xFFFFFFB8 ^ 0x7C)) & 0x28);
  v178 = (v176 ^ 0xF) & (126 - v175);
  v179 = v23[76];
  LODWORD(STACK[0x7D0]) = v179;
  v180 = (v179 ^ 0xFFFFFFFA) - v173;
  v181 = v16[409];
  v182 = v16[190];
  LODWORD(STACK[0x7DC]) = v181;
  LODWORD(STACK[0x7C8]) = v182;
  LOBYTE(v173) = v181 ^ v182 ^ 0x65;
  v183 = ((((v177 + 23) ^ 0x17) - (v176 ^ 0xFFFFFF98 ^ (v177 + 23))) ^ (-2 * v178)) + ((v177 + 23) ^ 0x17);
  v184 = 2 * (v183 & 0x3F) + (v183 ^ 0x3F) - ((2 * (2 * (v183 & 0x3F) + (v183 ^ 0x3F)) + 2) & 0x50) - 23;
  v185 = ((2 * v184) & 0xFFFFFFDF) + (v184 ^ 0x6F);
  v186 = v23[142];
  v187 = v16[127];
  LODWORD(STACK[0x7D4]) = v187;
  v188 = v187 ^ 0xFFFFFFDA;
  v189 = v23[190];
  LODWORD(STACK[0x7BC]) = v189;
  v190 = (v189 ^ 0xFFFFFFCC) - v188 - ((2 * ((v189 ^ 0xFFFFFFCC) - v188)) & 0xFFFFFFF3);
  v191 = *(v174 + ((65 * v173) ^ 0x7DLL));
  v192 = v191 - ((2 * v191 + 4) & 0x7E);
  HIDWORD(v167) = v185 + 17;
  LODWORD(v167) = (v185 << 24) - 1862270976;
  v193 = v167 >> 30;
  v194 = (-264 - 4 * v192) | 0x44;
  v195 = ((2 * (v186 ^ 0xFFFFFFAF)) & 0x2E) + ((65 * (v186 ^ 0xFFFFFFAF)) ^ 0xFFFFFF97) + 105;
  LODWORD(STACK[0x7C4]) = v186;
  HIDWORD(v167) = ~v186;
  LODWORD(v167) = v195 << 24;
  v196 = v167 >> 26;
  v197 = v16[367];
  LODWORD(STACK[0x7C0]) = v197;
  HIDWORD(v167) = v197 ^ 0x55555555;
  LODWORD(v167) = (v197 ^ 0x40) << 24;
  v198 = v167 >> 29;
  v192 += 65;
  v199 = ((v194 ^ v192) >> 6) ^ 2 | (v180 + 3) | v193;
  v200 = 4 * (v194 ^ ~v192) - ((8 * (v194 ^ ~v192)) & 0xFFFFFFB0) - 37;
  v201 = v199 - ((2 * v199) & 0x62) - 79;
  v202 = v190 + 121;
  v203 = (v190 + 121) ^ 0xFFFFFFC8 ^ (v201 ^ 0xFFFFFFB1 | v200 ^ 0x7B);
  HIDWORD(v167) = v196 ^ 0xFFFFFFF3;
  LODWORD(v167) = (v196 ^ 0x40) << 24;
  v204 = v167 >> 30;
  if (v200 != 123)
  {
    v201 = v203;
  }

  v205 = v204 ^ 0xB0;
  v206 = v198 ^ 0x36;
  v207 = STACK[0x840];
  LODWORD(v206) = (*(STACK[0x840] + v206) - 76) ^ 0x17;
  v208 = *(v174 + v205) + ((122 - 2 * *(v174 + v205)) | 0xFFFFFF9B);
  v209 = v16[391];
  LODWORD(STACK[0x7A8]) = v209;
  LODWORD(v206) = (v209 ^ 0xFFFFFFD4) + v206;
  v210 = LODWORD(STACK[0x870]) - 93;
  LODWORD(STACK[0x870]) = v210;
  v211 = v16[309];
  LODWORD(STACK[0x7AC]) = v211;
  v212 = (v211 ^ 0xFFFFFFC9) - (v210 ^ 0x66);
  v213 = (4 * (v208 + 53)) & 0xFFFFFFB8 ^ (v208 + 53);
  v214 = v23[166];
  HIDWORD(v216) = (v214 >> 2) & 0x38 ^ 0x1E;
  LODWORD(v216) = (~(v214 << 6) & 0x40) << 24;
  v215 = v216 >> 30;
  v217 = v23[49];
  LODWORD(STACK[0x7A0]) = v217;
  v218 = *(v174 + ((65 * (v217 ^ 0x84)) ^ 0x7DLL));
  v219 = (((4 * v218 + 8) | 0x47) - ((2 * (4 * v218 + 8)) | 0xFFFFFF88) - 4) ^ (125 - v218);
  HIDWORD(v216) = v213 ^ 0x3A;
  LODWORD(v216) = v213 << 24;
  LODWORD(v205) = (LODWORD(STACK[0x978]) ^ 0xFFFFFFB4) - ((v216 >> 30) ^ 0xFFFFFFB1);
  LODWORD(STACK[0x7B0]) = v214;
  v220 = v16[83];
  LODWORD(STACK[0x7A4]) = v220;
  v221 = *(v174 + ((65 * (v220 ^ 0x85)) ^ 0x16) - (((-126 * (v220 ^ 0xFFFFFF85)) ^ 4) & 0xD6) + 107);
  v222 = v221 + ((-6 - 2 * v221) | 0x5B);
  v223 = (v215 ^ 0xFFFFFFD9 | v214 & 0x1E) ^ ((((v219 ^ 0x28) >> (v134 & 6 ^ 6)) >> (v134 & 6)) | (4 * v219) ^ 0xFFFFFFA0);
  v224 = v16[43];
  LODWORD(STACK[0x78C]) = v224;
  v225 = v16[69];
  LODWORD(STACK[0x79C]) = v225;
  v226 = (v225 ^ 0x7F) + 2 * v225 + (v224 ^ 0x46);
  v227 = (4 * (v222 - 43)) & 0xFFFFFFB8 ^ (v222 - 43);
  HIDWORD(v216) = (v227 & 0x3B | (v222 - 43) & 4) ^ 0x36;
  LODWORD(v216) = v227 << 24;
  v228 = v16[329];
  LODWORD(STACK[0x768]) = v228;
  v229 = 2 * (((v228 ^ 0x5F) - (v216 >> 30)) & 0x1F) + (((v228 ^ 0x5F) - (v216 >> 30)) ^ 0xFFFFFF9F);
  HIDWORD(v216) = v229 + 1;
  LODWORD(v216) = (v229 << 24) + 1627389952;
  v230 = v16[378];
  LODWORD(STACK[0x784]) = v230;
  v231 = v230 - ((2 * v230) & 0x192) + 73 - 4 * ((v230 - ((2 * v230) & 0x192u) + 73) >> 1);
  v232 = v16[215];
  STACK[0x778] = v232;
  v233 = STACK[0x790];
  v234 = *(STACK[0x790] + (v232 ^ 9));
  v235 = v16[218];
  STACK[0x770] = v235;
  v236 = *(v152 + (((v216 >> 26) - ((2 * (v216 >> 26)) & 0x3C) + 30) ^ 0xF2));
  v237 = (v236 - ((2 * v236) & 0x3C) + 30) ^ ((v216 >> 26) - ((2 * (v216 >> 26)) & 0x3C) + 30) ^ 0x1F;
  v238 = (*(v233 + (v235 ^ 0x3C)) ^ 0x6C) - 103;
  LODWORD(v233) = v23[57];
  LODWORD(STACK[0x788]) = v233;
  v239 = v238 ^ v233 ^ 0xFFFFFFD0;
  LODWORD(v233) = v16[407];
  LODWORD(STACK[0x790]) = v233;
  v240 = v202 ^ 0x79 | (v226 + 2) | (v206 + 59) | v233 ^ ((v234 ^ 0x6C) - 103) ^ 0xFFFFFFC0 | v205 | v239 | v212 | v223 ^ 0xE | (v237 - ((2 * v237 + 54) & 0x28) + 47) ^ 0x14 | v201 ^ 0xFFFFFFB1;
  v241 = v240 - ((2 * v240) & 0x10) - 120;
  LODWORD(v233) = v23[130];
  LODWORD(v235) = v23[214];
  LODWORD(STACK[0x760]) = v233;
  LODWORD(STACK[0x758]) = v235;
  v242 = v235 ^ v233 ^ 0xFFFFFF8E;
  v243 = (v242 - (v235 ^ v233 ^ v241 ^ 6)) ^ ((v241 ^ 0x77) + 1);
  v244 = (((v243 - ((2 * v243) & 0x10) - 120) ^ v241) + v242) ^ (v241 ^ 0xFFFFFF88) & v242;
  LOBYTE(v242) = STACK[0x928] & 5;
  LODWORD(v233) = LODWORD(STACK[0x8E8]) + 56;
  LODWORD(STACK[0x928]) = v233;
  v245 = (v231 - 2) ^ v233;
  LODWORD(v233) = v23[146];
  LODWORD(STACK[0x738]) = v233;
  v246 = v233 ^ 0x29;
  LODWORD(v233) = v16[374];
  LODWORD(STACK[0x750]) = v233;
  v247 = (v245 | v233 ^ v246 | v244) - ((2 * (v245 | v233 ^ v246 | v244)) & 0x64) - 78;
  LODWORD(v235) = v23[6];
  LODWORD(v233) = v16[413];
  LODWORD(STACK[0x8E8]) = v235;
  v248 = ((v247 ^ 0xFFFFFFB2) & (v233 ^ v235 ^ 0xFFFFFFAC)) + (v233 ^ v235 ^ v247 ^ 0x1E);
  LODWORD(v235) = v23[7];
  v249 = v23[212];
  LODWORD(STACK[0x748]) = v235;
  LODWORD(STACK[0x734]) = v249;
  v250 = (v248 | v235 ^ v249 ^ 0x1A) - 2 * ((v248 | v235 ^ v249 ^ 0x1A) & 0x3F);
  v251 = ((v250 << 6) + 4416) ^ ((((v250 + 63) ^ 0x3F) >> (v132 & 2)) >> (v132 & 2 ^ 2));
  LODWORD(v235) = v16[46];
  v252 = v23[79];
  LODWORD(STACK[0x740]) = v235;
  LOBYTE(v246) = v252 ^ v235;
  v253 = (v252 ^ v235 ^ 0x1C) >> (v242 ^ 4);
  LODWORD(v235) = v23[121];
  LODWORD(STACK[0x730]) = v235;
  HIDWORD(v216) = v235 ^ 1;
  LODWORD(v216) = (v235 ^ 4) << 24;
  v254 = *(v152 + (((v216 >> 26) - ((2 * (v216 >> 26)) & 0xA2) - 47) ^ 0x3DLL)) ^ ((v216 >> 26) - ((2 * (v216 >> 26)) & 0x7FA2) - 47);
  LOBYTE(v251) = (((*(v152 + (v251 ^ 0xACLL)) + (~(2 * *(v152 + (v251 ^ 0xACLL))) | 0xBD) - 94) ^ v251 ^ 0xFE) + 27) | (((*(v207 + (((v253 >> (v242 ^ 1)) | ((8 * v246) ^ 0xE0) & 0xF8) ^ 0x36)) - 76) ^ 0xE8) - 58);
  v255 = ((v254 ^ (2 * v254) & 0x36 ^ 0xFFFFFFC1) + 2 * (((2 * v254) & 0x36 ^ 0x14) & (v254 ^ 0x14))) ^ ((v16[381] ^ -v16[381] ^ (-118 - (v16[381] ^ 0xFFFFFF8A))) - 118);
  LOBYTE(v251) = v251 - ((2 * v251) & 0x68) - 76;
  LOBYTE(v251) = 2 * ((v251 ^ 0xB4 | v255) & 0x3F) + ((v251 ^ 0xB4 | v255) ^ 0xBF) + 2 * ((v251 ^ 0x34 | v255) - (2 * ((v251 ^ 0xB4 | v255) & 0x3F) + ((v251 ^ 0xB4 | v255) ^ 0xBF))) - 65;
  v256 = v251 - ((2 * v251) & 0xBA) + 93;
  if ((v195 & 0xFC) != 0)
  {
    v256 ^= v16[114] ^ (LOBYTE(STACK[0x950]) - 94) ^ 0x1D;
  }

  v257 = (v16[114] ^ (LOBYTE(STACK[0x950]) - 94)) == 0x1D && v256 == 93;
  v258 = v257;
  v259 = (14 * (STACK[0x868] & v258)) ^ LODWORD(STACK[0x970]);
  STACK[0x6B48] = v14;
  LODWORD(STACK[0x998]) = a12;
  return (*(STACK[0x940] + 8 * v259))();
}

uint64_t sub_244806B4C(uint64_t a1, int a2, int a3, int a4, unsigned int a5, uint64_t a6, int a7, char a8)
{
  v19 = *(v18 + (a3 + v8));
  v20 = (v9 ^ (2 * v15)) - (v19 ^ v10) - (v9 & (2 * ((v9 ^ (2 * v15)) - (v19 ^ v10)))) + a7;
  v21 = v20 ^ v12;
  if ((v20 & (v13 & v17 ^ a4)) == 0xD6)
  {
    v21 = a8;
  }

  *(v18 + (a3 + v8)) = v21 ^ v19;
  v22 = a3 + a2 < a5;
  if (a5 < v16 != a3 + a2 < v16)
  {
    v22 = a5 < v16;
  }

  return (*(STACK[0x940] + 8 * ((!v22 * v14) ^ v11)))();
}

uint64_t sub_244806BD4@<X0>(char a1@<W0>, char a2@<W8>, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v7[329] = STACK[0x768];
  v12 = STACK[0x6C8];
  v12[24] = STACK[0x81C];
  v7[10] = STACK[0x900];
  v12[111] = STACK[0x8D8];
  v7[29] = STACK[0x910];
  v7[269] = STACK[0x830];
  v12[184] = STACK[0x820];
  v13 = LODWORD(STACK[0x978]) ^ 0x5A;
  v14 = LODWORD(STACK[0x7D8]) ^ 0x24;
  v12[128] = STACK[0x938] ^ 0x36 ^ ((v8 + 83) | 0x15);
  v7[413] = a2;
  v12[51] = STACK[0x8C8];
  v12[148] = STACK[0x880];
  v12[164] = STACK[0x8E0];
  v12[79] = v9;
  v12[123] = STACK[0x8B8];
  v7[365] = STACK[0x860];
  v12[129] = STACK[0x908];
  v7[391] = STACK[0x7A8];
  v12[49] = STACK[0x7A0];
  *v12 = STACK[0x918];
  v12[64] = STACK[0x8A0];
  v7[280] = STACK[0x888];
  v7[169] = STACK[0x7FC];
  v12[9] = STACK[0x7E0];
  v12[214] = STACK[0x758];
  v12[190] = STACK[0x7BC];
  v7[378] = STACK[0x784];
  v7[190] = STACK[0x7C8];
  v12[121] = STACK[0x730];
  v12[76] = STACK[0x7D0];
  v7[111] = v13;
  v12[146] = STACK[0x738];
  v7[309] = STACK[0x7AC];
  v7[215] = STACK[0x778];
  v12[212] = STACK[0x734];
  v7[295] = STACK[0x7EC];
  v7[218] = STACK[0x770];
  v7[114] = a1;
  v7[43] = STACK[0x78C];
  v12[138] = v14;
  v7[160] = STACK[0x850];
  v12[200] = STACK[0x930];
  v7[239] = STACK[0x878];
  v12[130] = STACK[0x760];
  v7[327] = STACK[0x84C];
  v7[226] = STACK[0x920];
  v12[54] = STACK[0x8B0];
  v7[49] = STACK[0x8D0];
  v7[214] = STACK[0x958];
  v7[374] = STACK[0x750];
  v12[166] = STACK[0x7B0];
  v12[176] = STACK[0x828];
  v12[116] = STACK[0x898];
  v12[142] = STACK[0x7C4];
  v7[367] = STACK[0x7C0];
  v7[133] = STACK[0x838];
  v7[22] = STACK[0x8F0];
  v12[112] = STACK[0x808];
  v12[40] = STACK[0x890];
  v12[99] = STACK[0x8A8];
  v7[252] = STACK[0x8F8];
  v7[381] = v6;
  v12[6] = STACK[0x8E8];
  v12[139] = STACK[0x8C0];
  v12[7] = STACK[0x748];
  v7[193] = STACK[0x948];
  v12[67] = v10 ^ 9;
  v7[297] = STACK[0x858];
  v7[69] = STACK[0x79C];
  v7[159] = STACK[0x7F0];
  v12[57] = STACK[0x788];
  v12[188] = LODWORD(STACK[0x928]) ^ 0xFE;
  v7[127] = STACK[0x7D4];
  v7[409] = STACK[0x7DC];
  v7[338] = STACK[0x960];
  v7[83] = STACK[0x7A4];
  v15 = LODWORD(STACK[0x810]) ^ 0xD7;
  v7[46] = STACK[0x740];
  v16 = LODWORD(STACK[0x870]) ^ 0xDDDDDDDD;
  v12[83] = STACK[0x800];
  v18 = a6 == ((v8 - 2093801259) & 0x7CCC9F7F ^ 0x4EC76B4B) || v11 == 0;
  v12[37] = v15;
  v7[336] = v16;
  v7[407] = STACK[0x790];
  return (*(STACK[0x940] + 8 * ((28 * v18) ^ v8)))();
}

uint64_t sub_244806EDC(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v8 = *STACK[0x688];
  LOBYTE(STACK[0xB320]) = a3[189] - ((2 * a3[189]) & 0x88) - 60;
  LOBYTE(STACK[0xB321]) = a3[19] - ((2 * a3[19]) & 0x88) - 60;
  LOBYTE(STACK[0xB322]) = v8[41] - ((2 * v8[41]) & 0x88) - 60;
  LOBYTE(STACK[0xB323]) = a3[167] - ((2 * a3[167]) & 0x88) - 60;
  LOBYTE(STACK[0xB324]) = v8[86] + (~(2 * v8[86]) | 0x77) - 59;
  LOBYTE(STACK[0xB325]) = v8[379] - ((2 * v8[379]) & 0x88) - 60;
  LOBYTE(STACK[0xB326]) = a3[211] - ((2 * a3[211]) & 0x88) - 60;
  LOBYTE(STACK[0xB327]) = v8[126] - ((2 * v8[126]) & 0x88) - 60;
  LOBYTE(STACK[0xB328]) = a3[85] - ((2 * a3[85]) & 0x88) - 60;
  LOBYTE(STACK[0xB329]) = a3[136] - ((2 * a3[136]) & 0x88) - 60;
  LOBYTE(STACK[0xB32A]) = a3[154] - ((2 * a3[154]) & 0x88) - 60;
  LOBYTE(STACK[0xB32B]) = v8[213] - ((2 * v8[213]) & 0x88) - 60;
  LOBYTE(STACK[0xB32C]) = v8[233] - ((2 * v8[233]) & 0x88) - 60;
  LOBYTE(STACK[0xB32D]) = v8[7] - ((2 * v8[7]) & 0x88) - 60;
  LOBYTE(STACK[0xB32E]) = a3[199] - ((2 * a3[199]) & 0x88) - 60;
  LOBYTE(STACK[0xB32F]) = v8[145] - ((2 * v8[145]) & 0x88) - 60;
  LOBYTE(STACK[0xB330]) = v8[262] + (~(2 * v8[262]) | 0x77) - 59;
  LOBYTE(STACK[0xB331]) = a3[183] - ((2 * a3[183]) & 0x88) - 60;
  LOBYTE(STACK[0xB332]) = v8[188] - ((2 * v8[188]) & 0x88) - 60;
  v9 = (a3[132] >> 3) | (32 * a3[132]);
  v10 = (v9 - ((2 * v9) & 0x42) + 33) & 0x7F ^ ((v9 - ((2 * v9) & 0x42) + 33) & 0x80 | 0x4E) ^ 0x3C;
  v11 = *(&off_278E1E490 + (a6 - 2939));
  STACK[0x7E0] = v11 - 2;
  LOBYTE(STACK[0xB333]) = (*(v11 - 2 + v10) - 66) ^ 0x99;
  LOBYTE(STACK[0xB334]) = v8[237] + (~(2 * v8[237]) | 0x77) - 59;
  LOBYTE(STACK[0xB335]) = v8[227] - ((2 * v8[227]) & 0x88) - 60;
  LOBYTE(STACK[0xB336]) = v8[255] - ((2 * v8[255]) & 0x88) - 60;
  LOBYTE(STACK[0xB337]) = v8[85] - ((2 * v8[85]) & 0x88) - 60;
  LOBYTE(STACK[0xB338]) = a3[93] - ((2 * a3[93]) & 0x88) - 60;
  LOBYTE(STACK[0xB339]) = v8[286] - ((2 * v8[286]) & 0x88) - 60;
  LOBYTE(STACK[0xB33A]) = a3[52] - ((2 * a3[52]) & 0x88) - 60;
  LOBYTE(STACK[0xB33B]) = a3[113] + (~(2 * a3[113]) | 0x77) - 59;
  LOBYTE(STACK[0xB33C]) = a3[201] - ((2 * a3[201]) & 0x88) - 60;
  v12 = a3[4] - ((2 * a3[4]) & 0x88) - 60;
  LOBYTE(STACK[0xB33D]) = a3[4] - ((2 * a3[4]) & 0x88) - 60;
  LOBYTE(STACK[0xB33E]) = v8[320] - ((2 * v8[320]) & 0x88) - 60;
  LOBYTE(STACK[0xB33F]) = v8[19] - ((2 * v8[19]) & 0x88) - 60;
  LOBYTE(STACK[0xB340]) = v8[248] + (~(2 * v8[248]) | 0x77) - 59;
  LOBYTE(STACK[0xB341]) = v8[287] - ((2 * v8[287]) & 0x88) - 60;
  LOBYTE(STACK[0xB342]) = v8[288] - ((2 * v8[288]) & 0x88) - 60;
  v13 = v8[101] - ((2 * v8[101]) & 0xFF88) - 60;
  LODWORD(STACK[0x828]) = v13;
  LOBYTE(STACK[0xB343]) = v13;
  LOBYTE(STACK[0xB344]) = a3[100] - ((2 * a3[100]) & 0x88) - 60;
  LOBYTE(STACK[0xB345]) = a3[162] - ((2 * a3[162]) & 0x88) - 60;
  LOBYTE(STACK[0xB346]) = v8[408] - ((2 * v8[408]) & 0x88) - 60;
  LODWORD(v8) = v8[172] - ((2 * v8[172]) & 0xFF88);
  STACK[0x978] = v11 - 12;
  LODWORD(STACK[0x958]) = v8 - 60;
  v14 = *(v6 + 8 * a6);
  LODWORD(STACK[0x898]) = LOBYTE(STACK[0xB323]);
  LODWORD(STACK[0x880]) = LOBYTE(STACK[0xB321]);
  LODWORD(STACK[0x8E0]) = LOBYTE(STACK[0xB32E]);
  LODWORD(STACK[0x888]) = LOBYTE(STACK[0xB320]);
  LODWORD(STACK[0x890]) = LOBYTE(STACK[0xB322]);
  LODWORD(STACK[0x8D8]) = LOBYTE(STACK[0xB325]);
  LODWORD(STACK[0x8C8]) = LOBYTE(STACK[0xB32A]);
  LODWORD(STACK[0x8D0]) = LOBYTE(STACK[0xB326]);
  STACK[0x8A8] = LOBYTE(STACK[0xB333]);
  LODWORD(STACK[0x8A0]) = LOBYTE(STACK[0xB329]);
  LODWORD(STACK[0x8F0]) = LOBYTE(STACK[0xB327]);
  LODWORD(STACK[0x8B8]) = LOBYTE(STACK[0xB32B]);
  LODWORD(STACK[0x8B0]) = LOBYTE(STACK[0xB328]);
  LODWORD(STACK[0x8F8]) = LOBYTE(STACK[0xB324]);
  LODWORD(STACK[0x910]) = LOBYTE(STACK[0xB32F]);
  LODWORD(STACK[0x8C0]) = LOBYTE(STACK[0xB32C]);
  LODWORD(STACK[0x928]) = LOBYTE(STACK[0xB33A]);
  LODWORD(STACK[0x900]) = LOBYTE(STACK[0xB330]);
  LODWORD(STACK[0x918]) = LOBYTE(STACK[0xB332]);
  LODWORD(STACK[0x8E8]) = LOBYTE(STACK[0xB32D]);
  LODWORD(STACK[0x908]) = LOBYTE(STACK[0xB331]);
  LODWORD(STACK[0x920]) = LOBYTE(STACK[0xB334]);
  LODWORD(STACK[0x948]) = LOBYTE(STACK[0xB33C]);
  LODWORD(STACK[0x950]) = LOBYTE(STACK[0xB338]);
  LODWORD(STACK[0x938]) = LOBYTE(STACK[0xB33B]);
  LODWORD(STACK[0x930]) = LOBYTE(STACK[0xB339]);
  LODWORD(STACK[0x81C]) = 1;
  return v14(2013984438, v12);
}

uint64_t sub_2448074EC()
{
  LODWORD(STACK[0x7EC]) = v1;
  LODWORD(STACK[0x7F0]) = v2;
  LODWORD(STACK[0x81C]) = 0;
  return (*(v3 + 8 * (v0 - 9224)))();
}

uint64_t sub_24480750C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  STACK[0x970] = &STACK[0x5CA0];
  if (a4 == -711000595)
  {
    v6 = 16;
  }

  else
  {
    v6 = a4 ^ 0x10012;
  }

  v7 = (a4 ^ 0xD59EFDED) + 190431459 + ((2 * a4) & 0x20 ^ 0x5E5B6CB0);
  if (((a4 & 0x1005A837 ^ 0x1004A835) & v6) != 0)
  {
    v7 = (((a4 ^ 0xD59EFDFD) + (((v4 - 12810) | 0x841) ^ 0xFFFFF7B1)) ^ 0xEFF7AD7B) + 2042462200 + ((2 * ((a4 ^ 0xD59EFDFD) + (((v4 - 12810) | 0x841) ^ 0xFFFFF7B1))) & 0xDFEF5AF6);
  }

  v8 = *(v5 + 8 * (v4 - 11273));
  LODWORD(STACK[0x960]) = 1231080081;
  return v8(a1, a2, ((v7 - 1773481331) ^ 0x10) - 711000579 - 2 * (((v7 - 1773481331) ^ 0x10) & 0x559EFDFF ^ (v7 - 1773481331) & 2));
}

uint64_t sub_244807634(int a1, unsigned __int8 a2, int a3, uint64_t a4, unsigned __int8 a5, unsigned __int8 a6, int a7, int a8)
{
  v18 = ((LOBYTE(STACK[0x880]) ^ 0xC4u) << 8) - 0xB006E8D3A76B41DLL - (((LODWORD(STACK[0x880]) ^ 0xC4u) << 9) & 0x9600);
  LODWORD(STACK[0x820]) = v8 + a1;
  v19 = (v8 + a1) ^ (a1 + 7);
  v20 = LODWORD(STACK[0x888]) ^ 0xC4;
  v21 = LOBYTE(STACK[0x888]) ^ 0xC4u;
  v22 = v8;
  LODWORD(STACK[0x878]) = v8;
  STACK[0x828] = v19;
  v23 = (v19 ^ v21 ^ 0x4FBF368EFBDF7434) + ((2 * v20) & 0xFCLL) - 0x4FBF368EFBDF7C7ELL;
  v24 = (v23 - (v18 ^ 0xF4FF9172C5894BE3 | v23)) ^ ((v18 ^ 0xB006E8D3A76B41CLL) + 1);
  v25 = (((v24 - 0xB006E8D3A76B41DLL - ((2 * v24) & 0xE9FF22E58B1297C6)) ^ v18) + v23) ^ ((LODWORD(STACK[0x890]) ^ 0xC4u) << 16);
  v26 = 0xB5BE6EC24221AA2ALL - v25 - ((-2 * v25) & 0x6B7CDD8484435454);
  STACK[0x890] = v26;
  LOBYTE(v24) = LODWORD(STACK[0x8B0]) ^ 0xC4;
  v27 = v24 | ((LODWORD(STACK[0x8A0]) ^ 0xC4u) << 8);
  v28 = (((LODWORD(STACK[0x898]) ^ 0xC4u) << 24) + 0x5E43C8092825C6EALL - ((LODWORD(STACK[0x898]) << 25) & 0x50000000)) ^ 0x5E43C8092825C6EALL;
  v29 = ((LODWORD(STACK[0x8C0]) ^ 0xC4u) << 32) | ((LODWORD(STACK[0x8B8]) ^ 0xC4u) << 24);
  v30 = (v28 - (v28 ^ v25)) ^ v25 ^ v26;
  v31 = (v30 ^ 0xB5BE6EC24221AA2ALL) + v28;
  v32 = STACK[0x8A8] ^ 0xALL;
  v33 = *(v9 + 8 * (v22 ^ 0xC96));
  STACK[0x8C0] = v33 + 9;
  v34 = (*(v33 + 9 + v32) >> 1) | (*(v33 + 9 + v32) << 7);
  HIDWORD(v35) = v17 ^ 4;
  LODWORD(v35) = (v17 ^ 0xC0) << 24;
  LOBYTE(v32) = v35 >> 29;
  v36 = v34 + 116;
  v37 = v34 + 116 - ((2 * v34) & 0xFFD8) - 8;
  v38 = ((LODWORD(STACK[0x8E8]) ^ 0xC4u) << 40) | ((LODWORD(STACK[0x8C8]) ^ 0xC4u) << 16) | v29 | v27;
  v39 = v38 + 0x2B828372116F1FEDLL - 2 * (v38 & 0x8372116F1FEFLL ^ v24 & 2);
  LODWORD(v38) = ((2 * v36) & 0xA ^ 0xFFFFFFF7) + (v37 ^ 0xC) + 14;
  LODWORD(v29) = (16 * v38 - (v38 >> 1 << 6) + 108) ^ v37;
  *&v40 = __ROR8__(v31 ^ (((LODWORD(STACK[0x8D0]) ^ 0xC4u) << 48) | ((LODWORD(STACK[0x8D8]) ^ 0xC4u) << 40) | ((LODWORD(STACK[0x8F8]) ^ 0xC4u) << 32)), 21);
  *(&v40 + 1) = v40 ^ ((LODWORD(STACK[0x8F0]) ^ 0xC4u) << 35) ^ 0x412F2FECFF5;
  *&v40 = v40 ^ 0x9C91F00000000000;
  v41 = v40 >> 43;
  v42 = (v39 ^ 0x2B828372116F1FEDLL | ((LODWORD(STACK[0x8E0]) ^ 0xC4u) << 48)) ^ ((LODWORD(STACK[0x910]) ^ 0xC4u) << 56);
  DWORD1(v40) = v29 ^ 0xAAAAAAAA;
  LODWORD(v40) = (v29 ^ 0x60) << 24;
  v43 = LODWORD(STACK[0x900]) ^ 0xC4u | ((LODWORD(STACK[0x908]) ^ 0xC4u) << 8) | ((LODWORD(STACK[0x918]) ^ 0xC4u) << 16) & 0xFFFFFFFF00FFFFFFLL | ((v40 >> 28) << 24) | ((LODWORD(STACK[0x920]) ^ 0xC4u) << 32);
  v44 = ((LODWORD(STACK[0x930]) ^ 0xC4u) << 8) | ((LODWORD(STACK[0x928]) ^ 0xC4u) << 16);
  LODWORD(v32) = *(v33 + 539 + (v32 ^ 0x5ELL));
  v45 = a3 ^ 0xD59EFDFD;
  v46 = ((LODWORD(STACK[0x938]) ^ 0xC4u) << 24) | ((LODWORD(STACK[0x948]) ^ 0xC4u) << 32) | ((a2 ^ 0xC4u) << 40);
  STACK[0x948] = v45;
  v47 = v11 ^ 0xC4u;
  v48 = v44 & 0xFFFFFFFFFFFFFF00 | LODWORD(STACK[0x950]) ^ 0xC4u | v46 | ((v16 ^ 0xC4u) << 48);
  v49 = v48 - 2 * (v48 & 0x76A164EA0520FELL ^ (LODWORD(STACK[0x950]) ^ 0xC4) & 2) - 0x14895E9B15FADF04;
  v50 = v49 ^ ((a8 ^ 0xC4u) << 56);
  *(&v40 + 1) = (v45 - ((2 * v45) & 0x8F7A5114) + 1203579018) ^ 0x7BD288A;
  *&v40 = (v42 & 0x100000000000000 | (v45 - ((2 * v45) & 0x8F7A5114) - 0x7D53337BB842D776)) ^ 0x82ACCC8440000000;
  v51 = v40 >> 28;
  *(&v40 + 1) = v49 ^ 0x6A164EA0520FCLL;
  *&v40 = v50 ^ 0xEB70000000000000;
  v52 = v40 >> 51;
  *(&v40 + 1) = v39;
  *&v40 = v42;
  v53 = v51 ^ (v40 >> 28) & 0xFFFFFFFFEFFFFFFFLL;
  *(&v40 + 1) = v53 ^ 0x40B9284B3;
  *&v40 = v53 ^ 0x6DFD1F0000000000;
  v54 = (v40 >> 36) - 0x6046229A239725EFLL - ((2 * (v40 >> 36)) & 0x3F73BACBB8D1B422);
  v55 = v41 ^ (a5 ^ 0xC4u | ((v12 ^ 0xC4u) << 8) | ((v14 ^ 0xC4u) << 16) & 0xFFFFFFFF00FFFFFFLL | ((v15 ^ 0xC4u) << 24) | ((v13 ^ 0xC4u) << 32) | (v47 << 40)) ^ (((LODWORD(STACK[0x958]) ^ 0xC4u) << 56) | ((v10 ^ 0xC4u) << 48));
  v56 = __ROR8__((a5 ^ 0xC4u | ((v12 ^ 0xC4u) << 8) | ((v14 ^ 0xC4u) << 16) & 0xFFFFFFFF00FFFFFFLL | ((v15 ^ 0xC4u) << 24) | ((v13 ^ 0xC4u) << 32) | (v47 << 40)) ^ (((LODWORD(STACK[0x958]) ^ 0xC4u) << 56) | ((v10 ^ 0xC4u) << 48)), 14);
  *(&v40 + 1) = v41 ^ (a5 ^ 0xC4 | ((v12 ^ 0xC4) << 8) | ((v14 ^ 0xC4) << 16) & 0xFFFFFF | ((v15 ^ 0xC4) << 24)) ^ 0x121F797;
  *&v40 = v55 ^ 0x152528208A000000;
  v57 = v40 >> 25;
  v58 = v54 ^ (((a7 ^ 0xC4u) << 56) | ((a6 ^ 0xC4u) << 40) | (((((v32 >> 4) | (16 * v32)) ^ 0xDE) - ((v32 >> 4) << 7)) << 48)) ^ v43;
  *(&v40 + 1) = v52 ^ 0x730;
  *&v40 = v52 ^ 0x8C2C58B4B46A6000;
  v59 = (v40 >> 13) - ((2 * (v40 >> 13)) & 0xF9E9CE38E67F7D72) - 0x30B18E38CC04147;
  v60 = (v58 ^ 0x7A2A39BD8CEC1440) & (v54 ^ 0xCFFA9B3A4DB801EFLL) ^ v54 & 0x652F296B0EA672FDLL;
  *(&v40 + 1) = v57 ^ 0x3A524D151DLL;
  *&v40 = v57 ^ 0xA8C6970000000000;
  v61 = v40 >> 39;
  v62 = v55 ^ 0x80A987C4E98DF144;
  v63 = ((2 * ((v55 ^ 0x80A987C4E98DF144) - (v55 ^ 0xC5838EEEE52DF1A9 ^ v60))) & 0xDBCA9F66B9FFA3EALL) + (((v55 ^ 0x80A987C4E98DF144) - (v55 ^ 0xC5838EEEE52DF1A9 ^ v60)) ^ 0x6DE54FB35CFFD1F5);
  v64 = (v60 ^ 0x452A092A0CA000EDLL) + v63 - 2 * ((v63 + 0x121AB04CA3002E0BLL) & (v60 ^ 0x452A092A0CA000EDLL)) - 0x6DE54FB35CFFD1F5;
  *(&v40 + 1) = v56 ^ 0x30ACB275B30F5;
  *&v40 = v56 ^ 0xC0D0000000000000;
  v65 = (((v58 ^ 0xE0FAEF297DB59942) & (v59 ^ 0xEB769D79090D059ELL)) - 0x6046229A239725EFLL - ((2 * ((v58 ^ 0xE0FAEF297DB59942) & (v59 ^ 0xEB769D79090D059ELL))) & 0x3F73BACBB8D1B422)) ^ v54;
  v66 = v50 ^ (v40 >> 50);
  v67 = (v61 ^ 0x1ED7CA31A6027402) & (v54 ^ 0x300564C5B247FE10);
  v68 = v62 + (v60 ^ 0xBAD5F6D5F35FFF12) + ((2 * v64) & 0xEFFDFF5A6FF7F6EELL) + (v64 ^ 0x77FEFFAD37FBFB77) - 2 * ((((2 * v64) & 0xEFFDFF5A6FF7F6EELL) + (v64 ^ 0x77FEFFAD37FBFB77) + 0x8010052C8040489) & ((v60 ^ 0x3AD5F6D5F35FFF12) + 1)) - 0x77FEFFAD37FBFB76;
  v69 = v68 - ((2 * v68) & 0x4B195F9A69C16C9CLL) + 0x258CAFCD34E0B64ELL;
  v70 = v67 ^ v66;
  v71 = v69 ^ v67 ^ v66;
  v72 = v65 ^ v69;
  v73 = v58 ^ (v59 ^ 0x14896286F6F2FA61) & (v66 ^ 0x90B9044CEC3D2D15);
  v74 = v59 ^ 0x6F2E8CA4364B64B3 ^ ((v62 & (v66 ^ 0x6F46FBB313C2D2EALL)) - ((2 * (v62 & (v66 ^ 0x6F46FBB313C2D2EALL))) & 0x8B023BA7E8CC25ALL) - 0x7BA7EE22C0B99ED3);
  v75 = (v74 - ((2 * v74) & 0x18CF4ABECA0FC37ELL) - 0x73985AA09AF81E41) ^ v73;
  *(&v40 + 1) = v71 ^ 0x44B7A;
  *&v40 = v71 ^ 0x6778AE03FD500000;
  v76 = v40 >> 19;
  v77 = ~v73;
  *(&v40 + 1) = v65 ^ v69 ^ 0x54420B21E423F61;
  *&v40 = v65 ^ v69 ^ 0x2000000000000000;
  v78 = (v40 >> 61) ^ v65 ^ v69;
  *(&v40 + 1) = v73 ^ 0x8CD6E6A7950D7;
  *&v40 = v73 ^ 0x94F0000000000000;
  v79 = v40 >> 52;
  *(&v40 + 1) = v78 ^ 0x14420B21E423F61;
  *&v40 = v78 ^ 0x2400000000000000;
  v80 = v40 >> 58;
  v81 = __ROR8__(v73, 53) & 0xFFFFFFFFFFFFF7FFLL ^ v79;
  v82 = (v73 >> 6) & 0x1D8A89441CBF0F1;
  *(&v40 + 1) = v81 ^ 0x797;
  *&v40 = v81 ^ 0x3A482B457243E000;
  v83 = v40 >> 12;
  v84 = (v73 >> 6) & 0x227576BBE340F0ELL ^ 0x2034321B8200502;
  v85 = (v83 & 0x7227576BBE340F0ELL ^ 0x3207422180200C04 | v84) - 0x19C64B56C722A3CLL - ((2 * (v83 & 0x7227576BBE340F0ELL ^ 0x3207422180200C04 | v84)) & 0xE446269524080A08);
  v86 = (~v85 & 0x80000000 ^ 0xEF7EDFDBFBDBDFFELL) + 2 * (~v85 & 0x80000000);
  v87 = v76 ^ (v71 >> 28) ^ ((v71 ^ 0x6778AE03FD544B7ALL) << (v30 & 0x24 ^ 0x20) << (v30 & 0x24 ^ 4)) ^ 0x6778AE03FLL;
  v88 = v87 - ((2 * v87) & 0x83AE367DACF01348) - 0x3E28E4C12987F65CLL;
  v89 = v73 << 58;
  v90 = ((v83 ^ 0x207422180200C04) & v84) + 0x192AE1087AADEAE1 - ((2 * ((v83 ^ 0x207422180200C04) & v84)) & 0x44821074481400);
  *(&v40 + 1) = v80 ^ 0x2B;
  *&v40 = v80 ^ (v72 >> 33) ^ 0x8D108182FC0BBA40;
  v91 = v40 >> 6;
  v92 = v83 & 0x8DD8A89441CBF0F1;
  v93 = 0x7227576B3E340F0ELL;
  if (v17 != 15)
  {
    v93 = v85 ^ 0xFE639B4A138DD5C4;
  }

  v94 = v93 & (v85 ^ 0xFE639B4A938DD5C4);
  v95 = ((v75 << 54) ^ 0xA580000000000000) + 0x45E9B4179F6569B5 - ((2 * ((v75 << 54) ^ 0xA580000000000000)) & 0x8B80000000000000);
  v96 = v91 ^ (v72 << 25);
  v97 = 0x5AA766A787B577F8 - v86;
  if (v90 >= 0)
  {
    v97 = v86 + 0x7BA9A6EF8FFDB7FCLL;
  }

  v98 = v92 ^ (v89 ^ (v77 << 63) | v82) ^ v94 ^ ((v90 ^ 0x192AE1087AADEAE1) - 0x6B2886CB8BD997FALL + v97);
  v99 = ((v70 >> 41) | (v70 << 57)) ^ (v70 << 23) ^ (((v70 >> 7) ^ 0xEF7DFC9B0EA5E0) - ((2 * ((v70 >> 7) ^ 0xEF7DFC9B0EA5E0)) & 0x2460357132C883CLL) + 0x312301AB8996441ELL);
  v100 = v99 ^ v70;
  v101 = ((v95 ^ 0x45E9B4179F6569B5) - (v75 ^ 0x9A373B3CBC636F23 ^ v95)) ^ ((v75 ^ 0x202170D4DCF9F969) + 1);
  v102 = v69 ^ v99 ^ v88;
  v103 = v96 ^ v98;
  v104 = (v75 >> 10) ^ (v75 << 47) ^ (v75 >> 17) ^ ((v75 ^ 0xADAB15C519C70FEELL ^ (v101 - ((2 * v101) & 0xE4EB35DC758212F0) + 0x72759AEE3AC10978)) + (v95 ^ 0x45E9B4179F6569B5));
  v105 = v104 ^ 0xDC47DE01E412B117 ^ v100;
  v106 = ((v104 ^ 0xFC8367B372A2AFFDLL) & (v100 ^ 0x385E569E18FF6B4DLL)) - ((2 * ((v104 ^ 0xFC8367B372A2AFFDLL) & (v100 ^ 0x385E569E18FF6B4DLL))) & 0x8422586E582E7CECLL) + 0x42112C372C173E76;
  v107 = (v102 ^ 0x9EF1E3A333D32993) & (v105 ^ 0x189AEF2C8E4F75A7);
  v108 = v103 ^ v106;
  v109 = v96 ^ v98 ^ v106 ^ 0xD541CA4FE56FF8CELL;
  v110 = v102 ^ (v96 ^ 0x35F7398736455957) & (v98 ^ 0x5D58200000C26010);
  v111 = v102 ^ 0x610E1C5CCC2CD66CLL;
  v112 = (v109 - (v104 ^ 0xD63D52036832A8CCLL ^ v103 ^ v106)) ^ ((v104 ^ 0xFC8367B372A2AFFDLL) + 1);
  v113 = ((v112 - ((2 * v112) & 0xBE768C9AD29FC22ALL) - 0x20C4B9B296B01EEBLL) ^ v104 ^ 0xDC47DE01E412B117) + v109;
  v114 = v111 & (v96 ^ 0xCA08C678C9BAA6A8) ^ v105;
  v115 = (v103 ^ 0x68AF198736873947) & (v104 ^ 0xF5B3B4B3E3444871) ^ v103 & 0xF6CF2CFF6E191873;
  v116 = v103 ^ ~v106;
  v117 = (v113 - 0xF073BDAE221ADA3 - ((2 * v113) & 0xE1F1884A3BBCA4BALL)) ^ ((v107 ^ 0xD73DCC8A1F1146CBLL) - 0xF073BDAE221ADA3 - ((2 * (v107 ^ 0xD73DCC8A1F1146CBLL)) & 0xE1F1884A3BBCA4BALL));
  v118 = (v110 ^ v114 ^ 0x3B8CB3CC15885269) - 0x792650C52F60A9ACLL - ((2 * (v110 ^ v114 ^ 0x3B8CB3CC15885269)) & 0xDB35E75A13EACA8);
  v119 = ((v96 ^ 0xCA08C678C9BAA6A8) - (v96 ^ 0xAA87CEFFEFBBBEEBLL ^ v115)) ^ ((v115 ^ 0x9F70F778D9FEE7BCLL) + 1);
  v120 = (v115 ^ 0x268E3E209D94A3BALL ^ (v119 - ((2 * v119) & 0x8C026D4F772B77F2) + 0x460136A7BB95BBF9)) + (v96 ^ 0xCA08C678C9BAA6A8);
  v121 = (v120 - ((2 * v120) & 0x70C71AF98D665592) + 0x38638D7CC6B32AC9) ^ v110;
  *(&v123 + 1) = v118 ^ 0x75654;
  *&v123 = v118 ^ 0x86D9AF3AD0980000;
  v122 = v123 >> 19;
  v124 = v117 ^ (v117 >> 10);
  v125 = (v121 >> 61) ^ 7;
  v126 = (v125 - (v121 ^ 0xF51360F1C84ACABELL ^ (v121 >> 61))) ^ ((v121 ^ 0xAEC9F0E37B53546) + 1);
  *(&v123 + 1) = v124 ^ 0x1499EB90ALL;
  *&v123 = v124 ^ 0x708325B400000000;
  v127 = (v123 >> 34) ^ __ROR8__(v117, 51) & 0xFFFFFFFFC0001FFFLL;
  *(&v123 + 1) = v127 ^ 0x2621F239;
  *&v123 = v127 ^ 0xB1313EB5C0000000;
  v128 = (v123 >> 30) - ((2 * (v123 >> 30)) & 0x5220A3A800727872);
  v129 = v128 + 0x291051D400393C39;
  v130 = v108 ^ (v116 << 58) ^ ((v108 >> 6) | (v116 << 63)) ^ (((v108 >> 1) ^ 0x1CD0F5CA66DEAEBFLL) - ((2 * ((v108 >> 1) ^ 0x1CD0F5CA66DEAEBFLL)) & 0xA9995252FF363338) + 0x54CCA9297F9B199CLL);
  *&v123 = __ROR8__(v118, 28);
  v131 = ((v122 ^ v123 ^ 0x9F565486D9AF3ADLL) - 0x792650C52F60A9ACLL - ((2 * (v122 ^ v123 ^ 0x9F565486D9AF3ADLL)) & 0xDB35E75A13EACA8)) ^ v118;
  v132 = (v121 >> 39) ^ (8 * v121) ^ (v121 << 25) ^ ((v121 ^ 0x4DBC2F018088A21ELL ^ (v126 - ((2 * v126) & 0x715E9FE09184D14ELL) - 0x4750B00FB73D9759)) + v125);
  v133 = (v114 >> 7) ^ 0x11146EDFB329152;
  v134 = (v133 + ((v114 >> 7) ^ v114 ^ 0x19CCB542BCBE6695 ^ 0x907E8552DEC45EE4) + ((2 * ((v114 >> 7) ^ v114 ^ 0x19CCB542BCBE6695)) ^ 0xDF02F55A42774237) + 1) ^ ((v114 ^ 0x775C890266B756DCLL) + 1);
  v135 = ((v134 - ((2 * v134) & 0x22DF877E4BED9F6CLL) - 0x6E903C40DA09304ALL) ^ v114 ^ 0x19CCB542BCBE6695) + v133;
  v136 = (0xD6EFAE2BFFC6C3C6 - v128) & 0x4000000000 | (v117 << 54);
  v137 = (((v114 << 57) ^ 0x4600000000000000) + 0x3C5B39AFA25CCC26 - ((2 * ((v114 << 57) ^ 0x4600000000000000)) & 0x7800000000000000)) ^ 0x3C5B39AFA25CCC26;
  v138 = (v135 ^ 0xFCD9FCFF7DFFFDF5) + 0x32603008200020BLL + ((2 * v135) & 0xF9B3F9FEFBFFFBEALL);
  v139 = v138 & v137;
  v140 = v138 + v137;
  v141 = v132 ^ 0xF2040EE36E8725DBLL ^ v130;
  v142 = v129 & 0xFFFFFFBFFFFFFFFFLL ^ (v117 << 47) ^ v136;
  v143 = (v140 - 2 * v139) ^ __ROR8__(v114, 41);
  v144 = v142 ^ v143 ^ 0x6C5F8340A76A1B11;
  v145 = v131 ^ v143;
  v146 = v145 ^ 0x59501D0A3F6FA57ALL ^ (v132 ^ 0xB4F46DE4CE438CF6) & (v130 ^ 0x6D8BC513E110B196);
  v147 = (((v142 ^ 0x8AE2A13D45C72C9BLL) & (v141 ^ 0x2B7BA61441D418BBLL)) - ((2 * ((v142 ^ 0x8AE2A13D45C72C9BLL) & (v141 ^ 0x2B7BA61441D418BBLL))) & 0x721F39F0BE76ADA4) - 0x46F06307A0C4A92ELL) ^ v132 ^ 0xF2040EE36E8725DBLL;
  v148 = v145 ^ 0x81335BAB6E3BAE44;
  v149 = (v142 ^ v143 ^ 0xBD1FA962BFC82DFLL) & (v145 ^ 0x4F7489749180BA2ALL) ^ v144 & 0x31B82D200044EB91 ^ 0x2188290000048980;
  v150 = v149 & (v142 ^ 0xAE2A13D45C72C9BLL);
  v151 = v144 ^ (v132 ^ 0x4B0B921B31BC7309) & v148;
  v152 = v149 + (v142 ^ 0x8AE2A13D45C72C9BLL);
  v153 = v151 ^ v146;
  v154 = (v142 ^ 0x751D5EC2BA38D364) & (v143 ^ 0x7ECCA45491C451BBLL) ^ v141;
  v155 = v154 ^ 0xA4AB62B3032628DLL;
  v156 = (v147 - ((2 * v147) & 0x4F3972BD5D57E982) + 0x279CB95EAEABF4C1) ^ v146;
  v157 = ((v156 << 25) ^ 0x182B8F2540000000) - 0x1C9BFDC13DF71512 - ((2 * ((v156 << 25) ^ 0x182B8F2540000000)) & 0xC6C8047D84000000);
  v158 = (v152 - 2 * v150 - 0x2131103F71E67A37 - ((2 * (v152 - 2 * v150)) & 0xBD9DDF811C330B92)) ^ v154 ^ 0xA4AB62B3032628DLL;
  v159 = (((2 * v154) & 0xD87143373402D1CALL ^ 0x880003173402C088) + (v154 ^ 0x2B7BA61441D418BBLL) + 1) ^ ((v154 ^ 0x2B7BA61441D418BBLL) + 1);
  v160 = (v159 - 0x2131103F71E67A37 - ((2 * v159) & 0xBD9DDF811C330B92)) ^ v155;
  *(&v123 + 1) = v156 ^ 0x1BF9748C15C792A0;
  *&v123 = v156 ^ 0x4000000000000000;
  v161 = v160 - ((2 * v160 + 0x587143373402D1CALL) & 0x454BFCC230036A6ELL) - 0x712160034DFCE1E4;
  v162 = v156 ^ (v156 >> 39) ^ (v123 >> 61);
  v163 = v161 ^ (v161 >> 1);
  v164 = v163 ^ ((v160 << 63) + 0x8000000000000000);
  v165 = (v162 ^ 0xA4068B73EA8F9FB6) + 1;
  v166 = ((v162 ^ 0x5BF9748C15706049) - (v162 ^ 0xB89D76B2D7788AA7 ^ v157)) ^ ((v157 ^ 0x1C9BFDC13DF71511) + 1);
  v167 = (v161 >> 6) ^ 0x1197605805928908;
  v168 = 2 * ((v164 ^ v167 ^ 0x22EAF6F015F3E070) & (v163 ^ 0x33F7015194016FACLL)) - ((4 * ((v164 ^ v167 ^ 0x22EAF6F015F3E070) & (v163 ^ 0x33F7015194016FACLL))) & 0x69FA2B61A2AE67B0) + 0x34FD15B0D15733D8;
  v169 = (v153 >> 19) ^ (v153 >> 28) ^ (v153 << 36) ^ (v153 << 45) ^ 0x5E3184B67984372DLL;
  v170 = (v169 - ((2 * v169) & 0xDD148F053FE2D1A6) + 0x6E8A47829FF168D3) ^ v153;
  v171 = v157 ^ 0xE364023EC208EAEELL;
  v172 = (v157 ^ 0xE364023EC208EAEELL) + v165 - ((v166 - 0x1C9BFDC13DF71512 - ((2 * v166) & 0xC6C8047D8411D5DCLL)) ^ v157);
  v173 = v162 ^ 0x26461BE8EB3A41D1 ^ ((v172 ^ v165) - ((2 * (v172 ^ v165)) & 0xFB7EDEC9FC944330) + 0x7DBF6F64FE4A2198);
  v174 = (((2 * (v164 ^ v167)) ^ 0xBA2A121FD4183F1FLL) + ((v161 >> 6) ^ 0x347782495537350CLL ^ v168) + 2 * ((v168 ^ 0xFD15B0D15733D8) & ((v161 >> 6) ^ 0x8A97F9846006D4)) + 1) ^ (((v161 >> 6) ^ 0xFF7568067B9FF92BLL) + 1);
  v175 = (((v158 << 54) ^ 0x1500000000000000) + 0xBCC5201ACE35A17 - ((2 * ((v158 << 54) ^ 0x1500000000000000)) & 0x1780000000000000)) ^ 0xBCC5201ACE35A17;
  v176 = v173 + v171 - 0xD4CCC4BA105BC3FLL - ((2 * (v173 + v171)) & 0xE5666768BDF48782);
  v177 = ((v174 - ((2 * v174) & 0x223BEF4303E51FB8) + 0x111DF7A181F28FDCLL) ^ v167) + (v164 ^ 0x33F7015194016FACLL);
  *(&v123 + 1) = v151 ^ 0xB6A3417962;
  *&v123 = v151 ^ 0x4EE21A0000000000;
  v178 = v151 ^ __ROR8__(v151, 7) ^ (v123 >> 41);
  v179 = v178 ^ 0xF32AB8B6C65F7C51;
  v180 = v175 & (v158 ^ 0x3DB74E5B5BC47454) ^ __ROR8__(v158, 17) ^ (v175 | v158 ^ 0x1199718E01D28F3DLL ^ (((v158 >> 10) ^ 0xF6DD396D6F11DLL) - ((2 * ((v158 >> 10) ^ 0xF6DD396D6F11DLL)) & 0x5C7FAAB42DF6D2) + 0x2C2E3FD55A16FB69));
  v181 = v180 ^ 0x5FAF047684470728;
  v182 = (v170 ^ v178) & 0xAB7A59DB3AD4F8E4;
  v183 = v178 ^ 0x4FAA3FA796D5A98DLL ^ v180;
  v184 = v170 ^ v179;
  v185 = ((((v176 << 27) ^ 0xA2F7D21E08000000) - ((2 * ((v176 << 27) ^ 0xA2F7D21E08000000)) & 0x5C031BA280000000) + 0x2E018DD144EEFB1BLL) & 0xFFFFFFFFF8000000 | (v176 >> 37)) ^ 0x2E018DD14795999DLL;
  v186 = v185 + 0x4DD97811E65D1F43 + (~(2 * v185) | 0x644D0FDC3345C17BLL);
  v187 = ((v182 | v184 & 0x5485A624C52B071BLL) ^ 0x91395ADB08B373ELL) + 0x28A9E705F7C6DE76 - 2 * (((v182 | v184 & 0x5485A624C52B071BLL) ^ 0x91395ADB08B373ELL) & 0x28A9E705F7C6DE77 ^ v184 & 1);
  v188 = v180 ^ 0x5FAF047684470728 ^ v179;
  if (v108 == 0x39A1EB94CDBD5D7FLL)
  {
    v189 = v180 ^ 0xBC808711508AD5DCLL;
  }

  else
  {
    v189 = v179;
  }

  v190 = v176 ^ (v161 << 58) ^ v177;
  *(&v191 + 1) = v186 ^ 0x65D1F42;
  *&v191 = v186 ^ 0x4DD97811E0000000;
  v192 = v190 ^ (v188 ^ 0x1CD07C982B322D0BLL) & (v189 ^ 0x79556635085887C1);
  v193 = v184 >> 37;
  v194 = (v190 ^ 0x2EB333B45EFA43C1) & ~(v191 >> 27) ^ v187;
  v195 = v183 & (v187 ^ 0x28A9E705F7C6DE76);
  v196 = (((v190 ^ 0xD14CCC4BA105BC3ELL) & (v180 ^ 0x3A2A1EDBA72DADE2)) - 0xD4CCC4BA105BC3FLL - ((2 * ((v190 ^ 0xD14CCC4BA105BC3ELL) & (v180 ^ 0x3A2A1EDBA72DADE2))) & 0xE5666768BDF48782)) ^ v176;
  v197 = (v176 ^ 0xF2B333B45EFA43C1) & ((v187 & 0xFFFFFFDFFFFFFFFFLL | ((v193 & 1) << 37)) ^ 0xD75618DA08392189) ^ v188;
  v198 = v194 ^ v197;
  v199 = v194 ^ (v196 - ((2 * v196) & 0xF8D5AF2AA2B94CB2) - 0x395286AAEA359A7);
  v200 = (v195 - ((2 * v195) & 0xCB0A355A46D55594) + 0x65851AAD236AAACALL) ^ v181;
  v201 = v192 ^ (v200 - ((2 * v200) & 0x1F399793388C520ALL) - 0x7063343663B9D6FBLL);
  v202 = ((v198 << 36) ^ 0xF0ADD83000000000) - ((2 * ((v198 << 36) ^ 0xF0ADD83000000000)) & 0x3140ECC000000000) - 0x675F8990EC7F6872;
  v203 = v202 & 0xB716169000000000;
  *(&v191 + 1) = v194 ^ v197 ^ 0x2DD83;
  *&v191 = v194 ^ v197 ^ 0xF2AD0BF7EF080000;
  v204 = ((2 * v197) & 0x85F41B1BFF4AD39CLL ^ 0xFE5FE6EFA9BFADEBLL) + (v197 ^ 0x1CD07C982B322D0BLL);
  v205 = v204 - ((2 * v204 + 0x5F41B1BFF4AD39ELL) & 0x458CDC125A462606) + 0x65C07B972CC87CD2;
  v206 = v198 ^ (v198 >> 28) ^ (v191 >> 19);
  v207 = ((v199 << 25) ^ 0x454889C33A000000) - ((2 * ((v199 << 25) ^ 0x454889C33A000000)) & 0x1EF57A3468000000) - 0x708542E5CB5A3FA2;
  v208 = v202 & 0x48E9E96000000000 ^ v206 & 0x48E9E9615F58E73ELL;
  v209 = (v192 ^ 0x72C1D0905F2DB869) - (v192 ^ 0x4BA138D870BB645DLL ^ (v192 >> 1));
  *(&v191 + 1) = v201 ^ 0x3B5;
  *&v191 = v201 ^ 0xA056E51A62B38000;
  v210 = v191 >> 10;
  v211 = v203 ^ v206 & 0xB716169EA0A718C1;
  v212 = ((v192 >> 1) ^ 0xC69F17B7D06923CBLL) + 0x30A18889104502ABLL + ((2 * v209) & 0x9EBCEEEDDF75FAAALL) + (v209 ^ 0xCF5E7776EFBAFD55) - 2 * ((((2 * v209) & 0x9EBCEEEDDF75FAAALL) + (v209 ^ 0xCF5E7776EFBAFD55) + 0x30A18889104502ABLL) & (((v192 >> 1) ^ 0x469F17B7D06923CBLL) + 1)) + 1;
  *(&v191 + 1) = v205 ^ 3;
  *&v191 = v205 ^ 0xA2C66E092D231300;
  v213 = v191 >> 7;
  *(&v191 + 1) = v199 ^ 0x101920A2A444E19DLL;
  *&v191 = v199 ^ 0x8000000000000000;
  v214 = v199 ^ (v199 >> 39) ^ (v191 >> 61);
  v215 = ((v211 | v208) ^ 0x6A0D7D98C5DA62FDLL) - 0x7CC1747346D2A476 - ((2 * ((v211 | v208) ^ 0x6A0D7D98C5DA62FDLL)) & 0x67D1719725AB714);
  v216 = v201 ^ __ROR8__(v201, 17) ^ v210;
  v217 = (v207 & 0xCF41D295BC000000 ^ v214 & 0xCF41D295BD048AE3 | v207 & 0x30BE2D6A42000000 ^ v214 & 0x30BE2D6A42FB751CLL) ^ 0x1F639DB89164D3DCLL;
  v218 = v217 - 0x43A918F462B9BCF0 - ((2 * v217) & 0x78ADCE173A8C8620);
  v219 = v205 ^ __ROR8__(v205, 41) ^ v213;
  v220 = ((v192 >> 6) | (~v192 << 63)) ^ (v192 << 58) ^ (((v192 >> 1) ^ 0xF125388100EF9BCALL ^ (v212 - ((2 * v212) & 0x908BA1925EF28FFCLL) - 0x37BA2F36D086B802)) + (v192 ^ 0x72C1D0905F2DB869));
  v221 = v219 ^ v216 ^ 0x82AB2A19498D04ELL;
  v222 = v218 ^ v220;
  v223 = v218 ^ v220 ^ 0x9BFD9123D0A0929CLL;
  v224 = ((v218 ^ 0x43A918F462B9BCEFLL) & (v220 ^ 0xA5CB0742417CB6E1)) - 0x7D9F8E95F3659893 - ((2 * ((v218 ^ 0x43A918F462B9BCEFLL) & (v220 ^ 0xA5CB0742417CB6E1))) & 0x4C0E2D41934CEDALL);
  v225 = v219 ^ 0x256E740C15DF2BBELL ^ v215;
  v226 = v219 ^ 0xA650FF80ACF27034;
  v227 = (((v226 - v225) ^ ((v215 ^ 0x7CC1747346D2A475) + 1)) - 0x7CC1747346D2A476 - ((2 * ((v226 - v225) ^ ((v215 ^ 0x7CC1747346D2A475) + 1))) & 0x67D1719725AB714)) ^ v215;
  if (v70 == 0x77BEFE4D8752F02CLL)
  {
    v224 = v223;
  }

  v228 = v227 + v226 - ((2 * (v227 + v226)) & 0xA46031E391863260) - 0x2DCFE70E373CE6D0;
  v229 = (v228 ^ 0x2DCFE70E373CE6CFLL) & (v218 ^ 0xFB71970406410712) ^ v228 & 0x4727700F9B074402;
  v230 = (v224 ^ 0x8260716A0C9A676DLL) & (v218 ^ 0x43A918F462B9BCEFLL) ^ 0x6C3947A74AA24B8 ^ v228;
  v231 = (v228 ^ 0xEA807BA34C7B81F4) & (v221 ^ 0x300987EFD7ABED69) ^ v221 & 0x38B0635284B898C4;
  v232 = v222 ^ v226 & (v216 ^ 0x9E73CACEEFC14D13);
  v233 = v231 ^ v216 ^ 0x82AB2A19498D04ELL;
  v234 = v216 ^ 0x618C3531103EB2ECLL;
  if (v231 == 0x3000034284A88840)
  {
    v235 = -1;
  }

  else
  {
    v235 = v234;
  }

  v236 = v222 ^ 0x199DE049DC3AF5F1 ^ v235;
  v237 = (2 * (v221 & 0x80000000000000)) ^ 0x100000000000000 | v221 & 0x80000000000000;
  v238 = ((((v236 & v234) - 0x43A918F462B9BCF0 - ((2 * (v236 & v234)) & 0x78ADCE173A8C8620)) ^ v218) - ((2 * (((v236 & v234) - 0x43A918F462B9BCF0 - ((2 * (v236 & v234)) & 0x78ADCE173A8C8620)) ^ v218)) & 0xA9E7191778D27B10) - 0x2B0C73744396C278) ^ v230;
  v239 = v221 & 0xFF7FFFFFFFFFFFFFLL;
  v240 = 0x715D44001D947CCCLL - v237;
  if (((v229 ^ 0x500000000000000) & (v237 - 0x80000000000000)) == 0)
  {
    v240 = v237 | 0x705D44001D947CCCLL;
  }

  v241 = ((v229 ^ 0x507600E13044402) - 0x70DD44001D947CCCLL + v240) ^ v239;
  v242 = (v233 ^ 0x3EDFAFDFB7835383 ^ ((((v232 ^ 0x199DE049DC3AF5F1) - (v232 ^ 0x403B649BDC341F13 ^ v233)) ^ ((v233 ^ 0xA6597B2DFFF1151DLL) + 1)) - ((2 * (((v232 ^ 0x199DE049DC3AF5F1) - (v232 ^ 0x403B649BDC341F13 ^ v233)) ^ ((v233 ^ 0xA6597B2DFFF1151DLL) + 1))) & 0xCEF2561B6F1B72C2) + 0x67792B0DB78DB961)) + (v232 ^ 0x199DE049DC3AF5F1);
  *(&v244 + 1) = v238 ^ 0x83;
  *&v244 = v238 ^ 0xC3C33EB66F1F6200;
  v243 = v244 >> 9;
  v245 = (v242 >> 10) ^ 0x21339F2BC722C6;
  *(&v244 + 1) = v241 ^ v230 ^ 0x23049;
  *&v244 = v241 ^ v230 ^ 0x1B85F49B94380000;
  v246 = v244 >> 19;
  *(&v244 + 1) = v243 ^ 0x20B049B5256EACLL;
  *&v244 = v243 ^ (v238 >> 6) ^ 0xE80000000000000;
  v247 = v244 >> 55;
  v248 = ((v242 << 47) ^ 0x8D56800000000000) - 0x6A6D1E516A87E08 - ((2 * ((v242 << 47) ^ 0x8D56800000000000)) & 0xF2B2000000000000);
  v249 = (v245 - (v242 ^ 0x84EF4F30374C386BLL ^ (v242 >> 10))) ^ ((v242 ^ 0x7B318350E374E552) + 1);
  *(&v244 + 1) = v241 ^ 0x1F;
  *&v244 = v241 ^ 0xD1AE3FD92C65B780;
  v250 = v244 >> 7;
  v251 = ((v242 ^ 0x757CE90E6B19A482 ^ (v249 - ((2 * v249) & 0xE3652B42EF257C5ELL) - 0xE4D6A5E886D41D1)) + v245) ^ ((v242 >> 17) | (v242 << 54));
  v252 = (v238 >> 39) ^ (8 * v238) ^ (v238 << 25) ^ v247;
  *(&v244 + 1) = v232;
  *&v244 = v232 ^ 0x6B72245D43C334A8;
  v253 = v244 >> 1;
  *(&v244 + 1) = v241 ^ 0x1D92C65B79FLL;
  *&v244 = v241 ^ 0xD1AE3E0000000000;
  v254 = (v244 >> 41) ^ v250;
  v255 = v254 ^ v241;
  v256 = v254 ^ v230 ^ ((v246 ^ ((v241 ^ v230) >> 28) ^ ((v241 ^ v230) << 36) ^ 0x8FA3049A4F81C899) - 2 * ((v246 ^ ((v241 ^ v230) >> 28) ^ ((v241 ^ v230) << 36) ^ 0x8FA3049A4F81C899) & 0x204FCC96967A603CLL ^ (v246 ^ ((v241 ^ v230) >> 28)) & 0x24) - 0x5FB0336969859FE8);
  *&v244 = __ROR8__(v232, 6);
  v257 = ((v253 ^ v244 ^ 0xA1ADC891750F0CD2) - ((2 * (v253 ^ v244 ^ 0xA1ADC891750F0CD2)) & 0x2791D66E4B6B32AALL) - 0x6C3714C8DA4A66ABLL) ^ v232 ^ v252;
  v258 = ((v248 ^ 0xF9592E1AE95781F8) - (v248 ^ 0x52196C7DD7000FBDLL ^ v251)) ^ ((v251 ^ 0x54BFBD98C1A871BALL) + 1);
  v259 = (v251 ^ 0x2B246D4FCAC0B365 ^ (v258 - ((2 * v258) & 0xC85E51E92E7A40) - 0x7F9BD0D70B68C2E0)) + (v248 ^ 0xF9592E1AE95781F8);
  v260 = v259 + 0x755BE49FB7AE5227 - ((2 * v259) & 0xEAB7C93F6F5CA44ELL);
  v261 = ((v260 ^ 0x755BE49FB7AE5227) - (v255 ^ 0xA4F5DB469BCBE5B8 ^ v260)) ^ ((v255 ^ 0x2E51C026D39A4860) + 1);
  v262 = (v255 ^ 0xF57237A709E5A0DALL ^ (v261 - ((2 * v261) & 0x49B810FC4B002E8ALL) + 0x24DC087E25801745)) + (v260 ^ 0x755BE49FB7AE5227);
  v263 = v262 - ((2 * v262) & 0x1C84B110C42563ELL) - 0x7F1BDA7779DED4E1;
  v264 = v252 ^ 0xB58273D1827A4DBELL ^ (((v260 ^ 0x755BE49FB7AE5227) & (v257 ^ 0x34E26889AC28987CLL)) - ((2 * ((v260 ^ 0x755BE49FB7AE5227) & (v257 ^ 0x34E26889AC28987CLL))) & 0xC4A579B6FB70F80) - 0x79DAD43248247840);
  v265 = (v257 ^ 0xCB1D977653D76783) & (v252 ^ 0xCC58A7E3CA5E3581) ^ v256;
  v266 = v263 ^ (v252 ^ 0x33A7581C35A1CA7ELL) & (v256 ^ 0x2AE607D6601859A9);
  v267 = v263 ^ 0x7F1BDA7779DED4E0;
  v268 = (v263 ^ 0xF5C7FE336F022130) & (v260 ^ 0x8AA41B604851ADD8);
  v269 = v266 ^ v265;
  v270 = (v264 - ((2 * v264) & 0x816B13886DA4854CLL) + 0x40B589C436D242A6) ^ v265;
  v271 = v267 & (v256 ^ 0xD519F8299FE7A656);
  v272 = v260 & 0x7523DBBBE9230A2FLL ^ v257 ^ v268;
  *(&v244 + 1) = v272 ^ 0x3D8C561BD66F8BLL;
  *&v244 = v272 ^ 0xCB00000000000000;
  v273 = v244 >> 56;
  v274 = (((v266 ^ v265) << 45) ^ 0x40C4C00000000000) - ((2 * (((v266 ^ v265) << 45) ^ 0x40C4C00000000000)) & 0x471BC00000000000);
  v275 = v274 + 0x238DF3F68D48820ALL;
  v276 = ((0xDC720C0972B77DF4 - v274) & 0x4000000000000 ^ 0x1D7EFB7CDFDEAEF7) + 2 * ((0xDC720C0972B77DF4 - v274) & 0x4000000000000);
  v277 = v276 - 0x1510D22809CA0694;
  v278 = (v271 + 0x755BE49FB7AE5227 - ((2 * v271) & 0xEAB7C93F6F5CA44ELL)) ^ v260;
  *(&v244 + 1) = v273 ^ 0xC9;
  *&v244 = v273 ^ 0x5A44EBBCA6D7D100;
  v279 = v244 >> 8;
  v280 = v279 - 0x650E69BFCC8BEC38 - ((2 * v279) & 0x35E32C8066E82790);
  v281 = v276 - 0x1D7EFB7CDFDEAEF7;
  v282 = v269 ^ (v269 >> 19) ^ 0xA25EE876B1CDABEFLL;
  v283 = (v96 & 0xC2 ^ 0xBD) - (v96 ^ 0x95) - ((2 * ((v96 & 0xC2 ^ 0xBD) - (v96 ^ 0x95))) & 0xCC) + 102;
  v284 = 0x25ED24D1B5F3575ALL - v276;
  if ((v281 & v282) == 0)
  {
    v284 = v277;
  }

  v285 = v280 ^ (v278 - 0x650E69BFCC8BEC38 - ((2 * v278) & 0x35E32C8066E82790));
  v286 = (v282 - 0x86E2954D614A863 + v284) ^ (v275 & 0xFFFBE00000000000 | (v269 >> 28));
  v287 = STACK[0x890] & 0x18;
  v288 = v286 ^ (v269 << 36);
  LODWORD(STACK[0x958]) = ((v286 >> 8) ^ 0xFFFFFFC3) - ((2 * ((v286 >> 8) ^ 0xFFFFFFC3)) & 0xFFFFFF88);
  v289 = v270 ^ (v270 >> 39) ^ (8 * v270);
  v290 = v289 ^ (v270 << 25);
  *(&v291 + 1) = ~v279;
  *&v291 = v280 ^ 0x448B0A7950422938;
  v292 = v290 ^ ((v270 ^ 0x314750CCB5A5939FLL) >> (v283 ^ 0x66u) >> (v283 ^ 0x5Bu));
  v293 = v285 ^ (v285 >> 10) ^ (v285 >> 17);
  LODWORD(STACK[0x950]) = ((v286 >> 24) ^ 0x25) - 2 * (((v286 >> 24) ^ 0x25) & 0x46 ^ (v286 >> 24) & 2);
  LODWORD(STACK[0x938]) = ((v286 >> 16) ^ 0xFFFFFFEF) - ((2 * ((v286 >> 16) ^ 0xFFFFFFEF)) & 0xFFFFFF88);
  v294 = *(v33 + 281 + ((5 * (BYTE4(v288) ^ 0x6A)) ^ 0xB2));
  LODWORD(STACK[0x930]) = ((v288 >> 40) ^ 0xFFFFFF82) - ((2 * (v288 >> 40)) & 0x1FFFF88);
  v295 = v280 ^ __ROR8__(v280, 6) ^ (v291 >> 1);
  v296 = ((v294 >> 5) | (8 * v294)) - ((2 * ((v294 >> 5) | (8 * v294))) & 0xFFFFFFCF) + 103;
  LODWORD(STACK[0x928]) = (HIBYTE(v288) ^ 0xFFFFFFC7) - ((2 * (HIBYTE(v288) ^ 0xFFFFFFC7)) & 0xFFFFFF88);
  LODWORD(STACK[0x920]) = ((v289 >> 16) ^ 0xFFFFFFEB) - ((2 * ((v289 >> 16) ^ 0xFFFFFFEB)) & 0xFFFFFF88);
  LODWORD(STACK[0x918]) = ((v289 >> 8) ^ 0xFFFFFF81) - ((2 * (v289 >> 8)) & 0xFFFFFF88);
  LODWORD(STACK[0x910]) = (HIWORD(v288) ^ 0x29) - ((2 * HIWORD(v288)) & 0x1FF88);
  v297 = v266 ^ (v266 >> 41) ^ (v266 >> 7) ^ (v266 << 23) ^ ((v266 ^ 0x3DD78782839824F4) << (v287 ^ 0x29u) << (v287 ^ 0x10u));
  LODWORD(STACK[0x908]) = ((2 * ((8 * v296) & 0xFFFFFF8F ^ v296)) & 0xFFFFFFF3 ^ 0xFFFFFFCD) + ((8 * v296) & 0xFFFFFF8F ^ v296 ^ 0x1F) - ((2 * (((2 * ((8 * v296) & 0xFFFFFF8F ^ v296)) & 0xFFFFFFF3 ^ 0xFFFFFFCD) + ((8 * v296) & 0xFFFFFF8F ^ v296 ^ 0x1F)) + 72) & 0xFFFFFF88);
  if ((v292 & 8) != 0)
  {
    v298 = (v292 ^ 0xFFFFFFC6) + 1;
  }

  else
  {
    v298 = (v292 ^ 0xFFFFFFC6) + 17;
  }

  LODWORD(STACK[0x900]) = ((v298 - 9) ^ 8) - ((2 * (v298 - 9)) & 0xFFFFFF88);
  LODWORD(STACK[0x8E8]) = (HIDWORD(v290) ^ 0xFFFFFF8E) - ((2 * (HIDWORD(v290) ^ 0xFFFFFF8E)) & 0xFFFFFF88);
  v299 = *(v33 + 539 + (((v292 >> 21) & 0xF8 | (v292 >> 29)) ^ 0x6FLL));
  LODWORD(STACK[0x8E0]) = -127 * (((v299 >> 4) | (16 * v299)) ^ 0xFFFFFFDE) - ((2 * (((v299 >> 4) | (16 * v299)) ^ 0xFFFFFFDE)) & 0xFFFFFF88);
  v300 = *(v33 + 281 + ((5 * (BYTE5(v290) ^ 0x9D)) ^ 0xB2));
  LODWORD(STACK[0x8A8]) = (HIWORD(v295) ^ 0xFFFFFF99) - ((2 * HIWORD(v295)) & 0x1FF88);
  LODWORD(STACK[0x870]) = ((v295 >> 8) ^ 0x21) - ((2 * (v295 >> 8)) & 0xFFFFFF88);
  v301 = ((v300 >> 5) | (8 * v300)) - ((2 * ((v300 >> 5) | (8 * v300))) & 0xF8C) - 58;
  LODWORD(STACK[0x868]) = ((v295 >> 40) ^ 0x26) - ((2 * ((v295 >> 40) ^ 0x26)) & 0x1FFFF88);
  LODWORD(STACK[0x860]) = ((v295 >> 16) ^ 3) - ((2 * (v295 >> 16)) & 0xFFFFFF88);
  v302 = ((((8 * v301) | 0x70) ^ v301) & 0xFFFFFFD4 ^ 0xFFFFFFD0 | (((8 * v301) | 0x70) ^ v301) & 0x2B) ^ 0xFFFFFFEF;
  v303 = v302 - ((2 * v302 + 84) & 0xFFFFFF88);
  v304 = v293 ^ (v285 << 47);
  v305 = v304 ^ (v285 << 54);
  v306 = *(STACK[0x8C0] + (((v285 ^ (v285 >> 10) ^ (v285 >> 17)) >> 24) ^ 0xA2));
  v307 = ((v306 >> 1) | (v306 << 7)) - ((2 * ((v306 >> 1) | (v306 << 7))) & 0xFFC8) + 100;
  v308 = (((16 * v307) ^ 0x40) + (~(2 * ((16 * v307) ^ 0x40)) | 0x3F) + 101) ^ v307;
  HIDWORD(v309) = v308 ^ 0xA;
  LODWORD(v309) = (v308 ^ 0xFFFFFFBF) << 24;
  v310 = (v309 >> 28) - ((2 * (v309 >> 28)) & 0xFFFFFF88);
  v311 = ((v304 >> 40) ^ 0xFFFFFFD8) - 2 * (((v304 >> 40) ^ 0xFFFFFFD8) & 0x47 ^ (v304 >> 40) & 3);
  LODWORD(v304) = *(STACK[0x8C0] + (v297 ^ 0xB0));
  LODWORD(v304) = ((v304 >> 1) | (v304 << 7)) - (v304 & 0x7C) - 66;
  LODWORD(v304) = (((16 * v304) ^ 0xFFFFFFE0) - ((2 * ((16 * v304) ^ 0xFFFFFFE0)) & 0x60) - 66) ^ v304;
  HIDWORD(v309) = v304 ^ 0xA;
  LODWORD(v309) = (v304 ^ 0xFFFFFFBF) << 24;
  v312 = (HIWORD(v297) ^ 0xFFFFFFED) - ((2 * (HIWORD(v297) ^ 0xFFFFFFED)) & 0xFFFFFF88);
  LODWORD(v304) = ((v297 >> 40) ^ 0xFFFFFFE4) - 2 * (((v297 >> 40) ^ 0xFFFFFFE4) & 0x46 ^ (v297 >> 40) & 2);
  v313 = (HIBYTE(v297) ^ 0xFFFFFFFC) - 2 * ((HIBYTE(v297) ^ 0xFFFFFFFC) & 0x45 ^ HIBYTE(v297) & 1);
  *STACK[0x970] = v288 ^ 0x1EDA373A20AB0862;
  v314 = STACK[0x948] - 711000579 - ((2 * STACK[0x948] + 2) & 0xAB3DFBFA);
  v315 = (11 * (LODWORD(STACK[0x960]) == 1231080200)) ^ LODWORD(STACK[0x878]);
  LODWORD(STACK[0x888]) = v286 ^ 0x12;
  LODWORD(STACK[0x880]) = LODWORD(STACK[0x958]) - 60;
  LODWORD(STACK[0x898]) = LODWORD(STACK[0x950]) - 60;
  LODWORD(STACK[0x890]) = LODWORD(STACK[0x938]) - 60;
  LODWORD(STACK[0x8D8]) = LODWORD(STACK[0x930]) - 60;
  LODWORD(STACK[0x8F0]) = LODWORD(STACK[0x928]) - 60;
  LODWORD(STACK[0x8C8]) = LODWORD(STACK[0x920]) - 60;
  LODWORD(STACK[0x8A0]) = LODWORD(STACK[0x918]) - 60;
  LODWORD(STACK[0x8D0]) = LODWORD(STACK[0x910]) - 60;
  LODWORD(STACK[0x8F8]) = LODWORD(STACK[0x908]) + 104;
  LODWORD(STACK[0x8B0]) = LODWORD(STACK[0x900]) - 60;
  LODWORD(STACK[0x8C0]) = LODWORD(STACK[0x8E8]) - 60;
  LODWORD(STACK[0x900]) = v295 ^ 0x59;
  LODWORD(STACK[0x8B8]) = LODWORD(STACK[0x8E0]) - 60;
  LODWORD(STACK[0x830]) = LODWORD(STACK[0x8A8]) - 60;
  LODWORD(STACK[0x908]) = LODWORD(STACK[0x870]) - 60;
  LODWORD(STACK[0x840]) = LODWORD(STACK[0x868]) - 60;
  LODWORD(STACK[0x918]) = LODWORD(STACK[0x860]) - 60;
  LODWORD(STACK[0x910]) = (HIBYTE(v290) ^ 0x22) - ((2 * HIBYTE(v290)) & 0x188) - 60;
  LODWORD(STACK[0x8E0]) = (HIWORD(v290) ^ 0x16) - ((2 * (HIWORD(v290) ^ 0x16)) & 0x1FF88) - 60;
  LODWORD(STACK[0x930]) = ((v293 >> 8) ^ 0x6C) + ~(2 * (((v293 >> 8) ^ 0x6C) & 0x46 ^ (v293 >> 8) & 2)) - 59;
  LODWORD(STACK[0x8E8]) = v303 + 110;
  LODWORD(STACK[0x920]) = (HIDWORD(v295) ^ 0x50) - 2 * ((HIDWORD(v295) ^ 0x50) & 0x47 ^ BYTE4(v295) & 3) - 60;
  LODWORD(STACK[0x838]) = (HIBYTE(v295) ^ 0xFFFFFFA1) - ((2 * HIBYTE(v295)) & 0x188) - 60;
  LODWORD(STACK[0x928]) = ((v293 >> 16) ^ 0xFFFFFFAC) - ((2 * ((v293 >> 16) ^ 0xFFFFFFAC)) & 0xFFFFFF88) - 60;
  LODWORD(STACK[0x950]) = v293 ^ 0x19;
  LODWORD(STACK[0x860]) = (HIBYTE(v305) ^ 0x58) - 2 * ((HIBYTE(v305) ^ 0x58) & 0x47 ^ HIBYTE(v305) & 3) - 60;
  STACK[0x8A8] = ((v295 >> 24) ^ 0xFFFFFFB5) - ((2 * ((v295 >> 24) ^ 0xFFFFFFB5)) & 0xFFFFFF88) - 60;
  LODWORD(STACK[0x948]) = (HIDWORD(v293) ^ 0xFFFFFFE9) - ((2 * (HIDWORD(v293) ^ 0xFFFFFFE9)) & 0xFFFFFF88) - 60;
  LODWORD(STACK[0x938]) = v310 - 60;
  LODWORD(STACK[0x850]) = v311 - 60;
  LODWORD(STACK[0x868]) = (HIWORD(v305) ^ 0x60) - ((2 * (HIWORD(v305) ^ 0x60)) & 0x1FF88) - 60;
  LODWORD(STACK[0x858]) = (v309 >> 28) - ((2 * (v309 >> 28)) & 0xFFFFFF88) - 60;
  LODWORD(STACK[0x870]) = v312 - 60;
  LODWORD(STACK[0x878]) = v304 - 60;
  LODWORD(STACK[0x84C]) = v314 + 1;
  v316 = *(STACK[0x940] + 8 * v315);
  LODWORD(STACK[0x958]) = v313 - 60;
  return v316();
}

uint64_t sub_24480A84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = STACK[0x820];
  v7 = LODWORD(STACK[0x820]) ^ 0x780AF6B6;
  ++LODWORD(STACK[0x960]);
  STACK[0x970] += 8;
  return (*(a6 + 8 * (v6 ^ 0x780AFACD ^ ((v6 != -2081190439) * (v7 ^ 0xA7A)))))();
}

uint64_t sub_24480A8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6 - 98848193;
  v8 = v6 + 1;
  if (((STACK[0x828] - 1608) | 0x3008) + v7 >= 0x18E7B437)
  {
    v9 = -1337587927;
  }

  else
  {
    v9 = -1337587944;
  }

  v10 = *(STACK[0x978] + (v9 & 0x31 ^ 0xA9) + 538);
  v11 = v9 ^ v10;
  v12 = v10 & 0x42 ^ 0x40;
  v13 = (v11 ^ 0xFFFFFFC4) - ((2 * (v11 ^ 0xFFFFFFC4) + 2) & 0x66) - 76;
  v14 = (v12 - (v10 & 0x42 ^ v11 ^ 0x7B)) ^ v11;
  v15 = v13 & 8;
  v16 = v15 | 0x52;
  v17 = v13 & 0xFFFFFFF7;
  v18 = (v15 & ~v14) == 0;
  v19 = -92 - (v15 | 0x52);
  if (v18)
  {
    v19 = v16;
  }

  v20 = ((v17 ^ 0xFFFFFFB3 ^ ((v14 ^ 0x3B) + v19 - 82)) + v12) ^ v10 & 0x42;
  v21 = ((v20 ^ 0x40) << (v10 & 2 ^ 2) << (v10 & 2)) - ((2 * ((v20 ^ 0x40) << (v10 & 2 ^ 2) << (v10 & 2))) & 0xFFFFFFCA);
  v22 = (v21 - 27) ^ 0xFFFFFFE5 | (v20 >> 6) ^ 1;
  v23 = (v22 ^ 0xFFFFFFEB) + ((2 * v22) & 0xFFFFFFD6) + 21;
  v24 = (26 - v21) & 0x20;
  if (v8 == 98835384)
  {
    v24 = 32;
  }

  if ((v9 ^ v10) == 0x79)
  {
    v25 = v23 - ((2 * v23) & 0xB8) + 287181404;
  }

  else
  {
    v25 = ~(v24 ^ (v23 - ((2 * v23) & 0xB8) + 287181404));
  }

  if ((v25 & v24) != 0)
  {
    v26 = -32;
  }

  else
  {
    v26 = 32;
  }

  v27 = v26 + v23 - 2 * ((v26 + v23) & 0x3B ^ v23 & 2) + 57;
  return (*(a6 + 8 * ((18662 * (((v27 ^ ((v27 ^ 0x39) - (v27 ^ 0xF6)) ^ 0xC7) + 2 * ((((v27 ^ 0x39) - (v27 ^ 0xF6)) ^ 0x7E) & (v27 ^ 0x39))) == 239)) ^ STACK[0x828])))();
}

uint64_t sub_24480AFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0x828]) = v11;
  LODWORD(STACK[0x808]) = v9;
  LODWORD(STACK[0x810]) = v10;
  LODWORD(STACK[0x820]) = v12;
  v13 = (v8 | ((v8 < 0x4F5D8334) << 32)) + ((v6 - 439615464) & 0x1A33FFEF ^ 0x1E548CE6C9A483BALL);
  v14 = (v7 - 600101073) + 0x22B1A9E0BCDFA796 - ((((v6 - 2022) | 0x300Au) ^ 0x179BF7D26) & (2 * (v7 - 600101073)));
  v15 = (0x1E548CE719022B88 - v13) * v13 - 0x1E548CE719020D88 * (0xC37A4E8471FA1251 - v13);
  v16 = ((2 * ((v14 ^ 0x22B1A9E0BCDFA796) - 7372800)) & 0xEFEFFFD54F8BEC90) + (((v14 ^ 0x22B1A9E0BCDFA796) - 7372800) ^ 0xF7F7FFEAA7C5F648);
  v17 = ((2 * v14) & 0xE10000 ^ 0xA10000) + (v14 ^ 0x22B1A9E0BCAF2796);
  v18 = (v17 + 0x8080015583A09B8 + v16) * (v17 - 0x8080015583A09B8 - v16);
  v19 = 7391 * v15 + 0x60D341C75FFD30CELL;
  v20 = ((2 * v18) & 0x7DDFAFE6D6EEFF6ELL) + (v18 ^ 0xBEEFD7F36B777FB7) + 0x4110280CB992D1DFLL;
  v21 = v19 < 0x250A5196;
  v22 = v19 > v20;
  v23 = v21 ^ (v20 < 0x250A5196);
  v24 = v22;
  if (v23)
  {
    v25 = v21;
  }

  else
  {
    v25 = v24;
  }

  return (*(a6 + 8 * (v6 ^ (8 * v25))))();
}

uint64_t sub_24480B188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X5>, unsigned int a4@<W8>)
{
  v6 = ((a4 + 10268) ^ 0x4110280CC85FC983) + v5;
  v7 = 7968 * v4 - 0x372FECA00F6553C0;
  v8 = (v7 < 0x33D77B40) ^ (v6 < 0x33D77B40);
  v9 = v6 <= v7;
  if (v8)
  {
    v10 = v7 < 0x33D77B40;
  }

  else
  {
    v10 = v9;
  }

  return (*(a3 + 8 * a4))(a1, a2, v10);
}

uint64_t sub_24480B1F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0x7FC]) = a3;
  LODWORD(STACK[0x800]) = v6 - 1089657693;
  v8 = *(a6 + 8 * (v7 - 10722));
  STACK[0x970] = 0x3EEF054F32EC3A8BLL;
  return v8();
}

uint64_t sub_24480B484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = LODWORD(STACK[0x960]) ^ 0x7E0ED0BF;
  v6 = (LODWORD(STACK[0x960]) << ((-46 * (v3 ^ 0x8C)) ^ 0xB)) & 2;
  STACK[0x970] += (v4 + 64) * (v4 + 64);
  return (*(a3 + 8 * ((98 * (((v6 + v5 + (((v3 ^ 0x3C8C) - 61) ^ 0x7E0ED0BE) - 2 * ((v6 + v5) & 0x7E0ED0BF ^ v5 & 1)) ^ 0x7E0ED0BC) > 0x13)) ^ v3)))();
}

uint64_t sub_24480B5DC()
{
  v2 = *(&STACK[0x5CA0] + ((v0 - 1661771811) & 0x630CF2EF ^ 0x1FFFFFFFEB428AF8) + v1);
  v3 = (v2 ^ 0xEAA2301161A410C0) + ((2 * (v2 & ((v0 + 12810) ^ 0x97EF68617DC7970))) ^ 0x1044600003080080) + ((4 * (v2 & ((v0 + 12810) ^ 0x97EF68617DC7970))) ^ 0xDF773FFFF9EFFEFFLL) + 0x97EF68617DC4B7BLL;
  v4 = (((v3 - ((2 * v3) & 0xAA116293CDE841DELL) + 0x5508B149E6F420EFLL) ^ 0xA389B8300ED7946ALL) + 1) & ((v3 - ((2 * v3) & 0xAA116293CDE841DELL) + 0x5508B149E6F420EFLL) ^ 0x5C7647CFF1286B95);
  return (*(STACK[0x940] + 8 * (v0 ^ 0xD9C ^ (10215 * ((((v4 - v0) | (v0 - v4)) & 0x8000000000000000) == 0)))))();
}

uint64_t sub_24480B7B4(uint64_t a1, unint64_t a2, uint64_t a3, int a4, int a5, unsigned int a6, unsigned int a7, uint64_t a8)
{
  v18 = (a1 ^ 0x5C7647CFF1286B95uLL) / a2 + v17 - (v12 & (2 * ((a1 ^ 0x5C7647CFF1286B95uLL) / a2)));
  v19 = v18 ^ (v17 + ((v8 + a4) | a7) - 3467);
  v20 = ((v19 + 1) ^ v18 ^ v17) - ((((v8 + a5) | a6) + v13) & (((v19 + 1) ^ v18) >> 1) ^ v14);
  v21 = v20 - (v15 & (2 * v20)) + v16;
  *(&v22 + 1) = (v21 >> 25) ^ 0x8B37307835;
  *&v22 = (v21 << 39) ^ 0x3C2C8C0000000000;
  v23 = ((v21 >> 2) & 0xCCCCCCCCCCCCCCCCLL ^ 0x7698881C08AD2574 ^ (v22 >> 41)) + (v21 & 0x3333333333333333 ^ 0x12223313100331);
  LODWORD(v23) = (((((v23 + (v23 >> 4)) & 0xF0F0F0F0F0F0F0FLL) * v11) >> 32) >> 24) - ((((((v23 + (v23 >> 4)) & 0xF0F0F0F0F0F0F0FLL) * v11) >> 32) >> 23) & 0x19C) + 783023054;
  LODWORD(v23) = ((2 * v23) & 0x22) + (v23 ^ 0x2EABFBDF) - ((2 * (((2 * v23) & 0x22) + (v23 ^ 0x2EABFBDF))) & 0x1EF5C1C2) + 1333453025;
  LODWORD(v23) = *(STACK[0x978] + (v23 ^ 0xF1) + 270) ^ v23 ^ 0x27;
  return (*(STACK[0x940] + 8 * (((v9 - (((2 * v23) & 0xD8) + (v23 ^ 0xF7F55F5FD77FFA6CLL)) - 0x80AA0A028800593 == a8) * v10) ^ v8)))();
}

uint64_t sub_24480BD04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W8>)
{
  v12 = ((2 * ((v8 ^ 0xC82FD0E2D7FF9363) - 21)) & 0x61E76FBF7FFDEB1ELL) - 0x30F3B7DFBFFEF58FLL + (((v8 ^ 0xC82FD0E2D7FF9363) - 21) ^ 0x30F3B7DFBFFEF8A6 ^ (a7 - 11666));
  v13 = 269700 * v12 * v12 - ((539400 * v12 * v12) & 0x24B25CCA5547A5B0) - 0x6DA6D19AD55C2D26;
  v14 = (182700 * v7 + 0x7377F1E84307DC78) * (v7 - 0x6F58F2FDC5AFE726) + (471975 * v9 - 0x71B28BE50B2E7B04) * (v9 - 0x4CA5E9B37A121D5CLL) + (195300 * v10 + 0x290B490FF63B3BF0) * (v10 - 0x435FB14B86F1D724);
  v15 = v14 + 0x4EBCF694600FCE93 - ((2 * v14) & 0x9D79ED28C01F9D26);
  v16 = 2 * ((v13 ^ 0x12592E652AA3D2DALL) & (v15 ^ 0x4EBCF694600FCE93)) - ((4 * ((v13 ^ 0x12592E652AA3D2DALL) & (v15 ^ 0x4EBCF694600FCE93))) & 0x3FDDFD7A1A7F4110) - 0x60110142F2C05F75;
  STACK[0x960] = (v13 ^ v15 ^ 0x430B264C4793BCC2 ^ v16) + (226548 * v11 + 0x6B369F59F5B029B0) * (v11 - 0x59D15E2F6127CD24) + 2 * ((v16 ^ 0x1FEEFEBD0D3FA08BLL) & (v13 ^ v15 ^ 0x5CE5D8F14AAC1C49));
  return (*(STACK[0x940] + 8 * a7))(a1, a2, a3, a4, a5, a6, 0xEAA2301161A410C0, 4294960044);
}

uint64_t sub_24480C17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = ((a4 - 1) ^ 0xFD63DDBBFDDF1EF3) + 0x29C22440220E10DLL + ((2 * (a4 - 1)) & 0xFAC7BB77FBBE3DE6);
  v10 = v9 - ((v9 >> 1) & 0x5555555555555555) - ((2 * (v9 - ((v9 >> 1) & 0x5555555555555555))) & 0x8B46ADBB19AC5A8ELL) + 0x45A356DD8CD62D47;
  v11 = ((v10 >> 2) & 0x3333333333333333 ^ 0x1120113323310311) + (v10 & 0x3333333333333333 ^ 0x123121100122103);
  v12 = (((v11 + (v11 >> 4)) & 0xF0F0F0F0F0F0F0FLL) * v6 - ((0x202020202020202 * ((v11 + (v11 >> 4)) & 0xF0F0F0F0F0F0F0FLL)) & 0xA4D3ED8BD84F817ELL) + 0x5269F6C5EC27C0BFLL) >> 56;
  return (*(v7 + 8 * (v5 ^ (492 * ((((2 * (v8 + v4 + (v12 ^ 0xFFFFFFFFFFFFFFADLL) + 1)) & 0xAE3FEFF7F3FBDF2CLL) + ((v8 + v4 + (v12 ^ 0xFFFFFFFFFFFFFFADLL) + 1) ^ 0x571FF7FBF9FDEF96) - 0x571FF7FBF9FDEF96) >> 63)))))();
}

uint64_t sub_24480C2F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 - 0x571FF7FBE4F1EE2FLL) < 0x150C0167 != v3 - 0x531FD7B383E9A819 < ((v4 - 20197) | 0x403u) + 353104732)
  {
    v6 = v3 - 0x531FD7B383E9A819 < ((v4 - 20197) | 0x403u) + 353104732;
  }

  else
  {
    v6 = v3 - 0x531FD7B383E9A819 > (a3 - 0x571FF7FBE4F1EE2FLL);
  }

  return (*(v5 + 8 * v4))(a1, v6);
}

uint64_t sub_24480C374(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5, char a6)
{
  v11 = v7 / a4 + v10 - (((v7 / a4) << (a5 - 10)) & 0xD11A795F250D9E64);
  v12 = (v11 ^ v10) - ((2 * (v11 ^ v10) + 0x47C6DC97B3503ABALL) & 0x5EE139B11BDE9A78) - 0x2CABF4DB98689567;
  v13 = (((2 * v12) & 0xB83923684CAFC548 ^ 0x18212120088E8048) + (v12 ^ 0x736C0D6CABB8AF98)) ^ v11;
  v14 = (v13 ^ v10) - (((v13 ^ v10) >> (v13 & 1) >> !(v13 & 1)) & 0x5555555555555555);
  v15 = ((((v14 + v9 - ((2 * v14) & 0xC284BD8146B040ACLL)) ^ v9) >> ((a6 - 1) & 2 ^ 2u) >> ((a6 - 1) & 2)) & 0x3333333333333333) + ((v14 + v9 - ((2 * v14) & 0xC284BD8146B040ACLL)) & 0x3333333333333333 ^ 0x2102120023102012);
  return (*(v8 + 8 * ((23041 * ((a3 + ((((v6 + 18256) + 0x10101010100ABA6) * ((v15 + (v15 >> 4)) & 0xF0F0F0F0F0F0F0FLL)) >> 56) - 0x571FF7FBF9FDEF97) >= 0)) ^ v6)))();
}

uint64_t sub_24480C9AC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7, char a8)
{
  LOBYTE(STACK[0xB323]) = STACK[0x898];
  LOBYTE(STACK[0xB321]) = STACK[0x880];
  LOBYTE(STACK[0xB32E]) = STACK[0x8E0];
  LOBYTE(STACK[0xB320]) = STACK[0x888];
  LOBYTE(STACK[0xB322]) = STACK[0x890];
  LOBYTE(STACK[0xB325]) = STACK[0x8D8];
  LOBYTE(STACK[0xB32A]) = STACK[0x8C8];
  LOBYTE(STACK[0xB326]) = STACK[0x8D0];
  LOBYTE(STACK[0xB333]) = STACK[0x8A8];
  LOBYTE(STACK[0xB329]) = STACK[0x8A0];
  LOBYTE(STACK[0xB327]) = STACK[0x8F0];
  LOBYTE(STACK[0xB32B]) = STACK[0x8B8];
  LOBYTE(STACK[0xB328]) = STACK[0x8B0];
  LOBYTE(STACK[0xB324]) = STACK[0x8F8];
  LOBYTE(STACK[0xB32F]) = STACK[0x910];
  LOBYTE(STACK[0xB32C]) = STACK[0x8C0];
  LOBYTE(STACK[0xB336]) = v17;
  LOBYTE(STACK[0xB33A]) = STACK[0x928];
  LOBYTE(STACK[0xB330]) = STACK[0x900];
  LOBYTE(STACK[0xB332]) = STACK[0x918];
  LOBYTE(STACK[0xB32D]) = STACK[0x8E8];
  LOBYTE(STACK[0xB331]) = STACK[0x908];
  LOBYTE(STACK[0xB334]) = STACK[0x920];
  LOBYTE(STACK[0xB33C]) = STACK[0x948];
  LOBYTE(STACK[0xB335]) = a6;
  LOBYTE(STACK[0xB338]) = STACK[0x950];
  LOBYTE(STACK[0xB33D]) = a2;
  LOBYTE(STACK[0xB337]) = a7;
  LOBYTE(STACK[0xB33B]) = STACK[0x938];
  LOBYTE(STACK[0xB33F]) = a8;
  LOBYTE(STACK[0xB339]) = STACK[0x930];
  LOBYTE(STACK[0xB343]) = STACK[0x828];
  LOBYTE(STACK[0xB341]) = v12;
  LOBYTE(STACK[0xB33E]) = v16;
  LOBYTE(STACK[0xB346]) = v15;
  LOBYTE(STACK[0xB340]) = a5;
  LOBYTE(STACK[0xB345]) = v13;
  LOBYTE(STACK[0xB342]) = v14;
  LOBYTE(STACK[0xB344]) = v10;
  LOBYTE(STACK[0xB347]) = v9;
  return (*(v11 + 8 * v8))();
}

uint64_t sub_24480CAF4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7, char a8)
{
  LOBYTE(STACK[0xB323]) = STACK[0x898];
  LOBYTE(STACK[0xB321]) = STACK[0x880];
  LOBYTE(STACK[0xB32E]) = STACK[0x8E0];
  LOBYTE(STACK[0xB320]) = STACK[0x888];
  LOBYTE(STACK[0xB322]) = STACK[0x890];
  LOBYTE(STACK[0xB325]) = STACK[0x8D8];
  LOBYTE(STACK[0xB32A]) = STACK[0x8C8];
  LOBYTE(STACK[0xB326]) = STACK[0x8D0];
  LOBYTE(STACK[0xB333]) = STACK[0x8A8];
  LOBYTE(STACK[0xB329]) = STACK[0x8A0];
  LOBYTE(STACK[0xB327]) = STACK[0x8F0];
  LOBYTE(STACK[0xB32B]) = STACK[0x8B8];
  LOBYTE(STACK[0xB328]) = STACK[0x8B0];
  LOBYTE(STACK[0xB324]) = STACK[0x8F8];
  LOBYTE(STACK[0xB32F]) = STACK[0x910];
  LOBYTE(STACK[0xB32C]) = STACK[0x8C0];
  LOBYTE(STACK[0xB336]) = v17;
  LOBYTE(STACK[0xB33A]) = STACK[0x928];
  LOBYTE(STACK[0xB330]) = STACK[0x900];
  LOBYTE(STACK[0xB332]) = STACK[0x918];
  LOBYTE(STACK[0xB32D]) = STACK[0x8E8];
  LOBYTE(STACK[0xB331]) = STACK[0x908];
  LOBYTE(STACK[0xB334]) = STACK[0x920];
  LOBYTE(STACK[0xB33C]) = STACK[0x948];
  LOBYTE(STACK[0xB335]) = a6;
  LOBYTE(STACK[0xB338]) = STACK[0x950];
  LOBYTE(STACK[0xB33D]) = a2;
  LOBYTE(STACK[0xB337]) = a7;
  LOBYTE(STACK[0xB33B]) = STACK[0x938];
  LOBYTE(STACK[0xB33F]) = a8;
  LOBYTE(STACK[0xB339]) = STACK[0x930];
  LOBYTE(STACK[0xB343]) = STACK[0x828];
  LOBYTE(STACK[0xB341]) = v12;
  LOBYTE(STACK[0xB33E]) = v16;
  LOBYTE(STACK[0xB346]) = v15;
  LOBYTE(STACK[0xB340]) = a5;
  LOBYTE(STACK[0xB345]) = v13;
  LOBYTE(STACK[0xB342]) = v14;
  LOBYTE(STACK[0xB344]) = v10;
  LOBYTE(STACK[0xB347]) = v9;
  return (*(v11 + 8 * v8))();
}

uint64_t sub_24480CD1C@<X0>(char a1@<W0>, int a2@<W2>, int a3@<W3>, int a4@<W4>, unsigned int a5@<W8>)
{
  v12 = v7 < a5;
  v13 = *(v6 + (a4 + v9));
  v14 = v13 ^ (2 * v8) ^ v10;
  if ((v13 ^ (2 * v8)) == 0x11)
  {
    v14 = a1;
  }

  *(v6 + (a4 + v9)) = v14 ^ v13;
  v15 = a4 + a2;
  v16 = v12 ^ (v15 < a5);
  v17 = v15 < v7;
  if (!v16)
  {
    v12 = v17;
  }

  return (*(v11 + 8 * ((!v12 * a3) ^ v5)))();
}

uint64_t sub_24480CE04(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(&off_278E1E490 + ((49 * ((qword_27EDF1468 - dword_27EDF08D8) ^ 0x27)) ^ byte_244FB9690[byte_244F6B4B0[(49 * ((qword_27EDF1468 - dword_27EDF08D8) ^ 0x27))] ^ 0xB5]) + 1543);
  v3 = *(v2 - 4);
  v4 = *(&off_278E1E490 + (byte_244FB969C[(byte_244F6B4BC[(49 * (v3 ^ qword_27EDF1468 ^ 0x27)) - 12] ^ 0x7D) - 12] ^ (49 * (v3 ^ qword_27EDF1468 ^ 0x27))) + 526);
  v5 = 2085698353 * (((*v4 ^ v3) - &v10) ^ 0xE03D7A67A7B7BC27);
  *(v2 - 4) = v5;
  *v4 = v5;
  v6 = *(&off_278E1E490 + ((49 * (dword_27EDF08D8 ^ 0x27 ^ qword_27EDF1468)) ^ byte_244FB9590[byte_244F6B3B0[(49 * (dword_27EDF08D8 ^ 0x27 ^ qword_27EDF1468))] ^ 0x9E]) - 91);
  v7 = 1649972239 * (&v11 ^ 0x61143E1BDBB82C78);
  v8 = *(v6 + 8336) - v7;
  v11 = v7 - 721054033;
  v14 = v8;
  v15 = a2;
  v12 = a1;
  (*(v6 + 8 * ((byte_244FB9598[(byte_244F6B3B8[(49 * ((*v4 - *(v2 - 4)) ^ 0x27)) - 8] ^ 0x9E) - 8] ^ (49 * ((*v4 - *(v2 - 4)) ^ 0x27))) + 22797) - 8))(&v11);
  return v13;
}

uint64_t sub_24480D0FC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = v11 + v9 - 1030;
  a3[103] = *(v10 + 8 * v13);
  a3[104] = a7;
  a3[106] = v7;
  *(v12 - 128) = v9 + 867706601 * ((-260709229 - ((v12 - 144) | 0xF075E493) + ((v12 - 144) | 0xF8A1B6C)) ^ 0xB932107) + 2093799890;
  *(v8 + 856) = &STACK[0x518];
  (*(v10 + 8 * (v9 + 721077060)))(v12 - 144);
  return (*(v10 + 8 * (v13 ^ 0xA35)))(a1);
}

uint64_t sub_24480D34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, _DWORD *a30)
{
  *(*(a7 + 96) - 0x708103872B23E2ADLL) = 945977655;
  *(*(a7 + 96) - 0x708103872B23E2A9) = 1217468904;
  *(*(a7 + 96) - 0x708103872B23E2A5) = *(a7 + 96) - 0x673ED64AC9AAC265;
  v35 = *(a7 + 96) - 0x2DB2DA156509FF41;
  v36 = *(v30 - 0x64A7AA5385813DC5);
  v37 = *a30 + 142515121;
  v38 = 810199703 * ((((v34 - 144) | 0xBB5A9C75AC3D8ACELL) - (v34 - 144) + ((v34 - 144) & 0x44A5638A53C27530)) ^ 0xB08F4BC34AB49C43);
  v31[109] = *(v33 + 8 * v32) ^ v38;
  v31[108] = v36;
  *(v34 - 144) = v32 - v38 - 401984601;
  *(v34 - 140) = v37 ^ v38;
  v31[107] = v35;
  (*(v33 + 8 * (v32 ^ 0x5DB7)))(v34 - 144);
  return (*(v33 + 8 * (v32 ^ 0xF9E)))(a1);
}

uint64_t sub_24480D4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a7 = *(v7 - 0x64A7AA5385813DBDLL);
  *(a7 + 8) = *(v7 - 0x64A7AA5385813DB5);
  return (*(v10 + 8 * (v9 + v8)))();
}

uint64_t sub_24480D588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, int a29, uint64_t a30, uint64_t a31, uint64_t a32, _DWORD *a33)
{
  *(*(a7 + 96) - 0x708103872B23E6A5) = a29;
  v35 = *a33 + ((v33 - 585675881) & 0xF7EDF7EF ^ 0xDD6392B0) - ((2 * *a33 + 691527744) & ((v33 - 14812) ^ 0x27943EB2));
  return (*(v34 + 8 * (v33 ^ (((v35 ^ 0x6C086804) - 1090527568 + ((2 * v35) & 0xFF84F7F6 ^ 0x278427F6) != 1052924587) << 6))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
}

uint64_t sub_24480D7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(a7 + 40) = *(v7 - 0x64A7AA5385813DC9);
  *(a7 + 48) = *(v7 - 0x64A7AA5385813DC5);
  return (*(v9 + 8 * ((v8 - 1195230617) ^ 0x8DC7D796 ^ (2202 * (v8 != 1268510674)))))();
}

uint64_t sub_24480D984@<X0>(int a1@<W1>, int a2@<W2>, uint64_t a3@<X6>, int a4@<W8>)
{
  *(a3 + (v9 + a4) + 4) = *(*v6 + (a2 + v8));
  v13 = *v7 + v11;
  v14 = v13 < v4;
  v15 = a2 + v10 < v13;
  if (a2 + v10 < v4 != v14)
  {
    v15 = v14;
  }

  return (*(v12 + 8 * ((v15 * a1) ^ v5)))();
}

uint64_t sub_24480DA0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, _DWORD *a33)
{
  *(a7 + (a32 + a9) + 4) = 0;
  *a33 = a32;
  return (*(v35 + 8 * (v33 + v34 - 86)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_24480DA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(a7 + 24) = *(v7 - 0x64A7AA5385813DC9);
  *(a7 + 32) = *(v7 - 0x64A7AA5385813DC5);
  return (*(v10 + 8 * ((4692 * (v9 == -1630885439)) ^ (v9 + v8))))();
}

uint64_t sub_24480DB1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = **(v20 - 0x64A7AA5385813DC5) != ((a9 ^ (a2 + 6)) + 81);
  *(a7 + 88) = (v22 | (2 * v22)) ^ 0x35;
  return (*(v21 + 8 * a9))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_24480DB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(a7 + 56) = *(v7 - 0x64A7AA5385813DC9);
  *(a7 + 64) = *(v7 - 0x64A7AA5385813DC5);
  return (*(v10 + 8 * (v9 + v8)))();
}

uint64_t sub_24480DBAC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v12 = v8 ^ (a2 + 1792);
  v13 = v10 + v8 - 981;
  v14 = *(v9 + 8 * v13);
  v15 = 715682041 * ((2 * ((v11 - 144) & 0x4BDCB9CB8A634E38) - (v11 - 144) + 0x34234634759CB1C6) ^ 0x4DF2C51180DA4A94);
  *(v7 + 848) = &STACK[0xEF0A890CD1B986E];
  *(v11 - 136) = (v8 - 1479135673) ^ v15;
  *(v7 + 864) = v14 - v15;
  (*(v9 + 8 * (v8 + 721077047)))(v11 - 144);
  STACK[0xA38] = *(v9 + 8 * (v12 ^ 0xFD5 ^ v13)) - 1459227061 * ((((v11 - 144) | 0x6CC53C3BF09A51EBLL) - ((v11 - 144) | 0x933AC3C40F65AE14) - 0x6CC53C3BF09A51ECLL) ^ 0xDCEFD288FAA27B22);
  STACK[0xA20] = &STACK[0xEF0A890CD1B986E];
  *(v11 - 128) = 1459227061 * ((((v11 - 144) | 0xF09A51EB) - ((v11 - 144) | 0xF65AE14) + 258321940) ^ 0xFAA27B22) + 826007407 + v8;
  STACK[0xA28] = a7;
  v17 = (*(v9 + 8 * (v8 + 721077108)))(v11 - 144);
  LOBYTE(STACK[0x71A]) = 0;
  STACK[0x723] = 0;
  STACK[0x71B] = 0;
  return (*(v9 + 8 * (v13 ^ 0xB92)))(v17);
}

uint64_t sub_24480DDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, _BYTE *a29, _BYTE *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, unsigned __int8 *a38, uint64_t a39)
{
  v41 = (*(v40 + 8 * (v39 + 14233)))(&STACK[0x6D0], 74, a24);
  v52 = *a38;
  v42 = (*(v40 + 8 * (v39 ^ 0x7B54)))(a39 + ((v41 - ((2 * v41) & 0xBF9CE66) + 100460339) ^ 0x5FCE733), 74, 0, -1, a25);
  v50 = *a38;
  if ((v50 - 127) < 0xFFFFFFA1)
  {
    LOBYTE(v50) = 46;
  }

  *a29 = v50;
  *a30 = 0;
  LODWORD(a24) = v39 ^ 0x7B54;
  return (*(v40 + 8 * v39))(v42, v43, v44, v45, v46, v47, v48, v49, v52, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a38, a39, a24, a25, a26, a27, a28);
}

uint64_t sub_24480DE9C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v45 = *(a29 + a15 + v29);
  v34 = (*(v33 + 8 * a17))(a16 + (a1 ^ 0x5FCE733), 74, 0, -1, a18);
  v42 = (v30 + ((a29 + 10) & 0xF));
  if ((v31 + *(a29 + a15 + v29) - 75) >= 0xA1u)
  {
    v43 = *(a29 + a15 + v29);
  }

  else
  {
    v43 = 46;
  }

  *v42 = v43;
  v42[1] = 0;
  return (*(v33 + 8 * ((3622 * (a29 == 133476661)) ^ v32)))(v34, v35, v36, v37, v38, v39, v40, v41, v45, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t sub_24480DF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, unint64_t a37)
{
  STACK[0xA30] = a37;
  STACK[0xA20] = a10;
  *(v38 - 120) = (v37 - 1294) ^ (1659165839 * ((v38 - 144) ^ 0x1B741E8F));
  (*(a26 + 8 * (v37 ^ 0x51F0)))(v38 - 144);
  return (*(a26 + 8 * ((8481 * (*(v38 - 136) == ((((v37 - 1006565277) | 0x11048280) + 721055110) ^ 0x487C90E1))) ^ v37)))(a12);
}

uint64_t sub_24480E028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v19 = v12 + v15 + 29;
  v20 = *(v17 + 8 * v15);
  v21 = 412655981 * (((v16 | 0xE4C8A57A540DA0ALL) - (v16 & 0xE4C8A57A540DA0ALL)) ^ 0x1DE080E66839CF88);
  *(v18 - 132) = (v15 - 1647801340) ^ v21;
  *(v14 + 848) = v20 ^ v21;
  *(v14 + 864) = v13;
  (*(v17 + 8 * (v15 + 21948)))(v18 - 144);
  return (*(v17 + 8 * (((v19 ^ 0xD50596B6) * (a11 == 0)) ^ (v15 + 10195))))(a12);
}

uint64_t sub_24480E12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(a7 + 88) = 53;
  *(a7 + 72) = *(v7 - 0x64A7AA5385813DC9);
  *(a7 + 80) = *(v7 - 0x64A7AA5385813DC5);
  return (*(v10 + 8 * (v9 + v8)))();
}

uint64_t sub_24480E28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = v11 + v9 - 999;
  v14 = *(v7 - 0x64A7AA5385813DBDLL);
  *(*(a7 + 96) - 0x708103872B23E6BDLL) = v14;
  v15 = *(v7 - 0x64A7AA5385813DB5);
  v16 = *(v10 + 8 * v13);
  v17 = 1143492667 * ((((v12 - 144) | 0x121D45A6C3D097ELL) - ((v12 - 144) & 0x121D45A6C3D097ELL)) ^ 0x57FF70C373161F72);
  v8[109] = *(a7 + 96) - 0x708103872B23DED1;
  v8[108] = v16 ^ v17;
  v8[107] = v15;
  *(v12 - 144) = v17 + 1224644088 + v9;
  *(v12 - 140) = v17 + v14 + 1051671386;
  (*(v10 + 8 * (v9 ^ 0xD505CF7E)))(v12 - 144);
  return (*(v10 + 8 * (v13 ^ 0xA54)))(a1);
}

uint64_t sub_24480E3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  HIDWORD(a27) = 18;
  a43 = 0;
  *(a3 + 16) = &a43;
  *(a3 + 24) = &a36;
  a65 = 1216117114;
  return (*(v66 + 8 * (((2 * (v65 ^ (a2 + 551)) - 1103) * (a7 == 0x7569E2FC767C5DE5)) ^ (v65 + 721066075))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, 0x315837E02574BCEELL, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_24480E42C@<X0>(void *a1@<X2>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  a1[103] = *(v69 + 8 * v68);
  a1[104] = *(v66 + 8 * (v68 - 336)) - 12;
  a1[106] = a2 + 0x1D65AE164D5E18D2;
  a1[108] = v65 + 0x684E72B81371B47BLL;
  LOBYTE(STACK[0x548]) = 34;
  *(v70 - 128) = v68 + 867706601 * ((((2 * (v70 - 144)) | 0x986DE042) - (v70 - 144) + 868814815) ^ 0xC82FCA4A) + 1372744747;
  *(v67 + 856) = &STACK[0x518];
  v71 = (*(v69 + 8 * (v68 ^ 0x5DA5)))(v70 - 144);
  v72 = *(v70 - 144);
  STACK[0x200] = *a65;
  return (*(v69 + 8 * (v68 ^ 0xA4F ^ (61 * (v72 == v68 + 1216109108 + ((2 * v68) ^ 0x3EE6))))))(v71);
}

uint64_t sub_24480E550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v34 = **(a5 + 24);
  LODWORD(STACK[0x20C]) = (2 * v34) & 0xCD61D9CE ^ 0x486159CC;
  *(a5 + 48) = &STACK[0x780];
  *(a5 + 56) = &STACK[0x7CA];
  LODWORD(STACK[0x7CA]) = 0;
  LOWORD(STACK[0x7CE]) = 0;
  STACK[0x7D0] = 0;
  *(a5 + 64) = &STACK[0x7D0];
  *(a5 + 72) = &STACK[0x7D4];
  *(a5 + 80) = &STACK[0x7D8];
  LOWORD(STACK[0x7D8]) = 0;
  LOBYTE(STACK[0x7DA]) = 0;
  LODWORD(STACK[0x23C]) = v34 ^ 0x43C45009;
  return (*(v33 + 8 * v32))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_24480E61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v34 = LODWORD(STACK[0x23C]) + LODWORD(STACK[0x20C]);
  LODWORD(STACK[0x240]) = v34;
  return (*(v33 + 8 * ((1926 * ((((v32 - 10969) ^ ((v34 + 424612633) < 0x80000001)) & 1) == 0)) ^ v32)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_24480E688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  LODWORD(a23) = (v36 | 0x1000) + 3358 + LODWORD(STACK[0x240]) - 879408673;
  LODWORD(STACK[0x244]) = a23;
  return (*(v39 + 8 * (v36 | 0x1000)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, *(a5 + 56), *(a5 + 32), a23, v38, v37, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36);
}

uint64_t sub_24480E6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (v27)
  {
    v29 = 0;
  }

  else
  {
    v29 = v26 ^ 0xD0F9719C ^ ((v28 + 1140881752) | 0x910504A2);
  }

  v30 = (*(a26 + 8 * (v28 ^ 0x4147)))(&STACK[0x780] + v29, 74, 0, -1, a24);
  return (*(a26 + 8 * v28))(v30);
}

uint64_t sub_24480E780@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v26 = (*(a19 + 8 * (v22 ^ 0xD505CF5D)))(v20 + (a1 ^ v19), 74, 0, -1, a18);
  if (*(v24 + v21) - 127 >= 0xFFFFFFA1)
  {
    v27 = *(v24 + v21);
  }

  else
  {
    v27 = 46;
  }

  *(a14 + v25) = v27;
  *(a14 + v25 - 17953 + ((v22 + 1776214088) & 0xC11BCF2A)) = 0;
  v29 = (v23 + 710003651) > 0x32467CE7 && v23 + 710003651 < a16;
  return (*(a19 + 8 * ((v22 + 721072706) ^ (489 * v29))))(v26);
}

uint64_t sub_24480EBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, _DWORD *a30, int a31, int a32)
{
  *(*(a7 + 96) - 0x708103872B23E43DLL) = 945977655;
  *(*(a7 + 96) - 0x708103872B23E439) = 1217468904;
  *(*(a7 + 96) - 0x708103872B23E435) = *(a7 + 96) - 0x673ED64AC9AAC3F5;
  v38 = *(a7 + 96) - 0x2DB2DA15650A00D1;
  v39 = *(v32 - 0x64A7AA5385813DC5) + (*a30 - a32);
  v40 = v32;
  v41 = 810199703 * ((((v37 - 144) | 0xE0E3A1F30C24D857) - (v37 - 144) + ((v37 - 144) & 0x1F1C5E0CF3DB27A8)) ^ 0xEB367645EAADCEDALL);
  v33[109] = *(v36 + 8 * v34) ^ v41;
  *(v37 - 144) = v34 - v41 - 401984601;
  *(v37 - 140) = (a32 + 142515121) ^ v41;
  v33[107] = v38;
  v33[108] = v39;
  (*(v36 + 8 * (v34 + 21907)))(v37 - 144);
  *(*(a7 + 96) - 0x708103872B23E44DLL) = *(v40 - 0x64A7AA5385813DC5) + (*a30 - a32);
  return (*(v36 + 8 * (v34 ^ 0xC6F)))(v35);
}

uint64_t sub_24480EDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, _DWORD *a30, int a31, int a32)
{
  *(*(a7 + 96) - 0x708103872B23E43DLL) = 945977655;
  *(*(a7 + 96) - 0x708103872B23E439) = 1217468904;
  *(*(a7 + 96) - 0x708103872B23E435) = *(a7 + 96) - 0x673ED64AC9AAC3F5;
  v38 = *(a7 + 96) - 0x2DB2DA15650A00D1;
  v39 = *(v36 + 8 * v35);
  v40 = 810199703 * ((~(v37 - 144) & 0x41758A5F87DF571CLL | (v37 - 144) & 0xBE8A75A07820A8E3) ^ 0x4AA05DE961564191);
  v33[108] = *(v32 - 0x64A7AA5385813DC5) + (*a30 - a32);
  v33[107] = v38;
  *(v37 - 144) = v35 - v40 - 401984601;
  *(v37 - 140) = (a32 + 142515121) ^ v40;
  v33[109] = v39 ^ v40;
  (*(v36 + 8 * (v35 ^ 0x5DB7)))(v37 - 144);
  return (*(v36 + 8 * (v35 + 1003)))(v34);
}

uint64_t sub_24480EF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, _DWORD *a30, int a31, int a32)
{
  *(*(a7 + 96) - 0x708103872B23E2ADLL) = 945977655;
  *(*(a7 + 96) - 0x708103872B23E2A9) = 1217468904;
  *(*(a7 + 96) - 0x708103872B23E2A5) = *(a7 + 96) - 0x673ED64AC9AAC265;
  v38 = *(a7 + 96) - 0x2DB2DA156509FF41;
  v39 = *(v36 + 8 * v34);
  v33[108] = *(v32 - 0x64A7AA5385813DC5) + (*a30 - a32);
  *(v37 - 144) = v34 - 810199703 * ((((v37 - 144) | 0x5D9F0CDD) - ((v37 - 144) | 0xA260F322) - 1570704606) ^ 0xBB161A50) - 401984601;
  *(v37 - 140) = (a32 + 142515121) ^ (810199703 * ((((v37 - 144) | 0x5D9F0CDD) - ((v37 - 144) | 0xA260F322) - 1570704606) ^ 0xBB161A50));
  v33[109] = v39 ^ (810199703 * ((((v37 - 144) | 0xEAF6BCDB5D9F0CDDLL) - ((v37 - 144) | 0x15094324A260F322) + 0x15094324A260F322) ^ 0xE1236B6DBB161A50));
  v33[107] = v38;
  (*(v36 + 8 * (v34 + 21907)))(v37 - 144);
  return (*(v36 + 8 * (v34 + 1003)))(v35);
}

void sub_244813208()
{
  v0 = MEMORY[0x28223BE20]();
  v20[54] = *MEMORY[0x277D85DE8];
  v1 = 412655981 * (((v0 | 0x26346949) - v0 + (v0 & 0xD9CB96B6)) ^ 0xEB4D7CCB);
  v2 = *(v0 + 32) - v1;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v17 = *(v0 + 64) + v1;
  v5 = *(v0 + 8);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = *(&off_278E1E490 + (v2 ^ 0x13C7)) - 8;
  (*&v9[8 * v2 + 143776])(v18, 0, 1024);
  (*&v9[8 * v2 + 143776])(&v19, 0, 20);
  (*&v9[8 * v2 + 143776])(v20, 0, 120);
  if (v4)
  {
    v10 = v6 == 0;
  }

  else
  {
    v10 = 1;
  }

  v16 = v10 || v17 != 505186521 || v5 == 0 || v3 == 0 || v7 == 0 || v8 == 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_244813418(_DWORD *a1)
{
  v8 = STACK[0x3C0];
  v9 = *a1 + STACK[0x3C0];
  v10 = a1[1] ^ STACK[0x3C0];
  STACK[0x390] = a1;
  v11 = a1[17] - v8;
  STACK[0x1510] = v2;
  LODWORD(STACK[0x1518]) = v11 * (((v4 + 2421) | 0x129) + 2091064284) - 1482713911;
  v12 = v9 ^ 0xD20F4A49;
  v13 = 1143492667 * ((-1351238572 - ((v7 - 232) | 0xAF75BC54) + ((v7 - 232) | 0x508A43AB)) ^ 0x4FA155A7);
  *(v7 - 216) = &STACK[0x6C24B3BD0557BCB1];
  *(v7 - 208) = &STACK[0x597F48B5D94E1730];
  *(v7 - 184) = v3;
  *(v7 - 224) = v6;
  *(v7 - 196) = (v4 - 1159) ^ v13;
  *(v7 - 192) = v12 + v13;
  *(v7 - 232) = v13 + 601453908 + v10;
  v14 = *(v5 + 8 * (v4 + 20730));
  STACK[0x3D8] = v1;
  STACK[0x3E0] = v5;
  v15 = v14(v7 - 232);
  v16 = *(STACK[0x3E0] + 8 * (((*(v7 - 200) == 1216124116) * (((v4 - 2055) | 0x600) + 9125)) ^ v4));
  STACK[0x388] = *(&off_278E1E490 + v4 - 1377) - 4;
  STACK[0x398] = *(&off_278E1E490 + v4 - 2088) - 2;
  return v16(v15);
}

uint64_t sub_2448135E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = STACK[0x410];
  STACK[0x14F8] = *(STACK[0x410] + 24);
  LODWORD(STACK[0x1528]) = *(v9 + 64);
  STACK[0x1520] = *(v9 + 56);
  v10 = *(a8 + 8 * v8);
  STACK[0x610] = &STACK[0x152C];
  return v10();
}

uint64_t sub_2448136C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v14 - 232) = v13 - 1230911237 * v12 - 7628;
  v15 = (*(a8 + 8 * (v13 + 2448)))(v14 - 232);
  v16 = STACK[0x3E0];
  v17 = *(v14 - 224);
  v18 = (v10 + v8 + v11);
  v18[1814] = v17 ^ 0xB0;
  v18[1815] = (v17 >> ((3 * (v13 ^ 0xBB)) ^ ((v13 ^ 0xB8) - 71))) ^ 0x9B;
  v18[1816] = BYTE2(v17) ^ 0xED;
  v18[1817] = BYTE3(v17) ^ 0x56;
  return (*(v16 + 8 * ((254 * (v11 != v9 + 56)) ^ v13)))(v15);
}

uint64_t sub_244813778@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v2[1818] = BYTE4(a2) ^ 0x80;
  v2[1819] = (((v3 - 61) & 0xFD ^ 0x5E) + v3 - 95) ^ BYTE5(a2);
  v2[1820] = BYTE6(a2) ^ 0x8D;
  v2[1821] = HIBYTE(a2) ^ 0x35;
  return (*(a1 + 8 * (v3 ^ (56 * (v5 + 8 == v4 + 60)))))();
}

uint64_t sub_244813878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x868] = &STACK[0x1568];
  LODWORD(STACK[0x1568]) = 60;
  v9 = (*(a8 + 8 * (v8 ^ 0x4ECE)))();
  v10 = (*(STACK[0x3E0] + 8 * (v8 + 17784)))(v9, &STACK[0x648], &STACK[0x40C], &STACK[0x770], &STACK[0x658]);
  return (*(STACK[0x3E0] + 8 * ((2066 * (v10 == ((10 * (v8 ^ 0x14F6)) ^ 0x42E))) ^ v8)))();
}

uint64_t sub_244813928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0x40C];
  LODWORD(STACK[0x1568]) = STACK[0x40C];
  return (*(a6 + 8 * ((500 * ((((v7 - ((2 * v7) & 0x279427FE) + 332010495) << (((v6 ^ 0x7C) - 98) ^ 0x7E)) & 0xFF84F7F6 ^ 0x278427F6) + ((v7 - ((2 * v7) & 0x279427FE) + 332010495) ^ 0x6C086804) + (v6 ^ 0x527C) - 17075 - 1090528638 != 1052924587)) ^ v6 ^ 0x527C)))();
}

uint64_t sub_244813B14(int a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = (a2 + v7);
  v9 = *(v6 + v8 - 15);
  v10 = *(v6 + v8 - 31);
  v11 = a4 + v8;
  *(v11 + 37) = v9;
  *(v11 + 21) = v10;
  return (*(a6 + 8 * ((124 * (a3 == 0)) ^ a1)))();
}

uint64_t sub_244813D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0xE68] = *(a6 + 8 * v7);
  STACK[0xE70] = v6 + 36;
  *(v8 - 216) = v7 + 867706601 * ((((2 * (v8 - 232)) | 0xCAC567FE) - (v8 - 232) + 446516225) ^ 0xE17B8994) + 1372744787;
  *(v8 - 224) = &STACK[0xE68];
  v9 = (*(a6 + 8 * (v7 ^ 0x5DDD)))(v8 - 232);
  return (*(STACK[0x3E0] + 8 * (v7 ^ (v7 + 3963) ^ 0x1E8C ^ (16696 * (*(v8 - 232) == ((v7 - 1683956792) & 0x645F36EF) + 1216118254)))))(v9);
}

uint64_t sub_244813E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x12D0] = 0;
  LODWORD(STACK[0x12D8]) = 0;
  v9 = (*(a8 + 8 * (v8 + 17262)))(&STACK[0x12D0], 0);
  return (*(STACK[0x3E0] + 8 * (((v9 != 0) * ((v8 - 4728) ^ 0x5A1)) ^ v8)))();
}

uint64_t sub_244813E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x1508] = STACK[0x12D0];
  STACK[0x588] = 0;
  STACK[0xE68] = *(a8 + 8 * v9);
  STACK[0xE70] = STACK[0x3B0];
  LODWORD(STACK[0xE7C]) = 1285062080;
  STACK[0xE80] = &STACK[0xED0];
  STACK[0xE88] = 0xF3ED1B16D1825F70;
  *(v11 - 224) = &STACK[0xE68];
  *(v11 - 216) = v10 + ((2 * ((v11 - 232) & 0x192779D0) - (v11 - 232) - 422017493) ^ 0xE2C1BC40) * v8 + v9;
  v12 = (*(a8 + 8 * (v9 + 21893)))(v11 - 232);
  return (*(STACK[0x3E0] + 8 * (((*(v11 - 232) == 1216124116) * ((v9 + 3899) ^ 0x2DF)) ^ ((((v9 + 2996) | 0x480) ^ 0x34AD) + v9))))(v12);
}

uint64_t sub_244813F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x3C0]) = (v8 - 5282) | 0x14BC;
  LODWORD(STACK[0x3D0]) = v8;
  v9 = (*(a8 + 8 * (v8 + 17738)))(&STACK[0xED0], 1024);
  v10 = STACK[0x3C0];
  v11 = STACK[0x3E0];
  v12 = ((2 * v9) & 0xBF2FFABE) + ((v8 + 8306) ^ 0x5F97C84B ^ v9);
  LODWORD(STACK[0x1330]) = 2076405991;
  STACK[0x1310] = 0xEBDE5E05BCC033FLL;
  STACK[0x1318] = 0xDED81978565091F0;
  STACK[0x1328] = 0x4397875AF2C75301;
  STACK[0x1320] = 0x2127E687A9AF6E0FLL;
  LODWORD(STACK[0x340]) = v12;
  return (*(v11 + 8 * (((v12 - 1603796383 < 0xFFFFFFC0) * (v10 - 5278)) ^ LODWORD(STACK[0x3D0]))))();
}

uint64_t sub_2448140E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = (&STACK[0x12D0] + (((v9 - 4476) ^ 0xFFFFFCA0) & v8));
  v12.i64[0] = 0x9292929292929292;
  v12.i64[1] = 0x9292929292929292;
  v13.i64[0] = 0x4949494949494949;
  v13.i64[1] = 0x4949494949494949;
  v14 = vaddq_s8(vsubq_s8(*(v10 + v8 + 16), vandq_s8(vaddq_s8(*(v10 + v8 + 16), *(v10 + v8 + 16)), v12)), v13);
  *v11 = vaddq_s8(vsubq_s8(*(v10 + v8), vandq_s8(vaddq_s8(*(v10 + v8), *(v10 + v8)), v12)), v13);
  v11[1] = v14;
  return (*(a8 + 8 * ((21891 * (v8 == 32)) ^ v9)))();
}

uint64_t sub_2448141A8@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v4 = LODWORD(STACK[0x340]) + 2147341860;
  v5 = (a2 - 1897437322) & 0x71188EB5 ^ 0xDF95DF12;
  STACK[0x3B0] = &STACK[0x12D0] + v2;
  v6 = *(a1 + 8 * a2);
  v7 = (v3 - 1703033783) & 0x65827BFF;
  LODWORD(STACK[0x3D0]) = v3 + 11001;
  LODWORD(STACK[0x3A0]) = v7;
  LODWORD(STACK[0x3C0]) = v7 ^ 0xDF958071;
  v8.n128_u64[0] = 0x9292929292929292;
  v8.n128_u64[1] = 0x9292929292929292;
  v9.n128_u64[0] = 0x4A4A4A4A4A4A4A4ALL;
  v9.n128_u64[1] = 0x4A4A4A4A4A4A4A4ALL;
  LODWORD(STACK[0x350]) = v3 + 12428;
  LODWORD(STACK[0x370]) = v4;
  LODWORD(STACK[0x360]) = v5;
  return v6(v8, v9);
}

uint64_t sub_244814254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x56C]) = v8;
  STACK[0x5C0] = *(a8 + 8 * v9);
  return (*(a8 + 8 * ((v9 + 4579) ^ v9)))();
}

uint64_t sub_244814288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x588] = (v9 ^ 0xDD1) + a3;
  LODWORD(STACK[0x61C]) = v8[18];
  LODWORD(STACK[0x48C]) = v8[19];
  LODWORD(STACK[0xA9C]) = v8[20];
  LODWORD(STACK[0x5EC]) = v8[21];
  return (*(a8 + 8 * v9))();
}

uint64_t sub_2448143B8@<X0>(int a1@<W4>, uint64_t a2@<X8>)
{
  v11 = (v4 + v8);
  v12 = (v2 + (v11 ^ 0x2FAD4B3ED2FD9FDDLL) - 0x2FAD4B3ED2FD9FDDLL + ((v10 + 2784703391) & (2 * v11)));
  v13 = ((((v12[1] ^ a1) - ((2 * (v12[1] ^ a1)) & 0x50)) << 8) + 2038310912) ^ 0x797E2800;
  v14 = (v13 - 1758714361 - ((2 * v13) & 0x2E584C00)) ^ 0x972C2607 | ((*v12 ^ a1) - 1444553573 - ((2 * (*v12 ^ a1)) & 0x136)) ^ 0xA9E5DC9B;
  v15 = ((((v12[2] ^ a1) + (~(2 * (v12[2] ^ a1)) | 0xFE73)) << 16) + 784793600) ^ 0x2EC60000;
  v16 = (v14 + 701639012 - ((2 * v14) & 0x53A452C8)) ^ 0x29D22964 | (v15 + v7 - ((2 * v15) & 0x4840000)) ^ v7;
  LODWORD(v12) = ((((v12[3] ^ a1) - ((2 * (v12[3] ^ a1)) & 0x5C)) << 24) - 1375731712) ^ 0xAE000000;
  LODWORD(v12) = (v16 - 1301032051 - ((2 * v16) & 0x64E7A71A)) ^ 0xB273D38D | (v12 - 1570354369 - ((2 * v12) & 0x44444444)) ^ 0xA2664B3F;
  *(a2 + v11) = v12 + v6 - (v9 & (2 * v12));
  return (*(v5 + 8 * ((13973 * ((v4 + 4 + v8) < 0x40)) ^ (v3 - 1913))))();
}

uint64_t sub_244814948(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x61C]) = a8;
  LODWORD(STACK[0xA9C]) = v8;
  LODWORD(STACK[0x48C]) = a3;
  LODWORD(STACK[0x5EC]) = v9;
  return (*(v11 + 8 * v10))();
}

uint64_t sub_244814A10@<X0>(char a1@<W0>, int a2@<W3>, int a3@<W4>, uint64_t a4@<X8>)
{
  v10 = (a2 + v8);
  v11 = (v5 + ((2 * v10) & 0x3EE7F578) + (v10 ^ 0xD6CDF7CF9F73FABDLL) + 0x29320830608C0543);
  v12 = ((((*v11 ^ a3) - (((*v11 ^ a3) << a1) & 0x6A)) << 24) - 1258291200) ^ 0xB5000000;
  v13 = ((((v11[1] ^ a3) - ((2 * (v11[1] ^ a3)) & 0x94)) << 16) + 1615462400) ^ 0x604A0000;
  v14 = (v13 + 513592491 - ((2 * v13) & 0x3D380000)) ^ 0x1E9CCCAB | (v12 - 1635285786 - ((2 * v12) & 0x3C000000)) ^ 0x9E8784E6;
  v15 = ((((v11[2] ^ a3) - ((2 * (v11[2] ^ a3)) & 0xFFFFFFF3)) << 8) + 182057216) ^ 0xAD9F900;
  v16 = (v14 + 2123808443 - ((2 * v14) & 0xFD2D7D76)) ^ 0x7E96BEBB | (v15 + 95711690 - ((2 * v15) & 0xB68E200)) ^ 0x5B471CA;
  LODWORD(v11) = (v16 + 24682766 - ((2 * v16) & 0x2F1421C)) ^ 0x178A10E | ((v11[3] ^ a3) + 792056453 - ((2 * (v11[3] ^ a3)) & 0x10A)) ^ 0x2F35D285;
  *(a4 + v10) = v11 + v7 - (v9 & (2 * v11));
  return (*(v6 + 8 * ((27798 * ((a2 + 4 + v8) < 0x40)) ^ v4)))();
}

uint64_t sub_244814BE0@<X0>(uint64_t a1@<X8>)
{
  v7 = *(a1 + 4 * (v6 + v3 - 8)) ^ *(a1 + 4 * (v6 + v3 - 3));
  v8 = v7 + v5 - ((2 * v7) & 0xB850AEDA);
  v9 = *(a1 + 4 * (v6 + v3 - 16)) ^ *(a1 + 4 * (v6 + v3 - 14));
  HIDWORD(v10) = v9 ^ ((v2 ^ 0xC46) + 1546136714) ^ v8;
  LODWORD(v10) = v9 ^ ~v8;
  *(a1 + 4 * (v1 + v6)) = (v10 >> 31) + v5 - ((2 * (v10 >> 31)) & 0xB850AEDA);
  return (*(v4 + 8 * (v2 | (16 * ((v1 + 1 + v6) < 0x50)))))();
}

uint64_t sub_244814FB4(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x61C]) = a8;
  LODWORD(STACK[0x48C]) = a3;
  LODWORD(STACK[0xA9C]) = v10;
  LODWORD(STACK[0x5EC]) = a2;
  v15 = (*(v8 + 88) ^ v14) + (v11 ^ v14);
  *(v8 + 88) = v15 + ((v9 + 2170) ^ 0x3115A158) - (v13 & (2 * v15));
  return (*(v12 + 8 * v9))();
}

uint64_t sub_24481502C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = v8[19];
  v12 = (v8[18] ^ v10) + (a8 ^ v10);
  v8[18] = v12 + v10 - (v9 & (2 * v12));
  v8[19] = (v11 ^ v10) + (LODWORD(STACK[0x48C]) ^ v10) + v10 - (v9 & (2 * ((v11 ^ v10) + (LODWORD(STACK[0x48C]) ^ v10))));
  v13 = v8[21];
  v14 = (v8[20] ^ v10) + (LODWORD(STACK[0xA9C]) ^ v10);
  v8[20] = v14 + v10 - (v9 & (2 * v14));
  v8[21] = (v13 ^ v10) + (LODWORD(STACK[0x5EC]) ^ v10) + v10 - (v9 & (2 * ((v13 ^ v10) + (LODWORD(STACK[0x5EC]) ^ v10))));
  STACK[0x588] -= 320;
  return (STACK[0x5C0])();
}

uint64_t sub_24481510C@<X0>(uint64_t a1@<X0>, unsigned int a2@<W3>, unsigned int a3@<W6>, uint64_t a4@<X7>, int a5@<W8>)
{
  if (a2 < a3 != (a5 - 2098119825) < LODWORD(STACK[0x3C0]))
  {
    v5 = (a5 - 2098119825) < LODWORD(STACK[0x3C0]);
  }

  else
  {
    v5 = a5 - 2098119825 > a2;
  }

  return (*(a4 + 8 * ((108 * v5) ^ LODWORD(STACK[0x3D0]))))(a1, 273);
}

uint64_t sub_244815204@<X0>(unsigned int a1@<W1>, uint64_t a2@<X5>, uint64_t a3@<X7>, int a4@<W8>, int8x16_t a5@<Q0>, int8x16_t a6@<Q1>)
{
  v13 = (a2 + (a4 + v11 + v6));
  v14 = *v13;
  v15 = v13[1];
  v16 = (v8 + v6);
  *v16 = vaddq_s8(vaddq_s8(v14, a6), vmvnq_s8(vandq_s8(vaddq_s8(v14, v14), a5)));
  v16[1] = vaddq_s8(vaddq_s8(v15, a6), vmvnq_s8(vandq_s8(vaddq_s8(v15, v15), a5)));
  return (*(a3 + 8 * (v10 ^ (19677 * ((((((v7 | a1) ^ v12) + v6 - v9) | (v9 - (((v7 | a1) ^ v12) + v6))) & 0x8000000000000000) == 0)))))();
}

uint64_t sub_2448152EC@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v3 = ((v2 - 11548) ^ 0xB8D9D06E) + LODWORD(STACK[0x340]);
  v4 = a2 - 1144177503 < v3;
  if (v3 < 0x1871D4F5 != (a2 - 1144177503) < 0x1871D4F5)
  {
    v4 = v3 < 0x1871D4F5;
  }

  return (*(a1 + 8 * ((95 * !v4) ^ v2)))();
}

uint64_t sub_244815364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = ((3 * (v8 ^ 0x313)) ^ (v8 - 1603795864)) + LODWORD(STACK[0x340]);
  v10 = v9 + (LODWORD(STACK[0x1314]) ^ 0xEBDE5E0) + 247326176 - ((2 * (v9 + (LODWORD(STACK[0x1314]) ^ 0xEBDE5E0))) & 0x1D7BCBC0);
  LODWORD(STACK[0x1314]) = v10;
  return (*(a8 + 8 * ((4041 * ((v10 ^ 0xEBDE5E0u) >= v9)) ^ v8)))();
}

uint64_t sub_2448153E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = LODWORD(STACK[0x1310]) ^ 0x5BCC0DFE ^ (3 * (v8 ^ 0xCDA));
  LODWORD(STACK[0x1310]) = v9 + 1540096831 - ((2 * v9 + 2) & 0xB798067E) + 1;
  return (*(a8 + 8 * v8))();
}

uint64_t sub_244815434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = &STACK[0x12D0] + a3 + 0x3E0DD92B1DE16FEALL;
  STACK[0x9F0] = v9;
  STACK[0x588] = a3 - 5001 + 7 * (v8 ^ 0xC0Eu);
  STACK[0x720] = &STACK[0x14E4];
  STACK[0x7F8] = &STACK[0x12D0];
  STACK[0xAB8] = v9;
  return (*(a8 + 8 * (((277 * (v8 ^ 0xEC2) - 829) * ((&STACK[0x12D0] + a3) != 0)) | v8)))();
}

uint64_t sub_2448154C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X7>, char a4@<W8>)
{
  v7 = a4 & 0x3F;
  *(v6 + (v7 ^ 0x20)) = -55;
  return (*(a3 + 8 * ((((v7 ^ 0x20) > 719 * (v4 ^ 0x338u) - 4978) * (((v4 ^ 0x338) + 9049) ^ 0x19F3)) ^ v4)))(a1, a2, v5);
}

uint64_t sub_24481557C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v8;
  v11 = 62 - v8;
  if (v10 > 0x3E)
  {
    v11 = 0;
  }

  return (*(a8 + 8 * (((v11 + 1 < (v9 ^ 0x2F18uLL)) * ((v9 - 7007) ^ 0x1380)) ^ v9)))();
}

uint64_t sub_2448155CC(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  a1.n128_u16[0] = 18761;
  a1.n128_u8[2] = 73;
  a1.n128_u8[3] = 73;
  a1.n128_u8[4] = 73;
  a1.n128_u8[5] = 73;
  a1.n128_u8[6] = 73;
  a1.n128_u8[7] = 73;
  return (*(a9 + 8 * (v9 + 13531)))(a1);
}

uint64_t sub_244815618@<X0>(uint64_t a1@<X7>, double *a2@<X8>, double a3@<D0>)
{
  *(a2 - 1) = a3;
  *a2 = a3;
  return (*(a1 + 8 * (((v4 != 0) * v3) ^ v5)))();
}

uint64_t sub_2448156A8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X7>, int a3@<W8>)
{
  v7 = v3 + a1;
  *(v7 + v4 - 1) = v5;
  return (*(a2 + 8 * (((v7 < 0x40) * v6) ^ (a3 + 4037))))();
}

uint64_t sub_24481572C@<X0>(int a1@<W0>, unsigned int a2@<W1>, uint64_t a3@<X7>, int a4@<W8>)
{
  v9 = v4 < a2;
  *(&STACK[0x12D0] + (v6 - 2093001700)) = *(&STACK[0xED0] + (a4 + v7)) - ((*(&STACK[0xED0] + (a4 + v7)) << (v8 - 19)) & 0x92) + 73;
  v10 = a4 + 1 + a1;
  v11 = v9 ^ (v10 < a2);
  v12 = v10 < v4;
  if (!v11)
  {
    v9 = v12;
  }

  return (*(a3 + 8 * ((!v9 * v5) ^ v8)))();
}

uint64_t sub_24481585C(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  a1.n128_u16[0] = 18761;
  a1.n128_u8[2] = 73;
  a1.n128_u8[3] = 73;
  a1.n128_u8[4] = 73;
  a1.n128_u8[5] = 73;
  a1.n128_u8[6] = 73;
  a1.n128_u8[7] = 73;
  return (*(a9 + 8 * ((v9 ^ 0x3D41) + 6745)))(a1);
}

uint64_t sub_2448158A8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = (v12 + v9);
  *v13 = a1;
  v13[1] = a1;
  return (*(a9 + 8 * ((15 * (v11 == 0)) ^ v10)))();
}

uint64_t sub_244815A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v9 + 8021;
  v11 = (v9 + 70) & 0xFA;
  v13 = *(v8 + 64);
  v12 = *(v8 + 68);
  *(v8 + 56) = 8 * v12 - ((16 * v12) & 0x9F) + 73;
  *(v8 + 57) = ((v12 >> (v11 - 85)) ^ 0x2F) - ((2 * ((v12 >> (v11 - 85)) ^ 0x2F)) & 0x92) + 73;
  *(v8 + 58) = ((v12 >> 13) ^ 0xEF) - ((2 * ((v12 >> 13) ^ 0xEF)) & 0x92) + 73;
  *(v8 + 59) = ((v12 >> 21) ^ 0x75) + (~(2 * ((v12 >> 21) ^ 0x75)) | 0x6D) + 74;
  HIDWORD(v14) = ~v13;
  LODWORD(v14) = v12;
  *(v8 + 60) = (v14 >> 29) - ((2 * (v14 >> 29)) & 0x92) + 73;
  *(v8 + 61) = ((v13 >> 5) ^ 0x19) - ((2 * ((v13 >> 5) ^ 0x19)) & 0x92) + 73;
  *(v8 + 62) = ((v13 >> 13) ^ 0x60) - ((2 * ((v13 >> 13) ^ 0x60)) & 0x92) + 73;
  return (*(a8 + 8 * v10))();
}

uint64_t sub_244815B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(v9 + 64);
  v11 = *(v9 + 68);
  *(v9 + 56) = ((v10 >> (v8 - 89)) ^ 0xDE) - ((2 * ((v10 >> (v8 - 89)) ^ 0xDE)) & 0x92) + 73;
  *(v9 + 57) = ((v10 >> 13) ^ 0x60) - 2 * (((v10 >> 13) ^ 0x60) & 0x4D ^ (v10 >> 13) & 4) + 73;
  HIDWORD(v12) = ~v10;
  LODWORD(v12) = v11;
  *(v9 + 58) = ((v10 >> 5) ^ 0x19) - 2 * (((v10 >> 5) ^ 0x19) & 0x4D ^ (v10 >> 5) & 4) + 73;
  *(v9 + 59) = (v12 >> 29) + (~(2 * (v12 >> 29)) | 0x6D) + 74;
  *(v9 + 60) = ((v11 >> 21) ^ 0x75) - ((2 * ((v11 >> 21) ^ 0x75)) & 0x92) + 73;
  *(v9 + 61) = ((v11 >> 13) ^ 0xEF) - ((2 * ((v11 >> 13) ^ 0xEF)) & 0x92) + 73;
  *(v9 + 62) = ((v11 >> 5) ^ 0x2F) - ((2 * ((v11 >> 5) ^ 0x2F)) & 0x92) + 73;
  return (*(a8 + 8 * v8))();
}

uint64_t sub_244815E48(int a1, uint64_t a2, uint64_t a3, char a4, char a5, int a6, int a7, int a8)
{
  v17 = (v15 + a1);
  v18 = *(v8 + v17 + 72);
  v19 = (v12 + (a3 & (2 * v17)) + (v17 ^ a2) + v10);
  *v19 = ((v9 ^ v13) - 91) ^ HIBYTE(v18);
  v19[1] = a4 ^ BYTE2(v18);
  v19[2] = BYTE1(v18) ^ 0xEF;
  v19[3] = v18 ^ a5;
  v20 = *(v8 + 92) + a7;
  v21 = v15 + a6 < v20;
  if (v15 + a6 < v11 != v20 < v11)
  {
    v21 = v20 < v11;
  }

  return (*(v16 + 8 * ((v21 * a8) ^ v14)))();
}

uint64_t sub_244816020(int a1, uint64_t a2, int a3, uint64_t a4, char a5, char a6, char a7, char a8)
{
  v20 = (a3 + a1);
  v21 = *(v8 + v20 + 72);
  v22 = (v12 + (v20 ^ a2) + v10 + ((v20 << ((v9 ^ v13) + 58)) & a4));
  *v22 = v21 ^ a5;
  v22[1] = (a6 ^ BYTE1(v21)) + (a7 | ~(2 * (a6 ^ BYTE1(v21)))) + 94;
  v22[2] = (BYTE2(v21) ^ a8) - 2 * ((BYTE2(v21) ^ a8) & 0xDF ^ BYTE2(v21) & 2) + 93;
  v22[3] = (HIBYTE(v21) ^ v15) - 2 * ((HIBYTE(v21) ^ v15) & 0xDF ^ HIBYTE(v21) & 2) + 93;
  LODWORD(v22) = *(v8 + 92) + v17;
  v23 = v22 < v11;
  v24 = a3 + v16 < v22;
  if (a3 + v16 < v11 != v23)
  {
    v24 = v23;
  }

  return (*(v19 + 8 * ((v24 * v18) ^ v14)))();
}

uint64_t sub_244816168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v14 - 1;
  STACK[0xB70] = v15;
  *(v8 + v15) = (v11 ^ v12) * (v11 + 17);
  return (*(a8 + 8 * (((STACK[0xB70] != v13) * v9) ^ v10)))();
}

uint64_t sub_2448161A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = LODWORD(STACK[0x132C]) - (((LODWORD(STACK[0x132C]) << (((v8 - 6) & 0x7F) - 118)) + 2026959220) & 0x97E7AB94) + 140267140;
  v10 = ((2 * v9) & 0x1C77DFAE ^ 0x14678B84) + (v9 ^ 0x45C83A1D) - 1049156 == 237759891;
  return (*(a8 + 8 * ((v10 | (2 * v10)) ^ v8)))();
}

uint64_t sub_2448163A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v9.n128_u64[0] = 0x5D5D5D5D5D5D5D5DLL;
  v9.n128_u64[1] = 0x5D5D5D5D5D5D5D5DLL;
  return (*(a8 + 8 * (a6 + 10855)))(v8 & 0xFFFFFFE0, a6 ^ 0x1E5Au, 0, v9);
}

uint64_t sub_2448163E0(int a1, int8x16_t a2, uint64_t a3, int a4, int a5, int a6, int a7, uint64_t a8, uint64_t a9)
{
  v11 = (a6 - a4);
  v12 = *(v10 + v11 - 15);
  v13 = *(v10 + v11 - 31);
  v14 = v9 + v11;
  *(v14 - 15) = veorq_s8(v12, a2);
  *(v14 - 31) = veorq_s8(v13, a2);
  return (*(a9 + 8 * (((2 * (a7 + a4 == a1)) | (4 * (a7 + a4 == a1))) ^ a5)))();
}

uint64_t sub_2448164AC(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  a1.n128_u16[0] = 23901;
  a1.n128_u8[2] = 93;
  a1.n128_u8[3] = 93;
  a1.n128_u8[4] = 93;
  a1.n128_u8[5] = 93;
  a1.n128_u8[6] = 93;
  a1.n128_u8[7] = 93;
  return (*(a9 + 8 * a5))((a5 - 12440), v11 - (v10 & 0xFFFFFFF8), v9 - 7, a1);
}

uint64_t sub_2448165D4@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  STACK[0x588] = a2 - 9737 + (v2 ^ 0x1F4Eu);
  v3 = (*(a1 + 8 * (v2 ^ 0x62B2)))(30) == 0;
  return (*(STACK[0x3E0] + 8 * ((v3 * (v2 - 15011)) ^ v2)))();
}

uint64_t sub_244816648()
{
  v6 = v1;
  v7 = *v4;
  v8 = v4[1];
  v9 = v4[2];
  *v6 = *(v5 + (v7 >> 2)) - 122;
  v6[1] = *(v5 + ((v7 << (v3 + 109)) & 0x30 | (v8 >> 4))) - 122;
  v6[2] = *(v5 + ((v9 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v8 & 0xF)))) - 122;
  v6[3] = *(v5 + (v9 & 0x3F)) - 122;
  return (*(v2 + 8 * ((46 * ((v0 - 1774009881) < 0xFFFFFFFD)) ^ v3)))();
}

uint64_t sub_2448166E8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v7 = ((v4 - 82) ^ 0x8B) + *v5;
  v8 = *(v2 + 4) + (~(2 * *(v2 + 4)) | 0x63) - 49;
  a2[4] = *(v6 + (((v7 - ((2 * *v5) & 0x9C)) >> 2) ^ 0x33)) - 122;
  a2[5] = *(v6 + (((v8 >> 4) ^ 0xC) & 0xFFFFFFCF | (16 * ((v7 ^ 2) & 3)))) - 122;
  a2[6] = *(v6 + 4 * ((v8 ^ 0xE) & 0xF)) - 122;
  a2[7] = 61;
  *(a1 + (a2 - a1 + 8)) = 0;
  v9 = (*(v3 + 8 * (v4 + 2089)))();
  return (*(STACK[0x3E0] + 8 * (v4 - 10322)))(v9);
}

uint64_t sub_2448167A8()
{
  LODWORD(STACK[0x9EC]) = 0;
  LODWORD(STACK[0x580]) = 237377513;
  LODWORD(STACK[0x43C]) = 237377513;
  v2 = (*(v0 + 8 * (v1 + 13708)))(16);
  return (*(STACK[0x3E0] + 8 * (((v2 == 0) * (((7 * (v1 ^ 0x26F6)) ^ 0xFFFFFF64) + 3 * (v1 ^ 0x2244))) ^ v1)))();
}

uint64_t sub_24481682C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0x750C1ABFB0567FDBLL;
  a1[1] = 0x750C1ABFB0567FDBLL;
  STACK[0x560] = a1 + v9;
  STACK[0x400] = a1 + v9;
  LODWORD(STACK[0xAD4]) = 2053998081;
  LODWORD(STACK[0xB38]) = 538387928;
  LODWORD(STACK[0x6A4]) = 1825890556;
  return (*(a8 + 8 * v8))(STACK[0x390]);
}

uint64_t sub_244816900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x960] = STACK[0x560];
  LODWORD(STACK[0x584]) = -875379463;
  STACK[0x4C8] = &STACK[0x14E4];
  LODWORD(STACK[0xB64]) = 237377533;
  LODWORD(STACK[0xA58]) = 175505924;
  return (*(a8 + 8 * (v8 + 2079)))(STACK[0x390]);
}

uint64_t sub_244816A28@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  STACK[0x400] = STACK[0x560];
  LODWORD(STACK[0xAD4]) = -413953907;
  LODWORD(STACK[0xB38]) = 237377513;
  LODWORD(STACK[0x6A4]) = 2035289367;
  return (*(a1 + 8 * a2))(STACK[0x390]);
}

uint64_t sub_244816B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, unint64_t a57)
{
  STACK[0x508] = STACK[0x330];
  STACK[0xBE0] = a57;
  STACK[0xBE8] = STACK[0x3D0];
  return (*(a8 + 8 * ((((v58 + 623819570) & 0xDAD133F9 ^ 0x62F5 ^ ((v58 - 4040) | 0x908)) * v57) ^ v58)))();
}

uint64_t sub_244816B70@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v2 = STACK[0x528];
  LODWORD(STACK[0x854]) = STACK[0x580];
  return (*(a1 + 8 * ((((a2 - 2112102718) & 0x7DE427FD ^ 0x240F) * (v2 == 0)) ^ a2)))();
}

uint64_t sub_244816BC0@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  STACK[0x9D8] = 0;
  LODWORD(STACK[0x4BC]) = 237377513;
  STACK[0x900] = 0x3E0DD92B1DE16FEALL;
  LODWORD(STACK[0x47C]) = 237377513;
  STACK[0x5B8] = 0;
  return (*(a1 + 8 * ((244 * (v2 == ((a2 - 6524) | 0x203C) + 237368172)) ^ (a2 + 666))))();
}

uint64_t sub_244816C2C@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v3 = a2 - 7197;
  v4 = *(a1 + 8 * (a2 - 7197));
  *(v2 - 216) = 810199703 * ((2 * ((v2 - 232) & 0x4FCFC950) - (v2 - 232) - 1339017560) ^ 0x56B92025) + 1007955315 + v3;
  *(v2 - 224) = v4 ^ (810199703 * ((2 * ((v2 - 232) & 0x7B754544FCFC950) - (v2 - 232) + 0x7848ABABB03036A8) ^ 0x739D7C1D56B92025));
  v5 = (*(a1 + 8 * (v3 ^ 0x5D5B)))(v2 - 232);
  return (*(STACK[0x3E0] + 8 * (v3 ^ 0xDC3 ^ ((*(v2 - 232) == 1216124116) * (55 * (v3 ^ 0x42F) + 4158)))))(v5);
}

uint64_t sub_244816D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0xEC0] = *(a8 + 8 * v8);
  *(v9 - 232) = v8 + 1649972239 * ((-2 - (((v9 - 232) ^ 0x801A0000 | 0x53E4F6FF) + ((v9 - 232) ^ 0x18090F6 | 0xAC1B0900))) ^ 0xA5DD4371) - 572929518;
  *(v9 - 224) = &STACK[0xEC0];
  v10 = (*(a8 + 8 * (v8 ^ 0x5D79)))(v9 - 232);
  v11 = STACK[0x3E0];
  v12 = *(v9 - 228);
  v13 = ((v8 + 125) | 0xA9) ^ 0xF4;
  v14 = *(&off_278E1E490 + (v8 ^ 0x6C0));
  v15 = *(&off_278E1E490 + (v8 ^ 0x728));
  if (v12 == v13)
  {
    v16 = v15 - 4;
  }

  else
  {
    v16 = v14 - 12;
  }

  STACK[0x5B8] = v16;
  v17 = (v15 + 20);
  v18 = (v14 + 12);
  if (v12 == v13)
  {
    v18 = v17;
  }

  return (*(v11 + 8 * (v8 ^ 0x4A15 ^ ((*v18 == 68) * (v8 ^ 0x1DED)))))(v10);
}

uint64_t sub_244816E48@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v7 = (v4 + 40);
  v8 = (v3 + 40);
  if (a2 == v2)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = *v9;
  v11 = STACK[0x588];
  STACK[0x908] = &STACK[0x12D0] + STACK[0x588];
  STACK[0x588] = (v6 ^ 0x35F1u) - 7625 + v11 - 4985;
  STACK[0x870] = v5;
  STACK[0x5E0] = 0x19847B594A0B84A2;
  STACK[0xAF0] = 0x6286B82630F8F22CLL;
  STACK[0x9A8] = v10;
  return (*(a1 + 8 * (((v10 != 0x58FA20369C313ACELL) * ((v6 ^ 0x35F1) - 12491)) ^ v6 ^ 0x35F1)))();
}

uint64_t sub_244817000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (*(a8 + 8 * (v8 + 1716)))(112);
  v10 = STACK[0x3E0];
  STACK[0xA90] = v9 + 0x19847B594A0B84A2;
  return (*(v10 + 8 * (((((-61 * v8) ^ (v9 == 0)) & 1) * ((1562 * (v8 ^ 0x5316)) ^ 0x2A8E)) ^ v8)))();
}

uint64_t sub_24481708C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = -318161901;
  *(a1 + 4) = 2142665936;
  *(a1 + 72) = 1253342090;
  *(a1 + 76) = 1253342090;
  *(a1 + 80) = 11781;
  *(a1 + 8) = v9;
  *(a1 + 16) = v9;
  *(a1 + 24) = v9;
  *(a1 + 32) = v9;
  *(a1 + 40) = v9;
  *(a1 + 48) = v9;
  *(a1 + 56) = v9;
  *(a1 + 64) = v9;
  v11 = STACK[0xA90];
  *(v11 - 0x19847B594A0B844ELL) = 1956268794;
  *(v11 - 0x19847B594A0B843ALL) = 2136666251;
  *(v11 - 0x19847B594A0B844ALL) = v9;
  *(v11 - 0x19847B594A0B8442) = v9;
  *(v11 - 0x19847B594A0B8436) = -15;
  *v8 = v11;
  return (*(a8 + 8 * v10))();
}

uint64_t sub_244817444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = STACK[0x8A0];
  *(v9 - 0x19847B594A0B843ALL) = 2136666267;
  *(v9 - 0x19847B594A0B843BLL) = *(v10 - 0x58FA20369C313AB7);
  *(v9 - 0x19847B594A0B843CLL) = *(v10 - 0x58FA20369C313AB8);
  *(v9 - 0x19847B594A0B843DLL) = *(v10 - 0x58FA20369C313AB9);
  *(v9 - 0x19847B594A0B843ELL) = *(v10 - 0x58FA20369C313ABALL);
  *(v9 - 0x19847B594A0B843FLL) = *(v10 - 0x58FA20369C313ABBLL);
  *(v9 - 0x19847B594A0B8440) = *(v10 - 0x58FA20369C313ABCLL);
  *(v9 - 0x19847B594A0B8441) = *(v10 - 0x58FA20369C313ABDLL);
  *(v9 - 0x19847B594A0B8442) = *(v10 - 0x58FA20369C313ABELL);
  *(v9 - 0x19847B594A0B8443) = *(v10 - 0x58FA20369C313ABFLL);
  *(v9 - 0x19847B594A0B8444) = *(v10 - 0x58FA20369C313AC0);
  *(v9 - 0x19847B594A0B8445) = *(v10 - 0x58FA20369C313AC1);
  *(v9 - 0x19847B594A0B8446) = *(v10 - 0x58FA20369C313AC2);
  *(v9 - 0x19847B594A0B8447) = *(v10 - 0x58FA20369C313AC3);
  *(v9 - 0x19847B594A0B8448) = *(v10 - 0x58FA20369C313AC4);
  *(v9 - 0x19847B594A0B8449) = *(v10 - 0x58FA20369C313AC5);
  *(v9 - 0x19847B594A0B844ALL) = *(v10 - 0x58FA20369C313AC6);
  return (*(a8 + 8 * (v8 | (4 * ((((v8 ^ 0x12) - 78) ^ (*(v10 - 0x58FA20369C313ACALL) == 14)) & 1u)))))();
}

uint64_t sub_2448178B8@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v4 = *(a2 - 0x58FA20369C313AB6);
  *(v2 - 0x19847B594A0B848ALL) = *(a2 - 0x58FA20369C313AA6);
  *(v2 - 0x19847B594A0B849ALL) = v4;
  return (*(a1 + 8 * v3))();
}

uint64_t sub_24481799C@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  *(v2 - 0x19847B594A0B844ELL) = *(a2 - 0x58FA20369C313ACELL);
  STACK[0x3D0] = STACK[0x3E8];
  v5 = STACK[0x588];
  STACK[0x890] = &STACK[0x12D0] + STACK[0x588];
  STACK[0x588] = v5 + 32;
  v6 = STACK[0x578];
  STACK[0xB20] = STACK[0x578];
  STACK[0x6F8] = 0;
  STACK[0x730] = 0;
  STACK[0x920] = 0;
  LODWORD(STACK[0x5AC]) = 0;
  STACK[0x8E8] = v3;
  STACK[0x6B8] = 0;
  v7 = (*(a1 + 8 * (v4 + 12278)))();
  if (v6)
  {
    v8 = LODWORD(STACK[0x73C]) == (v4 ^ 0xE263E0E);
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  return (*(STACK[0x3E0] + 8 * ((v9 * (v4 ^ 0x2A2B)) ^ v4)))(v7);
}

uint64_t sub_244817A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (*(a8 + 8 * ((v8 ^ 0x7CC6) + 1188)))(128);
  v10 = STACK[0x3E0];
  STACK[0x978] = v9 + 0x6286B82630F8F22CLL;
  return (*(v10 + 8 * (((v9 == 0) * (((v8 ^ 0x7C06) - 17266) ^ 0x1269)) ^ v8 ^ 0x7CC6)))();
}

uint64_t sub_244817BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a8 + 8 * (v8 + 5960));
  STACK[0x470] = &STACK[0x8E8];
  LODWORD(STACK[0x3D0]) = 237377513;
  LODWORD(STACK[0x3C0]) = 237377513;
  LODWORD(STACK[0x3A0]) = v9;
  return v10();
}

uint64_t sub_244817C68@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v4 = a2 ^ 0x8A6;
  v5 = STACK[0x9A8];
  *(v2 - 0x19847B594A0B843ALL) = 2136666267;
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
  return (*(a1 + 8 * (((STACK[0x5E0] != v3) * ((v4 + 6041) ^ v4 ^ 0x226A ^ 0x3B1B)) ^ v4)))();
}

uint64_t sub_2448180E4@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v4 = *(a2 - 0x58FA20369C313AB6);
  *(v2 - 0x19847B594A0B848ALL) = *(a2 - 0x58FA20369C313AA6);
  *(v2 - 0x19847B594A0B849ALL) = v4;
  return (*(a1 + 8 * (v3 ^ 0x3F6Eu)))();
}

uint64_t sub_244818184@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v4 = STACK[0x908];
  *v4 = 0x44046241CC2D2A4ELL;
  *(v4 + 8) = *(a2 - 0x58FA20369C313A62) + 237377513 - ((*(a2 - 0x58FA20369C313A62) << ((2 * v3) ^ 0x6F)) & 0x1C4C2FD2);
  *(v4 + 16) = 0;
  *(v4 + 24) = -190490885;
  *(v4 + 28) = 2004351539;
  *(v4 + 32) = 237377517;
  *(v4 + 36) = 781864402;
  STACK[0x498] = v4;
  LODWORD(STACK[0x594]) = 0;
  STACK[0x698] = v2;
  v5 = (*(a1 + 8 * (v3 + 8078)))(128);
  v6 = STACK[0x3E0];
  STACK[0x660] = v5 + 0x6286B82630F8F22CLL;
  return (*(v6 + 8 * ((116 * (v5 == 0)) ^ v3)))(STACK[0x390]);
}

uint64_t sub_2448182F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x470] = &STACK[0x698];
  v10 = *(a8 + 8 * ((659 * (v8 < ((v8 - 1206003186) ^ 0xB3F0FCD8))) ^ (v8 - 1206011970)));
  LODWORD(STACK[0x3B0]) = v9;
  return v10();
}

uint64_t sub_244818350@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  LODWORD(STACK[0x694]) = STACK[0x3A0];
  LODWORD(STACK[0x9A4]) = STACK[0x3C0];
  LODWORD(STACK[0xB04]) = STACK[0x3D0];
  LODWORD(STACK[0xB1C]) = STACK[0x3B0];
  return (*(a1 + 8 * ((((((v2 + 832828912) ^ 0x31A4007A) + 6073) ^ (v2 + 832828912) & 0x4E5BEEFE) * a2) ^ v2)))();
}

uint64_t sub_244818400@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  LODWORD(STACK[0x694]) = STACK[0x3A0];
  LODWORD(STACK[0x9A4]) = STACK[0x3C0];
  LODWORD(STACK[0xB04]) = STACK[0x3D0];
  LODWORD(STACK[0xB1C]) = STACK[0x3B0];
  return (*(a1 + 8 * ((((v2 ^ 0x1889) + 18940 + 5 * (v2 ^ 0x1889)) * a2) ^ v2)))();
}

uint64_t sub_2448184D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  STACK[0x3D0] = v4;
  *(a4 - 0x6286B82630F8F21CLL) = *(a1 - 0x19847B594A0B84A2);
  *(a4 - 0x6286B82630F8F1D4) = *(a1 - 0x19847B594A0B845ALL);
  *(a4 - 0x6286B82630F8F1D0) = *(a1 - 0x19847B594A0B8456);
  *(a4 - 0x6286B82630F8F1CCLL) = *(a1 - 0x19847B594A0B8452);
  *(a4 - 0x6286B82630F8F1CBLL) = *(a1 - 0x19847B594A0B8451);
  *(a4 - 0x6286B82630F8F1B4) = *(a1 - 0x19847B594A0B843ALL);
  *(a4 - 0x6286B82630F8F1C8) = *(a1 - 0x19847B594A0B844ELL);
  *(a4 - 0x6286B82630F8F1B0) = *(a1 - 0x19847B594A0B8436) & 1 | 0xE8;
  return (*(a3 + 8 * v5))(a1, a2, a1 - 0x19847B58DC7CF623, -31, (v5 - 9985) ^ 0xFFFFFFFF92716301, (v5 - 13696), (v5 - 14322), (v5 - 14088));
}

uint64_t sub_2448186B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8)
{
  v16 = (v13 + a5) & 0xF;
  *(v9 + a5) = *(a3 + a5) ^ *(*(v15 + 8 * a6) + v16) ^ *(v16 + *(v15 + 8 * a7) - 4 + 6) ^ (v16 * v10) ^ *(*(v15 + 8 * a8) + v16) ^ v11;
  return (*(v14 + 8 * (((a4 == 0) * v12) ^ v8)))();
}

uint64_t sub_2448187E0()
{
  v4 = v0 + 0x6286B82630F8F1C5;
  v8 = (v0 + v2 + 0x49023CCCE6ED6D7ALL) < 0x10 || *(&off_278E1E490 + v1 - 8813) + v0 + 0x6286B82630F8F1C0 < 0x10 || *(&off_278E1E490 + v1 - 8056) + v4 - 4 < 0x10 || *(&off_278E1E490 + (v1 ^ 0x2091)) + v4 - 4 < (((v1 ^ 0x61FEu) - 7755) ^ 0x25F8uLL);
  return (*(v3 + 8 * ((37 * v8) ^ v1)))();
}

uint64_t sub_24481890C@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v4 = *(v3 - 0x19847B594A0B849ELL);
  *(a2 - 0x6286B82630F8F218) = v4;
  return (*(a1 + 8 * (((v4 == v2 + 2142655537) * (((v2 + 1417619680) & 0xAB80EE95) - 11456)) ^ v2)))();
}

uint64_t sub_244818A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = a4 - 1884422493;
  *(v11 + v13) = *(v10 + v13) ^ *(v12 + v13) ^ (-83 * v13) ^ *(v8 + v13 + 1) ^ *(a1 + v13 + 1) ^ 0x5D;
  return (*(a8 + 8 * ((25051 * (a4 - 1 == ((v9 - 9550) | 0x2805u) + 1884412093)) ^ v9)))();
}

uint64_t sub_244818BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x694]) = STACK[0x3A0];
  LODWORD(STACK[0x9A4]) = STACK[0x3C0];
  LODWORD(STACK[0xB04]) = STACK[0x3D0];
  LODWORD(STACK[0xB1C]) = v8;
  return (*(a8 + 8 * v9))();
}

uint64_t sub_244818BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x694]) = v9;
  LODWORD(STACK[0x9A4]) = STACK[0x3C0];
  LODWORD(STACK[0xB04]) = STACK[0x3D0];
  LODWORD(STACK[0xB1C]) = STACK[0x3B0];
  return (*(a8 + 8 * v8))();
}

uint64_t sub_244818C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x694]) = v8;
  LODWORD(STACK[0x9A4]) = 237377513;
  LODWORD(STACK[0xB04]) = 237377513;
  LODWORD(STACK[0xB1C]) = STACK[0x3B0];
  return (*(a8 + 8 * v9))(STACK[0x390]);
}

uint64_t sub_244818C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x694]) = STACK[0x3A0];
  LODWORD(STACK[0x9A4]) = STACK[0x3C0];
  LODWORD(STACK[0xB04]) = STACK[0x3D0];
  LODWORD(STACK[0xB1C]) = v9;
  return (*(a8 + 8 * (v8 | 0x1478)))();
}

uint64_t sub_244818CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x694]) = v9;
  LODWORD(STACK[0x9A4]) = STACK[0x3C0];
  LODWORD(STACK[0xB04]) = STACK[0x3D0];
  LODWORD(STACK[0xB1C]) = STACK[0x3B0];
  return (*(a8 + 8 * ((v8 - 138485076) & 0x3EF7CE3A ^ 0x36B6DCE2 ^ (14111 * (((v8 - 138485076) & 0x3EF7CE3A) == ((((v8 - 138485076) & 0x3EF7CE3A) - 917944977) ^ 0xC11804C8))))))();
}

uint64_t sub_244818D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x694]) = STACK[0x3A0];
  LODWORD(STACK[0x9A4]) = STACK[0x3C0];
  LODWORD(STACK[0xB04]) = STACK[0x3D0];
  LODWORD(STACK[0xB1C]) = v9;
  return (*(a8 + 8 * ((2543 * ((((v8 - 583) | 0x2816) ^ 0x57F58098 | v8) == 816200729)) ^ (v8 + 814))))(v10);
}

uint64_t sub_244818DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x694]) = v9;
  LODWORD(STACK[0x9A4]) = 237377513;
  LODWORD(STACK[0xB04]) = 237377513;
  LODWORD(STACK[0xB1C]) = STACK[0x3B0];
  return (*(a8 + 8 * ((v8 - 3205) ^ (v8 - 4303))))();
}

uint64_t sub_244818E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x694]) = v9;
  LODWORD(STACK[0x9A4]) = STACK[0x3C0];
  LODWORD(STACK[0xB04]) = STACK[0x3D0];
  LODWORD(STACK[0xB1C]) = STACK[0x3B0];
  return (*(a8 + 8 * (v8 ^ 0x167D33AE ^ (14097 * (v8 > 0x1DFA30FF)))))();
}

uint64_t sub_244818E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = (STACK[0x3D8] - 4849) | 0x904;
  v9 = STACK[0x3D8] + 11666;
  v10 = (*(a8 + 8 * (STACK[0x3D8] + 17948)))(16);
  return (*(STACK[0x3E0] + 8 * (((v10 != 0) * (v8 ^ 0x9DB)) ^ v9)))();
}

uint64_t sub_244818EFC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0x750C1ABFB0567FDBLL;
  a1[1] = 0x750C1ABFB0567FDBLL;
  *(v8 - 0x6286B82630F8F224) = a1 + v10;
  return (*(a8 + 8 * ((((((v9 + 2061890019) & 0x851A35FF) - 8576) ^ ((v9 - 1819) | 0x1108)) * (v8 == 0x6286B82630F8F22CLL)) ^ v9)))();
}

uint64_t sub_244818FEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0x750C1ABFB0567FDBLL;
  a1[1] = 0x750C1ABFB0567FDBLL;
  *v8 = a1 + v10;
  return (*(a8 + 8 * (((STACK[0x498] == 0) * (((v9 - 11775) | 0x1009) - 5025)) | (v9 - 4553))))(STACK[0x390]);
}

uint64_t sub_24481913C@<X0>(uint64_t a1@<X7>, unint64_t a2@<X8>)
{
  v6 = *v5;
  STACK[0x728] = *(a1 + 8 * v3);
  STACK[0xA00] = v6;
  LODWORD(STACK[0x634]) = v4;
  STACK[0x4E8] = a2;
  return (*(a1 + 8 * (((a2 != 0) * (v2 - 5014)) ^ (v2 + 3672))))();
}

uint64_t sub_2448191E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8 ^ 0x2436;
  v10 = v8 - 4874;
  STACK[0x750] = *(a8 + 8 * v10);
  return (*(a8 + 8 * ((v9 - 9735) ^ v10)))();
}

uint64_t sub_24481928C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 - 232) = v8 - 1230911237 * ((v9 - 232) ^ 0x5303B2F5) + 7969;
  (*(a8 + 8 * (v8 + 18045)))(v9 - 232);
  v10 = STACK[0x3E0];
  v11 = ((v8 + 11417) | 0x1226) ^ *(v9 - 224) ^ 0x58CBDE6F;
  STACK[0x400] = *(STACK[0x660] - 0x6286B82630F8F224);
  LODWORD(STACK[0xAD4]) = -122660393;
  LODWORD(STACK[0xB38]) = v11;
  LODWORD(STACK[0x6A4]) = -1422082685;
  return (*(v10 + 8 * v8))(STACK[0x390]);
}

uint64_t sub_24481946C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x5A0] = v8;
  STACK[0x840] = *(a8 + 8 * (v9 - 4130));
  return (*(a8 + 8 * (((v9 ^ 0x3BC8) - 5749) ^ (v9 - 4130))))();
}

uint64_t sub_2448194A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = STACK[0x3D8] + 1216119083;
  STACK[0x660] = v8;
  v10 = STACK[0x42C];
  STACK[0xAF0] = v8;
  return (*(a8 + 8 * ((88 * (((v10 - v9) | (v9 - v10)) >> 31)) | v9 ^ 0x487C82F4)))();
}

uint64_t sub_244819544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(v9 - 0x6286B82630F8F224);
  STACK[0x8F0] = v11;
  return (*(a8 + 8 * (((v11 == v10) * (((v8 - 14903) | 0x4956) - 19897)) ^ v8)))();
}

uint64_t sub_244819638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (*(a8 + 8 * (v8 ^ 0x1402)))(32);
  v10 = STACK[0x3E0];
  STACK[0x518] = v9 + 0x750C1ABFB0567FDBLL;
  return (*(v10 + 8 * (((v9 == 0) * (((v8 - 18819) | 0x4002) ^ 0x101E ^ (5393 * (v8 ^ 0x4DC3)))) ^ v8)))();
}

uint64_t sub_2448196C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0x750C1ABFB0567FDBLL;
  *(a1 + 8) = 0x750C1ABFB0567FDBLL;
  v11 = v9 ^ 0xE2617E9u;
  STACK[0xC70] = v11;
  v12 = ((v11 + 10) ^ 0x3B6BBB7C) - 822125408 + (((v11 + 10) << ((v8 ^ 0x89) + 50)) & (7 * (v8 ^ 0x4689) + 1993827151));
  *(a1 + 16) = v12;
  v13 = (*(a8 + 8 * (v8 ^ 0x1D83)))((v12 - 174790684));
  v14 = STACK[0x3E0];
  *(a1 + 24) = v13;
  return (*(v14 + 8 * ((29 * (v13 != 0)) ^ v8)))();
}

uint64_t sub_24481999C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x948] = 0x750C1ABFB0567FDBLL;
  STACK[0xB30] = *(a8 + 8 * v8);
  return (*(a8 + 8 * ((387 * (v8 ^ 0xD8) - 14518) ^ v8)))(STACK[0x390]);
}

uint64_t sub_244819A04@<X0>(unsigned int a1@<W8>)
{
  v7 = (v4 - 1);
  v8 = ((v1 - 908964685) & 0x362D80E3 ^ 0x289CA0DB11B86BBCLL) + v7 + ((v7 < a1) << 32) - 0x289CA0DB7E327024;
  v9 = v8 + v2 + 10;
  v10 = __ROR8__((v3 + v8) & 0xFFFFFFFFFFFFFFF8, 8);
  v11 = (v10 - 0x16480F2CA374302ALL) ^ 0xB74DE7873E22183;
  v12 = __ROR8__((v10 - 0x16480F2CA374302ALL) ^ 0x46CB58E297BC5F34, 8) + v11;
  v13 = (((2 * v12) | 0x5A674FDF1756D5A2) - v12 + 0x52CC58107454952FLL) ^ 0xBAEC1222C318C06BLL;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0x8EFC952A6735A9DCLL;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0xECC83F369EF51C3ELL;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (((v19 + v18) | 0x6B3C3A68AAE458CALL) - ((v19 + v18) | 0x94C3C597551BA735) - 0x6B3C3A68AAE458CBLL) ^ 0xCA1EA81159D0CDAELL;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = __ROR8__(v9 & 0xFFFFFFFFFFFFFFF8, 8);
  v23 = (v22 + v6) ^ 0xFFAED09B0E3E9966;
  v24 = (__ROR8__(v20, 8) + v21) ^ 0x3DFD662A599D9AF9;
  v25 = (__ROR8__((v22 + v6) ^ 0xB2CED1A6D4B9C292, 8) + v23) ^ 0x8DBE49DF8B3EC60ALL;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = v24 ^ __ROR8__(v21, 61);
  v28 = (__ROR8__(v25, 8) + v26) ^ 0x41285C582D9B8689;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (v30 + v29 - ((2 * (v30 + v29)) & 0x1CDA1B05ADC53F2CLL) - 0x7192F27D291D606ALL) ^ 0x997AD92968315FE1;
  v32 = __ROR8__(v31, 8);
  v33 = (__ROR8__(v24, 8) + v27) ^ 0xF5D96172F3B103E6;
  v34 = v31 ^ __ROR8__(v29, 61);
  v35 = (((v32 + v34) | 0x276D29752D95C365) - ((v32 + v34) | 0xD892D68AD26A3C9ALL) - 0x276D29752D95C366) ^ 0xCBE5A5CAF2AE10B5;
  v36 = __ROR8__(v33, 8) + (v33 ^ __ROR8__(v27, 61));
  v37 = v35 ^ __ROR8__(v34, 61);
  v38 = STACK[0x3E0];
  v39 = (__ROR8__(v35, 8) + v37) ^ 0x3098A71738BBE723;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = __ROR8__(v39, 8) + v40;
  v42 = (v36 ^ 0x8A3898548E787E8BLL) >> (8 * ((v3 + ((v1 - 77) & 0xE3 ^ 0xBC) + v7 - 36) & 7));
  v43 = (((2 * v41) | 0x6A6BEF16EAD396BALL) - v41 + 0x4ACA08748A9634A3) ^ 0xE51D4CE892CBBEDDLL;
  *v9 = (((__ROR8__(v43, 8) + (v43 ^ __ROR8__(v40, 61))) ^ 0x68B873F8FCD75EC8) >> (8 * (v9 & 7u))) ^ v42 ^ *(v3 + v8);
  return (*(v38 + 8 * (((v7 == a1) * v5) ^ v1)))();
}

uint64_t sub_244819ECC@<X0>(uint64_t a1@<X7>, void *a2@<X8>)
{
  *(v4 - 0x750C1ABFB0567FDBLL) = v2;
  *(v2 - 0x750C1ABFB0567FD3) = *a2;
  return (*(a1 + 8 * v3))();
}

uint64_t sub_244819F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = STACK[0x948];
  v10 = *(STACK[0x948] - 0x750C1ABFB0567FD3);
  v11 = STACK[0x518];
  *(v11 - 0x750C1ABFB0567FD3) = v10;
  *(v11 - 0x750C1ABFB0567FDBLL) = *(v9 - 0x750C1ABFB0567FDBLL);
  return (*(a8 + 8 * ((980 * (v10 != 0x750C1ABFB0567FDBLL)) ^ v8)))();
}

uint64_t sub_24481A164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (*(a8 + 8 * (v8 ^ 0x524C)))();
  v10 = STACK[0x3E0];
  *(STACK[0x948] - 0x750C1ABFB0567FC3) = 0;
  return (*(v10 + 8 * v8))(v9);
}

uint64_t sub_24481A218@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v3 = (*(a1 + 8 * (v2 + 9352)))(a2 - 0x750C1ABFB0567FDBLL);
  v4 = STACK[0x3E0];
  STACK[0x948] = 0x750C1ABFB0567FDBLL;
  return (*(v4 + 8 * (((LODWORD(STACK[0x9CC]) == ((v2 - 8591) ^ 0x487C877D)) * ((v2 + 7948) ^ 0x5642)) | v2)))(v3);
}

uint64_t sub_24481A2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (*(a8 + 8 * (v9 + 21672)))();
  v11 = STACK[0x3E0];
  *(v8 - 0x750C1ABFB0567FC3) = 0;
  return (*(v11 + 8 * v9))(v10);
}

uint64_t sub_24481A480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v10 - 232) = v9 - 1230911237 * (((((v10 - 232) | 0xD7B83218) ^ 0xFFFFFFFE) - (~(v10 - 232) | 0x2847CDE7)) ^ 0x7B447F12) + 4177;
  v11 = (*(a8 + 8 * (v9 ^ 0x7BB3)))(v10 - 232);
  v12 = STACK[0x3E0];
  *(v8 - 0x58FA20369C313A5ELL) = v9 ^ 0x2211 ^ *(v10 - 224) ^ 0x58CB8C0F;
  return (*(v12 + 8 * v9))(v11);
}

uint64_t sub_24481A5F0@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v3 = STACK[0xAF0];
  STACK[0x5B0] = *(a1 + 8 * v2);
  return (*(a1 + 8 * (((v3 == 0x6286B82630F8F22CLL) * (453 * ((a2 - 1334475157) & 0x4F8A3BFB ^ 0x13A2) - 4958)) | a2)))();
}

uint64_t sub_24481A664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x400] = *(v10 - 0x6286B82630F8F224);
  LODWORD(STACK[0xAD4]) = v11;
  LODWORD(STACK[0xB38]) = v8;
  LODWORD(STACK[0x6A4]) = -2050279118;
  return (*(a8 + 8 * v9))();
}

uint64_t sub_24481A76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = STACK[0xAF0];
  v11 = STACK[0x588];
  v12 = &STACK[0x12D0] + STACK[0x588];
  STACK[0x778] = v12;
  v13 = v12 + 16;
  STACK[0x4E0] = (v12 + 16);
  STACK[0x5C8] = (v12 + 48);
  STACK[0x588] = v11 + 80;
  (*(a8 + 8 * (v8 ^ 0x671C)))();
  v14 = (*(STACK[0x3E0] + 8 * (v8 ^ 0x671C)))(v13, 0, 32);
  v15 = STACK[0x3E0];
  STACK[0x800] = v9;
  STACK[0x8B8] = 0;
  LODWORD(STACK[0xB40]) = 237377513;
  STACK[0x880] = 0;
  LODWORD(STACK[0x4C0]) = 237377513;
  STACK[0x970] = v10;
  return (*(v15 + 8 * (((v10 == 0x6286B82630F8F22CLL) * ((v8 - 309530306) & 0x1272D2EF ^ 0x2DC)) ^ v8)))(v14);
}

uint64_t sub_24481A858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x8C8] = 0;
  LODWORD(STACK[0x834]) = 237377513;
  return (*(a8 + 8 * ((((v8 - 750) | 0x4268) - 7183) ^ v8)))();
}

uint64_t sub_24481A9E0@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  STACK[0x400] = STACK[0x800];
  LODWORD(STACK[0xAD4]) = 2001745651;
  LODWORD(STACK[0xB38]) = 237377519;
  LODWORD(STACK[0x6A4]) = -1212683874;
  return (*(a1 + 8 * a2))();
}

uint64_t sub_24481AEB0@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v4 = ((v3 - 1922177638) & 0x7291E4F7) + a2 + 998932174;
  v5 = 1201608097 - *(v2 - 0x750C1ABFB0567FCBLL);
  v6 = v4 < 0x3D33FD86;
  v7 = v4 > v5;
  v8 = v6 ^ (v5 < (v3 ^ 0x7458u) + 1026808682);
  v9 = v7;
  if (v8)
  {
    v10 = v6;
  }

  else
  {
    v10 = v9;
  }

  return (*(a1 + 8 * (((4 * v10) | (32 * v10)) ^ v3)))();
}

uint64_t sub_24481B038@<X0>(uint64_t a1@<X7>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, unsigned int a57)
{
  v59 = (*(a1 + 8 * ((v58 + 11947) ^ 0x1644)))((688219379 - v57 + a2 - ((((v58 + 2372) ^ 0xAA25090) + 2 * (688219379 - v57 + a2)) & 0x1C4C2FD2) - 478718674) ^ 0xE2617E9u);
  v60 = STACK[0x3E0];
  STACK[0x370] = v59;
  return (*(v60 + 8 * (((v59 == 0) * (v58 ^ 0x20D8)) | (v58 + 11947))))(v59, a57, a55, a53, a52, 0xC8704E56F45A6D9DLL, 2037878191, v60, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41);
}

uint64_t sub_24481B228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54)
{
  STACK[0x330] = a5;
  LODWORD(STACK[0x320]) = v54;
  LODWORD(STACK[0x3C0]) = 2 * a54 - 1376438726;
  v55 = *(a8 + 8 * (a2 ^ 0x1A61 ^ (1915 * ((a2 + 1102389156) < 0x98FE9B43))));
  return v55(0x3DFD662A599D9AF9, a2, 3222861572, ((v54 - 1959685834) ^ 0x6D4EFFF6B6FD97F6) - 0x50A041010E08240 + ((((a2 - 200) | 0x1108u) ^ 0x16DFB3C45) & (2 * (v54 - 1959685834))), v55, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49);
}

uint64_t sub_24481B704@<X0>(int a1@<W1>, __int16 a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v16 = STACK[0x370] + a3 + a6;
  v17 = __ROR8__(v16 & 0xFFFFFFFFFFFFFFF8, 8);
  v18 = ((0x16480F2CA3743029 - v17) & v7) + v17 + a4 - ((v17 + a4) & v8);
  v19 = __ROR8__(v18 ^ v11, 8);
  v20 = v18 ^ v12;
  v21 = __ROR8__(((v13 & (2 * (v19 + v20))) - (v19 + v20) + v14) ^ v15, 8);
  v22 = ((v13 & (2 * (v19 + v20))) - (v19 + v20) + v14) ^ v15 ^ __ROR8__(v20, 61);
  v23 = (v21 + v22) ^ v6;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ v9;
  v26 = __ROR8__(v25, 8);
  v27 = *(a5 + 8 * a1);
  v28 = v25 ^ __ROR8__(v24, 61);
  v29 = (((2 * (v26 + v28)) & 0x2EA57472DD57E1E0) - (v26 + v28) - 0x1752BA396EABF0F1) ^ 0x498FD7BF62609A6BLL;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (v31 + v30 - ((2 * (v31 + v30)) & 0xE88C35A3C70E36C8) + 0x74461AD1E3871B64) ^ 0x49BB7CFBBA1A819DLL;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (v34 + v33 - ((2 * (v34 + v33)) & 0x2A07DFB7FD806E98) - 0x6AFC1024013FC8B4) ^ 0x60DA8EA90D7134AALL;
  v36 = __ROR8__(v35, 8);
  v37 = __ROR8__(v33, 61);
  *v16 = ((0xFB6983405B4ED50FLL - ((v36 + (v35 ^ v37)) | 0xFB6983405B4ED50FLL) + ((v36 + (v35 ^ v37)) | 0x4967CBFA4B12AF0)) ^ 0x8EAEE4EB2AC9547BLL) >> (8 * (v16 & 7u));
  v38 = __ROR8__((v16 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v39 = v38 - ((2 * v38 + 0x136FE1A6B9179FACLL) & 0x2781D76CBF2F0836) + 0x178DC89BC2353F1;
  v40 = v39 ^ 0x510BB354C82BDB2FLL;
  v39 ^= 0x1CB435CE2C75A598uLL;
  v41 = (__ROR8__(v40, 8) + v39) ^ v10;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = __ROR8__(v41, 8);
  v45 = (((2 * (v43 + v42)) & 0x5EF68222E9BD709CLL) - (v43 + v42) + 0x5084BEEE8B2147B1) ^ 0xDE782BC4EC14EE6DLL;
  v46 = v45 ^ __ROR8__(v42, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ v9;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = __ROR8__(v47, 8);
  v50 = __ROR8__((0x3868A1A2089D6C1FLL - ((v49 + v48) | 0x3868A1A2089D6C1FLL) + ((v49 + v48) | 0xC7975E5DF76293E0)) ^ 0x66B5CC2404560684, 8);
  v51 = (0x3868A1A2089D6C1FLL - ((v49 + v48) | 0x3868A1A2089D6C1FLL) + ((v49 + v48) | 0xC7975E5DF76293E0)) ^ 0x66B5CC2404560684 ^ __ROR8__(v48, 61);
  v52 = (((2 * (v50 + v51)) | 0xEF359D77A13F518CLL) - (v50 + v51) + 0x86531442F60573ALL) ^ 0xCA67A8918902323FLL;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = (__ROR8__(v52, 8) + v53) ^ 0xF5D96172F3B103E6;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = __ROR8__(v54, 8);
  *(v16 + 1) = ((((v56 + v55) & 0xFEDA796B56DB599BLL ^ 0x6A08414100124098) + ((v56 + v55) & 0x1258694A924A664 ^ 0x204A1202401) - 1) ^ 0xE030DB112F4A1A13) >> (8 * ((v16 + 1) & 7));
  v57 = __ROR8__((v16 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v58 = ((2 * (v57 + a4)) | 0x942AC465F311F89ELL) - (v57 + a4) - 0x4A156232F988FC4FLL;
  v59 = __ROR8__(v58 ^ 0xCDE3AD06E34A37BLL, 8);
  v58 ^= 0x4161BC4A8A6ADDCCuLL;
  v60 = (v59 + v58) ^ v10;
  v61 = v60 ^ __ROR8__(v58, 61);
  v62 = (__ROR8__(v60, 8) + v61) ^ v6;
  v63 = v62 ^ __ROR8__(v61, 61);
  v64 = __ROR8__(v62, 8);
  v65 = __ROR8__((v64 + v63 - ((2 * (v64 + v63)) & 0x289691EA58AD6270) + 0x144B48F52C56B138) ^ 0xF88377C3B2A3AD06, 8);
  v66 = (v64 + v63 - ((2 * (v64 + v63)) & 0x289691EA58AD6270) + 0x144B48F52C56B138) ^ 0xF88377C3B2A3AD06 ^ __ROR8__(v63, 61);
  v67 = (v65 + v66) ^ 0xA1229279F3349564;
  v68 = v67 ^ __ROR8__(v66, 61);
  v69 = __ROR8__(v67, 8);
  v70 = (v69 + v68 - ((2 * (v69 + v68)) & 0xFA695A78BC373002) + 0x7D34AD3C5E1B9801) ^ 0x40C9CB16078602F8;
  v71 = v70 ^ __ROR8__(v68, 61);
  v72 = (__ROR8__(v70, 8) + v71) ^ 0xF5D96172F3B103E6;
  *(v16 + 2) = (((__ROR8__(v72, 8) + (v72 ^ __ROR8__(v71, 61))) ^ 0x8A3898548E787E8BLL) >> (8 * ((v16 + 2) & 7))) ^ HIBYTE(a2) ^ 0xF7;
  v73 = __ROR8__((v16 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v74 = ((v73 + a4) | 0xCA9151DD609C8C82) - ((v73 + a4) | 0x356EAE229F63737DLL) + 0x356EAE229F63737DLL;
  v75 = v74 ^ 0x8C5A093FF720D3B6;
  v74 ^= 0xC1E58FA5137EAD01;
  v76 = (__ROR8__(v75, 8) + v74) ^ v10;
  v77 = v76 ^ __ROR8__(v74, 61);
  v78 = __ROR8__(v76, 8);
  v79 = (0xE0D40237F8085144 - ((v78 + v77) | 0xE0D40237F8085144) + ((v78 + v77) | 0x1F2BFDC807F7AEBBLL)) ^ 0x91D768E260C20767;
  v80 = v79 ^ __ROR8__(v77, 61);
  v81 = (__ROR8__(v79, 8) + v80) ^ v9;
  v82 = v81 ^ __ROR8__(v80, 61);
  v83 = __ROR8__(v81, 8);
  v84 = __ROR8__((((2 * ((v83 + v82) ^ 0x8BA04F721F9FE89CLL)) & 0x123E101A43A0F0D2) - ((v83 + v82) ^ 0x8BA04F721F9FE89CLL) + 0x76E0F7F2DE2F8796) ^ 0x5C622AF93284FA6ELL, 8);
  v85 = (((2 * ((v83 + v82) ^ 0x8BA04F721F9FE89CLL)) & 0x123E101A43A0F0D2) - ((v83 + v82) ^ 0x8BA04F721F9FE89CLL) + 0x76E0F7F2DE2F8796) ^ 0x5C622AF93284FA6ELL ^ __ROR8__(v82, 61);
  v86 = (v84 + v85) ^ 0x3DFD662A599D9AF9;
  v87 = v86 ^ __ROR8__(v85, 61);
  v88 = (__ROR8__(v86, 8) + v87) ^ 0xF5D96172F3B103E6;
  *(v16 + 3) = a2 ^ (((__ROR8__(v88, 8) + (v88 ^ __ROR8__(v87, 61))) ^ 0x8A3898548E787E8BLL) >> (8 * ((v16 + 3) & 7))) ^ 4;
  return v27();
}

uint64_t sub_24481BDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *v8 = v9;
  *v10 = v11;
  return (*(a8 + 8 * ((v12 - 4135) ^ 0x1DF1)))();
}

uint64_t sub_24481BF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x330] = a5;
  STACK[0x3C0] = *(a5 - 0x750C1ABFB0567FC3);
  v10 = (v8 - 10316) | 0x2822u;
  LODWORD(STACK[0x320]) = v9;
  v11 = *(a8 + 8 * v8);
  STACK[0x3B0] = v10;
  STACK[0x3D0] = (v10 - 32668731) & 0xADFEDE74;
  STACK[0x3A0] = STACK[0x370] + ((v9 - 1959685834) ^ 0x3F8FEBDB77DEFEDFLL) + 0x74E22D955AF363DDLL + ((v10 + 4022194072u) & (2 * (v9 - 1959685834)));
  return v11(0x8F4813F5EA222BB6);
}

uint64_t sub_24481C14C@<X0>(uint64_t a1@<X0>, unsigned int a2@<W3>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v23 = (v10 | ((v10 < a2) << 32)) + 0x4B8DE68F16A59B27;
  v24 = v23 + STACK[0x3C0];
  v25 = STACK[0x3A0] + v23;
  v24 -= 0x4B8DE68F2D2D9D44;
  v26 = __ROR8__(v24 & 0xFFFFFFFFFFFFFFF8, 8);
  v27 = ((STACK[0x3D0] - v26 + 0x653FFD798A28421) & 0x68192F52EEDDDAFLL) + v26 - 0x7653FFD844AF1482 - ((v26 - 0x7653FFD844AF1482) & 0x28192F52EEDDDAFLL);
  v28 = v27 ^ 0xB44F4353FA541F3DLL;
  v27 ^= 0xF92F426E20D344C9;
  v29 = __ROR8__(v28, 8);
  v30 = (a5 - ((v29 + v27) | a5) + ((v29 + v27) | 0x469495A91D8C25D5)) ^ 0xCB2ADC7696B2E3DFLL;
  v31 = v30 ^ __ROR8__(v27, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0x41285C582D9B8689;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0x1717D4ABBED3C077;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (v36 + v35 - ((2 * (v36 + v35)) & 0x2D1F34E73514C3DCLL) - 0x6970658C65759E12) ^ 0x7A0716CC45B1B23ELL;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (v39 + v38 - ((2 * (v39 + v38)) & 0xCE208E478446816ELL) - 0x18EFB8DC3DDCBF49) ^ 0xD788E034FA98A794;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = __ROR8__(v25 & 0xFFFFFFFFFFFFFFF8, 8) - 0x16480F2CA374302ALL;
  v43 = __ROR8__(v40, 8);
  v44 = ((2 * v42) | 0x28EEB20E853F7082) - v42 - 0x14775907429FB841;
  v45 = __ROR8__(v44 ^ 0x52BC01E5D523E775, 8);
  v46 = v44 ^ v13;
  v47 = (((2 * (v43 + v41)) | 0xB55A8D32B8DC1880) - (v43 + v41) - 0x5AAD46995C6E0C40) ^ 0xA85FDFABBCC79C0;
  v48 = ((v14 | (2 * (v45 + v46))) - (v45 + v46) + v7) ^ v5;
  v49 = v48 ^ __ROR8__(v46, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ v21;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = __ROR8__(v50, 8);
  v53 = __ROR8__(v47, 8) + (v47 ^ __ROR8__(v41, 61));
  v54 = (((v52 + v51) ^ a4) - (v22 & (2 * ((v52 + v51) ^ a4))) + v18) ^ v15;
  v55 = v54 ^ __ROR8__(v51, 61);
  v56 = __ROR8__(v54, 8);
  v57 = ((v16 & (2 * (v56 + v55))) - (v56 + v55) + v12) ^ a1;
  v58 = v57 ^ __ROR8__(v55, 61);
  v59 = (__ROR8__(v57, 8) + v58) ^ v19;
  v60 = v59 ^ __ROR8__(v58, 61);
  v61 = __ROR8__(v59, 8);
  v62 = ((v6 | (2 * (v61 + v60))) - (v61 + v60) + v20) ^ v11;
  v63 = v62 ^ __ROR8__(v60, 61);
  v64 = __ROR8__(v62, 8);
  *v25 = (((a3 - ((v64 + v63) | a3) + ((v64 + v63) | v17)) ^ v8) >> (8 * (v25 & 7u))) ^ (((v53 - ((2 * v53) & 0x1FE01D123E3422C8) + 0xFF00E891F1A1164) ^ 0x67487D71E3CD4FACLL) >> (8 * (v24 & 7u))) ^ *v24;
  return (*(STACK[0x3E0] + 8 * ((118 * (v9 != 0)) ^ STACK[0x3B0])))();
}

uint64_t sub_24481C614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55)
{
  STACK[0x3D0] = ((2 * (LODWORD(STACK[0x320]) - 1959685824)) & 0x1FE7DED78) + ((((v55 - 3993) | 0x1228u) + 0x52FFDFFBFF3EE084) ^ (LODWORD(STACK[0x320]) - 1959685824)) - 0x101854039012301CLL;
  v56 = a55 - (STACK[0x3C0] & 0xD71894E4) + 1804356226;
  v57 = (2 * v56) & 0x4F6EFDBE ^ 0x470894A4;
  LODWORD(STACK[0x320]) = v57;
  v58 = v57 + (v56 ^ 0xCC3B34AD) + 1559886266 == 78739609;
  return (*(a8 + 8 * (a51 ^ (v58 | (16 * v58)))))(4216227686, 0x29C04B4CCF5E3260, -4189, 0xED60FAF23E53D254, 0x253E0A1B83585B58, 0x63A33A6C176B5592, 0xAB7B7FBB6B88FBCBLL);
}

uint64_t sub_24481C924(uint64_t a1, int a2, int a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v85 = v76 + v77 + a1;
  v86.i64[0] = v85 + (v69 + v72);
  v87.i64[0] = v85 + (v69 + a2);
  v86.i64[1] = v85 + (v69 + v71);
  v87.i64[1] = v85 + (v69 + v73);
  v88.i64[0] = v85 + (v69 + a4);
  v89 = STACK[0x3E0];
  v90.i64[0] = v85 + (v69 + a6 + v74);
  v88.i64[1] = v85 + (v69 + a3);
  v90.i64[1] = v85 + (v69 + a5);
  v91 = vandq_s8(v90, *&STACK[0x310]);
  v92 = vandq_s8(v88, *&STACK[0x310]);
  v93 = vandq_s8(v87, *&STACK[0x310]);
  v94 = vandq_s8(v86, *&STACK[0x310]);
  v95 = vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL);
  v96 = vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL);
  v97 = vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL);
  v98 = vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL);
  v99 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v97, v97), *&STACK[0x300]), *&STACK[0x2F0]), v97);
  v100 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v98, v98), *&STACK[0x300]), *&STACK[0x2F0]), v98);
  v101 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v96, v96), *&STACK[0x300]), *&STACK[0x2F0]), v96), *&STACK[0x2E0]);
  v102 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v95, v95), *&STACK[0x300]), *&STACK[0x2F0]), v95), *&STACK[0x2E0]);
  v103 = veorq_s8(v102, *&STACK[0x2D0]);
  v104 = veorq_s8(v101, *&STACK[0x2D0]);
  v105 = veorq_s8(v101, *&STACK[0x2C0]);
  v106 = veorq_s8(v102, *&STACK[0x2C0]);
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v105), *&STACK[0x2B0]);
  v108 = vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL);
  v109 = vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL);
  v110 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v106), *&STACK[0x2B0]);
  v111 = veorq_s8(v110, v109);
  v112 = veorq_s8(v107, v108);
  v113 = vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL);
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v112);
  v115 = veorq_s8(vaddq_s64(v113, v111), *&STACK[0x2A0]);
  v116 = vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL);
  v117 = veorq_s8(v114, *&STACK[0x2A0]);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v119 = veorq_s8(v115, v116);
  v120 = vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL);
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v119);
  v122 = vaddq_s64(v120, v118);
  v123 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v121, *&STACK[0x290]), vorrq_s8(v121, *&STACK[0x280])), *&STACK[0x280]), *&STACK[0x270]);
  v124 = vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL);
  v125 = vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL);
  v126 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v122, *&STACK[0x290]), vorrq_s8(v122, *&STACK[0x280])), *&STACK[0x280]), *&STACK[0x270]);
  v127 = veorq_s8(v126, v125);
  v128 = veorq_s8(v123, v124);
  v129 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v128);
  v130 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v127);
  v131 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v129, *&STACK[0x260]), vorrq_s8(v129, *&STACK[0x250])), *&STACK[0x250]), *&STACK[0x240]);
  v132 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v130, *&STACK[0x260]), vorrq_s8(v130, *&STACK[0x250])), *&STACK[0x250]), *&STACK[0x240]);
  v133 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL));
  v134 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v135 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v133), v81);
  v136 = vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL);
  v137 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v134), v81);
  v138 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL));
  v139 = veorq_s8(v135, v136);
  v140 = vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL);
  v141 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v139);
  v142 = vaddq_s64(v140, v138);
  v143 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v142, v142), v82), v142), v83), v84);
  v144 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v141, v141), v82), v141), v83), v84);
  v145 = vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL);
  v146 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v147 = veorq_s8(v143, v145);
  v148 = vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL);
  v149 = vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL);
  v150 = vaddq_s64(v99, *&STACK[0x2E0]);
  v151 = vaddq_s64(v149, v147);
  v152 = vaddq_s64(v148, v146);
  v153 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v152, v152), v78), v152), v79), v80);
  v190.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v151, v151), v78), v151), v79), v80), vnegq_s64(vandq_s8(vshlq_n_s64(v86, 3uLL), a67)));
  v190.val[2] = vshlq_u64(v153, vnegq_s64(vandq_s8(vshlq_n_s64(v87, 3uLL), a67)));
  v154 = veorq_s8(v150, *&STACK[0x2D0]);
  v155 = veorq_s8(v150, *&STACK[0x2C0]);
  v156 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v155), *&STACK[0x2B0]);
  v157 = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL));
  v158 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v157), *&STACK[0x2A0]);
  v159 = veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL));
  v160 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), v159);
  v161 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v160, *&STACK[0x290]), vorrq_s8(v160, *&STACK[0x280])), *&STACK[0x280]), *&STACK[0x270]);
  v162 = veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL));
  v163 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v162);
  v164 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v163, *&STACK[0x260]), vorrq_s8(v163, *&STACK[0x250])), *&STACK[0x250]), *&STACK[0x240]);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL));
  v166 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165), v81);
  v167 = veorq_s8(v166, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v168 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), v167);
  v169 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v168, v168), v82), v168), v83), v84);
  v170 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), veorq_s8(v169, vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL)));
  v171 = vaddq_s64(v100, *&STACK[0x2E0]);
  v190.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v170, v170), v78), v170), v79), v80), vnegq_s64(vandq_s8(vshlq_n_s64(v88, 3uLL), a67)));
  v172 = veorq_s8(v171, *&STACK[0x2D0]);
  v173 = veorq_s8(v171, *&STACK[0x2C0]);
  v174 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v173), *&STACK[0x2B0]);
  v175 = veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL));
  v176 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), v175), *&STACK[0x2A0]);
  v177 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL));
  v178 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), v177);
  v179 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v178, *&STACK[0x290]), vorrq_s8(v178, *&STACK[0x280])), *&STACK[0x280]), *&STACK[0x270]);
  v180 = veorq_s8(v179, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v181 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), v180);
  v182 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v181, *&STACK[0x260]), vorrq_s8(v181, *&STACK[0x250])), *&STACK[0x250]), *&STACK[0x240]);
  v183 = veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v184 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL), v183), v81);
  v185 = veorq_s8(v184, vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL));
  v186 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL), v185);
  v187 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v186, v186), v82), v186), v83), v84);
  v188 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL), veorq_s8(v187, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL)));
  v190.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v188, v188), v78), v188), v79), v80), vnegq_s64(vandq_s8(vshlq_n_s64(v90, 3uLL), a67)));
  *(v90.i64[0] - 7) = vrev64_s8(*&vqtbl4q_s8(v190, a68));
  return (*(v89 + 8 * (((v69 != v70) * v75) ^ v68)))();
}

uint64_t sub_24481D00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a8 + 8 * (v9 + 6254));
  v11 = LODWORD(STACK[0x320]) + 1481146649 + v8;
  LODWORD(STACK[0x3B0]) = v11 - 8;
  LODWORD(STACK[0x3A0]) = v11 - 7;
  return v10(56);
}

uint64_t sub_24481D0DC@<X0>(unint64_t a1@<X0>, int a2@<W2>, int a3@<W3>, int a4@<W4>, int a5@<W5>, int a6@<W6>, int a7@<W7>, int a8@<W8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v82 = v75 + v78 + v73;
  v83.i64[0] = v82 + (LODWORD(STACK[0x3A0]) + v71 + 16);
  v84.i64[0] = v82 + (a3 + v71 + 16);
  v85.i64[0] = v82 + (a5 + v71 + 16);
  v83.i64[1] = v82 + (LODWORD(STACK[0x3B0]) + v71 + 16);
  v84.i64[1] = v82 + (a2 + v71 + 16);
  v85.i64[1] = v82 + (a4 + v71 + 16);
  v86.i64[0] = v82 + (a7 + v71 + 16);
  v86.i64[1] = v82 + (a6 + v71 + 16);
  *&v87 = v82 + (v77 + v71 + 16);
  v88.i64[0] = v82 + (v69 + v71 + 16);
  v89.i64[0] = v82 + (v68 + v71 + 16);
  *(&v87 + 1) = v82 + (v72 + v71 + 16);
  *&STACK[0x3C0] = v87;
  v88.i64[1] = v82 + (v79 + v71 + 16);
  v89.i64[1] = v82 + (a8 + v71 + 16);
  v90 = vandq_s8(v86, *&STACK[0x310]);
  v91 = vandq_s8(v85, *&STACK[0x310]);
  v92 = vandq_s8(v84, *&STACK[0x310]);
  v93 = vandq_s8(v83, *&STACK[0x310]);
  v94 = vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL);
  v95 = vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL);
  v96 = vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL);
  v97 = vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL);
  v98 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v96, v96), *&STACK[0x300]), *&STACK[0x2F0]), v96);
  v99 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v97, v97), *&STACK[0x300]), *&STACK[0x2F0]), v97);
  v100 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v95, v95), *&STACK[0x300]), *&STACK[0x2F0]), v95), *&STACK[0x2E0]);
  v101 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v94, v94), *&STACK[0x300]), *&STACK[0x2F0]), v94), *&STACK[0x2E0]);
  v102 = veorq_s8(v101, *&STACK[0x2D0]);
  v103 = veorq_s8(v100, *&STACK[0x2D0]);
  v104 = veorq_s8(v100, *&STACK[0x2C0]);
  v105 = veorq_s8(v101, *&STACK[0x2C0]);
  v106 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104), *&STACK[0x2B0]);
  v107 = vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL);
  v108 = vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL);
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v105), *&STACK[0x2B0]);
  v110 = veorq_s8(v109, v108);
  v111 = veorq_s8(v106, v107);
  v112 = vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL);
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v111);
  v114 = veorq_s8(vaddq_s64(v112, v110), *&STACK[0x2A0]);
  v115 = vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL);
  v116 = veorq_s8(v113, *&STACK[0x2A0]);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v118 = veorq_s8(v114, v115);
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v118);
  v120 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117);
  v121 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v119, *&STACK[0x290]), vorrq_s8(v119, *&STACK[0x280])), *&STACK[0x280]), *&STACK[0x270]);
  v122 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v120, *&STACK[0x290]), vorrq_s8(v120, *&STACK[0x280])), *&STACK[0x280]), *&STACK[0x270]);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v124 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v125 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v124);
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123);
  v127 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v125, *&STACK[0x260]), vorrq_s8(v125, *&STACK[0x250])), *&STACK[0x250]), *&STACK[0x240]);
  v128 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v126, *&STACK[0x260]), vorrq_s8(v126, *&STACK[0x250])), *&STACK[0x250]), *&STACK[0x240]);
  v129 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v130 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v131 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v129), *&STACK[0x220]);
  v132 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v130), *&STACK[0x220]);
  v133 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL));
  v134 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v135 = vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL);
  v136 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v134);
  v137 = vaddq_s64(v135, v133);
  v138 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v137, v137), *&STACK[0x210]), v137), *&STACK[0x200]), a66);
  v139 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v136, v136), *&STACK[0x210]), v136), *&STACK[0x200]), a66);
  v140 = vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL);
  v141 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL));
  v142 = vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL);
  v143 = vdupq_n_s64(a1);
  v144 = vaddq_s64(v98, *&STACK[0x2E0]);
  v145 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), veorq_s8(v138, v140));
  v146 = vaddq_s64(v142, v141);
  v251.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v145, v145), *&STACK[0x360]), v145), *&STACK[0x350]), *&STACK[0x340]), vnegq_s64(vandq_s8(vshlq_n_s64(v83, 3uLL), v143)));
  v251.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v146, v146), *&STACK[0x360]), v146), *&STACK[0x350]), *&STACK[0x340]), vnegq_s64(vandq_s8(vshlq_n_s64(v84, 3uLL), v143)));
  v147 = veorq_s8(v144, *&STACK[0x2D0]);
  v148 = veorq_s8(v144, *&STACK[0x2C0]);
  v149 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL), v148), *&STACK[0x2B0]);
  v150 = veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL));
  v151 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL), v150), *&STACK[0x2A0]);
  v152 = veorq_s8(v151, vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL));
  v153 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL), v152);
  v154 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v153, *&STACK[0x290]), vorrq_s8(v153, *&STACK[0x280])), *&STACK[0x280]), *&STACK[0x270]);
  v155 = veorq_s8(v154, vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v156 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v155);
  v157 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v156, *&STACK[0x260]), vorrq_s8(v156, *&STACK[0x250])), *&STACK[0x250]), *&STACK[0x240]);
  v158 = veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL));
  v159 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v158), *&STACK[0x220]);
  v160 = veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL));
  v161 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v160);
  v162 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v161, v161), *&STACK[0x210]), v161), *&STACK[0x200]), a66);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v164 = vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL);
  v162.i64[0] = v82 + (v67 + v71 + v81 + 16);
  v162.i64[1] = v82 + (v66 + v71 + 16);
  v165 = vaddq_s64(v164, v163);
  v166 = vsubq_s64(vorrq_s8(vaddq_s64(v165, v165), *&STACK[0x360]), v165);
  v167 = vandq_s8(v162, *&STACK[0x310]);
  v168 = vaddq_s64(v99, *&STACK[0x2E0]);
  v251.val[1] = vshlq_u64(veorq_s8(vaddq_s64(v166, *&STACK[0x350]), *&STACK[0x340]), vnegq_s64(vandq_s8(vshlq_n_s64(v85, 3uLL), v143)));
  v169 = veorq_s8(v168, *&STACK[0x2D0]);
  v170 = veorq_s8(v168, *&STACK[0x2C0]);
  v171 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), v170), *&STACK[0x2B0]);
  v172 = veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL));
  v173 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), v172), *&STACK[0x2A0]);
  v174 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL));
  v175 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v174);
  v176 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v175, *&STACK[0x290]), vorrq_s8(v175, *&STACK[0x280])), *&STACK[0x280]), *&STACK[0x270]);
  v177 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL));
  v178 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), v177);
  v179 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v178, *&STACK[0x260]), vorrq_s8(v178, *&STACK[0x250])), *&STACK[0x250]), *&STACK[0x240]);
  v180 = veorq_s8(v179, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v181 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), v180), *&STACK[0x220]);
  v182 = veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v183 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v182);
  v184 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v183, v183), *&STACK[0x210]), v183), *&STACK[0x200]), a66);
  v185 = veorq_s8(v184, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v186 = vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL);
  v187 = vandq_s8(v89, *&STACK[0x310]);
  v188 = vaddq_s64(v186, v185);
  v189 = vandq_s8(v88, *&STACK[0x310]);
  v251.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v188, v188), *&STACK[0x360]), v188), *&STACK[0x350]), *&STACK[0x340]), vnegq_s64(vandq_s8(vshlq_n_s64(v86, 3uLL), v143)));
  v190 = vandq_s8(*&STACK[0x3C0], *&STACK[0x310]);
  v191 = vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL);
  v192 = vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL);
  v193 = vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL);
  v194 = vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL);
  v195 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v193, v193), *&STACK[0x300]), *&STACK[0x2F0]), v193);
  v196 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v192, v192), *&STACK[0x300]), *&STACK[0x2F0]), v192), *&STACK[0x2E0]);
  v197 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v191, v191), *&STACK[0x300]), *&STACK[0x2F0]), v191), *&STACK[0x2E0]);
  v192.i64[0] = vqtbl4q_s8(v251, a65).u64[0];
  v251.val[0] = veorq_s8(v197, *&STACK[0x2D0]);
  v251.val[1] = veorq_s8(v196, *&STACK[0x2D0]);
  v198 = veorq_s8(v196, *&STACK[0x2C0]);
  v199 = veorq_s8(v197, *&STACK[0x2C0]);
  v251.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v251.val[1], 0x38uLL), v251.val[1], 8uLL), v198), *&STACK[0x2B0]);
  v251.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v251.val[0], 0x38uLL), v251.val[0], 8uLL), v199), *&STACK[0x2B0]);
  v200 = veorq_s8(v251.val[0], vsraq_n_u64(vshlq_n_s64(v199, 3uLL), v199, 0x3DuLL));
  v201 = veorq_s8(v251.val[1], vsraq_n_u64(vshlq_n_s64(v198, 3uLL), v198, 0x3DuLL));
  v251.val[2] = vsraq_n_u64(vshlq_n_s64(v251.val[0], 0x38uLL), v251.val[0], 8uLL);
  v251.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v251.val[1], 0x38uLL), v251.val[1], 8uLL), v201);
  v251.val[1] = veorq_s8(vaddq_s64(v251.val[2], v200), *&STACK[0x2A0]);
  v251.val[2] = vsraq_n_u64(vshlq_n_s64(v200, 3uLL), v200, 0x3DuLL);
  v251.val[0] = veorq_s8(v251.val[0], *&STACK[0x2A0]);
  v202 = veorq_s8(v251.val[0], vsraq_n_u64(vshlq_n_s64(v201, 3uLL), v201, 0x3DuLL));
  v203 = veorq_s8(v251.val[1], v251.val[2]);
  v251.val[2] = vsraq_n_u64(vshlq_n_s64(v251.val[0], 0x38uLL), v251.val[0], 8uLL);
  v251.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v251.val[1], 0x38uLL), v251.val[1], 8uLL), v203);
  v251.val[1] = vaddq_s64(v251.val[2], v202);
  v251.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v251.val[0], *&STACK[0x290]), vorrq_s8(v251.val[0], *&STACK[0x280])), *&STACK[0x280]), *&STACK[0x270]);
  v251.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v251.val[1], *&STACK[0x290]), vorrq_s8(v251.val[1], *&STACK[0x280])), *&STACK[0x280]), *&STACK[0x270]);
  v204 = veorq_s8(v251.val[1], vsraq_n_u64(vshlq_n_s64(v202, 3uLL), v202, 0x3DuLL));
  v205 = veorq_s8(v251.val[0], vsraq_n_u64(vshlq_n_s64(v203, 3uLL), v203, 0x3DuLL));
  v251.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v251.val[0], 0x38uLL), v251.val[0], 8uLL), v205);
  v251.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v251.val[1], 0x38uLL), v251.val[1], 8uLL), v204);
  v251.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v251.val[0], *&STACK[0x260]), vorrq_s8(v251.val[0], *&STACK[0x250])), *&STACK[0x250]), *&STACK[0x240]);
  v251.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v251.val[1], *&STACK[0x260]), vorrq_s8(v251.val[1], *&STACK[0x250])), *&STACK[0x250]), *&STACK[0x240]);
  v206 = veorq_s8(v251.val[1], vsraq_n_u64(vshlq_n_s64(v204, 3uLL), v204, 0x3DuLL));
  v207 = veorq_s8(v251.val[0], vsraq_n_u64(vshlq_n_s64(v205, 3uLL), v205, 0x3DuLL));
  v251.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v251.val[1], 0x38uLL), v251.val[1], 8uLL), v206), *&STACK[0x220]);
  v251.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v251.val[0], 0x38uLL), v251.val[0], 8uLL), v207), *&STACK[0x220]);
  v251.val[2] = vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL);
  v208 = veorq_s8(v251.val[0], vsraq_n_u64(vshlq_n_s64(v207, 3uLL), v207, 0x3DuLL));
  v209 = veorq_s8(v251.val[1], v251.val[2]);
  v251.val[2] = vsraq_n_u64(vshlq_n_s64(v251.val[0], 0x38uLL), v251.val[0], 8uLL);
  v251.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v251.val[1], 0x38uLL), v251.val[1], 8uLL), v209);
  v251.val[1] = vaddq_s64(v251.val[2], v208);
  v251.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v251.val[1], v251.val[1]), *&STACK[0x210]), v251.val[1]), *&STACK[0x200]), a66);
  v251.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v251.val[0], v251.val[0]), *&STACK[0x210]), v251.val[0]), *&STACK[0x200]), a66);
  v251.val[2] = vsraq_n_u64(vshlq_n_s64(v208, 3uLL), v208, 0x3DuLL);
  v210 = veorq_s8(v251.val[0], vsraq_n_u64(vshlq_n_s64(v209, 3uLL), v209, 0x3DuLL));
  v211 = vaddq_s64(v195, *&STACK[0x2E0]);
  v212 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v251.val[1], 0x38uLL), v251.val[1], 8uLL), veorq_s8(v251.val[1], v251.val[2]));
  v213 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v251.val[0], 0x38uLL), v251.val[0], 8uLL), v210);
  v251.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v212, v212), *&STACK[0x360]), v212), *&STACK[0x350]), *&STACK[0x340]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3C0], 3uLL), v143)));
  v251.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v213, v213), *&STACK[0x360]), v213), *&STACK[0x350]), *&STACK[0x340]), vnegq_s64(vandq_s8(vshlq_n_s64(v88, 3uLL), v143)));
  v214 = veorq_s8(v211, *&STACK[0x2D0]);
  v215 = veorq_s8(v211, *&STACK[0x2C0]);
  v216 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL), v215), *&STACK[0x2B0]);
  v217 = veorq_s8(v216, vsraq_n_u64(vshlq_n_s64(v215, 3uLL), v215, 0x3DuLL));
  v218 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v216, 0x38uLL), v216, 8uLL), v217), *&STACK[0x2A0]);
  v219 = veorq_s8(v218, vsraq_n_u64(vshlq_n_s64(v217, 3uLL), v217, 0x3DuLL));
  v220 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v218, 0x38uLL), v218, 8uLL), v219);
  v221 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v220, *&STACK[0x290]), vorrq_s8(v220, *&STACK[0x280])), *&STACK[0x280]), *&STACK[0x270]);
  v222 = veorq_s8(v221, vsraq_n_u64(vshlq_n_s64(v219, 3uLL), v219, 0x3DuLL));
  v223 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v221, 0x38uLL), v221, 8uLL), v222);
  v224 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v223, *&STACK[0x260]), vorrq_s8(v223, *&STACK[0x250])), *&STACK[0x250]), *&STACK[0x240]);
  v225 = veorq_s8(v224, vsraq_n_u64(vshlq_n_s64(v222, 3uLL), v222, 0x3DuLL));
  v226 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224, 0x38uLL), v224, 8uLL), v225), *&STACK[0x220]);
  v227 = veorq_s8(v226, vsraq_n_u64(vshlq_n_s64(v225, 3uLL), v225, 0x3DuLL));
  v228 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL), v227);
  v229 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v228, v228), *&STACK[0x210]), v228), *&STACK[0x200]), a66);
  v230 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL), veorq_s8(v229, vsraq_n_u64(vshlq_n_s64(v227, 3uLL), v227, 0x3DuLL)));
  v231 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v194, v194), *&STACK[0x300]), *&STACK[0x2F0]), v194), *&STACK[0x2E0]);
  v251.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v230, v230), *&STACK[0x360]), v230), *&STACK[0x350]), *&STACK[0x340]), vnegq_s64(vandq_s8(vshlq_n_s64(v89, 3uLL), v143)));
  v232 = veorq_s8(v231, *&STACK[0x2D0]);
  v233 = veorq_s8(v231, *&STACK[0x2C0]);
  v234 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL), v233), *&STACK[0x2B0]);
  v235 = veorq_s8(v234, vsraq_n_u64(vshlq_n_s64(v233, 3uLL), v233, 0x3DuLL));
  v236 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234, 0x38uLL), v234, 8uLL), v235), *&STACK[0x2A0]);
  v237 = veorq_s8(v236, vsraq_n_u64(vshlq_n_s64(v235, 3uLL), v235, 0x3DuLL));
  v238 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236, 0x38uLL), v236, 8uLL), v237);
  v239 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v238, *&STACK[0x290]), vorrq_s8(v238, *&STACK[0x280])), *&STACK[0x280]), *&STACK[0x270]);
  v240 = veorq_s8(v239, vsraq_n_u64(vshlq_n_s64(v237, 3uLL), v237, 0x3DuLL));
  v241 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v239, 0x38uLL), v239, 8uLL), v240);
  v242 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v241, *&STACK[0x260]), vorrq_s8(v241, *&STACK[0x250])), *&STACK[0x250]), *&STACK[0x240]);
  v243 = veorq_s8(v242, vsraq_n_u64(vshlq_n_s64(v240, 3uLL), v240, 0x3DuLL));
  v244 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v242, 0x38uLL), v242, 8uLL), v243), *&STACK[0x220]);
  v245 = veorq_s8(v244, vsraq_n_u64(vshlq_n_s64(v243, 3uLL), v243, 0x3DuLL));
  v246 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v244, 0x38uLL), v244, 8uLL), v245);
  v247 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v246, v246), *&STACK[0x210]), v246), *&STACK[0x200]), a66);
  v248 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v247, 0x38uLL), v247, 8uLL), veorq_s8(v247, vsraq_n_u64(vshlq_n_s64(v245, 3uLL), v245, 0x3DuLL)));
  v251.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v248, v248), *&STACK[0x360]), v248), *&STACK[0x350]), *&STACK[0x340]), vnegq_s64(vandq_s8(vshlq_n_s64(v162, 3uLL), v143)));
  v248.i64[0] = vqtbl4q_s8(v251, a65).u64[0];
  v248.i64[1] = v192.i64[0];
  v249 = vrev64q_s8(v248);
  *(v162.i64[0] - 15) = vextq_s8(v249, v249, 8uLL);
  return (*(v76 + 8 * (((v80 == v71) * v74) ^ v70)))();
}

uint64_t sub_24481DC2C()
{
  v4 = *(v0 + 8 * (((((v1 == v2) ^ (v3 + 77)) & 1) * ((v3 + 1883884365) ^ 0x704A1A5E)) ^ v3));
  LODWORD(STACK[0x3C0]) = v2;
  return v4(4216227686, 0x29C04B4CCF5E3260, -4189, 0xED60FAF23E53D254, 0x253E0A1B83585B58, 0x63A33A6C176B5592, 0xAB7B7FBB6B88FBCBLL, v0);
}

uint64_t sub_24481DE10@<X0>(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>)
{
  v23 = STACK[0x370] + STACK[0x3D0] - 0x42E78BF86F2CC6A0 + (a9 + a1);
  v24 = __ROR8__(v23 & (v10 & v15 ^ a3), 8);
  v25 = ((v11 + 2 * v24) & 0x265037D736ED17DCLL) - v24 + 0x7F1FF34107FDA43BLL;
  v26 = v25 ^ 0x2E1CBCF6F3352B25;
  v27 = v25 ^ a6;
  v28 = (__ROR8__(v26, 8) + v27) ^ v17;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x8EFC952A6735A9DCLL;
  v31 = __ROR8__(v30, 8);
  v32 = v30 ^ __ROR8__(v29, 61);
  v33 = (v12 - ((v31 + v32) | v12) + ((v31 + v32) | a7)) ^ v16;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = __ROR8__((a2 - ((v35 + v34) | a2) + ((v35 + v34) | v21)) ^ v14, 8);
  v37 = (a2 - ((v35 + v34) | a2) + ((v35 + v34) | v21)) ^ v14 ^ __ROR8__(v34, 61);
  v38 = (v36 + v37) ^ 0x3DFD662A599D9AF9;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (((2 * (v40 + v39)) & 0x553B2A364E371E0CLL) - (v40 + v39) + v22) ^ v13;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = __ROR8__(v41, 8);
  *v23 = (((a5 | (2 * (v43 + v42))) - (v43 + v42) + a4) ^ v19) >> (8 * ((LOBYTE(STACK[0x370]) + LOBYTE(STACK[0x3D0]) + 96 + a9 + a1) & 7u));
  return (*(a8 + 8 * (((a9 - 1 == v20) * v18) ^ v9)))();
}

uint64_t sub_24481DF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, _DWORD *a53, uint64_t a54, uint64_t a55, int a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, unsigned int a63)
{
  *a52 = a57;
  *a53 = a56;
  return (*(a8 + 8 * v63))(a1, a63, a61, a59, a58, 0xC8704E56F45A6D9DLL, 2037878191);
}