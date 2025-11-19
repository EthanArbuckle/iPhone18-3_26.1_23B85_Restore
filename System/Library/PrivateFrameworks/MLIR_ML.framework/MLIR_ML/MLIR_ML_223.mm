unsigned __int8 **llvm::StringRef::lower@<X0>(unsigned __int8 **this@<X0>, _BYTE *a2@<X8>)
{
  v2 = a2;
  v3 = this[1];
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v4 = *this;
  if (v3 >= 0x17)
  {
    operator new();
  }

  a2[23] = v3;
  if (v3)
  {
    v6 = v4;
    v2 = a2;
    do
    {
      v8 = *v6++;
      v7 = v8;
      v9 = v8 + 32;
      if ((v8 - 65) < 0x1A)
      {
        v7 = v9;
      }

      *v2++ = v7;
    }

    while (v6 != &v4[v3]);
  }

  *v2 = 0;
  return this;
}

unsigned __int8 **llvm::StringRef::upper@<X0>(unsigned __int8 **this@<X0>, _BYTE *a2@<X8>)
{
  v2 = a2;
  v3 = this[1];
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v4 = *this;
  if (v3 >= 0x17)
  {
    operator new();
  }

  a2[23] = v3;
  if (v3)
  {
    v6 = v4;
    v2 = a2;
    do
    {
      v8 = *v6++;
      v7 = v8;
      v9 = v8 - 32;
      if ((v8 - 97) < 0x1A)
      {
        v7 = v9;
      }

      *v2++ = v7;
    }

    while (v6 != &v4[v3]);
  }

  *v2 = 0;
  return this;
}

uint64_t llvm::StringRef::find(uint64_t *a1, unsigned __int8 *a2, size_t a3, unint64_t a4)
{
  v32 = *MEMORY[0x277D85DE8];
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

uint64_t llvm::StringRef::find_insensitive(void *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a1[1];
  if (v4 >= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a1[1];
  }

  v6 = v4 - v5;
  if (v6 < a3)
  {
    return -1;
  }

  if (!a3)
  {
    return a4;
  }

  v8 = *a1 + v5;
  result = -1;
  do
  {
    v9 = 0;
    while (1)
    {
      v10 = *(v8 + v9);
      v11 = *(a2 + v9);
      if ((v10 - 65) < 0x1A)
      {
        v10 += 32;
      }

      if ((v11 - 65) < 0x1A)
      {
        v11 += 32;
      }

      if (v10 != v11)
      {
        break;
      }

      if (a3 == ++v9)
      {
        return a4;
      }
    }

    ++v8;
    --v6;
    ++a4;
  }

  while (v6 >= a3);
  return result;
}

unint64_t llvm::StringRef::rfind_insensitive(llvm::StringRef *this, unsigned __int8 a2, unint64_t a3)
{
  if (*(this + 1) >= a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = *(this + 1);
  }

  if (a2 - 65 >= 0x1A)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 32;
  }

  while (v3)
  {
    v5 = v3 - 1;
    v6 = *(*this + v3 - 1);
    if ((v6 - 65) >= 0x1A)
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 + 32;
    }

    v3 = v5;
    if (v7 == v4)
    {
      return v5;
    }
  }

  return -1;
}

uint64_t llvm::StringRef::rfind(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a1[1];
  v4 = (*a1 + v3);
  if (a3 && v3)
  {
    v7 = *a2;
    v5 = a2 + 1;
    v6 = v7;
    v8 = *a1;
    v9 = (*a1 + v3);
LABEL_4:
    while (2)
    {
      v10 = v8 + 1;
      while (*v8 != v6)
      {
        ++v8;
        ++v10;
        if (v8 == v4)
        {
          goto LABEL_17;
        }
      }

      v11 = a3 - 1;
      v12 = v5;
      while (v11)
      {
        if (v10 == v4)
        {
          goto LABEL_17;
        }

        v14 = *v10++;
        v13 = v14;
        v15 = *v12++;
        --v11;
        if (v13 != v15)
        {
          if (++v8 != v4)
          {
            goto LABEL_4;
          }

          goto LABEL_17;
        }
      }

      v9 = v8++;
      if (v8 != v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = (*a1 + v3);
  }

LABEL_17:
  if (v9 != v4 || a3 == 0)
  {
    return &v9[-*a1];
  }

  else
  {
    return -1;
  }
}

uint64_t llvm::StringRef::rfind_insensitive(uint64_t *a1, unsigned __int8 *a2, unint64_t a3)
{
  v4 = a1[1];
  result = v4 - a3;
  if (v4 < a3)
  {
    return -1;
  }

  v6 = result + 1;
  if (result == -1)
  {
    return -1;
  }

  if (a3)
  {
    v7 = *a1;
    v8 = v4 - a3;
    do
    {
      if (v4 >= v8)
      {
        v9 = v8;
      }

      else
      {
        v9 = v4;
      }

      --v6;
      v10 = v4 - v6;
      if (v4 < v6)
      {
        v10 = 0;
      }

      if (a3 <= v10)
      {
        v11 = (v7 + v9);
        v12 = a2;
        v13 = a3;
        while (1)
        {
          v15 = *v11++;
          v14 = v15;
          v16 = v15 + 32;
          v17 = (v15 - 65) >= 0x1A;
          v19 = *v12++;
          v18 = v19;
          if (!v17)
          {
            v14 = v16;
          }

          if ((v18 - 65) < 0x1A)
          {
            v18 += 32;
          }

          if (v14 != v18)
          {
            break;
          }

          if (!--v13)
          {
            return v6;
          }
        }
      }

      --v8;
      result = -1;
    }

    while (v6);
  }

  return result;
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

unint64_t llvm::StringRef::find_first_not_of(llvm::StringRef *this, unsigned __int8 a2, unint64_t a3)
{
  v3 = *(this + 1);
  if (v3 <= a3)
  {
    return -1;
  }

  while (*(*this + a3) == a2)
  {
    if (v3 == ++a3)
    {
      return -1;
    }
  }

  return a3;
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

unint64_t llvm::StringRef::find_last_not_of(llvm::StringRef *this, unsigned __int8 a2, unint64_t a3)
{
  if (*(this + 1) >= a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = *(this + 1);
  }

  while (v3)
  {
    v4 = v3 - 1;
    v5 = *(*this + v3-- - 1);
    if (v5 != a2)
    {
      return v4;
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

_OWORD *llvm::StringRef::split(_OWORD *result, uint64_t a2, unsigned __int8 *a3, size_t a4, int a5, char a6)
{
  v24 = *result;
  if (a5)
  {
    v8 = a5;
    v11 = *(&v24 + 1);
    if (a6)
    {
      do
      {
        result = llvm::StringRef::find(&v24, a3, a4, 0);
        if (result == -1)
        {
          break;
        }

        if (result >= v11)
        {
          v12 = v11;
        }

        else
        {
          v12 = result;
        }

        v13 = v24;
        v14 = *(a2 + 8);
        if (v14 >= *(a2 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v15 = (*a2 + 16 * v14);
        *v15 = v24;
        v15[1] = v12;
        ++*(a2 + 8);
        v16 = result + a4;
        if (v11 < result + a4)
        {
          v16 = v11;
        }

        v11 -= v16;
        *&v24 = v13 + v16;
        *(&v24 + 1) = v11;
        --v8;
      }

      while (v8);
    }

    else
    {
      do
      {
        result = llvm::StringRef::find(&v24, a3, a4, 0);
        if (result)
        {
          if (result == -1)
          {
            break;
          }

          if (result >= v11)
          {
            v19 = v11;
          }

          else
          {
            v19 = result;
          }

          v17 = v24;
          v20 = *(a2 + 8);
          if (v20 >= *(a2 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v21 = (*a2 + 16 * v20);
          *v21 = v24;
          v21[1] = v19;
          ++*(a2 + 8);
        }

        else
        {
          v17 = v24;
        }

        v18 = result + a4;
        if (v11 < result + a4)
        {
          v18 = v11;
        }

        v11 -= v18;
        *&v24 = v17 + v18;
        *(&v24 + 1) = v11;
        --v8;
      }

      while (v8);
    }
  }

  else
  {
    v11 = *(&v24 + 1);
  }

  if ((a6 & 1) != 0 || v11)
  {
    v22 = *(a2 + 8);
    if (v22 >= *(a2 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v23 = (*a2 + 16 * v22);
    *v23 = v24;
    v23[1] = v11;
    ++*(a2 + 8);
  }

  return result;
}

char *llvm::StringRef::split(char *result, uint64_t a2, int __c, int a4, int a5)
{
  v7 = *result;
  v8 = *(result + 1);
  if (!a4)
  {
LABEL_30:
    if ((a5 & 1) == 0 && !v8)
    {
      return result;
    }

    goto LABEL_35;
  }

  v9 = a4;
  if (a5)
  {
    while (v8)
    {
      result = memchr(v7, __c, v8);
      if (!result)
      {
        goto LABEL_35;
      }

      v11 = result - v7;
      if (result - v7 == -1)
      {
        goto LABEL_35;
      }

      if (v11 >= v8)
      {
        v12 = v8;
      }

      else
      {
        v12 = result - v7;
      }

      v13 = *(a2 + 8);
      if (v13 >= *(a2 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v14 = (*a2 + 16 * v13);
      *v14 = v7;
      v14[1] = v12;
      ++*(a2 + 8);
      if (v8 >= v11 + 1)
      {
        v15 = v11 + 1;
      }

      else
      {
        v15 = v8;
      }

      v7 += v15;
      v8 -= v15;
      if (!--v9)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
    while (v8)
    {
      result = memchr(v7, __c, v8);
      if (!result)
      {
        goto LABEL_35;
      }

      v18 = result - v7;
      if (result - v7 == -1)
      {
        goto LABEL_35;
      }

      if (result != v7)
      {
        if (v18 >= v8)
        {
          v19 = v8;
        }

        else
        {
          v19 = result - v7;
        }

        v20 = *(a2 + 8);
        if (v20 >= *(a2 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v16 = (*a2 + 16 * v20);
        *v16 = v7;
        v16[1] = v19;
        ++*(a2 + 8);
      }

      if (v8 >= v18 + 1)
      {
        v17 = v18 + 1;
      }

      else
      {
        v17 = v8;
      }

      v7 += v17;
      v8 -= v17;
      if (!--v9)
      {
        goto LABEL_30;
      }
    }
  }

  if (a5)
  {
    v8 = 0;
LABEL_35:
    v21 = *(a2 + 8);
    if (v21 >= *(a2 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v22 = (*a2 + 16 * v21);
    *v22 = v7;
    v22[1] = v8;
    ++*(a2 + 8);
  }

  return result;
}

uint64_t llvm::StringRef::count(uint64_t *a1, unsigned __int8 *a2, size_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v6 = llvm::StringRef::find(a1, a2, a3, 0);
  if (v6 == -1)
  {
    return 0;
  }

  v7 = 0;
  do
  {
    ++v7;
    v6 = llvm::StringRef::find(a1, a2, a3, v6 + a3);
  }

  while (v6 != -1);
  return v7;
}

uint64_t llvm::consumeUnsignedInteger(llvm *this, llvm::StringRef *a2, unint64_t *a3, unint64_t *a4)
{
  v4 = *(this + 1);
  if (a2)
  {
    if (!v4)
    {
      return 1;
    }

    goto LABEL_3;
  }

  if (v4 < 2)
  {
    LODWORD(a2) = 10;
    if (!v4)
    {
      return 1;
    }

    goto LABEL_3;
  }

  v12 = *this;
  v13 = **this;
  if ((v13 - 65) >= 0x1A)
  {
    v14 = **this;
  }

  else
  {
    v14 = v13 + 32;
  }

  if (v14 != 48)
  {
LABEL_31:
    if (*v12 == 28464)
    {
      LODWORD(a2) = 8;
      v4 -= 2;
      *this = v12 + 2;
      *(this + 1) = v4;
      if (!v4)
      {
        return 1;
      }
    }

    else if (v13 == 48 && (v17 = v12[1], v16 = v12 + 1, (v17 - 48) <= 9))
    {
      LODWORD(a2) = 8;
      --v4;
      *this = v16;
      *(this + 1) = v4;
      if (!v4)
      {
        return 1;
      }
    }

    else
    {
      LODWORD(a2) = 10;
    }

    goto LABEL_3;
  }

  v15 = v12[1];
  if ((v15 - 65) < 0x1A)
  {
    v15 += 32;
  }

  if (v15 != 98)
  {
    if (v15 == 120)
    {
      LODWORD(a2) = 16;
      v4 -= 2;
      *this = v12 + 2;
      *(this + 1) = v4;
      if (!v4)
      {
        return 1;
      }

      goto LABEL_3;
    }

    goto LABEL_31;
  }

  LODWORD(a2) = 2;
  v4 -= 2;
  *this = v12 + 2;
  *(this + 1) = v4;
  if (!v4)
  {
    return 1;
  }

LABEL_3:
  v5 = 0;
  v6 = *this;
  *a3 = 0;
  v7 = v4;
  do
  {
    if (*v6 < 48)
    {
      break;
    }

    v8 = *v6;
    if (v8 >= 0x3A)
    {
      if (v8 < 0x61)
      {
        if (v8 - 65 > 0x19)
        {
          break;
        }

        v9 = v8 - 55;
        if (v9 >= a2)
        {
          break;
        }
      }

      else
      {
        if (v8 >= 0x7B)
        {
          break;
        }

        v9 = v8 - 87;
        if (v9 >= a2)
        {
          break;
        }
      }
    }

    else
    {
      v9 = v8 - 48;
      if (v9 >= a2)
      {
        break;
      }
    }

    v10 = v5 * a2 + v9;
    *a3 = v10;
    if (v10 / a2 < v5)
    {
      return 1;
    }

    ++v6;
    v5 = v10;
    --v7;
  }

  while (v7);
  if (v4 != v7)
  {
    *this = v6;
    *(this + 1) = v7;
    return 0;
  }

  return 1;
}

uint64_t llvm::consumeSignedInteger(llvm *this, llvm::StringRef *a2, unint64_t *a3, unint64_t *a4)
{
  v12 = 0;
  v5 = *(this + 1);
  if (v5 && **this == 45)
  {
    *&v11 = *this + 1;
    *(&v11 + 1) = v5 - 1;
    LODWORD(result) = llvm::consumeUnsignedInteger(&v11, a2, &v12, a4);
    v8 = v12;
    if (v12 > 0x8000000000000000)
    {
      result = 1;
    }

    else
    {
      result = result;
    }

    if ((result & 1) == 0)
    {
      *this = v11;
      v9 = -v8;
LABEL_11:
      *a3 = v9;
    }
  }

  else
  {
    v10 = llvm::consumeUnsignedInteger(this, a2, &v12, a4);
    result = 1;
    if ((v10 & 1) == 0)
    {
      v9 = v12;
      if ((v12 & 0x8000000000000000) == 0)
      {
        result = 0;
        goto LABEL_11;
      }
    }
  }

  return result;
}

uint64_t llvm::getAsUnsignedInteger(uint64_t a1, uint64_t a2, llvm::StringRef *a3, unint64_t *a4)
{
  v5 = a1;
  v6 = a2;
  LODWORD(result) = llvm::consumeUnsignedInteger(&v5, a3, a4, a4);
  if (v6)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

BOOL llvm::getAsSignedInteger(_BYTE *a1, uint64_t a2, llvm::StringRef *a3, unint64_t *a4)
{
  *&v7 = a1;
  *(&v7 + 1) = a2;
  v9 = 0;
  if (a2 && *a1 == 45)
  {
    *&v8 = a1 + 1;
    *(&v8 + 1) = a2 - 1;
    if ((llvm::consumeUnsignedInteger(&v8, a3, &v9, a4) & 1) == 0 && v9 < 0x8000000000000001)
    {
      v7 = v8;
      v5 = -v9;
LABEL_8:
      *a4 = v5;
      return *(&v7 + 1) != 0;
    }
  }

  else if ((llvm::consumeUnsignedInteger(&v7, a3, &v9, a4) & 1) == 0)
  {
    v5 = v9;
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  return 1;
}

BOOL llvm::StringRef::consumeInteger(llvm::StringRef *this, unsigned int a2, llvm::APInt *a3)
{
  v6 = *this;
  v5 = *(this + 1);
  if (!a2)
  {
    if (v5 < 2)
    {
      v7 = 10;
      if (!v5)
      {
        return 1;
      }

      goto LABEL_24;
    }

    v8 = *v6;
    if ((v8 - 65) >= 0x1A)
    {
      v9 = *v6;
    }

    else
    {
      v9 = v8 + 32;
    }

    if (v9 == 48)
    {
      v10 = v6[1];
      if ((v10 - 65) < 0x1A)
      {
        v10 += 32;
      }

      if (v10 == 98)
      {
        v6 += 2;
        v7 = 2;
        v5 -= 2;
        if (v5)
        {
          goto LABEL_24;
        }

        return 1;
      }

      if (v10 == 120)
      {
        v6 += 2;
        v7 = 16;
        v5 -= 2;
        if (!v5)
        {
          return 1;
        }

        goto LABEL_24;
      }
    }

    if (*v6 != 28464)
    {
      if (v8 == 48 && v6[1] - 48 <= 9)
      {
        v7 = 8;
        ++v6;
        if (!--v5)
        {
          return 1;
        }
      }

      else
      {
        v7 = 10;
      }

      goto LABEL_24;
    }

    v6 += 2;
    v7 = 8;
    v5 -= 2;
    if (v5)
    {
      goto LABEL_24;
    }

    return 1;
  }

  v7 = a2;
  if (!v5)
  {
    return 1;
  }

LABEL_24:
  v11 = 0;
  while (v6[v11] == 48)
  {
    if (v5 == ++v11)
    {
      v11 = -1;
      break;
    }
  }

  if (v11 >= v5)
  {
    v11 = v5;
  }

  v12 = &v6[v11];
  v13 = v5 - v11;
  if (v5 == v11)
  {
    if (*(a3 + 2) >= 0x41u && *a3)
    {
      MEMORY[0x259C63150](*a3, 0x1000C8000313F17);
    }

    result = 0;
    *a3 = 0;
    *(a3 + 2) = 64;
    *this = v12;
    *(this + 1) = 0;
  }

  else
  {
    v14 = v11 - v5;
    v15 = v5 - v11;
    v16 = -1;
    do
    {
      v17 = 1 << ++v16;
      v14 += v15;
    }

    while (1 << v16 < v7);
    v18 = *(a3 + 2);
    if (v14 >= v18)
    {
      if (v14 > v18)
      {
        llvm::APInt::zext(a3, v14, &v40);
        if (*(a3 + 2) >= 0x41u && *a3)
        {
          MEMORY[0x259C63150](*a3, 0x1000C8000313F17);
        }

        *a3 = v40;
        v18 = v41;
        *(a3 + 2) = v41;
      }
    }

    else
    {
      v14 = *(a3 + 2);
    }

    v41 = 1;
    v40 = 0;
    v39 = 1;
    v38 = 0;
    if (v17 != v7)
    {
      v37 = v14;
      if (v14 > 0x40)
      {
        llvm::APInt::initSlowCase(&v36);
      }

      v20 = 0xFFFFFFFFFFFFFFFFLL >> -v14;
      if (!v14)
      {
        LODWORD(v20) = 0;
      }

      v40 = v20 & v7;
      v41 = v37;
      v37 = v14;
      v36 = 0;
      v38 = 0;
      v39 = v14;
      v18 = *(a3 + 2);
    }

    if (v18 <= 0x40)
    {
      *a3 = 0;
      if (v17 != v7)
      {
        goto LABEL_54;
      }

      while (1)
      {
LABEL_72:
        if (*v12 < 48)
        {
          goto LABEL_92;
        }

        v26 = *v12;
        if (v26 >= 0x3A)
        {
          if (v26 <= 0x60)
          {
            if (v26 - 65 >= 0x1A)
            {
              goto LABEL_92;
            }

            v27 = -55;
          }

          else
          {
            if (v26 > 0x7A)
            {
              goto LABEL_92;
            }

            v27 = -87;
          }
        }

        else
        {
          v27 = -48;
        }

        v28 = v27 + v26;
        if (v28 >= v7)
        {
          goto LABEL_92;
        }

        v29 = *(a3 + 2);
        if (v29 <= 0x40)
        {
          break;
        }

        llvm::APInt::shlSlowCase(a3, v16);
        v29 = *(a3 + 2);
        if (v29 >= 0x41)
        {
          **a3 |= v28;
          ++v12;
          if (!--v13)
          {
            goto LABEL_92;
          }
        }

        else
        {
LABEL_88:
          if (v29)
          {
            v32 = 0xFFFFFFFFFFFFFFFFLL >> -v29;
          }

          else
          {
            v32 = 0;
          }

          *a3 = (*a3 | v28) & v32;
          ++v12;
          if (!--v13)
          {
            goto LABEL_92;
          }
        }
      }

      v30 = *a3 << v16;
      if (v29 == v16)
      {
        v30 = 0;
      }

      v31 = 0xFFFFFFFFFFFFFFFFLL >> -v29;
      if (!v29)
      {
        v31 = 0;
      }

      *a3 = v30 & v31;
      goto LABEL_88;
    }

    **a3 = 0;
    bzero((*a3 + 8), (((v18 + 63) >> 3) - 8) & 0xFFFFFFF8);
    if (v17 == v7)
    {
      goto LABEL_72;
    }

LABEL_54:
    while (*v12 >= 48)
    {
      v21 = *v12;
      if (v21 >= 0x3A)
      {
        if (v21 < 0x61)
        {
          if (v21 - 65 > 0x19)
          {
            break;
          }

          v22 = -55;
        }

        else
        {
          if (v21 >= 0x7B)
          {
            break;
          }

          v22 = -87;
        }
      }

      else
      {
        v22 = -48;
      }

      v23 = v22 + v21;
      if (v23 >= v7)
      {
        break;
      }

      llvm::APInt::operator*=(a3, &v40);
      v24 = v39;
      if (v39 > 0x40)
      {
        *v38 = v23;
        bzero(v38 + 1, (((v24 + 63) >> 3) - 8) & 0xFFFFFFF8);
        llvm::APInt::operator+=(a3, &v38);
        ++v12;
        if (!--v13)
        {
          break;
        }
      }

      else
      {
        if (v39)
        {
          v25 = 0xFFFFFFFFFFFFFFFFLL >> -v39;
        }

        else
        {
          v25 = 0;
        }

        v38 = (v25 & v23);
        llvm::APInt::operator+=(a3, &v38);
        ++v12;
        if (!--v13)
        {
          break;
        }
      }
    }

LABEL_92:
    v33 = *(this + 1);
    result = v33 == v13;
    if (v33 != v13)
    {
      *this = v12;
      *(this + 1) = v13;
    }

    if (v39 >= 0x41 && v38)
    {
      v34 = v33 == v13;
      MEMORY[0x259C63150](v38, 0x1000C8000313F17);
      result = v34;
    }

    if (v41 >= 0x41)
    {
      if (v40)
      {
        v35 = result;
        MEMORY[0x259C63150](v40, 0x1000C8000313F17);
        return v35;
      }
    }
  }

  return result;
}

uint64_t llvm::StringRef::getAsInteger(llvm::StringRef *this, unsigned int a2, llvm::APInt *a3)
{
  v4 = *this;
  LODWORD(result) = llvm::StringRef::consumeInteger(&v4, a2, a3);
  if (*(&v4 + 1))
  {
    return 1;
  }

  else
  {
    return result;
  }
}

uint64_t llvm::StringRef::getAsDouble(llvm::StringRef *this, double *a2, int a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = llvm::detail::IEEEFloat::IEEEFloat(&v17, 0.0);
  v7 = llvm::APFloatBase::IEEEdouble(v6);
  llvm::APFloat::Storage::Storage(v16, &v17, v7);
  llvm::detail::IEEEFloat::~IEEEFloat(&v17);
  v8 = llvm::APFloat::convertFromString(v15, *this, *(this + 1), 1, &v17);
  if ((v18 & 1) == 0)
  {
    if (v17)
    {
      v10 = 1;
      if ((v17 & 0x10) == 0 || !a3)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v10 = 0;
    *a2 = llvm::APFloat::convertToDouble(v15);
    goto LABEL_10;
  }

  v9 = v17;
  v17 = 0;
  if (!v9)
  {
    goto LABEL_9;
  }

  v13 = v9;
  llvm::handleErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v13, &v14);
  v8 = v13;
  if (v13)
  {
    v8 = (*(*v13 + 8))(v13);
  }

  v10 = 1;
LABEL_10:
  if (v18)
  {
    v8 = v17;
    v17 = 0;
    if (v8)
    {
      v8 = (*(*v8 + 8))(v8);
    }
  }

  v11 = v16[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v8) == v11)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v16);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v16);
  }

  return v10;
}

uint64_t llvm::ComputeMappedEditDistance<char,unsigned int llvm::ComputeEditDistance<char>(llvm::ArrayRef<char>,llvm::ArrayRef<char>,BOOL,unsigned int)::{lambda(char const&)#1}>(uint64_t a1, unint64_t a2, unsigned __int8 *a3, unint64_t a4, int a5, unsigned int a6)
{
  *&v64[252] = *MEMORY[0x277D85DE8];
  if (a6)
  {
    v6 = a4 - a2;
    if (a2 > a4)
    {
      v6 = a2 - a4;
    }

    if (v6 > a6)
    {
      return a6 + 1;
    }
  }

  v8 = a4 + 1;
  if (a4 == -1)
  {
    if (!a2)
    {
      return 64;
    }

    v7 = a6 + 1;
  }

  else
  {
    v9 = a6;
    v10 = a2;
    v11 = a4;
    if (v8 >= 0x41)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v12 = a1;
    v13 = a3;
    v14 = a5;
    bzero(&v63, 4 * (a4 + 1));
    a5 = v14;
    a1 = v12;
    a3 = v13;
    a4 = v11;
    a2 = v10;
    a6 = v9;
    if (v8 >= 2)
    {
      v15 = 1;
      do
      {
        *&v64[4 * v15 - 4] = v15;
        ++v15;
      }

      while (v8 > v15);
    }

    if (!v10)
    {
      return *&v64[4 * a4 - 4];
    }

    v7 = v9 + 1;
    if (!v11)
    {
      if (!v9)
      {
        v61 = 2;
        if (a2 + 1 > 2)
        {
          v61 = a2 + 1;
        }

        v41 = v61 - 1;
LABEL_91:
        v63 = v41;
        return *&v64[4 * a4 - 4];
      }

      v36 = (a2 != 0) - 1;
      if (__PAIR128__(v36, a2 - 1) >= v9)
      {
        v37 = 0;
      }

      else
      {
        v37 = (a2 != 0) - 1;
      }

      if (__PAIR128__(v36, a2 - 1) >= v9)
      {
        v38 = v9;
      }

      else
      {
        v38 = a2 - 1;
      }

      v39 = 1;
      if (v38 >= 2 && v38 ^ 0xFFFFFFFF | v37)
      {
        v40 = v38 & 0xFFFFFFFE;
        v39 = v38 | 1;
        do
        {
          v40 -= 2;
        }

        while (v40);
      }

      v41 = v39 - 1;
      while (v39 <= v9)
      {
        ++v39;
        ++v41;
        if (v39 > a2)
        {
          goto LABEL_91;
        }
      }

      v63 = v39;
      return v7;
    }
  }

  v16 = 2;
  if (v8 > 2)
  {
    v16 = v8;
  }

  if (a5)
  {
    if (a6)
    {
      v17 = 1;
      while (1)
      {
        v18 = a3;
        v63 = v17;
        v19 = v17;
        v20 = 1;
        v21 = v17 - 1;
        v22 = v17;
        do
        {
          v23 = *v18++;
          if (*(a1 + v17 - 1) != v23)
          {
            ++v21;
          }

          v24 = *&v64[4 * v20 - 4];
          if (v24 < v19)
          {
            v19 = *&v64[4 * v20 - 4];
          }

          if (v19 + 1 < v21)
          {
            ++v19;
          }

          else
          {
            v19 = v21;
          }

          *&v64[4 * v20 - 4] = v19;
          if (v19 < v22)
          {
            v22 = v19;
          }

          ++v20;
          v21 = v24;
        }

        while (v16 != v20);
        if (v22 > a6)
        {
          break;
        }

        if (++v17 > a2)
        {
          return *&v64[4 * a4 - 4];
        }
      }

      return v7;
    }

    v42 = 2;
    if (a2 + 1 > 2)
    {
      v42 = a2 + 1;
    }

    v43 = 1;
    do
    {
      v63 = v43;
      v44 = a3;
      v45 = v43;
      v46 = 1;
      v47 = v43 - 1;
      do
      {
        v48 = *v44++;
        if (*(a1 + v43 - 1) != v48)
        {
          ++v47;
        }

        v49 = *&v64[4 * v46 - 4];
        if (v49 < v45)
        {
          v45 = *&v64[4 * v46 - 4];
        }

        if (v45 + 1 < v47)
        {
          ++v45;
        }

        else
        {
          v45 = v47;
        }

        *&v64[4 * v46++ - 4] = v45;
        v47 = v49;
      }

      while (v16 != v46);
      ++v43;
    }

    while (v43 != v42);
    return *&v64[4 * a4 - 4];
  }

  if (!a6)
  {
    v50 = 2;
    if (a2 + 1 > 2)
    {
      v50 = a2 + 1;
    }

    v51 = v16 - 1;
    v52 = 1;
    do
    {
      v53 = a3;
      v63 = v52;
      v54 = v64;
      v55 = v51;
      v56 = v52;
      v57 = v52 - 1;
      do
      {
        v58 = *v54;
        v59 = *v53++;
        if (*(a1 + v52 - 1) != v59)
        {
          v60 = v54 - 1;
          if (v58 < v56)
          {
            v60 = v54;
          }

          v57 = *v60 + 1;
        }

        *v54++ = v57;
        v56 = v57;
        v57 = v58;
        --v55;
      }

      while (v55);
      ++v52;
    }

    while (v52 != v50);
    return *&v64[4 * a4 - 4];
  }

  v25 = v16 - 1;
  v26 = 1;
  while (1)
  {
    v27 = a3;
    v63 = v26;
    v28 = v64;
    v29 = v25;
    v30 = v26;
    v31 = v26 - 1;
    v32 = v26;
    do
    {
      v33 = *v28;
      v34 = *v27++;
      if (*(a1 + v26 - 1) != v34)
      {
        v35 = v28 - 1;
        if (v33 < v30)
        {
          v35 = v28;
        }

        v31 = *v35 + 1;
      }

      *v28++ = v31;
      if (v31 < v32)
      {
        v32 = v31;
      }

      v30 = v31;
      v31 = v33;
      --v29;
    }

    while (v29);
    if (v32 > a6)
    {
      break;
    }

    if (++v26 > a2)
    {
      return *&v64[4 * a4 - 4];
    }
  }

  return v7;
}

void llvm::SuffixTreeInternalNode::~SuffixTreeInternalNode(llvm **this)
{
  *this = &unk_2868A1AD8;
  llvm::deallocate_buffer(this[5], (16 * *(this + 14)));
}

{
  *this = &unk_2868A1AD8;
  llvm::deallocate_buffer(this[5], (16 * *(this + 14)));
}

void sub_2572150B4()
{

  JUMPOUT(0x259C63180);
}

uint64_t llvm::SuffixTree::SuffixTree(uint64_t a1, uint64_t a2, char a3)
{
  *a1 = *a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = a1 + 56;
  *(a1 + 48) = 0x400000000;
  *(a1 + 88) = a1 + 104;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 136) = a1 + 152;
  *(a1 + 144) = 0x400000000;
  *(a1 + 184) = a1 + 200;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = -1;
  *(a1 + 232) = 0;
  *(a1 + 244) = 0;
  *(a1 + 240) = -1;
  *(a1 + 268) = 0;
  *(a1 + 252) = 0;
  *(a1 + 260) = 0;
  *(a1 + 104) = 64;
  Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1 + 24, 64, 64, 3);
  v7 = *(a1 + 216);
  *(Slow + 8) = xmmword_2573A02D0;
  *Slow = &unk_2868A1AD8;
  *(Slow + 24) = -1;
  *(Slow + 56) = 0;
  *(Slow + 32) = v7;
  *(Slow + 40) = 0;
  *(Slow + 48) = 0;
  *(a1 + 216) = Slow;
  *(a1 + 232) = Slow;
  v8 = *(a2 + 8);
  if (v8)
  {
    v9 = 0;
    for (i = 0; i != v8; ++i)
    {
      *(a1 + 224) = i;
      v9 = llvm::SuffixTree::extend(a1, i, (v9 + 1));
    }
  }

  llvm::SuffixTree::setSuffixIndices(a1);
  if (a3)
  {
    llvm::SuffixTree::setLeafNodes(a1);
  }

  return a1;
}

double llvm::SuffixTree::insertRoot(llvm::SuffixTree *this)
{
  v1 = this;
  v2 = (this + 24);
  v3 = *(this + 3);
  *(this + 13) += 64;
  Slow = (v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = Slow + 64;
  if (v3)
  {
    v6 = v5 > v2[1];
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v9 = v1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v2, 64, 64, 3);
    v1 = v9;
  }

  else
  {
    *v2 = v5;
  }

  v7 = *(v1 + 27);
  *(Slow + 8) = xmmword_2573A02D0;
  *Slow = &unk_2868A1AD8;
  result = NAN;
  *(Slow + 24) = -1;
  *(Slow + 40) = 0;
  *(Slow + 48) = 0;
  *(Slow + 32) = v7;
  *(Slow + 56) = 0;
  return result;
}

uint64_t llvm::SuffixTree::extend(llvm::SuffixTree *this, unsigned int a2, uint64_t a3)
{
  v3 = a3;
  if (!a3)
  {
    return v3;
  }

  v4 = a2;
  v6 = 0;
  v7 = a2;
  v8 = this + 224;
  v49 = a2;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (*(this + 61))
        {
          v11 = *(this + 60);
        }

        else
        {
          *(this + 60) = v4;
          v11 = v7;
        }

        v12 = *(*this + 4 * v11);
        v50 = v12;
        v13 = *(this + 29);
        v16 = *(v13 + 40);
        v14 = v13 + 40;
        v15 = v16;
        v17 = *(v14 + 16);
        if (!v17)
        {
          goto LABEL_34;
        }

        v18 = v17 - 1;
        v19 = v18 & (37 * v12);
        v20 = *(v15 + 16 * v19);
        if (v12 == v20)
        {
          break;
        }

        v38 = 1;
        while (v20 != -1)
        {
          v39 = v19 + v38++;
          v19 = v39 & v18;
          v20 = *(v15 + 16 * v19);
          if (v12 == v20)
          {
            goto LABEL_10;
          }
        }

LABEL_34:
        v51 = v12;
        *(this + 25) += 40;
        v40 = *(this + 15);
        Slow = (v40 + 7) & 0xFFFFFFFFFFFFFFF8;
        v42 = Slow + 40;
        if (v40)
        {
          v43 = v42 > *(this + 16);
        }

        else
        {
          v43 = 1;
        }

        if (v43)
        {
          v45 = v14;
          Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(this + 120, 40, 40, 3);
          v14 = v45;
        }

        else
        {
          *(this + 15) = v42;
        }

        *(Slow + 8) = 0;
        *(Slow + 12) = v4;
        *Slow = &unk_2868A1B28;
        *(Slow + 16) = xmmword_2573A02E0;
        *(Slow + 32) = v8;
        *llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>,unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>::operator[](v14, &v51) = Slow;
        if (v6)
        {
          llvm::SuffixTreeInternalNode::setLink(v6, *(this + 29));
          v32 = 0;
          v37 = (v3 - 1);
          if (llvm::SuffixTreeInternalNode::isRoot(*(this + 29)))
          {
            goto LABEL_41;
          }
        }

        else
        {
          v32 = 0;
          v37 = (v3 - 1);
          if (llvm::SuffixTreeInternalNode::isRoot(*(this + 29)))
          {
            goto LABEL_41;
          }
        }

LABEL_46:
        *(this + 29) = llvm::SuffixTreeInternalNode::getLink(*(this + 29));
        v6 = v32;
        v3 = v37;
        if (!v37)
        {
          return v3;
        }
      }

LABEL_10:
      v21 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>,unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>::operator[](v14, &v50);
      v22 = *v21;
      v23 = *v21 && *(*v21 + 2) == 1;
      if (!v23 || !llvm::SuffixTreeInternalNode::isRoot(*v21))
      {
        break;
      }

      v9 = 0;
      v10 = *(this + 61);
LABEL_4:
      *(this + 60) += v9;
      *(this + 61) = v10 - v9;
      *(this + 29) = v22;
      if (!v3)
      {
        return v3;
      }
    }

    v24 = (**v22)(v22);
    v9 = v24 - llvm::SuffixTreeNode::getStartIdx(v22) + 1;
    v10 = *(this + 61);
    if (v10 >= v9)
    {
      goto LABEL_4;
    }

    v25 = *(*this + 4 * v7);
    if (*(*this + 4 * (*(this + 61) + llvm::SuffixTreeNode::getStartIdx(v22))) == v25)
    {
      break;
    }

    v26 = v8;
    v27 = *(this + 29);
    StartIdx = llvm::SuffixTreeNode::getStartIdx(v22);
    v29 = llvm::SuffixTreeNode::getStartIdx(v22);
    v30 = *(this + 61);
    v51 = v50;
    *(this + 13) += 64;
    v31 = *(this + 3);
    if (v31 && (v32 = (v31 + 7) & 0xFFFFFFFFFFFFFFF8, v32 + 64 <= *(this + 4)))
    {
      *(this + 3) = v32 + 64;
    }

    else
    {
      v47 = v29;
      v32 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(this + 24, 64, 64, 3);
      v29 = v47;
    }

    v33 = *(this + 27);
    *(v32 + 8) = 1;
    *(v32 + 12) = StartIdx;
    *(v32 + 16) = 0xFFFFFFFF00000000;
    *(v32 + 24) = -1;
    *(v32 + 28) = v29 + v30 - 1;
    *v32 = &unk_2868A1AD8;
    *(v32 + 32) = v33;
    *(v32 + 40) = 0;
    *(v32 + 48) = 0;
    *(v32 + 56) = 0;
    if (v27)
    {
      *llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>,unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>::operator[](v27 + 40, &v51) = v32;
    }

    v51 = v25;
    *(this + 25) += 40;
    v34 = *(this + 15);
    if (v34 && (v35 = (v34 + 7) & 0xFFFFFFFFFFFFFFF8, v35 + 40 <= *(this + 16)))
    {
      *(this + 15) = v35 + 40;
    }

    else
    {
      v35 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(this + 120, 40, 40, 3);
    }

    v8 = v26;
    v4 = a2;
    *(v35 + 8) = 0;
    *(v35 + 12) = a2;
    *v35 = &unk_2868A1B28;
    *(v35 + 16) = xmmword_2573A02E0;
    *(v35 + 32) = v8;
    *llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>,unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>::operator[](v32 + 40, &v51) = v35;
    llvm::SuffixTreeNode::incrementStartIdx(v22, *(this + 61));
    v36 = llvm::SuffixTreeNode::getStartIdx(v22);
    *llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>,unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>::operator[](v32 + 40, (*this + 4 * v36)) = v22;
    if (v6)
    {
      llvm::SuffixTreeInternalNode::setLink(v6, v32);
    }

    v7 = v49;
    v37 = (v3 - 1);
    if (!llvm::SuffixTreeInternalNode::isRoot(*(this + 29)))
    {
      goto LABEL_46;
    }

LABEL_41:
    v44 = *(this + 61);
    if (v44)
    {
      *(this + 60) = v4 - v3 + 2;
      *(this + 61) = v44 - 1;
    }

    v6 = v32;
    v3 = v37;
    if (!v37)
    {
      return v3;
    }
  }

  if (v6 && !llvm::SuffixTreeInternalNode::isRoot(*(this + 29)))
  {
    llvm::SuffixTreeInternalNode::setLink(v6, *(this + 29));
  }

  ++*(this + 61);
  return v3;
}

void llvm::SuffixTree::setSuffixIndices(llvm::SuffixTree *this)
{
  v24[6] = *MEMORY[0x277D85DE8];
  v21 = v24;
  v23 = 3;
  v24[0] = *(this + 27);
  v24[1] = 0;
  v3 = 1;
  do
  {
    v4 = v21 + 16 * v3;
    v5 = *(v4 - 2);
    v6 = *(v4 - 2);
    v22 = v3 - 1;
    llvm::SuffixTreeNode::setConcatLen(v5, v6);
    v7 = *(v5 + 8);
    if (v5)
    {
      v8 = v7 == 1;
    }

    else
    {
      v8 = 0;
    }

    if (!v8)
    {
      goto LABEL_32;
    }

    if (*(v5 + 48))
    {
      v9 = *(v5 + 56);
      if (v9)
      {
        v10 = 16 * v9;
        v11 = *(v5 + 40);
        while (*v11 >= 0xFFFFFFFE)
        {
          v11 += 16;
          v10 -= 16;
          if (!v10)
          {
            goto LABEL_2;
          }
        }
      }

      else
      {
        v11 = *(v5 + 40);
      }

      v12 = *(v5 + 40) + 16 * v9;
      if (v11 != v12)
      {
        do
        {
          v13 = *(v11 + 8);
          if (v13)
          {
            v14 = *(v13 + 2) == 1;
          }

          else
          {
            v14 = 0;
          }

          if (v14 && llvm::SuffixTreeInternalNode::isRoot(*(v11 + 8)))
          {
            v15 = 0;
            v16 = *(v11 + 8);
            v17 = v22;
            if (v22 >= v23)
            {
              goto LABEL_25;
            }
          }

          else
          {
            v18 = (**v13)(v13);
            v15 = v18 - llvm::SuffixTreeNode::getStartIdx(v13) + 1;
            v16 = *(v11 + 8);
            v17 = v22;
            if (v22 >= v23)
            {
LABEL_25:
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }
          }

          v1 = v1 & 0xFFFFFFFF00000000 | (v15 + v6);
          v19 = v21 + 16 * v17;
          *v19 = v16;
          v19[1] = v1;
          ++v22;
          do
          {
            v11 += 16;
          }

          while (v11 != v12 && *v11 >= 0xFFFFFFFE);
        }

        while (v11 != v12);
        v7 = *(v5 + 8);
LABEL_32:
        if (v5)
        {
          v20 = v7 == 0;
        }

        else
        {
          v20 = 0;
        }

        if (v20)
        {
          llvm::SuffixTreeLeafNode::setSuffixIdx(v5, *(this + 2) - v6);
        }
      }
    }

LABEL_2:
    v3 = v22;
  }

  while (v22);
  if (v21 != v24)
  {
    free(v21);
  }
}

void llvm::SuffixTree::setLeafNodes(llvm::SuffixTree *this)
{
  v2 = 0;
  v31[6] = *MEMORY[0x277D85DE8];
  v28 = v31;
  v30 = 6;
  v31[0] = *(this + 27);
  v26[0] = 0;
  v26[1] = 0;
  v27 = 0;
  v3 = 1;
  while (1)
  {
    v4 = v28[v3 - 1];
    v5 = v3 - 1;
    v29 = v3 - 1;
    if (*(v4 + 8) == 1)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0;
    }

    v25 = v6;
    if (!v6)
    {
      llvm::SuffixTreeNode::setLeftLeafIdx(v4, v2);
      llvm::SuffixTreeNode::setRightLeafIdx(v4, v2++);
      v24 = v4;
      std::vector<mlir::Operation *>::push_back[abi:nn200100](this + 248, &v24);
      goto LABEL_3;
    }

    if (v27)
    {
      v7 = (v27 - 1) & ((v6 >> 4) ^ (v6 >> 9));
      v8 = v26[0] + 24 * v7;
      v9 = *v8;
      if (*v8 == v6)
      {
        goto LABEL_15;
      }

      v10 = 1;
      while (v9 != -4096)
      {
        v11 = v7 + v10++;
        v7 = v11 & (v27 - 1);
        v8 = v26[0] + 24 * v7;
        v9 = *v8;
        if (*v8 == v6)
        {
          goto LABEL_15;
        }
      }
    }

    v8 = v26[0] + 24 * v27;
LABEL_15:
    if (v8 == v26[0] + 24 * v27)
    {
      if (*(v6 + 48))
      {
        v15 = *(v6 + 40);
        v16 = *(v6 + 56);
        if (v16)
        {
          v17 = 16 * v16;
          v18 = v15;
          while (*v18 >= 0xFFFFFFFE)
          {
            v18 += 16;
            v17 -= 16;
            if (!v17)
            {
              goto LABEL_3;
            }
          }
        }

        else
        {
          v18 = v15;
        }

        v19 = v15 + 16 * v16;
        if (v18 != v19)
        {
          if (v5 >= v30)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v28[v5] = v4;
          v20 = ++v29;
          v21 = *(v18 + 8);
          if (v18 == *(v25 + 40) + 16 * *(v25 + 56))
          {
            v22 = 0;
          }

          else
          {
            do
            {
              v22 = *(v18 + 8);
              if (v20 >= v30)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v28[v20] = v22;
              v20 = ++v29;
              do
              {
                v18 += 16;
              }

              while (v18 != v19 && *v18 >= 0xFFFFFFFE);
            }

            while (v18 != *(v25 + 40) + 16 * *(v25 + 56));
          }

          v23 = llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,mlir::DataLayoutEntryInterface,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,mlir::DataLayoutEntryInterface>>,mlir::StringAttr,mlir::DataLayoutEntryInterface,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,mlir::DataLayoutEntryInterface>>::operator[](v26, &v25);
          *v23 = v21;
          v23[1] = v22;
        }
      }
    }

    else
    {
      v12 = *(v8 + 2);
      RightLeafIdx = llvm::SuffixTreeNode::getRightLeafIdx(*(v8 + 1));
      llvm::SuffixTreeNode::setRightLeafIdx(v4, RightLeafIdx);
      LeftLeafIdx = llvm::SuffixTreeNode::getLeftLeafIdx(v12);
      llvm::SuffixTreeNode::setLeftLeafIdx(v4, LeftLeafIdx);
    }

LABEL_3:
    v3 = v29;
    if (!v29)
    {
      llvm::deallocate_buffer(v26[0], (24 * v27));
    }
  }
}

unint64_t llvm::SuffixTree::insertLeaf(llvm::SuffixTree *this, llvm::SuffixTreeInternalNode *a2, int a3, int a4)
{
  v13 = a4;
  v4 = *(this + 15);
  *(this + 25) += 40;
  v5 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v5 + 40;
  if (v4)
  {
    v7 = v6 > *(this + 16);
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v9 = this;
    v10 = a2;
    v11 = a3;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(this + 120, 40, 40, 3);
    a3 = v11;
    a2 = v10;
    v5 = Slow;
    this = v9;
  }

  else
  {
    *(this + 15) = v6;
  }

  *(v5 + 8) = 0;
  *(v5 + 12) = a3;
  *v5 = &unk_2868A1B28;
  *(v5 + 16) = xmmword_2573A02E0;
  *(v5 + 32) = this + 224;
  *llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>,unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>::operator[](a2 + 40, &v13) = v5;
  return v5;
}

unint64_t llvm::SuffixTree::insertInternalNode(llvm::SuffixTree *this, llvm::SuffixTreeInternalNode *a2, int a3, int a4, int a5)
{
  v16 = a5;
  v5 = *(this + 3);
  *(this + 13) += 64;
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v6 + 64;
  if (v5)
  {
    v8 = v7 > *(this + 4);
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v11 = this;
    v12 = a2;
    v13 = a3;
    v14 = a4;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(this + 24, 64, 64, 3);
    a3 = v13;
    a4 = v14;
    a2 = v12;
    v6 = Slow;
    this = v11;
  }

  else
  {
    *(this + 3) = v7;
  }

  v9 = *(this + 27);
  *(v6 + 8) = 1;
  *(v6 + 12) = a3;
  *(v6 + 16) = 0xFFFFFFFF00000000;
  *(v6 + 24) = -1;
  *(v6 + 28) = a4;
  *v6 = &unk_2868A1AD8;
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  *(v6 + 32) = v9;
  *(v6 + 56) = 0;
  if (a2)
  {
    *llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>,unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>::operator[](a2 + 40, &v16) = v6;
  }

  return v6;
}

void llvm::SuffixTree::RepeatedSubstringIterator::advance(llvm::SuffixTree::RepeatedSubstringIterator *this)
{
  v26 = *MEMORY[0x277D85DE8];
  *(this + 2) = 0;
  *(this + 6) = 0;
  *this = 0;
  v1 = *(this + 22);
  if (v1)
  {
    while (1)
    {
      v24 = 0;
      v3 = *(*(this + 10) + 8 * v1 - 8);
      *(this + 22) = v1 - 1;
      ConcatLen = llvm::SuffixTreeNode::getConcatLen(v3);
      if (*(v3 + 48))
      {
        v5 = *(v3 + 56);
        if (v5)
        {
          v6 = 16 * v5;
          v7 = *(v3 + 40);
          while (*v7 >= 0xFFFFFFFE)
          {
            v7 += 16;
            v6 -= 16;
            if (!v6)
            {
              goto LABEL_10;
            }
          }
        }

        else
        {
          v7 = *(v3 + 40);
        }

        v10 = *(v3 + 40) + 16 * v5;
        while (v7 != v10)
        {
          v11 = *(v7 + 8);
          if (v11)
          {
            v12 = *(v11 + 8) == 1;
          }

          else
          {
            v12 = 0;
          }

          if (v12)
          {
            v13 = *(this + 22);
            if (v13 >= *(this + 23))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            *(*(this + 10) + 8 * v13) = v11;
            ++*(this + 22);
          }

          do
          {
            v7 += 16;
          }

          while (v7 != v10 && *v7 >= 0xFFFFFFFE);
        }
      }

LABEL_10:
      if (ConcatLen >= *(this + 36) && !llvm::SuffixTreeInternalNode::isRoot(v3))
      {
        if (*(this + 160) == 1)
        {
          for (i = llvm::SuffixTreeNode::getLeftLeafIdx(v3); i <= llvm::SuffixTreeNode::getRightLeafIdx(v3); ++i)
          {
            SuffixIdx = llvm::SuffixTreeLeafNode::getSuffixIdx(*(**(this + 19) + 8 * i));
            if (v24 >= 0xCuLL)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v25[v24++] = SuffixIdx;
          }
        }

        else if (*(v3 + 48))
        {
          v14 = *(v3 + 56);
          if (v14)
          {
            v15 = 16 * v14;
            v16 = *(v3 + 40);
            while (*v16 >= 0xFFFFFFFE)
            {
              v16 += 16;
              v15 -= 16;
              if (!v15)
              {
                goto LABEL_3;
              }
            }
          }

          else
          {
            v16 = *(v3 + 40);
          }

          v17 = *(v3 + 40) + 16 * v14;
          while (v16 != v17)
          {
            v18 = *(v16 + 8);
            if (v18)
            {
              v19 = *(v18 + 2) == 0;
            }

            else
            {
              v19 = 0;
            }

            if (v19)
            {
              v20 = llvm::SuffixTreeLeafNode::getSuffixIdx(v18);
              if (v24 >= 0xCuLL)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v25[v24++] = v20;
            }

            do
            {
              v16 += 16;
            }

            while (v16 != v17 && *v16 >= 0xFFFFFFFE);
          }
        }

LABEL_3:
        if (v24 >= 2)
        {
          break;
        }
      }

      v1 = *(this + 22);
      if (!v1)
      {
        return;
      }
    }

    *this = v3;
    *(this + 2) = ConcatLen;
    v21 = v25;
    v22 = 4 * v24;
    v23 = *(this + 6);
    do
    {
      if (v23 >= *(this + 7))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*(this + 2) + 4 * v23) = *v21;
      v23 = *(this + 6) + 1;
      *(this + 6) = v23;
      ++v21;
      v22 -= 4;
    }

    while (v22);
  }
}

llvm *llvm::CheckBitcodeOutputToConsole(llvm *this, llvm::raw_ostream *a2)
{
  result = (*(*this + 48))(this, a2);
  if (result)
  {
    v3 = result;
    v4 = llvm::errs(result);
    v5 = v4[4];
    if (v4[3] - v5 > 0xCEuLL)
    {
      v4[4] += 207;
    }

    else
    {
    }

    return v3;
  }

  return result;
}

void llvm::TarWriter::create(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v5 = 261;
  v4[0] = a1;
  v4[1] = a2;
  if (llvm::sys::fs::openFile(v4, &v6, 0, 2, 0, 438))
  {
    v5 = 1283;
    v4[0] = "cannot open ";
    v4[2] = a1;
    v4[3] = a2;
    operator new();
  }

  operator new();
}

uint64_t llvm::TarWriter::TarWriter(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  llvm::raw_fd_ostream::raw_fd_ostream(a1, a2, 1, 0, 0);
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (a4 >= 0x17)
  {
    operator new();
  }

  v7 = (a1 + 96);
  *(a1 + 119) = a4;
  if (a4)
  {
    memmove(v7, a3, a4);
  }

  *(v7 + a4) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0x800000000;
  return a1;
}

{
  llvm::raw_fd_ostream::raw_fd_ostream(a1, a2, 1, 0, 0);
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (a4 >= 0x17)
  {
    operator new();
  }

  v7 = (a1 + 96);
  *(a1 + 119) = a4;
  if (a4)
  {
    memmove(v7, a3, a4);
  }

  *(v7 + a4) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0x800000000;
  return a1;
}

void llvm::TarWriter::append(llvm::raw_fd_ostream *a1, void *a2, size_t a3, const void *a4, size_t a5)
{
  v219 = *MEMORY[0x277D85DE8];
  if (*(a1 + 119) >= 0)
  {
    v5 = *(a1 + 119);
  }

  else
  {
    v5 = *(a1 + 13);
  }

  if (v5 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (v5 + 1 >= 0x17)
  {
    operator new();
  }

  memset(__dst, 0, 24);
  __dst[23] = v5 + 1;
  if (v5)
  {
    if (*(a1 + 119) >= 0)
    {
      v10 = a1 + 96;
    }

    else
    {
      v10 = *(a1 + 12);
    }

    memmove(__dst, v10, v5);
  }

  *&__dst[v5] = 47;
  llvm::sys::path::convert_to_slash(a2, a3, 0, &__p);
  if (SHIBYTE(v215) >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (SHIBYTE(v215) >= 0)
  {
    v12 = HIBYTE(v215);
  }

  else
  {
    v12 = v214;
  }

  v13 = std::string::append(__dst, p_p, v12);
  v15 = v13->__r_.__value_.__r.__words[2];
  *v202 = *&v13->__r_.__value_.__l.__data_;
  v203 = v15;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v215) < 0)
  {
    operator delete(__p);
    if ((__dst[23] & 0x80000000) == 0)
    {
      goto LABEL_20;
    }
  }

  else if ((__dst[23] & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

  operator delete(*__dst);
LABEL_20:
  if (v203 >= 0)
  {
    v16 = v202;
  }

  else
  {
    v16 = v202[0];
  }

  if (v203 >= 0)
  {
    v17 = SHIBYTE(v203);
  }

  else
  {
    v17 = v202[1];
  }

  v18 = llvm::StringMapImpl::hash(v16, v17, v14);
  llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::try_emplace_with_hash<>((a1 + 120), v16, v17, v18);
  if (v19)
  {
    if (v203 >= 0)
    {
      v20 = v202;
    }

    else
    {
      v20 = v202[0];
    }

    if (v203 >= 0)
    {
      v21 = SHIBYTE(v203);
    }

    else
    {
      v21 = v202[1];
    }

    if (v21 >= 0x64)
    {
      v24 = 138;
      if (v21 < 0x8A)
      {
        v24 = v21;
      }

      do
      {
        if (!v24)
        {
          goto LABEL_43;
        }

        v22 = v24 - 1;
        v25 = *(v20 + --v24);
      }

      while (v25 != 47);
      if (v22 - v21 < 0xFFFFFFFFFFFFFF9CLL)
      {
LABEL_43:
        v26 = v21 + 7;
        *&__dst[32] = 266;
        *__dst = v21 + 7;
        llvm::Twine::str(__dst, &__p);
        v27 = SHIBYTE(v215);
        if (SHIBYTE(v215) < 0)
        {
          v27 = v214;
          operator delete(__p);
        }

        *&__dst[32] = 266;
        *__dst = v27 + v26;
        llvm::Twine::str(__dst, &__p);
        v28 = SHIBYTE(v215);
        if (SHIBYTE(v215) < 0)
        {
          v28 = v214;
          operator delete(__p);
        }

        v207[0] = (v28 + v26);
        v207[2] = " ";
        v208 = 778;
        v209[0] = v207;
        v209[2] = "path";
        v209[3] = 4;
        v210 = 1282;
        v211[0] = v209;
        v211[2] = "=";
        v212 = 770;
        __p = v211;
        v215 = v20;
        v216 = v21;
        v217 = 1282;
        *__dst = &__p;
        *&__dst[16] = "\n";
        *&__dst[32] = 770;
        llvm::Twine::str(__dst, &v204);
        memset(__dst, 0, sizeof(__dst));
        qmemcpy(&__dst[257], "ustar", 5);
        v29 = v206;
        if ((v206 & 0x80u) != 0)
        {
          v29 = v205;
        }

        *&__dst[263] = 12336;
        snprintf(&__dst[124], 0xCuLL, "%011zo", v29);
        v30 = vaddl_u8(*__dst, *&__dst[32]);
        v31 = vaddl_high_u8(*__dst, *&__dst[32]);
        v32 = vaddl_u8(*&__dst[16], *&__dst[48]);
        v33 = vaddl_high_u8(*&__dst[16], *&__dst[48]);
        v34 = vmovl_u8(*&__dst[64]);
        v35 = vmovl_high_u8(*&__dst[64]);
        v36 = vmovl_u8(*&__dst[80]);
        v37 = vmovl_high_u8(*&__dst[80]);
        v38 = vaddl_u16(*v31.i8, *v35.i8);
        v39 = vaddl_u16(*v30.i8, *v34.i8);
        v40 = vaddl_high_u16(v31, v35);
        v41 = vaddl_high_u16(v30, v34);
        qmemcpy(&__dst[148], "        x", 9);
        v42 = vaddl_u16(*v33.i8, *v37.i8);
        v43 = vaddl_u16(*v32.i8, *v36.i8);
        v44 = vaddl_high_u16(v33, v37);
        v45 = vaddl_high_u16(v32, v36);
        v46 = vmovl_high_u8(*&__dst[96]);
        v47 = vmovl_u8(*&__dst[96]);
        v48 = vmovl_high_u8(*&__dst[112]);
        v49 = vmovl_u8(*&__dst[112]);
        v50 = vaddw_high_u16(v41, v47);
        v51 = vaddw_high_u16(v40, v46);
        v52 = vaddw_u16(v39, *v47.i8);
        v53 = vaddw_u16(v38, *v46.i8);
        v54 = vaddw_high_u16(v45, v49);
        v55 = vaddw_high_u16(v44, v48);
        v56 = vaddw_u16(v43, *v49.i8);
        v57 = vaddw_u16(v42, *v48.i8);
        v58 = vmovl_u8(*&__dst[128]);
        v59 = vmovl_high_u8(*&__dst[128]);
        v60 = vmovl_u8(*&__dst[144]);
        v61 = vmovl_high_u8(*&__dst[144]);
        v62 = vaddw_u16(v53, *v59.i8);
        v63 = vaddw_u16(v52, *v58.i8);
        v64 = vaddw_high_u16(v51, v59);
        v65 = vaddw_high_u16(v50, v58);
        v66 = vaddw_u16(v57, *v61.i8);
        v67 = vaddw_u16(v56, *v60.i8);
        v68 = vaddw_high_u16(v55, v61);
        v69 = vaddw_high_u16(v54, v60);
        v70 = vmovl_high_u8(*&__dst[160]);
        v71 = vmovl_u8(*&__dst[160]);
        v72 = vmovl_high_u8(*&__dst[176]);
        v73 = vmovl_u8(*&__dst[176]);
        v74 = vaddw_high_u16(v65, v71);
        v75 = vaddw_high_u16(v64, v70);
        v76 = vaddw_u16(v63, *v71.i8);
        v77 = vaddw_u16(v62, *v70.i8);
        v78 = vaddw_high_u16(v69, v73);
        v79 = vaddw_high_u16(v68, v72);
        v80 = vaddw_u16(v67, *v73.i8);
        v81 = vaddw_u16(v66, *v72.i8);
        v82 = vmovl_u8(*&__dst[192]);
        v83 = vmovl_high_u8(*&__dst[192]);
        v84 = vmovl_u8(*&__dst[208]);
        v85 = vmovl_high_u8(*&__dst[208]);
        v86 = vaddw_u16(v77, *v83.i8);
        v87 = vaddw_u16(v76, *v82.i8);
        v88 = vaddw_high_u16(v75, v83);
        v89 = vaddw_high_u16(v74, v82);
        v90 = vaddw_u16(v81, *v85.i8);
        v91 = vaddw_u16(v80, *v84.i8);
        v92 = vaddw_high_u16(v79, v85);
        v93 = vaddw_high_u16(v78, v84);
        v94 = vmovl_high_u8(*&__dst[224]);
        v95 = vmovl_u8(*&__dst[224]);
        v96 = vmovl_high_u8(*&__dst[240]);
        v97 = vmovl_u8(*&__dst[240]);
        v98 = vaddw_high_u16(v89, v95);
        v99 = vaddw_high_u16(v88, v94);
        v100 = vaddw_u16(v87, *v95.i8);
        v101 = vaddw_u16(v86, *v94.i8);
        v102 = vaddw_high_u16(v93, v97);
        v103 = vaddw_high_u16(v92, v96);
        v104 = vaddw_u16(v91, *v97.i8);
        v105 = vaddw_u16(v90, *v96.i8);
        v106 = vmovl_u8(*&__dst[256]);
        v107 = vmovl_high_u8(*&__dst[256]);
        v108 = vmovl_u8(*&__dst[272]);
        v109 = vmovl_high_u8(*&__dst[272]);
        v110 = vaddw_u16(v101, *v107.i8);
        v111 = vaddw_u16(v100, *v106.i8);
        v112 = vaddw_high_u16(v99, v107);
        v113 = vaddw_high_u16(v98, v106);
        v114 = vaddw_u16(v105, *v109.i8);
        v115 = vaddw_u16(v104, *v108.i8);
        v116 = vaddw_high_u16(v103, v109);
        v117 = vaddw_high_u16(v102, v108);
        v118 = vmovl_high_u8(*&__dst[288]);
        v119 = vmovl_u8(*&__dst[288]);
        v120 = vmovl_high_u8(*&__dst[304]);
        v121 = vmovl_u8(*&__dst[304]);
        v122 = vaddw_high_u16(v113, v119);
        v123 = vaddw_high_u16(v112, v118);
        v124 = vaddw_u16(v111, *v119.i8);
        v125 = vaddw_u16(v110, *v118.i8);
        v126 = vaddw_high_u16(v117, v121);
        v127 = vaddw_high_u16(v116, v120);
        v128 = vaddw_u16(v115, *v121.i8);
        v129 = vaddw_u16(v114, *v120.i8);
        v130 = vmovl_u8(*&__dst[320]);
        v131 = vmovl_high_u8(*&__dst[320]);
        v132 = vmovl_u8(*&__dst[336]);
        v133 = vmovl_high_u8(*&__dst[336]);
        v134 = vaddw_u16(v125, *v131.i8);
        v135 = vaddw_u16(v124, *v130.i8);
        v136 = vaddw_high_u16(v123, v131);
        v137 = vaddw_high_u16(v122, v130);
        v138 = vaddw_u16(v129, *v133.i8);
        v139 = vaddw_u16(v128, *v132.i8);
        v140 = vaddw_high_u16(v127, v133);
        v141 = vaddw_high_u16(v126, v132);
        v142 = vmovl_high_u8(*&__dst[352]);
        v143 = vmovl_u8(*&__dst[352]);
        v144 = vmovl_high_u8(*&__dst[368]);
        v145 = vmovl_u8(*&__dst[368]);
        v146 = vaddw_high_u16(v137, v143);
        v147 = vaddw_high_u16(v136, v142);
        v148 = vaddw_u16(v135, *v143.i8);
        v149 = vaddw_u16(v134, *v142.i8);
        v150 = vaddw_high_u16(v141, v145);
        v151 = vaddw_high_u16(v140, v144);
        v152 = vaddw_u16(v139, *v145.i8);
        v153 = vaddw_u16(v138, *v144.i8);
        v154 = vmovl_u8(*&__dst[384]);
        v155 = vmovl_high_u8(*&__dst[384]);
        v156 = vmovl_u8(*&__dst[400]);
        v157 = vmovl_high_u8(*&__dst[400]);
        v158 = vaddw_u16(v149, *v155.i8);
        v159 = vaddw_u16(v148, *v154.i8);
        v160 = vaddw_high_u16(v147, v155);
        v161 = vaddw_high_u16(v146, v154);
        v162 = vaddw_u16(v153, *v157.i8);
        v163 = vaddw_u16(v152, *v156.i8);
        v164 = vaddw_high_u16(v151, v157);
        v165 = vaddw_high_u16(v150, v156);
        v166 = vmovl_high_u8(*&__dst[416]);
        v167 = vmovl_u8(*&__dst[416]);
        v168 = vmovl_high_u8(*&__dst[432]);
        v169 = vmovl_u8(*&__dst[432]);
        v170 = vaddw_high_u16(v161, v167);
        v171 = vaddw_high_u16(v160, v166);
        v172 = vaddw_u16(v159, *v167.i8);
        v173 = vaddw_u16(v158, *v166.i8);
        v174 = vaddw_high_u16(v165, v169);
        v175 = vaddw_high_u16(v164, v168);
        v176 = vaddw_u16(v163, *v169.i8);
        v177 = vaddw_u16(v162, *v168.i8);
        v178 = vmovl_u8(*&__dst[448]);
        v179 = vmovl_high_u8(*&__dst[448]);
        v180 = vmovl_u8(*&__dst[464]);
        v181 = vmovl_high_u8(*&__dst[464]);
        v182 = vaddw_u16(v173, *v179.i8);
        v183 = vaddw_u16(v172, *v178.i8);
        v184 = vaddw_high_u16(v171, v179);
        v185 = vaddw_high_u16(v170, v178);
        v186 = vaddw_u16(v177, *v181.i8);
        v187 = vaddw_u16(v176, *v180.i8);
        v188 = vaddw_high_u16(v175, v181);
        v189 = vaddw_high_u16(v174, v180);
        v190 = vmovl_high_u8(*&__dst[480]);
        v191 = vmovl_u8(*&__dst[480]);
        v192 = vmovl_high_u8(*&__dst[496]);
        v193 = vmovl_u8(*&__dst[496]);
        snprintf(&__dst[148], 8uLL, "%06o", vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(vaddw_u16(v187, *v193.i8), vaddw_u16(v183, *v191.i8)), vaddq_s32(vaddw_u16(v186, *v192.i8), vaddw_u16(v182, *v190.i8))), vaddq_s32(vaddq_s32(vaddw_high_u16(v189, v193), vaddw_high_u16(v185, v191)), vaddq_s32(vaddw_high_u16(v188, v192), vaddw_high_u16(v184, v190))))));
        v194 = *(a1 + 4);
        if (*(a1 + 3) - v194 > 0x1FFuLL)
        {
          memcpy(v194, __dst, 0x200uLL);
          *(a1 + 4) += 512;
        }

        else
        {
          llvm::raw_ostream::write(a1, __dst, 0x200uLL);
        }

        if ((v206 & 0x80u) == 0)
        {
          v195 = &v204;
        }

        else
        {
          v195 = v204;
        }

        if ((v206 & 0x80u) == 0)
        {
          v196 = v206;
        }

        else
        {
          v196 = v205;
        }

        llvm::raw_ostream::write(a1, v195, v196);
        v197 = (*(*a1 + 80))(a1) + *(a1 + 4) - *(a1 + 2);
        llvm::raw_fd_ostream::seek(a1, (v197 - (v197 != 0) + ((v197 != 0) << 9)) & 0xFFFFFFFFFFFFFE00);
        if (v206 < 0)
        {
          operator delete(v204);
        }

        memset(__dst, 0, sizeof(__dst));
        qmemcpy(&__dst[257], "ustar", 5);
        *&__dst[263] = 12336;
        strcpy(&__dst[100], "0000664");
        snprintf(&__dst[124], 0xCuLL, "%011zo", a5);
        *&__dst[148] = 0x2020202020202020;
        snprintf(&__dst[148], 8uLL, "%06o");
LABEL_61:
        v198 = *(a1 + 4);
        if (*(a1 + 3) - v198 > 0x1FFuLL)
        {
          memcpy(v198, __dst, 0x200uLL);
          *(a1 + 4) += 512;
          v199 = *(a1 + 4);
          if (a5 <= *(a1 + 3) - v199)
          {
LABEL_63:
            if (a5)
            {
              memcpy(v199, a4, a5);
              *(a1 + 4) += a5;
            }

LABEL_67:
            v200 = (*(*a1 + 80))(a1) + *(a1 + 4) - *(a1 + 2);
            llvm::raw_fd_ostream::seek(a1, (v200 - (v200 != 0) + ((v200 != 0) << 9)) & 0xFFFFFFFFFFFFFE00);
            (*(*a1 + 80))(a1);
            operator new();
          }
        }

        else
        {
          llvm::raw_ostream::write(a1, __dst, 0x200uLL);
          v199 = *(a1 + 4);
          if (a5 <= *(a1 + 3) - v199)
          {
            goto LABEL_63;
          }
        }

        llvm::raw_ostream::write(a1, a4, a5);
        goto LABEL_67;
      }

      v23 = (v20 + v22 + 1);
      v21 += ~v22;
    }

    else
    {
      v22 = 0;
      v23 = v20;
      v20 = "";
    }

    memset(__dst, 0, sizeof(__dst));
    qmemcpy(&__dst[257], "ustar", 5);
    *&__dst[263] = 12336;
    memcpy(__dst, v23, v21);
    strcpy(&__dst[100], "0000664");
    snprintf(&__dst[124], 0xCuLL, "%011zo", a5);
    memcpy(&__dst[345], v20, v22);
    *&__dst[148] = 0x2020202020202020;
    snprintf(&__dst[148], 8uLL, "%06o");
    goto LABEL_61;
  }

  if (SHIBYTE(v203) < 0)
  {
    operator delete(v202[0]);
  }
}

uint64_t llvm::StdThreadPool::StdThreadPool(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  *a1 = &unk_2868A1B68;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  llvm::sys::RWMutexImpl::RWMutexImpl((a1 + 32));
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 850045863;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 1018212795;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 208) = 1018212795;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 244) = 0u;
  *(a1 + 288) = 1;
  *(a1 + 292) = a2;
  *(a1 + 300) = llvm::ThreadPoolStrategy::compute_thread_count(&v5);
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 316) = 0;
  return a1;
}

{
  v5 = a2;
  *a1 = &unk_2868A1B68;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  llvm::sys::RWMutexImpl::RWMutexImpl((a1 + 32));
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 850045863;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 1018212795;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 208) = 1018212795;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 244) = 0u;
  *(a1 + 288) = 1;
  *(a1 + 292) = a2;
  *(a1 + 300) = llvm::ThreadPoolStrategy::compute_thread_count(&v5);
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 316) = 0;
  return a1;
}

BOOL llvm::StdThreadPool::grow(pthread_rwlock_t **this, int a2)
{
  llvm::sys::RWMutexImpl::lock(this + 4);
  v4 = this[1];
  v5 = this[2];
  v6 = (v5 - v4) >> 3;
  v7 = *(this + 75);
  if (v6 < v7)
  {
    v8 = v7 >= a2 ? a2 : *(this + 75);
    if (v8 > ((v5 - v4) >> 3))
    {
      v9 = this[3];
      if (v5 >= v9)
      {
        if (!((v6 + 1) >> 61))
        {
          v10 = v9 - v4;
          v11 = v10 >> 2;
          if (v10 >> 2 <= v6 + 1)
          {
            v11 = v6 + 1;
          }

          if (v10 >= 0x7FFFFFFFFFFFFFF8)
          {
            v12 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v12 = v11;
          }

          if (v12)
          {
            if (!(v12 >> 61))
            {
              operator new();
            }

            std::string::__throw_length_error[abi:nn200100]();
          }

          operator new();
        }

        std::string::__throw_length_error[abi:nn200100]();
      }

      operator new();
    }
  }

  return llvm::sys::RWMutexImpl::unlock(this + 4);
}

uint64_t llvm::StdThreadPool::processTasks(uint64_t a1, uint64_t a2)
{
  v4 = QOS_CLASS_UNSPECIFIED;
  v5 = 0;
  v67 = *MEMORY[0x277D85DE8];
  v6 = (a1 + 96);
  v7 = (a2 >> 4) ^ (a2 >> 9);
  do
  {
    v66 = 0;
    v63 = 0;
    __lk.__m_ = v6;
    __lk.__owns_ = 1;
    std::mutex::lock(v6);
    v9 = *(a1 + 316);
    v10 = v9 == v4;
    v11 = *(a1 + 304);
    v12 = v11 != v5;
    v13 = *(a1 + 288);
    if (v13 == 1)
    {
      if (*(a1 + 88))
      {
        v14 = 0;
      }

      else
      {
        v14 = v11 == v5;
      }

      if (v14)
      {
        while (1)
        {
          if (!v10)
          {
            pthread_set_qos_class_self_np(v9, 0);
            goto LABEL_38;
          }

          if (a2)
          {
            v16 = *(a1 + 280);
            if (!v16)
            {
              goto LABEL_76;
            }

            v17 = *(a1 + 264);
            v18 = v16 - 1;
            v19 = v18 & v7;
            v20 = *(v17 + 16 * (v18 & v7));
            if (v20 != a2)
            {
              break;
            }
          }

LABEL_20:
          std::condition_variable::wait((a1 + 160), &__lk);
          v9 = *(a1 + 316);
          v10 = v9 == v4;
          v11 = *(a1 + 304);
          v12 = v11 != v5;
          LOBYTE(v13) = *(a1 + 288);
          if ((v13 & 1) == 0 || *(a1 + 88) || v11 != v5)
          {
            goto LABEL_10;
          }
        }

        v21 = 1;
        while (v20 != -4096)
        {
          v22 = v19 + v21++;
          v19 = v22 & v18;
          v20 = *(v17 + 16 * (v22 & v18));
          if (v20 == a2)
          {
            goto LABEL_20;
          }
        }

LABEL_76:
        v15 = 1;
        goto LABEL_77;
      }

      LOBYTE(v13) = 1;
    }

LABEL_10:
    if (!v10)
    {
      pthread_set_qos_class_self_np(v9, 0);
      if (!v12)
      {
LABEL_38:
        v23 = 0;
        v24 = 2;
        v4 = v9;
        if (!__lk.__owns_)
        {
          goto LABEL_40;
        }

LABEL_39:
        std::mutex::unlock(__lk.__m_);
        goto LABEL_40;
      }

      v4 = v9;
LABEL_30:
      if (v5)
      {
        os_activity_scope_leave(&state);
      }

      if (v11)
      {
        os_activity_scope_enter(v11, &state);
        v23 = 0;
        v24 = 2;
        v5 = v11;
        if (__lk.__owns_)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v5 = 0;
        v23 = 0;
        v24 = 2;
        if (__lk.__owns_)
        {
          goto LABEL_39;
        }
      }

      goto LABEL_40;
    }

    if (v12)
    {
      goto LABEL_30;
    }

    if (v13)
    {
LABEL_81:
      ++*(a1 + 256);
      v49 = *(a1 + 80);
      v50 = *(*(a1 + 56) + 8 * (v49 / 0x66));
      v51 = v66;
      v66 = 0;
      if (v51 == v65)
      {
        (*(*v51 + 32))(v51);
      }

      else if (v51)
      {
        (*(*v51 + 40))(v51);
      }

      v52 = v50 + 40 * (v49 % 0x66);
      v53 = *(v52 + 24);
      if (v53)
      {
        if (v53 == v52)
        {
          v66 = v65;
          (*(**(v52 + 24) + 24))(*(v52 + 24), v65);
        }

        else
        {
          v66 = *(v52 + 24);
          *(v52 + 24) = 0;
        }
      }

      else
      {
        v66 = 0;
      }

      v54 = *(a1 + 80);
      v55 = *(*(a1 + 56) + 8 * (v54 / 0x66));
      v56 = v54 % 0x66;
      v63 = *(v55 + 40 * v56 + 32);
      if (v63)
      {
        v57 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::operator[](a1 + 264, &v63);
        ++*v57;
        v58 = *(a1 + 80);
        v55 = *(*(a1 + 56) + 8 * (v58 / 0x66));
        v56 = v58 % 0x66;
      }

      v59 = v55 + 40 * v56;
      v60 = *(v59 + 24);
      if (v60 == v59)
      {
        (*(*v60 + 32))(v60);
      }

      else if (v60)
      {
        (*(*v60 + 40))(v60);
      }

      v61 = vaddq_s64(*(a1 + 80), xmmword_257373F20);
      *(a1 + 80) = v61;
      if (v61.i64[0] >= 0xCCuLL)
      {
        operator delete(**(a1 + 56));
        v24 = 0;
        *(a1 + 56) += 8;
        *(a1 + 80) -= 102;
        v23 = 1;
        if (__lk.__owns_)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v24 = 0;
        v23 = 1;
        if (__lk.__owns_)
        {
          goto LABEL_39;
        }
      }

      goto LABEL_40;
    }

    if (*(a1 + 88))
    {
      v15 = 0;
      if (!a2)
      {
        goto LABEL_81;
      }

LABEL_77:
      if (!v15)
      {
        goto LABEL_81;
      }
    }

    if (v5)
    {
      os_activity_scope_leave(&state);
      v5 = 0;
      v23 = 0;
      v24 = 1;
      if (__lk.__owns_)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v23 = 0;
      v24 = 1;
      if (__lk.__owns_)
      {
        goto LABEL_39;
      }
    }

LABEL_40:
    if (!v23)
    {
      goto LABEL_63;
    }

    if (!v66)
    {
      std::__throw_bad_function_call[abi:nn200100]();
    }

    (*(*v66 + 48))(v66);
    std::mutex::lock(v6);
    v25 = *(a1 + 256) - 1;
    *(a1 + 256) = v25;
    v26 = v63;
    if (!v63)
    {
      goto LABEL_59;
    }

    v27 = *(a1 + 264);
    v28 = *(a1 + 280);
    if (v28)
    {
      v29 = (v28 - 1) & ((v63 >> 4) ^ (v63 >> 9));
      v30 = *(v27 + 16 * v29);
      if (v30 == v63)
      {
        goto LABEL_50;
      }

      v31 = 1;
      while (v30 != -4096)
      {
        v32 = v29 + v31++;
        v29 = v32 & (v28 - 1);
        v30 = *(v27 + 16 * v29);
        if (v30 == v63)
        {
          goto LABEL_50;
        }
      }
    }

    v29 = *(a1 + 280);
LABEL_50:
    v33 = v27 + 16 * v29;
    v34 = *(v33 + 8) - 1;
    *(v33 + 8) = v34;
    if (v34)
    {
      if (v26)
      {
        goto LABEL_52;
      }
    }

    else
    {
      *v33 = -8192;
      *(a1 + 272) = vadd_s32(*(a1 + 272), 0x1FFFFFFFFLL);
      v26 = v63;
      if (v63)
      {
LABEL_52:
        if (!v28)
        {
          goto LABEL_66;
        }

        v35 = v28 - 1;
        v36 = (v28 - 1) & ((v26 >> 4) ^ (v26 >> 9));
        v37 = *(v27 + 16 * v36);
        if (v37 != v26)
        {
          v38 = 1;
          while (v37 != -4096)
          {
            v39 = v36 + v38++;
            v36 = v39 & v35;
            v37 = *(v27 + 16 * v36);
            if (v37 == v26)
            {
              goto LABEL_61;
            }
          }

LABEL_66:
          v40 = *(a1 + 56);
          if (*(a1 + 64) != v40)
          {
            v41 = *(a1 + 80);
            v42 = (v40 + 8 * (v41 / 0x66));
            v43 = *v42;
            v44 = *v42 + 40 * (v41 % 0x66);
            v45 = *(v40 + 8 * ((*(a1 + 88) + v41) / 0x66)) + 40 * ((*(a1 + 88) + v41) % 0x66);
            while (v44 != v45)
            {
              if (*(v44 + 32) == v26)
              {
                goto LABEL_61;
              }

              v44 += 40;
              if (v44 - v43 == 4080)
              {
                v46 = v42[1];
                ++v42;
                v43 = v46;
                v44 = v46;
              }
            }
          }

          v47 = 1;
          v48 = *(a1 + 312);
          if (v48 == 1)
          {
LABEL_73:
            os_release(*(a1 + 304));
            *(a1 + 304) = 0;
          }

LABEL_74:
          std::mutex::unlock(v6);
          std::condition_variable::notify_all((a1 + 208));
          if ((v47 | v48) == 1)
          {
            std::condition_variable::notify_all((a1 + 160));
          }

          goto LABEL_62;
        }

        goto LABEL_61;
      }
    }

LABEL_59:
    if (!v25 && !*(a1 + 88))
    {
      v47 = 0;
      v48 = *(a1 + 312);
      if (v48 == 1)
      {
        goto LABEL_73;
      }

      goto LABEL_74;
    }

LABEL_61:
    std::mutex::unlock(v6);
LABEL_62:
    v24 = 0;
LABEL_63:
    result = v66;
    if (v66 == v65)
    {
      result = (*(*v66 + 32))(v66);
    }

    else if (v66)
    {
      result = (*(*v66 + 40))();
    }
  }

  while ((v24 | 2) == 2);
  return result;
}

BOOL llvm::StdThreadPool::workCompletedUnlocked(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    if (!*(a1 + 256))
    {
      return *(a1 + 88) == 0;
    }

    return 0;
  }

  v2 = *(a1 + 280);
  if (v2)
  {
    v3 = *(a1 + 264);
    v4 = v2 - 1;
    v5 = (v2 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v6 = *(v3 + 16 * v5);
    if (v6 != a2)
    {
      v7 = 1;
      while (v6 != -4096)
      {
        v8 = 0;
        v9 = v5 + v7++;
        v5 = v9 & v4;
        v6 = *(v3 + 16 * v5);
        if (v6 == a2)
        {
          return v8;
        }
      }

      goto LABEL_10;
    }

    return 0;
  }

LABEL_10:
  v11 = *(a1 + 56);
  if (*(a1 + 64) == v11)
  {
    return 1;
  }

  v12 = *(a1 + 80);
  v13 = (v11 + 8 * (v12 / 0x66));
  v14 = *v13;
  v15 = *v13 + 40 * (v12 % 0x66);
  v16 = *(v11 + 8 * ((*(a1 + 88) + v12) / 0x66)) + 40 * ((*(a1 + 88) + v12) % 0x66);
  if (v15 == v16)
  {
    return 1;
  }

  while (1)
  {
    v17 = *(v15 + 32);
    v18 = v17 == a2;
    v8 = v17 != a2;
    if (v18)
    {
      break;
    }

    v15 += 40;
    if (v15 - v14 == 4080)
    {
      v19 = v13[1];
      ++v13;
      v14 = v19;
      v15 = v19;
    }

    if (v15 == v16)
    {
      return 1;
    }
  }

  return v8;
}

void llvm::StdThreadPool::wait(llvm::StdThreadPool *this)
{
  v2.__m_ = (this + 96);
  v2.__owns_ = 1;
  std::mutex::lock((this + 96));
  while (*(this + 64) || *(this + 11))
  {
    std::condition_variable::wait((this + 208), &v2);
  }

  if (v2.__owns_)
  {
    std::mutex::unlock(v2.__m_);
  }
}

void llvm::StdThreadPool::wait(uint64_t a1, uint64_t a2)
{
  llvm::sys::RWMutexImpl::lock_shared((a1 + 32));
  current_id_impl = llvm::llvm_thread_get_current_id_impl();
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 == v7)
  {
LABEL_5:
    llvm::sys::RWMutexImpl::unlock_shared((a1 + 32));
    v24.__m_ = (a1 + 96);
    v24.__owns_ = 1;
    std::mutex::lock((a1 + 96));
    v9 = (a2 >> 4) ^ (a2 >> 9);
    v10 = *(a1 + 280);
    if (v10)
    {
      while (1)
      {
        v11 = *(a1 + 264);
        v12 = v10 - 1;
        v13 = v12 & v9;
        v14 = *(v11 + 16 * (v12 & v9));
        if (v14 != a2)
        {
          break;
        }

LABEL_7:
        std::condition_variable::wait((a1 + 208), &v24);
        v10 = *(a1 + 280);
        if (!v10)
        {
          goto LABEL_13;
        }
      }

      v15 = 1;
      while (v14 != -4096)
      {
        v16 = v13 + v15++;
        v13 = v16 & v12;
        v14 = *(v11 + 16 * v13);
        if (v14 == a2)
        {
          goto LABEL_7;
        }
      }
    }

LABEL_13:
    v17 = *(a1 + 56);
    if (*(a1 + 64) != v17)
    {
      v18 = *(a1 + 80);
      v19 = (v17 + 8 * (v18 / 0x66));
      v20 = *v19;
      v21 = *v19 + 40 * (v18 % 0x66);
      v22 = *(v17 + 8 * ((*(a1 + 88) + v18) / 0x66)) + 40 * ((*(a1 + 88) + v18) % 0x66);
      while (v21 != v22)
      {
        if (*(v21 + 32) == a2)
        {
          goto LABEL_7;
        }

        v21 += 40;
        if (v21 - v20 == 4080)
        {
          v23 = v19[1];
          ++v19;
          v20 = v23;
          v21 = v23;
        }
      }
    }

    if (v24.__owns_)
    {
      std::mutex::unlock(v24.__m_);
    }
  }

  else
  {
    v8 = current_id_impl;
    while (v8 != llvm::llvm_thread_get_id_impl(*v6, v5))
    {
      if (++v6 == v7)
      {
        goto LABEL_5;
      }
    }

    llvm::sys::RWMutexImpl::unlock_shared((a1 + 32));

    llvm::StdThreadPool::processTasks(a1, a2);
  }
}

BOOL llvm::StdThreadPool::isWorkerThread(pthread_rwlock_t **this)
{
  llvm::sys::RWMutexImpl::lock_shared(this + 4);
  current_id_impl = llvm::llvm_thread_get_current_id_impl();
  v4 = this[1];
  v5 = this[2];
  if (v4 == v5)
  {
    v9 = 0;
  }

  else
  {
    v6 = current_id_impl;
    opaque = v4->__opaque;
    do
    {
      id_impl = llvm::llvm_thread_get_id_impl(*(opaque - 1), v3);
      v9 = v6 == id_impl;
      v10 = v6 == id_impl || opaque == v5;
      opaque += 8;
    }

    while (!v10);
  }

  llvm::sys::RWMutexImpl::unlock_shared(this + 4);
  return v9;
}

void llvm::StdThreadPool::~StdThreadPool(llvm::StdThreadPool *this)
{
  *this = &unk_2868A1B68;
  std::mutex::lock((this + 96));
  *(this + 288) = 0;
  std::mutex::unlock((this + 96));
  std::condition_variable::notify_all((this + 160));
  llvm::sys::RWMutexImpl::lock_shared(this + 4);
  v3 = *(this + 1);
  for (i = *(this + 2); v3 != i; ++v3)
  {
    llvm::llvm_thread_join_impl(*v3, v2);
    *v3 = 0;
  }

  llvm::sys::RWMutexImpl::unlock_shared(this + 4);
  llvm::deallocate_buffer(*(this + 33), (16 * *(this + 70)));
}

{
  llvm::StdThreadPool::~StdThreadPool(this);
}

void sub_25721882C()
{

  JUMPOUT(0x259C63180);
}

BOOL llvm::StdThreadPool::setActivity(llvm::StdThreadPool *this, void *a2, char a3)
{
  std::mutex::lock((this + 96));
  *(this + 38) = a2;
  os_retain(a2);
  *(this + 312) = a3;
  std::mutex::unlock((this + 96));
  std::condition_variable::notify_all((this + 160));
  v6 = *(this + 75);

  return llvm::StdThreadPool::grow(this, v6);
}

void llvm::StdThreadPool::clearActivity(llvm::StdThreadPool *this)
{
  std::mutex::lock((this + 96));
  if (*(this + 64) || *(this + 11))
  {
    *(this + 312) = 1;

    std::mutex::unlock((this + 96));
  }

  else
  {
    os_release(*(this + 38));
    *(this + 38) = 0;
    std::mutex::unlock((this + 96));

    std::condition_variable::notify_all((this + 160));
  }
}

void llvm::StdThreadPool::raiseQOSIfNeeded(llvm::StdThreadPool *this, qos_class_t a2)
{
  std::mutex::lock((this + 96));
  if (*(this + 79) >= a2)
  {

    std::mutex::unlock((this + 96));
  }

  else
  {
    *(this + 79) = a2;
    std::mutex::unlock((this + 96));

    std::condition_variable::notify_all((this + 160));
  }
}

uint64_t llvm::SingleThreadExecutor::SingleThreadExecutor(uint64_t a1, uint64_t a2)
{
  v11 = a2;
  *a1 = &unk_2868A1BA8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  v3 = llvm::ThreadPoolStrategy::compute_thread_count(&v11);
  if (v3 == 1)
  {
    return a1;
  }

  v4 = v3;
  v5 = llvm::errs(v3);
  v6 = *(v5 + 4);
  if (*(v5 + 3) - v6 > 0x22uLL)
  {
    qmemcpy(v6, "Warning: request a ThreadPool with ", 35);
    *(v5 + 4) += 35;
    v8 = llvm::raw_ostream::operator<<(v5, v4);
    v9 = *(v8 + 4);
    if (*(v8 + 3) - v9 > 0x35uLL)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(v5, "Warning: request a ThreadPool with ", 0x23uLL);
    v8 = llvm::raw_ostream::operator<<(v7, v4);
    v9 = *(v8 + 4);
    if (*(v8 + 3) - v9 > 0x35uLL)
    {
LABEL_4:
      qmemcpy(v9, " threads, but LLVM_ENABLE_THREADS has been turned off\n", 54);
      *(v8 + 4) += 54;
      return a1;
    }
  }

  llvm::raw_ostream::write(v8, " threads, but LLVM_ENABLE_THREADS has been turned off\n", 0x36uLL);
  return a1;
}

_BYTE *llvm::SingleThreadExecutor::wait(_BYTE *this)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(this + 6))
  {
    v1 = this;
    do
    {
      v2 = *(v1 + 40);
      v3 = *(*(v1 + 16) + 8 * (v2 / 0x66));
      v4 = v2 % 0x66;
      v5 = v3 + 40 * v4;
      v6 = *(v5 + 24);
      if (v6)
      {
        if (v6 == v5)
        {
          v13 = v12;
          (*(**(v5 + 24) + 24))(*(v5 + 24), v12);
          v10 = *(*(v1 + 16) + 8 * (*(v1 + 40) / 0x66uLL)) + 40 * (*(v1 + 40) % 0x66uLL);
          v8 = *(v10 + 24);
          if (v8 != v10)
          {
LABEL_10:
            if (v8)
            {
              (*(*v8 + 40))(v8);
            }

            goto LABEL_14;
          }
        }

        else
        {
          v13 = *(v5 + 24);
          *(v5 + 24) = 0;
          v7 = v3 + 40 * v4;
          v8 = *(v7 + 24);
          if (v8 != v7)
          {
            goto LABEL_10;
          }
        }
      }

      else
      {
        v13 = 0;
        v9 = v3 + 40 * v4;
        v8 = *(v9 + 24);
        if (v8 != v9)
        {
          goto LABEL_10;
        }
      }

      (*(*v8 + 32))(v8);
LABEL_14:
      v11 = vaddq_s64(*(v1 + 40), xmmword_257373F20);
      *(v1 + 40) = v11;
      if (v11.i64[0] >= 0xCCuLL)
      {
        operator delete(**(v1 + 16));
        *(v1 + 16) += 8;
        *(v1 + 40) -= 102;
      }

      if (!v13)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v13 + 48))(v13);
      this = v13;
      if (v13 == v12)
      {
        this = (*(*v13 + 32))(v13);
      }

      else if (v13)
      {
        this = (*(*v13 + 40))();
      }
    }

    while (*(v1 + 48));
  }

  return this;
}

void llvm::SingleThreadExecutor::~SingleThreadExecutor(llvm::SingleThreadExecutor *this)
{
  *this = &unk_2868A1BA8;
  v1 = this + 8;
  llvm::SingleThreadExecutor::wait(this);
  std::deque<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *>>::~deque[abi:nn200100](v1);
}

{
  *this = &unk_2868A1BA8;
  v1 = this + 8;
  llvm::SingleThreadExecutor::wait(this);
  std::deque<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *>>::~deque[abi:nn200100](v1);
}

{
  *this = &unk_2868A1BA8;
  v1 = this + 8;
  llvm::SingleThreadExecutor::wait(this);
  std::deque<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *>>::~deque[abi:nn200100](v1);

  JUMPOUT(0x259C63180);
}

BOOL llvm::StdThreadPool::asyncEnqueue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  std::mutex::lock((a1 + 96));
  v6 = *(a2 + 24);
  if (v6)
  {
    if (v6 == a2)
    {
      v11 = v10;
      (*(*v6 + 24))(v6, v10);
    }

    else
    {
      v11 = *(a2 + 24);
      *(a2 + 24) = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = a3;
  std::deque<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *>>::emplace_back<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *>>((a1 + 48), v10);
  if (v11 == v10)
  {
    (*(*v11 + 32))(v11);
  }

  else if (v11)
  {
    (*(*v11 + 40))();
  }

  v7 = *(a1 + 256);
  v8 = *(a1 + 88);
  std::mutex::unlock((a1 + 96));
  std::condition_variable::notify_one((a1 + 160));
  return llvm::StdThreadPool::grow(a1, v7 + v8);
}

uint64_t llvm::SingleThreadExecutor::asyncEnqueue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v8 = v7;
      v4 = a1;
      v5 = a3;
      (*(*v3 + 24))(v3, v7);
      a3 = v5;
      a1 = v4;
    }

    else
    {
      v8 = *(a2 + 24);
      *(a2 + 24) = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = a3;
  std::deque<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *>>::emplace_back<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *>>((a1 + 8), v7);
  result = v8;
  if (v8 == v7)
  {
    return (*(*v8 + 32))(v8);
  }

  if (v8)
  {
    return (*(*v8 + 40))();
  }

  return result;
}

uint64_t std::deque<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *>>::emplace_back<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *>>(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 102 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
    v9 = *(a2 + 24);
    if (v9)
    {
LABEL_7:
      if (v9 == a2)
      {
        *(v8 + 24) = v8;
        (*(**(a2 + 24) + 24))(*(a2 + 24), v8);
        v4 = a1[1];
        v5 = a1[2];
      }

      else
      {
        *(v8 + 24) = v9;
        *(a2 + 24) = 0;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + 8 * (v7 / 0x66)) + 40 * (v7 % 0x66);
    v9 = *(a2 + 24);
    if (v9)
    {
      goto LABEL_7;
    }
  }

  *(v8 + 24) = 0;
LABEL_12:
  *(v8 + 32) = *(a2 + 32);
  v10 = a1[4];
  v11 = a1[5] + 1;
  a1[5] = v11;
  v12 = v10 + v11;
  v13 = (v4 + 8 * (v12 / 0x66));
  v14 = *v13 + 40 * (v12 % 0x66);
  if (v5 == v4)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  if (v15 == *v13)
  {
    return *(v13 - 1) + 4040;
  }

  else
  {
    return v15 - 40;
  }
}

void *std::deque<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x66;
  v3 = v1 - 102;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
}

uint64_t std::deque<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *>>::~deque[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    *(a1 + 40) = 0;
    v10 = 0;
    goto LABEL_15;
  }

  v4 = *(a1 + 32);
  v5 = &v2[v4 / 0x66];
  v6 = *v5 + 40 * (v4 % 0x66);
  v7 = v2[(*(a1 + 40) + v4) / 0x66] + 40 * ((*(a1 + 40) + v4) % 0x66);
  if (v6 == v7)
  {
    goto LABEL_13;
  }

  do
  {
    v8 = *(v6 + 24);
    if (v8 == v6)
    {
      (*(*v8 + 32))(v8);
      v6 += 40;
      if (v6 - *v5 != 4080)
      {
        continue;
      }

LABEL_11:
      v9 = v5[1];
      ++v5;
      v6 = v9;
      continue;
    }

    if (v8)
    {
      (*(*v8 + 40))(v8);
    }

    v6 += 40;
    if (v6 - *v5 == 4080)
    {
      goto LABEL_11;
    }
  }

  while (v6 != v7);
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
LABEL_13:
  *(a1 + 40) = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

LABEL_15:
  if (v10 == 1)
  {
    v11 = 51;
LABEL_20:
    *(a1 + 32) = v11;
  }

  else if (v10 == 2)
  {
    v11 = 102;
    goto LABEL_20;
  }

  if (v2 != v3)
  {
    do
    {
      v12 = *v2++;
      operator delete(v12);
    }

    while (v2 != v3);
    v14 = *(a1 + 8);
    v13 = *(a1 + 16);
    if (v13 != v14)
    {
      *(a1 + 16) = v13 + ((v14 - v13 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t llvm::thread::ThreadProxy<std::tuple<llvm::StdThreadPool::grow(int)::$_0>>(uint64_t a1, const llvm::Twine *a2)
{
  v3 = *a1;
  v5[0] = "llvm-worker-{0}";
  v5[1] = 15;
  v5[2] = &v8;
  v5[3] = 1;
  v6 = 1;
  v7[0] = &unk_2868A1C68;
  v7[1] = a1 + 8;
  v8 = v7;
  v10 = 263;
  v9 = v5;
  llvm::set_thread_name(&v9, a2);
  llvm::ThreadPoolStrategy::apply_thread_strategy((v3 + 292), *(a1 + 8));
  llvm::StdThreadPool::processTasks(v3, 0);
  MEMORY[0x259C63180](a1, 0x1020C403A5D3213);
  return 0;
}

uint64_t llvm::isTimeTraceVerbose(llvm *this)
{
  v1 = *TimeTraceProfilerInstance();
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 13580);
  }

  return v1 & 1;
}

void llvm::timeTraceProfilerCleanup(llvm *this)
{
  v1 = TimeTraceProfilerInstance();
  if (*v1)
  {
    llvm::TimeTraceProfiler::~TimeTraceProfiler(*v1);
    MEMORY[0x259C63180]();
  }

  *v1 = 0;
  if ((atomic_load_explicit(&_MergedGlobals_14, memory_order_acquire) & 1) == 0)
  {
    llvm::timeTraceProfilerCleanup();
  }

  std::mutex::lock(&stru_27F8754B8);
  v2 = qword_27F8754F8;
  v3 = qword_27F875500;
  if (qword_27F8754F8 != qword_27F875500)
  {
    do
    {
      if (*v2)
      {
        llvm::TimeTraceProfiler::~TimeTraceProfiler(*v2);
        MEMORY[0x259C63180]();
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = qword_27F8754F8;
  }

  qword_27F875500 = v2;

  std::mutex::unlock(&stru_27F8754B8);
}

void llvm::timeTraceProfilerFinishThread(llvm *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_14, memory_order_acquire) & 1) == 0)
  {
    llvm::timeTraceProfilerCleanup();
  }

  std::mutex::lock(&stru_27F8754B8);
  v1 = TimeTraceProfilerInstance();
  std::vector<mlir::Operation *>::push_back[abi:nn200100](&qword_27F8754F8, v1);
  *v1 = 0;

  std::mutex::unlock(&stru_27F8754B8);
}

void llvm::timeTraceProfilerWrite(llvm *this, llvm::raw_pwrite_stream *a2)
{
  v2 = *TimeTraceProfilerInstance();

  llvm::TimeTraceProfiler::write(v2, v3);
}

void llvm::TimeTraceProfiler::write(llvm::TimeTraceProfiler *this, llvm::raw_pwrite_stream *a2)
{
  v129 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&_MergedGlobals_14, memory_order_acquire) & 1) == 0)
  {
    llvm::timeTraceProfilerCleanup();
  }

  std::mutex::lock(&stru_27F8754B8);
  v123[17] = 0;
  v123[18] = a2;
  v123[19] = 0;
  v123[16] = 0;
  v122[0] = v123;
  v122[1] = 0x1000000001;
  v123[0] = 0;
  llvm::json::OStream::objectBegin(v122);
  llvm::json::OStream::attributeBegin(v122, "traceEvents", 0xBuLL);
  llvm::json::OStream::arrayBegin(v122);
  v5 = *(this + 38);
  if (v5)
  {
    v6 = 104 * v5;
    v7 = *(this + 18);
    do
    {
      v115 = *(this + 1696);
      v8 = *v7;
      v9 = *(v7 + 8);
      v120 = *v7 / 1000 + *(this + 1688) / -1000;
      v119 = (v9 / 1000 + v8 / -1000);
      *&__dst = v122;
      *(&__dst + 1) = this;
      v125 = &v115;
      v126 = &v120;
      v127 = v7;
      v128 = &v119;
      llvm::json::OStream::objectBegin(v122);
      _ZZZN4llvm17TimeTraceProfiler5writeERNS_17raw_pwrite_streamEENKUlRKT_yE_clINS_22TimeTraceProfilerEntryEEEDaS5_yENKUlvE_clEv(&__dst);
      llvm::json::OStream::objectEnd(v122);
      if (*(v7 + 96) == 1)
      {
        *&__dst = v122;
        *(&__dst + 1) = this;
        v125 = &v115;
        v126 = &v120;
        v127 = &v119;
        v128 = v7;
        llvm::json::OStream::objectBegin(v122);
        _ZZZN4llvm17TimeTraceProfiler5writeERNS_17raw_pwrite_streamEENKUlRKT_yE_clINS_22TimeTraceProfilerEntryEEEDaS5_yENKUlvE0_clEv(&__dst);
        llvm::json::OStream::objectEnd(v122);
      }

      v7 += 104;
      v6 -= 104;
    }

    while (v6);
  }

  v11 = qword_27F8754F8;
  v10 = qword_27F875500;
  if (qword_27F8754F8 != qword_27F875500)
  {
    v108 = qword_27F875500;
    do
    {
      __p = v11;
      v12 = *v11;
      v13 = *(*v11 + 152);
      if (v13)
      {
        v14 = *(v12 + 144);
        v15 = 104 * v13;
        do
        {
          v115 = *(v12 + 13568);
          v16 = *v14;
          v17 = *(v14 + 8);
          v120 = *v14 / 1000 + *(this + 1688) / -1000;
          v119 = (v17 / 1000 + v16 / -1000);
          *&__dst = v122;
          *(&__dst + 1) = this;
          v125 = &v115;
          v126 = &v120;
          v127 = v14;
          v128 = &v119;
          llvm::json::OStream::objectBegin(v122);
          _ZZZN4llvm17TimeTraceProfiler5writeERNS_17raw_pwrite_streamEENKUlRKT_yE_clINS_22TimeTraceProfilerEntryEEEDaS5_yENKUlvE_clEv(&__dst);
          llvm::json::OStream::objectEnd(v122);
          if (*(v14 + 96) == 1)
          {
            *&__dst = v122;
            *(&__dst + 1) = this;
            v125 = &v115;
            v126 = &v120;
            v127 = &v119;
            v128 = v14;
            llvm::json::OStream::objectBegin(v122);
            _ZZZN4llvm17TimeTraceProfiler5writeERNS_17raw_pwrite_streamEENKUlRKT_yE_clINS_22TimeTraceProfilerEntryEEEDaS5_yENKUlvE0_clEv(&__dst);
            llvm::json::OStream::objectEnd(v122);
          }

          v14 += 104;
          v15 -= 104;
        }

        while (v15);
      }

      v11 = (__p + 8);
    }

    while (__p + 8 != v108);
    v11 = qword_27F8754F8;
    v10 = qword_27F875500;
  }

  v18 = *(this + 1696);
  if (v11 != v10)
  {
    if (v10 - 8 == v11)
    {
      v19 = v11;
      do
      {
LABEL_29:
        v24 = *v19++;
        v25 = *(v24 + 13568);
        if (v18 <= v25)
        {
          v18 = v25;
        }
      }

      while (v19 != v10);
      goto LABEL_32;
    }

    v20 = ((v10 - 8 - v11) >> 3) + 1;
    v19 = (v11 + 8 * (v20 & 0x3FFFFFFFFFFFFFFELL));
    v21 = v11 + 8;
    v22 = v20 & 0x3FFFFFFFFFFFFFFELL;
    v23 = *(this + 1696);
    do
    {
      if (v18 <= *(*(v21 - 8) + 13568))
      {
        v18 = *(*(v21 - 8) + 13568);
      }

      if (v23 <= *(*v21 + 13568))
      {
        v23 = *(*v21 + 13568);
      }

      v21 += 16;
      v22 -= 2;
    }

    while (v22);
    if (v18 <= v23)
    {
      v18 = v23;
    }

    if (v20 != (v20 & 0x3FFFFFFFFFFFFFFELL))
    {
      goto LABEL_29;
    }
  }

LABEL_32:
  v107 = v18;
  v115 = 0;
  v116 = 0;
  v117 = 0x1800000000;
  v26 = *(this + 1684);
  v27 = *(this + 3370);
  if (v27)
  {
    v28 = *(this + 1684);
    if (*v26)
    {
      v29 = *v26 == -8;
    }

    else
    {
      v29 = 1;
    }

    if (v29)
    {
      do
      {
        v31 = v28[1];
        ++v28;
        v30 = v31;
        if (v31)
        {
          v32 = v30 == -8;
        }

        else
        {
          v32 = 1;
        }
      }

      while (v32);
    }

    v33 = &v26[v27];
    v113 = this;
    if (v28 == v33)
    {
LABEL_43:
      if (v11 == v10)
      {
        goto LABEL_88;
      }

      goto LABEL_54;
    }
  }

  else
  {
    v28 = *(this + 1684);
    v33 = &v26[v27];
    v113 = this;
    if (v26 == v33)
    {
      goto LABEL_43;
    }
  }

  v34 = *v28;
  do
  {
    v35 = *v34;
    v36 = *(v34 + 8);
    v37 = *(v34 + 16);
    v38 = llvm::StringMapImpl::hash((v34 + 24), *v34, v4);
    v39 = llvm::StringMap<mlir::TimeRecord,llvm::MallocAllocator>::try_emplace_with_hash<>(&v115, (v34 + 24), v35, v38);
    v40 = *v39;
    v41 = *(*v39 + 16) + v37;
    *(v40 + 8) = *(*v39 + 8) + v36;
    *(v40 + 16) = v41;
    do
    {
      v42 = v28[1];
      ++v28;
      v34 = v42;
      if (v42)
      {
        v43 = v34 == -8;
      }

      else
      {
        v43 = 1;
      }
    }

    while (v43);
  }

  while (v28 != v33);
  v11 = qword_27F8754F8;
  v10 = qword_27F875500;
  this = v113;
  if (qword_27F8754F8 != qword_27F875500)
  {
LABEL_54:
    v109 = v10;
    while (1)
    {
      v44 = *(*v11 + 13480);
      __pa = v11;
      v45 = *(*v11 + 13472);
      if (v44)
      {
        while (!*v45 || *v45 == -8)
        {
          ++v45;
        }
      }

      v47 = *(*v11 + 13472) + 8 * v44;
      if (v45 != v47)
      {
        break;
      }

LABEL_55:
      v11 = (__pa + 8);
      if (__pa + 8 == v109)
      {
        goto LABEL_88;
      }
    }

    v48 = *v45;
    while (1)
    {
      v49 = *v48;
      v50 = *(v48 + 8);
      v51 = *(v48 + 16);
      v52 = llvm::StringMapImpl::hash((v48 + 24), *v48, v4);
      v53 = llvm::StringMapImpl::LookupBucketFor(&v115, (v48 + 24), v49, v52);
      v54 = v115;
      v55 = v53;
      v56 = *(v115 + v53);
      if (v56 == -8)
      {
        break;
      }

      if (!v56)
      {
        goto LABEL_76;
      }

      this = v113;
LABEL_68:
      v57 = *(v56 + 16) + v51;
      *(v56 + 8) += v50;
      *(v56 + 16) = v57;
      do
      {
        v58 = v45[1];
        ++v45;
        v48 = v58;
        if (v58)
        {
          v59 = v48 == -8;
        }

        else
        {
          v59 = 1;
        }
      }

      while (v59);
      if (v45 == v47)
      {
        goto LABEL_55;
      }
    }

    LODWORD(v117) = v117 - 1;
LABEL_76:
    buffer = llvm::allocate_buffer(v49 + 25, 8uLL);
    v61 = buffer;
    v62 = (buffer + 3);
    if (v49)
    {
      memcpy(buffer + 3, (v48 + 24), v49);
    }

    v62[v49] = 0;
    v61[1] = 0;
    v61[2] = 0;
    *v61 = v49;
    v54[v55] = v61;
    ++HIDWORD(v116);
    v63 = llvm::StringMapImpl::RehashTable(&v115, v55);
    v64 = (v115 + 8 * v63);
    this = v113;
    v56 = *v64;
    if (*v64)
    {
      v65 = v56 == -8;
    }

    else
    {
      v65 = 1;
    }

    if (v65)
    {
      do
      {
        v66 = v64[1];
        ++v64;
        v56 = v66;
        if (v66)
        {
          v67 = v56 == -8;
        }

        else
        {
          v67 = 1;
        }
      }

      while (v67);
    }

    goto LABEL_68;
  }

LABEL_88:
  if (HIDWORD(v116))
  {
    operator new();
  }

  v81 = 0;
  if (v116)
  {
    v68 = v115;
    if (*v115)
    {
      v69 = *v115 == -8;
    }

    else
    {
      v69 = 1;
    }

    if (v69)
    {
      do
      {
        v71 = *(v68 + 1);
        v68 += 8;
        v70 = v71;
        if (v71)
        {
          v72 = v70 == -8;
        }

        else
        {
          v72 = 1;
        }
      }

      while (v72);
    }

    v73 = v115 + 8 * v116;
    if (v68 == v73)
    {
      goto LABEL_129;
    }
  }

  else
  {
    v68 = v115;
    v73 = v115 + 8 * v116;
    if (v115 == v73)
    {
LABEL_129:
      v75 = 0;
      goto LABEL_130;
    }
  }

  v74 = *v68;
  v75 = 0;
  do
  {
    v76 = *v74;
    if (*v74 >= 0x7FFFFFFFFFFFFFF8uLL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (v76 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v125) = *v74;
    if (v76)
    {
      memmove(&__dst, (v74 + 24), v76);
      *(&__dst + v76) = 0;
    }

    else
    {
      LOBYTE(__dst) = 0;
    }

    v77 = v75 - v81;
    v78 = 0xCCCCCCCCCCCCCCCDLL * ((v75 - v81) >> 3) + 1;
    if (v78 > 0x666666666666666)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (0x999999999999999ALL * (-v81 >> 3) > v78)
    {
      v78 = 0x999999999999999ALL * (-v81 >> 3);
    }

    if (0xCCCCCCCCCCCCCCCDLL * (-v81 >> 3) >= 0x333333333333333)
    {
      v79 = 0x666666666666666;
    }

    else
    {
      v79 = v78;
    }

    if (v79)
    {
      if (v79 <= 0x666666666666666)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v80 = 8 * ((v75 - v81) >> 3);
    *v80 = __dst;
    *(v80 + 16) = v125;
    v125 = 0;
    __dst = 0uLL;
    *(v80 + 24) = *(v74 + 8);
    memcpy((v80 - v77), v81, v77);
    if (v81)
    {
      operator delete(v81);
      this = v113;
      if (SHIBYTE(v125) < 0)
      {
        operator delete(__dst);
      }

      v81 = v80 - v77;
    }

    else
    {
      v81 = v80 - v77;
      this = v113;
    }

    do
    {
      v82 = *(v68 + 1);
      v68 += 8;
      v74 = v82;
      if (v82)
      {
        v83 = v74 == -8;
      }

      else
      {
        v83 = 1;
      }
    }

    while (v83);
    v75 = (v80 + 40);
  }

  while (v68 != v73);
LABEL_130:
  v84 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v75 - v81) >> 3));
  if (v75 == v81)
  {
    v85 = 0;
  }

  else
  {
    v85 = v84;
  }

  std::__introsort<std::_ClassicAlgPolicy,llvm::TimeTraceProfiler::write(llvm::raw_pwrite_stream &)::{lambda(std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>> const&,std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>> const&)#1} &,std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>*,false>(v81, v75, &__dst, v85, 1);
  v114 = v107 + 1;
  for (__pb = v81; v81 != v75; v81 += 40)
  {
    v120 = *(v81 + 32) / 1000;
    v87 = *(v81 + 23);
    if (v87 >= 0)
    {
      v88 = v81;
    }

    else
    {
      v88 = *v81;
    }

    if (v87 >= 0)
    {
      v89 = *(v81 + 23);
    }

    else
    {
      v89 = *(v81 + 8);
    }

    v90 = llvm::StringMapImpl::hash(v88, v89, v86);
    v119 = *(*llvm::StringMap<mlir::TimeRecord,llvm::MallocAllocator>::try_emplace_with_hash<>(&v115, v88, v89, v90) + 8);
    *&__dst = v122;
    *(&__dst + 1) = this;
    v125 = &v114;
    v126 = &v120;
    v127 = v81;
    v128 = &v119;
    llvm::json::OStream::objectBegin(v122);
    llvm::TimeTraceProfiler::write(llvm::raw_pwrite_stream &)::{lambda(void)#1}::operator()(&__dst);
    llvm::json::OStream::objectEnd(v122);
    ++v114;
  }

  v91 = *(this + 1696);
  v92 = this + 13512;
  v93 = *(this + 13535);
  if (v93 < 0)
  {
    v92 = *(this + 1689);
  }

  if (v93 < 0)
  {
    v93 = *(this + 1690);
  }

  v120 = v92;
  v121 = v93;
  v118 = v91;
  v119 = "process_name";
  *&__dst = v122;
  *(&__dst + 1) = this;
  v125 = &v118;
  v126 = &v119;
  v127 = &v120;
  llvm::json::OStream::objectBegin(v122);
  llvm::TimeTraceProfiler::write(llvm::raw_pwrite_stream &)::{lambda(char const*,unsigned long long,llvm::StringRef)#1}::operator() const(char const*,unsigned long long,llvm::StringRef)::{lambda(void)#1}::operator()(&__dst);
  llvm::json::OStream::objectEnd(v122);
  v94 = *(this + 1696);
  v95 = *(this + 1694);
  v120 = *(this + 1693);
  v121 = v95;
  v118 = v94;
  v119 = "thread_name";
  *&__dst = v122;
  *(&__dst + 1) = this;
  v125 = &v118;
  v126 = &v119;
  v127 = &v120;
  llvm::json::OStream::objectBegin(v122);
  llvm::TimeTraceProfiler::write(llvm::raw_pwrite_stream &)::{lambda(char const*,unsigned long long,llvm::StringRef)#1}::operator() const(char const*,unsigned long long,llvm::StringRef)::{lambda(void)#1}::operator()(&__dst);
  llvm::json::OStream::objectEnd(v122);
  v96 = this;
  v97 = qword_27F8754F8;
  v98 = qword_27F875500;
  while (v97 != v98)
  {
    v99 = *v97++;
    v100 = v99[1696];
    v101 = v99[1694];
    v120 = v99[1693];
    v121 = v101;
    v118 = v100;
    v119 = "thread_name";
    *&__dst = v122;
    *(&__dst + 1) = v96;
    v125 = &v118;
    v126 = &v119;
    v127 = &v120;
    llvm::json::OStream::objectBegin(v122);
    llvm::TimeTraceProfiler::write(llvm::raw_pwrite_stream &)::{lambda(char const*,unsigned long long,llvm::StringRef)#1}::operator() const(char const*,unsigned long long,llvm::StringRef)::{lambda(void)#1}::operator()(&__dst);
    llvm::json::OStream::objectEnd(v122);
  }

  llvm::json::OStream::arrayEnd(v122);
  llvm::json::OStream::attributeEnd(v122);
  v102 = *(v96 + 1687);
  LOWORD(__dst) = 3;
  *(&__dst + 1) = v102;
  llvm::json::OStream::attributeBegin(v122, "beginningOfTime", 0xFuLL);
  llvm::json::OStream::value(v122, &__dst);
  llvm::json::OStream::attributeEnd(v122);
  llvm::json::Value::destroy(&__dst);
  llvm::json::OStream::objectEnd(v122);
  if (__pb)
  {
    while (v75 != __pb)
    {
      v103 = *(v75 - 17);
      v75 = (v75 - 40);
      if (v103 < 0)
      {
        operator delete(*v75);
      }
    }

    operator delete(__pb);
  }

  if (HIDWORD(v116) && v116)
  {
    v104 = 0;
    do
    {
      v105 = *(v115 + v104);
      if (v105 != -8 && v105 != 0)
      {
        llvm::deallocate_buffer(v105, (*v105 + 25));
      }

      v104 += 8;
    }

    while (8 * v116 != v104);
  }

  free(v115);
  if (v122[0] != v123)
  {
    free(v122[0]);
  }

  std::mutex::unlock(&stru_27F8754B8);
}

void llvm::timeTraceProfilerWrite(const void *a1@<X0>, size_t a2@<X1>, _BYTE *a3@<X2>, size_t a4@<X3>, void *a5@<X8>)
{
  if (!a1)
  {
    memset(&__dst, 0, sizeof(__dst));
    goto LABEL_12;
  }

  if (a2 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_41;
  }

  if (a2 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = a2;
  if (a2)
  {
    memmove(&__dst, a1, a2);
  }

  __dst.__r_.__value_.__s.__data_[a2] = 0;
  size = __dst.__r_.__value_.__l.__size_;
  v10 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v10 = __dst.__r_.__value_.__l.__size_;
  }

  if (!v10)
  {
LABEL_12:
    if (a4 == 1)
    {
      if (*a3 == 45)
      {
        *(&v17[0].__r_.__value_.__s + 23) = 3;
        LODWORD(v17[0].__r_.__value_.__l.__data_) = 7632239;
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_28;
        }

        goto LABEL_29;
      }

      if (a3)
      {
        *(&v17[0].__r_.__value_.__s + 23) = 1;
        goto LABEL_26;
      }

LABEL_23:
      memset(v17, 0, 24);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_28;
      }

      goto LABEL_29;
    }

    if (!a3)
    {
      goto LABEL_23;
    }

    if (a4 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (a4 >= 0x17)
      {
        operator new();
      }

      *(&v17[0].__r_.__value_.__s + 23) = a4;
      if (!a4)
      {
LABEL_27:
        v17[0].__r_.__value_.__s.__data_[a4] = 0;
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_28:
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

LABEL_29:
        __dst = v17[0];
        std::string::append(&__dst, ".time-trace");
        size = __dst.__r_.__value_.__l.__size_;
        goto LABEL_30;
      }

LABEL_26:
      memmove(v17, a3, a4);
      goto LABEL_27;
    }

LABEL_41:
    std::string::__throw_length_error[abi:nn200100]();
  }

LABEL_30:
  LODWORD(v18[0]) = 0;
  v18[1] = std::system_category();
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v12 = size;
  }

  llvm::raw_fd_ostream::raw_fd_ostream(v17, p_dst, v12, v18, 3);
  if (LODWORD(v18[0]))
  {
    std::operator+<char>();
    v16 = 260;
    p_p = &__p;
    llvm::Twine::str(&p_p, &v20);
    llvm::createStringError();
  }

  v13 = TimeTraceProfilerInstance();
  llvm::TimeTraceProfiler::write(*v13, v17);
  *a5 = 0;
  llvm::raw_fd_ostream::~raw_fd_ostream(v17);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

uint64_t llvm::timeTraceProfilerBegin(const void *a1, size_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v6 = *TimeTraceProfilerInstance();
  if (v6)
  {
    if (a2 < 0x7FFFFFFFFFFFFFF8)
    {
      if (a2 < 0x17)
      {
        v10 = a2;
        if (a2)
        {
          memmove(&__dst, a1, a2);
        }

        *(&__dst + a2) = 0;
        v8 = v11;
        llvm::TimeTraceProfiler::begin(v6, &__dst, llvm::function_ref<std::string ()(void)>::callback_fn<llvm::timeTraceProfilerBegin(llvm::StringRef,llvm::StringRef)::$_0>, &v8);
      }

      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return 0;
}

void llvm::TimeTraceProfiler::begin(uint64_t a1, uint64_t a2, void (*a3)(void **__return_ptr, uint64_t), uint64_t a4)
{
  std::chrono::steady_clock::now();
  a3(__p, a4);
  operator new();
}

{
  std::chrono::steady_clock::now();
  a3(v6, a4);
  operator new();
}

uint64_t llvm::timeTraceProfilerBegin(const void *a1, size_t a2, void (*a3)(void **__return_ptr, uint64_t), uint64_t a4)
{
  v8 = *TimeTraceProfilerInstance();
  if (v8)
  {
    if (a2 < 0x7FFFFFFFFFFFFFF8)
    {
      if (a2 < 0x17)
      {
        v11 = a2;
        if (a2)
        {
          memmove(&__dst, a1, a2);
        }

        *(&__dst + a2) = 0;
        llvm::TimeTraceProfiler::begin(v8, &__dst, a3, a4);
      }

      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return 0;
}

{
  v8 = *TimeTraceProfilerInstance();
  if (v8)
  {
    if (a2 < 0x7FFFFFFFFFFFFFF8)
    {
      if (a2 < 0x17)
      {
        v11 = a2;
        if (a2)
        {
          memmove(&__dst, a1, a2);
        }

        *(&__dst + a2) = 0;
        llvm::TimeTraceProfiler::begin(v8, &__dst, a3, a4);
      }

      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return 0;
}

uint64_t llvm::timeTraceAsyncProfilerBegin(const void *a1, size_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v6 = *TimeTraceProfilerInstance();
  if (v6)
  {
    if (a2 < 0x7FFFFFFFFFFFFFF8)
    {
      if (a2 < 0x17)
      {
        v10 = a2;
        if (a2)
        {
          memmove(&__dst, a1, a2);
        }

        *(&__dst + a2) = 0;
        v8 = v11;
        llvm::TimeTraceProfiler::begin(v6, &__dst, llvm::function_ref<std::string ()(void)>::callback_fn<llvm::timeTraceAsyncProfilerBegin(llvm::StringRef,llvm::StringRef)::$_0>, &v8);
      }

      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return 0;
}

uint64_t *llvm::timeTraceProfilerEnd(llvm *this)
{
  result = *TimeTraceProfilerInstance();
  if (result)
  {
    v2 = *(*result + 8 * *(result + 2) - 8);

    return llvm::TimeTraceProfiler::end(result, v2);
  }

  return result;
}

uint64_t *llvm::timeTraceProfilerEnd()
{
  result = *TimeTraceProfilerInstance();
  if (result)
  {

    return llvm::TimeTraceProfiler::end(result, v1);
  }

  return result;
}

uint64_t *llvm::TimeTraceProfiler::end(uint64_t a1, uint64_t a2)
{
  v4.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  *(a2 + 8) = v4;
  v6 = v4.__d_.__rep_ - *a2;
  if (v6 / 1000 >= *(a1 + 13576))
  {
    llvm::SmallVectorImpl<llvm::TimeTraceProfilerEntry>::emplace_back<llvm::TimeTraceProfilerEntry&>(a1 + 144, a2);
  }

  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *a1 + 8 * v8 - 8;
  v10 = (a2 + 16);
  if (v9 == *a1)
  {
    LOBYTE(v11) = *(a2 + 39);
    v12 = *(a2 + 24);
LABEL_5:
    if ((v11 & 0x80u) == 0)
    {
      v13 = (a2 + 16);
    }

    else
    {
      v13 = *v10;
    }

    if ((v11 & 0x80u) == 0)
    {
      v14 = v11;
    }

    else
    {
      v14 = v12;
    }

    v15 = llvm::StringMapImpl::hash(v13, v14, v5.__d_.__rep_);
    v16 = llvm::StringMap<mlir::TimeRecord,llvm::MallocAllocator>::try_emplace_with_hash<>((a1 + 13472), v13, v14, v15);
    v17.i64[0] = vdupq_n_s64(1uLL).u64[0];
    v17.i64[1] = v6;
    *(*v16 + 8) = vaddq_s64(*(*v16 + 8), v17);
    v7 = *a1;
    v8 = *(a1 + 8);
  }

  else
  {
    v11 = *(a2 + 39);
    v12 = *(a2 + 24);
    if (v11 >= 0)
    {
      v21 = *(a2 + 39);
    }

    else
    {
      v21 = *(a2 + 24);
    }

    if ((*(a2 + 39) & 0x80) != 0)
    {
      v41 = v6;
      v22 = *v10;
      while (1)
      {
        v33 = *(v9 - 8);
        v9 -= 8;
        v32 = v33;
        v34 = *(v33 + 39);
        v35 = v34;
        v36 = *(v33 + 24);
        if ((v34 & 0x80u) != 0)
        {
          v34 = v36;
        }

        if (v34 == v21)
        {
          v39 = *(v32 + 16);
          v37 = v32 + 16;
          v38 = v39;
          v40 = (v35 >= 0 ? v37 : v38);
          if (!memcmp(v40, v22, v21))
          {
            break;
          }
        }

        if (v9 == v7)
        {
          v6 = v41;
          goto LABEL_5;
        }
      }
    }

    else
    {
      while (1)
      {
        v24 = *(v9 - 8);
        v9 -= 8;
        v23 = v24;
        v25 = *(v24 + 39);
        v26 = v25;
        v27 = *(v24 + 24);
        if ((v25 & 0x80u) != 0)
        {
          v25 = v27;
        }

        if (v25 == v21)
        {
          v30 = *(v23 + 16);
          v28 = v23 + 16;
          v29 = v30;
          v31 = (v26 >= 0 ? v28 : v29);
          if (!memcmp(v31, (a2 + 16), v21))
          {
            break;
          }
        }

        if (v9 == v7)
        {
          goto LABEL_5;
        }
      }
    }
  }

  v18 = std::remove_if[abi:nn200100]<std::unique_ptr<llvm::TimeTraceProfilerEntry> *,llvm::TimeTraceProfiler::end(llvm::TimeTraceProfilerEntry&)::{lambda(std::unique_ptr<llvm::TimeTraceProfilerEntry> const&)#2}>(v7, &v7[v8], a2);
  v19 = (*a1 + 8 * *(a1 + 8));

  return llvm::SmallVectorImpl<std::unique_ptr<llvm::TimeTraceProfilerEntry>>::erase(a1, v18, v19);
}

uint64_t llvm::TimeTraceProfiler::TimeTraceProfiler(uint64_t a1, int a2, const void *a3, size_t a4, char a5)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x1000000000;
  *(a1 + 144) = a1 + 160;
  *(a1 + 152) = 0x8000000000;
  *(a1 + 13472) = 0u;
  *(a1 + 13488) = 0x1800000000;
  *(a1 + 13496) = std::chrono::system_clock::now();
  *(a1 + 13504) = std::chrono::steady_clock::now();
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (a4 >= 0x17)
  {
    operator new();
  }

  v10 = (a1 + 13512);
  *(a1 + 13535) = a4;
  if (a4)
  {
    memmove(v10, a3, a4);
  }

  *(v10 + a4) = 0;
  ProcessId = llvm::sys::Process::getProcessId();
  *(a1 + 13536) = ProcessId;
  *(a1 + 13544) = a1 + 13568;
  *(a1 + 13552) = 0u;
  *(a1 + 13568) = llvm::get_threadid(ProcessId);
  *(a1 + 13576) = a2;
  *(a1 + 13580) = a5;
  llvm::get_thread_name((a1 + 13544));
  return a1;
}

void llvm::TimeTraceProfiler::~TimeTraceProfiler(llvm::TimeTraceProfiler *this)
{
  v2 = *(this + 1693);
  if (v2 != this + 13568)
  {
    free(v2);
  }

  if (*(this + 13535) < 0)
  {
    operator delete(*(this + 1689));
  }

  if (*(this + 3371))
  {
    v3 = *(this + 3370);
    if (v3)
    {
      v4 = 0;
      do
      {
        v5 = *(*(this + 1684) + v4);
        if (v5 != -8 && v5 != 0)
        {
          llvm::deallocate_buffer(v5, (*v5 + 25));
        }

        v4 += 8;
      }

      while (8 * v3 != v4);
    }
  }

  free(*(this + 1684));
  v7 = *(this + 18);
  v8 = *(this + 38);
  if (v8)
  {
    v9 = -104 * v8;
    v10 = &v7[104 * v8 - 41];
    while (1)
    {
      if (v10[24] < 0)
      {
        operator delete(*(v10 + 1));
        if ((*v10 & 0x80000000) == 0)
        {
LABEL_19:
          if (*(v10 - 24) < 0)
          {
            goto LABEL_23;
          }

          goto LABEL_16;
        }
      }

      else if ((*v10 & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

      operator delete(*(v10 - 23));
      if (*(v10 - 24) < 0)
      {
LABEL_23:
        operator delete(*(v10 - 47));
      }

LABEL_16:
      v10 -= 104;
      v9 += 104;
      if (!v9)
      {
        v7 = *(this + 18);
        break;
      }
    }
  }

  if (v7 != this + 160)
  {
    free(v7);
  }

  llvm::SmallVector<std::unique_ptr<llvm::TimeTraceProfilerEntry>,16u>::~SmallVector(this);
}

char **llvm::SmallVector<std::unique_ptr<llvm::TimeTraceProfilerEntry>,16u>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = 8 * v3;
    v5 = v2 - 8;
    while (1)
    {
      v6 = *&v5[v4];
      *&v5[v4] = 0;
      if (!v6)
      {
        goto LABEL_4;
      }

      if (*(v6 + 87) < 0)
      {
        operator delete(*(v6 + 64));
        if ((*(v6 + 63) & 0x80000000) == 0)
        {
LABEL_8:
          if (*(v6 + 39) < 0)
          {
            goto LABEL_12;
          }

          goto LABEL_3;
        }
      }

      else if ((*(v6 + 63) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      operator delete(*(v6 + 40));
      if (*(v6 + 39) < 0)
      {
LABEL_12:
        operator delete(*(v6 + 16));
      }

LABEL_3:
      MEMORY[0x259C63180](v6, 0x1012C40A185F1B1);
LABEL_4:
      v4 -= 8;
      if (!v4)
      {
        v2 = *a1;
        break;
      }
    }
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

void anonymous namespace::TimeTraceProfilerInstances::~TimeTraceProfilerInstances(std::mutex *this)
{
  sig = this[1].__m_.__sig;
  if (sig)
  {
    *this[1].__m_.__opaque = sig;
    v3 = this;
    operator delete(sig);
    this = v3;
    v1 = vars8;
  }

  std::mutex::~mutex(this);
}

void _ZZZN4llvm17TimeTraceProfiler5writeERNS_17raw_pwrite_streamEENKUlRKT_yE_clINS_22TimeTraceProfilerEntryEEEDaS5_yENKUlvE_clEv(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*(a1 + 8) + 13536);
  LOWORD(v38) = 3;
  v39.__r_.__value_.__r.__words[0] = v3;
  llvm::json::OStream::attributeBegin(v2, "pid", 3uLL);
  llvm::json::OStream::value(v2, &v38);
  llvm::json::OStream::attributeEnd(v2);
  llvm::json::Value::destroy(&v38);
  v4 = *a1;
  v5 = **(a1 + 16);
  LOWORD(v38) = 3;
  v39.__r_.__value_.__r.__words[0] = v5;
  llvm::json::OStream::attributeBegin(v4, "tid", 3uLL);
  llvm::json::OStream::value(v4, &v38);
  llvm::json::OStream::attributeEnd(v4);
  llvm::json::Value::destroy(&v38);
  v6 = *a1;
  v7 = **(a1 + 24);
  LOWORD(v38) = 3;
  v39.__r_.__value_.__r.__words[0] = v7;
  llvm::json::OStream::attributeBegin(v6, "ts", 2uLL);
  llvm::json::OStream::value(v6, &v38);
  llvm::json::OStream::attributeEnd(v6);
  llvm::json::Value::destroy(&v38);
  v8 = *(a1 + 32);
  v9 = *a1;
  if (*(v8 + 96) == 1)
  {
    if (*(v8 + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&v37, *(v8 + 16), *(v8 + 24));
    }

    else
    {
      v37 = *(v8 + 16);
    }

    LOWORD(v38) = 6;
    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v37;
    }

    else
    {
      v15 = v37.__r_.__value_.__r.__words[0];
    }

    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = SHIBYTE(v37.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v37.__r_.__value_.__l.__size_;
    }

    if (!llvm::json::isUTF8(v15, size, 0))
    {
      llvm::Bisector<std::string>::serializeToFile(&v37.__r_.__value_.__r.__words[2] + 7, &v37, &v37.__r_.__value_.__l.__size_, v17, v18, v19, v20, v21);
    }

    v39 = v37;
    memset(&v37, 0, sizeof(v37));
    llvm::json::OStream::attributeBegin(v9, "cat", 3uLL);
    llvm::json::OStream::value(v9, &v38);
    llvm::json::OStream::attributeEnd(v9);
    llvm::json::Value::destroy(&v38);
    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    v22 = *a1;
    llvm::json::Value::Value(&v38, "b", 1uLL);
    llvm::json::OStream::attributeBegin(v22, "ph", 2uLL);
    llvm::json::OStream::value(v22, &v38);
    llvm::json::OStream::attributeEnd(v22);
    llvm::json::Value::destroy(&v38);
    v10 = *a1;
    LOWORD(v38) = 3;
    v39.__r_.__value_.__r.__words[0] = 0;
    v12 = "id";
    v13 = v10;
    v14 = 2;
  }

  else
  {
    llvm::json::Value::Value(&v38, "X", 1uLL);
    llvm::json::OStream::attributeBegin(v9, "ph", 2uLL);
    llvm::json::OStream::value(v9, &v38);
    llvm::json::OStream::attributeEnd(v9);
    llvm::json::Value::destroy(&v38);
    v10 = *a1;
    v11 = **(a1 + 40);
    LOWORD(v38) = 3;
    v39.__r_.__value_.__r.__words[0] = v11;
    v12 = "dur";
    v13 = v10;
    v14 = 3;
  }

  llvm::json::OStream::attributeBegin(v13, v12, v14);
  llvm::json::OStream::value(v10, &v38);
  llvm::json::OStream::attributeEnd(v10);
  llvm::json::Value::destroy(&v38);
  v23 = *a1;
  v24 = *(a1 + 32);
  if (*(v24 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v24 + 16), *(v24 + 24));
  }

  else
  {
    __p = *(v24 + 16);
  }

  LOWORD(v38) = 6;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v26 = __p.__r_.__value_.__l.__size_;
  }

  if (!llvm::json::isUTF8(p_p, v26, 0))
  {
    llvm::Bisector<std::string>::serializeToFile(&__p.__r_.__value_.__r.__words[2] + 7, &__p, &__p.__r_.__value_.__l.__size_, v27, v28, v29, v30, v31);
  }

  v39 = __p;
  memset(&__p, 0, sizeof(__p));
  llvm::json::OStream::attributeBegin(v23, "name", 4uLL);
  llvm::json::OStream::value(v23, &v38);
  llvm::json::OStream::attributeEnd(v23);
  llvm::json::Value::destroy(&v38);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v32 = *(a1 + 32);
    v33 = *(v32 + 63);
    if ((v33 & 0x8000000000000000) == 0)
    {
      goto LABEL_30;
    }

LABEL_33:
    if (!*(v32 + 48))
    {
      goto LABEL_34;
    }

LABEL_37:
    v35 = *a1;
    v38 = v32;
    v39.__r_.__value_.__r.__words[0] = v35;
    llvm::json::OStream::attributeBegin(v35, "args", 4uLL);
    llvm::json::OStream::objectBegin(v35);
    _ZZZZN4llvm17TimeTraceProfiler5writeERNS_17raw_pwrite_streamEENKUlRKT_yE_clINS_22TimeTraceProfilerEntryEEEDaS5_yENKUlvE_clEvENKUlvE_clEv(&v38);
    llvm::json::OStream::objectEnd(v35);
    llvm::json::OStream::attributeEnd(v35);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  v32 = *(a1 + 32);
  v33 = *(v32 + 63);
  if (v33 < 0)
  {
    goto LABEL_33;
  }

LABEL_30:
  if (v33)
  {
    goto LABEL_37;
  }

LABEL_34:
  v34 = *(v32 + 87);
  if (v34 < 0)
  {
    v34 = *(v32 + 72);
  }

  if (v34)
  {
    goto LABEL_37;
  }
}

void _ZZZZN4llvm17TimeTraceProfiler5writeERNS_17raw_pwrite_streamEENKUlRKT_yE_clINS_22TimeTraceProfilerEntryEEEDaS5_yENKUlvE_clEvENKUlvE_clEv(void *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if (*(*a1 + 63) < 0)
  {
    v4 = *(v2 + 48);
    if (!v4)
    {
      goto LABEL_17;
    }

    v3 = a1[1];
    std::string::__init_copy_ctor_external(&v24, *(v2 + 40), v4);
  }

  else
  {
    if (!*(*a1 + 63))
    {
      goto LABEL_17;
    }

    v3 = a1[1];
    v24 = *(v2 + 40);
  }

  LOWORD(v25) = 6;
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v24;
  }

  else
  {
    v5 = v24.__r_.__value_.__r.__words[0];
  }

  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v24.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v24.__r_.__value_.__l.__size_;
  }

  if (!llvm::json::isUTF8(v5, size, 0))
  {
    llvm::Bisector<std::string>::serializeToFile(&v24.__r_.__value_.__r.__words[2] + 7, &v24, &v24.__r_.__value_.__l.__size_, v7, v8, v9, v10, v11);
  }

  v26 = v24;
  memset(&v24, 0, sizeof(v24));
  llvm::json::OStream::attributeBegin(v3, "detail", 6uLL);
  llvm::json::OStream::value(v3, &v25);
  llvm::json::OStream::attributeEnd(v3);
  llvm::json::Value::destroy(&v25);
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  v2 = *a1;
LABEL_17:
  if (*(v2 + 87) < 0)
  {
    v13 = *(v2 + 72);
    if (!v13)
    {
      goto LABEL_33;
    }

    v12 = a1[1];
    std::string::__init_copy_ctor_external(&__p, *(v2 + 64), v13);
  }

  else
  {
    if (!*(v2 + 87))
    {
      goto LABEL_33;
    }

    v12 = a1[1];
    __p = *(v2 + 64);
  }

  LOWORD(v25) = 6;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = __p.__r_.__value_.__l.__size_;
  }

  if (!llvm::json::isUTF8(p_p, v15, 0))
  {
    llvm::Bisector<std::string>::serializeToFile(&__p.__r_.__value_.__r.__words[2] + 7, &__p, &__p.__r_.__value_.__l.__size_, v16, v17, v18, v19, v20);
  }

  v26 = __p;
  memset(&__p, 0, sizeof(__p));
  llvm::json::OStream::attributeBegin(v12, "file", 4uLL);
  llvm::json::OStream::value(v12, &v25);
  llvm::json::OStream::attributeEnd(v12);
  llvm::json::Value::destroy(&v25);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v2 = *a1;
LABEL_33:
  v21 = *(v2 + 88);
  if (v21 >= 1)
  {
    v22 = a1[1];
    LOWORD(v25) = 3;
    v26.__r_.__value_.__r.__words[0] = v21;
    llvm::json::OStream::attributeBegin(v22, "line", 4uLL);
    llvm::json::OStream::value(v22, &v25);
    llvm::json::OStream::attributeEnd(v22);
    llvm::json::Value::destroy(&v25);
  }
}

void _ZZZN4llvm17TimeTraceProfiler5writeERNS_17raw_pwrite_streamEENKUlRKT_yE_clINS_22TimeTraceProfilerEntryEEEDaS5_yENKUlvE0_clEv(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*(a1 + 8) + 13536);
  LOWORD(v30) = 3;
  v31.__r_.__value_.__r.__words[0] = v3;
  llvm::json::OStream::attributeBegin(v2, "pid", 3uLL);
  llvm::json::OStream::value(v2, &v30);
  llvm::json::OStream::attributeEnd(v2);
  llvm::json::Value::destroy(&v30);
  v4 = *a1;
  v5 = **(a1 + 16);
  LOWORD(v30) = 3;
  v31.__r_.__value_.__r.__words[0] = v5;
  llvm::json::OStream::attributeBegin(v4, "tid", 3uLL);
  llvm::json::OStream::value(v4, &v30);
  llvm::json::OStream::attributeEnd(v4);
  llvm::json::Value::destroy(&v30);
  v6 = *a1;
  v7 = **(a1 + 32) + **(a1 + 24);
  LOWORD(v30) = 3;
  v31.__r_.__value_.__r.__words[0] = v7;
  llvm::json::OStream::attributeBegin(v6, "ts", 2uLL);
  llvm::json::OStream::value(v6, &v30);
  llvm::json::OStream::attributeEnd(v6);
  llvm::json::Value::destroy(&v30);
  v8 = *a1;
  v9 = *(a1 + 40);
  if (*(v9 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v29, *(v9 + 16), *(v9 + 24));
  }

  else
  {
    v29 = *(v9 + 16);
  }

  LOWORD(v30) = 6;
  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v29;
  }

  else
  {
    v10 = v29.__r_.__value_.__r.__words[0];
  }

  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v29.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v29.__r_.__value_.__l.__size_;
  }

  if (!llvm::json::isUTF8(v10, size, 0))
  {
    llvm::Bisector<std::string>::serializeToFile(&v29.__r_.__value_.__r.__words[2] + 7, &v29, &v29.__r_.__value_.__l.__size_, v12, v13, v14, v15, v16);
  }

  v31 = v29;
  memset(&v29, 0, sizeof(v29));
  llvm::json::OStream::attributeBegin(v8, "cat", 3uLL);
  llvm::json::OStream::value(v8, &v30);
  llvm::json::OStream::attributeEnd(v8);
  llvm::json::Value::destroy(&v30);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  v17 = *a1;
  llvm::json::Value::Value(&v30, "e", 1uLL);
  llvm::json::OStream::attributeBegin(v17, "ph", 2uLL);
  llvm::json::OStream::value(v17, &v30);
  llvm::json::OStream::attributeEnd(v17);
  llvm::json::Value::destroy(&v30);
  v18 = *a1;
  LOWORD(v30) = 3;
  v31.__r_.__value_.__r.__words[0] = 0;
  llvm::json::OStream::attributeBegin(v18, "id", 2uLL);
  llvm::json::OStream::value(v18, &v30);
  llvm::json::OStream::attributeEnd(v18);
  llvm::json::Value::destroy(&v30);
  v19 = *a1;
  v20 = *(a1 + 40);
  if (*(v20 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v20 + 16), *(v20 + 24));
  }

  else
  {
    __p = *(v20 + 16);
  }

  LOWORD(v30) = 6;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v22 = __p.__r_.__value_.__l.__size_;
  }

  if (!llvm::json::isUTF8(p_p, v22, 0))
  {
    llvm::Bisector<std::string>::serializeToFile(&__p.__r_.__value_.__r.__words[2] + 7, &__p, &__p.__r_.__value_.__l.__size_, v23, v24, v25, v26, v27);
  }

  v31 = __p;
  memset(&__p, 0, sizeof(__p));
  llvm::json::OStream::attributeBegin(v19, "name", 4uLL);
  llvm::json::OStream::value(v19, &v30);
  llvm::json::OStream::attributeEnd(v19);
  llvm::json::Value::destroy(&v30);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void std::__introsort<std::_ClassicAlgPolicy,llvm::TimeTraceProfiler::write(llvm::raw_pwrite_stream &)::{lambda(std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>> const&,std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>> const&)#1} &,std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>*,false>(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v8 = (a2 - 40);
  v9 = a2 - 1;
  v182 = a2 - 5;
  v183 = a2 - 1;
  v10 = (a2 - 120);
  v184 = a2 - 11;
  v185 = a2 - 3;
  v11 = a1;
LABEL_2:
  v12 = 1 - a4;
  while (1)
  {
    a1 = v11;
    v13 = v12;
    v14 = a2 - v11;
    v15 = 0xCCCCCCCCCCCCCCCDLL * (v14 >> 3);
    if (v15 > 2)
    {
      switch(v15)
      {
        case 3uLL:
          v115 = (a1 + 72);
          v116 = *(a1 + 72);
          v117 = *(a2 - 1);
          v118 = a1 + 40;
          v119 = (a2 - 40);
          v120 = (a1 + 32);
          v121 = *(a1 + 32);
          if (v121 >= v116)
          {
            if (v116 >= v117)
            {
              return;
            }

            v162 = *(a1 + 56);
            v163 = *v118;
            v164 = *(a2 - 3);
            *v118 = *v119;
            *(a1 + 56) = v164;
            *v119 = v163;
            *(a2 - 3) = v162;
            v165 = *(a1 + 64);
            *(a1 + 64) = *(a2 - 1);
            *(a2 - 1) = v165;
            v183 = (a1 + 64);
            if (*(a1 + 32) >= *(a1 + 72))
            {
              return;
            }

            v237 = *(a1 + 16);
            v211 = *a1;
            *a1 = *v118;
            *(a1 + 16) = *(a1 + 56);
            *v118 = v211;
            *(a1 + 56) = v237;
            v122 = (a1 + 24);
          }

          else
          {
            if (v116 >= v117)
            {
              v238 = *(a1 + 16);
              v213 = *a1;
              *a1 = *v118;
              *(a1 + 16) = *(a1 + 56);
              *v118 = v213;
              *(a1 + 56) = v238;
              v175 = *(a1 + 64);
              v174 = (a1 + 64);
              v176 = *(v174 - 5);
              *(v174 - 5) = v175;
              *(v174 - 4) = v116;
              *v174 = v176;
              v174[1] = v121;
              if (v121 >= *(a2 - 1))
              {
                return;
              }

              v177 = *(v118 + 16);
              v178 = *v118;
              v179 = *(a2 - 3);
              *v118 = *v119;
              *(v118 + 16) = v179;
              *v119 = v178;
              *(a2 - 3) = v177;
              v122 = v174;
              v120 = v115;
            }

            else
            {
              v122 = (a1 + 24);
              v234 = *(a1 + 16);
              v207 = *a1;
              v123 = *v119;
              *(a1 + 16) = *(a2 - 3);
              *a1 = v123;
              *v119 = v207;
              *(a2 - 3) = v234;
            }

            v115 = a2 - 1;
          }

          v180 = *v122;
          *v122 = *v183;
          *v183 = v180;
          v181 = *v120;
          *v120 = *v115;
          *v115 = v181;
          return;
        case 4uLL:

          std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::TimeTraceProfiler::write(llvm::raw_pwrite_stream &)::{lambda(std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>> const&,std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>> const&)#1} &,std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>*,0>(a1, (a1 + 40), (a1 + 80), a2 - 40);
          return;
        case 5uLL:
          std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::TimeTraceProfiler::write(llvm::raw_pwrite_stream &)::{lambda(std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>> const&,std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>> const&)#1} &,std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>*,0>(a1, (a1 + 40), (a1 + 80), a1 + 120);
          if (*(a1 + 152) < *(a2 - 1))
          {
            v124 = *(a1 + 136);
            v125 = *(a1 + 120);
            v126 = *(a2 - 3);
            *(a1 + 120) = *(a2 - 40);
            *(a1 + 136) = v126;
            *(a2 - 40) = v125;
            *(a2 - 3) = v124;
            v127 = *(a1 + 144);
            *(a1 + 144) = *(a2 - 1);
            *(a2 - 1) = v127;
            v128 = *(a1 + 112);
            v129 = *(a1 + 152);
            if (v128 < v129)
            {
              v130 = *(a1 + 80);
              *(a1 + 80) = *(a1 + 120);
              *(a1 + 120) = v130;
              v131 = *(a1 + 96);
              v132 = *(a1 + 104);
              v133 = *(a1 + 144);
              *(a1 + 96) = *(a1 + 136);
              *(a1 + 104) = v133;
              *(a1 + 136) = v131;
              *(a1 + 144) = v132;
              *(a1 + 112) = v129;
              *(a1 + 152) = v128;
              v134 = *(a1 + 72);
              if (v134 < v129)
              {
                v135 = *(a1 + 40);
                *(a1 + 40) = *(a1 + 80);
                v136 = *(a1 + 96);
                *(a1 + 80) = v135;
                v137 = *(a1 + 56);
                v138 = *(a1 + 64);
                *(a1 + 56) = v136;
                *(a1 + 64) = v133;
                *(a1 + 96) = v137;
                *(a1 + 104) = v138;
                *(a1 + 72) = v129;
                *(a1 + 112) = v134;
                v139 = *(a1 + 32);
                if (v139 < v129)
                {
                  v140 = *(a1 + 24);
                  v235 = *(a1 + 16);
                  v208 = *a1;
                  *a1 = *(a1 + 40);
                  *(a1 + 16) = *(a1 + 56);
                  *(a1 + 24) = v133;
                  *(a1 + 40) = v208;
                  *(a1 + 56) = v235;
                  *(a1 + 64) = v140;
                  *(a1 + 32) = v129;
                  *(a1 + 72) = v139;
                }
              }
            }
          }

          return;
      }
    }

    else
    {
      if (v15 < 2)
      {
        return;
      }

      if (v15 == 2)
      {
        if (*(a1 + 32) < *(a2 - 1))
        {
          v236 = *(a1 + 16);
          v209 = *a1;
          v141 = *(a2 - 40);
          *(a1 + 16) = *(a2 - 3);
          *a1 = v141;
          *(a2 - 40) = v209;
          *(a2 - 3) = v236;
          v142 = *(a1 + 24);
          *(a1 + 24) = *(a2 - 1);
          *(a2 - 1) = v142;
        }

        return;
      }
    }

    if (v14 <= 959)
    {
      break;
    }

    if (v12 == 1)
    {
      if (a1 != a2)
      {
        v157 = (v15 - 2) >> 1;
        v158 = v157 + 1;
        v159 = (a1 + 40 * v157);
        do
        {
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,llvm::TimeTraceProfiler::write(llvm::raw_pwrite_stream &)::{lambda(std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>> const&,std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>> const&)#1} &,std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>*>(a1, a3, 0xCCCCCCCCCCCCCCCDLL * (v14 >> 3), v159);
          v159 -= 5;
          --v158;
        }

        while (v158);
        v160 = 0xCCCCCCCCCCCCCCCDLL * (v14 >> 3);
        do
        {
          std::__pop_heap[abi:nn200100]<std::_ClassicAlgPolicy,llvm::TimeTraceProfiler::write(llvm::raw_pwrite_stream &)::{lambda(std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>> const&,std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>> const&)#1},std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>*>(a1, a2, a3, v160);
          a2 = (a2 - 40);
        }

        while (v160-- > 2);
      }

      return;
    }

    v16 = v15 >> 1;
    v17 = a1 + 40 * (v15 >> 1);
    v18 = *v9;
    if (v14 >= 0x1401)
    {
      v19 = (v17 + 32);
      v20 = *(v17 + 32);
      v21 = (a1 + 32);
      v22 = *(a1 + 32);
      if (v22 >= v20)
      {
        if (v20 < v18)
        {
          v216 = *(v17 + 16);
          v189 = *v17;
          v31 = *v8;
          *(v17 + 16) = *(a2 - 3);
          *v17 = v31;
          *v8 = v189;
          *(a2 - 3) = v216;
          v25 = (v17 + 24);
          v32 = *(v17 + 24);
          *(v17 + 24) = *(a2 - 1);
          *(a2 - 1) = v32;
          if (*v21 < *(v17 + 32))
          {
            v217 = *(a1 + 16);
            v190 = *a1;
            v33 = *v17;
            *(a1 + 16) = *(v17 + 16);
            *a1 = v33;
            *(v17 + 16) = v217;
            *v17 = v190;
            v23 = (a1 + 24);
            v26 = (a1 + 32);
            v34 = (v17 + 32);
            goto LABEL_28;
          }
        }
      }

      else
      {
        if (v20 < v18)
        {
          v23 = (a1 + 24);
          v214 = *(a1 + 16);
          v187 = *a1;
          v24 = *v8;
          *(a1 + 16) = *(a2 - 3);
          *a1 = v24;
          *v8 = v187;
          *(a2 - 3) = v214;
          v25 = a2 - 1;
          v26 = (a1 + 32);
          goto LABEL_27;
        }

        v38 = *(a1 + 24);
        v220 = *(a1 + 16);
        v193 = *a1;
        v39 = *v17;
        *(a1 + 16) = *(v17 + 16);
        *a1 = v39;
        *v17 = v193;
        v23 = (v17 + 24);
        v40 = *(v17 + 24);
        *(v17 + 16) = v220;
        *(a1 + 24) = v40;
        *(v17 + 24) = v38;
        *(v17 + 32) = v22;
        if (v22 < *v9)
        {
          v221 = *(v17 + 16);
          v194 = *v17;
          v41 = *v8;
          *(v17 + 16) = *(a2 - 3);
          *v17 = v41;
          *v8 = v194;
          *(a2 - 3) = v221;
          v25 = a2 - 1;
          v26 = (v17 + 32);
LABEL_27:
          v34 = a2 - 1;
LABEL_28:
          v42 = *v23;
          *v23 = *v25;
          *v25 = v42;
          v43 = *v26;
          *v26 = *v34;
          *v34 = v43;
        }
      }

      v44 = a1 + 40 * v16;
      v47 = *(v44 - 8);
      v45 = (v44 - 8);
      v46 = v47;
      v48 = v45 - 2;
      v49 = (a1 + 72);
      v50 = *v185;
      if (*(a1 + 72) >= v47)
      {
        if (v46 < v50)
        {
          v222 = *(v45 - 2);
          v195 = *v48;
          v56 = *v182;
          *(v45 - 2) = *(a2 - 8);
          *v48 = v56;
          *v182 = v195;
          *(a2 - 8) = v222;
          v55 = v45 - 1;
          v57 = *(v45 - 8);
          *(v45 - 8) = *(a2 - 56);
          *(a2 - 56) = v57;
          if (*v49 < *v45)
          {
            v58 = *(a1 + 40);
            v59 = *(a1 + 56);
            v60 = *(v45 - 2);
            *(a1 + 40) = *v48;
            *(a1 + 56) = v60;
            *(v45 - 2) = v59;
            *v48 = v58;
            v51 = (a1 + 64);
            v61 = v45;
            goto LABEL_41;
          }
        }
      }

      else
      {
        v51 = (a1 + 64);
        if (v46 < v50)
        {
          v52 = *(a1 + 56);
          v53 = *(a1 + 40);
          v54 = *(a2 - 8);
          *(a1 + 40) = *v182;
          *(a1 + 56) = v54;
          *v182 = v53;
          *(a2 - 8) = v52;
          v55 = a2 - 7;
          goto LABEL_40;
        }

        v66 = *(a1 + 40);
        v67 = *(a1 + 56);
        v68 = *(v45 - 2);
        *(a1 + 40) = *v48;
        *(a1 + 56) = v68;
        *(v45 - 2) = v67;
        *v48 = v66;
        v69 = *v51;
        v70 = *v49;
        *v51 = *(v45 - 8);
        *(v45 - 1) = v69;
        *v45 = v70;
        if (v70 < *v185)
        {
          v225 = *(v45 - 2);
          v198 = *v48;
          v71 = *v182;
          *(v45 - 2) = *(a2 - 8);
          *v48 = v71;
          *v182 = v198;
          *(a2 - 8) = v225;
          v51 = v45 - 1;
          v55 = a2 - 7;
          v49 = v45;
LABEL_40:
          v61 = a2 - 3;
LABEL_41:
          v72 = *v51;
          *v51 = *v55;
          *v55 = v72;
          v73 = *v49;
          *v49 = *v61;
          *v61 = v73;
        }
      }

      v74 = a1 + 40 * v16;
      v77 = *(v74 + 72);
      v75 = (v74 + 72);
      v76 = v77;
      v78 = (v75 - 4);
      v79 = (a1 + 112);
      v80 = *v184;
      if (*(a1 + 112) >= v77)
      {
        if (v76 < v80)
        {
          v226 = *(v75 - 2);
          v199 = *v78;
          v86 = *v10;
          *(v75 - 2) = *(a2 - 13);
          *v78 = v86;
          *v10 = v199;
          *(a2 - 13) = v226;
          v85 = (v75 - 1);
          v87 = *(v75 - 1);
          *(v75 - 1) = *(a2 - 6);
          *(a2 - 6) = v87;
          v76 = *v75;
          if (*v79 < *v75)
          {
            v88 = *(a1 + 80);
            v89 = *(a1 + 96);
            v90 = *(v75 - 2);
            *(a1 + 80) = *v78;
            *(a1 + 96) = v90;
            *(v75 - 2) = v89;
            *v78 = v88;
            v81 = (a1 + 104);
            v91 = v75;
            goto LABEL_51;
          }
        }
      }

      else
      {
        v81 = (a1 + 104);
        if (v76 < v80)
        {
          v82 = *(a1 + 96);
          v83 = *(a1 + 80);
          v84 = *(a2 - 13);
          *(a1 + 80) = *v10;
          *(a1 + 96) = v84;
          *v10 = v83;
          *(a2 - 13) = v82;
          v85 = a2 - 6;
          goto LABEL_50;
        }

        v92 = *(a1 + 80);
        v93 = *(a1 + 96);
        v94 = *(v75 - 2);
        *(a1 + 80) = *v78;
        *(a1 + 96) = v94;
        *(v75 - 2) = v93;
        *v78 = v92;
        v95 = *v81;
        v76 = *v79;
        *v81 = *(v75 - 1);
        *(v75 - 1) = v95;
        *v75 = v76;
        if (v76 < *v184)
        {
          v227 = *(v75 - 2);
          v200 = *v78;
          v96 = *v10;
          *(v75 - 2) = *(a2 - 13);
          *v78 = v96;
          *v10 = v200;
          *(a2 - 13) = v227;
          v81 = v75 - 1;
          v85 = a2 - 6;
          v79 = v75;
LABEL_50:
          v91 = a2 - 11;
LABEL_51:
          v97 = *v81;
          *v81 = *v85;
          *v85 = v97;
          v98 = *v79;
          *v79 = *v91;
          *v91 = v98;
          v76 = *v75;
        }
      }

      v99 = *v19;
      if (*v45 >= *v19)
      {
        if (v99 < v76)
        {
          v229 = *(v17 + 16);
          v202 = *v17;
          *v17 = *v78;
          v102 = *(v75 - 1);
          *(v17 + 16) = *(v75 - 2);
          *(v75 - 2) = v229;
          *v78 = v202;
          v101 = (v17 + 24);
          v103 = *(v17 + 24);
          v104 = *v75;
          *(v17 + 24) = v102;
          *(v17 + 32) = v104;
          *(v78 + 24) = v103;
          if (*v45 < v104)
          {
            v230 = *(v45 - 2);
            v203 = *v48;
            *v48 = *v17;
            *(v45 - 2) = *(v17 + 16);
            *(v17 + 16) = v230;
            *v17 = v203;
            v100 = v45 - 1;
            v75 = (v17 + 32);
            goto LABEL_60;
          }
        }
      }

      else
      {
        if (v99 < v76)
        {
          v100 = v45 - 1;
          v228 = *(v45 - 2);
          v201 = *v48;
          *v48 = *v78;
          *(v45 - 2) = *(v75 - 2);
          *(v75 - 2) = v228;
          *v78 = v201;
          v101 = v75 - 1;
          goto LABEL_60;
        }

        v231 = *(v45 - 2);
        v204 = *v48;
        *v48 = *v17;
        *(v45 - 2) = *(v17 + 16);
        *(v17 + 16) = v231;
        *v17 = v204;
        v100 = (v17 + 24);
        v105 = *(v45 - 1);
        v106 = *(v48 + 4);
        *(v48 + 24) = *(v17 + 24);
        *(v17 + 24) = v105;
        *(v17 + 32) = v106;
        if (v106 < *v75)
        {
          v232 = *(v17 + 16);
          v205 = *v17;
          *v17 = *v78;
          *(v17 + 16) = *(v75 - 2);
          *(v75 - 2) = v232;
          *v78 = v205;
          v101 = v75 - 1;
          v45 = (v17 + 32);
LABEL_60:
          v107 = *v100;
          *v100 = *v101;
          *v101 = v107;
          v108 = *v45;
          *v45 = *v75;
          *v75 = v108;
        }
      }

      v233 = *(a1 + 16);
      v206 = *a1;
      v109 = *v17;
      *(a1 + 16) = *(v17 + 16);
      *a1 = v109;
      *(v17 + 16) = v233;
      *v17 = v206;
      v28 = (a1 + 24);
      v30 = (v17 + 24);
LABEL_62:
      v110 = *v28;
      *v28 = *v30;
      *v30 = v110;
      v111 = *v21;
      *v21 = *v19;
      *v19 = v111;
      goto LABEL_63;
    }

    v19 = (a1 + 32);
    v27 = *(a1 + 32);
    v21 = (v17 + 32);
    if (*(v17 + 32) >= v27)
    {
      if (v27 < v18)
      {
        v218 = *(a1 + 16);
        v191 = *a1;
        v35 = *v8;
        *(a1 + 16) = *(a2 - 3);
        *a1 = v35;
        *v8 = v191;
        *(a2 - 3) = v218;
        v30 = (a1 + 24);
        v36 = *(a1 + 24);
        *(a1 + 24) = *(a2 - 1);
        *(a2 - 1) = v36;
        if (*v21 < *(a1 + 32))
        {
          v219 = *(v17 + 16);
          v192 = *v17;
          v37 = *a1;
          *(v17 + 16) = *(a1 + 16);
          *v17 = v37;
          *(a1 + 16) = v219;
          *a1 = v192;
          v28 = (v17 + 24);
          goto LABEL_62;
        }
      }
    }

    else
    {
      if (v27 < v18)
      {
        v28 = (v17 + 24);
        v215 = *(v17 + 16);
        v188 = *v17;
        v29 = *v8;
        *(v17 + 16) = *(a2 - 3);
        *v17 = v29;
        *v8 = v188;
        *(a2 - 3) = v215;
        v30 = a2 - 1;
LABEL_37:
        v19 = a2 - 1;
        goto LABEL_62;
      }

      v223 = *(v17 + 16);
      v196 = *v17;
      v62 = *a1;
      *(v17 + 16) = *(a1 + 16);
      *v17 = v62;
      *(a1 + 16) = v223;
      *a1 = v196;
      v28 = (a1 + 24);
      v63 = *(v17 + 24);
      v64 = *(v17 + 32);
      *(v17 + 24) = *(a1 + 24);
      *(v17 + 32) = v27;
      *(a1 + 24) = v63;
      *(a1 + 32) = v64;
      if (v64 < *v9)
      {
        v224 = *(a1 + 16);
        v197 = *a1;
        v65 = *v8;
        *(a1 + 16) = *(a2 - 3);
        *a1 = v65;
        *v8 = v197;
        *(a2 - 3) = v224;
        v30 = a2 - 1;
        v21 = (a1 + 32);
        goto LABEL_37;
      }
    }

LABEL_63:
    if ((a5 & 1) == 0 && *(a1 + 32) >= *(a1 - 8))
    {
      v11 = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>> *,llvm::TimeTraceProfiler::write(llvm::raw_pwrite_stream &)::{lambda(std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>> const&,std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>> const&)#1} &>(a1, a2);
      goto LABEL_70;
    }

    v112 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>> *,llvm::TimeTraceProfiler::write(llvm::raw_pwrite_stream &)::{lambda(std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>> const&,std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>> const&)#1} &>(a1, a2);
    if ((v113 & 1) == 0)
    {
      goto LABEL_68;
    }

    v114 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::TimeTraceProfiler::write(llvm::raw_pwrite_stream &)::{lambda(std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>> const&,std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>> const&)#1} &,std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>*>(a1, v112);
    v11 = (v112 + 40);
    if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::TimeTraceProfiler::write(llvm::raw_pwrite_stream &)::{lambda(std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>> const&,std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>> const&)#1} &,std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>*>(v112 + 40, a2))
    {
      a4 = -v13;
      a2 = v112;
      if (v114)
      {
        return;
      }

      goto LABEL_1;
    }

    v12 = v13 + 1;
    if (!v114)
    {
LABEL_68:
      std::__introsort<std::_ClassicAlgPolicy,llvm::TimeTraceProfiler::write(llvm::raw_pwrite_stream &)::{lambda(std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>> const&,std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>> const&)#1} &,std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>*,false>(a1, v112, a3, -v13, a5 & 1);
      v11 = (v112 + 40);
LABEL_70:
      a5 = 0;
      a4 = -v13;
      goto LABEL_2;
    }
  }

  v143 = (a1 + 40);
  v145 = a1 == a2 || v143 == a2;
  if (a5)
  {
    if (!v145)
    {
      v146 = 0;
      v147 = a1;
      do
      {
        v148 = v143;
        if (*(v147 + 32) < *(v147 + 72))
        {
          v149 = *v143;
          *v210 = *(v147 + 48);
          *&v210[7] = *(v147 + 55);
          v150 = *(v147 + 63);
          *(v143 + 1) = 0;
          *(v143 + 2) = 0;
          *v143 = 0;
          v151 = *(v147 + 64);
          v152 = *(v147 + 72);
          v153 = v146;
          while (1)
          {
            v154 = a1 + v153;
            if (*(a1 + v153 + 63) < 0)
            {
              operator delete(*(v154 + 40));
            }

            *(v154 + 40) = *v154;
            *(v154 + 56) = *(v154 + 16);
            *(v154 + 23) = 0;
            *v154 = 0;
            *(v154 + 64) = *(v154 + 24);
            if (!v153)
            {
              break;
            }

            v155 = *(a1 + v153 - 8);
            v153 -= 40;
            if (v155 >= v152)
            {
              v156 = a1 + v153 + 40;
              if ((*(v156 + 23) & 0x80000000) == 0)
              {
                goto LABEL_95;
              }

              goto LABEL_106;
            }
          }

          v156 = a1;
          if ((*(a1 + 23) & 0x80000000) == 0)
          {
            goto LABEL_95;
          }

LABEL_106:
          operator delete(*v156);
LABEL_95:
          *v156 = v149;
          *(v156 + 8) = *v210;
          *(v156 + 15) = *&v210[7];
          *(v156 + 23) = v150;
          *(v156 + 24) = v151;
          *(v156 + 32) = v152;
        }

        v143 = (v148 + 40);
        v146 += 40;
        v147 = v148;
      }

      while ((v148 + 40) != a2);
    }
  }

  else if (!v145)
  {
    do
    {
      v166 = v143;
      if (*(a1 + 32) < *(a1 + 72))
      {
        v167 = *v143;
        *v212 = *(a1 + 48);
        *&v212[7] = *(a1 + 55);
        v168 = *(a1 + 63);
        *(v143 + 1) = 0;
        *(v143 + 2) = 0;
        *v143 = 0;
        v170 = *(a1 + 64);
        v169 = *(a1 + 72);
        v171 = v143;
        do
        {
          if (*(v171 + 23) < 0)
          {
            operator delete(*v171);
          }

          *v171 = *(v171 - 40);
          *(v171 + 2) = *(v171 - 3);
          *(v171 - 40) = 0;
          v172 = v171 - 5;
          *(v171 - 17) = 0;
          *(v171 + 24) = *(v171 - 1);
          v173 = *(v171 - 6);
          v171 = (v171 - 40);
        }

        while (v173 < v169);
        if (*(v172 + 23) < 0)
        {
          operator delete(*v172);
        }

        *v172 = v167;
        *(v172 + 15) = *&v212[7];
        v172[1] = *v212;
        *(v172 + 23) = v168;
        v172[3] = v170;
        v172[4] = v169;
      }

      v143 = (v166 + 40);
      a1 = v166;
    }

    while ((v166 + 40) != a2);
  }
}

__n128 std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::TimeTraceProfiler::write(llvm::raw_pwrite_stream &)::{lambda(std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>> const&,std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>> const&)#1} &,std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>*,0>(__n128 *a1, __n128 *a2, __n128 *a3, uint64_t a4)
{
  v4 = a2[2].n128_i64[0];
  v5 = a1 + 2;
  v6 = a3 + 2;
  v7 = a3[2].n128_i64[0];
  if (a1[2].n128_u64[0] >= v4)
  {
    if (v4 < v7)
    {
      v14 = a2[1].n128_u64[0];
      v15 = *a2;
      v16 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v16;
      *a3 = v15;
      a3[1].n128_u64[0] = v14;
      v17 = a2[1].n128_u64[1];
      v7 = a2[2].n128_i64[0];
      v12 = &a2[1].n128_u64[1];
      result = *(a3 + 24);
      *(a2 + 24) = result;
      a3[1].n128_u64[1] = v17;
      a3[2].n128_u64[0] = v7;
      if (v5->n128_u64[0] < a2[2].n128_u64[0])
      {
        v18 = a1[1].n128_u64[0];
        result = *a1;
        v19 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v19;
        *a2 = result;
        a2[1].n128_u64[0] = v18;
        v8 = &a1[1].n128_u64[1];
        v13 = a1 + 2;
        v20 = a2 + 2;
LABEL_10:
        v28 = *v8;
        *v8 = *v12;
        *v12 = v28;
        v29 = v13->n128_u64[0];
        v13->n128_u64[0] = v20->n128_u64[0];
        v20->n128_u64[0] = v29;
        v7 = v6->n128_u64[0];
      }
    }
  }

  else
  {
    if (v4 < v7)
    {
      v8 = &a1[1].n128_u64[1];
      v9 = a1[1].n128_u64[0];
      result = *a1;
      v11 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v11;
      *a3 = result;
      a3[1].n128_u64[0] = v9;
      v12 = &a3[1].n128_u64[1];
      v13 = a1 + 2;
LABEL_9:
      v20 = a3 + 2;
      goto LABEL_10;
    }

    v21 = a1[1].n128_u64[0];
    v22 = *a1;
    v23 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v23;
    *a2 = v22;
    a2[1].n128_u64[0] = v21;
    v8 = &a2[1].n128_u64[1];
    result = *(a2 + 24);
    v24 = a1[1].n128_u64[1];
    v25 = a1[2].n128_i64[0];
    *(a1 + 24) = result;
    a2[1].n128_u64[1] = v24;
    a2[2].n128_u64[0] = v25;
    v7 = v6->n128_u64[0];
    if (v25 < v6->n128_u64[0])
    {
      v26 = a2[1].n128_u64[0];
      result = *a2;
      v27 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v27;
      *a3 = result;
      a3[1].n128_u64[0] = v26;
      v12 = &a3[1].n128_u64[1];
      v13 = a2 + 2;
      goto LABEL_9;
    }
  }

  if (v7 < *(a4 + 32))
  {
    v30 = a3[1].n128_u64[0];
    v31 = *a3;
    v32 = *(a4 + 16);
    *a3 = *a4;
    a3[1].n128_u64[0] = v32;
    *a4 = v31;
    *(a4 + 16) = v30;
    result = *(a4 + 24);
    v33 = *(&a3[1] + 8);
    *(a3 + 24) = result;
    *(a4 + 24) = v33;
    if (a2[2].n128_u64[0] < a3[2].n128_u64[0])
    {
      v34 = a2[1].n128_u64[0];
      v35 = *a2;
      v36 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v36;
      *a3 = v35;
      a3[1].n128_u64[0] = v34;
      result = *(a3 + 24);
      v37 = *(a2 + 24);
      *(a2 + 24) = result;
      *(a3 + 24) = v37;
      if (v5->n128_u64[0] < a2[2].n128_u64[0])
      {
        v38 = a1[1].n128_u64[0];
        v39 = *a1;
        v40 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v40;
        *a2 = v39;
        a2[1].n128_u64[0] = v38;
        result = *(a2 + 24);
        v41 = *(a1 + 24);
        *(a1 + 24) = result;
        *(a2 + 24) = v41;
      }
    }
  }

  return result;
}

__int128 *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>> *,llvm::TimeTraceProfiler::write(llvm::raw_pwrite_stream &)::{lambda(std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>> const&,std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>> const&)#1} &>(uint64_t a1, __int128 *a2)
{
  v2 = *a1;
  *v23 = *(a1 + 8);
  *&v23[7] = *(a1 + 15);
  v3 = *(a1 + 23);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v4 = *(a1 + 32);
  if (*(a2 - 1) >= v4)
  {
    v8 = (a1 + 40);
    do
    {
      v6 = v8;
      if (v8 >= a2)
      {
        break;
      }

      v9 = *(v8 + 4);
      v8 = (v8 + 40);
    }

    while (v9 >= v4);
  }

  else
  {
    v5 = a1;
    do
    {
      v6 = (v5 + 40);
      v7 = *(v5 + 72);
      v5 += 40;
    }

    while (v7 >= v4);
  }

  if (v6 >= a2)
  {
    v10 = a2;
  }

  else
  {
    do
    {
      v10 = (a2 - 40);
      v11 = *(a2 - 1);
      a2 = (a2 - 40);
    }

    while (v11 < v4);
  }

  v12 = *(a1 + 24);
  while (v6 < v10)
  {
    v22 = *(v6 + 2);
    v21 = *v6;
    v13 = *v10;
    *(v6 + 2) = *(v10 + 2);
    *v6 = v13;
    *(v10 + 2) = v22;
    *v10 = v21;
    v14 = *(v6 + 24);
    *(v6 + 24) = *(v10 + 24);
    *(v10 + 24) = v14;
    do
    {
      v15 = *(v6 + 9);
      v6 = (v6 + 40);
    }

    while (v15 >= v4);
    do
    {
      v16 = *(v10 - 1);
      v10 = (v10 - 40);
    }

    while (v16 < v4);
  }

  v17 = v6 - 5;
  if ((v6 - 40) != a1)
  {
    if (*(a1 + 23) < 0)
    {
      v18 = a1;
      operator delete(*a1);
      a1 = v18;
    }

    v19 = *v17;
    *(a1 + 16) = *(v6 - 3);
    *a1 = v19;
    *(v6 - 17) = 0;
    *(v6 - 40) = 0;
    *(a1 + 24) = *(v6 - 1);
  }

  if (*(v6 - 17) < 0)
  {
    operator delete(*v17);
  }

  *(v6 - 5) = v2;
  *(v6 - 25) = *&v23[7];
  *(v6 - 4) = *v23;
  *(v6 - 17) = v3;
  *(v6 - 2) = v12;
  *(v6 - 1) = v4;
  return v6;
}

uint64_t std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>> *,llvm::TimeTraceProfiler::write(llvm::raw_pwrite_stream &)::{lambda(std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>> const&,std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>> const&)#1} &>(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  *v24 = *(a1 + 8);
  *&v24[7] = *(a1 + 15);
  v4 = *(a1 + 23);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  do
  {
    v7 = *(a1 + v2 + 72);
    v2 += 40;
  }

  while (v6 < v7);
  v8 = (a1 + v2);
  if (v2 == 40)
  {
    while (v8 < a2)
    {
      v9 = a2 - 40;
      v11 = *(a2 - 8);
      a2 -= 40;
      if (v6 < v11)
      {
        goto LABEL_9;
      }
    }

    v9 = a2;
  }

  else
  {
    do
    {
      v9 = a2 - 40;
      v10 = *(a2 - 8);
      a2 -= 40;
    }

    while (v6 >= v10);
  }

LABEL_9:
  v12 = v8;
  if (v8 < v9)
  {
    v13 = v9;
    do
    {
      v14 = *v12;
      v15 = *(v12 + 2);
      v16 = *(v13 + 16);
      *v12 = *v13;
      *(v12 + 2) = v16;
      *(v13 + 16) = v15;
      *v13 = v14;
      v17 = *(v12 + 24);
      *(v12 + 24) = *(v13 + 24);
      *(v13 + 24) = v17;
      do
      {
        v18 = *(v12 + 9);
        v12 = (v12 + 40);
      }

      while (v6 < v18);
      do
      {
        v19 = *(v13 - 8);
        v13 -= 40;
      }

      while (v6 >= v19);
    }

    while (v12 < v13);
  }

  v20 = v12 - 5;
  if ((v12 - 40) != a1)
  {
    if (*(a1 + 23) < 0)
    {
      v21 = a1;
      operator delete(*a1);
      a1 = v21;
    }

    v22 = *v20;
    *(a1 + 16) = *(v12 - 3);
    *a1 = v22;
    *(v12 - 17) = 0;
    *(v12 - 40) = 0;
    *(a1 + 24) = *(v12 - 1);
  }

  if (*(v12 - 17) < 0)
  {
    operator delete(*v20);
  }

  *(v12 - 5) = v3;
  *(v12 - 25) = *&v24[7];
  *(v12 - 4) = *v24;
  *(v12 - 17) = v4;
  *(v12 - 2) = v5;
  *(v12 - 1) = v6;
  return v12 - 40;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::TimeTraceProfiler::write(llvm::raw_pwrite_stream &)::{lambda(std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>> const&,std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>> const&)#1} &,std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>*>(uint64_t a1, uint64_t a2)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v30 = (a1 + 72);
      v31 = *(a1 + 72);
      v32 = *(a2 - 8);
      v33 = (a1 + 40);
      v34 = (a2 - 40);
      v35 = (a1 + 32);
      v36 = *(a1 + 32);
      if (v36 >= v31)
      {
        if (v31 >= v32)
        {
          return 1;
        }

        v53 = *(a1 + 56);
        v54 = *v33;
        v55 = *(a2 - 24);
        *v33 = *v34;
        *(a1 + 56) = v55;
        *v34 = v54;
        *(a2 - 24) = v53;
        v41 = (a1 + 64);
        v56 = *(a1 + 64);
        *(a1 + 64) = *(a2 - 16);
        *(a2 - 16) = v56;
        if (*(a1 + 32) >= *(a1 + 72))
        {
          return 1;
        }

        v57 = *(a1 + 16);
        v58 = *a1;
        *a1 = *v33;
        *(a1 + 16) = *(a1 + 56);
        *v33 = v58;
        *(a1 + 56) = v57;
        v37 = (a1 + 24);
      }

      else
      {
        if (v31 >= v32)
        {
          v64 = *(a1 + 16);
          v65 = *a1;
          *a1 = *v33;
          *(a1 + 16) = *(a1 + 56);
          *v33 = v65;
          *(a1 + 56) = v64;
          v66 = *(a1 + 24);
          *(a1 + 24) = *(a1 + 64);
          *(a1 + 32) = v31;
          *(a1 + 64) = v66;
          *(a1 + 72) = v36;
          if (v36 >= *(a2 - 8))
          {
            return 1;
          }

          v67 = *(a1 + 56);
          v68 = *v33;
          v69 = *(a2 - 24);
          *v33 = *v34;
          *(a1 + 56) = v69;
          *v34 = v68;
          *(a2 - 24) = v67;
          v41 = (a2 - 16);
          v37 = (a1 + 64);
          v35 = (a1 + 72);
        }

        else
        {
          v37 = (a1 + 24);
          v38 = *(a1 + 16);
          v39 = *a1;
          v40 = *(a2 - 24);
          *a1 = *v34;
          *(a1 + 16) = v40;
          *v34 = v39;
          *(a2 - 24) = v38;
          v41 = (a2 - 16);
        }

        v30 = (a2 - 8);
      }

      v70 = *v37;
      *v37 = *v41;
      *v41 = v70;
      v71 = *v35;
      *v35 = *v30;
      *v30 = v71;
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        v8 = a2;
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::TimeTraceProfiler::write(llvm::raw_pwrite_stream &)::{lambda(std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>> const&,std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>> const&)#1} &,std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>*,0>(a1, (a1 + 40), (a1 + 80), a1 + 120);
        if (*(a1 + 152) < *(v8 - 8))
        {
          v9 = *(a1 + 136);
          v10 = *(a1 + 120);
          v11 = *(v8 - 24);
          *(a1 + 120) = *(v8 - 40);
          *(a1 + 136) = v11;
          *(v8 - 40) = v10;
          *(v8 - 24) = v9;
          v12 = *(a1 + 144);
          *(a1 + 144) = *(v8 - 16);
          *(v8 - 16) = v12;
          v13 = *(a1 + 112);
          v14 = *(a1 + 152);
          if (v13 < v14)
          {
            v15 = *(a1 + 80);
            *(a1 + 80) = *(a1 + 120);
            *(a1 + 120) = v15;
            v16 = *(a1 + 96);
            v17 = *(a1 + 104);
            v18 = *(a1 + 144);
            *(a1 + 96) = *(a1 + 136);
            *(a1 + 104) = v18;
            *(a1 + 136) = v16;
            *(a1 + 144) = v17;
            *(a1 + 112) = v14;
            *(a1 + 152) = v13;
            v19 = *(a1 + 72);
            if (v19 < v14)
            {
              v20 = *(a1 + 40);
              *(a1 + 40) = *(a1 + 80);
              v21 = *(a1 + 96);
              *(a1 + 80) = v20;
              v22 = *(a1 + 56);
              v23 = *(a1 + 64);
              *(a1 + 56) = v21;
              *(a1 + 64) = v18;
              *(a1 + 96) = v22;
              *(a1 + 104) = v23;
              *(a1 + 72) = v14;
              *(a1 + 112) = v19;
              v24 = *(a1 + 32);
              if (v24 < v14)
              {
                v25 = *a1;
                *a1 = *(a1 + 40);
                v26 = *(a1 + 56);
                *(a1 + 40) = v25;
                v27 = *(a1 + 16);
                v28 = *(a1 + 24);
                *(a1 + 16) = v26;
                *(a1 + 24) = v18;
                *(a1 + 56) = v27;
                *(a1 + 64) = v28;
                *(a1 + 32) = v14;
                result = 1;
                *(a1 + 72) = v24;
                return result;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::TimeTraceProfiler::write(llvm::raw_pwrite_stream &)::{lambda(std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>> const&,std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>> const&)#1} &,std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>*,0>(a1, (a1 + 40), (a1 + 80), a2 - 40);
    return 1;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (*(a1 + 32) < *(a2 - 8))
    {
      v4 = *(a1 + 16);
      v5 = *a1;
      v6 = *(a2 - 24);
      *a1 = *(a2 - 40);
      *(a1 + 16) = v6;
      *(a2 - 40) = v5;
      *(a2 - 24) = v4;
      v7 = *(a1 + 24);
      *(a1 + 24) = *(a2 - 16);
      *(a2 - 16) = v7;
    }

    return 1;
  }

LABEL_17:
  v42 = (a1 + 72);
  v43 = *(a1 + 72);
  v44 = (a1 + 80);
  v45 = (a1 + 40);
  v47 = (a1 + 32);
  v46 = *(a1 + 32);
  v48 = *(a1 + 112);
  if (v46 < v43)
  {
    if (v43 >= v48)
    {
      v72 = *(a1 + 16);
      v73 = *a1;
      *a1 = *v45;
      *(a1 + 16) = *(a1 + 56);
      *v45 = v73;
      *(a1 + 56) = v72;
      v49 = (a1 + 64);
      v74 = *(a1 + 24);
      *(a1 + 24) = *(a1 + 64);
      *(a1 + 32) = v43;
      *(a1 + 64) = v74;
      *(a1 + 72) = v46;
      if (v46 >= v48)
      {
        goto LABEL_35;
      }

      v75 = *(a1 + 56);
      v76 = *v45;
      *v45 = *v44;
      *(a1 + 56) = *(a1 + 96);
      *v44 = v76;
      *(a1 + 96) = v75;
      v52 = (a1 + 104);
      v47 = (a1 + 72);
    }

    else
    {
      v49 = (a1 + 24);
      v50 = *(a1 + 16);
      v51 = *a1;
      *a1 = *v44;
      *(a1 + 16) = *(a1 + 96);
      *v44 = v51;
      *(a1 + 96) = v50;
      v52 = (a1 + 104);
    }

    v42 = (a1 + 112);
    goto LABEL_34;
  }

  if (v43 < v48)
  {
    v59 = *(a1 + 56);
    v60 = *v45;
    *v45 = *v44;
    *(a1 + 56) = *(a1 + 96);
    *v44 = v60;
    *(a1 + 96) = v59;
    v52 = (a1 + 64);
    v61 = *(a1 + 64);
    *(a1 + 64) = *(a1 + 104);
    *(a1 + 72) = v48;
    *(a1 + 104) = v61;
    *(a1 + 112) = v43;
    if (v46 < v48)
    {
      v62 = *(a1 + 16);
      v63 = *a1;
      *a1 = *v45;
      *(a1 + 16) = *(a1 + 56);
      *v45 = v63;
      *(a1 + 56) = v62;
      v49 = (a1 + 24);
LABEL_34:
      v77 = *v49;
      *v49 = *v52;
      *v52 = v77;
      *v47 = v48;
      *v42 = v46;
    }
  }

LABEL_35:
  v78 = a1 + 120;
  if (a1 + 120 == a2)
  {
    return 1;
  }

  v79 = 0;
  v80 = 0;
  v89 = a2;
  while (1)
  {
    v81 = *(v78 + 32);
    if (v44[2].n128_u64[0] < v81)
    {
      break;
    }

LABEL_37:
    v44 = v78;
    v79 += 40;
    v78 += 40;
    if (v78 == a2)
    {
      return 1;
    }
  }

  v82 = *v78;
  *v90 = *(v78 + 8);
  *&v90[7] = *(v78 + 15);
  v83 = *(v78 + 23);
  *(v78 + 8) = 0;
  *(v78 + 16) = 0;
  *v78 = 0;
  v84 = *(v78 + 24);
  v85 = v79;
  while (1)
  {
    v86 = a1 + v85;
    if (*(a1 + v85 + 143) < 0)
    {
      operator delete(*(v86 + 120));
    }

    *(v86 + 120) = *(v86 + 80);
    *(v86 + 136) = *(v86 + 96);
    *(v86 + 103) = 0;
    *(v86 + 80) = 0;
    *(v86 + 144) = *(v86 + 104);
    if (v85 == -80)
    {
      break;
    }

    v87 = *(a1 + v85 + 72);
    v85 -= 40;
    if (v87 >= v81)
    {
      v88 = a1 + v85 + 120;
      if ((*(v88 + 23) & 0x80000000) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    }
  }

  v88 = a1;
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    goto LABEL_48;
  }

LABEL_47:
  operator delete(*v88);
LABEL_48:
  *v88 = v82;
  *(v88 + 8) = *v90;
  *(v88 + 15) = *&v90[7];
  *(v88 + 23) = v83;
  *(v88 + 24) = v84;
  *(v88 + 32) = v81;
  if (++v80 != 8)
  {
    a2 = v89;
    goto LABEL_37;
  }

  return v78 + 40 == v89;
}

void std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,llvm::TimeTraceProfiler::write(llvm::raw_pwrite_stream &)::{lambda(std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>> const&,std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>> const&)#1} &,std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (0xCCCCCCCCCCCCCCCDLL * ((a4 - a1) >> 3)))
    {
      v9 = (0x999999999999999ALL * ((a4 - a1) >> 3)) | 1;
      v10 = (a1 + 40 * v9);
      if ((0x999999999999999ALL * ((a4 - a1) >> 3) + 2) < a3)
      {
        v11 = *(v10 + 9) < *(v10 + 4);
        v12 = 40;
        if (*(v10 + 9) >= *(v10 + 4))
        {
          v12 = 0;
        }

        v10 = (v10 + v12);
        if (v11)
        {
          v9 = 0x999999999999999ALL * ((a4 - a1) >> 3) + 2;
        }
      }

      v13 = a4[4];
      if (v13 >= *(v10 + 4))
      {
        v23 = *a4;
        *v24 = a4[1];
        *&v24[7] = *(a4 + 15);
        v14 = *(a4 + 23);
        a4[1] = 0;
        a4[2] = 0;
        *a4 = 0;
        v15 = a4[3];
        do
        {
          v16 = v10;
          if (*(v5 + 23) < 0)
          {
            operator delete(*v5);
          }

          v17 = *v16;
          *(v5 + 2) = *(v16 + 2);
          *v5 = v17;
          *(v16 + 23) = 0;
          *v16 = 0;
          *(v5 + 24) = *(v16 + 24);
          if (v7 < v9)
          {
            break;
          }

          v18 = (2 * v9) | 1;
          v10 = (a1 + 40 * v18);
          if (2 * v9 + 2 < a3)
          {
            v19 = *(v10 + 9);
            v20 = *(v10 + 4);
            v21 = v19 < v20;
            v22 = v19 >= v20 ? 0 : 40;
            v10 = (v10 + v22);
            if (v21)
            {
              v18 = 2 * v9 + 2;
            }
          }

          v5 = v16;
          v9 = v18;
        }

        while (v13 >= *(v10 + 4));
        if (*(v16 + 23) < 0)
        {
          operator delete(*v16);
        }

        *v16 = v23;
        *(v16 + 1) = *v24;
        *(v16 + 15) = *&v24[7];
        *(v16 + 23) = v14;
        *(v16 + 3) = v15;
        *(v16 + 4) = v13;
      }
    }
  }
}

void std::__pop_heap[abi:nn200100]<std::_ClassicAlgPolicy,llvm::TimeTraceProfiler::write(llvm::raw_pwrite_stream &)::{lambda(std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>> const&,std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>> const&)#1},std::pair<std::string,std::pair<unsigned long,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>*>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 2)
  {
    return;
  }

  v7 = 0;
  v30 = *a1;
  *v32 = a1[1];
  *&v32[7] = *(a1 + 15);
  v31 = *(a1 + 23);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v8 = (a4 - 2) >> 1;
  v9 = a1;
  v11 = a1[3];
  v10 = a1[4];
  do
  {
    v13 = v9 + 40 * v7;
    v14 = (v13 + 40);
    if (2 * v7 + 2 >= a4)
    {
      v7 = (2 * v7) | 1;
      if ((*(v9 + 23) & 0x80000000) == 0)
      {
        goto LABEL_3;
      }

LABEL_11:
      operator delete(*v9);
      goto LABEL_3;
    }

    v15 = *(v13 + 112);
    v16 = *(v13 + 72);
    v17 = (v13 + 80);
    if (v15 >= v16)
    {
      v7 = (2 * v7) | 1;
    }

    else
    {
      v14 = v17;
      v7 = 2 * v7 + 2;
    }

    if (*(v9 + 23) < 0)
    {
      goto LABEL_11;
    }

LABEL_3:
    v12 = *v14;
    *(v9 + 2) = *(v14 + 2);
    *v9 = v12;
    *(v14 + 23) = 0;
    *v14 = 0;
    *(v9 + 24) = *(v14 + 24);
    v9 = v14;
  }

  while (v7 <= v8);
  v18 = (a2 - 40);
  v19 = *(v14 + 23);
  if (v14 == (a2 - 40))
  {
    if (v19 < 0)
    {
      operator delete(*v14);
    }

    *v14 = v30;
    *(v14 + 1) = *v32;
    *(v14 + 15) = *&v32[7];
    *(v14 + 23) = v31;
    *(v14 + 3) = v11;
    *(v14 + 4) = v10;
  }

  else
  {
    if (v19 < 0)
    {
      operator delete(*v14);
    }

    v20 = *v18;
    *(v14 + 2) = *(a2 - 24);
    *v14 = v20;
    *(a2 - 17) = 0;
    *(a2 - 40) = 0;
    *(v14 + 24) = *(a2 - 16);
    v21 = v14 + 40;
    if (*(a2 - 17) < 0)
    {
      operator delete(*v18);
    }

    *(a2 - 40) = v30;
    *(a2 - 32) = *v32;
    *(a2 - 25) = *&v32[7];
    *(a2 - 17) = v31;
    *(a2 - 16) = v11;
    *(a2 - 8) = v10;
    if (v21 - a1 >= 41)
    {
      v22 = (0xCCCCCCCCCCCCCCCDLL * ((v21 - a1) >> 3) - 2) >> 1;
      v23 = &a1[5 * v22];
      v24 = *(v14 + 4);
      if (v24 < v23[4])
      {
        v25 = *v14;
        *v33 = *(v14 + 1);
        *&v33[7] = *(v14 + 15);
        v26 = *(v14 + 23);
        *(v14 + 1) = 0;
        *(v14 + 2) = 0;
        *v14 = 0;
        v27 = *(v14 + 3);
        do
        {
          v28 = v23;
          if (*(v14 + 23) < 0)
          {
            operator delete(*v14);
          }

          v29 = *v28;
          *(v14 + 2) = *(v28 + 2);
          *v14 = v29;
          *(v28 + 23) = 0;
          *v28 = 0;
          *(v14 + 24) = *(v28 + 24);
          if (!v22)
          {
            break;
          }

          v22 = (v22 - 1) >> 1;
          v23 = &a1[5 * v22];
          v14 = v28;
        }

        while (v24 < v23[4]);
        if (*(v28 + 23) < 0)
        {
          operator delete(*v28);
        }

        *v28 = v25;
        *(v28 + 1) = *v33;
        *(v28 + 15) = *&v33[7];
        *(v28 + 23) = v26;
        *(v28 + 3) = v27;
        *(v28 + 4) = v24;
      }
    }
  }
}

uint64_t llvm::TimeTraceProfiler::write(llvm::raw_pwrite_stream &)::{lambda(void)#1}::operator()(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*(a1 + 8) + 13536);
  LOWORD(v26) = 3;
  *&v27 = v3;
  llvm::json::OStream::attributeBegin(v2, "pid", 3uLL);
  llvm::json::OStream::value(v2, &v26);
  llvm::json::OStream::attributeEnd(v2);
  llvm::json::Value::destroy(&v26);
  v4 = *a1;
  v5 = **(a1 + 16);
  LOWORD(v26) = 3;
  *&v27 = v5;
  llvm::json::OStream::attributeBegin(v4, "tid", 3uLL);
  llvm::json::OStream::value(v4, &v26);
  llvm::json::OStream::attributeEnd(v4);
  llvm::json::Value::destroy(&v26);
  v6 = *a1;
  llvm::json::Value::Value(&v26, "X", 1uLL);
  llvm::json::OStream::attributeBegin(v6, "ph", 2uLL);
  llvm::json::OStream::value(v6, &v26);
  llvm::json::OStream::attributeEnd(v6);
  llvm::json::Value::destroy(&v26);
  v7 = *a1;
  LOWORD(v26) = 3;
  *&v27 = 0;
  llvm::json::OStream::attributeBegin(v7, "ts", 2uLL);
  llvm::json::OStream::value(v7, &v26);
  llvm::json::OStream::attributeEnd(v7);
  llvm::json::Value::destroy(&v26);
  v8 = *a1;
  v9 = **(a1 + 24);
  LOWORD(v26) = 3;
  *&v27 = v9;
  llvm::json::OStream::attributeBegin(v8, "dur", 3uLL);
  llvm::json::OStream::value(v8, &v26);
  llvm::json::OStream::attributeEnd(v8);
  llvm::json::Value::destroy(&v26);
  v10 = *a1;
  std::operator+<char>();
  LOWORD(v26) = 6;
  if (v25 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if (v25 >= 0)
  {
    v12 = SHIBYTE(v25);
  }

  else
  {
    v12 = __p[1];
  }

  if (!llvm::json::isUTF8(v11, v12, 0))
  {
    llvm::Bisector<std::string>::serializeToFile(&v25 + 7, __p, &__p[1], v13, v14, v15, v16, v17);
  }

  v27 = *__p;
  v28 = v25;
  __p[1] = 0;
  v25 = 0;
  __p[0] = 0;
  llvm::json::OStream::attributeBegin(v10, "name", 4uLL);
  llvm::json::OStream::value(v10, &v26);
  llvm::json::OStream::attributeEnd(v10);
  llvm::json::Value::destroy(&v26);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  v18 = *a1;
  v19 = *(a1 + 40);
  v20 = *(a1 + 24);
  llvm::json::OStream::attributeBegin(v18, "args", 4uLL);
  llvm::json::OStream::objectBegin(v18);
  v21 = *v19;
  LOWORD(v26) = 3;
  *&v27 = v21;
  llvm::json::OStream::attributeBegin(v18, "count", 5uLL);
  llvm::json::OStream::value(v18, &v26);
  llvm::json::OStream::attributeEnd(v18);
  llvm::json::Value::destroy(&v26);
  v22 = *v20 / *v19 / 0x3E8;
  LOWORD(v26) = 3;
  *&v27 = v22;
  llvm::json::OStream::attributeBegin(v18, "avg ms", 6uLL);
  llvm::json::OStream::value(v18, &v26);
  llvm::json::OStream::attributeEnd(v18);
  llvm::json::Value::destroy(&v26);
  llvm::json::OStream::objectEnd(v18);
  return llvm::json::OStream::attributeEnd(v18);
}

uint64_t llvm::TimeTraceProfiler::write(llvm::raw_pwrite_stream &)::{lambda(char const*,unsigned long long,llvm::StringRef)#1}::operator() const(char const*,unsigned long long,llvm::StringRef)::{lambda(void)#1}::operator()(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a1 + 8);
  llvm::json::Value::Value(&v17, "", 0);
  llvm::json::OStream::attributeBegin(v2, "cat", 3uLL);
  llvm::json::OStream::value(v2, &v17);
  llvm::json::OStream::attributeEnd(v2);
  llvm::json::Value::destroy(&v17);
  v4 = *a1;
  v5 = *(v3 + 13536);
  LOWORD(v17) = 3;
  v18 = v5;
  llvm::json::OStream::attributeBegin(v4, "pid", 3uLL);
  llvm::json::OStream::value(v4, &v17);
  llvm::json::OStream::attributeEnd(v4);
  llvm::json::Value::destroy(&v17);
  v6 = *a1;
  v7 = **(a1 + 16);
  LOWORD(v17) = 3;
  v18 = v7;
  llvm::json::OStream::attributeBegin(v6, "tid", 3uLL);
  llvm::json::OStream::value(v6, &v17);
  llvm::json::OStream::attributeEnd(v6);
  llvm::json::Value::destroy(&v17);
  v8 = *a1;
  LOWORD(v17) = 3;
  v18 = 0;
  llvm::json::OStream::attributeBegin(v8, "ts", 2uLL);
  llvm::json::OStream::value(v8, &v17);
  llvm::json::OStream::attributeEnd(v8);
  llvm::json::Value::destroy(&v17);
  v9 = *a1;
  llvm::json::Value::Value(&v17, "M", 1uLL);
  llvm::json::OStream::attributeBegin(v9, "ph", 2uLL);
  llvm::json::OStream::value(v9, &v17);
  llvm::json::OStream::attributeEnd(v9);
  llvm::json::Value::destroy(&v17);
  v10 = *a1;
  v11 = *(a1 + 24);
  v12 = *v11;
  if (*v11)
  {
    v13 = strlen(*v11);
  }

  else
  {
    v13 = 0;
  }

  llvm::json::Value::Value(&v17, v12, v13);
  llvm::json::OStream::attributeBegin(v10, "name", 4uLL);
  llvm::json::OStream::value(v10, &v17);
  llvm::json::OStream::attributeEnd(v10);
  llvm::json::Value::destroy(&v17);
  v14 = *a1;
  v15 = *(a1 + 32);
  llvm::json::OStream::attributeBegin(v14, "args", 4uLL);
  llvm::json::OStream::objectBegin(v14);
  llvm::json::Value::Value(&v17, *v15, *(v15 + 8));
  llvm::json::OStream::attributeBegin(v14, "name", 4uLL);
  llvm::json::OStream::value(v14, &v17);
  llvm::json::OStream::attributeEnd(v14);
  llvm::json::Value::destroy(&v17);
  llvm::json::OStream::objectEnd(v14);
  return llvm::json::OStream::attributeEnd(v14);
}

uint64_t llvm::SmallVectorImpl<llvm::TimeTraceProfilerEntry>::emplace_back<llvm::TimeTraceProfilerEntry&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {

    llvm::SmallVectorTemplateBase<llvm::TimeTraceProfilerEntry,false>::growAndEmplaceBack<llvm::TimeTraceProfilerEntry&>();
  }

  v5 = *a1 + 104 * v4;
  *v5 = *a2;
  if ((*(a2 + 39) & 0x80000000) == 0)
  {
    v6 = *(a2 + 16);
    *(v5 + 32) = *(a2 + 32);
    *(v5 + 16) = v6;
    if ((*(a2 + 63) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    std::string::__init_copy_ctor_external((v5 + 40), *(a2 + 40), *(a2 + 48));
    if ((*(a2 + 87) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    std::string::__init_copy_ctor_external((v5 + 64), *(a2 + 64), *(a2 + 72));
    goto LABEL_9;
  }

  std::string::__init_copy_ctor_external((v5 + 16), *(a2 + 16), *(a2 + 24));
  if (*(a2 + 63) < 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v7 = *(a2 + 40);
  *(v5 + 56) = *(a2 + 56);
  *(v5 + 40) = v7;
  if (*(a2 + 87) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  v8 = *(a2 + 64);
  *(v5 + 80) = *(a2 + 80);
  *(v5 + 64) = v8;
LABEL_9:
  *(v5 + 88) = *(a2 + 88);
  *(v5 + 96) = *(a2 + 96);
  v9 = *(a1 + 8) + 1;
  *(a1 + 8) = v9;
  return *a1 + 104 * v9 - 104;
}

void llvm::SmallVectorTemplateBase<llvm::TimeTraceProfilerEntry,false>::moveElementsForGrow(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v4 = *a1 + 104 * v2;
    v5 = a2 + 16;
    v6 = *a1 + 16;
    do
    {
      *(v5 - 16) = *(v6 - 16);
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v5, *v6, *(v6 + 8));
      }

      else
      {
        v10 = *v6;
        *(v5 + 16) = *(v6 + 16);
        *v5 = v10;
      }

      v7 = v6 - 16;
      v8 = *(v6 + 24);
      *(v5 + 40) = *(v6 + 40);
      *(v5 + 24) = v8;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      *(v6 + 24) = 0;
      v9 = *(v6 + 48);
      *(v5 + 64) = *(v6 + 64);
      *(v5 + 48) = v9;
      *(v6 + 56) = 0;
      *(v6 + 64) = 0;
      *(v6 + 48) = 0;
      *(v5 + 72) = *(v6 + 72);
      *(v5 + 80) = *(v6 + 80);
      v5 += 104;
      v6 += 104;
    }

    while (v7 + 104 != v4);
    v11 = *(a1 + 2);
    if (v11)
    {
      v12 = *a1;
      v13 = -104 * v11;
      v14 = (v12 + 104 * v11 - 41);
      do
      {
        if (v14[24] < 0)
        {
          operator delete(*(v14 + 1));
          if ((*v14 & 0x80000000) == 0)
          {
LABEL_12:
            if (*(v14 - 24) < 0)
            {
              goto LABEL_16;
            }

            goto LABEL_9;
          }
        }

        else if ((*v14 & 0x80000000) == 0)
        {
          goto LABEL_12;
        }

        operator delete(*(v14 - 23));
        if (*(v14 - 24) < 0)
        {
LABEL_16:
          operator delete(*(v14 - 47));
        }

LABEL_9:
        v14 -= 104;
        v13 += 104;
      }

      while (v13);
    }
  }
}

uint64_t *llvm::SmallVectorImpl<std::unique_ptr<llvm::TimeTraceProfilerEntry>>::erase(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = *(a1 + 2);
  v7 = *a1 + 8 * v6;
  if (v7 == a3)
  {
    v9 = a2;
    v12 = (v5 + 8 * v6);
    if (v12 == a2)
    {
      goto LABEL_28;
    }

    while (1)
    {
LABEL_19:
      v14 = *--v12;
      v13 = v14;
      *v12 = 0;
      if (!v14)
      {
        goto LABEL_18;
      }

      if (*(v13 + 87) < 0)
      {
        operator delete(*(v13 + 64));
        if ((*(v13 + 63) & 0x80000000) == 0)
        {
LABEL_22:
          if (*(v13 + 39) < 0)
          {
            goto LABEL_26;
          }

          goto LABEL_17;
        }
      }

      else if ((*(v13 + 63) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

      operator delete(*(v13 + 40));
      if (*(v13 + 39) < 0)
      {
LABEL_26:
        operator delete(*(v13 + 16));
      }

LABEL_17:
      MEMORY[0x259C63180](v13, 0x1012C40A185F1B1);
LABEL_18:
      if (v12 == v9)
      {
        v5 = *a1;
        goto LABEL_28;
      }
    }
  }

  v8 = a3;
  v9 = a2;
  do
  {
    v10 = *v8;
    *v8 = 0;
    v11 = *v9;
    *v9 = v10;
    if (v11)
    {
      if (*(v11 + 87) < 0)
      {
        operator delete(*(v11 + 64));
        if ((*(v11 + 63) & 0x80000000) == 0)
        {
LABEL_8:
          if (*(v11 + 39) < 0)
          {
            goto LABEL_12;
          }

          goto LABEL_3;
        }
      }

      else if ((*(v11 + 63) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      operator delete(*(v11 + 40));
      if (*(v11 + 39) < 0)
      {
LABEL_12:
        operator delete(*(v11 + 16));
      }

LABEL_3:
      MEMORY[0x259C63180](v11, 0x1012C40A185F1B1);
    }

    ++v8;
    ++v9;
  }

  while (v8 != v7);
  v5 = *a1;
  v12 = (*a1 + 8 * *(a1 + 2));
  if (v12 != v9)
  {
    goto LABEL_19;
  }

LABEL_28:
  *(a1 + 2) = (v9 - v5) >> 3;
  return a2;
}

uint64_t *std::remove_if[abi:nn200100]<std::unique_ptr<llvm::TimeTraceProfilerEntry> *,llvm::TimeTraceProfiler::end(llvm::TimeTraceProfilerEntry&)::{lambda(std::unique_ptr<llvm::TimeTraceProfilerEntry> const&)#2}>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  for (i = a1; i != a2; ++i)
  {
    if (*i == a3)
    {
      break;
    }
  }

  if (i != a2)
  {
    v6 = i + 1;
    if (i + 1 != a2)
    {
      while (1)
      {
        v7 = *v6;
        if (*v6 == a3)
        {
          goto LABEL_9;
        }

        *v6 = 0;
        v8 = *i;
        *i = v7;
        if (v8)
        {
          break;
        }

LABEL_8:
        ++i;
LABEL_9:
        if (++v6 == a2)
        {
          return i;
        }
      }

      if (*(v8 + 87) < 0)
      {
        operator delete(*(v8 + 64));
        if ((*(v8 + 63) & 0x80000000) == 0)
        {
LABEL_14:
          if (*(v8 + 39) < 0)
          {
            goto LABEL_18;
          }

          goto LABEL_7;
        }
      }

      else if ((*(v8 + 63) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      operator delete(*(v8 + 40));
      if (*(v8 + 39) < 0)
      {
LABEL_18:
        operator delete(*(v8 + 16));
      }

LABEL_7:
      MEMORY[0x259C63180](v8, 0x1012C40A185F1B1);
      goto LABEL_8;
    }
  }

  return i;
}

const void ***llvm::function_ref<std::string ()(void)>::callback_fn<llvm::timeTraceProfilerBegin(llvm::StringRef,llvm::StringRef)::$_0>@<X0>(const void ***result@<X0>, _BYTE *a2@<X8>)
{
  v3 = (*result)[1];
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v4 = **result;
  if (v3 >= 0x17)
  {
    operator new();
  }

  a2[23] = v3;
  if (v3)
  {
    result = memcpy(a2, v4, v3);
    a2[v3] = 0;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

const void ***llvm::function_ref<std::string ()(void)>::callback_fn<llvm::timeTraceAsyncProfilerBegin(llvm::StringRef,llvm::StringRef)::$_0>@<X0>(const void ***result@<X0>, _BYTE *a2@<X8>)
{
  v3 = (*result)[1];
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v4 = **result;
  if (v3 >= 0x17)
  {
    operator new();
  }

  a2[23] = v3;
  if (v3)
  {
    result = memcpy(a2, v4, v3);
    a2[v3] = 0;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_20(uint64_t a1, void *a2, void *a3)
{
}

double OUTLINED_FUNCTION_3_15()
{
  *(v0 + 8) = 850045863;
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  return result;
}

void OUTLINED_FUNCTION_4_14()
{

  JUMPOUT(0x259C63180);
}

void llvm::initTimerOptions(llvm *this)
{
  if (atomic_load_explicit(qword_27F875518, memory_order_acquire))
  {
    if (atomic_load_explicit(qword_27F875530, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (atomic_load_explicit(qword_27F875530, memory_order_acquire))
    {
LABEL_3:
      if (atomic_load_explicit(&qword_27F875548, memory_order_acquire))
      {
        return;
      }

LABEL_7:
      return;
    }
  }

  if (!atomic_load_explicit(&qword_27F875548, memory_order_acquire))
  {
    goto LABEL_7;
  }
}

void llvm::CreateInfoOutputFile(llvm *this)
{
  if (!atomic_load_explicit(qword_27F875560, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_27F875560, llvm::object_creator<std::string>::call, llvm::object_deleter<std::string>::call);
  }

  if (*(qword_27F875560[0] + 23) < 0)
  {
    v1 = *(qword_27F875560[0] + 8);
    if (!v1)
    {
      goto LABEL_11;
    }

    if (v1 != 1 || **qword_27F875560[0] != 45)
    {
LABEL_10:
      std::system_category();
      operator new();
    }
  }

  else
  {
    if (*(qword_27F875560[0] + 23) != 1)
    {
      if (*(qword_27F875560[0] + 23))
      {
        goto LABEL_10;
      }

LABEL_11:
      operator new();
    }

    if (*qword_27F875560[0] != 45)
    {
      goto LABEL_10;
    }
  }

  operator new();
}

void llvm::Timer::init(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (atomic_load_explicit(qword_27F8755C0, memory_order_acquire))
  {
    v6 = qword_27F8755C0[0];
  }

  else
  {
    v7 = a1;
    v8 = a2;
    v9 = a3;
    v10 = a5;
    v11 = a4;
    a1 = v7;
    a2 = v8;
    a3 = v9;
    a4 = v11;
    a5 = v10;
    v6 = qword_27F8755C0[0];
  }

  llvm::Timer::init(a1, a2, a3, a4, a5, v6);
}

void llvm::Timer::init(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v12 = (a1 + 80);
  v13 = *(a1 + 103);
  if ((v13 & 0x8000000000000000) == 0)
  {
    if (a3 <= 0x16)
    {
      goto LABEL_7;
    }

    v14 = 22;
LABEL_6:
    std::string::__grow_by((a1 + 80), v14, a3 - v14, v13, 0, v13, 0);
    *(a1 + 88) = 0;
    if ((*(a1 + 103) & 0x80) == 0)
    {
      goto LABEL_7;
    }

LABEL_21:
    v12 = *v12;
    if (a3)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  v15 = *(a1 + 96);
  v14 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v14 < a3)
  {
    v13 = *(a1 + 88);
    goto LABEL_6;
  }

  if (v15 < 0)
  {
    goto LABEL_21;
  }

LABEL_7:
  if (a3)
  {
LABEL_8:
    v16 = a2;
    if (a3 < 0x20 || v12 - a2 < 0x20)
    {
      v17 = v12;
    }

    else
    {
      v17 = v12 + (a3 & 0xFFFFFFFFFFFFFFE0);
      v16 = (a2 + (a3 & 0xFFFFFFFFFFFFFFE0));
      v18 = (a2 + 16);
      v19 = v12 + 2;
      v20 = a3 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v21 = *v18;
        *(v19 - 1) = *(v18 - 1);
        *v19 = v21;
        v18 += 2;
        v19 += 2;
        v20 -= 32;
      }

      while (v20);
      if (a3 == (a3 & 0xFFFFFFFFFFFFFFE0))
      {
LABEL_16:
        *v17 = 0;
        if ((*(a1 + 103) & 0x80000000) == 0)
        {
          goto LABEL_17;
        }

LABEL_23:
        *(a1 + 88) = a3;
        v23 = (a1 + 104);
        v24 = *(a1 + 127);
        if ((v24 & 0x8000000000000000) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_24;
      }
    }

    do
    {
      v22 = *v16++;
      *v17++ = v22;
    }

    while (v16 != (a2 + a3));
    goto LABEL_16;
  }

LABEL_22:
  *v12 = 0;
  if (*(a1 + 103) < 0)
  {
    goto LABEL_23;
  }

LABEL_17:
  *(a1 + 103) = a3 & 0x7F;
  v23 = (a1 + 104);
  v24 = *(a1 + 127);
  if ((v24 & 0x8000000000000000) == 0)
  {
LABEL_18:
    if (a5 <= 0x16)
    {
      goto LABEL_27;
    }

    v25 = 22;
LABEL_26:
    std::string::__grow_by(v23, v25, a5 - v25, v24, 0, v24, 0);
    *(a1 + 112) = 0;
    if ((*(a1 + 127) & 0x80) == 0)
    {
      goto LABEL_27;
    }

LABEL_45:
    v23 = v23->__r_.__value_.__r.__words[0];
    if (a5)
    {
      goto LABEL_28;
    }

    goto LABEL_46;
  }

LABEL_24:
  v26 = *(a1 + 120);
  v25 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v25 < a5)
  {
    v24 = *(a1 + 112);
    goto LABEL_26;
  }

  if (v26 < 0)
  {
    goto LABEL_45;
  }

LABEL_27:
  if (a5)
  {
LABEL_28:
    v27 = a4;
    if (a5 < 0x20 || v23 - a4 < 0x20)
    {
      v28 = v23;
    }

    else
    {
      v28 = (v23 + (a5 & 0xFFFFFFFFFFFFFFE0));
      v27 = (a4 + (a5 & 0xFFFFFFFFFFFFFFE0));
      v29 = (a4 + 16);
      v30 = &v23->__r_.__value_.__r.__words[2];
      v31 = a5 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v32 = *v29;
        *(v30 - 1) = *(v29 - 1);
        *v30 = v32;
        v29 += 2;
        v30 += 4;
        v31 -= 32;
      }

      while (v31);
      if (a5 == (a5 & 0xFFFFFFFFFFFFFFE0))
      {
LABEL_36:
        v28->__r_.__value_.__s.__data_[0] = 0;
        if ((*(a1 + 127) & 0x80000000) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_47;
      }
    }

    do
    {
      v33 = *v27++;
      v28->__r_.__value_.__s.__data_[0] = v33;
      v28 = (v28 + 1);
    }

    while (v27 != (a4 + a5));
    goto LABEL_36;
  }

LABEL_46:
  v23->__r_.__value_.__s.__data_[0] = 0;
  if ((*(a1 + 127) & 0x80000000) == 0)
  {
LABEL_37:
    *(a1 + 127) = a5 & 0x7F;
    *(a1 + 128) = 0;
    *(a1 + 136) = a6;
    if (atomic_load_explicit(&qword_27F8755A8, memory_order_acquire))
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_47:
  *(a1 + 112) = a5;
  *(a1 + 128) = 0;
  *(a1 + 136) = a6;
  if (!atomic_load_explicit(&qword_27F8755A8, memory_order_acquire))
  {
LABEL_38:
    llvm::ManagedStaticBase::RegisterManagedStatic(&qword_27F8755A8, llvm::object_creator<llvm::sys::SmartMutex<true>>::call, llvm::object_deleter<llvm::sys::SmartMutex<true>>::call);
  }

LABEL_39:
  v34 = qword_27F8755A8;
  std::recursive_mutex::lock(qword_27F8755A8);
  v37 = *(a6 + 48);
  v36 = (a6 + 48);
  v35 = v37;
  if (v37)
  {
    *(v35 + 144) = a1 + 152;
  }

  *(a1 + 144) = v36;
  *(a1 + 152) = v35;
  *v36 = a1;

  std::recursive_mutex::unlock(v34);
}