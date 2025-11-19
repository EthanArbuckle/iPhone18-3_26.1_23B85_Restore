int *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,anonymous namespace::BytecodeWriter::writeUseListOrders(anonymous namespace::EncodingEmitter &,unsigned char &,mlir::ValueRange)::$_2 &,std::pair<unsigned int,unsigned long long> *,0>(int *result, int *a2, int *a3, int *a4, int *a5)
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

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,anonymous namespace::BytecodeWriter::writeUseListOrders(anonymous namespace::EncodingEmitter &,unsigned char &,mlir::ValueRange)::$_2 &,std::pair<unsigned int,unsigned long long> *>(uint64_t a1, int *a2)
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,12u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,12u>>>,unsigned int,llvm::SmallVector<unsigned int,12u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,12u>>>::LookupBucketFor<unsigned int>(uint64_t *a1, _DWORD *a2, void *a3)
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

_DWORD *llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,12u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,12u>>>,unsigned int,llvm::SmallVector<unsigned int,12u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,12u>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(72 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = 18 * v3;
    llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,12u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,12u>>>,unsigned int,llvm::SmallVector<unsigned int,12u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,12u>>>::moveFromOldBuckets(a1, v4, &v4[v10]);

    llvm::deallocate_buffer(v4, (v10 * 4));
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 72 * v11 - 72;
    if (v12 < 0x48)
    {
      v13 = result;
LABEL_14:
      v17 = &result[18 * v11];
      do
      {
        *v13 = -1;
        v13 += 18;
      }

      while (v13 != v17);
      return result;
    }

    v14 = v12 / 0x48 + 1;
    v13 = &result[18 * (v14 & 0x7FFFFFFFFFFFFFELL)];
    v15 = result;
    v16 = v14 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v15 = -1;
      v15[18] = -1;
      v15 += 36;
      v16 -= 2;
    }

    while (v16);
    if (v14 != (v14 & 0x7FFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,12u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,12u>>>,unsigned int,llvm::SmallVector<unsigned int,12u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,12u>>>::moveFromOldBuckets(uint64_t a1, int *a2, int *a3)
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
          llvm::SmallVectorImpl<unsigned int>::operator=(v17 + 8, v4 + 1);
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

uint64_t llvm::SmallVectorImpl<unsigned int>::operator=(uint64_t result, const void **a2)
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
        memmove(*result, *a2, 4 * v7);
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
      memmove(*result, *a2, 4 * v8);
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

    memcpy((*v10 + 4 * v8), *a2 + 4 * v8, 4 * v12);
    goto LABEL_15;
  }

  return result;
}

uint64_t std::__all_of[abi:nn200100]<mlir::Region *,mlir::Region *,std::__identity,anonymous namespace::BytecodeWriter::writeRegions(anonymous namespace::EncodingEmitter &,llvm::MutableArrayRef<mlir::Region>)::{lambda(mlir::Region&)#1}>(void *a1, void *a2, uint64_t *a3)
{
  v192[2] = *MEMORY[0x277D85DE8];
  v3 = 1;
  if (a1 == a2)
  {
    return v3;
  }

  v4 = a1;
  v183 = a3;
  while (1)
  {
    v5 = a3[1];
    if (*v4 == v4)
    {
      v174 = *(v5 + 8);
      v173 = *(v5 + 16);
      if (v174 >= v173)
      {
        v176 = *v5;
        v177 = &v174[-*v5];
        v178 = (v177 + 1);
        if ((v177 + 1) < 0)
        {
          goto LABEL_302;
        }

        v179 = v173 - v176;
        if (2 * v179 > v178)
        {
          v178 = 2 * v179;
        }

        if (v179 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v180 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v180 = v178;
        }

        if (v180)
        {
          operator new();
        }

        v181 = &v174[-*v5];
        *v177 = 1;
        v175 = v177 + 1;
        memcpy(0, v176, v181);
        *v5 = 0;
        *(v5 + 8) = v177 + 1;
        *(v5 + 16) = 0;
        if (v176)
        {
          operator delete(v176);
        }
      }

      else
      {
        *v174 = 1;
        v175 = v174 + 1;
      }

      *(v5 + 8) = v175;
      goto LABEL_298;
    }

    v6 = *a3;
    v192[0] = v4;
    v7 = llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,std::pair<unsigned int,unsigned int>>>,mlir::Region *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,std::pair<unsigned int,unsigned int>>>::operator[](v6 + 944, v192);
    v8 = HIDWORD(*v7);
    v9 = v4[1];
    if (v9 != v4)
    {
      break;
    }

LABEL_298:
    v4 += 3;
    a3 = v183;
    if (v4 == a2)
    {
      return 1;
    }
  }

  v187 = v4;
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
    v188 = v9;
    if (!v13)
    {
      goto LABEL_267;
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

      v163 = *(v6 + 928);
      if (4 * v163 + 4 >= 3 * v13)
      {
LABEL_267:
        v13 *= 2;
LABEL_268:
        llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::grow(v6 + 920, v13);
        v164 = *(v6 + 936);
        if (v164)
        {
          v165 = *(v6 + 920);
          v166 = v164 - 1;
          v167 = (v164 - 1) & ((v10 >> 4) ^ (v10 >> 9));
          v17 = v165 + 16 * v167;
          v168 = *v17;
          if (v10 != *v17)
          {
            v169 = 0;
            v170 = 1;
            while (v168 != -4096)
            {
              if (v169)
              {
                v171 = 0;
              }

              else
              {
                v171 = v168 == -8192;
              }

              if (v171)
              {
                v169 = v17;
              }

              v172 = v167 + v170++;
              v167 = v172 & v166;
              v17 = v165 + 16 * (v172 & v166);
              v168 = *v17;
              if (v10 == *v17)
              {
                goto LABEL_280;
              }
            }

            if (v169)
            {
              v17 = v169;
            }
          }
        }

        else
        {
          v17 = 0;
        }

LABEL_280:
        ++*(v6 + 928);
        if (*v17 == -4096)
        {
          goto LABEL_25;
        }

LABEL_24:
        --*(v6 + 932);
        goto LABEL_25;
      }

      if (v13 + ~v163 - *(v6 + 932) <= v13 >> 3)
      {
        goto LABEL_268;
      }

      *(v6 + 928) = v163 + 1;
      if (*v17 != -4096)
      {
        goto LABEL_24;
      }

LABEL_25:
      *v17 = v10;
      *(v17 + 8) = 0;
    }

LABEL_26:
    v23 = *(v17 + 8);
    v24 = (v12 != v11) | (2 * v23);
    if (v23 > 0x3F)
    {
      if (v12 == v11)
      {
        goto LABEL_260;
      }
    }

    else
    {
      v25 = (2 * v24) | 1;
      v27 = *(v5 + 8);
      v26 = *(v5 + 16);
      if (v27 >= v26)
      {
        v189 = v10;
        v28 = *v5;
        v29 = &v27[-*v5];
        v30 = (v29 + 1);
        if ((v29 + 1) < 0)
        {
          goto LABEL_302;
        }

        v31 = v26 - v28;
        if (2 * v31 > v30)
        {
          v30 = 2 * v31;
        }

        if (v31 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v32 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v32 = v30;
        }

        if (v32)
        {
          operator new();
        }

        v33 = &v27[-*v5];
        *v29 = v25;
        v34 = v29 + 1;
        memcpy(0, v28, v33);
        *v5 = 0;
        *(v5 + 8) = v29 + 1;
        *(v5 + 16) = 0;
        if (v28)
        {
          operator delete(v28);
        }

        v10 = v189;
        *(v5 + 8) = v34;
        if (v12 == v11)
        {
          goto LABEL_260;
        }
      }

      else
      {
        *v27 = v25;
        *(v5 + 8) = v27 + 1;
        if (v12 == v11)
        {
          goto LABEL_260;
        }
      }
    }

    v190 = v10;
    v35 = (v12 - v11) >> 3;
    v184 = v11;
    v185 = v35;
    if (v35 > 0x7F)
    {
      goto LABEL_60;
    }

    v36 = (2 * ((v12 - v11) >> 3)) | 1;
    v38 = *(v5 + 8);
    v37 = *(v5 + 16);
    if (v38 < v37)
    {
      *v38 = v36;
      *(v5 + 8) = v38 + 1;
      goto LABEL_60;
    }

    v39 = *v5;
    v40 = &v38[-*v5];
    v41 = (v40 + 1);
    if ((v40 + 1) < 0)
    {
      goto LABEL_302;
    }

    v42 = v37 - v39;
    if (2 * v42 > v41)
    {
      v41 = 2 * v42;
    }

    if (v42 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v43 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v43 = v41;
    }

    if (v43)
    {
      operator new();
    }

    v44 = &v38[-*v5];
    *v40 = v36;
    memcpy(0, v39, v44);
    *v5 = 0;
    *(v5 + 8) = v40 + 1;
    *(v5 + 16) = 0;
    if (v39)
    {
      operator delete(v39);
    }

    *(v5 + 8) = v40 + 1;
LABEL_60:
    while (2)
    {
      v45 = *(*v11 + 32);
      v46 = *(*v11 + 8) & 0xFFFFFFFFFFFFFFF8;
      v47 = *(v6 + 112);
      v48 = *(v6 + 128);
      if (**(v6 + 984) < 4)
      {
        if (!v48)
        {
          goto LABEL_186;
        }

        v57 = v48 - 1;
        v58 = ((v46 >> 4) ^ (v46 >> 9)) & (v48 - 1);
        v59 = (v47 + 16 * v58);
        v60 = *v59;
        if (*v59 == v46)
        {
          goto LABEL_98;
        }

        v61 = 0;
        v62 = 1;
        while (v60 != -4096)
        {
          if (v61)
          {
            v63 = 0;
          }

          else
          {
            v63 = v60 == -8192;
          }

          if (v63)
          {
            v61 = v59;
          }

          v64 = v58 + v62++;
          v58 = v64 & v57;
          v59 = (v47 + 16 * (v64 & v57));
          v60 = *v59;
          if (*v59 == v46)
          {
            goto LABEL_98;
          }
        }

        if (v61)
        {
          v59 = v61;
        }

        v127 = *(v6 + 120);
        if (4 * v127 + 4 < 3 * v48)
        {
          if (v48 + ~v127 - *(v6 + 124) > v48 >> 3)
          {
            *(v6 + 120) = v127 + 1;
            if (*v59 == -4096)
            {
LABEL_97:
              *v59 = v46;
              v59[1] = 0;
LABEL_98:
              v71 = *(v59[1] + 8);
              if (v71 > 0x7F)
              {
                v75 = *(v6 + 56);
                if (v75)
                {
                  goto LABEL_105;
                }
              }

              else
              {
                v72 = (2 * v71) | 1;
                v74 = *(v5 + 8);
                v73 = *(v5 + 16);
                if (v74 < v73)
                {
                  *v74 = v72;
                  *(v5 + 8) = v74 + 1;
                  v75 = *(v6 + 56);
                  if (!v75)
                  {
                    goto LABEL_101;
                  }

LABEL_105:
                  v78 = *(v6 + 40);
                  v79 = v75 - 1;
                  v80 = (v75 - 1) & ((v45 >> 4) ^ (v45 >> 9));
                  v76 = (v78 + 16 * v80);
                  v81 = *v76;
                  if (v45 == *v76)
                  {
                    goto LABEL_150;
                  }

                  v82 = 0;
                  v83 = 1;
                  while (v81 != -4096)
                  {
                    if (v82)
                    {
                      v84 = 0;
                    }

                    else
                    {
                      v84 = v81 == -8192;
                    }

                    if (v84)
                    {
                      v82 = v76;
                    }

                    v85 = v80 + v83++;
                    v80 = v85 & v79;
                    v76 = (v78 + 16 * (v85 & v79));
                    v81 = *v76;
                    if (v45 == *v76)
                    {
                      goto LABEL_150;
                    }
                  }

                  if (v82)
                  {
                    v76 = v82;
                  }

                  v77 = *(v6 + 48);
                  if (4 * v77 + 4 < 3 * v75)
                  {
                    goto LABEL_102;
                  }

                  goto LABEL_201;
                }

                v91 = *v5;
                v92 = &v74[-*v5];
                v93 = (v92 + 1);
                if ((v92 + 1) < 0)
                {
                  goto LABEL_302;
                }

                v94 = v73 - v91;
                if (2 * v94 > v93)
                {
                  v93 = 2 * v94;
                }

                if (v94 >= 0x3FFFFFFFFFFFFFFFLL)
                {
                  v95 = 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v95 = v93;
                }

                if (v95)
                {
                  operator new();
                }

                v116 = &v74[-*v5];
                *v92 = v72;
                memcpy(0, v91, v116);
                *v5 = 0;
                *(v5 + 8) = v92 + 1;
                *(v5 + 16) = 0;
                if (v91)
                {
                  operator delete(v91);
                }

                *(v5 + 8) = v92 + 1;
                v75 = *(v6 + 56);
                if (v75)
                {
                  goto LABEL_105;
                }
              }

LABEL_101:
              v76 = 0;
              v77 = *(v6 + 48);
              if (4 * v77 + 4 < 3 * v75)
              {
LABEL_102:
                if (v75 + ~v77 - *(v6 + 52) > v75 >> 3)
                {
                  goto LABEL_147;
                }

LABEL_202:
                llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::grow(v6 + 40, v75);
                v137 = *(v6 + 56);
                if (!v137)
                {
                  goto LABEL_228;
                }

                v138 = *(v6 + 40);
                v139 = v137 - 1;
                v140 = (v137 - 1) & ((v45 >> 4) ^ (v45 >> 9));
                v76 = (v138 + 16 * v140);
                v141 = *v76;
                if (v45 != *v76)
                {
                  v142 = 0;
                  v143 = 1;
                  while (v141 != -4096)
                  {
                    if (v142)
                    {
                      v144 = 0;
                    }

                    else
                    {
                      v144 = v141 == -8192;
                    }

                    if (v144)
                    {
                      v142 = v76;
                    }

                    v145 = v140 + v143++;
                    v140 = v145 & v139;
                    v76 = (v138 + 16 * (v145 & v139));
                    v141 = *v76;
                    if (v45 == *v76)
                    {
                      goto LABEL_229;
                    }
                  }

LABEL_237:
                  if (v142)
                  {
                    v76 = v142;
                  }
                }

LABEL_229:
                ++*(v6 + 48);
                if (*v76 != -4096)
                {
                  goto LABEL_148;
                }

                goto LABEL_149;
              }

LABEL_201:
              v75 *= 2;
              goto LABEL_202;
            }

LABEL_96:
            --*(v6 + 124);
            goto LABEL_97;
          }
        }

        else
        {
LABEL_186:
          v48 *= 2;
        }

        llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::grow(v6 + 112, v48);
        v128 = *(v6 + 128);
        if (v128)
        {
          v129 = *(v6 + 112);
          v130 = v128 - 1;
          v131 = (v128 - 1) & ((v46 >> 4) ^ (v46 >> 9));
          v59 = (v129 + 16 * v131);
          v132 = *v59;
          if (*v59 != v46)
          {
            v133 = 0;
            v134 = 1;
            while (v132 != -4096)
            {
              if (v133)
              {
                v135 = 0;
              }

              else
              {
                v135 = v132 == -8192;
              }

              if (v135)
              {
                v133 = v59;
              }

              v136 = v131 + v134++;
              v131 = v136 & v130;
              v59 = (v129 + 16 * (v136 & v130));
              v132 = *v59;
              if (*v59 == v46)
              {
                goto LABEL_235;
              }
            }

            if (v133)
            {
              v59 = v133;
            }
          }
        }

        else
        {
          v59 = 0;
        }

LABEL_235:
        ++*(v6 + 120);
        if (*v59 == -4096)
        {
          goto LABEL_97;
        }

        goto LABEL_96;
      }

      if (!v48)
      {
        goto LABEL_171;
      }

      v49 = v48 - 1;
      v50 = ((v46 >> 4) ^ (v46 >> 9)) & (v48 - 1);
      v51 = (v47 + 16 * v50);
      v52 = *v51;
      if (*v51 != v46)
      {
        v53 = 0;
        v54 = 1;
        while (v52 != -4096)
        {
          if (v53)
          {
            v55 = 0;
          }

          else
          {
            v55 = v52 == -8192;
          }

          if (v55)
          {
            v53 = v51;
          }

          v56 = v50 + v54++;
          v50 = v56 & v49;
          v51 = (v47 + 16 * (v56 & v49));
          v52 = *v51;
          if (*v51 == v46)
          {
            goto LABEL_88;
          }
        }

        if (v53)
        {
          v51 = v53;
        }

        v117 = *(v6 + 120);
        if (4 * v117 + 4 >= 3 * v48)
        {
LABEL_171:
          v48 *= 2;
LABEL_172:
          llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::grow(v6 + 112, v48);
          v118 = *(v6 + 128);
          if (v118)
          {
            v119 = *(v6 + 112);
            v120 = v118 - 1;
            v121 = (v118 - 1) & ((v46 >> 4) ^ (v46 >> 9));
            v51 = (v119 + 16 * v121);
            v122 = *v51;
            if (*v51 != v46)
            {
              v123 = 0;
              v124 = 1;
              while (v122 != -4096)
              {
                if (v123)
                {
                  v125 = 0;
                }

                else
                {
                  v125 = v122 == -8192;
                }

                if (v125)
                {
                  v123 = v51;
                }

                v126 = v121 + v124++;
                v121 = v126 & v120;
                v51 = (v119 + 16 * (v126 & v120));
                v122 = *v51;
                if (*v51 == v46)
                {
                  goto LABEL_232;
                }
              }

              if (v123)
              {
                v51 = v123;
              }
            }
          }

          else
          {
            v51 = 0;
          }

LABEL_232:
          ++*(v6 + 120);
          if (*v51 == -4096)
          {
            goto LABEL_87;
          }

LABEL_86:
          --*(v6 + 124);
          goto LABEL_87;
        }

        if (v48 + ~v117 - *(v6 + 124) <= v48 >> 3)
        {
          goto LABEL_172;
        }

        *(v6 + 120) = v117 + 1;
        if (*v51 != -4096)
        {
          goto LABEL_86;
        }

LABEL_87:
        *v51 = v46;
        v51[1] = 0;
      }

LABEL_88:
      v65 = *(v51[1] + 8);
      v66 = (*(*v45 + 136) != &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id) | (2 * v65);
      if (v65 > 0x3F)
      {
        if (*(*v45 + 136) != &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
        {
          goto LABEL_134;
        }
      }

      else
      {
        v67 = (2 * v66) | 1;
        v69 = *(v5 + 8);
        v68 = *(v5 + 16);
        if (v69 >= v68)
        {
          v86 = *v5;
          v87 = &v69[-*v5];
          v88 = (v87 + 1);
          if ((v87 + 1) < 0)
          {
            goto LABEL_302;
          }

          v89 = v68 - v86;
          if (2 * v89 > v88)
          {
            v88 = 2 * v89;
          }

          if (v89 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v90 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v90 = v88;
          }

          if (v90)
          {
            operator new();
          }

          v96 = &v69[-*v5];
          *v87 = v67;
          v70 = v87 + 1;
          memcpy(0, v86, v96);
          *v5 = 0;
          *(v5 + 8) = v87 + 1;
          *(v5 + 16) = 0;
          if (v86)
          {
            operator delete(v86);
          }
        }

        else
        {
          *v69 = v67;
          v70 = v69 + 1;
        }

        *(v5 + 8) = v70;
        if (*(*v45 + 136) != &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
        {
LABEL_134:
          v97 = *(v6 + 56);
          if (!v97)
          {
            goto LABEL_216;
          }

          v98 = *(v6 + 40);
          v99 = v97 - 1;
          v100 = (v97 - 1) & ((v45 >> 4) ^ (v45 >> 9));
          v76 = (v98 + 16 * v100);
          v101 = *v76;
          if (v45 != *v76)
          {
            v102 = 0;
            v103 = 1;
            while (v101 != -4096)
            {
              if (v102)
              {
                v104 = 0;
              }

              else
              {
                v104 = v101 == -8192;
              }

              if (v104)
              {
                v102 = v76;
              }

              v105 = v100 + v103++;
              v100 = v105 & v99;
              v76 = (v98 + 16 * (v105 & v99));
              v101 = *v76;
              if (v45 == *v76)
              {
                goto LABEL_150;
              }
            }

            if (v102)
            {
              v76 = v102;
            }

            v77 = *(v6 + 48);
            if (4 * v77 + 4 >= 3 * v97)
            {
LABEL_216:
              v97 *= 2;
LABEL_217:
              llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::grow(v6 + 40, v97);
              v146 = *(v6 + 56);
              if (v146)
              {
                v147 = *(v6 + 40);
                v148 = v146 - 1;
                v149 = (v146 - 1) & ((v45 >> 4) ^ (v45 >> 9));
                v76 = (v147 + 16 * v149);
                v150 = *v76;
                if (v45 != *v76)
                {
                  v142 = 0;
                  v151 = 1;
                  while (v150 != -4096)
                  {
                    if (v142)
                    {
                      v152 = 0;
                    }

                    else
                    {
                      v152 = v150 == -8192;
                    }

                    if (v152)
                    {
                      v142 = v76;
                    }

                    v153 = v149 + v151++;
                    v149 = v153 & v148;
                    v76 = (v147 + 16 * (v153 & v148));
                    v150 = *v76;
                    if (v45 == *v76)
                    {
                      goto LABEL_229;
                    }
                  }

                  goto LABEL_237;
                }

                goto LABEL_229;
              }

LABEL_228:
              v76 = 0;
              goto LABEL_229;
            }

            if (v97 + ~v77 - *(v6 + 52) <= v97 >> 3)
            {
              goto LABEL_217;
            }

LABEL_147:
            *(v6 + 48) = v77 + 1;
            if (*v76 != -4096)
            {
LABEL_148:
              --*(v6 + 52);
            }

LABEL_149:
            *v76 = v45;
            v76[1] = 0;
          }

LABEL_150:
          v106 = *(v76[1] + 8);
          if (v106 > 0x7F)
          {
          }

          else
          {
            v107 = (2 * v106) | 1;
            v109 = *(v5 + 8);
            v108 = *(v5 + 16);
            if (v109 >= v108)
            {
              v110 = *v5;
              v111 = &v109[-*v5];
              v112 = (v111 + 1);
              if ((v111 + 1) < 0)
              {
                goto LABEL_302;
              }

              v113 = v108 - v110;
              if (2 * v113 > v112)
              {
                v112 = 2 * v113;
              }

              if (v113 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v114 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v114 = v112;
              }

              if (v114)
              {
                operator new();
              }

              v115 = &v109[-*v5];
              *v111 = v107;
              memcpy(0, v110, v115);
              *v5 = 0;
              *(v5 + 8) = v111 + 1;
              *(v5 + 16) = 0;
              if (v110)
              {
                operator delete(v110);
              }

              *(v5 + 8) = v111 + 1;
            }

            else
            {
              *v109 = v107;
              *(v5 + 8) = v109 + 1;
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

    v10 = v190;
    if (**(v6 + 984) > 2)
    {
      v155 = *v5;
      v154 = *(v5 + 8);
      v191 = 0;
      v156 = *(v5 + 16);
      if (v154 < v156)
      {
        *v154 = 0;
        v157 = (v154 + 1);
        goto LABEL_259;
      }

      v158 = v154 - v155 + 1;
      if (v158 >= 0)
      {
        v159 = v156 - v155;
        if (2 * v159 > v158)
        {
          v158 = 2 * v159;
        }

        if (v159 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v160 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v160 = v158;
        }

        if (v160)
        {
          operator new();
        }

        *(v154 - v155) = 0;
        v157 = v154 - v155 + 1;
        memcpy(0, v155, v154 - v155);
        *v5 = 0;
        *(v5 + 8) = v157;
        *(v5 + 16) = 0;
        if (v155)
        {
          operator delete(v155);
        }

LABEL_259:
        *(v5 + 8) = v157;
        mlir::ValueRange::ValueRange(v192, v184, v185);
      }

LABEL_302:
      std::string::__throw_length_error[abi:nn200100]();
    }

LABEL_260:
    v161 = v10[5];
    v4 = v187;
    if (v161 == v10 + 4)
    {
LABEL_6:
      v9 = v188[1];
      if (v9 == v187)
      {
        goto LABEL_298;
      }

      continue;
    }

    break;
  }

  while (1)
  {
    ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v161);
    {
      return 0;
    }

    v161 = v161[1];
    if (v161 == v10 + 4)
    {
      goto LABEL_6;
    }
  }
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,std::pair<unsigned int,unsigned int>>>,mlir::Region *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,std::pair<unsigned int,unsigned int>>>::operator[](uint64_t a1, void *a2)
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
    llvm::DenseMap<mlir::Region *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,std::pair<unsigned int,unsigned int>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::LookupBucketFor<mlir::Dialect const*>(v14, v13, &v15);
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

void *llvm::DenseMap<mlir::Region *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,std::pair<unsigned int,unsigned int>>>::grow(uint64_t a1, int a2)
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
        goto LABEL_10;
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
LABEL_10:
        v15 = &result[2 * v11];
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

    llvm::deallocate_buffer(v4, (16 * v3));
  }

  *(a1 + 8) = 0;
  v17 = *(a1 + 16);
  if (v17)
  {
    if (((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_19;
    }

    v18 = ((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v18 & 0x1FFFFFFFFFFFFFFELL)];
    v19 = result + 2;
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
      v21 = &result[2 * v17];
      do
      {
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v21);
    }
  }

  return result;
}

void anonymous namespace::BytecodeWriter::writeResourceSection(mlir::Operation *,anonymous namespace::EncodingEmitter &)::$_1::operator()(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 8);
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
      v13 = *a1;
      v15 = *(*a1 + 8);
      v14 = *(*a1 + 16);
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
          std::string::__throw_length_error[abi:nn200100]();
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
        *(v13 + 1) = v17 + 1;
        *(v13 + 2) = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      *(v13 + 1) = v8;
      v6 += 32;
    }

    while (v6 != v7);
  }
}

void **llvm::function_ref<void ()(llvm::StringRef,mlir::AsmResourceEntryKind)>::callback_fn<anonymous namespace::BytecodeWriter::writeResourceSection(mlir::Operation *,anonymous namespace::EncodingEmitter &)::$_0>(void **result, uint64_t a2, uint64_t a3, int a4)
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
    llvm::SmallVectorTemplateBase<std::tuple<llvm::StringRef,mlir::AsmResourceEntryKind,unsigned long long>,true>::growAndEmplaceBack<llvm::StringRef&,mlir::AsmResourceEntryKind&,unsigned long long>(v4, &v12, &v11, &v10);
    result = v9;
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

void anonymous namespace::ResourceBuilder::~ResourceBuilder(_anonymous_namespace_::ResourceBuilder *this)
{
  mlir::AsmResourceBuilder::~AsmResourceBuilder(this);

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::ResourceBuilder::buildBool(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
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
        std::string::__throw_length_error[abi:nn200100]();
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

uint64_t anonymous namespace::ResourceBuilder::buildString(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v6 = *(a1 + 8);
    v7 = a2;
    v8 = a3;
    a2 = v7;
    a3 = v8;
  }

  v11 = *(a1 + 24);
  v10 = *(a1 + 32);

  return v11(v10, a2, a3, 2);
}

uint64_t anonymous namespace::ResourceBuilder::buildBlob(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unsigned int a6)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v9 = a2;
    v10 = a3;
    v11 = *(a1 + 8);
    if (*v11 != *(v11 + 8))
    {
      std::vector<std::vector<unsigned char>>::emplace_back<std::vector<unsigned char>>(v11 + 48, v11);
    }

    a3 = v10;
    a2 = v9;
  }

  v14 = *(a1 + 24);
  v13 = *(a1 + 32);

  return v14(v13, a2, a3, 0);
}

uint64_t llvm::SmallVectorTemplateBase<std::tuple<llvm::StringRef,mlir::AsmResourceEntryKind,unsigned long long>,true>::growAndEmplaceBack<llvm::StringRef&,mlir::AsmResourceEntryKind&,unsigned long long>(uint64_t a1, __int128 *a2, _DWORD *a3, void *a4)
{
  v10 = *a2;
  LODWORD(v11) = *a3;
  *(&v11 + 1) = *a4;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4 >= *(a1 + 12))
  {
    if (v5 > &v10 || v5 + 32 * v4 <= &v10)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v6 = (v5 + 32 * *(a1 + 8));
  v7 = v11;
  *v6 = v10;
  v6[1] = v7;
  v8 = (*(a1 + 8) + 1);
  *(a1 + 8) = v8;
  return *a1 + 32 * v8 - 32;
}

void sub_2565807CC()
{
  if (*(v0 + 808))
  {
    llvm::deallocate_buffer(**(v0 + 800), *(*(v0 + 800) + 8));
  }

  *(v0 + 808) = 0;
  v1 = *(v0 + 760);
  if (v1)
  {
    *(v0 + 816) = 0;
    v2 = *(v0 + 752);
    v3 = *v2;
    *(v0 + 736) = *v2;
    *(v0 + 744) = v3 + 4096;
    if (v1 != 1)
    {
      v4 = ((v2 - *(v0 + 752) + 8) >> 10) & 0x1FFFFFF;
      if (v4 >= 0x1E)
      {
        LOBYTE(v4) = 30;
      }

      llvm::deallocate_buffer(v2[1], (4096 << v4));
    }

    *(v0 + 760) = 1;
  }

  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(v0 + 736);
  llvm::SpecificBumpPtrAllocator<mlir::bytecode::detail::DialectResourceNumbering>::DestroyAll(v0 + 640);
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(v0 + 640);
  if (*(v0 + 616))
  {
    llvm::deallocate_buffer(**(v0 + 608), *(*(v0 + 608) + 8));
  }

  *(v0 + 616) = 0;
  v5 = *(v0 + 568);
  if (v5)
  {
    *(v0 + 624) = 0;
    v6 = *(v0 + 560);
    v7 = *v6;
    *(v0 + 544) = *v6;
    *(v0 + 552) = v7 + 4096;
    if (v5 != 1)
    {
      v8 = ((v6 - *(v0 + 560) + 8) >> 10) & 0x1FFFFFF;
      if (v8 >= 0x1E)
      {
        LOBYTE(v8) = 30;
      }

      llvm::deallocate_buffer(v6[1], (4096 << v8));
    }

    *(v0 + 568) = 1;
  }

  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(v0 + 544);
  if (*(v0 + 520))
  {
    llvm::deallocate_buffer(**(v0 + 512), *(*(v0 + 512) + 8));
  }

  *(v0 + 520) = 0;
  v9 = *(v0 + 472);
  if (v9)
  {
    *(v0 + 528) = 0;
    v10 = *(v0 + 464);
    v11 = *v10 + 4096;
    *(v0 + 448) = *v10;
    *(v0 + 456) = v11;
    if (v9 != 1)
    {
      v12 = ((v10 + 8 - *(v0 + 464)) >> 10) & 0x1FFFFFF;
      if (v12 >= 0x1E)
      {
        LOBYTE(v12) = 30;
      }

      llvm::deallocate_buffer(*(v10 + 8), (4096 << v12));
    }

    *(v0 + 472) = 1;
  }

  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(v0 + 448);
  llvm::SpecificBumpPtrAllocator<mlir::bytecode::detail::DialectNumbering>::DestroyAll(v0 + 352);
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(v0 + 352);
  if (*(v0 + 328))
  {
    llvm::deallocate_buffer(**(v0 + 320), *(*(v0 + 320) + 8));
  }

  *(v0 + 328) = 0;
  v13 = *(v0 + 280);
  if (v13)
  {
    *(v0 + 336) = 0;
    v14 = *(v0 + 272);
    v15 = *v14 + 4096;
    *(v0 + 256) = *v14;
    *(v0 + 264) = v15;
    if (v13 != 1)
    {
      v16 = ((v14 + 8 - *(v0 + 272)) >> 10) & 0x1FFFFFF;
      if (v16 >= 0x1E)
      {
        LOBYTE(v16) = 30;
      }

      llvm::deallocate_buffer(*(v14 + 8), (4096 << v16));
    }

    *(v0 + 280) = 1;
  }

  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(v0 + 256);
  llvm::deallocate_buffer(*(v0 + 232), (32 * *(v0 + 248)));
}

void sub_256580A98()
{
  v1 = *(v0 + 208);
  if (v1)
  {
    *(v0 + 216) = v1;
    operator delete(v1);
  }

  v2 = *(v0 + 184);
  if (v2)
  {
    *(v0 + 192) = v2;
    operator delete(v2);
  }

  v3 = *(v0 + 160);
  if (v3)
  {
    *(v0 + 168) = v3;
    operator delete(v3);
  }

  v4 = *(v0 + 144);
  if (v4 != (v0 + 160))
  {
    free(v4);
  }

  llvm::deallocate_buffer(*(v0 + 120), (24 * *(v0 + 136)));
}

uint64_t llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(uint64_t a1)
{
  if (*(a1 + 24))
  {
    llvm::deallocate_buffer(**(a1 + 16), 0x1000);
  }

  v2 = *(a1 + 64);
  if (*(a1 + 72))
  {
    llvm::deallocate_buffer(*v2, *(v2 + 8));
  }

  if (v2 != a1 + 80)
  {
    free(*(a1 + 64));
  }

  v3 = *(a1 + 16);
  if (v3 != (a1 + 32))
  {
    free(v3);
  }

  return a1;
}

void llvm::SpecificBumpPtrAllocator<mlir::bytecode::detail::DialectResourceNumbering>::DestroyAll(uint64_t a1)
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
    if (*(a1 + 72))
    {
      llvm::deallocate_buffer(**(a1 + 64), *(*(a1 + 64) + 8));
    }
  }

  *(a1 + 72) = 0;
  v15 = *(a1 + 24);
  if (v15)
  {
    *(a1 + 80) = 0;
    v16 = *(a1 + 16);
    v17 = *v16 + 4096;
    *a1 = *v16;
    *(a1 + 8) = v17;
    if (v15 != 1)
    {
      v18 = ((v16 + 8 - *(a1 + 16)) >> 10) & 0x1FFFFFF;
      if (v18 >= 0x1E)
      {
        LOBYTE(v18) = 30;
      }

      llvm::deallocate_buffer(*(v16 + 8), (4096 << v18));
    }

    *(a1 + 24) = 1;
  }
}

uint64_t llvm::SpecificBumpPtrAllocator<mlir::bytecode::detail::DialectNumbering>::DestroyAll(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(result + 16);
    v3 = &v2[v1];
    do
    {
      v4 = *(result + 16);
      v5 = *v2;
      if (*v2 == *(v4 + 8 * *(result + 24) - 8))
      {
        v7 = *result;
      }

      else
      {
        v6 = ((v2 - v4) >> 10) & 0x1FFFFFF;
        if (v6 >= 0x1E)
        {
          LOBYTE(v6) = 30;
        }

        v7 = v5 + (4096 << v6);
      }

      v8 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
      v9 = (v8 + 120);
      if (v8 + 120 <= v7)
      {
        v10 = *(v8 + 104);
        if (v9 != v10)
        {
          free(v10);
        }

        llvm::deallocate_buffer(*(v9 - 5), (24 * *(v9 - 6)));
      }

      ++v2;
    }

    while (v2 != v3);
  }

  v11 = *(result + 72);
  if (v11)
  {
    v12 = *(result + 64);
    v13 = &v12[2 * v11];
    do
    {
      v14 = (*v12 + 7) & 0xFFFFFFFFFFFFFFF8;
      v15 = (v14 + 120);
      if (v14 + 120 <= *v12 + v12[1])
      {
        v16 = *(v14 + 104);
        if (v15 != v16)
        {
          free(v16);
        }

        llvm::deallocate_buffer(*(v15 - 5), (24 * *(v15 - 6)));
      }

      v12 += 2;
    }

    while (v12 != v13);
    if (*(result + 72))
    {
      llvm::deallocate_buffer(**(result + 64), *(*(result + 64) + 8));
    }
  }

  *(result + 72) = 0;
  v17 = *(result + 24);
  if (v17)
  {
    *(result + 80) = 0;
    v18 = *(result + 16);
    v19 = *v18 + 4096;
    *result = *v18;
    *(result + 8) = v19;
    if (v17 != 1)
    {
      v20 = ((v18 + 8 - *(result + 16)) >> 10) & 0x1FFFFFF;
      if (v20 >= 0x1E)
      {
        LOBYTE(v20) = 30;
      }

      llvm::deallocate_buffer(*(v18 + 8), (4096 << v20));
    }

    *(result + 24) = 1;
  }

  return result;
}

void mlir::BytecodeWriterConfig::Impl::~Impl(mlir::BytecodeWriterConfig::Impl *this)
{
  v2 = *(this + 23);
  v3 = *(this + 48);
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
    v2 = *(this + 23);
  }

  if (v2 != this + 200)
  {
    free(v2);
  }

  v7 = *(this + 15);
  v8 = *(this + 32);
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
    v7 = *(this + 15);
  }

  if (v7 != this + 136)
  {
    free(v7);
  }

  v12 = *(this + 7);
  v13 = *(this + 16);
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
    v12 = *(this + 7);
  }

  if (v12 != this + 72)
  {
    free(v12);
  }

  if (*(this + 7))
  {
    v17 = *(this + 6);
    if (v17)
    {
      v18 = 0;
      do
      {
        v19 = *(*(this + 2) + v18);
        if (v19 != -8 && v19 != 0)
        {
          v22 = *v19;
          v21 = *(v19 + 1);
          *(v19 + 1) = 0;
          if (v21)
          {
            (*(*v21 + 8))(v21);
          }

          llvm::deallocate_buffer(v19, (v22 + 17));
        }

        v18 += 8;
      }

      while (8 * v17 != v18);
    }
  }

  free(*(this + 2));
}

uint64_t *llvm::StringMap<std::unique_ptr<mlir::DialectVersion>,llvm::MallocAllocator>::try_emplace_with_hash<std::unique_ptr<mlir::DialectVersion>>(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4, uint64_t *a5)
{
  v9 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v10 = (*a1 + 8 * v9);
  v11 = *v10;
  if (*v10 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer(a3 + 17, 8uLL);
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

    buffer = llvm::allocate_buffer(a3 + 17, 8uLL);
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

mlir::bytecode::detail::IRNumberingState *mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::bytecode::detail::IRNumberingState *this, mlir::Operation *a2, const mlir::BytecodeWriterConfig *a3)
{
  v180[16] = *MEMORY[0x277D85DE8];
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
  LODWORD(v175) = 0;
  v178 = v180;
  v179 = 0x200000000;
  *&v172 = &v178;
  *(&v172 + 1) = this;
  v173 = &v175;
  mlir::detail::walk(a2, llvm::function_ref<void ()(mlir::Operation *,mlir::WalkStage const&)>::callback_fn<mlir::bytecode::detail::IRNumberingState::computeGlobalNumberingState(mlir::Operation *)::$_0>, &v172);
  if (v178 != v180)
  {
    free(v178);
  }

  mlir::bytecode::detail::IRNumberingState::number(this, a2);
  v178 = v180;
  v179 = 0x800000000;
  v171 = a2;
  v6 = *(a2 + 11);
  v7 = v6 & 0x7FFFFF;
  if ((v6 & 0x7FFFFF) == 0)
  {
    goto LABEL_66;
  }

  v8 = ((a2 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10);
  *&v172 = v171;
  v9 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](v5, &v172);
  if (*(*v9 + 5) & 1) != 0 && (*(*v9 + 4))
  {
    v10 = 0;
  }

  else
  {
    v10 = *(this + 232);
  }

  LODWORD(v175) = v10;
  v11 = 24 * v7;
  do
  {
    while (1)
    {
      *&v172 = v8;
      v12 = v179;
      if (v179 >= HIDWORD(v179))
      {
        break;
      }

      v13 = v178 + 16 * v179;
      *v13 = v8;
      *(v13 + 2) = v175;
      LODWORD(v179) = v12 + 1;
      v8 += 24;
      v11 -= 24;
      if (!v11)
      {
        goto LABEL_13;
      }
    }

    llvm::SmallVectorTemplateBase<std::pair<mlir::Region *,unsigned int>,true>::growAndEmplaceBack<mlir::Region *,unsigned int &>(&v178, &v172, &v175);
    v8 += 24;
    v11 -= 24;
  }

  while (v11);
LABEL_13:
  v14 = v179;
  if (!v179)
  {
    goto LABEL_66;
  }

  while (2)
  {
    v15 = v178 + 16 * v14;
    v17 = *(v15 - 2);
    v16 = *(v15 - 1);
    LODWORD(v179) = v14 - 1;
    *(this + 232) = v16;
    mlir::bytecode::detail::IRNumberingState::number(this, v17);
    mlir::Region::OpIterator::OpIterator(&v175, v17, 0);
    mlir::Region::OpIterator::OpIterator(v174, v17, 1);
    v18 = v176;
    v173 = v176;
    v172 = v175;
    v19 = v174[2];
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
        goto LABEL_48;
      }

      v24 = *(this + 3);
      v25 = v23 - 1;
      v26 = (v23 - 1) & ((ValuePtr >> 4) ^ (ValuePtr >> 9));
      v27 = (v24 + 16 * v26);
      v28 = *v27;
      if (ValuePtr == *v27)
      {
        goto LABEL_36;
      }

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

      v40 = *(this + 8);
      if (4 * v40 + 4 >= 3 * v23)
      {
LABEL_48:
        v41 = ValuePtr;
        llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::grow(v5, 2 * v23);
        v42 = *(this + 10);
        if (v42)
        {
LABEL_49:
          v43 = *(this + 3);
          ValuePtr = v41;
          v44 = v42 - 1;
          v45 = (v42 - 1) & ((v41 >> 4) ^ (v41 >> 9));
          v27 = (v43 + 16 * v45);
          v46 = *v27;
          if (v41 != *v27)
          {
            v47 = 0;
            v48 = 1;
            while (v46 != -4096)
            {
              if (v47)
              {
                v49 = 0;
              }

              else
              {
                v49 = v46 == -8192;
              }

              if (v49)
              {
                v47 = v27;
              }

              v50 = v45 + v48++;
              v45 = v50 & v44;
              v27 = (v43 + 16 * (v50 & v44));
              v46 = *v27;
              if (v41 == *v27)
              {
                goto LABEL_61;
              }
            }

            if (v47)
            {
              v27 = v47;
            }
          }

LABEL_61:
          ++*(this + 8);
          if (*v27 == -4096)
          {
            goto LABEL_35;
          }

LABEL_34:
          --*(this + 9);
          goto LABEL_35;
        }

LABEL_60:
        v27 = 0;
        ValuePtr = v41;
        goto LABEL_61;
      }

      if (v23 + ~v40 - *(this + 9) <= v23 >> 3)
      {
        v41 = ValuePtr;
        llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::grow(v5, v23);
        v42 = *(this + 10);
        if (v42)
        {
          goto LABEL_49;
        }

        goto LABEL_60;
      }

      *(this + 8) = v40 + 1;
      if (*v27 != -4096)
      {
        goto LABEL_34;
      }

LABEL_35:
      *v27 = ValuePtr;
      v27[1] = 0;
LABEL_36:
      v33 = v27[1];
      if (*(v33 + 5) == 1 && (*(v33 + 4) & 1) != 0)
      {
        v34 = 0;
      }

      else
      {
        v34 = *(this + 232);
      }

      v35 = ValuePtr + 16 * ((v21 >> 23) & 1) + ((v21 >> 21) & 0x7F8) + 32 * v22 + 64;
      v36 = v179;
      v37 = 24 * (v21 & 0x7FFFFF);
      v38 = v35;
      do
      {
        if (v36 >= HIDWORD(v179))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v39 = v178 + 16 * v36;
        *v39 = v38;
        *(v39 + 2) = v34;
        LODWORD(v179) = ++v36;
        v38 += 24;
        v35 += 24;
        v37 -= 24;
      }

      while (v37);
LABEL_17:
      mlir::Region::OpIterator::operator++(&v175);
      v18 = v176;
    }

    v14 = v179;
    if (v179)
    {
      continue;
    }

    break;
  }

LABEL_66:
  v51 = *(this + 38);
  if (v51)
  {
    v52 = *(this + 18);
    v53 = 24 * v51 - 24;
    if (v53 <= 0x17)
    {
      LODWORD(v54) = 0;
      v55 = *(this + 18);
      goto LABEL_72;
    }

    v56 = 0;
    v57 = v53 / 0x18 + 1;
    v54 = v57 & 0x1FFFFFFFFFFFFFFELL;
    v55 = v52 + 24 * (v57 & 0x1FFFFFFFFFFFFFFELL);
    v58 = (v52 + 40);
    do
    {
      v59 = *(v58 - 3);
      v60 = *v58;
      v58 += 6;
      *(v59 + 16) = v56;
      *(v60 + 16) = v56 + 1;
      v56 += 2;
    }

    while (v54 != v56);
    if (v57 != v54)
    {
LABEL_72:
      v61 = v52 + 24 * v51;
      do
      {
        *(*(v55 + 16) + 16) = v54;
        LODWORD(v54) = v54 + 1;
        v55 += 24;
      }

      while (v55 != v61);
    }
  }

  v62 = *(this + 20);
  v63 = *(this + 21);
  if (&v63[-v62] >> 3 < 129)
  {
    v67 = 0;
LABEL_80:
    std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(v62, v63, &v63[-v62] >> 3, 0, v67);
    v69 = *(this + 23);
    v70 = *(this + 24);
    v71 = &v70[-v69] >> 3;
    if (v71 >= 129)
    {
      goto LABEL_81;
    }

LABEL_86:
    v75 = 0;
LABEL_87:
    std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::OpNameNumbering **>>(v69, v70, v71, 0, v75);
    v77 = *(this + 26);
    v78 = *(this + 27);
    v79 = &v78[-v77] >> 3;
    if (v79 >= 129)
    {
      goto LABEL_88;
    }

LABEL_93:
    v83 = 0;
LABEL_94:
    v85.n128_f64[0] = std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::TypeNumbering **>>(v77, v78, v79, 0, v83);
    v87 = *(this + 20);
    v86 = *(this + 21);
    v88 = v86 - v87;
    v89 = v171;
    if (v86 == v87)
    {
      goto LABEL_117;
    }
  }

  else
  {
    v64 = MEMORY[0x277D826F0];
    v65 = &v63[-v62] >> 3;
    while (1)
    {
      v66 = operator new(8 * v65, v64);
      if (v66)
      {
        break;
      }

      v67 = v65 >> 1;
      v68 = v65 > 1;
      v65 >>= 1;
      if (!v68)
      {
        goto LABEL_80;
      }
    }

    v76 = v66;
    std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(v62, v63, &v63[-v62] >> 3, v66, v65);
    operator delete(v76);
    v69 = *(this + 23);
    v70 = *(this + 24);
    v71 = &v70[-v69] >> 3;
    if (v71 < 129)
    {
      goto LABEL_86;
    }

LABEL_81:
    v72 = MEMORY[0x277D826F0];
    v73 = v71;
    while (1)
    {
      v74 = operator new(8 * v73, v72);
      if (v74)
      {
        break;
      }

      v75 = v73 >> 1;
      v68 = v73 > 1;
      v73 >>= 1;
      if (!v68)
      {
        goto LABEL_87;
      }
    }

    v84 = v74;
    std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::OpNameNumbering **>>(v69, v70, v71, v74, v73);
    operator delete(v84);
    v77 = *(this + 26);
    v78 = *(this + 27);
    v79 = &v78[-v77] >> 3;
    if (v79 < 129)
    {
      goto LABEL_93;
    }

LABEL_88:
    v80 = MEMORY[0x277D826F0];
    v81 = v79;
    while (1)
    {
      v82 = operator new(8 * v81, v80);
      if (v82)
      {
        break;
      }

      v83 = v81 >> 1;
      v68 = v81 > 1;
      v81 >>= 1;
      if (!v68)
      {
        goto LABEL_94;
      }
    }

    v90 = v82;
    std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::TypeNumbering **>>(v77, v78, v79, v82, v81);
    operator delete(v90);
    v87 = *(this + 20);
    v86 = *(this + 21);
    v88 = v86 - v87;
    v89 = v171;
    if (v86 == v87)
    {
      goto LABEL_117;
    }
  }

  v168 = v86;
  v91 = 0;
  v162 = v88;
  v92 = v88 >> 3;
  LODWORD(v175) = 0;
  v93 = MEMORY[0x277D826F0];
  v94 = 1;
  v165 = v87;
  v95 = v87;
  while (2)
  {
    v91 = (1 << (7 * v94)) - v91;
    if (v92 >= v91)
    {
      v96 = v91;
    }

    else
    {
      v96 = v92;
    }

    v97 = &v95->n128_i8[8 * v96];
    *&v172 = &v177;
    *(&v172 + 1) = &v175;
    if (v96 >= 129)
    {
      v98 = v96;
      while (1)
      {
        v99 = operator new(8 * v98, v93);
        if (v99)
        {
          break;
        }

        v100 = v98 >> 1;
        v68 = v98 > 1;
        v98 >>= 1;
        if (!v68)
        {
          goto LABEL_107;
        }
      }

      v101 = v99;
      _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail18AttributeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(v95, (v95 + 8 * v96), &v172, v96, v99, v98);
      operator delete(v101);
      LODWORD(v175) = *(*(*(v97 - 1) + 16) + 16);
      v92 -= v96;
      if (!v92)
      {
        break;
      }

      goto LABEL_110;
    }

    v100 = 0;
LABEL_107:
    _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail18AttributeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(v95, (v95 + 8 * v96), &v172, v96, 0, v100);
    LODWORD(v175) = *(*(*(v97 - 1) + 16) + 16);
    v92 -= v96;
    if (v92)
    {
LABEL_110:
      ++v94;
      v95 = (v95 + 8 * v96);
      if (v94 == 9)
      {
        break;
      }

      continue;
    }

    break;
  }

  if ((v162 - 8) <= 7)
  {
    LODWORD(v102) = 0;
    v103 = v165;
    v104 = v168;
    v89 = v171;
    goto LABEL_116;
  }

  v105 = 0;
  v106 = ((v162 - 8) >> 3) + 1;
  v102 = v106 & 0x3FFFFFFFFFFFFFFELL;
  v104 = v168;
  v103 = (v165 + 8 * (v106 & 0x3FFFFFFFFFFFFFFELL));
  v107 = &v165->n128_u64[1];
  v89 = v171;
  do
  {
    v108 = *v107;
    *(*(v107 - 1) + 8) = v105;
    *(v108 + 8) = v105 + 1;
    v105 += 2;
    v107 += 2;
  }

  while (v102 != v105);
  if (v106 != v102)
  {
    do
    {
LABEL_116:
      v109 = v103->n128_u64[0];
      v103 = (v103 + 8);
      *(v109 + 8) = v102;
      LODWORD(v102) = v102 + 1;
    }

    while (v103 != v104);
  }

LABEL_117:
  v111 = *(this + 23);
  v110 = *(this + 24);
  if (v110 == v111)
  {
    goto LABEL_138;
  }

  v169 = *(this + 24);
  v112 = 0;
  v163 = v110 - v111;
  v113 = (v110 - v111) >> 3;
  LODWORD(v175) = 0;
  v114 = MEMORY[0x277D826F0];
  v115 = 1;
  v166 = v111;
  v116 = v111;
  while (2)
  {
    v112 = (1 << (7 * v115)) - v112;
    if (v113 >= v112)
    {
      v117 = v112;
    }

    else
    {
      v117 = v113;
    }

    v118 = &v116->n128_i8[8 * v117];
    *&v172 = &v177;
    *(&v172 + 1) = &v175;
    if (v117 >= 129)
    {
      v119 = v117;
      while (1)
      {
        v120 = operator new(8 * v119, v114);
        if (v120)
        {
          break;
        }

        v121 = v119 >> 1;
        v68 = v119 > 1;
        v119 >>= 1;
        if (!v68)
        {
          goto LABEL_128;
        }
      }

      v122 = v120;
      _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail15OpNameNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(v116, (v116 + 8 * v117), &v172, v117, v120, v119);
      operator delete(v122);
      LODWORD(v175) = *(**(v118 - 1) + 16);
      v113 -= v117;
      if (!v113)
      {
        break;
      }

      goto LABEL_131;
    }

    v121 = 0;
LABEL_128:
    _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail15OpNameNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(v116, (v116 + 8 * v117), &v172, v117, 0, v121);
    LODWORD(v175) = *(**(v118 - 1) + 16);
    v113 -= v117;
    if (v113)
    {
LABEL_131:
      ++v115;
      v116 = (v116 + 8 * v117);
      if (v115 == 9)
      {
        break;
      }

      continue;
    }

    break;
  }

  if ((v163 - 8) <= 7)
  {
    LODWORD(v123) = 0;
    v124 = v166;
    v125 = v169;
    v89 = v171;
    goto LABEL_137;
  }

  v126 = 0;
  v127 = ((v163 - 8) >> 3) + 1;
  v123 = v127 & 0x3FFFFFFFFFFFFFFELL;
  v125 = v169;
  v124 = (v166 + 8 * (v127 & 0x3FFFFFFFFFFFFFFELL));
  v128 = &v166->n128_u64[1];
  v89 = v171;
  do
  {
    v129 = *v128;
    *(*(v128 - 1) + 16) = v126;
    *(v129 + 16) = v126 + 1;
    v126 += 2;
    v128 += 2;
  }

  while (v123 != v126);
  if (v127 != v123)
  {
    do
    {
LABEL_137:
      v130 = v124->n128_u64[0];
      v124 = (v124 + 8);
      *(v130 + 16) = v123;
      LODWORD(v123) = v123 + 1;
    }

    while (v124 != v125);
  }

LABEL_138:
  v132 = *(this + 26);
  v131 = *(this + 27);
  if (v131 == v132)
  {
    goto LABEL_159;
  }

  v170 = *(this + 27);
  v133 = 0;
  v164 = v131 - v132;
  v134 = (v131 - v132) >> 3;
  LODWORD(v175) = 0;
  v135 = MEMORY[0x277D826F0];
  v136 = 1;
  v167 = v132;
  v137 = v132;
  while (2)
  {
    v133 = (1 << (7 * v136)) - v133;
    if (v134 >= v133)
    {
      v138 = v133;
    }

    else
    {
      v138 = v134;
    }

    v139 = &v137->n128_i8[8 * v138];
    *&v172 = &v177;
    *(&v172 + 1) = &v175;
    if (v138 >= 129)
    {
      v140 = v138;
      while (1)
      {
        v141 = operator new(8 * v140, v135);
        if (v141)
        {
          break;
        }

        v142 = v140 >> 1;
        v68 = v140 > 1;
        v140 >>= 1;
        if (!v68)
        {
          goto LABEL_149;
        }
      }

      v143 = v141;
      _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail13TypeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(v137, (v137 + 8 * v138), &v172, v138, v141, v140);
      operator delete(v143);
      LODWORD(v175) = *(*(*(v139 - 1) + 16) + 16);
      v134 -= v138;
      if (!v134)
      {
        break;
      }

      goto LABEL_152;
    }

    v142 = 0;
LABEL_149:
    _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail13TypeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(v137, (v137 + 8 * v138), &v172, v138, 0, v142);
    LODWORD(v175) = *(*(*(v139 - 1) + 16) + 16);
    v134 -= v138;
    if (v134)
    {
LABEL_152:
      ++v136;
      v137 = (v137 + 8 * v138);
      if (v136 == 9)
      {
        break;
      }

      continue;
    }

    break;
  }

  if ((v164 - 8) <= 7)
  {
    LODWORD(v144) = 0;
    v145 = v167;
    v146 = v170;
    v89 = v171;
    goto LABEL_158;
  }

  v147 = 0;
  v148 = ((v164 - 8) >> 3) + 1;
  v144 = v148 & 0x3FFFFFFFFFFFFFFELL;
  v146 = v170;
  v145 = (v167 + 8 * (v148 & 0x3FFFFFFFFFFFFFFELL));
  v149 = &v167->n128_u64[1];
  v89 = v171;
  do
  {
    v150 = *v149;
    *(*(v149 - 1) + 8) = v147;
    *(v150 + 8) = v147 + 1;
    v147 += 2;
    v149 += 2;
  }

  while (v144 != v147);
  if (v148 != v144)
  {
    do
    {
LABEL_158:
      v151 = v145->n128_u64[0];
      v145 = (v145 + 8);
      *(v151 + 8) = v144;
      LODWORD(v144) = v144 + 1;
    }

    while (v145 != v146);
  }

LABEL_159:
  LODWORD(v175) = 0;
  v152 = *(this + 38);
  if (v152)
  {
    v153 = *(this + 18);
    v154 = v153 + 24 * v152;
    do
    {
      v155 = *(v153 + 16);
      v156 = *(v155 + 32);
      if (v156)
      {
        *&v172 = &unk_286864878;
        *(&v172 + 1) = v155;
        v173 = &v175;
        (*(*v156 + 56))(v156, v89, v155 + 40, &v172, v85);
        v157 = *(v155 + 112);
        if (v157)
        {
          v158 = v175;
          v159 = 24 * v157;
          v160 = *(v155 + 104) + 16;
          do
          {
            if (*(*v160 + 28) == 1)
            {
              *(*v160 + 24) = v158++;
              LODWORD(v175) = v158;
            }

            v160 += 24;
            v159 -= 24;
          }

          while (v159);
        }

        mlir::AsmResourceBuilder::~AsmResourceBuilder(&v172);
      }

      v153 += 24;
    }

    while (v153 != v154);
  }

  if (v178 != v180)
  {
    free(v178);
  }

  return this;
}

void mlir::bytecode::detail::IRNumberingState::computeGlobalNumberingState(mlir::bytecode::detail::IRNumberingState *this, mlir::Operation *a2)
{
  v5[6] = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4[0] = v5;
  v4[1] = 0x200000000;
  v2[0] = v4;
  v2[1] = this;
  v2[2] = &v3;
  mlir::detail::walk(a2, llvm::function_ref<void ()(mlir::Operation *,mlir::WalkStage const&)>::callback_fn<mlir::bytecode::detail::IRNumberingState::computeGlobalNumberingState(mlir::Operation *)::$_0>, v2);
  if (v4[0] != v5)
  {
    free(v4[0]);
  }
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
      llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::try_emplace<unsigned int>(this + 856, v11, &AttrDictionary, v13);
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
      InterfaceFor = mlir::OpInterface<mlir::BytecodeOpInterface,mlir::detail::BytecodeOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
      v11[0] = a2;
      v11[1] = InterfaceFor;
      DialectVersionMap = mlir::BytecodeWriterConfig::getDialectVersionMap(*(this + 117));
      v13[0] = &unk_2868647D8;
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
        llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::try_emplace<unsigned long>((v5 + 208), &v13, &v12, v11);
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
    return llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,std::pair<unsigned int,unsigned int>>>,mlir::Region *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,std::pair<unsigned int,unsigned int>>>::try_emplace<unsigned long &,unsigned long>((v5 + 226), &v13, v14, &v12, v11);
  }

  return this;
}

void mlir::bytecode::detail::IRNumberingState::finalizeDialectResourceNumberings(mlir::bytecode::detail::IRNumberingState *this, mlir::Operation *a2)
{
  v13 = 0;
  v2 = *(this + 38);
  if (v2)
  {
    v4 = *(this + 18);
    v5 = v4 + 24 * v2;
    do
    {
      v6 = *(v4 + 16);
      v7 = *(v6 + 32);
      if (v7)
      {
        v12[0] = &unk_286864878;
        v12[1] = v6;
        v12[2] = &v13;
        (*(*v7 + 56))(v7, a2, v6 + 40, v12);
        v8 = *(v6 + 112);
        if (v8)
        {
          v9 = v13;
          v10 = *(v6 + 104) + 16;
          v11 = 24 * v8;
          do
          {
            if (*(*v10 + 28) == 1)
            {
              *(*v10 + 24) = v9++;
              v13 = v9;
            }

            v10 += 24;
            v11 -= 24;
          }

          while (v11);
        }

        mlir::AsmResourceBuilder::~AsmResourceBuilder(v12);
      }

      v4 += 24;
    }

    while (v4 != v5);
  }
}

void mlir::bytecode::detail::IRNumberingState::number(uint64_t a1, uint64_t **a2)
{
  v50 = a2;
  v39 = a2;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::try_emplace<mlir::DialectVersion const* const&>(a1, &v39, &v39 + 1, &v48);
  if ((v49 & 1) == 0)
  {
    ++*(*(v48 + 8) + 12);
    return;
  }

  *(a1 + 336) += 24;
  v4 = *(a1 + 256);
  Slow = ((v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = Slow + 3;
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
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1 + 256, 24, 24, 3);
  }

  else
  {
    *(a1 + 256) = v6;
  }

  *Slow = a2 & 0xFFFFFFFFFFFFFFFBLL;
  Slow[1] = 0x100000000;
  Slow[2] = 0;
  v47 = Slow;
  *(v48 + 8) = Slow;
  std::vector<mlir::Operation *>::push_back[abi:nn200100](a1 + 160, &v47);
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
    v30 = llvm::MapVector<llvm::StringRef,mlir::bytecode::detail::DialectNumbering *,llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::SmallVector<std::pair<llvm::StringRef,mlir::bytecode::detail::DialectNumbering *>,0u>>::operator[](a1 + 120, &v39);
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
      v31 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1 + 352, 120, 120, 3);
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
  {
    mlir::writeBytecodeToFile();
  }

  v14 = v13 + 9;
  v15 = v13[12];
  if ((v15 & 2) == 0)
  {
    v14 = *v14;
  }

  if ((*(v15 & 0xFFFFFFFFFFFFFFF8))(v14, mlir::detail::TypeIDResolver<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::AttributeTrait::IsMutable>(void)::Empty>,void>::resolveTypeID(void)::id))
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
    *&v39 = &unk_2868A4198;
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
      *&v39 = &unk_2868647D8;
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
    *&v39 = &unk_2868647D8;
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
    v30 = llvm::MapVector<llvm::StringRef,mlir::bytecode::detail::DialectNumbering *,llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::SmallVector<std::pair<llvm::StringRef,mlir::bytecode::detail::DialectNumbering *>,0u>>::operator[](a1 + 120, &v51);
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
      v31 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1 + 352, 120, 120, 3);
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
  llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::try_emplace<mlir::DialectVersion const* const&>(a1 + 72, &v37, &v37 + 1, &v46);
  if ((v47 & 1) == 0)
  {
    ++*(*(v46 + 8) + 12);
    return;
  }

  *(a1 + 816) += 24;
  v4 = *(a1 + 736);
  if (v4 && (Slow = ((v4 + 7) & 0xFFFFFFFFFFFFFFF8), (Slow + 3) <= *(a1 + 744)))
  {
    *(a1 + 736) = Slow + 3;
  }

  else
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1 + 736, 24, 24, 3);
  }

  *Slow = a2 | 4;
  Slow[1] = 0x100000000;
  Slow[2] = 0;
  v45 = Slow;
  *(v46 + 8) = Slow;
  std::vector<mlir::Operation *>::push_back[abi:nn200100](a1 + 208, &v45);
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
    v28 = llvm::MapVector<llvm::StringRef,mlir::bytecode::detail::DialectNumbering *,llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::SmallVector<std::pair<llvm::StringRef,mlir::bytecode::detail::DialectNumbering *>,0u>>::operator[](a1 + 120, &v37);
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
      v29 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1 + 352, 120, 120, 3);
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
  {
    mlir::writeBytecodeToFile();
  }

  v12 = v11 + 9;
  v13 = v11[12];
  if ((v13 & 2) == 0)
  {
    v12 = *v12;
  }

  if ((*(v13 & 0xFFFFFFFFFFFFFFF8))(v12, mlir::detail::TypeIDResolver<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::TypeTrait::IsMutable>(void)::Empty>,void>::resolveTypeID(void)::id))
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
    *&v37 = &unk_2868A4198;
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
      *&v37 = &unk_2868647D8;
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
    *&v37 = &unk_2868647D8;
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
    v28 = llvm::MapVector<llvm::StringRef,mlir::bytecode::detail::DialectNumbering *,llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::SmallVector<std::pair<llvm::StringRef,mlir::bytecode::detail::DialectNumbering *>,0u>>::operator[](a1 + 120, &v49);
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
      v29 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1 + 352, 120, 120, 3);
      v28 = v36;
    }

    v31 = *(a1 + 152) - 1;
    v32 = v49;
    goto LABEL_33;
  }
}

unint64_t mlir::bytecode::detail::IRNumberingState::numberDialect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v12 = a2;
  *(&v12 + 1) = a3;
  v4 = llvm::MapVector<llvm::StringRef,mlir::bytecode::detail::DialectNumbering *,llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::SmallVector<std::pair<llvm::StringRef,mlir::bytecode::detail::DialectNumbering *>,0u>>::operator[](a1 + 120, &v12);
  if (*v4)
  {
    return *v4;
  }

  *(a1 + 432) += 120;
  v6 = *(a1 + 352);
  Slow = (v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = Slow + 120;
  if (v6)
  {
    v9 = v8 > *(a1 + 360);
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v11 = v4;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1 + 352, 120, 120, 3);
    v4 = v11;
  }

  else
  {
    *(a1 + 352) = v8;
  }

  v10 = *(a1 + 152) - 1;
  *Slow = v12;
  *(Slow + 16) = v10;
  *(Slow + 24) = 0u;
  *(Slow + 40) = 0u;
  *(Slow + 56) = 0;
  *(Slow + 80) = 0;
  *(Slow + 64) = Slow + 80;
  *(Slow + 72) = 0;
  *(Slow + 88) = 0;
  *(Slow + 96) = 0;
  *(Slow + 104) = Slow + 120;
  *(Slow + 112) = 0;
  *v4 = Slow;
  return Slow;
}

uint64_t mlir::bytecode::detail::IRNumberingState::numberDialect(mlir::bytecode::detail::IRNumberingState *this, mlir::Dialect *a2)
{
  v14 = a2;
  v3 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](this + 96, &v14);
  result = *v3;
  if (!*v3)
  {
    v15 = *(v14 + 8);
    v5 = llvm::MapVector<llvm::StringRef,mlir::bytecode::detail::DialectNumbering *,llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::SmallVector<std::pair<llvm::StringRef,mlir::bytecode::detail::DialectNumbering *>,0u>>::operator[](this + 120, &v15);
    Slow = *v5;
    if (!*v5)
    {
      *(this + 54) += 120;
      v7 = *(this + 44);
      if (v7 && (Slow = (v7 + 7) & 0xFFFFFFFFFFFFFFF8, Slow + 120 <= *(this + 45)))
      {
        *(this + 44) = Slow + 120;
      }

      else
      {
        v13 = v5;
        Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(this + 352, 120, 120, 3);
        v5 = v13;
      }

      v8 = *(this + 38) - 1;
      *Slow = v15;
      *(Slow + 16) = v8;
      *(Slow + 24) = 0u;
      *(Slow + 40) = 0u;
      *(Slow + 56) = 0;
      *(Slow + 80) = 0;
      *(Slow + 64) = Slow + 80;
      *(Slow + 72) = 0;
      *(Slow + 88) = 0;
      *(Slow + 96) = 0;
      *(Slow + 104) = Slow + 120;
      *(Slow + 112) = 0;
      *v5 = Slow;
    }

    *v3 = Slow;
    v9 = v14;
    v10 = mlir::Dialect::getRegisteredInterface<mlir::mps::MPSBytecodeDialectInterface>(v14);
    if (v10)
    {
      v10 = mlir::Dialect::getRegisteredInterface<mlir::mps::MPSBytecodeDialectInterface>(v9);
    }

    *(*v3 + 24) = v10;
    v11 = v14;
    if (mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(v14))
    {
      v12 = mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(v11);
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
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>,mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>::try_emplace<llvm::detail::DenseSetEmpty&>(v8 + 40, v10, v31);
      if (v32 != 1)
      {
        break;
      }

      v12 = *(v8 + 72);
      v13 = *(v8 + 64);
      if (v12 >= *(v8 + 76))
      {
        if (v13 > v10 || v13 + 24 * v12 <= v10)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v14 = v13 + 24 * *(v8 + 72);
      v15 = *v10;
      *(v14 + 16) = v10[2];
      *v14 = v15;
      ++*(v8 + 72);
      *(a1 + 90) += 32;
      v16 = *(a1 + 80);
      if (v16 && (Slow = (v16 + 7) & 0xFFFFFFFFFFFFFFF8, Slow + 32 <= *(a1 + 81)))
      {
        *(a1 + 80) = Slow + 32;
      }

      else
      {
        Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1 + 640, 32, 32, 3);
      }

      (*(**(v8 + 32) + 40))(&v25);
      v18 = v25;
      *(Slow + 16) = v26;
      *Slow = v18;
      v26 = 0;
      v25 = 0uLL;
      *(Slow + 24) = 0;
      *(Slow + 28) = 1;
      v19 = *(Slow + 23);
      v27 = Slow;
      v20 = *Slow;
      if (v19 >= 0)
      {
        v20 = Slow;
      }

      if (v19 < 0)
      {
        v19 = *(Slow + 8);
      }

      *&v23 = v20;
      *(&v23 + 1) = v19;
      v24 = Slow;
      v29 = v23;
      v30 = 0;
      llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::try_emplace<unsigned int const&>(v8 + 80, &v29, &v30, v31);
      if (v32 == 1)
      {
        v21 = *(v8 + 112);
        *(v31[0] + 16) = v21;
        v28 = &v24;
        *&v29 = &v23;
        if (v21 < *(v8 + 116))
        {
          v11 = *(v8 + 104) + 24 * v21;
          *v11 = v23;
          *(v11 + 16) = v24;
          ++*(v8 + 112);
        }

        else
        {
          llvm::SmallVectorTemplateBase<std::pair<llvm::CachedHashStringRef,unsigned long>,true>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<llvm::CachedHashStringRef&&>,std::tuple<unsigned long &&>>(v8 + 104, &std::piecewise_construct, &v29, &v28);
        }
      }

      result = llvm::DenseMapBase<llvm::DenseMap<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>,mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>::try_emplace<mlir::bytecode::detail::DialectResourceNumbering *&>(a1 + 232, v10, &v27, v31);
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
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::try_emplace<unsigned int>(this + 856, &v15, &v14, v13);
    mlir::bytecode::detail::IRNumberingState::number(this, *(v15 + 32));
    mlir::bytecode::detail::IRNumberingState::number(this, (*(v15 + 8) & 0xFFFFFFFFFFFFFFF8));
  }

  v13[0] = a2;
  v8 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::operator[](this + 880, v13);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::try_emplace<unsigned int>@<X0>(uint64_t result@<X0>, void *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
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
    llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::grow(result, v5);
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

uint64_t llvm::MapVector<llvm::StringRef,mlir::bytecode::detail::DialectNumbering *,llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::SmallVector<std::pair<llvm::StringRef,mlir::bytecode::detail::DialectNumbering *>,0u>>::operator[](uint64_t a1, __int128 *a2)
{
  v15 = *a2;
  v16[0] = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::try_emplace<unsigned int const&>(a1, &v15, v16, &v13);
  v4 = v13;
  if (v14)
  {
    v5 = *(a1 + 24);
    v11 = *a2;
    v12 = 0;
    v6 = *(a1 + 32);
    if (v6 >= *(a1 + 36))
    {
      if (v5 > &v11 || v5 + 24 * v6 <= &v11)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v7 = v5 + 24 * *(a1 + 32);
    v8 = v11;
    *(v7 + 16) = v12;
    *v7 = v8;
    v9 = *(a1 + 32);
    *(a1 + 32) = v9 + 1;
    *(v4 + 16) = v9;
  }

  else
  {
    v9 = *(v13 + 16);
  }

  return *(a1 + 24) + 24 * v9 + 16;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::try_emplace<unsigned long>@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
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
    llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::grow(result, v5);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,std::pair<unsigned int,unsigned int>>>,mlir::Region *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,std::pair<unsigned int,unsigned int>>>::try_emplace<unsigned long &,unsigned long>@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
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
    llvm::DenseMap<mlir::Region *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,std::pair<unsigned int,unsigned int>>>::grow(result, v6);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::LookupBucketFor<mlir::Dialect const*>(v19, a2, &v23);
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
  v3 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](a1 + 48, &v16);
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
    v8 = llvm::MapVector<llvm::StringRef,mlir::bytecode::detail::DialectNumbering *,llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::SmallVector<std::pair<llvm::StringRef,mlir::bytecode::detail::DialectNumbering *>,0u>>::operator[](a1 + 120, &v17);
    Slow = *v8;
    if (!*v8)
    {
      *(a1 + 432) += 120;
      v9 = *(a1 + 352);
      if (v9 && (Slow = (v9 + 7) & 0xFFFFFFFFFFFFFFF8, (Slow + 120) <= *(a1 + 360)))
      {
        *(a1 + 352) = Slow + 120;
      }

      else
      {
        v15 = v8;
        Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1 + 352, 120, 120, 3);
        v8 = v15;
      }

      v10 = *(a1 + 152) - 1;
      *Slow = v17;
      *(Slow + 16) = v10;
      *(Slow + 24) = 0u;
      *(Slow + 40) = 0u;
      *(Slow + 56) = 0;
      *(Slow + 80) = 0;
      *(Slow + 64) = Slow + 80;
      *(Slow + 72) = 0;
      *(Slow + 88) = 0;
      *(Slow + 96) = 0;
      *(Slow + 104) = Slow + 120;
      *(Slow + 112) = 0;
      *v8 = Slow;
    }

    goto LABEL_12;
  }

  ReferencedDialect = *(v16 + 24);
  if (!ReferencedDialect)
  {
    goto LABEL_7;
  }

LABEL_5:
  Slow = mlir::bytecode::detail::IRNumberingState::numberDialect(a1, ReferencedDialect);
LABEL_12:
  *(a1 + 624) += 24;
  v11 = *(a1 + 544);
  if (v11 && (v12 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8), (v12 + 3) <= *(a1 + 552)))
  {
    *(a1 + 544) = v12 + 3;
  }

  else
  {
    v14 = Slow;
    v12 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1 + 544, 24, 24, 3);
    Slow = v14;
  }

  v13 = v16;
  *v12 = Slow;
  v12[1] = v13;
  v12[2] = 0x100000000;
  *v4 = v12;
  std::vector<mlir::Operation *>::push_back[abi:nn200100](a1 + 184, v4);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>,mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>::try_emplace<mlir::bytecode::detail::DialectResourceNumbering *&>@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
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
    llvm::DenseMap<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>,mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>::LookupBucketFor<mlir::AsmDialectResourceHandle>(v17, a2, &v20);
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

uint64_t llvm::SmallVectorTemplateBase<std::pair<mlir::Region *,unsigned int>,true>::growAndEmplaceBack<mlir::Region *,unsigned int &>(uint64_t a1, void *a2, unsigned int *a3)
{
  v3 = *a3;
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = (*a1 + 16 * v4);
  *v5 = *a2;
  v5[1] = v3;
  LODWORD(v5) = *(a1 + 8) + 1;
  *(a1 + 8) = v5;
  return *a1 + 16 * v5 - 16;
}

void mlir::bytecode::detail::IRNumberingState::NumberingDialectWriter::writeOptionalAttribute(uint64_t a1, uint64_t **a2)
{
  if (a2)
  {
    mlir::bytecode::detail::IRNumberingState::number(*(a1 + 8), a2);
  }
}

uint64_t mlir::bytecode::detail::IRNumberingState::NumberingDialectWriter::getDialectVersion(uint64_t a1, unsigned int *a2, const unsigned __int8 *a3)
{
  v6 = *(a1 + 16);
  v7 = llvm::StringMapImpl::hash(a2, a3, a3);
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

uint64_t mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(uint64_t a1)
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
    mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>();
    a1 = v8;
    v1 = *(v8 + 64);
    if (!v1)
    {
      return 0;
    }
  }

  v2 = *(a1 + 48);
  v3 = ((mlir::detail::TypeIDResolver<mlir::OpAsmDialectInterface,void>::resolveTypeID(void)::id >> 4) ^ (mlir::detail::TypeIDResolver<mlir::OpAsmDialectInterface,void>::resolveTypeID(void)::id >> 9)) & (v1 - 1);
  v4 = *(v2 + 16 * v3);
  if (v4 != mlir::detail::TypeIDResolver<mlir::OpAsmDialectInterface,void>::resolveTypeID(void)::id)
  {
    v6 = 1;
    while (v4 != -4096)
    {
      v7 = v3 + v6++;
      v3 = v7 & (v1 - 1);
      v4 = *(v2 + 16 * v3);
      if (v4 == mlir::detail::TypeIDResolver<mlir::OpAsmDialectInterface,void>::resolveTypeID(void)::id)
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

const char *llvm::getTypeName<mlir::OpAsmDialectInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpAsmDialectInterface]";
  v6 = 77;
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

void anonymous namespace::NumberingResourceBuilder::~NumberingResourceBuilder(_anonymous_namespace_::NumberingResourceBuilder *this)
{
  mlir::AsmResourceBuilder::~AsmResourceBuilder(this);

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::NumberingResourceBuilder::buildBool(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[0] = a2;
  v12[1] = a3;
  v4 = *(a1 + 8);
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::doFind<llvm::StringRef>((v4 + 80), v12);
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

uint64_t anonymous namespace::NumberingResourceBuilder::buildString(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[0] = a2;
  v12[1] = a3;
  v4 = *(a1 + 8);
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::doFind<llvm::StringRef>((v4 + 80), v12);
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

uint64_t anonymous namespace::NumberingResourceBuilder::buildBlob(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[0] = a2;
  v12[1] = a3;
  v4 = *(a1 + 8);
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::doFind<llvm::StringRef>((v4 + 80), v12);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::doFind<llvm::StringRef>(uint64_t *a1, uint64_t a2)
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
      result = v3 + 24 * (HashValue & v6);
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
          result = v3 + 24 * (v15 & v6);
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
      result = v3 + 24 * (HashValue & v6);
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
          result = v3 + 24 * (v27 & v6);
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
    result = v3 + 24 * (HashValue & v6);
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
        result = v3 + 24 * (v19 & v6);
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
    result = v3 + 24 * (HashValue & v6);
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
        result = v3 + 24 * (v31 & v6);
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

double std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(uint64_t a1, char *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
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
        std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(a1, v19, a3 >> 1, a4);
        v26 = &a4[v16];
        std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(v20 + v17, a2, v18, v26);
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
        std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(a1, v19, a3 >> 1, a4, a5);
        std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(v20 + v17, a2, v18, a4, a5);

        v23.n128_u64[0] = std::__inplace_merge<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(v20, v20 + v17, a2, v16, v18, a4, a5).n128_u64[0];
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

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(uint64_t result, char *a2, uint64_t a3, uint64_t *a4)
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
      (std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>)();
      result = std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(v21, a2, a3 - v19, &v25[v20], a3 - v19);
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

__n128 std::__inplace_merge<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(__n128 *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
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
    v33 = std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(v17, a2, v16);
    v34 = v32;
    v35 = v33;
    if (v34 + v15 >= v31 - (v34 + v15) - v11)
    {
      a6 = __src;
      v37 = v34;
      std::__inplace_merge<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(v33, v16, v78, a4, v30, __src, v77);
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
      std::__inplace_merge<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(a1 + v10, v17, v33, v34, v15, __src, v77);
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

char *std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(char *__src, uint64_t a2, void *__dst)
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

double std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::OpNameNumbering **>>(uint64_t a1, char *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
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
        std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::OpNameNumbering **>>(a1, v19, a3 >> 1, a4);
        v26 = &a4[v16];
        std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::OpNameNumbering **>>(v20 + v17, a2, v18, v26);
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
        std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::OpNameNumbering **>>(a1, v19, a3 >> 1, a4, a5);
        std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::OpNameNumbering **>>(v20 + v17, a2, v18, a4, a5);

        v23.n128_u64[0] = std::__inplace_merge<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::OpNameNumbering **>>(v20, v20 + v17, a2, v16, v18, a4, a5).n128_u64[0];
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

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::OpNameNumbering **>>(uint64_t result, char *a2, uint64_t a3, uint64_t *a4)
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
      (std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::OpNameNumbering **>>)();
      result = std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::OpNameNumbering **>>(v21, a2, a3 - v19, &v25[v20], a3 - v19);
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

__n128 std::__inplace_merge<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::OpNameNumbering **>>(__n128 *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
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
    v33 = std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(v17, a2, v16);
    v34 = v32;
    v35 = v33;
    if (v34 + v15 >= v31 - (v34 + v15) - v11)
    {
      a6 = __src;
      v37 = v34;
      std::__inplace_merge<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::OpNameNumbering **>>(v33, v16, v78, a4, v30, __src, v77);
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
      std::__inplace_merge<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::OpNameNumbering **>>(a1 + v10, v17, v33, v34, v15, __src, v77);
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

double std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::TypeNumbering **>>(uint64_t a1, char *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
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
        std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::TypeNumbering **>>(a1, v19, a3 >> 1, a4);
        v26 = &a4[v16];
        std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::TypeNumbering **>>(v20 + v17, a2, v18, v26);
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
        std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::TypeNumbering **>>(a1, v19, a3 >> 1, a4, a5);
        std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::TypeNumbering **>>(v20 + v17, a2, v18, a4, a5);

        v23.n128_u64[0] = std::__inplace_merge<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(v20, v20 + v17, a2, v16, v18, a4, a5).n128_u64[0];
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

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::TypeNumbering **>>(uint64_t result, char *a2, uint64_t a3, uint64_t *a4)
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
      (std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::TypeNumbering **>>)();
      result = std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::TypeNumbering **>>(v21, a2, a3 - v19, &v25[v20], a3 - v19);
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

void _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail18AttributeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(__n128 *a1, __n128 *a2, uint64_t a3, unint64_t a4, __n128 *a5, uint64_t a6)
{
  if (a4 < 2)
  {
    return;
  }

  if (a4 == 2)
  {
    v6 = a2[-1].n128_u64[1];
    v7 = a1->n128_u64[0];
    v8 = **(a3 + 8);
    v9 = *(*(v6 + 16) + 16);
    v10 = *(*(a1->n128_u64[0] + 16) + 16);
    if (v9 == v8)
    {
      if (v10 == v8)
      {
        return;
      }
    }

    else if (v10 == v8 || v10 <= v9)
    {
      return;
    }

    a1->n128_u64[0] = v6;
    a2[-1].n128_u64[1] = v7;
    return;
  }

  if (a4 <= 128)
  {
    if (a1 == a2)
    {
      return;
    }

    v11 = &a1->n128_u64[1];
    if (&a1->n128_i8[8] == a2)
    {
      return;
    }

    v12 = 0;
    v13 = **(a3 + 8);
    v14 = a1;
    while (1)
    {
      v16 = v14;
      v14 = v11;
      v18 = v16->n128_u64[0];
      v17 = v16->n128_u64[1];
      v19 = *(*(v17 + 16) + 16);
      v20 = *(*(v16->n128_u64[0] + 16) + 16);
      if (v19 == v13)
      {
        if (v20 == v13)
        {
          goto LABEL_13;
        }

        v16->n128_u64[1] = v18;
        v21 = v12;
        v15 = a1;
        if (v16 != a1)
        {
          while (1)
          {
            v15 = (a1 + v21);
            v22 = *(&a1->n128_u64[-1] + v21);
            if (*(*(v22 + 16) + 16) == v13)
            {
              break;
            }

            v15->n128_u64[0] = v22;
            v21 -= 8;
            if (!v21)
            {
              goto LABEL_11;
            }
          }
        }
      }

      else
      {
        if (v20 == v13 || v20 <= v19)
        {
          goto LABEL_13;
        }

        v16->n128_u64[1] = v18;
        v24 = v12;
        v15 = a1;
        if (v16 != a1)
        {
          while (1)
          {
            v15 = (a1 + v24);
            v25 = *(&a1->n128_u64[-1] + v24);
            v26 = *(*(v25 + 16) + 16);
            if (v26 == v13 || v26 <= v19)
            {
              break;
            }

            v15->n128_u64[0] = v25;
            v24 -= 8;
            if (!v24)
            {
LABEL_11:
              v15 = a1;
              break;
            }
          }
        }
      }

      v15->n128_u64[0] = v17;
LABEL_13:
      v11 = &v14->n128_u64[1];
      v12 += 8;
      if (&v14->n128_i8[8] == a2)
      {
        return;
      }
    }
  }

  v30 = a4 >> 1;
  v31 = (a1 + 8 * (a4 >> 1));
  v32 = a4 - (a4 >> 1);
  v33 = a1;
  if (a4 > a6)
  {
    _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail18AttributeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(a1, v31, a3, a4 >> 1, a5, a6);
    _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail18AttributeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(v31, a2, a3, v32, a5, a6);

    _ZNSt3__115__inplace_mergeINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail18AttributeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SK_OSE_NS_15iterator_traitsISK_E15difference_typeESO_PNSN_10value_typeEl(v33, v31, a2, a3, v30, v32, a5, a6);
    return;
  }

  v39 = a5;
  _ZNSt3__118__stable_sort_moveINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail18AttributeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeE(a1, v31, a3, a4 >> 1, a5);
  v40 = (v39 + 8 * v30);
  _ZNSt3__118__stable_sort_moveINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail18AttributeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeE(v31, a2, a3, v32, v40);
  v41 = (v39 + 8 * a4);
  v42 = *(a3 + 8);
  v43 = v33;
  v44 = v40;
  do
  {
    while (1)
    {
      if (v44 == v41)
      {
        if (v39 == v40)
        {
          return;
        }

        v53 = v40 - v39 - 8;
        if (v53 >= 0x38)
        {
          if ((v43 - v39) >= 0x20)
          {
            v55 = (v33 + 16);
            v56 = (v53 >> 3) + 1;
            v57 = 8 * (v56 & 0x3FFFFFFFFFFFFFFCLL);
            v33 += v57;
            v54 = (v39 + v57);
            v58 = v39 + 1;
            v59 = v56 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v60 = *v58;
              v55[-1] = v58[-1];
              *v55 = v60;
              v58 += 2;
              v55 += 2;
              v59 -= 4;
            }

            while (v59);
            if (v56 == (v56 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return;
            }
          }

          else
          {
            v54 = v39;
          }
        }

        else
        {
          v54 = v39;
        }

        do
        {
          v61 = v54->n128_u64[0];
          v54 = (v54 + 8);
          *v33 = v61;
          v33 += 8;
        }

        while (v54 != v40);
        return;
      }

      v45 = *v42;
      v46 = *(*(v44->n128_u64[0] + 16) + 16);
      v47 = *(*(v39->n128_u64[0] + 16) + 16);
      if (v46 != *v42)
      {
        break;
      }

      if (v47 == v45)
      {
        goto LABEL_53;
      }

LABEL_44:
      *v33 = v44->n128_u64[0];
      v33 += 8;
      v44 = (v44 + 8);
      v43 += 8;
      if (v39 == v40)
      {
        goto LABEL_54;
      }
    }

    if (v47 != v45 && v47 > v46)
    {
      goto LABEL_44;
    }

LABEL_53:
    *v33 = v39->n128_u64[0];
    v33 += 8;
    v39 = (v39 + 8);
    v43 += 8;
  }

  while (v39 != v40);
LABEL_54:
  if (v44 == v41)
  {
    return;
  }

  v49 = v41 - v44 - 8;
  if (v49 <= 0x47 || (v43 - v44) < 0x20)
  {
    v50 = v33;
    v51 = v44;
    do
    {
LABEL_58:
      v52 = v51->n128_u64[0];
      v51 = (v51 + 8);
      *v50 = v52;
      v50 += 8;
    }

    while (v51 != v41);
    return;
  }

  v62 = 0;
  v63 = (v49 >> 3) + 1;
  v64 = 8 * (v63 & 0x3FFFFFFFFFFFFFFCLL);
  v50 = &v33[v64];
  v51 = (v44 + v64);
  v65 = v44 + 1;
  v66 = v63 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v67 = &v33[v62];
    v68 = *v65;
    *v67 = v65[-1];
    *(v67 + 1) = v68;
    v65 += 2;
    v62 += 32;
    v66 -= 4;
  }

  while (v66);
  if (v63 != (v63 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_58;
  }
}

__n128 _ZNSt3__118__stable_sort_moveINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail18AttributeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeE(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, __n128 *a5)
{
  switch(a4)
  {
    case 0:
      return result;
    case 1:
LABEL_36:
      a5->n128_u64[0] = a1->n128_u64[0];
      return result;
    case 2:
      v7 = a2[-1].n128_u64[1];
      v5 = (a2 - 8);
      v6 = v7;
      v8 = **(a3 + 8);
      v9 = *(*(v7 + 16) + 16);
      v10 = *(*(a1->n128_u64[0] + 16) + 16);
      if (v9 == v8)
      {
        if (v10 != v8)
        {
          goto LABEL_35;
        }
      }

      else if (v10 != v8 && v10 > v9)
      {
        goto LABEL_35;
      }

      v6 = a1->n128_u64[0];
      a1 = v5;
LABEL_35:
      a5->n128_u64[0] = v6;
      a5 = (a5 + 8);
      goto LABEL_36;
  }

  if (a4 <= 8)
  {
    if (a1 == a2)
    {
      return result;
    }

    v11 = *(a3 + 8);
    v13 = a1->n128_u64[0];
    v12 = &a1->n128_i8[8];
    a5->n128_u64[0] = v13;
    if (v12 == a2)
    {
      return result;
    }

    v14 = 0;
    v15 = *v11;
    v16 = a5;
    v17 = a5;
LABEL_13:
    while (2)
    {
      v21 = *v17++;
      v20 = v21;
      v22 = *(*(v12->n128_u64[0] + 16) + 16);
      v23 = *(*(v21 + 16) + 16);
      if (v22 == v15)
      {
        if (v23 != v15)
        {
LABEL_15:
          v16->n128_u64[1] = v20;
          v18 = a5;
          if (v16 == a5)
          {
            goto LABEL_12;
          }

          v24 = v14;
          while (1)
          {
            v25 = *(&a5->n128_u64[-1] + v24);
            v26 = *(*(v12->n128_u64[0] + 16) + 16);
            v27 = *(*(v25 + 16) + 16);
            if (v26 == v15)
            {
              if (v27 == v15)
              {
                v18 = (a5 + v24);
LABEL_12:
                v19 = v12->n128_u64[0];
                v12 = (v12 + 8);
                v18->n128_u64[0] = v19;
                v14 += 8;
                v16 = v17;
                if (v12 == a2)
                {
                  return result;
                }

                goto LABEL_13;
              }
            }

            else if (v27 == v15 || v27 <= v26)
            {
              v18 = v16;
              goto LABEL_12;
            }

            v16 = (v16 - 8);
            *(a5->n128_u64 + v24) = v25;
            v24 -= 8;
            if (!v24)
            {
              v18 = a5;
              goto LABEL_12;
            }
          }
        }
      }

      else if (v23 != v15 && v23 > v22)
      {
        goto LABEL_15;
      }

      *v17 = v12->n128_u64[0];
      v12 = (v12 + 8);
      v14 += 8;
      v16 = v17;
      if (v12 == a2)
      {
        return result;
      }

      continue;
    }
  }

  v30 = a4 >> 1;
  v31 = 8 * (a4 >> 1);
  v32 = (a1 + v31);
  v33 = a1;
  v37 = a5;
  (_ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail18AttributeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl)();
  _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail18AttributeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(v32, a2, a3, a4 - v30, v37 + v31, a4 - v30);
  v39 = *(a3 + 8);
  v40 = v37;
  v41 = v33;
  v42 = v32;
  do
  {
    while (1)
    {
      if (v42 == a2)
      {
        if (v41 == v32)
        {
          return result;
        }

        v51 = &v33->n128_u64[v30] - v41 - 8;
        if (v51 >= 0x38)
        {
          if ((v40 - v41) >= 0x20)
          {
            v53 = v37 + 1;
            v54 = (v51 >> 3) + 1;
            v55 = 8 * (v54 & 0x3FFFFFFFFFFFFFFCLL);
            v37 = (v37 + v55);
            v52 = (v41 + v55);
            v56 = v41 + 1;
            v57 = v54 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              result = v56[-1];
              v58 = *v56;
              v53[-1] = result;
              *v53 = v58;
              v56 += 2;
              v53 += 2;
              v57 -= 4;
            }

            while (v57);
            if (v54 == (v54 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return result;
            }
          }

          else
          {
            v52 = v41;
          }
        }

        else
        {
          v52 = v41;
        }

        do
        {
          v59 = v52->n128_u64[0];
          v52 = (v52 + 8);
          v37->n128_u64[0] = v59;
          v37 = (v37 + 8);
        }

        while (v52 != v32);
        return result;
      }

      v43 = *v39;
      v44 = *(*(v42->n128_u64[0] + 16) + 16);
      v45 = *(*(v41->n128_u64[0] + 16) + 16);
      if (v44 != *v39)
      {
        break;
      }

      if (v45 == v43)
      {
        goto LABEL_48;
      }

LABEL_39:
      v37->n128_u64[0] = v42->n128_u64[0];
      v37 = (v37 + 8);
      v42 = (v42 + 8);
      v40 += 8;
      if (v41 == v32)
      {
        goto LABEL_49;
      }
    }

    if (v45 != v43 && v45 > v44)
    {
      goto LABEL_39;
    }

LABEL_48:
    v37->n128_u64[0] = v41->n128_u64[0];
    v37 = (v37 + 8);
    v41 = (v41 + 8);
    v40 += 8;
  }

  while (v41 != v32);
LABEL_49:
  if (v42 == a2)
  {
    return result;
  }

  v47 = a2 - v42 - 8;
  if (v47 < 0x48 || (v40 - v42) < 0x20)
  {
    v48 = v37;
    v49 = v42;
    do
    {
LABEL_53:
      v50 = v49->n128_u64[0];
      v49 = (v49 + 8);
      v48->n128_u64[0] = v50;
      v48 = (v48 + 8);
    }

    while (v49 != a2);
    return result;
  }

  v60 = 0;
  v61 = (v47 >> 3) + 1;
  v62 = 8 * (v61 & 0x3FFFFFFFFFFFFFFCLL);
  v48 = (v37 + v62);
  v49 = (v42 + v62);
  v63 = v42 + 1;
  v64 = v61 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v65 = &v37[v60];
    result = v63[-1];
    v66 = *v63;
    *v65 = result;
    v65[1] = v66;
    v63 += 2;
    v60 += 2;
    v64 -= 4;
  }

  while (v64);
  if (v61 != (v61 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_53;
  }

  return result;
}

char *_ZNSt3__115__inplace_mergeINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail18AttributeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SK_OSE_NS_15iterator_traitsISK_E15difference_typeESO_PNSN_10value_typeEl(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  if (!a6)
  {
    return result;
  }

  while (2)
  {
    while (2)
    {
      if (a6 <= a8 || a5 <= a8)
      {
        if (a5 > a6)
        {
          if (a2 == a3)
          {
            return result;
          }

          v79 = a3 - a2 - 8;
          v80 = a7;
          v81 = a2;
          if (v79 < 0x18)
          {
            goto LABEL_133;
          }

          v80 = a7;
          v81 = a2;
          if ((a7 - a2) <= 0x1F)
          {
            goto LABEL_133;
          }

          v82 = (v79 >> 3) + 1;
          v83 = 8 * (v82 & 0x3FFFFFFFFFFFFFFCLL);
          v80 = &a7[v83];
          v81 = &a2[v83];
          v84 = (a2 + 16);
          v85 = a7 + 16;
          v86 = v82 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v87 = *v84;
            *(v85 - 1) = *(v84 - 1);
            *v85 = v87;
            v84 += 2;
            v85 += 2;
            v86 -= 4;
          }

          while (v86);
          if (v82 != (v82 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_133:
            do
            {
              v88 = *v81;
              v81 += 8;
              *v80 = v88;
              v80 += 8;
            }

            while (v81 != a3);
          }

          v89 = *(a4 + 8);
          for (i = a3; ; i -= 8)
          {
            if (a2 == result)
            {
              v112 = v80 - a7;
              if (v80 != a7)
              {
                v113 = v112 - 8;
                if ((v112 - 8) < 0x48 || (v80 - i) < 0x20)
                {
                  v114 = v80;
                  goto LABEL_121;
                }

                v117 = a3 - 16;
                v118 = (v113 >> 3) + 1;
                v119 = 8 * (v118 & 0x3FFFFFFFFFFFFFFCLL);
                v114 = &v80[-v119];
                a3 -= v119;
                v120 = v80 - 16;
                v121 = v118 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v122 = *v120;
                  *(v117 - 1) = *(v120 - 1);
                  *v117 = v122;
                  v117 -= 32;
                  v120 -= 32;
                  v121 -= 4;
                }

                while (v121);
                if (v118 != (v118 & 0x3FFFFFFFFFFFFFFCLL))
                {
LABEL_121:
                  v115 = a3 - 8;
                  do
                  {
                    v116 = *(v114 - 1);
                    v114 -= 8;
                    *v115 = v116;
                    v115 -= 8;
                  }

                  while (v114 != a7);
                }
              }

              return result;
            }

            v92 = a2 - 8;
            v91 = *(a2 - 1);
            v93 = *v89;
            v94 = *(*(v91 + 16) + 16);
            v95 = *(*(*(v80 - 1) + 16) + 16);
            if (v95 == *v89)
            {
              if (v94 != v93)
              {
                goto LABEL_87;
              }
            }

            else if (v94 != v93 && v94 > v95)
            {
              goto LABEL_87;
            }

            v91 = *(v80 - 1);
            v92 = a2;
            v80 -= 8;
LABEL_87:
            *(a3 - 1) = v91;
            a3 -= 8;
            a2 = v92;
            if (v80 == a7)
            {
              return result;
            }
          }
        }

        if (result == a2)
        {
          return result;
        }

        v97 = a2 - result - 8;
        v98 = a7;
        v99 = result;
        if (v97 < 0x18)
        {
          goto LABEL_134;
        }

        v98 = a7;
        v99 = result;
        if ((a7 - result) <= 0x1F)
        {
          goto LABEL_134;
        }

        v100 = (v97 >> 3) + 1;
        v101 = 8 * (v100 & 0x3FFFFFFFFFFFFFFCLL);
        v98 = &a7[v101];
        v99 = &result[v101];
        v102 = (result + 16);
        v103 = a7 + 16;
        v104 = v100 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v105 = *v102;
          *(v103 - 1) = *(v102 - 1);
          *v103 = v105;
          v102 += 2;
          v103 += 2;
          v104 -= 4;
        }

        while (v104);
        if (v100 != (v100 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_134:
          do
          {
            v106 = *v99;
            v99 += 8;
            *v98 = v106;
            v98 += 8;
          }

          while (v99 != a2);
        }

        v107 = *(a4 + 8);
        while (1)
        {
          while (1)
          {
            if (a2 == a3)
            {

              return memmove(result, a7, v98 - a7);
            }

            v108 = *v107;
            v109 = *(*(*a2 + 16) + 16);
            v110 = *(*(*a7 + 16) + 16);
            if (v109 == *v107)
            {
              break;
            }

            if (v110 == v108 || v110 <= v109)
            {
              goto LABEL_114;
            }

LABEL_105:
            *result = *a2;
            result += 8;
            a2 += 8;
            if (a7 == v98)
            {
              return result;
            }
          }

          if (v110 != v108)
          {
            goto LABEL_105;
          }

LABEL_114:
          *result = *a7;
          result += 8;
          a7 += 8;
          if (a7 == v98)
          {
            return result;
          }
        }
      }

      if (!a5)
      {
        return result;
      }

      v9 = 0;
      v10 = 0;
      v11 = **(a4 + 8);
      v12 = *(*(*a2 + 16) + 16);
      while (1)
      {
        v14 = *&result[8 * v10];
        v15 = *(*(v14 + 16) + 16);
        if (v12 != v11)
        {
          break;
        }

        if (v15 != v11)
        {
          goto LABEL_13;
        }

LABEL_10:
        ++v10;
        v9 -= 8;
        if (a5 == v10)
        {
          return result;
        }
      }

      v13 = v15 != v11 && v15 > v12;
      if (!v13)
      {
        goto LABEL_10;
      }

LABEL_13:
      v16 = a5 - v10;
      v17 = &result[-v9];
      if (a5 - v10 >= a6)
      {
        if (a5 - 1 == v10)
        {
          *&result[8 * v10] = *a2;
          *a2 = v14;
          return result;
        }

        v31 = v16 / 2;
        v33 = &result[8 * (v16 / 2)];
        v19 = a2;
        if (a3 != a2)
        {
          v34 = (a3 - a2) >> 3;
          v35 = *(*(*&v33[8 * v10] + 16) + 16);
          v19 = a2;
          if (v35 == v11)
          {
            do
            {
              v36 = v34 >> 1;
              v37 = &v19[8 * (v34 >> 1)];
              v39 = *v37;
              v38 = (v37 + 1);
              v40 = *(*(v39 + 16) + 16);
              v41 = v40 != v11 || v35 == v40;
              v34 += ~v36;
              if (v41)
              {
                v34 = v36;
              }

              else
              {
                v19 = v38;
              }
            }

            while (v34);
          }

          else
          {
            do
            {
              v42 = v34 >> 1;
              v43 = &v19[8 * (v34 >> 1)];
              v45 = *v43;
              v44 = (v43 + 1);
              v46 = *(*(v45 + 16) + 16);
              v48 = v46 == v11 || v35 > v46;
              v34 += ~v42;
              if (v48)
              {
                v19 = v44;
              }

              else
              {
                v34 = v42;
              }
            }

            while (v34);
          }
        }

        v22 = &v33[-v9];
        v18 = (v19 - a2) >> 3;
        v32 = v19;
        if (&v33[-v9] == a2)
        {
          goto LABEL_72;
        }

LABEL_51:
        v32 = v22;
        if (a2 != v19)
        {
          v49 = v22 + 8;
          if (v22 + 8 == a2)
          {
            v123 = *v22;
            v125 = v17;
            v55 = v19 - a2;
            v127 = a3;
            v56 = a5;
            v57 = a6;
            v58 = a4;
            memmove(v22, v22 + 8, v19 - a2);
            v17 = v125;
            a3 = v127;
            a4 = v58;
            a6 = v57;
            a5 = v56;
            v32 = &v22[v55];
            *&v22[v55] = v123;
          }

          else
          {
            v50 = a2 + 8;
            if (a2 + 8 == v19)
            {
              v59 = *(v19 - 1);
              v32 = v22 + 8;
              if (v19 - 8 != v22)
              {
                v126 = v17;
                v128 = a3;
                v60 = a5;
                v124 = a6;
                v61 = a4;
                memmove(v22 + 8, v22, v19 - 8 - v22);
                a6 = v124;
                v17 = v126;
                a4 = v61;
                a5 = v60;
                a3 = v128;
              }

              *v22 = v59;
            }

            else
            {
              v51 = a2 - v22;
              v52 = (a2 - v22) >> 3;
              v53 = (v19 - a2) >> 3;
              if (v52 == v53)
              {
                do
                {
                  v54 = *(v49 - 1);
                  *(v49 - 1) = *(v50 - 1);
                  *(v50 - 1) = v54;
                  if (v49 == a2)
                  {
                    break;
                  }

                  v49 += 8;
                  v41 = v50 == v19;
                  v50 += 8;
                }

                while (!v41);
                v32 = a2;
              }

              else
              {
                v62 = (a2 - v22) >> 3;
                do
                {
                  v63 = v62;
                  v62 = v53;
                  v53 = v63 % v53;
                }

                while (v53);
                v64 = &v22[8 * v62];
                do
                {
                  v66 = *(v64 - 1);
                  v64 -= 8;
                  v65 = v66;
                  v67 = &v64[v51];
                  v68 = v64;
                  do
                  {
                    v69 = v68;
                    v68 = v67;
                    *v69 = *v67;
                    v70 = (v19 - v67) >> 3;
                    v71 = __OFSUB__(v52, v70);
                    v72 = v52 - v70;
                    v13 = (v72 < 0) ^ v71;
                    v67 = &v22[8 * v72];
                    if (v13)
                    {
                      v67 = v68 + v51;
                    }
                  }

                  while (v67 != v64);
                  *v68 = v65;
                }

                while (v64 != v22);
                v32 = &v22[v19 - a2];
              }
            }
          }
        }

        goto LABEL_72;
      }

      v18 = a6 / 2;
      v19 = &a2[8 * (a6 / 2)];
      if (v17 == a2)
      {
        v22 = &result[-v9];
        v31 = 0;
        v32 = &a2[8 * (a6 / 2)];
        goto LABEL_72;
      }

      v20 = (a2 - result + v9) >> 3;
      v21 = *(*(*v19 + 16) + 16);
      v22 = v17;
      if (v21 == v11)
      {
        do
        {
          v23 = v20 >> 1;
          v24 = &v22[8 * (v20 >> 1)];
          v26 = *v24;
          v25 = (v24 + 1);
          v20 += ~(v20 >> 1);
          if (*(*(v26 + 16) + 16) == v11)
          {
            v22 = v25;
          }

          else
          {
            v20 = v23;
          }
        }

        while (v20);
      }

      else
      {
        do
        {
          v27 = v20 >> 1;
          v28 = &v22[8 * (v20 >> 1)];
          v30 = *v28;
          v29 = (v28 + 1);
          v20 += ~(v20 >> 1);
          if (*(*(v30 + 16) + 16) != v11 && *(*(v30 + 16) + 16) > v21)
          {
            v20 = v27;
          }

          else
          {
            v22 = v29;
          }
        }

        while (v20);
      }

      v31 = (v22 - v17) >> 3;
      v32 = &a2[8 * (a6 / 2)];
      if (v22 != a2)
      {
        goto LABEL_51;
      }

LABEL_72:
      v73 = a5 - v31 - v10;
      v74 = a6 - v18;
      if (v31 + v18 < a6 + a5 - (v31 + v18) - v10)
      {
        v75 = a3;
        v76 = a4;
        _ZNSt3__115__inplace_mergeINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail18AttributeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SK_OSE_NS_15iterator_traitsISK_E15difference_typeESO_PNSN_10value_typeEl(v17, v22);
        a3 = v75;
        result = v32;
        a5 = v73;
        a6 = v74;
        a2 = v19;
        a4 = v76;
        if (!v74)
        {
          return result;
        }

        continue;
      }

      break;
    }

    v77 = a4;
    v78 = v17;
    _ZNSt3__115__inplace_mergeINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail18AttributeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SK_OSE_NS_15iterator_traitsISK_E15difference_typeESO_PNSN_10value_typeEl(v32, v19);
    result = v78;
    a3 = v32;
    a5 = v31;
    a6 = v18;
    a2 = v22;
    a4 = v77;
    if (v18)
    {
      continue;
    }

    return result;
  }
}

void _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail15OpNameNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(__n128 *a1, __n128 *a2, uint64_t a3, unint64_t a4, __n128 *a5, uint64_t a6)
{
  if (a4 < 2)
  {
    return;
  }

  if (a4 == 2)
  {
    v6 = a2[-1].n128_u64[1];
    v7 = a1->n128_u64[0];
    v8 = **(a3 + 8);
    v9 = *(*v6 + 16);
    v10 = *(*a1->n128_u64[0] + 16);
    if (v9 == v8)
    {
      if (v10 == v8)
      {
        return;
      }
    }

    else if (v10 == v8 || v10 <= v9)
    {
      return;
    }

    a1->n128_u64[0] = v6;
    a2[-1].n128_u64[1] = v7;
    return;
  }

  if (a4 <= 128)
  {
    if (a1 == a2)
    {
      return;
    }

    v11 = &a1->n128_u64[1];
    if (&a1->n128_i8[8] == a2)
    {
      return;
    }

    v12 = 0;
    v13 = **(a3 + 8);
    v14 = a1;
    while (1)
    {
      v16 = v14;
      v14 = v11;
      v18 = v16->n128_u64[0];
      v17 = v16->n128_u64[1];
      v19 = *(*v17 + 16);
      v20 = *(*v16->n128_u64[0] + 16);
      if (v19 == v13)
      {
        if (v20 == v13)
        {
          goto LABEL_13;
        }

        v16->n128_u64[1] = v18;
        v21 = v12;
        v15 = a1;
        if (v16 != a1)
        {
          while (1)
          {
            v15 = (a1 + v21);
            v22 = *(&a1->n128_u64[-1] + v21);
            if (*(*v22 + 16) == v13)
            {
              break;
            }

            v15->n128_u64[0] = v22;
            v21 -= 8;
            if (!v21)
            {
              goto LABEL_11;
            }
          }
        }
      }

      else
      {
        if (v20 == v13 || v20 <= v19)
        {
          goto LABEL_13;
        }

        v16->n128_u64[1] = v18;
        v24 = v12;
        v15 = a1;
        if (v16 != a1)
        {
          while (1)
          {
            v15 = (a1 + v24);
            v25 = *(&a1->n128_u64[-1] + v24);
            v26 = *(*v25 + 16);
            if (v26 == v13 || v26 <= v19)
            {
              break;
            }

            v15->n128_u64[0] = v25;
            v24 -= 8;
            if (!v24)
            {
LABEL_11:
              v15 = a1;
              break;
            }
          }
        }
      }

      v15->n128_u64[0] = v17;
LABEL_13:
      v11 = &v14->n128_u64[1];
      v12 += 8;
      if (&v14->n128_i8[8] == a2)
      {
        return;
      }
    }
  }

  v30 = a4 >> 1;
  v31 = (a1 + 8 * (a4 >> 1));
  v32 = a4 - (a4 >> 1);
  v33 = a1;
  if (a4 > a6)
  {
    _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail15OpNameNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(a1, v31, a3, a4 >> 1, a5, a6);
    _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail15OpNameNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(v31, a2, a3, v32, a5, a6);

    _ZNSt3__115__inplace_mergeINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail15OpNameNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SK_OSE_NS_15iterator_traitsISK_E15difference_typeESO_PNSN_10value_typeEl(v33, v31, a2, a3, v30, v32, a5, a6);
    return;
  }

  v39 = a5;
  _ZNSt3__118__stable_sort_moveINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail15OpNameNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeE(a1, v31, a3, a4 >> 1, a5);
  v40 = (v39 + 8 * v30);
  _ZNSt3__118__stable_sort_moveINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail15OpNameNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeE(v31, a2, a3, v32, v40);
  v41 = (v39 + 8 * a4);
  v42 = *(a3 + 8);
  v43 = v33;
  v44 = v40;
  do
  {
    while (1)
    {
      if (v44 == v41)
      {
        if (v39 == v40)
        {
          return;
        }

        v53 = v40 - v39 - 8;
        if (v53 >= 0x38)
        {
          if ((v43 - v39) >= 0x20)
          {
            v55 = (v33 + 16);
            v56 = (v53 >> 3) + 1;
            v57 = 8 * (v56 & 0x3FFFFFFFFFFFFFFCLL);
            v33 += v57;
            v54 = (v39 + v57);
            v58 = v39 + 1;
            v59 = v56 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v60 = *v58;
              v55[-1] = v58[-1];
              *v55 = v60;
              v58 += 2;
              v55 += 2;
              v59 -= 4;
            }

            while (v59);
            if (v56 == (v56 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return;
            }
          }

          else
          {
            v54 = v39;
          }
        }

        else
        {
          v54 = v39;
        }

        do
        {
          v61 = v54->n128_u64[0];
          v54 = (v54 + 8);
          *v33 = v61;
          v33 += 8;
        }

        while (v54 != v40);
        return;
      }

      v45 = *v42;
      v46 = *(*v44->n128_u64[0] + 16);
      v47 = *(*v39->n128_u64[0] + 16);
      if (v46 != *v42)
      {
        break;
      }

      if (v47 == v45)
      {
        goto LABEL_53;
      }

LABEL_44:
      *v33 = v44->n128_u64[0];
      v33 += 8;
      v44 = (v44 + 8);
      v43 += 8;
      if (v39 == v40)
      {
        goto LABEL_54;
      }
    }

    if (v47 != v45 && v47 > v46)
    {
      goto LABEL_44;
    }

LABEL_53:
    *v33 = v39->n128_u64[0];
    v33 += 8;
    v39 = (v39 + 8);
    v43 += 8;
  }

  while (v39 != v40);
LABEL_54:
  if (v44 == v41)
  {
    return;
  }

  v49 = v41 - v44 - 8;
  if (v49 <= 0x47 || (v43 - v44) < 0x20)
  {
    v50 = v33;
    v51 = v44;
    do
    {
LABEL_58:
      v52 = v51->n128_u64[0];
      v51 = (v51 + 8);
      *v50 = v52;
      v50 += 8;
    }

    while (v51 != v41);
    return;
  }

  v62 = 0;
  v63 = (v49 >> 3) + 1;
  v64 = 8 * (v63 & 0x3FFFFFFFFFFFFFFCLL);
  v50 = &v33[v64];
  v51 = (v44 + v64);
  v65 = v44 + 1;
  v66 = v63 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v67 = &v33[v62];
    v68 = *v65;
    *v67 = v65[-1];
    *(v67 + 1) = v68;
    v65 += 2;
    v62 += 32;
    v66 -= 4;
  }

  while (v66);
  if (v63 != (v63 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_58;
  }
}

__n128 _ZNSt3__118__stable_sort_moveINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail15OpNameNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeE(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, __n128 *a5)
{
  switch(a4)
  {
    case 0:
      return result;
    case 1:
LABEL_36:
      a5->n128_u64[0] = a1->n128_u64[0];
      return result;
    case 2:
      v7 = a2[-1].n128_u64[1];
      v5 = (a2 - 8);
      v6 = v7;
      v8 = **(a3 + 8);
      v9 = *(*v7 + 16);
      v10 = *(*a1->n128_u64[0] + 16);
      if (v9 == v8)
      {
        if (v10 != v8)
        {
          goto LABEL_35;
        }
      }

      else if (v10 != v8 && v10 > v9)
      {
        goto LABEL_35;
      }

      v6 = a1->n128_u64[0];
      a1 = v5;
LABEL_35:
      a5->n128_u64[0] = v6;
      a5 = (a5 + 8);
      goto LABEL_36;
  }

  if (a4 <= 8)
  {
    if (a1 == a2)
    {
      return result;
    }

    v11 = *(a3 + 8);
    v13 = a1->n128_u64[0];
    v12 = &a1->n128_i8[8];
    a5->n128_u64[0] = v13;
    if (v12 == a2)
    {
      return result;
    }

    v14 = 0;
    v15 = *v11;
    v16 = a5;
    v17 = a5;
LABEL_13:
    while (2)
    {
      v21 = *v17++;
      v20 = v21;
      v22 = *(*v12->n128_u64[0] + 16);
      v23 = *(*v21 + 16);
      if (v22 == v15)
      {
        if (v23 != v15)
        {
LABEL_15:
          v16->n128_u64[1] = v20;
          v18 = a5;
          if (v16 == a5)
          {
            goto LABEL_12;
          }

          v24 = v14;
          while (1)
          {
            v25 = *(&a5->n128_u64[-1] + v24);
            v26 = *(*v12->n128_u64[0] + 16);
            v27 = *(*v25 + 16);
            if (v26 == v15)
            {
              if (v27 == v15)
              {
                v18 = (a5 + v24);
LABEL_12:
                v19 = v12->n128_u64[0];
                v12 = (v12 + 8);
                v18->n128_u64[0] = v19;
                v14 += 8;
                v16 = v17;
                if (v12 == a2)
                {
                  return result;
                }

                goto LABEL_13;
              }
            }

            else if (v27 == v15 || v27 <= v26)
            {
              v18 = v16;
              goto LABEL_12;
            }

            v16 = (v16 - 8);
            *(a5->n128_u64 + v24) = v25;
            v24 -= 8;
            if (!v24)
            {
              v18 = a5;
              goto LABEL_12;
            }
          }
        }
      }

      else if (v23 != v15 && v23 > v22)
      {
        goto LABEL_15;
      }

      *v17 = v12->n128_u64[0];
      v12 = (v12 + 8);
      v14 += 8;
      v16 = v17;
      if (v12 == a2)
      {
        return result;
      }

      continue;
    }
  }

  v30 = a4 >> 1;
  v31 = 8 * (a4 >> 1);
  v32 = (a1 + v31);
  v33 = a1;
  v37 = a5;
  (_ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail15OpNameNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl)();
  _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail15OpNameNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(v32, a2, a3, a4 - v30, v37 + v31, a4 - v30);
  v39 = *(a3 + 8);
  v40 = v37;
  v41 = v33;
  v42 = v32;
  do
  {
    while (1)
    {
      if (v42 == a2)
      {
        if (v41 == v32)
        {
          return result;
        }

        v51 = &v33->n128_u64[v30] - v41 - 8;
        if (v51 >= 0x38)
        {
          if ((v40 - v41) >= 0x20)
          {
            v53 = v37 + 1;
            v54 = (v51 >> 3) + 1;
            v55 = 8 * (v54 & 0x3FFFFFFFFFFFFFFCLL);
            v37 = (v37 + v55);
            v52 = (v41 + v55);
            v56 = v41 + 1;
            v57 = v54 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              result = v56[-1];
              v58 = *v56;
              v53[-1] = result;
              *v53 = v58;
              v56 += 2;
              v53 += 2;
              v57 -= 4;
            }

            while (v57);
            if (v54 == (v54 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return result;
            }
          }

          else
          {
            v52 = v41;
          }
        }

        else
        {
          v52 = v41;
        }

        do
        {
          v59 = v52->n128_u64[0];
          v52 = (v52 + 8);
          v37->n128_u64[0] = v59;
          v37 = (v37 + 8);
        }

        while (v52 != v32);
        return result;
      }

      v43 = *v39;
      v44 = *(*v42->n128_u64[0] + 16);
      v45 = *(*v41->n128_u64[0] + 16);
      if (v44 != *v39)
      {
        break;
      }

      if (v45 == v43)
      {
        goto LABEL_48;
      }

LABEL_39:
      v37->n128_u64[0] = v42->n128_u64[0];
      v37 = (v37 + 8);
      v42 = (v42 + 8);
      v40 += 8;
      if (v41 == v32)
      {
        goto LABEL_49;
      }
    }

    if (v45 != v43 && v45 > v44)
    {
      goto LABEL_39;
    }

LABEL_48:
    v37->n128_u64[0] = v41->n128_u64[0];
    v37 = (v37 + 8);
    v41 = (v41 + 8);
    v40 += 8;
  }

  while (v41 != v32);
LABEL_49:
  if (v42 == a2)
  {
    return result;
  }

  v47 = a2 - v42 - 8;
  if (v47 < 0x48 || (v40 - v42) < 0x20)
  {
    v48 = v37;
    v49 = v42;
    do
    {
LABEL_53:
      v50 = v49->n128_u64[0];
      v49 = (v49 + 8);
      v48->n128_u64[0] = v50;
      v48 = (v48 + 8);
    }

    while (v49 != a2);
    return result;
  }

  v60 = 0;
  v61 = (v47 >> 3) + 1;
  v62 = 8 * (v61 & 0x3FFFFFFFFFFFFFFCLL);
  v48 = (v37 + v62);
  v49 = (v42 + v62);
  v63 = v42 + 1;
  v64 = v61 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v65 = &v37[v60];
    result = v63[-1];
    v66 = *v63;
    *v65 = result;
    v65[1] = v66;
    v63 += 2;
    v60 += 2;
    v64 -= 4;
  }

  while (v64);
  if (v61 != (v61 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_53;
  }

  return result;
}