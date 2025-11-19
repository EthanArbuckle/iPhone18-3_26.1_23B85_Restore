void sub_80AD44(_Unwind_Exception *a1)
{
  sub_80B5D8(&STACK[0x358]);
  if (*(v1 + 2375) < 0)
  {
    operator delete(STACK[0x3B78]);
  }

  _Unwind_Resume(a1);
}

void sub_80AE28()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v8 = *(v3 + 1104) + 2616 * v1;
  sub_591F18(v0, v8, v22);
  sub_8BAEB4(v21, v22, v7 + 5144, v4, v2, v6);
  if ((*(v7 + 13740) & 1) != 0 || *(v7 + 13743) == 1)
  {
    sub_8BD840(v21, &v19);
    sub_58D40C(v8 + 1032, &v19);
    sub_5936E4(&v19);
    sub_665E68((v7 + 6736), (v8 + 1032));
  }

  if (*(v7 + 13741) == 1)
  {
    sub_8BBE14(v21, &v19);
    v9 = (v8 + 1888);
    v10 = *(v8 + 1888);
    if (v10)
    {
      v11 = *(v8 + 1896);
      v12 = *(v8 + 1888);
      if (v11 != v10)
      {
        do
        {
          v11 = sub_5938B0((v11 - 140));
        }

        while (v11 != v10);
        v12 = *v9;
      }

      *(v8 + 1896) = v10;
      operator delete(v12);
      *v9 = 0;
      *(v8 + 1896) = 0;
      *(v8 + 1904) = 0;
    }

    *(v8 + 1888) = v19;
    *(v8 + 1904) = v20;
    sub_6662E8(v7 + 6736, v8 + 1888);
  }

  if (*(v7 + 13779) == 1)
  {
    sub_8BDB58(v21, &v19);
  }

  if (*(v7 + 13742) == 1 && (*(v8 + 2417) & 1) == 0 && *(v8 + 160) != 90)
  {
    sub_8BC1F0(v21, v4, &v19);
    v13 = (v8 + 1912);
    v14 = *(v8 + 1912);
    if (v14)
    {
      v15 = *(v8 + 1920);
      v16 = *(v8 + 1912);
      if (v15 != v14)
      {
        do
        {
          v17 = *(v15 - 6);
          if (v17)
          {
            *(v15 - 5) = v17;
            operator delete(v17);
          }

          v15 -= 56;
          sub_55D550(v15);
        }

        while (v15 != v14);
        v16 = *v13;
      }

      *(v8 + 1920) = v14;
      operator delete(v16);
      *v13 = 0;
      *(v8 + 1920) = 0;
      *(v8 + 1928) = 0;
    }

    *v13 = v19;
    *(v8 + 1928) = v20;
    sub_666334(v7 + 6736, v8 + 1912);
  }

  sub_59202C(v7, v8);
  v18 = *(v4 + 1104);
  if (0x3795876FF3795877 * ((*(v4 + 1112) - v18) >> 3) - 1 <= v2)
  {
    sub_6D2198((v7 + 13768), v8, 0, 0);
  }

  else
  {
    sub_6D2198((v7 + 13768), v8, v18 + 2616 * v2 + 2616, 1);
  }

  sub_80B958(v21);
  if (v24 < 0)
  {
    operator delete(__p);
  }
}

void sub_80B160(_Unwind_Exception *a1)
{
  sub_80B958(&STACK[0x358]);
  if (*(v1 + 2375) < 0)
  {
    operator delete(STACK[0x3B78]);
  }

  _Unwind_Resume(a1);
}

void sub_80B1A8(uint64_t a1)
{
  sub_5976F4(a1);

  operator delete();
}

void sub_80B1E4(uint64_t a1)
{
  sub_59788C(a1);

  operator delete();
}

void sub_80B220(uint64_t a1)
{
  sub_597A24(a1);

  operator delete();
}

uint64_t sub_80B258(uint64_t a1)
{
  *a1 = off_266CE80;
  *(a1 + 11808) = off_26696C8;
  if (*(a1 + 11839) < 0)
  {
    operator delete(*(a1 + 11816));
  }

  sub_5C3168(a1 + 11440);
  v2 = *(a1 + 11416);
  if (v2)
  {
    v3 = *(a1 + 11424);
    v4 = *(a1 + 11416);
    if (v3 != v2)
    {
      do
      {
        v3 = sub_5C3168(v3 - 360);
      }

      while (v3 != v2);
      v4 = *(a1 + 11416);
    }

    *(a1 + 11424) = v2;
    operator delete(v4);
  }

  sub_5941F8(a1 + 10984);
  sub_5941F8(a1 + 10552);
  sub_5941F8(a1 + 10112);
  sub_5941F8(a1 + 9672);
  sub_5941F8(a1 + 9232);
  sub_5941F8(a1 + 8792);
  sub_5941F8(a1 + 8352);
  sub_5941F8(a1 + 7912);
  sub_5941F8(a1 + 7472);
  sub_5941F8(a1 + 7032);
  sub_5941F8(a1 + 6592);
  sub_5941F8(a1 + 6152);
  sub_5940E0((a1 + 6008));
  v5 = *(a1 + 5960);
  if (v5)
  {
    *(a1 + 5968) = v5;
    operator delete(v5);
  }

  sub_80B428(a1 + 2576);
  *a1 = off_266B488;
  sub_593A90(a1 + 8);
  return a1;
}

void sub_80B3F0(uint64_t a1)
{
  sub_80B258(a1);

  operator delete();
}

uint64_t sub_80B428(uint64_t a1)
{
  *a1 = off_266CF18;
  *(a1 + 2512) = off_266CFE0;
  v2 = *(a1 + 3352);
  if (v2)
  {
    v3 = *(a1 + 3360);
    v4 = *(a1 + 3352);
    if (v3 != v2)
    {
      do
      {
        v3 -= 272;
        sub_513694(v3);
      }

      while (v3 != v2);
      v4 = *(a1 + 3352);
    }

    *(a1 + 3360) = v2;
    operator delete(v4);
  }

  v5 = *(a1 + 3312);
  if (v5)
  {
    *(a1 + 3320) = v5;
    operator delete(v5);
  }

  if (*(a1 + 3295) < 0)
  {
    operator delete(*(a1 + 3272));
  }

  *(a1 + 2512) = off_266C1F0;
  sub_5C3168(a1 + 2904);
  sub_5C3168(a1 + 2544);
  v6 = *(a1 + 2520);
  if (v6)
  {
    v7 = *(a1 + 2528);
    v8 = *(a1 + 2520);
    if (v7 != v6)
    {
      do
      {
        v7 = sub_5C3168(v7 - 360);
      }

      while (v7 != v6);
      v8 = *(a1 + 2520);
    }

    *(a1 + 2528) = v6;
    operator delete(v8);
  }

  return sub_593A90(a1);
}

void sub_80B564(uint64_t a1)
{
  sub_80B428(a1);

  operator delete();
}

void sub_80B59C(uint64_t a1)
{
  sub_80B428(a1 - 2512);

  operator delete();
}

uint64_t sub_80B5D8(uint64_t a1)
{
  *a1 = off_266D060;
  *(a1 + 11808) = off_26696C8;
  if (*(a1 + 11839) < 0)
  {
    operator delete(*(a1 + 11816));
  }

  sub_5C3168(a1 + 11440);
  v2 = *(a1 + 11416);
  if (v2)
  {
    v3 = *(a1 + 11424);
    v4 = *(a1 + 11416);
    if (v3 != v2)
    {
      do
      {
        v3 = sub_5C3168(v3 - 360);
      }

      while (v3 != v2);
      v4 = *(a1 + 11416);
    }

    *(a1 + 11424) = v2;
    operator delete(v4);
  }

  sub_5941F8(a1 + 10984);
  sub_5941F8(a1 + 10552);
  sub_5941F8(a1 + 10112);
  sub_5941F8(a1 + 9672);
  sub_5941F8(a1 + 9232);
  sub_5941F8(a1 + 8792);
  sub_5941F8(a1 + 8352);
  sub_5941F8(a1 + 7912);
  sub_5941F8(a1 + 7472);
  sub_5941F8(a1 + 7032);
  sub_5941F8(a1 + 6592);
  sub_5941F8(a1 + 6152);
  sub_5940E0((a1 + 6008));
  v5 = *(a1 + 5960);
  if (v5)
  {
    *(a1 + 5968) = v5;
    operator delete(v5);
  }

  sub_80B7A8(a1 + 2576);
  *a1 = off_266B5F0;
  sub_596A0C(a1 + 8);
  return a1;
}

void sub_80B770(uint64_t a1)
{
  sub_80B5D8(a1);

  operator delete();
}

uint64_t sub_80B7A8(uint64_t a1)
{
  *a1 = off_266D0F8;
  *(a1 + 2512) = off_266D1C0;
  v2 = *(a1 + 3352);
  if (v2)
  {
    v3 = *(a1 + 3360);
    v4 = *(a1 + 3352);
    if (v3 != v2)
    {
      do
      {
        v3 -= 272;
        sub_513694(v3);
      }

      while (v3 != v2);
      v4 = *(a1 + 3352);
    }

    *(a1 + 3360) = v2;
    operator delete(v4);
  }

  v5 = *(a1 + 3312);
  if (v5)
  {
    *(a1 + 3320) = v5;
    operator delete(v5);
  }

  if (*(a1 + 3295) < 0)
  {
    operator delete(*(a1 + 3272));
  }

  *(a1 + 2512) = off_266C238;
  sub_5C3168(a1 + 2904);
  sub_5C3168(a1 + 2544);
  v6 = *(a1 + 2520);
  if (v6)
  {
    v7 = *(a1 + 2528);
    v8 = *(a1 + 2520);
    if (v7 != v6)
    {
      do
      {
        v7 = sub_5C3168(v7 - 360);
      }

      while (v7 != v6);
      v8 = *(a1 + 2520);
    }

    *(a1 + 2528) = v6;
    operator delete(v8);
  }

  return sub_596A0C(a1);
}

void sub_80B8E4(uint64_t a1)
{
  sub_80B7A8(a1);

  operator delete();
}

void sub_80B91C(uint64_t a1)
{
  sub_80B7A8(a1 - 2512);

  operator delete();
}

uint64_t sub_80B958(uint64_t a1)
{
  *a1 = off_266D240;
  *(a1 + 11808) = off_26696C8;
  if (*(a1 + 11839) < 0)
  {
    operator delete(*(a1 + 11816));
  }

  sub_5C3168(a1 + 11440);
  v2 = *(a1 + 11416);
  if (v2)
  {
    v3 = *(a1 + 11424);
    v4 = *(a1 + 11416);
    if (v3 != v2)
    {
      do
      {
        v3 = sub_5C3168(v3 - 360);
      }

      while (v3 != v2);
      v4 = *(a1 + 11416);
    }

    *(a1 + 11424) = v2;
    operator delete(v4);
  }

  sub_5941F8(a1 + 10984);
  sub_5941F8(a1 + 10552);
  sub_5941F8(a1 + 10112);
  sub_5941F8(a1 + 9672);
  sub_5941F8(a1 + 9232);
  sub_5941F8(a1 + 8792);
  sub_5941F8(a1 + 8352);
  sub_5941F8(a1 + 7912);
  sub_5941F8(a1 + 7472);
  sub_5941F8(a1 + 7032);
  sub_5941F8(a1 + 6592);
  sub_5941F8(a1 + 6152);
  sub_5940E0((a1 + 6008));
  v5 = *(a1 + 5960);
  if (v5)
  {
    *(a1 + 5968) = v5;
    operator delete(v5);
  }

  sub_80BB28(a1 + 2576);
  *a1 = off_266B730;
  sub_5970B4(a1 + 8);
  return a1;
}

void sub_80BAF0(uint64_t a1)
{
  sub_80B958(a1);

  operator delete();
}

uint64_t sub_80BB28(uint64_t a1)
{
  *a1 = off_266D2D8;
  *(a1 + 2512) = off_266D3A0;
  v2 = *(a1 + 3352);
  if (v2)
  {
    v3 = *(a1 + 3360);
    v4 = *(a1 + 3352);
    if (v3 != v2)
    {
      do
      {
        v3 -= 272;
        sub_513694(v3);
      }

      while (v3 != v2);
      v4 = *(a1 + 3352);
    }

    *(a1 + 3360) = v2;
    operator delete(v4);
  }

  v5 = *(a1 + 3312);
  if (v5)
  {
    *(a1 + 3320) = v5;
    operator delete(v5);
  }

  if (*(a1 + 3295) < 0)
  {
    operator delete(*(a1 + 3272));
  }

  *(a1 + 2512) = off_266C280;
  sub_5C3168(a1 + 2904);
  sub_5C3168(a1 + 2544);
  v6 = *(a1 + 2520);
  if (v6)
  {
    v7 = *(a1 + 2528);
    v8 = *(a1 + 2520);
    if (v7 != v6)
    {
      do
      {
        v7 = sub_5C3168(v7 - 360);
      }

      while (v7 != v6);
      v8 = *(a1 + 2520);
    }

    *(a1 + 2528) = v6;
    operator delete(v8);
  }

  return sub_5970B4(a1);
}

void sub_80BC64(uint64_t a1)
{
  sub_80BB28(a1);

  operator delete();
}

void sub_80BC9C(uint64_t a1)
{
  sub_80BB28(a1 - 2512);

  operator delete();
}

void sub_80BCD8()
{
  byte_27ACD7F = 3;
  LODWORD(qword_27ACD68) = 5136193;
  byte_27ACD97 = 3;
  LODWORD(qword_27ACD80) = 5136194;
  byte_27ACDAF = 3;
  LODWORD(qword_27ACD98) = 5136195;
  byte_27ACDC7 = 15;
  strcpy(&qword_27ACDB0, "vehicle_mass_kg");
  byte_27ACDDF = 21;
  strcpy(&xmmword_27ACDC8, "vehicle_cargo_mass_kg");
  byte_27ACDF7 = 19;
  strcpy(&qword_27ACDE0, "vehicle_aux_power_w");
  byte_27ACE0F = 15;
  strcpy(&qword_27ACDF8, "dcdc_efficiency");
  strcpy(&qword_27ACE10, "drive_train_efficiency");
  HIBYTE(word_27ACE26) = 22;
  operator new();
}

void sub_80F0BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, _Unwind_Exception *exception_object)
{
  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(STACK[0x390]);
    if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
  {
LABEL_3:
    if (SLOBYTE(STACK[0x377]) < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  operator delete(STACK[0x378]);
  if (SLOBYTE(STACK[0x377]) < 0)
  {
LABEL_4:
    operator delete(STACK[0x360]);
    if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
  {
LABEL_5:
    if (SLOBYTE(STACK[0x347]) < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(STACK[0x348]);
  if (SLOBYTE(STACK[0x347]) < 0)
  {
LABEL_6:
    operator delete(STACK[0x330]);
    if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
  {
LABEL_7:
    if (SLOBYTE(STACK[0x317]) < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(STACK[0x318]);
  if (SLOBYTE(STACK[0x317]) < 0)
  {
LABEL_8:
    operator delete(STACK[0x300]);
    if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
  {
LABEL_9:
    if (SLOBYTE(STACK[0x2E7]) < 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(STACK[0x2E8]);
  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
LABEL_10:
    operator delete(STACK[0x2D0]);
    if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
  {
LABEL_11:
    if (SLOBYTE(STACK[0x2B7]) < 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(STACK[0x2B8]);
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
LABEL_12:
    operator delete(STACK[0x2A0]);
    if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
  {
LABEL_13:
    if (SLOBYTE(STACK[0x287]) < 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(STACK[0x288]);
  if (SLOBYTE(STACK[0x287]) < 0)
  {
LABEL_14:
    operator delete(STACK[0x270]);
    if (SLOBYTE(STACK[0x26F]) < 0)
    {
LABEL_29:
      operator delete(STACK[0x258]);
      if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_37;
    }

LABEL_36:
    if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
    {
LABEL_30:
      if (SLOBYTE(STACK[0x23F]) < 0)
      {
        goto LABEL_31;
      }

      goto LABEL_38;
    }

LABEL_37:
    operator delete(STACK[0x240]);
    if (SLOBYTE(STACK[0x23F]) < 0)
    {
LABEL_31:
      operator delete(STACK[0x228]);
      if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_39;
    }

LABEL_38:
    if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
    {
LABEL_32:
      if (SLOBYTE(STACK[0x20F]) < 0)
      {
        goto LABEL_33;
      }

      goto LABEL_40;
    }

LABEL_39:
    operator delete(STACK[0x210]);
    if (SLOBYTE(STACK[0x20F]) < 0)
    {
LABEL_33:
      operator delete(a75);
      if ((a74 & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_41;
    }

LABEL_40:
    if ((a74 & 0x80000000) == 0)
    {
LABEL_34:
      if ((a72 & 0x80000000) == 0)
      {
LABEL_43:
        if (a68 < 0)
        {
          operator delete(exception_object);
        }

        _Unwind_Resume(a1);
      }

LABEL_42:
      operator delete(a69);
      goto LABEL_43;
    }

LABEL_41:
    operator delete(a73);
    if ((a72 & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

LABEL_28:
  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    goto LABEL_29;
  }

  goto LABEL_36;
}

void sub_80F440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((*(v15 + 599) & 0x80000000) == 0)
    {
LABEL_3:
      sub_772CE0(v15);
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v15 + 599) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v15 + 576));
  sub_772CE0(v15);
  _Unwind_Resume(a1);
}

void sub_80F55C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((*(v15 + 599) & 0x80000000) == 0)
    {
LABEL_3:
      sub_772CE0(v15);
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v15 + 599) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v15 + 576));
  sub_772CE0(v15);
  _Unwind_Resume(a1);
}

void sub_80F5D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_42F924(*(a1 + 616), *a2);
  v5 = (v4 - *v4);
  if (*v5 >= 9u && (v6 = v5[4]) != 0)
  {
    v7 = (v4 + v6);
    v8 = *v7;
    v9 = *(v7 + v8);
    if (v9 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v83) = *(v7 + v8);
    if (v9)
    {
      memcpy(&__dst, v7 + v8 + 4, v9);
    }

    *(&__dst + v9) = 0;
  }

  else
  {
    __dst = 0;
    v82 = 0;
    v83 = 0;
  }

  sub_5EB5B8((a1 + 632), &__dst);
  v10 = sub_42F924(*(a1 + 616), *a2);
  v11 = (v10 - *v10);
  if (*v11 >= 0x11u && (v12 = v11[8]) != 0)
  {
    v13 = (v10 + v12 + *(v10 + v12));
  }

  else
  {
    v13 = 0;
  }

  sub_810F18(v13, &v79);
  __p = 0uLL;
  v58 = 0;
  sub_738918(&v79, &v69);
  v14 = (a2 + 56);
  if ((a2 + 56) != &v69)
  {
    if (*(a2 + 79) < 0)
    {
      if (v70 >= 0)
      {
        v15 = &v69;
      }

      else
      {
        v15 = v69;
      }

      if (v70 >= 0)
      {
        v16 = HIBYTE(v70);
      }

      else
      {
        v16 = *(&v69 + 1);
      }

      sub_13B38(v14, v15, v16);
    }

    else if (v70 < 0)
    {
      sub_13A68(v14, v69, *(&v69 + 1));
    }

    else
    {
      *v14 = v69;
      *(a2 + 72) = v70;
    }
  }

  v17 = sub_42F924(*(a1 + 616), *a2);
  v18 = (v17 - *v17);
  if (*v18 >= 0x13u && (v19 = v18[9]) != 0)
  {
    v20 = (v17 + v19 + *(v17 + v19));
  }

  else
  {
    v20 = 0;
  }

  sub_810F18(v20, &v67);
  v45[0] = 0;
  v45[1] = 0;
  v46 = 0;
  sub_738918(&v67, &__p);
  v21 = (a2 + 80);
  if ((a2 + 80) != &__p)
  {
    if (*(a2 + 103) < 0)
    {
      if (v58 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v58 >= 0)
      {
        v23 = HIBYTE(v58);
      }

      else
      {
        v23 = *(&__p + 1);
      }

      sub_13B38(v21, p_p, v23);
    }

    else if (v58 < 0)
    {
      sub_13A68(v21, __p, *(&__p + 1));
    }

    else
    {
      *v21 = __p;
      *(a2 + 96) = v58;
    }
  }

  v24 = sub_42F924(*(a1 + 616), *a2);
  v25 = (v24 - *v24);
  if (*v25 >= 0x15u && (v26 = v25[10]) != 0)
  {
    v27 = (v24 + v26 + *(v24 + v26));
  }

  else
  {
    v27 = 0;
  }

  sub_810F18(v27, &v55);
  v43[0] = 0;
  v43[1] = 0;
  v44 = 0;
  sub_738918(&v55, v45);
  v28 = *(a2 + 112);
  if (v28 >= *(a2 + 120))
  {
    *(a2 + 112) = sub_1CEE8(a2 + 104, v45);
    if (*(a2 + 132) != 1)
    {
      goto LABEL_69;
    }
  }

  else
  {
    if (SHIBYTE(v46) < 0)
    {
      sub_325C(*(a2 + 112), v45[0], v45[1]);
    }

    else
    {
      v29 = *v45;
      *(v28 + 16) = v46;
      *v28 = v29;
    }

    *(a2 + 112) = v28 + 24;
    *(a2 + 112) = v28 + 24;
    if (*(a2 + 132) != 1)
    {
      goto LABEL_69;
    }
  }

  v30 = HIBYTE(v83);
  if (v83 < 0)
  {
    v30 = v82;
  }

  if (!v30)
  {
    goto LABEL_69;
  }

  sub_21E0CD8(&__dst, v43);
  v31 = (a2 + 136);
  if ((a2 + 136) != v43)
  {
    if (*(a2 + 159) < 0)
    {
      if (v44 >= 0)
      {
        v32 = v43;
      }

      else
      {
        v32 = v43[0];
      }

      if (v44 >= 0)
      {
        v33 = HIBYTE(v44);
      }

      else
      {
        v33 = v43[1];
      }

      sub_13B38(v31, v32, v33);
    }

    else if (v44 < 0)
    {
      sub_13A68(v31, v43[0], v43[1]);
    }

    else
    {
      *v31 = *v43;
      *(a2 + 152) = v44;
    }
  }

  if ((SHIBYTE(v44) & 0x80000000) == 0)
  {
LABEL_69:
    if ((v54 & 0x80000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_96;
  }

  operator delete(v43[0]);
  if ((v54 & 0x80000000) == 0)
  {
LABEL_70:
    if ((v52 & 0x80000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_97;
  }

LABEL_96:
  operator delete(v53);
  if ((v52 & 0x80000000) == 0)
  {
LABEL_71:
    if ((v50 & 0x80000000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_98;
  }

LABEL_97:
  operator delete(v51);
  if ((v50 & 0x80000000) == 0)
  {
LABEL_72:
    if ((v48 & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_99;
  }

LABEL_98:
  operator delete(v49);
  if ((v48 & 0x80000000) == 0)
  {
LABEL_73:
    if ((SHIBYTE(v46) & 0x80000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_100;
  }

LABEL_99:
  operator delete(v47);
  if ((SHIBYTE(v46) & 0x80000000) == 0)
  {
LABEL_74:
    v34 = v55;
    if (v55)
    {
      goto LABEL_75;
    }

LABEL_101:
    if (v66 < 0)
    {
      goto LABEL_79;
    }

    goto LABEL_102;
  }

LABEL_100:
  operator delete(v45[0]);
  v34 = v55;
  if (!v55)
  {
    goto LABEL_101;
  }

LABEL_75:
  v35 = v56;
  v36 = v34;
  if (v56 != v34)
  {
    do
    {
      v35 = sub_310F30(v35 - 144);
    }

    while (v35 != v34);
    v36 = v55;
  }

  v56 = v34;
  operator delete(v36);
  if (v66 < 0)
  {
LABEL_79:
    operator delete(v65);
    if (v64 < 0)
    {
      goto LABEL_80;
    }

    goto LABEL_103;
  }

LABEL_102:
  if (v64 < 0)
  {
LABEL_80:
    operator delete(v63);
    if (v62 < 0)
    {
      goto LABEL_81;
    }

    goto LABEL_104;
  }

LABEL_103:
  if (v62 < 0)
  {
LABEL_81:
    operator delete(v61);
    if (v60 < 0)
    {
      goto LABEL_82;
    }

    goto LABEL_105;
  }

LABEL_104:
  if (v60 < 0)
  {
LABEL_82:
    operator delete(v59);
    if (SHIBYTE(v58) < 0)
    {
      goto LABEL_83;
    }

    goto LABEL_106;
  }

LABEL_105:
  if (SHIBYTE(v58) < 0)
  {
LABEL_83:
    operator delete(__p);
    v37 = v67;
    if (!v67)
    {
      goto LABEL_84;
    }

    goto LABEL_107;
  }

LABEL_106:
  v37 = v67;
  if (!v67)
  {
LABEL_84:
    if ((v78 & 0x80000000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_111;
  }

LABEL_107:
  v41 = v68;
  v42 = v37;
  if (v68 != v37)
  {
    do
    {
      v41 = sub_310F30(v41 - 144);
    }

    while (v41 != v37);
    v42 = v67;
  }

  v68 = v37;
  operator delete(v42);
  if ((v78 & 0x80000000) == 0)
  {
LABEL_85:
    if ((v76 & 0x80000000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_112;
  }

LABEL_111:
  operator delete(v77);
  if ((v76 & 0x80000000) == 0)
  {
LABEL_86:
    if ((v74 & 0x80000000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_113;
  }

LABEL_112:
  operator delete(v75);
  if ((v74 & 0x80000000) == 0)
  {
LABEL_87:
    if ((v72 & 0x80000000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_114;
  }

LABEL_113:
  operator delete(v73);
  if ((v72 & 0x80000000) == 0)
  {
LABEL_88:
    if ((SHIBYTE(v70) & 0x80000000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_115;
  }

LABEL_114:
  operator delete(v71);
  if ((SHIBYTE(v70) & 0x80000000) == 0)
  {
LABEL_89:
    v38 = v79;
    if (v79)
    {
      goto LABEL_90;
    }

    goto LABEL_116;
  }

LABEL_115:
  operator delete(v69);
  v38 = v79;
  if (v79)
  {
LABEL_90:
    v39 = v80;
    v40 = v38;
    if (v80 != v38)
    {
      do
      {
        v39 = sub_310F30(v39 - 144);
      }

      while (v39 != v38);
      v40 = v79;
    }

    v80 = v38;
    operator delete(v40);
    if (SHIBYTE(v83) < 0)
    {
      goto LABEL_94;
    }

    return;
  }

LABEL_116:
  if (SHIBYTE(v83) < 0)
  {
LABEL_94:
    operator delete(__dst);
  }
}

void sub_80FCEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, char a59)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_3E5388(&a15);
  sub_5E9738(&a34);
  sub_3E5388(&a37);
  sub_5E9738(&a56);
  sub_3E5388(&a59);
  sub_5E9738((v59 - 112));
  if (*(v59 - 65) < 0)
  {
    operator delete(*(v59 - 88));
  }

  _Unwind_Resume(a1);
}

void sub_80FDC8()
{
  if ((*(v0 - 65) & 0x80000000) == 0)
  {
    JUMPOUT(0x80FDC0);
  }

  JUMPOUT(0x80FDB8);
}

void sub_80FE80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((*(v15 + 599) & 0x80000000) == 0)
    {
LABEL_3:
      sub_772CE0(v15);
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v15 + 599) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v15 + 576));
  sub_772CE0(v15);
  _Unwind_Resume(a1);
}

void sub_80FEF4(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1[78];
  if (*(v4 + 1453))
  {
    v5 = *(v4 + 1232);
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    if (v5 == 2)
    {
      v6 = a2;
      sub_42C878(a1, a2, &v73);
      v8 = v73;
      v50 = v74;
      if (v73 != v74)
      {
        v49 = v6;
        while (1)
        {
          v9 = v8[2];
          v72 = *v8;
          sub_8104E8((a1 + 69), &v72, &v71);
          v11 = sub_4D25C0(v6, v9, v10);
          v12 = *(v8 + 24);
          v13 = a1[76];
          v14 = sub_4D1F50(v6, v9);
          sub_2B7A20(v13, *(v14 + 32) & 0xFFFFFFFFFFFFFFLL, &v67);
          v15 = v72;
          if (v70)
          {
            if (v68 == v69)
            {
              v77 = 0u;
              v78 = 0u;
              v22 = &v75;
              v75 = 0u;
              v76 = 0u;
            }

            else
            {
              v16 = *(v69 - 1);
              v17 = sub_2B4D24(v67, v16, 0);
              v18 = &v17[*&v17[-*v17 + 4]];
              v19 = &v18[4 * HIDWORD(v16) + *v18];
              v20 = (v19 + 4 + *(v19 + 4));
              v21 = (v20 + *(v20 - *v20 + 6));
              LODWORD(v21) = *(v21 + *v21) - 1;
              *&v75 = v67;
              *(&v75 + 1) = &v68;
              v76 = 0u;
              v77 = 0u;
              LODWORD(v78) = ((v69 - v68) >> 3) - 1;
              DWORD1(v78) = v21;
              BYTE8(v78) = 1;
              v22 = &v75;
              sub_318EF0(&v75);
            }

            goto LABEL_29;
          }

          if (v68 == v69)
          {
            memset(v81, 0, sizeof(v81));
            v22 = &v79;
            v79 = 0u;
            v80 = 0u;
            goto LABEL_29;
          }

          *&v79 = v67;
          *(&v79 + 1) = &v68;
          v80 = 0u;
          memset(v81, 0, 25);
          v23 = *v68;
          LODWORD(v81[1]) = *v68;
          v24 = sub_2B4D24(v67, v23, 0);
          v25 = &v24[-*v24];
          if (*v25 < 7u)
          {
            HIDWORD(v81[1]) = 0;
            v27 = &v24[-*v24];
            if (*v27 >= 5u)
            {
              goto LABEL_14;
            }
          }

          else
          {
            v26 = *(v25 + 3);
            if (v26)
            {
              LODWORD(v26) = *&v24[v26];
            }

            HIDWORD(v81[1]) = v26;
            v27 = &v24[-*v24];
            if (*v27 >= 5u)
            {
LABEL_14:
              v28 = *(v27 + 2);
              if (v28)
              {
                v28 += &v24[*&v24[v28]];
              }

              goto LABEL_20;
            }
          }

          v28 = 0;
LABEL_20:
          v29 = (v28 + 4 * HIDWORD(v23) + 4 + *(v28 + 4 * HIDWORD(v23) + 4));
          *&v80 = v29;
          v30 = (v29 - *v29);
          v31 = *v30;
          if (v31 <= 6)
          {
            v34 = 0;
            *(&v80 + 1) = 0;
          }

          else
          {
            v32 = v30[3];
            if (v30[3])
            {
              v32 += v29 + *(v29 + v32);
            }

            *(&v80 + 1) = v32;
            if (v31 >= 0xB && (v33 = v30[5]) != 0)
            {
              v34 = v29 + v33 + *(v29 + v33);
            }

            else
            {
              v34 = 0;
            }
          }

          v81[0] = v34;
          v22 = &v79;
LABEL_29:
          v35 = sub_318DA8(v22);
          v37 = v36;
          v38 = sub_42F924(a1[77], v72);
          v39 = (v38 - *v38);
          if (*v39 >= 7u && (v40 = v39[3]) != 0)
          {
            v41 = *(v38 + v40);
            if (v41 > 4)
            {
              v42 = 0;
              v51 = v15;
              if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
              {
LABEL_33:
                sub_325C(&v52, v71.__r_.__value_.__l.__data_, v71.__r_.__value_.__l.__size_);
                goto LABEL_36;
              }
            }

            else
            {
              v42 = v41 + 1;
              v51 = v15;
              if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_33;
              }
            }
          }

          else
          {
            v42 = 1;
            v51 = v15;
            if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_33;
            }
          }

          v52 = v71;
LABEL_36:
          v53 = v11;
          v54 = v35;
          v55 = v37;
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          __p = 0u;
          v60 = 0;
          v61 = (v12 ^ 1) & 1;
          v62 = v42;
          v64 = 0;
          v65 = 0;
          v63 = 0;
          v66 = *(v8 + 12);
          sub_80F5D0(a1, &v51);
          v43 = *(a3 + 8);
          if (v43 >= *(a3 + 16))
          {
            v44 = sub_773060(a3, &v51);
          }

          else
          {
            sub_52A464(*(a3 + 8), &v51);
            v44 = v43 + 168;
          }

          *(a3 + 8) = v44;
          if (SHIBYTE(v65) < 0)
          {
            operator delete(v63);
            v45 = __p;
            if (!__p)
            {
LABEL_53:
              if (SHIBYTE(v58) < 0)
              {
                goto LABEL_43;
              }

              goto LABEL_54;
            }
          }

          else
          {
            v45 = __p;
            if (!__p)
            {
              goto LABEL_53;
            }
          }

          v46 = *(&__p + 1);
          if (*(&__p + 1) == v45)
          {
            *(&__p + 1) = v45;
            operator delete(v45);
            if (SHIBYTE(v58) < 0)
            {
              goto LABEL_43;
            }
          }

          else
          {
            do
            {
              v48 = *(v46 - 1);
              v46 -= 3;
              if (v48 < 0)
              {
                operator delete(*v46);
              }
            }

            while (v46 != v45);
            *(&__p + 1) = v45;
            operator delete(__p);
            if (SHIBYTE(v58) < 0)
            {
LABEL_43:
              operator delete(*(&v57 + 1));
              v6 = v49;
              if (SBYTE7(v57) < 0)
              {
                goto LABEL_44;
              }

              goto LABEL_55;
            }
          }

LABEL_54:
          v6 = v49;
          if (SBYTE7(v57) < 0)
          {
LABEL_44:
            operator delete(v56);
            if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_45;
            }

            goto LABEL_56;
          }

LABEL_55:
          if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_45:
            operator delete(v52.__r_.__value_.__l.__data_);
            v47 = v68;
            if (!v68)
            {
              goto LABEL_58;
            }

LABEL_57:
            v69 = v47;
            operator delete(v47);
            goto LABEL_58;
          }

LABEL_56:
          v47 = v68;
          if (v68)
          {
            goto LABEL_57;
          }

LABEL_58:
          if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v71.__r_.__value_.__l.__data_);
          }

          v8 += 4;
          if (v8 == v50)
          {
            v8 = v73;
            break;
          }
        }
      }

      if (v8)
      {
        v74 = v8;
        operator delete(v8);
      }
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }
}

void sub_810438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  *(v43 + 8) = v44;
  sub_52A624(&a12);
  if (a34)
  {
    a35 = a34;
    operator delete(a34);
    if (a43 < 0)
    {
LABEL_3:
      operator delete(__p);
      v47 = *(v45 - 248);
      if (v47)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if (a43 < 0)
  {
    goto LABEL_3;
  }

  v47 = *(v45 - 248);
  if (v47)
  {
LABEL_4:
    *(v45 - 240) = v47;
    operator delete(v47);
    sub_51B6E0(v43);
    _Unwind_Resume(a1);
  }

LABEL_7:
  sub_51B6E0(v43);
  _Unwind_Resume(a1);
}

void sub_8104E8(uint64_t a1@<X0>, unint64_t *a2@<X1>, std::string *a3@<X8>)
{
  v5 = sub_42F924(*a1, *a2);
  v6 = (v5 - *v5);
  if (*v6 >= 5u && (v7 = v6[2]) != 0)
  {
    v8 = *(v5 + v7);
    if (*(a1 + 16) != 1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v8 = 0;
    if (*(a1 + 16) != 1)
    {
LABEL_4:
      std::to_string(&v16, v8);
      v11 = *(a1 + 24);
      v10 = a1 + 24;
      v9 = v11;
      v12 = *(v10 + 23);
      if (v12 >= 0)
      {
        v13 = v10;
      }

      else
      {
        v13 = v9;
      }

      if (v12 >= 0)
      {
        v14 = *(v10 + 23);
      }

      else
      {
        v14 = *(v10 + 8);
      }

      v15 = std::string::insert(&v16, 0, v13, v14);
      *a3 = *v15;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_16;
      }

      return;
    }
  }

  sub_2BDE60(*(a1 + 8), v8, &v16);
  *a3 = v16;
  memset(&v16, 0, sizeof(v16));
  if (v18 < 0)
  {
    operator delete(__p);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_16:
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }
}

void sub_810608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_810624(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  sub_80FEF4(a1, a2, &v9);
  v4 = v9;
  v5 = v10;
  if (v9 != v10)
  {
    v6 = 0;
    do
    {
      if ((*(v4 + 132) & 0xFFFFFFFE) == 2)
      {
        if (v6 >= *(a3 + 16))
        {
          v6 = sub_773060(a3, v4);
        }

        else
        {
          sub_52A464(v6, v4);
          v6 += 168;
        }

        *(a3 + 8) = v6;
      }

      v4 += 168;
    }

    while (v4 != v5);
    v4 = v9;
  }

  if (v4)
  {
    v7 = v10;
    v8 = v4;
    if (v10 != v4)
    {
      do
      {
        v7 = sub_52A624(v7 - 168);
      }

      while (v7 != v4);
      v8 = v9;
    }

    v10 = v4;
    operator delete(v8);
  }
}

void sub_810718(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 + 8) = v3;
  sub_51B6E0(va);
  sub_51B6E0(v2);
  _Unwind_Resume(a1);
}

void sub_810738(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_51B6E0(va);
  sub_51B6E0(v2);
  _Unwind_Resume(a1);
}

void sub_810754(void *a1, uint64_t a2, char **a3)
{
  *v69 = 0u;
  *v70 = 0u;
  v71 = 1065353216;
  v5 = sub_58BBC(a2);
  v7 = v5[1] - *v5;
  if (v7)
  {
    v8 = 0;
    v64 = 0xE21A291C077975B9 * (v7 >> 3);
    while (1)
    {
      v10 = sub_4C49C0(a2, v8);
      v11 = sub_68C454(a3, v8);
      sub_80FEF4(a1, v10, &__p);
      v12 = __p;
      v13 = v67;
      if (__p == v67)
      {
        if (!__p)
        {
          goto LABEL_5;
        }
      }

      else
      {
        do
        {
          if (v69[1])
          {
            v15 = *v12;
            v16 = __ROR8__(*v12, 32);
            v17 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v16 ^ (v16 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v16 ^ (v16 >> 33))) >> 33));
            v18 = v17 ^ (v17 >> 33);
            v6.n128_u64[0] = vcnt_s8(v69[1]);
            v6.n128_u16[0] = vaddlv_u8(v6.n128_u64[0]);
            if (v6.n128_u32[0] > 1uLL)
            {
              v19 = v18;
              if (v18 >= v69[1])
              {
                v19 = v18 % v69[1];
              }
            }

            else
            {
              v19 = v18 & (v69[1] - 1);
            }

            v20 = *(v69[0] + v19);
            if (v20)
            {
              v21 = *v20;
              if (v21)
              {
                if (v6.n128_u32[0] < 2uLL)
                {
                  while (1)
                  {
                    v25 = v21[1];
                    if (v25 == v18)
                    {
                      if (*(v21 + 4) == v15 && *(v21 + 5) == HIDWORD(v15))
                      {
                        goto LABEL_11;
                      }
                    }

                    else if ((v25 & (v69[1] - 1)) != v19)
                    {
                      goto LABEL_38;
                    }

                    v21 = *v21;
                    if (!v21)
                    {
                      goto LABEL_38;
                    }
                  }
                }

                do
                {
                  v23 = v21[1];
                  if (v23 == v18)
                  {
                    if (*(v21 + 4) == v15 && *(v21 + 5) == HIDWORD(v15))
                    {
                      goto LABEL_11;
                    }
                  }

                  else
                  {
                    if (v23 >= v69[1])
                    {
                      v23 %= v69[1];
                    }

                    if (v23 != v19)
                    {
                      break;
                    }
                  }

                  v21 = *v21;
                }

                while (v21);
              }
            }
          }

LABEL_38:
          sub_811510(v69, v12);
          v26 = *(v12 + 33);
          if (v26 > 3)
          {
            if (v26 == 4)
            {
              v30 = *(v11 + 11936);
              if (v30 >= *(v11 + 11944))
              {
                *(v11 + 11936) = sub_773060((v11 + 11928), v12);
              }

              else
              {
                sub_52A464(*(v11 + 11936), v12);
                *(v11 + 11936) = v30 + 168;
                *(v11 + 11936) = v30 + 168;
              }
            }

            else if (v26 == 5)
            {
              v28 = *(v11 + 11912);
              if (v28 >= *(v11 + 11920))
              {
                *(v11 + 11912) = sub_773060((v11 + 11904), v12);
              }

              else
              {
                sub_52A464(*(v11 + 11912), v12);
                *(v11 + 11912) = v28 + 168;
                *(v11 + 11912) = v28 + 168;
              }
            }
          }

          else if ((v26 - 2) >= 2)
          {
            if (v26 == 1)
            {
              v29 = *(v11 + 11864);
              if (v29 >= *(v11 + 11872))
              {
                *(v11 + 11864) = sub_773060((v11 + 11856), v12);
              }

              else
              {
                sub_52A464(*(v11 + 11864), v12);
                *(v11 + 11864) = v29 + 168;
                *(v11 + 11864) = v29 + 168;
              }
            }
          }

          else
          {
            v27 = *(v11 + 11888);
            if (v27 >= *(v11 + 11896))
            {
              v14 = sub_773060((v11 + 11880), v12);
            }

            else
            {
              sub_52A464(*(v11 + 11888), v12);
              v14 = v27 + 168;
              *(v11 + 11888) = v27 + 168;
            }

            *(v11 + 11888) = v14;
          }

LABEL_11:
          v12 += 21;
        }

        while (v12 != v13);
        v12 = __p;
        if (!__p)
        {
          goto LABEL_5;
        }
      }

      v31 = v67;
      v9 = v12;
      if (v67 != v12)
      {
        break;
      }

LABEL_4:
      v67 = v12;
      operator delete(v9);
LABEL_5:
      if (++v8 == v64)
      {
        goto LABEL_76;
      }
    }

    while (1)
    {
      if (*(v31 - 9) < 0)
      {
        operator delete(*(v31 - 4));
        v32 = *(v31 - 8);
        if (!v32)
        {
LABEL_71:
          if ((*(v31 - 65) & 0x80000000) == 0)
          {
            goto LABEL_72;
          }

          goto LABEL_63;
        }
      }

      else
      {
        v32 = *(v31 - 8);
        if (!v32)
        {
          goto LABEL_71;
        }
      }

      v33 = *(v31 - 7);
      if (v33 == v32)
      {
        *(v31 - 7) = v32;
        operator delete(v32);
        if (*(v31 - 65) < 0)
        {
          goto LABEL_63;
        }

LABEL_72:
        if (*(v31 - 89) < 0)
        {
          goto LABEL_57;
        }

LABEL_73:
        if ((*(v31 - 137) & 0x80000000) == 0)
        {
          goto LABEL_58;
        }

LABEL_74:
        operator delete(*(v31 - 20));
        v31 -= 21;
        if (v31 == v12)
        {
LABEL_3:
          v9 = __p;
          goto LABEL_4;
        }
      }

      else
      {
        do
        {
          v34 = *(v33 - 1);
          v33 -= 3;
          if (v34 < 0)
          {
            operator delete(*v33);
          }
        }

        while (v33 != v32);
        v35 = *(v31 - 8);
        *(v31 - 7) = v32;
        operator delete(v35);
        if ((*(v31 - 65) & 0x80000000) == 0)
        {
          goto LABEL_72;
        }

LABEL_63:
        operator delete(*(v31 - 11));
        if ((*(v31 - 89) & 0x80000000) == 0)
        {
          goto LABEL_73;
        }

LABEL_57:
        operator delete(*(v31 - 14));
        if (*(v31 - 137) < 0)
        {
          goto LABEL_74;
        }

LABEL_58:
        v31 -= 21;
        if (v31 == v12)
        {
          goto LABEL_3;
        }
      }
    }
  }

LABEL_76:
  __p = 0;
  v67 = 0;
  v68 = 0;
  v36 = v70[0];
  if (v70[0])
  {
    v37 = 0;
    do
    {
      v38 = sub_42F924(a1[77], v36[2]);
      v39 = (v38 - *v38);
      if (*v39 >= 7u && (v40 = v39[3]) != 0 && *(v38 + v40) == 1 || (v41 = sub_42F924(a1[77], v36[2]), v42 = (v41 - *v41), *v42 >= 7u) && (v43 = v42[3]) != 0 && *(v41 + v43) == 2)
      {
        v44 = sub_42F924(a1[77], v36[2]);
        v45 = (v44 - *v44);
        if (*v45 >= 0x19u && (v46 = v45[12]) != 0)
        {
          v47 = *(v44 + v46);
        }

        else
        {
          v47 = 0;
        }

        v48 = sub_42F924(a1[77], v36[2]);
        v49 = v48 + *(v48 - *v48 + 26);
        LODWORD(v50) = *(v49 + 4);
        if (v50 >= 0xFFFFFFFE)
        {
          v50 = 4294967294;
        }

        else
        {
          v50 = v50;
        }

        v74 = *v49 | (v50 << 32);
        v75 = 0x7FFFFFFF;
        v51 = *(v49 + 8);
        LODWORD(v49) = *(v49 + 12);
        if (v49 >= 0xFFFFFFFE)
        {
          v49 = 4294967294;
        }

        else
        {
          v49 = v49;
        }

        v72 = v51 | (v49 << 32);
        v73 = 0x7FFFFFFF;
        sub_320C0(v76, &v74, &v72);
        v52 = v76[0];
        v53 = v76[1];
        if (v37 < v68)
        {
          *v37 = v47;
          *(v37 + 8) = 1;
          *(v37 + 12) = v52;
          *(v37 + 20) = v53;
          v37 += 32;
        }

        else
        {
          v54 = v37;
          v55 = v37 >> 5;
          v56 = v55 + 1;
          if ((v55 + 1) >> 59)
          {
            sub_1794();
          }

          if (v68 >> 4 > v56)
          {
            v56 = v68 >> 4;
          }

          if (v68 >= 0x7FFFFFFFFFFFFFE0)
          {
            v57 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v57 = v56;
          }

          if (v57)
          {
            if (!(v57 >> 59))
            {
              operator new();
            }

            sub_1808();
          }

          v58 = 32 * v55;
          *v58 = v47;
          *(v58 + 8) = 1;
          *(v58 + 12) = v52;
          *(v58 + 20) = v53;
          v37 = 32 * v55 + 32;
          memcpy(0, 0, v54);
          __p = 0;
          v67 = v37;
          v68 = 0;
        }

        v67 = v37;
      }

      v36 = *v36;
    }

    while (v36);
  }

  else
  {
    v37 = 0;
  }

  v59 = 126 - 2 * __clz(v37 >> 5);
  if (v37)
  {
    v60 = v59;
  }

  else
  {
    v60 = 0;
  }

  sub_811888(0, v37, v76, v60, 1, v6);
  sub_68DF18(a3, &__p);
  if (__p)
  {
    v67 = __p;
    operator delete(__p);
  }

  v61 = v70[0];
  if (v70[0])
  {
    do
    {
      v62 = *v61;
      operator delete(v61);
      v61 = v62;
    }

    while (v62);
  }

  v63 = v69[0];
  v69[0] = 0;
  if (v63)
  {
    operator delete(v63);
  }
}

void sub_810E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_11BD8(va);
  _Unwind_Resume(a1);
}

void sub_810E50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (v15)
  {
    operator delete(v15);
    sub_11BD8(&a15);
    _Unwind_Resume(a1);
  }

  sub_11BD8(&a15);
  _Unwind_Resume(a1);
}

void sub_810F18(unsigned int *a1@<X1>, void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (!a1)
  {
    return;
  }

  v3 = a1;
  sub_5E9F68(a2, *a1);
  v4 = *v3;
  if (!v4)
  {
    return;
  }

  v5 = &v3[v4];
  do
  {
    while (2)
    {
      v6 = v3[1];
      ++v3;
      v39[0] = 0;
      v40 = 0u;
      memset(v41, 0, sizeof(v41));
      v7 = (v3 + v6);
      v42 = sub_12331FC();
      v46 = 0;
      v45 = 0uLL;
      *v43 = 0u;
      memset(v44, 0, 35);
      v8 = (v7 - *v7);
      if (*v8 >= 5u && (v9 = v8[2]) != 0)
      {
        v10 = (v7 + v9);
        v11 = *v10;
        v12 = *(v10 + v11);
        if (v12 >= 0x17)
        {
          operator new();
        }

        BYTE7(v48) = *(v10 + v11);
        if (v12)
        {
          memcpy(&__dst, v10 + v11 + 4, v12);
          *(&__dst + v12) = 0;
          if ((SHIBYTE(v41[0]) & 0x80000000) == 0)
          {
            goto LABEL_14;
          }

LABEL_13:
          operator delete(v40);
          goto LABEL_14;
        }

        *(&__dst + v12) = 0;
        if (SHIBYTE(v41[0]) < 0)
        {
          goto LABEL_13;
        }
      }

      else
      {
        __dst = 0uLL;
        *&v48 = 0;
        if (SHIBYTE(v41[0]) < 0)
        {
          goto LABEL_13;
        }
      }

LABEL_14:
      v40 = __dst;
      v41[0] = v48;
      v13 = (v7 - *v7);
      if (*v13 < 9u || (v14 = v13[4]) == 0)
      {
        __dst = 0uLL;
        *&v48 = 0;
        if ((SHIBYTE(v41[3]) & 0x80000000) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      v15 = (v7 + v14);
      v16 = *v15;
      v17 = *(v15 + v16);
      if (v17 >= 0x17)
      {
        operator new();
      }

      BYTE7(v48) = *(v15 + v16);
      if (!v17)
      {
        *(&__dst + v17) = 0;
        if ((SHIBYTE(v41[3]) & 0x80000000) == 0)
        {
          goto LABEL_22;
        }

LABEL_21:
        operator delete(v41[1]);
        goto LABEL_22;
      }

      memcpy(&__dst, v15 + v16 + 4, v17);
      *(&__dst + v17) = 0;
      if (SHIBYTE(v41[3]) < 0)
      {
        goto LABEL_21;
      }

LABEL_22:
      v41[3] = v48;
      *&v41[1] = __dst;
      v18 = BYTE7(v48);
      if ((SBYTE7(v48) & 0x80u) == 0)
      {
        v19 = &v41[1];
      }

      else
      {
        v19 = v41[1];
      }

      if (SBYTE7(v48) < 0)
      {
        v18 = v41[2];
      }

      if (v18 >= 0x1F)
      {
        v20 = 31;
      }

      else
      {
        v20 = v18;
      }

      if (v18)
      {
        switch(v18)
        {
          case 1uLL:
            *&__dst = *v19;
            v21 = 1;
            break;
          case 2uLL:
            if (SBYTE7(v48) < 0)
            {
              v22 = (v41[1] + 1);
            }

            else
            {
              v22 = &v41[1] + 1;
            }

            *&__dst = *v19 | (*v22 << 8);
            v21 = 2;
            break;
          case 3uLL:
            v23 = &v41[1] + 1;
            if (SBYTE7(v48) < 0)
            {
              v23 = (v41[1] + 1);
            }

            v24 = *v19 | (*v23 << 8);
            v25 = (v41[1] + 2);
            if ((SBYTE7(v48) & 0x80u) == 0)
            {
              v25 = &v41[1] + 2;
            }

            *&__dst = v24 | (*v25 << 16);
            v21 = 3;
            break;
          default:
            sub_852E4(v19, v20, &__dst);
            goto LABEL_52;
        }

        *(&__dst + 1) = v21;
        v48 = 0u;
        v49 = 0u;
      }

      else
      {
        v48 = 0u;
        v49 = 0u;
        __dst = 0u;
      }

LABEL_52:
      v42 = sub_1232F28(&__dst, 0);
      v26 = (v7 - *v7);
      if (*v26 >= 0xBu && (v27 = v26[5]) != 0)
      {
        v28 = *(v7 + v27);
        v39[0] = v28;
        v29 = a2[1];
        if (v29 < a2[2])
        {
          goto LABEL_69;
        }
      }

      else
      {
        v28 = 0;
        v39[0] = 0;
        v29 = a2[1];
        if (v29 < a2[2])
        {
LABEL_69:
          *v29 = v28;
          v35 = v40;
          *(v29 + 3) = v41[0];
          *(v29 + 8) = v35;
          v41[0] = 0;
          v40 = 0uLL;
          v36 = v41[3];
          *(v29 + 2) = *&v41[1];
          *(v29 + 6) = v36;
          memset(&v41[1], 0, 24);
          *(v29 + 7) = v42;
          *(v29 + 8) = 0;
          *(v29 + 9) = 0;
          *(v29 + 10) = 0;
          *(v29 + 4) = *v43;
          *(v29 + 10) = v44[0];
          v43[0] = 0;
          v43[1] = 0;
          v37 = *&v44[1];
          *(v29 + 13) = v44[3];
          *(v29 + 88) = v37;
          memset(v44, 0, 32);
          LOWORD(v36) = v44[4];
          v29[114] = BYTE2(v44[4]);
          *(v29 + 56) = v36;
          v38 = v45;
          *(v29 + 17) = v46;
          *(v29 + 120) = v38;
          v46 = 0;
          v45 = 0uLL;
          a2[1] = v29 + 144;
          if (SHIBYTE(v44[3]) < 0)
          {
            goto LABEL_70;
          }

          goto LABEL_57;
        }
      }

      v30 = sub_5EA34C(a2, v39);
      v31 = SHIBYTE(v46);
      a2[1] = v30;
      if (v31 < 0)
      {
        operator delete(v45);
        if (SHIBYTE(v44[3]) < 0)
        {
LABEL_70:
          operator delete(v44[1]);
          v32 = v43[0];
          if (!v43[0])
          {
LABEL_71:
            if (SHIBYTE(v41[3]) < 0)
            {
              break;
            }

            goto LABEL_72;
          }

          goto LABEL_58;
        }
      }

      else if (SHIBYTE(v44[3]) < 0)
      {
        goto LABEL_70;
      }

LABEL_57:
      v32 = v43[0];
      if (!v43[0])
      {
        goto LABEL_71;
      }

LABEL_58:
      v33 = v43[1];
      if (v43[1] == v32)
      {
        v43[1] = v32;
        operator delete(v32);
        if (SHIBYTE(v41[3]) < 0)
        {
          break;
        }

        goto LABEL_72;
      }

      do
      {
        while (*(v33 - 9) < 0)
        {
          operator delete(*(v33 - 4));
          v34 = v33 - 7;
          if (*(v33 - 33) < 0)
          {
            goto LABEL_65;
          }

LABEL_62:
          v33 = v34;
          if (v34 == v32)
          {
            goto LABEL_66;
          }
        }

        v34 = v33 - 7;
        if ((*(v33 - 33) & 0x80000000) == 0)
        {
          goto LABEL_62;
        }

LABEL_65:
        operator delete(*v34);
        v33 = v34;
      }

      while (v34 != v32);
LABEL_66:
      v43[1] = v32;
      operator delete(v43[0]);
      if ((SHIBYTE(v41[3]) & 0x80000000) == 0)
      {
LABEL_72:
        if (SHIBYTE(v41[0]) < 0)
        {
          goto LABEL_73;
        }

LABEL_5:
        if (v3 == v5)
        {
          return;
        }

        continue;
      }

      break;
    }

    operator delete(v41[1]);
    if ((SHIBYTE(v41[0]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_73:
    operator delete(v40);
  }

  while (v3 != v5);
}

void sub_81149C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_310F30(va);
  sub_5E9738(v3);
  _Unwind_Resume(a1);
}

void sub_8114C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((a17 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a17 & 0x80000000) == 0)
  {
LABEL_3:
    sub_5E9738(v23);
    _Unwind_Resume(a1);
  }

  operator delete(a12);
  sub_5E9738(v23);
  _Unwind_Resume(a1);
}

uint64_t *sub_811510(void *a1, void *a2)
{
  v2 = *a2;
  v3 = __ROR8__(*a2, 32);
  v4 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) >> 33));
  v5 = v4 ^ (v4 >> 33);
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_31;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4 ^ (v4 >> 33);
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = v10[1];
      if (v13 == v5)
      {
        if (*(v10 + 4) == v2 && *(v10 + 5) == HIDWORD(v2))
        {
          return v10;
        }
      }

      else if ((v13 & (*&v6 - 1)) != v8)
      {
        goto LABEL_31;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_31;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_31;
    }
  }

  if (*(v10 + 4) != v2 || *(v10 + 5) != HIDWORD(v2))
  {
    goto LABEL_12;
  }

  return v10;
}

__n128 sub_811888(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v10 = a2 - 4;
  v11 = a2 - 8;
  v12 = a2 - 12;
  v13 = a1;
  while (1)
  {
    a1 = v13;
    v14 = (a2 - v13) >> 5;
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return result;
    }

    if (v14 == 2)
    {
      v81 = *(a2 - 4);
      v80 = a2 - 4;
      if (v81 >= *v13)
      {
        return result;
      }

LABEL_108:
      *v137 = *v13;
      *&v137[16] = *(v13 + 16);
      v86 = *v80;
      *(v13 + 12) = *(v80 + 12);
      *v13 = v86;
      result = *v137;
LABEL_109:
      *(v80 + 12) = *&v137[12];
      *v80 = result;
      return result;
    }

LABEL_9:
    if (v14 <= 23)
    {
      v91 = (v13 + 32);
      v93 = v13 == a2 || v91 == a2;
      if (a5)
      {
        if (!v93)
        {
          v94 = 0;
          v95 = v13;
          do
          {
            v97 = v91;
            v98 = *(v95 + 32);
            if (v98 < *v95)
            {
              v139 = *(v95 + 40);
              v149 = *(v95 + 56);
              v99 = v94;
              do
              {
                v100 = v13 + v99;
                *(v100 + 32) = *(v13 + v99);
                *(v100 + 44) = *(v13 + v99 + 12);
                if (!v99)
                {
                  v96 = v13;
                  goto LABEL_123;
                }

                v99 -= 32;
              }

              while (v98 < *(v100 - 32));
              v96 = v13 + v99 + 32;
LABEL_123:
              *v96 = v98;
              result = v139;
              *(v96 + 24) = v149;
              *(v96 + 8) = v139;
            }

            v91 = v97 + 4;
            v94 += 32;
            v95 = v97;
          }

          while (v97 + 4 != a2);
        }
      }

      else if (!v93)
      {
        do
        {
          v103 = v91;
          v104 = *(a1 + 32);
          if (v104 < *a1)
          {
            v143 = *(a1 + 40);
            v150 = *(a1 + 56);
            do
            {
              *v91 = *(v91 - 2);
              *(v91 + 12) = *(v91 - 20);
              v105 = *(v91 - 8);
              v91 -= 4;
            }

            while (v104 < v105);
            *v91 = v104;
            result = v143;
            *(v91 + 6) = v150;
            *(v91 + 1) = v143;
          }

          v91 = (v103 + 32);
          a1 = v103;
        }

        while ((v103 + 32) != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v13 != a2)
      {

        sub_812C5C(v13, a2, a2);
      }

      return result;
    }

    v15 = (v13 + 32 * (v14 >> 1));
    v16 = v15;
    v17 = *v10;
    if (v14 < 0x81)
    {
      v20 = *v13;
      if (*v13 < *v16)
      {
        if (v17 < v20)
        {
          *v115 = *v16;
          *&v115[16] = v16[1];
          v21 = *v10;
          *(v16 + 12) = *(a2 - 20);
          *v16 = v21;
          goto LABEL_36;
        }

        *v124 = *v16;
        *&v124[16] = v16[1];
        v38 = *v13;
        *(v16 + 12) = *(v13 + 12);
        *v16 = v38;
        *(v13 + 12) = *&v124[12];
        *v13 = *v124;
        if (*v10 < *v13)
        {
          *v115 = *v13;
          *&v115[16] = *(v13 + 16);
          v39 = *v10;
          *(v13 + 12) = *(a2 - 20);
          *v13 = v39;
LABEL_36:
          *(a2 - 20) = *&v115[12];
          *v10 = *v115;
        }

LABEL_37:
        --a4;
        v26 = *v13;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v17 >= v20)
      {
        goto LABEL_37;
      }

      *v118 = *v13;
      *&v118[16] = *(v13 + 16);
      v24 = *v10;
      *(v13 + 12) = *(a2 - 20);
      *v13 = v24;
      *(a2 - 20) = *&v118[12];
      *v10 = *v118;
      if (*v13 >= *v16)
      {
        goto LABEL_37;
      }

      *v119 = *v16;
      *&v119[16] = v16[1];
      v25 = *v13;
      *(v16 + 12) = *(v13 + 12);
      *v16 = v25;
      *(v13 + 12) = *&v119[12];
      *v13 = *v119;
      --a4;
      v26 = *v13;
      if (a5)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v13 - 32) < v26)
      {
        goto LABEL_62;
      }

      v113 = *(v13 + 24);
      v111 = *(v13 + 8);
      if (v26 >= *v10)
      {
        v73 = v13 + 32;
        do
        {
          v13 = v73;
          if (v73 >= a2)
          {
            break;
          }

          v73 += 32;
        }

        while (v26 >= *v13);
      }

      else
      {
        do
        {
          v72 = *(v13 + 32);
          v13 += 32;
        }

        while (v26 >= v72);
      }

      v74 = a2;
      if (v13 < a2)
      {
        v74 = a2;
        do
        {
          v75 = *(v74 - 4);
          v74 -= 4;
        }

        while (v26 < v75);
      }

      while (v13 < v74)
      {
        *v136 = *v13;
        *&v136[16] = *(v13 + 16);
        v76 = *v74;
        *(v13 + 12) = *(v74 + 12);
        *v13 = v76;
        *(v74 + 12) = *&v136[12];
        *v74 = *v136;
        do
        {
          v77 = *(v13 + 32);
          v13 += 32;
        }

        while (v26 >= v77);
        do
        {
          v78 = *(v74 - 4);
          v74 -= 4;
        }

        while (v26 < v78);
      }

      if (v13 - 32 != a1)
      {
        v79 = *(v13 - 32);
        *(a1 + 12) = *(v13 - 20);
        *a1 = v79;
      }

      a5 = 0;
      *(v13 - 32) = v26;
      result = v111;
      *(v13 - 8) = v113;
      *(v13 - 24) = v111;
    }

    else
    {
      v18 = *v15;
      if (*v15 >= *v13)
      {
        if (v17 < v18)
        {
          *v116 = *v15;
          *&v116[16] = v15[1];
          v22 = *v10;
          *(v15 + 12) = *(a2 - 20);
          *v15 = v22;
          *(a2 - 20) = *&v116[12];
          *v10 = *v116;
          if (*v15 < *v13)
          {
            *v117 = *v13;
            *&v117[16] = *(v13 + 16);
            v23 = *v15;
            *(v13 + 12) = *(v15 + 12);
            *v13 = v23;
            *(v15 + 12) = *&v117[12];
            *v15 = *v117;
          }
        }
      }

      else
      {
        if (v17 >= v18)
        {
          *v120 = *v13;
          *&v120[16] = *(v13 + 16);
          v27 = *v15;
          *(v13 + 12) = *(v15 + 12);
          *v13 = v27;
          *(v15 + 12) = *&v120[12];
          *v15 = *v120;
          if (*v10 >= *v15)
          {
            goto LABEL_28;
          }

          *v114 = *v15;
          *&v114[16] = v15[1];
          v28 = *v10;
          *(v15 + 12) = *(a2 - 20);
          *v15 = v28;
        }

        else
        {
          *v114 = *v13;
          *&v114[16] = *(v13 + 16);
          v19 = *v10;
          *(v13 + 12) = *(a2 - 20);
          *v13 = v19;
        }

        *(a2 - 20) = *&v114[12];
        *v10 = *v114;
      }

LABEL_28:
      v29 = (v13 + 32);
      v30 = v15 - 2;
      v31 = *(v15 - 4);
      v32 = *v11;
      if (v31 >= *(v13 + 32))
      {
        if (v32 < v31)
        {
          *v122 = *v30;
          *&v122[16] = *(v15 - 1);
          v35 = *v11;
          *(v15 - 20) = *(a2 - 52);
          *v30 = v35;
          *(a2 - 52) = *&v122[12];
          *v11 = *v122;
          if (*v30 < *v29)
          {
            *v123 = *v29;
            v36 = *v29;
            *&v123[16] = *(v13 + 48);
            v37 = *(v15 - 20);
            *v29 = *v30;
            *(v13 + 44) = v37;
            *(v15 - 20) = *&v123[12];
            *v30 = v36;
          }
        }
      }

      else
      {
        if (v32 >= v31)
        {
          *v125 = *v29;
          v40 = *v29;
          *&v125[16] = *(v13 + 48);
          v41 = *(v15 - 20);
          *v29 = *v30;
          *(v13 + 44) = v41;
          *(v15 - 20) = *&v125[12];
          *v30 = v40;
          if (*v11 >= *v30)
          {
            goto LABEL_42;
          }

          *v121 = *v30;
          *&v121[16] = *(v15 - 1);
          v42 = *v11;
          *(v15 - 20) = *(a2 - 52);
          *v30 = v42;
          v33 = *v121;
        }

        else
        {
          v33 = *v29;
          *v121 = *v29;
          *&v121[16] = *(v13 + 48);
          v34 = *(a2 - 52);
          *v29 = *v11;
          *(v13 + 44) = v34;
        }

        *(a2 - 52) = *&v121[12];
        *v11 = v33;
      }

LABEL_42:
      v43 = (v13 + 64);
      v46 = *(v15 + 4);
      v44 = v15 + 2;
      v45 = v46;
      v47 = *v12;
      if (v46 >= *(v13 + 64))
      {
        if (v47 < v45)
        {
          *v127 = *v44;
          *&v127[16] = v44[1];
          v50 = *v12;
          *(v44 + 12) = *(a2 - 84);
          *v44 = v50;
          *(a2 - 84) = *&v127[12];
          *v12 = *v127;
          if (*v44 < *v43)
          {
            *v128 = *v43;
            v51 = *v43;
            *&v128[16] = *(v13 + 80);
            v52 = *(v44 + 12);
            *v43 = *v44;
            *(v13 + 76) = v52;
            *(v44 + 12) = *&v128[12];
            *v44 = v51;
          }
        }
      }

      else
      {
        if (v47 >= v45)
        {
          *v129 = *v43;
          v53 = *v43;
          *&v129[16] = *(v13 + 80);
          v54 = *(v44 + 12);
          *v43 = *v44;
          *(v13 + 76) = v54;
          *(v44 + 12) = *&v129[12];
          *v44 = v53;
          if (*v12 >= *v44)
          {
            goto LABEL_51;
          }

          *v126 = *v44;
          *&v126[16] = v44[1];
          v55 = *v12;
          *(v44 + 12) = *(a2 - 84);
          *v44 = v55;
          v48 = *v126;
        }

        else
        {
          v48 = *v43;
          *v126 = *v43;
          *&v126[16] = *(v13 + 80);
          v49 = *(a2 - 84);
          *v43 = *v12;
          *(v13 + 76) = v49;
        }

        *(a2 - 84) = *&v126[12];
        *v12 = v48;
      }

LABEL_51:
      v56 = *v16;
      v57 = *v44;
      if (*v16 >= *v30)
      {
        if (v57 < v56)
        {
          *v131 = *v16;
          *&v131[16] = v16[1];
          *v16 = *v44;
          *(v16 + 12) = *(v44 + 12);
          *(v44 + 12) = *&v131[12];
          *v44 = *v131;
          if (*v16 < *v30)
          {
            *v132 = *v30;
            *&v132[16] = v30[1];
            *v30 = *v16;
            *(v30 + 12) = *(v16 + 12);
            *(v16 + 12) = *&v132[12];
            *v16 = *v132;
          }
        }
      }

      else
      {
        if (v57 >= v56)
        {
          *v133 = *v30;
          *&v133[16] = v30[1];
          *v30 = *v16;
          *(v30 + 12) = *(v16 + 12);
          *(v16 + 12) = *&v133[12];
          *v16 = *v133;
          if (*v44 >= *v16)
          {
            goto LABEL_60;
          }

          *v130 = *v16;
          *&v130[16] = v16[1];
          *v16 = *v44;
          *(v16 + 12) = *(v44 + 12);
        }

        else
        {
          *v130 = *v30;
          *&v130[16] = v30[1];
          *v30 = *v44;
          *(v30 + 12) = *(v44 + 12);
        }

        *(v44 + 12) = *&v130[12];
        *v44 = *v130;
      }

LABEL_60:
      *v134 = *v13;
      *&v134[16] = *(v13 + 16);
      v58 = *v16;
      *(v13 + 12) = *(v16 + 12);
      *v13 = v58;
      *(v16 + 12) = *&v134[12];
      *v16 = *v134;
      --a4;
      v26 = *v13;
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v59 = 0;
      v112 = *(v13 + 24);
      v110 = *(v13 + 8);
      do
      {
        v60 = *(v13 + v59 + 32);
        v59 += 32;
      }

      while (v60 < v26);
      v61 = v13 + v59;
      v62 = a2;
      if (v59 == 32)
      {
        v62 = a2;
        do
        {
          if (v61 >= v62)
          {
            break;
          }

          v64 = *(v62 - 4);
          v62 -= 4;
        }

        while (v64 >= v26);
      }

      else
      {
        do
        {
          v63 = *(v62 - 4);
          v62 -= 4;
        }

        while (v63 >= v26);
      }

      v13 += v59;
      if (v61 < v62)
      {
        v65 = v62;
        do
        {
          *v135 = *v13;
          *&v135[16] = *(v13 + 16);
          v66 = *v65;
          *(v13 + 12) = *(v65 + 12);
          *v13 = v66;
          *(v65 + 12) = *&v135[12];
          *v65 = *v135;
          do
          {
            v67 = *(v13 + 32);
            v13 += 32;
          }

          while (v67 < v26);
          do
          {
            v68 = *(v65 - 4);
            v65 -= 4;
          }

          while (v68 >= v26);
        }

        while (v13 < v65);
      }

      if (v13 - 32 != a1)
      {
        v69 = *(v13 - 32);
        *(a1 + 12) = *(v13 - 20);
        *a1 = v69;
      }

      *(v13 - 32) = v26;
      *(v13 - 8) = v112;
      *(v13 - 24) = v110;
      if (v61 < v62)
      {
        goto LABEL_81;
      }

      v70 = sub_8127A8(a1, v13 - 32, v110);
      if (sub_8127A8(v13, a2, v71))
      {
        a2 = (v13 - 32);
        if (!v70)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v70)
      {
LABEL_81:
        sub_811888(a1, v13 - 32, a3, a4, a5 & 1);
        a5 = 0;
      }
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {
      v82 = (v13 + 32);
      v87 = *(v13 + 32);
      v88 = (v13 + 64);
      v89 = *(v13 + 64);
      if (v87 >= *v13)
      {
        if (v89 < v87)
        {
          *v141 = *v82;
          v102 = *v82;
          *&v141[16] = *(v13 + 48);
          *v82 = *v88;
          *(v13 + 44) = *(v13 + 76);
          *v88 = v102;
          result = *&v141[12];
          *(v13 + 76) = *&v141[12];
          if (*(v13 + 32) < *v13)
          {
            *v142 = *v13;
            *&v142[16] = *(v13 + 16);
            *v13 = *v82;
            *(v13 + 12) = *(v13 + 44);
            *v82 = *v142;
            result = *&v142[12];
            *(v13 + 44) = *&v142[12];
          }
        }
      }

      else
      {
        if (v89 < v87)
        {
          *v138 = *v13;
          *&v138[16] = *(v13 + 16);
          *v13 = *v88;
          *(v13 + 12) = *(v13 + 76);
          v90 = *v138;
          goto LABEL_150;
        }

        *v145 = *v13;
        *&v145[16] = *(v13 + 16);
        *v13 = *v82;
        *(v13 + 12) = *(v13 + 44);
        *v82 = *v145;
        result = *&v145[12];
        *(v13 + 44) = *&v145[12];
        if (v89 < *(v13 + 32))
        {
          v90 = *v82;
          *v138 = *v82;
          *&v138[16] = *(v13 + 48);
          *v82 = *v88;
          *(v13 + 44) = *(v13 + 76);
LABEL_150:
          *v88 = v90;
          result = *&v138[12];
          *(v13 + 76) = *&v138[12];
        }
      }

      if (*v10 >= *v88)
      {
        return result;
      }

      *v146 = *v88;
      result = *v88;
      *&v146[16] = *(v13 + 80);
      v107 = *(a2 - 20);
      *v88 = *v10;
      *(v13 + 76) = v107;
      *(a2 - 20) = *&v146[12];
      *v10 = result;
      if (*v88 >= *v82)
      {
        return result;
      }

      *v147 = *v82;
      v108 = *v82;
      *&v147[16] = *(v13 + 48);
      *v82 = *v88;
      *(v13 + 44) = *(v13 + 76);
      *v88 = v108;
      result = *&v147[12];
      *(v13 + 76) = *&v147[12];
LABEL_154:
      if (*(v13 + 32) < *v13)
      {
        *v148 = *v13;
        *&v148[16] = *(v13 + 16);
        *v13 = *v82;
        *(v13 + 12) = *(v82 + 12);
        *v82 = *v148;
        result = *&v148[12];
        *(v82 + 12) = *&v148[12];
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = sub_81253C(v13, (v13 + 32), (v13 + 64), (v13 + 96), a2 - 2, result).n128_u64[0];
      return result;
    }

    goto LABEL_9;
  }

  v82 = (v13 + 32);
  v83 = *(v13 + 32);
  v85 = *(a2 - 4);
  v80 = a2 - 4;
  v84 = v85;
  if (v83 >= *v13)
  {
    if (v84 >= v83)
    {
      return result;
    }

    *v140 = *v82;
    result = *v82;
    *&v140[16] = *(v13 + 48);
    v101 = *(v80 + 12);
    *v82 = *v80;
    *(v13 + 44) = v101;
    *(v80 + 12) = *&v140[12];
    *v80 = result;
    goto LABEL_154;
  }

  if (v84 < v83)
  {
    goto LABEL_108;
  }

  *v144 = *v13;
  *&v144[16] = *(v13 + 16);
  *v13 = *v82;
  *(v13 + 12) = *(v13 + 44);
  *v82 = *v144;
  result = *&v144[12];
  *(v13 + 44) = *&v144[12];
  if (*v80 < *(v13 + 32))
  {
    result = *v82;
    *v137 = *v82;
    *&v137[16] = *(v13 + 48);
    v106 = *(v80 + 12);
    *v82 = *v80;
    *(v13 + 44) = v106;
    goto LABEL_109;
  }

  return result;
}

__n128 sub_81253C(_OWORD *a1, uint64_t *a2, uint64_t *a3, _OWORD *a4, _OWORD *a5, __n128 result)
{
  v6 = *a2;
  v7 = *a3;
  if (*a2 >= *a1)
  {
    if (v7 < v6)
    {
      *v32 = *a2;
      v10 = *a2;
      *&v32[16] = *(a2 + 1);
      v11 = *(a3 + 12);
      *a2 = *a3;
      *(a2 + 12) = v11;
      *a3 = v10;
      result = *&v32[12];
      *(a3 + 12) = *&v32[12];
      if (*a2 < *a1)
      {
        *v33 = *a1;
        v12 = *a1;
        *&v33[16] = a1[1];
        v13 = *(a2 + 12);
        *a1 = *a2;
        *(a1 + 12) = v13;
        *a2 = v12;
        result = *&v33[12];
        *(a2 + 12) = *&v33[12];
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = *a1;
      *v31 = *a1;
      *&v31[16] = a1[1];
      v9 = *(a3 + 12);
      *a1 = *a3;
      *(a1 + 12) = v9;
LABEL_9:
      *a3 = v8;
      result = *&v31[12];
      *(a3 + 12) = *&v31[12];
      goto LABEL_10;
    }

    *v34 = *a1;
    v14 = *a1;
    *&v34[16] = a1[1];
    v15 = *(a2 + 12);
    *a1 = *a2;
    *(a1 + 12) = v15;
    *a2 = v14;
    result = *&v34[12];
    *(a2 + 12) = *&v34[12];
    if (*a3 < *a2)
    {
      v8 = *a2;
      *v31 = *a2;
      *&v31[16] = *(a2 + 1);
      v16 = *(a3 + 12);
      *a2 = *a3;
      *(a2 + 12) = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    *v35 = *a3;
    v17 = *a3;
    *&v35[16] = *(a3 + 1);
    v18 = *(a4 + 12);
    *a3 = *a4;
    *(a3 + 12) = v18;
    *a4 = v17;
    result = *&v35[12];
    *(a4 + 12) = *&v35[12];
    if (*a3 < *a2)
    {
      *v36 = *a2;
      v19 = *a2;
      *&v36[16] = *(a2 + 1);
      v20 = *(a3 + 12);
      *a2 = *a3;
      *(a2 + 12) = v20;
      *a3 = v19;
      result = *&v36[12];
      *(a3 + 12) = *&v36[12];
      if (*a2 < *a1)
      {
        *v37 = *a1;
        v21 = *a1;
        *&v37[16] = a1[1];
        v22 = *(a2 + 12);
        *a1 = *a2;
        *(a1 + 12) = v22;
        *a2 = v21;
        result = *&v37[12];
        *(a2 + 12) = *&v37[12];
      }
    }
  }

  if (*a5 < *a4)
  {
    *v38 = *a4;
    v23 = *a4;
    *&v38[16] = a4[1];
    v24 = *(a5 + 12);
    *a4 = *a5;
    *(a4 + 12) = v24;
    *a5 = v23;
    result = *&v38[12];
    *(a5 + 12) = *&v38[12];
    if (*a4 < *a3)
    {
      *v39 = *a3;
      v25 = *a3;
      *&v39[16] = *(a3 + 1);
      v26 = *(a4 + 12);
      *a3 = *a4;
      *(a3 + 12) = v26;
      *a4 = v25;
      result = *&v39[12];
      *(a4 + 12) = *&v39[12];
      if (*a3 < *a2)
      {
        *v40 = *a2;
        v27 = *a2;
        *&v40[16] = *(a2 + 1);
        v28 = *(a3 + 12);
        *a2 = *a3;
        *(a2 + 12) = v28;
        *a3 = v27;
        result = *&v40[12];
        *(a3 + 12) = *&v40[12];
        if (*a2 < *a1)
        {
          *v41 = *a1;
          v29 = *a1;
          *&v41[16] = a1[1];
          v30 = *(a2 + 12);
          *a1 = *a2;
          *(a1 + 12) = v30;
          *a2 = v29;
          result = *&v41[12];
          *(a2 + 12) = *&v41[12];
        }
      }
    }
  }

  return result;
}

BOOL sub_8127A8(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = (a2 - a1) >> 5;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v7 = (a1 + 32);
      v8 = *(a1 + 32);
      v10 = *(a2 - 32);
      v4 = (a2 - 32);
      v9 = v10;
      if (v8 < *a1)
      {
        if (v9 < v8)
        {
LABEL_12:
          v11 = *a1;
          *v47 = *a1;
          *&v47[16] = *(a1 + 16);
          v12 = *(v4 + 12);
          *a1 = *v4;
          *(a1 + 12) = v12;
LABEL_13:
          *v4 = v11;
          *(v4 + 12) = *&v47[12];
          return 1;
        }

        *v55 = *a1;
        v31 = *a1;
        *&v55[16] = *(a1 + 16);
        *a1 = *v7;
        *(a1 + 12) = *(a1 + 44);
        *v7 = v31;
        *(a1 + 44) = *&v55[12];
        if (*v4 < *(a1 + 32))
        {
          v11 = *v7;
          *v47 = *v7;
          *&v47[16] = *(a1 + 48);
          v32 = *(v4 + 12);
          *v7 = *v4;
          *(a1 + 44) = v32;
          goto LABEL_13;
        }

        return 1;
      }

      if (v9 >= v8)
      {
        return 1;
      }

      *v50 = *v7;
      v25 = *v7;
      *&v50[16] = *(a1 + 48);
      v26 = *(v4 + 12);
      *v7 = *v4;
      *(a1 + 44) = v26;
      *v4 = v25;
      *(v4 + 12) = *&v50[12];
LABEL_49:
      if (*(a1 + 32) < *a1)
      {
        *v61 = *a1;
        v46 = *a1;
        *&v61[16] = *(a1 + 16);
        *a1 = *v7;
        *(a1 + 12) = *(v7 + 12);
        *v7 = v46;
        *(v7 + 12) = *&v61[12];
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        sub_81253C(a1, (a1 + 32), (a1 + 64), (a1 + 96), (a2 - 32), a3);
        return 1;
      }

      goto LABEL_14;
    }

    v7 = (a1 + 32);
    v19 = *(a1 + 32);
    v20 = (a1 + 64);
    v21 = *(a1 + 64);
    v22 = (a2 - 32);
    v23 = *a1;
    if (v19 >= *a1)
    {
      if (v21 < v19)
      {
        *v53 = *v7;
        v29 = *v7;
        *&v53[16] = *(a1 + 48);
        *v7 = *v20;
        *(a1 + 44) = *(a1 + 76);
        *v20 = v29;
        *(a1 + 76) = *&v53[12];
        if (*v7 < v23)
        {
          *v54 = *a1;
          v30 = *a1;
          *&v54[16] = *(a1 + 16);
          *a1 = *v7;
          *(a1 + 12) = *(a1 + 44);
          *v7 = v30;
          *(a1 + 44) = *&v54[12];
        }
      }

      goto LABEL_46;
    }

    if (v21 >= v19)
    {
      *v58 = *a1;
      v42 = *a1;
      *&v58[16] = *(a1 + 16);
      *a1 = *v7;
      *(a1 + 12) = *(a1 + 44);
      *v7 = v42;
      *(a1 + 44) = *&v58[12];
      if (v21 >= *(a1 + 32))
      {
        goto LABEL_46;
      }

      v24 = *v7;
      *v49 = *v7;
      *&v49[16] = *(a1 + 48);
      *v7 = *v20;
      *(a1 + 44) = *(a1 + 76);
    }

    else
    {
      v24 = *a1;
      *v49 = *a1;
      *&v49[16] = *(a1 + 16);
      *a1 = *v20;
      *(a1 + 12) = *(a1 + 76);
    }

    *v20 = v24;
    *(a1 + 76) = *&v49[12];
LABEL_46:
    if (*v22 >= *v20)
    {
      return 1;
    }

    *v59 = *v20;
    v43 = *v20;
    *&v59[16] = *(a1 + 80);
    v44 = *(a2 - 20);
    *v20 = *v22;
    *(a1 + 76) = v44;
    *v22 = v43;
    *(a2 - 20) = *&v59[12];
    if (*v20 >= *v7)
    {
      return 1;
    }

    *v60 = *v7;
    v45 = *v7;
    *&v60[16] = *(a1 + 48);
    *v7 = *v20;
    *(a1 + 44) = *(a1 + 76);
    *v20 = v45;
    *(a1 + 76) = *&v60[12];
    goto LABEL_49;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = *(a2 - 32);
    v4 = (a2 - 32);
    if (v5 >= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v13 = (a1 + 64);
  v14 = *(a1 + 64);
  v15 = (a1 + 32);
  v16 = *(a1 + 32);
  v17 = *a1;
  if (v16 >= *a1)
  {
    if (v14 < v16)
    {
      *v51 = *v15;
      v27 = *v15;
      *&v51[16] = *(a1 + 48);
      *v15 = *v13;
      *(a1 + 44) = *(a1 + 76);
      *v13 = v27;
      *(a1 + 76) = *&v51[12];
      if (*v15 < v17)
      {
        *v52 = *a1;
        v28 = *a1;
        *&v52[16] = *(a1 + 16);
        *a1 = *v15;
        *(a1 + 12) = *(a1 + 44);
        *v15 = v28;
        *(a1 + 44) = *&v52[12];
      }
    }
  }

  else
  {
    if (v14 >= v16)
    {
      *v56 = *a1;
      v33 = *a1;
      *&v56[16] = *(a1 + 16);
      *a1 = *v15;
      *(a1 + 12) = *(a1 + 44);
      *v15 = v33;
      *(a1 + 44) = *&v56[12];
      if (v14 >= *(a1 + 32))
      {
        goto LABEL_33;
      }

      v18 = *v15;
      *v48 = *v15;
      *&v48[16] = *(a1 + 48);
      *v15 = *v13;
      *(a1 + 44) = *(a1 + 76);
    }

    else
    {
      v18 = *a1;
      *v48 = *a1;
      *&v48[16] = *(a1 + 16);
      *a1 = *v13;
      *(a1 + 12) = *(a1 + 76);
    }

    *v13 = v18;
    *(a1 + 76) = *&v48[12];
  }

LABEL_33:
  v34 = a1 + 96;
  if (a1 + 96 == a2)
  {
    return 1;
  }

  v35 = 0;
  v36 = 0;
  while (1)
  {
    v38 = *v13;
    v39 = *v34;
    if (*v34 < v38)
    {
      v57 = *(v34 + 8);
      v62 = *(v34 + 24);
      v40 = v35;
      do
      {
        v41 = a1 + v40;
        *(v41 + 96) = *(a1 + v40 + 64);
        *(v41 + 108) = *(a1 + v40 + 76);
        if (v40 == -64)
        {
          v37 = a1;
          goto LABEL_36;
        }

        v40 -= 32;
      }

      while (v39 < *(v41 + 32));
      v37 = a1 + v40 + 96;
LABEL_36:
      *v37 = v39;
      *(v37 + 8) = v57;
      *(v37 + 24) = v62;
      if (++v36 == 8)
      {
        return v34 + 32 == a2;
      }
    }

    v13 = v34;
    v35 += 32;
    v34 += 32;
    if (v34 == a2)
    {
      return 1;
    }
  }
}

unint64_t *sub_812C5C(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v3 = (a2 - a1) >> 5;
  if (v3 >= 2)
  {
    v4 = (v3 - 2) >> 1;
    v5 = v4;
    do
    {
      if (v4 >= v5)
      {
        v7 = (2 * (v5 & 0x7FFFFFFFFFFFFFFLL)) | 1;
        v8 = &a1[4 * v7];
        if (2 * (v5 & 0x7FFFFFFFFFFFFFFLL) + 2 >= v3)
        {
          v11 = &a1[4 * v5];
          v12 = *v11;
          if (*v8 >= *v11)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v9 = v8[4];
          v10 = *v8 >= v9;
          if (*v8 > v9)
          {
            v9 = *v8;
          }

          if (!v10)
          {
            v8 += 4;
            v7 = 2 * (v5 & 0x7FFFFFFFFFFFFFFLL) + 2;
          }

          v11 = &a1[4 * v5];
          v12 = *v11;
          if (v9 >= *v11)
          {
LABEL_15:
            v52 = *(v11 + 1);
            v57 = v11[3];
            while (1)
            {
              v15 = v11;
              v11 = v8;
              v16 = *v8;
              *(v15 + 12) = *(v8 + 12);
              *v15 = v16;
              if (v4 < v7)
              {
                break;
              }

              v17 = (2 * v7) | 1;
              v8 = &a1[4 * v17];
              v7 = 2 * v7 + 2;
              if (v7 < v3)
              {
                v13 = v8[4];
                v14 = *v8 >= v13;
                if (*v8 > v13)
                {
                  v13 = *v8;
                }

                if (v14)
                {
                  v7 = v17;
                }

                else
                {
                  v8 += 4;
                }

                if (v13 < v12)
                {
                  break;
                }
              }

              else
              {
                v7 = v17;
                if (*v8 < v12)
                {
                  break;
                }
              }
            }

            *v11 = v12;
            *(v11 + 6) = v57;
            *(v11 + 1) = v52;
          }
        }
      }

      v6 = v5-- <= 0;
    }

    while (!v6);
  }

  i = a2;
  if (a2 != a3)
  {
    if (v3 < 2)
    {
      i = a2;
      do
      {
        if (*i < *a1)
        {
          *v53 = *i;
          v19 = *i;
          *&v53[16] = *(i + 1);
          v20 = *(a1 + 12);
          *i = *a1;
          *(i + 12) = v20;
          *a1 = v19;
          *(a1 + 12) = *&v53[12];
        }

        i += 4;
      }

      while (i != a3);
      goto LABEL_60;
    }

    v21 = a1 + 4;
    v22 = a1 + 8;
    for (i = a2; i != a3; i += 4)
    {
      if (*i < *a1)
      {
        *v54 = *i;
        v23 = *i;
        *&v54[16] = *(i + 1);
        v24 = *(a1 + 12);
        *i = *a1;
        *(i + 12) = v24;
        *a1 = v23;
        *(a1 + 12) = *&v54[12];
        if (a2 - a1 == 64)
        {
          v25 = (a1 + 4);
          v26 = 1;
          v27 = *a1;
          if (*v21 >= *a1)
          {
            goto LABEL_49;
          }
        }

        else
        {
          if (*v21 <= *v22)
          {
            v28 = *v22;
          }

          else
          {
            v28 = *v21;
          }

          if (*v21 >= *v22)
          {
            v25 = (a1 + 4);
          }

          else
          {
            v25 = (a1 + 8);
          }

          if (*v21 >= *v22)
          {
            v26 = 1;
          }

          else
          {
            v26 = 2;
          }

          v27 = *a1;
          if (v28 >= *a1)
          {
LABEL_49:
            v55 = *(a1 + 1);
            v58 = a1[3];
            v29 = a1;
            while (1)
            {
              v32 = v29;
              v29 = v25;
              v33 = *v25;
              *(v32 + 12) = *(v25 + 12);
              *v32 = v33;
              if (((v3 - 2) >> 1) < v26)
              {
                break;
              }

              v34 = (2 * v26) | 1;
              v25 = &a1[4 * v34];
              v26 = 2 * v26 + 2;
              if (v26 < v3)
              {
                v30 = v25[4];
                v31 = *v25 >= v30;
                if (*v25 > v30)
                {
                  v30 = *v25;
                }

                if (v31)
                {
                  v26 = v34;
                }

                else
                {
                  v25 += 4;
                }

                if (v30 < v27)
                {
                  break;
                }
              }

              else
              {
                v26 = v34;
                if (*v25 < v27)
                {
                  break;
                }
              }
            }

            *v29 = v27;
            *(v29 + 6) = v58;
            *(v29 + 1) = v55;
          }
        }
      }
    }
  }

LABEL_60:
  if (v3 >= 2)
  {
    do
    {
      v36 = 0;
      *v56 = *a1;
      *&v56[16] = *(a1 + 1);
      v37 = a1;
      do
      {
        v42 = &v37[4 * v36];
        v40 = (v42 + 4);
        v43 = (2 * v36) | 1;
        v36 = 2 * v36 + 2;
        if (v36 < v3)
        {
          v39 = v42[8];
          v38 = (v42 + 8);
          if (*(v38 - 4) >= v39)
          {
            v36 = v43;
          }

          else
          {
            v40 = v38;
          }
        }

        else
        {
          v36 = v43;
        }

        v41 = *v40;
        *(v37 + 12) = *(v40 + 12);
        *v37 = v41;
        v37 = v40;
      }

      while (v36 <= ((v3 - 2) >> 1));
      a2 -= 4;
      if (v40 == a2)
      {
        *(v40 + 12) = *&v56[12];
        *v40 = *v56;
      }

      else
      {
        v44 = *a2;
        *(v40 + 12) = *(a2 + 12);
        *v40 = v44;
        *a2 = *v56;
        *(a2 + 12) = *&v56[12];
        v45 = (v40 - a1 + 32) >> 5;
        v6 = v45 < 2;
        v46 = v45 - 2;
        if (!v6)
        {
          v47 = v46 >> 1;
          v48 = &a1[4 * (v46 >> 1)];
          v49 = *v40;
          if (*v48 < *v40)
          {
            v60 = v40[3];
            v59 = *(v40 + 1);
            do
            {
              v50 = v40;
              v40 = v48;
              v51 = *v48;
              *(v50 + 12) = *(v48 + 12);
              *v50 = v51;
              if (!v47)
              {
                break;
              }

              v47 = (v47 - 1) >> 1;
              v48 = &a1[4 * v47];
            }

            while (*v48 < v49);
            *v40 = v49;
            *(v40 + 1) = v59;
            *(v40 + 6) = v60;
          }
        }
      }

      v6 = v3-- <= 2;
    }

    while (!v6);
  }

  return i;
}

void sub_813098()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27ACE70 = 0u;
  unk_27ACE80 = 0u;
  dword_27ACE90 = 1065353216;
  sub_3A9A34(&xmmword_27ACE70, v0);
  sub_3A9A34(&xmmword_27ACE70, v3);
  sub_3A9A34(&xmmword_27ACE70, __p);
  sub_3A9A34(&xmmword_27ACE70, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27ACE48 = 0;
    qword_27ACE50 = 0;
    qword_27ACE40 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_8132E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27ACE58)
  {
    qword_27ACE60 = qword_27ACE58;
    operator delete(qword_27ACE58);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_81338C(uint64_t a1)
{
  v1 = *(a1 + 132);
  if (v1 > 5)
  {
    return 4;
  }

  else
  {
    return dword_22A209C[v1];
  }
}

void sub_8133B0()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27ACEC8 = 0u;
  unk_27ACED8 = 0u;
  dword_27ACEE8 = 1065353216;
  sub_3A9A34(&xmmword_27ACEC8, v0);
  sub_3A9A34(&xmmword_27ACEC8, v3);
  sub_3A9A34(&xmmword_27ACEC8, __p);
  sub_3A9A34(&xmmword_27ACEC8, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27ACEA0 = 0;
    qword_27ACEA8 = 0;
    qword_27ACE98 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_8135F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27ACEB0)
  {
    qword_27ACEB8 = qword_27ACEB0;
    operator delete(qword_27ACEB0);
  }

  _Unwind_Resume(exception_object);
}

void sub_8136A4(void *a1, uint64_t a2, uint64_t a3, void *a4, const void **a5, uint64_t a6)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = sub_3AF6B4(a4);
  a1[3] = sub_3B20FC(a4);
  a1[4] = sub_3B21D0(a4);
  sub_67A1F8((a1 + 5), a4, 3, *(a6 + 1566), a5);
}

void sub_813768(_Unwind_Exception *a1)
{
  sub_7B3780(v1 + 2640);
  if (*(v1 + 2415) < 0)
  {
    operator delete(*(v1 + 2392));
  }

  _Unwind_Resume(a1);
}

unint64_t sub_813798(uint64_t a1, uint64_t a2)
{
  result = nullsub_1(a2);
  v4 = *result;
  v5 = *(result + 8);
  if (*result != v5)
  {
    do
    {
      result = sub_8137F0(a1, v4);
      v4 += 1582;
    }

    while (v4 != v5);
  }

  return result;
}

unint64_t sub_8137F0(uint64_t a1, void *a2)
{
  v4 = a2[139] - a2[138];
  if (v4)
  {
    v5 = 0;
    v6 = 0x3795876FF3795877 * (v4 >> 3);
    do
    {
      v8 = sub_578320(a2 + 138, v5);
      sub_81FE98(a1 + 2640, a2, v5);
      sub_814A84(a1, a2, v5);
      sub_813B0C(a1, a2, v5);
      sub_8146D0(a1, a2, v5);
      v9 = *(v8 + 24);
      if (v9 >= sub_4D1DC0(a2) || ((v10 = *(v8 + 160), v10 - 25 <= 0x3F) ? (v11 = ((1 << (v10 - 25)) & 0x9000000000000001) == 0) : (v11 = 1), v11 ? (v12 = v10 == 17) : (v12 = 1), v12 || v10 - 82 < 3 || v10 <= 0x27 && ((1 << v10) & 0x8600050000) != 0 || (v26 = *(v8 + 24), v13 = sub_6A0F58(a2, v26), v13 == 9) && v26 && sub_6A0F58(a2, v26 - 1) == 9))
      {
        v13 = 0;
      }

      *(v8 + 788) = v13;
      v27 = *(a1 + 2505) == 1 && ((v14 = *(v8 + 160), (v14 - 25) <= 0x3F) ? (v15 = ((1 << (v14 - 25)) & 0x9000000000000001) == 0) : (v15 = 1), v15 ? (v16 = v14 == 17) : (v16 = 1), !v16) && *(v8 + 384) == 2;
      *(v8 + 784) = v27;
      sub_81F50C(a1, v8, a2);
      v17 = sub_578320(a2 + 138, v5);
      v18 = v17[40];
      if (v18 - 82 >= 3 && (v18 > 0x27 || ((1 << v18) & 0x8600050000) == 0))
      {
        v28 = v17[4];
        v29 = v17[6];
        v30 = v17;
        sub_4D0560();
        v32 = v31;
        v34 = v33;
        sub_4D0560();
        *(v30 + 2418) = sub_8210A4(v32, v34 + v28, v36, v35 + v29);
      }

      sub_8173F8(a1, a2, v5);
      sub_817694(a1, a2, v5);
      v20 = (a2[138] + 2616 * v5);
      v21 = v20[10];
      v22 = v20[13];
      if (v21 != -1 && v22 != -1)
      {
        if (v21 <= v22)
        {
          v24 = v20[13];
        }

        else
        {
          v24 = v20[10];
        }

        v25 = 0;
        if (v21 < v22)
        {
          do
          {
            v25 += sub_4D23F8(a2, v21++, v19);
          }

          while (v24 != v21);
        }

        v7 = v20[14] + v25 - v20[11];
        if (v20[126] < v7)
        {
          v7 = v20[126];
        }

        v20[16] = v7;
      }

      sub_816DC8(a1, a2, v5++);
    }

    while (v5 != v6);
  }

  return sub_91C178(a1 + 2608, a2);
}

unint64_t sub_813B0C(uint64_t a1, void *a2, unint64_t a3)
{
  result = sub_578320(a2 + 138, a3);
  v6 = *(result + 80);
  if (v6 == -1)
  {
    return result;
  }

  v7 = result;
  v8 = *(result + 24);
  result = sub_4D1DC0(a2);
  if (v8 >= result)
  {
    return result;
  }

  result = sub_4D1F50(a2, v6);
  v10 = (*result - **result);
  if (*v10 >= 0x9Bu && (v11 = v10[77]) != 0)
  {
    v12 = (*(*result + v11) >> 15) & 1;
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  v153 = v12;
  v152 = v12;
  v151 = v12;
  v13 = *(v7 + 160);
  v14 = 1;
  v15 = v13 - 11;
  if ((v13 - 11) > 0x36)
  {
LABEL_32:
    if (v13 != 1)
    {
      v14 = 0;
    }

    goto LABEL_9;
  }

  if (((1 << v15) & 0x4A000000450200) == 0)
  {
    if (v13 == 11)
    {
      v150 = v12;
      v14 = v12;
      goto LABEL_16;
    }

    goto LABEL_32;
  }

LABEL_9:
  v150 = v14;
  v16 = 1;
  if (v15 <= 0x37)
  {
    if (((1 << v15) & 0x940000008A0400) != 0)
    {
      goto LABEL_17;
    }

    if (v13 == 11)
    {
LABEL_16:
      v16 = v12 ^ 1;
      goto LABEL_17;
    }
  }

  if (v13 != 2)
  {
    v16 = 0;
  }

LABEL_17:
  v149 = v16;
  v148 = v13 == 4;
  v17 = v13 - 3;
  v147 = v17 == 0;
  if ((v14 & 1) == 0)
  {
    v36 = v17 > 1;
    v18 = v16 ^ 1;
    if (!v36)
    {
      v18 = 0;
    }

    if (v18)
    {
      return result;
    }
  }

  v19 = *(v7 + 2057);
  v20 = 0x7FFFFFFFFFFFFFFFLL;
  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v21 = 440;
      if (*(*(a1 + 6560) + 1064))
      {
        v21 = 408;
      }

      v22 = 592;
      v23 = 752;
      v24 = 528;
    }

    else
    {
      if (v19 != 3)
      {
        goto LABEL_46;
      }

      v21 = 448;
      if (*(*(a1 + 6560) + 1064))
      {
        v21 = 416;
      }

      v22 = 600;
      v23 = 760;
      v24 = 536;
    }
  }

  else if (*(v7 + 2057))
  {
    if (v19 != 1)
    {
      goto LABEL_46;
    }

    v21 = 432;
    if (*(*(a1 + 6560) + 1064))
    {
      v21 = 400;
    }

    v22 = 584;
    v23 = 744;
    v24 = 520;
  }

  else
  {
    v21 = 424;
    if (*(*(a1 + 6560) + 1064))
    {
      v21 = 392;
    }

    v22 = 576;
    v23 = 736;
    v24 = 512;
  }

  v20 = *(a1 + v21);
  v25 = *(a1 + v24);
  v26 = *(a1 + v23);
  v27 = *(a1 + v22);
  if (v20 <= v25)
  {
    v20 = v25;
  }

  if (v20 <= v26)
  {
    v20 = v26;
  }

  if (v20 <= v27)
  {
    v20 = v27;
  }

LABEL_46:
  if (v20 >= *(v7 + 1008))
  {
    v20 = *(v7 + 1008);
  }

  v98 = v20;
  v28 = *(v7 + 56);
  if (v28 == -1)
  {
    v28 = *(v7 + 40);
  }

  v29 = *(v7 + 16);
  v146 = *(v7 + 88);
  if (v6 > v28)
  {
    v99 = 0;
    v6 = v6;
    v30 = v29;
    v31 = v28;
    v97 = v28;
    while (1)
    {
      v32 = v6--;
      if (v32 > v30)
      {
        result = sub_4D23F8(a2, v6, v9);
        v146 += result;
        goto LABEL_53;
      }

      v33 = sub_4D1F50(a2, v6);
      v34 = sub_53A634(a2 + 936, v6);
      sub_683D58(v123, &v146);
      v138 = v6;
      v36 = v99 < *(a1 + 40) && v146 <= v98;
      if (!v36)
      {
        return sub_5941F8(v123);
      }

      v37 = sub_4D23F8(a2, v6, v35);
      v146 += v37;
      sub_6D34C0(*a1, v33, 0, &v121);
      if (!v121)
      {
        v48 = 4;
        goto LABEL_184;
      }

      v38 = *v33;
      v39 = &(*v33)[-**v33];
      v40 = *v39;
      if (v40 < 0x9B || !*(v39 + 77) || (v38[*(v39 + 77) + 2] & 1) == 0)
      {
        break;
      }

      LOBYTE(v46) = 1;
LABEL_78:
      v120 = v46;
      v117 = 0;
      v118 = 0;
      v119 = 0;
      v49 = *v121;
      v50 = v121[1];
      v103[0] = a1;
      v103[1] = &v120;
      v104 = &v150;
      v105 = &v152;
      *&v106 = &v149;
      *(&v106 + 1) = &v151;
      v107 = &v148;
      v108 = &v147;
      v109 = &v153;
      if (v49 == v50)
      {
        v48 = 4;
        v31 = v97;
        goto LABEL_184;
      }

      do
      {
        if (sub_822B44(v103, v49))
        {
          v52 = v118;
          if (v118 >= v119)
          {
            v51 = sub_822E08(&v117, v49);
          }

          else
          {
            sub_5EF9A8(v118, v49);
            v51 = v52 + 248;
          }

          v118 = v51;
        }

        v49 += 248;
      }

      while (v49 != v50);
      v53 = v117;
      if (v117 == v118)
      {
        v48 = 4;
        v31 = v97;
        if (!v117)
        {
          goto LABEL_184;
        }
      }

      else
      {
        v54 = *(v7 + 2072);
        v31 = v97;
        if (*(v7 + 2064) == v54)
        {
          v55 = v146;
        }

        else
        {
          v55 = v146 - *(v54 - 432);
        }

        if (v55 >= sub_67AA84(a1 + 40, *(v7 + 2057)))
        {
          v139 = 1;
          v144 = v148;
          v56 = sub_4D1F50(a2, *(v7 + 24));
          v58 = v117;
          v57 = v118;
          v103[0] = v7;
          v103[1] = a1;
          v95 = v56;
          v104 = v56;
          v105 = &v148;
          if (v117 != v118)
          {
            while ((sub_822F84(v103, v58) & 1) == 0)
            {
              v58 += 31;
              if (v58 == v57)
              {
                v58 = v57;
                break;
              }
            }

            v57 = v118;
          }

          v141 = v58 != v57;
          if (v58 == v57)
          {
            goto LABEL_171;
          }

          v59 = *(a1 + 16);
          v60 = **v58;
          v61 = sub_2B51D8(v59, v60 & 0xFFFFFFFFFFFFLL);
          if (*(v59 + 7772) == 1)
          {
            sub_30C50C(v59 + 3896, v60, 0);
          }

          sub_31D7E8(v59, v60 & 0xFFFFFFFFFFFFLL, 1);
          v62 = *(a1 + 16);
          v96 = *(v58[1] - 1);
          v63 = sub_2B51D8(v62, v96 & 0xFFFFFFFFFFFFLL);
          if (*(v62 + 7772) == 1)
          {
            sub_30C50C(v62 + 3896, v96, 0);
          }

          sub_31D7E8(v62, v96 & 0xFFFFFFFFFFFFLL, 1);
          v64 = (v63 - *v63);
          v65 = *v64;
          if (v65 < 0x9B)
          {
            v145 = 0;
            v67 = (v61 - *v61);
            v68 = *v67;
            if (v68 < 0x2F)
            {
              goto LABEL_116;
            }
          }

          else
          {
            v66 = v64[77];
            if (v64[77])
            {
              LODWORD(v66) = (*(v63 + v66) >> 2) & 1;
            }

            v145 = v66;
            v67 = (v61 - *v61);
            v68 = *v67;
            if (v68 < 0x2F)
            {
LABEL_116:
              if (v65 >= 0x2F)
              {
                goto LABEL_117;
              }

LABEL_125:
              LOBYTE(v70) = 0;
LABEL_126:
              v143 = v70 & 1;
              v75 = *(v58 + 6) - 11;
              if (v75 < 0x38)
              {
LABEL_127:
                if ((0xE00000000C0001uLL >> v75))
                {
                  LODWORD(v76) = 1;
                  goto LABEL_141;
                }
              }

LABEL_130:
              if ((v68 < 0x2F) | v70 & 1)
              {
LABEL_131:
                LODWORD(v76) = 0;
              }

              else
              {
                v76 = v67[23];
                if (v76)
                {
                  v77 = *(v61 + v76);
                  v36 = v77 > 0x1A;
                  v78 = (1 << v77) & 0x4810001;
                  v79 = v36 || v78 == 0;
                  if (v79 || v65 < 0x2F)
                  {
                    goto LABEL_131;
                  }

                  v76 = v64[23];
                  if (v64[23])
                  {
                    v80 = *(v63 + v76);
                    if (v80 >= 0x1B)
                    {
                      goto LABEL_131;
                    }

                    LODWORD(v76) = 0x4810001u >> v80;
                  }
                }
              }

LABEL_141:
              v142 = v76 & 1;
              if (v65 < 0x43)
              {
                LODWORD(v81) = 0;
              }

              else
              {
                v81 = v64[33];
                if (v81)
                {
                  LODWORD(v81) = *(v63 + v81);
                }
              }

              v82 = (*v95 - **v95);
              v31 = v97;
              if (*v82 >= 0x43u && (v83 = v82[33]) != 0)
              {
                v84 = *(*v95 + v83);
                v85 = v81 >= v84;
                LODWORD(v81) = v81 - v84;
                if (v81 == 0 || !v85)
                {
                  goto LABEL_148;
                }

LABEL_151:
                v140 = v81 <= *(a1 + 41);
                if (((v76 | v144) & 1) == 0)
                {
                  goto LABEL_152;
                }

LABEL_149:
                sub_734CE0(v103);
              }

              else
              {
                if (v81)
                {
                  goto LABEL_151;
                }

LABEL_148:
                v140 = 1;
                if ((v76 | v144))
                {
                  goto LABEL_149;
                }

LABEL_152:
                v86 = *(a1 + 8);
                v100 = v96;
                v102 = BYTE6(v96);
                v101 = WORD2(v96);
                sub_87EFA8(v86, &v100, v34, v103);
              }

              if (SHIBYTE(v125) < 0)
              {
                operator delete(__p);
              }

              __p = *v103;
              v125 = v104;
              HIBYTE(v104) = 0;
              LOBYTE(v103[0]) = 0;
              v126 = v105;
              if (SHIBYTE(v128) < 0)
              {
                operator delete(v127);
              }

              v127 = v106;
              v128 = v107;
              HIBYTE(v107) = 0;
              LOBYTE(v106) = 0;
              v129 = v108;
              v130 = v109;
              if (SHIBYTE(v132) < 0)
              {
                operator delete(v131);
              }

              v131 = v110;
              v132 = v111;
              HIBYTE(v111) = 0;
              LOBYTE(v110) = 0;
              if (SHIBYTE(v134) < 0)
              {
                operator delete(v133);
              }

              v133 = v112;
              v134 = v113;
              HIBYTE(v113) = 0;
              LOBYTE(v112) = 0;
              v135 = v114;
              if (SHIBYTE(v137) < 0)
              {
                operator delete(v136);
                v136 = v115;
                v137 = v116;
                HIBYTE(v116) = 0;
                LOBYTE(v115) = 0;
                if (SHIBYTE(v113) < 0)
                {
                  operator delete(v112);
                  if ((SHIBYTE(v111) & 0x80000000) == 0)
                  {
                    goto LABEL_168;
                  }
                }

                else if ((SHIBYTE(v111) & 0x80000000) == 0)
                {
                  goto LABEL_168;
                }

LABEL_163:
                operator delete(v110);
                if (SHIBYTE(v107) < 0)
                {
                  goto LABEL_164;
                }

LABEL_169:
                if (SHIBYTE(v104) < 0)
                {
LABEL_165:
                  operator delete(v103[0]);
                }
              }

              else
              {
                v136 = v115;
                v137 = v116;
                HIBYTE(v116) = 0;
                LOBYTE(v115) = 0;
                if (SHIBYTE(v111) < 0)
                {
                  goto LABEL_163;
                }

LABEL_168:
                if ((SHIBYTE(v107) & 0x80000000) == 0)
                {
                  goto LABEL_169;
                }

LABEL_164:
                operator delete(v106);
                if (SHIBYTE(v104) < 0)
                {
                  goto LABEL_165;
                }
              }

              ++v99;
LABEL_171:
              v87 = *(v7 + 2072);
              if (v87 >= *(v7 + 2080))
              {
                v88 = sub_820308((v7 + 2064), v123);
              }

              else
              {
                sub_5F3168(*(v7 + 2072), v123);
                v88 = v87 + 432;
                *(v7 + 2072) = v87 + 432;
              }

              v48 = 0;
              *(v7 + 2072) = v88;
              v53 = v117;
              if (!v117)
              {
                goto LABEL_184;
              }

              goto LABEL_175;
            }
          }

          if (!v67[23])
          {
            goto LABEL_116;
          }

          v69 = *(v61 + v67[23]);
          if (v69 >= 0x1B)
          {
            goto LABEL_116;
          }

          LOBYTE(v70) = 0;
          if (v65 < 0x2F || ((0x4810001u >> v69) & 1) != 0)
          {
            goto LABEL_126;
          }

LABEL_117:
          v70 = v64[23];
          if (!v64[23])
          {
            goto LABEL_126;
          }

          v71 = *(v63 + v70);
          v36 = v71 > 0x1A;
          v72 = (1 << v71) & 0x4810001;
          if (v36 || v72 == 0)
          {
            goto LABEL_125;
          }

          v74 = *(v7 + 160) - 11;
          if (v74 >= 0x38)
          {
            LOBYTE(v70) = 1;
            v143 = 1;
            v75 = *(v58 + 6) - 11;
            if (v75 < 0x38)
            {
              goto LABEL_127;
            }
          }

          else
          {
            v70 = 0x1FFFFFFFF3FFFEuLL >> v74;
            v143 = v70 & 1;
            v75 = *(v58 + 6) - 11;
            if (v75 < 0x38)
            {
              goto LABEL_127;
            }
          }

          goto LABEL_130;
        }

        v48 = 4;
        v53 = v117;
        if (!v117)
        {
          goto LABEL_184;
        }
      }

LABEL_175:
      v89 = v118;
      v90 = v53;
      if (v118 != v53)
      {
        do
        {
          v91 = *(v89 - 26);
          if (v91)
          {
            *(v89 - 25) = v91;
            operator delete(v91);
          }

          v92 = v89 - 248;
          v93 = *(v89 - 31);
          if (v93)
          {
            *(v89 - 30) = v93;
            operator delete(v93);
          }

          v89 -= 248;
        }

        while (v92 != v53);
        v90 = v117;
        v31 = v97;
      }

      v118 = v53;
      operator delete(v90);
LABEL_184:
      v94 = v122;
      if (v122 && !atomic_fetch_add(&v122->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v94->__on_zero_shared)(v94);
        std::__shared_weak_count::__release_weak(v94);
        result = sub_5941F8(v123);
        if ((v48 | 4) != 4)
        {
          return result;
        }
      }

      else
      {
        result = sub_5941F8(v123);
        if ((v48 | 4) != 4)
        {
          return result;
        }
      }

LABEL_53:
      if (v6 <= v31)
      {
        return result;
      }
    }

    v41 = v33[1];
    if (v41 && (v42 = (v41 - *v41), *v42 >= 0x11u) && (v43 = v42[8]) != 0)
    {
      v44 = *(v41 + v43);
      if (v40 < 0x9B || (v44 & 4) != 0)
      {
        v46 = (v44 >> 2) & 1;
        goto LABEL_78;
      }
    }

    else if (v40 < 0x9B)
    {
LABEL_76:
      LOBYTE(v46) = 0;
      goto LABEL_78;
    }

    v47 = *(v39 + 77);
    if (v47)
    {
      v46 = (v38[v47 + 3] >> 2) & 1;
      goto LABEL_78;
    }

    goto LABEL_76;
  }

  return result;
}

void sub_81464C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, char a40)
{
  sub_5ECF34(&a34);
  sub_1F1A8(&a38);
  sub_5941F8(&a40);
  _Unwind_Resume(a1);
}

uint64_t sub_8146D0(uint64_t result, void *a2, unint64_t a3)
{
  if (a2[1290] != a2[1291])
  {
    v5 = result;
    result = sub_91BBD0(result + 2608, a2, a3);
    if (result != -1)
    {
      v7 = v6;
      if (v6 != -1)
      {
        v8 = result;
        result = sub_578320(a2 + 138, a3);
        if (v8 <= v7)
        {
          v9 = result;
          do
          {
            v10 = sub_814868(a2 + 1290, v8);
            result = sub_6834F4(v10);
            if (!result || *(v10 + 4))
            {
              goto LABEL_9;
            }

            v12 = (v10 + 8);
            v11 = *(v10 + 8);
            if (v11 < v9[5] || v11 >= v9[2])
            {
              goto LABEL_9;
            }

            v18 = sub_91BE70(v5 + 2608, a2, a3, v10);
            if (sub_684314((v9 + 258)))
            {
              v14 = sub_683C48(v10, (v9 + 261));
              v17 = v14;
              v16 = v8;
              v15 = v9[259];
              if (v15 < v9[260])
              {
                goto LABEL_20;
              }
            }

            else
            {
              v14 = 0;
              v17 = 0;
              v16 = v8;
              v15 = v9[259];
              if (v15 < v9[260])
              {
LABEL_20:
                sub_683F20(v15, &v18, *v12, v8, v14);
                result = v15 + 432;
                v9[259] = v15 + 432;
                goto LABEL_8;
              }
            }

            result = sub_8206C4(v9 + 258, &v18, v12, &v16, &v17);
LABEL_8:
            v9[259] = result;
LABEL_9:
            ++v8;
          }

          while (v8 <= v7);
        }
      }
    }
  }

  return result;
}

uint64_t sub_814868(void *a1, unint64_t a2)
{
  if (0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3));
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 104 * a2;
}

void sub_8149A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

void sub_814A84(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_578320((a2 + 1104), a3);
  if (!*(v6 + 1008))
  {
    return;
  }

  v7 = v6;
  v8 = *(a1 + 6560);
  if (v8[1414] == 1)
  {
    v9 = *(v6 + 2264) & (*(v6 + 2275) ^ 1 | v8[1056]);
    if (v8[1454] != 1)
    {
LABEL_9:
      if ((v9 & 1) == 0)
      {
        return;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v9 = 0;
    if (v8[1454] != 1)
    {
      goto LABEL_9;
    }
  }

  if (*(a1 + 2457) != 1)
  {
    goto LABEL_9;
  }

  if (((v9 | *(v6 + 2312)) & 1) == 0)
  {
    return;
  }

LABEL_10:
  sub_814CF8(a1, a2, a3);
  if ((v9 & 1) != 0 && *(v7 + 2274) == 1)
  {
    sub_91B428(a1 + 2608, a2, v7, &v20);
    if (sub_6834F4(&v20))
    {
      DWORD1(v20) = 1;
      v10 = *(a2 + 10328);
      if (v10 >= *(a2 + 10336))
      {
        v14 = sub_820B08((a2 + 10320), &v20);
      }

      else
      {
        v11 = v21;
        *v10 = v20;
        *(v10 + 16) = v11;
        *(v10 + 32) = 0;
        *(v10 + 40) = 0;
        *(v10 + 48) = 0;
        sub_5F3370(v10 + 32, v22, v23, 0xD37A6F4DE9BD37A7 * ((v23 - v22) >> 3));
        v12 = v24;
        v13 = v25[0];
        *(v10 + 81) = *(v25 + 9);
        *(v10 + 72) = v13;
        *(v10 + 56) = v12;
        v14 = v10 + 104;
        *(a2 + 10328) = v10 + 104;
      }

      *(a2 + 10328) = v14;
      v15 = v21;
      *(v7 + 2088) = v20;
      *(v7 + 2104) = v15;
      if ((v7 + 2088) != &v20)
      {
        sub_5FD2CC((v7 + 2120), v22, v23, 0xD37A6F4DE9BD37A7 * ((v23 - v22) >> 3));
      }

      *(v7 + 2144) = v24;
      *(v7 + 2160) = v25[0];
      *(v7 + 2169) = *(v25 + 9);
    }

    v26 = &v22;
    sub_5ECC44(&v26);
  }

  v16 = *(a2 + 10320);
  v17 = *(a2 + 10328);
  v18 = 126 - 2 * __clz(0x4EC4EC4EC4EC4EC5 * (&v17[-v16] >> 3));
  if (v17 == v16)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  sub_823128(v16, v17, &v20, v19, 1);
}

void sub_814CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *(v13 + 10328) = v14;
  *(v15 - 56) = &a13;
  sub_5ECC44((v15 - 56));
  _Unwind_Resume(a1);
}

void sub_814CF8(uint64_t a1, void *a2, unint64_t a3)
{
  v4 = a2;
  v6 = sub_578320(a2 + 138, a3);
  if (*(v6 + 384) == 5)
  {
    v7 = v6;
    sub_8152DC(a1, v4, a3, v53);
    v8 = v53[1];
    v9 = v53[0];
    if (v53[0] == v53[1])
    {
LABEL_74:
      *&v46 = v53;
      sub_5ECC44(&v46);
      return;
    }

    v52[0] = v4;
    v52[1] = a1;
    *&v43 = v52;
    if (v53[1] - v53[0] < 1)
    {
      v14 = 0;
      v10 = 0;
    }

    else
    {
      v10 = 0xD37A6F4DE9BD37A7 * ((v53[1] - v53[0]) >> 3);
      while (1)
      {
        v11 = operator new(184 * v10, &std::nothrow);
        if (v11)
        {
          break;
        }

        v12 = v10 >> 1;
        v13 = v10 > 1;
        v10 >>= 1;
        if (!v13)
        {
          v14 = 0;
          v10 = v12;
          goto LABEL_10;
        }
      }

      v14 = v11;
    }

LABEL_10:
    sub_825920(v9, v8, &v43, 0xD37A6F4DE9BD37A7 * ((v8 - v9) >> 3), v14, v10);
    if (v14)
    {
      operator delete(v14);
    }

    v15 = v53[1];
    v16 = v53[0];
    if (v53[0] == v53[1] || v53[0] + 184 == v53[1])
    {
      goto LABEL_14;
    }

    while (1)
    {
      if (v16[10] == v16[56] && v16[11] == v16[57] && v16[12] == v16[58])
      {
        v24 = v16[4];
        if (v24 != 4 && v24 == v16[50])
        {
          break;
        }
      }

      v23 = v16 + 92;
      v16 += 46;
      if (v23 == v53[1])
      {
        goto LABEL_14;
      }
    }

    if (v16 == v53[1])
    {
LABEL_14:
      v17 = v53[1];
    }

    else
    {
      v26 = (v16 + 92);
      if (v16 + 92 != v53[1])
      {
        do
        {
          if (v16[10] != *(v26 + 10) || v16[11] != *(v26 + 11) || v16[12] != *(v26 + 12) || ((v27 = v16[4], v27 != 4) ? (v28 = v27 == *(v26 + 4)) : (v28 = 0), !v28))
          {
            v16 += 46;
            sub_826CE0(v16, v26);
          }

          v26 = (v26 + 184);
        }

        while (v26 != v15);
        v15 = v53[1];
      }

      v17 = (v16 + 46);
    }

    sub_827A44(v53, v17, v15);
    v18 = *v53;
    if (v53[1] - v53[0] < 1)
    {
      v22 = 0;
      v19 = 0;
    }

    else
    {
      v19 = 0xD37A6F4DE9BD37A7 * ((v53[1] - v53[0]) >> 3);
      while (1)
      {
        v20 = operator new(184 * v19, &std::nothrow);
        if (v20)
        {
          break;
        }

        v21 = v19 >> 1;
        v13 = v19 > 1;
        v19 >>= 1;
        if (!v13)
        {
          v22 = 0;
          v19 = v21;
          goto LABEL_44;
        }
      }

      v22 = v20;
    }

LABEL_44:
    sub_827B4C(v18, *(&v18 + 1), &v43, 0xD37A6F4DE9BD37A7 * ((*(&v18 + 1) - v18) >> 3), v22, v19);
    if (v22)
    {
      operator delete(v22);
    }

    v29 = sub_67A810(a1 + 40, *(v7 + 2057));
    *&v50[8] = 0;
    v51 = v29;
    *v50 = (1000 * a3);
    LOBYTE(v46) = 1;
    DWORD1(v46) = 0;
    *(&v46 + 1) = -1;
    *&v47 = -1;
    *(&v47 + 1) = 0x7FFFFFFFFFFFFFFFLL;
    v42 = a3;
    *__p = 0u;
    memset(v49, 0, 40);
    *&v49[40] = 0xBFF0000000000000;
    v49[48] = 0;
    v31 = v53[1];
    v30 = v53[0];
    if (v53[0] == v53[1])
    {
LABEL_73:
      sub_91BCB8(a1 + 2608, v42, v4, &v46, v50, (a1 + 6592));
      *&v43 = __p;
      sub_5ECC44(&v43);
      goto LABEL_74;
    }

    while (1)
    {
      v32 = DWORD1(v47) == -1 && DWORD2(v47) == -1;
      v33 = v32 ? 0 : sub_683148(v30, &v47 + 1);
      *&v50[4] = v33;
      if (!sub_683874(&v46, v30, &v51, &v50[4]))
      {
        break;
      }

      if (__p[0] == __p[1])
      {
        v34 = *v30;
LABEL_71:
        DWORD1(v46) = v34;
      }

      sub_6831CC(&v46, v30);
      v30 += 46;
      if (v30 == v31)
      {
        goto LABEL_73;
      }
    }

    sub_91BCB8(a1 + 2608, v42, v4, &v46, v50, (a1 + 6592));
    *&v45[64] = 0;
    *&v43 = 1;
    *(&v44 + 1) = 0x7FFFFFFFFFFFFFFFLL;
    *(&v43 + 1) = -1;
    *&v44 = -1;
    memset(v45, 0, 56);
    *&v45[56] = 0xBFF0000000000000;
    LODWORD(v47) = -1;
    v46 = v43;
    HIDWORD(v47) = 0x7FFFFFFF;
    *(&v47 + 4) = *(&v44 + 4);
    v35 = __p[0];
    if (!__p[0])
    {
      v41 = 0;
      v40 = 0uLL;
      goto LABEL_70;
    }

    v36 = v4;
    v37 = __p[1];
    v38 = __p[0];
    if (__p[1] == __p[0])
    {
LABEL_68:
      __p[1] = v35;
      operator delete(v38);
      v40 = *v45;
      v41 = *&v45[16];
      v4 = v36;
LABEL_70:
      *__p = v40;
      *v49 = v41;
      memset(v45, 0, 24);
      *&v49[8] = *&v45[24];
      *&v49[24] = *&v45[40];
      *&v49[33] = *&v45[49];
      v54[0] = v45;
      sub_5ECC44(v54);
      v34 = 0;
      goto LABEL_71;
    }

    while (1)
    {
      if (*(v37 - 9) < 0)
      {
        operator delete(*(v37 - 4));
        if ((*(v37 - 41) & 0x80000000) == 0)
        {
LABEL_62:
          v39 = *(v37 - 20);
          if (v39 == -1)
          {
            goto LABEL_59;
          }

LABEL_66:
          (off_266D410[v39])(v54, v37 - 14);
          goto LABEL_59;
        }
      }

      else if ((*(v37 - 41) & 0x80000000) == 0)
      {
        goto LABEL_62;
      }

      operator delete(*(v37 - 8));
      v39 = *(v37 - 20);
      if (v39 != -1)
      {
        goto LABEL_66;
      }

LABEL_59:
      *(v37 - 20) = -1;
      v37 -= 23;
      if (v37 == v35)
      {
        v38 = __p[0];
        goto LABEL_68;
      }
    }
  }
}

void sub_815258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void **a27)
{
  a13 = a10;
  sub_5ECC44(&a13);
  a27 = (v27 - 128);
  sub_5ECC44(&a27);
  _Unwind_Resume(a1);
}

void sub_8152DC(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v7 = sub_50EA30(a2 + 138, a3);
  v8 = sub_919900(a1 + 2608, v7, 0);
  v86 = v8;
  v87 = WORD2(v8);
  if ((v8 & 0x100) != 0 || (v8 & 0x10000) != 0 || (v8 & 0x1000000) != 0)
  {
    *(a1 + 6600) |= BYTE3(v8);
    *(a1 + 6601) |= BYTE2(v8);
    __p[0] = 0;
    __p[1] = 0;
    v85 = 0;
    v9 = *(v7 + 16);
    v81 = (v7 + 16);
    if (v9 < *(v7 + 40))
    {
LABEL_5:
      *&v82 = __p;
      sub_5ECC44(&v82);
      return;
    }

    v10 = v9;
    v80 = a1;
    while (1)
    {
      v12 = a4[1];
      if (*a4 != v12 && *(v12 - 176) == v10)
      {
        goto LABEL_9;
      }

      if (v10 == *v81)
      {
        if (sub_919660(a1 + 2608, a2, v7))
        {
          sub_91AEC8((a1 + 2608), a2, v81, (v7 + 80), 0, &v86, &v82);
          v13 = __p[0];
          if (!__p[0])
          {
LABEL_65:
            *__p = v82;
            v85 = v83;
            v83 = 0;
            v82 = 0uLL;
            v88 = &v82;
            sub_5ECC44(&v88);
            v31 = __p[0];
            v32 = __p[1];
            if (__p[0] != __p[1])
            {
              v33 = __p[1] - __p[0] - 184;
              v34 = __p[0];
              if (v33 < 0xB8)
              {
                goto LABEL_154;
              }

              v35 = v33 / 0xB8 + 1;
              v34 = __p[0] + 184 * (v35 & 0x3FFFFFFFFFFFFFELL);
              v36 = __p[0];
              v37 = v35 & 0x3FFFFFFFFFFFFFELL;
              do
              {
                *v36 = 2;
                v36[46] = 2;
                v36 += 92;
                v37 -= 2;
              }

              while (v37);
              if (v35 != (v35 & 0x3FFFFFFFFFFFFFELL))
              {
LABEL_154:
                do
                {
                  *v34 = 2;
                  v34 += 184;
                }

                while (v34 != v32);
              }
            }

LABEL_71:
            sub_829604(a4, a4[1], v31, v32, 0xD37A6F4DE9BD37A7 * ((v32 - v31) >> 3));
LABEL_72:
            if (__p[0] != __p[1])
            {
              goto LABEL_9;
            }

            sub_91AA70((a1 + 2608), a2, a3, *v81, &v86, &v82);
            v38 = __p[0];
            if (!__p[0])
            {
              goto LABEL_86;
            }

            v39 = __p[1];
            v40 = __p[0];
            if (__p[1] == __p[0])
            {
LABEL_85:
              __p[1] = v38;
              operator delete(v40);
              a1 = v80;
LABEL_86:
              *__p = v82;
              v85 = v83;
              v83 = 0;
              v82 = 0uLL;
              v88 = &v82;
              sub_5ECC44(&v88);
              v42 = __p[0];
              v43 = __p[1];
              if (__p[0] != __p[1])
              {
                v44 = __p[1] - __p[0] - 184;
                v45 = __p[0];
                if (v44 < 0xB8)
                {
                  goto LABEL_155;
                }

                v46 = v44 / 0xB8 + 1;
                v45 = __p[0] + 184 * (v46 & 0x3FFFFFFFFFFFFFELL);
                v47 = __p[0];
                v48 = v46 & 0x3FFFFFFFFFFFFFELL;
                do
                {
                  *v47 = 1;
                  v47[46] = 1;
                  v47 += 92;
                  v48 -= 2;
                }

                while (v48);
                if (v46 != (v46 & 0x3FFFFFFFFFFFFFELL))
                {
LABEL_155:
                  do
                  {
                    *v45 = 1;
                    v45 += 46;
                  }

                  while (v45 != v43);
                }
              }

              sub_829604(a4, a4[1], v42, v43, 0xD37A6F4DE9BD37A7 * ((v43 - v42) >> 3));
              if (__p[0] != __p[1])
              {
                goto LABEL_9;
              }

              sub_815EB8(a1, a2, v7, v10, &v82);
              v54 = __p[0];
              if (!__p[0])
              {
                goto LABEL_116;
              }

              v55 = __p[1];
              v56 = __p[0];
              if (__p[1] == __p[0])
              {
LABEL_115:
                __p[1] = v54;
                operator delete(v56);
                a1 = v80;
LABEL_116:
                *__p = v82;
                v85 = v83;
                v83 = 0;
                v82 = 0uLL;
                v88 = &v82;
                sub_5ECC44(&v88);
                v58 = __p[0];
                v59 = __p[1];
                if (__p[0] != __p[1])
                {
                  v60 = __p[1] - __p[0] - 184;
                  v61 = __p[0];
                  if (v60 < 0xB8)
                  {
                    goto LABEL_156;
                  }

                  v62 = v60 / 0xB8 + 1;
                  v61 = __p[0] + 184 * (v62 & 0x3FFFFFFFFFFFFFELL);
                  v63 = __p[0];
                  v64 = v62 & 0x3FFFFFFFFFFFFFELL;
                  do
                  {
                    *v63 = 1;
                    v63[46] = 1;
                    v63 += 92;
                    v64 -= 2;
                  }

                  while (v64);
                  if (v62 != (v62 & 0x3FFFFFFFFFFFFFELL))
                  {
LABEL_156:
                    do
                    {
                      *v61 = 1;
                      v61 += 46;
                    }

                    while (v61 != v59);
                  }
                }

                sub_829604(a4, a4[1], v58, v59, 0xD37A6F4DE9BD37A7 * ((v59 - v58) >> 3));
                if (__p[0] != __p[1])
                {
                  goto LABEL_9;
                }

                sub_81621C(a1, a2, v7, v10, &v82);
                v65 = __p[0];
                if (!__p[0])
                {
                  goto LABEL_136;
                }

                v66 = __p[1];
                v67 = __p[0];
                if (__p[1] == __p[0])
                {
LABEL_135:
                  __p[1] = v65;
                  operator delete(v67);
                  a1 = v80;
LABEL_136:
                  *__p = v82;
                  v85 = v83;
                  v83 = 0;
                  v82 = 0uLL;
                  v88 = &v82;
                  sub_5ECC44(&v88);
                  v25 = __p[0];
                  v26 = __p[1];
                  if (__p[0] != __p[1])
                  {
                    v69 = __p[1] - __p[0] - 184;
                    v70 = __p[0];
                    if (v69 < 0xB8)
                    {
                      goto LABEL_157;
                    }

                    v71 = v69 / 0xB8 + 1;
                    v70 = __p[0] + 184 * (v71 & 0x3FFFFFFFFFFFFFELL);
                    v72 = __p[0];
                    v73 = v71 & 0x3FFFFFFFFFFFFFELL;
                    do
                    {
                      *v72 = 0;
                      v72[46] = 0;
                      v72 += 92;
                      v73 -= 2;
                    }

                    while (v73);
                    if (v71 != (v71 & 0x3FFFFFFFFFFFFFELL))
                    {
LABEL_157:
                      do
                      {
                        *v70 = 0;
                        v70 += 184;
                      }

                      while (v70 != v26);
                    }
                  }

                  goto LABEL_8;
                }

                while (1)
                {
                  if (*(v66 - 9) < 0)
                  {
                    operator delete(*(v66 - 4));
                    if ((*(v66 - 41) & 0x80000000) == 0)
                    {
LABEL_129:
                      v68 = *(v66 - 20);
                      if (v68 == -1)
                      {
                        goto LABEL_126;
                      }

LABEL_133:
                      (off_266D410[v68])(&v88, v66 - 14);
                      goto LABEL_126;
                    }
                  }

                  else if ((*(v66 - 41) & 0x80000000) == 0)
                  {
                    goto LABEL_129;
                  }

                  operator delete(*(v66 - 8));
                  v68 = *(v66 - 20);
                  if (v68 != -1)
                  {
                    goto LABEL_133;
                  }

LABEL_126:
                  *(v66 - 20) = -1;
                  v66 -= 23;
                  if (v66 == v65)
                  {
                    v67 = __p[0];
                    goto LABEL_135;
                  }
                }
              }

              while (1)
              {
                if (*(v55 - 9) < 0)
                {
                  operator delete(*(v55 - 4));
                  if ((*(v55 - 41) & 0x80000000) == 0)
                  {
LABEL_109:
                    v57 = *(v55 - 20);
                    if (v57 == -1)
                    {
                      goto LABEL_106;
                    }

LABEL_113:
                    (off_266D410[v57])(&v88, v55 - 14);
                    goto LABEL_106;
                  }
                }

                else if ((*(v55 - 41) & 0x80000000) == 0)
                {
                  goto LABEL_109;
                }

                operator delete(*(v55 - 8));
                v57 = *(v55 - 20);
                if (v57 != -1)
                {
                  goto LABEL_113;
                }

LABEL_106:
                *(v55 - 20) = -1;
                v55 -= 23;
                if (v55 == v54)
                {
                  v56 = __p[0];
                  goto LABEL_115;
                }
              }
            }

            while (1)
            {
              if (*(v39 - 9) < 0)
              {
                operator delete(*(v39 - 4));
                if ((*(v39 - 41) & 0x80000000) == 0)
                {
LABEL_79:
                  v41 = *(v39 - 20);
                  if (v41 == -1)
                  {
                    goto LABEL_76;
                  }

LABEL_83:
                  (off_266D410[v41])(&v88, v39 - 14);
                  goto LABEL_76;
                }
              }

              else if ((*(v39 - 41) & 0x80000000) == 0)
              {
                goto LABEL_79;
              }

              operator delete(*(v39 - 8));
              v41 = *(v39 - 20);
              if (v41 != -1)
              {
                goto LABEL_83;
              }

LABEL_76:
              *(v39 - 20) = -1;
              v39 -= 23;
              if (v39 == v38)
              {
                v40 = __p[0];
                goto LABEL_85;
              }
            }
          }

          v14 = __p[1];
          v15 = __p[0];
          if (__p[1] == __p[0])
          {
LABEL_64:
            __p[1] = v13;
            operator delete(v15);
            a1 = v80;
            goto LABEL_65;
          }

          while (1)
          {
            if (*(v14 - 9) < 0)
            {
              operator delete(*(v14 - 4));
              if ((*(v14 - 41) & 0x80000000) == 0)
              {
LABEL_20:
                v16 = *(v14 - 20);
                if (v16 == -1)
                {
                  goto LABEL_17;
                }

LABEL_24:
                (off_266D410[v16])(&v88, v14 - 14);
                goto LABEL_17;
              }
            }

            else if ((*(v14 - 41) & 0x80000000) == 0)
            {
              goto LABEL_20;
            }

            operator delete(*(v14 - 8));
            v16 = *(v14 - 20);
            if (v16 != -1)
            {
              goto LABEL_24;
            }

LABEL_17:
            *(v14 - 20) = -1;
            v14 -= 23;
            if (v14 == v13)
            {
              v15 = __p[0];
              goto LABEL_64;
            }
          }
        }

        if (v10 + 1 >= sub_4D1DC0(a2) || !sub_919700((a1 + 2608), a2, v7, 0))
        {
          goto LABEL_72;
        }

        sub_91AEC8((a1 + 2608), a2, v81, v81, 1, &v86, &v82);
        v21 = __p[0];
        if (!__p[0])
        {
LABEL_145:
          *__p = v82;
          v85 = v83;
          v83 = 0;
          v82 = 0uLL;
          v88 = &v82;
          sub_5ECC44(&v88);
          v31 = __p[0];
          v32 = __p[1];
          if (__p[0] != __p[1])
          {
            v74 = __p[1] - __p[0] - 184;
            v75 = __p[0];
            if (v74 < 0xB8)
            {
              goto LABEL_158;
            }

            v76 = v74 / 0xB8 + 1;
            v75 = __p[0] + 184 * (v76 & 0x3FFFFFFFFFFFFFELL);
            v77 = __p[0];
            v78 = v76 & 0x3FFFFFFFFFFFFFELL;
            do
            {
              *v77 = 2;
              v77[46] = 2;
              v77 += 92;
              v78 -= 2;
            }

            while (v78);
            if (v76 != (v76 & 0x3FFFFFFFFFFFFFELL))
            {
LABEL_158:
              do
              {
                *v75 = 2;
                v75 += 184;
              }

              while (v75 != v32);
            }
          }

          goto LABEL_71;
        }

        v22 = __p[1];
        v23 = __p[0];
        if (__p[1] == __p[0])
        {
LABEL_144:
          __p[1] = v21;
          operator delete(v23);
          a1 = v80;
          goto LABEL_145;
        }

        while (1)
        {
          if (*(v22 - 9) < 0)
          {
            operator delete(*(v22 - 4));
            if ((*(v22 - 41) & 0x80000000) == 0)
            {
LABEL_44:
              v24 = *(v22 - 20);
              if (v24 == -1)
              {
                goto LABEL_41;
              }

LABEL_48:
              (off_266D410[v24])(&v88, v22 - 14);
              goto LABEL_41;
            }
          }

          else if ((*(v22 - 41) & 0x80000000) == 0)
          {
            goto LABEL_44;
          }

          operator delete(*(v22 - 8));
          v24 = *(v22 - 20);
          if (v24 != -1)
          {
            goto LABEL_48;
          }

LABEL_41:
          *(v22 - 20) = -1;
          v22 -= 23;
          if (v22 == v21)
          {
            v23 = __p[0];
            goto LABEL_144;
          }
        }
      }

      sub_815EB8(a1, a2, v7, v10, &v82);
      v17 = __p[0];
      if (__p[0])
      {
        break;
      }

LABEL_51:
      *__p = v82;
      v85 = v83;
      v83 = 0;
      v82 = 0uLL;
      v88 = &v82;
      sub_5ECC44(&v88);
      v25 = __p[0];
      v26 = __p[1];
      if (__p[0] != __p[1])
      {
LABEL_97:
        v49 = v26 - v25 - 184;
        v50 = v25;
        if (v49 < 0xB8)
        {
          goto LABEL_159;
        }

        v51 = v49 / 0xB8 + 1;
        v50 = &v25[184 * (v51 & 0x3FFFFFFFFFFFFFELL)];
        v52 = v25;
        v53 = v51 & 0x3FFFFFFFFFFFFFELL;
        do
        {
          *v52 = 0;
          *(v52 + 46) = 0;
          v52 += 368;
          v53 -= 2;
        }

        while (v53);
        if (v51 != (v51 & 0x3FFFFFFFFFFFFFELL))
        {
LABEL_159:
          do
          {
            *v50 = 0;
            v50 += 184;
          }

          while (v50 != v26);
        }

        goto LABEL_8;
      }

      sub_81621C(a1, a2, v7, v10, &v82);
      v27 = __p[0];
      if (__p[0])
      {
        v28 = __p[1];
        v29 = __p[0];
        if (__p[1] == __p[0])
        {
LABEL_95:
          __p[1] = v27;
          operator delete(v29);
          a1 = v80;
          goto LABEL_96;
        }

        while (1)
        {
          if (*(v28 - 9) < 0)
          {
            operator delete(*(v28 - 4));
            if ((*(v28 - 41) & 0x80000000) == 0)
            {
LABEL_58:
              v30 = *(v28 - 20);
              if (v30 == -1)
              {
                goto LABEL_55;
              }

LABEL_62:
              (off_266D410[v30])(&v88, v28 - 14);
              goto LABEL_55;
            }
          }

          else if ((*(v28 - 41) & 0x80000000) == 0)
          {
            goto LABEL_58;
          }

          operator delete(*(v28 - 8));
          v30 = *(v28 - 20);
          if (v30 != -1)
          {
            goto LABEL_62;
          }

LABEL_55:
          *(v28 - 20) = -1;
          v28 -= 23;
          if (v28 == v27)
          {
            v29 = __p[0];
            goto LABEL_95;
          }
        }
      }

LABEL_96:
      *__p = v82;
      v85 = v83;
      v83 = 0;
      v82 = 0uLL;
      v88 = &v82;
      sub_5ECC44(&v88);
      v25 = __p[0];
      v26 = __p[1];
      if (__p[0] != __p[1])
      {
        goto LABEL_97;
      }

LABEL_8:
      sub_829604(a4, a4[1], v25, v26, 0xD37A6F4DE9BD37A7 * ((v26 - v25) >> 3));
LABEL_9:
      if (v10-- <= *(v7 + 40))
      {
        goto LABEL_5;
      }
    }

    v18 = __p[1];
    v19 = __p[0];
    if (__p[1] == __p[0])
    {
LABEL_50:
      __p[1] = v17;
      operator delete(v19);
      a1 = v80;
      goto LABEL_51;
    }

    while (1)
    {
      if (*(v18 - 9) < 0)
      {
        operator delete(*(v18 - 4));
        if ((*(v18 - 41) & 0x80000000) == 0)
        {
LABEL_31:
          v20 = *(v18 - 20);
          if (v20 == -1)
          {
            goto LABEL_28;
          }

LABEL_35:
          (off_266D410[v20])(&v88, v18 - 14);
          goto LABEL_28;
        }
      }

      else if ((*(v18 - 41) & 0x80000000) == 0)
      {
        goto LABEL_31;
      }

      operator delete(*(v18 - 8));
      v20 = *(v18 - 20);
      if (v20 != -1)
      {
        goto LABEL_35;
      }

LABEL_28:
      *(v18 - 20) = -1;
      v18 -= 23;
      if (v18 == v17)
      {
        v19 = __p[0];
        goto LABEL_50;
      }
    }
  }
}

void sub_815E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(v6, va1);
  sub_5ECC44(va);
  sub_5ECC44(va1);
  _Unwind_Resume(a1);
}

void sub_815EB8(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  v10 = sub_919900(a1 + 2608, a3, 0);
  v40 = v10;
  v41 = WORD2(v10);
  v11 = sub_4D1F50(a2, a4);
  v12 = *(a1 + 16);
  v13 = *(v11 + 32);
  v14 = sub_2B51D8(v12, v13 & 0xFFFFFFFFFFFFLL);
  if (*(v12 + 7772) == 1)
  {
    v15 = sub_30C50C(v12 + 3896, v13, 0);
    v16 = &v15[-*v15];
    if (*v16 < 5u)
    {
      v17 = 0;
    }

    else
    {
      v17 = *(v16 + 2);
      if (v17)
      {
        v17 += &v15[*&v15[v17]];
      }
    }

    v18 = (v17 + ((v13 >> 30) & 0x3FFFC) + 4 + *(v17 + ((v13 >> 30) & 0x3FFFC) + 4));
  }

  else
  {
    v18 = 0;
  }

  v38[0] = v14;
  v38[1] = v18;
  v38[2] = sub_31D7E8(v12, v13 & 0xFFFFFFFFFFFFLL, 1);
  v38[3] = v19;
  v39 = v13 & 0xFFFFFFFFFFFFFFLL;
  *&v30 = a4;
  sub_9199F4(a1 + 2608, v38, &v40, &v30, &v32);
  sub_820E54(a5);
  *a5 = v32;
  *(a5 + 16) = v33;
  v33 = 0;
  v32 = 0uLL;
  __p = &v32;
  sub_5ECC44(&__p);
  if (*a5 == *(a5 + 8) && (*(a1 + 2465) & 1) != 0)
  {
    sub_31E068(*(a1 + 16), v39 | (WORD2(v39) << 32), 8, &__p);
    if (__p != v37)
    {
      v20 = *(a1 + 16);
      v21 = *(v37 - 12);
      v22 = sub_2B51D8(v20, v21 & 0xFFFFFFFFFFFFLL);
      if (*(v20 + 7772) == 1)
      {
        v23 = sub_30C50C(v20 + 3896, v21, 0);
        v24 = &v23[-*v23];
        if (*v24 < 5u)
        {
          v25 = 0;
        }

        else
        {
          v25 = *(v24 + 2);
          if (v25)
          {
            v25 += &v23[*&v23[v25]];
          }
        }

        v26 = v25 + ((v21 >> 30) & 0x3FFFC) + 4 + *(v25 + ((v21 >> 30) & 0x3FFFC) + 4);
      }

      else
      {
        v26 = 0;
      }

      v27 = sub_31D7E8(v20, v21 & 0xFFFFFFFFFFFFLL, 1);
      *&v32 = v22;
      *(&v32 + 1) = v26;
      v33 = v27;
      v34 = v28;
      v35 = v21;
      v29 = a4;
      sub_9199F4(a1 + 2608, &v32, &v40, &v29, &v30);
      sub_820E54(a5);
      *a5 = v30;
      *(a5 + 16) = v31;
      v31 = 0;
      v30 = 0uLL;
      v42 = &v30;
      sub_5ECC44(&v42);
    }

    if (*a5 == *(a5 + 8))
    {
      sub_816880(a1, a2, a3, a4, &v32);
      sub_820E54(a5);
      *a5 = v32;
      *(a5 + 16) = v33;
      v33 = 0;
      v32 = 0uLL;
      *&v30 = &v32;
      sub_5ECC44(&v30);
    }

    if (__p)
    {
      v37 = __p;
      operator delete(__p);
    }
  }
}

void sub_8161C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    a22 = __p;
    operator delete(__p);
    sub_5ECC44(&a15);
    _Unwind_Resume(a1);
  }

  sub_5ECC44(&a15);
  _Unwind_Resume(a1);
}

void sub_81621C(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = a1;
  v10 = sub_919900(a1 + 2608, a3, 1);
  v68 = v10;
  v69 = WORD2(v10);
  if ((v10 & 0x1010100) == 0)
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    return;
  }

  v11 = sub_919900(v8 + 2608, a3, 0);
  v66 = v11;
  v67 = WORD2(v11);
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  v52 = a5;
  v12 = sub_4D1F50(a2, a4);
  v13 = *(v8 + 16);
  v14 = v12[4];
  v15 = sub_2B51D8(v13, v14 & 0xFFFFFFFFFFFFLL);
  if (*(v13 + 7772) == 1)
  {
    v16 = sub_30C50C(v13 + 3896, v14, 0);
    v17 = &v16[-*v16];
    if (*v17 < 5u)
    {
      v18 = 0;
    }

    else
    {
      v18 = *(v17 + 2);
      if (v18)
      {
        v18 += &v16[*&v16[v18]];
      }
    }

    v19 = v18 + ((v14 >> 30) & 0x3FFFC) + 4 + *(v18 + ((v14 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v19 = 0;
  }

  *&v63 = v15;
  *(&v63 + 1) = v19;
  *&v64 = sub_31D7E8(v13, v14 & 0xFFFFFFFFFFFFLL, 1);
  *(&v64 + 1) = v20;
  v65 = v14 & 0xFFFFFFFFFFFFFFLL;
  BYTE6(v65) = (v14 & 0xFF000000000000) == 0;
  __p[0] = a4;
  sub_9199F4(v8 + 2608, &v63, &v68, __p, &v54);
  sub_820E54(a5);
  *a5 = v54;
  a5[2] = v55;
  *&v55 = 0;
  v54 = 0uLL;
  v61 = &v54;
  sub_5ECC44(&v61);
  v21 = *a5;
  v22 = a5[1];
  if (*a5 == v22)
  {
    goto LABEL_17;
  }

  do
  {
    while (1)
    {
      v23 = (*v12 - **v12);
      if (*v23 >= 9u)
      {
        v24 = v23[4];
        if (v24)
        {
          break;
        }
      }

      v21[4] = 0;
      v21 += 23;
      if (v21 == v22)
      {
        goto LABEL_16;
      }
    }

    v21[4] = *(*v12 + v24);
    v21 += 23;
  }

  while (v21 != v22);
LABEL_16:
  if (*a5 == a5[1])
  {
LABEL_17:
    if (*(v8 + 2465))
    {
      sub_31E068(*(v8 + 16), v14 & 0xFFFFFFFFFFFFLL, 8, &v61);
      if (v62 == v61)
      {
LABEL_57:
        v46 = *a5;
        v47 = a5[1];
        while (v46 != v47)
        {
          v49 = (*v12 - **v12);
          if (*v49 >= 9u && (v50 = v49[4]) != 0)
          {
            v48 = *(*v12 + v50);
          }

          else
          {
            v48 = 0;
          }

          v46[4] = v48;
          v46 += 23;
        }

        if (v61)
        {
          v62 = v61;
          operator delete(v61);
        }

        return;
      }

      v25 = 0;
      v51 = 0xAAAAAAAAAAAAAAABLL * ((v62 - v61) >> 2);
      while (1)
      {
        v26 = v8;
        v27 = *(v8 + 16);
        v28 = *(v61 + 12 * v25);
        v29 = sub_2B51D8(v27, v28 & 0xFFFFFFFFFFFFLL);
        if (*(v27 + 7772) == 1)
        {
          v30 = sub_30C50C(v27 + 3896, v28, 0);
          v31 = &v30[-*v30];
          if (*v31 < 5u)
          {
            v32 = 0;
          }

          else
          {
            v32 = *(v31 + 2);
            if (v32)
            {
              v32 += &v30[*&v30[v32]];
            }
          }

          v33 = v32 + ((v28 >> 30) & 0x3FFFC) + 4 + *(v32 + ((v28 >> 30) & 0x3FFFC) + 4);
        }

        else
        {
          v33 = 0;
        }

        v34 = sub_31D7E8(v27, v28 & 0xFFFFFFFFFFFFLL, 1);
        *&v63 = v29;
        *(&v63 + 1) = v33;
        *&v64 = v34;
        *(&v64 + 1) = v35;
        v65 = v28;
        __p[0] = 0;
        __p[1] = 0;
        v60 = 0;
        v8 = v26;
        a5 = v52;
        if (v25 >= -1 - 0x5555555555555555 * ((v62 - v61) >> 2))
        {
          goto LABEL_42;
        }

        v70[0] = a4;
        sub_9199F4(v8 + 2608, &v63, &v66, v70, &v54);
        v36 = __p[0];
        if (!__p[0])
        {
          goto LABEL_41;
        }

        v37 = __p[1];
        v38 = __p[0];
        if (__p[1] != __p[0])
        {
          break;
        }

LABEL_40:
        __p[1] = v36;
        operator delete(v38);
LABEL_41:
        *__p = v54;
        v60 = v55;
        *&v55 = 0;
        v54 = 0uLL;
        *&v57 = &v54;
        sub_5ECC44(&v57);
        v40 = __p[0];
        v41 = __p[1];
        if (__p[0] == __p[1])
        {
LABEL_42:
          v56 = v65;
          v54 = v63;
          v55 = v64;
          BYTE6(v56) = BYTE6(v65) == 0;
          v53 = a4;
          sub_9199F4(v8 + 2608, &v54, &v68, &v53, &v57);
          v42 = __p[0];
          if (!__p[0])
          {
LABEL_55:
            *__p = v57;
            v60 = v58;
            v58 = 0;
            v57 = 0uLL;
            v70[0] = &v57;
            sub_5ECC44(v70);
            v40 = __p[0];
            v41 = __p[1];
            goto LABEL_56;
          }

          v43 = __p[1];
          v44 = __p[0];
          if (__p[1] == __p[0])
          {
LABEL_54:
            __p[1] = v42;
            operator delete(v44);
            goto LABEL_55;
          }

          while (1)
          {
            if (*(v43 - 9) < 0)
            {
              operator delete(*(v43 - 4));
              if ((*(v43 - 41) & 0x80000000) == 0)
              {
LABEL_48:
                v45 = *(v43 - 20);
                if (v45 == -1)
                {
                  goto LABEL_45;
                }

LABEL_52:
                (off_266D410[v45])(v70, v43 - 14);
                goto LABEL_45;
              }
            }

            else if ((*(v43 - 41) & 0x80000000) == 0)
            {
              goto LABEL_48;
            }

            operator delete(*(v43 - 8));
            v45 = *(v43 - 20);
            if (v45 != -1)
            {
              goto LABEL_52;
            }

LABEL_45:
            *(v43 - 20) = -1;
            v43 -= 23;
            if (v43 == v42)
            {
              v44 = __p[0];
              goto LABEL_54;
            }
          }
        }

LABEL_56:
        sub_829604(v52, v52[1], v40, v41, 0xD37A6F4DE9BD37A7 * ((v41 - v40) >> 3));
        *&v54 = __p;
        sub_5ECC44(&v54);
        if (++v25 == v51)
        {
          goto LABEL_57;
        }
      }

      while (1)
      {
        if (*(v37 - 9) < 0)
        {
          operator delete(*(v37 - 4));
          if ((*(v37 - 41) & 0x80000000) == 0)
          {
LABEL_34:
            v39 = *(v37 - 20);
            if (v39 == -1)
            {
              goto LABEL_31;
            }

LABEL_38:
            (off_266D410[v39])(&v57, v37 - 14);
            goto LABEL_31;
          }
        }

        else if ((*(v37 - 41) & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        operator delete(*(v37 - 8));
        v39 = *(v37 - 20);
        if (v39 != -1)
        {
          goto LABEL_38;
        }

LABEL_31:
        *(v37 - 20) = -1;
        v37 -= 23;
        if (v37 == v36)
        {
          v38 = __p[0];
          goto LABEL_40;
        }
      }
    }
  }
}

void sub_816804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void **a29)
{
  a29 = a11;
  sub_5ECC44(&a29);
  _Unwind_Resume(a1);
}

void sub_81682C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, uint64_t a29)
{
  a13 = &a23;
  sub_5ECC44(&a13);
  if (__p)
  {
    a27 = __p;
    operator delete(__p);
  }

  a29 = a11;
  sub_5ECC44(&a29);
  _Unwind_Resume(a1);
}

void sub_816880(void *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *(sub_4D1F50(a2, a4) + 32);
  v10 = a1[2];
  v11 = sub_2B51D8(v10, v9 & 0xFFFFFFFFFFFFLL);
  if (*(v10 + 7772) == 1)
  {
    v12 = sub_30C50C(v10 + 3896, v9, 0);
    v13 = &v12[-*v12];
    if (*v13 < 5u)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(v13 + 2);
      if (v14)
      {
        v14 += &v12[*&v12[v14]];
      }
    }

    v15 = v14 + ((v9 >> 30) & 0x3FFFC) + 4 + *(v14 + ((v9 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v15 = 0;
  }

  v61[0] = v11;
  v61[1] = v15;
  v61[2] = sub_31D7E8(v10, v9 & 0xFFFFFFFFFFFFLL, 1);
  v61[3] = v16;
  v62 = v9 & 0xFFFFFFFFFFFFFFLL;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  sub_31B8F4(a1[2], v61, &v58);
  v17 = v58;
  if (v58 == v59)
  {
LABEL_24:
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    if (!v17)
    {
      return;
    }

    goto LABEL_25;
  }

  v18 = v58;
  while (1)
  {
    v19 = (*v18 - **v18);
    if (*v19 >= 0x2Fu)
    {
      v20 = v19[23];
      if (v20)
      {
        if (*(*v18 + v20) == 14)
        {
          break;
        }
      }
    }

    v18 += 40;
    if (v18 == v59)
    {
      goto LABEL_24;
    }
  }

  sub_31E068(a1[2], v62 | (WORD2(v62) << 32), 8, &v56);
  v21 = v56;
  if (v56 != v57)
  {
    v22 = v57 - 12;
    if ((v9 & 0xFF000000000000) != 0)
    {
      v22 = v56;
    }

    v23 = *v22;
    v24 = a1[2];
    sub_2B51D8(v24, *v22 & 0xFFFFFFFFFFFFLL);
    if (*(v24 + 7772) == 1)
    {
      sub_30C50C(v24 + 3896, v23, 0);
    }

    sub_31D7E8(v24, v23 & 0xFFFFFFFFFFFFLL, 1);
    sub_31A0AC(a1[2], v61, v23 & 0xFFFFFFFFFFFFLL, &v53);
    if (!v55 || !v53 || !*(&v53 + 1))
    {
      *a5 = 0;
      a5[1] = 0;
      a5[2] = 0;
      goto LABEL_51;
    }

    v25 = sub_919900((a1 + 326), a3, 0);
    v51 = v25;
    v52 = WORD2(v25);
    v26 = sub_919900((a1 + 326), a3, 1);
    v49 = v26;
    v50 = WORD2(v26);
    a5[1] = 0;
    a5[2] = 0;
    *a5 = 0;
    if ((a1[309] & 0x8000000000000000) != 0)
    {
      goto LABEL_51;
    }

    v27 = 0;
    while (1)
    {
      v59 = v58;
      sub_31B8F4(a1[2], &v53, &v58);
      v30 = sub_70E7C4(*a1 + 1432, &v53, &v58, -1, v29);
      if (v30 == -1)
      {
        goto LABEL_51;
      }

      v31 = &v58[40 * v30];
      v32 = *(v31 + 4);
      v33 = *(v31 + 1);
      v53 = *v31;
      v54 = v33;
      v55 = v32;
      *&v43[0] = a4;
      sub_9199F4((a1 + 326), &v53, &v51, v43, __p);
      v34 = __p[0];
      v35 = __p[1];
      if (__p[0] != __p[1])
      {
        goto LABEL_45;
      }

      v44 = v55;
      v43[0] = v53;
      v43[1] = v54;
      BYTE6(v44) = BYTE6(v55) == 0;
      v42 = a4;
      sub_9199F4((a1 + 326), v43, &v49, &v42, &v45);
      v36 = __p[0];
      if (__p[0])
      {
        break;
      }

LABEL_44:
      *__p = v45;
      v48 = v46;
      v46 = 0;
      v45 = 0uLL;
      v63[0] = &v45;
      sub_5ECC44(v63);
      v34 = __p[0];
      v35 = __p[1];
LABEL_45:
      sub_829604(a5, a5[1], v34, v35, 0xD37A6F4DE9BD37A7 * ((v35 - v34) >> 3));
      v40 = (v53 - *v53);
      if (*v40 >= 9u && (v41 = v40[4]) != 0)
      {
        v28 = *(v53 + v41);
      }

      else
      {
        v28 = 0;
      }

      v27 += v28;
      *&v43[0] = __p;
      sub_5ECC44(v43);
      if (v27 > a1[309])
      {
LABEL_51:
        v21 = v56;
        if (!v56)
        {
          goto LABEL_53;
        }

        goto LABEL_52;
      }
    }

    v37 = __p[1];
    v38 = __p[0];
    if (__p[1] == __p[0])
    {
LABEL_43:
      __p[1] = v36;
      operator delete(v38);
      goto LABEL_44;
    }

    while (1)
    {
      if (*(v37 - 9) < 0)
      {
        operator delete(*(v37 - 4));
        if ((*(v37 - 41) & 0x80000000) == 0)
        {
LABEL_37:
          v39 = *(v37 - 20);
          if (v39 == -1)
          {
            goto LABEL_34;
          }

LABEL_41:
          (off_266D410[v39])(v63, v37 - 14);
          goto LABEL_34;
        }
      }

      else if ((*(v37 - 41) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

      operator delete(*(v37 - 8));
      v39 = *(v37 - 20);
      if (v39 != -1)
      {
        goto LABEL_41;
      }

LABEL_34:
      *(v37 - 20) = -1;
      v37 -= 23;
      if (v37 == v36)
      {
        v38 = __p[0];
        goto LABEL_43;
      }
    }
  }

  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (v21)
  {
LABEL_52:
    v57 = v21;
    operator delete(v21);
  }

LABEL_53:
  v17 = v58;
  if (!v58)
  {
    return;
  }

LABEL_25:
  v59 = v17;
  operator delete(v17);
}

void sub_816D30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
    v36 = *(v34 - 168);
    if (!v36)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v36 = *(v34 - 168);
    if (!v36)
    {
      goto LABEL_3;
    }
  }

  *(v34 - 160) = v36;
  operator delete(v36);
  _Unwind_Resume(exception_object);
}

void sub_816DC8(uint64_t a1, void *a2, unint64_t a3)
{
  if (*(a1 + 2585) != 1)
  {
    return;
  }

  v5 = sub_578320(a2 + 138, a3);
  v6 = *(v5 + 16);
  if (v6 >= sub_4D1DC0(a2))
  {
    return;
  }

  v7 = sub_4D1F50(a2, *(v5 + 16));
  v8 = (*v7 - **v7);
  v9 = *v8;
  if (*(v7 + 38))
  {
    if (v9 < 0x9F || (v10 = v8[79]) == 0)
    {
LABEL_10:
      v14 = 0;
      v13 = 0uLL;
      goto LABEL_11;
    }
  }

  else
  {
    if (v9 < 0x9D)
    {
      goto LABEL_10;
    }

    v10 = v8[78];
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  v11 = (*v7 + v10);
  v12 = *v11;
  v35[0] = 0;
  v35[1] = 0;
  v36 = 0;
  sub_315068(v35, *(v11 + v12));
  sub_315204((v11 + v12), v35);
  v13 = *v35;
  v14 = v36;
LABEL_11:
  v15 = v13;
  v16 = (*(&v13 + 1) - v13) >> 6;
  v17 = 126 - 2 * __clz(v16);
  v51 = v13;
  v52 = v14;
  if (*(&v13 + 1) == v13)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  sub_829C38(v13, *(&v13 + 1), v35, v18, 1);
  if (*(&v15 + 1) != v15)
  {
    while (1)
    {
      v19 = v15 + (--v16 << 6);
      if (*(v19 + 36) < *(a1 + 2588))
      {
        goto LABEL_60;
      }

      v20 = *(v5 + 160);
      switch(v20)
      {
        case 1u:
        case 0x14u:
        case 0x1Bu:
        case 0x1Du:
        case 0x21u:
        case 0x3Cu:
        case 0x3Eu:
        case 0x41u:
          v21 = *(v19 + 32);
          if (v21 != 2)
          {
            goto LABEL_23;
          }

          if (v20 > 0x3F || ((1 << v20) & 0xA000000450200004) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_22;
        case 2u:
        case 0x15u:
        case 0x1Cu:
        case 0x1Eu:
        case 0x22u:
        case 0x3Du:
        case 0x3Fu:
        case 0x42u:
LABEL_22:
          v21 = *(v19 + 32);
          if (v21 == 3)
          {
            goto LABEL_24;
          }

LABEL_23:
          if (v21 != 1)
          {
            goto LABEL_16;
          }

LABEL_24:
          if (!sub_91C67C(a1 + 2608, a2, v5, *v19))
          {
            goto LABEL_16;
          }

          v22 = *(a1 + 24);
          v23 = *v19;
          v35[0] = -1;
          LODWORD(v35[1]) = 0x7FFFFFFF;
          v24 = sub_2B1988(v22, v23, v35);
          v50 = v24;
          if (!v24 || v24 >= 0xFFFFFFFF00000000)
          {
            goto LABEL_16;
          }

          sub_2B2F34(*(a1 + 32), &v50, &v48);
          v26 = sub_53A634(a2 + 936, *(v5 + 16));
          sub_64AC90(&v46, v26, 0);
          sub_7361B0(&v48, v35);
          v27 = sub_734C10(&v37);
          v28 = v45;
          if (!v27)
          {
            goto LABEL_35;
          }

          if ((v45 & 0x80u) != 0)
          {
            v28 = v44;
          }

          if (v28)
          {
            v29 = *(v5 + 2072);
            if (v29 >= *(v5 + 2080))
            {
              v30 = sub_820F38((v5 + 2064), (v15 + (v16 << 6)), v35, (*(&v15 + 1) + 24));
            }

            else
            {
              sub_68427C(*(v5 + 2072), (v15 + (v16 << 6)), v35, (*(&v15 + 1) + 24));
              v30 = v29 + 432;
              *(v5 + 2072) = v29 + 432;
            }

            *(v5 + 2072) = v30;
            if ((v45 & 0x80) == 0)
            {
LABEL_36:
              if ((v42 & 0x80000000) == 0)
              {
                goto LABEL_37;
              }

              goto LABEL_53;
            }
          }

          else
          {
LABEL_35:
            if ((v45 & 0x80) == 0)
            {
              goto LABEL_36;
            }
          }

          operator delete(__p);
          if ((v42 & 0x80000000) == 0)
          {
LABEL_37:
            if ((v40 & 0x80000000) == 0)
            {
              goto LABEL_38;
            }

            goto LABEL_54;
          }

LABEL_53:
          operator delete(v41);
          if ((v40 & 0x80000000) == 0)
          {
LABEL_38:
            if ((v38 & 0x80000000) == 0)
            {
              goto LABEL_39;
            }

            goto LABEL_55;
          }

LABEL_54:
          operator delete(v39);
          if ((v38 & 0x80000000) == 0)
          {
LABEL_39:
            if ((SHIBYTE(v36) & 0x80000000) == 0)
            {
              goto LABEL_40;
            }

            goto LABEL_56;
          }

LABEL_55:
          operator delete(v37);
          if ((SHIBYTE(v36) & 0x80000000) == 0)
          {
LABEL_40:
            if ((v47 & 0x80000000) == 0)
            {
              goto LABEL_41;
            }

            goto LABEL_57;
          }

LABEL_56:
          operator delete(v35[0]);
          if ((v47 & 0x80000000) == 0)
          {
LABEL_41:
            v31 = v48;
            if (!v48)
            {
              goto LABEL_16;
            }

LABEL_42:
            v32 = v49;
            if (v49 == v31)
            {
              v49 = v31;
              operator delete(v31);
              goto LABEL_16;
            }

            while (1)
            {
              if (*(v32 - 9) < 0)
              {
                operator delete(*(v32 - 4));
                if ((*(v32 - 41) & 0x80000000) == 0)
                {
                  goto LABEL_45;
                }
              }

              else if ((*(v32 - 41) & 0x80000000) == 0)
              {
LABEL_45:
                v32 -= 9;
                if (v32 == v31)
                {
                  goto LABEL_49;
                }

                continue;
              }

              operator delete(*(v32 - 8));
              v32 -= 9;
              if (v32 == v31)
              {
LABEL_49:
                v49 = v31;
                operator delete(v48);
                goto LABEL_16;
              }
            }
          }

LABEL_57:
          operator delete(v46);
          v31 = v48;
          if (v48)
          {
            goto LABEL_42;
          }

LABEL_16:
          if (!v16)
          {
            goto LABEL_59;
          }

          break;
        default:
          goto LABEL_24;
      }
    }
  }

LABEL_59:
  if (v15)
  {
LABEL_60:
    for (i = *(&v51 + 1); i != v15; i -= 64)
    {
      v34 = *(i - 24);
      if (v34)
      {
        *(i - 16) = v34;
        operator delete(v34);
      }
    }

    operator delete(v15);
  }
}

void sub_81720C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  *(v34 + 2072) = v35;
  sub_3E5388(&a9);
  if (a34 < 0)
  {
    operator delete(__p);
  }

  sub_3008E0((v36 - 144));
  sub_315190((v36 - 112));
  _Unwind_Resume(a1);
}

uint64_t sub_8173F8(uint64_t result, void *a2, unint64_t a3)
{
  if (*(result + 2543) == 1)
  {
    result = sub_578320(a2 + 138, a3);
    v4 = *(result + 160);
    if ((v4 > 0x19 || ((1 << v4) & 0x2020080) == 0) && v4 != 85 && v4 != 88)
    {
      v6 = result;
      v36 = 0;
      v7 = *(result + 16);
      if (v7 > *(result + 40))
      {
        v8 = 0;
        do
        {
          v9 = sub_4D1F50(a2, v7);
          v11 = *v9;
          v12 = (*v9 - **v9);
          v13 = *v12;
          if (*(v9 + 38))
          {
            if (v13 < 0x9B)
            {
              goto LABEL_23;
            }

            v14 = v12[77];
            if (!v14 || (*&v11[v14] & 0x80) == 0)
            {
              goto LABEL_23;
            }
          }

          else if (v13 < 0x9B || (v15 = v12[77]) == 0 || (*&v11[v15] & 0x40) == 0)
          {
LABEL_23:
            v19 = sub_4D1F50(a2, v7);
            v20 = (*v19 - **v19);
            if (*v20 >= 0x2Fu)
            {
              v21 = v20[23];
              if (v21)
              {
                v22 = *(*v19 + v21);
                v23 = v22 > 0x36;
                v24 = (1 << v22) & 0x44000000000008;
                v25 = v23 || v24 == 0;
                if (!v25 && (v8 & 1) == 0)
                {
                  v8 = 1;
                  goto LABEL_12;
                }
              }
            }

            v26 = sub_4D1F50(a2, v7);
            v27 = (*v26 - **v26);
            if (*v27 >= 0x2Fu)
            {
              v28 = v27[23];
              if (v28)
              {
                v29 = *(*v26 + v28);
                v23 = v29 > 0x36;
                v30 = (1 << v29) & 0x44000000000008;
                if (!v23 && v30 != 0)
                {
                  goto LABEL_12;
                }
              }
            }

            if (v8)
            {
              LOBYTE(v35) = 1;
              v32 = v6[259];
              if (v32 >= v6[260])
              {
                v33 = sub_82143C(v6 + 258, &v36, &v35);
              }

              else
              {
                sub_683F24(v6[259], &v36, 1);
                v33 = v32 + 432;
                v6[259] = v32 + 432;
              }

              v8 = 0;
              goto LABEL_43;
            }

            v8 = 0;
            goto LABEL_12;
          }

          v16 = sub_4D23F8(a2, v7, v10);
          v35 = v36 + v16;
          v34 = 1;
          v17 = v6[259];
          if (v17 >= v6[260])
          {
            v33 = sub_8212D8(v6 + 258, &v35, &v34);
LABEL_43:
            v6[259] = v33;
            goto LABEL_12;
          }

          sub_683F24(v6[259], &v35, 1);
          v6[259] = v17 + 432;
          v6[259] = v17 + 432;
LABEL_12:
          result = sub_4D23F8(a2, v7, v18);
          v36 += result;
          --v7;
        }

        while (v7 > v6[5]);
      }
    }
  }

  return result;
}

void sub_817694(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = sub_578320((a2 + 1104), a3);
  v4 = *(v3 + 2064);
  v5 = *(v3 + 2072);
  if (v5 - v4 < 1)
  {
    v10 = 0;
    v6 = 0;
  }

  else
  {
    v6 = 0x84BDA12F684BDA13 * ((v5 - v4) >> 4);
    while (1)
    {
      v7 = operator new(432 * v6, &std::nothrow);
      if (v7)
      {
        break;
      }

      v8 = v6 >> 1;
      v9 = v6 > 1;
      v6 >>= 1;
      if (!v9)
      {
        v10 = 0;
        v6 = v8;
        goto LABEL_8;
      }
    }

    v10 = v7;
  }

LABEL_8:
  sub_82B808(v4, v5, &v11, 0x84BDA12F684BDA13 * ((v5 - v4) >> 4), v10, v6);
  if (v10)
  {
    operator delete(v10);
  }
}

void sub_817774(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_81778C(void *a1, uint64_t a2, uint64_t a3, void *a4, const void **a5, uint64_t a6)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = sub_3AF6B4(a4);
  a1[3] = sub_3B20FC(a4);
  a1[4] = sub_3B21D0(a4);
  sub_67A1F8((a1 + 5), a4, 0, *(a6 + 1566), a5);
}

void sub_817850(_Unwind_Exception *a1)
{
  sub_7B3780(v1 + 2640);
  if (*(v1 + 2415) < 0)
  {
    operator delete(*(v1 + 2392));
  }

  _Unwind_Resume(a1);
}

unint64_t sub_817880(uint64_t a1, uint64_t a2)
{
  result = nullsub_1(a2);
  v4 = *result;
  v5 = *(result + 8);
  if (*result != v5)
  {
    do
    {
      result = sub_8178D8(a1, v4);
      v4 += 1582;
    }

    while (v4 != v5);
  }

  return result;
}

unint64_t sub_8178D8(uint64_t a1, void *a2)
{
  v4 = a2[139] - a2[138];
  if (v4)
  {
    v5 = 0;
    v6 = 0x3795876FF3795877 * (v4 >> 3);
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    v34 = vnegq_f64(v7);
    do
    {
      sub_81F408(a1, a2, v5);
      sub_81FC60(a1 + 2640, a2, v5);
      if (*(a2[138] + 2616 * v5 + 160) != 90)
      {
        sub_819268(a1, a2, v5);
        sub_81BBDC(a1, a2, v5);
        sub_817DB4(a1, a2, v5);
        sub_818978(a1, a2, v5);
        v8 = sub_578320(a2 + 138, v5);
        v9 = v8[40];
        if (v9 - 82 >= 3 && (v9 > 0x27 || ((1 << v9) & 0x8600050000) == 0))
        {
          v24 = v8[4];
          v25 = v8[6];
          v26 = v8;
          sub_4D0560();
          v28 = v27;
          v30 = v29;
          sub_4D0560();
          *(v26 + 2418) = sub_8210A4(v28, v30 + v24, v32, v31 + v25);
        }

        sub_81BCD8(a1, a2, v5);
        sub_81BF74(a1, a2, v5);
        v11 = (a2[138] + 2616 * v5);
        v12 = v11[10];
        v13 = v11[13];
        if (v12 != -1 && v13 != -1)
        {
          if (v12 <= v13)
          {
            v15 = v11[13];
          }

          else
          {
            v15 = v11[10];
          }

          v16 = 0;
          if (v12 < v13)
          {
            do
            {
              v16 += sub_4D23F8(a2, v12++, v10);
            }

            while (v15 != v12);
          }

          v17 = v11[14] + v16 - v11[11];
          if (v11[126] < v17)
          {
            v17 = v11[126];
          }

          v11[16] = v17;
        }

        sub_817BE0(a1, a2, v5);
        v18 = a2[138] + 2616 * v5;
        v19 = (*(v18 + 160) - 1) > 1 || *(v18 + 2200) > 1uLL;
        *(v18 + 2416) = v19;
        sub_818B10(a1, a2, v5);
        if (*(a1 + 2584) == 1)
        {
          v20 = a2[138];
          sub_6AFD4C((a1 + 6568), a2, v5, &v35);
          v21.i64[0] = -1;
          v21.i64[1] = -1;
          if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v35, v21), vceqq_s64(v36, v34)))) & 1) == 0 && v37 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v22 = v20 + 2616 * v5;
            v23 = v35;
            *(v22 + 2600) = v36.i64[0];
            *(v22 + 2584) = v23;
          }
        }

        sub_81B5AC(a1, a2, v5);
      }

      ++v5;
    }

    while (v5 != v6);
  }

  return sub_91EDA4(a1 + 2608, a2);
}

void sub_817BE0(uint64_t *a1, void *a2, uint64_t a3)
{
  v4 = a2[138] + 2616 * a3;
  v5 = sub_4D1F50(a2, *(v4 + 16));
  v6 = *(v5 + 32);
  v7 = *(v5 + 16);
  v19[0] = *v5;
  v19[1] = v7;
  v20 = v6;
  sub_6E5620(*a1, v19, 0, &v17);
  v8 = v17[1];
  if (*v17 == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    v10 = *v17;
    do
    {
      if (*(v10 + 241) == 1)
      {
        v11 = *(v10 + 24);
        if ((v11 - 20) <= 0x2D && ((1 << (v11 - 20)) & 0x250000002281) != 0 || v11 == 1)
        {
          if ((v14 = *(v4 + 160), (v14 - 20) <= 0x2D) && ((1 << (v14 - 20)) & 0x250000002281) != 0 || v14 == 1)
          {
            ++v9;
          }
        }

        if ((v11 - 21) <= 0x2D && ((1 << (v11 - 21)) & 0x250000002281) != 0 || v11 == 2)
        {
          if ((v15 = *(v4 + 160), (v15 - 21) <= 0x2D) && ((1 << (v15 - 21)) & 0x250000002281) != 0 || v15 == 2)
          {
            ++v9;
          }
        }
      }

      v10 += 248;
    }

    while (v10 != v8);
  }

  *(v4 + 2192) = 0xEF7BDEF7BDEF7BDFLL * ((v8 - *v17) >> 3);
  *(v4 + 2200) = v9;
  v16 = v18;
  if (v18)
  {
    if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }
  }
}

unint64_t sub_817DB4(uint64_t a1, void *a2, unint64_t a3)
{
  result = sub_578320(a2 + 138, a3);
  v6 = *(result + 80);
  if (v6 == -1)
  {
    return result;
  }

  v7 = result;
  v8 = *(result + 24);
  result = sub_4D1DC0(a2);
  if (v8 >= result)
  {
    return result;
  }

  result = sub_4D1F50(a2, v6);
  v10 = (*result - **result);
  if (*v10 >= 0x9Bu && (v11 = v10[77]) != 0)
  {
    v12 = (*(*result + v11) >> 15) & 1;
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  v153 = v12;
  v152 = v12;
  v151 = v12;
  v13 = *(v7 + 160);
  v14 = 1;
  v15 = v13 - 11;
  if ((v13 - 11) > 0x36)
  {
LABEL_32:
    if (v13 != 1)
    {
      v14 = 0;
    }

    goto LABEL_9;
  }

  if (((1 << v15) & 0x4A000000450200) == 0)
  {
    if (v13 == 11)
    {
      v150 = v12;
      v14 = v12;
      goto LABEL_16;
    }

    goto LABEL_32;
  }

LABEL_9:
  v150 = v14;
  v16 = 1;
  if (v15 <= 0x37)
  {
    if (((1 << v15) & 0x940000008A0400) != 0)
    {
      goto LABEL_17;
    }

    if (v13 == 11)
    {
LABEL_16:
      v16 = v12 ^ 1;
      goto LABEL_17;
    }
  }

  if (v13 != 2)
  {
    v16 = 0;
  }

LABEL_17:
  v149 = v16;
  v148 = v13 == 4;
  v17 = v13 - 3;
  v147 = v17 == 0;
  if ((v14 & 1) == 0)
  {
    v36 = v17 > 1;
    v18 = v16 ^ 1;
    if (!v36)
    {
      v18 = 0;
    }

    if (v18)
    {
      return result;
    }
  }

  v19 = *(v7 + 2057);
  v20 = 0x7FFFFFFFFFFFFFFFLL;
  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v21 = 440;
      if (*(*(a1 + 6560) + 1064))
      {
        v21 = 408;
      }

      v22 = 592;
      v23 = 752;
      v24 = 528;
    }

    else
    {
      if (v19 != 3)
      {
        goto LABEL_46;
      }

      v21 = 448;
      if (*(*(a1 + 6560) + 1064))
      {
        v21 = 416;
      }

      v22 = 600;
      v23 = 760;
      v24 = 536;
    }
  }

  else if (*(v7 + 2057))
  {
    if (v19 != 1)
    {
      goto LABEL_46;
    }

    v21 = 432;
    if (*(*(a1 + 6560) + 1064))
    {
      v21 = 400;
    }

    v22 = 584;
    v23 = 744;
    v24 = 520;
  }

  else
  {
    v21 = 424;
    if (*(*(a1 + 6560) + 1064))
    {
      v21 = 392;
    }

    v22 = 576;
    v23 = 736;
    v24 = 512;
  }

  v20 = *(a1 + v21);
  v25 = *(a1 + v24);
  v26 = *(a1 + v23);
  v27 = *(a1 + v22);
  if (v20 <= v25)
  {
    v20 = v25;
  }

  if (v20 <= v26)
  {
    v20 = v26;
  }

  if (v20 <= v27)
  {
    v20 = v27;
  }

LABEL_46:
  if (v20 >= *(v7 + 1008))
  {
    v20 = *(v7 + 1008);
  }

  v98 = v20;
  v28 = *(v7 + 56);
  if (v28 == -1)
  {
    v28 = *(v7 + 40);
  }

  v29 = *(v7 + 16);
  v146 = *(v7 + 88);
  if (v6 > v28)
  {
    v99 = 0;
    v6 = v6;
    v30 = v29;
    v31 = v28;
    v97 = v28;
    while (1)
    {
      v32 = v6--;
      if (v32 > v30)
      {
        result = sub_4D23F8(a2, v6, v9);
        v146 += result;
        goto LABEL_53;
      }

      v33 = sub_4D1F50(a2, v6);
      v34 = sub_53A634(a2 + 936, v6);
      sub_683D58(v123, &v146);
      v138 = v6;
      v36 = v99 < *(a1 + 40) && v146 <= v98;
      if (!v36)
      {
        return sub_5941F8(v123);
      }

      v37 = sub_4D23F8(a2, v6, v35);
      v146 += v37;
      sub_6E5620(*a1, v33, 0, &v121);
      if (!v121)
      {
        v48 = 4;
        goto LABEL_184;
      }

      v38 = *v33;
      v39 = &(*v33)[-**v33];
      v40 = *v39;
      if (v40 < 0x9B || !*(v39 + 77) || (v38[*(v39 + 77) + 2] & 1) == 0)
      {
        break;
      }

      LOBYTE(v46) = 1;
LABEL_78:
      v120 = v46;
      v117 = 0;
      v118 = 0;
      v119 = 0;
      v49 = *v121;
      v50 = v121[1];
      v103[0] = a1;
      v103[1] = &v120;
      v104 = &v150;
      v105 = &v152;
      *&v106 = &v149;
      *(&v106 + 1) = &v151;
      v107 = &v148;
      v108 = &v147;
      v109 = &v153;
      if (v49 == v50)
      {
        v48 = 4;
        v31 = v97;
        goto LABEL_184;
      }

      do
      {
        if (sub_822B44(v103, v49))
        {
          v52 = v118;
          if (v118 >= v119)
          {
            v51 = sub_822E08(&v117, v49);
          }

          else
          {
            sub_5EF9A8(v118, v49);
            v51 = v52 + 248;
          }

          v118 = v51;
        }

        v49 += 248;
      }

      while (v49 != v50);
      v53 = v117;
      if (v117 == v118)
      {
        v48 = 4;
        v31 = v97;
        if (!v117)
        {
          goto LABEL_184;
        }
      }

      else
      {
        v54 = *(v7 + 2072);
        v31 = v97;
        if (*(v7 + 2064) == v54)
        {
          v55 = v146;
        }

        else
        {
          v55 = v146 - *(v54 - 432);
        }

        if (v55 >= sub_67AA84(a1 + 40, *(v7 + 2057)))
        {
          v139 = 1;
          v144 = v148;
          v56 = sub_4D1F50(a2, *(v7 + 24));
          v58 = v117;
          v57 = v118;
          v103[0] = v7;
          v103[1] = a1;
          v95 = v56;
          v104 = v56;
          v105 = &v148;
          if (v117 != v118)
          {
            while ((sub_822F84(v103, v58) & 1) == 0)
            {
              v58 += 31;
              if (v58 == v57)
              {
                v58 = v57;
                break;
              }
            }

            v57 = v118;
          }

          v141 = v58 != v57;
          if (v58 == v57)
          {
            goto LABEL_171;
          }

          v59 = *(a1 + 16);
          v60 = **v58;
          v61 = sub_2B51D8(v59, v60 & 0xFFFFFFFFFFFFLL);
          if (*(v59 + 7772) == 1)
          {
            sub_30C50C(v59 + 3896, v60, 0);
          }

          sub_31D7E8(v59, v60 & 0xFFFFFFFFFFFFLL, 1);
          v62 = *(a1 + 16);
          v96 = *(v58[1] - 1);
          v63 = sub_2B51D8(v62, v96 & 0xFFFFFFFFFFFFLL);
          if (*(v62 + 7772) == 1)
          {
            sub_30C50C(v62 + 3896, v96, 0);
          }

          sub_31D7E8(v62, v96 & 0xFFFFFFFFFFFFLL, 1);
          v64 = (v63 - *v63);
          v65 = *v64;
          if (v65 < 0x9B)
          {
            v145 = 0;
            v67 = (v61 - *v61);
            v68 = *v67;
            if (v68 < 0x2F)
            {
              goto LABEL_116;
            }
          }

          else
          {
            v66 = v64[77];
            if (v64[77])
            {
              LODWORD(v66) = (*(v63 + v66) >> 2) & 1;
            }

            v145 = v66;
            v67 = (v61 - *v61);
            v68 = *v67;
            if (v68 < 0x2F)
            {
LABEL_116:
              if (v65 >= 0x2F)
              {
                goto LABEL_117;
              }

LABEL_125:
              LOBYTE(v70) = 0;
LABEL_126:
              v143 = v70 & 1;
              v75 = *(v58 + 6) - 11;
              if (v75 < 0x38)
              {
LABEL_127:
                if ((0xE00000000C0001uLL >> v75))
                {
                  LODWORD(v76) = 1;
                  goto LABEL_141;
                }
              }

LABEL_130:
              if ((v68 < 0x2F) | v70 & 1)
              {
LABEL_131:
                LODWORD(v76) = 0;
              }

              else
              {
                v76 = v67[23];
                if (v76)
                {
                  v77 = *(v61 + v76);
                  v36 = v77 > 0x1A;
                  v78 = (1 << v77) & 0x4810001;
                  v79 = v36 || v78 == 0;
                  if (v79 || v65 < 0x2F)
                  {
                    goto LABEL_131;
                  }

                  v76 = v64[23];
                  if (v64[23])
                  {
                    v80 = *(v63 + v76);
                    if (v80 >= 0x1B)
                    {
                      goto LABEL_131;
                    }

                    LODWORD(v76) = 0x4810001u >> v80;
                  }
                }
              }

LABEL_141:
              v142 = v76 & 1;
              if (v65 < 0x43)
              {
                LODWORD(v81) = 0;
              }

              else
              {
                v81 = v64[33];
                if (v81)
                {
                  LODWORD(v81) = *(v63 + v81);
                }
              }

              v82 = (*v95 - **v95);
              v31 = v97;
              if (*v82 >= 0x43u && (v83 = v82[33]) != 0)
              {
                v84 = *(*v95 + v83);
                v85 = v81 >= v84;
                LODWORD(v81) = v81 - v84;
                if (v81 == 0 || !v85)
                {
                  goto LABEL_148;
                }

LABEL_151:
                v140 = v81 <= *(a1 + 41);
                if (((v76 | v144) & 1) == 0)
                {
                  goto LABEL_152;
                }

LABEL_149:
                sub_734CE0(v103);
              }

              else
              {
                if (v81)
                {
                  goto LABEL_151;
                }

LABEL_148:
                v140 = 1;
                if ((v76 | v144))
                {
                  goto LABEL_149;
                }

LABEL_152:
                v86 = *(a1 + 8);
                v100 = v96;
                v102 = BYTE6(v96);
                v101 = WORD2(v96);
                sub_883128(v86, &v100, v34, v103);
              }

              if (SHIBYTE(v125) < 0)
              {
                operator delete(__p);
              }

              __p = *v103;
              v125 = v104;
              HIBYTE(v104) = 0;
              LOBYTE(v103[0]) = 0;
              v126 = v105;
              if (SHIBYTE(v128) < 0)
              {
                operator delete(v127);
              }

              v127 = v106;
              v128 = v107;
              HIBYTE(v107) = 0;
              LOBYTE(v106) = 0;
              v129 = v108;
              v130 = v109;
              if (SHIBYTE(v132) < 0)
              {
                operator delete(v131);
              }

              v131 = v110;
              v132 = v111;
              HIBYTE(v111) = 0;
              LOBYTE(v110) = 0;
              if (SHIBYTE(v134) < 0)
              {
                operator delete(v133);
              }

              v133 = v112;
              v134 = v113;
              HIBYTE(v113) = 0;
              LOBYTE(v112) = 0;
              v135 = v114;
              if (SHIBYTE(v137) < 0)
              {
                operator delete(v136);
                v136 = v115;
                v137 = v116;
                HIBYTE(v116) = 0;
                LOBYTE(v115) = 0;
                if (SHIBYTE(v113) < 0)
                {
                  operator delete(v112);
                  if ((SHIBYTE(v111) & 0x80000000) == 0)
                  {
                    goto LABEL_168;
                  }
                }

                else if ((SHIBYTE(v111) & 0x80000000) == 0)
                {
                  goto LABEL_168;
                }

LABEL_163:
                operator delete(v110);
                if (SHIBYTE(v107) < 0)
                {
                  goto LABEL_164;
                }

LABEL_169:
                if (SHIBYTE(v104) < 0)
                {
LABEL_165:
                  operator delete(v103[0]);
                }
              }

              else
              {
                v136 = v115;
                v137 = v116;
                HIBYTE(v116) = 0;
                LOBYTE(v115) = 0;
                if (SHIBYTE(v111) < 0)
                {
                  goto LABEL_163;
                }

LABEL_168:
                if ((SHIBYTE(v107) & 0x80000000) == 0)
                {
                  goto LABEL_169;
                }

LABEL_164:
                operator delete(v106);
                if (SHIBYTE(v104) < 0)
                {
                  goto LABEL_165;
                }
              }

              ++v99;
LABEL_171:
              v87 = *(v7 + 2072);
              if (v87 >= *(v7 + 2080))
              {
                v88 = sub_820308((v7 + 2064), v123);
              }

              else
              {
                sub_5F3168(*(v7 + 2072), v123);
                v88 = v87 + 432;
                *(v7 + 2072) = v87 + 432;
              }

              v48 = 0;
              *(v7 + 2072) = v88;
              v53 = v117;
              if (!v117)
              {
                goto LABEL_184;
              }

              goto LABEL_175;
            }
          }

          if (!v67[23])
          {
            goto LABEL_116;
          }

          v69 = *(v61 + v67[23]);
          if (v69 >= 0x1B)
          {
            goto LABEL_116;
          }

          LOBYTE(v70) = 0;
          if (v65 < 0x2F || ((0x4810001u >> v69) & 1) != 0)
          {
            goto LABEL_126;
          }

LABEL_117:
          v70 = v64[23];
          if (!v64[23])
          {
            goto LABEL_126;
          }

          v71 = *(v63 + v70);
          v36 = v71 > 0x1A;
          v72 = (1 << v71) & 0x4810001;
          if (v36 || v72 == 0)
          {
            goto LABEL_125;
          }

          v74 = *(v7 + 160) - 11;
          if (v74 >= 0x38)
          {
            LOBYTE(v70) = 1;
            v143 = 1;
            v75 = *(v58 + 6) - 11;
            if (v75 < 0x38)
            {
              goto LABEL_127;
            }
          }

          else
          {
            v70 = 0x1FFFFFFFF3FFFEuLL >> v74;
            v143 = v70 & 1;
            v75 = *(v58 + 6) - 11;
            if (v75 < 0x38)
            {
              goto LABEL_127;
            }
          }

          goto LABEL_130;
        }

        v48 = 4;
        v53 = v117;
        if (!v117)
        {
          goto LABEL_184;
        }
      }

LABEL_175:
      v89 = v118;
      v90 = v53;
      if (v118 != v53)
      {
        do
        {
          v91 = *(v89 - 26);
          if (v91)
          {
            *(v89 - 25) = v91;
            operator delete(v91);
          }

          v92 = v89 - 248;
          v93 = *(v89 - 31);
          if (v93)
          {
            *(v89 - 30) = v93;
            operator delete(v93);
          }

          v89 -= 248;
        }

        while (v92 != v53);
        v90 = v117;
        v31 = v97;
      }

      v118 = v53;
      operator delete(v90);
LABEL_184:
      v94 = v122;
      if (v122 && !atomic_fetch_add(&v122->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v94->__on_zero_shared)(v94);
        std::__shared_weak_count::__release_weak(v94);
        result = sub_5941F8(v123);
        if ((v48 | 4) != 4)
        {
          return result;
        }
      }

      else
      {
        result = sub_5941F8(v123);
        if ((v48 | 4) != 4)
        {
          return result;
        }
      }

LABEL_53:
      if (v6 <= v31)
      {
        return result;
      }
    }

    v41 = v33[1];
    if (v41 && (v42 = (v41 - *v41), *v42 >= 0x11u) && (v43 = v42[8]) != 0)
    {
      v44 = *(v41 + v43);
      if (v40 < 0x9B || (v44 & 4) != 0)
      {
        v46 = (v44 >> 2) & 1;
        goto LABEL_78;
      }
    }

    else if (v40 < 0x9B)
    {
LABEL_76:
      LOBYTE(v46) = 0;
      goto LABEL_78;
    }

    v47 = *(v39 + 77);
    if (v47)
    {
      v46 = (v38[v47 + 3] >> 2) & 1;
      goto LABEL_78;
    }

    goto LABEL_76;
  }

  return result;
}

void sub_8188F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, char a40)
{
  sub_5ECF34(&a34);
  sub_1F1A8(&a38);
  sub_5941F8(&a40);
  _Unwind_Resume(a1);
}

uint64_t sub_818978(uint64_t result, void *a2, unint64_t a3)
{
  if (a2[1290] != a2[1291])
  {
    v5 = result;
    result = sub_91BBD0(result + 2608, a2, a3);
    if (result != -1)
    {
      v7 = v6;
      if (v6 != -1)
      {
        v8 = result;
        result = sub_578320(a2 + 138, a3);
        if (v8 <= v7)
        {
          v9 = result;
          do
          {
            v10 = sub_814868(a2 + 1290, v8);
            result = sub_6834F4(v10);
            if (!result || *(v10 + 4))
            {
              goto LABEL_9;
            }

            v12 = (v10 + 8);
            v11 = *(v10 + 8);
            if (v11 < v9[5] || v11 >= v9[2])
            {
              goto LABEL_9;
            }

            v18 = sub_91BE70(v5 + 2608, a2, a3, v10);
            if (sub_684314((v9 + 258)))
            {
              v14 = sub_683C48(v10, (v9 + 261));
              v17 = v14;
              v16 = v8;
              v15 = v9[259];
              if (v15 < v9[260])
              {
                goto LABEL_20;
              }
            }

            else
            {
              v14 = 0;
              v17 = 0;
              v16 = v8;
              v15 = v9[259];
              if (v15 < v9[260])
              {
LABEL_20:
                sub_683F20(v15, &v18, *v12, v8, v14);
                result = v15 + 432;
                v9[259] = v15 + 432;
                goto LABEL_8;
              }
            }

            result = sub_8206C4(v9 + 258, &v18, v12, &v16, &v17);
LABEL_8:
            v9[259] = result;
LABEL_9:
            ++v8;
          }

          while (v8 <= v7);
        }
      }
    }
  }

  return result;
}

void sub_818B10(uint64_t a1, void *a2, unint64_t a3)
{
  if (a2[156] == a2[157])
  {
    return;
  }

  v6 = sub_578320(a2 + 138, a3);
  v7 = v6;
  if (*(v6 + 56) == -1)
  {
    v8 = *(v6 + 40);
  }

  else
  {
    v8 = *(v6 + 56);
  }

  if (a2[157] == a2[156])
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    do
    {
      if (*(sub_7CE79C(a2 + 156, v9) + 152) > v8)
      {
        break;
      }

      ++v9;
    }

    while (v9 < 0xCCCCCCCCCCCCCCCDLL * ((a2[157] - a2[156]) >> 5));
  }

  v10 = sub_7CE79C(a2 + 156, v9 - 1);
  v12 = *(v7 + 1008);
  v79 = v12;
  v13 = *(v7 + 40);
  if (v13 <= v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = *(v7 + 40);
  }

  if (v13 < v8)
  {
    do
    {
      v15 = sub_4D23F8(a2, v13, v11);
      if (v13 == *(v7 + 40))
      {
        v15 = sub_4D23F8(a2, v13, v11) - *(v7 + 48);
      }

      if (v12 >= v15)
      {
        v12 -= v15;
      }

      else
      {
        v12 = 0;
      }

      ++v13;
    }

    while (v14 != v13);
    v79 = v12;
  }

  sub_5139E8(v68, v10);
  v78 = v79;
  v16 = sub_50EA30(a2 + 138, a3);
  v17 = v16[7];
  if (v17 != -1)
  {
    v18 = sub_4D1F50(a2, v17);
    v19 = *v18;
    v20 = (*v18 - **v18);
    v21 = *v20;
    if (*(v18 + 38))
    {
      if (v21 < 0x9B || (v22 = v20[77]) == 0 || (*&v19[v22] & 0x100000) == 0)
      {
LABEL_33:
        v24 = v78;
        v25 = v16[126];
        v26 = *(a1 + 120);
        v27 = v16[16];
        v28 = sub_734C10(v68);
        v29 = v24 > v27 + v26 && v28;
        if (v29 && v25 - v24 >= *(a1 + 128))
        {
          sub_52CB8C((v7 + 848), v68);
          *(v7 + 1000) = v78;
        }

        goto LABEL_39;
      }
    }

    else
    {
      if (v21 < 0x9B)
      {
        goto LABEL_33;
      }

      v23 = v20[77];
      if (!v23 || (*&v19[v23] & 0x4000) == 0)
      {
        goto LABEL_33;
      }
    }

    if (*(a1 + 2539))
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

LABEL_39:
  v30 = *(a1 + 6560);
  v31 = 152;
  if (*(v30 + 1064))
  {
    v31 = 136;
  }

  v32 = 160;
  if (*(v30 + 1064))
  {
    v32 = 144;
  }

  if (!(*(v7 + 1029) & 1 | (*(v7 + 2057) == 0)))
  {
    v31 = v32;
  }

  if (*(v7 + 1008) >= *(a1 + v31) && *(v30 + 1413) == 1)
  {
    v33 = 176;
    if (*(v30 + 1064))
    {
      v33 = 168;
    }

    v34 = *(a1 + v33);
    if (v79 > v34)
    {
      while (1)
      {
        v35 = sub_7CE79C(a2 + 156, v9 - 1);
        v37 = v35;
        v38 = *(v35 + 152) <= v8 ? v8 : *(v35 + 152);
        if (v9 >= 0xCCCCCCCCCCCCCCCDLL * ((a2[157] - a2[156]) >> 5))
        {
          break;
        }

        v39 = *(sub_7CE79C(a2 + 156, v9) + 152);
        if (*(v7 + 24) < v39)
        {
          v39 = *(v7 + 24);
        }

        if (v38 <= v39)
        {
          v40 = v39;
        }

        else
        {
          v40 = v38;
        }

        if (v38 >= v39)
        {
          goto LABEL_65;
        }

        do
        {
LABEL_67:
          while (1)
          {
            v43 = sub_4D23F8(a2, v38, v36);
            if (v79 >= v43)
            {
              break;
            }

            v42 = 0;
            v79 = 0;
            if (v40 == ++v38)
            {
              goto LABEL_69;
            }
          }

          v44 = sub_4D23F8(a2, v38, v36);
          v42 = v79 - v44;
          v79 -= v44;
          ++v38;
        }

        while (v40 != v38);
LABEL_69:
        if (v42 <= v34)
        {
          v42 = v34;
        }

        v79 = v42;
        v45 = *(v7 + 824);
        v46 = *(v7 + 832);
        if (v45 == v46)
        {
          if (v45 < *(v7 + 840))
          {
            goto LABEL_111;
          }

          goto LABEL_113;
        }

        if (sub_7345C4(v46 - 96))
        {
          if (*(v46 - 96) != *(v37 + 16))
          {
            goto LABEL_87;
          }

          v47 = *(v46 - 65);
          if (v47 >= 0)
          {
            v48 = *(v46 - 65);
          }

          else
          {
            v48 = *(v46 - 80);
          }

          v49 = *(v37 + 95);
          v50 = v49;
          if ((v49 & 0x80u) != 0)
          {
            v49 = v37[10];
          }

          if (v48 != v49 || (v47 >= 0 ? (v51 = (v46 - 88)) : (v51 = *(v46 - 88)), v50 >= 0 ? (v52 = v37 + 9) : (v52 = v37[9]), memcmp(v51, v52, v48)))
          {
LABEL_87:
            v46 = *(v7 + 832);
            if (v46 < *(v7 + 840))
            {
              goto LABEL_111;
            }

LABEL_113:
            *(v7 + 832) = sub_820840((v7 + 824), v37, &v79);
            if (v79 <= v34)
            {
              goto LABEL_143;
            }

            goto LABEL_114;
          }

          if (!sub_734A38(v46 - 96) && sub_734A38((v37 + 8)))
          {
            v59 = (v46 - 64);
            if ((v46 - 64) != v37 + 12)
            {
              v60 = *(v37 + 119);
              if (*(v46 - 41) < 0)
              {
                if (v60 >= 0)
                {
                  v62 = v37 + 12;
                }

                else
                {
                  v62 = v37[12];
                }

                if (v60 >= 0)
                {
                  v63 = *(v37 + 119);
                }

                else
                {
                  v63 = v37[13];
                }

                sub_13B38(v59, v62, v63);
              }

              else if ((*(v37 + 119) & 0x80) != 0)
              {
                sub_13A68(v59, v37[12], v37[13]);
              }

              else
              {
                v61 = *(v37 + 6);
                *(v46 - 48) = v37[14];
                *v59 = v61;
              }
            }
          }

          v64 = (v46 - 160);
          v65 = *(v46 - 65);
          if (*(v46 - 137) < 0)
          {
            if (v65 >= 0)
            {
              v66 = (v46 - 88);
            }

            else
            {
              v66 = *(v46 - 88);
            }

            if (v65 >= 0)
            {
              v67 = *(v46 - 65);
            }

            else
            {
              v67 = *(v46 - 80);
            }

            sub_13B38(v64, v66, v67);
          }

          else if ((*(v46 - 65) & 0x80) != 0)
          {
            sub_13A68(v64, *(v46 - 88), *(v46 - 80));
          }

          else
          {
            *v64 = *(v46 - 88);
            *(v46 - 144) = *(v46 - 72);
          }
        }

        else
        {
          v53 = *(v46 - 9);
          if (v53 < 0)
          {
            if (!*(v46 - 24))
            {
              goto LABEL_110;
            }
          }

          else if (!*(v46 - 9))
          {
            goto LABEL_110;
          }

          v54 = *(v37 + 151);
          if (v54 >= 0)
          {
            v55 = *(v37 + 151);
          }

          else
          {
            v55 = v37[17];
          }

          v56 = *(v46 - 24);
          if (v53 >= 0)
          {
            v56 = *(v46 - 9);
          }

          if (v55 != v56 || (v54 >= 0 ? (v57 = v37 + 16) : (v57 = v37[16]), v53 >= 0 ? (v58 = (v46 - 32)) : (v58 = *(v46 - 32)), memcmp(v57, v58, v55)))
          {
LABEL_110:
            v46 = *(v7 + 832);
            if (v46 < *(v7 + 840))
            {
LABEL_111:
              sub_5139E8(*(v7 + 832), v37);
              *(v46 + 152) = v79;
              *(v7 + 832) = v46 + 160;
              *(v7 + 832) = v46 + 160;
              if (v79 <= v34)
              {
                goto LABEL_143;
              }

              goto LABEL_114;
            }

            goto LABEL_113;
          }
        }

        *(v46 - 8) = v79;
        if (v79 <= v34)
        {
          goto LABEL_143;
        }

LABEL_114:
        if (v9 < 0xCCCCCCCCCCCCCCCDLL * ((a2[157] - a2[156]) >> 5))
        {
          ++v9;
        }
      }

      v41 = *(v7 + 24);
      if (v38 <= v41)
      {
        v40 = *(v7 + 24);
      }

      else
      {
        v40 = v38;
      }

      if (v38 < v41)
      {
        goto LABEL_67;
      }

LABEL_65:
      v42 = v79;
      goto LABEL_69;
    }
  }

LABEL_143:
  if (v77 < 0)
  {
    operator delete(__p);
    if ((v75 & 0x80000000) == 0)
    {
LABEL_145:
      if ((v73 & 0x80000000) == 0)
      {
        goto LABEL_146;
      }

LABEL_151:
      operator delete(v72);
      if ((v71 & 0x80000000) == 0)
      {
LABEL_147:
        if ((v69 & 0x80000000) == 0)
        {
          return;
        }

LABEL_153:
        operator delete(v68[0]);
        return;
      }

      goto LABEL_152;
    }
  }

  else if ((v75 & 0x80000000) == 0)
  {
    goto LABEL_145;
  }

  operator delete(v74);
  if (v73 < 0)
  {
    goto LABEL_151;
  }

LABEL_146:
  if ((v71 & 0x80000000) == 0)
  {
    goto LABEL_147;
  }

LABEL_152:
  operator delete(v70);
  if (v69 < 0)
  {
    goto LABEL_153;
  }
}