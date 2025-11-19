std::string *sub_2438BE270(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2438BFC64(&result->__r_.__value_.__l.__size_, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = *(a2 + 16);
  if ((v5 & 0xF) != 0)
  {
    if (v5)
    {
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      data = v3[1].__r_.__value_.__l.__data_;
      if (!data)
      {
        data = sub_2438BF43C(0);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v7 = *(a2 + 24);
      }

      else
      {
        v7 = &unk_27ED96C90;
      }

      result = sub_2438BD968(data, v7);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_23;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    size = v3[1].__r_.__value_.__l.__size_;
    if (!size)
    {
      size = sub_2438BF3A8(0);
      v3[1].__r_.__value_.__l.__size_ = size;
    }

    if (*(a2 + 32))
    {
      v9 = *(a2 + 32);
    }

    else
    {
      v9 = &unk_27ED96E00;
    }

    result = sub_2438BC950(size, v9);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
LABEL_9:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v5;
        return result;
      }

LABEL_8:
      v3[2].__r_.__value_.__r.__words[0] = *(a2 + 48);
      goto LABEL_9;
    }

LABEL_23:
    v3[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return result;
}

void *sub_2438BE378(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 112))
    {
      sub_243961E70(a1, &unk_28569ECD8, 48);
    }

    v2 = sub_243961B18(a1, 0x30uLL, sub_2438C0AB4);
    sub_2438ABF30(v2);
  }

  else
  {
    v2 = operator new(0x30uLL);
    sub_2438ABF30(v2);
  }

  return v2;
}

void *sub_2438BE40C(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 112))
    {
      sub_243961E70(a1, &unk_28569ECF0, 48);
    }

    v2 = sub_243961B18(a1, 0x30uLL, sub_2438C0AD8);
    sub_2438AC5A0(v2);
  }

  else
  {
    v2 = operator new(0x30uLL);
    sub_2438AC5A0(v2);
  }

  return v2;
}

void *sub_2438BE4A0(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 112))
    {
      sub_243961E70(a1, &unk_28569ED08, 64);
    }

    v2 = sub_243961B18(a1, 0x40uLL, sub_2438C0AFC);
    sub_2438ACB9C(v2);
  }

  else
  {
    v2 = operator new(0x40uLL);
    sub_2438ACB9C(v2);
  }

  return v2;
}

void *sub_2438BE534(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 112))
    {
      sub_243961E70(a1, &unk_28569ED20, 48);
    }

    v2 = sub_243961B18(a1, 0x30uLL, sub_2438C0B20);
    sub_2438AD698(v2);
  }

  else
  {
    v2 = operator new(0x30uLL);
    sub_2438AD698(v2);
  }

  return v2;
}

void *sub_2438BE5C8(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 112))
    {
      sub_243961E70(a1, &unk_28569ED38, 48);
    }

    v2 = sub_243961B18(a1, 0x30uLL, sub_2438C0B44);
    sub_2438ADE50(v2);
  }

  else
  {
    v2 = operator new(0x30uLL);
    sub_2438ADE50(v2);
  }

  return v2;
}

void *sub_2438BE65C(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 112))
    {
      sub_243961E70(a1, &unk_28569ED50, 32);
    }

    v2 = sub_243961B18(a1, 0x20uLL, sub_2438C0B68);
    sub_2438AE740(v2);
  }

  else
  {
    v2 = operator new(0x20uLL);
    sub_2438AE740(v2);
  }

  return v2;
}

void *sub_2438BE6F0(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 112))
    {
      sub_243961E70(a1, &unk_28569ED68, 64);
    }

    v2 = sub_243961B18(a1, 0x40uLL, sub_2438C0B8C);
    sub_2438AECE8(v2);
  }

  else
  {
    v2 = operator new(0x40uLL);
    sub_2438AECE8(v2);
  }

  return v2;
}

void *sub_2438BE784(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 112))
    {
      sub_243961E70(a1, &unk_28569ED80, 32);
    }

    v2 = sub_243961B18(a1, 0x20uLL, sub_2438C0BB0);
    sub_2438AF5A0(v2);
  }

  else
  {
    v2 = operator new(0x20uLL);
    sub_2438AF5A0(v2);
  }

  return v2;
}

void *sub_2438BE818(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 112))
    {
      sub_243961E70(a1, &unk_28569ED98, 48);
    }

    v2 = sub_243961B18(a1, 0x30uLL, sub_2438C0BD4);
    sub_2438AFA50(v2);
  }

  else
  {
    v2 = operator new(0x30uLL);
    sub_2438AFA50(v2);
  }

  return v2;
}

void *sub_2438BE8AC(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 112))
    {
      sub_243961E70(a1, &unk_28569EDB0, 120);
    }

    v2 = sub_243961B18(a1, 0x78uLL, sub_2438C0BF8);
    sub_2438B0018(v2);
  }

  else
  {
    v2 = operator new(0x78uLL);
    sub_2438B0018(v2);
  }

  return v2;
}

void *sub_2438BE940(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 112))
    {
      sub_243961E70(a1, &unk_28569EDC8, 56);
    }

    v2 = sub_243961B18(a1, 0x38uLL, sub_2438C0C1C);
    sub_2438B16B0(v2);
  }

  else
  {
    v2 = operator new(0x38uLL);
    sub_2438B16B0(v2);
  }

  return v2;
}

void *sub_2438BE9D4(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 112))
    {
      sub_243961E70(a1, &unk_28569EDE0, 48);
    }

    v2 = sub_243961B18(a1, 0x30uLL, sub_2438C0C40);
    sub_2438B1F4C(v2);
  }

  else
  {
    v2 = operator new(0x30uLL);
    sub_2438B1F4C(v2);
  }

  return v2;
}

void *sub_2438BEA68(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 112))
    {
      sub_243961E70(a1, &unk_28569EDF8, 56);
    }

    v2 = sub_243961B18(a1, 0x38uLL, sub_2438C0C64);
    sub_2438B2568(v2);
  }

  else
  {
    v2 = operator new(0x38uLL);
    sub_2438B2568(v2);
  }

  return v2;
}

void *sub_2438BEAFC(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 112))
    {
      sub_243961E70(a1, &unk_28569EE10, 48);
    }

    v2 = sub_243961B18(a1, 0x30uLL, sub_2438C0C88);
    sub_2438B2EF4(v2);
  }

  else
  {
    v2 = operator new(0x30uLL);
    sub_2438B2EF4(v2);
  }

  return v2;
}

void *sub_2438BEB90(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 112))
    {
      sub_243961E70(a1, &unk_28569EE28, 40);
    }

    v2 = sub_243961B18(a1, 0x28uLL, sub_2438C0CAC);
    sub_2438B34C4(v2);
  }

  else
  {
    v2 = operator new(0x28uLL);
    sub_2438B34C4(v2);
  }

  return v2;
}

void *sub_2438BEC24(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 112))
    {
      sub_243961E70(a1, &unk_28569EE40, 40);
    }

    v2 = sub_243961B18(a1, 0x28uLL, sub_2438C0CD0);
    sub_2438B3CF4(v2);
  }

  else
  {
    v2 = operator new(0x28uLL);
    sub_2438B3CF4(v2);
  }

  return v2;
}

void *sub_2438BECB8(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 112))
    {
      sub_243961E70(a1, &unk_28569EE58, 72);
    }

    v2 = sub_243961B18(a1, 0x48uLL, sub_2438C0CF4);
    sub_2438B453C(v2);
  }

  else
  {
    v2 = operator new(0x48uLL);
    sub_2438B453C(v2);
  }

  return v2;
}

void *sub_2438BED4C(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 112))
    {
      sub_243961E70(a1, &unk_28569EE70, 104);
    }

    v2 = sub_243961B18(a1, 0x68uLL, sub_2438C0D18);
    sub_2438B4D1C(v2);
  }

  else
  {
    v2 = operator new(0x68uLL);
    sub_2438B4D1C(v2);
  }

  return v2;
}

void *sub_2438BEDE0(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 112))
    {
      sub_243961E70(a1, &unk_28569EE88, 40);
    }

    v2 = sub_243961B18(a1, 0x28uLL, sub_2438C0D3C);
    sub_2438B5A34(v2);
  }

  else
  {
    v2 = operator new(0x28uLL);
    sub_2438B5A34(v2);
  }

  return v2;
}

void *sub_2438BEE74(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 112))
    {
      sub_243961E70(a1, &unk_28569EEA0, 112);
    }

    v2 = sub_243961B18(a1, 0x70uLL, sub_2438C0D60);
    sub_2438B60D4(v2);
  }

  else
  {
    v2 = operator new(0x70uLL);
    sub_2438B60D4(v2);
  }

  return v2;
}

void *sub_2438BEF08(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 112))
    {
      sub_243961E70(a1, &unk_28569EEB8, 96);
    }

    v2 = sub_243961B18(a1, 0x60uLL, sub_2438C0D84);
    sub_2438B6FFC(v2);
  }

  else
  {
    v2 = operator new(0x60uLL);
    sub_2438B6FFC(v2);
  }

  return v2;
}

void *sub_2438BEF9C(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 112))
    {
      sub_243961E70(a1, &unk_28569EED0, 40);
    }

    v2 = sub_243961B18(a1, 0x28uLL, sub_2438C0DA8);
    sub_2438B7B6C(v2);
  }

  else
  {
    v2 = operator new(0x28uLL);
    sub_2438B7B6C(v2);
  }

  return v2;
}

void *sub_2438BF030(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 112))
    {
      sub_243961E70(a1, &unk_28569EEE8, 48);
    }

    v2 = sub_243961B18(a1, 0x30uLL, sub_2438C0DCC);
    sub_2438B806C(v2);
  }

  else
  {
    v2 = operator new(0x30uLL);
    sub_2438B806C(v2);
  }

  return v2;
}

void *sub_2438BF0C4(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 112))
    {
      sub_243961E70(a1, &unk_28569EF00, 48);
    }

    v2 = sub_243961B18(a1, 0x30uLL, sub_2438C0DF0);
    sub_2438B8638(v2);
  }

  else
  {
    v2 = operator new(0x30uLL);
    sub_2438B8638(v2);
  }

  return v2;
}

void *sub_2438BF158(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 112))
    {
      sub_243961E70(a1, &unk_28569EF18, 80);
    }

    v2 = sub_243961B18(a1, 0x50uLL, sub_2438C0E14);
    sub_2438B8C08(v2);
  }

  else
  {
    v2 = operator new(0x50uLL);
    sub_2438B8C08(v2);
  }

  return v2;
}

void *sub_2438BF1EC(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 112))
    {
      sub_243961E70(a1, &unk_28569EF30, 40);
    }

    v2 = sub_243961B18(a1, 0x28uLL, sub_2438C0E38);
    sub_2438B96A0(v2);
  }

  else
  {
    v2 = operator new(0x28uLL);
    sub_2438B96A0(v2);
  }

  return v2;
}

void *sub_2438BF280(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 112))
    {
      sub_243961E70(a1, &unk_28569EF48, 72);
    }

    v2 = sub_243961B18(a1, 0x48uLL, sub_2438C0E5C);
    sub_2438B9E28(v2);
  }

  else
  {
    v2 = operator new(0x48uLL);
    sub_2438B9E28(v2);
  }

  return v2;
}

void *sub_2438BF314(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 112))
    {
      sub_243961E70(a1, &unk_28569EF60, 104);
    }

    v2 = sub_243961B18(a1, 0x68uLL, sub_2438C0E80);
    sub_2438BA888(v2);
  }

  else
  {
    v2 = operator new(0x68uLL);
    sub_2438BA888(v2);
  }

  return v2;
}

void *sub_2438BF3A8(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 112))
    {
      sub_243961E70(a1, &unk_28569EF78, 168);
    }

    v2 = sub_243961B18(a1, 0xA8uLL, sub_2438C0EA4);
    sub_2438BB644(v2);
  }

  else
  {
    v2 = operator new(0xA8uLL);
    sub_2438BB644(v2);
  }

  return v2;
}

void *sub_2438BF43C(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 112))
    {
      sub_243961E70(a1, &unk_28569EF90, 96);
    }

    v2 = sub_243961B18(a1, 0x60uLL, sub_2438C0EC8);
    sub_2438BCC18(v2);
  }

  else
  {
    v2 = operator new(0x60uLL);
    sub_2438BCC18(v2);
  }

  return v2;
}

void *sub_2438BF4D0(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 112))
    {
      sub_243961E70(a1, &unk_28569EFA8, 56);
    }

    v2 = sub_243961B18(a1, 0x38uLL, sub_2438C0EEC);
    sub_2438BDB14(v2);
  }

  else
  {
    v2 = operator new(0x38uLL);
    sub_2438BDB14(v2);
  }

  return v2;
}

uint64_t *sub_2438BF788(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = v2 & 0xFFFFFFFFFFFFFFFELL;
    if (!*((v2 & 0xFFFFFFFFFFFFFFFELL) + 24) && v3 != 0)
    {
      if (*(v3 + 23) < 0)
      {
        operator delete(*v3);
      }

      operator delete(v3);
    }
  }

  *a1 = 0;
  return a1;
}

double sub_2438BF7E4(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v2 = *((v2 & 0xFFFFFFFFFFFFFFFELL) + 24);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_7:
    v3 = operator new(0x20uLL);
    goto LABEL_8;
  }

  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (*(v2 + 112))
  {
    sub_243961E70(v2, &unk_28569EFC0, 32);
  }

  v3 = sub_243961B18(v2, 0x20uLL, sub_2438BF878);
LABEL_8:
  result = 0.0;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *a1 = v3 | 1;
  *(v3 + 24) = v2;
  return result;
}

void sub_2438BF878(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t **sub_2438BF88C(uint64_t **a1)
{
  v2 = *(a1 + 31);
  if (v2 < 0)
  {
    if (!a1[2])
    {
LABEL_3:
      if ((v2 & 0x80) == 0)
      {
        return a1;
      }

LABEL_9:
      operator delete(a1[1]);
      return a1;
    }
  }

  else if (!*(a1 + 31))
  {
    goto LABEL_3;
  }

  v4 = *a1;
  v5 = **a1;
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    sub_2438BF7E4(v4);
  }

  v7 = *(v6 + 16);
  v8 = *v6;
  v9 = a1[3];
  *v6 = *(a1 + 1);
  *(v6 + 16) = v9;
  *(a1 + 1) = v8;
  a1[3] = v7;
  if ((*(a1 + 31) & 0x80) != 0)
  {
    goto LABEL_9;
  }

  return a1;
}

void *sub_2438BF924(void *a1, uint64_t a2)
{
  result = operator new(0x18uLL);
  v5 = result;
  if (*(a2 + 23) < 0)
  {
    result = sub_2438BF99C(result, *a2, *(a2 + 8));
  }

  else
  {
    *result = *a2;
    result[2] = *(a2 + 16);
  }

  *a1 = v5;
  return result;
}

void *sub_2438BF99C(_BYTE *__dst, void *__src, unint64_t a3)
{
  v5 = __dst;
  if (a3 > 0x16)
  {
    if (a3 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_2438AA68C();
    }

    if ((a3 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (a3 | 7) + 1;
    }

    v7 = operator new(v6);
    v5[1] = a3;
    v5[2] = v6 | 0x8000000000000000;
    *v5 = v7;
    v5 = v7;
  }

  else
  {
    __dst[23] = a3;
  }

  return memmove(v5, __src, a3 + 1);
}

void sub_2438BFA30(unsigned int *a1, int a2)
{
  v2 = a1[1];
  if (v2 < a2)
  {
    if (v2 < 1)
    {
      v5 = (a1 + 2);
      v4 = 0;
      if (v2)
      {
        v6 = *v5;
      }

      else
      {
        v6 = (a1 + 2);
      }
    }

    else
    {
      v5 = (a1 + 2);
      v4 = *(a1 + 1);
      v6 = v4;
    }

    v7 = *v6;
    v8 = 2 * v2;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v8 <= 4)
    {
      v9 = 4;
    }

    else
    {
      v9 = v8;
    }

    v10 = 8 * v9;
    if (v7)
    {
      v11 = v10 + 15;
      if (*(v7 + 112))
      {
        sub_243961E70(v7, MEMORY[0x277D827A0], v11 & 0x7FFFFFFF8);
      }

      v12 = sub_243961A00(v7, v11 & 0x7FFFFFFF8);
    }

    else
    {
      v12 = operator new(v10 + 8);
    }

    *(a1 + 1) = v12;
    *v12 = v7;
    a1[1] = v9;
    v13 = *a1;
    if (v13 >= 1)
    {
      memcpy(*v5 + 1, v4 + 1, 8 * v13);
    }

    if (v4 && !*v4)
    {

      operator delete(v4);
    }
  }
}

void sub_2438BFB5C(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void *sub_2438BFB70(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2438AA68C();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v6 = operator new(v7);
    a1[1] = v5;
    a1[2] = v7 | 0x8000000000000000;
    *a1 = v6;
  }

  else
  {
    *(a1 + 23) = v4;
    v6 = a1;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  memmove(v6, __s, v5);
LABEL_10:
  *(v6 + v5) = 0;
  return a1;
}

uint64_t sub_2438BFC18(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 >= 1)
  {
    v2 = *(result + 16) + 8;
    do
    {
      v3 = *v2;
      if (*(*v2 + 23) < 0)
      {
        **v3 = 0;
        *(v3 + 8) = 0;
      }

      else
      {
        *v3 = 0;
        *(v3 + 23) = 0;
      }

      v2 += 8;
      --v1;
    }

    while (v1);
    *(result + 8) = 0;
  }

  return result;
}

std::string *sub_2438BFC64(uint64_t *a1, uint64_t a2)
{
  if (*a1)
  {
    v3 = (*a1 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    sub_2438BF7E4(a1);
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  return std::string::append(v3, v5, v6);
}

void sub_2438BFCC0(uint64_t *a1)
{
  if (*a1)
  {
    v1 = *a1 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    sub_2438BF7E4(a1);
  }

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

void sub_2438BFD08(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 2;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          (*(**v3 + 8))(*v3);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

std::string *sub_2438BFD94(std::string *result, std::string **a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_2438BFE44(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_2438BE940(v18);
      result = sub_2438BFE44(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t *sub_2438BFE54(uint64_t *result, void **a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_2438BFF04(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_2438BEA68(v18);
      result = sub_2438BFF04(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

std::string *sub_2438BFF14(std::string *result, std::string **a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_2438BFFC4(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_2438BEB90(v18);
      result = sub_2438BFFC4(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

std::string *sub_2438BFFD4(std::string *result, std::string **a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_2438C0084(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_2438BEC24(v18);
      result = sub_2438C0084(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

std::string *sub_2438C0094(std::string *result, std::string **a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_2438C0144(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_2438BECB8(v18);
      result = sub_2438C0144(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_2438C0154(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        v5 = *v3;
        if (*v3)
        {
          if (*(v5 + 23) < 0)
          {
            operator delete(*v5);
          }

          operator delete(v5);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_2438C01D4(unsigned int *a1, int a2)
{
  v2 = a1[1];
  if (v2 < a2)
  {
    if (v2 < 1)
    {
      v5 = (a1 + 2);
      v4 = 0;
      if (v2)
      {
        v6 = *v5;
      }

      else
      {
        v6 = (a1 + 2);
      }
    }

    else
    {
      v5 = (a1 + 2);
      v4 = *(a1 + 1);
      v6 = v4;
    }

    v7 = *v6;
    v8 = 2 * v2;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v8 <= 4)
    {
      v9 = 4;
    }

    else
    {
      v9 = v8;
    }

    v10 = 4 * v9;
    if (v7)
    {
      v11 = v10 + 15;
      if (*(v7 + 112))
      {
        sub_243961E70(v7, MEMORY[0x277D827A0], v11 & 0x3FFFFFFF8);
      }

      v12 = sub_243961A00(v7, v11 & 0x3FFFFFFF8);
    }

    else
    {
      v12 = operator new(v10 + 8);
    }

    *(a1 + 1) = v12;
    *v12 = v7;
    a1[1] = v9;
    v13 = *a1;
    if (v13 >= 1)
    {
      memcpy(*v5 + 1, v4 + 1, 4 * v13);
    }

    if (v4 && !*v4)
    {

      operator delete(v4);
    }
  }
}

std::string *sub_2438C0300(std::string *result, std::string **a2, const std::string **a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = std::string::operator=(v15, v13);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19;
      if (v18)
      {
        if (*(v18 + 112))
        {
          sub_243961E70(v18, &unk_28569EFD0, 24);
        }

        v22 = sub_243961B18(v18, 0x18uLL, sub_2438BFB5C);
      }

      else
      {
        v22 = operator new(0x18uLL);
      }

      v23 = v22;
      v22->__r_.__value_.__r.__words[0] = 0;
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      result = std::string::operator=(v22, v21);
      *v20++ = v23;
      ++v19;
      --v17;
    }

    while (v17);
  }

  return result;
}

std::string *sub_2438C0404(std::string *result, std::string **a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_2438C04B4(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_2438BEDE0(v18);
      result = sub_2438C04B4(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

std::string *sub_2438C04C4(std::string *result, std::string **a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_2438C0574(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_2438BE8AC(v18);
      result = sub_2438C0574(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

std::string *sub_2438C0584(std::string *result, std::string **a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_2438C0634(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_2438BF030(v18);
      result = sub_2438C0634(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

std::string *sub_2438C0644(std::string *result, std::string **a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_2438C06F4(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_2438BF158(v18);
      result = sub_2438C06F4(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

std::string *sub_2438C0704(std::string *result, std::string **a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_2438C07B4(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_2438BF1EC(v18);
      result = sub_2438C07B4(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

std::string *sub_2438C07C4(std::string *result, std::string **a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_2438C0874(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_2438BF280(v18);
      result = sub_2438C0874(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

std::string *sub_2438C0884(std::string *result, std::string **a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_2438C0934(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_2438BEF08(v18);
      result = sub_2438C0934(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t *sub_2438C0944(uint64_t *result, uint64_t **a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_2438C09F4(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_2438BEE74(v18);
      result = sub_2438C09F4(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

std::string *sub_2438C0A04(std::string *result, std::string **a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_2438C04B4(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_2438BEF9C(v18);
      result = sub_2438C04B4(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void *sub_2438C0F18(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = 0;
  sub_2438C0F7C(a1, vcvtpd_u64_f64(vcvtd_n_f64_u64(a2, 6uLL)), &v4);
  return a1;
}

void sub_2438C0F60(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2438C0F7C(void *a1, unint64_t a2, uint64_t *a3)
{
  v3 = (a1[1] - *a1) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    sub_2438C1CFC(a1, a2 - v3, a3);
  }
}

void **sub_2438C0FAC(void **a1, const void *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v7 = 0;
  sub_2438C0F7C(a1, a3 >> 6, &v7);
  memcpy(*a1, a2, a3 >> 3);
  return a1;
}

void sub_2438C1010(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2438C102C(uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  sub_2438AA734((a1 + 3), 24);
  return a1;
}

void sub_2438C12A8(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x245D432B0](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2438C12D0(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x245D432B0](a1 + 128);
  return a1;
}

uint64_t sub_2438C1424(uint64_t result, const std::string *a2)
{
  if ((result & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, a2);
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  return result;
}

uint64_t sub_2438C1490(uint64_t a1, unint64_t a2, long double a3)
{
  *a1 = &unk_28569EFF0;
  *(a1 + 24) = 0;
  v6 = (a1 + 24);
  sub_2438BFB70(&__p, "expectedEntries should be > 0");
  sub_2438C1424(a2 != 0, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_2438BFB70(&__p, "False positive probability should be > 0.0 & < 1.0");
  v7 = a3 < 1.0 && a3 > 0.0;
  sub_2438C1424(v7, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v8 = a2;
  v9 = ((log(a3) * a2 / -0.480453014) & 0xFFFFFFC0) + 64;
  *(a1 + 8) = v9;
  v10 = llround(v9 / v8 * 0.693147181);
  if (v10 <= 1)
  {
    v10 = 1;
  }

  *(a1 + 16) = v10;
  v11 = operator new(0x18uLL);
  sub_2438C0F18(v11, v9);
  v12 = *v6;
  *v6 = v11;
  if (v12)
  {
    sub_2438C1F04(v6, v12);
  }

  return a1;
}

void sub_2438C15E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  operator delete(v16);
  v18 = *v15;
  *v15 = 0;
  if (v18)
  {
    sub_2438C1F04(v15, v18);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2438C1634(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  if (a2)
  {
    v4 = sub_2438DF814(a2, a3);
  }

  else
  {
    v4 = 0x27BB2EE687B0B0FDLL;
  }

  return sub_2438C1690(a1, v4);
}

uint64_t sub_2438C1690(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 >= 1)
  {
    v3 = **(result + 24);
    v4 = a2 + HIDWORD(a2);
    do
    {
      v5 = (v4 ^ (v4 >> 31)) % *(result + 8);
      *(v3 + ((v5 >> 3) & 0x1FFFFFF8)) |= 1 << v5;
      v4 += HIDWORD(a2);
      --v2;
    }

    while (v2);
  }

  return result;
}

BOOL sub_2438C1714(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  if (a2)
  {
    v4 = sub_2438DF814(a2, a3);
  }

  else
  {
    v4 = 0x27BB2EE687B0B0FDLL;
  }

  return sub_2438C1770(a1, v4);
}

BOOL sub_2438C1770(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 < 1)
  {
    return 1;
  }

  v3 = *(a1 + 8);
  v4 = **(a1 + 24);
  v5 = ((HIDWORD(a2) + a2) ^ ((HIDWORD(a2) + a2) >> 31)) % v3;
  if (((*(v4 + ((v5 >> 3) & 0x1FFFFFF8)) >> v5) & 1) == 0)
  {
    return 0;
  }

  v6 = a2 + 2 * HIDWORD(a2);
  v7 = 1;
  do
  {
    v8 = v7;
    if (v2 == v7)
    {
      break;
    }

    ++v7;
    v9 = (v6 ^ (v6 >> 31)) % v3;
    v6 += HIDWORD(a2);
  }

  while (((*(v4 + ((v9 >> 3) & 0x1FFFFFF8)) >> v9) & 1) != 0);
  return v8 >= v2;
}

uint64_t sub_2438C1834(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_28569EFF0;
  *(a1 + 24) = 0;
  v3 = (a1 + 24);
  *(a1 + 16) = *(a2 + 48);
  v4 = *(a2 + 40);
  v5 = *(v4 + 23);
  if (v5 < 0)
  {
    v5 = v4[1];
  }

  *(a1 + 8) = 8 * v5;
  sub_2438BFB70(&__p, "numBits should be multiple of 64!");
  sub_2438C1424((v5 & 7) == 0, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(v4 + 23) < 0)
  {
    v4 = *v4;
  }

  v6 = operator new(0x18uLL);
  sub_2438C0FAC(v6, v4, *(a1 + 8));
  v7 = *v3;
  *v3 = v6;
  if (v7)
  {
    sub_2438C1F04(v3, v7);
  }

  return a1;
}

void sub_2438C1914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  operator delete(v16);
  v18 = *v15;
  *v15 = 0;
  if (v18)
  {
    sub_2438C1F04(v15, v18);
  }

  _Unwind_Resume(a1);
}

void sub_2438C19C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *(a2 + 48) = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *v4;
  v6 = *(v4 + 8) - *v4;
  *(a2 + 16) = v3 | 3;
  sub_2438C1C28(&__p, v5, v6 & 0x1FFFFFFFFFFFFFFFLL);
  sub_2438C1BA0((a2 + 40), &qword_27ED97020, &__p);
  if (v8 < 0)
  {
    operator delete(__p.n128_u64[0]);
  }
}

void sub_2438C1A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_2438C1A58@<X0>(_DWORD *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  if (*result == 8 && (*(a2 + 16) & 4) != 0 && *(a2 + 32) == 1 && (~*(a3 + 16) & 3) == 0)
  {
    v6 = operator new(0x20uLL);
    result = sub_2438C1834(v6, a3);
    *a4 = v6;
  }

  return result;
}

void sub_2438C1AD0(_Unwind_Exception *a1)
{
  operator delete(v2);
  *v1 = 0;
  _Unwind_Resume(a1);
}

void *sub_2438C1AF0(void *a1)
{
  *a1 = &unk_28569EFF0;
  v4 = a1[3];
  v2 = a1 + 3;
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_2438C1F04(v2, v3);
  }

  return a1;
}

void sub_2438C1B40(void *__p)
{
  *__p = &unk_28569EFF0;
  v4 = __p[3];
  v2 = __p + 3;
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_2438C1F04(v2, v3);
  }

  operator delete(__p);
}

__n128 sub_2438C1BA0(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v4 = *a1;
  if (*a1 == a2)
  {
    v7 = operator new(0x18uLL);
    result = *a3;
    *v7 = *a3;
    v7[1].n128_u64[0] = a3[1].n128_u64[0];
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    a3[1].n128_u64[0] = 0;
    *a1 = v7;
  }

  else
  {
    if (v4[1].n128_i8[7] < 0)
    {
      operator delete(v4->n128_u64[0]);
    }

    result = *a3;
    v4[1].n128_u64[0] = a3[1].n128_u64[0];
    *v4 = result;
    a3[1].n128_u8[7] = 0;
    a3->n128_u8[0] = 0;
  }

  return result;
}

void *sub_2438C1C28(void *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2438AA68C();
  }

  if (__len >= 0x17)
  {
    if ((__len | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (__len | 7) + 1;
    }

    v6 = operator new(v7);
    __dst[1] = __len;
    __dst[2] = v7 | 0x8000000000000000;
    *__dst = v6;
  }

  else
  {
    *(__dst + 23) = __len;
    v6 = __dst;
    if (!__len)
    {
      goto LABEL_10;
    }
  }

  memmove(v6, __src, __len);
LABEL_10:
  *(v6 + __len) = 0;
  return __dst;
}

void sub_2438C1CC8()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void sub_2438C1CFC(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v7) >> 3)
  {
    if (a2)
    {
      v14 = 0;
      v15 = v7 + 8 * a2;
      v16 = *a3;
      v17 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v18 = vdupq_n_s64(v17);
      v19 = (v7 + 8);
      do
      {
        v20 = vmovn_s64(vcgeq_u64(v18, vorrq_s8(vdupq_n_s64(v14), xmmword_24398C940)));
        if (v20.i8[0])
        {
          *(v19 - 1) = v16;
        }

        if (v20.i8[4])
        {
          *v19 = v16;
        }

        v14 += 2;
        v19 += 2;
      }

      while (v17 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v14);
    }

    else
    {
      v15 = *(a1 + 8);
    }

    *(a1 + 8) = v15;
  }

  else
  {
    v8 = v7 - *a1;
    v9 = a2 + (v8 >> 3);
    if (v9 >> 61)
    {
      sub_243980874();
    }

    v10 = v8 >> 3;
    v11 = v6 - *a1;
    if (v11 >> 2 > v9)
    {
      v9 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v9;
    }

    if (v12)
    {
      v13 = sub_2438C1ECC(a1, v12);
    }

    else
    {
      v13 = 0;
    }

    v21 = 0;
    v22 = &v13[8 * v10];
    v23 = &v22[8 * a2];
    v24 = *a3;
    v25 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v26 = v25 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = v22 + 8;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v21), xmmword_24398C940)));
      if (v29.i8[0])
      {
        *(v28 - 1) = v24;
      }

      if (v29.i8[4])
      {
        *v28 = v24;
      }

      v21 += 2;
      v28 += 2;
    }

    while (v26 != v21);
    v30 = &v13[8 * v12];
    v31 = *(a1 + 8) - *a1;
    v32 = &v22[-v31];
    memcpy(&v22[-v31], *a1, v31);
    v33 = *a1;
    *a1 = v32;
    *(a1 + 8) = v23;
    *(a1 + 16) = v30;
    if (v33)
    {

      operator delete(v33);
    }
  }
}

void *sub_2438C1ECC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    sub_2438C1CC8();
  }

  return operator new(8 * a2);
}

void sub_2438C1F04(int a1, void **__p)
{
  if (__p)
  {
    v3 = *__p;
    if (*__p)
    {
      __p[1] = v3;
      operator delete(v3);
    }

    operator delete(__p);
  }
}

uint64_t sub_2438C1F50(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  *a1 = &unk_28569F050;
  *(a1 + 8) = v3;
  *(a1 + 16) = operator new[](0x80uLL);
  *(a1 + 24) = 0;
  *(a1 + 28) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  return a1;
}

void sub_2438C1FC0(_Unwind_Exception *exception_object)
{
  *(v1 + 8) = 0;
  if (v2)
  {
    sub_24398965C(v2);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2438C1FDC(void *a1)
{
  *a1 = &unk_28569F050;
  v2 = a1[2];
  if (v2)
  {
    operator delete[](v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_2438C205C(void *a1)
{
  v1 = sub_2438C1FDC(a1);

  operator delete(v1);
}

uint64_t sub_2438C2084(uint64_t result, char a2)
{
  v3 = result;
  v4 = *(result + 36);
  if (v4 == *(result + 40))
  {
    v8 = 0;
    result = (*(**(result + 8) + 16))(*(result + 8), result + 48, &v8);
    if ((result & 1) == 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      v7 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v7, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
    }

    v4 = 0;
    *(v3 + 40) = v8;
  }

  v5 = *(v3 + 48);
  *(v3 + 36) = v4 + 1;
  *(v5 + v4) = a2;
  return result;
}

uint64_t sub_2438C2138(uint64_t result, unsigned __int8 *a2, uint64_t a3, _BYTE *a4)
{
  if (a3)
  {
    v5 = a3;
    v7 = result;
    v8 = a4;
    do
    {
      if (!a4 || *v8)
      {
        result = sub_2438C21A8(v7, *a2);
      }

      ++a2;
      ++v8;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_2438C21A8(uint64_t result, unsigned __int8 a2)
{
  v2 = result;
  v4 = *(result + 24);
  if (!v4)
  {
    v7 = *(result + 16);
    *(result + 24) = 1;
    *v7 = a2;
    *(result + 32) = 1;
    return result;
  }

  v5 = *(result + 16);
  if (*(result + 28) != 1)
  {
    v8 = &v5[v4];
    if (*(v8 - 1) == a2)
    {
      v9 = *(result + 32) + 1;
      *(result + 32) = v9;
      if (v9 == 3)
      {
        if (v4 != 2)
        {
          *(result + 24) = v4 - 2;
          result = sub_2438C22DC(result);
          **(v2 + 16) = a2;
        }

        *(v2 + 28) = 1;
        *(v2 + 24) = 3;
        return result;
      }
    }

    else
    {
      *(result + 32) = 1;
    }

    *(result + 24) = v4 + 1;
    *v8 = a2;
    if (*(result + 24) != 128)
    {
      return result;
    }

LABEL_15:

    return sub_2438C22DC(result);
  }

  if (*v5 != a2)
  {
    result = sub_2438C22DC(result);
    v10 = *(v2 + 16);
    v11 = *(v2 + 24);
    *(v2 + 24) = v11 + 1;
    *(v10 + v11) = a2;
    *(v2 + 32) = 1;
    return result;
  }

  v6 = v4 + 1;
  *(result + 24) = v6;
  if (v6 == 130)
  {
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_2438C22DC(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = result;
    if (*(result + 28) == 1)
    {
      sub_2438C2084(result, v1 - 3);
      result = sub_2438C2084(v2, **(v2 + 16));
    }

    else
    {
      result = sub_2438C2084(result, -v1);
      if (*(v2 + 24) >= 1)
      {
        v3 = 0;
        do
        {
          result = sub_2438C2084(v2, *(*(v2 + 16) + v3++));
        }

        while (v3 < *(v2 + 24));
      }
    }

    *(v2 + 28) = 0;
    *(v2 + 32) = 0;
    *(v2 + 24) = 0;
  }

  return result;
}

uint64_t sub_2438C2384(uint64_t a1)
{
  sub_2438C22DC(a1);
  (*(**(a1 + 8) + 24))(*(a1 + 8), (*(a1 + 40) - *(a1 + 36)));
  result = (*(**(a1 + 8) + 72))(*(a1 + 8));
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_2438C242C(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 8) + 64))(*(a1 + 8));
  v5 = *(a1 + 36);
  if ((*(**(a1 + 8) + 80))(*(a1 + 8)))
  {
    (*(*a2 + 16))(a2, v4);
  }

  else
  {
    v5 = v4 + v5 - *(a1 + 40);
  }

  (*(*a2 + 16))(a2, v5);
  v6 = *(a1 + 24);
  v7 = *(*a2 + 16);

  return v7(a2, v6);
}

uint64_t sub_2438C255C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x38uLL);
  v5 = *a1;
  *a1 = 0;
  v8 = v5;
  sub_2438C1F50(v4, &v8);
  *a2 = v4;
  result = v8;
  if (v8)
  {
    v7 = *(*v8 + 8);

    return v7();
  }

  return result;
}

void sub_2438C2600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_24398965C(a10);
  }

  operator delete(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_2438C2620(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v5 = v3;
  sub_2438C1F50(a1, &v5);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *a1 = &unk_28569F090;
  *(a1 + 56) = 8;
  *(a1 + 60) = 0;
  return a1;
}

void sub_2438C26B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_24398965C(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2438C26D0(void *a1)
{
  v1 = sub_2438C1FDC(a1);

  operator delete(v1);
}

uint64_t sub_2438C26F8(uint64_t result, _BYTE *a2, uint64_t a3, _BYTE *a4)
{
  v4 = result;
  if (a3)
  {
    v6 = a3;
    v8 = *(result + 56);
    v9 = a4;
    v10 = a2;
    while (1)
    {
      if (v8)
      {
        if (!a4)
        {
          goto LABEL_8;
        }
      }

      else
      {
        result = sub_2438C21A8(v4, *(v4 + 60));
        *(v4 + 60) = 0;
        v8 = 8;
        *(v4 + 56) = 8;
        if (!a4)
        {
          goto LABEL_8;
        }
      }

      if (*v9)
      {
LABEL_8:
        if (!a2 || *v10)
        {
          *(v4 + 60) |= 0x80u >> (8 - v8);
        }

        *(v4 + 56) = --v8;
      }

      ++v10;
      ++v9;
      if (!--v6)
      {
        if (v8)
        {
          return result;
        }

LABEL_16:
        result = sub_2438C21A8(v4, *(v4 + 60));
        *(v4 + 60) = 0;
        *(v4 + 56) = 8;
        return result;
      }
    }
  }

  if (!*(result + 56))
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_2438C27E4(uint64_t a1)
{
  if (*(a1 + 56) != 8)
  {
    sub_2438C21A8(a1, *(a1 + 60));
  }

  *(a1 + 56) = 8;
  *(a1 + 60) = 0;

  return sub_2438C2384(a1);
}

uint64_t sub_2438C283C(uint64_t a1, uint64_t a2)
{
  sub_2438C242C(a1, a2);
  v4 = 8 - *(a1 + 56);
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t sub_2438C28A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x40uLL);
  v5 = *a1;
  *a1 = 0;
  v7 = v5;
  sub_2438C2620(v4, &v7);
  result = v7;
  if (v7)
  {
    result = (*(*v7 + 8))(v7);
  }

  *a2 = v4;
  return result;
}

void sub_2438C2928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_24398965C(a10);
  }

  operator delete(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_2438C2948(uint64_t a1, uint64_t *a2)
{
  *a1 = &unk_28569F0D0;
  *(a1 + 8) = 0;
  v3 = *a2;
  *a2 = 0;
  v4 = *(a1 + 8);
  *(a1 + 8) = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  return a1;
}

void *sub_2438C29D0(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_28569F0D0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_2438C2A3C(void *__p)
{
  v2 = __p[1];
  *__p = &unk_28569F0D0;
  __p[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  operator delete(__p);
}

uint64_t sub_2438C2AB8(uint64_t a1, uint64_t a2)
{
  (*(**(a1 + 8) + 48))(*(a1 + 8));
  *(a1 + 40) = *(a1 + 32);
  sub_2438C2B34(a1);
  v4 = sub_2438A9710(a2);

  return sub_2438C2CB8(a1, v4);
}

uint64_t sub_2438C2B34(uint64_t result)
{
  v1 = result;
  v3 = *(result + 32);
  v2 = *(result + 40);
  if (v3 == v2)
  {
    v9 = 0;
    v8 = 0;
    result = (*(**(result + 8) + 16))(*(result + 8), &v8, &v9);
    if ((result & 1) == 0)
    {
      goto LABEL_10;
    }

    v3 = v8;
    v2 = &v8[v9];
    *(v1 + 32) = v8;
    *(v1 + 40) = v2;
  }

  v4 = v3 + 1;
  *(v1 + 32) = v3 + 1;
  v5 = *v3;
  if ((v5 & 0x8000000000000000) == 0)
  {
    *(v1 + 16) = (v5 + 3);
    *(v1 + 48) = 1;
    if (v4 != v2)
    {
LABEL_8:
      *(v1 + 32) = v4 + 1;
      *(v1 + 24) = *v4;
      return result;
    }

    v9 = 0;
    v8 = 0;
    result = (*(**(v1 + 8) + 16))(*(v1 + 8), &v8, &v9);
    if (result)
    {
      v4 = v8;
      v6 = &v8[v9];
      *(v1 + 32) = v8;
      *(v1 + 40) = v6;
      goto LABEL_8;
    }

LABEL_10:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(exception, "bad read in nextBuffer");
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  *(v1 + 16) = -v5;
  *(v1 + 48) = 0;
  return result;
}

uint64_t sub_2438C2CB8(uint64_t result, unint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = *(v3 + 16);
      if (!v4)
      {
        result = sub_2438C2B34(v3);
        v4 = *(v3 + 16);
      }

      if (v4 >= v2)
      {
        v5 = v2;
      }

      else
      {
        v5 = v4;
      }

      *(v3 + 16) = v4 - v5;
      if ((*(v3 + 48) & 1) == 0 && v4)
      {
        v6 = *(v3 + 32);
        v7 = *(v3 + 40);
        v8 = v5;
        do
        {
          if (v6 == v7)
          {
            v12 = 0;
            v11 = 0;
            result = (*(**(v3 + 8) + 16))(*(v3 + 8), &v11, &v12);
            if ((result & 1) == 0)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              sub_2438DCB60(exception, "bad read in nextBuffer");
              __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
            }

            v6 = v11;
            v7 = v11 + v12;
            *(v3 + 32) = v11;
            *(v3 + 40) = v7;
          }

          v9 = v7 - v6;
          if (v7 - v6 >= v8)
          {
            v9 = v8;
          }

          v6 += v9;
          *(v3 + 32) = v6;
          v8 -= v9;
        }

        while (v8);
      }

      v2 -= v5;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_2438C2DEC(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = result;
  i = 0;
  if (a4 && a3)
  {
    for (i = 0; i < a3; ++i)
    {
      if (*(a4 + i))
      {
        break;
      }
    }
  }

  if (i < a3)
  {
    v9 = *(result + 16);
    do
    {
      if (!v9)
      {
        result = sub_2438C2B34(v7);
        v9 = *(v7 + 16);
      }

      if (v9 >= a3 - i)
      {
        v10 = a3 - i;
      }

      else
      {
        v10 = v9;
      }

      if (*(v7 + 48) == 1)
      {
        if (a4)
        {
          if (!v10)
          {
            goto LABEL_31;
          }

          v11 = 0;
          v12 = (a2 + i);
          v13 = (a4 + i);
          v14 = v10;
          do
          {
            if (*v13++)
            {
              *v12 = *(v7 + 24);
              ++v11;
            }

            ++v12;
            --v14;
          }

          while (v14);
          goto LABEL_43;
        }

        result = memset((a2 + i), *(v7 + 24), v10);
        v22 = v10;
      }

      else
      {
        if (a4)
        {
          if (v10)
          {
            v11 = 0;
            v16 = (a2 + i);
            v17 = (a4 + i);
            v18 = v10;
            do
            {
              if (*v17++)
              {
                v20 = *(v7 + 32);
                if (v20 == *(v7 + 40))
                {
                  v30 = 0;
                  __src = 0;
                  result = (*(**(v7 + 8) + 16))(*(v7 + 8), &__src, &v30);
                  if ((result & 1) == 0)
                  {
                    goto LABEL_51;
                  }

                  v20 = __src;
                  v21 = __src + v30;
                  *(v7 + 32) = __src;
                  *(v7 + 40) = v21;
                }

                *(v7 + 32) = v20 + 1;
                *v16 = *v20;
                ++v11;
              }

              ++v16;
              --v18;
            }

            while (v18);
            goto LABEL_43;
          }

LABEL_31:
          v11 = 0;
LABEL_43:
          v9 = *(v7 + 16) - v11;
          *(v7 + 16) = v9;
          i += v10;
          if (a4)
          {
            while (i < a3 && !*(a4 + i))
            {
              ++i;
            }
          }

          continue;
        }

        if (v10)
        {
          v23 = 0;
          v24 = *(v7 + 32);
          do
          {
            v25 = *(v7 + 40);
            if (v24 == v25)
            {
              v30 = 0;
              __src = 0;
              if (((*(**(v7 + 8) + 16))(*(v7 + 8), &__src, &v30) & 1) == 0)
              {
LABEL_51:
                exception = __cxa_allocate_exception(0x10uLL);
                sub_2438DCB60(exception, "bad read in nextBuffer");
                __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
              }

              v24 = __src;
              v25 = __src + v30;
              *(v7 + 32) = __src;
              *(v7 + 40) = v25;
            }

            v26 = v25 - v24;
            if (v26 >= v10 - v23)
            {
              v27 = v10 - v23;
            }

            else
            {
              v27 = v26;
            }

            result = memcpy((a2 + i + v23), v24, v27);
            v24 = (*(v7 + 32) + v27);
            *(v7 + 32) = v24;
            v23 += v27;
          }

          while (v23 < v10);
          v11 = v10;
          goto LABEL_43;
        }

        v22 = 0;
      }

      v9 = *(v7 + 16) - v22;
      *(v7 + 16) = v9;
      i += v10;
    }

    while (i < a3);
  }

  return result;
}

uint64_t sub_2438C30E4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = operator new(0x38uLL);
  v5 = *a1;
  *a1 = 0;
  v8 = v5;
  *a2 = sub_2438C2948(v4, &v8);
  result = v8;
  if (v8)
  {
    v7 = *(*v8 + 8);

    return v7();
  }

  return result;
}

uint64_t sub_2438C3178(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v5 = v3;
  sub_2438C2948(a1, &v5);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *a1 = &unk_28569F108;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  return a1;
}

void *sub_2438C3208(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_28569F0D0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_2438C3274(void *__p)
{
  v2 = __p[1];
  *__p = &unk_28569F0D0;
  __p[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  operator delete(__p);
}

unint64_t sub_2438C32F0(uint64_t a1, uint64_t a2)
{
  sub_2438C2AB8(a1, a2);
  result = sub_2438A9710(a2);
  *(a1 + 56) = 0;
  if (result >= 9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(exception, "bad position");
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  if (result)
  {
    *(a1 + 56) = 8 - result;

    return sub_2438C2DEC(a1, a1 + 64, 1uLL, 0);
  }

  return result;
}

uint64_t sub_2438C33B4(uint64_t result, unint64_t a2)
{
  v2 = result;
  v3 = *(result + 56);
  v4 = v3 - a2;
  if (v3 < a2)
  {
    v5 = a2 - v3;
    result = sub_2438C2CB8(result, (a2 - v3) >> 3);
    v6 = v5 & 7;
    if (v6)
    {
      result = sub_2438C2DEC(v2, v2 + 64, 1uLL, 0);
      v4 = 8 - v6;
    }

    else
    {
      v4 = 0;
    }
  }

  *(v2 + 56) = v4;
  return result;
}

void sub_2438C3420(uint64_t a1, uint64_t a2, size_t a3, uint64_t a4)
{
  v5 = a3;
  v8 = *(a1 + 56);
  v9 = v8 != 0;
  v10 = a3 != 0;
  if (!a3)
  {
    v9 = 0;
  }

  if (a4)
  {
    v11 = 0;
    if (v9)
    {
      do
      {
        LOBYTE(v12) = *(a4 + v11);
        if (v12)
        {
          *(a1 + 56) = v8 - 1;
          v12 = (*(a1 + 64) >> (v8 - 1)) & 1;
        }

        *(a2 + v11++) = v12;
        v8 = *(a1 + 56);
        if (v8)
        {
          v13 = v11 >= a3;
        }

        else
        {
          v13 = 1;
        }
      }

      while (!v13);
    }
  }

  else
  {
    if (!v9)
    {
      v11 = 0;
      v17 = a3;
      v20 = a3;
      if (a3)
      {
        goto LABEL_27;
      }

      goto LABEL_35;
    }

    v14 = 0;
    do
    {
      v15 = v8 - 1;
      *(a1 + 56) = v15;
      v11 = v14 + 1;
      *(a2 + v14) = (*(a1 + 64) >> v15) & 1;
      v8 = *(a1 + 56);
      if (v8)
      {
        v16 = v11 >= a3;
      }

      else
      {
        v16 = 1;
      }

      ++v14;
    }

    while (!v16);
  }

  v17 = a3 - v11;
  v10 = a3 > v11;
  if (a4 && a3 > v11)
  {
    v18 = a4;
    v19 = a3 - v11;
    v20 = a3 - v11;
    do
    {
      v20 -= *(v18 + v11) == 0;
      ++v18;
      --v19;
    }

    while (v19);
  }

  else
  {
    v20 = a3 - v11;
  }

  if (v20)
  {
LABEL_27:
    if (v10)
    {
      v21 = a2 + v11;
      sub_2438C2DEC(a1, a2 + v11, (v20 + 7) >> 3, 0);
      *(a1 + 64) = *(a2 + v11 + ((v20 + 7) >> 3) - 1);
      *(a1 + 56) = ((v20 + 7) & 0xFFFFFFFFFFFFFFF8) - v20;
      if (a4)
      {
        for (; v5 > v11; --v5)
        {
          LOBYTE(v22) = *(a4 - 1 + v5);
          if (v22)
          {
            v23 = -v20--;
            v22 = (*(v21 + (v20 >> 3)) >> (v23 & 7)) & 1;
          }

          *(a2 - 1 + v5) = v22;
        }
      }

      else if (v11 < v5)
      {
        v24 = v20 - 1;
        v25 = -v20;
        do
        {
          *(a2 - 1 + v5--) = (*(v21 + (v24-- >> 3)) >> (v25++ & 7)) & 1;
        }

        while (v5 > v11);
      }
    }

    return;
  }

LABEL_35:
  if (v10)
  {

    bzero((a2 + v11), v17);
  }
}

uint64_t sub_2438C3648@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x48uLL);
  v5 = *a1;
  *a1 = 0;
  v7 = v5;
  sub_2438C3178(v4, &v7);
  result = v7;
  if (v7)
  {
    result = (*(*v7 + 8))(v7);
  }

  *a2 = v4;
  return result;
}

void *sub_2438C36CC(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_28569F1C0;
  a1[1] = 0;
  a1[2] = (*(*a2 + 16))(a2);
  a1[3] = (*(*a3 + 40))(a3);
  (*(*a3 + 32))(&v14, a3, a1[2], 0, 1);
  v5 = v14;
  if (v14)
  {
    v14 = 0;
    v12 = v5;
    sub_2438C3648(&v12, &v13);
    v6 = v13;
    v13 = 0;
    v7 = a1[1];
    a1[1] = v6;
    if (v7)
    {
      (*(*v7 + 8))(v7);
      v8 = v13;
      v13 = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }
    }

    v9 = v12;
    v12 = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = v14;
    v14 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  return a1;
}

void sub_2438C388C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    sub_243989680(a10);
  }

  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  v14 = *(v12 + 8);
  *(v12 + 8) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2438C3914(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_28569F1C0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_2438C3980(void *__p)
{
  v2 = __p[1];
  *__p = &unk_28569F1C0;
  __p[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  operator delete(__p);
}

unint64_t sub_2438C39FC()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v14 = *MEMORY[0x277D85DE8];
  v3 = *(v0 + 8);
  if (v3)
  {
    if (v1)
    {
      v4 = v1;
      v5 = v1;
      do
      {
        if (v2 >= v5)
        {
          v6 = v5;
        }

        else
        {
          v6 = v2;
        }

        if (v6 >= 0x8000)
        {
          v7 = 0x8000;
        }

        else
        {
          v7 = v6;
        }

        v8 = v13;
        (*(*v3 + 32))(v3, v13, v7, 0);
        v5 -= v7;
        if (v7 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v7;
        }

        do
        {
          v10 = *v8++;
          v4 -= v10 == 0;
          --v9;
        }

        while (v9);
      }

      while (v5);
    }

    else
    {
      v4 = 0;
    }

    v2 = v4;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v2;
}

void *sub_2438C3B1C(uint64_t a1, uint64_t a2, size_t __n, void *__src)
{
  v5 = __n;
  if (*(a2 + 8) < __n)
  {
    (*(*a2 + 24))(a2, __n);
  }

  *(a2 + 16) = v5;
  result = *(a1 + 8);
  if (!result)
  {
    if (__src)
    {
      *(a2 + 64) = 1;
      v11 = *(a2 + 40);

      return memcpy(v11, __src, v5);
    }

LABEL_12:
    *(a2 + 64) = 0;
    return result;
  }

  v9 = *(a2 + 40);
  result = (*(*result + 32))(result, v9, v5, __src);
  if (!v5)
  {
    goto LABEL_12;
  }

  while (*v9++)
  {
    if (!--v5)
    {
      goto LABEL_12;
    }
  }

  *(a2 + 64) = 1;
  return result;
}

uint64_t sub_2438C3C28(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  if (v2)
  {
    v3 = sub_2438CB5A8(a2, (result + 16));
    if (!v3)
    {
      sub_2438CB54C("unordered_map::at: key not found");
    }

    v4 = *(*v2 + 16);

    return v4(v2, v3 + 3);
  }

  return result;
}

void *sub_2438C3CB0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2438C36CC(a1, a2, a3);
  *v5 = &unk_28569F200;
  v5[4] = 0;
  (*(*a3 + 32))(&v16, a3, v5[2], 1, 1);
  v6 = v16;
  if (!v16)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(exception, "DATA stream not found in Boolean column");
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  v16 = 0;
  v14 = v6;
  sub_2438C3648(&v14, &v15);
  v7 = v15;
  v15 = 0;
  v8 = a1[4];
  a1[4] = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
    v9 = v15;
    v15 = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }
  }

  v10 = v14;
  v14 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = v16;
  v16 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  return a1;
}

void sub_2438C3E64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  v14 = v12[4];
  v12[4] = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = v12[1];
  *v12 = &unk_28569F1C0;
  v12[1] = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2438C3F48(void *a1)
{
  *a1 = &unk_28569F200;
  v2 = a1[4];
  a1[4] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  *a1 = &unk_28569F1C0;
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_2438C4004(void *a1)
{
  v1 = sub_2438C3F48(a1);

  operator delete(v1);
}

unint64_t sub_2438C402C(uint64_t a1)
{
  v2 = sub_2438C39FC();
  (*(**(a1 + 32) + 24))(*(a1 + 32), v2);
  return v2;
}

uint64_t sub_2438C4084(uint64_t a1, char **a2, size_t a3, void *a4)
{
  sub_2438C3B1C(a1, a2, a3, a4);
  v7 = **a2;
  v8 = __dynamic_cast(a2, &unk_2856A2580, &unk_2856A2590, 0);
  if (!v8)
  {
    __cxa_bad_cast();
  }

  v9 = v8[12];
  if (*(a2 + 64))
  {
    v10 = a2[5];
  }

  else
  {
    v10 = 0;
  }

  result = (*(**(a1 + 32) + 32))(*(a1 + 32), v9, a3, v10);
  if (a3)
  {
    v12 = a3 - 1;
    do
    {
      *(v9 + 8 * v12) = *(v9 + v12);
      --v12;
    }

    while (v12 < a3);
  }

  return result;
}

uint64_t sub_2438C4164(uint64_t a1, void *a2)
{
  sub_2438C3C28(a1, a2);
  v4 = *(a1 + 32);
  v5 = sub_2438CB5A8(a2, (a1 + 16));
  if (!v5)
  {
    sub_2438CB54C("unordered_map::at: key not found");
  }

  v6 = *(*v4 + 16);

  return v6(v4, v5 + 3);
}

void *sub_2438C41EC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2438C36CC(a1, a2, a3);
  *v5 = &unk_28569F240;
  v5[4] = 0;
  (*(*a3 + 32))(&v16, a3, v5[2], 1, 1);
  v6 = v16;
  if (!v16)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(exception, "DATA stream not found in Byte column");
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  v16 = 0;
  v14 = v6;
  sub_2438C30E4(&v14, &v15);
  v7 = v15;
  v15 = 0;
  v8 = a1[4];
  a1[4] = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
    v9 = v15;
    v15 = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }
  }

  v10 = v14;
  v14 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = v16;
  v16 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  return a1;
}

void sub_2438C43A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  v14 = v12[4];
  v12[4] = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = v12[1];
  *v12 = &unk_28569F1C0;
  v12[1] = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2438C4484(void *a1)
{
  *a1 = &unk_28569F240;
  v2 = a1[4];
  a1[4] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  *a1 = &unk_28569F1C0;
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_2438C4540(void *a1)
{
  v1 = sub_2438C4484(a1);

  operator delete(v1);
}

unint64_t sub_2438C4568(uint64_t a1)
{
  v2 = sub_2438C39FC();
  (*(**(a1 + 32) + 24))(*(a1 + 32), v2);
  return v2;
}

uint64_t sub_2438C45C0(uint64_t a1, char **a2, size_t a3, void *a4)
{
  sub_2438C3B1C(a1, a2, a3, a4);
  v7 = **a2;
  v8 = __dynamic_cast(a2, &unk_2856A2580, &unk_2856A2590, 0);
  if (!v8)
  {
    __cxa_bad_cast();
  }

  v9 = v8[12];
  if (*(a2 + 64))
  {
    v10 = a2[5];
  }

  else
  {
    v10 = 0;
  }

  result = (*(**(a1 + 32) + 32))(*(a1 + 32), v9, a3, v10);
  if (a3)
  {
    v12 = a3 - 1;
    do
    {
      *(v9 + 8 * v12) = *(v9 + v12);
      --v12;
    }

    while (v12 < a3);
  }

  return result;
}

uint64_t sub_2438C46A0(uint64_t a1, void *a2)
{
  sub_2438C3C28(a1, a2);
  v4 = *(a1 + 32);
  v5 = sub_2438CB5A8(a2, (a1 + 16));
  if (!v5)
  {
    sub_2438CB54C("unordered_map::at: key not found");
  }

  v6 = *(*v4 + 16);

  return v6(v4, v5 + 3);
}

void *sub_2438C4728(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2438C36CC(a1, a2, a3);
  *v5 = &unk_28569F280;
  v5[4] = 0;
  (*(*a3 + 24))(v18, a3, v5[2]);
  if (v19 >= 4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(exception, "Unknown encoding in convertRleVersion");
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  v6 = dword_24398CA40[v19];
  sub_2438B3E18(v18);
  (*(*a3 + 32))(v18, a3, a1[2], 1, 1);
  v7 = v18[0];
  if (!v18[0])
  {
    v15 = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(v15, "DATA stream not found in Integer column");
    __cxa_throw(v15, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  v18[0] = 0;
  v16 = v7;
  sub_2438EC158(&v16, 1, v6, a1[3], &v17);
  v8 = v17;
  v17 = 0;
  v9 = a1[4];
  a1[4] = v8;
  if (v9)
  {
    (*(*v9 + 8))(v9);
    v10 = v17;
    v17 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  v11 = v16;
  v16 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = v18[0];
  v18[0] = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  return a1;
}

void sub_2438C4974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  v14 = v12[4];
  v12[4] = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = v12[1];
  *v12 = &unk_28569F1C0;
  v12[1] = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2438C4A7C(void *a1)
{
  *a1 = &unk_28569F280;
  v2 = a1[4];
  a1[4] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  *a1 = &unk_28569F1C0;
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_2438C4B38(void *a1)
{
  v1 = sub_2438C4A7C(a1);

  operator delete(v1);
}

unint64_t sub_2438C4B60(uint64_t a1)
{
  v2 = sub_2438C39FC();
  (*(**(a1 + 32) + 24))(*(a1 + 32), v2);
  return v2;
}

uint64_t sub_2438C4BB8(uint64_t a1, char **a2, size_t a3, void *a4)
{
  sub_2438C3B1C(a1, a2, a3, a4);
  v7 = *(a1 + 32);
  v8 = **a2;
  v9 = __dynamic_cast(a2, &unk_2856A2580, &unk_2856A2590, 0);
  if (!v9)
  {
    __cxa_bad_cast();
  }

  v10 = v9[12];
  if (*(a2 + 64))
  {
    v11 = a2[5];
  }

  else
  {
    v11 = 0;
  }

  v12 = *(*v7 + 32);

  return v12(v7, v10, a3, v11);
}

uint64_t sub_2438C4C88(uint64_t a1, void *a2)
{
  sub_2438C3C28(a1, a2);
  v4 = *(a1 + 32);
  v5 = sub_2438CB5A8(a2, (a1 + 16));
  if (!v5)
  {
    sub_2438CB54C("unordered_map::at: key not found");
  }

  v6 = *(*v4 + 16);

  return v6(v4, v5 + 3);
}

void *sub_2438C4D10(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2438C36CC(a1, a2, a3);
  v5[4] = 0;
  v6 = v5 + 4;
  *v5 = &unk_28569F2C0;
  v5[5] = 0;
  v7 = (*(*a3 + 48))(a3);
  a1[6] = v7;
  a1[7] = (*(*v7 + 24))(v7);
  (*(*a3 + 24))(v28, a3, a1[2]);
  if (v29 >= 4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(exception, "Unknown encoding in convertRleVersion");
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  v8 = dword_24398CA40[v29];
  sub_2438B3E18(v28);
  (*(*a3 + 32))(v28, a3, a1[2], 1, 1);
  v9 = v28[0];
  if (!v28[0])
  {
    v24 = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(v24, "DATA stream not found in Timestamp column");
    goto LABEL_24;
  }

  v28[0] = 0;
  v26 = v9;
  sub_2438EC158(&v26, 1, v8, a1[3], &v27);
  v10 = v27;
  v27 = 0;
  v11 = *v6;
  *v6 = v10;
  if (v11)
  {
    (*(*v11 + 8))(v11);
    v12 = v27;
    v27 = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  v13 = v26;
  v26 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  (*(*a3 + 32))(&v27, a3, a1[2], 5, 1);
  v15 = v27;
  v14 = v28[0];
  v27 = 0;
  v28[0] = v15;
  if (v14)
  {
    (*(*v14 + 8))(v14);
    v16 = v27;
    v27 = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    v15 = v28[0];
  }

  if (!v15)
  {
    v24 = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(v24, "SECONDARY stream not found in Timestamp column");
LABEL_24:
    __cxa_throw(v24, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  v28[0] = 0;
  v25 = v15;
  sub_2438EC158(&v25, 0, v8, a1[3], &v27);
  v17 = v27;
  v27 = 0;
  v18 = a1[5];
  a1[5] = v17;
  if (v18)
  {
    (*(*v18 + 8))(v18);
    v19 = v27;
    v27 = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }
  }

  v20 = v25;
  v25 = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = v28[0];
  v28[0] = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  return a1;
}

void sub_2438C512C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  __cxa_free_exception(v13);
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  v16 = v12[5];
  v12[5] = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = *v14;
  *v14 = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = v12[1];
  *v12 = &unk_28569F1C0;
  v12[1] = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  _Unwind_Resume(a1);
}

void *sub_2438C5288(void *a1)
{
  *a1 = &unk_28569F2C0;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  *a1 = &unk_28569F1C0;
  a1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

void sub_2438C5374(void *a1)
{
  v1 = sub_2438C5288(a1);

  operator delete(v1);
}

unint64_t sub_2438C539C(uint64_t a1)
{
  v2 = sub_2438C39FC();
  (*(**(a1 + 32) + 24))(*(a1 + 32), v2);
  (*(**(a1 + 40) + 24))(*(a1 + 40), v2);
  return v2;
}

uint64_t sub_2438C5420(uint64_t a1, char **a2, size_t a3, void *a4)
{
  sub_2438C3B1C(a1, a2, a3, a4);
  if (*(a2 + 64))
  {
    v7 = a2[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = **a2;
  v9 = __dynamic_cast(a2, &unk_2856A2580, &unk_2856A2680, 0);
  if (!v9)
  {
    __cxa_bad_cast();
  }

  v10 = v9;
  v11 = v9[12];
  (*(**(a1 + 32) + 32))(*(a1 + 32), v11, a3, v7);
  v12 = v10[17];
  result = (*(**(a1 + 40) + 32))(*(a1 + 40), v12, a3, v7);
  if (a3)
  {
    v14 = 0;
    do
    {
      if (!v7 || v7[v14])
      {
        v15 = *(v12 + 8 * v14);
        v16 = v15 >> 3;
        *(v12 + 8 * v14) = v15 >> 3;
        v17 = v15 & 7;
        if (v17)
        {
          v18 = v17 + 1;
          do
          {
            v16 *= 10;
            --v18;
          }

          while (v18);
          *(v12 + 8 * v14) = v16;
        }

        result = (*(**(a1 + 48) + 48))(*(a1 + 48), *(a1 + 56) + *(v11 + 8 * v14));
        *(v11 + 8 * v14) = result;
        if (result < 0)
        {
          if (*(v12 + 8 * v14))
          {
            *(v11 + 8 * v14) = result - 1;
          }
        }
      }

      ++v14;
    }

    while (v14 != a3);
  }

  return result;
}

uint64_t sub_2438C55C0(unint64_t *a1, void *a2)
{
  sub_2438C3C28(a1, a2);
  v4 = a1[4];
  v5 = sub_2438CB5A8(a2, a1 + 2);
  if (!v5 || ((*(*v4 + 16))(v4, v5 + 3), v6 = a1[5], (v7 = sub_2438CB5A8(a2, a1 + 2)) == 0))
  {
    sub_2438CB54C("unordered_map::at: key not found");
  }

  v8 = *(*v6 + 16);

  return v8(v6, v7 + 3);
}

uint64_t sub_2438C5688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2438C36CC(a1, a2, a3);
  *v6 = &unk_28569F300;
  v6[4] = 0;
  *(a1 + 40) = (*(*a2 + 32))(a2);
  v7 = (*(*a2 + 32))(a2);
  v8 = 8;
  if (v7 == 5)
  {
    v8 = 4;
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = v8;
  (*(*a3 + 32))(&v14, a3, *(a1 + 16), 1, 1);
  v9 = v14;
  v14 = 0;
  v10 = *(a1 + 32);
  *(a1 + 32) = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
    v11 = v14;
    v14 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v9 = *(a1 + 32);
  }

  if (!v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(exception, "DATA stream not found in Double column");
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  return a1;
}

void sub_2438C5838(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = v1[4];
  v1[4] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = v1[1];
  *v1 = &unk_28569F1C0;
  v1[1] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  _Unwind_Resume(a1);
}

void *sub_2438C58D0(void *a1)
{
  *a1 = &unk_28569F300;
  v2 = a1[4];
  a1[4] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  *a1 = &unk_28569F1C0;
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_2438C598C(void *a1)
{
  v1 = sub_2438C58D0(a1);

  operator delete(v1);
}

unint64_t sub_2438C59B4(uint64_t a1)
{
  v2 = sub_2438C39FC();
  v3 = *(a1 + 56);
  v4 = *(a1 + 64) - v3;
  v5 = *(a1 + 48) * v2;
  v6 = v5 - v4;
  if (v5 <= v4)
  {
    v8 = v3 + v5;
  }

  else
  {
    do
    {
      if (v6 >= 0x7FFFFFFF)
      {
        v7 = 0x7FFFFFFFLL;
      }

      else
      {
        v7 = v6;
      }

      (*(**(a1 + 32) + 32))(*(a1 + 32), v7);
      v6 -= v7;
    }

    while (v6);
    v8 = 0;
    *(a1 + 64) = 0;
  }

  *(a1 + 56) = v8;
  return v2;
}

uint64_t sub_2438C5A60(uint64_t a1, char **a2, size_t a3, void *a4)
{
  sub_2438C3B1C(a1, a2, a3, a4);
  if (*(a2 + 64))
  {
    v7 = a2[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = **a2;
  result = __dynamic_cast(a2, &unk_2856A2580, &unk_2856A25A8, 0);
  if (!result)
  {
    __cxa_bad_cast();
  }

  v10 = *(result + 96);
  if (*(a1 + 40) == 5)
  {
    if (v7)
    {
      if (a3)
      {
        v11 = 0;
        do
        {
          if (v7[v11])
          {
            v12 = 0;
            v13 = 0.0;
            do
            {
              result = sub_2438CB474(a1);
              LODWORD(v13) |= result << v12;
              v12 += 8;
            }

            while (v12 != 32);
            *(v10 + 8 * v11) = v13;
          }

          ++v11;
        }

        while (v11 != a3);
      }
    }

    else if (a3)
    {
      v17 = 0;
      do
      {
        v18 = 0;
        v19 = 0.0;
        do
        {
          result = sub_2438CB474(a1);
          LODWORD(v19) |= result << v18;
          v18 += 8;
        }

        while (v18 != 32);
        *(v10 + 8 * v17++) = v19;
      }

      while (v17 != a3);
    }
  }

  else if (v7)
  {
    if (a3)
    {
      v14 = 0;
      do
      {
        if (v7[v14])
        {
          v15 = 0;
          v16 = 0;
          do
          {
            result = sub_2438CB474(a1);
            v16 |= result << v15;
            v15 += 8;
          }

          while (v15 != 64);
          *(v10 + 8 * v14) = v16;
        }

        ++v14;
      }

      while (v14 != a3);
    }
  }

  else if (a3)
  {
    v20 = 0;
    do
    {
      v21 = 0;
      v22 = 0;
      do
      {
        result = sub_2438CB474(a1);
        v22 |= result << v21;
        v21 += 8;
      }

      while (v21 != 64);
      *(v10 + 8 * v20++) = v22;
    }

    while (v20 != a3);
  }

  return result;
}

char *sub_2438C5C3C(char *result, uint64_t a2, uint64_t a3)
{
  if (a2 >= 1)
  {
    v5 = result;
    v6 = 0;
    while (1)
    {
      memset(__n, 0, sizeof(__n));
      if (((*(*a3 + 16))(a3, &__n[1], __n) & 1) == 0)
      {
        break;
      }

      v7 = v6 + __n[0];
      if (v7 > a2)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        sub_2438DCB60(exception, "Corrupt dictionary blob in StringDictionaryColumn");
        goto LABEL_9;
      }

      result = memcpy(&v5[v6], *&__n[1], __n[0]);
      v6 = v7;
      if (v7 >= a2)
      {
        return result;
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(exception, "bad read in readFully");
LABEL_9:
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  return result;
}

uint64_t sub_2438C5D58(uint64_t a1, void *a2)
{
  sub_2438C3C28(a1, a2);
  v4 = *(a1 + 32);
  v5 = sub_2438CB5A8(a2, (a1 + 16));
  if (!v5)
  {
    sub_2438CB54C("unordered_map::at: key not found");
  }

  v6 = *(*v4 + 48);

  return v6(v4, v5 + 3);
}

void *sub_2438C5DE0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2438C36CC(a1, a2, a3);
  *v5 = &unk_28569F340;
  v6 = v5 + 4;
  v7 = operator new(0x50uLL);
  v8 = (*(*a3 + 40))(a3);
  sub_2438FCBF8(v7, v8);
  sub_2438CB690(v6, v7);
  a1[6] = 0;
  (*(*a3 + 24))(v28, a3, a1[2]);
  if (v29 >= 4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(exception, "Unknown encoding in convertRleVersion");
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  v9 = dword_24398CA40[v29];
  sub_2438B3E18(v28);
  (*(*a3 + 24))(v28, a3, a1[2]);
  v10 = v30;
  sub_2438B3E18(v28);
  (*(*a3 + 32))(&v27, a3, a1[2], 1, 1);
  sub_2438EC158(&v27, 0, v9, a1[3], v28);
  v11 = v28[0];
  v28[0] = 0;
  v12 = a1[6];
  a1[6] = v11;
  if (v12)
  {
    (*(*v12 + 8))(v12);
    v13 = v28[0];
    v28[0] = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }
  }

  v14 = v27;
  v27 = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  (*(*a3 + 32))(&v26, a3, a1[2], 2, 0);
  sub_2438EC158(&v26, 0, v9, a1[3], v28);
  v15 = v26;
  v26 = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = (v10 + 1);
  sub_2438DEE58(*v6 + 40, v16);
  v17 = *(*v6 + 56);
  (*(*v28[0] + 32))(v28[0], v17 + 1, v10, 0);
  *v17 = 0;
  if (v16 >= 2)
  {
    v18 = 0;
    v19 = v17 + 1;
    v20 = v16 - 1;
    do
    {
      v18 += *v19;
      *v19++ = v18;
      --v20;
    }

    while (v20);
  }

  sub_2438DECAC(*v6, v17[v10]);
  (*(*a3 + 32))(&v25, a3, a1[2], 3, 0);
  sub_2438C5C3C(*(*v6 + 16), v17[v10], v25);
  v21 = v25;
  v25 = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v22 = v28[0];
  v28[0] = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  return a1;
}

void sub_2438C61F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2438B3E18(va);
  v6 = v4[6];
  v4[6] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = v4[5];
  if (v7)
  {
    sub_2438CB880(v7);
  }

  v8 = v4[1];
  *v4 = &unk_28569F1C0;
  v4[1] = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  _Unwind_Resume(a1);
}

void *sub_2438C6354(void *a1)
{
  *a1 = &unk_28569F340;
  v2 = a1[6];
  a1[6] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    sub_2438CB880(v3);
  }

  v4 = a1[1];
  *a1 = &unk_28569F1C0;
  a1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

void sub_2438C641C(void *a1)
{
  v1 = sub_2438C6354(a1);

  operator delete(v1);
}

unint64_t sub_2438C6444(uint64_t a1)
{
  v2 = sub_2438C39FC();
  (*(**(a1 + 48) + 24))(*(a1 + 48), v2);
  return v2;
}

uint64_t sub_2438C649C(uint64_t a1, char **a2, size_t a3, void *a4)
{
  v4 = a3;
  sub_2438C3B1C(a1, a2, a3, a4);
  if (*(a2 + 64))
  {
    v7 = a2[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = **a2;
  v9 = __dynamic_cast(a2, &unk_2856A2580, &unk_2856A25C0, 0);
  if (!v9)
  {
    __cxa_bad_cast();
  }

  v10 = *(a1 + 32);
  v11 = *(v10 + 16);
  v12 = *(v10 + 56);
  v13 = v9[12];
  v14 = v9[17];
  result = (*(**(a1 + 48) + 32))(*(a1 + 48), v14, v4, v7);
  v16 = *(*(a1 + 32) + 64) - 1;
  if (v7)
  {
    for (; v4; --v4)
    {
      if (*v7++)
      {
        v18 = *v14;
        if ((*v14 & 0x8000000000000000) != 0 || v18 >= v16)
        {
          goto LABEL_18;
        }

        v19 = (v12 + 8 * v18);
        v21 = *v19;
        v20 = v19[1];
        *v13 = v11 + v21;
        *v14 = v20 - v21;
      }

      ++v13;
      ++v14;
    }
  }

  else
  {
    for (; v4; --v4)
    {
      v22 = *v14;
      if ((*v14 & 0x8000000000000000) != 0 || v22 >= v16)
      {
LABEL_18:
        exception = __cxa_allocate_exception(0x10uLL);
        sub_2438DCB60(exception, "Entry index out of range in StringDictionaryColumn");
        __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
      }

      v23 = (v12 + 8 * v22);
      v25 = *v23;
      v24 = v23[1];
      *v13++ = v11 + v25;
      *v14++ = v24 - v25;
    }
  }

  return result;
}

uint64_t sub_2438C667C(uint64_t a1, char **a2, size_t a3, void *a4)
{
  sub_2438C3B1C(a1, a2, a3, a4);
  v6 = *(a2 + 64);
  v7 = a2[5];
  *(a2 + 65) = 1;
  v8 = **a2;
  v9 = __dynamic_cast(a2, &unk_2856A2580, &unk_2856A25D8, 0);
  if (!v9)
  {
    __cxa_bad_cast();
  }

  v10 = v9;
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *(v9 + 26);
  v10[25] = v12;
  v10[26] = v11;
  if (v13)
  {
    sub_2438CB880(v13);
  }

  v14 = v10[29];
  v15 = *(**(a1 + 48) + 32);

  return v15();
}

uint64_t sub_2438C6780(uint64_t a1, void *a2)
{
  sub_2438C3C28(a1, a2);
  v4 = *(a1 + 48);
  v5 = sub_2438CB5A8(a2, (a1 + 16));
  if (!v5)
  {
    sub_2438CB54C("unordered_map::at: key not found");
  }

  v6 = *(*v4 + 16);

  return v6(v4, v5 + 3);
}

void *sub_2438C6808(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2438C36CC(a1, a2, a3);
  *v5 = &unk_28569F380;
  v5[4] = 0;
  v6 = v5 + 4;
  v5[5] = 0;
  (*(*a3 + 24))(v22, a3, v5[2]);
  if (v23 >= 4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(exception, "Unknown encoding in convertRleVersion");
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  v7 = dword_24398CA40[v23];
  sub_2438B3E18(v22);
  (*(*a3 + 32))(v22, a3, a1[2], 2, 1);
  v8 = v22[0];
  if (!v22[0])
  {
    v19 = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(v19, "LENGTH stream not found in StringDirectColumn");
    goto LABEL_19;
  }

  v22[0] = 0;
  v20 = v8;
  sub_2438EC158(&v20, 0, v7, a1[3], &v21);
  v9 = v21;
  v21 = 0;
  v10 = *v6;
  *v6 = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
    v11 = v21;
    v21 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v20;
  v20 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  (*(*a3 + 32))(&v21, a3, a1[2], 1, 1);
  v13 = v21;
  v21 = 0;
  v14 = a1[5];
  a1[5] = v13;
  if (v14)
  {
    (*(*v14 + 8))(v14);
    v15 = v21;
    v21 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v13 = a1[5];
  }

  if (!v13)
  {
    v19 = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(v19, "DATA stream not found in StringDirectColumn");
LABEL_19:
    __cxa_throw(v19, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  a1[6] = 0;
  a1[7] = 0;
  v16 = v22[0];
  v22[0] = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  return a1;
}

void sub_2438C6B24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  __cxa_free_exception(v13);
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  v16 = v12[5];
  v12[5] = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = *v14;
  *v14 = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = v12[1];
  *v12 = &unk_28569F1C0;
  v12[1] = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  _Unwind_Resume(a1);
}

void *sub_2438C6C64(void *a1)
{
  *a1 = &unk_28569F380;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  *a1 = &unk_28569F1C0;
  a1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

void sub_2438C6D50(void *a1)
{
  v1 = sub_2438C6C64(a1);

  operator delete(v1);
}

unint64_t sub_2438C6D78()
{
  v0 = MEMORY[0x28223BE20]();
  v15 = *MEMORY[0x277D85DE8];
  v1 = sub_2438C39FC();
  if (!v1)
  {
    v3 = 0;
    v9 = *(v0 + 56);
LABEL_16:
    *(v0 + 48) += v3;
    *(v0 + 56) = v9 - v3;
    goto LABEL_17;
  }

  v2 = 0;
  v3 = 0;
  do
  {
    if (v1 - v2 >= 0x400)
    {
      v4 = 1024;
    }

    else
    {
      v4 = v1 - v2;
    }

    v5 = v14;
    (*(**(v0 + 32) + 32))(*(v0 + 32), v14, v4, 0);
    v6 = 0;
    v7 = v4;
    do
    {
      v8 = *v5++;
      v6 += v8;
      --v7;
    }

    while (v7);
    v3 += v6;
    v2 += v4;
  }

  while (v2 < v1);
  v9 = *(v0 + 56);
  v10 = v3 - v9;
  if (v3 <= v9)
  {
    goto LABEL_16;
  }

  do
  {
    if (v10 >= 0x7FFFFFFF)
    {
      v11 = 0x7FFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    (*(**(v0 + 40) + 32))(*(v0 + 40), v11);
    v10 -= v11;
  }

  while (v10);
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
LABEL_17:
  v12 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_2438C6EF8(uint64_t a1, char **a2, size_t a3, void *a4)
{
  v4 = a3;
  sub_2438C3B1C(a1, a2, a3, a4);
  if (*(a2 + 64))
  {
    v7 = a2[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = **a2;
  v9 = __dynamic_cast(a2, &unk_2856A2580, &unk_2856A25C0, 0);
  if (!v9)
  {
    __cxa_bad_cast();
  }

  v10 = v9;
  v11 = v9[12];
  v12 = v9[17];
  (*(**(a1 + 32) + 32))(*(a1 + 32), v12, v4, v7);
  if (!v7)
  {
    if (v4)
    {
      v13 = 0;
      v18 = v12;
      v19 = v4;
      do
      {
        v20 = *v18++;
        v13 += v20;
        --v19;
      }

      while (v19);
      goto LABEL_17;
    }

LABEL_16:
    v13 = 0;
    goto LABEL_17;
  }

  if (!v4)
  {
    goto LABEL_16;
  }

  v13 = 0;
  v14 = v7;
  v15 = v12;
  v16 = v4;
  do
  {
    if (*v14++)
    {
      v13 += *v15;
    }

    ++v15;
    --v16;
  }

  while (v16);
LABEL_17:
  sub_2438DECAC((v10 + 20), v13);
  v21 = v10[22];
  v22 = *(a1 + 56);
  if (v22 >= v13)
  {
    v23 = 0;
  }

  else
  {
    v23 = 0;
    v24 = *(a1 + 48);
    do
    {
      memcpy((v21 + v23), v24, v22);
      v25 = *(a1 + 56);
      v34 = 0;
      v33 = 0;
      if (((*(**(a1 + 40) + 16))(*(a1 + 40), &v34, &v33) & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        sub_2438DCB60(exception, "failed to read in StringDirectColumnReader.next");
        __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
      }

      v23 += v25;
      v24 = v34;
      v22 = v33;
      *(a1 + 48) = v34;
      *(a1 + 56) = v22;
    }

    while (v23 + v22 < v13);
  }

  v26 = v13 > v23;
  v27 = v13 - v23;
  if (v26)
  {
    memcpy((v21 + v23), *(a1 + 48), v27);
    v28 = *(a1 + 56) - v27;
    *(a1 + 48) += v27;
    *(a1 + 56) = v28;
  }

  v29 = v10[22];
  if (v7)
  {
    for (; v4; --v4)
    {
      if (*v7++)
      {
        *v11 = v29;
        v29 += *v12;
      }

      ++v12;
      ++v11;
    }
  }

  else
  {
    for (; v4; --v4)
    {
      *v11++ = v29;
      v31 = *v12++;
      v29 += v31;
    }
  }
}

uint64_t sub_2438C7198(unint64_t *a1, void *a2)
{
  sub_2438C3C28(a1, a2);
  v4 = a1[5];
  v5 = sub_2438CB5A8(a2, a1 + 2);
  if (!v5 || ((*(*v4 + 48))(v4, v5 + 3), v6 = a1[4], (v7 = sub_2438CB5A8(a2, a1 + 2)) == 0))
  {
    sub_2438CB54C("unordered_map::at: key not found");
  }

  v8 = *(*v6 + 16);

  return v8(v6, v7 + 3);
}

void *sub_2438C7260(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2438C36CC(a1, a2, a3);
  *v6 = &unk_28569F3C0;
  v6[4] = 0;
  v7 = (v6 + 4);
  v6[5] = 0;
  v6[6] = 0;
  (*(*a3 + 16))(&__p, a3);
  (*(*a3 + 24))(v14, a3, a1[2]);
  v8 = v15;
  sub_2438B3E18(v14);
  if (v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(exception, "Unknown encoding for StructColumnReader");
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  while ((*(*a2 + 40))(a2) > v8)
  {
    v9 = (*(*a2 + 48))(a2, v8);
    v10 = (*(*v9 + 16))(v9);
    if ((*(__p + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v10))
    {
      sub_2438C74F0(&v13, v9, a3);
      v14[0] = v13;
      sub_2439780F8(v7, v14);
    }

    ++v8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_2438C7450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  v19 = *v17;
  if (*v17)
  {
    v16[5] = v19;
    operator delete(v19);
  }

  v20 = v16[1];
  *v16 = &unk_28569F1C0;
  v16[1] = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2438C74F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  switch((*(*a1 + 32))(a1))
  {
    case 0u:
      v6 = operator new(0x28uLL);
      result = sub_2438C3CB0(v6, a1, a2);
      goto LABEL_24;
    case 1u:
      v6 = operator new(0x28uLL);
      result = sub_2438C41EC(v6, a1, a2);
      goto LABEL_24;
    case 2u:
    case 3u:
    case 4u:
    case 0xFu:
      v6 = operator new(0x28uLL);
      result = sub_2438C4728(v6, a1, a2);
      goto LABEL_24;
    case 5u:
    case 6u:
      v6 = operator new(0x48uLL);
      result = sub_2438C5688(v6, a1, a2);
      goto LABEL_24;
    case 7u:
    case 8u:
    case 0x10u:
    case 0x11u:
      v8 = (*(*a1 + 16))(a1);
      (*(*a2 + 24))(v12, a2, v8);
      v9 = v13;
      sub_2438B3E18(v12);
      if (v9 > 1)
      {
        if (v9 != 2)
        {
          if (v9 != 3)
          {
            goto LABEL_6;
          }

LABEL_9:
          v6 = operator new(0x38uLL);
          result = sub_2438C5DE0(v6, a1, a2);
          goto LABEL_24;
        }
      }

      else if (v9)
      {
        if (v9 != 1)
        {
LABEL_6:
          exception = __cxa_allocate_exception(0x10uLL);
          sub_2438DCACC(exception, "buildReader unhandled string encoding");
LABEL_26:
          __cxa_throw(exception, &unk_2856A0958, std::logic_error::~logic_error);
        }

        goto LABEL_9;
      }

      v6 = operator new(0x40uLL);
      result = sub_2438C6808(v6, a1, a2);
LABEL_24:
      *a3 = v6;
      return result;
    case 9u:
      v6 = operator new(0x40uLL);
      result = sub_2438C4D10(v6, a1, a2);
      goto LABEL_24;
    case 0xAu:
      v6 = operator new(0x30uLL);
      result = sub_2438C7CD8(v6, a1, a2);
      goto LABEL_24;
    case 0xBu:
      v6 = operator new(0x38uLL);
      result = sub_2438C881C(v6, a1, a2);
      goto LABEL_24;
    case 0xCu:
      v6 = operator new(0x38uLL);
      result = sub_2438C7260(v6, a1, a2);
      goto LABEL_24;
    case 0xDu:
      v6 = operator new(0x60uLL);
      result = sub_2438C9568(v6, a1, a2);
      goto LABEL_24;
    case 0xEu:
      if ((*(*a1 + 72))(a1))
      {
        v11 = (*(*a1 + 72))(a1);
        v6 = operator new(0x48uLL);
        result = sub_2438CA0D4(v6, a1, a2);
        if (v11 > 0x12)
        {
          *v6 = &unk_28569F500;
        }
      }

      else
      {
        v6 = operator new(0x58uLL);
        result = sub_2438CAF24(v6, a1, a2);
      }

      goto LABEL_24;
    default:
      exception = __cxa_allocate_exception(0x10uLL);
      sub_2438DCACC(exception, "buildReader unhandled type");
      goto LABEL_26;
  }
}

void *sub_2438C78B8(void *a1)
{
  *a1 = &unk_28569F3C0;
  v4 = a1 + 4;
  v2 = a1[4];
  v3 = v4[1];
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      v6 = v2[v5];
      if (v6)
      {
        (*(*v6 + 8))(v2[v5]);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v5;
    }

    while (v5 < (v3 - v2) >> 3);
  }

  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v7 = a1[1];
  *a1 = &unk_28569F1C0;
  a1[1] = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  return a1;
}

void sub_2438C79A4(void *a1)
{
  v1 = sub_2438C78B8(a1);

  operator delete(v1);
}

unint64_t sub_2438C79CC(uint64_t a1)
{
  v2 = sub_2438C39FC();
  for (i = *(a1 + 32); i != *(a1 + 40); ++i)
  {
    v4 = *i;
    (*(*v4 + 16))(v4, v2);
  }

  return v2;
}

void *sub_2438C7A44(uint64_t a1, char **a2, size_t a3, void *a4)
{
  result = sub_2438C3B1C(a1, a2, a3, a4);
  if (*(a2 + 64))
  {
    v8 = a2[5];
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 32);
  if (v9 != *(a1 + 40))
  {
    v10 = 0;
    do
    {
      v11 = *(v9 + v10);
      v12 = **a2;
      v13 = __dynamic_cast(a2, &unk_2856A2580, &unk_2856A25F0, 0);
      if (!v13)
      {
        __cxa_bad_cast();
      }

      result = (*(*v11 + 24))(v11, *(v13[10] + v10), a3, v8);
      v10 += 8;
    }

    while (v9 + v10 != *(a1 + 40));
  }

  return result;
}

void *sub_2438C7B58(uint64_t a1, char **a2, size_t a3, void *a4)
{
  result = sub_2438C3B1C(a1, a2, a3, a4);
  if (*(a2 + 64))
  {
    v8 = a2[5];
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 32);
  if (v9 != *(a1 + 40))
  {
    v10 = 0;
    do
    {
      v11 = *(v9 + v10);
      v12 = **a2;
      v13 = __dynamic_cast(a2, &unk_2856A2580, &unk_2856A25F0, 0);
      if (!v13)
      {
        __cxa_bad_cast();
      }

      result = (*(*v11 + 32))(v11, *(v13[10] + v10), a3, v8);
      v10 += 8;
    }

    while (v9 + v10 != *(a1 + 40));
  }

  return result;
}

uint64_t sub_2438C7C68(uint64_t a1, void *a2)
{
  result = sub_2438C3C28(a1, a2);
  for (i = *(a1 + 32); i != *(a1 + 40); ++i)
  {
    v6 = *i;
    result = (*(*v6 + 40))(v6, a2);
  }

  return result;
}

void *sub_2438C7CD8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2438C36CC(a1, a2, a3);
  v6[4] = 0;
  v7 = v6 + 4;
  *v6 = &unk_28569F400;
  v6[5] = 0;
  (*(*a3 + 16))(&__p, a3);
  (*(*a3 + 24))(v23, a3, a1[2]);
  if (v24 >= 4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(exception, "Unknown encoding in convertRleVersion");
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  v8 = dword_24398CA40[v24];
  sub_2438B3E18(v23);
  (*(*a3 + 32))(v23, a3, a1[2], 2, 1);
  v9 = v23[0];
  if (!v23[0])
  {
    v20 = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(v20, "LENGTH stream not found in List column");
    __cxa_throw(v20, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  v23[0] = 0;
  v21 = v9;
  sub_2438EC158(&v21, 0, v8, a1[3], &v22);
  v10 = v22;
  v22 = 0;
  v11 = a1[5];
  a1[5] = v10;
  if (v11)
  {
    (*(*v11 + 8))(v11);
    v12 = v22;
    v22 = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  v13 = v21;
  v21 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = (*(*a2 + 48))(a2, 0);
  v15 = (*(*v14 + 16))(v14);
  if ((*(__p + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v15))
  {
    sub_2438C74F0(&v22, v14, a3);
    v16 = *v7;
    *v7 = v22;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }
  }

  v17 = v23[0];
  v23[0] = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_2438C8020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  if (__p)
  {
    operator delete(__p);
  }

  v19 = v16[5];
  v16[5] = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = *v17;
  *v17 = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = v16[1];
  *v16 = &unk_28569F1C0;
  v16[1] = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2438C8178(void *a1)
{
  *a1 = &unk_28569F400;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  *a1 = &unk_28569F1C0;
  a1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

void sub_2438C8264(void *a1)
{
  v1 = sub_2438C8178(a1);

  operator delete(v1);
}

unint64_t sub_2438C828C()
{
  v0 = MEMORY[0x28223BE20]();
  v13 = *MEMORY[0x277D85DE8];
  v1 = sub_2438C39FC();
  v2 = v1;
  v3 = *(v0 + 32);
  if (v3)
  {
    if (v1)
    {
      v4 = 0;
      v5 = 0;
      do
      {
        if (v2 - v4 >= 0x400)
        {
          v6 = 1024;
        }

        else
        {
          v6 = v2 - v4;
        }

        (*(**(v0 + 40) + 32))(*(v0 + 40), v12, v6, 0);
        if (v2 != v4)
        {
          if (v6 <= 1)
          {
            v7 = 1;
          }

          else
          {
            v7 = v6;
          }

          v8 = v12;
          do
          {
            v9 = *v8++;
            v5 += v9;
            --v7;
          }

          while (v7);
        }

        v4 += v6;
      }

      while (v4 < v2);
    }

    else
    {
      v5 = 0;
    }

    (*(*v3 + 16))(v3, v5);
  }

  else
  {
    (*(**(v0 + 40) + 24))(*(v0 + 40), v1);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_2438C8410(uint64_t a1, char **a2, size_t a3, void *a4)
{
  sub_2438C3B1C(a1, a2, a3, a4);
  v7 = **a2;
  v8 = __dynamic_cast(a2, &unk_2856A2580, &unk_2856A2608, 0);
  if (!v8)
  {
    __cxa_bad_cast();
  }

  v9 = v8;
  v10 = v8[12];
  if (*(v8 + 64) == 1)
  {
    v11 = v8[5];
  }

  else
  {
    v11 = 0;
  }

  (*(**(a1 + 40) + 32))(*(a1 + 40), v10, a3, v11);
  if (v11)
  {
    if (a3)
    {
      v12 = 0;
      v13 = a3;
      v14 = v10;
      do
      {
        if (*v11++)
        {
          v16 = *v14;
          *v14 = v12;
          v12 += v16;
        }

        else
        {
          *v14 = v12;
        }

        ++v14;
        --v13;
      }

      while (v13);
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (!a3)
  {
LABEL_17:
    v12 = 0;
    goto LABEL_18;
  }

  v12 = 0;
  v17 = v10;
  v18 = a3;
  do
  {
    v19 = *v17;
    *v17++ = v12;
    v12 += v19;
    --v18;
  }

  while (v18);
LABEL_18:
  v10[a3] = v12;
  result = *(a1 + 32);
  if (result)
  {
    v21 = v9[15];
    v22 = *(*result + 24);

    return v22();
  }

  return result;
}

uint64_t sub_2438C85B4(uint64_t a1, char **a2, size_t a3, void *a4)
{
  sub_2438C3B1C(a1, a2, a3, a4);
  v7 = **a2;
  v8 = __dynamic_cast(a2, &unk_2856A2580, &unk_2856A2608, 0);
  if (!v8)
  {
    __cxa_bad_cast();
  }

  v9 = v8;
  v10 = v8[12];
  if (*(v8 + 64) == 1)
  {
    v11 = v8[5];
  }

  else
  {
    v11 = 0;
  }

  (*(**(a1 + 40) + 32))(*(a1 + 40), v10, a3, v11);
  if (v11)
  {
    if (a3)
    {
      v12 = 0;
      v13 = a3;
      v14 = v10;
      do
      {
        if (*v11++)
        {
          v16 = *v14;
          *v14 = v12;
          v12 += v16;
        }

        else
        {
          *v14 = v12;
        }

        ++v14;
        --v13;
      }

      while (v13);
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (!a3)
  {
LABEL_17:
    v12 = 0;
    goto LABEL_18;
  }

  v12 = 0;
  v17 = v10;
  v18 = a3;
  do
  {
    v19 = *v17;
    *v17++ = v12;
    v12 += v19;
    --v18;
  }

  while (v18);
LABEL_18:
  v10[a3] = v12;
  result = *(a1 + 32);
  if (result)
  {
    v21 = v9[15];
    v22 = *(*result + 32);

    return v22();
  }

  return result;
}

uint64_t sub_2438C8754(unint64_t *a1, void *a2)
{
  sub_2438C3C28(a1, a2);
  v4 = a1[5];
  v5 = sub_2438CB5A8(a2, a1 + 2);
  if (!v5)
  {
    sub_2438CB54C("unordered_map::at: key not found");
  }

  (*(*v4 + 16))(v4, v5 + 3);
  result = a1[4];
  if (result)
  {
    v7 = *(*result + 40);

    return v7();
  }

  return result;
}

void *sub_2438C881C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2438C36CC(a1, a2, a3);
  *v6 = &unk_28569F440;
  v6[4] = 0;
  v7 = v6 + 4;
  v6[5] = 0;
  v6[6] = 0;
  (*(*a3 + 16))(&__p, a3);
  (*(*a3 + 24))(v26, a3, a1[2]);
  if (v27 >= 4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(exception, "Unknown encoding in convertRleVersion");
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  v8 = dword_24398CA40[v27];
  sub_2438B3E18(v26);
  (*(*a3 + 32))(v26, a3, a1[2], 2, 1);
  v9 = v26[0];
  if (!v26[0])
  {
    v23 = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(v23, "LENGTH stream not found in Map column");
    __cxa_throw(v23, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  v26[0] = 0;
  v24 = v9;
  sub_2438EC158(&v24, 0, v8, a1[3], &v25);
  v10 = v25;
  v25 = 0;
  v11 = a1[6];
  a1[6] = v10;
  if (v11)
  {
    (*(*v11 + 8))(v11);
    v12 = v25;
    v25 = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  v13 = v24;
  v24 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = (*(*a2 + 48))(a2, 0);
  v15 = (*(*v14 + 16))(v14);
  if ((*(__p + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v15))
  {
    sub_2438C74F0(&v25, v14, a3);
    v16 = *v7;
    *v7 = v25;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }
  }

  v17 = (*(*a2 + 48))(a2, 1);
  v18 = (*(*v17 + 16))(v17);
  if ((*(__p + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v18))
  {
    sub_2438C74F0(&v25, v17, a3);
    v19 = a1[5];
    a1[5] = v25;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }
  }

  v20 = v26[0];
  v26[0] = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_2438C8C14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  if (__p)
  {
    operator delete(__p);
  }

  v19 = v16[6];
  v16[6] = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = v16[5];
  v16[5] = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = *v17;
  *v17 = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v22 = v16[1];
  *v16 = &unk_28569F1C0;
  v16[1] = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2438C8DA8(void *a1)
{
  *a1 = &unk_28569F440;
  v2 = a1[6];
  a1[6] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[5];
  a1[5] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[4];
  a1[4] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[1];
  *a1 = &unk_28569F1C0;
  a1[1] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

void sub_2438C8EC4(void *a1)
{
  v1 = sub_2438C8DA8(a1);

  operator delete(v1);
}

unint64_t sub_2438C8EEC()
{
  v0 = MEMORY[0x28223BE20]();
  v14 = *MEMORY[0x277D85DE8];
  v1 = sub_2438C39FC();
  v2 = v1;
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  if (*(v0 + 32) == 0)
  {
    (*(**(v0 + 48) + 24))(*(v0 + 48), v1);
    goto LABEL_19;
  }

  if (v1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      if (v2 - v5 >= 0x400)
      {
        v7 = 1024;
      }

      else
      {
        v7 = v2 - v5;
      }

      (*(**(v0 + 48) + 32))(*(v0 + 48), v13, v7, 0);
      if (v2 != v5)
      {
        if (v7 <= 1)
        {
          v8 = 1;
        }

        else
        {
          v8 = v7;
        }

        v9 = v13;
        do
        {
          v10 = *v9++;
          v6 += v10;
          --v8;
        }

        while (v8);
      }

      v5 += v7;
    }

    while (v5 < v2);
    if (!v4)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v6 = 0;
  if (v4)
  {
LABEL_15:
    (*(*v4 + 16))(v4, v6);
  }

LABEL_16:
  if (v3)
  {
    (*(*v3 + 16))(v3, v6);
  }

LABEL_19:
  v11 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_2438C90B4(uint64_t a1, char **a2, size_t a3, void *a4)
{
  sub_2438C3B1C(a1, a2, a3, a4);
  v7 = **a2;
  v8 = __dynamic_cast(a2, &unk_2856A2580, &unk_2856A2620, 0);
  if (!v8)
  {
    __cxa_bad_cast();
  }

  v9 = v8;
  v10 = v8[12];
  if (*(v8 + 64) == 1)
  {
    v11 = v8[5];
  }

  else
  {
    v11 = 0;
  }

  (*(**(a1 + 48) + 32))(*(a1 + 48), v10, a3, v11);
  if (!v11)
  {
    if (a3)
    {
      v12 = 0;
      v17 = v10;
      v18 = a3;
      do
      {
        v19 = *v17;
        *v17++ = v12;
        v12 += v19;
        --v18;
      }

      while (v18);
      goto LABEL_18;
    }

LABEL_17:
    v12 = 0;
    goto LABEL_18;
  }

  if (!a3)
  {
    goto LABEL_17;
  }

  v12 = 0;
  v13 = a3;
  v14 = v10;
  do
  {
    if (*v11++)
    {
      v16 = *v14;
      *v14 = v12;
      v12 += v16;
    }

    else
    {
      *v14 = v12;
    }

    ++v14;
    --v13;
  }

  while (v13);
LABEL_18:
  v10[a3] = v12;
  v20 = *(a1 + 32);
  if (v20)
  {
    (*(*v20 + 24))(v20, v9[15], v12, 0);
  }

  result = *(a1 + 40);
  if (result)
  {
    v22 = v9[16];
    v23 = *(*result + 24);

    return v23();
  }

  return result;
}

uint64_t sub_2438C9294(uint64_t a1, char **a2, size_t a3, void *a4)
{
  sub_2438C3B1C(a1, a2, a3, a4);
  v7 = **a2;
  v8 = __dynamic_cast(a2, &unk_2856A2580, &unk_2856A2620, 0);
  if (!v8)
  {
    __cxa_bad_cast();
  }

  v9 = v8;
  v10 = v8[12];
  if (*(v8 + 64) == 1)
  {
    v11 = v8[5];
  }

  else
  {
    v11 = 0;
  }

  (*(**(a1 + 48) + 32))(*(a1 + 48), v10, a3, v11);
  if (!v11)
  {
    if (a3)
    {
      v12 = 0;
      v17 = v10;
      v18 = a3;
      do
      {
        v19 = *v17;
        *v17++ = v12;
        v12 += v19;
        --v18;
      }

      while (v18);
      goto LABEL_18;
    }

LABEL_17:
    v12 = 0;
    goto LABEL_18;
  }

  if (!a3)
  {
    goto LABEL_17;
  }

  v12 = 0;
  v13 = a3;
  v14 = v10;
  do
  {
    if (*v11++)
    {
      v16 = *v14;
      *v14 = v12;
      v12 += v16;
    }

    else
    {
      *v14 = v12;
    }

    ++v14;
    --v13;
  }

  while (v13);
LABEL_18:
  v10[a3] = v12;
  v20 = *(a1 + 32);
  if (v20)
  {
    (*(*v20 + 32))(v20, v9[15], v12, 0);
  }

  result = *(a1 + 40);
  if (result)
  {
    v22 = v9[16];
    v23 = *(*result + 32);

    return v23();
  }

  return result;
}

uint64_t sub_2438C9470(unint64_t *a1, void *a2)
{
  sub_2438C3C28(a1, a2);
  v4 = a1[6];
  v5 = sub_2438CB5A8(a2, a1 + 2);
  if (!v5)
  {
    sub_2438CB54C("unordered_map::at: key not found");
  }

  (*(*v4 + 16))(v4, v5 + 3);
  v6 = a1[4];
  if (v6)
  {
    (*(*v6 + 40))(v6, a2);
  }

  result = a1[5];
  if (result)
  {
    v8 = *(*result + 40);

    return v8();
  }

  return result;
}

void *sub_2438C9568(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2438C36CC(a1, a2, a3);
  *v6 = &unk_28569F480;
  *(v6 + 2) = 0u;
  v7 = v6 + 4;
  *(v6 + 4) = 0u;
  v8 = v6 + 8;
  *(v6 + 3) = 0u;
  v6[10] = 0;
  v9 = (*(*a2 + 40))(a2);
  a1[11] = v9;
  sub_2438C9994(a1 + 5, v9);
  sub_2438C99C4(v8, a1[11]);
  (*(*a3 + 32))(&v25, a3, a1[2], 1, 1);
  if (!v25)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(exception, "LENGTH stream not found in Union column");
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  v24 = v25;
  v25 = 0;
  sub_2438C30E4(&v24, __p);
  v10 = __p[0];
  __p[0] = 0;
  v11 = *v7;
  *v7 = v10;
  if (v11)
  {
    (*(*v11 + 8))(v11);
    v12 = __p[0];
    __p[0] = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  v13 = v24;
  v24 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  (*(*a3 + 16))(__p, a3);
  if (a1[11])
  {
    v14 = 0;
    v15 = 1;
    do
    {
      v16 = (*(*a2 + 48))(a2, v14);
      v17 = (*(*v16 + 16))(v16);
      if ((*(__p[0] + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v17))
      {
        sub_2438C74F0(&v22, v16, a3);
        *(a1[5] + 8 * v14) = v22;
      }

      v14 = v15;
    }

    while (a1[11] > v15++);
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  v19 = v25;
  v25 = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  return a1;
}

void sub_2438C986C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    (*(*a14 + 8))(a14);
  }

  v18 = *v15;
  if (*v15)
  {
    v14[9] = v18;
    operator delete(v18);
  }

  v19 = v14[5];
  if (v19)
  {
    v14[6] = v19;
    operator delete(v19);
  }

  v20 = *v16;
  *v16 = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = v14[1];
  *v14 = &unk_28569F1C0;
  v14[1] = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  _Unwind_Resume(exception_object);
}

void sub_2438C9994(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    sub_2438CB8EC(a1, a2 - v2);
  }
}

void sub_2438C99C4(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    sub_2438CBA00(a1, a2 - v2);
  }
}

void *sub_2438C99F4(void *a1)
{
  *a1 = &unk_28569F480;
  v3 = a1[5];
  v2 = a1[6];
  while (v3 != v2)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
      v2 = a1[6];
    }

    ++v3;
  }

  v4 = a1[8];
  if (v4)
  {
    a1[9] = v4;
    operator delete(v4);
  }

  v5 = a1[5];
  if (v5)
  {
    a1[6] = v5;
    operator delete(v5);
  }

  v6 = a1[4];
  a1[4] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = a1[1];
  *a1 = &unk_28569F1C0;
  a1[1] = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  return a1;
}

void sub_2438C9B14(void *a1)
{
  v1 = sub_2438C99F4(a1);

  operator delete(v1);
}

unint64_t sub_2438C9B3C(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = sub_2438C39FC();
  v3 = *(a1 + 64);
  bzero(v3, 8 * *(a1 + 88));
  if (v2)
  {
    for (i = 0; i < v2; i += v5)
    {
      if (v2 - i >= 0x400)
      {
        v5 = 1024;
      }

      else
      {
        v5 = v2 - i;
      }

      (*(**(a1 + 32) + 32))(*(a1 + 32), v14, v5, 0);
      if (v2 != i)
      {
        if (v5 <= 1)
        {
          v6 = 1;
        }

        else
        {
          v6 = v5;
        }

        v7 = v14;
        do
        {
          v8 = *v7++;
          ++*(v3 + v8);
          --v6;
        }

        while (v6);
      }
    }
  }

  v9 = *(a1 + 88);
  if (v9)
  {
    for (j = 0; j < v9; ++j)
    {
      if (*(v3 + j))
      {
        v11 = *(*(a1 + 40) + 8 * j);
        if (v11)
        {
          (*(*v11 + 16))(v11);
          v9 = *(a1 + 88);
        }
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_2438C9CA4(uint64_t a1, char **a2, size_t a3, void *a4)
{
  v4 = a3;
  sub_2438C3B1C(a1, a2, a3, a4);
  v7 = **a2;
  v8 = __dynamic_cast(a2, &unk_2856A2580, &unk_2856A2638, 0);
  if (!v8)
  {
    __cxa_bad_cast();
  }

  v9 = v8;
  v10 = v8[17];
  v11 = *(a1 + 64);
  bzero(v11, 8 * *(a1 + 88));
  v12 = v9[12];
  if (*(v9 + 64) == 1)
  {
    v13 = v9[5];
  }

  else
  {
    v13 = 0;
  }

  result = (*(**(a1 + 32) + 32))(*(a1 + 32), v9[12], v4, v13);
  if (v13)
  {
    for (; v4; --v4)
    {
      if (*v13++)
      {
        v16 = *v12;
        v17 = *(v11 + v16);
        *(v11 + v16) = v17 + 1;
        *v10 = v17;
      }

      ++v10;
      ++v12;
    }
  }

  else
  {
    for (; v4; --v4)
    {
      v18 = *v12++;
      v19 = *(v11 + v18);
      *(v11 + v18) = v19 + 1;
      *v10++ = v19;
    }
  }

  v20 = *(a1 + 88);
  if (v20)
  {
    for (i = 0; i < v20; ++i)
    {
      result = *(*(a1 + 40) + 8 * i);
      if (result)
      {
        result = (*(*result + 24))(result, *(v9[20] + 8 * i), *(v11 + i), 0);
        v20 = *(a1 + 88);
      }
    }
  }

  return result;
}

uint64_t sub_2438C9E58(uint64_t a1, char **a2, size_t a3, void *a4)
{
  v4 = a3;
  sub_2438C3B1C(a1, a2, a3, a4);
  v7 = **a2;
  v8 = __dynamic_cast(a2, &unk_2856A2580, &unk_2856A2638, 0);
  if (!v8)
  {
    __cxa_bad_cast();
  }

  v9 = v8;
  v10 = v8[17];
  v11 = *(a1 + 64);
  bzero(v11, 8 * *(a1 + 88));
  v12 = v9[12];
  if (*(v9 + 64) == 1)
  {
    v13 = v9[5];
  }

  else
  {
    v13 = 0;
  }

  result = (*(**(a1 + 32) + 32))(*(a1 + 32), v9[12], v4, v13);
  if (v13)
  {
    for (; v4; --v4)
    {
      if (*v13++)
      {
        v16 = *v12;
        v17 = *(v11 + v16);
        *(v11 + v16) = v17 + 1;
        *v10 = v17;
      }

      ++v10;
      ++v12;
    }
  }

  else
  {
    for (; v4; --v4)
    {
      v18 = *v12++;
      v19 = *(v11 + v18);
      *(v11 + v18) = v19 + 1;
      *v10++ = v19;
    }
  }

  v20 = *(a1 + 88);
  if (v20)
  {
    for (i = 0; i < v20; ++i)
    {
      result = *(*(a1 + 40) + 8 * i);
      if (result)
      {
        result = (*(*result + 32))(result, *(v9[20] + 8 * i), *(v11 + i), 0);
        v20 = *(a1 + 88);
      }
    }
  }

  return result;
}

uint64_t sub_2438CA008(unint64_t *a1, void *a2)
{
  sub_2438C3C28(a1, a2);
  v4 = a1[4];
  v5 = sub_2438CB5A8(a2, a1 + 2);
  if (!v5)
  {
    sub_2438CB54C("unordered_map::at: key not found");
  }

  result = (*(*v4 + 16))(v4, v5 + 3);
  v7 = a1[11];
  if (v7)
  {
    for (i = 0; i < v7; ++i)
    {
      result = *(a1[5] + 8 * i);
      if (result)
      {
        result = (*(*result + 40))(result, a2);
        v7 = a1[11];
      }
    }
  }

  return result;
}

uint64_t sub_2438CA0D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2438C36CC(a1, a2, a3);
  *v6 = &unk_28569F4C0;
  v6[4] = 0;
  v6[8] = 0;
  *(a1 + 44) = (*(*a2 + 80))(a2);
  *(a1 + 40) = (*(*a2 + 72))(a2);
  (*(*a3 + 32))(v23, a3, *(a1 + 16), 1, 1);
  v7 = v23[0];
  v23[0] = 0;
  v8 = *(a1 + 32);
  *(a1 + 32) = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
    v9 = v23[0];
    v23[0] = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v7 = *(a1 + 32);
  }

  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(exception, "DATA stream not found in Decimal64Column");
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  (*(*a3 + 24))(v23, a3, *(a1 + 16));
  if (v24 >= 4)
  {
    v19 = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(v19, "Unknown encoding in convertRleVersion");
    __cxa_throw(v19, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  v10 = dword_24398CA40[v24];
  sub_2438B3E18(v23);
  (*(*a3 + 32))(v23, a3, *(a1 + 16), 5, 1);
  v11 = v23[0];
  if (!v23[0])
  {
    v20 = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(v20, "SECONDARY stream not found in Decimal64Column");
    __cxa_throw(v20, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  v23[0] = 0;
  v21 = v11;
  sub_2438EC158(&v21, 1, v10, *(a1 + 24), &v22);
  v12 = v22;
  v22 = 0;
  v13 = *(a1 + 64);
  *(a1 + 64) = v12;
  if (v13)
  {
    (*(*v13 + 8))(v13);
    v14 = v22;
    v22 = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }
  }

  v15 = v21;
  v21 = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = v23[0];
  v23[0] = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  return a1;
}

void sub_2438CA468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  v14 = v12[8];
  v12[8] = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = v12[4];
  v12[4] = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = v12[1];
  *v12 = &unk_28569F1C0;
  v12[1] = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2438CA5B8(void *a1)
{
  *a1 = &unk_28569F4C0;
  v2 = a1[8];
  a1[8] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  *a1 = &unk_28569F1C0;
  a1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

void sub_2438CA6A4(void *a1)
{
  v1 = sub_2438CA5B8(a1);

  operator delete(v1);
}

unint64_t sub_2438CA6CC(uint64_t a1)
{
  v2 = sub_2438C39FC();
  if (v2)
  {
    v3 = 0;
    do
    {
      sub_2438CA760(a1);
      v4 = *(a1 + 48);
      *(a1 + 48) = v4 + 1;
      v3 += (*v4 >> 7) ^ 1u;
    }

    while (v3 < v2);
  }

  (*(**(a1 + 64) + 24))(*(a1 + 64), v2);
  return v2;
}

uint64_t sub_2438CA760(uint64_t result)
{
  v1 = result + 48;
  if (*(result + 48) == *(result + 56))
  {
    v2 = result;
    do
    {
      v9 = 0;
      result = (*(**(v2 + 32) + 16))(*(v2 + 32), v1, &v9);
      if ((result & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        (*(**(v2 + 32) + 56))(&v7);
        v5 = std::string::insert(&v7, 0, "Read past end of stream in Decimal64ColumnReader ");
        v6 = *&v5->__r_.__value_.__l.__data_;
        v8.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
        *&v8.__r_.__value_.__l.__data_ = v6;
        v5->__r_.__value_.__l.__size_ = 0;
        v5->__r_.__value_.__r.__words[2] = 0;
        v5->__r_.__value_.__r.__words[0] = 0;
        sub_2438DCB2C(exception, &v8);
        __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
      }

      v3 = v9;
      *(v2 + 56) = *(v2 + 48) + v9;
    }

    while (!v3);
  }

  return result;
}

void sub_2438CA888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_2438CA8E8(uint64_t a1, char **a2, size_t a3, void *a4)
{
  v4 = a3;
  sub_2438C3B1C(a1, a2, a3, a4);
  if (*(a2 + 64))
  {
    v7 = a2[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = **a2;
  v9 = __dynamic_cast(a2, &unk_2856A2580, &unk_2856A2650, 0);
  if (!v9)
  {
    __cxa_bad_cast();
  }

  v10 = v9;
  v11 = v9[13];
  v12 = v9[18];
  result = (*(**(a1 + 64) + 32))(*(a1 + 64), v12, v4, v7);
  v10[10] = *(a1 + 40);
  if (v7)
  {
    for (; v4; --v4)
    {
      if (*v7++)
      {
        result = sub_2438CAA1C(a1, v11, *v12);
      }

      v12 += 2;
      v11 += 2;
    }
  }

  else
  {
    for (; v4; --v4)
    {
      v15 = *v12;
      v12 += 2;
      result = sub_2438CAA1C(a1, v11, v15);
      v11 += 2;
    }
  }

  return result;
}

uint64_t sub_2438CAA1C(uint64_t a1, void *a2, int a3)
{
  v6 = 0;
  *a2 = 0;
  do
  {
    result = sub_2438CA760(a1);
    v8 = *(a1 + 48);
    *(a1 + 48) = v8 + 1;
    v9 = *v8;
    v10 = ((*v8 & 0x7F) << v6) | *a2;
    *a2 = v10;
    v6 += 7;
  }

  while (v9 < 0);
  v11 = -(v10 & 1) ^ (v10 >> 1);
  *a2 = v11;
  v12 = *(a1 + 44);
  v13 = v12 - a3;
  if (v12 > a3 && v13 <= 0x12)
  {
    v14 = qword_24398CA50[v13] * v11;
LABEL_9:
    *a2 = v14;
    return result;
  }

  if (v12 < a3 && (a3 - v12) <= 0x12)
  {
    v14 = v11 / qword_24398CA50[a3 - v12];
    goto LABEL_9;
  }

  if (v12 != a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(exception, "Decimal scale out of range");
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  return result;
}

uint64_t sub_2438CAB40(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3;
  v5 = result;
  if (a2 <= a3)
  {
    if (a2 < a3)
    {
      v12 = 0;
      v13 = 0;
      do
      {
        if (v3 - a2 >= 0x12)
        {
          v8 = 18;
        }

        else
        {
          v8 = v3 - a2;
        }

        v9 = qword_24398CA50[v8];
        v11[0] = v9 >> 63;
        v11[1] = v9;
        result = sub_2438DD194(v5, v11, &v12);
        *v5 = result;
        v5[1] = v10;
        v3 -= v8;
      }

      while (v3 > a2);
    }
  }

  else
  {
    do
    {
      if (a2 - v3 >= 0x12)
      {
        v6 = 18;
      }

      else
      {
        v6 = a2 - v3;
      }

      v7 = qword_24398CA50[v6];
      v12 = v7 >> 63;
      v13 = v7;
      result = sub_2438DCDC4(v5, &v12);
      v3 += v6;
    }

    while (v3 < a2);
  }

  return result;
}

uint64_t sub_2438CAC14(unint64_t *a1, void *a2)
{
  sub_2438C3C28(a1, a2);
  v4 = a1[4];
  v5 = sub_2438CB5A8(a2, a1 + 2);
  if (!v5 || ((*(*v4 + 48))(v4, v5 + 3), v6 = a1[8], (v7 = sub_2438CB5A8(a2, a1 + 2)) == 0))
  {
    sub_2438CB54C("unordered_map::at: key not found");
  }

  v8 = *(*v6 + 16);

  return v8(v6, v7 + 3);
}

void sub_2438CACE0(void *a1)
{
  v1 = sub_2438CA5B8(a1);

  operator delete(v1);
}

uint64_t sub_2438CAD08(uint64_t a1, char **a2, size_t a3, void *a4)
{
  v4 = a3;
  sub_2438C3B1C(a1, a2, a3, a4);
  if (*(a2 + 64))
  {
    v7 = a2[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = **a2;
  v9 = __dynamic_cast(a2, &unk_2856A2580, &unk_2856A2668, 0);
  if (!v9)
  {
    __cxa_bad_cast();
  }

  v10 = v9;
  v11 = *(v9 + 13);
  v12 = *(v9 + 18);
  result = (*(**(a1 + 64) + 32))(*(a1 + 64), v12, v4, v7);
  v10[10] = *(a1 + 40);
  if (v7)
  {
    for (; v4; --v4)
    {
      if (*v7++)
      {
        result = sub_2438CAE3C(a1, v11, *v12);
      }

      v12 += 2;
      v11 += 2;
    }
  }

  else
  {
    for (; v4; --v4)
    {
      v15 = *v12;
      v12 += 2;
      result = sub_2438CAE3C(a1, v11, v15);
      v11 += 2;
    }
  }

  return result;
}

uint64_t sub_2438CAE3C(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v6 = 0;
  *a2 = 0;
  a2[1] = 0;
  v7 = 64;
  do
  {
    sub_2438CA760(a1);
    v8 = *(a1 + 48);
    *(a1 + 48) = v8 + 1;
    LOBYTE(v8) = *v8;
    v9 = v8;
    v10 = v8 & 0x7F;
    v11 = v10 << v6;
    v12 = 0;
    if (v6 > 0x7F)
    {
      v11 = 0;
    }

    if (v6 <= 0x3F)
    {
      v12 = v10 << v6;
      v11 = v10 >> v7;
    }

    if (v6)
    {
      v10 = v12;
    }

    else
    {
      v11 = 0;
    }

    v13 = a2[1] | v10;
    v14 = *a2 | v11;
    *a2 = v14;
    a2[1] = v13;
    v6 += 7;
    v7 -= 7;
  }

  while (v9 < 0);
  *(&v16 + 1) = v14;
  *&v16 = v13;
  v15 = v16 >> 1;
  v17 = v14 >> 1;
  *a2 = v17;
  a2[1] = v15;
  if (v13)
  {
    *a2 = ~v17;
    a2[1] = ~v15;
  }

  v18 = *(a1 + 44);

  return sub_2438CAB40(a2, v18, a3);
}

uint64_t sub_2438CAF24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *sub_2438CA0D4(a1, a2, a3) = &unk_28569F540;
  *(a1 + 44) = (*(*a3 + 72))(a3);
  *(a1 + 72) = (*(*a3 + 64))(a3);
  *(a1 + 80) = (*(*a3 + 56))(a3);
  return a1;
}

void sub_2438CB008(void *a1)
{
  v1 = sub_2438CA5B8(a1);

  operator delete(v1);
}

uint64_t sub_2438CB030(uint64_t a1, char **a2, size_t a3, void *a4)
{
  v4 = a3;
  sub_2438C3B1C(a1, a2, a3, a4);
  if (*(a2 + 64))
  {
    v7 = a2[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = **a2;
  v9 = __dynamic_cast(a2, &unk_2856A2580, &unk_2856A2668, 0);
  if (!v9)
  {
    __cxa_bad_cast();
  }

  v10 = v9;
  v11 = *(v9 + 13);
  v12 = *(v9 + 18);
  result = (*(**(a1 + 64) + 32))(*(a1 + 64), v12, v4, v7);
  v10[10] = *(a1 + 40);
  if (v7)
  {
    for (; v4; --v4)
    {
      if (*v7)
      {
        result = sub_2438CB2A0(a1, v11, *v12);
        if ((result & 1) == 0)
        {
          if (*(a1 + 72) == 1)
          {
            goto LABEL_20;
          }

          v14 = sub_2438AA2A8(*(a1 + 80), "Warning: ", 9);
          v15 = sub_2438AA2A8(v14, "Hive 0.11 decimal with more than 38 digits ", 43);
          result = sub_2438AA2A8(v15, "replaced by NULL.\n", 18);
          *v7 = 0;
        }
      }

      v12 += 2;
      v11 += 2;
      ++v7;
    }
  }

  else if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      result = sub_2438CB2A0(a1, v11, *&v12[2 * i]);
      if ((result & 1) == 0)
      {
        if (*(a1 + 72) == 1)
        {
LABEL_20:
          exception = __cxa_allocate_exception(0x10uLL);
          sub_2438DCB60(exception, "Hive 0.11 decimal was more than 38 digits.");
          __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
        }

        v17 = sub_2438AA2A8(*(a1 + 80), "Warning: ", 9);
        v18 = sub_2438AA2A8(v17, "Hive 0.11 decimal with more than 38 digits ", 43);
        result = sub_2438AA2A8(v18, "replaced by NULL.\n", 18);
        *(v10 + 64) = 1;
        *(v10[5] + i) = 0;
      }

      v11 += 2;
    }
  }

  return result;
}

BOOL sub_2438CB2A0(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  if ((atomic_load_explicit(&qword_27ED96450, memory_order_acquire) & 1) == 0)
  {
    sub_2439896B4();
  }

  if ((atomic_load_explicit(&qword_27ED96468, memory_order_acquire) & 1) == 0)
  {
    sub_24398970C();
  }

  v6 = 0;
  *a2 = 0;
  a2[1] = 0;
  v7 = 1;
  v8 = 64;
  do
  {
    sub_2438CA760(a1);
    v9 = *(a1 + 48);
    *(a1 + 48) = v9 + 1;
    v10 = *v9;
    if (v6 > 0x80)
    {
      v7 = 0;
LABEL_8:
      v11 = 0;
      v12 = 0;
      goto LABEL_16;
    }

    v11 = v10 & 0x7F;
    if (v6)
    {
      if (v6 == 126)
      {
        v7 &= v11 < 4;
LABEL_12:
        v12 = v11 << v6;
        v11 = 0;
        goto LABEL_16;
      }

      if (v6 > 0x3F)
      {
        if (v6 == 128)
        {
          goto LABEL_8;
        }

        goto LABEL_12;
      }

      v12 = v11 >> v8;
      v11 <<= v6;
    }

    else
    {
      v12 = 0;
    }

LABEL_16:
    v13 = a2[1] | v11;
    v14 = *a2 | v12;
    *a2 = v14;
    a2[1] = v13;
    v6 += 7;
    v8 -= 7;
  }

  while (v10 < 0);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  *(&v16 + 1) = v14;
  *&v16 = v13;
  v15 = v16 >> 1;
  v17 = v14 >> 1;
  *a2 = v17;
  a2[1] = v15;
  if (v13)
  {
    *a2 = ~v17;
    a2[1] = ~v15;
  }

  sub_2438CAB40(a2, *(a1 + 44), a3);
  v18 = *a2;
  if (*a2 == xmmword_27ED96440)
  {
    if (a2[1] < *(&xmmword_27ED96440 + 1))
    {
      return 0;
    }

LABEL_27:
    if (v18 == xmmword_27ED96458)
    {
      return a2[1] <= *(&xmmword_27ED96458 + 1);
    }

    else
    {
      return v18 <= xmmword_27ED96458;
    }
  }

  else
  {
    if (*a2 >= xmmword_27ED96440)
    {
      goto LABEL_27;
    }

    return 0;
  }
}

uint64_t sub_2438CB474(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = (a1 + 56);
  if (v1 == *(a1 + 64))
  {
    v6 = 0;
    if (((*(**(a1 + 32) + 16))(*(a1 + 32), v2, &v6) & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_2438DCB60(exception, "bad read in DoubleColumnReader::next()");
      __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
    }

    v1 = *(a1 + 56);
    *(a1 + 64) = &v1[v6];
  }

  *v2 = v1 + 1;
  return *v1;
}

void sub_2438CB54C(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_2438CB65C(exception, a1);
  __cxa_throw(exception, off_278DDACB8, MEMORY[0x277D825F8]);
}

void *sub_2438CB5A8(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

std::logic_error *sub_2438CB65C(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void *sub_2438CB690(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_28569F6F0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  v6 = 0;
  sub_2438CB82C(&v6, 0);
  return a1;
}

void sub_2438CB704(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2438CB82C(va, 0);
  _Unwind_Resume(a1);
}

void sub_2438CB720(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_2438CB750(uint64_t a1, uint64_t a2)
{
  if (sub_2438CB7D8(a2, &unk_28569F740))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_2438CB790(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_2438DF670(a2 + 40);
    v3 = sub_2438DF490(a2);

    operator delete(v3);
  }
}

BOOL sub_2438CB7D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void sub_2438CB82C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    sub_2438DF670(v2 + 40);
    v3 = sub_2438DF490(v2);

    operator delete(v3);
  }
}

void sub_2438CB880(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_2438CB8EC(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      sub_243980874();
    }

    v8 = v6 >> 3;
    v9 = v4 - *a1;
    if (v9 >> 2 > v7)
    {
      v7 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    if (v10)
    {
      v11 = sub_2438C1ECC(a1, v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = &v11[8 * v8];
    v13 = &v11[8 * v10];
    bzero(v12, 8 * a2);
    v14 = &v12[8 * a2];
    v15 = *(a1 + 8) - *a1;
    v16 = &v12[-v15];
    memcpy(&v12[-v15], *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v14;
    *(a1 + 16) = v13;
    if (v17)
    {

      operator delete(v17);
    }
  }
}

void sub_2438CBA00(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      sub_243980874();
    }

    v9 = v7 >> 3;
    v10 = v4 - v6;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      v12 = sub_2438C1ECC(a1, v11);
      v6 = *a1;
      v7 = *(a1 + 8) - *a1;
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v9];
    v14 = &v12[8 * v11];
    bzero(v13, 8 * a2);
    memcpy(&v13[-8 * (v7 >> 3)], v6, v7);
    v15 = *a1;
    *a1 = &v13[-8 * (v7 >> 3)];
    *(a1 + 8) = &v13[8 * a2];
    *(a1 + 16) = v14;
    if (v15)
    {

      operator delete(v15);
    }
  }
}

uint64_t sub_2438CBB3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_2438FF8E0(*(a1 + 8));
  v5 = *(a1 + 16);
  v6 = sub_2438FF8EC(*(a1 + 8));
  v7 = sub_2438FF800(*(a1 + 8));
  v8 = sub_2438FF7E8(*(a1 + 8));
  v9 = sub_2438FF90C(*(a1 + 8));

  return sub_2438DB3C8(v4, v5, v6, v7, v8, v9, a2);
}

void *sub_2438CBBDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = operator new(0x18uLL);
  *result = &unk_28569FF98;
  result[1] = a1;
  result[2] = a2;
  *a3 = result;
  return result;
}

void sub_2438CBC3C(uint64_t a1)
{
  v1 = nullsub_1(a1);

  operator delete(v1);
}

uint64_t sub_2438CBC64(uint64_t result)
{
  if (result)
  {
    if (result != 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_2438DCBF8(exception, "Invalid param");
      __cxa_throw(exception, &unk_2856A0988, std::runtime_error::~runtime_error);
    }

    return 2;
  }

  return result;
}

uint64_t sub_2438CBCDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_28569F768;
  *(a1 + 8) = 0;
  v8 = (*(*a2 + 16))(a2);
  *(a1 + 24) = 0;
  v9 = (a1 + 24);
  *(a1 + 16) = v8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v10 = sub_2438FF918(a4);
  *(a1 + 56) = 0;
  v11 = (a1 + 56);
  *(a1 + 48) = v10;
  *(a1 + 88) = 0;
  v12 = (a1 + 88);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  v13 = sub_2438FF90C(a4);
  *(a1 + 112) = 0;
  v14 = (a1 + 112);
  *(a1 + 104) = v13;
  *(a1 + 120) = 0;
  (*(*a3 + 16))(&v52, a3, 0);
  v15 = v52;
  v52 = 0;
  v50 = v15;
  sub_2438C28A4(&v50, &v51);
  v16 = v51;
  v51 = 0;
  v17 = *(a1 + 8);
  *(a1 + 8) = v16;
  if (v17)
  {
    (*(*v17 + 8))(v17);
    v18 = v51;
    v51 = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }
  }

  v19 = v50;
  v50 = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  sub_2438EDC70(a2, &v51);
  v20 = v51;
  v51 = 0;
  v21 = *v9;
  *v9 = v20;
  if (v21)
  {
    (*(*v21 + 8))(v21);
    v22 = v51;
    v51 = 0;
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }
  }

  sub_2438EDC70(a2, &v51);
  v23 = v51;
  v51 = 0;
  v24 = *(a1 + 32);
  *(a1 + 32) = v23;
  if (v24)
  {
    (*(*v24 + 8))(v24);
    v25 = v51;
    v51 = 0;
    if (v25)
    {
      (*(*v25 + 8))(v25);
    }
  }

  sub_2438EDC70(a2, &v51);
  v26 = v51;
  v51 = 0;
  v27 = *(a1 + 40);
  *(a1 + 40) = v26;
  if (v27)
  {
    (*(*v27 + 8))(v27);
    v28 = v51;
    v51 = 0;
    if (v28)
    {
      (*(*v28 + 8))(v28);
    }
  }

  if (*(a1 + 48) == 1)
  {
    v29 = operator new(0x30uLL);
    sub_2438B1FEC(v29);
    v30 = *v11;
    *v11 = v29;
    if (v30)
    {
      (*(*v30 + 8))(v30);
    }

    v31 = operator new(0x38uLL);
    sub_2438B1748(v31);
    v32 = *(a1 + 64);
    *(a1 + 64) = v31;
    if (v32)
    {
      (*(*v32 + 8))(v32);
    }

    v33 = operator new(0x10uLL);
    v34 = *(a1 + 64);
    *v33 = &unk_28569FF48;
    v33[1] = v34;
    v35 = *(a1 + 72);
    *(a1 + 72) = v33;
    if (v35)
    {
      (*(*v35 + 8))(v35);
    }

    (*(*a3 + 16))(&v51, a3, 6);
    v36 = v51;
    v51 = 0;
    v37 = *v14;
    *v14 = v36;
    if (v37)
    {
      (*(*v37 + 8))(v37);
      v38 = v51;
      v51 = 0;
      if (v38)
      {
        (*(*v38 + 8))(v38);
      }
    }

    if (sub_2438FF938(a4, *(a1 + 16)) && sub_2438FF990(a4) == 1)
    {
      *(a1 + 80) = 1;
      v39 = operator new(0x20uLL);
      v40 = sub_2438FF824(a4);
      v41 = sub_2438FF984(a4);
      sub_2438C1630(v39, v40, v41);
      v42 = *v12;
      *v12 = v39;
      if (v42)
      {
        (*(*v42 + 8))(v42);
      }

      v43 = operator new(0x30uLL);
      sub_2438B2F94(v43);
      v44 = *(a1 + 96);
      *(a1 + 96) = v43;
      if (v44)
      {
        (*(*v44 + 8))(v44);
      }

      (*(*a3 + 16))(&v51, a3, 8);
      v45 = v51;
      v51 = 0;
      v46 = *(a1 + 120);
      *(a1 + 120) = v45;
      if (v46)
      {
        (*(*v46 + 8))(v46);
        v47 = v51;
        v51 = 0;
        if (v47)
        {
          (*(*v47 + 8))(v47);
        }
      }
    }
  }

  v48 = v52;
  v52 = 0;
  if (v48)
  {
    (*(*v48 + 8))(v48);
  }

  return a1;
}

void sub_2438CC310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  v18 = v12[15];
  v12[15] = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *v16;
  *v16 = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = v12[12];
  v12[12] = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = *v15;
  *v15 = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v22 = v12[9];
  v12[9] = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  v23 = v12[8];
  v12[8] = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  v24 = *v14;
  *v14 = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  v25 = v12[5];
  v12[5] = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  v26 = v12[4];
  v12[4] = 0;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  v27 = *v13;
  *v13 = 0;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  v28 = v12[1];
  v12[1] = 0;
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  _Unwind_Resume(exception_object);
}

void sub_2438CC5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    sub_243989764(a10);
  }

  JUMPOUT(0x2438CC358);
}

void *sub_2438CC5D8(void *a1)
{
  *a1 = &unk_28569F768;
  v2 = a1[15];
  a1[15] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[14];
  a1[14] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[12];
  a1[12] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[11];
  a1[11] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = a1[9];
  a1[9] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = a1[8];
  a1[8] = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = a1[7];
  a1[7] = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = a1[5];
  a1[5] = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = a1[4];
  a1[4] = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = a1[3];
  a1[3] = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = a1[1];
  a1[1] = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  return a1;
}

void *sub_2438CC868(uint64_t a1, uint64_t *a2)
{
  sub_2438B3548(v8);
  v9 |= 3u;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v10 = 0;
  v11 = v5;
  v6 = (*(*v4 + 32))(v4);
  v9 |= 4u;
  v12 = v6;
  sub_2438CC90C(a2, v8);
  return sub_2438B35DC(v8);
}

void sub_2438CC8F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2438B35DC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438CC90C(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_2438D828C(a1, a2);
  }

  else
  {
    sub_2438B35D8(a1[1], a2);
    result = v3 + 40;
    a1[1] = v3 + 40;
  }

  a1[1] = result;
  return result;
}

void *sub_2438CC990(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_2438B00B4(v6);
  (*(*a3 + 56))(a3, v6);
  sub_2438D770C(a2, v6);
  return sub_2438B050C(v6);
}

void sub_2438CCA04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2438B050C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438CCA18(uint64_t a1)
{
  (*(**(a1 + 40) + 40))(*(a1 + 40), *(a1 + 32));
  v2 = *(**(a1 + 32) + 48);

  return v2();
}

uint64_t sub_2438CCA98(uint64_t a1)
{
  (*(**(a1 + 32) + 40))(*(a1 + 32), *(a1 + 24));
  v2 = *(**(a1 + 24) + 48);

  return v2();
}

uint64_t sub_2438CCB20(uint64_t a1)
{
  v2 = *(a1 + 64);
  *(v2 + 16) |= 1u;
  v3 = *(v2 + 48);
  if (!v3)
  {
    v3 = sub_2438BE8AC(0);
    *(v2 + 48) = v3;
  }

  (*(**(a1 + 24) + 56))(*(a1 + 24), v3);
  v5 = *(a1 + 56);
  v4 = *(a1 + 64);
  v6 = *(v5 + 40);
  if (!v6)
  {
    v8 = *(v5 + 36);
LABEL_8:
    sub_243967234(v5 + 24, v8 + 1);
    v6 = *(v5 + 40);
    v8 = *v6;
    goto LABEL_9;
  }

  v7 = *(v5 + 32);
  v8 = *v6;
  if (v7 < *v6)
  {
    *(v5 + 32) = v7 + 1;
    v9 = *&v6[2 * v7 + 2];
    goto LABEL_10;
  }

  if (v8 == *(v5 + 36))
  {
    goto LABEL_8;
  }

LABEL_9:
  *v6 = v8 + 1;
  v9 = sub_2438BE940(*(v5 + 24));
  v10 = *(v5 + 32);
  v11 = *(v5 + 40) + 8 * v10;
  *(v5 + 32) = v10 + 1;
  *(v11 + 8) = v9;
LABEL_10:
  sub_2438B1EE8(v9, v4);
  v12 = *(a1 + 64);
  *(v12 + 24) = 0;
  v13 = *(v12 + 48);
  if (v13)
  {
    sub_2438B0538(v13);
  }

  *(v12 + 16) &= ~1u;
  (*(**(a1 + 32) + 40))(*(a1 + 32), *(a1 + 24));
  (*(**(a1 + 24) + 48))(*(a1 + 24));
  (*(*a1 + 88))(a1);
  v14 = *(*a1 + 104);

  return v14(a1);
}

void sub_2438CCCEC(uint64_t a1)
{
  if (*(a1 + 80) != 1)
  {
    return;
  }

  v3 = *(a1 + 88);
  v4 = *(a1 + 96);
  v5 = *(v4 + 40);
  if (!v5)
  {
    v7 = *(v4 + 36);
    goto LABEL_8;
  }

  v6 = *(v4 + 32);
  v7 = *v5;
  if (v6 >= *v5)
  {
    if (v7 != *(v4 + 36))
    {
LABEL_9:
      *v5 = v7 + 1;
      v8 = sub_2438BEA68(*(v4 + 24));
      v9 = *(v4 + 32);
      v10 = *(v4 + 40) + 8 * v9;
      *(v4 + 32) = v9 + 1;
      *(v10 + 8) = v8;
      goto LABEL_10;
    }

LABEL_8:
    sub_243967234(v4 + 24, v7 + 1);
    v5 = *(v4 + 40);
    v7 = *v5;
    goto LABEL_9;
  }

  *(v4 + 32) = v6 + 1;
  v8 = *&v5[2 * v6 + 2];
LABEL_10:
  sub_2438C19C4(v3, v8);
  v11 = *(a1 + 88);

  sub_2438C19B4(v11);
}

void *sub_2438CCDC4(uint64_t a1, uint64_t *a2)
{
  sub_243966D94(*(a1 + 56), *(a1 + 112));
  sub_2438B3548(v10);
  v4 = *(a1 + 16);
  v12 = 6;
  v13 = v4;
  v11 |= 3u;
  v5 = (*(**(a1 + 112) + 72))(*(a1 + 112));
  v11 |= 4u;
  v14 = v5;
  sub_2438CC90C(a2, v10);
  if (*(a1 + 80) == 1)
  {
    if ((sub_243966D94(*(a1 + 96), *(a1 + 120)) & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Failed to write bloom filter stream.");
      __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
    }

    v6 = *(a1 + 16);
    v12 = 8;
    v13 = v6;
    v11 |= 3u;
    v7 = (*(**(a1 + 120) + 72))(*(a1 + 120));
    v11 |= 4u;
    v14 = v7;
    sub_2438CC90C(a2, v10);
  }

  return sub_2438B35DC(v10);
}

void sub_2438CCF1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  __cxa_free_exception(v10);
  sub_2438B35DC(&a10);
  _Unwind_Resume(a1);
}

void sub_2438CCF70(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 56);
    v3 = *(v2 + 32);
    if (v3 >= 1)
    {
      v4 = (*(v2 + 40) + 8);
      do
      {
        v5 = *v4++;
        sub_2438B181C(v5);
        --v3;
      }

      while (v3);
      *(v2 + 32) = 0;
    }

    v6 = *(a1 + 64);
    *(v6 + 24) = 0;
    v7 = *(v6 + 48);
    if (v7)
    {
      sub_2438B0538(v7);
    }

    *(v6 + 16) &= ~1u;
    (*(*a1 + 104))(a1);
  }

  if (*(a1 + 80) == 1)
  {
    sub_2438C19B4(*(a1 + 88));
    v8 = *(a1 + 96);
    v9 = *(v8 + 32);
    if (v9 >= 1)
    {
      v10 = (*(v8 + 40) + 8);
      do
      {
        v11 = *v10++;
        sub_2438B2708(v11);
        --v9;
      }

      while (v9);
      *(v8 + 32) = 0;
    }
  }
}

_BYTE *sub_2438CD05C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2438CBCDC(a1, a2, a3, a4);
  v9 = 0;
  *v8 = &unk_28569F7F8;
  v8[16] = 0;
  v10 = (v8 + 16);
  v8[17] = 0;
  v8[18] = 0;
  while ((*(*a2 + 40))(a2) > v9)
  {
    v11 = (*(*a2 + 48))(a2, v9);
    sub_2438CD1C4(&v13, v11, a3, a4);
    v14 = v13;
    sub_2439780F8(v10, &v14);
    ++v9;
  }

  if (a1[48])
  {
    (*(*a1 + 104))(a1);
  }

  return a1;
}

void sub_2438CD190(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[17] = v4;
    operator delete(v4);
  }

  sub_2438CC5D8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2438CD1C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  switch((*(*a1 + 32))(a1))
  {
    case 0u:
      v8 = operator new(0x88uLL);
      result = sub_2438CEED4(v8, a1, a2, a3);
      goto LABEL_22;
    case 1u:
      v8 = operator new(0x88uLL);
      result = sub_2438CE79C(v8, a1, a2, a3);
      goto LABEL_22;
    case 2u:
    case 3u:
    case 4u:
      v8 = operator new(0x90uLL);
      result = sub_2438CE03C(v8, a1, a2, a3);
      goto LABEL_22;
    case 5u:
      v8 = operator new(0xB8uLL);
      result = sub_2438CF610(v8, a1, a2, a3, 1);
      goto LABEL_22;
    case 6u:
      v8 = operator new(0xB8uLL);
      result = sub_2438CF610(v8, a1, a2, a3, 0);
      goto LABEL_22;
    case 7u:
      v8 = operator new(0x138uLL);
      result = sub_2438D0118(v8, a1, a2, a3);
      goto LABEL_22;
    case 8u:
      v8 = operator new(0x138uLL);
      result = sub_2438D0118(v8, a1, a2, a3);
      v10 = &unk_2856A01C8;
      goto LABEL_21;
    case 9u:
      v8 = operator new(0xA0uLL);
      result = sub_2438D2374(v8, a1, a2, a3);
      goto LABEL_22;
    case 0xAu:
      v8 = operator new(0x98uLL);
      result = sub_2438D40AC(v8, a1, a2, a3);
      goto LABEL_22;
    case 0xBu:
      v8 = operator new(0xA0uLL);
      result = sub_2438D4E6C(v8, a1, a2, a3);
      goto LABEL_22;
    case 0xCu:
      v8 = operator new(0x98uLL);
      result = sub_2438CD05C(v8, a1, a2, a3);
      goto LABEL_22;
    case 0xDu:
      v8 = operator new(0xA0uLL);
      result = sub_2438D5FA8(v8, a1, a2, a3);
      goto LABEL_22;
    case 0xEu:
      if ((*(*a1 + 72))(a1) > 0x12)
      {
        if ((*(*a1 + 72))(a1) > 0x26)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          sub_2438DCACC(exception, "Decimal precision more than 38 is not supported");
LABEL_25:
          __cxa_throw(exception, &unk_2856A0958, std::logic_error::~logic_error);
        }

        v8 = operator new(0xC8uLL);
        result = sub_2438D324C(v8, a1, a2, a3);
        v10 = &unk_28569FD08;
LABEL_21:
        *v8 = v10;
      }

      else
      {
        v8 = operator new(0xB8uLL);
        result = sub_2438D324C(v8, a1, a2, a3);
      }

LABEL_22:
      *a4 = v8;
      return result;
    case 0xFu:
      v8 = operator new(0x90uLL);
      result = sub_2438CE03C(v8, a1, a2, a3);
      v10 = &unk_28569FBE8;
      goto LABEL_21;
    case 0x10u:
      v8 = operator new(0x140uLL);
      result = sub_2438D8204(v8, a1, a2, a3);
      goto LABEL_22;
    case 0x11u:
      v8 = operator new(0x168uLL);
      result = sub_2438D7FF4(v8, a1, a2, a3);
      goto LABEL_22;
    default:
      exception = __cxa_allocate_exception(0x10uLL);
      sub_2438DCACC(exception, "Type is not supported yet for creating ColumnWriter.");
      goto LABEL_25;
  }
}

void *sub_2438CD5E0(void *a1)
{
  *a1 = &unk_28569F7F8;
  v4 = a1 + 16;
  v2 = a1[16];
  v3 = v4[1];
  if (v3 != v2)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = v2[v5];
      if (v7)
      {
        (*(*v7 + 8))(v7);
        v2 = a1[16];
        v3 = a1[17];
      }

      v5 = v6++;
    }

    while (v5 < (v3 - v2) >> 3);
  }

  if (v2)
  {
    a1[17] = v2;
    operator delete(v2);
  }

  return sub_2438CC5D8(a1);
}

void sub_2438CD69C(void *a1)
{
  v1 = sub_2438CD5E0(a1);

  operator delete(v1);
}

uint64_t sub_2438CD6C4(uint64_t a1, char **lpsrc, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = **lpsrc;
  v11 = __dynamic_cast(lpsrc, &unk_2856A2580, &unk_2856A25F0, 0);
  if (!v11)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCBF8(exception, "Failed to cast to StructVectorBatch");
    __cxa_throw(exception, &unk_2856A0988, std::runtime_error::~runtime_error);
  }

  v12 = v11;
  (*(**(a1 + 8) + 16))(*(a1 + 8), &lpsrc[5][a3], a4, a5);
  if (*(v12 + 64) == 1)
  {
    v13 = (v12[5] + a3);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a1 + 128);
  if (*(a1 + 136) != v14)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      (*(**(v14 + 8 * v15) + 16))(*(v14 + 8 * v15), *(v12[10] + 8 * v15), a3, a4, v13);
      v15 = v16;
      v14 = *(a1 + 128);
      ++v16;
    }

    while (v15 < (*(a1 + 136) - v14) >> 3);
  }

  if (!v13)
  {
    v21 = *(**(a1 + 24) + 16);

    return v21();
  }

  v17 = 0;
  if (a4)
  {
    v18 = a4;
    do
    {
      if (*v13++)
      {
        ++v17;
      }

      --v18;
    }

    while (v18);
  }

  result = (*(**(a1 + 24) + 16))(*(a1 + 24), v17);
  if (v17 < a4)
  {
    v21 = *(**(a1 + 24) + 32);

    return v21();
  }

  return result;
}

void *sub_2438CD948(uint64_t a1, uint64_t *a2)
{
  result = sub_2438CC868(a1, a2);
  v5 = *(a1 + 128);
  if (*(a1 + 136) != v5)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      result = (*(**(v5 + 8 * v6) + 24))(*(v5 + 8 * v6), a2);
      v6 = v7;
      v5 = *(a1 + 128);
      ++v7;
    }

    while (v6 < (*(a1 + 136) - v5) >> 3);
  }

  return result;
}

void *sub_2438CD9D0(uint64_t a1, uint64_t *a2)
{
  result = sub_2438CCDC4(a1, a2);
  v5 = *(a1 + 128);
  if (*(a1 + 136) != v5)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      result = (*(**(v5 + 8 * v6) + 96))(*(v5 + 8 * v6), a2);
      v6 = v7;
      v5 = *(a1 + 128);
      ++v7;
    }

    while (v6 < (*(a1 + 136) - v5) >> 3);
  }

  return result;
}

uint64_t sub_2438CDA58(uint64_t a1)
{
  v2 = (*(**(a1 + 8) + 24))(*(a1 + 8));
  v3 = *(a1 + 128);
  if (*(a1 + 136) != v3)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v2 += (*(**(v3 + 8 * v4) + 32))(*(v3 + 8 * v4));
      v4 = v5;
      v3 = *(a1 + 128);
      ++v5;
    }

    while (v4 < (*(a1 + 136) - v3) >> 3);
  }

  return v2;
}

void *sub_2438CDB08(uint64_t a1, uint64_t *a2)
{
  sub_2438B3D7C(v8);
  v10 = 0;
  v9 |= 3u;
  sub_2438CDBD8(a2, v8);
  v4 = *(a1 + 128);
  if (*(a1 + 136) != v4)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      (*(**(v4 + 8 * v5) + 40))(*(v4 + 8 * v5), a2);
      v5 = v6;
      v4 = *(a1 + 128);
      ++v6;
    }

    while (v5 < (*(a1 + 136) - v4) >> 3);
  }

  return sub_2438B3E18(v8);
}

void sub_2438CDBC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2438B3E18(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438CDBD8(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_2438D8558(a1, a2);
  }

  else
  {
    sub_2438B3E14(a1[1], a2);
    result = v3 + 40;
    a1[1] = v3 + 40;
  }

  a1[1] = result;
  return result;
}

void *sub_2438CDC2C(uint64_t *a1, uint64_t *a2)
{
  result = sub_2438CC990(a1, a2, a1[4]);
  v5 = a1[16];
  if (a1[17] != v5)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      result = (*(**(v5 + 8 * v6) + 48))(*(v5 + 8 * v6), a2);
      v6 = v7;
      v5 = a1[16];
      ++v7;
    }

    while (v6 < (a1[17] - v5) >> 3);
  }

  return result;
}

uint64_t sub_2438CDCB8(uint64_t a1)
{
  (*(**(a1 + 40) + 40))(*(a1 + 40), *(a1 + 32));
  result = (*(**(a1 + 32) + 48))(*(a1 + 32));
  v3 = *(a1 + 128);
  if (*(a1 + 136) != v3)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      result = (*(**(v3 + 8 * v4) + 72))(*(v3 + 8 * v4));
      v4 = v5;
      v3 = *(a1 + 128);
      ++v5;
    }

    while (v4 < (*(a1 + 136) - v3) >> 3);
  }

  return result;
}

void *sub_2438CDD80(uint64_t *a1, uint64_t *a2)
{
  result = sub_2438CC990(a1, a2, a1[5]);
  v5 = a1[16];
  if (a1[17] != v5)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      result = (*(**(v5 + 8 * v6) + 56))(*(v5 + 8 * v6), a2);
      v6 = v7;
      v5 = a1[16];
      ++v7;
    }

    while (v6 < (a1[17] - v5) >> 3);
  }

  return result;
}

uint64_t sub_2438CDE0C(uint64_t a1)
{
  (*(**(a1 + 32) + 40))(*(a1 + 32), *(a1 + 24));
  result = (*(**(a1 + 24) + 48))(*(a1 + 24));
  v3 = *(a1 + 128);
  if (*(a1 + 136) != v3)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      result = (*(**(v3 + 8 * v4) + 64))(*(v3 + 8 * v4));
      v4 = v5;
      v3 = *(a1 + 128);
      ++v5;
    }

    while (v4 < (*(a1 + 136) - v3) >> 3);
  }

  return result;
}

uint64_t sub_2438CDED4(uint64_t a1)
{
  result = sub_2438CCB20(a1);
  v3 = *(a1 + 128);
  if (*(a1 + 136) != v3)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      result = (*(**(v3 + 8 * v4) + 80))(*(v3 + 8 * v4));
      v4 = v5;
      v3 = *(a1 + 128);
      ++v5;
    }

    while (v4 < (*(a1 + 136) - v3) >> 3);
  }

  return result;
}

void sub_2438CDF4C(uint64_t a1)
{
  sub_2438CCF70(a1);
  v2 = *(a1 + 128);
  if (*(a1 + 136) != v2)
  {
    v3 = 0;
    v4 = 1;
    do
    {
      (*(**(v2 + 8 * v3) + 112))(*(v2 + 8 * v3));
      v3 = v4;
      v2 = *(a1 + 128);
      ++v4;
    }

    while (v3 < (*(a1 + 136) - v2) >> 3);
  }
}

uint64_t sub_2438CDFC4(uint64_t result)
{
  v1 = *(result + 128);
  if (*(result + 136) != v1)
  {
    v2 = result;
    v3 = 0;
    v4 = 1;
    do
    {
      result = (*(**(v1 + 8 * v3) + 120))(*(v1 + 8 * v3));
      v3 = v4;
      v1 = *(v2 + 128);
      ++v4;
    }

    while (v3 < (*(v2 + 136) - v1) >> 3);
  }

  return result;
}

uint64_t sub_2438CE03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v7 = sub_2438CBCDC(a1, a2, a3, a4);
  *v7 = &unk_28569F888;
  v7[16] = 0;
  *(a1 + 136) = sub_2438FF784(a4);
  (*(*v5 + 16))(&v19, v5, 1);
  v8 = v19;
  v19 = 0;
  v17 = v8;
  LODWORD(v5) = *(a1 + 136);
  v9 = *(a1 + 104);
  v10 = sub_2438FF8F8(a4);
  sub_2438EBFF0(&v17, 1, v5, v10, &v18);
  v11 = v18;
  v18 = 0;
  v12 = *(a1 + 128);
  *(a1 + 128) = v11;
  if (v12)
  {
    (*(*v12 + 8))(v12);
    v13 = v18;
    v18 = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }
  }

  v14 = v17;
  v17 = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  if (*(a1 + 48) == 1)
  {
    (*(*a1 + 104))(a1);
  }

  v15 = v19;
  v19 = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  return a1;
}

void sub_2438CE20C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  v14 = v12[16];
  v12[16] = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  sub_2438CC5D8(v12);
  _Unwind_Resume(a1);
}

uint64_t sub_2438CE2A4(uint64_t a1, char **lpsrc, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = **lpsrc;
  v11 = __dynamic_cast(lpsrc, &unk_2856A2580, &unk_2856A2590, 0);
  if (!v11)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCBF8(exception, "Failed to cast to LongVectorBatch");
LABEL_22:
    __cxa_throw(exception, &unk_2856A0988, std::runtime_error::~runtime_error);
  }

  v12 = v11;
  v13 = *(a1 + 24);
  if (!v13 || (v14 = **v13, (v15 = __dynamic_cast(v13, &unk_2856A1998, &unk_2856A1B88, 8)) == 0))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCBF8(exception, "Failed to cast to IntegerColumnStatisticsImpl");
    goto LABEL_22;
  }

  v16 = v15;
  (*(**(a1 + 8) + 16))(*(a1 + 8), &lpsrc[5][a3], a4, a5);
  v17 = (v12[12] + 8 * a3);
  if (*(v12 + 64) == 1)
  {
    v18 = (v12[5] + a3);
  }

  else
  {
    v18 = 0;
  }

  (*(**(a1 + 128) + 16))(*(a1 + 128), v17, a4, v18);
  v19 = 0;
  if (a4)
  {
    v20 = a4;
    v21 = v18;
    do
    {
      if (!v18 || *v21)
      {
        if (*(a1 + 80) == 1)
        {
          sub_2438C16E8(*(a1 + 88), *v17);
        }

        ++v19;
        sub_2438ED160(v16, *v17, 1);
      }

      ++v21;
      ++v17;
      --v20;
    }

    while (v20);
  }

  result = (*(*v16 + 88))(v16, v19);
  if (v19 < a4)
  {
    v23 = *(*v16 + 104);

    return v23(v16, 1);
  }

  return result;
}