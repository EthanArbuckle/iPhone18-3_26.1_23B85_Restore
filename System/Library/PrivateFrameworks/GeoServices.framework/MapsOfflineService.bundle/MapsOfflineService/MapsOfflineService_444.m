uint64_t sub_1806E08(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 56);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_17C34A0(*(*(a1 + 64) + 8 * v3));
      v3 = v4;
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    if ((*(a1 + 40) & 4) == 0)
    {
      return 1;
    }

    result = sub_195228C(*(a1 + 88) + 16);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1806E7C(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 104);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_17D78EC(*(*(a1 + 112) + 8 * v3));
      v3 = v4;
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    v6 = *(a1 + 128);
    while (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = sub_18070D8(*(*(a1 + 136) + 8 * v6));
      v6 = v7;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    v9 = *(a1 + 176);
    while (v9 >= 1)
    {
      v10 = v9 - 1;
      v11 = sub_17A8EF8(*(*(a1 + 184) + 8 * v9));
      v9 = v10;
      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }

    v12 = *(a1 + 416);
    while (v12 >= 1)
    {
      v13 = v12 - 1;
      v14 = sub_17D78EC(*(*(a1 + 424) + 8 * v12));
      v12 = v13;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }

    v15 = *(a1 + 40);
    if ((v15 & 4) != 0)
    {
      result = sub_17A8EF8(*(a1 + 472));
      if (!result)
      {
        return result;
      }

      v15 = *(a1 + 40);
    }

    if ((v15 & 8) != 0)
    {
      result = sub_17A8EF8(*(a1 + 480));
      if (!result)
      {
        return result;
      }

      v15 = *(a1 + 40);
    }

    if ((v15 & 0x10) != 0)
    {
      result = sub_1807008(*(a1 + 488));
      if (!result)
      {
        return result;
      }

      v15 = *(a1 + 40);
    }

    if ((v15 & 0x20) == 0)
    {
      return 1;
    }

    result = sub_17D78EC(*(a1 + 496));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_1806FA0(uint64_t a1)
{
  if (!sub_195228C(a1 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 56);
  do
  {
    v3 = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_17A8EF8(*(*(a1 + 64) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3;
}

uint64_t sub_1807008(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 56);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_17A8EF8(*(*(a1 + 64) + 8 * v3));
      v3 = v4;
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      result = sub_17A8EF8(*(a1 + 96));
      if (!result)
      {
        return result;
      }

      v6 = *(a1 + 40);
    }

    if ((v6 & 2) == 0)
    {
      return 1;
    }

    result = sub_17D78EC(*(a1 + 104));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_180708C(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {

    return sub_182EE00(a1 + 40);
  }

  return result;
}

uint64_t sub_18070D8(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 56);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_17D78EC(*(*(a1 + 64) + 8 * v3));
      v3 = v4;
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    v6 = *(a1 + 40);
    if ((v6 & 2) != 0)
    {
      result = sub_17A8EF8(*(a1 + 176));
      if (!result)
      {
        return result;
      }

      v6 = *(a1 + 40);
    }

    if ((v6 & 4) == 0)
    {
      return 1;
    }

    result = sub_195228C(*(a1 + 184) + 16);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_1807160(uint64_t a1)
{
  if (!sub_195228C(a1 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 48);
  do
  {
    v3 = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_17A8EF8(*(*(a1 + 56) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3;
}

BOOL sub_18071C8(uint64_t a1)
{
  if ((*(a1 + 16) & 4) == 0)
  {
    return 1;
  }

  result = sub_16E5890(*(a1 + 40));
  if (result)
  {
    return 1;
  }

  return result;
}

BOOL sub_18071F8(uint64_t a1)
{
  v2 = *(a1 + 24);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_195228C(*(*(a1 + 32) + 8 * v2) + 16);
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

uint64_t sub_1807254(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    result = sub_17DDD30(a1 + 48);
    if (result)
    {
      if ((*(a1 + 40) & 1) == 0)
      {
        return 1;
      }

      result = sub_17D78EC(*(a1 + 72));
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_18072A4(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      result = sub_17A8EF8(*(a1 + 48));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 2) == 0)
    {
      return 1;
    }

    result = sub_144F560(*(a1 + 56));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_18072FC(uint64_t a1)
{
  if ((*(a1 + 16) & 8) == 0)
  {
    return 1;
  }

  result = sub_17DEE14(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

BOOL sub_180732C(uint64_t a1)
{
  if (!sub_195228C(a1 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 56);
  do
  {
    v3 = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_182CC40(*(*(a1 + 64) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3;
}

BOOL sub_1807394(uint64_t a1)
{
  v2 = *(a1 + 24);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_195228C(*(*(a1 + 32) + 8 * v2) + 16);
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

BOOL sub_18073F0(uint64_t a1)
{
  if (!sub_195228C(a1 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 80);
  do
  {
    v3 = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_184A4EC(*(*(a1 + 88) + 8 * v2));
    v2 = v4;
  }

  while (v5);
  return v3;
}

BOOL sub_1807458(uint64_t a1)
{
  v2 = *(a1 + 32);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_185C9CC(*(*(a1 + 40) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

BOOL sub_18074B0(uint64_t a1)
{
  if (!sub_195228C(a1 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 56);
  do
  {
    v3 = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_195228C(*(*(a1 + 64) + 8 * v2) + 16);
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3;
}

BOOL sub_180751C(uint64_t a1)
{
  if (!sub_195228C(a1 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 56);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_18283C8(*(*(a1 + 64) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v7 = *(a1 + 80);
  do
  {
    v5 = v7 < 1;
    if (v7 < 1)
    {
      break;
    }

    v8 = v7 - 1;
    v9 = sub_17A8EF8(*(*(a1 + 88) + 8 * v7));
    v7 = v8;
  }

  while ((v9 & 1) != 0);
  return v5;
}

uint64_t sub_18075A8(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    if ((*(a1 + 40) & 8) == 0)
    {
      return 1;
    }

    result = sub_195228C(*(a1 + 72) + 16);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_18075F0(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    if ((*(a1 + 40) & 1) == 0)
    {
      return 1;
    }

    result = sub_17A8EF8(*(a1 + 48));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_180763C(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 56);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_17A8EF8(*(*(a1 + 64) + 8 * v3));
      v3 = v4;
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    if ((*(a1 + 40) & 1) == 0)
    {
      return 1;
    }

    result = sub_17A8EF8(*(a1 + 72));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_18076AC(uint64_t a1)
{
  if (!sub_195228C(a1 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 56);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_17A8EF8(*(*(a1 + 64) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v5 = *(a1 + 80);
  while (v5 >= 1)
  {
    v6 = v5 - 1;
    v7 = sub_17A8EF8(*(*(a1 + 88) + 8 * v5));
    v5 = v6;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *(a1 + 104);
  do
  {
    v8 = v10 < 1;
    if (v10 < 1)
    {
      break;
    }

    v11 = v10 - 1;
    v12 = sub_17A8EF8(*(*(a1 + 112) + 8 * v10));
    v10 = v11;
  }

  while ((v12 & 1) != 0);
  return v8;
}

uint64_t sub_1807760(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    if ((*(a1 + 40) & 1) == 0)
    {
      return 1;
    }

    result = sub_144F560(*(a1 + 48));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_18077AC(uint64_t a1)
{
  if (!sub_195228C(a1 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 48);
  do
  {
    v3 = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_195228C(*(*(a1 + 56) + 8 * v2) + 16);
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3;
}

uint64_t sub_1807818(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    if ((*(a1 + 40) & 1) == 0)
    {
      return 1;
    }

    result = sub_17A8EF8(*(a1 + 48));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_180785C(uint64_t a1)
{
  if (!sub_195228C(a1 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 48);
  do
  {
    v3 = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_184DE18(*(*(a1 + 56) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3;
}

uint64_t *sub_18078DC(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t *sub_18078EC(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t *sub_18078FC(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t *sub_180790C(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t *sub_180791C(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_180792C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_27101D8;
  sub_194F82C(a1 + 16, a2);
  bzero((a1 + 64), 0x330uLL);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  return a1;
}

void sub_18079A0(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_18079D0(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_5;
    }
  }

  else if (v4)
  {
    goto LABEL_5;
  }

  sub_1807A5C(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t (***sub_1807A5C(uint64_t (***result)()))()
{
  if (result != &off_2785290)
  {
    v1 = result;
    v2 = result[8];
    if (v2)
    {
      sub_1798FE8(v2);
      operator delete();
    }

    v3 = v1[9];
    if (v3)
    {
      sub_179EC18(v3);
      operator delete();
    }

    v4 = v1[10];
    if (v4)
    {
      sub_179F71C(v4);
      operator delete();
    }

    v5 = v1[11];
    if (v5)
    {
      sub_17A095C(v5);
      operator delete();
    }

    v6 = v1[12];
    if (v6)
    {
      sub_17A29A4(v6);
      operator delete();
    }

    v7 = v1[13];
    if (v7)
    {
      sub_17BD5AC(v7);
      operator delete();
    }

    v8 = v1[14];
    if (v8)
    {
      sub_17BEFD4(v8);
      operator delete();
    }

    v9 = v1[15];
    if (v9)
    {
      sub_17C4FB0(v9);
      operator delete();
    }

    v10 = v1[16];
    if (v10)
    {
      sub_17C3C64(v10);
      operator delete();
    }

    v11 = v1[17];
    if (v11)
    {
      sub_17B452C(v11);
      operator delete();
    }

    v12 = v1[18];
    if (v12)
    {
      sub_17AB200(v12);
      operator delete();
    }

    v13 = v1[19];
    if (v13)
    {
      sub_17C96C4(v13);
      operator delete();
    }

    v14 = v1[20];
    if (v14)
    {
      sub_17CA8FC(v14);
      operator delete();
    }

    v15 = v1[21];
    if (v15)
    {
      sub_17CB2A8(v15);
      operator delete();
    }

    v16 = v1[22];
    if (v16)
    {
      sub_17CD6BC(v16);
      operator delete();
    }

    v17 = v1[23];
    if (v17)
    {
      sub_17CDF14(v17);
      operator delete();
    }

    v18 = v1[24];
    if (v18)
    {
      sub_17B4DD0(v18);
      operator delete();
    }

    v19 = v1[25];
    if (v19)
    {
      sub_17CEE78(v19);
      operator delete();
    }

    v20 = v1[26];
    if (v20)
    {
      sub_17CF9F4(v20);
      operator delete();
    }

    v21 = v1[27];
    if (v21)
    {
      sub_17D5070(v21);
      operator delete();
    }

    v22 = v1[28];
    if (v22)
    {
      sub_17B578C(v22);
      operator delete();
    }

    v23 = v1[29];
    if (v23)
    {
      sub_17BC4E8(v23);
      operator delete();
    }

    v24 = v1[30];
    if (v24)
    {
      sub_17D8750(v24);
      operator delete();
    }

    v25 = v1[31];
    if (v25)
    {
      sub_17B0C78(v25);
      operator delete();
    }

    v26 = v1[32];
    if (v26)
    {
      sub_17DBD80(v26);
      operator delete();
    }

    v27 = v1[33];
    if (v27)
    {
      sub_17DCE04(v27);
      operator delete();
    }

    v28 = v1[34];
    if (v28)
    {
      sub_17E34BC(v28);
      operator delete();
    }

    v29 = v1[35];
    if (v29)
    {
      sub_17A3344(v29);
      operator delete();
    }

    v30 = v1[36];
    if (v30)
    {
      sub_17A46FC(v30);
      operator delete();
    }

    v31 = v1[37];
    if (v31)
    {
      sub_17A5764(v31);
      operator delete();
    }

    v32 = v1[38];
    if (v32)
    {
      sub_17A9E0C(v32);
      operator delete();
    }

    v33 = v1[39];
    if (v33)
    {
      sub_17C0AF0(v33);
      operator delete();
    }

    v34 = v1[40];
    if (v34)
    {
      sub_17E6E5C(v34);
      operator delete();
    }

    v35 = v1[41];
    if (v35)
    {
      sub_17E777C(v35);
      operator delete();
    }

    v36 = v1[42];
    if (v36)
    {
      sub_17E8BC0(v36);
      operator delete();
    }

    v37 = v1[43];
    if (v37)
    {
      sub_17EA7A8(v37);
      operator delete();
    }

    v38 = v1[44];
    if (v38)
    {
      sub_1869698(v38);
      operator delete();
    }

    v39 = v1[45];
    if (v39)
    {
      sub_17EB638(v39);
      operator delete();
    }

    v40 = v1[46];
    if (v40)
    {
      sub_17ED840(v40);
      operator delete();
    }

    v41 = v1[47];
    if (v41)
    {
      sub_17EDF6C(v41);
      operator delete();
    }

    v42 = v1[48];
    if (v42)
    {
      sub_17EE90C(v42);
      operator delete();
    }

    v43 = v1[49];
    if (v43)
    {
      sub_17EBE8C(v43);
      operator delete();
    }

    v44 = v1[50];
    if (v44)
    {
      sub_17EC4C0(v44);
      operator delete();
    }

    v45 = v1[51];
    if (v45)
    {
      sub_19222DC(v45);
      operator delete();
    }

    v46 = v1[52];
    if (v46)
    {
      sub_17ECFA0(v46);
      operator delete();
    }

    v47 = v1[53];
    if (v47)
    {
      sub_17E5B04(v47);
      operator delete();
    }

    v48 = v1[54];
    if (v48)
    {
      sub_17E6654(v48);
      operator delete();
    }

    v49 = v1[55];
    if (v49)
    {
      sub_17C7F4C(v49);
      operator delete();
    }

    v50 = v1[56];
    if (v50)
    {
      sub_17C16E4(v50);
      operator delete();
    }

    v51 = v1[57];
    if (v51)
    {
      sub_13938E4(v51);
      operator delete();
    }

    v52 = v1[58];
    if (v52)
    {
      sub_191CC2C(v52);
      operator delete();
    }

    v53 = v1[59];
    if (v53)
    {
      sub_17EEABC(v53);
      operator delete();
    }

    v54 = v1[60];
    if (v54)
    {
      sub_179D3C0(v54);
      operator delete();
    }

    v55 = v1[61];
    if (v55)
    {
      sub_17F23BC(v55);
      operator delete();
    }

    v56 = v1[62];
    if (v56)
    {
      sub_191CDCC(v56);
      operator delete();
    }

    v57 = v1[63];
    if (v57)
    {
      sub_185466C(v57);
      operator delete();
    }

    v58 = v1[64];
    if (v58)
    {
      sub_1854A24(v58);
      operator delete();
    }

    v59 = v1[65];
    if (v59)
    {
      sub_1854DDC(v59);
      operator delete();
    }

    v60 = v1[66];
    if (v60)
    {
      sub_1855194(v60);
      operator delete();
    }

    v61 = v1[67];
    if (v61)
    {
      sub_185554C(v61);
      operator delete();
    }

    v62 = v1[68];
    if (v62)
    {
      sub_1855908(v62);
      operator delete();
    }

    v63 = v1[69];
    if (v63)
    {
      sub_1856E0C(v63);
      operator delete();
    }

    v64 = v1[70];
    if (v64)
    {
      sub_18573B8(v64);
      operator delete();
    }

    v65 = v1[71];
    if (v65)
    {
      sub_185777C(v65);
      operator delete();
    }

    v66 = v1[72];
    if (v66)
    {
      sub_1857F84(v66);
      operator delete();
    }

    v67 = v1[73];
    if (v67)
    {
      sub_17F4FE4(v67);
      operator delete();
    }

    v68 = v1[74];
    if (v68)
    {
      sub_1858340(v68);
      operator delete();
    }

    v69 = v1[75];
    if (v69)
    {
      sub_185A398(v69);
      operator delete();
    }

    v70 = v1[76];
    if (v70)
    {
      sub_18561C4(v70);
      operator delete();
    }

    v71 = v1[77];
    if (v71)
    {
      sub_18587BC(v71);
      operator delete();
    }

    v72 = v1[78];
    if (v72)
    {
      sub_185A164(v72);
      operator delete();
    }

    v73 = v1[79];
    if (v73)
    {
      sub_17CDB98(v73);
      operator delete();
    }

    v74 = v1[80];
    if (v74)
    {
      sub_191CF6C(v74);
      operator delete();
    }

    v75 = v1[81];
    if (v75)
    {
      sub_1856698(v75);
      operator delete();
    }

    v76 = v1[82];
    if (v76)
    {
      sub_182F694(v76);
      operator delete();
    }

    v77 = v1[83];
    if (v77)
    {
      sub_17D8ECC(v77);
      operator delete();
    }

    v78 = v1[84];
    if (v78)
    {
      sub_1856A50(v78);
      operator delete();
    }

    v79 = v1[85];
    if (v79)
    {
      sub_17D03DC(v79);
      operator delete();
    }

    v80 = v1[86];
    if (v80)
    {
      sub_17D28B8(v80);
      operator delete();
    }

    v81 = v1[87];
    if (v81)
    {
      sub_17D33E8(v81);
      operator delete();
    }

    v82 = v1[88];
    if (v82)
    {
      sub_182DCE0(v82);
      operator delete();
    }

    v83 = v1[89];
    if (v83)
    {
      sub_185BBB4(v83);
      operator delete();
    }

    v84 = v1[90];
    if (v84)
    {
      sub_17BAC54(v84);
      operator delete();
    }

    v85 = v1[91];
    if (v85)
    {
      sub_17D18B0(v85);
      operator delete();
    }

    v86 = v1[92];
    if (v86)
    {
      sub_184B21C(v86);
      operator delete();
    }

    v87 = v1[93];
    if (v87)
    {
      sub_185D0A8(v87);
      operator delete();
    }

    v88 = v1[94];
    if (v88)
    {
      sub_17BB6C4(v88);
      operator delete();
    }

    v89 = v1[95];
    if (v89)
    {
      sub_17BB874(v89);
      operator delete();
    }

    v90 = v1[96];
    if (v90)
    {
      sub_1829088(v90);
      operator delete();
    }

    v91 = v1[97];
    if (v91)
    {
      sub_18203D4(v91);
      operator delete();
    }

    v92 = v1[98];
    if (v92)
    {
      sub_18253D4(v92);
      operator delete();
    }

    v93 = v1[99];
    if (v93)
    {
      sub_17DA1DC(v93);
      operator delete();
    }

    v94 = v1[100];
    if (v94)
    {
      sub_1820FD0(v94);
      operator delete();
    }

    v95 = v1[101];
    if (v95)
    {
      sub_1821F64(v95);
      operator delete();
    }

    v96 = v1[102];
    if (v96)
    {
      sub_1822DD4(v96);
      operator delete();
    }

    v97 = v1[103];
    if (v97)
    {
      sub_1823734(v97);
      operator delete();
    }

    v98 = v1[104];
    if (v98)
    {
      sub_181F940(v98);
      operator delete();
    }

    v99 = v1[105];
    if (v99)
    {
      sub_1824058(v99);
      operator delete();
    }

    v100 = v1[106];
    if (v100)
    {
      sub_17C6814(v100);
      operator delete();
    }

    v101 = v1[107];
    if (v101)
    {
      sub_17C7418(v101);
      operator delete();
    }

    v102 = v1[108];
    if (v102)
    {
      sub_1830064(v102);
      operator delete();
    }

    result = v1[109];
    if (result)
    {
      sub_1826C24(result);

      operator delete();
    }
  }

  return result;
}

void sub_18083C4(uint64_t a1)
{
  sub_18079D0(a1);

  operator delete();
}

uint64_t sub_18083FC(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 40);
  if (!v3)
  {
    goto LABEL_11;
  }

  if (v3)
  {
    result = sub_179909C(*(a1 + 64));
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_23;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = sub_179ECCC(*(a1 + 72));
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = sub_179F7D0(*(a1 + 80));
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = sub_17A0A10(*(a1 + 88));
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_26:
    result = sub_17BD660(*(a1 + 104));
    if ((v3 & 0x40) == 0)
    {
LABEL_9:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_25:
  result = sub_17A2A58(*(a1 + 96));
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_26;
  }

LABEL_8:
  if ((v3 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_27:
  result = sub_17BF094(*(a1 + 112));
  if ((v3 & 0x80) != 0)
  {
LABEL_10:
    result = sub_17C5070(*(a1 + 120));
  }

LABEL_11:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_41;
  }

  if ((v3 & 0x100) != 0)
  {
    result = sub_17C3D18(*(a1 + 128));
  }

  if ((v3 & 0x200) != 0)
  {
    v4 = *(a1 + 136);
    v5 = *(v4 + 8);
    result = v4 + 8;
    if (v5)
    {
      result = sub_1957EA8(result);
    }
  }

  if ((v3 & 0x400) != 0)
  {
    result = sub_17AB328(*(a1 + 144));
    if ((v3 & 0x800) == 0)
    {
LABEL_19:
      if ((v3 & 0x1000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }
  }

  else if ((v3 & 0x800) == 0)
  {
    goto LABEL_19;
  }

  result = sub_17C9894(*(a1 + 152));
  if ((v3 & 0x1000) == 0)
  {
    goto LABEL_33;
  }

LABEL_31:
  v6 = *(a1 + 160);
  v7 = *(v6 + 8);
  result = v6 + 8;
  if (v7)
  {
    result = sub_1957EA8(result);
  }

LABEL_33:
  if ((v3 & 0x2000) != 0)
  {
    result = sub_17CB364(*(a1 + 168));
    if ((v3 & 0x4000) == 0)
    {
LABEL_35:
      if ((v3 & 0x8000) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_39;
    }
  }

  else if ((v3 & 0x4000) == 0)
  {
    goto LABEL_35;
  }

  result = sub_17CD770(*(a1 + 176));
  if ((v3 & 0x8000) == 0)
  {
    goto LABEL_41;
  }

LABEL_39:
  v8 = *(a1 + 184);
  v9 = *(v8 + 8);
  result = v8 + 8;
  if (v9)
  {
    result = sub_1957EA8(result);
  }

LABEL_41:
  if ((v3 & 0xFF0000) != 0)
  {
    if ((v3 & 0x10000) != 0)
    {
      v10 = *(a1 + 192);
      v11 = *(v10 + 8);
      result = v10 + 8;
      if (v11)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v3 & 0x20000) != 0)
    {
      v12 = *(a1 + 200);
      v13 = *(v12 + 8);
      result = v12 + 8;
      if (v13)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v3 & 0x40000) != 0)
    {
      v14 = *(a1 + 208);
      v15 = *(v14 + 8);
      result = v14 + 8;
      if (v15)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v3 & 0x80000) != 0)
    {
      v16 = *(a1 + 216);
      v17 = *(v16 + 8);
      result = v16 + 8;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v17)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v3 & 0x100000) != 0)
    {
      v18 = *(a1 + 224);
      v19 = *(v18 + 8);
      result = v18 + 8;
      if (v19)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v3 & 0x200000) != 0)
    {
      v20 = *(a1 + 232);
      v21 = *(v20 + 8);
      result = v20 + 8;
      if (v21)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v3 & 0x400000) != 0)
    {
      result = sub_17D8834(*(a1 + 240));
    }

    if ((v3 & 0x800000) != 0)
    {
      v22 = *(a1 + 248);
      v23 = *(v22 + 8);
      result = v22 + 8;
      if (v23)
      {
        result = sub_1957EA8(result);
      }
    }
  }

  if (HIBYTE(v3))
  {
    if ((v3 & 0x1000000) != 0)
    {
      v24 = *(a1 + 256);
      v25 = *(v24 + 8);
      result = v24 + 8;
      if (v25)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v3 & 0x2000000) != 0)
    {
      v26 = *(a1 + 264);
      v27 = *(v26 + 8);
      result = v26 + 8;
      *(result + 8) = 0;
      if (v27)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v3 & 0x4000000) != 0)
    {
      result = sub_17E3570(*(a1 + 272));
      if ((v3 & 0x8000000) == 0)
      {
LABEL_74:
        if ((v3 & 0x10000000) == 0)
        {
LABEL_80:
          if ((v3 & 0x20000000) != 0)
          {
            v30 = *(a1 + 296);
            v31 = *(v30 + 8);
            result = v30 + 8;
            if (v31)
            {
              result = sub_1957EA8(result);
            }
          }

          if ((v3 & 0x40000000) != 0)
          {
            v32 = *(a1 + 304);
            v33 = *(v32 + 8);
            result = v32 + 8;
            if (v33)
            {
              result = sub_1957EA8(result);
            }
          }

          if ((v3 & 0x80000000) != 0)
          {
            result = sub_17C0BB0(*(a1 + 312));
          }

          goto LABEL_88;
        }

LABEL_78:
        v28 = *(a1 + 288);
        v29 = *(v28 + 8);
        result = v28 + 8;
        if (v29)
        {
          result = sub_1957EA8(result);
        }

        goto LABEL_80;
      }
    }

    else if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_74;
    }

    result = sub_17A33F8(*(a1 + 280));
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_78;
  }

LABEL_88:
  v34 = *(a1 + 44);
  if (v34)
  {
    if (v34)
    {
      v35 = *(a1 + 320);
      v36 = *(v35 + 8);
      result = v35 + 8;
      if (v36)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v34 & 2) != 0)
    {
      v37 = *(a1 + 328);
      v38 = *(v37 + 8);
      result = v37 + 8;
      if (v38)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v34 & 4) != 0)
    {
      v39 = *(a1 + 336);
      v40 = *(v39 + 8);
      result = v39 + 8;
      if (v40)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v34 & 8) != 0)
    {
      v41 = *(a1 + 344);
      v42 = *(v41 + 8);
      result = v41 + 8;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v42)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v34 & 0x10) != 0)
    {
      v43 = *(a1 + 352);
      v44 = *(v43 + 8);
      result = v43 + 8;
      if (v44)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v34 & 0x20) != 0)
    {
      v45 = *(a1 + 360);
      v46 = *(v45 + 8);
      result = v45 + 8;
      if (v46)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v34 & 0x40) != 0)
    {
      v47 = *(a1 + 368);
      v48 = *(v47 + 8);
      result = v47 + 8;
      if (v48)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v34 & 0x80) != 0)
    {
      v49 = *(a1 + 376);
      v50 = *(v49 + 8);
      result = v49 + 8;
      if (v50)
      {
        result = sub_1957EA8(result);
      }
    }
  }

  if ((v34 & 0xFF00) != 0)
  {
    if ((v34 & 0x100) != 0)
    {
      v51 = *(a1 + 384);
      v52 = *(v51 + 8);
      result = v51 + 8;
      if (v52)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v34 & 0x200) != 0)
    {
      v53 = *(a1 + 392);
      v54 = *(v53 + 8);
      result = v53 + 8;
      if (v54)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v34 & 0x400) != 0)
    {
      v55 = *(a1 + 400);
      v56 = *(v55 + 8);
      result = v55 + 8;
      if (v56)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v34 & 0x800) != 0)
    {
      v57 = *(a1 + 408);
      v58 = *(v57 + 8);
      result = v57 + 8;
      if (v58)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v34 & 0x1000) != 0)
    {
      v59 = *(a1 + 416);
      v60 = *(v59 + 8);
      result = v59 + 8;
      if (v60)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v34 & 0x2000) != 0)
    {
      result = sub_17E5BB8(*(a1 + 424));
      if ((v34 & 0x4000) == 0)
      {
LABEL_131:
        if ((v34 & 0x8000) == 0)
        {
          goto LABEL_133;
        }

        goto LABEL_132;
      }
    }

    else if ((v34 & 0x4000) == 0)
    {
      goto LABEL_131;
    }

    result = sub_17E6708(*(a1 + 432));
    if ((v34 & 0x8000) != 0)
    {
LABEL_132:
      result = sub_17C8000(*(a1 + 440));
    }
  }

LABEL_133:
  if ((v34 & 0xFF0000) == 0)
  {
    goto LABEL_158;
  }

  if ((v34 & 0x10000) == 0)
  {
    if ((v34 & 0x20000) == 0)
    {
      goto LABEL_136;
    }

LABEL_142:
    result = sub_1393920(*(a1 + 456));
    if ((v34 & 0x40000) == 0)
    {
      goto LABEL_145;
    }

    goto LABEL_143;
  }

  result = sub_17C1798(*(a1 + 448));
  if ((v34 & 0x20000) != 0)
  {
    goto LABEL_142;
  }

LABEL_136:
  if ((v34 & 0x40000) == 0)
  {
    goto LABEL_145;
  }

LABEL_143:
  v61 = *(a1 + 464);
  v62 = *(v61 + 8);
  result = v61 + 8;
  if (v62)
  {
    result = sub_1957EA8(result);
  }

LABEL_145:
  if ((v34 & 0x80000) != 0)
  {
    v63 = *(a1 + 472);
    v64 = *(v63 + 8);
    result = v63 + 8;
    if (v64)
    {
      result = sub_1957EA8(result);
    }
  }

  if ((v34 & 0x100000) == 0)
  {
    if ((v34 & 0x200000) == 0)
    {
      goto LABEL_150;
    }

LABEL_153:
    result = sub_17F2470(*(a1 + 488));
    if ((v34 & 0x400000) == 0)
    {
      goto LABEL_156;
    }

LABEL_154:
    v65 = *(a1 + 496);
    v66 = *(v65 + 8);
    result = v65 + 8;
    if (v66)
    {
      result = sub_1957EA8(result);
    }

    goto LABEL_156;
  }

  result = sub_179D480(*(a1 + 480));
  if ((v34 & 0x200000) != 0)
  {
    goto LABEL_153;
  }

LABEL_150:
  if ((v34 & 0x400000) != 0)
  {
    goto LABEL_154;
  }

LABEL_156:
  if ((v34 & 0x800000) != 0)
  {
    result = sub_1808C04(*(a1 + 504));
  }

LABEL_158:
  if (!HIBYTE(v34))
  {
    goto LABEL_167;
  }

  if ((v34 & 0x1000000) != 0)
  {
    result = sub_1808C54(*(a1 + 512));
    if ((v34 & 0x2000000) == 0)
    {
LABEL_161:
      if ((v34 & 0x4000000) == 0)
      {
        goto LABEL_162;
      }

      goto LABEL_263;
    }
  }

  else if ((v34 & 0x2000000) == 0)
  {
    goto LABEL_161;
  }

  result = sub_1808CA4(*(a1 + 520));
  if ((v34 & 0x4000000) == 0)
  {
LABEL_162:
    if ((v34 & 0x8000000) == 0)
    {
      goto LABEL_163;
    }

    goto LABEL_264;
  }

LABEL_263:
  result = sub_1808CF4(*(a1 + 528));
  if ((v34 & 0x8000000) == 0)
  {
LABEL_163:
    if ((v34 & 0x10000000) == 0)
    {
      goto LABEL_164;
    }

    goto LABEL_265;
  }

LABEL_264:
  result = sub_1808D44(*(a1 + 536));
  if ((v34 & 0x10000000) == 0)
  {
LABEL_164:
    if ((v34 & 0x20000000) == 0)
    {
      goto LABEL_165;
    }

    goto LABEL_266;
  }

LABEL_265:
  result = sub_1808D94(*(a1 + 544));
  if ((v34 & 0x20000000) == 0)
  {
LABEL_165:
    if ((v34 & 0x40000000) == 0)
    {
      goto LABEL_166;
    }

LABEL_267:
    result = sub_1808E64(*(a1 + 560));
    if ((v34 & 0x80000000) == 0)
    {
      goto LABEL_167;
    }

    goto LABEL_268;
  }

LABEL_266:
  result = sub_1808DFC(*(a1 + 552));
  if ((v34 & 0x40000000) != 0)
  {
    goto LABEL_267;
  }

LABEL_166:
  if ((v34 & 0x80000000) == 0)
  {
    goto LABEL_167;
  }

LABEL_268:
  result = sub_1808EB4(*(a1 + 568));
LABEL_167:
  v67 = *(a1 + 48);
  if (!v67)
  {
    goto LABEL_186;
  }

  if (v67)
  {
    result = sub_1808F48(*(a1 + 576));
    if ((v67 & 2) == 0)
    {
LABEL_170:
      if ((v67 & 4) == 0)
      {
        goto LABEL_171;
      }

      goto LABEL_178;
    }
  }

  else if ((v67 & 2) == 0)
  {
    goto LABEL_170;
  }

  result = sub_17F5098(*(a1 + 584));
  if ((v67 & 4) == 0)
  {
LABEL_171:
    if ((v67 & 8) == 0)
    {
      goto LABEL_172;
    }

    goto LABEL_179;
  }

LABEL_178:
  result = sub_1808F98(*(a1 + 592));
  if ((v67 & 8) == 0)
  {
LABEL_172:
    if ((v67 & 0x10) == 0)
    {
      goto LABEL_173;
    }

    goto LABEL_180;
  }

LABEL_179:
  result = sub_1808FF0(*(a1 + 600));
  if ((v67 & 0x10) == 0)
  {
LABEL_173:
    if ((v67 & 0x20) == 0)
    {
      goto LABEL_174;
    }

LABEL_181:
    result = sub_18090BC(*(a1 + 616));
    if ((v67 & 0x40) == 0)
    {
      goto LABEL_184;
    }

LABEL_182:
    v68 = *(a1 + 624);
    v69 = *(v68 + 8);
    result = v68 + 8;
    if (v69)
    {
      result = sub_1957EA8(result);
    }

    goto LABEL_184;
  }

LABEL_180:
  result = sub_1809040(*(a1 + 608));
  if ((v67 & 0x20) != 0)
  {
    goto LABEL_181;
  }

LABEL_174:
  if ((v67 & 0x40) != 0)
  {
    goto LABEL_182;
  }

LABEL_184:
  if ((v67 & 0x80) != 0)
  {
    result = sub_17CDC4C(*(a1 + 632));
  }

LABEL_186:
  if ((v67 & 0xFF00) == 0)
  {
    goto LABEL_208;
  }

  if ((v67 & 0x100) != 0)
  {
    v70 = *(a1 + 640);
    v71 = *(v70 + 8);
    result = v70 + 8;
    if (v71)
    {
      result = sub_1957EA8(result);
    }
  }

  if ((v67 & 0x200) != 0)
  {
    result = sub_180911C(*(a1 + 648));
    if ((v67 & 0x400) == 0)
    {
LABEL_192:
      if ((v67 & 0x800) == 0)
      {
        goto LABEL_193;
      }

      goto LABEL_198;
    }
  }

  else if ((v67 & 0x400) == 0)
  {
    goto LABEL_192;
  }

  result = sub_180916C(*(a1 + 656));
  if ((v67 & 0x800) == 0)
  {
LABEL_193:
    if ((v67 & 0x1000) == 0)
    {
      goto LABEL_194;
    }

LABEL_199:
    result = sub_18091BC(*(a1 + 672));
    if ((v67 & 0x2000) == 0)
    {
      goto LABEL_202;
    }

LABEL_200:
    v72 = *(a1 + 680);
    v73 = *(v72 + 8);
    result = v72 + 8;
    if (v73)
    {
      result = sub_1957EA8(result);
    }

    goto LABEL_202;
  }

LABEL_198:
  result = sub_17D8FB8(*(a1 + 664));
  if ((v67 & 0x1000) != 0)
  {
    goto LABEL_199;
  }

LABEL_194:
  if ((v67 & 0x2000) != 0)
  {
    goto LABEL_200;
  }

LABEL_202:
  if ((v67 & 0x4000) != 0)
  {
    v74 = *(a1 + 688);
    v75 = *(v74 + 8);
    result = v74 + 8;
    if (v75)
    {
      result = sub_1957EA8(result);
    }
  }

  if ((v67 & 0x8000) != 0)
  {
    v76 = *(a1 + 696);
    v77 = *(v76 + 8);
    result = v76 + 8;
    if (v77)
    {
      result = sub_1957EA8(result);
    }
  }

LABEL_208:
  if ((v67 & 0xFF0000) != 0)
  {
    if ((v67 & 0x10000) != 0)
    {
      result = sub_180920C(*(a1 + 704));
    }

    if ((v67 & 0x20000) != 0)
    {
      v78 = *(a1 + 712);
      v79 = *(v78 + 8);
      result = v78 + 8;
      if (v79)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v67 & 0x40000) != 0)
    {
      v80 = *(a1 + 720);
      v81 = *(v80 + 8);
      result = v80 + 8;
      if (v81)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v67 & 0x80000) != 0)
    {
      v82 = *(a1 + 728);
      v83 = *(v82 + 8);
      result = v82 + 8;
      if (v83)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v67 & 0x100000) != 0)
    {
      v84 = *(a1 + 736);
      v85 = *(v84 + 8);
      result = v84 + 8;
      *(result + 8) = 0;
      if (v85)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v67 & 0x200000) != 0)
    {
      v86 = *(a1 + 744);
      v87 = *(v86 + 8);
      result = v86 + 8;
      if (v87)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v67 & 0x400000) != 0)
    {
      v88 = *(a1 + 752);
      v89 = *(v88 + 8);
      result = v88 + 8;
      if (v89)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v67 & 0x800000) != 0)
    {
      v90 = *(a1 + 760);
      v91 = *(v90 + 8);
      result = v90 + 8;
      if (v91)
      {
        result = sub_1957EA8(result);
      }
    }
  }

  if (HIBYTE(v67))
  {
    if ((v67 & 0x1000000) != 0)
    {
      result = sub_1809290(*(a1 + 768));
      if ((v67 & 0x2000000) == 0)
      {
LABEL_235:
        if ((v67 & 0x4000000) == 0)
        {
          goto LABEL_236;
        }

        goto LABEL_271;
      }
    }

    else if ((v67 & 0x2000000) == 0)
    {
      goto LABEL_235;
    }

    result = sub_18092E8(*(a1 + 776));
    if ((v67 & 0x4000000) == 0)
    {
LABEL_236:
      if ((v67 & 0x8000000) == 0)
      {
        goto LABEL_237;
      }

      goto LABEL_272;
    }

LABEL_271:
    result = sub_1809338(*(a1 + 784));
    if ((v67 & 0x8000000) == 0)
    {
LABEL_237:
      if ((v67 & 0x10000000) == 0)
      {
        goto LABEL_238;
      }

      goto LABEL_273;
    }

LABEL_272:
    result = sub_17DA294(*(a1 + 792));
    if ((v67 & 0x10000000) == 0)
    {
LABEL_238:
      if ((v67 & 0x20000000) == 0)
      {
        goto LABEL_239;
      }

      goto LABEL_274;
    }

LABEL_273:
    result = sub_1809388(*(a1 + 800));
    if ((v67 & 0x20000000) == 0)
    {
LABEL_239:
      if ((v67 & 0x40000000) == 0)
      {
        goto LABEL_240;
      }

      goto LABEL_275;
    }

LABEL_274:
    result = sub_18093D8(*(a1 + 808));
    if ((v67 & 0x40000000) == 0)
    {
LABEL_240:
      if ((v67 & 0x80000000) == 0)
      {
        goto LABEL_241;
      }

LABEL_276:
      result = sub_1809478(*(a1 + 824));
      goto LABEL_241;
    }

LABEL_275:
    result = sub_1809428(*(a1 + 816));
    if ((v67 & 0x80000000) == 0)
    {
      goto LABEL_241;
    }

    goto LABEL_276;
  }

LABEL_241:
  v92 = *(a1 + 52);
  if ((v92 & 0x3F) == 0)
  {
    goto LABEL_257;
  }

  if ((v92 & 1) == 0)
  {
    if ((v92 & 2) == 0)
    {
      goto LABEL_244;
    }

LABEL_247:
    result = sub_1809520(*(a1 + 840));
    if ((v92 & 4) == 0)
    {
      goto LABEL_250;
    }

LABEL_248:
    v93 = *(a1 + 848);
    v94 = *(v93 + 8);
    result = v93 + 8;
    if (v94)
    {
      result = sub_1957EA8(result);
    }

    goto LABEL_250;
  }

  result = sub_18094C8(*(a1 + 832));
  if ((v92 & 2) != 0)
  {
    goto LABEL_247;
  }

LABEL_244:
  if ((v92 & 4) != 0)
  {
    goto LABEL_248;
  }

LABEL_250:
  if ((v92 & 8) != 0)
  {
    v95 = *(a1 + 856);
    v96 = *(v95 + 8);
    result = v95 + 8;
    if (v96)
    {
      result = sub_1957EA8(result);
    }
  }

  if ((v92 & 0x10) != 0)
  {
    result = sub_1809570(*(a1 + 864));
  }

  if ((v92 & 0x20) != 0)
  {
    result = sub_18095C0(*(a1 + 872));
  }

LABEL_257:
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v98 = *(a1 + 8);
  v97 = (a1 + 8);
  if (v98)
  {

    return sub_1957EA8(v97);
  }

  return result;
}

unsigned __int8 *sub_1808C04(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

unsigned __int8 *sub_1808C54(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

unsigned __int8 *sub_1808CA4(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

unsigned __int8 *sub_1808CF4(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

unsigned __int8 *sub_1808D44(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

unsigned __int8 *sub_1808D94(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  if ((*(a1 + 40) & 0x7F) != 0)
  {
    *(a1 + 56) = 0;
    *(a1 + 48) = 0;
  }

  v4 = *(a1 + 8);
  v3 = a1 + 8;
  *(v3 + 32) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

unsigned __int8 *sub_1808DFC(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  if ((*(a1 + 40) & 3) != 0)
  {
    *(a1 + 52) = 0;
    *(a1 + 48) = 0;
  }

  v4 = *(a1 + 8);
  v3 = a1 + 8;
  *(v3 + 32) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

unsigned __int8 *sub_1808E64(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_1808EB4(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 40);
  if ((v3 & 7) != 0)
  {
    if (v3)
    {
      result = sub_1792F80(*(a1 + 48));
      if ((v3 & 2) == 0)
      {
LABEL_4:
        if ((v3 & 4) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else if ((v3 & 2) == 0)
    {
      goto LABEL_4;
    }

    result = sub_1792F80(*(a1 + 56));
    if ((v3 & 4) != 0)
    {
LABEL_5:
      result = sub_1792FE8(*(a1 + 64));
    }
  }

LABEL_6:
  v5 = *(a1 + 8);
  v4 = a1 + 8;
  *(v4 + 64) = 0;
  *(v4 + 32) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

unsigned __int8 *sub_1808F48(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

unsigned __int8 *sub_1808F98(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v4 = *(a1 + 8);
  v3 = a1 + 8;
  *(v3 + 40) = 0;
  *(v3 + 32) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

unsigned __int8 *sub_1808FF0(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

unsigned __int8 *sub_1809040(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 6);
  if (v2 >= 1)
  {
    v3 = (*(result + 4) + 8);
    do
    {
      v4 = *v3++;
      result = sub_17A82BC(v4);
      --v2;
    }

    while (v2);
    *(v1 + 6) = 0;
  }

  v6 = v1[8];
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

unsigned __int8 *sub_18090BC(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t *sub_180910C(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

unsigned __int8 *sub_180911C(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

unsigned __int8 *sub_180916C(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

unsigned __int8 *sub_18091BC(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

unsigned __int8 *sub_180920C(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t *sub_180925C(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_180926C(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t *sub_1809280(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

unsigned __int8 *sub_1809290(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v4 = *(a1 + 8);
  v3 = a1 + 8;
  *(v3 + 40) = 0;
  *(v3 + 32) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

unsigned __int8 *sub_18092E8(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

unsigned __int8 *sub_1809338(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

unsigned __int8 *sub_1809388(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

unsigned __int8 *sub_18093D8(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

unsigned __int8 *sub_1809428(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

unsigned __int8 *sub_1809478(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

unsigned __int8 *sub_18094C8(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v4 = *(a1 + 8);
  v3 = a1 + 8;
  *(v3 + 40) = 0;
  *(v3 + 32) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

unsigned __int8 *sub_1809520(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

unsigned __int8 *sub_1809570(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

unsigned __int8 *sub_18095C0(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_1809610(uint64_t a1, char *a2, int32x2_t *a3)
{
  v324 = a2;
  if (sub_195ADC0(a3, &v324, a3[11].i32[1]))
  {
    return v324;
  }

  while (2)
  {
    v6 = v324 + 1;
    v7 = *v324;
    if (*v324 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v9 = sub_1958824(v324, v8 - 128);
        v7 = v10;
        v6 = v9;
      }

      else
      {
        v6 = v324 + 2;
      }
    }

    v324 = v6;
    switch(v7 >> 3)
    {
      case 1u:
        if (v7 != 10)
        {
          goto LABEL_620;
        }

        *(a1 + 40) |= 1u;
        v11 = *(a1 + 64);
        if (!v11)
        {
          v12 = *(a1 + 8);
          v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
          if (v12)
          {
            v13 = *v13;
          }

          v11 = sub_185D5B8(v13);
          *(a1 + 64) = v11;
          v6 = v324;
        }

        v14 = sub_2249E84(a3, v11, v6);
        goto LABEL_629;
      case 2u:
        if (v7 != 18)
        {
          goto LABEL_620;
        }

        *(a1 + 40) |= 2u;
        v167 = *(a1 + 72);
        if (!v167)
        {
          v168 = *(a1 + 8);
          v169 = (v168 & 0xFFFFFFFFFFFFFFFCLL);
          if (v168)
          {
            v169 = *v169;
          }

          v167 = sub_185D99C(v169);
          *(a1 + 72) = v167;
          v6 = v324;
        }

        v14 = sub_2249F14(a3, v167, v6);
        goto LABEL_629;
      case 3u:
        if (v7 != 26)
        {
          goto LABEL_620;
        }

        *(a1 + 40) |= 4u;
        v142 = *(a1 + 80);
        if (!v142)
        {
          v143 = *(a1 + 8);
          v144 = (v143 & 0xFFFFFFFFFFFFFFFCLL);
          if (v143)
          {
            v144 = *v144;
          }

          v142 = sub_185DA98(v144);
          *(a1 + 80) = v142;
          v6 = v324;
        }

        v14 = sub_2249FA4(a3, v142, v6);
        goto LABEL_629;
      case 4u:
        if (v7 != 34)
        {
          goto LABEL_620;
        }

        *(a1 + 40) |= 8u;
        v191 = *(a1 + 88);
        if (!v191)
        {
          v192 = *(a1 + 8);
          v193 = (v192 & 0xFFFFFFFFFFFFFFFCLL);
          if (v192)
          {
            v193 = *v193;
          }

          v191 = sub_185DB50(v193);
          *(a1 + 88) = v191;
          v6 = v324;
        }

        v14 = sub_224A034(a3, v191, v6);
        goto LABEL_629;
      case 5u:
        if (v7 != 42)
        {
          goto LABEL_620;
        }

        *(a1 + 40) |= 0x10u;
        v197 = *(a1 + 96);
        if (!v197)
        {
          v198 = *(a1 + 8);
          v199 = (v198 & 0xFFFFFFFFFFFFFFFCLL);
          if (v198)
          {
            v199 = *v199;
          }

          v197 = sub_185DD10(v199);
          *(a1 + 96) = v197;
          v6 = v324;
        }

        v14 = sub_224A0C4(a3, v197, v6);
        goto LABEL_629;
      case 6u:
        if (v7 != 50)
        {
          goto LABEL_620;
        }

        *(a1 + 40) |= 0x20u;
        v151 = *(a1 + 104);
        if (!v151)
        {
          v152 = *(a1 + 8);
          v153 = (v152 & 0xFFFFFFFFFFFFFFFCLL);
          if (v152)
          {
            v153 = *v153;
          }

          v151 = sub_185F2E8(v153);
          *(a1 + 104) = v151;
          v6 = v324;
        }

        v14 = sub_224A154(a3, v151, v6);
        goto LABEL_629;
      case 7u:
        if (v7 != 58)
        {
          goto LABEL_620;
        }

        *(a1 + 40) |= 0x40u;
        v170 = *(a1 + 112);
        if (!v170)
        {
          v171 = *(a1 + 8);
          v172 = (v171 & 0xFFFFFFFFFFFFFFFCLL);
          if (v171)
          {
            v172 = *v172;
          }

          v170 = sub_185F424(v172);
          *(a1 + 112) = v170;
          v6 = v324;
        }

        v14 = sub_224A1E4(a3, v170, v6);
        goto LABEL_629;
      case 8u:
        if (v7 != 66)
        {
          goto LABEL_620;
        }

        *(a1 + 40) |= 0x80u;
        v173 = *(a1 + 120);
        if (!v173)
        {
          v174 = *(a1 + 8);
          v175 = (v174 & 0xFFFFFFFFFFFFFFFCLL);
          if (v174)
          {
            v175 = *v175;
          }

          v173 = sub_185F980(v175);
          *(a1 + 120) = v173;
          v6 = v324;
        }

        v14 = sub_224A274(a3, v173, v6);
        goto LABEL_629;
      case 9u:
        if (v7 != 74)
        {
          goto LABEL_620;
        }

        *(a1 + 40) |= 0x100u;
        v215 = *(a1 + 128);
        if (!v215)
        {
          v216 = *(a1 + 8);
          v217 = (v216 & 0xFFFFFFFFFFFFFFFCLL);
          if (v216)
          {
            v217 = *v217;
          }

          v215 = sub_185F840(v217);
          *(a1 + 128) = v215;
          v6 = v324;
        }

        v14 = sub_224A304(a3, v215, v6);
        goto LABEL_629;
      case 0xAu:
        if (v7 != 82)
        {
          goto LABEL_620;
        }

        *(a1 + 40) |= 0x200u;
        v203 = *(a1 + 136);
        if (!v203)
        {
          v204 = *(a1 + 8);
          v205 = (v204 & 0xFFFFFFFFFFFFFFFCLL);
          if (v204)
          {
            v205 = *v205;
          }

          v203 = sub_185EA88(v205);
          *(a1 + 136) = v203;
          v6 = v324;
        }

        v14 = sub_224A394(a3, v203, v6);
        goto LABEL_629;
      case 0xBu:
        if (v7 != 90)
        {
          goto LABEL_620;
        }

        *(a1 + 40) |= 0x400u;
        v111 = *(a1 + 144);
        if (!v111)
        {
          v112 = *(a1 + 8);
          v113 = (v112 & 0xFFFFFFFFFFFFFFFCLL);
          if (v112)
          {
            v113 = *v113;
          }

          sub_185E5BC(v113);
          v111 = v114;
          *(a1 + 144) = v114;
          v6 = v324;
        }

        v14 = sub_224A428(a3, v111, v6);
        goto LABEL_629;
      case 0xCu:
        if (v7 != 98)
        {
          goto LABEL_620;
        }

        *(a1 + 40) |= 0x800u;
        v154 = *(a1 + 152);
        if (!v154)
        {
          v155 = *(a1 + 8);
          v156 = (v155 & 0xFFFFFFFFFFFFFFFCLL);
          if (v155)
          {
            v156 = *v156;
          }

          sub_185FEC4(v156);
          v154 = v157;
          *(a1 + 152) = v157;
          v6 = v324;
        }

        v14 = sub_224A4B8(a3, v154, v6);
        goto LABEL_629;
      case 0xDu:
        if (v7 != 106)
        {
          goto LABEL_620;
        }

        *(a1 + 40) |= 0x1000u;
        v136 = *(a1 + 160);
        if (!v136)
        {
          v137 = *(a1 + 8);
          v138 = (v137 & 0xFFFFFFFFFFFFFFFCLL);
          if (v137)
          {
            v138 = *v138;
          }

          v136 = sub_185FF78(v138);
          *(a1 + 160) = v136;
          v6 = v324;
        }

        v14 = sub_224A548(a3, v136, v6);
        goto LABEL_629;
      case 0xEu:
        if (v7 != 114)
        {
          goto LABEL_620;
        }

        *(a1 + 40) |= 0x2000u;
        v99 = *(a1 + 168);
        if (!v99)
        {
          v100 = *(a1 + 8);
          v101 = (v100 & 0xFFFFFFFFFFFFFFFCLL);
          if (v100)
          {
            v101 = *v101;
          }

          v99 = sub_186004C(v101);
          *(a1 + 168) = v99;
          v6 = v324;
        }

        v14 = sub_224A5DC(a3, v99, v6);
        goto LABEL_629;
      case 0xFu:
        if (v7 != 122)
        {
          goto LABEL_620;
        }

        *(a1 + 40) |= 0x4000u;
        v179 = *(a1 + 176);
        if (!v179)
        {
          v180 = *(a1 + 8);
          v181 = (v180 & 0xFFFFFFFFFFFFFFFCLL);
          if (v180)
          {
            v181 = *v181;
          }

          v179 = sub_1860160(v181);
          *(a1 + 176) = v179;
          v6 = v324;
        }

        v14 = sub_224A66C(a3, v179, v6);
        goto LABEL_629;
      case 0x10u:
        if (v7 != 130)
        {
          goto LABEL_620;
        }

        *(a1 + 40) |= 0x8000u;
        v182 = *(a1 + 184);
        if (!v182)
        {
          v183 = *(a1 + 8);
          v184 = (v183 & 0xFFFFFFFFFFFFFFFCLL);
          if (v183)
          {
            v184 = *v184;
          }

          v182 = sub_1860218(v184);
          *(a1 + 184) = v182;
          v6 = v324;
        }

        v14 = sub_224A6FC(a3, v182, v6);
        goto LABEL_629;
      case 0x14u:
        if (v7 != 162)
        {
          goto LABEL_620;
        }

        *(a1 + 40) |= 0x10000u;
        v224 = *(a1 + 192);
        if (!v224)
        {
          v225 = *(a1 + 8);
          v226 = (v225 & 0xFFFFFFFFFFFFFFFCLL);
          if (v225)
          {
            v226 = *v226;
          }

          v224 = sub_185EBA0(v226);
          *(a1 + 192) = v224;
          v6 = v324;
        }

        v14 = sub_224A790(a3, v224, v6);
        goto LABEL_629;
      case 0x15u:
        if (v7 != 170)
        {
          goto LABEL_620;
        }

        *(a1 + 40) |= 0x20000u;
        v218 = *(a1 + 200);
        if (!v218)
        {
          v219 = *(a1 + 8);
          v220 = (v219 & 0xFFFFFFFFFFFFFFFCLL);
          if (v219)
          {
            v220 = *v220;
          }

          v218 = sub_18603A8(v220);
          *(a1 + 200) = v218;
          v6 = v324;
        }

        v14 = sub_224A824(a3, v218, v6);
        goto LABEL_629;
      case 0x16u:
        if (v7 != 178)
        {
          goto LABEL_620;
        }

        *(a1 + 40) |= 0x40000u;
        v93 = *(a1 + 208);
        if (!v93)
        {
          v94 = *(a1 + 8);
          v95 = (v94 & 0xFFFFFFFFFFFFFFFCLL);
          if (v94)
          {
            v95 = *v95;
          }

          v93 = sub_186047C(v95);
          *(a1 + 208) = v93;
          v6 = v324;
        }

        v14 = sub_224A8B8(a3, v93, v6);
        goto LABEL_629;
      case 0x17u:
        if (v7 != 186)
        {
          goto LABEL_620;
        }

        *(a1 + 40) |= 0x80000u;
        v139 = *(a1 + 216);
        if (!v139)
        {
          v140 = *(a1 + 8);
          v141 = (v140 & 0xFFFFFFFFFFFFFFFCLL);
          if (v140)
          {
            v141 = *v141;
          }

          v139 = sub_18609BC(v141);
          *(a1 + 216) = v139;
          v6 = v324;
        }

        v14 = sub_224A94C(a3, v139, v6);
        goto LABEL_629;
      case 0x18u:
        if (v7 != 194)
        {
          goto LABEL_620;
        }

        *(a1 + 40) |= 0x100000u;
        v236 = *(a1 + 224);
        if (!v236)
        {
          v237 = *(a1 + 8);
          v238 = (v237 & 0xFFFFFFFFFFFFFFFCLL);
          if (v237)
          {
            v238 = *v238;
          }

          v236 = sub_185EC74(v238);
          *(a1 + 224) = v236;
          v6 = v324;
        }

        v14 = sub_224A9DC(a3, v236, v6);
        goto LABEL_629;
      case 0x19u:
        if (v7 != 202)
        {
          goto LABEL_620;
        }

        *(a1 + 40) |= 0x200000u;
        v96 = *(a1 + 232);
        if (!v96)
        {
          v97 = *(a1 + 8);
          v98 = (v97 & 0xFFFFFFFFFFFFFFFCLL);
          if (v97)
          {
            v98 = *v98;
          }

          v96 = sub_185F214(v98);
          *(a1 + 232) = v96;
          v6 = v324;
        }

        v14 = sub_224AA70(a3, v96, v6);
        goto LABEL_629;
      case 0x1Au:
        if (v7 != 210)
        {
          goto LABEL_620;
        }

        *(a1 + 40) |= 0x400000u;
        v130 = *(a1 + 240);
        if (!v130)
        {
          v131 = *(a1 + 8);
          v132 = (v131 & 0xFFFFFFFFFFFFFFFCLL);
          if (v131)
          {
            v132 = *v132;
          }

          v130 = sub_1860B80(v132);
          *(a1 + 240) = v130;
          v6 = v324;
        }

        v14 = sub_224AB04(a3, v130, v6);
        goto LABEL_629;
      case 0x1Bu:
        if (v7 != 218)
        {
          goto LABEL_620;
        }

        *(a1 + 40) |= 0x800000u;
        v108 = *(a1 + 248);
        if (!v108)
        {
          v109 = *(a1 + 8);
          v110 = (v109 & 0xFFFFFFFFFFFFFFFCLL);
          if (v109)
          {
            v110 = *v110;
          }

          v108 = sub_185E87C(v110);
          *(a1 + 248) = v108;
          v6 = v324;
        }

        v14 = sub_224AB94(a3, v108, v6);
        goto LABEL_629;
      case 0x1Cu:
        if (v7 != 226)
        {
          goto LABEL_620;
        }

        *(a1 + 40) |= 0x1000000u;
        v161 = *(a1 + 256);
        if (!v161)
        {
          v162 = *(a1 + 8);
          v163 = (v162 & 0xFFFFFFFFFFFFFFFCLL);
          if (v162)
          {
            v163 = *v163;
          }

          v161 = sub_1860EA8(v163);
          *(a1 + 256) = v161;
          v6 = v324;
        }

        v14 = sub_224AC28(a3, v161, v6);
        goto LABEL_629;
      case 0x1Du:
        if (v7 != 234)
        {
          goto LABEL_620;
        }

        *(a1 + 40) |= 0x2000000u;
        v102 = *(a1 + 264);
        if (!v102)
        {
          v103 = *(a1 + 8);
          v104 = (v103 & 0xFFFFFFFFFFFFFFFCLL);
          if (v103)
          {
            v104 = *v104;
          }

          v102 = sub_1861044(v104);
          *(a1 + 264) = v102;
          v6 = v324;
        }

        v14 = sub_224ACBC(a3, v102, v6);
        goto LABEL_629;
      case 0x1Eu:
        if (v7 != 242)
        {
          goto LABEL_620;
        }

        *(a1 + 40) |= 0x4000000u;
        v257 = *(a1 + 272);
        if (!v257)
        {
          v258 = *(a1 + 8);
          v259 = (v258 & 0xFFFFFFFFFFFFFFFCLL);
          if (v258)
          {
            v259 = *v259;
          }

          sub_18616B4(v259);
          v257 = v260;
          *(a1 + 272) = v260;
          v6 = v324;
        }

        v14 = sub_224AD4C(a3, v257, v6);
        goto LABEL_629;
      case 0x1Fu:
        if (v7 != 250)
        {
          goto LABEL_620;
        }

        *(a1 + 40) |= 0x8000000u;
        v254 = *(a1 + 280);
        if (!v254)
        {
          v255 = *(a1 + 8);
          v256 = (v255 & 0xFFFFFFFFFFFFFFFCLL);
          if (v255)
          {
            v256 = *v256;
          }

          v254 = sub_185DDC8(v256);
          *(a1 + 280) = v254;
          v6 = v324;
        }

        v14 = sub_224ADDC(a3, v254, v6);
        goto LABEL_629;
      case 0x20u:
        if (v7 != 2)
        {
          goto LABEL_620;
        }

        *(a1 + 40) |= 0x10000000u;
        v124 = *(a1 + 288);
        if (!v124)
        {
          v125 = *(a1 + 8);
          v126 = (v125 & 0xFFFFFFFFFFFFFFFCLL);
          if (v125)
          {
            v126 = *v126;
          }

          v124 = sub_185DF64(v126);
          *(a1 + 288) = v124;
          v6 = v324;
        }

        v14 = sub_224AE6C(a3, v124, v6);
        goto LABEL_629;
      case 0x21u:
        if (v7 != 10)
        {
          goto LABEL_620;
        }

        *(a1 + 40) |= 0x20000000u;
        v145 = *(a1 + 296);
        if (!v145)
        {
          v146 = *(a1 + 8);
          v147 = (v146 & 0xFFFFFFFFFFFFFFFCLL);
          if (v146)
          {
            v147 = *v147;
          }

          v145 = sub_185E120(v147);
          *(a1 + 296) = v145;
          v6 = v324;
        }

        v14 = sub_224AF00(a3, v145, v6);
        goto LABEL_629;
      case 0x22u:
        if (v7 != 18)
        {
          goto LABEL_620;
        }

        *(a1 + 40) |= 0x40000000u;
        v188 = *(a1 + 304);
        if (!v188)
        {
          v189 = *(a1 + 8);
          v190 = (v189 & 0xFFFFFFFFFFFFFFFCLL);
          if (v189)
          {
            v190 = *v190;
          }

          v188 = sub_185E4E8(v190);
          *(a1 + 304) = v188;
          v6 = v324;
        }

        v14 = sub_224AF94(a3, v188, v6);
        goto LABEL_629;
      case 0x24u:
        if (v7 != 34)
        {
          goto LABEL_620;
        }

        *(a1 + 40) |= 0x80000000;
        v148 = *(a1 + 312);
        if (!v148)
        {
          v149 = *(a1 + 8);
          v150 = (v149 & 0xFFFFFFFFFFFFFFFCLL);
          if (v149)
          {
            v150 = *v150;
          }

          v148 = sub_185F560(v150);
          *(a1 + 312) = v148;
          v6 = v324;
        }

        v14 = sub_224B028(a3, v148, v6);
        goto LABEL_629;
      case 0x25u:
        if (v7 != 42)
        {
          goto LABEL_620;
        }

        *(a1 + 44) |= 1u;
        v270 = *(a1 + 320);
        if (!v270)
        {
          v271 = *(a1 + 8);
          v272 = (v271 & 0xFFFFFFFFFFFFFFFCLL);
          if (v271)
          {
            v272 = *v272;
          }

          v270 = sub_18619C8(v272);
          *(a1 + 320) = v270;
          v6 = v324;
        }

        v14 = sub_224B0B8(a3, v270, v6);
        goto LABEL_629;
      case 0x26u:
        if (v7 != 50)
        {
          goto LABEL_620;
        }

        *(a1 + 44) |= 2u;
        v115 = *(a1 + 328);
        if (!v115)
        {
          v116 = *(a1 + 8);
          v117 = (v116 & 0xFFFFFFFFFFFFFFFCLL);
          if (v116)
          {
            v117 = *v117;
          }

          v115 = sub_1861AE4(v117);
          *(a1 + 328) = v115;
          v6 = v324;
        }

        v14 = sub_224B14C(a3, v115, v6);
        goto LABEL_629;
      case 0x27u:
        if (v7 != 58)
        {
          goto LABEL_620;
        }

        *(a1 + 44) |= 4u;
        v221 = *(a1 + 336);
        if (!v221)
        {
          v222 = *(a1 + 8);
          v223 = (v222 & 0xFFFFFFFFFFFFFFFCLL);
          if (v222)
          {
            v223 = *v223;
          }

          v221 = sub_1861BB8(v223);
          *(a1 + 336) = v221;
          v6 = v324;
        }

        v14 = sub_224B1E0(a3, v221, v6);
        goto LABEL_629;
      case 0x28u:
        if (v7 != 66)
        {
          goto LABEL_620;
        }

        *(a1 + 44) |= 8u;
        v267 = *(a1 + 344);
        if (!v267)
        {
          v268 = *(a1 + 8);
          v269 = (v268 & 0xFFFFFFFFFFFFFFFCLL);
          if (v268)
          {
            v269 = *v269;
          }

          v267 = sub_1861CE8(v269);
          *(a1 + 344) = v267;
          v6 = v324;
        }

        v14 = sub_224B274(a3, v267, v6);
        goto LABEL_629;
      case 0x29u:
        if (v7 != 74)
        {
          goto LABEL_620;
        }

        *(a1 + 44) |= 0x10u;
        v84 = *(a1 + 352);
        if (!v84)
        {
          v85 = *(a1 + 8);
          v86 = (v85 & 0xFFFFFFFFFFFFFFFCLL);
          if (v85)
          {
            v86 = *v86;
          }

          v84 = sub_1869894(v86);
          *(a1 + 352) = v84;
          v6 = v324;
        }

        v14 = sub_224B304(a3, v84, v6);
        goto LABEL_629;
      case 0x2Au:
        if (v7 != 82)
        {
          goto LABEL_620;
        }

        *(a1 + 44) |= 0x20u;
        v200 = *(a1 + 360);
        if (!v200)
        {
          v201 = *(a1 + 8);
          v202 = (v201 & 0xFFFFFFFFFFFFFFFCLL);
          if (v201)
          {
            v202 = *v202;
          }

          v200 = sub_1861E00(v202);
          *(a1 + 360) = v200;
          v6 = v324;
        }

        v14 = sub_224B398(a3, v200, v6);
        goto LABEL_629;
      case 0x2Bu:
        if (v7 != 90)
        {
          goto LABEL_620;
        }

        *(a1 + 44) |= 0x40u;
        v81 = *(a1 + 368);
        if (!v81)
        {
          v82 = *(a1 + 8);
          v83 = (v82 & 0xFFFFFFFFFFFFFFFCLL);
          if (v82)
          {
            v83 = *v83;
          }

          v81 = sub_1862228(v83);
          *(a1 + 368) = v81;
          v6 = v324;
        }

        v14 = sub_224B42C(a3, v81, v6);
        goto LABEL_629;
      case 0x2Cu:
        if (v7 != 98)
        {
          goto LABEL_620;
        }

        *(a1 + 44) |= 0x80u;
        v75 = *(a1 + 376);
        if (!v75)
        {
          v76 = *(a1 + 8);
          v77 = (v76 & 0xFFFFFFFFFFFFFFFCLL);
          if (v76)
          {
            v77 = *v77;
          }

          v75 = sub_1862318(v77);
          *(a1 + 376) = v75;
          v6 = v324;
        }

        v14 = sub_224B4C0(a3, v75, v6);
        goto LABEL_629;
      case 0x2Du:
        if (v7 != 106)
        {
          goto LABEL_620;
        }

        *(a1 + 44) |= 0x100u;
        v127 = *(a1 + 384);
        if (!v127)
        {
          v128 = *(a1 + 8);
          v129 = (v128 & 0xFFFFFFFFFFFFFFFCLL);
          if (v128)
          {
            v129 = *v129;
          }

          v127 = sub_1862418(v129);
          *(a1 + 384) = v127;
          v6 = v324;
        }

        v14 = sub_224B554(a3, v127, v6);
        goto LABEL_629;
      case 0x2Eu:
        if (v7 != 114)
        {
          goto LABEL_620;
        }

        *(a1 + 44) |= 0x200u;
        v164 = *(a1 + 392);
        if (!v164)
        {
          v165 = *(a1 + 8);
          v166 = (v165 & 0xFFFFFFFFFFFFFFFCLL);
          if (v165)
          {
            v166 = *v166;
          }

          v164 = sub_1861F18(v166);
          *(a1 + 392) = v164;
          v6 = v324;
        }

        v14 = sub_224B5E8(a3, v164, v6);
        goto LABEL_629;
      case 0x2Fu:
        if (v7 != 122)
        {
          goto LABEL_620;
        }

        *(a1 + 44) |= 0x400u;
        v233 = *(a1 + 400);
        if (!v233)
        {
          v234 = *(a1 + 8);
          v235 = (v234 & 0xFFFFFFFFFFFFFFFCLL);
          if (v234)
          {
            v235 = *v235;
          }

          v233 = sub_186200C(v235);
          *(a1 + 400) = v233;
          v6 = v324;
        }

        v14 = sub_224B67C(a3, v233, v6);
        goto LABEL_629;
      case 0x30u:
        if (v7 != 130)
        {
          goto LABEL_620;
        }

        *(a1 + 44) |= 0x800u;
        v57 = *(a1 + 408);
        if (!v57)
        {
          v58 = *(a1 + 8);
          v59 = (v58 & 0xFFFFFFFFFFFFFFFCLL);
          if (v58)
          {
            v59 = *v59;
          }

          v57 = sub_19295B8(v59);
          *(a1 + 408) = v57;
          v6 = v324;
        }

        v14 = sub_224B710(a3, v57, v6);
        goto LABEL_629;
      case 0x31u:
        if (v7 != 138)
        {
          goto LABEL_620;
        }

        *(a1 + 44) |= 0x1000u;
        v87 = *(a1 + 416);
        if (!v87)
        {
          v88 = *(a1 + 8);
          v89 = (v88 & 0xFFFFFFFFFFFFFFFCLL);
          if (v88)
          {
            v89 = *v89;
          }

          v87 = sub_1862128(v89);
          *(a1 + 416) = v87;
          v6 = v324;
        }

        v14 = sub_224B7A4(a3, v87, v6);
        goto LABEL_629;
      case 0x32u:
        if (v7 != 146)
        {
          goto LABEL_620;
        }

        *(a1 + 44) |= 0x2000u;
        v176 = *(a1 + 424);
        if (!v176)
        {
          v177 = *(a1 + 8);
          v178 = (v177 & 0xFFFFFFFFFFFFFFFCLL);
          if (v177)
          {
            v178 = *v178;
          }

          v176 = sub_1861810(v178);
          *(a1 + 424) = v176;
          v6 = v324;
        }

        v14 = sub_224B838(a3, v176, v6);
        goto LABEL_629;
      case 0x33u:
        if (v7 != 154)
        {
          goto LABEL_620;
        }

        *(a1 + 44) |= 0x4000u;
        v194 = *(a1 + 432);
        if (!v194)
        {
          v195 = *(a1 + 8);
          v196 = (v195 & 0xFFFFFFFFFFFFFFFCLL);
          if (v195)
          {
            v196 = *v196;
          }

          v194 = sub_18618E8(v196);
          *(a1 + 432) = v194;
          v6 = v324;
        }

        v14 = sub_224B8C8(a3, v194, v6);
        goto LABEL_629;
      case 0x34u:
        if (v7 != 162)
        {
          goto LABEL_620;
        }

        *(a1 + 44) |= 0x8000u;
        v273 = *(a1 + 440);
        if (!v273)
        {
          v274 = *(a1 + 8);
          v275 = (v274 & 0xFFFFFFFFFFFFFFFCLL);
          if (v274)
          {
            v275 = *v275;
          }

          v273 = sub_185FE0C(v275);
          *(a1 + 440) = v273;
          v6 = v324;
        }

        v14 = sub_224B958(a3, v273, v6);
        goto LABEL_629;
      case 0x35u:
        if (v7 != 170)
        {
          goto LABEL_620;
        }

        *(a1 + 44) |= 0x10000u;
        v185 = *(a1 + 448);
        if (!v185)
        {
          v186 = *(a1 + 8);
          v187 = (v186 & 0xFFFFFFFFFFFFFFFCLL);
          if (v186)
          {
            v187 = *v187;
          }

          v185 = sub_185F618(v187);
          *(a1 + 448) = v185;
          v6 = v324;
        }

        v14 = sub_224B9E8(a3, v185, v6);
        goto LABEL_629;
      case 0x36u:
        if (v7 != 178)
        {
          goto LABEL_620;
        }

        *(a1 + 44) |= 0x20000u;
        v69 = *(a1 + 456);
        if (!v69)
        {
          v70 = *(a1 + 8);
          v71 = (v70 & 0xFFFFFFFFFFFFFFFCLL);
          if (v70)
          {
            v71 = *v71;
          }

          v69 = sub_13AE304(v71);
          *(a1 + 456) = v69;
          v6 = v324;
        }

        v14 = sub_224BA78(a3, v69, v6);
        goto LABEL_629;
      case 0x37u:
        if (v7 != 186)
        {
          goto LABEL_620;
        }

        *(a1 + 44) |= 0x40000u;
        v60 = *(a1 + 464);
        if (!v60)
        {
          v61 = *(a1 + 8);
          v62 = (v61 & 0xFFFFFFFFFFFFFFFCLL);
          if (v61)
          {
            v62 = *v62;
          }

          v60 = sub_191F918(v62);
          *(a1 + 464) = v60;
          v6 = v324;
        }

        v14 = sub_224BB08(a3, v60, v6);
        goto LABEL_629;
      case 0x38u:
        if (v7 != 194)
        {
          goto LABEL_620;
        }

        *(a1 + 44) |= 0x80000u;
        v291 = *(a1 + 472);
        if (!v291)
        {
          v292 = *(a1 + 8);
          v293 = (v292 & 0xFFFFFFFFFFFFFFFCLL);
          if (v292)
          {
            v293 = *v293;
          }

          v291 = sub_1862490(v293);
          *(a1 + 472) = v291;
          v6 = v324;
        }

        v14 = sub_224BB9C(a3, v291, v6);
        goto LABEL_629;
      case 0x39u:
        if (v7 != 202)
        {
          goto LABEL_620;
        }

        *(a1 + 44) |= 0x100000u;
        v264 = *(a1 + 480);
        if (!v264)
        {
          v265 = *(a1 + 8);
          v266 = (v265 & 0xFFFFFFFFFFFFFFFCLL);
          if (v265)
          {
            v266 = *v266;
          }

          v264 = sub_185D8E4(v266);
          *(a1 + 480) = v264;
          v6 = v324;
        }

        v14 = sub_224BC30(a3, v264, v6);
        goto LABEL_629;
      case 0x3Au:
        if (v7 != 210)
        {
          goto LABEL_620;
        }

        *(a1 + 44) |= 0x200000u;
        v66 = *(a1 + 488);
        if (!v66)
        {
          v67 = *(a1 + 8);
          v68 = (v67 & 0xFFFFFFFFFFFFFFFCLL);
          if (v67)
          {
            v68 = *v68;
          }

          v66 = sub_18627B0(v68);
          *(a1 + 488) = v66;
          v6 = v324;
        }

        v14 = sub_224BCC0(a3, v66, v6);
        goto LABEL_629;
      case 0x3Bu:
        if (v7 != 218)
        {
          goto LABEL_620;
        }

        *(a1 + 44) |= 0x400000u;
        v206 = *(a1 + 496);
        if (!v206)
        {
          v207 = *(a1 + 8);
          v208 = (v207 & 0xFFFFFFFFFFFFFFFCLL);
          if (v207)
          {
            v208 = *v208;
          }

          v206 = sub_191F990(v208);
          *(a1 + 496) = v206;
          v6 = v324;
        }

        v14 = sub_224BD50(a3, v206, v6);
        goto LABEL_629;
      case 0x3Cu:
        if (v7 != 226)
        {
          goto LABEL_620;
        }

        *(a1 + 44) |= 0x800000u;
        v230 = *(a1 + 504);
        if (!v230)
        {
          v231 = *(a1 + 8);
          v232 = (v231 & 0xFFFFFFFFFFFFFFFCLL);
          if (v231)
          {
            v232 = *v232;
          }

          v230 = sub_1866344(v232);
          *(a1 + 504) = v230;
          v6 = v324;
        }

        v14 = sub_224BDE4(a3, v230, v6);
        goto LABEL_629;
      case 0x3Du:
        if (v7 != 234)
        {
          goto LABEL_620;
        }

        *(a1 + 44) |= 0x1000000u;
        v63 = *(a1 + 512);
        if (!v63)
        {
          v64 = *(a1 + 8);
          v65 = (v64 & 0xFFFFFFFFFFFFFFFCLL);
          if (v64)
          {
            v65 = *v65;
          }

          v63 = sub_18663A0(v65);
          *(a1 + 512) = v63;
          v6 = v324;
        }

        v14 = sub_224BE74(a3, v63, v6);
        goto LABEL_629;
      case 0x3Eu:
        if (v7 != 242)
        {
          goto LABEL_620;
        }

        *(a1 + 44) |= 0x2000000u;
        v251 = *(a1 + 520);
        if (!v251)
        {
          v252 = *(a1 + 8);
          v253 = (v252 & 0xFFFFFFFFFFFFFFFCLL);
          if (v252)
          {
            v253 = *v253;
          }

          v251 = sub_18663FC(v253);
          *(a1 + 520) = v251;
          v6 = v324;
        }

        v14 = sub_224BF04(a3, v251, v6);
        goto LABEL_629;
      case 0x3Fu:
        if (v7 != 250)
        {
          goto LABEL_620;
        }

        *(a1 + 44) |= 0x4000000u;
        v239 = *(a1 + 528);
        if (!v239)
        {
          v240 = *(a1 + 8);
          v241 = (v240 & 0xFFFFFFFFFFFFFFFCLL);
          if (v240)
          {
            v241 = *v241;
          }

          v239 = sub_1866458(v241);
          *(a1 + 528) = v239;
          v6 = v324;
        }

        v14 = sub_224BF94(a3, v239, v6);
        goto LABEL_629;
      case 0x40u:
        if (v7 != 2)
        {
          goto LABEL_620;
        }

        *(a1 + 44) |= 0x8000000u;
        v303 = *(a1 + 536);
        if (!v303)
        {
          v304 = *(a1 + 8);
          v305 = (v304 & 0xFFFFFFFFFFFFFFFCLL);
          if (v304)
          {
            v305 = *v305;
          }

          v303 = sub_18664B4(v305);
          *(a1 + 536) = v303;
          v6 = v324;
        }

        v14 = sub_224C024(a3, v303, v6);
        goto LABEL_629;
      case 0x41u:
        if (v7 != 10)
        {
          goto LABEL_620;
        }

        *(a1 + 44) |= 0x10000000u;
        v279 = *(a1 + 544);
        if (!v279)
        {
          v280 = *(a1 + 8);
          v281 = (v280 & 0xFFFFFFFFFFFFFFFCLL);
          if (v280)
          {
            v281 = *v281;
          }

          v279 = sub_1866510(v281);
          *(a1 + 544) = v279;
          v6 = v324;
        }

        v14 = sub_224C0B4(a3, v279, v6);
        goto LABEL_629;
      case 0x42u:
        if (v7 != 18)
        {
          goto LABEL_620;
        }

        *(a1 + 44) |= 0x20000000u;
        v294 = *(a1 + 552);
        if (!v294)
        {
          v295 = *(a1 + 8);
          v296 = (v295 & 0xFFFFFFFFFFFFFFFCLL);
          if (v295)
          {
            v296 = *v296;
          }

          v294 = sub_18666C4(v296);
          *(a1 + 552) = v294;
          v6 = v324;
        }

        v14 = sub_224C144(a3, v294, v6);
        goto LABEL_629;
      case 0x43u:
        if (v7 != 26)
        {
          goto LABEL_620;
        }

        *(a1 + 44) |= 0x40000000u;
        v242 = *(a1 + 560);
        if (!v242)
        {
          v243 = *(a1 + 8);
          v244 = (v243 & 0xFFFFFFFFFFFFFFFCLL);
          if (v243)
          {
            v244 = *v244;
          }

          v242 = sub_1866720(v244);
          *(a1 + 560) = v242;
          v6 = v324;
        }

        v14 = sub_224C1D4(a3, v242, v6);
        goto LABEL_629;
      case 0x44u:
        if (v7 != 34)
        {
          goto LABEL_620;
        }

        *(a1 + 44) |= 0x80000000;
        v245 = *(a1 + 568);
        if (!v245)
        {
          v246 = *(a1 + 8);
          v247 = (v246 & 0xFFFFFFFFFFFFFFFCLL);
          if (v246)
          {
            v247 = *v247;
          }

          v245 = sub_186677C(v247);
          *(a1 + 568) = v245;
          v6 = v324;
        }

        v14 = sub_224C264(a3, v245, v6);
        goto LABEL_629;
      case 0x45u:
        if (v7 != 42)
        {
          goto LABEL_620;
        }

        *(a1 + 48) |= 1u;
        v105 = *(a1 + 576);
        if (!v105)
        {
          v106 = *(a1 + 8);
          v107 = (v106 & 0xFFFFFFFFFFFFFFFCLL);
          if (v106)
          {
            v107 = *v107;
          }

          v105 = sub_18667D8(v107);
          *(a1 + 576) = v105;
          v6 = v324;
        }

        v14 = sub_224C2F4(a3, v105, v6);
        goto LABEL_629;
      case 0x46u:
        if (v7 != 50)
        {
          goto LABEL_620;
        }

        *(a1 + 48) |= 2u;
        v261 = *(a1 + 584);
        if (!v261)
        {
          v262 = *(a1 + 8);
          v263 = (v262 & 0xFFFFFFFFFFFFFFFCLL);
          if (v262)
          {
            v263 = *v263;
          }

          v261 = sub_18629A8(v263);
          *(a1 + 584) = v261;
          v6 = v324;
        }

        v14 = sub_224C384(a3, v261, v6);
        goto LABEL_629;
      case 0x47u:
        if (v7 != 58)
        {
          goto LABEL_620;
        }

        *(a1 + 48) |= 4u;
        v39 = *(a1 + 592);
        if (!v39)
        {
          v40 = *(a1 + 8);
          v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
          if (v40)
          {
            v41 = *v41;
          }

          v39 = sub_1866834(v41);
          *(a1 + 592) = v39;
          v6 = v324;
        }

        v14 = sub_224C414(a3, v39, v6);
        goto LABEL_629;
      case 0x49u:
        if (v7 != 74)
        {
          goto LABEL_620;
        }

        *(a1 + 48) |= 8u;
        v276 = *(a1 + 600);
        if (!v276)
        {
          v277 = *(a1 + 8);
          v278 = (v277 & 0xFFFFFFFFFFFFFFFCLL);
          if (v277)
          {
            v278 = *v278;
          }

          v276 = sub_1866B08(v278);
          *(a1 + 600) = v276;
          v6 = v324;
        }

        v14 = sub_224C4A4(a3, v276, v6);
        goto LABEL_629;
      case 0x4Au:
        if (v7 != 82)
        {
          goto LABEL_620;
        }

        *(a1 + 48) |= 0x10u;
        v285 = *(a1 + 608);
        if (!v285)
        {
          v286 = *(a1 + 8);
          v287 = (v286 & 0xFFFFFFFFFFFFFFFCLL);
          if (v286)
          {
            v287 = *v287;
          }

          v285 = sub_186656C(v287);
          *(a1 + 608) = v285;
          v6 = v324;
        }

        v14 = sub_224C534(a3, v285, v6);
        goto LABEL_629;
      case 0x4Cu:
        if (v7 != 98)
        {
          goto LABEL_620;
        }

        *(a1 + 48) |= 0x20u;
        v158 = *(a1 + 616);
        if (!v158)
        {
          v159 = *(a1 + 8);
          v160 = (v159 & 0xFFFFFFFFFFFFFFFCLL);
          if (v159)
          {
            v160 = *v160;
          }

          v158 = sub_1866890(v160);
          *(a1 + 616) = v158;
          v6 = v324;
        }

        v14 = sub_224C5C4(a3, v158, v6);
        goto LABEL_629;
      case 0x4Du:
        if (v7 != 106)
        {
          goto LABEL_620;
        }

        *(a1 + 48) |= 0x40u;
        v297 = *(a1 + 624);
        if (!v297)
        {
          v298 = *(a1 + 8);
          v299 = (v298 & 0xFFFFFFFFFFFFFFFCLL);
          if (v298)
          {
            v299 = *v299;
          }

          v297 = sub_1866A90(v299);
          *(a1 + 624) = v297;
          v6 = v324;
        }

        v14 = sub_224C654(a3, v297, v6);
        goto LABEL_629;
      case 0x4Eu:
        if (v7 != 114)
        {
          goto LABEL_620;
        }

        *(a1 + 48) |= 0x80u;
        v248 = *(a1 + 632);
        if (!v248)
        {
          v249 = *(a1 + 8);
          v250 = (v249 & 0xFFFFFFFFFFFFFFFCLL);
          if (v249)
          {
            v250 = *v250;
          }

          v248 = sub_18601BC(v250);
          *(a1 + 632) = v248;
          v6 = v324;
        }

        v14 = sub_224C6E8(a3, v248, v6);
        goto LABEL_629;
      case 0x51u:
        if (v7 != 138)
        {
          goto LABEL_620;
        }

        *(a1 + 48) |= 0x100u;
        v45 = *(a1 + 640);
        if (!v45)
        {
          v46 = *(a1 + 8);
          v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
          if (v46)
          {
            v47 = *v47;
          }

          v45 = sub_191FA08(v47);
          *(a1 + 640) = v45;
          v6 = v324;
        }

        v14 = sub_224C778(a3, v45, v6);
        goto LABEL_629;
      case 0x52u:
        if (v7 != 146)
        {
          goto LABEL_620;
        }

        *(a1 + 48) |= 0x200u;
        v90 = *(a1 + 648);
        if (!v90)
        {
          v91 = *(a1 + 8);
          v92 = (v91 & 0xFFFFFFFFFFFFFFFCLL);
          if (v91)
          {
            v92 = *v92;
          }

          v90 = sub_186660C(v92);
          *(a1 + 648) = v90;
          v6 = v324;
        }

        v14 = sub_224C80C(a3, v90, v6);
        goto LABEL_629;
      case 0x53u:
        if (v7 != 154)
        {
          goto LABEL_620;
        }

        *(a1 + 48) |= 0x400u;
        v209 = *(a1 + 656);
        if (!v209)
        {
          v210 = *(a1 + 8);
          v211 = (v210 & 0xFFFFFFFFFFFFFFFCLL);
          if (v210)
          {
            v211 = *v211;
          }

          v209 = sub_1864108(v211);
          *(a1 + 656) = v209;
          v6 = v324;
        }

        v14 = sub_224C89C(a3, v209, v6);
        goto LABEL_629;
      case 0x54u:
        if (v7 != 162)
        {
          goto LABEL_620;
        }

        *(a1 + 48) |= 0x800u;
        v51 = *(a1 + 664);
        if (!v51)
        {
          v52 = *(a1 + 8);
          v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
          if (v52)
          {
            v53 = *v53;
          }

          v51 = sub_1860C24(v53);
          *(a1 + 664) = v51;
          v6 = v324;
        }

        v14 = sub_224C92C(a3, v51, v6);
        goto LABEL_629;
      case 0x55u:
        if (v7 != 170)
        {
          goto LABEL_620;
        }

        *(a1 + 48) |= 0x1000u;
        v306 = *(a1 + 672);
        if (!v306)
        {
          v307 = *(a1 + 8);
          v308 = (v307 & 0xFFFFFFFFFFFFFFFCLL);
          if (v307)
          {
            v308 = *v308;
          }

          v306 = sub_1866668(v308);
          *(a1 + 672) = v306;
          v6 = v324;
        }

        v14 = sub_224C9BC(a3, v306, v6);
        goto LABEL_629;
      case 0x56u:
        if (v7 != 178)
        {
          goto LABEL_620;
        }

        *(a1 + 48) |= 0x2000u;
        v36 = *(a1 + 680);
        if (!v36)
        {
          v37 = *(a1 + 8);
          v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
          if (v37)
          {
            v38 = *v38;
          }

          v36 = sub_1860550(v38);
          *(a1 + 680) = v36;
          v6 = v324;
        }

        v14 = sub_224CA4C(a3, v36, v6);
        goto LABEL_629;
      case 0x57u:
        if (v7 != 186)
        {
          goto LABEL_620;
        }

        *(a1 + 48) |= 0x4000u;
        v121 = *(a1 + 688);
        if (!v121)
        {
          v122 = *(a1 + 8);
          v123 = (v122 & 0xFFFFFFFFFFFFFFFCLL);
          if (v122)
          {
            v123 = *v123;
          }

          v121 = sub_1860798(v123);
          *(a1 + 688) = v121;
          v6 = v324;
        }

        v14 = sub_224CAE0(a3, v121, v6);
        goto LABEL_629;
      case 0x58u:
        if (v7 != 194)
        {
          goto LABEL_620;
        }

        *(a1 + 48) |= 0x8000u;
        v24 = *(a1 + 696);
        if (!v24)
        {
          v25 = *(a1 + 8);
          v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
          if (v25)
          {
            v26 = *v26;
          }

          v24 = sub_186086C(v26);
          *(a1 + 696) = v24;
          v6 = v324;
        }

        v14 = sub_224CB74(a3, v24, v6);
        goto LABEL_629;
      case 0x59u:
        if (v7 != 202)
        {
          goto LABEL_620;
        }

        *(a1 + 48) |= 0x10000u;
        v30 = *(a1 + 704);
        if (!v30)
        {
          v31 = *(a1 + 8);
          v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
          if (v31)
          {
            v32 = *v32;
          }

          v30 = sub_1863F7C(v32);
          *(a1 + 704) = v30;
          v6 = v324;
        }

        v14 = sub_224CC08(a3, v30, v6);
        goto LABEL_629;
      case 0x5Au:
        if (v7 != 210)
        {
          goto LABEL_620;
        }

        *(a1 + 48) |= 0x20000u;
        v78 = *(a1 + 712);
        if (!v78)
        {
          v79 = *(a1 + 8);
          v80 = (v79 & 0xFFFFFFFFFFFFFFFCLL);
          if (v79)
          {
            v80 = *v80;
          }

          v78 = sub_1866D00(v80);
          *(a1 + 712) = v78;
          v6 = v324;
        }

        v14 = sub_224CC98(a3, v78, v6);
        goto LABEL_629;
      case 0x5Bu:
        if (v7 != 218)
        {
          goto LABEL_620;
        }

        *(a1 + 48) |= 0x40000u;
        v212 = *(a1 + 720);
        if (!v212)
        {
          v213 = *(a1 + 8);
          v214 = (v213 & 0xFFFFFFFFFFFFFFFCLL);
          if (v213)
          {
            v214 = *v214;
          }

          v212 = sub_185EFF4(v214);
          *(a1 + 720) = v212;
          v6 = v324;
        }

        v14 = sub_224CD2C(a3, v212, v6);
        goto LABEL_629;
      case 0x5Du:
        if (v7 != 234)
        {
          goto LABEL_620;
        }

        *(a1 + 48) |= 0x80000u;
        v42 = *(a1 + 728);
        if (!v42)
        {
          v43 = *(a1 + 8);
          v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
          if (v43)
          {
            v44 = *v44;
          }

          v42 = sub_1860624(v44);
          *(a1 + 728) = v42;
          v6 = v324;
        }

        v14 = sub_224CDC0(a3, v42, v6);
        goto LABEL_629;
      case 0x5Eu:
        if (v7 != 242)
        {
          goto LABEL_620;
        }

        *(a1 + 48) |= 0x100000u;
        v72 = *(a1 + 736);
        if (!v72)
        {
          v73 = *(a1 + 8);
          v74 = (v73 & 0xFFFFFFFFFFFFFFFCLL);
          if (v73)
          {
            v74 = *v74;
          }

          v72 = sub_1865AF0(v74);
          *(a1 + 736) = v72;
          v6 = v324;
        }

        v14 = sub_224CE54(a3, v72, v6);
        goto LABEL_629;
      case 0x5Fu:
        if (v7 != 250)
        {
          goto LABEL_620;
        }

        *(a1 + 48) |= 0x200000u;
        v21 = *(a1 + 744);
        if (!v21)
        {
          v22 = *(a1 + 8);
          v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
          if (v22)
          {
            v23 = *v23;
          }

          v21 = sub_1866E78(v23);
          *(a1 + 744) = v21;
          v6 = v324;
        }

        v14 = sub_224CEE4(a3, v21, v6);
        goto LABEL_629;
      case 0x60u:
        if (v7 != 2)
        {
          goto LABEL_620;
        }

        *(a1 + 48) |= 0x400000u;
        v288 = *(a1 + 752);
        if (!v288)
        {
          v289 = *(a1 + 8);
          v290 = (v289 & 0xFFFFFFFFFFFFFFFCLL);
          if (v289)
          {
            v290 = *v290;
          }

          v288 = sub_185F0C8(v290);
          *(a1 + 752) = v288;
          v6 = v324;
        }

        v14 = sub_224CF78(a3, v288, v6);
        goto LABEL_629;
      case 0x61u:
        if (v7 != 10)
        {
          goto LABEL_620;
        }

        *(a1 + 48) |= 0x800000u;
        v118 = *(a1 + 760);
        if (!v118)
        {
          v119 = *(a1 + 8);
          v120 = (v119 & 0xFFFFFFFFFFFFFFFCLL);
          if (v119)
          {
            v120 = *v120;
          }

          v118 = sub_185F140(v120);
          *(a1 + 760) = v118;
          v6 = v324;
        }

        v14 = sub_224D00C(a3, v118, v6);
        goto LABEL_629;
      case 0x62u:
        if (v7 != 18)
        {
          goto LABEL_620;
        }

        *(a1 + 48) |= 0x1000000u;
        v48 = *(a1 + 768);
        if (!v48)
        {
          v49 = *(a1 + 8);
          v50 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
          if (v49)
          {
            v50 = *v50;
          }

          v48 = sub_1863A50(v50);
          *(a1 + 768) = v48;
          v6 = v324;
        }

        v14 = sub_224D0A0(a3, v48, v6);
        goto LABEL_629;
      case 0x64u:
        if (v7 != 34)
        {
          goto LABEL_620;
        }

        *(a1 + 48) |= 0x2000000u;
        v227 = *(a1 + 776);
        if (!v227)
        {
          v228 = *(a1 + 8);
          v229 = (v228 & 0xFFFFFFFFFFFFFFFCLL);
          if (v228)
          {
            v229 = *v229;
          }

          v227 = sub_1863144(v229);
          *(a1 + 776) = v227;
          v6 = v324;
        }

        v14 = sub_224D130(a3, v227, v6);
        goto LABEL_629;
      case 0x65u:
        if (v7 != 42)
        {
          goto LABEL_620;
        }

        *(a1 + 48) |= 0x4000000u;
        v27 = *(a1 + 784);
        if (!v27)
        {
          v28 = *(a1 + 8);
          v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
          if (v28)
          {
            v29 = *v29;
          }

          v27 = sub_186365C(v29);
          *(a1 + 784) = v27;
          v6 = v324;
        }

        v14 = sub_224D1C0(a3, v27, v6);
        goto LABEL_629;
      case 0x66u:
        if (v7 != 50)
        {
          goto LABEL_620;
        }

        *(a1 + 48) |= 0x8000000u;
        v312 = *(a1 + 792);
        if (!v312)
        {
          v313 = *(a1 + 8);
          v314 = (v313 & 0xFFFFFFFFFFFFFFFCLL);
          if (v313)
          {
            v314 = *v314;
          }

          v312 = sub_1860CDC(v314);
          *(a1 + 792) = v312;
          v6 = v324;
        }

        v14 = sub_224D250(a3, v312, v6);
        goto LABEL_629;
      case 0x67u:
        if (v7 != 58)
        {
          goto LABEL_620;
        }

        *(a1 + 48) |= 0x10000000u;
        v18 = *(a1 + 800);
        if (!v18)
        {
          v19 = *(a1 + 8);
          v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
          if (v19)
          {
            v20 = *v20;
          }

          v18 = sub_18631FC(v20);
          *(a1 + 800) = v18;
          v6 = v324;
        }

        v14 = sub_224D2E0(a3, v18, v6);
        goto LABEL_629;
      case 0x68u:
        if (v7 != 66)
        {
          goto LABEL_620;
        }

        *(a1 + 48) |= 0x20000000u;
        v33 = *(a1 + 808);
        if (!v33)
        {
          v34 = *(a1 + 8);
          v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
          if (v34)
          {
            v35 = *v35;
          }

          v33 = sub_18632B4(v35);
          *(a1 + 808) = v33;
          v6 = v324;
        }

        v14 = sub_224D370(a3, v33, v6);
        goto LABEL_629;
      case 0x69u:
        if (v7 != 74)
        {
          goto LABEL_620;
        }

        *(a1 + 48) |= 0x40000000u;
        v54 = *(a1 + 816);
        if (!v54)
        {
          v55 = *(a1 + 8);
          v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL);
          if (v55)
          {
            v56 = *v56;
          }

          v54 = sub_186336C(v56);
          *(a1 + 816) = v54;
          v6 = v324;
        }

        v14 = sub_224D400(a3, v54, v6);
        goto LABEL_629;
      case 0x6Au:
        if (v7 != 82)
        {
          goto LABEL_620;
        }

        *(a1 + 48) |= 0x80000000;
        v15 = *(a1 + 824);
        if (!v15)
        {
          v16 = *(a1 + 8);
          v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
          if (v16)
          {
            v17 = *v17;
          }

          v15 = sub_1863424(v17);
          *(a1 + 824) = v15;
          v6 = v324;
        }

        v14 = sub_224D490(a3, v15, v6);
        goto LABEL_629;
      case 0x6Bu:
        if (v7 != 90)
        {
          goto LABEL_620;
        }

        *(a1 + 52) |= 1u;
        v300 = *(a1 + 832);
        if (!v300)
        {
          v301 = *(a1 + 8);
          v302 = (v301 & 0xFFFFFFFFFFFFFFFCLL);
          if (v301)
          {
            v302 = *v302;
          }

          v300 = sub_186308C(v302);
          *(a1 + 832) = v300;
          v6 = v324;
        }

        v14 = sub_224D520(a3, v300, v6);
        goto LABEL_629;
      case 0x6Cu:
        if (v7 != 98)
        {
          goto LABEL_620;
        }

        *(a1 + 52) |= 2u;
        v315 = *(a1 + 840);
        if (!v315)
        {
          v316 = *(a1 + 8);
          v317 = (v316 & 0xFFFFFFFFFFFFFFFCLL);
          if (v316)
          {
            v317 = *v317;
          }

          v315 = sub_1863520(v317);
          *(a1 + 840) = v315;
          v6 = v324;
        }

        v14 = sub_224D5B0(a3, v315, v6);
        goto LABEL_629;
      case 0x6Du:
        if (v7 != 106)
        {
          goto LABEL_620;
        }

        *(a1 + 52) |= 4u;
        v282 = *(a1 + 848);
        if (!v282)
        {
          v283 = *(a1 + 8);
          v284 = (v283 & 0xFFFFFFFFFFFFFFFCLL);
          if (v283)
          {
            v284 = *v284;
          }

          v282 = sub_185FB9C(v284);
          *(a1 + 848) = v282;
          v6 = v324;
        }

        v14 = sub_224D640(a3, v282, v6);
        goto LABEL_629;
      case 0x6Eu:
        if (v7 != 114)
        {
          goto LABEL_620;
        }

        *(a1 + 52) |= 8u;
        v318 = *(a1 + 856);
        if (!v318)
        {
          v319 = *(a1 + 8);
          v320 = (v319 & 0xFFFFFFFFFFFFFFFCLL);
          if (v319)
          {
            v320 = *v320;
          }

          v318 = sub_185FD38(v320);
          *(a1 + 856) = v318;
          v6 = v324;
        }

        v14 = sub_224D6D4(a3, v318, v6);
        goto LABEL_629;
      case 0x6Fu:
        if (v7 != 122)
        {
          goto LABEL_620;
        }

        *(a1 + 52) |= 0x10u;
        v309 = *(a1 + 864);
        if (!v309)
        {
          v310 = *(a1 + 8);
          v311 = (v310 & 0xFFFFFFFFFFFFFFFCLL);
          if (v310)
          {
            v311 = *v311;
          }

          v309 = sub_18641C0(v311);
          *(a1 + 864) = v309;
          v6 = v324;
        }

        v14 = sub_224D768(a3, v309, v6);
        goto LABEL_629;
      case 0x71u:
        if (v7 != 138)
        {
          goto LABEL_620;
        }

        *(a1 + 52) |= 0x20u;
        v133 = *(a1 + 872);
        if (!v133)
        {
          v134 = *(a1 + 8);
          v135 = (v134 & 0xFFFFFFFFFFFFFFFCLL);
          if (v134)
          {
            v135 = *v135;
          }

          v133 = sub_186383C(v135);
          *(a1 + 872) = v133;
          v6 = v324;
        }

        v14 = sub_224D7F8(a3, v133, v6);
        goto LABEL_629;
      default:
LABEL_620:
        if (v7)
        {
          v321 = (v7 & 7) == 4;
        }

        else
        {
          v321 = 1;
        }

        if (!v321)
        {
          if ((v7 - 8000) >> 6 > 0x7C)
          {
            v322 = *(a1 + 8);
            if (v322)
            {
              v323 = (v322 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v323 = sub_11F1920((a1 + 8));
              v6 = v324;
            }

            v14 = sub_1952690(v7, v323, v6, a3);
          }

          else
          {
            v14 = sub_19525AC((a1 + 16), v7, v6, &off_2785290, (a1 + 8), a3);
          }

LABEL_629:
          v324 = v14;
          if (!v14)
          {
            return 0;
          }

          if (sub_195ADC0(a3, &v324, a3[11].i32[1]))
          {
            return v324;
          }

          continue;
        }

        if (!v6)
        {
          return 0;
        }

        a3[10].i32[0] = v7 - 1;
        return v324;
    }
  }
}

char *sub_180B930(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if (v6)
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 64);
    *v4 = 10;
    v8 = *(v7 + 44);
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v9 = sub_19575D0(v8, v4 + 1);
    }

    else
    {
      v9 = v4 + 2;
    }

    v4 = sub_1799428(v7, v9, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_46;
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

  v10 = *(a1 + 72);
  *v4 = 18;
  v11 = *(v10 + 40);
  v4[1] = v11;
  if (v11 > 0x7F)
  {
    v12 = sub_19575D0(v11, v4 + 1);
  }

  else
  {
    v12 = v4 + 2;
  }

  v4 = sub_179EE64(v10, v12, a3);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_52;
  }

LABEL_46:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v13 = *(a1 + 80);
  *v4 = 26;
  v14 = *(v13 + 40);
  v4[1] = v14;
  if (v14 > 0x7F)
  {
    v15 = sub_19575D0(v14, v4 + 1);
  }

  else
  {
    v15 = v4 + 2;
  }

  v4 = sub_179F968(v13, v15, a3);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_58;
  }

LABEL_52:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v16 = *(a1 + 88);
  *v4 = 34;
  v17 = *(v16 + 40);
  v4[1] = v17;
  if (v17 > 0x7F)
  {
    v18 = sub_19575D0(v17, v4 + 1);
  }

  else
  {
    v18 = v4 + 2;
  }

  v4 = sub_17A0BA8(v16, v18, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_64;
  }

LABEL_58:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v19 = *(a1 + 96);
  *v4 = 42;
  v20 = *(v19 + 40);
  v4[1] = v20;
  if (v20 > 0x7F)
  {
    v21 = sub_19575D0(v20, v4 + 1);
  }

  else
  {
    v21 = v4 + 2;
  }

  v4 = sub_17A2BF0(v19, v21, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_70;
  }

LABEL_64:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v22 = *(a1 + 104);
  *v4 = 50;
  v23 = *(v22 + 40);
  v4[1] = v23;
  if (v23 > 0x7F)
  {
    v24 = sub_19575D0(v23, v4 + 1);
  }

  else
  {
    v24 = v4 + 2;
  }

  v4 = sub_17BD7F8(v22, v24, a3);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_76;
  }

LABEL_70:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v25 = *(a1 + 112);
  *v4 = 58;
  v26 = *(v25 + 44);
  v4[1] = v26;
  if (v26 > 0x7F)
  {
    v27 = sub_19575D0(v26, v4 + 1);
  }

  else
  {
    v27 = v4 + 2;
  }

  v4 = sub_17BF388(v25, v27, a3);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_82;
  }

LABEL_76:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v28 = *(a1 + 120);
  *v4 = 66;
  v29 = *(v28 + 64);
  v4[1] = v29;
  if (v29 > 0x7F)
  {
    v30 = sub_19575D0(v29, v4 + 1);
  }

  else
  {
    v30 = v4 + 2;
  }

  v4 = sub_17C52C4(v28, v30, a3);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_88;
  }

LABEL_82:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v31 = *(a1 + 128);
  *v4 = 74;
  v32 = *(v31 + 40);
  v4[1] = v32;
  if (v32 > 0x7F)
  {
    v33 = sub_19575D0(v32, v4 + 1);
  }

  else
  {
    v33 = v4 + 2;
  }

  v4 = sub_17C3EB0(v31, v33, a3);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_94;
  }

LABEL_88:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v34 = *(a1 + 136);
  *v4 = 82;
  v35 = *(v34 + 16);
  v4[1] = v35;
  if (v35 > 0x7F)
  {
    v36 = sub_19575D0(v35, v4 + 1);
  }

  else
  {
    v36 = v4 + 2;
  }

  v4 = sub_17B45E8(v34, v36, a3);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_100;
  }

LABEL_94:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v37 = *(a1 + 144);
  *v4 = 90;
  v38 = *(v37 + 20);
  v4[1] = v38;
  if (v38 > 0x7F)
  {
    v39 = sub_19575D0(v38, v4 + 1);
  }

  else
  {
    v39 = v4 + 2;
  }

  v4 = sub_17AB64C(v37, v39, a3);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_106;
  }

LABEL_100:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v40 = *(a1 + 152);
  *v4 = 98;
  v41 = *(v40 + 20);
  v4[1] = v41;
  if (v41 > 0x7F)
  {
    v42 = sub_19575D0(v41, v4 + 1);
  }

  else
  {
    v42 = v4 + 2;
  }

  v4 = sub_17C9F44(v40, v42, a3);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_112;
  }

LABEL_106:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v43 = *(a1 + 160);
  *v4 = 106;
  v44 = *(v43 + 16);
  v4[1] = v44;
  if (v44 > 0x7F)
  {
    v45 = sub_19575D0(v44, v4 + 1);
  }

  else
  {
    v45 = v4 + 2;
  }

  v4 = sub_17CA9B8(v43, v45, a3);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_118;
  }

LABEL_112:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v46 = *(a1 + 168);
  *v4 = 114;
  v47 = *(v46 + 64);
  v4[1] = v47;
  if (v47 > 0x7F)
  {
    v48 = sub_19575D0(v47, v4 + 1);
  }

  else
  {
    v48 = v4 + 2;
  }

  v4 = sub_17CB5E4(v46, v48, a3);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_124;
  }

LABEL_118:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v49 = *(a1 + 176);
  *v4 = 122;
  v50 = *(v49 + 44);
  v4[1] = v50;
  if (v50 > 0x7F)
  {
    v51 = sub_19575D0(v50, v4 + 1);
  }

  else
  {
    v51 = v4 + 2;
  }

  v4 = sub_17CD98C(v49, v51, a3);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_130;
  }

LABEL_124:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v52 = *(a1 + 184);
  *v4 = 386;
  v53 = *(v52 + 16);
  v4[2] = v53;
  if (v53 > 0x7F)
  {
    v54 = sub_19575D0(v53, v4 + 2);
  }

  else
  {
    v54 = v4 + 3;
  }

  v4 = sub_17CDFD0(v52, v54, a3);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_136;
  }

LABEL_130:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v55 = *(a1 + 192);
  *v4 = 418;
  v56 = *(v55 + 16);
  v4[2] = v56;
  if (v56 > 0x7F)
  {
    v57 = sub_19575D0(v56, v4 + 2);
  }

  else
  {
    v57 = v4 + 3;
  }

  v4 = sub_17B4E8C(v55, v57, a3);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_142;
  }

LABEL_136:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v58 = *(a1 + 200);
  *v4 = 426;
  v59 = *(v58 + 16);
  v4[2] = v59;
  if (v59 > 0x7F)
  {
    v60 = sub_19575D0(v59, v4 + 2);
  }

  else
  {
    v60 = v4 + 3;
  }

  v4 = sub_17CEF34(v58, v60, a3);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_148;
  }

LABEL_142:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v61 = *(a1 + 208);
  *v4 = 434;
  v62 = *(v61 + 16);
  v4[2] = v62;
  if (v62 > 0x7F)
  {
    v63 = sub_19575D0(v62, v4 + 2);
  }

  else
  {
    v63 = v4 + 3;
  }

  v4 = sub_17CFAB0(v61, v63, a3);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_154;
  }

LABEL_148:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v64 = *(a1 + 216);
  *v4 = 442;
  v65 = *(v64 + 20);
  v4[2] = v65;
  if (v65 > 0x7F)
  {
    v66 = sub_19575D0(v65, v4 + 2);
  }

  else
  {
    v66 = v4 + 3;
  }

  v4 = sub_17D52B8(v64, v66, a3);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_160;
  }

LABEL_154:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v67 = *(a1 + 224);
  *v4 = 450;
  v68 = *(v67 + 16);
  v4[2] = v68;
  if (v68 > 0x7F)
  {
    v69 = sub_19575D0(v68, v4 + 2);
  }

  else
  {
    v69 = v4 + 3;
  }

  v4 = sub_17B5848(v67, v69, a3);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_166;
  }

LABEL_160:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v70 = *(a1 + 232);
  *v4 = 458;
  v71 = *(v70 + 16);
  v4[2] = v71;
  if (v71 > 0x7F)
  {
    v72 = sub_19575D0(v71, v4 + 2);
  }

  else
  {
    v72 = v4 + 3;
  }

  v4 = sub_17BC5A4(v70, v72, a3);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_172;
  }

LABEL_166:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v73 = *(a1 + 240);
  *v4 = 466;
  v74 = *(v73 + 20);
  v4[2] = v74;
  if (v74 > 0x7F)
  {
    v75 = sub_19575D0(v74, v4 + 2);
  }

  else
  {
    v75 = v4 + 3;
  }

  v4 = sub_17D8ABC(v73, v75, a3);
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_178;
  }

LABEL_172:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v76 = *(a1 + 248);
  *v4 = 474;
  v77 = *(v76 + 16);
  v4[2] = v77;
  if (v77 > 0x7F)
  {
    v78 = sub_19575D0(v77, v4 + 2);
  }

  else
  {
    v78 = v4 + 3;
  }

  v4 = sub_17B0D34(v76, v78, a3);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_184;
  }

LABEL_178:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v79 = *(a1 + 256);
  *v4 = 482;
  v80 = *(v79 + 16);
  v4[2] = v80;
  if (v80 > 0x7F)
  {
    v81 = sub_19575D0(v80, v4 + 2);
  }

  else
  {
    v81 = v4 + 3;
  }

  v4 = sub_17DBE3C(v79, v81, a3);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_190;
  }

LABEL_184:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v82 = *(a1 + 264);
  *v4 = 490;
  v83 = *(v82 + 32);
  v4[2] = v83;
  if (v83 > 0x7F)
  {
    v84 = sub_19575D0(v83, v4 + 2);
  }

  else
  {
    v84 = v4 + 3;
  }

  v4 = sub_17DD100(v82, v84, a3);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_196;
  }

LABEL_190:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v85 = *(a1 + 272);
  *v4 = 498;
  v86 = *(v85 + 20);
  v4[2] = v86;
  if (v86 > 0x7F)
  {
    v87 = sub_19575D0(v86, v4 + 2);
  }

  else
  {
    v87 = v4 + 3;
  }

  v4 = sub_17E3938(v85, v87, a3);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_202;
  }

LABEL_196:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v88 = *(a1 + 280);
  *v4 = 506;
  v89 = *(v88 + 20);
  v4[2] = v89;
  if (v89 > 0x7F)
  {
    v90 = sub_19575D0(v89, v4 + 2);
  }

  else
  {
    v90 = v4 + 3;
  }

  v4 = sub_17A36D0(v88, v90, a3);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_208;
  }

LABEL_202:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v91 = *(a1 + 288);
  *v4 = 642;
  v92 = *(v91 + 16);
  v4[2] = v92;
  if (v92 > 0x7F)
  {
    v93 = sub_19575D0(v92, v4 + 2);
  }

  else
  {
    v93 = v4 + 3;
  }

  v4 = sub_17A47B8(v91, v93, a3);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_214;
  }

LABEL_208:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v94 = *(a1 + 296);
  *v4 = 650;
  v95 = *(v94 + 16);
  v4[2] = v95;
  if (v95 > 0x7F)
  {
    v96 = sub_19575D0(v95, v4 + 2);
  }

  else
  {
    v96 = v4 + 3;
  }

  v4 = sub_17A5820(v94, v96, a3);
  if ((v6 & 0x40000000) == 0)
  {
LABEL_32:
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_226;
    }

    goto LABEL_220;
  }

LABEL_214:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v97 = *(a1 + 304);
  *v4 = 658;
  v98 = *(v97 + 16);
  v4[2] = v98;
  if (v98 > 0x7F)
  {
    v99 = sub_19575D0(v98, v4 + 2);
  }

  else
  {
    v99 = v4 + 3;
  }

  v4 = sub_17A9EC8(v97, v99, a3);
  if (v6 < 0)
  {
LABEL_220:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v100 = *(a1 + 312);
    *v4 = 674;
    v101 = *(v100 + 64);
    v4[2] = v101;
    if (v101 > 0x7F)
    {
      v102 = sub_19575D0(v101, v4 + 2);
    }

    else
    {
      v102 = v4 + 3;
    }

    v4 = sub_17C0E04(v100, v102, a3);
  }

LABEL_226:
  v103 = *(a1 + 44);
  if (v103)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v104 = *(a1 + 320);
    *v4 = 682;
    v105 = *(v104 + 16);
    v4[2] = v105;
    if (v105 > 0x7F)
    {
      v106 = sub_19575D0(v105, v4 + 2);
    }

    else
    {
      v106 = v4 + 3;
    }

    v4 = sub_17E6F18(v104, v106, a3);
    if ((v103 & 2) == 0)
    {
LABEL_228:
      if ((v103 & 4) == 0)
      {
        goto LABEL_229;
      }

      goto LABEL_271;
    }
  }

  else if ((v103 & 2) == 0)
  {
    goto LABEL_228;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v107 = *(a1 + 328);
  *v4 = 690;
  v108 = *(v107 + 16);
  v4[2] = v108;
  if (v108 > 0x7F)
  {
    v109 = sub_19575D0(v108, v4 + 2);
  }

  else
  {
    v109 = v4 + 3;
  }

  v4 = sub_17E7838(v107, v109, a3);
  if ((v103 & 4) == 0)
  {
LABEL_229:
    if ((v103 & 8) == 0)
    {
      goto LABEL_230;
    }

    goto LABEL_277;
  }

LABEL_271:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v110 = *(a1 + 336);
  *v4 = 698;
  v111 = *(v110 + 16);
  v4[2] = v111;
  if (v111 > 0x7F)
  {
    v112 = sub_19575D0(v111, v4 + 2);
  }

  else
  {
    v112 = v4 + 3;
  }

  v4 = sub_17E8C7C(v110, v112, a3);
  if ((v103 & 8) == 0)
  {
LABEL_230:
    if ((v103 & 0x10) == 0)
    {
      goto LABEL_231;
    }

    goto LABEL_283;
  }

LABEL_277:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v113 = *(a1 + 344);
  *v4 = 706;
  v114 = *(v113 + 20);
  v4[2] = v114;
  if (v114 > 0x7F)
  {
    v115 = sub_19575D0(v114, v4 + 2);
  }

  else
  {
    v115 = v4 + 3;
  }

  v4 = sub_17EA9E4(v113, v115, a3);
  if ((v103 & 0x10) == 0)
  {
LABEL_231:
    if ((v103 & 0x20) == 0)
    {
      goto LABEL_232;
    }

    goto LABEL_289;
  }

LABEL_283:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v116 = *(a1 + 352);
  *v4 = 714;
  v117 = *(v116 + 16);
  v4[2] = v117;
  if (v117 > 0x7F)
  {
    v118 = sub_19575D0(v117, v4 + 2);
  }

  else
  {
    v118 = v4 + 3;
  }

  v4 = sub_1869744(v116, v118, a3);
  if ((v103 & 0x20) == 0)
  {
LABEL_232:
    if ((v103 & 0x40) == 0)
    {
      goto LABEL_233;
    }

    goto LABEL_295;
  }

LABEL_289:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v119 = *(a1 + 360);
  *v4 = 722;
  v120 = *(v119 + 16);
  v4[2] = v120;
  if (v120 > 0x7F)
  {
    v121 = sub_19575D0(v120, v4 + 2);
  }

  else
  {
    v121 = v4 + 3;
  }

  v4 = sub_17EB6F4(v119, v121, a3);
  if ((v103 & 0x40) == 0)
  {
LABEL_233:
    if ((v103 & 0x80) == 0)
    {
      goto LABEL_234;
    }

    goto LABEL_301;
  }

LABEL_295:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v122 = *(a1 + 368);
  *v4 = 730;
  v123 = *(v122 + 16);
  v4[2] = v123;
  if (v123 > 0x7F)
  {
    v124 = sub_19575D0(v123, v4 + 2);
  }

  else
  {
    v124 = v4 + 3;
  }

  v4 = sub_17ED8FC(v122, v124, a3);
  if ((v103 & 0x80) == 0)
  {
LABEL_234:
    if ((v103 & 0x100) == 0)
    {
      goto LABEL_235;
    }

    goto LABEL_307;
  }

LABEL_301:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v125 = *(a1 + 376);
  *v4 = 738;
  v126 = *(v125 + 16);
  v4[2] = v126;
  if (v126 > 0x7F)
  {
    v127 = sub_19575D0(v126, v4 + 2);
  }

  else
  {
    v127 = v4 + 3;
  }

  v4 = sub_17EE028(v125, v127, a3);
  if ((v103 & 0x100) == 0)
  {
LABEL_235:
    if ((v103 & 0x200) == 0)
    {
      goto LABEL_236;
    }

    goto LABEL_313;
  }

LABEL_307:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v128 = *(a1 + 384);
  *v4 = 746;
  v129 = *(v128 + 16);
  v4[2] = v129;
  if (v129 > 0x7F)
  {
    v130 = sub_19575D0(v129, v4 + 2);
  }

  else
  {
    v130 = v4 + 3;
  }

  v4 = sub_17EE9C8(v128, v130, a3);
  if ((v103 & 0x200) == 0)
  {
LABEL_236:
    if ((v103 & 0x400) == 0)
    {
      goto LABEL_237;
    }

    goto LABEL_319;
  }

LABEL_313:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v131 = *(a1 + 392);
  *v4 = 754;
  v132 = *(v131 + 16);
  v4[2] = v132;
  if (v132 > 0x7F)
  {
    v133 = sub_19575D0(v132, v4 + 2);
  }

  else
  {
    v133 = v4 + 3;
  }

  v4 = sub_17EBF48(v131, v133, a3);
  if ((v103 & 0x400) == 0)
  {
LABEL_237:
    if ((v103 & 0x800) == 0)
    {
      goto LABEL_238;
    }

    goto LABEL_325;
  }

LABEL_319:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v134 = *(a1 + 400);
  *v4 = 762;
  v135 = *(v134 + 16);
  v4[2] = v135;
  if (v135 > 0x7F)
  {
    v136 = sub_19575D0(v135, v4 + 2);
  }

  else
  {
    v136 = v4 + 3;
  }

  v4 = sub_17EC57C(v134, v136, a3);
  if ((v103 & 0x800) == 0)
  {
LABEL_238:
    if ((v103 & 0x1000) == 0)
    {
      goto LABEL_239;
    }

    goto LABEL_331;
  }

LABEL_325:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v137 = *(a1 + 408);
  *v4 = 898;
  v138 = *(v137 + 16);
  v4[2] = v138;
  if (v138 > 0x7F)
  {
    v139 = sub_19575D0(v138, v4 + 2);
  }

  else
  {
    v139 = v4 + 3;
  }

  v4 = sub_1922388(v137, v139, a3);
  if ((v103 & 0x1000) == 0)
  {
LABEL_239:
    if ((v103 & 0x2000) == 0)
    {
      goto LABEL_240;
    }

    goto LABEL_337;
  }

LABEL_331:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v140 = *(a1 + 416);
  *v4 = 906;
  v141 = *(v140 + 16);
  v4[2] = v141;
  if (v141 > 0x7F)
  {
    v142 = sub_19575D0(v141, v4 + 2);
  }

  else
  {
    v142 = v4 + 3;
  }

  v4 = sub_17ED05C(v140, v142, a3);
  if ((v103 & 0x2000) == 0)
  {
LABEL_240:
    if ((v103 & 0x4000) == 0)
    {
      goto LABEL_241;
    }

    goto LABEL_343;
  }

LABEL_337:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v143 = *(a1 + 424);
  *v4 = 914;
  v144 = *(v143 + 40);
  v4[2] = v144;
  if (v144 > 0x7F)
  {
    v145 = sub_19575D0(v144, v4 + 2);
  }

  else
  {
    v145 = v4 + 3;
  }

  v4 = sub_17E5D50(v143, v145, a3);
  if ((v103 & 0x4000) == 0)
  {
LABEL_241:
    if ((v103 & 0x8000) == 0)
    {
      goto LABEL_242;
    }

    goto LABEL_349;
  }

LABEL_343:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v146 = *(a1 + 432);
  *v4 = 922;
  v147 = *(v146 + 40);
  v4[2] = v147;
  if (v147 > 0x7F)
  {
    v148 = sub_19575D0(v147, v4 + 2);
  }

  else
  {
    v148 = v4 + 3;
  }

  v4 = sub_17E68A0(v146, v148, a3);
  if ((v103 & 0x8000) == 0)
  {
LABEL_242:
    if ((v103 & 0x10000) == 0)
    {
      goto LABEL_243;
    }

    goto LABEL_355;
  }

LABEL_349:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v149 = *(a1 + 440);
  *v4 = 930;
  v150 = *(v149 + 40);
  v4[2] = v150;
  if (v150 > 0x7F)
  {
    v151 = sub_19575D0(v150, v4 + 2);
  }

  else
  {
    v151 = v4 + 3;
  }

  v4 = sub_17C8198(v149, v151, a3);
  if ((v103 & 0x10000) == 0)
  {
LABEL_243:
    if ((v103 & 0x20000) == 0)
    {
      goto LABEL_244;
    }

    goto LABEL_361;
  }

LABEL_355:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v152 = *(a1 + 448);
  *v4 = 938;
  v153 = *(v152 + 40);
  v4[2] = v153;
  if (v153 > 0x7F)
  {
    v154 = sub_19575D0(v153, v4 + 2);
  }

  else
  {
    v154 = v4 + 3;
  }

  v4 = sub_17C1930(v152, v154, a3);
  if ((v103 & 0x20000) == 0)
  {
LABEL_244:
    if ((v103 & 0x40000) == 0)
    {
      goto LABEL_245;
    }

    goto LABEL_367;
  }

LABEL_361:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v155 = *(a1 + 456);
  *v4 = 946;
  v156 = *(v155 + 44);
  v4[2] = v156;
  if (v156 > 0x7F)
  {
    v157 = sub_19575D0(v156, v4 + 2);
  }

  else
  {
    v157 = v4 + 3;
  }

  v4 = sub_1393B3C(v155, v157, a3);
  if ((v103 & 0x40000) == 0)
  {
LABEL_245:
    if ((v103 & 0x80000) == 0)
    {
      goto LABEL_246;
    }

    goto LABEL_373;
  }

LABEL_367:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v158 = *(a1 + 464);
  *v4 = 954;
  v159 = *(v158 + 16);
  v4[2] = v159;
  if (v159 > 0x7F)
  {
    v160 = sub_19575D0(v159, v4 + 2);
  }

  else
  {
    v160 = v4 + 3;
  }

  v4 = sub_191CCD8(v158, v160, a3);
  if ((v103 & 0x80000) == 0)
  {
LABEL_246:
    if ((v103 & 0x100000) == 0)
    {
      goto LABEL_247;
    }

    goto LABEL_379;
  }

LABEL_373:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v161 = *(a1 + 472);
  *v4 = 962;
  v162 = *(v161 + 16);
  v4[2] = v162;
  if (v162 > 0x7F)
  {
    v163 = sub_19575D0(v162, v4 + 2);
  }

  else
  {
    v163 = v4 + 3;
  }

  v4 = sub_17EEB78(v161, v163, a3);
  if ((v103 & 0x100000) == 0)
  {
LABEL_247:
    if ((v103 & 0x200000) == 0)
    {
      goto LABEL_248;
    }

    goto LABEL_385;
  }

LABEL_379:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v164 = *(a1 + 480);
  *v4 = 970;
  v165 = *(v164 + 64);
  v4[2] = v165;
  if (v165 > 0x7F)
  {
    v166 = sub_19575D0(v165, v4 + 2);
  }

  else
  {
    v166 = v4 + 3;
  }

  v4 = sub_179D6D4(v164, v166, a3);
  if ((v103 & 0x200000) == 0)
  {
LABEL_248:
    if ((v103 & 0x400000) == 0)
    {
      goto LABEL_249;
    }

    goto LABEL_391;
  }

LABEL_385:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v167 = *(a1 + 488);
  *v4 = 978;
  v168 = *(v167 + 44);
  v4[2] = v168;
  if (v168 > 0x7F)
  {
    v169 = sub_19575D0(v168, v4 + 2);
  }

  else
  {
    v169 = v4 + 3;
  }

  v4 = sub_17F268C(v167, v169, a3);
  if ((v103 & 0x400000) == 0)
  {
LABEL_249:
    if ((v103 & 0x800000) == 0)
    {
      goto LABEL_250;
    }

    goto LABEL_397;
  }

LABEL_391:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v170 = *(a1 + 496);
  *v4 = 986;
  v171 = *(v170 + 16);
  v4[2] = v171;
  if (v171 > 0x7F)
  {
    v172 = sub_19575D0(v171, v4 + 2);
  }

  else
  {
    v172 = v4 + 3;
  }

  v4 = sub_191CE78(v170, v172, a3);
  if ((v103 & 0x800000) == 0)
  {
LABEL_250:
    if ((v103 & 0x1000000) == 0)
    {
      goto LABEL_251;
    }

    goto LABEL_403;
  }

LABEL_397:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v173 = *(a1 + 504);
  *v4 = 994;
  v174 = *(v173 + 40);
  v4[2] = v174;
  if (v174 > 0x7F)
  {
    v175 = sub_19575D0(v174, v4 + 2);
  }

  else
  {
    v175 = v4 + 3;
  }

  v4 = sub_1854868(v173, v175, a3);
  if ((v103 & 0x1000000) == 0)
  {
LABEL_251:
    if ((v103 & 0x2000000) == 0)
    {
      goto LABEL_252;
    }

    goto LABEL_409;
  }

LABEL_403:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v176 = *(a1 + 512);
  *v4 = 1002;
  v177 = *(v176 + 40);
  v4[2] = v177;
  if (v177 > 0x7F)
  {
    v178 = sub_19575D0(v177, v4 + 2);
  }

  else
  {
    v178 = v4 + 3;
  }

  v4 = sub_1854C20(v176, v178, a3);
  if ((v103 & 0x2000000) == 0)
  {
LABEL_252:
    if ((v103 & 0x4000000) == 0)
    {
      goto LABEL_253;
    }

    goto LABEL_415;
  }

LABEL_409:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v179 = *(a1 + 520);
  *v4 = 1010;
  v180 = *(v179 + 40);
  v4[2] = v180;
  if (v180 > 0x7F)
  {
    v181 = sub_19575D0(v180, v4 + 2);
  }

  else
  {
    v181 = v4 + 3;
  }

  v4 = sub_1854FD8(v179, v181, a3);
  if ((v103 & 0x4000000) == 0)
  {
LABEL_253:
    if ((v103 & 0x8000000) == 0)
    {
      goto LABEL_254;
    }

    goto LABEL_421;
  }

LABEL_415:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v182 = *(a1 + 528);
  *v4 = 1018;
  v183 = *(v182 + 40);
  v4[2] = v183;
  if (v183 > 0x7F)
  {
    v184 = sub_19575D0(v183, v4 + 2);
  }

  else
  {
    v184 = v4 + 3;
  }

  v4 = sub_1855390(v182, v184, a3);
  if ((v103 & 0x8000000) == 0)
  {
LABEL_254:
    if ((v103 & 0x10000000) == 0)
    {
      goto LABEL_255;
    }

    goto LABEL_427;
  }

LABEL_421:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v185 = *(a1 + 536);
  *v4 = 1154;
  v186 = *(v185 + 40);
  v4[2] = v186;
  if (v186 > 0x7F)
  {
    v187 = sub_19575D0(v186, v4 + 2);
  }

  else
  {
    v187 = v4 + 3;
  }

  v4 = sub_1855748(v185, v187, a3);
  if ((v103 & 0x10000000) == 0)
  {
LABEL_255:
    if ((v103 & 0x20000000) == 0)
    {
      goto LABEL_256;
    }

    goto LABEL_433;
  }

LABEL_427:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v188 = *(a1 + 544);
  *v4 = 1162;
  v189 = *(v188 + 44);
  v4[2] = v189;
  if (v189 > 0x7F)
  {
    v190 = sub_19575D0(v189, v4 + 2);
  }

  else
  {
    v190 = v4 + 3;
  }

  v4 = sub_1855E44(v188, v190, a3);
  if ((v103 & 0x20000000) == 0)
  {
LABEL_256:
    if ((v103 & 0x40000000) == 0)
    {
      goto LABEL_257;
    }

    goto LABEL_439;
  }

LABEL_433:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v191 = *(a1 + 552);
  *v4 = 1170;
  v192 = *(v191 + 44);
  v4[2] = v192;
  if (v192 > 0x7F)
  {
    v193 = sub_19575D0(v192, v4 + 2);
  }

  else
  {
    v193 = v4 + 3;
  }

  v4 = sub_18570F8(v191, v193, a3);
  if ((v103 & 0x40000000) == 0)
  {
LABEL_257:
    if ((v103 & 0x80000000) == 0)
    {
      goto LABEL_451;
    }

    goto LABEL_445;
  }

LABEL_439:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v194 = *(a1 + 560);
  *v4 = 1178;
  v195 = *(v194 + 40);
  v4[2] = v195;
  if (v195 > 0x7F)
  {
    v196 = sub_19575D0(v195, v4 + 2);
  }

  else
  {
    v196 = v4 + 3;
  }

  v4 = sub_18575B4(v194, v196, a3);
  if (v103 < 0)
  {
LABEL_445:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v197 = *(a1 + 568);
    *v4 = 1186;
    v198 = *(v197 + 44);
    v4[2] = v198;
    if (v198 > 0x7F)
    {
      v199 = sub_19575D0(v198, v4 + 2);
    }

    else
    {
      v199 = v4 + 3;
    }

    v4 = sub_1857B80(v197, v199, a3);
  }

LABEL_451:
  v200 = *(a1 + 48);
  if (v200)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v201 = *(a1 + 576);
    *v4 = 1194;
    v202 = *(v201 + 40);
    v4[2] = v202;
    if (v202 > 0x7F)
    {
      v203 = sub_19575D0(v202, v4 + 2);
    }

    else
    {
      v203 = v4 + 3;
    }

    v4 = sub_1858180(v201, v203, a3);
    if ((v200 & 2) == 0)
    {
LABEL_453:
      if ((v200 & 4) == 0)
      {
        goto LABEL_454;
      }

      goto LABEL_496;
    }
  }

  else if ((v200 & 2) == 0)
  {
    goto LABEL_453;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v204 = *(a1 + 584);
  *v4 = 1202;
  v205 = *(v204 + 40);
  v4[2] = v205;
  if (v205 > 0x7F)
  {
    v206 = sub_19575D0(v205, v4 + 2);
  }

  else
  {
    v206 = v4 + 3;
  }

  v4 = sub_17F5230(v204, v206, a3);
  if ((v200 & 4) == 0)
  {
LABEL_454:
    if ((v200 & 8) == 0)
    {
      goto LABEL_455;
    }

    goto LABEL_502;
  }

LABEL_496:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v207 = *(a1 + 592);
  *v4 = 1210;
  v208 = *(v207 + 44);
  v4[2] = v208;
  if (v208 > 0x7F)
  {
    v209 = sub_19575D0(v208, v4 + 2);
  }

  else
  {
    v209 = v4 + 3;
  }

  v4 = sub_18585B8(v207, v209, a3);
  if ((v200 & 8) == 0)
  {
LABEL_455:
    if ((v200 & 0x10) == 0)
    {
      goto LABEL_456;
    }

    goto LABEL_508;
  }

LABEL_502:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v210 = *(a1 + 600);
  *v4 = 1226;
  v211 = *(v210 + 40);
  v4[2] = v211;
  if (v211 > 0x7F)
  {
    v212 = sub_19575D0(v211, v4 + 2);
  }

  else
  {
    v212 = v4 + 3;
  }

  v4 = sub_185A594(v210, v212, a3);
  if ((v200 & 0x10) == 0)
  {
LABEL_456:
    if ((v200 & 0x20) == 0)
    {
      goto LABEL_457;
    }

    goto LABEL_514;
  }

LABEL_508:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v213 = *(a1 + 608);
  *v4 = 1234;
  v214 = *(v213 + 40);
  v4[2] = v214;
  if (v214 > 0x7F)
  {
    v215 = sub_19575D0(v214, v4 + 2);
  }

  else
  {
    v215 = v4 + 3;
  }

  v4 = sub_185640C(v213, v215, a3);
  if ((v200 & 0x20) == 0)
  {
LABEL_457:
    if ((v200 & 0x40) == 0)
    {
      goto LABEL_458;
    }

    goto LABEL_520;
  }

LABEL_514:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v216 = *(a1 + 616);
  *v4 = 1250;
  v217 = *(v216 + 40);
  v4[2] = v217;
  if (v217 > 0x7F)
  {
    v218 = sub_19575D0(v217, v4 + 2);
  }

  else
  {
    v218 = v4 + 3;
  }

  v4 = sub_18589B8(v216, v218, a3);
  if ((v200 & 0x40) == 0)
  {
LABEL_458:
    if ((v200 & 0x80) == 0)
    {
      goto LABEL_459;
    }

    goto LABEL_526;
  }

LABEL_520:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v219 = *(a1 + 624);
  *v4 = 1258;
  v220 = *(v219 + 16);
  v4[2] = v220;
  if (v220 > 0x7F)
  {
    v221 = sub_19575D0(v220, v4 + 2);
  }

  else
  {
    v221 = v4 + 3;
  }

  v4 = sub_185A210(v219, v221, a3);
  if ((v200 & 0x80) == 0)
  {
LABEL_459:
    if ((v200 & 0x100) == 0)
    {
      goto LABEL_460;
    }

    goto LABEL_532;
  }

LABEL_526:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v222 = *(a1 + 632);
  *v4 = 1266;
  v223 = *(v222 + 40);
  v4[2] = v223;
  if (v223 > 0x7F)
  {
    v224 = sub_19575D0(v223, v4 + 2);
  }

  else
  {
    v224 = v4 + 3;
  }

  v4 = sub_17CDDE4(v222, v224, a3);
  if ((v200 & 0x100) == 0)
  {
LABEL_460:
    if ((v200 & 0x200) == 0)
    {
      goto LABEL_461;
    }

    goto LABEL_538;
  }

LABEL_532:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v225 = *(a1 + 640);
  *v4 = 1418;
  v226 = *(v225 + 16);
  v4[2] = v226;
  if (v226 > 0x7F)
  {
    v227 = sub_19575D0(v226, v4 + 2);
  }

  else
  {
    v227 = v4 + 3;
  }

  v4 = sub_191D018(v225, v227, a3);
  if ((v200 & 0x200) == 0)
  {
LABEL_461:
    if ((v200 & 0x400) == 0)
    {
      goto LABEL_462;
    }

    goto LABEL_544;
  }

LABEL_538:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v228 = *(a1 + 648);
  *v4 = 1426;
  v229 = *(v228 + 40);
  v4[2] = v229;
  if (v229 > 0x7F)
  {
    v230 = sub_19575D0(v229, v4 + 2);
  }

  else
  {
    v230 = v4 + 3;
  }

  v4 = sub_1856894(v228, v230, a3);
  if ((v200 & 0x400) == 0)
  {
LABEL_462:
    if ((v200 & 0x800) == 0)
    {
      goto LABEL_463;
    }

    goto LABEL_550;
  }

LABEL_544:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v231 = *(a1 + 656);
  *v4 = 1434;
  v232 = *(v231 + 40);
  v4[2] = v232;
  if (v232 > 0x7F)
  {
    v233 = sub_19575D0(v232, v4 + 2);
  }

  else
  {
    v233 = v4 + 3;
  }

  v4 = sub_182F890(v231, v233, a3);
  if ((v200 & 0x800) == 0)
  {
LABEL_463:
    if ((v200 & 0x1000) == 0)
    {
      goto LABEL_464;
    }

    goto LABEL_556;
  }

LABEL_550:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v234 = *(a1 + 664);
  *v4 = 1442;
  v235 = *(v234 + 44);
  v4[2] = v235;
  if (v235 > 0x7F)
  {
    v236 = sub_19575D0(v235, v4 + 2);
  }

  else
  {
    v236 = v4 + 3;
  }

  v4 = sub_17D947C(v234, v236, a3);
  if ((v200 & 0x1000) == 0)
  {
LABEL_464:
    if ((v200 & 0x2000) == 0)
    {
      goto LABEL_465;
    }

    goto LABEL_562;
  }

LABEL_556:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v237 = *(a1 + 672);
  *v4 = 1450;
  v238 = *(v237 + 40);
  v4[2] = v238;
  if (v238 > 0x7F)
  {
    v239 = sub_19575D0(v238, v4 + 2);
  }

  else
  {
    v239 = v4 + 3;
  }

  v4 = sub_1856C4C(v237, v239, a3);
  if ((v200 & 0x2000) == 0)
  {
LABEL_465:
    if ((v200 & 0x4000) == 0)
    {
      goto LABEL_466;
    }

    goto LABEL_568;
  }

LABEL_562:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v240 = *(a1 + 680);
  *v4 = 1458;
  v241 = *(v240 + 16);
  v4[2] = v241;
  if (v241 > 0x7F)
  {
    v242 = sub_19575D0(v241, v4 + 2);
  }

  else
  {
    v242 = v4 + 3;
  }

  v4 = sub_17D0498(v240, v242, a3);
  if ((v200 & 0x4000) == 0)
  {
LABEL_466:
    if ((v200 & 0x8000) == 0)
    {
      goto LABEL_467;
    }

    goto LABEL_574;
  }

LABEL_568:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v243 = *(a1 + 688);
  *v4 = 1466;
  v244 = *(v243 + 16);
  v4[2] = v244;
  if (v244 > 0x7F)
  {
    v245 = sub_19575D0(v244, v4 + 2);
  }

  else
  {
    v245 = v4 + 3;
  }

  v4 = sub_17D2974(v243, v245, a3);
  if ((v200 & 0x8000) == 0)
  {
LABEL_467:
    if ((v200 & 0x10000) == 0)
    {
      goto LABEL_468;
    }

    goto LABEL_580;
  }

LABEL_574:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v246 = *(a1 + 696);
  *v4 = 1474;
  v247 = *(v246 + 16);
  v4[2] = v247;
  if (v247 > 0x7F)
  {
    v248 = sub_19575D0(v247, v4 + 2);
  }

  else
  {
    v248 = v4 + 3;
  }

  v4 = sub_17D34A4(v246, v248, a3);
  if ((v200 & 0x10000) == 0)
  {
LABEL_468:
    if ((v200 & 0x20000) == 0)
    {
      goto LABEL_469;
    }

    goto LABEL_586;
  }

LABEL_580:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v249 = *(a1 + 704);
  *v4 = 1482;
  v250 = *(v249 + 40);
  v4[2] = v250;
  if (v250 > 0x7F)
  {
    v251 = sub_19575D0(v250, v4 + 2);
  }

  else
  {
    v251 = v4 + 3;
  }

  v4 = sub_182DEDC(v249, v251, a3);
  if ((v200 & 0x20000) == 0)
  {
LABEL_469:
    if ((v200 & 0x40000) == 0)
    {
      goto LABEL_470;
    }

    goto LABEL_592;
  }

LABEL_586:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v252 = *(a1 + 712);
  *v4 = 1490;
  v253 = *(v252 + 16);
  v4[2] = v253;
  if (v253 > 0x7F)
  {
    v254 = sub_19575D0(v253, v4 + 2);
  }

  else
  {
    v254 = v4 + 3;
  }

  v4 = sub_185BC60(v252, v254, a3);
  if ((v200 & 0x40000) == 0)
  {
LABEL_470:
    if ((v200 & 0x80000) == 0)
    {
      goto LABEL_471;
    }

    goto LABEL_598;
  }

LABEL_592:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v255 = *(a1 + 720);
  *v4 = 1498;
  v256 = *(v255 + 16);
  v4[2] = v256;
  if (v256 > 0x7F)
  {
    v257 = sub_19575D0(v256, v4 + 2);
  }

  else
  {
    v257 = v4 + 3;
  }

  v4 = sub_17BAD10(v255, v257, a3);
  if ((v200 & 0x80000) == 0)
  {
LABEL_471:
    if ((v200 & 0x100000) == 0)
    {
      goto LABEL_472;
    }

    goto LABEL_604;
  }

LABEL_598:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v258 = *(a1 + 728);
  *v4 = 1514;
  v259 = *(v258 + 16);
  v4[2] = v259;
  if (v259 > 0x7F)
  {
    v260 = sub_19575D0(v259, v4 + 2);
  }

  else
  {
    v260 = v4 + 3;
  }

  v4 = sub_17D196C(v258, v260, a3);
  if ((v200 & 0x100000) == 0)
  {
LABEL_472:
    if ((v200 & 0x200000) == 0)
    {
      goto LABEL_473;
    }

    goto LABEL_610;
  }

LABEL_604:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v261 = *(a1 + 736);
  *v4 = 1522;
  v262 = *(v261 + 32);
  v4[2] = v262;
  if (v262 > 0x7F)
  {
    v263 = sub_19575D0(v262, v4 + 2);
  }

  else
  {
    v263 = v4 + 3;
  }

  v4 = sub_184B500(v261, v263, a3);
  if ((v200 & 0x200000) == 0)
  {
LABEL_473:
    if ((v200 & 0x400000) == 0)
    {
      goto LABEL_474;
    }

    goto LABEL_616;
  }

LABEL_610:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v264 = *(a1 + 744);
  *v4 = 1530;
  v265 = *(v264 + 16);
  v4[2] = v265;
  if (v265 > 0x7F)
  {
    v266 = sub_19575D0(v265, v4 + 2);
  }

  else
  {
    v266 = v4 + 3;
  }

  v4 = sub_185D154(v264, v266, a3);
  if ((v200 & 0x400000) == 0)
  {
LABEL_474:
    if ((v200 & 0x800000) == 0)
    {
      goto LABEL_475;
    }

    goto LABEL_622;
  }

LABEL_616:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v267 = *(a1 + 752);
  *v4 = 1666;
  v268 = *(v267 + 16);
  v4[2] = v268;
  if (v268 > 0x7F)
  {
    v269 = sub_19575D0(v268, v4 + 2);
  }

  else
  {
    v269 = v4 + 3;
  }

  v4 = sub_17BB780(v267, v269, a3);
  if ((v200 & 0x800000) == 0)
  {
LABEL_475:
    if ((v200 & 0x1000000) == 0)
    {
      goto LABEL_476;
    }

    goto LABEL_628;
  }

LABEL_622:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v270 = *(a1 + 760);
  *v4 = 1674;
  v271 = *(v270 + 16);
  v4[2] = v271;
  if (v271 > 0x7F)
  {
    v272 = sub_19575D0(v271, v4 + 2);
  }

  else
  {
    v272 = v4 + 3;
  }

  v4 = sub_17BB930(v270, v272, a3);
  if ((v200 & 0x1000000) == 0)
  {
LABEL_476:
    if ((v200 & 0x2000000) == 0)
    {
      goto LABEL_477;
    }

    goto LABEL_634;
  }

LABEL_628:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v273 = *(a1 + 768);
  *v4 = 1682;
  v274 = *(v273 + 44);
  v4[2] = v274;
  if (v274 > 0x7F)
  {
    v275 = sub_19575D0(v274, v4 + 2);
  }

  else
  {
    v275 = v4 + 3;
  }

  v4 = sub_18292F0(v273, v275, a3);
  if ((v200 & 0x2000000) == 0)
  {
LABEL_477:
    if ((v200 & 0x4000000) == 0)
    {
      goto LABEL_478;
    }

    goto LABEL_640;
  }

LABEL_634:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v276 = *(a1 + 776);
  *v4 = 1698;
  v277 = *(v276 + 40);
  v4[2] = v277;
  if (v277 > 0x7F)
  {
    v278 = sub_19575D0(v277, v4 + 2);
  }

  else
  {
    v278 = v4 + 3;
  }

  v4 = sub_18205D0(v276, v278, a3);
  if ((v200 & 0x4000000) == 0)
  {
LABEL_478:
    if ((v200 & 0x8000000) == 0)
    {
      goto LABEL_479;
    }

    goto LABEL_646;
  }

LABEL_640:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v279 = *(a1 + 784);
  *v4 = 1706;
  v280 = *(v279 + 40);
  v4[2] = v280;
  if (v280 > 0x7F)
  {
    v281 = sub_19575D0(v280, v4 + 2);
  }

  else
  {
    v281 = v4 + 3;
  }

  v4 = sub_18255D0(v279, v281, a3);
  if ((v200 & 0x8000000) == 0)
  {
LABEL_479:
    if ((v200 & 0x10000000) == 0)
    {
      goto LABEL_480;
    }

    goto LABEL_652;
  }

LABEL_646:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v282 = *(a1 + 792);
  *v4 = 1714;
  v283 = *(v282 + 40);
  v4[2] = v283;
  if (v283 > 0x7F)
  {
    v284 = sub_19575D0(v283, v4 + 2);
  }

  else
  {
    v284 = v4 + 3;
  }

  v4 = sub_17DA4A0(v282, v284, a3);
  if ((v200 & 0x10000000) == 0)
  {
LABEL_480:
    if ((v200 & 0x20000000) == 0)
    {
      goto LABEL_481;
    }

    goto LABEL_658;
  }

LABEL_652:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v285 = *(a1 + 800);
  *v4 = 1722;
  v286 = *(v285 + 40);
  v4[2] = v286;
  if (v286 > 0x7F)
  {
    v287 = sub_19575D0(v286, v4 + 2);
  }

  else
  {
    v287 = v4 + 3;
  }

  v4 = sub_18211CC(v285, v287, a3);
  if ((v200 & 0x20000000) == 0)
  {
LABEL_481:
    if ((v200 & 0x40000000) == 0)
    {
      goto LABEL_482;
    }

    goto LABEL_664;
  }

LABEL_658:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v288 = *(a1 + 808);
  *v4 = 1730;
  v289 = *(v288 + 40);
  v4[2] = v289;
  if (v289 > 0x7F)
  {
    v290 = sub_19575D0(v289, v4 + 2);
  }

  else
  {
    v290 = v4 + 3;
  }

  v4 = sub_1822160(v288, v290, a3);
  if ((v200 & 0x40000000) == 0)
  {
LABEL_482:
    if ((v200 & 0x80000000) == 0)
    {
      goto LABEL_676;
    }

    goto LABEL_670;
  }

LABEL_664:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v291 = *(a1 + 816);
  *v4 = 1738;
  v292 = *(v291 + 40);
  v4[2] = v292;
  if (v292 > 0x7F)
  {
    v293 = sub_19575D0(v292, v4 + 2);
  }

  else
  {
    v293 = v4 + 3;
  }

  v4 = sub_1822FD0(v291, v293, a3);
  if (v200 < 0)
  {
LABEL_670:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v294 = *(a1 + 824);
    *v4 = 1746;
    v295 = *(v294 + 40);
    v4[2] = v295;
    if (v295 > 0x7F)
    {
      v296 = sub_19575D0(v295, v4 + 2);
    }

    else
    {
      v296 = v4 + 3;
    }

    v4 = sub_1823930(v294, v296, a3);
  }

LABEL_676:
  v297 = *(a1 + 52);
  if (v297)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v298 = *(a1 + 832);
    *v4 = 1754;
    v299 = *(v298 + 44);
    v4[2] = v299;
    if (v299 > 0x7F)
    {
      v300 = sub_19575D0(v299, v4 + 2);
    }

    else
    {
      v300 = v4 + 3;
    }

    v4 = sub_181FBB8(v298, v300, a3);
    if ((v297 & 2) == 0)
    {
LABEL_678:
      if ((v297 & 4) == 0)
      {
        goto LABEL_679;
      }

      goto LABEL_695;
    }
  }

  else if ((v297 & 2) == 0)
  {
    goto LABEL_678;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v301 = *(a1 + 840);
  *v4 = 1762;
  v302 = *(v301 + 40);
  v4[2] = v302;
  if (v302 > 0x7F)
  {
    v303 = sub_19575D0(v302, v4 + 2);
  }

  else
  {
    v303 = v4 + 3;
  }

  v4 = sub_1824254(v301, v303, a3);
  if ((v297 & 4) == 0)
  {
LABEL_679:
    if ((v297 & 8) == 0)
    {
      goto LABEL_680;
    }

    goto LABEL_701;
  }

LABEL_695:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v304 = *(a1 + 848);
  *v4 = 1770;
  v305 = *(v304 + 16);
  v4[2] = v305;
  if (v305 > 0x7F)
  {
    v306 = sub_19575D0(v305, v4 + 2);
  }

  else
  {
    v306 = v4 + 3;
  }

  v4 = sub_17C68D0(v304, v306, a3);
  if ((v297 & 8) == 0)
  {
LABEL_680:
    if ((v297 & 0x10) == 0)
    {
      goto LABEL_681;
    }

    goto LABEL_707;
  }

LABEL_701:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v307 = *(a1 + 856);
  *v4 = 1778;
  v308 = *(v307 + 16);
  v4[2] = v308;
  if (v308 > 0x7F)
  {
    v309 = sub_19575D0(v308, v4 + 2);
  }

  else
  {
    v309 = v4 + 3;
  }

  v4 = sub_17C74D4(v307, v309, a3);
  if ((v297 & 0x10) == 0)
  {
LABEL_681:
    if ((v297 & 0x20) == 0)
    {
      goto LABEL_719;
    }

    goto LABEL_713;
  }

LABEL_707:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v310 = *(a1 + 864);
  *v4 = 1786;
  v311 = *(v310 + 40);
  v4[2] = v311;
  if (v311 > 0x7F)
  {
    v312 = sub_19575D0(v311, v4 + 2);
  }

  else
  {
    v312 = v4 + 3;
  }

  v4 = sub_1830260(v310, v312, a3);
  if ((v297 & 0x20) != 0)
  {
LABEL_713:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v313 = *(a1 + 872);
    *v4 = 1930;
    v314 = *(v313 + 40);
    v4[2] = v314;
    if (v314 > 0x7F)
    {
      v315 = sub_19575D0(v314, v4 + 2);
    }

    else
    {
      v315 = v4 + 3;
    }

    v4 = sub_1826E20(v313, v315, a3);
  }

LABEL_719:
  if (*(a1 + 26))
  {
    v4 = sub_1953428(a1 + 16, 1000, 2000, v4, a3);
  }

  v316 = *(a1 + 8);
  if ((v316 & 1) == 0)
  {
    return v4;
  }

  v318 = v316 & 0xFFFFFFFFFFFFFFFCLL;
  v319 = *(v318 + 31);
  if (v319 < 0)
  {
    v320 = *(v318 + 8);
    v319 = *(v318 + 16);
  }

  else
  {
    v320 = (v318 + 8);
  }

  if ((*a3 - v4) >= v319)
  {
    v321 = v319;
    memcpy(v4, v320, v319);
    v4 += v321;
    return v4;
  }

  return sub_1957130(a3, v320, v319, v4);
}

uint64_t sub_180E384(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 40);
  if (!v3)
  {
    goto LABEL_11;
  }

  if (v3)
  {
    v5 = sub_17995E4(*(a1 + 64));
    v2 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_23;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

  v6 = sub_179EF2C(*(a1 + 72));
  v2 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  v7 = sub_179FA30(*(a1 + 80));
  v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  v8 = sub_17A0C70(*(a1 + 88));
  v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_26:
    v10 = sub_17BD8C0(*(a1 + 104));
    v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 0x40) == 0)
    {
LABEL_9:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_25:
  v9 = sub_17A2CB8(*(a1 + 96));
  v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_26;
  }

LABEL_8:
  if ((v3 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_27:
  v11 = sub_17BF528(*(a1 + 112));
  v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x80) != 0)
  {
LABEL_10:
    v4 = sub_17C5428(*(a1 + 120));
    v2 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_11:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_43;
  }

  if ((v3 & 0x100) != 0)
  {
    v12 = sub_17C3F78(*(a1 + 128));
    v2 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 0x200) == 0)
    {
LABEL_14:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_33;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  v13 = *(a1 + 136);
  v14 = *(v13 + 8);
  if (v14)
  {
    v197 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    v15 = *((v14 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v15 < 0)
    {
      v15 = *(v197 + 16);
    }
  }

  else
  {
    v15 = 0;
  }

  *(v13 + 16) = v15;
  v2 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x400) == 0)
  {
LABEL_15:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  v16 = sub_17AB874(*(a1 + 144));
  v2 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x800) == 0)
  {
LABEL_16:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  v17 = sub_17CA3BC(*(a1 + 152));
  v2 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x1000) == 0)
  {
LABEL_17:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_35:
  v18 = *(a1 + 160);
  v19 = *(v18 + 8);
  if (v19)
  {
    v198 = v19 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = *((v19 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v20 < 0)
    {
      v20 = *(v198 + 16);
    }
  }

  else
  {
    v20 = 0;
  }

  *(v18 + 16) = v20;
  v2 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x2000) == 0)
  {
LABEL_18:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  v21 = sub_17CB75C(*(a1 + 168));
  v2 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x4000) == 0)
  {
LABEL_19:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

LABEL_39:
  v22 = sub_17CDA90(*(a1 + 176));
  v2 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x8000) == 0)
  {
    goto LABEL_43;
  }

LABEL_40:
  v23 = *(a1 + 184);
  v24 = *(v23 + 8);
  if (v24)
  {
    v199 = v24 & 0xFFFFFFFFFFFFFFFCLL;
    v25 = *((v24 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v25 < 0)
    {
      v25 = *(v199 + 16);
    }
  }

  else
  {
    v25 = 0;
  }

  *(v23 + 16) = v25;
  v2 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 2;
LABEL_43:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_74;
  }

  if ((v3 & 0x10000) != 0)
  {
    v26 = *(a1 + 192);
    v27 = *(v26 + 8);
    if (v27)
    {
      v200 = v27 & 0xFFFFFFFFFFFFFFFCLL;
      v28 = *((v27 & 0xFFFFFFFFFFFFFFFCLL) + 31);
      if (v28 < 0)
      {
        v28 = *(v200 + 16);
      }
    }

    else
    {
      v28 = 0;
    }

    *(v26 + 16) = v28;
    v2 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v3 & 0x20000) == 0)
    {
LABEL_46:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_59;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_46;
  }

  v29 = *(a1 + 200);
  v30 = *(v29 + 8);
  if (v30)
  {
    v201 = v30 & 0xFFFFFFFFFFFFFFFCLL;
    v31 = *((v30 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v31 < 0)
    {
      v31 = *(v201 + 16);
    }
  }

  else
  {
    v31 = 0;
  }

  *(v29 + 16) = v31;
  v2 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x40000) == 0)
  {
LABEL_47:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_62;
  }

LABEL_59:
  v32 = *(a1 + 208);
  v33 = *(v32 + 8);
  if (v33)
  {
    v202 = v33 & 0xFFFFFFFFFFFFFFFCLL;
    v34 = *((v33 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v34 < 0)
    {
      v34 = *(v202 + 16);
    }
  }

  else
  {
    v34 = 0;
  }

  *(v32 + 16) = v34;
  v2 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x80000) == 0)
  {
LABEL_48:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_64;
  }

LABEL_62:
  v35 = *(a1 + 216);
  v36 = 2 * (*(v35 + 16) & 1);
  v37 = *(v35 + 8);
  if (v37)
  {
    v203 = v37 & 0xFFFFFFFFFFFFFFFCLL;
    v204 = *((v37 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v204 < 0)
    {
      v204 = *(v203 + 16);
    }

    v36 += v204;
  }

  *(v35 + 20) = v36;
  v2 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x100000) == 0)
  {
LABEL_49:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_67;
  }

LABEL_64:
  v38 = *(a1 + 224);
  v39 = *(v38 + 8);
  if (v39)
  {
    v205 = v39 & 0xFFFFFFFFFFFFFFFCLL;
    v40 = *((v39 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v40 < 0)
    {
      v40 = *(v205 + 16);
    }
  }

  else
  {
    v40 = 0;
  }

  *(v38 + 16) = v40;
  v2 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x200000) == 0)
  {
LABEL_50:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_70;
  }

LABEL_67:
  v41 = *(a1 + 232);
  v42 = *(v41 + 8);
  if (v42)
  {
    v206 = v42 & 0xFFFFFFFFFFFFFFFCLL;
    v43 = *((v42 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v43 < 0)
    {
      v43 = *(v206 + 16);
    }
  }

  else
  {
    v43 = 0;
  }

  *(v41 + 16) = v43;
  v2 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x400000) == 0)
  {
LABEL_51:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_71;
  }

LABEL_70:
  v44 = sub_17D8C20(*(a1 + 240));
  v2 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x800000) == 0)
  {
    goto LABEL_74;
  }

LABEL_71:
  v45 = *(a1 + 248);
  v46 = *(v45 + 8);
  if (v46)
  {
    v207 = v46 & 0xFFFFFFFFFFFFFFFCLL;
    v47 = *((v46 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v47 < 0)
    {
      v47 = *(v207 + 16);
    }
  }

  else
  {
    v47 = 0;
  }

  *(v45 + 16) = v47;
  v2 += v47 + ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 2;
LABEL_74:
  if (!HIBYTE(v3))
  {
    goto LABEL_83;
  }

  if ((v3 & 0x1000000) != 0)
  {
    v163 = *(a1 + 256);
    v164 = *(v163 + 8);
    if (v164)
    {
      v236 = v164 & 0xFFFFFFFFFFFFFFFCLL;
      v165 = *((v164 & 0xFFFFFFFFFFFFFFFCLL) + 31);
      if (v165 < 0)
      {
        v165 = *(v236 + 16);
      }
    }

    else
    {
      v165 = 0;
    }

    *(v163 + 16) = v165;
    v2 += v165 + ((9 * (__clz(v165 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v3 & 0x2000000) == 0)
    {
LABEL_77:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_285;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_77;
  }

  v166 = sub_17DD250(*(a1 + 264));
  v2 += v166 + ((9 * (__clz(v166 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x4000000) == 0)
  {
LABEL_78:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_286;
  }

LABEL_285:
  v167 = sub_17E3BD4(*(a1 + 272));
  v2 += v167 + ((9 * (__clz(v167 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x8000000) == 0)
  {
LABEL_79:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_287;
  }

LABEL_286:
  v168 = sub_17A3860(*(a1 + 280));
  v2 += v168 + ((9 * (__clz(v168 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x10000000) == 0)
  {
LABEL_80:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_290;
  }

LABEL_287:
  v169 = *(a1 + 288);
  v170 = *(v169 + 8);
  if (v170)
  {
    v237 = v170 & 0xFFFFFFFFFFFFFFFCLL;
    v171 = *((v170 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v171 < 0)
    {
      v171 = *(v237 + 16);
    }
  }

  else
  {
    v171 = 0;
  }

  *(v169 + 16) = v171;
  v2 += v171 + ((9 * (__clz(v171 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x20000000) == 0)
  {
LABEL_81:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_293;
  }

LABEL_290:
  v172 = *(a1 + 296);
  v173 = *(v172 + 8);
  if (v173)
  {
    v238 = v173 & 0xFFFFFFFFFFFFFFFCLL;
    v174 = *((v173 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v174 < 0)
    {
      v174 = *(v238 + 16);
    }
  }

  else
  {
    v174 = 0;
  }

  *(v172 + 16) = v174;
  v2 += v174 + ((9 * (__clz(v174 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x40000000) == 0)
  {
LABEL_82:
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_296;
  }

LABEL_293:
  v175 = *(a1 + 304);
  v176 = *(v175 + 8);
  if (v176)
  {
    v239 = v176 & 0xFFFFFFFFFFFFFFFCLL;
    v177 = *((v176 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v177 < 0)
    {
      v177 = *(v239 + 16);
    }
  }

  else
  {
    v177 = 0;
  }

  *(v175 + 16) = v177;
  v2 += v177 + ((9 * (__clz(v177 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x80000000) != 0)
  {
LABEL_296:
    v178 = sub_17C0F68(*(a1 + 312));
    v2 += v178 + ((9 * (__clz(v178 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_83:
  v48 = *(a1 + 44);
  if (!v48)
  {
    goto LABEL_115;
  }

  if (v48)
  {
    v49 = *(a1 + 320);
    v50 = *(v49 + 8);
    if (v50)
    {
      v208 = v50 & 0xFFFFFFFFFFFFFFFCLL;
      v51 = *((v50 & 0xFFFFFFFFFFFFFFFCLL) + 31);
      if (v51 < 0)
      {
        v51 = *(v208 + 16);
      }
    }

    else
    {
      v51 = 0;
    }

    *(v49 + 16) = v51;
    v2 += v51 + ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v48 & 2) == 0)
    {
LABEL_86:
      if ((v48 & 4) == 0)
      {
        goto LABEL_87;
      }

      goto LABEL_99;
    }
  }

  else if ((v48 & 2) == 0)
  {
    goto LABEL_86;
  }

  v52 = *(a1 + 328);
  v53 = *(v52 + 8);
  if (v53)
  {
    v209 = v53 & 0xFFFFFFFFFFFFFFFCLL;
    v54 = *((v53 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v54 < 0)
    {
      v54 = *(v209 + 16);
    }
  }

  else
  {
    v54 = 0;
  }

  *(v52 + 16) = v54;
  v2 += v54 + ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 4) == 0)
  {
LABEL_87:
    if ((v48 & 8) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_102;
  }

LABEL_99:
  v55 = *(a1 + 336);
  v56 = *(v55 + 8);
  if (v56)
  {
    v210 = v56 & 0xFFFFFFFFFFFFFFFCLL;
    v57 = *((v56 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v57 < 0)
    {
      v57 = *(v210 + 16);
    }
  }

  else
  {
    v57 = 0;
  }

  *(v55 + 16) = v57;
  v2 += v57 + ((9 * (__clz(v57 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 8) == 0)
  {
LABEL_88:
    if ((v48 & 0x10) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_103;
  }

LABEL_102:
  v58 = sub_17EAB0C(*(a1 + 344));
  v2 += v58 + ((9 * (__clz(v58 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 0x10) == 0)
  {
LABEL_89:
    if ((v48 & 0x20) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_106;
  }

LABEL_103:
  v59 = *(a1 + 352);
  v60 = *(v59 + 8);
  if (v60)
  {
    v211 = v60 & 0xFFFFFFFFFFFFFFFCLL;
    v61 = *((v60 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v61 < 0)
    {
      v61 = *(v211 + 16);
    }
  }

  else
  {
    v61 = 0;
  }

  *(v59 + 16) = v61;
  v2 += v61 + ((9 * (__clz(v61 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 0x20) == 0)
  {
LABEL_90:
    if ((v48 & 0x40) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_109;
  }

LABEL_106:
  v62 = *(a1 + 360);
  v63 = *(v62 + 8);
  if (v63)
  {
    v212 = v63 & 0xFFFFFFFFFFFFFFFCLL;
    v64 = *((v63 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v64 < 0)
    {
      v64 = *(v212 + 16);
    }
  }

  else
  {
    v64 = 0;
  }

  *(v62 + 16) = v64;
  v2 += v64 + ((9 * (__clz(v64 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 0x40) == 0)
  {
LABEL_91:
    if ((v48 & 0x80) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_112;
  }

LABEL_109:
  v65 = *(a1 + 368);
  v66 = *(v65 + 8);
  if (v66)
  {
    v213 = v66 & 0xFFFFFFFFFFFFFFFCLL;
    v67 = *((v66 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v67 < 0)
    {
      v67 = *(v213 + 16);
    }
  }

  else
  {
    v67 = 0;
  }

  *(v65 + 16) = v67;
  v2 += v67 + ((9 * (__clz(v67 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 0x80) != 0)
  {
LABEL_112:
    v68 = *(a1 + 376);
    v69 = *(v68 + 8);
    if (v69)
    {
      v214 = v69 & 0xFFFFFFFFFFFFFFFCLL;
      v70 = *((v69 & 0xFFFFFFFFFFFFFFFCLL) + 31);
      if (v70 < 0)
      {
        v70 = *(v214 + 16);
      }
    }

    else
    {
      v70 = 0;
    }

    *(v68 + 16) = v70;
    v2 += v70 + ((9 * (__clz(v70 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_115:
  if ((v48 & 0xFF00) == 0)
  {
    goto LABEL_125;
  }

  if ((v48 & 0x100) != 0)
  {
    v75 = *(a1 + 384);
    v76 = *(v75 + 8);
    if (v76)
    {
      v215 = v76 & 0xFFFFFFFFFFFFFFFCLL;
      v77 = *((v76 & 0xFFFFFFFFFFFFFFFCLL) + 31);
      if (v77 < 0)
      {
        v77 = *(v215 + 16);
      }
    }

    else
    {
      v77 = 0;
    }

    *(v75 + 16) = v77;
    v2 += v77 + ((9 * (__clz(v77 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v48 & 0x200) == 0)
    {
LABEL_118:
      if ((v48 & 0x400) == 0)
      {
        goto LABEL_119;
      }

      goto LABEL_170;
    }
  }

  else if ((v48 & 0x200) == 0)
  {
    goto LABEL_118;
  }

  v78 = *(a1 + 392);
  v79 = *(v78 + 8);
  if (v79)
  {
    v216 = v79 & 0xFFFFFFFFFFFFFFFCLL;
    v80 = *((v79 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v80 < 0)
    {
      v80 = *(v216 + 16);
    }
  }

  else
  {
    v80 = 0;
  }

  *(v78 + 16) = v80;
  v2 += v80 + ((9 * (__clz(v80 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 0x400) == 0)
  {
LABEL_119:
    if ((v48 & 0x800) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_173;
  }

LABEL_170:
  v81 = *(a1 + 400);
  v82 = *(v81 + 8);
  if (v82)
  {
    v217 = v82 & 0xFFFFFFFFFFFFFFFCLL;
    v83 = *((v82 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v83 < 0)
    {
      v83 = *(v217 + 16);
    }
  }

  else
  {
    v83 = 0;
  }

  *(v81 + 16) = v83;
  v2 += v83 + ((9 * (__clz(v83 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 0x800) == 0)
  {
LABEL_120:
    if ((v48 & 0x1000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_176;
  }

LABEL_173:
  v84 = *(a1 + 408);
  v85 = *(v84 + 8);
  if (v85)
  {
    v218 = v85 & 0xFFFFFFFFFFFFFFFCLL;
    v86 = *((v85 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v86 < 0)
    {
      v86 = *(v218 + 16);
    }
  }

  else
  {
    v86 = 0;
  }

  *(v84 + 16) = v86;
  v2 += v86 + ((9 * (__clz(v86 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 0x1000) == 0)
  {
LABEL_121:
    if ((v48 & 0x2000) == 0)
    {
      goto LABEL_122;
    }

    goto LABEL_179;
  }

LABEL_176:
  v87 = *(a1 + 416);
  v88 = *(v87 + 8);
  if (v88)
  {
    v219 = v88 & 0xFFFFFFFFFFFFFFFCLL;
    v89 = *((v88 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v89 < 0)
    {
      v89 = *(v219 + 16);
    }
  }

  else
  {
    v89 = 0;
  }

  *(v87 + 16) = v89;
  v2 += v89 + ((9 * (__clz(v89 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 0x2000) == 0)
  {
LABEL_122:
    if ((v48 & 0x4000) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_180;
  }

LABEL_179:
  v90 = sub_17E5E18(*(a1 + 424));
  v2 += v90 + ((9 * (__clz(v90 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 0x4000) == 0)
  {
LABEL_123:
    if ((v48 & 0x8000) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_124;
  }

LABEL_180:
  v91 = sub_17E6968(*(a1 + 432));
  v2 += v91 + ((9 * (__clz(v91 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 0x8000) != 0)
  {
LABEL_124:
    v71 = sub_17C8260(*(a1 + 440));
    v2 += v71 + ((9 * (__clz(v71 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_125:
  if ((v48 & 0xFF0000) == 0)
  {
    goto LABEL_135;
  }

  if ((v48 & 0x10000) != 0)
  {
    v92 = sub_17C19F8(*(a1 + 448));
    v2 += v92 + ((9 * (__clz(v92 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v48 & 0x20000) == 0)
    {
LABEL_128:
      if ((v48 & 0x40000) == 0)
      {
        goto LABEL_129;
      }

      goto LABEL_184;
    }
  }

  else if ((v48 & 0x20000) == 0)
  {
    goto LABEL_128;
  }

  v93 = sub_1393C40(*(a1 + 456));
  v2 += v93 + ((9 * (__clz(v93 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 0x40000) == 0)
  {
LABEL_129:
    if ((v48 & 0x80000) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_187;
  }

LABEL_184:
  v94 = *(a1 + 464);
  v95 = *(v94 + 8);
  if (v95)
  {
    v220 = v95 & 0xFFFFFFFFFFFFFFFCLL;
    v96 = *((v95 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v96 < 0)
    {
      v96 = *(v220 + 16);
    }
  }

  else
  {
    v96 = 0;
  }

  *(v94 + 16) = v96;
  v2 += v96 + ((9 * (__clz(v96 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 0x80000) == 0)
  {
LABEL_130:
    if ((v48 & 0x100000) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_190;
  }

LABEL_187:
  v97 = *(a1 + 472);
  v98 = *(v97 + 8);
  if (v98)
  {
    v221 = v98 & 0xFFFFFFFFFFFFFFFCLL;
    v99 = *((v98 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v99 < 0)
    {
      v99 = *(v221 + 16);
    }
  }

  else
  {
    v99 = 0;
  }

  *(v97 + 16) = v99;
  v2 += v99 + ((9 * (__clz(v99 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 0x100000) == 0)
  {
LABEL_131:
    if ((v48 & 0x200000) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_191;
  }

LABEL_190:
  v100 = sub_179D838(*(a1 + 480));
  v2 += v100 + ((9 * (__clz(v100 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 0x200000) == 0)
  {
LABEL_132:
    if ((v48 & 0x400000) == 0)
    {
      goto LABEL_133;
    }

    goto LABEL_192;
  }

LABEL_191:
  v101 = sub_17F2790(*(a1 + 488));
  v2 += v101 + ((9 * (__clz(v101 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 0x400000) == 0)
  {
LABEL_133:
    if ((v48 & 0x800000) == 0)
    {
      goto LABEL_135;
    }

    goto LABEL_134;
  }

LABEL_192:
  v102 = *(a1 + 496);
  v103 = *(v102 + 8);
  if (v103)
  {
    v222 = v103 & 0xFFFFFFFFFFFFFFFCLL;
    v104 = *((v103 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v104 < 0)
    {
      v104 = *(v222 + 16);
    }
  }

  else
  {
    v104 = 0;
  }

  *(v102 + 16) = v104;
  v2 += v104 + ((9 * (__clz(v104 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 0x800000) != 0)
  {
LABEL_134:
    v72 = sub_1854930(*(a1 + 504));
    v2 += v72 + ((9 * (__clz(v72 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_135:
  if (!HIBYTE(v48))
  {
    goto LABEL_144;
  }

  if ((v48 & 0x1000000) != 0)
  {
    v179 = sub_1854CE8(*(a1 + 512));
    v2 += v179 + ((9 * (__clz(v179 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v48 & 0x2000000) == 0)
    {
LABEL_138:
      if ((v48 & 0x4000000) == 0)
      {
        goto LABEL_139;
      }

      goto LABEL_299;
    }
  }

  else if ((v48 & 0x2000000) == 0)
  {
    goto LABEL_138;
  }

  v180 = sub_18550A0(*(a1 + 520));
  v2 += v180 + ((9 * (__clz(v180 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 0x4000000) == 0)
  {
LABEL_139:
    if ((v48 & 0x8000000) == 0)
    {
      goto LABEL_140;
    }

    goto LABEL_300;
  }

LABEL_299:
  v181 = sub_1855458(*(a1 + 528));
  v2 += v181 + ((9 * (__clz(v181 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 0x8000000) == 0)
  {
LABEL_140:
    if ((v48 & 0x10000000) == 0)
    {
      goto LABEL_141;
    }

    goto LABEL_301;
  }

LABEL_300:
  v182 = sub_1855810(*(a1 + 536));
  v2 += v182 + ((9 * (__clz(v182 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 0x10000000) == 0)
  {
LABEL_141:
    if ((v48 & 0x20000000) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_302;
  }

LABEL_301:
  v183 = sub_18560F8(*(a1 + 544));
  v2 += v183 + ((9 * (__clz(v183 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 0x20000000) == 0)
  {
LABEL_142:
    if ((v48 & 0x40000000) == 0)
    {
      goto LABEL_143;
    }

LABEL_303:
    v185 = sub_185767C(*(a1 + 560));
    v2 += v185 + ((9 * (__clz(v185 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v48 & 0x80000000) == 0)
    {
      goto LABEL_144;
    }

    goto LABEL_304;
  }

LABEL_302:
  v184 = sub_185727C(*(a1 + 552));
  v2 += v184 + ((9 * (__clz(v184 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 0x40000000) != 0)
  {
    goto LABEL_303;
  }

LABEL_143:
  if ((v48 & 0x80000000) == 0)
  {
    goto LABEL_144;
  }

LABEL_304:
  v186 = sub_1857DCC(*(a1 + 568));
  v2 += v186 + ((9 * (__clz(v186 | 1) ^ 0x1F) + 73) >> 6) + 2;
LABEL_144:
  v73 = *(a1 + 48);
  if (!v73)
  {
    goto LABEL_154;
  }

  if (v73)
  {
    v105 = sub_1858248(*(a1 + 576));
    v2 += v105 + ((9 * (__clz(v105 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v73 & 2) == 0)
    {
LABEL_147:
      if ((v73 & 4) == 0)
      {
        goto LABEL_148;
      }

      goto LABEL_198;
    }
  }

  else if ((v73 & 2) == 0)
  {
    goto LABEL_147;
  }

  v106 = sub_17F52F8(*(a1 + 584));
  v2 += v106 + ((9 * (__clz(v106 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v73 & 4) == 0)
  {
LABEL_148:
    if ((v73 & 8) == 0)
    {
      goto LABEL_149;
    }

    goto LABEL_199;
  }

LABEL_198:
  v107 = sub_18586BC(*(a1 + 592));
  v2 += v107 + ((9 * (__clz(v107 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v73 & 8) == 0)
  {
LABEL_149:
    if ((v73 & 0x10) == 0)
    {
      goto LABEL_150;
    }

    goto LABEL_200;
  }

LABEL_199:
  v108 = sub_185A65C(*(a1 + 600));
  v2 += v108 + ((9 * (__clz(v108 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v73 & 0x10) == 0)
  {
LABEL_150:
    if ((v73 & 0x20) == 0)
    {
      goto LABEL_151;
    }

    goto LABEL_201;
  }

LABEL_200:
  v109 = sub_185654C(*(a1 + 608));
  v2 += v109 + ((9 * (__clz(v109 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v73 & 0x20) == 0)
  {
LABEL_151:
    if ((v73 & 0x40) == 0)
    {
      goto LABEL_152;
    }

    goto LABEL_202;
  }

LABEL_201:
  v110 = sub_1858A80(*(a1 + 616));
  v2 += v110 + ((9 * (__clz(v110 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v73 & 0x40) == 0)
  {
LABEL_152:
    if ((v73 & 0x80) == 0)
    {
      goto LABEL_154;
    }

    goto LABEL_153;
  }

LABEL_202:
  v111 = *(a1 + 624);
  v112 = *(v111 + 8);
  if (v112)
  {
    v223 = v112 & 0xFFFFFFFFFFFFFFFCLL;
    v113 = *((v112 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v113 < 0)
    {
      v113 = *(v223 + 16);
    }
  }

  else
  {
    v113 = 0;
  }

  *(v111 + 16) = v113;
  v2 += v113 + ((9 * (__clz(v113 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v73 & 0x80) != 0)
  {
LABEL_153:
    v74 = sub_17CDEAC(*(a1 + 632));
    v2 += v74 + ((9 * (__clz(v74 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_154:
  if ((v73 & 0xFF00) == 0)
  {
    goto LABEL_222;
  }

  if ((v73 & 0x100) != 0)
  {
    v114 = *(a1 + 640);
    v115 = *(v114 + 8);
    if (v115)
    {
      v224 = v115 & 0xFFFFFFFFFFFFFFFCLL;
      v116 = *((v115 & 0xFFFFFFFFFFFFFFFCLL) + 31);
      if (v116 < 0)
      {
        v116 = *(v224 + 16);
      }
    }

    else
    {
      v116 = 0;
    }

    *(v114 + 16) = v116;
    v2 += v116 + ((9 * (__clz(v116 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v73 & 0x200) == 0)
    {
LABEL_157:
      if ((v73 & 0x400) == 0)
      {
        goto LABEL_158;
      }

      goto LABEL_210;
    }
  }

  else if ((v73 & 0x200) == 0)
  {
    goto LABEL_157;
  }

  v117 = sub_185695C(*(a1 + 648));
  v2 += v117 + ((9 * (__clz(v117 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v73 & 0x400) == 0)
  {
LABEL_158:
    if ((v73 & 0x800) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_211;
  }

LABEL_210:
  v118 = sub_182F958(*(a1 + 656));
  v2 += v118 + ((9 * (__clz(v118 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v73 & 0x800) == 0)
  {
LABEL_159:
    if ((v73 & 0x1000) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_212;
  }

LABEL_211:
  v119 = sub_17D9770(*(a1 + 664));
  v2 += v119 + ((9 * (__clz(v119 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v73 & 0x1000) == 0)
  {
LABEL_160:
    if ((v73 & 0x2000) == 0)
    {
      goto LABEL_161;
    }

    goto LABEL_213;
  }

LABEL_212:
  v120 = sub_1856D14(*(a1 + 672));
  v2 += v120 + ((9 * (__clz(v120 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v73 & 0x2000) == 0)
  {
LABEL_161:
    if ((v73 & 0x4000) == 0)
    {
      goto LABEL_162;
    }

    goto LABEL_216;
  }

LABEL_213:
  v121 = *(a1 + 680);
  v122 = *(v121 + 8);
  if (v122)
  {
    v225 = v122 & 0xFFFFFFFFFFFFFFFCLL;
    v123 = *((v122 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v123 < 0)
    {
      v123 = *(v225 + 16);
    }
  }

  else
  {
    v123 = 0;
  }

  *(v121 + 16) = v123;
  v2 += v123 + ((9 * (__clz(v123 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v73 & 0x4000) == 0)
  {
LABEL_162:
    if ((v73 & 0x8000) == 0)
    {
      goto LABEL_222;
    }

    goto LABEL_219;
  }

LABEL_216:
  v124 = *(a1 + 688);
  v125 = *(v124 + 8);
  if (v125)
  {
    v226 = v125 & 0xFFFFFFFFFFFFFFFCLL;
    v126 = *((v125 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v126 < 0)
    {
      v126 = *(v226 + 16);
    }
  }

  else
  {
    v126 = 0;
  }

  *(v124 + 16) = v126;
  v2 += v126 + ((9 * (__clz(v126 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v73 & 0x8000) != 0)
  {
LABEL_219:
    v127 = *(a1 + 696);
    v128 = *(v127 + 8);
    if (v128)
    {
      v227 = v128 & 0xFFFFFFFFFFFFFFFCLL;
      v129 = *((v128 & 0xFFFFFFFFFFFFFFFCLL) + 31);
      if (v129 < 0)
      {
        v129 = *(v227 + 16);
      }
    }

    else
    {
      v129 = 0;
    }

    *(v127 + 16) = v129;
    v2 += v129 + ((9 * (__clz(v129 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_222:
  if ((v73 & 0xFF0000) == 0)
  {
    goto LABEL_252;
  }

  if ((v73 & 0x10000) != 0)
  {
    v130 = sub_182DFA4(*(a1 + 704));
    v2 += v130 + ((9 * (__clz(v130 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v73 & 0x20000) == 0)
    {
LABEL_225:
      if ((v73 & 0x40000) == 0)
      {
        goto LABEL_226;
      }

      goto LABEL_236;
    }
  }

  else if ((v73 & 0x20000) == 0)
  {
    goto LABEL_225;
  }

  v131 = *(a1 + 712);
  v132 = *(v131 + 8);
  if (v132)
  {
    v228 = v132 & 0xFFFFFFFFFFFFFFFCLL;
    v133 = *((v132 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v133 < 0)
    {
      v133 = *(v228 + 16);
    }
  }

  else
  {
    v133 = 0;
  }

  *(v131 + 16) = v133;
  v2 += v133 + ((9 * (__clz(v133 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v73 & 0x40000) == 0)
  {
LABEL_226:
    if ((v73 & 0x80000) == 0)
    {
      goto LABEL_227;
    }

    goto LABEL_239;
  }

LABEL_236:
  v134 = *(a1 + 720);
  v135 = *(v134 + 8);
  if (v135)
  {
    v229 = v135 & 0xFFFFFFFFFFFFFFFCLL;
    v136 = *((v135 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v136 < 0)
    {
      v136 = *(v229 + 16);
    }
  }

  else
  {
    v136 = 0;
  }

  *(v134 + 16) = v136;
  v2 += v136 + ((9 * (__clz(v136 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v73 & 0x80000) == 0)
  {
LABEL_227:
    if ((v73 & 0x100000) == 0)
    {
      goto LABEL_228;
    }

    goto LABEL_242;
  }

LABEL_239:
  v137 = *(a1 + 728);
  v138 = *(v137 + 8);
  if (v138)
  {
    v230 = v138 & 0xFFFFFFFFFFFFFFFCLL;
    v139 = *((v138 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v139 < 0)
    {
      v139 = *(v230 + 16);
    }
  }

  else
  {
    v139 = 0;
  }

  *(v137 + 16) = v139;
  v2 += v139 + ((9 * (__clz(v139 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v73 & 0x100000) == 0)
  {
LABEL_228:
    if ((v73 & 0x200000) == 0)
    {
      goto LABEL_229;
    }

    goto LABEL_243;
  }

LABEL_242:
  v140 = sub_184B650(*(a1 + 736));
  v2 += v140 + ((9 * (__clz(v140 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v73 & 0x200000) == 0)
  {
LABEL_229:
    if ((v73 & 0x400000) == 0)
    {
      goto LABEL_230;
    }

    goto LABEL_246;
  }

LABEL_243:
  v141 = *(a1 + 744);
  v142 = *(v141 + 8);
  if (v142)
  {
    v231 = v142 & 0xFFFFFFFFFFFFFFFCLL;
    v143 = *((v142 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v143 < 0)
    {
      v143 = *(v231 + 16);
    }
  }

  else
  {
    v143 = 0;
  }

  *(v141 + 16) = v143;
  v2 += v143 + ((9 * (__clz(v143 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v73 & 0x400000) == 0)
  {
LABEL_230:
    if ((v73 & 0x800000) == 0)
    {
      goto LABEL_252;
    }

    goto LABEL_249;
  }

LABEL_246:
  v144 = *(a1 + 752);
  v145 = *(v144 + 8);
  if (v145)
  {
    v232 = v145 & 0xFFFFFFFFFFFFFFFCLL;
    v146 = *((v145 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v146 < 0)
    {
      v146 = *(v232 + 16);
    }
  }

  else
  {
    v146 = 0;
  }

  *(v144 + 16) = v146;
  v2 += v146 + ((9 * (__clz(v146 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v73 & 0x800000) != 0)
  {
LABEL_249:
    v147 = *(a1 + 760);
    v148 = *(v147 + 8);
    if (v148)
    {
      v233 = v148 & 0xFFFFFFFFFFFFFFFCLL;
      v149 = *((v148 & 0xFFFFFFFFFFFFFFFCLL) + 31);
      if (v149 < 0)
      {
        v149 = *(v233 + 16);
      }
    }

    else
    {
      v149 = 0;
    }

    *(v147 + 16) = v149;
    v2 += v149 + ((9 * (__clz(v149 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_252:
  if (!HIBYTE(v73))
  {
    goto LABEL_261;
  }

  if ((v73 & 0x1000000) != 0)
  {
    v187 = sub_182943C(*(a1 + 768));
    v2 += v187 + ((9 * (__clz(v187 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v73 & 0x2000000) == 0)
    {
LABEL_255:
      if ((v73 & 0x4000000) == 0)
      {
        goto LABEL_256;
      }

      goto LABEL_307;
    }
  }

  else if ((v73 & 0x2000000) == 0)
  {
    goto LABEL_255;
  }

  v188 = sub_1820698(*(a1 + 776));
  v2 += v188 + ((9 * (__clz(v188 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v73 & 0x4000000) == 0)
  {
LABEL_256:
    if ((v73 & 0x8000000) == 0)
    {
      goto LABEL_257;
    }

    goto LABEL_308;
  }

LABEL_307:
  v189 = sub_1825698(*(a1 + 784));
  v2 += v189 + ((9 * (__clz(v189 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v73 & 0x8000000) == 0)
  {
LABEL_257:
    if ((v73 & 0x10000000) == 0)
    {
      goto LABEL_258;
    }

    goto LABEL_309;
  }

LABEL_308:
  v190 = sub_17DA5E0(*(a1 + 792));
  v2 += v190 + ((9 * (__clz(v190 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v73 & 0x10000000) == 0)
  {
LABEL_258:
    if ((v73 & 0x20000000) == 0)
    {
      goto LABEL_259;
    }

    goto LABEL_310;
  }

LABEL_309:
  v191 = sub_1821294(*(a1 + 800));
  v2 += v191 + ((9 * (__clz(v191 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v73 & 0x20000000) == 0)
  {
LABEL_259:
    if ((v73 & 0x40000000) == 0)
    {
      goto LABEL_260;
    }

LABEL_311:
    v193 = sub_1823098(*(a1 + 816));
    v2 += v193 + ((9 * (__clz(v193 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v73 & 0x80000000) == 0)
    {
      goto LABEL_261;
    }

    goto LABEL_312;
  }

LABEL_310:
  v192 = sub_1822228(*(a1 + 808));
  v2 += v192 + ((9 * (__clz(v192 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v73 & 0x40000000) != 0)
  {
    goto LABEL_311;
  }

LABEL_260:
  if ((v73 & 0x80000000) == 0)
  {
    goto LABEL_261;
  }

LABEL_312:
  v194 = sub_18239F8(*(a1 + 824));
  v2 += v194 + ((9 * (__clz(v194 | 1) ^ 0x1F) + 73) >> 6) + 2;
LABEL_261:
  v150 = *(a1 + 52);
  if ((v150 & 0x3F) == 0)
  {
    goto LABEL_269;
  }

  if (v150)
  {
    v154 = sub_181FCBC(*(a1 + 832));
    v2 += v154 + ((9 * (__clz(v154 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v150 & 2) == 0)
    {
LABEL_264:
      if ((v150 & 4) == 0)
      {
        goto LABEL_265;
      }

      goto LABEL_273;
    }
  }

  else if ((v150 & 2) == 0)
  {
    goto LABEL_264;
  }

  v155 = sub_182431C(*(a1 + 840));
  v2 += v155 + ((9 * (__clz(v155 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v150 & 4) == 0)
  {
LABEL_265:
    if ((v150 & 8) == 0)
    {
      goto LABEL_266;
    }

    goto LABEL_276;
  }

LABEL_273:
  v156 = *(a1 + 848);
  v157 = *(v156 + 8);
  if (v157)
  {
    v234 = v157 & 0xFFFFFFFFFFFFFFFCLL;
    v158 = *((v157 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v158 < 0)
    {
      v158 = *(v234 + 16);
    }
  }

  else
  {
    v158 = 0;
  }

  *(v156 + 16) = v158;
  v2 += v158 + ((9 * (__clz(v158 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v150 & 8) == 0)
  {
LABEL_266:
    if ((v150 & 0x10) == 0)
    {
      goto LABEL_267;
    }

    goto LABEL_279;
  }

LABEL_276:
  v159 = *(a1 + 856);
  v160 = *(v159 + 8);
  if (v160)
  {
    v235 = v160 & 0xFFFFFFFFFFFFFFFCLL;
    v161 = *((v160 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v161 < 0)
    {
      v161 = *(v235 + 16);
    }
  }

  else
  {
    v161 = 0;
  }

  *(v159 + 16) = v161;
  v2 += v161 + ((9 * (__clz(v161 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v150 & 0x10) == 0)
  {
LABEL_267:
    if ((v150 & 0x20) == 0)
    {
      goto LABEL_269;
    }

    goto LABEL_268;
  }

LABEL_279:
  v162 = sub_1830328(*(a1 + 864));
  v2 += v162 + ((9 * (__clz(v162 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v150 & 0x20) != 0)
  {
LABEL_268:
    v151 = sub_1826EE8(*(a1 + 872));
    v2 += v151 + ((9 * (__clz(v151 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_269:
  v152 = *(a1 + 8);
  if (v152)
  {
    v195 = v152 & 0xFFFFFFFFFFFFFFFCLL;
    v196 = *((v152 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v196 < 0)
    {
      v196 = *(v195 + 16);
    }

    v2 += v196;
  }

  *(a1 + 56) = v2;
  return v2;
}