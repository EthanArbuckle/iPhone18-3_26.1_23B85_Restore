char **sub_100135EC8(uint64_t a1, _OWORD *a2)
{
  v9 = 0;
  v4 = sub_100139328(a1, a2, &v9);
  v5 = v9;
  if ((v4 & 1) == 0)
  {
    v10 = v9;
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (4 * v6 + 4 >= 3 * v7)
    {
      v7 *= 2;
    }

    else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
    {
      *(a1 + 8) = v6 + 1;
      if (*v5 == -1)
      {
LABEL_6:
        *v5 = *a2;
        v5[2] = (v5 + 4);
        v5[3] = 0x600000000;
        return v5 + 2;
      }

LABEL_5:
      --*(a1 + 12);
      goto LABEL_6;
    }

    sub_100139570(a1, v7);
    sub_100139328(a1, a2, &v10);
    v5 = v10;
    ++*(a1 + 8);
    if (*v5 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  return v5 + 2;
}

uint64_t sub_100135FD4(uint64_t *a1, uint64_t a2, uint64_t a3, _DWORD *a4, _DWORD *a5, _OWORD *a6)
{
  if ((atomic_load_explicit(&qword_1002C0D88, memory_order_acquire) & 1) == 0)
  {
    v13 = a3;
    v14 = a6;
    v12 = a5;
    v15 = a2;
    v16 = a4;
    sub_10027F7C0();
    a2 = v15;
    a4 = v16;
    a3 = v13;
    a6 = v14;
    a5 = v12;
  }

  v7 = qword_1002C0D80;
  v21[0] = a2;
  v21[1] = a3;
  v8 = *a5;
  v19[0] = *a4;
  v19[1] = v8;
  v20 = *a6;
  v9 = 0xBF58476D1CE4E5B9 * ((969526130 * sub_1001397C4(v20, (v20 + 8 * *(&v20 + 1)))) | ((37 * v8) << 32));
  v10 = 0xBF58476D1CE4E5B9 * ((v9 >> 31) ^ v9 | ((37 * v19[0]) << 32));
  v17[0] = v19;
  v17[1] = v21;
  v18 = v19;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, v7, (v10 >> 31) ^ v10, sub_10013A0E8, &v18, sub_10013A160, v17);
}

uint64_t mlir::AffineMap::get(int a1, int a2, uint64_t a3)
{
  v8 = a3;
  v14 = a3;
  Context = mlir::AffineExpr::getContext(&v8);
  *&v13 = &v14;
  *(&v13 + 1) = 1;
  v11 = a2;
  v12 = a1;
  v10 = Context;
  v6 = *Context;
  v9 = &v10;
  return sub_100135FD4((v6 + 352), sub_10013A2A4, &v9, &v12, &v11, &v13);
}

uint64_t mlir::AffineMap::get(int a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v11 = a3;
  *(&v11 + 1) = a4;
  v10 = a1;
  v9 = a2;
  v5 = *a5;
  v7 = &v8;
  v8 = a5;
  return sub_100135FD4((v5 + 352), sub_10013A2A4, &v7, &v10, &v9, &v11);
}

uint64_t mlir::IntegerSet::get(int a1, int a2, mlir::AffineExpr *this, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v12 = this;
  *(&v12 + 1) = a4;
  *&v11 = a5;
  *(&v11 + 1) = a6;
  v9 = a2;
  v10 = a1;
  Context = mlir::AffineExpr::getContext(this);
  return sub_100136260((*Context + 352), nullsub_210, &v8, &v10, &v9, &v12, &v11);
}

uint64_t sub_100136260(uint64_t *a1, uint64_t a2, uint64_t a3, _DWORD *a4, _DWORD *a5, _OWORD *a6, _OWORD *a7)
{
  if ((atomic_load_explicit(&qword_1002C0DB0, memory_order_acquire) & 1) == 0)
  {
    v20 = a5;
    v21 = a7;
    v17 = a6;
    v18 = a4;
    v22 = a3;
    v19 = a2;
    sub_10027F814();
    a2 = v19;
    a5 = v20;
    a7 = v21;
    a3 = v22;
    a4 = v18;
    a6 = v17;
  }

  v8 = qword_1002C0DA8;
  v28[0] = a2;
  v28[1] = a3;
  v9 = *a5;
  v25[0] = *a4;
  v25[1] = v9;
  v10 = *a7;
  v26 = *a6;
  v27 = v10;
  v11 = (37 * v9);
  v12 = sub_1001397C4(v26, (v26 + 8 * *(&v26 + 1)));
  v13 = 0xBF58476D1CE4E5B9 * ((969526130 * sub_10002C76C(v27, v27 + *(&v27 + 1))) | (v12 << 32));
  v14 = 0xBF58476D1CE4E5B9 * ((v13 >> 31) ^ v13 | (v11 << 32));
  v15 = 0xBF58476D1CE4E5B9 * ((v14 >> 31) ^ v14 | ((37 * v25[0]) << 32));
  v23[0] = v25;
  v23[1] = v28;
  v24 = v25;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, v8, (v15 >> 31) ^ v15, sub_10013A2B4, &v24, sub_10013A35C, v23);
}

uint64_t sub_1001363B8(uint64_t a1)
{
  *a1 = off_1002B72A8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void sub_100136438(uint64_t a1)
{
  *a1 = off_1002B72A8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  operator delete();
}

void sub_100136734(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1002B7778;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100136788(uint64_t a1)
{
  std::recursive_mutex::~recursive_mutex((a1 + 64));
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = -24 * v3;
    v5 = &v2[24 * v3 - 24];
    do
    {
      v5 = sub_100136810(v5) - 3;
      v4 += 24;
    }

    while (v4);
    v2 = *(a1 + 24);
  }

  if (v2 != (a1 + 40))
  {

    free(v2);
  }
}

uint64_t *sub_100136810(uint64_t *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = a1[1];
      if (v4)
      {
        *v4 = 0;
        atomic_store(0, (v4 + 8));
      }

      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v5 = v3;
        (v3->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    v6 = a1[2];
    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v7 = *a1;
  *a1 = 0;
  if (v7)
  {
    sub_10003EA00(v7);
    operator delete();
  }

  return a1;
}

uint64_t sub_1001368C4(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t **a4)
{
  v35 = 0;
  v7 = (a1 + 16);
  v8 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 16, &v35);
  v9 = *(a1 + 8);
  v10 = 16 * v9;
  v11 = &v8[16 * v9];
  v12 = **a3;
  v13 = **a4;
  **a4 = 0;
  *v11 = v12;
  *(v11 + 1) = v13;
  v14 = *a1;
  if (!v9)
  {
    goto LABEL_10;
  }

  v15 = (v9 - 1) & 0xFFFFFFFFFFFFFFFLL;
  if (v15 < 0xB || (v14 + 8 < &v8[v10] ? (v25 = v8 + 8 >= &v14[v10]) : (v25 = 1), v25 ? (v26 = 0) : (v26 = 1), v14 < &v8[v10 - 8] ? (v27 = v8 >= &v14[v10 - 8]) : (v27 = 1), !v27 || (v26 & 1) != 0))
  {
    v16 = v8;
    v17 = *a1;
    do
    {
LABEL_4:
      v18 = *v17;
      v19 = *(v17 + 1);
      *(v17 + 1) = 0;
      *v16 = v18;
      *(v16 + 1) = v19;
      v16 += 16;
      v17 += 16;
    }

    while (v17 != &v14[v10]);
    goto LABEL_5;
  }

  v28 = v15 + 1;
  v29 = (v15 + 1) & 0x1FFFFFFFFFFFFFFELL;
  v16 = &v8[16 * v29];
  v17 = &v14[16 * v29];
  v30 = v29;
  v31 = v8;
  v32 = *a1;
  do
  {
    v33 = *v32;
    v34 = *(v32 + 1);
    *(v32 + 1) = 0;
    *(v32 + 3) = 0;
    *v31 = v33;
    *(v31 + 1) = v34;
    v31 += 32;
    v32 += 32;
    v30 -= 2;
  }

  while (v30);
  if (v28 != v29)
  {
    goto LABEL_4;
  }

LABEL_5:
  v20 = v14 - 8;
  do
  {
    v21 = *&v20[v10];
    *&v20[v10] = 0;
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    v10 -= 16;
  }

  while (v10);
  v14 = *a1;
LABEL_10:
  v22 = v35;
  if (v14 != v7)
  {
    free(v14);
  }

  *a1 = v8;
  v23 = *(a1 + 8) + 1;
  *(a1 + 8) = v23;
  *(a1 + 12) = v22;
  return &v8[16 * v23 - 16];
}

BOOL sub_100136A74(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 16);
  v3 = *(*a2 + 16);
  if (v3 >= v2)
  {
    v4 = *(*a1 + 16);
  }

  else
  {
    v4 = *(*a2 + 16);
  }

  if (v4)
  {
    v5 = memcmp(*(*a1 + 8), *(*a2 + 8), v4);
    if (v5)
    {
      return v5 >> 31;
    }
  }

  if (v2 == v3)
  {
    return 0;
  }

  return v2 < v3;
}

uint64_t sub_100136AD8(uint64_t *a1)
{
  off_1002C3438();
  if ((*v2 & 1) == 0)
  {
    sub_10027F868();
  }

  off_1002C3420();
  v4 = *a1;
  v19 = *a1;
  v5 = v3 + 8;
  if (*v3)
  {
    v6 = 4;
  }

  else
  {
    v6 = *(v3 + 16);
    if (!v6)
    {
      v14 = 0;
      goto LABEL_13;
    }

    v5 = *(v3 + 8);
  }

  v7 = v6 - 1;
  v8 = v7 & ((v4 >> 4) ^ (v4 >> 9));
  v9 = v5 + 40 * v8;
  v10 = *v9;
  if (v4 != *v9)
  {
    v15 = 0;
    v16 = 1;
    while (v10 != -4096)
    {
      if (v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = v10 == -8192;
      }

      if (v17)
      {
        v15 = v9;
      }

      v18 = v8 + v16++;
      v8 = v18 & v7;
      v9 = v5 + 40 * v8;
      v10 = *v9;
      if (v4 == *v9)
      {
        goto LABEL_8;
      }
    }

    if (v15)
    {
      v14 = v15;
    }

    else
    {
      v14 = v9;
    }

LABEL_13:
    sub_10013731C(v3, v14, &v19);
  }

LABEL_8:
  result = **(v9 + 8);
  if (!result)
  {
    std::recursive_mutex::lock((*a1 + 40));
    v12 = *(*a1 + 8);
    if (v12 < *(*a1 + 12))
    {
      v13 = **a1 + 24 * v12;
      operator new();
    }

    sub_100137958(*a1);
  }

  return result;
}

void sub_100136D1C(int *a1)
{
  v2 = *a1;
  if (*a1 <= 1)
  {
    if (v2)
    {
      v3 = a1 + 2;
      v4 = a1 + 42;
      v5 = 4;
    }

    else
    {
      v3 = *(a1 + 1);
      v5 = a1[4];
      v4 = &v3[10 * v5];
    }

    v7 = &v3[10 * v5];
    if (!v2)
    {
      goto LABEL_16;
    }

LABEL_12:
    v8 = (a1 + 42);
    if (v4 == a1 + 42)
    {
      return;
    }

    goto LABEL_17;
  }

  if (v2)
  {
    v4 = a1 + 2;
    v7 = a1 + 42;
LABEL_8:
    while ((*v4 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v4 += 10;
      if (v4 == v7)
      {
        v4 = v7;
        break;
      }
    }

    if (*a1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = *(a1 + 1);
    v6 = a1[4];
    v7 = &v4[10 * v6];
    if (v6)
    {
      goto LABEL_8;
    }
  }

LABEL_16:
  v8 = *(a1 + 1) + 40 * a1[4];
  if (v4 == v8)
  {
    return;
  }

LABEL_17:
  v9 = v4 + 10;
  if (v4 + 10 != v7)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v11 = atomic_load((*(v4 + 1) + 8));
    if ((v11 & 1) == 0)
    {
      v12 = *(v4 + 4);
      if (v12)
      {
        std::__shared_weak_count::__release_weak(v12);
      }

      v13 = *(v4 + 2);
      if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
      }

      *v4 = -8192;
      v10 = a1[1] + 1;
      *a1 -= 2;
      a1[1] = v10;
    }

    v4 = v9;
    if (v9 == v8)
    {
      break;
    }

    v9 += 10;
    if (v4 + 10 != v7)
    {
      do
      {
LABEL_22:
        if ((*v9 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          break;
        }

        v9 += 10;
      }

      while (v9 != v7);
    }
  }
}

int *sub_100136ECC(uint64_t a1)
{
  v2 = *a1;
  if (*a1 <= 1u)
  {
    if (v2)
    {
      v3 = a1 + 8;
      v4 = a1 + 168;
      v5 = 4;
    }

    else
    {
      v3 = *(a1 + 8);
      v5 = *(a1 + 16);
      v4 = v3 + 40 * v5;
    }

    v7 = v3 + 40 * v5;
    if (!v2)
    {
      goto LABEL_16;
    }

LABEL_12:
    v8 = a1 + 168;
    if (v4 == a1 + 168)
    {
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  if (v2)
  {
    v4 = a1 + 8;
    v7 = a1 + 168;
LABEL_8:
    while ((*v4 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v4 += 40;
      if (v4 == v7)
      {
        v4 = v7;
        break;
      }
    }

    if (*a1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = *(a1 + 8);
    v6 = *(a1 + 16);
    v7 = v4 + 40 * v6;
    if (v6)
    {
      goto LABEL_8;
    }
  }

LABEL_16:
  v8 = *(a1 + 8) + 40 * *(a1 + 16);
  if (v4 == v8)
  {
    goto LABEL_28;
  }

  do
  {
LABEL_19:
    v9 = *(v4 + 32);
    if (v9)
    {
      v10 = std::__shared_weak_count::lock(v9);
      if (v10)
      {
        v11 = v10;
        v12 = *(v4 + 24);
        if (v12)
        {
          sub_100137054(v12, **(v4 + 8));
        }

        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }
    }

    do
    {
      v4 += 40;
    }

    while (v4 != v7 && (*v4 | 0x1000) == 0xFFFFFFFFFFFFF000);
  }

  while (v4 != v8);
LABEL_28:

  return sub_100137168(a1);
}

void sub_100137054(uint64_t a1, uint64_t a2)
{
  std::recursive_mutex::lock((a1 + 40));
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a1 + 24 * v5;
  v7 = *a1;
  if (v5)
  {
    v8 = 24 * v5;
    v7 = *a1;
    while (*v7 != a2)
    {
      v7 += 3;
      v8 -= 24;
      if (!v8)
      {
        v7 = (*a1 + 24 * v5);
        break;
      }
    }
  }

  if (v7 + 3 != v6)
  {
    v9 = v7 + 4;
    do
    {
      v11 = *(v9 - 1);
      *(v9 - 1) = 0;
      v12 = *(v9 - 4);
      *(v9 - 4) = v11;
      if (v12)
      {
        sub_10003EA00(v12);
        operator delete();
      }

      v13 = *v9;
      *v9 = 0;
      v9[1] = 0;
      v14 = *(v9 - 2);
      *(v9 - 3) = v13;
      if (v14)
      {
        std::__shared_weak_count::__release_weak(v14);
      }

      v10 = v9 + 2;
      v9 += 3;
    }

    while (v10 != v6);
    LODWORD(v5) = *(a1 + 8);
    v4 = *a1;
  }

  v15 = v5 - 1;
  *(a1 + 8) = v15;
  sub_100136810(&v4[3 * v15]);

  std::recursive_mutex::unlock((a1 + 40));
}

int *sub_100137168(int *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v4 = a1 + 2;
    v3 = 4;
  }

  else
  {
    v3 = a1[4];
    if (!v3)
    {
      goto LABEL_14;
    }

    v4 = *(a1 + 1);
  }

  v5 = (v4 + 4);
  v6 = 40 * v3;
  do
  {
    if ((*(v5 - 2) | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v7 = v5[2];
      if (v7)
      {
        std::__shared_weak_count::__release_weak(v7);
      }

      v8 = *v5;
      if (*v5 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }
    }

    v5 += 5;
    v6 -= 40;
  }

  while (v6);
  v2 = *a1;
LABEL_14:
  if ((v2 & 1) == 0)
  {
    llvm::deallocate_buffer(*(a1 + 1), (40 * a1[4]), 8uLL);
  }

  return a1;
}

uint64_t sub_100137260(uint64_t a1, void *a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
LABEL_5:
    v5 = v4 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
    v7 = (v3 + 40 * v6);
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
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v3 + 40 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_8;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }

    return result;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v3 = *(a1 + 8);
    goto LABEL_5;
  }

  v7 = 0;
  result = 0;
LABEL_8:
  *a3 = v7;
  return result;
}

void sub_10013731C(_DWORD *a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v9 = a2;
  v4 = *a1;
  v5 = *a1 >> 1;
  if (*a1)
  {
    v6 = 4;
  }

  else
  {
    v6 = a1[4];
  }

  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - a1[1] > v6 >> 3)
  {
    goto LABEL_6;
  }

  v7 = a1;
  v8 = a3;
  sub_100137450(a1, v6);
  sub_100137260(v7, v8, &v9);
  a1 = v7;
  a3 = v8;
  v4 = *v7;
  v3 = v9;
LABEL_6:
  *a1 = v4 + 2;
  if (*v3 != -4096)
  {
    --a1[1];
  }

  *v3 = *a3;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  operator new();
}

void sub_100137450(uint64_t a1, unsigned int a2)
{
  v2 = (a2 - 1) | ((a2 - 1) >> 1);
  v3 = v2 | (v2 >> 2) | ((v2 | (v2 >> 2)) >> 4);
  v4 = ((v3 | (v3 >> 8)) >> 16) | v3 | (v3 >> 8);
  if ((v4 + 1) > 0x40)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 64;
  }

  if (a2 >= 5)
  {
    v6 = v5;
  }

  else
  {
    v6 = a2;
  }

  if (*a1)
  {
    v9 = &v18;
    if ((*(a1 + 8) | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v10 = *(a1 + 48);
      if ((v10 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v18 = *(a1 + 8);
      v17 = *(a1 + 32);
      v19 = *(a1 + 16);
      v20 = v17;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      v9 = &v21;
      v10 = *(a1 + 48);
      if ((v10 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
LABEL_12:
        v11 = *(a1 + 88);
        if ((v11 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          goto LABEL_13;
        }

        goto LABEL_23;
      }
    }

    *v9 = v10;
    *(v9 + 1) = *(a1 + 56);
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(v9 + 3) = *(a1 + 72);
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    v9 += 5;
    v11 = *(a1 + 88);
    if ((v11 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
LABEL_13:
      v12 = *(a1 + 128);
      if ((v12 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        goto LABEL_14;
      }

      goto LABEL_24;
    }

LABEL_23:
    *v9 = v11;
    *(v9 + 1) = *(a1 + 96);
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(v9 + 3) = *(a1 + 112);
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    v9 += 5;
    v12 = *(a1 + 128);
    if ((v12 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
LABEL_14:
      if (v6 < 5)
      {
LABEL_16:
        sub_1001376BC(a1, &v18, v9);
        return;
      }

LABEL_15:
      *a1 &= ~1u;
      v13 = a1;
      buffer = llvm::allocate_buffer((8 * (v6 + 4 * v6)), 8uLL);
      a1 = v13;
      *(v13 + 8) = buffer;
      *(v13 + 16) = v6;
      goto LABEL_16;
    }

LABEL_24:
    *v9 = v12;
    *(v9 + 1) = *(a1 + 136);
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    *(v9 + 3) = *(a1 + 152);
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    v9 += 5;
    if (v6 < 5)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v6 > 4)
  {
    v15 = a1;
    v16 = llvm::allocate_buffer((8 * (v6 + 4 * v6)), 8uLL);
    a1 = v15;
    *(v15 + 8) = v16;
    *(v15 + 16) = v6;
  }

  else
  {
    *a1 |= 1u;
  }

  sub_1001376BC(a1, v7, &v7[5 * v8]);

  llvm::deallocate_buffer(v7, (40 * v8), 8uLL);
}

void sub_1001376BC(int *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = *a1;
  *a1 = *a1 & 1;
  v7 = a1 + 2;
  if (v6)
  {
    v10 = (a1 + 42);
    v9 = (a1 + 2);
    v11 = 120;
  }

  else
  {
    v8 = a1[4];
    if (!v8)
    {
      goto LABEL_11;
    }

    v9 = *(a1 + 1);
    v10 = &v9[40 * v8];
    v11 = v10 - v9 - 40;
    if (v11 < 0x28)
    {
      v13 = *(a1 + 1);
      do
      {
LABEL_10:
        *v13 = -4096;
        v13 += 40;
      }

      while (v13 != v10);
      goto LABEL_11;
    }
  }

  v12 = v11 / 0x28 + 1;
  v13 = &v9[40 * (v12 & 0xFFFFFFFFFFFFFFELL)];
  v14 = v12 & 0xFFFFFFFFFFFFFFELL;
  do
  {
    *v9 = -4096;
    *(v9 + 5) = -4096;
    v9 += 80;
    v14 -= 2;
  }

  while (v14);
  if (v12 != (v12 & 0xFFFFFFFFFFFFFFELL))
  {
    goto LABEL_10;
  }

LABEL_11:
  if (a2 != a3)
  {
    do
    {
      v15 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (*a1)
        {
          v17 = 3;
          v16 = v7;
        }

        else
        {
          v16 = *(a1 + 1);
          v17 = a1[4] - 1;
        }

        v18 = v17 & ((v15 >> 4) ^ (v15 >> 9));
        v19 = &v16[10 * v18];
        v20 = *v19;
        if (v15 != *v19)
        {
          v23 = 0;
          v24 = 1;
          while (v20 != -4096)
          {
            if (v23)
            {
              v25 = 0;
            }

            else
            {
              v25 = v20 == -8192;
            }

            if (v25)
            {
              v23 = v19;
            }

            v26 = v18 + v24++;
            v18 = v26 & v17;
            v19 = &v16[10 * (v26 & v17)];
            v20 = *v19;
            if (v15 == *v19)
            {
              goto LABEL_19;
            }
          }

          if (v23)
          {
            v19 = v23;
          }
        }

LABEL_19:
        *v19 = v15;
        *(v19 + 1) = *(v4 + 1);
        v4[1] = 0;
        v4[2] = 0;
        *(v19 + 3) = *(v4 + 3);
        v4[3] = 0;
        v4[4] = 0;
        *a1 += 2;
        v21 = v4[4];
        if (v21)
        {
          std::__shared_weak_count::__release_weak(v21);
        }

        v22 = v4[2];
        if (v22)
        {
          if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v22->__on_zero_shared)(v22);
            std::__shared_weak_count::__release_weak(v22);
          }
        }
      }

      v4 += 5;
    }

    while (v4 != a3);
  }
}

void sub_1001378FC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1002B77B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100137958(uint64_t a1)
{
  v2 = 0;
  v1 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 24, &v2) + 24 * *(a1 + 8);
  operator new();
}

uint64_t sub_100137BAC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    *(result + 368) = off_1002B4118;
    v2 = result + 520;
    v3 = *(result + 544);
    if (v3 == v2)
    {
      (*(*v3 + 32))(v3);
      *(v1 + 368) = &off_1002B3FB8;
      if ((*(v1 + 476) & 1) == 0)
      {
LABEL_6:
        free(*(v1 + 456));
      }
    }

    else
    {
      if (v3)
      {
        (*(*v3 + 40))(v3);
      }

      *(v1 + 368) = &off_1002B3FB8;
      if ((*(v1 + 476) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v4 = *(v1 + 432);
    if (v4 != (v1 + 448))
    {
      free(v4);
    }

    *(v1 + 184) = off_1002B4118;
    v5 = *(v1 + 360);
    if (v5 == v1 + 336)
    {
      (*(*v5 + 32))(v5);
      *(v1 + 184) = &off_1002B3FB8;
      if ((*(v1 + 292) & 1) == 0)
      {
LABEL_13:
        free(*(v1 + 272));
      }
    }

    else
    {
      if (v5)
      {
        (*(*v5 + 40))(v5);
      }

      *(v1 + 184) = &off_1002B3FB8;
      if ((*(v1 + 292) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v6 = *(v1 + 248);
    if (v6 != (v1 + 264))
    {
      free(v6);
    }

    *v1 = off_1002B4118;
    v7 = *(v1 + 176);
    if (v7 == v1 + 152)
    {
      (*(*v7 + 32))(v7);
      *v1 = &off_1002B3FB8;
      if ((*(v1 + 108) & 1) == 0)
      {
LABEL_20:
        free(*(v1 + 88));
      }
    }

    else
    {
      if (v7)
      {
        (*(*v7 + 40))(v7);
      }

      *v1 = &off_1002B3FB8;
      if ((*(v1 + 108) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v8 = *(v1 + 64);
    if (v8 != (v1 + 80))
    {
      free(v8);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_100137EA0(uint64_t a1, const char *a2, _OWORD *a3)
{
  *a1 = &off_1002B3FB8;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  v6 = (a1 + 80);
  *(a1 + 64) = a1 + 80;
  v7 = a1 + 64;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = &_mh_execute_header;
  *(a1 + 88) = a1 + 112;
  *(a1 + 96) = 1;
  *(a1 + 104) = 0;
  *(a1 + 108) = 1;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v9 = *(a1 + 72);
  if (v9 >= *(a1 + 76))
  {
    v12 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v7, v6, v9 + 1, 8);
    GeneralCategory = v12;
    LODWORD(v9) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v9) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 120) = 0;
  *(a1 + 128) = &off_1002B4180;
  *(a1 + 136) = 0;
  *a1 = off_1002B4118;
  *(a1 + 144) = off_1002B4020;
  *(a1 + 152) = off_1002B41A0;
  *(a1 + 176) = a1 + 152;
  v10 = strlen(a2);
  llvm::cl::Option::setArgStr(a1, a2, v10);
  *(a1 + 32) = *a3;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

uint64_t sub_100138048(uint64_t a1, const char *a2, _OWORD *a3, _BYTE **a4)
{
  *a1 = &off_1002B3FB8;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  v8 = (a1 + 80);
  *(a1 + 64) = a1 + 80;
  v9 = a1 + 64;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = &_mh_execute_header;
  *(a1 + 88) = a1 + 112;
  *(a1 + 96) = 1;
  *(a1 + 104) = 0;
  *(a1 + 108) = 1;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v11 = *(a1 + 72);
  if (v11 >= *(a1 + 76))
  {
    v15 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v9, v8, v11 + 1, 8);
    GeneralCategory = v15;
    LODWORD(v11) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v11) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 120) = 0;
  *(a1 + 128) = &off_1002B4180;
  *(a1 + 136) = 0;
  *a1 = off_1002B4118;
  *(a1 + 144) = off_1002B4020;
  *(a1 + 152) = off_1002B41A0;
  *(a1 + 176) = a1 + 152;
  v12 = strlen(a2);
  llvm::cl::Option::setArgStr(a1, a2, v12);
  *(a1 + 32) = *a3;
  v13 = *a4;
  *(a1 + 120) = **a4;
  *(a1 + 137) = 1;
  *(a1 + 136) = *v13;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

uint64_t sub_100138214(uint64_t a1)
{
  if (*(a1 + 368))
  {
    v2 = *(a1 + 376);
    if (v2)
    {
      v3 = 16 * v2;
      v4 = *(a1 + 360);
      while ((*v4 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v4 += 2;
        v3 -= 16;
        if (!v3)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      v4 = *(a1 + 360);
    }

    v15 = *(a1 + 360) + 16 * v2;
    while (v4 != v15)
    {
      v16 = v4[1];
      v17 = *(v16 + 96);
      if (v17 >= 8)
      {
        if ((v17 & 4) != 0)
        {
          v18 = (v16 + 72);
          if ((v17 & 2) == 0)
          {
            v18 = *v18;
          }

          (*((v17 & 0xFFFFFFFFFFFFFFF8) + 16))(v18);
        }

        if ((v17 & 2) == 0)
        {
          llvm::deallocate_buffer(*(v16 + 72), *(v16 + 80), *(v16 + 88));
        }
      }

      v19 = *(v16 + 8);
      v20 = *(v16 + 16);
      if (v20)
      {
        v21 = 16 * v20;
        v22 = v19 + 1;
        do
        {
          v23 = *v22;
          v22 += 2;
          free(v23);
          v21 -= 16;
        }

        while (v21);
        v19 = *(v16 + 8);
      }

      if (v19 != (v16 + 24))
      {
        free(v19);
      }

      do
      {
        v4 += 2;
      }

      while (v4 != v15 && (*v4 | 0x1000) == 0xFFFFFFFFFFFFF000);
    }
  }

LABEL_6:
  if (*(a1 + 544))
  {
    v5 = *(a1 + 552);
    if (v5)
    {
      v6 = 16 * v5;
      v7 = *(a1 + 536);
      while ((*v7 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v7 += 2;
        v6 -= 16;
        if (!v6)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      v7 = *(a1 + 536);
    }

    v24 = *(a1 + 536) + 16 * v5;
    while (v7 != v24)
    {
      v25 = v7[1];
      v26 = *(v25 + 96);
      if (v26 >= 8)
      {
        if ((v26 & 4) != 0)
        {
          v27 = (v25 + 72);
          if ((v26 & 2) == 0)
          {
            v27 = *v27;
          }

          (*((v26 & 0xFFFFFFFFFFFFFFF8) + 16))(v27);
        }

        if ((v26 & 2) == 0)
        {
          llvm::deallocate_buffer(*(v25 + 72), *(v25 + 80), *(v25 + 88));
        }
      }

      v28 = *(v25 + 8);
      v29 = *(v25 + 16);
      if (v29)
      {
        v30 = 16 * v29;
        v31 = v28 + 1;
        do
        {
          v32 = *v31;
          v31 += 2;
          free(v32);
          v30 -= 16;
        }

        while (v30);
        v28 = *(v25 + 8);
      }

      if (v28 != (v25 + 24))
      {
        free(v28);
      }

      do
      {
        v7 += 2;
      }

      while (v7 != v24 && (*v7 | 0x1000) == 0xFFFFFFFFFFFFF000);
    }
  }

LABEL_11:
  v8 = *(a1 + 744);
  if (!v8 || atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v9 = *(a1 + 728);
    v10 = *(a1 + 712);
    if (v9)
    {
      goto LABEL_14;
    }

LABEL_59:
    v14 = 0;
    goto LABEL_60;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  v9 = *(a1 + 728);
  v10 = *(a1 + 712);
  if (!v9)
  {
    goto LABEL_59;
  }

LABEL_14:
  v11 = 80 * v9;
  v12 = v10 + 32;
  do
  {
    if (*(v12 - 4) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v13 = *(v12 - 2);
      if (v12 != v13)
      {
        free(v13);
      }
    }

    v12 += 80;
    v11 -= 80;
  }

  while (v11);
  v10 = *(a1 + 712);
  v14 = 80 * *(a1 + 728);
LABEL_60:
  llvm::deallocate_buffer(v10, v14, 8uLL);
  std::recursive_mutex::~recursive_mutex((a1 + 640));
  llvm::deallocate_buffer(*(a1 + 568), (24 * *(a1 + 584)), 8uLL);
  mlir::StorageUniquer::~StorageUniquer((a1 + 560));
  llvm::deallocate_buffer(*(a1 + 536), (16 * *(a1 + 552)), 8uLL);
  llvm::deallocate_buffer(*(a1 + 392), (24 * *(a1 + 408)), 8uLL);
  mlir::StorageUniquer::~StorageUniquer((a1 + 384));
  llvm::deallocate_buffer(*(a1 + 360), (16 * *(a1 + 376)), 8uLL);
  mlir::StorageUniquer::~StorageUniquer((a1 + 352));
  llvm::sys::RWMutexImpl::~RWMutexImpl((a1 + 336));
  v33 = *(a1 + 320);
  v34 = *(a1 + 328);
  if (v34)
  {
    v35 = v33 - 8;
    v36 = 16 * v34;
    do
    {
      v37 = *&v35[v36];
      *&v35[v36] = 0;
      if (v37)
      {
        (*(*v37 + 8))(v37);
      }

      v36 -= 16;
    }

    while (v36);
    v33 = *(a1 + 320);
  }

  if (v33 != (a1 + 336))
  {
    free(v33);
  }

  llvm::deallocate_buffer(*(a1 + 296), (16 * *(a1 + 312)), 8uLL);
  sub_1000A8424(a1 + 272, *(a1 + 280));
  v39 = (a1 + 248);
  v38 = *(a1 + 248);
  v40 = *(a1 + 264);
  if (!v40)
  {
    llvm::deallocate_buffer(v38, 0, 8uLL);
    v44 = *(a1 + 232);
    if (v44 == v39)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

  v41 = 24 * v40;
  v42 = (v38 + 16);
  do
  {
    if (*(v42 - 2) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v43 = *v42;
      *v42 = 0;
      if (v43)
      {
        (*(*v43 + 8))(v43);
      }
    }

    v42 += 3;
    v41 -= 24;
  }

  while (v41);
  llvm::deallocate_buffer(*(a1 + 248), (24 * *(a1 + 264)), 8uLL);
  v44 = *(a1 + 232);
  if (v44 != v39)
  {
LABEL_75:
    free(v44);
  }

LABEL_76:
  if (*(a1 + 220))
  {
    v45 = *(a1 + 216);
    if (v45)
    {
      v46 = 0;
      v47 = 8 * v45;
      do
      {
        v48 = *(*(a1 + 208) + v46);
        if (v48 != -8 && v48 != 0)
        {
          llvm::deallocate_buffer(v48, (*v48 + 17), 8uLL);
        }

        v46 += 8;
      }

      while (v47 != v46);
    }
  }

  free(*(a1 + 208));
  llvm::deallocate_buffer(*(a1 + 184), (16 * *(a1 + 200)), 8uLL);
  if (*(a1 + 172))
  {
    v50 = *(a1 + 168);
    if (v50)
    {
      v51 = 0;
      v52 = 8 * v50;
      do
      {
        v53 = *(*(a1 + 160) + v51);
        if (v53 != -8 && v53 != 0)
        {
          v56 = *v53;
          v55 = *(v53 + 1);
          *(v53 + 1) = 0;
          if (v55)
          {
            (*(*v55 + 8))(v55);
          }

          llvm::deallocate_buffer(v53, (v56 + 17), 8uLL);
        }

        v51 += 8;
      }

      while (v52 != v51);
    }
  }

  free(*(a1 + 160));
  sub_10003EA00(a1 + 64);
  v57 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v57)
  {
    (*(*v57 + 16))(v57);
  }

  mlir::DiagnosticEngine::~DiagnosticEngine((a1 + 32));
  v58 = *(a1 + 24);
  if (v58 == a1)
  {
    (*(*v58 + 32))(v58);
    return a1;
  }

  else
  {
    if (v58)
    {
      (*(*v58 + 40))(v58);
    }

    return a1;
  }
}

BOOL sub_100138818(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = v2 & 0x3FFFFFFF;
  v4 = v2 >> 30;
  return v3 == **a1 && v4 == *(*a1 + 4);
}

unint64_t sub_10013883C(unint64_t **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 16;
  v3 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v3 + 16;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v8 = a1;
    v3 = sub_10003A984(a2, 16, 16, 3);
    a1 = v8;
  }

  else
  {
    *a2 = v4;
  }

  *v3 = 0;
  *(v3 + 8) = (v2 >> 2) & 0xC0000000 | v2 & 0x3FFFFFFF;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(v6[1], v3);
  }

  return v3;
}

uint64_t sub_1001388E4(uint64_t result, void *a2)
{
  v2 = ***(result + 8);
  v3 = *(v2 + 376);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = *(v2 + 360);
  v5 = v3 - 1;
  v6 = (v3 - 1) & ((*result >> 4) ^ (*result >> 9));
  v7 = *(v4 + 16 * (v5 & ((*result >> 4) ^ (*result >> 9))));
  if (v7 != *result)
  {
    v9 = 1;
    while (v7 != -4096)
    {
      v10 = v6 + v9++;
      v6 = v10 & v5;
      v7 = *(v4 + 16 * v6);
      if (v7 == *result)
      {
        goto LABEL_3;
      }
    }

LABEL_9:
    llvm::report_fatal_error("Trying to create a Type that was not registered in this MLIRContext.", 1);
  }

LABEL_3:
  v8 = *(v4 + 16 * v6 + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  *a2 = v8;
  return result;
}

uint64_t sub_100138980()
{
  if ((atomic_load_explicit(&qword_1002C0DA0, memory_order_acquire) & 1) == 0)
  {
    sub_10027F8E4();
  }

  return qword_1002C0D90;
}

const char *sub_1001389C8()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::detail::AffineMapStorage]";
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

uint64_t sub_100138A48()
{
  if ((atomic_load_explicit(&qword_1002C0DC8, memory_order_acquire) & 1) == 0)
  {
    sub_10027F938();
  }

  return qword_1002C0DB8;
}

const char *sub_100138A90()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::detail::IntegerSetStorage]";
  v6 = 93;
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

void sub_100138B10(uint64_t a1, int a2)
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
      v26 = v14 / 0x18 + 1;
      v15 = (buffer + 24 * (v26 & 0x1FFFFFFFFFFFFFFELL));
      v27 = buffer;
      v28 = v26 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *v27 = xmmword_10028F1D0;
        *(v27 + 24) = xmmword_10028F1D0;
        v27 += 3;
        v28 -= 2;
      }

      while (v28);
      if (v26 == (v26 & 0x1FFFFFFFFFFFFFFELL))
      {
        return;
      }
    }

    else
    {
      v15 = buffer;
    }

    v29 = (buffer + 24 * v13);
    do
    {
      *v15 = xmmword_10028F1D0;
      v15 = (v15 + 24);
    }

    while (v15 != v29);
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
        *v17 = xmmword_10028F1D0;
        *(v17 + 24) = xmmword_10028F1D0;
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
      *v12 = xmmword_10028F1D0;
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
        v30 = 0;
        sub_100095A6C(a1, v22, &v30);
        v23 = v30;
        *v30 = *v22;
        v24 = *(v22 + 16);
        *(v22 + 16) = 0;
        v23[2] = v24;
        ++*(a1 + 8);
        v25 = *(v22 + 16);
        *(v22 + 16) = 0;
        if (v25)
        {
          (*(*v25 + 8))(v25);
        }
      }

      v22 += 24;
      v21 -= 24;
    }

    while (v21);
  }

  llvm::deallocate_buffer(v4, (8 * v20), 8uLL);
}

uint64_t sub_100138D74(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*a2, *(a2 + 8));
  v6 = v2 - 1;
  v7 = *a2;
  v8 = *(a2 + 8);
  if (v8)
  {
    if (v7 == -2)
    {
      v9 = 1;
      v10 = HashValue & v6;
      result = v3 + 80 * (HashValue & v6);
      v12 = *result;
      if (*result == -2)
      {
        return result;
      }

      while (v12 != -1)
      {
        if (v8 != *(result + 8) || (v13 = result, v14 = memcmp(0xFFFFFFFFFFFFFFFELL, v12, v8), result = v13, v14))
        {
          v15 = v9 + v10;
          ++v9;
          v10 = v15 & v6;
          result = v3 + 80 * (v15 & v6);
          v12 = *result;
          if (*result != -2)
          {
            continue;
          }
        }

        return result;
      }
    }

    else
    {
      v20 = 1;
      v21 = HashValue & v6;
      result = v3 + 80 * (HashValue & v6);
      v22 = *result;
      if (*result == -2)
      {
        goto LABEL_22;
      }

      while (v22 != -1)
      {
        if (v8 == *(result + 8))
        {
          v23 = result;
          v24 = v20;
          v25 = memcmp(v7, v22, v8);
          v20 = v24;
          v26 = v25;
          result = v23;
          if (!v26)
          {
            return result;
          }
        }

        do
        {
LABEL_22:
          v27 = v20 + v21;
          ++v20;
          v21 = v27 & v6;
          result = v3 + 80 * (v27 & v6);
          v22 = *result;
        }

        while (*result == -2);
      }
    }
  }

  else if (v7 == -2)
  {
    v16 = 1;
    v17 = HashValue & v6;
    result = v3 + 80 * (HashValue & v6);
    v18 = *result;
    if (*result == -2)
    {
      return result;
    }

    while (v18 != -1)
    {
      if (*(result + 8))
      {
        v19 = v16 + v17;
        ++v16;
        v17 = v19 & v6;
        result = v3 + 80 * (v19 & v6);
        v18 = *result;
        if (*result != -2)
        {
          continue;
        }
      }

      return result;
    }
  }

  else
  {
    v28 = 1;
    v29 = HashValue & v6;
    result = v3 + 80 * (HashValue & v6);
    v30 = *result;
    if (*result == -2)
    {
      goto LABEL_27;
    }

    while (v30 != -1)
    {
      if (!*(result + 8))
      {
        return result;
      }

      do
      {
LABEL_27:
        v31 = v28 + v29;
        ++v28;
        v29 = v31 & v6;
        result = v3 + 80 * (v31 & v6);
        v30 = *result;
      }

      while (*result == -2);
    }
  }

  if (v7 != -1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_100138F80@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, char **a3@<X2>, uint64_t a4@<X8>)
{
  v14 = 0;
  result = sub_100095A6C(a1, a2, &v14);
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

    sub_1000C7E30(a1, v12);
    result = sub_100095A6C(a1, a2, &v15);
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

uint64_t *sub_100139098(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4, uint64_t *a5)
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
  *a5 = 0;
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

BOOL sub_1001391C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = v2 & 0x3FFFFFFF;
  v4 = v2 >> 30;
  return v3 == **a1 && v4 == *(*a1 + 4);
}

unint64_t sub_1001391E4(unint64_t **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 16;
  v3 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v3 + 16;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v8 = a1;
    v3 = sub_10003A984(a2, 16, 16, 3);
    a1 = v8;
  }

  else
  {
    *a2 = v4;
  }

  *v3 = 0;
  *(v3 + 8) = (v2 >> 2) & 0xC0000000 | v2 & 0x3FFFFFFF;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(v6[1], v3);
  }

  return v3;
}

uint64_t sub_10013928C(uint64_t result, void *a2)
{
  v2 = ***(result + 8);
  v3 = *(v2 + 376);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = *(v2 + 360);
  v5 = v3 - 1;
  v6 = (v3 - 1) & ((*result >> 4) ^ (*result >> 9));
  v7 = *(v4 + 16 * (v5 & ((*result >> 4) ^ (*result >> 9))));
  if (v7 != *result)
  {
    v9 = 1;
    while (v7 != -4096)
    {
      v10 = v6 + v9++;
      v6 = v10 & v5;
      v7 = *(v4 + 16 * v6);
      if (v7 == *result)
      {
        goto LABEL_3;
      }
    }

LABEL_9:
    llvm::report_fatal_error("Trying to create a Type that was not registered in this MLIRContext.", 1);
  }

LABEL_3:
  v8 = *(v4 + 16 * v6 + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  *a2 = v8;
  return result;
}

uint64_t sub_100139328(uint64_t *a1, uint64_t a2, char ***a3)
{
  v4 = *(a1 + 4);
  if (!v4)
  {
    v13 = 0;
    result = 0;
    goto LABEL_44;
  }

  v5 = *a1;
  HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*a2, *(a2 + 8));
  v8 = v4 - 1;
  v9 = *a2;
  v10 = *(a2 + 8);
  if (!v10)
  {
    if (v9 != -2)
    {
      v21 = 0;
      v30 = 1;
      v31 = HashValue & v8;
      v13 = (v5 + 80 * (HashValue & v8));
      v32 = *v13;
      if (*v13 != -2)
      {
        goto LABEL_41;
      }

      while (1)
      {
        do
        {
          if (v21)
          {
            v33 = 0;
          }

          else
          {
            v33 = v32 + 2 == 0;
          }

          if (v33)
          {
            v21 = v13;
          }

          v34 = v30 + v31;
          ++v30;
          v31 = v34 & v8;
          v13 = (v5 + 80 * (v34 & v8));
          v32 = *v13;
        }

        while (*v13 == -2);
LABEL_41:
        if (v32 == -1)
        {
          goto LABEL_18;
        }

        if (!v13[1])
        {
          goto LABEL_43;
        }
      }
    }

    v17 = 1;
    v18 = HashValue & v8;
    v13 = (v5 + 80 * (HashValue & v8));
    v19 = *v13;
    if (*v13 != -2)
    {
      while (v19 != -1)
      {
        if (v13[1])
        {
          v20 = v17 + v18;
          ++v17;
          v18 = v20 & v8;
          v13 = (v5 + 80 * (v20 & v8));
          v19 = *v13;
          if (*v13 != -2)
          {
            continue;
          }
        }

        goto LABEL_43;
      }

      goto LABEL_17;
    }

LABEL_43:
    result = 1;
    goto LABEL_44;
  }

  if (v9 != -2)
  {
    v21 = 0;
    v22 = 1;
    v23 = HashValue & v8;
    v13 = (v5 + 80 * (HashValue & v8));
    v24 = *v13;
    if (*v13 != -2)
    {
      goto LABEL_30;
    }

    while (1)
    {
      do
      {
        if (v21)
        {
          v25 = 0;
        }

        else
        {
          v25 = v24 + 2 == 0;
        }

        if (v25)
        {
          v21 = v13;
        }

        v26 = v22 + v23;
        ++v22;
        v23 = v26 & v8;
        v13 = (v5 + 80 * (v26 & v8));
        v24 = *v13;
      }

      while (*v13 == -2);
LABEL_30:
      if (v24 == -1)
      {
        goto LABEL_18;
      }

      if (v10 == v13[1])
      {
        v35 = v24;
        v27 = v21;
        v28 = v22;
        v29 = memcmp(v9, v24, v10);
        v22 = v28;
        v21 = v27;
        v24 = v35;
        if (!v29)
        {
          goto LABEL_43;
        }
      }
    }
  }

  v11 = 1;
  v12 = HashValue & v8;
  v13 = (v5 + 80 * (HashValue & v8));
  v14 = *v13;
  if (*v13 == -2)
  {
    goto LABEL_43;
  }

  while (v14 != -1)
  {
    if (v10 != v13[1] || memcmp(0xFFFFFFFFFFFFFFFELL, v14, v10))
    {
      v15 = v11 + v12;
      ++v11;
      v12 = v15 & v8;
      v13 = (v5 + 80 * (v15 & v8));
      v14 = *v13;
      if (*v13 != -2)
      {
        continue;
      }
    }

    goto LABEL_43;
  }

LABEL_17:
  v21 = 0;
LABEL_18:
  if (!v21)
  {
    v21 = v13;
  }

  if (v9 == -1)
  {
    result = 1;
  }

  else
  {
    v13 = v21;
    result = 0;
  }

LABEL_44:
  *a3 = v13;
  return result;
}

void sub_100139570(uint64_t a1, int a2)
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
  buffer = llvm::allocate_buffer((80 * v8), 8uLL);
  *a1 = buffer;
  if (!v4)
  {
    *(a1 + 8) = 0;
    v13 = *(a1 + 16);
    if (!v13)
    {
      return;
    }

    v14 = 80 * v13 - 80;
    if (v14 >= 0x50)
    {
      v26 = v14 / 0x50 + 1;
      v15 = &buffer[5 * (v26 & 0x7FFFFFFFFFFFFFELL)];
      v27 = buffer;
      v28 = v26 & 0x7FFFFFFFFFFFFFELL;
      do
      {
        *v27 = xmmword_10028F1D0;
        v27[5] = xmmword_10028F1D0;
        v27 += 10;
        v28 -= 2;
      }

      while (v28);
      if (v26 == (v26 & 0x7FFFFFFFFFFFFFELL))
      {
        return;
      }
    }

    else
    {
      v15 = buffer;
    }

    v29 = &buffer[5 * v13];
    do
    {
      *v15 = xmmword_10028F1D0;
      v15 += 5;
    }

    while (v15 != v29);
    return;
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 80 * v10 - 80;
    if (v11 >= 0x50)
    {
      v16 = v11 / 0x50 + 1;
      v12 = &buffer[5 * (v16 & 0x7FFFFFFFFFFFFFELL)];
      v17 = buffer;
      v18 = v16 & 0x7FFFFFFFFFFFFFELL;
      do
      {
        *v17 = xmmword_10028F1D0;
        v17[5] = xmmword_10028F1D0;
        v17 += 10;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0x7FFFFFFFFFFFFFELL))
      {
        goto LABEL_16;
      }
    }

    else
    {
      v12 = buffer;
    }

    v19 = &buffer[5 * v10];
    do
    {
      *v12 = xmmword_10028F1D0;
      v12 += 5;
    }

    while (v12 != v19);
  }

LABEL_16:
  v20 = 5 * v3;
  if (v3)
  {
    v21 = 80 * v3;
    v22 = v4;
    do
    {
      if (*v22 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v30 = 0;
        sub_100139328(a1, v22, &v30);
        v23 = v30;
        *v30 = *v22;
        v23[3] = 0x600000000;
        v23[2] = (v23 + 4);
        v24 = (v23 + 2);
        if (*(v22 + 24))
        {
          sub_100056AF0(v24, (v22 + 16));
        }

        ++*(a1 + 8);
        v25 = *(v22 + 16);
        if ((v22 + 32) != v25)
        {
          free(v25);
        }
      }

      v22 += 80;
      v21 -= 80;
    }

    while (v21);
  }

  llvm::deallocate_buffer(v4, (16 * v20), 8uLL);
}

unint64_t sub_1001397C4(void *a1, void *a2)
{
  if (a1 == a2)
  {
    v95 = 0;
  }

  else
  {
    v2 = HIDWORD(*a1);
    v3 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v2);
    v4 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47));
    *&v102 = v4;
    if (a1 + 1 == a2)
    {
      v95 = 8;
    }

    else
    {
      v5 = HIDWORD(a1[1]);
      v6 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v5);
      v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
      *(&v102 + 1) = v7;
      if (a1 + 2 == a2)
      {
        v95 = 16;
      }

      else
      {
        v8 = HIDWORD(a1[2]);
        v9 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v8);
        v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) ^ ((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 47));
        *&v103 = v10;
        if (a1 + 3 == a2)
        {
          v95 = 24;
        }

        else
        {
          v11 = HIDWORD(a1[3]);
          v12 = 0x9DDFEA08EB382D69 * ((8 * a1[3] - 0xAE502812AA7333) ^ v11);
          v13 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) ^ ((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) >> 47));
          *(&v103 + 1) = v13;
          if (a1 + 4 == a2)
          {
            v95 = 32;
          }

          else
          {
            v14 = HIDWORD(a1[4]);
            v15 = 0x9DDFEA08EB382D69 * ((8 * a1[4] - 0xAE502812AA7333) ^ v14);
            v16 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) ^ ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 47));
            *&v104 = v16;
            if (a1 + 5 == a2)
            {
              v95 = 40;
            }

            else
            {
              v17 = HIDWORD(a1[5]);
              v18 = 0x9DDFEA08EB382D69 * ((8 * a1[5] - 0xAE502812AA7333) ^ v17);
              v19 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v17 ^ (v18 >> 47) ^ v18)) ^ ((0x9DDFEA08EB382D69 * (v17 ^ (v18 >> 47) ^ v18)) >> 47));
              *(&v104 + 1) = v19;
              if (a1 + 6 == a2)
              {
                v95 = 48;
              }

              else
              {
                v20 = HIDWORD(a1[6]);
                v21 = 0x9DDFEA08EB382D69 * ((8 * a1[6] - 0xAE502812AA7333) ^ v20);
                v22 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v20 ^ (v21 >> 47) ^ v21)) ^ ((0x9DDFEA08EB382D69 * (v20 ^ (v21 >> 47) ^ v21)) >> 47));
                *&v105 = v22;
                if (a1 + 7 == a2)
                {
                  v95 = 56;
                }

                else
                {
                  v23 = HIDWORD(a1[7]);
                  v24 = 0x9DDFEA08EB382D69 * ((8 * a1[7] - 0xAE502812AA7333) ^ v23);
                  *(&v105 + 1) = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v23 ^ (v24 >> 47) ^ v24)) ^ ((0x9DDFEA08EB382D69 * (v23 ^ (v24 >> 47) ^ v24)) >> 47));
                  v25 = a1 + 8;
                  if (a1 + 8 != a2)
                  {
                    v101 = &v103;
                    v26 = v16 + 0x4BF62CB950C3753ALL;
                    v27 = v19 + v22 + v16 + 0x4BF62CB950C3753ALL;
                    v28 = v27 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v23 ^ (v24 >> 47) ^ v24)) ^ ((0x9DDFEA08EB382D69 * (v23 ^ (v24 >> 47) ^ v24)) >> 47));
                    v29 = v19 - 0x4B6D499041670D8DLL * __ROR8__(v22 - 0x414BFF9ED66A691CLL, 42) - 0x7323D61940A0DA1FLL;
                    v30 = __ROR8__(v27, 44) + v26 + __ROR8__(v29 + v10 + v26 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v23 ^ (v24 >> 47) ^ v24)) ^ ((0x9DDFEA08EB382D69 * (v23 ^ (v24 >> 47) ^ v24)) >> 47)), 21);
                    v31 = v4 + 0x298DF016A9F64655 + v7 + v10 + v13;
                    v32 = (0xB492B66FBE98F273 * __ROR8__(v7 - 0x73D22641534B4D52, 37)) ^ 0xF7ACCA5326449396;
                    v33 = __ROR8__(v4 + 0x298DF016A9F64655 + v7 + v10, 44) + v4 + 0x298DF016A9F64655 + __ROR8__(v32 + v4 + 0x298DF016A9F64655 + v13 - 0xAE502812AB8D92, 21);
                    v34 = 0x544962662A7EE1A4;
                    v35 = 64;
                    while (1)
                    {
                      v45 = v25 + 1;
                      v46 = HIDWORD(*v25);
                      v47 = 0x9DDFEA08EB382D69 * ((8 * *v25 - 0xAE502812AA7333) ^ v46);
                      *&v102 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v46 ^ (v47 >> 47) ^ v47)) ^ ((0x9DDFEA08EB382D69 * (v46 ^ (v47 >> 47) ^ v47)) >> 47));
                      v48 = v25 + 1 == a2;
                      if (v25 + 1 == a2)
                      {
                        v63 = 0;
                        v64 = &v102 + 8;
                        v65 = 8;
                      }

                      else
                      {
                        v49 = HIDWORD(v25[1]);
                        v50 = 0x9DDFEA08EB382D69 * ((8 * v25[1] - 0xAE502812AA7333) ^ v49);
                        *(&v102 + 1) = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v49 ^ (v50 >> 47) ^ v50)) ^ ((0x9DDFEA08EB382D69 * (v49 ^ (v50 >> 47) ^ v50)) >> 47));
                        v45 = v25 + 2;
                        v48 = v25 + 2 == a2;
                        if (v25 + 2 == a2)
                        {
                          v63 = 8;
                          v64 = v101;
                          v65 = 16;
                        }

                        else
                        {
                          v51 = HIDWORD(v25[2]);
                          v52 = 0x9DDFEA08EB382D69 * ((8 * v25[2] - 0xAE502812AA7333) ^ v51);
                          *&v103 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v51 ^ (v52 >> 47) ^ v52)) ^ ((0x9DDFEA08EB382D69 * (v51 ^ (v52 >> 47) ^ v52)) >> 47));
                          v45 = v25 + 3;
                          v48 = v25 + 3 == a2;
                          if (v25 + 3 == a2)
                          {
                            v63 = 16;
                            v64 = &v103 + 8;
                            v65 = 24;
                          }

                          else
                          {
                            v53 = HIDWORD(v25[3]);
                            v54 = 0x9DDFEA08EB382D69 * ((8 * v25[3] - 0xAE502812AA7333) ^ v53);
                            *(&v103 + 1) = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v53 ^ (v54 >> 47) ^ v54)) ^ ((0x9DDFEA08EB382D69 * (v53 ^ (v54 >> 47) ^ v54)) >> 47));
                            v45 = v25 + 4;
                            v48 = v25 + 4 == a2;
                            if (v25 + 4 == a2)
                            {
                              v63 = 24;
                              v64 = &v104;
                              v65 = 32;
                            }

                            else
                            {
                              v55 = HIDWORD(v25[4]);
                              v56 = 0x9DDFEA08EB382D69 * ((8 * v25[4] - 0xAE502812AA7333) ^ v55);
                              *&v104 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v55 ^ (v56 >> 47) ^ v56)) ^ ((0x9DDFEA08EB382D69 * (v55 ^ (v56 >> 47) ^ v56)) >> 47));
                              v45 = v25 + 5;
                              v48 = v25 + 5 == a2;
                              if (v25 + 5 == a2)
                              {
                                v63 = 32;
                                v64 = &v104 + 8;
                                v65 = 40;
                              }

                              else
                              {
                                v57 = HIDWORD(v25[5]);
                                v58 = 0x9DDFEA08EB382D69 * ((8 * v25[5] - 0xAE502812AA7333) ^ v57);
                                *(&v104 + 1) = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v57 ^ (v58 >> 47) ^ v58)) ^ ((0x9DDFEA08EB382D69 * (v57 ^ (v58 >> 47) ^ v58)) >> 47));
                                v45 = v25 + 6;
                                v48 = v25 + 6 == a2;
                                if (v25 + 6 == a2)
                                {
                                  v63 = 40;
                                  v64 = &v105;
                                  v65 = 48;
                                }

                                else
                                {
                                  v59 = HIDWORD(v25[6]);
                                  v60 = 0x9DDFEA08EB382D69 * ((8 * v25[6] - 0xAE502812AA7333) ^ v59);
                                  *&v105 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v59 ^ (v60 >> 47) ^ v60)) ^ ((0x9DDFEA08EB382D69 * (v59 ^ (v60 >> 47) ^ v60)) >> 47));
                                  v45 = v25 + 7;
                                  v48 = v25 + 7 == a2;
                                  if (v25 + 7 != a2)
                                  {
                                    v61 = HIDWORD(v25[7]);
                                    v62 = 0x9DDFEA08EB382D69 * ((8 * v25[7] - 0xAE502812AA7333) ^ v61);
                                    *(&v105 + 1) = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v61 ^ (v62 >> 47) ^ v62)) ^ ((0x9DDFEA08EB382D69 * (v61 ^ (v62 >> 47) ^ v62)) >> 47));
                                    v25 += 8;
                                    v48 = v25 == a2;
                                    v63 = 56;
                                    v64 = &v106;
                                    v65 = 64;
                                    goto LABEL_28;
                                  }

                                  v63 = 48;
                                  v64 = &v105 + 8;
                                  v65 = 56;
                                }
                              }
                            }
                          }
                        }
                      }

                      v25 = v45;
LABEL_28:
                      if ((v65 & 0x38) != 0)
                      {
                        v66 = 56 - v63;
                        v67 = v65;
                        if (v65 != 56 - v63)
                        {
                          do
                          {
                            v74 = v67;
                            v67 = v66;
                            v66 = v74 % v66;
                          }

                          while (v66);
                          v75 = (&v102 + v67);
                          do
                          {
                            v77 = *(v75 - 1);
                            v75 = (v75 - 1);
                            v76 = v77;
                            v78 = (v75 + v65);
                            v79 = v75;
                            do
                            {
                              v80 = v79;
                              v79 = v78;
                              *v80 = *v78;
                              v81 = v65 < &v106 - v78;
                              v82 = &v102 + v65 - (&v106 - v78);
                              v78 = (v78 + v65);
                              if (!v81)
                              {
                                v78 = v82;
                              }
                            }

                            while (v78 != v75);
                            *v79 = v76;
                          }

                          while (v75 != &v102);
                          goto LABEL_11;
                        }

                        v68 = v63 | 7;
                        if (55 - v63 < (v63 | 7uLL))
                        {
                          v68 = 55 - v63;
                        }

                        v69 = &v102;
                        if (&v102 < (&v102 | 9) + v63 + v68)
                        {
                          v70 = v65;
                          if (v64 < &v102 + v68 + 1)
                          {
                            goto LABEL_34;
                          }
                        }

                        if (v68 >= 0x1F)
                        {
                          v84 = v68 + 1;
                          v83 = (v68 + 1) & 0x60;
                          v85 = v102;
                          v86 = v103;
                          v87 = *(v64 + 1);
                          v102 = *(&v102 + v65);
                          v103 = v87;
                          *(&v102 + v65) = v85;
                          *(v64 + 1) = v86;
                          if (v83 != 32)
                          {
                            v88 = v104;
                            v89 = v105;
                            v90 = *(v64 + 3);
                            v104 = *(v64 + 2);
                            v105 = v90;
                            *(v64 + 2) = v88;
                            *(v64 + 3) = v89;
                          }

                          if (v84 == v83)
                          {
                            goto LABEL_11;
                          }

                          if ((v84 & 0x18) == 0)
                          {
                            v69 = &v102 + v83;
                            v70 = v65 + v83;
LABEL_34:
                            v71 = v69 + 1;
                            do
                            {
                              v72 = *(v71 - 1);
                              *(v71 - 1) = *(&v102 + v70);
                              *(&v102 + v70) = v72;
                              if (v71 == v64)
                              {
                                break;
                              }

                              ++v71;
                            }

                            while (v70++ != 63);
                            goto LABEL_11;
                          }
                        }

                        else
                        {
                          v83 = 0;
                        }

                        v91 = &v64[v83];
                        v92 = (&v102 + v83);
                        v93 = v68 - v83 + 1;
                        do
                        {
                          v94 = *v92;
                          *v92++ = *v91;
                          *v91 = v94;
                          v91 += 8;
                          v93 -= 8;
                        }

                        while (v93);
                      }

LABEL_11:
                      v36 = v29 + v31 + v34 + *(&v102 + 1);
                      v29 = *(&v104 + 1) + v31 - 0x4B6D499041670D8DLL * __ROR8__(v29 + v33 + v105, 42);
                      v37 = v32 + v28;
                      v38 = v102 - 0x4B6D499041670D8DLL * v33;
                      v39 = v28 + v38;
                      v40 = v38 + *(&v102 + 1) + v103;
                      v41 = __ROR8__(v40, 44) + v38;
                      v42 = __ROR8__(v37, 33);
                      v43 = (0xB492B66FBE98F273 * __ROR8__(v36, 37)) ^ v30;
                      v33 = v41 + __ROR8__(v43 + v39 + *(&v103 + 1), 21);
                      v34 = 0xB492B66FBE98F273 * v42;
                      v44 = 0xB492B66FBE98F273 * v42 + v30 + v104;
                      v31 = v40 + *(&v103 + 1);
                      v30 = __ROR8__(v29 + v103 + v44 + *(&v105 + 1), 21) + v44 + __ROR8__(*(&v104 + 1) + v105 + v44, 44);
                      v28 = *(&v104 + 1) + v105 + v44 + *(&v105 + 1);
                      v35 += v65;
                      v32 = v43;
                      if (v48)
                      {
                        v96 = 0x9DDFEA08EB382D69 * (v28 ^ ((0x9DDFEA08EB382D69 * (v31 ^ v28)) >> 47) ^ (0x9DDFEA08EB382D69 * (v31 ^ v28)));
                        v97 = 0x9DDFEA08EB382D69 * (v30 ^ ((0x9DDFEA08EB382D69 * (v33 ^ v30)) >> 47) ^ (0x9DDFEA08EB382D69 * (v33 ^ v30)));
                        v98 = 0x9DDFEA08EB382D69 * (v97 ^ (v97 >> 47)) - 0x4B6D499041670D8DLL * ((v35 ^ (v35 >> 47)) + v42);
                        v99 = 0x9DDFEA08EB382D69 * (v98 ^ (v43 - 0x4B6D499041670D8DLL * (v29 ^ (v29 >> 47)) - 0x622015F714C7D297 * (v96 ^ (v96 >> 47))));
                        return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v98 ^ (v99 >> 47) ^ v99)) ^ ((0x9DDFEA08EB382D69 * (v98 ^ (v99 >> 47) ^ v99)) >> 47));
                      }
                    }
                  }

                  v95 = 64;
                }
              }
            }
          }
        }
      }
    }
  }

  return sub_10002C4F4(&v102, v95, 0xFF51AFD7ED558CCDLL);
}

BOOL sub_10013A0E8(void *a1, _DWORD *a2)
{
  v2 = *a1;
  if (**a1 != *a2)
  {
    return 0;
  }

  if (v2[1] != a2[1])
  {
    return 0;
  }

  v3 = *(v2 + 2);
  if (v3 != a2[2])
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  v4 = *(v2 + 1);
  v5 = (a2 + 6);
  v6 = 8 * v3 - 8;
  do
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v4++;
    result = v9 == v7;
    v11 = v9 != v7 || v6 == 0;
    v6 -= 8;
  }

  while (!v11);
  return result;
}

unint64_t sub_10013A160(void *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  v4 = *(*a1 + 16);
  v5 = 8 * v4;
  v6 = 8 * v4 + 24;
  a2[10] += v6;
  v7 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v7 + v6;
  if (*a2)
  {
    v9 = v8 > a2[1];
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v21 = a1;
    v7 = sub_10003A984(a2, 8 * v4 + 24, v6, 3);
    a1 = v21;
  }

  else
  {
    *a2 = v8;
  }

  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = *v2;
  *(v7 + 4) = v2[1];
  *(v7 + 8) = v4;
  if (v4)
  {
    v10 = (v7 + 24);
    if ((v5 - 8) < 0x28)
    {
      v11 = v3;
      do
      {
LABEL_13:
        v18 = *v11++;
        *v10++ = v18;
      }

      while (v11 != (v3 + 8 * v4));
      goto LABEL_14;
    }

    v11 = v3;
    if (v7 - v3 + 24 < 0x20)
    {
      goto LABEL_13;
    }

    v12 = ((v5 - 8) >> 3) + 1;
    v13 = 8 * (v12 & 0x3FFFFFFFFFFFFFFCLL);
    v10 = (v10 + v13);
    v11 = (v3 + v13);
    v14 = (v3 + 16);
    v15 = (v7 + 40);
    v16 = v12 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v17 = *v14;
      *(v15 - 1) = *(v14 - 1);
      *v15 = v17;
      v14 += 2;
      v15 += 2;
      v16 -= 4;
    }

    while (v16);
    if (v12 != (v12 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  v19 = a1[1];
  if (*v19)
  {
    (*v19)(*(v19 + 8), v7);
  }

  return v7;
}

BOOL sub_10013A2B4(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (**a1 == *a2 && v2[1] == *(a2 + 4))
  {
    v3 = *(v2 + 2);
    if (v3 == *(a2 + 16))
    {
      if (v3)
      {
        v4 = *(v2 + 1);
        v5 = *(a2 + 8);
        v6 = 8 * v3;
        while (*v4 == *v5)
        {
          ++v4;
          ++v5;
          v6 -= 8;
          if (!v6)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        v7 = *(v2 + 4);
        if (v7 == *(a2 + 32))
        {
          return memcmp(*(v2 + 3), *(a2 + 24), v7) == 0;
        }
      }
    }
  }

  return 0;
}

unint64_t sub_10013A35C(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_10013A3AC(a2, *a1);
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

unint64_t sub_10013A3AC(uint64_t *a1, uint64_t a2)
{
  a1[10] += 40;
  v3 = *a1;
  v4 = a1[1];
  result = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = result + 40;
  if (v3)
  {
    v7 = v6 > v4;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v21 = a2;
    result = sub_10003A984(a1, 40, 40, 3);
    a2 = v21;
  }

  else
  {
    *a1 = v6;
  }

  *(result + 32) = 0;
  *result = 0u;
  *(result + 16) = 0u;
  *result = *a2;
  *(result + 4) = *(a2 + 4);
  v8 = *(a2 + 16);
  if (!v8)
  {
    v11 = 0;
    goto LABEL_20;
  }

  v9 = *(a2 + 8);
  v10 = 8 * v8;
  a1[10] += 8 * v8;
  if (!*a1 || (v11 = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8, v11 + v10 > a1[1]))
  {
    v22 = result;
    v23 = a2;
    v24 = sub_10003A984(a1, 8 * v8, 8 * v8, 3);
    a2 = v23;
    v11 = v24;
    result = v22;
    v12 = v10 - 8;
    if ((v10 - 8) >= 0x18)
    {
      goto LABEL_10;
    }

LABEL_18:
    v13 = v11;
    v14 = v9;
    do
    {
LABEL_19:
      v25 = *v14++;
      *v13++ = v25;
    }

    while (v14 != (v9 + 8 * v8));
    goto LABEL_20;
  }

  *a1 = v11 + v10;
  v12 = v10 - 8;
  if ((v10 - 8) < 0x18)
  {
    goto LABEL_18;
  }

LABEL_10:
  v13 = v11;
  v14 = v9;
  if (v11 - v9 < 0x20)
  {
    goto LABEL_19;
  }

  v15 = (v12 >> 3) + 1;
  v16 = 8 * (v15 & 0x3FFFFFFFFFFFFFFCLL);
  v13 = (v11 + v16);
  v14 = (v9 + v16);
  v17 = (v9 + 16);
  v18 = (v11 + 16);
  v19 = v15 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v20 = *v17;
    *(v18 - 1) = *(v17 - 1);
    *v18 = v20;
    v17 += 2;
    v18 += 2;
    v19 -= 4;
  }

  while (v19);
  if (v15 != (v15 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_19;
  }

LABEL_20:
  *(result + 8) = v11;
  *(result + 16) = v8;
  v26 = *(a2 + 32);
  if (!v26)
  {
    *(result + 24) = 0;
    *(result + 32) = 0;
    return result;
  }

  v27 = *(a2 + 24);
  a1[10] += v26;
  v28 = *a1;
  if (*a1 && v26 + v28 <= a1[1])
  {
    *a1 = v26 + v28;
    if (v26 >= 8)
    {
      goto LABEL_24;
    }

LABEL_38:
    v29 = v28;
    v30 = v27;
    goto LABEL_39;
  }

  v40 = result;
  v28 = sub_10003A984(a1, v26, v26, 0);
  result = v40;
  if (v26 < 8)
  {
    goto LABEL_38;
  }

LABEL_24:
  v29 = v28;
  v30 = v27;
  if ((v28 - v27) >= 0x20)
  {
    if (v26 < 0x20)
    {
      v31 = 0;
      goto LABEL_32;
    }

    v31 = v26 & 0xFFFFFFFFFFFFFFE0;
    v32 = (v27 + 16);
    v33 = (v28 + 16);
    v34 = v26 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v35 = *v32;
      *(v33 - 1) = *(v32 - 1);
      *v33 = v35;
      v32 += 2;
      v33 += 2;
      v34 -= 32;
    }

    while (v34);
    if (v26 == v31)
    {
      goto LABEL_35;
    }

    if ((v26 & 0x18) != 0)
    {
LABEL_32:
      v29 = (v28 + (v26 & 0xFFFFFFFFFFFFFFF8));
      v30 = (v27 + (v26 & 0xFFFFFFFFFFFFFFF8));
      v36 = (v27 + v31);
      v37 = (v28 + v31);
      v38 = v31 - (v26 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v39 = *v36++;
        *v37++ = v39;
        v38 += 8;
      }

      while (v38);
      if (v26 == (v26 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_35;
      }

      goto LABEL_39;
    }

    v30 = (v27 + v31);
    v29 = (v28 + v31);
  }

  do
  {
LABEL_39:
    v41 = *v30++;
    *v29++ = v41;
  }

  while (v30 != (v27 + v26));
LABEL_35:
  *(result + 24) = v28;
  *(result + 32) = v26;
  return result;
}

uint64_t mlir::Operation::create(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  mlir::TypeRange::TypeRange(v17, *(a1 + 64), *(a1 + 72));
  mlir::ValueRange::ValueRange(v16, *(a1 + 16), *(a1 + 24));
  Context = mlir::Attribute::getContext(a1);
  Dictionary = mlir::NamedAttrList::getDictionary((a1 + 112), Context);
  mlir::NamedAttrList::NamedAttrList(v14, Dictionary);
  v6 = *(a1 + 256);
  mlir::BlockRange::BlockRange(v13, *(a1 + 200), *(a1 + 208));
  mlir::RegionRange::RegionRange(v12, *(a1 + 224), *(a1 + 232));
  result = mlir::Operation::create(v2, v3, v17[0], v17[1], v16[0], v16[1], v14, v6, v13[0], v13[1], v12[0], v12[1]);
  if (v14[0] != &v15)
  {
    v9 = result;
    free(v14[0]);
    result = v9;
  }

  v10 = *(a1 + 248);
  if (v10)
  {
    v11 = result;
    mlir::Operation::setPropertiesFromAttribute(result, v10, 0, v8);
    return v11;
  }

  return result;
}

uint64_t mlir::Operation::create(uint64_t a1, uint64_t a2, uint64_t a3, mlir::OpResult *a4, int a5, uint64_t a6, mlir::NamedAttrList *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v29[0] = a11;
  v29[1] = a12;
  v27 = a2;
  v28 = a1;
  (*(*a2 + 48))(a2, &v27, a7);
  v18 = v27;
  Context = mlir::Attribute::getContext(&v28);
  Dictionary = mlir::NamedAttrList::getDictionary(a7, Context);
  v21 = mlir::Operation::create(a1, v18, a3, a4, a5, a6, Dictionary, a8, a9, a10, a12);
  if (a12)
  {
    v22 = 0;
    do
    {
      if (mlir::RegionRange::dereference_iterator(v29, v22))
      {
        v23 = (((v21 + 64 + 16 * ((*(v21 + 44) >> 23) & 1) + ((*(v21 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v21 + 40) + 24 * v22);
        v24 = mlir::RegionRange::dereference_iterator(v29, v22);
        sub_1000A8330(v23, v24);
      }

      ++v22;
    }

    while (v22 != a12);
  }

  return v21;
}

uint64_t mlir::Operation::setPropertiesFromAttribute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 44);
  v7 = (a1 + 16 * ((v6 >> 23) & 1) + 64);
  if (v5[2] == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    if (!BYTE3(v6))
    {
      v7 = 0;
    }

    *v7 = a2;
    return 1;
  }

  else
  {
    if (BYTE3(v6))
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    return (*(*v5 + 18))(v5, v5, v9, a2, a3, a4);
  }
}

uint64_t mlir::Operation::create(uint64_t a1, uint64_t a2, uint64_t a3, mlir::OpResult *a4, int a5, uint64_t a6, mlir::NamedAttrList *a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11)
{
  v22 = a2;
  v23 = a1;
  (*(*a2 + 48))(a2, &v22, a7);
  v17 = v22;
  Context = mlir::Attribute::getContext(&v23);
  Dictionary = mlir::NamedAttrList::getDictionary(a7, Context);
  return mlir::Operation::create(a1, v17, a3, a4, a5, a6, Dictionary, a8, a9, a10, a11);
}

uint64_t mlir::Operation::create(uint64_t a1, uint64_t a2, uint64_t a3, mlir::OpResult *this, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11)
{
  v17 = a11;
  NumTrailing = mlir::OpResult::getNumTrailing(this);
  NumInline = mlir::OpResult::getNumInline(this);
  v20 = (*(*a2 + 112))(a2);
  v55 = v20 - (v20 != 0) + 8 * (v20 != 0);
  v59 = a7;
  v60 = v55 & 0xFFFFFFF8;
  v54 = a8;
  if (a6)
  {
    v21 = (v55 & 0xFFFFFFF8);
    v22 = a10;
    v23 = a6;
  }

  else
  {
    {
      sub_10027E098();
    }

    v24 = (*(*a2 + 32))(a2, mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id);
    v23 = 0;
    v21 = v60;
    v22 = a10;
    if (v24)
    {
      v25 = 0;
      v26 = 0;
      goto LABEL_8;
    }
  }

  v25 = 1;
  v26 = 16;
LABEL_8:
  v27 = 32 * (v22 + v23) + 24 * a11;
  v58 = NumTrailing;
  v28 = 16 * NumInline + 24 * NumTrailing;
  v29 = (v28 - (v28 != 0) + 8 * (v28 != 0)) & 0xFFFFFFFFFFFFFFF8;
  v30 = malloc_type_malloc(v27 + v29 + ((v26 + v21 - (v26 + v21 != 0) + 8 * (v26 + v21 != 0)) & 0xFFFFFFFFFFFFFFF8) + 64, 0x100004077774924uLL);
  v31 = &v30[v29];
  *v31 = 0;
  *(v31 + 8) = 0;
  *(v31 + 16) = 0;
  *(v31 + 24) = a1;
  *(v31 + 32) = 0;
  *(v31 + 36) = this;
  v57 = v25;
  if (v25)
  {
    v32 = 0x800000;
  }

  else
  {
    v32 = 0;
  }

  v33 = v55 | 7;
  if (v55 < 0)
  {
    v33 = (v55 | 7) + 7;
  }

  *(v31 + 40) = a10;
  *(v31 + 44) = a11 & 0x7FFFFF | ((v33 >> 3) << 24) | v32;
  *(v31 + 48) = a2;
  *(v31 + 56) = 0;
  if (v60)
  {
    v34 = v31 + 16 * (v32 >> 23) + 64;
    if (((v33 << 21) & 0xFF000000) != 0)
    {
      v35 = v34;
    }

    else
    {
      v35 = 0;
    }

    (*(*a2 + 120))(a2, a2, v35, v54);
  }

  if (NumInline)
  {
    v36 = 0;
    v37 = 0;
    v38 = &v30[v29 - 8];
    do
    {
      v39 = v37 + 1;
      v40 = mlir::TypeRange::dereference_iterator(a3, v37);
      *(v38 - 1) = 0;
      *v38 = v40 & 0xFFFFFFFFFFFFFFF8 | (v36 >> 32);
      v36 += &_mh_execute_header;
      v38 -= 2;
      v37 = v39;
    }

    while (NumInline != v39);
  }

  if (v58)
  {
    v41 = 0;
    v42 = &v30[v29 - 120];
    do
    {
      v43 = mlir::TypeRange::dereference_iterator(a3, NumInline + v41);
      *v42 = 0;
      *(v42 + 1) = v43 & 0xFFFFFFFFFFFFFFF8 | 6;
      *(v42 + 2) = v41;
      v42 -= 24;
      ++v41;
    }

    while (v58 != v41);
  }

  if (a11)
  {
    v44 = 0;
    do
    {
      mlir::Region::Region((((v31 + 64 + 16 * ((*(v31 + 44) >> 23) & 1) + ((*(v31 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v31 + 40) + v44), v31);
      v44 += 24;
      --v17;
    }

    while (v17);
  }

  v45 = *(v31 + 44);
  if (v57)
  {
    v46 = ((v31 + 64 + 16 * ((v45 >> 23) & 1) + ((v45 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v31 + 40);
    mlir::detail::OperandStorage::OperandStorage();
    LODWORD(v45) = *(v31 + 44);
  }

  if (a10)
  {
    v47 = 0;
    v48 = ((v31 + 16 * ((v45 >> 23) & 1) + ((v45 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v49 = mlir::BlockRange::dereference_iterator(a9, v47);
      *v48 = 0;
      v48[1] = 0;
      v48[2] = v31;
      v48[3] = v49;
      UseList = mlir::BlockOperand::getUseList(v49, v50);
      v52 = *UseList;
      *v48 = *UseList;
      v48[1] = UseList;
      if (v52)
      {
        *(v52 + 8) = v48;
      }

      *UseList = v48;
      ++v47;
      v48 += 4;
    }

    while (a10 != v47);
  }

  mlir::Operation::setAttrs(v31, v59);
  return v31;
}

void mlir::Operation::setAttrs(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  if (*(a1 + 47))
  {
    v19 = v21;
    v20 = 0x300000000;
    v3 = mlir::DictionaryAttr::size(&v18);
    if (v3 > HIDWORD(v20))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v19, v21, v3, 16);
    }

    v4 = mlir::DictionaryAttr::begin(&v18);
    v5 = mlir::DictionaryAttr::end(&v18);
    if (v4 != v5)
    {
      v6 = v5;
      do
      {
        while (1)
        {
          v17 = *v4;
          Name = mlir::NamedAttribute::getName(&v17);
          Value = mlir::StringAttr::getValue(&Name);
          (*(**(a1 + 48) + 80))(*(a1 + 48), a1, Value, v9);
          if ((v10 & 1) == 0)
          {
            break;
          }

          v7 = mlir::NamedAttribute::getName(&v17);
          (*(**(a1 + 48) + 88))(*(a1 + 48), a1, v7, *(&v17 + 1));
          if (++v4 == v6)
          {
            goto LABEL_11;
          }
        }

        v11 = v17;
        v12 = v20;
        if (v20 >= HIDWORD(v20))
        {
          v15 = v17;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v19, v21, v20 + 1, 16);
          v11 = v15;
          v12 = v20;
        }

        *(v19 + v12) = v11;
        LODWORD(v20) = v20 + 1;
        ++v4;
      }

      while (v4 != v6);
    }

LABEL_11:
    v13 = v20;
    if (mlir::DictionaryAttr::size(&v18) != v13)
    {
      Context = mlir::Attribute::getContext((a1 + 24));
      v18 = mlir::DictionaryAttr::get(Context, v19, v20);
    }

    if (v19 != v21)
    {
      free(v19);
    }

    a2 = v18;
  }

  *(a1 + 56) = a2;
}

void mlir::Operation::~Operation(mlir::Operation *this)
{
  v2 = *(this + 11);
  if ((v2 & 0x800000) != 0)
  {
    mlir::detail::OperandStorage::~OperandStorage((this + 64));
    v2 = *(this + 11);
  }

  v3 = this + 64;
  v4 = *(this + 10);
  if (v4)
  {
    v5 = &v3[16 * ((v2 >> 23) & 1) + 7 + ((v2 >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8;
    v6 = 32 * v4;
    v7 = (v5 + 8);
    do
    {
      v8 = *v7;
      if (*v7)
      {
        v9 = *(v7 - 1);
        *v8 = v9;
        if (v9)
        {
          *(v9 + 8) = v8;
        }
      }

      v7 += 4;
      v6 -= 32;
    }

    while (v6);
    v2 = *(this + 11);
  }

  if ((v2 & 0x7FFFFF) != 0)
  {
    v10 = ((&v3[16 * ((v2 >> 23) & 1) + 7 + ((v2 >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8) + 32 * v4);
    v11 = 24 * (v2 & 0x7FFFFF);
    do
    {
      mlir::Region::~Region(v10);
      v10 = (v12 + 24);
      v11 -= 24;
    }

    while (v11);
    v2 = *(this + 11);
  }

  if (HIBYTE(v2))
  {
    (*(**(this + 6) + 128))(*(this + 6), &v3[16 * ((v2 >> 23) & 1)]);
  }
}

void mlir::Operation::destroy(mlir::Operation *this)
{
  v2 = *(this + 9);
  NumTrailing = mlir::OpResult::getNumTrailing(v2);
  v4 = 16 * mlir::OpResult::getNumInline(v2) + 24 * NumTrailing;
  v5 = this - ((v4 - (v4 != 0) + 8 * (v4 != 0)) & 0xFFFFFFFFFFFFFFF8);
  mlir::Operation::~Operation(this);

  free(v5);
}

mlir::Block *mlir::Operation::isProperAncestor(mlir::Operation *this, Operation *ParentOp)
{
  do
  {
    result = *(ParentOp + 2);
    if (!result)
    {
      break;
    }

    ParentOp = mlir::Block::getParentOp(result);
    result = (ParentOp != 0);
  }

  while (ParentOp != this && ParentOp != 0);
  return result;
}

uint64_t *mlir::Operation::emitError@<X0>(uint64_t *__return_ptr a1@<X8>, mlir::Operation *this@<X0>, const llvm::Twine *a3@<X1>)
{
  v4 = (this + 24);
  mlir::emitError(*(this + 3), a3, a1);
  Context = mlir::Attribute::getContext(v4);
  result = mlir::MLIRContext::shouldPrintOpOnDiagnostic(Context);
  if (result)
  {
    mlir::Diagnostic::attachNote(a1 + 1, *v4, 1);
  }

  return result;
}

unint64_t mlir::Operation::getAttrDictionary(mlir::Operation *this)
{
  if (!*(this + 47))
  {
    return *(this + 7);
  }

  mlir::NamedAttrList::NamedAttrList(v5, *(this + 7));
  (*(**(this + 6) + 96))(*(this + 6), this, v5);
  Context = mlir::Attribute::getContext((this + 24));
  result = mlir::NamedAttrList::getDictionary(v5, Context);
  if (v5[0] != &v6)
  {
    v4 = result;
    free(v5[0]);
    return v4;
  }

  return result;
}

uint64_t mlir::Operation::getPropertiesAsAttribute(mlir::Operation *this)
{
  v2 = *(this + 6);
  if (v2[2] == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    return *(this + 2 * ((*(this + 11) >> 23) & 1) + 8);
  }

  else
  {
    return (*(*v2 + 19))(v2, this);
  }
}

BOOL mlir::Operation::isBeforeInBlock(mlir::Operation *this, mlir::Operation *a2)
{
  if (mlir::Block::isOpOrderValid(*(this + 2)))
  {
    mlir::Operation::updateOrderIfNecessary(this);
    mlir::Operation::updateOrderIfNecessary(a2);
  }

  else
  {
    mlir::Block::recomputeOpOrder(*(this + 2));
  }

  return *(this + 8) < *(a2 + 8);
}

uint64_t *mlir::Operation::updateOrderIfNecessary(uint64_t *this)
{
  if (*(this + 8) == -1)
  {
    v1 = this[2];
    v2 = *(v1 + 40);
    v3 = (v1 + 32);
    if (v2 == v1 + 32 || *(v2 + 8) != v3)
    {
      if (*v3 == this)
      {
        v7 = *this;
        if (v2 == this)
        {
          v7 = 0;
        }

        v8 = *(v7 + 32);
        if (v8 != -1)
        {
          *(this + 8) = v8 + 5;
          return this;
        }

        return mlir::Block::recomputeOpOrder(this[2]);
      }

      if (v2 != this)
      {
        v4 = *(*this + 32);
        if (v4 != -1)
        {
          v5 = this[1] == v3 ? 0 : this[1];
          v6 = *(v5 + 32);
          if (v6 != -1 && v4 + 1 != v6)
          {
            *(this + 8) = v4 + ((v6 - v4) >> 1);
            return this;
          }
        }

        return mlir::Block::recomputeOpOrder(this[2]);
      }

      if (this[1] == v3)
      {
        v9 = 0;
      }

      else
      {
        v9 = this[1];
      }

      v10 = *(v9 + 32);
      if (!v10 || v10 == -1)
      {
        return mlir::Block::recomputeOpOrder(this[2]);
      }

      if (v10 > 5)
      {
        *(this + 8) = 5;
      }

      else
      {
        *(this + 8) = v10 >> 1;
      }
    }
  }

  return this;
}

void llvm::ilist_traits<mlir::Operation>::deleteNode(unsigned int *a1)
{
  v2 = a1[9];
  NumTrailing = mlir::OpResult::getNumTrailing(v2);
  v4 = 16 * mlir::OpResult::getNumInline(v2) + 24 * NumTrailing;
  v5 = a1 - ((v4 - (v4 != 0) + 8 * (v4 != 0)) & 0xFFFFFFFFFFFFFFF8);
  mlir::Operation::~Operation(a1);

  free(v5);
}

uint64_t llvm::ilist_traits<mlir::Operation>::addNodeToList(uint64_t result, uint64_t a2)
{
  *(a2 + 16) = result - 32;
  *(a2 + 32) = -1;
  return result;
}

uint64_t llvm::ilist_traits<mlir::Operation>::transferNodesFromList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1 - 32;
  result = mlir::Block::invalidateOpOrder(a1 - 32);
  if (a1 != a2)
  {
    while (a3 != a4)
    {
      *(a3 + 16) = v8;
      a3 = *(a3 + 8);
    }
  }

  return result;
}

void mlir::Operation::erase(mlir::Operation *this)
{
  if (*(this + 2))
  {
    *(this + 2) = 0;
    v3 = *this;
    v2 = *(this + 1);
    *v2 = *this;
    *(v3 + 8) = v2;
    *this = 0;
    *(this + 1) = 0;
  }

  v4 = *(this + 9);
  NumTrailing = mlir::OpResult::getNumTrailing(v4);
  v6 = 16 * mlir::OpResult::getNumInline(v4) + 24 * NumTrailing;
  v7 = this - ((v6 - (v6 != 0) + 8 * (v6 != 0)) & 0xFFFFFFFFFFFFFFF8);
  mlir::Operation::~Operation(this);

  free(v7);
}

uint64_t *mlir::Operation::remove(uint64_t *this)
{
  if (this[2])
  {
    this[2] = 0;
    v2 = *this;
    v1 = this[1];
    *v1 = *this;
    *(v2 + 8) = v1;
    *this = 0;
    this[1] = 0;
  }

  return this;
}

uint64_t mlir::Operation::moveBefore(uint64_t result, mlir::Block *this, uint64_t *a3)
{
  if (result != a3)
  {
    v4 = result;
    v5 = *(result + 8);
    if (v5 != a3)
    {
      v7 = *(result + 16);
      result = mlir::Block::invalidateOpOrder(this);
      if (v7 != this && v5 != v4)
      {
        v9 = v4;
        do
        {
          v9[2] = this;
          v9 = v9[1];
        }

        while (v9 != v5);
      }

      if (v5 != v4)
      {
        v10 = *v5;
        v11 = *v4;
        *(v11 + 8) = v5;
        *v5 = v11;
        v12 = *a3;
        *(v10 + 8) = a3;
        *v4 = v12;
        *(v12 + 8) = v4;
        *a3 = v10;
      }
    }
  }

  return result;
}

uint64_t mlir::Operation::dropAllDefinedValueUses(uint64_t this)
{
  v1 = this;
  v2 = *(this + 36);
  if (v2)
  {
    v3 = this - 16;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      this = mlir::detail::OpResultImpl::getNextResultAtOffset(v3, i);
      while (1)
      {
        v5 = *this;
        if (!*this)
        {
          break;
        }

        v6 = v5[1];
        if (v6)
        {
          v7 = *v5;
          *v6 = *v5;
          if (v7)
          {
            *(v7 + 8) = v6;
          }
        }

        *v5 = 0;
        v5[1] = 0;
        v5[3] = 0;
      }
    }
  }

  v8 = *(v1 + 44);
  if ((v8 & 0x7FFFFF) != 0)
  {
    v9 = ((v1 + 16 * ((v8 >> 23) & 1) + ((v8 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v1 + 40);
    v10 = v9 + 24 * (v8 & 0x7FFFFF);
    j = *(v9 + 8);
    if (j != v9)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v9 += 24;
      if (v9 == v10)
      {
        break;
      }

      for (j = *(v9 + 8); j != v9; j = *(j + 8))
      {
LABEL_17:
        if (j)
        {
          v12 = (j - 8);
        }

        else
        {
          v12 = 0;
        }

        this = mlir::Block::dropAllDefinedValueUses(v12);
      }
    }
  }

  return this;
}

uint64_t mlir::Operation::fold(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(**(a1 + 48) + 16))(*(a1 + 48), a1, a2, a3, a4))
  {
    return 1;
  }

  v9 = *(a1 + 48);
  if (*(v9 + 16) != &mlir::detail::TypeIDResolver<void,void>::id)
  {
    ReferencedDialect = *(v9 + 24);
    if (ReferencedDialect)
    {
      goto LABEL_6;
    }

    return 0;
  }

  v12 = *(v9 + 8);
  ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v12);
  if (!ReferencedDialect)
  {
    return 0;
  }

LABEL_6:
  result = sub_10013ED08(ReferencedDialect);
  if (result)
  {
    v11 = sub_10013ED08(ReferencedDialect);
    return (*(*v11 + 16))(v11, a1, a2, a3, a4);
  }

  return result;
}

void mlir::Operation::emitOpError(uint64_t *__return_ptr a1@<X8>, mlir::Operation *this@<X0>, void ***a3@<X1>)
{
  v24 = 257;
  mlir::Operation::emitError(&v28, this, v23);
  if (v28)
  {
    v25 = 3;
    v26 = "'";
    v27 = 1;
    v6 = &v25;
    v7 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v25 && v30 + 24 * v31 > &v25)
      {
        v21 = &v25 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v7 = v30;
        v6 = (v30 + v21);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v6 = &v25;
        v7 = v30;
      }
    }

    v8 = &v7[24 * v31];
    v9 = *v6;
    *(v8 + 2) = *(v6 + 2);
    *v8 = v9;
    ++v31;
    if (v28)
    {
      mlir::Diagnostic::operator<<(v29, *(this + 6));
      if (v28)
      {
        v25 = 3;
        v26 = "' op ";
        v27 = 5;
        v10 = &v25;
        v11 = v30;
        if (v31 >= v32)
        {
          if (v30 <= &v25 && v30 + 24 * v31 > &v25)
          {
            v22 = &v25 - v30;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
            v11 = v30;
            v10 = (v30 + v22);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
            v10 = &v25;
            v11 = v30;
          }
        }

        v12 = &v11[24 * v31];
        v13 = *v10;
        *(v12 + 2) = *(v10 + 2);
        *v12 = v13;
        ++v31;
        if (v28)
        {
          mlir::Diagnostic::operator<<(v29, a3);
        }
      }
    }
  }

  sub_100062C04(a1, &v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v37;
      v16 = __p;
      if (v37 != __p)
      {
        do
        {
          v15 = sub_100052FFC(v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v37 = v14;
      operator delete(v16);
    }

    v17 = v34;
    if (v34)
    {
      v18 = v35;
      v19 = v34;
      if (v35 != v34)
      {
        do
        {
          v20 = *--v18;
          *v18 = 0;
          if (v20)
          {
            operator delete[]();
          }
        }

        while (v18 != v17);
        v19 = v34;
      }

      v35 = v17;
      operator delete(v19);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}

_BYTE *mlir::Operation::CloneOptions::cloneOperands(_BYTE *this, int a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *this = *this & 0xFD | v2;
  return this;
}

uint64_t mlir::OpState::parse(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*(v4 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v18[0] = *(v4 + 8);
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(v18);
    v4 = *(a2 + 8);
  }

  else
  {
    ReferencedDialect = *(v4 + 24);
  }

  v18[0] = *(v4 + 8);
  Value = mlir::StringAttr::getValue(v18);
  (*(*ReferencedDialect + 64))(v20, ReferencedDialect, Value, v7);
  if (v21 == 1)
  {
    return (v20[0])(v20[1], a1, a2);
  }

  v9 = (*(*a1 + 16))(a1);
  v18[0] = "has no custom assembly form";
  v19 = 259;
  (*(*a1 + 24))(v20, a1, v9, v18);
  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
  if (v20[0])
  {
    mlir::InFlightDiagnostic::report(v20);
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v27;
      v12 = __p;
      if (v27 != __p)
      {
        do
        {
          v11 = sub_100052FFC(v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v27 = v10;
      operator delete(v12);
    }

    v13 = v24;
    if (v24)
    {
      v14 = v25;
      v15 = v24;
      if (v25 != v24)
      {
        do
        {
          v16 = *--v14;
          *v14 = 0;
          if (v16)
          {
            operator delete[]();
          }
        }

        while (v14 != v13);
        v15 = v24;
      }

      v25 = v13;
      operator delete(v15);
    }

    if (v22 != &v23)
    {
      free(v22);
    }
  }

  return v8;
}

void mlir::OpState::print(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 48);
  if (*(v8 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v13[0] = *(v8 + 8);
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(v13);
  }

  else
  {
    ReferencedDialect = *(v8 + 24);
  }

  (*(*ReferencedDialect + 72))(v13);
  if (v14 < 8)
  {
    (*(*a2 + 216))(a2, a1, 1);
    v11 = v14;
    if (v14 < 8)
    {
      return;
    }
  }

  else
  {
    mlir::OpState::printOpName(a1, a2, a3, a4);
    if ((v14 & 2) != 0)
    {
      v10 = v13;
    }

    else
    {
      v10 = v13[0];
    }

    (*(v14 & 0xFFFFFFFFFFFFFFF8))(v10, a1, a2);
    v11 = v14;
    if (v14 < 8)
    {
      return;
    }
  }

  if ((v11 & 4) != 0)
  {
    if ((v11 & 2) != 0)
    {
      v12 = v13;
    }

    else
    {
      v12 = v13[0];
    }

    (*((v11 & 0xFFFFFFFFFFFFFFF8) + 16))(v12);
  }

  if ((v11 & 2) == 0)
  {
    llvm::deallocate_buffer(v13[0], v13[1], v13[2]);
  }
}

void *mlir::OpState::printOpName(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v78[0] = *(*(a1 + 48) + 8);
  Value = mlir::StringAttr::getValue(v78);
  v9 = v8;
  v79 = 773;
  v78[0] = a3;
  v78[1] = a4;
  v78[2] = ".";
  llvm::Twine::str(v78, v80);
  v10 = v81;
  v11 = v80[0];
  if (v81 >= 0)
  {
    v12 = v80;
  }

  else
  {
    v12 = v80[0];
  }

  if (v81 >= 0)
  {
    v13 = v81;
  }

  else
  {
    v13 = v80[1];
  }

  if (v9 < v13 || v13 && memcmp(Value, v12, v13))
  {
    if (v10 < 0)
    {
      operator delete(v11);
    }

    goto LABEL_37;
  }

  if (v9)
  {
    if (v9 < 8)
    {
      v14 = 0;
      v15 = 0;
      goto LABEL_26;
    }

    if (v9 >= 0x20)
    {
      v17 = 0uLL;
      v18.i64[0] = 0x2E2E2E2E2E2E2E2ELL;
      v18.i64[1] = 0x2E2E2E2E2E2E2E2ELL;
      v19 = vdupq_n_s64(1uLL);
      v14 = v9 & 0xFFFFFFFFFFFFFFE0;
      v20 = 0uLL;
      v21 = Value + 1;
      v22 = 0uLL;
      v23 = v9 & 0xFFFFFFFFFFFFFFE0;
      v24 = 0uLL;
      v25 = 0uLL;
      v26 = 0uLL;
      v27 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      v32 = 0uLL;
      v33 = 0uLL;
      v34 = 0uLL;
      v35 = 0uLL;
      v36 = 0uLL;
      do
      {
        v37 = vceqq_s8(v21[-1], v18);
        v38 = vmovl_u8(*v37.i8);
        v39 = vmovl_high_u8(v37);
        v40 = vmovl_high_u16(v39);
        v41.i64[0] = v40.u32[2];
        v41.i64[1] = v40.u32[3];
        v28 = vaddq_s64(v28, vandq_s8(v41, v19));
        v42 = vmovl_high_u16(v38);
        v43 = vmovl_u16(*v39.i8);
        v41.i64[0] = v40.u32[0];
        v41.i64[1] = v40.u32[1];
        v27 = vaddq_s64(v27, vandq_s8(v41, v19));
        v41.i64[0] = v43.u32[2];
        v41.i64[1] = v43.u32[3];
        v26 = vaddq_s64(v26, vandq_s8(v41, v19));
        v41.i64[0] = v42.u32[2];
        v41.i64[1] = v42.u32[3];
        v24 = vaddq_s64(v24, vandq_s8(v41, v19));
        v44 = vmovl_u16(*v38.i8);
        v41.i64[0] = v43.u32[0];
        v41.i64[1] = v43.u32[1];
        v25 = vaddq_s64(v25, vandq_s8(v41, v19));
        v41.i64[0] = v44.u32[0];
        v41.i64[1] = v44.u32[1];
        v45 = vandq_s8(v41, v19);
        v41.i64[0] = v44.u32[2];
        v41.i64[1] = v44.u32[3];
        v46 = vandq_s8(v41, v19);
        v41.i64[0] = v42.u32[0];
        v41.i64[1] = v42.u32[1];
        v47 = vceqq_s8(*v21, v18);
        v22 = vaddq_s64(v22, vandq_s8(v41, v19));
        v48 = vmovl_u8(*v47.i8);
        v49 = vmovl_high_u8(v47);
        v20 = vaddq_s64(v20, v46);
        v50 = vmovl_high_u16(v49);
        v17 = vaddq_s64(v17, v45);
        v41.i64[0] = v50.u32[2];
        v41.i64[1] = v50.u32[3];
        v36 = vaddq_s64(v36, vandq_s8(v41, v19));
        v51 = vmovl_high_u16(v48);
        v52 = vmovl_u16(*v49.i8);
        v41.i64[0] = v50.u32[0];
        v41.i64[1] = v50.u32[1];
        v35 = vaddq_s64(v35, vandq_s8(v41, v19));
        v41.i64[0] = v52.u32[2];
        v41.i64[1] = v52.u32[3];
        v34 = vaddq_s64(v34, vandq_s8(v41, v19));
        v41.i64[0] = v51.u32[2];
        v41.i64[1] = v51.u32[3];
        v32 = vaddq_s64(v32, vandq_s8(v41, v19));
        v41.i64[0] = v52.u32[0];
        v41.i64[1] = v52.u32[1];
        v33 = vaddq_s64(v33, vandq_s8(v41, v19));
        v53 = vmovl_u16(*v48.i8);
        v41.i64[0] = v51.u32[0];
        v41.i64[1] = v51.u32[1];
        v31 = vaddq_s64(v31, vandq_s8(v41, v19));
        v41.i64[0] = v53.u32[2];
        v41.i64[1] = v53.u32[3];
        v30 = vaddq_s64(v30, vandq_s8(v41, v19));
        v41.i64[0] = v53.u32[0];
        v41.i64[1] = v53.u32[1];
        v29 = vaddq_s64(v29, vandq_s8(v41, v19));
        v21 += 2;
        v23 -= 32;
      }

      while (v23);
      v15 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v29, v17), vaddq_s64(v33, v25)), vaddq_s64(vaddq_s64(v31, v22), vaddq_s64(v35, v27))), vaddq_s64(vaddq_s64(vaddq_s64(v30, v20), vaddq_s64(v34, v26)), vaddq_s64(vaddq_s64(v32, v24), vaddq_s64(v36, v28)))));
      if (v9 == v14)
      {
        goto LABEL_30;
      }

      if ((v9 & 0x18) == 0)
      {
LABEL_26:
        v70 = v9 - v14;
        v71 = &Value->u8[v14];
        do
        {
          v72 = *v71++;
          if (v72 == 46)
          {
            ++v15;
          }

          --v70;
        }

        while (v70);
LABEL_30:
        v16 = v15 == 1;
        if ((v10 & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }
    }

    else
    {
      v15 = 0;
      v14 = 0;
    }

    v54 = v14;
    v14 = v9 & 0xFFFFFFFFFFFFFFF8;
    v55 = 0uLL;
    v56 = v15;
    v57 = &Value->i8[v54];
    v58 = v54 - (v9 & 0xFFFFFFFFFFFFFFF8);
    v59 = vdupq_n_s64(1uLL);
    v60 = 0uLL;
    v61 = 0uLL;
    do
    {
      v62 = *v57++;
      v63 = vmovl_u8(vceq_s8(v62, 0x2E2E2E2E2E2E2E2ELL));
      v64 = vmovl_u16(*v63.i8);
      v65.i64[0] = v64.u32[0];
      v65.i64[1] = v64.u32[1];
      v66 = vandq_s8(v65, v59);
      v65.i64[0] = v64.u32[2];
      v65.i64[1] = v64.u32[3];
      v67 = vandq_s8(v65, v59);
      v68 = vmovl_high_u16(v63);
      v65.i64[0] = v68.u32[0];
      v65.i64[1] = v68.u32[1];
      v69 = vandq_s8(v65, v59);
      v65.i64[0] = v68.u32[2];
      v65.i64[1] = v68.u32[3];
      v61 = vaddq_s64(v61, vandq_s8(v65, v59));
      v60 = vaddq_s64(v60, v69);
      v55 = vaddq_s64(v55, v67);
      v56 = vaddq_s64(v56, v66);
      v58 += 8;
    }

    while (v58);
    v15 = vaddvq_s64(vaddq_s64(vaddq_s64(v56, v60), vaddq_s64(v55, v61)));
    if (v9 == v14)
    {
      goto LABEL_30;
    }

    goto LABEL_26;
  }

  v16 = 0;
  if ((v10 & 0x80000000) == 0)
  {
    goto LABEL_32;
  }

LABEL_31:
  operator delete(v11);
LABEL_32:
  if (v9 >= a4 + 1)
  {
    v73 = a4 + 1;
  }

  else
  {
    v73 = v9;
  }

  v74 = (Value + v73);
  v75 = v9 - v73;
  if (v16)
  {
    Value = v74;
    v9 = v75;
  }

LABEL_37:
  result = (*(*a2 + 16))(a2);
  if (v9 > result[3] - result[4])
  {
    return llvm::raw_ostream::write(result, Value->i8, v9);
  }

  if (v9)
  {
    v77 = result;
    result = memcpy(result[4], Value, v9);
    v77[4] += v9;
  }

  return result;
}

BOOL mlir::OpTrait::impl::verifyOneOperand(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  if ((*(this + 46) & 0x80) != 0 && *(this + 17) == 1)
  {
    return 1;
  }

  v17 = 257;
  mlir::Operation::emitOpError(v21, this, &v16);
  if (v21[0])
  {
    v18 = 3;
    v19 = "requires a single operand";
    v20 = 25;
    v3 = &v18;
    v4 = v22;
    if (v23 >= v24)
    {
      if (v22 <= &v18 && v22 + 24 * v23 > &v18)
      {
        v15 = &v18 - v22;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v25, v23 + 1, 24);
        v4 = v22;
        v3 = (v22 + v15);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v25, v23 + 1, 24);
        v3 = &v18;
        v4 = v22;
      }
    }

    v5 = &v4[24 * v23];
    v6 = *v3;
    *(v5 + 2) = *(v3 + 2);
    *v5 = v6;
    ++v23;
  }

  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v29;
      v9 = __p;
      if (v29 != __p)
      {
        do
        {
          v8 = sub_100052FFC(v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v29 = v7;
      operator delete(v9);
    }

    v10 = v26;
    if (v26)
    {
      v11 = v27;
      v12 = v26;
      if (v27 != v26)
      {
        do
        {
          v13 = *--v11;
          *v11 = 0;
          if (v13)
          {
            operator delete[]();
          }
        }

        while (v11 != v10);
        v12 = v26;
      }

      v27 = v10;
      operator delete(v12);
    }

    if (v22 != v25)
    {
      free(v22);
    }
  }

  return v2;
}

BOOL mlir::OpTrait::impl::verifyZeroRegions(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  if ((*(this + 11) & 0x7FFFFF) == 0)
  {
    return 1;
  }

  v17 = 257;
  mlir::Operation::emitOpError(v21, this, &v16);
  if (v21[0])
  {
    v18 = 3;
    v19 = "requires zero regions";
    v20 = 21;
    v2 = &v18;
    v3 = v22;
    if (v23 >= v24)
    {
      if (v22 <= &v18 && v22 + 24 * v23 > &v18)
      {
        v15 = &v18 - v22;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v25, v23 + 1, 24);
        v3 = v22;
        v2 = (v22 + v15);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v25, v23 + 1, 24);
        v2 = &v18;
        v3 = v22;
      }
    }

    v4 = &v3[24 * v23];
    v5 = *v2;
    *(v4 + 2) = *(v2 + 2);
    *v4 = v5;
    ++v23;
  }

  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v29;
      v9 = __p;
      if (v29 != __p)
      {
        do
        {
          v8 = sub_100052FFC(v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v29 = v7;
      operator delete(v9);
    }

    v10 = v26;
    if (v26)
    {
      v11 = v27;
      v12 = v26;
      if (v27 != v26)
      {
        do
        {
          v13 = *--v11;
          *v11 = 0;
          if (v13)
          {
            operator delete[]();
          }
        }

        while (v11 != v10);
        v12 = v26;
      }

      v27 = v10;
      operator delete(v12);
    }

    if (v22 != v25)
    {
      free(v22);
    }
  }

  return v6;
}

BOOL mlir::OpTrait::impl::verifyOneRegion(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  if ((*(this + 11) & 0x7FFFFF) == 1)
  {
    return 1;
  }

  v17 = 257;
  mlir::Operation::emitOpError(v21, this, &v16);
  if (v21[0])
  {
    v18 = 3;
    v19 = "requires one region";
    v20 = 19;
    v3 = &v18;
    v4 = v22;
    if (v23 >= v24)
    {
      if (v22 <= &v18 && v22 + 24 * v23 > &v18)
      {
        v15 = &v18 - v22;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v25, v23 + 1, 24);
        v4 = v22;
        v3 = (v22 + v15);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v25, v23 + 1, 24);
        v3 = &v18;
        v4 = v22;
      }
    }

    v5 = &v4[24 * v23];
    v6 = *v3;
    *(v5 + 2) = *(v3 + 2);
    *v5 = v6;
    ++v23;
  }

  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v29;
      v9 = __p;
      if (v29 != __p)
      {
        do
        {
          v8 = sub_100052FFC(v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v29 = v7;
      operator delete(v9);
    }

    v10 = v26;
    if (v26)
    {
      v11 = v27;
      v12 = v26;
      if (v27 != v26)
      {
        do
        {
          v13 = *--v11;
          *v11 = 0;
          if (v13)
          {
            operator delete[]();
          }
        }

        while (v11 != v10);
        v12 = v26;
      }

      v27 = v10;
      operator delete(v12);
    }

    if (v22 != v25)
    {
      free(v22);
    }
  }

  return v2;
}

BOOL mlir::OpTrait::impl::verifyNRegions(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  if ((*(this + 11) & 0x7FFFFF) == a2)
  {
    return 1;
  }

  v3 = a2;
  v30 = 257;
  mlir::Operation::emitOpError(v34, this, &v29);
  if (v34[0])
  {
    v31 = 3;
    v32 = "expected ";
    v33 = 9;
    v4 = &v31;
    v5 = v35;
    if (v36 >= v37)
    {
      if (v35 <= &v31 && v35 + 24 * v36 > &v31)
      {
        v26 = &v31 - v35;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
        v5 = v35;
        v4 = (v35 + v26);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
        v4 = &v31;
        v5 = v35;
      }
    }

    v6 = &v5[24 * v36];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    v8 = ++v36;
    if (v34[0])
    {
      v31 = 5;
      v32 = v3;
      v9 = &v31;
      v10 = v35;
      if (v8 >= v37)
      {
        if (v35 <= &v31 && v35 + 24 * v8 > &v31)
        {
          v27 = &v31 - v35;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v8 + 1, 24);
          v10 = v35;
          v9 = (v35 + v27);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v8 + 1, 24);
          v9 = &v31;
          v10 = v35;
        }
      }

      v11 = &v10[24 * v36];
      v12 = *v9;
      *(v11 + 2) = *(v9 + 2);
      *v11 = v12;
      v13 = ++v36;
      if (v34[0])
      {
        v31 = 3;
        v32 = " regions";
        v33 = 8;
        v14 = &v31;
        v15 = v35;
        if (v13 >= v37)
        {
          if (v35 <= &v31 && v35 + 24 * v13 > &v31)
          {
            v28 = &v31 - v35;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v13 + 1, 24);
            v15 = v35;
            v14 = (v35 + v28);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v13 + 1, 24);
            v14 = &v31;
            v15 = v35;
          }
        }

        v16 = &v15[24 * v36];
        v17 = *v14;
        *(v16 + 2) = *(v14 + 2);
        *v16 = v17;
        ++v36;
      }
    }
  }

  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
  if (v34[0])
  {
    mlir::InFlightDiagnostic::report(v34);
  }

  if (v44 == 1)
  {
    if (v43 != &v44)
    {
      free(v43);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v42;
      v20 = __p;
      if (v42 != __p)
      {
        do
        {
          v19 = sub_100052FFC(v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v42 = v18;
      operator delete(v20);
    }

    v21 = v39;
    if (v39)
    {
      v22 = v40;
      v23 = v39;
      if (v40 != v39)
      {
        do
        {
          v24 = *--v22;
          *v22 = 0;
          if (v24)
          {
            operator delete[]();
          }
        }

        while (v22 != v21);
        v23 = v39;
      }

      v40 = v21;
      operator delete(v23);
    }

    if (v35 != v38)
    {
      free(v35);
    }
  }

  return v2;
}

BOOL mlir::OpTrait::impl::verifyZeroResults(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  if (!*(this + 9))
  {
    return 1;
  }

  v17 = 257;
  mlir::Operation::emitOpError(v21, this, &v16);
  if (v21[0])
  {
    v18 = 3;
    v19 = "requires zero results";
    v20 = 21;
    v2 = &v18;
    v3 = v22;
    if (v23 >= v24)
    {
      if (v22 <= &v18 && v22 + 24 * v23 > &v18)
      {
        v15 = &v18 - v22;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v25, v23 + 1, 24);
        v3 = v22;
        v2 = (v22 + v15);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v25, v23 + 1, 24);
        v2 = &v18;
        v3 = v22;
      }
    }

    v4 = &v3[24 * v23];
    v5 = *v2;
    *(v4 + 2) = *(v2 + 2);
    *v4 = v5;
    ++v23;
  }

  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v29;
      v9 = __p;
      if (v29 != __p)
      {
        do
        {
          v8 = sub_100052FFC(v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v29 = v7;
      operator delete(v9);
    }

    v10 = v26;
    if (v26)
    {
      v11 = v27;
      v12 = v26;
      if (v27 != v26)
      {
        do
        {
          v13 = *--v11;
          *v11 = 0;
          if (v13)
          {
            operator delete[]();
          }
        }

        while (v11 != v10);
        v12 = v26;
      }

      v27 = v10;
      operator delete(v12);
    }

    if (v22 != v25)
    {
      free(v22);
    }
  }

  return v6;
}

BOOL mlir::OpTrait::impl::verifyOneResult(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  if (*(this + 9) == 1)
  {
    return 1;
  }

  v17 = 257;
  mlir::Operation::emitOpError(v21, this, &v16);
  if (v21[0])
  {
    v18 = 3;
    v19 = "requires one result";
    v20 = 19;
    v3 = &v18;
    v4 = v22;
    if (v23 >= v24)
    {
      if (v22 <= &v18 && v22 + 24 * v23 > &v18)
      {
        v15 = &v18 - v22;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v25, v23 + 1, 24);
        v4 = v22;
        v3 = (v22 + v15);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v25, v23 + 1, 24);
        v3 = &v18;
        v4 = v22;
      }
    }

    v5 = &v4[24 * v23];
    v6 = *v3;
    *(v5 + 2) = *(v3 + 2);
    *v5 = v6;
    ++v23;
  }

  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v29;
      v9 = __p;
      if (v29 != __p)
      {
        do
        {
          v8 = sub_100052FFC(v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v29 = v7;
      operator delete(v9);
    }

    v10 = v26;
    if (v26)
    {
      v11 = v27;
      v12 = v26;
      if (v27 != v26)
      {
        do
        {
          v13 = *--v11;
          *v11 = 0;
          if (v13)
          {
            operator delete[]();
          }
        }

        while (v11 != v10);
        v12 = v26;
      }

      v27 = v10;
      operator delete(v12);
    }

    if (v22 != v25)
    {
      free(v22);
    }
  }

  return v2;
}

BOOL mlir::OpTrait::impl::verifyNResults(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  if (*(this + 9) == a2)
  {
    return 1;
  }

  v3 = a2;
  v30 = 257;
  mlir::Operation::emitOpError(v34, this, &v29);
  if (v34[0])
  {
    v31 = 3;
    v32 = "expected ";
    v33 = 9;
    v4 = &v31;
    v5 = v35;
    if (v36 >= v37)
    {
      if (v35 <= &v31 && v35 + 24 * v36 > &v31)
      {
        v26 = &v31 - v35;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
        v5 = v35;
        v4 = (v35 + v26);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
        v4 = &v31;
        v5 = v35;
      }
    }

    v6 = &v5[24 * v36];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    v8 = ++v36;
    if (v34[0])
    {
      v31 = 5;
      v32 = v3;
      v9 = &v31;
      v10 = v35;
      if (v8 >= v37)
      {
        if (v35 <= &v31 && v35 + 24 * v8 > &v31)
        {
          v27 = &v31 - v35;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v8 + 1, 24);
          v10 = v35;
          v9 = (v35 + v27);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v8 + 1, 24);
          v9 = &v31;
          v10 = v35;
        }
      }

      v11 = &v10[24 * v36];
      v12 = *v9;
      *(v11 + 2) = *(v9 + 2);
      *v11 = v12;
      v13 = ++v36;
      if (v34[0])
      {
        v31 = 3;
        v32 = " results";
        v33 = 8;
        v14 = &v31;
        v15 = v35;
        if (v13 >= v37)
        {
          if (v35 <= &v31 && v35 + 24 * v13 > &v31)
          {
            v28 = &v31 - v35;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v13 + 1, 24);
            v15 = v35;
            v14 = (v35 + v28);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v13 + 1, 24);
            v14 = &v31;
            v15 = v35;
          }
        }

        v16 = &v15[24 * v36];
        v17 = *v14;
        *(v16 + 2) = *(v14 + 2);
        *v16 = v17;
        ++v36;
      }
    }
  }

  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
  if (v34[0])
  {
    mlir::InFlightDiagnostic::report(v34);
  }

  if (v44 == 1)
  {
    if (v43 != &v44)
    {
      free(v43);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v42;
      v20 = __p;
      if (v42 != __p)
      {
        do
        {
          v19 = sub_100052FFC(v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v42 = v18;
      operator delete(v20);
    }

    v21 = v39;
    if (v39)
    {
      v22 = v40;
      v23 = v39;
      if (v40 != v39)
      {
        do
        {
          v24 = *--v22;
          *v22 = 0;
          if (v24)
          {
            operator delete[]();
          }
        }

        while (v22 != v21);
        v23 = v39;
      }

      v40 = v21;
      operator delete(v23);
    }

    if (v35 != v38)
    {
      free(v35);
    }
  }

  return v2;
}

BOOL mlir::OpTrait::impl::verifyAtLeastNResults(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  if (*(this + 9) >= a2)
  {
    return 1;
  }

  v2 = a2;
  v30 = 257;
  mlir::Operation::emitOpError(v34, this, &v29);
  if (v34[0])
  {
    v31 = 3;
    v32 = "expected ";
    v33 = 9;
    v3 = &v31;
    v4 = v35;
    if (v36 >= v37)
    {
      if (v35 <= &v31 && v35 + 24 * v36 > &v31)
      {
        v26 = &v31 - v35;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
        v4 = v35;
        v3 = (v35 + v26);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
        v3 = &v31;
        v4 = v35;
      }
    }

    v5 = &v4[24 * v36];
    v6 = *v3;
    *(v5 + 2) = *(v3 + 2);
    *v5 = v6;
    v7 = ++v36;
    if (v34[0])
    {
      v31 = 5;
      v32 = v2;
      v8 = &v31;
      v9 = v35;
      if (v7 >= v37)
      {
        if (v35 <= &v31 && v35 + 24 * v7 > &v31)
        {
          v27 = &v31 - v35;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v7 + 1, 24);
          v9 = v35;
          v8 = (v35 + v27);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v7 + 1, 24);
          v8 = &v31;
          v9 = v35;
        }
      }

      v10 = &v9[24 * v36];
      v11 = *v8;
      *(v10 + 2) = *(v8 + 2);
      *v10 = v11;
      v12 = ++v36;
      if (v34[0])
      {
        v31 = 3;
        v32 = " or more results";
        v33 = 16;
        v13 = &v31;
        v14 = v35;
        if (v12 >= v37)
        {
          if (v35 <= &v31 && v35 + 24 * v12 > &v31)
          {
            v28 = &v31 - v35;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v12 + 1, 24);
            v14 = v35;
            v13 = (v35 + v28);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v12 + 1, 24);
            v13 = &v31;
            v14 = v35;
          }
        }

        v15 = &v14[24 * v36];
        v16 = *v13;
        *(v15 + 2) = *(v13 + 2);
        *v15 = v16;
        ++v36;
      }
    }
  }

  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
  if (v34[0])
  {
    mlir::InFlightDiagnostic::report(v34);
  }

  if (v44 == 1)
  {
    if (v43 != &v44)
    {
      free(v43);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v42;
      v20 = __p;
      if (v42 != __p)
      {
        do
        {
          v19 = sub_100052FFC(v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v42 = v18;
      operator delete(v20);
    }

    v21 = v39;
    if (v39)
    {
      v22 = v40;
      v23 = v39;
      if (v40 != v39)
      {
        do
        {
          v24 = *--v22;
          *v22 = 0;
          if (v24)
          {
            operator delete[]();
          }
        }

        while (v22 != v21);
        v23 = v39;
      }

      v40 = v21;
      operator delete(v23);
    }

    if (v35 != v38)
    {
      free(v35);
    }
  }

  return v17;
}

BOOL mlir::OpTrait::impl::verifyIsTerminator(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v2 = *(this + 2);
  if (v2 && *(v2 + 32) == this)
  {
    return 1;
  }

  v12 = "must be the last operation in the parent block";
  v13 = 259;
  mlir::Operation::emitOpError(v14, this, &v12);
  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
  if (v14[0])
  {
    mlir::InFlightDiagnostic::report(v14);
  }

  if (v22 == 1)
  {
    if (v21 != &v22)
    {
      free(v21);
    }

    v4 = __p;
    if (__p)
    {
      v5 = v20;
      v6 = __p;
      if (v20 != __p)
      {
        do
        {
          v5 = sub_100052FFC(v5 - 1);
        }

        while (v5 != v4);
        v6 = __p;
      }

      v20 = v4;
      operator delete(v6);
    }

    v7 = v17;
    if (v17)
    {
      v8 = v18;
      v9 = v17;
      if (v18 != v17)
      {
        do
        {
          v10 = *--v8;
          *v8 = 0;
          if (v10)
          {
            operator delete[]();
          }
        }

        while (v8 != v7);
        v9 = v17;
      }

      v18 = v7;
      operator delete(v9);
    }

    if (v15 != &v16)
    {
      free(v15);
    }
  }

  return v3;
}

BOOL mlir::OpTrait::impl::verifyZeroSuccessors(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  if (!*(this + 10))
  {
    return 1;
  }

  v18 = "requires 0 successors but found ";
  v19 = 259;
  mlir::Operation::emitOpError(v22, this, &v18);
  if (v22[0])
  {
    v3 = *(this + 10);
    v20 = 5;
    v21 = v3;
    v4 = &v20;
    v5 = v23;
    if (v24 >= v25)
    {
      if (v23 <= &v20 && v23 + 24 * v24 > &v20)
      {
        v17 = &v20 - v23;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 24);
        v5 = v23;
        v4 = (v23 + v17);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 24);
        v4 = &v20;
        v5 = v23;
      }
    }

    v6 = &v5[24 * v24];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    ++v24;
  }

  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
  if (v22[0])
  {
    mlir::InFlightDiagnostic::report(v22);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v30;
      v11 = __p;
      if (v30 != __p)
      {
        do
        {
          v10 = sub_100052FFC(v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v30 = v9;
      operator delete(v11);
    }

    v12 = v27;
    if (v27)
    {
      v13 = v28;
      v14 = v27;
      if (v28 != v27)
      {
        do
        {
          v15 = *--v13;
          *v13 = 0;
          if (v15)
          {
            operator delete[]();
          }
        }

        while (v13 != v12);
        v14 = v27;
      }

      v28 = v12;
      operator delete(v14);
    }

    if (v23 != v26)
    {
      free(v23);
    }
  }

  return v8;
}

BOOL mlir::OpTrait::impl::verifyNoRegionArguments(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v2 = *(this + 11);
  if ((v2 & 0x7FFFFF) == 0)
  {
    return 1;
  }

  v3 = (((this + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10));
  v4 = 24 * (v2 & 0x7FFFFF);
  while (1)
  {
    if (v3 != *v3)
    {
      v5 = v3[1];
      v6 = v5 ? v5 - 8 : 0;
      if (((*(v6 + 56) - *(v6 + 48)) & 0x7FFFFFFF8) != 0)
      {
        break;
      }
    }

    v3 += 3;
    v4 -= 24;
    if (!v4)
    {
      return 1;
    }
  }

  if ((v2 & 0x7FFFFE) != 0)
  {
    v33[0] = "region #";
    v34 = 259;
    mlir::Operation::emitOpError(v38, this, v33);
    RegionNumber = mlir::Region::getRegionNumber(v3);
    if (v38[0])
    {
      v35 = 5;
      v36 = RegionNumber;
      v8 = &v35;
      v9 = v39;
      if (v40 >= v41)
      {
        if (v39 <= &v35 && v39 + 24 * v40 > &v35)
        {
          v31 = &v35 - v39;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
          v9 = v39;
          v8 = (v39 + v31);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
          v8 = &v35;
          v9 = v39;
        }
      }

      v10 = &v9[24 * v40];
      v11 = *v8;
      *(v10 + 2) = *(v8 + 2);
      *v10 = v11;
      v12 = ++v40;
      if (v38[0])
      {
        v35 = 3;
        v36 = " should have no arguments";
        v37 = 25;
        v13 = &v35;
        v14 = v39;
        if (v12 >= v41)
        {
          if (v39 <= &v35 && v39 + 24 * v12 > &v35)
          {
            v32 = &v35 - v39;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v12 + 1, 24);
            v14 = v39;
            v13 = (v39 + v32);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v12 + 1, 24);
            v13 = &v35;
            v14 = v39;
          }
        }

        v15 = &v14[24 * v40];
        v16 = *v13;
        *(v15 + 2) = *(v13 + 2);
        *v15 = v16;
        ++v40;
      }
    }

    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v38);
    v18 = result;
    if (v38[0])
    {
      mlir::InFlightDiagnostic::report(v38);
      result = v18;
    }

    if (v48 == 1)
    {
      if (v47 != &v48)
      {
        free(v47);
        result = v18;
      }

      v19 = __p;
      if (__p)
      {
        v20 = v46;
        v21 = __p;
        if (v46 != __p)
        {
          do
          {
            v20 = sub_100052FFC(v20 - 1);
          }

          while (v20 != v19);
          v21 = __p;
        }

        v46 = v19;
        operator delete(v21);
        result = v18;
      }

      v22 = v43;
      if (!v43)
      {
        goto LABEL_51;
      }

      v23 = v44;
      v24 = v43;
      if (v44 == v43)
      {
LABEL_50:
        v44 = v22;
        operator delete(v24);
        result = v18;
LABEL_51:
        if (v39 != v42)
        {
          free(v39);
          return v18;
        }

        return result;
      }

      do
      {
        v25 = *--v23;
        *v23 = 0;
        if (v25)
        {
          operator delete[]();
        }
      }

      while (v23 != v22);
LABEL_49:
      v24 = v43;
      goto LABEL_50;
    }
  }

  else
  {
    v33[0] = "region should have no arguments";
    v34 = 259;
    mlir::Operation::emitOpError(v38, this, v33);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v38);
    v18 = result;
    if (v38[0])
    {
      mlir::InFlightDiagnostic::report(v38);
      result = v18;
    }

    if (v48 == 1)
    {
      if (v47 != &v48)
      {
        free(v47);
        result = v18;
      }

      v26 = __p;
      if (__p)
      {
        v27 = v46;
        v28 = __p;
        if (v46 != __p)
        {
          do
          {
            v27 = sub_100052FFC(v27 - 1);
          }

          while (v27 != v26);
          v28 = __p;
        }

        v46 = v26;
        operator delete(v28);
        result = v18;
      }

      v22 = v43;
      if (!v43)
      {
        goto LABEL_51;
      }

      v29 = v44;
      v24 = v43;
      if (v44 == v43)
      {
        goto LABEL_50;
      }

      do
      {
        v30 = *--v29;
        *v29 = 0;
        if (v30)
        {
          operator delete[]();
        }
      }

      while (v29 != v22);
      goto LABEL_49;
    }
  }

  return result;
}

BOOL mlir::OpTrait::impl::verifyIsIsolatedFromAbove(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v51 = v53;
  v52 = 0x800000000;
  v2 = *(this + 11);
  if ((v2 & 0x7FFFFF) == 0)
  {
LABEL_31:
    v20 = 1;
    goto LABEL_54;
  }

  v4 = (((this + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10));
  v5 = (v4 + 24 * (v2 & 0x7FFFFF));
  while (1)
  {
    if (HIDWORD(v52))
    {
      *v51 = v4;
      v6 = __CFADD__(v52, 1);
      v7 = v52 + 1;
      LODWORD(v52) = v52 + 1;
      if (!v6)
      {
        break;
      }

      goto LABEL_26;
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v53, 1uLL, 8);
    v51[v52] = v4;
    v6 = __CFADD__(v52, 1);
    v7 = v52 + 1;
    LODWORD(v52) = v52 + 1;
    if (!v6)
    {
      break;
    }

LABEL_26:
    v4 = (v4 + 24);
    if (v4 == v5)
    {
      goto LABEL_31;
    }
  }

  while (1)
  {
    v8 = v51[v7 - 1];
    LODWORD(v52) = v7 - 1;
    mlir::Region::OpIterator::OpIterator(&v41, v8, 0);
    mlir::Region::OpIterator::OpIterator(&v37, v8, 1);
    v9 = v42;
    v36 = v42;
    v35 = v41;
    v33 = v41;
    v34 = v42;
    v10 = v38;
    if (v42 != v38)
    {
      break;
    }

LABEL_25:
    v7 = v52;
    if (!v52)
    {
      goto LABEL_26;
    }
  }

  while (1)
  {
    v11 = *(v9 + 44);
    if ((v11 & 0x800000) != 0)
    {
      v12 = *(v9 + 68);
      if (v12)
      {
        break;
      }
    }

LABEL_15:
    if ((v11 & 0x7FFFFF) != 0)
    {
      {
        sub_10027926C();
      }

      if (((*(**(v9 + 48) + 32))(*(v9 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
      {
        v15 = *(v9 + 44);
        v16 = v15 & 0x7FFFFF;
        if ((v15 & 0x7FFFFF) != 0)
        {
          v17 = ((v9 + 16 * ((v15 >> 23) & 1) + ((v15 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v9 + 40);
          v18 = v52;
          v19 = 24 * v16;
          do
          {
            if (v18 >= HIDWORD(v52))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v53, v18 + 1, 8);
              v18 = v52;
            }

            v51[v18] = v17;
            v18 = v52 + 1;
            LODWORD(v52) = v52 + 1;
            v17 += 24;
            v19 -= 24;
          }

          while (v19);
        }
      }
    }

    mlir::Region::OpIterator::operator++(&v33);
    v9 = v34;
    if (v34 == v10)
    {
      goto LABEL_25;
    }
  }

  v13 = (*(v9 + 72) + 24);
  while (1)
  {
    v32 = *v13;
    ParentRegion = mlir::Value::getParentRegion(&v32);
    if (!ParentRegion)
    {
      break;
    }

    if (v4 != ParentRegion && (mlir::Region::isProperAncestor(v4, ParentRegion) & 1) == 0)
    {
      v39 = "using value defined outside the region";
      v40 = 259;
      mlir::Operation::emitOpError(&v41, v9, &v39);
      mlir::Diagnostic::attachNote(&v41 + 1, *(this + 3), 1);
    }

    v13 += 4;
    if (!--v12)
    {
      v11 = *(v9 + 44);
      goto LABEL_15;
    }
  }

  v30 = "operation's operand is unlinked";
  v31 = 259;
  mlir::emitError(*(v9 + 24), &v30, &v41);
  Context = mlir::Attribute::getContext((v9 + 24));
  if (mlir::MLIRContext::shouldPrintOpOnDiagnostic(Context))
  {
    mlir::Diagnostic::attachNote(&v41 + 1, *(v9 + 24), 1);
  }

  v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
  if (v41)
  {
    mlir::InFlightDiagnostic::report(&v41);
  }

  if (v50 == 1)
  {
    if (v49 != &v50)
    {
      free(v49);
    }

    v22 = __p;
    if (__p)
    {
      v23 = v48;
      v24 = __p;
      if (v48 != __p)
      {
        do
        {
          v23 = sub_100052FFC(v23 - 1);
        }

        while (v23 != v22);
        v24 = __p;
      }

      v48 = v22;
      operator delete(v24);
    }

    v25 = v45;
    if (v45)
    {
      v26 = v46;
      v27 = v45;
      if (v46 != v45)
      {
        do
        {
          v28 = *--v26;
          *v26 = 0;
          if (v28)
          {
            operator delete[]();
          }
        }

        while (v26 != v25);
        v27 = v45;
      }

      v46 = v25;
      operator delete(v27);
    }

    if (v43 != &v44)
    {
      free(v43);
    }
  }

LABEL_54:
  if (v51 != v53)
  {
    free(v51);
  }

  return v20;
}

uint64_t sub_10013ED08(uint64_t a1)
{
  if (atomic_load_explicit(&qword_1002C0DD8, memory_order_acquire))
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
    sub_100281C70();
    a1 = v8;
    v1 = *(v8 + 64);
    if (!v1)
    {
      return 0;
    }
  }

  v2 = *(a1 + 48);
  v3 = ((qword_1002C0DD0 >> 4) ^ (qword_1002C0DD0 >> 9)) & (v1 - 1);
  v4 = *(v2 + 16 * v3);
  if (v4 != qword_1002C0DD0)
  {
    v6 = 1;
    while (v4 != -4096)
    {
      v7 = v3 + v6++;
      v3 = v7 & (v1 - 1);
      v4 = *(v2 + 16 * v3);
      if (v4 == qword_1002C0DD0)
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

uint64_t sub_10013EDCC()
{
  if ((atomic_load_explicit(&qword_1002C0DF0, memory_order_acquire) & 1) == 0)
  {
    sub_100281CC4();
  }

  return qword_1002C0DE0;
}

const char *sub_10013EE14()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::DialectFoldInterface]";
  v6 = 88;
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

void *sub_10013EE94(uint64_t a1, void *a2)
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
    sub_10013F000(a1, v2);
    sub_10003D9D4(v14, v13, &v15);
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

void sub_10013F000(uint64_t a1, int a2)
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
        goto LABEL_41;
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
LABEL_41:
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != &buffer[2 * v11]);
      }
    }

    if (v3)
    {
      v15 = 0;
      v16 = v11 - 1;
      v17 = v4;
      do
      {
        v24 = *v17;
        if ((*v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = ((v24 >> 4) ^ (v24 >> 9)) & v16;
          v23 = &buffer[2 * v25];
          v26 = *v23;
          if (v24 != *v23)
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
                v27 = v23;
              }

              v30 = v25 + v28++;
              v25 = v30 & v16;
              v23 = &buffer[2 * (v30 & v16)];
              v26 = *v23;
              if (v24 == *v23)
              {
                goto LABEL_23;
              }
            }

            if (v27)
            {
              v23 = v27;
            }
          }

LABEL_23:
          *v23 = v24;
          v23[1] = *(v17 + 1);
          *(a1 + 8) = ++v15;
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
        goto LABEL_18;
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
LABEL_18:
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

void *sub_10013F208(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    LODWORD(v3) = -348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)));
    v5 = v2 - 1;
    v6 = v3 & (v2 - 1);
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      return v7 + 1;
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
      v7 = (*a1 + 16 * (v14 & v5));
      v8 = *v7;
      if (*a2 == *v7)
      {
        return v7 + 1;
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
    sub_10013F3C0(a1, v2);
    sub_10007A620(v16, v15, &v17);
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
  v7[1] = 0;
  return v7 + 1;
}

void sub_10013F3C0(uint64_t a1, int a2)
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
        goto LABEL_41;
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
LABEL_41:
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != &buffer[2 * v11]);
      }
    }

    if (v3)
    {
      v15 = 0;
      v16 = v11 - 1;
      v17 = v4;
      do
      {
        v24 = *v17;
        if ((*v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = 0x9DDFEA08EB382D69 * ((8 * *v17 - 0xAE502812AA7333) ^ HIDWORD(*v17));
          v26 = 0x9DDFEA08EB382D69 * (HIDWORD(v24) ^ (v25 >> 47) ^ v25);
          v27 = (-348639895 * ((v26 >> 47) ^ v26)) & v16;
          v23 = &buffer[2 * v27];
          v28 = *v23;
          if (v24 != *v23)
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
                v29 = v23;
              }

              v32 = v27 + v30++;
              v27 = v32 & v16;
              v23 = &buffer[2 * (v32 & v16)];
              v28 = *v23;
              if (v24 == *v23)
              {
                goto LABEL_23;
              }
            }

            if (v29)
            {
              v23 = v29;
            }
          }

LABEL_23:
          *v23 = v24;
          v23[1] = *(v17 + 1);
          *(a1 + 8) = ++v15;
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
        goto LABEL_18;
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
LABEL_18:
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

void sub_10013F614(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = a2[1];
  v6 = *(a3 + 8);
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    v18 = *a2;
    v19 = a2[3];
    do
    {
      v20 = v5 + 1;
      v5 = v19;
      if (v20 != v19)
      {
        v5 = v20;
        while (1)
        {
          v21 = *(*(*(mlir::detail::OpResultImpl::getNextResultAtOffset(v18, v5) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
          v22 = v21 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v21 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
          if (v22 || v21 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
          {
            break;
          }

          if (v19 == ++v5)
          {
            v5 = v19;
            break;
          }
        }
      }

      ++v7;
    }

    while (v5 != v6);
  }

  v8 = *(a1 + 8);
  if (v7 + v8 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v7 + v8, 8);
    v8 = *(a1 + 8);
  }

  v9 = a2[1];
  v10 = *(a3 + 8);
  if (v9 != v10)
  {
    v11 = *a2;
    v12 = a2[3];
    v13 = (*a1 + 8 * v8);
    do
    {
      *v13 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v11, v9) + 8) & 0xFFFFFFFFFFFFFFF8;
      v14 = v9 + 1;
      v9 = v12;
      if (v14 != v12)
      {
        v9 = v14;
        while (1)
        {
          v15 = *(*(*(mlir::detail::OpResultImpl::getNextResultAtOffset(v11, v9) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
          v16 = v15 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
          if (v16 || v15 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
          {
            break;
          }

          if (v12 == ++v9)
          {
            v9 = v12;
            break;
          }
        }
      }

      ++v13;
    }

    while (v9 != v10);
    LODWORD(v8) = *(a1 + 8);
  }

  *(a1 + 8) = v8 + v7;
}

void sub_10013F7D0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[3];
  v9 = *(a3 + 8);
  if (v7 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v19 = a2[1];
    do
    {
      v20 = v19 + 1;
      v21 = a2[3];
      if (v19 + 1 != v8)
      {
        v22 = v6 + 56 + 32 * v19;
        v21 = v20;
        while (1)
        {
          v23 = *(*(*(*v22 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
          v24 = v23 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
          if (v24 || v23 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
          {
            break;
          }

          ++v21;
          v22 += 32;
          if (v8 == v21)
          {
            v21 = a2[3];
            break;
          }
        }
      }

      ++v10;
      v19 = v21;
    }

    while (v21 != v9);
  }

  v11 = *(a1 + 8);
  if (v10 + v11 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v10 + v11, 8);
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[3];
    v9 = *(a3 + 8);
    v11 = *(a1 + 8);
  }

  if (v7 != v9)
  {
    v12 = (*a1 + 8 * v11);
    do
    {
      *v12 = *(*(v6 + 32 * v7 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      v13 = v7 + 1;
      v14 = v8;
      if (v7 + 1 != v8)
      {
        v15 = v6 + 56 + 32 * v7;
        v14 = v13;
        while (1)
        {
          v16 = *(*(*(*v15 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
          v17 = v16 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
          if (v17 || v16 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
          {
            break;
          }

          ++v14;
          v15 += 32;
          if (v8 == v14)
          {
            v14 = v8;
            break;
          }
        }
      }

      ++v12;
      v7 = v14;
    }

    while (v14 != v9);
    LODWORD(v11) = *(a1 + 8);
  }

  *(a1 + 8) = v11 + v10;
}

uint64_t *sub_10013F980(uint64_t *a1, uint64_t *a2, uint64_t **a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v6 = a2;
  if (a4 == 3)
  {
    v8 = a1 + 4;
    if (*(**a3 + ((a1 - *a3[1] + 32) >> 2)))
    {
      v17 = a1;
      sub_10013FF20(a1 + 4, a2);
      sub_10013FF20(v17, v8);
      return v8;
    }

    sub_10013FF20(a1, a1 + 4);
    a1 = v8;
LABEL_50:
    sub_10013FF20(a1, v6);
    return v6;
  }

  if (a4 == 2)
  {
    goto LABEL_50;
  }

  if (a6 < a4)
  {
    v7 = a4 / 2;
    v8 = &a1[4 * (a4 / 2)];
    v9 = **a3;
    v10 = *a3[1];
    v11 = v8 - 4;
    if (*(v9 + ((v8 - v10 - 32) >> 2)))
    {
      v12 = 32 - 32 * v7;
      v13 = &a1[4 * v7 - 8] - v10;
      v14 = a4 / 2;
      while (v12)
      {
        --v14;
        v15 = *(v9 + (v13 >> 2));
        v12 += 32;
        v13 -= 32;
        if (!v15)
        {
          v16 = a4;
          v11 = (a1 - v12);
          goto LABEL_53;
        }
      }

      v46 = a1;
      v47 = a4 - v7;
      v48 = v8 - v10;
      if (!*(v9 + ((v8 - v10) >> 2)))
      {
LABEL_86:
        v66 = (v6 + 4);
        v67 = v48 + 32;
        v49 = v8;
        while (1)
        {
          v49 += 4;
          if (v49 == v6)
          {
            goto LABEL_90;
          }

          --v47;
          v68 = *(v9 + (v67 >> 2));
          v67 += 32;
          if (v68)
          {
            goto LABEL_89;
          }
        }
      }
    }

    else
    {
      v16 = a4;
LABEL_53:
      v44 = sub_10013F980(a1, v11);
      v9 = **a3;
      v45 = v16;
      v46 = v44;
      v47 = v45 - v7;
      v48 = v8 - *a3[1];
      if (!*(v9 + (v48 >> 2)))
      {
        goto LABEL_86;
      }
    }

    v49 = v8;
LABEL_89:
    v66 = sub_10013F980(v49, v6);
LABEL_90:
    if (v46 == v8)
    {
      return v66;
    }

    if (v8 == v66)
    {
      return v46;
    }

    sub_10013FF20(v46, v8);
    v6 = v46 + 4;
    for (i = v8 + 4; i != v66; i += 4)
    {
      if (v6 == v8)
      {
        v8 = i;
      }

      sub_10013FF20(v6, i);
      v6 += 4;
    }

    if (v6 != v8)
    {
      v70 = v6;
      v71 = v8;
      while (1)
      {
        sub_10013FF20(v70, v8);
        v8 += 4;
        v72 = v70 + 4 == v71;
        if (v8 == v66)
        {
          if (v70 + 4 == v71)
          {
            return v6;
          }

          v8 = v71 + 4;
          for (v70 += 8; ; v70 += 4)
          {
            sub_10013FF20(v70 - 4, v71);
            v72 = v70 == v71;
            if (v8 != v66)
            {
              break;
            }

            if (v70 == v71)
            {
              return v6;
            }
          }
        }

        else
        {
          v70 += 4;
        }

        if (v72)
        {
          v71 = v8;
        }
      }
    }

    return v8;
  }

  *a5 = 0;
  a5[1] = 0;
  v18 = a1[1];
  a5[2] = a1[2];
  if (v18)
  {
    v19 = *a1;
    *v18 = *a1;
    if (v19)
    {
      *(v19 + 8) = v18;
    }
  }

  a1[1] = 0;
  *a5 = 0;
  a5[1] = 0;
  a5[3] = 0;
  v20 = a1[1];
  if (v20)
  {
    v21 = *a1;
    *v20 = *a1;
    if (v21)
    {
      *(v21 + 8) = v20;
    }
  }

  a1[1] = 0;
  *a5 = 0;
  a5[1] = 0;
  a5[3] = a1[3];
  a1[3] = 0;
  v22 = a5[3];
  if (v22)
  {
    v23 = *v22;
    *a5 = *v22;
    a5[1] = v22;
    if (v23)
    {
      *(v23 + 8) = a5;
    }

    *v22 = a5;
  }

  v24 = a5 + 4;
  v25 = a1 + 4;
  v26 = 1;
  if (a1 + 4 != a2)
  {
    v27 = a1 + 4;
    do
    {
      while (*(**a3 + ((v27 - *a3[1]) >> 2)))
      {
        *v24 = 0;
        v24[1] = 0;
        v28 = v25[1];
        v24[2] = v25[2];
        if (v28)
        {
          v29 = *v25;
          *v28 = *v25;
          if (v29)
          {
            *(v29 + 8) = v28;
          }
        }

        v25[1] = 0;
        *v24 = 0;
        v24[1] = 0;
        v24[3] = 0;
        v30 = v25[1];
        if (v30)
        {
          v31 = *v25;
          *v30 = *v25;
          if (v31)
          {
            *(v31 + 8) = v30;
          }
        }

        v25[1] = 0;
        *v24 = 0;
        v24[1] = 0;
        v24[3] = v25[3];
        v25[3] = 0;
        v32 = v24[3];
        if (v32)
        {
          v33 = *v32;
          *v24 = *v32;
          v24[1] = v32;
          if (v33)
          {
            *(v33 + 8) = v24;
          }

          *v32 = v24;
        }

        ++v26;
        v24 += 4;
        v25 += 4;
        v27 += 4;
        if (v25 == a2)
        {
          goto LABEL_47;
        }
      }

      v34 = a1[1];
      if (v34)
      {
        v35 = *a1;
        *v34 = *a1;
        if (v35)
        {
          *(v35 + 8) = v34;
        }
      }

      v36 = v25[1];
      if (v36)
      {
        v37 = *v25;
        *v36 = *v25;
        if (v37)
        {
          *(v37 + 8) = v36;
        }
      }

      v25[1] = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[3] = v25[3];
      v25[3] = 0;
      v38 = a1[3];
      if (v38)
      {
        v39 = *v38;
        *a1 = *v38;
        a1[1] = v38;
        if (v39)
        {
          *(v39 + 8) = a1;
        }

        *v38 = a1;
      }

      a1 += 4;
      v25 += 4;
      v27 += 4;
    }

    while (v25 != a2);
LABEL_47:
    v40 = v25 - 4;
    v41 = a1[1];
    if (!v41)
    {
      goto LABEL_58;
    }

    goto LABEL_56;
  }

  v40 = a1;
  v41 = a1[1];
  if (v41)
  {
LABEL_56:
    v50 = *a1;
    *v41 = *a1;
    if (v50)
    {
      *(v50 + 8) = v41;
    }
  }

LABEL_58:
  v51 = v40[5];
  if (v51)
  {
    v52 = *v25;
    *v51 = v52;
    if (v52)
    {
      *(v52 + 8) = v51;
    }
  }

  v40[5] = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[3] = v40[7];
  v40[7] = 0;
  v53 = a1[3];
  if (v53)
  {
    v54 = *v53;
    *a1 = *v53;
    a1[1] = v53;
    if (v54)
    {
      *(v54 + 8) = a1;
    }

    *v53 = a1;
  }

  v6 = a1 + 4;
  if (v24 > a5)
  {
    v55 = a5;
    v56 = a1 + 4;
    do
    {
      v57 = v56[1];
      if (v57)
      {
        v58 = *v56;
        *v57 = *v56;
        if (v58)
        {
          *(v58 + 8) = v57;
        }
      }

      v59 = v55[1];
      if (v59)
      {
        v60 = *v55;
        *v59 = *v55;
        if (v60)
        {
          *(v60 + 8) = v59;
        }
      }

      v55[1] = 0;
      *v56 = 0;
      v56[1] = 0;
      v56[3] = v55[3];
      v55[3] = 0;
      v61 = v56[3];
      if (v61)
      {
        v62 = *v61;
        *v56 = *v61;
        v56[1] = v61;
        if (v62)
        {
          *(v62 + 8) = v56;
        }

        *v61 = v56;
      }

      v55 += 4;
      v56 += 4;
    }

    while (v55 < v24);
  }

  if (a5 && v26)
  {
    v63 = (a5 + 1);
    do
    {
      v64 = *v63;
      if (*v63)
      {
        v65 = *(v63 - 1);
        *v64 = v65;
        if (v65)
        {
          *(v65 + 8) = v64;
        }
      }

      v63 += 4;
      --v26;
    }

    while (v26);
  }

  return v6;
}

uint64_t *sub_10013FF20(uint64_t *result, uint64_t *a2)
{
  v2 = result[1];
  if (v2)
  {
    v3 = *result;
    *v2 = *result;
    if (v3)
    {
      *(v3 + 8) = v2;
    }
  }

  result[1] = 0;
  v4 = result[3];
  result[3] = 0;
  if (v4)
  {
    v5 = *v4;
    v19 = v5;
    v20 = v4;
    if (v5)
    {
      v5[1] = &v19;
      v6 = result[1];
      *v4 = &v19;
      if (v6)
      {
        v7 = *result;
        *v6 = *result;
        if (v7)
        {
          *(v7 + 8) = v6;
        }
      }
    }

    else
    {
      *v4 = &v19;
    }
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *a2;
    *v8 = *a2;
    if (v9)
    {
      *(v9 + 8) = v8;
    }
  }

  a2[1] = 0;
  *result = 0;
  result[1] = 0;
  result[3] = a2[3];
  a2[3] = 0;
  v10 = result[3];
  if (v10)
  {
    v11 = *v10;
    *result = *v10;
    result[1] = v10;
    if (v11)
    {
      *(v11 + 8) = result;
    }

    *v10 = result;
  }

  v12 = a2[1];
  if (v12)
  {
    v13 = *a2;
    *v12 = *a2;
    if (v13)
    {
      *(v13 + 8) = v12;
    }
  }

  v14 = v20;
  if (v20)
  {
    v15 = v19;
    *v20 = v19;
    if (v15)
    {
      v15[1] = v14;
    }
  }

  v20 = 0;
  *a2 = 0;
  a2[1] = 0;
  a2[3] = v4;
  if (v4)
  {
    v16 = *v4;
    *a2 = *v4;
    a2[1] = v4;
    if (v16)
    {
      v16[1] = a2;
      v17 = v20;
      *v4 = a2;
      if (v17)
      {
        v18 = v19;
        *v17 = v19;
        if (v18)
        {
          v18[1] = v17;
        }
      }
    }

    else
    {
      *v4 = a2;
    }
  }

  return result;
}

void *sub_100140050(void *result)
{
  v1 = *result;
  {
    v22 = v1;
    v24 = result;
    sub_10027F2B8();
    result = v24;
    v2 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v3 = *(v22 + 8);
    v4 = *(v22 + 16);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  if (!v4)
  {
    return 0;
  }

LABEL_3:
  v5 = v3;
  v6 = v4;
  do
  {
    v7 = v6 >> 1;
    v8 = &v5[2 * (v6 >> 1)];
    v10 = *v8;
    v9 = v8 + 2;
    v6 += ~(v6 >> 1);
    if (v10 < v2)
    {
      v5 = v9;
    }

    else
    {
      v6 = v7;
    }
  }

  while (v6);
  if (v5 == &v3[2 * v4] || *v5 != v2 || !v5[1])
  {
    return 0;
  }

  if (result)
  {
    v11 = *result;
    {
      v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      if (!v14)
      {
        return result;
      }
    }

    else
    {
      v23 = v11;
      v25 = result;
      sub_10027F2B8();
      result = v25;
      v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v13 = *(v23 + 8);
      v14 = *(v23 + 16);
      if (!v14)
      {
        return result;
      }
    }

    v15 = v13;
    v16 = v14;
    do
    {
      v17 = v16 >> 1;
      v18 = &v15[2 * (v16 >> 1)];
      v20 = *v18;
      v19 = v18 + 2;
      v16 += ~(v16 >> 1);
      if (v20 < v12)
      {
        v15 = v19;
      }

      else
      {
        v16 = v17;
      }
    }

    while (v16);
    if (v15 != &v13[2 * v14] && *v15 == v12)
    {
      v21 = v15[1];
    }
  }

  return result;
}

void sub_1001401E4(uint64_t a1, int64x2_t *a2, int64x2_t *a3)
{
  v6 = a2->i64[0];
  v7 = a2->i64[1];
  v8 = a3->i64[0];
  v9 = a3->i64[1];
  v10 = 0;
  if (a2->i64[0] != a3->i64[0] || v7 != v9)
  {
    do
    {
      if (v6 == a2[1].i64[0])
      {
        v7 += 8;
      }

      else
      {
        v6 += 8;
      }

      ++v10;
    }

    while (v6 != v8 || v7 != v9);
  }

  v12 = *(a1 + 8);
  if (v10 + v12 <= *(a1 + 12))
  {
    v21 = a3[1];
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v10 + v12, 8);
    v8 = a3->i64[0];
    v9 = a3->i64[1];
    v21 = a3[1];
    v12 = *(a1 + 8);
  }

  v13 = a2[1];
  v22 = *a2;
  v23 = v13;
  v14 = (*a1 + 8 * v12);
  if (v22.i64[0] == v8)
  {
    goto LABEL_16;
  }

  while (1)
  {
    do
    {
      while (1)
      {
        v16 = &unk_1002B77E0;
        do
        {
          while (1)
          {
            v18 = *(v16 - 1);
            v19 = (v22.i64 + (*v16 >> 1));
            if (*v16)
            {
              break;
            }

            v16 += 2;
            v17 = v18(v19);
            if (v17)
            {
              goto LABEL_22;
            }
          }

          v16 += 2;
          v17 = (*(*v19 + v18))();
        }

        while (!v17);
LABEL_22:
        *v14 = *v17;
        v20 = v22.i64[0];
        if (v22.i64[0] == v23.i64[0])
        {
          break;
        }

        v22.i64[0] += 8;
        ++v14;
        if (v20 + 8 == v8)
        {
          goto LABEL_16;
        }
      }

      if (v22.i64[1] != v23.i64[1])
      {
        v22.i64[1] += 8;
      }

      ++v14;
    }

    while (v22.i64[0] != v8);
LABEL_16:
    if (v22.i64[1] == v9)
    {
      v15 = vmovn_s64(vmvnq_s8(vceqq_s64(v23, v21)));
      if (((v15.i32[0] | v15.i32[1]) & 1) == 0)
      {
        break;
      }
    }
  }

  *(a1 + 8) += v10;
}

uint64_t sub_1001403A4(void *a1)
{
  if (*a1 == a1[2])
  {
    return 0;
  }

  else
  {
    return *a1;
  }
}

uint64_t sub_1001403B8(uint64_t a1)
{
  if (*(a1 + 8) == *(a1 + 24))
  {
    return 0;
  }

  else
  {
    return *(a1 + 8);
  }
}

uint64_t sub_1001403CC()
{
  {
    sub_100281D18();
  }

  return llvm::getTypeName<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>>(void)::Name;
}

const char *sub_100140414()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::Elementwise<Empty>]";
  v6 = 95;
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

__n128 sub_100140494@<Q0>(uint64_t a1@<X8>)
{
  v3 = (a1 + 24 * v2);
  result = *v1;
  v3[1].n128_u64[0] = v1[1].n128_u64[0];
  *v3 = result;
  return result;
}

__n128 sub_1001404F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned int a22)
{
  v24 = (v22 + 24 * a22);
  result = *v23;
  v24[1].n128_u64[0] = v23[1].n128_u64[0];
  *v24 = result;
  return result;
}

void sub_100140528(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  llvm::SmallVectorBase<unsigned int>::grow_pod(v15 + 24, va, a1 + 1, 24);
}

void sub_100140560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  llvm::SmallVectorBase<unsigned int>::grow_pod(v15 + 24, va, v14 + 1, 24);
}

void sub_100140594(uint64_t a1@<X8>)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v2 + 24, (a1 + 40), v1 + 1, 24);
}

void sub_1001405B4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a2 + 40), v2 + 1, 24);
}

void sub_100140620(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int16 a14, uint64_t a15, uint64_t a16)
{
  a10 = a1;
  a14 = 259;

  mlir::Operation::emitOpError(&a16, v16, &a10);
}

void sub_10014067C(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, int a7, uint64_t a8)
{
  a2 = a1;
  a6 = 259;

  mlir::Operation::emitOpError(&a8, v8, &a2);
}

uint64_t sub_1001406A4()
{
  result = *(v0 - 8);
  *(v0 - 8) = 0;
  return result;
}

void *sub_1001406F0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  a8 = a1;

  return sub_10013F208(v8, &a8);
}

void sub_10014072C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a11, v11 + 1, 24);
}

void sub_100140748(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{

  mlir::Operation::emitOpError(&a25, v25, &a17);
}

uint64_t sub_1001407AC()
{
  result = *(v0 - 8);
  *(v0 - 8) = 0;
  return result;
}

uint64_t sub_100140820@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 56) = a2;
  v3 = *(result + 46);
  return result;
}

void sub_100140838(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[3] = 0;
}

void sub_1001408AC(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{

  operator delete(a1);
}

void *mlir::NamedAttrList::NamedAttrList(void *a1, uint64_t a2)
{
  v5 = a2;
  if (a2)
  {
    Value = mlir::DictionaryAttr::getValue(&v5);
  }

  else
  {
    Value = 0;
  }

  *a1 = a1 + 2;
  a1[1] = 0x400000000;
  a1[10] = 0;
  mlir::DictionaryAttr::sort(Value);
  a1[10] = v5 | 4;
  return a1;
}

void mlir::NamedAttrList::findDuplicate(uint64_t **this@<X0>, _BYTE *a2@<X8>)
{
  mlir::DictionaryAttr::findDuplicate(this, (this[10] & 4) != 0, a2);
  if ((this[10] & 4) == 0)
  {
    this[10] = 4;
  }
}

unint64_t mlir::NamedAttrList::getDictionary(mlir::NamedAttrList *this, mlir::MLIRContext *a2)
{
  v4 = *(this + 10);
  if ((v4 & 4) == 0)
  {
    mlir::DictionaryAttr::sortInPlace(this);
    *(this + 10) = 4;
LABEL_4:
    v4 = *(this + 10) & 7 | mlir::DictionaryAttr::getWithSorted(a2, *this, *(this + 2));
    *(this + 10) = v4;
    return v4 & 0xFFFFFFFFFFFFFFF8;
  }

  if (v4 <= 7)
  {
    goto LABEL_4;
  }

  return v4 & 0xFFFFFFFFFFFFFFF8;
}

uint64_t mlir::NamedAttrList::push_back(uint64_t result, uint64_t a2, uint64_t a3)
{
  v14 = a2;
  v15 = a3;
  v3 = *(result + 80);
  if ((v3 & 4) != 0)
  {
    v4 = *(result + 8);
    if (v4)
    {
      v5 = result;
      v6 = mlir::NamedAttribute::operator<((*result + 16 * v4 - 16), &v14);
      result = v5;
      v7 = *(v5 + 80) & 0xFFFFFFFFFFFFFFFBLL;
      if (!v6)
      {
        v8 = 0;
LABEL_7:
        LOBYTE(v3) = v8 | v7;
        a2 = v14;
        a3 = v15;
        goto LABEL_8;
      }
    }

    else
    {
      LOBYTE(v7) = v3 & 0xFB;
    }

    v8 = 4;
    goto LABEL_7;
  }

LABEL_8:
  *(result + 80) = v3 & 7;
  v9 = *(result + 8);
  if (v9 >= *(result + 12))
  {
    v11 = a2;
    v12 = a3;
    v13 = result;
    llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 16), v9 + 1, 16);
    a2 = v11;
    a3 = v12;
    result = v13;
    LODWORD(v9) = *(v13 + 8);
  }

  v10 = (*result + 16 * v9);
  *v10 = a2;
  v10[1] = a3;
  ++*(result + 8);
  return result;
}

uint64_t mlir::NamedAttrList::get(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if ((*(a1 + 80) & 4) != 0)
  {
    v3 = sub_1001423DC(*a1, (*a1 + 16 * v4), a2);
    v6 = v7;
  }

  else
  {
    if (!v4)
    {
      return 0;
    }

    v5 = 16 * v4;
    v6 = 1;
    while (mlir::NamedAttribute::getName(v3) != a2)
    {
      v3 = (v3 + 16);
      v5 -= 16;
      if (!v5)
      {
        return 0;
      }
    }
  }

  if (v6)
  {
    return *(v3 + 1);
  }

  return 0;
}

uint64_t mlir::NamedAttrList::set(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v27 = a2;
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = (*a1 + 16 * v7);
  if ((*(a1 + 80) & 4) != 0)
  {
    v6 = sub_1001423DC(*a1, v8, a2);
    v10 = v11;
  }

  else
  {
    if (!v7)
    {
LABEL_11:
      if ((*(a1 + 80) & 4) != 0)
      {
        Value = mlir::StringAttr::getValue(&v27);
        v6 = sub_100140D88(a1, Value, v14);
        v4 = v27;
      }

      mlir::NamedAttribute::NamedAttribute(&v26, v4, a3);
      v15 = v26;
      v16 = *a1;
      v17 = *(a1 + 8);
      v18 = *(a1 + 12);
      if ((*a1 + 16 * v17) == v6)
      {
        if (v17 >= v18)
        {
          v25 = v26;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v17 + 1, 16);
          v15 = v25;
          v17 = *(a1 + 8);
          v16 = *a1;
        }

        *(v16 + v17) = v15;
        ++*(a1 + 8);
      }

      else
      {
        v19 = v6 - v16;
        if (v17 >= v18)
        {
          v24 = v26;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v17 + 1, 16);
          v15 = v24;
          v16 = *a1;
          v17 = *(a1 + 8);
        }

        v20 = (v16 + v19);
        *(v16 + v17) = *(v16 + v17 - 1);
        v21 = *(a1 + 8);
        v22 = *a1 + 16 * v21 - 16;
        if (v22 != v20)
        {
          v23 = v15;
          memmove(v20 + 1, v20, v22 - v20);
          v15 = v23;
          LODWORD(v21) = *(a1 + 8);
        }

        *(a1 + 8) = v21 + 1;
        *v20 = v15;
      }

      result = 0;
      goto LABEL_23;
    }

    v9 = 16 * v7;
    v10 = 1;
    while (mlir::NamedAttribute::getName(v6) != v4)
    {
      v6 = (v6 + 16);
      v9 -= 16;
      if (!v9)
      {
        v6 = v8;
        goto LABEL_11;
      }
    }
  }

  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }

  result = *(v6 + 1);
  if (result == a3)
  {
    return result;
  }

  *(v6 + 1) = a3;
LABEL_23:
  *(a1 + 80) &= 7uLL;
  return result;
}

mlir::NamedAttribute *sub_100140D88(uint64_t a1, const void *a2, size_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  if ((*(a1 + 80) & 4) != 0)
  {
    if (!v6)
    {
      return v5;
    }

    while (1)
    {
      v11 = v6 >> 1;
      v7 = (v5 + 16 * (v6 >> 1));
      Name = mlir::NamedAttribute::getName(v7);
      Value = mlir::StringAttr::getValue(&Name);
      v14 = v13;
      v15 = a3 >= v13 ? v13 : a3;
      if (v15)
      {
        v16 = memcmp(Value, a2, v15);
        if (v16)
        {
          break;
        }
      }

      if (v14 == a3)
      {
        return v7;
      }

      if (v14 < a3)
      {
        goto LABEL_11;
      }

LABEL_12:
      v6 = v11;
      if (v11 <= 0)
      {
        return v5;
      }
    }

    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    v5 = (v7 + 16);
    v11 = v6 + ~v11;
    goto LABEL_12;
  }

  if (v6)
  {
    v7 = (v5 + 16 * v6);
    if (a3)
    {
      v8 = 16 * v6;
      while (1)
      {
        Name = mlir::NamedAttribute::getName(v5);
        v9 = mlir::StringAttr::getValue(&Name);
        if (v10 == a3 && !memcmp(v9, a2, a3))
        {
          break;
        }

        v5 = (v5 + 16);
        v8 -= 16;
        if (!v8)
        {
          return v7;
        }
      }
    }

    else
    {
      v17 = 16 * v6;
      while (1)
      {
        Name = mlir::NamedAttribute::getName(v5);
        mlir::StringAttr::getValue(&Name);
        if (!v18)
        {
          break;
        }

        v5 = (v5 + 16);
        v17 -= 16;
        if (!v17)
        {
          return v7;
        }
      }
    }
  }

  return v5;
}

uint64_t mlir::NamedAttrList::erase(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if ((*(a1 + 80) & 4) != 0)
  {
    v4 = sub_1001423DC(*a1, (*a1 + 16 * v5), a2);
    v7 = v8;
  }

  else
  {
    if (!v5)
    {
      return 0;
    }

    v6 = 16 * v5;
    v7 = 1;
    while (mlir::NamedAttribute::getName(v4) != a2)
    {
      v4 = (v4 + 16);
      v6 -= 16;
      if (!v6)
      {
        return 0;
      }
    }
  }

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  result = *(v4 + 1);
  v10 = *(a1 + 8);
  v11 = *a1 + 16 * v10;
  if (v11 != (v4 + 16))
  {
    v12 = *(v4 + 1);
    memmove(v4, v4 + 16, v11 - (v4 + 16));
    result = v12;
    LODWORD(v10) = *(a1 + 8);
  }

  *(a1 + 8) = v10 - 1;
  *(a1 + 80) &= 7uLL;
  return result;
}

void *mlir::OperationState::OperationState(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a2;
  *a1 = a2;
  Context = mlir::Attribute::getContext(&v9);
  mlir::OperationName::OperationName(a1 + 1, a3, a4, Context);
  a1[2] = a1 + 4;
  a1[3] = 0x400000000;
  a1[8] = a1 + 10;
  a1[9] = 0x400000000;
  a1[14] = a1 + 16;
  a1[15] = 0x400000000;
  a1[24] = 4;
  a1[25] = a1 + 27;
  a1[26] = &_mh_execute_header;
  a1[28] = a1 + 30;
  a1[29] = &_mh_execute_header;
  a1[31] = 0;
  a1[32] = 0;
  a1[33] = &mlir::detail::TypeIDResolver<void,void>::id;
  a1[34] = 0;
  a1[36] = 0;
  return a1;
}

double mlir::OperationState::OperationState(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a1 + 4;
  a1[3] = 0x400000000;
  a1[8] = a1 + 10;
  a1[9] = 0x400000000;
  a1[14] = a1 + 16;
  a1[15] = 0x400000000;
  a1[24] = 4;
  a1[25] = a1 + 27;
  result = COERCE_DOUBLE(&_mh_execute_header);
  a1[26] = &_mh_execute_header;
  a1[28] = a1 + 30;
  a1[29] = &_mh_execute_header;
  a1[31] = 0;
  a1[32] = 0;
  a1[33] = &mlir::detail::TypeIDResolver<void,void>::id;
  a1[34] = 0;
  a1[36] = 0;
  return result;
}

uint64_t mlir::OperationState::OperationState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, void *a13, uint64_t a14)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  v19 = (a1 + 32);
  *(a1 + 16) = a1 + 32;
  v20 = a1 + 16;
  *(a1 + 24) = 0x400000000;
  if (a5 < 5)
  {
    if (!a5)
    {
      goto LABEL_32;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v20, v19, a5, 8);
    v19 = (*(a1 + 16) + 8 * *(a1 + 24));
  }

  v21 = a4 & 0xFFFFFFFFFFFFFFF8;
  if ((a4 & 6) == 0 && v21)
  {
    v22 = 0;
    if (a5 < 4 || v19 - v21 <= 0x1F)
    {
      v23 = v19;
    }

    else
    {
      v22 = a5 & 0xFFFFFFFFFFFFFFFCLL;
      v23 = &v19[a5 & 0xFFFFFFFFFFFFFFFCLL];
      v24 = (v21 + 16);
      v25 = v19 + 2;
      v26 = a5 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v27 = *v24;
        *(v25 - 1) = *(v24 - 1);
        *v25 = v27;
        v24 += 2;
        v25 += 2;
        v26 -= 4;
      }

      while (v26);
      if (a5 == v22)
      {
        goto LABEL_32;
      }
    }

    v30 = a5 - v22;
    v31 = (v21 + 8 * v22);
    do
    {
      v32 = *v31++;
      *v23++ = v32;
      --v30;
    }

    while (v30);
    goto LABEL_32;
  }

  if ((a4 & 6) == 2 && v21)
  {
    if (a5 > 0xA && (v19 >= v21 + 32 * a5 || v21 + 24 >= &v19[a5]))
    {
      v33 = a5 & 3;
      if ((a5 & 3) == 0)
      {
        v33 = 4;
      }

      v28 = a5 - v33;
      v34 = (v21 + 88);
      v35 = (v19 + 2);
      v36 = v28;
      do
      {
        v37 = v34 - 8;
        v38 = vld4q_f64(v37);
        v39 = vld4q_f64(v34);
        *(v35 - 1) = v38;
        *v35 = v39;
        v34 += 16;
        v35 += 2;
        v36 -= 4;
      }

      while (v36);
      v19 += v28;
    }

    else
    {
      v28 = 0;
    }

    v40 = a5 - v28;
    v41 = (v21 + 32 * v28 + 24);
    do
    {
      v42 = *v41;
      v41 += 4;
      *v19++ = v42;
      --v40;
    }

    while (v40);
  }

  else
  {
    v29 = 0;
    do
    {
      v19[v29] = mlir::detail::OpResultImpl::getNextResultAtOffset(v21, v29);
      ++v29;
    }

    while (a5 != v29);
  }

LABEL_32:
  *(a1 + 64) = a1 + 80;
  *(a1 + 24) += a5;
  *(a1 + 72) = 0x400000000;
  if (a7 < 5)
  {
    if (!a7)
    {
      v46 = 0;
      goto LABEL_39;
    }

    v43 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 64, (a1 + 80), a7, 8);
    v43 = *(a1 + 72);
  }

  v44 = 0;
  v45 = *(a1 + 64) + 8 * v43;
  do
  {
    *(v45 + 8 * v44) = mlir::TypeRange::dereference_iterator(a6, v44);
    ++v44;
  }

  while (a7 != v44);
  v46 = *(a1 + 72);
LABEL_39:
  *(a1 + 72) = v46 + a7;
  *(a1 + 112) = a1 + 128;
  *(a1 + 120) = 0x400000000;
  *(a1 + 192) = 0;
  mlir::DictionaryAttr::sort(a9);
  *(a1 + 192) = 4;
  *(a1 + 200) = a1 + 216;
  *(a1 + 208) = &_mh_execute_header;
  if (a12 < 2)
  {
    if (!a12)
    {
      v50 = 0;
      goto LABEL_46;
    }

    v47 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 200, (a1 + 216), a12, 8);
    v47 = *(a1 + 208);
  }

  v48 = 0;
  v49 = *(a1 + 200) + 8 * v47;
  do
  {
    *(v49 + 8 * v48) = mlir::BlockRange::dereference_iterator(a11, v48);
    ++v48;
  }

  while (a12 != v48);
  v50 = *(a1 + 208);
LABEL_46:
  v51 = a1 + 240;
  *(a1 + 224) = a1 + 240;
  v52 = (a1 + 224);
  *(a1 + 208) = v50 + a12;
  *(a1 + 232) = &_mh_execute_header;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = &mlir::detail::TypeIDResolver<void,void>::id;
  *(a1 + 272) = 0;
  *(a1 + 288) = 0;
  if (a14)
  {
    v53 = 0;
    v54 = a13;
    v55 = 8 * a14;
    v56 = a13;
    do
    {
      if (v53 >= *(a1 + 236))
      {
        if (v51 <= v56 && v51 + 8 * v53 > v56)
        {
          sub_1000A58A0(a1 + 224, v53 + 1);
          v57 = (v54 + *v52 - v51);
          v51 = *v52;
          goto LABEL_50;
        }

        sub_1000A58A0(a1 + 224, v53 + 1);
        v51 = *v52;
      }

      v57 = v56;
LABEL_50:
      v58 = *(a1 + 232);
      v59 = *v57;
      *v57 = 0;
      *(v51 + 8 * v58) = v59;
      v53 = v58 + 1;
      *(a1 + 232) = v58 + 1;
      ++v56;
      ++v54;
      v55 -= 8;
    }

    while (v55);
  }

  return a1;
}

uint64_t mlir::OperationState::OperationState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, void *a13, uint64_t a14)
{
  v26 = a2;
  Context = mlir::Attribute::getContext(&v26);
  mlir::OperationName::OperationName(&v25, a3, a4, Context);
  return mlir::OperationState::OperationState(a1, a2, v25, a5, a6, a7, a8, v21, a9, a10, a11, a12, a13, a14);
}

void mlir::OperationState::~OperationState(mlir::OperationState *this)
{
  if (*(this + 32))
  {
    (*(this + 34))(*(this + 35));
  }

  v2 = *(this + 28);
  v3 = *(this + 58);
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
        mlir::Region::~Region(v6);
        operator delete();
      }

      v4 -= 8;
    }

    while (v4);
    v2 = *(this + 28);
  }

  if (v2 != this + 240)
  {
    free(v2);
  }

  v7 = *(this + 25);
  if (v7 != this + 216)
  {
    free(v7);
  }

  v8 = *(this + 14);
  if (v8 != this + 128)
  {
    free(v8);
  }

  v9 = *(this + 8);
  if (v9 != this + 80)
  {
    free(v9);
  }

  v10 = *(this + 2);
  if (v10 != this + 32)
  {
    free(v10);
  }
}

void mlir::OperationState::addOperands(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = *(a1 + 24);
  v7 = a3 + v6;
  if (v7 > *(a1 + 28))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v7, 8);
    v6 = *(a1 + 24);
  }

  if (a3)
  {
    v8 = *(a1 + 16);
    v9 = (v8 + 8 * v6);
    v10 = a2 & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 6) != 0 || !v10)
    {
      if ((a2 & 6) == 2 && v10)
      {
        if (a3 > 0xC && (v9 >= v10 + 32 * a3 || v10 + 24 >= v8 + 8 * (a3 + v6)))
        {
          v22 = a3 & 3;
          if ((a3 & 3) == 0)
          {
            v22 = 4;
          }

          v16 = a3 - v22;
          v23 = (v10 + 88);
          v24 = (v9 + 2);
          v25 = v16;
          do
          {
            v26 = v23 - 8;
            v27 = vld4q_f64(v26);
            v28 = vld4q_f64(v23);
            *(v24 - 1) = v27;
            *v24 = v28;
            v23 += 16;
            v24 += 2;
            v25 -= 4;
          }

          while (v25);
          v9 += v16;
        }

        else
        {
          v16 = 0;
        }

        v29 = a3 - v16;
        v30 = (v10 + 32 * v16 + 24);
        do
        {
          v31 = *v30;
          v30 += 4;
          *v9++ = v31;
          --v29;
        }

        while (v29);
      }

      else
      {
        v17 = 0;
        do
        {
          v9[v17] = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, v17);
          ++v17;
        }

        while (a3 != v17);
      }
    }

    else
    {
      if (a3 <= 7 || (v11 = 8 * v6 + v8, v11 - v10 < 0x20))
      {
        v12 = 0;
LABEL_9:
        v13 = a3 - v12;
        v14 = (v10 + 8 * v12);
        do
        {
          v15 = *v14++;
          *v9++ = v15;
          --v13;
        }

        while (v13);
        goto LABEL_32;
      }

      v12 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      v9 += a3 & 0xFFFFFFFFFFFFFFFCLL;
      v18 = (v10 + 16);
      v19 = (v11 + 16);
      v20 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v21 = *v18;
        *(v19 - 1) = *(v18 - 1);
        *v19 = v21;
        v18 += 2;
        v19 += 2;
        v20 -= 4;
      }

      while (v20);
      if (a3 != v12)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_32:
  *(a1 + 24) += a3;
}

void mlir::OperationState::addSuccessors(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 208);
  v7 = a3 + v6;
  if (v7 > *(a1 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 200, (a1 + 216), v7, 8);
    v6 = *(a1 + 208);
  }

  if (a3)
  {
    v8 = 0;
    v9 = *(a1 + 200) + 8 * v6;
    do
    {
      *(v9 + 8 * v8) = mlir::BlockRange::dereference_iterator(a2, v8);
      ++v8;
    }

    while (a3 != v8);
    LODWORD(v6) = *(a1 + 208);
  }

  *(a1 + 208) = v6 + a3;
}

uint64_t mlir::OperationState::addRegion(uint64_t result, char *a2)
{
  v3 = (result + 224);
  v2 = *(result + 224);
  v4 = *(result + 232);
  if (v4 >= *(result + 236))
  {
    v7 = result;
    v8 = a2;
    if (v2 <= a2 && v2 + 8 * v4 > a2)
    {
      v10 = &a2[-v2];
      sub_1000A58A0(result + 224, v4 + 1);
      v2 = *v3;
      a2 = &v10[*v3];
      result = v7;
    }

    else
    {
      sub_1000A58A0(result + 224, v4 + 1);
      v2 = *v3;
      result = v7;
      a2 = v8;
    }
  }

  v5 = *(result + 232);
  v6 = *a2;
  *a2 = 0;
  *(v2 + 8 * v5) = v6;
  *(result + 232) = v5 + 1;
  return result;
}

uint64_t mlir::OperationState::addRegions(uint64_t result, uint64_t *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = (result + 224);
    v3 = *(result + 224);
    v5 = *(result + 232);
    v6 = 8 * a3;
    v7 = a2;
    do
    {
      if (v5 >= *(result + 236))
      {
        v11 = result;
        v12 = a2;
        if (v3 <= v7 && v3 + 8 * v5 > v7)
        {
          v13 = v3;
          sub_1000A58A0(v4, v5 + 1);
          v3 = *v4;
          a2 = v12;
          v8 = (v12 + *v4 - v13);
        }

        else
        {
          sub_1000A58A0(v4, v5 + 1);
          v3 = *v4;
          v8 = v7;
          a2 = v12;
        }

        result = v11;
      }

      else
      {
        v8 = v7;
      }

      v9 = *(result + 232);
      v10 = *v8;
      *v8 = 0;
      *(v3 + 8 * v9) = v10;
      v5 = v9 + 1;
      *(result + 232) = v9 + 1;
      ++v7;
      ++a2;
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

uint64_t mlir::detail::OperandStorage::OperandStorage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(a1 + 8) = a3;
  *a1 = a5 & 0x7FFFFFFF;
  *(a1 + 4) = a5 & 0x7FFFFFFF;
  if ((a5 & 0x7FFFFFFF) != 0)
  {
    v7 = a4 & 0xFFFFFFFFFFFFFFF8;
    if ((a4 & 6) != 0 || !v7)
    {
      if ((a4 & 6) == 2 && v7)
      {
        v13 = 0;
        v14 = 0;
        do
        {
          v15 = (*(a1 + 8) + v13);
          v16 = *(v7 + 24 + v13);
          v15[2] = a2;
          v15[3] = v16;
          *v15 = 0;
          v15[1] = v16;
          v17 = *v16;
          *v15 = *v16;
          if (v17)
          {
            *(v17 + 8) = v15;
          }

          *v16 = v15;
          ++v14;
          v13 += 32;
        }

        while (v14 < *(a1 + 4));
      }

      else
      {
        v18 = 0;
        v19 = 0;
        do
        {
          v20 = (*(a1 + 8) + v18);
          NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, v19);
          v20[2] = a2;
          v20[3] = NextResultAtOffset;
          *v20 = 0;
          v20[1] = NextResultAtOffset;
          v22 = *NextResultAtOffset;
          *v20 = *NextResultAtOffset;
          if (v22)
          {
            *(v22 + 8) = v20;
          }

          *NextResultAtOffset = v20;
          ++v19;
          v18 += 32;
        }

        while (v19 < *(a1 + 4));
      }
    }

    else
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = (*(a1 + 8) + v8);
        v11 = *(v7 + 8 * v9);
        v10[2] = a2;
        v10[3] = v11;
        *v10 = 0;
        v10[1] = v11;
        v12 = *v11;
        *v10 = *v11;
        if (v12)
        {
          *(v12 + 8) = v10;
        }

        *v11 = v10;
        ++v9;
        v8 += 32;
      }

      while (v9 < *(a1 + 4));
    }
  }

  return a1;
}