void sub_EF29E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

void sub_EF2A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_EDE138(va);
  _Unwind_Resume(a1);
}

void sub_EF2A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_EDE138(va);
  _Unwind_Resume(a1);
}

void sub_EF2A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_EDE138(va);
  _Unwind_Resume(a1);
}

void sub_EF2A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 16) |= 1u;
  v4 = *(a3 + 48);
  if (!v4)
  {
    v6 = *(a3 + 8);
    v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
    if (v6)
    {
      v7 = *v7;
    }

    sub_14BB174(v7);
    v4 = v8;
    *(a3 + 48) = v8;
  }

  v9 = sub_73EEC(a2);
  *(v4 + 16) |= 2u;
  v10 = *(v4 + 32);
  if (!v10)
  {
    v11 = v9;
    v12 = *(v4 + 8);
    v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
    if (v12)
    {
      v13 = *v13;
    }

    sub_14BAE64(v13);
    v10 = v14;
    *(v4 + 32) = v14;
    v9 = v11;
  }

  sub_64D110(v9, v10);
  v15 = sub_68DC70(a2);
  *(v4 + 16) |= 8u;
  v16 = *(v4 + 48);
  if (!v16)
  {
    v17 = v15;
    v18 = *(v4 + 8);
    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
    if (v18)
    {
      v19 = *v19;
    }

    sub_14BAE64(v19);
    v16 = v20;
    *(v4 + 48) = v20;
    v15 = v17;
  }

  sub_64D110(v15, v16);
  v21 = sub_68DCC4(a2);
  *(v4 + 16) |= 4u;
  v22 = *(v4 + 40);
  if (v22)
  {
    sub_64D110(v21, v22);
    v23 = sub_68DD6C(a2);
    if (sub_4D1F6C(v23))
    {
      goto LABEL_15;
    }
  }

  else
  {
    v25 = v21;
    v26 = *(v4 + 8);
    v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
    if (v26)
    {
      v27 = *v27;
    }

    sub_14BAE64(v27);
    *(v4 + 40) = v28;
    sub_64D110(v25, v28);
    v29 = sub_68DD6C(a2);
    if (sub_4D1F6C(v29))
    {
LABEL_15:
      v24 = sub_68DD18(a2);
      if (sub_4D1F6C(v24))
      {
        return;
      }

      goto LABEL_27;
    }
  }

  v30 = sub_68DD6C(a2);
  *(v4 + 16) |= 0x10u;
  v31 = *(v4 + 56);
  if (!v31)
  {
    v32 = v30;
    v33 = *(v4 + 8);
    v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
    if (v33)
    {
      v34 = *v34;
    }

    sub_14BAE64(v34);
    v31 = v35;
    *(v4 + 56) = v35;
    v30 = v32;
  }

  sub_64D110(v30, v31);
  *(v4 + 16) |= 1u;
  v36 = *(v4 + 8);
  v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
  if (v36)
  {
    v37 = *v37;
  }

  sub_194EA1C((v4 + 24), &xmmword_22AE5E8, v37);
  v38 = sub_68DD18(a2);
  if (!sub_4D1F6C(v38))
  {
LABEL_27:
    v39 = sub_68DD18(a2);
    *(v4 + 16) |= 4u;
    v40 = *(v4 + 40);
    if (!v40)
    {
      v41 = v39;
      v42 = *(v4 + 8);
      v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
      if (v42)
      {
        v43 = *v43;
      }

      sub_14BAE64(v43);
      v40 = v44;
      *(v4 + 40) = v44;
      v39 = v41;
    }

    sub_64D110(v39, v40);
    v45 = sub_68DD18(a2);
    *(v4 + 16) |= 0x10u;
    v46 = *(v4 + 56);
    if (v46)
    {
    }

    else
    {
      v47 = v45;
      v48 = *(v4 + 8);
      v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
      if (v48)
      {
        v49 = *v49;
      }

      sub_14BAE64(v49);
      v46 = v50;
      *(v4 + 56) = v50;
      v45 = v47;
    }

    sub_64D110(v45, v46);
  }
}

uint64_t sub_EF2D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_68DE5C(a2);
  if (!sub_4D1F6C(v5))
  {
    v6 = sub_68DE5C(a2);
    *(a3 + 16) |= 2u;
    v7 = *(a3 + 56);
    if (!v7)
    {
      v8 = v6;
      v9 = *(a3 + 8);
      v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
      if (v9)
      {
        v10 = *v10;
      }

      sub_14BAE64(v10);
      v7 = v11;
      *(a3 + 56) = v11;
      v6 = v8;
    }

    sub_64D110(v6, v7);
  }

  v12 = sub_68DEB0(a2);
  v13 = *(v12 + 32);
  if (v13 <= 2)
  {
    if (v13 == 1)
    {
      if (*v12 == -1)
      {
        goto LABEL_26;
      }
    }

    else if (v13 != 2 || *(v12 + 4) == -1 && *v12 == -1 && *(v12 + 8) == *(v12 + 16))
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  if (v13 == 3 || v13 == 4)
  {
    v14 = *(v12 + 23);
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(v12 + 8);
    }

    if (v14)
    {
LABEL_21:
      v15 = sub_68DEB0(a2);
      *(a3 + 16) |= 0x20u;
      v17 = *(a3 + 88);
      if (!v17)
      {
        v18 = v15;
        v19 = *(a3 + 8);
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        v17 = sub_14BF484(v20);
        *(a3 + 88) = v17;
        v15 = v18;
      }

      sub_586C94(v15, v17, v16);
    }
  }

LABEL_26:
  *(a3 + 16) |= 0x80u;
  v21 = *(a3 + 104);
  if (!v21)
  {
    v22 = *(a3 + 8);
    v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v23 = *v23;
    }

    v21 = sub_14BD058(v23);
    *(a3 + 104) = v21;
  }

  v24 = sub_68F7C0(a2);
  v25 = sub_ECB7F4(v24);
  *(v21 + 4) |= 1u;
  *(v21 + 6) = v25;
  *(a3 + 16) |= 0x80u;
  v26 = *(a3 + 104);
  if (!v26)
  {
    v27 = *(a3 + 8);
    v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
    if (v27)
    {
      v28 = *v28;
    }

    v26 = sub_14BD058(v28);
    *(a3 + 104) = v26;
  }

  v29 = sub_68F7D0(a2);
  result = sub_ECB7F4(v29);
  *(v26 + 4) |= 2u;
  *(v26 + 7) = result;
  return result;
}

uint64_t sub_EF2F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_68E508(a2);
  v6 = *(result + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(result + 8);
  }

  if (v6)
  {
    v7 = sub_68E508(a2);
    sub_64BC20(v12, v7);
    *(a3 + 16) |= 0x10u;
    v8 = *(a3 + 80);
    if (!v8)
    {
      v9 = *(a3 + 8);
      v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
      if (v9)
      {
        v10 = *v10;
      }

      sub_14BAE64(v10);
      v8 = v11;
      *(a3 + 80) = v11;
    }

    sub_64D110(v12, v8);
    return sub_53A868(v12);
  }

  return result;
}

void sub_EF2FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_68E760(a2);
  v6 = *(v5 + 32);
  if (v6 <= 2)
  {
    if (v6 == 1)
    {
      if (*v5 == -1)
      {
        return;
      }
    }

    else
    {
      if (v6 != 2)
      {
        return;
      }

      v7 = *(v5 + 4) == -1 && *v5 == -1;
      if (v7 && *(v5 + 8) == *(v5 + 16))
      {
        return;
      }
    }

LABEL_18:
    v9 = sub_68E760(a2);
    sub_55F1E8(v15, v9);
    *(a3 + 16) |= 0x40u;
    v11 = *(a3 + 96);
    if (!v11)
    {
      v12 = *(a3 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v11 = sub_14BF484(v13);
      *(a3 + 96) = v11;
    }

    sub_586C94(v15, v11, v10);
    if (v20 < 0)
    {
      operator delete(__p);
      if ((v18 & 0x80000000) == 0)
      {
LABEL_24:
        v14 = v16;
        if (v16 == -1)
        {
          return;
        }

LABEL_28:
        (off_26748C8[v14])(&v21, v15);
        return;
      }
    }

    else if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    operator delete(v17);
    v14 = v16;
    if (v16 == -1)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v6 == 3 || v6 == 4)
  {
    v8 = *(v5 + 23);
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(v5 + 8);
    }

    if (v8)
    {
      goto LABEL_18;
    }
  }
}

void sub_EF3130(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53E440(va);
  _Unwind_Resume(a1);
}

void sub_EF3144(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  *(a4 + 16) |= 8u;
  v7 = *(a4 + 72);
  if (v7)
  {
    v8 = sub_68DEC0(a2);
    v9 = v8[133];
    v10 = v8[134];
    if (v9 != v10)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v12 = *(a4 + 8);
  v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
  if (v12)
  {
    v13 = *v13;
  }

  v7 = sub_14BCF4C(v13);
  *(a4 + 72) = v7;
  v8 = sub_68DEC0(a2);
  v9 = v8[133];
  v10 = v8[134];
  if (v9 == v10)
  {
LABEL_7:
    v14 = v8;
    v15 = v8[3];
    v16 = v8[4];
    while (v15 != v16)
    {
      v23 = *(v7 + 40);
      if (v23 && (v24 = *(v7 + 32), v24 < *v23))
      {
        *(v7 + 32) = v24 + 1;
        v22 = *&v23[2 * v24 + 2];
      }

      else
      {
        v21 = sub_14BCE94(*(v7 + 24));
        v22 = sub_19593CC(v7 + 24, v21);
      }

      sub_EFA928(a1, v15, a3, v22);
      v15 += 496;
    }

    if (!sub_4D1F6C(v14 + 6))
    {
      *(v7 + 16) |= 2u;
      v25 = *(v7 + 104);
      if (!v25)
      {
        v26 = *(v7 + 8);
        v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
        if (v26)
        {
          v27 = *v27;
        }

        v25 = sub_14BCE94(v27);
        *(v7 + 104) = v25;
      }

      sub_EFA928(a1, (v14 + 6), a3, v25);
    }

    if (!sub_4D1F6C(v14 + 68))
    {
      *(v7 + 16) |= 4u;
      v28 = *(v7 + 112);
      if (!v28)
      {
        v29 = *(v7 + 8);
        v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
        if (v29)
        {
          v30 = *v30;
        }

        v28 = sub_14BCE94(v30);
        *(v7 + 112) = v28;
      }

      sub_EFA928(a1, (v14 + 68), a3, v28);
    }

    v31 = v14[130];
    v32 = v14[131];
    while (v31 != v32)
    {
      v35 = *(v7 + 64);
      if (v35 && (v36 = *(v7 + 56), v36 < *v35))
      {
        *(v7 + 56) = v36 + 1;
        v34 = *&v35[2 * v36 + 2];
      }

      else
      {
        v33 = sub_14BCE94(*(v7 + 48));
        v34 = sub_19593CC(v7 + 48, v33);
      }

      sub_EFA928(a1, v31, a3, v34);
      v31 += 496;
    }

    return;
  }

  do
  {
LABEL_9:
    while (1)
    {
      v19 = *(v7 + 88);
      if (v19)
      {
        v20 = *(v7 + 80);
        if (v20 < *v19)
        {
          break;
        }
      }

      v17 = sub_14BCE94(*(v7 + 72));
      v18 = sub_19593CC(v7 + 72, v17);
      sub_EC74E8(v9, a3, v18);
      v9 += 496;
      if (v9 == v10)
      {
        return;
      }
    }

    *(v7 + 80) = v20 + 1;
    sub_EC74E8(v9, a3, *&v19[2 * v20 + 2]);
    v9 += 496;
  }

  while (v9 != v10);
}

void sub_EF33D0(uint64_t a1, uint64_t a2)
{
  if (!sub_4D1F6C(a1))
  {
    v4 = *(a1 + 160);
    if (v4 != *(a1 + 168) && !sub_4D1F6C(v4))
    {
      *(a2 + 16) |= 0x200u;
      v5 = *(a2 + 120);
      if (!v5)
      {
        v6 = *(a2 + 8);
        v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
        if (v6)
        {
          v7 = *v7;
        }

        sub_14BAE64(v7);
        v5 = v8;
        *(a2 + 120) = v8;
      }

      sub_64D110(a1, v5);
      v10 = *(a1 + 160);
      v9 = *(a1 + 168);
      while (v10 != v9)
      {
        v13 = *(a2 + 40);
        if (v13 && (v14 = *(a2 + 32), v14 < *v13))
        {
          *(a2 + 32) = v14 + 1;
          v12 = *&v13[2 * v14 + 2];
        }

        else
        {
          sub_14BAE64(*(a2 + 24));
          v12 = sub_19593CC(a2 + 24, v11);
        }

        sub_64D110(v10, v12);
        v10 += 20;
      }
    }
  }
}

void sub_EF34B4(uint64_t a1, uint64_t a2, const void **a3, uint64_t a4)
{
  v6 = a2;
  if (sub_6834F4(a2))
  {
    v7 = sub_68395C(v6);
    v8 = *(v6 + 32);
    v9 = *(v6 + 40);
    if (v8 != v9)
    {
      v85 = HIDWORD(v7);
      v84 = v6;
      while (1)
      {
        if (!sub_683140(v8))
        {
          goto LABEL_7;
        }

        v13 = *(v8 + 16);
        if (v13 <= 2)
        {
          break;
        }

        switch(v13)
        {
          case 3:
            v20 = *(a4 + 160);
            if (v20 && (v21 = *(a4 + 152), v21 < *v20))
            {
              *(a4 + 152) = v21 + 1;
              v22 = *&v20[2 * v21 + 2];
            }

            else
            {
              sub_14BE058(*(a4 + 144));
              v22 = sub_19593CC(a4 + 144, v28);
            }

            if (*(a3 + 23) >= 0)
            {
              v29 = *(a3 + 23);
            }

            else
            {
              v29 = a3[1];
            }

            if (v29 + 15 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_159;
            }

            if (v29 + 15 >= 0x17)
            {
              operator new();
            }

            memset(&v86, 0, sizeof(v86));
            *(&v86.__r_.__value_.__s + 23) = v29 + 15;
            if (v29)
            {
              if (*(a3 + 23) >= 0)
              {
                v44 = a3;
              }

              else
              {
                v44 = *a3;
              }

              memmove(&v86, v44, v29);
            }

            strcpy(&v86 + v29, "_RedLightCamera");
            *(v22 + 16) |= 1u;
            v45 = *(v22 + 8);
            v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
            if (v45)
            {
              v46 = *v46;
            }

            sub_194EA30((v22 + 24), &v86, v46);
            if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v86.__r_.__value_.__l.__data_);
              *(v22 + 16) |= 4u;
              v48 = *(v22 + 40);
              if (!v48)
              {
                goto LABEL_140;
              }
            }

            else
            {
              *(v22 + 16) |= 4u;
              v48 = *(v22 + 40);
              if (!v48)
              {
LABEL_140:
                v74 = *(v22 + 8);
                v75 = (v74 & 0xFFFFFFFFFFFFFFFCLL);
                if (v74)
                {
                  v75 = *v75;
                }

                v48 = sub_16F5828(v75);
                *(v22 + 40) = v48;
              }
            }

            sub_EC6D34((v6 + 20), v48, v47);
            v76 = *(v22 + 16);
            *(v22 + 64) = 2;
            *(v22 + 16) = v76 | 0x220;
            *(v22 + 84) = v85;
            if (sub_683530(v6))
            {
              *(v22 + 16) |= 0x20u;
              *(v22 + 64) = 5;
            }

            break;
          case 4:
            v23 = *(a4 + 160);
            if (v23 && (v24 = *(a4 + 152), v24 < *v23))
            {
              *(a4 + 152) = v24 + 1;
              v25 = *&v23[2 * v24 + 2];
            }

            else
            {
              sub_14BE058(*(a4 + 144));
              v25 = sub_19593CC(a4 + 144, v30);
            }

            if (*(a3 + 23) >= 0)
            {
              v31 = *(a3 + 23);
            }

            else
            {
              v31 = a3[1];
            }

            if (byte_27BF3E7 >= 0)
            {
              v32 = byte_27BF3E7;
            }

            else
            {
              v32 = qword_27BF3D8;
            }

            if (v32 + v31 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_159;
            }

            if (v32 + v31 > 0x16)
            {
              operator new();
            }

            memset(&v86, 0, sizeof(v86));
            *(&v86.__r_.__value_.__s + 23) = v32 + v31;
            v6 = v84;
            if (v31)
            {
              if (*(a3 + 23) >= 0)
              {
                v49 = a3;
              }

              else
              {
                v49 = *a3;
              }

              memmove(&v86, v49, v31);
            }

            v50 = &v86 + v31;
            if (v32)
            {
              if (byte_27BF3E7 >= 0)
              {
                v51 = &qword_27BF3D0;
              }

              else
              {
                v51 = qword_27BF3D0;
              }

              memmove(v50, v51, v32);
            }

            v50[v32] = 0;
            *(v25 + 16) |= 1u;
            v52 = *(v25 + 8);
            v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
            if (v52)
            {
              v53 = *v53;
            }

            sub_194EA30((v25 + 24), &v86, v53);
            if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v86.__r_.__value_.__l.__data_);
              *(v25 + 16) |= 4u;
              v55 = *(v25 + 40);
              if (!v55)
              {
                goto LABEL_146;
              }
            }

            else
            {
              *(v25 + 16) |= 4u;
              v55 = *(v25 + 40);
              if (!v55)
              {
LABEL_146:
                v77 = *(v25 + 8);
                v78 = (v77 & 0xFFFFFFFFFFFFFFFCLL);
                if (v77)
                {
                  v78 = *v78;
                }

                v55 = sub_16F5828(v78);
                *(v25 + 40) = v55;
              }
            }

            sub_EC6D34((v84 + 20), v55, v54);
            v79 = *(v25 + 16);
            *(v25 + 64) = 5;
            *(v25 + 16) = v79 | 0x220;
            *(v25 + 84) = v85;
            break;
          case 5:
            v14 = *(a4 + 160);
            if (v14 && (v15 = *(a4 + 152), v15 < *v14))
            {
              *(a4 + 152) = v15 + 1;
              v16 = *&v14[2 * v15 + 2];
            }

            else
            {
              sub_14BE058(*(a4 + 144));
              v16 = sub_19593CC(a4 + 144, v35);
            }

            v36 = sub_683938(v6);
            std::to_string(&v86, v36);
            *(v16 + 16) |= 2u;
            v37 = *(v16 + 8);
            v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
            if (v37)
            {
              v38 = *v38;
            }

            sub_194EA30((v16 + 32), &v86, v38);
            if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v86.__r_.__value_.__l.__data_);
            }

            v39 = *(v16 + 16);
            *(v16 + 72) = *(v6 + 88) / 3.6;
            *(v16 + 16) = v39 | 0xA0;
            *(v16 + 64) = 1;
            if (*(a3 + 23) >= 0)
            {
              v40 = *(a3 + 23);
            }

            else
            {
              v40 = a3[1];
            }

            if (byte_27BF3FF >= 0)
            {
              v41 = byte_27BF3FF;
            }

            else
            {
              v41 = qword_27BF3F0;
            }

            if (v41 + v40 > 0x7FFFFFFFFFFFFFF7)
            {
LABEL_159:
              sub_3244();
            }

            if (v41 + v40 > 0x16)
            {
              operator new();
            }

            memset(&v86, 0, sizeof(v86));
            *(&v86.__r_.__value_.__s + 23) = v41 + v40;
            v6 = v84;
            if (v40)
            {
              if (*(a3 + 23) >= 0)
              {
                v64 = a3;
              }

              else
              {
                v64 = *a3;
              }

              memmove(&v86, v64, v40);
            }

            v65 = &v86 + v40;
            if (v41)
            {
              if (byte_27BF3FF >= 0)
              {
                v66 = &qword_27BF3E8;
              }

              else
              {
                v66 = qword_27BF3E8;
              }

              memmove(v65, v66, v41);
            }

            v65[v41] = 0;
            *(v16 + 16) |= 1u;
            v67 = *(v16 + 8);
            v68 = (v67 & 0xFFFFFFFFFFFFFFFCLL);
            if (v67)
            {
              v68 = *v68;
            }

            sub_194EA30((v16 + 24), &v86, v68);
            if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v86.__r_.__value_.__l.__data_);
            }

            v70 = *(v16 + 16);
            *(v16 + 84) = v85;
            *(v16 + 16) = v70 | 0x204;
            v71 = *(v16 + 40);
            if (!v71)
            {
              v72 = *(v16 + 8);
              v73 = (v72 & 0xFFFFFFFFFFFFFFFCLL);
              if (v72)
              {
                v73 = *v73;
              }

              v71 = sub_16F5828(v73);
              *(v16 + 40) = v71;
            }

            sub_EC6D34((v84 + 20), v71, v69);
            break;
        }

LABEL_7:
        v8 += 184;
        if (v8 == v9)
        {
          return;
        }
      }

      if (v13 != 1)
      {
        if (v13 != 2)
        {
          goto LABEL_7;
        }

        v17 = *(a4 + 136);
        if (v17 && (v18 = *(a4 + 128), v18 < *v17))
        {
          *(a4 + 128) = v18 + 1;
          v19 = *&v17[2 * v18 + 2];
        }

        else
        {
          v42 = sub_14BE0EC(*(a4 + 120));
          v19 = sub_19593CC(a4 + 120, v42);
        }

        if (*(a3 + 23) >= 0)
        {
          v43 = *(a3 + 23);
        }

        else
        {
          v43 = a3[1];
        }

        if (v43 + 9 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_159;
        }

        if (v43 + 9 >= 0x17)
        {
          operator new();
        }

        memset(&v86, 0, sizeof(v86));
        *(&v86.__r_.__value_.__s + 23) = v43 + 9;
        if (v43)
        {
          if (*(a3 + 23) >= 0)
          {
            v59 = a3;
          }

          else
          {
            v59 = *a3;
          }

          memmove(&v86, v59, v43);
        }

        strcpy(&v86 + v43, "_StopSign");
        *(v19 + 16) |= 1u;
        v60 = *(v19 + 8);
        v61 = (v60 & 0xFFFFFFFFFFFFFFFCLL);
        if (v60)
        {
          v61 = *v61;
        }

        sub_194EA30((v19 + 24), &v86, v61);
        if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v86.__r_.__value_.__l.__data_);
          *(v19 + 16) |= 2u;
          v63 = *(v19 + 32);
          if (!v63)
          {
LABEL_154:
            v82 = *(v19 + 8);
            v83 = (v82 & 0xFFFFFFFFFFFFFFFCLL);
            if (v82)
            {
              v83 = *v83;
            }

            v63 = sub_16F5828(v83);
            *(v19 + 32) = v63;
          }
        }

        else
        {
          *(v19 + 16) |= 2u;
          v63 = *(v19 + 32);
          if (!v63)
          {
            goto LABEL_154;
          }
        }

        sub_EC6D34((v6 + 20), v63, v62);
        *(v19 + 16) |= 0xCu;
        v12 = 2;
        goto LABEL_6;
      }

      v26 = *(a4 + 136);
      if (v26 && (v27 = *(a4 + 128), v27 < *v26))
      {
        *(a4 + 128) = v27 + 1;
        v19 = *&v26[2 * v27 + 2];
      }

      else
      {
        v33 = sub_14BE0EC(*(a4 + 120));
        v19 = sub_19593CC(a4 + 120, v33);
      }

      if (*(a3 + 23) >= 0)
      {
        v34 = *(a3 + 23);
      }

      else
      {
        v34 = a3[1];
      }

      if (v34 + 13 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_159;
      }

      if (v34 + 13 >= 0x17)
      {
        operator new();
      }

      memset(&v86, 0, sizeof(v86));
      *(&v86.__r_.__value_.__s + 23) = v34 + 13;
      if (v34)
      {
        if (*(a3 + 23) >= 0)
        {
          v56 = a3;
        }

        else
        {
          v56 = *a3;
        }

        memmove(&v86, v56, v34);
      }

      strcpy(&v86 + v34, "_TrafficLight");
      *(v19 + 16) |= 1u;
      v57 = *(v19 + 8);
      v58 = (v57 & 0xFFFFFFFFFFFFFFFCLL);
      if (v57)
      {
        v58 = *v58;
      }

      sub_194EA30((v19 + 24), &v86, v58);
      if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v86.__r_.__value_.__l.__data_);
        *(v19 + 16) |= 2u;
        v10 = *(v19 + 32);
        if (!v10)
        {
LABEL_151:
          v80 = *(v19 + 8);
          v81 = (v80 & 0xFFFFFFFFFFFFFFFCLL);
          if (v80)
          {
            v81 = *v81;
          }

          v10 = sub_16F5828(v81);
          *(v19 + 32) = v10;
        }
      }

      else
      {
        *(v19 + 16) |= 2u;
        v10 = *(v19 + 32);
        if (!v10)
        {
          goto LABEL_151;
        }
      }

      sub_EC6D34((v6 + 20), v10, v11);
      *(v19 + 16) |= 0xCu;
      v12 = 1;
LABEL_6:
      *(v19 + 40) = v12;
      *(v19 + 44) = v85;
      goto LABEL_7;
    }
  }
}

void sub_EF3ECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_EF3EFC(_BYTE *a1, void *a2, uint64_t a3)
{
  if (!sub_6834F4(a3))
  {
    return 0;
  }

  v6 = sub_4D1DC0(a2);
  v7 = *(a3 + 8);
  if (v7 >= v6 || v7 == v6 - 1 && sub_4D2140(a2) < 0x3B9ACA00)
  {
    return 0;
  }

  if (sub_683A0C(a3))
  {
    return a1[24] & 1;
  }

  if (sub_445A90(a3))
  {
    return a1[25] & 1;
  }

  if (!sub_683864(a3) && !sub_683854(a3))
  {
    return 0;
  }

  return a1[26] & 1;
}

void sub_EF3FF0(unint64_t __val@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, std::string *a4@<X8>)
{
  std::to_string(&v21, __val);
  v7 = std::string::append(&v21, "_", 1uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v20, a2);
  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v20;
  }

  else
  {
    v9 = v20.__r_.__value_.__r.__words[0];
  }

  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v20.__r_.__value_.__l.__size_;
  }

  v11 = std::string::append(&v22, v9, size);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = std::string::append(&v23, "_", 1uLL);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v19, *(a3 + 8));
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v19;
  }

  else
  {
    v15 = v19.__r_.__value_.__r.__words[0];
  }

  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(v19.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = v19.__r_.__value_.__l.__size_;
  }

  v17 = std::string::append(&v24, v15, v16);
  v18 = *&v17->__r_.__value_.__l.__data_;
  a4->__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&a4->__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }
  }

  else if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(v24.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v23.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v20.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_18:
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_26:
    operator delete(v21.__r_.__value_.__l.__data_);
    if (*(a3 + 4) != 2)
    {
      return;
    }

    goto LABEL_27;
  }

LABEL_25:
  operator delete(v22.__r_.__value_.__l.__data_);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_26;
  }

LABEL_19:
  if (*(a3 + 4) == 2)
  {
LABEL_27:
    std::string::append(a4, "_OffRoute", 9uLL);
  }
}

void sub_EF41D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 + 23) < 0)
  {
    operator delete(*v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_EF42D0(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 8) + 176);
  *(sub_EB37EC(*a1, a2 + 8) + 10) = v4;
  v6 = *(a1 + 8);
  v7 = *(v6 + 184);
  if (v7 && (v8 = *(v6 + 176), v8 < *v7))
  {
    *(v6 + 176) = v8 + 1;
    v9 = *&v7[2 * v8 + 2];
  }

  else
  {
    v10 = sub_14BDE5C(*(v6 + 168));
    v9 = sub_19593CC(v6 + 168, v10);
  }

  sub_EC83B0(a2, v9, v5);
}

uint64_t sub_EF44A0(uint64_t a1, unsigned int *a2, _DWORD *a3)
{
  v5 = sub_4D26B4(a2, 0);
  if (v5 < 0)
  {
    v6 = -5;
  }

  else
  {
    v6 = 5;
  }

  a3[10] |= 0x800000u;
  a3[220] = v5 / 10 + (((103 * (v6 + v5 % 10)) >> 15) & 1) + ((103 * (v6 + v5 % 10)) >> 10);
  if (sub_4D26B4(a2, 1) != 0x7FFFFFFF)
  {
    v7 = sub_4D26B4(a2, 1);
    if (v7 < 0)
    {
      v8 = -5;
    }

    else
    {
      v8 = 5;
    }

    a3[10] |= 0x80000000;
    a3[228] = v7 / 10 + (((103 * (v8 + v7 % 10)) >> 15) & 1) + ((103 * (v8 + v7 % 10)) >> 10);
  }

  if (sub_4D26B4(a2, 2) != 0x7FFFFFFF)
  {
    v9 = sub_4D26B4(a2, 2);
    if (v9 < 0)
    {
      v10 = -5;
    }

    else
    {
      v10 = 5;
    }

    a3[10] |= 0x10000000u;
    a3[225] = v9 / 10 + (((103 * (v10 + v9 % 10)) >> 15) & 1) + ((103 * (v10 + v9 % 10)) >> 10);
  }

  if (sub_4D26B4(a2, 5) == 0x7FFFFFFF)
  {
    result = sub_4D26B4(a2, 4);
    if (result == 0x7FFFFFFF)
    {
      return result;
    }

    goto LABEL_21;
  }

  v12 = sub_4D26B4(a2, 5);
  if (v12 < 0)
  {
    v13 = -5;
  }

  else
  {
    v13 = 5;
  }

  a3[10] |= 0x40000000u;
  a3[227] = v12 / 10 + (((103 * (v13 + v12 % 10)) >> 15) & 1) + ((103 * (v13 + v12 % 10)) >> 10);
  result = sub_4D26B4(a2, 4);
  if (result != 0x7FFFFFFF)
  {
LABEL_21:
    result = sub_4D26B4(a2, 4);
    if (result < 0)
    {
      v14 = -5;
    }

    else
    {
      v14 = 5;
    }

    a3[10] |= 0x20000000u;
    a3[226] = result / 10 + (((103 * (v14 + result % 10)) >> 15) & 1) + ((103 * (v14 + result % 10)) >> 10);
  }

  return result;
}

void sub_EF4750(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (a2[1348] != a2[1349])
  {
    *(a3 + 40) |= 0x10000u;
    v5 = *(a3 + 832);
    if (!v5)
    {
      v6 = *(a3 + 8);
      v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
      if (v6)
      {
        v7 = *v7;
      }

      sub_14BC9E8(v7);
      v5 = v8;
      *(a3 + 832) = v8;
    }

    sub_EC9FFC(a2 + 1348, v5);
  }

  if (a2[1441] != a2[1442])
  {
    *(a3 + 40) |= 0x20000u;
    v9 = *(a3 + 840);
    if (!v9)
    {
      v10 = *(a3 + 8);
      v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
      if (v10)
      {
        v11 = *v11;
      }

      sub_14BC9E8(v11);
      v9 = v12;
      *(a3 + 840) = v12;
    }

    sub_EC9FFC(a2 + 1441, v9);
  }

  *(a3 + 40) |= 0x10000u;
  v13 = *(a3 + 832);
  if (!v13)
  {
    v14 = *(a3 + 8);
    v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
    if (v14)
    {
      v15 = *v15;
    }

    sub_14BC9E8(v15);
    *(a3 + 832) = v13;
  }

  *(v13 + 16) |= 0x400u;
  *(v13 + 104) = 1;
  *(a3 + 40) |= 0x20000u;
  v16 = *(a3 + 840);
  if (!v16)
  {
    v17 = *(a3 + 8);
    v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
    if (v17)
    {
      v18 = *v18;
    }

    sub_14BC9E8(v18);
    *(a3 + 840) = v16;
  }

  *(v16 + 16) |= 0x400u;
  *(v16 + 104) = 1;
}

void sub_EF48A0(_BYTE *a1, void *a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v9 = a2[1534];
  v10 = a2[1535];
  while (v9 != v10)
  {
    v13 = *(a5 + 240);
    if (v13 && (v14 = *(a5 + 232), v14 < *v13))
    {
      *(a5 + 232) = v14 + 1;
      v12 = *&v13[2 * v14 + 2];
    }

    else
    {
      sub_14BE174(*(a5 + 224));
      v12 = sub_19593CC(a5 + 224, v11);
    }

    sub_EC8AE4(v9, v12);
    v9 += 616;
  }

  v15 = a2[1290];
  v16 = a2[1291];
  while (v15 != v16)
  {
    if (sub_EF3EFC(a1, a2, v15))
    {
      sub_EF3FF0(a3, a4, v15, &__p);
      sub_EF76A4(a1, v15, &__p.__r_.__value_.__l.__data_, a5);
      v17 = a2[138];
      v18 = a2[139];
      while (v17 != v18)
      {
        v19 = *(v17 + 1912);
        v20 = *(v17 + 1920);
        if (v19 != v20)
        {
          do
          {
            if (sub_682B1C(v19) != -1 && sub_682B1C(v19) == *(v15 + 8))
            {
              if (v19 == *(v17 + 1920))
              {
                goto LABEL_15;
              }

              goto LABEL_25;
            }

            v19 += 448;
          }

          while (v19 != v20);
          v19 = v20;
          if (v20 == *(v17 + 1920))
          {
            goto LABEL_15;
          }

LABEL_25:
          sub_682A3C(v19, *(a5 + 232) - 1);
        }

LABEL_15:
        v17 += 2616;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v15 += 104;
  }
}

void sub_EF4A60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    v15 = a1;
    operator delete(__p);
    a1 = v15;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_EF4A88(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 1104);
  v7 = *(a2 + 1112);
  while (v6 != v7)
  {
    v10 = *(a3 + 72);
    if (v10 && (v11 = *(a3 + 64), v11 < *v10))
    {
      *(a3 + 64) = v11 + 1;
      v9 = *&v10[2 * v11 + 2];
    }

    else
    {
      v8 = sub_14BC220(*(a3 + 56));
      v9 = sub_19593CC(a3 + 56, v8);
    }

    sub_EF8C2C(a1, v6, v9);
    v6 += 654;
  }

  sub_EF82C8(a1);

  return sub_EF8EFC(a1, a2, a3);
}

void sub_EF4B5C(uint64_t *a1, void *a2, uint64_t a3)
{
  if (*(*a1 + 5) != 1)
  {
    return;
  }

  v5 = a1;
  sub_734CE0(v190);
  sub_4D1DDC(a2, &__p);
  v167 = &v179[-v177];
  if (v179 != v177)
  {
    v172 = 0;
    v6 = (a3 + 656);
    v171 = v5;
    v166 = a3;
    v168 = a2;
    do
    {
      v7 = *(a3 + 672);
      if (v7 && (v8 = *(a3 + 664), v8 < *v7))
      {
        *(a3 + 664) = v8 + 1;
        v175 = *&v7[2 * v8 + 2];
      }

      else
      {
        v9 = sub_14BD400(*v6);
        v175 = sub_19593CC(v6, v9);
      }

      v10 = sub_4D1F50(a2, v172);
      v11 = *v10;
      v12 = (*v10 - **v10);
      if (*v12 < 0x1Du)
      {
        v13 = 0;
      }

      else
      {
        v13 = v12[14];
        if (v13)
        {
          v13 = *(v11 + v13);
        }
      }

      v14 = *(v10 + 38);
      if (v14)
      {
        v13 = -v13;
      }

      *(v175 + 16) |= 4u;
      *(v175 + 80) = v13;
      v15 = (v11 - *v11);
      v173 = v10;
      if (*v15 >= 0x1Du && (v16 = v15[14]) != 0)
      {
        v17 = *(v11 + v16);
      }

      else
      {
        v17 = 0;
      }

      if (v17 >= 0)
      {
        v18 = v17;
      }

      else
      {
        v18 = -v17;
      }

      v19 = sub_335D84(v5[2], v18);
      v20 = v19 > 0xFFFFFFFEFFFFFFFFLL;
      if (!v19)
      {
        v20 = 1;
      }

      if (v19 <= 0xFFFFFFFEFFFFFFFFLL)
      {
        v21 = v19;
      }

      else
      {
        v21 = 0;
      }

      if (v14)
      {
        v22 = -v17;
      }

      else
      {
        v22 = v17;
      }

      v23 = v22 < 1 || v20;
      v24 = 0x1000000000000;
      if (!v23)
      {
        v24 = 0;
      }

      v170 = v24;
      if (v20)
      {
        v25 = 0;
      }

      else
      {
        v25 = v19 & 0xFFFF00000000;
      }

      v26 = (*v173 - **v173);
      if (*v26 >= 9u && (v27 = v26[4]) != 0)
      {
        v28 = *(*v173 + v27);
      }

      else
      {
        v28 = 0;
      }

      *(v175 + 16) |= 0x20u;
      *(v175 + 104) = v28;
      v29 = sub_3CF22C(v168);
      v30 = sub_762504((v29 + 16), v172);
      if (*v30 < 0)
      {
        v31 = -5;
      }

      else
      {
        v31 = 5;
      }

      v32 = *v30 / 10 + (((103 * (v31 + *v30 % 10)) >> 15) & 1) + ((103 * (v31 + *v30 % 10)) >> 10);
      v33 = *(v175 + 16);
      *(v175 + 16) = v33 | 0x40;
      *(v175 + 108) = v32;
      v34 = *v173;
      v35 = (*v173 - **v173);
      if (*v35 < 0x1Bu)
      {
        LODWORD(v36) = 0;
      }

      else
      {
        v36 = v35[13];
        if (v36)
        {
          LODWORD(v36) = *(v34 + v36);
        }
      }

      *(v175 + 16) = v33 | 0x240;
      *(v175 + 120) = v36;
      v37 = (v34 - *v34);
      if (*v37 >= 0x43u && (v38 = v37[33]) != 0)
      {
        v39 = *(v34 + v38);
      }

      else
      {
        v39 = 0;
      }

      *(v175 + 16) = v33 | 0x640;
      *(v175 + 124) = v39;
      v40 = sub_2B51D8(v5[2], *(v173 + 8) | (*(v173 + 18) << 32));
      v41 = (v40 - *v40);
      if (*v41 >= 0x2Fu && (v42 = v41[23]) != 0)
      {
        v43 = *(v40 + v42);
      }

      else
      {
        v43 = 32;
      }

      *(v175 + 16) |= 0x80u;
      *(v175 + 112) = v43;
      v44 = sub_311A24(*v173, *(v173 + 38));
      *(v175 + 16) |= 0x100u;
      *(v175 + 116) = v44;
      sub_EF70A8(v5, v173, v175);
      sub_2B7A20(v5[2], v25 | v21 | v170, &v186);
      sub_31C60C(&v186, &__p);
      if (v189)
      {
        if (v187 == v188)
        {
          v45 = 0;
        }

        else
        {
          v45 = -1;
        }

        v174 = v45;
        LODWORD(v46) = v45;
        v169 = v25 | v21;
        v47 = v184;
        v48 = v175;
        if (v183 != v45)
        {
LABEL_82:
          v58 = v179;
          while (1)
          {
            v59 = v6;
            v60 = &v58[4 * v47];
            v61 = *(v60 + 2);
            v62 = *(v60 + 3);
            v63 = sub_57A90(v181);
            v64 = v181 & ~(-1 << (v63 & 0xFE));
            v65 = sub_581D8(v64);
            v66 = sub_581D8(v64 >> 1);
            v67 = (v178 - *v178);
            v68 = *v67;
            if (v68 < 0xD)
            {
              break;
            }

            if (!v67[6])
            {
              goto LABEL_89;
            }

            v69 = *(&v178[v184 + 1] + v67[6] + *(v178 + v67[6]));
LABEL_96:
            if (v63 >= 2)
            {
              v73 = 1 << -(v63 >> 1);
            }

            else
            {
              v73 = -2;
            }

            if ((v66 * v73 + 4 * v62) >= 0xFFFFFFFE)
            {
              v74 = -2;
            }

            else
            {
              v74 = v66 * v73 + 4 * v62;
            }

            v75 = *(v48 + 40);
            if (v75 && (v76 = *(v48 + 32), v76 < *v75))
            {
              *(v48 + 32) = v76 + 1;
              v77 = *&v75[2 * v76 + 2];
            }

            else
            {
              v78 = sub_16F5828(*(v48 + 24));
              v77 = sub_19593CC(v48 + 24, v78);
            }

            v79 = exp(v74 * -6.28318531 / 4294967300.0 + 3.14159265);
            v80 = atan((v79 + -1.0 / v79) * 0.5);
            v81 = *(v77 + 40);
            *(v77 + 48) = v80 * 57.2957795;
            *(v77 + 56) = (v65 * v73 + 4 * v61) * 360.0 / 4294967300.0 + -180.0;
            *(v77 + 40) = v81 | 7;
            *(v77 + 64) = v69 / 100.0;
            v82 = v184;
            if (v185)
            {
              v47 = --v184;
              v58 = v179;
              v6 = v59;
              if ((v82 - 1) >= *v179)
              {
                v85 = *v177;
                v93 = *(v177 + 8) - *v177;
                v48 = v175;
                v87 = --v183;
                if (v183 < (v93 >> 3))
                {
                  goto LABEL_122;
                }

                goto LABEL_83;
              }

              v83 = &v179[4 * v82 + 4];
              v84 = &v179[4 * v47 + 4];
              v48 = v175;
              if (*v83 == *v84 && *(v83 + 1) == *(v84 + 1))
              {
                v85 = *v177;
                v86 = *(v177 + 8) - *v177;
                if (*v179 != 2 || v86 != 8)
                {
                  v47 = v82 - 2;
                  v87 = --v183;
                  v184 = v47;
                  if (v183 < (v86 >> 3))
                  {
                    while (1)
                    {
LABEL_122:
                      v94 = *(v85 + 8 * v87);
                      v181 = v94;
                      v95 = __p;
                      v202 = 0;
                      v203 = v94;
                      v200 = &v202;
                      v201 = &v203;
                      v96 = *(__p + 482) + 1;
                      *(__p + 482) = v96;
                      if (!*v95)
                      {
                        exception = __cxa_allocate_exception(0x40uLL);
                        v206 = *v201;
                        v204 = sub_7FCF0(1u);
                        v205 = v147;
                        sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v204, &v207);
                        if ((v209 & 0x80u) == 0)
                        {
                          v148 = &v207;
                        }

                        else
                        {
                          v148 = v207;
                        }

                        if ((v209 & 0x80u) == 0)
                        {
                          v149 = v209;
                        }

                        else
                        {
                          v149 = v208;
                        }

                        v150 = sub_2D390(exception, v148, v149);
                      }

                      if (*(v95 + 28) == v94)
                      {
                        ++v95[483];
                        v95[15] = v96;
                        v97 = v95[16];
                        if (!v97)
                        {
                          goto LABEL_223;
                        }

                        goto LABEL_145;
                      }

                      v98 = (v95 + 17);
                      if (*(v95 + 34) == v94)
                      {
                        goto LABEL_127;
                      }

                      if (*(v95 + 40) == v94)
                      {
                        break;
                      }

                      v98 = (v95 + 23);
                      if (*(v95 + 46) == v94)
                      {
LABEL_127:
                        ++v95[483];
                        *(v98 + 1) = v96;
                        v97 = *(v98 + 2);
                        if (!v97)
                        {
                          goto LABEL_223;
                        }

                        goto LABEL_145;
                      }

                      v99 = v95[21];
                      v100 = v95[18];
                      v101 = v95[15];
                      v102 = v95[24];
                      v97 = sub_2D52A4(*v95, 1, v94, 1);
                      if (v101 >= v96)
                      {
                        v103 = v96;
                      }

                      else
                      {
                        v103 = v101;
                      }

                      v104 = v100 >= v103;
                      if (v100 < v103)
                      {
                        v103 = v100;
                      }

                      v105 = 4 * (v101 < v96);
                      if (!v104)
                      {
                        v105 = 5;
                      }

                      if (v99 < v103)
                      {
                        v105 = 6;
                        v103 = v99;
                      }

                      if (v102 < v103)
                      {
                        v105 = 7;
                      }

                      v106 = &v95[3 * v105 + 2];
                      *v106 = v203;
                      *(v106 + 8) = v95[482];
                      *(v106 + 16) = v97;
                      v5 = v171;
                      v6 = v59;
                      v48 = v175;
                      if (v97)
                      {
                        goto LABEL_145;
                      }

                      sub_2B572C(&v200);
                      v107 = 0;
                      v5 = v171;
                      v6 = v59;
                      v48 = v175;
                      v108 = (&loc_1120530 + 1);
                      if (*(&loc_1120530 + 1) < 7u)
                      {
LABEL_151:
                        v182 = 0;
                        v110 = (v107 - *v107);
                        if (*v110 < 5u)
                        {
                          goto LABEL_154;
                        }

                        goto LABEL_152;
                      }

LABEL_146:
                      v109 = v108[3];
                      if (v109)
                      {
                        LODWORD(v109) = *(v107 + v109);
                      }

                      v182 = v109;
                      v110 = (v107 - *v107);
                      if (*v110 < 5u)
                      {
LABEL_154:
                        v112 = 0;
                        goto LABEL_155;
                      }

LABEL_152:
                      v111 = v110[2];
                      if (!v111)
                      {
                        goto LABEL_154;
                      }

                      v112 = v107 + v111 + *(v107 + v111);
LABEL_155:
                      v113 = &v112[4 * HIDWORD(v94) + 4 + *&v112[4 * HIDWORD(v94) + 4]];
                      v178 = v113;
                      v114 = &v113[-*v113];
                      v115 = *v114;
                      v58 = *(v114 + 3);
                      if (*(v114 + 3))
                      {
                        v58 = &v58[v113 + *&v58[v113]];
                      }

                      v179 = v58;
                      if (v115 >= 0xB && (v116 = *(v114 + 5)) != 0)
                      {
                        v117 = &v113[v116 + *&v113[v116]];
                      }

                      else
                      {
                        v117 = 0;
                      }

                      v180 = v117;
                      v118 = *v58;
                      v47 = *v58 - 2;
                      v184 = v47;
                      v119 = &v58[4 * (v118 - 1) + 4];
                      v120 = &v58[4 * v47 + 4];
                      if (*v119 == *v120 && *(v119 + 1) == *(v120 + 1))
                      {
                        v47 = v118 - 3;
                        v87 = --v183;
                        v184 = v47;
                        v85 = *v177;
                        if (v183 < ((*(v177 + 8) - *v177) >> 3))
                        {
                          continue;
                        }
                      }

                      goto LABEL_83;
                    }

                    ++v95[483];
                    v95[21] = v96;
                    v97 = v95[22];
                    if (!v97)
                    {
LABEL_223:
                      v151 = __cxa_allocate_exception(0x40uLL);
                      v206 = *v201;
                      v204 = sub_7FCF0(1u);
                      v205 = v152;
                      sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v204, &v207);
                      if ((v209 & 0x80u) == 0)
                      {
                        v153 = &v207;
                      }

                      else
                      {
                        v153 = v207;
                      }

                      if ((v209 & 0x80u) == 0)
                      {
                        v154 = v209;
                      }

                      else
                      {
                        v154 = v208;
                      }

                      v155 = sub_2D390(v151, v153, v154);
                    }

LABEL_145:
                    v107 = (v97 + *v97);
                    v108 = (v107 - *v107);
                    if (*v108 < 7u)
                    {
                      goto LABEL_151;
                    }

                    goto LABEL_146;
                  }
                }
              }

LABEL_83:
              if (v183 == v46)
              {
LABEL_84:
                if (v47 == v174)
                {
                  goto LABEL_74;
                }
              }
            }

            else
            {
              v47 = ++v184;
              v58 = v179;
              v6 = v59;
              if ((v82 + 1) >= *v179)
              {
                v90 = *v177;
                v121 = *(v177 + 8) - *v177;
                v48 = v175;
                v92 = ++v183;
                if (v183 < (v121 >> 3))
                {
                  goto LABEL_166;
                }

                goto LABEL_83;
              }

              v88 = &v179[4 * v82 + 4];
              v89 = &v179[4 * v47 + 4];
              v48 = v175;
              if (*v88 != *v89)
              {
                goto LABEL_83;
              }

              if (*(v88 + 1) != *(v89 + 1))
              {
                goto LABEL_83;
              }

              v90 = *v177;
              v91 = *(v177 + 8) - *v177;
              if (*v179 == 2 && v91 == 8)
              {
                goto LABEL_83;
              }

              v47 = v82 + 2;
              v92 = ++v183;
              v184 = v47;
              if (v183 >= (v91 >> 3))
              {
                goto LABEL_83;
              }

              while (1)
              {
LABEL_166:
                v122 = *(v90 + 8 * v92);
                v181 = v122;
                v123 = __p;
                v202 = 0;
                v203 = v122;
                v200 = &v202;
                v201 = &v203;
                v124 = *(__p + 482) + 1;
                *(__p + 482) = v124;
                if (!*v123)
                {
                  v156 = __cxa_allocate_exception(0x40uLL);
                  v206 = *v201;
                  v204 = sub_7FCF0(1u);
                  v205 = v157;
                  sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v204, &v207);
                  if ((v209 & 0x80u) == 0)
                  {
                    v158 = &v207;
                  }

                  else
                  {
                    v158 = v207;
                  }

                  if ((v209 & 0x80u) == 0)
                  {
                    v159 = v209;
                  }

                  else
                  {
                    v159 = v208;
                  }

                  v160 = sub_2D390(v156, v158, v159);
                }

                if (*(v123 + 28) == v122)
                {
                  ++v123[483];
                  v123[15] = v124;
                  v125 = v123[16];
                  if (!v125)
                  {
                    goto LABEL_237;
                  }

                  goto LABEL_189;
                }

                v126 = (v123 + 17);
                if (*(v123 + 34) == v122)
                {
                  goto LABEL_171;
                }

                if (*(v123 + 40) == v122)
                {
                  ++v123[483];
                  v123[21] = v124;
                  v125 = v123[22];
                  if (!v125)
                  {
LABEL_237:
                    v161 = __cxa_allocate_exception(0x40uLL);
                    v206 = *v201;
                    v204 = sub_7FCF0(1u);
                    v205 = v162;
                    sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v204, &v207);
                    if ((v209 & 0x80u) == 0)
                    {
                      v163 = &v207;
                    }

                    else
                    {
                      v163 = v207;
                    }

                    if ((v209 & 0x80u) == 0)
                    {
                      v164 = v209;
                    }

                    else
                    {
                      v164 = v208;
                    }

                    v165 = sub_2D390(v161, v163, v164);
                  }

LABEL_189:
                  v135 = (v125 + *v125);
                  v136 = (v135 - *v135);
                  if (*v136 < 7u)
                  {
                    goto LABEL_195;
                  }

                  goto LABEL_190;
                }

                v126 = (v123 + 23);
                if (*(v123 + 46) == v122)
                {
LABEL_171:
                  ++v123[483];
                  *(v126 + 1) = v124;
                  v125 = *(v126 + 2);
                  if (!v125)
                  {
                    goto LABEL_237;
                  }

                  goto LABEL_189;
                }

                v127 = v123[21];
                v128 = v123[18];
                v129 = v123[15];
                v130 = v123[24];
                v125 = sub_2D52A4(*v123, 1, v122, 1);
                if (v129 >= v124)
                {
                  v131 = v124;
                }

                else
                {
                  v131 = v129;
                }

                v132 = v128 >= v131;
                if (v128 < v131)
                {
                  v131 = v128;
                }

                v133 = 4 * (v129 < v124);
                if (!v132)
                {
                  v133 = 5;
                }

                if (v127 < v131)
                {
                  v133 = 6;
                  v131 = v127;
                }

                if (v130 < v131)
                {
                  v133 = 7;
                }

                v134 = &v123[3 * v133 + 2];
                *v134 = v203;
                *(v134 + 8) = v123[482];
                *(v134 + 16) = v125;
                v5 = v171;
                v6 = v59;
                v48 = v175;
                if (v125)
                {
                  goto LABEL_189;
                }

                sub_2B572C(&v200);
                v135 = 0;
                v5 = v171;
                v6 = v59;
                v48 = v175;
                v136 = (&loc_1120530 + 1);
                if (*(&loc_1120530 + 1) < 7u)
                {
LABEL_195:
                  v182 = 0;
                  v138 = (v135 - *v135);
                  if (*v138 < 5u)
                  {
                    goto LABEL_198;
                  }

                  goto LABEL_196;
                }

LABEL_190:
                v137 = v136[3];
                if (v137)
                {
                  LODWORD(v137) = *(v135 + v137);
                }

                v182 = v137;
                v138 = (v135 - *v135);
                if (*v138 < 5u)
                {
                  goto LABEL_198;
                }

LABEL_196:
                v139 = v138[2];
                if (v139)
                {
                  v140 = v135 + v139 + *(v135 + v139);
                  goto LABEL_199;
                }

LABEL_198:
                v140 = 0;
LABEL_199:
                v141 = &v140[4 * HIDWORD(v122) + 4 + *&v140[4 * HIDWORD(v122) + 4]];
                v178 = v141;
                v142 = &v141[-*v141];
                v143 = *v142;
                v58 = *(v142 + 3);
                if (*(v142 + 3))
                {
                  v58 = &v58[v141 + *&v58[v141]];
                }

                v179 = v58;
                if (v143 >= 0xB && (v144 = *(v142 + 5)) != 0)
                {
                  v145 = &v141[v144 + *&v141[v144]];
                }

                else
                {
                  v145 = 0;
                }

                v180 = v145;
                v47 = 1;
                v184 = 1;
                if (*(v58 + 2) != *(v58 + 4))
                {
                  goto LABEL_83;
                }

                if (*(v58 + 3) != *(v58 + 5))
                {
                  break;
                }

                v47 = 2;
                v92 = ++v183;
                v184 = 2;
                v90 = *v177;
                if (v183 >= ((*(v177 + 8) - *v177) >> 3))
                {
                  goto LABEL_83;
                }
              }

              v47 = 1;
              if (v183 == v46)
              {
                goto LABEL_84;
              }
            }
          }

          if (v68 >= 0xB)
          {
LABEL_89:
            if (v67[5])
            {
              v70 = *(v178 + 2 * v184 + v67[5] + *(v178 + v67[5]) + 4);
              if (v70 != 0xFFFF)
              {
                v71 = v67[4];
                if (v71)
                {
                  v72 = *(v178 + v71);
                }

                else
                {
                  v72 = 0;
                }

                v69 = v182 + v70 + v72;
                goto LABEL_96;
              }
            }
          }

          v69 = 0x7FFFFFFF;
          goto LABEL_96;
        }
      }

      else if (v187 == v188)
      {
        v174 = 0;
        LODWORD(v46) = 0;
        v169 = v25 | v21;
        v47 = v184;
        v48 = v175;
        if (v183)
        {
          goto LABEL_82;
        }
      }

      else
      {
        v49 = *(v188 - 1);
        v50 = sub_2B4D24(v186, v49, 0);
        v51 = &v50[*&v50[-*v50 + 4]];
        v52 = &v51[4 * HIDWORD(v49) + *v51];
        v53 = (v52 + 4 + *(v52 + 4));
        v46 = (v188 - v187) >> 3;
        v54 = (v53 + *(v53 - *v53 + 6));
        v174 = *(v54 + *v54);
        v169 = v25 | v21;
        v47 = v184;
        v48 = v175;
        if (v183 != v46)
        {
          goto LABEL_82;
        }
      }

      if (v47 != v174)
      {
        goto LABEL_82;
      }

LABEL_74:
      a3 = v166;
      a2 = v168;
      if (!v172)
      {
        v55 = sub_4D2148(v168, 0);
        *(v175 + 16) |= 8u;
        *(v175 + 88) = v55 / 1000000000.0;
      }

      sub_4D1DDC(v168, &__p);
      if (v172 == &v179[~v177])
      {
        v56 = sub_4D21C8(v168, v172);
        *(v175 + 16) |= 0x10u;
        *(v175 + 96) = v56 / 1000000000.0;
      }

      sub_EF6338(v5, v173, v169 | v170, v175);
      sub_EF728C(v5, v168, v172, v169 | v170, v190, v166);
      *&v57 = sub_31BF20(&v186, &__p).n128_u64[0];
      sub_EF692C(v5, v173, v169 | v170, &__p, v175, v57);
      if (__p)
      {
        v177 = __p;
        operator delete(__p);
      }

      if (v187)
      {
        v188 = v187;
        operator delete(v187);
      }

      ++v172;
    }

    while (v172 != v167);
  }

  if (v199 < 0)
  {
    operator delete(v198);
    if ((v197 & 0x80000000) == 0)
    {
LABEL_5:
      if ((v195 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

LABEL_213:
      operator delete(v194);
      if ((v193 & 0x80000000) == 0)
      {
LABEL_7:
        if ((v191 & 0x80000000) == 0)
        {
          return;
        }

LABEL_215:
        operator delete(v190[0]);
        return;
      }

      goto LABEL_214;
    }
  }

  else if ((v197 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(v196);
  if (v195 < 0)
  {
    goto LABEL_213;
  }

LABEL_6:
  if ((v193 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

LABEL_214:
  operator delete(v192);
  if (v191 < 0)
  {
    goto LABEL_215;
  }
}

void sub_EF5CD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_3E5388(&a32);
  _Unwind_Resume(a1);
}

void sub_EF5DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 10152);
  for (i = *(a2 + 10160); v3 != i; v3 += 616)
  {
    v9 = *(v3 + 4);
    if (v9 == 8)
    {
      continue;
    }

    v10 = sub_ECB2E4(v9);
    v11 = *(a3 + 408);
    if (v11 && (v12 = *(a3 + 400), v12 < *v11))
    {
      *(a3 + 400) = v12 + 1;
      v13 = *&v11[2 * v12 + 2];
      v14 = *(v13 + 40);
      if (!v14)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v15 = sub_14BBCE8(*(a3 + 392));
      v13 = sub_19593CC(a3 + 392, v15);
      v14 = *(v13 + 40);
      if (!v14)
      {
        goto LABEL_14;
      }
    }

    v16 = *(v13 + 32);
    if (v16 >= *v14)
    {
LABEL_14:
      v18 = sub_14BBC70(*(v13 + 24));
      v17 = sub_19593CC(v13 + 24, v18);
      goto LABEL_15;
    }

    *(v13 + 32) = v16 + 1;
    v17 = *&v14[2 * v16 + 2];
LABEL_15:
    v19 = *(v3 + 8) / 100.0;
    *(v13 + 16) |= 1u;
    *(v13 + 48) = v19;
    v17[4] |= 3u;
    v17[6] = 1;
    v17[7] = v10;
    v20 = *(a3 + 408);
    if (v20 && (v21 = *(a3 + 400), v21 < *v20))
    {
      *(a3 + 400) = v21 + 1;
      v22 = *&v20[2 * v21 + 2];
      v23 = *(v22 + 40);
      if (!v23)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v24 = sub_14BBCE8(*(a3 + 392));
      v22 = sub_19593CC(a3 + 392, v24);
      v23 = *(v22 + 40);
      if (!v23)
      {
        goto LABEL_3;
      }
    }

    v25 = *(v22 + 32);
    if (v25 < *v23)
    {
      *(v22 + 32) = v25 + 1;
      v7 = *&v23[2 * v25 + 2];
      goto LABEL_4;
    }

LABEL_3:
    v6 = sub_14BBC70(*(v22 + 24));
    v7 = sub_19593CC(v22 + 24, v6);
LABEL_4:
    v8 = *(v3 + 16) / 100.0;
    *(v22 + 16) |= 1u;
    *(v22 + 48) = v8;
    v7[4] |= 3u;
    v7[6] = 2;
    v7[7] = v10;
  }
}

_DWORD *sub_EF5FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_4D1E40(a2, &v20);
  v5 = v20;
  for (i = v21; v5 != i; v5 += 24)
  {
    v18 = *(a3 + 552);
    if (v18 && (v19 = *(a3 + 544), v19 < *v18))
    {
      *(a3 + 544) = v19 + 1;
      result = *&v18[2 * v19 + 2];
    }

    else
    {
      v7 = sub_14BD644(*(a3 + 536));
      result = sub_19593CC(a3 + 536, v7);
    }

    v8 = *(v5 + 8);
    v9 = v8 / 100;
    v10 = v8 % 100;
    if (v8 < 0)
    {
      v11 = -50;
    }

    else
    {
      v11 = 50;
    }

    v12 = v9 + ((5243 * (v11 + v10)) >> 19) + ((5243 * (v11 + v10)) >> 31);
    v13 = result[4];
    result[4] = v13 | 1;
    v14 = *(v5 + 16);
    v15 = v14 / 10;
    v16 = v14 % 10;
    if (v14 < 0)
    {
      v17 = -5;
    }

    else
    {
      v17 = 5;
    }

    result[4] = v13 | 3;
    result[6] = v12;
    result[7] = v15 + (((103 * (v17 + v16)) >> 15) & 1) + ((103 * (v17 + v16)) >> 10);
  }

  return result;
}

void sub_EF6160(_BYTE *a1, void *a2, uint64_t a3)
{
  if (a1[84] != 1 || *(*a1 + 39) != 1)
  {
    return;
  }

  v6 = a2[144];
  v7 = a2[145];
  while (v6 != v7)
  {
    v8 = *(a3 + 216);
    if (v8 && (v9 = *(a3 + 208), v9 < *v8))
    {
      *(a3 + 208) = v9 + 1;
      v10 = *&v8[2 * v9 + 2];
      v11 = *a1;
      *(v10 + 16) |= 1u;
      v12 = *(v10 + 48);
      if (v12)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v13 = sub_14BD508(*(a3 + 200));
      v10 = sub_19593CC(a3 + 200, v13);
      v11 = *a1;
      *(v10 + 16) |= 1u;
      v12 = *(v10 + 48);
      if (v12)
      {
        goto LABEL_14;
      }
    }

    v14 = *(v10 + 8);
    v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
    if (v14)
    {
      v15 = *v15;
    }

    v12 = sub_16F5CD4(v15);
    *(v10 + 48) = v12;
LABEL_14:
    sub_ECAE3C(v6, v11, v12);
    v16 = *(v6 + 152);
    v17 = *(v6 + 160);
    while (v16 != v17)
    {
      v21 = *(v10 + 40);
      if (v21 && (v22 = *(v10 + 32), v22 < *v21))
      {
        *(v10 + 32) = v22 + 1;
        v19 = *&v21[2 * v22 + 2];
      }

      else
      {
        v18 = sub_14BBAAC(*(v10 + 24));
        v19 = sub_19593CC(v10 + 24, v18);
      }

      v19[2].i32[0] |= 0xCu;
      v20 = *v16++;
      v19[4] = vmovn_s64(v20);
    }

    v6 += 176;
  }

  v23 = a2[147];
  if (v23 != a2[148])
  {
    *(a3 + 40) |= 1u;
    v24 = *(a3 + 8);
    v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
    if (v24)
    {
      v25 = *v25;
    }

    sub_194EA1C((a3 + 704), v23, v25);
  }
}

void sub_EF6338(uint64_t a1, int **a2, uint64_t a3, uint64_t a4)
{
  v8 = a2[1];
  if (v8)
  {
    v9 = (v8 - *v8);
    if (*v9 >= 0x11u)
    {
      v10 = v9[8];
      if (v10)
      {
        if ((*(v8 + v10) & 4) != 0)
        {
          v12 = *(a4 + 48);
          v11 = (a4 + 48);
          if (v12 == *(a4 + 52))
          {
            v13 = v12 + 1;
            sub_1958E5C((a4 + 48), v12 + 1);
            *(*(a4 + 56) + 4 * v12) = 13;
          }

          else
          {
            *(*(a4 + 56) + 4 * v12) = 13;
            v13 = v12 + 1;
          }

          *v11 = v13;
        }
      }
    }
  }

  v14 = (*a2 - **a2);
  if (*v14 >= 0x9Bu)
  {
    v15 = v14[77];
    if (v15)
    {
      if (*(*a2 + v15 + 1))
      {
        v16 = *(a4 + 48);
        if (v16 == *(a4 + 52))
        {
          v17 = v16 + 1;
          sub_1958E5C((a4 + 48), v16 + 1);
          *(*(a4 + 56) + 4 * v16) = 1;
        }

        else
        {
          *(*(a4 + 56) + 4 * v16) = 1;
          v17 = v16 + 1;
        }

        *(a4 + 48) = v17;
      }
    }
  }

  v18 = sub_2B51D8(*(a1 + 16), a3 & 0xFFFFFFFFFFFFLL);
  v19 = (v18 - *v18);
  if (*v19 >= 0x9Bu)
  {
    v20 = v19[77];
    if (v20)
    {
      v21 = *(v18 + v20);
      v22 = v21 & 3;
      v23 = v21 & 0xE0000;
      if (v22 && v23 == 0)
      {
        v25 = *(a4 + 48);
        if (v25 == *(a4 + 52))
        {
          v26 = v25 + 1;
          sub_1958E5C((a4 + 48), v25 + 1);
          *(*(a4 + 56) + 4 * v25) = 8;
        }

        else
        {
          *(*(a4 + 56) + 4 * v25) = 8;
          v26 = v25 + 1;
        }

        *(a4 + 48) = v26;
      }
    }
  }

  v27 = *a2;
  v28 = **a2;
  v29 = -v28;
  v30 = (*a2 - v28);
  if (*v30 >= 0x9Bu)
  {
    v31 = v30[77];
    if (v31)
    {
      if ((*(v27 + v31 + 2) & 2) != 0)
      {
        v32 = *(a4 + 48);
        if (v32 == *(a4 + 52))
        {
          v33 = v32 + 1;
          sub_1958E5C((a4 + 48), v32 + 1);
          *(*(a4 + 56) + 4 * v32) = 9;
          v27 = *a2;
        }

        else
        {
          *(*(a4 + 56) + 4 * v32) = 9;
          v33 = v32 + 1;
        }

        *(a4 + 48) = v33;
        v29 = -*v27;
      }
    }
  }

  if (*(v27 + v29) >= 0x9Bu && *(v27 + v29 + 154) && (*(v27 + *(v27 + v29 + 154) + 1) & 8) != 0)
  {
    v34 = *(a4 + 48);
    if (v34 == *(a4 + 52))
    {
      v35 = v34 + 1;
      sub_1958E5C((a4 + 48), v34 + 1);
      *(*(a4 + 56) + 4 * v34) = 5;
      v27 = *a2;
    }

    else
    {
      *(*(a4 + 56) + 4 * v34) = 5;
      v35 = v34 + 1;
    }

    *(a4 + 48) = v35;
    v29 = -*v27;
  }

  if (*(v27 + v29) >= 0x9Bu && *(v27 + v29 + 154) && (*(v27 + *(v27 + v29 + 154) + 1) & 4) != 0)
  {
    v36 = *(a4 + 48);
    if (v36 == *(a4 + 52))
    {
      v37 = v36 + 1;
      sub_1958E5C((a4 + 48), v36 + 1);
      *(*(a4 + 56) + 4 * v36) = 6;
      v27 = *a2;
    }

    else
    {
      *(*(a4 + 56) + 4 * v36) = 6;
      v37 = v36 + 1;
    }

    *(a4 + 48) = v37;
    v29 = -*v27;
  }

  v38 = (v27 + v29);
  if (*v38 >= 0x9Bu)
  {
    v39 = v38[77];
    if (v39)
    {
      if ((*(v27 + v39) & 8) != 0)
      {
        v40 = *(a4 + 48);
        if (v40 == *(a4 + 52))
        {
          v41 = v40 + 1;
          sub_1958E5C((a4 + 48), v40 + 1);
          *(*(a4 + 56) + 4 * v40) = 7;
        }

        else
        {
          *(*(a4 + 56) + 4 * v40) = 7;
          v41 = v40 + 1;
        }

        *(a4 + 48) = v41;
      }
    }
  }

  v42 = sub_2B51D8(*(a1 + 16), a3 & 0xFFFFFFFFFFFFLL);
  v43 = (v42 - *v42);
  v44 = *v43;
  if ((a3 & 0xFF000000000000) != 0)
  {
    if (v44 < 0x9B)
    {
      goto LABEL_67;
    }

    v45 = v43[77];
    if (!v45 || (*(v42 + v45) & 2) == 0)
    {
      goto LABEL_67;
    }
  }

  else
  {
    if (v44 < 0x9B)
    {
      goto LABEL_67;
    }

    v46 = v43[77];
    if (!v46 || (*(v42 + v46) & 1) == 0)
    {
      goto LABEL_67;
    }
  }

  v47 = *(a4 + 48);
  if (v47 == *(a4 + 52))
  {
    v48 = v47 + 1;
    sub_1958E5C((a4 + 48), v47 + 1);
    *(*(a4 + 56) + 4 * v47) = 2;
  }

  else
  {
    *(*(a4 + 56) + 4 * v47) = 2;
    v48 = v47 + 1;
  }

  *(a4 + 48) = v48;
LABEL_67:
  v49 = sub_2B51D8(*(a1 + 16), a3 & 0xFFFFFFFFFFFFLL);
  v50 = (v49 - *v49);
  v51 = *v50;
  if ((a3 & 0xFF000000000000) != 0)
  {
    if (v51 < 0x9B)
    {
      goto LABEL_79;
    }

    v52 = v50[77];
    if (!v52 || (*(v49 + v52) & 1) == 0)
    {
      goto LABEL_79;
    }
  }

  else
  {
    if (v51 < 0x9B)
    {
      goto LABEL_79;
    }

    v53 = v50[77];
    if (!v53 || (*(v49 + v53) & 2) == 0)
    {
      goto LABEL_79;
    }
  }

  v54 = *(a4 + 48);
  if (v54 == *(a4 + 52))
  {
    v55 = v54 + 1;
    sub_1958E5C((a4 + 48), v54 + 1);
    *(*(a4 + 56) + 4 * v54) = 3;
  }

  else
  {
    *(*(a4 + 56) + 4 * v54) = 3;
    v55 = v54 + 1;
  }

  *(a4 + 48) = v55;
LABEL_79:
  if (sub_2B3988(*(a1 + 16), a3) >= 2)
  {
    v56 = *(a4 + 48);
    if (v56 == *(a4 + 52))
    {
      v57 = v56 + 1;
      sub_1958E5C((a4 + 48), v56 + 1);
      *(*(a4 + 56) + 4 * v56) = 12;
    }

    else
    {
      *(*(a4 + 56) + 4 * v56) = 12;
      v57 = v56 + 1;
    }

    *(a4 + 48) = v57;
  }

  v58 = sub_2B51D8(*(a1 + 16), a3 & 0xFFFFFFFFFFFFLL);
  v59 = (v58 - *v58);
  if (*v59 >= 0x9Bu)
  {
    v60 = v59[77];
    if (v60)
    {
      if ((*(v58 + v60 + 4) & 4) != 0)
      {
        v61 = *(a4 + 48);
        if (v61 == *(a4 + 52))
        {
          v62 = v61 + 1;
          sub_1958E5C((a4 + 48), v61 + 1);
          *(*(a4 + 56) + 4 * v61) = 14;
        }

        else
        {
          *(*(a4 + 56) + 4 * v61) = 14;
          v62 = v61 + 1;
        }

        *(a4 + 48) = v62;
      }
    }
  }

  v63 = (*a2 - **a2);
  if (*v63 >= 0x9Bu)
  {
    v64 = v63[77];
    if (v64)
    {
      if ((*(*a2 + v64) & 4) != 0)
      {
        v65 = *(a4 + 48);
        if (v65 == *(a4 + 52))
        {
          v66 = v65 + 1;
          sub_1958E5C((a4 + 48), v65 + 1);
          *(*(a4 + 56) + 4 * v65) = 15;
        }

        else
        {
          *(*(a4 + 56) + 4 * v65) = 15;
          v66 = v65 + 1;
        }

        *(a4 + 48) = v66;
      }
    }
  }
}

void sub_EF692C(uint64_t a1, int **a2, uint64_t a3, uint64_t *a4, uint64_t a5, double a6)
{
  v11 = *a2;
  v12 = (*a2 - **a2);
  v13 = *v12;
  if (*(a2 + 38))
  {
    if (v13 >= 0x4D)
    {
      v14 = v12[38];
      if (v14)
      {
        if ((v11[v14] & 8) != 0 || (*&v11[v14] & 0x20) != 0)
        {
          goto LABEL_14;
        }
      }
    }
  }

  else if (v13 >= 0x4D)
  {
    v15 = v12[38];
    if (v15)
    {
      if ((v11[v15] & 4) != 0 || (*&v11[v15] & 0x10) != 0)
      {
        goto LABEL_14;
      }
    }
  }

  sub_91A920(*(a1 + 16), a3, &v87);
  v16 = v87;
  v17 = v88;
  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v16 == v17)
  {
    return;
  }

LABEL_14:
  *(a5 + 16) |= 2u;
  v18 = *(a5 + 72);
  if (!v18)
  {
    v19 = *(a5 + 8);
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    v18 = sub_14BD364(v20);
    *(a5 + 72) = v18;
  }

  v21 = *a2;
  v22 = *(a2 + 38);
  v23 = (*a2 - **a2);
  v24 = *v23;
  if (*(a2 + 38))
  {
    if (v24 >= 0x4D)
    {
      v25 = v23[38];
      if (!v25)
      {
        goto LABEL_27;
      }

      v26 = 8;
LABEL_25:
      LOBYTE(v25) = (*(v21 + v25) & v26) != 0;
      goto LABEL_27;
    }
  }

  else if (v24 >= 0x4D)
  {
    v25 = v23[38];
    if (!v25)
    {
      goto LABEL_27;
    }

    v26 = 4;
    goto LABEL_25;
  }

  LOBYTE(v25) = 0;
LABEL_27:
  *(v18 + 16) |= 1u;
  *(v18 + 48) = v25;
  v27 = (v21 - *v21);
  v28 = *v27;
  if (v22)
  {
    if (v28 < 0x4D || !v27[38] || (*(v21 + v27[38]) & 0x20) == 0)
    {
      goto LABEL_70;
    }
  }

  else if (v28 < 0x4D || !v27[38] || (*(v21 + v27[38]) & 0x10) == 0)
  {
    goto LABEL_70;
  }

  *(a5 + 16) |= 2u;
  v29 = *(v18 + 40);
  if (v29 && (v30 = *(v18 + 32), v30 < *v29))
  {
    *(v18 + 32) = v30 + 1;
    v31 = *&v29[2 * v30 + 2];
  }

  else
  {
    v32 = v18;
    sub_14BD2E4(*(v18 + 24));
    v31 = sub_19593CC(v32 + 24, v33);
  }

  v34 = *(v31 + 16);
  *(v31 + 48) = 2;
  *(v31 + 16) = v34 | 9;
  v35 = *(v31 + 24);
  if (!v35)
  {
    v36 = *(v31 + 8);
    v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
    if (v36)
    {
      v37 = *v37;
    }

    v35 = sub_16F5828(v37);
    *(v31 + 24) = v35;
  }

  v38 = a4[1];
  LODWORD(a6) = *(v38 - 8);
  v39 = exp(*&a6 * -6.28318531 / 4294967300.0 + 3.14159265);
  v40 = -1.0;
  v41 = atan((v39 + -1.0 / v39) * 0.5) * 57.2957795;
  *(v35 + 40) |= 1u;
  *(v35 + 48) = v41;
  *(v31 + 16) |= 1u;
  LODWORD(v41) = *(v38 - 12);
  *(v35 + 40) |= 2u;
  *(v35 + 56) = *&v41 * 360.0 / 4294967300.0 + -180.0;
  *(v31 + 16) |= 1u;
  v42 = *(v38 - 4) / 100.0;
  *(v35 + 40) |= 4u;
  *(v35 + 64) = v42;
  v43 = *a2;
  v44 = (*a2 - **a2);
  v45 = *v44;
  if (*(a2 + 38))
  {
    if (v45 < 0x11)
    {
      goto LABEL_52;
    }

    v46 = v44[8];
    if (!v44[8])
    {
      goto LABEL_52;
    }
  }

  else
  {
    if (v45 < 0xF)
    {
      goto LABEL_52;
    }

    v46 = v44[7];
    if (!v44[7])
    {
      goto LABEL_52;
    }
  }

  v47 = *(v43 + v46);
  if (v47)
  {
    v40 = v47;
  }

  else
  {
    v40 = -1.0;
  }

LABEL_52:
  if (*&v40 > -1 && ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || *&v40 == 0)
  {
    v50 = -1.0;
    if (*(a2 + 38))
    {
      if (v45 < 0x11 || (v51 = v44[8]) == 0)
      {
LABEL_68:
        v52 = *(v31 + 16) | 4;
        *(v31 + 16) = v52;
        *(v31 + 40) = v50 / 3.6;
        goto LABEL_69;
      }
    }

    else
    {
      if (v45 < 0xF)
      {
        goto LABEL_68;
      }

      v51 = v44[7];
      if (!v51)
      {
        goto LABEL_68;
      }
    }

    v53 = *(v43 + v51);
    v50 = v53;
    if (!v53)
    {
      v50 = -1.0;
    }

    goto LABEL_68;
  }

  v52 = *(v31 + 16);
LABEL_69:
  *(v31 + 16) = v52 | 2;
  *(v31 + 32) = 0x3FF0000000000000;
LABEL_70:
  sub_91A920(*(a1 + 16), a3, &v87);
  v54 = v87;
  v55 = v88;
  if (v87 != v88)
  {
    while (1)
    {
      *(a5 + 16) |= 2u;
      v56 = *(a5 + 72);
      if (v56)
      {
        v57 = *(v56 + 40);
        if (!v57)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v58 = *(a5 + 8);
        v59 = (v58 & 0xFFFFFFFFFFFFFFFCLL);
        if (v58)
        {
          v59 = *v59;
        }

        v56 = sub_14BD364(v59);
        *(a5 + 72) = v56;
        v57 = *(v56 + 40);
        if (!v57)
        {
          goto LABEL_79;
        }
      }

      v60 = *(v56 + 32);
      if (v60 < *v57)
      {
        *(v56 + 32) = v60 + 1;
        v61 = *&v57[2 * v60 + 2];
        goto LABEL_80;
      }

LABEL_79:
      sub_14BD2E4(*(v56 + 24));
      v61 = sub_19593CC(v56 + 24, v62);
LABEL_80:
      v63 = *(v61 + 16);
      *(v61 + 16) = v63 | 8;
      *(v61 + 48) = 1;
      v64 = *a2;
      v65 = (*a2 - **a2);
      v66 = *v65;
      v67 = -1.0;
      if (*(a2 + 38))
      {
        if (v66 < 0x11)
        {
          goto LABEL_88;
        }

        v68 = v65[8];
        if (!v65[8])
        {
          goto LABEL_88;
        }
      }

      else
      {
        if (v66 < 0xF)
        {
          goto LABEL_88;
        }

        v68 = v65[7];
        if (!v65[7])
        {
          goto LABEL_88;
        }
      }

      v69 = *(v64 + v68);
      v67 = v69;
      if (!v69)
      {
        v67 = -1.0;
      }

LABEL_88:
      if ((v67 < 0.0 || ((*&v67 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && *&v67 != 0)
      {
        goto LABEL_105;
      }

      v72 = -1.0;
      if (*(a2 + 38))
      {
        if (v66 >= 0x11)
        {
          v73 = v65[8];
          if (v73)
          {
            goto LABEL_102;
          }
        }
      }

      else if (v66 >= 0xF)
      {
        v73 = v65[7];
        if (v73)
        {
LABEL_102:
          v74 = *(v64 + v73);
          v72 = v74;
          if (!v74)
          {
            v72 = -1.0;
          }
        }
      }

      *(v61 + 16) = v63 | 0xC;
      *(v61 + 40) = v72 / 3.6;
LABEL_105:
      v75 = sub_4A580C(v54, a4);
      v85 = v75;
      v86 = v76;
      *(v61 + 16) |= 1u;
      v77 = *(v61 + 24);
      if (v77)
      {
        v78 = HIDWORD(v75);
      }

      else
      {
        v79 = *(v61 + 8);
        v80 = (v79 & 0xFFFFFFFFFFFFFFFCLL);
        if (v79)
        {
          v80 = *v80;
        }

        v77 = sub_16F5828(v80);
        *(v61 + 24) = v77;
        LODWORD(v78) = HIDWORD(v85);
      }

      v81 = exp(v78 * -6.28318531 / 4294967300.0 + 3.14159265);
      v82 = atan((v81 + -1.0 / v81) * 0.5) * 57.2957795;
      *(v77 + 40) |= 1u;
      *(v77 + 48) = v82;
      *(v61 + 16) |= 1u;
      LODWORD(v82) = v85;
      *(v77 + 40) |= 2u;
      *(v77 + 56) = *&v82 * 360.0 / 4294967300.0 + -180.0;
      v83 = v86;
      if (v86 != 0x7FFFFFFF)
      {
        *(v61 + 16) |= 1u;
        *(v77 + 40) |= 4u;
        *(v77 + 64) = v83 / 100.0;
      }

      sub_47190(&v85, a4);
      *(v61 + 16) |= 2u;
      *(v61 + 32) = v84;
      v54 += 3;
      if (v54 == v55)
      {
        v54 = v87;
        break;
      }
    }
  }

  if (v54)
  {
    v88 = v54;
    operator delete(v54);
  }
}

void sub_EF7084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_EF70A8(uint64_t a1, int **a2, uint64_t a3)
{
  *(a3 + 16) |= 1u;
  v4 = *(a3 + 64);
  if (!v4)
  {
    v6 = *(a3 + 8);
    v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
    if (v6)
    {
      v7 = *v7;
    }

    v4 = sub_14BD268(v7);
    *(a3 + 64) = v4;
  }

  v8 = *a2;
  v9 = *(a2 + 38);
  v10 = (*a2 - **a2);
  v11 = *v10;
  result = -1.0;
  if (*(a2 + 38))
  {
    if (v11 < 0x11)
    {
      goto LABEL_13;
    }

    v13 = v10[8];
    if (!v10[8])
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v11 < 0xF)
    {
      goto LABEL_13;
    }

    v13 = v10[7];
    if (!v10[7])
    {
      goto LABEL_13;
    }
  }

  v14 = *(v8 + v13);
  result = v14;
  if (!v14)
  {
    result = -1.0;
  }

LABEL_13:
  v16 = result >= 0.0 && ((*&result & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || *&result == 0;
  if (v16)
  {
    v17 = -1.0;
    if (*(a2 + 38))
    {
      if (v11 < 0x11 || (v18 = v10[8]) == 0)
      {
LABEL_29:
        result = v17 / 3.6;
        *(v4 + 4) |= 1u;
        *(v4 + 3) = result;
        goto LABEL_30;
      }
    }

    else
    {
      if (v11 < 0xF)
      {
        goto LABEL_29;
      }

      v18 = v10[7];
      if (!v18)
      {
        goto LABEL_29;
      }
    }

    v19 = *(v8 + v18);
    v17 = v19;
    if (!v19)
    {
      v17 = -1.0;
    }

    goto LABEL_29;
  }

LABEL_30:
  v16 = v9 == 0;
  v20 = 3;
  if (v16)
  {
    v20 = 2;
  }

  v21 = a2[v20];
  if (v21)
  {
    v22 = (v21 - *v21);
    if (*v22 >= 9u)
    {
      result = -1.0;
      if (v22[4])
      {
        v23 = *(v21 + v22[4]);
        if ((v23 - 1) <= 0xFFFDu)
        {
          result = v23 / 100.0;
        }
      }

      if (*&result >> 52 <= 0x7FEuLL)
      {
        v24 = v22[4];
        v25 = -1.0;
        if (v24)
        {
          v26 = *(v21 + v24);
          if ((v26 - 1) <= 0xFFFDu)
          {
            v25 = v26 / 100.0;
          }
        }

        result = v25 / 3.6;
        *(v4 + 4) |= 2u;
        *(v4 + 4) = result;
      }
    }
  }

  return result;
}

void sub_EF728C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  sub_5E94A4(a1[2], a4, 1, &v50);
  sub_4E51E0(a1[2], a4 & 0xFFFFFFFFFFFFLL, &v48);
  sub_64AC90(&v46, &v48, 0);
  __p = 0;
  v33 = 0;
  v34 = 0;
  sub_735048(&v50, v36);
  if (a3 && sub_734E58(v36, a5))
  {
    v12 = *(a6 + 696);
    if (v12 && (v13 = *(a6 + 688), v13 < *v12))
    {
      *(a6 + 688) = v13 + 1;
      v14 = *&v12[2 * v13 + 2];
      v15 = *a1;
      *(v14 + 16) |= 1u;
      v16 = *(v14 + 24);
      if (!v16)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v17 = sub_14BD6BC(*(a6 + 680));
      v14 = sub_19593CC(a6 + 680, v17);
      v15 = *a1;
      *(v14 + 16) |= 1u;
      v16 = *(v14 + 24);
      if (!v16)
      {
LABEL_8:
        v18 = *(v14 + 8);
        v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
        if (v18)
        {
          v19 = *v19;
        }

        v16 = sub_16F5CD4(v19);
        *(v14 + 24) = v16;
      }
    }

    sub_ECAE3C(a5, v15, v16);
    *(v14 + 16) |= 2u;
    *(v14 + 32) = a3 - 1;
  }

  sub_4D1DDC(a2, &__p);
  if (v35 + ~v33 != a3)
  {
    goto LABEL_22;
  }

  v20 = *(a6 + 696);
  if (v20 && (v21 = *(a6 + 688), v21 < *v20))
  {
    *(a6 + 688) = v21 + 1;
    v22 = *&v20[2 * v21 + 2];
    v23 = *a1;
    *(v22 + 16) |= 1u;
    v24 = *(v22 + 24);
    if (!v24)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v25 = (a6 + 680);
    v26 = sub_14BD6BC(*v25);
    v22 = sub_19593CC(v25, v26);
    v23 = *a1;
    *(v22 + 16) |= 1u;
    v24 = *(v22 + 24);
    if (!v24)
    {
LABEL_18:
      v27 = *(v22 + 8);
      v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
      if (v27)
      {
        v28 = *v28;
      }

      v24 = sub_16F5CD4(v28);
      *(v22 + 24) = v24;
    }
  }

  sub_ECAE3C(v36, v23, v24);
  *(v22 + 16) |= 2u;
  *(v22 + 32) = a3;
LABEL_22:
  sub_52CB8C(a5, v36);
  if (v45 < 0)
  {
    operator delete(v44);
    if ((v43 & 0x80000000) == 0)
    {
LABEL_24:
      if ((v41 & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_33;
    }
  }

  else if ((v43 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  operator delete(v42);
  if ((v41 & 0x80000000) == 0)
  {
LABEL_25:
    if ((v39 & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_34;
  }

LABEL_33:
  operator delete(v40);
  if ((v39 & 0x80000000) == 0)
  {
LABEL_26:
    if ((v37 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(v38);
  if ((v37 & 0x80000000) == 0)
  {
LABEL_27:
    if ((v47 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(v36[0]);
  if ((v47 & 0x80000000) == 0)
  {
LABEL_28:
    if ((v49 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_37;
  }

LABEL_36:
  operator delete(v46);
  if ((v49 & 0x80000000) == 0)
  {
LABEL_29:
    v29 = v50;
    if (!v50)
    {
      return;
    }

    goto LABEL_38;
  }

LABEL_37:
  operator delete(v48);
  v29 = v50;
  if (!v50)
  {
    return;
  }

LABEL_38:
  v30 = v51;
  v31 = v29;
  if (v51 != v29)
  {
    do
    {
      v30 = sub_310F30(v30 - 144);
    }

    while (v30 != v29);
    v31 = v50;
  }

  v51 = v29;
  operator delete(v31);
}

void sub_EF7610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_3E5388(va);
  if (*(v6 - 121) < 0)
  {
    operator delete(*(v6 - 144));
    if ((*(v6 - 89) & 0x80000000) == 0)
    {
LABEL_3:
      sub_5E9738((v6 - 88));
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v6 - 89) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v6 - 112));
  sub_5E9738((v6 - 88));
  _Unwind_Resume(a1);
}

void sub_EF76A4(uint64_t a1, uint64_t a2, const void **a3, uint64_t a4)
{
  if (sub_6834F4(a2))
  {
    v7 = *(a2 + 32);
    v8 = *(a2 + 40);
    if (v7 != v8)
    {
      v39 = *(a2 + 40);
      do
      {
        if (sub_683140(v7))
        {
          v12 = *(a4 + 240);
          if (v12 && (v13 = *(a4 + 232), v13 < *v12))
          {
            *(a4 + 232) = v13 + 1;
            v14 = *&v12[2 * v13 + 2];
          }

          else
          {
            sub_14BE174(*(a4 + 224));
            v14 = sub_19593CC(a4 + 224, v15);
          }

          v16 = *(a2 + 4) != 0;
          *(v14 + 16) |= 0x20u;
          *(v14 + 76) = v16;
          if (sub_683530(a2))
          {
            v17 = *(v14 + 16);
            *(v14 + 72) = *(a2 + 16);
            *(v14 + 88) = *(v7 + 22);
            v18 = *(v7 + 24);
            *(v14 + 16) = v17 | 0x190;
            *(v14 + 84) = v18;
          }

          v19 = *(v7 + 16);
          if (v19 <= 2)
          {
            if (v19 == 1)
            {
              *(v14 + 16) |= 4u;
              *(v14 + 64) = 2;
              if (*(a3 + 23) >= 0)
              {
                v26 = *(a3 + 23);
              }

              else
              {
                v26 = a3[1];
              }

              if (v26 + 13 > 0x7FFFFFFFFFFFFFF7)
              {
LABEL_107:
                sub_3244();
              }

              if (v26 + 13 >= 0x17)
              {
                operator new();
              }

              __p[1] = 0;
              v41 = 0;
              __p[0] = 0;
              HIBYTE(v41) = v26 + 13;
              if (v26)
              {
                if (*(a3 + 23) >= 0)
                {
                  v31 = a3;
                }

                else
                {
                  v31 = *a3;
                }

                memmove(__p, v31, v26);
              }

              strcpy(__p + v26, "_TrafficLight");
              *(v14 + 16) |= 1u;
              v32 = *(v14 + 8);
              v11 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
              if (v32)
              {
                v11 = *v11;
              }

              goto LABEL_11;
            }

            if (v19 == 2)
            {
              *(v14 + 16) |= 4u;
              *(v14 + 64) = 2;
              if (*(a3 + 23) >= 0)
              {
                v22 = *(a3 + 23);
              }

              else
              {
                v22 = a3[1];
              }

              if (v22 + 9 > 0x7FFFFFFFFFFFFFF7)
              {
                goto LABEL_107;
              }

              if (v22 + 9 >= 0x17)
              {
                operator new();
              }

              __p[1] = 0;
              v41 = 0;
              __p[0] = 0;
              HIBYTE(v41) = v22 + 9;
              if (v22)
              {
                if (*(a3 + 23) >= 0)
                {
                  v37 = a3;
                }

                else
                {
                  v37 = *a3;
                }

                memmove(__p, v37, v22);
              }

              strcpy(__p + v22, "_StopSign");
              *(v14 + 16) |= 1u;
              v38 = *(v14 + 8);
              v11 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
              if (v38)
              {
                v11 = *v11;
              }

              goto LABEL_11;
            }
          }

          else
          {
            switch(v19)
            {
              case 3:
                *(v14 + 16) |= 4u;
                *(v14 + 64) = 1;
                if (*(a3 + 23) >= 0)
                {
                  v23 = *(a3 + 23);
                }

                else
                {
                  v23 = a3[1];
                }

                if (v23 + 15 > 0x7FFFFFFFFFFFFFF7)
                {
                  goto LABEL_107;
                }

                if (v23 + 15 >= 0x17)
                {
                  operator new();
                }

                __p[1] = 0;
                v41 = 0;
                __p[0] = 0;
                HIBYTE(v41) = v23 + 15;
                if (v23)
                {
                  if (*(a3 + 23) >= 0)
                  {
                    v9 = a3;
                  }

                  else
                  {
                    v9 = *a3;
                  }

                  memmove(__p, v9, v23);
                }

                strcpy(__p + v23, "_RedLightCamera");
                *(v14 + 16) |= 1u;
                v10 = *(v14 + 8);
                v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
                if (v10)
                {
                  v11 = *v11;
                }

                goto LABEL_11;
              case 4:
                *(v14 + 16) |= 4u;
                *(v14 + 64) = 1;
                if (*(a3 + 23) >= 0)
                {
                  v24 = *(a3 + 23);
                }

                else
                {
                  v24 = a3[1];
                }

                if (byte_27BF3E7 >= 0)
                {
                  v25 = byte_27BF3E7;
                }

                else
                {
                  v25 = qword_27BF3D8;
                }

                if (v25 + v24 > 0x7FFFFFFFFFFFFFF7)
                {
                  goto LABEL_107;
                }

                if (v25 + v24 > 0x16)
                {
                  operator new();
                }

                __p[1] = 0;
                v41 = 0;
                __p[0] = 0;
                HIBYTE(v41) = v25 + v24;
                v8 = v39;
                if (v24)
                {
                  if (*(a3 + 23) >= 0)
                  {
                    v27 = a3;
                  }

                  else
                  {
                    v27 = *a3;
                  }

                  memmove(__p, v27, v24);
                }

                v28 = __p + v24;
                if (v25)
                {
                  if (byte_27BF3E7 >= 0)
                  {
                    v29 = &qword_27BF3D0;
                  }

                  else
                  {
                    v29 = qword_27BF3D0;
                  }

                  memmove(v28, v29, v25);
                }

                v28[v25] = 0;
                *(v14 + 16) |= 1u;
                v30 = *(v14 + 8);
                v11 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
                if (v30)
                {
                  v11 = *v11;
                }

                goto LABEL_11;
              case 5:
                *(v14 + 16) |= 4u;
                *(v14 + 64) = 1;
                if (*(a3 + 23) >= 0)
                {
                  v20 = *(a3 + 23);
                }

                else
                {
                  v20 = a3[1];
                }

                if (byte_27BF3FF >= 0)
                {
                  v21 = byte_27BF3FF;
                }

                else
                {
                  v21 = qword_27BF3F0;
                }

                if (v21 + v20 > 0x7FFFFFFFFFFFFFF7)
                {
                  goto LABEL_107;
                }

                if (v21 + v20 > 0x16)
                {
                  operator new();
                }

                __p[1] = 0;
                v41 = 0;
                __p[0] = 0;
                HIBYTE(v41) = v21 + v20;
                v8 = v39;
                if (v20)
                {
                  if (*(a3 + 23) >= 0)
                  {
                    v33 = a3;
                  }

                  else
                  {
                    v33 = *a3;
                  }

                  memmove(__p, v33, v20);
                }

                v34 = __p + v20;
                if (v21)
                {
                  if (byte_27BF3FF >= 0)
                  {
                    v35 = &qword_27BF3E8;
                  }

                  else
                  {
                    v35 = qword_27BF3E8;
                  }

                  memmove(v34, v35, v21);
                }

                v34[v21] = 0;
                *(v14 + 16) |= 1u;
                v36 = *(v14 + 8);
                v11 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
                if (v36)
                {
                  v11 = *v11;
                }

LABEL_11:
                sub_194EA30((v14 + 48), __p, v11);
                if (SHIBYTE(v41) < 0)
                {
                  operator delete(__p[0]);
                }

                break;
            }
          }
        }

        v7 += 184;
      }

      while (v7 != v8);
    }
  }
}

void sub_EF7D70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_EF8228(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_EF823C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_EF8250(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_EF8264(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_EF8278(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_EF828C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_EF82A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_EF82B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_EF82C8(uint64_t *result)
{
  if ((*(*result + 3) & 1) == 0)
  {
    sub_4AF100(v3, result[2]);
    v1 = v3;
    v2 = 0;
    sub_120B450();
  }

  return result;
}

void sub_EF8404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_4AE168(&a14);
  _Unwind_Resume(a1);
}

void sub_EF842C(uint64_t a1, void *a2, unsigned int a3, void *a4, unsigned int *a5, _DWORD *a6, uint64_t *a7, void *a8)
{
  v10 = a1;
  v54 = a2[138];
  v55 = a2[139];
  v53 = v54 + 2616 * a3;
  sub_EFA09C(a1, a2, a3, v53, a5, &__p);
  v12 = __p;
  v13 = v64 - __p;
  if (v64 != __p)
  {
    if (v13 == 24)
    {
      v14 = *(__p + 3);
      v15 = sub_4D1DC0(a2) - 1 == v14;
      v58 = v10;
      if (*(v12 + 20) != 1)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v15 = 0;
      v58 = v10;
      if (*(__p + 20) != 1)
      {
LABEL_22:
        if (v13 == 24)
        {
          goto LABEL_23;
        }

        v33 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
        v34 = 1;
        v35 = 24;
        while (1)
        {
          v36 = __p;
          v37 = (__p + v35);
          if (v34 == -1 - 0x5555555555555555 * ((v64 - __p) >> 3))
          {
            v38 = *(v37 + 3);
            v39 = sub_4D1DC0(a2) - 1 == v38;
            if (*(v37 + 20))
            {
              goto LABEL_43;
            }
          }

          else
          {
            v39 = 0;
            if (*(v37 + 20))
            {
LABEL_43:
              if (v36[v35 + 17] == 1 && *(*v10 + 2) == 1)
              {
                v40 = sub_120B590(a7);
                a6[10] |= 0x80000000;
                a6[80] = v40;
              }

              if (v36[v35 + 19] == 1 && *(*v10 + 2) == 1)
              {
                v41 = sub_120B590(a7);
                a6[11] |= 2u;
                a6[82] = v41;
              }

              v42 = &v36[v35];
              if (v36[v35 + 18] == 1)
              {
                v43 = *v10;
                if (*(*v10 + 2) == 1)
                {
                  v44 = sub_120B590(a7);
                  a6[11] |= 1u;
                  a6[81] = v44;
                  v43 = *v10;
                }

                if (*(v43 + 44))
                {
                  v45 = -1431655765 * ((a8[1] - *a8) >> 2);
                  a6[10] |= 0x40000000u;
                  a6[79] = v45;
                }
              }

              v46 = v42[2];
              LODWORD(v11) = *v42;
              v47 = sub_120B378(v11 * 360.0 / 4294967300.0 + -180.0);
              LODWORD(v48) = *&v36[v35 + 4];
              v49 = exp(v48 * -6.28318531 / 4294967300.0 + 3.14159265);
              v50 = atan((v49 + -1.0 / v49) * 0.5);
              v51 = sub_120B220(v50 * 57.2957795);
              sub_456538(&v62, v47, v51, v46);
              if ((v36[v35 + 16] | v39))
              {
                v52 = sub_4D1F50(a2, *&v36[v35 + 12]);
                v10 = v58;
                sub_EFA7CC(a4, *(v52 + 32) & 0xFFFFFFFFFFFFFFLL, &v62, v61);
              }

              else
              {
                sub_1209BF8(v61, &v62);
                v10 = v58;
              }

              sub_120B5A4(a7, v61);
              sub_376F0(a8, v37);
            }
          }

          ++v34;
          v35 += 24;
          if (v33 == v34)
          {
            goto LABEL_23;
          }
        }
      }
    }

    v16 = v12[3];
    if (*(v12 + 17) == 1 && *(*v10 + 2) == 1)
    {
      v17 = sub_120B590(a7);
      a6[10] |= 0x80000000;
      a6[80] = v17;
    }

    if (*(v12 + 19) == 1 && *(*v10 + 2) == 1)
    {
      v18 = sub_120B590(a7);
      a6[11] |= 2u;
      a6[82] = v18;
    }

    if (*(v12 + 18) == 1)
    {
      v19 = *v10;
      if (*(*v10 + 2) == 1)
      {
        v20 = sub_120B590(a7);
        a6[11] |= 1u;
        a6[81] = v20;
        v19 = *v10;
      }

      if (*(v19 + 44))
      {
        v21 = -1431655765 * ((a8[1] - *a8) >> 2);
        a6[10] |= 0x40000000u;
        a6[79] = v21;
      }
    }

    v22 = v12[2];
    LODWORD(v11) = *v12;
    v23 = sub_120B378(v11 * 360.0 / 4294967300.0 + -180.0);
    LODWORD(v24) = v12[1];
    v25 = exp(v24 * -6.28318531 / 4294967300.0 + 3.14159265);
    v26 = atan((v25 + -1.0 / v25) * 0.5);
    v27 = sub_120B220(v26 * 57.2957795);
    sub_456538(&v62, v23, v27, v22);
    if (((*(v12 + 16) | v15) & 1) != 0 || !v16)
    {
      v28 = sub_4D1F50(a2, v12[3]);
      v10 = v58;
      sub_EFA7CC(a4, *(v28 + 32) & 0xFFFFFFFFFFFFFFLL, &v62, v61);
      sub_120B5A4(a7, v61);
    }

    else
    {
      sub_1209BF8(v61, &v62);
      v10 = v58;
      sub_120B5A4(a7, v61);
    }

    sub_376F0(a8, v12);
    goto LABEL_22;
  }

LABEL_23:
  v29 = 0x3795876FF3795877 * ((v55 - v54) >> 3) - 1;
  if (a3 && v29 != a3 && *(v53 + 160) != 16)
  {
    goto LABEL_33;
  }

  if (v29 != a3)
  {
    v30 = sub_120B590(a7);
    v31 = 0xAAAAAAAAAAAAAAABLL * ((a8[1] - *a8) >> 2);
    v32 = *v10;
    if (*(*v10 + 2) != 1)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v30 = sub_120B590(a7) - 1;
  v31 = -1 - 0x5555555555555555 * ((a8[1] - *a8) >> 2);
  v32 = *v10;
  if (*(*v10 + 2) == 1)
  {
LABEL_30:
    a6[11] |= 1u;
    a6[81] = v30;
  }

LABEL_31:
  if (*(v32 + 44))
  {
    a6[10] |= 0x40000000u;
    a6[79] = v31;
  }

LABEL_33:
  if (__p)
  {
    v64 = __p;
    operator delete(__p);
  }
}

void sub_EF8AA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_EF8C18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_120D5F0(va);
  _Unwind_Resume(a1);
}

void sub_EF8C2C(uint64_t *a1, int *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a3 + 40);
  *(a3 + 40) = v7 | 0x400;
  *(a3 + 256) = v6;
  v8 = *a1;
  if (*(*a1 + 5) == 1)
  {
    v9 = *(a2 + 3);
    *(a3 + 40) = v7 | 0x2000400;
    *(a3 + 296) = v9;
  }

  v10 = a2[40];
  if ((*(v8 + 41) & 1) == 0 && (v10 - 64) <= 2)
  {
    v10 = dword_22AE6AC[v10 - 64];
  }

  v11 = sub_EC7E24(v10);
  *(a3 + 40) |= 0x2000u;
  *(a3 + 268) = v11;
  v12 = *(a2 + 23);
  v13 = *(a2 + 22);
  if (v13 != v12 && *(*a1 + 4) == 1)
  {
    do
    {
      v14 = *(a3 + 96);
      if (v14 && (v15 = *(a3 + 88), v15 < *v14))
      {
        *(a3 + 88) = v15 + 1;
        v16 = *&v14[2 * v15 + 2];
      }

      else
      {
        v17 = sub_14BA608(*(a3 + 80));
        v16 = sub_19593CC(a3 + 80, v17);
      }

      v18 = *v13;
      v19 = v16[4];
      v16[4] = v19 | 1;
      v16[6] = v18;
      if (*(v13 + 2) == 1)
      {
        v16[4] = v19 | 5;
        v16[8] = 2;
      }

      v13 += 2;
    }

    while (v13 != v12);
    v20 = a2[50];
    if (v20 < 2)
    {
      *(a3 + 40) |= 0x4000u;
      *(a3 + 272) = v20;
    }
  }

  v21 = *(a2 + 126);
  if (*(*a1 + 3) == 1)
  {
    v22 = *(a3 + 40);
    *(a3 + 308) = v21;
    v23 = v22 | 0x30000000;
    *(a3 + 312) = *(a2 + 12);
  }

  else
  {
    v24 = v21 / 100.0;
    v23 = *(a3 + 40) | 0x8000;
    *(a3 + 276) = v24;
  }

  *(a3 + 294) = *(a2 + 2056);
  *(a3 + 291) = *(a2 + 1028);
  v25 = *(a2 + 1029);
  *(a3 + 40) = v23 | 0x1300000;
  *(a3 + 290) = v25;
  v26 = *(a2 + 384);
  if (v26 != 5)
  {
    v27 = sub_EC7E7C(v26);
    *(a3 + 40) |= 0x10000u;
    *(a3 + 280) = v27;
  }

  if (*(a2 + 386) == 1)
  {
    v28 = sub_EC7E9C(*(a2 + 385));
    *(a3 + 40) |= 0x20000u;
    *(a3 + 284) = v28;
  }

  sub_EF9D68(a1, a2, a3);
  sub_ECA238(a2 + 99, a3);
  v29 = sub_4566AC((a2 + 552));
  if (v29 != 0x7FFFFFFF && HIDWORD(v29) != 0x7FFFFFFF && v29 <= SHIDWORD(v29))
  {
    *(a3 + 40) |= 0x20u;
    v30 = *(a3 + 216);
    if (!v30)
    {
      v31 = *(a3 + 8);
      v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
      if (v31)
      {
        v32 = *v32;
      }

      v30 = sub_14BC730(v32);
      *(a3 + 216) = v30;
    }

    sub_ECB220(a2 + 552, v30);
  }

  sub_EF9EE4(a1, a2, a3);
}

uint64_t sub_EF8EFC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  if (*(*result + 3) == 1)
  {
    v6 = result;
    v7 = (a2 + 10120);
    v8 = *(v3 + 176);
    if (v8 != *(v3 + 184) && *v8 == 2 && (*(result + 85) & 1) != 0)
    {
      v9 = 5;
    }

    else
    {
      v9 = 1;
    }

    if (*(a2 + 12648))
    {
      v10 = v9 | 8;
    }

    else
    {
      v10 = v9;
    }

    sub_477DA4((result + 88), a2, v10, v26);
    *(a3 + 40) |= 0x100000u;
    v11 = *(a3 + 864);
    if (!v11)
    {
      v12 = *(a3 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v11 = sub_14BF760(v13);
      *(a3 + 864) = v11;
    }

    v14 = sub_4D27A4(a2);
    v15 = *v14;
    v16 = v14[1];
    while (1)
    {
      if (v15 == v16)
      {
        v24 = *v7;
        v25 = (*(v6 + 48) & 1) != 0 && sub_4D1DB8(a2) <= *(v6 + 56);
        sub_EFB31C(v6, v26, v24, v25);
      }

      v18 = *(v11 + 32);
      if (v18 && (v19 = *(v11 + 24), v19 < *v18))
      {
        *(v11 + 24) = v19 + 1;
        v20 = *&v18[2 * v19 + 2];
        *(v20 + 16) |= 1u;
        v17 = *(v20 + 24);
        if (v17)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v21 = sub_14BF6E8(*(v11 + 16));
        v20 = sub_19593CC(v11 + 16, v21);
        *(v20 + 16) |= 1u;
        v17 = *(v20 + 24);
        if (v17)
        {
          goto LABEL_16;
        }
      }

      v22 = *(v20 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      v17 = sub_14BF670(v23);
      *(v20 + 24) = v17;
LABEL_16:
      v17[2].i32[0] |= 3u;
      v17[3] = vmovn_s64(v15[1]);
      v15 += 4;
    }
  }

  return result;
}

void sub_EF92F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1218EBC(v39 - 144);
    _Unwind_Resume(a1);
  }

  sub_1218EBC(v39 - 144);
  _Unwind_Resume(a1);
}

void sub_EF938C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 80) != 1)
  {
    return;
  }

  v56 = 0;
  v57 = 0;
  v58 = 0;
  if (!sub_69AF18(a2))
  {
    goto LABEL_31;
  }

  v53 = 0;
  v54 = 0;
  v55 = 0;
  v6 = sub_3B1D8C(*(a1 + 8));
  v7 = sub_4D2130(a2);
  sub_2AD1B4(v6, *(v7 + 104), *(v7 + 112), v41);
  v8 = v54;
  if (v54 >= v55)
  {
    v11 = v53;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v54 - v53) >> 2);
    v13 = v12 + 1;
    if (v12 + 1 > 0x1555555555555555)
    {
      sub_1794();
    }

    if (0x5555555555555556 * ((v55 - v53) >> 2) > v13)
    {
      v13 = 0x5555555555555556 * ((v55 - v53) >> 2);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v55 - v53) >> 2) >= 0xAAAAAAAAAAAAAAALL)
    {
      v14 = 0x1555555555555555;
    }

    else
    {
      v14 = v13;
    }

    if (v14)
    {
      if (v14 <= 0x1555555555555555)
      {
        operator new();
      }

      sub_1808();
    }

    v15 = 4 * ((v54 - v53) >> 2);
    *v15 = v48;
    *(v15 + 8) = v49;
    v10 = 12 * v12 + 12;
    v16 = 12 * v12 - (v8 - v11);
    memcpy((v15 - (v8 - v11)), v11, v8 - v11);
    v53 = v16;
    v54 = v10;
    v55 = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }

  else
  {
    v9 = v48;
    *(v54 + 2) = v49;
    *v8 = v9;
    v10 = (v8 + 12);
  }

  v54 = v10;
  v40 = 17;
  strcpy(__p, "Charging Stations");
  sub_EAC188(&v56, &v53, __p, 0xFFFFFFFF, 0, 0, 0.0);
  if (v40 < 0)
  {
    operator delete(*__p);
  }

  sub_99F0C(&v52);
  v17 = v50;
  if (v50)
  {
    v18 = v51;
    v19 = v50;
    if (v51 != v50)
    {
      do
      {
        v20 = *(v18 - 1);
        v18 -= 3;
        if (v20 < 0)
        {
          operator delete(*v18);
        }
      }

      while (v18 != v17);
      v19 = v50;
    }

    v51 = v17;
    operator delete(v19);
  }

  if ((v47 & 0x80000000) == 0)
  {
    if ((v45 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_71:
    operator delete(v44);
    if ((SHIBYTE(v43) & 0x80000000) == 0)
    {
LABEL_29:
      v21 = v53;
      if (!v53)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    goto LABEL_72;
  }

  operator delete(v46);
  if (v45 < 0)
  {
    goto LABEL_71;
  }

LABEL_28:
  if ((SHIBYTE(v43) & 0x80000000) == 0)
  {
    goto LABEL_29;
  }

LABEL_72:
  operator delete(v41[0]);
  v21 = v53;
  if (v53)
  {
LABEL_30:
    v54 = v21;
    operator delete(v21);
  }

LABEL_31:
  v22 = *(a2 + 7416);
  v37 = a3;
  for (i = *(a2 + 7424); v22 != i; v22 += 1120)
  {
    if (sub_659540(v22))
    {
      v23 = *(v22 + 1080);
      v24 = *(v22 + 1088);
      if (v23 != v24)
      {
        v25 = v23 + 22;
        do
        {
          if (*(v25 + 23) >= 0)
          {
            v27 = *(v25 + 23);
          }

          else
          {
            v27 = v25[1];
          }

          if (v27 + 20 >= 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

          if (v27 + 20 >= 0x17)
          {
            operator new();
          }

          v43 = 0;
          HIBYTE(v43) = v27 + 20;
          v42 = 540696933;
          *v41 = *"Area incident area: ";
          if (v27)
          {
            if (*(v25 + 23) >= 0)
            {
              v28 = v25;
            }

            else
            {
              v28 = *v25;
            }

            memmove(&v43, v28, v27);
          }

          *(&v43 + v27) = 0;
          sub_EAC330(&v56, v25 - 22, v41, 0xFFFFFFFF, 0, 0, 0.0);
          if (SHIBYTE(v43) < 0)
          {
            operator delete(v41[0]);
          }

          v26 = v25 + 9;
          v25 += 31;
        }

        while (v26 != v24);
      }
    }
  }

  sub_EAC680(&v56, v41);
  v30 = v41[0];
  v29 = v41[1];
  if (v41[0] != v41[1])
  {
    do
    {
      v31 = sub_1950FFC((v37 + 16), dword_278D070, 11, &off_2769C00, 0);
      sub_12CC584(v31, v30);
      v30 += 48;
    }

    while (v30 != v29);
    v30 = v41[0];
  }

  if (v30)
  {
    v32 = v41[1];
    v33 = v30;
    if (v41[1] != v30)
    {
      do
      {
        v32 = sub_12CBDFC(v32 - 48);
      }

      while (v32 != v30);
      v33 = v41[0];
    }

    v41[1] = v30;
    operator delete(v33);
  }

  v34 = v56;
  if (v56)
  {
    v35 = v57;
    v36 = v56;
    if (v57 == v56)
    {
LABEL_68:
      v57 = v34;
      operator delete(v36);
      return;
    }

    while (1)
    {
      if (*(v35 - 25) < 0)
      {
        operator delete(*(v35 - 48));
        if ((*(v35 - 49) & 0x80000000) == 0)
        {
          goto LABEL_63;
        }

LABEL_66:
        operator delete(*(v35 - 72));
        v35 -= 80;
        if (v35 == v34)
        {
LABEL_67:
          v36 = v56;
          goto LABEL_68;
        }
      }

      else
      {
        if (*(v35 - 49) < 0)
        {
          goto LABEL_66;
        }

LABEL_63:
        v35 -= 80;
        if (v35 == v34)
        {
          goto LABEL_67;
        }
      }
    }
  }
}

void sub_EF988C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_2AE47C(&a18);
  v25 = *(v23 - 136);
  if (v25)
  {
    *(v23 - 128) = v25;
    operator delete(v25);
    sub_D37F50((v23 - 112));
    _Unwind_Resume(a1);
  }

  sub_D37F50((v23 - 112));
  _Unwind_Resume(a1);
}

void sub_EF9980(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 81) == 1)
  {
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v5 = a2[1550];
    v6 = a2[1551];
    while (v5 != v6)
    {
      if (sub_685BF4(v5[10]))
      {
        sub_686328(*v5, &__p);
        sub_EAC188(&v33, v5 + 1, &__p, 0xFFFFFFFF, *v5, v5[10], *(v5 + 4));
        if (SHIBYTE(v32) < 0)
        {
          operator delete(__p);
        }
      }

      v5 += 12;
    }

    sub_EAC850(&v33, &__p);
    v7 = __p;
    v8 = v31;
    if (__p != v31)
    {
      do
      {
        v9 = sub_1950FFC((a3 + 16), dword_278D080, 11, &off_2769C30, 0);
        sub_12CD324(v9, v7);
        v7 += 72;
      }

      while (v7 != v8);
      v7 = __p;
    }

    if (v7)
    {
      v10 = v31;
      v11 = v7;
      if (v31 != v7)
      {
        do
        {
          v10 = sub_12CC74C(v10 - 72);
        }

        while (v10 != v7);
        v11 = __p;
      }

      v31 = v7;
      operator delete(v11);
    }

    __p = 0;
    v31 = 0;
    v32 = 0;
    v12 = a2[1555];
    if (!v12)
    {
LABEL_17:
      sub_EAC850(&__p, &v27);
      v13 = v27;
      v14 = v28;
      if (v27 != v28)
      {
        do
        {
          v15 = sub_1950FFC((a3 + 16), dword_278D090, 11, &off_2769C30, 0);
          sub_12CD324(v15, v13);
          v13 += 72;
        }

        while (v13 != v14);
        v13 = v27;
      }

      if (v13)
      {
        v16 = v28;
        v17 = v13;
        if (v28 != v13)
        {
          do
          {
            v16 = sub_12CC74C(v16 - 72);
          }

          while (v16 != v13);
          v17 = v27;
        }

        v28 = v13;
        operator delete(v17);
      }

      v18 = __p;
      if (!__p)
      {
LABEL_42:
        v22 = v33;
        if (!v33)
        {
          return;
        }

        v23 = v34;
        v24 = v33;
        if (v34 == v33)
        {
LABEL_52:
          v34 = v22;
          operator delete(v24);
          return;
        }

        while (1)
        {
          if (*(v23 - 25) < 0)
          {
            operator delete(*(v23 - 6));
            if (*(v23 - 49) < 0)
            {
LABEL_50:
              operator delete(*(v23 - 9));
            }
          }

          else if (*(v23 - 49) < 0)
          {
            goto LABEL_50;
          }

          v23 -= 10;
          if (v23 == v22)
          {
            v24 = v33;
            goto LABEL_52;
          }
        }
      }

      v19 = v31;
      v20 = __p;
      if (v31 == __p)
      {
LABEL_41:
        v31 = v18;
        operator delete(v20);
        goto LABEL_42;
      }

      while (1)
      {
        if (*(v19 - 25) < 0)
        {
          operator delete(*(v19 - 6));
          if (*(v19 - 49) < 0)
          {
LABEL_39:
            operator delete(*(v19 - 9));
          }
        }

        else if (*(v19 - 49) < 0)
        {
          goto LABEL_39;
        }

        v19 -= 10;
        if (v19 == v18)
        {
          v20 = __p;
          goto LABEL_41;
        }
      }
    }

    while (1)
    {
      v27 = 0;
      v28 = 0;
      v29 = 0;
      sub_686328(*(v12 + 4), v25);
      sub_EAC188(&v33, &v27, v25, 0xFFFFFFFF, *(v12 + 4), *(v12 + 16), *(v12 + 7));
      if ((v26 & 0x80000000) == 0)
      {
        break;
      }

      operator delete(v25[0]);
      v21 = v27;
      if (v27)
      {
        goto LABEL_33;
      }

LABEL_28:
      v12 = *v12;
      if (!v12)
      {
        goto LABEL_17;
      }
    }

    v21 = v27;
    if (!v27)
    {
      goto LABEL_28;
    }

LABEL_33:
    v28 = v21;
    operator delete(v21);
    goto LABEL_28;
  }
}

void sub_EF9C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24)
{
  sub_D37F50(&__p);
  sub_D37F50(&a24);
  _Unwind_Resume(a1);
}

void sub_EF9D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_EAD110(va);
  JUMPOUT(0xEF9D58);
}

void sub_EF9D68(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v5 = a2[254];
  if (v5 < 0)
  {
    v6 = -5;
  }

  else
  {
    v6 = 5;
  }

  *(a3 + 40) |= 0x1000u;
  *(a3 + 264) = v5 / 10 + (((103 * (v6 + v5 % 10)) >> 15) & 1) + ((103 * (v6 + v5 % 10)) >> 10);
  v7 = a2[255];
  if (v7 != 0x7FFFFFFF)
  {
    if (v7 < 0)
    {
      v8 = -5;
    }

    else
    {
      v8 = 5;
    }

    sub_19500C0(a3 + 16, qword_278D0D8, 13, v7 / 10 + (((103 * (v8 + v7 % 10)) >> 15) & 1) + ((103 * (v8 + v7 % 10)) >> 10), 0);
  }

  v9 = a2[256];
  if (v9 != 0x7FFFFFFF)
  {
    v10 = v9 / 10;
    v11 = v9 % 10;
    if (v9 < 0)
    {
      v12 = -5;
    }

    else
    {
      v12 = 5;
    }

    v13 = qword_278D0E0;

    sub_19500C0(a3 + 16, v13, 13, v10 + (((103 * (v12 + v11)) >> 15) & 1) + ((103 * (v12 + v11)) >> 10), 0);
  }
}

void sub_EF9EE4(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[49];
  v7 = a2[50];
  while (v6 != v7)
  {
    v10 = *(a3 + 72);
    if (v10 && (v11 = *(a3 + 64), v11 < *v10))
    {
      *(a3 + 64) = v11 + 1;
      v12 = *&v10[2 * v11 + 2];
      v13 = *(v12 + 32);
      if (!v13)
      {
        goto LABEL_2;
      }
    }

    else
    {
      v14 = sub_16F5C34(*(a3 + 56));
      v12 = sub_19593CC(a3 + 56, v14);
      v13 = *(v12 + 32);
      if (!v13)
      {
        goto LABEL_2;
      }
    }

    v15 = *(v12 + 24);
    if (v15 >= *v13)
    {
LABEL_2:
      v8 = sub_16F5CD4(*(v12 + 16));
      v9 = sub_19593CC(v12 + 16, v8);
      goto LABEL_3;
    }

    *(v12 + 24) = v15 + 1;
    v9 = *&v13[2 * v15 + 2];
LABEL_3:
    sub_ECAE3C(v6, *a1, v9);
    v6 += 152;
  }

  v16 = a2[52];
  v17 = a2[53];
  while (v16 != v17)
  {
    v20 = *(a3 + 120);
    if (v20 && (v21 = *(a3 + 112), v21 < *v20))
    {
      *(a3 + 112) = v21 + 1;
      v19 = *&v20[2 * v21 + 2];
    }

    else
    {
      v18 = sub_16F5CD4(*(a3 + 104));
      v19 = sub_19593CC(a3 + 104, v18);
    }

    sub_ECAE3C(v16, *a1, v19);
    v16 += 152;
  }

  v22 = a2[55];
  if (v22 != a2[56])
  {
    *(a3 + 40) |= 4u;
    v23 = *(a3 + 192);
    if (!v23)
    {
      v24 = *(a3 + 8);
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v25 = *v25;
      }

      v23 = sub_16F5CD4(v25);
      *(a3 + 192) = v23;
      v22 = a2[55];
    }

    v26 = *a1;

    sub_ECAE3C(v22, v26, v23);
  }
}

void sub_EFA09C(uint64_t a1@<X0>, void *a2@<X1>, unsigned int a3@<W2>, void *a4@<X3>, unsigned int *a5@<X4>, void **a6@<X8>)
{
  v6 = a6;
  v79 = 0;
  a6[1] = 0;
  a6[2] = 0;
  *a6 = 0;
  if (a3)
  {
    v7 = a5;
    v8 = *a5;
    if (a4[13] >= v8)
    {
      v72 = 0;
      do
      {
        if (sub_4D1DC0(a2) <= v8)
        {
          break;
        }

        v79 = 0;
        sub_EFAB68(a2, a3, *v7, &v79 + 1, &v79, &__p);
        v9 = __p;
        if (v78 == __p)
        {
          goto LABEL_74;
        }

        v10 = 0;
        v73 = 0xAAAAAAAAAAAAAAABLL * ((v78 - __p) >> 2);
        do
        {
          v13 = *v7;
          v15 = a4[10] == v13 && v10 == HIDWORD(v79);
          v74 = v15;
          if (v10)
          {
            v16 = 0;
          }

          else
          {
            v16 = a4[7] == v13;
          }

          v17 = v16;
          v76 = v17;
          if (v10)
          {
            v18 = 0;
            goto LABEL_55;
          }

          v19 = sub_4D1F50(a2, v13);
          v20 = v19;
          v21 = *v19;
          v22 = (*v19 - **v19);
          if (*(v19 + 38))
          {
            if (v22[3])
            {
              v23 = __ROR8__(*&v21[v22[3]], 32);
              v24 = HIDWORD(v23);
            }

            else
            {
              v26 = *(v19 + 8);
              v27 = *&v21[v22[60]];
              v28 = sub_57A90(v26);
              v29 = v26 & ~(-1 << (v28 & 0xFE));
              v30 = sub_581D8(v29);
              v31 = sub_581D8(v29 >> 1);
              v32 = 1 << (v28 >> 1);
              v33 = v30 + v27;
              v34 = v31 + (v27 >> 8);
              v35 = ((((((v33 & ~(v33 >> 31)) - v33 + (v33 >> 31)) >> (v28 >> 1)) + (v33 >> 31)) << (v28 >> 1)) + v33) % v32;
              v36 = ((((((v34 & ~(v34 >> 31)) - v34 + (v34 >> 31)) >> (v28 >> 1)) + (v34 >> 31)) << (v28 >> 1)) + v34) % v32;
              v37 = -1 << (v28 >> 1);
              if (~v37 < v35)
              {
                v38 = ~v37;
              }

              else
              {
                v38 = v35;
              }

              if (~v37 < v36)
              {
                v39 = ~v37;
              }

              else
              {
                v39 = v36;
              }

              sub_58168(v38, v39);
              v23 = HIWORD(v27);
              LODWORD(v24) = v40 | (1 << (v28 & 0xFE));
            }

            goto LABEL_42;
          }

          v25 = *v22;
          if (v25 < 5)
          {
            goto LABEL_40;
          }

          if (!v22[2])
          {
            if (v25 >= 0x77 && (v41 = v22[59]) != 0)
            {
              v23 = *&v21[v41];
            }

            else
            {
LABEL_40:
              v23 = 0;
            }

            LODWORD(v24) = *(v19 + 8);
            goto LABEL_42;
          }

          v23 = __ROR8__(*&v21[v22[2]], 32);
          v24 = HIDWORD(v23);
LABEL_42:
          v42 = *(a1 + 16);
          sub_2B365C(v42, v24 | (v23 << 32), 0, (v42 + 7800));
          v43 = *(v42 + 7808);
          v44 = *(v42 + 7800);
          if (v43 != v44)
          {
            if (((v43 - v44) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          v45 = *v20;
          v46 = &(*v20)[-**v20];
          v47 = *v46;
          if (v47 < 9)
          {
            v48 = 0;
            v6 = a6;
            v49 = v72;
          }

          else
          {
            v48 = *(v46 + 4);
            v6 = a6;
            v49 = v72;
            if (*(v46 + 4))
            {
              v48 = *&v45[v48];
            }
          }

          if (v48 + v49 <= 1600000)
          {
            v50 = v49;
          }

          else
          {
            v50 = 0;
          }

          v7 = a5;
          v18 = v76 | 1;
          if (v47 <= 8)
          {
            v72 = v50;
          }

          else
          {
            v72 = *&v45[*(v46 + 4)] + v50;
          }

LABEL_55:
          v51 = v18 & 1;
          v52 = *v7;
          v54 = v10 == v79 && a4[13] == v52;
          v55 = __p + 12 * v10;
          v56 = v6[1];
          v57 = v6[2];
          if (v56 < v57)
          {
            v11 = *(v55 + 2);
            *v56 = *v55;
            v56[2] = v11;
            v56[3] = v52;
            *(v56 + 16) = v51;
            *(v56 + 17) = v74;
            *(v56 + 18) = v54;
            *(v56 + 19) = v76;
            *(v56 + 20) = 0;
            v12 = (v56 + 6);
          }

          else
          {
            v58 = *v6;
            v59 = v56 - *v6;
            v60 = 0xAAAAAAAAAAAAAAABLL * (v59 >> 3) + 1;
            if (v60 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_1794();
            }

            v61 = 0xAAAAAAAAAAAAAAABLL * ((v57 - v58) >> 3);
            if (2 * v61 > v60)
            {
              v60 = 2 * v61;
            }

            if (v61 >= 0x555555555555555)
            {
              v62 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v62 = v60;
            }

            if (v62)
            {
              if (v62 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              sub_1808();
            }

            v63 = 8 * (v59 >> 3);
            v64 = *(v55 + 2);
            *v63 = *v55;
            *(v63 + 8) = v64;
            *(v63 + 12) = v52;
            *(v63 + 16) = v51;
            *(v63 + 17) = v74;
            *(v63 + 18) = v54;
            *(v63 + 19) = v76;
            *(v63 + 20) = 0;
            v12 = v63 + 24;
            v65 = v63 - v59;
            memcpy((v63 - v59), v58, v59);
            *v6 = v65;
            v6[1] = v12;
            v6[2] = 0;
            if (v58)
            {
              operator delete(v58);
            }
          }

          v6[1] = v12;
          ++v10;
        }

        while (v10 != v73);
        v9 = __p;
LABEL_74:
        v66 = *v7 + 1;
        *v7 = v66;
        if (v9)
        {
          v78 = v9;
          operator delete(v9);
          v66 = *v7;
        }

        v8 = v66;
      }

      while (a4[13] >= v66);
    }
  }

  sub_EFAEF4(*(a1 + 32), a1, v6, *(*a1 + 160) > 3u);
}

void sub_EFA728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  v22 = *v20;
  if (!*v20)
  {
    _Unwind_Resume(exception_object);
  }

  *(v20 + 8) = v22;
  operator delete(v22);
  _Unwind_Resume(exception_object);
}

void sub_EFA7CC(void *a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X8>)
{
  sub_120ADE8(v10);
  sub_B6D0(&v12, 0);
  sub_B6D0(&v13, 9);
  v14 = -1;
  (*(**a1 + 8))(*a1, a2, v10);
  v8 = sub_120B1B4(v10, a3);
  sub_1209BA0(a4, a3, v8);
  sub_1209C84(a4, v12);
  sub_1209C8C(a4, v13);
  v9 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }
  }
}

void sub_EFA900(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_EFA914(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_EFA928(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  *(a4 + 16) |= 1u;
  v7 = *(a4 + 112);
  if (!v7)
  {
    v10 = *(a4 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    sub_14BAE64(v11);
    *(a4 + 112) = v12;
    sub_64D110(a2, v12);
    v8 = *(a2 + 168);
    v9 = *(a2 + 176);
    if (v8 == v9)
    {
      goto LABEL_7;
    }

LABEL_11:
    while (1)
    {
      v15 = *(v8 + 768);
      if (v15 == 1)
      {
        break;
      }

      if (v15 == 2)
      {
        v16 = *(a4 + 56);
        if (v16 && (v17 = *(a4 + 48), v17 < *v16))
        {
          *(a4 + 48) = v17 + 1;
          v18 = *&v16[2 * v17 + 2];
          *(v18 + 16) |= 1u;
          v19 = *(v18 + 24);
          if (!v19)
          {
            goto LABEL_22;
          }
        }

        else
        {
          sub_14BCD74(*(a4 + 40));
          v24 = sub_19593CC(a4 + 40, v23);
          if (*(v8 + 768) != 2)
          {
            goto LABEL_33;
          }

          v18 = v24;
          *(v24 + 16) |= 1u;
          v19 = *(v24 + 24);
          if (!v19)
          {
LABEL_22:
            v25 = *(v18 + 8);
            v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
            if (v25)
            {
              v26 = *v26;
            }

            sub_14BAE64(v26);
            v19 = v27;
            *(v18 + 24) = v27;
          }
        }

        sub_64D110(v8, v19);
        if (*(v8 + 768) != 2)
        {
LABEL_33:
          sub_5AF20();
        }

        *(v18 + 16) |= 2u;
        v28 = *(v18 + 32);
        if (v28)
        {
          sub_64D110((v8 + 160), v28);
          v8 += 800;
          if (v8 == v9)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v29 = *(v18 + 8);
          v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
          if (v29)
          {
            v30 = *v30;
          }

          sub_14BAE64(v30);
          *(v18 + 32) = v31;
          sub_64D110((v8 + 160), v31);
          v8 += 800;
          if (v8 == v9)
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
LABEL_10:
        v8 += 800;
        if (v8 == v9)
        {
          goto LABEL_7;
        }
      }
    }

    v20 = sub_589204(a3, v8);
    if (!v20)
    {
      sub_49EC("unordered_map::at: key not found");
    }

    v21 = *(v20 + 10);
    v22 = *(a4 + 24);
    if (v22 == *(a4 + 28))
    {
      v14 = v22 + 1;
      sub_1958E5C((a4 + 24), v22 + 1);
      *(*(a4 + 32) + 4 * v22) = v21;
    }

    else
    {
      *(*(a4 + 32) + 4 * v22) = v21;
      v14 = v22 + 1;
    }

    *(a4 + 24) = v14;
    goto LABEL_10;
  }

  sub_64D110(a2, v7);
  v8 = *(a2 + 168);
  v9 = *(a2 + 176);
  if (v8 != v9)
  {
    goto LABEL_11;
  }

LABEL_7:
  v13 = *(a2 + 160);
  *(a4 + 16) |= 8u;
  *(a4 + 136) = v13;
}

void sub_EFAB68(void *a1@<X1>, unsigned int a2@<W2>, unsigned int a3@<W3>, _DWORD *a4@<X4>, unsigned int *a5@<X5>, void *a6@<X8>)
{
  v12 = a3;
  v13 = sub_69ADA0(a1, a3);
  __p[1] = 0;
  v36 = 0;
  __p[0] = 0;
  v14 = v13[1];
  if (v14 != *v13)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v14 - *v13) >> 2) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  if (sub_4D1DC0(a1) - 1 == v12)
  {
    v15 = 0.0;
    if (!a3)
    {
      v15 = (1000000000 - sub_4D2138(a1));
    }

    v16 = sub_4D2140(a1);
    sub_2F4C8(__p, 0, a6, v15 / 1000000000.0, v16 / 1000000000.0);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    return;
  }

  if (a3)
  {
    v17 = (a1[138] + 2616 * a2);
    if (v17[10] != v12)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v24 = sub_4D2138(a1);
    sub_2F4C8(__p, 0, &v33, (1000000000 - v24) / 1000000000.0, 1.0);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = v33;
    v36 = v34;
    v17 = (a1[138] + 2616 * a2);
    if (v17[10] != v12)
    {
LABEL_11:
      if (v17[13] == v12)
      {
        goto LABEL_12;
      }

      goto LABEL_25;
    }
  }

  v25 = v17[11];
  v26 = v25 / 100;
  v27 = v25 % 100;
  if (v25 < 0)
  {
    v28 = -50;
  }

  else
  {
    v28 = 50;
  }

  *a4 = sub_4DE8CC(__p, (v26 + (((5243 * (v28 + v27)) >> 19) + ((5243 * (v28 + v27)) >> 31))), 0.1);
  if (v17[13] == v12)
  {
LABEL_12:
    v18 = v17[14];
    if (v18 == 0x7FFFFFFFFFFFFFFFLL || ((v19 = v18 / 100, v20 = v18 % 100, v18 < 0) ? (v21 = -50) : (v21 = 50), v22 = v19 + (((5243 * (v21 + v20)) >> 19) + ((5243 * (v21 + v20)) >> 31)), v22 < 1))
    {
      v23 = 0;
      *a5 = 0;
    }

    else
    {
      v23 = sub_4DE8CC(__p, v22, 0.1);
      *a5 = v23;
    }

    goto LABEL_27;
  }

LABEL_25:
  v23 = *a5;
LABEL_27:
  v29 = __p[1];
  v30 = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 2) - 1;
  v31 = v30 > v23 && v30 > *a4;
  v32 = -12;
  if (!v31)
  {
    v32 = 0;
  }

  *a6 = __p[0];
  a6[1] = &v29[v32];
  a6[2] = v36;
}

void sub_EFAEB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_EFAEF4(double a1, uint64_t a2, void *a3, unsigned int a4)
{
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v4 = a3[1] - *a3;
  if (!v4)
  {
    return;
  }

  v7 = 0;
  v8 = 0;
  v27 = a4;
  v28 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
  do
  {
    while ((*(sub_ED0948(a3, v8) + 16) & 1) != 0 || (*(sub_ED0948(a3, v8) + 17) & 1) != 0 || (*(sub_ED0948(a3, v8) + 18) & 1) != 0 || v8 == 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) - 1)
    {
      v35 = v34;
      v30 = v8 + 1;
      v9 = v8 + 1 - v7;
      if (0xAAAAAAAAAAAAAAABLL * ((v36 - v34) >> 2) < v9)
      {
        if (v9 <= 0x1555555555555555)
        {
          operator new();
        }

        sub_1794();
      }

      v29 = v8;
      if (v7 <= v30)
      {
        v10 = v8 + 1;
      }

      else
      {
        v10 = v7;
      }

      v11 = v7;
      if (v30 > v7)
      {
        do
        {
          while (1)
          {
            v13 = sub_ED0948(a3, v11);
            v14 = v35;
            if (v35 >= v36)
            {
              break;
            }

            v12 = *v13;
            *(v35 + 2) = *(v13 + 8);
            *v14 = v12;
            v35 = v14 + 12;
            if (v10 == ++v11)
            {
              goto LABEL_29;
            }
          }

          v15 = v34;
          v16 = 0xAAAAAAAAAAAAAAABLL * ((v35 - v34) >> 2);
          v17 = v16 + 1;
          if (v16 + 1 > 0x1555555555555555)
          {
            sub_1794();
          }

          if (0x5555555555555556 * ((v36 - v34) >> 2) > v17)
          {
            v17 = 0x5555555555555556 * ((v36 - v34) >> 2);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v36 - v34) >> 2) >= 0xAAAAAAAAAAAAAAALL)
          {
            v18 = 0x1555555555555555;
          }

          else
          {
            v18 = v17;
          }

          if (v18)
          {
            if (v18 <= 0x1555555555555555)
            {
              operator new();
            }

            sub_1808();
          }

          v19 = 4 * ((v35 - v34) >> 2);
          v20 = *v13;
          *(v19 + 8) = *(v13 + 8);
          *v19 = v20;
          v21 = 12 * v16 + 12;
          v22 = (12 * v16 - (v14 - v15));
          memcpy((v19 - (v14 - v15)), v15, v14 - v15);
          v34 = v22;
          v35 = v21;
          v36 = 0;
          if (v15)
          {
            operator delete(v15);
          }

          v35 = v21;
          ++v11;
        }

        while (v10 != v11);
      }

LABEL_29:
      memset(__p, 0, sizeof(__p));
      sub_41DB4(&v34, v27, 0, 1, __p, &v32, a1);
      if (__p[0])
      {
        operator delete(__p[0]);
      }

      v23 = v33;
      if (v33)
      {
        v24 = 0;
        do
        {
          v25 = sub_ED0948(a3, v7);
          v26 = v32;
          *(v25 + 20) = (*(v32 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v24) & 1;
          ++v24;
          ++v7;
        }

        while (v23 != v24);
LABEL_36:
        operator delete(v26);
        goto LABEL_37;
      }

      v26 = v32;
      if (v32)
      {
        goto LABEL_36;
      }

LABEL_37:
      v7 = v29;
      v8 = v30;
      if (v30 == v28)
      {
        goto LABEL_40;
      }
    }

    ++v8;
  }

  while (v8 != v28);
LABEL_40:
  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }
}

void sub_EFB298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_EFB31C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v5 = 32;
  if (a3)
  {
    v5 = 40;
  }

  v6 = 64;
  if (a3)
  {
    v6 = 72;
  }

  if (a4 && *(a1 + v6) != *(a1 + v5))
  {
    v48 = 0uLL;
    v49 = 0;
    v7 = *(a2 + 32);
    if (v7)
    {
      sub_38004(&v48, v7);
      v22 = 0;
      v23 = 0;
      v24 = 0;
      if (*(&v48 + 1) != v48)
      {
        if (((*(&v48 + 1) - v48) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }
    }

    else
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
    }

    if (*(&v48 + 1) != v48)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0xAAAAAAAAAAAAAAABLL * ((*(&v48 + 1) - v48) >> 2);
      do
      {
        v13 = *(*(a2 + 40) + (v8 >> 29) + 8);
        if (*(v13 + 84) == 1)
        {
          *(v22 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
        }

        v14 = *(v13 + 32);
        if (!v14)
        {
          v14 = &off_2734B00;
        }

        v15 = *(v13 + 56);
        v16 = *(v14 + 7) / 10000000.0;
        v17 = -1;
        if (v16 <= 180.0)
        {
          v18 = *(v14 + 6) / 10000000.0;
          if (fabs(v18) <= 85.0511288 && v16 >= -180.0)
          {
            v19 = sin(fmin(fmax(v18, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
            LODWORD(v20) = ((log((v19 + 1.0) / (1.0 - v19)) / -12.5663706 + 0.5) * 4294967300.0);
            if (v20 >= 0xFFFFFFFE)
            {
              v20 = 4294967294;
            }

            else
            {
              v20 = v20;
            }

            v17 = ((v16 + 180.0) / 360.0 * 4294967300.0) | (v20 << 32);
          }
        }

        v12 = v48 + v9;
        *v12 = v17;
        *(v12 + 8) = v15;
        ++v10;
        v9 += 12;
        v8 += 0x100000000;
      }

      while (v11 != v10);
    }

    sub_40C4C(&v48, &v21);
  }

  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v36 = 0u;
  v35 = 0u;
  v30 = 0x1312D0000000000;
  v29 = 0;
  v25 = 0x4039000000000000;
  v26 = 5000;
  v27 = xmmword_2297CF0;
  v28 = xmmword_2297D00;
  v31 = 0x3FF199999999999ALL;
  v32 = 10000;
  DWORD2(v35) = 2;
  *&v36 = 0x4049000000000000;
  HIDWORD(v36) = 2000;
  v37 = 0x3FF0000000000000;
  v47 = 0;
  v33 = 0x2710000003E8;
  *&v35 = 0x3200000064;
  v38 = 0xBB800000258;
  v39 = xmmword_22AE600;
  v34 = 10;
  *&v43 = 0x3FD999999999999ALL;
  v42 = unk_22AE630;
  v41 = xmmword_22AE620;
  v40 = unk_22AE610;
  operator new();
}

void sub_EFBB08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46)
{
  v48 = *(v46 - 176);
  if (v48)
  {
    *(v46 - 168) = v48;
    operator delete(v48);
  }

  _Unwind_Resume(exception_object);
}

void sub_EFC1F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_EFC248(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  *a1 = a3;
  a1[1] = a2;
  a1[2] = sub_3AF6B4(a2);
  v6 = a1[1];
  v9[23] = 15;
  strcpy(v9, "ResponseBuilder");
  memset(v8, 0, sizeof(v8));
  v7 = sub_3AEC94(v6, v9, v8);
  sub_41D60C(v7, 0, a4, &v10);
  sub_F06D20();
}

void sub_EFC580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_5C010(&a18);
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_EFC5BC@<X0>(uint64_t a1@<X0>, unsigned int ***a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char **a5@<X4>, uint64_t a6@<X8>)
{
  sub_1757EA4(a6, 0, 0);
  v12 = a2[1];
  if (*a2 == v12)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
LABEL_69:
      *(a6 + 40) |= 0x400000u;
      v59 = 20;
      goto LABEL_70;
    }

    sub_19594F8(&v67);
    sub_4A5C(&v67, "No routes found", 15);
    if ((v77 & 0x10) != 0)
    {
      v61 = v76;
      if (v76 < v73)
      {
        v76 = v73;
        v61 = v73;
      }

      v62 = v72;
      v42 = v61 - v72;
      if (v61 - v72 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_72;
      }
    }

    else
    {
      if ((v77 & 8) == 0)
      {
        v42 = 0;
        v66 = 0;
LABEL_64:
        *(&__dst + v42) = 0;
        sub_7E854(&__dst, 1u);
        if (v66 < 0)
        {
          operator delete(__dst);
        }

        if (v75 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v69);
        std::ostream::~ostream();
        result = std::ios::~ios();
        goto LABEL_69;
      }

      v62 = v70;
      v42 = v71 - v70;
      if ((v71 - v70) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_72:
        sub_3244();
      }
    }

    if (v42 >= 0x17)
    {
      operator new();
    }

    v66 = v42;
    if (v42)
    {
      memmove(&__dst, v62, v42);
    }

    goto LABEL_64;
  }

  v64 = a5;
  v13 = 0;
  v14 = 0x4FBCDA3AC10C9715 * ((v12 - *a2) >> 7);
  do
  {
    v15 = *a2;
    v16 = *(a6 + 296);
    if (v16 && (v17 = *(a6 + 288), v17 < *v16))
    {
      *(a6 + 288) = v17 + 1;
      v18 = *&v16[2 * v17 + 2];
    }

    else
    {
      v19 = sub_14BD4AC(*(a6 + 280));
      v18 = sub_19593CC(a6 + 280, v19);
    }

    v20 = &v15[976 * v13];
    v21 = sub_68DB24(v20);
    v22 = v21;
    v23 = *a3;
    v24 = a3[1];
    if (*a3 != v24)
    {
      while (*v23 != v21)
      {
        v23 += 8;
        if (v23 == v24)
        {
          goto LABEL_12;
        }
      }
    }

    if (v23 == v24)
    {
LABEL_12:
      if (v24 >= a3[2])
      {
        sub_3E441C(a3);
        v25 = v26;
      }

      else
      {
        *v24 = -1;
        *(v24 + 16) = 0;
        *(v24 + 24) = 0;
        v25 = v24 + 32;
        *(v24 + 8) = 0;
      }

      a3[1] = v25;
      *(v25 - 32) = v22;
      v23 = (v25 - 32);
    }

    sub_EFCD74(a1, v20, v13++, v18, v23);
  }

  while (v13 != v14);
  sub_EFD344(a1, a6);
  sub_EFD4B8(a1, a4, a6);
  v28 = *(a4 + 1088);
  for (i = *(a4 + 1096); v28 != i; v28 += 1120)
  {
    v30 = *(a6 + 136);
    if (v30 && (v31 = *(a6 + 128), v31 < *v30))
    {
      *(a6 + 128) = v31 + 1;
      v32 = *&v30[2 * v31 + 2];
    }

    else
    {
      v33 = sub_14BDE5C(*(a6 + 120));
      v32 = sub_19593CC(a6 + 120, v33);
    }

    sub_EC6F6C(v28, v32, 1, v27);
  }

  sub_EFD614(a1, a4 + 1112, a6);
  v34 = sub_3B2A90(*(a1 + 8));
  v36 = *a2;
  v35 = a2[1];
  if (*a2 == v35)
  {
LABEL_29:
    v40 = 1;
  }

  else
  {
    v37 = v34;
    while (1)
    {
      v34 = nullsub_1(v36);
      v38 = *v34;
      v39 = v34[1];
      if (*v34 != v39)
      {
        break;
      }

LABEL_28:
      v36 += 976;
      if (v36 == v35)
      {
        goto LABEL_29;
      }
    }

    while (1)
    {
      v34 = sub_4B7C5C(v37, v38, *(*a1 + 40));
      if (v34 != 2)
      {
        break;
      }

      v38 += 12656;
      if (v38 == v39)
      {
        goto LABEL_28;
      }
    }

    v40 = 0;
  }

  *(a6 + 40) |= 0x4000000u;
  *(a6 + 565) = v40;
  v44 = *a2;
  v43 = a2[1];
  if (*a2 == v43)
  {
LABEL_40:
    v47 = 0;
  }

  else
  {
    while (1)
    {
      v34 = nullsub_1(v44);
      v45 = *v34;
      v46 = v34[1];
      if (*v34 != v46)
      {
        break;
      }

LABEL_39:
      v44 += 976;
      if (v44 == v43)
      {
        goto LABEL_40;
      }
    }

    while (1)
    {
      sub_4D1DDC(v45, &v67);
      __dst = a1;
      v34 = sub_F11230(v67, v68, v69.__locale_, v70, &__dst);
      if (v34)
      {
        break;
      }

      v45 += 1582;
      if (v45 == v46)
      {
        goto LABEL_39;
      }
    }

    v47 = 1;
  }

  *(a6 + 40) |= 0x10000000u;
  *(a6 + 567) = v47;
  if (**a1 == 1)
  {
    sub_ECD4F0(*(a1 + 16), a2, a6);
  }

  sub_ED456C(v34, a2, v64, a6);
  v48 = *(*a1 + 176);
  if (v48 == *(*a1 + 184) || *v48 != 2 || *(a1 + 85) != 1)
  {
    *(a6 + 40) |= 0x20000u;
    v49 = *(a6 + 512);
    if (v49)
    {
      v50 = 0;
      goto LABEL_53;
    }

    v50 = 0;
    v51 = (a6 + 512);
    v52 = *(a6 + 8);
    v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
    if (v52)
    {
      goto LABEL_74;
    }

    goto LABEL_52;
  }

  *(a6 + 40) |= 0x20000u;
  v49 = *(a6 + 512);
  if (!v49)
  {
    v51 = (a6 + 512);
    v63 = *(a6 + 8);
    v53 = (v63 & 0xFFFFFFFFFFFFFFFCLL);
    v50 = 1;
    if (v63)
    {
LABEL_74:
      v53 = *v53;
    }

LABEL_52:
    v49 = sub_14BF800(v53);
    *v51 = v49;
    goto LABEL_53;
  }

  v50 = 1;
LABEL_53:
  *(v49 + 16) |= 1u;
  *(v49 + 24) = v50;
  v54 = sub_1950D4C((a6 + 16), dword_278CFF0, 11, &off_2769490, 0);
  v55 = sub_68C454(*a2, 0);
  *(v54 + 16) |= 1u;
  v56 = *(v54 + 8);
  v57 = (v56 & 0xFFFFFFFFFFFFFFFCLL);
  if (v56)
  {
    v57 = *v57;
  }

  sub_194EA1C((v54 + 48), (v55 + 7464), v57);
  v58 = sub_3AF114(*(a1 + 8));
  result = sub_2D5630(*v58);
  v59 = 0;
  v60 = *(a6 + 40);
  *(a6 + 566) = result;
  *(a6 + 40) = v60 | 0x8400000;
LABEL_70:
  *(a6 + 552) = v59;
  return result;
}

void sub_EFCC74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_1959728(&a17);
    sub_1758FB8(v17);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a17);
  sub_1758FB8(v17);
  _Unwind_Resume(a1);
}

void sub_EFCD74(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_68EF04(a2);
  v11 = sub_EC7E9C(v10);
  *(a4 + 40) |= 0x100u;
  *(a4 + 288) = v11;
  v12 = sub_68DB24(a2);
  *(a4 + 40) |= 0x40u;
  *(a4 + 280) = v12;
  v13 = sub_394BD0();
  v14 = sub_EC7E7C(v13);
  *(a4 + 40) |= 0x80u;
  *(a4 + 284) = v14;
  v15 = sub_68D7F4(a2);
  v16 = sub_ECA8CC(v15);
  *(a4 + 40) |= 0x200u;
  *(a4 + 292) = v16;
  v17 = sub_68F890(a2);
  *(a4 + 40) |= 0x800u;
  v18 = *(a5 + 8);
  *(a4 + 300) = v17;
  v19 = 0x8E38E38E38E38E39 * ((*(a5 + 16) - v18) >> 3);
  if (v19 != sub_68C590(a2))
  {
    v20 = sub_68C590(a2);
    v21 = *(a5 + 8);
    v22 = *(a5 + 16);
    v23 = 0x8E38E38E38E38E39 * ((v22 - v21) >> 3);
    if (v20 <= v23)
    {
      if (v20 < v23)
      {
        v24 = v21 + 72 * v20;
        while (v22 != v24)
        {
          v22 -= 72;
          sub_3E4690(v22);
        }

        *(a5 + 16) = v24;
      }
    }

    else
    {
      sub_3E4818((a5 + 8), v20 - v23);
    }
  }

  v25 = nullsub_1(a2);
  v26 = v25[1] - *v25;
  if (v26)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0x5DDB1ADCB91F64A7 * (v26 >> 4);
    do
    {
      v32 = sub_68C454(a2, v28);
      v33 = sub_68D7F4(a2);
      v34 = *(a4 + 64);
      if (v34 && (v35 = *(a4 + 56), v35 < *v34))
      {
        *(a4 + 56) = v35 + 1;
        v31 = *&v34[2 * v35 + 2];
      }

      else
      {
        v30 = sub_14BD738(*(a4 + 48));
        v31 = sub_19593CC(a4 + 48, v30);
      }

      sub_EFD700(a1, v32, v33, a3, v28++, v31);
      v27 += 72;
    }

    while (v29 != v28);
  }

  sub_EF14D4(a1, a2, a4);
  v36 = sub_68C7DC(a2);
  if (v36 < 0)
  {
    v37 = -50;
  }

  else
  {
    v37 = 50;
  }

  v38 = *(a4 + 40);
  *(a4 + 296) = v36 / 100 + ((5243 * (v37 + v36 % 100)) >> 19) + ((5243 * (v37 + v36 % 100)) >> 31);
  *(a4 + 40) = v38 | 0x401;
  v39 = *(a4 + 232);
  if (!v39)
  {
    v40 = *(a4 + 8);
    v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
    if (v40)
    {
      v41 = *v41;
    }

    v39 = sub_14BCA7C(v41);
    *(a4 + 232) = v39;
  }

  if (*(a1 + 83))
  {
    v42 = 2;
  }

  else
  {
    v42 = 0;
  }

  sub_EF1590(a1, a2, v42, v39);
  *(a4 + 40) |= 0x20u;
  v43 = *(a4 + 272);
  if (!v43)
  {
    v44 = *(a4 + 8);
    v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
    if (v44)
    {
      v45 = *v45;
    }

    v43 = sub_14BCA7C(v45);
    *(a4 + 272) = v43;
  }

  sub_EF1590(a1, a2, 5, v43);
  *(a4 + 40) |= 2u;
  v46 = *(a4 + 240);
  if (v46)
  {
    if (sub_68D828(a2, 4))
    {
LABEL_31:
      v47 = 0;
      goto LABEL_36;
    }
  }

  else
  {
    v48 = *(a4 + 8);
    v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
    if (v48)
    {
      v49 = *v49;
    }

    v46 = sub_14BCAFC(v49);
    *(a4 + 240) = v46;
    if (sub_68D828(a2, 4))
    {
      goto LABEL_31;
    }
  }

  v47 = sub_68D828(a2, 9) ^ 1;
LABEL_36:
  *(v46 + 16) |= 1u;
  *(v46 + 24) = v47;
  v50 = sub_68D828(a2, 5);
  *(v46 + 16) |= 2u;
  *(v46 + 25) = v50 ^ 1;
  sub_EFDC78(a1, a2, a3, a4);
  *__p = 0u;
  *v69 = 0u;
  v70 = 1065353216;
  sub_EFDE30(a1, a2, __p, a4);
  sub_EF1FD0(a1, a2, a4);
  sub_EF21A0(a1, a2, a4);
  sub_EFE400(a1, a2, a4, __p);
  sub_EFE5F0(a1, a2, __p, a4);
  sub_EFE738(a1, a2, a4);
  v51 = sub_68E830(a2);
  v52 = *v51;
  v53 = v51[1];
  if (*v51 != v53)
  {
    do
    {
      v54 = *(a4 + 208);
      if (v54 && (v55 = *(a4 + 200), v55 < *v54))
      {
        *(a4 + 200) = v55 + 1;
        v56 = *&v54[2 * v55 + 2];
      }

      else
      {
        sub_14BDC34(*(a4 + 192));
        v56 = sub_19593CC(a4 + 192, v57);
      }

      sub_EB1F70(v52, __p, *a1, v56);
      v52 += 816;
    }

    while (v52 != v53);
  }

  v58 = sub_68F744(a2);
  v59 = *v58;
  v60 = *(v58 + 8);
  while (v59 != v60)
  {
    v62 = sub_97230(*v59);
    v63 = v62;
    v64 = *(a4 + 216);
    if (v64 == *(a4 + 220))
    {
      v61 = v64 + 1;
      sub_1958E5C((a4 + 216), v64 + 1);
      *(*(a4 + 224) + 4 * v64) = v63;
    }

    else
    {
      *(*(a4 + 224) + 4 * v64) = v62;
      v61 = v64 + 1;
    }

    *(a4 + 216) = v61;
    ++v59;
  }

  v65 = v69[0];
  if (v69[0])
  {
    do
    {
      v67 = *v65;
      if (*(v65 + 39) < 0)
      {
        operator delete(v65[2]);
      }

      operator delete(v65);
      v65 = v67;
    }

    while (v67);
  }

  v66 = __p[0];
  __p[0] = 0;
  if (v66)
  {
    operator delete(v66);
  }
}

void sub_EFD344(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 288);
  if (v2 >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v8 = *(*(a2 + 296) + 8 * v4 + 8);
      v9 = *(v8 + 56);
      if (v9 >= 1)
      {
        break;
      }

      v7 = v5;
LABEL_4:
      ++v4;
      v5 = v7;
      if (v4 == v2)
      {
        return;
      }
    }

    v10 = 0;
    while (1)
    {
      v11 = *(*(v8 + 64) + 8 * v10 + 8);
      *(v11 + 40) |= 4u;
      v12 = *(v11 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v18 = 4;
      LODWORD(__p) = v6;
      BYTE4(__p) = 0;
      sub_194EA1C((v11 + 720), &__p, v13);
      if (v18 < 0)
      {
        operator delete(__p);
        v14 = *(v11 + 64);
        if (v14 >= 1)
        {
LABEL_15:
          v15 = (*(v11 + 72) + 8);
          do
          {
            v16 = *v15++;
            v7 = (v5 + 1);
            *(v16 + 40) |= 0x400u;
            *(v16 + 256) = v5;
            LODWORD(v5) = v5 + 1;
            --v14;
          }

          while (v14);
          goto LABEL_8;
        }
      }

      else
      {
        v14 = *(v11 + 64);
        if (v14 >= 1)
        {
          goto LABEL_15;
        }
      }

      v7 = v5;
LABEL_8:
      ++v6;
      ++v10;
      v5 = v7;
      if (v10 == v9)
      {
        goto LABEL_4;
      }
    }
  }
}

void sub_EFD498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    v15 = a1;
    operator delete(__p);
    a1 = v15;
  }

  _Unwind_Resume(a1);
}

void sub_EFD4B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 40) |= 0x10000u;
  v4 = *(a3 + 504);
  if (v4)
  {
    v5 = *(a2 + 1064);
    i = *(a2 + 1072);
    if (v5 == i)
    {
      return;
    }

    goto LABEL_9;
  }

  v8 = *(a3 + 8);
  v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
  if (v8)
  {
    v9 = *v9;
  }

  v4 = sub_14BCF4C(v9);
  *(a3 + 504) = v4;
  v5 = *(a2 + 1064);
  for (i = *(a2 + 1072); v5 != i; v5 += 496)
  {
LABEL_9:
    *__p = 0u;
    *v18 = 0u;
    v19 = 1065353216;
    v10 = *(v4 + 88);
    if (v10 && (v11 = *(v4 + 80), v11 < *v10))
    {
      *(v4 + 80) = v11 + 1;
      v12 = *&v10[2 * v11 + 2];
    }

    else
    {
      v13 = sub_14BCE94(*(v4 + 72));
      v12 = sub_19593CC(v4 + 72, v13);
    }

    sub_EC74E8(v5, __p, v12);
    v14 = v18[0];
    if (v18[0])
    {
      do
      {
        v16 = *v14;
        if (*(v14 + 39) < 0)
        {
          operator delete(v14[2]);
        }

        operator delete(v14);
        v14 = v16;
      }

      while (v16);
    }

    v15 = __p[0];
    __p[0] = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }
}

void sub_EFD614(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (sub_5CC07C(a2))
  {
    *(a3 + 40) |= 0x40000u;
    v6 = *(a3 + 520);
    if (!v6)
    {
      v7 = *(a3 + 8);
      v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
      if (v7)
      {
        v8 = *v8;
      }

      sub_14BDC34(v8);
      v6 = v9;
      *(a3 + 520) = v9;
    }

    *__p = 0u;
    *v14 = 0u;
    v15 = 1065353216;
    sub_EB1F70(a2, __p, *a1, v6);
    v10 = v14[0];
    if (v14[0])
    {
      do
      {
        v12 = *v10;
        if (*(v10 + 39) < 0)
        {
          operator delete(v10[2]);
        }

        operator delete(v10);
        v10 = v12;
      }

      while (v12);
    }

    v11 = __p[0];
    __p[0] = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }
}

void sub_EFD700(uint64_t *a1, uint64_t a2, int a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v11 = sub_ECA8CC(a3);
  *(a6 + 40) |= 0x1000000u;
  *(a6 + 884) = v11;
  v12 = sub_EC7E7C(*(a2 + 1096));
  *(a6 + 40) |= 0x200000u;
  *(a6 + 872) = v12;
  v13 = sub_EC7E9C(*(a2 + 1097));
  *(a6 + 40) |= 0x2000000u;
  *(a6 + 888) = v13;
  v14 = sub_4D1DB8(a2);
  if (v14 < 0)
  {
    v15 = -50;
  }

  else
  {
    v15 = 50;
  }

  *(a6 + 40) |= 0x400000u;
  *(a6 + 876) = v14 / 100 + ((5243 * (v15 + v14 % 100)) >> 19) + ((5243 * (v15 + v14 % 100)) >> 31);
  sub_EF44A0(a1, a2, a6);
  sub_EFFA9C(a1, a2, a6);
  if (sub_4D20B0(a2, 4))
  {
    v16 = 0;
  }

  else
  {
    v16 = sub_4D20B0(a2, 9) ^ 1;
  }

  *(a6 + 44) |= 1u;
  *(a6 + 916) = v16;
  v17 = sub_4D20B0(a2, 5);
  *(a6 + 44) |= 2u;
  *(a6 + 917) = v17 ^ 1;
  if (*(a2 + 12344) == *(a2 + 12352))
  {
    sub_EC6B44((a2 + 7392), a6);
  }

  else
  {
    sub_ECA0F4((a2 + 12344), a6);
  }

  sub_F0004C(a1, a2, a4, a5, a6);
  sub_F00234(a1, a2, a6);
  sub_F00308(a1, a2, a6);
  if (*(a2 + 12024) != *(a2 + 12032) && *(a2 + 12008) != 0x7FFFFFFFFFFFFFFFLL && *(a2 + 12016) != 0x7FFFFFFFFFFFFFFFLL)
  {
    *(a6 + 40) |= 0x4000u;
    v18 = *(a6 + 816);
    if (!v18)
    {
      v19 = *(a6 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      sub_14BBF6C(v20);
      v18 = v21;
      *(a6 + 816) = v21;
    }

    sub_EC8758((a2 + 12008), v18);
  }

  sub_F03B48(a1, a2, a6);
  sub_F0413C(a1, a2, a6);
  sub_F04524(a1, a2, a6);
  sub_EF5DF0(a1, a2, a6);
  sub_EF5FE8(a1, a2, a6);
  v22 = *(a2 + 12376);
  v23 = *(a2 + 12384);
  if (v22 != v23)
  {
    v24 = (a6 + 560);
    do
    {
      while (1)
      {
        v25 = *v22 < 0 ? -50 : 50;
        v26 = *v22 / 100 + ((5243 * (v25 + *v22 % 100)) >> 19) + ((5243 * (v25 + *v22 % 100)) >> 31);
        v27 = *(a6 + 584);
        if (v27 == *(a6 + 588))
        {
          v28 = v27 + 1;
          sub_1958E5C((a6 + 584), v27 + 1);
          *(*(a6 + 592) + 4 * v27) = v26;
        }

        else
        {
          *(*(a6 + 592) + 4 * v27) = v26;
          v28 = v27 + 1;
        }

        *(a6 + 584) = v28;
        v29 = *(v22 + 8) ? 1 : 2;
        v30 = *(a6 + 560);
        if (v30 != *(a6 + 564))
        {
          break;
        }

        sub_1958E5C((a6 + 560), v30 + 1);
        *(*(a6 + 568) + 4 * v30) = v29;
        *v24 = v30 + 1;
        v22 += 16;
        if (v22 == v23)
        {
          goto LABEL_32;
        }
      }

      *(*(a6 + 568) + 4 * v30) = v29;
      *v24 = v30 + 1;
      v22 += 16;
    }

    while (v22 != v23);
  }

LABEL_32:
  v31 = *(a2 + 10176);
  for (i = *(a2 + 10184); v31 != i; v31 += 616)
  {
    while (1)
    {
      v35 = *(a6 + 624);
      if (v35)
      {
        v36 = *(a6 + 616);
        if (v36 < *v35)
        {
          break;
        }
      }

      v33 = sub_14BA560(*(a6 + 608));
      v34 = sub_19593CC(a6 + 608, v33);
      sub_ECB328(v31, v34);
      v31 += 616;
      if (v31 == i)
      {
        goto LABEL_38;
      }
    }

    *(a6 + 616) = v36 + 1;
    sub_ECB328(v31, *&v35[2 * v36 + 2]);
  }

LABEL_38:
  v37 = *(a2 + 10152);
  for (j = *(a2 + 10160); v37 != j; v37 += 616)
  {
    while (1)
    {
      v41 = *(a6 + 648);
      if (v41)
      {
        v42 = *(a6 + 640);
        if (v42 < *v41)
        {
          break;
        }
      }

      v39 = sub_14BA560(*(a6 + 632));
      v40 = sub_19593CC(a6 + 632, v39);
      sub_ECB328(v37, v40);
      v37 += 616;
      if (v37 == j)
      {
        goto LABEL_44;
      }
    }

    *(a6 + 640) = v42 + 1;
    sub_ECB328(v37, *&v41[2 * v42 + 2]);
  }

LABEL_44:
  v43 = *(a2 + 10200);
  for (k = *(a2 + 10208); v43 != k; v43 += 616)
  {
    while (1)
    {
      v47 = *(a6 + 624);
      if (v47)
      {
        v48 = *(a6 + 616);
        if (v48 < *v47)
        {
          break;
        }
      }

      v45 = sub_14BA560(*(a6 + 608));
      v46 = sub_19593CC(a6 + 608, v45);
      sub_ECB328(v43, v46);
      v43 += 616;
      if (v43 == k)
      {
        goto LABEL_50;
      }
    }

    *(a6 + 616) = v48 + 1;
    sub_ECB328(v43, *&v47[2 * v48 + 2]);
  }

LABEL_50:

  sub_EF6160(a1, a2, a6);
}

void sub_EFDC78(_BYTE *a1, void *a2, unint64_t a3, uint64_t a4)
{
  v8 = nullsub_1(a2);
  v9 = v8[1] - *v8;
  if (v9)
  {
    v10 = 0;
    v11 = 0x5DDB1ADCB91F64A7 * (v9 >> 4);
    while (1)
    {
      v12 = sub_68C454(a2, v10);
      v13 = *(v12 + 10320);
      v14 = *(v12 + 10328);
      if (v13 != v14)
      {
        break;
      }

LABEL_3:
      if (++v10 == v11)
      {
        return;
      }
    }

    v15 = v12;
    while (1)
    {
      if (!sub_6834F4(v13))
      {
        goto LABEL_6;
      }

      v16 = sub_4D1DC0(v15);
      v17 = *(v13 + 8);
      if (v17 >= v16 || v17 == v16 - 1 && sub_4D2140(v15) < 0x3B9ACA00)
      {
        goto LABEL_6;
      }

      if (sub_683A0C(v13))
      {
        if (a1[24])
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (!sub_445A90(v13))
        {
          if (!sub_683864(v13) && !sub_683854(v13) || a1[26] != 1)
          {
            goto LABEL_6;
          }

LABEL_20:
          sub_EFF7BC(a3, v10, v13, &__p);
          sub_EFED74(a1, v13, &__p.__r_.__value_.__l.__data_, a4);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          goto LABEL_6;
        }

        if (a1[25])
        {
          goto LABEL_20;
        }
      }

LABEL_6:
      v13 += 104;
      if (v13 == v14)
      {
        goto LABEL_3;
      }
    }
  }
}

void sub_EFDE14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_EFDE30(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (*(a3 + 24))
  {
    v6 = *(a3 + 16);
    if (v6)
    {
      do
      {
        v75 = *v6;
        if (*(v6 + 39) < 0)
        {
          operator delete(v6[2]);
        }

        operator delete(v6);
        v6 = v75;
      }

      while (v75);
    }

    v5[2] = 0;
    v7 = v5[1];
    if (v7)
    {
      bzero(*v5, 8 * *&v7);
    }

    v5[3] = 0;
  }

  v8 = nullsub_1(a2);
  v9 = 0x5DDB1ADCB91F64A7 * ((v8[1] - *v8) >> 4);
  if (v9 >= 1)
  {
    v10 = 0;
    v76 = v9 & 0x7FFFFFFF;
    v80 = a4;
    v85 = v5;
    do
    {
      v78 = v10;
      v11 = sub_68C454(a2, v10);
      v12 = *(v11 + 7416);
      v83 = *(v11 + 7424);
      if (v12 == v83)
      {
        goto LABEL_8;
      }

      v81 = (*(*(a4 + 64) + 8 * v78 + 8) + 272);
      v82 = *(*(a4 + 64) + 8 * v78 + 8);
      do
      {
LABEL_12:
        v13 = *(v12 + 71);
        if (v13 >= 0)
        {
          v14 = (v12 + 48);
        }

        else
        {
          v14 = *(v12 + 48);
        }

        if (v13 >= 0)
        {
          v15 = *(v12 + 71);
        }

        else
        {
          v15 = *(v12 + 56);
        }

        v16 = sub_AAD8(&v86, v14, v15);
        v17 = v5[1];
        if (!*&v17)
        {
          goto LABEL_57;
        }

        v18 = v16;
        v19 = vcnt_s8(v17);
        v19.i16[0] = vaddlv_u8(v19);
        if (v19.u32[0] > 1uLL)
        {
          v20 = v16;
          v21 = v85;
          if (v16 >= *&v17)
          {
            v20 = v16 % *&v17;
          }
        }

        else
        {
          v20 = (*&v17 - 1) & v16;
          v21 = v85;
        }

        v22 = *(*v21 + 8 * v20);
        if (!v22 || (v23 = *v22) == 0)
        {
LABEL_57:
          a4 = v80;
          v40 = *(v80 + 176);
          v39 = v85;
          *(sub_EB37EC(v85, v12 + 48) + 10) = v40;
          v42 = *(v80 + 184);
          if (v42 && (v43 = *(v80 + 176), v43 < *v42))
          {
            *(v80 + 176) = v43 + 1;
            v44 = *&v42[2 * v43 + 2];
          }

          else
          {
            v45 = sub_14BDE5C(*(v80 + 168));
            v44 = sub_19593CC(v80 + 168, v45);
          }

          sub_EC6F6C(v12, v44, 1, v41);
          v24 = *(v12 + 71);
          v26 = *(v12 + 48);
          v38 = *(v12 + 56);
          v25 = *(v12 + 71);
          goto LABEL_62;
        }

        v24 = *(v12 + 71);
        v25 = v24;
        v26 = *(v12 + 48);
        v79 = *(v12 + 56);
        if ((v24 & 0x80u) == 0)
        {
          v27 = *(v12 + 71);
        }

        else
        {
          v27 = *(v12 + 56);
        }

        if ((v24 & 0x80u) == 0)
        {
          v28 = (v12 + 48);
        }

        else
        {
          v28 = *(v12 + 48);
        }

        __s2 = v28;
        if (v19.u32[0] < 2uLL)
        {
          v29 = *&v17 - 1;
          while (1)
          {
            v34 = v23[1];
            if (v18 == v34)
            {
              v35 = *(v23 + 39);
              v36 = v35;
              if (v35 < 0)
              {
                v35 = v23[3];
              }

              if (v35 == v27)
              {
                v37 = v36 >= 0 ? (v23 + 2) : v23[2];
                if (!memcmp(v37, __s2, v27))
                {
                  goto LABEL_56;
                }
              }
            }

            else if ((v34 & v29) != v20)
            {
              goto LABEL_57;
            }

            v23 = *v23;
            if (!v23)
            {
              goto LABEL_57;
            }
          }
        }

        while (1)
        {
          v30 = v23[1];
          if (v18 == v30)
          {
            break;
          }

          if (v30 >= *&v17)
          {
            v30 %= *&v17;
          }

          if (v30 != v20)
          {
            goto LABEL_57;
          }

LABEL_34:
          v23 = *v23;
          if (!v23)
          {
            goto LABEL_57;
          }
        }

        v31 = *(v23 + 39);
        v32 = v31;
        if (v31 < 0)
        {
          v31 = v23[3];
        }

        if (v31 != v27)
        {
          goto LABEL_34;
        }

        v33 = v32 >= 0 ? (v23 + 2) : v23[2];
        if (memcmp(v33, __s2, v27))
        {
          goto LABEL_34;
        }

LABEL_56:
        v38 = v79;
        a4 = v80;
        v39 = v85;
LABEL_62:
        if (v25 >= 0)
        {
          v46 = (v12 + 48);
        }

        else
        {
          v46 = v26;
        }

        if (v25 >= 0)
        {
          v47 = v24;
        }

        else
        {
          v47 = v38;
        }

        v48 = sub_AAD8(&v87, v46, v47);
        v49 = v39[1];
        if (!*&v49)
        {
          goto LABEL_119;
        }

        v50 = v48;
        v51 = vcnt_s8(v49);
        v51.i16[0] = vaddlv_u8(v51);
        if (v51.u32[0] > 1uLL)
        {
          v52 = v48;
          if (v48 >= *&v49)
          {
            v52 = v48 % *&v49;
          }
        }

        else
        {
          v52 = (*&v49 - 1) & v48;
        }

        v53 = *(*v39 + 8 * v52);
        if (!v53 || (v54 = *v53) == 0)
        {
LABEL_119:
          sub_49EC("unordered_map::at: key not found");
        }

        v55 = *(v12 + 71);
        if (v55 >= 0)
        {
          v56 = *(v12 + 71);
        }

        else
        {
          v56 = *(v12 + 56);
        }

        if (v55 >= 0)
        {
          v57 = (v12 + 48);
        }

        else
        {
          v57 = *(v12 + 48);
        }

        if (v51.u32[0] < 2uLL)
        {
          v58 = *&v49 - 1;
          while (1)
          {
            v63 = v54[1];
            if (v63 == v50)
            {
              v64 = *(v54 + 39);
              v65 = v64;
              if ((v64 & 0x80u) != 0)
              {
                v64 = v54[3];
              }

              if (v64 == v56)
              {
                v66 = v65 >= 0 ? v54 + 2 : v54[2];
                if (!memcmp(v66, v57, v56))
                {
                  goto LABEL_106;
                }
              }
            }

            else if ((v63 & v58) != v52)
            {
              goto LABEL_119;
            }

            v54 = *v54;
            if (!v54)
            {
              goto LABEL_119;
            }
          }
        }

        while (2)
        {
          v59 = v54[1];
          if (v59 != v50)
          {
            if (v59 >= *&v49)
            {
              v59 %= *&v49;
            }

            if (v59 != v52)
            {
              goto LABEL_119;
            }

LABEL_84:
            v54 = *v54;
            if (!v54)
            {
              goto LABEL_119;
            }

            continue;
          }

          break;
        }

        v60 = *(v54 + 39);
        v61 = v60;
        if ((v60 & 0x80u) != 0)
        {
          v60 = v54[3];
        }

        if (v60 != v56)
        {
          goto LABEL_84;
        }

        v62 = v61 >= 0 ? v54 + 2 : v54[2];
        if (memcmp(v62, v57, v56))
        {
          goto LABEL_84;
        }

LABEL_106:
        v67 = *(v54 + 10);
        v68 = *(v12 + 464);
        if (v68 < 0)
        {
          v69 = -50;
        }

        else
        {
          v69 = 50;
        }

        v70 = *(v82 + 248);
        if (v70 == *(v82 + 252))
        {
          v71 = v70 + 1;
          sub_1958E5C((v82 + 248), v70 + 1);
          *(*(v82 + 256) + 4 * v70) = v67;
        }

        else
        {
          *(*(v82 + 256) + 4 * v70) = v67;
          v71 = v70 + 1;
        }

        v72 = 5243 * (v69 + v68 % 100);
        v73 = v68 / 100 + ((v72 >> 19) + (v72 >> 31));
        *(v82 + 248) = v71;
        v74 = *(v82 + 272);
        v5 = v85;
        if (v74 != *(v82 + 276))
        {
          *(*(v82 + 280) + 4 * v74) = v73;
          *v81 = v74 + 1;
          v12 += 1120;
          if (v12 == v83)
          {
            break;
          }

          goto LABEL_12;
        }

        sub_1958E5C(v81, v74 + 1);
        *(*(v82 + 280) + 4 * v74) = v73;
        *v81 = v74 + 1;
        v12 += 1120;
      }

      while (v12 != v83);
LABEL_8:
      v10 = v78 + 1;
    }

    while (v78 + 1 != v76);
  }
}

void sub_EFE400(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = nullsub_1(a2);
  v8 = 0x5DDB1ADCB91F64A7 * ((v7[1] - *v7) >> 4);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = v8 & 0x7FFFFFFF;
    while (1)
    {
      v12 = sub_68C454(a2, v9);
      v13 = *(*(a3 + 64) + 8 * v9 + 8);
      v22[2] = &v23;
      v23 = v13;
      v22[0] = a4;
      v22[1] = a3;
      sub_69D1F4(v12, &__p);
      v14 = __p;
      if (__p != v21)
      {
        sub_EF42D0(v22, __p);
      }

      if (!__p)
      {
        goto LABEL_5;
      }

      v15 = v21;
      v11 = __p;
      if (v21 != __p)
      {
        break;
      }

LABEL_4:
      v21 = v14;
      operator delete(v11);
LABEL_5:
      if (++v9 == v10)
      {
        return;
      }
    }

    while (1)
    {
      if (*(v15 - 9) < 0)
      {
        operator delete(*(v15 - 4));
        v16 = *(v15 - 8);
        if (!v16)
        {
LABEL_14:
          if ((*(v15 - 65) & 0x80000000) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_26;
        }
      }

      else
      {
        v16 = *(v15 - 8);
        if (!v16)
        {
          goto LABEL_14;
        }
      }

      v17 = *(v15 - 7);
      if (v17 == v16)
      {
        *(v15 - 7) = v16;
        operator delete(v16);
        if ((*(v15 - 65) & 0x80000000) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        do
        {
          v18 = *(v17 - 1);
          v17 -= 3;
          if (v18 < 0)
          {
            operator delete(*v17);
          }
        }

        while (v17 != v16);
        v19 = *(v15 - 8);
        *(v15 - 7) = v16;
        operator delete(v19);
        if ((*(v15 - 65) & 0x80000000) == 0)
        {
LABEL_15:
          if ((*(v15 - 89) & 0x80000000) == 0)
          {
            goto LABEL_16;
          }

          goto LABEL_27;
        }
      }

LABEL_26:
      operator delete(*(v15 - 11));
      if ((*(v15 - 89) & 0x80000000) == 0)
      {
LABEL_16:
        if (*(v15 - 137) < 0)
        {
          goto LABEL_28;
        }

        goto LABEL_11;
      }

LABEL_27:
      operator delete(*(v15 - 14));
      if (*(v15 - 137) < 0)
      {
LABEL_28:
        operator delete(*(v15 - 20));
      }

LABEL_11:
      v15 -= 21;
      if (v15 == v14)
      {
        v11 = __p;
        goto LABEL_4;
      }
    }
  }
}

void sub_EFE5DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_51B6E0(va);
  _Unwind_Resume(a1);
}

void sub_EFE5F0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  *(a4 + 40) |= 4u;
  v7 = *(a4 + 248);
  if (!v7)
  {
    v9 = *(a4 + 8);
    v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
    if (v9)
    {
      v10 = *v10;
    }

    v7 = sub_14BD0D0(v10);
    *(a4 + 248) = v7;
  }

  sub_EF2A70(a1, a2, v7);
  v11 = sub_68EA58(a2);
  v12 = *(v11 + 23);
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(v11 + 8);
  }

  if (v12)
  {
    *(v7 + 16) |= 4u;
    v13 = *(v7 + 64);
    if (!v13)
    {
      v14 = *(v7 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      sub_14BAE64(v15);
      v13 = v16;
      *(v7 + 64) = v16;
    }

    v17 = sub_68EA58(a2);
    sub_64E090(v13, v17);
  }

  sub_EF2D30(a1, a2, v7);
  sub_EFEB50(a1, a2, v7);
  sub_EFEC08(a1, a2, v7);
  sub_EF3144(a1, a2, a3, v7);
  v18 = sub_68F800(a2);

  sub_EF33D0(v18, v7);
}

void sub_EFE738(int **a1, void *a2, uint64_t a3)
{
  if (*(*a1 + 32) == 1)
  {
    sub_EEA6F4(&v17, *a1);
    sub_EEA9F8(&v17, a2, a3);
    v17 = &off_26744A8;
    v5 = __p;
    if (!__p)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (sub_7E7E4(3u))
  {
    sub_19594F8(&v17);
    sub_4A5C(&v17, "Request that has supports_waypoint_routes set to true but supports_guidance_events set to false which shouldn't happen.", 119);
    if ((v28 & 0x10) != 0)
    {
      v8 = v27;
      if (v27 < v23)
      {
        v27 = v23;
        v8 = v23;
      }

      v9 = v22;
      v7 = v8 - v22;
      if (v8 - v22 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if ((v28 & 8) == 0)
      {
        v7 = 0;
        v16 = 0;
LABEL_25:
        *(&v15 + v7) = 0;
        sub_7E854(&v15, 3u);
        if (v16 < 0)
        {
          operator delete(v15);
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(v24);
        }

        std::locale::~locale(&v19);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_30;
      }

      v9 = v20;
      v7 = v21 - v20;
      if ((v21 - v20) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_36:
        sub_3244();
      }
    }

    if (v7 >= 0x17)
    {
      operator new();
    }

    v16 = v7;
    if (v7)
    {
      memmove(&v15, v9, v7);
    }

    goto LABEL_25;
  }

LABEL_30:
  sub_EA8604(&v17, *a1);
  v10 = nullsub_1(a2);
  v11 = -1189124953 * ((v10[1] - *v10) >> 4);
  if (v11)
  {
    v12 = 0;
    do
    {
      v13 = *(*(a3 + 64) + 8 * v12 + 8);
      v14 = sub_68C454(a2, v12);
      sub_EA8758(&v17, v14, v13);
      ++v12;
    }

    while (v11 != v12);
  }

  v17 = &off_26744A8;
  v5 = __p;
  if (__p)
  {
LABEL_3:
    v34 = v5;
    operator delete(v5);
  }

LABEL_4:
  if (v32 < 0)
  {
    operator delete(v31);
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }
}

void sub_EFEAC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

void sub_EFEB14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_EDE2F4(va);
  _Unwind_Resume(a1);
}

void sub_EFEB28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_EDE2F4(va);
  _Unwind_Resume(a1);
}

void sub_EFEB3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_EDE2F4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_EFEB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_68E508(a2);
  v6 = *(result + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(result + 8);
  }

  if (v6)
  {
    v7 = sub_68E508(a2);
    sub_64BC20(v12, v7);
    *(a3 + 16) |= 0x10u;
    v8 = *(a3 + 80);
    if (!v8)
    {
      v9 = *(a3 + 8);
      v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
      if (v9)
      {
        v10 = *v10;
      }

      sub_14BAE64(v10);
      v8 = v11;
      *(a3 + 80) = v11;
    }

    sub_64D110(v12, v8);
    return sub_53A868(v12);
  }

  return result;
}

void sub_EFEC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_68E760(a2);
  v6 = *(v5 + 32);
  if (v6 <= 2)
  {
    if (v6 == 1)
    {
      if (*v5 == -1)
      {
        return;
      }
    }

    else
    {
      if (v6 != 2)
      {
        return;
      }

      v7 = *(v5 + 4) == -1 && *v5 == -1;
      if (v7 && *(v5 + 8) == *(v5 + 16))
      {
        return;
      }
    }

LABEL_18:
    v9 = sub_68E760(a2);
    sub_55F1E8(v15, v9);
    *(a3 + 16) |= 0x40u;
    v11 = *(a3 + 96);
    if (!v11)
    {
      v12 = *(a3 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v11 = sub_14BF484(v13);
      *(a3 + 96) = v11;
    }

    sub_586C94(v15, v11, v10);
    if (v20 < 0)
    {
      operator delete(__p);
      if ((v18 & 0x80000000) == 0)
      {
LABEL_24:
        v14 = v16;
        if (v16 == -1)
        {
          return;
        }

LABEL_28:
        (off_26748C8[v14])(&v21, v15);
        return;
      }
    }

    else if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    operator delete(v17);
    v14 = v16;
    if (v16 == -1)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v6 == 3 || v6 == 4)
  {
    v8 = *(v5 + 23);
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(v5 + 8);
    }

    if (v8)
    {
      goto LABEL_18;
    }
  }
}

void sub_EFED60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53E440(va);
  _Unwind_Resume(a1);
}

void sub_EFED74(uint64_t a1, uint64_t a2, const void **a3, uint64_t a4)
{
  v6 = a2;
  if (sub_6834F4(a2))
  {
    v7 = sub_68395C(v6);
    v8 = *(v6 + 32);
    v9 = *(v6 + 40);
    if (v8 != v9)
    {
      v85 = HIDWORD(v7);
      v84 = v6;
      while (1)
      {
        if (!sub_683140(v8))
        {
          goto LABEL_7;
        }

        v13 = *(v8 + 16);
        if (v13 <= 2)
        {
          break;
        }

        switch(v13)
        {
          case 3:
            v20 = *(a4 + 160);
            if (v20 && (v21 = *(a4 + 152), v21 < *v20))
            {
              *(a4 + 152) = v21 + 1;
              v22 = *&v20[2 * v21 + 2];
            }

            else
            {
              sub_14BE058(*(a4 + 144));
              v22 = sub_19593CC(a4 + 144, v28);
            }

            if (*(a3 + 23) >= 0)
            {
              v29 = *(a3 + 23);
            }

            else
            {
              v29 = a3[1];
            }

            if (v29 + 15 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_159;
            }

            if (v29 + 15 >= 0x17)
            {
              operator new();
            }

            memset(&v86, 0, sizeof(v86));
            *(&v86.__r_.__value_.__s + 23) = v29 + 15;
            if (v29)
            {
              if (*(a3 + 23) >= 0)
              {
                v44 = a3;
              }

              else
              {
                v44 = *a3;
              }

              memmove(&v86, v44, v29);
            }

            strcpy(&v86 + v29, "_RedLightCamera");
            *(v22 + 16) |= 1u;
            v45 = *(v22 + 8);
            v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
            if (v45)
            {
              v46 = *v46;
            }

            sub_194EA30((v22 + 24), &v86, v46);
            if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v86.__r_.__value_.__l.__data_);
              *(v22 + 16) |= 4u;
              v48 = *(v22 + 40);
              if (!v48)
              {
                goto LABEL_140;
              }
            }

            else
            {
              *(v22 + 16) |= 4u;
              v48 = *(v22 + 40);
              if (!v48)
              {
LABEL_140:
                v74 = *(v22 + 8);
                v75 = (v74 & 0xFFFFFFFFFFFFFFFCLL);
                if (v74)
                {
                  v75 = *v75;
                }

                v48 = sub_16F5828(v75);
                *(v22 + 40) = v48;
              }
            }

            sub_EC6D34((v6 + 20), v48, v47);
            v76 = *(v22 + 16);
            *(v22 + 64) = 2;
            *(v22 + 16) = v76 | 0x220;
            *(v22 + 84) = v85;
            if (sub_683530(v6))
            {
              *(v22 + 16) |= 0x20u;
              *(v22 + 64) = 5;
            }

            break;
          case 4:
            v23 = *(a4 + 160);
            if (v23 && (v24 = *(a4 + 152), v24 < *v23))
            {
              *(a4 + 152) = v24 + 1;
              v25 = *&v23[2 * v24 + 2];
            }

            else
            {
              sub_14BE058(*(a4 + 144));
              v25 = sub_19593CC(a4 + 144, v30);
            }

            if (*(a3 + 23) >= 0)
            {
              v31 = *(a3 + 23);
            }

            else
            {
              v31 = a3[1];
            }

            if (byte_27BF3E7 >= 0)
            {
              v32 = byte_27BF3E7;
            }

            else
            {
              v32 = qword_27BF3D8;
            }

            if (v32 + v31 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_159;
            }

            if (v32 + v31 > 0x16)
            {
              operator new();
            }

            memset(&v86, 0, sizeof(v86));
            *(&v86.__r_.__value_.__s + 23) = v32 + v31;
            v6 = v84;
            if (v31)
            {
              if (*(a3 + 23) >= 0)
              {
                v49 = a3;
              }

              else
              {
                v49 = *a3;
              }

              memmove(&v86, v49, v31);
            }

            v50 = &v86 + v31;
            if (v32)
            {
              if (byte_27BF3E7 >= 0)
              {
                v51 = &qword_27BF3D0;
              }

              else
              {
                v51 = qword_27BF3D0;
              }

              memmove(v50, v51, v32);
            }

            v50[v32] = 0;
            *(v25 + 16) |= 1u;
            v52 = *(v25 + 8);
            v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
            if (v52)
            {
              v53 = *v53;
            }

            sub_194EA30((v25 + 24), &v86, v53);
            if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v86.__r_.__value_.__l.__data_);
              *(v25 + 16) |= 4u;
              v55 = *(v25 + 40);
              if (!v55)
              {
                goto LABEL_146;
              }
            }

            else
            {
              *(v25 + 16) |= 4u;
              v55 = *(v25 + 40);
              if (!v55)
              {
LABEL_146:
                v77 = *(v25 + 8);
                v78 = (v77 & 0xFFFFFFFFFFFFFFFCLL);
                if (v77)
                {
                  v78 = *v78;
                }

                v55 = sub_16F5828(v78);
                *(v25 + 40) = v55;
              }
            }

            sub_EC6D34((v84 + 20), v55, v54);
            v79 = *(v25 + 16);
            *(v25 + 64) = 5;
            *(v25 + 16) = v79 | 0x220;
            *(v25 + 84) = v85;
            break;
          case 5:
            v14 = *(a4 + 160);
            if (v14 && (v15 = *(a4 + 152), v15 < *v14))
            {
              *(a4 + 152) = v15 + 1;
              v16 = *&v14[2 * v15 + 2];
            }

            else
            {
              sub_14BE058(*(a4 + 144));
              v16 = sub_19593CC(a4 + 144, v35);
            }

            v36 = sub_683938(v6);
            std::to_string(&v86, v36);
            *(v16 + 16) |= 2u;
            v37 = *(v16 + 8);
            v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
            if (v37)
            {
              v38 = *v38;
            }

            sub_194EA30((v16 + 32), &v86, v38);
            if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v86.__r_.__value_.__l.__data_);
            }

            v39 = *(v16 + 16);
            *(v16 + 72) = *(v6 + 88) / 3.6;
            *(v16 + 16) = v39 | 0xA0;
            *(v16 + 64) = 1;
            if (*(a3 + 23) >= 0)
            {
              v40 = *(a3 + 23);
            }

            else
            {
              v40 = a3[1];
            }

            if (byte_27BF3FF >= 0)
            {
              v41 = byte_27BF3FF;
            }

            else
            {
              v41 = qword_27BF3F0;
            }

            if (v41 + v40 > 0x7FFFFFFFFFFFFFF7)
            {
LABEL_159:
              sub_3244();
            }

            if (v41 + v40 > 0x16)
            {
              operator new();
            }

            memset(&v86, 0, sizeof(v86));
            *(&v86.__r_.__value_.__s + 23) = v41 + v40;
            v6 = v84;
            if (v40)
            {
              if (*(a3 + 23) >= 0)
              {
                v64 = a3;
              }

              else
              {
                v64 = *a3;
              }

              memmove(&v86, v64, v40);
            }

            v65 = &v86 + v40;
            if (v41)
            {
              if (byte_27BF3FF >= 0)
              {
                v66 = &qword_27BF3E8;
              }

              else
              {
                v66 = qword_27BF3E8;
              }

              memmove(v65, v66, v41);
            }

            v65[v41] = 0;
            *(v16 + 16) |= 1u;
            v67 = *(v16 + 8);
            v68 = (v67 & 0xFFFFFFFFFFFFFFFCLL);
            if (v67)
            {
              v68 = *v68;
            }

            sub_194EA30((v16 + 24), &v86, v68);
            if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v86.__r_.__value_.__l.__data_);
            }

            v70 = *(v16 + 16);
            *(v16 + 84) = v85;
            *(v16 + 16) = v70 | 0x204;
            v71 = *(v16 + 40);
            if (!v71)
            {
              v72 = *(v16 + 8);
              v73 = (v72 & 0xFFFFFFFFFFFFFFFCLL);
              if (v72)
              {
                v73 = *v73;
              }

              v71 = sub_16F5828(v73);
              *(v16 + 40) = v71;
            }

            sub_EC6D34((v84 + 20), v71, v69);
            break;
        }

LABEL_7:
        v8 += 184;
        if (v8 == v9)
        {
          return;
        }
      }

      if (v13 != 1)
      {
        if (v13 != 2)
        {
          goto LABEL_7;
        }

        v17 = *(a4 + 136);
        if (v17 && (v18 = *(a4 + 128), v18 < *v17))
        {
          *(a4 + 128) = v18 + 1;
          v19 = *&v17[2 * v18 + 2];
        }

        else
        {
          v42 = sub_14BE0EC(*(a4 + 120));
          v19 = sub_19593CC(a4 + 120, v42);
        }

        if (*(a3 + 23) >= 0)
        {
          v43 = *(a3 + 23);
        }

        else
        {
          v43 = a3[1];
        }

        if (v43 + 9 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_159;
        }

        if (v43 + 9 >= 0x17)
        {
          operator new();
        }

        memset(&v86, 0, sizeof(v86));
        *(&v86.__r_.__value_.__s + 23) = v43 + 9;
        if (v43)
        {
          if (*(a3 + 23) >= 0)
          {
            v59 = a3;
          }

          else
          {
            v59 = *a3;
          }

          memmove(&v86, v59, v43);
        }

        strcpy(&v86 + v43, "_StopSign");
        *(v19 + 16) |= 1u;
        v60 = *(v19 + 8);
        v61 = (v60 & 0xFFFFFFFFFFFFFFFCLL);
        if (v60)
        {
          v61 = *v61;
        }

        sub_194EA30((v19 + 24), &v86, v61);
        if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v86.__r_.__value_.__l.__data_);
          *(v19 + 16) |= 2u;
          v63 = *(v19 + 32);
          if (!v63)
          {
LABEL_154:
            v82 = *(v19 + 8);
            v83 = (v82 & 0xFFFFFFFFFFFFFFFCLL);
            if (v82)
            {
              v83 = *v83;
            }

            v63 = sub_16F5828(v83);
            *(v19 + 32) = v63;
          }
        }

        else
        {
          *(v19 + 16) |= 2u;
          v63 = *(v19 + 32);
          if (!v63)
          {
            goto LABEL_154;
          }
        }

        sub_EC6D34((v6 + 20), v63, v62);
        *(v19 + 16) |= 0xCu;
        v12 = 2;
        goto LABEL_6;
      }

      v26 = *(a4 + 136);
      if (v26 && (v27 = *(a4 + 128), v27 < *v26))
      {
        *(a4 + 128) = v27 + 1;
        v19 = *&v26[2 * v27 + 2];
      }

      else
      {
        v33 = sub_14BE0EC(*(a4 + 120));
        v19 = sub_19593CC(a4 + 120, v33);
      }

      if (*(a3 + 23) >= 0)
      {
        v34 = *(a3 + 23);
      }

      else
      {
        v34 = a3[1];
      }

      if (v34 + 13 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_159;
      }

      if (v34 + 13 >= 0x17)
      {
        operator new();
      }

      memset(&v86, 0, sizeof(v86));
      *(&v86.__r_.__value_.__s + 23) = v34 + 13;
      if (v34)
      {
        if (*(a3 + 23) >= 0)
        {
          v56 = a3;
        }

        else
        {
          v56 = *a3;
        }

        memmove(&v86, v56, v34);
      }

      strcpy(&v86 + v34, "_TrafficLight");
      *(v19 + 16) |= 1u;
      v57 = *(v19 + 8);
      v58 = (v57 & 0xFFFFFFFFFFFFFFFCLL);
      if (v57)
      {
        v58 = *v58;
      }

      sub_194EA30((v19 + 24), &v86, v58);
      if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v86.__r_.__value_.__l.__data_);
        *(v19 + 16) |= 2u;
        v10 = *(v19 + 32);
        if (!v10)
        {
LABEL_151:
          v80 = *(v19 + 8);
          v81 = (v80 & 0xFFFFFFFFFFFFFFFCLL);
          if (v80)
          {
            v81 = *v81;
          }

          v10 = sub_16F5828(v81);
          *(v19 + 32) = v10;
        }
      }

      else
      {
        *(v19 + 16) |= 2u;
        v10 = *(v19 + 32);
        if (!v10)
        {
          goto LABEL_151;
        }
      }

      sub_EC6D34((v6 + 20), v10, v11);
      *(v19 + 16) |= 0xCu;
      v12 = 1;
LABEL_6:
      *(v19 + 40) = v12;
      *(v19 + 44) = v85;
      goto LABEL_7;
    }
  }
}

void sub_EFF78C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_EFF7BC(unint64_t __val@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, std::string *a4@<X8>)
{
  std::to_string(&v21, __val);
  v7 = std::string::append(&v21, "_", 1uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v20, a2);
  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v20;
  }

  else
  {
    v9 = v20.__r_.__value_.__r.__words[0];
  }

  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v20.__r_.__value_.__l.__size_;
  }

  v11 = std::string::append(&v22, v9, size);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = std::string::append(&v23, "_", 1uLL);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v19, *(a3 + 8));
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v19;
  }

  else
  {
    v15 = v19.__r_.__value_.__r.__words[0];
  }

  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(v19.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = v19.__r_.__value_.__l.__size_;
  }

  v17 = std::string::append(&v24, v15, v16);
  v18 = *&v17->__r_.__value_.__l.__data_;
  a4->__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&a4->__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }
  }

  else if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(v24.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v23.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v20.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_18:
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_26:
    operator delete(v21.__r_.__value_.__l.__data_);
    if (*(a3 + 4) != 2)
    {
      return;
    }

    goto LABEL_27;
  }

LABEL_25:
  operator delete(v22.__r_.__value_.__l.__data_);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_26;
  }

LABEL_19:
  if (*(a3 + 4) == 2)
  {
LABEL_27:
    std::string::append(a4, "_OffRoute", 9uLL);
  }
}