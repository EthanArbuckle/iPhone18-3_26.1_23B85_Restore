uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *>(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4)
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
        v10 = v8[2];
        if (*v8 < v10 || v10 >= *v8 && v8[1] < v8[3])
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v11 = *v8;
      if (*v8 >= *a4 && (*a4 < v11 || v8[1] >= a4[1]))
      {
        v12 = *a4;
        v13 = a4[1];
        *a4 = v11;
        a4[1] = v8[1];
        if (v5 >= v7)
        {
          while (1)
          {
            v15 = 2 * v7;
            v7 = (2 * v7) | 1;
            v14 = (result + 8 * v7);
            v16 = v15 + 2;
            if (v16 < a3)
            {
              v17 = v14[2];
              if (*v14 < v17 || v17 >= *v14 && v14[1] < v14[3])
              {
                v14 += 2;
                v7 = v16;
              }
            }

            v18 = *v14;
            if (*v14 < v12 || v18 <= v12 && v14[1] < v13)
            {
              break;
            }

            *v8 = v18;
            v8[1] = v14[1];
            v8 = v14;
            if (v5 < v7)
            {
              goto LABEL_13;
            }
          }
        }

        v14 = v8;
LABEL_13:
        *v14 = v12;
        v14[1] = v13;
      }
    }
  }

  return result;
}

unsigned int *std::__pop_heap[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::pair<unsigned int,int> *>(unsigned int *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = 0;
    v5 = *result;
    v6 = result;
    do
    {
      v7 = v6;
      v8 = &v6[2 * v4];
      v6 = v8 + 2;
      v9 = 2 * v4;
      v4 = (2 * v4) | 1;
      v10 = v9 + 2;
      if (v10 < a4)
      {
        v11 = v8[4];
        v12 = v8[2];
        if (v12 < v11 || v11 >= v12 && v8[3] < v8[5])
        {
          v6 = v8 + 4;
          v4 = v10;
        }
      }

      *v7 = *v6;
      v7[1] = v6[1];
    }

    while (v4 <= ((a4 - 2) >> 1));
    if (v6 == (a2 - 8))
    {
      *v6 = v5;
    }

    else
    {
      *v6 = *(a2 - 8);
      v6[1] = *(a2 - 4);
      *(a2 - 8) = v5;
      v13 = (v6 - result + 8) >> 3;
      v14 = v13 - 2;
      if (v13 >= 2)
      {
        v15 = v14 >> 1;
        v16 = &result[2 * (v14 >> 1)];
        v17 = *v16;
        if (*v16 < *v6 || *v6 >= v17 && v16[1] < v6[1])
        {
          v18 = *v6;
          v19 = v6[1];
          *v6 = v17;
          v6[1] = v16[1];
          if (v14 >= 2)
          {
            while (1)
            {
              v22 = v15 - 1;
              v15 = (v15 - 1) >> 1;
              v20 = &result[2 * v15];
              v23 = *v20;
              if (*v20 < v18)
              {
                v21 = v20[1];
              }

              else
              {
                if (v23 > v18)
                {
                  break;
                }

                v21 = v20[1];
                if (v21 >= v19)
                {
                  break;
                }
              }

              *v16 = v23;
              v16[1] = v21;
              v16 = &result[2 * v15];
              if (v22 <= 1)
              {
                goto LABEL_15;
              }
            }
          }

          v20 = v16;
LABEL_15:
          *v20 = v18;
          v20[1] = v19;
        }
      }
    }
  }

  return result;
}

uint64_t mlir::AffineExprVisitor<mlir::WalkResult mlir::AffineExpr::walk<mlir::WalkResult>(mlir::AffineExpr,llvm::function_ref<mlir::WalkResult ()(mlir::AffineExpr)>)::AffineExprWalker,mlir::WalkResult>::walkOperandsPostOrder(uint64_t a1, uint64_t a2)
{
  result = mlir::AffineExprVisitor<mlir::WalkResult mlir::AffineExpr::walk<mlir::WalkResult>(mlir::AffineExpr,llvm::function_ref<mlir::WalkResult ()(mlir::AffineExpr)>)::AffineExprWalker,mlir::WalkResult>::walkPostOrder(a1, *(a2 + 16));
  if (result)
  {
    return mlir::AffineExprVisitor<mlir::WalkResult mlir::AffineExpr::walk<mlir::WalkResult>(mlir::AffineExpr,llvm::function_ref<mlir::WalkResult ()(mlir::AffineExpr)>)::AffineExprWalker,mlir::WalkResult>::walkPostOrder(a1, *(a2 + 24)) != 0;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>,mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>::try_emplace<mlir::AffineExpr>@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
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
  v11 = (*result + 16 * v10);
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
      v11 = (v6 + 16 * (v18 & v9));
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
        v11[1] = *a3;
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
    llvm::DenseMap<mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::LookupBucketFor<mlir::Value>(v19, a2, &v22);
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

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::AffineConstantExprStorage * mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>,mlir::TypeID,long long &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 24;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 24;
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
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 24, 24, 3);
    a1 = v8;
  }

  else
  {
    *a2 = v4;
  }

  *(Slow + 8) = 5;
  *(Slow + 16) = *v2;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), Slow);
  }

  return Slow;
}

const char *llvm::getTypeName<mlir::detail::AffineConstantExprStorage>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::detail::AffineConstantExprStorage]";
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

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::AffineBinaryOpExprStorage * mlir::StorageUniquer::get<mlir::detail::AffineBinaryOpExprStorage,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&>(llvm::function_ref<void ()(mlir::detail::AffineBinaryOpExprStorage *)>,mlir::TypeID,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void *a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 32;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 32;
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
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 32, 32, 3);
    a1 = v9;
  }

  else
  {
    *a2 = v4;
  }

  *(Slow + 8) = *v2;
  v6 = *(v2 + 8);
  *(Slow + 16) = v6;
  *(Slow + 24) = *(v2 + 16);
  *Slow = *v6;
  v7 = a1[1];
  if (*v7)
  {
    (*v7)(*(v7 + 8), Slow);
  }

  return Slow;
}

const char *llvm::getTypeName<mlir::detail::AffineBinaryOpExprStorage>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::detail::AffineBinaryOpExprStorage]";
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

void **std::vector<llvm::SmallVector<long long,8u>>::__emplace_back_slow_path<llvm::SmallVector<long long,32u>>(void ***a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v5 = 0x333333333333333;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x333333333333333)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v6 = (16 * ((a1[1] - *a1) >> 4));
  *v6 = v6 + 2;
  v6[1] = 0x800000000;
  if (*(a2 + 8))
  {
    llvm::SmallVectorImpl<long long>::operator=(80 * v2, a2);
  }

  v7 = *a1;
  v8 = a1[1];
  v9 = (v6 - (v8 - *a1));
  v10 = (v6 + 10);
  if (v8 != *a1)
  {
    v11 = 0;
    v12 = -16 * ((v8 - *a1) >> 4) + 80 * v2;
    do
    {
      v13 = (v12 + v11 * 8);
      *v13 = v12 + v11 * 8 + 16;
      v13[1] = 0x800000000;
      if (LODWORD(v7[v11 + 1]))
      {
        llvm::SmallVectorImpl<long long>::operator=(v13, &v7[v11]);
      }

      v11 += 10;
    }

    while (&v7[v11] != v8);
    do
    {
      v16 = *v7;
      v15 = v7 + 2;
      v14 = v16;
      if (v16 != v15)
      {
        free(v14);
      }

      v7 = (v15 + 8);
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v9;
  a1[1] = v10;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v10;
}

uint64_t mlir::AffineMap::getConstantMap(mlir::AffineMap *this, mlir::MLIRContext *a2, mlir::MLIRContext *a3)
{
  AffineConstantExpr = mlir::getAffineConstantExpr(this, a2, a3);

  return mlir::AffineMap::get(0, 0, AffineConstantExpr);
}

uint64_t mlir::AffineMap::getMinorIdentityMap(mlir::AffineMap *this, unsigned int a2, mlir::MLIRContext *a3, mlir::MLIRContext *a4)
{
  v6 = this;
  MultiDimIdentityMap = mlir::AffineMap::getMultiDimIdentityMap(this, a3, a3);
  v8 = *(MultiDimIdentityMap + 8);
  v9 = v8 - a2;
  if (v8 <= a2)
  {
    v9 = 0;
  }

  v10 = MultiDimIdentityMap + 8 * v9;
  if (v8 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = v8;
  }

  return mlir::AffineMap::get(v6, 0, v10 + 24, v11, a3);
}

uint64_t mlir::AffineMap::getMultiDimIdentityMap(mlir::AffineMap *this, mlir::MLIRContext *a2, mlir::MLIRContext *a3)
{
  v4 = this;
  v10[4] = *MEMORY[0x277D85DE8];
  v9 = 0;
  if (this >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (this)
  {
    v5 = 0;
    do
    {
      AffineDimExpr = mlir::getAffineDimExpr(v5, a2, a3);
      if (v9 >= 4uLL)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v10[v9] = AffineDimExpr;
      v7 = ++v9;
      v5 = (v5 + 1);
    }

    while (v4 != v5);
  }

  else
  {
    v7 = 0;
  }

  return mlir::AffineMap::get(v4, 0, v10, v7, a2);
}

uint64_t mlir::AffineMap::getFilteredIdentityMap(mlir::MLIRContext *a1, mlir::AffineMap *this, mlir::MLIRContext *a3, uint64_t a4)
{
  MultiDimIdentityMap = mlir::AffineMap::getMultiDimIdentityMap(this, a1, a3);
  v18 = 1;
  v19 = MultiDimIdentityMap;
  if (this > 0x39)
  {
    operator new();
  }

  v8 = (this << 58) | 1;
  v9 = *(MultiDimIdentityMap + 8);
  if (v9)
  {
    v10 = 0;
    v11 = 8 * v9;
    v12 = MultiDimIdentityMap + 24;
    do
    {
      mlir::AffineDimExpr::AffineDimExpr(&v20, *(v12 + 8 * v10));
      if ((a3)(a4, v20))
      {
        if (v8)
        {
          v8 = ((2 * ~((-1 << (v8 >> 58)) | (1 << v10))) | 0xFC00000000000000) & v8 | 1;
          goto LABEL_8;
        }

        v13 = v10 >> 6;
        v14 = *v8;
        v15 = *(*v8 + 8 * v13) & ~(1 << v10);
      }

      else
      {
        if (v8)
        {
          v8 = v8 & 0xFC00000000000001 | (2 * (((1 << v10) | (v8 >> 1)) & ~(-1 << (v8 >> 58))));
          goto LABEL_8;
        }

        v13 = v10 >> 6;
        v14 = *v8;
        v15 = *(*v8 + 8 * v13) | (1 << v10);
      }

      v14[v13] = v15;
LABEL_8:
      ++v10;
      v11 -= 8;
    }

    while (v11);
  }

  v18 = v8;
  result = mlir::AffineMap::dropResults(&v19, &v18);
  if ((v8 & 1) == 0 && v8)
  {
    v17 = result;
    if (*v8 != v8 + 16)
    {
      free(*v8);
    }

    MEMORY[0x259C63180](v8, 0x1080C40EF38A13ELL);
    return v17;
  }

  return result;
}

uint64_t mlir::AffineMap::dropResults(int **this, const llvm::SmallBitVector *a2)
{
  v24[4] = *MEMORY[0x277D85DE8];
  v4 = (*this)[2];
  if (v4 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v4)
  {
    memcpy(v24, *this + 6, 8 * v4);
    v5 = v4;
    v23 = v4;
    v6 = *a2;
    if ((*a2 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v12 = (v6 >> 1) & ~(-1 << (v6 >> 58));
    if (v12)
    {
      v11 = __clz(v12) ^ 0x3F;
      goto LABEL_14;
    }

    return mlir::AffineMap::get(**this, (*this)[1], v24, v5, *(*this + 2));
  }

  v5 = 0;
  v23 = 0;
  v6 = *a2;
  if (*a2)
  {
    goto LABEL_10;
  }

LABEL_5:
  v7 = *(v6 + 64);
  if (v7)
  {
    v8 = -v7;
    v9 = (v7 - 1) >> 6;
    v10 = *(*v6 + 8 * v9) & (0xFFFFFFFFFFFFFFFFLL >> v8);
    if (v10)
    {
      v11 = ~__clz(v10) + ((v9 + 1) << 6);
      if (v11 != -1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      while (v9)
      {
        v20 = v9 - 1;
        v21 = *(*v6 - 8 + 8 * v9--);
        if (v21)
        {
          v11 = ~__clz(v21) + ((v20 + 1) << 6);
          if (v11 != -1)
          {
            while (1)
            {
              while (1)
              {
LABEL_14:
                v13 = &v24[v11];
                v14 = &v24[v5];
                if (v14 != (v13 + 1))
                {
                  memmove(v13, v13 + 1, v14 - (v13 + 1));
                  v5 = v23;
                  v6 = *a2;
                }

                v23 = --v5;
                if ((v6 & 1) == 0)
                {
                  break;
                }

                if (v11)
                {
                  v19 = (0xFFFFFFFFFFFFFFFFLL >> -v11) & (v6 >> 1) & ~(-1 << (v6 >> 58));
                  if (v19)
                  {
                    v11 = __clz(v19) ^ 0x3F;
                    if (v11 != -1)
                    {
                      continue;
                    }
                  }
                }

                return mlir::AffineMap::get(**this, (*this)[1], v24, v5, *(*this + 2));
              }

              if (!v11)
              {
                return mlir::AffineMap::get(**this, (*this)[1], v24, v5, *(*this + 2));
              }

              v15 = (v11 - 1) >> 6;
              v16 = *(*v6 + 8 * v15) & (0xFFFFFFFFFFFFFFFFLL >> -v11);
              if (!v16)
              {
                break;
              }

              v11 = ~__clz(v16) + ((v15 + 1) << 6);
              if (v11 == -1)
              {
                return mlir::AffineMap::get(**this, (*this)[1], v24, v5, *(*this + 2));
              }
            }

            while (v15)
            {
              v17 = v15 - 1;
              v18 = *(*v6 - 8 + 8 * v15--);
              if (v18)
              {
                v11 = ~__clz(v18) + ((v17 + 1) << 6);
                if (v11 != -1)
                {
                  goto LABEL_14;
                }

                return mlir::AffineMap::get(**this, (*this)[1], v24, v5, *(*this + 2));
              }
            }
          }

          return mlir::AffineMap::get(**this, (*this)[1], v24, v5, *(*this + 2));
        }
      }
    }
  }

  return mlir::AffineMap::get(**this, (*this)[1], v24, v5, *(*this + 2));
}

BOOL mlir::AffineMap::isMinorIdentity(unsigned int **this, uint64_t a2, mlir::MLIRContext *a3)
{
  v3 = **this;
  v4 = (*this)[2];
  if (v3 < v4)
  {
    return 0;
  }

  v7 = *(*this + 2);
  MultiDimIdentityMap = mlir::AffineMap::getMultiDimIdentityMap(**this, v7, a3);
  v9 = *(MultiDimIdentityMap + 8);
  v10 = v9 - v4;
  if (v9 <= v4)
  {
    v10 = 0;
  }

  v11 = MultiDimIdentityMap + 8 * v10;
  if (v9 >= v4)
  {
    v12 = v4;
  }

  else
  {
    v12 = v9;
  }

  return *this == mlir::AffineMap::get(v3, 0, v11 + 24, v12, v7);
}

void *mlir::AffineMap::getBroadcastDims@<X0>(void *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = a2 + 16;
  *(a2 + 8) = 0xC00000000;
  v3 = *(*this + 8);
  if (v3)
  {
    v4 = 0;
    v5 = 8 * v3;
    v6 = *this + 24;
    do
    {
      v7 = *(v6 + 8 * v4);
      v9 = v7;
      if (mlir::AffineExpr::getKind(&v9) == 5)
      {
        this = mlir::AffineConstantExpr::AffineConstantExpr(&v9, v7);
        if (v9)
        {
          goto LABEL_9;
        }
      }

      else
      {
        this = mlir::AffineConstantExpr::AffineConstantExpr(&v9, 0);
        if (v9)
        {
LABEL_9:
          this = mlir::AffineConstantExpr::getValue(&v9);
          if (!this)
          {
            v8 = *(a2 + 8);
            if (v8 >= *(a2 + 12))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            *(*a2 + 4 * v8) = v4;
            ++*(a2 + 8);
          }
        }
      }

      ++v4;
      v5 -= 8;
    }

    while (v5);
  }

  return this;
}

uint64_t mlir::AffineMap::isMinorIdentityWithBroadcasting(unsigned int **a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 8) = 0;
  }

  v3 = **a1;
  v4 = (*a1)[2];
  if (v3 < v4)
  {
    return 0;
  }

  if (v4)
  {
    v6 = 0;
    v7 = 8 * v4;
    v8 = (*a1 + 6);
    v9 = v3 - v4;
    do
    {
      v10 = *(v8 + 8 * v6);
      v14 = v10;
      if (mlir::AffineExpr::getKind(&v14) == 5)
      {
        mlir::AffineConstantExpr::AffineConstantExpr(&v14, v10);
        v13 = v14;
        if (v14)
        {
          goto LABEL_12;
        }
      }

      else
      {
        mlir::AffineConstantExpr::AffineConstantExpr(&v14, 0);
        v13 = v14;
        if (v14)
        {
LABEL_12:
          if (mlir::AffineConstantExpr::getValue(&v13))
          {
            return 0;
          }

          if (a2)
          {
            v11 = *(a2 + 8);
            if (v11 >= *(a2 + 12))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            *(*a2 + 4 * v11) = v6;
            ++*(a2 + 8);
          }

          goto LABEL_9;
        }
      }

      v14 = v10;
      if (mlir::AffineExpr::getKind(&v14) == 6)
      {
        mlir::AffineDimExpr::AffineDimExpr(&v14, v10);
        v12 = v14;
        if (!v14)
        {
          return 0;
        }
      }

      else
      {
        mlir::AffineDimExpr::AffineDimExpr(&v14, 0);
        v12 = v14;
        if (!v14)
        {
          return 0;
        }
      }

      if (v9 + v6 != mlir::AffineDimExpr::getPosition(&v12))
      {
        return 0;
      }

LABEL_9:
      ++v6;
      v7 -= 8;
    }

    while (v7);
  }

  return 1;
}

uint64_t mlir::AffineMap::isPermutationOfMinorIdentityWithBroadcasting(uint64_t a1, uint64_t a2)
{
  v35[6] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 8);
  v5 = *(*a1 + 4) + **a1;
  if (v5 >= v4)
  {
    v6 = v5 - v4;
  }

  else
  {
    v6 = 0;
  }

  *(a2 + 8) = 0;
  v33 = v35;
  v34 = 0xC00000000;
  if (v4)
  {
    if (*(a2 + 12) < v4)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    bzero(*a2, 4 * v4);
    *(a2 + 8) += v4;
    v7 = v3[2];
    v8 = v3[1] + *v3;
    if (v7 >= v8)
    {
      v9 = v7 - v8;
    }

    else
    {
      v9 = 0;
    }

    if (v8 <= v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = v8;
    }

    if (v10 <= 0x39)
    {
      goto LABEL_13;
    }

LABEL_22:
    operator new();
  }

  v7 = 0;
  if (v5)
  {
    v9 = 0;
  }

  else
  {
    v9 = -v5;
  }

  if (v5)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  if (v10 > 0x39)
  {
    goto LABEL_22;
  }

LABEL_13:
  v11 = (v10 << 58) | 1;
  if (!v7)
  {
LABEL_40:
    if (v34)
    {
      v17 = v33;
      v18 = v33 + 4 * v34;
      v19 = *a2;
      if (v11)
      {
        v24 = 0;
        v25 = v11 >> 58;
        do
        {
          v28 = v24;
          v26 = v24;
          if (v25 > v24)
          {
            do
            {
              if (((v11 >> 1) & ~(-1 << (v11 >> 58)) & (1 << v28)) == 0)
              {
                break;
              }

              ++v28;
            }

            while (v28 < v25);
            v26 = v28;
          }

          v27 = *v17;
          v17 += 4;
          v24 = v26 + 1;
          v19[v27] = v26;
        }

        while (v17 != v18);
      }

      else
      {
        v20 = 0;
        do
        {
          v22 = *(v11 + 64);
          if (v22 > v20)
          {
            while (((*(*v11 + 8 * (v20 >> 6)) >> v20) & 1) != 0)
            {
              if (v22 == ++v20)
              {
                v20 = *(v11 + 64);
                break;
              }
            }
          }

          v21 = *v17;
          v17 += 4;
          v19[v21] = v20++;
        }

        while (v17 != v18);
      }
    }

    v23 = 1;
    if ((v11 & 1) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_62;
  }

  v12 = 0;
  v13 = 8 * v7;
  v14 = v3 + 6;
  while (1)
  {
    v15 = *&v14[2 * v12];
    v32 = v15;
    if (mlir::AffineExpr::getKind(&v32) != 5)
    {
      break;
    }

    mlir::AffineConstantExpr::AffineConstantExpr(&v32, v15);
    v31 = v32;
    if (!v32)
    {
      goto LABEL_32;
    }

LABEL_28:
    if (mlir::AffineConstantExpr::getValue(&v31))
    {
      goto LABEL_48;
    }

    if (v34 >= HIDWORD(v34))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(v33 + v34) = v12;
    LODWORD(v34) = v34 + 1;
LABEL_25:
    ++v12;
    v13 -= 8;
    if (!v13)
    {
      goto LABEL_40;
    }
  }

  mlir::AffineConstantExpr::AffineConstantExpr(&v32, 0);
  v31 = v32;
  if (v32)
  {
    goto LABEL_28;
  }

LABEL_32:
  v32 = v15;
  if (mlir::AffineExpr::getKind(&v32) == 6)
  {
    mlir::AffineDimExpr::AffineDimExpr(&v32, v15);
    v30 = v32;
    if (!v32)
    {
      goto LABEL_48;
    }
  }

  else
  {
    mlir::AffineDimExpr::AffineDimExpr(&v32, 0);
    v30 = v32;
    if (!v32)
    {
      goto LABEL_48;
    }
  }

  if (mlir::AffineDimExpr::getPosition(&v30) >= v6)
  {
    v16 = mlir::AffineDimExpr::getPosition(&v30) - v6 + v9;
    *(*a2 + 4 * v12) = v16;
    if (v11)
    {
      v11 = v11 & 0xFC00000000000001 | (2 * (((1 << v16) | (v11 >> 1)) & ~(-1 << (v11 >> 58))));
    }

    else
    {
      *(*v11 + 8 * (v16 >> 6)) |= 1 << v16;
    }

    goto LABEL_25;
  }

LABEL_48:
  v23 = 0;
  if (v11)
  {
    goto LABEL_62;
  }

LABEL_58:
  if (v11)
  {
    if (*v11 != v11 + 16)
    {
      free(*v11);
    }

    MEMORY[0x259C63180](v11, 0x1080C40EF38A13ELL);
  }

LABEL_62:
  if (v33 != v35)
  {
    free(v33);
  }

  return v23;
}

uint64_t mlir::AffineMap::getPermutationMap(unsigned int *a1, mlir::MLIRContext *a2, mlir::MLIRContext *a3)
{
  v3 = a1;
  if (a2 >= 2)
  {
    v5 = a1 + 1;
    v4 = *a1;
    v6 = 4 * a2 - 4;
    v3 = a1;
    v7 = a1 + 1;
    do
    {
      v9 = *v7++;
      v8 = v9;
      v10 = v4 >= v9;
      if (v4 <= v9)
      {
        v4 = v8;
      }

      if (!v10)
      {
        v3 = v5;
      }

      v5 = v7;
      v6 -= 4;
    }

    while (v6);
  }

  return mlir::AffineMap::getMultiDimMapWithTargets(*v3 + 1, a1, a2, a3);
}

uint64_t mlir::AffineMap::getMultiDimMapWithTargets(int a1, unsigned int *a2, mlir::MLIRContext *a3, mlir::MLIRContext *a4)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v11 = 0;
  if (!a3)
  {
    return mlir::AffineMap::get(a1, 0, v12, 0, a4);
  }

  v7 = 4 * a3;
  do
  {
    AffineDimExpr = mlir::getAffineDimExpr(*a2, a4, a3);
    if (v11 >= 4uLL)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v12[v11] = AffineDimExpr;
    v9 = ++v11;
    ++a2;
    v7 -= 4;
  }

  while (v7);
  return mlir::AffineMap::get(a1, 0, v12, v9, a4);
}

uint64_t mlir::AffineMap::getPermutationMap(int32x4_t *a1, unint64_t a2, mlir::MLIRContext *a3)
{
  v29[4] = *MEMORY[0x277D85DE8];
  if (a2 >= 0xD)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (!a2)
  {
    v17 = 0;
    goto LABEL_11;
  }

  v6 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v6 < 7)
  {
    v4 = &v27;
    v5 = a1;
    do
    {
LABEL_9:
      v16 = *v5++;
      *v4++ = v16;
    }

    while (v5 != (a1 + 8 * a2));
    goto LABEL_10;
  }

  v7 = v6 + 1;
  v8 = (v6 + 1) & 0x3FFFFFFFFFFFFFF8;
  v4 = &v28[4 * v8 - 4];
  v5 = &a1->i64[v8];
  v9 = a1 + 2;
  v10 = v29;
  v11 = v8;
  do
  {
    v13 = v9[-2];
    v12 = v9[-1];
    v15 = *v9;
    v14 = v9[1];
    v9 += 4;
    v10[-1] = vuzp1q_s32(v13, v12);
    *v10 = vuzp1q_s32(v15, v14);
    v10 += 2;
    v11 -= 8;
  }

  while (v11);
  if (v7 != v8)
  {
    goto LABEL_9;
  }

LABEL_10:
  v17 = a2;
  if (a2 < 2)
  {
LABEL_11:
    v18 = &v27;
    return mlir::AffineMap::getMultiDimMapWithTargets(*v18 + 1, &v27, v17, a3);
  }

  v20 = v28;
  v19 = v27;
  v21 = 4 * a2 - 4;
  v18 = &v27;
  v22 = v28;
  do
  {
    v24 = *v22++;
    v23 = v24;
    v25 = v19 >= v24;
    if (v19 <= v24)
    {
      v19 = v23;
    }

    if (!v25)
    {
      v18 = v20;
    }

    v20 = v22;
    v21 -= 4;
  }

  while (v21);
  return mlir::AffineMap::getMultiDimMapWithTargets(*v18 + 1, &v27, v17, a3);
}

uint64_t mlir::AffineMap::inferFromExprList@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    v6 = result;
    v10 = -1;
    v11[0] = -1;
    v7 = (result + 16 * a2);
    v8 = result;
    do
    {
      if (*(v8 + 8))
      {
        v11[1] = v11;
        v11[2] = &v10;
        mlir::AffineExpr::walk<void>();
      }

      v8 += 16;
    }

    while (v8 != v7);
    *a4 = a4 + 16;
    *(a4 + 8) = 0x400000000;
    if (a2 >= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    do
    {
      result = mlir::AffineMap::get(LODWORD(v11[0]) + 1, v10 + 1, *v6, v6[1], a3);
      v9 = *(a4 + 8);
      if (v9 >= *(a4 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a4 + 8 * v9) = result;
      ++*(a4 + 8);
      v6 += 2;
    }

    while (v6 != v7);
  }

  else
  {
    *a4 = a4 + 16;
    *(a4 + 8) = 0x400000000;
  }

  return result;
}

{
  if (a2)
  {
    v6 = result;
    v10 = -1;
    v11[0] = -1;
    v7 = result + 48 * a2;
    v8 = result;
    do
    {
      if (*(v8 + 8))
      {
        v11[1] = v11;
        v11[2] = &v10;
        mlir::AffineExpr::walk<void>();
      }

      v8 += 48;
    }

    while (v8 != v7);
    *a4 = a4 + 16;
    *(a4 + 8) = 0x400000000;
    if (a2 >= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    do
    {
      result = mlir::AffineMap::get(LODWORD(v11[0]) + 1, v10 + 1, *v6, *(v6 + 8), a3);
      v9 = *(a4 + 8);
      if (v9 >= *(a4 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a4 + 8 * v9) = result;
      ++*(a4 + 8);
      v6 += 48;
    }

    while (v6 != v7);
  }

  else
  {
    *a4 = a4 + 16;
    *(a4 + 8) = 0x400000000;
  }

  return result;
}

unint64_t mlir::AffineMap::getLargestKnownDivisorOfMapExprs(mlir::AffineMap *this)
{
  v1 = *this;
  v2 = *(*this + 8);
  if (!v2)
  {
    return -1;
  }

  result = 0;
  v4 = v1 + 8 * v2 + 24;
  v5 = (v1 + 24);
  do
  {
    v6 = result;
    v14 = *v5;
    result = mlir::AffineExpr::getLargestKnownDivisor(&v14);
    v7 = result;
    v8 = v6 >= result;
    v9 = v6 == result;
    if (v6 < result)
    {
      result = v6;
    }

    if (!v9 && v8)
    {
      v7 = v6;
    }

    if (result)
    {
      v10 = v7 % result;
      if (v10)
      {
        v11 = v10 >> __clz(__rbit64(v10));
        v12 = result;
        do
        {
          v13 = v12 >> __clz(__rbit64(v12));
          v12 = v13 - v11;
          if (v11 > v13)
          {
            v12 = v11 - v13;
          }

          if (v11 >= v13)
          {
            v11 = v13;
          }
        }

        while (v12);
        result = v11 << __clz(__rbit64(v10 | result));
      }
    }

    else
    {
      result = v7;
    }

    ++v5;
  }

  while (v5 != v4);
  if (!result)
  {
    return -1;
  }

  return result;
}

uint64_t mlir::AffineMap::isIdentity(mlir::AffineMap *this)
{
  v1 = **this;
  if (v1 == *(*this + 8))
  {
    if (!v1)
    {
      return 1;
    }

    v2 = 0;
    v3 = *this + 24;
    while (1)
    {
      v4 = *(v3 + 8 * v2);
      v7 = v4;
      if (mlir::AffineExpr::getKind(&v7) == 6)
      {
        mlir::AffineDimExpr::AffineDimExpr(&v7, v4);
        v6 = v7;
        if (!v7)
        {
          return 0;
        }
      }

      else
      {
        mlir::AffineDimExpr::AffineDimExpr(&v7, 0);
        v6 = v7;
        if (!v7)
        {
          return 0;
        }
      }

      if (v2 != mlir::AffineDimExpr::getPosition(&v6))
      {
        break;
      }

      if (v1 == ++v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t mlir::AffineMap::isSymbolIdentity(mlir::AffineMap *this)
{
  v1 = *(*this + 4);
  if (v1 == *(*this + 8))
  {
    if (!v1)
    {
      return 1;
    }

    v2 = 0;
    v3 = *this + 24;
    while (1)
    {
      v4 = *(v3 + 8 * v2);
      v7 = v4;
      if (mlir::AffineExpr::getKind(&v7) == 6)
      {
        mlir::AffineDimExpr::AffineDimExpr(&v7, v4);
        v6 = v7;
        if (!v7)
        {
          return 0;
        }
      }

      else
      {
        mlir::AffineDimExpr::AffineDimExpr(&v7, 0);
        v6 = v7;
        if (!v7)
        {
          return 0;
        }
      }

      if (v2 != mlir::AffineDimExpr::getPosition(&v6))
      {
        break;
      }

      if (v1 == ++v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

BOOL mlir::AffineMap::isEmpty(mlir::AffineMap *this)
{
  v1 = *this;
  if (**this)
  {
    return 0;
  }

  if (v1[1])
  {
    return 0;
  }

  return v1[2] == 0;
}

BOOL mlir::AffineMap::isSingleConstant(mlir::AffineMap *this)
{
  v3 = *this;
  if (*(*this + 8) != 1)
  {
    return 0;
  }

  v5[1] = v1;
  v5[2] = v2;
  v5[0] = *(v3 + 24);
  return mlir::AffineExpr::getKind(v5) == 5;
}

BOOL mlir::AffineMap::isConstant(mlir::AffineMap *this)
{
  v1 = *(*this + 8);
  if (!v1)
  {
    return 1;
  }

  v2 = (*this + 24);
  v3 = 8 * v1 - 8;
  do
  {
    v4 = *v2++;
    v7 = v4;
    v6 = mlir::AffineExpr::getKind(&v7) == 5;
    result = v6;
    v6 = !v6 || v3 == 0;
    v3 -= 8;
  }

  while (!v6);
  return result;
}

uint64_t mlir::AffineMap::getConstantResults@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  v3 = *(*this + 8);
  if (v3)
  {
    v4 = 8 * v3;
    v5 = (*this + 24);
    do
    {
      while (1)
      {
        mlir::AffineConstantExpr::AffineConstantExpr(&v8, *v5);
        v7 = v8;
        this = mlir::AffineConstantExpr::getValue(&v7);
        v8 = this;
        v6 = *(a2 + 8);
        if (v6 >= *(a2 + 12))
        {
          break;
        }

        *(*a2 + 8 * v6) = this;
        *(a2 + 8) = v6 + 1;
        ++v5;
        v4 -= 8;
        if (!v4)
        {
          return this;
        }
      }

      this = llvm::SmallVectorTemplateBase<mlir::Block *,true>::growAndEmplaceBack<mlir::Block *&>(a2, &v8);
      ++v5;
      v4 -= 8;
    }

    while (v4);
  }

  return this;
}

uint64_t mlir::AffineMap::getResultPosition(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  if (mlir::AffineExpr::getKind(&v7) != 6)
  {
    return 0;
  }

  v4 = *(*a1 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  while (*(*a1 + 24 + 8 * v5) != a2)
  {
    if (v4 == ++v5)
    {
      return 0;
    }
  }

  return v5 | 0x100000000;
}

uint64_t mlir::AffineMap::constantFold(int **a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = 0x200000000;
  mlir::AffineMap::partialConstantFold(a1, a2, a3, &v18, a5);
  v8 = v19;
  if (!v19)
  {
    v15 = 0;
    v16 = v18;
    if (v18 == v20)
    {
      return v15;
    }

    goto LABEL_7;
  }

  v9 = v18;
  v10 = *(a4 + 8);
  if (v10 + v19 > *(a4 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v11 = (*a4 + 8 * v10);
  v12 = 8 * v19;
  do
  {
    v13 = *v9++;
    v14 = mlir::IndexType::get(*(*a1 + 2), v7);
    *v11++ = mlir::IntegerAttr::get(v14, v13);
    v12 -= 8;
  }

  while (v12);
  *(a4 + 8) += v8;
  v15 = 1;
  v16 = v18;
  if (v18 != v20)
  {
LABEL_7:
    free(v16);
  }

  return v15;
}

uint64_t mlir::AffineMap::partialConstantFold(int **a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v37[4] = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v30 = **a1;
  v31 = a2;
  v32 = a3;
  v33 = 0;
  v35 = v37;
  v36 = 0x400000000;
  v9 = v8[2];
  if (v9 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v9)
  {
    v10 = 8 * v8[2];
    v11 = (v8 + 6);
    while (1)
    {
      v12 = *v11;
      v34 = v12;
      if ((v14 & 1) == 0)
      {
        break;
      }

      v15 = v13;
      Context = mlir::AffineExpr::getContext(&v34);
      v18 = mlir::IndexType::get(Context, v17);
      v19 = mlir::IntegerAttr::get(v18, v15);
      v29 = v19;
      if (a5 && (v33 & 1) != 0)
      {
        goto LABEL_22;
      }

      if (!v19)
      {
        goto LABEL_17;
      }

      Int = mlir::IntegerAttr::getInt(&v29);
      v21 = mlir::Attribute::getContext(&v29);
      AffineConstantExpr = mlir::getAffineConstantExpr(Int, v21, v22);
      if (v36 >= HIDWORD(v36))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v35 + v36) = AffineConstantExpr;
      LODWORD(v36) = v36 + 1;
      if (a4)
      {
        v24 = mlir::IntegerAttr::getInt(&v29);
        v25 = *(a4 + 8);
        if (v25 >= *(a4 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*a4 + 8 * v25) = v24;
        ++*(a4 + 8);
      }

LABEL_6:
      ++v11;
      v10 -= 8;
      if (!v10)
      {
        v8 = *a1;
        goto LABEL_25;
      }
    }

    v29 = 0;
    if (a5 && (v33 & 1) != 0)
    {
LABEL_22:
      result = 0;
      *a5 = 1;
      v27 = v35;
      if (v35 != v37)
      {
        goto LABEL_26;
      }

      return result;
    }

LABEL_17:
    if (v36 >= HIDWORD(v36))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(v35 + v36) = v12;
    LODWORD(v36) = v36 + 1;
    if (a4)
    {
      *(a4 + 8) = 0;
      a4 = 0;
    }

    goto LABEL_6;
  }

LABEL_25:
  result = mlir::AffineMap::get(*v8, v8[1], v35, v36, *(v8 + 2));
  v27 = v35;
  if (v35 != v37)
  {
LABEL_26:
    v28 = result;
    free(v27);
    return v28;
  }

  return result;
}

uint64_t mlir::AffineMap::walkExprs(uint64_t result)
{
  if (*(*result + 8))
  {
    mlir::AffineExpr::walk<void>();
  }

  return result;
}

uint64_t mlir::AffineMap::replaceDimsAndSymbols(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, int a6, int a7)
{
  v25[8] = *MEMORY[0x277D85DE8];
  v23 = v25;
  v24 = 0x800000000;
  v14 = *a1;
  v15 = *(*a1 + 8);
  if (v15 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v15)
  {
    v16 = 8 * *(*a1 + 8);
    v17 = (v14 + 24);
    do
    {
      v22 = *v17;
      v18 = mlir::AffineExpr::replaceDimsAndSymbols(&v22, a2, a3, a4, a5);
      if (v24 >= HIDWORD(v24))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v23 + v24) = v18;
      v19 = v24 + 1;
      LODWORD(v24) = v24 + 1;
      ++v17;
      v16 -= 8;
    }

    while (v16);
    v14 = *a1;
  }

  else
  {
    v19 = v24;
  }

  result = mlir::AffineMap::get(a6, a7, v23, v19, *(v14 + 16));
  if (v23 != v25)
  {
    v21 = result;
    free(v23);
    return v21;
  }

  return result;
}

uint64_t mlir::AffineMap::replace(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v11 = v13;
  v12 = 0x400000000;
  v6 = *a1;
  v7 = *(*a1 + 8);
  if (v7 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v7)
  {
    v10 = *(v6 + 24);
    mlir::AffineExpr::replace(&v10, a2, a3);
  }

  result = mlir::AffineMap::get(a4, a5, v11, v12, *(v6 + 16));
  if (v11 != v13)
  {
    v9 = result;
    free(v11);
    return v9;
  }

  return result;
}

uint64_t mlir::AffineMap::replace(uint64_t *a1, uint64_t *a2, int a3, int a4)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v17 = v19;
  v18 = 0x400000000;
  v8 = *a1;
  v9 = *(*a1 + 8);
  if (v9 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v9)
  {
    v10 = 8 * *(*a1 + 8);
    v11 = (v8 + 24);
    do
    {
      v16 = *v11;
      v12 = mlir::AffineExpr::replace(&v16, a2);
      if (v18 >= HIDWORD(v18))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v17 + v18) = v12;
      v13 = v18 + 1;
      LODWORD(v18) = v18 + 1;
      ++v11;
      v10 -= 8;
    }

    while (v10);
    v8 = *a1;
  }

  else
  {
    v13 = v18;
  }

  result = mlir::AffineMap::get(a3, a4, v17, v13, *(v8 + 16));
  if (v17 != v19)
  {
    v15 = result;
    free(v17);
    return v15;
  }

  return result;
}

uint64_t mlir::AffineMap::replace(uint64_t *a1, uint64_t *a2)
{
  v15[4] = *MEMORY[0x277D85DE8];
  v13 = v15;
  v14 = 0x400000000;
  v4 = *a1;
  v5 = *(*a1 + 8);
  if (v5 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v5)
  {
    v6 = 8 * *(*a1 + 8);
    v7 = (v4 + 24);
    do
    {
      v11[0] = *v7;
      v8 = mlir::AffineExpr::replace(v11, a2);
      if (v14 >= HIDWORD(v14))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v13 + v14) = v8;
      LODWORD(v14) = v14 + 1;
      ++v7;
      v6 -= 8;
    }

    while (v6);
    v4 = *a1;
  }

  mlir::AffineMap::inferFromExprList(&v13, 1uLL, *(v4 + 16), v11);
  v9 = *v11[0];
  if (v11[0] != &v12)
  {
    free(v11[0]);
  }

  if (v13 != v15)
  {
    free(v13);
  }

  return v9;
}

uint64_t mlir::AffineMap::compose(uint64_t *a1, unsigned int *a2, mlir::MLIRContext *a3)
{
  v32[8] = *MEMORY[0x277D85DE8];
  v23 = a2;
  v5 = *(*a1 + 4);
  v6 = *a2;
  v7 = a2[1];
  v30 = v32;
  v31 = 0x800000000;
  if (v6)
  {
    if (v6 >= 9)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    bzero(v30, 8 * v6);
    v8 = 0;
    LODWORD(v31) = v6;
    do
    {
      *(v30 + v8) = mlir::getAffineDimExpr(v8, *(*a1 + 16), a3);
      v8 = (v8 + 1);
    }

    while (v6 != v8);
  }

  v9 = v7 + v5;
  v27 = v29;
  v28 = 0x800000000;
  if (v7)
  {
    if (v7 >= 9)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    bzero(v27, 8 * v7);
    LODWORD(v28) = v7;
  }

  if (v5 >= v9)
  {
    v12 = v27;
  }

  else
  {
    v10 = 0;
    do
    {
      AffineSymbolExpr = mlir::getAffineSymbolExpr(v5, *(*a1 + 16), a3);
      v12 = v27;
      *(v27 + v10) = AffineSymbolExpr;
      v10 += 8;
      v5 = (v5 + 1);
      LODWORD(v7) = v7 - 1;
    }

    while (v7);
    LODWORD(v7) = v28;
  }

  v13 = mlir::AffineMap::replaceDimsAndSymbols(&v23, v30, v31, v12, v7, v6, v9);
  v24 = v26;
  v25 = 0x800000000;
  v14 = *a1;
  v15 = *(*a1 + 8);
  if (v15 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v15)
  {
    v16 = 8 * *(*a1 + 8);
    v17 = (v14 + 24);
    do
    {
      v22 = *v17;
      v18 = mlir::AffineExpr::compose(&v22, v13);
      if (v25 >= HIDWORD(v25))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v24 + v25) = v18;
      v19 = v25 + 1;
      LODWORD(v25) = v25 + 1;
      ++v17;
      v16 -= 8;
    }

    while (v16);
  }

  else
  {
    v19 = v25;
  }

  v20 = mlir::AffineMap::get(v6, v9, v24, v19, *(a2 + 2));
  if (v24 != v26)
  {
    free(v24);
  }

  if (v27 != v29)
  {
    free(v27);
  }

  if (v30 != v32)
  {
    free(v30);
  }

  return v20;
}

void mlir::AffineMap::compose(uint64_t *a1@<X0>, mlir **a2@<X1>, mlir::MLIRContext *a3@<X2>, uint64_t a4@<X8>)
{
  v22[4] = *MEMORY[0x277D85DE8];
  v20 = v22;
  v21 = 0x400000000;
  if (a3 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7 = *(*a1 + 16);
  if (a3)
  {
    v8 = 8 * a3;
    do
    {
      AffineConstantExpr = mlir::getAffineConstantExpr(*a2, v7, a3);
      if (v21 >= HIDWORD(v21))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v20 + v21) = AffineConstantExpr;
      v10 = v21 + 1;
      LODWORD(v21) = v21 + 1;
      ++a2;
      v8 -= 8;
    }

    while (v8);
  }

  else
  {
    v10 = v21;
  }

  v11 = mlir::AffineMap::get(0, 0, v20, v10, v7);
  v13 = mlir::AffineMap::compose(a1, v11, v12);
  *a4 = a4 + 16;
  *(a4 + 8) = 0x400000000;
  v14 = *(v13 + 8);
  if (v14 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v14)
  {
    v15 = 8 * *(v13 + 8);
    v16 = (v13 + 24);
    do
    {
      mlir::AffineConstantExpr::AffineConstantExpr(&v19, *v16);
      Value = mlir::AffineConstantExpr::getValue(&v19);
      v18 = *(a4 + 8);
      if (v18 >= *(a4 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a4 + 8 * v18) = Value;
      ++*(a4 + 8);
      ++v16;
      v15 -= 8;
    }

    while (v15);
  }

  if (v20 != v22)
  {
    free(v20);
  }
}

uint64_t mlir::AffineMap::getNumOfZeroResults(mlir::AffineMap *this)
{
  v1 = *(*this + 8);
  if (v1)
  {
    v2 = 0;
    v3 = 8 * v1;
    for (i = (*this + 24); ; ++i)
    {
      v5 = *i;
      v7 = *i;
      if (mlir::AffineExpr::getKind(&v7) == 5)
      {
        mlir::AffineConstantExpr::AffineConstantExpr(&v7, v5);
        if (v7)
        {
          goto LABEL_8;
        }
      }

      else
      {
        mlir::AffineConstantExpr::AffineConstantExpr(&v7, 0);
        if (v7)
        {
LABEL_8:
          if (!mlir::AffineConstantExpr::getValue(&v7))
          {
            ++v2;
          }
        }
      }

      v3 -= 8;
      if (!v3)
      {
        return v2;
      }
    }
  }

  return 0;
}

uint64_t mlir::AffineMap::dropZeroResults(mlir::AffineMap *this)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*this + 8);
  v17 = v19;
  v18 = 0x600000000;
  if (v3 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v3)
  {
    memcpy(v19, (v2 + 24), 8 * v3);
    v4 = v18;
    v2 = *this;
    v5 = *(*this + 8);
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  LODWORD(v18) = v4 + v3;
  v14 = v16;
  v15 = 0x600000000;
  if (v5)
  {
    v6 = 8 * v5;
    v7 = (v2 + 24);
    while (1)
    {
      v8 = *v7;
      v13 = *v7;
      if (mlir::AffineExpr::getKind(&v13) == 5)
      {
        mlir::AffineConstantExpr::AffineConstantExpr(&v13, v8);
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      else
      {
        mlir::AffineConstantExpr::AffineConstantExpr(&v13, 0);
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      if (mlir::AffineConstantExpr::getValue(&v13))
      {
LABEL_7:
        if (v15 >= HIDWORD(v15))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(v14 + v15) = v8;
        LODWORD(v15) = v15 + 1;
      }

      ++v7;
      v6 -= 8;
      if (!v6)
      {
        v2 = *this;
        v9 = v14;
        v10 = v15;
        goto LABEL_19;
      }
    }
  }

  v10 = 0;
  v9 = v16;
LABEL_19:
  v11 = mlir::AffineMap::get(*v2, *(v2 + 4), v9, v10, *(v2 + 16));
  if (v14 != v16)
  {
    free(v14);
  }

  if (v17 != v19)
  {
    free(v17);
  }

  return v11;
}

uint64_t mlir::AffineMap::isProjectedPermutation(mlir::AffineMap *this, int a2)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v2 = *this;
  if (*(*this + 4))
  {
    return 0;
  }

  v3 = v2[2];
  v4 = *v2;
  if (v3 > v4)
  {
    return 0;
  }

  v18 = v21;
  v20 = 8;
  if (v4 >= 9)
  {
    v19 = 0;
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  if (v4)
  {
    bzero(v21, v4);
  }

  v19 = v4;
  v5 = 1;
  if (!v3)
  {
LABEL_24:
    v14 = v18;
    if (v18 != v21)
    {
      goto LABEL_27;
    }

    return v5;
  }

  v8 = 8 * v3;
  v9 = (v2 + 6);
  do
  {
    v10 = *v9;
    v17 = *v9;
    if (mlir::AffineExpr::getKind(&v17) == 6)
    {
      mlir::AffineDimExpr::AffineDimExpr(&v17, v10);
      v16 = v17;
      if (v17)
      {
        goto LABEL_14;
      }
    }

    else
    {
      mlir::AffineDimExpr::AffineDimExpr(&v17, 0);
      v16 = v17;
      if (v17)
      {
LABEL_14:
        Position = mlir::AffineDimExpr::getPosition(&v16);
        if (*(v18 + Position))
        {
          goto LABEL_23;
        }

        v12 = mlir::AffineDimExpr::getPosition(&v16);
        *(v18 + v12) = 1;
        goto LABEL_11;
      }
    }

    v17 = v10;
    if (mlir::AffineExpr::getKind(&v17) == 5)
    {
      v13 = v10;
    }

    else
    {
      v13 = 0;
    }

    mlir::AffineConstantExpr::AffineConstantExpr(&v17, v13);
    v15 = v17;
    if (!a2 || !v17 || mlir::AffineConstantExpr::getValue(&v15))
    {
LABEL_23:
      v5 = 0;
      goto LABEL_24;
    }

LABEL_11:
    ++v9;
    v8 -= 8;
  }

  while (v8);
  v5 = 1;
  v14 = v18;
  if (v18 != v21)
  {
LABEL_27:
    free(v14);
  }

  return v5;
}

uint64_t mlir::AffineMap::isPermutation(mlir::AffineMap *this)
{
  if (**this == *(*this + 8))
  {
    return mlir::AffineMap::isProjectedPermutation(this, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::AffineMap::getSubMap(int **a1, unsigned int *a2, unint64_t a3)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v7 = 0;
  if (a3 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a3)
  {
    LODWORD(v4) = 0;
    v5 = 4 * a3;
    do
    {
      if (v4 >= 4)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8[v4] = *&(*a1)[2 * *a2 + 6];
      v4 = ++v7;
      ++a2;
      v5 -= 4;
    }

    while (v5);
  }

  else
  {
    v4 = 0;
  }

  return mlir::AffineMap::get(**a1, (*a1)[1], v8, v4, *(*a1 + 2));
}

uint64_t mlir::AffineMap::getMajorSubMap(mlir::AffineMap *this, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  result = *this;
  if (*(result + 8) >= a2)
  {
    return mlir::AffineMap::get(*result, *(result + 4), result + 24, a2, *(result + 16));
  }

  return result;
}

uint64_t mlir::AffineMap::getMinorSubMap(mlir::AffineMap *this, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  result = *this;
  v3 = *(result + 8);
  if (v3 >= a2)
  {
    return mlir::AffineMap::get(*result, *(result + 4), result + 8 * (v3 - a2) + 24, a2, *(result + 16));
  }

  return result;
}

uint64_t mlir::projectDims(unsigned int *a1, unint64_t *a2, mlir::MLIRContext *a3)
{
  v3 = a3;
  v38[6] = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v36 = v38;
  v37 = 0x600000000;
  if (v6 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v34[0] = &unk_286899650;
  v35 = v34;
  v33 = v32;
  v31 = v30;
  v32[0] = &unk_2868996E0;
  v30[0] = &unk_286899650;
  v7 = *(a1 + 2);
  if (v6)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = *a2;
      if (*a2)
      {
        if (((1 << v8) & (v10 >> 1) & ~(-1 << (v10 >> 58))) == 0)
        {
LABEL_7:
          if (v3)
          {
            v11 = v9;
          }

          else
          {
            v11 = v8;
          }

          AffineDimExpr = mlir::getAffineDimExpr(v11, v7, a3);
          v13 = v37;
          v14 = HIDWORD(v37);
          v9 += v3;
          goto LABEL_13;
        }
      }

      else if ((*(*v10 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_7;
      }

      AffineDimExpr = mlir::getAffineConstantExpr(0, v7, a3);
      v13 = v37;
      v14 = HIDWORD(v37);
LABEL_13:
      if (v13 >= v14)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v36[v13] = AffineDimExpr;
      LODWORD(v37) = v37 + 1;
      if (v6 == ++v8)
      {
        goto LABEL_18;
      }
    }
  }

  v9 = 0;
LABEL_18:
  v27 = v29;
  v28 = 0x600000000;
  v15 = a1[2];
  if (v15 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v15)
  {
    v16 = 8 * a1[2];
    v17 = (a1 + 6);
    do
    {
      v18 = *v17;
      v25[1] = v37;
      v26 = v18;
      v25[0] = v36;
      if (!v31)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      v19 = (*(*v31 + 48))(v31, &v26, v25);
      if (v28 >= HIDWORD(v28))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v27 + v28) = v19;
      LODWORD(v28) = v28 + 1;
      ++v17;
      v16 -= 8;
    }

    while (v16);
  }

  if ((v3 & 1) == 0)
  {
    v9 = *a1;
  }

  v20 = mlir::AffineMap::get(v9, a1[1], v27, v28, v7);
  if (v27 != v29)
  {
    free(v27);
  }

  if (v31 == v30)
  {
    (*(*v31 + 32))(v31);
    v21 = v33;
    if (v33 != v32)
    {
      goto LABEL_35;
    }

LABEL_44:
    (*(*v21 + 32))(v21);
    v22 = v35;
    if (v35 != v34)
    {
      goto LABEL_38;
    }

LABEL_45:
    (*(*v22 + 32))(v22);
    v23 = v36;
    if (v36 == v38)
    {
      return v20;
    }

    goto LABEL_41;
  }

  if (v31)
  {
    (*(*v31 + 40))();
  }

  v21 = v33;
  if (v33 == v32)
  {
    goto LABEL_44;
  }

LABEL_35:
  if (v21)
  {
    (*(*v21 + 40))(v21);
  }

  v22 = v35;
  if (v35 == v34)
  {
    goto LABEL_45;
  }

LABEL_38:
  if (v22)
  {
    (*(*v22 + 40))(v22);
  }

  v23 = v36;
  if (v36 != v38)
  {
LABEL_41:
    free(v23);
  }

  return v20;
}

uint64_t mlir::compressUnusedDims(unsigned int *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  mlir::getUnusedDimsBitVector(v6, 1, &v5);
  result = mlir::projectDims(a1, &v5, 1);
  v3 = v5;
  if ((v5 & 1) == 0 && v5)
  {
    v4 = result;
    if (*v5 != v5 + 2)
    {
      free(*v5);
    }

    MEMORY[0x259C63180](v3, 0x1080C40EF38A13ELL);
    return v4;
  }

  return result;
}

uint64_t mlir::getUnusedDimsBitVector@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v3 = result;
  v4 = **result;
  if (v4 > 0x39)
  {
    operator new();
  }

  v5 = (v4 << 58) | (2 * ~(-1 << v4)) | 1;
  if (a2 && v4)
  {
    v12 = result + 8 * a2;
    do
    {
      v6 = *v3;
      v7 = *(*v3 + 8);
      if (v7)
      {
        v8 = 0;
        while (1)
        {
          v9 = 8 * v7;
          v10 = (v6 + 24);
          while (1)
          {
            v13 = *v10;
            result = mlir::AffineExpr::isFunctionOfDim(&v13, v8);
            if (result)
            {
              break;
            }

            ++v10;
            v9 -= 8;
            if (!v9)
            {
              goto LABEL_16;
            }
          }

          if ((v5 & 1) == 0)
          {
            *(*v5 + 8 * (v8 >> 6)) &= ~(1 << v8);
            goto LABEL_16;
          }

          v5 = ((2 * ~((-1 << (v5 >> 58)) | (1 << v8++))) | 0xFC00000000000000) & v5 | 1;
          if (v8 == v4)
          {
            break;
          }

          while (1)
          {
            v7 = *(v6 + 8);
            if (*(v6 + 8))
            {
              break;
            }

LABEL_16:
            if (++v8 == v4)
            {
              goto LABEL_7;
            }
          }
        }
      }

LABEL_7:
      v3 += 8;
    }

    while (v3 != v12);
  }

  *a3 = v5;
  return result;
}

void compressUnusedListImpl(uint64_t a1, int **a2, unint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v28[6] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v9 = a2;
    v26 = v28;
    v27 = 0x600000000;
    v10 = *a2;
    if (a3 * (*a2)[2] >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v11 = 0;
    v12 = *v10;
    v13 = v10[1];
    v14 = 8 * a3;
    do
    {
      llvm::SmallVectorImpl<long long>::insert<long long const*,void>(&v26, v26 + 8 * v27, v9[v11 / 8] + 24, &v9[v11 / 8][2 * v9[v11 / 8][2] + 6]);
      v11 += 8;
    }

    while (v14 != v11);
    v15 = mlir::AffineMap::get(v12, v13, v26, v27, *(*v9 + 2));
    v16 = a4(a5, v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = (v16 + 6);
    v20 = v16[2];
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
    if (a3 > 6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    do
    {
      v21 = *v9;
      if (v20 >= (*v9)[2])
      {
        v22 = (*v9)[2];
      }

      else
      {
        v22 = v20;
      }

      v23 = mlir::AffineMap::get(v17, v18, v19, v22, *(v21 + 2));
      v24 = *(a1 + 8);
      if (v24 >= *(a1 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a1 + 8 * v24) = v23;
      ++*(a1 + 8);
      v25 = v21[2];
      v20 -= v25;
      v19 += 8 * v25;
      ++v9;
      v14 -= 8;
    }

    while (v14);
    if (v26 != v28)
    {
      free(v26);
    }
  }

  else
  {
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
  }
}

uint64_t mlir::projectSymbols(uint64_t a1, unint64_t *a2, mlir::MLIRContext *a3)
{
  v3 = a3;
  v38[6] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 4);
  v36 = v38;
  v37 = 0x600000000;
  if (v6 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v34[0] = &unk_286899760;
  v35 = v34;
  v33 = v32;
  v31 = v30;
  v32[0] = &unk_2868997E0;
  v30[0] = &unk_2868997E0;
  v7 = *(a1 + 16);
  if (v6)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = *a2;
      if (*a2)
      {
        if (((1 << v8) & (v10 >> 1) & ~(-1 << (v10 >> 58))) == 0)
        {
LABEL_7:
          if (v3)
          {
            v11 = v9;
          }

          else
          {
            v11 = v8;
          }

          AffineSymbolExpr = mlir::getAffineSymbolExpr(v11, v7, a3);
          v13 = v37;
          v14 = HIDWORD(v37);
          v9 += v3;
          goto LABEL_13;
        }
      }

      else if ((*(*v10 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_7;
      }

      AffineSymbolExpr = mlir::getAffineConstantExpr(0, v7, a3);
      v13 = v37;
      v14 = HIDWORD(v37);
LABEL_13:
      if (v13 >= v14)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v36[v13] = AffineSymbolExpr;
      LODWORD(v37) = v37 + 1;
      if (v6 == ++v8)
      {
        goto LABEL_18;
      }
    }
  }

  v9 = 0;
LABEL_18:
  v27 = v29;
  v28 = 0x600000000;
  v15 = *(a1 + 8);
  if (v15 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v15)
  {
    v16 = 8 * *(a1 + 8);
    v17 = (a1 + 24);
    do
    {
      v18 = *v17;
      v25[1] = v37;
      v26 = v18;
      v25[0] = v36;
      if (!v31)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      v19 = (*(*v31 + 48))(v31, &v26, v25);
      if (v28 >= HIDWORD(v28))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v27 + v28) = v19;
      LODWORD(v28) = v28 + 1;
      ++v17;
      v16 -= 8;
    }

    while (v16);
  }

  if ((v3 & 1) == 0)
  {
    v9 = *(a1 + 4);
  }

  v20 = mlir::AffineMap::get(*a1, v9, v27, v28, v7);
  if (v27 != v29)
  {
    free(v27);
  }

  if (v31 == v30)
  {
    (*(*v31 + 32))(v31);
    v21 = v33;
    if (v33 != v32)
    {
      goto LABEL_35;
    }

LABEL_44:
    (*(*v21 + 32))(v21);
    v22 = v35;
    if (v35 != v34)
    {
      goto LABEL_38;
    }

LABEL_45:
    (*(*v22 + 32))(v22);
    v23 = v36;
    if (v36 == v38)
    {
      return v20;
    }

    goto LABEL_41;
  }

  if (v31)
  {
    (*(*v31 + 40))();
  }

  v21 = v33;
  if (v33 == v32)
  {
    goto LABEL_44;
  }

LABEL_35:
  if (v21)
  {
    (*(*v21 + 40))(v21);
  }

  v22 = v35;
  if (v35 == v34)
  {
    goto LABEL_45;
  }

LABEL_38:
  if (v22)
  {
    (*(*v22 + 40))(v22);
  }

  v23 = v36;
  if (v36 != v38)
  {
LABEL_41:
    free(v23);
  }

  return v20;
}

uint64_t mlir::compressUnusedSymbols(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  mlir::getUnusedSymbolsBitVector(v6, 1, &v5);
  result = mlir::projectSymbols(a1, &v5, 1);
  v3 = v5;
  if ((v5 & 1) == 0 && v5)
  {
    v4 = result;
    if (*v5 != v5 + 2)
    {
      free(*v5);
    }

    MEMORY[0x259C63180](v3, 0x1080C40EF38A13ELL);
    return v4;
  }

  return result;
}

uint64_t mlir::getUnusedSymbolsBitVector@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v3 = result;
  v4 = *(*result + 4);
  if (v4 > 0x39)
  {
    operator new();
  }

  v5 = (v4 << 58) | (2 * ~(-1 << v4)) | 1;
  if (a2 && v4)
  {
    v12 = result + 8 * a2;
    do
    {
      v6 = *v3;
      v7 = *(*v3 + 8);
      if (v7)
      {
        v8 = 0;
        while (1)
        {
          v9 = 8 * v7;
          v10 = (v6 + 24);
          while (1)
          {
            v13 = *v10;
            result = mlir::AffineExpr::isFunctionOfSymbol(&v13, v8);
            if (result)
            {
              break;
            }

            ++v10;
            v9 -= 8;
            if (!v9)
            {
              goto LABEL_16;
            }
          }

          if ((v5 & 1) == 0)
          {
            *(*v5 + 8 * (v8 >> 6)) &= ~(1 << v8);
            goto LABEL_16;
          }

          v5 = ((2 * ~((-1 << (v5 >> 58)) | (1 << v8++))) | 0xFC00000000000000) & v5 | 1;
          if (v8 == v4)
          {
            break;
          }

          while (1)
          {
            v7 = *(v6 + 8);
            if (*(v6 + 8))
            {
              break;
            }

LABEL_16:
            if (++v8 == v4)
            {
              goto LABEL_7;
            }
          }
        }
      }

LABEL_7:
      v3 += 8;
    }

    while (v3 != v12);
  }

  *a3 = v5;
  return result;
}

uint64_t mlir::foldAttributesIntoMap(mlir::MLIRContext **this, unsigned int *a2, mlir::MLIRContext *a3, uint64_t a4, uint64_t a5)
{
  v36[6] = *MEMORY[0x277D85DE8];
  v34 = v36;
  v35 = 0x600000000;
  v30 = a2;
  v31 = v33;
  v32 = 0x600000000;
  if (*a2)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      while (1)
      {
        v11 = *(a3 + v10);
        if ((v11 & 4) != 0)
        {
          break;
        }

        v12 = v11 & 0xFFFFFFFFFFFFFFF8;
        if (!v12)
        {
          break;
        }

        v29 = v12;
        Int = mlir::IntegerAttr::getInt(&v29);
        AffineConstantExpr = mlir::Builder::getAffineConstantExpr(this, Int, v14);
        if (v35 >= HIDWORD(v35))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(v34 + v35) = AffineConstantExpr;
        LODWORD(v35) = v35 + 1;
        if (++v10 >= *a2)
        {
          goto LABEL_15;
        }
      }

      AffineDimExpr = mlir::Builder::getAffineDimExpr(this, v9, a3);
      if (v35 >= HIDWORD(v35))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v34 + v35) = AffineDimExpr;
      LODWORD(v35) = v35 + 1;
      v17 = *(a5 + 8);
      if (v17 >= *(a5 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v9 = (v9 + 1);
      *(*a5 + 8 * v17) = *(a3 + v10) & 0xFFFFFFFFFFFFFFF8;
      ++*(a5 + 8);
      ++v10;
    }

    while (v10 < *a2);
  }

  else
  {
    LODWORD(v9) = 0;
  }

LABEL_15:
  if (a2[1])
  {
    v18 = 0;
    v19 = 0;
    do
    {
      while (1)
      {
        v20 = *(a3 + *a2 + v19);
        if ((v20 & 4) != 0)
        {
          break;
        }

        v21 = v20 & 0xFFFFFFFFFFFFFFF8;
        if (!v21)
        {
          break;
        }

        v29 = v21;
        v22 = mlir::IntegerAttr::getInt(&v29);
        v24 = mlir::Builder::getAffineConstantExpr(this, v22, v23);
        if (v32 >= HIDWORD(v32))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(v31 + v32) = v24;
        LODWORD(v32) = v32 + 1;
        if (++v19 >= a2[1])
        {
          goto LABEL_29;
        }
      }

      AffineSymbolExpr = mlir::Builder::getAffineSymbolExpr(this, v18, a3);
      if (v32 >= HIDWORD(v32))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v31 + v32) = AffineSymbolExpr;
      LODWORD(v32) = v32 + 1;
      v26 = *(a5 + 8);
      if (v26 >= *(a5 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v18 = (v18 + 1);
      *(*a5 + 8 * v26) = *(a3 + *a2 + v19) & 0xFFFFFFFFFFFFFFF8;
      ++*(a5 + 8);
      ++v19;
    }

    while (v19 < a2[1]);
  }

  else
  {
    LODWORD(v18) = 0;
  }

LABEL_29:
  v27 = mlir::AffineMap::replaceDimsAndSymbols(&v30, v34, v35, v31, v32, v9, v18);
  if (v31 != v33)
  {
    free(v31);
  }

  if (v34 != v36)
  {
    free(v34);
  }

  return v27;
}

uint64_t mlir::simplifyAffineMap(unsigned int *a1)
{
  v2[8] = *MEMORY[0x277D85DE8];
  if (a1[2])
  {
    mlir::simplifyAffineExpr(*(a1 + 3), *a1, a1[1]);
  }

  return mlir::AffineMap::get(*a1, a1[1], v2, 0, *(a1 + 2));
}

uint64_t mlir::removeDuplicateExprs(uint64_t a1)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  if (v2 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v2)
  {
    memcpy(v12, (a1 + 24), 8 * v2);
    v3 = &v12[v2];
    v4 = 8 * v2 - 16;
    v5 = v12;
    while (1)
    {
      v6 = v5;
      v5 += 8;
      if (v5 == v3)
      {
        break;
      }

      v7 = v4;
      v8 = *(v6 + 1);
      v4 -= 8;
      if (*v6 == v8)
      {
        if (v6 + 16 != v3)
        {
          v9 = 8;
          do
          {
            v10 = v8;
            v8 = *&v5[v9];
            if (v10 != v8)
            {
              *(v6 + 1) = v8;
              v6 += 8;
            }

            v9 += 8;
            v7 -= 8;
          }

          while (v7);
        }

        v3 = v6 + 8;
        return mlir::AffineMap::get(*a1, *(a1 + 4), v12, ((v3 - v12) >> 3), *(a1 + 16));
      }
    }
  }

  else
  {
    v3 = v12;
  }

  return mlir::AffineMap::get(*a1, *(a1 + 4), v12, ((v3 - v12) >> 3), *(a1 + 16));
}

uint64_t mlir::inversePermutation(unsigned int *a1)
{
  v1 = a1;
  v21[4] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if (v2)
  {
    v19 = v21;
    v20 = 0x400000000;
    if (v2 >= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    bzero(v19, 8 * v2);
    LODWORD(v20) = v2;
    v3 = *(v1 + 8);
    if (v3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (!a1[1] && !a1[2])
    {
      return v1;
    }

    v19 = v21;
    v20 = 0x400000000;
    v3 = a1[2];
    if (v3)
    {
LABEL_9:
      v4 = 0;
      for (i = 8 * v3; i; i -= 8)
      {
        v6 = *(v1 + 24 + 8 * v4);
        v16 = v6;
        if (mlir::AffineExpr::getKind(&v16) == 6)
        {
          mlir::AffineDimExpr::AffineDimExpr(&v16, v6);
          if (v16)
          {
            goto LABEL_15;
          }
        }

        else
        {
          mlir::AffineDimExpr::AffineDimExpr(&v16, 0);
          if (v16)
          {
LABEL_15:
            Position = mlir::AffineDimExpr::getPosition(&v16);
            if (!*(v19 + Position))
            {
              Context = mlir::AffineExpr::getContext(&v16);
              AffineDimExpr = mlir::getAffineDimExpr(v4, Context, v9);
              v11 = mlir::AffineDimExpr::getPosition(&v16);
              *(v19 + v11) = AffineDimExpr;
            }
          }
        }

        v4 = (v4 + 1);
      }
    }
  }

  v16 = v18;
  v17 = 0x400000000;
  if (*v1 >= 5u)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v20)
  {
    v12 = v19;
    v13 = 8 * v20;
    do
    {
      if (*v12)
      {
        if (v17 >= HIDWORD(v17))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(v16 + v17) = *v12;
        LODWORD(v17) = v17 + 1;
      }

      ++v12;
      v13 -= 8;
    }

    while (v13);
  }

  v14 = v16;
  if (v17 != *(v1 + 4) + *v1)
  {
    v1 = 0;
    if (v16 == v18)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v1 = mlir::AffineMap::get(*(v1 + 8), 0, v16, v17, *(v1 + 16));
  v14 = v16;
  if (v16 != v18)
  {
LABEL_30:
    free(v14);
  }

LABEL_31:
  if (v19 != v21)
  {
    free(v19);
  }

  return v1;
}

uint64_t mlir::inverseAndBroadcastProjectedPermutation(uint64_t a1, uint64_t a2, mlir::MLIRContext *a3)
{
  v28[2] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 16);
  AffineConstantExpr = mlir::getAffineConstantExpr(0, v4, a3);
  v6 = (*(a1 + 4) + *a1);
  v24 = v27;
  v26 = 4;
  if (v6 >= 5)
  {
    v25 = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v6)
  {
    if (v6 == 4)
    {
      v15 = vdupq_n_s64(AffineConstantExpr);
      v16 = v28;
      v17 = v6;
      do
      {
        v16[-1] = v15;
        *v16 = v15;
        v16 += 2;
        v17 -= 4;
      }

      while (v17);
    }

    else
    {
      v18 = v27;
      v19 = v6;
      do
      {
        *v18++ = AffineConstantExpr;
        --v19;
      }

      while (v19);
    }
  }

  v14 = v27;
  v25 = v6;
  v20 = *(a1 + 8);
  if (v20)
  {
    v7 = 0;
    v8 = a1 + 24;
    while (1)
    {
      v9 = *(v8 + 8 * v7);
      v23 = v9;
      if (mlir::AffineExpr::getKind(&v23) == 5)
      {
        mlir::AffineConstantExpr::AffineConstantExpr(&v23, v9);
        if (!v23)
        {
          goto LABEL_9;
        }
      }

      else
      {
        mlir::AffineConstantExpr::AffineConstantExpr(&v23, 0);
        if (!v23)
        {
LABEL_9:
          AffineDimExpr = mlir::getAffineDimExpr(v7, v4, v10);
          mlir::AffineDimExpr::AffineDimExpr(&v23, *(v8 + 8 * v7));
          Position = mlir::AffineDimExpr::getPosition(&v23);
          *(v24 + Position) = AffineDimExpr;
        }
      }

      v7 = (v7 + 1);
      if (v20 == v7)
      {
        v13 = *(a1 + 8);
        v14 = v24;
        v6 = v25;
        goto LABEL_20;
      }
    }
  }

  v13 = 0;
LABEL_20:
  result = mlir::AffineMap::get(v13, 0, v14, v6, v4);
  if (v24 != v27)
  {
    v22 = result;
    free(v24);
    return v22;
  }

  return result;
}

uint64_t mlir::concatAffineMaps(void *a1, uint64_t a2)
{
  v26[8] = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v12 = 0;
    v13 = 0;
    v24 = v26;
    v25 = 0x800000000;
    goto LABEL_8;
  }

  v3 = &a1[a2];
  v4 = 0;
  v5 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v5)
  {
    v6 = 0;
    v7 = v5 + 1;
    v8 = (v5 + 1) & 0x3FFFFFFFFFFFFFFELL;
    v9 = &a1[v8];
    v10 = a1 + 1;
    v11 = v8;
    do
    {
      v4 += *(*(v10 - 1) + 8);
      v6 += *(*v10 + 8);
      v10 += 2;
      v11 -= 2;
    }

    while (v11);
    v4 += v6;
    if (v7 == v8)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v9 = a1;
  }

  do
  {
    v16 = *v9++;
    v4 += *(v16 + 8);
  }

  while (v9 != v3);
LABEL_13:
  v24 = v26;
  v25 = 0x800000000;
  if (v4 > 8)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v13 = 0;
  v12 = 0;
  v17 = a1;
  do
  {
    v18 = *v17;
    v19 = (*v17)[2];
    if (v19)
    {
      v20 = 8 * v19;
      v21 = (v18 + 6);
      do
      {
        v23 = *v21;
        v22 = mlir::AffineExpr::shiftSymbols(&v23, v18[1], v13, 0);
        if (v25 >= HIDWORD(v25))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(v24 + v25) = v22;
        LODWORD(v25) = v25 + 1;
        ++v21;
        v20 -= 8;
      }

      while (v20);
    }

    v13 += v18[1];
    if (*v18 > v12)
    {
      v12 = *v18;
    }

    ++v17;
  }

  while (v17 != v3);
LABEL_8:
  result = mlir::AffineMap::get(v12, v13, v24, v25, *(*a1 + 16));
  if (v24 != v26)
  {
    v15 = result;
    free(v24);
    return v15;
  }

  return result;
}

uint64_t mlir::getProjectedMap(unsigned int *a1, unint64_t *a2, mlir::MLIRContext *a3, int a4)
{
  v10[1] = *MEMORY[0x277D85DE8];
  result = mlir::projectDims(a1, a2, a3);
  if (a4)
  {
    v10[0] = result;
    v6 = result;
    mlir::getUnusedSymbolsBitVector(v10, 1, &v9);
    result = mlir::projectSymbols(v6, &v9, 1);
    v7 = v9;
    if ((v9 & 1) == 0)
    {
      if (v9)
      {
        v8 = result;
        if (*v9 != v9 + 2)
        {
          free(*v9);
        }

        MEMORY[0x259C63180](v7, 0x1080C40EF38A13ELL);
        return v8;
      }
    }
  }

  return result;
}

uint64_t mlir::expandDimsToRank(uint64_t a1, mlir::AffineMap *a2, mlir::MLIRContext *a3)
{
  v8 = a1;
  MultiDimIdentityMap = mlir::AffineMap::getMultiDimIdentityMap(a2, *(a1 + 16), a3);
  v4 = mlir::AffineMap::dropResults(&MultiDimIdentityMap, a3);
  return mlir::AffineMap::compose(&v8, v4, v5);
}

uint64_t mlir::MutableAffineMap::MutableAffineMap(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = a1 + 16;
  *(a1 + 8) = 0x800000000;
  if (v4 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v4)
  {
    memcpy(*a1, (a2 + 24), 8 * v4);
    v5 = *(a1 + 8);
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 8) = v5 + v4;
  *(a1 + 80) = *a2;
  *(a1 + 88) = *(a2 + 16);
  return a1;
}

void *mlir::MutableAffineMap::MutableAffineMap(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = a1 + 2;
  a1[1] = 0x800000000;
  if (v4 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v4)
  {
    memcpy(a1 + 2, (a2 + 24), 8 * v4);
    v5 = *(a1 + 2);
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 2) = v5 + v4;
  a1[10] = *a2;
  a1[11] = *(a2 + 16);
  return a1;
}

void *mlir::MutableAffineMap::reset(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 80) = *a2;
  *(a1 + 88) = *(a2 + 16);
  return llvm::SmallVectorImpl<long long>::insert<long long const*,void>(a1, *a1, (a2 + 24), (a2 + 24 + 8 * *(a2 + 8)));
}

uint64_t mlir::MutableAffineMap::simplify(uint64_t this)
{
  if (*(this + 8))
  {
    mlir::simplifyAffineExpr(**this, *(this + 80), *(this + 84));
  }

  return this;
}

unint64_t anonymous namespace::AffineExprConstantFolder::constantFoldImpl(uint64_t a1, uint64_t a2)
{
  v14 = a2;
  Kind = mlir::AffineExpr::getKind(&v14);
  if (Kind <= 3)
  {
    if (Kind > 1)
    {
      v4 = v14;
      v13 = a1;
      if (Kind == 2)
      {
      }

      else
      {
      }
    }

    else
    {
      v4 = v14;
      if (Kind)
      {
      }

      else
      {
      }
    }

    goto LABEL_16;
  }

  if (Kind > 5)
  {
    if (Kind == 6)
    {
      mlir::AffineDimExpr::AffineDimExpr(&v12, v14);
      v6 = *(*(a1 + 8) + 8 * mlir::AffineDimExpr::getPosition(&v12));
      if (!v6)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v9 = *a1;
      mlir::AffineSymbolExpr::AffineSymbolExpr(&v12, v14);
      v6 = *(*(a1 + 8) + 8 * (mlir::AffineSymbolExpr::getPosition(&v12) + v9));
      if (!v6)
      {
        goto LABEL_21;
      }
    }

    v10 = *(*v6 + 136);
    if (v10 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v6 = 0;
    }

    v13 = v6;
    if (v10 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      Int = mlir::IntegerAttr::getInt(&v13);
      goto LABEL_23;
    }

LABEL_21:
    LOBYTE(Int) = 0;
    v8 = 0;
    return v8 | Int;
  }

  if (Kind != 4)
  {
    mlir::AffineConstantExpr::AffineConstantExpr(&v13, v14);
    Int = mlir::AffineConstantExpr::getValue(&v13);
LABEL_23:
    v8 = Int & 0xFFFFFFFFFFFFFF00;
    return v8 | Int;
  }

  v4 = v14;
  v13 = a1;
LABEL_16:
  v8 = Int & 0xFFFFFFFFFFFFFF00;
  return v8 | Int;
}

uint64_t anonymous namespace::AffineExprConstantFolder::constantFoldBinExpr(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v15, a2);
  LHS = mlir::AffineBinaryOpExpr::getLHS(&v15);
  {
    return a3(a4, v10, v12);
  }

  else
  {
    return 0;
  }
}

uint64_t llvm::function_ref<std::optional<long long> ()(long long,long long)>::callback_fn<anonymous namespace::AffineExprConstantFolder::constantFoldImpl(mlir::AffineExpr)::{lambda(long long,long long)#3}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 > 0)
  {
    return (a3 & ((a2 % a3) >> 63)) + a2 % a3;
  }

  result = 0;
  *(*a1 + 24) = 1;
  return result;
}

uint64_t llvm::function_ref<std::optional<long long> ()(long long,long long)>::callback_fn<anonymous namespace::AffineExprConstantFolder::constantFoldImpl(mlir::AffineExpr)::{lambda(long long,long long)#4}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (a2)
    {
      if ((a3 ^ a2) < 0)
      {
        return (((a3 >> 63) | 1) + a2) / a3 - 1;
      }

      else
      {
        return a2 / a3;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    *(*a1 + 24) = 1;
  }

  return result;
}

uint64_t llvm::function_ref<std::optional<long long> ()(long long,long long)>::callback_fn<anonymous namespace::AffineExprConstantFolder::constantFoldImpl(mlir::AffineExpr)::{lambda(long long,long long)#5}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (a2)
    {
      if ((a3 ^ a2) < 0)
      {
        return a2 / a3;
      }

      else
      {
        v3 = a2 - 1;
        if (a3 < 0)
        {
          v3 = a2 + 1;
        }

        return v3 / a3 + 1;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    *(*a1 + 24) = 1;
  }

  return result;
}

void *llvm::function_ref<void ()(mlir::AffineExpr)>::callback_fn<void mlir::getMaxDimAndSymbol<llvm::ArrayRef<mlir::AffineExpr>>(llvm::ArrayRef<llvm::ArrayRef<mlir::AffineExpr>>,long long &,long long &)::{lambda(mlir::AffineExpr)#1}>(uint64_t **a1, uint64_t a2)
{
  v9 = a2;
  if (mlir::AffineExpr::getKind(&v9) == 6)
  {
    mlir::AffineDimExpr::AffineDimExpr(&v9, a2);
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    mlir::AffineDimExpr::AffineDimExpr(&v9, 0);
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  v4 = *a1;
  Position = mlir::AffineDimExpr::getPosition(&v9);
  if (*v4 > Position)
  {
    Position = *v4;
  }

  **a1 = Position;
LABEL_8:
  v9 = a2;
  if (mlir::AffineExpr::getKind(&v9) == 7)
  {
    result = mlir::AffineSymbolExpr::AffineSymbolExpr(&v9, a2);
    if (!v9)
    {
      return result;
    }
  }

  else
  {
    result = mlir::AffineSymbolExpr::AffineSymbolExpr(&v9, 0);
    if (!v9)
    {
      return result;
    }
  }

  v7 = a1[1];
  result = mlir::AffineSymbolExpr::getPosition(&v9);
  v8 = result;
  if (*v7 > result)
  {
    v8 = *v7;
  }

  *a1[1] = v8;
  return result;
}

void *llvm::function_ref<void ()(mlir::AffineExpr)>::callback_fn<void mlir::getMaxDimAndSymbol<llvm::SmallVector<mlir::AffineExpr,4u>>(llvm::ArrayRef<llvm::SmallVector<mlir::AffineExpr,4u>>,long long &,long long &)::{lambda(mlir::AffineExpr)#1}>(uint64_t **a1, uint64_t a2)
{
  v9 = a2;
  if (mlir::AffineExpr::getKind(&v9) == 6)
  {
    mlir::AffineDimExpr::AffineDimExpr(&v9, a2);
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    mlir::AffineDimExpr::AffineDimExpr(&v9, 0);
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  v4 = *a1;
  Position = mlir::AffineDimExpr::getPosition(&v9);
  if (*v4 > Position)
  {
    Position = *v4;
  }

  **a1 = Position;
LABEL_8:
  v9 = a2;
  if (mlir::AffineExpr::getKind(&v9) == 7)
  {
    result = mlir::AffineSymbolExpr::AffineSymbolExpr(&v9, a2);
    if (!v9)
    {
      return result;
    }
  }

  else
  {
    result = mlir::AffineSymbolExpr::AffineSymbolExpr(&v9, 0);
    if (!v9)
    {
      return result;
    }
  }

  v7 = a1[1];
  result = mlir::AffineSymbolExpr::getPosition(&v9);
  v8 = result;
  if (*v7 > result)
  {
    v8 = *v7;
  }

  *a1[1] = v8;
  return result;
}

uint64_t llvm::function_ref<mlir::AffineMap ()(mlir::AffineMap)>::callback_fn<mlir::compressUnusedDims(llvm::ArrayRef<mlir::AffineMap>)::$_0>(uint64_t a1, unsigned int *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = a2;
  mlir::getUnusedDimsBitVector(v7, 1, &v6);
  result = mlir::projectDims(a2, &v6, 1);
  v4 = v6;
  if ((v6 & 1) == 0 && v6)
  {
    v5 = result;
    if (*v6 != v6 + 2)
    {
      free(*v6);
    }

    MEMORY[0x259C63180](v4, 0x1080C40EF38A13ELL);
    return v5;
  }

  return result;
}

uint64_t llvm::function_ref<mlir::AffineMap ()(mlir::AffineMap)>::callback_fn<mlir::compressUnusedSymbols(llvm::ArrayRef<mlir::AffineMap>)::$_0>(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = a2;
  mlir::getUnusedSymbolsBitVector(v7, 1, &v6);
  result = mlir::projectSymbols(a2, &v6, 1);
  v4 = v6;
  if ((v6 & 1) == 0 && v6)
  {
    v5 = result;
    if (*v6 != v6 + 2)
    {
      free(*v6);
    }

    MEMORY[0x259C63180](v4, 0x1080C40EF38A13ELL);
    return v5;
  }

  return result;
}

uint64_t std::__function::__func<mlir::AffineMap projectCommonImpl<mlir::AffineDimExpr>(mlir::AffineMap,llvm::SmallBitVector const&,BOOL)::{lambda(mlir::AffineExpr,llvm::ArrayRef<mlir::AffineExpr>)#1},std::allocator<mlir::AffineMap projectCommonImpl<mlir::AffineDimExpr>(mlir::AffineMap,llvm::SmallBitVector const&,BOOL)::{lambda(mlir::AffineExpr,llvm::ArrayRef<mlir::AffineExpr>)#1}>,mlir::AffineExpr ()(mlir::AffineExpr,llvm::ArrayRef<mlir::AffineExpr>)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = a3[1];
  v7 = v3;
  return mlir::AffineExpr::replaceDims(&v7, v4, v5);
}

uint64_t std::__function::__func<mlir::AffineMap projectCommonImpl<mlir::AffineDimExpr>(mlir::AffineMap,llvm::SmallBitVector const&,BOOL)::{lambda(mlir::AffineExpr,llvm::ArrayRef<mlir::AffineExpr>)#1},std::allocator<mlir::AffineMap projectCommonImpl<mlir::AffineDimExpr>(mlir::AffineMap,llvm::SmallBitVector const&,BOOL)::{lambda(mlir::AffineExpr,llvm::ArrayRef<mlir::AffineExpr>)#1}>,mlir::AffineExpr ()(mlir::AffineExpr,llvm::ArrayRef<mlir::AffineExpr>)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZL17projectCommonImplIN4mlir13AffineDimExprEENS0_9AffineMapES2_RKN4llvm14SmallBitVectorEbEUlNS0_10AffineExprENS3_8ArrayRefIS7_EEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZL17projectCommonImplIN4mlir13AffineDimExprEENS0_9AffineMapES2_RKN4llvm14SmallBitVectorEbEUlNS0_10AffineExprENS3_8ArrayRefIS7_EEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZL17projectCommonImplIN4mlir13AffineDimExprEENS0_9AffineMapES2_RKN4llvm14SmallBitVectorEbEUlNS0_10AffineExprENS3_8ArrayRefIS7_EEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZL17projectCommonImplIN4mlir13AffineDimExprEENS0_9AffineMapES2_RKN4llvm14SmallBitVectorEbEUlNS0_10AffineExprENS3_8ArrayRefIS7_EEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<mlir::AffineMap projectCommonImpl<mlir::AffineDimExpr>(mlir::AffineMap,llvm::SmallBitVector const&,BOOL)::{lambda(mlir::AffineExpr,llvm::ArrayRef<mlir::AffineExpr>)#2},std::allocator<mlir::AffineMap projectCommonImpl<mlir::AffineDimExpr>(mlir::AffineMap,llvm::SmallBitVector const&,BOOL)::{lambda(mlir::AffineExpr,llvm::ArrayRef<mlir::AffineExpr>)#2}>,mlir::AffineExpr ()(mlir::AffineExpr,llvm::ArrayRef<mlir::AffineExpr>)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = a3[1];
  v7 = v3;
  return mlir::AffineExpr::replaceSymbols(&v7, v4, v5);
}

uint64_t std::__function::__func<mlir::AffineMap projectCommonImpl<mlir::AffineDimExpr>(mlir::AffineMap,llvm::SmallBitVector const&,BOOL)::{lambda(mlir::AffineExpr,llvm::ArrayRef<mlir::AffineExpr>)#2},std::allocator<mlir::AffineMap projectCommonImpl<mlir::AffineDimExpr>(mlir::AffineMap,llvm::SmallBitVector const&,BOOL)::{lambda(mlir::AffineExpr,llvm::ArrayRef<mlir::AffineExpr>)#2}>,mlir::AffineExpr ()(mlir::AffineExpr,llvm::ArrayRef<mlir::AffineExpr>)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZL17projectCommonImplIN4mlir13AffineDimExprEENS0_9AffineMapES2_RKN4llvm14SmallBitVectorEbEUlNS0_10AffineExprENS3_8ArrayRefIS7_EEE0_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZL17projectCommonImplIN4mlir13AffineDimExprEENS0_9AffineMapES2_RKN4llvm14SmallBitVectorEbEUlNS0_10AffineExprENS3_8ArrayRefIS7_EEE0_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZL17projectCommonImplIN4mlir13AffineDimExprEENS0_9AffineMapES2_RKN4llvm14SmallBitVectorEbEUlNS0_10AffineExprENS3_8ArrayRefIS7_EEE0_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZL17projectCommonImplIN4mlir13AffineDimExprEENS0_9AffineMapES2_RKN4llvm14SmallBitVectorEbEUlNS0_10AffineExprENS3_8ArrayRefIS7_EEE0_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<mlir::AffineMap projectCommonImpl<mlir::AffineSymbolExpr>(mlir::AffineMap,llvm::SmallBitVector const&,BOOL)::{lambda(mlir::AffineExpr,llvm::ArrayRef<mlir::AffineExpr>)#1},std::allocator<mlir::AffineMap projectCommonImpl<mlir::AffineSymbolExpr>(mlir::AffineMap,llvm::SmallBitVector const&,BOOL)::{lambda(mlir::AffineExpr,llvm::ArrayRef<mlir::AffineExpr>)#1}>,mlir::AffineExpr ()(mlir::AffineExpr,llvm::ArrayRef<mlir::AffineExpr>)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = a3[1];
  v7 = v3;
  return mlir::AffineExpr::replaceDims(&v7, v4, v5);
}

uint64_t std::__function::__func<mlir::AffineMap projectCommonImpl<mlir::AffineSymbolExpr>(mlir::AffineMap,llvm::SmallBitVector const&,BOOL)::{lambda(mlir::AffineExpr,llvm::ArrayRef<mlir::AffineExpr>)#1},std::allocator<mlir::AffineMap projectCommonImpl<mlir::AffineSymbolExpr>(mlir::AffineMap,llvm::SmallBitVector const&,BOOL)::{lambda(mlir::AffineExpr,llvm::ArrayRef<mlir::AffineExpr>)#1}>,mlir::AffineExpr ()(mlir::AffineExpr,llvm::ArrayRef<mlir::AffineExpr>)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZL17projectCommonImplIN4mlir16AffineSymbolExprEENS0_9AffineMapES2_RKN4llvm14SmallBitVectorEbEUlNS0_10AffineExprENS3_8ArrayRefIS7_EEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZL17projectCommonImplIN4mlir16AffineSymbolExprEENS0_9AffineMapES2_RKN4llvm14SmallBitVectorEbEUlNS0_10AffineExprENS3_8ArrayRefIS7_EEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZL17projectCommonImplIN4mlir16AffineSymbolExprEENS0_9AffineMapES2_RKN4llvm14SmallBitVectorEbEUlNS0_10AffineExprENS3_8ArrayRefIS7_EEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZL17projectCommonImplIN4mlir16AffineSymbolExprEENS0_9AffineMapES2_RKN4llvm14SmallBitVectorEbEUlNS0_10AffineExprENS3_8ArrayRefIS7_EEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<mlir::AffineMap projectCommonImpl<mlir::AffineSymbolExpr>(mlir::AffineMap,llvm::SmallBitVector const&,BOOL)::{lambda(mlir::AffineExpr,llvm::ArrayRef<mlir::AffineExpr>)#2},std::allocator<mlir::AffineMap projectCommonImpl<mlir::AffineSymbolExpr>(mlir::AffineMap,llvm::SmallBitVector const&,BOOL)::{lambda(mlir::AffineExpr,llvm::ArrayRef<mlir::AffineExpr>)#2}>,mlir::AffineExpr ()(mlir::AffineExpr,llvm::ArrayRef<mlir::AffineExpr>)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = a3[1];
  v7 = v3;
  return mlir::AffineExpr::replaceSymbols(&v7, v4, v5);
}

uint64_t std::__function::__func<mlir::AffineMap projectCommonImpl<mlir::AffineSymbolExpr>(mlir::AffineMap,llvm::SmallBitVector const&,BOOL)::{lambda(mlir::AffineExpr,llvm::ArrayRef<mlir::AffineExpr>)#2},std::allocator<mlir::AffineMap projectCommonImpl<mlir::AffineSymbolExpr>(mlir::AffineMap,llvm::SmallBitVector const&,BOOL)::{lambda(mlir::AffineExpr,llvm::ArrayRef<mlir::AffineExpr>)#2}>,mlir::AffineExpr ()(mlir::AffineExpr,llvm::ArrayRef<mlir::AffineExpr>)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZL17projectCommonImplIN4mlir16AffineSymbolExprEENS0_9AffineMapES2_RKN4llvm14SmallBitVectorEbEUlNS0_10AffineExprENS3_8ArrayRefIS7_EEE0_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZL17projectCommonImplIN4mlir16AffineSymbolExprEENS0_9AffineMapES2_RKN4llvm14SmallBitVectorEbEUlNS0_10AffineExprENS3_8ArrayRefIS7_EEE0_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZL17projectCommonImplIN4mlir16AffineSymbolExprEENS0_9AffineMapES2_RKN4llvm14SmallBitVectorEbEUlNS0_10AffineExprENS3_8ArrayRefIS7_EEE0_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZL17projectCommonImplIN4mlir16AffineSymbolExprEENS0_9AffineMapES2_RKN4llvm14SmallBitVectorEbEUlNS0_10AffineExprENS3_8ArrayRefIS7_EEE0_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *mlir::OperationName::print(mlir::OperationName *this, llvm::raw_ostream *a2)
{
  v7 = *(*this + 8);
  Value = mlir::StringAttr::getValue(&v7);
  v5 = v3;
  result = *(a2 + 4);
  if (v3 > *(a2 + 3) - result)
  {
    return llvm::raw_ostream::write(a2, Value, v3);
  }

  if (v3)
  {
    result = memcpy(result, Value, v3);
    *(a2 + 4) += v5;
  }

  return result;
}

void *mlir::OperationName::dump(mlir::OperationName *this)
{
  v2 = llvm::errs(this);
  v7 = *(*this + 8);
  Value = mlir::StringAttr::getValue(&v7);
  v5 = v3;
  result = v2[4];
  if (v3 > v2[3] - result)
  {
    return llvm::raw_ostream::write(v2, Value, v3);
  }

  if (v3)
  {
    result = memcpy(result, Value, v3);
    v2[4] += v5;
  }

  return result;
}

uint64_t mlir::AsmParser::parseTypeList(uint64_t a1, uint64_t a2)
{
  v3[0] = a1;
  v3[1] = a2;
  return (*(*a1 + 392))(a1, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::AsmParser::parseTypeList(llvm::SmallVectorImpl<mlir::Type> &)::$_0>, v3, 0, 0);
}

BOOL mlir::OpAsmDialectInterface::parseResource(mlir::OpAsmDialectInterface *this, mlir::AsmParsedResourceEntry *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  (*(*a2 + 24))(&v28, a2);
  if (v28)
  {
    LODWORD(v25) = 3;
    *(&v25 + 1) = "unknown 'resource' key '";
    v26 = 24;
    if (v31 >= v32)
    {
      if (v30 > &v25 || v30 + 24 * v31 <= &v25)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v30 + 24 * v31;
    v5 = v25;
    *(v4 + 2) = v26;
    *v4 = v5;
    ++v31;
  }

  v6 = (*(*a2 + 16))(a2);
  if (v28)
  {
    v27 = 261;
    *&v25 = v6;
    *(&v25 + 1) = v7;
    mlir::Diagnostic::operator<<(v29, &v25);
    if (v28)
    {
      LODWORD(v25) = 3;
      *(&v25 + 1) = "' for dialect '";
      v26 = 15;
      if (v31 >= v32)
      {
        if (v30 > &v25 || v30 + 24 * v31 <= &v25)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v30 + 24 * v31;
      v9 = v25;
      *(v8 + 2) = v26;
      *v8 = v9;
      ++v31;
      if (v28)
      {
        v10 = *(this + 1);
        v12 = *(v10 + 8);
        v11 = *(v10 + 16);
        v27 = 261;
        *&v25 = v12;
        *(&v25 + 1) = v11;
        mlir::Diagnostic::operator<<(v29, &v25);
        if (v28)
        {
          LODWORD(v25) = 3;
          *(&v25 + 1) = "'";
          v26 = 1;
          if (v31 >= v32)
          {
            if (v30 > &v25 || v30 + 24 * v31 <= &v25)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v13 = v30 + 24 * v31;
          v14 = v25;
          *(v13 + 2) = v26;
          *v13 = v14;
          ++v31;
        }
      }
    }
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v28);
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

    v16 = __p;
    if (__p)
    {
      v17 = v37;
      v18 = __p;
      if (v37 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v37 = v16;
      operator delete(v18);
    }

    v19 = v34;
    if (v34)
    {
      v20 = v35;
      v21 = v34;
      if (v35 != v34)
      {
        do
        {
          v23 = *--v20;
          v22 = v23;
          *v20 = 0;
          if (v23)
          {
            MEMORY[0x259C63150](v22, 0x1000C8077774924);
          }
        }

        while (v20 != v19);
        v21 = v34;
      }

      v35 = v19;
      operator delete(v21);
    }

    if (v30 != &v33)
    {
      free(v30);
    }
  }

  return v15;
}

void mlir::registerAsmPrinterCLOptions(mlir *this)
{
  if (!atomic_load_explicit(clOptions, memory_order_acquire))
  {
  }
}

mlir::OpPrintingFlags *mlir::OpPrintingFlags::OpPrintingFlags(mlir::OpPrintingFlags *this)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 4) = 100;
  *(this + 40) = 0;
  if (!atomic_load(clOptions))
  {
    return this;
  }

  if (!atomic_load_explicit(clOptions, memory_order_acquire))
  {
  }

  if (*(clOptions[0] + 208))
  {
    if (atomic_load_explicit(clOptions, memory_order_acquire))
    {
      v3 = *(clOptions[0] + 328);
      if (*(this + 8))
      {
LABEL_8:
        *this = v3;
        goto LABEL_9;
      }
    }

    else
    {
      v3 = *(clOptions[0] + 328);
      if (*(this + 8))
      {
        goto LABEL_8;
      }
    }

    *(this + 8) = 1;
    goto LABEL_8;
  }

LABEL_9:
  if (!atomic_load_explicit(clOptions, memory_order_acquire))
  {
  }

  if (*(clOptions[0] + 8))
  {
    if (!atomic_load_explicit(clOptions, memory_order_acquire))
    {
    }

    *(this + 4) = *(clOptions[0] + 128);
  }

  if (!atomic_load_explicit(clOptions, memory_order_acquire))
  {
  }

  if (!*(clOptions[0] + 400))
  {
    goto LABEL_22;
  }

  if (!atomic_load_explicit(clOptions, memory_order_acquire))
  {
    v4 = *(clOptions[0] + 520);
    if (*(this + 24))
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v4 = *(clOptions[0] + 520);
  if ((*(this + 24) & 1) == 0)
  {
LABEL_20:
    *(this + 24) = 1;
  }

LABEL_21:
  *(this + 2) = v4;
LABEL_22:
  if (!atomic_load_explicit(clOptions, memory_order_acquire))
  {
  }

  *(this + 40) = *(this + 40) & 0xFE | *(clOptions[0] + 712);
  if (!atomic_load_explicit(clOptions, memory_order_acquire))
  {
  }

  if (*(clOptions[0] + 904))
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  *(this + 40) = *(this + 40) & 0xFD | v5;
  if (!atomic_load_explicit(clOptions, memory_order_acquire))
  {
  }

  if (*(clOptions[0] + 1096))
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  *(this + 40) = *(this + 40) & 0xFB | v6;
  if (!atomic_load_explicit(clOptions, memory_order_acquire))
  {
  }

  if (*(clOptions[0] + 1288))
  {
    v7 = 16;
  }

  else
  {
    v7 = 0;
  }

  *(this + 40) = *(this + 40) & 0xEF | v7;
  if (!atomic_load_explicit(clOptions, memory_order_acquire))
  {
  }

  if (*(clOptions[0] + 1480))
  {
    v8 = 32;
  }

  else
  {
    v8 = 0;
  }

  *(this + 40) = *(this + 40) & 0xDF | v8;
  if (!atomic_load_explicit(clOptions, memory_order_acquire))
  {
  }

  if (*(clOptions[0] + 1672))
  {
    v9 = 8;
  }

  else
  {
    v9 = 0;
  }

  *(this + 40) = *(this + 40) & 0xF7 | v9;
  if (!atomic_load_explicit(clOptions, memory_order_acquire))
  {
  }

  if (*(clOptions[0] + 1864))
  {
    v10 = 64;
  }

  else
  {
    v10 = 0;
  }

  *(this + 40) = *(this + 40) & 0xBF | v10;
  if (!atomic_load_explicit(clOptions, memory_order_acquire))
  {
  }

  if (*(clOptions[0] + 2056))
  {
    v11 = 0x80;
  }

  else
  {
    v11 = 0;
  }

  *(this + 40) = v11 & 0x80 | *(this + 40) & 0x7F;
  return this;
}

uint64_t mlir::OpPrintingFlags::elideLargeElementsAttrs(uint64_t this, uint64_t a2)
{
  *this = a2;
  *(this + 8) = 1;
  return this;
}

uint64_t mlir::OpPrintingFlags::elideLargeResourceString(uint64_t this, uint64_t a2)
{
  if ((*(this + 24) & 1) == 0)
  {
    *(this + 24) = 1;
  }

  *(this + 16) = a2;
  return this;
}

uint64_t mlir::OpPrintingFlags::enableDebugInfo(uint64_t this, char a2, int a3)
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(this + 40) = v3 | a2 | *(this + 40) & 0xFC;
  return this;
}

uint64_t mlir::OpPrintingFlags::printGenericOpForm(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  *(this + 40) = *(this + 40) & 0xFB | v2;
  return this;
}

uint64_t mlir::OpPrintingFlags::skipRegions(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  *(this + 40) = *(this + 40) & 0xF7 | v2;
  return this;
}

uint64_t mlir::OpPrintingFlags::shouldElideElementsAttr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 8) != 1)
  {
    return 0;
  }

  v9[3] = v3;
  v9[4] = v4;
  v6 = *a1;
  if (v6 >= mlir::ElementsAttr::getNumElements(a2, a3))
  {
    return 0;
  }

  if (mlir::DenseElementsAttr::classof(a2))
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  v9[0] = v7;
  if (v7)
  {
    return mlir::DenseElementsAttr::isSplat(v9) ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t mlir::OpPrintingFlags::shouldPrintElementsAttrWithHex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3 == -1 || v3 >= mlir::ElementsAttr::getNumElements(a2, a3))
  {
    return 0;
  }

  if (mlir::DenseElementsAttr::classof(a2))
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;
  if (v5)
  {
    return mlir::DenseElementsAttr::isSplat(&v7) ^ 1;
  }

  else
  {
    return 1;
  }
}

void mlir::AsmResourceParser::~AsmResourceParser(void **this)
{
  *this = &unk_286899860;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void mlir::AsmResourcePrinter::~AsmResourcePrinter(void **this)
{
  *this = &unk_286899888;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

uint64_t mlir::FallbackAsmResourceMap::getParserFor(uint64_t a1, const void *a2, const unsigned __int8 *a3)
{
  if (a2)
  {
    if (a3 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (a3 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v8) = a3;
    if (a3)
    {
      memmove(__dst, a2, a3);
    }

    *(__dst + a3) = 0;
    v5 = llvm::MapVector<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>,llvm::StringMap<unsigned int,llvm::MallocAllocator>,llvm::SmallVector<std::pair<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>>,0u>>::operator[](a1, __dst, a3);
    if ((SHIBYTE(v8) & 0x80000000) == 0)
    {
LABEL_11:
      result = *v5;
      if (*v5)
      {
        return result;
      }

LABEL_14:
      operator new();
    }
  }

  else
  {
    __dst[0] = 0;
    __dst[1] = 0;
    v8 = 0;
    v5 = llvm::MapVector<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>,llvm::StringMap<unsigned int,llvm::MallocAllocator>,llvm::SmallVector<std::pair<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>>,0u>>::operator[](a1, __dst, a3);
    if ((SHIBYTE(v8) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  operator delete(__dst[0]);
  result = *v5;
  if (!*v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t llvm::MapVector<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>,llvm::StringMap<unsigned int,llvm::MallocAllocator>,llvm::SmallVector<std::pair<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>>,0u>>::operator[](uint64_t a1, uint64_t a2, const unsigned __int8 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v21 = __p;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v21;
  }

  else
  {
    v5 = __p.__r_.__value_.__r.__words[0];
  }

  v22 = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  __p.__r_.__value_.__r.__words[0] = v5;
  __p.__r_.__value_.__l.__size_ = size;
  LODWORD(__p.__r_.__value_.__r.__words[2]) = 0;
  v7 = llvm::StringMapImpl::hash(v5, size, a3);
  v8 = *llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace_with_hash<unsigned int>(a1, v5, size, v7, &__p.__r_.__value_.__r.__words[2]);
  if (v9)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
      v20 = 0;
      v10 = *(a1 + 32);
      v11 = *(a1 + 24);
      if (v10 >= *(a1 + 36))
      {
        goto LABEL_24;
      }
    }

    else
    {
      __p = *a2;
      v20 = 0;
      v10 = *(a1 + 32);
      v11 = *(a1 + 24);
      if (v10 >= *(a1 + 36))
      {
LABEL_24:
        if (v11 <= &__p && v11 + 32 * v10 > &__p)
        {
          llvm::SmallVectorTemplateBase<std::pair<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>>,false>::grow();
        }

        llvm::SmallVectorTemplateBase<std::pair<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>>,false>::grow();
      }
    }

    v14 = v11 + 32 * *(a1 + 32);
    v15 = *&__p.__r_.__value_.__l.__data_;
    *(v14 + 16) = *(&__p.__r_.__value_.__l + 2);
    *v14 = v15;
    memset(&__p, 0, sizeof(__p));
    v16 = v20;
    v20 = 0;
    *(v14 + 24) = v16;
    ++*(a1 + 32);
    v17 = v20;
    v20 = 0;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v12 = *(a1 + 32) - 1;
    *(v8 + 8) = v12;
    v13 = *(a1 + 24);
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v12 = *(v8 + 8);
    v13 = *(a1 + 24);
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_22:
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  return v13 + 32 * v12 + 24;
}

uint64_t mlir::FallbackAsmResourceMap::getPrinters@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(this + 32))
  {
    operator new();
  }

  return this;
}

BOOL mlir::FallbackAsmResourceMap::ResourceCollection::parseResource(mlir::FallbackAsmResourceMap::ResourceCollection *this, mlir::AsmParsedResourceEntry *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 32))(a2);
  switch(v4)
  {
    case 2:
      (*(*a2 + 48))(&__p, a2);
      v10 = LOBYTE(v18[0]);
      v11 = v18[0];
      if (LOBYTE(v18[0]) == 1)
      {
        v14 = (*(*a2 + 16))(a2);
        v15 = v12;
        llvm::SmallVectorImpl<mlir::FallbackAsmResourceMap::OpaqueAsmResource>::emplace_back<llvm::StringRef,std::string>(this + 32, &v14, &__p);
        v11 = v18[0];
      }

      if ((v11 & 1) != 0 && SHIBYTE(v17) < 0)
      {
        operator delete(__p);
      }

      return v10 != 0;
    case 1:
      LOWORD(v14) = (*(*a2 + 40))(a2);
      if ((v14 & 0x100) == 0)
      {
        return 0;
      }

      *&__p = (*(*a2 + 16))(a2);
      *(&__p + 1) = v9;
      llvm::SmallVectorImpl<mlir::FallbackAsmResourceMap::OpaqueAsmResource>::emplace_back<llvm::StringRef,BOOL &>(this + 32, &__p, &v14);
      break;
    case 0:
      (*(*a2 + 56))(&__p, a2, llvm::function_ref<mlir::AsmResourceBlob ()(unsigned long,unsigned long)>::callback_fn<mlir::AsmParsedResourceEntry::parseAsBlob(void)::{lambda(unsigned long,unsigned long)#1}>, &v14);
      if (v20 == 1)
      {
        v14 = (*(*a2 + 16))(a2);
        v15 = v5;
        llvm::SmallVectorImpl<mlir::FallbackAsmResourceMap::OpaqueAsmResource>::emplace_back<llvm::StringRef,mlir::AsmResourceBlob>(this + 32, &v14, &__p);
        if ((v20 & 1) != 0 && v19 >= 8)
        {
          v6 = (v19 & 2) != 0 ? v18 : v18[0];
          (*(v19 & 0xFFFFFFFFFFFFFFF8))(v6, __p, *(&__p + 1), v17);
          v7 = v19;
          if (v19 >= 8)
          {
            if ((v19 & 4) != 0)
            {
              if ((v19 & 2) != 0)
              {
                v8 = v18;
              }

              else
              {
                v8 = v18[0];
              }

              (*((v19 & 0xFFFFFFFFFFFFFFF8) + 16))(v8);
            }

            if ((v7 & 2) == 0)
            {
              llvm::deallocate_buffer(v18[0], v18[1]);
            }
          }
        }

        return 1;
      }

      return 0;
  }

  return 1;
}

uint64_t llvm::SmallVectorImpl<mlir::FallbackAsmResourceMap::OpaqueAsmResource>::emplace_back<llvm::StringRef,mlir::AsmResourceBlob>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {

    llvm::SmallVectorTemplateBase<mlir::FallbackAsmResourceMap::OpaqueAsmResource,false>::growAndEmplaceBack<llvm::StringRef,mlir::AsmResourceBlob>();
  }

  v5 = (*a1 + 96 * v4);
  v7 = *a2;
  v6 = *(a2 + 8);
  v17 = *a3;
  v8 = *(a3 + 6);
  v18 = *(a3 + 2);
  v21 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 2) != 0 && (v8 & 4) != 0)
    {
      v9 = a3;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 8))(&v19, a3 + 24);
      (*((v21 & 0xFFFFFFFFFFFFFFF8) + 16))(v9 + 24);
      a3 = v9;
    }

    else
    {
      v19 = *(a3 + 24);
      v20 = *(a3 + 5);
    }

    *(a3 + 6) = 0;
  }

  v22 = *(a3 + 56);
  v23 = 0;
  if (!v7)
  {
    v10 = 0;
    *(v5 + 24) = 0;
    v11 = v5 + 6;
    v5[22] = -1;
    v12 = v5 + 22;
    *v5 = 0;
    *(v5 + 1) = 0;
    *(v5 + 2) = 0;
    goto LABEL_18;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  *(v5 + 23) = v6;
  if (v6)
  {
    memmove(v5, v7, v6);
  }

  *(v5 + v6) = 0;
  v10 = v23;
  v5[22] = -1;
  v13 = v5 + 22;
  *(v13 - 64) = 0;
  v11 = v13 - 16;
  if (v10 != -1)
  {
    v12 = v13;
LABEL_18:
    v16 = v11;
    (off_28689A938[v10])(&v16, &v17);
    *v12 = v10;
    if (v23 != -1)
    {
      (off_28689A8E0[v23])(&v16, &v17);
    }
  }

  v14 = *(a1 + 8) + 1;
  *(a1 + 8) = v14;
  return *a1 + 96 * v14 - 96;
}

uint64_t llvm::SmallVectorImpl<mlir::FallbackAsmResourceMap::OpaqueAsmResource>::emplace_back<llvm::StringRef,BOOL &>(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {

    llvm::SmallVectorTemplateBase<mlir::FallbackAsmResourceMap::OpaqueAsmResource,false>::growAndEmplaceBack<llvm::StringRef,BOOL &>();
  }

  v5 = (*a1 + 96 * v4);
  v7 = *a2;
  v6 = *(a2 + 8);
  v15[0] = *a3;
  v16 = 1;
  if (!v7)
  {
    *(v5 + 24) = 0;
    v8 = v5 + 6;
    v5[22] = -1;
    v9 = v5 + 22;
    *v5 = 0;
    *(v5 + 1) = 0;
    v10 = 1;
    *(v5 + 2) = 0;
    goto LABEL_12;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  *(v5 + 23) = v6;
  if (v6)
  {
    memmove(v5, v7, v6);
  }

  *(v5 + v6) = 0;
  v10 = v16;
  v5[22] = -1;
  v11 = v5 + 22;
  *(v11 - 64) = 0;
  v8 = v11 - 16;
  if (v10 != -1)
  {
    v9 = v11;
LABEL_12:
    v14 = v8;
    (off_28689A938[v10])(&v14, v15);
    *v9 = v10;
    if (v16 != -1)
    {
      (off_28689A8E0[v16])(&v14, v15);
    }
  }

  v12 = *(a1 + 8) + 1;
  *(a1 + 8) = v12;
  return *a1 + 96 * v12 - 96;
}

uint64_t llvm::SmallVectorImpl<mlir::FallbackAsmResourceMap::OpaqueAsmResource>::emplace_back<llvm::StringRef,std::string>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {

    llvm::SmallVectorTemplateBase<mlir::FallbackAsmResourceMap::OpaqueAsmResource,false>::growAndEmplaceBack<llvm::StringRef,std::string>();
  }

  v5 = (*a1 + 96 * v4);
  v7 = *a2;
  v6 = *(a2 + 8);
  v15 = *a3;
  v16 = *(a3 + 2);
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  v17 = 2;
  if (!v7)
  {
    *(v5 + 24) = 0;
    v8 = v5 + 6;
    v5[22] = -1;
    v9 = v5 + 22;
    *v5 = 0;
    *(v5 + 1) = 0;
    v10 = 2;
    *(v5 + 2) = 0;
    goto LABEL_12;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  *(v5 + 23) = v6;
  if (v6)
  {
    memmove(v5, v7, v6);
  }

  *(v5 + v6) = 0;
  v10 = v17;
  v5[22] = -1;
  v11 = v5 + 22;
  *(v11 - 64) = 0;
  v8 = v11 - 16;
  if (v10 != -1)
  {
    v9 = v11;
LABEL_12:
    v14 = v8;
    (off_28689A938[v10])(&v14, &v15);
    *v9 = v10;
    if (v17 != -1)
    {
      (off_28689A8E0[v17])(&v14, &v15);
    }
  }

  v12 = *(a1 + 8) + 1;
  *(a1 + 8) = v12;
  return *a1 + 96 * v12 - 96;
}

uint64_t mlir::FallbackAsmResourceMap::ResourceCollection::buildResources(uint64_t this, Operation *a2, mlir::AsmResourceBuilder *a3)
{
  v3 = *(this + 40);
  if (v3)
  {
    v5 = 0;
    v6 = *(this + 32);
    v7 = 96 * v3;
    do
    {
      v11 = (v6 + v5);
      v12 = (v6 + v5 + 24);
      v13 = *(v6 + v5 + 88);
      if (v13 == 1)
      {
        v8 = *(v11 + 23);
        if (v8 >= 0)
        {
          v9 = v6 + v5;
        }

        else
        {
          v9 = *v11;
        }

        if (v8 >= 0)
        {
          v10 = *(v11 + 23);
        }

        else
        {
          v10 = v11[1];
        }

        this = (*(*a3 + 16))(a3, v9, v10, *v12);
      }

      else if (v13)
      {
        v17 = v6 + v5;
        v18 = *(v6 + v5 + 23);
        if (v18 >= 0)
        {
          v19 = v6 + v5;
        }

        else
        {
          v19 = *(v6 + v5);
        }

        if (v18 >= 0)
        {
          v20 = *(v6 + v5 + 23);
        }

        else
        {
          v20 = *(v6 + v5 + 8);
        }

        v21 = *(v17 + 47);
        if (v21 >= 0)
        {
          v22 = v6 + v5 + 24;
        }

        else
        {
          v22 = *v12;
        }

        if (v21 >= 0)
        {
          v23 = *(v17 + 47);
        }

        else
        {
          v23 = *(v17 + 32);
        }

        this = (*(*a3 + 24))(a3, v19, v20, v22, v23);
      }

      else
      {
        v14 = *(v6 + v5 + 23);
        if (v14 >= 0)
        {
          v15 = v6 + v5;
        }

        else
        {
          v15 = *(v6 + v5);
        }

        if (v14 >= 0)
        {
          v16 = *(v6 + v5 + 23);
        }

        else
        {
          v16 = *(v6 + v5 + 8);
        }

        this = (*(*a3 + 32))(a3, v15, v16, *v12, *(v6 + v5 + 32), *(v6 + v5 + 40));
      }

      v5 += 96;
    }

    while (v7 != v5);
  }

  return this;
}

void mlir::AsmState::AsmState(llvm *a1, uint64_t a2, __int128 *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v13 = *a3;
  v14 = a3[1];
  v15 = *(a3 + 4);
  v4 = *(a3 + 40);
  *v12 = *(a3 + 41);
  *&v12[3] = *(a3 + 11);
  if ((v4 & 0x14) != 0)
  {
    v5 = a3[1];
    v19 = *a3;
    *v20 = v5;
    v21 = *(a3 + 4);
    v22 = v4;
    v23[0] = *(a3 + 41);
    *(v23 + 3) = *(a3 + 11);
  }

  else
  {
    threadid = llvm::get_threadid(a1);
    Context = mlir::Attribute::getContext((a2 + 24));
    DiagEngine = mlir::MLIRContext::getDiagEngine(Context);
    *&v19 = &threadid;
    v20[1] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Diagnostic &>::CallbacksHolder<verifyOpAndAdjustFlags(mlir::Operation *,mlir::OpPrintingFlags)::$_0,verifyOpAndAdjustFlags(mlir::Operation *,mlir::OpPrintingFlags)::$_0,void>::Callbacks + 2;
    v16 = mlir::DiagnosticEngine::registerHandler(DiagEngine, &v19);
    v8 = v20[1];
    if (v20[1] >= 8)
    {
      if ((v20[1] & 4) != 0)
      {
        if ((v20[1] & 2) != 0)
        {
          v9 = &v19;
        }

        else
        {
          v9 = v19;
        }

        (*((v20[1] & 0xFFFFFFFFFFFFFFF8) + 16))(v9, v7);
      }

      if ((v8 & 2) == 0)
      {
        llvm::deallocate_buffer(v19, *(&v19 + 1));
      }
    }

    v10 = mlir::verify(a2, 1);
    v11 = v4 | 4;
    if (v10)
    {
      v11 = v4;
    }

    v19 = v13;
    *v20 = v14;
    v21 = v15;
    v22 = v11;
    v23[0] = *v12;
    *(v23 + 3) = *&v12[3];
    mlir::ScopedDiagnosticHandler::~ScopedDiagnosticHandler(&v16);
  }

  operator new();
}

void mlir::AsmState::attachFallbackResourcePrinter(mlir::AsmState *this, mlir::FallbackAsmResourceMap *a2)
{
  mlir::FallbackAsmResourceMap::getPrinters(a2, &v11);
  v3 = v11;
  v4 = v12;
  if (v11 == v12)
  {
    if (!v11)
    {
      return;
    }

    goto LABEL_14;
  }

  v5 = v11;
  do
  {
    v6 = *v5;
    *v5 = 0;
    v7 = *this;
    v8 = *(*this + 64);
    if (v8 >= *(*this + 68))
    {
      llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmResourcePrinter>,false>::growAndEmplaceBack<std::unique_ptr<mlir::AsmResourcePrinter>>();
    }

    *(*(v7 + 56) + 8 * v8) = v6;
    *(v7 + 64) = v8 + 1;
    ++v5;
  }

  while (v5 != v4);
  if (v3)
  {
    while (v4 != v3)
    {
      v10 = *--v4;
      v9 = v10;
      *v4 = 0;
      if (v10)
      {
        (*(*v9 + 8))(v9);
      }
    }

LABEL_14:
    operator delete(v3);
  }
}

void mlir::AsmState::~AsmState(mlir::detail::AsmStateImpl **this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    mlir::detail::AsmStateImpl::~AsmStateImpl(v2);
  }
}

{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    mlir::detail::AsmStateImpl::~AsmStateImpl(v2);
  }
}

uint64_t *mlir::AsmState::attachResourcePrinter(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *(*result + 64);
  if (v3 >= *(*result + 68))
  {
    llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmResourcePrinter>,false>::growAndEmplaceBack<std::unique_ptr<mlir::AsmResourcePrinter>>();
  }

  v4 = *(v2 + 56);
  v5 = *a2;
  *a2 = 0;
  *(v4 + 8 * v3) = v5;
  *(v2 + 64) = v3 + 1;
  return result;
}

__n128 mlir::AsmPrinter::Impl::Impl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  result = *(a3 + 624);
  v4 = *(a3 + 656);
  *(a1 + 32) = *(a3 + 640);
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  *(a1 + 64) = 1;
  return result;
}

{
  *a1 = a2;
  *(a1 + 8) = a3;
  result = *(a3 + 624);
  v4 = *(a3 + 656);
  *(a1 + 32) = *(a3 + 640);
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  *(a1 + 64) = 1;
  return result;
}

llvm::raw_ostream *mlir::AsmPrinter::Impl::printTrailingLocation(llvm::raw_ostream *result, uint64_t a2, int a3)
{
  if (*(result + 56))
  {
    v4 = *result;
    v5 = *(*result + 32);
    if (*(*result + 24) == v5)
    {
      v6 = result;
      v7 = a2;
      v8 = a3;
      llvm::raw_ostream::write(v4, " ", 1uLL);
      result = v6;
      a2 = v7;
      a3 = v8;
    }

    else
    {
      *v5 = 32;
      ++v4[4];
    }

    return mlir::AsmPrinter::Impl::printLocation(result, a2, a3);
  }

  return result;
}

llvm::raw_ostream *mlir::AsmPrinter::Impl::printLocation(llvm::raw_ostream *a1, uint64_t a2, int a3)
{
  if ((*(a1 + 56) & 2) == 0)
  {
    v4 = *a1;
    v5 = *(*a1 + 32);
    if (*(*a1 + 24) - v5 > 3uLL)
    {
      *v5 = 677605228;
      v4[4] += 4;
      if (!a3)
      {
LABEL_10:
        mlir::AsmPrinter::Impl::printLocationInternal(a1, a2, 0, 1);
LABEL_11:
        result = *a1;
        v11 = *(*a1 + 32);
        if (v11 >= *(*a1 + 24))
        {

          return llvm::raw_ostream::write(result, 41);
        }

        else
        {
          *(result + 4) = v11 + 1;
          *v11 = 41;
        }

        return result;
      }
    }

    else
    {
      v6 = a2;
      llvm::raw_ostream::write(v4, "loc(", 4uLL);
      a2 = v6;
      if (!a3)
      {
        goto LABEL_10;
      }
    }

    v9 = a2;
    a2 = v9;
    if (Alias)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return mlir::AsmPrinter::Impl::printLocationInternal(a1, a2, 1, 1);
}

llvm::raw_ostream *mlir::AsmPrinter::Impl::printLocationInternal(llvm::raw_ostream *result, uint64_t a2, uint64_t a3, char a4)
{
  v6 = result;
  if ((a4 & 1) == 0)
  {
    if (result)
    {
      return result;
    }
  }

  v7 = *(*a2 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id && a2 != 0)
  {
    v87 = a2;
    FallbackLocation = mlir::OpaqueLoc::getFallbackLocation(&v87);
    v15 = v6;
    return mlir::AsmPrinter::Impl::printLocationInternal(v15, FallbackLocation, a3, 0);
  }

  if (v7 != &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
  {
    if (v7 != &mlir::detail::TypeIDResolver<mlir::FileLineColLoc,void>::id)
    {
      if (v7 == &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id && a2 != 0)
      {
        v87 = a2;
        Name = mlir::NameLoc::getName(&v87);
        Value = mlir::StringAttr::getValue(&Name);
        v30 = *v6;
        v31 = *(*v6 + 4);
        if (*(*v6 + 3) == v31)
        {
          v44 = Value;
          v45 = v29;
          llvm::raw_ostream::write(*v6, "", 1uLL);
          llvm::printEscapedString(v44, v45, *v6);
          v32 = *v6;
          v33 = *(*v6 + 4);
          if (*(*v6 + 3) != v33)
          {
LABEL_37:
            *v33 = 34;
            ++*(v32 + 4);
            result = mlir::NameLoc::getChildLoc(&v87);
            if (*(*result + 136) == &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
            {
              return result;
            }

            goto LABEL_54;
          }
        }

        else
        {
          *v31 = 34;
          ++*(v30 + 4);
          llvm::printEscapedString(Value, v29, *v6);
          v32 = *v6;
          v33 = *(*v6 + 4);
          if (*(*v6 + 3) != v33)
          {
            goto LABEL_37;
          }
        }

        llvm::raw_ostream::write(v32, "", 1uLL);
        result = mlir::NameLoc::getChildLoc(&v87);
        if (*(*result + 136) == &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
        {
          return result;
        }

LABEL_54:
        v46 = result;
        v47 = *v6;
        v48 = *(*v6 + 4);
        if (v48 >= *(*v6 + 3))
        {
          llvm::raw_ostream::write(v47, 40);
        }

        else
        {
          *(v47 + 4) = v48 + 1;
          *v48 = 40;
        }

        mlir::AsmPrinter::Impl::printLocationInternal(v6, v46, a3, 0);
        result = *v6;
        v49 = *(*v6 + 4);
        if (v49 < *(*v6 + 3))
        {
          *(result + 4) = v49 + 1;
          v50 = 41;
LABEL_107:
          *v49 = v50;
          return result;
        }

        v51 = 41;
        return llvm::raw_ostream::write(result, v51);
      }

      if (v7 == &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id && a2 != 0)
      {
        v87 = a2;
        Caller = mlir::CallSiteLoc::getCaller(&v87);
        Callee = mlir::CallSiteLoc::getCallee(&v87);
        v41 = Callee;
        if (a3)
        {
          mlir::AsmPrinter::Impl::printLocationInternal(v6, Callee, a3, 0);
          if (*(*v41 + 136) == &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id)
          {
            v42 = *v6;
            if (*(*Caller + 136) == &mlir::detail::TypeIDResolver<mlir::FileLineColLoc,void>::id)
            {
              goto LABEL_85;
            }
          }

          else
          {
            v42 = *v6;
          }

          ++*(v6 + 16);
          v66 = *(v42 + 4);
          if (v66 >= *(v42 + 3))
          {
            v42 = llvm::raw_ostream::write(v42, 10);
          }

          else
          {
            *(v42 + 4) = v66 + 1;
            *v66 = 10;
          }

LABEL_85:
          v67 = *(v42 + 4);
          if (*(v42 + 3) - v67 > 3uLL)
          {
            *v67 = 544497952;
            *(v42 + 4) += 4;
          }

          else
          {
            llvm::raw_ostream::write(v42, " at ", 4uLL);
          }

          v15 = v6;
          FallbackLocation = Caller;
          return mlir::AsmPrinter::Impl::printLocationInternal(v15, FallbackLocation, a3, 0);
        }

        v52 = *v6;
        v53 = *(*v6 + 4);
        if ((*(*v6 + 3) - v53) > 8)
        {
          *(v53 + 8) = 40;
          *v53 = *"callsite(";
          *(v52 + 4) += 9;
        }

        else
        {
          llvm::raw_ostream::write(v52, "callsite(", 9uLL);
        }

        mlir::AsmPrinter::Impl::printLocationInternal(v6, v41, a3, 0);
        v63 = *v6;
        v64 = *(*v6 + 4);
        if (*(*v6 + 3) - v64 > 3uLL)
        {
          *v64 = 544497952;
          *(v63 + 4) += 4;
        }

        else
        {
          llvm::raw_ostream::write(v63, " at ", 4uLL);
        }

        mlir::AsmPrinter::Impl::printLocationInternal(v6, Caller, a3, 0);
        result = *v6;
        v65 = *(*v6 + 4);
        if (*(*v6 + 3) == v65)
        {
          return llvm::raw_ostream::write(result, ")", 1uLL);
        }

        *v65 = 41;
        v43 = *(result + 4) + 1;
LABEL_80:
        *(result + 4) = v43;
        return result;
      }

      if (v7 == &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id && a2 != 0)
      {
        v87 = a2;
        if ((a3 & 1) == 0)
        {
          v12 = *v6;
          v13 = *(*v6 + 4);
          if ((*(*v6 + 3) - v13) > 4)
          {
            *(v13 + 4) = 100;
            *v13 = 1702065510;
            *(v12 + 4) += 5;
          }

          else
          {
            llvm::raw_ostream::write(v12, "fused", 5uLL);
          }
        }

        Metadata = mlir::FusedLoc::getMetadata(&v87);
        if (Metadata)
        {
          v69 = Metadata;
          v70 = *v6;
          v71 = *(*v6 + 4);
          if (v71 >= *(*v6 + 3))
          {
            llvm::raw_ostream::write(v70, 60);
          }

          else
          {
            *(v70 + 4) = v71 + 1;
            *v71 = 60;
          }

          {
            mlir::AsmPrinter::Impl::printAttributeImpl(v6, v69, 0);
          }

          v72 = *v6;
          v73 = *(*v6 + 4);
          if (v73 >= *(*v6 + 3))
          {
            llvm::raw_ostream::write(v72, 62);
          }

          else
          {
            *(v72 + 4) = v73 + 1;
            *v73 = 62;
          }
        }

        v74 = *v6;
        v75 = *(*v6 + 4);
        if (v75 >= *(*v6 + 3))
        {
          llvm::raw_ostream::write(v74, 91);
        }

        else
        {
          *(v74 + 4) = v75 + 1;
          *v75 = 91;
        }

        Locations = mlir::FusedLoc::getLocations(&v87);
        if (v77)
        {
          v78 = Locations;
          v79 = v77;
          mlir::AsmPrinter::Impl::printLocationInternal(v6, *Locations, a3, 0);
          if (v79 != 1)
          {
            v80 = 8 * v79;
            v81 = v78 + 1;
            v82 = v80 - 8;
            do
            {
              v84 = *v6;
              v85 = *(*v6 + 4);
              if (*(*v6 + 3) - v85 > 1uLL)
              {
                *v85 = 8236;
                *(v84 + 4) += 2;
              }

              else
              {
                llvm::raw_ostream::write(v84, ", ", 2uLL);
              }

              v83 = *v81++;
              mlir::AsmPrinter::Impl::printLocationInternal(v6, v83, a3, 0);
              v82 -= 8;
            }

            while (v82);
          }
        }

        result = *v6;
        v49 = *(*v6 + 4);
        if (v49 < *(*v6 + 3))
        {
          *(result + 4) = v49 + 1;
          v50 = 93;
          goto LABEL_107;
        }

        v51 = 93;
        return llvm::raw_ostream::write(result, v51);
      }

      return result;
    }

    v87 = a2;
    if (a3)
    {
      v20 = *v6;
      Name = mlir::FileLineColLoc::getFilename(&v87);
      v22 = mlir::StringAttr::getValue(&Name);
      v23 = v21;
      v24 = *(v20 + 4);
      if (v21 <= *(v20 + 3) - v24)
      {
        if (v21)
        {
          memcpy(v24, v22, v21);
          *(v20 + 4) += v23;
        }

        goto LABEL_67;
      }

      v25 = v20;
      v26 = v22;
      v27 = v23;
      goto LABEL_66;
    }

    Name = mlir::FileLineColLoc::getFilename(&v87);
    v34 = mlir::StringAttr::getValue(&Name);
    v36 = *v6;
    v37 = *(*v6 + 4);
    if (*(*v6 + 3) == v37)
    {
      v54 = v34;
      v55 = v35;
      llvm::raw_ostream::write(*v6, "", 1uLL);
      llvm::printEscapedString(v54, v55, *v6);
      v25 = *v6;
      v38 = *(*v6 + 4);
      if (*(*v6 + 3) != v38)
      {
        goto LABEL_46;
      }
    }

    else
    {
      *v37 = 34;
      ++*(v36 + 4);
      llvm::printEscapedString(v34, v35, *v6);
      v25 = *v6;
      v38 = *(*v6 + 4);
      if (*(*v6 + 3) != v38)
      {
LABEL_46:
        *v38 = 34;
        ++*(v25 + 4);
LABEL_67:
        v56 = *v6;
        v57 = *(v56 + 4);
        if (v57 >= *(v56 + 3))
        {
          v56 = llvm::raw_ostream::write(v56, 58);
        }

        else
        {
          *(v56 + 4) = v57 + 1;
          *v57 = 58;
        }

        Line = mlir::FileLineColLoc::getLine(&v87);
        v59 = llvm::raw_ostream::operator<<(v56, Line);
        v60 = *(v59 + 4);
        if (v60 >= *(v59 + 3))
        {
          v61 = llvm::raw_ostream::write(v59, 58);
        }

        else
        {
          v61 = v59;
          *(v59 + 4) = v60 + 1;
          *v60 = 58;
        }

        Column = mlir::FileLineColLoc::getColumn(&v87);
        return llvm::raw_ostream::operator<<(v61, Column);
      }
    }

    v26 = "";
    v27 = 1;
LABEL_66:
    llvm::raw_ostream::write(v25, v26, v27);
    goto LABEL_67;
  }

  result = *v6;
  v16 = *(*v6 + 4);
  v17 = *(*v6 + 3) - v16;
  if (a3)
  {
    if (v17 > 8)
    {
      *(v16 + 8) = 93;
      *v16 = *"[unknown]";
      v43 = *(result + 4) + 9;
      goto LABEL_80;
    }

    v18 = "[unknown]";
    v19 = 9;
  }

  else
  {
    if (v17 > 6)
    {
      *(v16 + 3) = 1853321070;
      *v16 = 1852534389;
      v43 = *(result + 4) + 7;
      goto LABEL_80;
    }

    v18 = "unknown";
    v19 = 7;
  }

  return llvm::raw_ostream::write(result, v18, v19);
}

uint64_t anonymous namespace::AliasState::getAlias(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 4);
  if (!v4)
  {
    return 0;
  }

  v5 = *a1;
  v6 = (v4 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v7 = *(*a1 + 16 * v6);
  if (v7 != a2)
  {
    v20 = 1;
    while (v7 != -4096)
    {
      v21 = v6 + v20++;
      v6 = v21 & (v4 - 1);
      v7 = *(v5 + 16 * v6);
      if (v7 == a2)
      {
        goto LABEL_3;
      }
    }

    return 0;
  }

LABEL_3:
  if (v6 == v4)
  {
    return 0;
  }

  v9 = *(v5 + 16 * v6 + 8);
  if (v9 == *(a1 + 8))
  {
    return 0;
  }

  v10 = a1[3] + 32 * v9;
  if ((*(v10 + 27) & 0x40) != 0)
  {
    v11 = "!";
  }

  else
  {
    v11 = "#";
  }

  v12 = a3[4];
  if (a3[3] == v12)
  {
    v14 = llvm::raw_ostream::write(a3, v11, 1uLL);
    v13 = v14[4];
    v15 = *(v10 + 8);
    v16 = *(v10 + 16);
    if (v16 > v14[3] - v13)
    {
      goto LABEL_11;
    }

LABEL_13:
    if (v16)
    {
      v17 = v14;
      v18 = v16;
      memcpy(v13, v15, v16);
      v17[4] += v18;
    }

    goto LABEL_15;
  }

  *v12 = *v11;
  v13 = (a3[4] + 1);
  a3[4] = v13;
  v14 = a3;
  v15 = *(v10 + 8);
  v16 = *(v10 + 16);
  if (v16 <= a3[3] - v13)
  {
    goto LABEL_13;
  }

LABEL_11:
  llvm::raw_ostream::write(v14, v15, v16);
LABEL_15:
  v19 = *(v10 + 24);
  if ((v19 & 0x3FFFFFFF) != 0)
  {
    llvm::raw_ostream::operator<<(a3, v19 & 0x3FFFFFFF);
  }

  return 1;
}

uint64_t mlir::AsmPrinter::Impl::printAlias(uint64_t a1, uint64_t a2)
{
}

{
  v2 = *(a1 + 8);
  v3 = *(v2 + 160);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v2 + 144);
  v5 = (v3 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v6 = *(v4 + 16 * v5);
  if (v6 != a2)
  {
    v20 = 1;
    while (v6 != -4096)
    {
      v21 = v5 + v20++;
      v5 = v21 & (v3 - 1);
      v6 = *(v4 + 16 * v5);
      if (v6 == a2)
      {
        goto LABEL_3;
      }
    }

    return 0;
  }

LABEL_3:
  if (v5 == v3)
  {
    return 0;
  }

  v7 = *(v4 + 16 * v5 + 8);
  if (v7 == *(v2 + 176))
  {
    return 0;
  }

  v8 = *(v2 + 168) + 32 * v7;
  if (*(v8 + 28) != 1)
  {
    return 0;
  }

  v9 = *a1;
  if ((*(v8 + 27) & 0x40) != 0)
  {
    v10 = "!";
  }

  else
  {
    v10 = "#";
  }

  v11 = v9[4];
  if (v9[3] == v11)
  {
    v13 = llvm::raw_ostream::write(*a1, v10, 1uLL);
    v12 = v13[4];
    v14 = *(v8 + 8);
    v15 = *(v8 + 16);
    if (v15 > v13[3] - v12)
    {
      goto LABEL_12;
    }

LABEL_15:
    if (v15)
    {
      v17 = v13;
      v18 = v15;
      memcpy(v12, v14, v15);
      v17[4] += v18;
    }

    goto LABEL_17;
  }

  *v11 = *v10;
  v12 = (v9[4] + 1);
  v9[4] = v12;
  v13 = v9;
  v14 = *(v8 + 8);
  v15 = *(v8 + 16);
  if (v15 <= v9[3] - v12)
  {
    goto LABEL_15;
  }

LABEL_12:
  llvm::raw_ostream::write(v13, v14, v15);
LABEL_17:
  v19 = *(v8 + 24);
  if ((v19 & 0x3FFFFFFF) != 0)
  {
    llvm::raw_ostream::operator<<(v9, v19 & 0x3FFFFFFF);
  }

  return 1;
}

__n128 mlir::AsmPrinter::Impl::printResourceHandle(uint64_t a1, __n128 *a2)
{
  v4 = mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(a2[1].n128_i64[0]);
  v5 = *a1;
  (*(*v4 + 40))(__p);
  if ((v18 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v7 = v18;
  }

  else
  {
    v7 = __p[1];
  }

  llvm::raw_ostream::write(v5, v6, v7);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = *(a1 + 8);
  v15 = a2[1].n128_u64[0];
  v9 = llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>,llvm::DenseMapInfo<mlir::Dialect *,void>,llvm::detail::DenseMapPair<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>>>,mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>,llvm::DenseMapInfo<mlir::Dialect *,void>,llvm::detail::DenseMapPair<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>>>::operator[](v8 + 120, &v15);
  llvm::DenseMapBase<llvm::DenseMap<mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>,mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>::try_emplace<llvm::detail::DenseSetEmpty&>(v9, a2, __p);
  if (v17 == 1)
  {
    v11 = v9[3];
    v12 = *(v9 + 8);
    if (v12 >= *(v9 + 9))
    {
      if (v11 > a2 || v11 + 24 * v12 <= a2)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v13 = (v11 + 24 * *(v9 + 8));
    result = *a2;
    v13[1].n128_u64[0] = a2[1].n128_u64[0];
    *v13 = result;
    ++*(v9 + 8);
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>,llvm::DenseMapInfo<mlir::Dialect *,void>,llvm::detail::DenseMapPair<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>>>,mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>,llvm::DenseMapInfo<mlir::Dialect *,void>,llvm::detail::DenseMapPair<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = (*a1 + 48 * v4);
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
      v5 = (*a1 + 48 * (v12 & v3));
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
    llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>,llvm::DenseMapInfo<mlir::Dialect *,void>,llvm::detail::DenseMapPair<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>>>,mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>,llvm::DenseMapInfo<mlir::Dialect *,void>,llvm::detail::DenseMapPair<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>,void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>::LookupBucketFor<void *>(v14, v13, &v15);
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
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v5 + 6;
  v5[5] = 0;
  return v5 + 1;
}

double mlir::AsmPrinter::Impl::printAttribute(llvm::raw_ostream **a1, uint64_t **a2, int a3)
{
  if (a2)
  {
    {

      mlir::AsmPrinter::Impl::printAttributeImpl(a1, a2, a3);
    }
  }

  else
  {
    v7 = *a1;
    v8 = *(v7 + 4);
    if ((*(v7 + 3) - v8) > 0x11)
    {
      *(v8 + 16) = 15934;
      result = *"<<NULL ATTRIBUTE>>";
      *v8 = *"<<NULL ATTRIBUTE>>";
      *(v7 + 4) += 18;
    }

    else
    {

      llvm::raw_ostream::write(v7, "<<NULL ATTRIBUTE>>", 0x12uLL);
    }
  }

  return result;
}

void mlir::AsmPrinter::Impl::printAttributeImpl(llvm::raw_ostream **a1, uint64_t **a2, int a3)
{
  v122 = *MEMORY[0x277D85DE8];
  if (*(**a2 + 24) != &mlir::detail::TypeIDResolver<mlir::BuiltinDialect,void>::id)
  {
    mlir::AsmPrinter::Impl::printDialectAttribute(a1, a2);
    goto LABEL_8;
  }

  v6 = (*a2)[17];
  if (v6 == &mlir::detail::TypeIDResolver<mlir::OpaqueAttr,void>::id)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  v118 = v7;
  if (v7)
  {
    v8 = *a1;
    v120.n128_u64[0] = mlir::OpaqueAttr::getDialectNamespace(&v118);
    Value = mlir::StringAttr::getValue(&v120);
    v11 = v10;
    AttrData = mlir::OpaqueAttr::getAttrData(&v118);
    printDialectSymbol(v8, "#", 1uLL, Value, v11, AttrData, v13);
    goto LABEL_8;
  }

  if (v6 == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    v22 = *a1;
    v23 = *(*a1 + 4);
    if (*(*a1 + 3) - v23 > 3uLL)
    {
      *v23 = 1953066613;
      *(v22 + 4) += 4;
    }

    else
    {
      llvm::raw_ostream::write(v22, "unit", 4uLL);
    }

    return;
  }

  {
    if (v6 == mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID(void)::id)
    {
      v19 = a2;
    }

    else
    {
      v19 = 0;
    }

    v117 = v19;
    if (v19)
    {
LABEL_20:
      v20 = *a1;
      v21 = *(*a1 + 4);
      if ((*(*a1 + 3) - v21) > 8)
      {
        *(v21 + 8) = 91;
        *v21 = *"distinct[";
        *(v20 + 4) += 9;
      }

      else
      {
        v20 = llvm::raw_ostream::write(*a1, "distinct[", 9uLL);
      }

      v24 = a1[1];
      v25 = (v24 + 592);
      v119 = v19;
      llvm::DenseMapBase<llvm::DenseMap<mlir::pdl_to_pdl_interp::ConstraintQuestion *,mlir::pdl_interp::ApplyConstraintOp,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::ConstraintQuestion *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::ConstraintQuestion *,mlir::pdl_interp::ApplyConstraintOp>>,mlir::pdl_to_pdl_interp::ConstraintQuestion *,mlir::pdl_interp::ApplyConstraintOp,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::ConstraintQuestion *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::ConstraintQuestion *,mlir::pdl_interp::ApplyConstraintOp>>::try_emplace<mlir::pdl_interp::ApplyConstraintOp>(v24 + 600, &v119, v24 + 74, &v120);
      if (v121 == 1)
      {
        ++*v25;
      }

      v26 = llvm::raw_ostream::operator<<(v20, *(v120.n128_u64[0] + 8));
      v27 = *(v26 + 4);
      if (*(v26 + 3) - v27 > 1uLL)
      {
        *v27 = 15453;
        *(v26 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v26, "]<", 2uLL);
      }

      if (*(*mlir::DistinctAttr::getReferencedAttr(&v117) + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        ReferencedAttr = mlir::DistinctAttr::getReferencedAttr(&v117);
        if (ReferencedAttr)
        {
          v29 = ReferencedAttr;
          {
            mlir::AsmPrinter::Impl::printAttributeImpl(a1, v29, 0);
          }
        }

        else
        {
          v30 = *a1;
          v31 = *(*a1 + 4);
          if ((*(*a1 + 3) - v31) > 0x11)
          {
            *(v31 + 16) = 15934;
            *v31 = *"<<NULL ATTRIBUTE>>";
            *(v30 + 4) += 18;
          }

          else
          {
            llvm::raw_ostream::write(v30, "<<NULL ATTRIBUTE>>", 0x12uLL);
          }
        }
      }

      goto LABEL_40;
    }
  }

  else
  {
    mlir::AsmPrinter::Impl::printAttributeImpl();
    if (v6 == mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID(void)::id)
    {
      v19 = a2;
    }

    else
    {
      v19 = 0;
    }

    v117 = v19;
    if (v19)
    {
      goto LABEL_20;
    }
  }

  v34 = (*a2)[17];
  if (v34 == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v35 = a2;
  }

  else
  {
    v35 = 0;
  }

  v119 = v35;
  if (v35)
  {
    v36 = *a1;
    v37 = *(*a1 + 4);
    if (v37 >= *(*a1 + 3))
    {
      llvm::raw_ostream::write(v36, 123);
    }

    else
    {
      *(v36 + 4) = v37 + 1;
      *v37 = 123;
    }

    v42 = mlir::DictionaryAttr::getValue(&v119);
    if (v43)
    {
      v44 = v42;
      v45 = v43;
      v46 = *a1;
      mlir::AsmPrinter::Impl::printNamedAttribute(a1, *v42, v42[1]);
      if (v45 != 1)
      {
        v47 = &v44[2 * v45];
        v48 = v44 + 2;
        do
        {
          while (1)
          {
            v51 = *(v46 + 4);
            if (*(v46 + 3) - v51 <= 1uLL)
            {
              break;
            }

            *v51 = 8236;
            *(v46 + 4) += 2;
            v49 = *v48;
            v50 = v48[1];
            v48 += 2;
            mlir::AsmPrinter::Impl::printNamedAttribute(a1, v49, v50);
            if (v48 == v47)
            {
              goto LABEL_68;
            }
          }

          llvm::raw_ostream::write(v46, ", ", 2uLL);
          v52 = *v48;
          v53 = v48[1];
          v48 += 2;
          mlir::AsmPrinter::Impl::printNamedAttribute(a1, v52, v53);
        }

        while (v48 != v47);
      }
    }

LABEL_68:
    v54 = *a1;
    v55 = *(*a1 + 4);
    if (v55 >= *(*a1 + 3))
    {
      llvm::raw_ostream::write(v54, 125);
      goto LABEL_8;
    }

    *(v54 + 4) = v55 + 1;
    v56 = 125;
    goto LABEL_70;
  }

  if (v34 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v38 = a2;
  }

  else
  {
    v38 = 0;
  }

  v116 = v38;
  if (!v38)
  {
    if (v34 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      v57 = a2;
    }

    else
    {
      v57 = 0;
    }

    v115 = v57;
    if (v57)
    {
      v114[0] = 0;
      mlir::FloatAttr::getValue(&v115, &v120);
      printFloatValue(&v120, *a1, v114);
      llvm::APFloat::~APFloat(&v120);
      if (a3 == 1)
      {
        v120.n128_u64[0] = mlir::FloatAttr::getType(&v115);
        if (mlir::Type::isF64(&v120) && !v114[0])
        {
          return;
        }
      }

      goto LABEL_8;
    }

    if (v34 == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v61 = a2;
    }

    else
    {
      v61 = 0;
    }

    *v114 = v61;
    if (v61)
    {
      v62 = mlir::StringAttr::getValue(v114);
      mlir::AsmPrinter::Impl::printEscapedString(a1, v62, v63);
      goto LABEL_8;
    }

    if (v34 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v64 = a2;
    }

    else
    {
      v64 = 0;
    }

    v113 = v64;
    if (v64)
    {
      v65 = *a1;
      v66 = *(*a1 + 4);
      if (v66 >= *(*a1 + 3))
      {
        llvm::raw_ostream::write(v65, 91);
      }

      else
      {
        *(v65 + 4) = v66 + 1;
        *v66 = 91;
      }

      v120.n128_u64[0] = mlir::ArrayAttr::getValue(&v113);
      v120.n128_u64[1] = v68;
      llvm::interleaveComma<llvm::ArrayRef<mlir::Attribute>,mlir::AsmPrinter::Impl::printAttributeImpl(mlir::Attribute,mlir::AsmPrinter::Impl::AttrTypeElision)::$_1,llvm::raw_ostream,mlir::Attribute const>(&v120, *a1, a1);
      v69 = *a1;
      v55 = *(*a1 + 4);
      if (v55 >= *(*a1 + 3))
      {
        llvm::raw_ostream::write(v69, 93);
        goto LABEL_8;
      }

      *(v69 + 4) = v55 + 1;
      v56 = 93;
      goto LABEL_70;
    }

    if (v34 == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
    {
      v67 = a2;
    }

    else
    {
      v67 = 0;
    }

    v112 = v67;
    if (v67)
    {
      llvm::raw_ostream::operator<<(*a1, "affine_map<");
      v120.n128_u64[0] = mlir::AffineMapAttr::getValue(&v112);
      mlir::AffineMap::print(&v120, *a1);
LABEL_40:
      v32 = *a1;
      v33 = *(*a1 + 4);
      if (v33 >= *(*a1 + 3))
      {
        llvm::raw_ostream::write(v32, 62);
      }

      else
      {
        *(v32 + 4) = v33 + 1;
        *v33 = 62;
      }

      return;
    }

    if (v34 == &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id)
    {
      v70 = a2;
    }

    else
    {
      v70 = 0;
    }

    v111 = v70;
    if (v70)
    {
      llvm::raw_ostream::operator<<(*a1, "affine_set<");
      v120.n128_u64[0] = mlir::IntegerSetAttr::getValue(&v111);
      mlir::IntegerSet::print(&v120, *a1);
    }

    if (v34 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v71 = a2;
    }

    else
    {
      v71 = 0;
    }

    v110 = v71;
    if (v71)
    {
      v72 = mlir::TypeAttr::getValue(&v110);
      mlir::AsmPrinter::Impl::printType(a1, v72);
      goto LABEL_8;
    }

    if (v34 == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      v73 = a2;
    }

    else
    {
      v73 = 0;
    }

    v109 = v73;
    if (v73)
    {
      v120.n128_u64[0] = mlir::SymbolRefAttr::getRootReference(&v109);
      v74 = mlir::StringAttr::getValue(&v120);
      printSymbolReference(v74, v75, *a1);
      NestedReferences = mlir::SymbolRefAttr::getNestedReferences(&v109);
      if (v77)
      {
        v78 = NestedReferences;
        v79 = 8 * v77;
        do
        {
          v80 = *v78++;
          v120.n128_u64[0] = v80;
          llvm::raw_ostream::operator<<(*a1, "::");
          v81 = mlir::FlatSymbolRefAttr::getValue(&v120);
          printSymbolReference(v81, v82, *a1);
          v79 -= 8;
        }

        while (v79);
      }

LABEL_8:
      if (a3 != 2)
      {
        v120.n128_u64[0] = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(a2);
        v120.n128_u64[1] = v14;
        if (v120.n128_u64[0])
        {
          Type = mlir::TypedAttr::getType(&v120);
          if (*(*Type + 136) != &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id)
          {
            v16 = Type;
            v17 = *a1;
            v18 = *(*a1 + 4);
            if ((*(*a1 + 3) - v18) <= 2)
            {
              llvm::raw_ostream::write(v17, " : ", 3uLL);
              if (mlir::AsmPrinter::Impl::printAlias(a1, v16))
              {
                return;
              }

LABEL_23:
              mlir::AsmPrinter::Impl::printTypeImpl(a1, v16);
              return;
            }

            *(v18 + 2) = 32;
            *v18 = 14880;
            *(v17 + 4) += 3;
            if ((mlir::AsmPrinter::Impl::printAlias(a1, v16) & 1) == 0)
            {
              goto LABEL_23;
            }
          }
        }
      }

      return;
    }

    if (v34 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id)
    {
      v83 = a2;
    }

    else
    {
      v83 = 0;
    }

    v108 = v83;
    if (v83)
    {
      v84 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v108);
      shouldElideElementsAttr = mlir::OpPrintingFlags::shouldElideElementsAttr((a1 + 2), v84, v85);
      v87 = *a1;
      if (!shouldElideElementsAttr)
      {
        llvm::raw_ostream::operator<<(v87, "dense<");
        mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(a1, v108, 1);
LABEL_157:
        v97 = *a1;
        v55 = *(*a1 + 4);
        if (v55 >= *(*a1 + 3))
        {
          llvm::raw_ostream::write(v97, 62);
          goto LABEL_8;
        }

        *(v97 + 4) = v55 + 1;
        v56 = 62;
LABEL_70:
        *v55 = v56;
        goto LABEL_8;
      }
    }

    else
    {
      if (v34 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id)
      {
        v88 = a2;
      }

      else
      {
        v88 = 0;
      }

      v107 = v88;
      if (!v88)
      {
        if (v34 == &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id)
        {
          v92 = a2;
        }

        else
        {
          v92 = 0;
        }

        v106 = v92;
        if (!v92)
        {
          if (v34 == &mlir::detail::TypeIDResolver<mlir::StridedLayoutAttr,void>::id)
          {
            v98 = a2;
          }

          else
          {
            v98 = 0;
          }

          Values = v98;
          if (v98)
          {
            mlir::StridedLayoutAttr::print(&Values, *a1);
          }

          else
          {
            if (v34 == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
            {
              v100 = a2;
            }

            else
            {
              v100 = 0;
            }

            v104 = v100;
            if (v100)
            {
              llvm::raw_ostream::operator<<(*a1, "array<");
              ElementType = mlir::DenseArrayAttr::getElementType(&v104);
              mlir::AsmPrinter::Impl::printType(a1, ElementType);
              if (mlir::DenseArrayAttr::getSize(&v104))
              {
                llvm::raw_ostream::operator<<(*a1, ": ");
                mlir::AsmPrinter::Impl::printDenseArrayAttr(a1, v104);
              }

              llvm::raw_ostream::operator<<(*a1, ">");
              return;
            }

            if (v34 == &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id)
            {
              v102 = a2;
            }

            else
            {
              v102 = 0;
            }

            v103 = v102;
            if (v102)
            {
              llvm::raw_ostream::operator<<(*a1, "dense_resource<");
              mlir::DenseResourceElementsAttr::getRawHandle(&v103, &v120);
              mlir::AsmPrinter::Impl::printResourceHandle(a1, &v120);
              llvm::raw_ostream::operator<<(*a1, ">");
            }

            else
            {
              if (!mlir::LocationAttr::classof(a2) || !a2)
              {
                llvm::report_fatal_error("Unknown builtin attribute", 1);
              }

              mlir::AsmPrinter::Impl::printLocation(a1, a2, 0);
            }
          }

          goto LABEL_8;
        }

        v120.n128_u64[0] = mlir::SparseElementsAttr::getIndices(&v106);
        v93 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v120);
        if (mlir::OpPrintingFlags::shouldElideElementsAttr((a1 + 2), v93, v94) & 1) != 0 || (Values = mlir::SparseElementsAttr::getValues(&v106), v95 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&Values), (mlir::OpPrintingFlags::shouldElideElementsAttr((a1 + 2), v95, v96)))
        {
          printElidedElementsAttr(*a1);
          goto LABEL_8;
        }

        llvm::raw_ostream::operator<<(*a1, "sparse<");
        v120.n128_u64[0] = mlir::SparseElementsAttr::getIndices(&v106);
        if (mlir::DenseElementsAttr::getNumElements(&v120))
        {
          mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(a1, v120.n128_u64[0], 0);
          llvm::raw_ostream::operator<<(*a1, ", ");
          v99 = mlir::SparseElementsAttr::getValues(&v106);
          mlir::AsmPrinter::Impl::printDenseElementsAttr(a1, v99, 1);
        }

        goto LABEL_157;
      }

      v89 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v107);
      v91 = mlir::OpPrintingFlags::shouldElideElementsAttr((a1 + 2), v89, v90);
      v87 = *a1;
      if (!v91)
      {
        llvm::raw_ostream::operator<<(v87, "dense<");
        mlir::AsmPrinter::Impl::printDenseStringElementsAttr(a1, v107);
        goto LABEL_157;
      }
    }

    printElidedElementsAttr(v87);
    goto LABEL_8;
  }

  v115 = mlir::IntegerAttr::getType(&v116);
  if (mlir::Type::isSignlessInteger(&v115, 1))
  {
    v39 = *a1;
    mlir::IntegerAttr::getValue(&v116, &v120);
    v40 = v120.n128_u32[2];
    if (v120.n128_u32[2] > 0x40)
    {
      v41 = llvm::APInt::countLeadingZerosSlowCase(&v120) == v40;
    }

    else
    {
      v41 = v120.n128_u64[0] == 0;
    }

    if (v41)
    {
      v60 = "false";
    }

    else
    {
      v60 = "true";
    }

    llvm::raw_ostream::operator<<(v39, v60);
    if (v120.n128_u32[2] >= 0x41 && v120.n128_u64[0])
    {
      MEMORY[0x259C63150](v120.n128_u64[0], 0x1000C8000313F17);
    }

    return;
  }

  v58 = !mlir::Type::isUnsignedInteger(&v115) && !mlir::Type::isSignlessInteger(&v115, 1);
  mlir::IntegerAttr::getValue(&v116, &v120);
  llvm::APInt::print(&v120, *a1, v58);
  if (v120.n128_u32[2] >= 0x41 && v120.n128_u64[0])
  {
    MEMORY[0x259C63150](v120.n128_u64[0], 0x1000C8000313F17);
  }

  if (a3 != 1 || !mlir::Type::isSignlessInteger(&v115, 64))
  {
    goto LABEL_8;
  }
}

void mlir::AsmPrinter::Impl::printDialectAttribute(uint64_t a1, uint64_t **a2)
{
  v4 = **a2;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v16 = 0;
  v20 = 0;
  v21 = 1;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v15 = &unk_2868A3EF8;
  v22 = &v23;
  llvm::raw_ostream::SetBufferAndMode(&v15, 0, 0, 0);
  v5 = *(a1 + 8);
  v10[0] = &v15;
  v10[1] = v5;
  v6 = v5[40];
  v11 = v5[39];
  v12 = v6;
  v13 = v5[41];
  v14 = 1;
  v9[1] = v10;
  v9[0] = &unk_28689A300;
  (*(*v4 + 40))(v4, a2, v9);
  llvm::raw_ostream::~raw_ostream(&v15);
  if (v25 >= 0)
  {
    v7 = &v23;
  }

  else
  {
    v7 = v23;
  }

  if (v25 >= 0)
  {
    v8 = SHIBYTE(v25);
  }

  else
  {
    v8 = v24;
  }

  printDialectSymbol(*a1, "#", 1uLL, *(v4 + 8), *(v4 + 16), v7, v8);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(v23);
  }
}

llvm::raw_ostream *printDialectSymbol(void *a1, const char *a2, size_t a3, const char *a4, size_t a5, char *a6, size_t a7)
{
  v11 = a1;
  v13 = a1[3];
  v12 = a1[4];
  if (a3 > v13 - v12)
  {
    v14 = llvm::raw_ostream::write(v11, a2, a3);
    v12 = v14[4];
    if (a5 <= v14[3] - v12)
    {
      goto LABEL_3;
    }

LABEL_10:
    llvm::raw_ostream::write(v14, a4, a5);
    if (!a7)
    {
      goto LABEL_36;
    }

    goto LABEL_11;
  }

  if (a3)
  {
    memcpy(v12, a2, a3);
    v12 = (v11[4] + a3);
    v11[4] = v12;
  }

  v14 = v11;
  if (a5 > v11[3] - v12)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (a5)
  {
    memcpy(v12, a4, a5);
    v14[4] += a5;
  }

  if (!a7)
  {
    goto LABEL_36;
  }

LABEL_11:
  v16 = *a6;
  if ((v16 & 0x80000000) != 0)
  {
    if (!__maskrune(v16, 0x100uLL))
    {
      goto LABEL_36;
    }
  }

  else if ((*(MEMORY[0x277D85DE0] + 4 * v16 + 60) & 0x100) == 0)
  {
    goto LABEL_36;
  }

  v17 = 0;
  while (1)
  {
    v18 = a6[v17];
    if (v18 != 95)
    {
      v19 = v18 != 46 && (v18 - 48) >= 0xA;
      if (v19 && (v18 & 0xFFFFFFDF) - 65 > 0x19)
      {
        break;
      }
    }

    if (a7 == ++v17)
    {
      goto LABEL_27;
    }
  }

  if (a7 >= v17 && (a6[v17] != 60 || a6[a7 - 1] != 62))
  {
LABEL_36:
    v24 = v11[4];
    if (v24 >= v11[3])
    {
      v11 = llvm::raw_ostream::write(v11, 60);
      result = v11[4];
      if (a7 <= v11[3] - result)
      {
LABEL_38:
        if (a7)
        {
          memcpy(result, a6, a7);
          result = (v11[4] + a7);
          v11[4] = result;
        }

        if (result < v11[3])
        {
          goto LABEL_41;
        }

LABEL_44:

        return llvm::raw_ostream::write(v11, 62);
      }
    }

    else
    {
      v11[4] = v24 + 1;
      *v24 = 60;
      result = v11[4];
      if (a7 <= v11[3] - result)
      {
        goto LABEL_38;
      }
    }

    v11 = llvm::raw_ostream::write(v11, a6, a7);
    result = v11[4];
    if (result < v11[3])
    {
LABEL_41:
      v11[4] = result + 1;
      *result = 62;
      return result;
    }

    goto LABEL_44;
  }

LABEL_27:
  v21 = v11[4];
  if (v21 >= v11[3])
  {
    v11 = llvm::raw_ostream::write(v11, 46);
    v22 = v11[4];
    if (a7 <= v11[3] - v22)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v11[4] = v21 + 1;
    *v21 = 46;
    v22 = v11[4];
    if (a7 <= v11[3] - v22)
    {
LABEL_29:
      result = memcpy(v22, a6, a7);
      v11[4] += a7;
      return result;
    }
  }

  return llvm::raw_ostream::write(v11, a6, a7);
}

void printFloatValue(const llvm::APFloat *a1, llvm::raw_ostream *a2, BOOL *a3)
{
  v19[16] = *MEMORY[0x277D85DE8];
  v6 = (a1 + 8);
  v7 = *(a1 + 1);
  v8 = llvm::APFloatBase::PPCDoubleDouble(a1);
  v9 = *(a1 + 2);
  if (v8 != v7)
  {
    v9 = a1;
  }

  if ((*(v9 + 28) & 6) == 0)
  {
LABEL_27:
    if (a3)
    {
      *a3 = 1;
    }

    v17 = v19;
    v18 = xmmword_25738E870;
    if (v8 == *v6)
    {
      llvm::detail::DoubleAPFloat::bitcastToAPInt(v6, &v15);
    }

    else
    {
      llvm::detail::IEEEFloat::bitcastToAPInt(v6, &v15);
    }

    llvm::APInt::toString(&v15, &v17, 0x10u, 0, 1, 1, 0);
    llvm::raw_ostream::write(a2, v17, v18);
    if (LODWORD(v16[0]) >= 0x41)
    {
      if (v15)
      {
        MEMORY[0x259C63150](v15, 0x1000C8000313F17);
      }
    }

    v11 = v17;
    if (v17 != v19)
    {
      goto LABEL_36;
    }

    return;
  }

  v17 = v19;
  v18 = xmmword_257371870;
  if (v8 == v7)
  {
    llvm::detail::DoubleAPFloat::toString(v6, &v17, 6, 0, 0);
  }

  else
  {
    llvm::detail::IEEEFloat::toString(v6, &v17, 6u, 0, 0);
  }

  llvm::APFloat::APFloat(&v15, *v6, v17, v18);
  if (v16[0] == *v6)
  {
    if (v8 == v16[0])
    {
      IsEqual = llvm::detail::DoubleAPFloat::bitwiseIsEqual(v16, v6);
      if (v8 == v16[0])
      {
        goto LABEL_16;
      }
    }

    else
    {
      IsEqual = llvm::detail::IEEEFloat::bitwiseIsEqual(v16, v6);
      if (v8 == v16[0])
      {
        goto LABEL_16;
      }
    }

LABEL_9:
    llvm::detail::IEEEFloat::~IEEEFloat(v16);
    if (IsEqual)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

  IsEqual = 0;
  if (v8 != v16[0])
  {
    goto LABEL_9;
  }

LABEL_16:
  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v16);
  if (IsEqual)
  {
LABEL_10:
    llvm::raw_ostream::write(a2, v17, v18);
    v11 = v17;
    if (v17 == v19)
    {
      return;
    }

LABEL_36:
    free(v11);
    return;
  }

LABEL_17:
  *&v18 = 0;
  if (v8 == *v6)
  {
    llvm::detail::DoubleAPFloat::toString(v6, &v17, 0, 3, 1);
    v12 = v17;
    v13 = v18;
    if (!v18)
    {
      goto LABEL_25;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::toString(v6, &v17, 0, 3u, 1);
    v12 = v17;
    v13 = v18;
    if (!v18)
    {
      goto LABEL_25;
    }
  }

  v14 = memchr(v12, 46, v13);
  if (!v14 || v14 - v12 == -1)
  {
LABEL_25:
    if (v12 != v19)
    {
      free(v12);
    }

    goto LABEL_27;
  }

  llvm::raw_ostream::write(a2, v12, v13);
  v11 = v17;
  if (v17 != v19)
  {
    goto LABEL_36;
  }
}

llvm::raw_ostream *mlir::AsmPrinter::Impl::printEscapedString(llvm::raw_ostream **a1, llvm::raw_ostream *a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, "", 1uLL);
  }

  else
  {
    *v7 = 34;
    ++*(v6 + 4);
  }

  llvm::printEscapedString(a2, a3, *a1);
  result = *a1;
  v9 = *(*a1 + 4);
  if (*(*a1 + 3) == v9)
  {

    return llvm::raw_ostream::write(result, "", 1uLL);
  }

  else
  {
    *v9 = 34;
    ++*(result + 4);
  }

  return result;
}

double mlir::AffineMap::print(mlir::AffineMap *this, llvm::raw_ostream *a2)
{
  if (*this)
  {
    mlir::AffineMap::getContext(this);
    mlir::OpPrintingFlags::OpPrintingFlags(&v4);
    operator new();
  }

  v2 = *(a2 + 4);
  if ((*(a2 + 3) - v2) > 0x12)
  {
    *(v2 + 15) = 1044271169;
    result = *"<<NULL AFFINE MAP>>";
    *v2 = *"<<NULL AFFINE MAP>>";
    *(a2 + 4) += 19;
  }

  else
  {

    llvm::raw_ostream::write(a2, "<<NULL AFFINE MAP>>", 0x13uLL);
  }

  return result;
}

void mlir::IntegerSet::print(mlir::IntegerSet *this, llvm::raw_ostream *a2)
{
  mlir::IntegerSet::getContext(this);
  mlir::OpPrintingFlags::OpPrintingFlags(&v2);
  operator new();
}

void mlir::AsmPrinter::Impl::printType(llvm::raw_ostream **a1, uint64_t **a2)
{
  if (a2)
  {
    if ((mlir::AsmPrinter::Impl::printAlias(a1, a2) & 1) == 0)
    {

      mlir::AsmPrinter::Impl::printTypeImpl(a1, a2);
    }
  }

  else
  {
    v4 = *a1;
    v5 = *(v4 + 4);
    if (*(v4 + 3) - v5 > 0xCuLL)
    {
      qmemcpy(v5, "<<NULL TYPE>>", 13);
      *(v4 + 4) += 13;
    }

    else
    {

      llvm::raw_ostream::write(v4, "<<NULL TYPE>>", 0xDuLL);
    }
  }
}

double printSymbolReference(char *a1, size_t a2, llvm::raw_ostream *a3)
{
  if (a2)
  {
    v4 = *(a3 + 4);
    if (v4 >= *(a3 + 3))
    {
      v7 = a1;
      v8 = a2;
      v9 = a3;
      llvm::raw_ostream::write(a3, 64);
      a1 = v7;
      a2 = v8;
      a3 = v9;
    }

    else
    {
      *(a3 + 4) = v4 + 1;
      *v4 = 64;
    }

    printKeywordOrString(a1, a2, a3);
  }

  else
  {
    v6 = *(a3 + 4);
    if (*(a3 + 3) - v6 > 0x18uLL)
    {
      qmemcpy(v6, "@<<INVALID EMPTY SYMBOL>>", 25);
      result = *"D EMPTY SYMBOL>>";
      *(a3 + 4) += 25;
    }

    else
    {

      llvm::raw_ostream::write(a3, "@<<INVALID EMPTY SYMBOL>>", 0x19uLL);
    }
  }

  return result;
}

double printElidedElementsAttr(llvm::raw_ostream *a1)
{
  v1 = *(a1 + 4);
  if (*(a1 + 3) - v1 > 0x19uLL)
  {
    qmemcpy(v1, "dense_resource<__elided__>", 26);
    result = *"urce<__elided__>";
    *(a1 + 4) += 26;
  }

  else
  {
    llvm::raw_ostream::write(a1, "dense_resource<__elided__>", 0x1AuLL);
  }

  return result;
}

void mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(uint64_t a1, void *a2, int a3)
{
  v29 = a2;
  Type = mlir::DenseElementsAttr::getType(&v29);
  v28 = v5;
  ElementType = mlir::ShapedType::getElementType(&Type);
  v26 = ElementType;
  if (!a3 || (v7 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v29), v9 = *(a1 + 48), v9 == -1) || (v10 = v7, v9 >= mlir::ElementsAttr::getNumElements(v7, v8)) || (!mlir::DenseElementsAttr::classof(v10) ? (v11 = 0) : (v11 = v10), (*&v36 = v11) != 0 && (mlir::DenseElementsAttr::isSplat(&v36) & 1) != 0))
  {
    v12 = *(*ElementType + 136);
    v13 = v12 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id;
    if (v12 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v14 = ElementType;
    }

    else
    {
      v14 = 0;
    }

    v25 = v14;
    if (v13)
    {
      v24 = mlir::ComplexType::getElementType(&v25);
      if (*(*v24 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        mlir::DenseElementsAttr::tryGetComplexIntValues(&v29, &v36);
        v31 = v37;
        isSplat = mlir::DenseElementsAttr::isSplat(&v29);
        v16 = Type;
        v17 = v28;
        v18 = *a1;
        *&v30 = &v36;
        *(&v30 + 1) = a1;
        *&v31 = &v24;
        v21 = llvm::function_ref<void ()>::callback_fn<mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(mlir::DenseIntOrFPElementsAttr,BOOL)::$_0>;
      }

      else
      {
        mlir::DenseElementsAttr::tryGetComplexFloatValues(&v29, &v36);
        v30 = v36;
        v31 = v37;
        v32 = v38;
        v33 = v39;
        v34 = v40;
        v35 = v41;
        isSplat = mlir::DenseElementsAttr::isSplat(&v29);
        v16 = Type;
        v17 = v28;
        v18 = *a1;
        *&v30 = &v36;
        *(&v30 + 1) = a1;
        v21 = llvm::function_ref<void ()>::callback_fn<mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(mlir::DenseIntOrFPElementsAttr,BOOL)::$_1>;
      }
    }

    else
    {
      if (mlir::Type::isIntOrIndex(&v26))
      {
        mlir::DenseElementsAttr::getValues<llvm::APInt>(&v29, &v36);
        v30 = v36;
        v31 = v37;
        isSplat = mlir::DenseElementsAttr::isSplat(&v29);
        v16 = Type;
        v17 = v28;
        v18 = *a1;
        *&v36 = &v30;
        *(&v36 + 1) = a1;
        *&v37 = &v26;
        v19 = llvm::function_ref<void ()>::callback_fn<mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(mlir::DenseIntOrFPElementsAttr,BOOL)::$_2>;
        v20 = &v36;
LABEL_20:
        printDenseElementsAttrImpl(isSplat, v16, v17, v18, v19, v20);
        return;
      }

      mlir::DenseElementsAttr::tryGetFloatValues(&v29, &v36);
      v30 = v36;
      v31 = v37;
      v32 = v38;
      v33 = v39;
      v34 = v40;
      v35 = v41;
      isSplat = mlir::DenseElementsAttr::isSplat(&v29);
      v16 = Type;
      v17 = v28;
      v18 = *a1;
      *&v30 = &v36;
      *(&v30 + 1) = a1;
      v21 = llvm::function_ref<void ()>::callback_fn<mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(mlir::DenseIntOrFPElementsAttr,BOOL)::$_3>;
    }

    v19 = v21;
    v20 = &v30;
    goto LABEL_20;
  }

  RawData = mlir::DenseElementsAttr::getRawData(&v29);
  mlir::AsmPrinter::Impl::printHexString(a1, RawData, v23);
}

void mlir::AsmPrinter::Impl::printDenseStringElementsAttr(llvm::raw_ostream **a1, uint64_t a2)
{
  v9 = a2;
  v8[0] = mlir::DenseElementsAttr::getRawStringData(&v9);
  v8[1] = v3;
  v7[0] = a1;
  v7[1] = v8;
  isSplat = mlir::DenseElementsAttr::isSplat(&v9);
  Type = mlir::DenseElementsAttr::getType(&v9);
  printDenseElementsAttrImpl(isSplat, Type, v6, *a1, llvm::function_ref<void ()>::callback_fn<mlir::AsmPrinter::Impl::printDenseStringElementsAttr(mlir::DenseStringElementsAttr)::$_0>, v7);
}

void mlir::AsmPrinter::Impl::printDenseElementsAttr(llvm::raw_ostream **a1, void *a2, int a3)
{
  if (a2 && *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id)
  {
    v12[3] = v3;
    v12[4] = v4;
    v12[0] = a2;
    v11[0] = mlir::DenseElementsAttr::getRawStringData(v12);
    v11[1] = v6;
    v10[0] = a1;
    v10[1] = v11;
    isSplat = mlir::DenseElementsAttr::isSplat(v12);
    Type = mlir::DenseElementsAttr::getType(v12);
    printDenseElementsAttrImpl(isSplat, Type, v9, *a1, llvm::function_ref<void ()>::callback_fn<mlir::AsmPrinter::Impl::printDenseStringElementsAttr(mlir::DenseStringElementsAttr)::$_0>, v10);
  }

  else
  {

    mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(a1, a2, a3);
  }
}

void mlir::AsmPrinter::Impl::printDenseArrayAttr(void **a1, uint64_t a2)
{
  v14 = a2;
  ElementType = mlir::DenseArrayAttr::getElementType(&v14);
  if (mlir::Type::isInteger(&ElementType, 1))
  {
    IntOrFloatBitWidth = 8;
  }

  else
  {
    IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&ElementType);
  }

  v11 = IntOrFloatBitWidth >> 3;
  v12 = IntOrFloatBitWidth;
  v10[0] = mlir::DenseArrayAttr::getRawData(&v14);
  v10[1] = v4;
  Size = mlir::DenseArrayAttr::getSize(&v14);
  v6 = *a1;
  v15[0] = &v12;
  v15[1] = v10;
  v15[2] = &v11;
  v15[3] = &ElementType;
  v15[4] = a1;
  v7 = Size;
  if (Size)
  {
    mlir::AsmPrinter::Impl::printDenseArrayAttr(mlir::DenseArrayAttr)::$_0::operator()(v15, 0);
    if (v7 != 1)
    {
      for (i = 1; i != v7; ++i)
      {
        while (1)
        {
          v9 = v6[4];
          if (v6[3] - v9 > 1uLL)
          {
            break;
          }

          llvm::raw_ostream::write(v6, ", ", 2uLL);
          mlir::AsmPrinter::Impl::printDenseArrayAttr(mlir::DenseArrayAttr)::$_0::operator()(v15, i++);
          if (v7 == i)
          {
            return;
          }
        }

        *v9 = 8236;
        v6[4] += 2;
        mlir::AsmPrinter::Impl::printDenseArrayAttr(mlir::DenseArrayAttr)::$_0::operator()(v15, i);
      }
    }
  }
}

void printDenseElementsAttrImpl(int a1, uint64_t a2, uint64_t a3, llvm::raw_ostream *a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v32[2] = *MEMORY[0x277D85DE8];
  v29[0] = a2;
  v29[1] = a3;
  if (a1)
  {

    a5(a6, 0);
    return;
  }

  Shape = mlir::ShapedType::getShape(v29);
  NumElements = mlir::ShapedType::getNumElements(Shape, v8);
  if (!NumElements)
  {
    return;
  }

  v10 = NumElements;
  mlir::ShapedType::getShape(v29);
  v12 = v11;
  v30 = v32;
  v31 = 0x400000000;
  if (v11 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v11)
  {
    bzero(v32, 4 * v11);
  }

  LODWORD(v31) = v12;
  v13 = mlir::ShapedType::getShape(v29);
  if (!v10)
  {
    goto LABEL_37;
  }

  v14 = v13;
  v15 = 0;
  v16 = 0;
  do
  {
    if (!v15)
    {
      goto LABEL_17;
    }

    v17 = *(a4 + 4);
    if (*(a4 + 3) - v17 <= 1uLL)
    {
      llvm::raw_ostream::write(a4, ", ", 2uLL);
LABEL_17:
      if (v12 <= v16)
      {
        goto LABEL_25;
      }

      goto LABEL_20;
    }

    *v17 = 8236;
    *(a4 + 4) += 2;
    if (v12 <= v16)
    {
      goto LABEL_25;
    }

LABEL_20:
    v18 = v16 + 1;
    do
    {
      while (1)
      {
        v20 = *(a4 + 4);
        if (v20 >= *(a4 + 3))
        {
          break;
        }

        *(a4 + 4) = v20 + 1;
        *v20 = 91;
        v19 = v12 > v18++;
        if (!v19)
        {
          goto LABEL_25;
        }
      }

      llvm::raw_ostream::write(a4, 91);
      v19 = v12 > v18++;
    }

    while (v19);
LABEL_25:
    a5(a6, v15);
    ++*(v30 + v12 - 1);
    if (v12 == 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v12;
      v21 = (v12 - 1);
      LODWORD(v22) = v12;
      do
      {
        v23 = v22;
        v22 = v21;
        v24 = v30;
        if (*(v14 + 8 * v22) <= *(v30 + v22))
        {
          *(v30 + v22) = 0;
          ++v24[v23 - 2];
          --v16;
          v25 = *(a4 + 4);
          if (v25 < *(a4 + 3))
          {
            *(a4 + 4) = v25 + 1;
            *v25 = 93;
          }

          else
          {
            llvm::raw_ostream::write(a4, 93);
          }
        }

        v21 = v22 - 1;
      }

      while (v22 != 1);
    }

    v15 = (v15 + 1);
  }

  while (v15 != v10);
  for (; v16; --v16)
  {
    while (1)
    {
      v26 = *(a4 + 4);
      if (v26 >= *(a4 + 3))
      {
        break;
      }

      *(a4 + 4) = v26 + 1;
      *v26 = 93;
      if (!--v16)
      {
        goto LABEL_37;
      }
    }

    llvm::raw_ostream::write(a4, 93);
  }

LABEL_37:
  if (v30 != v32)
  {
    free(v30);
  }
}

void mlir::AsmPrinter::Impl::printTypeImpl(llvm::raw_ostream **a1, uint64_t **a2)
{
  v2 = (*a2)[17];
  if (v2 == &mlir::detail::TypeIDResolver<mlir::OpaqueType,void>::id)
  {
    v6 = *a1;
    Layout = a2;
    DialectNamespace = mlir::OpaqueType::getDialectNamespace(&Layout);
    Value = mlir::StringAttr::getValue(&DialectNamespace);
    v9 = v8;
    TypeData = mlir::OpaqueType::getTypeData(&Layout);
    printDialectSymbol(v6, "!", 1uLL, Value, v9, TypeData, v11);
    return;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    v12 = *a1;
    v13 = *(v12 + 4);
    if ((*(v12 + 3) - v13) <= 4)
    {
      v14 = "index";
      v15 = 5;
      goto LABEL_37;
    }

    *(v13 + 4) = 120;
    *v13 = 1701080681;
    v17 = *(v12 + 4) + 5;
LABEL_45:
    *(v12 + 4) = v17;
    return;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    v12 = *a1;
    v16 = *(v12 + 4);
    if (*(v12 + 3) - v16 > 7uLL)
    {
      v18 = 0x314D32453466;
      goto LABEL_44;
    }

    v14 = "f4E2M1FN";
LABEL_36:
    v15 = 8;
    goto LABEL_37;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id)
  {
    v12 = *a1;
    v16 = *(v12 + 4);
    if (*(v12 + 3) - v16 > 7uLL)
    {
      v18 = 0x334D32453666;
      goto LABEL_44;
    }

    v14 = "f6E2M3FN";
    goto LABEL_36;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id)
  {
    v12 = *a1;
    v16 = *(v12 + 4);
    if (*(v12 + 3) - v16 > 7uLL)
    {
      v18 = 0x324D33453666;
      goto LABEL_44;
    }

    v14 = "f6E3M2FN";
    goto LABEL_36;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id)
  {
    v12 = *a1;
    v19 = *(v12 + 4);
    if ((*(v12 + 3) - v19) <= 5)
    {
      v14 = "f8E5M2";
      v15 = 6;
      goto LABEL_37;
    }

    *(v19 + 4) = 12877;
    v20 = 893728870;
    goto LABEL_53;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id)
  {
    v12 = *a1;
    v19 = *(v12 + 4);
    if ((*(v12 + 3) - v19) <= 5)
    {
      v14 = "f8E4M3";
      v15 = 6;
      goto LABEL_37;
    }

    *(v19 + 4) = 13133;
    v20 = 876951654;
    goto LABEL_53;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
  {
    v12 = *a1;
    v16 = *(v12 + 4);
    if (*(v12 + 3) - v16 <= 7uLL)
    {
      v14 = "f8E4M3FN";
      goto LABEL_36;
    }

    v18 = 0x334D34453866;
LABEL_44:
    *v16 = v18 & 0xFFFFFFFFFFFFLL | 0x4E46000000000000;
    v17 = *(v12 + 4) + 8;
    goto LABEL_45;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id)
  {
    v12 = *a1;
    v21 = *(v12 + 4);
    if ((*(v12 + 3) - v21) <= 9)
    {
      v14 = "f8E5M2FNUZ";
      v15 = 10;
      goto LABEL_37;
    }

    v22 = "f8E5M2FNUZ";
    goto LABEL_63;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id)
  {
    v12 = *a1;
    v21 = *(v12 + 4);
    if ((*(v12 + 3) - v21) <= 9)
    {
      v14 = "f8E4M3FNUZ";
      v15 = 10;
      goto LABEL_37;
    }

    v22 = "f8E4M3FNUZ";
LABEL_63:
    *(v21 + 8) = 23125;
    *v21 = *v22;
    v17 = *(v12 + 4) + 10;
    goto LABEL_45;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id)
  {
    v12 = *a1;
    v23 = *(v12 + 4);
    if (*(v12 + 3) - v23 <= 0xCuLL)
    {
      v14 = "f8E4M3B11FNUZ";
      v15 = 13;
      goto LABEL_37;
    }

    qmemcpy(v23, "f8E4M3B11FNUZ", 13);
    v17 = *(v12 + 4) + 13;
    goto LABEL_45;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id)
  {
    v12 = *a1;
    v19 = *(v12 + 4);
    if ((*(v12 + 3) - v19) <= 5)
    {
      v14 = "f8E3M4";
      v15 = 6;
      goto LABEL_37;
    }

    *(v19 + 4) = 13389;
    v20 = 860174438;
LABEL_53:
    *v19 = v20;
    v17 = *(v12 + 4) + 6;
    goto LABEL_45;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id)
  {
    v12 = *a1;
    v24 = *(v12 + 4);
    if (*(v12 + 3) - v24 > 3uLL)
    {
      v26 = 909207138;
      goto LABEL_79;
    }

    v14 = "bf16";
    v15 = 4;
  }

  else if (v2 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id)
  {
    v12 = *a1;
    v25 = *(v12 + 4);
    if ((*(v12 + 3) - v25) > 2)
    {
      *(v25 + 2) = 54;
      v27 = 12646;
      goto LABEL_89;
    }

    v14 = "f16";
    v15 = 3;
  }

  else if (v2 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id)
  {
    v12 = *a1;
    v24 = *(v12 + 4);
    if (*(v12 + 3) - v24 > 3uLL)
    {
      v26 = 842229364;
      goto LABEL_79;
    }

    v14 = "tf32";
    v15 = 4;
  }

  else if (v2 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
  {
    v12 = *a1;
    v25 = *(v12 + 4);
    if ((*(v12 + 3) - v25) > 2)
    {
      *(v25 + 2) = 50;
      v27 = 13158;
      goto LABEL_89;
    }

    v14 = "f32";
    v15 = 3;
  }

  else
  {
    if (v2 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
    {
      if (v2 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id)
      {
        if (v2 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
        {
          if (v2 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
          {
            if (a2 && v2 == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
            {
              Layout = a2;
              v4 = *a1;
              v5 = *(v4 + 4);
              if (v5 >= *(v4 + 3))
              {
                llvm::raw_ostream::write(v4, 40);
              }

              else
              {
                *(v4 + 4) = v5 + 1;
                *v5 = 40;
              }

              Inputs = mlir::FunctionType::getInputs(&Layout);
              if (v39)
              {
                v40 = Inputs;
                v41 = v39;
                v42 = *a1;
                v43 = *Inputs;
                if (*Inputs)
                {
                  if ((mlir::AsmPrinter::Impl::printAlias(a1, v43) & 1) == 0)
                  {
                    mlir::AsmPrinter::Impl::printTypeImpl(a1, v43);
                  }
                }

                else
                {
                  v58 = *(v42 + 4);
                  if (*(v42 + 3) - v58 > 0xCuLL)
                  {
                    qmemcpy(v58, "<<NULL TYPE>>", 13);
                    *(v42 + 4) += 13;
                  }

                  else
                  {
                    llvm::raw_ostream::write(*a1, "<<NULL TYPE>>", 0xDuLL);
                  }
                }

                if (v41 != 1)
                {
                  v87 = v40 + 1;
                  v88 = 8 * v41 - 8;
                  do
                  {
                    v89 = *(v42 + 4);
                    if (*(v42 + 3) - v89 > 1uLL)
                    {
                      *v89 = 8236;
                      *(v42 + 4) += 2;
                    }

                    else
                    {
                      llvm::raw_ostream::write(v42, ", ", 2uLL);
                    }

                    v90 = *v87;
                    if (*v87)
                    {
                      if ((mlir::AsmPrinter::Impl::printAlias(a1, *v87) & 1) == 0)
                      {
                        mlir::AsmPrinter::Impl::printTypeImpl(a1, v90);
                      }
                    }

                    else
                    {
                      v91 = *a1;
                      v92 = *(*a1 + 4);
                      if (*(*a1 + 3) - v92 > 0xCuLL)
                      {
                        qmemcpy(v92, "<<NULL TYPE>>", 13);
                        *(v91 + 4) += 13;
                      }

                      else
                      {
                        llvm::raw_ostream::write(v91, "<<NULL TYPE>>", 0xDuLL);
                      }
                    }

                    ++v87;
                    v88 -= 8;
                  }

                  while (v88);
                }
              }

              v76 = *a1;
              v77 = *(*a1 + 4);
              if ((*(*a1 + 3) - v77) > 4)
              {
                *(v77 + 4) = 32;
                *v77 = 1043144745;
                *(v76 + 4) += 5;
              }

              else
              {
                llvm::raw_ostream::write(v76, ") -> ", 5uLL);
              }

              Results = mlir::FunctionType::getResults(&Layout);
              v79 = Results;
              v81 = v80;
              if (v80 != 1 || (v82 = *Results, *(**Results + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id))
              {
                v83 = *a1;
                v84 = *(*a1 + 4);
                if (v84 >= *(*a1 + 3))
                {
                  llvm::raw_ostream::write(v83, 40);
                }

                else
                {
                  *(v83 + 4) = v84 + 1;
                  *v84 = 40;
                }

                if (v81)
                {
                  v85 = *a1;
                  v86 = *v79;
                  if (*v79)
                  {
                    if ((mlir::AsmPrinter::Impl::printAlias(a1, *v79) & 1) == 0)
                    {
                      mlir::AsmPrinter::Impl::printTypeImpl(a1, v86);
                    }
                  }

                  else
                  {
                    v93 = *(v85 + 4);
                    if (*(v85 + 3) - v93 > 0xCuLL)
                    {
                      qmemcpy(v93, "<<NULL TYPE>>", 13);
                      *(v85 + 4) += 13;
                    }

                    else
                    {
                      llvm::raw_ostream::write(*a1, "<<NULL TYPE>>", 0xDuLL);
                    }
                  }

                  if (v81 != 1)
                  {
                    v96 = v79 + 1;
                    v97 = 8 * v81 - 8;
                    do
                    {
                      v98 = *(v85 + 4);
                      if (*(v85 + 3) - v98 > 1uLL)
                      {
                        *v98 = 8236;
                        *(v85 + 4) += 2;
                      }

                      else
                      {
                        llvm::raw_ostream::write(v85, ", ", 2uLL);
                      }

                      v99 = *v96;
                      if (*v96)
                      {
                        if ((mlir::AsmPrinter::Impl::printAlias(a1, *v96) & 1) == 0)
                        {
                          mlir::AsmPrinter::Impl::printTypeImpl(a1, v99);
                        }
                      }

                      else
                      {
                        v100 = *a1;
                        v101 = *(*a1 + 4);
                        if (*(*a1 + 3) - v101 > 0xCuLL)
                        {
                          qmemcpy(v101, "<<NULL TYPE>>", 13);
                          *(v100 + 4) += 13;
                        }

                        else
                        {
                          llvm::raw_ostream::write(v100, "<<NULL TYPE>>", 0xDuLL);
                        }
                      }

                      ++v96;
                      v97 -= 8;
                    }

                    while (v97);
                  }
                }

                v94 = *a1;
                v95 = *(*a1 + 4);
                if (v95 >= *(*a1 + 3))
                {
                  llvm::raw_ostream::write(v94, 41);
                }

                else
                {
                  *(v94 + 4) = v95 + 1;
                  *v95 = 41;
                }
              }

              else if ((mlir::AsmPrinter::Impl::printAlias(a1, *Results) & 1) == 0)
              {
                mlir::AsmPrinter::Impl::printTypeImpl(a1, v82);
              }

              return;
            }

            if (a2 && v2 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
            {
              Layout = a2;
              ScalableDims = mlir::VectorType::getScalableDims(&Layout);
              v33 = v32;
              v34 = *a1;
              v35 = *(*a1 + 4);
              if (*(*a1 + 3) - v35 > 6uLL)
              {
                *(v35 + 3) = 1014132596;
                *v35 = 1952671094;
                *(v34 + 4) += 7;
              }

              else
              {
                llvm::raw_ostream::write(v34, "vector<", 7uLL);
              }

              Shape = mlir::VectorType::getShape(&Layout);
              v49 = v48;
              if (v48)
              {
                v50 = Shape;
                if (v33)
                {
                  v51 = a1;
                  do
                  {
                    while (1)
                    {
                      if (*ScalableDims == 1)
                      {
                        v52 = *v51;
                        v53 = *(*v51 + 4);
                        if (v53 >= *(*v51 + 3))
                        {
                          llvm::raw_ostream::write(v52, 91);
                          v51 = a1;
                        }

                        else
                        {
                          *(v52 + 4) = v53 + 1;
                          *v53 = 91;
                        }
                      }

                      llvm::raw_ostream::operator<<(*v51, *v50);
                      v51 = a1;
                      if (*ScalableDims == 1)
                      {
                        v54 = *a1;
                        v55 = *(*a1 + 4);
                        if (v55 >= *(*a1 + 3))
                        {
                          llvm::raw_ostream::write(v54, 93);
                          v51 = a1;
                        }

                        else
                        {
                          *(v54 + 4) = v55 + 1;
                          *v55 = 93;
                        }
                      }

                      v56 = *v51;
                      v57 = *(*v51 + 4);
                      if (v57 >= *(*v51 + 3))
                      {
                        break;
                      }

                      *(v56 + 4) = v57 + 1;
                      *v57 = 120;
                      ++ScalableDims;
                      ++v50;
                      if (!--v49)
                      {
                        goto LABEL_152;
                      }
                    }

                    llvm::raw_ostream::write(v56, 120);
                    v51 = a1;
                    ++ScalableDims;
                    ++v50;
                    --v49;
                  }

                  while (v49);
                }

                else
                {
                  v70 = a1;
                  do
                  {
                    while (1)
                    {
                      v71 = *v50++;
                      llvm::raw_ostream::operator<<(*v70, v71);
                      v72 = *a1;
                      v73 = *(*a1 + 4);
                      if (v73 >= *(*a1 + 3))
                      {
                        break;
                      }

                      v70 = a1;
                      *(v72 + 4) = v73 + 1;
                      *v73 = 120;
                      if (!--v49)
                      {
                        goto LABEL_152;
                      }
                    }

                    llvm::raw_ostream::write(v72, 120);
                    v70 = a1;
                    --v49;
                  }

                  while (v49);
                }
              }

LABEL_152:
              ElementType = mlir::VectorType::getElementType(&Layout);
              if (ElementType)
              {
                goto LABEL_153;
              }

              goto LABEL_212;
            }

            if (a2 && v2 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
            {
              DialectNamespace = a2;
              v36 = *a1;
              v37 = *(*a1 + 4);
              if (*(*a1 + 3) - v37 > 6uLL)
              {
                *(v37 + 3) = 1014132595;
                *v37 = 1936614772;
                *(v36 + 4) += 7;
              }

              else
              {
                llvm::raw_ostream::write(v36, "tensor<", 7uLL);
              }

              v64 = mlir::RankedTensorType::getShape(&DialectNamespace);
              v65 = *a1;
              Layout = "x";
              v164 = 1;
              llvm::interleave<long long const*,void mlir::detail::printDimensionList<llvm::ArrayRef<long long> &>(llvm::raw_ostream &,llvm::ArrayRef<long long> &)::{lambda(llvm::ArrayRef<long long> & const&)#1},void llvm::interleave<llvm::ArrayRef<long long>,llvm::interleave,llvm::raw_ostream,long long const>(void mlir::detail::printDimensionList<llvm::ArrayRef<long long> &>(llvm::raw_ostream &,llvm::ArrayRef<long long> &)::{lambda(llvm::ArrayRef<long long> & const&)#1},llvm::raw_ostream &,llvm::interleave,llvm::StringRef const&)::{lambda(void)#1},void>(v64, &v64[v66], v65, v65, &Layout);
              mlir::RankedTensorType::getShape(&DialectNamespace);
              if (v67)
              {
                v68 = *a1;
                v69 = *(*a1 + 4);
                if (v69 >= *(*a1 + 3))
                {
                  llvm::raw_ostream::write(v68, 120);
                }

                else
                {
                  *(v68 + 4) = v69 + 1;
                  *v69 = 120;
                }
              }

              v102 = mlir::RankedTensorType::getElementType(&DialectNamespace);
              if (v102)
              {
                v103 = v102;
                if ((mlir::AsmPrinter::Impl::printAlias(a1, v102) & 1) == 0)
                {
                  mlir::AsmPrinter::Impl::printTypeImpl(a1, v103);
                }
              }

              else
              {
                v104 = *a1;
                v105 = *(*a1 + 4);
                if (*(*a1 + 3) - v105 > 0xCuLL)
                {
                  qmemcpy(v105, "<<NULL TYPE>>", 13);
                  *(v104 + 4) += 13;
                }

                else
                {
                  llvm::raw_ostream::write(v104, "<<NULL TYPE>>", 0xDuLL);
                }
              }

              if (!mlir::RankedTensorType::getEncoding(&DialectNamespace))
              {
                goto LABEL_283;
              }

              v111 = *a1;
              v112 = *(*a1 + 4);
              if (*(*a1 + 3) - v112 > 1uLL)
              {
                *v112 = 8236;
                *(v111 + 4) += 2;
              }

              else
              {
                llvm::raw_ostream::write(v111, ", ", 2uLL);
              }

              Encoding = mlir::RankedTensorType::getEncoding(&DialectNamespace);
              if (Encoding)
              {
                v114 = Encoding;
                {
                  mlir::AsmPrinter::Impl::printAttributeImpl(a1, v114, 0);
                }

                goto LABEL_283;
              }

              goto LABEL_279;
            }

            if (a2 && v2 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
            {
              Layout = a2;
              v45 = *a1;
              v46 = *(*a1 + 4);
              if ((*(*a1 + 3) - v46) > 8)
              {
                *(v46 + 8) = 120;
                *v46 = *"tensor<*x";
                *(v45 + 4) += 9;
              }

              else
              {
                llvm::raw_ostream::write(v45, "tensor<*x", 9uLL);
              }

              ElementType = mlir::UnrankedTensorType::getElementType(&Layout);
              if (!ElementType)
              {
LABEL_212:
                v108 = *a1;
                v109 = *(*a1 + 4);
                if (*(*a1 + 3) - v109 <= 0xCuLL)
                {
                  llvm::raw_ostream::write(v108, "<<NULL TYPE>>", 0xDuLL);
                  goto LABEL_283;
                }

                qmemcpy(v109, "<<NULL TYPE>>", 13);
                v110 = *(v108 + 4) + 13;
                goto LABEL_282;
              }

LABEL_153:
              v75 = ElementType;
              if ((mlir::AsmPrinter::Impl::printAlias(a1, ElementType) & 1) == 0)
              {
                mlir::AsmPrinter::Impl::printTypeImpl(a1, v75);
              }

              goto LABEL_283;
            }

            if (a2 && v2 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
            {
              DialectNamespace = a2;
              v62 = *a1;
              v63 = *(*a1 + 4);
              if (*(*a1 + 3) - v63 > 6uLL)
              {
                *(v63 + 3) = 1013343602;
                *v63 = 1919772013;
                *(v62 + 4) += 7;
              }

              else
              {
                llvm::raw_ostream::write(v62, "memref<", 7uLL);
              }

              v117 = mlir::MemRefType::getShape(&DialectNamespace);
              v118 = *a1;
              Layout = "x";
              v164 = 1;
              llvm::interleave<long long const*,void mlir::detail::printDimensionList<llvm::ArrayRef<long long> &>(llvm::raw_ostream &,llvm::ArrayRef<long long> &)::{lambda(llvm::ArrayRef<long long> & const&)#1},void llvm::interleave<llvm::ArrayRef<long long>,llvm::interleave,llvm::raw_ostream,long long const>(void mlir::detail::printDimensionList<llvm::ArrayRef<long long> &>(llvm::raw_ostream &,llvm::ArrayRef<long long> &)::{lambda(llvm::ArrayRef<long long> & const&)#1},llvm::raw_ostream &,llvm::interleave,llvm::StringRef const&)::{lambda(void)#1},void>(v117, &v117[v119], v118, v118, &Layout);
              mlir::MemRefType::getShape(&DialectNamespace);
              if (v120)
              {
                v121 = *a1;
                v122 = *(*a1 + 4);
                if (v122 >= *(*a1 + 3))
                {
                  llvm::raw_ostream::write(v121, 120);
                }

                else
                {
                  *(v121 + 4) = v122 + 1;
                  *v122 = 120;
                }
              }

              v123 = mlir::MemRefType::getElementType(&DialectNamespace);
              if (v123)
              {
                v124 = v123;
                if ((mlir::AsmPrinter::Impl::printAlias(a1, v123) & 1) == 0)
                {
                  mlir::AsmPrinter::Impl::printTypeImpl(a1, v124);
                }
              }

              else
              {
                v125 = *a1;
                v126 = *(*a1 + 4);
                if (*(*a1 + 3) - v126 > 0xCuLL)
                {
                  qmemcpy(v126, "<<NULL TYPE>>", 13);
                  *(v125 + 4) += 13;
                }

                else
                {
                  llvm::raw_ostream::write(v125, "<<NULL TYPE>>", 0xDuLL);
                }
              }

              Layout = mlir::MemRefType::getLayout(&DialectNamespace);
              v164 = v133;
              if (*(*Layout + 136) != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id || (mlir::MemRefLayoutAttrInterface::isIdentity(&Layout) & 1) == 0)
              {
                v134 = *a1;
                v135 = *(*a1 + 4);
                if (*(*a1 + 3) - v135 > 1uLL)
                {
                  *v135 = 8236;
                  *(v134 + 4) += 2;
                }

                else
                {
                  llvm::raw_ostream::write(v134, ", ", 2uLL);
                }

                v136 = mlir::MemRefType::getLayout(&DialectNamespace);
                if (v136)
                {
                  v137 = v136;
                  {
                    mlir::AsmPrinter::Impl::printAttributeImpl(a1, v137, 1);
                  }
                }

                else
                {
                  v138 = *a1;
                  v139 = *(*a1 + 4);
                  if ((*(*a1 + 3) - v139) > 0x11)
                  {
                    *(v139 + 16) = 15934;
                    *v139 = *"<<NULL ATTRIBUTE>>";
                    *(v138 + 4) += 18;
                  }

                  else
                  {
                    llvm::raw_ostream::write(v138, "<<NULL ATTRIBUTE>>", 0x12uLL);
                  }
                }
              }

              if (!mlir::MemRefType::getMemorySpace(&DialectNamespace))
              {
                goto LABEL_283;
              }

              v140 = *a1;
              v141 = *(*a1 + 4);
              if (*(*a1 + 3) - v141 > 1uLL)
              {
                *v141 = 8236;
                *(v140 + 4) += 2;
              }

              else
              {
                llvm::raw_ostream::write(v140, ", ", 2uLL);
              }

              MemorySpace = mlir::MemRefType::getMemorySpace(&DialectNamespace);
              if (MemorySpace)
              {
                goto LABEL_264;
              }

              goto LABEL_279;
            }

            if (a2 && v2 == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
            {
              Layout = a2;
              v106 = *a1;
              v107 = *(*a1 + 4);
              if ((*(*a1 + 3) - v107) > 8)
              {
                *(v107 + 8) = 120;
                *v107 = *"memref<*x";
                *(v106 + 4) += 9;
              }

              else
              {
                llvm::raw_ostream::write(v106, "memref<*x", 9uLL);
              }

              v129 = mlir::UnrankedMemRefType::getElementType(&Layout);
              if (v129)
              {
                v130 = v129;
                if ((mlir::AsmPrinter::Impl::printAlias(a1, v129) & 1) == 0)
                {
                  mlir::AsmPrinter::Impl::printTypeImpl(a1, v130);
                }
              }

              else
              {
                v131 = *a1;
                v132 = *(*a1 + 4);
                if (*(*a1 + 3) - v132 > 0xCuLL)
                {
                  qmemcpy(v132, "<<NULL TYPE>>", 13);
                  *(v131 + 4) += 13;
                }

                else
                {
                  llvm::raw_ostream::write(v131, "<<NULL TYPE>>", 0xDuLL);
                }
              }

              if (!mlir::UnrankedMemRefType::getMemorySpace(&Layout))
              {
                goto LABEL_283;
              }

              v144 = *a1;
              v145 = *(*a1 + 4);
              if (*(*a1 + 3) - v145 > 1uLL)
              {
                *v145 = 8236;
                *(v144 + 4) += 2;
              }

              else
              {
                llvm::raw_ostream::write(v144, ", ", 2uLL);
              }

              MemorySpace = mlir::UnrankedMemRefType::getMemorySpace(&Layout);
              if (MemorySpace)
              {
LABEL_264:
                v143 = MemorySpace;
                {
                  mlir::AsmPrinter::Impl::printAttributeImpl(a1, v143, 1);
                }

                goto LABEL_283;
              }

LABEL_279:
              v108 = *a1;
              v146 = *(*a1 + 4);
              if ((*(*a1 + 3) - v146) <= 0x11)
              {
                llvm::raw_ostream::write(v108, "<<NULL ATTRIBUTE>>", 0x12uLL);
                goto LABEL_283;
              }

              *(v146 + 16) = 15934;
              *v146 = *"<<NULL ATTRIBUTE>>";
              v110 = *(v108 + 4) + 18;
LABEL_282:
              *(v108 + 4) = v110;
LABEL_283:
              v147 = *a1;
              v148 = *(*a1 + 4);
              if (v148 >= *(*a1 + 3))
              {
                llvm::raw_ostream::write(v147, 62);
              }

              else
              {
                *(v147 + 4) = v148 + 1;
                *v148 = 62;
              }

              return;
            }

            if (a2 && v2 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
            {
              Layout = a2;
              v115 = *a1;
              v116 = *(*a1 + 4);
              if (*(*a1 + 3) - v116 > 7uLL)
              {
                *v116 = 0x3C78656C706D6F63;
                *(v115 + 4) += 8;
              }

              else
              {
                llvm::raw_ostream::write(v115, "complex<", 8uLL);
              }

              ElementType = mlir::ComplexType::getElementType(&Layout);
              if (!ElementType)
              {
                goto LABEL_212;
              }

              goto LABEL_153;
            }

            if (a2 && v2 == &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id)
            {
              Layout = a2;
              v127 = *a1;
              v128 = *(*a1 + 4);
              if ((*(*a1 + 3) - v128) > 5)
              {
                *(v128 + 4) = 15461;
                *v128 = 1819309428;
                *(v127 + 4) += 6;
              }

              else
              {
                llvm::raw_ostream::write(v127, "tuple<", 6uLL);
              }

              Types = mlir::TupleType::getTypes(&Layout);
              if (v150)
              {
                v151 = Types;
                v152 = v150;
                v153 = *a1;
                v154 = *Types;
                if (*Types)
                {
                  if ((mlir::AsmPrinter::Impl::printAlias(a1, v154) & 1) == 0)
                  {
                    mlir::AsmPrinter::Impl::printTypeImpl(a1, v154);
                  }
                }

                else
                {
                  v155 = *(v153 + 4);
                  if (*(v153 + 3) - v155 > 0xCuLL)
                  {
                    qmemcpy(v155, "<<NULL TYPE>>", 13);
                    *(v153 + 4) += 13;
                  }

                  else
                  {
                    llvm::raw_ostream::write(*a1, "<<NULL TYPE>>", 0xDuLL);
                  }
                }

                if (v152 != 1)
                {
                  v156 = v151 + 1;
                  v157 = 8 * v152 - 8;
                  do
                  {
                    v158 = *(v153 + 4);
                    if (*(v153 + 3) - v158 > 1uLL)
                    {
                      *v158 = 8236;
                      *(v153 + 4) += 2;
                    }

                    else
                    {
                      llvm::raw_ostream::write(v153, ", ", 2uLL);
                    }

                    v159 = *v156;
                    if (*v156)
                    {
                      if ((mlir::AsmPrinter::Impl::printAlias(a1, *v156) & 1) == 0)
                      {
                        mlir::AsmPrinter::Impl::printTypeImpl(a1, v159);
                      }
                    }

                    else
                    {
                      v160 = *a1;
                      v161 = *(*a1 + 4);
                      if (*(*a1 + 3) - v161 > 0xCuLL)
                      {
                        qmemcpy(v161, "<<NULL TYPE>>", 13);
                        *(v160 + 4) += 13;
                      }

                      else
                      {
                        llvm::raw_ostream::write(v160, "<<NULL TYPE>>", 0xDuLL);
                      }
                    }

                    ++v156;
                    v157 -= 8;
                  }

                  while (v157);
                }
              }

              goto LABEL_283;
            }

            if (v2 != &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id)
            {

              mlir::AsmPrinter::Impl::printDialectType(a1, a2);
              return;
            }

            v12 = *a1;
            v24 = *(*a1 + 4);
            if (*(*a1 + 3) - v24 <= 3uLL)
            {
              v14 = "none";
              v15 = 4;
              goto LABEL_37;
            }

            v26 = 1701736302;
            goto LABEL_79;
          }

          Layout = a2;
          if (mlir::IntegerType::getSignedness(&Layout) == 1)
          {
            v28 = *a1;
            v29 = *(*a1 + 4);
            if (v29 < *(*a1 + 3))
            {
              *(v28 + 4) = v29 + 1;
              v30 = 115;
LABEL_101:
              *v29 = v30;
              goto LABEL_136;
            }

            v44 = 115;
          }

          else
          {
            if (mlir::IntegerType::getSignedness(&Layout) != 2)
            {
LABEL_136:
              v59 = *a1;
              v60 = *(v59 + 4);
              if (v60 >= *(v59 + 3))
              {
                v59 = llvm::raw_ostream::write(v59, 105);
              }

              else
              {
                *(v59 + 4) = v60 + 1;
                *v60 = 105;
              }

              Width = mlir::IntegerType::getWidth(&Layout);
              llvm::raw_ostream::operator<<(v59, Width);
              return;
            }

            v28 = *a1;
            v29 = *(*a1 + 4);
            if (v29 < *(*a1 + 3))
            {
              *(v28 + 4) = v29 + 1;
              v30 = 117;
              goto LABEL_101;
            }

            v44 = 117;
          }

          llvm::raw_ostream::write(v28, v44);
          goto LABEL_136;
        }

        v12 = *a1;
        v24 = *(v12 + 4);
        if (*(v12 + 3) - v24 <= 3uLL)
        {
          v14 = "f128";
          v15 = 4;
          goto LABEL_37;
        }

        v26 = 942813542;
LABEL_79:
        *v24 = v26;
        v17 = *(v12 + 4) + 4;
        goto LABEL_45;
      }

      v12 = *a1;
      v25 = *(v12 + 4);
      if ((*(v12 + 3) - v25) <= 2)
      {
        v14 = "f80";
        v15 = 3;
        goto LABEL_37;
      }

      *(v25 + 2) = 48;
      v27 = 14438;
LABEL_89:
      *v25 = v27;
      v17 = *(v12 + 4) + 3;
      goto LABEL_45;
    }

    v12 = *a1;
    v25 = *(v12 + 4);
    if ((*(v12 + 3) - v25) > 2)
    {
      *(v25 + 2) = 52;
      v27 = 13926;
      goto LABEL_89;
    }

    v14 = "f64";
    v15 = 3;
  }

LABEL_37:

  llvm::raw_ostream::write(v12, v14, v15);
}

llvm::raw_ostream *mlir::AsmPrinter::Impl::printOptionalAttrDict(llvm::raw_ostream *result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v70[0] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return result;
  }

  v8 = result;
  if (!a5)
  {
    if (a6)
    {
      v14 = *result;
      v15 = *(*v8 + 4);
      if ((*(*v8 + 3) - v15) > 0xA)
      {
        *(v15 + 7) = 1936028789;
        *v15 = *" attributes";
        v14[4] += 11;
        v16 = *v8;
        v17 = *(*v8 + 4);
        if (*(*v8 + 3) - v17 <= 1uLL)
        {
LABEL_17:
          llvm::raw_ostream::write(v16, " {", 2uLL);
          v18 = *v8;
          mlir::AsmPrinter::Impl::printNamedAttribute(v8, *a2, a2[1]);
          if (a3 == 1)
          {
LABEL_31:
            result = *v8;
            v30 = *(*v8 + 4);
            if (v30 >= *(*v8 + 3))
            {

              return llvm::raw_ostream::write(result, 125);
            }

            else
            {
              *(result + 4) = v30 + 1;
              *v30 = 125;
            }

            return result;
          }

LABEL_27:
          v23 = &a2[2 * a3];
          v24 = a2 + 2;
          do
          {
            while (1)
            {
              v27 = *(v18 + 4);
              if (*(v18 + 3) - v27 <= 1uLL)
              {
                break;
              }

              *v27 = 8236;
              *(v18 + 4) += 2;
              v25 = *v24;
              v26 = v24[1];
              v24 += 2;
              mlir::AsmPrinter::Impl::printNamedAttribute(v8, v25, v26);
              if (v24 == v23)
              {
                goto LABEL_31;
              }
            }

            llvm::raw_ostream::write(v18, ", ", 2uLL);
            v28 = *v24;
            v29 = v24[1];
            v24 += 2;
            mlir::AsmPrinter::Impl::printNamedAttribute(v8, v28, v29);
          }

          while (v24 != v23);
          goto LABEL_31;
        }

LABEL_26:
        *v17 = 31520;
        *(v16 + 4) += 2;
        v18 = *v8;
        mlir::AsmPrinter::Impl::printNamedAttribute(v8, *a2, a2[1]);
        if (a3 == 1)
        {
          goto LABEL_31;
        }

        goto LABEL_27;
      }

      llvm::raw_ostream::write(v14, " attributes", 0xBuLL);
    }

    v16 = *v8;
    v17 = *(*v8 + 4);
    if (*(*v8 + 3) - v17 <= 1uLL)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  *&v66 = a4;
  Value = a4 + 16 * a5;
  llvm::detail::DenseSetImpl<llvm::StringRef,llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::DenseMapInfo<llvm::StringRef,void>>::DenseSetImpl<llvm::StringRef const*>(&v67, &v66, &Value);
  v10 = 0;
  v11 = 16 * a3;
  v12 = &a2[2 * a3];
  while (1)
  {
    v66 = *&a2[v10 / 8];
    Name = mlir::NamedAttribute::getName(&v66);
    Value = mlir::StringAttr::getValue(&Name);
    v65 = v13;
    result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::doFind<llvm::StringRef>(&v67, &Value);
    if (!result)
    {
      break;
    }

    if (v67)
    {
      if (result == v70)
      {
        goto LABEL_19;
      }
    }

    else if (result == (v68 + 16 * v69))
    {
      goto LABEL_19;
    }

    v10 += 16;
    if (v11 == v10)
    {
      goto LABEL_51;
    }
  }

  if ((v67 & 1) == 0)
  {
    result = (v68 + 16 * v69);
  }

LABEL_19:
  if (v11 == v10)
  {
LABEL_51:
    if ((v67 & 1) == 0)
    {
      goto LABEL_52;
    }

    return result;
  }

  if (a6)
  {
    v19 = *v8;
    v20 = *(*v8 + 4);
    if ((*(*v8 + 3) - v20) > 0xA)
    {
      *(v20 + 7) = 1936028789;
      *v20 = *" attributes";
      *(v19 + 4) += 11;
      v21 = *v8;
      v22 = *(*v8 + 4);
      if (*(*v8 + 3) - v22 <= 1uLL)
      {
        goto LABEL_24;
      }

LABEL_37:
      *v22 = 31520;
      *(v21 + 4) += 2;
      goto LABEL_38;
    }

    llvm::raw_ostream::write(v19, " attributes", 0xBuLL);
  }

  v21 = *v8;
  v22 = *(*v8 + 4);
  if (*(*v8 + 3) - v22 > 1uLL)
  {
    goto LABEL_37;
  }

LABEL_24:
  llvm::raw_ostream::write(v21, " {", 2uLL);
LABEL_38:
  v31 = *v8;
  v32 = v8;
  v33 = &a2[v10 / 8 + 2];
  v61 = v31;
  v62 = v32;
  mlir::AsmPrinter::Impl::printNamedAttribute(v32, a2[v10 / 8], a2[v10 / 8 + 1]);
  if (v11 - 16 != v10)
  {
    v34 = v11 - v10 - 16;
    while (1)
    {
      v66 = *v33;
      Name = mlir::NamedAttribute::getName(&v66);
      Value = mlir::StringAttr::getValue(&Name);
      v65 = v35;
      v36 = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::doFind<llvm::StringRef>(&v67, &Value);
      if (!v36)
      {
        break;
      }

      if (v67)
      {
        if (v36 == v70)
        {
          break;
        }
      }

      else if (v36 == (v68 + 16 * v69))
      {
        break;
      }

      v33 += 2;
      v34 -= 16;
      if (!v34)
      {
        goto LABEL_49;
      }
    }

    if (v34)
    {
LABEL_55:
      v38 = *(v61 + 4);
      if (*(v61 + 3) - v38 > 1uLL)
      {
        *v38 = 8236;
        *(v61 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v61, ", ", 2uLL);
      }

      mlir::AsmPrinter::Impl::printNamedAttribute(v62, *v33, v33[1]);
      while (1)
      {
        v33 += 2;
        if (v33 == v12)
        {
LABEL_54:
          if (v33 == v12)
          {
            break;
          }

          goto LABEL_55;
        }

        v66 = *v33;
        Value = mlir::NamedAttribute::getName(&v66);
        v39 = mlir::StringAttr::getValue(&Value);
        v41 = v39;
        v42 = v40;
        if (v67)
        {
          v44 = &v68;
          HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(v39, v40);
          v46 = 3;
          v47 = v41 + 2 == 0;
          if (!v42)
          {
            goto LABEL_64;
          }
        }

        else
        {
          v43 = v69;
          if (!v69)
          {
            goto LABEL_54;
          }

          v44 = v68;
          HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(v39, v40);
          v46 = v43 - 1;
          v47 = v41 + 2 == 0;
          if (!v42)
          {
LABEL_64:
            v48 = 1;
            if (v47)
            {
              v49 = HashValue & v46;
              v50 = &v44[16 * (HashValue & v46)];
              v51 = *v50;
              if (*v50 != -2)
              {
                while (v51 != -1)
                {
                  if (*(v50 + 1))
                  {
                    v52 = v48 + v49;
                    ++v48;
                    v49 = v52 & v46;
                    v50 = &v44[16 * (v52 & v46)];
                    v51 = *v50;
                    if (*v50 != -2)
                    {
                      continue;
                    }
                  }

                  goto LABEL_92;
                }

                goto LABEL_91;
              }
            }

            else
            {
              while (1)
              {
                v50 = &v44[16 * (HashValue & v46)];
                if (*v50 != -2)
                {
                  if (*v50 == -1)
                  {
                    goto LABEL_91;
                  }

                  if (!*(v50 + 1))
                  {
                    break;
                  }
                }

                HashValue = v48 + (HashValue & v46);
                ++v48;
              }
            }

            goto LABEL_92;
          }
        }

        if (!v47)
        {
          v57 = 1;
          v58 = HashValue & v46;
          v50 = &v44[16 * (HashValue & v46)];
          v59 = *v50;
          if (*v50 == -2)
          {
            goto LABEL_84;
          }

          while (1)
          {
            if (v59 == -1)
            {
              goto LABEL_91;
            }

            if (v42 == *(v50 + 1) && !memcmp(v41, v59, v42))
            {
              goto LABEL_92;
            }

            do
            {
LABEL_84:
              v60 = v57 + v58;
              ++v57;
              v58 = v60 & v46;
              v50 = &v44[16 * (v60 & v46)];
              v59 = *v50;
            }

            while (*v50 == -2);
          }
        }

        v53 = 1;
        v54 = HashValue & v46;
        v50 = &v44[16 * (HashValue & v46)];
        v55 = *v50;
        if (*v50 != -2)
        {
          while (v55 != -1)
          {
            if (v42 != *(v50 + 1) || memcmp(v41, v55, v42))
            {
              v56 = v53 + v54;
              ++v53;
              v54 = v56 & v46;
              v50 = &v44[16 * (v56 & v46)];
              v55 = *v50;
              if (*v50 != -2)
              {
                continue;
              }
            }

            goto LABEL_92;
          }

LABEL_91:
          if (v41 != -1)
          {
            goto LABEL_54;
          }
        }

LABEL_92:
        if (v67)
        {
          if (v50 == v70)
          {
            goto LABEL_54;
          }
        }

        else if (v50 == v68 + 16 * v69)
        {
          goto LABEL_54;
        }
      }
    }
  }

LABEL_49:
  result = *v62;
  v37 = *(*v62 + 4);
  if (v37 < *(*v62 + 3))
  {
    *(result + 4) = v37 + 1;
    *v37 = 125;
    goto LABEL_51;
  }

  result = llvm::raw_ostream::write(result, 125);
  if ((v67 & 1) == 0)
  {
LABEL_52:
    llvm::deallocate_buffer(v68, (16 * v69));
  }

  return result;
}