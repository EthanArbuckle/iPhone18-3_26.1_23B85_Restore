BOOL sub_314160(int **a1)
{
  v1 = *a1;
  v2 = (*a1 - **a1);
  v3 = *v2;
  if (*(a1 + 38))
  {
    if (v3 < 0x47)
    {
      if (v3 <= 0x38)
      {
        return 0;
      }
    }

    else if (v2[35] && (v1[v2[35]] & 2) != 0)
    {
      if (v3 >= 0x59)
      {
        v4 = v2[44];
        if (v4)
        {
          return (*&v1[v4] & 4) != 0;
        }
      }

      return 0;
    }

    if (v2[28])
    {
      if ((*&v1[v2[28]] & 2) == 0)
      {
        result = 0;
        v7 = (*&v1[v2[28]] & 0x21) == 0x20 || (*&v1[v2[28]] & 5) == 4;
        if (!v7 || v3 <= 0x50)
        {
          return result;
        }

LABEL_35:
        v9 = v2[40];
        if (v9)
        {
          return (*&v1[v9] & 4) != 0;
        }

        return 0;
      }

      if (v3 >= 0x51)
      {
        goto LABEL_35;
      }
    }

    return 0;
  }

  if (v3 < 0x47)
  {
    if (v3 <= 0x38)
    {
      return 0;
    }
  }

  else if (v2[35] && (v1[v2[35]] & 1) != 0)
  {
    if (v3 < 0x59)
    {
      return 0;
    }

    v6 = v2[44];
    if (!v6)
    {
      return 0;
    }

    return (*&v1[v6] & 0x40) != 0;
  }

  if (!v2[28])
  {
    return 0;
  }

  if (*&v1[v2[28]])
  {
    if (v3 < 0x51)
    {
      return 0;
    }

    goto LABEL_38;
  }

  result = 0;
  v8 = (*&v1[v2[28]] & 0x22) == 0x20 || (*&v1[v2[28]] & 6) == 4;
  if (v8 && v3 > 0x50)
  {
LABEL_38:
    v6 = v2[40];
    if (!v6)
    {
      return 0;
    }

    return (*&v1[v6] & 0x40) != 0;
  }

  return result;
}

BOOL sub_3142B0(int **a1)
{
  v1 = *a1;
  v2 = (*a1 - **a1);
  v3 = *v2;
  if (*(a1 + 38))
  {
    if (v3 < 0x47)
    {
      if (v3 <= 0x38)
      {
        return 0;
      }
    }

    else if (v2[35] && (v1[v2[35]] & 2) != 0)
    {
      if (v3 >= 0x59)
      {
        v4 = v2[44];
        if (v4)
        {
          return (*&v1[v4] & 0x20) != 0;
        }
      }

      return 0;
    }

    if (v2[28])
    {
      if ((*&v1[v2[28]] & 2) == 0)
      {
        result = 0;
        v7 = (*&v1[v2[28]] & 0x21) == 0x20 || (*&v1[v2[28]] & 5) == 4;
        if (!v7 || v3 <= 0x50)
        {
          return result;
        }

LABEL_35:
        v9 = v2[40];
        if (v9)
        {
          return (*&v1[v9] & 0x20) != 0;
        }

        return 0;
      }

      if (v3 >= 0x51)
      {
        goto LABEL_35;
      }
    }

    return 0;
  }

  if (v3 < 0x47)
  {
    if (v3 <= 0x38)
    {
      return 0;
    }
  }

  else if (v2[35] && (v1[v2[35]] & 1) != 0)
  {
    if (v3 < 0x59)
    {
      return 0;
    }

    v6 = v2[44];
    if (!v6)
    {
      return 0;
    }

    return (*&v1[v6] & 2) != 0;
  }

  if (!v2[28])
  {
    return 0;
  }

  if (*&v1[v2[28]])
  {
    if (v3 < 0x51)
    {
      return 0;
    }

    goto LABEL_38;
  }

  result = 0;
  v8 = (*&v1[v2[28]] & 0x22) == 0x20 || (*&v1[v2[28]] & 6) == 4;
  if (v8 && v3 > 0x50)
  {
LABEL_38:
    v6 = v2[40];
    if (!v6)
    {
      return 0;
    }

    return (*&v1[v6] & 2) != 0;
  }

  return result;
}

BOOL sub_314400(int **a1)
{
  v1 = *a1;
  v2 = (*a1 - **a1);
  v3 = *v2;
  if (*(a1 + 38))
  {
    if (v3 < 0x47)
    {
      if (v3 <= 0x38)
      {
        return 0;
      }
    }

    else if (v2[35] && (v1[v2[35]] & 2) != 0)
    {
      if (v3 >= 0x59)
      {
        v4 = v2[44];
        if (v4)
        {
          return (*&v1[v4] & 8) != 0;
        }
      }

      return 0;
    }

    if (v2[28])
    {
      if ((*&v1[v2[28]] & 2) == 0)
      {
        result = 0;
        v7 = (*&v1[v2[28]] & 0x21) == 0x20 || (*&v1[v2[28]] & 5) == 4;
        if (!v7 || v3 <= 0x50)
        {
          return result;
        }

LABEL_35:
        v9 = v2[40];
        if (v9)
        {
          return (*&v1[v9] & 8) != 0;
        }

        return 0;
      }

      if (v3 >= 0x51)
      {
        goto LABEL_35;
      }
    }

    return 0;
  }

  if (v3 < 0x47)
  {
    if (v3 <= 0x38)
    {
      return 0;
    }
  }

  else if (v2[35] && (v1[v2[35]] & 1) != 0)
  {
    if (v3 < 0x59)
    {
      return 0;
    }

    v6 = v2[44];
    if (!v6)
    {
      return 0;
    }

    return (*&v1[v6] & 0x80) != 0;
  }

  if (!v2[28])
  {
    return 0;
  }

  if (*&v1[v2[28]])
  {
    if (v3 < 0x51)
    {
      return 0;
    }

    goto LABEL_38;
  }

  result = 0;
  v8 = (*&v1[v2[28]] & 0x22) == 0x20 || (*&v1[v2[28]] & 6) == 4;
  if (v8 && v3 > 0x50)
  {
LABEL_38:
    v6 = v2[40];
    if (!v6)
    {
      return 0;
    }

    return (*&v1[v6] & 0x80) != 0;
  }

  return result;
}

double sub_314550(int **a1)
{
  v1 = 3;
  if (!*(a1 + 38))
  {
    v1 = 2;
  }

  v2 = a1[v1];
  v3 = *a1;
  v4 = (*a1 - **a1);
  v5 = *v4;
  result = -1.0;
  if (*(a1 + 38))
  {
    if (v5 < 0x11)
    {
      goto LABEL_11;
    }

    v7 = v4[8];
    if (!v4[8])
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (v5 < 0xF)
    {
      goto LABEL_11;
    }

    v7 = v4[7];
    if (!v4[7])
    {
      goto LABEL_11;
    }
  }

  v8 = v3[v7];
  result = v8;
  if (!v8)
  {
    result = -1.0;
  }

LABEL_11:
  v9 = -1.0;
  if (v2)
  {
    v10 = (v2 - *v2);
    if (*v10 >= 9u)
    {
      v11 = v10[4];
      if (v11)
      {
        v12 = *(v2 + v11);
        if ((v12 - 1) <= 0xFFFDu)
        {
          v9 = v12 / 100.0;
        }
      }
    }
  }

  v13 = 2;
  if (!*(a1 + 38))
  {
    v13 = 3;
  }

  v14 = a1[v13];
  v15 = -1.0;
  if (*(a1 + 38))
  {
    if (v5 < 0xF)
    {
      goto LABEL_26;
    }

    v16 = v4[7];
    if (!v16)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v5 < 0x11)
    {
      goto LABEL_26;
    }

    v16 = v4[8];
    if (!v16)
    {
      goto LABEL_26;
    }
  }

  v17 = v3[v16];
  v15 = v17;
  if (!v17)
  {
    v15 = -1.0;
  }

LABEL_26:
  v18 = -1.0;
  if (v14)
  {
    v19 = (v14 - *v14);
    if (*v19 >= 9u)
    {
      v20 = v19[4];
      if (v20)
      {
        v21 = *(v14 + v20);
        if ((v21 - 1) <= 0xFFFDu)
        {
          v18 = v21 / 100.0;
        }
      }
    }
  }

  if ((*&result <= -1 || ((*&result & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && *&result != 0 || result <= 0.0)
  {
    result = 0.0;
  }

  if ((*&v9 <= -1 || ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v9 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v9 = 0.0;
  }

  if (result < v9)
  {
    result = v9;
  }

  if ((*&v15 <= -1 || ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && *&v15 != 0 || v15 <= 0.0)
  {
    v30 = 0.0;
  }

  else
  {
    v30 = v15;
  }

  if ((*&v18 <= -1 || ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v18 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v33 = 0.0;
  }

  else
  {
    v33 = v18;
  }

  if (v30 < v33)
  {
    v30 = v33;
  }

  if (result < v30)
  {
    return v30;
  }

  return result;
}

uint64_t sub_314758(uint64_t a1)
{
  v1 = 24;
  if (!*(a1 + 38))
  {
    v1 = 16;
  }

  v2 = *(a1 + v1);
  if (!v2)
  {
    return 0;
  }

  v3 = (v2 - *v2);
  if (*v3 < 7u)
  {
    return 0;
  }

  v4 = v3[3];
  if (!v4)
  {
    return 0;
  }

  result = *(v2 + v4);
  if (result == 0xFFFF)
  {
    return 0;
  }

  return result;
}

uint64_t sub_3147AC(uint64_t a1)
{
  v1 = 16;
  if (!*(a1 + 38))
  {
    v1 = 24;
  }

  v2 = *(a1 + v1);
  if (!v2)
  {
    return 0;
  }

  v3 = (v2 - *v2);
  if (*v3 < 7u)
  {
    return 0;
  }

  v4 = v3[3];
  if (!v4)
  {
    return 0;
  }

  result = *(v2 + v4);
  if (result == 0xFFFF)
  {
    return 0;
  }

  return result;
}

uint64_t sub_314800(int *a1)
{
  v1 = (a1 - *a1);
  v2 = *v1;
  if (v2 >= 0x39)
  {
    if (v1[28] && (*(a1 + v1[28]) & 3) != 0)
    {
      return 0;
    }

    if (v2 >= 0x9B)
    {
      if (v1[77] && (*(a1 + v1[77]) & 8) != 0)
      {
        return 0;
      }

      v4 = 1;
      v5 = v1[13];
      if (!v1[13])
      {
        goto LABEL_18;
      }

LABEL_14:
      LODWORD(v5) = *(a1 + v5);
      if (v5 > 7)
      {
        return 0;
      }

      if (v5 == 7)
      {
        return 200;
      }

LABEL_18:
      if (v1[10] && *(a1 + v1[10]))
      {
        v6 = 200 * *(a1 + v1[10]);
        if (v2 < 0x2F)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v4)
        {
          if (v1[77])
          {
            v7 = *(a1 + v1[77]);
            v8 = 400;
            if ((v7 & 2) == 0)
            {
              v8 = 200;
            }

            if (v7)
            {
              v6 = v8;
            }

            else
            {
              v6 = 200;
            }

            v9 = v1[23];
            if (!v9)
            {
              goto LABEL_40;
            }
          }

          else
          {
            v6 = 200;
            v9 = v1[23];
            if (!v9)
            {
              goto LABEL_40;
            }
          }

LABEL_34:
          v11 = *(a1 + v9);
          v12 = v11 > 0x2A;
          v13 = (1 << v11) & 0x50426810004;
          if (!v12 && v13 != 0)
          {
            return v6;
          }

          goto LABEL_40;
        }

        v6 = 200;
        if (v2 < 0x2F)
        {
LABEL_40:
          v15 = 3000;
          if ((v5 & 0xFC) != 0)
          {
            v15 = 1500;
          }

          v10 = 500;
          if (v5 <= 5u)
          {
            v10 = v15;
          }

          goto LABEL_44;
        }
      }

      v9 = v1[23];
      if (v9)
      {
        goto LABEL_34;
      }

      goto LABEL_40;
    }

LABEL_13:
    v4 = 0;
    v5 = v1[13];
    if (!v1[13])
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if (v2 >= 0x1B)
  {
    goto LABEL_13;
  }

  if (v2 > 0x14)
  {
    v4 = 0;
    LOBYTE(v5) = 0;
    goto LABEL_18;
  }

  v10 = 3000;
  v6 = 200;
LABEL_44:
  v18 = v10;
  v16 = sub_312F58(a1);
  v17 = 1.0;
  if (v16)
  {
    v17 = 0.5;
  }

  return sub_315004(&v18, v17) + v6;
}

unint64_t sub_314A00(int **a1)
{
  v1 = *a1;
  v2 = (*a1 - **a1);
  if ((*(a1 + 39) & 0x20) != 0)
  {
    v4 = *v2;
    if (v4 >= 5)
    {
      if (v2[2])
      {
        v3 = __ROR8__(*&v1[v2[2]], 32);
        v1 = HIDWORD(v3);
        return v1 | (v3 << 32);
      }

      if (v4 >= 0x77)
      {
        v22 = v2[59];
        if (v22)
        {
          v3 = *&v1[v22];
          LODWORD(v1) = *(a1 + 8);
          return v1 | (v3 << 32);
        }
      }
    }

    v3 = 0;
    LODWORD(v1) = *(a1 + 8);
    return v1 | (v3 << 32);
  }

  if (v2[3])
  {
    v3 = __ROR8__(*&v1[v2[3]], 32);
    v1 = HIDWORD(v3);
  }

  else
  {
    v5 = *&v1[v2[60]];
    v6 = *(a1 + 8);
    v3 = HIWORD(v5);
    v7 = sub_57A90(v6);
    v8 = v7 >> 1;
    v9 = v7 & 0xFE;
    v10 = v6 & ~(-1 << (v7 & 0xFE));
    v11 = sub_581D8(v10);
    v12 = sub_581D8(v10 >> 1);
    v13 = v11 + v5;
    v14 = v12 + (v5 >> 8);
    v15 = ((((((v13 & ~(v13 >> 31)) - v13 + (v13 >> 31)) >> v8) + (v13 >> 31)) << v8) + v13) % (1 << v8);
    v16 = ((((((v14 & ~(v14 >> 31)) - v14 + (v14 >> 31)) >> v8) + (v14 >> 31)) << v8) + v14) % (1 << v8);
    v17 = -1 << v8;
    v18 = ~(-1 << v8);
    if (v18 < v15)
    {
      v19 = ~v17;
    }

    else
    {
      v19 = v15;
    }

    if (v18 < v16)
    {
      v20 = ~v17;
    }

    else
    {
      v20 = v16;
    }

    sub_58168(v19, v20);
    LODWORD(v1) = v21 | (1 << v9);
  }

  return v1 | (v3 << 32);
}

unint64_t sub_314B90(int **a1)
{
  v1 = *a1;
  v2 = (*a1 - **a1);
  if ((*(a1 + 39) & 0x20) == 0)
  {
    v3 = *v2;
    if (v3 < 5)
    {
      goto LABEL_17;
    }

    if (v2[2])
    {
      v4 = __ROR8__(*&v1[v2[2]], 32);
      v5 = HIDWORD(v4);
      return v5 | (v4 << 32);
    }

    if (v3 >= 0x77 && (v23 = v2[59]) != 0)
    {
      v4 = *&v1[v23];
    }

    else
    {
LABEL_17:
      v4 = 0;
    }

    LODWORD(v5) = *(a1 + 8);
    return v5 | (v4 << 32);
  }

  if (v2[3])
  {
    v4 = __ROR8__(*&v1[v2[3]], 32);
    v5 = HIDWORD(v4);
  }

  else
  {
    v6 = *&v1[v2[60]];
    v7 = *(a1 + 8);
    v4 = HIWORD(v6);
    v8 = sub_57A90(v7);
    v9 = v8 >> 1;
    v10 = v8 & 0xFE;
    v11 = v7 & ~(-1 << (v8 & 0xFE));
    v12 = sub_581D8(v11);
    v13 = sub_581D8(v11 >> 1);
    v14 = v12 + v6;
    v15 = v13 + (v6 >> 8);
    v16 = ((((((v14 & ~(v14 >> 31)) - v14 + (v14 >> 31)) >> v9) + (v14 >> 31)) << v9) + v14) % (1 << v9);
    v17 = ((((((v15 & ~(v15 >> 31)) - v15 + (v15 >> 31)) >> v9) + (v15 >> 31)) << v9) + v15) % (1 << v9);
    v18 = -1 << v9;
    v19 = ~(-1 << v9);
    if (v19 < v16)
    {
      v20 = ~v18;
    }

    else
    {
      v20 = v16;
    }

    if (v19 < v17)
    {
      v21 = ~v18;
    }

    else
    {
      v21 = v17;
    }

    sub_58168(v20, v21);
    LODWORD(v5) = v22 | (1 << v10);
  }

  return v5 | (v4 << 32);
}

BOOL sub_314D1C(int **a1, int a2)
{
  v2 = *(a1 + 9);
  v3 = *a1;
  v4 = (*a1 - **a1);
  v5 = *v4;
  if (a2 != 2)
  {
    if (a2 == 1)
    {
      v6 = v5 >= 0x39;
      if ((v2 & 0x20000000) != 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = v5 >= 0x39;
      if ((v2 & 0x20000000) == 0)
      {
LABEL_4:
        if (v6)
        {
          v7 = v4[28];
          if (v7)
          {
            v8 = *&v3[v7];
            if ((v8 & 3) == 0)
            {
              return (v8 >> 5) & 1;
            }
          }
        }

        return 0;
      }
    }

    if (v6)
    {
      v10 = v4[28];
      if (v10)
      {
        v11 = *&v3[v10];
        if ((v11 & 3) == 0)
        {
          return (v11 >> 2) & 1;
        }
      }
    }

    return 0;
  }

  if ((v2 & 0x20000000) != 0)
  {
    if (v5 >= 0x39)
    {
      v13 = v4[28];
      if (v13)
      {
        return (*&v3[v13] & 1) != 0;
      }
    }
  }

  else if (v5 >= 0x39)
  {
    v12 = v4[28];
    if (v12)
    {
      return (*&v3[v12] & 2) != 0;
    }
  }

  return 0;
}

BOOL sub_314DE0(int **a1)
{
  v1 = *a1;
  v2 = (*a1 - **a1);
  v3 = *v2;
  if ((*(a1 + 39) & 0x20) != 0)
  {
    if (v3 >= 0x51)
    {
      v6 = v2[40];
      if (v6)
      {
        return (*&v1[v6] & 2) != 0;
      }
    }
  }

  else if (v3 >= 0x51)
  {
    v4 = v2[40];
    if (v4)
    {
      return (*&v1[v4] & 0x20) != 0;
    }
  }

  return 0;
}

BOOL sub_314E48(int **a1)
{
  v1 = *a1;
  v2 = (*a1 - **a1);
  v3 = *v2;
  if ((*(a1 + 39) & 0x20) != 0)
  {
    if (v3 >= 0x51)
    {
      v6 = v2[40];
      if (v6)
      {
        return (*&v1[v6] & 0x80) != 0;
      }
    }
  }

  else if (v3 >= 0x51)
  {
    v4 = v2[40];
    if (v4)
    {
      return (*&v1[v4] & 8) != 0;
    }
  }

  return 0;
}

unint64_t sub_314EB0(unint64_t result)
{
  if (HIDWORD(result))
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v8, v1);
    sub_23E08("narrowing ", &v8, &v9);
    v3 = std::string::append(&v9, " failed", 7uLL);
    v4 = *&v3->__r_.__value_.__l.__data_;
    v11 = v3->__r_.__value_.__r.__words[2];
    v10 = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    if (v11 >= 0)
    {
      v5 = &v10;
    }

    else
    {
      v5 = v10;
    }

    if (v11 >= 0)
    {
      v6 = HIBYTE(v11);
    }

    else
    {
      v6 = *(&v10 + 1);
    }

    v7 = sub_2D390(exception, v5, v6);
  }

  return result;
}

void sub_314F84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_315004(uint64_t *a1, double a2)
{
  v2 = *a1 * a2;
  if (v2 >= 0.0)
  {
    if (v2 < 4.50359963e15)
    {
      v3 = (v2 + v2) + 1;
      return (v3 >> 1);
    }
  }

  else if (v2 > -4.50359963e15)
  {
    v3 = (v2 + v2) - 1 + (((v2 + v2) - 1) >> 63);
    return (v3 >> 1);
  }

  return v2;
}

void *sub_315068(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 6)
  {
    if (!(a2 >> 58))
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void **sub_315190(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 3);
        if (v5)
        {
          *(v3 - 2) = v5;
          operator delete(v5);
        }

        v3 -= 64;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t *sub_315204(unsigned int *a1, uint64_t *a2)
{
  v3 = *a1;
  if (v3)
  {
    v4 = 4 * v3;
    v5 = a1 + 1;
    do
    {
      sub_3152E4(v12, (v5 + *v5));
      v8 = a2[1];
      if (v8 < a2[2])
      {
        v6 = v12[1];
        v7 = v13;
        *v8 = v12[0];
        *(v8 + 16) = v6;
        *(v8 + 32) = v7;
        *(v8 + 40) = 0;
        *(v8 + 48) = 0;
        *(v8 + 56) = 0;
        *(v8 + 40) = *__p;
        *(v8 + 56) = v15;
        a2[1] = v8 + 64;
      }

      else
      {
        v9 = sub_315914(a2, v12);
        v10 = __p[0];
        a2[1] = v9;
        if (v10)
        {
          __p[1] = v10;
          operator delete(v10);
        }
      }

      ++v5;
      v4 -= 4;
    }

    while (v4);
  }

  return a2;
}

void sub_3152C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3152E4(uint64_t a1, int *a2)
{
  v3 = (a2 - *a2);
  if (*v3 < 5u)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3[2];
    if (v4)
    {
      v4 = *(a2 + v4);
    }
  }

  *a1 = v4;
  *(a1 + 8) = -1;
  *(a1 + 16) = 0x7FFFFFFF;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 36) = 0;
  *(a1 + 52) = 0;
  *(a1 + 44) = 0;
  *(a1 + 60) = 0;
  v5 = *a2;
  v6 = -v5;
  v7 = (a2 - v5);
  if (*v7 >= 7u)
  {
    v8 = v7[3];
    if (v8)
    {
      v9 = a2 + v8;
      v10 = *v9;
      LODWORD(v9) = *(v9 + 4);
      if (v9 >= 0xFFFFFFFE)
      {
        v9 = 4294967294;
      }

      else
      {
        v9 = v9;
      }

      *(a1 + 8) = v10 | (v9 << 32);
      *(a1 + 16) = 0x7FFFFFFF;
      v6 = -*a2;
    }
  }

  if (*(a2 + v6) >= 9u && *(a2 + v6 + 8))
  {
    v11 = (a2 + *(a2 + v6 + 8) + *(a2 + *(a2 + v6 + 8)));
    v12 = (v11 - *v11);
    if (*v12 >= 7u && (v13 = v12[3]) != 0)
    {
      v14 = *(v11 + v13);
    }

    else
    {
      v14 = 0;
    }

    *(a1 + 24) = v14;
    v6 = -*a2;
  }

  v15 = (a2 + v6);
  v16 = *v15;
  if (v16 <= 0xA)
  {
    *(a1 + 32) = 0;
    v18 = 0.0;
    goto LABEL_27;
  }

  v17 = v15[5];
  if (v15[5])
  {
    LOBYTE(v17) = *(a2 + v17);
  }

  *(a1 + 32) = v17;
  v18 = 0.0;
  if (v16 < 0xD)
  {
    goto LABEL_27;
  }

  v19 = v15[6];
  if (!v19)
  {
    goto LABEL_27;
  }

  v18 = *(a2 + v19) * 1000000000.0;
  if (v18 < 0.0)
  {
    if (v18 <= -4.50359963e15)
    {
      goto LABEL_29;
    }

    v20 = (v18 + v18) - 1 + (((v18 + v18) - 1) >> 63);
    goto LABEL_28;
  }

  if (v18 < 4.50359963e15)
  {
LABEL_27:
    v20 = (v18 + v18) + 1;
LABEL_28:
    v18 = (v20 >> 1);
  }

LABEL_29:
  v21 = 1000000000.0;
  if (v18 <= 1000000000.0)
  {
    v21 = v18;
  }

  v22 = v18 < 0.0;
  v23 = 0.0;
  if (!v22)
  {
    v23 = v21;
  }

  *(a1 + 36) = v23;
  v24 = (a2 - *a2);
  if (*v24 >= 0xFu)
  {
    v25 = v24[7];
    if (v25)
    {
      v26 = *(a2 + v25);
      v27 = (a2 + v25 + v26);
      v28 = *v27;
      if (v28)
      {
        v29 = 0;
        v30 = 0;
        v31 = 4 * v28;
        v32 = a2 + v25 + v26;
        do
        {
          while (1)
          {
            v33 = v27[v29 / 4 + 1];
            v34 = v33 - *(&v27[v29 / 4 + 1] + v33);
            v35 = &v32[v29 + v34];
            v36 = *(v35 + 2);
            if (v36 <= 4)
            {
              v51 = 0.0;
              v39 = 0.0;
              v38 = 0.0;
            }

            else
            {
              v37 = *(v35 + 4);
              v38 = 0.0;
              v39 = 0.0;
              if (v37)
              {
                v39 = *&v32[v29 + 4 + v33 + v37];
              }

              v51 = v39;
              if (v36 >= 7)
              {
                v40 = *&v32[v29 + 10 + v34];
                if (v40)
                {
                  v38 = *&v32[v29 + 4 + v33 + v40];
                }
              }
            }

            v50 = v38;
            if (v30 < *(a1 + 56))
            {
              break;
            }

            v30 = sub_31571C(a1 + 40, &v51, &v50);
            *(a1 + 48) = v30;
            v29 += 4;
            if (v31 == v29)
            {
              return a1;
            }
          }

          v41 = v39 * 1000000000.0;
          if (v41 >= 0.0)
          {
            if (v41 >= 4.50359963e15)
            {
              goto LABEL_52;
            }

            v42 = (v41 + v41) + 1;
          }

          else
          {
            if (v41 <= -4.50359963e15)
            {
              goto LABEL_52;
            }

            v42 = (v41 + v41) - 1 + (((v41 + v41) - 1) >> 63);
          }

          v41 = (v42 >> 1);
LABEL_52:
          if (v41 <= 1000000000.0)
          {
            v43 = v41;
          }

          else
          {
            v43 = 1000000000.0;
          }

          if (v41 >= 0.0)
          {
            v44 = v43;
          }

          else
          {
            v44 = 0.0;
          }

          *v30 = v44;
          v45 = v38 * 1000000000.0;
          if (v45 >= 0.0)
          {
            if (v45 < 4.50359963e15)
            {
              v46 = (v45 + v45) + 1;
              goto LABEL_63;
            }
          }

          else if (v45 > -4.50359963e15)
          {
            v46 = (v45 + v45) - 1 + (((v45 + v45) - 1) >> 63);
LABEL_63:
            v45 = (v46 >> 1);
          }

          v47 = 1000000000.0;
          if (v45 <= 1000000000.0)
          {
            v47 = v45;
          }

          if (v45 >= 0.0)
          {
            v48 = v47;
          }

          else
          {
            v48 = 0.0;
          }

          v30[1] = v48;
          v30 += 2;
          *(a1 + 48) = v30;
          *(a1 + 48) = v30;
          v29 += 4;
        }

        while (v31 != v29);
      }
    }
  }

  return a1;
}

void sub_315700(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    *(v1 + 48) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_31571C(uint64_t a1, float *a2, float *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 3;
  v4 = v3 + 1;
  if ((v3 + 1) >> 61)
  {
    sub_1794();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v4)
  {
    v4 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  v8 = (8 * v3);
  v9 = *a3;
  v10 = *a2 * 1000000000.0;
  if (v10 >= 0.0)
  {
    if (v10 >= 4.50359963e15)
    {
      goto LABEL_16;
    }

    v11 = (v10 + v10) + 1;
  }

  else
  {
    if (v10 <= -4.50359963e15)
    {
      goto LABEL_16;
    }

    v11 = (v10 + v10) - 1 + (((v10 + v10) - 1) >> 63);
  }

  v10 = (v11 >> 1);
LABEL_16:
  if (v10 <= 1000000000.0)
  {
    v12 = v10;
  }

  else
  {
    v12 = 1000000000.0;
  }

  v13 = v10 < 0.0;
  v14 = 0.0;
  if (!v13)
  {
    v14 = v12;
  }

  *v8 = v14;
  v15 = v9 * 1000000000.0;
  if (v15 >= 0.0)
  {
    if (v15 >= 4.50359963e15)
    {
      goto LABEL_27;
    }

    v16 = (v15 + v15) + 1;
  }

  else
  {
    if (v15 <= -4.50359963e15)
    {
      goto LABEL_27;
    }

    v16 = (v15 + v15) - 1 + (((v15 + v15) - 1) >> 63);
  }

  v15 = (v16 >> 1);
LABEL_27:
  v17 = 1000000000.0;
  if (v15 <= 1000000000.0)
  {
    v17 = v15;
  }

  v13 = v15 < 0.0;
  v18 = 0.0;
  if (!v13)
  {
    v18 = v17;
  }

  dword_4[2 * v3] = v18;
  v19 = v8 + 2;
  v20 = *a1;
  v21 = *(a1 + 8) - *a1;
  v22 = v8 - v21;
  memcpy(v8 - v21, *a1, v21);
  *a1 = v22;
  *(a1 + 8) = v19;
  *(a1 + 16) = 0;
  if (v20)
  {
    operator delete(v20);
  }

  return v19;
}

uint64_t sub_315914(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    sub_1794();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 5 > v3)
  {
    v3 = v5 >> 5;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFC0)
  {
    v6 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 58))
    {
      operator new();
    }

    sub_1808();
  }

  v7 = v2 << 6;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 56) = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v9 = (v2 << 6) + 64;
  v10 = *a1;
  v11 = a1[1];
  v12 = v7 + *a1 - v11;
  if (*a1 != v11)
  {
    v13 = *a1;
    v14 = v12;
    do
    {
      v15 = *v13;
      v16 = *(v13 + 1);
      *(v14 + 32) = v13[4];
      *v14 = v15;
      *(v14 + 16) = v16;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 40) = *(v13 + 5);
      *(v14 + 56) = v13[7];
      v13[5] = 0;
      v13[6] = 0;
      v13[7] = 0;
      v13 += 8;
      v14 += 64;
    }

    while (v13 != v11);
    do
    {
      v17 = v10[5];
      if (v17)
      {
        v10[6] = v17;
        operator delete(v17);
      }

      v10 += 8;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

uint64_t *sub_315A80(unsigned int *a1, uint64_t *a2)
{
  v3 = *a1;
  if (v3)
  {
    v4 = 4 * v3;
    v5 = a1 + 1;
    do
    {
      sub_3152E4(v12, (v5 + *v5));
      v8 = a2[1];
      if (v8 < a2[2])
      {
        v6 = v12[1];
        v7 = v13;
        *v8 = v12[0];
        *(v8 + 16) = v6;
        *(v8 + 32) = v7;
        *(v8 + 40) = 0;
        *(v8 + 48) = 0;
        *(v8 + 56) = 0;
        *(v8 + 40) = *__p;
        *(v8 + 56) = v15;
        a2[1] = v8 + 64;
      }

      else
      {
        v9 = sub_315914(a2, v12);
        v10 = __p[0];
        a2[1] = v9;
        if (v10)
        {
          __p[1] = v10;
          operator delete(v10);
        }
      }

      ++v5;
      v4 -= 4;
    }

    while (v4);
  }

  return a2;
}

void sub_315B44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_315B60(uint64_t result, int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 3;
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3uLL:

          return sub_3161E8(v9, (v9 + 8), a2 - 2);
        case 4uLL:
          result = sub_3161E8(v9, (v9 + 8), (v9 + 16));
          v32 = *(a2 - 2);
          v31 = a2 - 2;
          v33 = *(v9 + 16);
          v34 = (v32 << 32) | (*(v31 + 2) << 16);
          if (!*(v31 + 6))
          {
            ++v34;
          }

          v35 = (v33 >> 16) & 0xFFFF0000 | (v33 << 32);
          if ((v33 & 0xFF000000000000) == 0)
          {
            ++v35;
          }

          if (v34 < v35)
          {
            v36 = *v31;
            *(v9 + 19) = *(v31 + 3);
            *(v9 + 16) = v36;
            *(v31 + 6) = BYTE6(v33);
            *(v31 + 2) = WORD2(v33);
            *v31 = v33;
            v37 = *(v9 + 8);
            v38 = (*(v9 + 16) << 32) | (*(v9 + 20) << 16);
            if (!*(v9 + 22))
            {
              ++v38;
            }

            v39 = (v37 >> 16) & 0xFFFF0000 | (v37 << 32);
            if ((v37 & 0xFF000000000000) == 0)
            {
              ++v39;
            }

            if (v38 < v39)
            {
              *(v9 + 11) = *(v9 + 19);
              *(v9 + 8) = *(v9 + 16);
              *(v9 + 16) = v37;
              *(v9 + 22) = BYTE6(v37);
              *(v9 + 20) = WORD2(v37);
              v40 = *v9;
              v41 = (*(v9 + 8) << 32) | (*(v9 + 12) << 16);
              if (!*(v9 + 14))
              {
                ++v41;
              }

              v42 = (v40 >> 16) & 0xFFFF0000 | (v40 << 32);
              if ((v40 & 0xFF000000000000) == 0)
              {
                ++v42;
              }

              if (v41 < v42)
              {
                *v9 = *(v9 + 8);
                *(v9 + 3) = *(v9 + 11);
                *(v9 + 8) = v40;
                *(v9 + 14) = BYTE6(v40);
                *(v9 + 12) = WORD2(v40);
              }
            }
          }

          return result;
        case 5uLL:

          return sub_31639C(v9, (v9 + 8), (v9 + 16), (v9 + 24), a2 - 2);
      }
    }

    else
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v26 = *(a2 - 2);
        v25 = a2 - 2;
        v27 = *v9;
        v28 = (v26 << 32) | (*(v25 + 2) << 16);
        if (!*(v25 + 6))
        {
          ++v28;
        }

        v29 = (v27 >> 16) & 0xFFFF0000 | (v27 << 32);
        if ((v27 & 0xFF000000000000) == 0)
        {
          ++v29;
        }

        if (v28 < v29)
        {
          v30 = *v25;
          *(v9 + 3) = *(v25 + 3);
          *v9 = v30;
          *(v25 + 6) = BYTE6(v27);
          *(v25 + 2) = WORD2(v27);
          *v25 = v27;
        }

        return result;
      }
    }

    if (v12 <= 23)
    {
      break;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {
        v62 = (v12 - 2) >> 1;
        v63 = v62 + 1;
        v64 = (v9 + 8 * v62);
        do
        {
          sub_316CF4(v9, a3, (a2 - v9) >> 3, v64);
          v64 -= 2;
          --v63;
        }

        while (v63);
        do
        {
          result = sub_316E6C(v9, a2, a3, v12);
          a2 -= 2;
        }

        while (v12-- > 2);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = v9 + 8 * (v12 >> 1);
    if (v12 < 0x81)
    {
      sub_3161E8((v8 + 8 * (v12 >> 1)), v8, a2 - 2);
      if (a5)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_3161E8(v8, (v8 + 8 * (v12 >> 1)), a2 - 2);
      v15 = 8 * v13;
      v16 = (8 * v13 + v8 - 8);
      sub_3161E8((v8 + 8), v16, a2 - 4);
      sub_3161E8((v8 + 16), (v8 + 8 + v15), a2 - 6);
      sub_3161E8(v16, v14, (v8 + 8 + v15));
      v17 = *v8;
      v18 = *(v14 + 3);
      *v8 = *v14;
      *(v8 + 3) = v18;
      *v14 = v17;
      *(v14 + 6) = BYTE6(v17);
      *(v14 + 4) = WORD2(v17);
      if (a5)
      {
        goto LABEL_23;
      }
    }

    v19 = *v8;
    v20 = (*(v8 - 8) << 32) | (*(v8 - 4) << 16);
    if (!*(v8 - 2))
    {
      ++v20;
    }

    if ((v19 & 0xFF000000000000) != 0)
    {
      v21 = (v19 >> 16) & 0xFFFF0000 | (v19 << 32);
    }

    else
    {
      v21 = ((v19 >> 16) & 0xFFFF0000 | (v19 << 32)) + 1;
    }

    if (v20 >= v21)
    {
      result = sub_316684(v8, a2);
      v9 = result;
      goto LABEL_28;
    }

LABEL_23:
    v22 = sub_3167F0(v8, a2);
    if ((v23 & 1) == 0)
    {
      goto LABEL_26;
    }

    v24 = sub_316964(v8, v22);
    v9 = (v22 + 2);
    result = sub_316964((v22 + 2), a2);
    if (result)
    {
      a4 = -v11;
      a2 = v22;
      if (v24)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v24)
    {
LABEL_26:
      result = sub_315B60(v8, v22, a3, -v11, a5 & 1);
      v9 = (v22 + 2);
LABEL_28:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v43 = (v9 + 8);
  v45 = v9 == a2 || v43 == a2;
  if (a5)
  {
    if (!v45)
    {
      v46 = 0;
      v47 = v9;
      do
      {
        v49 = *v47;
        v50 = *(v47 + 8);
        v51 = *(v47 + 12);
        v52 = *(v47 + 14);
        v47 = v43;
        v53 = (v50 << 32) | (v51 << 16);
        if (!v52)
        {
          ++v53;
        }

        if ((v49 & 0xFF000000000000) != 0)
        {
          v54 = (v49 >> 16) & 0xFFFF0000 | (v49 << 32);
        }

        else
        {
          v54 = ((v49 >> 16) & 0xFFFF0000 | (v49 << 32)) + 1;
        }

        if (v53 < v54)
        {
          v55 = *v47;
          v56 = HIWORD(*v47);
          if (BYTE6(*v47))
          {
            v57 = (*v47 >> 16) & 0xFFFF0000 | (*v47 << 32);
          }

          else
          {
            v57 = ((*v47 >> 16) & 0xFFFF0000 | (*v47 << 32)) + 1;
          }

          v58 = v46;
          do
          {
            v59 = v9 + v58;
            *(v59 + 8) = *(v9 + v58);
            *(v59 + 11) = *(v9 + v58 + 3);
            if (!v58)
            {
              v48 = v9;
              goto LABEL_69;
            }

            v60 = *(v59 - 8);
            if ((v60 & 0xFF000000000000) != 0)
            {
              v61 = (v60 >> 16) & 0xFFFF0000 | (v60 << 32);
            }

            else
            {
              v61 = ((v60 >> 16) & 0xFFFF0000 | (v60 << 32)) + 1;
            }

            v58 -= 8;
          }

          while (v57 < v61);
          v48 = v9 + v58 + 8;
LABEL_69:
          *v48 = v55;
          *(v48 + 4) = WORD2(v55);
          *(v48 + 6) = v56;
        }

        v43 = (v47 + 8);
        v46 += 8;
      }

      while ((v47 + 8) != a2);
    }
  }

  else if (!v45)
  {
    v66 = (v9 + 14);
    do
    {
      v67 = *v8;
      v68 = *(v8 + 8);
      v69 = *(v8 + 12);
      v70 = *(v8 + 14);
      v8 = v43;
      v71 = (v68 << 32) | (v69 << 16);
      if (!v70)
      {
        ++v71;
      }

      if ((v67 & 0xFF000000000000) != 0)
      {
        v72 = (v67 >> 16) & 0xFFFF0000 | (v67 << 32);
      }

      else
      {
        v72 = ((v67 >> 16) & 0xFFFF0000 | (v67 << 32)) + 1;
      }

      if (v71 < v72)
      {
        v73 = *v8;
        v74 = HIWORD(*v8);
        if (BYTE6(*v8))
        {
          v75 = (*v8 >> 16) & 0xFFFF0000 | (*v8 << 32);
        }

        else
        {
          v75 = ((*v8 >> 16) & 0xFFFF0000 | (*v8 << 32)) + 1;
        }

        v76 = v66;
        do
        {
          *(v76 - 6) = *(v76 - 14);
          *(v76 - 3) = *(v76 - 11);
          v77 = *(v76 - 22);
          if ((v77 & 0xFF000000000000) != 0)
          {
            v78 = (v77 >> 16) & 0xFFFF0000 | (v77 << 32);
          }

          else
          {
            v78 = ((v77 >> 16) & 0xFFFF0000 | (v77 << 32)) + 1;
          }

          v76 -= 8;
        }

        while (v75 < v78);
        *(v76 - 6) = v73;
        *(v76 - 1) = WORD2(v73);
        *v76 = v74;
      }

      v43 = (v8 + 8);
      v66 += 8;
    }

    while ((v8 + 8) != a2);
  }

  return result;
}

uint64_t sub_3161E8(uint64_t *a1, unsigned int *a2, unsigned int *a3)
{
  v3 = *a1;
  if (*(a2 + 6))
  {
    v4 = (*a2 << 32) | (*(a2 + 2) << 16);
  }

  else
  {
    v4 = ((*a2 << 32) | (*(a2 + 2) << 16)) + 1;
  }

  if ((v3 & 0xFF000000000000) != 0)
  {
    v5 = (v3 >> 16) & 0xFFFF0000 | (v3 << 32);
  }

  else
  {
    v5 = ((v3 >> 16) & 0xFFFF0000 | (v3 << 32)) + 1;
  }

  v6 = *a2;
  v7 = (*a3 << 32) | (*(a3 + 2) << 16);
  if (!*(a3 + 6))
  {
    ++v7;
  }

  v8 = (v6 >> 16) & 0xFFFF0000 | (v6 << 32);
  if ((v6 & 0xFF000000000000) == 0)
  {
    ++v8;
  }

  if (v4 < v5)
  {
    if (v7 >= v8)
    {
      v16 = *a2;
      *(a1 + 3) = *(a2 + 3);
      *a1 = v16;
      *(a2 + 6) = BYTE6(v3);
      *(a2 + 2) = WORD2(v3);
      *a2 = v3;
      v3 = *a2;
      v17 = (*a3 << 32) | (*(a3 + 2) << 16);
      if (!*(a3 + 6))
      {
        ++v17;
      }

      v18 = (v3 >> 16) & 0xFFFF0000 | (v3 << 32);
      if ((v3 & 0xFF000000000000) == 0)
      {
        ++v18;
      }

      if (v17 >= v18)
      {
        return 1;
      }

      v19 = *a3;
      *(a2 + 3) = *(a3 + 3);
      *a2 = v19;
    }

    else
    {
      v9 = *a3;
      *(a1 + 3) = *(a3 + 3);
      *a1 = v9;
    }

    *(a3 + 6) = BYTE6(v3);
    *(a3 + 2) = WORD2(v3);
    *a3 = v3;
    return 1;
  }

  if (v7 < v8)
  {
    v10 = *a3;
    *(a2 + 3) = *(a3 + 3);
    *a2 = v10;
    *(a3 + 6) = BYTE6(v6);
    *(a3 + 2) = WORD2(v6);
    *a3 = v6;
    v11 = *a1;
    v12 = (*a2 << 32) | (*(a2 + 2) << 16);
    if (!*(a2 + 6))
    {
      ++v12;
    }

    v13 = (v11 >> 16) & 0xFFFF0000 | (v11 << 32);
    if ((v11 & 0xFF000000000000) == 0)
    {
      ++v13;
    }

    if (v12 < v13)
    {
      v14 = *a2;
      *(a1 + 3) = *(a2 + 3);
      *a1 = v14;
      *(a2 + 6) = BYTE6(v11);
      *(a2 + 2) = WORD2(v11);
      *a2 = v11;
      return 1;
    }

    return 1;
  }

  return 0;
}

uint64_t sub_31639C(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5)
{
  result = sub_3161E8(a1, a2, a3);
  v11 = *a3;
  v12 = (*a4 << 32) | (*(a4 + 2) << 16);
  if (!*(a4 + 6))
  {
    ++v12;
  }

  v13 = (v11 >> 16) & 0xFFFF0000 | (v11 << 32);
  if ((v11 & 0xFF000000000000) == 0)
  {
    ++v13;
  }

  if (v12 < v13)
  {
    v14 = *a4;
    *(a3 + 3) = *(a4 + 3);
    *a3 = v14;
    *(a4 + 6) = BYTE6(v11);
    *(a4 + 2) = WORD2(v11);
    *a4 = v11;
    v15 = *a2;
    v16 = (*a3 << 32) | (*(a3 + 2) << 16);
    if (!*(a3 + 6))
    {
      ++v16;
    }

    v17 = (v15 >> 16) & 0xFFFF0000 | (v15 << 32);
    if ((v15 & 0xFF000000000000) == 0)
    {
      ++v17;
    }

    if (v16 < v17)
    {
      v18 = *a3;
      *(a2 + 3) = *(a3 + 3);
      *a2 = v18;
      *(a3 + 6) = BYTE6(v15);
      *(a3 + 2) = WORD2(v15);
      *a3 = v15;
      v19 = *a1;
      v20 = (*a2 << 32) | (*(a2 + 2) << 16);
      if (!*(a2 + 6))
      {
        ++v20;
      }

      v21 = (v19 >> 16) & 0xFFFF0000 | (v19 << 32);
      if ((v19 & 0xFF000000000000) == 0)
      {
        ++v21;
      }

      if (v20 < v21)
      {
        v22 = *a2;
        *(a1 + 3) = *(a2 + 3);
        *a1 = v22;
        *(a2 + 6) = BYTE6(v19);
        *(a2 + 2) = WORD2(v19);
        *a2 = v19;
      }
    }
  }

  v23 = *a4;
  v24 = (*a5 << 32) | (*(a5 + 2) << 16);
  if (!*(a5 + 6))
  {
    ++v24;
  }

  v25 = (v23 >> 16) & 0xFFFF0000 | (v23 << 32);
  if ((v23 & 0xFF000000000000) == 0)
  {
    ++v25;
  }

  if (v24 < v25)
  {
    v26 = *a5;
    *(a4 + 3) = *(a5 + 3);
    *a4 = v26;
    *(a5 + 6) = BYTE6(v23);
    *(a5 + 2) = WORD2(v23);
    *a5 = v23;
    v27 = *a3;
    v28 = (*a4 << 32) | (*(a4 + 2) << 16);
    if (!*(a4 + 6))
    {
      ++v28;
    }

    v29 = (v27 >> 16) & 0xFFFF0000 | (v27 << 32);
    if ((v27 & 0xFF000000000000) == 0)
    {
      ++v29;
    }

    if (v28 < v29)
    {
      v30 = *a4;
      *(a3 + 3) = *(a4 + 3);
      *a3 = v30;
      *(a4 + 6) = BYTE6(v27);
      *(a4 + 2) = WORD2(v27);
      *a4 = v27;
      v31 = *a2;
      v32 = (*a3 << 32) | (*(a3 + 2) << 16);
      if (!*(a3 + 6))
      {
        ++v32;
      }

      v33 = (v31 >> 16) & 0xFFFF0000 | (v31 << 32);
      if ((v31 & 0xFF000000000000) == 0)
      {
        ++v33;
      }

      if (v32 < v33)
      {
        v34 = *a3;
        *(a2 + 3) = *(a3 + 3);
        *a2 = v34;
        *(a3 + 6) = BYTE6(v31);
        *(a3 + 2) = WORD2(v31);
        *a3 = v31;
        v35 = *a1;
        v36 = (*a2 << 32) | (*(a2 + 2) << 16);
        if (!*(a2 + 6))
        {
          ++v36;
        }

        v37 = (v35 >> 16) & 0xFFFF0000 | (v35 << 32);
        if ((v35 & 0xFF000000000000) == 0)
        {
          ++v37;
        }

        if (v36 < v37)
        {
          v38 = *a2;
          *(a1 + 3) = *(a2 + 3);
          *a1 = v38;
          *(a2 + 6) = BYTE6(v35);
          *(a2 + 2) = WORD2(v35);
          *a2 = v35;
        }
      }
    }
  }

  return result;
}

uint64_t *sub_316684(uint64_t *a1, int *a2)
{
  v2 = *a1;
  v3 = HIWORD(*a1);
  v4 = *(a2 - 1);
  v5 = (*a1 >> 16) & 0xFFFF0000 | (*a1 << 32);
  if (!BYTE6(*a1))
  {
    ++v5;
  }

  if ((v4 & 0xFF000000000000) != 0)
  {
    v6 = (v4 >> 16) & 0xFFFF0000 | (v4 << 32);
  }

  else
  {
    v6 = ((v4 >> 16) & 0xFFFF0000 | (v4 << 32)) + 1;
  }

  if (v5 >= v6)
  {
    v11 = a1 + 1;
    do
    {
      v7 = v11;
      if (v11 >= a2)
      {
        break;
      }

      ++v11;
      v12 = (*v7 & 0xFF000000000000) != 0 ? (*v7 >> 16) & 0xFFFF0000 | (*v7 << 32) : ((*v7 >> 16) & 0xFFFF0000 | (*v7 << 32)) + 1;
    }

    while (v5 >= v12);
  }

  else
  {
    v7 = a1;
    do
    {
      v8 = v7[1];
      ++v7;
      v9 = (v8 >> 16) & 0xFFFF0000 | (v8 << 32);
      if ((v8 & 0xFF000000000000) != 0)
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 + 1;
      }
    }

    while (v5 >= v10);
  }

  if (v7 < a2)
  {
    do
    {
      v13 = *(a2 - 1);
      a2 -= 2;
      v14 = (v13 >> 16) & 0xFFFF0000 | (v13 << 32);
      if ((v13 & 0xFF000000000000) != 0)
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 + 1;
      }
    }

    while (v5 < v15);
  }

  if (v7 < a2)
  {
    v16 = *v7;
    do
    {
      v17 = *a2;
      *(v7 + 3) = *(a2 + 3);
      *v7 = v17;
      *(a2 + 6) = BYTE6(v16);
      *(a2 + 2) = WORD2(v16);
      *a2 = v16;
      do
      {
        v18 = v7[1];
        ++v7;
        v16 = v18;
        v19 = (v18 >> 16) & 0xFFFF0000 | (v18 << 32);
        if ((v18 & 0xFF000000000000) == 0)
        {
          ++v19;
        }
      }

      while (v5 >= v19);
      do
      {
        v20 = *(a2 - 1);
        a2 -= 2;
        v21 = (v20 >> 16) & 0xFFFF0000 | (v20 << 32);
        if ((v20 & 0xFF000000000000) != 0)
        {
          v22 = v21;
        }

        else
        {
          v22 = v21 + 1;
        }
      }

      while (v5 < v22);
    }

    while (v7 < a2);
  }

  if (v7 - 1 != a1)
  {
    v23 = *(v7 - 2);
    *(a1 + 3) = *(v7 - 5);
    *a1 = v23;
  }

  *(v7 - 2) = v2;
  *(v7 - 2) = WORD2(v2);
  *(v7 - 2) = v3;
  return v7;
}

uint64_t sub_3167F0(uint64_t *a1, uint64_t *a2)
{
  v2 = 0;
  v3 = *a1;
  if ((*a1 & 0xFF000000000000) != 0)
  {
    v4 = (*a1 >> 16) & 0xFFFF0000 | (*a1 << 32);
  }

  else
  {
    v4 = ((*a1 >> 16) & 0xFFFF0000 | (*a1 << 32)) + 1;
  }

  do
  {
    v5 = WORD2(a1[v2 + 1]);
    if (BYTE6(a1[v2 + 1]))
    {
      v6 = (LODWORD(a1[v2 + 1]) << 32) | (v5 << 16);
    }

    else
    {
      v6 = ((LODWORD(a1[v2 + 1]) << 32) | (v5 << 16)) + 1;
    }

    ++v2;
  }

  while (v6 < v4);
  v7 = &a1[v2];
  v8 = &a1[v2 - 1];
  if (v2 == 1)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      v11 = *(a2-- - 2);
      v12 = (v11 << 32) | (*(a2 + 2) << 16);
      if (!*(a2 + 6))
      {
        ++v12;
      }
    }

    while (v12 >= v4);
  }

  else
  {
    do
    {
      v9 = *(a2-- - 2);
      v10 = (v9 << 32) | (*(a2 + 2) << 16);
      if (!*(a2 + 6))
      {
        ++v10;
      }
    }

    while (v10 >= v4);
  }

  if (v7 < a2)
  {
    v13 = v7;
    v14 = a2;
    do
    {
      v15 = *v13;
      v16 = *v14;
      *(v13 + 3) = *(v14 + 3);
      *v13 = v16;
      *v14 = v15;
      *(v14 + 6) = BYTE6(v15);
      *(v14 + 2) = WORD2(v15);
      do
      {
        v17 = *(v13++ + 2);
        v18 = (v17 << 32) | (*(v13 + 2) << 16);
        if (!*(v13 + 6))
        {
          ++v18;
        }
      }

      while (v18 < v4);
      do
      {
        v19 = *(v14-- - 2);
        v20 = (v19 << 32) | (*(v14 + 2) << 16);
        if (!*(v14 + 6))
        {
          ++v20;
        }
      }

      while (v20 >= v4);
    }

    while (v13 < v14);
    v8 = (v13 - 1);
  }

  if (v8 != a1)
  {
    v21 = *v8;
    *(a1 + 3) = *(v8 + 3);
    *a1 = v21;
  }

  *v8 = v3;
  *(v8 + 6) = BYTE6(v3);
  *(v8 + 4) = WORD2(v3);
  return v8;
}

BOOL sub_316964(uint64_t a1, unsigned int *a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        sub_3161E8(a1, (a1 + 8), a2 - 2);
        return 1;
      case 4:
        sub_3161E8(a1, (a1 + 8), (a1 + 16));
        v29 = a2 - 2;
        v30 = *(a1 + 16);
        v31 = (*(a2 - 2) << 32) | (*(a2 - 2) << 16);
        if (!*(a2 - 2))
        {
          ++v31;
        }

        v32 = (v30 >> 16) & 0xFFFF0000 | (v30 << 32);
        if ((v30 & 0xFF000000000000) == 0)
        {
          ++v32;
        }

        if (v31 < v32)
        {
          v33 = *v29;
          *(a1 + 19) = *(a2 - 5);
          *(a1 + 16) = v33;
          *(a2 - 2) = BYTE6(v30);
          *(a2 - 2) = WORD2(v30);
          *v29 = v30;
          v34 = *(a1 + 8);
          v35 = (*(a1 + 16) << 32) | (*(a1 + 20) << 16);
          if (!*(a1 + 22))
          {
            ++v35;
          }

          v36 = (v34 >> 16) & 0xFFFF0000 | (v34 << 32);
          if ((v34 & 0xFF000000000000) == 0)
          {
            ++v36;
          }

          if (v35 < v36)
          {
            *(a1 + 11) = *(a1 + 19);
            *(a1 + 8) = *(a1 + 16);
            *(a1 + 16) = v34;
            *(a1 + 22) = BYTE6(v34);
            *(a1 + 20) = WORD2(v34);
            v37 = *a1;
            v38 = (*(a1 + 8) << 32) | (*(a1 + 12) << 16);
            if (!*(a1 + 14))
            {
              ++v38;
            }

            v39 = (v37 >> 16) & 0xFFFF0000 | (v37 << 32);
            if ((v37 & 0xFF000000000000) == 0)
            {
              ++v39;
            }

            if (v38 < v39)
            {
              *a1 = *(a1 + 8);
              *(a1 + 3) = *(a1 + 11);
              *(a1 + 8) = v37;
              *(a1 + 14) = BYTE6(v37);
              *(a1 + 12) = WORD2(v37);
            }
          }
        }

        return 1;
      case 5:
        sub_31639C(a1, (a1 + 8), (a1 + 16), (a1 + 24), a2 - 2);
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v4 = *(a2 - 2);
      v3 = a2 - 2;
      v5 = *a1;
      v6 = (v4 << 32) | (*(v3 + 2) << 16);
      if (!*(v3 + 6))
      {
        ++v6;
      }

      v7 = (v5 >> 16) & 0xFFFF0000 | (v5 << 32);
      if ((v5 & 0xFF000000000000) == 0)
      {
        ++v7;
      }

      if (v6 < v7)
      {
        v8 = *v3;
        *(a1 + 3) = *(v3 + 3);
        *a1 = v8;
        *(v3 + 6) = BYTE6(v5);
        *(v3 + 2) = WORD2(v5);
        *v3 = v5;
        return 1;
      }

      return 1;
    }
  }

  v10 = (a1 + 16);
  sub_3161E8(a1, (a1 + 8), (a1 + 16));
  v13 = (a1 + 24);
  if ((a1 + 24) == a2)
  {
    return 1;
  }

  v14 = 0;
  v15 = 0;
  while (1)
  {
    v17 = *v10;
    v18 = (*v13 << 32) | (*(v13 + 2) << 16);
    if (!*(v13 + 6))
    {
      ++v18;
    }

    v19 = (v17 & 0xFF000000000000) != 0 ? (v17 >> 16) & 0xFFFF0000 | (v17 << 32) : ((v17 >> 16) & 0xFFFF0000 | (v17 << 32)) + 1;
    if (v18 < v19)
    {
      v20 = *v13;
      v21 = HIWORD(*v13);
      v22 = BYTE6(*v13) ? (*v13 >> 16) & 0xFFFF0000 | (*v13 << 32) : ((*v13 >> 16) & 0xFFFF0000 | (*v13 << 32)) + 1;
      v23 = v14;
      do
      {
        v24 = a1 + v23;
        *(v24 + 24) = *(a1 + v23 + 16);
        *(v24 + 27) = *(a1 + v23 + 19);
        if (v23 == -16)
        {
          v16 = a1;
          goto LABEL_18;
        }

        v25 = *(v24 + 8);
        if ((v25 & 0xFF000000000000) != 0)
        {
          v26 = (v25 >> 16) & 0xFFFF0000 | (v25 << 32);
        }

        else
        {
          v26 = ((v25 >> 16) & 0xFFFF0000 | (v25 << 32)) + 1;
        }

        v23 -= 8;
      }

      while (v22 < v26);
      v16 = a1 + v23 + 24;
LABEL_18:
      *v16 = v20;
      *(v16 + 4) = WORD2(v20);
      *(v16 + 6) = v21;
      if (++v15 == 8)
      {
        return v13 + 2 == a2;
      }
    }

    v10 = v13;
    v14 += 8;
    v13 += 2;
    if (v13 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_316CF4(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = *(v8 + 1);
        v11 = (*v8 << 32) | (*(v8 + 2) << 16);
        if (!*(v8 + 6))
        {
          ++v11;
        }

        if ((v10 & 0xFF000000000000) != 0)
        {
          v12 = (v10 >> 16) & 0xFFFF0000 | (v10 << 32);
        }

        else
        {
          v12 = ((v10 >> 16) & 0xFFFF0000 | (v10 << 32)) + 1;
        }

        if (v11 < v12)
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v13 = *a4;
      if (*(v8 + 6))
      {
        v14 = (*v8 << 32) | (*(v8 + 2) << 16);
      }

      else
      {
        v14 = ((*v8 << 32) | (*(v8 + 2) << 16)) + 1;
      }

      v15 = (v13 >> 16) & 0xFFFF0000 | (v13 << 32);
      if ((v13 & 0xFF000000000000) == 0)
      {
        ++v15;
      }

      if (v14 >= v15)
      {
        do
        {
          v17 = a4;
          a4 = v8;
          v18 = *v8;
          *(v17 + 3) = *(a4 + 3);
          *v17 = v18;
          if (v5 < v7)
          {
            break;
          }

          v19 = (2 * v7) | 1;
          v8 = (result + 8 * v19);
          v20 = 2 * v7 + 2;
          if (v20 < a3)
          {
            v21 = *(v8 + 1);
            v22 = (*v8 << 32) | (*(v8 + 2) << 16);
            if (!*(v8 + 6))
            {
              ++v22;
            }

            if ((v21 & 0xFF000000000000) != 0)
            {
              v23 = (v21 >> 16) & 0xFFFF0000 | (v21 << 32);
            }

            else
            {
              v23 = ((v21 >> 16) & 0xFFFF0000 | (v21 << 32)) + 1;
            }

            if (v22 < v23)
            {
              v8 += 2;
              v19 = v20;
            }
          }

          v16 = *(v8 + 6) ? (*v8 << 32) | (*(v8 + 2) << 16) : ((*v8 << 32) | (*(v8 + 2) << 16)) + 1;
          v7 = v19;
        }

        while (v16 >= v15);
        *a4 = v13;
        *(a4 + 6) = BYTE6(v13);
        *(a4 + 2) = WORD2(v13);
      }
    }
  }

  return result;
}

unint64_t *sub_316E6C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = 0;
    v5 = *result;
    v6 = result;
    do
    {
      v14 = &v6[2 * v4];
      v12 = v14 + 2;
      v15 = (2 * v4) | 1;
      v4 = 2 * v4 + 2;
      if (v4 < a4)
      {
        v9 = *(v14 + 2);
        v7 = v14 + 4;
        v8 = v9;
        v10 = (*(v7 - 2) << 32) | (*(v7 - 2) << 16);
        if (!*(v7 - 2))
        {
          ++v10;
        }

        if ((v8 & 0xFF000000000000) != 0)
        {
          v11 = (v8 >> 16) & 0xFFFF0000 | (v8 << 32);
        }

        else
        {
          v11 = ((v8 >> 16) & 0xFFFF0000 | (v8 << 32)) + 1;
        }

        if (v10 >= v11)
        {
          v4 = v15;
        }

        else
        {
          v12 = v7;
        }
      }

      else
      {
        v4 = v15;
      }

      v13 = *v12;
      *(v6 + 3) = *(v12 + 3);
      *v6 = v13;
      v6 = v12;
    }

    while (v4 <= ((a4 - 2) >> 1));
    v16 = (a2 - 8);
    if (v12 == (a2 - 8))
    {
      goto LABEL_26;
    }

    v17 = *v16;
    *(v12 + 3) = *(a2 - 5);
    *v12 = v17;
    *(a2 - 2) = BYTE6(v5);
    *(a2 - 4) = WORD2(v5);
    *v16 = v5;
    v18 = (v12 - result + 8) >> 3;
    v19 = v18 < 2;
    v20 = v18 - 2;
    if (!v19)
    {
      v21 = v20 >> 1;
      v22 = &result[v20 >> 1];
      v5 = *v12;
      if (*(v22 + 6))
      {
        v23 = (*v22 << 32) | (*(v22 + 2) << 16);
      }

      else
      {
        v23 = ((*v22 << 32) | (*(v22 + 2) << 16)) + 1;
      }

      v24 = (v5 >> 16) & 0xFFFF0000 | (v5 << 32);
      if ((v5 & 0xFF000000000000) == 0)
      {
        ++v24;
      }

      if (v23 < v24)
      {
        do
        {
          v25 = v12;
          v12 = v22;
          v26 = *v22;
          *(v25 + 3) = *(v12 + 3);
          *v25 = v26;
          if (!v21)
          {
            break;
          }

          v21 = (v21 - 1) >> 1;
          v22 = &result[v21];
          v27 = (*v22 << 32) | (*(v22 + 2) << 16);
          if (!*(v22 + 6))
          {
            ++v27;
          }
        }

        while (v27 < v24);
LABEL_26:
        *v12 = v5;
        *(v12 + 6) = BYTE6(v5);
        *(v12 + 2) = WORD2(v5);
      }
    }
  }

  return result;
}

unint64_t sub_316FF8(uint64_t a1, unsigned int *a2)
{
  v3 = *a2;
  if (!v3)
  {
    return 0xFFFFFFFF00000000;
  }

  v4 = sub_3187E8(a1, v3, 1);
  if (!v4)
  {
    return 0xFFFFFFFF00000000;
  }

  v5 = &v4[-*v4];
  if (*v5 < 5u)
  {
    return 0xFFFFFFFF00000000;
  }

  v6 = *(v5 + 2);
  if (!v6)
  {
    return 0xFFFFFFFF00000000;
  }

  v7 = &v4[v6 + *&v4[v6]];
  v8 = v7 + 4;
  v9 = *v7;
  if (*v7)
  {
    v10 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
    if ((*a2 & 0xFF000000000000) == 0)
    {
      ++v10;
    }

    v11 = (v7 + 4);
    do
    {
      v12 = (v11 + ((2 * v9) & 0x3FFFFFFFCLL));
      v13 = *(v12 + *v12 + *(v12 + *v12 - *(v12 + *v12) + 4));
      v14 = v9 >> 1;
      v15 = (v13 & 0xFF000000000000) == 0;
      v16 = (v13 >> 16) & 0xFFFF0000 | (v13 << 32);
      if (!v15)
      {
        ++v16;
      }

      v17 = v12 + 1;
      v9 += ~v14;
      if (v16 >= v10)
      {
        v9 = v14;
      }

      else
      {
        v11 = v17;
      }
    }

    while (v9);
    if (v11 == &v8[4 * *v7])
    {
      return 0xFFFFFFFF00000000;
    }
  }

  else
  {
    v11 = (v7 + 4);
    if (v8 == &v8[4 * *v7])
    {
      return 0xFFFFFFFF00000000;
    }
  }

  v18 = *(v11 + *v11 + *(v11 + *v11 - *(v11 + *v11) + 4));
  v19 = *a2;
  if (v18 == *a2 && WORD2(v18) == WORD2(v19) && ((v18 & 0xFF000000000000) == 0) == BYTE6(v19))
  {
    return (sub_314EB0((v11 - v8) >> 2) << 32) | *a2;
  }

  return 0xFFFFFFFF00000000;
}

unint64_t sub_317184(uint64_t a1, unint64_t a2)
{
  v3 = sub_3171D4(a1, a2);
  v5 = (v3 & 0x7FFFFFFFFFFFFFFFLL | ((v3 >> 62 == 0) << 63)) ^ 0x2000000000000000;
  return sub_3172DC(a1, &v5);
}

unint64_t sub_3171D4(uint64_t a1, unint64_t a2)
{
  v3 = sub_319180(a1, a2, 1);
  if (!v3)
  {
    return 0;
  }

  v4 = &v3[-*v3];
  if (*v4 < 5u)
  {
    return 0;
  }

  v5 = *(v4 + 2);
  if (!v5)
  {
    return v5;
  }

  v6 = &v3[v5];
  v7 = *v6;
  if (*&v6[v7] <= HIDWORD(a2))
  {
    return 0;
  }

  v8 = sub_3195D8(&v6[v7], a2);
  if (!v8)
  {
    return 0;
  }

  v9 = (v8 - *v8);
  v10 = *v9;
  if (v10 < 5 || !v9[2])
  {
    return 0;
  }

  v11 = (v8 + v9[2]);
  if (v10 >= 0x11 && (v12 = v9[8]) != 0)
  {
    v13 = *(v8 + v12);
    v14 = (v13 == 3) << 30;
    if (v13 == 1)
    {
      v14 = 0x80000000;
    }
  }

  else
  {
    v14 = 0;
  }

  return *v11 | ((v14 + ((*(v11 + 6) != 0) << 29) + *(v11 + 2)) << 32);
}

unint64_t sub_3172DC(uint64_t a1, unsigned int *a2)
{
  v3 = *a2;
  if (!v3)
  {
    return 0xFFFFFFFF00000000;
  }

  v4 = sub_319180(a1, v3, 1);
  if (!v4)
  {
    return 0xFFFFFFFF00000000;
  }

  v5 = &v4[-*v4];
  if (*v5 < 5u)
  {
    return 0xFFFFFFFF00000000;
  }

  v6 = *(v5 + 2);
  if (!v6)
  {
    return 0xFFFFFFFF00000000;
  }

  v7 = &v4[v6 + *&v4[v6]];
  v8 = v7 + 4;
  v9 = *v7;
  if (*v7)
  {
    v10 = (v7 + 4);
    do
    {
      v15 = (v10 + ((2 * v9) & 0x3FFFFFFFCLL));
      v16 = (v15 + *v15);
      v17 = (v16 - *v16);
      v18 = *v17;
      if (v18 >= 5 && (v19 = v17[2]) != 0)
      {
        if (v18 < 0x11)
        {
          LODWORD(v20) = 0;
        }

        else
        {
          v20 = v17[8];
          if (v20)
          {
            v21 = *(v16 + v20);
            if (v21 == 1)
            {
              LODWORD(v20) = 0x80000000;
            }

            else
            {
              LODWORD(v20) = (v21 == 3) << 30;
            }
          }
        }

        v22 = (v16 + v19);
        v11 = (v20 | ((*(v22 + 6) != 0) << 29)) + *(v22 + 2);
        v12 = *v22 << 32;
      }

      else
      {
        v11 = 0;
        v12 = 0;
      }

      v13 = v9 >> 1;
      v14 = v15 + 1;
      v9 += ~(v9 >> 1);
      if (((v12 + (8 * v11)) | (v11 >> 27) & 4 | (v11 >> 29) & 2 | (v11 >> 31)) >= ((((*a2 >> 29) & 0xFFFFFFFFFFFFFFF8) + (*a2 << 32)) & 0xFFFFFFFFFFFFFFF8 | (*a2 >> 59) & 4 | (*a2 >> 61) & 2 | (*a2 >> 63)))
      {
        v9 = v13;
      }

      else
      {
        v10 = v14;
      }
    }

    while (v9);
  }

  else
  {
    v10 = (v7 + 4);
  }

  if (v10 == &v8[4 * *v7])
  {
    return 0xFFFFFFFF00000000;
  }

  v23 = (v10 + *v10);
  v24 = (v23 - *v23);
  v25 = *v24;
  if (v25 >= 5 && v24[2])
  {
    v26 = v23 + v24[2];
    if (v25 >= 0x11 && (v27 = v24[8]) != 0)
    {
      v28 = *(v23 + v27);
      if (v28 == 1)
      {
        v29 = 0x80000000;
      }

      else
      {
        v29 = (v28 == 3) << 30;
      }
    }

    else
    {
      v29 = 0;
    }

    v31 = (v29 | ((v26[6] != 0) << 29)) + *(v26 + 2);
    if (*v26 != *a2)
    {
      return 0xFFFFFFFF00000000;
    }
  }

  else
  {
    v31 = 0;
    if (*a2)
    {
      return 0xFFFFFFFF00000000;
    }
  }

  if (v31 != a2[1])
  {
    return 0xFFFFFFFF00000000;
  }

  return (sub_314EB0((v10 - v8) >> 2) << 32) | *a2;
}

unint64_t sub_317548(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = sub_3171D4(a1, a2);
  v8 = (v5 & 0x7FFFFFFFFFFFFFFFLL | ((v5 >> 62 == 0) << 63)) ^ 0x2000000000000000;
  sub_3172DC(a1, &v8);
  v6 = sub_3171D4(a1, a3);
  v8 = (v6 & 0x7FFFFFFFFFFFFFFFLL | ((v6 >> 62 == 0) << 63)) ^ 0x2000000000000000;
  return sub_3172DC(a1, &v8);
}

unint64_t sub_3175DC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_3187E8(a1, a2, 1);
  if (!v6)
  {
    goto LABEL_26;
  }

  v7 = &v6[-*v6];
  if (*v7 < 5u)
  {
    goto LABEL_26;
  }

  v8 = *(v7 + 2);
  if (!v8)
  {
LABEL_27:
    v29 = 0xFFFFFFFF00000000;
    return v29 | v8;
  }

  v9 = &v6[v8];
  v10 = *v9;
  if (*&v9[v10] <= HIDWORD(a2) || (v11 = sub_319480(&v9[v10], a2)) == 0 || (v12 = (v11 - *v11), *v12 < 0xDu))
  {
LABEL_26:
    v8 = 0;
    goto LABEL_27;
  }

  v8 = v12[6];
  if (!v8)
  {
    goto LABEL_27;
  }

  v13 = (v11 + v8 + *(v11 + v8));
  v14 = *v13;
  if (v14)
  {
    v15 = 8 * v14;
    v16 = v13 + 1;
    while (1)
    {
      v18 = *v16;
      v19 = v16[1];
      v20 = sub_3187E8(a1, *v16, 1);
      if (!v20)
      {
        break;
      }

      v21 = &v20[-*v20];
      if (*v21 < 9u)
      {
        break;
      }

      v22 = *(v21 + 4);
      if (v22)
      {
        v23 = &v20[v22];
        v24 = *v23;
        if (*&v23[v24] <= v19)
        {
          break;
        }

        v25 = sub_318690(&v23[v24], v18 | (v19 << 32));
        if (!v25)
        {
          break;
        }

        v26 = (v25 + *(v25 - *v25 + 6));
        v27 = *v26;
        v17 = v26[1];
        if (v27 == a3)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v17 = -1;
        if (!a3)
        {
LABEL_11:
          if (v17 == HIDWORD(a3))
          {
            goto LABEL_22;
          }
        }
      }

LABEL_12:
      v16 += 2;
      v15 -= 8;
      if (!v15)
      {
LABEL_22:
        v28 = 2 * *v13;
        goto LABEL_24;
      }
    }

    v17 = -1;
    if (!a3)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v28 = 0;
  v16 = v13 + 1;
LABEL_24:
  if (v16 == &v13[v28 + 1])
  {
    goto LABEL_26;
  }

  v8 = *v16;
  v29 = v16[1] << 32;
  return v29 | v8;
}

unint64_t sub_3177A0(uint64_t a1, unint64_t a2)
{
  sub_2B365C(a1, a2, 0, (a1 + 7800));
  v3 = *(a1 + 7800);
  if (v3 == *(a1 + 7808))
  {
    return -1;
  }

  sub_2B7A20(a1, *v3, &v24);
  if (!v27)
  {
    if (__p == v26)
    {
      goto LABEL_11;
    }

    *&v28 = v24;
    *(&v28 + 1) = &__p;
    v29 = 0u;
    memset(v30, 0, 25);
    v11 = *__p;
    DWORD2(v30[0]) = v11;
    v12 = sub_2B4D24(v24, v11, 0);
    v13 = &v12[-*v12];
    v14 = *v13;
    if (v14 < 7)
    {
      HIDWORD(v30[0]) = 0;
      if (v14 < 5)
      {
        v16 = 0;
LABEL_16:
        v17 = (v16 + 4 * HIDWORD(v11) + 4 + *(v16 + 4 * HIDWORD(v11) + 4));
        *&v29 = v17;
        v18 = (v17 - *v17);
        v19 = *v18;
        if (v19 <= 6)
        {
          v22 = 0;
          *(&v29 + 1) = 0;
        }

        else
        {
          v20 = v18[3];
          if (v18[3])
          {
            v20 += v17 + *(v17 + v20);
          }

          *(&v29 + 1) = v20;
          if (v19 >= 0xB && (v21 = v18[5]) != 0)
          {
            v22 = v17 + v21 + *(v17 + v21);
          }

          else
          {
            v22 = 0;
          }
        }

        *&v30[0] = v22;
        goto LABEL_25;
      }
    }

    else
    {
      v15 = *(v13 + 3);
      if (*(v13 + 3))
      {
        LODWORD(v15) = *&v12[v15];
      }

      HIDWORD(v30[0]) = v15;
    }

    v16 = *(v13 + 2);
    if (v16)
    {
      v16 += &v12[*&v12[v16]];
    }

    goto LABEL_16;
  }

  if (__p != v26)
  {
    v4 = *(v26 - 1);
    v5 = sub_2B4D24(v24, v4, 0);
    v6 = &v5[*&v5[-*v5 + 4]];
    v7 = &v6[4 * HIDWORD(v4) + *v6];
    v8 = (v7 + 4 + *(v7 + 4));
    v9 = (v8 + *(v8 - *v8 + 6));
    LODWORD(v9) = *(v9 + *v9) - 1;
    *&v28 = v24;
    *(&v28 + 1) = &__p;
    v29 = 0u;
    v30[0] = 0u;
    LODWORD(v30[1]) = ((v26 - __p) >> 3) - 1;
    DWORD1(v30[1]) = v9;
    BYTE8(v30[1]) = 1;
    sub_318EF0(&v28);
    goto LABEL_25;
  }

LABEL_11:
  memset(v30, 0, sizeof(v30));
  v28 = 0u;
  v29 = 0u;
LABEL_25:
  result = sub_318DA8(&v28);
  if (__p)
  {
    v26 = __p;
    v23 = result;
    operator delete(__p);
    return v23;
  }

  return result;
}

void sub_317A00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_317A1C(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v10 = sub_318104(a1, *a2, *(a2 + 8));
  sub_3182C8(a1, v10, v28);
  if (a3 == a4)
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
  }

  else
  {
    v11 = sub_319A40(a1, *a2, *(a2 + 8));
    if (v11 && (v12 = (v11 - *v11), *v12 >= 0xDu) && (v13 = v12[6]) != 0)
    {
      v14 = (v11 + v13 + *(v11 + v13));
      v15 = (v14 - *v14);
      if (*v15 >= 5u && (v16 = v15[2]) != 0)
      {
        v17 = (v14 + v16 + *(v14 + v16));
      }

      else
      {
        v17 = 0;
      }

      sub_2CF504(v17, &__p);
    }

    else
    {
      __p = 0;
      v26 = 0;
      v27 = 0;
    }

    v18 = sub_319A40(a1, *a2, *(a2 + 8));
    if (v18)
    {
      v19 = (v18 - *v18);
      if (*v19 >= 0x1Du)
      {
        v20 = v19[14];
        if (v20)
        {
          if (*(v18 + v20 + *(v18 + v20)))
          {
            operator new();
          }
        }
      }
    }

    v21 = *(2 * a3);
    v22 = *(2 * a4);
    v23 = 0xAAAAAAAAAAAAAAABLL * ((v26 - __p) >> 2);
    a5[1] = 0;
    a5[2] = 0;
    *a5 = 0;
    if (v23 != v21 && v22 != 0)
    {
      operator new();
    }

    operator delete(0);
    if (__p)
    {
      v26 = __p;
      operator delete(__p);
    }
  }

  if (v28[0])
  {
    v28[1] = v28[0];
    operator delete(v28[0]);
  }
}

void sub_318058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v20 = *v17;
  if (*v17)
  {
    *(v17 + 8) = v20;
    operator delete(v20);
  }

  operator delete(v18);
  if (__p)
  {
    operator delete(__p);
    v21 = a13;
    if (a13)
    {
LABEL_8:
      operator delete(v21);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v21 = a13;
    if (a13)
    {
      goto LABEL_8;
    }
  }

  _Unwind_Resume(a1);
}

unint64_t sub_318104(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_319180(a1, a2, 1);
  if (!v6)
  {
    goto LABEL_26;
  }

  v7 = &v6[-*v6];
  if (*v7 < 5u)
  {
    goto LABEL_26;
  }

  v8 = *(v7 + 2);
  if (!v8)
  {
LABEL_27:
    v29 = 0xFFFFFFFF00000000;
    return v29 | v8;
  }

  v9 = &v6[v8];
  v10 = *v9;
  if (*&v9[v10] <= HIDWORD(a2) || (v11 = sub_3195D8(&v9[v10], a2)) == 0 || (v12 = (v11 - *v11), *v12 < 0xDu))
  {
LABEL_26:
    v8 = 0;
    goto LABEL_27;
  }

  v8 = v12[6];
  if (!v8)
  {
    goto LABEL_27;
  }

  v13 = (v11 + v8 + *(v11 + v8));
  v14 = *v13;
  if (v14)
  {
    v15 = 8 * v14;
    v16 = v13 + 1;
    while (1)
    {
      v18 = *v16;
      v19 = v16[1];
      v20 = sub_319180(a1, *v16, 1);
      if (!v20)
      {
        break;
      }

      v21 = &v20[-*v20];
      if (*v21 < 9u)
      {
        break;
      }

      v22 = *(v21 + 4);
      if (v22)
      {
        v23 = &v20[v22];
        v24 = *v23;
        if (*&v23[v24] <= v19)
        {
          break;
        }

        v25 = sub_319028(&v23[v24], v18 | (v19 << 32));
        if (!v25)
        {
          break;
        }

        v26 = (v25 + *(v25 - *v25 + 6));
        v27 = *v26;
        v17 = v26[1];
        if (v27 == a3)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v17 = -1;
        if (!a3)
        {
LABEL_11:
          if (v17 == HIDWORD(a3))
          {
            goto LABEL_22;
          }
        }
      }

LABEL_12:
      v16 += 2;
      v15 -= 8;
      if (!v15)
      {
LABEL_22:
        v28 = 2 * *v13;
        goto LABEL_24;
      }
    }

    v17 = -1;
    if (!a3)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v28 = 0;
  v16 = v13 + 1;
LABEL_24:
  if (v16 == &v13[v28 + 1])
  {
    goto LABEL_26;
  }

  v8 = *v16;
  v29 = v16[1] << 32;
  return v29 | v8;
}

void sub_3182C8(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = sub_319180(a1, a2, 1);
  if (v5 && (v6 = &v5[-*v5], *v6 >= 9u) && (v7 = *(v6 + 4)) != 0 && (v8 = &v5[v7], v9 = *v8, *&v8[v9] > HIDWORD(a2)) && (v10 = sub_319028(&v8[v9], a2)) != 0 && (v11 = v10, v12 = (v10 - *v10), v13 = *v12, v13 >= 9) && ((v14 = v12[4], v13 >= 0xF) ? (v15 = v14 == 0) : (v15 = 1), !v15 && v12[7]))
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v16 = *(v10 + v14 + *(v10 + v14));
    if (v16)
    {
      v17 = 0;
      v18 = 0;
      v19 = v10 + 1;
      v32 = v10 + 1;
      v33 = *(v10 + v14 + *(v10 + v14));
      do
      {
        while (1)
        {
          v20 = v11 - *v11;
          v21 = *(v19 + *(v20 + 7) + *(v11 + *(v20 + 7)) + v18);
          if (v21 == 1)
          {
            v22 = 0;
            v23 = 0x80000000;
          }

          else
          {
            v22 = v21 == 3 ? 0x40000000 : 0;
            v23 = 0;
          }

          v24 = *(&v19[2 * v18] + *(v20 + 4) + *(v11 + *(v20 + 4)));
          v25 = v24 & 0xFF000000000000;
          v26 = a3[2];
          if (v17 >= v26)
          {
            break;
          }

          *v17 = v24;
          *(v17 + 4) = WORD2(v24) | ((v25 != 0) << 29) | v22 | v23;
          v17 += 8;
          a3[1] = v17;
          if (v16 == ++v18)
          {
            goto LABEL_33;
          }
        }

        v27 = v17;
        v28 = v17 >> 3;
        v29 = v28 + 1;
        if ((v28 + 1) >> 61)
        {
          *a3 = 0;
          sub_1794();
        }

        if (v26 >> 2 > v29)
        {
          v29 = v26 >> 2;
        }

        if (v26 >= 0x7FFFFFFFFFFFFFF8)
        {
          v30 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v30 = v29;
        }

        if (v30)
        {
          if (!(v30 >> 61))
          {
            operator new();
          }

          *a3 = 0;
          sub_1808();
        }

        v31 = (8 * v28);
        *v31 = v24;
        v31[1] = WORD2(v24) | ((v25 != 0) << 29) | v22 | v23;
        v17 = 8 * v28 + 8;
        memcpy(0, 0, v27);
        a3[1] = v17;
        a3[2] = 0;
        v19 = v32;
        v16 = v33;
        a3[1] = v17;
        ++v18;
      }

      while (v33 != v18);
    }

LABEL_33:
    *a3 = 0;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_31856C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  *v12 = __p;
  if (__p)
  {
    v12[1] = __p;
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_31859C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  if (result && *result)
  {
    operator new();
  }

  *a2 = 0u;
  *(a2 + 16) = 0;
  return result;
}

void sub_318674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_318690(_DWORD *a1, unint64_t a2)
{
  v2 = HIDWORD(a2);
  if (!a1 || *a1 <= HIDWORD(a2))
  {
    v4 = a2;
    exception = __cxa_allocate_exception(0x40uLL);
    v12[0] = v2;
    v12[1] = v4;
    sub_2FF494(v12, &v9);
    sub_23E08("Flatbuffer vector requested index (object_index)", &v9, &v10);
    sub_30F54(" is out of range", &v10, &v11);
    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v11;
    }

    else
    {
      v6 = v11.__r_.__value_.__r.__words[0];
    }

    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v11.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v11.__r_.__value_.__l.__size_;
    }

    v8 = sub_2D390(exception, v6, size);
  }

  return &a1[v2 + 1] + a1[v2 + 1];
}

void sub_318768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

char *sub_3187E8(uint64_t a1, unsigned int a2, int a3)
{
  v22 = a3;
  v23 = a2;
  v21[0] = &v22;
  v21[1] = &v23;
  v3 = *(a1 + 3856) + 1;
  *(a1 + 3856) = v3;
  if (!*a1)
  {
    goto LABEL_34;
  }

  if (*(a1 + 2704) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 2712) = v3;
    v4 = *(a1 + 2720);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 2728) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 2736) = v3;
    v4 = *(a1 + 2744);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 2752) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 2760) = v3;
    v4 = *(a1 + 2768);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 2776) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 2784) = v3;
    v4 = *(a1 + 2792);
    if (v4)
    {
      return v4 + *v4;
    }
  }

  else
  {
    v6 = a1 + 16;
    v7 = *(a1 + 2760);
    v8 = *(a1 + 2736);
    v9 = *(a1 + 2712);
    v10 = v9 >= v3;
    if (v9 < v3)
    {
      v3 = *(a1 + 2712);
    }

    v11 = 112;
    if (v10)
    {
      v11 = 0;
    }

    v12 = v8 >= v3;
    if (v8 < v3)
    {
      v3 = *(a1 + 2736);
    }

    v13 = 113;
    if (v12)
    {
      v13 = v11;
    }

    if (v7 >= v3)
    {
      v14 = v3;
    }

    else
    {
      v14 = *(a1 + 2760);
    }

    v15 = *(a1 + 2784);
    if (v7 >= v3)
    {
      v16 = v13;
    }

    else
    {
      v16 = 114;
    }

    v18 = sub_2D52A4(*a1, 28, a2, 1);
    v19 = 115;
    if (v15 >= v14)
    {
      v19 = v16;
    }

    v20 = v6 + 24 * v19;
    *v20 = v23;
    *(v20 + 8) = *(a1 + 3856);
    *(v20 + 16) = v18;
    if (v18)
    {
      return v18 + *v18;
    }
  }

LABEL_34:
  sub_3189BC(v21);
  return 0;
}

uint64_t sub_3189BC(int **a1)
{
  v1 = **a1;
  if (v1 != 1)
  {
    if (!v1)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = *a1[1];
      v11[0] = sub_7FCF0(0x1Cu);
      v11[1] = v5;
      sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", v11, v13);
      if ((v14 & 0x80u) == 0)
      {
        v6 = v13;
      }

      else
      {
        v6 = v13[0];
      }

      if ((v14 & 0x80u) == 0)
      {
        v7 = v14;
      }

      else
      {
        v7 = v13[1];
      }

      v8 = sub_2D390(exception, v6, v7);
    }

    v9 = __cxa_allocate_exception(0x40uLL);
    v10 = sub_2D390(v9, "Unknown data access error policy", 0x20uLL);
  }

  return 0;
}

void sub_318AB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_318AE8(uint64_t a1, char *__dst, _DWORD *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if ((0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 2)) < a5)
  {
    v8 = *a1;
    v9 = a5 - 0x5555555555555555 * (&v6[-*a1] >> 2);
    if (v9 > 0x1555555555555555)
    {
      sub_1794();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x1555555555555555)
      {
        operator new();
      }

      sub_1808();
    }

    v28 = 4 * ((__dst - v8) >> 2);
    v29 = 12 * a5;
    v30 = v28 + 12 * a5;
    v31 = v28;
    do
    {
      v32 = *__src;
      *(v31 + 8) = __src[2];
      *v31 = v32;
      v31 += 12;
      __src += 3;
      v29 -= 12;
    }

    while (v29);
    v33 = *(a1 + 8) - __dst;
    memcpy((v28 + 12 * a5), __dst, v33);
    v35 = v30 + v33;
    *(a1 + 8) = v5;
    v36 = *a1;
    v37 = v5 - *a1;
    v38 = v28 - v37;
    memcpy((v28 - v37), *a1, v37);
    *a1 = v38;
    *(a1 + 8) = v35;
    *(a1 + 16) = 0;
    if (v36)
    {
      operator delete(v36);
    }

    return v28;
  }

  v12 = v6 - __dst;
  if ((0xAAAAAAAAAAAAAAABLL * ((v6 - __dst) >> 2)) >= a5)
  {
    v12 = 12 * a5;
    v23 = &__dst[12 * a5];
    v24 = &v6[-12 * a5];
    for (i = *(a1 + 8); v24 < v6; v24 += 12)
    {
      v26 = *v24;
      *(i + 8) = *(v24 + 2);
      *i = v26;
      i += 12;
    }

    *(a1 + 8) = i;
    if (v6 == v23)
    {
      goto LABEL_25;
    }

    v21 = v6 - v23;
    v22 = &v6[-v21];
    goto LABEL_24;
  }

  v13 = __src + v12;
  v14 = *(a1 + 8);
  for (j = v14; v13 != a4; v14 += 12)
  {
    v16 = *v13;
    *(j + 8) = *(v13 + 2);
    *j = v16;
    j += 12;
    v13 += 12;
  }

  *(a1 + 8) = v14;
  if (v12 >= 1)
  {
    v17 = &__dst[12 * a5];
    v18 = v14 - 12 * a5;
    for (k = v14; v18 < v6; v18 += 12)
    {
      v20 = *v18;
      *(k + 8) = *(v18 + 8);
      *k = v20;
      k += 12;
    }

    *(a1 + 8) = k;
    if (j == v17)
    {
      goto LABEL_25;
    }

    v21 = v14 - v17;
    v22 = &__dst[12 * a5];
LABEL_24:
    v27 = __src;
    memmove(v22, __dst, v21);
    __src = v27;
LABEL_25:
    memmove(v5, __src, v12);
  }

  return v5;
}

unint64_t sub_318DA8(uint64_t a1)
{
  v2 = *(a1 + 24) + 4 * *(a1 + 52);
  v3 = *(v2 + 4);
  v4 = *(v2 + 6);
  v5 = sub_57A90(*(a1 + 40));
  v6 = *(a1 + 40) & ~(-1 << (v5 & 0xFE));
  v7 = sub_581D8(v6);
  v8 = sub_581D8(v6 >> 1);
  v9 = 1 << -(v5 >> 1);
  if (v5 < 2)
  {
    v9 = -2;
  }

  v10 = v9 * v8 + 4 * v4;
  if (v10 >= 0xFFFFFFFE)
  {
    v11 = 4294967294;
  }

  else
  {
    v11 = v10;
  }

  return (v9 * v7 + 4 * v3) | (v11 << 32);
}

char *sub_318EF0(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *a1;
  v5 = *(**(a1 + 8) + 8 * v2);
  *(a1 + 40) = v5;
  result = sub_2B4D24(v3, v5, 0);
  v7 = &result[-*result];
  if (*v7 >= 7u)
  {
    v8 = *(v7 + 3);
    if (v8)
    {
      LODWORD(v8) = *&result[v8];
    }

    *(a1 + 44) = v8;
    v9 = &result[-*result];
    if (*v9 >= 5u)
    {
      goto LABEL_5;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  *(a1 + 44) = 0;
  v9 = &result[-*result];
  if (*v9 < 5u)
  {
    goto LABEL_8;
  }

LABEL_5:
  v10 = *(v9 + 2);
  if (v10)
  {
    v10 += &result[*&result[v10]];
  }

LABEL_9:
  v11 = (v10 + 4 * HIDWORD(v5) + 4 + *(v10 + 4 * HIDWORD(v5) + 4));
  *(a1 + 16) = v11;
  v12 = (v11 - *v11);
  v13 = *v12;
  if (v13 <= 6)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  else
  {
    v14 = v12[3];
    if (v12[3])
    {
      v14 += v11 + *(v11 + v14);
    }

    *(a1 + 24) = v14;
    if (v13 >= 0xB && (v15 = v12[5]) != 0)
    {
      *(a1 + 32) = v11 + v15 + *(v11 + v15);
    }

    else
    {
      *(a1 + 32) = 0;
    }
  }

  return result;
}

uint64_t sub_319028(_DWORD *a1, unint64_t a2)
{
  v2 = HIDWORD(a2);
  if (!a1 || *a1 <= HIDWORD(a2))
  {
    v4 = a2;
    exception = __cxa_allocate_exception(0x40uLL);
    v12[0] = v2;
    v12[1] = v4;
    sub_2FF494(v12, &v9);
    sub_23E08("Flatbuffer vector requested index (object_index)", &v9, &v10);
    sub_30F54(" is out of range", &v10, &v11);
    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v11;
    }

    else
    {
      v6 = v11.__r_.__value_.__r.__words[0];
    }

    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v11.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v11.__r_.__value_.__l.__size_;
    }

    v8 = sub_2D390(exception, v6, size);
  }

  return &a1[v2 + 1] + a1[v2 + 1];
}

void sub_319100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

char *sub_319180(uint64_t a1, unsigned int a2, int a3)
{
  v22 = a3;
  v23 = a2;
  v21[0] = &v22;
  v21[1] = &v23;
  v3 = *(a1 + 3856) + 1;
  *(a1 + 3856) = v3;
  if (!*a1)
  {
    goto LABEL_34;
  }

  if (*(a1 + 3184) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 3192) = v3;
    v4 = *(a1 + 3200);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 3208) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 3216) = v3;
    v4 = *(a1 + 3224);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 3232) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 3240) = v3;
    v4 = *(a1 + 3248);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 3256) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 3264) = v3;
    v4 = *(a1 + 3272);
    if (v4)
    {
      return v4 + *v4;
    }
  }

  else
  {
    v6 = a1 + 16;
    v7 = *(a1 + 3240);
    v8 = *(a1 + 3216);
    v9 = *(a1 + 3192);
    v10 = v9 >= v3;
    if (v9 < v3)
    {
      v3 = *(a1 + 3192);
    }

    v11 = 132;
    if (v10)
    {
      v11 = 0;
    }

    v12 = v8 >= v3;
    if (v8 < v3)
    {
      v3 = *(a1 + 3216);
    }

    v13 = 133;
    if (v12)
    {
      v13 = v11;
    }

    if (v7 >= v3)
    {
      v14 = v3;
    }

    else
    {
      v14 = *(a1 + 3240);
    }

    v15 = *(a1 + 3264);
    if (v7 >= v3)
    {
      v16 = v13;
    }

    else
    {
      v16 = 134;
    }

    v18 = sub_2D52A4(*a1, 33, a2, 1);
    v19 = 135;
    if (v15 >= v14)
    {
      v19 = v16;
    }

    v20 = v6 + 24 * v19;
    *v20 = v23;
    *(v20 + 8) = *(a1 + 3856);
    *(v20 + 16) = v18;
    if (v18)
    {
      return v18 + *v18;
    }
  }

LABEL_34:
  sub_319354(v21);
  return 0;
}

uint64_t sub_319354(int **a1)
{
  v1 = **a1;
  if (v1 != 1)
  {
    if (!v1)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = *a1[1];
      v11[0] = sub_7FCF0(0x21u);
      v11[1] = v5;
      sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", v11, v13);
      if ((v14 & 0x80u) == 0)
      {
        v6 = v13;
      }

      else
      {
        v6 = v13[0];
      }

      if ((v14 & 0x80u) == 0)
      {
        v7 = v14;
      }

      else
      {
        v7 = v13[1];
      }

      v8 = sub_2D390(exception, v6, v7);
    }

    v9 = __cxa_allocate_exception(0x40uLL);
    v10 = sub_2D390(v9, "Unknown data access error policy", 0x20uLL);
  }

  return 0;
}

void sub_319450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_319480(_DWORD *a1, unint64_t a2)
{
  v2 = HIDWORD(a2);
  if (!a1 || *a1 <= HIDWORD(a2))
  {
    v4 = a2;
    exception = __cxa_allocate_exception(0x40uLL);
    v12[0] = v2;
    v12[1] = v4;
    sub_2FF494(v12, &v9);
    sub_23E08("Flatbuffer vector requested index (object_index)", &v9, &v10);
    sub_30F54(" is out of range", &v10, &v11);
    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v11;
    }

    else
    {
      v6 = v11.__r_.__value_.__r.__words[0];
    }

    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v11.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v11.__r_.__value_.__l.__size_;
    }

    v8 = sub_2D390(exception, v6, size);
  }

  return &a1[v2 + 1] + a1[v2 + 1];
}

void sub_319558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_3195D8(_DWORD *a1, unint64_t a2)
{
  v2 = HIDWORD(a2);
  if (!a1 || *a1 <= HIDWORD(a2))
  {
    v4 = a2;
    exception = __cxa_allocate_exception(0x40uLL);
    v12[0] = v2;
    v12[1] = v4;
    sub_2FF494(v12, &v9);
    sub_23E08("Flatbuffer vector requested index (object_index)", &v9, &v10);
    sub_30F54(" is out of range", &v10, &v11);
    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v11;
    }

    else
    {
      v6 = v11.__r_.__value_.__r.__words[0];
    }

    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v11.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v11.__r_.__value_.__l.__size_;
    }

    v8 = sub_2D390(exception, v6, size);
  }

  return &a1[v2 + 1] + a1[v2 + 1];
}

void sub_3196B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_319730(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = sub_3187E8(a1, v3, 1);
  if (!v4)
  {
    return 0;
  }

  v5 = &v4[-*v4];
  if (*v5 < 7u)
  {
    return 0;
  }

  v6 = *(v5 + 3);
  if (!*(v5 + 3))
  {
    return 0;
  }

  v7 = HIDWORD(v3);
  v8 = *&v4[v6];
  v9 = &v4[v6 + v8];
  if (*v9 <= HIDWORD(v3))
  {
    return 0;
  }

  v10 = 4 * v7;
  v11 = &v9[4 * v7];
  v12 = *(v11 + 1);
  v13 = &v11[v12 + 4];
  v14 = &v13[-*v13];
  if (*v14 < 5u)
  {
    return 0;
  }

  v15 = *(v14 + 2);
  if (!v15)
  {
    return 0;
  }

  v16 = &v13[v15];
  v17 = *v16;
  v18 = *&v16[v17];
  if (!v18)
  {
    return 0;
  }

  v19 = 0;
  v20 = 4 * v18;
  v21 = &v4[v15 + v12 + v8 + v6 + v10 + v17];
  while (1)
  {
    v22 = &v21[v19];
    v23 = *&v21[v19 + 8];
    v24 = &v21[v19 + v23 - *&v21[v19 + 8 + v23]];
    v25 = *&v21[v19 + 8 + v23 + v24[6]] == *a2 && HIDWORD(*&v21[v19 + 8 + v23 + v24[6]]) == *(a2 + 4);
    v26 = v25;
    if (v25)
    {
      v27 = *&v22[v23 + 8 + v24[7]] == *(a2 + 8) && HIDWORD(*&v22[v23 + 8 + v24[7]]) == *(a2 + 12);
      v26 = v27;
      if (v27)
      {
        v28 = *&v22[v23 + 8 + v24[8]] == *(a2 + 16) && HIDWORD(*&v22[v23 + 8 + v24[8]]) == *(a2 + 20);
        v26 = v28;
        if (v28)
        {
          v29 = *&v22[v23 + 8 + v24[9]];
          v26 = v29 == *(a2 + 24) && HIDWORD(v29) == *(a2 + 28);
        }
      }
    }

    if (v26)
    {
      break;
    }

    v19 += 4;
    if (v20 == v19)
    {
      return 0;
    }
  }

  return &v4[v10 + 8 + v17 + v15 + v12 + v8 + v6 + v23 + v19];
}

uint64_t *sub_319924(uint64_t *result, _WORD *a2)
{
  v2 = *result;
  v4 = *(*result + 8);
  v3 = *(*result + 16);
  if (v4 >= v3)
  {
    v5 = *v2;
    v6 = v4 - *v2;
    v7 = v6 >> 1;
    if (v6 >> 1 <= -2)
    {
      sub_1794();
    }

    v8 = v3 - v5;
    if (v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    else
    {
      v9 = v8;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      if ((v10 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1808();
    }

    v11 = result;
    *(2 * v7) = *a2;
    v12 = 2 * v7 + 2;
    memcpy(0, v5, v6);
    *v2 = 0;
    *(v2 + 8) = v12;
    *(v2 + 16) = 0;
    if (v5)
    {
      operator delete(v5);
    }

    result = v11;
    *(v2 + 8) = v12;
  }

  else
  {
    *v4 = *a2;
    *(v2 + 8) = v4 + 1;
  }

  return result;
}

uint64_t sub_319A40(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_319180(a1, a2, 1);
  if (!v5)
  {
    return 0;
  }

  v6 = &v5[-*v5];
  if (*v6 < 7u)
  {
    return 0;
  }

  v7 = *(v6 + 3);
  if (!*(v6 + 3))
  {
    return 0;
  }

  v8 = HIDWORD(a2);
  v9 = *&v5[v7];
  v10 = &v5[v7 + v9];
  if (*v10 <= HIDWORD(a2))
  {
    return 0;
  }

  v11 = 4 * v8;
  v12 = &v10[4 * v8];
  v13 = *(v12 + 1);
  v14 = &v12[v13 + 4];
  v15 = &v14[-*v14];
  if (*v15 < 5u)
  {
    return 0;
  }

  v16 = *(v15 + 2);
  if (!v16)
  {
    return 0;
  }

  v17 = &v14[v16];
  v18 = *v17;
  v19 = *&v17[v18];
  if (!v19)
  {
    return 0;
  }

  v20 = 0;
  v21 = 4 * v19;
  v22 = &v5[v16 + v13 + v9 + v7 + v11 + v18];
  while (1)
  {
    v23 = *&v22[v20 + 8];
    v24 = &v22[v20 + v23 - *&v22[v20 + 8 + v23]];
    if (*&v22[v20 + 8 + v23 + *(v24 + 8)] == a3 && *&v22[v20 + 8 + v23 + *(v24 + 7)] == a2)
    {
      break;
    }

    v20 += 4;
    if (v21 == v20)
    {
      return 0;
    }
  }

  return &v5[v11 + 8 + v18 + v16 + v13 + v9 + v7 + v23 + v20];
}

uint64_t sub_319BB0(int **a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v4 = sub_311544(a1);
  }

  else
  {
    v4 = sub_3116D0(a1);
  }

  sub_2B365C(a3, v4, 0, (a3 + 7800));
  v5 = *(a3 + 7800);
  v6 = *(a3 + 7808);
  if (v6 != v5)
  {
    if (((v6 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return 0x1000000000000;
}

char *sub_31A0AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = a3 & 0xFFFFFFFFFFFFLL;
  v9 = sub_31A1FC(a1, a3 & 0xFFFFFFFFFFFFLL);
  v10 = sub_31A1FC(a1, *(a2 + 32) & 0xFFFFFFFFFFFFFFLL);
  sub_455D0(v9, v10);
  v12 = v8 | ((v11 >= 90.0) << 48);
  v13 = sub_2B51D8(a1, v8);
  if (*(a1 + 7772) == 1)
  {
    v14 = sub_30C50C(a1 + 3896, a3, 0);
    v15 = &v14[-*v14];
    if (*v15 < 5u)
    {
      v16 = 0;
    }

    else
    {
      v16 = *(v15 + 2);
      if (v16)
      {
        v16 += &v14[*&v14[v16]];
      }
    }

    v17 = v16 + ((a3 >> 30) & 0x3FFFC) + 4 + *(v16 + ((a3 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v17 = 0;
  }

  result = sub_31D7E8(a1, v8, 1);
  *a4 = v13;
  a4[1] = v17;
  a4[2] = result;
  a4[3] = v19;
  a4[4] = v12;
  return result;
}

double sub_31A1FC(uint64_t a1, unint64_t a2)
{
  sub_2B7A20(a1, a2, v15);
  v2 = __p;
  if (__p == v17)
  {
    i = NAN;
    if (!__p)
    {
      return i;
    }

    goto LABEL_19;
  }

  v3 = sub_31A76C(v15);
  v5 = v4;
  v6 = sub_31AA0C(v15);
  if (v3 == v6 && !((v6 ^ v3) >> 32) && v5 == v7)
  {
    i = NAN;
    goto LABEL_18;
  }

  v9 = sub_31A76C(v15);
  v10 = sub_31AA0C(v15);
  if (v10 == v9)
  {
    v11 = HIDWORD(v9);
    v12 = HIDWORD(v10);
    i = 0.0;
    if (HIDWORD(v9) == HIDWORD(v10))
    {
      goto LABEL_18;
    }
  }

  else
  {
    v12 = HIDWORD(v10);
    v11 = HIDWORD(v9);
  }

  v13 = -(v9 - v10);
  if (v10 - v9 < (v9 - v10))
  {
    v13 = (v10 - v9);
  }

    ;
  }

    ;
  }

LABEL_18:
  v2 = __p;
  if (__p)
  {
LABEL_19:
    v17 = v2;
    operator delete(v2);
  }

  return i;
}

void sub_31A390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_31A3B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2B7A20(a1, *(a2 + 32) & 0xFFFFFFFFFFFFFFLL, v46);
  sub_2B7A20(a1, *(a3 + 32) & 0xFFFFFFFFFFFFFFLL, &v43);
  if (v47 == v48 || __p == v45)
  {
    v40 = 0;
    v41 = __p;
    if (!__p)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  v5 = sub_31A76C(&v43);
  v6 = sub_31AA0C(&v43);
  v7 = sub_31A76C(v46);
  v8 = v6 - v5;
  v9 = HIDWORD(v6) - HIDWORD(v5);
  v10 = v8 * v8 + v9 * v9;
  if (v10 != 0.0)
  {
    v11 = -v10;
    if (v10 > 0.0)
    {
      v11 = v8 * v8 + v9 * v9;
    }

    if (v11 >= 2.22044605e-16)
    {
      v12 = (v8 * (v7 - v5) + v9 * (HIDWORD(v7) - HIDWORD(v5))) / v10;
      if (v12 > 0.0 && v12 < 1.0)
      {
        goto LABEL_42;
      }
    }
  }

  v14 = sub_31A76C(v46);
  v15 = sub_31AA0C(v46);
  v16 = sub_31A76C(&v43);
  v17 = v15 - v14;
  v18 = HIDWORD(v15) - HIDWORD(v14);
  v19 = v17 * v17 + v18 * v18;
  if (v19 != 0.0)
  {
    v20 = -v19;
    if (v19 > 0.0)
    {
      v20 = v17 * v17 + v18 * v18;
    }

    if (v20 >= 2.22044605e-16)
    {
      v21 = (v17 * (v16 - v14) + v18 * (HIDWORD(v16) - HIDWORD(v14))) / v19;
      if (v21 > 0.0 && v21 < 1.0)
      {
        goto LABEL_42;
      }
    }
  }

  v23 = sub_31A76C(&v43);
  v24 = sub_31AA0C(&v43);
  v25 = sub_31AA0C(v46);
  v26 = v24 - v23;
  v27 = HIDWORD(v24) - HIDWORD(v23);
  v28 = v26 * v26 + v27 * v27;
  if (v28 != 0.0)
  {
    v29 = -v28;
    if (v28 > 0.0)
    {
      v29 = v26 * v26 + v27 * v27;
    }

    if (v29 >= 2.22044605e-16)
    {
      v30 = (v26 * (v25 - v23) + v27 * (HIDWORD(v25) - HIDWORD(v23))) / v28;
      if (v30 > 0.0 && v30 < 1.0)
      {
LABEL_42:
        v40 = 1;
        v41 = __p;
        if (!__p)
        {
          goto LABEL_39;
        }

LABEL_38:
        v45 = v41;
        operator delete(v41);
        goto LABEL_39;
      }
    }
  }

  v32 = sub_31A76C(v46);
  v33 = sub_31AA0C(v46);
  v34 = sub_31AA0C(&v43);
  v35 = v33 - v32;
  v36 = HIDWORD(v33) - HIDWORD(v32);
  v37 = v35 * v35 + v36 * v36;
  if (v37 == 0.0)
  {
    goto LABEL_31;
  }

  v38 = -v37;
  if (v37 > 0.0)
  {
    v38 = v35 * v35 + v36 * v36;
  }

  if (v38 < 2.22044605e-16)
  {
LABEL_31:
    v39 = 0.0;
  }

  else
  {
    v39 = (v35 * (v34 - v32) + v36 * (HIDWORD(v34) - HIDWORD(v32))) / v37;
  }

  v40 = v39 < 1.0 && v39 > 0.0;
  v41 = __p;
  if (__p)
  {
    goto LABEL_38;
  }

LABEL_39:
  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }

  return v40;
}

void sub_31A6F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
    v17 = a15;
    if (!a15)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v17 = a15;
    if (!a15)
    {
      goto LABEL_3;
    }
  }

  operator delete(v17);
  _Unwind_Resume(exception_object);
}

void sub_31A75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a15)
  {
    JUMPOUT(0x31A74CLL);
  }

  JUMPOUT(0x31A734);
}

unint64_t sub_31A76C(uint64_t a1)
{
  v1 = a1 + 8;
  if (!*(a1 + 32))
  {
    v17 = *(a1 + 8);
    if (v17 == *(a1 + 16))
    {
      goto LABEL_12;
    }

    *&v35[0] = *a1;
    *(&v35[0] + 1) = a1 + 8;
    memset(&v35[1] + 8, 0, 33);
    v18 = *v17;
    DWORD2(v35[2]) = v18;
    v19 = sub_2B4D24(*&v35[0], v18, 0);
    v20 = &v19[-*v19];
    v21 = *v20;
    if (v21 < 7)
    {
      HIDWORD(v35[2]) = 0;
      if (v21 < 5)
      {
        v24 = 0;
        goto LABEL_27;
      }
    }

    else
    {
      v22 = *(v20 + 3);
      if (*(v20 + 3))
      {
        LODWORD(v22) = *&v19[v22];
      }

      HIDWORD(v35[2]) = v22;
    }

    v24 = *(v20 + 2);
    if (v24)
    {
      v24 += &v19[*&v19[v24]];
    }

LABEL_27:
    v25 = (v24 + 4 * HIDWORD(v18) + 4 + *(v24 + 4 * HIDWORD(v18) + 4));
    *&v35[1] = v25;
    v30 = (v25 - *v25);
    v31 = *v30;
    if (v31 > 6)
    {
      v32 = v30[3];
      if (v30[3])
      {
        v32 += v25 + *(v25 + v32);
      }

      *(&v35[1] + 1) = v32;
      if (v31 < 0xB)
      {
        goto LABEL_34;
      }

      v29 = v30[5];
      if (!v29)
      {
        goto LABEL_34;
      }

LABEL_32:
      v33 = v25 + v29 + *(v25 + v29);
LABEL_35:
      *&v35[2] = v33;
      return sub_318DA8(v35);
    }

LABEL_33:
    v33 = 0;
    *(&v35[1] + 1) = 0;
    goto LABEL_35;
  }

  v2 = *(a1 + 16);
  if (*(a1 + 8) != v2)
  {
    v3 = *(v2 - 8);
    v5 = sub_2B4D24(*a1, v3, 0);
    v6 = &v5[*&v5[-*v5 + 4]];
    v7 = &v6[4 * HIDWORD(v3) + *v6];
    v8 = (v7 + 4 + *(v7 + 4));
    v9 = *(a1 + 8);
    v10 = ((*(a1 + 16) - v9) >> 3) - 1;
    v11 = (v8 + *(v8 - *v8 + 6));
    LODWORD(v11) = *(v11 + *v11) - 1;
    *&v35[0] = *a1;
    *(&v35[0] + 1) = v1;
    *(&v35[2] + 1) = 0;
    *(&v35[1] + 8) = 0uLL;
    *&v35[3] = __PAIR64__(v11, v10);
    BYTE8(v35[3]) = 1;
    v12 = *(v9 + 8 * v10);
    DWORD2(v35[2]) = v12;
    v13 = sub_2B4D24(*&v35[0], v12, 0);
    v14 = &v13[-*v13];
    v15 = *v14;
    if (v15 < 7)
    {
      HIDWORD(v35[2]) = 0;
      if (v15 < 5)
      {
        v23 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      v16 = *(v14 + 3);
      if (*(v14 + 3))
      {
        LODWORD(v16) = *&v13[v16];
      }

      HIDWORD(v35[2]) = v16;
    }

    v23 = *(v14 + 2);
    if (v23)
    {
      v23 += &v13[*&v13[v23]];
    }

LABEL_20:
    v25 = (v23 + 4 * HIDWORD(v12) + 4 + *(v23 + 4 * HIDWORD(v12) + 4));
    *&v35[1] = v25;
    v26 = (v25 - *v25);
    v27 = *v26;
    if (v27 > 6)
    {
      v28 = v26[3];
      if (v26[3])
      {
        v28 += v25 + *(v25 + v28);
      }

      *(&v35[1] + 1) = v28;
      if (v27 < 0xB || (v29 = v26[5]) == 0)
      {
LABEL_34:
        v33 = 0;
        goto LABEL_35;
      }

      goto LABEL_32;
    }

    goto LABEL_33;
  }

LABEL_12:
  memset(v35, 0, sizeof(v35));
  return sub_318DA8(v35);
}

unint64_t sub_31AA0C(uint64_t a1)
{
  v1 = a1 + 8;
  if (!*(a1 + 32))
  {
    v8 = *(a1 + 16);
    if (*(a1 + 8) == v8)
    {
      goto LABEL_12;
    }

    v9 = *(v8 - 8);
    v11 = sub_2B4D24(*a1, v9, 0);
    v12 = &v11[*&v11[-*v11 + 4]];
    v13 = &v12[4 * HIDWORD(v9) + *v12];
    v14 = (v13 + 4 + *(v13 + 4));
    v15 = *(a1 + 8);
    v16 = ((*(a1 + 16) - v15) >> 3) - 1;
    v17 = (v14 + *(v14 - *v14 + 6));
    LODWORD(v17) = *(v17 + *v17) - 1;
    *&v35[0] = *a1;
    *(&v35[0] + 1) = v1;
    *(&v35[2] + 1) = 0;
    *(&v35[1] + 8) = 0uLL;
    *&v35[3] = __PAIR64__(v17, v16);
    BYTE8(v35[3]) = 0;
    v18 = *(v15 + 8 * v16);
    DWORD2(v35[2]) = v18;
    v19 = sub_2B4D24(*&v35[0], v18, 0);
    v20 = &v19[-*v19];
    v21 = *v20;
    if (v21 < 7)
    {
      HIDWORD(v35[2]) = 0;
      if (v21 < 5)
      {
        v24 = 0;
        goto LABEL_27;
      }
    }

    else
    {
      v22 = *(v20 + 3);
      if (*(v20 + 3))
      {
        LODWORD(v22) = *&v19[v22];
      }

      HIDWORD(v35[2]) = v22;
    }

    v24 = *(v20 + 2);
    if (v24)
    {
      v24 += &v19[*&v19[v24]];
    }

LABEL_27:
    v25 = (v24 + 4 * HIDWORD(v18) + 4 + *(v24 + 4 * HIDWORD(v18) + 4));
    *&v35[1] = v25;
    v30 = (v25 - *v25);
    v31 = *v30;
    if (v31 > 6)
    {
      v32 = v30[3];
      if (v30[3])
      {
        v32 += v25 + *(v25 + v32);
      }

      *(&v35[1] + 1) = v32;
      if (v31 < 0xB)
      {
        goto LABEL_34;
      }

      v29 = v30[5];
      if (!v29)
      {
        goto LABEL_34;
      }

LABEL_32:
      v33 = v25 + v29 + *(v25 + v29);
LABEL_35:
      *&v35[2] = v33;
      return sub_318DA8(v35);
    }

LABEL_33:
    v33 = 0;
    *(&v35[1] + 1) = 0;
    goto LABEL_35;
  }

  v2 = *(a1 + 8);
  if (v2 != *(a1 + 16))
  {
    *&v35[0] = *a1;
    *(&v35[0] + 1) = a1 + 8;
    memset(&v35[1] + 8, 0, 32);
    BYTE8(v35[3]) = 1;
    v3 = *v2;
    DWORD2(v35[2]) = v3;
    v4 = sub_2B4D24(*&v35[0], v3, 0);
    v5 = &v4[-*v4];
    v6 = *v5;
    if (v6 < 7)
    {
      HIDWORD(v35[2]) = 0;
      if (v6 < 5)
      {
        v23 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      v7 = *(v5 + 3);
      if (*(v5 + 3))
      {
        LODWORD(v7) = *&v4[v7];
      }

      HIDWORD(v35[2]) = v7;
    }

    v23 = *(v5 + 2);
    if (v23)
    {
      v23 += &v4[*&v4[v23]];
    }

LABEL_20:
    v25 = (v23 + 4 * HIDWORD(v3) + 4 + *(v23 + 4 * HIDWORD(v3) + 4));
    *&v35[1] = v25;
    v26 = (v25 - *v25);
    v27 = *v26;
    if (v27 > 6)
    {
      v28 = v26[3];
      if (v26[3])
      {
        v28 += v25 + *(v25 + v28);
      }

      *(&v35[1] + 1) = v28;
      if (v27 < 0xB || (v29 = v26[5]) == 0)
      {
LABEL_34:
        v33 = 0;
        goto LABEL_35;
      }

      goto LABEL_32;
    }

    goto LABEL_33;
  }

LABEL_12:
  memset(v35, 0, sizeof(v35));
  return sub_318DA8(v35);
}

double sub_31ACAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2B7A20(a1, *(a2 + 32) & 0xFFFFFFFFFFFFFFLL, v26);
  sub_2B7A20(a1, *(a3 + 32) & 0xFFFFFFFFFFFFFFLL, v23);
  if (v27 == v28 || __p == v25)
  {
    v16 = 1.79769313e308;
    v17 = __p;
    if (!__p)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v5 = sub_31A76C(v26);
  v21 = v5;
  v22 = v6;
  v19 = sub_31AA0C(v26);
  v20 = v7;
  v8 = sub_31A76C(v23);
  v9 = v8;
  v10 = v19 - v5;
  v11 = HIDWORD(v19) - HIDWORD(v5);
  v12 = v10 * v10 + v11 * v11;
  if (v12 == 0.0)
  {
    goto LABEL_7;
  }

  v13 = -v12;
  if (v12 > 0.0)
  {
    v13 = v10 * v10 + v11 * v11;
  }

  if (v13 < 2.22044605e-16)
  {
LABEL_7:
    v14 = 0.0;
  }

  else
  {
    v14 = ((v8 - v5) * v10 + (HIDWORD(v8) - HIDWORD(v5)) * v11) / v12;
  }

  v15 = sub_6EFC0(&v21, &v19, v14);
  v16 = sqrt(((v15 - v9) * (v15 - v9) + (HIDWORD(v15) - HIDWORD(v9)) * (HIDWORD(v15) - HIDWORD(v9)))) / 100.0;
  v17 = __p;
  if (__p)
  {
LABEL_11:
    v25 = v17;
    operator delete(v17);
  }

LABEL_12:
  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  return v16;
}

void sub_31AE44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
    v21 = a19;
    if (!a19)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v21 = a19;
    if (!a19)
    {
      goto LABEL_3;
    }
  }

  operator delete(v21);
  _Unwind_Resume(exception_object);
}

uint64_t sub_31AE98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2B7A20(a1, *(a2 + 32) & 0xFFFFFFFFFFFFFFLL, v16);
  sub_2B7A20(a1, *(a3 + 32) & 0xFFFFFFFFFFFFFFLL, &v13);
  if (v17 == v18 || __p == v15)
  {
    v10 = 2;
    v11 = __p;
    if (!__p)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = sub_31A76C(v16);
    v6 = sub_31AA0C(v16);
    v7 = sub_31AA0C(&v13);
    v8 = (HIDWORD(v5) - HIDWORD(v6)) * (v7 - v6) - (v5 - v6) * (HIDWORD(v7) - HIDWORD(v6));
    if (v8 == 0.0)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    if (v8 >= 0.0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = __p;
    if (!__p)
    {
      goto LABEL_13;
    }
  }

  v15 = v11;
  operator delete(v11);
LABEL_13:
  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  return v10;
}

void sub_31AFA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
    v17 = a15;
    if (!a15)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v17 = a15;
    if (!a15)
    {
      goto LABEL_3;
    }
  }

  operator delete(v17);
  _Unwind_Resume(exception_object);
}

BOOL sub_31AFF8(uint64_t a1, int **a2, uint64_t a3, double a4)
{
  v5 = a2[1];
  v6 = (v5 - *v5);
  v7 = *v6;
  if (*(a2 + 38))
  {
    if (v7 < 5)
    {
      goto LABEL_11;
    }

    v8 = v6[2];
    if (!v8)
    {
      goto LABEL_11;
    }
  }

  else if (v7 < 9 || (v8 = v6[4]) == 0)
  {
LABEL_11:
    v9 = 0;
    v10 = *(a3 + 8);
    v11 = (v10 - *v10);
    v12 = *v11;
    if (*(a3 + 38))
    {
      goto LABEL_12;
    }

LABEL_8:
    if (v12 >= 5)
    {
      v13 = v11[2];
      if (v13)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_15;
  }

  v9 = *(v5 + v8);
  v10 = *(a3 + 8);
  v11 = (v10 - *v10);
  v12 = *v11;
  if (!*(a3 + 38))
  {
    goto LABEL_8;
  }

LABEL_12:
  if (v12 >= 9)
  {
    v13 = v11[4];
    if (v13)
    {
LABEL_14:
      v14 = *(v10 + v13);
      goto LABEL_16;
    }
  }

LABEL_15:
  v14 = 0;
LABEL_16:
  v15 = v9 + 18000;
  v16 = v9 - 18000;
  if ((v15 >> 5) < 0x465u)
  {
    v16 = v15;
  }

  v17 = v14 - v16;
  if (v17 > 18000)
  {
    v17 -= 36000;
  }

  if (v17 < -17999)
  {
    v17 += 36000;
  }

  if (fabs(v17 / 100.0) > a4)
  {
    return 0;
  }

  v20 = sub_31AE98(a1, a2, a3);
  v27 = *(a3 + 32);
  v21 = *(a3 + 16);
  v26[0] = *a3;
  v26[1] = v21;
  BYTE6(v27) = BYTE6(v27) == 0;
  if (v20 != sub_31AE98(a1, a2, v26))
  {
    return 0;
  }

  v22 = (*a2 - **a2);
  if (*v22 >= 0x9Bu && (v23 = v22[77]) != 0)
  {
    v24 = *(*a2 + v23 + 1) >> 7;
  }

  else
  {
    v24 = 0;
  }

  return v20 == v24;
}

BOOL sub_31B1CC(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = *a2;
  if (*(a2 + 8) - *a2 < 9uLL)
  {
    return 0;
  }

  v80[7] = v7;
  v80[8] = v6;
  v80[19] = v4;
  v80[20] = v5;
  v14 = *v8;
  v15 = sub_2B51D8(a1, *v8 & 0xFFFFFFFFFFFFLL);
  if (*(a1 + 7772) == 1)
  {
    v16 = sub_30C50C(a1 + 3896, v14, 0);
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

    v19 = (v18 + ((v14 >> 30) & 0x3FFFC) + 4 + *(v18 + ((v14 >> 30) & 0x3FFFC) + 4));
  }

  else
  {
    v19 = 0;
  }

  v80[0] = v15;
  v80[1] = v19;
  v80[2] = sub_31D7E8(a1, v14 & 0xFFFFFFFFFFFFLL, 1);
  v80[3] = v20;
  v80[4] = v14;
  v21 = *(*(a2 + 8) - 8);
  v22 = sub_2B51D8(a1, v21 & 0xFFFFFFFFFFFFLL);
  if (*(a1 + 7772) == 1)
  {
    v23 = sub_30C50C(a1 + 3896, v21, 0);
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

    v26 = (v25 + ((v21 >> 30) & 0x3FFFC) + 4 + *(v25 + ((v21 >> 30) & 0x3FFFC) + 4));
  }

  else
  {
    v26 = 0;
  }

  *&v77 = v22;
  *(&v77 + 1) = v26;
  *&v78 = sub_31D7E8(a1, v21 & 0xFFFFFFFFFFFFLL, 1);
  *(&v78 + 1) = v27;
  v79 = v21;
  v28 = (v19 - *v19);
  v29 = *v28;
  if (BYTE6(v14))
  {
    if (v29 < 5)
    {
      LOWORD(v30) = 0;
      goto LABEL_28;
    }

    v30 = v28[2];
    if (!v30)
    {
LABEL_28:
      v31 = (v26 - *v26);
      v32 = *v31;
      if (BYTE6(v21))
      {
        goto LABEL_29;
      }

      goto LABEL_24;
    }

LABEL_23:
    LOWORD(v30) = *(v19 + v30);
    v31 = (v26 - *v26);
    v32 = *v31;
    if (BYTE6(v21))
    {
      goto LABEL_29;
    }

    goto LABEL_24;
  }

  if (v29 >= 9)
  {
    v30 = v28[4];
    if (!v30)
    {
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  LOWORD(v30) = 0;
  v31 = (v26 - *v26);
  v32 = *v31;
  if (BYTE6(v21))
  {
LABEL_29:
    if (v32 >= 9)
    {
      v33 = v31[4];
      if (!v33)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }

    goto LABEL_32;
  }

LABEL_24:
  if (v32 < 5)
  {
LABEL_32:
    v33 = 0;
    goto LABEL_33;
  }

  v33 = v31[2];
  if (v33)
  {
LABEL_31:
    v33 = *(v26 + v33);
  }

LABEL_33:
  v34 = v30 + 18000;
  v35 = v30 - 18000;
  if ((v34 >> 5) < 0x465u)
  {
    v35 = v34;
  }

  v36 = v33 - v35;
  if (v36 > 18000)
  {
    v36 -= 36000;
  }

  if (v36 < -17999)
  {
    v36 += 36000;
  }

  if (fabs(v36 / 100.0) <= a4)
  {
    v37 = HIWORD(v21);
    v38 = HIDWORD(v21);
    v39 = HIBYTE(v21);
    v40 = (v15 - *v15);
    v41 = *v40;
    if (v41 >= 0x9B)
    {
      v42 = v40[77];
      if (v40[77])
      {
        if ((~*(v15 + v40[77]) & 3) == 0)
        {
          goto LABEL_48;
        }
      }
    }

    v43 = (v22 - *v22);
    if (*v43 >= 0x9Bu)
    {
      v44 = v43[77];
      if (v44)
      {
        if ((~*(v22 + v44) & 3) == 0)
        {
          if (v41 < 0x9B || (v42 = v40[77]) == 0)
          {
            v75 = v77;
            v76 = v78;
            v49 = v80;
            goto LABEL_61;
          }

LABEL_48:
          if (*(v15 + v42))
          {
            v47 = v80;
            if ((*(v15 + v42) & 2) == 0)
            {
              v47 = &v77;
            }

            v45 = *v47;
            v46 = v47[1];
            if ((*(v15 + v42) & 2) != 0)
            {
              LOBYTE(v39) = HIBYTE(v14);
              LOBYTE(v37) = BYTE6(v14);
              LODWORD(v21) = v14;
              LOWORD(v38) = WORD2(v14);
            }
          }

          else
          {
            v45 = v77;
            v46 = v78;
          }

          v75 = v45;
          v76 = v46;
          v48 = *(v15 + v42);
          v49 = v80;
          if ((v48 & 1) != 0 && (v48 & 2) != 0)
          {
            v49 = &v77;
          }

LABEL_61:
          v50 = v49[1];
          v73[0] = *v49;
          v73[1] = v50;
          v74 = *(v49 + 4);
          v70 = v75;
          v71 = v76;
          LODWORD(v72) = v21;
          WORD2(v72) = v38;
          v51 = v21 == v14 && v38 == WORD2(v14);
          BYTE6(v72) = v37;
          v53 = !v51 || v37 != BYTE6(v14);
          HIBYTE(v72) = v39;
          if (a3 >= 1)
          {
            v54 = 0;
            do
            {
              v56 = sub_319BB0(&v70, v53, a1);
              if (!v56)
              {
                break;
              }

              v57 = sub_2B51D8(a1, v56 & 0xFFFFFFFFFFFFLL);
              if (*(a1 + 7772) == 1)
              {
                v58 = sub_30C50C(a1 + 3896, v56, 0);
                v59 = &v58[-*v58];
                if (*v59 < 5u)
                {
                  v60 = 0;
                }

                else
                {
                  v60 = *(v59 + 2);
                  if (v60)
                  {
                    v60 += &v58[*&v58[v60]];
                  }
                }

                v61 = v60 + ((v56 >> 30) & 0x3FFFC) + 4 + *(v60 + ((v56 >> 30) & 0x3FFFC) + 4);
              }

              else
              {
                v61 = 0;
              }

              v62 = sub_31D7E8(a1, v56 & 0xFFFFFFFFFFFFLL, 1);
              *&v67 = v57;
              *(&v67 + 1) = v61;
              *&v68 = v62;
              *(&v68 + 1) = v63;
              v69 = v56 & 0xFFFFFFFFFFFFFFLL;
              v64 = (v57 - *v57);
              if (*v64 < 0x9Bu)
              {
                break;
              }

              v65 = v64[77];
              if (!v65 || (~*(v57 + v65) & 3) != 0)
              {
                break;
              }

              if (sub_31A3B8(a1, &v67, v73))
              {
                return sub_31AFF8(a1, &v67, v73, a4);
              }

              v66 = (v57 - *v57);
              if (*v66 < 9u)
              {
                v55 = 0;
              }

              else
              {
                v55 = v66[4];
                if (v55)
                {
                  v55 = *(v57 + v55);
                }
              }

              v54 += v55;
              v70 = v67;
              v71 = v68;
              v72 = v69;
            }

            while (v54 < a3);
          }
        }
      }
    }
  }

  return 0;
}

BOOL sub_31B71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_31AE98(a1, a2, a3) == 2)
  {
    return 0;
  }

  if (sub_31AE98(a1, a2, a4) == 2)
  {
    return 0;
  }

  v9 = sub_31AE98(a1, a2, a3);
  return v9 != sub_31AE98(a1, a2, a4);
}

uint64_t sub_31B7C8(uint64_t a1, uint64_t a2)
{
  v3 = sub_2B51D8(a1, a2 & 0xFFFFFFFFFFFFLL);
  v4 = *v3;
  v5 = v3 - v4;
  v6 = *(v3 - v4);
  v7 = a2 & 0xFF000000000000;
  if ((a2 & 0xFF000000000000) != 0)
  {
    if (v6 >= 0x39)
    {
      v8 = *(v5 + 28);
      if (*(v5 + 28))
      {
        LODWORD(v4) = *(v3 + *(v5 + 28));
        if ((v4 & 2) != 0)
        {
          return 2;
        }

        goto LABEL_9;
      }

      goto LABEL_10;
    }

    return 0;
  }

  if (v6 < 0x39)
  {
    return 0;
  }

  v8 = *(v5 + 28);
  if (*(v5 + 28))
  {
    LODWORD(v4) = *(v3 + *(v5 + 28));
    if (v4)
    {
      return 2;
    }

LABEL_9:
    v8 = 1;
  }

LABEL_10:
  if (v6 < 0x9B || (v10 = *(v5 + 77)) == 0 || (*(v3 + v10 + 1) & 0x80) == 0)
  {
    if ((v4 & 3) != 0)
    {
      v11 = 0;
    }

    else
    {
      v11 = v8;
    }

    if (v7)
    {
      if (v11)
      {
        return (v4 >> 2) & 1;
      }
    }

    else if (v11)
    {
      return (v4 >> 5) & 1;
    }

    return 0;
  }

  if ((v4 & 3) != 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = v8;
  }

  if (v7)
  {
    if (v12)
    {
      return (v4 & 0x20) == 0;
    }
  }

  else if (v12)
  {
    return (v4 & 4) == 0;
  }

  return 1;
}

uint64_t sub_31B8F4(uint64_t a1, uint64_t a2, void *a3)
{
  a3[1] = *a3;
  v6 = sub_3116D0(a2);
  result = sub_31BA24(a1, v6, a3, 0, 1, 0);
  v9 = *a3;
  v8 = a3[1];
  if (*a3 != v8)
  {
    for (i = (v9 + 40); ; i = (i + 40))
    {
      v11 = *(i - 2) == *(a2 + 32) && *(i - 2) == *(a2 + 36);
      if (v11)
      {
        break;
      }

      v11 = i == v8;
      if (v11)
      {
        return result;
      }
    }

    v9 = i - 40;
    if ((i - 40) != v8 && i != v8)
    {
      do
      {
        if (*(i + 8) != *(a2 + 32) || *(i + 18) != *(a2 + 36))
        {
          v13 = *i;
          v14 = i[1];
          *(v9 + 32) = *(i + 4);
          *v9 = v13;
          *(v9 + 16) = v14;
          v9 += 40;
        }

        i = (i + 40);
      }

      while (i != v8);
      v8 = a3[1];
    }
  }

  if (v9 != v8)
  {
    a3[1] = v9;
  }

  return result;
}

uint64_t sub_31BA24(uint64_t a1, unint64_t a2, void *a3, int a4, char a5, int a6)
{
  a3[1] = *a3;
  v35 = sub_2B365C(a1, a2, a4, (a1 + 7800));
  v10 = (*(a1 + 7808) - *(a1 + 7800)) >> 3;
  if (0xCCCCCCCCCCCCCCCDLL * ((a3[2] - *a3) >> 3) < v10)
  {
    if (v10 < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  v11 = *(a1 + 7800);
  v12 = *(a1 + 7808);
  v40 = a3;
  if (v11 != v12)
  {
    if (a5)
    {
      do
      {
        v16 = *v11;
        v17 = *v11;
        v18 = sub_2AF704(a1 + 3896, v17, 0);
        v19 = &v18[-*v18];
        if (*v19 < 5u)
        {
          v20 = 0;
        }

        else
        {
          v20 = *(v19 + 2);
          if (v20)
          {
            v20 += &v18[*&v18[v20]];
          }
        }

        v21 = (v16 >> 30) & 0x3FFFC;
        v22 = (v20 + v21 + 4);
        v23 = *v22;
        if (*(a1 + 7772) == 1)
        {
          v24 = sub_30C50C(a1 + 3896, v17, 0);
          v25 = &v24[-*v24];
          if (*v25 < 5u)
          {
            v26 = 0;
          }

          else
          {
            v26 = *(v25 + 2);
            if (v26)
            {
              v26 += &v24[*&v24[v26]];
            }
          }

          v13 = v26 + v21 + 4 + *(v26 + v21 + 4);
        }

        else
        {
          v13 = 0;
        }

        v14 = sub_31D7E8(a1, v16 & 0xFFFFFFFFFFFFLL, a6);
        *&v36 = v22 + v23;
        *(&v36 + 1) = v13;
        v37 = v14;
        v38 = v15;
        v39 = v16;
        sub_31F2E4(&v40, &v36);
        ++v11;
      }

      while (v11 != v12);
    }

    else
    {
      do
      {
        v31 = *v11;
        v32 = sub_2AF704(a1 + 3896, *v11, 0);
        v33 = &v32[-*v32];
        if (*v33 < 5u)
        {
          v27 = 0;
        }

        else
        {
          v27 = *(v33 + 2);
          if (v27)
          {
            v27 += &v32[*&v32[v27]];
          }
        }

        v28 = v27 + ((v31 >> 30) & 0x3FFFC) + 4 + *(v27 + ((v31 >> 30) & 0x3FFFC) + 4);
        v29 = sub_31D7E8(a1, v31 & 0xFFFFFFFFFFFFLL, a6);
        v36 = v28;
        v37 = v29;
        v38 = v30;
        v39 = v31;
        sub_31F2E4(&v40, &v36);
        ++v11;
      }

      while (v11 != v12);
    }
  }

  return v35;
}

uint64_t sub_31BCE0(uint64_t a1, uint64_t a2, void *a3)
{
  a3[1] = *a3;
  v6 = sub_311544(a2);
  result = sub_31BA24(a1, v6, a3, 0, 1, 0);
  v9 = *a3;
  v8 = a3[1];
  if (*a3 != v8)
  {
    for (i = (v9 + 40); ; i = (i + 40))
    {
      v11 = *(i - 2) == *(a2 + 32) && *(i - 2) == *(a2 + 36);
      if (v11)
      {
        break;
      }

      v11 = i == v8;
      if (v11)
      {
        return result;
      }
    }

    v9 = i - 40;
    if ((i - 40) != v8 && i != v8)
    {
      do
      {
        if (*(i + 8) != *(a2 + 32) || *(i + 18) != *(a2 + 36))
        {
          v13 = *i;
          v14 = i[1];
          *(v9 + 32) = *(i + 4);
          *v9 = v13;
          *(v9 + 16) = v14;
          v9 += 40;
        }

        i = (i + 40);
      }

      while (i != v8);
      v8 = a3[1];
    }
  }

  if (v9 != v8)
  {
    a3[1] = v9;
  }

  return result;
}

uint64_t sub_31BE10(uint64_t a1, int **a2, double a3)
{
  sub_2B7A20(a1, a2[4] & 0xFFFFFFFFFFFFFFLL, v12);
  sub_31BF20(v12, __p);
  v5 = (*a2 - **a2);
  if (*v5 >= 9u && (v6 = v5[4]) != 0)
  {
    v7 = *(*a2 + v6);
  }

  else
  {
    v7 = 0;
  }

  v11 = v7;
  v10 = 300;
  v8 = sub_46C5C(__p, &v11, &v10, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  return v8;
}

void sub_31BED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
    v18 = a12;
    if (!a12)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v18 = a12;
    if (!a12)
    {
      goto LABEL_3;
    }
  }

  operator delete(v18);
  _Unwind_Resume(exception_object);
}

__n128 sub_31BF20@<Q0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_31C60C(a1, &v24);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (!*(a1 + 32))
  {
    if (v5 != v4)
    {
      v10 = *(v4 - 8);
      v11 = sub_2B4D24(*a1, v10, 0);
      v8 = 0;
      v12 = &v11[*&v11[-*v11 + 4]];
      v13 = &v12[4 * HIDWORD(v10) + *v12];
      v14 = (v13 + 4 + *(v13 + 4));
      v6 = *a1;
      v15 = (v14 + *(v14 - *v14 + 6));
      v9 = *(v15 + *v15);
      v7 = (*(a1 + 16) - *(a1 + 8)) >> 3;
      goto LABEL_7;
    }

LABEL_6:
    LODWORD(v7) = 0;
    v9 = 0;
    v8 = 0;
    v6 = 0;
    goto LABEL_7;
  }

  if (v5 == v4)
  {
    goto LABEL_6;
  }

  v6 = *a1;
  LODWORD(v7) = -1;
  v8 = 1;
  v9 = -1;
LABEL_7:
  v16 = v24;
  v17 = v25;
  v28 = v24;
  v29 = v25;
  v18 = v26;
  v19 = v27;
  v30 = v26;
  v31 = v27;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v39 = v16;
  v40 = v17;
  v41 = v18;
  v42 = v19;
  if (v19 != v7 || (v20 = 0, DWORD1(v42) != v9))
  {
    v20 = 0;
    do
    {
      while (!BYTE8(v42))
      {
        sub_31E948(&v39);
        ++v20;
        if (v42 == v7 && DWORD1(v42) == v9)
        {
          goto LABEL_20;
        }
      }

      sub_31EA68(&v39);
      ++v20;
    }

    while (v42 != v7 || DWORD1(v42) != v9);
  }

LABEL_20:
  v39 = v28;
  v40 = v29;
  v41 = v30;
  v42 = v31;
  v33 = 0u;
  v34 = 0u;
  v32 = v6;
  v35 = 0;
  v36 = v7;
  v37 = v9;
  v38 = v8;
  sub_31DC94(a2, &v39, &v32, v20);
  return result;
}

uint64_t sub_31C0F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B51D8(a1, a2 & 0xFFFFFFFFFFFFLL);
  v5 = (v4 - *v4);
  if (*v5 >= 0x2Fu)
  {
    v6 = v5[23];
    if (v6)
    {
      v7 = *(v4 + v6);
      v8 = v7 > 0x2D;
      v9 = (1 << v7) & 0x208040000000;
      if (!v8 && v9 != 0)
      {
        return 1;
      }
    }
  }

  v12 = sub_2B51D8(a1, a2 & 0xFFFFFFFFFFFFLL);
  v13 = (v12 - *v12);
  if (*v13 >= 0x2Fu)
  {
    v14 = v13[23];
    if (v14)
    {
      if (*(v12 + v14) == 47)
      {
        v15 = sub_31DDCC(a1, a2);
        if (v15 > 0xFFFFFFFEFFFFFFFFLL || !v15)
        {
          v16 = sub_2B4EDC(a1, a2 & 0xFFFFFFFFFFFFLL, 0);
          sub_31C398(a1, v16, &__p);
          v17 = __p;
          v18 = v38;
          if (__p != v38)
          {
            while (1)
            {
              v19 = sub_2B51D8(a1, *v17);
              v20 = (v19 - *v19);
              if (*v20 >= 0x2Fu)
              {
                v21 = v20[23];
                if (v21)
                {
                  v22 = *(v19 + v21);
                  v8 = v22 > 0x2D;
                  v23 = (1 << v22) & 0x208040000000;
                  if (!v8 && v23 != 0)
                  {
                    break;
                  }
                }
              }

              if (++v17 == v18)
              {
                goto LABEL_24;
              }
            }

            if (__p)
            {
              v38 = __p;
              operator delete(__p);
            }

            return 1;
          }

LABEL_24:
          v25 = sub_2B4EDC(a1, a2 & 0xFFFFFFFFFFFFLL, 1);
          sub_31C398(a1, v25, &v35);
          v26 = v35;
          v27 = v36;
          if (v35 == v36)
          {
            v34 = 1;
          }

          else
          {
            do
            {
              v28 = sub_2B51D8(a1, *v26);
              v29 = (v28 - *v28);
              if (*v29 >= 0x2Fu)
              {
                v30 = v29[23];
                if (v30)
                {
                  v31 = *(v28 + v30);
                  v8 = v31 > 0x2D;
                  v32 = (1 << v31) & 0x208040000000;
                  if (!v8 && v32 != 0)
                  {
                    v34 = 0;
                    goto LABEL_36;
                  }
                }
              }

              ++v26;
            }

            while (v26 != v27);
            v34 = 1;
LABEL_36:
            v26 = v35;
          }

          if (v26)
          {
            v36 = v26;
            operator delete(v26);
          }

          if (__p)
          {
            v38 = __p;
            operator delete(__p);
          }

          if ((v34 & 1) == 0)
          {
            return 1;
          }
        }
      }
    }
  }

  return 0;
}

void sub_31C348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_31C398@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_2B365C(a1, a2, 0, (a1 + 7800));
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v6 = *(a1 + 7808);
  v7 = *(a1 + 7800);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v8 = a3;
  return result;
}

void sub_31C460(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_31C47C(uint64_t a1, uint64_t a2)
{
  v26[0] = -1;
  v26[1] = -1;
  sub_2B79D0(a1, a2, &v22);
  sub_31C60C(&v22, v18);
  v2 = v23;
  if (v25)
  {
    if (v23 == v24)
    {
      LODWORD(v3) = 0;
    }

    else
    {
      LODWORD(v3) = -1;
    }

    v4 = v3;
    if (v19 == v3 && v20 == v3)
    {
      goto LABEL_28;
    }
  }

  else if (v23 == v24)
  {
    LODWORD(v3) = 0;
    v4 = 0;
    if (v19)
    {
      v13 = 0;
    }

    else
    {
      v13 = v20 == 0;
    }

    if (v13)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v6 = *(v24 - 1);
    v7 = sub_2B4D24(v22, v6, 0);
    v8 = &v7[*&v7[-*v7 + 4]];
    v9 = &v8[4 * HIDWORD(v6) + *v8];
    v10 = (v9 + 4 + *(v9 + 4));
    v2 = v23;
    v3 = (v24 - v23) >> 3;
    v11 = (v10 + *(v10 - *v10 + 6));
    v4 = *(v11 + *v11);
    if (v19 == v3 && v20 == v4)
    {
      goto LABEL_28;
    }
  }

  do
  {
    v16 = sub_318DA8(v18);
    v17 = v14;
    sub_32184(v26, &v16);
    if (v21)
    {
      sub_31EA68(v18);
    }

    else
    {
      sub_31E948(v18);
    }
  }

  while (v19 != v3 || v20 != v4);
  v2 = v23;
LABEL_28:
  if (v2)
  {
    v24 = v2;
    operator delete(v2);
  }

  return v26[0];
}

void sub_31C5E0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 64);
  if (v3)
  {
    *(v1 - 56) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double sub_31C60C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + 8;
  if (*(a1 + 32))
  {
    v4 = *(a1 + 16);
    if (*(a1 + 8) != v4)
    {
      v5 = *(v4 - 8);
      v7 = sub_2B4D24(*a1, v5, 0);
      v8 = &v7[*&v7[-*v7 + 4]];
      v9 = &v8[4 * HIDWORD(v5) + *v8];
      v10 = (v9 + 4 + *(v9 + 4));
      v11 = (v10 + *(v10 - *v10 + 6));
      v12 = ((*(a1 + 16) - *(a1 + 8)) >> 3) - 1;
      LODWORD(v11) = *(v11 + *v11) - 1;
      *a2 = *a1;
      *(a2 + 8) = v3;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *(a2 + 48) = v12;
      *(a2 + 52) = v11;
      *(a2 + 56) = 1;
      v13 = a2;

LABEL_5:
      sub_318EF0(v13);
      return result;
    }
  }

  else if (*(a1 + 8) != *(a1 + 16))
  {
    *a2 = *a1;
    *(a2 + 8) = v3;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 41) = 0u;
    v13 = a2;

    goto LABEL_5;
  }

  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_31C74C(uint64_t a1, int **a2, char **a3)
{
  v3 = (*a2 - **a2);
  if (*v3 >= 0x25u && v3[18])
  {
    return sub_31C778(a1, a2, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_31C778(uint64_t a1, int **a2, char **a3)
{
  v3 = (*a2 - **a2);
  if (*v3 >= 0x25u && (v4 = v3[18]) != 0)
  {
    v5 = *(*a2 + v4 + *(*a2 + v4));
    v6 = *a3;
    v7 = &(*a3)[-**a3];
    if (*v7 < 0x25u)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v5 = 0;
    v6 = *a3;
    v7 = &(*a3)[-**a3];
    if (*v7 < 0x25u)
    {
LABEL_11:
      v9 = 0;
LABEL_12:
      LOBYTE(v13) = v5 == v9;
      return v13 & 1;
    }
  }

  v8 = *(v7 + 18);
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = *&v6[v8 + *&v6[v8]];
  if (!v5 || !v9)
  {
    goto LABEL_12;
  }

  if (sub_31CB7C(a1, *(a2 + 8) | (*(a2 + 18) << 32), *(a3 + 8) | (*(a3 + 18) << 32)))
  {
    LOBYTE(v13) = 1;
  }

  else if (v5 == 1 && v9 == 1)
  {
    LOBYTE(v13) = 0;
  }

  else
  {
    v15 = sub_2B51D8(a1, *(a2 + 8) | (*(a2 + 18) << 32));
    v16 = (v15 - *v15);
    if (*v16 >= 0x25u && (v17 = v16[18]) != 0)
    {
      v18 = (v15 + v17 + *(v15 + v17));
    }

    else
    {
      v18 = 0;
    }

    sub_31077C(v18, &v54);
    v19 = sub_2B51D8(a1, *(a3 + 8) | (*(a3 + 18) << 32));
    v20 = (v19 - *v19);
    if (*v20 >= 0x25u && (v21 = v20[18]) != 0)
    {
      v22 = (v19 + v21 + *(v19 + v21));
    }

    else
    {
      v22 = 0;
    }

    sub_31077C(v22, &__p);
    v23 = v54;
    v25 = __p;
    v24 = v53;
    v26 = v55 - v54 == v53 - __p;
    v49 = v55;
    if (v55 == v54)
    {
      LOBYTE(v13) = v55 - v54 == v53 - __p;
    }

    else if (__p == v53)
    {
      LOBYTE(v13) = 0;
    }

    else
    {
      v50 = *__p;
      v51 = *v54;
LABEL_29:
      v27 = *(v23 + 32);
      if (v27 == 1)
      {
        v13 = 0;
        v28 = v25;
        while (1)
        {
          v29 = *(v28 + 32);
          if ((v29 & 1) == 0)
          {
            v30 = *(v23 + 31);
            if (v30 >= 0)
            {
              v31 = *(v23 + 31);
            }

            else
            {
              v31 = v23[2];
            }

            v32 = *(v28 + 31);
            v33 = v32;
            if (v32 < 0)
            {
              v32 = v28[2];
            }

            if (v31 == v32)
            {
              v34 = v30 >= 0 ? (v23 + 1) : v23[1];
              v35 = v33 >= 0 ? (v28 + 1) : v28[1];
              if (!memcmp(v34, v35, v31) && *v23 == *v28)
              {
                v13 = 1;
                if (v29 == 1 || v51 == v50)
                {
                  break;
                }
              }
            }
          }

          v28 += 5;
          if (v28 == v24)
          {
            goto LABEL_28;
          }
        }
      }

      else
      {
        v13 = 0;
        v37 = *(v23 + 31);
        if (v37 >= 0)
        {
          v38 = *(v23 + 31);
        }

        else
        {
          v38 = v23[2];
        }

        v39 = v25;
        while (1)
        {
          v40 = *(v39 + 31);
          v41 = v40;
          if (v40 < 0)
          {
            v40 = v39[2];
          }

          if (v38 == v40)
          {
            v42 = v37 >= 0 ? (v23 + 1) : v23[1];
            v43 = v41 >= 0 ? (v39 + 1) : v39[1];
            if (!memcmp(v42, v43, v38) && *v23 == *v39)
            {
              v13 = 1;
              if (v27 == *(v39 + 32) || v51 == v50)
              {
                break;
              }
            }
          }

          v39 += 5;
          if (v39 == v24)
          {
LABEL_28:
            v26 &= v13;
            v23 += 5;
            LOBYTE(v13) = v26;
            if (v23 == v49)
            {
              break;
            }

            goto LABEL_29;
          }
        }
      }
    }

    v45 = v25;
    if (v24 != v25)
    {
      do
      {
        if (*(v24 - 9) < 0)
        {
          operator delete(*(v24 - 4));
        }

        v24 -= 5;
      }

      while (v24 != v25);
      v45 = __p;
    }

    v53 = v25;
    operator delete(v45);
    v46 = v54;
    if (v54)
    {
      v47 = v55;
      v48 = v54;
      if (v55 != v54)
      {
        do
        {
          if (*(v47 - 9) < 0)
          {
            operator delete(*(v47 - 4));
          }

          v47 -= 5;
        }

        while (v47 != v46);
        v48 = v54;
      }

      v55 = v46;
      operator delete(v48);
    }
  }

  return v13 & 1;
}

void sub_31CB68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_3108E8(va);
  _Unwind_Resume(a1);
}

BOOL sub_31CB7C(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = sub_2B51D8(a1, a2);
  v6 = (v5 - *v5);
  if (*v6 >= 0x25u && (v7 = v6[18]) != 0)
  {
    v8 = v5 + v7 + *(v5 + v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_2B51D8(a1, a3);
  v10 = (v9 - *v9);
  if (*v10 < 0x25u)
  {
    return v8 == 0;
  }

  v11 = v10[18];
  if (!v11)
  {
    return v8 == 0;
  }

  if (!v8)
  {
    return 0;
  }

  v12 = v9 + v11 + *(v9 + v11);
  v13 = &v8[*(v8 + 1) + 4];
  v14 = &v12[*(v12 + 1) + 4];
  v15 = &v13[-*v13];
  v16 = *v15;
  if (v16 < 5)
  {
    LODWORD(v17) = 0;
    v18 = &v14[-*v14];
    if (*v18 >= 5u)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

  v17 = *(v15 + 2);
  if (*(v15 + 2))
  {
    LODWORD(v17) = *&v13[v17];
  }

  v18 = &v14[-*v14];
  if (*v18 < 5u)
  {
LABEL_23:
    if (!v17)
    {
      goto LABEL_15;
    }

    return 0;
  }

LABEL_12:
  v19 = *(v18 + 2);
  if (v19)
  {
    LODWORD(v19) = *&v14[v19];
  }

  if (v17 != v19)
  {
    return 0;
  }

LABEL_15:
  if (v16 >= 7 && (v20 = *(v15 + 3)) != 0)
  {
    v21 = &v13[v20];
    v22 = *v21;
    v23 = *&v21[v22];
    if (v23 >= 0x17)
    {
      operator new();
    }

    v42 = *&v21[v22];
    if (v23)
    {
      memcpy(__dst, &v21[v22 + 4], v23);
    }

    *(__dst + v23) = 0;
    v25 = &v14[-*v14];
    if (*v25 < 7u)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v42 = 0;
    LOBYTE(__dst[0]) = 0;
    v25 = &v14[-*v14];
    if (*v25 < 7u)
    {
      goto LABEL_34;
    }
  }

  v26 = *(v25 + 3);
  if (!v26)
  {
LABEL_34:
    v40 = 0;
    v30 = __p;
    goto LABEL_38;
  }

  v27 = &v14[v26];
  v28 = *v27;
  v29 = *&v27[v28];
  if (v29 >= 0x17)
  {
    operator new();
  }

  v40 = *&v27[v28];
  if (v29)
  {
    memcpy(__p, &v27[v28 + 4], v29);
  }

  v30 = (__p + v29);
LABEL_38:
  result = 0;
  *v30 = 0;
  v31 = v42;
  if ((v42 & 0x80u) == 0)
  {
    v32 = v42;
  }

  else
  {
    v32 = __dst[1];
  }

  v33 = v40;
  v34 = v40;
  if ((v40 & 0x80u) != 0)
  {
    v33 = __p[1];
  }

  if (v32 == v33)
  {
    if ((v42 & 0x80u) == 0)
    {
      v35 = __dst;
    }

    else
    {
      v35 = __dst[0];
    }

    if ((v40 & 0x80u) == 0)
    {
      v36 = __p;
    }

    else
    {
      v36 = __p[0];
    }

    result = memcmp(v35, v36, v32) == 0;
    if (v34 < 0)
    {
LABEL_51:
      v37 = result;
      operator delete(__p[0]);
      result = v37;
      if (v31 < 0)
      {
        goto LABEL_55;
      }

      return result;
    }
  }

  else if (v40 < 0)
  {
    goto LABEL_51;
  }

  if (v31 < 0)
  {
LABEL_55:
    v38 = result;
    operator delete(__dst[0]);
    return v38;
  }

  return result;
}

void sub_31CEC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_31CEE0(int **a1)
{
  v1 = 3;
  if (!*(a1 + 38))
  {
    v1 = 2;
  }

  v2 = a1[v1];
  if (v2)
  {
    v3 = (v2 - *v2);
    if (*v3 < 7u || (v4 = v3[3]) == 0 || (LOWORD(v2) = *(v2 + v4), v2 == 0xFFFF))
    {
      LOWORD(v2) = 0;
    }
  }

  v5 = 2;
  if (!*(a1 + 38))
  {
    v5 = 3;
  }

  v6 = a1[v5];
  if (v6 && ((v7 = (v6 - *v6), *v7 < 7u) || (v8 = v7[3]) == 0 || (LOWORD(v6) = *(v6 + v8), v6 == 0xFFFF)))
  {
    LOWORD(v6) = 0;
    v9 = *a1;
    v10 = (*a1 - **a1);
    if (*v10 < 0x9Bu)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v9 = *a1;
    v10 = (*a1 - **a1);
    if (*v10 < 0x9Bu)
    {
      goto LABEL_19;
    }
  }

  v11 = v10[77];
  if (v11)
  {
    v12 = (*&v9[v11] >> 2) & 1;
    goto LABEL_20;
  }

LABEL_19:
  LOBYTE(v12) = 0;
LABEL_20:
  v13 = (v6 + v2) << v12;
  if (v13 >= 0xFFFF)
  {
    return 0xFFFFLL;
  }

  else
  {
    return v13;
  }
}

void sub_31D680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
    if (!v24)
    {
LABEL_3:
      if (!v23)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if (!v24)
  {
    goto LABEL_3;
  }

  operator delete(v24);
  if (!v23)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v23);
  _Unwind_Resume(exception_object);
}

int *sub_31D6E8@<X0>(int *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0x1000000000000;
  result = sub_2B51D8(a1, a2);
  v7 = (result - *result);
  if (*v7 < 0x2Fu || (v8 = v7[23]) == 0 || *(result + v8) != 44)
  {
    v17[0] = a3;
    v17[1] = a1;
    v9 = sub_2B51D8(a1, a2);
    v10 = v9;
    v11 = (v9 - *v9);
    if (*v11 >= 0x5Fu && (v12 = v11[47]) != 0)
    {
      v13 = (v9 + v12 + *(v9 + v12));
    }

    else
    {
      v13 = 0;
    }

    sub_31F43C(a1, v13, v17);
    v14 = (v10 - *v10);
    if (*v14 >= 0x61u && (v15 = v14[48]) != 0)
    {
      v16 = (v10 + v15 + *(v10 + v15));
    }

    else
    {
      v16 = 0;
    }

    return sub_31F43C(a1, v16, v17);
  }

  return result;
}

char *sub_31D7E8(uint64_t a1, unint64_t a2, int a3)
{
  if (!a3 || *(a1 + 7773) != 1)
  {
    return 0;
  }

  result = sub_31D994(a1 + 3896, a2, 1);
  if (!result)
  {
    return result;
  }

  v6 = &result[-*result];
  if (*v6 < 0xBu)
  {
    return 0;
  }

  if (!*(v6 + 5))
  {
    return 0;
  }

  v7 = &result[*(v6 + 5) + *&result[*(v6 + 5)]];
  if (*v7 <= HIDWORD(a2))
  {
    return 0;
  }

  v8 = &v7[8 * HIDWORD(a2)];
  v11 = *(v8 + 1);
  v10 = v8 + 4;
  v9 = v11;
  if (!v11)
  {
    return 0;
  }

  result = sub_2B3284(a1 + 3896, v9, 1);
  if (!result)
  {
    return result;
  }

  v12 = &result[-*result];
  v13 = *v12;
  if ((*(v10 + 6) & 2) != 0)
  {
    if (v13 >= 5)
    {
      v14 = *(v12 + 2);
      if (*(v12 + 2))
      {
        v14 = (v14 + result + *(v14 + result));
      }

      goto LABEL_20;
    }

    return 0;
  }

  if (v13 >= 7)
  {
    v14 = *(v12 + 3);
    if (*(v12 + 3))
    {
      v14 = (v14 + result + *(v14 + result));
    }

    goto LABEL_20;
  }

  if (v13 < 5)
  {
    return 0;
  }

  v14 = 0;
LABEL_20:
  if (v14 && (v15 = *(v10 + 2), *v14 > v15))
  {
    return &v14[v15 + 1] + v14[v15 + 1];
  }

  else
  {
    return 0;
  }
}

char *sub_31D994(uint64_t a1, unsigned int a2, int a3)
{
  v22 = a3;
  v23 = a2;
  v21[0] = &v22;
  v21[1] = &v23;
  v3 = *(a1 + 3856) + 1;
  *(a1 + 3856) = v3;
  if (!*a1)
  {
    goto LABEL_34;
  }

  if (*(a1 + 2128) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 2136) = v3;
    v4 = *(a1 + 2144);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 2152) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 2160) = v3;
    v4 = *(a1 + 2168);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 2176) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 2184) = v3;
    v4 = *(a1 + 2192);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 2200) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 2208) = v3;
    v4 = *(a1 + 2216);
    if (v4)
    {
      return v4 + *v4;
    }
  }

  else
  {
    v6 = a1 + 16;
    v7 = *(a1 + 2184);
    v8 = *(a1 + 2160);
    v9 = *(a1 + 2136);
    v10 = v9 >= v3;
    if (v9 < v3)
    {
      v3 = *(a1 + 2136);
    }

    v11 = 88;
    if (v10)
    {
      v11 = 0;
    }

    v12 = v8 >= v3;
    if (v8 < v3)
    {
      v3 = *(a1 + 2160);
    }

    v13 = 89;
    if (v12)
    {
      v13 = v11;
    }

    if (v7 >= v3)
    {
      v14 = v3;
    }

    else
    {
      v14 = *(a1 + 2184);
    }

    v15 = *(a1 + 2208);
    if (v7 >= v3)
    {
      v16 = v13;
    }

    else
    {
      v16 = 90;
    }

    v18 = sub_2D52A4(*a1, 22, a2, 1);
    v19 = 91;
    if (v15 >= v14)
    {
      v19 = v16;
    }

    v20 = v6 + 24 * v19;
    *v20 = v23;
    *(v20 + 8) = *(a1 + 3856);
    *(v20 + 16) = v18;
    if (v18)
    {
      return v18 + *v18;
    }
  }

LABEL_34:
  sub_31DB68(v21);
  return 0;
}

uint64_t sub_31DB68(int **a1)
{
  v1 = **a1;
  if (v1 != 1)
  {
    if (!v1)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = *a1[1];
      v11[0] = sub_7FCF0(0x16u);
      v11[1] = v5;
      sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", v11, v13);
      if ((v14 & 0x80u) == 0)
      {
        v6 = v13;
      }

      else
      {
        v6 = v13[0];
      }

      if ((v14 & 0x80u) == 0)
      {
        v7 = v14;
      }

      else
      {
        v7 = v13[1];
      }

      v8 = sub_2D390(exception, v6, v7);
    }

    v9 = __cxa_allocate_exception(0x40uLL);
    v10 = sub_2D390(v9, "Unknown data access error policy", 0x20uLL);
  }

  return 0;
}

void sub_31DC64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_31DC94(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_31DDA4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_31DDCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B51D8(a1, a2 & 0xFFFFFFFFFFFFLL);
  v5 = (v4 - *v4);
  if (*v5 >= 0x1Fu)
  {
    v6 = v5[15];
    if (v6)
    {
      v7 = *(v4 + v6);
      if (v7 != -1)
      {
        v8 = sub_31DF78(a1, a2);
        return v8 | (v7 << 32);
      }
    }
  }

  v9 = sub_2B51D8(a1, a2 & 0xFFFFFFFFFFFFLL);
  v10 = (v9 - *v9);
  if (*v10 < 0x2Fu)
  {
    goto LABEL_17;
  }

  v11 = v10[23];
  if (!v11 || *(v9 + v11) != 44)
  {
    goto LABEL_17;
  }

  v12 = sub_2B51D8(a1, a2 & 0xFFFFFFFFFFFFLL);
  v13 = (v12 - *v12);
  v14 = *v13;
  if (v14 < 0x5F)
  {
    LODWORD(v15) = 0;
    LODWORD(v16) = 0;
  }

  else
  {
    v15 = v13[47];
    if (v13[47])
    {
      LODWORD(v15) = *(v12 + v15 + *(v12 + v15));
    }

    if (v14 < 0x61)
    {
      if (!v15)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }

    v16 = v13[48];
    if (v16)
    {
      if (*(v12 + v16 + *(v12 + v16)) + v15)
      {
        goto LABEL_20;
      }

LABEL_17:
      v8 = 0;
      v7 = 0xFFFFFFFFLL;
      return v8 | (v7 << 32);
    }
  }

  if (!(v16 + v15))
  {
    goto LABEL_17;
  }

LABEL_20:
  sub_31E068(a1, a2 & 0xFFFFFFFFFFFFLL, 8, &__p);
  if ((a2 & 0xFF000000000000) != 0)
  {
    v18 = sub_31E274(a1, v20, v20, __p, __p);
  }

  else
  {
    v18 = sub_31E150(a1, __p, v20);
  }

  v8 = v18;
  v7 = HIDWORD(v18);
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  return v8 | (v7 << 32);
}

void sub_31DF5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_31DF78(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 7768);
  v5 = sub_57A90(a2);
  if (v4 <= 0xF)
  {
    return a2 >> ((v5 - 2 * v4) & 0xFE);
  }

  v7 = v5 >> 1;
  v8 = v5;
  v9 = sub_57A90(a2);
  LOBYTE(v10) = v8 & 0xFE;
  if (sub_31E394(a1 + 3896, a2 >> ((v9 - v10) & 0xFE), 1))
  {
LABEL_8:
    *(a1 + 7768) = v7;
    return a2 >> ((sub_57A90(a2) - v10) & 0xFE);
  }

  else
  {
    v11 = -2 * v7;
    while (v7)
    {
      --v7;
      v12 = sub_57A90(a2);
      v11 += 2;
      if (sub_31E394(a1 + 3896, a2 >> ((v11 + v12) & 0xFE), 1))
      {
        v10 = -v11;
        goto LABEL_8;
      }
    }

    return 0;
  }
}

void sub_31E068(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v14 = a4;
  v6 = sub_2B51D8(a1, a2);
  v7 = v6;
  v8 = (v6 - *v6);
  if (*v8 >= 0x5Fu && (v9 = v8[47]) != 0)
  {
    v10 = (v6 + v9 + *(v6 + v9));
  }

  else
  {
    v10 = 0;
  }

  sub_31E694(a1, v10, a3, &v14);
  v11 = (v7 - *v7);
  if (*v11 >= 0x61u && (v12 = v11[48]) != 0)
  {
    v13 = (v7 + v12 + *(v7 + v12));
  }

  else
  {
    v13 = 0;
  }

  sub_31E694(a1, v13, a3, &v14);
}

void sub_31E134(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_31E150(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  if (a2 == a3)
  {
    return 0xFFFFFFFF00000000;
  }

  v5 = a2;
  do
  {
    v7 = *(v5 + 2);
    v8 = *v5;
    if (*(a1 + 7774) != 1 || (v9 = sub_2AF704(a1 + 3896, *v5, 1)) != 0 && (v10 = &v9[-*v9], *v10 >= 5u) && (v11 = *(v10 + 2)) != 0 && *&v9[v11 + *&v9[v11]] > v7 && sub_2B817C(a1, v8 | (v7 << 32)))
    {
      v12 = sub_2B51D8(a1, v8 | (v7 << 32));
      v13 = (v12 - *v12);
      if (*v13 >= 0x1Fu)
      {
        v14 = v13[15];
        if (v14)
        {
          v15 = *(v12 + v14);
          if (v15 != -1)
          {
            return sub_31DF78(a1, v8) | (v15 << 32);
          }
        }
      }
    }

    v5 += 3;
  }

  while (v5 != a3);
  return 0xFFFFFFFF00000000;
}

unint64_t sub_31E274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 == a5)
  {
    return 0xFFFFFFFF00000000;
  }

  v7 = a3;
  do
  {
    v10 = *(v7 - 12);
    v7 -= 12;
    v9 = v10;
    v11 = *(v7 + 4);
    v12 = v10 | (v11 << 32);
    if (*(a1 + 7774) == 1)
    {
      v13 = sub_2AF704(a1 + 3896, v9, 1);
      if (!v13)
      {
        continue;
      }

      v14 = &v13[-*v13];
      if (*v14 < 5u)
      {
        continue;
      }

      v15 = *(v14 + 2);
      if (!v15 || *&v13[v15 + *&v13[v15]] <= v11 || !sub_2B817C(a1, v12))
      {
        continue;
      }
    }

    v16 = sub_2B51D8(a1, v12);
    v17 = (v16 - *v16);
    if (*v17 >= 0x1Fu)
    {
      v18 = v17[15];
      if (v18)
      {
        v19 = *(v16 + v18);
        if (v19 != -1)
        {
          return sub_31DF78(a1, v9) | (v19 << 32);
        }
      }
    }
  }

  while (v7 != a5);
  return 0xFFFFFFFF00000000;
}

char *sub_31E394(uint64_t a1, unsigned int a2, int a3)
{
  v22 = a3;
  v23 = a2;
  v21[0] = &v22;
  v21[1] = &v23;
  v3 = *(a1 + 3856) + 1;
  *(a1 + 3856) = v3;
  if (!*a1)
  {
    goto LABEL_34;
  }

  if (*(a1 + 496) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 504) = v3;
    v4 = *(a1 + 512);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 520) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 528) = v3;
    v4 = *(a1 + 536);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 544) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 552) = v3;
    v4 = *(a1 + 560);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 568) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 576) = v3;
    v4 = *(a1 + 584);
    if (v4)
    {
      return v4 + *v4;
    }
  }

  else
  {
    v6 = a1 + 16;
    v7 = *(a1 + 552);
    v8 = *(a1 + 528);
    v9 = *(a1 + 504);
    v10 = v9 >= v3;
    if (v9 < v3)
    {
      v3 = *(a1 + 504);
    }

    v11 = 20;
    if (v10)
    {
      v11 = 0;
    }

    v12 = v8 >= v3;
    if (v8 < v3)
    {
      v3 = *(a1 + 528);
    }

    v13 = 21;
    if (v12)
    {
      v13 = v11;
    }

    if (v7 >= v3)
    {
      v14 = v3;
    }

    else
    {
      v14 = *(a1 + 552);
    }

    v15 = *(a1 + 576);
    if (v7 >= v3)
    {
      v16 = v13;
    }

    else
    {
      v16 = 22;
    }

    v18 = sub_2D52A4(*a1, 5, a2, 1);
    v19 = 23;
    if (v15 >= v14)
    {
      v19 = v16;
    }

    v20 = v6 + 24 * v19;
    *v20 = v23;
    *(v20 + 8) = *(a1 + 3856);
    *(v20 + 16) = v18;
    if (v18)
    {
      return v18 + *v18;
    }
  }

LABEL_34:
  sub_31E568(v21);
  return 0;
}

uint64_t sub_31E568(int **a1)
{
  v1 = **a1;
  if (v1 != 1)
  {
    if (!v1)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = *a1[1];
      v11[0] = sub_7FCF0(5u);
      v11[1] = v5;
      sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", v11, v13);
      if ((v14 & 0x80u) == 0)
      {
        v6 = v13;
      }

      else
      {
        v6 = v13[0];
      }

      if ((v14 & 0x80u) == 0)
      {
        v7 = v14;
      }

      else
      {
        v7 = v13[1];
      }

      v8 = sub_2D390(exception, v6, v7);
    }

    v9 = __cxa_allocate_exception(0x40uLL);
    v10 = sub_2D390(v9, "Unknown data access error policy", 0x20uLL);
  }

  return 0;
}

void sub_31E664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_31E694(uint64_t a1, unsigned int *a2, int a3, uint64_t *a4)
{
  if (a2)
  {
    v5 = *a2;
    if (v5)
    {
      v9 = 0;
      v10 = 4 * v5;
      do
      {
        v11 = a2[v9 / 4 + 1];
        v12 = (&a2[v9 / 4] + v11 - *(&a2[v9 / 4 + 1] + v11));
        if (v12[2] < 7u)
        {
          LODWORD(v13) = 0;
        }

        else
        {
          v13 = v12[5];
          if (v12[5])
          {
            LODWORD(v13) = *(&a2[v9 / 4 + 1] + v11 + v13);
          }
        }

        v14 = *(&a2[v9 / 4 + 1] + v11 + v12[4]);
        v18 = v14 & 0xFFFFFFFFFFFFLL | (((v14 & 0xFF000000000000) == 0) << 48);
        v19 = v13;
        if (v13 == a3)
        {
          if (*(a1 + 7774) != 1 || (v15 = sub_2AF704(a1 + 3896, v14, 1)) != 0 && (v16 = &v15[-*v15], *v16 >= 5u) && (v17 = *(v16 + 2)) != 0 && *&v15[v17 + *&v15[v17]] > WORD2(v14) && sub_2B817C(a1, v14 & 0xFFFFFFFFFFFFLL))
          {
            sub_31E7FC(*a4, &v18);
          }
        }

        v9 += 4;
      }

      while (v10 != v9);
    }
  }
}

void sub_31E7FC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 8) = *(a2 + 2);
    *v3 = v5;
    v6 = v3 + 12;
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 2);
  v9 = v8 + 1;
  if (v8 + 1 > 0x1555555555555555)
  {
    sub_1794();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 2);
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0xAAAAAAAAAAAAAAALL)
  {
    v11 = 0x1555555555555555;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 <= 0x1555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v12 = 4 * ((v3 - *a1) >> 2);
  *v12 = *a2;
  *(v12 + 8) = *(a2 + 2);
  v6 = 12 * v8 + 12;
  v13 = 12 * v8 - (v3 - v7);
  memcpy((v12 - (v3 - v7)), v7, v3 - v7);
  *a1 = v13;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

uint64_t sub_31E948(uint64_t a1)
{
  v2 = *(a1 + 52);
  *(a1 + 52) = v2 + 1;
  v3 = *(a1 + 24);
  v4 = *v3;
  if (v2 + 1 >= *v3)
  {
    v12 = *(*(a1 + 8) + 8) - **(a1 + 8);
    v13 = (*(a1 + 48) + 1);
    *(a1 + 48) = v13;
    if (v13 >= v12 >> 3)
    {
      return a1;
    }

    goto LABEL_11;
  }

  v5 = v3 + 1;
  v6 = &v3[v2 + 1];
  v7 = &v5[(v2 + 1)];
  if (*v6 == *v7 && v6[1] == v7[1])
  {
    v8 = *(*(a1 + 8) + 8) - **(a1 + 8);
    if (v4 != 2 || v8 != 8)
    {
      v10 = v2 + 2;
      v11 = (*(a1 + 48) + 1);
      *(a1 + 48) = v11;
      *(a1 + 52) = v10;
      if (v11 < v8 >> 3)
      {
        do
        {
LABEL_11:
          sub_318EF0(a1);
          *(a1 + 52) = 1;
          v14 = *(a1 + 24);
          if (v14[2] != v14[4])
          {
            break;
          }

          if (v14[3] != v14[5])
          {
            break;
          }

          v15 = (*(a1 + 48) + 1);
          *(a1 + 48) = v15;
          *(a1 + 52) = 2;
        }

        while (v15 < (*(*(a1 + 8) + 8) - **(a1 + 8)) >> 3);
      }
    }
  }

  return a1;
}

uint64_t sub_31EA68(uint64_t a1)
{
  v2 = *(a1 + 52);
  *(a1 + 52) = v2 - 1;
  v3 = *(a1 + 24);
  v4 = *v3;
  if (v2 - 1 >= *v3)
  {
    v12 = *(*(a1 + 8) + 8) - **(a1 + 8);
    v13 = (*(a1 + 48) - 1);
    *(a1 + 48) = v13;
    if (v13 >= v12 >> 3)
    {
      return a1;
    }

    goto LABEL_11;
  }

  v5 = v3 + 1;
  v6 = &v3[v2 + 1];
  v7 = &v5[(v2 - 1)];
  if (*v6 == *v7 && v6[1] == v7[1])
  {
    v8 = *(*(a1 + 8) + 8) - **(a1 + 8);
    if (v4 != 2 || v8 != 8)
    {
      v10 = v2 - 2;
      v11 = (*(a1 + 48) - 1);
      *(a1 + 48) = v11;
      *(a1 + 52) = v10;
      if (v11 < v8 >> 3)
      {
        do
        {
LABEL_11:
          sub_318EF0(a1);
          v14 = *(a1 + 24);
          v16 = *v14++;
          v15 = v16;
          *(a1 + 52) = v16 - 2;
          v17 = &v14[v16 - 1];
          v18 = &v14[v16 - 2];
          if (*v17 != *v18)
          {
            break;
          }

          if (v17[1] != v18[1])
          {
            break;
          }

          v19 = (*(a1 + 48) - 1);
          *(a1 + 48) = v19;
          *(a1 + 52) = v15 - 3;
        }

        while (v19 < (*(*(a1 + 8) + 8) - **(a1 + 8)) >> 3);
      }
    }
  }

  return a1;
}

unsigned int *sub_31EB90@<X0>(unsigned int *__src@<X0>, _BYTE *a2@<X8>)
{
  if (__src)
  {
    v3 = *__src;
    if (v3 >= 0x17)
    {
      operator new();
    }

    a2[23] = v3;
    if (v3)
    {
      __src = memcpy(a2, __src + 1, v3);
    }

    a2[v3] = 0;
  }

  else
  {
    a2[23] = 0;
    *a2 = 0;
  }

  return __src;
}

uint64_t sub_31EC40(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v8 = sub_2B51D8(a1, a2 & 0xFFFFFFFFFFFFLL);
  v9 = (v8 - *v8);
  if (*v9 >= 0x21u)
  {
    v10 = v9[16];
    if (v10)
    {
      v11 = (v8 + v10 + *(v8 + v10));
      v12 = *v11;
      if (v12)
      {
        v13 = 0;
        v14 = 8 * v12;
        v15 = (v11 + 1);
        v16 = a2 & 0xFFFFFFFFFFFFLL;
        v17 = a3 & 0xFFFFFFFFFFFFLL;
        v18 = HIWORD(a2);
        while (1)
        {
          if (!sub_31F18C(a1, *v15))
          {
            goto LABEL_6;
          }

          v19 = sub_30CC30(a1, *v15);
          if (a4 == 3)
          {
            v20 = *v19;
            if (*(v19 - v20) < 0xFu || !*(v19 - v20 + 14) || (*(v19 + *(v19 - v20 + 14)) & 4) == 0)
            {
              goto LABEL_6;
            }
          }

          else if (a4 == 2)
          {
            v20 = *v19;
            if (*(v19 - v20) < 0xFu || !*(v19 - v20 + 14) || (*(v19 + *(v19 - v20 + 14)) & 2) == 0)
            {
              goto LABEL_6;
            }
          }

          else
          {
            if (a4)
            {
              goto LABEL_6;
            }

            v20 = *v19;
            v21 = -v20;
            if (*(v19 - v20) < 0xFu || !*(v19 - v20 + 14))
            {
              goto LABEL_23;
            }

            if ((*(v19 + *(v19 - v20 + 14)) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          v21 = -v20;
LABEL_23:
          v22 = (v19 + v21);
          v23 = (v19 + *(v19 + v21 + 6));
          v24 = v23 + *v23;
          v25 = *(v24 + 4);
          if ((v25 & 0xFFFFFFFFFFFFLL) == v16 && ((v25 & 0xFF000000000000) == 0) == v18 && (*v22 < 9u || !v22[4]))
          {
            v26 = v22[2];
            if (v26)
            {
              if (*(v19 + v26))
              {
                goto LABEL_35;
              }
            }

            if (*v24 == 2)
            {
              v27 = *(v24 + 12);
              if ((v27 & 0xFFFFFFFFFFFFLL) == v17 && ((v27 & 0xFF000000000000) == 0) == BYTE6(a3))
              {
                v13 = 1;
                return v13 & 1;
              }
            }

            if (v26)
            {
LABEL_35:
              if (*(v19 + v26) == 1 && *v24 >= 2u)
              {
                v28 = *(v24 + 12);
                v13 = 1;
                if ((v28 & 0xFFFFFFFFFFFFLL) == v17 && ((v28 & 0xFF000000000000) == 0) == BYTE6(a3))
                {
                  break;
                }
              }
            }
          }

LABEL_6:
          ++v15;
          v14 -= 8;
          if (!v14)
          {
            return v13 & 1;
          }
        }
      }
    }
  }

  v13 = 0;
  return v13 & 1;
}

uint64_t sub_31EE90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_31DDCC(a1, a2);
  v6 = sub_31DDCC(a1, a3);
  v7 = HIDWORD(v6);
  if (!v5)
  {
    v9 = 0;
    goto LABEL_9;
  }

  v8 = HIDWORD(v5);
  v9 = HIDWORD(v5) != 0xFFFFFFFF;
  if (HIDWORD(v5) == 0xFFFFFFFF || !v6 || v7 == 0xFFFFFFFF)
  {
LABEL_9:
    if (v6)
    {
      v11 = v7 == 0xFFFFFFFF;
    }

    else
    {
      v11 = 1;
    }

    v12 = v11;
    return v12 ^ v9;
  }

  if (v5 == v6 && v8 == v7)
  {
    return 1;
  }

  v13 = v6;
  v14 = sub_31E394(a1 + 3896, v5, 0);
  v15 = &v14[-*v14];
  if (*v15 >= 5u)
  {
    v16 = *(v15 + 2);
    if (v16)
    {
      v17 = &v14[v16 + *&v14[v16]];
      v18 = v17;
      if (v5 == v13)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

  v17 = 0;
  v18 = 0;
  if (v5 != v13)
  {
LABEL_21:
    v19 = sub_31E394(a1 + 3896, v13, 0);
    v20 = &v19[*&v19[-*v19 + 4]];
    v18 = &v20[*v20];
  }

LABEL_22:
  v21 = &v17[4 * v8 + 4 + *&v17[4 * v8 + 4]];
  v22 = &v21[*&v21[-*v21 + 4]];
  v23 = &v22[*v22 + 4 + *&v22[*v22 + 4]];
  v24 = &v18[4 * v7 + 4 + *&v18[4 * v7 + 4]];
  v25 = &v24[*&v24[-*v24 + 4]];
  v26 = &v25[*v25];
  v29 = *(v26 + 1);
  v27 = v26 + 4;
  v28 = v29;
  v30 = &v23[-*v23];
  v31 = *v30;
  if (v31 >= 0xB && *(v30 + 5) && v23[*(v30 + 5)])
  {
    return 0;
  }

  v32 = &v27[v28];
  v33 = &v27[v28 - *&v27[v28]];
  if (*v33 >= 0xBu)
  {
    v34 = *(v33 + 5);
    if (v34)
    {
      if (v32[v34])
      {
        return 0;
      }
    }
  }

  if (v31 >= 5 && (v35 = *(v30 + 2)) != 0)
  {
    v36 = &v23[v35 + *&v23[v35]];
  }

  else
  {
    v36 = 0;
  }

  sub_31EB90(v36, v44);
  v37 = &v32[-*v32];
  if (*v37 >= 5u && (v38 = *(v37 + 2)) != 0)
  {
    v39 = &v32[v38 + *&v32[v38]];
  }

  else
  {
    v39 = 0;
  }

  sub_31EB90(v39, __p);
  result = sub_BB4E4(v44, __p);
  if ((v43 & 0x80000000) == 0)
  {
    if ((v45 & 0x80000000) == 0)
    {
      return result;
    }

LABEL_41:
    v41 = result;
    operator delete(v44[0]);
    return v41;
  }

  v40 = result;
  operator delete(__p[0]);
  result = v40;
  if (v45 < 0)
  {
    goto LABEL_41;
  }

  return result;
}

void sub_31F170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_31F18C(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 7774) != 1)
  {
    return &dword_0 + 1;
  }

  result = sub_2D5204(*(a1 + 3880));
  if (result)
  {
    v5 = sub_30CC30(a1, a2);
    v6 = (v5 - *v5);
    if (*v6 >= 7u && (v7 = v6[3]) != 0)
    {
      v8 = (v5 + v7);
      v9 = *v8;
      v11 = (v8 + v9 + 4);
      v10 = *(v8 + v9);
      if (v10 && *(a1 + 7774) == 1)
      {
        v12 = &v11[2 * v10];
        while (1)
        {
          if (*(a1 + 7774) == 1)
          {
            v13 = *v11;
            v14 = *(v11 + 2);
            result = sub_2AF704(a1 + 3896, *v11, 1);
            if (!result)
            {
              return result;
            }

            v15 = (result - *result);
            if (*v15 < 5u)
            {
              return 0;
            }

            v16 = v15[2];
            if (!v16 || *(result + v16 + *(result + v16)) <= v14)
            {
              return 0;
            }

            result = sub_2B817C(a1, v13 | (v14 << 32));
            if (!result)
            {
              return result;
            }
          }

          v11 += 2;
          result = &dword_0 + 1;
          if (v11 == v12)
          {
            return result;
          }
        }
      }

      return &dword_0 + 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_31F2E4(uint64_t *result, __int128 *a2)
{
  v2 = *result;
  v3 = *(*result + 8);
  v4 = *(*result + 16);
  if (v3 >= v4)
  {
    v7 = *v2;
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *v2) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0x666666666666666)
    {
      sub_1794();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - v7) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x333333333333333)
    {
      v11 = 0x666666666666666;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1808();
    }

    v12 = result;
    v13 = 8 * ((v3 - *v2) >> 3);
    v14 = a2[1];
    *v13 = *a2;
    *(v13 + 16) = v14;
    *(v13 + 32) = *(a2 + 4);
    v15 = 40 * v8 + 40;
    v16 = 40 * v8 - (v3 - v7);
    memcpy((v13 - (v3 - v7)), v7, v3 - v7);
    *v2 = v16;
    *(v2 + 8) = v15;
    *(v2 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }

    result = v12;
    *(v2 + 8) = v15;
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    *(v3 + 32) = *(a2 + 4);
    *v3 = v5;
    *(v3 + 16) = v6;
    *(v2 + 8) = v3 + 40;
  }

  return result;
}

int *sub_31F43C(int *result, unsigned int *a2, void *a3)
{
  if (a2)
  {
    v4 = *a2;
    if (v4)
    {
      v6 = result;
      v7 = 0;
      v8 = 4 * v4;
      v32 = result;
      while (1)
      {
        v10 = a2[v7 / 4 + 1];
        v11 = (&a2[v7 / 4] + v10 - *(&a2[v7 / 4 + 1] + v10));
        if (v11[2] < 7u)
        {
          goto LABEL_5;
        }

        if (!v11[5])
        {
          goto LABEL_5;
        }

        v12 = *(&a2[v7 / 4 + 1] + v10 + v11[4]);
        if (*(&a2[v7 / 4 + 1] + v10 + v11[5]) != 3)
        {
          goto LABEL_5;
        }

        if (*(v6 + 7774) == 1)
        {
          result = sub_2AF704(v6 + 3896, v12, 1);
          if (!result)
          {
            goto LABEL_5;
          }

          v13 = (result - *result);
          if (*v13 < 5u)
          {
            goto LABEL_5;
          }

          v14 = v13[2];
          if (!v14)
          {
            goto LABEL_5;
          }

          if (*(result + v14 + *(result + v14)) <= WORD2(v12))
          {
            goto LABEL_5;
          }

          result = sub_2B817C(v6, v12 & 0xFFFFFFFFFFFFLL);
          if (!result)
          {
            goto LABEL_5;
          }
        }

        v15 = *a3;
        if (*(*a3 + 32))
        {
          if (*v15 && v15[1])
          {
            goto LABEL_5;
          }
        }

        v16 = a3;
        v17 = a3[1];
        v18 = sub_2B51D8(v17, v12 & 0xFFFFFFFFFFFFLL);
        if (*(v17 + 7772) == 1)
        {
          v19 = sub_30C50C(v17 + 3896, v12, 0);
          v20 = &v19[-*v19];
          if (*v20 < 5u)
          {
            v21 = 0;
          }

          else
          {
            v21 = *(v20 + 2);
            if (v21)
            {
              v21 += &v19[*&v19[v21]];
            }
          }

          v31 = v21 + ((v12 >> 30) & 0x3FFFC) + 4 + *(v21 + ((v12 >> 30) & 0x3FFFC) + 4);
        }

        else
        {
          v31 = 0;
        }

        result = sub_31D7E8(v17, v12 & 0xFFFFFFFFFFFFLL, 1);
        v23 = (v18 - *v18);
        v24 = *v23;
        a3 = v16;
        if ((v12 & 0xFF000000000000) != 0)
        {
          break;
        }

        v6 = v32;
        if (v24 < 0x47)
        {
          goto LABEL_5;
        }

        v28 = v23[35];
        if (!v28)
        {
          goto LABEL_5;
        }

        v29 = *(v18 + v28);
        if ((v29 & 2) != 0)
        {
          goto LABEL_4;
        }

        v27 = 0;
        if (v29)
        {
          goto LABEL_35;
        }

LABEL_5:
        v7 += 4;
        if (v8 == v7)
        {
          return result;
        }
      }

      v6 = v32;
      if (v24 < 0x47)
      {
        goto LABEL_5;
      }

      v25 = v23[35];
      if (!v25)
      {
        goto LABEL_5;
      }

      v26 = *(v18 + v25);
      if ((v26 & 1) == 0)
      {
        v27 = 1;
        if ((v26 & 2) == 0)
        {
          goto LABEL_5;
        }

LABEL_35:
        v30 = *a3;
        *v30 = v18;
        *(v30 + 8) = v31;
        *(v30 + 16) = result;
        *(v30 + 24) = v22;
        *(v30 + 32) = v12;
        *(v30 + 36) = WORD2(v12);
        *(v30 + 38) = v27;
        *(v30 + 39) = 0;
        goto LABEL_5;
      }

LABEL_4:
      v9 = *a3;
      *v9 = v18;
      v9[1] = v31;
      v9[2] = result;
      v9[3] = v22;
      v9[4] = v12 & 0xFFFFFFFFFFFFLL | (((v12 & 0xFF000000000000) == 0) << 48);
      goto LABEL_5;
    }
  }

  return result;
}