void *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::operator[](uint64_t *a1, void *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::LookupBucketFor<mlir::Block *>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::InsertIntoBucketImpl<mlir::Block *>(a1, a2, v7);
    *v5 = *a2;
    *(v5 + 2) = 0;
  }

  return v5 + 1;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](uint64_t a1, unint64_t *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::LookupBucketFor<mlir::Value>(*a1, *(a1 + 16), *a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::InsertIntoBucketImpl<mlir::Value>(a1, a2, v7);
    *v5 = *a2;
    *(v5 + 4) = 0;
  }

  return v5 + 1;
}

void anonymous namespace::ByteCodeLiveRange::unionWith(uint64_t *a1, uint64_t *a2)
{
  v26[8] = *MEMORY[0x277D85DE8];
  v23 = *a2;
  v24 = v26;
  v4 = *(v23 + 272) != 0;
  v5 = *(v23 + 276);
  v25 = 0x400000000;
  llvm::SmallVectorTemplateBase<llvm::IntervalMapImpl::Path::Entry,true>::push_back(&v24, v23 + 8 * v4, v5);
  v6 = *(v23 + 272);
  if (v6)
  {
    while (v25 - 1 < v6)
    {
      v7 = *(*(v24 + 2 * (v25 - 1)) + 8 * *(v24 + 4 * (v25 - 1) + 3));
      llvm::SmallVectorTemplateBase<llvm::IntervalMapImpl::Path::Entry,true>::push_back(&v24, v7 & 0xFFFFFFFFFFFFFFC0, (v7 & 0x3F) + 1);
    }
  }

  v19 = *a2;
  v20 = v22;
  v8 = *(v19 + 276);
  v9 = *(v19 + 272) != 0;
  v21 = 0x400000000;
  llvm::SmallVectorTemplateBase<llvm::IntervalMapImpl::Path::Entry,true>::push_back(&v20, v19 + 8 * v9, v8 | (v8 << 32));
  while (1)
  {
    v10 = v24;
    v11 = v24 + 16 * v25;
    if (!v25 || *(v24 + 3) >= *(v24 + 2))
    {
      break;
    }

    v12 = *(v11 - 1);
    v13 = v20 + 16 * v21;
    if (v12 == *(v13 - 1) && *(v11 - 2) == *(v13 - 2))
    {
      goto LABEL_16;
    }

LABEL_13:
    llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::insert(*a1, *(*(v11 - 2) + 16 * v12), *(*(v11 - 2) + 16 * v12 + 8));
    v14 = v24;
    v15 = v24 + 16 * v25;
    v16 = *(v15 - 1) + 1;
    *(v15 - 1) = v16;
    if (v16 == v14[4 * v25 - 2])
    {
      v17 = *(v23 + 272);
      if (v17)
      {
        llvm::IntervalMapImpl::Path::moveRight(&v24, v17);
      }
    }
  }

  if (v21 && *(v20 + 3) < *(v20 + 2))
  {
    v12 = *(v11 - 1);
    goto LABEL_13;
  }

LABEL_16:
  if (v20 != v22)
  {
    free(v20);
    v10 = v24;
  }

  if (v10 != v26)
  {
    free(v10);
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::try_emplace<unsigned short>(uint64_t a1, uint64_t a2, unint64_t *a3, _WORD *a4)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::LookupBucketFor<mlir::Value>(*a2, *(a2 + 16), *a3, &v12);
  v9 = v12;
  if (result)
  {
    v10 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::InsertIntoBucketImpl<mlir::Value>(a2, a3, v12);
    v9 = result;
    *result = *a3;
    *(result + 8) = *a4;
    v10 = 1;
  }

  v11 = *a2 + 16 * *(a2 + 16);
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v10;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::LookupBucketFor<mlir::Value>(uint64_t a1, int a2, unint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v4 >> 47) ^ v4);
    v6 = a2 - 1;
    v7 = (-348639895 * ((v5 >> 47) ^ v5)) & (a2 - 1);
    v8 = (a1 + 16 * v7);
    v9 = *v8;
    if (*v8 == a3)
    {
      v10 = 1;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      while (v9 != -4096)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v9 == -8192;
        }

        if (v14)
        {
          v12 = v8;
        }

        v15 = v7 + v13++;
        v7 = v15 & v6;
        v8 = (a1 + 16 * (v15 & v6));
        v9 = *v8;
        v10 = 1;
        if (*v8 == a3)
        {
          goto LABEL_5;
        }
      }

      v10 = 0;
      if (v12)
      {
        v8 = v12;
      }
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

LABEL_5:
  *a4 = v8;
  return v10;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::InsertIntoBucketImpl<mlir::Value>(uint64_t a1, unint64_t *a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::LookupBucketFor<mlir::Value>(*a1, *(a1 + 16), *a2, &v8);
  v5 = *(a1 + 8);
  a3 = v8;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

char *llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 16;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 4;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 16 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::LookupBucketFor<mlir::Value>(*a1, *(a1 + 16), v20, &v30);
          v21 = v30;
          *v30 = *v19;
          *(v21 + 4) = *(v19 + 8);
          ++*(a1 + 8);
        }

        v19 += 16;
        v18 -= 16;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v22 + 0xFFFFFFFFFFFFFFFLL;
    v25 = v24 & 0xFFFFFFFFFFFFFFFLL;
    v26 = (v24 & 0xFFFFFFFFFFFFFFFLL) - (v24 & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = result + 16;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_25D0A0500)));
      if (v29.i8[0])
      {
        *(v28 - 2) = -4096;
      }

      if (v29.i8[4])
      {
        *v28 = -4096;
      }

      v23 += 2;
      v28 += 4;
    }

    while (v26 != v23);
  }

  return result;
}

uint64_t llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<anonymous namespace::Generator::allocateMemoryIndices(mlir::pdl_interp::FuncOp,mlir::ModuleOp)::$_0>(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 36);
  v3 = a2 - 16;
  if (v2)
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v6 = result;
    v7 = 0;
    v8 = a2 - 16;
    do
    {
      v9 = v4;
      if (!v7)
      {
        goto LABEL_11;
      }

      v10 = *(a2 - 8) & 7;
      v11 = v3;
      v12 = v7;
      if (v10 != 6)
      {
        v13 = (5 - v10);
        v9 = v8;
        v12 = v7 - v13;
        if (v7 <= v13)
        {
          goto LABEL_11;
        }

        v11 = v3 - 16 * v13;
      }

      v9 = v11 - 24 * v12;
LABEL_11:
      v14 = *v6;
      v24 = v9;
      v16 = *v14;
      v15 = v14[1];
      v17 = (*v15)++;
      v23 = v17;
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::try_emplace<unsigned short>(v22, v16, &v24, &v23);
      v18 = (*(v9 + 8) & 0xFFFFFFFFFFFFFFF8);
      if ((*v18)[17] == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
      {
        v19 = *(*v18[1] + 136);
        if (v19 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
        {
          v20 = v14[2];
          goto LABEL_16;
        }

        if (v19 == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
        {
          v20 = v14[3];
LABEL_16:
          v21 = (*v20)++;
          v23 = v21;
          result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::try_emplace<unsigned short>(v22, v16 + 24, &v24, &v23);
        }
      }

      ++v7;
      v8 -= 16;
    }

    while (v2 != v7);
  }

  return result;
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *>::CallImpl<anonymous namespace::Generator::allocateMemoryIndices(mlir::pdl_interp::FuncOp,mlir::ModuleOp)::$_1>(uint64_t *a1, uint64_t a2)
{
  v21 = a2;
  v3 = *a1;
  v4 = a1[1];
  v5 = (*v4)++;
  v20 = v5;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::try_emplace<unsigned int>(v3, &v21, &v20, v19);
  v6 = *(v21 + 44);
  if ((v6 & 0x7FFFFF) != 0)
  {
    v7 = ((v21 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v21 + 40);
    v8 = v7 + 24 * (v6 & 0x7FFFFF);
    do
    {
      for (i = *(v7 + 8); i != v7; i = *(i + 8))
      {
        v10 = i - 8;
        if (!i)
        {
          v10 = 0;
        }

        v11 = v10 + 32;
        for (j = *(v10 + 40); j != v11; j = *(j + 8))
        {
          v13 = a1[2];
          v14 = v13[3];
          if ((v14 & 2) == 0)
          {
            v13 = *v13;
          }

          (*(v14 & 0xFFFFFFFFFFFFFFF8))(v13, j);
        }
      }

      v7 += 24;
    }

    while (v7 != v8);
  }

  v15 = a1[3];
  v16 = a1[1];
  v17 = (*v16)++;
  v20 = v17;
  return llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::try_emplace<unsigned int>(v15, &v21, &v20, v19);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::try_emplace<unsigned int>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::LookupBucketFor<mlir::Operation *>(a1, a2, &v12);
  v9 = v12;
  if (result)
  {
    v10 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::InsertIntoBucketImpl<mlir::Operation *>(a1, a2, v12);
    v9 = result;
    *result = *a2;
    *(result + 8) = *a3;
    v10 = 1;
  }

  v11 = *a1 + 16 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v10;
  return result;
}

void llvm::function_ref<void ()(mlir::Block *)>::callback_fn<anonymous namespace::Generator::allocateMemoryIndices(mlir::pdl_interp::FuncOp,mlir::ModuleOp)::$_2>(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  *&v37[0] = a2;
  v5 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>,mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>::doFind<mlir::Block const*>((v4 + 8), v37);
  v6 = *(v4 + 24);
  v7 = *(v4 + 8) + 320 * v6;
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = *(v4 + 8) + 320 * v6;
  }

  if (v8 == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8 + 8;
  }

  v40 = v9;
  v10 = *(a1 + 3);
  v37[0] = *(a1 + 1);
  v37[1] = v10;
  v38 = a1[5];
  v39 = &v40;
  v13 = *(v9 + 8);
  v12 = v9 + 8;
  v11 = v13;
  v14 = 8;
  if (*(v12 + 20))
  {
    v14 = 12;
  }

  v15 = *(v12 + v14);
  if (v15)
  {
    v16 = 8 * v15;
    v17 = v11;
    while (*v17 >= 0xFFFFFFFFFFFFFFFELL)
    {
      ++v17;
      v16 -= 8;
      if (!v16)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    v17 = v11;
  }

  v18 = &v11[v15];
  if (v17 != v18)
  {
    v19 = *v17;
LABEL_17:
    v36 = v19;
    if (mlir::Value::getParentRegion(&v36) == (*(a2 + 24) & 0xFFFFFFFFFFFFFFF8))
    {
    }

    while (++v17 != v18)
    {
      v19 = *v17;
      if (*v17 < 0xFFFFFFFFFFFFFFFELL)
      {
        if (v17 != v18)
        {
          goto LABEL_17;
        }

        break;
      }
    }
  }

LABEL_22:
  v20 = *((*(a2 + 24) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v20)
  {
    v21 = v20 - 8;
  }

  else
  {
    v21 = 0;
  }

  if (v21 == a2)
  {
    v33 = *(a2 + 48);
    v34 = *(a2 + 56);
    while (v33 != v34)
    {
      v35 = *v33++;
    }
  }

  v22 = a2 + 32;
  v23 = *(a2 + 40);
  if (v23 != v22)
  {
    while (1)
    {
      v24 = *(v23 + 36);
      v25 = v24 ? v23 - 16 : 0;
      if (v24)
      {
        break;
      }

LABEL_38:
      v23 = *(v23 + 8);
      if (v23 == v22)
      {
        return;
      }
    }

    v26 = 0;
    v27 = (v23 - 16);
    while (1)
    {
      v28 = v25;
      if (v26)
      {
        v29 = *(v23 - 8) & 7;
        v30 = v23 - 16;
        v31 = v26;
        if (v29 == 6)
        {
          goto LABEL_36;
        }

        v32 = (5 - v29);
        v28 = v27;
        v31 = v26 - v32;
        if (v26 > v32)
        {
          break;
        }
      }

LABEL_37:
      ++v26;
      v27 -= 2;
      if (v24 == v26)
      {
        goto LABEL_38;
      }
    }

    v30 = v23 - 16 - 16 * v32;
LABEL_36:
    v28 = (v30 - 24 * v31);
    goto LABEL_37;
  }
}

void anonymous namespace::Generator::allocateMemoryIndices(mlir::pdl_interp::FuncOp,mlir::ModuleOp)::$_2::operator() const(mlir::Block *)::{lambda(mlir::Value,mlir::Operation *)#1}::operator()(uint64_t a1, void *a2, mlir::Operation *a3)
{
  v24 = a3;
  if (**a1 == a2)
  {
    return;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  EndOperation = 0;
  v8 = EndOperation;
  if (!v7)
  {
    v26 = EndOperation;
    v10 = *(v5 + 8);
    v11 = *(v5 + 16);
    if (4 * v10 + 4 >= 3 * v11)
    {
      v11 *= 2;
    }

    else if (v11 + ~v10 - *(v5 + 12) > v11 >> 3)
    {
      goto LABEL_6;
    }

    v10 = *(v5 + 8);
    v8 = v26;
LABEL_6:
    *(v5 + 8) = v10 + 1;
    if (*v8 != -4096)
    {
      --*(v5 + 12);
    }

    *v8 = a2;
    operator new();
  }

  v9 = *(EndOperation + 1);
  v12 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::operator[](*(a1 + 24), &v24);
  v13 = *(a1 + 32);
  EndOperation = mlir::LivenessBlockInfo::getEndOperation(**(a1 + 40), a2, v24);
  v26 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::LookupBucketFor<mlir::Operation *>(v13, &EndOperation, &v26))
  {
    v15 = *(v26 + 2);
  }

  else
  {
    v16 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::InsertIntoBucketImpl<mlir::Operation *>(v13, &EndOperation, v26);
    v15 = 0;
    *v16 = EndOperation;
    *(v16 + 2) = 0;
  }

  llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::insert(v9, v12, v15);
  v17 = (a2[1] & 0xFFFFFFFFFFFFFFF8);
  if ((*v17)[17] == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
  {
    v18 = *(*v17[1] + 136);
    if (v18 == &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id)
    {
      v22 = *(v8 + 20);
      v20 = v8 + 20;
      v19 = v22;
    }

    else if (v18 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
    {
      v23 = *(v8 + 28);
      v20 = v8 + 28;
      v19 = v23;
    }

    else
    {
      if (v18 != &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
      {
        return;
      }

      v21 = *(v8 + 36);
      v20 = v8 + 36;
      v19 = v21;
    }

    if ((v19 & 1) == 0)
    {
      *v20 = 1;
    }

    *(v20 - 1) = 0;
  }
}

void llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::insert(uint64_t a1, unint64_t a2, unint64_t a3)
{
  *&v47[4] = *MEMORY[0x277D85DE8];
  if (*(a1 + 272) || (v5 = *(a1 + 276), v5 == 16))
  {
    v40 = a1;
    v41 = v43;
    v42 = 0x400000000;
    llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::const_iterator::find(&v40, a2);
    v6 = v40;
    if (*(v40 + 272))
    {
      llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::treeInsert(&v40, a2, a3);
    }

    else
    {
      v7 = llvm::IntervalMapImpl::LeafNode<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::insertFrom(v40, v41 + 4 * v42 - 1, *(v40 + 276), a2, a3);
      if (v7 > 0x10)
      {
        v11 = 0;
        v12 = 0;
        LODWORD(v13) = 0;
        v14 = *(v6 + 276) + 1;
        v15 = *(v41 + 4 * v42 - 1);
        v16 = v14 >> 1;
        v17 = v14 & 1;
        LODWORD(v18) = 2;
        do
        {
          if (v11 >= v17)
          {
            v19 = v16;
          }

          else
          {
            v19 = v16 + 1;
          }

          v46[v11] = v19;
          v20 = v15 - v12;
          v12 += v19;
          v21 = v18 == 2;
          v22 = v12 > v15;
          if (v21 && v22)
          {
            v18 = v11;
          }

          else
          {
            v18 = v18;
          }

          if (v21 && v22)
          {
            v13 = v20;
          }

          else
          {
            v13 = v13;
          }

          ++v11;
        }

        while (v11 != 2);
        v23 = 0;
        v24 = 0;
        v25 = &v44;
        v26 = v46;
        --v46[v18];
        v44 = 0;
        v45 = 0;
        v27 = 0uLL;
        do
        {
          v28 = v23;
          v29 = *(v6 + 280);
          v30 = *v29;
          if (*v29)
          {
            *v29 = *v30;
          }

          else
          {
            v30 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(v29 + 1, 192, 6);
            v27 = 0uLL;
          }

          *(v30 + 160) = v27;
          *(v30 + 176) = v27;
          *(v30 + 128) = v27;
          *(v30 + 144) = v27;
          *(v30 + 96) = v27;
          *(v30 + 112) = v27;
          *(v30 + 64) = v27;
          *(v30 + 80) = v27;
          *(v30 + 32) = v27;
          *(v30 + 48) = v27;
          *v30 = v27;
          *(v30 + 16) = v27;
          v31 = *v26;
          if (*v26)
          {
            v32 = (v30 + 176);
            v33 = *v26;
            v34 = v30;
            v35 = v24;
            do
            {
              *v34++ = *(v6 + 16 * v35);
              *v32++ = *(v6 + 256 + v35++);
              --v33;
            }

            while (v33);
          }

          v24 += v31;
          *v25 = v30 & 0xFFFFFFFFFFFFFFC0 | (v31 - 1);
          v23 = 1;
          v25 = &v45;
          v26 = v47;
        }

        while ((v28 & 1) == 0);
        v36 = 0;
        *(v6 + 272) = 1;
        *v6 = 0u;
        *(v6 + 16) = 0u;
        *(v6 + 32) = 0u;
        *(v6 + 48) = 0u;
        *(v6 + 64) = 0u;
        *(v6 + 80) = 0u;
        *(v6 + 96) = 0u;
        *(v6 + 112) = 0u;
        *(v6 + 128) = 0u;
        *(v6 + 144) = 0u;
        *(v6 + 160) = 0u;
        *(v6 + 176) = 0u;
        *(v6 + 192) = 0u;
        *(v6 + 208) = 0u;
        *(v6 + 224) = 0u;
        *(v6 + 240) = 0u;
        *(v6 + 256) = 0;
        do
        {
          v37 = *(&v44 + v36);
          v38 = v6 + 8 * v36;
          *(v38 + 136) = *((v37 & 0xFFFFFFFFFFFFFFC0) + 16 * (v46[v36] - 1) + 8);
          *(v38 + 8) = v37;
          ++v36;
        }

        while (v36 != 2);
        *v6 = *(v44 & 0xFFFFFFFFFFFFFFC0);
        *(v6 + 276) = 2;
        llvm::IntervalMapImpl::Path::replaceRoot(&v41, v6 + 8, 2, v18 | (v13 << 32));
        llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::treeInsert(&v40, a2, a3);
      }

      else
      {
        *(v6 + 276) = v7;
        *(v41 + 2) = v7;
      }
    }

    if (v41 != v43)
    {
      free(v41);
    }
  }

  else
  {
    if (v5)
    {
      v8 = 0;
      v9 = (a1 + 8);
      while (1)
      {
        v10 = *v9;
        v9 += 2;
        if (v10 >= a2)
        {
          break;
        }

        if (v5 == ++v8)
        {
          LODWORD(v8) = *(a1 + 276);
          break;
        }
      }
    }

    else
    {
      LODWORD(v8) = 0;
    }

    LODWORD(v40) = v8;
    *(a1 + 276) = llvm::IntervalMapImpl::LeafNode<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::insertFrom(a1, &v40, v5, a2, a3);
  }

  v39 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,anonymous namespace::ByteCodeLiveRange,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::ByteCodeLiveRange>>,mlir::Value,anonymous namespace::ByteCodeLiveRange,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::ByteCodeLiveRange>>::LookupBucketFor<mlir::Value>(uint64_t a1, int a2, unint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v4 >> 47) ^ v4);
    v6 = a2 - 1;
    v7 = (-348639895 * ((v5 >> 47) ^ v5)) & (a2 - 1);
    v8 = (a1 + 40 * v7);
    v9 = *v8;
    if (*v8 == a3)
    {
      v10 = 1;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      while (v9 != -4096)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v9 == -8192;
        }

        if (v14)
        {
          v12 = v8;
        }

        v15 = v7 + v13++;
        v7 = v15 & v6;
        v8 = (a1 + 40 * (v15 & v6));
        v9 = *v8;
        v10 = 1;
        if (*v8 == a3)
        {
          goto LABEL_5;
        }
      }

      v10 = 0;
      if (v12)
      {
        v8 = v12;
      }
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

LABEL_5:
  *a4 = v8;
  return v10;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,anonymous namespace::ByteCodeLiveRange,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::ByteCodeLiveRange>>,mlir::Value,anonymous namespace::ByteCodeLiveRange,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::ByteCodeLiveRange>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((40 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 40 * v10 - 40;
      v13 = vdupq_n_s64(v12 / 0x28);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[5] = -4096;
        }

        v11 += 2;
        result += 10;
      }

      while (((v12 / 0x28 + 2) & 0xFFFFFFFFFFFFFFELL) != v11);
    }

    if (v3)
    {
      v15 = 40 * v3;
      v16 = v4 + 8;
      do
      {
        v17 = *(v16 - 8);
        if ((v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v27 = 0;
          v18 = v27;
          *v27 = v17;
          v19 = *v16;
          *v16 = 0;
          v18[1] = v19;
          v20 = *(v16 + 8);
          *(v18 + 29) = *(v16 + 21);
          *(v18 + 1) = v20;
          ++*(a1 + 8);
          v21 = *v16;
          *v16 = 0;
          if (v21)
          {
            std::default_delete<llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>>::operator()[abi:nn200100](v21);
          }
        }

        v16 += 40;
        v15 -= 40;
      }

      while (v15);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = 40 * v22 - 40;
    v25 = vdupq_n_s64(v24 / 0x28);
    do
    {
      v26 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v23), xmmword_25D0A0500)));
      if (v26.i8[0])
      {
        *result = -4096;
      }

      if (v26.i8[4])
      {
        result[5] = -4096;
      }

      v23 += 2;
      result += 10;
    }

    while (((v24 / 0x28 + 2) & 0xFFFFFFFFFFFFFFELL) != v23);
  }

  return result;
}

void std::default_delete<llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>>::operator()[abi:nn200100](uint64_t a1)
{
  v31[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 272);
  if (v2)
  {
    v29 = v31;
    v30 = 0x400000000;
    v26 = v28;
    v27 = 0x400000000;
    if (*(a1 + 276))
    {
      v3 = 0;
      do
      {
        llvm::SmallVectorTemplateBase<llvm::IntervalMapImpl::NodeRef,true>::push_back(&v29, *(a1 + 8 + 8 * v3++));
      }

      while (v3 != *(a1 + 276));
      v2 = *(a1 + 272);
      LODWORD(v4) = v30;
    }

    else
    {
      LODWORD(v4) = 0;
    }

    v5 = v2 - 1;
    if (v2 != 1)
    {
      while (1)
      {
        v6 = v29;
        if (v4)
        {
          v7 = 0;
          do
          {
            v8 = 0;
            v9 = 8 * (v6[v7] & 0x3FLL) + 8;
            do
            {
              llvm::SmallVectorTemplateBase<llvm::IntervalMapImpl::NodeRef,true>::push_back(&v26, *((*(v29 + v7) & 0xFFFFFFFFFFFFFFC0) + v8));
              v8 += 8;
            }

            while (v9 != v8);
            v6 = v29;
            v10 = (*(v29 + v7) & 0xFFFFFFFFFFFFFFC0);
            v11 = *(a1 + 280);
            *v10 = *v11;
            *v11 = v10;
            ++v7;
          }

          while (v7 != v4);
        }

        LODWORD(v30) = 0;
        if (v6 == v31)
        {
          break;
        }

        v12 = HIDWORD(v30);
        if (v26 == v28)
        {
          goto LABEL_17;
        }

        v29 = v26;
        v26 = v6;
        v30 = v27;
        LODWORD(v27) = 0;
        HIDWORD(v27) = v12;
        LODWORD(v4) = v30;
LABEL_37:
        if (!--v5)
        {
          goto LABEL_38;
        }
      }

      v12 = HIDWORD(v30);
LABEL_17:
      if (v12 >= v27)
      {
        v13 = 0;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v31, v27, 8);
        v13 = v30;
        if (HIDWORD(v27) < v30)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v26, v28, v30, 8);
          v13 = v30;
        }
      }

      v14 = v27;
      if (v13 >= v27)
      {
        v4 = v27;
      }

      else
      {
        v4 = v13;
      }

      if (v4)
      {
        v15 = 0;
        do
        {
          v16 = v26;
          v17 = *(v29 + v15);
          *(v29 + v15) = *(v26 + v15);
          *&v16[v15] = v17;
          v15 += 8;
        }

        while (8 * v4 != v15);
        v13 = v30;
        v14 = v27;
      }

      v18 = v13 - v14;
      if (v13 <= v14)
      {
        v19 = v14 - v13;
        if (v14 <= v13)
        {
          LODWORD(v4) = v13;
        }

        else
        {
          if (v4 != v14)
          {
            memcpy(v29 + 8 * v13, v26 + 8 * v4, 8 * (v14 - v4));
            v13 = v30;
          }

          LODWORD(v27) = v4;
          LODWORD(v30) = v13 + v19;
          LODWORD(v4) = v13 + v19;
        }
      }

      else
      {
        if (v4 != v13)
        {
          memcpy(v26 + 8 * v14, v29 + 8 * v4, 8 * (v13 - v4));
          v14 = v27;
        }

        LODWORD(v27) = v18 + v14;
        LODWORD(v30) = v4;
      }

      goto LABEL_37;
    }

LABEL_38:
    if (v4)
    {
      v20 = v4;
      v21 = v29;
      v22 = *(a1 + 280);
      v23 = *v22;
      do
      {
        v24 = *v21++;
        *(v24 & 0xFFFFFFFFFFFFFFC0) = v23;
        *v22 = v24 & 0xFFFFFFFFFFFFFFC0;
        v23 = v24 & 0xFFFFFFFFFFFFFFC0;
        --v20;
      }

      while (v20);
    }

    if (v26 != v28)
    {
      free(v26);
    }

    if (v29 != v31)
    {
      free(v29);
    }

    *(a1 + 272) = 0;
    *(a1 + 240) = 0u;
    *(a1 + 256) = 0u;
    *(a1 + 208) = 0u;
    *(a1 + 224) = 0u;
    *(a1 + 176) = 0u;
    *(a1 + 192) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 160) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  *(a1 + 276) = 0;
  v25 = *MEMORY[0x277D85DE8];

  JUMPOUT(0x25F891040);
}

void llvm::SmallVectorTemplateBase<llvm::IntervalMapImpl::NodeRef,true>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 8);
    LODWORD(v4) = *(a1 + 8);
  }

  *(*a1 + 8 * v4) = a2;
  ++*(a1 + 8);
}

uint64_t llvm::IntervalMapImpl::LeafNode<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::insertFrom(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a2;
  if (!v5)
  {
LABEL_11:
    if (v5 == a3)
    {
      v11 = (a1 + 16 * a3);
      *v11 = a4;
      v11[1] = a5;
      *(a1 + a3 + 256) = 0;
      return (a3 + 1);
    }

    v12 = a1 + 256;
    if (!*(a1 + 256 + v5))
    {
      v13 = (a1 + 16 * v5);
      if (a5 + 1 == *v13)
      {
        *v13 = a4;
        return a3;
      }
    }

    if (a3 != 16)
    {
      v14 = a3;
      do
      {
        *(a1 + 16 * v14) = *(a1 + 16 * (v14 - 1));
        *(v12 + v14) = *(v12 + v14 - 1);
        --v14;
      }

      while (v5 != v14);
      v15 = (a1 + 16 * v5);
      *v15 = a4;
      v15[1] = a5;
      *(v12 + v5) = 0;
      return (a3 + 1);
    }

    return 17;
  }

  v6 = (v5 - 1);
  v7 = a1 + 256;
  if (*(a1 + 256 + v6) || (v8 = a1 + 16 * v6, v10 = *(v8 + 8), v9 = (v8 + 8), v10 + 1 != a4))
  {
    if (v5 == 16)
    {
      return 17;
    }

    goto LABEL_11;
  }

  *a2 = v6;
  if (v5 == a3 || *(v7 + v5) || a5 + 1 != *(a1 + 16 * v5))
  {
    *v9 = a5;
  }

  else
  {
    *v9 = *(a1 + 16 * v5 + 8);
    if (v5 + 1 != a3)
    {
      do
      {
        *(a1 + 16 * v5) = *(a1 + 16 * (v5 + 1));
        *(v7 + v5) = *(v7 + (v5 + 1));
        LODWORD(v5) = v5 + 1;
      }

      while (a3 - 1 != v5);
    }

    return (a3 - 1);
  }

  return a3;
}

void llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::const_iterator::find(uint64_t a1, unint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 276);
  if (*(*a1 + 272))
  {
    if (v5)
    {
      v6 = 0;
      while (*(v4 + 136 + 8 * v6) < a2)
      {
        if (v5 == ++v6)
        {
          v6 = *(*a1 + 276);
          break;
        }
      }

      v7 = v5 | (v6 << 32);
    }

    else
    {
      v7 = 0;
    }

    *(a1 + 16) = 0;
    llvm::SmallVectorTemplateBase<llvm::IntervalMapImpl::Path::Entry,true>::push_back(a1 + 8, v4 + 8, v7);
    if (*(a1 + 16) && *(*(a1 + 8) + 12) < *(*(a1 + 8) + 8))
    {

      llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::const_iterator::pathFillFind(a1, a2);
    }
  }

  else
  {
    if (v5)
    {
      v8 = 0;
      v9 = (v4 + 8);
      while (1)
      {
        v10 = *v9;
        v9 += 2;
        if (v10 >= a2)
        {
          break;
        }

        if (v5 == ++v8)
        {
          v8 = *(*a1 + 276);
          break;
        }
      }

      v11 = v5 | (v8 << 32);
    }

    else
    {
      v11 = 0;
    }

    *(a1 + 16) = 0;
    v12 = a1 + 8;

    llvm::SmallVectorTemplateBase<llvm::IntervalMapImpl::Path::Entry,true>::push_back(v12, v4, v11);
  }
}

void llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::const_iterator::pathFillFind(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = a1 + 8;
  v5 = *(a1 + 8) + 16 * (v3 - 1);
  v6 = *(*a1 + 272);
  v7 = *(*v5 + 8 * *(v5 + 12));
  v8 = v6 - v3;
  if (v6 != v3)
  {
    do
    {
      v9 = 0;
      v10 = v7 & 0xFFFFFFFFFFFFFFC0;
      do
      {
        v11 = v9;
        v12 = *((v7 & 0xFFFFFFFFFFFFFFC0) + 0x60 + 8 * v9++);
      }

      while (v12 < a2);
      v13 = v11;
      llvm::SmallVectorTemplateBase<llvm::IntervalMapImpl::Path::Entry,true>::push_back(v4, v10, (v7 & 0x3F | (v11 << 32)) + 1);
      v7 = *(v10 + 8 * v13);
      --v8;
    }

    while (v8);
  }

  v14 = 0;
  do
  {
    v15 = v14;
    v16 = *((v7 & 0xFFFFFFFFFFFFFFC0) + 16 * v14++ + 8);
  }

  while (v16 < a2);

  llvm::SmallVectorTemplateBase<llvm::IntervalMapImpl::Path::Entry,true>::push_back(v4, v7 & 0xFFFFFFFFFFFFFFC0, (v7 & 0x3F | (v15 << 32)) + 1);
}

void llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::treeInsert(_DWORD *a1, unint64_t a2, unint64_t a3)
{
  v5 = a1;
  v106 = *MEMORY[0x277D85DE8];
  v6 = a1[4];
  if (!v6 || (v7 = *(a1 + 1), *(v7 + 12) >= *(v7 + 8)))
  {
    llvm::IntervalMapImpl::Path::legalizeForInsert((a1 + 2), *(*a1 + 272));
    v7 = *(v5 + 1);
    v6 = v5[4];
  }

  v8 = v6;
  v9 = v7 + 16 * v6;
  v10 = *(v9 - 4);
  if (!v10)
  {
    v11 = *(v9 - 16);
    if (*v11 <= a2)
    {
      goto LABEL_19;
    }

    LeftSibling = llvm::IntervalMapImpl::Path::getLeftSibling((v5 + 2), v8 - 1);
    if (!LeftSibling)
    {
      v10 = 0;
      **v5 = a2;
      goto LABEL_20;
    }

    if (*(LeftSibling + 176) || (v13 = LeftSibling & 0xFFFFFFFFFFFFFFC0, v14 = LeftSibling & 0x3F, v15 = ((LeftSibling & 0xFFFFFFFFFFFFFFC0) + 16 * v14 + 8), *((LeftSibling & 0xFFFFFFFFFFFFFFC0) + 16 * v14 + 8) + 1 != a2))
    {
LABEL_19:
      v10 = 0;
      goto LABEL_20;
    }

    llvm::IntervalMapImpl::Path::moveLeft((v5 + 2), v8 - 1);
    if (*v11 > a3 && (*(v11 + 176) || a3 + 1 != *v11))
    {
      v17 = v5[4];
      *v15 = a3;
      v18 = v17 - 1;
      if (v17 != 1)
      {
        v19 = *(v5 + 1);
        v20 = 16 * v18;
        while (1)
        {
          v21 = v20 - 16;
          if (v20 == 16)
          {
            break;
          }

          v22 = v19 + v20;
          v23 = *(v22 - 16);
          v25 = v22 - 8;
          LODWORD(v22) = *(v22 - 8);
          v24 = *(v25 + 4);
          *(v23 + 8 * v24 + 96) = a3;
          LODWORD(v23) = v22 - 1;
          v20 = v21;
          if (v24 != v23)
          {
            goto LABEL_76;
          }
        }

LABEL_75:
        *(*v19 + 8 * *(v19 + 12) + 128) = a3;
        goto LABEL_76;
      }

      goto LABEL_76;
    }

    a2 = *(v13 + 16 * v14);
    llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::treeErase(v5);
    v7 = *(v5 + 1);
    v8 = v5[4];
    v10 = *(v7 + 16 * v8 - 4);
  }

LABEL_20:
  v26 = v7 + 16 * v8;
  v27 = *(v26 - 8);
  v28 = v10 == v27;
  v29 = llvm::IntervalMapImpl::LeafNode<unsigned long long,char,11u,llvm::IntervalMapInfo<unsigned long long>>::insertFrom(*(v26 - 16), (v26 - 4), v27, a2, a3);
  if (v29 >= 0xC)
  {
    v30 = (v5[4] - 1);
    memset(v104, 0, 32);
    v31 = *(v5 + 1);
    v32 = *(v31 + 16 * v30 + 12);
    v33 = llvm::IntervalMapImpl::Path::getLeftSibling((v5 + 2), v30);
    v99 = a3;
    v96 = v33;
    if (v33)
    {
      v34 = (v33 & 0x3F) + 1;
      v105[0] = v34;
      v32 = (v34 + v32);
      v104[0] = v33 & 0xFFFFFFFFFFFFFFC0;
      v35 = 1;
    }

    else
    {
      v34 = 0;
      v35 = 0;
    }

    v36 = v31 + 16 * v30;
    v37 = *(v36 + 8);
    v105[v35] = v37;
    v38 = v37 + v34;
    v39 = v35 + 1;
    *(v104 | (8 * v35)) = *v36;
    RightSibling = llvm::IntervalMapImpl::Path::getRightSibling((v5 + 2), v30);
    if (RightSibling)
    {
      v41 = (RightSibling & 0x3F) + 1;
      v105[v39] = v41;
      v38 += v41;
      v104[v39] = RightSibling & 0xFFFFFFFFFFFFFFC0;
      v39 = v35 | 2;
    }

    v97 = a2;
    v98 = v5;
    v100 = v30;
    if (v38 + 1 <= (11 * v39))
    {
      v42 = 0;
    }

    else
    {
      if (v39 == 1)
      {
        v42 = 1;
      }

      else
      {
        v42 = v39 - 1;
      }

      v105[v39] = v105[v42];
      v104[v39] = v104[v42];
      v105[v42] = 0;
      v43 = *(*v5 + 280);
      v44 = *v43;
      if (*v43)
      {
        *v43 = *v44;
      }

      else
      {
        v44 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(v43 + 1, 192, 6);
      }

      *(v44 + 160) = 0u;
      *(v44 + 176) = 0u;
      *(v44 + 128) = 0u;
      *(v44 + 144) = 0u;
      *(v44 + 96) = 0u;
      *(v44 + 112) = 0u;
      *(v44 + 64) = 0u;
      *(v44 + 80) = 0u;
      *(v44 + 32) = 0u;
      *(v44 + 48) = 0u;
      v39 = (v39 + 1);
      *v44 = 0u;
      *(v44 + 16) = 0u;
      v104[v42] = v44;
    }

    v45 = v39;
    v46 = llvm::IntervalMapImpl::distribute(v39, v38, 0xBu, v105, v103, v32, 1);
    v47 = v39;
    v48 = v46;
    v101 = v46;
    v102 = v47 - 1;
    if (v47 != 1)
    {
      v95 = v42;
      v49 = v47 - 1;
      do
      {
        v50 = v105[v49];
        v51 = v103[v49];
        if (v50 != v51)
        {
          v52 = v49;
          do
          {
            if (!v52)
            {
              break;
            }

            v53 = *(&v104[4] + v52 + 1);
            v54 = llvm::IntervalMapImpl::NodeBase<std::pair<unsigned long long,unsigned long long>,char,11u>::adjustFromLeftSib(v104[v49], v50, *&v103[2 * v52 + 2], v53, v51 - v50);
            *(&v104[4] + v52 + 1) = v53 - v54;
            v50 = v105[v49] + v54;
            v105[v49] = v50;
            --v52;
          }

          while (v50 < v51);
        }

        --v49;
      }

      while (v49);
      v47 = v45;
      v42 = v95;
      v48 = v101;
      if (v45 >= 2)
      {
        v55 = 0;
        v56 = 1;
        do
        {
          v57 = v105[v55];
          v58 = v103[v55];
          if (v57 != v58)
          {
            v59 = v56;
            do
            {
              if (v47 == v59)
              {
                break;
              }

              v60 = v105[v59];
              v61 = llvm::IntervalMapImpl::NodeBase<std::pair<unsigned long long,unsigned long long>,char,11u>::adjustFromLeftSib(v104[v59], v60, v104[v55], v57, v57 - v58);
              v47 = v45;
              v105[v59] = v61 + v60;
              v57 = v105[v55] - v61;
              v105[v55] = v57;
              ++v59;
            }

            while (v57 < v58);
          }

          ++v55;
          ++v56;
        }

        while (v55 != v102);
      }
    }

    v5 = v98;
    if (v96)
    {
      llvm::IntervalMapImpl::Path::moveLeft((v98 + 8), v100);
      v47 = v45;
    }

    v62 = 0;
    v63 = v48;
    v64 = v47;
    v65 = v100;
    while (1)
    {
      v66 = v104[v62];
      v67 = v103[v62];
      v68 = v67 - 1;
      v69 = *(v66 + 16 * v68 + 8);
      if (v42 && v62 == v42)
      {
        v65 += llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::insertNode(v98, v65, v66 & 0xFFFFFFFFFFFFFFC0 | v68, v69);
      }

      else
      {
        v70 = *(v98 + 8);
        *(v70 + 16 * v65 + 8) = v67;
        if (v65)
        {
          *(*(v70 + 16 * (v65 - 1)) + 8 * *(v70 + 16 * (v65 - 1) + 12)) = *(*(v70 + 16 * (v65 - 1)) + 8 * *(v70 + 16 * (v65 - 1) + 12)) & 0xFFFFFFFFFFFFFFC0 | v68;
          v71 = *(v98 + 8);
          v72 = 16 * v65;
          while (1)
          {
            v73 = v72 - 16;
            if (v72 == 16)
            {
              break;
            }

            v74 = v71 + v72;
            v75 = *(v74 - 16);
            v77 = v74 - 8;
            LODWORD(v74) = *(v74 - 8);
            v76 = *(v77 + 4);
            *(v75 + 8 * v76 + 96) = v69;
            LODWORD(v75) = v74 - 1;
            v72 = v73;
            if (v76 != v75)
            {
              goto LABEL_61;
            }
          }

          *(*v71 + 8 * *(v71 + 12) + 128) = v69;
        }
      }

LABEL_61:
      if (v62 + 1 == v64)
      {
        break;
      }

      llvm::IntervalMapImpl::Path::moveRight((v98 + 8), v65);
      --v63;
      ++v62;
    }

    if (v62 != v101)
    {
      do
      {
        llvm::IntervalMapImpl::Path::moveLeft((v98 + 8), v65);
      }

      while (!__CFADD__(v63++, 1));
    }

    v79 = *(v98 + 8);
    *(v79 + 16 * v65 + 12) = HIDWORD(v101);
    v80 = (v79 + 16 * *(v98 + 16));
    v81 = *--v80;
    v82 = *(v80 - 1);
    v28 = v81 == v82;
    a3 = v99;
    v29 = llvm::IntervalMapImpl::LeafNode<unsigned long long,char,11u,llvm::IntervalMapInfo<unsigned long long>>::insertFrom(*(v80 - 3), v80, v82, v97, v99);
  }

  v83 = v5[4];
  v84 = *(v5 + 1);
  *(v84 + 16 * (v83 - 1) + 8) = v29;
  if (v83 != 1)
  {
    v85 = v84 + 16 * (v83 - 2);
    *(*v85 + 8 * *(v85 + 12)) = *(*v85 + 8 * *(v85 + 12)) & 0xFFFFFFFFFFFFFFC0 | (v29 - 1);
  }

  if (v28)
  {
    v86 = v5[4];
    v87 = v86 - 1;
    if (v86 != 1)
    {
      v19 = *(v5 + 1);
      v88 = 16 * v87;
      do
      {
        v89 = v88 - 16;
        if (v88 == 16)
        {
          goto LABEL_75;
        }

        v90 = v19 + v88;
        v91 = *(v90 - 16);
        v93 = v90 - 8;
        LODWORD(v90) = *(v90 - 8);
        v92 = *(v93 + 4);
        *(v91 + 8 * v92 + 96) = a3;
        LODWORD(v91) = v90 - 1;
        v88 = v89;
      }

      while (v92 == v91);
    }
  }

LABEL_76:
  v94 = *MEMORY[0x277D85DE8];
}

void llvm::IntervalMapImpl::Path::legalizeForInsert(llvm::IntervalMapImpl::Path *this, unsigned int a2)
{
  if (!*(this + 2) || *(*this + 12) >= *(*this + 8))
  {
    llvm::IntervalMapImpl::Path::moveLeft(this, a2);
    ++*(*this + 16 * a2 + 12);
  }
}

void llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::treeErase(uint64_t a1)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  v5 = *a1;
  v6 = *(a1 + 16);
  v7 = v4 + 16 * v6;
  v8 = *(v7 - 16);
  v9 = *(v7 - 8);
  if (v9 == 1)
  {
    v10 = *(v5 + 280);
    *v8 = *v10;
    *v10 = v8;
    llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::eraseNode(a1, *(v5 + 272));
  }

  else
  {
    v11 = *(v7 - 4);
    if (v11 + 1 != v9)
    {
      do
      {
        *&v8[2 * v11] = *&v8[2 * v11 + 2];
        *(v8 + v11 + 176) = *(v8 + v11 + 177);
        ++v11;
      }

      while (v9 - 1 != v11);
      v3 = *(a1 + 8);
      v6 = *(a1 + 16);
      v9 = *(v3 + 16 * v6 - 8);
    }

    v12 = *(v5 + 272);
    *(v3 + 16 * v12 + 8) = v9 - 1;
    if (v12)
    {
      v13 = v3 + 16 * (v12 - 1);
      *(*v13 + 8 * *(v13 + 12)) = *(*v13 + 8 * *(v13 + 12)) & 0xFFFFFFFFFFFFFFC0 | (v9 - 2);
      v3 = *(a1 + 8);
      v6 = *(a1 + 16);
    }

    if (*(v3 + 16 * v6 - 4) == v9 - 1)
    {
      v14 = *(v5 + 272);
      if (v14)
      {
        v15 = v8[2 * (v9 - 2) + 1];
        v16 = 16 * v14;
        while (1)
        {
          v17 = v16 - 16;
          if (v16 == 16)
          {
            break;
          }

          v18 = v3 + v16;
          v19 = *(v18 - 16);
          v21 = v18 - 8;
          LODWORD(v18) = *(v18 - 8);
          v20 = *(v21 + 4);
          *(v19 + 8 * v20 + 96) = v15;
          LODWORD(v19) = v18 - 1;
          v16 = v17;
          if (v20 != v19)
          {
            goto LABEL_13;
          }
        }

        *(*v3 + 8 * *(v3 + 12) + 128) = v15;
      }

LABEL_13:
      llvm::IntervalMapImpl::Path::moveRight(v2, v14);
    }
  }
}

uint64_t llvm::IntervalMapImpl::LeafNode<unsigned long long,char,11u,llvm::IntervalMapInfo<unsigned long long>>::insertFrom(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a2;
  if (!v5)
  {
LABEL_11:
    if (v5 == a3)
    {
      v11 = (a1 + 16 * a3);
      *v11 = a4;
      v11[1] = a5;
      *(a1 + a3 + 176) = 0;
      return (a3 + 1);
    }

    v12 = a1 + 176;
    if (!*(a1 + 176 + v5))
    {
      v13 = (a1 + 16 * v5);
      if (a5 + 1 == *v13)
      {
        *v13 = a4;
        return a3;
      }
    }

    if (a3 != 11)
    {
      v14 = a3;
      do
      {
        *(a1 + 16 * v14) = *(a1 + 16 * (v14 - 1));
        *(v12 + v14) = *(v12 + v14 - 1);
        --v14;
      }

      while (v5 != v14);
      v15 = (a1 + 16 * v5);
      *v15 = a4;
      v15[1] = a5;
      *(v12 + v5) = 0;
      return (a3 + 1);
    }

    return 12;
  }

  v6 = (v5 - 1);
  v7 = a1 + 176;
  if (*(a1 + 176 + v6) || (v8 = a1 + 16 * v6, v10 = *(v8 + 8), v9 = (v8 + 8), v10 + 1 != a4))
  {
    if (v5 == 11)
    {
      return 12;
    }

    goto LABEL_11;
  }

  *a2 = v6;
  if (v5 == a3 || *(v7 + v5) || a5 + 1 != *(a1 + 16 * v5))
  {
    *v9 = a5;
  }

  else
  {
    *v9 = *(a1 + 16 * v5 + 8);
    if (v5 + 1 != a3)
    {
      do
      {
        *(a1 + 16 * v5) = *(a1 + 16 * (v5 + 1));
        *(v7 + v5) = *(v7 + (v5 + 1));
        LODWORD(v5) = v5 + 1;
      }

      while (a3 - 1 != v5);
    }

    return (a3 - 1);
  }

  return a3;
}

void llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::eraseNode(uint64_t *a1, unsigned int a2)
{
  v4 = *a1;
  v6 = a1 + 1;
  v5 = a1[1];
  v7 = a2 - 1;
  if (a2 != 1)
  {
    v8 = v5 + 16 * v7;
    v9 = *v8;
    v10 = *(v8 + 8);
    if (v10 == 1)
    {
      v11 = *(v4 + 280);
      *v9 = *v11;
      *v11 = v9;
      llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::eraseNode(a1, a2 - 1);
    }

    else
    {
      v18 = *(v5 + 16 * v7 + 12);
      if (v18 + 1 != v10)
      {
        do
        {
          v9[v18] = v9[v18 + 1];
          v9[v18 + 12] = v9[v18 + 13];
          ++v18;
        }

        while (v10 - 1 != v18);
        v5 = *v6;
        v10 = *(*v6 + 16 * v7 + 8);
      }

      *(v5 + 16 * v7 + 8) = v10 - 1;
      v19 = v5 + 16 * (a2 - 2);
      v20 = (v10 - 2);
      *(*v19 + 8 * *(v19 + 12)) = *(*v19 + 8 * *(v19 + 12)) & 0xFFFFFFFFFFFFFFC0 | v20;
      v21 = *v6;
      v22 = *v6 + 16 * v7;
      if (*(v22 + 12) == v10 - 1)
      {
        v23 = v9[v20 + 12];
        v24 = (v22 - 8);
        v25 = a2 - 1;
        while (--v25)
        {
          v26 = *(v24 - 1);
          v28 = *v24;
          v27 = v24[1];
          v24 -= 4;
          *(v26 + 8 * v27 + 96) = v23;
          if (v27 != v28 - 1)
          {
            goto LABEL_21;
          }
        }

        *(*v21 + 8 * *(v21 + 12) + 128) = v23;
LABEL_21:
        llvm::IntervalMapImpl::Path::moveRight(a1 + 1, a2 - 1);
      }
    }

    goto LABEL_22;
  }

  v12 = *(v5 + 12);
  v13 = *(v4 + 276);
  if (v12 + 1 != v13)
  {
    v14 = v13 - 1;
    do
    {
      *(v4 + 8 + 8 * v12) = *(v4 + 8 + 8 * (v12 + 1));
      *(v4 + 136 + 8 * v12) = *(v4 + 136 + 8 * (v12 + 1));
      ++v12;
    }

    while (v14 != v12);
    v13 = *(v4 + 276);
    v5 = *v6;
  }

  *(v4 + 276) = v13 - 1;
  *(v5 + 8) = v13 - 1;
  if (v13 != 1)
  {
LABEL_22:
    if (*(a1 + 4))
    {
      v29 = *v6;
      if (*(*v6 + 12) < *(*v6 + 8))
      {
        v30 = *(*(v29 + 16 * v7) + 8 * *(v29 + 16 * v7 + 12));
        v31 = v29 + 16 * a2;
        *v31 = v30 & 0xFFFFFFFFFFFFFFC0;
        *(v31 + 8) = (v30 & 0x3F) + 1;
        *(*v6 + 16 * a2 + 12) = 0;
      }
    }

    return;
  }

  *(v4 + 272) = 0;
  *(v4 + 240) = 0u;
  *(v4 + 256) = 0u;
  *(v4 + 208) = 0u;
  *(v4 + 224) = 0u;
  *(v4 + 176) = 0u;
  *(v4 + 192) = 0u;
  *(v4 + 144) = 0u;
  *(v4 + 160) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *v4 = 0u;
  v15 = *a1 + 8 * (*(*a1 + 272) != 0);
  v16 = *(*a1 + 276);
  *(a1 + 4) = 0;
  v17 = (a1 + 1);

  llvm::SmallVectorTemplateBase<llvm::IntervalMapImpl::Path::Entry,true>::push_back(v17, v15, v16);
}

BOOL llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::insertNode(unint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  *&v119[12] = *MEMORY[0x277D85DE8];
  v113 = a1;
  v8 = (a1 + 8);
  v7 = *a1;
  v9 = a2 == 1;
  if (a2 == 1)
  {
    v10 = *(v7 + 276);
    if (v10 <= 0xF)
    {
      v11 = v7 + 8;
      for (i = *(*v8 + 12); i != v10; --v10)
      {
        *(v11 + 8 * v10) = *(v11 + 8 * (v10 - 1));
        *(v7 + 136 + 8 * v10) = *(v7 + 136 + 8 * (v10 - 1));
      }

      v9 = 0;
      *(v11 + 8 * i) = a3;
      *(v7 + 8 * i + 136) = a4;
      v13 = *(v7 + 276) + 1;
      *(v7 + 276) = v13;
      v14 = *v8;
      *(v14 + 8) = v13;
      v15 = *(*v14 + 8 * *(v14 + 12));
      *(v14 + 16) = v15 & 0xFFFFFFFFFFFFFFC0;
      *(v14 + 24) = (v15 & 0x3F) + 1;
      goto LABEL_87;
    }

    v107 = (a1 + 8);
    v16 = 0;
    v17 = 0;
    LODWORD(a1) = 0;
    v18 = v10 + 1;
    v19 = *(*v8 + 12);
    v20 = v18 >> 1;
    v21 = v18 & 1;
    LODWORD(v22) = 2;
    do
    {
      if (v16 >= v21)
      {
        v23 = v20;
      }

      else
      {
        v23 = v20 + 1;
      }

      *&v119[4 * v16 - 4] = v23;
      v24 = v19 - v17;
      v17 += v23;
      v25 = v22 == 2;
      v26 = v17 > v19;
      if (v25 && v26)
      {
        v22 = v16;
      }

      else
      {
        v22 = v22;
      }

      if (v25 && v26)
      {
        a1 = v24;
      }

      else
      {
        a1 = a1;
      }

      ++v16;
    }

    while (v16 != 2);
    v112 = a1;
    v27 = 0;
    v28 = 0;
    v29 = &v116;
    v30 = &v118;
    --*&v119[4 * v22 - 4];
    v116 = 0uLL;
    v31 = v7 + 8;
    v32 = v7 + 136;
    v33 = 0uLL;
    do
    {
      v34 = v27;
      v35 = *(v7 + 280);
      v36 = *v35;
      if (*v35)
      {
        *v35 = *v36;
      }

      else
      {
        v37 = v7;
        v36 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(v35 + 1, 192, 6);
        v33 = 0uLL;
        v7 = v37;
      }

      *(v36 + 160) = v33;
      *(v36 + 176) = v33;
      *(v36 + 128) = v33;
      *(v36 + 144) = v33;
      *(v36 + 96) = v33;
      *(v36 + 112) = v33;
      *(v36 + 64) = v33;
      *(v36 + 80) = v33;
      *(v36 + 32) = v33;
      *(v36 + 48) = v33;
      *v36 = v33;
      *(v36 + 16) = v33;
      v38 = *v30;
      if (*v30)
      {
        v39 = *v30;
        v40 = v36;
        v41 = v28;
        do
        {
          *v40 = *(v31 + 8 * v41);
          v40[12] = *(v32 + 8 * v41++);
          ++v40;
          --v39;
        }

        while (v39);
      }

      v28 += v38;
      *v29 = v36 & 0xFFFFFFFFFFFFFFC0 | (v38 - 1);
      v27 = 1;
      v29 = &v116 + 1;
      v30 = v119;
    }

    while ((v34 & 1) == 0);
    for (j = 0; j != 2; ++j)
    {
      v43 = *(&v116 + j);
      v44 = v7 + 8 * j;
      *(v44 + 136) = *((v43 & 0xFFFFFFFFFFFFFFC0) + 8 * (*&v119[4 * j - 4] - 1) + 0x60);
      *(v44 + 8) = v43;
    }

    v6 = 2;
    *(v7 + 276) = 2;
    ++*(v7 + 272);
    v8 = v107;
    llvm::IntervalMapImpl::Path::replaceRoot(v107, v31, 2, v22 | (v112 << 32));
    v4 = a4;
    v5 = a3;
  }

  v45 = (v6 - 1);
  llvm::IntervalMapImpl::Path::legalizeForInsert(v8, v6 - 1);
  v46 = *v8;
  v47 = *(*v8 + 16 * v45 + 8);
  if (v47 == 12)
  {
    v106 = v5;
    v116 = 0u;
    v117 = 0u;
    v48 = *(v46 + 16 * v45 + 12);
    LeftSibling = llvm::IntervalMapImpl::Path::getLeftSibling(v8, v45);
    v103 = LeftSibling;
    if (LeftSibling)
    {
      v118 = (LeftSibling & 0x3F) + 1;
      v48 = (v118 + v48);
      *&v116 = LeftSibling & 0xFFFFFFFFFFFFFFC0;
      v50 = (LeftSibling & 0x3F) + 13;
      v51 = 1;
    }

    else
    {
      v51 = 0;
      v50 = 12;
    }

    *&v119[4 * v51 - 4] = 12;
    v53 = v51 + 1;
    *(&v116 | (8 * v51)) = *(v46 + 16 * v45);
    RightSibling = llvm::IntervalMapImpl::Path::getRightSibling(v8, v45);
    if (RightSibling)
    {
      v55 = (RightSibling & 0x3F) + 1;
      *&v119[4 * v53 - 4] = v55;
      v50 += v55;
      *(&v116 + v53) = RightSibling & 0xFFFFFFFFFFFFFFC0;
      v53 = v51 | 2;
    }

    v104 = v45;
    v108 = v8;
    if (v50 >= 12 * v53)
    {
      if (v53 == 1)
      {
        v56 = 1;
      }

      else
      {
        v56 = v53 - 1;
      }

      *&v119[4 * v53 - 4] = *&v119[4 * v56 - 4];
      *(&v116 + v53) = *(&v116 + v56);
      v114 = v56;
      *&v119[4 * v56 - 4] = 0;
      v57 = *(*v113 + 280);
      v58 = *v57;
      if (*v57)
      {
        *v57 = *v58;
      }

      else
      {
        v58 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(v57 + 1, 192, 6);
      }

      *(v58 + 160) = 0u;
      *(v58 + 176) = 0u;
      *(v58 + 128) = 0u;
      *(v58 + 144) = 0u;
      *(v58 + 96) = 0u;
      *(v58 + 112) = 0u;
      *(v58 + 64) = 0u;
      *(v58 + 80) = 0u;
      *(v58 + 32) = 0u;
      *(v58 + 48) = 0u;
      v53 = (v53 + 1);
      *v58 = 0u;
      *(v58 + 16) = 0u;
      *(&v116 + v114) = v58;
    }

    else
    {
      v114 = 0;
    }

    v111 = llvm::IntervalMapImpl::distribute(v53, v50, 0xCu, &v118, v115, v48, 1);
    v110 = v4;
    if (v53 != 1)
    {
      v59 = (v53 - 1);
      do
      {
        v60 = *&v119[4 * v59 - 4];
        v61 = v115[v59];
        if (v60 != v61)
        {
          v62 = v59;
          do
          {
            if (!v62)
            {
              break;
            }

            v63 = *(&v117 + v62 + 3);
            v64 = llvm::IntervalMapImpl::NodeBase<llvm::IntervalMapImpl::NodeRef,unsigned long long,12u>::adjustFromLeftSib(*(&v116 + v59), v60, *&v115[2 * v62 + 2], v63, v61 - v60);
            *(&v117 + v62 + 3) = v63 - v64;
            v60 = *&v119[4 * v59 - 4] + v64;
            *&v119[4 * v59 - 4] = v60;
            --v62;
          }

          while (v60 < v61);
        }

        --v59;
      }

      while (v59);
      if (v53 >= 2)
      {
        v65 = 0;
        v66 = 1;
        do
        {
          v67 = *&v119[4 * v65 - 4];
          v68 = v115[v65];
          if (v67 != v68)
          {
            v69 = v66;
            do
            {
              if (v53 == v69)
              {
                break;
              }

              v70 = *&v119[4 * v69 - 4];
              v71 = llvm::IntervalMapImpl::NodeBase<llvm::IntervalMapImpl::NodeRef,unsigned long long,12u>::adjustFromLeftSib(*(&v116 + v69), v70, *(&v116 + v65), v67, v67 - v68);
              *&v119[4 * v69 - 4] = v71 + v70;
              v67 = *&v119[4 * v65 - 4] - v71;
              *&v119[4 * v65 - 4] = v67;
              ++v69;
            }

            while (v67 < v68);
          }

          ++v65;
          ++v66;
        }

        while (v65 != v53 - 1);
      }
    }

    v8 = v108;
    if (v103)
    {
      llvm::IntervalMapImpl::Path::moveLeft(v108, v104);
    }

    v72 = 0;
    LOBYTE(inserted) = 0;
    v74 = v111;
    v75 = v104;
    while (1)
    {
      v76 = *(&v116 + v72);
      v77 = v115[v72];
      v78 = v77 - 1;
      v79 = *(v76 + 8 * v78 + 96);
      if (v114 && v72 == v114)
      {
        inserted = llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::insertNode(v113, v75, v76 & 0xFFFFFFFFFFFFFFC0 | v78, v79);
        v75 = (v75 + inserted);
      }

      else
      {
        v80 = *v108;
        *(*v108 + 16 * v75 + 8) = v77;
        if (v75)
        {
          *(*(v80 + 16 * (v75 - 1)) + 8 * *(v80 + 16 * (v75 - 1) + 12)) = *(*(v80 + 16 * (v75 - 1)) + 8 * *(v80 + 16 * (v75 - 1) + 12)) & 0xFFFFFFFFFFFFFFC0 | v78;
          v81 = *v108;
          v82 = 16 * v75;
          while (1)
          {
            v83 = v82 - 16;
            if (v82 == 16)
            {
              break;
            }

            v84 = v81 + v82;
            v85 = *(v84 - 4);
            *(*(v84 - 16) + 8 * v85 + 96) = v79;
            v86 = *(v84 - 8) - 1;
            v82 = v83;
            if (v85 != v86)
            {
              goto LABEL_70;
            }
          }

          *(*v81 + 8 * *(v81 + 12) + 128) = v79;
        }
      }

LABEL_70:
      if (v72 + 1 == v53)
      {
        break;
      }

      llvm::IntervalMapImpl::Path::moveRight(v108, v75);
      --v74;
      ++v72;
    }

    if (v72 != v111)
    {
      do
      {
        llvm::IntervalMapImpl::Path::moveLeft(v108, v75);
      }

      while (!__CFADD__(v74++, 1));
    }

    v46 = *v108;
    *(*v108 + 16 * v75 + 12) = HIDWORD(v111);
    v9 = inserted;
    v5 = v106;
    v45 = v104 + (inserted & 1);
    v47 = *(v46 + 16 * v45 + 8);
    v52 = v104 + (inserted & 1);
    v4 = v110;
  }

  else
  {
    v52 = v6 - 1;
  }

  v88 = (v46 + 16 * v45);
  v89 = *v88;
  for (k = *(v88 + 3); k != v47; --v47)
  {
    *(v89 + 8 * v47) = *(v89 + 8 * (v47 - 1));
    *(v89 + 96 + 8 * v47) = *(v89 + 96 + 8 * (v47 - 1));
  }

  v91 = (v89 + 8 * k);
  *v91 = v5;
  v91[12] = v4;
  v92 = *v8;
  v93 = *v8 + 16 * v45;
  v94 = *(v93 + 8);
  *(v93 + 8) = v94 + 1;
  if (v52)
  {
    *(*(v92 + 16 * (v52 - 1)) + 8 * *(v92 + 16 * (v52 - 1) + 12)) = *(*(v92 + 16 * (v52 - 1)) + 8 * *(v92 + 16 * (v52 - 1) + 12)) & 0xFFFFFFFFFFFFFFC0 | v94;
    v92 = *v8;
    v93 = *v8 + 16 * v45;
    v95 = *(v93 + 12);
    if (v95 == *(v93 + 8) - 1)
    {
      v96 = (v93 - 8);
      while (--v45)
      {
        v97 = v96[1];
        *(*(v96 - 1) + 8 * v97 + 96) = v4;
        v98 = *v96;
        v96 -= 4;
        if (v97 != v98 - 1)
        {
          goto LABEL_86;
        }
      }

      *(*v92 + 8 * *(v92 + 12) + 128) = v4;
    }
  }

  else
  {
    v95 = *(v93 + 12);
  }

LABEL_86:
  v99 = *(*v93 + 8 * v95);
  v100 = v92 + 16 * (v52 + 1);
  *v100 = v99 & 0xFFFFFFFFFFFFFFC0;
  *(v100 + 8) = (v99 & 0x3F) + 1;
LABEL_87:
  v101 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t llvm::IntervalMapImpl::NodeBase<std::pair<unsigned long long,unsigned long long>,char,11u>::adjustFromLeftSib(_OWORD *a1, unsigned int a2, uint64_t a3, unsigned int a4, int a5)
{
  if (a5 < 1)
  {
    v17 = 11 - a4;
    if (-a5 < a2)
    {
      LODWORD(v18) = -a5;
    }

    else
    {
      LODWORD(v18) = a2;
    }

    if (v17 >= v18)
    {
      v18 = v18;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      v19 = a1 + 11;
      v20 = a1;
      v21 = v18;
      do
      {
        v22 = *v20++;
        *(a3 + 16 * a4) = v22;
        LOBYTE(v22) = *v19++;
        *(a3 + 176 + a4++) = v22;
        --v21;
      }

      while (v21);
    }

    if (v18 != a2)
    {
      v23 = a1;
      v24 = a1 + 11;
      v25 = v18;
      do
      {
        *v23++ = a1[v25];
        *v24++ = *(a1 + v25++ + 176);
      }

      while (a2 != v25);
    }

    return -v18;
  }

  else
  {
    LODWORD(v5) = 11 - a2;
    if (a4 >= a5)
    {
      v6 = a5;
    }

    else
    {
      v6 = a4;
    }

    if (v5 >= v6)
    {
      v5 = v6;
    }

    else
    {
      v5 = v5;
    }

    if (a2)
    {
      v7 = a2 - 1;
      v8 = a1 + v7 + 176;
      v9 = &a1[v7];
      v10 = -a2;
      v11 = v7 + v5;
      do
      {
        v12 = *v9--;
        a1[v11] = v12;
        LOBYTE(v12) = *v8--;
        *(a1 + v11-- + 176) = v12;
      }

      while (!__CFADD__(v10++, 1));
    }

    if (v5)
    {
      v14 = a4 - v5;
      v15 = a1 + 11;
      v16 = v5;
      do
      {
        *a1++ = *(a3 + 16 * v14);
        *v15++ = *(a3 + 176 + v14++);
        --v16;
      }

      while (v16);
    }
  }

  return v5;
}

uint64_t llvm::IntervalMapImpl::NodeBase<llvm::IntervalMapImpl::NodeRef,unsigned long long,12u>::adjustFromLeftSib(void *a1, unsigned int a2, uint64_t a3, unsigned int a4, int a5)
{
  if (a5 < 1)
  {
    v13 = 12 - a4;
    if (-a5 < a2)
    {
      LODWORD(v14) = -a5;
    }

    else
    {
      LODWORD(v14) = a2;
    }

    if (v13 >= v14)
    {
      v14 = v14;
    }

    else
    {
      v14 = v13;
    }

    if (v14)
    {
      v15 = a1;
      v16 = v14;
      do
      {
        *(a3 + 8 * a4) = *v15;
        *(a3 + 96 + 8 * a4++) = v15[12];
        ++v15;
        --v16;
      }

      while (v16);
    }

    if (v14 != a2)
    {
      v17 = a1;
      v18 = v14;
      do
      {
        *v17 = a1[v18];
        v17[12] = a1[v18++ + 12];
        ++v17;
      }

      while (a2 != v18);
    }

    return -v14;
  }

  else
  {
    LODWORD(v5) = 12 - a2;
    if (a4 >= a5)
    {
      v6 = a5;
    }

    else
    {
      v6 = a4;
    }

    if (v5 >= v6)
    {
      v5 = v6;
    }

    else
    {
      v5 = v5;
    }

    if (a2)
    {
      v7 = &a1[a2 - 1];
      v8 = -a2;
      v9 = a2 - 1 + v5;
      do
      {
        a1[v9] = *v7;
        a1[v9 + 12] = v7[12];
        --v7;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
    }

    if (v5)
    {
      v11 = a4 - v5;
      v12 = v5;
      do
      {
        *a1 = *(a3 + 8 * v11);
        a1[12] = *(a3 + 96 + 8 * v11++);
        ++a1;
        --v12;
      }

      while (v12);
    }
  }

  return v5;
}

void llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::const_iterator::advanceTo(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return;
  }

  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (*(v4 + 12) >= *(v4 + 8))
  {
    return;
  }

  v7 = *a1;
  v8 = v4 + 16 * v2;
  if (!*(*a1 + 272))
  {
    v23 = *(v8 - 4);
    v24 = *(v7 + 276);
    if (v23 != v24)
    {
      while (*(v7 + 16 * v23 + 8) < a2)
      {
        if (v24 == ++v23)
        {
          v23 = *(v7 + 276);
          break;
        }
      }
    }

    *(v8 - 4) = v23;
    return;
  }

  v9 = *(v8 - 16);
  if (*(v9 + 16 * (*(v8 - 8) - 1) + 8) >= a2)
  {
    v25 = *(v8 - 4);
    do
    {
      v26 = *(v9 + 16 * v25++ + 8);
    }

    while (v26 < a2);
    *(v8 - 4) = v25 - 1;
    return;
  }

  *(a1 + 16) = v2 - 1;
  v10 = v2 - 2;
  if (v2 == 2)
  {
    v27 = *(v4 + 12);
    goto LABEL_25;
  }

  v11 = (v2 - 3);
  if (v2 != 3)
  {
    if (*(*(v4 + 16 * v11) + 8 * *(v4 + 16 * v11 + 12) + 96) >= a2)
    {
LABEL_11:
      v16 = (v4 + 16 * v10);
      v17 = *v16;
      v20 = *(v16 + 3);
      v18 = v16 + 3;
      v19 = v20;
      v21 = v17 + 96;
      do
      {
        v22 = *(v21 + 8 * v19++);
      }

      while (v22 < a2);
      *v18 = v19 - 1;
      goto LABEL_35;
    }

    v12 = (v4 + 16 * v11 - 4);
    v13 = v11 - 1;
    while (1)
    {
      *(a1 + 16) = v10;
      if (!v13)
      {
        break;
      }

      v14 = *(v12 - 3);
      v15 = *v12;
      v12 -= 4;
      --v10;
      --v13;
      if (*(v14 + 8 * v15 + 96) >= a2)
      {
        goto LABEL_11;
      }
    }
  }

  v27 = *(v4 + 12);
  if (*(v7 + 8 * v27 + 136) >= a2)
  {
    v29 = *(v4 + 28);
    do
    {
      v30 = *(*(v4 + 16) + 96 + 8 * v29++);
    }

    while (v30 < a2);
    *(v4 + 28) = v29 - 1;
LABEL_35:

    llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::const_iterator::pathFillFind(a1, a2);
    return;
  }

LABEL_25:
  v28 = *(v7 + 276);
  if (v27 != v28)
  {
    while (*(v7 + 136 + 8 * v27) < a2)
    {
      v27 = (v27 + 1);
      if (v28 == v27)
      {
        v27 = *(v7 + 276);
        break;
      }
    }
  }

  *(a1 + 16) = 0;
  llvm::SmallVectorTemplateBase<llvm::IntervalMapImpl::Path::Entry,true>::push_back(a1 + 8, v7 + 8, v28 | (v27 << 32));
  if (*(a1 + 16) && *(*v5 + 12) < *(*v5 + 8))
  {
    goto LABEL_35;
  }
}

void llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>,mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>::destroyAll(uint64_t *a1)
{
  v1 = *(a1 + 4);
  if (v1)
  {
    v2 = *a1;
    v3 = 320 * v1;
    do
    {
      if ((*v2 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if ((*(v2 + 188) & 1) == 0)
        {
          free(*(v2 + 168));
        }

        if ((*(v2 + 36) & 1) == 0)
        {
          free(*(v2 + 16));
        }
      }

      v2 += 320;
      v3 -= 320;
    }

    while (v3);
  }
}

double mlir::Region::getOps<mlir::pdl_interp::FuncOp>(uint64_t a1, void *a2)
{
  v4 = a2[1];
  if (*a2 == a2)
  {
    goto LABEL_11;
  }

  while (v4 != a2)
  {
    v5 = v4 - 1;
    if (!v4)
    {
      v5 = 0;
    }

    if (v5[4] != v5 + 4)
    {
      break;
    }

    v4 = v4[1];
  }

  if (v4 == a2)
  {
LABEL_11:
    v7 = 0;
  }

  else
  {
    v6 = v4 - 1;
    if (!v4)
    {
      v6 = 0;
    }

    v7 = v6[5];
  }

  v14 = a2;
  *&v12 = a2;
  *(&v12 + 1) = v4;
  *&v13 = v7;
  *(&v13 + 1) = a2;
  v15 = mlir::detail::op_filter_iterator<mlir::pdl_interp::FuncOp,mlir::Region::OpIterator>::filter;
  llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v12);
  v8 = v13;
  *a1 = v12;
  *(a1 + 16) = v8;
  *(a1 + 32) = v14;
  *(a1 + 48) = v15;
  *&v12 = a2;
  *(&v12 + 1) = a2;
  *&v13 = 0;
  *(&v13 + 1) = a2;
  v14 = a2;
  v15 = mlir::detail::op_filter_iterator<mlir::pdl_interp::FuncOp,mlir::Region::OpIterator>::filter;
  llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v12);
  v9 = v13;
  *(a1 + 64) = v12;
  *(a1 + 80) = v9;
  result = *&v14;
  *(a1 + 96) = v14;
  v11 = v15;
  *(a1 + 56) = mlir::detail::op_iterator<mlir::pdl_interp::FuncOp,mlir::Region::OpIterator>::unwrap;
  *(a1 + 112) = v11;
  *(a1 + 120) = mlir::detail::op_iterator<mlir::pdl_interp::FuncOp,mlir::Region::OpIterator>::unwrap;
  return result;
}

void anonymous namespace::ByteCodeWriter::appendPDLValueList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a1 + 24), a3);
  if (v3)
  {
    v6 = (a2 + 24);
    do
    {
      v7 = *v6;
      v6 += 4;
      v9 = *(a1 + 24);
      v8 = *(a1 + 32);
      v11 = v7;
      v10 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v8, &v11);
      llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v9, *v10);
      --v3;
    }

    while (v3);
  }
}

uint64_t *llvm::StringMap<unsigned short,llvm::MallocAllocator>::try_emplace_with_hash<>(llvm::StringMapImpl *a1, const void *a2, size_t a3, int a4)
{
  v7 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  i = (*a1 + 8 * v7);
  v9 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v9)
  {
    while (!v9 || v9 == -8)
    {
      v10 = i[1];
      ++i;
      v9 = v10;
    }

    return i;
  }

  buffer = llvm::allocate_buffer((a3 + 17), 8uLL);
  v13 = buffer;
  v14 = buffer + 16;
  if (a3)
  {
    memcpy(buffer + 16, a2, a3);
  }

  v14[a3] = 0;
  *v13 = a3;
  *(v13 + 4) = 0;
  *i = v13;
  ++*(a1 + 3);
    ;
  }

  return i;
}

void anonymous namespace::ByteCodeWriter::appendPDLValueKind(uint64_t a1, void **a2)
{
  v2 = (*a2)[17];
  if (v2 == &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id)
  {
    v3 = 0;
  }

  else if (v2 == &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id)
  {
    v3 = 1;
  }

  else if (v2 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
  {
    if (*(*a2[1] + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
    {
      v3 = 3;
    }

    else
    {
      v3 = 5;
    }
  }

  else if (v2 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4 * (v2 == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
  }

  llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a1 + 24), v3);
}

void anonymous namespace::ByteCodeWriter::append(_anonymous_namespace_::ByteCodeWriter *this, mlir::Block *a2)
{
  v9 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>,mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>::LookupBucketFor<mlir::Block *>(*this, *(this + 4), a2, &v9);
  v5 = v9;
  if (v4)
  {
    goto LABEL_7;
  }

  __src = v9;
  v6 = *(this + 2);
  v7 = *(this + 4);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
    goto LABEL_9;
  }

  if (v7 + ~v6 - *(this + 3) <= v7 >> 3)
  {
LABEL_9:
    llvm::DenseMap<mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>::grow(this, v7);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>,mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>::LookupBucketFor<mlir::Block *>(*this, *(this + 4), a2, &__src);
    v6 = *(this + 2);
    v5 = __src;
  }

  *(this + 2) = v6 + 1;
  if (*v5 != -4096)
  {
    --*(this + 3);
  }

  *v5 = a2;
  v5[1] = v5 + 3;
  v5[2] = 0x400000000;
LABEL_7:
  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back((v5 + 1), *(*(this + 3) + 8));
  v8 = *(this + 3);
  LODWORD(__src) = 0;
  llvm::SmallVectorImpl<unsigned short>::append<unsigned short const*,void>(v8, &__src, &__src + 4);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>,mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>::LookupBucketFor<mlir::Block *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 40 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 40 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

void *llvm::DenseMap<mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((40 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 40 * v10 - 40;
      v13 = vdupq_n_s64(v12 / 0x28);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[5] = -4096;
        }

        v11 += 2;
        result += 10;
      }

      while (((v12 / 0x28 + 2) & 0xFFFFFFFFFFFFFFELL) != v11);
    }

    if (v3)
    {
      v15 = (v4 + 24);
      v16 = 40 * v3;
      do
      {
        v17 = *(v15 - 3);
        if ((v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v26 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>,mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>::LookupBucketFor<mlir::Block *>(*a1, *(a1 + 16), v17, &v26);
          v18 = v26;
          *v26 = *(v15 - 3);
          v18[2] = 0x400000000;
          v18[1] = v18 + 3;
          v19 = (v18 + 1);
          if (*(v15 - 2))
          {
            llvm::SmallVectorImpl<unsigned int>::operator=(v19, (v15 - 2));
          }

          ++*(a1 + 8);
          v20 = *(v15 - 2);
          if (v15 != v20)
          {
            free(v20);
          }
        }

        v15 += 5;
        v16 -= 40;
      }

      while (v16);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = 40 * v21 - 40;
    v24 = vdupq_n_s64(v23 / 0x28);
    do
    {
      v25 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(vdupq_n_s64(v22), xmmword_25D0A0500)));
      if (v25.i8[0])
      {
        *result = -4096;
      }

      if (v25.i8[4])
      {
        result[5] = -4096;
      }

      v22 += 2;
      result += 10;
    }

    while (((v23 / 0x28 + 2) & 0xFFFFFFFFFFFFFFELL) != v22);
  }

  return result;
}

void llvm::SmallVectorImpl<unsigned short>::append<unsigned short const*,void>(void *a1, _BYTE *__src, _BYTE *a3)
{
  v6 = a3 - __src;
  v7 = a1[1];
  v8 = v7 + ((a3 - __src) >> 1);
  if (a1[2] < v8)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, a1 + 3, v8, 2);
    v7 = a1[1];
  }

  if (__src != a3)
  {
    memcpy((*a1 + 2 * v7), __src, v6);
    v7 = a1[1];
  }

  a1[1] = v7 + (v6 >> 1);
}

void anonymous namespace::ByteCodeWriter::append<mlir::detail::TypedValue<mlir::pdl::PDLType>,mlir::SuccessorRange>(_anonymous_namespace_::ByteCodeWriter *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 3);
  v7 = *(a1 + 4);
  v12 = a2;
  v9 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v7, &v12);
  llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v8, *v9);
  if (a4)
  {
    v10 = (a3 + 24);
    do
    {
      v11 = *v10;
      v10 += 4;
      --a4;
    }

    while (a4);
  }
}

uint64_t anonymous namespace::Generator::getMemIndex<mlir::Attribute>(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v4 = **(a1 + 216) + ((*(*(a1 + 184) + 8) - **(a1 + 184)) >> 3);
  llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>,void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>::try_emplace<unsigned long>(&v5, a1 + 120, &v7, &v4);
  if (v6 == 1)
  {
    std::vector<void const*>::push_back[abi:nn200100](*(a1 + 184), &v7);
  }

  return v5 + 8;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>,void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>::try_emplace<unsigned long>(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v14 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>,void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>::LookupBucketFor<void const*>(*a2, *(a2 + 16), *a3, &v14);
  v9 = v14;
  v10 = *(a2 + 16);
  if (result)
  {
    v11 = 0;
    goto LABEL_8;
  }

  v15 = v14;
  v12 = *(a2 + 8);
  if (4 * v12 + 4 >= 3 * v10)
  {
    v10 *= 2;
    goto LABEL_10;
  }

  if (v10 + ~v12 - *(a2 + 12) <= v10 >> 3)
  {
LABEL_10:
    llvm::DenseMap<void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>::grow(a2, v10);
    result = llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>,void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>::LookupBucketFor<void const*>(*a2, *(a2 + 16), *a3, &v15);
    v12 = *(a2 + 8);
    v9 = v15;
  }

  *(a2 + 8) = v12 + 1;
  if (*v9 != -4096)
  {
    --*(a2 + 12);
  }

  *v9 = *a3;
  *(v9 + 8) = *a4;
  v10 = *(a2 + 16);
  v11 = 1;
LABEL_8:
  v13 = *a2 + 16 * v10;
  *a1 = v9;
  *(a1 + 8) = v13;
  *(a1 + 16) = v11;
  return result;
}

void std::vector<void const*>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::vector<void const*>::__throw_length_error[abi:nn200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<void const*>>(v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>,void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>::LookupBucketFor<void const*>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 16 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 16 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

char *llvm::DenseMap<void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 16;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 4;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 16 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>,void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>::LookupBucketFor<void const*>(*a1, *(a1 + 16), v20, &v30);
          v21 = v30;
          *v30 = *v19;
          *(v21 + 4) = *(v19 + 8);
          ++*(a1 + 8);
        }

        v19 += 16;
        v18 -= 16;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v22 + 0xFFFFFFFFFFFFFFFLL;
    v25 = v24 & 0xFFFFFFFFFFFFFFFLL;
    v26 = (v24 & 0xFFFFFFFFFFFFFFFLL) - (v24 & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = result + 16;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_25D0A0500)));
      if (v29.i8[0])
      {
        *(v28 - 2) = -4096;
      }

      if (v29.i8[4])
      {
        *v28 = -4096;
      }

      v23 += 2;
      v28 += 4;
    }

    while (v26 != v23);
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<void const*>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void anonymous namespace::ByteCodeWriter::append<anonymous namespace::OpCode,mlir::detail::TypedValue<mlir::pdl::OperationType>,unsigned int,unsigned short,mlir::SuccessorRange>(uint64_t a1, __int16 a2, unint64_t a3, int a4, __int16 a5, uint64_t a6, uint64_t a7)
{
  llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a1 + 24), a2);
  v14 = *(a1 + 24);
  v13 = *(a1 + 32);
  v19 = a3;
  v15 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v13, &v19);
  llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v14, *v15);
  v16 = *(a1 + 24);
  __src = a4;
  llvm::SmallVectorImpl<unsigned short>::append<unsigned short const*,void>(v16, &__src, &v21);
  llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a1 + 24), a5);
  if (a7)
  {
    v17 = (a6 + 24);
    do
    {
      v18 = *v17;
      v17 += 4;
      --a7;
    }

    while (a7);
  }
}

void anonymous namespace::ByteCodeWriter::append<mlir::OperationName>(void *a1, uint64_t a2, uint64_t a3)
{
  v9 = a3;
  v6 = **(a2 + 216) + ((*(*(a2 + 184) + 8) - **(a2 + 184)) >> 3);
  llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>,void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>::try_emplace<unsigned long>(&v7, a2 + 120, &v9, &v6);
  if (v8 == 1)
  {
    std::vector<void const*>::push_back[abi:nn200100](*(a2 + 184), &v9);
  }

  v5 = *(v7 + 8);

  llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(a1, v5);
}

uint64_t anonymous namespace::Generator::getMemIndex<mlir::Type>(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v4 = **(a1 + 216) + ((*(*(a1 + 184) + 8) - **(a1 + 184)) >> 3);
  llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>,void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>::try_emplace<unsigned long>(&v5, a1 + 120, &v7, &v4);
  if (v6 == 1)
  {
    std::vector<void const*>::push_back[abi:nn200100](*(a1 + 184), &v7);
  }

  return v5 + 8;
}

void anonymous namespace::ByteCodeWriter::append<anonymous namespace::OpCode,mlir::detail::TypedValue<mlir::pdl::RangeType>,mlir::ArrayAttr,mlir::SuccessorRange>(uint64_t a1, __int16 a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a1 + 24), a2);
  v12 = *(a1 + 24);
  v11 = *(a1 + 32);
  v14 = a3;
  v13 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v11, &v14);
  llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v12, *v13);
}

void anonymous namespace::ByteCodeWriter::append<mlir::ArrayAttr,mlir::SuccessorRange>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v7 = (a3 + 24);
    do
    {
      v8 = *v7;
      v7 += 4;
      --a4;
    }

    while (a4);
  }
}

void anonymous namespace::ByteCodeWriter::append<mlir::ArrayAttr>(void *a1, uint64_t a2, uint64_t a3)
{
  v9 = a3;
  v6 = **(a2 + 216) + ((*(*(a2 + 184) + 8) - **(a2 + 184)) >> 3);
  llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>,void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>::try_emplace<unsigned long>(&v7, a2 + 120, &v9, &v6);
  if (v8 == 1)
  {
    std::vector<void const*>::push_back[abi:nn200100](*(a2 + 184), &v9);
  }

  v5 = *(v7 + 8);

  llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(a1, v5);
}

void anonymous namespace::ByteCodeWriter::append<mlir::detail::TypedValue<mlir::pdl::OperationType>,mlir::detail::TypedValue<mlir::pdl::ValueType>>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v11 = a2;
  v7 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v5, &v11);
  llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v6, *v7);
  v9 = *(a1 + 24);
  v8 = *(a1 + 32);
  v11 = a3;
  v10 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v8, &v11);

  llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v9, v10);
}

void anonymous namespace::ByteCodeWriter::append<anonymous namespace::OpCode,unsigned int,mlir::detail::TypedValue<mlir::pdl::OperationType>>(uint64_t a1, __int16 a2, int a3, unint64_t a4)
{
  llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a1 + 24), a2);
  v7 = *(a1 + 24);
  __src = a3;
  llvm::SmallVectorImpl<unsigned short>::append<unsigned short const*,void>(v7, &__src, &v12);
  v9 = *(a1 + 24);
  v8 = *(a1 + 32);
  v12 = a4;
  v10 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v8, &v12);
  llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v9, *v10);
}

uint64_t llvm::SmallVectorImpl<mlir::detail::PDLByteCodePattern>::emplace_back<mlir::detail::PDLByteCodePattern>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {

    return llvm::SmallVectorTemplateBase<mlir::detail::PDLByteCodePattern,false>::growAndEmplaceBack<mlir::detail::PDLByteCodePattern>(a1, a2);
  }

  else
  {
    v5 = *a1 + 104 * v4;
    v6 = *a2;
    *(v5 + 16) = *(a2 + 16);
    *v5 = v6;
    *(v5 + 24) = v5 + 40;
    result = v5 + 24;
    *(v5 + 32) = 0x200000000;
    if (*(a2 + 32))
    {
      result = llvm::SmallVectorImpl<mlir::OperationName>::operator=(result, a2 + 24);
    }

    v8 = *(a2 + 56);
    v9 = (v5 + 88);
    *(v5 + 72) = v5 + 88;
    v10 = v5 + 72;
    *(v10 - 16) = v8;
    *(v10 + 8) = 0;
    if (*(a2 + 80))
    {
      result = llvm::SmallVectorImpl<llvm::StringRef>::operator=(v10, a2 + 72);
    }

    *v9 = *(a2 + 88);
    ++*(a1 + 8);
  }

  return result;
}

uint64_t llvm::SmallVectorTemplateBase<mlir::detail::PDLByteCodePattern,false>::growAndEmplaceBack<mlir::detail::PDLByteCodePattern>(uint64_t a1, __int128 *a2)
{
  v28 = 0;
  v4 = (a1 + 16);
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 104, &v28);
  v6 = &v5[104 * *(a1 + 8)];
  v7 = *a2;
  *(v6 + 2) = *(a2 + 2);
  *v6 = v7;
  *(v6 + 3) = v6 + 40;
  *(v6 + 4) = 0x200000000;
  if (*(a2 + 8))
  {
    llvm::SmallVectorImpl<mlir::OperationName>::operator=((v6 + 24), a2 + 24);
  }

  v8 = *(a2 + 56);
  v9 = v6 + 88;
  *(v6 + 9) = v6 + 88;
  v10 = (v6 + 72);
  *(v10 - 16) = v8;
  *(v10 + 8) = 0;
  if (*(a2 + 20))
  {
    llvm::SmallVectorImpl<llvm::StringRef>::operator=(v10, a2 + 72);
  }

  *v9 = *(a2 + 88);
  v11 = *a1;
  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = 0;
    v14 = &v11[104 * v12];
    do
    {
      v15 = &v11[v13];
      v16 = &v5[v13];
      v17 = *&v11[v13];
      *(v16 + 2) = *&v11[v13 + 16];
      *v16 = v17;
      *&v5[v13 + 24] = &v5[v13 + 40];
      *(v16 + 4) = 0x200000000;
      if (*&v11[v13 + 32])
      {
        llvm::SmallVectorImpl<mlir::OperationName>::operator=(&v5[v13 + 24], (v15 + 24));
      }

      v18 = *(v15 + 56);
      v19 = v16 + 88;
      *(v16 + 9) = v16 + 88;
      v20 = (v16 + 72);
      *(v20 - 16) = v18;
      *(v20 + 8) = 0;
      if (*(v15 + 20))
      {
        llvm::SmallVectorImpl<llvm::StringRef>::operator=(v20, &v11[v13 + 72]);
      }

      *v19 = *(v15 + 88);
      v13 += 104;
    }

    while (v15 + 104 != v14);
    v11 = *a1;
    v21 = *(a1 + 8);
    if (v21)
    {
      v22 = &v11[104 * v21 - 80];
      v23 = -104 * v21;
      do
      {
        v24 = *(v22 + 48);
        if ((v22 + 64) != v24)
        {
          free(v24);
        }

        if (v22 + 16 != *v22)
        {
          free(*v22);
        }

        v22 -= 104;
        v23 += 104;
      }

      while (v23);
      v11 = *a1;
    }
  }

  v25 = v28;
  if (v11 != v4)
  {
    free(v11);
  }

  *a1 = v5;
  v26 = *(a1 + 8) + 1;
  *(a1 + 8) = v26;
  *(a1 + 12) = v25;
  return &v5[104 * v26 - 104];
}

uint64_t llvm::SmallVectorImpl<mlir::OperationName>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      v6 = *a1;
      if (*a1 != a1 + 16)
      {
        free(v6);
        v4 = *a2;
      }

      *a1 = v4;
      v7 = (a2 + 8);
      *(a1 + 8) = *(a2 + 8);
      *a2 = v5;
      *(a2 + 12) = 0;
      goto LABEL_17;
    }

    v7 = (a2 + 8);
    v8 = *(a2 + 8);
    v9 = *(a1 + 8);
    if (v9 >= v8)
    {
      if (v8)
      {
        memmove(*a1, v4, 8 * v8);
      }

      goto LABEL_16;
    }

    if (*(a1 + 12) >= v8)
    {
      if (v9)
      {
        memmove(*a1, v4, 8 * v9);
        goto LABEL_14;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 8);
    }

    v9 = 0;
LABEL_14:
    v10 = *v7 - v9;
    if (v10)
    {
      memcpy((*a1 + 8 * v9), (*a2 + 8 * v9), 8 * v10);
    }

LABEL_16:
    *(a1 + 8) = v8;
LABEL_17:
    *v7 = 0;
  }

  return a1;
}

double llvm::SmallVectorImpl<llvm::StringRef>::assignRemote(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 16);
  v4 = *a1;
  if (v4 != v5)
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *a2 = a2 + 16;
  *(a2 + 8) = 0;
  return result;
}

void anonymous namespace::ByteCodeWriter::append<anonymous namespace::OpCode,mlir::detail::TypedValue<mlir::pdl::OperationType>,mlir::DenseIntElementsAttr,mlir::SuccessorRange>(uint64_t a1, __int16 a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a1 + 24), a2);
  v12 = *(a1 + 24);
  v11 = *(a1 + 32);
  v19[0] = a3;
  v13 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v11, v19);
  llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v12, *v13);
  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  v21 = a4;
  v18 = **(v15 + 216) + ((*(*(v15 + 184) + 8) - **(v15 + 184)) >> 3);
  llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>,void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>::try_emplace<unsigned long>(v19, v15 + 120, &v21, &v18);
  if (v20 == 1)
  {
    std::vector<void const*>::push_back[abi:nn200100](*(v15 + 184), &v21);
  }

  llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v14, *(v19[0] + 8));
  if (a6)
  {
    v16 = (a5 + 24);
    do
    {
      v17 = *v16;
      v16 += 4;
      --a6;
    }

    while (a6);
  }
}

uint64_t llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>::traverseChild(uint64_t result)
{
  v1 = result + 88;
  v2 = *(result + 88) + 40 * *(result + 96);
  v3 = *(v2 - 24);
  if (v3 != *(v2 - 8))
  {
    v4 = result;
    do
    {
      v5 = *(v2 - 32);
      *(v2 - 24) = v3 + 1;
      v7 = *(v5 + 32 * v3 + 24);
      result = llvm::SmallPtrSetImpl<mlir::Block *>::insert(v4, v7, &v8);
      if (v9 == 1)
      {
        mlir::SuccessorRange::SuccessorRange(&v8, v7);
        v6 = v8;
        mlir::SuccessorRange::SuccessorRange(&v8, v7);
        result = llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::emplace_back<mlir::Block *&,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>(v1, &v7, &v6, &v8);
      }

      v2 = *(v4 + 88) + 40 * *(v4 + 96);
      v3 = *(v2 - 24);
    }

    while (v3 != *(v2 - 8));
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>,mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>::destroyAll(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    v2 = 40 * a2;
    v3 = (a1 + 24);
    do
    {
      if ((*(v3 - 3) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v4 = *(v3 - 2);
        if (v3 != v4)
        {
          free(v4);
        }
      }

      v3 += 5;
      v2 -= 40;
    }

    while (v2);
  }
}

uint64_t llvm::StringMap<unsigned short,llvm::MallocAllocator>::~StringMap(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 != -8 && v5 != 0)
        {
          MEMORY[0x25F891030]();
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

uint64_t *anonymous namespace::ByteCodeExecutor::executeGetOperand(uint64_t *this, unsigned int a2)
{
  v2 = *(*this + 2);
  v4 = *this + 4;
  v3 = **this;
  *this += 2;
  v5 = this[9];
  v6 = *&v5[4 * v3];
  *this = v4;
  if ((*(v6 + 46) & 0x80) != 0 && *(v6 + 68) > a2)
  {
    v7 = *(*(v6 + 72) + 32 * a2 + 24);
  }

  else
  {
    v7 = 0;
  }

  *&v5[4 * v2] = v7;
  return this;
}

void *anonymous namespace::ByteCodeExecutor::executeGetResult(void *this, unsigned int a2)
{
  v2 = *this;
  v3 = *(*this + 2);
  *this += 2;
  v4 = this[9];
  v5 = *(v4 + 8 * *v2);
  *this = v2 + 2;
  if (*(v5 + 36) <= a2)
  {
    v7 = 0;
  }

  else
  {
    v6 = v5 - 24 * (a2 - 5) - 96;
    v7 = v5 - 16 * (a2 + 1);
    if (a2 > 5)
    {
      v7 = v6;
    }
  }

  *(v4 + 8 * v3) = v7;
  return this;
}

void anonymous namespace::ByteCodeExecutor::readList<mlir::PDLValue,mlir::PDLValue>(unsigned __int16 **a1, uint64_t a2)
{
  *(a2 + 8) = 0;
  v2 = *(*a1)++;
  if (v2)
  {
    v5 = a1 + 9;
    do
    {
      v6 = *a1;
      v7 = **a1;
      *a1 += 2;
      v8 = *(v6 + 2);
      if (v7 > 2)
      {
        if (v7 == 4)
        {
          v12 = 4;
        }

        else
        {
          v12 = 5;
        }

        if (v7 == 3)
        {
          v7 = 3;
        }

        else
        {
          v7 = v12;
        }
      }

      else
      {
        if (!v7)
        {
          v7 = 0;
          v13 = a1[10];
          if (v13 <= v8)
          {
            v14 = 21;
          }

          else
          {
            v14 = 9;
          }

          v11 = &a1[v14];
          if (v13 > v8)
          {
            v13 = 0;
          }

          v8 -= v13;
          goto LABEL_19;
        }

        if (v7 != 1)
        {
          v9 = a1[10];
          if (v9 <= v8)
          {
            v10 = 21;
          }

          else
          {
            v10 = 9;
          }

          v11 = &a1[v10];
          if (v9 > v8)
          {
            v9 = 0;
          }

          v8 -= v9;
          v7 = 2;
          goto LABEL_19;
        }
      }

      v11 = v5;
LABEL_19:
      llvm::SmallVectorTemplateBase<mlir::PDLValue,true>::push_back(a2, *&(*v11)[4 * v8], v7);
      --v2;
    }

    while (v2);
  }
}

uint64_t std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = a4;
  v7[1] = a5;
  if (a1)
  {
    return (*(*a1 + 48))(a1, a2, a3, v7);
  }

  v6 = std::__throw_bad_function_call[abi:nn200100]();
}

uint64_t anonymous namespace::ByteCodeExecutor::processNativeFunResults(uint64_t result, uint64_t a2, unsigned int a3, _BYTE *a4)
{
  v5 = result;
  if (!a3)
  {
LABEL_10:
    v19 = *(a2 + 200);
    if (v19)
    {
      v20 = *(a2 + 192);
      v21 = 16 * v19;
      do
      {
        v22 = *(v5 + 120);
        v23 = v22[1];
        v24 = v22[2];
        if (v23 >= v24)
        {
          v26 = (v23 - *v22) >> 4;
          v27 = v26 + 1;
          if ((v26 + 1) >> 60)
          {
            std::vector<llvm::OwningArrayRef<mlir::Type>>::__throw_length_error[abi:nn200100]();
          }

          v28 = v24 - *v22;
          if (v28 >> 3 > v27)
          {
            v27 = v28 >> 3;
          }

          if (v28 >= 0x7FFFFFFFFFFFFFF0)
          {
            v29 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v29 = v27;
          }

          v56 = *(v5 + 120);
          if (v29)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::OwningArrayRef<mlir::Type>>>(v29);
          }

          v30 = (16 * v26);
          *v30 = 0;
          v30[1] = 0;
          *v30 = *v20;
          *v20 = 0;
          *(v20 + 8) = 0;
          v25 = 16 * v26 + 16;
          v31 = v22[1];
          v32 = 16 * v26 + *v22 - v31;
          std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::OwningArrayRef<mlir::Type>>,llvm::OwningArrayRef<mlir::Type>*>(*v22, v31, (v30 + *v22 - v31));
          v33 = *v22;
          *v22 = v32;
          v52 = v33;
          v53 = v33;
          v22[1] = v25;
          v54 = v33;
          v34 = v22[2];
          v22[2] = 0;
          v55 = v34;
          result = std::__split_buffer<llvm::OwningArrayRef<mlir::Type>>::~__split_buffer(&v52);
        }

        else
        {
          *v23 = 0;
          v23[1] = 0;
          *v23 = *v20;
          *v20 = 0;
          *(v20 + 8) = 0;
          v25 = (v23 + 2);
        }

        v22[1] = v25;
        v20 += 16;
        v21 -= 16;
      }

      while (v21);
    }

    v35 = *(a2 + 264);
    if (v35)
    {
      v36 = *(a2 + 256);
      v37 = 16 * v35;
      do
      {
        v38 = *(v5 + 144);
        v39 = v38[1];
        v40 = v38[2];
        if (v39 >= v40)
        {
          v42 = (v39 - *v38) >> 4;
          v43 = v42 + 1;
          if ((v42 + 1) >> 60)
          {
            std::vector<llvm::OwningArrayRef<mlir::Value>>::__throw_length_error[abi:nn200100]();
          }

          v44 = v40 - *v38;
          if (v44 >> 3 > v43)
          {
            v43 = v44 >> 3;
          }

          if (v44 >= 0x7FFFFFFFFFFFFFF0)
          {
            v45 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v45 = v43;
          }

          v56 = *(v5 + 144);
          if (v45)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::OwningArrayRef<mlir::Value>>>(v45);
          }

          v46 = (16 * v42);
          *v46 = 0;
          v46[1] = 0;
          *v46 = *v36;
          *v36 = 0;
          *(v36 + 8) = 0;
          v41 = 16 * v42 + 16;
          v47 = v38[1];
          v48 = 16 * v42 + *v38 - v47;
          std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::OwningArrayRef<mlir::Value>>,llvm::OwningArrayRef<mlir::Value>*>(*v38, v47, (v46 + *v38 - v47));
          v49 = *v38;
          *v38 = v48;
          v52 = v49;
          v53 = v49;
          v38[1] = v41;
          v54 = v49;
          v50 = v38[2];
          v38[2] = 0;
          v55 = v50;
          result = std::__split_buffer<llvm::OwningArrayRef<mlir::Value>>::~__split_buffer(&v52);
        }

        else
        {
          *v39 = 0;
          v39[1] = 0;
          *v39 = *v36;
          *v36 = 0;
          *(v36 + 8) = 0;
          v41 = (v39 + 2);
        }

        v38[1] = v41;
        v36 += 16;
        v37 -= 16;
      }

      while (v37);
    }

    return result;
  }

  v6 = 0;
  while (1)
  {
    v7 = *result;
    v8 = (*result + 2);
    *result = v8;
    if ((*a4 & 1) == 0)
    {
      break;
    }

    v9 = *a2 + v6;
    v10 = *v9;
    v11 = *(v9 + 8);
    v12 = (v7 + 2);
    if (v11 == 5)
    {
      v13 = *v8;
      v17 = *(result + 128);
      v18 = *v10;
      *result = v12;
      *(v17 + 16 * v13) = v18;
      v16 = *(result + 128);
      goto LABEL_8;
    }

    if (v11 == 3)
    {
      v13 = *v8;
      v14 = *(result + 104);
      v15 = *v10;
      *result = v12;
      *(v14 + 16 * v13) = v15;
      v16 = *(result + 104);
LABEL_8:
      v10 = (v16 + 16 * v13);
      v8 = *result;
      v12 = *result + 2;
    }

    *result = v12;
    *(*(result + 72) + 8 * *v8) = v10;
    v6 += 16;
    if (16 * a3 == v6)
    {
      goto LABEL_10;
    }
  }

  v51 = 2;
  if (((*v7 - 3) & 0xFFFD) == 0)
  {
    v51 = 3;
  }

  *result = &v7[v51];
  return result;
}

mlir::PDLResultList *mlir::PDLResultList::PDLResultList(mlir::PDLResultList *this, unsigned int a2)
{
  *this = this + 16;
  *(this + 1) = 0x300000000;
  v4 = this + 80;
  *(this + 8) = this + 80;
  v5 = this + 64;
  *(this + 9) = 0x300000000;
  *(this + 16) = this + 144;
  *(this + 17) = 0x300000000;
  *(this + 24) = this + 208;
  *(this + 25) = 0x300000000;
  *(this + 32) = this + 272;
  *(this + 33) = 0x300000000;
  if (a2 < 4)
  {
    v6 = 3;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v5, v4, a2, 16);
    v6 = *(this + 35);
  }

  if (v6 < a2)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(this + 128, this + 144, a2, 16);
  }

  return this;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::OwningArrayRef<mlir::Type>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::OwningArrayRef<mlir::Type>>,llvm::OwningArrayRef<mlir::Type>*>(uint64_t result, uint64_t *a2, void *a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = result;
    do
    {
      *a3 = 0;
      a3[1] = 0;
      *a3 = *v5;
      a3 += 2;
      *v5 = 0;
      *(v5 + 8) = 0;
      v5 += 16;
    }

    while (v5 != a2);
    do
    {
      result = *v4;
      if (*v4)
      {
        result = MEMORY[0x25F891010](result, 0x20C8093837F09, a3);
      }

      v4 += 2;
    }

    while (v4 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<llvm::OwningArrayRef<mlir::Type>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *(v2 - 16);
    v2 -= 16;
    v4 = v5;
    *(a1 + 16) = v2;
    if (v5)
    {
      MEMORY[0x25F891010](v4, 0x20C8093837F09);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::OwningArrayRef<mlir::Value>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::OwningArrayRef<mlir::Value>>,llvm::OwningArrayRef<mlir::Value>*>(uint64_t result, uint64_t *a2, void *a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = result;
    do
    {
      *a3 = 0;
      a3[1] = 0;
      *a3 = *v5;
      a3 += 2;
      *v5 = 0;
      *(v5 + 8) = 0;
      v5 += 16;
    }

    while (v5 != a2);
    do
    {
      result = *v4;
      if (*v4)
      {
        result = MEMORY[0x25F891010](result, 0x20C8093837F09, a3);
      }

      v4 += 2;
    }

    while (v4 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<llvm::OwningArrayRef<mlir::Value>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *(v2 - 16);
    v2 -= 16;
    v4 = v5;
    *(a1 + 16) = v2;
    if (v5)
    {
      MEMORY[0x25F891010](v4, 0x20C8093837F09);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

char **llvm::SmallVector<llvm::OwningArrayRef<mlir::Value>,3u>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 - 16;
    do
    {
      v6 = *&v5[v4];
      if (v6)
      {
        MEMORY[0x25F891010](v6, 0x20C8093837F09);
      }

      v4 -= 16;
    }

    while (v4);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

char **llvm::SmallVector<llvm::OwningArrayRef<mlir::Type>,3u>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 - 16;
    do
    {
      v6 = *&v5[v4];
      if (v6)
      {
        MEMORY[0x25F891010](v6, 0x20C8093837F09);
      }

      v4 -= 16;
    }

    while (v4);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

BOOL _ZN4llvm6detaileqINS_14iterator_rangeINS_15mapped_iteratorIN4mlir9ArrayAttr19attr_value_iteratorINS4_8TypeAttrEEEZNKS5_15getAsValueRangeIS7_NS4_4TypeEEEDavEUlS7_E_SA_EEEENS4_9TypeRangeENS_12PointerUnionIJPKNS4_5ValueEPKSA_PNS4_9OpOperandEPNS4_6detail12OpResultImplEEEESA_SA_SA_EEbRKNS0_27indexed_accessor_range_baseIT0_T1_T2_T3_T4_EERKT_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != (a4 - a3) >> 3)
  {
    return 0;
  }

  v5 = a3;
  if (a2)
  {
    v8 = 0;
    v9 = a3 + 8 * a2;
    while (v5 != a4)
    {
      if (mlir::TypeRange::dereference_iterator(a1, v8) != *(*v5 + 8))
      {
        return 0;
      }

      ++v8;
      v5 += 8;
      if (a2 == v8)
      {
        return v9 == a4;
      }
    }

    v5 = a4;
  }

  else
  {
    v8 = 0;
  }

  v9 = v5;
  return v8 == a2 && v9 == a4;
}

void anonymous namespace::ByteCodeExecutor::readList(unsigned __int16 **a1, uint64_t a2)
{
  v2 = **a1;
  for (++*a1; v2; --v2)
  {
    v5 = *a1;
    v6 = **a1;
    *a1 += 2;
    v7 = *&a1[9][4 * *(v5 + 2)];
    if (v6 == 4)
    {
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(a2, v7);
    }

    else
    {
      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2, *v7, 0, *v7, v7[1]);
    }
  }
}

uint64_t llvm::getTypeName<mlir::OpTrait::AttrSizedResultSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedResultSegments>(void)::Empty>>()
{
  if ((atomic_load_explicit(qword_27FC1EEC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_27FC1EEC0))
  {
    qword_27FC1EEB0 = llvm::detail::getTypeNameImpl<mlir::OpTrait::AttrSizedResultSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedResultSegments>(void)::Empty>>();
    *algn_27FC1EEB8 = v1;
    __cxa_guard_release(qword_27FC1EEC0);
  }

  return qword_27FC1EEB0;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::AttrSizedResultSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedResultSegments>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::AttrSizedResultSegments<Empty>]";
  v6 = 107;
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

void llvm::SmallVectorTemplateBase<mlir::detail::PDLByteCode::MatchResult,false>::growAndEmplaceBack<mlir::Location &,mlir::detail::PDLByteCodePattern const&,mlir::PatternBenefit &>(uint64_t a1, void *a2, uint64_t a3, __int16 *a4)
{
  v22 = 0;
  v8 = (a1 + 16);
  v9 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 120, &v22);
  v10 = v9;
  v11 = &v9[120 * *(a1 + 8)];
  v12 = *a4;
  *v11 = *a2;
  *(v11 + 1) = v11 + 24;
  *(v11 + 2) = 0x600000000;
  *(v11 + 13) = a3;
  *(v11 + 11) = v11 + 104;
  *(v11 + 9) = v11 + 88;
  *(v11 + 10) = 0;
  *(v11 + 12) = 0;
  *(v11 + 56) = v12;
  v13 = *a1;
  v14 = *(a1 + 8);
  if (v14)
  {
    v15 = 120 * v14;
    do
    {
      v9 = (mlir::detail::PDLByteCode::MatchResult::MatchResult(v9, v13) + 120);
      v13 += 120;
      v15 -= 120;
    }

    while (v15);
    v13 = *a1;
    v16 = *(a1 + 8);
    if (v16)
    {
      v17 = &v13[120 * v16 - 48];
      v18 = -120 * v16;
      do
      {
        v19 = *(v17 + 16);
        if ((v17 + 32) != v19)
        {
          free(v19);
        }

        if (v17 + 16 != *v17)
        {
          free(*v17);
        }

        v20 = *(v17 - 64);
        if ((v17 - 48) != v20)
        {
          free(v20);
        }

        v17 -= 120;
        v18 += 120;
      }

      while (v18);
      v13 = *a1;
    }
  }

  v21 = v22;
  if (v13 != v8)
  {
    free(v13);
  }

  *a1 = v10;
  ++*(a1 + 8);
  *(a1 + 12) = v21;
}

uint64_t mlir::detail::PDLByteCode::MatchResult::MatchResult(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = a1 + 24;
  v4 = a1 + 8;
  *(a1 + 16) = 0x600000000;
  if (*(a2 + 16))
  {
    llvm::SmallVectorImpl<void const*>::operator=(v4, a2 + 8);
  }

  *(a1 + 72) = a1 + 88;
  *(a1 + 80) = 0;
  v5 = *(a2 + 80);
  if (v5 && a1 != a2)
  {
    if (*(a2 + 72) == a2 + 88)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 72, (a1 + 88), *(a2 + 80), 16);
      v6 = *(a2 + 80);
      if (v6)
      {
        memcpy(*(a1 + 72), *(a2 + 72), 16 * v6);
      }

      *(a1 + 80) = v5;
      *(a2 + 80) = 0;
    }

    else
    {
      llvm::SmallVectorImpl<mlir::TypeRange>::assignRemote(a1 + 72, a2 + 72);
    }
  }

  *(a1 + 88) = a1 + 104;
  *(a1 + 96) = 0;
  v7 = *(a2 + 96);
  if (v7 && a1 != a2)
  {
    if (*(a2 + 88) == a2 + 104)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 88, (a1 + 104), *(a2 + 96), 16);
      v8 = *(a2 + 96);
      if (v8)
      {
        memcpy(*(a1 + 88), *(a2 + 88), 16 * v8);
      }

      *(a1 + 96) = v7;
      *(a2 + 96) = 0;
    }

    else
    {
      llvm::SmallVectorImpl<mlir::ValueRange>::assignRemote(a1 + 88, a2 + 88);
    }
  }

  v9 = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 104) = v9;
  return a1;
}

uint64_t llvm::SmallVectorImpl<void const*>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      v6 = *a1;
      if (*a1 != a1 + 16)
      {
        free(v6);
        v4 = *a2;
      }

      *a1 = v4;
      v7 = (a2 + 8);
      *(a1 + 8) = *(a2 + 8);
      *a2 = v5;
      *(a2 + 12) = 0;
      goto LABEL_17;
    }

    v7 = (a2 + 8);
    v8 = *(a2 + 8);
    v9 = *(a1 + 8);
    if (v9 >= v8)
    {
      if (v8)
      {
        memmove(*a1, v4, 8 * v8);
      }

      goto LABEL_16;
    }

    if (*(a1 + 12) >= v8)
    {
      if (v9)
      {
        memmove(*a1, v4, 8 * v9);
        goto LABEL_14;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 8);
    }

    v9 = 0;
LABEL_14:
    v10 = *v7 - v9;
    if (v10)
    {
      memcpy((*a1 + 8 * v9), (*a2 + 8 * v9), 8 * v10);
    }

LABEL_16:
    *(a1 + 8) = v8;
LABEL_17:
    *v7 = 0;
  }

  return a1;
}

double llvm::SmallVectorImpl<mlir::TypeRange>::assignRemote(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 16);
  v4 = *a1;
  if (v4 != v5)
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *a2 = a2 + 16;
  *(a2 + 8) = 0;
  return result;
}

double llvm::SmallVectorImpl<mlir::ValueRange>::assignRemote(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 16);
  v4 = *a1;
  if (v4 != v5)
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *a2 = a2 + 16;
  *(a2 + 8) = 0;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::PatternBenefit>>(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__stable_sort<std::_ClassicAlgPolicy,mlir::detail::PDLByteCode::match(mlir::Operation *,mlir::PatternRewriter &,llvm::SmallVectorImpl<mlir::detail::PDLByteCode::MatchResult> &,mlir::detail::PDLByteCodeMutableState &)::$_0 &,mlir::detail::PDLByteCode::MatchResult*>(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = *MEMORY[0x277D85DE8];
  if (a3 < 2)
  {
    goto LABEL_2;
  }

  v7 = a1;
  if (a3 == 2)
  {
    if (*(a1 + 112) >= *(a2 - 4))
    {
LABEL_2:
      v5 = *MEMORY[0x277D85DE8];
      return;
    }

    v8 = *MEMORY[0x277D85DE8];
    v9 = (a2 - 15);

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<mlir::detail::PDLByteCode::MatchResult *&,mlir::detail::PDLByteCode::MatchResult *&>(a1, v9);
  }

  else
  {
    if (a3 <= 0)
    {
      if (a1 != a2)
      {
        v17 = a1 + 120;
        if ((a1 + 120) != a2)
        {
          v18 = 0;
          v19 = a1;
          do
          {
            v20 = *(v19 + 112);
            v21 = *(v19 + 232);
            v19 = v17;
            if (v20 < v21)
            {
              mlir::detail::PDLByteCode::MatchResult::MatchResult(&v29, v17);
              v22 = v18;
              while (1)
              {
                mlir::detail::PDLByteCode::MatchResult::operator=(v7 + v22 + 120, v7 + v22);
                if (!v22)
                {
                  break;
                }

                v23 = *(v7 + v22 - 8);
                v22 -= 120;
                if (v23 >= v34[4])
                {
                  v24 = v7 + v22 + 120;
                  goto LABEL_22;
                }
              }

              v24 = v7;
LABEL_22:
              mlir::detail::PDLByteCode::MatchResult::operator=(v24, &v29);
              if (v33 != v34)
              {
                free(v33);
              }

              if (v32 != &v33)
              {
                free(v32);
              }

              if (v30 != &v31)
              {
                free(v30);
              }
            }

            v17 = v19 + 120;
            v18 += 120;
          }

          while ((v19 + 120) != a2);
        }
      }

      goto LABEL_2;
    }

    v12 = a4;
    v13 = a3 >> 1;
    v14 = a1 + 120 * (a3 >> 1);
    if (a3 <= a5)
    {
      v28 = 0;
      v29 = a4;
      v30 = &v28;
      std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::detail::PDLByteCode::match(mlir::Operation *,mlir::PatternRewriter &,llvm::SmallVectorImpl<mlir::detail::PDLByteCode::MatchResult> &,mlir::detail::PDLByteCodeMutableState &)::$_0 &,mlir::detail::PDLByteCode::MatchResult*>(a1, (a1 + 120 * (a3 >> 1)), a3 >> 1, a4);
      v28 = a3 >> 1;
      v25 = v12 + 120 * v13;
      std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::detail::PDLByteCode::match(mlir::Operation *,mlir::PatternRewriter &,llvm::SmallVectorImpl<mlir::detail::PDLByteCode::MatchResult> &,mlir::detail::PDLByteCodeMutableState &)::$_0 &,mlir::detail::PDLByteCode::MatchResult*>((v7 + 120 * (a3 >> 1)), a2, a3 - v13, v25);
      v28 = a3;
      v26 = v12 + 120 * a3;
      v27 = v25;
      while (v27 != v26)
      {
        if (*(v12 + 112) >= *(v27 + 112))
        {
          mlir::detail::PDLByteCode::MatchResult::operator=(v7, v12);
          v12 += 120;
        }

        else
        {
          mlir::detail::PDLByteCode::MatchResult::operator=(v7, v27);
          v27 += 120;
        }

        v7 += 120;
        if (v12 == v25)
        {
          while (v27 != v26)
          {
            mlir::detail::PDLByteCode::MatchResult::operator=(v7, v27);
            v27 += 120;
            v7 += 120;
          }

          goto LABEL_42;
        }
      }

      while (v12 != v25)
      {
        mlir::detail::PDLByteCode::MatchResult::operator=(v7, v12);
        v12 += 120;
        v7 += 120;
      }

LABEL_42:
      std::unique_ptr<mlir::detail::PDLByteCode::MatchResult,std::__destruct_n &>::~unique_ptr[abi:nn200100](&v29);
      goto LABEL_2;
    }

    std::__stable_sort<std::_ClassicAlgPolicy,mlir::detail::PDLByteCode::match(mlir::Operation *,mlir::PatternRewriter &,llvm::SmallVectorImpl<mlir::detail::PDLByteCode::MatchResult> &,mlir::detail::PDLByteCodeMutableState &)::$_0 &,mlir::detail::PDLByteCode::MatchResult*>(a1, a1 + 120 * (a3 >> 1), a3 >> 1, a4, a5);
    v15 = a3 - v13;
    std::__stable_sort<std::_ClassicAlgPolicy,mlir::detail::PDLByteCode::match(mlir::Operation *,mlir::PatternRewriter &,llvm::SmallVectorImpl<mlir::detail::PDLByteCode::MatchResult> &,mlir::detail::PDLByteCodeMutableState &)::$_0 &,mlir::detail::PDLByteCode::MatchResult*>(v14, a2, v15, v12, a5);
    v16 = *MEMORY[0x277D85DE8];

    std::__inplace_merge<std::_ClassicAlgPolicy,mlir::detail::PDLByteCode::match(mlir::Operation *,mlir::PatternRewriter &,llvm::SmallVectorImpl<mlir::detail::PDLByteCode::MatchResult> &,mlir::detail::PDLByteCodeMutableState &)::$_0 &,mlir::detail::PDLByteCode::MatchResult*>(v7, v14, a2, v13, v15, v12, a5);
  }
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<mlir::detail::PDLByteCode::MatchResult *&,mlir::detail::PDLByteCode::MatchResult *&>(uint64_t a1, uint64_t a2)
{
  v10[2] = *MEMORY[0x277D85DE8];
  mlir::detail::PDLByteCode::MatchResult::MatchResult(&v5, a1);
  mlir::detail::PDLByteCode::MatchResult::operator=(a1, a2);
  mlir::detail::PDLByteCode::MatchResult::operator=(a2, &v5);
  if (v9 != v10)
  {
    free(v9);
  }

  if (v8 != &v9)
  {
    free(v8);
  }

  if (v6 != &v7)
  {
    free(v6);
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t *std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::detail::PDLByteCode::match(mlir::Operation *,mlir::PatternRewriter &,llvm::SmallVectorImpl<mlir::detail::PDLByteCode::MatchResult> &,mlir::detail::PDLByteCodeMutableState &)::$_0 &,mlir::detail::PDLByteCode::MatchResult*>(uint64_t *result, uint64_t *a2, unint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return result;
  }

  v4 = a4;
  v7 = result;
  if (a3 == 2)
  {
    v24 = &v25;
    v25 = 0;
    v8 = *(result + 56);
    v9 = *(a2 - 4);
    if (v8 >= v9)
    {
      v10 = result;
    }

    else
    {
      v10 = (a2 - 15);
    }

    if (v8 >= v9)
    {
      v11 = (a2 - 15);
    }

    else
    {
      v11 = result;
    }

    mlir::detail::PDLByteCode::MatchResult::MatchResult(a4, v10);
    ++v25;
    mlir::detail::PDLByteCode::MatchResult::MatchResult(v4 + 120, v11);
LABEL_40:
    v23 = 0;
    return std::unique_ptr<mlir::detail::PDLByteCode::MatchResult,std::__destruct_n &>::~unique_ptr[abi:nn200100](&v23);
  }

  if (a3 != 1)
  {
    if (a3 > 8)
    {
      v20 = 120 * (a3 >> 1);
      v21 = &result[v20 / 8];
      std::__stable_sort<std::_ClassicAlgPolicy,mlir::detail::PDLByteCode::match(mlir::Operation *,mlir::PatternRewriter &,llvm::SmallVectorImpl<mlir::detail::PDLByteCode::MatchResult> &,mlir::detail::PDLByteCodeMutableState &)::$_0 &,mlir::detail::PDLByteCode::MatchResult*>(result, &result[v20 / 8], a3 >> 1, a4, a3 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,mlir::detail::PDLByteCode::match(mlir::Operation *,mlir::PatternRewriter &,llvm::SmallVectorImpl<mlir::detail::PDLByteCode::MatchResult> &,mlir::detail::PDLByteCodeMutableState &)::$_0 &,mlir::detail::PDLByteCode::MatchResult*>(v7 + v20, a2, a3 - (a3 >> 1), v4 + v20, a3 - (a3 >> 1));
      v23 = v4;
      v24 = &v25;
      v25 = 0;
      v22 = v7 + v20;
      while (v22 != a2)
      {
        if (*(v7 + 112) >= *(v22 + 112))
        {
          mlir::detail::PDLByteCode::MatchResult::MatchResult(v4, v7);
          v7 += 120;
        }

        else
        {
          mlir::detail::PDLByteCode::MatchResult::MatchResult(v4, v22);
          v22 += 120;
        }

        ++v25;
        v4 += 120;
        if (v7 == v21)
        {
          while (v22 != a2)
          {
            mlir::detail::PDLByteCode::MatchResult::MatchResult(v4, v22);
            v22 += 120;
            v4 += 120;
            ++v25;
          }

          goto LABEL_40;
        }
      }

      while (v7 != v21)
      {
        mlir::detail::PDLByteCode::MatchResult::MatchResult(v4, v7);
        v7 += 120;
        v4 += 120;
        ++v25;
      }
    }

    else
    {
      if (result == a2)
      {
        return result;
      }

      v23 = a4;
      v24 = &v25;
      v25 = 0;
      mlir::detail::PDLByteCode::MatchResult::MatchResult(a4, result);
      ++v25;
      v12 = v7 + 120;
      if ((v7 + 120) != a2)
      {
        v13 = 0;
        v14 = v4;
        do
        {
          v15 = v12;
          v16 = v14 + 120;
          v17 = v14 + 120;
          if (*(v14 + 112) >= *(v7 + 232))
          {
            mlir::detail::PDLByteCode::MatchResult::MatchResult(v17, v12);
            ++v25;
          }

          else
          {
            mlir::detail::PDLByteCode::MatchResult::MatchResult(v17, v14);
            ++v25;
            v18 = v4;
            if (v14 != v4)
            {
              v19 = v13;
              while (1)
              {
                v18 = v4 + v19;
                if (*(v4 + v19 - 8) >= *(v7 + 232))
                {
                  break;
                }

                v19 -= 120;
                mlir::detail::PDLByteCode::MatchResult::operator=(v18, v19 + v4);
                if (!v19)
                {
                  v18 = v4;
                  break;
                }
              }
            }

            mlir::detail::PDLByteCode::MatchResult::operator=(v18, v15);
          }

          v12 = v15 + 120;
          v13 += 120;
          v14 = v16;
          v7 = v15;
        }

        while ((v15 + 120) != a2);
      }
    }

    goto LABEL_40;
  }

  return mlir::detail::PDLByteCode::MatchResult::MatchResult(a4, result);
}

void std::__inplace_merge<std::_ClassicAlgPolicy,mlir::detail::PDLByteCode::match(mlir::Operation *,mlir::PatternRewriter &,llvm::SmallVectorImpl<mlir::detail::PDLByteCode::MatchResult> &,mlir::detail::PDLByteCodeMutableState &)::$_0 &,mlir::detail::PDLByteCode::MatchResult*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5)
  {
    v7 = a5;
    while (a4 > a7 && v7 > a7)
    {
      if (!a4)
      {
        return;
      }

      v12 = 0;
      v13 = -a4;
      while (1)
      {
        v14 = a1 + v12;
        if (*(a1 + v12 + 112) < *(a2 + 112))
        {
          break;
        }

        v12 += 120;
        if (__CFADD__(v13++, 1))
        {
          return;
        }
      }

      v54 = a3;
      if (-v13 >= v7)
      {
        if (v13 == -1)
        {

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<mlir::detail::PDLByteCode::MatchResult *&,mlir::detail::PDLByteCode::MatchResult *&>(a1 + v12, a2);
          return;
        }

        v26 = -v13 / 2;
        if (a3 == a2)
        {
          v32 = a3;
          v17 = a2;
        }

        else
        {
          v27 = 0xEEEEEEEEEEEEEEEFLL * ((a3 - a2) >> 3);
          v17 = a2;
          do
          {
            v28 = v27 >> 1;
            v29 = v17 + 120 * (v27 >> 1);
            v30 = *(v29 + 112);
            v31 = v29 + 120;
            v27 += ~(v27 >> 1);
            if (*(a1 + 120 * v26 + v12 + 112) < v30)
            {
              v17 = v31;
            }

            else
            {
              v27 = v28;
            }
          }

          while (v27);
          v32 = v17;
          a3 = a2;
        }

        v20 = a1 + 120 * v26 + v12;
        v16 = 0xEEEEEEEEEEEEEEEFLL * ((v32 - a3) >> 3);
      }

      else
      {
        v16 = v7 / 2;
        v17 = a2 + 120 * (v7 / 2);
        if (v14 == a2)
        {
          v25 = a2;
          v18 = a2;
          v20 = v14;
        }

        else
        {
          v18 = a1 + v12;
          v19 = 0xEEEEEEEEEEEEEEEFLL * ((a2 - a1 - v12) >> 3);
          v20 = a1 + v12;
          do
          {
            v21 = v19 >> 1;
            v22 = v20 + 120 * (v19 >> 1);
            v23 = *(v22 + 112);
            v24 = v22 + 120;
            v19 += ~(v19 >> 1);
            if (v23 < *(v17 + 112))
            {
              v19 = v21;
            }

            else
            {
              v20 = v24;
            }
          }

          while (v19);
          v25 = v20;
        }

        v26 = 0xEEEEEEEEEEEEEEEFLL * ((v25 - v18) >> 3);
      }

      a3 = v17;
      if (v20 != a2)
      {
        a3 = v20;
        if (a2 != v17)
        {
          v51 = v16;
          v52 = v26;
          v53 = a7;
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<mlir::detail::PDLByteCode::MatchResult *&,mlir::detail::PDLByteCode::MatchResult *&>(v20, a2);
          a3 = v20 + 120;
          for (i = a2 + 120; i != v17; i += 120)
          {
            if (a3 == a2)
            {
              a2 = i;
            }

            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<mlir::detail::PDLByteCode::MatchResult *&,mlir::detail::PDLByteCode::MatchResult *&>(a3, i);
            a3 += 120;
          }

          if (a3 != a2)
          {
            v34 = a3;
            v35 = a2;
            do
            {
              while (1)
              {
                std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<mlir::detail::PDLByteCode::MatchResult *&,mlir::detail::PDLByteCode::MatchResult *&>(v34, a2);
                v34 += 120;
                a2 += 120;
                if (a2 == v17)
                {
                  break;
                }

                if (v34 == v35)
                {
                  v35 = a2;
                }
              }

              a2 = v35;
            }

            while (v34 != v35);
          }

          v26 = v52;
          a7 = v53;
          v16 = v51;
        }
      }

      a4 = -v13 - v26;
      v36 = v7 - v16;
      if (v26 + v16 >= v7 - (v26 + v16) - v13)
      {
        v38 = v26;
        v39 = -v13 - v26;
        v40 = v16;
        v37 = a7;
        std::__inplace_merge<std::_ClassicAlgPolicy,mlir::detail::PDLByteCode::match(mlir::Operation *,mlir::PatternRewriter &,llvm::SmallVectorImpl<mlir::detail::PDLByteCode::MatchResult> &,mlir::detail::PDLByteCodeMutableState &)::$_0 &,mlir::detail::PDLByteCode::MatchResult*>(a3, v17, v54, v39, v36, a6);
        v17 = v20;
        v36 = v40;
        a4 = v38;
      }

      else
      {
        v37 = a7;
        std::__inplace_merge<std::_ClassicAlgPolicy,mlir::detail::PDLByteCode::match(mlir::Operation *,mlir::PatternRewriter &,llvm::SmallVectorImpl<mlir::detail::PDLByteCode::MatchResult> &,mlir::detail::PDLByteCodeMutableState &)::$_0 &,mlir::detail::PDLByteCode::MatchResult*>(v14, v20, a3, v26, v16, a6);
        v14 = a3;
        a3 = v54;
      }

      v7 = v36;
      a2 = v17;
      a1 = v14;
      a7 = v37;
      if (!v36)
      {
        return;
      }
    }

    v41 = a6;
    v56[0] = a6;
    v56[1] = &v57;
    v57 = 0;
    if (a4 <= v7)
    {
      if (a1 != a2)
      {
        v48 = a6;
        v49 = a1;
        do
        {
          mlir::detail::PDLByteCode::MatchResult::MatchResult(v48, v49);
          ++v57;
          v49 += 120;
          v48 += 120;
        }

        while (v49 != a2);
        while (a2 != a3)
        {
          if (*(v41 + 112) >= *(a2 + 112))
          {
            mlir::detail::PDLByteCode::MatchResult::operator=(a1, v41);
            v41 += 120;
          }

          else
          {
            mlir::detail::PDLByteCode::MatchResult::operator=(a1, a2);
            a2 += 120;
          }

          a1 += 120;
          if (v48 == v41)
          {
            goto LABEL_80;
          }
        }

        do
        {
          mlir::detail::PDLByteCode::MatchResult::operator=(a1, v41);
          a1 += 120;
          v50 = v48 - 120 == v41;
          v41 += 120;
        }

        while (!v50);
      }
    }

    else if (a2 != a3)
    {
      v42 = 0;
      do
      {
        mlir::detail::PDLByteCode::MatchResult::MatchResult(a6 + v42, a2 + v42);
        ++v57;
        v42 += 120;
      }

      while (a2 + v42 != a3);
      v43 = a3 - 120;
      v44 = a6 + v42;
      while (a2 != a1)
      {
        v45 = *(a2 - 8);
        v46 = *(v44 - 8);
        if (v45 >= v46)
        {
          v47 = v44 - 120;
        }

        else
        {
          v47 = a2 - 120;
        }

        if (v45 >= v46)
        {
          v44 -= 120;
        }

        else
        {
          a2 -= 120;
        }

        v43 = mlir::detail::PDLByteCode::MatchResult::operator=(v43, v47) - 120;
        if (v44 == a6)
        {
          goto LABEL_80;
        }
      }

      while (v44 != a6)
      {
        v44 -= 120;
        v43 = mlir::detail::PDLByteCode::MatchResult::operator=(v43, v44) - 120;
      }
    }

LABEL_80:
    std::unique_ptr<mlir::detail::PDLByteCode::MatchResult,std::__destruct_n &>::~unique_ptr[abi:nn200100](v56);
  }
}

uint64_t mlir::detail::PDLByteCode::MatchResult::operator=(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 72;
  *a1 = *a2;
  v5 = a1 + 72;
  llvm::SmallVectorImpl<void const*>::operator=(a1 + 8, a2 + 8);
  if (a1 != a2)
  {
    if (*(a2 + 80))
    {
      llvm::SmallVectorImpl<mlir::TypeRange>::assignRemote(v5, v4);
    }

    else
    {
      *(a1 + 80) = 0;
    }

    if (*(a2 + 96))
    {
      llvm::SmallVectorImpl<mlir::ValueRange>::assignRemote(a1 + 88, a2 + 88);
    }

    else
    {
      *(a1 + 96) = 0;
    }
  }

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t *std::unique_ptr<mlir::detail::PDLByteCode::MatchResult,std::__destruct_n &>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[1];
    if (*v3)
    {
      v4 = 0;
      v5 = (v2 + 104);
      do
      {
        v6 = *(v5 - 2);
        if (v5 != v6)
        {
          free(v6);
        }

        v7 = *(v5 - 4);
        if (v5 - 2 != v7)
        {
          free(v7);
        }

        v8 = *(v5 - 12);
        if (v5 - 10 != v8)
        {
          free(v8);
        }

        ++v4;
        v5 += 15;
      }

      while (v4 < *v3);
    }
  }

  return a1;
}

uint64_t mlir::DestinationStyleOpInterface::getDpsInitOperand(mlir::DestinationStyleOpInterface *this, int a2)
{
  v10[3] = *MEMORY[0x277D85DE8];
  (**(this + 1))(&v7, *(this + 1), *this);
  v3 = v8;
  v4 = *(v7 + 72);
  if (v9 != v10)
  {
    free(v9);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4 + 32 * (v3 + a2);
}

uint64_t mlir::DestinationStyleOpInterface::getTiedOpResult(mlir::DestinationStyleOpInterface *a1, uint64_t a2)
{
  DpsInits = mlir::DestinationStyleOpInterface::getDpsInits(a1);
  v5 = *(a2 + 16);
  if ((*(v5 + 46) & 0x80) != 0)
  {
    v6 = *(v5 + 72);
  }

  else
  {
    v6 = 0;
  }

  v7 = (a2 - v6) >> 5;
  v8 = *(DpsInits + 16);
  if ((*(v8 + 46) & 0x80) != 0)
  {
    v9 = *(v8 + 72);
  }

  else
  {
    v9 = 0;
  }

  v10 = v7 - ((DpsInits - v9) >> 5);
  if (v10 <= 5)
  {
    return *a1 - 16 * (v10 + 1);
  }

  else
  {
    return *a1 - 24 * (v10 - 5) - 96;
  }
}

uint64_t llvm::DefaultDoCastIfPossible<mlir::DestinationStyleOpInterface,mlir::Operation *,llvm::CastInfo<mlir::DestinationStyleOpInterface,mlir::Operation *,void>>::doCastIfPossible(uint64_t a1)
{
  v1 = a1;
  if (!mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    return 0;
  }

  if (v1)
  {
    mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(v1);
  }

  return v1;
}

uint64_t mlir::DestinationStyleOpInterface::getDpsInits(mlir::DestinationStyleOpInterface *this)
{
  v8[3] = *MEMORY[0x277D85DE8];
  (**(this + 1))(&v5, *(this + 1), *this);
  if ((*(v5 + 46) & 0x80) != 0)
  {
    v1 = *(v5 + 72);
  }

  else
  {
    v1 = 0;
  }

  v2 = v6;
  if (v7 != v8)
  {
    free(v7);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1 + 32 * v2;
}

uint64_t mlir::detail::verifyDestinationStyleOpInterface(mlir::detail *this, mlir::Operation *a2)
{
  v3 = this;
  v48[6] = *MEMORY[0x277D85DE8];
  if (this)
  {
    this = mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(this);
  }

  v39[0] = v3;
  v39[1] = this;
  v46 = v48;
  v47 = 0x600000000;
  (*this)(&v41, this, v3);
  if (v41[46] < 0)
  {
    v5 = *(v41 + 9);
  }

  else
  {
    v5 = 0;
  }

  if (!v43)
  {
LABEL_19:
    v11 = 1;
    goto LABEL_25;
  }

  v2 = v5 + 32 * v42;
  v6 = -v2;
  v7 = 32 * v43;
  while (1)
  {
    v8 = *(*(*(*(v2 + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v8 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      break;
    }

    llvm::SmallVectorTemplateBase<mlir::OpOperand *,true>::push_back(&v46, v2);
LABEL_18:
    v2 += 32;
    v6 -= 32;
    v7 -= 32;
    if (!v7)
    {
      goto LABEL_19;
    }
  }

  if (v8 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
  {
    goto LABEL_18;
  }

  v37[0] = "expected that operand #";
  v38 = 259;
  mlir::Operation::emitOpError(v3, v37, v40);
  v12 = *(v2 + 16);
  if ((*(v12 + 46) & 0x80) != 0)
  {
    v13 = *(v12 + 72);
  }

  else
  {
    v13 = 0;
  }

  LODWORD(v36) = -(v13 + v6) >> 5;
  v14 = mlir::InFlightDiagnostic::operator<<<unsigned int>(v40, &v36);
  v15 = v14;
  if (*v14)
  {
    mlir::Diagnostic::operator<<<25ul>((v14 + 1), " is a tensor or a memref");
  }

  v2 = (v15[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v40);
  v11 = 0;
LABEL_25:
  if (v44 != &v45)
  {
    free(v44);
  }

  if (v11)
  {
    if (NumTensorResults == v47)
    {
      if (!v47)
      {
LABEL_33:
        v2 = 1;
        goto LABEL_39;
      }

      v17 = v46;
      v18 = 8 * NumTensorResults;
      while (1)
      {
        v19 = *v17;
        TiedOpResult = mlir::DestinationStyleOpInterface::getTiedOpResult(v39, *v17);
        if ((*(*(v19 + 24) + 8) ^ *(TiedOpResult + 8)) >= 8)
        {
          break;
        }

        ++v17;
        v18 -= 8;
        if (!v18)
        {
          goto LABEL_33;
        }
      }

      v27 = TiedOpResult;
      v41 = "expected type of operand #";
      v45 = 259;
      mlir::Operation::emitOpError(v3, &v41, v40);
      v28 = *(v19 + 16);
      if ((*(v28 + 46) & 0x80) != 0)
      {
        v29 = *(v28 + 72);
      }

      else
      {
        v29 = 0;
      }

      LODWORD(v36) = (v19 - v29) >> 5;
      v30 = mlir::InFlightDiagnostic::operator<<<unsigned int>(v40, &v36);
      v24 = v30;
      if (!*v30)
      {
        goto LABEL_38;
      }

      mlir::Diagnostic::operator<<<3ul>((v30 + 1), " (");
      if (!*v24)
      {
        goto LABEL_38;
      }

      v31 = *(*(v19 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      LODWORD(v37[0]) = 4;
      v37[1] = v31;
      v32 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(v24 + 24, v37, 1);
      v33 = *(v24 + 24) + 24 * *(v24 + 32);
      v34 = *v32;
      *(v33 + 16) = *(v32 + 16);
      *v33 = v34;
      ++*(v24 + 32);
      if (!*v24 || (mlir::Diagnostic::operator<<<2ul>(v24 + 8, ")"), !*v24) || (mlir::Diagnostic::operator<<<41ul>(v24 + 8, " to match type of corresponding result ("), v35 = *v24, v37[0] = *(v27 + 8) & 0xFFFFFFFFFFFFFFF8, !v35) || (mlir::Diagnostic::operator<<<mlir::Type>(v24 + 8, v37), !*v24))
      {
LABEL_38:
        v2 = (*(v24 + 200) & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v40);
        goto LABEL_39;
      }
    }

    else
    {
      v41 = "expected the number of tensor results (";
      v45 = 259;
      mlir::Operation::emitOpError(v3, &v41, v40);
      v22 = mlir::InFlightDiagnostic::operator<<<unsigned long>(v40, v37);
      v23 = v22;
      if (*v22)
      {
        mlir::Diagnostic::operator<<<48ul>((v22 + 1), ") to be equal to the number of output tensors (");
      }

      v36 = v47;
      v24 = mlir::InFlightDiagnostic::operator<<<unsigned long>(v23, &v36);
      if (!*v24)
      {
        goto LABEL_38;
      }
    }

    mlir::Diagnostic::operator<<<2ul>(v24 + 8, ")");
    goto LABEL_38;
  }

LABEL_39:
  if (v46 != v48)
  {
    free(v46);
  }

  v25 = *MEMORY[0x277D85DE8];
  return v2;
}

void llvm::SmallVectorTemplateBase<mlir::OpOperand *,true>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 8);
    LODWORD(v4) = *(a1 + 8);
  }

  *(*a1 + 8 * v4) = a2;
  ++*(a1 + 8);
}

uint64_t anonymous namespace::getNumTensorResults(_anonymous_namespace_ *this, mlir::Operation *a2)
{
  v2 = *(this + 9);
  if (v2)
  {
    v3 = this - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = 0;
  if (v2)
  {
    v5 = 0;
    for (i = v3; ; i -= 16)
    {
      v7 = v3;
      if (v5)
      {
        v8 = *(this - 1) & 7;
        v9 = v3;
        v10 = v5;
        if (v8 == 6)
        {
          goto LABEL_10;
        }

        v11 = (5 - v8);
        v7 = i;
        v10 = v5 - v11;
        if (v5 > v11)
        {
          break;
        }
      }

LABEL_11:
      v12 = *(*(*(v7 + 1) & 0xFFFFFFFFFFFFFFF8) + 136);
      if (v12 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        ++v4;
      }

      if (v2 == ++v5)
      {
        return v4;
      }
    }

    v9 = &v3[-16 * v11];
LABEL_10:
    v7 = &v9[-24 * v10];
    goto LABEL_11;
  }

  return v4;
}

BOOL mlir::detail::constant_int_value_binder::match(mlir::detail::constant_int_value_binder *this, mlir::Operation *a2)
{
  v9 = &v10;
  v10 = 0;
  result = mlir::detail::constant_op_binder<mlir::Attribute>::match(&v9, a2);
  if (result)
  {
    v5 = *(*(*(a2 - 1) & 0xFFFFFFFFFFFFFFF8) + 136);
    return (v5 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id) && mlir::detail::constant_int_value_binder::match(this, v10);
  }

  return result;
}

BOOL mlir::detail::constant_int_value_binder::match(uint64_t *a1, uint64_t a2)
{
  v8 = *a1;
  if (mlir::detail::attr_value_binder<mlir::IntegerAttr,llvm::APInt,void>::match(&v8, a2))
  {
    return 1;
  }

  v4 = *(*a2 + 136);
  v5 = v4 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
  if (!v5 || *(a2 + 24) != 1)
  {
    return 0;
  }

  v6 = *(a2 + 8);
  (*(*(a2 + 16) + 24))();
  v9[0] = a2;
  v9[1] = 0;
  v7 = mlir::DenseElementsAttr::AttributeElementIterator::operator*(v9);
  return mlir::detail::attr_value_binder<mlir::IntegerAttr,llvm::APInt,void>::match(&v8, v7);
}

BOOL mlir::detail::attr_value_binder<mlir::IntegerAttr,llvm::APInt,void>::match(uint64_t *a1, uint64_t a2)
{
  v2 = *(*a2 + 136);
  if (v2 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v3 = *(a2 + 24);
    if (v3 > 0x40)
    {
      operator new[]();
    }

    v4 = *(a2 + 16);
    v5 = *a1;
    if (*(*a1 + 8) >= 0x41u && *v5)
    {
      MEMORY[0x25F891010](*v5, 0x1000C8000313F17);
    }

    *v5 = v4;
    *(v5 + 8) = v3;
  }

  return v2 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
}

uint64_t mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::ValueBoundsOpInterface>();
      mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[154];
}

uint64_t llvm::getTypeName<mlir::ValueBoundsOpInterface>()
{
  {
    llvm::getTypeName<mlir::ValueBoundsOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ValueBoundsOpInterface>();
    *algn_27FC194E8 = v1;
  }

  return llvm::getTypeName<mlir::ValueBoundsOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::ValueBoundsOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ValueBoundsOpInterface]";
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

void llvm::SmallVectorImpl<mlir::OpFoldResult>::append<mlir::OpFoldResult const*,void>(uint64_t a1, _BYTE *__src, _BYTE *a3)
{
  v6 = a3 - __src;
  v7 = *(a1 + 8);
  v8 = v7 + ((a3 - __src) >> 3);
  if (v8 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 8);
    LODWORD(v7) = *(a1 + 8);
  }

  if (__src != a3)
  {
    memcpy((*a1 + 8 * v7), __src, v6);
    LODWORD(v7) = *(a1 + 8);
  }

  *(a1 + 8) = v7 + (v6 >> 3);
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::RemoveRedundantCopyWithConstraintsOp::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = **(*(a2 + 72) + 24);
  if (!v3)
  {
    return 0;
  }

  result = 0;
  v7 = a2 - 16;
  do
  {
    v8 = v3[2];
    v3 = *v3;
    if (v8 != a2)
    {
      v9 = *(*(v8 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,void>::id ? v8 : 0;
      if (v9)
      {
        if (*(v9 + 36))
        {
          v10 = v9 - 16;
        }

        else
        {
          v10 = 0;
        }

        v11 = *(v10 + 8);
        if (*(a2 + 36))
        {
          v12 = v7;
        }

        else
        {
          v12 = 0;
        }

        if ((*(v12 + 8) ^ v11) <= 7)
        {
          (*(*a3 + 8))(a3);
          result = 1;
        }
      }
    }
  }

  while (v3);
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::RemoveRedundantCopyDiscardingConstraintsOp::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = **(*(a2 + 72) + 24);
  if (!v3)
  {
    return 0;
  }

  result = 0;
  do
  {
    v7 = v3[2];
    v3 = *v3;
    if (v7 != a2)
    {
      if (v7)
      {
        v8 = *(*(v7 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,void>::id;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        (*(*a3 + 8))(a3);
        result = 1;
      }
    }
  }

  while (v3);
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::PromoteToFromPairToCastOp::matchAndRewrite(int a1, mlir::Operation *this, void *a3)
{
  v41[8] = *MEMORY[0x277D85DE8];
  mlir::Operation::getUsers(this, &v34);
  v5 = v37;
  v33 = v36[0];
  *v31 = v34;
  v32 = v35;
  if (v36[0] == v37)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      ++v6;
      mlir::ResultRange::UseIterator::operator++(v31);
    }

    while (v33 != v5);
  }

  v31[0] = &v32;
  v31[1] = 0x600000000;
  mlir::Operation::getUsers(this, &v34);
  v7 = v36[0];
  v8 = v37;
  v30 = v36[0];
  v29[0] = v34;
  for (v29[1] = v35; v30 != v8; v7 = v30)
  {
    v9 = *(v7 + 16);
    if (v9)
    {
      v10 = *(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,void>::id;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      v11 = LODWORD(v31[1]);
      if (LODWORD(v31[1]) >= HIDWORD(v31[1]))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v31, &v32, LODWORD(v31[1]) + 1, 8);
        v11 = LODWORD(v31[1]);
      }

      *(v31[0] + v11) = v9;
      ++LODWORD(v31[1]);
    }

    mlir::ResultRange::UseIterator::operator++(v29);
  }

  if (LODWORD(v31[1]))
  {
    v12 = v31[0];
    v13 = 8 * LODWORD(v31[1]);
    do
    {
      v15 = *v12++;
      v14 = v15;
      v16 = v15 - 16;
      if (*(v15 + 36))
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      v18 = *(v17 + 8);
      v19 = *(*(this + 9) + 24);
      v20 = *(v14 + 24);
      v21 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreMLAX::CastOp>((a3 + 1), *(**v20 + 32));
      *&v34 = v20;
      *(&v34 + 1) = v21;
      *&v35 = v36;
      *(&v35 + 1) = 0x400000000;
      v36[4] = v38;
      v37 = 0x400000000;
      v38[4] = v39;
      v38[5] = 0x400000000;
      v39[8] = 4;
      v39[9] = v40;
      v39[10] = 0x100000000;
      v40[1] = v41;
      v40[2] = 0x100000000;
      v41[1] = 0;
      v41[2] = 0;
      v41[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v41[4] = 0;
      v41[6] = 0;
      mlir::ODIE::Compiler::CoreMLAX::CastOp::build((a3 + 1), &v34, v18 & 0xFFFFFFFFFFFFFFF8, v19);
      v22 = mlir::Operation::create(&v34);
      mlir::OpBuilder::insert((a3 + 1), v22);
      v23 = *(*(v22 + 6) + 16);
      mlir::OperationState::~OperationState(&v34);
      if (v23 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CastOp,void>::id)
      {
        v24 = v22;
      }

      else
      {
        v24 = 0;
      }

      (*(*a3 + 8))(a3, v14, v24);
      v13 -= 8;
    }

    while (v13);
    if (v6 == LODWORD(v31[1]))
    {
      (*(*a3 + 16))(a3, this);
    }

    v25 = 1;
  }

  else
  {
    *&v34 = "no coremlax.copy_with_constraints users";
    LOWORD(v36[0]) = 259;
    *&v29[0] = &v34;
    v26 = a3[2];
    if (v26 && v26[2] == 1)
    {
      (*(*v26 + 88))(v26, *(this + 3), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp &>(mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v29);
    }

    v25 = 0;
  }

  if (v31[0] != &v32)
  {
    free(v31[0]);
  }

  v27 = *MEMORY[0x277D85DE8];
  return v25;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::FoldCastOpIntoCopyWithConstraintsOp::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23[8] = *MEMORY[0x277D85DE8];
  v3 = *(*(a2 + 72) + 24);
  if (!*v3 || **v3 || (v3[1] & 7) == 7)
  {
    goto LABEL_9;
  }

  v6 = v3[1] & 7;
  if (v6 == 6)
  {
    v7 = &v3[3 * v3[2]];
    v8 = v7 + 15;
    if (v7 == -120)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = &v3[2 * v6 + 2];
  }

  if (*(v8[6] + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,void>::id)
  {
LABEL_9:
    result = 0;
    goto LABEL_10;
  }

  if (*(a2 + 36))
  {
    v11 = a2 - 16;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v11 + 8);
  v13 = *(v8[9] + 24);
  v14 = v8[3];
  v15 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>(a3 + 8, *(**v14 + 32));
  v18[0] = v14;
  v18[1] = v15;
  v18[2] = v19;
  v18[3] = 0x400000000;
  v19[4] = v20;
  v19[5] = 0x400000000;
  v20[4] = v21;
  v20[5] = 0x400000000;
  v21[8] = 4;
  v21[9] = v22;
  v21[10] = 0x100000000;
  v22[1] = v23;
  v22[2] = 0x100000000;
  v23[1] = 0;
  v23[2] = 0;
  v23[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v23[4] = 0;
  v23[6] = 0;
  mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp::build(a3 + 8, v18, v12 & 0xFFFFFFFFFFFFFFF8, v13);
  v16 = mlir::Operation::create(v18);
  mlir::OpBuilder::insert((a3 + 8), v16);
  v17 = *(*(v16 + 6) + 16);
  mlir::OperationState::~OperationState(v18);
  if (v17 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,void>::id)
  {
    v16 = 0;
  }

  (*(*a3 + 8))(a3, v8, v16);
  (*(*a3 + 8))(a3, a2, v16);
  result = 1;
LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::PromoteCastOpToViewOp::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v42[8] = *MEMORY[0x277D85DE8];
  v5 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(a2 + 36))
  {
    v6 = a2 - 16;
  }

  else
  {
    v6 = 0;
  }

  v7 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5[3] != v7[3])
  {
    v35[0] = "source dtype and result dtype are different";
    v36 = 259;
    __s1 = v35;
    v8 = a3[2];
    if (v8 && v8[2] == 1)
    {
      (*(*v8 + 88))(v8, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreMLAX::CastOp &>(mlir::ODIE::Compiler::CoreMLAX::CastOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &__s1);
    }

    v9 = 0;
    goto LABEL_29;
  }

  mlir::ODIE::Compiler::CoreMLAX::getStrides(v5, &__s1);
  mlir::ODIE::Compiler::CoreMLAX::getStrides(v7, &__s2);
  if (v33)
  {
    v10 = 8 * v33;
    v11 = __s1;
    while (*v11 != 0x8000000000000000)
    {
      ++v11;
      v10 -= 8;
      if (!v10)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_20;
  }

LABEL_13:
  if (v30)
  {
    v12 = 8 * v30;
    v13 = __s2;
    while (*v13 != 0x8000000000000000)
    {
      ++v13;
      v12 -= 8;
      if (!v12)
      {
        goto LABEL_17;
      }
    }

LABEL_20:
    v14 = "source or result have dynamic shape";
    goto LABEL_21;
  }

LABEL_17:
  if (v33 == v30 && !memcmp(__s1, __s2, 8 * v33))
  {
    v18 = *(*(a2 + 72) + 24);
    v19 = *(a2 + 24);
    v20 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ViewOp,void>::id, *(**v19 + 32));
    if ((v21 & 1) == 0)
    {
      v28 = 1283;
      v27[2] = "coremlax.view";
      v27[3] = 13;
      v26 = 259;
      llvm::operator+(v27, &v25, v35);
      llvm::report_fatal_error(v35, 1);
    }

    v35[0] = v19;
    v35[1] = v20;
    v35[2] = &v36;
    v35[3] = 0x400000000;
    v37 = v39;
    v38 = 0x400000000;
    v39[4] = v40;
    v39[5] = 0x400000000;
    v40[8] = 4;
    v40[9] = v41;
    v40[10] = 0x100000000;
    v41[1] = v42;
    v41[2] = 0x100000000;
    v42[1] = 0;
    v42[2] = 0;
    v42[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v42[4] = 0;
    v42[6] = 0;
    mlir::ODIE::Compiler::CoreMLAX::ViewOp::build((a3 + 1), v35, v7, v18);
    v22 = mlir::Operation::create(v35);
    mlir::OpBuilder::insert((a3 + 1), v22);
    v23 = *(*(v22 + 6) + 16);
    mlir::OperationState::~OperationState(v35);
    if (v23 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ViewOp,void>::id)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0;
    }

    (*(*a3 + 8))(a3, a2, v24);
    v9 = 1;
    goto LABEL_25;
  }

  v14 = "source strides don't match dest strides";
LABEL_21:
  v35[0] = v14;
  v36 = 259;
  v27[0] = v35;
  v15 = a3[2];
  if (v15 && v15[2] == 1)
  {
    (*(*v15 + 88))(v15, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreMLAX::CastOp &>(mlir::ODIE::Compiler::CoreMLAX::CastOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v27);
  }

  v9 = 0;
LABEL_25:
  if (__s2 != &v31)
  {
    free(__s2);
  }

  if (__s1 != &v34)
  {
    free(__s1);
  }

LABEL_29:
  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

void mlir::ODIE::Compiler::CoreMLAX::RemoveRedundantCopyWithConstraintsOp::~RemoveRedundantCopyWithConstraintsOp(mlir::ODIE::Compiler::CoreMLAX::RemoveRedundantCopyWithConstraintsOp *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

void mlir::ODIE::Compiler::CoreMLAX::RemoveRedundantCopyDiscardingConstraintsOp::~RemoveRedundantCopyDiscardingConstraintsOp(mlir::ODIE::Compiler::CoreMLAX::RemoveRedundantCopyDiscardingConstraintsOp *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

void mlir::ODIE::Compiler::CoreMLAX::PromoteToFromPairToCastOp::~PromoteToFromPairToCastOp(mlir::ODIE::Compiler::CoreMLAX::PromoteToFromPairToCastOp *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

void mlir::ODIE::Compiler::CoreMLAX::FoldCastOpIntoCopyWithConstraintsOp::~FoldCastOpIntoCopyWithConstraintsOp(mlir::ODIE::Compiler::CoreMLAX::FoldCastOpIntoCopyWithConstraintsOp *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

void mlir::ODIE::Compiler::CoreMLAX::PromoteCastOpToViewOp::~PromoteCastOpToViewOp(mlir::ODIE::Compiler::CoreMLAX::PromoteCastOpToViewOp *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreMLAX::CastOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CastOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coremlax.cast";
    v6[3] = 13;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

void mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::computeStrides(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 32);
  *a3 = a3 + 2;
  a3[1] = 0x600000000;
  llvm::SmallVectorImpl<long long>::resizeImpl<false>(a3, v5);
  if (v8)
  {
    v9 = 8 * v8;
    v10 = 1;
    v11 = v7;
    while (*v11 != 0x8000000000000000)
    {
      v10 *= *v11++;
      v9 -= 8;
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    v10 = 0x8000000000000000;
  }

  else
  {
    v10 = 1;
  }

LABEL_8:
  v12 = *(a3 + 2);
  if (v12)
  {
    v13 = 0;
    v14 = 8 * v12;
    v15 = v7 - 2;
    v16 = a2 - 16;
    v17 = *a3 - 8;
    v18 = v6 - 8;
    v19 = 1;
    v20 = 8;
    while (1)
    {
      v21 = 0x8000000000000000;
      v13 |= v10 == 0x8000000000000000;
      if ((v13 & 1) == 0)
      {
        v21 = (*(v18 + v14) + v10 * v19 - 1) / *(v18 + v14) * *(v18 + v14);
      }

      *(v17 + v14) = v21;
      if (v14 == v20)
      {
        break;
      }

      v22 = *(v16 + v14);
      v23 = v15[v14 / 8];
      --v15;
      v16 -= 8;
      v20 += 8;
      v17 -= 8;
      v18 -= 8;
      v19 = v21;
      v10 = v22 / v23;
    }
  }
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::verifyEncoding(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v7 = *(*a1 + 16);
  if (v7 != a3 + 1)
  {
    a5(&v27, a6);
    if (v27)
    {
      mlir::Diagnostic::operator<<<48ul>(v28, "expected alignments to have (rank + 1) elements");
    }

    goto LABEL_30;
  }

  if (v6[4] != a3)
  {
    a5(&v27, a6);
    if (v27)
    {
      mlir::Diagnostic::operator<<<44ul>(v28, "expected interleave to have (rank) elements");
    }

    goto LABEL_30;
  }

  v8 = v6[3];
  if (v7)
  {
    v9 = v6[1];
    v10 = 8 * v7;
    do
    {
      if (*v9 == 0x8000000000000000)
      {
        a5(&v27, a6);
        if (v27)
        {
          mlir::Diagnostic::operator<<<45ul>(v28, "expected alignments to be statically defined");
        }

        goto LABEL_30;
      }

      ++v9;
      v10 -= 8;
    }

    while (v10);
  }

  if (a3)
  {
    v11 = 0;
    v12 = 8 * a3 - 8;
    v13 = a2;
    while (1)
    {
      v14 = v12;
      v15 = *v13;
      v16 = *v8;
      if (*v8 != 1 && (*v13 == 0x8000000000000000) == (*v8 != 0x8000000000000000))
      {
        a5(&v27, a6);
        if (v27)
        {
          mlir::Diagnostic::operator<<<87ul>(v28, "dimension shape and dimension interleave factor must both be static or both be dynamic");
        }

        goto LABEL_30;
      }

      if (v16 != 1 && ((v11 ^ 1) & 1) == 0)
      {
        break;
      }

      if (v15 != 0x8000000000000000)
      {
        if (v15 < v16)
        {
          a5(&v27, a6);
          if (v27)
          {
            mlir::Diagnostic::operator<<<29ul>(v28, "dimension interleave factor ");
          }

          v21 = mlir::InFlightDiagnostic::operator<<<long long const&>(&v27, v8);
          v22 = v21;
          if (*v21)
          {
            mlir::Diagnostic::operator<<<43ul>((v21 + 1), " must not be greater than dimension shape ");
          }

          v23 = v22;
          v24 = v13;
          goto LABEL_43;
        }

        if (v15 % v16)
        {
          a5(&v27, a6);
          if (v27)
          {
            mlir::Diagnostic::operator<<<17ul>(v28, "dimension shape ");
          }

          v25 = mlir::InFlightDiagnostic::operator<<<long long const&>(&v27, v13);
          v26 = v25;
          if (*v25)
          {
            mlir::Diagnostic::operator<<<52ul>((v25 + 1), " must be a multiple of dimension interleave factor ");
          }

          v23 = v26;
          v24 = v8;
LABEL_43:
          v18 = *(mlir::InFlightDiagnostic::operator<<<long long const&>(v23, v24) + 200);
          goto LABEL_31;
        }
      }

      v11 |= v16 != 1;
      ++v13;
      ++v8;
      v12 = v14 - 8;
      if (!v14)
      {
        goto LABEL_17;
      }
    }

    a5(&v27, a6);
    if (v27)
    {
      mlir::Diagnostic::operator<<<52ul>(v28, "interleave is only supported for a single dimension");
    }

LABEL_30:
    v18 = v28[192];
LABEL_31:
    v17 = (v18 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v27);
  }

  else
  {
LABEL_17:
    v27 = v6[6];
    if (v27)
    {
      v17 = mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::verifyEncoding(&v27, a2, a3, a4, a5, a6);
    }

    else
    {
      v17 = 1;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t *mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect::materializeConstant(uint64_t a1, mlir::OpBuilder *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v15 = a4;
  result = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(a3);
  if (result)
  {
    if ((*v10)(v10, result) == a4)
    {
      if (a3)
      {
        v11 = *a3;
        v12 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
        v13 = mlir::detail::InterfaceMap::lookup(v11 + 8, v12);
      }

      else
      {
        v13 = 0;
      }

      v14[0] = a3;
      v14[1] = v13;
      return mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::Type &,mlir::TypedAttr>(a2, a5, &v15, v14);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::get(uint64_t *a1, llvm::hashing::detail::hash_state *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v11[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id;
  v11[1] = a1;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler8CoreMLAX6detail30HardwareConstraintsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_23HardwareConstraintsAttrEJNS_8ArrayRefIxEESG_NS4_18AllocationTypeEnumENS3_6CoreML18TensorEncodingAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESM_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSO_E_EEvlS7_;
  v17[1] = v11;
  v13[0] = a2;
  v13[1] = a3;
  v14[0] = a4;
  v14[1] = a5;
  v15 = a6;
  v16 = a7;
  memset(v19, 0, sizeof(v19));
  memset(v18, 0, sizeof(v18));
  v20 = 0;
  v21 = 0xFF51AFD7ED558CCDLL;
  v8 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,mlir::ODIE::Compiler::CoreMLAX::AllocationTypeEnum,mlir::ODIE::Compiler::CoreML::TensorEncodingAttr>(v18, v18, v19, a2, a3, v14, &v15, &v16);
  v12 = v13;
  *&v18[0] = v13;
  *(&v18[0] + 1) = v17;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v7 + 560), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id, v8, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreMLAX::detail::HardwareConstraintsAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreMLAX::detail::HardwareConstraintsAttrStorage,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,mlir::ODIE::Compiler::CoreMLAX::AllocationTypeEnum,mlir::ODIE::Compiler::CoreML::TensorEncodingAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreMLAX::detail::HardwareConstraintsAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,mlir::ODIE::Compiler::CoreMLAX::AllocationTypeEnum,mlir::ODIE::Compiler::CoreML::TensorEncodingAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreMLAX::detail::HardwareConstraintsAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreMLAX::detail::HardwareConstraintsAttrStorage,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,mlir::ODIE::Compiler::CoreMLAX::AllocationTypeEnum,mlir::ODIE::Compiler::CoreML::TensorEncodingAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreMLAX::detail::HardwareConstraintsAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,mlir::ODIE::Compiler::CoreMLAX::AllocationTypeEnum,mlir::ODIE::Compiler::CoreML::TensorEncodingAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v18);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::get(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v20 = v22;
  v21 = 0x600000000;
  llvm::SmallVectorImpl<long long>::assign(&v20, a3 + 1, 1);
  v17 = v19;
  v18 = 0x600000000;
  llvm::SmallVectorImpl<long long>::assign(&v17, a3, 1);
  v5 = *a1;
  v10[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id;
  v10[1] = a1;
  v16[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler8CoreMLAX6detail30HardwareConstraintsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_23HardwareConstraintsAttrEJNS_11SmallVectorIxLj6EEESG_NS4_18AllocationTypeEnumENS3_6CoreML18TensorEncodingAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESM_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSO_E_EEvlS7_;
  v16[1] = v10;
  v12[0] = v20;
  v12[1] = v21;
  v13[0] = v17;
  v13[1] = v18;
  v14 = 3;
  v15 = 0;
  memset(v24, 0, sizeof(v24));
  memset(v23, 0, sizeof(v23));
  v25 = 0;
  v26 = 0xFF51AFD7ED558CCDLL;
  v6 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,mlir::ODIE::Compiler::CoreMLAX::AllocationTypeEnum,mlir::ODIE::Compiler::CoreML::TensorEncodingAttr>(v23, v23, v24, v20, v21, v13, &v14, &v15);
  v11 = v12;
  v23[0] = v12;
  v23[1] = v16;
  v7 = mlir::detail::StorageUniquerImpl::getOrCreate(*(v5 + 560), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id, v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreMLAX::detail::HardwareConstraintsAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreMLAX::detail::HardwareConstraintsAttrStorage,llvm::SmallVector<long long,6u>,llvm::SmallVector<long long,6u>,mlir::ODIE::Compiler::CoreMLAX::AllocationTypeEnum,mlir::ODIE::Compiler::CoreML::TensorEncodingAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreMLAX::detail::HardwareConstraintsAttrStorage *)>,mlir::TypeID,llvm::SmallVector<long long,6u>,llvm::SmallVector<long long,6u>,mlir::ODIE::Compiler::CoreMLAX::AllocationTypeEnum,mlir::ODIE::Compiler::CoreML::TensorEncodingAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreMLAX::detail::HardwareConstraintsAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreMLAX::detail::HardwareConstraintsAttrStorage,llvm::SmallVector<long long,6u>,llvm::SmallVector<long long,6u>,mlir::ODIE::Compiler::CoreMLAX::AllocationTypeEnum,mlir::ODIE::Compiler::CoreML::TensorEncodingAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreMLAX::detail::HardwareConstraintsAttrStorage *)>,mlir::TypeID,llvm::SmallVector<long long,6u>,llvm::SmallVector<long long,6u>,mlir::ODIE::Compiler::CoreMLAX::AllocationTypeEnum,mlir::ODIE::Compiler::CoreML::TensorEncodingAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v23);
  if (v17 != v19)
  {
    free(v17);
  }

  if (v20 != v22)
  {
    free(v20);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::FieldParser<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,mlir::ODIE::Compiler::CoreML::TensorEncodingAttr>::parse(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = (*(*a1 + 32))(a1);
  mlir::MLIRContext::getOrLoadDialect(*v2, "coreml", 6uLL, v3);
  v4 = (*(*a1 + 40))(a1);
  v11 = 0;
  v12[0] = a1;
  if ((*(*a1 + 448))(a1, &v11, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4ODIE8Compiler6CoreML18TensorEncodingAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSH_S5_EUlS4_S5_E_EES1_lS4_S5_, v12))
  {
    v5 = v11;
    v6 = 1;
    if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,void>::id)
    {
      v9 = "invalid kind of attribute specified";
      v10 = 259;
      (*(*a1 + 24))(v12, a1, v4, &v9);
      v6 = (v13 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (v6)
  {
    result = v5;
  }

  else
  {
    result = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::ImageConstraintsAttr::get(uint64_t *a1, llvm::hashing::detail::hash_state *a2, uint64_t a3, unint64_t *a4, uint64_t a5, uint64_t a6)
{
  v6 = a4;
  v17[16] = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v11[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ImageConstraintsAttr,void>::id;
  v11[1] = a1;
  v16[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler8CoreMLAX6detail27ImageConstraintsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_20ImageConstraintsAttrEJNS_9StringRefENS4_22ImageContainerTypeEnumENS_8ArrayRefIxEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS7_;
  v16[1] = v11;
  v13[0] = a2;
  v13[1] = a3;
  v14 = a4;
  v15[0] = a5;
  v15[1] = a6;
  memset(&v17[1], 0, 112);
  v17[15] = 0xFF51AFD7ED558CCDLL;
  v17[0] = llvm::hashing::detail::hash_combine_range_impl<char const>(a2, a2 + a3, a3, a4);
  LODWORD(v17[1]) = v6;
  v8 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<long long>>(v17, 0, (&v17[1] + 4), &v17[8], v15);
  v12 = v13;
  v17[0] = v13;
  v17[1] = v16;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v7 + 560), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ImageConstraintsAttr,void>::id, v8, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreMLAX::detail::ImageConstraintsAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreMLAX::detail::ImageConstraintsAttrStorage,llvm::StringRef,mlir::ODIE::Compiler::CoreMLAX::ImageContainerTypeEnum,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreMLAX::detail::ImageConstraintsAttrStorage *)>,mlir::TypeID,llvm::StringRef,mlir::ODIE::Compiler::CoreMLAX::ImageContainerTypeEnum,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreMLAX::detail::ImageConstraintsAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreMLAX::detail::ImageConstraintsAttrStorage,llvm::StringRef,mlir::ODIE::Compiler::CoreMLAX::ImageContainerTypeEnum,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreMLAX::detail::ImageConstraintsAttrStorage *)>,mlir::TypeID,llvm::StringRef,mlir::ODIE::Compiler::CoreMLAX::ImageContainerTypeEnum,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v17);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect::parseAttribute(uint64_t a1, uint64_t a2)
{
  v79 = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 40))(a2);
  mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::KeywordSwitch(v50, a2, 0);
  v54 = "hw_constraints";
  v55 = 14;
  if (v53[2])
  {
    goto LABEL_2;
  }

  v6 = v52;
  if (v52 == 14)
  {
    if (*v51 != 0x74736E6F635F7768 || *(v51 + 6) != 0x73746E6961727473)
    {
      goto LABEL_14;
    }

    (*(*a2 + 32))(a2);
    (*(*a2 + 40))(a2);
    LOBYTE(v70) = 0;
    v74 = 0;
    LOBYTE(v65) = 0;
    v69 = 0;
    if (((*(*a2 + 152))(a2) & 1) == 0)
    {
      goto LABEL_149;
    }

    v62 = 0;
    v63 = 0;
    v64 = 0;
    v21 = (*(*a2 + 40))(a2);
    if ((*(*a2 + 432))(a2, &v62))
    {
      if (v64 >= 0)
      {
        v22 = &v62;
      }

      else
      {
        v22 = v62;
      }

      if (v64 >= 0)
      {
        v23 = SHIBYTE(v64);
      }

      else
      {
        v23 = v63;
      }

      v24 = mlir::ODIE::Compiler::CoreMLAX::convertToEnum(v22, v23);
      if ((v24 & 0x100000000) != 0)
      {
        v29 = v24;
        v30 = 0;
LABEL_70:
        if (SHIBYTE(v64) < 0)
        {
          operator delete(v62);
        }

        v31 = *a2;
        if (v30)
        {
          v32 = (*(v31 + 40))(a2);
LABEL_74:
          v60[0] = v33;
          v61 = 259;
          (*(*a2 + 24))(&__p, a2, v32, v60);
LABEL_75:
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&__p);
          goto LABEL_149;
        }

        if (((*(v31 + 120))(a2) & 1) == 0)
        {
          goto LABEL_149;
        }

        v78 = 257;
        if (((*(*a2 + 400))(a2, "alignments", 10, &__p) & 1) == 0 || ((*(*a2 + 104))(a2) & 1) == 0 || ((*(*a2 + 312))(a2) & 1) == 0)
        {
          goto LABEL_149;
        }

        v34 = (*(*a2 + 40))(a2);
        if (v74 == 1 && v70 != v72)
        {
          free(v70);
        }

        v70 = v72;
        v71 = 0x600000000;
        v74 = 1;
        if (((*(*a2 + 600))(a2, &v70, 1, 0) & 1) == 0)
        {
          goto LABEL_149;
        }

        if (v74)
        {
          if (((*(*a2 + 328))(a2) & 1) == 0)
          {
            goto LABEL_149;
          }

          if (((*(*a2 + 120))(a2) & 1) == 0)
          {
            goto LABEL_149;
          }

          v78 = 257;
          if (((*(*a2 + 400))(a2, "interleave", 10, &__p) & 1) == 0 || ((*(*a2 + 104))(a2) & 1) == 0 || ((*(*a2 + 312))(a2) & 1) == 0)
          {
            goto LABEL_149;
          }

          v34 = (*(*a2 + 40))(a2);
          if (v69 == 1 && v65 != v67)
          {
            free(v65);
          }

          v65 = v67;
          v66 = 0x600000000;
          v69 = 1;
          if (((*(*a2 + 600))(a2, &v65, 1, 0) & 1) == 0)
          {
            goto LABEL_149;
          }

          if (v69)
          {
            if (((*(*a2 + 328))(a2) & 1) == 0)
            {
              goto LABEL_149;
            }

            if ((*(*a2 + 128))(a2))
            {
              v78 = 257;
              if (((*(*a2 + 400))(a2, "baseEncoding", 12, &__p) & 1) == 0 || ((*(*a2 + 104))(a2) & 1) == 0)
              {
                goto LABEL_149;
              }

              v35 = mlir::FieldParser<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,mlir::ODIE::Compiler::CoreML::TensorEncodingAttr>::parse(a2);
              if ((v36 & 1) == 0)
              {
                v32 = (*(*a2 + 40))(a2);
                goto LABEL_74;
              }

              v37 = v35;
            }

            else
            {
              v37 = 0;
            }

            if ((*(*a2 + 168))(a2))
            {
              v49 = (*(*a2 + 32))(a2);
              v5 = mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::get(*v49, v70, v71, v65, v66, v29, v37);
              goto LABEL_150;
            }

LABEL_149:
            v5 = 0;
LABEL_150:
            if (v69 == 1 && v65 != v67)
            {
              free(v65);
            }

            if (v74 == 1 && v70 != v72)
            {
              free(v70);
            }

            goto LABEL_156;
          }

          v40 = "custom parser failed to parse parameter 'interleave'";
        }

        else
        {
          v40 = "custom parser failed to parse parameter 'alignments'";
        }

        v60[0] = v40;
        v61 = 259;
        (*(*a2 + 24))(&__p, a2, v34, v60);
        goto LABEL_75;
      }

      v56[0] = "invalid An enum corresponding to the backing type to be used for allocations. specification: ";
      v59 = 259;
      (*(*a2 + 24))(&__p, a2, v21, v56);
      if (__p.n128_u64[0])
      {
        v61 = 260;
        v60[0] = &v62;
        mlir::Diagnostic::operator<<(&__p.n128_i64[1], v60);
      }
    }

    else
    {
      v60[0] = "expected keyword for An enum corresponding to the backing type to be used for allocations.";
      v61 = 259;
      (*(*a2 + 24))(&__p, a2, v21, v60);
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__p);
    v29 = 0;
    v30 = 1;
    goto LABEL_70;
  }

  if (v52)
  {
LABEL_14:
    v54 = "image_constraints";
    v55 = 17;
    goto LABEL_15;
  }

  (*(*v50[0] + 648))(v50[0], &v54, 1);
  v54 = "image_constraints";
  v55 = 17;
  if (v53[2])
  {
LABEL_2:
    v5 = 0;
LABEL_3:
    v6 = 0;
    v7 = 0;
    goto LABEL_58;
  }

  v6 = v52;
  if (v52)
  {
LABEL_15:
    if (v6 != 17)
    {
      goto LABEL_57;
    }

    v9 = *v51 == 0x6F635F6567616D69 && *(v51 + 8) == 0x746E69617274736ELL;
    if (!v9 || *(v51 + 16) != 115)
    {
      goto LABEL_57;
    }

    (*(*a2 + 32))(a2);
    (*(*a2 + 40))(a2);
    LOBYTE(v56[0]) = 0;
    v58 = 0;
    LOBYTE(v70) = 0;
    v74 = 0;
    if (((*(*a2 + 152))(a2) & 1) == 0)
    {
      goto LABEL_104;
    }

    v78 = 257;
    if (((*(*a2 + 400))(a2, "fourCC", 6, &__p) & 1) == 0 || ((*(*a2 + 104))(a2) & 1) == 0)
    {
      goto LABEL_104;
    }

    mlir::FieldParser<std::string,std::string>::parse(a2, &__p);
    v11 = std::__optional_storage_base<std::string,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::string,false>>(v56, &__p);
    if (v77 == 1 && v76 < 0)
    {
      operator delete(__p.n128_u64[0]);
    }

    v12 = *a2;
    if ((v58 & 1) == 0)
    {
      v38 = (*(v12 + 40))(a2, v11);
LABEL_102:
      v65 = v39;
      v68 = 259;
      (*(*a2 + 24))(&__p, a2, v38, &v65);
LABEL_103:
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__p);
      goto LABEL_104;
    }

    if (((*(v12 + 120))(a2, v11) & 1) == 0)
    {
LABEL_104:
      v5 = 0;
LABEL_105:
      if (v74 == 1 && v70 != v72)
      {
        free(v70);
      }

      if (v58 == 1 && v57 < 0)
      {
        operator delete(v56[0]);
      }

LABEL_156:
      v53[0] = v5 != 0;
      *&v53[1] = 257;
      goto LABEL_3;
    }

    v62 = 0;
    v63 = 0;
    v64 = 0;
    v13 = (*(*a2 + 40))(a2);
    if ((*(*a2 + 432))(a2, &v62))
    {
      v14 = SHIBYTE(v64);
      v15 = v62;
      if (v64 >= 0)
      {
        v15 = &v62;
      }

      if (v64 < 0)
      {
        v14 = v63;
      }

      if (v14 == 10)
      {
        v41 = *v15;
        v42 = *(v15 + 4);
        if (v41 == 0x75747865544C544DLL && v42 == 25970)
        {
          v19 = 0;
          v20 = 2;
          goto LABEL_121;
        }
      }

      else if (v14 == 13)
      {
        v16 = *v15;
        v17 = *(v15 + 5);
        if (v16 == 0x426C657869505643 && v17 == 0x7265666675426C65)
        {
          v19 = 0;
          v20 = 1;
LABEL_121:
          if (SHIBYTE(v64) < 0)
          {
            operator delete(v62);
          }

          v44 = *a2;
          if (v19)
          {
            v38 = (*(v44 + 40))(a2);
            goto LABEL_102;
          }

          if (((*(v44 + 120))(a2) & 1) == 0)
          {
            goto LABEL_104;
          }

          v78 = 257;
          if (((*(*a2 + 400))(a2, "rowAlignmentsPerPlane", 21, &__p) & 1) == 0 || ((*(*a2 + 104))(a2) & 1) == 0 || ((*(*a2 + 312))(a2) & 1) == 0)
          {
            goto LABEL_104;
          }

          v45 = (*(*a2 + 40))(a2);
          if (v74 == 1 && v70 != v72)
          {
            free(v70);
          }

          v70 = v72;
          v71 = 0x600000000;
          v74 = 1;
          if (((*(*a2 + 600))(a2, &v70, 1, 0) & 1) == 0)
          {
            goto LABEL_104;
          }

          if ((v74 & 1) == 0)
          {
            v65 = "custom parser failed to parse parameter 'rowAlignmentsPerPlane'";
            v68 = 259;
            (*(*a2 + 24))(&__p, a2, v45, &v65);
            goto LABEL_103;
          }

          if ((*(*a2 + 328))(a2) & 1) != 0 && ((*(*a2 + 168))(a2))
          {
            v46 = *(*(*a2 + 32))(a2);
            if (v57 >= 0)
            {
              v47 = v56;
            }

            else
            {
              v47 = v56[0];
            }

            if (v57 >= 0)
            {
              v48 = v57;
            }

            else
            {
              v48 = v56[1];
            }

            v5 = mlir::ODIE::Compiler::CoreMLAX::ImageConstraintsAttr::get(v46, v47, v48, v20, v70, v71);
            goto LABEL_105;
          }

          goto LABEL_104;
        }
      }

      v60[0] = "invalid An enum corresponding to the backing type to be used for allocations of image types. specification: ";
      v61 = 259;
      (*(*a2 + 24))(&__p, a2, v13, v60);
      if (__p.n128_u64[0])
      {
        v68 = 260;
        v65 = &v62;
        mlir::Diagnostic::operator<<(&__p.n128_i64[1], &v65);
      }
    }

    else
    {
      v65 = "expected keyword for An enum corresponding to the backing type to be used for allocations of image types.";
      v68 = 259;
      (*(*a2 + 24))(&__p, a2, v13, &v65);
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__p);
    v20 = 0;
    v19 = 1;
    goto LABEL_121;
  }

  (*(*v50[0] + 648))(v50[0], &v54, 1);
  if (v53[2])
  {
    v6 = 0;
    v7 = 0;
    v5 = 0;
    goto LABEL_58;
  }

  v6 = v52;
LABEL_57:
  v5 = 0;
  v7 = v51;
  *v53 = 0;
  v53[2] = 1;
LABEL_58:
  if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v50) & 0x100) == 0)
  {
    v68 = 257;
    (*(*a2 + 24))(&__p, a2, v4, &v65);
    if (__p.n128_u64[0])
    {
      if (__p.n128_u64[0])
      {
        v73 = 261;
        v70 = v7;
        v71 = v6;
        mlir::Diagnostic::operator<<(&__p.n128_i64[1], &v70);
        if (__p.n128_u64[0])
        {
          if (__p.n128_u64[0])
          {
            v25 = *(a1 + 8);
            v26 = *(a1 + 16);
            v73 = 261;
            v70 = v25;
            v71 = v26;
            mlir::Diagnostic::operator<<(&__p.n128_i64[1], &v70);
            if (__p.n128_u64[0])
            {
            }
          }
        }
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__p);
    v5 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v5;
}

void mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect::printAttribute(uint64_t a1, uint64_t a2, mlir::AsmPrinter *a3)
{
  v5 = *(*a2 + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id)
  {
    v8 = (*(*a3 + 16))(a3);
    v9 = *(v8 + 4);
    if (*(v8 + 3) - v9 > 0xDuLL)
    {
      qmemcpy(v9, "hw_constraints", 14);
      *(v8 + 4) += 14;
    }

    else
    {
      llvm::raw_ostream::write(v8, "hw_constraints", 0xEuLL);
    }

    v10 = (*(*a3 + 16))(a3);
    v11 = *(v10 + 4);
    if (*(v10 + 3) == v11)
    {
      llvm::raw_ostream::write(v10, "<", 1uLL);
    }

    else
    {
      *v11 = 60;
      ++*(v10 + 4);
    }

    v12 = *(a2 + 40);
    v13 = (*(*a3 + 16))(a3);
    v14 = v12 - 1;
    if ((v12 - 1) > 2)
    {
      v15 = 0;
      v16 = "";
    }

    else
    {
      v15 = qword_25D09F938[v14];
      v16 = (&off_2799BDDF0)[v14];
    }

    llvm::raw_ostream::operator<<(v13, v16, v15);
    v17 = (*(*a3 + 16))(a3);
    v18 = *(v17 + 4);
    if (*(v17 + 3) == v18)
    {
      llvm::raw_ostream::write(v17, ",", 1uLL);
    }

    else
    {
      *v18 = 44;
      ++*(v17 + 4);
    }

    v19 = (*(*a3 + 16))(a3);
    v20 = *(v19 + 4);
    if (v20 >= *(v19 + 3))
    {
      llvm::raw_ostream::write(v19, 32);
    }

    else
    {
      *(v19 + 4) = v20 + 1;
      *v20 = 32;
    }

    v21 = (*(*a3 + 16))(a3);
    v22 = *(v21 + 4);
    if ((*(v21 + 3) - v22) > 9)
    {
      *(v22 + 8) = 29556;
      *v22 = *"alignments";
      *(v21 + 4) += 10;
    }

    else
    {
      llvm::raw_ostream::write(v21, "alignments", 0xAuLL);
    }

    v23 = (*(*a3 + 16))(a3);
    v24 = *(v23 + 4);
    if (*(v23 + 3) == v24)
    {
      llvm::raw_ostream::write(v23, ":", 1uLL);
    }

    else
    {
      *v24 = 58;
      ++*(v23 + 4);
    }

    v25 = (*(*a3 + 16))(a3);
    v26 = *(v25 + 4);
    if (v26 >= *(v25 + 3))
    {
      llvm::raw_ostream::write(v25, 32);
    }

    else
    {
      *(v25 + 4) = v26 + 1;
      *v26 = 32;
    }

    v27 = (*(*a3 + 16))(a3);
    v28 = *(v27 + 4);
    if (*(v27 + 3) == v28)
    {
      llvm::raw_ostream::write(v27, "[", 1uLL);
    }

    else
    {
      *v28 = 91;
      ++*(v27 + 4);
    }

    v96 = *(a2 + 8);
    v29 = (*(*a3 + 16))(a3);
    mlir::detail::printDimensionList<llvm::ArrayRef<long long> &>(v29, &v96);
    v30 = (*(*a3 + 16))(a3);
    v31 = *(v30 + 4);
    if (*(v30 + 3) == v31)
    {
      llvm::raw_ostream::write(v30, "]", 1uLL);
    }

    else
    {
      *v31 = 93;
      ++*(v30 + 4);
    }

    v32 = (*(*a3 + 16))(a3);
    v33 = *(v32 + 4);
    if (*(v32 + 3) == v33)
    {
      llvm::raw_ostream::write(v32, ",", 1uLL);
    }

    else
    {
      *v33 = 44;
      ++*(v32 + 4);
    }

    v34 = (*(*a3 + 16))(a3);
    v35 = *(v34 + 4);
    if (v35 >= *(v34 + 3))
    {
      llvm::raw_ostream::write(v34, 32);
    }

    else
    {
      *(v34 + 4) = v35 + 1;
      *v35 = 32;
    }

    v36 = (*(*a3 + 16))(a3);
    v37 = *(v36 + 4);
    if ((*(v36 + 3) - v37) > 9)
    {
      *(v37 + 8) = 25974;
      *v37 = *"interleave";
      *(v36 + 4) += 10;
    }

    else
    {
      llvm::raw_ostream::write(v36, "interleave", 0xAuLL);
    }

    v38 = (*(*a3 + 16))(a3);
    v39 = *(v38 + 4);
    if (*(v38 + 3) == v39)
    {
      llvm::raw_ostream::write(v38, ":", 1uLL);
    }

    else
    {
      *v39 = 58;
      ++*(v38 + 4);
    }

    v40 = (*(*a3 + 16))(a3);
    v41 = *(v40 + 4);
    if (v41 >= *(v40 + 3))
    {
      llvm::raw_ostream::write(v40, 32);
    }

    else
    {
      *(v40 + 4) = v41 + 1;
      *v41 = 32;
    }

    v42 = (*(*a3 + 16))(a3);
    v43 = *(v42 + 4);
    if (*(v42 + 3) == v43)
    {
      llvm::raw_ostream::write(v42, "[", 1uLL);
    }

    else
    {
      *v43 = 91;
      ++*(v42 + 4);
    }

    v96 = *(a2 + 24);
    v44 = (*(*a3 + 16))(a3);
    mlir::detail::printDimensionList<llvm::ArrayRef<long long> &>(v44, &v96);
    v45 = (*(*a3 + 16))(a3);
    v46 = *(v45 + 4);
    if (*(v45 + 3) == v46)
    {
      llvm::raw_ostream::write(v45, "]", 1uLL);
    }

    else
    {
      *v46 = 93;
      ++*(v45 + 4);
    }

    if (*(a2 + 48))
    {
      v47 = (*(*a3 + 16))(a3);
      v48 = *(v47 + 4);
      if (*(v47 + 3) == v48)
      {
        llvm::raw_ostream::write(v47, ",", 1uLL);
      }

      else
      {
        *v48 = 44;
        ++*(v47 + 4);
      }

      v51 = (*(*a3 + 16))(a3);
      v52 = *(v51 + 4);
      if (v52 >= *(v51 + 3))
      {
        llvm::raw_ostream::write(v51, 32);
      }

      else
      {
        *(v51 + 4) = v52 + 1;
        *v52 = 32;
      }

      v53 = (*(*a3 + 16))(a3);
      v54 = *(v53 + 4);
      if ((*(v53 + 3) - v54) > 0xB)
      {
        *(v54 + 8) = 1735289188;
        *v54 = *"baseEncoding";
        *(v53 + 4) += 12;
      }

      else
      {
        llvm::raw_ostream::write(v53, "baseEncoding", 0xCuLL);
      }

      v55 = (*(*a3 + 16))(a3);
      v56 = *(v55 + 4);
      if (*(v55 + 3) == v56)
      {
        llvm::raw_ostream::write(v55, ":", 1uLL);
      }

      else
      {
        *v56 = 58;
        ++*(v55 + 4);
      }

      if (*(a2 + 48))
      {
        v63 = (*(*a3 + 16))(a3);
        v64 = *(v63 + 4);
        if (v64 >= *(v63 + 3))
        {
          llvm::raw_ostream::write(v63, 32);
        }

        else
        {
          *(v63 + 4) = v64 + 1;
          *v64 = 32;
        }

        *&v96 = *(a2 + 48);
        if (((*(*a3 + 56))(a3) & 1) == 0)
        {
          v92 = (*(*a3 + 16))(a3);
          v93 = (*(*v92 + 80))(v92) + v92[4] - v92[2];
          mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::print(&v96, a3);
          if (v93 == (*(*v92 + 80))(v92) + v92[4] - v92[2])
          {
            (*(*a3 + 40))(a3, v96);
          }
        }
      }
    }
  }

  else
  {
    if (v5 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ImageConstraintsAttr,void>::id)
    {
      return;
    }

    v6 = (*(*a3 + 16))(a3);
    v7 = *(v6 + 4);
    if ((*(v6 + 3) - v7) > 0x10)
    {
      *(v7 + 16) = 115;
      *v7 = *"image_constraints";
      *(v6 + 4) += 17;
    }

    else
    {
      llvm::raw_ostream::write(v6, "image_constraints", 0x11uLL);
    }

    v49 = (*(*a3 + 16))(a3);
    v50 = *(v49 + 4);
    if (*(v49 + 3) == v50)
    {
      llvm::raw_ostream::write(v49, "<", 1uLL);
    }

    else
    {
      *v50 = 60;
      ++*(v49 + 4);
    }

    v57 = (*(*a3 + 16))(a3);
    v58 = *(v57 + 4);
    if ((*(v57 + 3) - v58) > 5)
    {
      *(v58 + 4) = 17219;
      *v58 = 1920298854;
      *(v57 + 4) += 6;
    }

    else
    {
      llvm::raw_ostream::write(v57, "fourCC", 6uLL);
    }

    v59 = (*(*a3 + 16))(a3);
    v60 = *(v59 + 4);
    if (v60 >= *(v59 + 3))
    {
      llvm::raw_ostream::write(v59, 32);
    }

    else
    {
      *(v59 + 4) = v60 + 1;
      *v60 = 32;
    }

    v61 = (*(*a3 + 16))(a3);
    v62 = *(v61 + 4);
    if (*(v61 + 3) == v62)
    {
      llvm::raw_ostream::write(v61, ":", 1uLL);
    }

    else
    {
      *v62 = 58;
      ++*(v61 + 4);
    }

    v65 = (*(*a3 + 16))(a3);
    v66 = *(v65 + 4);
    if (v66 >= *(v65 + 3))
    {
      llvm::raw_ostream::write(v65, 32);
    }

    else
    {
      *(v65 + 4) = v66 + 1;
      *v66 = 32;
    }

    (*(*a3 + 80))(a3, *(a2 + 8), *(a2 + 16));
    v67 = (*(*a3 + 16))(a3);
    v68 = *(v67 + 4);
    if (*(v67 + 3) == v68)
    {
      llvm::raw_ostream::write(v67, ",", 1uLL);
    }

    else
    {
      *v68 = 44;
      ++*(v67 + 4);
    }

    v69 = (*(*a3 + 16))(a3);
    v70 = *(v69 + 4);
    if (v70 >= *(v69 + 3))
    {
      llvm::raw_ostream::write(v69, 32);
    }

    else
    {
      *(v69 + 4) = v70 + 1;
      *v70 = 32;
    }

    v71 = *(a2 + 24);
    v72 = (*(*a3 + 16))(a3);
    v73 = "";
    v74 = 10;
    if (v71 == 2)
    {
      v73 = "MTLTexture";
    }

    else
    {
      v74 = 0;
    }

    if (v71 == 1)
    {
      v75 = 13;
    }

    else
    {
      v75 = v74;
    }

    if (v71 == 1)
    {
      v76 = "CVPixelBuffer";
    }

    else
    {
      v76 = v73;
    }

    llvm::raw_ostream::operator<<(v72, v76, v75);
    v77 = (*(*a3 + 16))(a3);
    v78 = *(v77 + 4);
    if (*(v77 + 3) == v78)
    {
      llvm::raw_ostream::write(v77, ",", 1uLL);
    }

    else
    {
      *v78 = 44;
      ++*(v77 + 4);
    }

    v79 = (*(*a3 + 16))(a3);
    v80 = *(v79 + 4);
    if (v80 >= *(v79 + 3))
    {
      llvm::raw_ostream::write(v79, 32);
    }

    else
    {
      *(v79 + 4) = v80 + 1;
      *v80 = 32;
    }

    v81 = (*(*a3 + 16))(a3);
    v82 = *(v81 + 4);
    if (*(v81 + 3) - v82 > 0x14uLL)
    {
      qmemcpy(v82, "rowAlignmentsPerPlane", 21);
      *(v81 + 4) += 21;
    }

    else
    {
      llvm::raw_ostream::write(v81, "rowAlignmentsPerPlane", 0x15uLL);
    }

    v83 = (*(*a3 + 16))(a3);
    v84 = *(v83 + 4);
    if (*(v83 + 3) == v84)
    {
      llvm::raw_ostream::write(v83, ":", 1uLL);
    }

    else
    {
      *v84 = 58;
      ++*(v83 + 4);
    }

    v85 = (*(*a3 + 16))(a3);
    v86 = *(v85 + 4);
    if (v86 >= *(v85 + 3))
    {
      llvm::raw_ostream::write(v85, 32);
    }

    else
    {
      *(v85 + 4) = v86 + 1;
      *v86 = 32;
    }

    v87 = (*(*a3 + 16))(a3);
    v88 = *(v87 + 4);
    if (*(v87 + 3) == v88)
    {
      llvm::raw_ostream::write(v87, "[", 1uLL);
    }

    else
    {
      *v88 = 91;
      ++*(v87 + 4);
    }

    v96 = *(a2 + 32);
    v89 = (*(*a3 + 16))(a3);
    mlir::detail::printDimensionList<llvm::ArrayRef<long long> &>(v89, &v96);
    v90 = (*(*a3 + 16))(a3);
    v91 = *(v90 + 4);
    if (*(v90 + 3) == v91)
    {
      llvm::raw_ostream::write(v90, "]", 1uLL);
    }

    else
    {
      *v91 = 93;
      ++*(v90 + 4);
    }
  }

  v94 = (*(*a3 + 16))(a3);
  v95 = *(v94 + 4);
  if (*(v94 + 3) == v95)
  {
    llvm::raw_ostream::write(v94, ">", 1uLL);
  }

  else
  {
    *v95 = 62;
    ++*(v94 + 4);
  }
}

void mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect::~CoreMLAXDialect(mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect *this)
{
  mlir::Dialect::~Dialect(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::convertToEnum(uint64_t a1, uint64_t a2)
{
  if (a2 == 4)
  {
    if (*a1 == 1885431112)
    {
      return 0x100000003;
    }

    return 0;
  }

  if (a2 != 9)
  {
    return 0;
  }

  if (*a1 != 0x6361667275534F49 || *(a1 + 8) != 101)
  {
    if (*a1 == 0x65666675424C544DLL && *(a1 + 8) == 114)
    {
      return 0x100000002;
    }

    return 0;
  }

  return 0x100000001;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect::parseType(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 40))(a2);
  mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::KeywordSwitch(&v19, a2, 0);
  v16 = "hw_constraints";
  v17 = 14;
  if (v23[2])
  {
    goto LABEL_2;
  }

  v6 = v22;
  if (v22 != 14)
  {
    if (!v22)
    {
      (*(*v19 + 648))(v19, &v16, 1);
      if (v23[2])
      {
LABEL_2:
        v5 = 0;
        v6 = 0;
        v7 = 0;
        goto LABEL_12;
      }

      v6 = v22;
    }

    goto LABEL_11;
  }

  if (*v21 != 0x74736E6F635F7768 || *(v21 + 6) != 0x73746E6961727473)
  {
LABEL_11:
    v5 = 0;
    v7 = v21;
    *v23 = 0;
    v23[2] = 1;
    goto LABEL_12;
  }

  v13 = *(**(*(*a2 + 32))(a2) + 384);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsType,void>::id;
  v6 = 0;
  v7 = 0;
  v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v13 + 232), v14);
  v23[0] = v5 != 0;
  *&v23[1] = 257;
LABEL_12:
  if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v19) & 0x100) == 0)
  {
    v15 = 257;
    (*(*a2 + 24))(&v19, a2, v4, v14);
    if (v19)
    {
      if (v19)
      {
        v18 = 261;
        v16 = v7;
        v17 = v6;
        mlir::Diagnostic::operator<<(&v20, &v16);
        if (v19)
        {
          if (v19)
          {
            v9 = *(a1 + 8);
            v10 = *(a1 + 16);
            v18 = 261;
            v16 = v9;
            v17 = v10;
            mlir::Diagnostic::operator<<(&v20, &v16);
            if (v19)
            {
            }
          }
        }
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
    v5 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

void mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect::printType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsType,void>::id)
  {
    v3 = (*(*a3 + 16))(a3);
    v4 = *(v3 + 4);
    if (*(v3 + 3) - v4 > 0xDuLL)
    {
      qmemcpy(v4, "hw_constraints", 14);
      *(v3 + 4) += 14;
    }

    else
    {

      llvm::raw_ostream::write(v3, "hw_constraints", 0xEuLL);
    }
  }
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::CastOp>::Model(void *a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreMLAX::CastOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreMLAX::CastOp>,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::ODIE::Compiler::CoreMLAX::CastOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreMLAX::CastOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::CoreMLAX::CastOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreMLAX::CastOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreMLAX::CastOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreMLAX::CastOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreMLAX::CastOp>,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::ODIE::Compiler::CoreMLAX::CastOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "coremlax.cast", 0xD, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CastOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E85210;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::CastOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::CastOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::CastOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::CastOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::CastOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::CastOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::CastOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::CastOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::CastOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v9[25] = *MEMORY[0x277D85DE8];
  a5(&v8, a6);
  if (v8)
  {
    mlir::Diagnostic::operator<<<43ul>(v9, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreMLAX::CastOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreMLAX::CastOp>,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::ODIE::Compiler::CoreMLAX::CastOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreMLAX::CastOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::CoreMLAX::CastOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreMLAX::CastOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreMLAX::CastOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreMLAX::CastOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreMLAX::CastOp>,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::ODIE::Compiler::CoreMLAX::CastOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::CastOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::CastOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::CastOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::CastOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::CastOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::CastOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::CastOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::CastOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::CastOp>::getInputIntents;
  v2[1] = mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::CastOp>::getOutputIntents;
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::CastOp>::getInputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 3uLL);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 0;
  }

  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v7, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::CastOp>::getOutputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 0);
  v5 = *(a1 + 36);
  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v7, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(uint64_t a1)
{
  v8[10] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v2 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  v8[9] = v2;
  do
  {
    v4 = v8[v3];
    if (v4 == a1)
    {
      break;
    }
  }

  while (v3++ != 9);
  result = v4 == a1;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::CoreMLAX::CastOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyOneOperand(a1, v5))
  {
    v8 = a1;
    return mlir::ODIE::Compiler::CoreMLAX::CastOp::verifyInvariantsImpl(&v8);
  }

  else
  {
    return 0;
  }
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>::Model(void *a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "coremlax.constexpr_blockwise_shift_scale", 0x28, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E852D8;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v9[25] = *MEMORY[0x277D85DE8];
  a5(&v8, a6);
  if (v8)
  {
    mlir::Diagnostic::operator<<<43ul>(v9, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>::getInputIntents;
  v2[1] = mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>::getOutputIntents;
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>::getInputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 3uLL);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 0;
  }

  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v7, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>::getOutputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 0);
  v5 = *(a1 + 36);
  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v7, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[10] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[9] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 9);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants(mlir::ODIE::Compiler::CoreML *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyNOperands(a1, 3) && (v7 = a1, (mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp::verifyInvariantsImpl(&v7) & 1) != 0))
  {
    v7 = a1;
    v5 = mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp::verify(&v7);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>::Model(void *a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>,mlir::InferTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "coremlax.constexpr_lut_to_dense", 0x1F, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E853A0;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v9[25] = *MEMORY[0x277D85DE8];
  a5(&v8, a6);
  if (v8)
  {
    mlir::Diagnostic::operator<<<43ul>(v9, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>,mlir::InferTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>::isCompatibleReturnTypes;
  v3 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = a1;
  v7[1] = a2;
  v6[0] = a3;
  v6[1] = a4;
  result = llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v7, v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>::getInputIntents;
  v2[1] = mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>::getOutputIntents;
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>::getInputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 3uLL);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 0;
  }

  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v7, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>::getOutputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 0);
  v5 = *(a1 + 36);
  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v7, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyNOperands(a1, 3) && (v15[0] = a1, mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp::verifyInvariantsImpl(v15)))
  {
    v12 = mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp::verify(v15, v5, v6, v7, v8, v9, v10, v11, v14, a1, v15[1]);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>::Model(void *a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "coremlax.constexpr_sparse_to_dense", 0x22, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E85468;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v9[25] = *MEMORY[0x277D85DE8];
  a5(&v8, a6);
  if (v8)
  {
    mlir::Diagnostic::operator<<<43ul>(v9, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>::getInputIntents;
  v2[1] = mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>::getOutputIntents;
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>::getInputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 3uLL);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 0;
  }

  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v7, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>::getOutputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 0);
  v5 = *(a1 + 36);
  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v7, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[10] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[9] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 9);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants(mlir::ODIE::Compiler::CoreML *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyNOperands(a1, 2) && (v7 = a1, (mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp::verifyInvariantsImpl(&v7) & 1) != 0))
  {
    v7 = a1;
    v5 = mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp::verify(&v7);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>::Model(void *a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "coremlax.copy_discarding_constraints", 0x24, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E85530;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}