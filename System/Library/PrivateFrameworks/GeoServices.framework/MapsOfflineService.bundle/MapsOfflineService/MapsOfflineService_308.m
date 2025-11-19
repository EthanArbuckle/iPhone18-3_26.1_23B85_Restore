void sub_12CFB04(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    if (v4)
    {
      v7 = *(a2 + 24);
      *(a1 + 16) |= 1u;
      v8 = *(a1 + 8);
      v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
      if (v8)
      {
        v9 = *v9;
      }

      sub_194EA1C((a1 + 24), (v7 & 0xFFFFFFFFFFFFFFFELL), v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_29;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(a1 + 16) |= 2u;
    v10 = *(a1 + 32);
    if (!v10)
    {
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v10 = sub_156FB20(v12);
      *(a1 + 32) = v10;
    }

    if (*(a2 + 32))
    {
      v13 = *(a2 + 32);
    }

    else
    {
      v13 = &off_2777498;
    }

    sub_156F770(v10, v13);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_37;
    }

LABEL_29:
    *(a1 + 16) |= 4u;
    v14 = *(a1 + 40);
    if (!v14)
    {
      v15 = *(a1 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      v14 = sub_132AF08(v16);
      *(a1 + 40) = v14;
    }

    if (*(a2 + 40))
    {
      v17 = *(a2 + 40);
    }

    else
    {
      v17 = &off_276B578;
    }

    sub_132AD14(v14, v17);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_45;
    }

LABEL_37:
    *(a1 + 16) |= 8u;
    v18 = *(a1 + 48);
    if (!v18)
    {
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v18 = sub_132A05C(v20);
      *(a1 + 48) = v18;
    }

    if (*(a2 + 48))
    {
      v21 = *(a2 + 48);
    }

    else
    {
      v21 = &off_276B528;
    }

    sub_1329F38(v18, v21);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_53;
    }

LABEL_45:
    *(a1 + 16) |= 0x10u;
    v22 = *(a1 + 56);
    if (!v22)
    {
      v23 = *(a1 + 8);
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      v22 = sub_132BDB0(v24);
      *(a1 + 56) = v22;
    }

    if (*(a2 + 56))
    {
      v25 = *(a2 + 56);
    }

    else
    {
      v25 = &off_276B5D0;
    }

    sub_132BBBC(v22, v25);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_54;
    }

LABEL_53:
    *(a1 + 64) = *(a2 + 64);
    if ((v4 & 0x40) == 0)
    {
LABEL_9:
      if ((v4 & 0x80) == 0)
      {
LABEL_11:
        *(a1 + 16) |= v4;
        goto LABEL_12;
      }

LABEL_10:
      *(a1 + 66) = *(a2 + 66);
      goto LABEL_11;
    }

LABEL_54:
    *(a1 + 65) = *(a2 + 65);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  if ((v4 & 0x100) != 0)
  {
    v5 = *(a2 + 67);
    *(a1 + 16) |= 0x100u;
    *(a1 + 67) = v5;
  }

  v6 = *(a2 + 8);
  if (v6)
  {

    sub_1957EF4((a1 + 8), (v6 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_12CFD3C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 4) != 0)
  {
    result = sub_132AE24(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) != 0)
  {
    result = sub_1329FF4(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10) == 0)
  {
    return 1;
  }

  result = sub_132BCCC(*(a1 + 56));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_12CFDAC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26CF0A0;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  result[4] = a1;
  result[5] = 0;
  result[7] = 0;
  result[8] = 0;
  result[6] = a1;
  result[9] = 0x3FF0000000000000;
  return result;
}

uint64_t sub_12CFE5C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26CF120;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = a1;
  *(result + 48) = 0;
  *(result + 56) = a1;
  *(result + 64) = 0;
  return result;
}

uint64_t sub_12CFF10(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26CF1A0;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

double sub_12CFFB0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26CF220;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = &qword_278E990;
  *(v2 + 56) = &qword_278E990;
  result = 0.0;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  return result;
}

void *sub_12D005C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26CF2A0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_12D00D4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26CF320;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_12D0150(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26CF3A0;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

double sub_12D01F0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26CF420;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 60) = 0u;
  return result;
}

void *sub_12D0274(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26CF4A0;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

void *sub_12D0310(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26CF520;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_12D038C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26CF5A0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_12D0408(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26CF620;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_12D0484(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26CF6A0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_12D0500(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26CF720;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_12D057C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26CF7A0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_12D05F8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26CF820;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

double sub_12D0674(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26CF8A0;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  return result;
}

void *sub_12D06F8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26CF920;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  result[4] = a1;
  result[5] = 0;
  result[6] = 0;
  result[7] = 0;
  return result;
}

uint64_t sub_12D0798(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26CF9A0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = a1;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = a1;
  *(result + 80) = a1;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 112) = a1;
  *(result + 120) = a1;
  *(result + 128) = 0u;
  *(result + 144) = 0u;
  *(result + 160) = 0u;
  *(result + 176) = 0u;
  *(result + 192) = 0u;
  *(result + 204) = 0u;
  return result;
}

void *sub_12D0864(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26CFA20;
  result[2] = 0;
  *(result + 21) = 0;
  return result;
}

double sub_12D08E0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26CFAA0;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  return result;
}

void *sub_12D095C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26CFB20;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_12D09D4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26CFBA0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 60) = 0u;
  return result;
}

void *sub_12D0A74(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26CFC20;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_12D0AEC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26CFCA0;
  *(result + 16) = 0;
  return result;
}

void *sub_12D0B64(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26CFD20;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_12D0BDC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26CFDA0;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = a1;
  result[7] = 0;
  result[8] = 0;
  result[9] = a1;
  result[10] = 0;
  result[11] = 0;
  result[12] = 0;
  return result;
}

void *sub_12D0C8C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26CFE20;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

void *sub_12D0D28(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26CFEA0;
  result[2] = 0;
  *(result + 21) = 0;
  return result;
}

void *sub_12D0DA4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26CFF20;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = 0;
  return result;
}

double sub_12D0E28(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26CFFA0;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  return result;
}

double sub_12D0EA4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_12C4014(v2, a1, 0);
}

uint64_t sub_12D0F50(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26D00A0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = a1;
  *(result + 72) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = a1;
  *(result + 104) = 2;
  return result;
}

void *sub_12D101C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26D0120;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_12D1094(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26D01A0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = &qword_278E990;
  *(result + 80) = &qword_278E990;
  *(result + 88) = &qword_278E990;
  *(result + 96) = 0;
  *(result + 101) = 0;
  *(result + 112) = 1;
  return result;
}

uint64_t sub_12D1154(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26D0220;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_12D11DC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26D02A0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0;
  return result;
}

double sub_12D127C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26D0320;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

uint64_t sub_12D12FC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26D03A0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 1;
  return result;
}

uint64_t sub_12D137C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26D0420;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = a1;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 96) = &qword_278E990;
  *(result + 104) = 0;
  *(result + 112) = 0;
  return result;
}

void *sub_12D1438(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26D04A0;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

double sub_12D14B4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2[1] = a1;
  *v2 = off_26D0520;
  v2[2] = 0;
  v2[3] = &qword_278E990;
  v2[4] = &qword_278E990;
  *&result = 0x100000000;
  v2[5] = 0x100000000;
  return result;
}

double sub_12D1544(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26D05A0;
  *(v2 + 16) = 0;
  *(v2 + 24) = &qword_278E990;
  *(v2 + 32) = &qword_278E990;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *&result = 0x100000001;
  *(v2 + 60) = 0x100000001;
  return result;
}

void *sub_12D15D8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26D0620;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = a1;
  result[7] = 0;
  result[8] = 0;
  result[9] = &qword_278E990;
  return result;
}

uint64_t sub_12D1688(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D06A0;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_12D1728(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D0720;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = a1;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  return result;
}

double sub_12D17D8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26D07A0;
  *(v2 + 16) = 0;
  *(v2 + 24) = &qword_278E990;
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  return result;
}

uint64_t sub_12D1868(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_8;
    }
  }

  else if (v4)
  {
    goto LABEL_8;
  }

  v5 = *(a1 + 8) & 1;
  if (a1 != &off_2769D58)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_12D225C(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12D1920(uint64_t a1)
{
  sub_12D1868(a1);

  operator delete();
}

uint64_t sub_12D1958(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_12D2364(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_12D24D0(*(v1 + 32));
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_12D19C8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v38 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v38, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v38 + 1;
    v8 = *v38;
    if (*v38 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v38, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v38 + 2;
      }
    }

    v38 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_44;
      }

      v5 |= 4u;
      v20 = v7 + 1;
      v21 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_31;
      }

      v22 = *v20;
      v21 = v21 + (v22 << 7) - 128;
      if ((v22 & 0x80000000) == 0)
      {
        v20 = v7 + 2;
LABEL_31:
        v38 = v20;
        *(a1 + 36) = v21;
        goto LABEL_52;
      }

      v32 = sub_1958770(v7, v21);
      v38 = v32;
      *(a1 + 36) = v33;
      if (!v32)
      {
        goto LABEL_66;
      }
    }

    else if (v11 == 4)
    {
      if (v8 != 32)
      {
        goto LABEL_44;
      }

      v5 |= 8u;
      v23 = v7 + 1;
      v24 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_36;
      }

      v25 = *v23;
      v24 = v24 + (v25 << 7) - 128;
      if ((v25 & 0x80000000) == 0)
      {
        v23 = v7 + 2;
LABEL_36:
        v38 = v23;
        *(a1 + 40) = v24;
        goto LABEL_52;
      }

      v34 = sub_1958770(v7, v24);
      v38 = v34;
      *(a1 + 40) = v35;
      if (!v34)
      {
        goto LABEL_66;
      }
    }

    else
    {
      if (v11 != 5 || v8 != 40)
      {
        goto LABEL_44;
      }

      v5 |= 0x10u;
      v13 = v7 + 1;
      v12 = *v7;
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_15;
      }

      v14 = *v13;
      v12 = (v14 << 7) + v12 - 128;
      if ((v14 & 0x80000000) == 0)
      {
        v13 = v7 + 2;
LABEL_15:
        v38 = v13;
        *(a1 + 44) = v12 != 0;
        goto LABEL_52;
      }

      v36 = sub_19587DC(v7, v12);
      v38 = v36;
      *(a1 + 44) = v37 != 0;
      if (!v36)
      {
        goto LABEL_66;
      }
    }

LABEL_52:
    if (sub_195ADC0(a3, &v38, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 8)
    {
      goto LABEL_44;
    }

    v27 = v7 + 1;
    v26 = *v7;
    if (v26 < 0)
    {
      v28 = *v27;
      v26 = (v28 << 7) + v26 - 128;
      if (v28 < 0)
      {
        v38 = sub_19587DC(v7, v26);
        if (!v38)
        {
          goto LABEL_66;
        }

        goto LABEL_42;
      }

      v27 = v7 + 2;
    }

    v38 = v27;
LABEL_42:
    if (v26 > 2)
    {
      sub_12E8450();
    }

    else
    {
      *(a1 + 16) |= 2u;
      *(a1 + 32) = v26;
    }

    goto LABEL_52;
  }

  if (v11 == 2 && v8 == 18)
  {
    *(a1 + 16) |= 1u;
    v16 = *(a1 + 24);
    if (!v16)
    {
      v17 = *(a1 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      v16 = sub_12E19C8(v18);
      *(a1 + 24) = v16;
      v7 = v38;
    }

    v19 = sub_21F7968(a3, v16, v7);
LABEL_51:
    v38 = v19;
    if (!v19)
    {
      goto LABEL_66;
    }

    goto LABEL_52;
  }

LABEL_44:
  if (v8)
  {
    v29 = (v8 & 7) == 4;
  }

  else
  {
    v29 = 1;
  }

  if (!v29)
  {
    v30 = *(a1 + 8);
    if (v30)
    {
      v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v31 = sub_11F1920((a1 + 8));
      v7 = v38;
    }

    v19 = sub_1952690(v8, v31, v7, a3);
    goto LABEL_51;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_66:
  v38 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v38;
}

char *sub_12D1CFC(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 32);
    *__dst = 8;
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      __dst[1] = v7 | 0x80;
      v8 = v7 >> 7;
      __dst[2] = v7 >> 7;
      v6 = __dst + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = __dst[2];
        do
        {
          *(v6 - 1) = v9 | 0x80;
          v9 = v8 >> 7;
          *v6++ = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }
    }

    else
    {
      v6 = __dst + 2;
    }
  }

  else
  {
    v6 = __dst;
  }

  if (v5)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v11 = *(a1 + 24);
    *v6 = 18;
    v12 = *(v11 + 20);
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v13 = sub_19575D0(v12, v6 + 1);
    }

    else
    {
      v13 = v6 + 2;
    }

    v6 = sub_12D27C4(v11, v13, a3);
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v15 = *(a1 + 36);
    *v6 = 24;
    v6[1] = v15;
    if (v15 > 0x7F)
    {
      v6[1] = v15 | 0x80;
      v16 = v15 >> 7;
      v6[2] = v15 >> 7;
      v14 = v6 + 3;
      if (v15 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v14 - 1) = v6 | 0x80;
          LODWORD(v6) = v16 >> 7;
          *v14++ = v16 >> 7;
          v17 = v16 >> 14;
          v16 >>= 7;
        }

        while (v17);
      }
    }

    else
    {
      v14 = v6 + 2;
    }
  }

  else
  {
    v14 = v6;
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v14)
    {
      v14 = sub_225EB68(a3, v14);
    }

    v19 = *(a1 + 40);
    *v14 = 32;
    v14[1] = v19;
    if (v19 > 0x7F)
    {
      v14[1] = v19 | 0x80;
      v20 = v19 >> 7;
      v14[2] = v19 >> 7;
      v18 = v14 + 3;
      if (v19 >= 0x4000)
      {
        LOBYTE(v14) = v14[2];
        do
        {
          *(v18 - 1) = v14 | 0x80;
          LODWORD(v14) = v20 >> 7;
          *v18++ = v20 >> 7;
          v21 = v20 >> 14;
          v20 >>= 7;
        }

        while (v21);
      }
    }

    else
    {
      v18 = v14 + 2;
    }
  }

  else
  {
    v18 = v14;
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v18)
    {
      v18 = sub_225EB68(a3, v18);
    }

    v22 = *(a1 + 44);
    *v18 = 40;
    v18[1] = v22;
    v18 += 2;
  }

  v23 = *(a1 + 8);
  if ((v23 & 1) == 0)
  {
    return v18;
  }

  v25 = v23 & 0xFFFFFFFFFFFFFFFCLL;
  v26 = *(v25 + 31);
  if (v26 < 0)
  {
    v27 = *(v25 + 8);
    v26 = *(v25 + 16);
  }

  else
  {
    v27 = (v25 + 8);
  }

  if ((*a3 - v18) >= v26)
  {
    v28 = v26;
    memcpy(v18, v27, v26);
    v18 += v28;
    return v18;
  }

  return sub_1957130(a3, v27, v26, v18);
}

uint64_t sub_12D1FD0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x1F) == 0)
  {
    result = 0;
    goto LABEL_15;
  }

  if (v2)
  {
    v5 = sub_12D2940(*(a1 + 24));
    v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v6 = *(a1 + 32);
  if (v6 < 0)
  {
    v7 = 11;
  }

  else
  {
    v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v7;
LABEL_11:
  if ((v2 & 4) != 0)
  {
    v3 += ((9 * (__clz(*(a1 + 36) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if ((v2 & 8) != 0)
  {
LABEL_13:
    v3 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_14:
  result = v3 + ((v2 >> 3) & 2);
LABEL_15:
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v10 < 0)
    {
      v10 = *(v9 + 16);
    }

    result += v10;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_12D20FC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 3) != 0)
  {
    if (v4)
    {
      *(a1 + 16) |= 1u;
      v5 = *(a1 + 24);
      if (!v5)
      {
        v6 = *(a1 + 8);
        v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
        if (v6)
        {
          v7 = *v7;
        }

        v5 = sub_12E1A44(v7);
        *(a1 + 24) = v5;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_2769DB0;
      }

      sub_12D2A10(v5, v8);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 16) |= 2u;
      v9 = *(a1 + 32);
      if (!v9)
      {
        v10 = *(a1 + 8);
        v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
        if (v10)
        {
          v11 = *v11;
        }

        sub_12E1BEC(v11);
        *(a1 + 32) = v9;
      }

      if (*(a2 + 32))
      {
        v12 = *(a2 + 32);
      }

      else
      {
        v12 = &off_2769EF8;
      }

      sub_12D2D30(v9, v12);
    }
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    sub_1957EF4((a1 + 8), (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_12D2200(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_12D3018(*(a1 + 24));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) == 0)
  {
    return 1;
  }

  result = sub_12D3094(*(a1 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_12D225C(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_10;
    }
  }

  else if (v4)
  {
    goto LABEL_10;
  }

  if (a1 != &off_2769D88)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_12D30F8(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_12D5A60(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12D232C(uint64_t a1)
{
  sub_12D225C(a1);

  operator delete();
}

uint64_t sub_12D2364(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_12D6A00(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 56);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 64) + 8);
    do
    {
      v7 = *v6++;
      result = sub_12D6EA8(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 80);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 88) + 8);
    do
    {
      v10 = *v9++;
      result = sub_12D77EC(v10);
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  v11 = *(v1 + 104);
  if (v11 >= 1)
  {
    v12 = (*(v1 + 112) + 8);
    do
    {
      v13 = *v12++;
      result = sub_12DB908(v13);
      --v11;
    }

    while (v11);
    *(v1 + 104) = 0;
  }

  v14 = *(v1 + 16);
  if ((v14 & 0xF) == 0)
  {
    goto LABEL_23;
  }

  if ((v14 & 1) == 0)
  {
    if ((v14 & 2) == 0)
    {
      goto LABEL_20;
    }

LABEL_31:
    result = sub_16E48B0(*(v1 + 128));
    if ((v14 & 4) == 0)
    {
LABEL_21:
      if ((v14 & 8) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    goto LABEL_32;
  }

  v17 = *(v1 + 120) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v17 + 23) < 0)
  {
    **v17 = 0;
    *(v17 + 8) = 0;
    if ((v14 & 2) != 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    *v17 = 0;
    *(v17 + 23) = 0;
    if ((v14 & 2) != 0)
    {
      goto LABEL_31;
    }
  }

LABEL_20:
  if ((v14 & 4) == 0)
  {
    goto LABEL_21;
  }

LABEL_32:
  result = sub_12D326C(*(v1 + 136));
  if ((v14 & 8) != 0)
  {
LABEL_22:
    result = sub_12D335C(*(v1 + 144));
  }

LABEL_23:
  v16 = *(v1 + 8);
  v15 = v1 + 8;
  *(v15 + 144) = 0;
  *(v15 + 8) = 0;
  if (v16)
  {

    return sub_1957EA8(v15);
  }

  return result;
}

uint64_t sub_12D24D0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_12D6A00(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 56);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 64) + 8);
    do
    {
      v7 = *v6++;
      result = sub_12D6EA8(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 80);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 88) + 8);
    do
    {
      v10 = *v9++;
      result = sub_12D77EC(v10);
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  v11 = *(v1 + 104);
  if (v11 >= 1)
  {
    v12 = (*(v1 + 112) + 8);
    do
    {
      v13 = *v12++;
      result = sub_12DB908(v13);
      --v11;
    }

    while (v11);
    *(v1 + 104) = 0;
  }

  v14 = *(v1 + 16);
  if ((v14 & 7) != 0)
  {
    if (v14)
    {
      result = sub_12D335C(*(v1 + 120));
    }

    if ((v14 & 2) != 0)
    {
      v15 = *(v1 + 128);
      v16 = *(v15 + 8);
      result = v15 + 8;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v16)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v14 & 4) != 0)
    {
      v17 = *(v1 + 136);
      v18 = *(v17 + 8);
      result = v17 + 8;
      *(result + 8) = 0;
      *(result + 24) = 0;
      if (v18)
      {
        result = sub_1957EA8(result);
      }
    }
  }

  v20 = *(v1 + 8);
  v19 = v1 + 8;
  *(v19 + 136) = 0;
  *(v19 + 8) = 0;
  if (v20)
  {

    return sub_1957EA8(v19);
  }

  return result;
}

char *sub_12D261C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v23 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v23, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v23 + 1;
    v7 = *v23;
    if (*v23 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v23, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v23 + 2;
      }
    }

    v23 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v15 = *(a1 + 32);
        if (!v15)
        {
          v16 = *(a1 + 8);
          v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
          if (v16)
          {
            v17 = *v17;
          }

          sub_12E1BEC(v17);
          v15 = v18;
          *(a1 + 32) = v18;
          v6 = v23;
        }

        v14 = sub_21F7A88(a3, v15, v6);
        goto LABEL_30;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v19 = *(a1 + 24);
      if (!v19)
      {
        v20 = *(a1 + 8);
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v21 = *v21;
        }

        v19 = sub_12E1A44(v21);
        *(a1 + 24) = v19;
        v6 = v23;
      }

      v14 = sub_21F79F8(a3, v19, v6);
      goto LABEL_30;
    }

    if (v7)
    {
      v11 = (v7 & 7) == 4;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v23;
      }

      return 0;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = v23;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_30:
    v23 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v23;
}

char *sub_12D27C4(uint64_t a1, unint64_t __dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 24);
    *v4 = 10;
    v8 = *(v7 + 20);
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v9 = sub_19575D0(v8, v4 + 1);
    }

    else
    {
      v9 = v4 + 2;
    }

    v4 = sub_12D398C(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 32);
    *v4 = 18;
    v11 = *(v10 + 20);
    v4[1] = v11;
    if (v11 > 0x7F)
    {
      v12 = sub_19575D0(v11, v4 + 1);
    }

    else
    {
      v12 = v4 + 2;
    }

    v4 = sub_12D60D8(v10, v12, a3);
  }

  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return v4;
  }

  v15 = v13 & 0xFFFFFFFFFFFFFFFCLL;
  v16 = *(v15 + 31);
  if (v16 < 0)
  {
    v17 = *(v15 + 8);
    v16 = *(v15 + 16);
  }

  else
  {
    v17 = (v15 + 8);
  }

  if ((*a3 - v4) >= v16)
  {
    v18 = v16;
    memcpy(v4, v17, v16);
    v4 += v18;
    return v4;
  }

  return sub_1957130(a3, v17, v16, v4);
}

uint64_t sub_12D2940(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = sub_12D3DF0(*(a1 + 24));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v5 = sub_12D655C(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  v6 = *(a1 + 8);
  if (v6)
  {
    v8 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = *((v6 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v9 < 0)
    {
      v9 = *(v8 + 16);
    }

    v3 += v9;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_12D2A10(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_12E7CF8((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *(a2 + 64);
    v11 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_12E7D74((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
    v12 = *(a1 + 56) + v9;
    *(a1 + 56) = v12;
    v13 = *(a1 + 64);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 80);
  if (v14)
  {
    v15 = *(a2 + 88);
    v16 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_12E7E00((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
    v17 = *(a1 + 80) + v14;
    *(a1 + 80) = v17;
    v18 = *(a1 + 88);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 104);
  if (v19)
  {
    v20 = *(a2 + 112);
    v21 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_12E7E8C((a1 + 96), v21, (v20 + 8), v19, **(a1 + 112) - *(a1 + 104));
    v22 = *(a1 + 104) + v19;
    *(a1 + 104) = v22;
    v23 = *(a1 + 112);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 16);
  if ((v24 & 0x1F) != 0)
  {
    if (v24)
    {
      v26 = *(a2 + 120);
      *(a1 + 16) |= 1u;
      v27 = *(a1 + 8);
      v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
      if (v27)
      {
        v28 = *v28;
      }

      sub_194EA1C((a1 + 120), (v26 & 0xFFFFFFFFFFFFFFFELL), v28);
      if ((v24 & 2) == 0)
      {
LABEL_16:
        if ((v24 & 4) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_36;
      }
    }

    else if ((v24 & 2) == 0)
    {
      goto LABEL_16;
    }

    *(a1 + 16) |= 2u;
    v29 = *(a1 + 128);
    if (!v29)
    {
      v30 = *(a1 + 8);
      v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
      if (v30)
      {
        v31 = *v31;
      }

      v29 = sub_16F5BD8(v31);
      *(a1 + 128) = v29;
    }

    if (*(a2 + 128))
    {
      v32 = *(a2 + 128);
    }

    else
    {
      v32 = &off_277E738;
    }

    sub_16E4964(v29, v32);
    if ((v24 & 4) == 0)
    {
LABEL_17:
      if ((v24 & 8) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_44;
    }

LABEL_36:
    *(a1 + 16) |= 4u;
    v33 = *(a1 + 136);
    if (!v33)
    {
      v34 = *(a1 + 8);
      v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
      if (v34)
      {
        v35 = *v35;
      }

      v33 = sub_12E1B0C(v35);
      *(a1 + 136) = v33;
    }

    if (*(a2 + 136))
    {
      v36 = *(a2 + 136);
    }

    else
    {
      v36 = &off_2769E50;
    }

    sub_12D4084(v33, v36);
    if ((v24 & 8) == 0)
    {
LABEL_18:
      if ((v24 & 0x10) == 0)
      {
LABEL_20:
        *(a1 + 16) |= v24;
        goto LABEL_21;
      }

LABEL_19:
      *(a1 + 152) = *(a2 + 152);
      goto LABEL_20;
    }

LABEL_44:
    *(a1 + 16) |= 8u;
    v37 = *(a1 + 144);
    if (!v37)
    {
      v38 = *(a1 + 8);
      v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
      if (v38)
      {
        v39 = *v39;
      }

      v37 = sub_12E26AC(v39);
      *(a1 + 144) = v37;
    }

    if (*(a2 + 144))
    {
      v40 = *(a2 + 144);
    }

    else
    {
      v40 = &off_276A228;
    }

    sub_12D433C(v37, v40);
    if ((v24 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_21:
  v25 = *(a2 + 8);
  if (v25)
  {

    sub_1957EF4((a1 + 8), (v25 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_12D2D30(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_12E7CF8((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *(a2 + 64);
    v11 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_12E7D74((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
    v12 = *(a1 + 56) + v9;
    *(a1 + 56) = v12;
    v13 = *(a1 + 64);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 80);
  if (v14)
  {
    v15 = *(a2 + 88);
    v16 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_12E7E00((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
    v17 = *(a1 + 80) + v14;
    *(a1 + 80) = v17;
    v18 = *(a1 + 88);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 104);
  if (v19)
  {
    v20 = *(a2 + 112);
    v21 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_12E7E8C((a1 + 96), v21, (v20 + 8), v19, **(a1 + 112) - *(a1 + 104));
    v22 = *(a1 + 104) + v19;
    *(a1 + 104) = v22;
    v23 = *(a1 + 112);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 16);
  if ((v24 & 0xF) != 0)
  {
    if (v24)
    {
      *(a1 + 16) |= 1u;
      v26 = *(a1 + 120);
      if (!v26)
      {
        v27 = *(a1 + 8);
        v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
        if (v27)
        {
          v28 = *v28;
        }

        v26 = sub_12E26AC(v28);
        *(a1 + 120) = v26;
      }

      if (*(a2 + 120))
      {
        v29 = *(a2 + 120);
      }

      else
      {
        v29 = &off_276A228;
      }

      sub_12D433C(v26, v29);
      if ((v24 & 2) == 0)
      {
LABEL_16:
        if ((v24 & 4) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_40;
      }
    }

    else if ((v24 & 2) == 0)
    {
      goto LABEL_16;
    }

    *(a1 + 16) |= 2u;
    v30 = *(a1 + 128);
    if (!v30)
    {
      v31 = *(a1 + 8);
      v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
      if (v31)
      {
        v32 = *v32;
      }

      v30 = sub_12E276C(v32);
      *(a1 + 128) = v30;
    }

    if (*(a2 + 128))
    {
      v33 = *(a2 + 128);
    }

    else
    {
      v33 = &off_276A2C0;
    }

    sub_12D67F8(v30, v33);
    if ((v24 & 4) == 0)
    {
LABEL_17:
      if ((v24 & 8) == 0)
      {
LABEL_19:
        *(a1 + 16) |= v24;
        goto LABEL_20;
      }

LABEL_18:
      *(a1 + 144) = *(a2 + 144);
      goto LABEL_19;
    }

LABEL_40:
    *(a1 + 16) |= 4u;
    v34 = *(a1 + 136);
    if (!v34)
    {
      v35 = *(a1 + 8);
      v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
      if (v35)
      {
        v36 = *v36;
      }

      v34 = sub_12E27E8(v36);
      *(a1 + 136) = v34;
    }

    if (*(a2 + 136))
    {
      v37 = *(a2 + 136);
    }

    else
    {
      v37 = &off_276A2E0;
    }

    sub_12D6830(v34, v37);
    if ((v24 & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_20:
  v25 = *(a2 + 8);
  if (v25)
  {

    sub_1957EF4((a1 + 8), (v25 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_12D3018(uint64_t a1)
{
  result = sub_12D4584(a1 + 72);
  if (result)
  {
    result = sub_12D45E0(a1 + 96);
    if (result)
    {
      v3 = *(a1 + 16);
      if ((v3 & 2) != 0)
      {
        result = sub_16E4B4C(*(a1 + 128));
        if (!result)
        {
          return result;
        }

        v3 = *(a1 + 16);
      }

      if ((v3 & 4) != 0)
      {
        result = sub_12D463C(*(a1 + 136));
        if (!result)
        {
          return result;
        }

        v3 = *(a1 + 16);
      }

      if ((v3 & 8) == 0)
      {
        return 1;
      }

      result = sub_12E0F9C(*(a1 + 144) + 24);
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_12D3094(uint64_t a1)
{
  result = sub_12D4584(a1 + 72);
  if (result)
  {
    result = sub_12D45E0(a1 + 96);
    if (result)
    {
      if ((*(a1 + 16) & 1) == 0)
      {
        return 1;
      }

      result = sub_12E0F9C(*(a1 + 120) + 24);
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_12D30F8(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_14;
    }
  }

  else if (v4)
  {
    goto LABEL_14;
  }

  v5 = (a1 + 120);
  if (*(a1 + 120) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_2769DB0)
  {
    if (*(a1 + 128))
    {
      sub_16E8374();
      operator delete();
    }

    v6 = *(a1 + 136);
    if (v6)
    {
      sub_12D46FC(v6);
      operator delete();
    }

    v7 = *(a1 + 144);
    if (v7)
    {
      sub_12E0444(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_14:
  sub_12E78D8((a1 + 96));
  sub_12E7854((a1 + 72));
  sub_12E77D0((a1 + 48));
  sub_12E774C((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12D3234(uint64_t a1)
{
  sub_12D30F8(a1);

  operator delete();
}

unsigned __int8 *sub_12D326C(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (*(result + 5) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16E4E44(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  v5 = *(v1 + 14);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 8) + 8);
    do
    {
      v7 = *v6++;
      result = sub_16E4E44(v7);
      --v5;
    }

    while (v5);
    *(v1 + 14) = 0;
  }

  v8 = *(v1 + 20);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 11) + 8);
    do
    {
      v10 = *v9++;
      result = sub_16E4E44(v10);
      --v8;
    }

    while (v8);
    *(v1 + 20) = 0;
  }

  *(v1 + 24) = 0;
  *(v1 + 28) = 0;
  *(v1 + 32) = 0;
  if ((v1[16] & 0x3F) != 0)
  {
    *(v1 + 18) = 0;
    *(v1 + 19) = 0;
    *(v1 + 20) = 0;
  }

  v12 = v1[8];
  v11 = v1 + 8;
  *(v11 + 2) = 0;
  if (v12)
  {

    return sub_1957EA8(v11);
  }

  return result;
}

uint64_t sub_12D335C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      sub_12DD6CC(v4);
      --v2;
    }

    while (v2);
    *(a1 + 32) = 0;
  }

  v5 = *(a1 + 56);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 64) + 8);
    do
    {
      v7 = *v6++;
      sub_12DC22C(v7);
      --v5;
    }

    while (v5);
    *(a1 + 56) = 0;
  }

  sub_12A41D0(a1 + 72);
  result = sub_12E5FA4(a1 + 96);
  v9 = *(a1 + 128);
  if (v9 >= 1)
  {
    v10 = (*(a1 + 136) + 8);
    do
    {
      v11 = *v10++;
      result = sub_12DFD34(v11);
      --v9;
    }

    while (v9);
    *(a1 + 128) = 0;
  }

  v13 = *(a1 + 8);
  v12 = a1 + 8;
  *(v12 + 136) = 0;
  *(v12 + 8) = 0;
  if (v13)
  {

    return sub_1957EA8(v12);
  }

  return result;
}

uint64_t sub_12D3440(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v58 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v58, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v58 + 1);
    v8 = **v58;
    if (**v58 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v58, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v58 + 2);
      }
    }

    *v58 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 4)
    {
      break;
    }

    if (v8 >> 3 > 2)
    {
      if (v11 == 3)
      {
        if (v8 != 26)
        {
          goto LABEL_89;
        }

        *(a1 + 16) |= 2u;
        v35 = *(a1 + 128);
        if (!v35)
        {
          v36 = *(a1 + 8);
          v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
          if (v36)
          {
            v37 = *v37;
          }

          v35 = sub_16F5BD8(v37);
          *(a1 + 128) = v35;
          v7 = *v58;
        }

        v22 = sub_21F7188(a3, v35, v7);
      }

      else
      {
        if (v11 != 4 || v8 != 34)
        {
          goto LABEL_89;
        }

        *(a1 + 16) |= 4u;
        v23 = *(a1 + 136);
        if (!v23)
        {
          v24 = *(a1 + 8);
          v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
          if (v24)
          {
            v25 = *v25;
          }

          v23 = sub_12E1B0C(v25);
          *(a1 + 136) = v23;
          v7 = *v58;
        }

        v22 = sub_21F7B18(a3, v23, v7);
      }

      goto LABEL_96;
    }

    if (v11 != 1)
    {
      if (v11 != 2 || v8 != 18)
      {
        goto LABEL_89;
      }

      *(a1 + 16) |= 1u;
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v21 = sub_194DB04((a1 + 120), v20);
      v22 = sub_1958890(v21, *v58, a3);
LABEL_96:
      *v58 = v22;
      if (!v22)
      {
        goto LABEL_104;
      }

      goto LABEL_97;
    }

    if (v8 != 8)
    {
      goto LABEL_89;
    }

    v5 |= 0x10u;
    v33 = (v7 + 1);
    v32 = *v7;
    if ((v32 & 0x8000000000000000) == 0)
    {
      goto LABEL_56;
    }

    v34 = *v33;
    v32 = (v34 << 7) + v32 - 128;
    if ((v34 & 0x80000000) == 0)
    {
      v33 = (v7 + 2);
LABEL_56:
      *v58 = v33;
      *(a1 + 152) = v32 != 0;
      goto LABEL_97;
    }

    v56 = sub_19587DC(v7, v32);
    *v58 = v56;
    *(a1 + 152) = v57 != 0;
    if (!v56)
    {
      goto LABEL_104;
    }

LABEL_97:
    if (sub_195ADC0(a3, v58, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 6)
  {
    if (v11 == 5)
    {
      if (v8 == 42)
      {
        v44 = v7 - 1;
        while (1)
        {
          v45 = v44 + 1;
          *v58 = v44 + 1;
          v46 = *(a1 + 40);
          if (v46 && (v47 = *(a1 + 32), v47 < *v46))
          {
            *(a1 + 32) = v47 + 1;
            v48 = *&v46[2 * v47 + 2];
          }

          else
          {
            v49 = sub_12E1CB4(*(a1 + 24));
            v48 = sub_19593CC(a1 + 24, v49);
            v45 = *v58;
          }

          v44 = sub_21F7BA8(a3, v48, v45);
          *v58 = v44;
          if (!v44)
          {
            goto LABEL_104;
          }

          if (*a3 <= v44 || *v44 != 42)
          {
            goto LABEL_97;
          }
        }
      }
    }

    else if (v11 == 6 && v8 == 50)
    {
      v26 = v7 - 1;
      while (1)
      {
        v27 = v26 + 1;
        *v58 = v26 + 1;
        v28 = *(a1 + 64);
        if (v28 && (v29 = *(a1 + 56), v29 < *v28))
        {
          *(a1 + 56) = v29 + 1;
          v30 = *&v28[2 * v29 + 2];
        }

        else
        {
          v31 = sub_12E1D3C(*(a1 + 48));
          v30 = sub_19593CC(a1 + 48, v31);
          v27 = *v58;
        }

        v26 = sub_21F7C38(a3, v30, v27);
        *v58 = v26;
        if (!v26)
        {
          goto LABEL_104;
        }

        if (*a3 <= v26 || *v26 != 50)
        {
          goto LABEL_97;
        }
      }
    }
  }

  else if (v11 == 7)
  {
    if (v8 == 58)
    {
      v38 = (v7 - 1);
      while (1)
      {
        v39 = (v38 + 1);
        *v58 = v38 + 1;
        v40 = *(a1 + 88);
        if (v40 && (v41 = *(a1 + 80), v41 < *v40))
        {
          *(a1 + 80) = v41 + 1;
          v42 = *&v40[2 * v41 + 2];
        }

        else
        {
          v43 = sub_12E1DC4(*(a1 + 72));
          v42 = sub_19593CC(a1 + 72, v43);
          v39 = *v58;
        }

        v38 = sub_21F7CC8(a3, v42, v39);
        *v58 = v38;
        if (!v38)
        {
          goto LABEL_104;
        }

        if (*a3 <= v38 || *v38 != 58)
        {
          goto LABEL_97;
        }
      }
    }
  }

  else
  {
    if (v11 == 8)
    {
      if (v8 != 66)
      {
        goto LABEL_89;
      }

      *(a1 + 16) |= 8u;
      v50 = *(a1 + 144);
      if (!v50)
      {
        v51 = *(a1 + 8);
        v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
        if (v51)
        {
          v52 = *v52;
        }

        v50 = sub_12E26AC(v52);
        *(a1 + 144) = v50;
        v7 = *v58;
      }

      v22 = sub_21F7D58(a3, v50, v7);
      goto LABEL_96;
    }

    if (v11 == 9 && v8 == 74)
    {
      v12 = v7 - 1;
      while (1)
      {
        v13 = v12 + 1;
        *v58 = v12 + 1;
        v14 = *(a1 + 112);
        if (v14 && (v15 = *(a1 + 104), v15 < *v14))
        {
          *(a1 + 104) = v15 + 1;
          v16 = *&v14[2 * v15 + 2];
        }

        else
        {
          v17 = sub_12E2214(*(a1 + 96));
          v16 = sub_19593CC(a1 + 96, v17);
          v13 = *v58;
        }

        v12 = sub_21F7DE8(a3, v16, v13);
        *v58 = v12;
        if (!v12)
        {
          goto LABEL_104;
        }

        if (*a3 <= v12 || *v12 != 74)
        {
          goto LABEL_97;
        }
      }
    }
  }

LABEL_89:
  if (v8)
  {
    v53 = (v8 & 7) == 4;
  }

  else
  {
    v53 = 1;
  }

  if (!v53)
  {
    v54 = *(a1 + 8);
    if (v54)
    {
      v55 = (v54 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v55 = sub_11F1920((a1 + 8));
      v7 = *v58;
    }

    v22 = sub_1952690(v8, v55, v7, a3);
    goto LABEL_96;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_104:
  *v58 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v58;
}

char *sub_12D398C(uint64_t a1, unint64_t __dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 152);
    *v4 = 8;
    v4[1] = v7;
    v4 += 2;
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_16;
  }

LABEL_10:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 128);
  *v4 = 26;
  v9 = *(v8 + 44);
  v4[1] = v9;
  if (v9 > 0x7F)
  {
    v10 = sub_19575D0(v9, v4 + 1);
  }

  else
  {
    v10 = v4 + 2;
  }

  v4 = sub_16E886C(v8, v10, a3);
  if ((v6 & 4) != 0)
  {
LABEL_16:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v11 = *(a1 + 136);
    *v4 = 34;
    v12 = *(v11 + 20);
    v4[1] = v12;
    if (v12 > 0x7F)
    {
      v13 = sub_19575D0(v12, v4 + 1);
    }

    else
    {
      v13 = v4 + 2;
    }

    v4 = sub_12D4FEC(v11, v13, a3);
  }

LABEL_22:
  v14 = *(a1 + 32);
  if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v16 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 42;
      v17 = *(v16 + 20);
      v4[1] = v17;
      if (v17 > 0x7F)
      {
        v18 = sub_19575D0(v17, v4 + 1);
      }

      else
      {
        v18 = v4 + 2;
      }

      v4 = sub_12D6BD4(v16, v18, a3);
    }
  }

  v19 = *(a1 + 56);
  if (v19)
  {
    for (j = 0; j != v19; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v21 = *(*(a1 + 64) + 8 * j + 8);
      *v4 = 50;
      v22 = *(v21 + 20);
      v4[1] = v22;
      if (v22 > 0x7F)
      {
        v23 = sub_19575D0(v22, v4 + 1);
      }

      else
      {
        v23 = v4 + 2;
      }

      v4 = sub_12D71D8(v21, v23, a3);
    }
  }

  v24 = *(a1 + 80);
  if (v24)
  {
    for (k = 0; k != v24; ++k)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v26 = *(*(a1 + 88) + 8 * k + 8);
      *v4 = 58;
      v27 = *(v26 + 20);
      v4[1] = v27;
      if (v27 > 0x7F)
      {
        v28 = sub_19575D0(v27, v4 + 1);
      }

      else
      {
        v28 = v4 + 2;
      }

      v4 = sub_12D7D30(v26, v28, a3);
    }
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v29 = *(a1 + 144);
    *v4 = 66;
    v30 = *(v29 + 20);
    v4[1] = v30;
    if (v30 > 0x7F)
    {
      v31 = sub_19575D0(v30, v4 + 1);
    }

    else
    {
      v31 = v4 + 2;
    }

    v4 = sub_12E0A04(v29, v31, a3);
  }

  v32 = *(a1 + 104);
  if (v32)
  {
    for (m = 0; m != v32; ++m)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v34 = *(*(a1 + 112) + 8 * m + 8);
      *v4 = 74;
      v35 = *(v34 + 20);
      v4[1] = v35;
      if (v35 > 0x7F)
      {
        v36 = sub_19575D0(v35, v4 + 1);
      }

      else
      {
        v36 = v4 + 2;
      }

      v4 = sub_12DBC30(v34, v36, a3);
    }
  }

  v37 = *(a1 + 8);
  if ((v37 & 1) == 0)
  {
    return v4;
  }

  v39 = v37 & 0xFFFFFFFFFFFFFFFCLL;
  v40 = *(v39 + 31);
  if (v40 < 0)
  {
    v41 = *(v39 + 8);
    v40 = *(v39 + 16);
  }

  else
  {
    v41 = (v39 + 8);
  }

  if ((*a3 - v4) >= v40)
  {
    v42 = v40;
    memcpy(v4, v41, v40);
    v4 += v42;
    return v4;
  }

  return sub_1957130(a3, v41, v40, v4);
}

uint64_t sub_12D3DF0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = sub_12D6CD4(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 56);
  v9 = v2 + v8;
  v10 = *(a1 + 64);
  if (v10)
  {
    v11 = (v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = 8 * v8;
    do
    {
      v13 = *v11++;
      v14 = sub_12D7380(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 80);
  v16 = v9 + v15;
  v17 = *(a1 + 88);
  if (v17)
  {
    v18 = (v17 + 8);
  }

  else
  {
    v18 = 0;
  }

  if (v15)
  {
    v19 = 8 * v15;
    do
    {
      v20 = *v18++;
      v21 = sub_12D808C(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 104);
  v23 = v16 + v22;
  v24 = *(a1 + 112);
  if (v24)
  {
    v25 = (v24 + 8);
  }

  else
  {
    v25 = 0;
  }

  if (v22)
  {
    v26 = 8 * v22;
    do
    {
      v27 = *v25++;
      v28 = sub_12DBE4C(v27);
      v23 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6);
      v26 -= 8;
    }

    while (v26);
  }

  v29 = *(a1 + 16);
  if ((v29 & 0x1F) != 0)
  {
    if (v29)
    {
      v33 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
      v34 = *(v33 + 23);
      v35 = *(v33 + 8);
      if ((v34 & 0x80u) == 0)
      {
        v35 = v34;
      }

      v23 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v29 & 2) == 0)
      {
LABEL_30:
        if ((v29 & 4) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_40;
      }
    }

    else if ((v29 & 2) == 0)
    {
      goto LABEL_30;
    }

    v36 = sub_16E8DA4(*(a1 + 128));
    v23 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v29 & 4) == 0)
    {
LABEL_31:
      if ((v29 & 8) == 0)
      {
LABEL_33:
        v23 += (v29 >> 3) & 2;
        goto LABEL_34;
      }

LABEL_32:
      v30 = sub_12E0DA4(*(a1 + 144));
      v23 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
      goto LABEL_33;
    }

LABEL_40:
    v37 = sub_12D576C(*(a1 + 136));
    v23 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v29 & 8) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_34:
  v31 = *(a1 + 8);
  if (v31)
  {
    v38 = v31 & 0xFFFFFFFFFFFFFFFCLL;
    v39 = *((v31 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v39 < 0)
    {
      v39 = *(v38 + 16);
    }

    v23 += v39;
  }

  *(a1 + 20) = v23;
  return v23;
}

void sub_12D4084(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_11F1A54((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *(a2 + 64);
    v11 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_11F1A54((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
    v12 = *(a1 + 56) + v9;
    *(a1 + 56) = v12;
    v13 = *(a1 + 64);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 80);
  if (v14)
  {
    v15 = *(a2 + 88);
    v16 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_11F1A54((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
    v17 = *(a1 + 80) + v14;
    *(a1 + 80) = v17;
    v18 = *(a1 + 88);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 96);
  if (v19)
  {
    v20 = *(a1 + 96);
    sub_1959094((a1 + 96), v20 + v19);
    v21 = *(a1 + 104);
    *(a1 + 96) += *(a2 + 96);
    memcpy((v21 + 8 * v20), *(a2 + 104), 8 * *(a2 + 96));
  }

  v22 = *(a2 + 112);
  if (v22)
  {
    v23 = *(a1 + 112);
    sub_1959094((a1 + 112), v23 + v22);
    v24 = *(a1 + 120);
    *(a1 + 112) += *(a2 + 112);
    memcpy((v24 + 8 * v23), *(a2 + 120), 8 * *(a2 + 112));
  }

  v25 = *(a2 + 128);
  if (v25)
  {
    v26 = *(a1 + 128);
    sub_1959094((a1 + 128), v26 + v25);
    v27 = *(a1 + 136);
    *(a1 + 128) += *(a2 + 128);
    memcpy((v27 + 8 * v26), *(a2 + 136), 8 * *(a2 + 128));
  }

  v28 = *(a2 + 16);
  if ((v28 & 0x3F) != 0)
  {
    if (v28)
    {
      *(a1 + 144) = *(a2 + 144);
      if ((v28 & 2) == 0)
      {
LABEL_19:
        if ((v28 & 4) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_31;
      }
    }

    else if ((v28 & 2) == 0)
    {
      goto LABEL_19;
    }

    *(a1 + 148) = *(a2 + 148);
    if ((v28 & 4) == 0)
    {
LABEL_20:
      if ((v28 & 8) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_32;
    }

LABEL_31:
    *(a1 + 152) = *(a2 + 152);
    if ((v28 & 8) == 0)
    {
LABEL_21:
      if ((v28 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_33;
    }

LABEL_32:
    *(a1 + 156) = *(a2 + 156);
    if ((v28 & 0x10) == 0)
    {
LABEL_22:
      if ((v28 & 0x20) == 0)
      {
LABEL_24:
        *(a1 + 16) |= v28;
        goto LABEL_25;
      }

LABEL_23:
      *(a1 + 164) = *(a2 + 164);
      goto LABEL_24;
    }

LABEL_33:
    *(a1 + 160) = *(a2 + 160);
    if ((v28 & 0x20) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_25:
  v29 = *(a2 + 8);
  if (v29)
  {

    sub_1957EF4((a1 + 8), (v29 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_12D433C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_12E81D4((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *(a2 + 64);
    v11 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_12E80BC((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
    v12 = *(a1 + 56) + v9;
    *(a1 + 56) = v12;
    v13 = *(a1 + 64);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 80);
  if (v14)
  {
    v15 = *(a2 + 88);
    v16 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_1201B48(a1 + 72, v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
    v17 = *(a1 + 80) + v14;
    *(a1 + 80) = v17;
    v18 = *(a1 + 88);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 104);
  if (v19)
  {
    v20 = *(a2 + 112);
    v21 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_12E8260((a1 + 96), v21, (v20 + 8), v19, **(a1 + 112) - *(a1 + 104));
    v22 = *(a1 + 104) + v19;
    *(a1 + 104) = v22;
    v23 = *(a1 + 112);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 128);
  if (v24)
  {
    v25 = *(a2 + 136);
    v26 = sub_19592E8(a1 + 120, *(a2 + 128));
    sub_12E7260((a1 + 120), v26, (v25 + 8), v24, **(a1 + 136) - *(a1 + 128));
    v27 = *(a1 + 128) + v24;
    *(a1 + 128) = v27;
    v28 = *(a1 + 136);
    if (*v28 < v27)
    {
      *v28 = v27;
    }
  }

  if (*(a2 + 16))
  {
    v29 = *(a2 + 144);
    *(a1 + 16) |= 1u;
    *(a1 + 144) = v29;
  }

  v30 = *(a2 + 8);
  if (v30)
  {

    sub_1957EF4((a1 + 8), (v30 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_12D4584(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  while (1)
  {
    v3 = *(*(a1 + 16) + 8 * v1);
    if (*(v3 + 16))
    {
      result = sub_149EC98(*(v3 + 40));
      if (!result)
      {
        break;
      }
    }

    if (v1-- <= 1)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_12D45E0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  while (1)
  {
    v3 = *(*(a1 + 16) + 8 * v1);
    if ((*(v3 + 16) & 2) != 0)
    {
      result = sub_16E5370(*(v3 + 32));
      if (!result)
      {
        break;
      }
    }

    if (v1-- <= 1)
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_12D463C(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_16E5370(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v5 = *(a1 + 56);
  while (v5 >= 1)
  {
    v6 = v5 - 1;
    v7 = sub_16E5370(*(*(a1 + 64) + 8 * v5));
    v5 = v6;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *(a1 + 80);
  do
  {
    v8 = v10 < 1;
    if (v10 < 1)
    {
      break;
    }

    v11 = v10 - 1;
    v12 = sub_16E5370(*(*(a1 + 88) + 8 * v10));
    v10 = v11;
  }

  while ((v12 & 1) != 0);
  return v8;
}

void *sub_12D46FC(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956ABC((a1 + 16));
  sub_1956ABC((a1 + 14));
  sub_1956ABC((a1 + 12));
  sub_12E6204(a1 + 9);
  sub_12E6204(a1 + 6);
  sub_12E6204(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12D47AC(void *a1)
{
  sub_12D46FC(a1);

  operator delete();
}

char *sub_12D47E4(uint64_t a1, char *a2, int32x2_t *a3)
{
  v75 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v75, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v75 + 1;
    v8 = *v75;
    if (*v75 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v75, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v75 + 2;
      }
    }

    v75 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 6)
    {
      if (v8 >> 3 <= 0xC)
      {
        if (v11 == 7)
        {
          if (v8 == 58)
          {
            v32 = v7 - 1;
            while (1)
            {
              v33 = (v32 + 1);
              v75 = v32 + 1;
              v34 = *(a1 + 40);
              if (v34 && (v35 = *(a1 + 32), v35 < *v34))
              {
                *(a1 + 32) = v35 + 1;
                v36 = *&v34[2 * v35 + 2];
              }

              else
              {
                v37 = sub_16F5828(*(a1 + 24));
                v36 = sub_19593CC(a1 + 24, v37);
                v33 = v75;
              }

              v32 = sub_21F4D60(a3, v36, v33);
              v75 = v32;
              if (!v32)
              {
                goto LABEL_162;
              }

              if (*a3 <= v32 || *v32 != 58)
              {
                goto LABEL_156;
              }
            }
          }
        }

        else if (v11 == 8)
        {
          if (v8 == 66)
          {
            v48 = v7 - 1;
            while (1)
            {
              v49 = (v48 + 1);
              v75 = v48 + 1;
              v50 = *(a1 + 64);
              if (v50 && (v51 = *(a1 + 56), v51 < *v50))
              {
                *(a1 + 56) = v51 + 1;
                v52 = *&v50[2 * v51 + 2];
              }

              else
              {
                v53 = sub_16F5828(*(a1 + 48));
                v52 = sub_19593CC(a1 + 48, v53);
                v49 = v75;
              }

              v48 = sub_21F4D60(a3, v52, v49);
              v75 = v48;
              if (!v48)
              {
                goto LABEL_162;
              }

              if (*a3 <= v48 || *v48 != 66)
              {
                goto LABEL_156;
              }
            }
          }
        }

        else if (v11 == 9 && v8 == 74)
        {
          v15 = v7 - 1;
          while (1)
          {
            v16 = (v15 + 1);
            v75 = v15 + 1;
            v17 = *(a1 + 88);
            if (v17 && (v18 = *(a1 + 80), v18 < *v17))
            {
              *(a1 + 80) = v18 + 1;
              v19 = *&v17[2 * v18 + 2];
            }

            else
            {
              v20 = sub_16F5828(*(a1 + 72));
              v19 = sub_19593CC(a1 + 72, v20);
              v16 = v75;
            }

            v15 = sub_21F4D60(a3, v19, v16);
            v75 = v15;
            if (!v15)
            {
              goto LABEL_162;
            }

            if (*a3 <= v15 || *v15 != 74)
            {
              goto LABEL_156;
            }
          }
        }

        goto LABEL_148;
      }

      switch(v11)
      {
        case 0xDu:
          if (v8 == 104)
          {
            v40 = v7 - 1;
            while (1)
            {
              v75 = v40 + 1;
              v41 = v40[1];
              if ((v41 & 0x8000000000000000) != 0)
              {
                v41 = (v40[2] << 7) + v41 - 128;
                if (v40[2] < 0)
                {
                  v40 = sub_19587DC((v40 + 1), v41);
                }

                else
                {
                  v40 += 3;
                }
              }

              else
              {
                v40 += 2;
              }

              v75 = v40;
              v42 = -(v41 & 1) ^ (v41 >> 1);
              v43 = *(a1 + 96);
              if (v43 == *(a1 + 100))
              {
                v44 = v43 + 1;
                sub_1959094((a1 + 96), v43 + 1);
                *(*(a1 + 104) + 8 * v43) = v42;
                v40 = v75;
              }

              else
              {
                *(*(a1 + 104) + 8 * v43) = v42;
                v44 = v43 + 1;
              }

              *(a1 + 96) = v44;
              if (!v40)
              {
                goto LABEL_162;
              }

              if (*a3 <= v40 || *v40 != 104)
              {
                goto LABEL_156;
              }
            }
          }

          if (v8 != 106)
          {
            goto LABEL_148;
          }

          v70 = (a1 + 96);
          break;
        case 0xEu:
          if (v8 == 112)
          {
            v58 = v7 - 1;
            while (1)
            {
              v75 = v58 + 1;
              v59 = v58[1];
              if ((v59 & 0x8000000000000000) != 0)
              {
                v59 = (v58[2] << 7) + v59 - 128;
                if (v58[2] < 0)
                {
                  v58 = sub_19587DC((v58 + 1), v59);
                }

                else
                {
                  v58 += 3;
                }
              }

              else
              {
                v58 += 2;
              }

              v75 = v58;
              v60 = -(v59 & 1) ^ (v59 >> 1);
              v61 = *(a1 + 112);
              if (v61 == *(a1 + 116))
              {
                v62 = v61 + 1;
                sub_1959094((a1 + 112), v61 + 1);
                *(*(a1 + 120) + 8 * v61) = v60;
                v58 = v75;
              }

              else
              {
                *(*(a1 + 120) + 8 * v61) = v60;
                v62 = v61 + 1;
              }

              *(a1 + 112) = v62;
              if (!v58)
              {
                goto LABEL_162;
              }

              if (*a3 <= v58 || *v58 != 112)
              {
                goto LABEL_156;
              }
            }
          }

          if (v8 != 114)
          {
            goto LABEL_148;
          }

          v70 = (a1 + 112);
          break;
        case 0xFu:
          if (v8 == 120)
          {
            v24 = v7 - 1;
            while (1)
            {
              v75 = v24 + 1;
              v25 = v24[1];
              if ((v25 & 0x8000000000000000) != 0)
              {
                v25 = (v24[2] << 7) + v25 - 128;
                if (v24[2] < 0)
                {
                  v24 = sub_19587DC((v24 + 1), v25);
                }

                else
                {
                  v24 += 3;
                }
              }

              else
              {
                v24 += 2;
              }

              v75 = v24;
              v26 = -(v25 & 1) ^ (v25 >> 1);
              v27 = *(a1 + 128);
              if (v27 == *(a1 + 132))
              {
                v28 = v27 + 1;
                sub_1959094((a1 + 128), v27 + 1);
                *(*(a1 + 136) + 8 * v27) = v26;
                v24 = v75;
              }

              else
              {
                *(*(a1 + 136) + 8 * v27) = v26;
                v28 = v27 + 1;
              }

              *(a1 + 128) = v28;
              if (!v24)
              {
                goto LABEL_162;
              }

              if (*a3 <= v24 || *v24 != 120)
              {
                goto LABEL_156;
              }
            }
          }

          if (v8 != 122)
          {
            goto LABEL_148;
          }

          v70 = (a1 + 128);
          break;
        default:
          goto LABEL_148;
      }

      v71 = sub_1958958(v70, v7, a3);
LABEL_155:
      v75 = v71;
      if (!v71)
      {
        goto LABEL_162;
      }

      goto LABEL_156;
    }

    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_148;
      }

      v5 |= 1u;
      v30 = v7 + 1;
      LODWORD(v29) = *v7;
      if ((v29 & 0x80) == 0)
      {
        goto LABEL_62;
      }

      v31 = *v30;
      v29 = v29 + (v31 << 7) - 128;
      if ((v31 & 0x80000000) == 0)
      {
        v30 = v7 + 2;
LABEL_62:
        v75 = v30;
        *(a1 + 144) = v29;
        goto LABEL_156;
      }

      v65 = sub_19587DC(v7, v29);
      v75 = v65;
      *(a1 + 144) = v66;
      if (!v65)
      {
        goto LABEL_162;
      }
    }

    else if (v11 == 2)
    {
      if (v8 != 16)
      {
        goto LABEL_148;
      }

      v5 |= 2u;
      v46 = v7 + 1;
      LODWORD(v45) = *v7;
      if ((v45 & 0x80) == 0)
      {
        goto LABEL_95;
      }

      v47 = *v46;
      v45 = v45 + (v47 << 7) - 128;
      if ((v47 & 0x80000000) == 0)
      {
        v46 = v7 + 2;
LABEL_95:
        v75 = v46;
        *(a1 + 148) = v45;
        goto LABEL_156;
      }

      v67 = sub_19587DC(v7, v45);
      v75 = v67;
      *(a1 + 148) = v68;
      if (!v67)
      {
        goto LABEL_162;
      }
    }

    else
    {
      if (v11 != 3 || v8 != 24)
      {
        goto LABEL_148;
      }

      v13 = v7 + 1;
      v14 = *v7;
      if (v14 < 0)
      {
        v14 = (*v13 << 7) + v14 - 128;
        if (*v13 < 0)
        {
          v13 = sub_19587DC(v7, v14);
        }

        else
        {
          v13 = v7 + 2;
        }
      }

      v5 |= 4u;
      v75 = v13;
      *(a1 + 152) = -(v14 & 1) ^ (v14 >> 1);
      if (!v13)
      {
        goto LABEL_162;
      }
    }

LABEL_156:
    if (sub_195ADC0(a3, &v75, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4)
  {
    if (v8 != 32)
    {
      goto LABEL_148;
    }

    v38 = v7 + 1;
    v39 = *v7;
    if (v39 < 0)
    {
      v39 = (*v38 << 7) + v39 - 128;
      if (*v38 < 0)
      {
        v38 = sub_19587DC(v7, v39);
      }

      else
      {
        v38 = v7 + 2;
      }
    }

    v5 |= 8u;
    v75 = v38;
    *(a1 + 156) = -(v39 & 1) ^ (v39 >> 1);
    if (!v38)
    {
      goto LABEL_162;
    }

    goto LABEL_156;
  }

  if (v11 != 5)
  {
    if (v11 != 6 || v8 != 48)
    {
      goto LABEL_148;
    }

    v5 |= 0x20u;
    v22 = v7 + 1;
    LODWORD(v21) = *v7;
    if ((v21 & 0x80) == 0)
    {
      goto LABEL_40;
    }

    v23 = *v22;
    v21 = v21 + (v23 << 7) - 128;
    if ((v23 & 0x80000000) == 0)
    {
      v22 = v7 + 2;
LABEL_40:
      v75 = v22;
      *(a1 + 164) = v21;
      goto LABEL_156;
    }

    v63 = sub_19587DC(v7, v21);
    v75 = v63;
    *(a1 + 164) = v64;
    if (!v63)
    {
      goto LABEL_162;
    }

    goto LABEL_156;
  }

  if (v8 == 40)
  {
    v54 = v7 + 1;
    v55 = *v7;
    if ((v55 & 0x8000000000000000) == 0)
    {
      goto LABEL_110;
    }

    v56 = *v54;
    v57 = (v56 << 7) + v55;
    LODWORD(v55) = v57 - 128;
    if (v56 < 0)
    {
      v75 = sub_19587DC(v7, (v57 - 128));
      if (!v75)
      {
        goto LABEL_162;
      }

      LODWORD(v55) = v69;
    }

    else
    {
      v54 = v7 + 2;
LABEL_110:
      v75 = v54;
    }

    if (sub_1454008(v55))
    {
      *(a1 + 16) |= 0x10u;
      *(a1 + 160) = v55;
    }

    else
    {
      sub_12E85B8();
    }

    goto LABEL_156;
  }

LABEL_148:
  if (v8)
  {
    v72 = (v8 & 7) == 4;
  }

  else
  {
    v72 = 1;
  }

  if (!v72)
  {
    v73 = *(a1 + 8);
    if (v73)
    {
      v74 = (v73 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v74 = sub_11F1920((a1 + 8));
      v7 = v75;
    }

    v71 = sub_1952690(v8, v74, v7, a3);
    goto LABEL_155;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_162:
  v75 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v75;
}

char *sub_12D4FEC(uint64_t a1, char *a2, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 144);
    *a2 = 8;
    a2[1] = v7;
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v8 = v7 >> 7;
      a2[2] = v7 >> 7;
      v6 = a2 + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = a2[2];
        do
        {
          *(v6 - 1) = v9 | 0x80;
          v9 = v8 >> 7;
          *v6++ = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }
    }

    else
    {
      v6 = a2 + 2;
    }
  }

  else
  {
    v6 = a2;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 148);
    *v6 = 16;
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v6[1] = v12 | 0x80;
      v13 = v12 >> 7;
      v6[2] = v12 >> 7;
      v11 = v6 + 3;
      if (v12 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v11 - 1) = v6 | 0x80;
          v6 = (v13 >> 7);
          *v11++ = v13 >> 7;
          v14 = v13 >> 14;
          v13 >>= 7;
        }

        while (v14);
      }
    }

    else
    {
      v11 = v6 + 2;
    }
  }

  else
  {
    v11 = v6;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 152);
    *v11 = 24;
    v17 = (2 * v16) ^ (v16 >> 31);
    v11[1] = (2 * v16) ^ (v16 >> 31);
    if (v17 > 0x7F)
    {
      v11[1] = v17 | 0x80;
      v18 = v17 >> 7;
      v11[2] = v17 >> 7;
      v15 = v11 + 3;
      if (v17 >= 0x4000)
      {
        LOBYTE(v11) = v11[2];
        do
        {
          *(v15 - 1) = v11 | 0x80;
          LODWORD(v11) = v18 >> 7;
          *v15++ = v18 >> 7;
          v19 = v18 >> 14;
          v18 >>= 7;
        }

        while (v19);
      }
    }

    else
    {
      v15 = v11 + 2;
    }
  }

  else
  {
    v15 = v11;
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v21 = *(a1 + 156);
    *v15 = 32;
    v22 = (2 * v21) ^ (v21 >> 31);
    v15[1] = (2 * v21) ^ (v21 >> 31);
    if (v22 > 0x7F)
    {
      v15[1] = v22 | 0x80;
      v23 = v22 >> 7;
      v15[2] = v22 >> 7;
      v20 = v15 + 3;
      if (v22 >= 0x4000)
      {
        LOBYTE(v15) = v15[2];
        do
        {
          *(v20 - 1) = v15 | 0x80;
          LODWORD(v15) = v23 >> 7;
          *v20++ = v23 >> 7;
          v24 = v23 >> 14;
          v23 >>= 7;
        }

        while (v24);
      }
    }

    else
    {
      v20 = v15 + 2;
    }
  }

  else
  {
    v20 = v15;
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v20)
    {
      v20 = sub_225EB68(a3, v20);
    }

    v26 = *(a1 + 160);
    *v20 = 40;
    v20[1] = v26;
    if (v26 > 0x7F)
    {
      v20[1] = v26 | 0x80;
      v27 = v26 >> 7;
      v20[2] = v26 >> 7;
      v25 = v20 + 3;
      if (v26 >= 0x4000)
      {
        LOBYTE(v28) = v20[2];
        do
        {
          *(v25 - 1) = v28 | 0x80;
          v28 = v27 >> 7;
          *v25++ = v27 >> 7;
          v29 = v27 >> 14;
          v27 >>= 7;
        }

        while (v29);
      }
    }

    else
    {
      v25 = v20 + 2;
    }
  }

  else
  {
    v25 = v20;
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v25)
    {
      v25 = sub_225EB68(a3, v25);
    }

    v31 = *(a1 + 164);
    *v25 = 48;
    v25[1] = v31;
    if (v31 > 0x7F)
    {
      v25[1] = v31 | 0x80;
      v32 = v31 >> 7;
      v25[2] = v31 >> 7;
      v30 = v25 + 3;
      if (v31 >= 0x4000)
      {
        LOBYTE(v25) = v25[2];
        do
        {
          *(v30 - 1) = v25 | 0x80;
          v25 = (v32 >> 7);
          *v30++ = v32 >> 7;
          v33 = v32 >> 14;
          v32 >>= 7;
        }

        while (v33);
      }
    }

    else
    {
      v30 = v25 + 2;
    }
  }

  else
  {
    v30 = v25;
  }

  v34 = *(a1 + 32);
  if (v34)
  {
    for (i = 0; i != v34; ++i)
    {
      if (*a3 <= v30)
      {
        v30 = sub_225EB68(a3, v30);
      }

      v36 = *(*(a1 + 40) + 8 * i + 8);
      *v30 = 58;
      v37 = *(v36 + 44);
      v30[1] = v37;
      if (v37 > 0x7F)
      {
        v38 = sub_19575D0(v37, v30 + 1);
      }

      else
      {
        v38 = v30 + 2;
      }

      v30 = sub_16E5070(v36, v38, a3);
    }
  }

  v39 = *(a1 + 56);
  if (v39)
  {
    for (j = 0; j != v39; ++j)
    {
      if (*a3 <= v30)
      {
        v30 = sub_225EB68(a3, v30);
      }

      v41 = *(*(a1 + 64) + 8 * j + 8);
      *v30 = 66;
      v42 = *(v41 + 44);
      v30[1] = v42;
      if (v42 > 0x7F)
      {
        v43 = sub_19575D0(v42, v30 + 1);
      }

      else
      {
        v43 = v30 + 2;
      }

      v30 = sub_16E5070(v41, v43, a3);
    }
  }

  v44 = *(a1 + 80);
  if (v44)
  {
    for (k = 0; k != v44; ++k)
    {
      if (*a3 <= v30)
      {
        v30 = sub_225EB68(a3, v30);
      }

      v46 = *(*(a1 + 88) + 8 * k + 8);
      *v30 = 74;
      v47 = *(v46 + 44);
      v30[1] = v47;
      if (v47 > 0x7F)
      {
        v48 = sub_19575D0(v47, v30 + 1);
      }

      else
      {
        v48 = v30 + 2;
      }

      v30 = sub_16E5070(v46, v48, a3);
    }
  }

  v49 = *(a1 + 96);
  if (v49 < 1)
  {
    v53 = v30;
  }

  else
  {
    for (m = 0; m != v49; ++m)
    {
      if (*a3 <= v30)
      {
        v30 = sub_225EB68(a3, v30);
      }

      v51 = *(*(a1 + 104) + 8 * m);
      *v30 = 104;
      v52 = (2 * v51) ^ (v51 >> 63);
      v30[1] = v52;
      if (v52 > 0x7F)
      {
        v30[1] = v52 | 0x80;
        v54 = v52 >> 7;
        v30[2] = v52 >> 7;
        v53 = v30 + 3;
        if (v52 >= 0x4000)
        {
          LOBYTE(v30) = v30[2];
          do
          {
            *(v53 - 1) = v30 | 0x80;
            v30 = (v54 >> 7);
            *v53++ = v54 >> 7;
            v55 = v54 >> 14;
            v54 >>= 7;
          }

          while (v55);
        }
      }

      else
      {
        v53 = v30 + 2;
      }

      v30 = v53;
    }
  }

  v56 = *(a1 + 112);
  if (v56 < 1)
  {
    v60 = v53;
  }

  else
  {
    for (n = 0; n != v56; ++n)
    {
      if (*a3 <= v53)
      {
        v53 = sub_225EB68(a3, v53);
      }

      v58 = *(*(a1 + 120) + 8 * n);
      *v53 = 112;
      v59 = (2 * v58) ^ (v58 >> 63);
      v53[1] = v59;
      if (v59 > 0x7F)
      {
        v53[1] = v59 | 0x80;
        v61 = v59 >> 7;
        v53[2] = v59 >> 7;
        v60 = v53 + 3;
        if (v59 >= 0x4000)
        {
          LOBYTE(v53) = v53[2];
          do
          {
            *(v60 - 1) = v53 | 0x80;
            v53 = (v61 >> 7);
            *v60++ = v61 >> 7;
            v62 = v61 >> 14;
            v61 >>= 7;
          }

          while (v62);
        }
      }

      else
      {
        v60 = v53 + 2;
      }

      v53 = v60;
    }
  }

  v63 = *(a1 + 128);
  if (v63 < 1)
  {
    v67 = v60;
  }

  else
  {
    for (ii = 0; ii != v63; ++ii)
    {
      if (*a3 <= v60)
      {
        v60 = sub_225EB68(a3, v60);
      }

      v65 = *(*(a1 + 136) + 8 * ii);
      *v60 = 120;
      v66 = (2 * v65) ^ (v65 >> 63);
      v60[1] = v66;
      if (v66 > 0x7F)
      {
        v60[1] = v66 | 0x80;
        v68 = v66 >> 7;
        v60[2] = v66 >> 7;
        v67 = v60 + 3;
        if (v66 >= 0x4000)
        {
          LOBYTE(v69) = v60[2];
          do
          {
            *(v67 - 1) = v69 | 0x80;
            v69 = v68 >> 7;
            *v67++ = v68 >> 7;
            v70 = v68 >> 14;
            v68 >>= 7;
          }

          while (v70);
        }
      }

      else
      {
        v67 = v60 + 2;
      }

      v60 = v67;
    }
  }

  v71 = *(a1 + 8);
  if ((v71 & 1) == 0)
  {
    return v67;
  }

  v73 = v71 & 0xFFFFFFFFFFFFFFFCLL;
  v74 = *(v73 + 31);
  if (v74 < 0)
  {
    v75 = *(v73 + 8);
    v74 = *(v73 + 16);
  }

  else
  {
    v75 = (v73 + 8);
  }

  if (*a3 - v67 >= v74)
  {
    v76 = v74;
    memcpy(v67, v75, v74);
    v67 += v76;
    return v67;
  }

  return sub_1957130(a3, v75, v74, v67);
}

uint64_t sub_12D576C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = sub_16E51F0(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 56);
  v9 = v2 + v8;
  v10 = *(a1 + 64);
  if (v10)
  {
    v11 = (v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = 8 * v8;
    do
    {
      v13 = *v11++;
      v14 = sub_16E51F0(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 80);
  v16 = v9 + v15;
  v17 = *(a1 + 88);
  if (v17)
  {
    v18 = (v17 + 8);
  }

  else
  {
    v18 = 0;
  }

  if (v15)
  {
    v19 = 8 * v15;
    do
    {
      v20 = *v18++;
      v21 = sub_16E51F0(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = sub_1959F64((a1 + 96));
  v23 = *(a1 + 96);
  v24 = sub_1959F64((a1 + 112));
  v25 = *(a1 + 112);
  result = v22 + v23 + v24 + v25 + sub_1959F64((a1 + 128)) + *(a1 + 128) + v16;
  v27 = *(a1 + 16);
  if ((v27 & 0x3F) == 0)
  {
    goto LABEL_32;
  }

  if (v27)
  {
    v32 = *(a1 + 144);
    v33 = ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v32 >= 0)
    {
      v34 = v33;
    }

    else
    {
      v34 = 11;
    }

    result += v34;
    if ((v27 & 2) == 0)
    {
LABEL_24:
      if ((v27 & 4) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_42;
    }
  }

  else if ((v27 & 2) == 0)
  {
    goto LABEL_24;
  }

  v35 = *(a1 + 148);
  v36 = ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v35 >= 0)
  {
    v37 = v36;
  }

  else
  {
    v37 = 11;
  }

  result += v37;
  if ((v27 & 4) == 0)
  {
LABEL_25:
    if ((v27 & 8) == 0)
    {
      goto LABEL_26;
    }

LABEL_43:
    result += ((9 * (__clz((2 * *(a1 + 156)) ^ (*(a1 + 156) >> 31) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v27 & 0x10) == 0)
    {
LABEL_27:
      if ((v27 & 0x20) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_28;
    }

    goto LABEL_44;
  }

LABEL_42:
  result += ((9 * (__clz((2 * *(a1 + 152)) ^ (*(a1 + 152) >> 31) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v27 & 8) != 0)
  {
    goto LABEL_43;
  }

LABEL_26:
  if ((v27 & 0x10) == 0)
  {
    goto LABEL_27;
  }

LABEL_44:
  v38 = *(a1 + 160);
  v39 = ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v38 >= 0)
  {
    v40 = v39;
  }

  else
  {
    v40 = 11;
  }

  result += v40;
  if ((v27 & 0x20) != 0)
  {
LABEL_28:
    v28 = *(a1 + 164);
    v29 = ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v28 >= 0)
    {
      v30 = v29;
    }

    else
    {
      v30 = 11;
    }

    result += v30;
  }

LABEL_32:
  v31 = *(a1 + 8);
  if (v31)
  {
    v41 = v31 & 0xFFFFFFFFFFFFFFFCLL;
    v42 = *((v31 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v42 < 0)
    {
      v42 = *(v41 + 16);
    }

    result += v42;
  }

  *(a1 + 20) = result;
  return result;
}

uint64_t sub_12D5A60(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_12;
    }
  }

  else if (v4)
  {
    goto LABEL_12;
  }

  if (a1 != &off_2769EF8)
  {
    v5 = *(a1 + 120);
    if (v5)
    {
      sub_12E0444(v5);
      operator delete();
    }

    v6 = *(a1 + 128);
    if (v6)
    {
      sub_12E1008(v6);
      operator delete();
    }

    v7 = *(a1 + 136);
    if (v7)
    {
      sub_12E1320(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_12E78D8((a1 + 96));
  sub_12E7854((a1 + 72));
  sub_12E77D0((a1 + 48));
  sub_12E774C((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12D5B80(uint64_t a1)
{
  sub_12D5A60(a1);

  operator delete();
}

uint64_t sub_12D5BB8(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 16) = 0;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_12D5BD0(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  *(result + 24) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_12D5BE8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v55 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v55, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v55 + 1;
    v8 = *v55;
    if (*v55 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v55, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v55 + 2;
      }
    }

    v55 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 5)
    {
      break;
    }

    if (v8 >> 3 <= 3)
    {
      if (v11 == 2)
      {
        if (v8 == 18)
        {
          v35 = v7 - 1;
          while (1)
          {
            v36 = (v35 + 1);
            v55 = v35 + 1;
            v37 = *(a1 + 40);
            if (v37 && (v38 = *(a1 + 32), v38 < *v37))
            {
              *(a1 + 32) = v38 + 1;
              v39 = *&v37[2 * v38 + 2];
            }

            else
            {
              v40 = sub_12E1CB4(*(a1 + 24));
              v39 = sub_19593CC(a1 + 24, v40);
              v36 = v55;
            }

            v35 = sub_21F7BA8(a3, v39, v36);
            v55 = v35;
            if (!v35)
            {
              goto LABEL_99;
            }

            if (*a3 <= v35 || *v35 != 18)
            {
              goto LABEL_92;
            }
          }
        }
      }

      else if (v11 == 3 && v8 == 26)
      {
        v13 = v7 - 1;
        while (1)
        {
          v14 = (v13 + 1);
          v55 = v13 + 1;
          v15 = *(a1 + 64);
          if (v15 && (v16 = *(a1 + 56), v16 < *v15))
          {
            *(a1 + 56) = v16 + 1;
            v17 = *&v15[2 * v16 + 2];
          }

          else
          {
            v18 = sub_12E1D3C(*(a1 + 48));
            v17 = sub_19593CC(a1 + 48, v18);
            v14 = v55;
          }

          v13 = sub_21F7C38(a3, v17, v14);
          v55 = v13;
          if (!v13)
          {
            goto LABEL_99;
          }

          if (*a3 <= v13 || *v13 != 26)
          {
            goto LABEL_92;
          }
        }
      }

      goto LABEL_84;
    }

    if (v11 != 4)
    {
      if (v11 == 5 && v8 == 42)
      {
        v25 = v7 - 1;
        while (1)
        {
          v26 = (v25 + 1);
          v55 = v25 + 1;
          v27 = *(a1 + 88);
          if (v27 && (v28 = *(a1 + 80), v28 < *v27))
          {
            *(a1 + 80) = v28 + 1;
            v29 = *&v27[2 * v28 + 2];
          }

          else
          {
            v30 = sub_12E1DC4(*(a1 + 72));
            v29 = sub_19593CC(a1 + 72, v30);
            v26 = v55;
          }

          v25 = sub_21F7CC8(a3, v29, v26);
          v55 = v25;
          if (!v25)
          {
            goto LABEL_99;
          }

          if (*a3 <= v25 || *v25 != 42)
          {
            goto LABEL_92;
          }
        }
      }

      goto LABEL_84;
    }

    if (v8 != 32)
    {
      goto LABEL_84;
    }

    v5 |= 8u;
    v44 = v7 + 1;
    v45 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_77;
    }

    v46 = *v44;
    v45 = v45 + (v46 << 7) - 128;
    if ((v46 & 0x80000000) == 0)
    {
      v44 = v7 + 2;
LABEL_77:
      v55 = v44;
      *(a1 + 144) = v45;
      goto LABEL_92;
    }

    v53 = sub_1958770(v7, v45);
    v55 = v53;
    *(a1 + 144) = v54;
    if (!v53)
    {
      goto LABEL_99;
    }

LABEL_92:
    if (sub_195ADC0(a3, &v55, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 > 7)
  {
    if (v11 == 8)
    {
      if (v8 != 66)
      {
        goto LABEL_84;
      }

      *(a1 + 16) |= 2u;
      v47 = *(a1 + 128);
      if (!v47)
      {
        v48 = *(a1 + 8);
        v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
        if (v48)
        {
          v49 = *v49;
        }

        v47 = sub_12E276C(v49);
        *(a1 + 128) = v47;
        v7 = v55;
      }

      v34 = sub_21F7E78(a3, v47, v7);
    }

    else
    {
      if (v11 != 9 || v8 != 74)
      {
        goto LABEL_84;
      }

      *(a1 + 16) |= 4u;
      v31 = *(a1 + 136);
      if (!v31)
      {
        v32 = *(a1 + 8);
        v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
        if (v32)
        {
          v33 = *v33;
        }

        v31 = sub_12E27E8(v33);
        *(a1 + 136) = v31;
        v7 = v55;
      }

      v34 = sub_21F7F08(a3, v31, v7);
    }

LABEL_91:
    v55 = v34;
    if (!v34)
    {
      goto LABEL_99;
    }

    goto LABEL_92;
  }

  if (v11 == 6)
  {
    if (v8 != 50)
    {
      goto LABEL_84;
    }

    *(a1 + 16) |= 1u;
    v41 = *(a1 + 120);
    if (!v41)
    {
      v42 = *(a1 + 8);
      v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
      if (v42)
      {
        v43 = *v43;
      }

      v41 = sub_12E26AC(v43);
      *(a1 + 120) = v41;
      v7 = v55;
    }

    v34 = sub_21F7D58(a3, v41, v7);
    goto LABEL_91;
  }

  if (v11 == 7 && v8 == 58)
  {
    v19 = v7 - 1;
    while (1)
    {
      v20 = (v19 + 1);
      v55 = v19 + 1;
      v21 = *(a1 + 112);
      if (v21 && (v22 = *(a1 + 104), v22 < *v21))
      {
        *(a1 + 104) = v22 + 1;
        v23 = *&v21[2 * v22 + 2];
      }

      else
      {
        v24 = sub_12E2214(*(a1 + 96));
        v23 = sub_19593CC(a1 + 96, v24);
        v20 = v55;
      }

      v19 = sub_21F7DE8(a3, v23, v20);
      v55 = v19;
      if (!v19)
      {
        goto LABEL_99;
      }

      if (*a3 <= v19 || *v19 != 58)
      {
        goto LABEL_92;
      }
    }
  }

LABEL_84:
  if (v8)
  {
    v50 = (v8 & 7) == 4;
  }

  else
  {
    v50 = 1;
  }

  if (!v50)
  {
    v51 = *(a1 + 8);
    if (v51)
    {
      v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v52 = sub_11F1920((a1 + 8));
      v7 = v55;
    }

    v34 = sub_1952690(v8, v52, v7, a3);
    goto LABEL_91;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_99:
  v55 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v55;
}

char *sub_12D60D8(uint64_t a1, char *__dst, unint64_t *a3)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v8 = *(*(a1 + 40) + 8 * i + 8);
      *__dst = 18;
      v9 = *(v8 + 20);
      __dst[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, __dst + 1);
      }

      else
      {
        v10 = __dst + 2;
      }

      __dst = sub_12D6BD4(v8, v10, a3);
    }
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    for (j = 0; j != v11; ++j)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v13 = *(*(a1 + 64) + 8 * j + 8);
      *__dst = 26;
      v14 = *(v13 + 20);
      __dst[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, __dst + 1);
      }

      else
      {
        v15 = __dst + 2;
      }

      __dst = sub_12D71D8(v13, v15, a3);
    }
  }

  v16 = *(a1 + 16);
  if ((v16 & 8) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v18 = *(a1 + 144);
    *__dst = 32;
    __dst[1] = v18;
    if (v18 > 0x7F)
    {
      __dst[1] = v18 | 0x80;
      v19 = v18 >> 7;
      __dst[2] = v18 >> 7;
      v17 = __dst + 3;
      if (v18 >= 0x4000)
      {
        LOBYTE(__dst) = __dst[2];
        do
        {
          *(v17 - 1) = __dst | 0x80;
          LODWORD(__dst) = v19 >> 7;
          *v17++ = v19 >> 7;
          v20 = v19 >> 14;
          v19 >>= 7;
        }

        while (v20);
      }
    }

    else
    {
      v17 = __dst + 2;
    }
  }

  else
  {
    v17 = __dst;
  }

  v21 = *(a1 + 80);
  if (v21)
  {
    for (k = 0; k != v21; ++k)
    {
      if (*a3 <= v17)
      {
        v17 = sub_225EB68(a3, v17);
      }

      v23 = *(*(a1 + 88) + 8 * k + 8);
      *v17 = 42;
      v24 = *(v23 + 20);
      v17[1] = v24;
      if (v24 > 0x7F)
      {
        v25 = sub_19575D0(v24, v17 + 1);
      }

      else
      {
        v25 = v17 + 2;
      }

      v17 = sub_12D7D30(v23, v25, a3);
    }
  }

  if (v16)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v26 = *(a1 + 120);
    *v17 = 50;
    v27 = *(v26 + 20);
    v17[1] = v27;
    if (v27 > 0x7F)
    {
      v28 = sub_19575D0(v27, v17 + 1);
    }

    else
    {
      v28 = v17 + 2;
    }

    v17 = sub_12E0A04(v26, v28, a3);
  }

  v29 = *(a1 + 104);
  if (v29)
  {
    for (m = 0; m != v29; ++m)
    {
      if (*a3 <= v17)
      {
        v17 = sub_225EB68(a3, v17);
      }

      v31 = *(*(a1 + 112) + 8 * m + 8);
      *v17 = 58;
      v32 = *(v31 + 20);
      v17[1] = v32;
      if (v32 > 0x7F)
      {
        v33 = sub_19575D0(v32, v17 + 1);
      }

      else
      {
        v33 = v17 + 2;
      }

      v17 = sub_12DBC30(v31, v33, a3);
    }
  }

  if ((v16 & 2) != 0)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v34 = *(a1 + 128);
    *v17 = 66;
    v35 = *(v34 + 20);
    v17[1] = v35;
    if (v35 > 0x7F)
    {
      v36 = sub_19575D0(v35, v17 + 1);
    }

    else
    {
      v36 = v17 + 2;
    }

    v17 = sub_12E11E8(v34, v36, a3);
  }

  if ((v16 & 4) != 0)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v37 = *(a1 + 136);
    *v17 = 74;
    v38 = *(v37 + 48);
    v17[1] = v38;
    if (v38 > 0x7F)
    {
      v39 = sub_19575D0(v38, v17 + 1);
    }

    else
    {
      v39 = v17 + 2;
    }

    v17 = sub_12E16B0(v37, v39, a3);
  }

  v40 = *(a1 + 8);
  if ((v40 & 1) == 0)
  {
    return v17;
  }

  v42 = v40 & 0xFFFFFFFFFFFFFFFCLL;
  v43 = *(v42 + 31);
  if (v43 < 0)
  {
    v44 = *(v42 + 8);
    v43 = *(v42 + 16);
  }

  else
  {
    v44 = (v42 + 8);
  }

  if ((*a3 - v17) >= v43)
  {
    v45 = v43;
    memcpy(v17, v44, v43);
    v17 += v45;
    return v17;
  }

  return sub_1957130(a3, v44, v43, v17);
}

uint64_t sub_12D655C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = sub_12D6CD4(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 56);
  v9 = v2 + v8;
  v10 = *(a1 + 64);
  if (v10)
  {
    v11 = (v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = 8 * v8;
    do
    {
      v13 = *v11++;
      v14 = sub_12D7380(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 80);
  v16 = v9 + v15;
  v17 = *(a1 + 88);
  if (v17)
  {
    v18 = (v17 + 8);
  }

  else
  {
    v18 = 0;
  }

  if (v15)
  {
    v19 = 8 * v15;
    do
    {
      v20 = *v18++;
      v21 = sub_12D808C(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 104);
  v23 = v16 + v22;
  v24 = *(a1 + 112);
  if (v24)
  {
    v25 = (v24 + 8);
  }

  else
  {
    v25 = 0;
  }

  if (v22)
  {
    v26 = 8 * v22;
    do
    {
      v27 = *v25++;
      v28 = sub_12DBE4C(v27);
      v23 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6);
      v26 -= 8;
    }

    while (v26);
  }

  v29 = *(a1 + 16);
  if ((v29 & 0xF) == 0)
  {
    goto LABEL_33;
  }

  if ((v29 & 1) == 0)
  {
    if ((v29 & 2) == 0)
    {
      goto LABEL_30;
    }

LABEL_36:
    v33 = *(a1 + 128);
    v34 = 5;
    if ((*(v33 + 16) & 1) == 0)
    {
      v34 = 0;
    }

    v35 = *(v33 + 8);
    if (v35)
    {
      v39 = v35 & 0xFFFFFFFFFFFFFFFCLL;
      v40 = *((v35 & 0xFFFFFFFFFFFFFFFCLL) + 31);
      if (v40 < 0)
      {
        v40 = *(v39 + 16);
      }

      v34 += v40;
    }

    *(v33 + 20) = v34;
    v23 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v29 & 4) == 0)
    {
LABEL_31:
      if ((v29 & 8) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

    goto LABEL_40;
  }

  v32 = sub_12E0DA4(*(a1 + 120));
  v23 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v29 & 2) != 0)
  {
    goto LABEL_36;
  }

LABEL_30:
  if ((v29 & 4) == 0)
  {
    goto LABEL_31;
  }

LABEL_40:
  v36 = sub_12E18B8(*(a1 + 136));
  v23 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v29 & 8) != 0)
  {
LABEL_32:
    v23 += ((9 * (__clz(*(a1 + 144) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_33:
  v30 = *(a1 + 8);
  if (v30)
  {
    v37 = v30 & 0xFFFFFFFFFFFFFFFCLL;
    v38 = *((v30 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v38 < 0)
    {
      v38 = *(v37 + 16);
    }

    v23 += v38;
  }

  *(a1 + 20) = v23;
  return v23;
}

std::string *sub_12D67F8(std::string *result, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = *(a2 + 24);
    LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
    LODWORD(result[1].__r_.__value_.__l.__data_) = v2;
  }

  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

std::string *sub_12D6830(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = &result->__r_.__value_.__r.__words[2];
    v6 = SLODWORD(result->__r_.__value_.__r.__words[2]);
    sub_1959094(&result->__r_.__value_.__r.__words[2], v6 + v4);
    data = v3[1].__r_.__value_.__l.__data_;
    *v5 += *(a2 + 16);
    result = memcpy(&data[8 * v6], *(a2 + 24), 8 * *(a2 + 16));
  }

  v8 = *(a2 + 32);
  if (v8)
  {
    v9 = SLODWORD(v3[1].__r_.__value_.__r.__words[1]);
    sub_1959094(&v3[1].__r_.__value_.__r.__words[1], v9 + v8);
    v10 = v3[1].__r_.__value_.__r.__words[2];
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) += *(a2 + 32);
    result = memcpy((v10 + 8 * v9), *(a2 + 40), 8 * *(a2 + 32));
  }

  v11 = *(a2 + 8);
  if (v11)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_12D6928(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_7;
    }
  }

  else if (v4)
  {
    goto LABEL_7;
  }

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12D69C8(uint64_t a1)
{
  sub_12D6928(a1);

  operator delete();
}

uint64_t sub_12D6A00(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v1 + 23) < 0)
    {
      **v1 = 0;
      *(v1 + 8) = 0;
    }

    else
    {
      *v1 = 0;
      *(v1 + 23) = 0;
    }
  }

  v3 = *(a1 + 8);
  result = a1 + 8;
  *(result + 24) = 0;
  *(result + 8) = 0;
  if (v3)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_12D6A48(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v19 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v19, a3[11].i32[1]))
  {
    goto LABEL_29;
  }

  while (1)
  {
    v6 = (*v19 + 1);
    v7 = **v19;
    if (**v19 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v19, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v19 + 2);
      }
    }

    *v19 = v6;
    if (v7 >> 3 == 2)
    {
      break;
    }

    if (v7 >> 3 != 1 || v7 != 10)
    {
      goto LABEL_11;
    }

    *(a1 + 16) |= 1u;
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    v17 = sub_194DB04((a1 + 24), v16);
    v14 = sub_1958890(v17, *v19, a3);
LABEL_23:
    *v19 = v14;
    if (!v14)
    {
      goto LABEL_30;
    }

LABEL_24:
    if (sub_195ADC0(a3, v19, a3[11].i32[1]))
    {
      goto LABEL_29;
    }
  }

  if (v7 == 21)
  {
    v5 |= 2u;
    *(a1 + 32) = *v6;
    *v19 = v6 + 1;
    goto LABEL_24;
  }

LABEL_11:
  if (v7)
  {
    v11 = (v7 & 7) == 4;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = *v19;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
    goto LABEL_23;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    goto LABEL_29;
  }

LABEL_30:
  *v19 = 0;
LABEL_29:
  *(a1 + 16) |= v5;
  return *v19;
}

char *sub_12D6BD4(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v7 = *(a1 + 32);
    *v4 = 21;
    *(v4 + 1) = v7;
    v4 += 5;
  }

  v8 = *(a1 + 8);
  if ((v8 & 1) == 0)
  {
    return v4;
  }

  v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
  v11 = *(v10 + 31);
  if (v11 < 0)
  {
    v12 = *(v10 + 8);
    v11 = *(v10 + 16);
  }

  else
  {
    v12 = (v10 + 8);
  }

  if (*a3 - v4 >= v11)
  {
    v13 = v11;
    memcpy(v4, v12, v11);
    v4 += v13;
    return v4;
  }

  return sub_1957130(a3, v12, v11, v4);
}

uint64_t sub_12D6CD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
      v5 = *(v4 + 23);
      v6 = *(v4 + 8);
      if ((v5 & 0x80u) == 0)
      {
        v6 = v5;
      }

      v2 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    if ((v1 & 2) != 0)
    {
      v3 = v2 + 5;
    }

    else
    {
      v3 = v2;
    }
  }

  else
  {
    v3 = 0;
  }

  v7 = *(a1 + 8);
  if (v7)
  {
    v9 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v10 < 0)
    {
      v10 = *(v9 + 16);
    }

    v3 += v10;
  }

  *(a1 + 20) = v3;
  return v3;
}

uint64_t sub_12D6D84(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_12;
    }
  }

  else if (v4)
  {
    goto LABEL_12;
  }

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_2769F90)
  {
    if (*(a1 + 32))
    {
      sub_147B0C8();
      operator delete();
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      sub_12D8D00(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12D6E70(uint64_t a1)
{
  sub_12D6D84(a1);

  operator delete();
}

uint64_t sub_12D6EA8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 7) == 0)
  {
    goto LABEL_6;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v5 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_14;
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *v5 = 0;
  *(v5 + 23) = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_14:
  result = sub_147B104(*(result + 32));
  if ((v2 & 4) != 0)
  {
LABEL_5:
    result = sub_12D6F54(*(v1 + 40));
  }

LABEL_6:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_12D6F54(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_12D9654(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if ((*(v1 + 16) & 7) != 0)
  {
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

uint64_t sub_12D6FE4(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v26 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v26, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v26 + 1);
    v7 = **v26;
    if (**v26 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v26, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v26 + 2);
      }
    }

    *v26 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 == 6)
    {
      if (v7 == 50)
      {
        *(a1 + 16) |= 4u;
        v19 = *(a1 + 40);
        if (!v19)
        {
          v20 = *(a1 + 8);
          v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
          if (v20)
          {
            v21 = *v21;
          }

          v19 = sub_12E1EE4(v21);
          *(a1 + 40) = v19;
          v6 = *v26;
        }

        v15 = sub_21F8028(a3, v19, v6);
        goto LABEL_35;
      }
    }

    else if (v10 == 4)
    {
      if (v7 == 34)
      {
        *(a1 + 16) |= 2u;
        v16 = *(a1 + 32);
        if (!v16)
        {
          v17 = *(a1 + 8);
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v18 = *v18;
          }

          v16 = sub_14BCA7C(v18);
          *(a1 + 32) = v16;
          v6 = *v26;
        }

        v15 = sub_21F7F98(a3, v16, v6);
        goto LABEL_35;
      }
    }

    else if (v10 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v22 = *(a1 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      v24 = sub_194DB04((a1 + 24), v23);
      v15 = sub_1958890(v24, *v26, a3);
      goto LABEL_35;
    }

    if (v7)
    {
      v12 = (v7 & 7) == 4;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return *v26;
      }

LABEL_41:
      *v26 = 0;
      return *v26;
    }

    v13 = *(a1 + 8);
    if (v13)
    {
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v14 = sub_11F1920((a1 + 8));
      v6 = *v26;
    }

    v15 = sub_1952690(v7, v14, v6, a3);
LABEL_35:
    *v26 = v15;
    if (!v15)
    {
      goto LABEL_41;
    }
  }

  return *v26;
}

char *sub_12D71D8(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_12;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v7 = *(a1 + 32);
  *v4 = 34;
  v8 = *(v7 + 20);
  v4[1] = v8;
  if (v8 > 0x7F)
  {
    v9 = sub_19575D0(v8, v4 + 1);
  }

  else
  {
    v9 = v4 + 2;
  }

  v4 = sub_147B444(v7, v9, a3);
  if ((v6 & 4) != 0)
  {
LABEL_12:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 40);
    *v4 = 50;
    v11 = *(v10 + 20);
    v4[1] = v11;
    if (v11 > 0x7F)
    {
      v12 = sub_19575D0(v11, v4 + 1);
    }

    else
    {
      v12 = v4 + 2;
    }

    v4 = sub_12D90C4(v10, v12, a3);
  }

LABEL_18:
  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return v4;
  }

  v15 = v13 & 0xFFFFFFFFFFFFFFFCLL;
  v16 = *(v15 + 31);
  if (v16 < 0)
  {
    v17 = *(v15 + 8);
    v16 = *(v15 + 16);
  }

  else
  {
    v17 = (v15 + 8);
  }

  if (*a3 - v4 >= v16)
  {
    v18 = v16;
    memcpy(v4, v17, v16);
    v4 += v18;
    return v4;
  }

  return sub_1957130(a3, v17, v16, v4);
}

uint64_t sub_12D7380(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_12;
  }

  if (v2)
  {
    v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v5 = *(v4 + 23);
    v6 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v6 = v5;
    }

    v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_9:
    v7 = sub_147B788(*(a1 + 32));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
  if ((v2 & 4) != 0)
  {
    v8 = sub_12D9398(*(a1 + 40));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  v9 = *(a1 + 8);
  if (v9)
  {
    v11 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    v3 += v12;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_12D7494(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 7) == 0)
  {
    goto LABEL_25;
  }

  if (v4)
  {
    v5 = *(a2 + 24);
    *(a1 + 16) |= 1u;
    v6 = *(a1 + 8);
    v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
    if (v6)
    {
      v7 = *v7;
    }

    sub_194EA1C((a1 + 24), (v5 & 0xFFFFFFFFFFFFFFFELL), v7);
    if ((v4 & 2) == 0)
    {
LABEL_4:
      if ((v4 & 4) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_4;
  }

  *(a1 + 16) |= 2u;
  v8 = *(a1 + 32);
  if (!v8)
  {
    v9 = *(a1 + 8);
    v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
    if (v9)
    {
      v10 = *v10;
    }

    v8 = sub_14BCA7C(v10);
    *(a1 + 32) = v8;
  }

  if (*(a2 + 32))
  {
    v11 = *(a2 + 32);
  }

  else
  {
    v11 = &off_2772380;
  }

  sub_129DA38(v8, v11);
  if ((v4 & 4) != 0)
  {
LABEL_17:
    *(a1 + 16) |= 4u;
    v12 = *(a1 + 40);
    if (!v12)
    {
      v13 = *(a1 + 8);
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        v14 = *v14;
      }

      v12 = sub_12E1EE4(v14);
      *(a1 + 40) = v12;
    }

    if (*(a2 + 40))
    {
      v15 = *(a2 + 40);
    }

    else
    {
      v15 = &off_276A030;
    }

    sub_12D75D8(v12, v15);
  }

LABEL_25:
  v16 = *(a2 + 8);
  if (v16)
  {

    sub_1957EF4((a1 + 8), (v16 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_12D75D8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_12E7F18((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if ((v9 & 7) != 0)
  {
    if (v9)
    {
      *(a1 + 48) = *(a2 + 48);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
LABEL_9:
          *(a1 + 16) |= v9;
          goto LABEL_10;
        }

LABEL_8:
        *(a1 + 56) = *(a2 + 56);
        goto LABEL_9;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    *(a1 + 52) = *(a2 + 52);
    if ((v9 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_10:
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_12D76F4(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_8;
    }
  }

  else if (v4)
  {
    goto LABEL_8;
  }

  if (a1 != &off_2769FC0 && *(a1 + 40))
  {
    sub_149D354();
    operator delete();
  }

  if (*(a1 + 8))
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12D77B4(uint64_t a1)
{
  sub_12D76F4(a1);

  operator delete();
}

uint64_t sub_12D77EC(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  v2 = *(result + 16);
  if (v2)
  {
    result = sub_149D390(*(result + 40));
  }

  if ((v2 & 0x7E) != 0)
  {
    *(v1 + 56) = 0;
    *(v1 + 48) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_12D785C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v54 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v54, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v54 + 1;
    v8 = *v54;
    if (*v54 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v54, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v54 + 2;
      }
    }

    v54 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 4)
    {
      break;
    }

    if (v8 >> 3 > 2)
    {
      if (v11 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_79;
        }

        v5 |= 4u;
        v34 = v7 + 1;
        v33 = *v7;
        if ((v33 & 0x8000000000000000) == 0)
        {
          goto LABEL_59;
        }

        v35 = *v34;
        v33 = (v35 << 7) + v33 - 128;
        if ((v35 & 0x80000000) == 0)
        {
          v34 = v7 + 2;
LABEL_59:
          v54 = v34;
          *(a1 + 49) = v33 != 0;
          goto LABEL_87;
        }

        v41 = sub_19587DC(v7, v33);
        v54 = v41;
        *(a1 + 49) = v42 != 0;
        if (!v41)
        {
          goto LABEL_92;
        }
      }

      else
      {
        if (v11 != 4 || v8 != 32)
        {
          goto LABEL_79;
        }

        v5 |= 8u;
        v21 = v7 + 1;
        v20 = *v7;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_36;
        }

        v22 = *v21;
        v20 = (v22 << 7) + v20 - 128;
        if ((v22 & 0x80000000) == 0)
        {
          v21 = v7 + 2;
LABEL_36:
          v54 = v21;
          *(a1 + 50) = v20 != 0;
          goto LABEL_87;
        }

        v47 = sub_19587DC(v7, v20);
        v54 = v47;
        *(a1 + 50) = v48 != 0;
        if (!v47)
        {
          goto LABEL_92;
        }
      }
    }

    else
    {
      if (v11 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_79;
        }

        *(a1 + 16) |= 1u;
        v26 = *(a1 + 40);
        if (!v26)
        {
          v27 = *(a1 + 8);
          v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
          if (v27)
          {
            v28 = *v28;
          }

          v26 = sub_14BDE5C(v28);
          *(a1 + 40) = v26;
          v7 = v54;
        }

        v29 = sub_21F6500(a3, v26, v7);
LABEL_86:
        v54 = v29;
        if (!v29)
        {
          goto LABEL_92;
        }

        goto LABEL_87;
      }

      if (v11 != 2 || v8 != 16)
      {
        goto LABEL_79;
      }

      v5 |= 2u;
      v14 = v7 + 1;
      v13 = *v7;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_18;
      }

      v15 = *v14;
      v13 = (v15 << 7) + v13 - 128;
      if ((v15 & 0x80000000) == 0)
      {
        v14 = v7 + 2;
LABEL_18:
        v54 = v14;
        *(a1 + 48) = v13 != 0;
        goto LABEL_87;
      }

      v45 = sub_19587DC(v7, v13);
      v54 = v45;
      *(a1 + 48) = v46 != 0;
      if (!v45)
      {
        goto LABEL_92;
      }
    }

LABEL_87:
    if (sub_195ADC0(a3, &v54, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 > 6)
  {
    if (v11 == 7)
    {
      if (v8 != 56)
      {
        goto LABEL_79;
      }

      v5 |= 0x20u;
      v36 = v7 + 1;
      v37 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_64;
      }

      v38 = *v36;
      v37 = v37 + (v38 << 7) - 128;
      if ((v38 & 0x80000000) == 0)
      {
        v36 = v7 + 2;
LABEL_64:
        v54 = v36;
        *(a1 + 52) = v37;
        goto LABEL_87;
      }

      v43 = sub_1958770(v7, v37);
      v54 = v43;
      *(a1 + 52) = v44;
      if (!v43)
      {
        goto LABEL_92;
      }
    }

    else
    {
      if (v11 != 8 || v8 != 64)
      {
        goto LABEL_79;
      }

      v5 |= 0x40u;
      v23 = v7 + 1;
      v24 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

      v25 = *v23;
      v24 = v24 + (v25 << 7) - 128;
      if ((v25 & 0x80000000) == 0)
      {
        v23 = v7 + 2;
LABEL_43:
        v54 = v23;
        *(a1 + 56) = v24;
        goto LABEL_87;
      }

      v49 = sub_1958770(v7, v24);
      v54 = v49;
      *(a1 + 56) = v50;
      if (!v49)
      {
        goto LABEL_92;
      }
    }

    goto LABEL_87;
  }

  if (v11 == 5)
  {
    if (v8 != 40)
    {
      goto LABEL_79;
    }

    v5 |= 0x10u;
    v31 = v7 + 1;
    v30 = *v7;
    if ((v30 & 0x8000000000000000) == 0)
    {
      goto LABEL_54;
    }

    v32 = *v31;
    v30 = (v32 << 7) + v30 - 128;
    if ((v32 & 0x80000000) == 0)
    {
      v31 = v7 + 2;
LABEL_54:
      v54 = v31;
      *(a1 + 51) = v30 != 0;
      goto LABEL_87;
    }

    v39 = sub_19587DC(v7, v30);
    v54 = v39;
    *(a1 + 51) = v40 != 0;
    if (!v39)
    {
      goto LABEL_92;
    }

    goto LABEL_87;
  }

  if (v11 == 6)
  {
    if (v8 == 49)
    {
      v16 = v7 - 1;
      v17 = *(a1 + 24);
      do
      {
        v18 = v16 + 1;
        v54 = v16 + 1;
        v19 = *(v16 + 1);
        if (v17 == *(a1 + 28))
        {
          sub_1959094((a1 + 24), v17 + 1);
          *(*(a1 + 32) + 8 * v17) = v19;
          v18 = v54;
        }

        else
        {
          *(*(a1 + 32) + 8 * v17) = v19;
        }

        *(a1 + 24) = ++v17;
        v16 = v18 + 8;
        v54 = v18 + 8;
      }

      while (*a3 > (v18 + 8) && *v16 == 49);
      goto LABEL_87;
    }

    if (v8 == 50)
    {
      v29 = sub_1958A20(a1 + 24, v7, a3);
      goto LABEL_86;
    }
  }

LABEL_79:
  if (v8)
  {
    v51 = (v8 & 7) == 4;
  }

  else
  {
    v51 = 1;
  }

  if (!v51)
  {
    v52 = *(a1 + 8);
    if (v52)
    {
      v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v53 = sub_11F1920((a1 + 8));
      v7 = v54;
    }

    v29 = sub_1952690(v8, v53, v7, a3);
    goto LABEL_86;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_92:
  v54 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v54;
}

char *sub_12D7D30(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 40);
    *__dst = 10;
    v7 = *(v6 + 44);
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      v8 = sub_19575D0(v7, __dst + 1);
    }

    else
    {
      v8 = __dst + 2;
    }

    __dst = sub_149DD64(v6, v8, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v9 = *(a1 + 48);
  *__dst = 16;
  __dst[1] = v9;
  __dst += 2;
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_16:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v10 = *(a1 + 49);
  *__dst = 24;
  __dst[1] = v10;
  __dst += 2;
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

LABEL_19:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v11 = *(a1 + 50);
  *__dst = 32;
  __dst[1] = v11;
  __dst += 2;
  if ((v5 & 0x10) != 0)
  {
LABEL_22:
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v12 = *(a1 + 51);
    *__dst = 40;
    __dst[1] = v12;
    __dst += 2;
  }

LABEL_25:
  v13 = *(a1 + 24);
  if (v13 >= 1)
  {
    v14 = 0;
    v15 = 8 * v13;
    do
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v16 = *(*(a1 + 32) + v14);
      *__dst = 49;
      *(__dst + 1) = v16;
      __dst += 9;
      v14 += 8;
    }

    while (v15 != v14);
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v18 = *(a1 + 52);
    *__dst = 56;
    __dst[1] = v18;
    if (v18 > 0x7F)
    {
      __dst[1] = v18 | 0x80;
      v19 = v18 >> 7;
      __dst[2] = v18 >> 7;
      v17 = __dst + 3;
      if (v18 >= 0x4000)
      {
        LOBYTE(v20) = __dst[2];
        do
        {
          *(v17 - 1) = v20 | 0x80;
          v20 = v19 >> 7;
          *v17++ = v19 >> 7;
          v21 = v19 >> 14;
          v19 >>= 7;
        }

        while (v21);
      }
    }

    else
    {
      v17 = __dst + 2;
    }
  }

  else
  {
    v17 = __dst;
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v23 = *(a1 + 56);
    *v17 = 64;
    v17[1] = v23;
    if (v23 > 0x7F)
    {
      v17[1] = v23 | 0x80;
      v24 = v23 >> 7;
      v17[2] = v23 >> 7;
      v22 = v17 + 3;
      if (v23 >= 0x4000)
      {
        LOBYTE(v17) = v17[2];
        do
        {
          *(v22 - 1) = v17 | 0x80;
          LODWORD(v17) = v24 >> 7;
          *v22++ = v24 >> 7;
          v25 = v24 >> 14;
          v24 >>= 7;
        }

        while (v25);
      }
    }

    else
    {
      v22 = v17 + 2;
    }
  }

  else
  {
    v22 = v17;
  }

  v26 = *(a1 + 8);
  if ((v26 & 1) == 0)
  {
    return v22;
  }

  v28 = v26 & 0xFFFFFFFFFFFFFFFCLL;
  v29 = *(v28 + 31);
  if (v29 < 0)
  {
    v30 = *(v28 + 8);
    v29 = *(v28 + 16);
  }

  else
  {
    v30 = (v28 + 8);
  }

  if ((*a3 - v22) >= v29)
  {
    v31 = v29;
    memcpy(v22, v30, v29);
    v22 += v31;
    return v22;
  }

  return sub_1957130(a3, v30, v29, v22);
}

uint64_t sub_12D808C(uint64_t a1)
{
  v2 = 9 * *(a1 + 24);
  v3 = *(a1 + 16);
  if ((v3 & 0x7F) != 0)
  {
    if (v3)
    {
      v4 = sub_149E4E4(*(a1 + 40));
      v2 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += ((v3 >> 1) & 2) + (v3 & 2) + ((v3 >> 2) & 2) + ((v3 >> 3) & 2);
    if ((v3 & 0x20) != 0)
    {
      v2 += ((9 * (__clz(*(a1 + 52) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v3 & 0x40) != 0)
    {
      v2 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v8 = *((v5 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v8 < 0)
    {
      v8 = *(v7 + 16);
    }

    v2 += v8;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_12D81A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = (a1 + 24);
    v6 = *(a1 + 24);
    sub_1959094((a1 + 24), v6 + v4);
    v7 = *(a1 + 32);
    *v5 += *(a2 + 24);
    memcpy((v7 + 8 * v6), *(a2 + 32), 8 * *(a2 + 24));
  }

  v8 = *(a2 + 16);
  if ((v8 & 0x7F) != 0)
  {
    if (v8)
    {
      *(a1 + 16) |= 1u;
      v10 = *(a1 + 40);
      if (!v10)
      {
        v11 = *(a1 + 8);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        v10 = sub_14BDE5C(v12);
        *(a1 + 40) = v10;
      }

      if (*(a2 + 40))
      {
        v13 = *(a2 + 40);
      }

      else
      {
        v13 = &off_27731C8;
      }

      sub_149E8CC(v10, v13);
      if ((v8 & 2) == 0)
      {
LABEL_6:
        if ((v8 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_26;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(a1 + 48) = *(a2 + 48);
    if ((v8 & 4) == 0)
    {
LABEL_7:
      if ((v8 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }

LABEL_26:
    *(a1 + 49) = *(a2 + 49);
    if ((v8 & 8) == 0)
    {
LABEL_8:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_28;
    }

LABEL_27:
    *(a1 + 50) = *(a2 + 50);
    if ((v8 & 0x10) == 0)
    {
LABEL_9:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_29;
    }

LABEL_28:
    *(a1 + 51) = *(a2 + 51);
    if ((v8 & 0x20) == 0)
    {
LABEL_10:
      if ((v8 & 0x40) == 0)
      {
LABEL_12:
        *(a1 + 16) |= v8;
        goto LABEL_13;
      }

LABEL_11:
      *(a1 + 56) = *(a2 + 56);
      goto LABEL_12;
    }

LABEL_29:
    *(a1 + 52) = *(a2 + 52);
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_13:
  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_12D830C(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_149EC98(*(a1 + 40));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_12D834C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12D83C0(void *a1)
{
  sub_12D834C(a1);

  operator delete();
}

uint64_t sub_12D83F8(uint64_t a1)
{
  if ((*(a1 + 16) & 0x3F) != 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_12D8420(uint64_t a1, char *a2, int32x2_t *a3)
{
  v46 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v46, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v46 + 1;
    v8 = *v46;
    if (*v46 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v46, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v46 + 2;
      }
    }

    v46 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 3)
    {
      break;
    }

    if (v11 == 4)
    {
      if (v8 != 32)
      {
        goto LABEL_47;
      }

      v5 |= 8u;
      v22 = v7 + 1;
      v23 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_36;
      }

      v24 = *v22;
      v23 = v23 + (v24 << 7) - 128;
      if ((v24 & 0x80000000) == 0)
      {
        v22 = v7 + 2;
LABEL_36:
        v46 = v22;
        *(a1 + 36) = v23;
        goto LABEL_54;
      }

      v36 = sub_1958770(v7, v23);
      v46 = v36;
      *(a1 + 36) = v37;
      if (!v36)
      {
        goto LABEL_71;
      }
    }

    else if (v11 == 5)
    {
      if (v8 != 40)
      {
        goto LABEL_47;
      }

      v5 |= 0x10u;
      v28 = v7 + 1;
      v29 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_46;
      }

      v30 = *v28;
      v29 = v29 + (v30 << 7) - 128;
      if ((v30 & 0x80000000) == 0)
      {
        v28 = v7 + 2;
LABEL_46:
        v46 = v28;
        *(a1 + 40) = v29;
        goto LABEL_54;
      }

      v44 = sub_1958770(v7, v29);
      v46 = v44;
      *(a1 + 40) = v45;
      if (!v44)
      {
        goto LABEL_71;
      }
    }

    else
    {
      if (v11 != 6 || v8 != 48)
      {
        goto LABEL_47;
      }

      v5 |= 0x20u;
      v16 = v7 + 1;
      v17 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

      v18 = *v16;
      v17 = v17 + (v18 << 7) - 128;
      if ((v18 & 0x80000000) == 0)
      {
        v16 = v7 + 2;
LABEL_26:
        v46 = v16;
        *(a1 + 44) = v17;
        goto LABEL_54;
      }

      v38 = sub_1958770(v7, v17);
      v46 = v38;
      *(a1 + 44) = v39;
      if (!v38)
      {
        goto LABEL_71;
      }
    }

LABEL_54:
    if (sub_195ADC0(a3, &v46, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 8)
    {
      goto LABEL_47;
    }

    v5 |= 1u;
    v19 = v7 + 1;
    v20 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    v21 = *v19;
    v20 = v20 + (v21 << 7) - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v19 = v7 + 2;
LABEL_31:
      v46 = v19;
      *(a1 + 24) = v20;
      goto LABEL_54;
    }

    v34 = sub_1958770(v7, v20);
    v46 = v34;
    *(a1 + 24) = v35;
    if (!v34)
    {
      goto LABEL_71;
    }

    goto LABEL_54;
  }

  if (v11 == 2)
  {
    if (v8 != 16)
    {
      goto LABEL_47;
    }

    v5 |= 2u;
    v25 = v7 + 1;
    v26 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

    v27 = *v25;
    v26 = v26 + (v27 << 7) - 128;
    if ((v27 & 0x80000000) == 0)
    {
      v25 = v7 + 2;
LABEL_41:
      v46 = v25;
      *(a1 + 28) = v26;
      goto LABEL_54;
    }

    v42 = sub_1958770(v7, v26);
    v46 = v42;
    *(a1 + 28) = v43;
    if (!v42)
    {
      goto LABEL_71;
    }

    goto LABEL_54;
  }

  if (v11 == 3 && v8 == 24)
  {
    v5 |= 4u;
    v13 = v7 + 1;
    v14 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    v15 = *v13;
    v14 = v14 + (v15 << 7) - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v13 = v7 + 2;
LABEL_18:
      v46 = v13;
      *(a1 + 32) = v14;
      goto LABEL_54;
    }

    v40 = sub_1958770(v7, v14);
    v46 = v40;
    *(a1 + 32) = v41;
    if (!v40)
    {
      goto LABEL_71;
    }

    goto LABEL_54;
  }

LABEL_47:
  if (v8)
  {
    v31 = (v8 & 7) == 4;
  }

  else
  {
    v31 = 1;
  }

  if (!v31)
  {
    v32 = *(a1 + 8);
    if (v32)
    {
      v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v33 = sub_11F1920((a1 + 8));
      v7 = v46;
    }

    v46 = sub_1952690(v8, v33, v7, a3);
    if (!v46)
    {
      goto LABEL_71;
    }

    goto LABEL_54;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_71:
  v46 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v46;
}

char *sub_12D879C(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 24);
    *__dst = 8;
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      __dst[1] = v7 | 0x80;
      v8 = v7 >> 7;
      __dst[2] = v7 >> 7;
      v6 = __dst + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = __dst[2];
        do
        {
          *(v6 - 1) = v9 | 0x80;
          v9 = v8 >> 7;
          *v6++ = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }
    }

    else
    {
      v6 = __dst + 2;
    }
  }

  else
  {
    v6 = __dst;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 28);
    *v6 = 16;
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v6[1] = v12 | 0x80;
      v13 = v12 >> 7;
      v6[2] = v12 >> 7;
      v11 = v6 + 3;
      if (v12 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v11 - 1) = v6 | 0x80;
          LODWORD(v6) = v13 >> 7;
          *v11++ = v13 >> 7;
          v14 = v13 >> 14;
          v13 >>= 7;
        }

        while (v14);
      }
    }

    else
    {
      v11 = v6 + 2;
    }
  }

  else
  {
    v11 = v6;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 32);
    *v11 = 24;
    v11[1] = v16;
    if (v16 > 0x7F)
    {
      v11[1] = v16 | 0x80;
      v17 = v16 >> 7;
      v11[2] = v16 >> 7;
      v15 = v11 + 3;
      if (v16 >= 0x4000)
      {
        LOBYTE(v11) = v11[2];
        do
        {
          *(v15 - 1) = v11 | 0x80;
          LODWORD(v11) = v17 >> 7;
          *v15++ = v17 >> 7;
          v18 = v17 >> 14;
          v17 >>= 7;
        }

        while (v18);
      }
    }

    else
    {
      v15 = v11 + 2;
    }
  }

  else
  {
    v15 = v11;
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 36);
    *v15 = 32;
    v15[1] = v20;
    if (v20 > 0x7F)
    {
      v15[1] = v20 | 0x80;
      v21 = v20 >> 7;
      v15[2] = v20 >> 7;
      v19 = v15 + 3;
      if (v20 >= 0x4000)
      {
        LOBYTE(v22) = v15[2];
        do
        {
          *(v19 - 1) = v22 | 0x80;
          v22 = v21 >> 7;
          *v19++ = v21 >> 7;
          v23 = v21 >> 14;
          v21 >>= 7;
        }

        while (v23);
      }
    }

    else
    {
      v19 = v15 + 2;
    }
  }

  else
  {
    v19 = v15;
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v25 = *(a1 + 40);
    *v19 = 40;
    v19[1] = v25;
    if (v25 > 0x7F)
    {
      v19[1] = v25 | 0x80;
      v26 = v25 >> 7;
      v19[2] = v25 >> 7;
      v24 = v19 + 3;
      if (v25 >= 0x4000)
      {
        LOBYTE(v19) = v19[2];
        do
        {
          *(v24 - 1) = v19 | 0x80;
          LODWORD(v19) = v26 >> 7;
          *v24++ = v26 >> 7;
          v27 = v26 >> 14;
          v26 >>= 7;
        }

        while (v27);
      }
    }

    else
    {
      v24 = v19 + 2;
    }
  }

  else
  {
    v24 = v19;
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v29 = *(a1 + 44);
    *v24 = 48;
    v24[1] = v29;
    if (v29 > 0x7F)
    {
      v24[1] = v29 | 0x80;
      v30 = v29 >> 7;
      v24[2] = v29 >> 7;
      v28 = v24 + 3;
      if (v29 >= 0x4000)
      {
        LOBYTE(v31) = v24[2];
        do
        {
          *(v28 - 1) = v31 | 0x80;
          v31 = v30 >> 7;
          *v28++ = v30 >> 7;
          v32 = v30 >> 14;
          v30 >>= 7;
        }

        while (v32);
      }
    }

    else
    {
      v28 = v24 + 2;
    }
  }

  else
  {
    v28 = v24;
  }

  v33 = *(a1 + 8);
  if ((v33 & 1) == 0)
  {
    return v28;
  }

  v35 = v33 & 0xFFFFFFFFFFFFFFFCLL;
  v36 = *(v35 + 31);
  if (v36 < 0)
  {
    v37 = *(v35 + 8);
    v36 = *(v35 + 16);
  }

  else
  {
    v37 = (v35 + 8);
  }

  if (*a3 - v28 >= v36)
  {
    v38 = v36;
    memcpy(v28, v37, v36);
    v28 += v38;
    return v28;
  }

  return sub_1957130(a3, v37, v36, v28);
}

uint64_t sub_12D8B64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x3F) == 0)
  {
    v2 = 0;
    goto LABEL_13;
  }

  if (v1)
  {
    v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v2 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    v2 += ((9 * (__clz(*(a1 + 28) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v1 & 4) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 8) == 0)
    {
LABEL_10:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_10;
  }

  v2 += ((9 * (__clz(*(a1 + 36) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x10) == 0)
  {
LABEL_11:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_17:
  v2 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x20) != 0)
  {
LABEL_12:
    v2 += ((9 * (__clz(*(a1 + 44) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_13:
  v3 = *(a1 + 8);
  if (v3)
  {
    v5 = v3 & 0xFFFFFFFFFFFFFFFCLL;
    v6 = *((v3 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v6 < 0)
    {
      v6 = *(v5 + 16);
    }

    v2 += v6;
  }

  *(a1 + 20) = v2;
  return v2;
}

double sub_12D8CC8(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *a1 = off_26D0CA0;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  return result;
}

void *sub_12D8D00(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_12E795C(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12D8D80(void *a1)
{
  sub_12D8D00(a1);

  operator delete();
}

char *sub_12D8DB8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v37 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v37, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v37 + 1;
    v8 = *v37;
    if (*v37 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v37, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v37 + 2;
      }
    }

    v37 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 != 3)
    {
      if (v11 == 4 && v8 == 34)
      {
        v17 = v7 - 1;
        while (1)
        {
          v18 = (v17 + 1);
          v37 = v17 + 1;
          v19 = *(a1 + 40);
          if (v19 && (v20 = *(a1 + 32), v20 < *v19))
          {
            *(a1 + 32) = v20 + 1;
            v21 = *&v19[2 * v20 + 2];
          }

          else
          {
            v22 = sub_12E1F80(*(a1 + 24));
            v21 = sub_19593CC(a1 + 24, v22);
            v18 = v37;
          }

          v17 = sub_21F80B8(a3, v21, v18);
          v37 = v17;
          if (!v17)
          {
            goto LABEL_61;
          }

          if (*a3 <= v17 || *v17 != 34)
          {
            goto LABEL_49;
          }
        }
      }

      goto LABEL_42;
    }

    if (v8 != 24)
    {
      goto LABEL_42;
    }

    v5 |= 4u;
    v27 = v7 + 1;
    v26 = *v7;
    if ((v26 & 0x8000000000000000) == 0)
    {
      goto LABEL_41;
    }

    v28 = *v27;
    v26 = (v28 << 7) + v26 - 128;
    if ((v28 & 0x80000000) == 0)
    {
      v27 = v7 + 2;
LABEL_41:
      v37 = v27;
      *(a1 + 56) = v26;
      goto LABEL_49;
    }

    v35 = sub_19587DC(v7, v26);
    v37 = v35;
    *(a1 + 56) = v36;
    if (!v35)
    {
      goto LABEL_61;
    }

LABEL_49:
    if (sub_195ADC0(a3, &v37, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 8)
    {
      goto LABEL_42;
    }

    v5 |= 1u;
    v23 = v7 + 1;
    v24 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    v25 = *v23;
    v24 = v24 + (v25 << 7) - 128;
    if ((v25 & 0x80000000) == 0)
    {
      v23 = v7 + 2;
LABEL_36:
      v37 = v23;
      *(a1 + 48) = v24;
      goto LABEL_49;
    }

    v33 = sub_1958770(v7, v24);
    v37 = v33;
    *(a1 + 48) = v34;
    if (!v33)
    {
      goto LABEL_61;
    }

    goto LABEL_49;
  }

  if (v11 == 2 && v8 == 16)
  {
    v13 = v7 + 1;
    v14 = *v7;
    if ((v14 & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }

    v15 = *v13;
    v16 = (v15 << 7) + v14;
    LODWORD(v14) = v16 - 128;
    if (v15 < 0)
    {
      v37 = sub_19587DC(v7, (v16 - 128));
      if (!v37)
      {
        goto LABEL_61;
      }

      LODWORD(v14) = v32;
    }

    else
    {
      v13 = v7 + 2;
LABEL_17:
      v37 = v13;
    }

    if (sub_1393054(v14))
    {
      *(a1 + 16) |= 2u;
      *(a1 + 52) = v14;
    }

    else
    {
      sub_12E8418();
    }

    goto LABEL_49;
  }

LABEL_42:
  if (v8)
  {
    v29 = (v8 & 7) == 4;
  }

  else
  {
    v29 = 1;
  }

  if (!v29)
  {
    v30 = *(a1 + 8);
    if (v30)
    {
      v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v31 = sub_11F1920((a1 + 8));
      v7 = v37;
    }

    v37 = sub_1952690(v8, v31, v7, a3);
    if (!v37)
    {
      goto LABEL_61;
    }

    goto LABEL_49;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_61:
  v37 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v37;
}

char *sub_12D90C4(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 48);
    *__dst = 8;
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      __dst[1] = v7 | 0x80;
      v8 = v7 >> 7;
      __dst[2] = v7 >> 7;
      v6 = __dst + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = __dst[2];
        do
        {
          *(v6 - 1) = v9 | 0x80;
          v9 = v8 >> 7;
          *v6++ = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }
    }

    else
    {
      v6 = __dst + 2;
    }
  }

  else
  {
    v6 = __dst;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 52);
    *v6 = 16;
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v6[1] = v12 | 0x80;
      v13 = v12 >> 7;
      v6[2] = v12 >> 7;
      v11 = v6 + 3;
      if (v12 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v11 - 1) = v6 | 0x80;
          v6 = (v13 >> 7);
          *v11++ = v13 >> 7;
          v14 = v13 >> 14;
          v13 >>= 7;
        }

        while (v14);
      }
    }

    else
    {
      v11 = v6 + 2;
    }
  }

  else
  {
    v11 = v6;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 56);
    *v11 = 24;
    v11[1] = v16;
    if (v16 > 0x7F)
    {
      v11[1] = v16 | 0x80;
      v17 = v16 >> 7;
      v11[2] = v16 >> 7;
      v15 = v11 + 3;
      if (v16 >= 0x4000)
      {
        LOBYTE(v11) = v11[2];
        do
        {
          *(v15 - 1) = v11 | 0x80;
          v11 = (v17 >> 7);
          *v15++ = v17 >> 7;
          v18 = v17 >> 14;
          v17 >>= 7;
        }

        while (v18);
      }
    }

    else
    {
      v15 = v11 + 2;
    }
  }

  else
  {
    v15 = v11;
  }

  v19 = *(a1 + 32);
  if (v19)
  {
    for (i = 0; i != v19; ++i)
    {
      if (*a3 <= v15)
      {
        v15 = sub_225EB68(a3, v15);
      }

      v21 = *(*(a1 + 40) + 8 * i + 8);
      *v15 = 34;
      v22 = *(v21 + 64);
      v15[1] = v22;
      if (v22 > 0x7F)
      {
        v23 = sub_19575D0(v22, v15 + 1);
      }

      else
      {
        v23 = v15 + 2;
      }

      v15 = sub_12D992C(v21, v23, a3);
    }
  }

  v24 = *(a1 + 8);
  if ((v24 & 1) == 0)
  {
    return v15;
  }

  v26 = v24 & 0xFFFFFFFFFFFFFFFCLL;
  v27 = *(v26 + 31);
  if (v27 < 0)
  {
    v28 = *(v26 + 8);
    v27 = *(v26 + 16);
  }

  else
  {
    v28 = (v26 + 8);
  }

  if (*a3 - v15 >= v27)
  {
    v29 = v27;
    memcpy(v15, v28, v27);
    v15 += v29;
    return v15;
  }

  return sub_1957130(a3, v28, v27, v15);
}

uint64_t sub_12D9398(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = sub_12D9AF0(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 16);
  if ((v8 & 7) != 0)
  {
    if (v8)
    {
      v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v8 & 2) == 0)
      {
LABEL_12:
        if ((v8 & 4) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_12;
    }

    v11 = *(a1 + 52);
    if (v11 < 0)
    {
      v12 = 11;
    }

    else
    {
      v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v12;
    if ((v8 & 4) != 0)
    {
LABEL_13:
      v2 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }
  }

LABEL_14:
  v9 = *(a1 + 8);
  if (v9)
  {
    v13 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v14 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v14 < 0)
    {
      v14 = *(v13 + 16);
    }

    v2 += v14;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_12D94D8(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_12D6F54(a1);

    sub_12D75D8(a1, a2);
  }
}

__n128 sub_12D952C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  LODWORD(v2) = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  v5 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  result = *(a2 + 48);
  *(a1 + 48) = result;
  *(a2 + 48) = v6;
  *(a2 + 56) = v7;
  return result;
}

void *sub_12D9590(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_12E7A64(a1 + 5);
  sub_12E79E0(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12D961C(void *a1)
{
  sub_12D9590(a1);

  operator delete();
}

uint64_t sub_12D9654(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_12D9E20(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v5 = *(v1 + 48);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 56) + 8);
    do
    {
      v7 = *v6++;
      result = sub_12DA9A4(v7);
      --v5;
    }

    while (v5);
    *(v1 + 48) = 0;
  }

  v9 = *(v1 + 8);
  v8 = (v1 + 8);
  if (v9)
  {

    return sub_1957EA8(v8);
  }

  return result;
}

char *sub_12D96F8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v26 = a2;
  if ((sub_195ADC0(a3, &v26, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v6 = v26 + 1;
      v7 = *v26;
      if (*v26 < 0)
      {
        v8 = v7 + (*v6 << 7);
        v7 = v8 - 128;
        if (*v6 < 0)
        {
          v6 = sub_1958824(v26, v8 - 128);
          v7 = v9;
        }

        else
        {
          v6 = v26 + 2;
        }
      }

      v26 = v6;
      if (v7 >> 3 == 2)
      {
        if (v7 == 18)
        {
          v14 = v6 - 1;
          while (1)
          {
            v15 = (v14 + 1);
            v26 = v14 + 1;
            v16 = *(a1 + 56);
            if (v16 && (v17 = *(a1 + 48), v17 < *v16))
            {
              *(a1 + 48) = v17 + 1;
              v18 = *&v16[2 * v17 + 2];
            }

            else
            {
              v19 = sub_12E20A4(*(a1 + 40));
              v18 = sub_19593CC(a1 + 40, v19);
              v15 = v26;
            }

            v14 = sub_21F81D8(a3, v18, v15);
            v26 = v14;
            if (!v14)
            {
              return 0;
            }

            if (*a3 <= v14 || *v14 != 18)
            {
              goto LABEL_38;
            }
          }
        }
      }

      else if (v7 >> 3 == 1 && v7 == 10)
      {
        v20 = v6 - 1;
        while (1)
        {
          v21 = (v20 + 1);
          v26 = v20 + 1;
          v22 = *(a1 + 32);
          if (v22 && (v23 = *(a1 + 24), v23 < *v22))
          {
            *(a1 + 24) = v23 + 1;
            v24 = *&v22[2 * v23 + 2];
          }

          else
          {
            sub_12E2024(*(a1 + 16));
            v24 = sub_19593CC(a1 + 16, v25);
            v21 = v26;
          }

          v20 = sub_21F8148(a3, v24, v21);
          v26 = v20;
          if (!v20)
          {
            return 0;
          }

          if (*a3 <= v20 || *v20 != 10)
          {
            goto LABEL_38;
          }
        }
      }

      if (!v7 || (v7 & 7) == 4)
      {
        break;
      }

      v12 = *(a1 + 8);
      if (v12)
      {
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v13 = sub_11F1920((a1 + 8));
        v6 = v26;
      }

      v26 = sub_1952690(v7, v13, v6, a3);
      if (!v26)
      {
        return 0;
      }

LABEL_38:
      if (sub_195ADC0(a3, &v26, a3[11].i32[1]))
      {
        return v26;
      }
    }

    if (v6)
    {
      a3[10].i32[0] = v7 - 1;
      return v26;
    }

    return 0;
  }

  return v26;
}