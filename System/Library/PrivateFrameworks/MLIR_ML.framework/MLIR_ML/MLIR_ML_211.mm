uint64_t llvm::APInt::umul_ov@<X0>(llvm::APInt *this@<X0>, const llvm::APInt *a2@<X1>, BOOL *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = this;
  v8 = *(this + 2);
  if (v8 > 0x40)
  {
    v15 = 0;
    v9 = *this;
    v16 = ((v8 + 63) >> 6) + 1;
    while (1)
    {
      v17 = *(v9 + 8 * (v16 - 2));
      if (v17)
      {
        break;
      }

      v15 += 64;
      if (--v16 <= 1)
      {
        goto LABEL_20;
      }
    }

    v15 += __clz(v17);
LABEL_20:
    v20 = v8 | 0xFFFFFFC0;
    if ((v8 & 0x3F) == 0)
    {
      v20 = 0;
    }

    v10 = v15 + v20;
    v11 = *(a2 + 2);
    if (v11 > 0x40)
    {
LABEL_3:
      v12 = 0;
      v13 = ((v11 + 63) >> 6) + 1;
      while (1)
      {
        v14 = *(*a2 + 8 * (v13 - 2));
        if (v14)
        {
          break;
        }

        v12 += 64;
        if (--v13 <= 1)
        {
          goto LABEL_12;
        }
      }

      v12 += __clz(v14);
LABEL_12:
      if ((v11 & 0x3F) != 0)
      {
        v18 = v11 | 0xFFFFFFC0;
      }

      else
      {
        v18 = 0;
      }

      if (v10 + v12 + v18 + 2 <= v8)
      {
        goto LABEL_16;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v9 = *this;
    v10 = v8 + __clz(*this) - 64;
    v11 = *(a2 + 2);
    if (v11 > 0x40)
    {
      goto LABEL_3;
    }
  }

  if (v10 + v11 + __clz(*a2) - 64 + 2 <= v8)
  {
LABEL_16:
    *a3 = 1;

    return llvm::APInt::operator*(this, a2, a4);
  }

LABEL_24:
  v53 = *(this + 2);
  if (v8 > 0x40)
  {
    operator new[]();
  }

  v21 = v9 >> 1;
  if (v8 == 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21;
  }

  v52 = v22;
  result = llvm::APInt::operator*(&v52, a2, a4);
  v23 = *(a4 + 8);
  v24 = *a4;
  v25 = (*a4 + 8 * ((v23 - 1) >> 6));
  if (v23 < 0x41)
  {
    v25 = a4;
  }

  *a3 = (*v25 >> (v23 - 1)) & 1;
  if (v23 > 0x40)
  {
    v28 = (v23 + 63) >> 6;
    v29 = v24 + 8 * v28;
    v31 = *(v29 - 8);
    v30 = (v29 - 8);
    v32 = 2 * v31;
    *v30 = 2 * v31;
    v33 = v28 - 2;
    do
    {
      *v30 = v32 | (*(v24 + 8 * v33) >> 63);
      v30 = (v24 + 8 * v33);
      v32 = 2 * *v30;
      *v30 = v32;
    }

    while (v33--);
    *(v24 + 8 * (v28 - 1)) &= 0xFFFFFFFFFFFFFFFFLL >> -v23;
    if (*(v6 + 2) < 0x41u)
    {
      goto LABEL_43;
    }

LABEL_42:
    v6 = *v6;
    goto LABEL_43;
  }

  v26 = 2 * v24;
  if (v23 == 1)
  {
    v26 = 0;
  }

  v27 = 0xFFFFFFFFFFFFFFFFLL >> -v23;
  if (!v23)
  {
    v27 = 0;
  }

  v24 = v26 & v27;
  *a4 = v24;
  if (*(v6 + 2) >= 0x41u)
  {
    goto LABEL_42;
  }

LABEL_43:
  if (*v6)
  {
    if (v23 >= 0x41)
    {
      v39 = 0;
      v40 = *a2;
      v41 = (v23 + 63) >> 6;
      v42 = v24;
      v43 = v41;
      do
      {
        v44 = *v40++;
        v45 = v44 + *v42;
        v46 = __CFADD__(v44, *v42);
        result = v45 + 1;
        v47 = (v45 + 1) <= *v42;
        if (v39)
        {
          ++v45;
          v39 = v47;
        }

        else
        {
          v39 = v46;
        }

        *v42++ = v45;
        --v43;
      }

      while (v43);
      *(v24 + 8 * (v41 - 1)) &= 0xFFFFFFFFFFFFFFFFLL >> -v23;
      v48 = 8 * v41;
      v49 = v24 - 8;
      while (v48)
      {
        v50 = *(v49 + v48);
        v51 = *(*a2 - 8 + v48);
        v48 -= 8;
        if (v50 != v51)
        {
          if (v50 > v51)
          {
            return result;
          }

          goto LABEL_62;
        }
      }
    }

    else
    {
      v35 = *a2;
      v36 = v24 + *a2;
      if (v23)
      {
        v37 = 0xFFFFFFFFFFFFFFFFLL >> -v23;
      }

      else
      {
        v37 = 0;
      }

      v38 = v36 & v37;
      *a4 = v38;
      if (v38 < v35)
      {
LABEL_62:
        *a3 = 1;
      }
    }
  }

  return result;
}

uint64_t llvm::APInt::sshl_ov@<X0>(llvm::APInt *this@<X0>, const llvm::APInt *a2@<X1>, BOOL *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(this + 2);
  v6 = *(a2 + 2);
  if (v6 < 0x41)
  {
    goto LABEL_10;
  }

  v7 = 0;
  a2 = *a2;
  v8 = ((v6 + 63) >> 6) + 1;
  while (1)
  {
    v9 = *(a2 + (v8 - 2));
    if (v9)
    {
      break;
    }

    v7 += 64;
    if (--v8 <= 1)
    {
      goto LABEL_7;
    }
  }

  v7 += __clz(v9);
LABEL_7:
  v10 = v6 | 0xFFFFFFC0;
  if ((v6 & 0x3F) == 0)
  {
    v10 = 0;
  }

  if ((v6 - v10 - v7) <= 0x40)
  {
LABEL_10:
    v11 = *a2;
    if (v11 <= v5)
    {
      LODWORD(v5) = v11;
    }
  }

  return llvm::APInt::sshl_ov(this, a3, v5, a4);
}

uint64_t llvm::APInt::sshl_ov@<X0>(uint64_t this@<X0>, BOOL *a2@<X2>, unsigned int a3@<W1>, uint64_t a4@<X8>)
{
  v4 = *(this + 8);
  *a2 = v4 <= a3;
  if (v4 <= a3)
  {
    *(a4 + 8) = v4;
    if (v4 > 0x40)
    {
      operator new[]();
    }

    *a4 = 0;
    return this;
  }

  v5 = v4 - 1;
  if (v4 > 0x40)
  {
    v8 = *this;
    if ((*(*this + 8 * (v5 >> 6)) >> v5))
    {
      v12 = 64 - (v4 & 0x3F);
      v13 = v4 & 0x3F;
      if ((v4 & 0x3F) == 0)
      {
        v13 = 64;
        v12 = 0;
      }

      v14 = __clz(~(*(v8 + (((v4 + 63) >> 3) & 0x3FFFFFF8) - 8) << v12));
      if (v13 != v14)
      {
        *a2 = v14 <= a3;
        *(a4 + 8) = v4;
        goto LABEL_28;
      }

      v15 = ((v4 + 63) >> 6) - 1;
      while (1)
      {
        v16 = *(v8 + 8 * --v15);
        if (v16 != -1)
        {
          break;
        }

        v13 += 64;
        if (v15 <= 0)
        {
          goto LABEL_27;
        }
      }

      v13 += __clz(~v16);
    }

    else
    {
      v9 = 0;
      v10 = ((v4 + 63) >> 6) + 1;
      while (1)
      {
        v11 = *(v8 + 8 * (v10 - 2));
        if (v11)
        {
          break;
        }

        v9 += 64;
        if (--v10 <= 1)
        {
          goto LABEL_22;
        }
      }

      v9 += __clz(v11);
LABEL_22:
      v17 = v4 | 0xFFFFFFC0;
      if ((v4 & 0x3F) == 0)
      {
        v17 = 0;
      }

      v13 = v9 + v17;
    }

LABEL_27:
    *a2 = v13 <= a3;
    *(a4 + 8) = v4;
LABEL_28:
    operator new[]();
  }

  v6 = v4 + __clz(*this) - 64;
  v7 = __clz(~(*this << -v4));
  if (((*this >> v5) & 1) == 0)
  {
    v7 = v6;
  }

  *a2 = v7 <= a3;
  *(a4 + 8) = v4;
  *a4 = (*this << a3) & (0xFFFFFFFFFFFFFFFFLL >> -v4);
  return this;
}

uint64_t llvm::APInt::ushl_ov@<X0>(llvm::APInt *this@<X0>, const llvm::APInt *a2@<X1>, BOOL *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(this + 2);
  v6 = *(a2 + 2);
  if (v6 < 0x41)
  {
    goto LABEL_10;
  }

  v7 = 0;
  a2 = *a2;
  v8 = ((v6 + 63) >> 6) + 1;
  while (1)
  {
    v9 = *(a2 + (v8 - 2));
    if (v9)
    {
      break;
    }

    v7 += 64;
    if (--v8 <= 1)
    {
      goto LABEL_7;
    }
  }

  v7 += __clz(v9);
LABEL_7:
  v10 = v6 | 0xFFFFFFC0;
  if ((v6 & 0x3F) == 0)
  {
    v10 = 0;
  }

  if ((v6 - v10 - v7) <= 0x40)
  {
LABEL_10:
    v11 = *a2;
    if (v11 <= v5)
    {
      LODWORD(v5) = v11;
    }
  }

  return llvm::APInt::ushl_ov(this, a3, v5, a4);
}

uint64_t llvm::APInt::ushl_ov@<X0>(uint64_t this@<X0>, BOOL *a2@<X2>, unsigned int a3@<W1>, uint64_t a4@<X8>)
{
  v4 = *(this + 8);
  *a2 = v4 <= a3;
  if (v4 > a3)
  {
    if (v4 > 0x40)
    {
      v5 = 0;
      v6 = ((v4 + 63) >> 6) + 1;
      while (1)
      {
        v7 = *(*this + 8 * (v6 - 2));
        if (v7)
        {
          break;
        }

        v5 += 64;
        if (--v6 <= 1)
        {
          goto LABEL_12;
        }
      }

      v5 += __clz(v7);
LABEL_12:
      v8 = v4 | 0xFFFFFFC0;
      if ((v4 & 0x3F) == 0)
      {
        v8 = 0;
      }

      *a2 = v5 + v8 < a3;
      *(a4 + 8) = v4;
      operator new[]();
    }

    *a2 = v4 + __clz(*this) - 64 < a3;
    *(a4 + 8) = v4;
    *a4 = (*this << a3) & (0xFFFFFFFFFFFFFFFFLL >> -v4);
  }

  else
  {
    *(a4 + 8) = v4;
    if (v4 > 0x40)
    {
      operator new[]();
    }

    *a4 = 0;
  }

  return this;
}

void llvm::APInt::sfloordiv_ov(llvm::APInt *this@<X0>, const llvm::APInt *a2@<X1>, BOOL *a3@<X2>, uint64_t a4@<X8>)
{
  llvm::APInt::sdiv_ov(this, a2, a3, &__src);
  if (v18 > 0x40)
  {
    operator new[]();
  }

  v7 = 0xFFFFFFFFFFFFFFFFLL >> -v18;
  if (!v18)
  {
    v7 = 0;
  }

  v8 = *this;
  if (((*a2 * __src) & v7) == *this)
  {
    goto LABEL_16;
  }

  v9 = *(this + 2);
  v10 = v9 - 1;
  if (v9 >= 0x41)
  {
    v8 = *(v8 + 8 * (v10 >> 6));
  }

  v11 = v8 >> v10;
  v12 = *(a2 + 2);
  v13 = v12 - 1;
  v14 = v12 >= 0x41 ? (*a2 + 8 * (v13 >> 6)) : a2;
  if (((v11 ^ (*v14 >> v13)) & 1) == 0)
  {
LABEL_16:
    *(a4 + 8) = v18;
    v16 = __src;
  }

  else
  {
    v15 = 0xFFFFFFFFFFFFFFFFLL >> -v18;
    if (!v18)
    {
      v15 = 0;
    }

    v16 = v15 & (__src - 1);
    *(a4 + 8) = v18;
  }

  *a4 = v16;
}

uint64_t *llvm::APInt::sadd_sat@<X0>(llvm::APInt *this@<X0>, const llvm::APInt *a2@<X1>, uint64_t a3@<X8>)
{
  v12 = 0;
  result = llvm::APInt::sadd_ov(this, a2, &v12, &v10);
  if (!v12)
  {
    *(a3 + 8) = v11;
    *a3 = v10;
    v11 = 0;
    return result;
  }

  v6 = *(this + 2);
  v7 = v6 - 1;
  if (v6 > 0x40)
  {
    *(a3 + 8) = v6;
    operator new[]();
  }

  v8 = 1 << v7;
  if ((*this & (1 << v7)) != 0)
  {
    *(a3 + 8) = v6;
    *a3 = 0;
    *a3 |= v8;
    if (v11 < 0x41)
    {
      return result;
    }
  }

  else
  {
    *(a3 + 8) = v6;
    if (v6)
    {
      v9 = 0xFFFFFFFFFFFFFFFFLL >> -v6;
    }

    else
    {
      v9 = 0;
    }

    *a3 = v9;
    *a3 &= ~v8;
    if (v11 < 0x41)
    {
      return result;
    }
  }

  result = v10;
  if (v10)
  {

    JUMPOUT(0x259C63150);
  }

  return result;
}

uint64_t llvm::APInt::uadd_sat@<X0>(llvm::APInt *this@<X0>, const llvm::APInt *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::APInt::uadd_ov(this, a2, &v10, &v8);
  if (v10)
  {
    v6 = *(this + 2);
    *(a3 + 8) = v6;
    if (v6 > 0x40)
    {
      operator new[]();
    }

    if (v6)
    {
      v7 = 0xFFFFFFFFFFFFFFFFLL >> -v6;
    }

    else
    {
      v7 = 0;
    }

    *a3 = v7;
    if (v9 >= 0x41)
    {
      result = v8;
      if (v8)
      {

        JUMPOUT(0x259C63150);
      }
    }
  }

  else
  {
    *(a3 + 8) = v9;
    *a3 = v8;
  }

  return result;
}

uint64_t *llvm::APInt::ssub_sat@<X0>(llvm::APInt *this@<X0>, const llvm::APInt *a2@<X1>, uint64_t a3@<X8>)
{
  v12 = 0;
  result = llvm::APInt::ssub_ov(this, a2, &v12, &v10);
  if (!v12)
  {
    *(a3 + 8) = v11;
    *a3 = v10;
    v11 = 0;
    return result;
  }

  v6 = *(this + 2);
  v7 = v6 - 1;
  if (v6 > 0x40)
  {
    *(a3 + 8) = v6;
    operator new[]();
  }

  v8 = 1 << v7;
  if ((*this & (1 << v7)) != 0)
  {
    *(a3 + 8) = v6;
    *a3 = 0;
    *a3 |= v8;
    if (v11 < 0x41)
    {
      return result;
    }
  }

  else
  {
    *(a3 + 8) = v6;
    if (v6)
    {
      v9 = 0xFFFFFFFFFFFFFFFFLL >> -v6;
    }

    else
    {
      v9 = 0;
    }

    *a3 = v9;
    *a3 &= ~v8;
    if (v11 < 0x41)
    {
      return result;
    }
  }

  result = v10;
  if (v10)
  {

    JUMPOUT(0x259C63150);
  }

  return result;
}

uint64_t llvm::APInt::usub_sat@<X0>(llvm::APInt *this@<X0>, const llvm::APInt *a2@<X1>, uint64_t a3@<X8>)
{
  v9 = 0;
  result = llvm::APInt::usub_ov(this, a2, &v9, &v7);
  if (v9)
  {
    v6 = *(this + 2);
    *(a3 + 8) = v6;
    if (v6 > 0x40)
    {
      operator new[]();
    }

    *a3 = 0;
    if (v8 >= 0x41)
    {
      result = v7;
      if (v7)
      {

        JUMPOUT(0x259C63150);
      }
    }
  }

  else
  {
    *(a3 + 8) = v8;
    *a3 = v7;
    v8 = 0;
  }

  return result;
}

void llvm::APInt::smul_sat(const void **this@<X0>, const llvm::APInt *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = this;
  v15 = 0;
  llvm::APInt::smul_ov(this, a2, &v15, &v13);
  if (!v15)
  {
    *(a3 + 8) = v14;
    *a3 = v13;
    v14 = 0;
    return;
  }

  v6 = *(v4 + 2);
  v7 = v6 - 1;
  if (v6 >= 0x41)
  {
    v4 = (*v4 + 8 * (v7 >> 6));
  }

  v8 = 1 << v7;
  v9 = *(a2 + 2);
  v10 = v9 - 1;
  if (v9 >= 0x41)
  {
    v11 = (*a2 + 8 * ((v9 - 1) >> 6));
  }

  else
  {
    v11 = a2;
  }

  if (((*v4 & (1 << v7)) != 0) != ((*v11 >> v10) & 1))
  {
    *(a3 + 8) = v6;
    if (v6 >= 0x41)
    {
      operator new[]();
    }

    *a3 = 0;
    *a3 |= v8;
    if (v14 < 0x41)
    {
      return;
    }

LABEL_20:
    if (v13)
    {

      JUMPOUT(0x259C63150);
    }

    return;
  }

  *(a3 + 8) = v6;
  if (v6 > 0x40)
  {
    operator new[]();
  }

  if (v6)
  {
    v12 = 0xFFFFFFFFFFFFFFFFLL >> -v6;
  }

  else
  {
    v12 = 0;
  }

  *a3 = v12;
  *a3 &= ~v8;
  if (v14 >= 0x41)
  {
    goto LABEL_20;
  }
}

uint64_t llvm::APInt::umul_sat@<X0>(llvm::APInt *this@<X0>, const llvm::APInt *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::APInt::umul_ov(this, a2, &v10, &v8);
  if (v10)
  {
    v6 = *(this + 2);
    *(a3 + 8) = v6;
    if (v6 > 0x40)
    {
      operator new[]();
    }

    if (v6)
    {
      v7 = 0xFFFFFFFFFFFFFFFFLL >> -v6;
    }

    else
    {
      v7 = 0;
    }

    *a3 = v7;
    if (v9 >= 0x41)
    {
      result = v8;
      if (v8)
      {

        JUMPOUT(0x259C63150);
      }
    }
  }

  else
  {
    *(a3 + 8) = v9;
    *a3 = v8;
  }

  return result;
}

uint64_t llvm::APInt::sshl_sat@<X0>(llvm::APInt *this@<X0>, const llvm::APInt *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(this + 2);
  v5 = *(a2 + 2);
  if (v5 < 0x41)
  {
    goto LABEL_10;
  }

  v6 = 0;
  a2 = *a2;
  v7 = ((v5 + 63) >> 6) + 1;
  while (1)
  {
    v8 = *(a2 + (v7 - 2));
    if (v8)
    {
      break;
    }

    v6 += 64;
    if (--v7 <= 1)
    {
      goto LABEL_7;
    }
  }

  v6 += __clz(v8);
LABEL_7:
  v9 = v5 | 0xFFFFFFC0;
  if ((v5 & 0x3F) == 0)
  {
    v9 = 0;
  }

  if ((v5 - v9 - v6) <= 0x40)
  {
LABEL_10:
    v10 = *a2;
    if (v10 <= v4)
    {
      LODWORD(v4) = v10;
    }
  }

  return llvm::APInt::sshl_sat(this, v4, a3);
}

uint64_t llvm::APInt::sshl_sat@<X0>(llvm::APInt *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v12 = 0;
  result = llvm::APInt::sshl_ov(this, &v12, a2, &v10);
  if (!v12)
  {
    *(a3 + 8) = v11;
    *a3 = v10;
    v11 = 0;
    return result;
  }

  v6 = *(this + 2);
  v7 = v6 - 1;
  if (v6 > 0x40)
  {
    *(a3 + 8) = v6;
    operator new[]();
  }

  v8 = 1 << v7;
  if ((*this & (1 << v7)) != 0)
  {
    *(a3 + 8) = v6;
    *a3 = 0;
    *a3 |= v8;
    if (v11 < 0x41)
    {
      return result;
    }
  }

  else
  {
    *(a3 + 8) = v6;
    if (v6)
    {
      v9 = 0xFFFFFFFFFFFFFFFFLL >> -v6;
    }

    else
    {
      v9 = 0;
    }

    *a3 = v9;
    *a3 &= ~v8;
    if (v11 < 0x41)
    {
      return result;
    }
  }

  result = v10;
  if (v10)
  {

    JUMPOUT(0x259C63150);
  }

  return result;
}

uint64_t llvm::APInt::ushl_sat@<X0>(llvm::APInt *this@<X0>, const llvm::APInt *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(this + 2);
  v5 = *(a2 + 2);
  if (v5 < 0x41)
  {
    goto LABEL_10;
  }

  v6 = 0;
  a2 = *a2;
  v7 = ((v5 + 63) >> 6) + 1;
  while (1)
  {
    v8 = *(a2 + (v7 - 2));
    if (v8)
    {
      break;
    }

    v6 += 64;
    if (--v7 <= 1)
    {
      goto LABEL_7;
    }
  }

  v6 += __clz(v8);
LABEL_7:
  v9 = v5 | 0xFFFFFFC0;
  if ((v5 & 0x3F) == 0)
  {
    v9 = 0;
  }

  if ((v5 - v9 - v6) <= 0x40)
  {
LABEL_10:
    v10 = *a2;
    if (v10 <= v4)
    {
      LODWORD(v4) = v10;
    }
  }

  return llvm::APInt::ushl_sat(this, v4, a3);
}

uint64_t llvm::APInt::ushl_sat@<X0>(llvm::APInt *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::APInt::ushl_ov(this, &v10, a2, &v8);
  if (v10)
  {
    v6 = *(this + 2);
    *(a3 + 8) = v6;
    if (v6 > 0x40)
    {
      operator new[]();
    }

    if (v6)
    {
      v7 = 0xFFFFFFFFFFFFFFFFLL >> -v6;
    }

    else
    {
      v7 = 0;
    }

    *a3 = v7;
    if (v9 >= 0x41)
    {
      result = v8;
      if (v8)
      {

        JUMPOUT(0x259C63150);
      }
    }
  }

  else
  {
    *(a3 + 8) = v9;
    *a3 = v8;
  }

  return result;
}

unsigned int *llvm::APInt::toString(unsigned int *result, void *a2, unsigned int a3, char a4, int a5, int a6, int a7)
{
  v37 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    HIDWORD(v8) = a3 - 2;
    LODWORD(v8) = a3 - 2;
    v9 = off_27983B6E0[(v8 >> 1)];
  }

  else
  {
    v9 = "";
  }

  if (a3 == 10 || a3 == 8)
  {
    v11 = 3;
  }

  else
  {
    v11 = 4;
  }

  v12 = result[2];
  if (v12 > 0x40)
  {
    v20 = 0;
    v21 = ((v12 + 63) >> 6) + 1;
    while (1)
    {
      v22 = *(*result + 8 * (v21 - 2));
      if (v22)
      {
        break;
      }

      v20 += 64;
      if (--v21 <= 1)
      {
        v23 = v12 | 0xFFFFFFC0;
        if ((v12 & 0x3F) == 0)
        {
          v23 = 0;
        }

        if (v20 + v23 == v12)
        {
          goto LABEL_34;
        }

LABEL_46:
        v35 = result[2];
        operator new[]();
      }
    }

    v30 = __clz(v22) + v20;
    v31 = v12 | 0xFFFFFFC0;
    if ((v12 & 0x3F) == 0)
    {
      v31 = 0;
    }

    if (v30 + v31 != v12)
    {
      goto LABEL_46;
    }

LABEL_34:
    v24 = *v9;
    if (*v9)
    {
      v25 = a2[1];
      v26 = (v9 + 1);
      do
      {
        if ((v25 + 1) > a2[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        *(*a2 + v25) = v24;
        v25 = a2[1] + 1;
        a2[1] = v25;
        v27 = *v26++;
        v24 = v27;
      }

      while (v27);
    }

    else
    {
      v25 = a2[1];
    }

    if ((v25 + 1) > a2[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*a2 + v25) = 48;
    ++a2[1];
  }

  else
  {
    v13 = *result;
    if (!*result)
    {
      goto LABEL_34;
    }

    if (a6)
    {
      v14 = 36;
    }

    else
    {
      v14 = 0;
    }

    if (a4)
    {
      v13 = v12 ? (v13 << -v12) >> -v12 : 0;
      if ((v13 & 0x8000000000000000) != 0)
      {
        v15 = a2[1];
        if ((v15 + 1) > a2[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        *(*a2 + v15) = 45;
        ++a2[1];
        v13 = -v13;
      }
    }

    v16 = *v9;
    if (*v9)
    {
      v17 = a2[1];
      v18 = (v9 + 1);
      do
      {
        if ((v17 + 1) > a2[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        *(*a2 + v17) = v16;
        v17 = a2[1] + 1;
        a2[1] = v17;
        v19 = *v18++;
        v16 = v19;
      }

      while (v19);
    }

    if (v13)
    {
      v28 = &llvm::APInt::toString(llvm::SmallVectorImpl<char> &,unsigned int,BOOL,BOOL,BOOL,BOOL)const::BothDigits[v14];
      v36 = llvm::APInt::toString(llvm::SmallVectorImpl<char> &,unsigned int,BOOL,BOOL,BOOL,BOOL)const::BothDigits[v14 + v13 % a3];
      if (v13 >= a3)
      {
        v33 = 1;
        v29 = 64;
        do
        {
          if (a7 && !(v33 % v11))
          {
            --v29;
            *(&v34 + v29) = 39;
          }

          v13 /= a3;
          --v29;
          *(&v34 + v29) = v28[v13 % a3];
          ++v33;
        }

        while (v13 >= a3);
      }

      else
      {
        v29 = 64;
      }
    }

    else
    {
      v29 = 65;
    }

    v32 = a2[1];
    if (a2[2] < (v32 + 65 - v29))
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    if (v29 != 65)
    {
      result = memcpy((*a2 + v32), &v34 + v29, 65 - v29);
      v32 = a2[1];
    }

    a2[1] = v32 + 65 - v29;
  }

  return result;
}

void llvm::APInt::print(llvm::APInt *this, llvm::raw_ostream *a2, char a3)
{
  v6[5] = *MEMORY[0x277D85DE8];
  v4 = v6;
  v5 = xmmword_2573695B0;
  llvm::APInt::toString(this, &v4, 0xAu, a3, 0, 1, 0);
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

int8x16_t *llvm::APInt::tcNegate(int8x16_t *this, unint64_t *a2)
{
  if (!a2)
  {
    return this;
  }

  if (a2 < 4)
  {
    v2 = 0;
LABEL_7:
    v6 = a2 - v2;
    v7 = &this->i64[v2];
    do
    {
      *v7 = ~*v7;
      ++v7;
      --v6;
    }

    while (v6);
    goto LABEL_9;
  }

  v2 = a2 & 0xFFFFFFFC;
  v3 = this + 1;
  v4 = v2;
  do
  {
    v5 = vmvnq_s8(*v3);
    v3[-1] = vmvnq_s8(v3[-1]);
    *v3 = v5;
    v3 += 2;
    v4 -= 4;
  }

  while (v4);
  if (v2 != a2)
  {
    goto LABEL_7;
  }

LABEL_9:
  v8 = this->i64[0] + 1;
  this->i64[0] = v8;
  if (a2 != 1 && !v8)
  {
    v9 = this->i64[1];
    this->i64[1] = v9 + 1;
    if (v9 == -1)
    {
      v10 = this + 1;
      v11 = a2 - 2;
      do
      {
        if (!v11)
        {
          break;
        }

        --v11;
        v12 = __CFADD__(v10->i64[0]++, 1);
        v10 = (v10 + 8);
      }

      while (v12);
    }
  }

  return this;
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

uint64_t llvm::APInt::tcDivide(llvm::APInt *this, unint64_t *a2, char *a3, _BYTE *__src, unint64_t *a5)
{
  v5 = a5 - 1;
  for (i = 64 - (a5 << 6); ; i += 64)
  {
    v7 = a2[v5];
    if (v7)
    {
      break;
    }

    if (--v5 == -1)
    {
      return 1;
    }
  }

  v8 = (__clz(v7) - i) ^ 0x3F;
  v9 = __CFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    return 1;
  }

  v12 = (a5 << 6) - v10;
  if (a5)
  {
    v13 = 0;
    if (a5 < 4)
    {
      goto LABEL_14;
    }

    if ((__src - a2) < 0x20)
    {
      goto LABEL_14;
    }

    v13 = a5 & 0xFFFFFFFC;
    v14 = a2 + 2;
    v15 = __src + 16;
    v16 = v13;
    do
    {
      v17 = *v14;
      *(v15 - 1) = *(v14 - 1);
      *v15 = v17;
      v14 += 4;
      v15 += 2;
      v16 -= 4;
    }

    while (v16);
    if (v13 != a5)
    {
LABEL_14:
      v18 = a5 - v13;
      v19 = v13;
      v20 = &__src[8 * v13];
      v21 = &a2[v19];
      do
      {
        v22 = *v21++;
        *v20++ = v22;
        --v18;
      }

      while (v18);
    }
  }

  v23 = v12 >> 6;
  if (v12)
  {
    v24 = this;
    v25 = a3;
    if (v23 >= a5)
    {
      v26 = a5;
    }

    else
    {
      v26 = v12 >> 6;
    }

    v27 = v12 & 0x3F;
    if ((v12 & 0x3F) != 0)
    {
      if (v23 < a5)
      {
        v28 = a5 - 1;
        v29 = *&__src[8 * (v28 - v26)] << v27;
        v30 = &__src[8 * v28];
        *v30 = v29;
        if (v28 > v26)
        {
          v31 = &__src[8 * a5 - 16 + -8 * v26];
          v32 = a5 - 2 - v26;
          v33 = &__src[8 * (a5 - 2)];
          do
          {
            v34 = *v31--;
            *v30 = (v34 >> (64 - v27)) | v29;
            --v28;
            v29 = *&__src[8 * v32] << v27;
            v30 = &__src[8 * v28];
            *v33-- = v29;
            --v32;
          }

          while (v26 < v28);
        }
      }
    }

    else
    {
      v35 = a5;
      v36 = __src;
      memmove(&__src[8 * v26], __src, 8 * (a5 - v26));
      __src = v36;
      LODWORD(a5) = v35;
    }

    v37 = 8 * v26;
    v38 = a5;
    v39 = __src;
    bzero(__src, v37);
    __src = v39;
    LODWORD(a5) = v38;
    a3 = v25;
    this = v24;
  }

  v40 = 1 << v12;
  if (a5)
  {
    v41 = 0;
    v42 = a5;
    if (a5 < 4)
    {
      goto LABEL_34;
    }

    if ((a3 - this) < 0x20)
    {
      goto LABEL_34;
    }

    v41 = a5 & 0xFFFFFFFC;
    v43 = (this + 16);
    v44 = (a3 + 16);
    v45 = v41;
    do
    {
      v46 = *v43;
      *(v44 - 1) = *(v43 - 1);
      *v44 = v46;
      v43 += 2;
      v44 += 4;
      v45 -= 4;
    }

    while (v45);
    if (v41 != a5)
    {
LABEL_34:
      v47 = a5 - v41;
      v48 = 8 * v41;
      v49 = &a3[8 * v41];
      v50 = (this + v48);
      do
      {
        v51 = *v50++;
        *v49++ = v51;
        --v47;
      }

      while (v47);
    }

    *this = 0;
    if (a5 == 1)
    {
      v42 = 1;
    }

    else
    {
      v52 = this;
      v53 = a5;
      v54 = __src;
      v55 = a3;
      bzero(this + 8, 8 * (a5 - 1));
      this = v52;
      a3 = v55;
      __src = v54;
      LODWORD(a5) = v53;
    }
  }

  else
  {
    v42 = 0;
    *this = 0;
  }

  while (2)
  {
    v57 = 8 * v42;
    while (v57)
    {
      v58 = *&a3[v57 - 8];
      v59 = *&__src[v57 - 8];
      v57 -= 8;
      if (v58 != v59)
      {
        if (v58 <= v59)
        {
          goto LABEL_55;
        }

        break;
      }
    }

    if (a5)
    {
      v60 = 0;
      v61 = a3;
      v62 = __src;
      v63 = v42;
      do
      {
        v64 = *v62++;
        v65 = *v61 - v64;
        v66 = *v61 < v64;
        v67 = *v61 + ~v64;
        if (v60)
        {
          v60 = v67 >= *v61;
        }

        else
        {
          v67 = v65;
          v60 = v66;
        }

        *v61 = v67;
        v61 += 8;
        --v63;
      }

      while (v63);
    }

    *(this + v23) |= v40;
LABEL_55:
    if (v12)
    {
      if (a5)
      {
        v68 = *__src >> 1;
        *__src = v68;
        if (a5 != 1)
        {
          v69 = __src + 8;
          v70 = 1;
          do
          {
            *(v69 - 1) = v68 | (*&__src[8 * v70] << 63);
            v68 = *&__src[8 * v70] >> 1;
            *v69++ = v68;
            ++v70;
          }

          while (v42 != v70);
        }
      }

      --v12;
      v56 = v40 < 2;
      if (v40 >= 2)
      {
        v40 >>= 1;
      }

      else
      {
        v40 = 0x8000000000000000;
      }

      v23 -= v56;
      continue;
    }

    return 0;
  }
}

void llvm::APIntOps::RoundingUDiv(const void **a1@<X0>, const llvm::APInt *a2@<X1>, unsigned int a3@<W2>, llvm::APInt *a4@<X4>, uint64_t a5@<X5>, unint64_t *a6@<X6>, llvm::APInt *a7@<X8>)
{
  if (a3 <= 1)
  {

    llvm::APInt::udiv(a1, a2, a7);
    return;
  }

  v20 = 1;
  __src = 0;
  v18 = 1;
  v17 = 0;
  llvm::APInt::udivrem(a1, a2, &__src, &v17, a4, a5, a6);
  v8 = v18;
  if (v18 > 0x40)
  {
    v11 = 0;
    v12 = ((v18 + 63) >> 6) + 1;
    while (1)
    {
      v13 = *(v17 + 8 * (v12 - 2));
      if (v13)
      {
        break;
      }

      v11 += 64;
      if (--v12 <= 1)
      {
        v14 = v18 | 0xFFFFFFC0;
        if ((v18 & 0x3F) == 0)
        {
          v14 = 0;
        }

        if (v11 + v14 != v18)
        {
          goto LABEL_7;
        }

        goto LABEL_17;
      }
    }

    v15 = __clz(v13) + v11;
    v16 = v18 | 0xFFFFFFC0;
    if ((v18 & 0x3F) == 0)
    {
      v16 = 0;
    }

    if (v15 + v16 != v18)
    {
      goto LABEL_7;
    }
  }

  else if (v17)
  {
LABEL_7:
    if (v20 >= 0x41)
    {
      operator new[]();
    }

    v9 = __src + 1;
    v10 = 0xFFFFFFFFFFFFFFFFLL >> -v20;
    if (!v20)
    {
      v10 = 0;
    }

    *(a7 + 2) = v20;
    *a7 = v10 & v9;
    if (v8 < 0x41)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

LABEL_17:
  *(a7 + 2) = v20;
  *a7 = __src;
  v20 = 0;
  if (v8 >= 0x41)
  {
LABEL_21:
    if (v17)
    {
      MEMORY[0x259C63150](v17, 0x1000C8000313F17);
    }
  }

LABEL_23:
  if (v20 >= 0x41 && __src)
  {
    MEMORY[0x259C63150](__src, 0x1000C8000313F17);
  }
}

void llvm::APIntOps::RoundingSDiv(llvm::APInt *a1@<X0>, const llvm::APInt *a2@<X1>, int a3@<W2>, llvm::APInt *a4@<X4>, uint64_t a5@<X5>, unint64_t *a6@<X6>, llvm::APInt *a7@<X8>)
{
  if (a3 == 1)
  {

    llvm::APInt::sdiv(a1, a2, a7);
    return;
  }

  v32 = 1;
  __src = 0;
  v30 = 1;
  v29 = 0;
  llvm::APInt::sdivrem(a1, a2, &__src, &v29, a4, a5, a6);
  if (v30 > 0x40)
  {
    v18 = 0;
    v19 = ((v30 + 63) >> 6) + 1;
    v11 = a2;
    while (1)
    {
      v20 = *(v29 + 8 * (v19 - 2));
      if (v20)
      {
        break;
      }

      v18 += 64;
      if (--v19 <= 1)
      {
        v21 = v30 | 0xFFFFFFC0;
        if ((v30 & 0x3F) == 0)
        {
          v21 = 0;
        }

        if (v18 + v21 == v30)
        {
          goto LABEL_33;
        }

        goto LABEL_25;
      }
    }

    v22 = __clz(v20) + v18;
    v23 = v30 | 0xFFFFFFC0;
    if ((v30 & 0x3F) == 0)
    {
      v23 = 0;
    }

    if (v22 + v23 == v30)
    {
      goto LABEL_33;
    }

LABEL_25:
    v12 = v30 - 1;
    v10 = *(v29 + 8 * ((v30 - 1) >> 6));
    if (a3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = v29;
    if (!v29)
    {
      goto LABEL_33;
    }

    v11 = a2;
    v12 = v30 - 1;
    if (a3)
    {
LABEL_8:
      v13 = (v10 >> v12) & 1;
      v14 = *(v11 + 8);
      v15 = v14 - 1;
      if (v14 >= 0x41)
      {
        v11 = *v11 + 8 * (v15 >> 6);
      }

      if (v13 == ((*v11 >> v15) & 1))
      {
        if (v32 >= 0x41)
        {
          operator new[]();
        }

        v16 = __src + 1;
        v17 = 0xFFFFFFFFFFFFFFFFLL >> -v32;
        if (!v32)
        {
          v17 = 0;
        }

        *(a7 + 2) = v32;
        *a7 = v17 & v16;
        if (v30 < 0x41)
        {
          goto LABEL_42;
        }

        goto LABEL_40;
      }

      goto LABEL_33;
    }
  }

  v24 = (v10 >> v12) & 1;
  v25 = *(v11 + 8);
  v26 = v25 - 1;
  if (v25 >= 0x41)
  {
    v11 = *v11 + 8 * (v26 >> 6);
  }

  if (v24 != ((*v11 >> v26) & 1))
  {
    if (v32 >= 0x41)
    {
      operator new[]();
    }

    v27 = __src - 1;
    v28 = 0xFFFFFFFFFFFFFFFFLL >> -v32;
    if (!v32)
    {
      v28 = 0;
    }

    *(a7 + 2) = v32;
    *a7 = v28 & v27;
    if (v30 < 0x41)
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

LABEL_33:
  *(a7 + 2) = v32;
  *a7 = __src;
  v32 = 0;
  if (v30 >= 0x41)
  {
LABEL_40:
    if (v29)
    {
      MEMORY[0x259C63150](v29, 0x1000C8000313F17);
    }
  }

LABEL_42:
  if (v32 >= 0x41 && __src)
  {
    MEMORY[0x259C63150](__src, 0x1000C8000313F17);
  }
}

void llvm::APIntOps::SolveQuadraticEquationWrap(_DWORD *a1@<X0>, llvm::APInt *a2@<X1>, uint64_t *a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  v5 = a4;
  v9 = a1[2];
  v10 = *(a3 + 2);
  if (v10 >= a4)
  {
    if (v10 <= a4)
    {
      if (v10 > 0x40)
      {
        operator new[]();
      }

      if (!*a3)
      {
        goto LABEL_88;
      }
    }

    else
    {
      if (a4 > 0x40)
      {
        operator new[]();
      }

      v15 = a3;
      if (v10 >= 0x41)
      {
        v15 = *a3;
      }

      v16 = *v15;
      v17 = 0xFFFFFFFFFFFFFFFFLL >> -a4;
      if (!a4)
      {
        v17 = 0;
      }

      if ((v16 & v17) == 0)
      {
        goto LABEL_88;
      }
    }

LABEL_4:
    llvm::APInt::sext(a1, 3 * v9, &v240);
    if (a1[2] >= 0x41u && *a1)
    {
      MEMORY[0x259C63150](*a1, 0x1000C8000313F17);
    }

    *a1 = v240;
    a1[2] = v241;
    llvm::APInt::sext(a2, 3 * v9, &v240);
    if (*(a2 + 2) >= 0x41u && *a2)
    {
      MEMORY[0x259C63150](*a2, 0x1000C8000313F17);
    }

    *a2 = v240;
    *(a2 + 2) = v241;
    llvm::APInt::sext(a3, 3 * v9, &v240);
    if (*(a3 + 2) >= 0x41u && *a3)
    {
      MEMORY[0x259C63150](*a3, 0x1000C8000313F17);
    }

    *a3 = v240;
    *(a3 + 2) = v241;
    v12 = a1[2];
    v13 = v12 - 1;
    v14 = a1;
    if (v12 >= 0x41)
    {
      v14 = (*a1 + 8 * (v13 >> 6));
    }

    if ((*v14 >> v13))
    {
      llvm::APInt::negate(a1);
      llvm::APInt::negate(a2);
      llvm::APInt::negate(a3);
    }

    v241 = 3 * v9;
    if (3 * v9 >= 0x41)
    {
      operator new[]();
    }

    v240 = 1 << v5;
    v18 = a1[2];
    if (v18 >= 0x41)
    {
      operator new[]();
    }

    v19 = 2 * *a1;
    v237 = v19;
    v20 = 0xFFFFFFFFFFFFFFFFLL >> -v18;
    if (!v18)
    {
      v20 = 0;
    }

    v237 = v20 & v19;
    v239 = v18;
    v21 = v20 & v19;
    v238 = v20 & v19;
    llvm::APInt::operator*(a2, a2, &v235);
    v22 = *(a2 + 2);
    v23 = v22 - 1;
    v24 = a2;
    if (v22 >= 0x41)
    {
      v24 = (*a2 + 8 * (v23 >> 6));
    }

    if (((*v24 >> v23) & 1) == 0)
    {
      llvm::APInt::srem(a3, &v240, &v233);
      if (*(a3 + 2) >= 0x41u && *a3)
      {
        MEMORY[0x259C63150](*a3, 0x1000C8000313F17);
      }

      v27 = v233;
      *a3 = v233;
      v28 = v234;
      *(a3 + 2) = v234;
      v29 = v28 - 1;
      if (v28 > 0x40)
      {
        if ((*(v27 + 8 * (v29 >> 6)) >> v29))
        {
          v205 = 0;
          v62 = a1[2];
          v206 = a1;
          if (v62 >= 0x41)
          {
            goto LABEL_169;
          }

          goto LABEL_150;
        }

        v75 = 0;
        v76 = (v28 + 63) >> 6;
        v77 = v76 + 1;
        while (1)
        {
          v78 = *(v27 + 8 * (v77 - 2));
          if (v78)
          {
            break;
          }

          v75 += 64;
          if (--v77 <= 1)
          {
            goto LABEL_145;
          }
        }

        v75 += __clz(v78);
LABEL_145:
        v95 = v28 | 0xFFFFFFC0;
        if ((v28 & 0x3F) == 0)
        {
          v95 = 0;
        }

        if (v75 + v95 == v28)
        {
          v30 = 0;
          goto LABEL_149;
        }

        v111 = 0;
        v112 = v240;
        v113 = (v28 + 63) >> 6;
        do
        {
          v114 = *v112++;
          v115 = *v27 - v114;
          v116 = *v27 < v114;
          v117 = *v27 + ~v114;
          if (v111)
          {
            v111 = v117 >= *v27;
          }

          else
          {
            v117 = v115;
            v111 = v116;
          }

          *v27 = v117;
          v27 += 8;
          --v113;
        }

        while (v113);
        v32 = 0xFFFFFFFFFFFFFFFFLL >> -v28;
        v33 = (*a3 + 8 * (v76 - 1));
        v31 = *v33;
      }

      else
      {
        v30 = 0;
        if (!v27 || (v27 & (1 << v29)) != 0)
        {
          goto LABEL_149;
        }

        v31 = v27 - v240;
        *a3 = v31;
        if (v28)
        {
          v32 = 0xFFFFFFFFFFFFFFFFLL >> -v28;
        }

        else
        {
          v32 = 0;
        }

        v33 = a3;
      }

      *v33 = v32 & v31;
      v205 = 0;
      v62 = a1[2];
      v206 = a1;
      if (v62 >= 0x41)
      {
        goto LABEL_169;
      }

      goto LABEL_150;
    }

    v25 = 2 * v21;
    v228 = 2 * v21;
    v26 = 0xFFFFFFFFFFFFFFFFLL >> -v18;
    if (!v18)
    {
      v26 = 0;
    }

    v228 = v26 & v25;
    v230 = v18;
    v229 = v26 & v25;
    llvm::APInt::udiv(&v235, &v229, &v231);
    llvm::APInt::negate(&v231);
    v34 = v232;
    if (v232 >= 0x41)
    {
      v38 = 0;
      v39 = v231;
      v40 = *a3;
      v41 = (v232 + 63) >> 6;
      v42 = v41;
      do
      {
        v43 = *v40++;
        v44 = v43 + *v39;
        v45 = __CFADD__(v43, *v39);
        v46 = (v44 + 1) <= *v39;
        if (v38)
        {
          ++v44;
          v38 = v46;
        }

        else
        {
          v38 = v45;
        }

        *v39++ = v44;
        --v42;
      }

      while (v42);
      v36 = 0xFFFFFFFFFFFFFFFFLL >> -v34;
      v37 = (v231 + 8 * (v41 - 1));
      v35 = *v37;
    }

    else
    {
      v35 = v231 + *a3;
      v231 = v35;
      if (v232)
      {
        v36 = 0xFFFFFFFFFFFFFFFFLL >> -v232;
      }

      else
      {
        v36 = 0;
      }

      v37 = &v231;
    }

    *v37 = v36 & v35;
    v47 = v232;
    v234 = v232;
    v48 = v231;
    v233 = v231;
    v232 = 0;
    llvm::APIntOps::SolveQuadraticEquationWrap(llvm::APInt,llvm::APInt,llvm::APInt,unsigned int)::$_0::operator()(&v231, &v233, &v240);
    if (v47 >= 0x41 && v48)
    {
      MEMORY[0x259C63150](v48, 0x1000C8000313F17);
    }

    v49 = v231;
    v233 = v231;
    v50 = v232;
    v234 = v232;
    v51 = *(a3 + 2);
    if (v51 <= 0x40)
    {
      v52 = *a3;
      if (v51 && (v52 << -v51) > (v231 << -v51))
      {
        v225 = *(a3 + 2);
        v224 = v52;
        llvm::APInt::negate(&v224);
        v79 = v225;
        v232 = v225;
        v231 = v224;
        v225 = 0;
        llvm::APIntOps::SolveQuadraticEquationWrap(llvm::APInt,llvm::APInt,llvm::APInt,unsigned int)::$_0::operator()(&v226, &v231, &v240);
        llvm::APInt::negate(&v226);
        v80 = v227;
        v81 = v226;
        v227 = 0;
        v82 = *(a3 + 2);
        if (v82 >= 0x41)
        {
          v86 = 0;
          v87 = *a3;
          v88 = (v82 + 63) >> 6;
          v89 = v226;
          v90 = v88;
          do
          {
            v91 = *v89++;
            v92 = *v87 - v91;
            v93 = *v87 < v91;
            v94 = *v87 + ~v91;
            if (v86)
            {
              v86 = v94 >= *v87;
            }

            else
            {
              v94 = v92;
              v86 = v93;
            }

            *v87++ = v94;
            --v90;
          }

          while (v90);
          v84 = 0xFFFFFFFFFFFFFFFFLL >> -v82;
          v85 = (*a3 + 8 * (v88 - 1));
          v83 = *v85;
        }

        else
        {
          v83 = *a3 - v226;
          *a3 = v83;
          if (v82)
          {
            v84 = 0xFFFFFFFFFFFFFFFFLL >> -v82;
          }

          else
          {
            v84 = 0;
          }

          v85 = a3;
        }

        *v85 = v84 & v83;
        if (v80 >= 0x41 && v81)
        {
          MEMORY[0x259C63150](v81, 0x1000C8000313F17);
        }

        if (v227 >= 0x41 && v226)
        {
          MEMORY[0x259C63150](v226, 0x1000C8000313F17);
        }

        if (v79 >= 0x41 && v231)
        {
          MEMORY[0x259C63150](v231, 0x1000C8000313F17);
        }

        if (v225 >= 0x41 && v224)
        {
          MEMORY[0x259C63150](v224, 0x1000C8000313F17);
        }

        v30 = 1;
        if (v50 < 0x41)
        {
          goto LABEL_149;
        }
      }

      else
      {
        v63 = v52 - v231;
        *a3 = v52 - v231;
        if (v51)
        {
          v64 = 0xFFFFFFFFFFFFFFFFLL >> -v51;
        }

        else
        {
          v64 = 0;
        }

        v30 = 0;
        *a3 = v64 & v63;
        if (v50 < 0x41)
        {
          goto LABEL_149;
        }
      }

LABEL_141:
      if (v233)
      {
        MEMORY[0x259C63150](v233, 0x1000C8000313F17);
        v205 = v30;
        v62 = a1[2];
        v206 = a1;
        if (v62 >= 0x41)
        {
LABEL_169:
          operator new[]();
        }

LABEL_150:
        v96 = 0xFFFFFFFFFFFFFFFFLL >> -v62;
        if (!v62)
        {
          v96 = 0;
        }

        v97 = *a3 * (v96 & (4 * *a1));
        v232 = v62;
        v231 = v97 & v96;
        llvm::APInt::negate(&v231);
        v98 = v232;
        if (v232 < 0x41)
        {
          v110 = v235 + v231;
          v231 += v235;
          if (v232)
          {
            v108 = 0xFFFFFFFFFFFFFFFFLL >> -v232;
          }

          else
          {
            v108 = 0;
          }

          v109 = &v231;
        }

        else
        {
          v99 = 0;
          v100 = v231;
          v101 = v235;
          v102 = (v232 + 63) >> 6;
          v103 = v102;
          do
          {
            v104 = *v101++;
            v105 = v104 + *v100;
            v106 = __CFADD__(v104, *v100);
            v107 = (v105 + 1) <= *v100;
            if (v99)
            {
              ++v105;
              v99 = v107;
            }

            else
            {
              v99 = v106;
            }

            *v100++ = v105;
            --v103;
          }

          while (v103);
          v108 = 0xFFFFFFFFFFFFFFFFLL >> -v98;
          v109 = (v231 + 8 * (v102 - 1));
          v110 = *v109;
        }

        *v109 = v108 & v110;
        v118 = v232;
        v234 = v232;
        v119 = v231;
        v233 = v231;
        v232 = 0;
        llvm::APInt::sqrt(&v233, &v231);
        v207 = v232;
        if (v232 >= 0x41)
        {
          operator new[]();
        }

        v120 = v231 * v231;
        if (v232)
        {
          v121 = 0xFFFFFFFFFFFFFFFFLL >> -v232;
        }

        else
        {
          v121 = 0;
        }

        v122 = v120 & v121;
        v123 = (v120 & v121) != v119;
        if (v232 && (v122 << -v232) > (v119 << -v232))
        {
          --v231;
          v231 &= 0xFFFFFFFFFFFFFFFFLL >> -v232;
        }

        v230 = 1;
        v229 = 0;
        v223 = 1;
        v222 = 0;
        if (v205)
        {
          v219 = *(a2 + 2);
          if (v219 > 0x40)
          {
            operator new[]();
          }

          v218 = *a2;
          llvm::APInt::negate(&v218);
          v124 = v219;
          v125 = v218;
          v219 = 0;
          if (v207 >= 0x41)
          {
            operator new[]();
          }

          v204 = v231;
          v126 = v231 + v123;
          v215 = v126;
          v127 = 0xFFFFFFFFFFFFFFFFLL >> -v207;
          if (!v207)
          {
            v127 = 0;
          }

          v215 = v127 & v126;
          v217 = v207;
          v216 = (v127 & v126);
          llvm::APInt::negate(&v216);
          v139 = v217;
          if (v217 >= 0x41)
          {
            v154 = 0;
            v155 = v216;
            v156 = (v217 + 63) >> 6;
            v157 = v125;
            v158 = v156;
            do
            {
              v159 = *v157++;
              v160 = v159 + *v155;
              v161 = __CFADD__(v159, *v155);
              v162 = (v160 + 1) <= *v155;
              if (v154)
              {
                ++v160;
                v154 = v162;
              }

              else
              {
                v154 = v161;
              }

              *v155++ = v160;
              --v158;
            }

            while (v158);
            v141 = 0xFFFFFFFFFFFFFFFFLL >> -v139;
            v142 = &v216[(v156 - 1)];
            v140 = *v142;
          }

          else
          {
            v140 = v125 + v216;
            v216 = (v125 + v216);
            if (v217)
            {
              v141 = 0xFFFFFFFFFFFFFFFFLL >> -v217;
            }

            else
            {
              v141 = 0;
            }

            v142 = &v216;
          }

          *v142 = v141 & v140;
          v221 = v217;
          v220 = v216;
          v217 = 0;
          llvm::APInt::sdivrem(&v220, &v238, &v229, &v222, v136, v137, v138);
          if (v221 >= 0x41 && v220)
          {
            MEMORY[0x259C63150](v220, 0x1000C8000313F17);
          }

          if (v217 >= 0x41 && v216)
          {
            MEMORY[0x259C63150](v216, 0x1000C8000313F17);
          }

          if (v124 >= 0x41 && v125)
          {
            MEMORY[0x259C63150](v125, 0x1000C8000313F17);
          }

          if (v219 >= 0x41)
          {
            v153 = v218;
            if (v218)
            {
LABEL_239:
              MEMORY[0x259C63150](v153, 0x1000C8000313F17);
            }
          }
        }

        else
        {
          v213 = *(a2 + 2);
          if (v213 > 0x40)
          {
            operator new[]();
          }

          v212 = *a2;
          llvm::APInt::negate(&v212);
          v131 = v213;
          v132 = v212;
          v214 = v212;
          v213 = 0;
          if (v131 >= 0x41)
          {
            v143 = 0;
            v144 = 0;
            v145 = v231;
            v146 = (v131 + 63) >> 6;
            do
            {
              v147 = v132[v143];
              v148 = *(v145 + v143 * 8);
              v149 = __CFADD__(v148, v147);
              v150 = v148 + v147;
              v151 = v149;
              v152 = v150 + 1 <= v147;
              if (v144)
              {
                ++v150;
                v144 = v152;
              }

              else
              {
                v144 = v151;
              }

              v132[v143++] = v150;
            }

            while (v146 != v143);
            v204 = v145;
            v134 = 0xFFFFFFFFFFFFFFFFLL >> -v131;
            v135 = &v132[(v146 - 1)];
            v133 = *v135;
          }

          else
          {
            v204 = v231;
            v133 = v212 + v231;
            v214 = (v212 + v231);
            if (v131)
            {
              v134 = 0xFFFFFFFFFFFFFFFFLL >> -v131;
            }

            else
            {
              v134 = 0;
            }

            v135 = &v214;
          }

          *v135 = v134 & v133;
          v221 = v131;
          v220 = v214;
          llvm::APInt::sdivrem(&v220, &v238, &v229, &v222, v128, v129, v130);
          if (v221 >= 0x41 && v220)
          {
            MEMORY[0x259C63150](v220, 0x1000C8000313F17);
          }

          if (v213 >= 0x41)
          {
            v153 = v212;
            if (v212)
            {
              goto LABEL_239;
            }
          }
        }

        if (!v123)
        {
          if (v223 > 0x40)
          {
            v185 = 0;
            v186 = ((v223 + 63) >> 6) + 1;
            while (1)
            {
              v187 = *(v222 + 8 * (v186 - 2));
              if (v187)
              {
                break;
              }

              v185 += 64;
              if (--v186 <= 1)
              {
                v188 = v223 | 0xFFFFFFC0;
                if ((v223 & 0x3F) == 0)
                {
                  v188 = 0;
                }

                if (v185 + v188 != v223)
                {
                  goto LABEL_243;
                }

                goto LABEL_272;
              }
            }

            v192 = __clz(v187) + v185;
            v193 = v223 | 0xFFFFFFC0;
            if ((v223 & 0x3F) == 0)
            {
              v193 = 0;
            }

            if (v192 + v193 != v223)
            {
              goto LABEL_243;
            }
          }

          else if (v222)
          {
            goto LABEL_243;
          }

LABEL_272:
          *(a5 + 8) = v230;
          *a5 = v229;
          v230 = 0;
          *(a5 + 16) = 1;
LABEL_308:
          if (v223 >= 0x41 && v222)
          {
            MEMORY[0x259C63150](v222, 0x1000C8000313F17);
          }

          if (v230 >= 0x41 && v229)
          {
            MEMORY[0x259C63150](v229, 0x1000C8000313F17);
          }

          if (v207 >= 0x41)
          {
            if (v122)
            {
              MEMORY[0x259C63150](v122, 0x1000C8000313F17);
            }

            if (v204)
            {
              MEMORY[0x259C63150](v204, 0x1000C8000313F17);
              v118 = v234;
            }
          }

          if (v118 >= 0x41 && v233)
          {
            MEMORY[0x259C63150](v233, 0x1000C8000313F17);
          }

          if (v236 >= 0x41 && v235)
          {
            MEMORY[0x259C63150](v235, 0x1000C8000313F17);
          }

          if (v239 >= 0x41 && v238)
          {
            MEMORY[0x259C63150](v238, 0x1000C8000313F17);
          }

          if (v241 >= 0x41)
          {
            if (v240)
            {
              MEMORY[0x259C63150](v240, 0x1000C8000313F17);
            }
          }

          return;
        }

LABEL_243:
        llvm::APInt::operator*(a1, &v229, &v210);
        v163 = v211;
        if (v211 >= 0x41)
        {
          v167 = 0;
          v168 = 0;
          v169 = v210;
          v170 = *a2;
          v171 = (v211 + 63) >> 6;
          do
          {
            v172 = *(v169 + v167 * 8);
            v173 = v170[v167];
            v149 = __CFADD__(v173, v172);
            v174 = v173 + v172;
            v175 = v149;
            v176 = v174 + 1 <= v172;
            if (v168)
            {
              ++v174;
              v168 = v176;
            }

            else
            {
              v168 = v175;
            }

            *(v169 + v167 * 8) = v174;
            ++v167;
          }

          while (v171 != v167);
          *(v169 + 8 * (v171 - 1)) &= 0xFFFFFFFFFFFFFFFFLL >> -v163;
          v211 = 0;
          operator new[]();
        }

        v164 = v210 + *a2;
        v165 = 0xFFFFFFFFFFFFFFFFLL >> -v211;
        if (!v211)
        {
          v165 = 0;
        }

        v210 = v164 & v165;
        v211 = 0;
        v166 = (((v229 * (v164 & v165)) & v165) + *a3) & v165;
        v177 = v239;
        if (v239 > 0x40)
        {
          operator new[]();
        }

        v178 = v229;
        v179 = 0xFFFFFFFFFFFFFFFFLL >> -v239;
        if (!v239)
        {
          v179 = 0;
        }

        v180 = *a2 + ((*v206 + ((((v229 * v238) & v179) + v166) & v179)) & v179);
        v209 = v179 & v180;
        v181 = v179 & v180;
        v182 = v163 - 1;
        v183 = v166;
        if (v163 >= 0x41)
        {
          v183 = *(v166 + 8 * (v182 >> 6));
        }

        if ((((v183 & (1 << v182)) != 0) ^ (v209 >> (v239 - 1))))
        {
          goto LABEL_288;
        }

        if (v163 > 0x40)
        {
          v189 = 0;
          v190 = ((v163 + 63) >> 6) + 1;
          while (1)
          {
            v191 = *(v166 + 8 * (v190 - 2));
            if (v191)
            {
              break;
            }

            v189 += 64;
            if (--v190 <= 1)
            {
              goto LABEL_284;
            }
          }

          v189 += __clz(v191);
LABEL_284:
          v194 = v163 | 0xFFFFFFC0;
          if ((v163 & 0x3F) == 0)
          {
            v194 = 0;
          }

          v184 = v189 + v194 == v163;
        }

        else
        {
          v184 = v166 == 0;
        }

        if (v184 == (v209 == 0))
        {
          *a5 = 0;
          *(a5 + 16) = 0;
          if (v177 < 0x41)
          {
LABEL_305:
            if (v163 >= 0x41 && v166)
            {
              MEMORY[0x259C63150](v166, 0x1000C8000313F17);
            }

            goto LABEL_308;
          }
        }

        else
        {
LABEL_288:
          v195 = v230;
          if (v230 >= 0x41)
          {
            v199 = (v230 + 63) >> 6;
            v149 = __CFADD__((*v229)++, 1);
            if (v149)
            {
              v200 = v199 - 2;
              v201 = (v178 + 8);
              do
              {
                v202 = *v201 + 1;
                *v201++ = v202;
                if (v202)
                {
                  v203 = 1;
                }

                else
                {
                  v203 = v200 == 0;
                }

                --v200;
              }

              while (!v203);
            }

            v197 = 0xFFFFFFFFFFFFFFFFLL >> -v195;
            v198 = (v229 + 8 * (v199 - 1));
            v196 = *v198;
          }

          else
          {
            v196 = ++v229;
            if (v230)
            {
              v197 = 0xFFFFFFFFFFFFFFFFLL >> -v230;
            }

            else
            {
              v197 = 0;
            }

            v198 = &v229;
          }

          *v198 = v197 & v196;
          *(a5 + 8) = v230;
          *a5 = v229;
          v230 = 0;
          *(a5 + 16) = 1;
          if (v177 < 0x41)
          {
            goto LABEL_305;
          }
        }

        if (v181)
        {
          MEMORY[0x259C63150](v181, 0x1000C8000313F17);
        }

        goto LABEL_305;
      }

LABEL_149:
      v205 = v30;
      v62 = a1[2];
      v206 = a1;
      if (v62 >= 0x41)
      {
        goto LABEL_169;
      }

      goto LABEL_150;
    }

    v53 = *a3;
    v54 = *(*a3 + 8 * ((v51 - 1) >> 6)) & (1 << (v51 - 1));
    v55 = (v231 + 8 * ((v232 - 1) >> 6));
    if (v232 < 0x41)
    {
      v55 = &v233;
    }

    if ((v54 != 0) == ((*v55 >> (v232 - 1)) & 1))
    {
      v56 = (v51 + 63) >> 6;
      v65 = v56;
      do
      {
        if (!(v65 * 8))
        {
          goto LABEL_104;
        }

        v66 = v53[v65 - 1];
        v67 = *(v231 - 8 + v65 * 8);
        --v65;
      }

      while (v66 == v67);
      if (v66 <= v67)
      {
LABEL_104:
        v68 = 0;
        v69 = v56;
        do
        {
          v70 = *v49++;
          v71 = *v53 - v70;
          v72 = *v53 < v70;
          v73 = *v53 + ~v70;
          if (v68)
          {
            v68 = v73 >= *v53;
          }

          else
          {
            v73 = v71;
            v68 = v72;
          }

          *v53++ = v73;
          --v69;
        }

        while (v69);
        v74 = (*a3 + 8 * (v56 - 1));
        v30 = 0;
        *v74 &= 0xFFFFFFFFFFFFFFFFLL >> -v51;
        if (v50 < 0x41)
        {
          goto LABEL_149;
        }

        goto LABEL_141;
      }

      v225 = *(a3 + 2);
    }

    else
    {
      if (v54)
      {
        v56 = (v51 + 63) >> 6;
        goto LABEL_104;
      }

      v225 = *(a3 + 2);
    }

    operator new[]();
  }

  llvm::APInt::sext(a3, a4, &v240);
  v11 = v241;
  if (v241 > 0x40)
  {
    v57 = 0;
    v58 = ((v241 + 63) >> 6) + 1;
    while (1)
    {
      v59 = *(v240 + 8 * (v58 - 2));
      if (v59)
      {
        break;
      }

      v57 += 64;
      if (--v58 <= 1)
      {
        goto LABEL_85;
      }
    }

    v57 += __clz(v59);
LABEL_85:
    v60 = v241 | 0xFFFFFFC0;
    if ((v241 & 0x3F) == 0)
    {
      v60 = 0;
    }

    v61 = v57 + v60;
    MEMORY[0x259C63150]();
    if (v61 == v11)
    {
      goto LABEL_88;
    }

    goto LABEL_4;
  }

  if (v240)
  {
    goto LABEL_4;
  }

LABEL_88:
  if (v9 >= 0x41)
  {
    operator new[]();
  }

  *(a5 + 8) = v9;
  *a5 = 0;
  *(a5 + 16) = 1;
}

void llvm::APIntOps::SolveQuadraticEquationWrap(llvm::APInt,llvm::APInt,llvm::APInt,unsigned int)::$_0::operator()(uint64_t a1, uint64_t a2, llvm::APInt *a3)
{
  v6 = *(a2 + 8);
  v7 = v6 - 1;
  if (v6 > 0x40)
  {
    if ((*(*a2 + 8 * (v7 >> 6)) >> v7))
    {
      v32 = *(a2 + 8);
      operator new[]();
    }

    v30 = *(a2 + 8);
    operator new[]();
  }

  v8 = *a2;
  if (((*a2 >> v7) & 1) == 0)
  {
    v30 = *(a2 + 8);
    v29 = v8;
    llvm::APInt::urem(&v29, a3, &v31);
    goto LABEL_10;
  }

  v32 = *(a2 + 8);
  v31 = v8;
  llvm::APInt::negate(&v31);
  v9 = v32;
  v30 = v32;
  v10 = v31;
  v29 = v31;
  llvm::APInt::urem(&v29, a3, &v31);
  if (v9 < 0x41 || !v10)
  {
LABEL_10:
    v11 = v32;
    if (v32 <= 0x40)
    {
      goto LABEL_11;
    }

LABEL_25:
    v22 = 0;
    v12 = v31;
    v23 = ((v11 + 63) >> 6) + 1;
    while (1)
    {
      v24 = v31[(v23 - 2)];
      if (v24)
      {
        break;
      }

      v22 += 64;
      if (--v23 <= 1)
      {
        v25 = v11 | 0xFFFFFFC0;
        if ((v11 & 0x3F) == 0)
        {
          v25 = 0;
        }

        if (v22 + v25 != v11)
        {
          goto LABEL_12;
        }

        goto LABEL_31;
      }
    }

    v27 = __clz(v24) + v22;
    v28 = v11 | 0xFFFFFFC0;
    if ((v11 & 0x3F) == 0)
    {
      v28 = 0;
    }

    if (v27 + v28 != v11)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

  MEMORY[0x259C63150](v10, 0x1000C8000313F17);
  v11 = v32;
  if (v32 > 0x40)
  {
    goto LABEL_25;
  }

LABEL_11:
  v12 = v31;
  if (!v31)
  {
LABEL_31:
    v26 = *(a2 + 8);
    *(a1 + 8) = v26;
    if (v26 > 0x40)
    {
      operator new[]();
    }

    v18 = *a2;
    goto LABEL_39;
  }

LABEL_12:
  v13 = *(a2 + 8);
  v14 = v13 - 1;
  if (v13 > 0x40)
  {
    v15 = *a2;
    if ((*(*a2 + 8 * (v14 >> 6)) >> v14))
    {
      operator new[]();
    }
  }

  else
  {
    v15 = *a2;
    if ((*a2 >> v14))
    {
      v16 = v12 + v15;
      v17 = 0xFFFFFFFFFFFFFFFFLL >> -v13;
      if (!v13)
      {
        v17 = 0;
      }

      v18 = v16 & v17;
      *(a1 + 8) = v13;
      goto LABEL_39;
    }
  }

  v19 = *(a3 + 2);
  if (v19 >= 0x41)
  {
    operator new[]();
  }

  v20 = *a3 - v12;
  v21 = 0xFFFFFFFFFFFFFFFFLL >> -v19;
  if (!v19)
  {
    v21 = 0;
  }

  v29 = v15 + (v20 & v21);
  v29 &= v21;
  *(a1 + 8) = v19;
  v18 = v29;
LABEL_39:
  *a1 = v18;
  if (v32 >= 0x41)
  {
    if (v31)
    {
      MEMORY[0x259C63150](v31, 0x1000C8000313F17);
    }
  }
}

uint64_t llvm::APIntOps::GetMostSignificantDifferentBit(const void **this, const void **a2, const llvm::APInt *a3)
{
  v3 = *(this + 2);
  if (v3 > 0x40)
  {
    if (memcmp(*this, *a2, ((v3 + 63) >> 3) & 0x3FFFFFF8))
    {
      operator new[]();
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v4 = 63 - __clz(*a2 ^ *this);
    if (*this == *a2)
    {
      v5 = 0;
    }

    else
    {
      v5 = 0x100000000;
    }

    if (*this == *a2)
    {
      v6 = 0;
    }

    else
    {
      v6 = v4;
    }

    if (*this == *a2)
    {
      v7 = 0;
    }

    else
    {
      v7 = v4 & 0xFFFFFF00;
    }
  }

  return v5 | v7 | v6;
}

uint64_t *llvm::APIntOps::ScaleBitMask@<X0>(uint64_t *this@<X0>, const llvm::APInt *a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v4 = a2;
  v5 = this;
  v7 = *(this + 2);
  if (v7 == a2)
  {
    *(a4 + 2) = a2;
    if (a2 > 0x40)
    {
      operator new[]();
    }

    *a4 = *this;
    return this;
  }

  *(a4 + 2) = a2;
  if (a2 >= 0x41)
  {
    operator new[]();
  }

  *a4 = 0;
  if (v7 <= 0x40)
  {
    if (*this)
    {
      goto LABEL_21;
    }

    return this;
  }

  v8 = 0;
  v9 = ((v7 + 63) >> 6) + 1;
  do
  {
    v10 = *(*this + 8 * (v9 - 2));
    if (v10)
    {
      v12 = __clz(v10) + v8;
      v13 = v7 | 0xFFFFFFC0;
      if ((v7 & 0x3F) == 0)
      {
        v13 = 0;
      }

      if (v12 + v13 == v7)
      {
        return this;
      }

LABEL_21:
      if (v7 < a2)
      {
        v14 = 0;
        *&v15 = -1;
        *(&v15 + 1) = -1;
        v16 = a2 / v7;
        while (1)
        {
          if (*(v5 + 8) >= 0x41u)
          {
            v19 = (*v5 + 8 * (v14 >> 6));
          }

          else
          {
            v19 = v5;
          }

          if ((*v19 >> v14))
          {
            v20 = v16 * v14;
            v21 = v16 + v16 * v14;
            if (v16 * v14 != v21)
            {
              if (v20 <= 0x3F && v21 <= 0x40)
              {
                v17 = 0xFFFFFFFFFFFFFFFFLL >> ((v20 | 0x40) - v21) << v20;
                v18 = *a4;
                if (v4 < 0x41)
                {
                  v18 = a4;
                }

                *v18 |= v17;
                goto LABEL_26;
              }

              v22 = v20 >> 6;
              v23 = v21 >> 6;
              v24 = -1 << v20;
              if ((v21 & 0x3F) != 0)
              {
                v25 = 0xFFFFFFFFFFFFFFFFLL >> -(v21 & 0x3F);
                if (v23 == v22)
                {
                  v24 &= v25;
                }

                else
                {
                  *(*a4 + 8 * v23) |= v25;
                }
              }

              v26 = *a4;
              *(*a4 + 8 * v22) |= v24;
              v27 = v22 + 1;
              if (v27 < v23)
              {
                v28 = v23 + ~v22;
                if (v28 >= 4)
                {
                  v30 = 0;
                  v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL) + v27;
                  v31 = v26 + 8 * v27;
                  this = (v28 & 0xFFFFFFFFFFFFFFFCLL);
                  do
                  {
                    v32 = (v31 + 8 * v30);
                    *v32 = v15;
                    v32[1] = v15;
                    v30 += 4;
                    this = (this - 4);
                  }

                  while (this);
                  if (v28 == (v28 & 0xFFFFFFFFFFFFFFFCLL))
                  {
                    goto LABEL_26;
                  }
                }

                else
                {
                  v29 = v22 + 1;
                }

                v33 = v23 - v29;
                v34 = (v26 + 8 * v29);
                do
                {
                  *v34++ = -1;
                  --v33;
                }

                while (v33);
              }
            }
          }

LABEL_26:
          if (v7 == ++v14)
          {
            return this;
          }
        }
      }

      v35 = v7 / a2;
      v36 = 0;
      if (a3)
      {
        while (1)
        {
          this = llvm::APInt::extractBits(v5, v35, v36 * v35, &v52);
          v38 = v53;
          if (!v53)
          {
            goto LABEL_49;
          }

          if (v53 >= 0x41)
          {
            v39 = 0;
            v40 = 0;
            v41 = (v53 + 63) >> 6;
            v42 = v41 << 6;
            v43 = 8 * v41;
            while (*(v52 + v40) == -1)
            {
              v40 += 8;
              v39 -= 64;
              if (v43 == v40)
              {
                this = MEMORY[0x259C63150](v52, 0x1000C8000313F17);
                if (v42 == v38)
                {
                  goto LABEL_49;
                }

                goto LABEL_52;
              }
            }

            v44 = __clz(__rbit64(~*(v52 + v40))) - v39;
            this = MEMORY[0x259C63150]();
            if (v44 == v38)
            {
              goto LABEL_49;
            }

            goto LABEL_52;
          }

          if (v52 == 0xFFFFFFFFFFFFFFFFLL >> -v53)
          {
LABEL_49:
            v37 = (*a4 + 8 * (v36 >> 6));
            if (v4 < 0x41)
            {
              v37 = a4;
            }

            *v37 |= 1 << v36;
          }

LABEL_52:
          if (++v36 == v4)
          {
            return this;
          }
        }
      }

      while (1)
      {
        this = llvm::APInt::extractBits(v5, v35, v36 * v35, &v52);
        v46 = v53;
        if (v53 > 0x40)
        {
          break;
        }

        if (v52)
        {
          goto LABEL_65;
        }

LABEL_68:
        if (++v36 == v4)
        {
          return this;
        }
      }

      v47 = 0;
      v48 = ((v53 + 63) >> 6) + 1;
      while (1)
      {
        v49 = *(v52 + 8 * (v48 - 2));
        if (v49)
        {
          break;
        }

        v47 += 64;
        if (--v48 <= 1)
        {
          goto LABEL_75;
        }
      }

      v47 += __clz(v49);
LABEL_75:
      v50 = v53 | 0xFFFFFFC0;
      if ((v53 & 0x3F) == 0)
      {
        v50 = 0;
      }

      v51 = v47 + v50;
      this = MEMORY[0x259C63150](v52, 0x1000C8000313F17);
      if (v51 == v46)
      {
        goto LABEL_68;
      }

LABEL_65:
      v45 = (*a4 + 8 * (v36 >> 6));
      if (v4 < 0x41)
      {
        v45 = a4;
      }

      *v45 |= 1 << v36;
      goto LABEL_68;
    }

    v8 += 64;
    --v9;
  }

  while (v9 > 1);
  v11 = v7 | 0xFFFFFFC0;
  if ((v7 & 0x3F) == 0)
  {
    v11 = 0;
  }

  if (v8 + v11 != v7)
  {
    goto LABEL_21;
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

uint64_t llvm::APIntOps::avgFloorS@<X0>(uint64_t this@<X0>, const llvm::APInt *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(this + 8) > 0x40u)
  {
    operator new[]();
  }

  v5 = *(this + 8);
  v6 = ((*a2 ^ *this) << -v5) >> -v5;
  v7 = 63;
  if (v5 != 1)
  {
    v7 = 1;
  }

  if (!v5)
  {
    v6 = 0;
  }

  v8 = v6 >> v7;
  v9 = 0xFFFFFFFFFFFFFFFFLL >> -v5;
  if (!v5)
  {
    v9 = 0;
  }

  v10 = (v8 & v9) + (*a2 & *this);
  if (v5)
  {
    v11 = 0xFFFFFFFFFFFFFFFFLL >> -v5;
  }

  else
  {
    v11 = 0;
  }

  *(a3 + 8) = v5;
  *a3 = v11 & v10;
  return this;
}

uint64_t llvm::APIntOps::avgFloorU@<X0>(uint64_t this@<X0>, const llvm::APInt *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(this + 8) > 0x40u)
  {
    operator new[]();
  }

  v5 = *(this + 8);
  v6 = (*a2 ^ *this) >> 1;
  if (v5 == 1)
  {
    v6 = 0;
  }

  v7 = v6 + (*a2 & *this);
  v8 = 0xFFFFFFFFFFFFFFFFLL >> -v5;
  if (!v5)
  {
    v8 = 0;
  }

  *(a3 + 8) = v5;
  *a3 = v7 & v8;
  return this;
}

uint64_t **llvm::APIntOps::avgCeilS@<X0>(llvm::APIntOps *this@<X0>, const llvm::APInt *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(this + 2) > 0x40u)
  {
    operator new[]();
  }

  v5 = (*a2 | *this);
  v6 = *(this + 2);
  v7 = *a2 ^ *this;
  v27 = *(this + 2);
  v8 = v7 << -v6 >> -v6;
  v9 = 63;
  if (v6 != 1)
  {
    v9 = 1;
  }

  if (!v6)
  {
    v8 = 0;
  }

  v10 = v8 >> v9;
  v11 = 0xFFFFFFFFFFFFFFFFLL >> -v6;
  if (!v6)
  {
    v11 = 0;
  }

  v26 = (v10 & v11);
  result = llvm::APInt::negate(&v26);
  v13 = v27;
  if (v27 >= 0x41)
  {
    v17 = 0;
    v18 = v26;
    v19 = (v27 + 63) >> 6;
    v20 = v5;
    v21 = v19;
    do
    {
      v22 = *v20++;
      v23 = v22 + *v18;
      v24 = __CFADD__(v22, *v18);
      v25 = (v23 + 1) <= *v18;
      if (v17)
      {
        ++v23;
        v17 = v25;
      }

      else
      {
        v17 = v24;
      }

      *v18++ = v23;
      --v21;
    }

    while (v21);
    v15 = 0xFFFFFFFFFFFFFFFFLL >> -v13;
    v16 = &v26[(v19 - 1)];
    v14 = *v16;
  }

  else
  {
    v14 = v5 + v26;
    v26 = (v5 + v26);
    if (v27)
    {
      v15 = 0xFFFFFFFFFFFFFFFFLL >> -v27;
    }

    else
    {
      v15 = 0;
    }

    v16 = &v26;
  }

  *v16 = v15 & v14;
  *(a3 + 8) = v27;
  *a3 = v26;
  return result;
}

uint64_t **llvm::APIntOps::avgCeilU@<X0>(llvm::APIntOps *this@<X0>, const llvm::APInt *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(this + 2) > 0x40u)
  {
    operator new[]();
  }

  v5 = (*a2 | *this);
  v6 = *(this + 2);
  v7 = *a2 ^ *this;
  v23 = *(this + 2);
  if (v6 == 1)
  {
    v22 = 0;
    result = llvm::APInt::negate(&v22);
    v9 = v23;
    if (v23 < 0x41)
    {
LABEL_6:
      v10 = v5 + v22;
      v22 = (v5 + v22);
      if (v9)
      {
        v11 = 0xFFFFFFFFFFFFFFFFLL >> -v9;
      }

      else
      {
        v11 = 0;
      }

      v12 = &v22;
      goto LABEL_20;
    }
  }

  else
  {
    v22 = (v7 >> 1);
    result = llvm::APInt::negate(&v22);
    v9 = v23;
    if (v23 < 0x41)
    {
      goto LABEL_6;
    }
  }

  v13 = 0;
  v14 = v22;
  v15 = (v9 + 63) >> 6;
  v16 = v5;
  v17 = v15;
  do
  {
    v18 = *v16++;
    v19 = v18 + *v14;
    v20 = __CFADD__(v18, *v14);
    v21 = (v19 + 1) <= *v14;
    if (v13)
    {
      ++v19;
      v13 = v21;
    }

    else
    {
      v13 = v20;
    }

    *v14++ = v19;
    --v17;
  }

  while (v17);
  v11 = 0xFFFFFFFFFFFFFFFFLL >> -v9;
  v12 = &v22[(v15 - 1)];
  v10 = *v12;
LABEL_20:
  *v12 = v11 & v10;
  *(a3 + 8) = v23;
  *a3 = v22;
  return result;
}

uint64_t llvm::APIntOps::mulhs@<X0>(llvm::APIntOps *this@<X0>, const llvm::APInt *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = 2 * *(this + 2);
  llvm::APInt::sext(this, v7, &v17);
  llvm::APInt::sext(a2, v7, &v15);
  v8 = v18;
  if (v18 > 0x40)
  {
    operator new[]();
  }

  v9 = v17;
  v10 = v15;
  v14 = v18;
  v11 = 0xFFFFFFFFFFFFFFFFLL >> -v18;
  if (!v18)
  {
    v11 = 0;
  }

  v13 = (v15 * v17) & v11;
  result = llvm::APInt::extractBits(&v13, *(this + 2), *(this + 2), a3);
  if (v16 >= 0x41 && v10)
  {
    result = MEMORY[0x259C63150](v10, 0x1000C8000313F17);
  }

  if (v8 >= 0x41 && v9)
  {

    JUMPOUT(0x259C63150);
  }

  return result;
}

uint64_t llvm::APIntOps::mulhu@<X0>(llvm::APIntOps *this@<X0>, const llvm::APInt *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(this + 2);
  if (2 * v5 >= 0x41)
  {
    if (v5)
    {
      operator new[]();
    }

    operator new[]();
  }

  v6 = *this;
  v7 = 0xFFFFFFFFFFFFFFFFLL >> ((-2 * v5) & 0x3E);
  if (!(2 * v5))
  {
    v7 = 0;
  }

  v8 = *a2 & v7;
  v11 = 2 * v5;
  v10 = (v8 * (v6 & v7)) & v7;
  return llvm::APInt::extractBits(&v10, v5, v5, a3);
}

void OUTLINED_FUNCTION_1_18()
{

  operator new[]();
}

void *OUTLINED_FUNCTION_7_9(void *a1, void *a2, uint64_t a3, unsigned int *a4)
{
  *a2 = a1;
  *a1 = a3;
  v5 = a1 + 1;
  v6 = 8 * ((*a4 + 63) >> 6) - 8;

  return memset(v5, 255, v6);
}

void *OUTLINED_FUNCTION_9_14@<X0>(int a1@<W8>)
{

  return memcpy(v1, v2, (8 * a1));
}

void OUTLINED_FUNCTION_13_17(void *a1)
{

  bzero(a1, v1 & 0x3FFFFFF8);
}

unint64_t *llvm::APSInt::APSInt(unint64_t *a1, char *a2, uint64_t a3)
{
  *(a1 + 2) = 1;
  *a1 = 0;
  *(a1 + 12) = 0;
  v5 = (a3 << 6) / 0x13uLL + 2;
  llvm::APInt::APInt(&v26, v5, a2, a3, 0xAu);
  v6 = *a2;
  v7 = v27;
  if (v6 != 45)
  {
    if (v27 > 0x40)
    {
      v15 = v7 - llvm::APInt::countLeadingZerosSlowCase(&v26);
      if (v15 >= v5)
      {
LABEL_12:
        v21 = v7;
        if (v7 <= 0x40)
        {
LABEL_13:
          v16 = v26;
          v20 = v26;
          v21 = 0;
          if (*(a1 + 2) > 0x40u && *a1)
          {
            MEMORY[0x259C63150](*a1, 0x1000C8000313F17);
            *a1 = v16;
            *(a1 + 2) = v7;
            *(a1 + 12) = 1;
          }

          else
          {
            *a1 = v26;
            *(a1 + 2) = v7;
            *(a1 + 12) = 1;
          }

          goto LABEL_44;
        }

LABEL_28:
        llvm::APInt::initSlowCase(&v20, &v26);
      }
    }

    else
    {
      v15 = 64 - __clz(v26);
      if (v15 >= v5)
      {
        goto LABEL_12;
      }
    }

    if (v15 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v15;
    }

    llvm::APInt::trunc(&v26, v17, &v24);
    if (v27 >= 0x41 && v26)
    {
      MEMORY[0x259C63150](v26, 0x1000C8000313F17);
    }

    v26 = v24;
    v7 = v25;
    v27 = v25;
    v21 = v25;
    if (v25 <= 0x40)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

  v8 = v27 - 1;
  if (v27 > 0x40)
  {
    v9 = v26;
    if ((*(v26 + 8 * (v8 >> 6)) >> v8))
    {
      v14 = v7 - llvm::APInt::countLeadingOnesSlowCase(&v26) + 1;
      if (v14 < v5)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v14 = v7 - llvm::APInt::countLeadingZerosSlowCase(&v26) + 1;
      if (v14 < v5)
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
    v9 = v26;
    v10 = v26 >> v8;
    v11 = v27 + __clz(v26) - 64;
    v12 = __clz(~(v26 << -v27));
    if (!v27)
    {
      v12 = 0;
    }

    if (v10)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    v14 = v27 - v13 + 1;
    if (v14 < v5)
    {
LABEL_33:
      if (v14 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = v14;
      }

      llvm::APInt::trunc(&v26, v18, &v24);
      if (v27 >= 0x41 && v26)
      {
        MEMORY[0x259C63150](v26, 0x1000C8000313F17);
      }

      v9 = v24;
      v26 = v24;
      v7 = v25;
      v27 = v25;
      v23 = v25;
      if (v25 > 0x40)
      {
LABEL_40:
        llvm::APInt::initSlowCase(&v22, &v26);
      }

      goto LABEL_18;
    }
  }

  v23 = v7;
  if (v7 > 0x40)
  {
    goto LABEL_40;
  }

LABEL_18:
  v22 = v9;
  v23 = 0;
  if (*(a1 + 2) > 0x40u && *a1)
  {
    MEMORY[0x259C63150](*a1, 0x1000C8000313F17);
    *a1 = v9;
    *(a1 + 2) = v7;
    *(a1 + 12) = 0;
  }

  else
  {
    *a1 = v9;
    *(a1 + 2) = v7;
    *(a1 + 12) = 0;
  }

LABEL_44:
  if (v27 >= 0x41 && v26)
  {
    MEMORY[0x259C63150](v26, 0x1000C8000313F17);
  }

  return a1;
}

uint64_t *llvm::APSInt::Profile(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 >= *(a2 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a2 + 4 * v2) = *(a1 + 12);
  ++*(a2 + 8);

  return llvm::APInt::Profile(a1, a2);
}

uint64_t llvm::ARMAttributeParser::stringAttribute@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = llvm::ELFAttrs::attrTypeAsString(a2, a1[14], a1[15], 0);
  v8 = v7;
  CStrRef = llvm::DataExtractor::getCStrRef((a1 + 16), a1 + 19, (a1 + 20));
  result = a1[13];
  if (result)
  {
    v12 = v9;
    v13 = a1[13];
    (*(*result + 248))(result, "Attribute", 9);
    (*(*a1[13] + 64))(a1[13], "Tag", 3, a2);
    if (v8)
    {
      (*(*a1[13] + 232))(a1[13], "TagName", 7, v6, v8);
    }

    (*(*a1[13] + 232))(a1[13], "Value", 5, CStrRef, v12);
    result = (*(*v13 + 256))(v13);
  }

  *a3 = 0;
  return result;
}

uint64_t *llvm::ARMAttributeParser::CPU_arch_profile@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  ULEB128 = llvm::DataExtractor::getULEB128((a1 + 16), a1 + 19, (a1 + 20));
  v7 = "Unknown";
  v8 = 7;
  v9 = "Microcontroller";
  v10 = 15;
  v11 = "Real-time";
  v12 = 9;
  v13 = "Classic";
  if (ULEB128 != 83)
  {
    v13 = "Unknown";
  }

  if (ULEB128 != 82)
  {
    v12 = 7;
    v11 = v13;
  }

  if (ULEB128 != 77)
  {
    v10 = v12;
    v9 = v11;
  }

  if (ULEB128 == 65)
  {
    v8 = 11;
    v7 = "Application";
  }

  if (!ULEB128)
  {
    v8 = 4;
    v7 = "None";
  }

  if (ULEB128 <= 76)
  {
    v14 = v8;
  }

  else
  {
    v14 = v10;
  }

  if (ULEB128 <= 76)
  {
    v15 = v7;
  }

  else
  {
    v15 = v9;
  }

  result = llvm::ELFAttributeParser::printAttribute(a1, a2, ULEB128, v15, v14);
  *a3 = 0;
  return result;
}

void llvm::ARMAttributeParser::ABI_align_needed(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v24[2] = *MEMORY[0x277D85DE8];
  ULEB128 = llvm::DataExtractor::getULEB128((a1 + 16), a1 + 19, (a1 + 20));
  v7 = ULEB128;
  __p = 0;
  v22 = 0uLL;
  if (ULEB128 <= 3)
  {
    v8 = llvm::ARMAttributeParser::ABI_align_needed(llvm::ARMBuildAttrs::AttrType)::strings[ULEB128];
LABEL_11:
    MEMORY[0x259C62C80](&__p, v8);
    goto LABEL_12;
  }

  if (ULEB128 > 0xC)
  {
    v8 = "Invalid";
    goto LABEL_11;
  }

  v9 = 0;
  v10 = 1 << ULEB128;
  v11 = &v23.__r_.__value_.__s.__data_[21];
  do
  {
    *--v11 = (v10 % 0xA) | 0x30;
    ++v9;
    v12 = v10 > 9;
    v10 /= 0xAuLL;
  }

  while (v12);
  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (v9 > 0x16)
  {
    operator new();
  }

  *(&v20.__r_.__value_.__s + 23) = v9;
  if (v9)
  {
    memcpy(&v20, v11, v9);
  }

  v20.__r_.__value_.__s.__data_[v9] = 0;
  v15 = std::string::insert(&v20, 0, "8-byte alignment, ");
  v16 = v15->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = *&v15->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  v17 = std::string::append(&v23, "-byte extended alignment");
  v18 = v17->__r_.__value_.__r.__words[0];
  v24[0] = v17->__r_.__value_.__l.__size_;
  *(v24 + 7) = *(&v17->__r_.__value_.__r.__words[1] + 7);
  v19 = HIBYTE(v17->__r_.__value_.__r.__words[2]);
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p);
  }

  __p = v18;
  *&v22 = v24[0];
  *(&v22 + 7) = *(v24 + 7);
  HIBYTE(v22) = v19;
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

  operator delete(v20.__r_.__value_.__l.__data_);
LABEL_12:
  if (v22 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v22 >= 0)
  {
    v14 = SHIBYTE(v22);
  }

  else
  {
    v14 = v22;
  }

  llvm::ELFAttributeParser::printAttribute(a1, a2, v7, p_p, v14);
  *a3 = 0;
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p);
  }
}

void llvm::ARMAttributeParser::ABI_align_preserved(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  ULEB128 = llvm::DataExtractor::getULEB128((a1 + 16), a1 + 19, (a1 + 20));
  v7 = ULEB128;
  __p[0] = 0;
  __p[1] = 0;
  v14 = 0;
  if (ULEB128 <= 3)
  {
    v8 = llvm::ARMAttributeParser::ABI_align_preserved(llvm::ARMBuildAttrs::AttrType)::strings[ULEB128];
    v9 = strlen(v8);
    if (v9 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v9;
    if (v9 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v16) = v9;
    if (v9)
    {
      memmove(&__dst, v8, v9);
      *(&__dst + v10) = 0;
      if ((SHIBYTE(v14) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      LOBYTE(__dst) = 0;
      if ((SHIBYTE(v14) & 0x80000000) == 0)
      {
LABEL_6:
        *__p = __dst;
        v14 = v16;
        goto LABEL_13;
      }
    }

    operator delete(__p[0]);
    goto LABEL_6;
  }

  if (ULEB128 <= 0xC)
  {
    operator new();
  }

  MEMORY[0x259C62C80](__p, "Invalid");
LABEL_13:
  if (v14 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if (v14 >= 0)
  {
    v12 = SHIBYTE(v14);
  }

  else
  {
    v12 = __p[1];
  }

  llvm::ELFAttributeParser::printAttribute(a1, a2, v7, v11, v12);
  *a3 = 0;
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t llvm::ARMAttributeParser::compatibility@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  ULEB128 = llvm::DataExtractor::getULEB128((a1 + 16), a1 + 19, (a1 + 20));
  CStrRef = llvm::DataExtractor::getCStrRef((a1 + 16), a1 + 19, (a1 + 20));
  result = a1[13];
  if (!result)
  {
    goto LABEL_20;
  }

  v10 = v7;
  v24 = a1[13];
  (*(*result + 248))(result, "Attribute", 9);
  (*(*a1[13] + 64))(a1[13], "Tag", 3, a2);
  v11 = (*(*a1[13] + 288))();
  v12 = *(v11 + 4);
  if (*(v11 + 3) - v12 > 6uLL)
  {
    *(v12 + 3) = 540697973;
    *v12 = 1970037078;
    *(v11 + 4) += 7;
    v14 = llvm::raw_ostream::operator<<(v11, ULEB128);
    v15 = *(v14 + 4);
    if (*(v14 + 3) - v15 > 1uLL)
    {
LABEL_4:
      *v15 = 8236;
      v16 = *(v14 + 3);
      v17 = (*(v14 + 4) + 2);
      *(v14 + 4) = v17;
      if (v10 <= v16 - v17)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v13 = llvm::raw_ostream::write(v11, "Value: ", 7uLL);
    v14 = llvm::raw_ostream::operator<<(v13, ULEB128);
    v15 = *(v14 + 4);
    if (*(v14 + 3) - v15 > 1uLL)
    {
      goto LABEL_4;
    }
  }

  v14 = llvm::raw_ostream::write(v14, ", ", 2uLL);
  v17 = *(v14 + 4);
  if (v10 <= *(v14 + 3) - v17)
  {
LABEL_5:
    if (v10)
    {
      v18 = v14;
      memcpy(v17, CStrRef, v10);
      v14 = v18;
      v17 = (*(v18 + 4) + v10);
      *(v18 + 4) = v17;
    }

    if (v17 < *(v14 + 3))
    {
      goto LABEL_8;
    }

LABEL_12:
    llvm::raw_ostream::write(v14, 10);
    goto LABEL_13;
  }

LABEL_11:
  v14 = llvm::raw_ostream::write(v14, CStrRef, v10);
  v17 = *(v14 + 4);
  if (v17 >= *(v14 + 3))
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v14 + 4) = v17 + 1;
  *v17 = 10;
LABEL_13:
  v19 = a1[13];
  v20 = llvm::ELFAttrs::attrTypeAsString(a2, a1[14], a1[15], 0);
  (*(*v19 + 232))(v19, "TagName", 7, v20, v21);
  if (ULEB128)
  {
    if (ULEB128 == 1)
    {
      v22 = "AEABI Conformant";
      v23 = 16;
    }

    else
    {
      v22 = "AEABI Non-Conformant";
      v23 = 20;
    }
  }

  else
  {
    v22 = "No Specific Requirements";
    v23 = 24;
  }

  (*(*a1[13] + 232))(a1[13], "Description", 11, v22, v23);
  result = (*(*v24 + 256))(v24);
LABEL_20:
  *a3 = 0;
  return result;
}

uint64_t *llvm::ARMAttributeParser::nodefaults@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  ULEB128 = llvm::DataExtractor::getULEB128((a1 + 16), a1 + 19, (a1 + 20));
  result = llvm::ELFAttributeParser::printAttribute(a1, a2, ULEB128, "Unspecified Tags UNDEFINED", 26);
  *a3 = 0;
  return result;
}

void llvm::ARMAttributeParser::also_compatible_with(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v77[1] = *MEMORY[0x277D85DE8];
  v75 = v77;
  v76 = xmmword_25738FDE0;
  v67 = 2;
  v71 = 0;
  v72 = 1;
  v69 = 0;
  v70 = 0;
  v68 = 0;
  v66 = &unk_2868A3F88;
  v73 = &v75;
  llvm::raw_ostream::SetBufferAndMode(&v66, 0, 0, 0);
  v6 = a1[19];
  CStrRef = llvm::DataExtractor::getCStrRef((a1 + 16), a1 + 19, (a1 + 20));
  v9 = v8;
  v55 = a1[19];
  a1[19] = v6;
  ULEB128 = llvm::DataExtractor::getULEB128((a1 + 16), a1 + 19, (a1 + 20));
  v65 = ULEB128;
  v11 = a1[15];
  if (!v11)
  {
LABEL_5:
    std::generic_category();
    v61 = &v65;
    v63 = " is not a valid tag number";
    v64 = 781;
    llvm::Twine::str(&v61, __p);
    llvm::createStringError();
  }

  v12 = a1[14];
  v13 = 24 * v11;
  v14 = v12;
  while (ULEB128 != *v14)
  {
    v14 += 6;
    v13 -= 24;
    if (!v13)
    {
      goto LABEL_5;
    }
  }

  if ((ULEB128 - 4) > 0x3F)
  {
LABEL_21:
    v30 = ULEB128;
    v31 = llvm::DataExtractor::getULEB128((a1 + 16), a1 + 19, (a1 + 20));
    v33 = llvm::ELFAttrs::attrTypeAsString(v30, a1[14], a1[15], 1);
    v34 = v32;
    v35 = v70;
    if (v32 <= v69 - v70)
    {
      if (v32)
      {
        memcpy(v70, v33, v32);
        v35 = &v70[v34];
        v70 += v34;
      }

      v36 = &v66;
      if ((v69 - v35) > 2)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v36 = llvm::raw_ostream::write(&v66, v33, v32);
      v35 = v36[4];
      if ((v36[3] - v35) > 2)
      {
LABEL_23:
        v35[2] = 32;
        *v35 = 15648;
        v36[4] = v36[4] + 3;
LABEL_30:
        llvm::raw_ostream::operator<<(v36, v31);
        goto LABEL_31;
      }
    }

    v36 = llvm::raw_ostream::write(v36, " = ", 3uLL);
    goto LABEL_30;
  }

  if (((1 << (ULEB128 - 4)) & 0x8000000010000003) != 0)
  {
    v15 = ULEB128;
    v16 = llvm::DataExtractor::getCStrRef((a1 + 16), a1 + 19, (a1 + 20));
    v18 = v17;
    v20 = llvm::ELFAttrs::attrTypeAsString(v15, a1[14], a1[15], 1);
    v21 = v19;
    v22 = v70;
    if (v19 <= v69 - v70)
    {
      if (v19)
      {
        memcpy(v70, v20, v19);
        v22 = &v70[v21];
        v70 += v21;
      }

      v23 = &v66;
      if ((v69 - v22) > 2)
      {
LABEL_10:
        v22[2] = 32;
        *v22 = 15648;
        v24 = v23[3];
        v25 = v23[4] + 3;
        v23[4] = v25;
        if (v18 <= v24 - v25)
        {
          goto LABEL_11;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v23 = llvm::raw_ostream::write(&v66, v20, v19);
      v22 = v23[4];
      if ((v23[3] - v22) > 2)
      {
        goto LABEL_10;
      }
    }

    v23 = llvm::raw_ostream::write(v23, " = ", 3uLL);
    v25 = v23[4];
    if (v18 <= v23[3] - v25)
    {
LABEL_11:
      if (v18)
      {
        v26 = v16;
        v27 = a3;
        v28 = v23;
        memcpy(v25, v26, v18);
        v28[4] = v28[4] + v18;
        a3 = v27;
      }

      goto LABEL_31;
    }

LABEL_20:
    llvm::raw_ostream::write(v23, v16, v18);
    goto LABEL_31;
  }

  if (ULEB128 != 6)
  {
    if (ULEB128 == 65)
    {
      std::generic_category();
      v64 = 773;
      v61 = llvm::ELFAttrs::attrTypeAsString(65, v12, v11, 1);
      v62 = v29;
      v63 = " cannot be recursively defined";
      llvm::Twine::str(&v61, __p);
      llvm::createStringError();
    }

    goto LABEL_21;
  }

  v37 = llvm::DataExtractor::getULEB128((a1 + 16), a1 + 19, (a1 + 20));
  v60 = v37;
  if (v37 >= 0x17)
  {
    std::generic_category();
    v56[0] = &v60;
    v56[2] = " is not a valid ";
    v57 = 781;
    v38 = llvm::ELFAttrs::attrTypeAsString(6, a1[14], a1[15], 1);
    __p[0] = v56;
    __p[2] = v38;
    __p[3] = v39;
    v59 = 1282;
    v61 = __p;
    v63 = " value";
    v64 = 770;
    llvm::Twine::str(&v61, &v74);
    llvm::createStringError();
  }

  v44 = v37;
  v46 = llvm::ELFAttrs::attrTypeAsString(6, a1[14], a1[15], 1);
  v47 = v45;
  v48 = v70;
  if (v45 <= v69 - v70)
  {
    if (v45)
    {
      memcpy(v70, v46, v45);
      v48 = &v70[v47];
      v70 += v47;
    }

    v49 = &v66;
  }

  else
  {
    v49 = llvm::raw_ostream::write(&v66, v46, v45);
    v48 = v49[4];
  }

  if ((v49[3] - v48) > 2)
  {
    v48[2] = 32;
    *v48 = 15648;
    v49[4] = v49[4] + 3;
  }

  else
  {
    v49 = llvm::raw_ostream::write(v49, " = ", 3uLL);
  }

  llvm::raw_ostream::operator<<(v49, v44);
  v50 = CPU_arch_strings[v60];
  if (v50)
  {
    if ((v69 - v70) > 1)
    {
      *v70 = 10272;
      v70 += 2;
      v51 = &v66;
    }

    else
    {
      v51 = llvm::raw_ostream::write(&v66, " (", 2uLL);
    }

    v52 = strlen(v50);
    v53 = v51[4];
    if (v52 <= v51[3] - v53)
    {
      if (v52)
      {
        memcpy(v53, v50, v52);
        v51[4] = v51[4] + v52;
      }
    }

    else
    {
      v51 = llvm::raw_ostream::write(v51, v50, v52);
    }

    v54 = v51[4];
    if (v54 >= v51[3])
    {
      llvm::raw_ostream::write(v51, 41);
    }

    else
    {
      v51[4] = v54 + 1;
      *v54 = 41;
    }
  }

LABEL_31:
  v61 = CStrRef;
  v62 = v9;
  LODWORD(__p[0]) = a2;
  std::__hash_table<std::__hash_value_type<unsigned int,llvm::StringRef>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::StringRef>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::StringRef>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::StringRef>>>::__emplace_unique_key_args<unsigned int,unsigned int &,llvm::StringRef&>(a1 + 8, __p);
  v40 = a1[13];
  if (v40)
  {
    v61 = &unk_28689E460;
    v62 = v40;
    (*(*v40 + 248))(v40, "Attribute", 9);
    (*(*a1[13] + 64))(a1[13], "Tag", 3, a2);
    v41 = a1[13];
    v42 = llvm::ELFAttrs::attrTypeAsString(a2, a1[14], a1[15], 0);
    (*(*v41 + 232))(v41, "TagName", 7, v42, v43);
    (*(*a1[13] + 368))();
    if (v76)
    {
      (*(*a1[13] + 232))(a1[13], "Description", 11, v75);
    }

    v61 = &unk_28689E460;
    if (v62)
    {
      (*(*v62 + 256))(v62);
    }
  }

  a1[19] = v55;
  *a3 = 0;
  llvm::raw_ostream::~raw_ostream(&v66);
  if (v75 != v77)
  {
    free(v75);
  }
}

void llvm::DictScope::~DictScope(llvm::DictScope *this)
{
  *this = &unk_28689E460;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 256))(*(this + 1));
  }
}

{
  *this = &unk_28689E460;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 256))(*(this + 1));
    v1 = vars8;
  }

  JUMPOUT(0x259C63180);
}

uint64_t llvm::ARMAttributeParser::handler@<X0>(uint64_t this@<X0>, BOOL *a2@<X2>, uint64_t a3@<X1>, void *a4@<X8>)
{
  *a2 = 0;
  v6 = &llvm::ARMAttributeParser::displayRoutines;
  switch(a3)
  {
    case 4:
      goto LABEL_85;
    case 5:
      v7 = off_28689E000;
      v8 = (this + (dword_28689E008 >> 1));
      if (dword_28689E008)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    case 6:
      v7 = off_28689E018;
      v8 = (this + (dword_28689E020 >> 1));
      if (dword_28689E020)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    case 7:
      v7 = off_28689E030;
      v8 = (this + (dword_28689E038 >> 1));
      if (dword_28689E038)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    case 8:
      v7 = off_28689E048;
      v8 = (this + (dword_28689E050 >> 1));
      if (dword_28689E050)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    case 9:
      v7 = off_28689E060;
      v8 = (this + (dword_28689E068 >> 1));
      if (dword_28689E068)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    case 10:
      v7 = off_28689E078;
      v8 = (this + (dword_28689E080 >> 1));
      if (dword_28689E080)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    case 11:
      v7 = off_28689E090;
      v8 = (this + (dword_28689E098 >> 1));
      if (dword_28689E098)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    case 12:
      v7 = off_28689E0A8;
      v8 = (this + (dword_28689E0B0 >> 1));
      if (dword_28689E0B0)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    case 13:
      v7 = off_28689E0D8;
      v8 = (this + (dword_28689E0E0 >> 1));
      if (dword_28689E0E0)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    case 14:
      v7 = off_28689E0F0;
      v8 = (this + (dword_28689E0F8 >> 1));
      if (dword_28689E0F8)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    case 15:
      v7 = off_28689E108;
      v8 = (this + (dword_28689E110 >> 1));
      if (dword_28689E110)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    case 16:
      v7 = off_28689E120;
      v8 = (this + (dword_28689E128 >> 1));
      if (dword_28689E128)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    case 17:
      v7 = off_28689E138;
      v8 = (this + (dword_28689E140 >> 1));
      if (dword_28689E140)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    case 18:
      v7 = off_28689E150;
      v8 = (this + (dword_28689E158 >> 1));
      if (dword_28689E158)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    case 19:
      v7 = off_28689E168;
      v8 = (this + (dword_28689E170 >> 1));
      if (dword_28689E170)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    case 20:
      v7 = off_28689E180;
      v8 = (this + (dword_28689E188 >> 1));
      if (dword_28689E188)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    case 21:
      v7 = off_28689E198;
      v8 = (this + (dword_28689E1A0 >> 1));
      if (dword_28689E1A0)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    case 22:
      v7 = off_28689E1B0;
      v8 = (this + (dword_28689E1B8 >> 1));
      if (dword_28689E1B8)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    case 23:
      v7 = off_28689E1C8;
      v8 = (this + (dword_28689E1D0 >> 1));
      if (dword_28689E1D0)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    case 24:
      v7 = off_28689E1E0;
      v8 = (this + (dword_28689E1E8 >> 1));
      if (dword_28689E1E8)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    case 25:
      v7 = off_28689E1F8;
      v8 = (this + (dword_28689E200 >> 1));
      if (dword_28689E200)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    case 26:
      v7 = off_28689E210;
      v8 = (this + (dword_28689E218 >> 1));
      if (dword_28689E218)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    case 27:
      v7 = off_28689E228;
      v8 = (this + (dword_28689E230 >> 1));
      if (dword_28689E230)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    case 28:
      v7 = off_28689E240;
      v8 = (this + (dword_28689E248 >> 1));
      if (dword_28689E248)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    case 29:
      v7 = off_28689E258;
      v8 = (this + (dword_28689E260 >> 1));
      if (dword_28689E260)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    case 30:
      v7 = off_28689E270;
      v8 = (this + (dword_28689E278 >> 1));
      if (dword_28689E278)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    case 31:
      v6 = &unk_28689E280;
LABEL_85:
      v7 = *(v6 + 1);
      v9 = *(v6 + 2);
      v8 = (this + (v9 >> 1));
      if ((v9 & 1) == 0)
      {
        goto LABEL_86;
      }

      goto LABEL_89;
    case 32:
      v7 = off_28689E2A0;
      v8 = (this + (dword_28689E2A8 >> 1));
      if (dword_28689E2A8)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    case 34:
      v7 = off_28689E2B8;
      v8 = (this + (dword_28689E2C0 >> 1));
      if (dword_28689E2C0)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    case 36:
      v7 = off_28689E2D0;
      v8 = (this + (dword_28689E2D8 >> 1));
      if (dword_28689E2D8)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    case 38:
      v7 = off_28689E2E8;
      v8 = (this + (dword_28689E2F0 >> 1));
      if (dword_28689E2F0)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    case 42:
      v7 = off_28689E300;
      v8 = (this + (dword_28689E308 >> 1));
      if (dword_28689E308)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    case 44:
      v7 = off_28689E318;
      v8 = (this + (dword_28689E320 >> 1));
      if (dword_28689E320)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    case 46:
      v7 = off_28689E330;
      v8 = (this + (dword_28689E338 >> 1));
      if (dword_28689E338)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    case 48:
      v7 = off_28689E0C0;
      v8 = (this + (dword_28689E0C8 >> 1));
      if (dword_28689E0C8)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    case 50:
      v7 = off_28689E378;
      v8 = (this + (dword_28689E380 >> 1));
      if (dword_28689E380)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    case 52:
      v7 = off_28689E390;
      v8 = (this + (dword_28689E398 >> 1));
      if (dword_28689E398)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    case 64:
      v7 = off_28689E3D8;
      v8 = (this + (dword_28689E3E0 >> 1));
      if (dword_28689E3E0)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    case 65:
      v7 = off_28689E3F0;
      v8 = (this + (dword_28689E3F8 >> 1));
      if (dword_28689E3F8)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    case 66:
      v7 = off_28689E348;
      v8 = (this + (dword_28689E350 >> 1));
      if (dword_28689E350)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    case 68:
      v7 = off_28689E360;
      v8 = (this + (dword_28689E368 >> 1));
      if (dword_28689E368)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    case 74:
      v7 = off_28689E3C0;
      v8 = (this + (dword_28689E3C8 >> 1));
      if (dword_28689E3C8)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    case 76:
      v7 = off_28689E3A8;
      v8 = (this + (dword_28689E3B0 >> 1));
      if (dword_28689E3B0)
      {
LABEL_89:
        this = (*(*v8 + v7))();
        if (*a4)
        {
          return this;
        }
      }

      else
      {
LABEL_86:
        this = (v7)(v8, a3, a4);
        if (*a4)
        {
          return this;
        }
      }

      *a2 = 1;
LABEL_91:
      *a4 = 0;
      return this;
    default:
      goto LABEL_91;
  }
}

void llvm::ARMAttributeParser::~ARMAttributeParser(llvm::ARMAttributeParser *this)
{
  llvm::ELFAttributeParser::~ELFAttributeParser(this);

  JUMPOUT(0x259C63180);
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,llvm::StringRef>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::StringRef>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::StringRef>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::StringRef>>>::__emplace_unique_key_args<unsigned int,unsigned int &,llvm::StringRef&>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = result[1];
      if (v9 == v2)
      {
        if (*(result + 4) == v2)
        {
          return result;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    result = *result;
    if (!result)
    {
      goto LABEL_23;
    }
  }

  if (*(result + 4) != v2)
  {
    goto LABEL_12;
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<unsigned int,llvm::StringRef>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::StringRef>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::StringRef>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::StringRef>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void llvm::ELFAttributeParser::~ELFAttributeParser(llvm::ELFAttributeParser *this)
{
  *this = &unk_28689E4B0;
  v2 = *(this + 20);
  *(this + 20) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v3 = *(this + 20);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  v4 = *(this + 10);
  if (v4)
  {
    do
    {
      v5 = *v4;
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = *(this + 8);
  *(this + 8) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(this + 5);
  if (v7)
  {
    do
    {
      v8 = *v7;
      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = *(this + 3);
  *(this + 3) = 0;
  if (v9)
  {
    operator delete(v9);
  }
}

unint64_t llvm::ARM::WinEH::SavedRegisterMask(uint64_t a1, int a2)
{
  v2 = *(a1 + 4);
  v3 = (v2 >> 10) & 0x800;
  v4 = v3 | ((v2 & 0x100000) >> 5);
  if ((v2 & 0x8000) != 0)
  {
    v4 = (v2 >> 10) & 0x800;
  }

  v5 = v3 | ((v2 & 0x100000) >> 6);
  if ((v2 & 0x6000) != 0)
  {
    v6 = v3 | ((v2 & 0x100000) >> 6);
  }

  else
  {
    v6 = v4;
  }

  if (!a2)
  {
    v5 = v6;
  }

  v7 = ~(-1 << ((BYTE2(v2) + 1) & 7)) << 40;
  if ((v2 & 0x80000) == 0)
  {
    v5 |= (32 << (BYTE2(v2) & 7)) - 16;
    v7 = 0;
  }

  if (BYTE3(v2) >= 0xFDu && ((v2 & 0x1000000) != 0 && (a2 & 1) != 0 || (v2 & 0x2000000) != 0 && (a2 & 1) == 0))
  {
    v5 |= ~(-2 << ((v2 >> 22) & 3)) << (~(v2 >> 22) & 3);
  }

  return v7 | v5;
}

llvm::raw_ostream *llvm::detail::printBumpPtrAllocatorStats(llvm::detail *this, unint64_t a2, unint64_t a3)
{
  v5 = this;
  v6 = llvm::errs(this);
  v7 = *(v6 + 4);
  if (*(v6 + 3) - v7 > 0x1AuLL)
  {
    qmemcpy(v7, "\nNumber of memory regions: ", 27);
    *(v6 + 4) += 27;
    v9 = llvm::raw_ostream::operator<<(v6, v5);
    v10 = *(v9 + 4);
    if (v10 >= *(v9 + 3))
    {
LABEL_3:
      v9 = llvm::raw_ostream::write(v9, 10);
      v11 = *(v9 + 4);
      if ((*(v9 + 3) - v11) > 0xB)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v8 = llvm::raw_ostream::write(v6, "\nNumber of memory regions: ", 0x1BuLL);
    v9 = llvm::raw_ostream::operator<<(v8, v5);
    v10 = *(v9 + 4);
    if (v10 >= *(v9 + 3))
    {
      goto LABEL_3;
    }
  }

  *(v9 + 4) = v10 + 1;
  *v10 = 10;
  v11 = *(v9 + 4);
  if ((*(v9 + 3) - v11) > 0xB)
  {
LABEL_4:
    *(v11 + 8) = 540697701;
    *v11 = *"Bytes used: ";
    *(v9 + 4) += 12;
    v12 = llvm::raw_ostream::operator<<(v9, a2);
    v13 = *(v12 + 4);
    if (v13 >= *(v12 + 3))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v20 = llvm::raw_ostream::write(v9, "Bytes used: ", 0xCuLL);
  v12 = llvm::raw_ostream::operator<<(v20, a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
LABEL_5:
    v12 = llvm::raw_ostream::write(v12, 10);
    v14 = *(v12 + 4);
    if ((*(v12 + 3) - v14) > 0x10)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(v12 + 4) = v13 + 1;
  *v13 = 10;
  v14 = *(v12 + 4);
  if ((*(v12 + 3) - v14) > 0x10)
  {
LABEL_6:
    *(v14 + 16) = 32;
    *v14 = *"Bytes allocated: ";
    *(v12 + 4) += 17;
    v15 = llvm::raw_ostream::operator<<(v12, a3);
    v16 = *(v15 + 4);
    if (v16 >= *(v15 + 3))
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v21 = llvm::raw_ostream::write(v12, "Bytes allocated: ", 0x11uLL);
  v15 = llvm::raw_ostream::operator<<(v21, a3);
  v16 = *(v15 + 4);
  if (v16 >= *(v15 + 3))
  {
LABEL_7:
    v15 = llvm::raw_ostream::write(v15, 10);
    v17 = *(v15 + 4);
    if (*(v15 + 3) - v17 > 0xDuLL)
    {
      goto LABEL_8;
    }

LABEL_16:
    v22 = llvm::raw_ostream::write(v15, "Bytes wasted: ", 0xEuLL);
    result = llvm::raw_ostream::operator<<(v22, a3 - a2);
    v19 = *(result + 4);
    if (*(result + 3) - v19 > 0x1AuLL)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_15:
  *(v15 + 4) = v16 + 1;
  *v16 = 10;
  v17 = *(v15 + 4);
  if (*(v15 + 3) - v17 <= 0xDuLL)
  {
    goto LABEL_16;
  }

LABEL_8:
  qmemcpy(v17, "Bytes wasted: ", 14);
  *(v15 + 4) += 14;
  result = llvm::raw_ostream::operator<<(v15, a3 - a2);
  v19 = *(result + 4);
  if (*(result + 3) - v19 > 0x1AuLL)
  {
LABEL_9:
    qmemcpy(v19, " (includes alignment, etc)\n", 27);
    *(result + 4) += 27;
    return result;
  }

LABEL_17:

  return llvm::raw_ostream::write(result, " (includes alignment, etc)\n", 0x1BuLL);
}

llvm::raw_ostream *llvm::PrintRecyclerStats(llvm *this, unint64_t a2, unint64_t a3)
{
  v6 = llvm::errs(this);
  v7 = *(v6 + 4);
  if (*(v6 + 3) - v7 > 0x16uLL)
  {
    qmemcpy(v7, "Recycler element size: ", 23);
    *(v6 + 4) += 23;
    v9 = llvm::raw_ostream::operator<<(v6, this);
    v10 = *(v9 + 4);
    if (v10 >= *(v9 + 3))
    {
LABEL_3:
      v9 = llvm::raw_ostream::write(v9, 10);
      v11 = *(v9 + 4);
      if (*(v9 + 3) - v11 > 0x1BuLL)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v8 = llvm::raw_ostream::write(v6, "Recycler element size: ", 0x17uLL);
    v9 = llvm::raw_ostream::operator<<(v8, this);
    v10 = *(v9 + 4);
    if (v10 >= *(v9 + 3))
    {
      goto LABEL_3;
    }
  }

  *(v9 + 4) = v10 + 1;
  *v10 = 10;
  v11 = *(v9 + 4);
  if (*(v9 + 3) - v11 > 0x1BuLL)
  {
LABEL_4:
    qmemcpy(v11, "Recycler element alignment: ", 28);
    *(v9 + 4) += 28;
    v12 = llvm::raw_ostream::operator<<(v9, a2);
    v13 = *(v12 + 4);
    if (v13 >= *(v12 + 3))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v17 = llvm::raw_ostream::write(v9, "Recycler element alignment: ", 0x1CuLL);
  v12 = llvm::raw_ostream::operator<<(v17, a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
LABEL_5:
    v12 = llvm::raw_ostream::write(v12, 10);
    v14 = *(v12 + 4);
    if (*(v12 + 3) - v14 > 0x26uLL)
    {
      goto LABEL_6;
    }

LABEL_14:
    v18 = llvm::raw_ostream::write(v12, "Number of elements free for recycling: ", 0x27uLL);
    result = llvm::raw_ostream::operator<<(v18, a3);
    v16 = *(result + 4);
    if (v16 >= *(result + 3))
    {
      goto LABEL_7;
    }

LABEL_15:
    *(result + 4) = v16 + 1;
    *v16 = 10;
    return result;
  }

LABEL_13:
  *(v12 + 4) = v13 + 1;
  *v13 = 10;
  v14 = *(v12 + 4);
  if (*(v12 + 3) - v14 <= 0x26uLL)
  {
    goto LABEL_14;
  }

LABEL_6:
  qmemcpy(v14, "Number of elements free for recycling: ", 39);
  *(v12 + 4) += 39;
  result = llvm::raw_ostream::operator<<(v12, a3);
  v16 = *(result + 4);
  if (v16 < *(result + 3))
  {
    goto LABEL_15;
  }

LABEL_7:

  return llvm::raw_ostream::write(result, 10);
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
        llvm::createStringError<char,unsigned long long>(92, v41, "Invalid Base64 character %#2.2x at index %llu", &v50, &__p);
      }

      v8 = decodeBase64Byte(unsigned char)::DecodeTable[v50];
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

      v9 = decodeBase64Byte(unsigned char)::DecodeTable[v50];
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

      v10 = decodeBase64Byte(unsigned char)::DecodeTable[v50];
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

      v11 = decodeBase64Byte(unsigned char)::DecodeTable[v50];
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
      std::string::__throw_length_error[abi:nn200100]();
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

void llvm::createStringError<char,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t *a5)
{
  memset(__p, 0, sizeof(__p));
  v12 = 0;
  v16 = 0;
  v17 = 1;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  v11 = &unk_2868A3EF8;
  v18 = __p;
  llvm::raw_ostream::SetBufferAndMode(&v11, 0, 0, 0);
  v8[0] = &unk_28689E4D8;
  v8[1] = a3;
  v9 = *a4;
  v10 = *a5;
  llvm::raw_ostream::operator<<(&v11, v8);
  llvm::raw_ostream::~raw_ostream(&v11);
  operator new();
}

llvm::raw_ostream *llvm::BPFunctionNode::dump(llvm::BPFunctionNode *this, llvm::raw_ostream *a2)
{
  v2 = *(this + 1);
  v3 = v2 + 4 * *(this + 4);
  v5[0] = "{{ID={0} Utilities={{{1:$[,]}} Bucket={2}}";
  v5[1] = 42;
  v5[2] = v10;
  v5[3] = 3;
  v6 = 1;
  v7[0] = &unk_28689E510;
  v7[1] = this;
  v8[0] = &unk_28689E558;
  v8[1] = v2;
  v8[2] = v3;
  v9[0] = &unk_28689E5E8;
  v9[1] = this + 40;
  v10[0] = v7;
  v10[1] = v8;
  v10[2] = v9;
  return llvm::raw_ostream::operator<<(a2, v5);
}

uint64_t llvm::BalancedPartitioning::BPThreadPool::wait(llvm::BalancedPartitioning::BPThreadPool *this)
{
  v3.__m_ = (this + 8);
  v3.__owns_ = 1;
  std::mutex::lock((this + 8));
  if (*(this + 124))
  {
    goto LABEL_4;
  }

  do
  {
    std::condition_variable::wait((this + 72), &v3);
  }

  while (*(this + 124) != 1);
  if (v3.__owns_)
  {
LABEL_4:
    std::mutex::unlock(v3.__m_);
  }

  return (*(**this + 24))();
}

uint64_t llvm::BalancedPartitioning::BalancedPartitioning(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 65532;
  *a1 = a2;
  *(a1 + 8) = 0;
  v4 = xmmword_25736D380;
  v5 = -65520;
  do
  {
    v15 = v4;
    v6.i64[0] = v4.u32[0];
    v6.i64[1] = v4.u32[1];
    v14 = vcvtq_f64_u64(v6);
    v6.i64[0] = v4.u32[2];
    v6.i64[1] = v4.u32[3];
    __x = vcvtq_f64_u64(v6);
    v12 = log2(__x.f64[1]);
    v7.f64[0] = log2(__x.f64[0]);
    v7.f64[1] = v12;
    v13 = v7;
    __x.f64[0] = log2(v14.f64[1]);
    v8.f64[0] = log2(v14.f64[0]);
    v8.f64[1] = __x.f64[0];
    *(a1 + v5 + 65532) = vcvt_hight_f32_f64(vcvt_f32_f64(v8), v13);
    v9.i64[0] = 0x400000004;
    v9.i64[1] = 0x400000004;
    v4 = vaddq_s32(v15, v9);
    v5 += 16;
  }

  while (v5);
  *v3 = 0x415FFF47415FFEEBLL;
  *(v3 + 8) = 1096810404;
  return a1;
}

{
  v3 = a1 + 65532;
  *a1 = a2;
  *(a1 + 8) = 0;
  v4 = xmmword_25736D380;
  v5 = -65520;
  do
  {
    v15 = v4;
    v6.i64[0] = v4.u32[0];
    v6.i64[1] = v4.u32[1];
    v14 = vcvtq_f64_u64(v6);
    v6.i64[0] = v4.u32[2];
    v6.i64[1] = v4.u32[3];
    __x = vcvtq_f64_u64(v6);
    v12 = log2(__x.f64[1]);
    v7.f64[0] = log2(__x.f64[0]);
    v7.f64[1] = v12;
    v13 = v7;
    __x.f64[0] = log2(v14.f64[1]);
    v8.f64[0] = log2(v14.f64[0]);
    v8.f64[1] = __x.f64[0];
    *(a1 + v5 + 65532) = vcvt_hight_f32_f64(vcvt_f32_f64(v8), v13);
    v9.i64[0] = 0x400000004;
    v9.i64[1] = 0x400000004;
    v4 = vaddq_s32(v15, v9);
    v5 += 16;
  }

  while (v5);
  *v3 = 0x415FFF47415FFEEBLL;
  *(v3 + 8) = 1096810404;
  return a1;
}

void llvm::BalancedPartitioning::run(unsigned int **a1, const void ***a2)
{
  v32 = *MEMORY[0x277D85DE8];
  LOBYTE(v22) = 0;
  v31 = 0;
  llvm::StdThreadPool::StdThreadPool(v21, 0x100000000);
  v4 = (*a1)[3];
  if (v4 >= 2)
  {
    v22 = v21;
    v23 = 850045863;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0;
    v28 = 1018212795;
    v29 = 0u;
    memset(v30, 0, 29);
    v31 = 1;
  }

  v7 = a2;
  v6 = *a2;
  v5 = v7[1];
  v8 = 0x6DB6DB6DB6DB6DB7 * (v5 - v6);
  if (v5 != v6)
  {
    if (v8 <= 1 || (v8 ? (v9 = (v8 - 1) >> 32 == 0) : (v9 = 0), !v9))
    {
      v10 = 0;
      v11 = 0;
LABEL_10:
      v12 = v11 + 1;
      do
      {
        v6[7 * v10 + 6] = v10;
        v10 = v12++;
      }

      while (v8 > v10);
      goto LABEL_12;
    }

    v19 = 0;
    v10 = v8 & 0x1FFFFFFFELL;
    v11 = v8 & 0xFFFFFFFE;
    v20 = v6 + 13;
    do
    {
      *(v20 - 7) = v19;
      *v20 = v19 + 1;
      v20 += 14;
      v19 += 2;
    }

    while (v19 != v10);
    if (v8 != v10)
    {
      goto LABEL_10;
    }
  }

LABEL_12:
  if (v4 > 1)
  {
    atomic_fetch_add(&v30[6], 1u);
    operator new();
  }

  llvm::BalancedPartitioning::bisect(a1, v6, v5, 0, 1u, 0);
  if (v5 - v6 >= 1)
  {
    v14 = MEMORY[0x277D826F0];
    v15 = 0x6DB6DB6DB6DB6DB7 * (v5 - v6);
    do
    {
      v16 = operator new(56 * v15, v14);
      if (v16)
      {
        v18 = v16;
        std::__stable_sort<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::run(std::vector<llvm::BPFunctionNode> &)::$_1 &,std::__wrap_iter<llvm::BPFunctionNode*>>(v6, v5, 0x6DB6DB6DB6DB6DB7 * (v5 - v6), v16, v15);
        operator delete(v18);
        llvm::StdThreadPool::~StdThreadPool(v21);
      }

      v13 = v15 >> 1;
      v17 = v15 > 1;
      v15 >>= 1;
    }

    while (v17);
  }

  else
  {
    v13 = 0;
  }

  std::__stable_sort<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::run(std::vector<llvm::BPFunctionNode> &)::$_1 &,std::__wrap_iter<llvm::BPFunctionNode*>>(v6, v5, 0x6DB6DB6DB6DB6DB7 * (v5 - v6), 0, v13);
  llvm::StdThreadPool::~StdThreadPool(v21);
}

void llvm::BalancedPartitioning::bisect(unsigned int **a1, const void **a2, const void **a3, unsigned int a4, unsigned int a5, int a6)
{
  v8 = a2;
  v20 = *MEMORY[0x277D85DE8];
  v9 = a3 - a2;
  if ((-1227133513 * v9) >= 2 && **a1 > a4)
  {
    v18[0] = a5;
    v11 = 1;
    v12 = a5;
    do
    {
      v12 = v11 + 1812433253 * (v12 ^ (v12 >> 30));
      v18[v11++] = v12;
    }

    while (v11 != 624);
    v19 = 0;
    v13 = 2 * a5;
    v14 = (2 * a5) | 1;
    llvm::BalancedPartitioning::split(a1, a2, a3, 2 * a5);
    llvm::BalancedPartitioning::runIterations(a1, v8, a3, v13, v14, v18, v15);
  }

  v16 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * v9);
  if (a3 == a2)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  std::__introsort<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::bisect(llvm::iterator_range<std::__wrap_iter<llvm::BPFunctionNode *>>,unsigned int,unsigned int,unsigned int,std::optional<llvm::BalancedPartitioning::BPThreadPool> &)::$_1 &,llvm::BPFunctionNode *,false>(a2, a3, v17, 1);
  for (; v8 != a3; v8 += 56)
  {
    *(v8 + 40) = a6++;
    *(v8 + 44) = 1;
  }
}

void llvm::BalancedPartitioning::split(uint64_t a1, const void **a2, const void **a3, int a4)
{
  v4 = a3;
  v5 = a2;
  v47 = (-1227133513 * ((a3 - a2) >> 3) + 1) >> 1;
  v6 = &a2[7 * v47];
  if (v6 == a3)
  {
    goto LABEL_2;
  }

  v7 = a2;
  v8 = a3;
  while (1)
  {
    v9 = 0x6DB6DB6DB6DB6DB7 * (v8 - v7);
    if (v9 < 2)
    {
      goto LABEL_2;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 2)
    {
      if (*(v8 - 1) >= v7[6])
      {
        goto LABEL_2;
      }

      v42 = v8 - 7;
      goto LABEL_95;
    }

    if (v8 - v7 <= 447)
    {
      while (v7 != v8 - 7)
      {
        v43 = v7;
        v7 += 7;
        if (v43 != v8 && v7 != v8)
        {
          v44 = v7;
          v45 = v43;
          do
          {
            if (v44[6] < v45[6])
            {
              v45 = v44;
            }

            v44 += 7;
          }

          while (v44 != v8);
          if (v45 != v43)
          {
            std::swap[abi:nn200100]<llvm::BPFunctionNode>(v43, v45);
          }
        }
      }

      goto LABEL_2;
    }

    v10 = &v7[7 * (v9 >> 1)];
    v11 = v8 - 7;
    v12 = v10[6];
    v13 = *(v8 - 1);
    if (v12 < v7[6])
    {
      v14 = v7;
      if (v13 < v12)
      {
        goto LABEL_16;
      }

      std::swap[abi:nn200100]<llvm::BPFunctionNode>(v7, v10);
      if (*(v8 - 1) < v10[6])
      {
        v14 = v10;
LABEL_16:
        v15 = v8 - 7;
LABEL_20:
        std::swap[abi:nn200100]<llvm::BPFunctionNode>(v14, v15);
      }

      goto LABEL_21;
    }

    if (v13 < v12)
    {
      std::swap[abi:nn200100]<llvm::BPFunctionNode>(v10, v8 - 7);
      if (v10[6] < v7[6])
      {
        v14 = v7;
        v15 = v10;
        goto LABEL_20;
      }

LABEL_21:
      v16 = 1;
      v17 = v7[6];
      v18 = v10[6];
      if (v17 >= v18)
      {
        goto LABEL_33;
      }

      goto LABEL_22;
    }

    v16 = 0;
    v17 = v7[6];
    v18 = v10[6];
    if (v17 >= v18)
    {
LABEL_33:
      v26 = v8 - 7;
      while (1)
      {
        v19 = v26 - 7;
        if (v26 - 7 == v7)
        {
          break;
        }

        v27 = *(v26 - 1);
        v26 -= 7;
        if (v27 < v18)
        {
          std::swap[abi:nn200100]<llvm::BPFunctionNode>(v7, v19);
          if (v16)
          {
            v16 = 2;
          }

          else
          {
            v16 = 1;
          }

          v20 = (v7 + 7);
          if (v7 + 7 < v19)
          {
            goto LABEL_23;
          }

          goto LABEL_40;
        }
      }

      v30 = v7 + 7;
      v4 = a3;
      if (v17 >= *(v8 - 1))
      {
        if (v30 == v11)
        {
          goto LABEL_2;
        }

        v30 = v7 + 14;
        while (v17 >= *(v30 - 1))
        {
          v31 = v30 == v11;
          v30 += 7;
          if (v31)
          {
            goto LABEL_2;
          }
        }

        std::swap[abi:nn200100]<llvm::BPFunctionNode>(v30 - 7, v8 - 7);
      }

      if (v30 == v11)
      {
        goto LABEL_2;
      }

      while (1)
      {
        v35 = v7[6];
        do
        {
          v36 = v30[6];
          v30 += 7;
        }

        while (v35 >= v36);
        v37 = v30 - 7;
        do
        {
          v38 = *(v11 - 1);
          v11 -= 7;
        }

        while (v35 < v38);
        if (v37 >= v11)
        {
          break;
        }

        std::swap[abi:nn200100]<llvm::BPFunctionNode>(v37, v11);
      }

      v7 = v30 - 7;
      if (v37 > v6)
      {
        goto LABEL_2;
      }

      goto LABEL_74;
    }

LABEL_22:
    v19 = v8 - 7;
    v20 = (v7 + 7);
    if (v7 + 7 >= v11)
    {
LABEL_40:
      v24 = v20;
    }

    else
    {
LABEL_23:
      v21 = v20;
      while (1)
      {
        v22 = v10[6];
        do
        {
          v23 = *(v21 + 48);
          v21 += 56;
        }

        while (v23 < v22);
        v24 = v21 - 56;
        do
        {
          v25 = *(v19 - 1);
          v19 -= 7;
        }

        while (v25 >= v22);
        if (v24 >= v19)
        {
          break;
        }

        std::swap[abi:nn200100]<llvm::BPFunctionNode>((v21 - 56), v19);
        ++v16;
        if (v24 == v10)
        {
          v10 = v19;
        }
      }
    }

    v4 = a3;
    if (v24 != v10 && v10[6] < *(v24 + 48))
    {
      std::swap[abi:nn200100]<llvm::BPFunctionNode>(v24, v10);
      ++v16;
    }

    if (v24 == v6)
    {
      goto LABEL_2;
    }

    if (!v16)
    {
      if (v24 <= v6)
      {
        v32 = v24 + 56;
        while (v32 != v8)
        {
          v33 = *(v32 + 48);
          v34 = *(v32 - 8);
          v32 += 56;
          if (v33 < v34)
          {
            goto LABEL_46;
          }
        }
      }

      else
      {
        while (v20 != v24)
        {
          v28 = *(v20 + 48);
          v29 = *(v20 - 8);
          v20 += 56;
          if (v28 < v29)
          {
            goto LABEL_46;
          }
        }
      }

      goto LABEL_2;
    }

LABEL_46:
    if (v24 <= v6)
    {
      v7 = (v24 + 56);
    }

    else
    {
      v8 = v24;
    }

LABEL_74:
    if (v8 == v6)
    {
      goto LABEL_2;
    }
  }

  v39 = v7[13];
  v40 = *(v8 - 1);
  if (v39 >= v7[6])
  {
    if (v40 >= v39)
    {
      goto LABEL_2;
    }

    std::swap[abi:nn200100]<llvm::BPFunctionNode>(v7 + 7, v8 - 7);
    if (v7[13] >= v7[6])
    {
      goto LABEL_2;
    }

    v42 = v7 + 7;
LABEL_95:
    std::swap[abi:nn200100]<llvm::BPFunctionNode>(v7, v42);
    goto LABEL_2;
  }

  if (v40 >= v39)
  {
    std::swap[abi:nn200100]<llvm::BPFunctionNode>(v7, v7 + 7);
    if (*(v8 - 1) >= v7[13])
    {
      goto LABEL_2;
    }

    v41 = v7 + 7;
  }

  else
  {
    v41 = v7;
  }

  std::swap[abi:nn200100]<llvm::BPFunctionNode>(v41, v8 - 7);
LABEL_2:
  if (v47)
  {
    do
    {
      *(v5 + 10) = a4;
      *(v5 + 44) = 1;
      v5 += 7;
    }

    while (v5 != v6);
  }

  for (; v6 != v4; v6 += 56)
  {
    *(v6 + 40) = a4 + 1;
    *(v6 + 44) = 1;
  }
}

void llvm::BalancedPartitioning::runIterations(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, __n128 a7)
{
  v11 = 0;
  v156[10] = *MEMORY[0x277D85DE8];
  v151 = 0;
  v152 = 0;
  v153 = 0;
  if (a3 == a2)
  {
LABEL_2:
    if (v152)
    {
      v12 = v153;
      if (v153 > 4 * v152 && v153 >= 0x41)
      {
        v13 = 1 << (33 - __clz(v152 - 1));
        if (v13 <= 64)
        {
          v14 = 64;
        }

        else
        {
          v14 = v13;
        }

        if (v14 == v153)
        {
          v152 = 0;
          v15 = v11;
          if (((v153 - 1) & 0x1FFFFFFFFFFFFFFFLL) == 0)
          {
            goto LABEL_13;
          }

          v16 = ((v153 - 1) & 0x1FFFFFFFFFFFFFFFLL) + 1;
          v15 = (v11 + 8 * (v16 & 0x3FFFFFFFFFFFFFFELL));
          v17 = (v11 + 8);
          v18 = v16 & 0x3FFFFFFFFFFFFFFELL;
          do
          {
            *(v17 - 2) = -1;
            *v17 = -1;
            v17 += 4;
            v18 -= 2;
          }

          while (v18);
          if (v16 != (v16 & 0x3FFFFFFFFFFFFFFELL))
          {
LABEL_13:
            v19 = (v11 + 8 * v12);
            do
            {
              *v15 = -1;
              v15 = (v15 + 8);
            }

            while (v15 != v19);
          }

          goto LABEL_234;
        }

        goto LABEL_225;
      }
    }

    else
    {
      if (!HIDWORD(v152))
      {
LABEL_234:
        if (a3 == a2)
        {
LABEL_235:
          v116 = v152;
          v154 = v156;
          a7.n128_u64[0] = 0x400000000;
          v155 = 0x400000000;
          if (v152)
          {
            if (v152 >= 5)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            bzero(v154, 20 * ((20 * v152 - 20) / 0x14) + 20);
            LODWORD(v155) = v116;
          }

          if (a3 != a2)
          {
            v140 = a2;
            do
            {
              v141 = *(v140 + 16);
              if (v141)
              {
                v142 = *(v140 + 8);
                v143 = 4 * v141;
                v144 = v154;
                if (*(v140 + 44))
                {
                  do
                  {
                    v145 = *v142++;
                    v146 = &v144[5 * v145];
                    if (*(v140 + 40) == a4)
                    {
                      v147 = v146;
                    }

                    else
                    {
                      v147 = v146 + 1;
                    }

                    ++*v147;
                    v143 -= 4;
                  }

                  while (v143);
                }

                else
                {
                  do
                  {
                    v148 = *v142++;
                    ++v144[5 * v148 + 1];
                    v143 -= 4;
                  }

                  while (v143);
                }
              }

              v140 += 56;
            }

            while (v140 != a3);
          }

          if (*(*a1 + 4))
          {
            v139 = 0;
            do
            {
              if (!llvm::BalancedPartitioning::runIteration(a1, a2, a3, a4, a5, &v154, a6, a7))
              {
                break;
              }

              ++v139;
            }

            while (v139 < *(*a1 + 4));
          }

          if (v154 != v156)
          {
            free(v154);
          }

          llvm::deallocate_buffer(v151, (8 * v153));
        }

        v117 = a2;
        while (1)
        {
          v118 = *(v117 + 16);
          if (v118)
          {
            break;
          }

LABEL_239:
          v117 += 56;
          if (v117 == a3)
          {
            goto LABEL_235;
          }
        }

        v119 = *(v117 + 8);
        v120 = &v119[v118];
        while (1)
        {
          v125 = *v119;
          v126 = v152;
          v127 = v153;
          if (!v153)
          {
            goto LABEL_262;
          }

          v121 = v153 - 1;
          v122 = (v153 - 1) & (37 * v125);
          v123 = v151 + 8 * v122;
          v124 = *v123;
          if (v125 != *v123)
          {
            break;
          }

LABEL_243:
          *v119++ = *(v123 + 1);
          if (v119 == v120)
          {
            goto LABEL_239;
          }
        }

        v128 = 0;
        v129 = 1;
        while (v124 != -1)
        {
          if (v128)
          {
            v130 = 0;
          }

          else
          {
            v130 = v124 == -2;
          }

          if (v130)
          {
            v128 = v123;
          }

          v131 = v122 + v129++;
          v122 = v131 & v121;
          v123 = v151 + 8 * (v131 & v121);
          v124 = *v123;
          if (v125 == *v123)
          {
            goto LABEL_243;
          }
        }

        if (v128)
        {
          v123 = v128;
        }

        if (4 * v152 + 4 < 3 * v153)
        {
          if (v153 + ~v152 - HIDWORD(v152) > v153 >> 3)
          {
            LODWORD(v152) = v152 + 1;
            if (*v123 == -1)
            {
LABEL_249:
              *v123 = v125;
              *(v123 + 1) = v126;
              goto LABEL_243;
            }

LABEL_248:
            --HIDWORD(v152);
            goto LABEL_249;
          }
        }

        else
        {
LABEL_262:
          v127 = 2 * v153;
        }

        llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::grow(&v151, v127);
        if (v153)
        {
          v132 = v153 - 1;
          v133 = (v153 - 1) & (37 * v125);
          v123 = v151 + 8 * v133;
          v134 = *v123;
          if (v125 != *v123)
          {
            v135 = 0;
            v136 = 1;
            while (v134 != -1)
            {
              if (v135)
              {
                v137 = 0;
              }

              else
              {
                v137 = v134 == -2;
              }

              if (v137)
              {
                v135 = v123;
              }

              v138 = v133 + v136++;
              v133 = v138 & v132;
              v123 = v151 + 8 * (v138 & v132);
              v134 = *v123;
              if (v125 == *v123)
              {
                goto LABEL_275;
              }
            }

            if (v135)
            {
              v123 = v135;
            }
          }
        }

        else
        {
          v123 = 0;
        }

LABEL_275:
        LODWORD(v152) = v152 + 1;
        if (*v123 == -1)
        {
          goto LABEL_249;
        }

        goto LABEL_248;
      }

      v12 = v153;
      if (v153 > 0x40)
      {
LABEL_225:
        llvm::deallocate_buffer(v11, (8 * v12));
      }
    }

    if (v12)
    {
      v111 = v11;
      if (((v12 - 1) & 0x1FFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_231;
      }

      v112 = ((v12 - 1) & 0x1FFFFFFFFFFFFFFFLL) + 1;
      v111 = (v11 + 8 * (v112 & 0x3FFFFFFFFFFFFFFELL));
      v113 = (v11 + 8);
      v114 = v112 & 0x3FFFFFFFFFFFFFFELL;
      do
      {
        *(v113 - 2) = -1;
        *v113 = -1;
        v113 += 4;
        v114 -= 2;
      }

      while (v114);
      if (v112 != (v112 & 0x3FFFFFFFFFFFFFFELL))
      {
LABEL_231:
        v115 = (v11 + 8 * v12);
        do
        {
          *v111 = -1;
          v111 = (v111 + 8);
        }

        while (v111 != v115);
      }
    }

    v152 = 0;
    goto LABEL_234;
  }

  v11 = 0;
  v20 = -1227133513 * ((a3 - a2) >> 3);
  v21 = a2;
  do
  {
    v22 = *(v21 + 16);
    if (v22)
    {
      v23 = *(v21 + 8);
      v24 = &v23[v22];
      while (1)
      {
        v29 = v153;
        if (!v153)
        {
          goto LABEL_40;
        }

        v25 = v153 - 1;
        v26 = (37 * *v23) & (v153 - 1);
        v27 = v11 + 8 * v26;
        v28 = *v27;
        if (*v23 != *v27)
        {
          break;
        }

LABEL_21:
        ++*(v27 + 1);
        if (++v23 == v24)
        {
          goto LABEL_17;
        }
      }

      v30 = 0;
      v31 = 1;
      while (v28 != -1)
      {
        if (v30)
        {
          v32 = 0;
        }

        else
        {
          v32 = v28 == -2;
        }

        if (v32)
        {
          v30 = v27;
        }

        v33 = v26 + v31++;
        v26 = v33 & v25;
        v27 = v11 + 8 * (v33 & v25);
        v28 = *v27;
        if (*v23 == *v27)
        {
          goto LABEL_21;
        }
      }

      if (v30)
      {
        v27 = v30;
      }

      if (4 * v152 + 4 < 3 * v153)
      {
        if (v153 + ~v152 - HIDWORD(v152) > v153 >> 3)
        {
          LODWORD(v152) = v152 + 1;
          if (*v27 == -1)
          {
LABEL_27:
            *v27 = *v23;
            goto LABEL_21;
          }

LABEL_26:
          --HIDWORD(v152);
          goto LABEL_27;
        }
      }

      else
      {
LABEL_40:
        v29 = 2 * v153;
      }

      llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::grow(&v151, v29);
      v11 = v151;
      if (v153)
      {
        v34 = v153 - 1;
        v35 = (37 * *v23) & (v153 - 1);
        v27 = v151 + 8 * v35;
        v36 = *v27;
        if (*v23 != *v27)
        {
          v37 = 0;
          v38 = 1;
          while (v36 != -1)
          {
            if (v37)
            {
              v39 = 0;
            }

            else
            {
              v39 = v36 == -2;
            }

            if (v39)
            {
              v37 = v27;
            }

            v40 = v35 + v38++;
            v35 = v40 & v34;
            v27 = v151 + 8 * (v40 & v34);
            v36 = *v27;
            if (*v23 == *v27)
            {
              goto LABEL_53;
            }
          }

          if (v37)
          {
            v27 = v37;
          }
        }
      }

      else
      {
        v27 = 0;
      }

LABEL_53:
      LODWORD(v152) = v152 + 1;
      if (*v27 == -1)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

LABEL_17:
    v21 += 56;
  }

  while (v21 != a3);
  v41 = a2;
  while (1)
  {
    v42 = *(v41 + 8);
    v43 = *(v41 + 16);
    v44 = &v42[v43];
    if (v43)
    {
      while (1)
      {
        v45 = v153;
        if (!v153)
        {
          break;
        }

        v46 = v153 - 1;
        v47 = (37 * *v42) & (v153 - 1);
        v48 = v11 + 8 * v47;
        v49 = *v48;
        if (*v42 == *v48)
        {
          goto LABEL_77;
        }

        v50 = 0;
        v51 = 1;
        while (v49 != -1)
        {
          if (v50)
          {
            v52 = 0;
          }

          else
          {
            v52 = v49 == -2;
          }

          if (v52)
          {
            v50 = v48;
          }

          v53 = v47 + v51++;
          v47 = v53 & v46;
          v48 = v11 + 8 * (v53 & v46);
          v49 = *v48;
          if (*v42 == *v48)
          {
            goto LABEL_77;
          }
        }

        if (v50)
        {
          v48 = v50;
        }

        if (4 * v152 + 4 >= 3 * v153)
        {
          break;
        }

        if (v153 + ~v152 - HIDWORD(v152) <= v153 >> 3)
        {
          goto LABEL_101;
        }

        LODWORD(v152) = v152 + 1;
        if (*v48 != -1)
        {
          goto LABEL_75;
        }

LABEL_76:
        *v48 = *v42;
LABEL_77:
        if (*(v48 + 1) == 1)
        {
          goto LABEL_139;
        }

        v54 = v153;
        if (!v153)
        {
          goto LABEL_115;
        }

        v55 = v153 - 1;
        v56 = (37 * *v42) & (v153 - 1);
        v57 = v11 + 8 * v56;
        v58 = *v57;
        if (*v42 != *v57)
        {
          v59 = 0;
          v60 = 1;
          while (v58 != -1)
          {
            if (v59)
            {
              v61 = 0;
            }

            else
            {
              v61 = v58 == -2;
            }

            if (v61)
            {
              v59 = v57;
            }

            v62 = v56 + v60++;
            v56 = v62 & v55;
            v57 = v11 + 8 * (v62 & v55);
            v58 = *v57;
            if (*v42 == *v57)
            {
              goto LABEL_94;
            }
          }

          if (v59)
          {
            v57 = v59;
          }

          if (4 * v152 + 4 < 3 * v153)
          {
            if (v153 + ~v152 - HIDWORD(v152) <= v153 >> 3)
            {
              goto LABEL_116;
            }

            LODWORD(v152) = v152 + 1;
            if (*v57 == -1)
            {
LABEL_93:
              *v57 = *v42;
              goto LABEL_94;
            }
          }

          else
          {
LABEL_115:
            v54 = 2 * v153;
LABEL_116:
            llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::grow(&v151, v54);
            v11 = v151;
            if (v153)
            {
              v70 = v153 - 1;
              v71 = (37 * *v42) & (v153 - 1);
              v57 = v151 + 8 * v71;
              v72 = *v57;
              if (*v42 != *v57)
              {
                v73 = 0;
                v74 = 1;
                while (v72 != -1)
                {
                  if (v73)
                  {
                    v75 = 0;
                  }

                  else
                  {
                    v75 = v72 == -2;
                  }

                  if (v75)
                  {
                    v73 = v57;
                  }

                  v76 = v71 + v74++;
                  v71 = v76 & v70;
                  v57 = v151 + 8 * (v76 & v70);
                  v72 = *v57;
                  if (*v42 == *v57)
                  {
                    goto LABEL_131;
                  }
                }

                if (v73)
                {
                  v57 = v73;
                }
              }
            }

            else
            {
              v57 = 0;
            }

LABEL_131:
            LODWORD(v152) = v152 + 1;
            if (*v57 == -1)
            {
              goto LABEL_93;
            }
          }

          --HIDWORD(v152);
          goto LABEL_93;
        }

LABEL_94:
        if (*(v57 + 1) == v20)
        {
          goto LABEL_139;
        }

        if (++v42 == v44)
        {
          v42 = v44;
          goto LABEL_59;
        }
      }

      v45 = 2 * v153;
LABEL_101:
      llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::grow(&v151, v45);
      v11 = v151;
      if (v153)
      {
        v63 = v153 - 1;
        v64 = (37 * *v42) & (v153 - 1);
        v48 = v151 + 8 * v64;
        v65 = *v48;
        if (*v42 != *v48)
        {
          v66 = 0;
          v67 = 1;
          while (v65 != -1)
          {
            if (v66)
            {
              v68 = 0;
            }

            else
            {
              v68 = v65 == -2;
            }

            if (v68)
            {
              v66 = v48;
            }

            v69 = v64 + v67++;
            v64 = v69 & v63;
            v48 = v151 + 8 * (v69 & v63);
            v65 = *v48;
            if (*v42 == *v48)
            {
              goto LABEL_128;
            }
          }

          if (v66)
          {
            v48 = v66;
          }
        }
      }

      else
      {
        v48 = 0;
      }

LABEL_128:
      LODWORD(v152) = v152 + 1;
      if (*v48 == -1)
      {
        goto LABEL_76;
      }

LABEL_75:
      --HIDWORD(v152);
      goto LABEL_76;
    }

LABEL_139:
    v77 = v42 + 1;
    if (v42 != v44 && v77 != v44)
    {
      break;
    }

LABEL_59:
    *(v41 + 16) = (v42 - *(v41 + 8)) >> 2;
    v41 += 56;
    if (v41 == a3)
    {
      goto LABEL_2;
    }
  }

  while (1)
  {
    v79 = v153;
    if (!v153)
    {
      break;
    }

    v80 = v153 - 1;
    v81 = (37 * *v77) & (v153 - 1);
    v82 = v11 + 8 * v81;
    v83 = *v82;
    if (*v77 == *v82)
    {
      goto LABEL_162;
    }

    v84 = 0;
    v85 = 1;
    while (v83 != -1)
    {
      if (v84)
      {
        v86 = 0;
      }

      else
      {
        v86 = v83 == -2;
      }

      if (v86)
      {
        v84 = v82;
      }

      v87 = v81 + v85++;
      v81 = v87 & v80;
      v82 = v11 + 8 * (v87 & v80);
      v83 = *v82;
      if (*v77 == *v82)
      {
        goto LABEL_162;
      }
    }

    if (v84)
    {
      v82 = v84;
    }

    if (4 * v152 + 4 >= 3 * v153)
    {
      break;
    }

    if (v153 + ~v152 - HIDWORD(v152) <= v153 >> 3)
    {
      goto LABEL_185;
    }

    LODWORD(v152) = v152 + 1;
    if (*v82 != -1)
    {
      goto LABEL_160;
    }

LABEL_161:
    *v82 = *v77;
LABEL_162:
    if (*(v82 + 1) != 1)
    {
      v88 = v153;
      if (!v153)
      {
        goto LABEL_199;
      }

      v89 = v153 - 1;
      v90 = (37 * *v77) & (v153 - 1);
      v91 = v11 + 8 * v90;
      v92 = *v91;
      if (*v77 != *v91)
      {
        v93 = 0;
        v94 = 1;
        while (v92 != -1)
        {
          if (v93)
          {
            v95 = 0;
          }

          else
          {
            v95 = v92 == -2;
          }

          if (v95)
          {
            v93 = v91;
          }

          v96 = v90 + v94++;
          v90 = v96 & v89;
          v91 = v11 + 8 * (v96 & v89);
          v92 = *v91;
          if (*v77 == *v91)
          {
            goto LABEL_179;
          }
        }

        if (v93)
        {
          v91 = v93;
        }

        if (4 * v152 + 4 >= 3 * v153)
        {
LABEL_199:
          v88 = 2 * v153;
LABEL_200:
          llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::grow(&v151, v88);
          v11 = v151;
          if (v153)
          {
            v104 = v153 - 1;
            v105 = (37 * *v77) & (v153 - 1);
            v91 = v151 + 8 * v105;
            v106 = *v91;
            if (*v77 != *v91)
            {
              v107 = 0;
              v108 = 1;
              while (v106 != -1)
              {
                if (v107)
                {
                  v109 = 0;
                }

                else
                {
                  v109 = v106 == -2;
                }

                if (v109)
                {
                  v107 = v91;
                }

                v110 = v105 + v108++;
                v105 = v110 & v104;
                v91 = v151 + 8 * (v110 & v104);
                v106 = *v91;
                if (*v77 == *v91)
                {
                  goto LABEL_215;
                }
              }

              if (v107)
              {
                v91 = v107;
              }
            }
          }

          else
          {
            v91 = 0;
          }

LABEL_215:
          LODWORD(v152) = v152 + 1;
          if (*v91 == -1)
          {
            goto LABEL_178;
          }

LABEL_177:
          --HIDWORD(v152);
          goto LABEL_178;
        }

        if (v153 + ~v152 - HIDWORD(v152) <= v153 >> 3)
        {
          goto LABEL_200;
        }

        LODWORD(v152) = v152 + 1;
        if (*v91 != -1)
        {
          goto LABEL_177;
        }

LABEL_178:
        *v91 = *v77;
      }

LABEL_179:
      if (*(v91 + 1) != v20)
      {
        *v42++ = *v77;
      }
    }

    if (++v77 == v44)
    {
      goto LABEL_59;
    }
  }

  v79 = 2 * v153;
LABEL_185:
  llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::grow(&v151, v79);
  v11 = v151;
  if (v153)
  {
    v97 = v153 - 1;
    v98 = (37 * *v77) & (v153 - 1);
    v82 = v151 + 8 * v98;
    v99 = *v82;
    if (*v77 != *v82)
    {
      v100 = 0;
      v101 = 1;
      while (v99 != -1)
      {
        if (v100)
        {
          v102 = 0;
        }

        else
        {
          v102 = v99 == -2;
        }

        if (v102)
        {
          v100 = v82;
        }

        v103 = v98 + v101++;
        v98 = v103 & v97;
        v82 = v151 + 8 * (v103 & v97);
        v99 = *v82;
        if (*v77 == *v82)
        {
          goto LABEL_212;
        }
      }

      if (v100)
      {
        v82 = v100;
      }
    }
  }

  else
  {
    v82 = 0;
  }

LABEL_212:
  LODWORD(v152) = v152 + 1;
  if (*v82 == -1)
  {
    goto LABEL_161;
  }

LABEL_160:
  --HIDWORD(v152);
  goto LABEL_161;
}

uint64_t llvm::BalancedPartitioning::runIteration(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, unsigned int *a6, uint64_t a7, __n128 a8)
{
  v10 = a6[2];
  if (v10)
  {
    v11 = a1 + 8;
    v12 = (*a6 + 16);
    for (i = 20 * v10; i; i -= 20)
    {
      if (*v12)
      {
        goto LABEL_6;
      }

      v14 = *(v12 - 4);
      v15 = *(v12 - 3);
      v16 = v14 + 1;
      if ((v14 + 1) >> 14)
      {
        a8.n128_f64[0] = log2(v16);
        v17 = a8.n128_f64[0];
        v18 = v15 + 1;
        if (!((v15 + 1) >> 14))
        {
LABEL_13:
          a8.n128_f32[0] = *(v11 + 4 * v18) * v15;
          v19 = a8.n128_f32[0] + (v14 * v17);
          *(v12 - 1) = 0;
          if (!v14)
          {
            goto LABEL_20;
          }

LABEL_14:
          if (v14 >> 14)
          {
            a8.n128_f64[0] = log2(v14);
            v20 = a8.n128_f64[0];
            v21 = v15 + 2;
            if (!((v15 + 2) >> 14))
            {
              goto LABEL_18;
            }

LABEL_16:
            a8.n128_f64[0] = log2(v21);
            a8.n128_f32[0] = a8.n128_f64[0];
          }

          else
          {
            v20 = *(v11 + 4 * v14);
            v21 = v15 + 2;
            if ((v15 + 2) >> 14)
            {
              goto LABEL_16;
            }

LABEL_18:
            a8.n128_u32[0] = *(v11 + 4 * v21);
          }

          a8.n128_f32[0] = ((a8.n128_f32[0] * v18) + ((v14 - 1) * v20)) - v19;
          *(v12 - 2) = a8.n128_u32[0];
          goto LABEL_20;
        }
      }

      else
      {
        v17 = *(v11 + 4 * v16);
        v18 = v15 + 1;
        if (!((v15 + 1) >> 14))
        {
          goto LABEL_13;
        }
      }

      a8.n128_f64[0] = log2(v18);
      a8.n128_f32[0] = a8.n128_f64[0];
      a8.n128_f32[0] = a8.n128_f32[0] * v15;
      v19 = a8.n128_f32[0] + (v14 * v17);
      *(v12 - 1) = 0;
      if (v14)
      {
        goto LABEL_14;
      }

LABEL_20:
      if (!v15)
      {
        goto LABEL_5;
      }

      v22 = v14 + 2;
      if ((v14 + 2) >> 14)
      {
        a8.n128_f64[0] = log2(v22);
        v23 = a8.n128_f64[0];
        if (!(v15 >> 14))
        {
LABEL_25:
          a8.n128_u32[0] = *(v11 + 4 * v15);
          goto LABEL_4;
        }
      }

      else
      {
        v23 = *(v11 + 4 * v22);
        if (!(v15 >> 14))
        {
          goto LABEL_25;
        }
      }

      a8.n128_f64[0] = log2(v15);
      a8.n128_f32[0] = a8.n128_f64[0];
LABEL_4:
      a8.n128_f32[0] = ((a8.n128_f32[0] * (v15 - 1)) + (v16 * v23)) - v19;
      *(v12 - 1) = a8.n128_u32[0];
LABEL_5:
      *v12 = 1;
LABEL_6:
      v12 += 20;
    }
  }

  if (a2 == a3)
  {
    v24 = 0;
    v67 = 0;
    v25 = 0;
    goto LABEL_69;
  }

  v24 = 0;
  do
  {
    v26 = *(a2 + 16);
    if (v26)
    {
      v27 = *(a2 + 8);
      v28 = *a6;
      v29 = *(a2 + 44) == 1 && *(a2 + 40) == a4;
      v30 = 4 * v26;
      v31 = 0.0;
      if (v29)
      {
        do
        {
          v33 = *v27++;
          v31 = v31 + *(v28 + 20 * v33 + 8);
          v30 -= 4;
        }

        while (v30);
      }

      else
      {
        do
        {
          v32 = *v27++;
          v31 = v31 + *(v28 + 20 * v32 + 12);
          v30 -= 4;
        }

        while (v30);
      }

      v34 = LODWORD(v31);
    }

    else
    {
      v34 = 0;
    }

    v35 = v24;
    v36 = v24 >> 4;
    if (((v24 >> 4) + 1) >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (v24 >> 4 != -1)
    {
      if (!(((v24 >> 4) + 1) >> 60))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v37 = (16 * v36);
    *v37 = v34;
    v37[1] = a2;
    v24 = 16 * v36 + 16;
    memcpy(0, 0, v35);
    a2 += 56;
  }

  while (a2 != a3);
  if (16 * v36 == -16)
  {
    v67 = 0;
    v25 = 0;
    goto LABEL_69;
  }

  v38 = 16 * v36 + 16;
  v67 = 0;
LABEL_46:
  while (1)
  {
    v39 = *(v67 + 8);
    if (*(v39 + 44) != 1 || *(v39 + 40) != a4)
    {
      break;
    }

    v67 += 16;
    if (v67 == v38)
    {
LABEL_60:
      v67 = v38;
      goto LABEL_61;
    }
  }

  v41 = v38;
  while (1)
  {
    v38 = v41 - 16;
    if (v41 - 16 == v67)
    {
      break;
    }

    v42 = *(v41 - 8);
    v43 = *(v42 + 44) == 1 && *(v42 + 40) == a4;
    v41 -= 16;
    if (v43)
    {
      a8.n128_u32[0] = *v67;
      *v67 = *v38;
      *v38 = a8.n128_u32[0];
      *(v67 + 8) = v42;
      *(v38 + 8) = v39;
      v67 += 16;
      if (v38 != v67)
      {
        goto LABEL_46;
      }

      goto LABEL_60;
    }
  }

LABEL_61:
  v25 = v67 >> 4;
  if (v67 >> 4 < 1)
  {
LABEL_69:
    v47 = 0;
LABEL_70:
    v50.n128_f32[0] = std::__stable_sort<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::runIteration(llvm::iterator_range<std::__wrap_iter<llvm::BPFunctionNode *>>,unsigned int,unsigned int,llvm::SmallVector<llvm::BalancedPartitioning::UtilitySignature,4u> &,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u> &)::$_1 &,std::__wrap_iter<std::pair<float,llvm::BPFunctionNode *> *>>(0, v67, v25, 0, v47, a8);
    v51 = (v24 - v67) >> 4;
    if (v51 >= 1)
    {
      goto LABEL_71;
    }

LABEL_67:
    v52 = 0;
LABEL_74:
    std::__stable_sort<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::runIteration(llvm::iterator_range<std::__wrap_iter<llvm::BPFunctionNode *>>,unsigned int,unsigned int,llvm::SmallVector<llvm::BalancedPartitioning::UtilitySignature,4u> &,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u> &)::$_1 &,std::__wrap_iter<std::pair<float,llvm::BPFunctionNode *> *>>(v67, v24, v51, 0, v52, v50);
    v56 = 0;
    if (v67)
    {
      goto LABEL_77;
    }

    return v56;
  }

  v44 = MEMORY[0x277D826F0];
  v45 = v67 >> 4;
  while (1)
  {
    v46 = operator new(16 * v45, v44);
    if (v46)
    {
      break;
    }

    v47 = v45 >> 1;
    v48 = v45 > 1;
    v45 >>= 1;
    if (!v48)
    {
      goto LABEL_70;
    }
  }

  v49 = v46;
  std::__stable_sort<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::runIteration(llvm::iterator_range<std::__wrap_iter<llvm::BPFunctionNode *>>,unsigned int,unsigned int,llvm::SmallVector<llvm::BalancedPartitioning::UtilitySignature,4u> &,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u> &)::$_1 &,std::__wrap_iter<std::pair<float,llvm::BPFunctionNode *> *>>(0, v67, v25, v46, v45, a8);
  operator delete(v49);
  v51 = (v24 - v67) >> 4;
  if (v51 < 1)
  {
    goto LABEL_67;
  }

LABEL_71:
  v53 = MEMORY[0x277D826F0];
  v54 = v51;
  while (1)
  {
    v55 = operator new(16 * v54, v53);
    if (v55)
    {
      break;
    }

    v52 = v54 >> 1;
    v48 = v54 > 1;
    v54 >>= 1;
    if (!v48)
    {
      goto LABEL_74;
    }
  }

  v57 = v55;
  std::__stable_sort<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::runIteration(llvm::iterator_range<std::__wrap_iter<llvm::BPFunctionNode *>>,unsigned int,unsigned int,llvm::SmallVector<llvm::BalancedPartitioning::UtilitySignature,4u> &,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u> &)::$_1 &,std::__wrap_iter<std::pair<float,llvm::BPFunctionNode *> *>>(v67, v24, v51, v55, v54, v50);
  operator delete(v57);
  v56 = 0;
  if (v67)
  {
LABEL_77:
    if (v67 != v24)
    {
      v56 = 0;
      v58 = 0;
      v59 = v67;
      do
      {
        if ((*v58 + *v59) <= 0.0)
        {
          break;
        }

        v60 = v56 + llvm::BalancedPartitioning::moveFunctionNode(a1, *(v58 + 8), a4, a5, a6, a7);
        v56 = (v60 + llvm::BalancedPartitioning::moveFunctionNode(a1, *(v59 + 8), a4, a5, a6, a7));
        v58 += 16;
        if (v58 == v67)
        {
          break;
        }

        v59 += 16;
      }

      while (v59 != v24);
    }
  }

  return v56;
}

float llvm::BalancedPartitioning::logCost(llvm::BalancedPartitioning *this, unsigned int a2, unsigned int a3)
{
  v6 = a2 + 1;
  if ((a2 + 1) >> 14)
  {
    v7 = log2(v6);
    v8 = a3 + 1;
    if ((a3 + 1) >> 14)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = *(this + v8 + 2);
    return -((v9 * a3) + (a2 * v7));
  }

  v7 = *(this + v6 + 2);
  v8 = a3 + 1;
  if (!((a3 + 1) >> 14))
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = log2(v8);
  return -((v9 * a3) + (a2 * v7));
}

float llvm::BalancedPartitioning::moveGain(uint64_t a1, char a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0.0;
  }

  v4 = *(a1 + 8);
  v5 = (v4 + 4 * v3);
  v6 = *a3;
  v7 = (v3 - 1) & 0x3FFFFFFFFFFFFFFFLL;
  v8 = v7 + 1;
  if (a2)
  {
    if (v7)
    {
      v9 = (v4 + 4 * (v8 & 0x7FFFFFFFFFFFFFFELL));
      v10 = (v4 + 4);
      result = 0.0;
      v12 = v8 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        result = (result + *(v6 + 20 * *(v10 - 1) + 8)) + *(v6 + 20 * *v10 + 8);
        v10 += 2;
        v12 -= 2;
      }

      while (v12);
      if (v8 == (v8 & 0x7FFFFFFFFFFFFFFELL))
      {
        return result;
      }
    }

    else
    {
      result = 0.0;
      v9 = *(a1 + 8);
    }

    do
    {
      v16 = *v9++;
      result = result + *(v6 + 20 * v16 + 8);
    }

    while (v9 != v5);
    return result;
  }

  if (!v7)
  {
    result = 0.0;
    v13 = *(a1 + 8);
    do
    {
LABEL_18:
      v17 = *v13++;
      result = result + *(v6 + 20 * v17 + 12);
    }

    while (v13 != v5);
    return result;
  }

  v13 = (v4 + 4 * (v8 & 0x7FFFFFFFFFFFFFFELL));
  v14 = (v4 + 4);
  result = 0.0;
  v15 = v8 & 0x7FFFFFFFFFFFFFFELL;
  do
  {
    result = (result + *(v6 + 20 * *(v14 - 1) + 12)) + *(v6 + 20 * *v14 + 12);
    v14 += 2;
    v15 -= 2;
  }

  while (v15);
  if (v8 != (v8 & 0x7FFFFFFFFFFFFFFELL))
  {
    goto LABEL_18;
  }

  return result;
}

BOOL llvm::BalancedPartitioning::moveFunctionNode(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t *a5, uint64_t a6)
{
  v6 = *(a6 + 2496);
  v7 = (v6 + 1) % 0x270uLL;
  v8 = *(a6 + 4 * v7);
  if (v8)
  {
    v9 = -1727483681;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 ^ *(a6 + 4 * ((v6 + 397) % 0x270uLL)) ^ ((v8 & 0x7FFFFFFE | *(a6 + 4 * v6) & 0x80000000) >> 1);
  *(a6 + 4 * v6) = v10;
  *(a6 + 2496) = v7;
  v11 = ((v10 ^ (v10 >> 11)) << 7) & 0x9D2C5680 ^ v10 ^ (v10 >> 11);
  v12 = vcvts_n_f32_u32((v11 << 15) & 0xEFC60000 ^ v11 ^ (((v11 << 15) & 0xEFC60000 ^ v11) >> 18), 0x20uLL);
  v13 = *(*a1 + 8);
  if (v12 > v13)
  {
    v14 = *(a2 + 44) & (*(a2 + 40) == a3);
    if ((*(a2 + 44) & (*(a2 + 40) == a3)) == 0)
    {
      a4 = a3;
    }

    *(a2 + 40) = a4;
    *(a2 + 44) = 1;
    v16 = *(a2 + 8);
    v17 = *(a2 + 16);
    if (v14 == 1)
    {
      if (v17)
      {
        v18 = *a5;
        v19 = 4 * v17;
        do
        {
          v20 = *v16++;
          v21 = (v18 + 20 * v20);
          *v21 = vadd_s32(*v21, 0x1FFFFFFFFLL);
          v21[2].i8[0] = 0;
          v19 -= 4;
        }

        while (v19);
      }
    }

    else if (v17)
    {
      v22 = *a5;
      v23 = 4 * v17;
      do
      {
        v24 = *v16++;
        v25 = (v22 + 20 * v24);
        *v25 = vadd_s32(*v25, 0xFFFFFFFF00000001);
        v25[2].i8[0] = 0;
        v23 -= 4;
      }

      while (v23);
    }
  }

  return v12 > v13;
}

float llvm::BalancedPartitioning::log2Cached(llvm::BalancedPartitioning *this, unsigned int a2)
{
  if (a2 >> 14)
  {
    return log2(a2);
  }

  else
  {
    return *(this + a2 + 2);
  }
}

void *llvm::format_provider<llvm::iterator_range<unsigned int const*>,void>::format(unsigned int **a1, llvm::StringRef *a2, unsigned __int8 *a3, size_t a4)
{
  result = llvm::format_provider<llvm::iterator_range<unsigned int *>,void>::parseOptions(a3, a4, &v14);
  v7 = v14;
  v8 = v15;
  v9 = v16;
  v10 = v17;
  v11 = *a1;
  v12 = a1[1];
  if (v11 != v12)
  {
    v14 = &unk_28689E5A0;
    v15 = v11;
    result = llvm::format_provider<unsigned int,void>::format(v11++, a2, v16, v17);
  }

  if (v11 != v12)
  {
    if (v8)
    {
      do
      {
        v13 = *(a2 + 4);
        if (v8 <= *(a2 + 3) - v13)
        {
          memcpy(v13, v7, v8);
          *(a2 + 4) += v8;
        }

        else
        {
          llvm::raw_ostream::write(a2, v7, v8);
        }

        v14 = &unk_28689E5A0;
        v15 = v11;
        result = llvm::format_provider<unsigned int,void>::format(v11++, a2, v9, v10);
      }

      while (v11 != v12);
    }

    else
    {
      do
      {
        v14 = &unk_28689E5A0;
        v15 = v11;
        result = llvm::format_provider<unsigned int,void>::format(v11++, a2, v9, v10);
      }

      while (v11 != v12);
    }
  }

  return result;
}

llvm::raw_ostream *llvm::support::detail::stream_operator_format_adapter<std::optional<unsigned int> const&>::format(uint64_t a1, llvm::raw_ostream *a2)
{
  v2 = *(a1 + 8);
  if (*(v2 + 4) == 1)
  {
    return llvm::raw_ostream::operator<<(a2, *v2);
  }

  else
  {
    return llvm::operator<<(a2);
  }
}

void std::swap[abi:nn200100]<llvm::BPFunctionNode>(const void **a1, const void **a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v10 = v12;
  v11 = 0x400000000;
  if (*(a1 + 4))
  {
    llvm::SmallVectorImpl<unsigned int>::operator=(&v10, a1 + 1);
  }

  v13 = *(a1 + 5);
  *a1 = *a2;
  llvm::SmallVectorImpl<unsigned int>::operator=((a1 + 1), a2 + 1);
  *(a1 + 5) = *(a2 + 5);
  v4 = v10;
  *a2 = v9;
  if (&v9 != a2)
  {
    if (v4 != v12)
    {
      v5 = a2[1];
      if (v5 != (a2 + 3))
      {
        free(v5);
        v4 = v10;
      }

      a2[1] = v4;
      a2[2] = v11;
      v10 = v12;
      HIDWORD(v11) = 0;
      goto LABEL_17;
    }

    v6 = v11;
    v7 = *(a2 + 4);
    if (v7 >= v11)
    {
      if (v11)
      {
        memmove(a2[1], v4, 4 * v11);
      }

      goto LABEL_16;
    }

    if (*(a2 + 5) < v11)
    {
      *(a2 + 4) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v7)
    {
      memmove(a2[1], v4, 4 * v7);
      v8 = v11 - v7;
      if (v11 == v7)
      {
LABEL_16:
        *(a2 + 4) = v6;
LABEL_17:
        LODWORD(v11) = 0;
        v4 = v10;
        goto LABEL_18;
      }
    }

    else
    {
      v7 = 0;
      v8 = v11;
      if (!v11)
      {
        goto LABEL_16;
      }
    }

    memcpy(a2[1] + 4 * v7, &v10[4 * v7], 4 * v8);
    goto LABEL_16;
  }

LABEL_18:
  *(a2 + 5) = v13;
  if (v4 != v12)
  {
    free(v4);
  }
}

__n128 std::__function::__func<void llvm::BalancedPartitioning::BPThreadPool::async<llvm::BalancedPartitioning::run(std::vector<llvm::BPFunctionNode> &)::$_0>(llvm::BalancedPartitioning::run(std::vector<llvm::BPFunctionNode> &)::$_0 &&)::{lambda(void)#1},std::allocator<llvm::BalancedPartitioning::run(std::vector<llvm::BPFunctionNode> &)::$_0 &&>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28689E630;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<void llvm::BalancedPartitioning::BPThreadPool::async<llvm::BalancedPartitioning::run(std::vector<llvm::BPFunctionNode> &)::$_0>(llvm::BalancedPartitioning::run(std::vector<llvm::BPFunctionNode> &)::$_0 &&)::{lambda(void)#1},std::allocator<llvm::BalancedPartitioning::run(std::vector<llvm::BPFunctionNode> &)::$_0 &&>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 40);
  llvm::BalancedPartitioning::bisect(*(a1 + 16), *(a1 + 24), *(a1 + 32), 0, 1u, 0);
  if (atomic_fetch_add((v1 + 120), 0xFFFFFFFF) == 1)
  {
    std::mutex::lock((v1 + 8));
    *(v1 + 124) = 1;
    std::mutex::unlock((v1 + 8));

    std::condition_variable::notify_one((v1 + 72));
  }
}

uint64_t std::__function::__func<void llvm::BalancedPartitioning::BPThreadPool::async<llvm::BalancedPartitioning::run(std::vector<llvm::BPFunctionNode> &)::$_0>(llvm::BalancedPartitioning::run(std::vector<llvm::BPFunctionNode> &)::$_0 &&)::{lambda(void)#1},std::allocator<llvm::BalancedPartitioning::run(std::vector<llvm::BPFunctionNode> &)::$_0 &&>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4llvm20BalancedPartitioning12BPThreadPool5asyncIZNKS0_3runERNSt3__16vectorINS_14BPFunctionNodeENS3_9allocatorIS5_EEEEE3$_0EEvOT_EUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4llvm20BalancedPartitioning12BPThreadPool5asyncIZNKS0_3runERNSt3__16vectorINS_14BPFunctionNodeENS3_9allocatorIS5_EEEEE3$_0EEvOT_EUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4llvm20BalancedPartitioning12BPThreadPool5asyncIZNKS0_3runERNSt3__16vectorINS_14BPFunctionNodeENS3_9allocatorIS5_EEEEE3$_0EEvOT_EUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4llvm20BalancedPartitioning12BPThreadPool5asyncIZNKS0_3runERNSt3__16vectorINS_14BPFunctionNodeENS3_9allocatorIS5_EEEEE3$_0EEvOT_EUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void std::__stable_sort<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::run(std::vector<llvm::BPFunctionNode> &)::$_1 &,std::__wrap_iter<llvm::BPFunctionNode*>>(uint64_t a1, const void **a2, unint64_t a3, void *a4, uint64_t a5)
{
  v51 = *MEMORY[0x277D85DE8];
  if (a3 < 2)
  {
    return;
  }

  if (a3 == 2)
  {
    if (*(a1 + 44) == 1 && ((*(a2 - 12) & 1) == 0 || *(a2 - 4) < *(a1 + 40)))
    {
      v7 = a2 - 7;

      std::swap[abi:nn200100]<llvm::BPFunctionNode>(a1, v7);
    }

    return;
  }

  v8 = a3;
  if (a3 > 0)
  {
    v10 = a3 >> 1;
    v11 = (a1 + 56 * (a3 >> 1));
    v12 = a3 - (a3 >> 1);
    v13 = a3 >> 1;
    if (v8 <= a5)
    {
      std::__stable_sort_move<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::run(std::vector<llvm::BPFunctionNode> &)::$_1 &,std::__wrap_iter<llvm::BPFunctionNode*>>(a1, v11, v13, a4);
      v35 = &a4[7 * v10];
      std::__stable_sort_move<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::run(std::vector<llvm::BPFunctionNode> &)::$_1 &,std::__wrap_iter<llvm::BPFunctionNode*>>(a1 + 56 * (v8 >> 1), a2, v8 - (v8 >> 1), v35);
      v36 = &a4[7 * v8];
      v37 = (a1 + 40);
      v38 = v35;
      v39 = a4;
      while (v38 != v36)
      {
        if (*(v39 + 44) != 1 || (*(v38 + 44) & 1) != 0 && *(v38 + 10) >= *(v39 + 10))
        {
          *(v37 - 5) = *v39;
          llvm::SmallVectorImpl<unsigned int>::operator=((v37 - 2), v39 + 1);
          *v37 = *(v39 + 5);
          v37 = (v37 + 56);
          v39 += 7;
          if (v39 == v35)
          {
            goto LABEL_73;
          }
        }

        else
        {
          *(v37 - 5) = *v38;
          llvm::SmallVectorImpl<unsigned int>::operator=((v37 - 2), v38 + 1);
          *v37 = *(v38 + 5);
          v37 = (v37 + 56);
          v38 += 7;
          if (v39 == v35)
          {
LABEL_73:
            if (v38 != v36)
            {
              v40 = 0;
              do
              {
                v41 = &v38[v40];
                *(v37 + v40 * 8 - 40) = v38[v40];
                llvm::SmallVectorImpl<unsigned int>::operator=(v37 + v40 * 8 - 32, &v38[v40 + 1]);
                *(v37 + v40 * 8) = *&v38[v40 + 5];
                v40 += 7;
              }

              while (v41 + 7 != v36);
            }

            goto LABEL_80;
          }
        }
      }

      if (v39 != v35)
      {
        v42 = 0;
        do
        {
          v43 = &v39[v42];
          *(v37 + v42 * 8 - 40) = v39[v42];
          llvm::SmallVectorImpl<unsigned int>::operator=(v37 + v42 * 8 - 32, &v39[v42 + 1]);
          *(v37 + v42 * 8) = *&v39[v42 + 5];
          v42 += 7;
        }

        while (v43 + 7 != v35);
      }

LABEL_80:
      if (a4)
      {
        v44 = a4 + 3;
        do
        {
          v45 = *(v44 - 2);
          if (v44 != v45)
          {
            free(v45);
          }

          v44 += 7;
          --v8;
        }

        while (v8);
      }
    }

    else
    {
      std::__stable_sort<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::run(std::vector<llvm::BPFunctionNode> &)::$_1 &,std::__wrap_iter<llvm::BPFunctionNode*>>(a1, v11, v13, a4, a5);
      std::__stable_sort<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::run(std::vector<llvm::BPFunctionNode> &)::$_1 &,std::__wrap_iter<llvm::BPFunctionNode*>>(a1 + 56 * (v8 >> 1), a2, v8 - (v8 >> 1), a4, a5);

      std::__inplace_merge<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::run(std::vector<llvm::BPFunctionNode> &)::$_1 &,std::__wrap_iter<llvm::BPFunctionNode*>>(a1, v11, a2, v10, v12, a4, a5);
    }

    return;
  }

  if (a1 == a2)
  {
    return;
  }

  v15 = (a1 + 56);
  if ((a1 + 56) == a2)
  {
    return;
  }

  v16 = 0;
  v17 = a1;
  while (2)
  {
    v18 = v17;
    v17 = v15;
    if (*(v18 + 44) != 1 || (*(v18 + 100) & 1) != 0 && *(v18 + 24) >= *(v18 + 10))
    {
      goto LABEL_18;
    }

    v46 = *v15;
    v47 = v49;
    v48 = 0x400000000;
    if (*(v18 + 18))
    {
      llvm::SmallVectorImpl<unsigned int>::operator=(&v47, v18 + 8);
    }

    v50 = *(v18 + 6);
    v19 = v16;
    while (1)
    {
      v20 = v19;
      v21 = a1 + v19;
      v22 = *(a1 + v19 + 8);
      *(a1 + v19 + 56) = *(a1 + v19);
      if ((a1 + v19 + 24) != v22)
      {
        break;
      }

      v27 = (v21 + 16);
      v26 = *(v21 + 16);
      v28 = *(v21 + 72);
      if (v28 >= v26)
      {
        if (v26)
        {
          memmove(*(v21 + 64), v22, 4 * v26);
        }
      }

      else
      {
        if (*(a1 + v19 + 76) < v26)
        {
          *(v21 + 72) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v28)
        {
          memmove(*(v21 + 64), v22, 4 * v28);
          v29 = *v27 - v28;
          if (!v29)
          {
            goto LABEL_38;
          }

LABEL_37:
          memcpy((*(v21 + 64) + 4 * v28), (*(v21 + 8) + 4 * v28), 4 * v29);
          goto LABEL_38;
        }

        v28 = 0;
        v29 = *v27;
        if (*v27)
        {
          goto LABEL_37;
        }
      }

LABEL_38:
      *(v21 + 72) = v26;
      *v27 = 0;
      v25 = a1 + v20;
      *(a1 + v20 + 96) = *(a1 + v20 + 40);
      if (!v20)
      {
        goto LABEL_47;
      }

LABEL_39:
      if (*(v25 - 12) == 1)
      {
        v18 -= 7;
        v19 = v20 - 56;
        if ((BYTE4(v50) & 1) == 0 || v50 < *(a1 + v20 - 16))
        {
          continue;
        }
      }

      v30 = (a1 + v20);
      v31 = v47;
      *(a1 + v20) = v46;
      if ((a1 + v20) == &v46)
      {
        goto LABEL_64;
      }

      goto LABEL_48;
    }

    v23 = *(v21 + 64);
    if ((v21 + 80) != v23)
    {
      free(v23);
      v22 = *(v21 + 8);
    }

    v24 = a1 + v20;
    *(v21 + 64) = v22;
    *(v24 + 72) = *(a1 + v20 + 16);
    *(v21 + 8) = v21 + 24;
    *(v24 + 20) = 0;
    *(v18 + 4) = 0;
    v25 = a1 + v20;
    *(a1 + v20 + 96) = *(a1 + v20 + 40);
    if (v20)
    {
      goto LABEL_39;
    }

LABEL_47:
    v30 = a1;
    v31 = v47;
    *a1 = v46;
    if (a1 == &v46)
    {
      goto LABEL_64;
    }

LABEL_48:
    if (v31 == v49)
    {
      v33 = v48;
      v34 = v30[4];
      if (v34 >= v48)
      {
        if (v48)
        {
          memmove(*(v25 + 8), v31, 4 * v48);
        }
      }

      else
      {
        if (v30[5] < v48)
        {
          v30[4] = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v34)
        {
          memmove(*(v25 + 8), v31, 4 * v34);
        }

        else
        {
          v34 = 0;
        }

        if (v48 != v34)
        {
          memcpy((*(v25 + 8) + 4 * v34), &v47[4 * v34], 4 * (v48 - v34));
        }
      }

      v30[4] = v33;
    }

    else
    {
      v32 = *(v25 + 8);
      if (v32 != v30 + 6)
      {
        free(v32);
        v31 = v47;
      }

      *(v25 + 8) = v31;
      *(v30 + 2) = v48;
      v47 = v49;
      HIDWORD(v48) = 0;
    }

    LODWORD(v48) = 0;
    v31 = v47;
LABEL_64:
    *(v25 + 40) = v50;
    if (v31 != v49)
    {
      free(v31);
    }

LABEL_18:
    v15 = v17 + 7;
    v16 += 56;
    if (v17 + 7 != a2)
    {
      continue;
    }

    break;
  }
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::run(std::vector<llvm::BPFunctionNode> &)::$_1 &,std::__wrap_iter<llvm::BPFunctionNode*>>(uint64_t result, const void **a2, uint64_t a3, void *a4)
{
  if (!a3)
  {
    return result;
  }

  v4 = a4;
  v5 = a2;
  v6 = result;
  if (a3 == 2)
  {
    v7 = (a2 - 2);
    if (*(result + 44) == 1 && ((*(a2 - 12) & 1) == 0 || *(a2 - 4) < *(result + 40)))
    {
      *a4 = *(a2 - 7);
      a4[1] = a4 + 3;
      a4[2] = 0x400000000;
      if (*(a2 - 10))
      {
        llvm::SmallVectorImpl<unsigned int>::operator=((a4 + 1), a2 - 6);
      }

      v39 = *v7;
      v4[8] = v4 + 10;
      result = (v4 + 8);
      *(v4 + 5) = v39;
      v4[7] = *v6;
      v4[9] = 0x400000000;
      if (*(v6 + 16))
      {
        result = llvm::SmallVectorImpl<unsigned int>::operator=(result, (v6 + 8));
      }

      v9 = *(v6 + 40);
    }

    else
    {
      *a4 = *result;
      a4[1] = a4 + 3;
      a4[2] = 0x400000000;
      if (*(result + 16))
      {
        llvm::SmallVectorImpl<unsigned int>::operator=((a4 + 1), (result + 8));
      }

      v8 = *(v6 + 40);
      v4[8] = v4 + 10;
      result = (v4 + 8);
      *(v4 + 5) = v8;
      v4[7] = *(v5 - 7);
      v4[9] = 0x400000000;
      if (*(v5 - 10))
      {
        result = llvm::SmallVectorImpl<unsigned int>::operator=(result, v5 - 6);
      }

      v9 = *v7;
    }

    *(v4 + 6) = v9;
  }

  else
  {
    if (a3 == 1)
    {
      *a4 = *result;
      a4[1] = a4 + 3;
      result = (a4 + 1);
      a4[2] = 0x400000000;
      if (*(v6 + 16))
      {
        result = llvm::SmallVectorImpl<unsigned int>::operator=(result, (v6 + 8));
      }

      *(v4 + 5) = *(v6 + 40);
      return result;
    }

    if (a3 > 8)
    {
      v28 = a3 >> 1;
      v29 = 56 * (a3 >> 1);
      v30 = v29 + result;
      std::__stable_sort<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::run(std::vector<llvm::BPFunctionNode> &)::$_1 &,std::__wrap_iter<llvm::BPFunctionNode*>>(result, v29 + result, v28, a4, v28);
      result = std::__stable_sort<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::run(std::vector<llvm::BPFunctionNode> &)::$_1 &,std::__wrap_iter<llvm::BPFunctionNode*>>(v29 + v6, v5, a3 - v28, &v4[v29 / 8], a3 - v28);
      v32 = v29 + v6;
      while (v32 != v5)
      {
        if (*(v6 + 44) == 1 && ((*(v32 + 44) & 1) == 0 || *(v32 + 40) < *(v6 + 40)))
        {
          *v4 = *v32;
          v4[1] = v4 + 3;
          result = (v4 + 1);
          v4[2] = 0x400000000;
          if (*(v32 + 16))
          {
            result = llvm::SmallVectorImpl<unsigned int>::operator=(result, (v32 + 8));
          }

          *(v4 + 5) = *(v32 + 40);
          v32 += 56;
          v4 += 7;
          if (v6 == v30)
          {
LABEL_67:
            if (v32 != v5)
            {
              v33 = 0;
              do
              {
                v34 = v32 + v33 * 8;
                v35 = &v4[v33];
                *v35 = *(v32 + v33 * 8);
                v4[v33 + 1] = &v4[v33 + 3];
                result = &v4[v33 + 1];
                v35[2] = 0x400000000;
                if (*(v32 + v33 * 8 + 16))
                {
                  result = llvm::SmallVectorImpl<unsigned int>::operator=(result, (v34 + 8));
                }

                *(v35 + 5) = *(v34 + 40);
                v33 += 7;
              }

              while ((v34 + 56) != v5);
            }

            return result;
          }
        }

        else
        {
          *v4 = *v6;
          v4[1] = v4 + 3;
          result = (v4 + 1);
          v4[2] = 0x400000000;
          if (*(v6 + 16))
          {
            result = llvm::SmallVectorImpl<unsigned int>::operator=(result, (v6 + 8));
          }

          *(v4 + 5) = *(v6 + 40);
          v6 += 56;
          v4 += 7;
          if (v6 == v30)
          {
            goto LABEL_67;
          }
        }
      }

      if (v6 != v30)
      {
        v36 = 0;
        do
        {
          v37 = v6 + v36 * 8;
          v38 = &v4[v36];
          *v38 = *(v6 + v36 * 8);
          v4[v36 + 1] = &v4[v36 + 3];
          result = &v4[v36 + 1];
          v38[2] = 0x400000000;
          if (*(v6 + v36 * 8 + 16))
          {
            result = llvm::SmallVectorImpl<unsigned int>::operator=(result, (v37 + 8));
          }

          *(v38 + 5) = *(v37 + 40);
          v36 += 7;
        }

        while (v37 + 56 != v30);
      }
    }

    else if (result != a2)
    {
      *a4 = *result;
      a4[1] = a4 + 3;
      result = (a4 + 1);
      a4[2] = 0x400000000;
      if (*(v6 + 16))
      {
        result = llvm::SmallVectorImpl<unsigned int>::operator=(result, (v6 + 8));
      }

      *(v4 + 5) = *(v6 + 40);
      v10 = (v6 + 56);
      if ((v6 + 56) != v5)
      {
        v11 = 0;
        v12 = v4;
        v40 = v5;
        do
        {
          v14 = v10;
          if (*(v12 + 44) != 1 || (*(v6 + 100) & 1) != 0 && *(v6 + 96) >= *(v12 + 10))
          {
            v15 = *v10;
            v12[8] = v12 + 10;
            result = (v12 + 8);
            v12[7] = v15;
            v12[9] = 0x400000000;
            if (*(v6 + 72))
            {
              result = llvm::SmallVectorImpl<unsigned int>::operator=(result, (v6 + 64));
            }

            v13 = v12 + 12;
            goto LABEL_22;
          }

          v42 = v10;
          v12[7] = *v12;
          v12[8] = v12 + 10;
          v12[9] = 0x400000000;
          if (*(v12 + 4))
          {
            llvm::SmallVectorImpl<unsigned int>::operator=((v12 + 8), v12 + 1);
          }

          *(v12 + 6) = *(v12 + 5);
          v16 = v4;
          if (v12 == v4)
          {
            goto LABEL_55;
          }

          v41 = v11;
          v16 = v12;
          do
          {
            v17 = v4 + v11;
            if (*(v4 + v11 - 12) != 1)
            {
              v16 = (v4 + v11);
              goto LABEL_54;
            }

            v18 = v17 - 16;
            if ((*(v6 + 100) & 1) != 0 && *(v6 + 96) >= *v18)
            {
              goto LABEL_54;
            }

            v19 = (v4 + v11);
            *(v4 + v11) = *(v17 - 7);
            v20 = *(v4 + v11 - 48);
            v21 = v4 + v11 - 32;
            if (v21 == v20)
            {
              v24 = (v19 - 5);
              v25 = *(v19 - 10);
              v26 = *(v19 + 4);
              if (v26 >= v25)
              {
                if (v25)
                {
                  memmove(v19[1], v20, 4 * v25);
                }
              }

              else
              {
                if (*(v4 + v11 + 20) < v25)
                {
                  *(v19 + 4) = 0;
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                if (v26)
                {
                  memmove(v19[1], v20, 4 * v26);
                  v27 = *v24 - v26;
                  if (v27)
                  {
                    goto LABEL_32;
                  }
                }

                else
                {
                  v26 = 0;
                  v27 = *v24;
                  if (*v24)
                  {
LABEL_32:
                    memcpy(v19[1] + 4 * v26, *(v19 - 6) + 4 * v26, 4 * v27);
                  }
                }
              }

              *(v19 + 4) = v25;
              goto LABEL_34;
            }

            v22 = v19[1];
            if (v19 + 3 != v22)
            {
              free(v22);
              v20 = *(v19 - 6);
            }

            v23 = v4 + v11;
            v19[1] = v20;
            v24 = (v16 - 5);
            *(v23 + 2) = *(v4 + v11 - 40);
            *(v19 - 6) = v21;
            *(v23 - 9) = 0;
LABEL_34:
            v16 -= 7;
            *v24 = 0;
            *(v4 + v11 + 40) = *v18;
            v11 -= 56;
          }

          while (v11);
          v16 = v4;
LABEL_54:
          v5 = v40;
          v11 = v41;
LABEL_55:
          v14 = v42;
          *v16 = *v42;
          v13 = v16 + 5;
          result = llvm::SmallVectorImpl<unsigned int>::operator=((v16 + 1), (v6 + 64));
LABEL_22:
          v12 += 7;
          *v13 = *(v6 + 96);
          v10 = v14 + 7;
          v11 += 56;
          v6 = v14;
        }

        while (v14 + 7 != v5);
      }
    }
  }

  return result;
}