unsigned int *sub_10002F308(unsigned int *result, uint64_t a2)
{
  v2 = result[2];
  if (v2 > 0x40)
  {
    **result = a2;
    v4 = result;
    bzero((*result + 8), (((v2 + 63) >> 3) - 8) & 0xFFFFFFF8);
    return v4;
  }

  else
  {
    if (v2)
    {
      v3 = 0xFFFFFFFFFFFFFFFFLL >> -v2;
    }

    else
    {
      v3 = 0;
    }

    *result = v3 & a2;
  }

  return result;
}

void llvm::APInt::udivrem(const void **this, unint64_t a2, uint64_t a3, int8x16_t *a4, unint64_t *a5, uint64_t a6, unint64_t *a7)
{
  v35.i64[0] = a2;
  v9 = *(this + 2);
  if (v9 > 0x40)
  {
    v11 = 0;
    v12 = (v9 + 63) >> 6;
    v13 = *this;
    v14 = v12 + 1;
    while (1)
    {
      v15 = v13[(v14 - 2)];
      if (v15)
      {
        break;
      }

      v11 += 64;
      if (--v14 <= 1)
      {
        v16 = v9 | 0xFFFFFFC0;
        if ((v9 & 0x3F) == 0)
        {
          v16 = 0;
        }

        v17 = v11 + v16;
        v18 = (v9 - v17);
        if (v9 == v17)
        {
          goto LABEL_12;
        }

        goto LABEL_16;
      }
    }

    v19 = __clz(v15) + v11;
    v16 = v9 | 0xFFFFFFC0;
    if ((v9 & 0x3F) == 0)
    {
      v16 = 0;
    }

    v20 = v19 + v16;
    v18 = (v9 - v20);
    if (v9 == v20)
    {
LABEL_12:
      operator new[]();
    }

LABEL_16:
    if (a2 == 1)
    {
      if (a3 != this)
      {
        v21 = *(a3 + 8);
        if (v12 != (v21 + 63) >> 6)
        {
          if (v21 >= 0x41 && *a3)
          {
            operator delete[]();
          }

          *(a3 + 8) = v9;
          operator new[]();
        }

        *(a3 + 8) = v9;
        memcpy(*a3, *this, ((v9 + 63) >> 3) & 0x3FFFFFF8);
      }

      a4->i64[0] = 0;
    }

    else
    {
      v22 = 0;
      v23 = (v18 + 63) >> 6;
      v24 = v12 + 1;
      while (1)
      {
        v25 = v13[(v24 - 2)];
        if (v25)
        {
          break;
        }

        v22 += 64;
        if (--v24 <= 1)
        {
          if ((v9 - v16 - v22) > 0x40)
          {
            goto LABEL_29;
          }

          goto LABEL_27;
        }
      }

      if (v9 - v16 - (__clz(v25) + v22) > 0x40)
      {
        goto LABEL_29;
      }

LABEL_27:
      if (*v13 < a2)
      {
        a4->i64[0] = *v13;
        operator new[]();
      }

LABEL_29:
      v26 = 0;
      v27 = v12 + 1;
      while (1)
      {
        v28 = v13[(v27 - 2)];
        if (v28)
        {
          break;
        }

        v26 += 64;
        if (--v27 <= 1)
        {
          if ((v9 - v16 - v26) > 0x40)
          {
            goto LABEL_37;
          }

          goto LABEL_35;
        }
      }

      if (v9 - v16 - (__clz(v28) + v26) > 0x40)
      {
        goto LABEL_37;
      }

LABEL_35:
      if (*v13 == a2)
      {
        operator new[]();
      }

LABEL_37:
      v29 = *(a3 + 8);
      if (v12 != (v29 + 63) >> 6)
      {
        if (v29 >= 0x41 && *a3)
        {
          operator delete[]();
        }

        *(a3 + 8) = v9;
        operator new[]();
      }

      *(a3 + 8) = v9;
      v30 = *this;
      if (v23 == 1)
      {
        v32 = *v30;
        v33 = *v30 / a2;
        sub_10002F308(a3, v33);
        a4->i64[0] = v32 - v33 * a2;
      }

      else
      {
        llvm::APInt::divide(v30, v23, &v35, 1, *a3, a4, a7);
        v31 = (*a3 + 8 * v23);

        bzero(v31, (8 * (v12 - v23)));
      }
    }
  }

  else
  {
    v10 = *this / a2;
    a4->i64[0] = *this % a2;
    if (*(a3 + 8) >= 0x41u)
    {
      if (*a3)
      {
        operator delete[]();
      }
    }

    *a3 = v10;
    *(a3 + 8) = v9;
  }
}

uint64_t sub_10002F7D8(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 <= 0x40)
  {
    v2 = 0xFFFFFFFFFFFFFFFFLL >> -v1;
    if (!v1)
    {
      v2 = 0;
    }

    *result = v2 & ~*result;
    goto LABEL_13;
  }

  v3 = *result;
  v4 = (v1 + 63) >> 6;
  if (v1 < 0xC1)
  {
    v5 = 0;
LABEL_10:
    v9 = v4 - v5;
    v10 = &v3->i64[v5];
    do
    {
      *v10 = ~*v10;
      ++v10;
      --v9;
    }

    while (v9);
    goto LABEL_12;
  }

  v5 = ((v1 + 63) >> 6) & 0x7FFFFFC;
  v6 = v3 + 1;
  v7 = v5;
  do
  {
    v8 = vmvnq_s8(*v6);
    v6[-1] = vmvnq_s8(v6[-1]);
    *v6 = v8;
    v6 += 2;
    v7 -= 4;
  }

  while (v7);
  if (v4 != v5)
  {
    goto LABEL_10;
  }

LABEL_12:
  *(*result + 8 * (v4 - 1)) &= 0xFFFFFFFFFFFFFFFFLL >> -v1;
  v1 = *(result + 8);
  if (v1 < 0x41)
  {
LABEL_13:
    v11 = *result + 1;
    *result = v11;
    if (v1)
    {
      v12 = 0xFFFFFFFFFFFFFFFFLL >> -v1;
    }

    else
    {
      v12 = 0;
    }

    *result = v12 & v11;
    return result;
  }

  v13 = *result;
  v14 = (v1 + 63) >> 6;
  v15 = **result;
  **result = v15 + 1;
  if (v15 == -1)
  {
    v16 = v13->i64[1];
    v13->i64[1] = v16 + 1;
    if (v16 == -1)
    {
      v17 = v13 + 1;
      v18 = v14 - 2;
      do
      {
        if (!v18)
        {
          break;
        }

        --v18;
        v19 = __CFADD__(v17->i64[0]++, 1);
        v17 = (v17 + 8);
      }

      while (v19);
    }
  }

  result = *result + 8 * (v14 - 1);
  *result &= 0xFFFFFFFFFFFFFFFFLL >> -v1;
  return result;
}

void llvm::APInt::toString(uint64_t a1, void *a2, uint64_t a3, char a4, int a5, int a6, int a7)
{
  if (a5)
  {
    HIDWORD(v9) = a3 - 2;
    LODWORD(v9) = a3 - 2;
    v10 = off_1002B3F48[(v9 >> 1)];
  }

  else
  {
    v10 = "";
  }

  if (a3 == 10 || a3 == 8)
  {
    v12 = 3;
  }

  else
  {
    v12 = 4;
  }

  v13 = *(a1 + 8);
  if (v13 > 0x40)
  {
    v22 = 0;
    v23 = ((v13 + 63) >> 6) + 1;
    while (1)
    {
      v24 = *(*a1 + 8 * (v23 - 2));
      if (v24)
      {
        break;
      }

      v22 += 64;
      if (--v23 <= 1)
      {
        v25 = v13 | 0xFFFFFFC0;
        if ((v13 & 0x3F) == 0)
        {
          v25 = 0;
        }

        if (v22 + v25 == v13)
        {
          goto LABEL_35;
        }

LABEL_47:
        v39 = *(a1 + 8);
        operator new[]();
      }
    }

    v32 = __clz(v24) + v22;
    v33 = v13 | 0xFFFFFFC0;
    if ((v13 & 0x3F) == 0)
    {
      v33 = 0;
    }

    if (v32 + v33 != v13)
    {
      goto LABEL_47;
    }

LABEL_35:
    v26 = *v10;
    if (*v10)
    {
      v27 = a2[1];
      v28 = (v10 + 1);
      do
      {
        if ((v27 + 1) > a2[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v27 + 1, 1);
          v27 = a2[1];
        }

        *(*a2 + v27) = v26;
        v27 = a2[1] + 1;
        a2[1] = v27;
        v29 = *v28++;
        v26 = v29;
      }

      while (v29);
    }

    else
    {
      v27 = a2[1];
    }

    if ((v27 + 1) > a2[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v27 + 1, 1);
      v27 = a2[1];
    }

    *(*a2 + v27) = 48;
    ++a2[1];
  }

  else
  {
    v14 = *a1;
    if (!*a1)
    {
      goto LABEL_35;
    }

    if (a6)
    {
      v15 = 36;
    }

    else
    {
      v15 = 0;
    }

    if (a4)
    {
      v14 = v13 ? (v14 << -v13) >> -v13 : 0;
      if ((v14 & 0x8000000000000000) != 0)
      {
        v16 = a2[1];
        if ((v16 + 1) > a2[2])
        {
          v37 = a3;
          llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v16 + 1, 1);
          a3 = v37;
          v16 = a2[1];
        }

        *(*a2 + v16) = 45;
        ++a2[1];
        v14 = -v14;
      }
    }

    v17 = *v10;
    if (*v10)
    {
      v18 = a2[1];
      v19 = (v10 + 1);
      do
      {
        if ((v18 + 1) > a2[2])
        {
          v21 = a3;
          llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v18 + 1, 1);
          a3 = v21;
          v18 = a2[1];
        }

        *(*a2 + v18) = v17;
        v18 = a2[1] + 1;
        a2[1] = v18;
        v20 = *v19++;
        v17 = v20;
      }

      while (v20);
    }

    if (v14)
    {
      v30 = &a0123456789abcd_0[v15];
      v40 = a0123456789abcd_0[v15 + v14 % a3];
      if (v14 >= a3)
      {
        v36 = 1;
        v31 = 64;
        do
        {
          if (a7 && !(v36 % v12))
          {
            --v31;
            *(&v38 + v31) = 39;
          }

          v14 /= a3;
          --v31;
          *(&v38 + v31) = v30[v14 % a3];
          ++v36;
        }

        while (v14 >= a3);
      }

      else
      {
        v31 = 64;
      }
    }

    else
    {
      v31 = 65;
    }

    v34 = a2[1];
    v35 = v34 + 65 - v31;
    if (a2[2] < v35)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v35, 1);
      v34 = a2[1];
    }

    if (v31 != 65)
    {
      memcpy((*a2 + v34), &v38 + v31, 65 - v31);
      v34 = a2[1];
    }

    a2[1] = v34 + 65 - v31;
  }
}

void llvm::APInt::print(llvm::APInt *this, llvm::raw_ostream *a2, char a3)
{
  v4 = v6;
  v5 = xmmword_10028F060;
  llvm::APInt::toString(this, &v4, 10, a3, 0, 1, 0);
  llvm::raw_ostream::write(a2, v4, v5);
  if (v4 != v6)
  {
    free(v4);
  }
}

void llvm::APInt::tcSet(llvm::APInt *this, unint64_t *a2, unsigned int a3)
{
  *this = a2;
  if (a3 >= 2)
  {
    bzero(this + 8, 8 * (a3 - 1));
  }
}

uint64_t llvm::APInt::tcAssign(uint64_t this, unint64_t *a2, const unint64_t *a3)
{
  if (a3)
  {
    v3 = 0;
    if (a3 < 4)
    {
      goto LABEL_7;
    }

    if ((this - a2) <= 0x1F)
    {
      goto LABEL_7;
    }

    v3 = a3 & 0xFFFFFFFC;
    v4 = a2 + 2;
    v5 = (this + 16);
    v6 = v3;
    do
    {
      v7 = *v4;
      *(v5 - 1) = *(v4 - 1);
      *v5 = v7;
      v4 += 4;
      v5 += 2;
      v6 -= 4;
    }

    while (v6);
    if (v3 != a3)
    {
LABEL_7:
      v8 = &a2[v3];
      v9 = (this + 8 * v3);
      v10 = a3 - v3;
      do
      {
        v11 = *v8++;
        *v9++ = v11;
        --v10;
      }

      while (v10);
    }
  }

  return this;
}

BOOL llvm::APInt::tcIsZero(llvm::APInt *this, const unint64_t *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (*this)
  {
    return 0;
  }

  v3 = 1;
  do
  {
    v4 = v3;
    if (a2 == v3)
    {
      break;
    }
  }

  while (!*(this + v3++));
  return v4 >= a2;
}

uint64_t llvm::APInt::tcLSB(llvm::APInt *this, const unint64_t *a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = 0;
  v3 = a2;
  while (1)
  {
    v5 = *this;
    this = (this + 8);
    v4 = v5;
    if (v5)
    {
      break;
    }

    v2 -= 64;
    if (!--v3)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return __clz(__rbit64(v4)) - v2;
}

uint64_t llvm::APInt::tcMSB(llvm::APInt *this, const unint64_t *a2)
{
  v2 = 64 - (a2 << 6);
  v3 = a2 - 1;
  while (1)
  {
    v4 = *(this + v3);
    if (v4)
    {
      break;
    }

    v2 += 64;
    if (--v3 == -1)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return (__clz(v4) - v2) ^ 0x3F;
}

void llvm::APInt::tcExtract(llvm::APInt *this, unint64_t *a2, uint64_t a3, const unint64_t *a4, unsigned int a5)
{
  v5 = a4 + 63;
  v6 = (a4 + 63) >> 6;
  v7 = a5 >> 6;
  if (a4 == 0 || a4 >= 0xFFFFFFC1)
  {
    v8 = a5 & 0x3F;
    goto LABEL_12;
  }

  if (v5 < 0x200 || (v9 = 8 * v7 + a3, this - v9 < 0x20))
  {
    v10 = 0;
LABEL_6:
    v11 = v6 - v10;
    v12 = 8 * v10;
    v13 = (this + 8 * v10);
    v14 = (a3 + v12 + 8 * v7);
    do
    {
      v15 = *v14++;
      *v13++ = v15;
      --v11;
    }

    while (v11);
    goto LABEL_8;
  }

  v10 = v6 & 0x3FFFFFC;
  v23 = (v9 + 16);
  v24 = (this + 16);
  v25 = v10;
  do
  {
    v26 = *v23;
    *(v24 - 1) = *(v23 - 1);
    *v24 = v26;
    v23 += 2;
    v24 += 2;
    v25 -= 4;
  }

  while (v25);
  if (v10 != v6)
  {
    goto LABEL_6;
  }

LABEL_8:
  v8 = a5 & 0x3F;
  if ((a5 & 0x3F) != 0)
  {
    v16 = *this >> v8;
    *this = v16;
    if (v6 != 1)
    {
      v17 = (this + 8);
      for (i = 1; i != v6; ++i)
      {
        *(v17 - 1) = (*(this + i) << (64 - v8)) | v16;
        v16 = *(this + i) >> v8;
        *v17++ = v16;
      }
    }
  }

LABEL_12:
  v19 = (v5 & 0xFFFFFFC0) - v8;
  if (v19 >= a4)
  {
    if (v19 <= a4 || (a4 & 0x3F) == 0)
    {
      goto LABEL_18;
    }

    v21 = v6 - 1;
    v22 = *(this + (v6 - 1)) & (0xFFFFFFFFFFFFFFFFLL >> -(a4 & 0x3F));
  }

  else
  {
    v20 = (*(a3 + 8 * (v7 + v6)) & (0xFFFFFFFFFFFFFFFFLL >> (v19 - a4))) << v19;
    v21 = v6 - 1;
    v22 = v20 | *(this + (v6 - 1));
  }

  *(this + v21) = v22;
LABEL_18:
  if (v6 < a2)
  {
    bzero(this + ((v5 >> 3) & 0x1FFFFFF8), 8 * (~v6 + a2) + 8);
  }
}

llvm::APInt *llvm::APInt::tcFullMultiply(llvm::APInt *this, unint64_t *a2, unint64_t *a3, const unint64_t *a4, const unint64_t *a5)
{
  v6 = this;
  do
  {
    v7 = a5;
    a5 = a4;
    v8 = a3;
    a3 = a2;
    a2 = v8;
    a4 = v7;
  }

  while (a5 > v7);
  if (a5)
  {
    v9 = 0;
    v10 = a5;
    do
    {
      this = llvm::APInt::tcMultiplyPart(v6, v8, a3[v9], 0, v7, v7 + 1, v9 != 0);
      ++v9;
      v6 = (v6 + 8);
    }

    while (v10 != v9);
  }

  return this;
}

void *llvm::StoreIntToMemory(llvm **this, const llvm::APInt *__dst, size_t __n)
{
  if (*(this + 2) >= 0x41u)
  {
    v4 = *this;
  }

  else
  {
    v4 = this;
  }

  return memcpy(__dst, v4, __n);
}

void *llvm::LoadIntFromMemory(llvm *this, llvm::APInt *a2, size_t __n)
{
  if (*(this + 2) >= 0x41u)
  {
    this = *this;
  }

  return memcpy(this, a2, __n);
}

void sub_100030640()
{

  operator new[]();
}

void *sub_1000306C0@<X0>(int a1@<W8>)
{

  return memcpy(v1, v2, (8 * a1));
}

void sub_100030710(void *a1)
{

  bzero(a1, v1 & 0x3FFFFFF8);
}

uint64_t llvm::decodeBase64@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = *a3;
  *(a3 + 8) = *a3;
  if (!a2)
  {
    goto LABEL_79;
  }

  if ((a2 & 3) != 0)
  {
    std::generic_category();
    operator new();
  }

  v42 = a4;
  v6 = 0;
  v7 = a2 - 2;
  v48 = result + 1;
  v49 = a2 - 2;
  v43 = a2 - 5;
  v44 = a2 - 4;
  v45 = a2 - 3;
  v47 = result;
  do
  {
    while (1)
    {
      __p = v6;
      v50 = *(result + v6);
      if (v50 > 0x7Au)
      {
LABEL_80:
        v41 = std::generic_category();
        sub_100030CBC(92, v41, "Invalid Base64 character %#2.2x at index %llu", &v50, &__p);
      }

      v8 = a456789[v50];
      if (v50 != 61 || v8 == 64)
      {
        if (v8 == 64)
        {
          goto LABEL_80;
        }
      }

      else if (v6 < v7 || v7 == v6 && *(v48 + v7) != 61)
      {
        goto LABEL_80;
      }

      __p = (v6 + 1);
      v50 = *(result + v6 + 1);
      if (v50 > 0x7Au)
      {
        goto LABEL_80;
      }

      v9 = a456789[v50];
      if (v50 != 61 || v9 == 64)
      {
        if (v9 == 64)
        {
          goto LABEL_80;
        }
      }

      else if (v6 + 1 < v7 || v45 == v6 && *(v48 + v7) != 61)
      {
        goto LABEL_80;
      }

      __p = (v6 + 2);
      v50 = *(result + v6 + 2);
      if (v50 > 0x7Au)
      {
        goto LABEL_80;
      }

      v10 = a456789[v50];
      if (v50 != 61 || v10 == 64)
      {
        if (v10 == 64)
        {
          goto LABEL_80;
        }
      }

      else if (v6 + 2 < v7 || v44 == v6 && *(v48 + v7) != 61)
      {
        goto LABEL_80;
      }

      __p = (v6 + 3);
      v50 = *(result + v6 + 3);
      if (v50 > 0x7Au)
      {
        goto LABEL_80;
      }

      v11 = a456789[v50];
      if (v50 != 61 || v11 == 64)
      {
        if (v11 == 64)
        {
          goto LABEL_80;
        }
      }

      else if (v6 + 3 < v7 || v43 == v6 && *(v48 + v7) != 61)
      {
        goto LABEL_80;
      }

      v12 = (4 * v8) | (v9 >> 4) & 3;
      v13 = *(a3 + 16);
      if (v4 >= v13)
      {
        break;
      }

      *v4 = v12;
      v14 = v4 + 1;
      *(a3 + 8) = v14;
      v15 = (16 * v9) | (v10 >> 2) & 0xF;
      v16 = *(a3 + 16);
      if (v14 < v16)
      {
        goto LABEL_40;
      }

LABEL_53:
      v27 = *a3;
      v28 = &v14[-*a3];
      v29 = (v28 + 1);
      if ((v28 + 1) < 0)
      {
        goto LABEL_81;
      }

      v30 = v16 - v27;
      if (2 * v30 > v29)
      {
        v29 = 2 * v30;
      }

      if (v30 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v31 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v31 = v29;
      }

      if (v31)
      {
        operator new();
      }

      v32 = &v14[-*a3];
      *v28 = v15;
      v17 = v28 + 1;
      memcpy(0, v27, v32);
      *a3 = 0;
      *(a3 + 8) = v28 + 1;
      *(a3 + 16) = 0;
      if (v27)
      {
        operator delete(v27);
      }

      v18 = a2;
      result = v47;
      v7 = v49;
      *(a3 + 8) = v17;
      v19 = v11 & 0x3F | (v10 << 6);
      v20 = *(a3 + 16);
      if (v17 >= v20)
      {
        goto LABEL_64;
      }

LABEL_5:
      *v17 = v19;
      v4 = v17 + 1;
      *(a3 + 8) = v4;
      v6 += 4;
      if (v6 >= v18)
      {
        goto LABEL_75;
      }
    }

    v21 = *a3;
    v22 = &v4[-*a3];
    v23 = (v22 + 1);
    if ((v22 + 1) < 0)
    {
      goto LABEL_81;
    }

    v24 = v13 - v21;
    if (2 * v24 > v23)
    {
      v23 = 2 * v24;
    }

    if (v24 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v25 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v25 = v23;
    }

    if (v25)
    {
      operator new();
    }

    v26 = &v4[-*a3];
    *v22 = v12;
    v14 = v22 + 1;
    memcpy(0, v21, v26);
    *a3 = 0;
    *(a3 + 8) = v22 + 1;
    *(a3 + 16) = 0;
    if (v21)
    {
      operator delete(v21);
    }

    v7 = v49;
    *(a3 + 8) = v14;
    v15 = (16 * v9) | (v10 >> 2) & 0xF;
    v16 = *(a3 + 16);
    if (v14 >= v16)
    {
      goto LABEL_53;
    }

LABEL_40:
    *v14 = v15;
    v17 = v14 + 1;
    v18 = a2;
    result = v47;
    *(a3 + 8) = v17;
    v19 = v11 & 0x3F | (v10 << 6);
    v20 = *(a3 + 16);
    if (v17 < v20)
    {
      goto LABEL_5;
    }

LABEL_64:
    v33 = *a3;
    v34 = &v17[-*a3];
    v35 = (v34 + 1);
    if ((v34 + 1) < 0)
    {
LABEL_81:
      sub_10002BC08();
    }

    v36 = v18;
    v37 = result;
    v38 = v20 - v33;
    if (2 * v38 > v35)
    {
      v35 = 2 * v38;
    }

    if (v38 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v39 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v39 = v35;
    }

    if (v39)
    {
      operator new();
    }

    v40 = &v17[-*a3];
    *v34 = v19;
    v4 = v34 + 1;
    memcpy(0, v33, v40);
    *a3 = 0;
    *(a3 + 8) = v34 + 1;
    *(a3 + 16) = 0;
    if (v33)
    {
      operator delete(v33);
    }

    result = v37;
    v18 = v36;
    v7 = v49;
    *(a3 + 8) = v4;
    v6 += 4;
  }

  while (v6 < v36);
LABEL_75:
  if (*(result + v18 - 1) == 61)
  {
    *(a3 + 8) = v4 - 1;
    if (*(result + v7) == 61)
    {
      *(a3 + 8) = v4 - 2;
    }
  }

  a4 = v42;
LABEL_79:
  *a4 = 0;
  return result;
}

void sub_100030CBC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t *a5)
{
  memset(__p, 0, sizeof(__p));
  v12 = 0;
  v16 = 0;
  v17 = 1;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  v11 = &off_1002B45C0;
  v18 = __p;
  llvm::raw_ostream::SetBufferAndMode(&v11, 0, 0, 0);
  v8[0] = &off_1002B3F98;
  v8[1] = a3;
  v9 = *a4;
  v10 = *a5;
  llvm::raw_ostream::operator<<(&v11, v8);
  llvm::raw_ostream::~raw_ostream(&v11);
  operator new();
}

uint64_t llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::handleOccurrence(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6)
{
  v18[0] = 0;
  AsUnsignedInteger = llvm::getAsUnsignedInteger(a5, a6, 0, v18);
  if ((AsUnsignedInteger & 1) != 0 || HIDWORD(v18[0]))
  {
    v17 = 1283;
    v16[0] = "'";
    v16[2] = a5;
    v16[3] = a6;
    v18[0] = v16;
    v18[2] = "' value invalid for uint argument!";
    v19 = 770;
    v13 = llvm::errs(AsUnsignedInteger);
    llvm::cl::Option::error(a1, v18, 0, 0, v13, v14, v15);
    return 1;
  }

  else
  {
    LODWORD(v16[0]) = v18[0];
    *(a1 + 120) = v18[0];
    *(a1 + 12) = a2;
    v11 = *(a1 + 176);
    if (v11)
    {
      (*(*v11 + 48))(v11, v16);
      return 0;
    }

    else
    {
      sub_100033DA0();
      return llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::getValueExpectedFlagDefault();
    }
  }
}

uint64_t llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::getOptionWidth(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == 1)
  {
    v3 = 7;
  }

  else
  {
    v3 = v2 + 7;
  }

  (*(*(a1 + 144) + 16))();
  if (v4)
  {
    v5 = 6;
    if ((*(a1 + 10) & 0x400) == 0)
    {
      v5 = 3;
    }

    v6 = *(a1 + 56);
    if (!v6)
    {
      v6 = v4;
    }

    v3 += v5 + v6;
  }

  return v3;
}

uint64_t llvm::cl::basic_parser_impl::getOptionWidth(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3 == 1)
  {
    v4 = 7;
  }

  else
  {
    v4 = v3 + 7;
  }

  (*(*a1 + 16))(a1);
  if (v5)
  {
    v6 = 6;
    if ((*(a2 + 10) & 0x400) == 0)
    {
      v6 = 3;
    }

    v7 = *(a2 + 56);
    if (!v7)
    {
      v7 = v5;
    }

    v4 += v6 + v7;
  }

  return v4;
}

void *llvm::cl::basic_parser_impl::printOptionInfo(llvm::cl::basic_parser_impl *this, const llvm::cl::Option *a2, unsigned int a3)
{
  v6 = llvm::outs(this);
  v47 = *(a2 + 1);
  v48 = 2;
  sub_100031FD8(v6, &v47);
  v7 = (*(*this + 16))(this);
  if (!v8)
  {
    goto LABEL_48;
  }

  v9 = v7;
  v10 = v8;
  v11 = *(a2 + 5);
  if ((v11 & 0x400) != 0)
  {
    v16 = llvm::outs(v7);
    v17 = v16[4];
    if (v16[3] - v17 > 1uLL)
    {
      *v17 = 15392;
      v18 = (v16[4] + 2);
      v16[4] = v18;
    }

    else
    {
      v16 = llvm::raw_ostream::write(v16, " <", 2uLL);
      v18 = v16[4];
    }

    v19 = *(a2 + 7);
    if (v19)
    {
      v20 = *(a2 + 6);
    }

    else
    {
      v20 = v9;
    }

    if (v19)
    {
      v10 = *(a2 + 7);
    }

    if (v10 <= v16[3] - v18)
    {
      v23 = v16;
      memcpy(v18, v20, v10);
      v21 = v23;
      v22 = (v23[4] + v10);
      v23[4] = v22;
      if (v23[3] - v22 > 3uLL)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v21 = llvm::raw_ostream::write(v16, v20, v10);
      v22 = v21[4];
      if (v21[3] - v22 > 3uLL)
      {
LABEL_17:
        *v22 = 774778430;
        v21[4] += 4;
        goto LABEL_48;
      }
    }

    llvm::raw_ostream::write(v21, ">...", 4uLL);
    goto LABEL_48;
  }

  v12 = (v11 >> 3) & 3;
  if (!v12)
  {
    v24 = (*(*a2 + 8))(a2);
    v25 = v24;
    v13 = llvm::outs(v24);
    if (v25 == 1)
    {
      goto LABEL_5;
    }

LABEL_21:
    if (*(a2 + 3) == 1)
    {
      v26 = " <";
    }

    else
    {
      v26 = "=<";
    }

    v27 = *(v13 + 4);
    if (*(v13 + 3) - v27 > 1uLL)
    {
      *v27 = *v26;
      v28 = (*(v13 + 4) + 2);
      *(v13 + 4) = v28;
    }

    else
    {
      v13 = llvm::raw_ostream::write(v13, v26, 2uLL);
      v28 = *(v13 + 4);
    }

    v33 = *(a2 + 7);
    if (v33)
    {
      v34 = *(a2 + 6);
    }

    else
    {
      v34 = v9;
    }

    if (v33)
    {
      v10 = *(a2 + 7);
    }

    if (v10 <= *(v13 + 3) - v28)
    {
      v38 = v13;
      memcpy(v28, v34, v10);
      v35 = v38;
      v36 = (*(v38 + 4) + v10);
      *(v38 + 4) = v36;
      if (v36 >= *(v38 + 3))
      {
        goto LABEL_43;
      }
    }

    else
    {
      v35 = llvm::raw_ostream::write(v13, v34, v10);
      v36 = *(v35 + 4);
      if (v36 >= *(v35 + 3))
      {
LABEL_43:
        llvm::raw_ostream::write(v35, 62);
        goto LABEL_48;
      }
    }

    *(v35 + 4) = v36 + 1;
    *v36 = 62;
    goto LABEL_48;
  }

  v13 = llvm::outs(v7);
  if (v12 != 1)
  {
    goto LABEL_21;
  }

LABEL_5:
  v14 = *(v13 + 4);
  if ((*(v13 + 3) - v14) > 2)
  {
    *(v14 + 2) = 60;
    *v14 = 15707;
    v15 = (*(v13 + 4) + 3);
    *(v13 + 4) = v15;
  }

  else
  {
    v13 = llvm::raw_ostream::write(v13, "[=<", 3uLL);
    v15 = *(v13 + 4);
  }

  v29 = *(a2 + 7);
  if (v29)
  {
    v30 = *(a2 + 6);
  }

  else
  {
    v30 = v9;
  }

  if (v29)
  {
    v10 = *(a2 + 7);
  }

  if (v10 <= *(v13 + 3) - v15)
  {
    v37 = v13;
    memcpy(v15, v30, v10);
    v31 = v37;
    v32 = (*(v37 + 4) + v10);
    *(v37 + 4) = v32;
    if (*(v37 + 3) - v32 > 1uLL)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v31 = llvm::raw_ostream::write(v13, v30, v10);
    v32 = v31[4];
    if (v31[3] - v32 > 1uLL)
    {
LABEL_34:
      *v32 = 23870;
      v31[4] += 2;
      goto LABEL_48;
    }
  }

  llvm::raw_ostream::write(v31, ">]", 2uLL);
LABEL_48:
  v40 = *(a2 + 4);
  v39 = *(a2 + 5);
  v41 = *(a2 + 3);
  if (v41 == 1)
  {
    v42 = 7;
  }

  else
  {
    v42 = v41 + 7;
  }

  (*(*this + 16))(this);
  if (v43)
  {
    v44 = 6;
    if ((*(a2 + 5) & 0x400) == 0)
    {
      v44 = 3;
    }

    v45 = *(a2 + 7);
    if (!v45)
    {
      LODWORD(v45) = v43;
    }

    v42 += v44 + v45;
  }

  return llvm::cl::Option::printHelpStr(v40, v39, a3, v42);
}

void llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::printOptionValue(uint64_t a1, int a2, char a3)
{
  if ((a3 & 1) != 0 || *(a1 + 140) != 1 || *(a1 + 136) != *(a1 + 120))
  {
    v9 = v3;
    v10 = v4;
    v5 = *(a1 + 120);
    v7 = *(a1 + 136);
    v8 = *(a1 + 140);
    v6 = &off_1002B41E8;
    llvm::cl::parser<unsigned int>::printOptionDiff(a1, a1, v5, &v6, a2);
  }
}

uint64_t llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::setDefault(uint64_t result)
{
  if (*(result + 140) == 1)
  {
    *(result + 120) = *(result + 136);
  }

  else
  {
    *(result + 120) = 0;
  }

  return result;
}

atomic_ullong llvm::cl::Option::addArgument(llvm::cl::Option *this)
{
  if (atomic_load_explicit(qword_1002C42F8, memory_order_acquire))
  {
    result = qword_1002C42F8[0];
    v6 = this;
    if ((*(this + 5) & 0x2000) == 0)
    {
LABEL_3:
      v5[0] = result;
      v5[1] = &v6;
      result = sub_100033384(result, this, sub_1000337F4, v5);
      goto LABEL_8;
    }
  }

  else
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_1002C42F8, sub_100033DEC, sub_100033ED4);
    result = qword_1002C42F8[0];
    v6 = this;
    if ((*(this + 5) & 0x2000) == 0)
    {
      goto LABEL_3;
    }
  }

  v3 = *(result + 72);
  if (v3 >= *(result + 76))
  {
    v4 = result;
    llvm::SmallVectorBase<unsigned int>::grow_pod(result + 64, (result + 80), v3 + 1, 8);
    result = v4;
    LODWORD(v3) = *(v4 + 72);
  }

  *(*(result + 64) + 8 * v3) = this;
  ++*(result + 72);
LABEL_8:
  *(this + 5) |= 0x4000u;
  return result;
}

uint64_t llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::handleOccurrence(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6)
{
  v18 = 0;
  result = llvm::cl::parser<BOOL>::parse(a1, a1, a3, a4, a5, a6, &v18);
  if ((result & 1) == 0)
  {
    v9 = result;
    *(a1 + 120) = v18;
    *(a1 + 12) = a2;
    v10 = *(a1 + 176);
    if (v10)
    {
      (*(*v10 + 48))(v10, &v18);
      return v9;
    }

    else
    {
      v11 = sub_100033DA0();
      return llvm::cl::parser<BOOL>::parse(v11, v12, v13, v14, v15, v16, v17);
    }
  }

  return result;
}

uint64_t llvm::cl::parser<BOOL>::parse(llvm *a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, _BYTE *a7)
{
  if (a6 > 3)
  {
    if (a6 != 5)
    {
      if (a6 != 4 || *a5 != 1702195828 && *a5 != 1163219540 && *a5 != 1702195796)
      {
        goto LABEL_25;
      }

      goto LABEL_12;
    }

    if ((*a5 != 1936482662 || a5[4] != 101) && (*a5 != 1397506374 || a5[4] != 69) && (*a5 != 1936482630 || a5[4] != 101))
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (!a6)
    {
      goto LABEL_12;
    }

    if (a6 != 1)
    {
LABEL_25:
      v22 = v7;
      v23 = v8;
      v19 = 1283;
      v18[0] = "'";
      v18[2] = a5;
      v18[3] = a6;
      v20[0] = v18;
      v20[2] = "' is invalid value for BOOLean argument! Try 0 or 1";
      v21 = 770;
      v15 = llvm::errs(a1);
      llvm::cl::Option::error(a2, v20, 0, 0, v15, v16, v17);
      return 1;
    }

    v9 = *a5;
    if (v9 != 48)
    {
      if (v9 != 49)
      {
        goto LABEL_25;
      }

LABEL_12:
      result = 0;
      *a7 = 1;
      return result;
    }
  }

  result = 0;
  *a7 = 0;
  return result;
}

uint64_t llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::getOptionWidth(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == 1)
  {
    v3 = 7;
  }

  else
  {
    v3 = v2 + 7;
  }

  (*(*(a1 + 144) + 16))();
  if (v4)
  {
    v5 = 6;
    if ((*(a1 + 10) & 0x400) == 0)
    {
      v5 = 3;
    }

    v6 = *(a1 + 56);
    if (!v6)
    {
      v6 = v4;
    }

    v3 += v5 + v6;
  }

  return v3;
}

void llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::printOptionValue(uint64_t a1, int a2, char a3)
{
  if ((a3 & 1) != 0 || *(a1 + 137) != 1 || *(a1 + 136) != *(a1 + 120))
  {
    v8 = v3;
    v9 = v4;
    v5 = *(a1 + 120);
    v7 = *(a1 + 136);
    v6 = &off_1002B4180;
    llvm::cl::parser<BOOL>::printOptionDiff(a1, a1, v5, &v6, a2);
  }
}

_BYTE *llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::setDefault(_BYTE *result)
{
  if (result[137] == 1)
  {
    result[120] = result[136];
  }

  else
  {
    result[120] = 0;
  }

  return result;
}

void sub_100031958(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 4;
  v9 = (v7 >> 4) + 1;
  if (v9 >> 60)
  {
    sub_10002BC08();
  }

  v10 = v3 - v6;
  if (v10 >> 3 > v9)
  {
    v9 = v10 >> 3;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF0)
  {
    v11 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 60))
    {
      operator new();
    }

    sub_10002BC08();
  }

  *(16 * v8) = *a2;
  v5 = 16 * v8 + 16;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

uint64_t llvm::cl::Option::setArgStr(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  if ((*(result + 10) & 0x4000) == 0)
  {
    *(result + 16) = a2;
    *(result + 24) = a3;
    if (a3 != 1)
    {
      return result;
    }

LABEL_7:
    *(v5 + 10) |= 0x1000u;
    return result;
  }

  if (!atomic_load_explicit(qword_1002C42F8, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_1002C42F8, sub_100033DEC, sub_100033ED4);
  }

  v8[0] = a2;
  v8[1] = a3;
  v6[0] = qword_1002C42F8[0];
  v6[1] = &v7;
  v6[2] = v8;
  v7 = v5;
  result = sub_100033384(qword_1002C42F8[0], v5, sub_100033B08, v6);
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  if (a3 == 1)
  {
    goto LABEL_7;
  }

  return result;
}

void *llvm::cl::getGeneralCategory(llvm::cl *this)
{
  if ((atomic_load_explicit(&qword_1002C42F0, memory_order_acquire) & 1) == 0)
  {
    sub_100278A6C();
  }

  return &unk_1002C4358;
}

void sub_100031BA4(uint64_t a1, char *a2)
{
  if (*(a1 + 284) == 1)
  {
    v4 = *(a1 + 264);
    v5 = *(a1 + 276);
    if (v5)
    {
      v6 = 8 * v5;
      v7 = *(a1 + 264);
      while (*v7 != a2)
      {
        ++v7;
        v6 -= 8;
        if (!v6)
        {
          goto LABEL_6;
        }
      }

LABEL_8:
      if (atomic_load_explicit(qword_1002C4328, memory_order_acquire))
      {
        goto LABEL_9;
      }

      goto LABEL_22;
    }

LABEL_6:
    if (v5 < *(a1 + 272))
    {
      *(a1 + 276) = v5 + 1;
      *(v4 + 8 * v5) = a2;
      goto LABEL_8;
    }
  }

  llvm::SmallPtrSetImplBase::insert_imp_big((a1 + 264), a2);
  if (atomic_load_explicit(qword_1002C4328, memory_order_acquire))
  {
LABEL_9:
    v8 = *(qword_1002C4328[0] + 128);
    v9 = *(qword_1002C4328[0] + 136);
    if (v9)
    {
      goto LABEL_10;
    }

LABEL_23:
    v10 = v8;
    v15 = &v8[v9];
    if (v8 == v15)
    {
      return;
    }

    goto LABEL_24;
  }

LABEL_22:
  llvm::ManagedStaticBase::RegisterManagedStatic(qword_1002C4328, sub_100033F90, sub_100034000);
  v8 = *(qword_1002C4328[0] + 128);
  v9 = *(qword_1002C4328[0] + 136);
  if (!v9)
  {
    goto LABEL_23;
  }

LABEL_10:
  v10 = v8;
  if (*v8)
  {
    v11 = &(*v8)->u64[1] == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    do
    {
      v13 = v10[1];
      ++v10;
      v12 = v13;
      if (v13)
      {
        v14 = &v12->u64[1] == 0;
      }

      else
      {
        v14 = 1;
      }
    }

    while (v14);
  }

  v15 = &v8[v9];
  if (v10 != v15)
  {
LABEL_24:
    v16 = *v10;
    do
    {
      v17 = v16->i64[1];
      v18 = *(v17 + 10);
      if ((v18 & 7) == 4 || ((v19 = v18 & 0x180, v20 = v18 & 0x800, v19 != 128) ? (v21 = v20 == 0) : (v21 = 0), !v21 || *(v17 + 24)))
      {
        sub_100033808(a1);
      }

      else
      {
        sub_100033610(a1, v17, a2, v16 + 1, v16->i64[0]);
      }

      do
      {
        v22 = v10[1];
        ++v10;
        v16 = v22;
        if (v22)
        {
          v23 = &v16->u64[1] == 0;
        }

        else
        {
          v23 = 1;
        }
      }

      while (v23);
    }

    while (v10 != v15);
  }
}

void *sub_100031D54(void *a1, const char *a2)
{
  v2 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return llvm::raw_ostream::write(a1, a2, v3);
}

uint64_t llvm::cl::Option::error(void *a1, size_t *a2, uint64_t a3, uint64_t a4, llvm::raw_ostream *this, uint64_t a6, uint64_t a7)
{
  v7 = this;
  if (a3)
  {
    v9 = a4;
    v10 = a3;
    if (a4)
    {
LABEL_3:
      if (!atomic_load_explicit(qword_1002C42F8, memory_order_acquire))
      {
        llvm::ManagedStaticBase::RegisterManagedStatic(qword_1002C42F8, sub_100033DEC, sub_100033ED4);
      }

      v11 = *(qword_1002C42F8[0] + 23);
      if (v11 >= 0)
      {
        v12 = qword_1002C42F8[0];
      }

      else
      {
        v12 = *qword_1002C42F8[0];
      }

      if (v11 >= 0)
      {
        v13 = *(qword_1002C42F8[0] + 23);
      }

      else
      {
        v13 = *(qword_1002C42F8[0] + 8);
      }

      v14 = llvm::raw_ostream::write(v7, v12, v13);
      v15 = v14[4];
      if ((v14[3] - v15) > 9)
      {
        *(v15 + 8) = 8293;
        *v15 = *": for the ";
        v14[4] += 10;
      }

      else
      {
        v14 = llvm::raw_ostream::write(v14, ": for the ", 0xAuLL);
      }

      v28[0] = v10;
      v28[1] = v9;
      v28[2] = 0;
      sub_100031FD8(v14, v28);
      goto LABEL_18;
    }
  }

  else
  {
    v10 = a1[2];
    v9 = a1[3];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v16 = a1[4];
  v17 = a1[5];
  v18 = *(this + 4);
  if (v17 <= *(this + 3) - v18)
  {
    if (v17)
    {
      v27 = v17;
      memcpy(v18, v16, v17);
      *(v7 + 4) += v27;
    }
  }

  else
  {
    llvm::raw_ostream::write(this, v16, v17);
  }

LABEL_18:
  v19 = *(v7 + 4);
  if ((*(v7 + 3) - v19) > 8)
  {
    *(v19 + 8) = 32;
    *v19 = *" option: ";
    *(v7 + 4) += 9;
    llvm::Twine::print(a2, v7, v17, a4, this, a6, a7);
    v25 = *(v7 + 4);
    if (*(v7 + 3) != v25)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(v7, " option: ", 9uLL);
    llvm::Twine::print(a2, v7, v20, v21, v22, v23, v24);
    v25 = *(v7 + 4);
    if (*(v7 + 3) != v25)
    {
LABEL_20:
      *v25 = 10;
      ++*(v7 + 4);
      return 1;
    }
  }

  llvm::raw_ostream::write(v7, "\n", 1uLL);
  return 1;
}

void *sub_100031F74(void *result, const void *a2, size_t a3)
{
  v4 = result[4];
  if (a3 <= result[3] - v4)
  {
    if (a3)
    {
      v5 = result;
      memcpy(v4, a2, a3);
      result = v5;
      v5[4] += a3;
    }
  }

  else
  {

    return llvm::raw_ostream::write(result, a2, a3);
  }

  return result;
}

void *sub_100031FD8(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v16 = &v18;
  v17 = xmmword_10028F120;
  v6 = 0;
  if (v5)
  {
    do
    {
      if ((v6 + 1) > *(&v17 + 1))
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(&v16, &v18, v6 + 1, 1);
        v6 = v17;
      }

      *(v16 + v6) = 32;
      v6 = v17 + 1;
      *&v17 = v17 + 1;
      --v5;
    }

    while (v5);
    v7 = *(&v17 + 1);
  }

  else
  {
    v7 = 8;
  }

  if (v4 <= 1)
  {
    v8 = "-";
  }

  else
  {
    v8 = "--";
  }

  if (v4 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (v7 < v9 + v6)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(&v16, &v18, v9 + v6, 1);
    v6 = v17;
  }

  memcpy(v16 + v6, v8, v9);
  *&v17 = v17 + v9;
  v10 = llvm::raw_ostream::write(a1, v16, v17);
  v11 = *a2;
  v12 = *(a2 + 8);
  if (v12 <= v10[3] - v10[4])
  {
    if (v12)
    {
      v13 = v10;
      v14 = *(a2 + 8);
      memcpy(v10[4], v11, v12);
      v13[4] += v14;
    }
  }

  else
  {
    llvm::raw_ostream::write(v10, v11, v12);
  }

  if (v16 != &v18)
  {
    free(v16);
  }

  return a1;
}

void *sub_100032174(void *a1, char *__s)
{
  if (!__s)
  {
    return a1;
  }

  v4 = strlen(__s);
  v5 = a1[4];
  if (v4 <= a1[3] - v5)
  {
    if (v4)
    {
      memcpy(v5, __s, v4);
      a1[4] += v4;
    }

    return a1;
  }

  return llvm::raw_ostream::write(a1, __s, v4);
}

uint64_t llvm::cl::Option::addOccurrence(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
    ++*(a1 + 8);
  }

  return (**a1)(a1);
}

void *llvm::cl::Option::printHelpStr(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  *&v32 = a1;
  *(&v32 + 1) = a2;
  v33 = 10;
  v6 = llvm::StringRef::find(&v32, &v33, 1uLL, 0);
  if (v6 == -1)
  {
    v30 = 0;
    v31 = 0;
    v27 = v32;
  }

  else
  {
    if (v6 >= *(&v32 + 1))
    {
      v7 = *(&v32 + 1);
    }

    else
    {
      v7 = v6;
    }

    if (*(&v32 + 1) >= v6 + 1)
    {
      v8 = v6 + 1;
    }

    else
    {
      v8 = *(&v32 + 1);
    }

    *&v27 = v32;
    *(&v27 + 1) = v7;
    v30 = &v8[v32];
    v31 = *(&v32 + 1) - v8;
  }

  v9 = llvm::outs(v6);
  result = llvm::raw_ostream::indent(v9, a3 - a4);
  v11 = result[4];
  if ((result[3] - v11) <= 2)
  {
    result = llvm::raw_ostream::write(result, " - ", 3uLL);
    v12 = result[4];
    v14 = *(&v27 + 1);
    v13 = v27;
    if (*(&v27 + 1) <= result[3] - v12)
    {
      goto LABEL_12;
    }

LABEL_18:
    result = llvm::raw_ostream::write(result, v13, v14);
    v12 = result[4];
    if (result[3] != v12)
    {
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  *(v11 + 2) = 32;
  *v11 = 11552;
  v17 = result[3];
  v12 = (result[4] + 3);
  result[4] = v12;
  v14 = *(&v27 + 1);
  v13 = v27;
  if (*(&v27 + 1) > (v17 - v12))
  {
    goto LABEL_18;
  }

LABEL_12:
  if (v14)
  {
    v15 = result;
    v16 = v14;
    memcpy(v12, v13, v14);
    result = v15;
    v12 = (v15[4] + v16);
    v15[4] = v12;
  }

  if (result[3] != v12)
  {
LABEL_15:
    *v12 = 10;
    ++result[4];
    if (v31)
    {
      goto LABEL_22;
    }

    return result;
  }

LABEL_19:
  for (result = llvm::raw_ostream::write(result, "\n", 1uLL); v31; result = llvm::raw_ostream::write(result, "\n", 1uLL))
  {
LABEL_22:
    while (1)
    {
      v33 = 10;
      v18 = llvm::StringRef::find(&v30, &v33, 1uLL, 0);
      if (v18 == -1)
      {
        v22 = 0;
        v23 = 0;
        v19 = v30;
        v20 = v31;
      }

      else
      {
        v19 = v30;
        v20 = v18 >= v31 ? v31 : v18;
        v21 = v31 >= v18 + 1 ? v18 + 1 : v31;
        v22 = &v30[v21];
        v23 = v31 - v21;
      }

      v28 = v19;
      v29 = v20;
      v30 = v22;
      v31 = v23;
      v24 = llvm::outs(v18);
      result = llvm::raw_ostream::indent(v24, a3);
      v25 = result[4];
      if (v29 <= result[3] - v25)
      {
        if (v29)
        {
          v26 = result;
          memcpy(result[4], v28, v29);
          result = v26;
          v25 = (v26[4] + v29);
          v26[4] = v25;
        }
      }

      else
      {
        result = llvm::raw_ostream::write(result, v28, v29);
        v25 = result[4];
      }

      if (result[3] == v25)
      {
        break;
      }

      *v25 = 10;
      ++result[4];
      if (!v31)
      {
        return result;
      }
    }
  }

  return result;
}

BOOL llvm::cl::parser<long long>::parse(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, void *a7)
{
  v18[0] = 0;
  result = llvm::getAsSignedInteger(a5, a6, 0, v18);
  if (result)
  {
    v17 = 1283;
    v16[0] = "'";
    v16[2] = a5;
    v16[3] = a6;
    v18[0] = v16;
    v18[2] = "' value invalid for llong argument!";
    v19 = 770;
    v12 = result;
    v13 = llvm::errs(result);
    llvm::cl::Option::error(a2, v18, 0, 0, v13, v14, v15);
    return v12;
  }

  else
  {
    *a7 = v18[0];
  }

  return result;
}

void llvm::cl::parser<BOOL>::printOptionDiff(llvm *a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5)
{
  v9 = llvm::outs(a1);
  v32 = *(a2 + 16);
  v33 = 2;
  v10 = sub_100031FD8(v9, &v32);
  v11 = llvm::outs(v10);
  llvm::raw_ostream::indent(v11, a5 - *(a2 + 24));
  __p = 0;
  v40 = 0;
  v41 = 0;
  DWORD2(v32) = 0;
  v36 = 0;
  v37 = 1;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  *&v32 = &off_1002B45C0;
  p_p = &__p;
  llvm::raw_ostream::SetBufferAndMode(&v32, 0, 0, 0);
  llvm::raw_ostream::operator<<(&v32, a3);
  llvm::raw_ostream::~raw_ostream(&v32);
  v13 = llvm::outs(v12);
  v14 = v13[4];
  if (v13[3] - v14 > 1uLL)
  {
    *v14 = 8253;
    v13[4] += 2;
  }

  else
  {
    v13 = llvm::raw_ostream::write(v13, "= ", 2uLL);
  }

  if (v41 >= 0)
  {
    v15 = &__p;
  }

  else
  {
    v15 = __p;
  }

  if (v41 >= 0)
  {
    v16 = HIBYTE(v41);
  }

  else
  {
    v16 = v40;
  }

  v17 = llvm::raw_ostream::write(v13, v15, v16);
  v18 = SHIBYTE(v41);
  if ((SHIBYTE(v41) & 0x8000000000000000) != 0)
  {
    v18 = v40;
    if (v40 < 8)
    {
      goto LABEL_12;
    }
  }

  else if (SHIBYTE(v41) <= 7)
  {
LABEL_12:
    v19 = 8 - v18;
    goto LABEL_15;
  }

  v19 = 0;
LABEL_15:
  v20 = llvm::outs(v17);
  v21 = llvm::raw_ostream::indent(v20, v19);
  v22 = *(v21 + 4);
  if ((*(v21 + 3) - v22) <= 0xA)
  {
    v23 = llvm::raw_ostream::write(v21, " (default: ", 0xBuLL);
    v24 = *(a4 + 9);
    v25 = llvm::outs(v23);
    if (v24 != 1)
    {
      goto LABEL_17;
    }

LABEL_21:
    v31 = llvm::raw_ostream::operator<<(v25, *(a4 + 8));
    v28 = llvm::outs(v31);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  *(v22 + 7) = 540701804;
  *v22 = *" (default: ";
  *(v21 + 4) += 11;
  v30 = *(a4 + 9);
  v25 = llvm::outs(v21);
  if (v30 == 1)
  {
    goto LABEL_21;
  }

LABEL_17:
  v26 = *(v25 + 4);
  if ((*(v25 + 3) - v26) > 0xB)
  {
    *(v26 + 8) = 712273013;
    *v26 = *"*no default*";
    *(v25 + 4) += 12;
    v28 = llvm::outs(v25);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v27 = llvm::raw_ostream::write(v25, "*no default*", 0xCuLL);
    v28 = llvm::outs(v27);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
LABEL_25:
      *v29 = 2601;
      v28[4] += 2;
      if (SHIBYTE(v41) < 0)
      {
        goto LABEL_26;
      }

      return;
    }
  }

LABEL_22:
  llvm::raw_ostream::write(v28, ")\n", 2uLL);
  if (SHIBYTE(v41) < 0)
  {
LABEL_26:
    operator delete(__p);
  }
}

void llvm::cl::parser<long long>::printOptionDiff(llvm *a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  v9 = llvm::outs(a1);
  v32 = *(a2 + 16);
  v33 = 2;
  v10 = sub_100031FD8(v9, &v32);
  v11 = llvm::outs(v10);
  llvm::raw_ostream::indent(v11, a5 - *(a2 + 24));
  __p = 0;
  v40 = 0;
  v41 = 0;
  DWORD2(v32) = 0;
  v36 = 0;
  v37 = 1;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  *&v32 = &off_1002B45C0;
  p_p = &__p;
  llvm::raw_ostream::SetBufferAndMode(&v32, 0, 0, 0);
  llvm::raw_ostream::operator<<(&v32, a3);
  llvm::raw_ostream::~raw_ostream(&v32);
  v13 = llvm::outs(v12);
  v14 = v13[4];
  if (v13[3] - v14 > 1uLL)
  {
    *v14 = 8253;
    v13[4] += 2;
  }

  else
  {
    v13 = llvm::raw_ostream::write(v13, "= ", 2uLL);
  }

  if (v41 >= 0)
  {
    v15 = &__p;
  }

  else
  {
    v15 = __p;
  }

  if (v41 >= 0)
  {
    v16 = HIBYTE(v41);
  }

  else
  {
    v16 = v40;
  }

  v17 = llvm::raw_ostream::write(v13, v15, v16);
  v18 = SHIBYTE(v41);
  if ((SHIBYTE(v41) & 0x8000000000000000) != 0)
  {
    v18 = v40;
    if (v40 < 8)
    {
      goto LABEL_12;
    }
  }

  else if (SHIBYTE(v41) <= 7)
  {
LABEL_12:
    v19 = 8 - v18;
    goto LABEL_15;
  }

  v19 = 0;
LABEL_15:
  v20 = llvm::outs(v17);
  v21 = llvm::raw_ostream::indent(v20, v19);
  v22 = *(v21 + 4);
  if ((*(v21 + 3) - v22) <= 0xA)
  {
    v23 = llvm::raw_ostream::write(v21, " (default: ", 0xBuLL);
    v24 = *(a4 + 16);
    v25 = llvm::outs(v23);
    if (v24 != 1)
    {
      goto LABEL_17;
    }

LABEL_21:
    v31 = llvm::raw_ostream::operator<<(v25, *(a4 + 8));
    v28 = llvm::outs(v31);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  *(v22 + 7) = 540701804;
  *v22 = *" (default: ";
  *(v21 + 4) += 11;
  v30 = *(a4 + 16);
  v25 = llvm::outs(v21);
  if (v30 == 1)
  {
    goto LABEL_21;
  }

LABEL_17:
  v26 = *(v25 + 4);
  if ((*(v25 + 3) - v26) > 0xB)
  {
    *(v26 + 8) = 712273013;
    *v26 = *"*no default*";
    *(v25 + 4) += 12;
    v28 = llvm::outs(v25);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v27 = llvm::raw_ostream::write(v25, "*no default*", 0xCuLL);
    v28 = llvm::outs(v27);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
LABEL_25:
      *v29 = 2601;
      v28[4] += 2;
      if (SHIBYTE(v41) < 0)
      {
        goto LABEL_26;
      }

      return;
    }
  }

LABEL_22:
  llvm::raw_ostream::write(v28, ")\n", 2uLL);
  if (SHIBYTE(v41) < 0)
  {
LABEL_26:
    operator delete(__p);
  }
}

void llvm::cl::parser<unsigned int>::printOptionDiff(llvm *a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5)
{
  v9 = llvm::outs(a1);
  v32 = *(a2 + 16);
  v33 = 2;
  v10 = sub_100031FD8(v9, &v32);
  v11 = llvm::outs(v10);
  llvm::raw_ostream::indent(v11, a5 - *(a2 + 24));
  __p = 0;
  v40 = 0;
  v41 = 0;
  DWORD2(v32) = 0;
  v36 = 0;
  v37 = 1;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  *&v32 = &off_1002B45C0;
  p_p = &__p;
  llvm::raw_ostream::SetBufferAndMode(&v32, 0, 0, 0);
  llvm::raw_ostream::operator<<(&v32, a3);
  llvm::raw_ostream::~raw_ostream(&v32);
  v13 = llvm::outs(v12);
  v14 = v13[4];
  if (v13[3] - v14 > 1uLL)
  {
    *v14 = 8253;
    v13[4] += 2;
  }

  else
  {
    v13 = llvm::raw_ostream::write(v13, "= ", 2uLL);
  }

  if (v41 >= 0)
  {
    v15 = &__p;
  }

  else
  {
    v15 = __p;
  }

  if (v41 >= 0)
  {
    v16 = HIBYTE(v41);
  }

  else
  {
    v16 = v40;
  }

  v17 = llvm::raw_ostream::write(v13, v15, v16);
  v18 = SHIBYTE(v41);
  if ((SHIBYTE(v41) & 0x8000000000000000) != 0)
  {
    v18 = v40;
    if (v40 < 8)
    {
      goto LABEL_12;
    }
  }

  else if (SHIBYTE(v41) <= 7)
  {
LABEL_12:
    v19 = 8 - v18;
    goto LABEL_15;
  }

  v19 = 0;
LABEL_15:
  v20 = llvm::outs(v17);
  v21 = llvm::raw_ostream::indent(v20, v19);
  v22 = *(v21 + 4);
  if ((*(v21 + 3) - v22) <= 0xA)
  {
    v23 = llvm::raw_ostream::write(v21, " (default: ", 0xBuLL);
    v24 = *(a4 + 12);
    v25 = llvm::outs(v23);
    if (v24 != 1)
    {
      goto LABEL_17;
    }

LABEL_21:
    v31 = llvm::raw_ostream::operator<<(v25, *(a4 + 8));
    v28 = llvm::outs(v31);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  *(v22 + 7) = 540701804;
  *v22 = *" (default: ";
  *(v21 + 4) += 11;
  v30 = *(a4 + 12);
  v25 = llvm::outs(v21);
  if (v30 == 1)
  {
    goto LABEL_21;
  }

LABEL_17:
  v26 = *(v25 + 4);
  if ((*(v25 + 3) - v26) > 0xB)
  {
    *(v26 + 8) = 712273013;
    *v26 = *"*no default*";
    *(v25 + 4) += 12;
    v28 = llvm::outs(v25);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v27 = llvm::raw_ostream::write(v25, "*no default*", 0xCuLL);
    v28 = llvm::outs(v27);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
LABEL_25:
      *v29 = 2601;
      v28[4] += 2;
      if (SHIBYTE(v41) < 0)
      {
        goto LABEL_26;
      }

      return;
    }
  }

LABEL_22:
  llvm::raw_ostream::write(v28, ")\n", 2uLL);
  if (SHIBYTE(v41) < 0)
  {
LABEL_26:
    operator delete(__p);
  }
}

char *sub_100032DC0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a2;
  *(a1 + 1) = a3;
  *(a1 + 2) = a4;
  *(a1 + 3) = a5;
  if (atomic_load_explicit(qword_1002C42F8, memory_order_acquire))
  {
    v6 = qword_1002C42F8[0];
    if (*(qword_1002C42F8[0] + 132) != 1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_1002C42F8, sub_100033DEC, sub_100033ED4);
    v6 = qword_1002C42F8[0];
    if (*(qword_1002C42F8[0] + 132) != 1)
    {
      goto LABEL_12;
    }
  }

  v7 = *(v6 + 14);
  v8 = v6[31];
  if (v8)
  {
    v9 = 8 * v8;
    v10 = *(v6 + 14);
    while (*v10 != a1)
    {
      ++v10;
      v9 -= 8;
      if (!v9)
      {
        goto LABEL_9;
      }
    }

    return a1;
  }

LABEL_9:
  if (v8 < v6[30])
  {
    v6[31] = v8 + 1;
    *(v7 + 8 * v8) = a1;
    return a1;
  }

LABEL_12:
  llvm::SmallPtrSetImplBase::insert_imp_big((v6 + 28), a1);
  return a1;
}

uint64_t sub_100032F34(uint64_t a1)
{
  *a1 = off_1002B40B0;
  v2 = a1 + 152;
  v3 = *(a1 + 176);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &off_1002B3FB8;
    if ((*(a1 + 108) & 1) == 0)
    {
LABEL_5:
      free(*(a1 + 88));
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &off_1002B3FB8;
    if ((*(a1 + 108) & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v4 = *(a1 + 64);
  if (v4 != (a1 + 80))
  {
    free(v4);
  }

  return a1;
}

void sub_100033038(uint64_t a1)
{
  *a1 = off_1002B40B0;
  v2 = a1 + 152;
  v3 = *(a1 + 176);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &off_1002B3FB8;
    if ((*(a1 + 108) & 1) == 0)
    {
LABEL_5:
      free(*(a1 + 88));
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &off_1002B3FB8;
    if ((*(a1 + 108) & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v4 = *(a1 + 64);
  if (v4 != (a1 + 80))
  {
    free(v4);
  }

  operator delete();
}

uint64_t sub_10003315C(uint64_t a1)
{
  *a1 = off_1002B4118;
  v2 = a1 + 152;
  v3 = *(a1 + 176);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &off_1002B3FB8;
    if ((*(a1 + 108) & 1) == 0)
    {
LABEL_5:
      free(*(a1 + 88));
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &off_1002B3FB8;
    if ((*(a1 + 108) & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v4 = *(a1 + 64);
  if (v4 != (a1 + 80))
  {
    free(v4);
  }

  return a1;
}

void sub_100033260(uint64_t a1)
{
  *a1 = off_1002B4118;
  v2 = a1 + 152;
  v3 = *(a1 + 176);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &off_1002B3FB8;
    if ((*(a1 + 108) & 1) == 0)
    {
LABEL_5:
      free(*(a1 + 88));
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &off_1002B3FB8;
    if ((*(a1 + 108) & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v4 = *(a1 + 64);
  if (v4 != (a1 + 80))
  {
    free(v4);
  }

  operator delete();
}

uint64_t sub_100033384(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v5 = *(a2 + 100) - *(a2 + 104);
  if (!v5)
  {
    v6 = &qword_1002C4310;
LABEL_3:
    if (!atomic_load_explicit(v6, memory_order_acquire))
    {
      llvm::ManagedStaticBase::RegisterManagedStatic(v6, sub_100033F90, sub_100034000);
    }

    v7 = *v6;

    return a3(a4, v7);
  }

  v8 = a2 + 88;
  if (v5 == 1)
  {
    v9 = *(a2 + 88);
    v10 = 8;
    if (*(a2 + 108))
    {
      v10 = 12;
    }

    v11 = *(v8 + v10);
    if (v11)
    {
      v12 = 8 * v11;
      v13 = &v9[v11];
      while (*v9 >= 0xFFFFFFFFFFFFFFFELL)
      {
        ++v9;
        v12 -= 8;
        if (!v12)
        {
          v9 = v13;
          break;
        }
      }
    }

    v14 = *v9;
    v6 = qword_1002C4328;
    if (atomic_load_explicit(qword_1002C4328, memory_order_acquire))
    {
      if (v14 != qword_1002C4328[0])
      {
        goto LABEL_18;
      }
    }

    else
    {
      v21 = result;
      v22 = a2;
      llvm::ManagedStaticBase::RegisterManagedStatic(qword_1002C4328, sub_100033F90, sub_100034000);
      a2 = v22;
      result = v21;
      if (v14 != qword_1002C4328[0])
      {
        goto LABEL_18;
      }
    }

    v23 = 8;
    if (*(result + 284))
    {
      v23 = 12;
    }

    v24 = *(result + 264 + v23);
    if (v24)
    {
      v25 = 8 * v24;
      v26 = *(result + 264);
      while (*v26 >= 0xFFFFFFFFFFFFFFFELL)
      {
        ++v26;
        v25 -= 8;
        if (!v25)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      v26 = *(result + 264);
    }

    v27 = *(result + 264) + 8 * v24;
    while (v26 != v27)
    {
      v28 = *v26++;
      a3(a4, v28);
      for (; v26 != v27; ++v26)
      {
        if (*v26 < 0xFFFFFFFFFFFFFFFELL)
        {
          break;
        }
      }
    }

    goto LABEL_3;
  }

LABEL_18:
  v15 = 8;
  if (*(a2 + 108))
  {
    v15 = 12;
  }

  v16 = *(v8 + v15);
  if (v16)
  {
    v17 = 8 * v16;
    for (i = *(a2 + 88); *i >= 0xFFFFFFFFFFFFFFFELL; ++i)
    {
      v17 -= 8;
      if (!v17)
      {
        return result;
      }
    }
  }

  else
  {
    i = *(a2 + 88);
  }

  v19 = *(a2 + 88) + 8 * v16;
  while (i != v19)
  {
    v20 = *i++;
    for (result = a3(a4, v20); i != v19; ++i)
    {
      if (*i < 0xFFFFFFFFFFFFFFFELL)
      {
        break;
      }
    }
  }

  return result;
}

uint64_t *sub_100033610(uint64_t *result, uint64_t a2, uint64_t a3, int8x16_t *a4, unint64_t a5)
{
  if (!*(a2 + 24))
  {
    v8 = result;
    v15 = a2;
    v9 = llvm::StringMapImpl::hash(a4, a5);
    result = sub_1000336D0((a3 + 128), a4, a5, v9, &v15);
    if ((v10 & 1) == 0)
    {
      v11 = llvm::errs(result);
      v12 = sub_100031D54(v11, v8);
      v13 = sub_100032174(v12, ": CommandLine Error: Option '");
      v14 = sub_100031F74(v13, a4, a5);
      sub_100032174(v14, "' registered more than once!\n");
      llvm::report_fatal_error("inconsistency in registered CommandLine options", 1);
    }
  }

  return result;
}

uint64_t *sub_1000336D0(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4, uint64_t *a5)
{
  v9 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v10 = (*a1 + 8 * v9);
  v11 = *v10;
  if (*v10 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer((a3 + 17), 8uLL);
    v13 = buffer + 2;
    if (a3)
    {
LABEL_4:
      memcpy(v13, a2, a3);
    }
  }

  else
  {
    if (v11)
    {
      while (!v11 || v11 == -8)
      {
        v19 = v10[1];
        ++v10;
        v11 = v19;
      }

      return v10;
    }

    buffer = llvm::allocate_buffer((a3 + 17), 8uLL);
    v13 = buffer + 2;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v13 + a3) = 0;
  v14 = *a5;
  *buffer = a3;
  buffer[1] = v14;
  *v10 = buffer;
  ++*(a1 + 3);
  v10 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v9));
  if (*v10)
  {
    v15 = *v10 == -8;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    do
    {
      v17 = v10[1];
      ++v10;
      v16 = v17;
      if (v17)
      {
        v18 = v16 == -8;
      }

      else
      {
        v18 = 1;
      }
    }

    while (v18);
  }

  return v10;
}

void sub_100033808(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = a1;
    if ((*(a2 + 10) & 0x2000) != 0)
    {
      v7 = *(a2 + 16);
      v8 = llvm::StringMapImpl::hash(v7, *(a2 + 24));
      Key = llvm::StringMapImpl::FindKey((a3 + 128), v7, v5, v8);
      if (Key != -1 && Key != *(a3 + 136))
      {
        return;
      }
    }

    v30 = *(a2 + 16);
    v31 = a2;
    v10 = llvm::StringMapImpl::hash(v30, *(&v30 + 1));
    a1 = sub_1000336D0((a3 + 128), v30, *(&v30 + 1), v10, &v31);
    if ((v11 & 1) == 0)
    {
      v15 = llvm::errs(a1);
      v16 = *(v6 + 23);
      if (v16 >= 0)
      {
        v17 = v6;
      }

      else
      {
        v17 = *v6;
      }

      if (v16 >= 0)
      {
        v18 = *(v6 + 23);
      }

      else
      {
        v18 = v6[1];
      }

      a1 = llvm::raw_ostream::write(v15, v17, v18);
      v19 = a1[4];
      if ((a1[3] - v19) > 0x1C)
      {
        qmemcpy(v19, ": CommandLine Error: Option '", 29);
        v25 = a1[3];
        v20 = (a1[4] + 29);
        a1[4] = v20;
        v21 = *(a2 + 16);
        v22 = *(a2 + 24);
        if (v22 <= v25 - v20)
        {
LABEL_19:
          if (v22)
          {
            v23 = a1;
            v24 = v22;
            memcpy(v20, v21, v22);
            a1 = v23;
            v20 = (v23[4] + v24);
            v23[4] = v20;
          }

          if ((a1[3] - v20) <= 0x1C)
          {
LABEL_22:
            a1 = llvm::raw_ostream::write(a1, "' registered more than once!\n", 0x1DuLL);
            v12 = 1;
            v13 = *(a2 + 10);
            if ((v13 & 0x180) != 0x80)
            {
              goto LABEL_27;
            }

LABEL_7:
            v14 = *(a3 + 40);
            if (v14 >= *(a3 + 44))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(a3 + 32, (a3 + 48), v14 + 1, 8);
              LODWORD(v14) = *(a3 + 40);
            }

            *(*(a3 + 32) + 8 * v14) = a2;
            ++*(a3 + 40);
            if (v12)
            {
              goto LABEL_39;
            }

            return;
          }

LABEL_26:
          qmemcpy(v20, "' registered more than once!\n", 29);
          a1[4] += 29;
          v12 = 1;
          v13 = *(a2 + 10);
          if ((v13 & 0x180) != 0x80)
          {
            goto LABEL_27;
          }

          goto LABEL_7;
        }
      }

      else
      {
        a1 = llvm::raw_ostream::write(a1, ": CommandLine Error: Option '", 0x1DuLL);
        v20 = a1[4];
        v21 = *(a2 + 16);
        v22 = *(a2 + 24);
        if (v22 <= a1[3] - v20)
        {
          goto LABEL_19;
        }
      }

      a1 = llvm::raw_ostream::write(a1, v21, v22);
      v20 = a1[4];
      if ((a1[3] - v20) <= 0x1C)
      {
        goto LABEL_22;
      }

      goto LABEL_26;
    }
  }

  v12 = 0;
  v13 = *(a2 + 10);
  if ((v13 & 0x180) == 0x80)
  {
    goto LABEL_7;
  }

LABEL_27:
  if ((v13 & 0x800) != 0)
  {
    v26 = *(a3 + 88);
    if (v26 >= *(a3 + 92))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3 + 80, (a3 + 96), v26 + 1, 8);
      LODWORD(v26) = *(a3 + 88);
    }

    *(*(a3 + 80) + 8 * v26) = a2;
    ++*(a3 + 88);
    if ((v12 & 1) == 0)
    {
      return;
    }

    goto LABEL_39;
  }

  if ((v13 & 7) != 4)
  {
    if (v12)
    {
      goto LABEL_39;
    }

    return;
  }

  if (*(a3 + 152))
  {
    *&v30 = "Cannot specify more than one option with cl::ConsumeAfter!";
    v32 = 259;
    v27 = llvm::errs(a1);
    llvm::cl::Option::error(a2, &v30, 0, 0, v27, v28, v29);
    *(a3 + 152) = a2;
    goto LABEL_39;
  }

  *(a3 + 152) = a2;
  if (v12)
  {
LABEL_39:
    llvm::report_fatal_error("inconsistency in registered CommandLine options", 1);
  }
}

void sub_100033B08(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = **(a1 + 8);
  v5 = *(a1 + 16);
  v18 = *v5;
  v19 = *(v5 + 8);
  v20 = v4;
  v6 = llvm::StringMapImpl::hash(v18, v19);
  v7 = sub_1000336D0((a2 + 128), v18, v19, v6, &v20);
  if ((v8 & 1) == 0)
  {
    v14 = llvm::errs(v7);
    v15 = sub_100031D54(v14, v3);
    v16 = sub_100032174(v15, ": CommandLine Error: Option '");
    v17 = sub_100031F74(v16, *(v4 + 16), *(v4 + 24));
    sub_100032174(v17, "' registered more than once!\n");
    llvm::report_fatal_error("inconsistency in registered CommandLine options", 1);
  }

  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  v11 = llvm::StringMapImpl::hash(v9, v10);
  Key = llvm::StringMapImpl::FindKey((a2 + 128), v9, v10, v11);
  if (Key != -1 && Key != *(a2 + 136))
  {
    v13 = *(*(a2 + 128) + 8 * Key);
    llvm::StringMapImpl::RemoveKey(a2 + 128, v13);
    llvm::deallocate_buffer(v13, (*v13 + 17), 8uLL);
  }
}

void *sub_100033C24(_BYTE *a1, const void *a2, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_10002BC08();
  }

  a1[23] = a3;
  v3 = a3 + 1;

  return memmove(a1, a2, v3);
}

uint64_t sub_100033ED4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 284))
    {
      if (*(result + 132))
      {
        goto LABEL_4;
      }
    }

    else
    {
      free(*(result + 264));
      if (*(v1 + 132))
      {
LABEL_4:
        v2 = *(v1 + 64);
        if (v2 == (v1 + 80))
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    free(*(v1 + 112));
    v2 = *(v1 + 64);
    if (v2 == (v1 + 80))
    {
LABEL_6:
      v3 = *(v1 + 40);
      if (v3)
      {
        *(v1 + 48) = v3;
        operator delete(v3);
      }

      if (*(v1 + 23) < 0)
      {
        operator delete(*v1);
      }

      operator delete();
    }

LABEL_5:
    free(v2);
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100034000(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 140))
    {
      v2 = *(result + 136);
      if (v2)
      {
        v3 = 0;
        v4 = 8 * v2;
        do
        {
          v5 = *(*(v1 + 128) + v3);
          if (v5 != -8 && v5 != 0)
          {
            llvm::deallocate_buffer(v5, (*v5 + 17), 8uLL);
          }

          v3 += 8;
        }

        while (v4 != v3);
      }
    }

    free(*(v1 + 128));
    v7 = *(v1 + 80);
    if (v7 != (v1 + 96))
    {
      free(v7);
    }

    v8 = *(v1 + 32);
    if (v8 != (v1 + 48))
    {
      free(v8);
    }

    operator delete();
  }

  return result;
}

char *sub_1000340D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_100032DC0((v4 + 104), a2, 15, a4, 0);
}

void llvm::toString(void **a1@<X0>, std::string *a2@<X8>)
{
  v115 = v117;
  v116 = 0x200000000;
  v3 = *a1;
  *a1 = 0;
  v109 = &v115;
  if (!v3)
  {
    v110 = 0;
    goto LABEL_18;
  }

  if ((*(*v3 + 48))(v3, &llvm::ErrorList::ID))
  {
    v110 = 0;
    v4 = v3[1];
    v5 = v3[2];
    if (v4 != v5)
    {
      v6 = 0;
      do
      {
        v113 = v6;
        v7 = *v4;
        *v4 = 0;
        v111 = v7;
        sub_100035450(&v112, &v111, &v109);
        sub_10002B5A0(&v113, &v112, &v114);
        v6 = v114;
        v114 = 0;
        if (v112)
        {
          (*(*v112 + 8))(v112);
        }

        v8 = v111;
        v111 = 0;
        if (v8)
        {
          (*(*v8 + 8))(v8);
        }

        if (v113)
        {
          (*(*v113 + 8))(v113);
        }

        ++v4;
      }

      while (v4 != v5);
      v110 = v6;
    }

    v9 = *(*v3 + 8);
  }

  else
  {
    v114 = v3;
    sub_100035450(&v110, &v114, &v109);
    if (!v114)
    {
      goto LABEL_18;
    }

    v9 = *(*v114 + 8);
  }

  v9();
LABEL_18:
  v10 = v115;
  v11 = v116;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  if (!v11)
  {
    goto LABEL_54;
  }

  v12 = v11 - 1;
  v13 = 24 * v11 - 24;
  if (v13 >= 0x60)
  {
    v15 = v13 / 0x18;
    v16 = v13 / 0x18 + 1;
    if (v13 >= 0x180)
    {
      v18 = 0uLL;
      v19 = (v11 - 1);
      if ((v16 & 0xF) != 0)
      {
        v20 = v16 & 0xF;
      }

      else
      {
        v20 = 16;
      }

      v21 = v16 - v20;
      v22 = v10 + 191;
      v106 = v20;
      v107 = v16 - v20;
      v23 = 0uLL;
      v24 = 0uLL;
      v25 = 0uLL;
      v26 = 0uLL;
      v27 = 0uLL;
      v28 = 0uLL;
      do
      {
        v29.i8[0] = *(v22 - 168);
        v30.i8[0] = v29.i8[0];
        v30.i8[1] = *(v22 - 144);
        v30.i8[2] = *(v22 - 120);
        v30.i8[3] = *(v22 - 96);
        v30.i8[4] = *(v22 - 72);
        v30.i8[5] = *(v22 - 48);
        v30.i8[6] = *(v22 - 24);
        v30.i8[7] = *v22;
        v31 = (v22 - 183);
        v32 = (v22 - 135);
        v33 = (v22 - 87);
        v34 = (v22 - 39);
        v35 = (v22 + 9);
        v36 = (v22 + 57);
        v37 = vld3q_f64(v31);
        v38 = vld3q_f64(v32);
        v39 = vld3q_f64(v33);
        v40 = vld3q_f64(v34);
        v108 = v40;
        v41 = vld3q_f64(v35);
        v42 = vld3q_f64(v36);
        v30.i8[8] = v22[24];
        v30.i8[9] = v22[48];
        v30.i8[10] = v22[72];
        v30.i8[11] = v22[96];
        v43.i32[0] = v30.i32[2];
        v30.i8[12] = v22[120];
        v30.i8[13] = v22[144];
        v43.i16[2] = v30.i16[6];
        v30.i8[14] = v22[168];
        v43.i8[6] = v30.i8[14];
        v30.i8[15] = v22[192];
        v29.i8[1] = v30.i8[1];
        v29.i8[2] = v30.i8[2];
        v44 = vcltzq_s8(v30);
        v45 = vmovl_high_s8(v44);
        v29.i8[3] = *(v22 - 96);
        v29.i8[4] = *(v22 - 72);
        v46 = vmovl_s8(*v44.i8);
        v47 = vmovl_s16(*v46.i8);
        v29.i8[5] = *(v22 - 48);
        v29.i8[6] = *(v22 - 24);
        v48.i64[0] = v47.i32[0];
        v48.i64[1] = v47.i32[1];
        v49 = v48;
        v29.i8[7] = *v22;
        v50 = vmovl_u8(v29);
        v51 = vmovl_u16(*v50.i8);
        v48.i64[0] = v51.u32[0];
        v48.i64[1] = v51.u32[1];
        v52 = vbslq_s8(v49, v37, v48);
        v53 = vmovl_s16(*v45.i8);
        v43.i8[7] = v22[192];
        v54 = vmovl_u8(v43);
        v55 = vmovl_u16(*v54.i8);
        v48.i64[0] = v53.i32[0];
        v48.i64[1] = v53.i32[1];
        v56 = v48;
        v48.i64[0] = v55.u32[0];
        v48.i64[1] = v55.u32[1];
        v57 = vbslq_s8(v56, v41, v48);
        v58 = vmovl_high_s16(v46);
        v48.i64[0] = v47.i32[2];
        v48.i64[1] = v47.i32[3];
        v59 = v48;
        v48.i64[0] = v51.u32[2];
        v48.i64[1] = v51.u32[3];
        v60 = vbslq_s8(v59, v38, v48);
        v48.i64[0] = v58.i32[0];
        v48.i64[1] = v58.i32[1];
        v61 = v48;
        v62 = (v22 + 105);
        v63 = (v22 + 153);
        v64 = vmovl_high_u16(v50);
        v48.i64[0] = v64.u32[0];
        v48.i64[1] = v64.u32[1];
        v65 = vbslq_s8(v61, v39, v48);
        v66 = vld3q_f64(v62);
        v67 = vld3q_f64(v63);
        v48.i64[0] = v53.i32[2];
        v48.i64[1] = v53.i32[3];
        v68 = v48;
        v48.i64[0] = v55.u32[2];
        v48.i64[1] = v55.u32[3];
        v69 = vbslq_s8(v68, v42, v48);
        v70 = vmovl_high_s16(v45);
        v71 = vmovl_high_u16(v54);
        v48.i64[0] = v70.i32[0];
        v48.i64[1] = v70.i32[1];
        v72 = v48;
        v48.i64[0] = v71.u32[0];
        v48.i64[1] = v71.u32[1];
        v73 = vbslq_s8(v72, v66, v48);
        v48.i64[0] = v58.i32[2];
        v48.i64[1] = v58.i32[3];
        v74 = v48;
        v48.i64[0] = v64.u32[2];
        v48.i64[1] = v64.u32[3];
        v75 = vbslq_s8(v74, v108, v48);
        v48.i64[0] = v70.i32[2];
        v48.i64[1] = v70.i32[3];
        v76 = v48;
        v48.i64[0] = v71.u32[2];
        v48.i64[1] = v71.u32[3];
        v28 = vaddq_s64(vbslq_s8(v76, v67, v48), v28);
        v24 = vaddq_s64(v75, v24);
        v27 = vaddq_s64(v73, v27);
        v26 = vaddq_s64(v69, v26);
        v23 = vaddq_s64(v65, v23);
        v18 = vaddq_s64(v60, v18);
        v25 = vaddq_s64(v57, v25);
        v19 = vaddq_s64(v52, v19);
        v22 += 384;
        v21 -= 16;
      }

      while (v21);
      v12 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v19, v25), vaddq_s64(v23, v27)), vaddq_s64(vaddq_s64(v18, v26), vaddq_s64(v24, v28))));
      if (v106 <= 4)
      {
        v14 = &v10[24 * v107];
        goto LABEL_36;
      }

      v15 = v13 / 0x18;
      v17 = v107;
    }

    else
    {
      v17 = 0;
    }

    v77 = v16 & 3;
    if ((v16 & 3) == 0)
    {
      v77 = 4;
    }

    v14 = &v10[24 * (v16 - v77)];
    v78 = 0uLL;
    v79 = v12;
    v80 = ~v15 + v17 + v77;
    v81 = &v10[24 * v17 + 47];
    v82.i64[0] = 255;
    v82.i64[1] = 255;
    do
    {
      v83 = (v81 - 39);
      v84 = (v81 + 9);
      v85 = vld3q_f64(v83);
      v86 = vld3q_f64(v84);
      v87.i16[0] = *(v81 - 24);
      v87.i16[1] = *v81;
      v87.i16[2] = v81[24];
      v87.i16[3] = v81[48];
      v88 = vmovl_u16(vcltz_s16(vshr_n_s16(vshl_n_s16(v87, 8uLL), 8uLL)));
      v89.i64[0] = v88.u32[0];
      v89.i64[1] = v88.u32[1];
      v90 = vshrq_n_s64(vshlq_n_s64(v89, 0x38uLL), 0x38uLL);
      v89.i64[0] = v88.u32[2];
      v89.i64[1] = v88.u32[3];
      v91 = vshrq_n_s64(vshlq_n_s64(v89, 0x38uLL), 0x38uLL);
      v89.i64[0] = v81[24];
      v89.i64[1] = v81[48];
      v92 = vbicq_s8(v89, v91);
      v89.i64[0] = *(v81 - 24);
      v89.i64[1] = *v81;
      v78 = vaddq_s64(vorrq_s8(vandq_s8(v86, v91), vandq_s8(v92, v82)), v78);
      v79 = vaddq_s64(vorrq_s8(vandq_s8(v85, v90), vandq_s8(vbicq_s8(v89, v90), v82)), v79);
      v81 += 96;
      v80 += 4;
    }

    while (v80);
    v12 = vaddvq_s64(vaddq_s64(v79, v78));
    goto LABEL_36;
  }

  v14 = v10;
  do
  {
LABEL_36:
    v93 = v14[23];
    if ((v93 & 0x80u) != 0)
    {
      v93 = *(v14 + 1);
    }

    v12 += v93;
    v14 += 24;
  }

  while (v14 != &v10[24 * v11]);
  std::string::reserve(a2, v12);
  v94 = v10[23];
  if (v94 >= 0)
  {
    v95 = v10;
  }

  else
  {
    v95 = *v10;
  }

  if (v94 >= 0)
  {
    v96 = v10[23];
  }

  else
  {
    v96 = *(v10 + 1);
  }

  std::string::append(a2, v95, v96);
  if (v11 != 1)
  {
    v97 = v10 + 24;
    do
    {
      std::string::append(a2, "\n", 1uLL);
      v98 = v97[23];
      if (v98 >= 0)
      {
        v99 = v97;
      }

      else
      {
        v99 = *v97;
      }

      if (v98 >= 0)
      {
        v100 = v97[23];
      }

      else
      {
        v100 = *(v97 + 1);
      }

      std::string::append(a2, v99, v100);
      v97 += 24;
      v13 -= 24;
    }

    while (v13);
  }

LABEL_54:
  v101 = v115;
  if (v116)
  {
    v102 = v115 + 24 * v116 - 1;
    v103 = -24 * v116;
    v104 = v102;
    do
    {
      v105 = *v104;
      v104 -= 24;
      if (v105 < 0)
      {
        operator delete(*(v102 - 23));
      }

      v102 = v104;
      v103 += 24;
    }

    while (v103);
    v101 = v115;
  }

  if (v101 != v117)
  {
    free(v101);
  }
}

uint64_t llvm::ErrorList::convertToErrorCode(llvm::ErrorList *this)
{
  if ((atomic_load_explicit(&qword_1002C4378, memory_order_acquire) & 1) == 0)
  {
    sub_100278AD0();
  }

  return 1;
}

uint64_t llvm::inconvertibleErrorCode(llvm *this)
{
  if ((atomic_load_explicit(&qword_1002C4378, memory_order_acquire) & 1) == 0)
  {
    sub_100278AD0();
  }

  return 3;
}

uint64_t llvm::errorCodeToError@<X0>(llvm *this@<X0>, std::error_code a2@<0:X1, 8:X2>, void *a3@<X8>)
{
  if (this)
  {
    operator new();
  }

  result = 0;
  *a3 = 0;
  return result;
}

uint64_t llvm::errorToErrorCode(void **a1)
{
  v14.__val_ = 0;
  v14.__cat_ = std::system_category();
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if ((*(*v2 + 48))(v2, &llvm::ErrorList::ID))
    {
      v3 = v2[1];
      v4 = v2[2];
      if (v3 != v4)
      {
        v5 = 0;
        do
        {
          v11.__r_.__value_.__r.__words[0] = v5;
          v6 = *v3;
          *v3 = 0;
          if ((*(*v6 + 48))(v6, &llvm::ErrorInfoBase::ID))
          {
            *&v14.__val_ = (*(*v6 + 32))(v6);
            v14.__cat_ = v7;
            (*(*v6 + 8))(v6);
            v6 = 0;
          }

          v15 = v6;
          sub_10002B5A0(&v11, &v15, v12);
          v5 = v12[0];
          v12[0] = 0;
          if (v15)
          {
            (*(*v15 + 8))(v15);
          }

          if (v11.__r_.__value_.__r.__words[0])
          {
            (*(*v11.__r_.__value_.__l.__data_ + 8))(v11.__r_.__value_.__r.__words[0]);
          }

          ++v3;
        }

        while (v3 != v4);
      }
    }

    else
    {
      (*(*v2 + 48))(v2, &llvm::ErrorInfoBase::ID);
      *&v14.__val_ = (*(*v2 + 32))(v2);
      v14.__cat_ = v8;
    }

    (*(*v2 + 8))(v2);
  }

  if ((atomic_load_explicit(&qword_1002C4378, memory_order_acquire) & 1) == 0)
  {
    sub_100278B28();
  }

  if (v14.__cat_ == &off_1002C0440 && v14.__val_ == 3)
  {
    std::error_code::message(&v11, &v14);
    v13 = 260;
    v12[0] = &v11;
    llvm::report_fatal_error(v12, 1);
  }

  return *&v14.__val_;
}

uint64_t llvm::StringError::StringError(uint64_t a1, llvm::Twine *a2, uint64_t a3, uint64_t a4)
{
  *a1 = off_1002B4208;
  llvm::Twine::str(a2, a1 + 8);
  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  *(a1 + 48) = 1;
  return a1;
}

void llvm::StringError::log(const std::error_code *this, llvm::raw_ostream *a2)
{
  if (LOBYTE(this[3].__val_) == 1)
  {
    cat_high = SHIBYTE(this[1].__cat_);
    if (cat_high >= 0)
    {
      p_cat = &this->__cat_;
    }

    else
    {
      p_cat = this->__cat_;
    }

    if (cat_high >= 0)
    {
      v6 = HIBYTE(this[1].__cat_);
    }

    else
    {
      v6 = *&this[1].__val_;
    }

    llvm::raw_ostream::write(a2, p_cat, v6);
    return;
  }

  std::error_code::message(&v12, this + 2);
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v12;
  }

  else
  {
    v7 = v12.__r_.__value_.__r.__words[0];
  }

  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v12.__r_.__value_.__l.__size_;
  }

  llvm::raw_ostream::write(a2, v7, size);
  if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v9 = SHIBYTE(this[1].__cat_);
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_22:
    if (!*&this[1].__val_)
    {
      return;
    }

    goto LABEL_23;
  }

  operator delete(v12.__r_.__value_.__l.__data_);
  v9 = SHIBYTE(this[1].__cat_);
  if (v9 < 0)
  {
    goto LABEL_22;
  }

LABEL_19:
  if (!v9)
  {
    return;
  }

LABEL_23:
  std::operator+<char>();
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v12;
  }

  else
  {
    v10 = v12.__r_.__value_.__r.__words[0];
  }

  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = v12.__r_.__value_.__l.__size_;
  }

  llvm::raw_ostream::write(a2, v10, v11);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_100034E00(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = 0;
  v8 = 0;
  v9 = 1;
  v6 = 0;
  v7 = 0;
  v5 = 0;
  v3 = &off_1002B45C0;
  v10 = a2;
  llvm::raw_ostream::SetBufferAndMode(&v3, 0, 0, 0);
  (*(*a1 + 16))(a1, &v3);
  llvm::raw_ostream::~raw_ostream(&v3);
}

uint64_t sub_100034EB4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 8);
    }

    *(a1 + 16) = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_100034F44(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 8);
    }

    *(a1 + 16) = v2;
    operator delete(v4);
  }

  operator delete();
}

void *sub_100034FF4(void *result, llvm::raw_ostream *this)
{
  v3 = result;
  v4 = *(this + 4);
  if ((*(this + 3) - v4) > 0x10)
  {
    *(v4 + 16) = 10;
    *v4 = *"Multiple errors:\n";
    *(this + 4) += 17;
    v5 = result[1];
    for (i = result[2]; v5 != i; ++v5)
    {
LABEL_7:
      while (1)
      {
        result = (*(**v5 + 16))(*v5, this);
        v7 = *(this + 4);
        if (*(this + 3) == v7)
        {
          break;
        }

        *v7 = 10;
        ++*(this + 4);
        if (++v5 == i)
        {
          return result;
        }
      }

      result = llvm::raw_ostream::write(this, "\n", 1uLL);
    }
  }

  else
  {
    result = llvm::raw_ostream::write(this, "Multiple errors:\n", 0x11uLL);
    v5 = v3[1];
    i = v3[2];
    if (v5 != i)
    {
      goto LABEL_7;
    }
  }

  return result;
}

void sub_10003514C(uint64_t a1, void *a2)
{
  std::error_code::message(&v5, (a1 + 8));
  if ((v5.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = &v5;
  }

  else
  {
    v3 = v5.__r_.__value_.__r.__words[0];
  }

  if ((v5.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v5.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v5.__r_.__value_.__l.__size_;
  }

  llvm::raw_ostream::write(a2, v3, size);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

uint64_t sub_1000351FC(uint64_t result)
{
  *result = off_1002B4208;
  if (*(result + 31) < 0)
  {
    v1 = result;
    operator delete(*(result + 8));
    return v1;
  }

  return result;
}

void sub_100035258(uint64_t a1)
{
  *a1 = off_1002B4208;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete();
}

void sub_10003531C(std::error_category *a1)
{
  std::error_category::~error_category(a1);

  operator delete();
}

void sub_100035360(int a1@<W1>, char *a2@<X8>)
{
  if (a1 == 3)
  {
    operator new();
  }

  if (a1 == 2)
  {
    a2[23] = 22;
    strcpy(a2, "A file error occurred.");
  }

  else
  {
    a2[23] = 15;
    strcpy(a2, "Multiple errors");
  }
}

uint64_t sub_100035450(void *a1, void *a2, uint64_t *a3)
{
  result = (*(**a2 + 48))(*a2, &llvm::ErrorInfoBase::ID);
  v7 = *a2;
  *a2 = 0;
  if (result)
  {
    v8 = *a3;
    v9 = __p;
    (*(*v7 + 24))(__p, v7);
    v10 = *(v8 + 8);
    v11 = *v8;
    if (v10 >= *(v8 + 12))
    {
      if (v11 <= __p && v11 + 24 * v10 > __p)
      {
        v14 = __p - v11;
        sub_1000355E0(v8, v10 + 1);
        v11 = *v8;
        v9 = &v14[*v8];
      }

      else
      {
        sub_1000355E0(v8, v10 + 1);
        v11 = *v8;
        v9 = __p;
      }
    }

    v12 = v11 + 24 * *(v8 + 8);
    v13 = *v9;
    *(v12 + 16) = v9[2];
    *v12 = v13;
    v9[1] = 0;
    v9[2] = 0;
    *v9 = 0;
    ++*(v8 + 8);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    *a1 = 0;
    return (*(*v7 + 8))(v7);
  }

  else
  {
    *a1 = v7;
  }

  return result;
}

void sub_1000355E0(uint64_t a1, unint64_t a2)
{
  v16 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 24, &v16);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = 24 * v6;
    v8 = v4;
    do
    {
      v9 = *v5;
      v8[2] = v5[2];
      *v8 = v9;
      v8 += 3;
      v5[1] = 0;
      v5[2] = 0;
      *v5 = 0;
      v5 += 3;
      v7 -= 24;
    }

    while (v7);
    v5 = *a1;
    v10 = *(a1 + 8);
    if (v10)
    {
      v11 = &v5[3 * v10 - 1] + 7;
      v12 = -24 * v10;
      v13 = v11;
      do
      {
        v14 = *v13;
        v13 -= 24;
        if (v14 < 0)
        {
          operator delete(*(v11 - 23));
        }

        v11 = v13;
        v12 += 24;
      }

      while (v12);
      v5 = *a1;
    }
  }

  v15 = v16;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 12) = v15;
}

uint64_t sub_1000356D4(uint64_t a1, void *a2, void *a3)
{

  return __cxa_atexit(std::error_category::~error_category, a2, a3);
}

void llvm::report_fatal_error(llvm *this, const char *a2)
{
  v2 = 1;
  v5 = 1;
  if (*this)
  {
    v3 = this;
    v2 = 3;
  }

  v4 = v2;
  llvm::report_fatal_error(&v3, a2);
}

void llvm::report_fatal_error(llvm::Twine *a1, uint64_t a2)
{
  std::mutex::lock(&stru_1002C0448);
  v5 = qword_1002C4380;
  v4 = *algn_1002C4388;
  std::mutex::unlock(&stru_1002C0448);
  if (v5)
  {
    llvm::Twine::str(a1, &__p);
    if (v30 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v20 = v5(v4, p_p, a2);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(__p);
    }

LABEL_14:
    llvm::sys::RunInterruptHandlers(v20);
    if (a2)
    {
      abort();
    }

    exit(1);
  }

  v28 = &__p;
  __p = v31;
  v30 = xmmword_10028F190;
  v22 = 2;
  v26 = 0;
  v27 = 1;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v21 = off_1002B4638;
  llvm::raw_ostream::SetBufferAndMode(&v21, 0, 0, 0);
  v11 = v25;
  if ((v24 - v25) > 0xB)
  {
    *(v25 + 8) = 540693071;
    *v11 = *"LLVM ERROR: ";
    v25 += 12;
    v12 = &v21;
    llvm::Twine::print(a1, &v21, v6, v7, v8, v9, v10);
    v18 = v25;
    if (v24 != v25)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v12 = llvm::raw_ostream::write(&v21, "LLVM ERROR: ", 0xCuLL);
    llvm::Twine::print(a1, v12, v13, v14, v15, v16, v17);
    v18 = v12[4];
    if (v12[3] != v18)
    {
LABEL_4:
      *v18 = 10;
      v12[4] = (v12[4] + 1);
      goto LABEL_12;
    }
  }

  llvm::raw_ostream::write(v12, "\n", 1uLL);
LABEL_12:
  write(2, *v28, v28[1]);
  llvm::raw_ostream::~raw_ostream(&v21);
  v20 = __p;
  if (__p != v31)
  {
    free(__p);
  }

  goto LABEL_14;
}

void llvm::report_bad_alloc_error(llvm *this, const char *a2)
{
  std::mutex::lock(&stru_1002C0488);
  v5 = qword_1002C4390;
  v4 = *algn_1002C4398;
  std::mutex::unlock(&stru_1002C0488);
  if (!v5)
  {
    write(2, "LLVM ERROR: out of memory\n", 0x1AuLL);
    v6 = strlen(this);
    write(2, this, v6);
    write(2, "\n", 1uLL);
    abort();
  }

  v5(v4, this, a2);
  __break(1u);
}

uint64_t sub_1000359A8()
{
  __cxa_atexit(&std::mutex::~mutex, &stru_1002C0448, &_mh_execute_header);

  return __cxa_atexit(&std::mutex::~mutex, &stru_1002C0488, &_mh_execute_header);
}

char *llvm::formatv_object_base::parseFormatString@<X0>(char *result@<X0>, size_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v8 = a8;
  *a8 = a8 + 2;
  a8[1] = 0x200000000;
  if (a2)
  {
    v72 = 0;
    do
    {
      v14 = result;
      v15 = a2;
      LOBYTE(v74) = 0;
      v78 = 0;
      if (*result != 123)
      {
        v35 = memchr(result, 123, a2);
        v8 = a8;
        v21 = 0;
        v26 = 0;
        v20 = 0;
        v27 = 0;
        v28 = 0;
        v31 = 0;
        v36 = v35 - v14;
        if (!v35)
        {
          v36 = -1;
        }

        if (v15 >= v36)
        {
          v29 = v36;
        }

        else
        {
          v29 = v15;
        }

        result = &v14[v29];
        a2 = v15 - v29;
        goto LABEL_37;
      }

      v16 = 1;
      do
      {
        if (a2 == v16)
        {
          v18 = -1;
          if (a2 != -1)
          {
            v18 = a2;
          }

          if (v18 >= 2)
          {
            goto LABEL_32;
          }

LABEL_13:
          v19 = memchr(result, 125, a2);
          v20 = 0;
          v21 = 0;
          v22 = 1;
          v23 = 2;
          if (!v19)
          {
            v26 = 0;
            v27 = 0;
            v28 = 0;
            v29 = 64;
            v30 = "Unterminated brace sequence. Escape with {{ for a literal brace.";
            v31 = 0;
            v32 = 1;
            a2 = 0;
            result = 0;
            v8 = a8;
            goto LABEL_38;
          }

          v24 = v19;
          v25 = (v19 - v14);
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = 64;
          v30 = "Unterminated brace sequence. Escape with {{ for a literal brace.";
          v31 = 0;
          v32 = 1;
          a2 = 0;
          result = 0;
          v8 = a8;
          if (v25 == -1)
          {
            goto LABEL_38;
          }

          if (v15 != 1)
          {
            v33 = memchr((v14 + 1), 123, v15 - 1);
            v34 = v33 - v14;
            if (!v33)
            {
              v34 = -1;
            }

            if (v34 < v25)
            {
              v21 = 0;
              v26 = 0;
              v20 = 0;
              v27 = 0;
              v28 = 0;
              v31 = 0;
              if (v15 >= v34)
              {
                v29 = v34;
              }

              else
              {
                v29 = v15;
              }

              result = &v14[v29];
              a2 = v15 - v29;
              v22 = 1;
              v23 = 2;
              v30 = v14;
              v32 = 1;
              v8 = a8;
              goto LABEL_38;
            }
          }

          if (v14 == v24)
          {
            v39 = 1;
          }

          else
          {
            v39 = v25;
          }

          if (v39 >= v15)
          {
            v39 = v15;
          }

          v40 = v39 - 1;
          if (v15 >= (v25 + 1))
          {
            v41 = (v25 + 1);
          }

          else
          {
            v41 = v15;
          }

          v81 = v14 + 1;
          v82 = v39 - 1;
          v23 = 2;
          first_not_of = llvm::StringRef::find_first_not_of(&v81, "{}", 2, 0);
          if (first_not_of >= v40)
          {
            v43 = v40;
          }

          else
          {
            v43 = first_not_of;
          }

          if (v82 < v43)
          {
            v43 = v82;
          }

          v44 = v82 - v43;
          v83 = &v81[v43];
          v84 = v82 - v43;
          last_not_of = llvm::StringRef::find_last_not_of(&v83, "{}", 2, 0xFFFFFFFFFFFFFFFFLL);
          v46 = v44 - (last_not_of + 1);
          if (v44 < last_not_of + 1)
          {
            v46 = 0;
          }

          v47 = v84 - v46;
          if (v84 >= v47)
          {
            v48 = v47;
          }

          else
          {
            v48 = v84;
          }

          v79 = v83;
          v80 = v48;
          v49 = llvm::StringRef::find_first_not_of(&v79, " \t\n\v\f\r", 6, 0);
          if (v49 >= v48)
          {
            v50 = v48;
          }

          else
          {
            v50 = v49;
          }

          if (v80 < v50)
          {
            v50 = v80;
          }

          v79 += v50;
          v80 -= v50;
          v83 = 0;
          v51 = llvm::consumeUnsignedInteger(&v79, 0, &v83);
          if (v83 >> 32)
          {
            v52 = -1;
          }

          else
          {
            v52 = v83;
          }

          if (v51)
          {
            v28 = -1;
          }

          else
          {
            v28 = v52;
          }

          v21 = v80;
          if (!v80)
          {
            v27 = 0;
            v20 = 32;
            goto LABEL_92;
          }

          v53 = v79;
          if (*v79 != 44)
          {
            v27 = 0;
            v20 = 32;
            v23 = 2;
            goto LABEL_92;
          }

          v20 = 32;
          v23 = 2;
          ++v79;
          --v80;
          if (v21 == 1)
          {
            v21 = 0;
            v27 = 0;
            goto LABEL_92;
          }

          if (v21 == 2)
          {
            goto LABEL_89;
          }

          v54 = v53 + 2;
          v55 = v53[2];
          switch(v55)
          {
            case '+':
              v23 = 2;
              break;
            case '-':
              v23 = 0;
              break;
            case '=':
              v23 = 1;
              break;
            default:
              v69 = v53[1];
              switch(v69)
              {
                case '+':
                  v23 = 2;
                  break;
                case '-':
                  v23 = 0;
                  break;
                case '=':
                  v23 = 1;
                  break;
                default:
                  v23 = 2;
                  v83 = 0;
                  if (llvm::consumeUnsignedInteger(&v79, 0, &v83))
                  {
LABEL_124:
                    v22 = 0;
                    v8 = a8;
LABEL_115:
                    v32 = 0;
                    result = &v14[v41];
                    a2 = v15 - v41;
                    v31 = 1;
                    goto LABEL_38;
                  }

LABEL_90:
                  v27 = v83;
                  if (v83 >> 32)
                  {
                    goto LABEL_124;
                  }

                  v21 = v80;
LABEL_92:
                  v57 = llvm::StringRef::find_first_not_of(&v79, " \t\n\v\f\r", 6, 0);
                  if (v57 >= v21)
                  {
                    v58 = v21;
                  }

                  else
                  {
                    v58 = v57;
                  }

                  v59 = v80;
                  if (v80 >= v58)
                  {
                    v60 = v58;
                  }

                  else
                  {
                    v60 = v80;
                  }

                  v61 = v80 - v60;
                  v62 = &v79[v60];
                  v79 += v60;
                  v80 -= v60;
                  if (v59 > v58 && *v62 == 58)
                  {
                    v26 = v62 + 1;
                    v21 = v61 - 1;
                    v79 = 0;
                    v80 = 0;
                    v61 = 0;
                  }

                  else
                  {
                    v21 = 0;
                    v26 = 0;
                  }

                  v63 = llvm::StringRef::find_first_not_of(&v79, " \t\n\v\f\r", 6, 0);
                  if (v63 >= v61)
                  {
                    v64 = v61;
                  }

                  else
                  {
                    v64 = v63;
                  }

                  if (v80 < v64)
                  {
                    v64 = v80;
                  }

                  v65 = v80 - v64;
                  v83 = &v79[v64];
                  v84 = v80 - v64;
                  v66 = llvm::StringRef::find_last_not_of(&v83, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
                  v67 = v65 - (v66 + 1);
                  if (v65 < v66 + 1)
                  {
                    v67 = 0;
                  }

                  v29 = v84;
                  v68 = v84 - v67;
                  if (v84 < v68)
                  {
                    v68 = v84;
                  }

                  if (v68)
                  {
                    v22 = 0;
                  }

                  else
                  {
                    v22 = 1;
                    v30 = v81;
                    v29 = v82;
                  }

                  v8 = a8;
                  goto LABEL_115;
              }

              v56 = -2;
LABEL_88:
              v79 = v54;
              v80 = v56 + v21;
LABEL_89:
              v83 = 0;
              if (llvm::consumeUnsignedInteger(&v79, 0, &v83))
              {
                goto LABEL_124;
              }

              goto LABEL_90;
          }

          v20 = v53[1];
          v54 = v53 + 3;
          v56 = -3;
          goto LABEL_88;
        }

        v17 = result[v16++];
      }

      while (v17 == 123);
      v18 = v16 - 1;
      if (a2 < v18)
      {
        v18 = a2;
      }

      if (v18 < 2)
      {
        goto LABEL_13;
      }

LABEL_32:
      v21 = 0;
      v26 = 0;
      v20 = 0;
      v27 = 0;
      v28 = 0;
      v31 = 0;
      v29 = v18 >> 1;
      if (a2 < v18 >> 1)
      {
        v29 = a2;
      }

      v37 = v18 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < v37)
      {
        v37 = a2;
      }

      result += v37;
      a2 -= v37;
LABEL_37:
      v22 = 1;
      v23 = 2;
      v30 = v14;
      v32 = 1;
LABEL_38:
      LODWORD(v74) = v32;
      *(&v74 + 1) = v30;
      *&v75 = v29;
      *(&v75 + 1) = __PAIR64__(v27, v28);
      LODWORD(v76) = v23;
      BYTE4(v76) = v20;
      *(&v76 + 5) = v83;
      BYTE7(v76) = BYTE2(v83);
      *(&v76 + 1) = v26;
      v77 = v21;
      v78 = v22;
      if (v22)
      {
        if (v28 == -1)
        {
          v38 = v31;
        }

        else
        {
          v38 = 0;
        }

        if (v38 == 1)
        {
          DWORD2(v75) = v72++;
        }

        v9 = *(v8 + 2);
        if (v9 >= *(v8 + 3))
        {
          v70 = a2;
          v71 = result;
          sub_100036068(v8, &v74, a3, a4, a5, a6, a7);
          v8 = a8;
          a2 = v70;
          result = v71;
        }

        else
        {
          v10 = *v8 + 56 * v9;
          v11 = v74;
          v12 = v75;
          v13 = v76;
          *(v10 + 48) = v77;
          *(v10 + 16) = v12;
          *(v10 + 32) = v13;
          *v10 = v11;
          ++*(v8 + 2);
        }
      }
    }

    while (a2);
  }

  return result;
}

uint64_t sub_100036068(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a2 + 16);
  v19[0] = *a2;
  v19[1] = v7;
  v19[2] = *(a2 + 32);
  v20 = *(a2 + 48);
  v8 = *(a1 + 2);
  v9 = *a1;
  v10 = v19;
  if (v8 >= *(a1 + 3))
  {
    if (v9 <= v19 && v9 + 56 * v8 > v19)
    {
      v17 = v19 - v9;
      v18 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v8 + 1, 56, a5, a6, a7);
      a1 = v18;
      v9 = *v18;
      v10 = &v17[*v18];
    }

    else
    {
      v16 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v8 + 1, 56, a5, a6, a7);
      a1 = v16;
      v9 = *v16;
      v10 = v19;
    }
  }

  v11 = v9 + 56 * *(a1 + 2);
  v12 = *v10;
  v13 = *(v10 + 1);
  v14 = *(v10 + 2);
  *(v11 + 48) = *(v10 + 6);
  *(v11 + 16) = v13;
  *(v11 + 32) = v14;
  *v11 = v12;
  LODWORD(v11) = *(a1 + 2) + 1;
  *(a1 + 2) = v11;
  return *a1 + 56 * v11 - 56;
}

void llvm::ManagedStaticBase::RegisterManagedStatic(llvm::ManagedStaticBase *this, void *(*a2)(void), void (*a3)(void *))
{
  if (atomic_load_explicit(&qword_1002C43A8, memory_order_acquire))
  {
    std::recursive_mutex::lock(&stru_1002C43B0);
    if (*this)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_100278B6C();
  std::recursive_mutex::lock(&stru_1002C43B0);
  if (!*this)
  {
LABEL_3:
    atomic_store(a2(), this);
    v6 = qword_1002C43A0;
    *(this + 1) = a3;
    *(this + 2) = v6;
    qword_1002C43A0 = this;
  }

LABEL_4:

  std::recursive_mutex::unlock(&stru_1002C43B0);
}

void *llvm::allocate_buffer(llvm *this, std::align_val_t a2)
{
  result = operator new(this, a2, &std::nothrow);
  if (!result)
  {
    llvm::report_bad_alloc_error("Buffer allocation failed", 1);
  }

  return result;
}

char *llvm::MemoryBuffer::getMemBuffer@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char **a5@<X8>)
{
  v10 = 261;
  v9[0] = a3;
  v9[1] = a4;
  result = sub_1000362B4(24, v9);
  *result = &off_1002B4340;
  *(result + 1) = a1;
  *(result + 2) = a1 + a2;
  *a5 = result;
  return result;
}

char *sub_1000362B4(uint64_t a1, uint64_t a2)
{
  v13 = v15;
  v14 = xmmword_10028ED90;
  if (*(a2 + 33) != 1)
  {
    goto LABEL_14;
  }

  v3 = *(a2 + 32);
  if (v3 > 4)
  {
    if (v3 - 5 < 2)
    {
      v6 = *a2;
      v7 = *(a2 + 8);
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v3 == 1)
  {
    v7 = 0;
    v6 = 0;
    goto LABEL_15;
  }

  if (v3 == 3)
  {
    v6 = *a2;
    if (*a2)
    {
      v7 = strlen(*a2);
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_15;
  }

  if (v3 != 4)
  {
LABEL_14:
    llvm::Twine::toVector(a2, &v13);
    v6 = v13;
    v7 = v14;
    goto LABEL_15;
  }

  v4 = *a2;
  v5 = *(*a2 + 23);
  if (v5 >= 0)
  {
    v6 = *a2;
  }

  else
  {
    v6 = *v4;
  }

  if (v5 >= 0)
  {
    v7 = v4[23];
  }

  else
  {
    v7 = *(v4 + 1);
  }

LABEL_15:
  v8 = malloc_type_malloc(a1 + v7 + 9, 0x100004000313F17uLL);
  if (!v8)
  {
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  v9 = v8;
  v10 = &v8[a1];
  *v10 = v7;
  v11 = v10 + 1;
  if (v7)
  {
    memcpy(v11, v6, v7);
  }

  *(v11 + v7) = 0;
  if (v13 != v15)
  {
    free(v13);
  }

  return v9;
}

void llvm::MemoryBuffer::getMemBufferCopy(const void *a1@<X0>, size_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  llvm::WritableMemoryBuffer::getNewUninitMemBuffer(a2, a3, 0, &v8);
  v7 = v8;
  if (v8 && a2)
  {
    memmove(*(v8 + 8), a1, a2);
  }

  *a4 = v7;
}

void *sub_1000364D0(uint64_t a1, uint64_t a2, size_t a3, off_t a4, int a5, int a6, char a7, __int16 a8)
{
  if (a5)
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

  llvm::sys::fs::openNativeFileForRead(a2, v15, 0, &v22);
  if ((v23 & 1) == 0)
  {
    v20 = v22;
    sub_10003683C(a1, v22, a2, 0xFFFFFFFFFFFFFFFFLL, a3, a4, a6, a7, a8);
    result = llvm::sys::fs::closeFile(&v20, v19);
    if ((v23 & 1) == 0)
    {
      return result;
    }

    goto LABEL_10;
  }

  v21 = v22;
  v22 = 0;
  v16 = llvm::errorToErrorCode(&v21);
  *(a1 + 16) |= 1u;
  *a1 = v16;
  *(a1 + 8) = v17;
  result = v21;
  if (v21)
  {
    result = (*(*v21 + 8))(v21);
  }

  if (v23)
  {
LABEL_10:
    result = v22;
    v22 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void llvm::WritableMemoryBuffer::getNewUninitMemBuffer(size_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, void *a4@<X8>)
{
  v7 = a3;
  v20 = v22;
  v21 = xmmword_10028ED90;
  if (*(a2 + 33) != 1)
  {
    goto LABEL_14;
  }

  v8 = *(a2 + 32);
  if (v8 > 4)
  {
    if (v8 - 5 < 2)
    {
      v11 = *a2;
      v12 = *(a2 + 8);
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v8 == 1)
  {
    v12 = 0;
    v11 = 0;
    goto LABEL_15;
  }

  if (v8 == 3)
  {
    v11 = *a2;
    if (*a2)
    {
      v12 = strlen(*a2);
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_15;
  }

  if (v8 != 4)
  {
LABEL_14:
    llvm::Twine::toVector(a2, &v20);
    v11 = v20;
    v12 = v21;
    goto LABEL_15;
  }

  v9 = *a2;
  v10 = *(*a2 + 23);
  if (v10 >= 0)
  {
    v11 = *a2;
  }

  else
  {
    v11 = *v9;
  }

  if (v10 >= 0)
  {
    v12 = *(*a2 + 23);
  }

  else
  {
    v12 = *(v9 + 1);
  }

LABEL_15:
  v13 = v12 + 33;
  if ((a3 & 0x100) != 0)
  {
    v14 = 1 << v7;
  }

  else
  {
    v14 = 16;
  }

  v15 = a1 + v14 + v13 + 1;
  if (v15 <= a1)
  {
    v17 = 0;
  }

  else
  {
    v16 = malloc_type_malloc(v15, 0x100004077774924uLL);
    v17 = v16;
    if (v16)
    {
      v16[3] = v12;
      v18 = (v16 + 4);
      if (v12)
      {
        memcpy(v16 + 4, v11, v12);
      }

      v18[v12] = 0;
      v19 = (v17 + v13 + v14 - 1) & -v14;
      *(v19 + a1) = 0;
      *v17 = &off_1002B4378;
      v17[1] = v19;
      v17[2] = v19 + a1;
    }
  }

  *a4 = v17;
  if (v20 != v22)
  {
    free(v20);
  }
}

void sub_10003683C(uint64_t a1, int a2, uint64_t a3, size_t a4, size_t a5, off_t a6, int a7, char a8, __int16 a9)
{
  v10 = a5;
  if (atomic_load_explicit(&qword_1002C4400, memory_order_acquire))
  {
    if (a5 != -1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v41 = a7;
    v39 = a8;
    v40 = a4;
    sub_100278BE4();
    a4 = v40;
    a8 = v39;
    a7 = v41;
    if (v10 != -1)
    {
      goto LABEL_4;
    }
  }

  v10 = a4;
  if (a4 == -1)
  {
    v24 = a8;
    v25 = a7;
    v45 = 0u;
    memset(v46, 0, sizeof(v46));
    v47 = 0xFFFFLL;
    v48 = 0;
    v49 = 0;
    v26 = llvm::sys::fs::status(a2, &v45);
    if (v26)
    {
      *(a1 + 16) |= 1u;
      *a1 = v26;
      *(a1 + 8) = v27;
      return;
    }

    if (*&v46[24] != 2 && *&v46[24] != 5)
    {
      sub_100036CCC(v43);
      v36 = *(a1 + 16);
      if (v44)
      {
        v37 = v36 | 1;
        v38 = v43[0];
        *(a1 + 8) = v43[1];
      }

      else
      {
        v37 = v36 & 0xFE;
        v38 = v43[0];
      }

      *(a1 + 16) = v37;
      *a1 = v38;
      return;
    }

    v10 = *&v46[16];
    a4 = *&v46[16];
    a7 = v25;
    a8 = v24;
  }

LABEL_4:
  v14 = dword_1002C43F4;
  if (a7 && (a8 & 1) != 0)
  {
    goto LABEL_29;
  }

  v16 = (v10 & 0xFFFFFFFFFFFFC000) != 0 && v10 >= dword_1002C43F4;
  if (!v16 || a7 == 0)
  {
    if (v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (a4 == -1)
    {
      v45 = 0u;
      memset(v46, 0, sizeof(v46));
      v47 = 0xFFFFLL;
      v48 = 0;
      v49 = 0;
      if (llvm::sys::fs::status(a2, &v45))
      {
        goto LABEL_29;
      }

      a4 = *&v46[16];
      if (v10 + a6 != *&v46[16])
      {
        goto LABEL_29;
      }
    }

    else if (v10 + a6 != a4)
    {
      goto LABEL_29;
    }

    if ((a4 & (v14 - 1)) != 0)
    {
LABEL_22:
      LODWORD(v45) = 0;
      *(&v45 + 1) = std::system_category();
      v18 = sub_1000362B4(48, a3);
      *v18 = off_1002B43B0;
      v19 = llvm::sys::fs::mapped_file_region::alignment(v18);
      v20 = (v19 - 1) & a6;
      v21 = llvm::sys::fs::mapped_file_region::alignment(v19);
      llvm::sys::fs::mapped_file_region::mapped_file_region((v18 + 24), a2, 0, v20 + v10, -v21 & a6, &v45);
      if (!v45)
      {
        v22 = llvm::sys::fs::mapped_file_region::const_data((v18 + 24));
        v23 = v22 + ((llvm::sys::fs::mapped_file_region::alignment(v22) - 1) & a6);
        *(v18 + 1) = v23;
        *(v18 + 2) = &v23[v10];
        if (!v45)
        {
          *(a1 + 16) &= ~1u;
          *a1 = v18;
          return;
        }
      }

      (*(*v18 + 8))(v18);
    }
  }

LABEL_29:
  llvm::WritableMemoryBuffer::getNewUninitMemBuffer(v10, a3, a9, v43);
  if (!v43[0])
  {
    v35 = std::generic_category();
    *(a1 + 16) |= 1u;
    *a1 = 12;
    *(a1 + 8) = v35;
    return;
  }

  v28 = *(v43[0] + 8);
  v29 = *(v43[0] + 16) - v28;
  do
  {
    if (!v29)
    {
      goto LABEL_46;
    }

    llvm::sys::fs::readNativeFileSlice(a2, v28, v29, a6, &v45);
    if (BYTE8(v45))
    {
      v30 = v45;
      *&v45 = 0;
      v42 = v30;
      v31 = llvm::errorToErrorCode(&v42);
      *(a1 + 16) |= 1u;
      *a1 = v31;
      *(a1 + 8) = v32;
      if (v42)
      {
        (*(*v42 + 8))(v42);
        v33 = 1;
        if ((BYTE8(v45) & 1) == 0)
        {
          continue;
        }
      }

      else
      {
        v33 = 1;
        if ((BYTE8(v45) & 1) == 0)
        {
          continue;
        }
      }
    }

    else if (v45)
    {
      v33 = 0;
      v29 -= v45;
      v28 += v45;
      a6 += v45;
      if ((BYTE8(v45) & 1) == 0)
      {
        continue;
      }
    }

    else
    {
      bzero(v28, v29);
      v33 = 3;
      if ((BYTE8(v45) & 1) == 0)
      {
        continue;
      }
    }

    v34 = v45;
    *&v45 = 0;
    if (v34)
    {
      (*(*v34 + 8))(v34);
    }
  }

  while (!v33);
  if (v33 == 3)
  {
LABEL_46:
    *(a1 + 16) &= ~1u;
    *a1 = v43[0];
    return;
  }

  if (v43[0])
  {
    (*(*v43[0] + 8))(v43[0]);
  }
}

void sub_100036CCC(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v4 = v1;
  v15 = v17;
  v16 = xmmword_10028F1B0;
  llvm::sys::fs::readNativeFileToEOF(v5, &v15, 0x4000uLL, &v14);
  if (v14)
  {
    v13 = v14;
    v14 = 0;
    v6 = llvm::errorToErrorCode(&v13);
    *(v4 + 16) |= 1u;
    *v4 = v6;
    *(v4 + 8) = v7;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    if (v14)
    {
      (*(*v14 + 8))(v14);
      v8 = v15;
      if (v15 == v17)
      {
        return;
      }

      goto LABEL_12;
    }

LABEL_11:
    v8 = v15;
    if (v15 == v17)
    {
      return;
    }

    goto LABEL_12;
  }

  v9 = v15;
  v10 = v16;
  llvm::WritableMemoryBuffer::getNewUninitMemBuffer(v16, v3, 0, &v14);
  v11 = v14;
  if (v14)
  {
    if (v10)
    {
      memmove(*(v14 + 8), v9, v10);
    }

    *(v4 + 16) &= ~1u;
    *v4 = v11;
    goto LABEL_11;
  }

  v12 = std::generic_category();
  *(v4 + 16) |= 1u;
  *v4 = 12;
  *(v4 + 8) = v12;
  v8 = v15;
  if (v15 == v17)
  {
    return;
  }

LABEL_12:
  free(v8);
}

uint64_t sub_100036EA8()
{
  llvm::sys::Process::getPageSize(&v5);
  if ((v6 & 1) == 0)
  {
    return v5;
  }

  v0 = v5;
  v5 = 0;
  v3 = v0;
  sub_10002B334(&v3, &v4);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (v6)
  {
    v1 = v5;
    v5 = 0;
    if (v1)
    {
      (*(*v1 + 8))(v1);
    }
  }

  return 4096;
}

void *sub_100036FA8(void *a1)
{
  *a1 = off_1002B43B0;
  llvm::sys::fs::mapped_file_region::unmapImpl((a1 + 3));
  return a1;
}

void sub_100036FEC(void *a1)
{
  *a1 = off_1002B43B0;
  llvm::sys::fs::mapped_file_region::unmapImpl((a1 + 3));

  free(a1);
}

void *llvm::MemoryBufferRef::MemoryBufferRef(void *a1, void *a2)
{
  v3 = a2[1];
  v4 = a2[2] - v3;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = (*(*a2 + 16))(a2);
  a1[3] = v5;
  return a1;
}

void *llvm::write_integer(llvm::raw_ostream *a1, unsigned int a2, size_t a3, int a4)
{
  if ((a2 & 0x80000000) != 0)
  {
    a2 = -a2;
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return sub_10003794C(a1, a2, a3, a4, v4);
}

void *llvm::write_integer(llvm::raw_ostream *a1, unint64_t a2, size_t a3, int a4)
{
  return sub_1000370D8(a1, a2, a3, a4, 0);
}

{
  if ((a2 & 0x8000000000000000) != 0)
  {
    a2 = -a2;
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return sub_1000370D8(a1, a2, a3, a4, v4);
}

void *sub_1000370D8(llvm::raw_ostream *this, unint64_t a2, size_t a3, int a4, int a5)
{
  if (!HIDWORD(a2))
  {

    return sub_10003794C(this, a2, a3, a4, a5);
  }

  v9 = 0;
  v10 = 0;
  do
  {
    v24[v10-- + 127] = (a2 % 0xA) | 0x30;
    v9 += &_mh_execute_header;
    v11 = a2 > 9;
    a2 /= 0xAuLL;
  }

  while (v11);
  v12 = v9 >> 32;
  if (!a5)
  {
LABEL_10:
    if (a4 != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  v13 = *(this + 4);
  if (v13 < *(this + 3))
  {
    *(this + 4) = v13 + 1;
    *v13 = 45;
    goto LABEL_10;
  }

  llvm::raw_ostream::write(this, 45);
  if (a4 != 1)
  {
LABEL_11:
    if (v12 < a3)
    {
      v14 = v12;
      do
      {
        while (1)
        {
          v15 = *(this + 4);
          if (v15 >= *(this + 3))
          {
            break;
          }

          *(this + 4) = v15 + 1;
          *v15 = 48;
          if (++v14 >= a3)
          {
            goto LABEL_16;
          }
        }

        llvm::raw_ostream::write(this, 48);
        ++v14;
      }

      while (v14 < a3);
    }
  }

LABEL_16:
  v16 = &v25 - v12;
  if (a4 != 1)
  {
    return llvm::raw_ostream::write(this, &v25 - v12, v12);
  }

  v17 = (v12 - 1) % 3;
  v18 = v17 + 1;
  v19 = v12 - (v17 + 1);
  if (v12 >= v17 + 1)
  {
    v20 = v17 + 1;
  }

  else
  {
    v20 = v12;
  }

  result = llvm::raw_ostream::write(this, v16, v20);
  if (v19)
  {
    v21 = &v16[v18];
    v22 = -3 * ((-v10 - 1) / 3uLL);
    do
    {
      v23 = *(this + 4);
      if (v23 < *(this + 3))
      {
        *(this + 4) = v23 + 1;
        *v23 = 44;
      }

      else
      {
        llvm::raw_ostream::write(this, 44);
      }

      result = llvm::raw_ostream::write(this, v21, 3uLL);
      v21 += 3;
      v22 += 3;
    }

    while (v22);
  }

  return result;
}

void *llvm::write_hex(void *a1, unint64_t a2, int a3, unint64_t a4, char a5)
{
  if (a5)
  {
    if (a4 > 0x7F)
    {
      LODWORD(a4) = 128;
    }
  }

  else
  {
    LODWORD(a4) = 0;
  }

  v5 = (67 - __clz(a2)) >> 2;
  if (v5 <= 1)
  {
    v5 = 1;
  }

  *&v6 = 0x3030303030303030;
  *(&v6 + 1) = 0x3030303030303030;
  v11[6] = v6;
  v11[7] = v6;
  v11[4] = v6;
  v11[5] = v6;
  LODWORD(v7) = v5 + 2 * ((a3 & 0xFFFFFFFE) == 2);
  v11[2] = v6;
  v11[3] = v6;
  if (a4 <= v7)
  {
    v7 = v7;
  }

  else
  {
    v7 = a4;
  }

  v11[0] = v6;
  v11[1] = v6;
  if ((a3 & 0xFFFFFFFE) == 2)
  {
    BYTE1(v11[0]) = 120;
  }

  if (a2)
  {
    v8 = &v11[-1] + v7 + 15;
    do
    {
      *v8-- = a0123456789abcd_3[a2 & 0xF] | (32 * ((a3 & 0xFFFFFFFD) != 0));
      v9 = a2 > 0xF;
      a2 >>= 4;
    }

    while (v9);
  }

  return llvm::raw_ostream::write(a1, v11, v7);
}

void llvm::write_double(llvm::raw_ostream *this, unsigned int a2, unint64_t a3, char a4, double a5)
{
  v6 = 2;
  if (a2 < 2)
  {
    v6 = 6;
  }

  if ((a4 & 1) == 0)
  {
    a3 = v6;
  }

  if (fabs(a5) != INFINITY)
  {
    v35 = &v37;
    v36 = xmmword_10028F120;
    if (a2 == 1)
    {
      v13 = 69;
    }

    else
    {
      v13 = 102;
    }

    if (a2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 101;
    }

    v27 = 2;
    v31 = 0;
    v32 = 1;
    v29 = 0;
    v30 = 0;
    v28 = 0;
    v26 = off_1002B4638;
    v33 = &v35;
    llvm::raw_ostream::SetBufferAndMode(&v26, 0, 0, 0);
    if ((v29 - v30) > 1)
    {
      *v30++ = 11813;
      v16 = llvm::raw_ostream::operator<<(&v26, a3);
      v17 = *(v16 + 4);
      if (v17 >= *(v16 + 3))
      {
LABEL_25:
        llvm::raw_ostream::write(v16, v14);
        if (a2 != 3)
        {
LABEL_26:
          v18 = v36;
          if ((v36 + 1) > *(&v36 + 1))
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod(&v35, &v37, v36 + 1, 1);
            v18 = v36;
          }

          v35[v18] = 0;
          snprintf(__str, 0x20uLL, v35, *&a5, &off_1002B43E8, v35, *&a5);
          v19 = strlen(__str);
          v20 = *(this + 4);
          if (v19 > *(this + 3) - v20)
          {
            llvm::raw_ostream::write(this, __str, v19);
            llvm::raw_ostream::~raw_ostream(&v26);
            v21 = v35;
            if (v35 == &v37)
            {
              return;
            }

            goto LABEL_46;
          }

          if (v19)
          {
            memcpy(v20, __str, v19);
            *(this + 4) += v19;
            llvm::raw_ostream::~raw_ostream(&v26);
            v21 = v35;
            if (v35 == &v37)
            {
              return;
            }

            goto LABEL_46;
          }

          goto LABEL_45;
        }

LABEL_34:
        v22 = a5 * 100.0;
        v23 = v36;
        if ((v36 + 1) > *(&v36 + 1))
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(&v35, &v37, v36 + 1, 1);
          v23 = v36;
        }

        v35[v23] = 0;
        snprintf(__str, 0x20uLL, v35, *&v22, &off_1002B43E8, v35, *&v22);
        v24 = strlen(__str);
        v25 = *(this + 4);
        if (v24 <= *(this + 3) - v25)
        {
          if (v24)
          {
            memcpy(v25, __str, v24);
            v25 = (*(this + 4) + v24);
            *(this + 4) = v25;
          }
        }

        else
        {
          llvm::raw_ostream::write(this, __str, v24);
          v25 = *(this + 4);
        }

        if (v25 >= *(this + 3))
        {
          llvm::raw_ostream::write(this, 37);
          llvm::raw_ostream::~raw_ostream(&v26);
          v21 = v35;
          if (v35 == &v37)
          {
            return;
          }

LABEL_46:
          free(v21);
          return;
        }

        *(this + 4) = v25 + 1;
        *v25 = 37;
LABEL_45:
        llvm::raw_ostream::~raw_ostream(&v26);
        v21 = v35;
        if (v35 == &v37)
        {
          return;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v15 = llvm::raw_ostream::write(&v26, "%.", 2uLL);
      v16 = llvm::raw_ostream::operator<<(v15, a3);
      v17 = *(v16 + 4);
      if (v17 >= *(v16 + 3))
      {
        goto LABEL_25;
      }
    }

    *(v16 + 4) = v17 + 1;
    *v17 = v14;
    if (a2 != 3)
    {
      goto LABEL_26;
    }

    goto LABEL_34;
  }

  if (a5 >= 0.0)
  {
    v9 = "INF";
  }

  else
  {
    v9 = "-INF";
  }

  if (a5 >= 0.0)
  {
    v10 = 3;
  }

  else
  {
    v10 = 4;
  }

  v11 = *(this + 4);
  if (v10 <= *(this + 3) - v11)
  {
    memcpy(v11, v9, v10);
    *(this + 4) += v10;
  }

  else
  {

    llvm::raw_ostream::write(this, v9, v10);
  }
}

void *sub_10003794C(llvm::raw_ostream *this, unsigned int a2, size_t a3, int a4, int a5)
{
  v8 = 0;
  v9 = 0;
  do
  {
    v24[v9-- + 127] = (a2 % 0xA) | 0x30;
    v8 += &_mh_execute_header;
    v10 = a2 > 9;
    a2 /= 0xAu;
  }

  while (v10);
  v11 = v8 >> 32;
  if (a5)
  {
    v12 = *(this + 4);
    if (v12 >= *(this + 3))
    {
      llvm::raw_ostream::write(this, 45);
      if (a4 == 1)
      {
        goto LABEL_12;
      }

      goto LABEL_7;
    }

    *(this + 4) = v12 + 1;
    *v12 = 45;
  }

  if (a4 == 1)
  {
    goto LABEL_12;
  }

LABEL_7:
  if (v11 < a3)
  {
    v13 = v11;
    do
    {
      while (1)
      {
        v14 = *(this + 4);
        if (v14 >= *(this + 3))
        {
          break;
        }

        *(this + 4) = v14 + 1;
        *v14 = 48;
        if (++v13 >= a3)
        {
          goto LABEL_12;
        }
      }

      llvm::raw_ostream::write(this, 48);
      ++v13;
    }

    while (v13 < a3);
  }

LABEL_12:
  v15 = &v25 - v11;
  if (a4 != 1)
  {
    return llvm::raw_ostream::write(this, &v25 - v11, v11);
  }

  v16 = (v11 - 1) % 3;
  v17 = v16 + 1;
  v18 = v11 - (v16 + 1);
  if (v11 >= v16 + 1)
  {
    v19 = v16 + 1;
  }

  else
  {
    v19 = v11;
  }

  result = llvm::raw_ostream::write(this, v15, v19);
  if (v18)
  {
    v21 = &v15[v17];
    v22 = -3 * ((-v9 - 1) / 3uLL);
    do
    {
      v23 = *(this + 4);
      if (v23 < *(this + 3))
      {
        *(this + 4) = v23 + 1;
        *v23 = 44;
      }

      else
      {
        llvm::raw_ostream::write(this, 44);
      }

      result = llvm::raw_ostream::write(this, v21, 3uLL);
      v21 += 3;
      v22 += 3;
    }

    while (v22);
  }

  return result;
}

void *llvm::operator<<(void *result)
{
  v1 = result[4];
  if (result[3] - v1 <= 3uLL)
  {
    return llvm::raw_ostream::write(result, "None", 4uLL);
  }

  *v1 = 1701736270;
  result[4] += 4;
  return result;
}

llvm::PrettyStackTraceEntry *llvm::PrettyStackTraceEntry::PrettyStackTraceEntry(llvm::PrettyStackTraceEntry *this)
{
  *this = off_1002B4408;
  v2 = dword_1002C04C8;
  off_1002C33D8();
  if (*v3)
  {
    v4 = *v3 == v2;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = v3;
    v6 = llvm::errs(v3);
    sub_100038058(v6);
    *v5 = v2;
  }

  off_1002C33C0();
  *(this + 1) = *v7;
  *v7 = this;
  return this;
}

void llvm::PrettyStackTraceEntry::~PrettyStackTraceEntry(llvm::PrettyStackTraceEntry *this)
{
  *this = off_1002B4408;
  v1 = *(this + 1);
  off_1002C33C0();
  *v2 = v3;
  v4 = dword_1002C04C8;
  off_1002C33D8();
  if (*v5)
  {
    v6 = *v5 == v4;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = v5;
    v8 = llvm::errs(v5);
    sub_100038058(v8);
    *v7 = v4;
  }
}

llvm::PrettyStackTraceFormat *llvm::PrettyStackTraceFormat::PrettyStackTraceFormat(llvm::PrettyStackTraceFormat *this, const char *a2, ...)
{
  va_start(va, a2);
  *this = off_1002B4408;
  v4 = dword_1002C04C8;
  off_1002C33D8();
  if (*v5)
  {
    v6 = *v5 == v4;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = v5;
    v8 = llvm::errs(v5);
    sub_100038058(v8);
    *v7 = v4;
  }

  off_1002C33C0();
  v10 = *v9;
  *v9 = this;
  *(this + 2) = this + 40;
  v11 = (this + 16);
  *this = off_1002B4430;
  *(this + 1) = v10;
  *(this + 24) = xmmword_10028F130;
  v12 = vsnprintf(0, 0, a2, va);
  if ((v12 & 0x80000000) == 0)
  {
    v13 = (v12 + 1);
    v14 = *(this + 3);
    if (v14 != v13)
    {
      if (v14 <= v13)
      {
        if (*(this + 4) < v13)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(this + 16, this + 40, v13, 1);
          v14 = *(this + 3);
        }

        if (v13 != v14)
        {
          bzero(&(*v11)[v14], v13 - v14);
        }
      }

      *(this + 3) = v13;
    }

    vsnprintf(*v11, v13, a2, va);
  }

  return this;
}

void *llvm::PrettyStackTraceFormat::print(llvm::PrettyStackTraceFormat *this, llvm::raw_ostream *a2)
{
  result = llvm::raw_ostream::write(a2, *(this + 2), *(this + 3));
  v3 = result[4];
  if (result[3] == v3)
  {

    return llvm::raw_ostream::write(result, "\n", 1uLL);
  }

  else
  {
    *v3 = 10;
    ++result[4];
  }

  return result;
}

void *sub_100037EA8(void *a1)
{
  *a1 = off_1002B4430;
  v2 = a1[2];
  if (v2 != a1 + 5)
  {
    free(v2);
  }

  *a1 = off_1002B4408;
  v3 = a1[1];
  off_1002C33C0();
  *v4 = v5;
  v6 = dword_1002C04C8;
  off_1002C33D8();
  if (*v7)
  {
    v8 = *v7 == v6;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = v7;
    v10 = llvm::errs(v7);
    sub_100038058(v10);
    *v9 = v6;
  }

  return a1;
}

void sub_100037F70(void *a1)
{
  *a1 = off_1002B4430;
  v2 = a1[2];
  if (v2 != a1 + 5)
  {
    free(v2);
  }

  *a1 = off_1002B4408;
  v3 = a1[1];
  off_1002C33C0();
  *v4 = v5;
  v6 = dword_1002C04C8;
  off_1002C33D8();
  if (*v7)
  {
    v8 = *v7 == v6;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = v7;
    v10 = llvm::errs(v7);
    sub_100038058(v10);
    *v9 = v6;
  }

  operator delete();
}

void sub_100038058(llvm::raw_ostream *a1)
{
  off_1002C33C0();
  v3 = *v2;
  if (*v2)
  {
    v4 = v2;
    v5 = *(a1 + 4);
    if ((*(a1 + 3) - v5) >= 0xC)
    {
      *(v5 + 8) = 171602029;
      *v5 = *"Stack dump:\n";
      *(a1 + 4) += 12;
      *v2 = 0;
    }

    else
    {
      llvm::raw_ostream::write(a1, "Stack dump:\n", 0xCuLL);
      v3 = *v4;
      *v4 = 0;
      if (!v3)
      {
LABEL_15:
        *v4 = v3;
        if (*(a1 + 4) != *(a1 + 2))
        {
          llvm::raw_ostream::flush_nonempty(a1);
        }

        return;
      }
    }

    v6 = 0;
    v7 = v3;
    do
    {
      v8 = v6;
      v6 = v7;
      v7 = v7[1];
      v6[1] = v8;
    }

    while (v7);
    v9 = 0;
    v10 = v6;
    do
    {
      v11 = llvm::raw_ostream::operator<<(a1, v9);
      v12 = *(v11 + 4);
      if (*(v11 + 3) - v12 > 1uLL)
      {
        *v12 = 2350;
        *(v11 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v11, ".\t", 2uLL);
      }

      llvm::sys::Watchdog::Watchdog(&v15, 5u);
      (*(*v10 + 16))(v10, a1);
      llvm::sys::Watchdog::~Watchdog(&v15);
      v10 = v10[1];
      ++v9;
    }

    while (v10);
    v13 = 0;
    do
    {
      v14 = v6;
      v6 = v6[1];
      v14[1] = v13;
      v13 = v14;
    }

    while (v6);
    goto LABEL_15;
  }
}

void llvm::Regex::~Regex(llvm::Regex *this)
{
  v2 = *this;
  if (v2)
  {
    llvm_regfree(v2);
    if (*this)
    {
      operator delete();
    }
  }
}

uint64_t llvm::Regex::match(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, std::string *this)
{
  if (this)
  {
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      size = this->__r_.__value_.__l.__size_;
    }

    if (size)
    {
      std::string::assign(this, "");
    }

    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = *a1;
      v13 = llvm_regerror(*(a1 + 8), *a1, 0, 0);
      std::string::resize(this, v13 - 1, 0);
      if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = this;
      }

      else
      {
        v14 = this->__r_.__value_.__r.__words[0];
      }

      llvm_regerror(v11, v12, v14, v13);
      return 0;
    }
  }

  else if (*(a1 + 8))
  {
    return 0;
  }

  if (a4)
  {
    v16 = *(*a1 + 8) + 1;
  }

  else
  {
    v16 = 0;
  }

  if (a2)
  {
    v17 = a3;
  }

  else
  {
    a2 = "";
    v17 = 0;
  }

  v36 = v38;
  v37 = 0x800000000;
  if (v16 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v16;
  }

  if (v16 < 9)
  {
    v19 = 0;
    v20 = v38;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v38, v18, 16);
    v19 = v37;
    if (v37 == v18)
    {
      goto LABEL_27;
    }

    v20 = v36;
  }

  bzero(&v20[16 * v19], 16 * (v18 - v19));
LABEL_27:
  LODWORD(v37) = v18;
  v21 = v36;
  *v36 = 0;
  v21[1] = v17;
  v22 = llvm_regexec(*a1, a2, v16, v21, 4);
  if (v22)
  {
    if (v22 == 1 || !this)
    {
      result = 0;
      v27 = v36;
      if (v36 == v38)
      {
        return result;
      }
    }

    else
    {
      v23 = *(a1 + 8);
      v24 = *a1;
      v25 = llvm_regerror(v23, *a1, 0, 0);
      std::string::resize(this, v25 - 1, 0);
      if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = this;
      }

      else
      {
        v26 = this->__r_.__value_.__r.__words[0];
      }

      llvm_regerror(v23, v24, v26, v25);
      result = 0;
      v27 = v36;
      if (v36 == v38)
      {
        return result;
      }
    }

LABEL_36:
    v28 = result;
    free(v27);
    return v28;
  }

  if (a4)
  {
    *(a4 + 8) = 0;
    if (v16)
    {
      v29 = 0;
      v30 = 0;
      v31 = 16 * v16;
      do
      {
        while (1)
        {
          v32 = *(v36 + v29);
          if (v32 == -1)
          {
            break;
          }

          v33 = *(v36 + v29 + 8);
          if (v30 >= *(a4 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 16), v30 + 1, 16);
            v30 = *(a4 + 8);
          }

          v34 = (*a4 + 16 * v30);
          *v34 = &a2[v32];
          v34[1] = v33 - v32;
          v30 = *(a4 + 8) + 1;
          *(a4 + 8) = v30;
          v29 += 16;
          if (v31 == v29)
          {
            goto LABEL_49;
          }
        }

        if (v30 >= *(a4 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 16), v30 + 1, 16);
          v30 = *(a4 + 8);
        }

        v35 = (*a4 + 16 * v30);
        *v35 = 0;
        v35[1] = 0;
        v30 = *(a4 + 8) + 1;
        *(a4 + 8) = v30;
        v29 += 16;
      }

      while (v31 != v29);
    }
  }

LABEL_49:
  result = 1;
  v27 = v36;
  if (v36 != v38)
  {
    goto LABEL_36;
  }

  return result;
}

uint64_t *sub_100038624@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 32);
  if (*(result + 32) && (v4 = *(a2 + 32), *(a2 + 32)))
  {
    if (v3 == 1)
    {
      v5 = *(a2 + 1);
      *a3 = *a2;
      *(a3 + 16) = v5;
      *(a3 + 32) = a2[4];
    }

    else if (v4 == 1)
    {
      v6 = *(result + 1);
      *a3 = *result;
      *(a3 + 16) = v6;
      *(a3 + 32) = result[4];
    }

    else
    {
      v7 = *result;
      v8 = result[1];
      if (*(result + 33) != 1)
      {
        LOBYTE(v3) = 2;
        v7 = result;
      }

      v9 = a2[1];
      if (*(a2 + 33) == 1)
      {
        v10 = *a2;
      }

      else
      {
        LOBYTE(v4) = 2;
        v10 = a2;
      }

      *a3 = v7;
      *(a3 + 8) = v8;
      *(a3 + 16) = v10;
      *(a3 + 24) = v9;
      *(a3 + 32) = v3;
      *(a3 + 33) = v4;
    }
  }

  else
  {
    *(a3 + 32) = 256;
  }

  return result;
}

const void **llvm::SmallPtrSetImplBase::insert_imp_big(llvm::SmallPtrSetImplBase *this, char *a2)
{
  v2 = *(this + 3);
  v3 = *(this + 2);
  if (3 * v3 <= 4 * (v2 - *(this + 4)))
  {
    v13 = a2;
    if (v3 >= 0x40)
    {
      v3 *= 2;
    }

    else
    {
      v3 = 128;
    }
  }

  else
  {
    if (v3 - v2 >= v3 >> 3)
    {
      goto LABEL_3;
    }

    v13 = a2;
  }

  v14 = this;
  llvm::SmallPtrSetImplBase::Grow(this, v3);
  this = v14;
  a2 = v13;
LABEL_3:
  v4 = *(this + 2) - 1;
  v5 = v4 & ((a2 >> 4) ^ (a2 >> 9));
  v6 = (*this + 8 * v5);
  v7 = *v6;
  if (*v6 != -1)
  {
    v8 = 0;
    v10 = 1;
    while (v7 != a2)
    {
      if (v8)
      {
        v11 = 0;
      }

      else
      {
        v11 = v7 + 2 == 0;
      }

      if (v11)
      {
        v8 = v6;
      }

      v12 = v5 + v10++;
      v5 = v12 & v4;
      v6 = (*this + 8 * (v12 & v4));
      v7 = *v6;
      if (*v6 == -1)
      {
        goto LABEL_5;
      }
    }

    return v6;
  }

  v8 = 0;
LABEL_5:
  if (v8)
  {
    v6 = v8;
  }

  if (*v6 == a2)
  {
    return v6;
  }

  if (*v6 == -2)
  {
    --*(this + 4);
  }

  else
  {
    ++*(this + 3);
  }

  *v6 = a2;
  return v6;
}

void llvm::SmallPtrSetImplBase::Grow(llvm::SmallPtrSetImplBase *this, unsigned int a2)
{
  v4 = *this;
  v5 = *(this + 20);
  v6 = 8;
  if (v5)
  {
    v6 = 12;
  }

  v7 = *(this + v6);
  v8 = 8 * a2;
  v9 = malloc_type_malloc(v8, 0x3C0F72FBuLL);
  if (!v9 && (a2 || (v9 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) == 0))
  {
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  *this = v9;
  *(this + 2) = a2;
  memset(v9, 255, v8);
  if (v7)
  {
    v10 = v4;
    do
    {
      v13 = *v10;
      if (*v10 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v14 = *(this + 2) - 1;
        v15 = v14 & ((v13 >> 4) ^ (v13 >> 9));
        v12 = (*this + 8 * v15);
        v16 = *v12;
        if (*v12 == -1)
        {
          v11 = 0;
LABEL_9:
          if (v11)
          {
            v12 = v11;
          }
        }

        else
        {
          v11 = 0;
          v17 = 1;
          while (v16 != v13)
          {
            if (v11)
            {
              v18 = 0;
            }

            else
            {
              v18 = v16 == -2;
            }

            if (v18)
            {
              v11 = v12;
            }

            v19 = v15 + v17++;
            v15 = v19 & v14;
            v12 = (*this + 8 * (v19 & v14));
            v16 = *v12;
            if (*v12 == -1)
            {
              goto LABEL_9;
            }
          }
        }

        *v12 = v13;
      }

      ++v10;
    }

    while (v10 != &v4[v7]);
  }

  if ((v5 & 1) == 0)
  {
    free(v4);
  }

  *(this + 12) = (*(this + 3) - *(this + 4));
  *(this + 20) = 0;
}

uint64_t llvm::SmallPtrSetImplBase::doFind(llvm::SmallPtrSetImplBase *this, const void *a2)
{
  v2 = *(this + 2) - 1;
  v3 = *this;
  v4 = ((a2 >> 4) ^ (a2 >> 9)) & v2;
  v5 = *(*this + 8 * v4);
  if (v5 == a2)
  {
    return v3 + 8 * v4;
  }

  v7 = 1;
  while (v5 != -1)
  {
    v8 = v4 + v7++;
    v4 = v8 & v2;
    v5 = *(v3 + 8 * v4);
    if (v5 == a2)
    {
      return v3 + 8 * v4;
    }
  }

  return 0;
}

void *llvm::SmallVectorBase<unsigned int>::mallocForGrow(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (HIDWORD(a3))
  {
    sub_100038E40(a3);
  }

  v5 = *(a1 + 12);
  if (v5 == -1)
  {
    sub_100038EF8(0xFFFFFFFFuLL);
  }

  v9 = 2 * v5;
  v10 = v5 < 0;
  v11 = 0xFFFFFFFFLL;
  if (!v10)
  {
    v11 = v9 + 1;
  }

  if (((2 * *(a1 + 12)) | 1uLL) < a3)
  {
    v11 = a3;
  }

  *a5 = v11;
  v12 = v11 * a4;
  result = malloc_type_malloc(v11 * a4, 0x3C0F72FBuLL);
  if (!result)
  {
    if (v12)
    {
      goto LABEL_15;
    }

    result = malloc_type_malloc(1uLL, 0x3C0F72FBuLL);
    if (!result)
    {
      goto LABEL_15;
    }
  }

  if (result != a2)
  {
    return result;
  }

  v14 = result;
  v15 = *a5 * a4;
  v16 = malloc_type_malloc(v15, 0x3C0F72FBuLL);
  if (!v16 && (v15 || (v16 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) == 0))
  {
LABEL_15:
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  v17 = v16;
  free(v14);
  return v17;
}

{
  return llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a2, a3, a4, a5);
}

void llvm::SmallVectorBase<unsigned int>::grow_pod(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  if (HIDWORD(a3))
  {
    sub_100038E40(a3);
  }

  v5 = *(a1 + 12);
  if (v5 == -1)
  {
    sub_100038EF8(0xFFFFFFFFuLL);
  }

  v8 = 2 * v5;
  v9 = v5 < 0;
  v10 = 0xFFFFFFFFLL;
  if (!v9)
  {
    v10 = v8 + 1;
  }

  if (((2 * *(a1 + 12)) | 1uLL) >= a3)
  {
    v11 = v10;
  }

  else
  {
    v11 = a3;
  }

  v12 = *a1;
  v13 = v11 * a4;
  if (*a1 == a2)
  {
    v16 = malloc_type_malloc(v11 * a4, 0x3C0F72FBuLL);
    if (v16 || !v13 && (v16 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) != 0)
    {
      v15 = v16;
      if (v16 == a2)
      {
        v17 = malloc_type_malloc(v13, 0x3C0F72FBuLL);
        if (!v17)
        {
          if (v13)
          {
            goto LABEL_30;
          }

          v17 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL);
          if (!v17)
          {
            goto LABEL_30;
          }
        }

        v18 = v17;
        free(v15);
        v15 = v18;
      }

      memcpy(v15, *a1, *(a1 + 8) * a4);
      goto LABEL_29;
    }

LABEL_30:
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  v14 = malloc_type_realloc(v12, v11 * a4, 0xF4063A16uLL);
  if (!v14)
  {
    if (v13)
    {
      goto LABEL_30;
    }

    v14 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL);
    if (!v14)
    {
      goto LABEL_30;
    }
  }

  if (v14 != a2)
  {
    v15 = v14;
    goto LABEL_29;
  }

  v19 = v14;
  v20 = *(a1 + 8);
  v21 = malloc_type_malloc(v13, 0x3C0F72FBuLL);
  if (!v21)
  {
    if (v13)
    {
      goto LABEL_30;
    }

    v21 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL);
    if (!v21)
    {
      goto LABEL_30;
    }
  }

  v15 = v21;
  if (v20)
  {
    memcpy(v21, v19, v20 * a4);
  }

  free(v19);
LABEL_29:
  *a1 = v15;
  *(a1 + 12) = v11;
}

{
  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a2, a3, a4);
}

void llvm::SmallVectorBase<unsigned long long>::grow_pod(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4 == -1)
  {
    sub_100038EF8(0xFFFFFFFFFFFFFFFFLL);
  }

  if (((2 * v4) | 1uLL) > a3)
  {
    v8 = 2 * v4 + 1;
  }

  else
  {
    v8 = a3;
  }

  v9 = *a1;
  v10 = v8 * a4;
  if (v9 == a2)
  {
    v13 = malloc_type_malloc(v8 * a4, 0x3C0F72FBuLL);
    if (v13 || !v10 && (v13 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) != 0)
    {
      v12 = v13;
      if (v13 == a2)
      {
        v14 = malloc_type_malloc(v10, 0x3C0F72FBuLL);
        if (!v14)
        {
          if (v10)
          {
            goto LABEL_27;
          }

          v14 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL);
          if (!v14)
          {
            goto LABEL_27;
          }
        }

        v15 = v14;
        free(v12);
        v12 = v15;
      }

      memcpy(v12, *a1, *(a1 + 8) * a4);
      goto LABEL_26;
    }

LABEL_27:
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  v11 = malloc_type_realloc(v9, v8 * a4, 0xF4063A16uLL);
  if (!v11)
  {
    if (v10)
    {
      goto LABEL_27;
    }

    v11 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL);
    if (!v11)
    {
      goto LABEL_27;
    }
  }

  if (v11 != a2)
  {
    v12 = v11;
    goto LABEL_26;
  }

  v16 = v11;
  v17 = *(a1 + 8);
  v18 = malloc_type_malloc(v10, 0x3C0F72FBuLL);
  if (!v18)
  {
    if (v10)
    {
      goto LABEL_27;
    }

    v18 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL);
    if (!v18)
    {
      goto LABEL_27;
    }
  }

  v12 = v18;
  if (v17)
  {
    memcpy(v18, v16, v17 * a4);
  }

  free(v16);
LABEL_26:
  *a1 = v12;
  *(a1 + 16) = v8;
}

{
  llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, a2, a3, a4);
}

void sub_100038E40(unint64_t a1)
{
  std::to_string(&v4, a1);
  sub_100038FDC("SmallVector unable to grow. Requested capacity (", &v4, &v5);
  sub_100038F4C(&v5, ") is larger than maximum value for size type (", &v6);
  std::to_string(&v3, 0xFFFFFFFFuLL);
  sub_100038F88(&v6, &v3, &v1);
  sub_100038F4C(&v1, ")", &v7);
  std::string::~string(&v1);
  std::string::~string(&v3);
  std::string::~string(&v6);
  std::string::~string(&v5);
  std::string::~string(&v4);
  v2 = 260;
  v1.__r_.__value_.__r.__words[0] = &v7;
  llvm::report_fatal_error(&v1, 1);
}

void sub_100038EF8(unint64_t a1)
{
  std::to_string(&v1, a1);
  sub_100038FDC("SmallVector capacity unable to grow. Already at maximum size ", &v1, &v3);
  std::string::~string(&v1);
  v2 = 260;
  v1.__r_.__value_.__r.__words[0] = &v3;
  llvm::report_fatal_error(&v1, 1);
}

__n128 sub_100038F4C@<Q0>(std::string *a1@<X0>, const std::string::value_type *a2@<X1>, std::string *a3@<X8>)
{
  v4 = std::string::append(a1, a2);
  result = *v4;
  *a3 = *v4->n128_u8;
  v4->n128_u64[0] = 0;
  v4->n128_u64[1] = 0;
  v4[1].n128_u64[0] = 0;
  return result;
}

__n128 sub_100038F88@<Q0>(std::string *a1@<X0>, const std::string::value_type *a2@<X1>, std::string *a3@<X8>)
{
  v4 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::string::append(a1, a2, v5);
  result = *v6;
  *a3 = *v6->n128_u8;
  v6->n128_u64[0] = 0;
  v6->n128_u64[1] = 0;
  v6[1].n128_u64[0] = 0;
  return result;
}

__n128 sub_100038FDC@<Q0>(std::string::value_type *__s@<X0>, std::string *this@<X1>, std::string *a3@<X8>)
{
  v4 = std::string::insert(this, 0, __s);
  result = *v4;
  *a3 = *v4->n128_u8;
  v4->n128_u64[0] = 0;
  v4->n128_u64[1] = 0;
  v4[1].n128_u64[0] = 0;
  return result;
}

double llvm::SourceMgr::SourceMgr(llvm::SourceMgr *this)
{
  *(this + 8) = 0;
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

void llvm::SourceMgr::~SourceMgr(llvm::SourceMgr *this)
{
  v2 = *(this + 8);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    v4 = *(this + 4);
    v5 = *(this + 3);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v3);
      v5 = *(this + 3);
    }

    *(this + 4) = v3;
    operator delete(v5);
  }

  v7 = *this;
  if (*this)
  {
    v8 = *(this + 1);
    v9 = *this;
    if (v8 != v7)
    {
      do
      {
        v10 = *(v8 - 2);
        if (v10)
        {
          v11 = *v10;
          if (*v10)
          {
            *(v10 + 8) = v11;
            operator delete(v11);
          }

          operator delete();
        }

        v13 = *(v8 - 3);
        v8 -= 3;
        v12 = v13;
        *v8 = 0;
        if (v13)
        {
          (*(*v12 + 8))(v12);
        }
      }

      while (v8 != v7);
      v9 = *this;
    }

    *(this + 1) = v7;
    operator delete(v9);
  }
}

uint64_t llvm::SourceMgr::SrcBuffer::getLineNumber(llvm::SourceMgr::SrcBuffer *this, const char *a2)
{
  v2 = a2;
  v4 = *(*this + 8);
  v5 = *(*this + 16) - v4;
  if (v5 <= 0xFF)
  {
    v7 = sub_100039B6C(this + 8);
    v8 = *v7;
    v9 = v7[1] - *v7;
    if (v9)
    {
      v10 = *v7;
      do
      {
        v11 = v9 >> 1;
        v12 = &v10[v9 >> 1];
        v14 = *v12;
        v13 = v12 + 1;
        v9 += ~(v9 >> 1);
        if (v14 < (v2 - *(*this + 8)))
        {
          v10 = v13;
        }

        else
        {
          v9 = v11;
        }
      }

      while (v9);
      LODWORD(v8) = v10 - v8;
    }

    else
    {
      LODWORD(v8) = 0;
    }
  }

  else if (v5 >> 16)
  {
    v6 = *(this + 1);
    if (HIDWORD(v5))
    {
      if (!v6)
      {
        operator new();
      }

      v23 = v6[1];
      if (v23 != *v6)
      {
        v24 = &a2[-v4];
        v25 = (v23 - *v6) >> 3;
        v23 = *v6;
        do
        {
          v26 = v25 >> 1;
          v27 = &v23[v25 >> 1];
          v29 = *v27;
          v28 = v27 + 1;
          v25 += ~(v25 >> 1);
          if (v29 < v24)
          {
            v23 = v28;
          }

          else
          {
            v25 = v26;
          }
        }

        while (v25);
      }

      v8 = (v23 - *v6) >> 3;
    }

    else
    {
      if (!v6)
      {
        operator new();
      }

      v30 = v6[1];
      if (v30 != *v6)
      {
        v31 = a2 - v4;
        v32 = (v30 - *v6) >> 2;
        v30 = *v6;
        do
        {
          v33 = v32 >> 1;
          v34 = &v30[v32 >> 1];
          v36 = *v34;
          v35 = v34 + 1;
          v32 += ~(v32 >> 1);
          if (v36 < v31)
          {
            v30 = v35;
          }

          else
          {
            v32 = v33;
          }
        }

        while (v32);
      }

      v8 = (v30 - *v6) >> 2;
    }
  }

  else
  {
    v15 = *(this + 1);
    if (!v15)
    {
      operator new();
    }

    v16 = v15[1];
    if (v16 != *v15)
    {
      v17 = (a2 - v4);
      v18 = v16 - *v15;
      v16 = *v15;
      do
      {
        v19 = v18 >> 1;
        v20 = &v16[v18 >> 1];
        v22 = *v20;
        v21 = v20 + 1;
        v18 += ~(v18 >> 1);
        if (v22 < v17)
        {
          v16 = v21;
        }

        else
        {
          v18 = v19;
        }
      }

      while (v18);
    }

    v8 = (v16 - *v15) >> 1;
  }

  return (v8 + 1);
}

uint64_t llvm::SourceMgr::SrcBuffer::getPointerForLineNumber(llvm::SourceMgr::SrcBuffer *this, unsigned int a2)
{
  v4 = *this;
  result = *(*this + 8);
  v6 = *(v4 + 16) - result;
  if (v6 <= 0xFF)
  {
    v9 = sub_100039B6C(this + 8);
    v10 = a2 - 1;
    if (!a2)
    {
      v10 = 0;
    }

    result = *(*this + 8);
    if (a2 >= 2)
    {
      v12 = v9;
      v11 = *v9;
      if (v12[1] - v11 < v10)
      {
        return 0;
      }

      v14 = *(v11 + v10 - 1);
      goto LABEL_36;
    }
  }

  else if (v6 >> 16)
  {
    v7 = *(this + 1);
    if (HIDWORD(v6))
    {
      if (!v7)
      {
        operator new();
      }

      LODWORD(v8) = a2 - 1;
      if (a2)
      {
        v8 = v8;
      }

      else
      {
        v8 = 0;
      }

      if (a2 < 2)
      {
        return result;
      }

      if (v8 > (v7[1] - *v7) >> 3)
      {
        return 0;
      }

      v14 = *(*v7 + 8 * (v8 - 1));
LABEL_36:
      result += v14 + 1;
      return result;
    }

    if (!v7)
    {
      operator new();
    }

    LODWORD(v16) = a2 - 1;
    if (a2)
    {
      v16 = v16;
    }

    else
    {
      v16 = 0;
    }

    if (a2 >= 2)
    {
      if (v16 > (v7[1] - *v7) >> 2)
      {
        return 0;
      }

      v14 = *(*v7 + 4 * (v16 - 1));
      goto LABEL_36;
    }
  }

  else
  {
    v13 = *(this + 1);
    if (!v13)
    {
      operator new();
    }

    LODWORD(v15) = a2 - 1;
    if (a2)
    {
      v15 = v15;
    }

    else
    {
      v15 = 0;
    }

    if (a2 >= 2)
    {
      if (v15 > (v13[1] - *v13) >> 1)
      {
        return 0;
      }

      v14 = *(*v13 + 2 * (v15 - 1));
      goto LABEL_36;
    }
  }

  return result;
}

void *llvm::SourceMgr::SrcBuffer::SrcBuffer(void *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[2];
  result[1] = a2[1];
  result[2] = v3;
  *a2 = 0;
  a2[1] = 0;
  *result = v2;
  return result;
}

void llvm::SourceMgr::SrcBuffer::~SrcBuffer(llvm::SourceMgr::SrcBuffer *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    operator delete();
  }

  v4 = *this;
  *this = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }
}

uint64_t sub_10003987C(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_10002BC08();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  v19 = a1;
  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_10002BC08();
  }

  v6 = 24 * v2;
  __p = 0;
  v16 = v6;
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  v17 = 24 * v2 + 24;
  v18 = 0;
  sub_100039A28(a1, &__p);
  v7 = *(a1 + 8);
  v8 = v16;
  for (i = v17; v17 != v8; i = v17)
  {
    v10 = (i - 24);
    v17 = i - 24;
    v11 = *(i - 16);
    if (v11)
    {
      v12 = *v11;
      if (*v11)
      {
        *(v11 + 8) = v12;
        operator delete(v12);
      }

      operator delete();
    }

    v13 = *v10;
    *v10 = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

uint64_t **sub_100039A28(uint64_t **result, void *a2)
{
  v3 = result;
  v4 = a2[1];
  v5 = *result;
  v6 = result[1];
  v7 = (v4 - (v6 - *result));
  if (v6 != *result)
  {
    v8 = (v4 - 8 * (v6 - *result) + 16);
    v9 = *result;
    do
    {
      v10 = *v9;
      v11 = v9[2];
      *(v8 - 1) = v9[1];
      *v8 = v11;
      *v9 = 0;
      v9[1] = 0;
      v9 += 3;
      *(v8 - 2) = v10;
      v8 += 3;
    }

    while (v9 != v6);
    do
    {
      v12 = v5[1];
      if (v12)
      {
        v13 = *v12;
        if (*v12)
        {
          *(v12 + 8) = v13;
          operator delete(v13);
        }

        operator delete();
      }

      result = *v5;
      *v5 = 0;
      if (result)
      {
        result = ((*result)[1])(result);
      }

      v5 += 3;
    }

    while (v5 != v6);
    v5 = *v3;
  }

  a2[1] = v7;
  *v3 = v7;
  v3[1] = v5;
  a2[1] = v5;
  v14 = v3[1];
  v3[1] = a2[2];
  a2[2] = v14;
  v15 = v3[2];
  v3[2] = a2[3];
  a2[3] = v15;
  *a2 = a2[1];
  return result;
}

uint64_t sub_100039B6C(uint64_t a1)
{
  if (!*a1)
  {
    operator new();
  }

  return *a1;
}

void sub_100039CC0(uint64_t a1, _WORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 1;
  if (v7 >> 1 <= -2)
  {
    sub_10002BC08();
  }

  v9 = v3 - v6;
  if (v9 <= v8 + 1)
  {
    v10 = v8 + 1;
  }

  else
  {
    v10 = v9;
  }

  if (v9 >= 0x7FFFFFFFFFFFFFFELL)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v10;
  }

  if (v11)
  {
    if ((v11 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10002BC08();
  }

  *(2 * v8) = *a2;
  v5 = 2 * v8 + 2;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void sub_100039DD0(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 2;
  v9 = (v7 >> 2) + 1;
  if (v9 >> 62)
  {
    sub_10002BC08();
  }

  v10 = v3 - v6;
  if (v10 >> 1 > v9)
  {
    v9 = v10 >> 1;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v11 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 62))
    {
      operator new();
    }

    sub_10002BC08();
  }

  *(4 * v8) = *a2;
  v5 = 4 * v8 + 4;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void sub_100039EE8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_10002BC08();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_10002BC08();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

unint64_t llvm::SplitString(uint64_t a1, unint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5)
{
  v23 = a1;
  v24 = a2;
  first_not_of = llvm::StringRef::find_first_not_of(&v23, a4, a5, 0);
  result = llvm::StringRef::find_first_of(&v23, a4, a5, first_not_of);
  if (v24 >= first_not_of)
  {
    v10 = first_not_of;
  }

  else
  {
    v10 = v24;
  }

  if (v10 <= result)
  {
    v11 = result;
  }

  else
  {
    v11 = first_not_of;
  }

  if (v11 >= v24)
  {
    v11 = v24;
  }

  v12 = v11 - v10;
  if (v11 != v10)
  {
    v13 = v23 + v10;
    if (v24 >= result)
    {
      v14 = result;
    }

    else
    {
      v14 = v24;
    }

    v15 = v23 + v14;
    v16 = v24 - v14;
    do
    {
      v17 = *(a3 + 8);
      if (v17 >= *(a3 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v17 + 1, 16);
        v17 = *(a3 + 8);
      }

      v18 = (*a3 + 16 * v17);
      *v18 = v13;
      v18[1] = v12;
      ++*(a3 + 8);
      v23 = v15;
      v24 = v16;
      v19 = llvm::StringRef::find_first_not_of(&v23, a4, a5, 0);
      result = llvm::StringRef::find_first_of(&v23, a4, a5, v19);
      if (v24 >= v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = v24;
      }

      if (v20 <= result)
      {
        v21 = result;
      }

      else
      {
        v21 = v19;
      }

      if (v21 >= v24)
      {
        v21 = v24;
      }

      v13 = v23 + v20;
      if (v24 >= result)
      {
        v22 = result;
      }

      else
      {
        v22 = v24;
      }

      v15 = v23 + v22;
      v16 = v24 - v22;
      v12 = v21 - v20;
    }

    while (v21 != v20);
  }

  return result;
}

llvm::raw_ostream *llvm::printEscapedString(llvm::raw_ostream *result, uint64_t a2, llvm::raw_ostream *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = result;
    do
    {
      v7 = *v5;
      if (v7 == 92)
      {
        v8 = *(a3 + 4);
        if (v8 >= *(a3 + 3))
        {
          result = llvm::raw_ostream::write(a3, 92);
          v9 = *(result + 4);
          if (v9 < *(result + 3))
          {
LABEL_19:
            *(result + 4) = v9 + 1;
            *v9 = 92;
            goto LABEL_5;
          }
        }

        else
        {
          *(a3 + 4) = v8 + 1;
          *v8 = 92;
          result = a3;
          v9 = *(a3 + 4);
          if (v9 < *(a3 + 3))
          {
            goto LABEL_19;
          }
        }

        v6 = 92;
        goto LABEL_4;
      }

      v11 = *(a3 + 3);
      v10 = *(a3 + 4);
      if (v7 == 34 || (v7 - 32) > 0x5Eu)
      {
        if (v10 >= v11)
        {
          result = llvm::raw_ostream::write(a3, 92);
          v12 = a0123456789abcd_3[v7 >> 4];
          v13 = *(result + 4);
          if (v13 < *(result + 3))
          {
LABEL_21:
            *(result + 4) = v13 + 1;
            *v13 = v12;
            v6 = a0123456789abcd_3[v7 & 0xF];
            v14 = *(result + 4);
            if (v14 < *(result + 3))
            {
LABEL_22:
              *(result + 4) = v14 + 1;
              *v14 = v6;
              goto LABEL_5;
            }

            goto LABEL_4;
          }
        }

        else
        {
          *(a3 + 4) = v10 + 1;
          *v10 = 92;
          result = a3;
          v12 = a0123456789abcd_3[v7 >> 4];
          v13 = *(a3 + 4);
          if (v13 < *(a3 + 3))
          {
            goto LABEL_21;
          }
        }

        result = llvm::raw_ostream::write(result, v12);
        v6 = a0123456789abcd_3[v7 & 0xF];
        v14 = *(result + 4);
        if (v14 < *(result + 3))
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v10 < v11)
        {
          *(a3 + 4) = v10 + 1;
          *v10 = v7;
          goto LABEL_5;
        }

        result = a3;
        v6 = *v5;
      }

LABEL_4:
      result = llvm::raw_ostream::write(result, v6);
LABEL_5:
      ++v5;
      --v4;
    }

    while (v4);
  }

  return result;
}

void *sub_10003A314(int a1)
{
  v2 = a1 + 1;
  result = malloc_type_calloc((a1 + 1), 0xCuLL, 0x17B874E6uLL);
  if (!result && (v2 || (result = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) == 0))
  {
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  result[a1] = 2;
  return result;
}

uint64_t llvm::StringMapImpl::LookupBucketFor(uint64_t a1, void *__s1, size_t __n, unsigned int a4)
{
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = *a1;
    v10 = v8 - 1;
    result = (v8 - 1) & a4;
    v12 = *a1 + 8 * v8 + 8;
    if (__n)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(a1 + 12) = 0;
    *(a1 + 16) = 0;
    v18 = malloc_type_calloc(0x11uLL, 0xCuLL, 0x17B874E6uLL);
    if (!v18)
    {
      llvm::report_bad_alloc_error("Allocation failed", 1);
    }

    v9 = v18;
    v18[16] = 2;
    *a1 = v18;
    *(a1 + 8) = 16;
    v10 = 15;
    result = a4 & 0xF;
    v12 = (v9 + 17);
    if (__n)
    {
LABEL_3:
      v13 = 1;
      v14 = 0xFFFFFFFFLL;
      v15 = v9[result];
      i = result;
      if (v15)
      {
        while (1)
        {
          if (v15 == -8)
          {
            if (v14 == -1)
            {
              v14 = result;
            }

            else
            {
              v14 = v14;
            }
          }

          else if (*(v12 + 4 * i) == a4 && __n == *v15)
          {
            v28 = result;
            v26 = v12;
            v27 = v9;
            v24 = v14;
            v25 = v10;
            v23 = v13;
            v21 = memcmp(__s1, v15 + *(a1 + 20), __n);
            v13 = v23;
            v10 = v25;
            v14 = v24;
            v12 = v26;
            v9 = v27;
            v22 = v21;
            result = v28;
            if (!v22)
            {
              return result;
            }
          }

          LODWORD(result) = v10 & (result + v13++);
          v15 = v9[result];
          i = result;
          if (!v15)
          {
            goto LABEL_4;
          }
        }
      }

      goto LABEL_4;
    }
  }

  v19 = 1;
  LODWORD(v14) = -1;
  v20 = v9[result];
  for (i = result; v20; i = result)
  {
    if (v20 == -8)
    {
      if (v14 == -1)
      {
        LODWORD(v14) = result;
      }
    }

    else if (*(v12 + 4 * i) == a4 && !*v20)
    {
      return result;
    }

    result = v10 & (result + v19++);
    v20 = v9[result];
  }

LABEL_4:
  v17 = v14;
  if (v14 == -1)
  {
    v17 = i;
    result = result;
  }

  else
  {
    result = v14;
  }

  *(v12 + 4 * v17) = a4;
  return result;
}

uint64_t llvm::StringMapImpl::FindKey(uint64_t *a1, const void *a2, size_t a3, unsigned int a4)
{
  v4 = *(a1 + 2);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = a1;
  v6 = v4 - 1;
  result = (v4 - 1) & a4;
  v8 = *v5;
  v9 = *v5 + 8 * v4 + 8;
  if (a3)
  {
    v10 = 1;
    v11 = *(v8 + 8 * result);
    if (!v11)
    {
      return 0xFFFFFFFFLL;
    }

    while (1)
    {
      if (v11 != -8 && *(v9 + 4 * result) == a4 && a3 == *v11)
      {
        v23 = a3;
        v24 = a2;
        v21 = a4;
        v22 = result;
        v18 = v5;
        v20 = v6;
        v17 = v8;
        v19 = v9;
        v16 = v10;
        v14 = memcmp(a2, v11 + *(v5 + 5), a3);
        v10 = v16;
        v5 = v18;
        v9 = v19;
        v8 = v17;
        v6 = v20;
        a4 = v21;
        a3 = v23;
        a2 = v24;
        v15 = v14;
        result = v22;
        if (!v15)
        {
          break;
        }
      }

      LODWORD(result) = (result + v10++) & v6;
      v11 = *(v8 + 8 * result);
      if (!v11)
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  else
  {
    v12 = 1;
    v13 = *(v8 + 8 * result);
    if (!v13)
    {
      return 0xFFFFFFFFLL;
    }

    while (v13 == -8 || *(v9 + 4 * result) != a4 || *v13)
    {
      result = (result + v12++) & v6;
      v13 = *(v8 + 8 * result);
      if (!v13)
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

int32x2_t llvm::StringMapImpl::RemoveKey(uint64_t *a1, int8x16_t *a2, unint64_t a3)
{
  v6 = llvm::xxh3_64bits(a2, a3);
  v8 = *(a1 + 2);
  if (v8)
  {
    v9 = v8 - 1;
    v10 = (v8 - 1) & v6;
    v11 = *a1;
    v12 = *a1 + 8 * v8 + 8;
    if (a3)
    {
      v13 = 1;
      v14 = *(v11 + 8 * v10);
      if (!v14)
      {
        return result;
      }

      while (1)
      {
        if (v14 != -8 && *(v12 + 4 * v10) == v6 && a3 == *v14)
        {
          v23 = v6;
          v24 = v11;
          v25 = v10;
          v21 = v13;
          v22 = v9;
          v20 = v12;
          v15 = memcmp(a2, v14 + *(a1 + 5), a3);
          v13 = v21;
          v9 = v22;
          v12 = v20;
          v10 = v25;
          v16 = v15;
          v6 = v23;
          v11 = v24;
          if (!v16)
          {
            break;
          }
        }

        v10 = (v10 + v13++) & v9;
        v14 = *(v11 + 8 * v10);
        if (!v14)
        {
          return result;
        }
      }
    }

    else
    {
      v17 = 1;
      v18 = *(v11 + 8 * v10);
      if (!v18)
      {
        return result;
      }

      while (v18 == -8 || *(v12 + 4 * v10) != v6 || *v18)
      {
        v10 = (v10 + v17++) & v9;
        v18 = *(v11 + 8 * v10);
        if (!v18)
        {
          return result;
        }
      }

      v25 = v10;
      v24 = *a1;
    }

    if (v25 != -1)
    {
      v19 = *(v24 + 8 * v25);
      *(v24 + 8 * v25) = -8;
      result = vadd_s32(*(a1 + 12), 0x1FFFFFFFFLL);
      *(a1 + 12) = result;
    }
  }

  return result;
}

uint64_t llvm::StringMapImpl::RehashTable(llvm::StringMapImpl *this, uint64_t a2)
{
  v2 = a2;
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (3 * v4 < 4 * v3)
  {
    v6 = this;
    v4 *= 2;
  }

  else
  {
    if (v4 - (v3 + *(this + 4)) > v4 >> 3)
    {
      return a2;
    }

    v6 = this;
  }

  v7 = sub_10003A314(v4);
  v8 = *v6;
  v9 = *(v6 + 2);
  if (v9)
  {
    v10 = 0;
    v11 = v4 - 1;
    v12 = v2;
    do
    {
      v13 = v8[v10];
      if (v13 != -8 && v13 != 0)
      {
        v15 = *(&v8[v9 + 1] + v10);
        v16 = v15 & v11;
        if (v7[v16])
        {
          v17 = 1;
          do
          {
            v18 = v16 + v17++;
            v16 = v18 & v11;
          }

          while (v7[v16]);
        }

        v7[v16] = v13;
        *(&v7[v4 + 1] + v16) = v15;
        if (v10 == v12)
        {
          v2 = v16;
        }

        else
        {
          v2 = v2;
        }
      }

      ++v10;
    }

    while (v10 != v9);
  }

  free(v8);
  *v6 = v7;
  *(v6 + 2) = v4;
  *(v6 + 4) = 0;
  return v2;
}

void *llvm::StringSaver::save(void ***a1, const void *a2, size_t a3)
{
  v4 = *a1;
  v5 = a3 + 1;
  v4[10] = v4[10] + v5;
  v6 = *v4;
  v7 = *v4 + v5;
  if (*v4)
  {
    v8 = v7 > v4[1];
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v10 = a2;
    v11 = sub_10003A984(v4, v5, v5, 0);
    a2 = v10;
    v6 = v11;
    if (!a3)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  *v4 = v7;
  if (a3)
  {
LABEL_6:
    memcpy(v6, a2, a3);
  }

LABEL_7:
  *(v6 + a3) = 0;
  return v6;
}

uint64_t sub_10003A984(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = 1 << a4;
  v6 = a3 + (1 << a4);
  v7 = v6 - 1;
  if ((v6 - 1) <= 0x1000)
  {
    v13 = *(a1 + 24) >> 7;
    if (v13 >= 0x1E)
    {
      LOBYTE(v13) = 30;
    }

    v14 = 4096 << v13;
    buffer = llvm::allocate_buffer((4096 << v13), 8uLL);
    v16 = *(a1 + 24);
    if (v16 >= *(a1 + 28))
    {
      v19 = buffer;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v16 + 1, 8);
      buffer = v19;
      LODWORD(v16) = *(a1 + 24);
    }

    *(*(a1 + 16) + 8 * v16) = buffer;
    ++*(a1 + 24);
    v17 = &buffer[v14];
    result = &buffer[v5 - 1] & -v5;
    *a1 = result + a3;
    *(a1 + 8) = v17;
  }

  else
  {
    v8 = llvm::allocate_buffer((v6 - 1), 8uLL);
    v9 = *(a1 + 72);
    if (v9 >= *(a1 + 76))
    {
      v18 = v8;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 64, (a1 + 80), v9 + 1, 16);
      v8 = v18;
      LODWORD(v9) = *(a1 + 72);
    }

    v10 = (*(a1 + 64) + 16 * v9);
    *v10 = v8;
    v10[1] = v7;
    ++*(a1 + 72);
    return (v8 + v5 - 1) & -v5;
  }

  return result;
}

BOOL llvm::StringRef::starts_with_insensitive(unsigned __int8 **a1, unsigned __int8 *a2, unint64_t a3)
{
  if (a1[1] < a3)
  {
    return 0;
  }

  if (!a3)
  {
    return 1;
  }

  v4 = *a1;
  v5 = a3 - 1;
  do
  {
    v7 = *v4++;
    v6 = v7;
    v8 = v7 + 32;
    if ((v7 - 65) >= 0x1A)
    {
      v9 = v6;
    }

    else
    {
      v9 = v8;
    }

    v11 = *a2++;
    v10 = v11;
    v12 = v11 + 32;
    if ((v11 - 65) >= 0x1A)
    {
      v13 = v10;
    }

    else
    {
      v13 = v12;
    }

    v15 = v5-- != 0;
    result = v9 == v13;
  }

  while (v9 == v13 && v15);
  return result;
}

uint64_t llvm::StringRef::find(uint64_t *a1, unsigned __int8 *a2, size_t a3, unint64_t a4)
{
  v4 = a1[1];
  v5 = v4 >= a4;
  v6 = v4 - a4;
  if (!v5)
  {
    return -1;
  }

  if (!a3)
  {
    return a4;
  }

  if (v6 < a3)
  {
    return -1;
  }

  v8 = *a1;
  v9 = (*a1 + a4);
  v10 = a3 - 1;
  if (a3 == 1)
  {
    v11 = memchr(v9, *a2, v6);
    if (v11)
    {
      return v11 - v8;
    }

    else
    {
      return -1;
    }
  }

  v12 = &v9[v6 - a3];
  v13 = a3 - 2;
  if (a3 == 2)
  {
    result = -1;
    while (*(v8 + a4) != *a2)
    {
      ++a4;
      if (v8 + a4 - 1 >= v12)
      {
        return result;
      }
    }

    return a4;
  }

  if (a3 > 0xFF || v6 <= 0xF)
  {
    while (1)
    {
      v26 = a4;
      v27 = a2;
      v28 = a3;
      if (!memcmp((v8 + a4), a2, a3))
      {
        break;
      }

      a4 = v26 + 1;
      result = -1;
      a2 = v27;
      a3 = v28;
      if (v8 + v26 >= v12)
      {
        return result;
      }
    }

    return v26;
  }

  else
  {
    v14 = v12 + 1;
    v30 = vdupq_n_s8(a3);
    v31 = v30;
    v29[12] = v30;
    v29[13] = v30;
    v29[10] = v30;
    v29[11] = v30;
    v29[8] = v30;
    v29[9] = v30;
    v29[6] = v30;
    v29[7] = v30;
    v29[4] = v30;
    v29[5] = v30;
    v29[2] = v30;
    v29[3] = v30;
    v15 = v10 & 0xFFFFFFFFFFFFFFFELL;
    v16 = a2 + 1;
    v17 = v10 & 0xFFFFFFFFFFFFFFFELL;
    v29[0] = v30;
    v29[1] = v30;
    do
    {
      *(v29 + *(v16 - 1)) = v13 + 1;
      v18 = *v16;
      v16 += 2;
      *(v29 + v18) = v13;
      v13 -= 2;
      v17 -= 2;
    }

    while (v17);
    if (v10 != v15)
    {
      v19 = v15 + 1;
      do
      {
        *(v29 + a2[v15]) = v10 - v15;
        v15 = v19++;
      }

      while (v10 != v15);
    }

    v20 = a2[v10];
    while (1)
    {
      v21 = v9[v10];
      if (v21 == v20)
      {
        v22 = v9;
        v23 = a2;
        v24 = memcmp(v9, a2, v10);
        a2 = v23;
        v25 = v24;
        v9 = v22;
        if (!v25)
        {
          break;
        }
      }

      v9 += *(v29 + v21);
      if (v9 >= v14)
      {
        return -1;
      }
    }

    return &v22[-v8];
  }
}

uint64_t llvm::StringRef::find_first_of(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v7 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  v5 = a1[1];
  if (v5 <= a4)
  {
    return -1;
  }

  while (((*(&v7 + ((*(*a1 + a4) >> 3) & 0x18)) >> *(*a1 + a4)) & 1) == 0)
  {
    if (v5 == ++a4)
    {
      return -1;
    }
  }

  return a4;
}

uint64_t llvm::StringRef::find_first_not_of(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v7 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  v5 = a1[1];
  if (v5 <= a4)
  {
    return -1;
  }

  while (((*(&v7 + ((*(*a1 + a4) >> 3) & 0x18)) >> *(*a1 + a4)) & 1) != 0)
  {
    if (v5 == ++a4)
    {
      return -1;
    }
  }

  return a4;
}

uint64_t llvm::StringRef::find_last_of(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v10 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  if (a1[1] >= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a1[1];
  }

  while (v5)
  {
    v6 = v5 - 1;
    v7 = *(*a1 + v5 - 1);
    v8 = *(&v10 + ((v7 >> 3) & 0x18)) >> v7;
    v5 = v6;
    if (v8)
    {
      return v6;
    }
  }

  return -1;
}

uint64_t llvm::StringRef::find_last_not_of(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v10 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  if (a1[1] >= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a1[1];
  }

  while (v5)
  {
    v6 = v5 - 1;
    v7 = *(*a1 + v5 - 1);
    v8 = *(&v10 + ((v7 >> 3) & 0x18)) >> v7;
    v5 = v6;
    if ((v8 & 1) == 0)
    {
      return v6;
    }
  }

  return -1;
}

void llvm::StringRef::split(__int128 *a1, uint64_t a2, unsigned __int8 *a3, size_t a4, int a5, char a6)
{
  v29 = *a1;
  if (a5)
  {
    v8 = a5;
    v11 = *(&v29 + 1);
    if (a6)
    {
      do
      {
        v12 = llvm::StringRef::find(&v29, a3, a4, 0);
        if (v12 == -1)
        {
          break;
        }

        if (v12 >= v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = v12;
        }

        v14 = v29;
        v15 = *(a2 + 8);
        if (v15 >= *(a2 + 12))
        {
          v18 = v12;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v15 + 1, 16);
          v12 = v18;
          v15 = *(a2 + 8);
        }

        v16 = (*a2 + 16 * v15);
        *v16 = v14;
        v16[1] = v13;
        ++*(a2 + 8);
        v17 = v12 + a4;
        if (v11 < v12 + a4)
        {
          v17 = v11;
        }

        v11 -= v17;
        *&v29 = v14 + v17;
        *(&v29 + 1) = v11;
        --v8;
      }

      while (v8);
    }

    else
    {
      do
      {
        v21 = llvm::StringRef::find(&v29, a3, a4, 0);
        if (v21)
        {
          if (v21 == -1)
          {
            break;
          }

          if (v21 >= v11)
          {
            v22 = v11;
          }

          else
          {
            v22 = v21;
          }

          v19 = v29;
          v23 = *(a2 + 8);
          if (v23 >= *(a2 + 12))
          {
            v25 = v21;
            llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v23 + 1, 16);
            v21 = v25;
            v23 = *(a2 + 8);
          }

          v24 = (*a2 + 16 * v23);
          *v24 = v19;
          v24[1] = v22;
          ++*(a2 + 8);
        }

        else
        {
          v19 = v29;
        }

        v20 = v21 + a4;
        if (v11 < v21 + a4)
        {
          v20 = v11;
        }

        v11 -= v20;
        *&v29 = v19 + v20;
        *(&v29 + 1) = v11;
        --v8;
      }

      while (v8);
    }
  }

  else
  {
    v11 = *(&v29 + 1);
  }

  if ((a6 & 1) != 0 || v11)
  {
    v26 = v29;
    v27 = *(a2 + 8);
    if (v27 >= *(a2 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v27 + 1, 16);
      LODWORD(v27) = *(a2 + 8);
    }

    v28 = (*a2 + 16 * v27);
    *v28 = v26;
    v28[1] = v11;
    ++*(a2 + 8);
  }
}