uint64_t sub_1000924FC(uint64_t a1, _BYTE *a2, unint64_t a3)
{
  v47 = v49;
  v48 = xmmword_1002B0190;
  *__p = 0u;
  v45 = 0u;
  *v42 = 0u;
  v43 = 0u;
  *v41 = 0u;
  v46 = 1;
  sub_10008E700(v41, a3);
  DWORD2(v36) = 2;
  v38 = 0;
  v39 = 1;
  memset(v37, 0, sizeof(v37));
  *&v36 = off_1002D4A48;
  v40 = &v47;
  llvm::raw_ostream::SetBufferAndMode(&v36, 0, 0, 0);
  (*(v36 + 16))(&v36, v41[1] + *(&v45 + 1) - v41[0]);
  v6 = v42[1];
  v7 = v43;
  while (v6 != v7)
  {
    v8 = *v6;
    v9 = *(v6 + 1);
    v6 += 16;
    llvm::raw_ostream::write(&v36, v8, v9);
  }

  llvm::raw_ostream::write(&v36, v41[0], v41[1] - v41[0]);
  llvm::raw_ostream::~raw_ostream(&v36);
  v10 = __p[0];
  if (__p[0])
  {
    v11 = __p[1];
    v12 = __p[0];
    if (__p[1] != __p[0])
    {
      v13 = __p[1];
      do
      {
        v15 = *(v13 - 3);
        v13 -= 24;
        v14 = v15;
        if (v15)
        {
          *(v11 - 2) = v14;
          operator delete(v14);
        }

        v11 = v13;
      }

      while (v13 != v10);
      v12 = __p[0];
    }

    __p[1] = v10;
    operator delete(v12);
  }

  if (v42[1])
  {
    *&v43 = v42[1];
    operator delete(v42[1]);
  }

  if (v41[0])
  {
    v41[1] = v41[0];
    operator delete(v41[0]);
  }

  v17 = *a1;
  v16 = *(a1 + 8);
  v18 = v16 - *a1;
  v19 = (0xAAAAAAAAAAAAAAABLL * (v18 >> 3));
  v20 = *(a1 + 16);
  if (v16 >= v20)
  {
    v22 = (v19 + 1);
    if ((v19 + 1) > 0xAAAAAAAAAAAAAAALL)
    {
      sub_100003FC0();
    }

    v23 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v17) >> 3);
    if (2 * v23 > v22)
    {
      v22 = 2 * v23;
    }

    if (v23 >= 0x555555555555555)
    {
      v24 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v24 = v22;
    }

    if (v24)
    {
      if (v24 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_100003FC0();
    }

    v25 = (8 * (v18 >> 3));
    *v25 = 0;
    v25[1] = 0;
    v25[2] = 0;
    v21 = v25 + 3;
    v26 = v25 - v18;
    memcpy(v25 - v18, v17, v18);
    *a1 = v26;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v16 = 0;
    v16[1] = 0;
    v21 = v16 + 3;
    v16[2] = 0;
  }

  *(a1 + 8) = v21;
  v27 = *(v21 - 3);
  if (*(v21 - 1) - v27 < v48 + a3)
  {
    if (((v48 + a3) & 0x8000000000000000) == 0)
    {
      v28 = *(v21 - 2) - v27;
      operator new();
    }

    sub_100003FC0();
  }

  sub_10009290C((v21 - 3), *(v21 - 2), v47, v47 + v48, v48);
  sub_10008E93C((v21 - 3), *(v21 - 2), a2, &a2[a3], a3);
  v29 = *(v21 - 2) - *(v21 - 3);
  *&v36 = *(v21 - 3);
  *(&v36 + 1) = v29;
  v37[0] = v19;
  sub_100092BD0(a1 + 88, &v36, v37, v41);
  if ((v42[0] & 1) == 0)
  {
    v30 = *(a1 + 8);
    v33 = *(v30 - 24);
    v32 = v30 - 24;
    v31 = v33;
    if (v33)
    {
      *(*(a1 + 8) - 16) = v31;
      operator delete(v31);
    }

    *(a1 + 8) = v32;
  }

  v34 = *(v41[0] + 2);
  if (v47 != v49)
  {
    free(v47);
  }

  return v34;
}

char *sub_10009290C(uint64_t a1, char *__dst, char *__src, char *a4, int64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if ((v9 - v10) < a5)
  {
    v11 = *a1;
    v12 = v10 - *a1 + a5;
    if (v12 < 0)
    {
      sub_100003FC0();
    }

    v13 = (__dst - v11);
    v14 = v9 - v11;
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      operator new();
    }

    v41 = (__dst - v11);
    memcpy(v13, __src, a5);
    v42 = v10 - v5;
    memcpy(&v13[a5], v5, v42);
    *(a1 + 8) = v5;
    v43 = &v13[v11 - v5];
    memcpy(v43, v11, v41);
    *a1 = v43;
    *(a1 + 8) = &v13[a5 + v42];
    *(a1 + 16) = 0;
    if (v11)
    {
      operator delete(v11);
    }

    return v13;
  }

  v16 = v10 - __dst;
  if ((v10 - __dst) >= a5)
  {
    v30 = &__dst[a5];
    v31 = (v10 - a5);
    v32 = *(a1 + 8);
    if (v10 >= a5)
    {
      if (a5 <= 0x1F)
      {
        goto LABEL_44;
      }

      v31 += a5 & 0x7FFFFFFFFFFFFFE0;
      v32 = (v10 + (a5 & 0x7FFFFFFFFFFFFFE0));
      v33 = (v10 + 16);
      v34 = (v10 + 16 - a5);
      v35 = a5 & 0x7FFFFFFFFFFFFFE0;
      do
      {
        v36 = *v34;
        *(v33 - 1) = *(v34 - 1);
        *v33 = v36;
        v33 += 2;
        v34 += 2;
        v35 -= 32;
      }

      while (v35);
      if ((a5 & 0x7FFFFFFFFFFFFFE0) != a5)
      {
LABEL_44:
        do
        {
          v37 = *v31++;
          *v32++ = v37;
        }

        while (v31 != v10);
      }
    }

    *(a1 + 8) = v32;
    if (v10 != v30)
    {
      memmove(&__dst[a5], __dst, v10 - v30);
    }

    v38 = v5;
    v39 = __src;
    v40 = a5;
    goto LABEL_39;
  }

  v17 = a4 - &__src[v16];
  if (a4 != &__src[v16])
  {
    v18 = a4;
    memmove(*(a1 + 8), &__src[v16], a4 - &__src[v16]);
    a4 = v18;
  }

  v19 = (v10 + v17);
  *(a1 + 8) = v10 + v17;
  if (v16 >= 1)
  {
    v20 = v5 + a5;
    v21 = &v19[-a5];
    if (&v19[-a5] >= v10)
    {
      v23 = (v10 + v17);
    }

    else
    {
      v22 = &__src[v10 + a5] - (v5 + a4);
      v23 = (v10 + v17);
      if (v22 < 0x20)
      {
        goto LABEL_45;
      }

      if (a5 <= 0x1F)
      {
        goto LABEL_45;
      }

      v21 += v22 & 0xFFFFFFFFFFFFFFE0;
      v23 = &v19[v22 & 0xFFFFFFFFFFFFFFE0];
      v24 = &a4[v5 + 16];
      v25 = (v24 - __src);
      v26 = (v24 - &__src[a5]);
      v27 = v22 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v28 = *v26;
        *(v25 - 1) = *(v26 - 1);
        *v25 = v28;
        v25 += 2;
        v26 += 2;
        v27 -= 32;
      }

      while (v27);
      if (v22 != (v22 & 0xFFFFFFFFFFFFFFE0))
      {
LABEL_45:
        do
        {
          v29 = *v21++;
          *v23++ = v29;
        }

        while (v21 < v10);
      }
    }

    *(a1 + 8) = v23;
    if (v19 != v20)
    {
      memmove(v5 + a5, v5, v19 - v20);
    }

    v38 = v5;
    v39 = __src;
    v40 = v10 - v5;
LABEL_39:
    memmove(v38, v39, v40);
  }

  return v5;
}

uint64_t sub_100092BD0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, char **a3@<X2>, uint64_t a4@<X8>)
{
  v14 = 0;
  result = sub_100092CE8(a1, a2, &v14);
  v9 = v14;
  if (!result)
  {
    v15 = v14;
    v11 = *(a1 + 8);
    v12 = *(a1 + 16);
    if (4 * v11 + 4 >= 3 * v12)
    {
      v12 *= 2;
    }

    else if (v12 + ~v11 - *(a1 + 12) > v12 >> 3)
    {
      *(a1 + 8) = v11 + 1;
      if (*v9 == -1)
      {
LABEL_7:
        *v9 = *a2;
        v9[2] = *a3;
        v10 = 1;
        goto LABEL_8;
      }

LABEL_6:
      --*(a1 + 12);
      goto LABEL_7;
    }

    sub_100092E58(a1, v12);
    result = sub_100092CE8(a1, a2, &v15);
    v9 = v15;
    ++*(a1 + 8);
    if (*v9 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v10 = 0;
LABEL_8:
  v13 = *a1 + 24 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v13;
  *(a4 + 16) = v10;
  return result;
}

uint64_t sub_100092CE8(uint64_t *a1, uint64_t a2, char ***a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v5 = *a1;
    v7 = v4 - 1;
    v8 = (v4 - 1) & sub_10002D970(*a2, *a2 + *(a2 + 8));
    v9 = *a2;
    v10 = *(a2 + 8);
    if (v9 == -2)
    {
      v11 = 1;
      v12 = (v5 + 24 * v8);
      v13 = *v12;
      if (*v12 == -2)
      {
LABEL_27:
        result = 1;
        goto LABEL_28;
      }

      while (v13 != -1)
      {
        if (v10 != v12[1] || memcmp(0xFFFFFFFFFFFFFFFELL, v13, v10))
        {
          v14 = v8 + v11++;
          v8 = v14 & v7;
          v12 = (v5 + 24 * (v14 & v7));
          v13 = *v12;
          if (*v12 != -2)
          {
            continue;
          }
        }

        goto LABEL_27;
      }

      v16 = 0;
    }

    else
    {
      v16 = 0;
      v18 = 1;
      v12 = (v5 + 24 * v8);
      v19 = *v12;
      if (*v12 != -2)
      {
        goto LABEL_24;
      }

      while (1)
      {
        do
        {
          if (v16)
          {
            v20 = 0;
          }

          else
          {
            v20 = v19 + 2 == 0;
          }

          if (v20)
          {
            v16 = v12;
          }

          v21 = v8 + v18++;
          v8 = v21 & v7;
          v12 = (v5 + 24 * (v21 & v7));
          v19 = *v12;
        }

        while (*v12 == -2);
LABEL_24:
        if (v19 == -1)
        {
          break;
        }

        if (v10 == v12[1] && !memcmp(v9, v19, v10))
        {
          goto LABEL_27;
        }
      }
    }

    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v12;
    }

    if (v9 == -1)
    {
      result = 1;
    }

    else
    {
      v12 = v17;
      result = 0;
    }
  }

  else
  {
    v12 = 0;
    result = 0;
  }

LABEL_28:
  *a3 = v12;
  return result;
}

void sub_100092E58(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  buffer = llvm::allocate_buffer((24 * v8), 8uLL);
  *a1 = buffer;
  if (!v4)
  {
    *(a1 + 8) = 0;
    v13 = *(a1 + 16);
    if (!v13)
    {
      return;
    }

    v14 = 24 * v13 - 24;
    if (v14 >= 0x18)
    {
      v24 = v14 / 0x18 + 1;
      v15 = (buffer + 24 * (v24 & 0x1FFFFFFFFFFFFFFELL));
      v25 = buffer;
      v26 = v24 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *v25 = xmmword_1002B02F0;
        *(v25 + 24) = xmmword_1002B02F0;
        v25 += 3;
        v26 -= 2;
      }

      while (v26);
      if (v24 == (v24 & 0x1FFFFFFFFFFFFFFELL))
      {
        return;
      }
    }

    else
    {
      v15 = buffer;
    }

    v27 = (buffer + 24 * v13);
    do
    {
      *v15 = xmmword_1002B02F0;
      v15 = (v15 + 24);
    }

    while (v15 != v27);
    return;
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 24 * v10 - 24;
    if (v11 >= 0x18)
    {
      v16 = v11 / 0x18 + 1;
      v12 = (buffer + 24 * (v16 & 0x1FFFFFFFFFFFFFFELL));
      v17 = buffer;
      v18 = v16 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *v17 = xmmword_1002B02F0;
        *(v17 + 24) = xmmword_1002B02F0;
        v17 += 3;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0x1FFFFFFFFFFFFFFELL))
      {
        goto LABEL_16;
      }
    }

    else
    {
      v12 = buffer;
    }

    v19 = (buffer + 24 * v10);
    do
    {
      *v12 = xmmword_1002B02F0;
      v12 = (v12 + 24);
    }

    while (v12 != v19);
  }

LABEL_16:
  v20 = 3 * v3;
  if (v3)
  {
    v21 = 24 * v3;
    v22 = v4;
    do
    {
      if (*v22 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v28 = 0;
        sub_100092CE8(a1, v22, &v28);
        v23 = v28;
        *v28 = *v22;
        v23[2] = *(v22 + 16);
        ++*(a1 + 8);
      }

      v22 += 24;
      v21 -= 24;
    }

    while (v21);
  }

  llvm::deallocate_buffer(v4, (8 * v20), 8uLL);
}

uint64_t sub_100093088(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 16);
  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 48);
  }

  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v25 = *(v1 + 8);
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v25);
    if (!ReferencedDialect)
    {
      return 0;
    }

    {
      v24 = ReferencedDialect;
      sub_100299BD0();
      ReferencedDialect = v24;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v5 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = v3;
    v22 = a1;
    sub_100299B7C();
    v3 = v21;
    a1 = v22;
    v5 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  v8 = v6;
  v9 = v7;
  do
  {
    v10 = v9 >> 1;
    v11 = &v8[2 * (v9 >> 1)];
    v13 = *v11;
    v12 = (v11 + 2);
    v9 += ~(v9 >> 1);
    if (v13 < v5)
    {
      v8 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  while (v9);
  if (v8 != &v6[2 * v7] && *v8 == v5)
  {
    v15 = v8[1];
    if (v15)
    {
      return v15;
    }
  }

LABEL_23:
  v17 = *(v3 + 24);
  v18 = *(a1 + 48);
  {
    v23 = v18;
    sub_100299B7C();
    v18 = v23;
  }

  v19 = v4[231];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

uint64_t sub_10009326C()
{
  {
    sub_100299C10();
  }

  return llvm::getTypeName<mlir::BytecodeOpInterface>(void)::Name;
}

const char *sub_1000932B4()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::BytecodeOpInterface]";
  v6 = 87;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t sub_100093334(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    LODWORD(v3) = -348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)));
    v5 = v2 - 1;
    v6 = v3 & (v2 - 1);
    v7 = *a1 + 16 * v6;
    v8 = *v7;
    if (*a2 == *v7)
    {
      return v7 + 8;
    }

    v11 = 0;
    v12 = 1;
    while (v8 != -4096)
    {
      if (v11)
      {
        v13 = 0;
      }

      else
      {
        v13 = v8 == -8192;
      }

      if (v13)
      {
        v11 = v7;
      }

      v14 = v6 + v12++;
      v6 = v14 & v5;
      v7 = *a1 + 16 * (v14 & v5);
      v8 = *v7;
      if (*a2 == *v7)
      {
        return v7 + 8;
      }
    }

    if (v11)
    {
      v7 = v11;
    }
  }

  else
  {
    v7 = 0;
  }

  v17 = v7;
  v10 = *(a1 + 8);
  if (4 * v10 + 4 >= 3 * v2)
  {
    v15 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v10 - *(a1 + 12) <= v2 >> 3)
  {
    v15 = a2;
LABEL_24:
    v16 = a1;
    sub_1000934F0(a1, v2);
    sub_100083518(v16, v15, &v17);
    a1 = v16;
    a2 = v15;
    v7 = v17;
    ++*(v16 + 8);
    if (*v7 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v10 + 1;
  if (*v7 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v7 = *a2;
  *(v7 + 8) = 0;
  return v7 + 8;
}

void sub_1000934F0(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  buffer = llvm::allocate_buffer((16 * v8), 8uLL);
  v10 = buffer;
  *a1 = buffer;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &buffer[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = buffer + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -4096;
        *v13 = -4096;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &buffer[2 * v11];
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != v15);
      }
    }

    if (v3)
    {
      v16 = 0;
      v17 = v4;
      do
      {
        v24 = *v17;
        if ((*v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = 0x9DDFEA08EB382D69 * ((8 * *v17 - 0xAE502812AA7333) ^ HIDWORD(*v17));
          v26 = 0x9DDFEA08EB382D69 * (HIDWORD(v24) ^ (v25 >> 47) ^ v25);
          LODWORD(v25) = -348639895 * ((v26 >> 47) ^ v26);
          v27 = *(a1 + 16) - 1;
          v28 = v27 & v25;
          v23 = &buffer[2 * v28];
          v29 = *v23;
          if (v24 != *v23)
          {
            v30 = 0;
            v31 = 1;
            while (v29 != -4096)
            {
              if (v30)
              {
                v32 = 0;
              }

              else
              {
                v32 = v29 == -8192;
              }

              if (v32)
              {
                v30 = v23;
              }

              v33 = v28 + v31++;
              v28 = v33 & v27;
              v23 = &buffer[2 * (v33 & v27)];
              v29 = *v23;
              if (v24 == *v23)
              {
                goto LABEL_24;
              }
            }

            if (v30)
            {
              v23 = v30;
            }
          }

LABEL_24:
          *v23 = v24;
          *(v23 + 2) = *(v17 + 2);
          *(a1 + 8) = ++v16;
        }

        v17 = (v17 + 16);
      }

      while (v17 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3), 8uLL);
  }

  else
  {
    *(a1 + 8) = 0;
    v18 = *(a1 + 16);
    if (v18)
    {
      if (((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_19;
      }

      v19 = ((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &buffer[2 * (v19 & 0x1FFFFFFFFFFFFFFELL)];
      v20 = buffer + 2;
      v21 = v19 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v20 - 2) = -4096;
        *v20 = -4096;
        v20 += 4;
        v21 -= 2;
      }

      while (v21);
      if (v19 != (v19 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_19:
        v22 = &buffer[2 * v18];
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != v22);
      }
    }
  }
}

unint64_t sub_100093748(unint64_t result, int *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 4;
    if (v9 > 2)
    {
      break;
    }

    if (v9 < 2)
    {
      return result;
    }

    if (v9 == 2)
    {
      v82 = *(a2 - 1);
      v83 = *(v8 + 8);
      if (v82 > v83)
      {
        v84 = *v8;
        *v8 = *(a2 - 4);
        *(a2 - 4) = v84;
        *(v8 + 8) = v82;
        *(a2 - 1) = v83;
      }

      return result;
    }

LABEL_10:
    if (v9 <= 23)
    {
      v95 = (v8 + 16);
      v97 = v8 == a2 || v95 == a2;
      if (a4)
      {
        if (!v97)
        {
          v98 = 0;
          v99 = v8;
          do
          {
            v101 = *(v99 + 3);
            v102 = *(v99 + 1);
            v99 = v95;
            if (v101 > v102)
            {
              v103 = *v95;
              v104 = v98;
              do
              {
                v105 = v8 + v104;
                *(v105 + 16) = *(v8 + v104);
                *(v105 + 24) = *(v8 + v104 + 8);
                if (!v104)
                {
                  v100 = v8;
                  goto LABEL_126;
                }

                v104 -= 16;
              }

              while (v101 > *(v105 - 8));
              v100 = v8 + v104 + 16;
LABEL_126:
              *v100 = v103;
              *(v100 + 8) = v101;
            }

            v95 = v99 + 4;
            v98 += 16;
          }

          while (v99 + 4 != a2);
        }
      }

      else if (!v97)
      {
        v142 = (v8 + 24);
        do
        {
          v143 = *(v7 + 24);
          v144 = *(v7 + 8);
          v7 = v95;
          if (v143 > v144)
          {
            v145 = *v95;
            v146 = v142;
            do
            {
              v147 = v146;
              *(v146 - 2) = *(v146 - 6);
              v148 = *(v146 - 2);
              v146 -= 2;
              *v147 = v148;
            }

            while (v143 > *(v147 - 4));
            *(v146 - 2) = v145;
            *v146 = v143;
          }

          v95 = (v7 + 16);
          v142 += 2;
        }

        while ((v7 + 16) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v106 = (v9 - 2) >> 1;
        v107 = v106;
        do
        {
          if (v106 >= v107)
          {
            v109 = (2 * (v107 & 0xFFFFFFFFFFFFFFFLL)) | 1;
            v110 = v8 + 16 * v109;
            if (2 * (v107 & 0xFFFFFFFFFFFFFFFLL) + 2 < v9)
            {
              v108 = *(v110 + 8) > *(v110 + 24);
              v110 += 16 * v108;
              if (v108)
              {
                v109 = 2 * (v107 & 0xFFFFFFFFFFFFFFFLL) + 2;
              }
            }

            v111 = v8 + 16 * v107;
            v112 = *(v110 + 8);
            v113 = *(v111 + 8);
            if (v112 <= v113)
            {
              v114 = *v111;
              do
              {
                v115 = v111;
                v111 = v110;
                *v115 = *v110;
                *(v115 + 8) = v112;
                if (v106 < v109)
                {
                  break;
                }

                v116 = (2 * v109) | 1;
                v110 = v8 + 16 * v116;
                v117 = 2 * v109 + 2;
                if (v117 < v9)
                {
                  result = *(v110 + 24);
                  v108 = *(v110 + 8) > result;
                  v110 += 16 * v108;
                  if (v108)
                  {
                    v116 = v117;
                  }
                }

                v112 = *(v110 + 8);
                v109 = v116;
              }

              while (v112 <= v113);
              *v111 = v114;
              *(v111 + 8) = v113;
            }
          }

          v108 = v107-- <= 0;
        }

        while (!v108);
        do
        {
          v118 = 0;
          v119 = *v8;
          v120 = *(v8 + 8);
          v121 = v8;
          do
          {
            v125 = v121 + 16 * v118;
            v124 = v125 + 16;
            v126 = (2 * v118) | 1;
            v118 = 2 * v118 + 2;
            if (v118 < v9)
            {
              v122 = *(v125 + 24);
              result = *(v125 + 40);
              v123 = v125 + 32;
              if (v122 <= result)
              {
                v118 = v126;
              }

              else
              {
                v124 = v123;
              }
            }

            else
            {
              v118 = v126;
            }

            *v121 = *v124;
            *(v121 + 8) = *(v124 + 8);
            v121 = v124;
          }

          while (v118 <= ((v9 - 2) >> 1));
          if (v124 == a2 - 4)
          {
            *v124 = v119;
            *(v124 + 8) = v120;
          }

          else
          {
            *v124 = *(a2 - 4);
            *(v124 + 8) = *(a2 - 1);
            *(a2 - 4) = v119;
            *(a2 - 1) = v120;
            v127 = (v124 - v8 + 16) >> 4;
            v108 = v127 < 2;
            v128 = v127 - 2;
            if (!v108)
            {
              v129 = v128 >> 1;
              v130 = v8 + 16 * (v128 >> 1);
              v131 = *(v130 + 8);
              v132 = *(v124 + 8);
              if (v131 > v132)
              {
                v133 = *v124;
                do
                {
                  v134 = v124;
                  v124 = v130;
                  *v134 = *v130;
                  *(v134 + 8) = v131;
                  if (!v129)
                  {
                    break;
                  }

                  v129 = (v129 - 1) >> 1;
                  v130 = v8 + 16 * v129;
                  v131 = *(v130 + 8);
                }

                while (v131 > v132);
                *v124 = v133;
                *(v124 + 8) = v132;
              }
            }
          }

          a2 -= 4;
          v108 = v9-- <= 2;
        }

        while (!v108);
      }

      return result;
    }

    v10 = v8 + 16 * (v9 >> 1);
    v11 = *(a2 - 1);
    if (v9 < 0x81)
    {
      v15 = *(v8 + 8);
      v16 = *(v10 + 8);
      if (v15 > v16)
      {
        v17 = *v10;
        if (v11 > v15)
        {
          *v10 = *(a2 - 4);
          *(a2 - 4) = v17;
          *(v10 + 8) = v11;
          goto LABEL_37;
        }

        *v10 = *v8;
        *v8 = v17;
        *(v10 + 8) = v15;
        *(v8 + 8) = v16;
        v37 = *(a2 - 1);
        if (v37 > v16)
        {
          *v8 = *(a2 - 4);
          *(a2 - 4) = v17;
          *(v8 + 8) = v37;
LABEL_37:
          *(a2 - 1) = v16;
        }

LABEL_38:
        --a3;
        v26 = *v8;
        if ((a4 & 1) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_39;
      }

      if (v11 <= v15)
      {
        goto LABEL_38;
      }

      v22 = *v8;
      *v8 = *(a2 - 4);
      *(a2 - 4) = v22;
      *(v8 + 8) = v11;
      *(a2 - 1) = v15;
      v23 = *(v8 + 8);
      v24 = *(v10 + 8);
      if (v23 <= v24)
      {
        goto LABEL_38;
      }

      v25 = *v10;
      *v10 = *v8;
      *v8 = v25;
      *(v10 + 8) = v23;
      *(v8 + 8) = v24;
      --a3;
      v26 = *v8;
      if ((a4 & 1) == 0)
      {
        goto LABEL_63;
      }

LABEL_39:
      v38 = *(v8 + 8);
LABEL_64:
      v57 = 0;
      do
      {
        v58 = *(v8 + v57 + 24);
        v57 += 16;
      }

      while (v58 > v38);
      v59 = v8 + v57;
      v60 = a2;
      if (v57 == 16)
      {
        v63 = a2;
        while (v59 < v63)
        {
          v61 = v63 - 4;
          v64 = *(v63 - 1);
          v63 -= 4;
          if (v64 > v38)
          {
            goto LABEL_72;
          }
        }

        v61 = v63;
        v8 = v59;
      }

      else
      {
        do
        {
          v61 = v60 - 4;
          v62 = *(v60 - 1);
          v60 -= 4;
        }

        while (v62 <= v38);
LABEL_72:
        v8 = v59;
        if (v59 < v61)
        {
          v65 = v61;
          do
          {
            v66 = *v8;
            *v8 = *v65;
            *v65 = v66;
            v67 = *(v8 + 8);
            *(v8 + 8) = *(v65 + 8);
            *(v65 + 8) = v67;
            do
            {
              v68 = *(v8 + 24);
              v8 += 16;
            }

            while (v68 > v38);
            do
            {
              v69 = *(v65 - 8);
              v65 -= 16;
            }

            while (v69 <= v38);
          }

          while (v8 < v65);
        }
      }

      if (v8 - 16 != v7)
      {
        *v7 = *(v8 - 16);
        *(v7 + 8) = *(v8 - 8);
      }

      *(v8 - 16) = v26;
      *(v8 - 8) = v38;
      if (v59 < v61)
      {
        goto LABEL_83;
      }

      v70 = sub_100094574(v7, (v8 - 16));
      result = sub_100094574(v8, a2);
      if (result)
      {
        a2 = (v8 - 16);
        if (!v70)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v70)
      {
LABEL_83:
        result = sub_100093748(v7, v8 - 16, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v12 = *(v10 + 8);
      v13 = *(v8 + 8);
      if (v12 <= v13)
      {
        if (v11 > v12)
        {
          v18 = *v10;
          *v10 = *(a2 - 4);
          *(a2 - 4) = v18;
          *(v10 + 8) = v11;
          *(a2 - 1) = v12;
          v19 = *(v10 + 8);
          v20 = *(v8 + 8);
          if (v19 > v20)
          {
            v21 = *v8;
            *v8 = *v10;
            *v10 = v21;
            *(v8 + 8) = v19;
            *(v10 + 8) = v20;
          }
        }
      }

      else
      {
        v14 = *v8;
        if (v11 <= v12)
        {
          *v8 = *v10;
          *v10 = v14;
          *(v8 + 8) = v12;
          *(v10 + 8) = v13;
          v27 = *(a2 - 1);
          if (v27 <= v13)
          {
            goto LABEL_29;
          }

          *v10 = *(a2 - 4);
          *(a2 - 4) = v14;
          *(v10 + 8) = v27;
        }

        else
        {
          *v8 = *(a2 - 4);
          *(a2 - 4) = v14;
          *(v8 + 8) = v11;
        }

        *(a2 - 1) = v13;
      }

LABEL_29:
      v28 = (v10 - 16);
      v29 = *(v10 - 8);
      v30 = *(v8 + 24);
      v31 = *(a2 - 3);
      if (v29 <= v30)
      {
        if (v31 > v29)
        {
          v33 = *v28;
          *v28 = *(a2 - 8);
          *(a2 - 8) = v33;
          *(v10 - 8) = v31;
          *(a2 - 3) = v29;
          v34 = *(v10 - 8);
          v35 = *(v8 + 24);
          if (v34 > v35)
          {
            v36 = *(v8 + 16);
            *(v8 + 16) = *v28;
            *v28 = v36;
            *(v8 + 24) = v34;
            *(v10 - 8) = v35;
          }
        }
      }

      else
      {
        v32 = *(v8 + 16);
        if (v31 <= v29)
        {
          *(v8 + 16) = *v28;
          *v28 = v32;
          *(v8 + 24) = v29;
          *(v10 - 8) = v30;
          v39 = *(a2 - 3);
          if (v39 <= v30)
          {
            goto LABEL_43;
          }

          *v28 = *(a2 - 8);
          *(a2 - 8) = v32;
          *(v10 - 8) = v39;
        }

        else
        {
          *(v8 + 16) = *(a2 - 8);
          *(a2 - 8) = v32;
          *(v8 + 24) = v31;
        }

        *(a2 - 3) = v30;
      }

LABEL_43:
      v40 = *(v10 + 24);
      v41 = *(v8 + 40);
      v42 = *(a2 - 5);
      if (v40 <= v41)
      {
        if (v42 > v40)
        {
          v44 = *(v10 + 16);
          *(v10 + 16) = *(a2 - 12);
          *(a2 - 12) = v44;
          *(v10 + 24) = v42;
          *(a2 - 5) = v40;
          v45 = *(v10 + 24);
          v46 = *(v8 + 40);
          if (v45 > v46)
          {
            v47 = *(v8 + 32);
            *(v8 + 32) = *(v10 + 16);
            *(v10 + 16) = v47;
            *(v8 + 40) = v45;
            *(v10 + 24) = v46;
          }
        }
      }

      else
      {
        v43 = *(v8 + 32);
        if (v42 <= v40)
        {
          *(v8 + 32) = *(v10 + 16);
          *(v10 + 16) = v43;
          *(v8 + 40) = v40;
          *(v10 + 24) = v41;
          v48 = *(a2 - 5);
          if (v48 <= v41)
          {
            goto LABEL_52;
          }

          *(v10 + 16) = *(a2 - 12);
          *(a2 - 12) = v43;
          *(v10 + 24) = v48;
        }

        else
        {
          *(v8 + 32) = *(a2 - 12);
          *(a2 - 12) = v43;
          *(v8 + 40) = v42;
        }

        *(a2 - 5) = v41;
      }

LABEL_52:
      v49 = *(v10 + 8);
      v50 = *(v10 - 8);
      v51 = *(v10 + 24);
      if (v49 <= v50)
      {
        v52 = *v10;
        if (v51 <= v49)
        {
          v50 = *(v10 + 8);
        }

        else
        {
          v53 = *(v10 + 16);
          *v10 = v53;
          *(v10 + 16) = v52;
          *(v10 + 8) = v51;
          *(v10 + 24) = v49;
          if (v51 <= v50)
          {
            v50 = v51;
            v52 = v53;
          }

          else
          {
            v52 = *v28;
            *v28 = v53;
            *v10 = v52;
            *(v10 - 8) = v51;
            *(v10 + 8) = v50;
          }
        }
      }

      else
      {
        v52 = *v28;
        if (v51 <= v49)
        {
          *v28 = *v10;
          *v10 = v52;
          *(v10 - 8) = v49;
          *(v10 + 8) = v50;
          if (v51 > v50)
          {
            v54 = *(v10 + 16);
            *v10 = v54;
            *(v10 + 16) = v52;
            *(v10 + 8) = v51;
            *(v10 + 24) = v50;
            v50 = v51;
            v52 = v54;
          }
        }

        else
        {
          *v28 = *(v10 + 16);
          *(v10 + 16) = v52;
          *(v10 - 8) = v51;
          *(v10 + 24) = v50;
          v52 = *v10;
          v50 = v49;
        }
      }

      v55 = *v8;
      *v8 = v52;
      *v10 = v55;
      v56 = *(v8 + 8);
      *(v8 + 8) = v50;
      *(v10 + 8) = v56;
      --a3;
      v26 = *v8;
      if (a4)
      {
        goto LABEL_39;
      }

LABEL_63:
      v38 = *(v8 + 8);
      if (*(v8 - 8) > v38)
      {
        goto LABEL_64;
      }

      if (v38 <= *(a2 - 1))
      {
        v73 = v8 + 16;
        do
        {
          v8 = v73;
          if (v73 >= a2)
          {
            break;
          }

          v74 = *(v73 + 8);
          v73 += 16;
        }

        while (v38 <= v74);
      }

      else
      {
        v71 = v8;
        do
        {
          v8 = v71 + 16;
          v72 = *(v71 + 24);
          v71 += 16;
        }

        while (v38 <= v72);
      }

      v75 = a2;
      if (v8 < a2)
      {
        v76 = a2;
        do
        {
          v75 = v76 - 4;
          v77 = *(v76 - 1);
          v76 -= 4;
        }

        while (v38 > v77);
      }

      while (v8 < v75)
      {
        v78 = *v8;
        *v8 = *v75;
        *v75 = v78;
        v79 = *(v8 + 8);
        *(v8 + 8) = *(v75 + 1);
        *(v75 + 1) = v79;
        do
        {
          v80 = *(v8 + 24);
          v8 += 16;
        }

        while (v38 <= v80);
        do
        {
          v81 = *(v75 - 1);
          v75 -= 4;
        }

        while (v38 > v81);
      }

      if (v8 - 16 != v7)
      {
        *v7 = *(v8 - 16);
        *(v7 + 8) = *(v8 - 8);
      }

      a4 = 0;
      *(v8 - 16) = v26;
      *(v8 - 8) = v38;
    }
  }

  if (v9 != 3)
  {
    if (v9 == 4)
    {
      v89 = (v8 + 24);
      v90 = *(v8 + 24);
      v92 = (v8 + 8);
      v91 = *(v8 + 8);
      v93 = *(v8 + 40);
      if (v90 <= v91)
      {
        if (v93 > v90)
        {
          v139 = *(v8 + 16);
          v140 = *(v8 + 32);
          *(v8 + 16) = v140;
          *(v8 + 32) = v139;
          *(v8 + 24) = v93;
          *(v8 + 40) = v90;
          if (v93 > v91)
          {
            v141 = *v8;
            *v8 = v140;
            *(v8 + 16) = v141;
            goto LABEL_184;
          }

LABEL_185:
          v93 = v90;
        }
      }

      else
      {
        v94 = *v8;
        if (v93 > v90)
        {
          *v8 = *(v8 + 32);
          *(v8 + 32) = v94;
          goto LABEL_183;
        }

        *v8 = *(v8 + 16);
        *(v8 + 16) = v94;
        *(v8 + 8) = v90;
        *(v8 + 24) = v91;
        if (v93 > v91)
        {
          *(v8 + 16) = *(v8 + 32);
          *(v8 + 32) = v94;
          v92 = (v8 + 24);
LABEL_183:
          v89 = (v8 + 40);
          v90 = v91;
LABEL_184:
          *v92 = v93;
          *v89 = v91;
          goto LABEL_185;
        }
      }

      v150 = *(a2 - 1);
      if (v150 > v93)
      {
        v151 = *(v8 + 32);
        *(v8 + 32) = *(a2 - 4);
        *(a2 - 4) = v151;
        *(v8 + 40) = v150;
        *(a2 - 1) = v93;
        v152 = *(v8 + 40);
        v153 = *(v8 + 24);
        if (v152 > v153)
        {
          v154 = *(v8 + 16);
          v155 = *(v8 + 32);
          *(v8 + 16) = v155;
          *(v8 + 32) = v154;
          *(v8 + 24) = v152;
          *(v8 + 40) = v153;
          v156 = *(v8 + 8);
          if (v152 > v156)
          {
            v157 = *v8;
            *v8 = v155;
            *(v8 + 16) = v157;
            *(v8 + 8) = v152;
            *(v8 + 24) = v156;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {

      return sub_100094380(v8, (v8 + 16), (v8 + 32), (v8 + 48), a2 - 4);
    }

    goto LABEL_10;
  }

  v85 = *(v8 + 24);
  v86 = *(v8 + 8);
  v87 = *(a2 - 1);
  if (v85 <= v86)
  {
    if (v87 > v85)
    {
      v135 = *(v8 + 16);
      *(v8 + 16) = *(a2 - 4);
      *(a2 - 4) = v135;
      *(v8 + 24) = v87;
      *(a2 - 1) = v85;
      v136 = *(v8 + 24);
      v137 = *(v8 + 8);
      if (v136 > v137)
      {
        v138 = *v8;
        *v8 = *(v8 + 16);
        *(v8 + 16) = v138;
        *(v8 + 8) = v136;
        *(v8 + 24) = v137;
      }
    }
  }

  else
  {
    v88 = *v8;
    if (v87 <= v85)
    {
      *v8 = *(v8 + 16);
      *(v8 + 16) = v88;
      *(v8 + 8) = v85;
      *(v8 + 24) = v86;
      v149 = *(a2 - 1);
      if (v149 <= v86)
      {
        return result;
      }

      *(v8 + 16) = *(a2 - 4);
      *(a2 - 4) = v88;
      *(v8 + 24) = v149;
    }

    else
    {
      *v8 = *(a2 - 4);
      *(a2 - 4) = v88;
      *(v8 + 8) = v87;
    }

    *(a2 - 1) = v86;
  }

  return result;
}

int *sub_100094380(int *result, int *a2, int *a3, int *a4, int *a5)
{
  v5 = *(a2 + 1);
  v6 = *(result + 1);
  v7 = *(a3 + 1);
  if (v5 > v6)
  {
    v8 = *result;
    if (v7 <= v5)
    {
      *result = *a2;
      *a2 = v8;
      *(result + 1) = v5;
      *(a2 + 1) = v6;
      v5 = *(a3 + 1);
      if (v5 <= v6)
      {
        goto LABEL_11;
      }

      *a2 = *a3;
      *a3 = v8;
      *(a2 + 1) = v5;
    }

    else
    {
      *result = *a3;
      *a3 = v8;
      *(result + 1) = v7;
    }

    *(a3 + 1) = v6;
    v5 = v6;
LABEL_11:
    v13 = *(a4 + 1);
    if (v13 <= v5)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (v7 <= v5)
  {
    v5 = *(a3 + 1);
    v13 = *(a4 + 1);
    if (v13 <= v7)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v9 = *a2;
    *a2 = *a3;
    *a3 = v9;
    *(a2 + 1) = v7;
    *(a3 + 1) = v5;
    v10 = *(a2 + 1);
    v11 = *(result + 1);
    if (v10 <= v11)
    {
      goto LABEL_11;
    }

    v12 = *result;
    *result = *a2;
    *a2 = v12;
    *(result + 1) = v10;
    *(a2 + 1) = v11;
    v5 = *(a3 + 1);
    v13 = *(a4 + 1);
    if (v13 <= v5)
    {
      goto LABEL_16;
    }
  }

LABEL_12:
  v14 = *a3;
  *a3 = *a4;
  *a4 = v14;
  *(a3 + 1) = v13;
  *(a4 + 1) = v5;
  v15 = *(a3 + 1);
  v16 = *(a2 + 1);
  if (v15 > v16)
  {
    v17 = *a2;
    *a2 = *a3;
    *a3 = v17;
    *(a2 + 1) = v15;
    *(a3 + 1) = v16;
    v18 = *(a2 + 1);
    v19 = *(result + 1);
    if (v18 > v19)
    {
      v20 = *result;
      *result = *a2;
      *a2 = v20;
      *(result + 1) = v18;
      *(a2 + 1) = v19;
    }
  }

LABEL_16:
  v21 = *(a5 + 1);
  v22 = *(a4 + 1);
  if (v21 > v22)
  {
    v23 = *a4;
    *a4 = *a5;
    *a5 = v23;
    *(a4 + 1) = v21;
    *(a5 + 1) = v22;
    v24 = *(a4 + 1);
    v25 = *(a3 + 1);
    if (v24 > v25)
    {
      v26 = *a3;
      *a3 = *a4;
      *a4 = v26;
      *(a3 + 1) = v24;
      *(a4 + 1) = v25;
      v27 = *(a3 + 1);
      v28 = *(a2 + 1);
      if (v27 > v28)
      {
        v29 = *a2;
        *a2 = *a3;
        *a3 = v29;
        *(a2 + 1) = v27;
        *(a3 + 1) = v28;
        v30 = *(a2 + 1);
        v31 = *(result + 1);
        if (v30 > v31)
        {
          v32 = *result;
          *result = *a2;
          *a2 = v32;
          *(result + 1) = v30;
          *(a2 + 1) = v31;
        }
      }
    }
  }

  return result;
}

BOOL sub_100094574(uint64_t a1, int *a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v7 = *(a1 + 24);
      v8 = *(a1 + 8);
      v9 = *(a2 - 1);
      if (v7 <= v8)
      {
        if (v9 <= v7)
        {
          return 1;
        }

        v23 = *(a1 + 16);
        *(a1 + 16) = *(a2 - 4);
        *(a2 - 4) = v23;
        *(a1 + 24) = v9;
        *(a2 - 1) = v7;
        v24 = *(a1 + 24);
        v25 = *(a1 + 8);
        if (v24 <= v25)
        {
          return 1;
        }

        v26 = *a1;
        *a1 = *(a1 + 16);
        *(a1 + 16) = v26;
        *(a1 + 8) = v24;
        *(a1 + 24) = v25;
        return 1;
      }

      else
      {
        v10 = *a1;
        if (v9 <= v7)
        {
          *a1 = *(a1 + 16);
          *(a1 + 16) = v10;
          *(a1 + 8) = v7;
          *(a1 + 24) = v8;
          v33 = *(a2 - 1);
          if (v33 <= v8)
          {
            return 1;
          }

          *(a1 + 16) = *(a2 - 4);
          *(a2 - 4) = v10;
          *(a1 + 24) = v33;
          *(a2 - 1) = v8;
          return 1;
        }

        else
        {
          *a1 = *(a2 - 4);
          *(a2 - 4) = v10;
          *(a1 + 8) = v9;
          *(a2 - 1) = v8;
          return 1;
        }
      }
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        sub_100094380(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2 - 4);
        return 1;
      }

LABEL_14:
      v11 = *(a1 + 24);
      v13 = (a1 + 8);
      v12 = *(a1 + 8);
      v15 = (a1 + 40);
      v14 = *(a1 + 40);
      if (v11 <= v12)
      {
        if (v14 <= v11)
        {
          goto LABEL_34;
        }

        v27 = *(a1 + 16);
        v28 = *(a1 + 32);
        *(a1 + 16) = v28;
        *(a1 + 32) = v27;
        *(a1 + 24) = v14;
        *(a1 + 40) = v11;
        if (v14 <= v12)
        {
          goto LABEL_34;
        }

        v29 = *a1;
        *a1 = v28;
        *(a1 + 16) = v29;
        v15 = (a1 + 24);
      }

      else
      {
        v16 = *a1;
        if (v14 <= v11)
        {
          *a1 = *(a1 + 16);
          *(a1 + 16) = v16;
          *(a1 + 8) = v11;
          *(a1 + 24) = v12;
          if (v14 <= v12)
          {
LABEL_34:
            v34 = (a1 + 48);
            if ((a1 + 48) == a2)
            {
              return 1;
            }

            v35 = 0;
            v36 = 0;
            v37 = (a1 + 32);
            while (1)
            {
              v38 = *(v34 + 1);
              if (v38 > *(v37 + 1))
              {
                break;
              }

LABEL_43:
              v37 = v34;
              v35 += 16;
              v34 += 4;
              if (v34 == a2)
              {
                return 1;
              }
            }

            v39 = *v34;
            v40 = v35;
            do
            {
              v41 = a1 + v40;
              *(v41 + 48) = *(a1 + v40 + 32);
              *(v41 + 56) = *(a1 + v40 + 40);
              if (v40 == -32)
              {
                *a1 = v39;
                *(a1 + 8) = v38;
                if (++v36 != 8)
                {
                  goto LABEL_43;
                }

                return v34 + 4 == a2;
              }

              v40 -= 16;
            }

            while (v38 > *(v41 + 24));
            v42 = a1 + v40;
            *(v42 + 48) = v39;
            *(v42 + 56) = v38;
            if (++v36 != 8)
            {
              goto LABEL_43;
            }

            return v34 + 4 == a2;
          }

          *(a1 + 16) = *(a1 + 32);
          *(a1 + 32) = v16;
          v13 = (a1 + 24);
        }

        else
        {
          *a1 = *(a1 + 32);
          *(a1 + 32) = v16;
        }
      }

      *v13 = v14;
      *v15 = v12;
      goto LABEL_34;
    }

    v17 = (a1 + 24);
    v18 = *(a1 + 24);
    v20 = (a1 + 8);
    v19 = *(a1 + 8);
    v21 = *(a1 + 40);
    if (v18 <= v19)
    {
      if (v21 <= v18)
      {
        goto LABEL_50;
      }

      v30 = *(a1 + 16);
      v31 = *(a1 + 32);
      *(a1 + 16) = v31;
      *(a1 + 32) = v30;
      *(a1 + 24) = v21;
      *(a1 + 40) = v18;
      if (v21 <= v19)
      {
        goto LABEL_49;
      }

      v32 = *a1;
      *a1 = v31;
      *(a1 + 16) = v32;
    }

    else
    {
      v22 = *a1;
      if (v21 <= v18)
      {
        *a1 = *(a1 + 16);
        *(a1 + 16) = v22;
        *(a1 + 8) = v18;
        *(a1 + 24) = v19;
        if (v21 <= v19)
        {
          goto LABEL_50;
        }

        *(a1 + 16) = *(a1 + 32);
        *(a1 + 32) = v22;
        v20 = (a1 + 24);
      }

      else
      {
        *a1 = *(a1 + 32);
        *(a1 + 32) = v22;
      }

      v17 = (a1 + 40);
      v18 = v19;
    }

    *v20 = v21;
    *v17 = v19;
LABEL_49:
    v21 = v18;
LABEL_50:
    v43 = *(a2 - 1);
    if (v43 <= v21)
    {
      return 1;
    }

    v44 = *(a1 + 32);
    *(a1 + 32) = *(a2 - 4);
    *(a2 - 4) = v44;
    *(a1 + 40) = v43;
    *(a2 - 1) = v21;
    v45 = *(a1 + 40);
    v46 = *(a1 + 24);
    if (v45 <= v46)
    {
      return 1;
    }

    v47 = *(a1 + 16);
    v48 = *(a1 + 32);
    *(a1 + 16) = v48;
    *(a1 + 32) = v47;
    *(a1 + 24) = v45;
    *(a1 + 40) = v46;
    v49 = *(a1 + 8);
    if (v45 <= v49)
    {
      return 1;
    }

    v50 = *a1;
    *a1 = v48;
    *(a1 + 16) = v50;
    *(a1 + 8) = v45;
    *(a1 + 24) = v49;
    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
    goto LABEL_14;
  }

  v4 = *(a2 - 1);
  v5 = *(a1 + 8);
  if (v4 <= v5)
  {
    return 1;
  }

  v6 = *a1;
  *a1 = *(a2 - 4);
  *(a2 - 4) = v6;
  *(a1 + 8) = v4;
  *(a2 - 1) = v5;
  return 1;
}

uint64_t sub_100094980(uint64_t *a1, _DWORD *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (37 * *a2) & (v3 - 1);
    v7 = (*a1 + 72 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -2;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 72 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }
  }

  else
  {
    v7 = 0;
    result = 0;
LABEL_5:
    *a3 = v7;
  }

  return result;
}

void sub_100094A24(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  buffer = llvm::allocate_buffer((72 * v8), 8uLL);
  *a1 = buffer;
  if (!v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (!v11)
    {
      return;
    }

    v12 = 72 * v11 - 72;
    if (v12 >= 0x48)
    {
      v14 = v12 / 0x48 + 1;
      v13 = &buffer[18 * (v14 & 0x7FFFFFFFFFFFFFELL)];
      v15 = buffer;
      v16 = v14 & 0x7FFFFFFFFFFFFFELL;
      do
      {
        *v15 = -1;
        v15[18] = -1;
        v15 += 36;
        v16 -= 2;
      }

      while (v16);
      if (v14 == (v14 & 0x7FFFFFFFFFFFFFELL))
      {
        return;
      }
    }

    else
    {
      v13 = buffer;
    }

    v17 = &buffer[18 * v11];
    do
    {
      *v13 = -1;
      v13 += 18;
    }

    while (v13 != v17);
    return;
  }

  v10 = 18 * v3;
  sub_100094B70(a1, v4, &v4[v10]);

  llvm::deallocate_buffer(v4, (v10 * 4), 8uLL);
}

void sub_100094B70(uint64_t a1, int *a2, int *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 72 * v6 - 72;
    if (v8 < 0x48)
    {
      v9 = *a1;
LABEL_7:
      v13 = &v7[18 * v6];
      do
      {
        *v9 = -1;
        v9 += 18;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x48 + 1;
    v9 = &v7[18 * (v10 & 0x7FFFFFFFFFFFFFELL)];
    v11 = *a1;
    v12 = v10 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v11 = -1;
      v11[18] = -1;
      v11 += 36;
      v12 -= 2;
    }

    while (v12);
    if (v10 != (v10 & 0x7FFFFFFFFFFFFFELL))
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  if (a2 != a3)
  {
    do
    {
      v14 = *v4;
      if (*v4 <= 0xFFFFFFFD)
      {
        v15 = *(a1 + 16) - 1;
        v16 = v15 & (37 * v14);
        v17 = *a1 + 72 * v16;
        v18 = *v17;
        if (v14 != *v17)
        {
          v20 = 0;
          v21 = 1;
          while (v18 != -1)
          {
            if (v20)
            {
              v22 = 0;
            }

            else
            {
              v22 = v18 == -2;
            }

            if (v22)
            {
              v20 = v17;
            }

            v23 = v16 + v21++;
            v16 = v23 & v15;
            v17 = *a1 + 72 * (v23 & v15);
            v18 = *v17;
            if (v14 == *v17)
            {
              goto LABEL_14;
            }
          }

          if (v20)
          {
            v17 = v20;
          }
        }

LABEL_14:
        *v17 = v14;
        *(v17 + 8) = v17 + 24;
        *(v17 + 16) = 0xC00000000;
        if (*(v4 + 4))
        {
          sub_100094D2C(v17 + 8, v4 + 1);
        }

        ++*(a1 + 8);
        v19 = v4[1];
        if (v19 != (v4 + 3))
        {
          free(v19);
        }
      }

      v4 += 9;
    }

    while (v4 != a3);
  }
}

uint64_t sub_100094D2C(uint64_t result, const void **a2)
{
  if (result != a2)
  {
    v3 = a2 + 2;
    v2 = *a2;
    if (*a2 != a2 + 2)
    {
      if (*result != result + 16)
      {
        v4 = result;
        v5 = a2;
        free(*result);
        a2 = v5;
        result = v4;
        v2 = *v5;
      }

      *result = v2;
      v6 = a2 + 1;
      *(result + 8) = a2[1];
      *a2 = v3;
      *(a2 + 3) = 0;
      goto LABEL_17;
    }

    v6 = a2 + 1;
    v7 = *(a2 + 2);
    v8 = *(result + 8);
    if (v8 >= v7)
    {
      if (v7)
      {
        v12 = result;
        memmove(*result, *a2, 4 * v7);
        result = v12;
      }

      *(result + 8) = v7;
      goto LABEL_17;
    }

    if (*(result + 12) >= v7)
    {
      if (v8)
      {
        v10 = result;
        v13 = a2;
        memmove(*result, *a2, 4 * v8);
        a2 = v13;
        v11 = *v6 - v8;
        if (!v11)
        {
LABEL_16:
          result = v10;
          *(v10 + 8) = v7;
LABEL_17:
          *v6 = 0;
          return result;
        }
      }

      else
      {
        v10 = result;
        v8 = 0;
        v11 = *v6;
        if (!*v6)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      *(result + 8) = 0;
      v9 = a2;
      v10 = result;
      llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 16), v7, 4);
      a2 = v9;
      v8 = 0;
      v11 = *v6;
      if (!*v6)
      {
        goto LABEL_16;
      }
    }

    memcpy((*v10 + 4 * v8), *a2 + 4 * v8, 4 * v11);
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_100094EA4(void *a1, void *a2, uint64_t *a3)
{
  v3 = 1;
  if (a1 == a2)
  {
    return v3;
  }

  v4 = a1;
  v188 = a3;
  while (1)
  {
    v5 = a3[1];
    if (*v4 != v4)
    {
      break;
    }

    v179 = v5[1];
    v178 = v5[2];
    if (v179 >= v178)
    {
      v181 = *v5;
      v182 = &v179[-*v5];
      v183 = (v182 + 1);
      if ((v182 + 1) < 0)
      {
LABEL_304:
        sub_100003FC0();
      }

      v184 = v178 - v181;
      if (2 * v184 > v183)
      {
        v183 = 2 * v184;
      }

      if (v184 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v185 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v185 = v183;
      }

      if (v185)
      {
        operator new();
      }

      v186 = &v179[-*v5];
      *v182 = 1;
      v180 = v182 + 1;
      memcpy(0, v181, v186);
      *v5 = 0;
      v5[1] = v182 + 1;
      v5[2] = 0;
      if (v181)
      {
        operator delete(v181);
      }
    }

    else
    {
      *v179 = 1;
      v180 = v179 + 1;
    }

    v5[1] = v180;
LABEL_300:
    v4 += 3;
    a3 = v188;
    if (v4 == a2)
    {
      return 1;
    }
  }

  v6 = *a3;
  v197[0] = v4;
  v7 = sub_100095E50(v6 + 944, v197);
  v8 = HIDWORD(*v7);
  sub_10008E700(v5, *v7);
  sub_10008E700(v5, v8);
  v9 = v4[1];
  if (v9 == v4)
  {
    goto LABEL_300;
  }

  v192 = v4;
  while (2)
  {
    if (v9)
    {
      v10 = v9 - 1;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10[6];
    v12 = v10[7];
    v13 = *(v6 + 936);
    v193 = v9;
    if (!v13)
    {
      v23 = (4 * *(v6 + 928) + 4);
      goto LABEL_269;
    }

    v14 = *(v6 + 920);
    v15 = v13 - 1;
    v16 = (v13 - 1) & ((v10 >> 4) ^ (v10 >> 9));
    v17 = v14 + 16 * v16;
    v18 = *v17;
    if (v10 != *v17)
    {
      v19 = 0;
      v20 = 1;
      while (v18 != -4096)
      {
        if (v19)
        {
          v21 = 0;
        }

        else
        {
          v21 = v18 == -8192;
        }

        if (v21)
        {
          v19 = v17;
        }

        v22 = v16 + v20++;
        v16 = v22 & v15;
        v17 = v14 + 16 * (v22 & v15);
        v18 = *v17;
        if (v10 == *v17)
        {
          goto LABEL_26;
        }
      }

      if (v19)
      {
        v17 = v19;
      }

      v168 = *(v6 + 928);
      if (4 * v168 + 4 >= 3 * v13)
      {
LABEL_269:
        v13 *= 2;
LABEL_270:
        sub_1000415A0(v6 + 920, v13);
        v169 = *(v6 + 936);
        if (v169)
        {
          v170 = *(v6 + 920);
          v171 = v169 - 1;
          v172 = (v169 - 1) & ((v10 >> 4) ^ (v10 >> 9));
          v17 = v170 + 16 * v172;
          v173 = *v17;
          if (v10 != *v17)
          {
            v174 = 0;
            v175 = 1;
            while (v173 != -4096)
            {
              if (v174)
              {
                v176 = 0;
              }

              else
              {
                v176 = v173 == -8192;
              }

              if (v176)
              {
                v174 = v17;
              }

              v177 = v172 + v175++;
              v172 = v177 & v171;
              v17 = v170 + 16 * (v177 & v171);
              v173 = *v17;
              if (v10 == *v17)
              {
                goto LABEL_282;
              }
            }

            if (v174)
            {
              v17 = v174;
            }
          }
        }

        else
        {
          v17 = 0;
        }

LABEL_282:
        ++*(v6 + 928);
        if (*v17 == -4096)
        {
          goto LABEL_25;
        }

LABEL_24:
        --*(v6 + 932);
        goto LABEL_25;
      }

      if (v13 + ~v168 - *(v6 + 932) <= v13 >> 3)
      {
        goto LABEL_270;
      }

      *(v6 + 928) = v168 + 1;
      if (*v17 != -4096)
      {
        goto LABEL_24;
      }

LABEL_25:
      *v17 = v10;
      *(v17 + 8) = 0;
    }

LABEL_26:
    v24 = *(v17 + 8);
    v25 = (v12 != v11) | (2 * v24);
    if (v24 > 0x3F)
    {
      sub_10008EC6C(v5, v25);
      if (v12 == v11)
      {
        goto LABEL_262;
      }
    }

    else
    {
      v26 = (2 * v25) | 1;
      v28 = v5[1];
      v27 = v5[2];
      if (v28 >= v27)
      {
        v194 = v10;
        v29 = *v5;
        v30 = &v28[-*v5];
        v31 = (v30 + 1);
        if ((v30 + 1) < 0)
        {
          goto LABEL_304;
        }

        v32 = v27 - v29;
        if (2 * v32 > v31)
        {
          v31 = 2 * v32;
        }

        if (v32 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v33 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v33 = v31;
        }

        if (v33)
        {
          operator new();
        }

        v34 = &v28[-*v5];
        *v30 = v26;
        v35 = v30 + 1;
        memcpy(0, v29, v34);
        *v5 = 0;
        v5[1] = v30 + 1;
        v5[2] = 0;
        if (v29)
        {
          operator delete(v29);
        }

        v10 = v194;
        v5[1] = v35;
        if (v12 == v11)
        {
          goto LABEL_262;
        }
      }

      else
      {
        *v28 = v26;
        v5[1] = v28 + 1;
        if (v12 == v11)
        {
          goto LABEL_262;
        }
      }
    }

    v195 = v10;
    v36 = (v12 - v11) >> 3;
    v189 = v11;
    v190 = v36;
    if (v36 > 0x7F)
    {
      sub_10008EC6C(v5, v36);
      goto LABEL_60;
    }

    v37 = (2 * ((v12 - v11) >> 3)) | 1;
    v39 = v5[1];
    v38 = v5[2];
    if (v39 < v38)
    {
      *v39 = v37;
      v5[1] = v39 + 1;
      goto LABEL_60;
    }

    v40 = *v5;
    v41 = &v39[-*v5];
    v42 = (v41 + 1);
    if ((v41 + 1) < 0)
    {
      goto LABEL_304;
    }

    v43 = v38 - v40;
    if (2 * v43 > v42)
    {
      v42 = 2 * v43;
    }

    if (v43 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v44 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v44 = v42;
    }

    if (v44)
    {
      operator new();
    }

    v45 = &v39[-*v5];
    *v41 = v37;
    memcpy(0, v40, v45);
    *v5 = 0;
    v5[1] = v41 + 1;
    v5[2] = 0;
    if (v40)
    {
      operator delete(v40);
    }

    v5[1] = v41 + 1;
LABEL_60:
    while (2)
    {
      v46 = *(*v11 + 32);
      v47 = *(*v11 + 8) & 0xFFFFFFFFFFFFFFF8;
      v48 = *(v6 + 112);
      v49 = *(v6 + 128);
      if (**(v6 + 984) < 4)
      {
        if (v49)
        {
          v58 = v49 - 1;
          v59 = ((v47 >> 4) ^ (v47 >> 9)) & (v49 - 1);
          v60 = (v48 + 16 * v59);
          v61 = *v60;
          if (*v60 == v47)
          {
            goto LABEL_98;
          }

          v62 = 0;
          v63 = 1;
          while (v61 != -4096)
          {
            if (v62)
            {
              v64 = 0;
            }

            else
            {
              v64 = v61 == -8192;
            }

            if (v64)
            {
              v62 = v60;
            }

            v65 = v59 + v63++;
            v59 = v65 & v58;
            v60 = (v48 + 16 * (v65 & v58));
            v61 = *v60;
            if (*v60 == v47)
            {
              goto LABEL_98;
            }
          }

          if (v62)
          {
            v60 = v62;
          }

          v131 = *(v6 + 120);
          if (4 * v131 + 4 < 3 * v49)
          {
            if (v49 + ~v131 - *(v6 + 124) > v49 >> 3)
            {
              *(v6 + 120) = v131 + 1;
              if (*v60 == -4096)
              {
LABEL_97:
                *v60 = v47;
                v60[1] = 0;
LABEL_98:
                v74 = *(v60[1] + 8);
                if (v74 > 0x7F)
                {
                  sub_10008EC6C(v5, v74);
                  v78 = *(v6 + 56);
                  if (v78)
                  {
                    goto LABEL_105;
                  }
                }

                else
                {
                  v75 = (2 * v74) | 1;
                  v77 = v5[1];
                  v76 = v5[2];
                  if (v77 < v76)
                  {
                    *v77 = v75;
                    v5[1] = v77 + 1;
                    v78 = *(v6 + 56);
                    if (!v78)
                    {
                      goto LABEL_101;
                    }

LABEL_105:
                    v81 = *(v6 + 40);
                    v82 = v78 - 1;
                    v83 = (v78 - 1) & ((v46 >> 4) ^ (v46 >> 9));
                    v79 = (v81 + 16 * v83);
                    v84 = *v79;
                    if (v46 == *v79)
                    {
                      goto LABEL_150;
                    }

                    v85 = 0;
                    v86 = 1;
                    while (v84 != -4096)
                    {
                      if (v85)
                      {
                        v87 = 0;
                      }

                      else
                      {
                        v87 = v84 == -8192;
                      }

                      if (v87)
                      {
                        v85 = v79;
                      }

                      v88 = v83 + v86++;
                      v83 = v88 & v82;
                      v79 = (v81 + 16 * (v88 & v82));
                      v84 = *v79;
                      if (v46 == *v79)
                      {
                        goto LABEL_150;
                      }
                    }

                    if (v85)
                    {
                      v79 = v85;
                    }

                    v80 = *(v6 + 48);
                    if (4 * v80 + 4 < 3 * v78)
                    {
                      goto LABEL_102;
                    }

                    goto LABEL_201;
                  }

                  v94 = *v5;
                  v95 = &v77[-*v5];
                  v96 = (v95 + 1);
                  if ((v95 + 1) < 0)
                  {
                    goto LABEL_304;
                  }

                  v97 = v76 - v94;
                  if (2 * v97 > v96)
                  {
                    v96 = 2 * v97;
                  }

                  if (v97 >= 0x3FFFFFFFFFFFFFFFLL)
                  {
                    v98 = 0x7FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v98 = v96;
                  }

                  if (v98)
                  {
                    operator new();
                  }

                  v120 = &v77[-*v5];
                  *v95 = v75;
                  memcpy(0, v94, v120);
                  *v5 = 0;
                  v5[1] = v95 + 1;
                  v5[2] = 0;
                  if (v94)
                  {
                    operator delete(v94);
                  }

                  v5[1] = v95 + 1;
                  v78 = *(v6 + 56);
                  if (v78)
                  {
                    goto LABEL_105;
                  }
                }

LABEL_101:
                v79 = 0;
                v80 = *(v6 + 48);
                if (4 * v80 + 4 < 3 * v78)
                {
LABEL_102:
                  if (v78 + ~v80 - *(v6 + 52) > v78 >> 3)
                  {
                    goto LABEL_147;
                  }

LABEL_202:
                  sub_100081B28(v6 + 40, v78);
                  v141 = *(v6 + 56);
                  if (!v141)
                  {
                    goto LABEL_228;
                  }

                  v142 = *(v6 + 40);
                  v143 = v141 - 1;
                  v144 = (v141 - 1) & ((v46 >> 4) ^ (v46 >> 9));
                  v79 = (v142 + 16 * v144);
                  v145 = *v79;
                  if (v46 != *v79)
                  {
                    v146 = 0;
                    v147 = 1;
                    while (v145 != -4096)
                    {
                      if (v146)
                      {
                        v148 = 0;
                      }

                      else
                      {
                        v148 = v145 == -8192;
                      }

                      if (v148)
                      {
                        v146 = v79;
                      }

                      v149 = v144 + v147++;
                      v144 = v149 & v143;
                      v79 = (v142 + 16 * (v149 & v143));
                      v145 = *v79;
                      if (v46 == *v79)
                      {
                        goto LABEL_229;
                      }
                    }

LABEL_237:
                    if (v146)
                    {
                      v79 = v146;
                    }
                  }

LABEL_229:
                  ++*(v6 + 48);
                  if (*v79 != -4096)
                  {
                    goto LABEL_148;
                  }

                  goto LABEL_149;
                }

LABEL_201:
                v78 *= 2;
                goto LABEL_202;
              }

LABEL_96:
              --*(v6 + 124);
              goto LABEL_97;
            }

LABEL_187:
            sub_100081B28(v6 + 112, v49);
            v132 = *(v6 + 128);
            if (v132)
            {
              v133 = *(v6 + 112);
              v134 = v132 - 1;
              v135 = (v132 - 1) & ((v47 >> 4) ^ (v47 >> 9));
              v60 = (v133 + 16 * v135);
              v136 = *v60;
              if (*v60 != v47)
              {
                v137 = 0;
                v138 = 1;
                while (v136 != -4096)
                {
                  if (v137)
                  {
                    v139 = 0;
                  }

                  else
                  {
                    v139 = v136 == -8192;
                  }

                  if (v139)
                  {
                    v137 = v60;
                  }

                  v140 = v135 + v138++;
                  v135 = v140 & v134;
                  v60 = (v133 + 16 * (v140 & v134));
                  v136 = *v60;
                  if (*v60 == v47)
                  {
                    goto LABEL_235;
                  }
                }

                if (v137)
                {
                  v60 = v137;
                }
              }
            }

            else
            {
              v60 = 0;
            }

LABEL_235:
            ++*(v6 + 120);
            if (*v60 == -4096)
            {
              goto LABEL_97;
            }

            goto LABEL_96;
          }
        }

        else
        {
          v73 = (4 * *(v6 + 120) + 4);
        }

        v49 *= 2;
        goto LABEL_187;
      }

      if (!v49)
      {
        v66 = (4 * *(v6 + 120) + 4);
        goto LABEL_171;
      }

      v50 = v49 - 1;
      v51 = ((v47 >> 4) ^ (v47 >> 9)) & (v49 - 1);
      v52 = (v48 + 16 * v51);
      v53 = *v52;
      if (*v52 != v47)
      {
        v54 = 0;
        v55 = 1;
        while (v53 != -4096)
        {
          if (v54)
          {
            v56 = 0;
          }

          else
          {
            v56 = v53 == -8192;
          }

          if (v56)
          {
            v54 = v52;
          }

          v57 = v51 + v55++;
          v51 = v57 & v50;
          v52 = (v48 + 16 * (v57 & v50));
          v53 = *v52;
          if (*v52 == v47)
          {
            goto LABEL_88;
          }
        }

        if (v54)
        {
          v52 = v54;
        }

        v121 = *(v6 + 120);
        if (4 * v121 + 4 >= 3 * v49)
        {
LABEL_171:
          v49 *= 2;
LABEL_172:
          sub_100081B28(v6 + 112, v49);
          v122 = *(v6 + 128);
          if (v122)
          {
            v123 = *(v6 + 112);
            v124 = v122 - 1;
            v125 = (v122 - 1) & ((v47 >> 4) ^ (v47 >> 9));
            v52 = (v123 + 16 * v125);
            v126 = *v52;
            if (*v52 != v47)
            {
              v127 = 0;
              v128 = 1;
              while (v126 != -4096)
              {
                if (v127)
                {
                  v129 = 0;
                }

                else
                {
                  v129 = v126 == -8192;
                }

                if (v129)
                {
                  v127 = v52;
                }

                v130 = v125 + v128++;
                v125 = v130 & v124;
                v52 = (v123 + 16 * (v130 & v124));
                v126 = *v52;
                if (*v52 == v47)
                {
                  goto LABEL_232;
                }
              }

              if (v127)
              {
                v52 = v127;
              }
            }
          }

          else
          {
            v52 = 0;
          }

LABEL_232:
          ++*(v6 + 120);
          if (*v52 == -4096)
          {
            goto LABEL_87;
          }

LABEL_86:
          --*(v6 + 124);
          goto LABEL_87;
        }

        if (v49 + ~v121 - *(v6 + 124) <= v49 >> 3)
        {
          goto LABEL_172;
        }

        *(v6 + 120) = v121 + 1;
        if (*v52 != -4096)
        {
          goto LABEL_86;
        }

LABEL_87:
        *v52 = v47;
        v52[1] = 0;
      }

LABEL_88:
      v67 = *(v52[1] + 8);
      v68 = (*(*v46 + 136) != &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id) | (2 * v67);
      if (v67 > 0x3F)
      {
        sub_10008EC6C(v5, v68);
        if (*(*v46 + 136) != &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
        {
          goto LABEL_134;
        }
      }

      else
      {
        v69 = (2 * v68) | 1;
        v71 = v5[1];
        v70 = v5[2];
        if (v71 >= v70)
        {
          v89 = *v5;
          v90 = &v71[-*v5];
          v91 = (v90 + 1);
          if ((v90 + 1) < 0)
          {
            goto LABEL_304;
          }

          v92 = v70 - v89;
          if (2 * v92 > v91)
          {
            v91 = 2 * v92;
          }

          if (v92 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v93 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v93 = v91;
          }

          if (v93)
          {
            operator new();
          }

          v99 = &v71[-*v5];
          *v90 = v69;
          v72 = v90 + 1;
          memcpy(0, v89, v99);
          *v5 = 0;
          v5[1] = v90 + 1;
          v5[2] = 0;
          if (v89)
          {
            operator delete(v89);
          }
        }

        else
        {
          *v71 = v69;
          v72 = v71 + 1;
        }

        v5[1] = v72;
        if (*(*v46 + 136) != &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
        {
LABEL_134:
          v100 = *(v6 + 56);
          if (!v100)
          {
            v109 = (4 * *(v6 + 48) + 4);
            goto LABEL_216;
          }

          v101 = *(v6 + 40);
          v102 = v100 - 1;
          v103 = (v100 - 1) & ((v46 >> 4) ^ (v46 >> 9));
          v79 = (v101 + 16 * v103);
          v104 = *v79;
          if (v46 != *v79)
          {
            v105 = 0;
            v106 = 1;
            while (v104 != -4096)
            {
              if (v105)
              {
                v107 = 0;
              }

              else
              {
                v107 = v104 == -8192;
              }

              if (v107)
              {
                v105 = v79;
              }

              v108 = v103 + v106++;
              v103 = v108 & v102;
              v79 = (v101 + 16 * (v108 & v102));
              v104 = *v79;
              if (v46 == *v79)
              {
                goto LABEL_150;
              }
            }

            if (v105)
            {
              v79 = v105;
            }

            v80 = *(v6 + 48);
            if (4 * v80 + 4 >= 3 * v100)
            {
LABEL_216:
              v100 *= 2;
LABEL_217:
              sub_100081B28(v6 + 40, v100);
              v150 = *(v6 + 56);
              if (v150)
              {
                v151 = *(v6 + 40);
                v152 = v150 - 1;
                v153 = (v150 - 1) & ((v46 >> 4) ^ (v46 >> 9));
                v79 = (v151 + 16 * v153);
                v154 = *v79;
                if (v46 != *v79)
                {
                  v146 = 0;
                  v155 = 1;
                  while (v154 != -4096)
                  {
                    if (v146)
                    {
                      v156 = 0;
                    }

                    else
                    {
                      v156 = v154 == -8192;
                    }

                    if (v156)
                    {
                      v146 = v79;
                    }

                    v157 = v153 + v155++;
                    v153 = v157 & v152;
                    v79 = (v151 + 16 * (v157 & v152));
                    v154 = *v79;
                    if (v46 == *v79)
                    {
                      goto LABEL_229;
                    }
                  }

                  goto LABEL_237;
                }

                goto LABEL_229;
              }

LABEL_228:
              v79 = 0;
              goto LABEL_229;
            }

            if (v100 + ~v80 - *(v6 + 52) <= v100 >> 3)
            {
              goto LABEL_217;
            }

LABEL_147:
            *(v6 + 48) = v80 + 1;
            if (*v79 != -4096)
            {
LABEL_148:
              --*(v6 + 52);
            }

LABEL_149:
            *v79 = v46;
            v79[1] = 0;
          }

LABEL_150:
          v110 = *(v79[1] + 8);
          if (v110 > 0x7F)
          {
            sub_10008EC6C(v5, v110);
          }

          else
          {
            v111 = (2 * v110) | 1;
            v113 = v5[1];
            v112 = v5[2];
            if (v113 >= v112)
            {
              v114 = *v5;
              v115 = &v113[-*v5];
              v116 = (v115 + 1);
              if ((v115 + 1) < 0)
              {
                goto LABEL_304;
              }

              v117 = v112 - v114;
              if (2 * v117 > v116)
              {
                v116 = 2 * v117;
              }

              if (v117 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v118 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v118 = v116;
              }

              if (v118)
              {
                operator new();
              }

              v119 = &v113[-*v5];
              *v115 = v111;
              memcpy(0, v114, v119);
              *v5 = 0;
              v5[1] = v115 + 1;
              v5[2] = 0;
              if (v114)
              {
                operator delete(v114);
              }

              v5[1] = v115 + 1;
            }

            else
            {
              *v113 = v111;
              v5[1] = v113 + 1;
            }
          }
        }
      }

      v11 += 8;
      if (v11 != v12)
      {
        continue;
      }

      break;
    }

    v10 = v195;
    if (**(v6 + 984) <= 2)
    {
      goto LABEL_262;
    }

    v158 = v5[9];
    v160 = *v5;
    v159 = v5[1];
    v196 = 0;
    v161 = v5[2];
    if (v159 < v161)
    {
      *v159 = 0;
      v162 = (v159 + 1);
      goto LABEL_259;
    }

    v163 = v159 - v160 + 1;
    if (v163 < 0)
    {
      goto LABEL_304;
    }

    v164 = v161 - v160;
    if (2 * v164 > v163)
    {
      v163 = 2 * v164;
    }

    if (v164 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v165 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v165 = v163;
    }

    if (v165)
    {
      operator new();
    }

    *(v159 - v160) = 0;
    v162 = v159 - v160 + 1;
    memcpy(0, v160, v159 - v160);
    *v5 = 0;
    v5[1] = v162;
    v5[2] = 0;
    if (v160)
    {
      operator delete(v160);
    }

LABEL_259:
    v5[1] = v162;
    mlir::ValueRange::ValueRange(v197, v189, v190);
    sub_100091610(v6, v5, &v196, v197[0], v197[1]);
    if (v196)
    {
      *(*v5 + &v159[v158] - &v160[v5[9]]) = v196;
    }

    v10 = v195;
LABEL_262:
    v166 = v10[5];
    v4 = v192;
    if (v166 == v10 + 4)
    {
LABEL_6:
      v9 = v193[1];
      if (v9 == v192)
      {
        goto LABEL_300;
      }

      continue;
    }

    break;
  }

  while (1)
  {
    ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v166);
    if ((sub_100090C0C(v6, v5, ValuePtr) & 1) == 0)
    {
      return 0;
    }

    v166 = v166[1];
    if (v166 == v10 + 4)
    {
      goto LABEL_6;
    }
  }
}

void *sub_100095E50(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = (*a1 + 16 * v4);
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 1;
    }

    v9 = 0;
    v10 = 1;
    while (v6 != -4096)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6 == -8192;
      }

      if (v11)
      {
        v9 = v5;
      }

      v12 = v4 + v10++;
      v4 = v12 & v3;
      v5 = (*a1 + 16 * (v12 & v3));
      v6 = *v5;
      if (*a2 == *v5)
      {
        return v5 + 1;
      }
    }

    if (v9)
    {
      v5 = v9;
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = v5;
  v8 = *(a1 + 8);
  if (4 * v8 + 4 >= 3 * v2)
  {
    v13 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v8 - *(a1 + 12) <= v2 >> 3)
  {
    v13 = a2;
LABEL_24:
    v14 = a1;
    sub_100095FBC(a1, v2);
    sub_1000414FC(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v5 = v15;
    ++*(v14 + 8);
    if (*v5 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v8 + 1;
  if (*v5 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v5 = *a2;
  v5[1] = 0;
  return v5 + 1;
}

void sub_100095FBC(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  buffer = llvm::allocate_buffer((16 * v8), 8uLL);
  v10 = buffer;
  *a1 = buffer;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &buffer[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = buffer + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -4096;
        *v13 = -4096;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &buffer[2 * v11];
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != v15);
      }
    }

    if (v3)
    {
      v16 = v4;
      do
      {
        v23 = *v16;
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v24 = *(a1 + 16) - 1;
          v25 = v24 & ((v23 >> 4) ^ (v23 >> 9));
          v22 = (*a1 + 16 * v25);
          v26 = *v22;
          if (v23 != *v22)
          {
            v27 = 0;
            v28 = 1;
            while (v26 != -4096)
            {
              if (v27)
              {
                v29 = 0;
              }

              else
              {
                v29 = v26 == -8192;
              }

              if (v29)
              {
                v27 = v22;
              }

              v30 = v25 + v28++;
              v25 = v30 & v24;
              v22 = (*a1 + 16 * (v30 & v24));
              v26 = *v22;
              if (v23 == *v22)
              {
                goto LABEL_24;
              }
            }

            if (v27)
            {
              v22 = v27;
            }
          }

LABEL_24:
          *v22 = v23;
          v22[1] = *(v16 + 1);
          ++*(a1 + 8);
        }

        v16 = (v16 + 16);
      }

      while (v16 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3), 8uLL);
  }

  else
  {
    *(a1 + 8) = 0;
    v17 = *(a1 + 16);
    if (v17)
    {
      if (((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_19;
      }

      v18 = ((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &buffer[2 * (v18 & 0x1FFFFFFFFFFFFFFELL)];
      v19 = buffer + 2;
      v20 = v18 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v19 - 2) = -4096;
        *v19 = -4096;
        v19 += 4;
        v20 -= 2;
      }

      while (v20);
      if (v18 != (v18 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_19:
        v21 = &buffer[2 * v17];
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != v21);
      }
    }
  }
}

void sub_1000961CC(void **a1, unint64_t a2)
{
  v3 = a1[2];
  sub_10008E700(*a1, a2);
  sub_10008E700(*a1, *(a1[1] + 2));
  v4 = a1[1];
  v5 = *(v4 + 2);
  if (v5)
  {
    v6 = *v4;
    v7 = *v4 + 32 * v5;
    do
    {
      v9 = *(v6 + 16);
      v10 = *(v6 + 24);
      v11 = *a1;
      v12 = sub_10008EE5C(v3, *v6, *(v6 + 8));
      sub_10008E700(v11, v12);
      sub_10008E700(*a1, v10);
      v13 = *a1;
      v15 = (*a1)[1];
      v14 = (*a1)[2];
      if (v15 < v14)
      {
        *v15 = v9;
        v8 = v15 + 1;
      }

      else
      {
        v16 = *v13;
        v17 = &v15[-*v13];
        v18 = (v17 + 1);
        if ((v17 + 1) < 0)
        {
          sub_100003FC0();
        }

        v19 = v14 - v16;
        if (2 * v19 > v18)
        {
          v18 = 2 * v19;
        }

        if (v19 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v20 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v18;
        }

        if (v20)
        {
          operator new();
        }

        v21 = &v15[-*v13];
        *v17 = v9;
        v8 = v17 + 1;
        memcpy(0, v16, v21);
        *v13 = 0;
        *(v13 + 8) = v17 + 1;
        *(v13 + 16) = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      *(v13 + 8) = v8;
      v6 += 32;
    }

    while (v6 != v7);
  }
}

void **sub_100096334(void **result, uint64_t a2, uint64_t a3, int a4)
{
  *&v12 = a2;
  *(&v12 + 1) = a3;
  v11 = a4;
  v4 = result[1];
  v5 = (*result)[9] + (*result)[1] - **result;
  v6 = v5 - *result[2];
  v10 = v6;
  v7 = *(v4 + 8);
  if (v7 >= *(v4 + 12))
  {
    v9 = result;
    result = sub_10009669C(v4, &v12, &v11, &v10);
    *v9[2] = v5;
  }

  else
  {
    v8 = *v4 + 32 * v7;
    *v8 = v12;
    *(v8 + 16) = a4;
    *(v8 + 24) = v6;
    ++*(v4 + 8);
    *result[2] = v5;
  }

  return result;
}

void sub_1000963EC(mlir::AsmResourceBuilder *a1)
{
  mlir::AsmResourceBuilder::~AsmResourceBuilder(a1);

  operator delete();
}

uint64_t sub_100096424(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v4 = *(a1 + 8);
    v6 = *(v4 + 8);
    v5 = *(v4 + 16);
    if (v6 >= v5)
    {
      v8 = *v4;
      v9 = &v6[-*v4];
      v10 = (v9 + 1);
      if ((v9 + 1) < 0)
      {
        sub_100003FC0();
      }

      v11 = a1;
      v12 = a2;
      v13 = a3;
      v14 = v5 - v8;
      if (2 * v14 > v10)
      {
        v10 = 2 * v14;
      }

      if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v15 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v10;
      }

      if (v15)
      {
        operator new();
      }

      v16 = &v6[-*v4];
      *v9 = a4;
      v7 = v9 + 1;
      memcpy(0, v8, v16);
      *v4 = 0;
      *(v4 + 8) = v9 + 1;
      *(v4 + 16) = 0;
      if (v8)
      {
        operator delete(v8);
      }

      a3 = v13;
      a2 = v12;
      a1 = v11;
    }

    else
    {
      *v6 = a4;
      v7 = v6 + 1;
    }

    *(v4 + 8) = v7;
  }

  v18 = *(a1 + 24);
  v17 = *(a1 + 32);

  return v18(v17, a2, a3, 1);
}

uint64_t sub_100096550(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v6 = *(a1 + 8);
    v7 = a2;
    v8 = a3;
    v9 = sub_10008EE5C(*(a1 + 16), a4, a5);
    sub_10008E700(v6, v9);
    a2 = v7;
    a3 = v8;
  }

  v11 = *(a1 + 24);
  v10 = *(a1 + 32);

  return v11(v10, a2, a3, 2);
}

uint64_t sub_1000965C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unsigned int a6)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v9 = a2;
    v10 = a3;
    v11 = *(a1 + 8);
    sub_10008E700(v11, a6);
    sub_10008E700(v11, a5);
    sub_1000906E0(v11, a6);
    if (*v11 != v11[1])
    {
      sub_10009058C((v11 + 6), v11);
      sub_10009046C(v11, *(v11[7] - 24), *(v11[7] - 16) - *(v11[7] - 24));
    }

    sub_10009046C(v11, a4, a5);
    a3 = v10;
    a2 = v9;
  }

  v14 = *(a1 + 24);
  v13 = *(a1 + 32);

  return v14(v13, a2, a3, 0);
}

uint64_t sub_10009669C(uint64_t a1, __int128 *a2, int *a3, uint64_t *a4)
{
  v14 = *a2;
  v15 = *a3;
  v16 = *a4;
  v4 = *(a1 + 8);
  v5 = *a1;
  v6 = &v14;
  if (v4 >= *(a1 + 12))
  {
    if (v5 <= &v14 && v5 + 32 * v4 > &v14)
    {
      v12 = &v14 - v5;
      v13 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 32);
      a1 = v13;
      v5 = *v13;
      v6 = &v12[*v13];
    }

    else
    {
      v11 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 32);
      a1 = v11;
      v5 = *v11;
      v6 = &v14;
    }
  }

  v7 = (v5 + 32 * *(a1 + 8));
  v8 = *(v6 + 1);
  *v7 = *v6;
  v7[1] = v8;
  v9 = (*(a1 + 8) + 1);
  *(a1 + 8) = v9;
  return *a1 + 32 * v9 - 32;
}

uint64_t sub_10009677C(uint64_t a1)
{
  llvm::deallocate_buffer(*(a1 + 904), (16 * *(a1 + 920)), 8uLL);
  llvm::deallocate_buffer(*(a1 + 880), (16 * *(a1 + 896)), 8uLL);
  llvm::deallocate_buffer(*(a1 + 856), (16 * *(a1 + 872)), 8uLL);
  llvm::deallocate_buffer(*(a1 + 832), (16 * *(a1 + 848)), 8uLL);
  v2 = *(a1 + 808);
  if (v2)
  {
    v3 = *(a1 + 800);
    v4 = v3 + 16 * v2;
    do
    {
      v5 = *v3;
      v6 = *(v3 + 8);
      v3 += 16;
      llvm::deallocate_buffer(v5, v6, 8uLL);
    }

    while (v3 != v4);
  }

  *(a1 + 808) = 0;
  v7 = *(a1 + 760);
  if (v7)
  {
    *(a1 + 816) = 0;
    v8 = *(a1 + 752);
    v9 = *v8;
    *(a1 + 736) = *v8;
    *(a1 + 744) = v9 + 4096;
    if (v7 != 1)
    {
      v10 = v8 + 1;
      v11 = 8 * v7 - 8;
      v12 = (v8 + 1);
      do
      {
        v13 = ((v10 - *(a1 + 752)) >> 10) & 0x1FFFFFF;
        if (v13 >= 0x1E)
        {
          LOBYTE(v13) = 30;
        }

        v14 = *v12++;
        llvm::deallocate_buffer(v14, (4096 << v13), 8uLL);
        ++v10;
        v11 -= 8;
      }

      while (v11);
    }

    *(a1 + 760) = 1;
  }

  sub_100046ACC(a1 + 736);
  sub_100096B8C(a1 + 640);
  sub_100046ACC(a1 + 640);
  v15 = *(a1 + 616);
  if (v15)
  {
    v16 = *(a1 + 608);
    v17 = v16 + 16 * v15;
    do
    {
      v18 = *v16;
      v19 = *(v16 + 8);
      v16 += 16;
      llvm::deallocate_buffer(v18, v19, 8uLL);
    }

    while (v16 != v17);
  }

  *(a1 + 616) = 0;
  v20 = *(a1 + 568);
  if (v20)
  {
    *(a1 + 624) = 0;
    v21 = *(a1 + 560);
    v22 = *v21;
    *(a1 + 544) = *v21;
    *(a1 + 552) = v22 + 4096;
    if (v20 != 1)
    {
      v23 = v21 + 1;
      v24 = 8 * v20 - 8;
      v25 = (v21 + 1);
      do
      {
        v26 = ((v23 - *(a1 + 560)) >> 10) & 0x1FFFFFF;
        if (v26 >= 0x1E)
        {
          LOBYTE(v26) = 30;
        }

        v27 = *v25++;
        llvm::deallocate_buffer(v27, (4096 << v26), 8uLL);
        ++v23;
        v24 -= 8;
      }

      while (v24);
    }

    *(a1 + 568) = 1;
  }

  sub_100046ACC(a1 + 544);
  v28 = *(a1 + 520);
  if (v28)
  {
    v29 = *(a1 + 512);
    v30 = v29 + 16 * v28;
    do
    {
      v31 = *v29;
      v32 = *(v29 + 8);
      v29 += 16;
      llvm::deallocate_buffer(v31, v32, 8uLL);
    }

    while (v29 != v30);
  }

  *(a1 + 520) = 0;
  v33 = *(a1 + 472);
  if (v33)
  {
    *(a1 + 528) = 0;
    v34 = *(a1 + 464);
    v35 = *v34 + 4096;
    *(a1 + 448) = *v34;
    *(a1 + 456) = v35;
    if (v33 != 1)
    {
      v36 = v34 + 1;
      v37 = 8 * v33 - 8;
      v38 = (v34 + 1);
      do
      {
        v39 = ((v36 - *(a1 + 464)) >> 10) & 0x1FFFFFF;
        if (v39 >= 0x1E)
        {
          LOBYTE(v39) = 30;
        }

        v40 = *v38++;
        llvm::deallocate_buffer(v40, (4096 << v39), 8uLL);
        ++v36;
        v37 -= 8;
      }

      while (v37);
    }

    *(a1 + 472) = 1;
  }

  sub_100046ACC(a1 + 448);
  sub_100096D4C(a1 + 352);
  sub_100046ACC(a1 + 352);
  v41 = *(a1 + 328);
  if (v41)
  {
    v42 = *(a1 + 320);
    v43 = v42 + 16 * v41;
    do
    {
      v44 = *v42;
      v45 = *(v42 + 8);
      v42 += 16;
      llvm::deallocate_buffer(v44, v45, 8uLL);
    }

    while (v42 != v43);
  }

  *(a1 + 328) = 0;
  v46 = *(a1 + 280);
  if (v46)
  {
    *(a1 + 336) = 0;
    v47 = *(a1 + 272);
    v48 = *v47 + 4096;
    *(a1 + 256) = *v47;
    *(a1 + 264) = v48;
    if (v46 != 1)
    {
      v49 = v47 + 1;
      v50 = 8 * v46 - 8;
      v51 = (v47 + 1);
      do
      {
        v52 = ((v49 - *(a1 + 272)) >> 10) & 0x1FFFFFF;
        if (v52 >= 0x1E)
        {
          LOBYTE(v52) = 30;
        }

        v53 = *v51++;
        llvm::deallocate_buffer(v53, (4096 << v52), 8uLL);
        ++v49;
        v50 -= 8;
      }

      while (v50);
    }

    *(a1 + 280) = 1;
  }

  sub_100046ACC(a1 + 256);
  llvm::deallocate_buffer(*(a1 + 232), (32 * *(a1 + 248)), 8uLL);
  v54 = *(a1 + 208);
  if (v54)
  {
    *(a1 + 216) = v54;
    operator delete(v54);
  }

  v55 = *(a1 + 184);
  if (v55)
  {
    *(a1 + 192) = v55;
    operator delete(v55);
  }

  v56 = *(a1 + 160);
  if (v56)
  {
    *(a1 + 168) = v56;
    operator delete(v56);
  }

  v57 = *(a1 + 144);
  if (v57 != (a1 + 160))
  {
    free(v57);
  }

  llvm::deallocate_buffer(*(a1 + 120), (24 * *(a1 + 136)), 8uLL);
  llvm::deallocate_buffer(*(a1 + 96), (16 * *(a1 + 112)), 8uLL);
  llvm::deallocate_buffer(*(a1 + 72), (16 * *(a1 + 88)), 8uLL);
  llvm::deallocate_buffer(*(a1 + 48), (16 * *(a1 + 64)), 8uLL);
  llvm::deallocate_buffer(*(a1 + 24), (16 * *(a1 + 40)), 8uLL);
  llvm::deallocate_buffer(*a1, (16 * *(a1 + 16)), 8uLL);
  return a1;
}

void sub_100096B8C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = &v3[v2];
    do
    {
      v5 = *(a1 + 16);
      v6 = *v3;
      if (*v3 == *(v5 + 8 * *(a1 + 24) - 8))
      {
        v8 = *a1;
      }

      else
      {
        v7 = ((v3 - v5) >> 10) & 0x1FFFFFF;
        if (v7 >= 0x1E)
        {
          LOBYTE(v7) = 30;
        }

        v8 = v6 + (4096 << v7);
      }

      for (i = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 32; i <= v8; i += 32)
      {
        if (*(i - 9) < 0)
        {
          operator delete(*(i - 32));
        }
      }

      ++v3;
    }

    while (v3 != v4);
  }

  v10 = *(a1 + 72);
  if (v10)
  {
    v11 = *(a1 + 64);
    v12 = &v11[2 * v10];
    do
    {
      v13 = *v11 + v11[1];
      for (j = ((*v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 32; j <= v13; j += 32)
      {
        if (*(j - 9) < 0)
        {
          operator delete(*(j - 32));
        }
      }

      v11 += 2;
    }

    while (v11 != v12);
    v15 = *(a1 + 72);
    if (v15)
    {
      v16 = *(a1 + 64);
      v17 = v16 + 16 * v15;
      do
      {
        v18 = *v16;
        v19 = *(v16 + 8);
        v16 += 16;
        llvm::deallocate_buffer(v18, v19, 8uLL);
      }

      while (v16 != v17);
    }
  }

  *(a1 + 72) = 0;
  v20 = *(a1 + 24);
  if (v20)
  {
    *(a1 + 80) = 0;
    v21 = *(a1 + 16);
    v22 = *v21 + 4096;
    *a1 = *v21;
    *(a1 + 8) = v22;
    if (v20 != 1)
    {
      v23 = v21 + 1;
      v24 = 8 * v20 - 8;
      v25 = (v21 + 1);
      do
      {
        v26 = ((v23 - *(a1 + 16)) >> 10) & 0x1FFFFFF;
        if (v26 >= 0x1E)
        {
          LOBYTE(v26) = 30;
        }

        v27 = *v25++;
        llvm::deallocate_buffer(v27, (4096 << v26), 8uLL);
        ++v23;
        v24 -= 8;
      }

      while (v24);
    }

    *(a1 + 24) = 1;
  }
}

void sub_100096D4C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = &v3[v2];
    do
    {
      v5 = *(a1 + 16);
      v6 = *v3;
      if (*v3 == *(v5 + 8 * *(a1 + 24) - 8))
      {
        v8 = *a1;
      }

      else
      {
        v7 = ((v3 - v5) >> 10) & 0x1FFFFFF;
        if (v7 >= 0x1E)
        {
          LOBYTE(v7) = 30;
        }

        v8 = v6 + (4096 << v7);
      }

      for (i = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 120; i <= v8; i += 120)
      {
        v10 = *(i - 16);
        if (i != v10)
        {
          free(v10);
        }

        llvm::deallocate_buffer(*(i - 40), (24 * *(i - 24)), 8uLL);
        v11 = *(i - 56);
        if ((i - 40) != v11)
        {
          free(v11);
        }

        llvm::deallocate_buffer(*(i - 80), (24 * *(i - 64)), 8uLL);
      }

      ++v3;
    }

    while (v3 != v4);
  }

  v12 = *(a1 + 72);
  if (v12)
  {
    v13 = *(a1 + 64);
    v14 = &v13[2 * v12];
    do
    {
      v15 = *v13 + v13[1];
      for (j = ((*v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 120; j <= v15; j += 120)
      {
        v17 = *(j - 16);
        if (j != v17)
        {
          free(v17);
        }

        llvm::deallocate_buffer(*(j - 40), (24 * *(j - 24)), 8uLL);
        v18 = *(j - 56);
        if ((j - 40) != v18)
        {
          free(v18);
        }

        llvm::deallocate_buffer(*(j - 80), (24 * *(j - 64)), 8uLL);
      }

      v13 += 2;
    }

    while (v13 != v14);
    v19 = *(a1 + 72);
    if (v19)
    {
      v20 = *(a1 + 64);
      v21 = v20 + 16 * v19;
      do
      {
        v22 = *v20;
        v23 = *(v20 + 8);
        v20 += 16;
        llvm::deallocate_buffer(v22, v23, 8uLL);
      }

      while (v20 != v21);
    }
  }

  *(a1 + 72) = 0;
  v24 = *(a1 + 24);
  if (v24)
  {
    *(a1 + 80) = 0;
    v25 = *(a1 + 16);
    v26 = *v25 + 4096;
    *a1 = *v25;
    *(a1 + 8) = v26;
    if (v24 != 1)
    {
      v27 = v25 + 1;
      v28 = 8 * v24 - 8;
      v29 = (v25 + 1);
      do
      {
        v30 = ((v27 - *(a1 + 16)) >> 10) & 0x1FFFFFF;
        if (v30 >= 0x1E)
        {
          LOBYTE(v30) = 30;
        }

        v31 = *v29++;
        llvm::deallocate_buffer(v31, (4096 << v30), 8uLL);
        ++v27;
        v28 -= 8;
      }

      while (v28);
    }

    *(a1 + 24) = 1;
  }
}

uint64_t sub_100096F94(uint64_t a1)
{
  v2 = *(a1 + 184);
  v3 = *(a1 + 192);
  if (v3)
  {
    v4 = 8 * v3;
    v5 = v2 - 8;
    do
    {
      v6 = *&v5[v4];
      *&v5[v4] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      v4 -= 8;
    }

    while (v4);
    v2 = *(a1 + 184);
  }

  if (v2 != (a1 + 200))
  {
    free(v2);
  }

  v7 = *(a1 + 120);
  v8 = *(a1 + 128);
  if (v8)
  {
    v9 = 8 * v8;
    v10 = v7 - 8;
    do
    {
      v11 = *&v10[v9];
      *&v10[v9] = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }

      v9 -= 8;
    }

    while (v9);
    v7 = *(a1 + 120);
  }

  if (v7 != (a1 + 136))
  {
    free(v7);
  }

  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  if (v13)
  {
    v14 = 8 * v13;
    v15 = v12 - 8;
    do
    {
      v16 = *&v15[v14];
      *&v15[v14] = 0;
      if (v16)
      {
        (*(*v16 + 8))(v16);
      }

      v14 -= 8;
    }

    while (v14);
    v12 = *(a1 + 56);
  }

  if (v12 != (a1 + 72))
  {
    free(v12);
  }

  if (*(a1 + 28))
  {
    v17 = *(a1 + 24);
    if (v17)
    {
      v18 = 0;
      v19 = 8 * v17;
      do
      {
        v20 = *(*(a1 + 16) + v18);
        if (v20 != -8 && v20 != 0)
        {
          v23 = *v20;
          v22 = *(v20 + 1);
          *(v20 + 1) = 0;
          if (v22)
          {
            (*(*v22 + 8))(v22);
          }

          llvm::deallocate_buffer(v20, (v23 + 17), 8uLL);
        }

        v18 += 8;
      }

      while (v19 != v18);
    }
  }

  free(*(a1 + 16));
  return a1;
}

uint64_t sub_100097188(uint64_t a1, uint64_t *a2)
{
  v27 = 0;
  v4 = (a1 + 16);
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 8, &v27);
  v6 = *(a1 + 8);
  v7 = 8 * v6;
  v8 = *a2;
  *a2 = 0;
  *&v5[8 * v6] = v8;
  v9 = *a1;
  v10 = *a1;
  if (!v6)
  {
    goto LABEL_18;
  }

  v11 = (v6 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v11 < 0xB)
  {
    v12 = v5;
    do
    {
LABEL_12:
      v21 = *v10;
      *v10 = 0;
      v10 += 8;
      *v12 = v21;
      v12 += 8;
    }

    while (v10 != &v9[v7]);
    goto LABEL_13;
  }

  v13 = v9 >= &v5[v7] || v5 >= &v9[v7];
  v12 = v5;
  if (!v13)
  {
    goto LABEL_12;
  }

  v14 = v11 + 1;
  v15 = 8 * (v14 & 0x3FFFFFFFFFFFFFFCLL);
  v12 = &v5[v15];
  v10 = &v9[v15];
  v16 = (v9 + 16);
  v17 = v5 + 16;
  v18 = v14 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v19 = *(v16 - 1);
    v20 = *v16;
    *(v16 - 1) = 0uLL;
    *v16 = 0uLL;
    *(v17 - 1) = v19;
    *v17 = v20;
    v16 += 2;
    v17 += 2;
    v18 -= 4;
  }

  while (v18);
  if (v14 != (v14 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_12;
  }

LABEL_13:
  v22 = v9 - 8;
  do
  {
    v23 = *&v22[v7];
    *&v22[v7] = 0;
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }

    v7 -= 8;
  }

  while (v7);
  v10 = *a1;
LABEL_18:
  v24 = v27;
  if (v10 != v4)
  {
    free(v10);
  }

  *a1 = v5;
  v25 = *(a1 + 8) + 1;
  *(a1 + 8) = v25;
  *(a1 + 12) = v24;
  return &v5[8 * v25 - 8];
}

mlir::bytecode::detail::IRNumberingState *mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::bytecode::detail::IRNumberingState *this, mlir::Operation *a2, const mlir::BytecodeWriterConfig *a3)
{
  *(this + 4) = 0;
  *this = 0u;
  *(this + 24) = 0u;
  v5 = this + 24;
  *(this + 10) = 0;
  *(this + 3) = 0u;
  *(this + 16) = 0;
  *(this + 72) = 0u;
  *(this + 22) = 0;
  *(this + 6) = 0u;
  *(this + 28) = 0;
  *(this + 34) = 0;
  *(this + 120) = 0u;
  *(this + 18) = this + 160;
  *(this + 16) = 0u;
  *(this + 62) = 0;
  *(this + 232) = 0u;
  *(this + 216) = 0u;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  *(this + 168) = 0u;
  *(this + 152) = 0u;
  *(this + 34) = this + 288;
  *(this + 35) = 0x400000000;
  *(this + 40) = this + 336;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 45) = 0;
  *(this + 46) = this + 384;
  *(this + 47) = 0x400000000;
  *(this + 52) = this + 432;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 57) = 0;
  *(this + 58) = this + 480;
  *(this + 59) = 0x400000000;
  *(this + 64) = this + 528;
  *(this + 69) = 0;
  *(this + 520) = 0u;
  *(this + 536) = 0u;
  *(this + 70) = this + 576;
  *(this + 71) = 0x400000000;
  *(this + 76) = this + 624;
  *(this + 81) = 0;
  *(this + 616) = 0u;
  *(this + 632) = 0u;
  *(this + 82) = this + 672;
  *(this + 83) = 0x400000000;
  *(this + 88) = this + 720;
  *(this + 93) = 0;
  *(this + 712) = 0u;
  *(this + 728) = 0u;
  *(this + 94) = this + 768;
  *(this + 95) = 0x400000000;
  *(this + 100) = this + 816;
  *(this + 218) = 0;
  *(this + 856) = 0u;
  *(this + 224) = 0;
  *(this + 55) = 0u;
  *(this + 230) = 0;
  *(this + 904) = 0u;
  *(this + 232) = 0;
  *(this + 836) = 0u;
  *(this + 808) = 0u;
  *(this + 824) = 0u;
  *(this + 117) = a3;
  LODWORD(v171) = 0;
  v174 = v176;
  v175 = 0x200000000;
  *&v168 = &v174;
  *(&v168 + 1) = this;
  v169 = &v171;
  mlir::detail::walk(a2, sub_10009E370, &v168);
  if (v174 != v176)
  {
    free(v174);
  }

  mlir::bytecode::detail::IRNumberingState::number(this, a2);
  v174 = v176;
  v175 = 0x800000000;
  v167 = a2;
  v6 = *(a2 + 11);
  v7 = v6 & 0x7FFFFF;
  if ((v6 & 0x7FFFFF) == 0)
  {
    goto LABEL_67;
  }

  v8 = ((a2 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10);
  *&v168 = v167;
  v9 = sub_10008FF48(v5, &v168);
  if (*(*v9 + 5) & 1) != 0 && (*(*v9 + 4))
  {
    v10 = 0;
  }

  else
  {
    v10 = *(this + 232);
  }

  LODWORD(v171) = v10;
  v11 = 24 * v7;
  do
  {
    while (1)
    {
      *&v168 = v8;
      v12 = v175;
      if (v175 >= HIDWORD(v175))
      {
        break;
      }

      v13 = v174 + 16 * v175;
      *v13 = v8;
      *(v13 + 2) = v171;
      LODWORD(v175) = v12 + 1;
      v8 += 24;
      v11 -= 24;
      if (!v11)
      {
        goto LABEL_13;
      }
    }

    sub_100099AB4(&v174, &v168, &v171);
    v8 += 24;
    v11 -= 24;
  }

  while (v11);
LABEL_13:
  v14 = v175;
  if (!v175)
  {
    goto LABEL_67;
  }

  while (2)
  {
    v15 = v174 + 16 * v14;
    v17 = *(v15 - 2);
    v16 = *(v15 - 1);
    LODWORD(v175) = v14 - 1;
    *(this + 232) = v16;
    mlir::bytecode::detail::IRNumberingState::number(this, v17);
    mlir::Region::OpIterator::OpIterator(&v171, v17, 0);
    mlir::Region::OpIterator::OpIterator(v170, v17, 1);
    v18 = v172;
    v169 = v172;
    v168 = v171;
    v19 = v170[2];
    while (v18 != v19)
    {
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v18);
      v21 = *(ValuePtr + 44);
      if ((v21 & 0x7FFFFF) == 0)
      {
        goto LABEL_17;
      }

      v22 = *(ValuePtr + 40);
      v23 = *(this + 10);
      if (!v23)
      {
        v33 = (4 * *(this + 8) + 4);
        goto LABEL_49;
      }

      v24 = *(this + 3);
      v25 = v23 - 1;
      v26 = (v23 - 1) & ((ValuePtr >> 4) ^ (ValuePtr >> 9));
      v27 = (v24 + 16 * v26);
      v28 = *v27;
      if (ValuePtr != *v27)
      {
        v29 = 0;
        v30 = 1;
        while (v28 != -4096)
        {
          if (v29)
          {
            v31 = 0;
          }

          else
          {
            v31 = v28 == -8192;
          }

          if (v31)
          {
            v29 = v27;
          }

          v32 = v26 + v30++;
          v26 = v32 & v25;
          v27 = (v24 + 16 * (v32 & v25));
          v28 = *v27;
          if (ValuePtr == *v27)
          {
            goto LABEL_36;
          }
        }

        if (v29)
        {
          v27 = v29;
        }

        v42 = *(this + 8);
        if (4 * v42 + 4 < 3 * v23)
        {
          if (v23 + ~v42 - *(this + 9) > v23 >> 3)
          {
            *(this + 8) = v42 + 1;
            if (*v27 == -4096)
            {
              goto LABEL_35;
            }

            goto LABEL_34;
          }

          v43 = ValuePtr;
          sub_100081B28(v5, v23);
          v44 = *(this + 10);
          if (v44)
          {
            goto LABEL_50;
          }
        }

        else
        {
LABEL_49:
          v43 = ValuePtr;
          sub_100081B28(v5, 2 * v23);
          v44 = *(this + 10);
          if (v44)
          {
LABEL_50:
            v45 = *(this + 3);
            ValuePtr = v43;
            v46 = v44 - 1;
            v47 = (v44 - 1) & ((v43 >> 4) ^ (v43 >> 9));
            v27 = (v45 + 16 * v47);
            v48 = *v27;
            if (v43 != *v27)
            {
              v49 = 0;
              v50 = 1;
              while (v48 != -4096)
              {
                if (v49)
                {
                  v51 = 0;
                }

                else
                {
                  v51 = v48 == -8192;
                }

                if (v51)
                {
                  v49 = v27;
                }

                v52 = v47 + v50++;
                v47 = v52 & v46;
                v27 = (v45 + 16 * (v52 & v46));
                v48 = *v27;
                if (v43 == *v27)
                {
                  goto LABEL_62;
                }
              }

              if (v49)
              {
                v27 = v49;
              }
            }

LABEL_62:
            ++*(this + 8);
            if (*v27 == -4096)
            {
LABEL_35:
              *v27 = ValuePtr;
              v27[1] = 0;
              goto LABEL_36;
            }

LABEL_34:
            --*(this + 9);
            goto LABEL_35;
          }
        }

        v27 = 0;
        ValuePtr = v43;
        goto LABEL_62;
      }

LABEL_36:
      v34 = v27[1];
      if (*(v34 + 5) == 1 && (*(v34 + 4) & 1) != 0)
      {
        v35 = 0;
      }

      else
      {
        v35 = *(this + 232);
      }

      v36 = ValuePtr + 16 * ((v21 >> 23) & 1) + ((v21 >> 21) & 0x7F8) + 32 * v22 + 64;
      v37 = v175;
      v38 = 24 * (v21 & 0x7FFFFF);
      v39 = v36;
      do
      {
        while (v37 < HIDWORD(v175))
        {
          v40 = v174 + 16 * v37;
          *v40 = v39;
          *(v40 + 2) = v35;
          LODWORD(v175) = ++v37;
          v39 += 24;
          v36 += 24;
          v38 -= 24;
          if (!v38)
          {
            goto LABEL_17;
          }
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod(&v174, v176, v37 + 1, 16);
        v41 = (v174 + 16 * v175);
        *v41 = v36;
        v41[1] = v35;
        v37 = v175 + 1;
        LODWORD(v175) = v175 + 1;
        v39 += 24;
        v36 += 24;
        v38 -= 24;
      }

      while (v38);
LABEL_17:
      mlir::Region::OpIterator::operator++(&v171);
      v18 = v172;
    }

    v14 = v175;
    if (v175)
    {
      continue;
    }

    break;
  }

LABEL_67:
  v53 = *(this + 38);
  if (v53)
  {
    v54 = *(this + 18);
    v55 = 24 * v53 - 24;
    if (v55 <= 0x17)
    {
      LODWORD(v56) = 0;
      v57 = *(this + 18);
      goto LABEL_73;
    }

    v58 = 0;
    v59 = v55 / 0x18 + 1;
    v56 = v59 & 0x1FFFFFFFFFFFFFFELL;
    v57 = v54 + 24 * (v59 & 0x1FFFFFFFFFFFFFFELL);
    v60 = (v54 + 40);
    do
    {
      v61 = *(v60 - 3);
      v62 = *v60;
      v60 += 6;
      *(v61 + 16) = v58;
      *(v62 + 16) = v58 + 1;
      v58 += 2;
    }

    while (v56 != v58);
    if (v59 != v56)
    {
LABEL_73:
      v63 = v54 + 24 * v53;
      do
      {
        *(*(v57 + 16) + 16) = v56;
        LODWORD(v56) = v56 + 1;
        v57 += 24;
      }

      while (v57 != v63);
    }
  }

  v64 = *(this + 20);
  v65 = *(this + 21);
  if (&v65[-v64] >> 3 < 129)
  {
    v68 = 0;
LABEL_81:
    sub_100099FF0(v64, v65, &v65[-v64] >> 3, 0, v68);
    v70 = *(this + 23);
    v71 = *(this + 24);
    v72 = &v71[-v70] >> 3;
    if (v72 >= 129)
    {
      goto LABEL_82;
    }

LABEL_87:
    v75 = 0;
LABEL_88:
    sub_10009AC60(v70, v71, v72, 0, v75);
    v77 = *(this + 26);
    v78 = *(this + 27);
    v79 = &v78[-v77] >> 3;
    if (v79 >= 129)
    {
      goto LABEL_89;
    }

LABEL_94:
    v82 = 0;
LABEL_95:
    v84.n128_f64[0] = sub_10009B714(v77, v78, v79, 0, v82);
    v86 = *(this + 20);
    v85 = *(this + 21);
    v87 = v85 - v86;
    v88 = v167;
    if (v85 == v86)
    {
      goto LABEL_118;
    }
  }

  else
  {
    v66 = &v65[-v64] >> 3;
    while (1)
    {
      v67 = operator new(8 * v66, &std::nothrow);
      if (v67)
      {
        break;
      }

      v68 = v66 >> 1;
      v69 = v66 > 1;
      v66 >>= 1;
      if (!v69)
      {
        goto LABEL_81;
      }
    }

    v76 = v67;
    sub_100099FF0(v64, v65, &v65[-v64] >> 3, v67, v66);
    operator delete(v76);
    v70 = *(this + 23);
    v71 = *(this + 24);
    v72 = &v71[-v70] >> 3;
    if (v72 < 129)
    {
      goto LABEL_87;
    }

LABEL_82:
    v73 = v72;
    while (1)
    {
      v74 = operator new(8 * v73, &std::nothrow);
      if (v74)
      {
        break;
      }

      v75 = v73 >> 1;
      v69 = v73 > 1;
      v73 >>= 1;
      if (!v69)
      {
        goto LABEL_88;
      }
    }

    v83 = v74;
    sub_10009AC60(v70, v71, v72, v74, v73);
    operator delete(v83);
    v77 = *(this + 26);
    v78 = *(this + 27);
    v79 = &v78[-v77] >> 3;
    if (v79 < 129)
    {
      goto LABEL_94;
    }

LABEL_89:
    v80 = v79;
    while (1)
    {
      v81 = operator new(8 * v80, &std::nothrow);
      if (v81)
      {
        break;
      }

      v82 = v80 >> 1;
      v69 = v80 > 1;
      v80 >>= 1;
      if (!v69)
      {
        goto LABEL_95;
      }
    }

    v89 = v81;
    sub_10009B714(v77, v78, v79, v81, v80);
    operator delete(v89);
    v86 = *(this + 20);
    v85 = *(this + 21);
    v87 = v85 - v86;
    v88 = v167;
    if (v85 == v86)
    {
      goto LABEL_118;
    }
  }

  v164 = v85;
  v90 = 0;
  v158 = v87;
  v91 = v87 >> 3;
  LODWORD(v171) = 0;
  v92 = 1;
  v161 = v86;
  v93 = v86;
  while (2)
  {
    v90 = (1 << (7 * v92)) - v90;
    if (v91 >= v90)
    {
      v94 = v90;
    }

    else
    {
      v94 = v91;
    }

    v95 = &v93->n128_i8[8 * v94];
    *&v168 = &v173;
    *(&v168 + 1) = &v171;
    if (v94 >= 129)
    {
      v96 = v94;
      while (1)
      {
        v97 = operator new(8 * v96, &std::nothrow);
        if (v97)
        {
          break;
        }

        v98 = v96 >> 1;
        v69 = v96 > 1;
        v96 >>= 1;
        if (!v69)
        {
          goto LABEL_108;
        }
      }

      v99 = v97;
      sub_10009BD18(v93, (v93 + 8 * v94), &v168, v94, v97, v96);
      operator delete(v99);
      LODWORD(v171) = *(*(*(v95 - 1) + 16) + 16);
      v91 -= v94;
      if (!v91)
      {
        break;
      }

      goto LABEL_111;
    }

    v98 = 0;
LABEL_108:
    sub_10009BD18(v93, (v93 + 8 * v94), &v168, v94, 0, v98);
    LODWORD(v171) = *(*(*(v95 - 1) + 16) + 16);
    v91 -= v94;
    if (v91)
    {
LABEL_111:
      ++v92;
      v93 = (v93 + 8 * v94);
      if (v92 == 9)
      {
        break;
      }

      continue;
    }

    break;
  }

  if ((v158 - 8) <= 7)
  {
    LODWORD(v100) = 0;
    v101 = v161;
    v102 = v164;
    v88 = v167;
    goto LABEL_117;
  }

  v103 = 0;
  v104 = ((v158 - 8) >> 3) + 1;
  v100 = v104 & 0x3FFFFFFFFFFFFFFELL;
  v102 = v164;
  v101 = (v161 + 8 * (v104 & 0x3FFFFFFFFFFFFFFELL));
  v105 = &v161->n128_u64[1];
  v88 = v167;
  do
  {
    v106 = *v105;
    *(*(v105 - 1) + 8) = v103;
    *(v106 + 8) = v103 + 1;
    v103 += 2;
    v105 += 2;
  }

  while (v100 != v103);
  if (v104 != v100)
  {
    do
    {
LABEL_117:
      v107 = v101->n128_u64[0];
      v101 = (v101 + 8);
      *(v107 + 8) = v100;
      LODWORD(v100) = v100 + 1;
    }

    while (v101 != v102);
  }

LABEL_118:
  v109 = *(this + 23);
  v108 = *(this + 24);
  if (v108 == v109)
  {
    goto LABEL_139;
  }

  v165 = *(this + 24);
  v110 = 0;
  v159 = v108 - v109;
  v111 = (v108 - v109) >> 3;
  LODWORD(v171) = 0;
  v112 = 1;
  v162 = v109;
  v113 = v109;
  while (2)
  {
    v110 = (1 << (7 * v112)) - v110;
    if (v111 >= v110)
    {
      v114 = v110;
    }

    else
    {
      v114 = v111;
    }

    v115 = &v113->n128_i8[8 * v114];
    *&v168 = &v173;
    *(&v168 + 1) = &v171;
    if (v114 >= 129)
    {
      v116 = v114;
      while (1)
      {
        v117 = operator new(8 * v116, &std::nothrow);
        if (v117)
        {
          break;
        }

        v118 = v116 >> 1;
        v69 = v116 > 1;
        v116 >>= 1;
        if (!v69)
        {
          goto LABEL_129;
        }
      }

      v119 = v117;
      sub_10009CC78(v113, (v113 + 8 * v114), &v168, v114, v117, v116);
      operator delete(v119);
      LODWORD(v171) = *(**(v115 - 1) + 16);
      v111 -= v114;
      if (!v111)
      {
        break;
      }

      goto LABEL_132;
    }

    v118 = 0;
LABEL_129:
    sub_10009CC78(v113, (v113 + 8 * v114), &v168, v114, 0, v118);
    LODWORD(v171) = *(**(v115 - 1) + 16);
    v111 -= v114;
    if (v111)
    {
LABEL_132:
      ++v112;
      v113 = (v113 + 8 * v114);
      if (v112 == 9)
      {
        break;
      }

      continue;
    }

    break;
  }

  if ((v159 - 8) <= 7)
  {
    LODWORD(v120) = 0;
    v121 = v162;
    v122 = v165;
    v88 = v167;
    goto LABEL_138;
  }

  v123 = 0;
  v124 = ((v159 - 8) >> 3) + 1;
  v120 = v124 & 0x3FFFFFFFFFFFFFFELL;
  v122 = v165;
  v121 = (v162 + 8 * (v124 & 0x3FFFFFFFFFFFFFFELL));
  v125 = &v162->n128_u64[1];
  v88 = v167;
  do
  {
    v126 = *v125;
    *(*(v125 - 1) + 16) = v123;
    *(v126 + 16) = v123 + 1;
    v123 += 2;
    v125 += 2;
  }

  while (v120 != v123);
  if (v124 != v120)
  {
    do
    {
LABEL_138:
      v127 = v121->n128_u64[0];
      v121 = (v121 + 8);
      *(v127 + 16) = v120;
      LODWORD(v120) = v120 + 1;
    }

    while (v121 != v122);
  }

LABEL_139:
  v129 = *(this + 26);
  v128 = *(this + 27);
  if (v128 == v129)
  {
    goto LABEL_160;
  }

  v166 = *(this + 27);
  v130 = 0;
  v160 = v128 - v129;
  v131 = (v128 - v129) >> 3;
  LODWORD(v171) = 0;
  v132 = 1;
  v163 = v129;
  v133 = v129;
  while (2)
  {
    v130 = (1 << (7 * v132)) - v130;
    if (v131 >= v130)
    {
      v134 = v130;
    }

    else
    {
      v134 = v131;
    }

    v135 = &v133->n128_i8[8 * v134];
    *&v168 = &v173;
    *(&v168 + 1) = &v171;
    if (v134 >= 129)
    {
      v136 = v134;
      while (1)
      {
        v137 = operator new(8 * v136, &std::nothrow);
        if (v137)
        {
          break;
        }

        v138 = v136 >> 1;
        v69 = v136 > 1;
        v136 >>= 1;
        if (!v69)
        {
          goto LABEL_150;
        }
      }

      v139 = v137;
      sub_10009DBD8(v133, (v133 + 8 * v134), &v168, v134, v137, v136);
      operator delete(v139);
      LODWORD(v171) = *(*(*(v135 - 1) + 16) + 16);
      v131 -= v134;
      if (!v131)
      {
        break;
      }

      goto LABEL_153;
    }

    v138 = 0;
LABEL_150:
    sub_10009DBD8(v133, (v133 + 8 * v134), &v168, v134, 0, v138);
    LODWORD(v171) = *(*(*(v135 - 1) + 16) + 16);
    v131 -= v134;
    if (v131)
    {
LABEL_153:
      ++v132;
      v133 = (v133 + 8 * v134);
      if (v132 == 9)
      {
        break;
      }

      continue;
    }

    break;
  }

  if ((v160 - 8) <= 7)
  {
    LODWORD(v140) = 0;
    v141 = v163;
    v142 = v166;
    v88 = v167;
    goto LABEL_159;
  }

  v143 = 0;
  v144 = ((v160 - 8) >> 3) + 1;
  v140 = v144 & 0x3FFFFFFFFFFFFFFELL;
  v142 = v166;
  v141 = (v163 + 8 * (v144 & 0x3FFFFFFFFFFFFFFELL));
  v145 = &v163->n128_u64[1];
  v88 = v167;
  do
  {
    v146 = *v145;
    *(*(v145 - 1) + 8) = v143;
    *(v146 + 8) = v143 + 1;
    v143 += 2;
    v145 += 2;
  }

  while (v140 != v143);
  if (v144 != v140)
  {
    do
    {
LABEL_159:
      v147 = v141->n128_u64[0];
      v141 = (v141 + 8);
      *(v147 + 8) = v140;
      LODWORD(v140) = v140 + 1;
    }

    while (v141 != v142);
  }

LABEL_160:
  LODWORD(v171) = 0;
  v148 = *(this + 38);
  if (v148)
  {
    v149 = *(this + 18);
    v150 = v149 + 24 * v148;
    do
    {
      v151 = *(v149 + 16);
      v152 = *(v151 + 32);
      if (v152)
      {
        *&v168 = &off_1002D5F50;
        *(&v168 + 1) = v151;
        v169 = &v171;
        (*(*v152 + 56))(v152, v88, v151 + 40, &v168, v84);
        v153 = *(v151 + 112);
        if (v153)
        {
          v154 = v171;
          v155 = 24 * v153;
          v156 = *(v151 + 104) + 16;
          do
          {
            if (*(*v156 + 28) == 1)
            {
              *(*v156 + 24) = v154++;
              LODWORD(v171) = v154;
            }

            v156 += 24;
            v155 -= 24;
          }

          while (v155);
        }

        mlir::AsmResourceBuilder::~AsmResourceBuilder(&v168);
      }

      v149 += 24;
    }

    while (v149 != v150);
  }

  if (v174 != v176)
  {
    free(v174);
  }

  return this;
}

void mlir::bytecode::detail::IRNumberingState::number(mlir::bytecode::detail::IRNumberingState *this, mlir::Operation *a2)
{
  mlir::bytecode::detail::IRNumberingState::number(this, *(a2 + 6));
  v4 = *(a2 + 9);
  if (v4)
  {
    v5 = a2 - 16;
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v11[0] = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, i);
      v7 = *(this + 232);
      *(this + 232) = v7 + 1;
      LODWORD(AttrDictionary) = v7;
      sub_100098DAC(this + 856, v11, &AttrDictionary, v13);
      mlir::bytecode::detail::IRNumberingState::number(this, (*(v11[0] + 8) & 0xFFFFFFFFFFFFFFF8));
    }
  }

  if (mlir::BytecodeWriterConfig::getDesiredBytecodeVersion(*(this + 117)) > 4)
  {
    AttrDictionary = *(a2 + 7);
    if (!mlir::DictionaryAttr::size(&AttrDictionary))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  if (mlir::DictionaryAttr::size(&AttrDictionary))
  {
LABEL_11:
    mlir::bytecode::detail::IRNumberingState::number(this, AttrDictionary);
  }

LABEL_12:
  if (mlir::BytecodeWriterConfig::getDesiredBytecodeVersion(*(this + 117)) >= 5 && HIBYTE(*(a2 + 11)))
  {
    if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v10 = *(a2 + 2 * ((*(a2 + 11) >> 23) & 1) + 8);
      if (v10)
      {
        mlir::bytecode::detail::IRNumberingState::number(this, v10);
      }
    }

    else
    {
      v8 = sub_100093088(a2);
      v11[0] = a2;
      v11[1] = v8;
      DialectVersionMap = mlir::BytecodeWriterConfig::getDialectVersionMap(*(this + 117));
      v13[0] = off_1002D5EC8;
      v13[1] = this;
      v13[2] = DialectVersionMap;
      mlir::BytecodeOpInterface::writeProperties(v11, v13);
    }
  }

  mlir::bytecode::detail::IRNumberingState::number(this, *(a2 + 3));
}

unsigned int *mlir::bytecode::detail::IRNumberingState::number(unsigned int *this, mlir::Region *a2)
{
  if (*a2 != a2)
  {
    v14[7] = v2;
    v14[8] = v3;
    v5 = this;
    v6 = this[232];
    v14[0] = 0;
    v7 = *(a2 + 1);
    v8 = v6;
    if (v7 != a2)
    {
      v9 = 0;
      do
      {
        if (v7)
        {
          v10 = (v7 - 8);
        }

        else
        {
          v10 = 0;
        }

        v12 = v9;
        v13 = v10;
        sub_10005CCF8((v5 + 208), &v13, &v12, v11);
        mlir::bytecode::detail::IRNumberingState::number(v5, v10);
        ++v14[0];
        ++v9;
        v7 = *(v7 + 1);
      }

      while (v7 != a2);
      v8 = v5[232];
    }

    v12 = v8 - v6;
    v13 = a2;
    return sub_1000995A4((v5 + 226), &v13, v14, &v12, v11);
  }

  return this;
}

void mlir::bytecode::detail::IRNumberingState::number(uint64_t a1, uint64_t **a2)
{
  v50 = a2;
  v39 = a2;
  sub_1000819A8(a1, &v39, &v39 + 1, &v48);
  if ((v49 & 1) == 0)
  {
    ++*(*(v48 + 8) + 12);
    return;
  }

  *(a1 + 336) += 24;
  v4 = *(a1 + 256);
  v5 = ((v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = v5 + 3;
  if (v4)
  {
    v7 = v6 > *(a1 + 264);
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v5 = sub_10003E4AC(a1 + 256, 24, 24, 3);
  }

  else
  {
    *(a1 + 256) = v6;
  }

  *v5 = a2 & 0xFFFFFFFFFFFFFFFBLL;
  v5[1] = &_mh_execute_header;
  v5[2] = 0;
  v47 = v5;
  *(v48 + 8) = v5;
  sub_100004988(a1 + 160, &v47);
  v8 = *a2;
  v9 = (*a2)[17];
  v10 = v9 == &mlir::detail::TypeIDResolver<mlir::OpaqueAttr,void>::id;
  if (v9 == &mlir::detail::TypeIDResolver<mlir::OpaqueAttr,void>::id)
  {
    v11 = a2;
  }

  else
  {
    v11 = 0;
  }

  *&v45 = v11;
  if (v10)
  {
    *&v51 = mlir::OpaqueAttr::getDialectNamespace(&v45);
    *&v39 = mlir::StringAttr::getValue(&v51);
    *(&v39 + 1) = v29;
    v30 = sub_100099480(a1 + 120, &v39);
    v31 = *v30;
    if (*v30)
    {
LABEL_36:
      v47[2] = v31;
      return;
    }

    *(a1 + 432) += 120;
    v32 = *(a1 + 352);
    if (v32 && (v31 = (v32 + 7) & 0xFFFFFFFFFFFFFFF8, v31 + 120 <= *(a1 + 360)))
    {
      *(a1 + 352) = v31 + 120;
    }

    else
    {
      v37 = v30;
      v31 = sub_10003E4AC(a1 + 352, 120, 120, 3);
      v30 = v37;
    }

    v33 = *(a1 + 152) - 1;
    v34 = v39;
LABEL_35:
    *v31 = v34;
    *(v31 + 16) = v33;
    *(v31 + 24) = 0u;
    *(v31 + 40) = 0u;
    *(v31 + 56) = 0;
    *(v31 + 80) = 0;
    *(v31 + 64) = v31 + 80;
    *(v31 + 72) = 0;
    *(v31 + 88) = 0;
    *(v31 + 96) = 0;
    *(v31 + 104) = v31 + 120;
    *(v31 + 112) = 0;
    *v30 = v31;
    goto LABEL_36;
  }

  v12 = mlir::bytecode::detail::IRNumberingState::numberDialect(a1, *v8);
  v47[2] = v12;
  v13 = *a2;
  if ((atomic_load_explicit(&qword_1002E0588, memory_order_acquire) & 1) == 0)
  {
    sub_100299A94();
  }

  v14 = v13 + 9;
  v15 = v13[12];
  if ((v15 & 2) == 0)
  {
    v14 = *v14;
  }

  if ((*(v15 & 0xFFFFFFFFFFFFFFF8))(v14, qword_1002E0580))
  {
LABEL_22:
    Context = mlir::Attribute::getContext(&v50);
    mlir::OpPrintingFlags::OpPrintingFlags(&v39);
    mlir::AsmState::AsmState(&v45, Context, &v39, 0, 0);
    DWORD2(v39) = 0;
    v43 = 0;
    v44 = 1;
    v41 = 0;
    v42 = 0;
    v40 = 0;
    *&v39 = off_1002D4AC8;
    mlir::Attribute::print(&v50, &v39, &v45, 0);
    DialectResources = mlir::AsmState::getDialectResources(&v45);
    if (*(DialectResources + 8))
    {
      v26 = *(DialectResources + 16);
      if (v26)
      {
        v27 = 48 * v26;
        v28 = *DialectResources;
        while ((*v28 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          v28 += 48;
          v27 -= 48;
          if (!v27)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
        v28 = *DialectResources;
      }

      v35 = *DialectResources + 48 * v26;
      while (v28 != v35)
      {
        mlir::bytecode::detail::IRNumberingState::number(a1, *v28, *(v28 + 32), *(v28 + 40));
        do
        {
          v28 += 48;
        }

        while (v28 != v35 && (*v28 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }
    }

LABEL_27:
    llvm::raw_null_ostream::~raw_null_ostream(&v39);
    mlir::AsmState::~AsmState(&v45);
    return;
  }

  AttributeWriterCallbacks = mlir::BytecodeWriterConfig::getAttributeWriterCallbacks(*(a1 + 936));
  if (!v17)
  {
LABEL_20:
    v22 = *(v47[2] + 24);
    if (v22)
    {
      DialectVersionMap = mlir::BytecodeWriterConfig::getDialectVersionMap(*(a1 + 936));
      *&v39 = off_1002D5EC8;
      *(&v39 + 1) = a1;
      v40 = DialectVersionMap;
      if ((*(*v22 + 32))(v22, v50, &v39))
      {
        return;
      }
    }

    goto LABEL_22;
  }

  v18 = AttributeWriterCallbacks;
  v19 = v50;
  v20 = 8 * v17;
  while (1)
  {
    v21 = mlir::BytecodeWriterConfig::getDialectVersionMap(*(a1 + 936));
    *&v39 = off_1002D5EC8;
    *(&v39 + 1) = a1;
    v40 = v21;
    LOBYTE(v45) = 0;
    v46 = 0;
    if ((*(**v18 + 16))(*v18, v19, &v45, &v39))
    {
      break;
    }

    ++v18;
    v20 -= 8;
    if (!v20)
    {
      goto LABEL_20;
    }
  }

  if (v46 == 1)
  {
    v51 = v45;
    v30 = sub_100099480(a1 + 120, &v51);
    v31 = *v30;
    if (*v30)
    {
      goto LABEL_36;
    }

    *(a1 + 432) += 120;
    v36 = *(a1 + 352);
    if (v36 && (v31 = (v36 + 7) & 0xFFFFFFFFFFFFFFF8, v31 + 120 <= *(a1 + 360)))
    {
      *(a1 + 352) = v31 + 120;
    }

    else
    {
      v38 = v30;
      v31 = sub_10003E4AC(a1 + 352, 120, 120, 3);
      v30 = v38;
    }

    v33 = *(a1 + 152) - 1;
    v34 = v51;
    goto LABEL_35;
  }
}

{
  v48 = a2;
  v37 = a2;
  sub_1000819A8(a1 + 72, &v37, &v37 + 1, &v46);
  if ((v47 & 1) == 0)
  {
    ++*(*(v46 + 8) + 12);
    return;
  }

  *(a1 + 816) += 24;
  v4 = *(a1 + 736);
  if (v4 && (v5 = ((v4 + 7) & 0xFFFFFFFFFFFFFFF8), (v5 + 3) <= *(a1 + 744)))
  {
    *(a1 + 736) = v5 + 3;
  }

  else
  {
    v5 = sub_10003E4AC(a1 + 736, 24, 24, 3);
  }

  *v5 = a2 | 4;
  v5[1] = &_mh_execute_header;
  v5[2] = 0;
  v45 = v5;
  *(v46 + 8) = v5;
  sub_100004988(a1 + 208, &v45);
  v6 = *a2;
  v7 = (*a2)[17];
  v8 = v7 == &mlir::detail::TypeIDResolver<mlir::OpaqueType,void>::id;
  if (v7 == &mlir::detail::TypeIDResolver<mlir::OpaqueType,void>::id)
  {
    v9 = a2;
  }

  else
  {
    v9 = 0;
  }

  *&v43 = v9;
  if (v8)
  {
    *&v49 = mlir::OpaqueType::getDialectNamespace(&v43);
    *&v37 = mlir::StringAttr::getValue(&v49);
    *(&v37 + 1) = v27;
    v28 = sub_100099480(a1 + 120, &v37);
    v29 = *v28;
    if (*v28)
    {
LABEL_34:
      v45[2] = v29;
      return;
    }

    *(a1 + 432) += 120;
    v30 = *(a1 + 352);
    if (v30 && (v29 = (v30 + 7) & 0xFFFFFFFFFFFFFFF8, v29 + 120 <= *(a1 + 360)))
    {
      *(a1 + 352) = v29 + 120;
    }

    else
    {
      v35 = v28;
      v29 = sub_10003E4AC(a1 + 352, 120, 120, 3);
      v28 = v35;
    }

    v31 = *(a1 + 152) - 1;
    v32 = v37;
LABEL_33:
    *v29 = v32;
    *(v29 + 16) = v31;
    *(v29 + 24) = 0u;
    *(v29 + 40) = 0u;
    *(v29 + 56) = 0;
    *(v29 + 80) = 0;
    *(v29 + 64) = v29 + 80;
    *(v29 + 72) = 0;
    *(v29 + 88) = 0;
    *(v29 + 96) = 0;
    *(v29 + 104) = v29 + 120;
    *(v29 + 112) = 0;
    *v28 = v29;
    goto LABEL_34;
  }

  v10 = mlir::bytecode::detail::IRNumberingState::numberDialect(a1, *v6);
  v45[2] = v10;
  v11 = *a2;
  if ((atomic_load_explicit(&qword_1002E0560, memory_order_acquire) & 1) == 0)
  {
    sub_100299A54();
  }

  v12 = v11 + 9;
  v13 = v11[12];
  if ((v13 & 2) == 0)
  {
    v12 = *v12;
  }

  if ((*(v13 & 0xFFFFFFFFFFFFFFF8))(v12, qword_1002E0558))
  {
LABEL_20:
    Context = mlir::Type::getContext(&v48);
    mlir::OpPrintingFlags::OpPrintingFlags(&v37);
    mlir::AsmState::AsmState(&v43, Context, &v37, 0, 0);
    DWORD2(v37) = 0;
    v41 = 0;
    v42 = 1;
    v39 = 0;
    v40 = 0;
    v38 = 0;
    *&v37 = off_1002D4AC8;
    mlir::Type::print(&v48, &v37, &v43);
    DialectResources = mlir::AsmState::getDialectResources(&v43);
    if (*(DialectResources + 8))
    {
      v24 = *(DialectResources + 16);
      if (v24)
      {
        v25 = 48 * v24;
        v26 = *DialectResources;
        while ((*v26 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          v26 += 48;
          v25 -= 48;
          if (!v25)
          {
            goto LABEL_25;
          }
        }
      }

      else
      {
        v26 = *DialectResources;
      }

      v33 = *DialectResources + 48 * v24;
      while (v26 != v33)
      {
        mlir::bytecode::detail::IRNumberingState::number(a1, *v26, *(v26 + 32), *(v26 + 40));
        do
        {
          v26 += 48;
        }

        while (v26 != v33 && (*v26 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }
    }

LABEL_25:
    llvm::raw_null_ostream::~raw_null_ostream(&v37);
    mlir::AsmState::~AsmState(&v43);
    return;
  }

  TypeWriterCallbacks = mlir::BytecodeWriterConfig::getTypeWriterCallbacks(*(a1 + 936));
  if (!v15)
  {
LABEL_18:
    v20 = *(v45[2] + 24);
    if (v20)
    {
      DialectVersionMap = mlir::BytecodeWriterConfig::getDialectVersionMap(*(a1 + 936));
      *&v37 = off_1002D5EC8;
      *(&v37 + 1) = a1;
      v38 = DialectVersionMap;
      if ((*(*v20 + 40))(v20, v48, &v37))
      {
        return;
      }
    }

    goto LABEL_20;
  }

  v16 = TypeWriterCallbacks;
  v17 = v48;
  v18 = 8 * v15;
  while (1)
  {
    v19 = mlir::BytecodeWriterConfig::getDialectVersionMap(*(a1 + 936));
    *&v37 = off_1002D5EC8;
    *(&v37 + 1) = a1;
    v38 = v19;
    LOBYTE(v43) = 0;
    v44 = 0;
    if ((*(**v16 + 16))(*v16, v17, &v43, &v37))
    {
      break;
    }

    ++v16;
    v18 -= 8;
    if (!v18)
    {
      goto LABEL_18;
    }
  }

  if (v44 == 1)
  {
    v49 = v43;
    v28 = sub_100099480(a1 + 120, &v49);
    v29 = *v28;
    if (*v28)
    {
      goto LABEL_34;
    }

    *(a1 + 432) += 120;
    v34 = *(a1 + 352);
    if (v34 && (v29 = (v34 + 7) & 0xFFFFFFFFFFFFFFF8, v29 + 120 <= *(a1 + 360)))
    {
      *(a1 + 352) = v29 + 120;
    }

    else
    {
      v36 = v28;
      v29 = sub_10003E4AC(a1 + 352, 120, 120, 3);
      v28 = v36;
    }

    v31 = *(a1 + 152) - 1;
    v32 = v49;
    goto LABEL_33;
  }
}

uint64_t mlir::bytecode::detail::IRNumberingState::numberDialect(mlir::bytecode::detail::IRNumberingState *this, mlir::Dialect *a2)
{
  v14 = a2;
  v3 = sub_10008FF48(this + 96, &v14);
  result = *v3;
  if (!*v3)
  {
    v15 = *(v14 + 8);
    v5 = sub_100099480(this + 120, &v15);
    v6 = *v5;
    if (!*v5)
    {
      *(this + 54) += 120;
      v7 = *(this + 44);
      if (v7 && (v6 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8, v6 + 120 <= *(this + 45)))
      {
        *(this + 44) = v6 + 120;
      }

      else
      {
        v13 = v5;
        v6 = sub_10003E4AC(this + 352, 120, 120, 3);
        v5 = v13;
      }

      v8 = *(this + 38) - 1;
      *v6 = v15;
      *(v6 + 16) = v8;
      *(v6 + 24) = 0u;
      *(v6 + 40) = 0u;
      *(v6 + 56) = 0;
      *(v6 + 80) = 0;
      *(v6 + 64) = v6 + 80;
      *(v6 + 72) = 0;
      *(v6 + 88) = 0;
      *(v6 + 96) = 0;
      *(v6 + 104) = v6 + 120;
      *(v6 + 112) = 0;
      *v5 = v6;
    }

    *v3 = v6;
    v9 = v14;
    v10 = sub_100099C4C(v14);
    if (v10)
    {
      v10 = sub_100099C4C(v9);
    }

    *(*v3 + 24) = v10;
    v11 = v14;
    if (sub_10006E654(v14))
    {
      v12 = sub_10006E654(v11);
      result = *v3;
      *(*v3 + 32) = v12;
    }

    else
    {
      result = *v3;
      *(*v3 + 32) = 0;
    }
  }

  return result;
}

uint64_t mlir::bytecode::detail::IRNumberingState::number(mlir::bytecode::detail::IRNumberingState *a1, mlir::Dialect *a2, void *a3, uint64_t a4)
{
  result = mlir::bytecode::detail::IRNumberingState::numberDialect(a1, a2);
  if (a4)
  {
    v8 = result;
    v9 = 24 * a4;
    v10 = a3;
    do
    {
      result = sub_10009ECC4(v8 + 40, v10, v32);
      if (v33 != 1)
      {
        break;
      }

      v12 = *(v8 + 72);
      v13 = *(v8 + 64);
      v14 = v10;
      if (v12 >= *(v8 + 76))
      {
        v23 = v13 <= v10 && v13 + 24 * v12 > v10;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v8 + 64, (v8 + 80), v12 + 1, 24);
        if (v23)
        {
          v14 = (a3 + *(v8 + 64) - v13);
          v13 = *(v8 + 64);
        }

        else
        {
          v13 = *(v8 + 64);
          v14 = v10;
        }
      }

      v15 = v13 + 24 * *(v8 + 72);
      v16 = *v14;
      *(v15 + 16) = v14[2];
      *v15 = v16;
      ++*(v8 + 72);
      *(a1 + 90) += 32;
      v17 = *(a1 + 80);
      if (v17 && (v18 = (v17 + 7) & 0xFFFFFFFFFFFFFFF8, v18 + 32 <= *(a1 + 81)))
      {
        *(a1 + 80) = v18 + 32;
      }

      else
      {
        v18 = sub_10003E4AC(a1 + 640, 32, 32, 3);
      }

      (*(**(v8 + 32) + 40))(&v26);
      v19 = v26;
      *(v18 + 16) = v27;
      *v18 = v19;
      v27 = 0;
      v26 = 0uLL;
      *(v18 + 24) = 0;
      *(v18 + 28) = 1;
      v20 = *(v18 + 23);
      v28 = v18;
      v21 = *v18;
      if (v20 >= 0)
      {
        v21 = v18;
      }

      if (v20 < 0)
      {
        v20 = *(v18 + 8);
      }

      *&v24 = v21;
      *(&v24 + 1) = v20;
      v25 = v18;
      v30 = v24;
      v31 = 0;
      sub_10009E734(v8 + 80, &v30, &v31, v32);
      if (v33 == 1)
      {
        v22 = *(v8 + 112);
        *(v32[0] + 16) = v22;
        v29 = &v25;
        *&v30 = &v24;
        if (v22 < *(v8 + 116))
        {
          v11 = *(v8 + 104) + 24 * v22;
          *v11 = v24;
          *(v11 + 16) = v25;
          ++*(v8 + 112);
        }

        else
        {
          sub_10008F74C(v8 + 104, &std::piecewise_construct, &v30, &v29);
        }
      }

      result = sub_100099920(a1 + 232, v10, &v28, v32);
      v10 += 3;
      a3 += 3;
      v9 -= 24;
    }

    while (v9);
  }

  return result;
}

void mlir::bytecode::detail::IRNumberingState::number(mlir::bytecode::detail::IRNumberingState *this, mlir::Block *a2)
{
  v4 = *(a2 + 6);
  v5 = *(a2 + 7);
  while (v4 != v5)
  {
    v6 = *v4++;
    v15 = v6;
    v7 = *(this + 232);
    *(this + 232) = v7 + 1;
    v14 = v7;
    sub_100098DAC(this + 856, &v15, &v14, v13);
    mlir::bytecode::detail::IRNumberingState::number(this, *(v15 + 32));
    mlir::bytecode::detail::IRNumberingState::number(this, (*(v15 + 8) & 0xFFFFFFFFFFFFFFF8));
  }

  v13[0] = a2;
  v8 = sub_1000400B4(this + 880, v13);
  v9 = a2 + 32;
  v10 = *(a2 + 5);
  if (v10 != v9)
  {
    v11 = v8;
    do
    {
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v10);
      mlir::bytecode::detail::IRNumberingState::number(this, ValuePtr);
      ++*v11;
      v10 = *(v10 + 8);
    }

    while (v10 != v9);
  }
}

uint64_t sub_100098DAC@<X0>(uint64_t result@<X0>, void *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 16);
  if (!v5)
  {
    v11 = 0;
    goto LABEL_5;
  }

  v6 = *result;
  v7 = HIDWORD(*a2);
  v8 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v7);
  LODWORD(v7) = -348639895 * ((((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 32) >> 15) ^ (-348639895 * (v7 ^ (v8 >> 47) ^ v8)));
  v9 = v5 - 1;
  v10 = v7 & (v5 - 1);
  v11 = *result + 16 * v10;
  v12 = *v11;
  if (*a2 != *v11)
  {
    v15 = 0;
    v16 = 1;
    while (v12 != -4096)
    {
      if (v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = v12 == -8192;
      }

      if (v17)
      {
        v15 = v11;
      }

      v18 = v10 + v16++;
      v10 = v18 & v9;
      v11 = v6 + 16 * (v18 & v9);
      v12 = *v11;
      if (*a2 == *v11)
      {
        goto LABEL_3;
      }
    }

    if (v15)
    {
      v11 = v15;
    }

LABEL_5:
    v22 = v11;
    v14 = *(result + 8);
    if (4 * v14 + 4 >= 3 * v5)
    {
      v5 *= 2;
    }

    else if (v5 + ~v14 - *(result + 12) > v5 >> 3)
    {
      *(result + 8) = v14 + 1;
      if (*v11 == -4096)
      {
LABEL_9:
        *v11 = *a2;
        *(v11 + 8) = *a3;
        v6 = *result;
        v5 = *(result + 16);
        v13 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v19 = result;
    v20 = a4;
    v21 = a3;
    sub_1000934F0(result, v5);
    sub_100083518(v19, a2, &v22);
    a3 = v21;
    result = v19;
    a4 = v20;
    v11 = v22;
    ++*(v19 + 8);
    if (*v11 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v13 = 0;
LABEL_10:
  *a4 = v11;
  *(a4 + 8) = v6 + 16 * v5;
  *(a4 + 16) = v13;
  return result;
}

uint64_t sub_100099480(uint64_t a1, __int128 *a2)
{
  v18 = *a2;
  v19[0] = 0;
  sub_10009E734(a1, &v18, v19, &v16);
  v4 = v16;
  if (v17)
  {
    v5 = a1 + 24;
    v6 = *(a1 + 24);
    v14 = *a2;
    v15 = 0;
    v7 = *(a1 + 32);
    v8 = &v14;
    if (v7 >= *(a1 + 36))
    {
      if (v6 <= &v14 && v6 + 24 * v7 > &v14)
      {
        v13 = &v14 - v6;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v5, (a1 + 40), v7 + 1, 24);
        v6 = *(a1 + 24);
        v8 = &v13[v6];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v5, (a1 + 40), v7 + 1, 24);
        v6 = *(a1 + 24);
        v8 = &v14;
      }
    }

    v9 = v6 + 24 * *(a1 + 32);
    v10 = *v8;
    *(v9 + 16) = *(v8 + 2);
    *v9 = v10;
    v11 = *(a1 + 32);
    *(a1 + 32) = v11 + 1;
    *(v4 + 16) = v11;
  }

  else
  {
    v11 = *(v16 + 16);
  }

  return *(a1 + 24) + 24 * v11 + 16;
}

uint64_t sub_1000995A4@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *(result + 16);
  if (!v6)
  {
    v10 = 0;
    goto LABEL_5;
  }

  v7 = *result;
  v8 = v6 - 1;
  v9 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v6 - 1);
  v10 = *result + 16 * v9;
  v11 = *v10;
  if (*a2 != *v10)
  {
    v15 = 0;
    v16 = 1;
    while (v11 != -4096)
    {
      if (v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = v11 == -8192;
      }

      if (v17)
      {
        v15 = v10;
      }

      v18 = v9 + v16++;
      v9 = v18 & v8;
      v10 = v7 + 16 * (v18 & v8);
      v11 = *v10;
      if (*a2 == *v10)
      {
        goto LABEL_3;
      }
    }

    if (v15)
    {
      v10 = v15;
    }

LABEL_5:
    v23 = v10;
    v13 = *(result + 8);
    if (4 * v13 + 4 >= 3 * v6)
    {
      v6 *= 2;
    }

    else if (v6 + ~v13 - *(result + 12) > v6 >> 3)
    {
      *(result + 8) = v13 + 1;
      if (*v10 == -4096)
      {
LABEL_9:
        *v10 = *a2;
        v14 = *a4;
        *(v10 + 8) = *a3;
        *(v10 + 12) = v14;
        v7 = *result;
        v6 = *(result + 16);
        v12 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v19 = result;
    v20 = a5;
    v21 = a4;
    v22 = a3;
    sub_100095FBC(result, v6);
    sub_1000414FC(v19, a2, &v23);
    a3 = v22;
    a4 = v21;
    result = v19;
    a5 = v20;
    v10 = v23;
    ++*(v19 + 8);
    if (*v10 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v12 = 0;
LABEL_10:
  *a5 = v10;
  *(a5 + 8) = v7 + 16 * v6;
  *(a5 + 16) = v12;
  return result;
}

void mlir::bytecode::detail::IRNumberingState::number(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  v3 = sub_10008FF48(a1 + 48, &v16);
  if (*v3)
  {
    ++*(*v3 + 20);
    return;
  }

  v4 = v3;
  if (*(v16 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    *&v17 = *(v16 + 8);
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v17);
    if (ReferencedDialect)
    {
      goto LABEL_5;
    }

LABEL_7:
    *&v17 = mlir::OperationName::getDialectNamespace(&v16);
    *(&v17 + 1) = v7;
    v8 = sub_100099480(a1 + 120, &v17);
    v6 = *v8;
    if (!*v8)
    {
      *(a1 + 432) += 120;
      v9 = *(a1 + 352);
      if (v9 && (v6 = (v9 + 7) & 0xFFFFFFFFFFFFFFF8, (v6 + 120) <= *(a1 + 360)))
      {
        *(a1 + 352) = v6 + 120;
      }

      else
      {
        v15 = v8;
        v6 = sub_10003E4AC(a1 + 352, 120, 120, 3);
        v8 = v15;
      }

      v10 = *(a1 + 152) - 1;
      *v6 = v17;
      *(v6 + 16) = v10;
      *(v6 + 24) = 0u;
      *(v6 + 40) = 0u;
      *(v6 + 56) = 0;
      *(v6 + 80) = 0;
      *(v6 + 64) = v6 + 80;
      *(v6 + 72) = 0;
      *(v6 + 88) = 0;
      *(v6 + 96) = 0;
      *(v6 + 104) = v6 + 120;
      *(v6 + 112) = 0;
      *v8 = v6;
    }

    goto LABEL_12;
  }

  ReferencedDialect = *(v16 + 24);
  if (!ReferencedDialect)
  {
    goto LABEL_7;
  }

LABEL_5:
  v6 = mlir::bytecode::detail::IRNumberingState::numberDialect(a1, ReferencedDialect);
LABEL_12:
  *(a1 + 624) += 24;
  v11 = *(a1 + 544);
  if (v11 && (v12 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8), (v12 + 3) <= *(a1 + 552)))
  {
    *(a1 + 544) = v12 + 3;
  }

  else
  {
    v14 = v6;
    v12 = sub_10003E4AC(a1 + 544, 24, 24, 3);
    v6 = v14;
  }

  v13 = v16;
  *v12 = v6;
  v12[1] = v13;
  v12[2] = &_mh_execute_header;
  *v4 = v12;
  sub_100004988(a1 + 184, v4);
}

uint64_t sub_100099920@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 16);
  if (!v5)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v6 = *result;
  v7 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v5 - 1);
  v8 = (*result + 32 * v7);
  v9 = *v8;
  if (*a2 != *v8)
  {
    v13 = 0;
    v14 = 1;
    while (v9 != -4096)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v9 == -8192;
      }

      if (v15)
      {
        v13 = v8;
      }

      v16 = v7 + v14++;
      v7 = v16 & (v5 - 1);
      v8 = (v6 + 32 * v7);
      v9 = *v8;
      if (*a2 == *v8)
      {
        goto LABEL_3;
      }
    }

    if (v13)
    {
      v8 = v13;
    }

LABEL_5:
    v20 = v8;
    v11 = *(result + 8);
    if (4 * v11 + 4 >= 3 * v5)
    {
      v5 *= 2;
    }

    else if (v5 + ~v11 - *(result + 12) > v5 >> 3)
    {
      *(result + 8) = v11 + 1;
      if (*v8 == -4096)
      {
LABEL_9:
        v12 = *a2;
        v8[2] = a2[2];
        *v8 = v12;
        v8[3] = *a3;
        v6 = *result;
        v5 = *(result + 16);
        v10 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v17 = result;
    v18 = a4;
    v19 = a3;
    sub_100090228(result, v5);
    sub_100088204(v17, a2, &v20);
    a3 = v19;
    result = v17;
    a4 = v18;
    v8 = v20;
    ++*(v17 + 8);
    if (*v8 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v10 = 0;
LABEL_10:
  *a4 = v8;
  *(a4 + 8) = v6 + 32 * v5;
  *(a4 + 16) = v10;
  return result;
}

uint64_t sub_100099AB4(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  if (v5 >= *(a1 + 12))
  {
    v8 = a1;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5 + 1, 16);
    a1 = v8;
    LODWORD(v5) = *(v8 + 8);
  }

  v6 = (*a1 + 16 * v5);
  *v6 = v3;
  v6[1] = v4;
  LODWORD(v6) = *(a1 + 8) + 1;
  *(a1 + 8) = v6;
  return *a1 + 16 * v6 - 16;
}

void sub_100099B4C(uint64_t a1, uint64_t **a2)
{
  if (a2)
  {
    mlir::bytecode::detail::IRNumberingState::number(*(a1 + 8), a2);
  }
}

uint64_t sub_100099BA0(uint64_t a1, int8x16_t *a2, unint64_t a3)
{
  v6 = *(a1 + 16);
  v7 = llvm::StringMapImpl::hash(a2, a3);
  Key = llvm::StringMapImpl::FindKey(v6, a2, a3, v7);
  if (Key == -1)
  {
    v9 = *(v6 + 8);
  }

  else
  {
    v9 = Key;
  }

  v10 = *v6 + 8 * v9;
  if (v10 == **(a1 + 16) + 8 * *(*(a1 + 16) + 8))
  {
    return 0;
  }

  else
  {
    return *(*v10 + 8);
  }
}

uint64_t sub_100099C4C(uint64_t a1)
{
  {
    v1 = *(a1 + 64);
    if (!v1)
    {
      return 0;
    }
  }

  else
  {
    v8 = a1;
    sub_100299C64();
    a1 = v8;
    v1 = *(v8 + 64);
    if (!v1)
    {
      return 0;
    }
  }

  v2 = *(a1 + 48);
  v3 = ((mlir::detail::TypeIDResolver<mlir::BytecodeDialectInterface,void>::resolveTypeID(void)::id >> 4) ^ (mlir::detail::TypeIDResolver<mlir::BytecodeDialectInterface,void>::resolveTypeID(void)::id >> 9)) & (v1 - 1);
  v4 = *(v2 + 16 * v3);
  if (v4 != mlir::detail::TypeIDResolver<mlir::BytecodeDialectInterface,void>::resolveTypeID(void)::id)
  {
    v6 = 1;
    while (v4 != -4096)
    {
      v7 = v3 + v6++;
      v3 = v7 & (v1 - 1);
      v4 = *(v2 + 16 * v3);
      if (v4 == mlir::detail::TypeIDResolver<mlir::BytecodeDialectInterface,void>::resolveTypeID(void)::id)
      {
        goto LABEL_4;
      }
    }

    return 0;
  }

LABEL_4:
  if (v3 == v1)
  {
    return 0;
  }

  return *(v2 + 16 * v3 + 8);
}

uint64_t sub_100099D10()
{
  {
    sub_100299CB8();
  }

  return llvm::getTypeName<mlir::BytecodeDialectInterface>(void)::Name;
}

const char *sub_100099D58()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::BytecodeDialectInterface]";
  v6 = 92;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void sub_100099DD8(mlir::AsmResourceBuilder *a1)
{
  mlir::AsmResourceBuilder::~AsmResourceBuilder(a1);

  operator delete();
}

uint64_t sub_100099E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[0] = a2;
  v12[1] = a3;
  v4 = *(a1 + 8);
  result = sub_100087CD0((v4 + 80), v12);
  v6 = result == *(v4 + 80) + 24 * *(v4 + 96) || result == 0;
  v7 = (result + 16);
  if (v6)
  {
    v7 = (v4 + 112);
  }

  v8 = *(v4 + 104) + 24 * *v7;
  if (v8 != *(*(a1 + 8) + 104) + 24 * *(*(a1 + 8) + 112))
  {
    v9 = *(a1 + 16);
    v10 = (*v9)++;
    v11 = *(v8 + 16);
    *(v11 + 24) = v10;
    *(v11 + 28) = 0;
  }

  return result;
}

uint64_t sub_100099EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[0] = a2;
  v12[1] = a3;
  v4 = *(a1 + 8);
  result = sub_100087CD0((v4 + 80), v12);
  v6 = result == *(v4 + 80) + 24 * *(v4 + 96) || result == 0;
  v7 = (result + 16);
  if (v6)
  {
    v7 = (v4 + 112);
  }

  v8 = *(v4 + 104) + 24 * *v7;
  if (v8 != *(*(a1 + 8) + 104) + 24 * *(*(a1 + 8) + 112))
  {
    v9 = *(a1 + 16);
    v10 = (*v9)++;
    v11 = *(v8 + 16);
    *(v11 + 24) = v10;
    *(v11 + 28) = 0;
  }

  return result;
}

uint64_t sub_100099F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[0] = a2;
  v12[1] = a3;
  v4 = *(a1 + 8);
  result = sub_100087CD0((v4 + 80), v12);
  v6 = result == *(v4 + 80) + 24 * *(v4 + 96) || result == 0;
  v7 = (result + 16);
  if (v6)
  {
    v7 = (v4 + 112);
  }

  v8 = *(v4 + 104) + 24 * *v7;
  if (v8 != *(*(a1 + 8) + 104) + 24 * *(*(a1 + 8) + 112))
  {
    v9 = *(a1 + 16);
    v10 = (*v9)++;
    v11 = *(v8 + 16);
    *(v11 + 24) = v10;
    *(v11 + 28) = 0;
  }

  return result;
}

double sub_100099FF0(uint64_t a1, char *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v5 = *(a2 - 1);
      v6 = *a1;
      if (*(v5 + 12) > *(*a1 + 12))
      {
        *a1 = v5;
        *(a2 - 1) = v6;
      }
    }

    else if (a3 > 128)
    {
      v16 = a3 >> 1;
      v17 = 8 * (a3 >> 1);
      v18 = a3 - (a3 >> 1);
      v19 = (v17 + a1);
      v20 = a1;
      if (a3 <= a5)
      {
        sub_10009A318(a1, v19, a3 >> 1, a4);
        v26 = &a4[v16];
        sub_10009A318(v20 + v17, a2, v18, v26);
        v27 = v26;
        v28 = a4;
        v29 = v20;
        v30 = &a4[a3];
        do
        {
          if (v27 == v30)
          {
            if (v28 == v26)
            {
              return v23.n128_f64[0];
            }

            v48 = &a4[v17 / 8] - v28 - 8;
            if (v48 >= 0x38)
            {
              if ((v20 - v28) >= 0x20)
              {
                v50 = v29 + 1;
                v51 = (v48 >> 3) + 1;
                v52 = v51 & 0x3FFFFFFFFFFFFFFCLL;
                v49 = &v28[v52];
                v29 = (v29 + v52 * 8);
                v53 = (v28 + 2);
                v54 = v51 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v23 = v53[-1];
                  v55 = *v53;
                  v50[-1] = v23;
                  *v50 = v55;
                  v50 += 2;
                  v53 += 2;
                  v54 -= 4;
                }

                while (v54);
                if (v51 == (v51 & 0x3FFFFFFFFFFFFFFCLL))
                {
                  return v23.n128_f64[0];
                }
              }

              else
              {
                v49 = v28;
              }
            }

            else
            {
              v49 = v28;
            }

            do
            {
              v56 = *v49++;
              v29->n128_u64[0] = v56;
              v29 = (v29 + 8);
            }

            while (v49 != v26);
            return v23.n128_f64[0];
          }

          v31 = v27;
          v32 = *v27;
          v33 = *(v32 + 12);
          v34 = *(*v28 + 12);
          v35 = v33 > v34;
          v36 = v33 <= v34;
          v37 = v35;
          if (v35)
          {
            v38 = v32;
          }

          else
          {
            v38 = *v28;
          }

          v28 += v36;
          v39 = v37;
          v27 = &v31[v39];
          v29->n128_u64[0] = v38;
          v29 = (v29 + 8);
          v20 = (v20 + 8);
        }

        while (v28 != v26);
        if (v27 != v30)
        {
          v40 = v30 - v31 - v39 * 8 - 8;
          if (v40 <= 0x57)
          {
            goto LABEL_51;
          }

          if ((v20 - v31 - v39 * 8) < 0x20)
          {
            goto LABEL_51;
          }

          v41 = v29 + 1;
          v42 = (v40 >> 3) + 1;
          v43 = 8 * (v42 & 0x3FFFFFFFFFFFFFFCLL);
          v27 = (v27 + v43);
          v29 = (v29 + v43);
          v44 = &v31[v39 + 2];
          v45 = v42 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v23 = v44[-1];
            v46 = *v44;
            v41[-1] = v23;
            *v41 = v46;
            v41 += 2;
            v44 += 2;
            v45 -= 4;
          }

          while (v45);
          if (v42 != (v42 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_51:
            do
            {
              v47 = *v27++;
              v29->n128_u64[0] = v47;
              v29 = (v29 + 8);
            }

            while (v27 != v30);
          }
        }
      }

      else
      {
        sub_100099FF0(a1, v19, a3 >> 1, a4, a5);
        sub_100099FF0(v20 + v17, a2, v18, a4, a5);

        v23.n128_u64[0] = sub_10009A5F4(v20, v20 + v17, a2, v16, v18, a4, a5).n128_u64[0];
      }
    }

    else if (a1 != a2)
    {
      v7 = (a1 + 8);
      if ((a1 + 8) != a2)
      {
        v8 = 0;
        v9 = a1;
        do
        {
          v11 = *v9;
          v9 = v7;
          v12 = *v7;
          v13 = *(v12 + 12);
          if (v13 > *(v11 + 12))
          {
            v14 = v8;
            do
            {
              *(a1 + v14 + 8) = v11;
              if (!v14)
              {
                v10 = a1;
                goto LABEL_11;
              }

              v11 = *(a1 + v14 - 8);
              v14 -= 8;
            }

            while (v13 > *(v11 + 12));
            v10 = (a1 + v14 + 8);
LABEL_11:
            *v10 = v12;
          }

          v7 = v9 + 1;
          v8 += 8;
        }

        while (v9 + 1 != a2);
      }
    }
  }

  return v23.n128_f64[0];
}

uint64_t sub_10009A318(uint64_t result, char *a2, uint64_t a3, uint64_t *a4)
{
  if (a3)
  {
    if (a3 == 1)
    {
LABEL_8:
      *a4 = *result;
      return result;
    }

    if (a3 == 2)
    {
      v6 = *(a2 - 1);
      v4 = (a2 - 8);
      v5 = v6;
      v7 = *(v6 + 12);
      v8 = *(*result + 12);
      if (v7 <= v8)
      {
        v5 = *result;
      }

      *a4++ = v5;
      if (v7 <= v8)
      {
        result = v4;
      }

      goto LABEL_8;
    }

    if (a3 > 8)
    {
      v19 = a3 >> 1;
      v20 = a3 >> 1;
      v21 = (v20 * 8 + result);
      v22 = result;
      v25 = a4;
      (sub_100099FF0)();
      result = sub_100099FF0(v21, a2, a3 - v19, &v25[v20], a3 - v19);
      v26 = v25;
      v27 = v21;
      do
      {
        if (v27 == a2)
        {
          if (v22 == v21)
          {
            return result;
          }

          v47 = &v21[-v22 - 8];
          if (v47 >= 0x38)
          {
            if (&v26[-v22] >= 0x20)
            {
              v49 = v25 + 2;
              v50 = (v47 >> 3) + 1;
              v51 = 8 * (v50 & 0x3FFFFFFFFFFFFFFCLL);
              v25 = (v25 + v51);
              v48 = (v22 + v51);
              v52 = (v22 + 16);
              v53 = v50 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v54 = *v52;
                *(v49 - 1) = *(v52 - 1);
                *v49 = v54;
                v52 += 2;
                v49 += 2;
                v53 -= 4;
              }

              while (v53);
              if (v50 == (v50 & 0x3FFFFFFFFFFFFFFCLL))
              {
                return result;
              }
            }

            else
            {
              v48 = v22;
            }
          }

          else
          {
            v48 = v22;
          }

          do
          {
            v55 = *v48++;
            *v25++ = v55;
          }

          while (v48 != v21);
          return result;
        }

        v28 = v27;
        v29 = *v27;
        v30 = *(v29 + 12);
        v31 = *(*v22 + 12);
        v32 = v30 > v31;
        v33 = v30 <= v31;
        v34 = v32;
        if (v32)
        {
          v35 = v29;
        }

        else
        {
          v35 = *v22;
        }

        v36 = 8 * v34;
        v27 = &v28[v36];
        v22 += 8 * v33;
        *v25++ = v35;
        v26 += 8;
      }

      while (v22 != v21);
      if (v27 != a2)
      {
        v37 = a2 - &v28[v36] - 8;
        if (v37 < 0x58)
        {
          goto LABEL_51;
        }

        if ((v26 - v28 - v36) < 0x20)
        {
          goto LABEL_51;
        }

        v38 = 0;
        v39 = (v37 >> 3) + 1;
        v40 = v39 & 0x3FFFFFFFFFFFFFFCLL;
        v41 = &v25[v40];
        v27 += v40 * 8;
        v42 = &v28[v36 + 16];
        v43 = v39 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v44 = &v25[v38];
          v45 = *v42;
          *v44 = *(v42 - 1);
          *(v44 + 1) = v45;
          v42 += 32;
          v38 += 4;
          v43 -= 4;
        }

        while (v43);
        v25 = v41;
        if (v39 != (v39 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_51:
          do
          {
            v46 = *v27;
            v27 += 8;
            *v25++ = v46;
          }

          while (v27 != a2);
        }
      }
    }

    else if (result != a2)
    {
      v9 = *result;
      result += 8;
      *a4 = v9;
      if (result != a2)
      {
        v10 = 0;
        v11 = a4;
        v12 = a4;
        do
        {
          while (1)
          {
            v14 = *v12++;
            v13 = v14;
            if (*(*result + 12) > *(v14 + 12))
            {
              break;
            }

            *v12 = *result;
            result += 8;
            v10 += 8;
            v11 = v12;
            if (result == a2)
            {
              return result;
            }
          }

          v11[1] = v13;
          v15 = a4;
          if (v11 != a4)
          {
            v16 = v10;
            while (1)
            {
              v15 = (a4 + v16);
              v17 = *(a4 + v16 - 8);
              if (*(*result + 12) <= *(v17 + 12))
              {
                break;
              }

              *v15 = v17;
              v16 -= 8;
              if (!v16)
              {
                v15 = a4;
                break;
              }
            }
          }

          v18 = *result;
          result += 8;
          *v15 = v18;
          v10 += 8;
          v11 = v12;
        }

        while (result != a2);
      }
    }
  }

  return result;
}

__n128 sub_10009A5F4(__n128 *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  if (!a5)
  {
    return result;
  }

  while (a5 > a7 && a4 > a7)
  {
    if (!a4)
    {
      return result;
    }

    v10 = 0;
    v11 = -a4;
    while (1)
    {
      v12 = a1->n128_i64[v10 / 8];
      if (*(*a2 + 12) > *(v12 + 12))
      {
        break;
      }

      v10 += 8;
      if (__CFADD__(v11++, 1))
      {
        return result;
      }
    }

    v14 = -v11;
    v78 = a3;
    __src = a6;
    v76 = (a1 + v10);
    v77 = a7;
    if (-v11 >= a5)
    {
      if (v11 == -1)
      {
        a1->n128_u64[v10 / 8] = *a2;
        *a2 = v12;
        return result;
      }

      v23 = v14 / 2;
      v24 = &a1->n128_u64[v14 / 2];
      v16 = a2;
      if (a2 != a3)
      {
        v25 = (a3 - a2) >> 3;
        v16 = a2;
        do
        {
          v26 = v25 >> 1;
          v27 = &v16[v25 >> 1];
          v29 = *v27;
          v28 = v27 + 1;
          v25 += ~(v25 >> 1);
          if (*(v29 + 12) > *(v24[v10 / 8] + 12))
          {
            v16 = v28;
          }

          else
          {
            v25 = v26;
          }
        }

        while (v25);
      }

      v15 = (v16 - a2) >> 3;
      v17 = &v24[v10 / 8];
    }

    else
    {
      v15 = a5 / 2;
      v16 = (a2 + 8 * (a5 / 2));
      v17 = a2;
      if (a2 - a1 != v10)
      {
        v18 = (a2 - a1 - v10) >> 3;
        v17 = a1 + v10;
        do
        {
          v19 = v18 >> 1;
          v20 = &v17[8 * (v18 >> 1)];
          v22 = *v20;
          v21 = v20 + 8;
          v18 += ~(v18 >> 1);
          if (*(*v16 + 12) > *(v22 + 12))
          {
            v18 = v19;
          }

          else
          {
            v17 = v21;
          }
        }

        while (v18);
      }

      v23 = (v17 - a1 - v10) >> 3;
    }

    a4 = -(v23 + v11);
    v30 = a5 - v15;
    v31 = a5;
    v32 = v23;
    v33 = sub_10009AAA4(v17, a2, v16);
    v34 = v32;
    v35 = v33;
    if (v34 + v15 >= v31 - (v34 + v15) - v11)
    {
      a6 = __src;
      v37 = v34;
      sub_10009A5F4(v33, v16, v78, a4, v30, __src, v77);
      a7 = v77;
      a4 = v37;
      a3 = v35;
      a1 = v76;
      a5 = v15;
      a2 = v17;
      if (!v15)
      {
        return result;
      }
    }

    else
    {
      a6 = __src;
      sub_10009A5F4(a1 + v10, v17, v33, v34, v15, __src, v77);
      a7 = v77;
      a1 = v35;
      a3 = v78;
      a5 = v30;
      a2 = v16;
      if (!v30)
      {
        return result;
      }
    }
  }

  if (a4 <= a5)
  {
    if (a2 != a1)
    {
      v47 = a2 - a1 - 8;
      v48 = a6;
      v49 = a1;
      if (v47 < 0x18)
      {
        goto LABEL_80;
      }

      v48 = a6;
      v49 = a1;
      if ((a6 - a1) <= 0x1F)
      {
        goto LABEL_80;
      }

      v50 = (v47 >> 3) + 1;
      v51 = 8 * (v50 & 0x3FFFFFFFFFFFFFFCLL);
      v48 = &a6[v51];
      v49 = (a1 + v51);
      v52 = a1 + 1;
      v53 = (a6 + 16);
      v54 = v50 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        result = v52[-1];
        v55 = *v52;
        v53[-1] = result;
        *v53 = v55;
        v52 += 2;
        v53 += 2;
        v54 -= 4;
      }

      while (v54);
      if (v50 != (v50 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_80:
        do
        {
          v56 = v49->n128_u64[0];
          v49 = (v49 + 8);
          *v48 = v56;
          v48 += 8;
        }

        while (v49 != a2);
      }

      while (a2 != a3)
      {
        v57 = *a2;
        v58 = *(*a2 + 12);
        v59 = *(*a6 + 12);
        v60 = v58 > v59;
        v61 = v58 <= v59;
        v62 = v60;
        if (!v60)
        {
          v57 = *a6;
        }

        a2 += 8 * v62;
        a6 += 8 * v61;
        a1->n128_u64[0] = v57;
        a1 = (a1 + 8);
        if (a6 == v48)
        {
          return result;
        }
      }

      memmove(a1, a6, v48 - a6);
    }

    return result;
  }

  if (a2 == a3)
  {
    return result;
  }

  v38 = a3 - a2 - 8;
  if (v38 < 0x18)
  {
    v39 = a6;
    v40 = a2;
  }

  else
  {
    v39 = a6;
    v40 = a2;
    if (&a6[-a2] > 0x1F)
    {
      v41 = (v38 >> 3) + 1;
      v42 = 8 * (v41 & 0x3FFFFFFFFFFFFFFCLL);
      v39 = &a6[v42];
      v40 = (a2 + v42);
      v43 = (a2 + 16);
      v44 = (a6 + 16);
      v45 = v41 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        result = v43[-1];
        v46 = *v43;
        v44[-1] = result;
        *v44 = v46;
        v43 += 2;
        v44 += 2;
        v45 -= 4;
      }

      while (v45);
      if (v41 == (v41 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_60;
      }
    }
  }

  do
  {
    v63 = *v40++;
    *v39 = v63;
    v39 += 8;
  }

  while (v40 != a3);
LABEL_60:
  v64 = a3;
  while (a2 != a1)
  {
    v65 = *(a2 - 8);
    if (*(*(v39 - 1) + 12) > *(v65 + 12))
    {
      a2 -= 8;
    }

    else
    {
      v65 = *(v39 - 1);
      v39 -= 8;
    }

    *--a3 = v65;
    v64 -= 8;
    if (v39 == a6)
    {
      return result;
    }
  }

  v66 = v39 - a6;
  if (v39 != a6)
  {
    v67 = v66 - 8;
    if ((v66 - 8) < 0x48 || (v39 - v64) < 0x20)
    {
      v68 = v39;
LABEL_71:
      v69 = a3 - 1;
      do
      {
        v70 = *(v68 - 1);
        v68 -= 8;
        *v69-- = v70;
      }

      while (v68 != a6);
      return result;
    }

    v71 = (a3 - 2);
    v72 = (v67 >> 3) + 1;
    v73 = 8 * (v72 & 0x3FFFFFFFFFFFFFFCLL);
    v68 = &v39[-v73];
    a3 = (a3 - v73);
    v74 = (v39 - 16);
    v75 = v72 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      result = *v74;
      v71[-1] = v74[-1];
      *v71 = result;
      v71 -= 2;
      v74 -= 2;
      v75 -= 4;
    }

    while (v75);
    if (v72 != (v72 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_71;
    }
  }

  return result;
}

char *sub_10009AAA4(char *__src, uint64_t a2, void *__dst)
{
  v4 = __dst;
  v5 = a2 - __src;
  if (a2 == __src)
  {
    return v4;
  }

  v6 = __dst - a2;
  if (__dst == a2)
  {
    return __src;
  }

  if (__src + 8 == a2)
  {
    v8 = *__src;
    v9 = __src;
    memmove(__src, __src + 8, v6);
    v10 = &v9[v6];
    *v10 = v8;
    return v10;
  }

  else if ((a2 + 8) == __dst)
  {
    v11 = *(__dst - 1);
    v12 = __src + 8;
    v13 = (__dst - 1) - __src;
    if (__dst - 1 != __src)
    {
      v14 = __src;
      memmove(__src + 8, __src, v13);
      __src = v14;
    }

    *__src = v11;
    return v12;
  }

  else
  {
    v15 = v5 >> 3;
    v16 = v6 >> 3;
    if (v5 >> 3 == v6 >> 3)
    {
      v17 = __src + 8;
      v18 = (a2 + 8);
      do
      {
        v19 = *(v17 - 1);
        *(v17 - 1) = *(v18 - 1);
        *(v18 - 1) = v19;
        if (v17 == a2)
        {
          break;
        }

        v17 += 8;
      }

      while (v18++ != __dst);
      return a2;
    }

    else
    {
      v21 = v5 >> 3;
      do
      {
        v22 = v21;
        v21 = v16;
        v16 = v22 % v16;
      }

      while (v16);
      v23 = &__src[8 * v21];
      do
      {
        v25 = *(v23 - 1);
        v23 -= 8;
        v24 = v25;
        v26 = &v23[v5];
        v27 = v23;
        do
        {
          v28 = v26;
          *v27 = *v26;
          v29 = (__dst - v26) >> 3;
          v30 = __OFSUB__(v15, v29);
          v32 = v15 - v29;
          v31 = (v32 < 0) ^ v30;
          v26 = &__src[8 * v32];
          if (v31)
          {
            v26 = &v28[8 * v15];
          }

          v27 = v28;
        }

        while (v26 != v23);
        *v28 = v24;
      }

      while (v23 != __src);
      return &__src[v6];
    }
  }
}

double sub_10009AC60(uint64_t a1, char *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v5 = *(a2 - 1);
      v6 = *a1;
      if (*(v5 + 20) > *(*a1 + 20))
      {
        *a1 = v5;
        *(a2 - 1) = v6;
      }
    }

    else if (a3 > 128)
    {
      v16 = a3 >> 1;
      v17 = 8 * (a3 >> 1);
      v18 = a3 - (a3 >> 1);
      v19 = (v17 + a1);
      v20 = a1;
      if (a3 <= a5)
      {
        sub_10009AF88(a1, v19, a3 >> 1, a4);
        v26 = &a4[v16];
        sub_10009AF88(v20 + v17, a2, v18, v26);
        v27 = v26;
        v28 = a4;
        v29 = v20;
        v30 = &a4[a3];
        do
        {
          if (v27 == v30)
          {
            if (v28 == v26)
            {
              return v23.n128_f64[0];
            }

            v48 = &a4[v17 / 8] - v28 - 8;
            if (v48 >= 0x38)
            {
              if ((v20 - v28) >= 0x20)
              {
                v50 = v29 + 1;
                v51 = (v48 >> 3) + 1;
                v52 = v51 & 0x3FFFFFFFFFFFFFFCLL;
                v49 = &v28[v52];
                v29 = (v29 + v52 * 8);
                v53 = (v28 + 2);
                v54 = v51 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v23 = v53[-1];
                  v55 = *v53;
                  v50[-1] = v23;
                  *v50 = v55;
                  v50 += 2;
                  v53 += 2;
                  v54 -= 4;
                }

                while (v54);
                if (v51 == (v51 & 0x3FFFFFFFFFFFFFFCLL))
                {
                  return v23.n128_f64[0];
                }
              }

              else
              {
                v49 = v28;
              }
            }

            else
            {
              v49 = v28;
            }

            do
            {
              v56 = *v49++;
              v29->n128_u64[0] = v56;
              v29 = (v29 + 8);
            }

            while (v49 != v26);
            return v23.n128_f64[0];
          }

          v31 = v27;
          v32 = *v27;
          v33 = *(v32 + 20);
          v34 = *(*v28 + 20);
          v35 = v33 > v34;
          v36 = v33 <= v34;
          v37 = v35;
          if (v35)
          {
            v38 = v32;
          }

          else
          {
            v38 = *v28;
          }

          v28 += v36;
          v39 = v37;
          v27 = &v31[v39];
          v29->n128_u64[0] = v38;
          v29 = (v29 + 8);
          v20 = (v20 + 8);
        }

        while (v28 != v26);
        if (v27 != v30)
        {
          v40 = v30 - v31 - v39 * 8 - 8;
          if (v40 <= 0x57)
          {
            goto LABEL_51;
          }

          if ((v20 - v31 - v39 * 8) < 0x20)
          {
            goto LABEL_51;
          }

          v41 = v29 + 1;
          v42 = (v40 >> 3) + 1;
          v43 = 8 * (v42 & 0x3FFFFFFFFFFFFFFCLL);
          v27 = (v27 + v43);
          v29 = (v29 + v43);
          v44 = &v31[v39 + 2];
          v45 = v42 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v23 = v44[-1];
            v46 = *v44;
            v41[-1] = v23;
            *v41 = v46;
            v41 += 2;
            v44 += 2;
            v45 -= 4;
          }

          while (v45);
          if (v42 != (v42 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_51:
            do
            {
              v47 = *v27++;
              v29->n128_u64[0] = v47;
              v29 = (v29 + 8);
            }

            while (v27 != v30);
          }
        }
      }

      else
      {
        sub_10009AC60(a1, v19, a3 >> 1, a4, a5);
        sub_10009AC60(v20 + v17, a2, v18, a4, a5);

        v23.n128_u64[0] = sub_10009B264(v20, v20 + v17, a2, v16, v18, a4, a5).n128_u64[0];
      }
    }

    else if (a1 != a2)
    {
      v7 = (a1 + 8);
      if ((a1 + 8) != a2)
      {
        v8 = 0;
        v9 = a1;
        do
        {
          v11 = *v9;
          v9 = v7;
          v12 = *v7;
          v13 = *(v12 + 20);
          if (v13 > *(v11 + 20))
          {
            v14 = v8;
            do
            {
              *(a1 + v14 + 8) = v11;
              if (!v14)
              {
                v10 = a1;
                goto LABEL_11;
              }

              v11 = *(a1 + v14 - 8);
              v14 -= 8;
            }

            while (v13 > *(v11 + 20));
            v10 = (a1 + v14 + 8);
LABEL_11:
            *v10 = v12;
          }

          v7 = v9 + 1;
          v8 += 8;
        }

        while (v9 + 1 != a2);
      }
    }
  }

  return v23.n128_f64[0];
}

uint64_t sub_10009AF88(uint64_t result, char *a2, uint64_t a3, uint64_t *a4)
{
  if (a3)
  {
    if (a3 == 1)
    {
LABEL_8:
      *a4 = *result;
      return result;
    }

    if (a3 == 2)
    {
      v6 = *(a2 - 1);
      v4 = (a2 - 8);
      v5 = v6;
      v7 = *(v6 + 20);
      v8 = *(*result + 20);
      if (v7 <= v8)
      {
        v5 = *result;
      }

      *a4++ = v5;
      if (v7 <= v8)
      {
        result = v4;
      }

      goto LABEL_8;
    }

    if (a3 > 8)
    {
      v19 = a3 >> 1;
      v20 = a3 >> 1;
      v21 = (v20 * 8 + result);
      v22 = result;
      v25 = a4;
      (sub_10009AC60)();
      result = sub_10009AC60(v21, a2, a3 - v19, &v25[v20], a3 - v19);
      v26 = v25;
      v27 = v21;
      do
      {
        if (v27 == a2)
        {
          if (v22 == v21)
          {
            return result;
          }

          v47 = &v21[-v22 - 8];
          if (v47 >= 0x38)
          {
            if (&v26[-v22] >= 0x20)
            {
              v49 = v25 + 2;
              v50 = (v47 >> 3) + 1;
              v51 = 8 * (v50 & 0x3FFFFFFFFFFFFFFCLL);
              v25 = (v25 + v51);
              v48 = (v22 + v51);
              v52 = (v22 + 16);
              v53 = v50 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v54 = *v52;
                *(v49 - 1) = *(v52 - 1);
                *v49 = v54;
                v52 += 2;
                v49 += 2;
                v53 -= 4;
              }

              while (v53);
              if (v50 == (v50 & 0x3FFFFFFFFFFFFFFCLL))
              {
                return result;
              }
            }

            else
            {
              v48 = v22;
            }
          }

          else
          {
            v48 = v22;
          }

          do
          {
            v55 = *v48++;
            *v25++ = v55;
          }

          while (v48 != v21);
          return result;
        }

        v28 = v27;
        v29 = *v27;
        v30 = *(v29 + 20);
        v31 = *(*v22 + 20);
        v32 = v30 > v31;
        v33 = v30 <= v31;
        v34 = v32;
        if (v32)
        {
          v35 = v29;
        }

        else
        {
          v35 = *v22;
        }

        v36 = 8 * v34;
        v27 = &v28[v36];
        v22 += 8 * v33;
        *v25++ = v35;
        v26 += 8;
      }

      while (v22 != v21);
      if (v27 != a2)
      {
        v37 = a2 - &v28[v36] - 8;
        if (v37 < 0x58)
        {
          goto LABEL_51;
        }

        if ((v26 - v28 - v36) < 0x20)
        {
          goto LABEL_51;
        }

        v38 = 0;
        v39 = (v37 >> 3) + 1;
        v40 = v39 & 0x3FFFFFFFFFFFFFFCLL;
        v41 = &v25[v40];
        v27 += v40 * 8;
        v42 = &v28[v36 + 16];
        v43 = v39 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v44 = &v25[v38];
          v45 = *v42;
          *v44 = *(v42 - 1);
          *(v44 + 1) = v45;
          v42 += 32;
          v38 += 4;
          v43 -= 4;
        }

        while (v43);
        v25 = v41;
        if (v39 != (v39 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_51:
          do
          {
            v46 = *v27;
            v27 += 8;
            *v25++ = v46;
          }

          while (v27 != a2);
        }
      }
    }

    else if (result != a2)
    {
      v9 = *result;
      result += 8;
      *a4 = v9;
      if (result != a2)
      {
        v10 = 0;
        v11 = a4;
        v12 = a4;
        do
        {
          while (1)
          {
            v14 = *v12++;
            v13 = v14;
            if (*(*result + 20) > *(v14 + 20))
            {
              break;
            }

            *v12 = *result;
            result += 8;
            v10 += 8;
            v11 = v12;
            if (result == a2)
            {
              return result;
            }
          }

          v11[1] = v13;
          v15 = a4;
          if (v11 != a4)
          {
            v16 = v10;
            while (1)
            {
              v15 = (a4 + v16);
              v17 = *(a4 + v16 - 8);
              if (*(*result + 20) <= *(v17 + 20))
              {
                break;
              }

              *v15 = v17;
              v16 -= 8;
              if (!v16)
              {
                v15 = a4;
                break;
              }
            }
          }

          v18 = *result;
          result += 8;
          *v15 = v18;
          v10 += 8;
          v11 = v12;
        }

        while (result != a2);
      }
    }
  }

  return result;
}

__n128 sub_10009B264(__n128 *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  if (!a5)
  {
    return result;
  }

  while (a5 > a7 && a4 > a7)
  {
    if (!a4)
    {
      return result;
    }

    v10 = 0;
    v11 = -a4;
    while (1)
    {
      v12 = a1->n128_i64[v10 / 8];
      if (*(*a2 + 20) > *(v12 + 20))
      {
        break;
      }

      v10 += 8;
      if (__CFADD__(v11++, 1))
      {
        return result;
      }
    }

    v14 = -v11;
    v78 = a3;
    __src = a6;
    v76 = (a1 + v10);
    v77 = a7;
    if (-v11 >= a5)
    {
      if (v11 == -1)
      {
        a1->n128_u64[v10 / 8] = *a2;
        *a2 = v12;
        return result;
      }

      v23 = v14 / 2;
      v24 = &a1->n128_u64[v14 / 2];
      v16 = a2;
      if (a2 != a3)
      {
        v25 = (a3 - a2) >> 3;
        v16 = a2;
        do
        {
          v26 = v25 >> 1;
          v27 = &v16[v25 >> 1];
          v29 = *v27;
          v28 = v27 + 1;
          v25 += ~(v25 >> 1);
          if (*(v29 + 20) > *(v24[v10 / 8] + 20))
          {
            v16 = v28;
          }

          else
          {
            v25 = v26;
          }
        }

        while (v25);
      }

      v15 = (v16 - a2) >> 3;
      v17 = &v24[v10 / 8];
    }

    else
    {
      v15 = a5 / 2;
      v16 = (a2 + 8 * (a5 / 2));
      v17 = a2;
      if (a2 - a1 != v10)
      {
        v18 = (a2 - a1 - v10) >> 3;
        v17 = a1 + v10;
        do
        {
          v19 = v18 >> 1;
          v20 = &v17[8 * (v18 >> 1)];
          v22 = *v20;
          v21 = v20 + 8;
          v18 += ~(v18 >> 1);
          if (*(*v16 + 20) > *(v22 + 20))
          {
            v18 = v19;
          }

          else
          {
            v17 = v21;
          }
        }

        while (v18);
      }

      v23 = (v17 - a1 - v10) >> 3;
    }

    a4 = -(v23 + v11);
    v30 = a5 - v15;
    v31 = a5;
    v32 = v23;
    v33 = sub_10009AAA4(v17, a2, v16);
    v34 = v32;
    v35 = v33;
    if (v34 + v15 >= v31 - (v34 + v15) - v11)
    {
      a6 = __src;
      v37 = v34;
      sub_10009B264(v33, v16, v78, a4, v30, __src, v77);
      a7 = v77;
      a4 = v37;
      a3 = v35;
      a1 = v76;
      a5 = v15;
      a2 = v17;
      if (!v15)
      {
        return result;
      }
    }

    else
    {
      a6 = __src;
      sub_10009B264(a1 + v10, v17, v33, v34, v15, __src, v77);
      a7 = v77;
      a1 = v35;
      a3 = v78;
      a5 = v30;
      a2 = v16;
      if (!v30)
      {
        return result;
      }
    }
  }

  if (a4 <= a5)
  {
    if (a2 != a1)
    {
      v47 = a2 - a1 - 8;
      v48 = a6;
      v49 = a1;
      if (v47 < 0x18)
      {
        goto LABEL_80;
      }

      v48 = a6;
      v49 = a1;
      if ((a6 - a1) <= 0x1F)
      {
        goto LABEL_80;
      }

      v50 = (v47 >> 3) + 1;
      v51 = 8 * (v50 & 0x3FFFFFFFFFFFFFFCLL);
      v48 = &a6[v51];
      v49 = (a1 + v51);
      v52 = a1 + 1;
      v53 = (a6 + 16);
      v54 = v50 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        result = v52[-1];
        v55 = *v52;
        v53[-1] = result;
        *v53 = v55;
        v52 += 2;
        v53 += 2;
        v54 -= 4;
      }

      while (v54);
      if (v50 != (v50 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_80:
        do
        {
          v56 = v49->n128_u64[0];
          v49 = (v49 + 8);
          *v48 = v56;
          v48 += 8;
        }

        while (v49 != a2);
      }

      while (a2 != a3)
      {
        v57 = *a2;
        v58 = *(*a2 + 20);
        v59 = *(*a6 + 20);
        v60 = v58 > v59;
        v61 = v58 <= v59;
        v62 = v60;
        if (!v60)
        {
          v57 = *a6;
        }

        a2 += 8 * v62;
        a6 += 8 * v61;
        a1->n128_u64[0] = v57;
        a1 = (a1 + 8);
        if (a6 == v48)
        {
          return result;
        }
      }

      memmove(a1, a6, v48 - a6);
    }

    return result;
  }

  if (a2 == a3)
  {
    return result;
  }

  v38 = a3 - a2 - 8;
  if (v38 < 0x18)
  {
    v39 = a6;
    v40 = a2;
  }

  else
  {
    v39 = a6;
    v40 = a2;
    if (&a6[-a2] > 0x1F)
    {
      v41 = (v38 >> 3) + 1;
      v42 = 8 * (v41 & 0x3FFFFFFFFFFFFFFCLL);
      v39 = &a6[v42];
      v40 = (a2 + v42);
      v43 = (a2 + 16);
      v44 = (a6 + 16);
      v45 = v41 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        result = v43[-1];
        v46 = *v43;
        v44[-1] = result;
        *v44 = v46;
        v43 += 2;
        v44 += 2;
        v45 -= 4;
      }

      while (v45);
      if (v41 == (v41 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_60;
      }
    }
  }

  do
  {
    v63 = *v40++;
    *v39 = v63;
    v39 += 8;
  }

  while (v40 != a3);
LABEL_60:
  v64 = a3;
  while (a2 != a1)
  {
    v65 = *(a2 - 8);
    if (*(*(v39 - 1) + 20) > *(v65 + 20))
    {
      a2 -= 8;
    }

    else
    {
      v65 = *(v39 - 1);
      v39 -= 8;
    }

    *--a3 = v65;
    v64 -= 8;
    if (v39 == a6)
    {
      return result;
    }
  }

  v66 = v39 - a6;
  if (v39 != a6)
  {
    v67 = v66 - 8;
    if ((v66 - 8) < 0x48 || (v39 - v64) < 0x20)
    {
      v68 = v39;
LABEL_71:
      v69 = a3 - 1;
      do
      {
        v70 = *(v68 - 1);
        v68 -= 8;
        *v69-- = v70;
      }

      while (v68 != a6);
      return result;
    }

    v71 = (a3 - 2);
    v72 = (v67 >> 3) + 1;
    v73 = 8 * (v72 & 0x3FFFFFFFFFFFFFFCLL);
    v68 = &v39[-v73];
    a3 = (a3 - v73);
    v74 = (v39 - 16);
    v75 = v72 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      result = *v74;
      v71[-1] = v74[-1];
      *v71 = result;
      v71 -= 2;
      v74 -= 2;
      v75 -= 4;
    }

    while (v75);
    if (v72 != (v72 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_71;
    }
  }

  return result;
}

double sub_10009B714(uint64_t a1, char *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v5 = *(a2 - 1);
      v6 = *a1;
      if (*(v5 + 12) > *(*a1 + 12))
      {
        *a1 = v5;
        *(a2 - 1) = v6;
      }
    }

    else if (a3 > 128)
    {
      v16 = a3 >> 1;
      v17 = 8 * (a3 >> 1);
      v18 = a3 - (a3 >> 1);
      v19 = (v17 + a1);
      v20 = a1;
      if (a3 <= a5)
      {
        sub_10009BA3C(a1, v19, a3 >> 1, a4);
        v26 = &a4[v16];
        sub_10009BA3C(v20 + v17, a2, v18, v26);
        v27 = v26;
        v28 = a4;
        v29 = v20;
        v30 = &a4[a3];
        do
        {
          if (v27 == v30)
          {
            if (v28 == v26)
            {
              return v23.n128_f64[0];
            }

            v48 = &a4[v17 / 8] - v28 - 8;
            if (v48 >= 0x38)
            {
              if ((v20 - v28) >= 0x20)
              {
                v50 = v29 + 1;
                v51 = (v48 >> 3) + 1;
                v52 = v51 & 0x3FFFFFFFFFFFFFFCLL;
                v49 = &v28[v52];
                v29 = (v29 + v52 * 8);
                v53 = (v28 + 2);
                v54 = v51 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v23 = v53[-1];
                  v55 = *v53;
                  v50[-1] = v23;
                  *v50 = v55;
                  v50 += 2;
                  v53 += 2;
                  v54 -= 4;
                }

                while (v54);
                if (v51 == (v51 & 0x3FFFFFFFFFFFFFFCLL))
                {
                  return v23.n128_f64[0];
                }
              }

              else
              {
                v49 = v28;
              }
            }

            else
            {
              v49 = v28;
            }

            do
            {
              v56 = *v49++;
              v29->n128_u64[0] = v56;
              v29 = (v29 + 8);
            }

            while (v49 != v26);
            return v23.n128_f64[0];
          }

          v31 = v27;
          v32 = *v27;
          v33 = *(v32 + 12);
          v34 = *(*v28 + 12);
          v35 = v33 > v34;
          v36 = v33 <= v34;
          v37 = v35;
          if (v35)
          {
            v38 = v32;
          }

          else
          {
            v38 = *v28;
          }

          v28 += v36;
          v39 = v37;
          v27 = &v31[v39];
          v29->n128_u64[0] = v38;
          v29 = (v29 + 8);
          v20 = (v20 + 8);
        }

        while (v28 != v26);
        if (v27 != v30)
        {
          v40 = v30 - v31 - v39 * 8 - 8;
          if (v40 <= 0x57)
          {
            goto LABEL_51;
          }

          if ((v20 - v31 - v39 * 8) < 0x20)
          {
            goto LABEL_51;
          }

          v41 = v29 + 1;
          v42 = (v40 >> 3) + 1;
          v43 = 8 * (v42 & 0x3FFFFFFFFFFFFFFCLL);
          v27 = (v27 + v43);
          v29 = (v29 + v43);
          v44 = &v31[v39 + 2];
          v45 = v42 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v23 = v44[-1];
            v46 = *v44;
            v41[-1] = v23;
            *v41 = v46;
            v41 += 2;
            v44 += 2;
            v45 -= 4;
          }

          while (v45);
          if (v42 != (v42 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_51:
            do
            {
              v47 = *v27++;
              v29->n128_u64[0] = v47;
              v29 = (v29 + 8);
            }

            while (v27 != v30);
          }
        }
      }

      else
      {
        sub_10009B714(a1, v19, a3 >> 1, a4, a5);
        sub_10009B714(v20 + v17, a2, v18, a4, a5);

        v23.n128_u64[0] = sub_10009A5F4(v20, v20 + v17, a2, v16, v18, a4, a5).n128_u64[0];
      }
    }

    else if (a1 != a2)
    {
      v7 = (a1 + 8);
      if ((a1 + 8) != a2)
      {
        v8 = 0;
        v9 = a1;
        do
        {
          v11 = *v9;
          v9 = v7;
          v12 = *v7;
          v13 = *(v12 + 12);
          if (v13 > *(v11 + 12))
          {
            v14 = v8;
            do
            {
              *(a1 + v14 + 8) = v11;
              if (!v14)
              {
                v10 = a1;
                goto LABEL_11;
              }

              v11 = *(a1 + v14 - 8);
              v14 -= 8;
            }

            while (v13 > *(v11 + 12));
            v10 = (a1 + v14 + 8);
LABEL_11:
            *v10 = v12;
          }

          v7 = v9 + 1;
          v8 += 8;
        }

        while (v9 + 1 != a2);
      }
    }
  }

  return v23.n128_f64[0];
}