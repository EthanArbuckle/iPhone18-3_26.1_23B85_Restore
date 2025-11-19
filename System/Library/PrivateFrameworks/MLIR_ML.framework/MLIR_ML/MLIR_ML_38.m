void *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>,mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = (*a1 + 40 * v4);
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
      v5 = (*a1 + 40 * (v12 & v3));
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
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>,mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>,mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>::LookupBucketFor<mlir::OperationName>(v14, v13, &v15);
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
  v5[1] = v5 + 3;
  v5[2] = 0x400000000;
  return v5 + 1;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>,mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(40 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = 5 * v3;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>,mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>::moveFromOldBuckets(a1, v4, &v4[v10]);

    llvm::deallocate_buffer(v4, (v10 * 8));
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 40 * v11 - 40;
    if (v12 < 0x28)
    {
      v13 = result;
LABEL_14:
      v17 = &result[5 * v11];
      do
      {
        *v13 = -4096;
        v13 += 5;
      }

      while (v13 != v17);
      return result;
    }

    v14 = v12 / 0x28 + 1;
    v13 = &result[5 * (v14 & 0xFFFFFFFFFFFFFFELL)];
    v15 = result;
    v16 = v14 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v15 = -4096;
      v15[5] = -4096;
      v15 += 10;
      v16 -= 2;
    }

    while (v16);
    if (v14 != (v14 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>,mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 40 * v6 - 40;
    if (v8 < 0x28)
    {
      v9 = *a1;
LABEL_7:
      v13 = &v7[5 * v6];
      do
      {
        *v9 = -4096;
        v9 += 5;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x28 + 1;
    v9 = &v7[5 * (v10 & 0xFFFFFFFFFFFFFFELL)];
    v11 = *a1;
    v12 = v10 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v11 = -4096;
      v11[5] = -4096;
      v11 += 10;
      v12 -= 2;
    }

    while (v12);
    if (v10 != (v10 & 0xFFFFFFFFFFFFFFELL))
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
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v15 = *(a1 + 16) - 1;
        v16 = v15 & ((v14 >> 4) ^ (v14 >> 9));
        v17 = (*a1 + 40 * v16);
        v18 = *v17;
        if (v14 != *v17)
        {
          v20 = 0;
          v21 = 1;
          while (v18 != -4096)
          {
            if (v20)
            {
              v22 = 0;
            }

            else
            {
              v22 = v18 == -8192;
            }

            if (v22)
            {
              v20 = v17;
            }

            v23 = v16 + v21++;
            v16 = v23 & v15;
            v17 = (*a1 + 40 * (v23 & v15));
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
        v17[1] = v17 + 3;
        v17[2] = 0x400000000;
        if (*(v4 + 4))
        {
          llvm::SmallVectorImpl<unsigned int>::operator=((v17 + 1), v4 + 1);
        }

        ++*(a1 + 8);
        v19 = v4[1];
        if (v19 != v4 + 3)
        {
          free(v19);
        }
      }

      v4 += 5;
    }

    while (v4 != a3);
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>,void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>::try_emplace<unsigned long>@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 16);
  if (!v5)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v6 = *result;
  v7 = v5 - 1;
  v8 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v5 - 1);
  v9 = *result + 16 * v8;
  v10 = *v9;
  if (*a2 != *v9)
  {
    v13 = 0;
    v14 = 1;
    while (v10 != -4096)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v10 == -8192;
      }

      if (v15)
      {
        v13 = v9;
      }

      v16 = v8 + v14++;
      v8 = v16 & v7;
      v9 = v6 + 16 * (v16 & v7);
      v10 = *v9;
      if (*a2 == *v9)
      {
        goto LABEL_3;
      }
    }

    if (v13)
    {
      v9 = v13;
    }

LABEL_5:
    v20 = v9;
    v12 = *(result + 8);
    if (4 * v12 + 4 >= 3 * v5)
    {
      v5 *= 2;
    }

    else if (v5 + ~v12 - *(result + 12) > v5 >> 3)
    {
      *(result + 8) = v12 + 1;
      if (*v9 == -4096)
      {
LABEL_9:
        *v9 = *a2;
        *(v9 + 8) = *a3;
        v6 = *result;
        v5 = *(result + 16);
        v11 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v17 = result;
    v18 = a4;
    v19 = a3;
    llvm::DenseMap<void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::LookupBucketFor<mlir::Dialect const*>(v17, a2, &v20);
    a3 = v19;
    result = v17;
    a4 = v18;
    v9 = v20;
    ++*(v17 + 8);
    if (*v9 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v11 = 0;
LABEL_10:
  *a4 = v9;
  *(a4 + 8) = v6 + 16 * v5;
  *(a4 + 16) = v11;
  return result;
}

void std::vector<void const*>::push_back[abi:nn200100](uint64_t a1, void *a2)
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
    std::string::__throw_length_error[abi:nn200100]();
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

    std::string::__throw_length_error[abi:nn200100]();
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

void *llvm::DenseMap<void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(16 * v8, 8uLL);
  v10 = result;
  *a1 = result;
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
      v10 = &result[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = result + 2;
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

        while (v10 != &result[2 * v11]);
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
          v23 = *a1 + 16 * v25;
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
              v23 = *a1 + 16 * (v30 & v16);
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
          *(v23 + 8) = *(v17 + 4);
          *(a1 + 8) = ++v15;
        }

        v17 = (v17 + 16);
      }

      while (v17 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3));
  }

  *(a1 + 8) = 0;
  v18 = *(a1 + 16);
  if (v18)
  {
    if (((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_18;
    }

    v19 = ((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v19 & 0x1FFFFFFFFFFFFFFELL)];
    v20 = result + 2;
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
      v22 = &result[2 * v18];
      do
      {
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v22);
    }
  }

  return result;
}

void *anonymous namespace::ByteCodeWriter::append<anonymous namespace::OpCode,mlir::detail::TypedValue<mlir::pdl::OperationType>,unsigned int,unsigned short,mlir::SuccessorRange>(void *a1, __int16 a2, uint64_t a3, int a4, __int16 a5, uint64_t a6, uint64_t a7)
{
  v12 = a1[3];
  v13 = v12[1];
  if ((v13 + 1) > v12[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  *(*v12 + 2 * v13) = a2;
  ++v12[1];
  v15 = a1[3];
  v14 = a1[4];
  v23 = a3;
  v16 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v14, &v23);
  v17 = v15[1];
  if ((v17 + 1) > v15[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  *(*v15 + 2 * v17) = v16;
  ++v15[1];
  v18 = a1[3];
  v19 = v18[1];
  if (v18[2] < (v19 + 2))
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  *(*v18 + 2 * v19) = a4;
  v18[1] += 2;
  v20 = a1[3];
  v21 = v20[1];
  if ((v21 + 1) > v20[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  *(*v20 + 2 * v21) = a5;
  ++v20[1];
}

void *anonymous namespace::ByteCodeWriter::append<anonymous namespace::OpCode,mlir::detail::TypedValue<mlir::pdl::RangeType>,mlir::ArrayAttr,mlir::SuccessorRange>(void *a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a1[3];
  v11 = v10[1];
  if ((v11 + 1) > v10[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  *(*v10 + 2 * v11) = a2;
  ++v10[1];
  v13 = a1[3];
  v12 = a1[4];
  v17 = a3;
  v14 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v12, &v17);
  v15 = v13[1];
  if ((v15 + 1) > v13[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  *(*v13 + 2 * v15) = v14;
  ++v13[1];
}

void *anonymous namespace::ByteCodeWriter::append<mlir::ArrayAttr,mlir::SuccessorRange>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[3];
  v8 = a1[4];
  v14 = a2;
  v11 = **(v8 + 216) + ((*(*(v8 + 184) + 8) - **(v8 + 184)) >> 3);
  llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>,void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>::try_emplace<unsigned long>(v8 + 120, &v14, &v11, &v12);
  if (v13 == 1)
  {
    std::vector<void const*>::push_back[abi:nn200100](*(v8 + 184), &v14);
  }

  v9 = v7[1];
  if ((v9 + 1) > v7[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  *(*v7 + 2 * v9) = *(v12 + 8);
  ++v7[1];
}

_WORD *anonymous namespace::ByteCodeWriter::append<mlir::detail::TypedValue<mlir::pdl::OperationType>,mlir::detail::TypedValue<mlir::pdl::ValueType>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v13 = a2;
  v7 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v5, &v13);
  v8 = v6[1];
  if ((v8 + 1) > v6[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  *(*v6 + 2 * v8) = v7;
  ++v6[1];
  v10 = *(a1 + 24);
  v9 = *(a1 + 32);
  v13 = a3;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v9, &v13);
  v12 = v10[1];
  if ((v12 + 1) > v10[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  *(*v10 + 2 * v12) = *result;
  ++v10[1];
  return result;
}

_WORD *anonymous namespace::ByteCodeWriter::append<anonymous namespace::OpCode,unsigned int,mlir::detail::TypedValue<mlir::pdl::OperationType>>(uint64_t a1, __int16 a2, int a3, uint64_t a4)
{
  v4 = *(a1 + 24);
  v5 = v4[1];
  if ((v5 + 1) > v4[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  *(*v4 + 2 * v5) = a2;
  ++v4[1];
  v6 = *(a1 + 24);
  v7 = v6[1];
  if (v6[2] < (v7 + 2))
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  *(*v6 + 2 * v7) = a3;
  v6[1] += 2;
  v9 = *(a1 + 24);
  v8 = *(a1 + 32);
  v12 = a4;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v8, &v12);
  v11 = v9[1];
  if ((v11 + 1) > v9[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  *(*v9 + 2 * v11) = *result;
  ++v9[1];
  return result;
}

void llvm::SmallVectorTemplateBase<mlir::detail::PDLByteCodePattern,false>::moveElementsForGrow(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v5 = 0;
    v6 = *a1;
    v7 = *a1 + 104 * v2;
    do
    {
      v8 = v6 + v5;
      v9 = a2 + v5;
      v10 = *(v6 + v5);
      *(v9 + 16) = *(v6 + v5 + 16);
      *v9 = v10;
      *(a2 + v5 + 24) = a2 + v5 + 40;
      *(v9 + 32) = 0x200000000;
      if (*(v6 + v5 + 32))
      {
        llvm::SmallVectorImpl<unsigned long>::operator=(a2 + v5 + 24, (v8 + 24));
      }

      v11 = *(v8 + 56);
      v12 = (v9 + 88);
      *(v9 + 72) = v9 + 88;
      v13 = v9 + 72;
      *(v13 - 16) = v11;
      *(v13 + 8) = 0;
      if (*(v8 + 80))
      {
        llvm::SmallVectorImpl<llvm::StringRef>::operator=(v13, (v6 + v5 + 72));
      }

      *v12 = *(v8 + 88);
      v5 += 104;
    }

    while (v8 + 104 != v7);
    v14 = *(a1 + 2);
    if (v14)
    {
      v15 = *a1 + 104 * v14 - 80;
      v16 = -104 * v14;
      do
      {
        v17 = *(v15 + 48);
        if ((v15 + 64) != v17)
        {
          free(v17);
        }

        if (v15 + 16 != *v15)
        {
          free(*v15);
        }

        v15 -= 104;
        v16 += 104;
      }

      while (v16);
    }
  }
}

uint64_t llvm::SmallVectorImpl<llvm::StringRef>::operator=(uint64_t result, const void **a2)
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
      goto LABEL_16;
    }

    v6 = a2 + 1;
    v7 = *(a2 + 2);
    v8 = *(result + 8);
    if (v8 >= v7)
    {
      if (v7)
      {
        v9 = result;
        memmove(*result, *a2, 16 * v7);
        result = v9;
      }

      *(result + 8) = v7;
      goto LABEL_16;
    }

    if (*(result + 12) < v7)
    {
      *(result + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v8)
    {
      v10 = result;
      v11 = a2;
      memmove(*result, *a2, 16 * v8);
      a2 = v11;
      v12 = *v6 - v8;
      if (!v12)
      {
LABEL_15:
        result = v10;
        *(v10 + 8) = v7;
LABEL_16:
        *v6 = 0;
        return result;
      }
    }

    else
    {
      v10 = result;
      v8 = 0;
      v12 = *v6;
      if (!*v6)
      {
        goto LABEL_15;
      }
    }

    memcpy((*v10 + 16 * v8), *a2 + 16 * v8, 16 * v12);
    goto LABEL_15;
  }

  return result;
}

void *anonymous namespace::ByteCodeWriter::append<anonymous namespace::OpCode,mlir::detail::TypedValue<mlir::pdl::OperationType>,mlir::DenseIntElementsAttr,mlir::SuccessorRange>(void *a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a1[3];
  v11 = v10[1];
  if ((v11 + 1) > v10[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  *(*v10 + 2 * v11) = a2;
  ++v10[1];
  v13 = a1[3];
  v12 = a1[4];
  v21[0] = a3;
  v14 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v12, v21);
  v15 = v13[1];
  if ((v15 + 1) > v13[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  *(*v13 + 2 * v15) = v14;
  ++v13[1];
  v16 = a1[3];
  v17 = a1[4];
  v23 = a4;
  v20 = **(v17 + 216) + ((*(*(v17 + 184) + 8) - **(v17 + 184)) >> 3);
  llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>,void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>::try_emplace<unsigned long>(v17 + 120, &v23, &v20, v21);
  if (v22 == 1)
  {
    std::vector<void const*>::push_back[abi:nn200100](*(v17 + 184), &v23);
  }

  v18 = v16[1];
  if ((v18 + 1) > v16[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  *(*v16 + 2 * v18) = *(v21[0] + 8);
  ++v16[1];
}

void llvm::ReversePostOrderTraversal<mlir::Region *,llvm::GraphTraits<mlir::Region *>>::Initialize(uint64_t a1, uint64_t a2)
{
  v14[40] = *MEMORY[0x277D85DE8];
  v2 = *(*a2 + 8);
  if (v2)
  {
    v3 = (v2 - 8);
  }

  else
  {
    v3 = 0;
  }

  llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>::po_iterator(&v11, v3);
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v8[0] = 0;
  memset(v7, 0, sizeof(v7));
  v4 = v7 + 8;
  v5 = v7 + 8;
  v6 = 8;
  v8[1] = v9 + 8;
  DWORD1(v9[0]) = 8;
  std::copy[abi:nn200100]<llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,std::back_insert_iterator<llvm::SmallVector<mlir::Block *,8u>>>(&v11, &v4);
  if (v8[1] != v9 + 8)
  {
    free(v8[1]);
  }

  if (v5 != v4)
  {
    free(v5);
  }

  if (v13 != v14)
  {
    free(v13);
  }

  if (v12 != v11)
  {
    free(v12);
  }
}

uint64_t std::copy[abi:nn200100]<llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,std::back_insert_iterator<llvm::SmallVector<mlir::Block *,8u>>>(const void **a1, uint64_t a2)
{
  v22[41] = *MEMORY[0x277D85DE8];
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v14, &v16, a1);
  v17 = v19;
  v18 = 0x800000000;
  if (&v14 != a1)
  {
    v4 = *(a1 + 26);
    if (v4)
    {
      if (v4 >= 9)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(v19, a1[12], 40 * *(a1 + 26));
      LODWORD(v18) = v4;
    }
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v8, &v10, a2);
  v11 = v13;
  v12 = 0x800000000;
  if (&v8 != a2)
  {
    v5 = *(a2 + 104);
    if (v5)
    {
      if (v5 >= 9)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(v13, *(a2 + 96), 40 * *(a2 + 104));
      LODWORD(v12) = v5;
    }
  }

  std::__copy[abi:nn200100]<llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,std::back_insert_iterator<llvm::SmallVector<mlir::Block *,8u>>>(&v14, &v8);
  v6 = v22[40];
  if (v21 != v22)
  {
    free(v21);
  }

  if (v20 != v19[40])
  {
    free(v20);
  }

  if (v11 != v13)
  {
    free(v11);
  }

  if (v9 != v8)
  {
    free(v9);
  }

  if (v17 != v19)
  {
    free(v17);
  }

  if (v15 != v14)
  {
    free(v15);
  }

  return v6;
}

void std::__copy[abi:nn200100]<llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,std::back_insert_iterator<llvm::SmallVector<mlir::Block *,8u>>>(uint64_t a1, uint64_t a2)
{
  v13[40] = *MEMORY[0x277D85DE8];
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v9, &v11, 8, a1);
  v12[0] = v13;
  v12[1] = 0x800000000;
  if (*(a1 + 104))
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(v12, (a1 + 96));
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v4, &v6, 8, a2);
  v7[0] = v8;
  v7[1] = 0x800000000;
  if (*(a2 + 104))
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(v7, (a2 + 96));
  }

  std::__copy_move_unwrap_iters[abi:nn200100]<std::__copy_impl,llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,std::back_insert_iterator<llvm::SmallVector<mlir::Block *,8u>>,0>(&v9, &v4);
  if (v7[0] != v8)
  {
    free(v7[0]);
  }

  if (v5 != v4)
  {
    free(v5);
  }

  if (v12[0] != v13)
  {
    free(v12[0]);
  }

  if (v10 != v9)
  {
    free(v10);
  }
}

void std::__copy_move_unwrap_iters[abi:nn200100]<std::__copy_impl,llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,std::back_insert_iterator<llvm::SmallVector<mlir::Block *,8u>>,0>(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v6 = v5;
  v7 = v2;
  v9 = v8;
  v64[40] = *MEMORY[0x277D85DE8];
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v49, &v51, v2);
  v52 = v54;
  v53 = 0x800000000;
  if (&v49 != v7)
  {
    v10 = *(v7 + 26);
    if (v10)
    {
      if (v10 >= 9)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(v54, *(v7 + 12), 40 * *(v7 + 26));
      LODWORD(v53) = v10;
    }
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v44, &v46, 8, v6);
  v47[0] = v48;
  v47[1] = 0x800000000;
  if (*(v6 + 104))
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(v47, (v6 + 96));
  }

  std::__unwrap_range[abi:nn200100]<llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>>(&v49, &v44, &v55);
  if (v47[0] != v48)
  {
    free(v47[0]);
  }

  if (v45 != v44)
  {
    free(v45);
  }

  if (v52 != v54)
  {
    free(v52);
  }

  if (v50 != v49)
  {
    free(v50);
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v34, &v36, 8, &v55);
  v37[0] = v38;
  v37[1] = 0x800000000;
  if (v58)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(v37, &v57);
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v29, &v31, 8, &v60);
  v32[0] = v33;
  v32[1] = 0x800000000;
  if (v63)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(v32, &v62);
  }

  std::__copy_impl::operator()[abi:nn200100]<llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,std::back_insert_iterator<llvm::SmallVector<mlir::Block *,8u>>>(&v34, &v29, v4, &v39);
  if (v32[0] != v33)
  {
    free(v32[0]);
  }

  if (v30 != v29)
  {
    free(v30);
  }

  if (v37[0] != v38)
  {
    free(v37[0]);
  }

  if (v35 != v34)
  {
    free(v35);
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v19, &v21, 8, v7);
  v22[0] = v23;
  v22[1] = 0x800000000;
  if (*(v7 + 26))
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(v22, v7 + 12);
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v14, &v16, 8, &v39);
  v17[0] = v18;
  v17[1] = 0x800000000;
  if (v42)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(v17, &v41);
  }

  std::__rewrap_range[abi:nn200100]<llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>>(&v19, &v14, &v24);
  v11 = v43[40];
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(v9, (v9 + 32), 8, &v24);
  *(v12 + 96) = v9 + 112;
  v13 = v12 + 96;
  *(v13 + 8) = 0x800000000;
  if (v27)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(v13, &v26);
  }

  *(v9 + 432) = v11;
  if (v26 != &v28)
  {
    free(v26);
  }

  if (v25 != v24)
  {
    free(v25);
  }

  if (v17[0] != v18)
  {
    free(v17[0]);
  }

  if (v15 != v14)
  {
    free(v15);
  }

  if (v22[0] != v23)
  {
    free(v22[0]);
  }

  if (v20 != v19)
  {
    free(v20);
  }

  if (v41 != v43)
  {
    free(v41);
  }

  if (v40 != v39)
  {
    free(v40);
  }

  if (v62 != v64)
  {
    free(v62);
  }

  if (v61 != v60)
  {
    free(v61);
  }

  if (v57 != &v59)
  {
    free(v57);
  }

  if (v56 != v55)
  {
    free(v56);
  }
}

void std::__unwrap_range[abi:nn200100]<llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27[40] = *MEMORY[0x277D85DE8];
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v18, &v20, 8, a1);
  v21[0] = v22;
  v21[1] = 0x800000000;
  if (*(a1 + 104))
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(v21, (a1 + 96));
  }

  std::__unwrap_iter[abi:nn200100]<llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,std::__unwrap_iter_impl<llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,false>,0>(&v18, &v23);
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v8, &v10, 8, a2);
  v11[0] = v12;
  v11[1] = 0x800000000;
  if (*(a2 + 104))
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(v11, (a2 + 96));
  }

  std::__unwrap_iter[abi:nn200100]<llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,std::__unwrap_iter_impl<llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,false>,0>(&v8, &v13);
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(a3, (a3 + 32), 8, &v23);
  *(v6 + 96) = a3 + 112;
  v7 = v6 + 96;
  *(v7 + 8) = 0x800000000;
  if (v26)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(v7, &v25);
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(a3 + 432, (a3 + 464), 8, &v13);
  *(a3 + 528) = a3 + 544;
  *(a3 + 536) = 0x800000000;
  if (v16)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=((a3 + 528), &v15);
  }

  if (v15 != &v17)
  {
    free(v15);
  }

  if (v14 != v13)
  {
    free(v14);
  }

  if (v11[0] != v12)
  {
    free(v11[0]);
  }

  if (v9 != v8)
  {
    free(v9);
  }

  if (v25 != v27)
  {
    free(v25);
  }

  if (v24 != v23)
  {
    free(v24);
  }

  if (v21[0] != v22)
  {
    free(v21[0]);
  }

  if (v19 != v18)
  {
    free(v19);
  }
}

void **std::__copy_impl::operator()[abi:nn200100]<llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,std::back_insert_iterator<llvm::SmallVector<mlir::Block *,8u>>>@<X0>(llvm::SmallPtrSetImplBase *this@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  while (1)
  {
    v8 = *(this + 26);
    v9 = *(this + 12);
    if (v8 != *(a2 + 104))
    {
      goto LABEL_12;
    }

    if (!v8)
    {
      break;
    }

    v10 = *(a2 + 96);
    v11 = *(this + 12);
    while (1)
    {
      v12 = *v11 == *v10 && v11[2] == v10[2];
      if (!v12 || v11[4] != v10[4])
      {
        break;
      }

      v11 += 5;
      v10 += 5;
      if (v11 == (v9 + 40 * v8))
      {
        goto LABEL_16;
      }
    }

LABEL_12:
    v13 = *(v9 + 40 * v8 - 40);
    v14 = *(a3 + 8);
    if (v14 >= *(a3 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a3 + 8 * v14) = v13;
    ++*(a3 + 8);
    v15 = *(this + 26) - 1;
    *(this + 26) = v15;
    if (v15)
    {
      llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>::traverseChild(this);
    }
  }

LABEL_16:
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(a4, (a4 + 32), 8, this);
  *(v16 + 96) = a4 + 112;
  result = (v16 + 96);
  result[1] = 0x800000000;
  if (*(this + 26))
  {
    result = llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(result, this + 12);
  }

  *(a4 + 432) = a3;
  return result;
}

void std::__rewrap_range[abi:nn200100]<llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15[40] = *MEMORY[0x277D85DE8];
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v11, &v13, 8, a1);
  v14[0] = v15;
  v14[1] = 0x800000000;
  if (*(a1 + 104))
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(v14, (a1 + 96));
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v6, &v8, 8, a2);
  v9[0] = v10;
  v9[1] = 0x800000000;
  if (*(a2 + 104))
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(v9, (a2 + 96));
  }

  std::__rewrap_iter[abi:nn200100]<llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,std::__unwrap_iter_impl<llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,false>>(&v11, &v6, a3);
  if (v9[0] != v10)
  {
    free(v9[0]);
  }

  if (v7 != v6)
  {
    free(v7);
  }

  if (v14[0] != v15)
  {
    free(v14[0]);
  }

  if (v12 != v11)
  {
    free(v12);
  }
}

void std::__unwrap_iter[abi:nn200100]<llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,std::__unwrap_iter_impl<llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,false>,0>(const void **a1@<X0>, uint64_t a2@<X8>)
{
  v11[40] = *MEMORY[0x277D85DE8];
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v6, &v8, a1);
  v9 = v11;
  v10 = 0x800000000;
  if (&v6 != a1)
  {
    v4 = *(a1 + 26);
    if (v4)
    {
      if (v4 >= 9)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(v11, a1[12], 40 * *(a1 + 26));
      LODWORD(v10) = v4;
    }
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(a2, (a2 + 32), 8, &v6);
  *(a2 + 96) = a2 + 112;
  v5 = a2 + 96;
  *(v5 + 8) = 0x800000000;
  if (v10)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(v5, &v9);
  }

  if (v9 != v11)
  {
    free(v9);
  }

  if (v7 != v6)
  {
    free(v7);
  }
}

void std::__rewrap_iter[abi:nn200100]<llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,std::__unwrap_iter_impl<llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,false>>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17[40] = *MEMORY[0x277D85DE8];
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v13, &v15, 8, a1);
  v16[0] = v17;
  v16[1] = 0x800000000;
  if (*(a1 + 104))
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(v16, (a1 + 96));
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v7, &v9, 8, a2);
  v10 = v12;
  v11 = 0x800000000;
  if (*(a2 + 104))
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v10, (a2 + 96));
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(a3, (a3 + 32), 8, &v7);
  *(a3 + 96) = a3 + 112;
  v6 = a3 + 96;
  *(v6 + 8) = 0x800000000;
  if (v11)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(v6, &v10);
  }

  if (v10 != v12)
  {
    free(v10);
  }

  if (v8 != v7)
  {
    free(v8);
  }

  if (v16[0] != v17)
  {
    free(v16[0]);
  }

  if (v14 != v13)
  {
    free(v14);
  }
}

unsigned __int16 **anonymous namespace::ByteCodeExecutor::readList<mlir::PDLValue,mlir::PDLValue>(unsigned __int16 **result, uint64_t a2)
{
  *(a2 + 8) = 0;
  v2 = *(*result)++;
  if (v2)
  {
    v3 = 0;
    do
    {
      v4 = *result;
      v5 = **result;
      *result += 2;
      v6 = *(v4 + 2);
      if (v5 > 2)
      {
        if (v5 == 4)
        {
          v8 = 4;
        }

        else
        {
          v8 = 5;
        }

        if (v5 == 3)
        {
          v5 = 3;
        }

        else
        {
          v5 = v8;
        }

        v7 = result + 9;
      }

      else if (v5)
      {
        if (v5 == 1)
        {
          v7 = result + 9;
        }

        else
        {
          v11 = result[10];
          if (v11 <= v6)
          {
            v12 = 21;
          }

          else
          {
            v12 = 9;
          }

          v7 = &result[v12];
          if (v11 > v6)
          {
            v11 = 0;
          }

          v6 -= v11;
          v5 = 2;
        }
      }

      else
      {
        v5 = 0;
        v9 = result[10];
        if (v9 <= v6)
        {
          v10 = 21;
        }

        else
        {
          v10 = 9;
        }

        v7 = &result[v10];
        if (v9 > v6)
        {
          v9 = 0;
        }

        v6 -= v9;
      }

      if (v3 >= *(a2 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v13 = (*a2 + 16 * v3);
      *v13 = *&(*v7)[4 * v6];
      v13[1] = v5;
      v3 = *(a2 + 8) + 1;
      *(a2 + 8) = v3;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t anonymous namespace::ByteCodeExecutor::processNativeFunResults(uint64_t result, uint64_t a2, unsigned int a3, _BYTE *a4)
{
  v5 = result;
  if (a3)
  {
    for (i = 0; 16 * a3 != i; i += 16)
    {
      v14 = *result;
      v12 = (*result + 2);
      *result = v12;
      if ((*a4 & 1) == 0)
      {
        v29 = 2;
        if (((*v14 - 3) & 0xFFFD) == 0)
        {
          v29 = 3;
        }

        *result = &v14[v29];
        return result;
      }

      v15 = *a2 + i;
      v11 = *v15;
      v16 = *(v15 + 8);
      v13 = (v14 + 2);
      if (v16 == 5)
      {
        v7 = *(result + 128);
        v8 = 16 * *v12;
        v9 = *v11;
        *result = v13;
        *(v7 + v8) = v9;
        v10 = *(result + 128);
      }

      else
      {
        if (v16 != 3)
        {
          goto LABEL_5;
        }

        v17 = *(result + 104);
        v8 = 16 * *v12;
        v18 = *v11;
        *result = v13;
        *(v17 + v8) = v18;
        v10 = *(result + 104);
      }

      v11 = (v10 + v8);
      v12 = *result;
      v13 = *result + 2;
LABEL_5:
      *result = v13;
      *(*(result + 72) + 8 * *v12) = v11;
    }
  }

  v19 = *(a2 + 200);
  if (v19)
  {
    v20 = *(a2 + 192);
    v21 = 16 * v19;
    do
    {
      while (1)
      {
        v22 = *(v5 + 120);
        v23 = *(v22 + 8);
        if (v23 < *(v22 + 16))
        {
          break;
        }

        result = std::vector<llvm::OwningArrayRef<mlir::Type>>::__emplace_back_slow_path<llvm::OwningArrayRef<mlir::Type>>(*(v5 + 120), v20);
        *(v22 + 8) = result;
        v20 += 16;
        v21 -= 16;
        if (!v21)
        {
          goto LABEL_15;
        }
      }

      *v23 = 0;
      v23[1] = 0;
      *v23 = *v20;
      *v20 = 0;
      *(v20 + 8) = 0;
      v20 += 16;
      result = (v23 + 2);
      *(v22 + 8) = v23 + 2;
      v21 -= 16;
    }

    while (v21);
  }

LABEL_15:
  v24 = *(a2 + 264);
  if (v24)
  {
    v25 = *(a2 + 256);
    v26 = 16 * v24;
    do
    {
      while (1)
      {
        v27 = *(v5 + 144);
        v28 = *(v27 + 8);
        if (v28 < *(v27 + 16))
        {
          break;
        }

        result = std::vector<llvm::OwningArrayRef<mlir::Type>>::__emplace_back_slow_path<llvm::OwningArrayRef<mlir::Type>>(*(v5 + 144), v25);
        *(v27 + 8) = result;
        v25 += 16;
        v26 -= 16;
        if (!v26)
        {
          return result;
        }
      }

      *v28 = 0;
      v28[1] = 0;
      *v28 = *v25;
      *v25 = 0;
      *(v25 + 8) = 0;
      v25 += 16;
      result = (v28 + 2);
      *(v27 + 8) = v28 + 2;
      v26 -= 16;
    }

    while (v26);
  }

  return result;
}

uint64_t std::vector<llvm::OwningArrayRef<mlir::Type>>::__emplace_back_slow_path<llvm::OwningArrayRef<mlir::Type>>(void *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 3 > v3)
  {
    v3 = v5 >> 3;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 60))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v7 = (16 * v2);
  *v7 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v8 = 16 * v2 + 16;
  v9 = *a1;
  v10 = a1[1];
  v11 = (v7 + *a1 - v10);
  if (*a1 != v10)
  {
    v12 = *a1;
    v13 = v11;
    do
    {
      *v13++ = *v12;
      *v12 = 0;
      v12[1] = 0;
      v12 += 2;
    }

    while (v12 != v10);
    do
    {
      if (*v9)
      {
        MEMORY[0x259C63150](*v9, 0x20C8093837F09);
      }

      v9 += 2;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void mlir::PDLResultList::~PDLResultList(mlir::PDLResultList *this)
{
  v2 = *(this + 32);
  v3 = *(this + 66);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 - 16;
    do
    {
      v6 = *&v5[v4];
      if (v6)
      {
        MEMORY[0x259C63150](v6, 0x20C8093837F09);
      }

      v4 -= 16;
    }

    while (v4);
    v2 = *(this + 32);
  }

  if (v2 != this + 272)
  {
    free(v2);
  }

  v7 = *(this + 24);
  v8 = *(this + 50);
  if (v8)
  {
    v9 = 16 * v8;
    v10 = v7 - 16;
    do
    {
      v11 = *&v10[v9];
      if (v11)
      {
        MEMORY[0x259C63150](v11, 0x20C8093837F09);
      }

      v9 -= 16;
    }

    while (v9);
    v7 = *(this + 24);
  }

  if (v7 != this + 208)
  {
    free(v7);
  }

  v12 = *(this + 16);
  if (v12 != this + 144)
  {
    free(v12);
  }

  v13 = *(this + 8);
  if (v13 != this + 80)
  {
    free(v13);
  }

  if (*this != (this + 16))
  {
    free(*this);
  }
}

unsigned __int16 **anonymous namespace::ByteCodeExecutor::readList(unsigned __int16 **result, uint64_t *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(*result)++;
  if (v2)
  {
    v4 = result;
    for (i = 0; i != v2; ++i)
    {
      while (1)
      {
        v6 = *v4;
        v7 = **v4;
        *v4 += 2;
        v8 = *&v4[9][4 * *(v6 + 2)];
        if (v7 != 4)
        {
          break;
        }

        v9 = *(a2 + 2);
        if (v9 >= *(a2 + 3))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*a2 + 8 * v9) = v8;
        ++*(a2 + 2);
        if (++i == v2)
        {
          return result;
        }
      }

      v11 = *v8;
      v10 = v8[1];
      v12 = *(a2 + 2);
      if (v10 + v12 > *(a2 + 3))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v13 = *a2;
      v16 = v11;
      v17 = 0;
      if (v10)
      {
        v14 = 0;
        v15 = (v13 + 8 * v12);
        do
        {
          result = mlir::ValueRange::dereference_iterator(&v16, v14);
          *v15++ = result;
          v14 = v17 + 1;
          v17 = v14;
        }

        while (v14 != v10);
        LODWORD(v12) = *(a2 + 2);
      }

      *(a2 + 2) = v12 + v10;
    }
  }

  return result;
}

void *llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(void *result)
{
  v1 = *result;
  {
    v21 = v1;
    v23 = result;
    mlir::detail::InterfaceMap::lookup<mlir::TypedAttr>();
    result = v23;
    v2 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v3 = *(v21 + 8);
    v4 = *(v21 + 16);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
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

  if (!result)
  {
    return result;
  }

  v11 = *result;
  {
    v12 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    if (!v14)
    {
      return result;
    }
  }

  else
  {
    v22 = v11;
    v24 = result;
    mlir::detail::InterfaceMap::lookup<mlir::TypedAttr>();
    result = v24;
    v12 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v13 = *(v22 + 8);
    v14 = *(v22 + 16);
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
  return result;
}

const char *llvm::getTypeName<mlir::OpTrait::AttrSizedResultSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedResultSegments>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::AttrSizedResultSegments<Empty>]";
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

void llvm::SmallVectorTemplateBase<mlir::detail::PDLByteCode::MatchResult,false>::moveElementsForGrow(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v5 = 0;
    v6 = *a1;
    v7 = *a1 + 120 * v2;
    do
    {
      v9 = v6 + v5;
      v10 = (a2 + v5);
      *v10 = *(v6 + v5);
      *(a2 + v5 + 8) = a2 + v5 + 24;
      v10[2] = 0x600000000;
      if (*(v6 + v5 + 16))
      {
        llvm::SmallVectorImpl<unsigned long>::operator=(a2 + v5 + 8, (v9 + 8));
      }

      v11 = v10 + 11;
      v10[9] = v10 + 11;
      v10[10] = 0;
      v12 = (v10 + 9);
      if (*(v9 + 80))
      {
        llvm::SmallVectorImpl<llvm::StringRef>::operator=(v12, (v6 + v5 + 72));
      }

      v13 = (a2 + v5 + 104);
      *v11 = v13;
      *(a2 + v5 + 96) = 0;
      if (*(v9 + 96))
      {
        llvm::SmallVectorImpl<llvm::StringRef>::operator=(v11, (v6 + v5 + 88));
      }

      v8 = *(v9 + 104);
      *(a2 + v5 + 112) = *(v9 + 112);
      *v13 = v8;
      v5 += 120;
    }

    while (v9 + 120 != v7);
    v14 = *(a1 + 2);
    if (v14)
    {
      v15 = *a1 + 120 * v14 - 48;
      v16 = -120 * v14;
      do
      {
        v17 = *(v15 + 16);
        if ((v15 + 32) != v17)
        {
          free(v17);
        }

        if (v15 + 16 != *v15)
        {
          free(*v15);
        }

        v18 = *(v15 - 64);
        if ((v15 - 48) != v18)
        {
          free(v18);
        }

        v15 -= 120;
        v16 += 120;
      }

      while (v16);
    }
  }
}

uint64_t std::vector<std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>>::__emplace_back_slow_path<std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>>(void *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v7 = 32 * v2;
  v8 = *(a2 + 24);
  if (v8)
  {
    if (v8 == a2)
    {
      *(v7 + 24) = v7;
      (*(*v8 + 24))(v8, v7);
    }

    else
    {
      *(v7 + 24) = v8;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(v7 + 24) = 0;
  }

  v9 = v7 + 32;
  v10 = *a1;
  v11 = a1[1];
  v12 = *a1 - v11;
  v13 = v7 + v12;
  if (v11 != *a1)
  {
    v14 = *a1;
    v15 = v7 + v12;
    do
    {
      v16 = v14[3];
      if (v16)
      {
        if (v14 == v16)
        {
          *(v15 + 24) = v15;
          (*(*v14[3] + 24))(v14[3], v15);
        }

        else
        {
          *(v15 + 24) = v16;
          v14[3] = 0;
        }
      }

      else
      {
        *(v15 + 24) = 0;
      }

      v14 += 4;
      v15 += 32;
    }

    while (v14 != v11);
    v17 = v10;
    do
    {
      v18 = v10[3];
      if (v10 == v18)
      {
        (*(*v18 + 32))(v18);
      }

      else if (v18)
      {
        (*(*v18 + 40))(v18);
      }

      v10 += 4;
      v17 += 4;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v13;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

void std::vector<void const*>::__append(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      v10 = &v5[a2];
      v11 = *a3;
      v12 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v12 < 3)
      {
        goto LABEL_33;
      }

      v13 = v12 + 1;
      v14 = &v5[v13 & 0x3FFFFFFFFFFFFFFCLL];
      v15 = vdupq_n_s64(v11);
      v16 = (v5 + 2);
      v17 = v13 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v16[-1] = v15;
        *v16 = v15;
        v16 += 2;
        v17 -= 4;
      }

      while (v17);
      v5 = v14;
      if (v13 != (v13 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_33:
        do
        {
          *v5++ = v11;
        }

        while (v5 != v10);
      }

      v5 = v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = (v5 - *a1) >> 3;
    v7 = v6 + a2;
    if ((v6 + a2) >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v18 = 8 * v6;
    v19 = 8 * v6 + 8 * a2;
    v20 = *a3;
    v21 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v22 = (8 * v6);
    if (v21 < 3)
    {
      goto LABEL_34;
    }

    v23 = v21 + 1;
    v22 = (v18 + 8 * (v23 & 0x3FFFFFFFFFFFFFFCLL));
    v24 = vdupq_n_s64(v20);
    v25 = (v18 + 16);
    v26 = v23 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v25[-1] = v24;
      *v25 = v24;
      v25 += 2;
      v26 -= 4;
    }

    while (v26);
    if (v23 != (v23 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_34:
      do
      {
        *v22++ = v20;
      }

      while (v22 != v19);
    }

    v27 = *a1;
    v28 = *(a1 + 8) - *a1;
    v29 = v18 - v28;
    memcpy((v18 - v28), *a1, v28);
    *a1 = v29;
    *(a1 + 8) = v19;
    *(a1 + 16) = 0;
    if (v27)
    {

      operator delete(v27);
    }
  }
}

void std::vector<llvm::OwningArrayRef<mlir::Operation *>>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 4)
  {
    if (a2)
    {
      v10 = 16 * a2;
      bzero(*(a1 + 8), 16 * a2);
      v4 = (v4 + v10);
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = (v4 - *a1) >> 4;
    v7 = v6 + a2;
    if ((v6 + a2) >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v3 - v5;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 60))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v11 = (v4 - *a1) >> 4;
    v12 = (16 * v6);
    v13 = 16 * a2;
    bzero(v12, 16 * a2);
    v14 = &v12[v13];
    v15 = &v12[-16 * v11];
    if (v5 != v4)
    {
      v16 = v5;
      v17 = v15;
      do
      {
        *v17 = *v16;
        v17 += 16;
        *v16 = 0;
        v16[1] = 0;
        v16 += 2;
      }

      while (v16 != v4);
      do
      {
        if (*v5)
        {
          MEMORY[0x259C63150](*v5, 0x20C8093837F09);
        }

        v5 += 2;
      }

      while (v5 != v4);
      v5 = *a1;
    }

    *a1 = v15;
    *(a1 + 8) = v14;
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void std::vector<mlir::TypeRange>::__append(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v4) >> 4)
  {
    if (a2)
    {
      v10 = 16 * a2;
      v11 = &v4[a2];
      do
      {
        *v4++ = *a3;
        v10 -= 16;
      }

      while (v10);
      v4 = v11;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = (v4 - *a1) >> 4;
    v7 = v6 + a2;
    if ((v6 + a2) >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v5 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 60))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = 16 * v6;
    v13 = 16 * a2;
    v14 = 16 * v6 + 16 * a2;
    v15 = (16 * v6);
    do
    {
      *v15++ = *a3;
      v13 -= 16;
    }

    while (v13);
    v16 = *a1;
    v17 = *(a1 + 8) - *a1;
    v18 = v12 - v17;
    memcpy((v12 - v17), *a1, v17);
    *a1 = v18;
    *(a1 + 8) = v14;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void std::vector<unsigned int>::__append(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n, std::vector<unsigned int>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      v10 = &end[__n];
      v11 = *__x;
      v12 = (__n - 1) & 0x3FFFFFFFFFFFFFFFLL;
      if (v12 < 7)
      {
        goto LABEL_33;
      }

      v13 = v12 + 1;
      v14 = &end[v13 & 0x7FFFFFFFFFFFFFF8];
      v15 = vdupq_n_s32(v11);
      v16 = (end + 4);
      v17 = v13 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v16[-1] = v15;
        *v16 = v15;
        v16 += 2;
        v17 -= 8;
      }

      while (v17);
      end = v14;
      if (v13 != (v13 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_33:
        do
        {
          *end++ = v11;
        }

        while (end != v10);
      }

      end = v10;
    }

    this->__end_ = end;
  }

  else
  {
    v6 = end - this->__begin_;
    v7 = v6 + __n;
    if ((v6 + __n) >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = value - this->__begin_;
    if (v8 >> 1 > v7)
    {
      v7 = v8 >> 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 62))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v18 = 4 * v6;
    v19 = (4 * v6 + 4 * __n);
    v20 = *__x;
    v21 = (__n - 1) & 0x3FFFFFFFFFFFFFFFLL;
    v22 = (4 * v6);
    if (v21 < 7)
    {
      goto LABEL_34;
    }

    v23 = v21 + 1;
    v22 = (v18 + 4 * (v23 & 0x7FFFFFFFFFFFFFF8));
    v24 = vdupq_n_s32(v20);
    v25 = (v18 + 16);
    v26 = v23 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v25[-1] = v24;
      *v25 = v24;
      v25 += 2;
      v26 -= 8;
    }

    while (v26);
    if (v23 != (v23 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_34:
      do
      {
        *v22++ = v20;
      }

      while (v22 != v19);
    }

    begin = this->__begin_;
    v28 = this->__end_ - this->__begin_;
    v29 = (v18 - v28);
    memcpy((v18 - v28), this->__begin_, v28);
    this->__begin_ = v29;
    this->__end_ = v19;
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void std::__stable_sort<std::_ClassicAlgPolicy,mlir::detail::PDLByteCode::match(mlir::Operation *,mlir::PatternRewriter &,llvm::SmallVectorImpl<mlir::detail::PDLByteCode::MatchResult> &,mlir::detail::PDLByteCodeMutableState &)::$_0 &,mlir::detail::PDLByteCode::MatchResult*>(uint64_t a1, const void **a2, unint64_t a3, void *a4, uint64_t a5)
{
  v57 = *MEMORY[0x277D85DE8];
  if (a3 < 2)
  {
    return;
  }

  v6 = a1;
  if (a3 == 2)
  {
    if (*(a1 + 112) < *(a2 - 4))
    {
      v7 = (a2 - 15);

      std::swap[abi:nn200100]<mlir::detail::PDLByteCode::MatchResult>(a1, v7);
    }

    return;
  }

  v8 = a3;
  if (a3 > 0)
  {
    v10 = a3 >> 1;
    v11 = (a1 + 120 * (a3 >> 1));
    v12 = a3 - (a3 >> 1);
    v13 = a3 >> 1;
    if (v8 <= a5)
    {
      std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::detail::PDLByteCode::match(mlir::Operation *,mlir::PatternRewriter &,llvm::SmallVectorImpl<mlir::detail::PDLByteCode::MatchResult> &,mlir::detail::PDLByteCodeMutableState &)::$_0 &,mlir::detail::PDLByteCode::MatchResult*>(a1, v11, v13, a4);
      v42 = &a4[15 * v10];
      std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::detail::PDLByteCode::match(mlir::Operation *,mlir::PatternRewriter &,llvm::SmallVectorImpl<mlir::detail::PDLByteCode::MatchResult> &,mlir::detail::PDLByteCodeMutableState &)::$_0 &,mlir::detail::PDLByteCode::MatchResult*>(v6 + 120 * (v8 >> 1), a2, v8 - (v8 >> 1), v42);
      v43 = &a4[15 * v8];
      v44 = v42;
      v45 = a4;
      while (v44 != v43)
      {
        if (*(v45 + 112) >= *(v44 + 112))
        {
          mlir::detail::PDLByteCode::MatchResult::operator=(v6, v45);
          v45 += 120;
          v6 += 120;
          if (v45 == v42)
          {
            goto LABEL_68;
          }
        }

        else
        {
          mlir::detail::PDLByteCode::MatchResult::operator=(v6, v44);
          v44 += 120;
          v6 += 120;
          if (v45 == v42)
          {
LABEL_68:
            while (v44 != v43)
            {
              mlir::detail::PDLByteCode::MatchResult::operator=(v6, v44);
              v44 += 120;
              v6 += 120;
            }

            goto LABEL_69;
          }
        }
      }

      while (v45 != v42)
      {
        mlir::detail::PDLByteCode::MatchResult::operator=(v6, v45);
        v45 += 120;
        v6 += 120;
      }

LABEL_69:
      if (a4)
      {
        v46 = a4 + 13;
        do
        {
          v47 = *(v46 - 2);
          if (v46 != v47)
          {
            free(v47);
          }

          v48 = *(v46 - 4);
          if (v46 - 2 != v48)
          {
            free(v48);
          }

          v49 = *(v46 - 12);
          if (v46 - 10 != v49)
          {
            free(v49);
          }

          v46 += 15;
          --v8;
        }

        while (v8);
      }
    }

    else
    {
      std::__stable_sort<std::_ClassicAlgPolicy,mlir::detail::PDLByteCode::match(mlir::Operation *,mlir::PatternRewriter &,llvm::SmallVectorImpl<mlir::detail::PDLByteCode::MatchResult> &,mlir::detail::PDLByteCodeMutableState &)::$_0 &,mlir::detail::PDLByteCode::MatchResult*>(a1, v11, v13, a4, a5);
      std::__stable_sort<std::_ClassicAlgPolicy,mlir::detail::PDLByteCode::match(mlir::Operation *,mlir::PatternRewriter &,llvm::SmallVectorImpl<mlir::detail::PDLByteCode::MatchResult> &,mlir::detail::PDLByteCodeMutableState &)::$_0 &,mlir::detail::PDLByteCode::MatchResult*>(v6 + 120 * (v8 >> 1), a2, v8 - (v8 >> 1), a4, a5);

      std::__inplace_merge<std::_ClassicAlgPolicy,mlir::detail::PDLByteCode::match(mlir::Operation *,mlir::PatternRewriter &,llvm::SmallVectorImpl<mlir::detail::PDLByteCode::MatchResult> &,mlir::detail::PDLByteCodeMutableState &)::$_0 &,mlir::detail::PDLByteCode::MatchResult*>(v6, v11, a2, v10, v12, a4, a5);
    }

    return;
  }

  if (a1 == a2)
  {
    return;
  }

  v15 = (a1 + 120);
  if ((a1 + 120) == a2)
  {
    return;
  }

  v16 = 0;
  v17 = a1;
  while (2)
  {
    v18 = v15;
    if (*(v17 + 112) >= *(v17 + 232))
    {
      goto LABEL_16;
    }

    v50 = *v15;
    v51[0] = v52;
    v51[1] = 0x600000000;
    if (*(v17 + 136))
    {
      llvm::SmallVectorImpl<unsigned long>::operator=(v51, (v17 + 128));
    }

    v53[0] = v54;
    v53[1] = 0;
    if (*(v17 + 200))
    {
      llvm::SmallVectorImpl<llvm::StringRef>::operator=(v53, (v17 + 192));
    }

    v54[0] = &v55;
    v54[1] = 0;
    if (*(v17 + 216))
    {
      llvm::SmallVectorImpl<llvm::StringRef>::operator=(v54, (v17 + 208));
    }

    v55 = *(v17 + 224);
    v56 = *(v17 + 232);
    v19 = v16;
    while (1)
    {
      v20 = v6 + v19;
      v21 = *(v6 + v19 + 8);
      *(v6 + v19 + 120) = *(v6 + v19);
      v22 = v6 + v19 + 24;
      if (v22 == v21)
      {
        v36 = (v20 + 16);
        v37 = *(v20 + 16);
        v38 = *(v20 + 136);
        if (v38 >= v37)
        {
          if (v37)
          {
            memmove(*(v20 + 128), v21, 8 * v37);
          }
        }

        else
        {
          if (*(v6 + v19 + 140) < v37)
          {
            *(v20 + 136) = 0;
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          if (v38)
          {
            memmove(*(v20 + 128), v21, 8 * v38);
            v39 = *v36 - v38;
            if (!v39)
            {
              goto LABEL_43;
            }

            goto LABEL_42;
          }

          v38 = 0;
          v39 = *v36;
          if (*v36)
          {
LABEL_42:
            memcpy((*(v20 + 128) + 8 * v38), (*(v20 + 8) + 8 * v38), 8 * v39);
          }
        }

LABEL_43:
        *(v20 + 136) = v37;
        *v36 = 0;
        v25 = v6 + v19;
        v26 = *(v6 + v19 + 80);
        if (!v26)
        {
          goto LABEL_44;
        }

        goto LABEL_29;
      }

      v23 = *(v20 + 128);
      if ((v20 + 144) != v23)
      {
        free(v23);
        v21 = *(v20 + 8);
      }

      v24 = v6 + v19;
      *(v20 + 128) = v21;
      *(v24 + 136) = *(v6 + v19 + 16);
      *(v20 + 8) = v22;
      *(v24 + 20) = 0;
      *(v17 + 16) = 0;
      v25 = v6 + v19;
      v26 = *(v6 + v19 + 80);
      if (!v26)
      {
LABEL_44:
        *(v25 + 200) = 0;
        v30 = v6 + v19;
        v31 = *(v6 + v19 + 96);
        if (!v31)
        {
          goto LABEL_45;
        }

        goto LABEL_32;
      }

LABEL_29:
      v27 = *(v25 + 192);
      if ((v25 + 208) != v27)
      {
        free(v27);
        v26 = *(v25 + 80);
      }

      v28 = (v6 + v19);
      *(v25 + 192) = *(v25 + 72);
      v29 = *(v6 + v19 + 84);
      v28[50] = v26;
      v28[51] = v29;
      *(v25 + 72) = v6 + v19 + 88;
      v28[21] = 0;
      *(v17 + 80) = 0;
      v30 = v6 + v19;
      v31 = *(v6 + v19 + 96);
      if (!v31)
      {
LABEL_45:
        v33 = (v30 + 216);
        goto LABEL_46;
      }

LABEL_32:
      v32 = *(v30 + 208);
      if ((v30 + 224) != v32)
      {
        free(v32);
        v31 = *(v30 + 96);
      }

      v33 = (v17 + 96);
      v34 = (v6 + v19);
      *(v30 + 208) = *(v30 + 88);
      v35 = *(v6 + v19 + 100);
      v34[54] = v31;
      v34[55] = v35;
      *(v30 + 88) = v6 + v19 + 104;
      v34[25] = 0;
LABEL_46:
      *v33 = 0;
      v40 = v6 + v19;
      *(v40 + 224) = *(v6 + v19 + 104);
      *(v40 + 232) = *(v6 + v19 + 112);
      if (!v19)
      {
        break;
      }

      v17 -= 120;
      v19 -= 120;
      if (*(v40 - 8) >= v56)
      {
        v41 = v6 + v19 + 120;
        goto LABEL_52;
      }
    }

    v41 = v6;
LABEL_52:
    mlir::detail::PDLByteCode::MatchResult::operator=(v41, &v50);
    if (v54[0] != &v55)
    {
      free(v54[0]);
    }

    if (v53[0] != v54)
    {
      free(v53[0]);
    }

    if (v51[0] != v52)
    {
      free(v51[0]);
    }

LABEL_16:
    v15 = v18 + 15;
    v16 += 120;
    v17 = v18;
    if (v18 + 15 != a2)
    {
      continue;
    }

    break;
  }
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::detail::PDLByteCode::match(mlir::Operation *,mlir::PatternRewriter &,llvm::SmallVectorImpl<mlir::detail::PDLByteCode::MatchResult> &,mlir::detail::PDLByteCodeMutableState &)::$_0 &,mlir::detail::PDLByteCode::MatchResult*>(uint64_t result, const void **a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v4 = a4;
    v5 = a2;
    v6 = result;
    if (a3 == 2)
    {
      v10 = a4 + 3;
      if (*(result + 112) < *(a2 - 4))
      {
        *a4 = *(a2 - 15);
        a4[1] = v10;
        a4[2] = 0x600000000;
        if (*(a2 - 26))
        {
          llvm::SmallVectorImpl<unsigned long>::operator=((a4 + 1), a2 - 14);
        }

        v4[9] = v4 + 11;
        v4[10] = 0;
        if (*(v5 - 10))
        {
          llvm::SmallVectorImpl<llvm::StringRef>::operator=((v4 + 9), v5 - 6);
        }

        v4[11] = v4 + 13;
        v4[12] = 0;
        if (*(v5 - 6))
        {
          llvm::SmallVectorImpl<llvm::StringRef>::operator=((v4 + 11), v5 - 4);
        }

        v11 = *(v5 - 2);
        *(v4 + 56) = *(v5 - 4);
        v4[13] = v11;
        v12 = *v6;
        v4[16] = v4 + 18;
        v4[15] = v12;
        v4[17] = 0x600000000;
        if (*(v6 + 4))
        {
          llvm::SmallVectorImpl<unsigned long>::operator=((v4 + 16), v6 + 1);
        }

        v7 = (v4 + 26);
        v4[24] = v4 + 26;
        v4[25] = 0;
        result = (v4 + 24);
        if (*(v6 + 20))
        {
          result = llvm::SmallVectorImpl<llvm::StringRef>::operator=(result, v6 + 9);
        }

        v8 = v4 + 28;
        v4[26] = v4 + 28;
        v4[27] = 0;
        if (!*(v6 + 24))
        {
          goto LABEL_10;
        }

LABEL_9:
        result = llvm::SmallVectorImpl<llvm::StringRef>::operator=(v7, v6 + 11);
LABEL_10:
        v9 = v6[13];
        *(v8 + 4) = *(v6 + 56);
        *v8 = v9;
        return result;
      }

      *a4 = *result;
      a4[1] = v10;
      a4[2] = 0x600000000;
      if (*(result + 16))
      {
        llvm::SmallVectorImpl<unsigned long>::operator=((a4 + 1), (result + 8));
      }

      v4[9] = v4 + 11;
      v4[10] = 0;
      if (*(v6 + 20))
      {
        llvm::SmallVectorImpl<llvm::StringRef>::operator=((v4 + 9), v6 + 9);
      }

      v4[11] = v4 + 13;
      v4[12] = 0;
      if (*(v6 + 24))
      {
        llvm::SmallVectorImpl<llvm::StringRef>::operator=((v4 + 11), v6 + 11);
      }

      v43 = v6[13];
      *(v4 + 56) = *(v6 + 56);
      v4[13] = v43;
      v44 = *(v5 - 15);
      v4[16] = v4 + 18;
      v4[15] = v44;
      v4[17] = 0x600000000;
      if (*(v5 - 26))
      {
        llvm::SmallVectorImpl<unsigned long>::operator=((v4 + 16), v5 - 14);
      }

      v4[24] = v4 + 26;
      v4[25] = 0;
      result = (v4 + 24);
      if (*(v5 - 10))
      {
        result = llvm::SmallVectorImpl<llvm::StringRef>::operator=(result, v5 - 6);
      }

      v4[26] = v4 + 28;
      v4[27] = 0;
      if (*(v5 - 6))
      {
        result = llvm::SmallVectorImpl<llvm::StringRef>::operator=((v4 + 26), v5 - 4);
      }

      v45 = *(v5 - 2);
      *(v4 + 116) = *(v5 - 4);
      v4[28] = v45;
    }

    else
    {
      if (a3 == 1)
      {
        *a4 = *result;
        a4[1] = a4 + 3;
        a4[2] = 0x600000000;
        if (*(result + 16))
        {
          llvm::SmallVectorImpl<unsigned long>::operator=((a4 + 1), (result + 8));
        }

        v7 = (v4 + 11);
        v4[9] = v4 + 11;
        v4[10] = 0;
        result = (v4 + 9);
        if (*(v6 + 20))
        {
          result = llvm::SmallVectorImpl<llvm::StringRef>::operator=(result, v6 + 9);
        }

        v8 = v4 + 13;
        v4[11] = v4 + 13;
        v4[12] = 0;
        if (!*(v6 + 24))
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      if (a3 > 8)
      {
        v46 = a3 >> 1;
        v47 = 15 * (a3 >> 1);
        v48 = result + v47 * 8;
        std::__stable_sort<std::_ClassicAlgPolicy,mlir::detail::PDLByteCode::match(mlir::Operation *,mlir::PatternRewriter &,llvm::SmallVectorImpl<mlir::detail::PDLByteCode::MatchResult> &,mlir::detail::PDLByteCodeMutableState &)::$_0 &,mlir::detail::PDLByteCode::MatchResult*>(result, result + v47 * 8, v46, a4, v46);
        result = std::__stable_sort<std::_ClassicAlgPolicy,mlir::detail::PDLByteCode::match(mlir::Operation *,mlir::PatternRewriter &,llvm::SmallVectorImpl<mlir::detail::PDLByteCode::MatchResult> &,mlir::detail::PDLByteCodeMutableState &)::$_0 &,mlir::detail::PDLByteCode::MatchResult*>(&v6[v47], v5, a3 - v46, &v4[v47], a3 - v46);
        v50 = &v6[v47];
        while (v50 != v5)
        {
          v52 = v4 + 3;
          if (*(v6 + 56) >= *(v50 + 56))
          {
            *v4 = *v6;
            v4[1] = v52;
            v4[2] = 0x600000000;
            if (*(v6 + 4))
            {
              llvm::SmallVectorImpl<unsigned long>::operator=((v4 + 1), v6 + 1);
            }

            v4[9] = v4 + 11;
            v4[10] = 0;
            result = (v4 + 9);
            if (*(v6 + 20))
            {
              result = llvm::SmallVectorImpl<llvm::StringRef>::operator=(result, v6 + 9);
            }

            v4[11] = v4 + 13;
            v4[12] = 0;
            if (*(v6 + 24))
            {
              result = llvm::SmallVectorImpl<llvm::StringRef>::operator=((v4 + 11), v6 + 11);
            }

            v51 = v6[13];
            *(v4 + 56) = *(v6 + 56);
            v4[13] = v51;
            v6 += 15;
            v4 += 15;
            if (v6 == v48)
            {
LABEL_121:
              if (v50 != v5)
              {
                v61 = 0;
                do
                {
                  v63 = &v50[v61];
                  v64 = &v4[v61];
                  *v64 = v50[v61];
                  v4[v61 + 1] = &v4[v61 + 3];
                  v64[2] = 0x600000000;
                  if (LODWORD(v50[v61 + 2]))
                  {
                    llvm::SmallVectorImpl<unsigned long>::operator=(&v4[v61 + 1], v63 + 1);
                  }

                  v64[9] = v64 + 11;
                  result = (v64 + 9);
                  v64[10] = 0;
                  if (*(v63 + 20))
                  {
                    result = llvm::SmallVectorImpl<llvm::StringRef>::operator=(result, &v50[v61 + 9]);
                  }

                  v65 = &v4[v61 + 13];
                  v64[11] = v65;
                  v4[v61 + 12] = 0;
                  if (*(v63 + 24))
                  {
                    result = llvm::SmallVectorImpl<llvm::StringRef>::operator=((v64 + 11), &v50[v61 + 11]);
                  }

                  v62 = v63[13];
                  LOWORD(v4[v61 + 14]) = *(v63 + 56);
                  *v65 = v62;
                  v61 += 15;
                }

                while (v63 + 15 != v5);
              }

              return result;
            }
          }

          else
          {
            *v4 = *v50;
            v4[1] = v52;
            v4[2] = 0x600000000;
            if (*(v50 + 4))
            {
              llvm::SmallVectorImpl<unsigned long>::operator=((v4 + 1), v50 + 1);
            }

            v4[9] = v4 + 11;
            v4[10] = 0;
            result = (v4 + 9);
            if (*(v50 + 20))
            {
              result = llvm::SmallVectorImpl<llvm::StringRef>::operator=(result, v50 + 9);
            }

            v4[11] = v4 + 13;
            v4[12] = 0;
            if (*(v50 + 24))
            {
              result = llvm::SmallVectorImpl<llvm::StringRef>::operator=((v4 + 11), v50 + 11);
            }

            v53 = v50[13];
            *(v4 + 56) = *(v50 + 56);
            v4[13] = v53;
            v50 += 15;
            v4 += 15;
            if (v6 == v48)
            {
              goto LABEL_121;
            }
          }
        }

        if (v6 != v48)
        {
          v54 = 0;
          do
          {
            v56 = &v6[v54];
            v57 = &v4[v54];
            *v57 = v6[v54];
            v4[v54 + 1] = &v4[v54 + 3];
            result = &v4[v54 + 1];
            v57[2] = 0x600000000;
            if (LODWORD(v6[v54 + 2]))
            {
              result = llvm::SmallVectorImpl<unsigned long>::operator=(result, v56 + 1);
            }

            v58 = (v57 + 11);
            v57[9] = v57 + 11;
            v57[10] = 0;
            v59 = (v57 + 9);
            if (*(v56 + 20))
            {
              result = llvm::SmallVectorImpl<llvm::StringRef>::operator=(v59, &v6[v54 + 9]);
            }

            v60 = &v4[v54 + 13];
            *v58 = v60;
            v4[v54 + 12] = 0;
            if (*(v56 + 24))
            {
              result = llvm::SmallVectorImpl<llvm::StringRef>::operator=(v58, &v6[v54 + 11]);
            }

            v55 = v56[13];
            LOWORD(v4[v54 + 14]) = *(v56 + 56);
            *v60 = v55;
            v54 += 15;
          }

          while (v56 + 15 != v48);
        }
      }

      else if (result != a2)
      {
        *a4 = *result;
        a4[1] = a4 + 3;
        a4[2] = 0x600000000;
        if (*(result + 16))
        {
          llvm::SmallVectorImpl<unsigned long>::operator=((a4 + 1), (result + 8));
        }

        v4[9] = v4 + 11;
        v4[10] = 0;
        result = (v4 + 9);
        if (*(v6 + 20))
        {
          result = llvm::SmallVectorImpl<llvm::StringRef>::operator=(result, v6 + 9);
        }

        v4[11] = v4 + 13;
        v4[12] = 0;
        if (*(v6 + 24))
        {
          result = llvm::SmallVectorImpl<llvm::StringRef>::operator=((v4 + 11), v6 + 11);
        }

        v13 = v6[13];
        *(v4 + 56) = *(v6 + 56);
        v4[13] = v13;
        v14 = v6 + 15;
        if (v6 + 15 != v5)
        {
          v15 = 0;
          v16 = v4;
          v66 = v5;
          do
          {
            v18 = v14;
            v19 = v16 + 18;
            if (*(v16 + 56) >= *(v6 + 116))
            {
              v16[15] = *v18;
              v16[16] = v19;
              v16[17] = 0x600000000;
              if (*(v6 + 34))
              {
                llvm::SmallVectorImpl<unsigned long>::operator=((v16 + 16), v6 + 16);
              }

              v16[24] = v16 + 26;
              v16[25] = 0;
              result = (v16 + 24);
              if (*(v6 + 50))
              {
                result = llvm::SmallVectorImpl<llvm::StringRef>::operator=(result, v6 + 24);
              }

              v16[26] = v16 + 28;
              v16[27] = 0;
              if (*(v6 + 54))
              {
                result = llvm::SmallVectorImpl<llvm::StringRef>::operator=((v16 + 26), v6 + 26);
              }

              v17 = v6[28];
              *(v16 + 116) = *(v6 + 116);
              v16[28] = v17;
            }

            else
            {
              v16[15] = *v16;
              v16[16] = v19;
              v16[17] = 0x600000000;
              if (*(v16 + 4))
              {
                llvm::SmallVectorImpl<unsigned long>::operator=((v16 + 16), v16 + 1);
              }

              v16[24] = v16 + 26;
              v16[25] = 0;
              if (*(v16 + 20))
              {
                llvm::SmallVectorImpl<llvm::StringRef>::operator=((v16 + 24), v16 + 9);
              }

              v16[26] = v16 + 28;
              v16[27] = 0;
              if (*(v16 + 24))
              {
                llvm::SmallVectorImpl<llvm::StringRef>::operator=((v16 + 26), v16 + 11);
              }

              v16[28] = v16[13];
              *(v16 + 116) = *(v16 + 56);
              v20 = v4;
              if (v16 != v4)
              {
                v67 = v18;
                v68 = v15;
                v21 = v15;
                v22 = v16;
                while (1)
                {
                  v20 = v4 + v21;
                  if (*(v4 + v21 - 8) >= *(v6 + 116))
                  {
LABEL_78:
                    v5 = v66;
                    v18 = v67;
                    v15 = v68;
                    goto LABEL_79;
                  }

                  v25 = *(v20 - 112);
                  *v20 = *(v20 - 120);
                  if ((v20 - 96) == v25)
                  {
                    break;
                  }

                  v26 = *(v20 + 8);
                  v27 = v4 + v21;
                  if (v4 + v21 + 24 != v26)
                  {
                    free(v26);
                    v25 = *(v20 - 112);
                  }

                  *(v20 + 8) = v25;
                  *(v27 + 2) = *(v27 - 13);
                  *(v20 - 112) = v20 - 96;
                  *(v27 - 25) = 0;
                  *(v22 - 26) = 0;
                  v28 = v4 + v21;
                  v29 = *(v4 + v21 - 40);
                  if (!v29)
                  {
LABEL_65:
                    *(v28 + 20) = 0;
                    v33 = v4 + v21;
                    v34 = *(v4 + v21 - 24);
                    if (v34)
                    {
                      goto LABEL_66;
                    }

                    goto LABEL_45;
                  }

LABEL_52:
                  v30 = *(v28 + 9);
                  if (v28 + 88 != v30)
                  {
                    free(v30);
                    v29 = *(v28 - 10);
                  }

                  v31 = v4 + v21;
                  *(v28 + 9) = *(v28 - 6);
                  v32 = *(v4 + v21 - 36);
                  *(v31 + 20) = v29;
                  *(v31 + 21) = v32;
                  *(v28 - 6) = v4 + v21 - 32;
                  *(v31 - 9) = 0;
                  *(v22 - 10) = 0;
                  v33 = v4 + v21;
                  v34 = *(v4 + v21 - 24);
                  if (v34)
                  {
LABEL_66:
                    v40 = *(v33 + 11);
                    if (v33 + 104 != v40)
                    {
                      free(v40);
                      v34 = *(v33 - 6);
                    }

                    v23 = v22 - 3;
                    v41 = v4 + v21;
                    *(v33 + 11) = *(v33 - 4);
                    v42 = *(v4 + v21 - 20);
                    *(v41 + 24) = v34;
                    *(v41 + 25) = v42;
                    *(v33 - 4) = v4 + v21 - 16;
                    *(v41 - 5) = 0;
                    goto LABEL_46;
                  }

LABEL_45:
                  v23 = (v33 + 96);
LABEL_46:
                  v22 -= 15;
                  *v23 = 0;
                  v24 = v4 + v21;
                  *(v24 + 13) = *(v4 + v21 - 16);
                  *(v24 + 56) = *(v20 - 8);
                  v21 -= 120;
                  if (!v21)
                  {
                    v20 = v4;
                    goto LABEL_78;
                  }
                }

                v35 = v4 + v21;
                v36 = (v4 + v21 - 104);
                v37 = *v36;
                v38 = *(v4 + v21 + 16);
                if (v38 >= v37)
                {
                  if (v37)
                  {
                    memmove(*(v20 + 8), v25, 8 * v37);
                  }
                }

                else
                {
                  if (*(v35 + 5) < v37)
                  {
                    *(v35 + 4) = 0;
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  if (v38)
                  {
                    memmove(*(v20 + 8), v25, 8 * v38);
                    v39 = *v36 - v38;
                    if (v39)
                    {
                      goto LABEL_63;
                    }
                  }

                  else
                  {
                    v38 = 0;
                    v39 = *v36;
                    if (*v36)
                    {
LABEL_63:
                      memcpy((*(v20 + 8) + 8 * v38), (*(v20 - 112) + 8 * v38), 8 * v39);
                    }
                  }
                }

                *(v35 + 4) = v37;
                *v36 = 0;
                v28 = v4 + v21;
                v29 = *(v4 + v21 - 40);
                if (!v29)
                {
                  goto LABEL_65;
                }

                goto LABEL_52;
              }

LABEL_79:
              result = mlir::detail::PDLByteCode::MatchResult::operator=(v20, v18);
            }

            v16 += 15;
            v14 = v18 + 15;
            v15 += 120;
            v6 = v18;
          }

          while (v18 + 15 != v5);
        }
      }
    }
  }

  return result;
}

void std::__inplace_merge<std::_ClassicAlgPolicy,mlir::detail::PDLByteCode::match(mlir::Operation *,mlir::PatternRewriter &,llvm::SmallVectorImpl<mlir::detail::PDLByteCode::MatchResult> &,mlir::detail::PDLByteCodeMutableState &)::$_0 &,mlir::detail::PDLByteCode::MatchResult*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a5)
  {
    return;
  }

  while (a5 > a7 && a4 > a7)
  {
    if (!a4)
    {
      return;
    }

    v10 = 0;
    v11 = -a4;
    while (1)
    {
      v12 = a1 + v10;
      if (*(a1 + v10 + 112) < *(a2 + 112))
      {
        break;
      }

      v10 += 120;
      if (__CFADD__(v11++, 1))
      {
        return;
      }
    }

    v14 = -v11;
    v72 = a3;
    if (-v11 >= a5)
    {
      if (v11 == -1)
      {

        std::swap[abi:nn200100]<mlir::detail::PDLByteCode::MatchResult>(a1 + v10, a2);
        return;
      }

      v25 = v14 / 2;
      v19 = a1 + 120 * (v14 / 2) + v10;
      if (a3 == a2)
      {
        v16 = a2;
      }

      else
      {
        v26 = 0xEEEEEEEEEEEEEEEFLL * ((a3 - a2) >> 3);
        v16 = a2;
        do
        {
          v27 = v26 >> 1;
          v28 = v16 + 120 * (v26 >> 1);
          v29 = *(v28 + 112);
          v30 = v28 + 120;
          v26 += ~(v26 >> 1);
          if (v29 > *(v19 + 112))
          {
            v16 = v30;
          }

          else
          {
            v26 = v27;
          }
        }

        while (v26);
      }

      v15 = 0xEEEEEEEEEEEEEEEFLL * ((v16 - a2) >> 3);
      v31 = v16;
      if (v19 != a2)
      {
LABEL_31:
        v31 = v19;
        if (a2 != v16)
        {
          v69 = v15;
          v70 = a7;
          v71 = a5;
          std::swap[abi:nn200100]<mlir::detail::PDLByteCode::MatchResult>(v19, a2);
          v31 = v19 + 120;
          for (i = a2 + 120; i != v16; i += 120)
          {
            if (v31 == a2)
            {
              a2 = i;
            }

            std::swap[abi:nn200100]<mlir::detail::PDLByteCode::MatchResult>(v31, i);
            v31 += 120;
          }

          if (v31 != a2)
          {
            v33 = v31;
            v34 = a2;
            while (1)
            {
              std::swap[abi:nn200100]<mlir::detail::PDLByteCode::MatchResult>(v33, a2);
              a2 += 120;
              v35 = v33 + 120 == v34;
              if (a2 == v16)
              {
                if (v33 + 120 == v34)
                {
                  goto LABEL_50;
                }

                a2 = v34 + 120;
                v33 += 240;
                while (1)
                {
                  std::swap[abi:nn200100]<mlir::detail::PDLByteCode::MatchResult>(v33 - 120, v34);
                  v35 = v33 == v34;
                  if (a2 != v16)
                  {
                    break;
                  }

                  v36 = v33 == v34;
                  v33 += 120;
                  if (v36)
                  {
                    goto LABEL_50;
                  }
                }
              }

              else
              {
                v33 += 120;
              }

              if (v35)
              {
                v34 = a2;
              }
            }
          }

          v31 = a2;
LABEL_50:
          a7 = v70;
          a5 = v71;
          v15 = v69;
        }
      }
    }

    else
    {
      v15 = a5 / 2;
      v16 = a2 + 120 * (a5 / 2);
      if (v12 == a2)
      {
        v24 = a1 + v10;
        v17 = v24;
        v19 = v12;
      }

      else
      {
        v17 = a1 + v10;
        v18 = 0xEEEEEEEEEEEEEEEFLL * ((a2 - a1 - v10) >> 3);
        v19 = v12;
        do
        {
          v20 = v18 >> 1;
          v21 = v19 + 120 * (v18 >> 1);
          v22 = *(v21 + 112);
          v23 = v21 + 120;
          v18 += ~(v18 >> 1);
          if (v22 < *(v16 + 112))
          {
            v18 = v20;
          }

          else
          {
            v19 = v23;
          }
        }

        while (v18);
        v24 = v19;
      }

      v25 = 0xEEEEEEEEEEEEEEEFLL * ((v24 - v17) >> 3);
      v31 = a2 + 120 * (a5 / 2);
      if (v19 != a2)
      {
        goto LABEL_31;
      }
    }

    a4 = -(v25 + v11);
    v37 = a5 - v15;
    if (v25 + v15 >= a5 - (v25 + v15) - v11)
    {
      v39 = -(v25 + v11);
      v38 = a7;
      v37 = v15;
      std::__inplace_merge<std::_ClassicAlgPolicy,mlir::detail::PDLByteCode::match(mlir::Operation *,mlir::PatternRewriter &,llvm::SmallVectorImpl<mlir::detail::PDLByteCode::MatchResult> &,mlir::detail::PDLByteCodeMutableState &)::$_0 &,mlir::detail::PDLByteCode::MatchResult*>(v31, v16, v72, v39, a5 - v15, a6);
      v16 = v19;
      a4 = v25;
      a3 = v31;
    }

    else
    {
      v38 = a7;
      std::__inplace_merge<std::_ClassicAlgPolicy,mlir::detail::PDLByteCode::match(mlir::Operation *,mlir::PatternRewriter &,llvm::SmallVectorImpl<mlir::detail::PDLByteCode::MatchResult> &,mlir::detail::PDLByteCodeMutableState &)::$_0 &,mlir::detail::PDLByteCode::MatchResult*>(v12, v19, v31, v25, v15, a6);
      v12 = v31;
      a3 = v72;
    }

    a5 = v37;
    a1 = v12;
    a2 = v16;
    a7 = v38;
    if (!v37)
    {
      return;
    }
  }

  if (a4 <= a5)
  {
    if (a1 == a2)
    {
      return;
    }

    v50 = a3;
    v51 = 0;
    v41 = 0;
    v42 = a6;
    do
    {
      v53 = a1 + v51;
      v54 = (a6 + v51);
      *v54 = *(a1 + v51);
      *(a6 + v51 + 8) = a6 + v51 + 24;
      v54[2] = 0x600000000;
      if (*(a1 + v51 + 16))
      {
        llvm::SmallVectorImpl<unsigned long>::operator=(a6 + v51 + 8, (v53 + 8));
      }

      v55 = v54 + 11;
      v54[9] = v54 + 11;
      v54[10] = 0;
      v56 = (v54 + 9);
      if (*(v53 + 80))
      {
        llvm::SmallVectorImpl<llvm::StringRef>::operator=(v56, (a1 + v51 + 72));
      }

      v57 = (a6 + v51 + 104);
      *v55 = v57;
      *(a6 + v51 + 96) = 0;
      if (*(v53 + 96))
      {
        llvm::SmallVectorImpl<llvm::StringRef>::operator=(v55, (a1 + v51 + 88));
      }

      v52 = *(v53 + 104);
      *(a6 + v51 + 112) = *(v53 + 112);
      *v57 = v52;
      ++v41;
      v51 += 120;
    }

    while (v53 + 120 != a2);
    v63 = a6 + v51;
    v64 = a6;
    while (a2 != v50)
    {
      if (*(v64 + 112) >= *(a2 + 112))
      {
        mlir::detail::PDLByteCode::MatchResult::operator=(a1, v64);
        v64 += 120;
        a1 += 120;
        if (v63 == v64)
        {
          goto LABEL_96;
        }
      }

      else
      {
        mlir::detail::PDLByteCode::MatchResult::operator=(a1, a2);
        a2 += 120;
        a1 += 120;
        if (v63 == v64)
        {
          goto LABEL_96;
        }
      }
    }

    do
    {
      mlir::detail::PDLByteCode::MatchResult::operator=(a1, v64);
      a1 += 120;
      v36 = v63 - 120 == v64;
      v64 += 120;
    }

    while (!v36);
  }

  else
  {
    if (a2 == a3)
    {
      return;
    }

    v40 = 0;
    v41 = 0;
    v42 = a6;
    do
    {
      v44 = a3;
      v45 = (a6 + v40);
      v46 = a2 + v40;
      *v45 = *(a2 + v40);
      *(a6 + v40 + 8) = a6 + v40 + 24;
      v45[2] = 0x600000000;
      if (*(a2 + v40 + 16))
      {
        llvm::SmallVectorImpl<unsigned long>::operator=(a6 + v40 + 8, (v46 + 8));
      }

      v47 = v45 + 11;
      v45[9] = v45 + 11;
      v45[10] = 0;
      v48 = (v45 + 9);
      if (*(v46 + 80))
      {
        llvm::SmallVectorImpl<llvm::StringRef>::operator=(v48, (a2 + v40 + 72));
      }

      v49 = (a6 + v40 + 104);
      *v47 = v49;
      *(a6 + v40 + 96) = 0;
      if (*(v46 + 96))
      {
        llvm::SmallVectorImpl<llvm::StringRef>::operator=(v47, (a2 + v40 + 88));
      }

      v43 = *(v46 + 104);
      *(a6 + v40 + 112) = *(v46 + 112);
      *v49 = v43;
      ++v41;
      v40 += 120;
      a3 = v44;
    }

    while (v46 + 120 != v44);
    v58 = v44 - 120;
    v59 = a6 + v40;
    while (a2 != a1)
    {
      v60 = *(a2 - 8);
      v61 = *(v59 - 8);
      if (v60 >= v61)
      {
        v62 = v59 - 120;
      }

      else
      {
        v62 = a2 - 120;
      }

      if (v60 >= v61)
      {
        v59 -= 120;
      }

      else
      {
        a2 -= 120;
      }

      mlir::detail::PDLByteCode::MatchResult::operator=(v58, v62);
      v58 -= 120;
      if (v59 == a6)
      {
        goto LABEL_96;
      }
    }

    while (v59 != a6)
    {
      v59 -= 120;
      mlir::detail::PDLByteCode::MatchResult::operator=(v58, v59);
      v58 -= 120;
    }
  }

LABEL_96:
  if (v42 && v41)
  {
    v65 = (a6 + 104);
    do
    {
      v66 = *(v65 - 2);
      if (v65 != v66)
      {
        free(v66);
      }

      v67 = *(v65 - 4);
      if (v65 - 2 != v67)
      {
        free(v67);
      }

      v68 = *(v65 - 12);
      if (v65 - 10 != v68)
      {
        free(v68);
      }

      v65 += 15;
      --v41;
    }

    while (v41);
  }
}

void std::swap[abi:nn200100]<mlir::detail::PDLByteCode::MatchResult>(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5[0] = v6;
  v5[1] = 0x600000000;
  if (*(a1 + 16))
  {
    llvm::SmallVectorImpl<unsigned long>::operator=(v5, (a1 + 8));
  }

  v7[0] = v8;
  v7[1] = 0;
  if (*(a1 + 80))
  {
    llvm::SmallVectorImpl<llvm::StringRef>::operator=(v7, (a1 + 72));
  }

  v8[0] = &v9;
  v8[1] = 0;
  if (*(a1 + 96))
  {
    llvm::SmallVectorImpl<llvm::StringRef>::operator=(v8, (a1 + 88));
  }

  v9 = *(a1 + 104);
  v10 = *(a1 + 112);
  mlir::detail::PDLByteCode::MatchResult::operator=(a1, a2);
  mlir::detail::PDLByteCode::MatchResult::operator=(a2, &v4);
  if (v8[0] != &v9)
  {
    free(v8[0]);
  }

  if (v7[0] != v8)
  {
    free(v7[0]);
  }

  if (v5[0] != v6)
  {
    free(v5[0]);
  }
}

uint64_t mlir::detail::PDLByteCode::MatchResult::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  llvm::SmallVectorImpl<unsigned long>::operator=(a1 + 8, (a2 + 8));
  if (a1 != a2)
  {
    v5 = (a2 + 80);
    v4 = *(a2 + 80);
    if (v4)
    {
      v6 = *(a1 + 72);
      if (v6 != (a1 + 88))
      {
        free(v6);
        v4 = *v5;
      }

      *(a1 + 72) = *(a2 + 72);
      v7 = *(a2 + 84);
      *(a1 + 80) = v4;
      *(a1 + 84) = v7;
      *(a2 + 72) = a2 + 88;
      *(a2 + 84) = 0;
      *v5 = 0;
      v9 = (a2 + 96);
      v8 = *(a2 + 96);
      if (v8)
      {
        goto LABEL_6;
      }
    }

    else
    {
      *(a1 + 80) = 0;
      v9 = (a2 + 96);
      v8 = *(a2 + 96);
      if (v8)
      {
LABEL_6:
        v10 = *(a1 + 88);
        if (v10 != (a1 + 104))
        {
          free(v10);
          v8 = *v9;
        }

        *(a1 + 88) = *(a2 + 88);
        v11 = *(a2 + 100);
        *(a1 + 96) = v8;
        *(a1 + 100) = v11;
        *(a2 + 88) = a2 + 104;
        *(a2 + 100) = 0;
        goto LABEL_11;
      }
    }

    v9 = (a1 + 96);
LABEL_11:
    *v9 = 0;
  }

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

void OUTLINED_FUNCTION_2_1()
{

  llvm::SmallVectorBase<unsigned long long>::grow_pod();
}

void anonymous namespace::PDLToPDLInterpPass::~PDLToPDLInterpPass(_anonymous_namespace_::PDLToPDLInterpPass *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x259C63180);
}

void *mlir::impl::ConvertPDLToPDLInterpBase<anonymous namespace::PDLToPDLInterpPass>::getDependentDialects(int a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3[0] = &unk_2868671A8;
  v4 = v3;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::pdl_interp::PDLInterpDialect,void>::id, "pdl_interp", 0xAuLL, v3);
  result = v4;
  if (v4 == v3)
  {
    return (*(*v4 + 32))(v4);
  }

  if (v4)
  {
    return (*(*v4 + 40))();
  }

  return result;
}

void anonymous namespace::PDLToPDLInterpPass::runOnOperation(_anonymous_namespace_::PDLToPDLInterpPass *this)
{
  v14[37] = *MEMORY[0x277D85DE8];
  v1 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  v2 = *(v1 + 64 + 16 * ((*(v1 + 44) >> 23) & 1) + ((*(v1 + 44) >> 21) & 0x7F8) + 32 * *(v1 + 40) + 8);
  if (v2)
  {
    v3 = (v2 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v3 + 5);
  Parent = mlir::Block::getParent(v3);
  Context = mlir::Region::getContext(Parent);
  v9[2] = v3;
  v9[3] = v4;
  v7 = *(v1 + 24);
  v9[0] = Context;
  v9[1] = 0;
  v14[0] = "matcher";
  v14[1] = 7;
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id);
  mlir::TypeRange::TypeRange(v12, &SingletonImpl, 1uLL);
  mlir::TypeRange::TypeRange(v13, 0, 0);
  FunctionType = mlir::Builder::getFunctionType(v9, v12[0], v12[1], v13[0], v13[1]);
  mlir::OpBuilder::create<mlir::pdl_interp::FuncOp,llvm::StringRef,mlir::FunctionType,std::nullopt_t const&>(v9, v7, v14, &FunctionType);
}

void sub_256632A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (STACK[0x218] != a10)
  {
    free(STACK[0x218]);
  }

  llvm::deallocate_buffer(STACK[0x200], (8 * LODWORD(STACK[0x210])));
}

void sub_256632A90(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, llvm *a56, uint64_t a57, unsigned int a58, uint64_t a59, void *a60)
{
  if (a60 != a11)
  {
    free(a60);
  }

  llvm::deallocate_buffer(a56, (16 * a58));
}

uint64_t std::__function::__func<void mlir::DialectRegistry::insert<mlir::pdl_interp::PDLInterpDialect>(void)::{lambda(mlir::MLIRContext *)#1},std::allocator<void mlir::DialectRegistry::insert<mlir::pdl_interp::PDLInterpDialect>(void)::{lambda(mlir::MLIRContext *)#1}>,mlir::Dialect * ()(mlir::MLIRContext *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir15DialectRegistry6insertINS_10pdl_interp16PDLInterpDialectEEEvvEUlPNS_11MLIRContextEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir15DialectRegistry6insertINS_10pdl_interp16PDLInterpDialectEEEvvEUlPNS_11MLIRContextEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir15DialectRegistry6insertINS_10pdl_interp16PDLInterpDialectEEEvvEUlPNS_11MLIRContextEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir15DialectRegistry6insertINS_10pdl_interp16PDLInterpDialectEEEvvEUlPNS_11MLIRContextEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void mlir::OpBuilder::create<mlir::pdl_interp::FuncOp,llvm::StringRef,mlir::FunctionType,std::nullopt_t const&>(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v14[38] = *MEMORY[0x277D85DE8];
  v11 = a2;
  Context = mlir::Attribute::getContext(&v11);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::FuncOp,void>::id, Context);
  if (v10)
  {
    mlir::OperationState::OperationState(v14, a2, v9);
    mlir::pdl_interp::FuncOp::build(a1, v14, *a3, *(a3 + 8), *a4, 0, 0);
  }

  mlir::OpBuilder::create<mlir::pdl_interp::FuncOp,llvm::StringRef,mlir::FunctionType,std::nullopt_t const&>(v14, v13, v12);
}

void mlir::OpBuilder::create<mlir::ModuleOp,llvm::StringRef>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v13[38] = *MEMORY[0x277D85DE8];
  v9 = a2;
  Context = mlir::Attribute::getContext(&v9);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id, Context);
  if (v8)
  {
    mlir::OperationState::OperationState(v13, a2, v7);
    v11 = *a3;
    v12 = 1;
    mlir::ModuleOp::build(a1, v13);
  }

  mlir::OpBuilder::create<mlir::ModuleOp,llvm::StringRef>(v13, &v11, v10);
}

mlir::Block *anonymous namespace::PatternLowering::generateMatcher(int32x2_t *this, mlir::pdl_to_pdl_interp::MatcherNode *a2, mlir::Region *a3, mlir::Block *a4)
{
  v93 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    operator new();
  }

  v8 = this[14];
  v77[0] = this + 11;
  v77[1] = v8;
  this[14] = v77;
  v77[2] = 0;
  v9 = *(a2 + 5);
  {
    if (v9 != mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ExitNode,void>::resolveTypeID(void)::id)
    {
      goto LABEL_5;
    }

LABEL_77:
    this[2] = a4;
    this[3] = (a4 + 32);
    mlir::OpBuilder::create<mlir::pdl_interp::FinalizeOp>(this, *(*&this[4] + 24));
    goto LABEL_109;
  }

  if (v9 == mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ExitNode,void>::resolveTypeID(void)::id)
  {
    goto LABEL_77;
  }

LABEL_5:
  v10 = *(a2 + 3);
  if (v10)
  {
    v12 = this[16].u32[0];
    if (v12 >= this[16].i32[1])
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*&this[15] + 8 * v12) = Matcher;
    ++this[16].i32[0];
    v76 = a4;
    v13 = *(a2 + 1);
    if (v13)
    {
      goto LABEL_8;
    }

LABEL_12:
    v15 = 0;
    v75 = 0;
    goto LABEL_17;
  }

  Matcher = *(*&this[15] + 8 * this[16].u32[0] - 8);
  v76 = a4;
  v13 = *(a2 + 1);
  if (!v13)
  {
    goto LABEL_12;
  }

LABEL_8:
  v75 = ValueAt;
  if (ValueAt && *(*(*(ValueAt + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::try_emplace<llvm::detail::DenseSetEmpty&>(&this[28], &v75, __src);
    if (v86[0] == 1)
    {
      v16 = this[32].u32[0];
      if (v16 >= this[32].i32[1])
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*&this[31] + 8 * v16) = v75;
      ++this[32].i32[0];
    }

    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

LABEL_17:
  v73 = a2;
  v74 = 0;
  v17 = *(a2 + 5);
  {
    if (v17 != mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::BoolNode,void>::resolveTypeID(void)::id)
    {
      goto LABEL_19;
    }

LABEL_79:
    *&v78 = v75;
    mlir::Value::getLoc(&v78);
    v49 = *(a2 + 2);
    mlir::Block::getParent(v76);
    __src[0] = v86;
    __src[1] = 0x600000000;
    if (*v49 == 21)
    {
      v51 = *(v49 + 32);
      if (v51)
      {
        v52 = *(v49 + 24);
        v53 = 8 * v51;
        do
        {
          if (LODWORD(__src[1]) >= HIDWORD(__src[1]))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(__src[0] + LODWORD(__src[1])) = v54;
          ++LODWORD(__src[1]);
          ++v52;
          v53 -= 8;
        }

        while (v53);
      }
    }

    else if (*v49 == 20)
    {
      LODWORD(__src[1]) = 0;
      if (!HIDWORD(__src[1]))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *__src[0] = v50;
      ++LODWORD(__src[1]);
    }

    operator new();
  }

  if (v17 == mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::BoolNode,void>::resolveTypeID(void)::id)
  {
    goto LABEL_79;
  }

LABEL_19:
  v18 = *(v73 + 5);
  {
    if (v18 != mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::SwitchNode,void>::resolveTypeID(void)::id)
    {
      goto LABEL_93;
    }
  }

  else
  {
    if (v18 != mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::SwitchNode,void>::resolveTypeID(void)::id)
    {
      goto LABEL_93;
    }
  }

  v80 = v73;
  v81 = v75;
  v19 = *(v73 + 2);
  v71 = v76;
  Parent = mlir::Block::getParent(v76);
  v79 = *(*&this[15] + 8 * this[16].u32[0] - 8);
  if ((*v19 & 0xFFFFFFFD) != 0x10)
  {
    *v86 = 0;
    *__src = 0u;
    v87 = v89;
    v88 = 0;
    v21 = *(v80 + 20);
    if (v21)
    {
      v22 = (*(v80 + 9) + 8);
      v23 = 16 * v21;
      do
      {
        *&v78 = *(v22 - 1);
        *(&v78 + 1) = v24;
        v83 = v78;
        v84 = 0;
        llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::try_emplace<unsigned int>(__src, &v83, &v84, &v90);
        if (v92[0] == 1)
        {
          v25 = v88;
          v90[2] = v88;
          v82 = (&v78 + 8);
          v83 = &v78;
          if (v25 < HIDWORD(v88))
          {
            *(v87 + v25) = v78;
            LODWORD(v88) = v25 + 1;
          }

          else
          {
            llvm::SmallVectorTemplateBase<std::pair<mlir::pdl_to_pdl_interp::Qualifier *,mlir::Block *>,true>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<mlir::pdl_to_pdl_interp::Qualifier *&&>,std::tuple<mlir::Block *&&>>(&v87, &std::piecewise_construct, &v83, &v82);
          }
        }

        v22 += 2;
        v23 -= 16;
      }

      while (v23);
    }

    this[2] = v71;
    this[3] = (v71 + 32);
    v26 = *v19;
    if (*v19 <= 14)
    {
      if (v26 == 13)
      {
        createSwitchOp<mlir::pdl_interp::SwitchOperationNameOp,mlir::pdl_to_pdl_interp::OperationNameAnswer,mlir::OperationName>(v81, v79, this, __src);
      }

      else if (*(*(*(v81 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
      {
        createSwitchOp<mlir::pdl_interp::SwitchTypesOp,mlir::pdl_to_pdl_interp::TypeAnswer,mlir::Attribute>(v81, v79, this, __src);
      }

      else
      {
        createSwitchOp<mlir::pdl_interp::SwitchTypeOp,mlir::pdl_to_pdl_interp::TypeAnswer,mlir::Attribute>(v81, v79, this, __src);
      }
    }

    else if (v26 == 15)
    {
      createSwitchOp<mlir::pdl_interp::SwitchAttributeOp,mlir::pdl_to_pdl_interp::AttributeAnswer,mlir::Attribute>(v81, v79, this, __src);
    }

    else if (v26 == 17)
    {
      createSwitchOp<mlir::pdl_interp::SwitchOperandCountOp,mlir::pdl_to_pdl_interp::UnsignedAnswer,int>(v81, v79, this, __src);
    }

    else
    {
      createSwitchOp<mlir::pdl_interp::SwitchResultCountOp,mlir::pdl_to_pdl_interp::UnsignedAnswer,int>(v81, v79, this, __src);
    }

    if (v87 != v89)
    {
      free(v87);
    }

    llvm::deallocate_buffer(__src[0], (16 * *v86));
  }

  v20 = *(v80 + 20);
  __src[0] = v86;
  __src[1] = 0x1000000000;
  if (v20 >= 0x11)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (!v20)
  {
    v35 = 0;
    v27 = v86;
    goto LABEL_43;
  }

  v27 = v86;
  if (v20 >= 8)
  {
    v28 = v20 & 0x18;
    v29 = &v86[4 * (v20 & 0xFFFFFFF8)];
    v30 = &v88;
    v31 = xmmword_257369620;
    v32.i64[0] = 0x400000004;
    v32.i64[1] = 0x400000004;
    v33.i64[0] = 0x800000008;
    v33.i64[1] = 0x800000008;
    v34 = v20 & 0xFFFFFFF8;
    do
    {
      v30[-1] = v31;
      *v30 = vaddq_s32(v31, v32);
      v31 = vaddq_s32(v31, v33);
      v30 += 2;
      v34 -= 8;
    }

    while (v34);
    if (v28 == v20)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v28 = 0;
    v29 = v86;
  }

  do
  {
    *v29 = v28;
    v29 += 4;
    ++v28;
  }

  while (v20 != v28);
LABEL_42:
  v35 = __src[1];
LABEL_43:
  v90 = v92;
  v91 = 0xC00000000;
  v36 = v35 + v20;
  LODWORD(__src[1]) = v36;
  if (v36)
  {
    if (v36 >= 0xD)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(v90, v86, 4 * v36);
    v27 = __src[0];
    LODWORD(v91) = v36;
    LODWORD(__src[1]) = 0;
  }

  if (v27 != v86)
  {
    free(v27);
    v36 = v91;
  }

  __src[0] = &v80;
  v37 = 126 - 2 * __clz(v36);
  if (v36)
  {
    v38 = v37;
  }

  else
  {
    v38 = 0;
  }

  v39 = this[16].u32[0];
  if (v39 >= this[16].i32[1])
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*&this[15] + 8 * v39) = v79;
  ++this[16].i32[0];
  mlir::Value::getLoc(&v81);
  if (v91)
  {
    v83 = v40;
    mlir::TypeRange::TypeRange(__src, 0, 0);
    mlir::OpBuilder::createBlock(this, v40);
  }

  v41 = this[16].u32[0];
  v42 = *(*&this[15] + 8 * v41 - 8);
  this[16].i32[0] = v41 - 1;
  v43 = (v42 + 32);
  if (*(v42 + 4) != (v42 + 32) && v42 != v71)
  {
    v44 = (v71 + 32);
    v45 = *(v42 + 5);
    llvm::ilist_traits<mlir::Operation>::transferNodesFromList(v71 + 32, v42 + 32, v45, v42 + 32);
    if (v45 != v43)
    {
      v46 = *v43;
      v47 = *v45;
      *(v47 + 8) = v43;
      *v43 = v47;
      v48 = *v44;
      *(v46 + 8) = v44;
      *v45 = v48;
      *(v48 + 8) = v45;
      *v44 = v46;
    }
  }

  mlir::Block::erase(v42);
  if (v90 != v92)
  {
    free(v90);
  }

  v74 = 1;
LABEL_93:
  __src[0] = this;
  __src[1] = &v76;
  v55 = *&this[15] - 8;
  v56 = this[16].u32[0];
  if (*(v55 + 8 * v56) != Matcher)
  {
    do
    {
      LODWORD(v56) = v56 - 1;
    }

    while (*(v55 + 8 * v56) != Matcher);
    this[16].i32[0] = v56;
  }

  if (*(a2 + 3))
  {
    this[16].i32[0] = v56 - 1;
  }

  if (v15)
  {
    v57 = this[30].i32[0];
    if (v57)
    {
      v58 = this[28];
      v59 = 0x9DDFEA08EB382D69 * ((8 * v75 - 0xAE502812AA7333) ^ HIDWORD(v75));
      v60 = 0x9DDFEA08EB382D69 * (HIDWORD(v75) ^ (v59 >> 47) ^ v59);
      LODWORD(v59) = -348639895 * ((v60 >> 47) ^ v60);
      v61 = v57 - 1;
      v62 = v59 & (v57 - 1);
      v63 = *(*&v58 + 8 * v62);
      if (v75 == v63)
      {
LABEL_101:
        *(*&v58 + 8 * v62) = -8192;
        this[29] = vadd_s32(this[29], 0x1FFFFFFFFLL);
        v64 = this[31];
        v65 = this[32].u32[0];
        v66 = &v64[v65];
        if (v65)
        {
          v67 = 8 * v65;
          while (*v64 != v75)
          {
            ++v64;
            v67 -= 8;
            if (!v67)
            {
              v64 = v66;
              break;
            }
          }
        }

        if (v66 != v64 + 1)
        {
          memmove(v64, v64 + 1, v66 - (v64 + 1));
          LODWORD(v65) = this[32].i32[0];
        }

        this[32].i32[0] = v65 - 1;
      }

      else
      {
        v69 = 1;
        while (v63 != -4096)
        {
          v70 = v62 + v69++;
          v62 = v70 & v61;
          v63 = *(*&v58 + 8 * v62);
          if (v75 == v63)
          {
            goto LABEL_101;
          }
        }
      }
    }
  }

LABEL_109:
  llvm::ScopedHashTableScope<mlir::pdl_to_pdl_interp::Position *,mlir::Value,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::MallocAllocator>::~ScopedHashTableScope(v77);
  return a4;
}

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributePosition>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::AttributePosition]";
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

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributeLiteralPosition>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::AttributeLiteralPosition]";
  v6 = 99;
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

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::ConstraintPosition>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::ConstraintPosition]";
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

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::ForEachPosition>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::ForEachPosition]";
  v6 = 90;
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

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandPosition>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::OperandPosition]";
  v6 = 90;
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

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandGroupPosition>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::OperandGroupPosition]";
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

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::OperationPosition>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::OperationPosition]";
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

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultPosition>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::ResultPosition]";
  v6 = 89;
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

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultGroupPosition>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::ResultGroupPosition]";
  v6 = 94;
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

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::TypePosition>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::TypePosition]";
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

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::TypeLiteralPosition>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::TypeLiteralPosition]";
  v6 = 94;
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

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::UsersPosition>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::UsersPosition]";
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

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributeAnswer>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::AttributeAnswer]";
  v6 = 90;
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

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::OperationNameAnswer>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::OperationNameAnswer]";
  v6 = 94;
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

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::TypeAnswer>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::TypeAnswer]";
  v6 = 85;
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

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::UnsignedAnswer>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::UnsignedAnswer]";
  v6 = 89;
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::FalseAnswer>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::FalseAnswer *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), void *a2)
{
  a2[10] += 8;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v3 = Slow + 1;
  if (*a2)
  {
    v4 = v3 > a2[1];
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 8, 8, 3);
    *Slow = 23;
    v5 = *a1;
    v6 = **a1;
    if (!v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v3;
  *Slow = 23;
  v5 = *a1;
  v6 = **a1;
  if (v6)
  {
LABEL_6:
    v6(v5[1], Slow);
  }

  return Slow;
}

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::FalseAnswer>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::FalseAnswer]";
  v6 = 86;
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::TrueAnswer>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::TrueAnswer *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), void *a2)
{
  a2[10] += 8;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v3 = Slow + 1;
  if (*a2)
  {
    v4 = v3 > a2[1];
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 8, 8, 3);
    *Slow = 25;
    v5 = *a1;
    v6 = **a1;
    if (!v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v3;
  *Slow = 25;
  v5 = *a1;
  v6 = **a1;
  if (v6)
  {
LABEL_6:
    v6(v5[1], Slow);
  }

  return Slow;
}

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::TrueAnswer>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::TrueAnswer]";
  v6 = 85;
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

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::ConstraintQuestion>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::ConstraintQuestion]";
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

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::EqualToQuestion>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::EqualToQuestion]";
  v6 = 90;
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::AttributeQuestion>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::AttributeQuestion *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), void *a2)
{
  a2[10] += 8;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v3 = Slow + 1;
  if (*a2)
  {
    v4 = v3 > a2[1];
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 8, 8, 3);
    *Slow = 15;
    v5 = *a1;
    v6 = **a1;
    if (!v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v3;
  *Slow = 15;
  v5 = *a1;
  v6 = **a1;
  if (v6)
  {
LABEL_6:
    v6(v5[1], Slow);
  }

  return Slow;
}

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributeQuestion>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::AttributeQuestion]";
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::IsNotNullQuestion>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::IsNotNullQuestion *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), void *a2)
{
  a2[10] += 8;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v3 = Slow + 1;
  if (*a2)
  {
    v4 = v3 > a2[1];
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 8, 8, 3);
    *Slow = 12;
    v5 = *a1;
    v6 = **a1;
    if (!v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v3;
  *Slow = 12;
  v5 = *a1;
  v6 = **a1;
  if (v6)
  {
LABEL_6:
    v6(v5[1], Slow);
  }

  return Slow;
}

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::IsNotNullQuestion>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::IsNotNullQuestion]";
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::OperandCountQuestion>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperandCountQuestion *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), void *a2)
{
  a2[10] += 8;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v3 = Slow + 1;
  if (*a2)
  {
    v4 = v3 > a2[1];
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 8, 8, 3);
    *Slow = 17;
    v5 = *a1;
    v6 = **a1;
    if (!v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v3;
  *Slow = 17;
  v5 = *a1;
  v6 = **a1;
  if (v6)
  {
LABEL_6:
    v6(v5[1], Slow);
  }

  return Slow;
}

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandCountQuestion>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::OperandCountQuestion]";
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::OperandCountAtLeastQuestion>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperandCountAtLeastQuestion *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), void *a2)
{
  a2[10] += 8;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v3 = Slow + 1;
  if (*a2)
  {
    v4 = v3 > a2[1];
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 8, 8, 3);
    *Slow = 16;
    v5 = *a1;
    v6 = **a1;
    if (!v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v3;
  *Slow = 16;
  v5 = *a1;
  v6 = **a1;
  if (v6)
  {
LABEL_6:
    v6(v5[1], Slow);
  }

  return Slow;
}

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandCountAtLeastQuestion>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::OperandCountAtLeastQuestion]";
  v6 = 102;
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::OperationNameQuestion>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperationNameQuestion *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), void *a2)
{
  a2[10] += 8;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v3 = Slow + 1;
  if (*a2)
  {
    v4 = v3 > a2[1];
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 8, 8, 3);
    *Slow = 13;
    v5 = *a1;
    v6 = **a1;
    if (!v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v3;
  *Slow = 13;
  v5 = *a1;
  v6 = **a1;
  if (v6)
  {
LABEL_6:
    v6(v5[1], Slow);
  }

  return Slow;
}

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::OperationNameQuestion>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::OperationNameQuestion]";
  v6 = 96;
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::ResultCountQuestion>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ResultCountQuestion *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), void *a2)
{
  a2[10] += 8;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v3 = Slow + 1;
  if (*a2)
  {
    v4 = v3 > a2[1];
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 8, 8, 3);
    *Slow = 19;
    v5 = *a1;
    v6 = **a1;
    if (!v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v3;
  *Slow = 19;
  v5 = *a1;
  v6 = **a1;
  if (v6)
  {
LABEL_6:
    v6(v5[1], Slow);
  }

  return Slow;
}

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultCountQuestion>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::ResultCountQuestion]";
  v6 = 94;
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::ResultCountAtLeastQuestion>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ResultCountAtLeastQuestion *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), void *a2)
{
  a2[10] += 8;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v3 = Slow + 1;
  if (*a2)
  {
    v4 = v3 > a2[1];
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 8, 8, 3);
    *Slow = 18;
    v5 = *a1;
    v6 = **a1;
    if (!v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v3;
  *Slow = 18;
  v5 = *a1;
  v6 = **a1;
  if (v6)
  {
LABEL_6:
    v6(v5[1], Slow);
  }

  return Slow;
}

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultCountAtLeastQuestion>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::ResultCountAtLeastQuestion]";
  v6 = 101;
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::TypeQuestion>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::TypeQuestion *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), void *a2)
{
  a2[10] += 8;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v3 = Slow + 1;
  if (*a2)
  {
    v4 = v3 > a2[1];
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 8, 8, 3);
    *Slow = 14;
    v5 = *a1;
    v6 = **a1;
    if (!v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v3;
  *Slow = 14;
  v5 = *a1;
  v6 = **a1;
  if (v6)
  {
LABEL_6:
    v6(v5[1], Slow);
  }

  return Slow;
}

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::TypeQuestion>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::TypeQuestion]";
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

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationPosition,decltype(nullptr),int>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v18 = *MEMORY[0x277D85DE8];
  {
    v11 = a3;
    v12 = a1;
    v9 = a2;
    v10 = a5;
    mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationPosition,decltype(nullptr),int>();
    a2 = v9;
    a5 = v10;
    a3 = v11;
    a1 = v12;
  }

  v16[0] = a2;
  v16[1] = a3;
  v5 = *a5;
  v14 = 0;
  v15 = v5;
  DWORD1(v17) = 0;
  DWORD2(v17) = v5;
  v6 = __ROR8__(*(&v17 + 4) + 12, 12);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ 0xFF51AFD7ED558CCDLL)));
  v13 = &v14;
  *&v17 = &v14;
  *(&v17 + 1) = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperationPosition,void>::resolveTypeID(void)::id, -348639895 * ((v7 >> 47) ^ v7), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::OperationPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationPosition,decltype(nullptr),int>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperationPosition *)>,mlir::TypeID,decltype(nullptr),int &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::OperationPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationPosition,decltype(nullptr),int>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperationPosition *)>,mlir::TypeID,decltype(nullptr),int &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v17);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::OperationPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationPosition,decltype(nullptr),int>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperationPosition *)>,mlir::TypeID,decltype(nullptr),int &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 40;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 40;
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
    v9 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 40, 40, 3);
    a1 = v9;
  }

  else
  {
    *a2 = v4;
  }

  *(Slow + 16) = 0;
  *Slow = &unk_286867278;
  *(Slow + 8) = 0;
  *(Slow + 24) = *v2;
  v6 = *v2;
  *Slow = &unk_286867228;
  *(Slow + 8) = v6;
  v7 = *(a1 + 8);
  if (*v7)
  {
    (*v7)(*(v7 + 8), Slow);
  }

  return Slow;
}

void mlir::pdl_to_pdl_interp::OperationPosition::~OperationPosition(mlir::pdl_to_pdl_interp::OperationPosition *this)
{
  mlir::pdl_to_pdl_interp::Position::~Position(this);

  JUMPOUT(0x259C63180);
}

void mlir::pdl_to_pdl_interp::PredicateBase<mlir::pdl_to_pdl_interp::OperationPosition,mlir::pdl_to_pdl_interp::Position,std::pair<mlir::pdl_to_pdl_interp::Position*,unsigned int>,(mlir::pdl_to_pdl_interp::Predicates::Kind)0>::~PredicateBase(mlir::pdl_to_pdl_interp::Position *a1)
{
  mlir::pdl_to_pdl_interp::Position::~Position(a1);

  JUMPOUT(0x259C63180);
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::FinalizeOp>(mlir::pdl_interp::FinalizeOp *a1, uint64_t a2)
{
  v14[38] = *MEMORY[0x277D85DE8];
  v11 = a2;
  Context = mlir::Attribute::getContext(&v11);
  v5 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::FinalizeOp,void>::id, Context);
  if ((v6 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::FinalizeOp>(v14, v13, v12);
  }

  mlir::OperationState::OperationState(v14, a2, v5);
  mlir::pdl_interp::FinalizeOp::build(a1, v14, v7);
  v8 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v8 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::FinalizeOp,void>::id)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  mlir::OperationState::~OperationState(v14);
  return v9;
}

uint64_t anonymous namespace::PatternLowering::getValueAt(_anonymous_namespace_::PatternLowering *this, mlir::Block **a2, mlir::pdl_to_pdl_interp::Position *a3)
{
  v56[2] = *MEMORY[0x277D85DE8];
  v54 = a3;
  v7 = this + 88;
  v6 = *(this + 11);
  v8 = *(this + 26);
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = (v8 - 1) & ((a3 >> 4) ^ (a3 >> 9));
  v10 = *(v6 + 16 * v9);
  if (v10 != a3)
  {
    v49 = 1;
    while (v10 != -4096)
    {
      v50 = v9 + v49++;
      v9 = v50 & (v8 - 1);
      v10 = *(v6 + 16 * v9);
      if (v10 == a3)
      {
        goto LABEL_3;
      }
    }

    goto LABEL_4;
  }

LABEL_3:
  if (v9 == v8)
  {
LABEL_4:
    v55 = 0;
    goto LABEL_5;
  }

  result = *(*(v6 + 16 * v9 + 8) + 24);
  v55 = result;
  if (result)
  {
    return result;
  }

LABEL_5:
  ValueAt = 0;
  v11 = *(a3 + 1);
  {
    Loc = mlir::Value::getLoc(&ValueAt);
  }

  else
  {
    Loc = mlir::Builder::getUnknownLoc(this, a2);
  }

  v13 = Loc;
  v14 = *a2 + 32;
  *(this + 2) = *a2;
  *(this + 3) = v14;
  v15 = *(a3 + 4);
  if (v15 > 5)
  {
    if (v15 > 8)
    {
      if (v15 == 9)
      {
        v34 = *(a3 + 3);
        if (*(*v34 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
        {
          v35 = *(a3 + 3);
        }

        else
        {
          v35 = 0;
        }

        v56[0] = v35;
        if (v35)
        {
          v17 = mlir::OpBuilder::create<mlir::pdl_interp::CreateTypeOp,mlir::TypeAttr &>(this, Loc, v56);
        }

        else
        {
          v52 = v34;
          v17 = mlir::OpBuilder::create<mlir::pdl_interp::CreateTypesOp,mlir::ArrayAttr>(this, Loc, &v52);
        }
      }

      else
      {
        if (v15 != 10)
        {
          LOBYTE(v56[0]) = 1;
          mlir::OpBuilder::create<mlir::pdl_interp::ForEachOp,mlir::Value &,mlir::Block *&,BOOL>(this, Loc, &ValueAt);
        }

        v26 = ValueAt;
        if (*(*(*(ValueAt + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id && *(a3 + 32) == 1)
        {
          LODWORD(v56[0]) = 0;
          v26 = mlir::OpBuilder::create<mlir::pdl_interp::ExtractOp,mlir::Value &,int>(this, Loc, &ValueAt, v56) - 16;
        }

        v55 = v26;
        v17 = mlir::OpBuilder::create<mlir::pdl_interp::GetUsersOp,mlir::Value &>(this, v13, &v55);
      }
    }

    else if (v15 == 6)
    {
      TypeUniquer = mlir::MLIRContext::getTypeUniquer(*this);
      SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
      if (*(a3 + 40) == 1)
      {
        SingletonImpl = mlir::pdl::RangeType::get(SingletonImpl);
      }

      v56[0] = SingletonImpl;
      v30 = *(a3 + 4);
      LODWORD(v52) = v30;
      BYTE4(v52) = BYTE4(v30);
      v17 = mlir::OpBuilder::create<mlir::pdl_interp::GetResultsOp,mlir::Type,mlir::Value &,std::optional<unsigned int>>(this, v13, v56, &ValueAt, &v52);
    }

    else if (v15 == 7)
    {
      if (*(*(*(ValueAt + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id)
      {
        v17 = mlir::OpBuilder::create<mlir::pdl_interp::GetAttributeTypeOp,mlir::Value &>(this, Loc, &ValueAt);
      }

      else
      {
        v17 = mlir::OpBuilder::create<mlir::pdl_interp::GetValueTypeOp,mlir::Value &>(this, Loc, &ValueAt);
      }
    }

    else
    {
      v17 = mlir::OpBuilder::create<mlir::pdl_interp::CreateAttributeOp,mlir::Attribute const&>(this, Loc, a3 + 3);
    }

    goto LABEL_59;
  }

  if (v15 > 2)
  {
    if (v15 == 3)
    {
      v31 = mlir::MLIRContext::getTypeUniquer(*this);
      v32 = mlir::StorageUniquer::getSingletonImpl(v31, &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id);
      v51 = *(a3 + 4);
      v52 = v32;
      v56[0] = mlir::StringAttr::getValue(&v51);
      v56[1] = v33;
      v17 = mlir::OpBuilder::create<mlir::pdl_interp::GetAttributeOp,mlir::pdl::AttributeType,mlir::Value &,llvm::StringRef>(this, v13, &v52, &ValueAt, v56);
      goto LABEL_59;
    }

    if (v15 != 4)
    {
      v39 = mlir::MLIRContext::getTypeUniquer(*this);
      v56[0] = mlir::StorageUniquer::getSingletonImpl(v39, &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
      LODWORD(v52) = *(a3 + 8);
      v17 = mlir::OpBuilder::create<mlir::pdl_interp::GetResultOp,mlir::pdl::ValueType,mlir::Value &,unsigned int>(this, v13, v56, &ValueAt, &v52);
      goto LABEL_59;
    }

    v19 = *(this + 34);
    v20 = *(this + 72);
    if (v20)
    {
      v21 = *(a3 + 3);
      v22 = ((v21 >> 4) ^ (v21 >> 9)) & (v20 - 1);
      v23 = *(v19 + 16 * v22);
      if (v23 == v21)
      {
        goto LABEL_54;
      }

      v24 = 1;
      while (v23 != -4096)
      {
        v25 = v22 + v24++;
        v22 = v25 & (v20 - 1);
        v23 = *(v19 + 16 * v22);
        if (v23 == v21)
        {
          goto LABEL_54;
        }
      }
    }

    v22 = *(this + 72);
LABEL_54:
    v41 = *(v19 + 16 * v22 + 8);
    v42 = *(a3 + 8);
    if (v42 > 5)
    {
      v40 = v41 - 24 * (v42 - 5) - 96;
    }

    else
    {
      v40 = v41 - 16 * v42 - 16;
    }

    goto LABEL_60;
  }

  if (v15)
  {
    if (v15 == 1)
    {
      v16 = mlir::MLIRContext::getTypeUniquer(*this);
      v56[0] = mlir::StorageUniquer::getSingletonImpl(v16, &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
      LODWORD(v52) = *(a3 + 8);
      v17 = mlir::OpBuilder::create<mlir::pdl_interp::GetOperandOp,mlir::pdl::ValueType,mlir::Value &,unsigned int>(this, v13, v56, &ValueAt, &v52);
    }

    else
    {
      v36 = mlir::MLIRContext::getTypeUniquer(*this);
      v37 = mlir::StorageUniquer::getSingletonImpl(v36, &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
      if (*(a3 + 40) == 1)
      {
        v37 = mlir::pdl::RangeType::get(v37);
      }

      v56[0] = v37;
      v38 = *(a3 + 4);
      LODWORD(v52) = v38;
      BYTE4(v52) = BYTE4(v38);
      v17 = mlir::OpBuilder::create<mlir::pdl_interp::GetOperandsOp,mlir::Type,mlir::Value &,std::optional<unsigned int>>(this, v13, v56, &ValueAt, &v52);
    }

    goto LABEL_59;
  }

  if (mlir::pdl_to_pdl_interp::OperationPosition::isOperandDefiningOp(a3))
  {
    v27 = mlir::MLIRContext::getTypeUniquer(*this);
    v56[0] = mlir::StorageUniquer::getSingletonImpl(v27, &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id);
    v17 = mlir::OpBuilder::create<mlir::pdl_interp::GetDefiningOpOp,mlir::pdl::OperationType,mlir::Value &>(this, v13, v56, &ValueAt);
LABEL_59:
    v40 = v17 - 16;
    goto LABEL_60;
  }

  v40 = ValueAt;
LABEL_60:
  v55 = v40;
  v43 = *(this + 14);
  v44 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](v7, &v54);
  v45 = *(v43 + 16);
  v46 = *v44;
  buffer = llvm::allocate_buffer(0x20uLL, 8uLL);
  v48 = v55;
  buffer[2] = v54;
  buffer[3] = v48;
  *buffer = v45;
  buffer[1] = v46;
  *v44 = buffer;
  *(v43 + 16) = buffer;
  return v55;
}

_BYTE *llvm::detail::TypeSwitchBase<llvm::TypeSwitch<mlir::pdl_to_pdl_interp::MatcherNode *,void>,mlir::pdl_to_pdl_interp::MatcherNode *>::Case<anonymous namespace::PatternLowering::generateMatcher(mlir::pdl_to_pdl_interp::MatcherNode&,mlir::Region &,mlir::Block *)::$_1>(_BYTE *result, uint64_t *a2)
{
  v17[26] = *MEMORY[0x277D85DE8];
  if ((result[8] & 1) == 0)
  {
    v2 = *result;
    v3 = *(*result + 40);
    {
      if (v3 == mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::SuccessNode,void>::resolveTypeID(void)::id)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v12 = result;
      v13 = a2;
      a2 = v13;
      result = v12;
      if (v3 == mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::SuccessNode,void>::resolveTypeID(void)::id)
      {
LABEL_4:
        v4 = *a2;
        v5 = *(v2 + 48);
        v6 = *(*a2 + 40);
        v8 = *(v6 + 40);
        v7 = *(v6 + 44);
        v15[10] = &v16;
        v15[11] = 0x800000000;
        v9 = *(((v6 + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * v8 + 8);
        if (v9)
        {
          v10 = v9 - 8;
        }

        else
        {
          v10 = 0;
        }

        *(v4 + 16) = v10;
        *(v4 + 24) = v10 + 32;
        v11 = *(v5 + 24);
        mlir::TypeRange::TypeRange(v17, 0, 0);
        mlir::TypeRange::TypeRange(v15, 0, 0);
        v14[0] = mlir::Builder::getFunctionType(v4, v17[0], v17[1], v15[0], v15[1]);
        mlir::OpBuilder::create<mlir::pdl_interp::FuncOp,char const(&)[23],mlir::FunctionType>(v4, v11, "pdl_generated_rewriter", v14);
      }
    }
  }

  return result;
}

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::ExitNode>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::ExitNode]";
  v6 = 83;
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

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::GetDefiningOpOp,mlir::pdl::OperationType,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetDefiningOpOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::GetDefiningOpOp,mlir::pdl::OperationType,mlir::Value &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::pdl_interp::GetDefiningOpOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetDefiningOpOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::ExtractOp,mlir::Value &,int>(uint64_t **a1, uint64_t a2, uint64_t *a3, unsigned int *a4)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::ExtractOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::ExtractOp,mlir::Value &,int>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::pdl_interp::ExtractOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::ExtractOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::GetUsersOp,mlir::Value &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x277D85DE8];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetUsersOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::GetUsersOp,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::pdl_interp::GetUsersOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetUsersOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

void mlir::OpBuilder::create<mlir::pdl_interp::ForEachOp,mlir::Value &,mlir::Block *&,BOOL>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v12[38] = *MEMORY[0x277D85DE8];
  v9 = a2;
  Context = mlir::Attribute::getContext(&v9);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::ForEachOp,void>::id, Context);
  if (v8)
  {
    mlir::OperationState::OperationState(v12, a2, v7);
    mlir::pdl_interp::ForEachOp::build(a1, v12, *a3);
  }

  mlir::OpBuilder::create<mlir::pdl_interp::ForEachOp,mlir::Value &,mlir::Block *&,BOOL>(v12, v11, v10);
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::ContinueOp>(mlir::pdl_interp::ContinueOp *a1, uint64_t a2)
{
  v14[38] = *MEMORY[0x277D85DE8];
  v11 = a2;
  Context = mlir::Attribute::getContext(&v11);
  v5 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::ContinueOp,void>::id, Context);
  if ((v6 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::ContinueOp>(v14, v13, v12);
  }

  mlir::OperationState::OperationState(v14, a2, v5);
  mlir::pdl_interp::ContinueOp::build(a1, v14, v7);
  v8 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v8 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::ContinueOp,void>::id)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  mlir::OperationState::~OperationState(v14);
  return v9;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::GetOperandOp,mlir::pdl::ValueType,mlir::Value &,unsigned int>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned int *a5)
{
  v19[38] = *MEMORY[0x277D85DE8];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetOperandOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::GetOperandOp,mlir::pdl::ValueType,mlir::Value &,unsigned int>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::pdl_interp::GetOperandOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetOperandOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::GetOperandsOp,mlir::Type,mlir::Value &,std::optional<unsigned int>>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x277D85DE8];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetOperandsOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::GetOperandsOp,mlir::Type,mlir::Value &,std::optional<unsigned int>>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::pdl_interp::GetOperandsOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetOperandsOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::GetAttributeOp,mlir::pdl::AttributeType,mlir::Value &,llvm::StringRef>(mlir::StringAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, size_t *a5)
{
  v19[38] = *MEMORY[0x277D85DE8];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetAttributeOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::GetAttributeOp,mlir::pdl::AttributeType,mlir::Value &,llvm::StringRef>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::pdl_interp::GetAttributeOp::build(a1, v19, *a3, *a4, *a5, a5[1]);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetAttributeOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::GetAttributeTypeOp,mlir::Value &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x277D85DE8];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetAttributeTypeOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::GetAttributeTypeOp,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::pdl_interp::GetAttributeTypeOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetAttributeTypeOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::GetValueTypeOp,mlir::Value &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x277D85DE8];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetValueTypeOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::GetValueTypeOp,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::pdl_interp::GetValueTypeOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetValueTypeOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::GetResultOp,mlir::pdl::ValueType,mlir::Value &,unsigned int>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned int *a5)
{
  v19[38] = *MEMORY[0x277D85DE8];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetResultOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::GetResultOp,mlir::pdl::ValueType,mlir::Value &,unsigned int>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::pdl_interp::GetResultOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetResultOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::GetResultsOp,mlir::Type,mlir::Value &,std::optional<unsigned int>>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x277D85DE8];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetResultsOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::GetResultsOp,mlir::Type,mlir::Value &,std::optional<unsigned int>>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::pdl_interp::GetResultsOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetResultsOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::CreateAttributeOp,mlir::Attribute const&>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x277D85DE8];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateAttributeOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::CreateAttributeOp,mlir::Attribute const&>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::pdl_interp::CreateAttributeOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateAttributeOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::CreateTypeOp,mlir::TypeAttr &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x277D85DE8];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateTypeOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::CreateTypeOp,mlir::TypeAttr &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::pdl_interp::CreateTypeOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateTypeOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::CreateTypesOp,mlir::ArrayAttr>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x277D85DE8];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateTypesOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::CreateTypesOp,mlir::ArrayAttr>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::pdl_interp::CreateTypesOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateTypesOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::BoolNode>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::BoolNode]";
  v6 = 83;
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

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::IsNotNullOp,mlir::Value &,mlir::Block *&,mlir::Block *&>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x277D85DE8];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::IsNotNullOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::IsNotNullOp,mlir::Value &,mlir::Block *&,mlir::Block *&>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::pdl_interp::IsNotNullOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::IsNotNullOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::CheckOperationNameOp,mlir::Value &,llvm::StringRef,mlir::Block *&,mlir::Block *&>(mlir::StringAttr **a1, uint64_t a2, uint64_t *a3, size_t *a4, uint64_t *a5, uint64_t *a6)
{
  v21[38] = *MEMORY[0x277D85DE8];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckOperationNameOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::CheckOperationNameOp,mlir::Value &,llvm::StringRef,mlir::Block *&,mlir::Block *&>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::pdl_interp::CheckOperationNameOp::build(a1, v21, *a3, *a4, a4[1], *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckOperationNameOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::CheckTypesOp,mlir::Value &,mlir::ArrayAttr,mlir::Block *&,mlir::Block *&>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v21[38] = *MEMORY[0x277D85DE8];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckTypesOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::CheckTypesOp,mlir::Value &,mlir::ArrayAttr,mlir::Block *&,mlir::Block *&>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::pdl_interp::CheckTypesOp::build(a1, v21, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckTypesOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::CheckTypeOp,mlir::Value &,mlir::TypeAttr,mlir::Block *&,mlir::Block *&>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v21[38] = *MEMORY[0x277D85DE8];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckTypeOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::CheckTypeOp,mlir::Value &,mlir::TypeAttr,mlir::Block *&,mlir::Block *&>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::pdl_interp::CheckTypeOp::build(a1, v21, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckTypeOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::CheckAttributeOp,mlir::Value &,mlir::Attribute const&,mlir::Block *&,mlir::Block *&>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v21[38] = *MEMORY[0x277D85DE8];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckAttributeOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::CheckAttributeOp,mlir::Value &,mlir::Attribute const&,mlir::Block *&,mlir::Block *&>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::pdl_interp::CheckAttributeOp::build(a1, v21, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckAttributeOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::CheckOperandCountOp,mlir::Value &,unsigned int const&,BOOL,mlir::Block *&,mlir::Block *&>(uint64_t **a1, uint64_t a2, uint64_t *a3, unsigned int *a4, unsigned __int8 *a5, uint64_t *a6, uint64_t *a7)
{
  v23[38] = *MEMORY[0x277D85DE8];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckOperandCountOp,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::CheckOperandCountOp,mlir::Value &,unsigned int const&,BOOL,mlir::Block *&,mlir::Block *&>(v23, v22, v21);
  }

  mlir::OperationState::OperationState(v23, a2, v15);
  mlir::pdl_interp::CheckOperandCountOp::build(a1, v23, *a3, *a4, *a5, *a6, *a7);
  v17 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckOperandCountOp,void>::id)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  mlir::OperationState::~OperationState(v23);
  return v18;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::CheckResultCountOp,mlir::Value &,unsigned int const&,BOOL,mlir::Block *&,mlir::Block *&>(uint64_t **a1, uint64_t a2, uint64_t *a3, unsigned int *a4, unsigned __int8 *a5, uint64_t *a6, uint64_t *a7)
{
  v23[38] = *MEMORY[0x277D85DE8];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckResultCountOp,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::CheckResultCountOp,mlir::Value &,unsigned int const&,BOOL,mlir::Block *&,mlir::Block *&>(v23, v22, v21);
  }

  mlir::OperationState::OperationState(v23, a2, v15);
  mlir::pdl_interp::CheckResultCountOp::build(a1, v23, *a3, *a4, *a5, *a6, *a7);
  v17 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckResultCountOp,void>::id)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  mlir::OperationState::~OperationState(v23);
  return v18;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::AreEqualOp,mlir::Value &,mlir::Value &,mlir::Block *&,mlir::Block *&>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v21[38] = *MEMORY[0x277D85DE8];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::AreEqualOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::AreEqualOp,mlir::Value &,mlir::Value &,mlir::Block *&,mlir::Block *&>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::pdl_interp::AreEqualOp::build(a1, v21, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::AreEqualOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::ApplyConstraintOp,llvm::ArrayRef<mlir::Type>,llvm::StringRef,llvm::SmallVector<mlir::Value,6u> &,BOOL,mlir::Block *&,mlir::Block *&>(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, size_t *a4, uint64_t a5, unsigned __int8 *a6, uint64_t *a7, uint64_t *a8)
{
  v27[5] = *MEMORY[0x277D85DE8];
  v24 = a2;
  Context = mlir::Attribute::getContext(&v24);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::ApplyConstraintOp,void>::id, Context);
  if ((v18 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::ApplyConstraintOp,llvm::ArrayRef<mlir::Type>,llvm::StringRef,llvm::SmallVector<mlir::Value,6u> &,BOOL,mlir::Block *&,mlir::Block *&>(v25, v27, v26);
  }

  mlir::OperationState::OperationState(v25, a2, v17);
  mlir::TypeRange::TypeRange(v27, *a3, *(a3 + 8));
  v20 = *a4;
  v19 = a4[1];
  mlir::ValueRange::ValueRange(v26, *a5, *(a5 + 8));
  mlir::pdl_interp::ApplyConstraintOp::build(a1, v25, v27[0], v27[1], v20, v19, v26[0], v26[1], *a6, *a7, *a8);
  v21 = mlir::OpBuilder::create(a1, v25);
  if (*(*(v21 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::ApplyConstraintOp,void>::id)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  mlir::OperationState::~OperationState(v25);
  return v22;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::pdl_to_pdl_interp::ConstraintQuestion *,mlir::pdl_interp::ApplyConstraintOp,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::ConstraintQuestion *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::ConstraintQuestion *,mlir::pdl_interp::ApplyConstraintOp>>,mlir::pdl_to_pdl_interp::ConstraintQuestion *,mlir::pdl_interp::ApplyConstraintOp,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::ConstraintQuestion *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::ConstraintQuestion *,mlir::pdl_interp::ApplyConstraintOp>>::try_emplace<mlir::pdl_interp::ApplyConstraintOp>@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 16);
  if (!v5)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v6 = *result;
  v7 = v5 - 1;
  v8 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v5 - 1);
  v9 = (*result + 16 * v8);
  v10 = *v9;
  if (*a2 != *v9)
  {
    v13 = 0;
    v14 = 1;
    while (v10 != -4096)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v10 == -8192;
      }

      if (v15)
      {
        v13 = v9;
      }

      v16 = v8 + v14++;
      v8 = v16 & v7;
      v9 = (v6 + 16 * (v16 & v7));
      v10 = *v9;
      if (*a2 == *v9)
      {
        goto LABEL_3;
      }
    }

    if (v13)
    {
      v9 = v13;
    }

LABEL_5:
    v20 = v9;
    v12 = *(result + 8);
    if (4 * v12 + 4 >= 3 * v5)
    {
      v5 *= 2;
    }

    else if (v5 + ~v12 - *(result + 12) > v5 >> 3)
    {
      *(result + 8) = v12 + 1;
      if (*v9 == -4096)
      {
LABEL_9:
        *v9 = *a2;
        v9[1] = *a3;
        v6 = *result;
        v5 = *(result + 16);
        v11 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v17 = result;
    v18 = a4;
    v19 = a3;
    llvm::DenseMap<mlir::Region *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,std::pair<unsigned int,unsigned int>>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::LookupBucketFor<mlir::Dialect const*>(v17, a2, &v20);
    a3 = v19;
    result = v17;
    a4 = v18;
    v9 = v20;
    ++*(v17 + 8);
    if (*v9 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v11 = 0;
LABEL_10:
  *a4 = v9;
  *(a4 + 8) = v6 + 16 * v5;
  *(a4 + 16) = v11;
  return result;
}

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::SwitchNode>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::SwitchNode]";
  v6 = 85;
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

void createSwitchOp<mlir::pdl_interp::SwitchOperandCountOp,mlir::pdl_to_pdl_interp::UnsignedAnswer,int>(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  v12 = a2;
  v13 = a1;
  v10 = 0;
  v7 = 0;
  v8 = 0;
  if (*(a4 + 32))
  {
    operator new();
  }

  v8 = 0;
  v9 = 0;
  __p = 0;
  v11 = 0;
  Loc = mlir::Value::getLoc(&v13);
  mlir::OpBuilder::create<mlir::pdl_interp::SwitchOperandCountOp,mlir::Value &,std::vector<int> &,mlir::Block *&,std::vector<mlir::Block *> &>(a3, Loc, &v13, &v9, &v12, &__p);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }
}

void createSwitchOp<mlir::pdl_interp::SwitchResultCountOp,mlir::pdl_to_pdl_interp::UnsignedAnswer,int>(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  v12 = a2;
  v13 = a1;
  v10 = 0;
  v7 = 0;
  v8 = 0;
  if (*(a4 + 32))
  {
    operator new();
  }

  v8 = 0;
  v9 = 0;
  __p = 0;
  v11 = 0;
  Loc = mlir::Value::getLoc(&v13);
  mlir::OpBuilder::create<mlir::pdl_interp::SwitchResultCountOp,mlir::Value &,std::vector<int> &,mlir::Block *&,std::vector<mlir::Block *> &>(a3, Loc, &v13, &v9, &v12, &__p);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }
}

void createSwitchOp<mlir::pdl_interp::SwitchOperationNameOp,mlir::pdl_to_pdl_interp::OperationNameAnswer,mlir::OperationName>(uint64_t a1, uint64_t a2, mlir::MLIRContext **a3, uint64_t a4)
{
  v12 = a2;
  v13 = a1;
  v10 = 0;
  v7 = 0;
  v8 = 0;
  if (*(a4 + 32))
  {
    operator new();
  }

  v8 = 0;
  v9 = 0;
  __p = 0;
  v11 = 0;
  Loc = mlir::Value::getLoc(&v13);
  mlir::OpBuilder::create<mlir::pdl_interp::SwitchOperationNameOp,mlir::Value &,std::vector<mlir::OperationName> &,mlir::Block *&,std::vector<mlir::Block *> &>(a3, Loc, &v13, &v9, &v12, &__p);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }
}

void createSwitchOp<mlir::pdl_interp::SwitchTypesOp,mlir::pdl_to_pdl_interp::TypeAnswer,mlir::Attribute>(uint64_t a1, uint64_t a2, mlir::MLIRContext **a3, uint64_t a4)
{
  v12 = a2;
  v13 = a1;
  v10 = 0;
  v7 = 0;
  v8 = 0;
  if (*(a4 + 32))
  {
    operator new();
  }

  v8 = 0;
  v9 = 0;
  __p = 0;
  v11 = 0;
  Loc = mlir::Value::getLoc(&v13);
  mlir::OpBuilder::create<mlir::pdl_interp::SwitchTypesOp,mlir::Value &,std::vector<mlir::Attribute> &,mlir::Block *&,std::vector<mlir::Block *> &>(a3, Loc, &v13, &v9, &v12, &__p);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }
}

void createSwitchOp<mlir::pdl_interp::SwitchTypeOp,mlir::pdl_to_pdl_interp::TypeAnswer,mlir::Attribute>(uint64_t a1, uint64_t a2, mlir::MLIRContext **a3, uint64_t a4)
{
  v12 = a2;
  v13 = a1;
  v10 = 0;
  v7 = 0;
  v8 = 0;
  if (*(a4 + 32))
  {
    operator new();
  }

  v8 = 0;
  v9 = 0;
  __p = 0;
  v11 = 0;
  Loc = mlir::Value::getLoc(&v13);
  mlir::OpBuilder::create<mlir::pdl_interp::SwitchTypeOp,mlir::Value &,std::vector<mlir::Attribute> &,mlir::Block *&,std::vector<mlir::Block *> &>(a3, Loc, &v13, &v9, &v12, &__p);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }
}

void createSwitchOp<mlir::pdl_interp::SwitchAttributeOp,mlir::pdl_to_pdl_interp::AttributeAnswer,mlir::Attribute>(uint64_t a1, uint64_t a2, mlir::MLIRContext **a3, uint64_t a4)
{
  v12 = a2;
  v13 = a1;
  v10 = 0;
  v7 = 0;
  v8 = 0;
  if (*(a4 + 32))
  {
    operator new();
  }

  v8 = 0;
  v9 = 0;
  __p = 0;
  v11 = 0;
  Loc = mlir::Value::getLoc(&v13);
  mlir::OpBuilder::create<mlir::pdl_interp::SwitchAttributeOp,mlir::Value &,std::vector<mlir::Attribute> &,mlir::Block *&,std::vector<mlir::Block *> &>(a3, Loc, &v13, &v9, &v12, &__p);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,anonymous namespace::PatternLowering::generate(mlir::pdl_to_pdl_interp::SwitchNode *,mlir::Block *,mlir::Value)::$_0 &,unsigned int *,false>(uint64_t result, unsigned int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      v100 = *(a2 - 1);
      v101 = *v10;
      if (*(*(*(**a3 + 72) + 16 * v100) + 8) > *(*(*(**a3 + 72) + 16 * v101) + 8))
      {
        *v10 = v100;
        *(a2 - 1) = v101;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v110 = *a3;
      if (a5)
      {
        if (v10 != a2)
        {
          v111 = v10 + 1;
          if (v10 + 1 != a2)
          {
            v112 = 0;
            v113 = *(*v110 + 72);
            v114 = v10;
            do
            {
              v117 = *v114;
              v116 = v114[1];
              v114 = v111;
              v118 = *(v113 + 16 * v116);
              if (*(v118 + 8) > *(*(v113 + 16 * v117) + 8))
              {
                v119 = v112;
                do
                {
                  *(v10 + v119 + 4) = v117;
                  if (!v119)
                  {
                    v115 = v10;
                    goto LABEL_124;
                  }

                  v117 = *(v10 + v119 - 4);
                  v119 -= 4;
                }

                while (*(v118 + 8) > *(*(v113 + 16 * v117) + 8));
                v115 = (v10 + v119 + 4);
LABEL_124:
                *v115 = v116;
              }

              v111 = v114 + 1;
              v112 += 4;
            }

            while (v114 + 1 != a2);
          }
        }
      }

      else if (v10 != a2)
      {
        v157 = v10 + 1;
        if (v10 + 1 != a2)
        {
          v158 = *(*v110 + 72);
          do
          {
            v160 = *v9;
            v159 = v9[1];
            v9 = v157;
            v161 = *(v158 + 16 * v159);
            if (*(v161 + 8) > *(*(v158 + 16 * v160) + 8))
            {
              v162 = v9;
              do
              {
                *v162 = v160;
                v160 = *(v162 - 2);
                --v162;
              }

              while (*(v161 + 8) > *(*(v158 + 16 * v160) + 8));
              *v162 = v159;
            }

            v157 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v120 = (v11 - 2) >> 1;
        v121 = *a3;
        v122 = v120;
        do
        {
          v123 = v122;
          if (v120 >= v122)
          {
            v124 = (2 * v122) | 1;
            v125 = &v10[v124];
            v126 = *v125;
            if (2 * v123 + 2 >= v11)
            {
              v127 = *(*v121 + 72);
            }

            else
            {
              v127 = *(*v121 + 72);
              if (*(*(v127 + 16 * v126) + 8) > *(*(v127 + 16 * v125[1]) + 8))
              {
                v126 = v125[1];
                ++v125;
                v124 = 2 * v123 + 2;
              }
            }

            v128 = &v10[v123];
            v129 = *v128;
            v130 = *(v127 + 16 * v129);
            if (*(*(v127 + 16 * v126) + 8) <= *(v130 + 8))
            {
              do
              {
                v131 = v125;
                *v128 = v126;
                if (v120 < v124)
                {
                  break;
                }

                v132 = (2 * v124) | 1;
                v125 = &v10[v132];
                v133 = 2 * v124 + 2;
                v126 = *v125;
                if (v133 < v11 && *(*(v127 + 16 * v126) + 8) > *(*(v127 + 16 * v125[1]) + 8))
                {
                  v126 = v125[1];
                  ++v125;
                  v132 = v133;
                }

                v128 = v131;
                v124 = v132;
              }

              while (*(*(v127 + 16 * v126) + 8) <= *(v130 + 8));
              *v131 = v129;
              v121 = *a3;
            }
          }

          v122 = v123 - 1;
        }

        while (v123);
        do
        {
          v135 = 0;
          v136 = *v10;
          v137 = *a3;
          v138 = (v11 - 2) >> 1;
          v139 = v10;
          do
          {
            while (1)
            {
              v144 = &v139[v135];
              v143 = v144 + 1;
              v142 = v144[1];
              result = 2 * v135;
              v145 = (2 * v135) | 1;
              v135 = 2 * v135 + 2;
              if (v135 < v11)
              {
                break;
              }

              v135 = v145;
              *v139 = v142;
              v139 = v144 + 1;
              if (v145 > v138)
              {
                goto LABEL_158;
              }
            }

            v141 = v144[2];
            v140 = v144 + 2;
            result = v141;
            if (*(*(*(*v137 + 72) + 16 * v142) + 8) <= *(*(*(*v137 + 72) + 16 * v141) + 8))
            {
              v135 = v145;
            }

            else
            {
              LODWORD(v142) = result;
              v143 = v140;
            }

            *v139 = v142;
            v139 = v143;
          }

          while (v135 <= v138);
LABEL_158:
          if (v143 == --a2)
          {
            *v143 = v136;
          }

          else
          {
            *v143 = *a2;
            *a2 = v136;
            v146 = (v143 - v10 + 4) >> 2;
            v134 = v146 < 2;
            v147 = v146 - 2;
            if (!v134)
            {
              v148 = v147 >> 1;
              v149 = &v10[v148];
              v150 = *v149;
              v151 = *v143;
              v152 = *(**a3 + 72);
              v153 = *(v152 + 16 * v151);
              if (*(*(v152 + 16 * v150) + 8) > *(v153 + 8))
              {
                do
                {
                  v154 = v149;
                  *v143 = v150;
                  if (!v148)
                  {
                    break;
                  }

                  v148 = (v148 - 1) >> 1;
                  v149 = &v10[v148];
                  v150 = *v149;
                  result = *(v153 + 8);
                  v143 = v154;
                }

                while (*(*(v152 + 16 * v150) + 8) > result);
                *v154 = v151;
              }
            }
          }

          v134 = v11-- <= 2;
        }

        while (!v134);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = *(**a3 + 72);
    v15 = *(a2 - 1);
    v16 = *(*(v14 + 16 * v15) + 8);
    if (v11 < 0x81)
    {
      v21 = *v10;
      v22 = *v13;
      v23 = *(*(v14 + 16 * v21) + 8);
      v24 = *(v14 + 16 * v22);
      if (v23 > *(v24 + 8))
      {
        if (v16 > v23)
        {
          *v13 = v15;
          goto LABEL_37;
        }

        *v13 = v21;
        *v10 = v22;
        v40 = *(a2 - 1);
        if (*(*(v14 + 16 * v40) + 8) > *(v24 + 8))
        {
          *v10 = v40;
LABEL_37:
          *(a2 - 1) = v22;
        }

LABEL_38:
        --a4;
        v29 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v16 <= v23)
      {
        goto LABEL_38;
      }

      *v10 = v15;
      *(a2 - 1) = v21;
      v27 = *v10;
      v28 = *v13;
      if (*(*(v14 + 16 * v27) + 8) <= *(*(v14 + 16 * v28) + 8))
      {
        goto LABEL_38;
      }

      *v13 = v27;
      *v10 = v28;
      --a4;
      v29 = v28;
      if (a5)
      {
        goto LABEL_62;
      }

LABEL_61:
      v61 = *(v14 + 16 * v29);
      v62 = *(v61 + 8);
      if (*(*(v14 + 16 * *(v10 - 1)) + 8) > v62)
      {
        goto LABEL_62;
      }

      if (v62 <= *(*(v14 + 16 * *(a2 - 1)) + 8))
      {
        v83 = v10 + 1;
        do
        {
          v10 = v83;
          if (v83 >= a2)
          {
            break;
          }

          ++v83;
        }

        while (v62 <= *(*(v14 + 16 * *v10) + 8));
      }

      else
      {
        do
        {
          v82 = v10[1];
          ++v10;
        }

        while (v62 <= *(*(v14 + 16 * v82) + 8));
      }

      v84 = a2;
      if (v10 < a2)
      {
        v84 = a2;
        do
        {
          v85 = *--v84;
        }

        while (v62 > *(*(v14 + 16 * v85) + 8));
      }

      if (v10 < v84)
      {
        v86 = *v10;
        v87 = *v84;
        do
        {
          *v10 = v87;
          *v84 = v86;
          v88 = *(v61 + 8);
          do
          {
            v89 = v10[1];
            ++v10;
            v86 = v89;
          }

          while (v88 <= *(*(v14 + 16 * v89) + 8));
          do
          {
            v90 = *--v84;
            v87 = v90;
          }

          while (v88 > *(*(v14 + 16 * v90) + 8));
        }

        while (v10 < v84);
      }

      v91 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v91;
      }

      a5 = 0;
      *v91 = v29;
    }

    else
    {
      v17 = *v12;
      v18 = *v10;
      v19 = *(*(v14 + 16 * v17) + 8);
      v20 = *(v14 + 16 * v18);
      if (v19 <= *(v20 + 8))
      {
        if (v16 > v19)
        {
          *v12 = v15;
          *(a2 - 1) = v17;
          v25 = *v12;
          v26 = *v10;
          if (*(*(v14 + 16 * v25) + 8) > *(*(v14 + 16 * v26) + 8))
          {
            *v10 = v25;
            *v12 = v26;
          }
        }
      }

      else
      {
        if (v16 <= v19)
        {
          *v10 = v17;
          *v12 = v18;
          v30 = *(a2 - 1);
          if (*(*(v14 + 16 * v30) + 8) <= *(v20 + 8))
          {
            goto LABEL_29;
          }

          *v12 = v30;
        }

        else
        {
          *v10 = v15;
        }

        *(a2 - 1) = v18;
      }

LABEL_29:
      v31 = v12 - 1;
      v32 = *(v12 - 1);
      v33 = v10[1];
      v34 = *(*(v14 + 16 * v32) + 8);
      v35 = *(v14 + 16 * v33);
      v36 = *(a2 - 2);
      v37 = *(*(v14 + 16 * v36) + 8);
      if (v34 <= *(v35 + 8))
      {
        if (v37 > v34)
        {
          *v31 = v36;
          *(a2 - 2) = v32;
          v38 = *v31;
          v39 = v10[1];
          if (*(*(v14 + 16 * v38) + 8) > *(*(v14 + 16 * v39) + 8))
          {
            v10[1] = v38;
            *v31 = v39;
          }
        }
      }

      else
      {
        if (v37 <= v34)
        {
          v10[1] = v32;
          *v31 = v33;
          v41 = *(a2 - 2);
          if (*(*(v14 + 16 * v41) + 8) <= *(v35 + 8))
          {
            goto LABEL_43;
          }

          *v31 = v41;
        }

        else
        {
          v10[1] = v36;
        }

        *(a2 - 2) = v33;
      }

LABEL_43:
      v44 = v12[1];
      v42 = v12 + 1;
      v43 = v44;
      v45 = v10[2];
      v46 = *(*(v14 + 16 * v44) + 8);
      v47 = *(v14 + 16 * v45);
      v48 = *(a2 - 3);
      v49 = *(*(v14 + 16 * v48) + 8);
      if (v46 <= *(v47 + 8))
      {
        if (v49 > v46)
        {
          *v42 = v48;
          *(a2 - 3) = v43;
          v50 = *v42;
          v51 = v10[2];
          if (*(*(v14 + 16 * v50) + 8) > *(*(v14 + 16 * v51) + 8))
          {
            v10[2] = v50;
            *v42 = v51;
          }
        }
      }

      else
      {
        if (v49 <= v46)
        {
          v10[2] = v43;
          *v42 = v45;
          v52 = *(a2 - 3);
          if (*(*(v14 + 16 * v52) + 8) <= *(v47 + 8))
          {
            goto LABEL_52;
          }

          *v42 = v52;
        }

        else
        {
          v10[2] = v48;
        }

        *(a2 - 3) = v45;
      }

LABEL_52:
      v53 = *v13;
      v54 = *v31;
      v55 = *(*(v14 + 16 * v53) + 8);
      v56 = *(v14 + 16 * v54);
      v57 = *v42;
      v58 = *(v14 + 16 * v57);
      result = *(v58 + 8);
      if (v55 <= *(v56 + 8))
      {
        if (result <= v55)
        {
          goto LABEL_60;
        }

        *v13 = v57;
        *v42 = v53;
        v42 = v13;
        LODWORD(v53) = v54;
        if (*(v58 + 8) > *(v56 + 8))
        {
LABEL_59:
          *v31 = v57;
          *v42 = v54;
LABEL_60:
          v60 = *v10;
          *v10 = v53;
          *v13 = v60;
          --a4;
          v29 = *v10;
          if ((a5 & 1) == 0)
          {
            goto LABEL_61;
          }

          goto LABEL_62;
        }

        v81 = *v10;
        *v10 = v57;
        *v13 = v81;
        --a4;
        v29 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (result > v55)
      {
        goto LABEL_59;
      }

      *v31 = v53;
      *v13 = v54;
      v31 = v13;
      LODWORD(v53) = v57;
      if (*(v58 + 8) > *(v56 + 8))
      {
        goto LABEL_59;
      }

      v59 = *v10;
      *v10 = v54;
      *v13 = v59;
      --a4;
      v29 = *v10;
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v63 = 0;
      v64 = *(**a3 + 72);
      v65 = *(v64 + 16 * v29);
      v66 = *(v65 + 8);
      do
      {
        v67 = v10[++v63];
      }

      while (*(*(v64 + 16 * v67) + 8) > v66);
      v68 = &v10[v63];
      v69 = a2;
      if (v63 == 1)
      {
        v69 = a2;
        do
        {
          if (v68 >= v69)
          {
            break;
          }

          v71 = *--v69;
        }

        while (*(*(v64 + 16 * v71) + 8) <= v66);
      }

      else
      {
        do
        {
          v70 = *--v69;
        }

        while (*(*(v64 + 16 * v70) + 8) <= v66);
      }

      if (v68 >= v69)
      {
        v79 = v68 - 1;
        if (v68 - 1 == v10)
        {
          goto LABEL_80;
        }

LABEL_79:
        *v10 = *v79;
        goto LABEL_80;
      }

      v72 = *v69;
      v73 = v67;
      v74 = v68;
      v75 = v69;
      do
      {
        *v74 = v72;
        *v75 = v73;
        v76 = *(v65 + 8);
        do
        {
          v77 = v74[1];
          ++v74;
          v73 = v77;
        }

        while (*(*(v64 + 16 * v77) + 8) > v76);
        do
        {
          v78 = *--v75;
          v72 = v78;
        }

        while (*(*(v64 + 16 * v78) + 8) <= v76);
      }

      while (v74 < v75);
      v79 = v74 - 1;
      if (v74 - 1 != v10)
      {
        goto LABEL_79;
      }

LABEL_80:
      *v79 = v29;
      if (v68 < v69)
      {
        goto LABEL_83;
      }

      v10 = v79 + 1;
      if (result)
      {
        a2 = v79;
        if (!v80)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v80)
      {
LABEL_83:
        a5 = 0;
        v10 = v79 + 1;
      }
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
      v109 = *(**a3 + 72);
    }

    if (v11 == 5)
    {
      v92 = *(a2 - 1);
      v93 = v10[3];
      v94 = *(**a3 + 72);
      if (*(*(v94 + 16 * v92) + 8) > *(*(v94 + 16 * v93) + 8))
      {
        v10[3] = v92;
        *(a2 - 1) = v93;
        v96 = v10[2];
        v95 = v10[3];
        v97 = *(v94 + 16 * v95);
        if (*(v97 + 8) > *(*(v94 + 16 * v96) + 8))
        {
          v10[2] = v95;
          v10[3] = v96;
          v98 = v10[1];
          if (*(v97 + 8) > *(*(v94 + 16 * v98) + 8))
          {
            v10[1] = v95;
            v10[2] = v98;
            v99 = *v10;
            if (*(v97 + 8) > *(*(v94 + 16 * v99) + 8))
            {
              *v10 = v95;
              v10[1] = v99;
            }
          }
        }
      }

      return result;
    }

    goto LABEL_10;
  }

  v102 = *(**a3 + 72);
  v103 = *v10;
  v104 = v10[1];
  v105 = *(*(v102 + 16 * v104) + 8);
  v106 = *(v102 + 16 * v103);
  v107 = *(a2 - 1);
  v108 = *(*(v102 + 16 * v107) + 8);
  if (v105 <= *(v106 + 8))
  {
    if (v108 > v105)
    {
      v10[1] = v107;
      *(a2 - 1) = v104;
      v156 = *v10;
      v155 = v10[1];
      if (*(*(v102 + 16 * v155) + 8) > *(*(v102 + 16 * v156) + 8))
      {
        *v10 = v155;
        v10[1] = v156;
      }
    }
  }

  else
  {
    if (v108 <= v105)
    {
      *v10 = v104;
      v10[1] = v103;
      v163 = *(a2 - 1);
      if (*(*(v102 + 16 * v163) + 8) <= *(v106 + 8))
      {
        return result;
      }

      v10[1] = v163;
    }

    else
    {
      *v10 = v107;
    }

    *(a2 - 1) = v103;
  }

  return result;
}

_DWORD *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,anonymous namespace::PatternLowering::generate(mlir::pdl_to_pdl_interp::SwitchNode *,mlir::Block *,mlir::Value)::$_0 &,unsigned int *,0>(_DWORD *result, _DWORD *a2, unsigned int *a3, _DWORD *a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *(*(a5 + 16 * v5) + 8);
  v8 = *(a5 + 16 * v6);
  v9 = *a3;
  v10 = *(*(a5 + 16 * *a3) + 8);
  if (v7 <= *(v8 + 8))
  {
    if (v10 <= v7)
    {
      v6 = *a3;
      goto LABEL_14;
    }

    *a2 = v9;
    *a3 = v5;
    v11 = *a2;
    v12 = *result;
    if (*(*(a5 + 16 * v11) + 8) <= *(*(a5 + 16 * v12) + 8))
    {
      v6 = v5;
      v9 = v5;
      goto LABEL_14;
    }

    *result = v11;
    *a2 = v12;
    v6 = *a3;
  }

  else
  {
    if (v10 <= v7)
    {
      *result = v5;
      *a2 = v6;
      v9 = *a3;
      if (*(*(a5 + 16 * *a3) + 8) <= *(v8 + 8))
      {
        v6 = *a3;
        goto LABEL_14;
      }

      *a2 = v9;
    }

    else
    {
      *result = v9;
    }

    *a3 = v6;
  }

  v9 = v6;
LABEL_14:
  v13 = *a4;
  if (*(*(a5 + 16 * v13) + 8) > *(*(a5 + 16 * v6) + 8))
  {
    *a3 = v13;
    *a4 = v9;
    v14 = *a3;
    v15 = *a2;
    if (*(*(a5 + 16 * v14) + 8) > *(*(a5 + 16 * v15) + 8))
    {
      *a2 = v14;
      *a3 = v15;
      v16 = *a2;
      v17 = *result;
      if (*(*(a5 + 16 * v16) + 8) > *(*(a5 + 16 * v17) + 8))
      {
        *result = v16;
        *a2 = v17;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,anonymous namespace::PatternLowering::generate(mlir::pdl_to_pdl_interp::SwitchNode *,mlir::Block *,mlir::Value)::$_0 &,unsigned int *>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v18 = *(**a3 + 72);
        v19 = *a1;
        v20 = a1[1];
        v21 = *(*(v18 + 16 * v20) + 8);
        v22 = *(v18 + 16 * v19);
        v23 = *(a2 - 1);
        v24 = *(*(v18 + 16 * v23) + 8);
        if (v21 <= *(v22 + 8))
        {
          if (v24 > v21)
          {
            a1[1] = v23;
            *(a2 - 1) = v20;
            v39 = *a1;
            v38 = a1[1];
            if (*(*(v18 + 16 * v38) + 8) > *(*(v18 + 16 * v39) + 8))
            {
              *a1 = v38;
              a1[1] = v39;
              return 1;
            }
          }
        }

        else
        {
          if (v24 > v21)
          {
            *a1 = v23;
            *(a2 - 1) = v19;
            return 1;
          }

          *a1 = v20;
          a1[1] = v19;
          v48 = *(a2 - 1);
          if (*(*(v18 + 16 * v48) + 8) > *(v22 + 8))
          {
            a1[1] = v48;
            *(a2 - 1) = v19;
          }
        }

        return 1;
      case 4:
        return 1;
      case 5:
        v10 = *(a2 - 1);
        v11 = a1[3];
        v12 = *(**a3 + 72);
        if (*(*(v12 + 16 * v10) + 8) > *(*(v12 + 16 * v11) + 8))
        {
          a1[3] = v10;
          *(a2 - 1) = v11;
          v14 = a1[2];
          v13 = a1[3];
          v15 = *(v12 + 16 * v13);
          if (*(v15 + 8) > *(*(v12 + 16 * v14) + 8))
          {
            a1[2] = v13;
            a1[3] = v14;
            v16 = a1[1];
            if (*(v15 + 8) > *(*(v12 + 16 * v16) + 8))
            {
              a1[1] = v13;
              a1[2] = v16;
              v17 = *a1;
              if (*(v15 + 8) > *(*(v12 + 16 * v17) + 8))
              {
                *a1 = v13;
                a1[1] = v17;
                return 1;
              }
            }
          }
        }

        return 1;
    }
  }

  else
  {
    if (v3 < 2)
    {
      return 1;
    }

    if (v3 == 2)
    {
      v4 = *(a2 - 1);
      v5 = *a1;
      if (*(*(*(**a3 + 72) + 16 * v4) + 8) > *(*(*(**a3 + 72) + 16 * v5) + 8))
      {
        *a1 = v4;
        *(a2 - 1) = v5;
        return 1;
      }

      return 1;
    }
  }

  v25 = a1 + 2;
  v26 = a1[2];
  v27 = a1[1];
  v28 = *(**a3 + 72);
  v29 = *a1;
  v30 = *(*(v28 + 16 * v27) + 8);
  v31 = *(v28 + 16 * v29);
  v32 = *(v28 + 16 * v26);
  v33 = *(v32 + 8);
  if (v30 <= *(v31 + 8))
  {
    if (v33 <= v30)
    {
      goto LABEL_28;
    }

    a1[1] = v26;
    *v25 = v27;
    v36 = *(v32 + 8);
    v37 = *(v31 + 8);
    v34 = a1;
    v35 = a1 + 1;
LABEL_26:
    if (v36 <= v37)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v34 = a1;
  v35 = a1 + 2;
  if (v33 <= v30)
  {
    *a1 = v27;
    a1[1] = v29;
    v36 = *(v32 + 8);
    v37 = *(v31 + 8);
    v34 = a1 + 1;
    v35 = a1 + 2;
    goto LABEL_26;
  }

LABEL_27:
  *v34 = v26;
  *v35 = v29;
LABEL_28:
  v40 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v41 = 0;
  for (i = 12; ; i += 4)
  {
    v43 = *v40;
    v44 = *v25;
    v45 = *(v28 + 16 * v43);
    if (*(v45 + 8) > *(*(v28 + 16 * v44) + 8))
    {
      break;
    }

LABEL_37:
    v25 = v40++;
    if (v40 == a2)
    {
      return 1;
    }
  }

  v46 = i;
  do
  {
    *(a1 + v46) = v44;
    v47 = v46 - 4;
    if (v46 == 4)
    {
      *a1 = v43;
      if (++v41 != 8)
      {
        goto LABEL_37;
      }

      return v40 + 1 == a2;
    }

    v44 = *(a1 + v46 - 8);
    v46 -= 4;
  }

  while (*(v45 + 8) > *(*(v28 + 16 * v44) + 8));
  *(a1 + v47) = v43;
  if (++v41 != 8)
  {
    goto LABEL_37;
  }

  return v40 + 1 == a2;
}

uint64_t llvm::SmallVectorTemplateBase<std::pair<mlir::pdl_to_pdl_interp::Qualifier *,mlir::Block *>,true>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<mlir::pdl_to_pdl_interp::Qualifier *&&>,std::tuple<mlir::Block *&&>>(uint64_t a1, uint64_t a2, void **a3, uint64_t **a4)
{
  v4 = **a4;
  v5 = *(a1 + 8);
  if (v5 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v6 = (*a1 + 16 * v5);
  *v6 = **a3;
  v6[1] = v4;
  LODWORD(v6) = *(a1 + 8) + 1;
  *(a1 + 8) = v6;
  return *a1 + 16 * v6 - 16;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::SwitchOperandCountOp,mlir::Value &,std::vector<int> &,mlir::Block *&,std::vector<mlir::Block *> &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v25[5] = *MEMORY[0x277D85DE8];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchOperandCountOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::SwitchOperandCountOp,mlir::Value &,std::vector<int> &,mlir::Block *&,std::vector<mlir::Block *> &>(v24, v25, v23);
  }

  mlir::OperationState::OperationState(v24, a2, v13);
  v15 = *a3;
  v16 = *a4;
  v17 = (a4[1] - *a4) >> 2;
  v18 = *a5;
  mlir::BlockRange::BlockRange(v25, *a6, (a6[1] - *a6) >> 3);
  mlir::pdl_interp::SwitchOperandCountOp::build(a1, v24, v15, v16, v17, v18, v25[0], v25[1]);
  v19 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v19 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchOperandCountOp,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v24);
  return v20;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::SwitchResultCountOp,mlir::Value &,std::vector<int> &,mlir::Block *&,std::vector<mlir::Block *> &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v25[5] = *MEMORY[0x277D85DE8];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchResultCountOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::SwitchResultCountOp,mlir::Value &,std::vector<int> &,mlir::Block *&,std::vector<mlir::Block *> &>(v24, v25, v23);
  }

  mlir::OperationState::OperationState(v24, a2, v13);
  v15 = *a3;
  v16 = *a4;
  v17 = (a4[1] - *a4) >> 2;
  v18 = *a5;
  mlir::BlockRange::BlockRange(v25, *a6, (a6[1] - *a6) >> 3);
  mlir::pdl_interp::SwitchResultCountOp::build(a1, v24, v15, v16, v17, v18, v25[0], v25[1]);
  v19 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v19 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchResultCountOp,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v24);
  return v20;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::SwitchOperationNameOp,mlir::Value &,std::vector<mlir::OperationName> &,mlir::Block *&,std::vector<mlir::Block *> &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v25[5] = *MEMORY[0x277D85DE8];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchOperationNameOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::SwitchOperationNameOp,mlir::Value &,std::vector<mlir::OperationName> &,mlir::Block *&,std::vector<mlir::Block *> &>(v24, v25, v23);
  }

  mlir::OperationState::OperationState(v24, a2, v13);
  v15 = *a3;
  v16 = *a4;
  v17 = (*(a4 + 8) - *a4) >> 3;
  v18 = *a5;
  mlir::BlockRange::BlockRange(v25, *a6, (a6[1] - *a6) >> 3);
  mlir::pdl_interp::SwitchOperationNameOp::build(a1, v24, v15, v16, v17, v18, v25[0], v25[1]);
  v19 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v19 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchOperationNameOp,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v24);
  return v20;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::SwitchTypesOp,mlir::Value &,std::vector<mlir::Attribute> &,mlir::Block *&,std::vector<mlir::Block *> &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v25[5] = *MEMORY[0x277D85DE8];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchTypesOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::SwitchTypesOp,mlir::Value &,std::vector<mlir::Attribute> &,mlir::Block *&,std::vector<mlir::Block *> &>(v24, v25, v23);
  }

  mlir::OperationState::OperationState(v24, a2, v13);
  v15 = *a3;
  v16 = *a4;
  v17 = (*(a4 + 8) - *a4) >> 3;
  v18 = *a5;
  mlir::BlockRange::BlockRange(v25, *a6, (a6[1] - *a6) >> 3);
  mlir::pdl_interp::SwitchTypesOp::build(a1, v24, v15, v16, v17, v18, v25[0], v25[1]);
  v19 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v19 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchTypesOp,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v24);
  return v20;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::SwitchTypeOp,mlir::Value &,std::vector<mlir::Attribute> &,mlir::Block *&,std::vector<mlir::Block *> &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v25[5] = *MEMORY[0x277D85DE8];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchTypeOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::SwitchTypeOp,mlir::Value &,std::vector<mlir::Attribute> &,mlir::Block *&,std::vector<mlir::Block *> &>(v24, v25, v23);
  }

  mlir::OperationState::OperationState(v24, a2, v13);
  v15 = *a3;
  v16 = *a4;
  v17 = (*(a4 + 8) - *a4) >> 3;
  v18 = *a5;
  mlir::BlockRange::BlockRange(v25, *a6, (a6[1] - *a6) >> 3);
  mlir::pdl_interp::SwitchTypeOp::build(a1, v24, v15, v16, v17, v18, v25[0], v25[1]);
  v19 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v19 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchTypeOp,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v24);
  return v20;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::SwitchAttributeOp,mlir::Value &,std::vector<mlir::Attribute> &,mlir::Block *&,std::vector<mlir::Block *> &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v25[5] = *MEMORY[0x277D85DE8];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchAttributeOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::SwitchAttributeOp,mlir::Value &,std::vector<mlir::Attribute> &,mlir::Block *&,std::vector<mlir::Block *> &>(v24, v25, v23);
  }

  mlir::OperationState::OperationState(v24, a2, v13);
  v15 = *a3;
  v16 = *a4;
  v17 = (*(a4 + 8) - *a4) >> 3;
  v18 = *a5;
  mlir::BlockRange::BlockRange(v25, *a6, (a6[1] - *a6) >> 3);
  mlir::pdl_interp::SwitchAttributeOp::build(a1, v24, v15, v16, v17, v18, v25[0], v25[1]);
  v19 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v19 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchAttributeOp,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v24);
  return v20;
}

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::SuccessNode>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::SuccessNode]";
  v6 = 86;
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

double mlir::Region::getOps<mlir::pdl::OperationOp>@<D0>(mlir::Region *a1@<X0>, uint64_t a2@<X8>)
{
  mlir::Region::OpIterator::OpIterator(&v18, a1, 1);
  mlir::Region::OpIterator::OpIterator(&v14, a1, 0);
  *&v12[8] = v18;
  v4 = v15;
  *v12 = v15;
  v11 = v14;
  *&v12[24] = v19;
  for (i = mlir::detail::op_filter_iterator<mlir::pdl::OperationOp,mlir::Region::OpIterator>::filter; *v12 != *&v12[24]; v4 = *v12)
  {
    v5 = i;
    ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v4);
    if ((v5)(ValuePtr))
    {
      break;
    }

    mlir::Region::OpIterator::operator++(&v11);
  }

  v14 = v11;
  v15 = *v12;
  v16 = *&v12[16];
  v17 = i;
  *v12 = v19;
  *&v12[8] = v18;
  *&v12[24] = v19;
  i = mlir::detail::op_filter_iterator<mlir::pdl::OperationOp,mlir::Region::OpIterator>::filter;
  v7 = *v12;
  *(a2 + 64) = v18;
  *(a2 + 80) = v7;
  *(a2 + 96) = *&v12[16];
  v8 = i;
  v9 = v15;
  *a2 = v14;
  *(a2 + 16) = v9;
  result = *&v16;
  *(a2 + 32) = v16;
  *(a2 + 48) = v17;
  *(a2 + 56) = mlir::detail::op_iterator<mlir::pdl::OperationOp,mlir::Region::OpIterator>::unwrap;
  *(a2 + 112) = v8;
  *(a2 + 120) = mlir::detail::op_iterator<mlir::pdl::OperationOp,mlir::Region::OpIterator>::unwrap;
  return result;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::RecordMatchOp,std::vector<mlir::Value> &,llvm::ArrayRef<mlir::Value>,mlir::SymbolRefAttr &,mlir::StringAttr &,mlir::ArrayAttr &,mlir::IntegerAttr,mlir::Block *&>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9)
{
  v26[5] = *MEMORY[0x277D85DE8];
  v23 = a2;
  Context = mlir::Attribute::getContext(&v23);
  v18 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::RecordMatchOp,void>::id, Context);
  if ((v19 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::RecordMatchOp,std::vector<mlir::Value> &,llvm::ArrayRef<mlir::Value>,mlir::SymbolRefAttr &,mlir::StringAttr &,mlir::ArrayAttr &,mlir::IntegerAttr,mlir::Block *&>(v24, v26, v25);
  }

  mlir::OperationState::OperationState(v24, a2, v18);
  mlir::ValueRange::ValueRange(v26, *a3, (a3[1] - *a3) >> 3);
  mlir::ValueRange::ValueRange(v25, *a4, *(a4 + 8));
  mlir::pdl_interp::RecordMatchOp::build(a1, v24, v26[0], v26[1], v25[0], v25[1], *a5, *a6, *a7, *a8, *a9);
  v20 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v20 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::RecordMatchOp,void>::id)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  mlir::OperationState::~OperationState(v24);
  return v21;
}

void mlir::OpBuilder::create<mlir::pdl_interp::FuncOp,char const(&)[23],mlir::FunctionType>(mlir::StringAttr **a1, uint64_t a2, const char *a3, uint64_t *a4)
{
  v15[38] = *MEMORY[0x277D85DE8];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::FuncOp,void>::id, Context);
  if (v10)
  {
    mlir::OperationState::OperationState(v15, a2, v9);
    v11 = strlen(a3);
    mlir::pdl_interp::FuncOp::build(a1, v15, a3, v11, *a4, 0, 0);
  }

  mlir::OpBuilder::create<mlir::pdl_interp::FuncOp,llvm::StringRef,mlir::FunctionType,std::nullopt_t const&>(v15, v14, v13);
}

uint64_t anonymous namespace::PatternLowering::generateRewriter(mlir::pdl::PatternOp,llvm::SmallVectorImpl<mlir::pdl_to_pdl_interp::Position *> &)::$_0::operator()(uint64_t *a1, unint64_t a2)
{
  v24 = a2;
  v3 = a1[1];
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](*a1, &v24);
  result = *v4;
  if (!*v4)
  {
    DefiningOp = mlir::Value::getDefiningOp(&v24);
    v7 = *(*(DefiningOp + 48) + 16);
    if (DefiningOp && v7 == &mlir::detail::TypeIDResolver<mlir::pdl::AttributeOp,void>::id)
    {
      v23 = *(DefiningOp + 16 * ((*(DefiningOp + 44) >> 23) & 1) + 64);
      if (v23)
      {
        v8 = mlir::OpBuilder::create<mlir::pdl_interp::CreateAttributeOp,mlir::Attribute const&>(v3, *(DefiningOp + 24), &v23);
LABEL_14:
        result = v8 - 16;
        *v4 = result;
        return result;
      }
    }

    else if (DefiningOp && v7 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeOp,void>::id)
    {
      v23 = *(DefiningOp + 16 * ((*(DefiningOp + 44) >> 23) & 1) + 64);
      if (v23)
      {
        v8 = mlir::OpBuilder::create<mlir::pdl_interp::CreateTypeOp,mlir::TypeAttr &>(v3, *(DefiningOp + 24), &v23);
        goto LABEL_14;
      }
    }

    else if (DefiningOp)
    {
      if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl::TypesOp,void>::id)
      {
        v23 = *(DefiningOp + 16 * ((*(DefiningOp + 44) >> 23) & 1) + 64);
        if (v23)
        {
          v9 = *(DefiningOp + 24);
          v22 = *(DefiningOp - 8) & 0xFFFFFFFFFFFFFFF8;
          v8 = mlir::OpBuilder::create<mlir::pdl_interp::CreateTypesOp,mlir::pdl::RangeType,mlir::ArrayAttr &>(v3, v9, &v22, &v23);
          goto LABEL_14;
        }
      }
    }

    v10 = *(v3 + 216);
    if (v10)
    {
      v11 = *(v3 + 200);
      v12 = 0x9DDFEA08EB382D69 * ((8 * v24 - 0xAE502812AA7333) ^ HIDWORD(v24));
      v13 = 0x9DDFEA08EB382D69 * (HIDWORD(v24) ^ (v12 >> 47) ^ v12);
      LODWORD(v12) = -348639895 * ((v13 >> 47) ^ v13);
      v14 = v10 - 1;
      v15 = v12 & (v10 - 1);
      v16 = *(v11 + 16 * v15);
      if (v24 == v16)
      {
LABEL_17:
        v17 = *(v11 + 16 * v15 + 8);
        v18 = a1[2];
        v19 = *(v18 + 8);
        if (v19 < *(v18 + 12))
        {
          goto LABEL_18;
        }

        goto LABEL_24;
      }

      v20 = 1;
      while (v16 != -4096)
      {
        v21 = v15 + v20++;
        v15 = v21 & v14;
        v16 = *(v11 + 16 * v15);
        if (v24 == v16)
        {
          goto LABEL_17;
        }
      }
    }

    v17 = 0;
    v18 = a1[2];
    v19 = *(v18 + 8);
    if (v19 < *(v18 + 12))
    {
LABEL_18:
      *(*v18 + 8 * v19) = v17;
      ++*(v18 + 8);
      mlir::Value::getLoc(&v24);
      mlir::Block::addArgument();
    }

LABEL_24:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::ApplyRewriteOp,mlir::TypeRange,mlir::StringAttr &,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v22[5] = *MEMORY[0x277D85DE8];
  v19 = a2;
  Context = mlir::Attribute::getContext(&v19);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::ApplyRewriteOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::ApplyRewriteOp,mlir::TypeRange,mlir::StringAttr &,llvm::SmallVector<mlir::Value,6u> &>(v21, v22, v20);
  }

  mlir::OperationState::OperationState(v21, a2, v11);
  v14 = *a3;
  v13 = a3[1];
  v15 = *a4;
  mlir::ValueRange::ValueRange(v22, *a5, *(a5 + 8));
  mlir::pdl_interp::ApplyRewriteOp::build(a1, v21, v14, v13, v15, v22[0], v22[1]);
  v16 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v16 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::ApplyRewriteOp,void>::id)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v17;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::CreateTypesOp,mlir::pdl::RangeType,mlir::ArrayAttr &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateTypesOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::CreateTypesOp,mlir::ArrayAttr>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::pdl_interp::CreateTypesOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateTypesOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::ApplyRewriteOp,mlir::ValueTypeRange<mlir::ResultRange>,mlir::StringAttr,llvm::SmallVector<mlir::Value,2u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::ApplyRewriteOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::ApplyRewriteOp,mlir::TypeRange,mlir::StringAttr &,llvm::SmallVector<mlir::Value,6u> &>(v21, &v23, v22);
  }

  mlir::OperationState::OperationState(v21, a2, v11);
  NextResultAtOffset = *a3;
  v14 = a3[1];
  v15 = a3[3];
  if (v14)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v14);
  }

  mlir::ValueRange::ValueRange(&v23, NextResultAtOffset, v15 - v14);
  mlir::TypeRange::TypeRange(v22, v23, v24);
  v16 = *a4;
  mlir::ValueRange::ValueRange(&v23, *a5, *(a5 + 8));
  mlir::pdl_interp::ApplyRewriteOp::build(a1, v21, v22[0], v22[1], v16, v23, v24);
  v17 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::ApplyRewriteOp,void>::id)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v18;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::EraseOp,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x277D85DE8];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::EraseOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::EraseOp,mlir::Value>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::pdl_interp::EraseOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::EraseOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::CreateOperationOp,llvm::StringRef,llvm::SmallVector<mlir::Value,2u> &,BOOL &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::Value,4u> &,mlir::ArrayAttr>(mlir::MLIRContext **a1, uint64_t a2, size_t *a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v30[5] = *MEMORY[0x277D85DE8];
  v26 = a2;
  Context = mlir::Attribute::getContext(&v26);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateOperationOp,void>::id, Context);
  if ((v18 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::CreateOperationOp,llvm::StringRef,llvm::SmallVector<mlir::Value,2u> &,BOOL &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::Value,4u> &,mlir::ArrayAttr>(v28, v30, v29);
  }

  mlir::OperationState::OperationState(v28, a2, v17);
  v20 = *a3;
  v19 = a3[1];
  mlir::ValueRange::ValueRange(v30, *a4, *(a4 + 8));
  v21 = *a5;
  mlir::ValueRange::ValueRange(v29, *a6, *(a6 + 8));
  mlir::ValueRange::ValueRange(v27, *a7, *(a7 + 8));
  mlir::pdl_interp::CreateOperationOp::build(a1, v28, v20, v19, v30[0], v30[1], v21, v22, v29[0], v29[1], v27[0], v27[1], *a8);
  v23 = mlir::OpBuilder::create(a1, v28);
  if (*(*(v23 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateOperationOp,void>::id)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  mlir::OperationState::~OperationState(v28);
  return v24;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::GetResultsOp,mlir::Value &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x277D85DE8];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetResultsOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::GetResultsOp,mlir::Type,mlir::Value &,std::optional<unsigned int>>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::pdl_interp::GetResultsOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetResultsOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::GetValueTypeOp,mlir::pdl_interp::GetResultsOp &>(mlir::MLIRContext **a1, uint64_t a2, void *a3)
{
  v15[38] = *MEMORY[0x277D85DE8];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetValueTypeOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::GetValueTypeOp,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::pdl_interp::GetValueTypeOp::build(a1, v15, *a3 - 16);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetValueTypeOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::GetResultsOp,mlir::Type &,mlir::Value &,unsigned long>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned int *a5)
{
  v19[38] = *MEMORY[0x277D85DE8];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetResultsOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::GetResultsOp,mlir::Type,mlir::Value &,std::optional<unsigned int>>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::pdl_interp::GetResultsOp::build(a1, v19, *a3, *a4, *a5 | 0x100000000);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetResultsOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::CreateRangeOp,mlir::pdl::RangeType,llvm::SmallVector<mlir::Value,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateRangeOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::CreateRangeOp,mlir::pdl::RangeType,llvm::SmallVector<mlir::Value,4u> &>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = *a3;
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::pdl_interp::CreateRangeOp::build(a1, v17, v11, v18[0], v18[1]);
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateRangeOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v13;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::ReplaceOp,mlir::Value,llvm::SmallVector<mlir::Value,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::ReplaceOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::ReplaceOp,mlir::Value,llvm::SmallVector<mlir::Value,4u> &>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = *a3;
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::pdl_interp::ReplaceOp::build(a1, v17, v11, v18[0], v18[1]);
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::ReplaceOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v13;
}

int32x2_t **llvm::ScopedHashTableScope<mlir::pdl_to_pdl_interp::Position *,mlir::Value,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::MallocAllocator>::~ScopedHashTableScope(int32x2_t **result)
{
  v1 = result;
  (*result)[3] = result[1];
  v2 = result[2];
  if (v2)
  {
    v3 = *result;
    if (*(v2 + 1))
    {
      *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](v3, v2 + 2) = *(v2 + 1);
    }

    else
    {
      v4 = v3[2].i32[0];
      if (v4)
      {
        v5 = *v3;
        v6 = *(v2 + 2);
        v7 = v4 - 1;
        v8 = ((v6 >> 4) ^ (v6 >> 9)) & (v4 - 1);
        v9 = *(*v3 + 16 * v8);
        if (v6 == v9)
        {
LABEL_8:
          *(*&v5 + 16 * v8) = -8192;
          v3[1] = vadd_s32(v3[1], 0x1FFFFFFFFLL);
        }

        else
        {
          v10 = 1;
          while (v9 != -4096)
          {
            v11 = v8 + v10++;
            v8 = v11 & v7;
            v9 = *(*&v5 + 16 * v8);
            if (v6 == v9)
            {
              goto LABEL_8;
            }
          }
        }
      }
    }

    v1[2] = *v2;
    llvm::deallocate_buffer(v2, 0x20);
  }

  return result;
}

uint64_t mlir::pdl_to_pdl_interp::Position::getOperationDepth(uint64_t this)
{
  while (!this || *(this + 16))
  {
    this = *(this + 8);
    if (!this)
    {
      return this;
    }
  }

  return *(this + 32);
}

__n128 mlir::pdl_to_pdl_interp::AttributePosition::AttributePosition(uint64_t a1, __n128 *a2)
{
  *(a1 + 16) = 3;
  *a1 = &unk_2868673D0;
  *(a1 + 8) = 0;
  result = *a2;
  *(a1 + 24) = *a2;
  v3 = a2->n128_u64[0];
  *a1 = &unk_286867298;
  *(a1 + 8) = v3;
  return result;
}

{
  *(a1 + 16) = 3;
  *a1 = &unk_2868673D0;
  *(a1 + 8) = 0;
  result = *a2;
  *(a1 + 24) = *a2;
  v3 = a2->n128_u64[0];
  *a1 = &unk_286867298;
  *(a1 + 8) = v3;
  return result;
}

__n128 mlir::pdl_to_pdl_interp::OperandPosition::OperandPosition(uint64_t a1, __n128 *a2)
{
  *(a1 + 16) = 1;
  *a1 = &unk_2868673F0;
  *(a1 + 8) = 0;
  result = *a2;
  *(a1 + 24) = *a2;
  v3 = a2->n128_u64[0];
  *a1 = &unk_2868672B8;
  *(a1 + 8) = v3;
  return result;
}

{
  *(a1 + 16) = 1;
  *a1 = &unk_2868673F0;
  *(a1 + 8) = 0;
  result = *a2;
  *(a1 + 24) = *a2;
  v3 = a2->n128_u64[0];
  *a1 = &unk_2868672B8;
  *(a1 + 8) = v3;
  return result;
}

__n128 mlir::pdl_to_pdl_interp::OperandGroupPosition::OperandGroupPosition(uint64_t a1, __n128 *a2)
{
  *(a1 + 16) = 2;
  *a1 = &unk_286867410;
  *(a1 + 8) = 0;
  result = *a2;
  *(a1 + 40) = a2[1].n128_u64[0];
  *(a1 + 24) = result;
  v3 = a2->n128_u64[0];
  *a1 = &unk_2868672D8;
  *(a1 + 8) = v3;
  return result;
}

{
  *(a1 + 16) = 2;
  *a1 = &unk_286867410;
  *(a1 + 8) = 0;
  result = *a2;
  *(a1 + 40) = a2[1].n128_u64[0];
  *(a1 + 24) = result;
  v3 = a2->n128_u64[0];
  *a1 = &unk_2868672D8;
  *(a1 + 8) = v3;
  return result;
}

void mlir::pdl_to_pdl_interp::MatcherNode::generateMatcherTree(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v30[80] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 40);
  v6 = *(a1 + 44);
  v28 = v30;
  v29 = 0x1000000000;
  mlir::Region::getOps<mlir::pdl::PatternOp>((((a1 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * v7), &v23);
  v19 = v23;
  v20 = v24;
  v21 = v25;
  v22 = v26;
  if (v24 != v27)
  {
    ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v24);
    v17 = 0;
    v18 = (*(&v22 + 1))(ValuePtr);
    __p[0] = 0;
    __p[1] = 0;
    buildPredicateList(v18, a2, __p, a3);
  }

  if (v29)
  {
    v9 = v28;
    while (1)
    {
      v10 = v9[2];
      if (v10 != v9[3])
      {
        break;
      }

      v9 += 5;
      if (v9 == (v28 + 40 * v29))
      {
        operator new();
      }
    }

    v11 = v10[1];
    *&v23 = *v10;
    *(&v23 + 1) = v11;
    *&v24 = 0;
    DWORD2(v24) = 0;
    v25 = 0uLL;
    LODWORD(v26) = 0;
    __p[0] = 0;
    buffer = llvm::allocate_buffer(0xE00uLL, 8uLL);
    *buffer = -4096;
    buffer[1] = -4096;
    buffer[2] = 0;
    *(buffer + 6) = 0;
    buffer[4] = 0;
    buffer[5] = 0;
    *(buffer + 12) = 0;
    llvm::deallocate_buffer(0, 0);
  }

  *a4 = 0;
  foldSwitchToBool(a4);
  v13 = a4;
  do
  {
    v14 = *v13;
    v13 = (*v13 + 24);
  }

  while (v14);
  operator new();
}

void foldSwitchToBool(void *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = a1;
    while (1)
    {
      v5 = *(v1 + 40);
      {
        if (v5 == mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::SwitchNode,void>::resolveTypeID(void)::id)
        {
          goto LABEL_10;
        }
      }

      else
      {
        foldSwitchToBool();
        if (v5 == mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::SwitchNode,void>::resolveTypeID(void)::id)
        {
LABEL_10:
          v8 = *(v1 + 80);
          if (v8)
          {
            v9 = *(v1 + 72) + 8;
            v10 = 16 * v8;
            do
            {
              foldSwitchToBool(v9);
              v9 += 16;
              v10 -= 16;
            }

            while (v10);
            if (*(v1 + 80) == 1)
            {
              operator new();
            }
          }

          goto LABEL_3;
        }
      }

      v6 = *v2;
      v7 = *(*v2 + 40);
      {
        break;
      }

      if (v7 == mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::BoolNode,void>::resolveTypeID(void)::id)
      {
        goto LABEL_8;
      }

LABEL_3:
      v3 = *v2;
      v4 = *(v3 + 24);
      v2 = (v3 + 24);
      v1 = v4;
      if (!v4)
      {
        return;
      }
    }

    foldSwitchToBool();
    if (v7 != mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::BoolNode,void>::resolveTypeID(void)::id)
    {
      goto LABEL_3;
    }

LABEL_8:
    foldSwitchToBool(v6 + 56);
    goto LABEL_3;
  }
}