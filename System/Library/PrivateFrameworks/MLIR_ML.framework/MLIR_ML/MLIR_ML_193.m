uint64_t std::vector<std::function<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>>::__emplace_back_slow_path<std::function<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>>(void *a1, uint64_t a2)
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

uint64_t updateSubElementImpl<mlir::Attribute,mlir::AttrTypeReplacer>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 1) == 1)
  {
    v14[7] = v4;
    v14[8] = v5;
    v6 = result;
    if (result)
    {
      v14[0] = result;
      result = llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::try_emplace<void const*&>(a2 + 48, v14, v14, &v12);
      if (v13)
      {
        mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceBase();
      }

      v11 = *(v12 + 8);
      if (v11)
      {
        v9 = *(a3 + 8);
        if (v9 >= *(a3 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*a3 + 8 * v9) = v11;
        ++*(a3 + 8);
        if (v11 != v6)
        {
          *a4 = 257;
        }
      }

      else
      {
        *a4 = 0;
      }
    }

    else
    {
      v10 = *(a3 + 8);
      if (v10 >= *(a3 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a3 + 8 * v10) = 0;
      ++*(a3 + 8);
    }
  }

  return result;
}

uint64_t updateSubElementImpl<mlir::Type,mlir::AttrTypeReplacer>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 1) == 1)
  {
    v14[7] = v4;
    v14[8] = v5;
    v6 = result;
    if (result)
    {
      v14[0] = result;
      result = llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::try_emplace<void const*&>(a2 + 48, v14, v14, &v12);
      if (v13)
      {
        mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceBase();
      }

      v11 = *(v12 + 8);
      if (v11)
      {
        v9 = *(a3 + 8);
        if (v9 >= *(a3 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*a3 + 8 * v9) = v11;
        ++*(a3 + 8);
        if (v11 != v6)
        {
          *a4 = 257;
        }
      }

      else
      {
        *a4 = 0;
      }
    }

    else
    {
      v10 = *(a3 + 8);
      if (v10 >= *(a3 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a3 + 8 * v10) = 0;
      ++*(a3 + 8);
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::try_emplace<void const*&>@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
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
    llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::grow(result, v5);
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

void *llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::operator[](uint64_t a1, void *a2)
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
    llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::grow(a1, v2);
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

void *llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::grow(uint64_t a1, int a2)
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
          v23 = (*a1 + 16 * v25);
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
              v23 = (*a1 + 16 * (v30 & v16));
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

uint64_t updateSubElementImpl<mlir::Attribute,mlir::CyclicAttrTypeReplacer>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 1) == 1)
  {
    v15 = v4;
    v16 = v5;
    v6 = result;
    if (result)
    {
      result = mlir::CyclicReplacerCache<void *,void const*>::lookupOrInit(a2 + 96, result & 0xFFFFFFFFFFFFFFFBLL, &v12);
      if ((v14 & 1) == 0)
      {
        mlir::detail::AttrTypeReplacerBase<mlir::CyclicAttrTypeReplacer>::replaceBase();
      }

      v9 = v13;
      if (v13)
      {
        v10 = *(a3 + 8);
        if (v10 >= *(a3 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*a3 + 8 * v10) = v13;
        ++*(a3 + 8);
        if (v9 != v6)
        {
          *a4 = 257;
        }
      }

      else
      {
        *a4 = 0;
      }
    }

    else
    {
      v11 = *(a3 + 8);
      if (v11 >= *(a3 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a3 + 8 * v11) = 0;
      ++*(a3 + 8);
    }
  }

  return result;
}

uint64_t updateSubElementImpl<mlir::Type,mlir::CyclicAttrTypeReplacer>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 1) == 1)
  {
    v15 = v4;
    v16 = v5;
    v6 = result;
    if (result)
    {
      result = mlir::CyclicReplacerCache<void *,void const*>::lookupOrInit(a2 + 96, result | 4, &v12);
      if ((v14 & 1) == 0)
      {
        mlir::detail::AttrTypeReplacerBase<mlir::CyclicAttrTypeReplacer>::replaceBase();
      }

      v9 = v13;
      if (v13)
      {
        v10 = *(a3 + 8);
        if (v10 >= *(a3 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*a3 + 8 * v10) = v13;
        ++*(a3 + 8);
        if (v9 != v6)
        {
          *a4 = 257;
        }
      }

      else
      {
        *a4 = 0;
      }
    }

    else
    {
      v11 = *(a3 + 8);
      if (v11 >= *(a3 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a3 + 8 * v11) = 0;
      ++*(a3 + 8);
    }
  }

  return result;
}

uint64_t std::__function::__func<mlir::CyclicAttrTypeReplacer::CyclicAttrTypeReplacer(void)::$_0,std::allocator<mlir::CyclicAttrTypeReplacer::CyclicAttrTypeReplacer(void)::$_0>,std::optional<void const*> ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28689A998;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<mlir::CyclicAttrTypeReplacer::CyclicAttrTypeReplacer(void)::$_0,std::allocator<mlir::CyclicAttrTypeReplacer::CyclicAttrTypeReplacer(void)::$_0>,std::optional<void const*> ()(void *)>::operator()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if ((*a2 & 4) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *a2 & 0xFFFFFFFFFFFFFFF8;
  }

  if (v3)
  {
    v5 = v2[6];
    for (i = v2[7]; i != v5; i -= 32)
    {
      v15 = v3;
      v6 = *(i - 8);
      if (!v6)
      {
        goto LABEL_16;
      }

      result = (*(*v6 + 48))(v6, &v15);
      if (v8)
      {
        return result;
      }
    }
  }

  else
  {
    v9 = *a2 & 0xFFFFFFFFFFFFFFF8 & ((*a2 << 61) >> 63);
    v11 = v2[9];
    for (j = v2[10]; j != v11; j -= 32)
    {
      v15 = v9;
      v12 = *(j - 8);
      if (!v12)
      {
LABEL_16:
        v14 = std::__throw_bad_function_call[abi:nn200100]();
        return std::__function::__func<mlir::CyclicAttrTypeReplacer::CyclicAttrTypeReplacer(void)::$_0,std::allocator<mlir::CyclicAttrTypeReplacer::CyclicAttrTypeReplacer(void)::$_0>,std::optional<void const*> ()(void *)>::target(v14);
      }

      result = (*(*v12 + 48))(v12, &v15);
      if (v13)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t std::__function::__func<mlir::CyclicAttrTypeReplacer::CyclicAttrTypeReplacer(void)::$_0,std::allocator<mlir::CyclicAttrTypeReplacer::CyclicAttrTypeReplacer(void)::$_0>,std::optional<void const*> ()(void *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir22CyclicAttrTypeReplacerC1EvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir22CyclicAttrTypeReplacerC1EvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir22CyclicAttrTypeReplacerC1EvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir22CyclicAttrTypeReplacerC1EvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::vector<std::function<std::optional<mlir::Attribute> ()(mlir::Attribute)>>::__emplace_back_slow_path<std::function<std::optional<mlir::Attribute> ()(mlir::Attribute)>>(void *a1, uint64_t a2)
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

uint64_t std::vector<std::function<std::optional<mlir::Type> ()(mlir::Type)>>::__emplace_back_slow_path<std::function<std::optional<mlir::Type> ()(mlir::Type)>>(void *a1, uint64_t a2)
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

uint64_t mlir::CyclicReplacerCache<void *,void const*>::lookupOrInit@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = result;
  v42 = a2;
  v5 = *(result + 48);
  v6 = a2 >> 4;
  if (v5)
  {
    v7 = *(result + 32);
    v8 = (v5 - 1) & (v6 ^ (a2 >> 9));
    v9 = *(v7 + 16 * v8);
    if (v9 == a2)
    {
LABEL_3:
      if (v8 != v5)
      {
        v17 = *(v7 + 16 * v8 + 8);
LABEL_36:
        *a3 = result;
        a3[1] = a2;
        a3[2] = v17;
        a3[3] = 1;
        return result;
      }
    }

    else
    {
      v35 = 1;
      while (v9 != -4096)
      {
        v36 = v8 + v35++;
        v8 = v36 & (v5 - 1);
        v9 = *(v7 + 16 * v8);
        if (v9 == a2)
        {
          goto LABEL_3;
        }
      }
    }
  }

  v10 = *(result + 56);
  v11 = *(result + 72);
  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = (v11 - 1) & (v6 ^ (a2 >> 9));
  v13 = (v10 + 24 * v12);
  v14 = *v13;
  if (*v13 != a2)
  {
    v15 = 1;
    while (v14 != -4096)
    {
      v16 = v12 + v15++;
      v12 = v16 & (v11 - 1);
      v13 = (v10 + 24 * v12);
      v14 = *v13;
      if (*v13 == a2)
      {
        goto LABEL_12;
      }
    }

LABEL_11:
    v13 = (v10 + 24 * v11);
  }

LABEL_12:
  if (v13 != (v10 + 24 * v11))
  {
    v18 = *(*(result + 80) + 48 * *(result + 88) - 16);
    if (!v18)
    {
LABEL_34:
      operator new();
    }

    v19 = v13[2];
    while (1)
    {
      while (1)
      {
        v20 = v18;
        v21 = v18[4];
        if (v19 <= v21)
        {
          break;
        }

        v18 = *v20;
        if (!*v20)
        {
          goto LABEL_34;
        }
      }

      if (v21 <= v19)
      {
        break;
      }

      v18 = v20[1];
      if (!v18)
      {
        goto LABEL_34;
      }
    }

    v17 = v13[1];
    goto LABEL_36;
  }

  result = llvm::DenseMapBase<llvm::DenseMap<void *,llvm::SmallVector<unsigned long,2u>,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,llvm::SmallVector<unsigned long,2u>>>,void *,llvm::SmallVector<unsigned long,2u>,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,llvm::SmallVector<unsigned long,2u>>>::try_emplace<>(result + 144, &v42, &v40);
  if (v41)
  {
    goto LABEL_31;
  }

  *(v3 + 168) = 1;
  v43 = v42;
  v22 = *(v3 + 24);
  if (!v22)
  {
    v37 = std::__throw_bad_function_call[abi:nn200100]();
    return llvm::DenseMapBase<llvm::DenseMap<void *,llvm::SmallVector<unsigned long,2u>,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,llvm::SmallVector<unsigned long,2u>>>,void *,llvm::SmallVector<unsigned long,2u>,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,llvm::SmallVector<unsigned long,2u>>>::try_emplace<>(v37, v38, v39);
  }

  result = (*(*v22 + 48))(v22, &v43);
  *(v3 + 168) = 0;
  if ((v23 & 1) == 0)
  {
LABEL_31:
    v30 = v40;
    v31 = *(v40 + 16);
    if (v31 >= *(v40 + 20))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*(v40 + 8) + 8 * v31) = *(v3 + 88);
    ++*(v30 + 16);
    v32 = *(v3 + 88);
    if (v32 >= *(v3 + 92))
    {
      llvm::SmallVectorTemplateBase<mlir::CyclicReplacerCache<void *,void const*>::ReplacementFrame,false>::growAndEmplaceBack<>();
    }

    v33 = *(v3 + 80) + 48 * v32;
    *v33 = 0u;
    *(v33 + 16) = 0u;
    *(v33 + 32) = 0u;
    *(v33 + 24) = v33 + 32;
    ++*(v3 + 88);
    v34 = v42;
    *a3 = v3;
    a3[1] = v34;
    a3[2] = 0;
    a3[3] = 0;
  }

  else
  {
    v24 = result;
    v25 = *(*(v40 + 8) + 8 * *(v40 + 16) - 8);
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,mlir::DataLayoutEntryInterface,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,mlir::DataLayoutEntryInterface>>,mlir::StringAttr,mlir::DataLayoutEntryInterface,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,mlir::DataLayoutEntryInterface>>::operator[](v3 + 56, &v42);
    *result = v24;
    *(result + 8) = v25;
    v26 = *(*(v3 + 80) + 48 * *(v3 + 88) - 16);
    if (!v26)
    {
LABEL_29:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v27 = v26;
        v28 = v26[4];
        if (v25 <= v28)
        {
          break;
        }

        v26 = *v27;
        if (!*v27)
        {
          goto LABEL_29;
        }
      }

      if (v28 <= v25)
      {
        break;
      }

      v26 = v27[1];
      if (!v26)
      {
        goto LABEL_29;
      }
    }

    v29 = v42;
    *a3 = v3;
    a3[1] = v29;
    a3[2] = v24;
    a3[3] = 1;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<void *,llvm::SmallVector<unsigned long,2u>,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,llvm::SmallVector<unsigned long,2u>>>,void *,llvm::SmallVector<unsigned long,2u>,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,llvm::SmallVector<unsigned long,2u>>>::try_emplace<>@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 16);
  if (!v4)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v5 = *result;
  v6 = v4 - 1;
  v7 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
  v8 = (*result + 40 * v7);
  v9 = *v8;
  if (*a2 != *v8)
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
      v8 = (v5 + 40 * (v15 & v6));
      v9 = *v8;
      if (*a2 == *v8)
      {
        goto LABEL_3;
      }
    }

    if (v12)
    {
      v8 = v12;
    }

LABEL_5:
    v18 = v8;
    v11 = *(result + 8);
    if (4 * v11 + 4 >= 3 * v4)
    {
      v4 *= 2;
    }

    else if (v4 + ~v11 - *(result + 12) > v4 >> 3)
    {
      *(result + 8) = v11 + 1;
      if (*v8 == -4096)
      {
LABEL_9:
        *v8 = *a2;
        v8[1] = v8 + 3;
        v8[2] = 0x200000000;
        v5 = *result;
        v4 = *(result + 16);
        v10 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v16 = result;
    v17 = a3;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>,mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>,mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>::LookupBucketFor<mlir::OperationName>(v16, a2, &v18);
    result = v16;
    a3 = v17;
    v8 = v18;
    ++*(v16 + 8);
    if (*v8 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v10 = 0;
LABEL_10:
  *a3 = v8;
  *(a3 + 8) = v5 + 40 * v4;
  *(a3 + 16) = v10;
  return result;
}

uint64_t *llvm::SmallVectorTemplateBase<mlir::CyclicReplacerCache<void *,void const*>::ReplacementFrame,false>::moveElementsForGrow(uint64_t *result, uint64_t a2)
{
  v2 = *(result + 2);
  if (v2)
  {
    v3 = 0;
    v4 = *result;
    v5 = 48 * v2;
    do
    {
      while (1)
      {
        v6 = a2 + v3;
        v7 = v4 + v3;
        *v6 = 0;
        *(v6 + 8) = 0;
        *(v6 + 16) = 0;
        *v6 = *(v4 + v3);
        *v7 = 0;
        *(v6 + 8) = *(v4 + v3 + 8);
        *(v7 + 8) = 0;
        v8 = *(a2 + v3 + 12);
        *(v6 + 12) = *(v4 + v3 + 12);
        *(v7 + 12) = v8;
        v9 = *(a2 + v3 + 16);
        *(v6 + 16) = *(v4 + v3 + 16);
        *(v7 + 16) = v9;
        v10 = (v4 + v3 + 32);
        v11 = *v10;
        *(v6 + 24) = *(v4 + v3 + 24);
        *(a2 + v3 + 32) = v11;
        v12 = a2 + v3 + 32;
        v13 = *(v4 + v3 + 40);
        *(v6 + 40) = v13;
        if (!v13)
        {
          break;
        }

        *(v11 + 16) = v12;
        *(v7 + 24) = v10;
        *v10 = 0;
        *(v4 + v3 + 40) = 0;
        v3 += 48;
        if (v5 == v3)
        {
          goto LABEL_6;
        }
      }

      *(v6 + 24) = v12;
      v3 += 48;
    }

    while (v5 != v3);
LABEL_6:
    v14 = *(result + 2);
    if (v14)
    {
      v15 = *result + 48 * v14 - 24;
      std::__tree<long long>::destroy(v15, *(*result + 48 * v14 - 16));
      llvm::deallocate_buffer(*(v15 - 24), (8 * *(v15 - 8)));
    }
  }

  return result;
}

void mlir::CyclicReplacerCache<void *,void const*>::finalizeReplacement(int32x2_t *a1, uint64_t a2, uint64_t a3)
{
  v34 = a2;
  v5 = a1[10];
  v6 = a1[11].u32[0];
  v7 = *&v5 + 48 * v6;
  v9 = (v7 - 16);
  v8 = *(v7 - 16);
  if (v8)
  {
    v10 = v6 - 1;
    v11 = (v7 - 16);
    v12 = *(v7 - 16);
    do
    {
      if (v12[4] <= v10)
      {
        v11 = v12;
      }

      v12 = v12[v12[4] > v10];
    }

    while (v12);
    if (v11 != v9 && v10 <= v11[4])
    {
      v13 = v11[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        v15 = v11;
        do
        {
          v14 = v15[2];
          v16 = *v14 == v15;
          v15 = v14;
        }

        while (!v16);
      }

      if (*(v7 - 24) == v11)
      {
        *(v7 - 24) = v14;
      }

      --*(v7 - 8);
      std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v8, v11);
      operator delete(v11);
      v5 = a1[10];
      LODWORD(v6) = a1[11].i32[0];
    }
  }

  v17 = *&v5 + 48 * v6;
  if (v17 - 48 == *&v5 || !*(v7 - 8))
  {
    *llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::operator[](&a1[4], &v34) = a3;
    if (!*(v7 - 40))
    {
      goto LABEL_41;
    }
  }

  else
  {
    v18 = *(*(v7 - 24) + 32);
    v19 = llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,mlir::DataLayoutEntryInterface,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,mlir::DataLayoutEntryInterface>>,mlir::StringAttr,mlir::DataLayoutEntryInterface,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,mlir::DataLayoutEntryInterface>>::operator[](&a1[7], &v34);
    *v19 = a3;
    v19[1] = v18;
    std::set<unsigned long,std::greater<unsigned long>,std::allocator<unsigned long>>::insert[abi:nn200100]<std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long>>((v17 - 72), *(v7 - 24), v9);
    llvm::DenseMapBase<llvm::DenseMap<void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>,void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>::try_emplace<llvm::detail::DenseSetEmpty&>(*&a1[10] + 48 * v18, &v34, v35);
    if (!*(v7 - 40))
    {
      goto LABEL_41;
    }
  }

  v20 = *(v7 - 32);
  if (v20)
  {
    v21 = 8 * v20;
    v22 = *(v7 - 48);
    while ((*v22 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      ++v22;
      v21 -= 8;
      if (!v21)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    v22 = *(v7 - 48);
  }

  v23 = *(v7 - 48) + 8 * v20;
  if (v22 != v23)
  {
    v24 = a1[9].i32[0];
    if (v24)
    {
      v25 = v24 - 1;
      do
      {
        v26 = a1[7];
        v27 = ((*v22 >> 4) ^ (*v22 >> 9)) & v25;
        v28 = (*&v26 + 24 * v27);
        v29 = *v28;
        if (*v22 == *v28)
        {
LABEL_33:
          *v28 = -8192;
          a1[8] = vadd_s32(a1[8], 0x1FFFFFFFFLL);
        }

        else
        {
          v30 = 1;
          while (v29 != -4096)
          {
            v31 = v27 + v30++;
            v27 = v31 & v25;
            v28 = (*&v26 + 24 * v27);
            v29 = *v28;
            if (*v22 == *v28)
            {
              goto LABEL_33;
            }
          }
        }

        do
        {
          ++v22;
        }

        while (v22 != v23 && (*v22 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v22 != v23);
    }
  }

LABEL_41:
  v32 = a1[11].i32[0] - 1;
  a1[11].i32[0] = v32;
  v33 = *&a1[10] + 48 * v32;
  std::__tree<long long>::destroy(v33 + 24, *(v33 + 32));
  llvm::deallocate_buffer(*v33, (8 * *(v33 + 16)));
}

void *std::set<unsigned long,std::greater<unsigned long>,std::allocator<unsigned long>>::insert[abi:nn200100]<std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long>>(void *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v12[7] = v3;
    v12[8] = v4;
    v6 = a2;
    v7 = result;
    do
    {
      result = std::__tree<unsigned long,std::greater<unsigned long>,std::allocator<unsigned long>>::__find_equal<unsigned long>(v7, v7 + 1, v12, &v11, v6 + 4);
      if (!*result)
      {
        operator new();
      }

      v8 = v6[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v6[2];
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v6 = v9;
    }

    while (v9 != a3);
  }

  return result;
}

void *std::__tree<unsigned long,std::greater<unsigned long>,std::allocator<unsigned long>>::__find_equal<unsigned long>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 > v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v14 = a2;
      do
      {
        v10 = v14[2];
        v15 = *v10 == v14;
        v14 = v10;
      }

      while (v15);
    }

    v16 = *a5;
    if (v10[4] > *a5)
    {
      goto LABEL_17;
    }

    v18 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v19 = v18;
          v20 = v18[4];
          if (v16 <= v20)
          {
            break;
          }

          v18 = *v19;
          v5 = v19;
          if (!*v19)
          {
            goto LABEL_25;
          }
        }

        if (v20 <= v16)
        {
          break;
        }

        v5 = v19 + 1;
        v18 = v19[1];
      }

      while (v18);
LABEL_25:
      *a3 = v19;
      return v5;
    }

    else
    {
      *a3 = v5;
      return a1 + 1;
    }
  }

  else if (v7 <= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  else
  {
    v11 = a2[1];
    if (v11)
    {
      v12 = a2[1];
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      v21 = a2;
      do
      {
        v13 = v21[2];
        v15 = *v13 == v21;
        v21 = v13;
      }

      while (!v15);
    }

    if (v13 == v5 || v6 > v13[4])
    {
      if (v11)
      {
        *a3 = v13;
        return v13;
      }

      else
      {
        *a3 = a2;
        return a2 + 1;
      }
    }

    else
    {
      v22 = *v5;
      if (*v5)
      {
        do
        {
          while (1)
          {
            v23 = v22;
            v24 = v22[4];
            if (v6 <= v24)
            {
              break;
            }

            v22 = *v23;
            v5 = v23;
            if (!*v23)
            {
              goto LABEL_41;
            }
          }

          if (v24 <= v6)
          {
            break;
          }

          v5 = v23 + 1;
          v22 = v23[1];
        }

        while (v22);
LABEL_41:
        *a3 = v23;
        return v5;
      }

      else
      {
        *a3 = v5;
        return a1 + 1;
      }
    }
  }
}

void mlir::Block::~Block(mlir::Block **this)
{
  mlir::Block::clear(this);
  v2 = this[6];
  v3 = this[7];
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        MEMORY[0x259C63180](*v2, 0x1020C401BF16FDDLL);
      }

      v2 = (v2 + 8);
    }

    while (v2 != v3);
    v2 = this[6];
  }

  if (v2)
  {
    this[7] = v2;
    operator delete(v2);
  }

  v4 = this[5];
  if (v4 != (this + 4))
  {
    do
    {
      v5 = *(v4 + 1);
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v4);
      llvm::ilist_traits<mlir::Operation>::removeNodeFromList((this + 4), ValuePtr);
      NodePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(ValuePtr);
      v8 = *NodePtr;
      v9 = NodePtr[1];
      *v9 = *NodePtr;
      *(v8 + 8) = v9;
      *NodePtr = 0;
      NodePtr[1] = 0;
      llvm::ilist_traits<mlir::Operation>::deleteNode(ValuePtr);
      v4 = v5;
    }

    while (v5 != (this + 4));
  }
}

uint64_t mlir::Block::clear(mlir::Block *this)
{
  v1 = (this + 32);
  v2 = *(this + 5);
  if (v2 != (this + 32))
  {
    do
    {
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v2);
      mlir::Operation::dropAllReferences(ValuePtr);
      v2 = v2[1];
    }

    while (v2 != v1);
  }

  while (1)
  {
    result = *v1;
    if (*v1 == v1)
    {
      break;
    }

    v4 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(result);
    llvm::ilist_traits<mlir::Operation>::removeNodeFromList(v1, v4);
    NodePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v4);
    v6 = *NodePtr;
    v7 = NodePtr[1];
    *v7 = *NodePtr;
    *(v6 + 8) = v7;
    *NodePtr = 0;
    NodePtr[1] = 0;
    llvm::ilist_traits<mlir::Operation>::deleteNode(v4);
  }

  return result;
}

uint64_t mlir::Block::getParentOp(mlir::Block *this)
{
  if ((*(this + 3) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    return *((*(this + 3) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    return 0;
  }
}

BOOL mlir::Block::isEntryBlock(mlir::Block *this)
{
  v1 = *((*(this + 3) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v1)
  {
    v2 = (v1 - 8);
  }

  else
  {
    v2 = 0;
  }

  return v2 == this;
}

uint64_t mlir::Block::insertBefore(mlir::Block *this, mlir::Block *a2)
{
  v2 = a2;
  v3 = this;
  result = llvm::ilist_traits<mlir::Block>::addNodeToList(*(a2 + 3) & 0xFFFFFFFFFFFFFFF8, this);
  v5 = *(v2 + 1);
  v2 = (v2 + 8);
  *(v3 + 1) = v5;
  *(v3 + 2) = v2;
  v3 = (v3 + 8);
  *(v5 + 8) = v3;
  *v2 = v3;
  return result;
}

uint64_t mlir::Block::insertAfter(mlir::Block *this, mlir::Block *a2)
{
  v3 = (*(a2 + 3) & 0xFFFFFFFFFFFFFFF8);
  v4 = a2 + 8;
  if (*v3 == v3)
  {
    v4 = (*(a2 + 3) & 0xFFFFFFFFFFFFFFF8);
  }

  v5 = *(v4 + 1);
  result = llvm::ilist_traits<mlir::Block>::addNodeToList(v3, this);
  v7 = *v5;
  *(this + 1) = *v5;
  *(this + 2) = v5;
  v8 = this + 8;
  *(v7 + 8) = v8;
  *v5 = v8;
  return result;
}

mlir::Block *mlir::Block::moveBefore(mlir::Block *this, mlir::Block *a2)
{
  if (this != a2)
  {
    v2 = (a2 + 8);
    v3 = *(this + 2);
    if (v3 != (a2 + 8))
    {
      v4 = (this + 8);
      this = llvm::ilist_traits<mlir::Block>::transferNodesFromList(*(a2 + 3) & 0xFFFFFFFFFFFFFFF8, *(this + 3) & 0xFFFFFFFFFFFFFFF8, this + 8, v3);
      if (v3 != v4)
      {
        v5 = *v3;
        v6 = *v4;
        *(v6 + 8) = v3;
        *v3 = v6;
        v7 = *v2;
        *(v5 + 8) = v2;
        *v4 = v7;
        *(v7 + 8) = v4;
        *v2 = v5;
      }
    }
  }

  return this;
}

uint64_t mlir::Block::moveBefore(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = (result + 8);
  v4 = *(result + 16);
  if ((result + 8) != a3 && v4 != a3 && v4 != a3)
  {
    result = llvm::ilist_traits<mlir::Block>::transferNodesFromList(a2, *(result + 24) & 0xFFFFFFFFFFFFFFF8, v3, v4);
    if (v4 != v3)
    {
      v8 = *v4;
      v9 = *v3;
      *(v9 + 8) = v4;
      *v4 = v9;
      v10 = *a3;
      *(v8 + 8) = a3;
      *v3 = v10;
      *(v10 + 8) = v3;
      *a3 = v8;
    }
  }

  return result;
}

void mlir::Block::erase(mlir::Block *this)
{
  v1 = this + 8;
  if (!this)
  {
    v1 = 0;
  }

  v2 = (v1 - 8);
  if (this)
  {
    v3 = (v1 - 8);
  }

  else
  {
    v3 = 0;
  }

  llvm::ilist_traits<mlir::Block>::removeNodeFromList(*(this + 3) & 0xFFFFFFFFFFFFFFF8, v3);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  *v5 = v4;
  *(v4 + 8) = v5;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  mlir::Block::~Block(v2);

  JUMPOUT(0x259C63180);
}

Operation *mlir::Block::findAncestorOpInBlock(mlir::Block *this, Operation *a2)
{
  while (1)
  {
    v2 = *(a2 + 2);
    if (v2 == this)
    {
      return a2;
    }

    if (!v2)
    {
      break;
    }

    v3 = *(v2 + 3) & 0xFFFFFFFFFFFFFFF8;
    if (!v3)
    {
      break;
    }

    a2 = *(v3 + 16);
    if (!a2)
    {
      return a2;
    }
  }

  return 0;
}

void mlir::Block::dropAllReferences(mlir::Block *this)
{
  v1 = this + 32;
  v2 = *(this + 5);
  if (v2 != (this + 32))
  {
    do
    {
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v2);
      mlir::Operation::dropAllReferences(ValuePtr);
      v2 = v2[1];
    }

    while (v2 != v1);
  }
}

void *mlir::Block::dropAllDefinedValueUses(void *this)
{
  v1 = this;
  v2 = this[6];
  v3 = this[7];
  while (v2 != v3)
  {
    v4 = *v2;
    while (1)
    {
      v5 = *v4;
      if (!*v4)
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

    ++v2;
  }

  v8 = this + 4;
  v9 = this[5];
  if (v9 != this + 4)
  {
    do
    {
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v9);
      this = mlir::Operation::dropAllDefinedValueUses(ValuePtr);
      v9 = v9[1];
    }

    while (v9 != v8);
  }

  while (1)
  {
    v11 = *v1;
    if (!*v1)
    {
      break;
    }

    v12 = v11[1];
    if (v12)
    {
      v13 = *v11;
      *v12 = *v11;
      if (v13)
      {
        *(v13 + 8) = v12;
      }
    }

    *v11 = 0;
    v11[1] = 0;
    v11[3] = 0;
  }

  return this;
}

uint64_t mlir::Block::verifyOpOrder(mlir::Block *this)
{
  if ((*(this + 24) & 4) == 0)
  {
    return 0;
  }

  v2 = this + 32;
  if (*(this + 4) == (this + 32))
  {
    return 0;
  }

  v3 = *(this + 5);
  if (*(v3 + 1) == v2 || v3 == v2)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v3);
    if (v5)
    {
      v7 = *(v5 + 32);
      if (v7 != -1 && v7 >= *(ValuePtr + 32))
      {
        break;
      }
    }

    v3 = *(v3 + 1);
    v5 = ValuePtr;
    if (v3 == v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t mlir::Block::recomputeOpOrder(uint64_t this)
{
  *(this + 24) |= 4uLL;
  v1 = this + 32;
  v2 = *(this + 40);
  if (v2 != this + 32)
  {
    v3 = 5;
    do
    {
      this = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v2);
      *(this + 32) = v3;
      v2 = *(v2 + 8);
      v3 += 5;
    }

    while (v2 != v1);
  }

  return this;
}

uint64_t mlir::Block::addArguments(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[6];
  v8 = a1[7] - v5;
  v6 = a3 + (v8 >> 3);
  if (v6 > (a1[8] - v5) >> 3)
  {
    if (!(v6 >> 61))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  if (a3 && a5)
  {
    mlir::TypeRange::dereference_iterator(a2, 0);
    operator new();
  }

  return a1[6] + v8;
}

void mlir::Block::insertArgument()
{
  operator new();
}

{
  operator new();
}

char *std::vector<mlir::BlockArgument>::insert(uint64_t a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 < v7)
  {
    if (__src == v6)
    {
      *v6 = *a3;
      *(a1 + 8) = v6 + 8;
      return v4;
    }

    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = *(a1 + 8);
      *(a1 + 8) = v6;
      if (v6 == v8)
      {
LABEL_21:
        v17 = v9 <= a3 || v4 > a3;
        v18 = 8;
        if (v17)
        {
          v18 = 0;
        }

        *v4 = *&a3[v18];
        return v4;
      }
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
      *(a1 + 8) = v6 + 8;
      if (v6 == v8)
      {
        goto LABEL_21;
      }
    }

    memmove(__src + 8, __src, v6 - v8);
    v9 = *(a1 + 8);
    goto LABEL_21;
  }

  v10 = *a1;
  v11 = (&v6[-*a1] >> 3) + 1;
  if (v11 >> 61)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v12 = v7 - v10;
  if (v12 >> 2 > v11)
  {
    v11 = v12 >> 2;
  }

  if (v12 >= 0x7FFFFFFFFFFFFFF8)
  {
    v13 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    if (!(v13 >> 61))
    {
      operator new();
    }

    goto LABEL_38;
  }

  v14 = __src - v10;
  v15 = (__src - v10) >> 3;
  v16 = (8 * v15);
  if (!v15)
  {
    if (v14 < 1)
    {
      v19 = v14 >> 2;
      if (v10 == __src)
      {
        v20 = 1;
      }

      else
      {
        v20 = v19;
      }

      if (!(v20 >> 61))
      {
        operator new();
      }

LABEL_38:
      std::string::__throw_length_error[abi:nn200100]();
    }

    v16 = (v16 - (((v14 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
  }

  *v16 = *a3;
  v21 = *(a1 + 8) - __src;
  memcpy(v16 + 1, __src, v21);
  *(a1 + 8) = v4;
  v22 = &v4[-*a1];
  v23 = v16 - v22;
  memcpy(v16 - v22, *a1, v22);
  v24 = *a1;
  *a1 = v23;
  *(a1 + 8) = v16 + v21 + 8;
  *(a1 + 16) = 0;
  if (v24)
  {
    operator delete(v24);
  }

  return v16;
}

void *mlir::Block::eraseArgument(mlir::Block *this, unsigned int a2)
{
  v2 = a2;
  v4 = a2;
  v5 = *(this + 6);
  result = *(v5 + 8 * a2);
  if (result)
  {
    result = MEMORY[0x259C63180](result, 0x1020C401BF16FDDLL);
    v5 = *(this + 6);
  }

  v7 = 8 * v4;
  v8 = v5 + 8 * v4;
  v9 = *(this + 7);
  v10 = v9 - (v8 + 8);
  if (v9 != v8 + 8)
  {
    result = memmove(v8, (v8 + 8), v9 - (v8 + 8));
    v5 = *(this + 6);
  }

  *(this + 7) = v8 + v10;
  v11 = (v7 + v5);
  if ((v8 + v10) != v11)
  {
    do
    {
      v12 = *v11++;
      v13 = v2++;
      *(v12 + 24) = v13;
    }

    while (v11 != (v8 + v10));
  }

  return result;
}

void *mlir::Block::eraseArguments(void *this, unsigned int a2, unsigned int a3)
{
  v3 = a2;
  v4 = this;
  if (!a3)
  {
    v14 = this[7];
    v15 = (8 * a2 + this[6]);
    if (v14 == v15)
    {
      return this;
    }

    goto LABEL_9;
  }

  v5 = a3;
  v6 = a3;
  v7 = a2;
  do
  {
    this = *(v4[6] + 8 * v7);
    if (this)
    {
      this = MEMORY[0x259C63180](this, 0x1020C401BF16FDDLL);
    }

    ++v7;
    --v6;
  }

  while (v6);
  v8 = 8 * v3;
  v10 = v4[6];
  v9 = v4[7];
  v11 = v10 + v8;
  v12 = (v10 + v8 + 8 * v5);
  v13 = v9 - v12;
  if (v9 != v12)
  {
    this = memmove((v10 + v8), v12, v9 - v12);
    v10 = v4[6];
  }

  v14 = (v11 + v13);
  v4[7] = v11 + v13;
  v15 = (v8 + v10);
  if ((v11 + v13) != v15)
  {
    do
    {
LABEL_9:
      v16 = *v15++;
      *(v16 + 24) = v3++;
    }

    while (v15 != v14);
  }

  return this;
}

uint64_t mlir::Block::eraseArguments(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v5 = result;
  v6 = *(result + 48);
  v7 = *(result + 56);
  if (v6 != v7)
  {
    while (1)
    {
      result = a2(a3, *v6);
      if (result)
      {
        break;
      }

      if (++v6 == v7)
      {
        v6 = v7;
        break;
      }
    }

    v7 = *(v5 + 56);
  }

  if (v6 != v7)
  {
    v8 = v6 + 1;
    v9 = *(*v6 + 24);
    result = MEMORY[0x259C63180]();
    v10 = *(v5 + 56);
    if (v10 == v6 + 1)
    {
      if (v6 == v10)
      {
        return result;
      }

LABEL_16:
      *(v5 + 56) = v6;
      return result;
    }

    do
    {
      result = a2(a3, *v8);
      if (result)
      {
        result = *v8;
        if (*v8)
        {
          result = MEMORY[0x259C63180](result, 0x1020C401BF16FDDLL);
        }
      }

      else
      {
        *(*v8 + 24) = v9;
        *v6++ = *v8;
        LODWORD(v9) = v9 + 1;
      }

      ++v8;
    }

    while (v8 != v10);
    if (v6 != *(v5 + 56))
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t mlir::Block::mightHaveTerminator(mlir::Block *this)
{
  v2 = this + 32;
  v1 = *(this + 4);
  if (v1 == v2)
  {
    return 0;
  }

  ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v1);
  {
    v7 = ValuePtr;
    v4 = *(v7 + 48);
    if (v4[2] != &mlir::detail::TypeIDResolver<void,void>::id)
    {
      goto LABEL_4;
    }

    return 1;
  }

  v4 = *(ValuePtr + 48);
  if (v4[2] == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    return 1;
  }

LABEL_4:
  v5 = *(*v4 + 4);

  return v5();
}

uint64_t mlir::Block::getNumSuccessors(mlir::Block *this)
{
  v2 = this + 32;
  v1 = *(this + 4);
  if (v1 == v2)
  {
    return 0;
  }

  else
  {
    return *(llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v1) + 40);
  }
}

uint64_t mlir::Block::getSinglePredecessor(mlir::Block *this)
{
  v1 = *this;
  if (!*this)
  {
    return 0;
  }

  if (*v1)
  {
    return 0;
  }

  return *(v1[2] + 16);
}

uint64_t mlir::Block::getUniquePredecessor(mlir::Block *this)
{
  v1 = *this;
  if (!*this)
  {
    return 0;
  }

  result = *(v1[2] + 16);
  while (1)
  {
    v1 = *v1;
    if (!v1)
    {
      break;
    }

    if (*(v1[2] + 16) != result)
    {
      return 0;
    }
  }

  return result;
}

void *mlir::SuccessorRange::SuccessorRange(void *this)
{
  *this = 0;
  this[1] = 0;
  return this;
}

{
  *this = 0;
  this[1] = 0;
  return this;
}

void *mlir::SuccessorRange::SuccessorRange(void *this, mlir::Block *a2)
{
  *this = 0;
  this[1] = 0;
  v2 = *(a2 + 4);
  if (v2 != (a2 + 32))
  {
    v3 = *(a2 + 3) & 0xFFFFFFFFFFFFFFF8;
    v4 = *(v3 + 8);
    if (v4 == v3 || *(v4 + 8) != v3)
    {
      v5 = this;
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v2);
      this = v5;
      v7 = *(ValuePtr + 40);
      v5[1] = v7;
      if (v7)
      {
        *v5 = ValuePtr + 16 * ((*(ValuePtr + 44) >> 23) & 1) + ((*(ValuePtr + 44) >> 21) & 0x7F8) + 64;
      }
    }
  }

  return this;
}

{
  *this = 0;
  this[1] = 0;
  v2 = *(a2 + 4);
  if (v2 != (a2 + 32))
  {
    v3 = *(a2 + 3) & 0xFFFFFFFFFFFFFFF8;
    v4 = *(v3 + 8);
    if (v4 == v3 || *(v4 + 8) != v3)
    {
      v5 = this;
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v2);
      this = v5;
      v7 = *(ValuePtr + 40);
      v5[1] = v7;
      if (v7)
      {
        *v5 = ValuePtr + 16 * ((*(ValuePtr + 44) >> 23) & 1) + ((*(ValuePtr + 44) >> 21) & 0x7F8) + 64;
      }
    }
  }

  return this;
}

unint64_t *mlir::SuccessorRange::SuccessorRange(unint64_t *this, Operation *a2)
{
  *this = 0;
  this[1] = 0;
  v2 = *(a2 + 10);
  this[1] = v2;
  if (v2)
  {
    *this = (a2 + 16 * ((*(a2 + 11) >> 23) & 1) + ((*(a2 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8;
  }

  return this;
}

{
  *this = 0;
  this[1] = 0;
  v2 = *(a2 + 10);
  this[1] = v2;
  if (v2)
  {
    *this = (a2 + 16 * ((*(a2 + 11) >> 23) & 1) + ((*(a2 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8;
  }

  return this;
}

uint64_t *mlir::BlockRange::BlockRange(uint64_t *result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  result[1] = a3;
  if (a3)
  {
    *result = a2 | 4;
  }

  return result;
}

{
  *result = 0;
  result[1] = a3;
  if (a3)
  {
    *result = a2 | 4;
  }

  return result;
}

unint64_t *mlir::BlockRange::BlockRange(unint64_t *result, uint64_t a2, unint64_t a3)
{
  *result = a2 & 0xFFFFFFFFFFFFFFFBLL;
  result[1] = a3;
  return result;
}

{
  *result = a2 & 0xFFFFFFFFFFFFFFFBLL;
  result[1] = a3;
  return result;
}

unint64_t mlir::BlockRange::offset_base(uint64_t a1, uint64_t a2)
{
  if ((a1 & 4) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFFFF8;
  }

  if (v2)
  {
    return v2 + 32 * a2;
  }

  else
  {
    return ((a1 & 0xFFFFFFFFFFFFFFF8 & (a1 << 61 >> 63)) + 8 * a2) | 4;
  }
}

uint64_t mlir::BlockRange::dereference_iterator(uint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFFF8;
  if ((a1 & 4) == 0)
  {
    v2 = 0;
  }

  v3 = v2 + 8 * a2;
  if (!(((a1 & 4) >> 2) | ((a1 & 0xFFFFFFFFFFFFFFF8) == 0)))
  {
    v3 = (a1 & 0xFFFFFFFFFFFFFFF8) + 32 * a2 + 24;
  }

  return *v3;
}

uint64_t mlir::Builder::getIntegerType(uint64_t **this, int a2, int a3)
{
  v3 = *this;
  if (a3)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  return mlir::IntegerType::get(v3, a2, v4);
}

uint64_t mlir::Builder::getNamedAttr(mlir::StringAttr **a1, size_t a2, const llvm::Twine *a3, uint64_t a4)
{
  v8 = 261;
  v7[0] = a2;
  v7[1] = a3;
  v5 = mlir::StringAttr::get(*a1, v7, a3);
  mlir::NamedAttribute::NamedAttribute(&v9, v5, a4);
  return v9;
}

uint64_t mlir::Builder::getIndexAttr(mlir::IndexType **this, mlir::MLIRContext *a2)
{
  v3 = mlir::IndexType::get(*this, a2);
  v7 = 64;
  v6 = a2;
  result = mlir::IntegerAttr::get(v3, &v6);
  if (v7 >= 0x41)
  {
    if (v6)
    {
      v5 = result;
      MEMORY[0x259C63150](v6, 0x1000C8000313F17);
      return v5;
    }
  }

  return result;
}

uint64_t mlir::Builder::getI64IntegerAttr(uint64_t **this, uint64_t a2)
{
  v3 = mlir::IntegerType::get(*this, 64, 0);
  v7 = 64;
  v6 = a2;
  result = mlir::IntegerAttr::get(v3, &v6);
  if (v7 >= 0x41)
  {
    if (v6)
    {
      v5 = result;
      MEMORY[0x259C63150](v6, 0x1000C8000313F17);
      return v5;
    }
  }

  return result;
}

uint64_t mlir::Builder::getBoolVectorAttr(uint64_t **a1, unsigned __int8 *a2, uint64_t a3)
{
  v21 = a3;
  v5 = mlir::IntegerType::get(*a1, 1, 0);
  v6 = mlir::VectorType::get(&v21, 1uLL, v5, 0, 0);
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = *v6;
  {
    v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v19 = v7;
    v20 = v6;
    mlir::mps::serialization::ExtractOp::inferReturnTypes();
    v6 = v20;
    v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v9 = *(v19 + 8);
    v10 = *(v19 + 16);
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  v11 = v9;
  v12 = v10;
  do
  {
    v13 = v12 >> 1;
    v14 = &v11[2 * (v12 >> 1)];
    v16 = *v14;
    v15 = v14 + 2;
    v12 += ~(v12 >> 1);
    if (v16 < v8)
    {
      v11 = v15;
    }

    else
    {
      v12 = v13;
    }
  }

  while (v12);
  if (v11 != &v9[2 * v10] && *v11 == v8)
  {
    v17 = v11[1];
    return mlir::DenseElementsAttr::get(v6, v17, a2, a3);
  }

LABEL_14:
  v17 = 0;
  return mlir::DenseElementsAttr::get(v6, v17, a2, a3);
}

uint64_t mlir::Builder::getI32VectorAttr(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v3 = mlir::IntegerType::get(*a1, 32, 0);
  v4 = mlir::VectorType::get(&v18, 1uLL, v3, 0, 0);
  if (v4)
  {
    v5 = *v4;
    {
      v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v7 = *(v5 + 8);
      v8 = *(v5 + 16);
      if (!v8)
      {
        return mlir::DenseElementsAttr::getRawIntOrFloat(v4);
      }
    }

    else
    {
      v16 = v5;
      v17 = v4;
      mlir::mps::serialization::ExtractOp::inferReturnTypes();
      v4 = v17;
      v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v7 = *(v16 + 8);
      v8 = *(v16 + 16);
      if (!v8)
      {
        return mlir::DenseElementsAttr::getRawIntOrFloat(v4);
      }
    }

    v9 = v7;
    v10 = v8;
    do
    {
      v11 = v10 >> 1;
      v12 = &v9[2 * (v10 >> 1)];
      v14 = *v12;
      v13 = v12 + 2;
      v10 += ~(v10 >> 1);
      if (v14 < v6)
      {
        v9 = v13;
      }

      else
      {
        v10 = v11;
      }
    }

    while (v10);
  }

  return mlir::DenseElementsAttr::getRawIntOrFloat(v4);
}

uint64_t mlir::Builder::getI64VectorAttr(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v3 = mlir::IntegerType::get(*a1, 64, 0);
  v4 = mlir::VectorType::get(&v18, 1uLL, v3, 0, 0);
  if (v4)
  {
    v5 = *v4;
    {
      v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v7 = *(v5 + 8);
      v8 = *(v5 + 16);
      if (!v8)
      {
        return mlir::DenseElementsAttr::getRawIntOrFloat(v4);
      }
    }

    else
    {
      v16 = v5;
      v17 = v4;
      mlir::mps::serialization::ExtractOp::inferReturnTypes();
      v4 = v17;
      v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v7 = *(v16 + 8);
      v8 = *(v16 + 16);
      if (!v8)
      {
        return mlir::DenseElementsAttr::getRawIntOrFloat(v4);
      }
    }

    v9 = v7;
    v10 = v8;
    do
    {
      v11 = v10 >> 1;
      v12 = &v9[2 * (v10 >> 1)];
      v14 = *v12;
      v13 = v12 + 2;
      v10 += ~(v10 >> 1);
      if (v14 < v6)
      {
        v9 = v13;
      }

      else
      {
        v10 = v11;
      }
    }

    while (v10);
  }

  return mlir::DenseElementsAttr::getRawIntOrFloat(v4);
}

uint64_t mlir::Builder::getIndexVectorAttr(mlir::IndexType **a1, mlir::MLIRContext *a2, uint64_t a3)
{
  v18 = a3;
  v3 = mlir::IndexType::get(*a1, a2);
  v4 = mlir::VectorType::get(&v18, 1uLL, v3, 0, 0);
  if (v4)
  {
    v5 = *v4;
    {
      v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v7 = *(v5 + 8);
      v8 = *(v5 + 16);
      if (!v8)
      {
        return mlir::DenseElementsAttr::getRawIntOrFloat(v4);
      }
    }

    else
    {
      v16 = v5;
      v17 = v4;
      mlir::mps::serialization::ExtractOp::inferReturnTypes();
      v4 = v17;
      v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v7 = *(v16 + 8);
      v8 = *(v16 + 16);
      if (!v8)
      {
        return mlir::DenseElementsAttr::getRawIntOrFloat(v4);
      }
    }

    v9 = v7;
    v10 = v8;
    do
    {
      v11 = v10 >> 1;
      v12 = &v9[2 * (v10 >> 1)];
      v14 = *v12;
      v13 = v12 + 2;
      v10 += ~(v10 >> 1);
      if (v14 < v6)
      {
        v9 = v13;
      }

      else
      {
        v10 = v11;
      }
    }

    while (v10);
  }

  return mlir::DenseElementsAttr::getRawIntOrFloat(v4);
}

uint64_t mlir::Builder::getF32VectorAttr(mlir::Float32Type **a1, mlir::MLIRContext *a2, unint64_t a3)
{
  v18 = a3;
  v3 = mlir::Float32Type::get(*a1, a2);
  v4 = mlir::VectorType::get(&v18, 1uLL, v3, 0, 0);
  if (v4)
  {
    v5 = *v4;
    {
      v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v7 = *(v5 + 8);
      v8 = *(v5 + 16);
      if (!v8)
      {
        return mlir::DenseElementsAttr::getRawIntOrFloat(v4);
      }
    }

    else
    {
      v16 = v5;
      v17 = v4;
      mlir::mps::serialization::ExtractOp::inferReturnTypes();
      v4 = v17;
      v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v7 = *(v16 + 8);
      v8 = *(v16 + 16);
      if (!v8)
      {
        return mlir::DenseElementsAttr::getRawIntOrFloat(v4);
      }
    }

    v9 = v7;
    v10 = v8;
    do
    {
      v11 = v10 >> 1;
      v12 = &v9[2 * (v10 >> 1)];
      v14 = *v12;
      v13 = v12 + 2;
      v10 += ~(v10 >> 1);
      if (v14 < v6)
      {
        v9 = v13;
      }

      else
      {
        v10 = v11;
      }
    }

    while (v10);
  }

  return mlir::DenseElementsAttr::getRawIntOrFloat(v4);
}

uint64_t mlir::Builder::getF64VectorAttr(mlir::Float64Type **a1, mlir::MLIRContext *a2, unint64_t a3)
{
  v18 = a3;
  v3 = mlir::Float64Type::get(*a1, a2);
  v4 = mlir::VectorType::get(&v18, 1uLL, v3, 0, 0);
  if (v4)
  {
    v5 = *v4;
    {
      v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v7 = *(v5 + 8);
      v8 = *(v5 + 16);
      if (!v8)
      {
        return mlir::DenseElementsAttr::getRawIntOrFloat(v4);
      }
    }

    else
    {
      v16 = v5;
      v17 = v4;
      mlir::mps::serialization::ExtractOp::inferReturnTypes();
      v4 = v17;
      v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v7 = *(v16 + 8);
      v8 = *(v16 + 16);
      if (!v8)
      {
        return mlir::DenseElementsAttr::getRawIntOrFloat(v4);
      }
    }

    v9 = v7;
    v10 = v8;
    do
    {
      v11 = v10 >> 1;
      v12 = &v9[2 * (v10 >> 1)];
      v14 = *v12;
      v13 = v12 + 2;
      v10 += ~(v10 >> 1);
      if (v14 < v6)
      {
        v9 = v13;
      }

      else
      {
        v10 = v11;
      }
    }

    while (v10);
  }

  return mlir::DenseElementsAttr::getRawIntOrFloat(v4);
}

uint64_t mlir::Builder::getI32TensorAttr(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  v3 = mlir::IntegerType::get(*a1, 32, 0);
  v7 = mlir::RankedTensorType::get(&v6, 1, v3, 0);
  v4 = mlir::TensorType::operator mlir::ShapedType(&v7);
  return mlir::DenseElementsAttr::getRawIntOrFloat(v4);
}

uint64_t mlir::Builder::getI64TensorAttr(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  v3 = mlir::IntegerType::get(*a1, 64, 0);
  v7 = mlir::RankedTensorType::get(&v6, 1, v3, 0);
  v4 = mlir::TensorType::operator mlir::ShapedType(&v7);
  return mlir::DenseElementsAttr::getRawIntOrFloat(v4);
}

uint64_t mlir::Builder::getIndexTensorAttr(mlir::IndexType **a1, mlir::MLIRContext *a2, uint64_t a3)
{
  v6 = a3;
  v3 = mlir::IndexType::get(*a1, a2);
  v7 = mlir::RankedTensorType::get(&v6, 1, v3, 0);
  v4 = mlir::TensorType::operator mlir::ShapedType(&v7);
  return mlir::DenseElementsAttr::getRawIntOrFloat(v4);
}

uint64_t mlir::Builder::getI32IntegerAttr(uint64_t **this, unsigned int a2)
{
  v3 = mlir::IntegerType::get(*this, 32, 0);
  v7 = 32;
  v6 = a2;
  result = mlir::IntegerAttr::get(v3, &v6);
  if (v7 >= 0x41)
  {
    if (v6)
    {
      v5 = result;
      MEMORY[0x259C63150](v6, 0x1000C8000313F17);
      return v5;
    }
  }

  return result;
}

uint64_t mlir::Builder::getSI32IntegerAttr(uint64_t **this, unsigned int a2)
{
  v3 = mlir::IntegerType::get(*this, 32, 1u);
  v7 = 32;
  v6 = a2;
  result = mlir::IntegerAttr::get(v3, &v6);
  if (v7 >= 0x41)
  {
    if (v6)
    {
      v5 = result;
      MEMORY[0x259C63150](v6, 0x1000C8000313F17);
      return v5;
    }
  }

  return result;
}

uint64_t mlir::Builder::getUI32IntegerAttr(uint64_t **this, unsigned int a2)
{
  v3 = mlir::IntegerType::get(*this, 32, 2u);
  v7 = 32;
  v6 = a2;
  result = mlir::IntegerAttr::get(v3, &v6);
  if (v7 >= 0x41)
  {
    if (v6)
    {
      v5 = result;
      MEMORY[0x259C63150](v6, 0x1000C8000313F17);
      return v5;
    }
  }

  return result;
}

uint64_t mlir::Builder::getI16IntegerAttr(uint64_t **this, unsigned __int16 a2)
{
  v3 = mlir::IntegerType::get(*this, 16, 0);
  v7 = 16;
  v6 = a2;
  result = mlir::IntegerAttr::get(v3, &v6);
  if (v7 >= 0x41)
  {
    if (v6)
    {
      v5 = result;
      MEMORY[0x259C63150](v6, 0x1000C8000313F17);
      return v5;
    }
  }

  return result;
}

uint64_t mlir::Builder::getI8IntegerAttr(uint64_t **this, unsigned __int8 a2)
{
  v3 = mlir::IntegerType::get(*this, 8, 0);
  v7 = 8;
  v6 = a2;
  result = mlir::IntegerAttr::get(v3, &v6);
  if (v7 >= 0x41)
  {
    if (v6)
    {
      v5 = result;
      MEMORY[0x259C63150](v6, 0x1000C8000313F17);
      return v5;
    }
  }

  return result;
}

uint64_t mlir::Builder::getIntegerAttr(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v12 = a2;
  isIndex = mlir::Type::isIndex(&v12);
  v5 = v12;
  if (isIndex)
  {
    v11 = 64;
    v10 = a3;
    result = mlir::IntegerAttr::get(v12, &v10);
    if (v11 < 0x41)
    {
      return result;
    }

    goto LABEL_10;
  }

  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v12);
  mlir::Type::isSignedInteger(&v12);
  v11 = IntOrFloatBitWidth;
  if (IntOrFloatBitWidth > 0x40)
  {
    llvm::APInt::initSlowCase(&v10);
  }

  v8 = 0xFFFFFFFFFFFFFFFFLL >> -IntOrFloatBitWidth;
  if (!IntOrFloatBitWidth)
  {
    v8 = 0;
  }

  v10 = v8 & a3;
  result = mlir::IntegerAttr::get(v5, &v10);
  if (v11 >= 0x41)
  {
LABEL_10:
    if (v10)
    {
      v9 = result;
      MEMORY[0x259C63150](v10, 0x1000C8000313F17);
      return v9;
    }
  }

  return result;
}

llvm::APFloatBase *mlir::Builder::getF64FloatAttr(mlir::Float64Type **this, double a2, mlir::MLIRContext *a3)
{
  v12[3] = *MEMORY[0x277D85DE8];
  v4 = mlir::Float64Type::get(*this, a3);
  v5 = llvm::detail::IEEEFloat::IEEEFloat(v10, a2);
  v6 = llvm::APFloatBase::IEEEdouble(v5);
  llvm::APFloat::Storage::Storage(v12, v10, v6);
  llvm::detail::IEEEFloat::~IEEEFloat(v10);
  v7 = mlir::FloatAttr::get(v4, v11);
  v8 = v12[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v7) == v8)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v12);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v12);
  }

  return v7;
}

llvm::APFloatBase *mlir::Builder::getF32FloatAttr(mlir::Float32Type **this, float a2, mlir::MLIRContext *a3)
{
  v12[3] = *MEMORY[0x277D85DE8];
  v4 = mlir::Float32Type::get(*this, a3);
  v5 = llvm::detail::IEEEFloat::IEEEFloat(v10, a2);
  v6 = llvm::APFloatBase::IEEEsingle(v5);
  llvm::APFloat::Storage::Storage(v12, v10, v6);
  llvm::detail::IEEEFloat::~IEEEFloat(v10);
  v7 = mlir::FloatAttr::get(v4, v11);
  v8 = v12[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v7) == v8)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v12);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v12);
  }

  return v7;
}

llvm::APFloatBase *mlir::Builder::getF16FloatAttr(mlir::Float16Type **this, float a2, mlir::MLIRContext *a3)
{
  v4 = mlir::Float16Type::get(*this, a3);

  return mlir::FloatAttr::get(v4, a2);
}

uint64_t mlir::Builder::getBoolArrayAttr(mlir::BoolAttr **a1, unsigned __int8 *a2, unint64_t a3)
{
  v3 = a3;
  v11 = *MEMORY[0x277D85DE8];
  if (a3 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a3)
  {
    v6 = v10;
    v7 = a3;
    do
    {
      v8 = *a2++;
      *v6++ = mlir::BoolAttr::get(*a1, v8);
      --v7;
    }

    while (v7);
  }

  return mlir::ArrayAttr::get(*a1, v10, v3);
}

uint64_t mlir::Builder::getI32ArrayAttr(uint64_t **a1, unsigned int *a2, unint64_t a3)
{
  v3 = a3;
  v20[8] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = 0x800000000;
  if (a3 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a3)
  {
    v6 = 4 * a3;
    v7 = v20;
    do
    {
      v8 = *a2;
      v9 = mlir::IntegerType::get(*a1, 32, 0);
      v17 = 32;
      v16 = v8;
      v10 = mlir::IntegerAttr::get(v9, &v16);
      if (v17 >= 0x41 && v16)
      {
        v11 = v10;
        MEMORY[0x259C63150](v16, 0x1000C8000313F17);
        v10 = v11;
      }

      *v7++ = v10;
      ++a2;
      v6 -= 4;
    }

    while (v6);
    v12 = v19;
    v13 = v18;
  }

  else
  {
    v12 = 0;
    v13 = v20;
  }

  LODWORD(v19) = v12 + v3;
  result = mlir::ArrayAttr::get(*a1, v13, (v12 + v3));
  if (v18 != v20)
  {
    v15 = result;
    free(v18);
    return v15;
  }

  return result;
}

uint64_t mlir::Builder::getI64ArrayAttr(uint64_t **a1, uint64_t *a2, unint64_t a3)
{
  v3 = a3;
  v20[8] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = 0x800000000;
  if (a3 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a3)
  {
    v6 = 8 * a3;
    v7 = v20;
    do
    {
      v8 = *a2;
      v9 = mlir::IntegerType::get(*a1, 64, 0);
      v17 = 64;
      v16 = v8;
      v10 = mlir::IntegerAttr::get(v9, &v16);
      if (v17 >= 0x41 && v16)
      {
        v11 = v10;
        MEMORY[0x259C63150](v16, 0x1000C8000313F17);
        v10 = v11;
      }

      *v7++ = v10;
      ++a2;
      v6 -= 8;
    }

    while (v6);
    v12 = v19;
    v13 = v18;
  }

  else
  {
    v12 = 0;
    v13 = v20;
  }

  LODWORD(v19) = v12 + v3;
  result = mlir::ArrayAttr::get(*a1, v13, (v12 + v3));
  if (v18 != v20)
  {
    v15 = result;
    free(v18);
    return v15;
  }

  return result;
}

uint64_t mlir::Builder::getIndexArrayAttr(mlir::IndexType **a1, mlir::MLIRContext *a2, unint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v12 = *MEMORY[0x277D85DE8];
  if (a3 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a3)
  {
    v6 = 8 * a3;
    v7 = v11;
    do
    {
      v8 = *v4++;
      v9 = mlir::IndexType::get(*a1, a2);
      *v7++ = mlir::Builder::getIntegerAttr(v9, v9, v8);
      v6 -= 8;
    }

    while (v6);
  }

  return mlir::ArrayAttr::get(*a1, v11, v3);
}

uint64_t mlir::Builder::getF32ArrayAttr(mlir::Float32Type **a1, mlir::MLIRContext *a2, unint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v11 = *MEMORY[0x277D85DE8];
  if (a3 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a3)
  {
    v6 = 4 * a3;
    v7 = v10;
    do
    {
      v8 = *v4++;
      *v7++ = mlir::Builder::getF32FloatAttr(a1, v8, a2);
      v6 -= 4;
    }

    while (v6);
  }

  return mlir::ArrayAttr::get(*a1, v10, v3);
}

uint64_t mlir::Builder::getF64ArrayAttr(mlir::Float64Type **a1, mlir::MLIRContext *a2, unint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v11 = *MEMORY[0x277D85DE8];
  if (a3 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a3)
  {
    v6 = 8 * a3;
    v7 = v10;
    do
    {
      v8 = *v4++;
      *v7++ = mlir::Builder::getF64FloatAttr(a1, v8, a2);
      v6 -= 8;
    }

    while (v6);
  }

  return mlir::ArrayAttr::get(*a1, v10, v3);
}

uint64_t mlir::Builder::getStrArrayAttr(mlir::MLIRContext **a1, size_t *a2, const llvm::Twine *a3)
{
  v3 = a3;
  v4 = a2;
  v19[8] = *MEMORY[0x277D85DE8];
  v17 = v19;
  v18 = 0x800000000;
  if (a3 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a3)
  {
    v6 = &a2[2 * a3];
    v7 = v19;
    do
    {
      v8 = *v4;
      v9 = v4[1];
      v4 += 2;
      v10 = *a1;
      v16 = 261;
      v15[0] = v8;
      v15[1] = v9;
      *v7++ = mlir::StringAttr::get(v10, v15, a3);
    }

    while (v4 != v6);
    v11 = v18;
    v12 = v17;
  }

  else
  {
    v11 = 0;
    v12 = v19;
  }

  LODWORD(v18) = v11 + v3;
  result = mlir::ArrayAttr::get(*a1, v12, (v11 + v3));
  if (v17 != v19)
  {
    v14 = result;
    free(v17);
    return v14;
  }

  return result;
}

uint64_t mlir::Builder::getTypeArrayAttr(mlir::MLIRContext **a1, uint64_t a2, unint64_t a3)
{
  v9[8] = *MEMORY[0x277D85DE8];
  if (a3 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a3)
  {
    for (i = 0; i != a3; ++i)
    {
      v7 = mlir::TypeRange::dereference_iterator(a2, i);
      v9[i] = mlir::TypeAttr::get(v7);
    }
  }

  return mlir::ArrayAttr::get(*a1, v9, a3);
}

uint64_t mlir::Builder::getAffineMapArrayAttr(mlir::MLIRContext **a1, unint64_t *a2, unint64_t a3)
{
  v3 = a3;
  v11 = *MEMORY[0x277D85DE8];
  if (a3 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a3)
  {
    v6 = 8 * a3;
    v7 = v10;
    do
    {
      v8 = *a2++;
      *v7++ = mlir::AffineMapAttr::get(v8);
      v6 -= 8;
    }

    while (v6);
  }

  return mlir::ArrayAttr::get(*a1, v10, v3);
}

void *mlir::Builder::getZeroAttr(mlir::IndexType **a1, mlir::MLIRContext *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 136);
  if (v3 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    result = mlir::FloatAttr::get(a2, 0.0);
    if (!result)
    {
      return result;
    }

    v21 = *result;
    {
      v22 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
      if (!v24)
      {
        return result;
      }
    }

    else
    {
      v68 = result;
      mlir::Builder::getZeroAttr();
      result = v68;
      v22 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
      if (!v24)
      {
        return result;
      }
    }

    v25 = v23;
    v26 = v24;
    do
    {
      v27 = v26 >> 1;
      v28 = &v25[2 * (v26 >> 1)];
      v30 = *v28;
      v29 = v28 + 2;
      v26 += ~(v26 >> 1);
      if (v30 < v22)
      {
        v25 = v29;
      }

      else
      {
        v26 = v27;
      }
    }

    while (v26);
  }

  else
  {
    if (v3 != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
    {
      if (a2 && v3 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        v31 = a2;
        v74[0] = a2;
        LODWORD(v76) = mlir::IntegerType::getWidth(v74);
        if (v76 > 0x40)
        {
          llvm::APInt::initSlowCase(&v75);
        }

        v75 = 0;
        result = mlir::IntegerAttr::get(v31, &v75);
        if (!result)
        {
          goto LABEL_107;
        }

        v53 = *result;
        {
          v54 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
          v55 = *(v53 + 8);
          v56 = *(v53 + 16);
          if (v56)
          {
            goto LABEL_92;
          }
        }

        else
        {
          v70 = result;
          mlir::Builder::getZeroAttr();
          result = v70;
          v54 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
          v55 = *(v53 + 8);
          v56 = *(v53 + 16);
          if (v56)
          {
LABEL_92:
            v57 = v55;
            v58 = v56;
            do
            {
              v59 = v58 >> 1;
              v60 = &v57[2 * (v58 >> 1)];
              v62 = *v60;
              v61 = v60 + 2;
              v58 += ~(v58 >> 1);
              if (v62 < v54)
              {
                v57 = v61;
              }

              else
              {
                v58 = v59;
              }
            }

            while (v58);
LABEL_105:
            if (v57 != &v55[2 * v56] && *v57 == v54)
            {
              if (v76 < 0x41)
              {
                return result;
              }

              goto LABEL_108;
            }

LABEL_107:
            if (v76 < 0x41)
            {
              return result;
            }

LABEL_108:
            if (v75)
            {
              v71 = result;
              MEMORY[0x259C63150](v75, 0x1000C8000313F17);
              return v71;
            }

            return result;
          }
        }

        v56 = 0;
        v57 = v55;
        goto LABEL_105;
      }

      if (v3 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
      {
        return 0;
      }

      {
        v44 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v45 = *(v2 + 8);
        v46 = *(v2 + 16);
        if (v46)
        {
          goto LABEL_82;
        }
      }

      else
      {
        v67 = a1;
        v72 = a2;
        mlir::tensor::ExpandShapeOp::fold();
        a1 = v67;
        a2 = v72;
        v44 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v45 = *(v2 + 8);
        v46 = *(v2 + 16);
        if (v46)
        {
LABEL_82:
          v47 = v45;
          v48 = v46;
          do
          {
            v49 = v48 >> 1;
            v50 = &v47[2 * (v48 >> 1)];
            v52 = *v50;
            v51 = v50 + 2;
            v48 += ~(v48 >> 1);
            if (v52 < v44)
            {
              v47 = v51;
            }

            else
            {
              v48 = v49;
            }
          }

          while (v48);
LABEL_114:
          if (v47 != &v45[2 * v46] && *v47 == v44)
          {
            v63 = a1;
            v64 = v47[1];
          }

          else
          {
            v63 = a1;
            v64 = 0;
          }

          v75 = a2;
          v76 = v64;
          ElementType = mlir::ShapedType::getElementType(&v75);
          result = mlir::Builder::getZeroAttr(v63, ElementType);
          v74[0] = result;
          v74[1] = v66;
          if (result)
          {
            v73 = mlir::DenseElementsAttr::get(v75, v76, v74, 1uLL);
            return mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v73);
          }

          return result;
        }
      }

      v46 = 0;
      v47 = v45;
      goto LABEL_114;
    }

    v32 = mlir::IndexType::get(*a1, a2);
    LODWORD(v76) = 64;
    v75 = 0;
    result = mlir::IntegerAttr::get(v32, &v75);
    if (v76 >= 0x41 && v75)
    {
      v33 = result;
      MEMORY[0x259C63150](v75, 0x1000C8000313F17);
      result = v33;
    }

    if (result)
    {
      v34 = *result;
      {
        v35 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
        v36 = *(v34 + 8);
        v37 = *(v34 + 16);
        if (!v37)
        {
          return result;
        }
      }

      else
      {
        v69 = result;
        mlir::Builder::getZeroAttr();
        result = v69;
        v35 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
        v36 = *(v34 + 8);
        v37 = *(v34 + 16);
        if (!v37)
        {
          return result;
        }
      }

      v38 = v36;
      v39 = v37;
      do
      {
        v40 = v39 >> 1;
        v41 = &v38[2 * (v39 >> 1)];
        v43 = *v41;
        v42 = v41 + 2;
        v39 += ~(v39 >> 1);
        if (v43 < v35)
        {
          v38 = v42;
        }

        else
        {
          v39 = v40;
        }
      }

      while (v39);
    }
  }

  return result;
}

void *mlir::Builder::getOneAttr(mlir::IndexType **a1, mlir::MLIRContext *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 136);
  if (v3 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    result = mlir::FloatAttr::get(a2, 1.0);
    if (!result)
    {
      return result;
    }

    v21 = *result;
    {
      v22 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
      if (!v24)
      {
        return result;
      }
    }

    else
    {
      v69 = result;
      mlir::Builder::getZeroAttr();
      result = v69;
      v22 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
      if (!v24)
      {
        return result;
      }
    }

    v25 = v23;
    v26 = v24;
    do
    {
      v27 = v26 >> 1;
      v28 = &v25[2 * (v26 >> 1)];
      v30 = *v28;
      v29 = v28 + 2;
      v26 += ~(v26 >> 1);
      if (v30 < v22)
      {
        v25 = v29;
      }

      else
      {
        v26 = v27;
      }
    }

    while (v26);
  }

  else
  {
    if (v3 != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
    {
      if (a2 && v3 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        v31 = a2;
        v75[0] = a2;
        Width = mlir::IntegerType::getWidth(v75);
        LODWORD(v77) = Width;
        if (Width > 0x40)
        {
          llvm::APInt::initSlowCase(&v76);
        }

        v76 = Width != 0;
        result = mlir::IntegerAttr::get(v31, &v76);
        if (!result)
        {
          goto LABEL_107;
        }

        v54 = *result;
        {
          v55 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
          v56 = *(v54 + 8);
          v57 = *(v54 + 16);
          if (v57)
          {
            goto LABEL_92;
          }
        }

        else
        {
          v71 = result;
          mlir::Builder::getZeroAttr();
          result = v71;
          v55 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
          v56 = *(v54 + 8);
          v57 = *(v54 + 16);
          if (v57)
          {
LABEL_92:
            v58 = v56;
            v59 = v57;
            do
            {
              v60 = v59 >> 1;
              v61 = &v58[2 * (v59 >> 1)];
              v63 = *v61;
              v62 = v61 + 2;
              v59 += ~(v59 >> 1);
              if (v63 < v55)
              {
                v58 = v62;
              }

              else
              {
                v59 = v60;
              }
            }

            while (v59);
LABEL_105:
            if (v58 != &v56[2 * v57] && *v58 == v55)
            {
              if (v77 < 0x41)
              {
                return result;
              }

              goto LABEL_108;
            }

LABEL_107:
            if (v77 < 0x41)
            {
              return result;
            }

LABEL_108:
            if (v76)
            {
              v72 = result;
              MEMORY[0x259C63150](v76, 0x1000C8000313F17);
              return v72;
            }

            return result;
          }
        }

        v57 = 0;
        v58 = v56;
        goto LABEL_105;
      }

      if (v3 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
      {
        return 0;
      }

      {
        v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v46 = *(v2 + 8);
        v47 = *(v2 + 16);
        if (v47)
        {
          goto LABEL_82;
        }
      }

      else
      {
        v68 = a1;
        v73 = a2;
        mlir::tensor::ExpandShapeOp::fold();
        a1 = v68;
        a2 = v73;
        v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v46 = *(v2 + 8);
        v47 = *(v2 + 16);
        if (v47)
        {
LABEL_82:
          v48 = v46;
          v49 = v47;
          do
          {
            v50 = v49 >> 1;
            v51 = &v48[2 * (v49 >> 1)];
            v53 = *v51;
            v52 = v51 + 2;
            v49 += ~(v49 >> 1);
            if (v53 < v45)
            {
              v48 = v52;
            }

            else
            {
              v49 = v50;
            }
          }

          while (v49);
LABEL_114:
          if (v48 != &v46[2 * v47] && *v48 == v45)
          {
            v64 = a1;
            v65 = v48[1];
          }

          else
          {
            v64 = a1;
            v65 = 0;
          }

          v76 = a2;
          v77 = v65;
          ElementType = mlir::ShapedType::getElementType(&v76);
          result = mlir::Builder::getOneAttr(v64, ElementType);
          v75[0] = result;
          v75[1] = v67;
          if (result)
          {
            v74 = mlir::DenseElementsAttr::get(v76, v77, v75, 1uLL);
            return mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v74);
          }

          return result;
        }
      }

      v47 = 0;
      v48 = v46;
      goto LABEL_114;
    }

    v33 = mlir::IndexType::get(*a1, a2);
    LODWORD(v77) = 64;
    v76 = 1;
    result = mlir::IntegerAttr::get(v33, &v76);
    if (v77 >= 0x41 && v76)
    {
      v34 = result;
      MEMORY[0x259C63150](v76, 0x1000C8000313F17);
      result = v34;
    }

    if (result)
    {
      v35 = *result;
      {
        v36 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
        v37 = *(v35 + 8);
        v38 = *(v35 + 16);
        if (!v38)
        {
          return result;
        }
      }

      else
      {
        v70 = result;
        mlir::Builder::getZeroAttr();
        result = v70;
        v36 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
        v37 = *(v35 + 8);
        v38 = *(v35 + 16);
        if (!v38)
        {
          return result;
        }
      }

      v39 = v37;
      v40 = v38;
      do
      {
        v41 = v40 >> 1;
        v42 = &v39[2 * (v40 >> 1)];
        v44 = *v42;
        v43 = v42 + 2;
        v40 += ~(v40 >> 1);
        if (v44 < v36)
        {
          v39 = v43;
        }

        else
        {
          v40 = v41;
        }
      }

      while (v40);
    }
  }

  return result;
}

uint64_t mlir::Builder::getConstantAffineMap(mlir::MLIRContext **this, mlir *a2, mlir::MLIRContext *a3)
{
  AffineConstantExpr = mlir::getAffineConstantExpr(a2, *this, a3);

  return mlir::AffineMap::get(0, 0, AffineConstantExpr);
}

uint64_t mlir::Builder::getDimIdentityMap(mlir::MLIRContext **this, uint64_t a2, mlir::MLIRContext *a3)
{
  AffineDimExpr = mlir::getAffineDimExpr(0, *this, a3);

  return mlir::AffineMap::get(1, 0, AffineDimExpr);
}

uint64_t mlir::Builder::getMultiDimIdentityMap(mlir::MLIRContext **this, unsigned int a2, mlir::MLIRContext *a3)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v9 = 0;
  if (a2 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a2)
  {
    v5 = 0;
    do
    {
      AffineDimExpr = mlir::getAffineDimExpr(v5, *this, a3);
      if (v9 >= 4uLL)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v10[v9] = AffineDimExpr;
      v7 = ++v9;
      v5 = (v5 + 1);
    }

    while (a2 != v5);
  }

  else
  {
    v7 = 0;
  }

  return mlir::AffineMap::get(a2, 0, v10, v7, *this);
}

uint64_t mlir::Builder::getSymbolIdentityMap(mlir::MLIRContext **this, uint64_t a2, mlir::MLIRContext *a3)
{
  AffineSymbolExpr = mlir::getAffineSymbolExpr(0, *this, a3);

  return mlir::AffineMap::get(0, 1, AffineSymbolExpr);
}

uint64_t mlir::Builder::getSingleDimShiftAffineMap(mlir::MLIRContext **this, uint64_t a2, mlir::MLIRContext *a3)
{
  AffineDimExpr = mlir::getAffineDimExpr(0, *this, a3);
  v4 = mlir::AffineExpr::operator+(&AffineDimExpr, a2);
  return mlir::AffineMap::get(1, 0, v4);
}

uint64_t mlir::Builder::getShiftedAffineMap(void **a1, uint64_t a2, uint64_t a3)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v16 = a2;
  v17 = v19;
  v18 = 0x400000000;
  NumResults = mlir::AffineMap::getNumResults(&v16);
  if (HIDWORD(v18) < NumResults)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  Results = mlir::AffineMap::getResults(&v16);
  if (v7)
  {
    v8 = Results;
    v9 = 8 * v7;
    do
    {
      v15 = *v8;
      v10 = mlir::AffineExpr::operator+(&v15, a3);
      if (v18 >= HIDWORD(v18))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v17 + v18) = v10;
      LODWORD(v18) = v18 + 1;
      ++v8;
      v9 -= 8;
    }

    while (v9);
  }

  NumDims = mlir::AffineMap::getNumDims(&v16);
  NumSymbols = mlir::AffineMap::getNumSymbols(&v16);
  result = mlir::AffineMap::get(NumDims, NumSymbols, v17, v18, *a1);
  if (v17 != v19)
  {
    v14 = result;
    free(v17);
    return v14;
  }

  return result;
}

mlir::Operation *mlir::OpBuilder::insert(mlir::OpBuilder *this, mlir::Operation *a2)
{
  v3 = *(this + 2);
  if (v3)
  {
    v4 = *(this + 3);
    llvm::ilist_traits<mlir::Operation>::addNodeToList(v3 + 32, a2);
    NodePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(a2);
    v7 = *v4;
    *NodePtr = *v4;
    NodePtr[1] = v4;
    *(v7 + 8) = NodePtr;
    *v4 = NodePtr;
    llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(a2);
    v8 = *(this + 1);
    if (v8)
    {
      (*(*v8 + 16))(v8, a2, 0, 0);
    }
  }

  return a2;
}

uint64_t mlir::OpBuilder::create(mlir::OpBuilder *this, const mlir::OperationState *a2)
{
  v3 = mlir::Operation::create(a2, a2);
  v4 = *(this + 2);
  if (v4)
  {
    v5 = *(this + 3);
    llvm::ilist_traits<mlir::Operation>::addNodeToList(v4 + 32, v3);
    NodePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v3);
    v7 = *v5;
    *NodePtr = *v5;
    NodePtr[1] = v5;
    *(v7 + 8) = NodePtr;
    *v5 = NodePtr;
    llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v3);
    v8 = *(this + 1);
    if (v8)
    {
      (*(*v8 + 16))(v8, v3, 0, 0);
    }
  }

  return v3;
}

uint64_t mlir::OpBuilder::create(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, void *a13, uint64_t a14)
{
  v32 = *MEMORY[0x277D85DE8];
  v30 = a3;
  Value = mlir::StringAttr::getValue(&v30);
  mlir::OperationState::OperationState(v31, a2, Value, v21, a4, a5, a6, a7, a9, a10, a11, a12, a13, a14);
  v23 = mlir::Operation::create(v31, v22);
  v24 = a1[2];
  if (v24)
  {
    v25 = a1[3];
    llvm::ilist_traits<mlir::Operation>::addNodeToList(v24 + 32, v23);
    NodePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v23);
    v27 = *v25;
    *NodePtr = *v25;
    NodePtr[1] = v25;
    *(v27 + 8) = NodePtr;
    *v25 = NodePtr;
    llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v23);
    v28 = a1[1];
    if (v28)
    {
      (*(*v28 + 16))(v28, v23, 0, 0);
    }
  }

  mlir::OperationState::~OperationState(v31);
  return v23;
}

uint64_t mlir::OpBuilder::tryFold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 36);
  v6 = a2 - 16;
  if (!v5)
  {
    v6 = 0;
  }

  v9 = v6;
  v10 = v5;
  if (*(a3 + 12) < v5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  {
    AncestorKey::AncestorKey();
  }

  if ((*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    v7 = 0;
    *(a3 + 8) = 0;
  }

  else
  {
    v11 = v13;
    v12 = 0x400000000;
    if (mlir::Operation::fold(a2))
    {
      v7 = 1;
    }

    else
    {
      v7 = 0;
      *(a3 + 8) = 0;
    }

    if (v11 != v13)
    {
      free(v11);
    }
  }

  return v7;
}

uint64_t mlir::OpBuilder::clone(uint64_t **this, mlir::Operation *a2, mlir::IRMapping *a3)
{
  v6 = mlir::Operation::CloneOptions::all(this);
  v7 = mlir::Operation::clone(a2, a3, v6);
  v8 = this[2];
  if (v8)
  {
    v9 = this[3];
    llvm::ilist_traits<mlir::Operation>::addNodeToList((v8 + 4), v7);
    NodePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v7);
    v11 = *v9;
    *NodePtr = *v9;
    NodePtr[1] = v9;
    *(v11 + 8) = NodePtr;
    *v9 = NodePtr;
    llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v7);
    v12 = this[1];
    if (v12)
    {
      (*(*v12 + 16))(v12, v7, 0, 0);
    }
  }

  v13 = this[1];
  if (v13)
  {
    v14 = *(v7 + 44);
    if ((v14 & 0x7FFFFF) != 0)
    {
      v15 = ((v7 + 64 + 16 * ((v14 >> 23) & 1) + ((v14 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v7 + 40);
      v16 = v15 + 24 * (v14 & 0x7FFFFF);
      i = *(v15 + 8);
      if (i != v15)
      {
        goto LABEL_9;
      }

      while (1)
      {
        v15 += 24;
        if (v15 == v16)
        {
          break;
        }

        for (i = *(v15 + 8); i != v15; i = *(i + 8))
        {
LABEL_9:
          if (i)
          {
            v18 = i - 8;
          }

          else
          {
            v18 = 0;
          }

          (*(*v13 + 24))(v13, v18, 0, 0);
        }
      }

      v19 = *(v7 + 44);
      v29 = this;
      if ((v19 & 0x7FFFFF) != 0)
      {
        v20 = ((v7 + 64 + 16 * ((v19 >> 23) & 1) + ((v19 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v7 + 40);
        v21 = v20 + 24 * (v19 & 0x7FFFFF);
        do
        {
          for (j = *(v20 + 8); j != v20; j = *(j + 8))
          {
            v23 = j - 8;
            if (!j)
            {
              v23 = 0;
            }

            v24 = *(v23 + 40);
            v25 = v23 + 32;
            if (v24 != v23 + 32)
            {
              do
              {
                v26 = *(v24 + 8);
                ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v24);
                mlir::detail::walk<mlir::ForwardIterator>(ValuePtr, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::OpBuilder::clone(mlir::Operation&,mlir::IRMapping &)::$_0>, &v29, 0);
                v24 = v26;
              }

              while (v26 != v25);
            }
          }

          v20 += 24;
        }

        while (v20 != v21);
      }
    }
  }

  return v7;
}

void mlir::OpBuilder::clone(uint64_t **this, mlir::Operation *a2)
{
  v2[0] = 0;
  v2[1] = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  mlir::OpBuilder::clone(this, a2, v2);
  llvm::deallocate_buffer(v7, (16 * v9));
}

void mlir::OpBuilder::cloneRegionBefore(uint64_t a1, mlir::Operation::CloneOptions *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  mlir::Region::cloneInto(a2, a3, a4, a5);
  if (!*(a1 + 8))
  {
    return;
  }

  v9 = *(a2 + 1);
  if (v9)
  {
    v10 = v9 - 8;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a5 + 40);
  if (v11)
  {
    v12 = *(a5 + 24);
    v13 = ((v10 >> 4) ^ (v10 >> 9)) & (v11 - 1);
    v14 = *(v12 + 16 * v13);
    if (v14 == v10)
    {
LABEL_7:
      if (v13 != v11)
      {
        v15 = *(v12 + 16 * v13 + 8) + 8;
        if (v15 == a4)
        {
          return;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v21 = 1;
      while (v14 != -4096)
      {
        v22 = v13 + v21++;
        v13 = v22 & (v11 - 1);
        v14 = *(v12 + 16 * v13);
        if (v14 == v10)
        {
          goto LABEL_7;
        }
      }
    }
  }

  v15 = 8;
  if (a4 == 8)
  {
    return;
  }

  do
  {
LABEL_13:
    if (v15)
    {
      v16 = v15 - 8;
    }

    else
    {
      v16 = 0;
    }

    (*(**(a1 + 8) + 24))(*(a1 + 8), v16, 0, 0);
    v23 = a1;
    v17 = *(v16 + 40);
    v18 = v16 + 32;
    if (v17 != v18)
    {
      do
      {
        v19 = *(v17 + 8);
        ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v17);
        mlir::detail::walk<mlir::ForwardIterator>(ValuePtr, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::OpBuilder::cloneRegionBefore(mlir::Region &,mlir::Region &,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Block,false,false,void,false,void>,false,false>,mlir::IRMapping &)::$_0>, &v23, 0);
        v17 = v19;
      }

      while (v19 != v18);
    }

    v15 = *(v15 + 8);
  }

  while (v15 != a4);
}

void mlir::OpBuilder::cloneRegionBefore(uint64_t a1, mlir::Operation::CloneOptions *a2, uint64_t a3, uint64_t a4)
{
  v4[0] = 0;
  v4[1] = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  mlir::OpBuilder::cloneRegionBefore(a1, a2, a3, a4, v4);
  llvm::deallocate_buffer(v9, (16 * v11));
}

void mlir::OpBuilder::cloneRegionBefore(mlir::OpBuilder *this, mlir::Region *a2, mlir::Block *a3)
{
  Parent = mlir::Block::getParent(a3);
  v7[0] = 0;
  v7[1] = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  mlir::OpBuilder::cloneRegionBefore(this, a2, Parent, a3 + 8, v7);
  llvm::deallocate_buffer(v12, (16 * v14));
}

uint64_t llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::OpBuilder::clone(mlir::Operation&,mlir::IRMapping &)::$_0>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = (*(**(*a1 + 8) + 16))(*(*a1 + 8), a2, 0, 0);
  v5 = *(a2 + 44);
  if ((v5 & 0x7FFFFF) != 0)
  {
    v6 = *(v3 + 8);
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
    v8 = v7 + 24 * (v5 & 0x7FFFFF);
    i = *(v7 + 8);
    if (i != v7)
    {
      goto LABEL_5;
    }

    while (1)
    {
      v7 += 24;
      if (v7 == v8)
      {
        break;
      }

      for (i = *(v7 + 8); i != v7; i = *(i + 8))
      {
LABEL_5:
        if (i)
        {
          v10 = i - 8;
        }

        else
        {
          v10 = 0;
        }

        result = (*(*v6 + 24))(v6, v10, 0, 0);
      }
    }
  }

  return result;
}

uint64_t llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::OpBuilder::cloneRegionBefore(mlir::Region &,mlir::Region &,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Block,false,false,void,false,void>,false,false>,mlir::IRMapping &)::$_0>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = (*(**(*a1 + 8) + 16))(*(*a1 + 8), a2, 0, 0);
  v5 = *(a2 + 44);
  if ((v5 & 0x7FFFFF) != 0)
  {
    v6 = *(v3 + 8);
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
    v8 = v7 + 24 * (v5 & 0x7FFFFF);
    i = *(v7 + 8);
    if (i != v7)
    {
      goto LABEL_5;
    }

    while (1)
    {
      v7 += 24;
      if (v7 == v8)
      {
        break;
      }

      for (i = *(v7 + 8); i != v7; i = *(i + 8))
      {
LABEL_5:
        if (i)
        {
          v10 = i - 8;
        }

        else
        {
          v10 = 0;
        }

        result = (*(*v6 + 24))(v6, v10, 0, 0);
      }
    }
  }

  return result;
}

uint64_t mlir::ElementsAttr::getElementType(uint64_t a1, uint64_t a2)
{
  v4[0] = (*(a2 + 16))(a2, a1);
  v4[1] = v2;
  return mlir::ShapedType::getElementType(v4);
}

uint64_t mlir::ElementsAttr::getNumElements(uint64_t a1, uint64_t a2)
{
  v6[0] = (*(a2 + 16))(a2, a1);
  v6[1] = v2;
  Shape = mlir::ShapedType::getShape(v6);
  return mlir::ShapedType::getNumElements(Shape, v4);
}

uint64_t mlir::ElementsAttr::isValidIndex(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v12[0] = a1;
  v12[1] = a2;
  mlir::ShapedType::getShape(v12);
  if (!v6 && a4 == 1 && !*a3)
  {
    return 1;
  }

  if (v6 == a4)
  {
    Shape = mlir::ShapedType::getShape(v12);
    if (a4 << 32)
    {
      v8 = 0;
      v9 = a4;
      while (1)
      {
        v10 = *(a3 + (v8 >> 29));
        if (v10 < 0 || v10 >= *(Shape + 8 * (v8 >> 32)))
        {
          break;
        }

        v8 += 0x100000000;
        if (!--v9)
        {
          return 1;
        }
      }

      return 0;
    }

    return 1;
  }

  return 0;
}

{
  v13[0] = (*(a2 + 16))(a2, a1);
  v13[1] = v6;
  mlir::ShapedType::getShape(v13);
  if (!v7 && a4 == 1 && !*a3)
  {
    return 1;
  }

  if (v7 == a4)
  {
    Shape = mlir::ShapedType::getShape(v13);
    if (a4 << 32)
    {
      v9 = 0;
      v10 = a4;
      while (1)
      {
        v11 = *(a3 + (v9 >> 29));
        if (v11 < 0 || v11 >= *(Shape + 8 * (v9 >> 32)))
        {
          break;
        }

        v9 += 0x100000000;
        if (!--v10)
        {
          return 1;
        }
      }

      return 0;
    }

    return 1;
  }

  return 0;
}

uint64_t mlir::ElementsAttr::getFlattenedIndex(void *a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_14;
  }

  v3 = *a1;
  {
    v21 = a1;
    mlir::scf::__mlir_ods_local_type_constraint_SCFOps5();
    a1 = v21;
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_4:
  v7 = v5;
  v8 = v6;
  do
  {
    v9 = v8 >> 1;
    v10 = &v7[2 * (v8 >> 1)];
    v12 = *v10;
    v11 = v10 + 2;
    v8 += ~(v8 >> 1);
    if (v12 < v4)
    {
      v7 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  while (v8);
  if (v7 == &v5[2 * v6] || *v7 != v4)
  {
    goto LABEL_14;
  }

  v13 = v7[1];
LABEL_15:
  v22[0] = a1;
  v22[1] = v13;
  mlir::ShapedType::getShape(v22);
  v15 = v14;
  Shape = mlir::ShapedType::getShape(v22);
  v17 = 0;
  if (v15 - 1 >= 0)
  {
    v18 = 8 * (v15 - 1);
    v19 = 1;
    do
    {
      v17 += *(a2 + v18) * v19;
      v19 *= *(Shape + v18);
      v18 -= 8;
    }

    while (v18 != -8);
  }

  return v17;
}

uint64_t mlir::detail::verifyAffineMapAsLayout(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x277D85DE8];
  v29 = a1;
  if (a3 == mlir::AffineMap::getNumDims(&v29))
  {
    return 1;
  }

  a4(v32, a5);
  if (v32[0])
  {
    LODWORD(v30) = 3;
    *(&v30 + 1) = "memref layout mismatch between rank and affine map: ";
    v31 = 52;
    if (v34 >= v35)
    {
      if (v33 > &v30 || v33 + 24 * v34 <= &v30)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v9 = v33 + 24 * v34;
    v10 = v30;
    *(v9 + 2) = v31;
    *v9 = v10;
    v11 = ++v34;
    if (v32[0])
    {
      LODWORD(v30) = 5;
      *(&v30 + 1) = a3;
      if (v11 >= v35)
      {
        if (v33 > &v30 || v33 + 24 * v11 <= &v30)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v12 = v33 + 24 * v34;
      v13 = v30;
      *(v12 + 2) = v31;
      *v12 = v13;
      v14 = ++v34;
      if (v32[0])
      {
        LODWORD(v30) = 3;
        *(&v30 + 1) = " != ";
        v31 = 4;
        if (v14 >= v35)
        {
          if (v33 > &v30 || v33 + 24 * v14 <= &v30)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v15 = v33 + 24 * v34;
        v16 = v30;
        *(v15 + 2) = v31;
        *v15 = v16;
        ++v34;
      }
    }
  }

  NumDims = mlir::AffineMap::getNumDims(&v29);
  if (v32[0])
  {
    LODWORD(v30) = 5;
    *(&v30 + 1) = NumDims;
    if (v34 >= v35)
    {
      if (v33 > &v30 || v33 + 24 * v34 <= &v30)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v18 = v33 + 24 * v34;
    v19 = v30;
    *(v18 + 2) = v31;
    *v18 = v19;
    ++v34;
  }

  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v32);
  if (v32[0])
  {
    mlir::InFlightDiagnostic::report(v32);
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v40;
      v22 = __p;
      if (v40 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v40 = v20;
      operator delete(v22);
    }

    v23 = v37;
    if (v37)
    {
      v24 = v38;
      v25 = v37;
      if (v38 != v37)
      {
        do
        {
          v27 = *--v24;
          v26 = v27;
          *v24 = 0;
          if (v27)
          {
            MEMORY[0x259C63150](v26, 0x1000C8077774924);
          }
        }

        while (v24 != v23);
        v25 = v37;
      }

      v38 = v23;
      operator delete(v25);
    }

    if (v33 != &v36)
    {
      free(v33);
    }
  }

  return v8;
}

uint64_t mlir::AffineMapAttr::get(unint64_t a1)
{
  v8 = a1;
  Context = mlir::AffineMap::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir6detail20AffineMapAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_13AffineMapAttrEJRNS1_9AffineMapEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v13[1] = v9;
  v12 = v8;
  v3 = 0x9DDFEA08EB382D69 * ((8 * v8 - 0xAE502812AA7333) ^ HIDWORD(v8));
  v4 = (0x9DDFEA08EB382D69 * (HIDWORD(v8) ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(v8) ^ (v3 >> 47) ^ v3)) >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::AffineMapAttrStorage * mlir::StorageUniquer::get<mlir::detail::AffineMapAttrStorage,mlir::AffineMap &>(llvm::function_ref<void ()(mlir::detail::AffineMapAttrStorage *)>,mlir::TypeID,mlir::AffineMap &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::AffineMapAttrStorage * mlir::StorageUniquer::get<mlir::detail::AffineMapAttrStorage,mlir::AffineMap &>(llvm::function_ref<void ()(mlir::detail::AffineMapAttrStorage *)>,mlir::TypeID,mlir::AffineMap &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t mlir::ArrayAttr::get(mlir::MLIRContext *a1, _DWORD *a2, uint64_t a3)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id;
  v11[1] = a1;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir6detail16ArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9ArrayAttrEJNS_8ArrayRefINS1_9AttributeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_;
  v15[1] = v11;
  v14[0] = a2;
  v14[1] = a3;
  v7 = llvm::hashing::detail::hash_combine_range_impl<mlir::StringAttr const*>(a2, &a2[2 * a3]);
  v8 = HIDWORD(v7) ^ 0xFF51AFD7ED558CCDLL;
  v9 = 0x9DDFEA08EB382D69 * ((8 * v7 + 8) ^ v8);
  v12[0] = v14;
  v12[1] = v15;
  v13 = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::ArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::ArrayAttrStorage,llvm::ArrayRef<mlir::Attribute>>(llvm::function_ref<void ()(mlir::detail::ArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::ArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::ArrayAttrStorage,llvm::ArrayRef<mlir::Attribute>>(llvm::function_ref<void ()(mlir::detail::ArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
}

uint64_t mlir::DenseArrayAttr::get(mlir::MLIRContext *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v17[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  v17[1] = a1;
  v21[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJNS1_4TypeExNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_;
  v21[1] = v17;
  v20[0] = a2;
  v20[1] = a3;
  v20[2] = a4;
  v20[3] = a5;
  v11 = (a2 >> 4) ^ (a2 >> 9);
  v12 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(a4, a4 + a5);
  v13 = __ROR8__(a3 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - 0x4B6D499041670D8DLL * v11 - 0x9AE16A3B2F90404FLL * v12 + 24;
  v14 = (__ROR8__(0xB492B66FBE98F273 * v11 - a3, 43) - 0x3C5A37A36834CED9 * a3 + __ROR8__((0x9AE16A3B2F90404FLL * v12) ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v13;
  v15 = 0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * v14) >> 47) ^ (0x9DDFEA08EB382D69 * v14));
  v18[0] = v20;
  v18[1] = v21;
  v19 = v20;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, -348639895 * ((v15 >> 47) ^ v15), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type,long long,llvm::ArrayRef<char>>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type,long long,llvm::ArrayRef<char> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v19, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type,long long,llvm::ArrayRef<char>>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type,long long,llvm::ArrayRef<char> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v18);
}

uint64_t mlir::detail::StorageUserBase<mlir::DenseArrayAttr,mlir::Attribute,mlir::detail::DenseArrayAttrStorage,mlir::detail::AttributeUniquer>::getChecked<mlir::Type,long long,llvm::ArrayRef<char>>(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, mlir::MLIRContext *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  if ((mlir::DenseArrayAttr::verify(a1, a2, a4, a5, a6, a7) & 1) == 0)
  {
    return 0;
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a3);
  v19[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  v19[1] = a3;
  v23[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeERxRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v23[1] = v19;
  v22[0] = a4;
  v22[1] = a5;
  v22[2] = a6;
  v22[3] = a7;
  v13 = (a4 >> 4) ^ (a4 >> 9);
  v14 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(a6, a6 + a7);
  v15 = __ROR8__(a5 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - 0x4B6D499041670D8DLL * v13 - 0x9AE16A3B2F90404FLL * v14 + 24;
  v16 = (__ROR8__(0xB492B66FBE98F273 * v13 - a5, 43) - 0x3C5A37A36834CED9 * a5 + __ROR8__((0x9AE16A3B2F90404FLL * v14) ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v15;
  v17 = 0x9DDFEA08EB382D69 * (v15 ^ ((0x9DDFEA08EB382D69 * v16) >> 47) ^ (0x9DDFEA08EB382D69 * v16));
  v20[0] = v22;
  v20[1] = v23;
  v21 = v22;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, -348639895 * ((v17 >> 47) ^ v17), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,long long &,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,long long &,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v21, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,long long &,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,long long &,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v20);
}

uint64_t mlir::DenseArrayAttr::get(uint64_t a1, unsigned int a2, void *a3, uint64_t a4)
{
  v15 = a1;
  Context = mlir::Type::getContext(&v15);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v16[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  v16[1] = Context;
  v20[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeERjRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v20[1] = v16;
  v19[0] = v15;
  v19[1] = a2;
  v19[2] = a3;
  v19[3] = a4;
  v9 = (v15 >> 4) ^ (v15 >> 9);
  v10 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(a3, a3 + a4);
  v11 = __ROR8__(a2 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - 0x4B6D499041670D8DLL * v9 - 0x9AE16A3B2F90404FLL * v10 + 24;
  v12 = (__ROR8__(0xB492B66FBE98F273 * v9 - a2, 43) - 0x3C5A37A36834CED9 * a2 + __ROR8__((0x9AE16A3B2F90404FLL * v10) ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v11;
  v13 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * v12) >> 47) ^ (0x9DDFEA08EB382D69 * v12));
  v17[0] = v19;
  v17[1] = v20;
  v18 = v19;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, -348639895 * ((v13 >> 47) ^ v13), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v18, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v17);
}

uint64_t mlir::DenseArrayAttr::getChecked(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, unsigned int a4, void *a5, uint64_t a6)
{
  v13 = a3;
  Context = mlir::Type::getContext(&v13);
  return mlir::detail::StorageUserBase<mlir::DenseArrayAttr,mlir::Attribute,mlir::detail::DenseArrayAttrStorage,mlir::detail::AttributeUniquer>::getChecked<mlir::Type,unsigned int,llvm::ArrayRef<char>>(a1, a2, Context, v13, a4, a5, a6);
}

uint64_t mlir::detail::StorageUserBase<mlir::DenseArrayAttr,mlir::Attribute,mlir::detail::DenseArrayAttrStorage,mlir::detail::AttributeUniquer>::getChecked<mlir::Type,unsigned int,llvm::ArrayRef<char>>(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, mlir::MLIRContext *a3, uint64_t a4, unsigned int a5, void *a6, uint64_t a7)
{
  v11 = a5;
  if ((mlir::DenseArrayAttr::verify(a1, a2, a4, a5, a6, a7) & 1) == 0)
  {
    return 0;
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a3);
  v19[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  v19[1] = a3;
  v23[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeERjRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v23[1] = v19;
  v22[0] = a4;
  v22[1] = v11;
  v22[2] = a6;
  v22[3] = a7;
  v13 = (a4 >> 4) ^ (a4 >> 9);
  v14 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(a6, a6 + a7);
  v15 = __ROR8__(v11 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - 0x4B6D499041670D8DLL * v13 - 0x9AE16A3B2F90404FLL * v14 + 24;
  v16 = (__ROR8__(0xB492B66FBE98F273 * v13 - v11, 43) - 0x3C5A37A36834CED9 * v11 + __ROR8__((0x9AE16A3B2F90404FLL * v14) ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v15;
  v17 = 0x9DDFEA08EB382D69 * (v15 ^ ((0x9DDFEA08EB382D69 * v16) >> 47) ^ (0x9DDFEA08EB382D69 * v16));
  v20[0] = v22;
  v20[1] = v23;
  v21 = v22;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, -348639895 * ((v17 >> 47) ^ v17), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v21, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v20);
}

uint64_t mlir::DenseArrayAttr::verify(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v65 = *MEMORY[0x277D85DE8];
  v51 = a3;
  if (mlir::Type::isIntOrIndexOrFloat(&v51))
  {
    IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v51);
    v11 = (IntOrFloatBitWidth - (IntOrFloatBitWidth != 0)) >> 3;
    if (IntOrFloatBitWidth)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = v11;
    }

    if (v12 * a4 == a6)
    {
      return 1;
    }

    a1(v54, a2);
    if (v54[0])
    {
      LODWORD(v52) = 3;
      *(&v52 + 1) = "expected data size (";
      v53 = 20;
      if (v56 >= v57)
      {
        if (v55 > &v52 || v55 + 24 * v56 <= &v52)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v24 = v55 + 24 * v56;
      v25 = v52;
      *(v24 + 2) = v53;
      *v24 = v25;
      v26 = ++v56;
      if (v54[0])
      {
        LODWORD(v52) = 2;
        *(&v52 + 1) = a4;
        if (v26 >= v57)
        {
          if (v55 > &v52 || v55 + 24 * v26 <= &v52)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v27 = v55 + 24 * v56;
        v28 = v52;
        *(v27 + 2) = v53;
        *v27 = v28;
        v29 = ++v56;
        if (v54[0])
        {
          LODWORD(v52) = 3;
          *(&v52 + 1) = " elements, ";
          v53 = 11;
          if (v29 >= v57)
          {
            if (v55 > &v52 || v55 + 24 * v29 <= &v52)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v30 = v55 + 24 * v56;
          v31 = v52;
          *(v30 + 2) = v53;
          *v30 = v31;
          v32 = ++v56;
          if (v54[0])
          {
            LODWORD(v52) = 2;
            *(&v52 + 1) = v12;
            if (v32 >= v57)
            {
              if (v55 > &v52 || v55 + 24 * v32 <= &v52)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v33 = v55 + 24 * v56;
            v34 = v52;
            *(v33 + 2) = v53;
            *v33 = v34;
            v35 = ++v56;
            if (v54[0])
            {
              LODWORD(v52) = 3;
              *(&v52 + 1) = " bytes each) does not match: ";
              v53 = 29;
              if (v35 >= v57)
              {
                if (v55 > &v52 || v55 + 24 * v35 <= &v52)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v36 = v55 + 24 * v56;
              v37 = v52;
              *(v36 + 2) = v53;
              *v36 = v37;
              v38 = ++v56;
              if (v54[0])
              {
                LODWORD(v52) = 2;
                *(&v52 + 1) = a6;
                if (v38 >= v57)
                {
                  if (v55 > &v52 || v55 + 24 * v38 <= &v52)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v39 = v55 + 24 * v56;
                v40 = v52;
                *(v39 + 2) = v53;
                *v39 = v40;
                v41 = ++v56;
                if (v54[0])
                {
                  LODWORD(v52) = 3;
                  *(&v52 + 1) = " bytes";
                  v53 = 6;
                  if (v41 >= v57)
                  {
                    if (v55 > &v52 || v55 + 24 * v41 <= &v52)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v42 = v55 + 24 * v56;
                  v43 = v52;
                  *(v42 + 2) = v53;
                  *v42 = v43;
                  ++v56;
                }
              }
            }
          }
        }
      }
    }

    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v54);
    if (v54[0])
    {
      mlir::InFlightDiagnostic::report(v54);
    }

    if (v64 == 1)
    {
      if (v63 != &v64)
      {
        free(v63);
      }

      v44 = __p;
      if (__p)
      {
        v45 = v62;
        v46 = __p;
        if (v62 != __p)
        {
          do
          {
            v45 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v45 - 1);
          }

          while (v45 != v44);
          v46 = __p;
        }

        v62 = v44;
        operator delete(v46);
      }

      v19 = v59;
      if (!v59)
      {
        goto LABEL_59;
      }

      v47 = v60;
      v21 = v59;
      if (v60 == v59)
      {
LABEL_58:
        v60 = v19;
        operator delete(v21);
LABEL_59:
        if (v55 != &v58)
        {
          free(v55);
        }

        return v13;
      }

      do
      {
        v49 = *--v47;
        v48 = v49;
        *v47 = 0;
        if (v49)
        {
          MEMORY[0x259C63150](v48, 0x1000C8077774924);
        }
      }

      while (v47 != v19);
LABEL_57:
      v21 = v59;
      goto LABEL_58;
    }
  }

  else
  {
    a1(v54, a2);
    if (v54[0])
    {
      LODWORD(v52) = 3;
      *(&v52 + 1) = "expected integer or floating point element type";
      v53 = 47;
      if (v56 >= v57)
      {
        if (v55 > &v52 || v55 + 24 * v56 <= &v52)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v14 = v55 + 24 * v56;
      v15 = v52;
      *(v14 + 2) = v53;
      *v14 = v15;
      ++v56;
    }

    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v54);
    if (v54[0])
    {
      mlir::InFlightDiagnostic::report(v54);
    }

    if (v64 == 1)
    {
      if (v63 != &v64)
      {
        free(v63);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v62;
        v18 = __p;
        if (v62 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v62 = v16;
        operator delete(v18);
      }

      v19 = v59;
      if (!v59)
      {
        goto LABEL_59;
      }

      v20 = v60;
      v21 = v59;
      if (v60 == v59)
      {
        goto LABEL_58;
      }

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
      goto LABEL_57;
    }
  }

  return v13;
}

uint64_t mlir::DenseStringElementsAttr::get(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v12 = a2;
  Context = mlir::Type::getContext(&v11);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
  v13[1] = Context;
  v18[0] = _ZN4llvm12function_refIFvPN4mlir6detail30DenseStringElementsAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_23DenseStringElementsAttrEJRNS1_10ShapedTypeERNS_8ArrayRefINS_9StringRefEEEbEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v18[1] = v13;
  mlir::detail::DenseStringElementsAttrStorage::getKey(v11, v12, a3, a4, a4 == 1, v16);
  v8 = __ROR8__(v17 + 16, 16);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ 0xFF51AFD7ED558CCDLL ^ (v16[0] >> 4) ^ (v16[0] >> 9));
  v14[0] = v16;
  v14[1] = v18;
  v15 = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9)))) ^ v17, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseStringElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseStringElementsAttrStorage,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL>(llvm::function_ref<void ()(mlir::detail::DenseStringElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseStringElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseStringElementsAttrStorage,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL>(llvm::function_ref<void ()(mlir::detail::DenseStringElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v14);
}

__n128 mlir::DenseResourceElementsAttr::getRawHandle@<Q0>(mlir::DenseResourceElementsAttr *this@<X0>, __n128 *a2@<X8>)
{
  v2 = *this;
  result = *(*this + 24);
  *a2 = result;
  a2[1].n128_u64[0] = *(v2 + 40);
  return result;
}

uint64_t mlir::FloatAttr::get(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  Context = mlir::Type::getContext(&v6);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v7[0] = &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
  v7[1] = Context;
  return mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat const&>(AttributeUniquer, _ZN4llvm12function_refIFvPN4mlir6detail16FloatAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9FloatAttrEJRNS1_4TypeERKNS_7APFloatEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_, v7, &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id, &v6, a2);
}

uint64_t mlir::FloatAttr::getChecked(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = *MEMORY[0x277D85DE8];
  v14 = a3;
  Context = mlir::Type::getContext(&v14);
  v8 = v14;
  v10 = *(a4 + 8);
  v9 = (a4 + 8);
  v11 = llvm::APFloatBase::PPCDoubleDouble(Context);
  if (v11 == v10)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v16, v9);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v16, v9);
  }

  v12 = mlir::detail::StorageUserBase<mlir::FloatAttr,mlir::Attribute,mlir::detail::FloatAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getChecked<mlir::Type,llvm::APFloat>(a1, a2, Context, v8, v15);
  if (v11 == v16[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v16);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v16);
  }

  return v12;
}

uint64_t mlir::detail::StorageUserBase<mlir::FloatAttr,mlir::Attribute,mlir::detail::FloatAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getChecked<mlir::Type,llvm::APFloat>(llvm::APFloatBase *a1, uint64_t a2, mlir::MLIRContext *a3, uint64_t a4, uint64_t a5)
{
  v19[3] = *MEMORY[0x277D85DE8];
  v16 = a4;
  v10 = (a5 + 8);
  v11 = *(a5 + 8);
  v12 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v12 == v11)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v17, v10);
    if (v12 != v17[0])
    {
      goto LABEL_3;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v17, v10);
    if (v12 != v17[0])
    {
LABEL_3:
      llvm::detail::IEEEFloat::IEEEFloat(v19, v17);
      goto LABEL_6;
    }
  }

  llvm::detail::DoubleAPFloat::DoubleAPFloat(v19, v17);
LABEL_6:
  v13 = mlir::FloatAttr::verify(a1, a2, a4, &v18);
  if (v12 != v19[0])
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v19);
    if (v12 != v17[0])
    {
      goto LABEL_8;
    }

LABEL_11:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v17);
    if (v13)
    {
      goto LABEL_9;
    }

    return 0;
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v19);
  if (v12 == v17[0])
  {
    goto LABEL_11;
  }

LABEL_8:
  llvm::detail::IEEEFloat::~IEEEFloat(v17);
  if (v13)
  {
LABEL_9:
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a3);
    v18 = &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
    v19[0] = a3;
    return mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat &>(AttributeUniquer, _ZN4llvm12function_refIFvPN4mlir6detail16FloatAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9FloatAttrEJRNS1_4TypeERNS_7APFloatEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_, &v18, &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id, &v16, a5);
  }

  return 0;
}

llvm::APFloatBase *mlir::FloatAttr::get(uint64_t a1, double a2)
{
  v38[3] = *MEMORY[0x277D85DE8];
  v34 = a1;
  if (!mlir::Type::isF64(&v34))
  {
    v10 = *(*v34 + 136);
    v11 = v10 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id;
    v12 = v11 || v10 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id;
    v13 = v12 || v10 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id;
    v14 = v13 || v10 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id;
    v15 = v14 || v10 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
    v16 = v15 || v10 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id;
    v17 = v16 || v10 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id;
    v18 = v17 || v10 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id;
    v19 = v18 || v10 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id;
    v20 = v19 || v10 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id;
    v21 = v20 || v10 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id;
    v22 = v21 || v10 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id;
    v23 = v22 || v10 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id;
    v24 = v23 || v10 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id;
    v25 = v24 || v10 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id;
    if (v25 || v10 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
    {
      v33 = 0;
      v27 = llvm::detail::IEEEFloat::IEEEFloat(&v35, a2);
      v28 = llvm::APFloatBase::IEEEdouble(v27);
      llvm::APFloat::Storage::Storage(v38, &v35, v28);
      llvm::detail::IEEEFloat::~IEEEFloat(&v35);
      v35 = v34;
      FloatSemantics = mlir::FloatType::getFloatSemantics(&v35);
      llvm::APFloat::convert(v37, FloatSemantics, 1, &v33);
      Context = mlir::Type::getContext(&v34);
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
      v35 = &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
      v36 = Context;
      v7 = mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat &>(AttributeUniquer, _ZN4llvm12function_refIFvPN4mlir6detail16FloatAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9FloatAttrEJRNS1_4TypeERNS_7APFloatEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_, &v35, &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id, &v34, v37);
      v32 = v38[0];
      if (llvm::APFloatBase::PPCDoubleDouble(v7) != v32)
      {
        goto LABEL_3;
      }

LABEL_56:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v38);
      return v7;
    }
  }

  v3 = mlir::Type::getContext(&v34);
  v4 = llvm::detail::IEEEFloat::IEEEFloat(&v35, a2);
  v5 = llvm::APFloatBase::IEEEdouble(v4);
  llvm::APFloat::Storage::Storage(v38, &v35, v5);
  llvm::detail::IEEEFloat::~IEEEFloat(&v35);
  v6 = mlir::MLIRContext::getAttributeUniquer(v3);
  v35 = &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
  v36 = v3;
  v7 = mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat>(v6, _ZN4llvm12function_refIFvPN4mlir6detail16FloatAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9FloatAttrEJRNS1_4TypeENS_7APFloatEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_, &v35, &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id, &v34, v37);
  v8 = v38[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v7) == v8)
  {
    goto LABEL_56;
  }

LABEL_3:
  llvm::detail::IEEEFloat::~IEEEFloat(v38);
  return v7;
}

llvm::APFloatBase *mlir::FloatAttr::getChecked(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, double a4)
{
  v47[3] = *MEMORY[0x277D85DE8];
  v40 = a3;
  if (!mlir::Type::isF64(&v40))
  {
    v13 = *(*v40 + 136);
    v14 = v13 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v13 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id;
    v15 = v14 || v13 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id;
    v16 = v15 || v13 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id;
    v17 = v16 || v13 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id;
    v18 = v17 || v13 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
    v19 = v18 || v13 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id;
    v20 = v19 || v13 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id;
    v21 = v20 || v13 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id;
    v22 = v21 || v13 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id;
    v23 = v22 || v13 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id;
    v24 = v23 || v13 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id;
    v25 = v24 || v13 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id;
    v26 = v25 || v13 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id;
    v27 = v26 || v13 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id;
    v28 = v27 || v13 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id;
    if (v28 || v13 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
    {
      v39 = 0;
      v30 = llvm::detail::IEEEFloat::IEEEFloat(v41, a4);
      v31 = llvm::APFloatBase::IEEEdouble(v30);
      llvm::APFloat::Storage::Storage(v45, v41, v31);
      llvm::detail::IEEEFloat::~IEEEFloat(v41);
      v41[0] = v40;
      FloatSemantics = mlir::FloatType::getFloatSemantics(v41);
      llvm::APFloat::convert(v44, FloatSemantics, 1, &v39);
      Context = mlir::Type::getContext(&v40);
      v34 = v40;
      v35 = v45[0];
      v36 = llvm::APFloatBase::PPCDoubleDouble(Context);
      if (v36 == v35)
      {
        llvm::detail::DoubleAPFloat::DoubleAPFloat(v43, v45);
      }

      else
      {
        llvm::detail::IEEEFloat::IEEEFloat(v43, v45);
      }

      v11 = mlir::detail::StorageUserBase<mlir::FloatAttr,mlir::Attribute,mlir::detail::FloatAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getChecked<mlir::Type,llvm::APFloat>(a1, a2, Context, v34, v42);
      if (v36 == v43[0])
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v43);
        v37 = v45;
        if (v36 == v45[0])
        {
          goto LABEL_62;
        }
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v43);
        v37 = v45;
        if (v36 == v45[0])
        {
          goto LABEL_62;
        }
      }

      llvm::detail::IEEEFloat::~IEEEFloat(v45);
      return v11;
    }
  }

  v7 = mlir::Type::getContext(&v40);
  v8 = v40;
  v9 = llvm::detail::IEEEFloat::IEEEFloat(v44, a4);
  v10 = llvm::APFloatBase::IEEEdouble(v9);
  llvm::APFloat::Storage::Storage(v47, v44, v10);
  llvm::detail::IEEEFloat::~IEEEFloat(v44);
  v11 = mlir::detail::StorageUserBase<mlir::FloatAttr,mlir::Attribute,mlir::detail::FloatAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getChecked<mlir::Type,llvm::APFloat>(a1, a2, v7, v8, v46);
  v12 = v47[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v11) == v12)
  {
    v37 = v47;
LABEL_62:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v37);
    return v11;
  }

  llvm::detail::IEEEFloat::~IEEEFloat(v47);
  return v11;
}

uint64_t mlir::FloatAttr::verifyInvariants(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = *MEMORY[0x277D85DE8];
  v7 = (a4 + 8);
  v8 = *(a4 + 8);
  v9 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v9 == v8)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v13, v7);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v13, v7);
  }

  v10 = mlir::FloatAttr::verify(a1, a2, a3, v12);
  if (v9 == v13[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v13);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v13);
  }

  return v10 & 1;
}

uint64_t mlir::FloatAttr::verify(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = *MEMORY[0x277D85DE8];
  v6 = *(*a3 + 136);
  if (v6 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    v45[0] = a3;
    if (mlir::FloatType::getFloatSemantics(v45) == *(a4 + 8))
    {
      return 1;
    }

    a1(v45, a2);
    if (v45[0])
    {
      LODWORD(v43) = 3;
      *(&v43 + 1) = "FloatAttr type doesn't match the type implied by its value";
      v44 = 58;
      if (v47 >= v48)
      {
        if (v46 > &v43 || v46 + 24 * v47 <= &v43)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v23 = v46 + 24 * v47;
      v24 = v43;
      *(v23 + 2) = v44;
      *v23 = v24;
      ++v47;
    }

    v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v45);
    if (v45[0])
    {
      mlir::InFlightDiagnostic::report(v45);
    }

    if (v55 == 1)
    {
      if (v54 != &v55)
      {
        free(v54);
      }

      v26 = __p;
      if (__p)
      {
        v27 = v53;
        v28 = __p;
        if (v53 != __p)
        {
          do
          {
            v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
          }

          while (v27 != v26);
          v28 = __p;
        }

        v53 = v26;
        operator delete(v28);
      }

      v29 = v50;
      if (!v50)
      {
        goto LABEL_93;
      }

      v30 = v51;
      v31 = v50;
      if (v51 == v50)
      {
        goto LABEL_92;
      }

      do
      {
        v33 = *--v30;
        v32 = v33;
        *v30 = 0;
        if (v33)
        {
          MEMORY[0x259C63150](v32, 0x1000C8077774924);
        }
      }

      while (v30 != v29);
      goto LABEL_91;
    }
  }

  else
  {
    a1(v45, a2);
    if (v45[0])
    {
      LODWORD(v43) = 3;
      *(&v43 + 1) = "expected floating point type";
      v44 = 28;
      if (v47 >= v48)
      {
        if (v46 > &v43 || v46 + 24 * v47 <= &v43)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v34 = v46 + 24 * v47;
      v35 = v43;
      *(v34 + 2) = v44;
      *v34 = v35;
      ++v47;
    }

    v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v45);
    if (v45[0])
    {
      mlir::InFlightDiagnostic::report(v45);
    }

    if (v55 == 1)
    {
      if (v54 != &v55)
      {
        free(v54);
      }

      v36 = __p;
      if (__p)
      {
        v37 = v53;
        v38 = __p;
        if (v53 != __p)
        {
          do
          {
            v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
          }

          while (v37 != v36);
          v38 = __p;
        }

        v53 = v36;
        operator delete(v38);
      }

      v29 = v50;
      if (!v50)
      {
        goto LABEL_93;
      }

      v39 = v51;
      v31 = v50;
      if (v51 == v50)
      {
LABEL_92:
        v51 = v29;
        operator delete(v31);
LABEL_93:
        if (v46 != &v49)
        {
          free(v46);
        }

        return v25;
      }

      do
      {
        v41 = *--v39;
        v40 = v41;
        *v39 = 0;
        if (v41)
        {
          MEMORY[0x259C63150](v40, 0x1000C8077774924);
        }
      }

      while (v39 != v29);
LABEL_91:
      v31 = v50;
      goto LABEL_92;
    }
  }

  return v25;
}

void *mlir::FloatAttr::getValue@<X0>(mlir::FloatAttr *this@<X0>, uint64_t a2@<X8>)
{
  v3 = (*this + 24);
  v4 = *v3;
  if (llvm::APFloatBase::PPCDoubleDouble(this) == v4)
  {

    return llvm::detail::DoubleAPFloat::DoubleAPFloat((a2 + 8), v3);
  }

  else
  {

    return llvm::detail::IEEEFloat::IEEEFloat((a2 + 8), v3);
  }
}

uint64_t mlir::IntegerAttr::get(uint64_t a1, llvm::APInt *a2)
{
  v13 = a1;
  isSignlessInteger = mlir::Type::isSignlessInteger(&v13, 1);
  Context = mlir::Type::getContext(&v13);
  if (isSignlessInteger)
  {
    v5 = *(a2 + 2);
    if (v5 > 0x40)
    {
      v10 = Context;
      v11 = llvm::APInt::countLeadingZerosSlowCase(a2);
      Context = v10;
      v6 = v11 == v5;
    }

    else
    {
      v6 = *a2 == 0;
    }

    v12 = v6;
    return mlir::BoolAttr::get(Context, (v12 ^ 1u));
  }

  else
  {
    v7 = Context;
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    v14[0] = &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
    v14[1] = v7;
    return mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt const&>(AttributeUniquer, _ZN4llvm12function_refIFvPN4mlir6detail18IntegerAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_11IntegerAttrEJRNS1_4TypeERKNS_5APIntEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_, v14, &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id, &v13, a2);
  }
}

uint64_t mlir::IntegerAttr::getChecked(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, llvm::APInt *a4)
{
  *v16 = a3;
  isSignlessInteger = mlir::Type::isSignlessInteger(v16, 1);
  Context = mlir::Type::getContext(v16);
  if (isSignlessInteger)
  {
    v9 = *(a4 + 2);
    if (v9 > 0x40)
    {
      v10 = llvm::APInt::countLeadingZerosSlowCase(a4) == v9;
    }

    else
    {
      v10 = *a4 == 0;
    }

    v11 = v10;
    return mlir::BoolAttr::get(Context, (v11 ^ 1u));
  }

  else
  {
    v15 = *(a4 + 2);
    if (v15 > 0x40)
    {
      llvm::APInt::initSlowCase(&v14, a4);
    }

    v14 = *a4;
    result = mlir::detail::StorageUserBase<mlir::IntegerAttr,mlir::Attribute,mlir::detail::IntegerAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getChecked<mlir::Type,llvm::APInt>(a1, a2, Context, *v16, &v14);
    if (v15 >= 0x41 && v14)
    {
      v13 = result;
      MEMORY[0x259C63150](v14, 0x1000C8000313F17);
      return v13;
    }
  }

  return result;
}

uint64_t mlir::detail::StorageUserBase<mlir::IntegerAttr,mlir::Attribute,mlir::detail::IntegerAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getChecked<mlir::Type,llvm::APInt>(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, mlir::MLIRContext *a3, uint64_t a4, llvm::APInt *a5)
{
  v13 = a4;
  v7 = *(a5 + 2);
  v12 = v7;
  if (v7 > 0x40)
  {
    llvm::APInt::initSlowCase(&v11, a5);
  }

  v11 = *a5;
  LODWORD(v15) = v7;
  v14 = v11;
  v8 = mlir::IntegerAttr::verify(a1, a2, a4, &v14);
  if (v15 >= 0x41 && v14)
  {
    MEMORY[0x259C63150](v14, 0x1000C8000313F17);
  }

  if (v12 >= 0x41 && v11)
  {
    MEMORY[0x259C63150](v11, 0x1000C8000313F17);
  }

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a3);
  v14 = &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
  v15 = a3;
  return mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt &>(AttributeUniquer, _ZN4llvm12function_refIFvPN4mlir6detail18IntegerAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_11IntegerAttrEJRNS1_4TypeERNS_5APIntEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_, &v14, &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id, &v13, a5);
}

uint64_t mlir::IntegerAttr::get(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 12))
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v7 = mlir::IntegerType::get(a1, *(a2 + 8), v3);
  Context = mlir::Type::getContext(&v7);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
  v8[1] = Context;
  return mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::IntegerType &,llvm::APSInt const&>(AttributeUniquer, _ZN4llvm12function_refIFvPN4mlir6detail18IntegerAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_11IntegerAttrEJRNS1_11IntegerTypeERKNS_6APSIntEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_, v8, &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id, &v7, a2);
}

uint64_t mlir::IntegerAttr::getChecked(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (*(a4 + 12))
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  *v15 = mlir::IntegerType::get(a3, *(a4 + 2), v8);
  Context = mlir::Type::getContext(v15);
  v13 = *(a4 + 2);
  if (v13 > 0x40)
  {
    llvm::APInt::initSlowCase(&v12, a4);
  }

  v12 = *a4;
  v14 = *(a4 + 12);
  result = mlir::detail::StorageUserBase<mlir::IntegerAttr,mlir::Attribute,mlir::detail::IntegerAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getChecked<mlir::IntegerType,llvm::APSInt>(a1, a2, Context, *v15, &v12);
  if (v13 >= 0x41)
  {
    if (v12)
    {
      v11 = result;
      MEMORY[0x259C63150](v12, 0x1000C8000313F17);
      return v11;
    }
  }

  return result;
}

uint64_t mlir::detail::StorageUserBase<mlir::IntegerAttr,mlir::Attribute,mlir::detail::IntegerAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getChecked<mlir::IntegerType,llvm::APSInt>(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, mlir::MLIRContext *a3, uint64_t a4, llvm::APInt *a5)
{
  v13 = a4;
  v7 = *(a5 + 2);
  v12 = v7;
  if (v7 > 0x40)
  {
    llvm::APInt::initSlowCase(&v11, a5);
  }

  v11 = *a5;
  LODWORD(v15) = v7;
  v14 = v11;
  v8 = mlir::IntegerAttr::verify(a1, a2, a4, &v14);
  if (v15 >= 0x41 && v14)
  {
    MEMORY[0x259C63150](v14, 0x1000C8000313F17);
  }

  if (v12 >= 0x41 && v11)
  {
    MEMORY[0x259C63150](v11, 0x1000C8000313F17);
  }

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a3);
  v14 = &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
  v15 = a3;
  return mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::IntegerType &,llvm::APSInt &>(AttributeUniquer, _ZN4llvm12function_refIFvPN4mlir6detail18IntegerAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_11IntegerAttrEJRNS1_11IntegerTypeERNS_6APSIntEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_, &v14, &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id, &v13, a5);
}

uint64_t mlir::IntegerAttr::get(uint64_t a1, unint64_t a2)
{
  v12 = a1;
  if (mlir::Type::isIndex(&v12))
  {
    v11 = 64;
    v10 = a2;
  }

  else
  {
    v9 = v12;
    Width = mlir::IntegerType::getWidth(&v9);
    mlir::Type::isSignedInteger(&v9);
    v11 = Width;
    if (Width > 0x40)
    {
      llvm::APInt::initSlowCase(&v10);
    }

    v4 = 0xFFFFFFFFFFFFFFFFLL >> -Width;
    if (!Width)
    {
      v4 = 0;
    }

    v10 = v4 & a2;
  }

  Context = mlir::Type::getContext(&v12);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
  v13[1] = Context;
  result = mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt &>(AttributeUniquer, _ZN4llvm12function_refIFvPN4mlir6detail18IntegerAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_11IntegerAttrEJRNS1_4TypeERNS_5APIntEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_, v13, &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id, &v12, &v10);
  if (v11 >= 0x41)
  {
    if (v10)
    {
      v8 = result;
      MEMORY[0x259C63150](v10, 0x1000C8000313F17);
      return v8;
    }
  }

  return result;
}

uint64_t mlir::IntegerAttr::getChecked(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v22 = a3;
  if (mlir::Type::isIndex(&v22))
  {
    Context = mlir::Type::getContext(&v22);
    v21 = 64;
    v20 = a4;
    result = mlir::detail::StorageUserBase<mlir::IntegerAttr,mlir::Attribute,mlir::detail::IntegerAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getChecked<mlir::Type,llvm::APInt>(a1, a2, Context, v22, &v20);
    if (v21 < 0x41)
    {
      return result;
    }

    v9 = v20;
    if (!v20)
    {
      return result;
    }

LABEL_18:
    v14 = result;
    MEMORY[0x259C63150](v9, 0x1000C8000313F17);
    return v14;
  }

  v19 = v22;
  Width = mlir::IntegerType::getWidth(&v19);
  mlir::Type::isSignedInteger(&v19);
  v18 = Width;
  if (Width > 0x40)
  {
    llvm::APInt::initSlowCase(&v17);
  }

  v11 = 0xFFFFFFFFFFFFFFFFLL >> -Width;
  if (!Width)
  {
    v11 = 0;
  }

  v17 = v11 & a4;
  v12 = mlir::Type::getContext(&v22);
  v16 = v18;
  if (v18 > 0x40)
  {
    llvm::APInt::initSlowCase(&v15, &v17);
  }

  v15 = v17;
  result = mlir::detail::StorageUserBase<mlir::IntegerAttr,mlir::Attribute,mlir::detail::IntegerAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getChecked<mlir::Type,llvm::APInt>(a1, a2, v12, v22, &v15);
  if (v16 >= 0x41 && v15)
  {
    v13 = result;
    MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    result = v13;
  }

  if (v18 >= 0x41)
  {
    v9 = v17;
    if (v17)
    {
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t mlir::IntegerAttr::verifyInvariants(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, llvm::APInt *a4)
{
  v8 = *(a4 + 2);
  if (v8 > 0x40)
  {
    llvm::APInt::initSlowCase(&v7, a4);
  }

  v7 = *a4;
  v4 = mlir::IntegerAttr::verify(a1, a2, a3, &v7);
  if (v8 < 0x41 || !v7)
  {
    return v4 & 1;
  }

  v6 = v4;
  MEMORY[0x259C63150](v7, 0x1000C8000313F17);
  return v6 & 1;
}

uint64_t mlir::IntegerAttr::verify(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v77 = *MEMORY[0x277D85DE8];
  v7 = *(*a3 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v8 = a3;
  }

  else
  {
    v8 = 0;
  }

  v63 = v8;
  if (v8)
  {
    if (mlir::IntegerType::getWidth(&v63) == *(a4 + 8))
    {
      return 1;
    }

    a1(v66, a2);
    if (v66[0])
    {
      LODWORD(v64) = 3;
      *(&v64 + 1) = "integer type bit width (";
      v65 = 24;
      if (v68 >= v69)
      {
        if (v67 > &v64 || v67 + 24 * v68 <= &v64)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v20 = v67 + 24 * v68;
      v21 = v64;
      *(v20 + 2) = v65;
      *v20 = v21;
      ++v68;
    }

    Width = mlir::IntegerType::getWidth(&v63);
    if (v66[0])
    {
      LODWORD(v64) = 5;
      *(&v64 + 1) = Width;
      if (v68 >= v69)
      {
        if (v67 > &v64 || v67 + 24 * v68 <= &v64)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v23 = v67 + 24 * v68;
      v24 = v64;
      *(v23 + 2) = v65;
      *v23 = v24;
      v25 = ++v68;
      if (v66[0])
      {
        LODWORD(v64) = 3;
        *(&v64 + 1) = ") doesn't match value bit width (";
        v65 = 33;
        if (v25 >= v69)
        {
          if (v67 > &v64 || v67 + 24 * v25 <= &v64)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v26 = v67 + 24 * v68;
        v27 = v64;
        *(v26 + 2) = v65;
        *v26 = v27;
        v28 = ++v68;
        if (v66[0])
        {
          v29 = *(a4 + 8);
          LODWORD(v64) = 5;
          *(&v64 + 1) = v29;
          if (v28 >= v69)
          {
            if (v67 > &v64 || v67 + 24 * v28 <= &v64)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v30 = v67 + 24 * v68;
          v31 = v64;
          *(v30 + 2) = v65;
          *v30 = v31;
          v32 = ++v68;
          if (v66[0])
          {
            LODWORD(v64) = 3;
            *(&v64 + 1) = ")";
            v65 = 1;
            if (v32 >= v69)
            {
              if (v67 > &v64 || v67 + 24 * v32 <= &v64)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v33 = v67 + 24 * v68;
            v34 = v64;
            *(v33 + 2) = v65;
            *v33 = v34;
            ++v68;
          }
        }
      }
    }

    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v66);
    if (v66[0])
    {
      mlir::InFlightDiagnostic::report(v66);
    }

    if (v76)
    {
      if (v75 != &v76)
      {
        free(v75);
      }

      v35 = __p;
      if (__p)
      {
        v36 = v74;
        v37 = __p;
        if (v74 != __p)
        {
          do
          {
            v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
          }

          while (v36 != v35);
          v37 = __p;
        }

        v74 = v35;
        operator delete(v37);
      }

      v15 = v71;
      if (!v71)
      {
        goto LABEL_85;
      }

      v38 = v72;
      v17 = v71;
      if (v72 == v71)
      {
LABEL_84:
        v72 = v15;
        operator delete(v17);
LABEL_85:
        if (v67 != &v70)
        {
          free(v67);
        }

        return v9;
      }

      do
      {
        v40 = *--v38;
        v39 = v40;
        *v38 = 0;
        if (v40)
        {
          MEMORY[0x259C63150](v39, 0x1000C8077774924);
        }
      }

      while (v38 != v15);
LABEL_83:
      v17 = v71;
      goto LABEL_84;
    }
  }

  else if (v7 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    if (*(a4 + 8) == 64)
    {
      return 1;
    }

    a1(v66, a2);
    if (v66[0])
    {
      LODWORD(v64) = 3;
      *(&v64 + 1) = "value bit width (";
      v65 = 17;
      if (v68 >= v69)
      {
        if (v67 > &v64 || v67 + 24 * v68 <= &v64)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v41 = v67 + 24 * v68;
      v42 = v64;
      *(v41 + 2) = v65;
      *v41 = v42;
      v43 = ++v68;
      if (v66[0])
      {
        v44 = *(a4 + 8);
        LODWORD(v64) = 5;
        *(&v64 + 1) = v44;
        if (v43 >= v69)
        {
          if (v67 > &v64 || v67 + 24 * v43 <= &v64)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v45 = v67 + 24 * v68;
        v46 = v64;
        *(v45 + 2) = v65;
        *v45 = v46;
        v47 = ++v68;
        if (v66[0])
        {
          LODWORD(v64) = 3;
          *(&v64 + 1) = ") doesn't match index type internal storage bit width (";
          v65 = 55;
          if (v47 >= v69)
          {
            if (v67 > &v64 || v67 + 24 * v47 <= &v64)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v48 = v67 + 24 * v68;
          v49 = v64;
          *(v48 + 2) = v65;
          *v48 = v49;
          v50 = ++v68;
          if (v66[0])
          {
            LODWORD(v64) = 5;
            *(&v64 + 1) = 64;
            if (v50 >= v69)
            {
              if (v67 > &v64 || v67 + 24 * v50 <= &v64)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v51 = v67 + 24 * v68;
            v52 = v64;
            *(v51 + 2) = v65;
            *v51 = v52;
            v53 = ++v68;
            if (v66[0])
            {
              LODWORD(v64) = 3;
              *(&v64 + 1) = ")";
              v65 = 1;
              if (v53 >= v69)
              {
                if (v67 > &v64 || v67 + 24 * v53 <= &v64)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v54 = v67 + 24 * v68;
              v55 = v64;
              *(v54 + 2) = v65;
              *v54 = v55;
              ++v68;
            }
          }
        }
      }
    }

    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v66);
    if (v66[0])
    {
      mlir::InFlightDiagnostic::report(v66);
    }

    if (v76 == 1)
    {
      if (v75 != &v76)
      {
        free(v75);
      }

      v56 = __p;
      if (__p)
      {
        v57 = v74;
        v58 = __p;
        if (v74 != __p)
        {
          do
          {
            v57 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v57 - 1);
          }

          while (v57 != v56);
          v58 = __p;
        }

        v74 = v56;
        operator delete(v58);
      }

      v15 = v71;
      if (!v71)
      {
        goto LABEL_85;
      }

      v59 = v72;
      v17 = v71;
      if (v72 == v71)
      {
        goto LABEL_84;
      }

      do
      {
        v61 = *--v59;
        v60 = v61;
        *v59 = 0;
        if (v61)
        {
          MEMORY[0x259C63150](v60, 0x1000C8077774924);
        }
      }

      while (v59 != v15);
      goto LABEL_83;
    }
  }

  else
  {
    a1(v66, a2);
    if (v66[0])
    {
      LODWORD(v64) = 3;
      *(&v64 + 1) = "expected integer or index type";
      v65 = 30;
      if (v68 >= v69)
      {
        if (v67 > &v64 || v67 + 24 * v68 <= &v64)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v10 = v67 + 24 * v68;
      v11 = v64;
      *(v10 + 2) = v65;
      *v10 = v11;
      ++v68;
    }

    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v66);
    if (v66[0])
    {
      mlir::InFlightDiagnostic::report(v66);
    }

    if (v76 == 1)
    {
      if (v75 != &v76)
      {
        free(v75);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v74;
        v14 = __p;
        if (v74 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v74 = v12;
        operator delete(v14);
      }

      v15 = v71;
      if (!v71)
      {
        goto LABEL_85;
      }

      v16 = v72;
      v17 = v71;
      if (v72 == v71)
      {
        goto LABEL_84;
      }

      do
      {
        v19 = *--v16;
        v18 = v19;
        *v16 = 0;
        if (v19)
        {
          MEMORY[0x259C63150](v18, 0x1000C8077774924);
        }
      }

      while (v16 != v15);
      goto LABEL_83;
    }
  }

  return v9;
}

uint64_t *mlir::IntegerAttr::getValue@<X0>(uint64_t *this@<X0>, llvm::APInt *a2@<X8>)
{
  v2 = *this;
  v3 = *(*this + 24);
  *(a2 + 2) = v3;
  if (v3 > 0x40)
  {
    llvm::APInt::initSlowCase(a2, (v2 + 16));
  }

  *a2 = *(v2 + 16);
  return this;
}

uint64_t mlir::IntegerSetAttr::get(unint64_t a1)
{
  v8 = a1;
  Context = mlir::IntegerSet::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir6detail21IntegerSetAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14IntegerSetAttrEJRNS1_10IntegerSetEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v13[1] = v9;
  v12 = v8;
  v3 = 0x9DDFEA08EB382D69 * ((8 * v8 - 0xAE502812AA7333) ^ HIDWORD(v8));
  v4 = (0x9DDFEA08EB382D69 * (HIDWORD(v8) ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(v8) ^ (v3 >> 47) ^ v3)) >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerSetAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerSetAttrStorage,mlir::IntegerSet &>(llvm::function_ref<void ()(mlir::detail::IntegerSetAttrStorage *)>,mlir::TypeID,mlir::IntegerSet &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerSetAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerSetAttrStorage,mlir::IntegerSet &>(llvm::function_ref<void ()(mlir::detail::IntegerSetAttrStorage *)>,mlir::TypeID,mlir::IntegerSet &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t mlir::OpaqueAttr::get(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v17 = a1;
  Context = mlir::Attribute::getContext(&v17);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v18[0] = &mlir::detail::TypeIDResolver<mlir::OpaqueAttr,void>::id;
  v18[1] = Context;
  v22[0] = _ZN4llvm12function_refIFvPN4mlir6detail17OpaqueAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_10OpaqueAttrEJRNS1_10StringAttrERNS_9StringRefERNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v22[1] = v18;
  v21[0] = v17;
  v21[1] = a2;
  v21[2] = a3;
  v21[3] = a4;
  v9 = (v17 >> 4) ^ (v17 >> 9);
  v10 = llvm::hash_value(a2, a3);
  v11 = 0x9AE16A3B2F90404FLL * ((a4 >> 4) ^ (a4 >> 9));
  v12 = __ROR8__(v11 ^ 0xFF51AFD7ED558CCDLL, 30) - 0x3C5A37A36834CED9 * v10;
  v13 = 0xB492B66FBE98F273 * v9 - v11 + __ROR8__(v10 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 + 24;
  v14 = (v12 + __ROR8__(0xB492B66FBE98F273 * v9 - v10, 43)) ^ v13;
  v15 = 0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * v14) >> 47) ^ (0x9DDFEA08EB382D69 * v14));
  v19[0] = v21;
  v19[1] = v22;
  v20 = v21;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::OpaqueAttr,void>::id, -348639895 * ((v15 >> 47) ^ v15), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::OpaqueAttrStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueAttrStorage,mlir::StringAttr &,llvm::StringRef &,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::OpaqueAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::StringRef &,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v20, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::OpaqueAttrStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueAttrStorage,mlir::StringAttr &,llvm::StringRef &,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::OpaqueAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::StringRef &,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v19);
}

void mlir::OpaqueAttr::getChecked(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  Context = mlir::Attribute::getContext(&v6);
  mlir::detail::StorageUserBase<mlir::OpaqueAttr,mlir::Attribute,mlir::detail::OpaqueAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getChecked<mlir::StringAttr,llvm::StringRef,mlir::Type>(a1, a2, Context, v6);
}

void mlir::OpaqueAttr::verify(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = a3;
  mlir::Dialect::isValidNamespace();
}

uint64_t mlir::SparseElementsAttr::get(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v15 = a1;
  *(&v15 + 1) = a2;
  Context = mlir::Type::getContext(&v15);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v16[0] = &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id;
  v16[1] = Context;
  v22[0] = _ZN4llvm12function_refIFvPN4mlir6detail25SparseElementsAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_18SparseElementsAttrEJRNS1_10ShapedTypeENS1_20DenseIntElementsAttrERNS1_17DenseElementsAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_;
  v22[1] = v16;
  v19 = v15;
  v20 = a3;
  v21 = a4;
  v8 = (a3 >> 4) ^ (a3 >> 9);
  v9 = 0x9AE16A3B2F90404FLL * ((a4 >> 4) ^ (a4 >> 9));
  v10 = __ROR8__(0xB492B66FBE98F273 * ((v15 >> 4) ^ (v15 >> 9)) - v8, 43);
  v11 = __ROR8__(v9 ^ 0xFF51AFD7ED558CCDLL, 30) - 0x3C5A37A36834CED9 * v8;
  v12 = __ROR8__(v8 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - v9 - 0x4B6D499041670D8DLL * ((v15 >> 4) ^ (v15 >> 9)) + 24;
  v13 = 0x9DDFEA08EB382D69 * (v12 ^ ((0x9DDFEA08EB382D69 * ((v11 + v10) ^ v12)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v11 + v10) ^ v12)));
  v17[0] = &v19;
  v17[1] = v22;
  v18 = &v19;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id, -348639895 * ((v13 >> 47) ^ v13), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::SparseElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::SparseElementsAttrStorage,mlir::ShapedType &,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr &>(llvm::function_ref<void ()(mlir::detail::SparseElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v18, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::SparseElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::SparseElementsAttrStorage,mlir::ShapedType &,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr &>(llvm::function_ref<void ()(mlir::detail::SparseElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v17);
}

uint64_t mlir::SparseElementsAttr::getChecked(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a3;
  v13 = a4;
  Context = mlir::Type::getContext(&v12);
  return mlir::detail::StorageUserBase<mlir::SparseElementsAttr,mlir::Attribute,mlir::detail::SparseElementsAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>::getChecked<mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr>(a1, a2, Context, v12, v13, a5, a6);
}

uint64_t mlir::detail::StorageUserBase<mlir::SparseElementsAttr,mlir::Attribute,mlir::detail::SparseElementsAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>::getChecked<mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr>(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, mlir::MLIRContext *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((mlir::SparseElementsAttr::verify(a1, a2, a4, a5, a6, a7) & 1) == 0)
  {
    return 0;
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a3);
  v20[0] = &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id;
  v20[1] = a3;
  v24[0] = _ZN4llvm12function_refIFvPN4mlir6detail25SparseElementsAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_18SparseElementsAttrEJRNS1_10ShapedTypeERNS1_20DenseIntElementsAttrERNS1_17DenseElementsAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v24[1] = v20;
  v23[0] = a4;
  v23[1] = a5;
  v23[2] = a6;
  v23[3] = a7;
  v13 = (a6 >> 4) ^ (a6 >> 9);
  v14 = 0x9AE16A3B2F90404FLL * ((a7 >> 4) ^ (a7 >> 9));
  v15 = __ROR8__(0xB492B66FBE98F273 * ((a4 >> 4) ^ (a4 >> 9)) - v13, 43);
  v16 = __ROR8__(v14 ^ 0xFF51AFD7ED558CCDLL, 30) - 0x3C5A37A36834CED9 * v13;
  v17 = __ROR8__(v13 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - v14 - 0x4B6D499041670D8DLL * ((a4 >> 4) ^ (a4 >> 9)) + 24;
  v18 = 0x9DDFEA08EB382D69 * (v17 ^ ((0x9DDFEA08EB382D69 * ((v16 + v15) ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v16 + v15) ^ v17)));
  v21[0] = v23;
  v21[1] = v24;
  v22 = v23;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id, -348639895 * ((v18 >> 47) ^ v18), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::SparseElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::SparseElementsAttrStorage,mlir::ShapedType &,mlir::DenseIntElementsAttr &,mlir::DenseElementsAttr &>(llvm::function_ref<void ()(mlir::detail::SparseElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DenseIntElementsAttr &,mlir::DenseElementsAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v22, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::SparseElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::SparseElementsAttrStorage,mlir::ShapedType &,mlir::DenseIntElementsAttr &,mlir::DenseElementsAttr &>(llvm::function_ref<void ()(mlir::detail::SparseElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DenseIntElementsAttr &,mlir::DenseElementsAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v21);
}

uint64_t mlir::SparseElementsAttr::verify(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v90 = *MEMORY[0x277D85DE8];
  v74[0] = a1;
  v74[1] = a2;
  v72 = a3;
  v73 = a4;
  v71 = a5;
  v70 = *(a6 + 8);
  mlir::ShapedType::getShape(&v70);
  if (v9 != 1)
  {
    a1(&v77, a2);
    if (v77)
    {
      LODWORD(v75) = 3;
      *(&v75 + 1) = "expected 1-d tensor for sparse element values";
      v76[0] = 45;
      if (v81 >= v82)
      {
        if (v80 > &v75 || v80 + 24 * v81 <= &v75)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v80 + 24 * v81;
      v23 = v75;
      *(v22 + 2) = v76[0];
      *v22 = v23;
      ++v81;
    }

    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v77);
    if (v77)
    {
      mlir::InFlightDiagnostic::report(&v77);
    }

    if (v89 != 1)
    {
      return v13;
    }

    if (v88 != &v89)
    {
      free(v88);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v87;
      v26 = __p;
      if (v87 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v87 = v24;
      operator delete(v26);
    }

    v17 = v84;
    if (!v84)
    {
      goto LABEL_82;
    }

    v27 = v85;
    v19 = v84;
    if (v85 == v84)
    {
      goto LABEL_81;
    }

    do
    {
      v29 = *--v27;
      v28 = v29;
      *v27 = 0;
      if (v29)
      {
        MEMORY[0x259C63150](v28, 0x1000C8077774924);
      }
    }

    while (v27 != v17);
    goto LABEL_80;
  }

  v69 = *(a5 + 8);
  v68[0] = v74;
  v68[1] = &v72;
  v68[2] = &v69;
  v68[3] = &v70;
  mlir::ShapedType::getShape(&v72);
  v11 = v10;
  mlir::ShapedType::getShape(&v69);
  if (v12 != 2)
  {
    if (v12 != 1 || v11 != 1)
    {
      mlir::SparseElementsAttr::verify(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>,mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr)::$_0::operator()(&v77, v68);
      v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v77);
      if (v77)
      {
        mlir::InFlightDiagnostic::report(&v77);
      }

      if (v89 != 1)
      {
        return v13;
      }

      if (v88 != &v89)
      {
        free(v88);
      }

      v36 = __p;
      if (__p)
      {
        v37 = v87;
        v38 = __p;
        if (v87 != __p)
        {
          do
          {
            v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
          }

          while (v37 != v36);
          v38 = __p;
        }

        v87 = v36;
        operator delete(v38);
      }

      v17 = v84;
      if (!v84)
      {
        goto LABEL_82;
      }

      v39 = v85;
      v19 = v84;
      if (v85 == v84)
      {
        goto LABEL_81;
      }

      do
      {
        v41 = *--v39;
        v40 = v41;
        *v39 = 0;
        if (v41)
        {
          MEMORY[0x259C63150](v40, 0x1000C8077774924);
        }
      }

      while (v39 != v17);
      goto LABEL_80;
    }

LABEL_41:
    v30 = *mlir::ShapedType::getShape(&v69);
    if (v30 != *mlir::ShapedType::getShape(&v70))
    {
      mlir::SparseElementsAttr::verify(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>,mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr)::$_0::operator()(&v77, v68);
      v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v77);
      if (v77)
      {
        mlir::InFlightDiagnostic::report(&v77);
      }

      if (v89 != 1)
      {
        return v13;
      }

      if (v88 != &v89)
      {
        free(v88);
      }

      v42 = __p;
      if (__p)
      {
        v43 = v87;
        v44 = __p;
        if (v87 != __p)
        {
          do
          {
            v43 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v43 - 1);
          }

          while (v43 != v42);
          v44 = __p;
        }

        v87 = v42;
        operator delete(v44);
      }

      v17 = v84;
      if (!v84)
      {
        goto LABEL_82;
      }

      v45 = v85;
      v19 = v84;
      if (v85 == v84)
      {
        goto LABEL_81;
      }

      do
      {
        v47 = *--v45;
        v46 = v47;
        *v45 = 0;
        if (v47)
        {
          MEMORY[0x259C63150](v46, 0x1000C8077774924);
        }
      }

      while (v45 != v17);
      goto LABEL_80;
    }

    v67[0] = v74;
    v67[1] = &v72;
    mlir::DenseElementsAttr::tryGetValues<unsigned long long,void>(&v71, &v77);
    v31 = v77;
    v32 = v78[0];
    v33 = v79;
    if ((*(v71 + 24) & 1) == 0)
    {
      if (!v30)
      {
        return 1;
      }

      v50 = 0;
      while (1)
      {
        v51 = (v32 & 1) != 0 ? 0 : v33;
        v52 = (v31 + 8 * v51);
        if ((mlir::ElementsAttr::isValidIndex(v72, v73, v52, v11) & 1) == 0)
        {
          break;
        }

        ++v50;
        v33 += v11;
        if (v30 == v50)
        {
          return 1;
        }
      }

      mlir::SparseElementsAttr::verify(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>,mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr)::$_1::operator()(&v77, v67, v50, v52, v11);
      v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v77);
      if (v77)
      {
        mlir::InFlightDiagnostic::report(&v77);
      }

      if (v89)
      {
        if (v88 != &v89)
        {
          free(v88);
        }

        v57 = __p;
        if (__p)
        {
          v58 = v87;
          v59 = __p;
          if (v87 != __p)
          {
            do
            {
              v58 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v58 - 1);
            }

            while (v58 != v57);
            v59 = __p;
          }

          v87 = v57;
          operator delete(v59);
        }

        v60 = v84;
        if (v84)
        {
          v61 = v85;
          v62 = v84;
          if (v85 != v84)
          {
            do
            {
              v64 = *--v61;
              v63 = v64;
              *v61 = 0;
              if (v64)
              {
                MEMORY[0x259C63150](v63, 0x1000C8077774924);
              }
            }

            while (v61 != v60);
            v62 = v84;
          }

          v85 = v60;
          operator delete(v62);
        }

        v48 = v80;
        if (v80 != v83)
        {
          goto LABEL_83;
        }
      }

      return v13;
    }

    if (v78[0])
    {
      v34 = 0;
    }

    else
    {
      v34 = v79;
    }

    *&v75 = v76;
    HIDWORD(v75) = 6;
    v35 = *(v77 + 8 * v34);
    if (v11 >= 7)
    {
      DWORD2(v75) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (!v11)
    {
LABEL_126:
      DWORD2(v75) = v11;
      if (mlir::ElementsAttr::isValidIndex(v72, v73, v76, v11))
      {
        v13 = 1;
      }

      else
      {
        mlir::SparseElementsAttr::verify(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>,mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr)::$_1::operator()(&v77, v67, 0, v75, DWORD2(v75));
        v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v77);
        if (v77)
        {
          mlir::InFlightDiagnostic::report(&v77);
        }

        if (v89 == 1)
        {
          mlir::Diagnostic::~Diagnostic(v78);
        }
      }

      v48 = v75;
      if (v75 != v76)
      {
        goto LABEL_83;
      }

      return v13;
    }

    v53 = vdupq_n_s64(v11 - 1);
    v54 = v11 + 1;
    v55 = vmovn_s64(vcgeq_u64(v53, xmmword_2573686A0));
    if (v55.i8[0])
    {
      v76[0] = v35;
      v56 = v54 & 0xE;
      if ((v55.i8[4] & 1) == 0)
      {
        goto LABEL_96;
      }
    }

    else
    {
      v56 = v54 & 0xE;
      if ((v55.i8[4] & 1) == 0)
      {
LABEL_96:
        if (v56 == 2)
        {
          goto LABEL_126;
        }

LABEL_116:
        v65 = vmovn_s64(vcgtq_u64(v53, xmmword_2573686B0));
        if (v65.i8[0])
        {
          v76[2] = v35;
          if ((v65.i8[4] & 1) == 0)
          {
            goto LABEL_118;
          }
        }

        else if ((v65.i8[4] & 1) == 0)
        {
LABEL_118:
          if (v56 == 4)
          {
            goto LABEL_126;
          }

          goto LABEL_122;
        }

        v76[3] = v35;
        if (v56 == 4)
        {
          goto LABEL_126;
        }

LABEL_122:
        v66 = vmovn_s64(vcgtq_u64(v53, xmmword_2573686C0));
        if (v66.i8[0])
        {
          v76[4] = v35;
        }

        if (v66.i8[4])
        {
          v76[5] = v35;
        }

        goto LABEL_126;
      }
    }

    v76[1] = v35;
    if (v56 == 2)
    {
      goto LABEL_126;
    }

    goto LABEL_116;
  }

  if (*(mlir::ShapedType::getShape(&v69) + 8) == v11)
  {
    goto LABEL_41;
  }

  mlir::SparseElementsAttr::verify(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>,mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr)::$_0::operator()(&v77, v68);
  v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v77);
  if (v77)
  {
    mlir::InFlightDiagnostic::report(&v77);
  }

  if (v89 != 1)
  {
    return v13;
  }

  if (v88 != &v89)
  {
    free(v88);
  }

  v14 = __p;
  if (__p)
  {
    v15 = v87;
    v16 = __p;
    if (v87 != __p)
    {
      do
      {
        v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
      }

      while (v15 != v14);
      v16 = __p;
    }

    v87 = v14;
    operator delete(v16);
  }

  v17 = v84;
  if (!v84)
  {
    goto LABEL_82;
  }

  v18 = v85;
  v19 = v84;
  if (v85 != v84)
  {
    do
    {
      v21 = *--v18;
      v20 = v21;
      *v18 = 0;
      if (v21)
      {
        MEMORY[0x259C63150](v20, 0x1000C8077774924);
      }
    }

    while (v18 != v17);
LABEL_80:
    v19 = v84;
  }

LABEL_81:
  v85 = v17;
  operator delete(v19);
LABEL_82:
  v48 = v80;
  if (v80 != v83)
  {
LABEL_83:
    free(v48);
  }

  return v13;
}

uint64_t mlir::StridedLayoutAttr::get(mlir::MLIRContext *a1, uint64_t a2, void *a3, uint64_t a4)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::StridedLayoutAttr,void>::id;
  v13[1] = a1;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir6detail24StridedLayoutAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_17StridedLayoutAttrEJxNS_8ArrayRefIxEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v17[1] = v13;
  v16[0] = a2;
  v16[1] = a3;
  v16[2] = a4;
  v9 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(a3, &a3[a4]);
  v10 = __ROR8__(v9 + 16, 16);
  v11 = 0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v10 ^ a2 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ a2 ^ 0xFF51AFD7ED558CCDLL)));
  v14[0] = v16;
  v14[1] = v17;
  v15 = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::StridedLayoutAttr,void>::id, (-348639895 * ((v11 >> 47) ^ v11)) ^ v9, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::StridedLayoutAttrStorage * mlir::StorageUniquer::get<mlir::detail::StridedLayoutAttrStorage,long long,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::detail::StridedLayoutAttrStorage *)>,mlir::TypeID,long long,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::StridedLayoutAttrStorage * mlir::StorageUniquer::get<mlir::detail::StridedLayoutAttrStorage,long long,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::detail::StridedLayoutAttrStorage *)>,mlir::TypeID,long long,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v14);
}

uint64_t mlir::detail::StorageUserBase<mlir::StridedLayoutAttr,mlir::Attribute,mlir::detail::StridedLayoutAttrStorage,mlir::detail::AttributeUniquer,mlir::MemRefLayoutAttrInterface::Trait>::getChecked<long long,llvm::ArrayRef<long long>>(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, mlir::MLIRContext *a3, uint64_t a4, void *a5, uint64_t a6)
{
  if ((mlir::StridedLayoutAttr::verify(a1, a2, a3, a5, a6) & 1) == 0)
  {
    return 0;
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a3);
  v15[0] = &mlir::detail::TypeIDResolver<mlir::StridedLayoutAttr,void>::id;
  v15[1] = a3;
  v19[0] = _ZN4llvm12function_refIFvPN4mlir6detail24StridedLayoutAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_17StridedLayoutAttrEJRxRNS_8ArrayRefIxEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_;
  v19[1] = v15;
  v18[0] = a4;
  v18[1] = a5;
  v18[2] = a6;
  v11 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(a5, &a5[a6]);
  v12 = __ROR8__(v11 + 16, 16);
  v13 = 0x9DDFEA08EB382D69 * (v12 ^ ((0x9DDFEA08EB382D69 * (v12 ^ a4 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v12 ^ a4 ^ 0xFF51AFD7ED558CCDLL)));
  v16[0] = v18;
  v16[1] = v19;
  v17 = v18;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::StridedLayoutAttr,void>::id, (-348639895 * ((v13 >> 47) ^ v13)) ^ v11, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::StridedLayoutAttrStorage * mlir::StorageUniquer::get<mlir::detail::StridedLayoutAttrStorage,long long &,llvm::ArrayRef<long long> &>(llvm::function_ref<void ()(mlir::detail::StridedLayoutAttrStorage *)>,mlir::TypeID,long long &,llvm::ArrayRef<long long> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v17, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::StridedLayoutAttrStorage * mlir::StorageUniquer::get<mlir::detail::StridedLayoutAttrStorage,long long &,llvm::ArrayRef<long long> &>(llvm::function_ref<void ()(mlir::detail::StridedLayoutAttrStorage *)>,mlir::TypeID,long long &,llvm::ArrayRef<long long> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v16);
}

uint64_t mlir::StridedLayoutAttr::verify(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v5 = 8 * a5;
    for (i = a4; *i; ++i)
    {
      v5 -= 8;
      if (!v5)
      {
        return 1;
      }
    }
  }

  else
  {
    i = a4;
  }

  if (i == &a4[a5])
  {
    return 1;
  }

  a1(v21, a2);
  if (v21[0])
  {
    LODWORD(v19) = 3;
    *(&v19 + 1) = "strides must not be zero";
    v20 = 24;
    if (v23 >= v24)
    {
      if (v22 > &v19 || v22 + 24 * v23 <= &v19)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v7 = v22 + 24 * v23;
    v8 = v19;
    *(v7 + 2) = v20;
    *v7 = v8;
    ++v23;
  }

  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
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

    v10 = __p;
    if (__p)
    {
      v11 = v29;
      v12 = __p;
      if (v29 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v29 = v10;
      operator delete(v12);
    }

    v13 = v26;
    if (v26)
    {
      v14 = v27;
      v15 = v26;
      if (v27 != v26)
      {
        do
        {
          v17 = *--v14;
          v16 = v17;
          *v14 = 0;
          if (v17)
          {
            MEMORY[0x259C63150](v16, 0x1000C8077774924);
          }
        }

        while (v14 != v13);
        v15 = v26;
      }

      v27 = v13;
      operator delete(v15);
    }

    if (v22 != &v25)
    {
      free(v22);
    }
  }

  return v9;
}

uint64_t mlir::SymbolRefAttr::get(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v12 = a1;
  Context = mlir::Attribute::getContext(&v12);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id;
  v13[1] = Context;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir6detail20SymbolRefAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_13SymbolRefAttrEJRNS1_10StringAttrERNS_8ArrayRefINS1_17FlatSymbolRefAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v17[1] = v13;
  v16[0] = v12;
  v16[1] = a2;
  v16[2] = a3;
  v7 = (v12 >> 4) ^ (v12 >> 9);
  v8 = llvm::hashing::detail::hash_combine_range_impl<mlir::StringAttr const*>(a2, &a2[2 * a3]);
  v9 = __ROR8__(v8 + 16, 16);
  v10 = 0x9DDFEA08EB382D69 * (v9 ^ ((0x9DDFEA08EB382D69 * (v9 ^ 0xFF51AFD7ED558CCDLL ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v9 ^ 0xFF51AFD7ED558CCDLL ^ v7)));
  v14[0] = v16;
  v14[1] = v17;
  v15 = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id, (-348639895 * ((v10 >> 47) ^ v10)) ^ v8, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v14);
}

uint64_t mlir::TypeAttr::get(uint64_t a1)
{
  v5 = a1;
  Context = mlir::Type::getContext(&v5);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v6[0] = &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id;
  v6[1] = Context;
  v10[0] = _ZN4llvm12function_refIFvPN4mlir6detail15TypeAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_8TypeAttrEJRNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v10[1] = v6;
  v9 = v5;
  v3 = 0x9DDFEA08EB382D69 * ((8 * ((v5 >> 4) ^ (v5 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v7[0] = &v9;
  v7[1] = v10;
  v8 = &v9;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v3 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::TypeAttrStorage * mlir::StorageUniquer::get<mlir::detail::TypeAttrStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::TypeAttrStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v8, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::TypeAttrStorage * mlir::StorageUniquer::get<mlir::detail::TypeAttrStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::TypeAttrStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v7);
}

uint64_t dictionaryAttrSort<false>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2)
  {
    v6 = mlir::NamedAttribute::operator<(a1, a1 + 2);
    if (v6)
    {
      v16 = *a1;
      v17 = *(a1 + 1);
      *(a3 + 8) = 0;
      if (*(a3 + 12) > 1u)
      {
LABEL_9:
        v9 = *a3;
        *v9 = v16;
        v9[1] = v17;
        *(a3 + 8) += 2;
        return v6 ^ 1u;
      }
    }

    else
    {
      v16 = *(a1 + 1);
      v17 = *a1;
      *(a3 + 8) = 0;
      if (*(a3 + 12) > 1u)
      {
        goto LABEL_9;
      }
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a2 == 1)
  {
    v15 = *a1;
    *(a3 + 8) = 0;
    if (!*(a3 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    result = 0;
    **a3 = v15;
    ++*(a3 + 8);
  }

  else if (a2)
  {
    v7 = 16 * a2;
    *(a3 + 8) = 0;
    if ((16 * a2) >> 4 > *(a3 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(*a3, a1, v7);
    v10 = a1;
    *(a3 + 8) += v7 >> 4;
    v11 = v7 - 16;
    do
    {
      if (!v11)
      {
        return 0;
      }

      v12 = v10 + 2;
      v13 = mlir::NamedAttribute::operator<(v10 + 2, v10);
      v11 -= 16;
      v10 = v12;
    }

    while (!v13);
    v14 = *(a3 + 8);
    if (v14 >= 2)
    {
      qsort(*a3, v14, 0x10uLL, llvm::array_pod_sort_comparator<mlir::NamedAttribute>);
    }

    return 1;
  }

  else
  {
    result = 0;
    *(a3 + 8) = 0;
  }

  return result;
}

uint64_t mlir::DictionaryAttr::sortInPlace(uint64_t **a1)
{
  v1 = *(a1 + 2);
  if (v1 < 2)
  {
    return 0;
  }

  v4 = *a1;
  if (v1 != 2)
  {
    for (i = 16 * v1 - 16; i; i -= 16)
    {
      v9 = v4 + 2;
      v10 = mlir::NamedAttribute::operator<(v4 + 2, v4);
      v4 = v9;
      if (v10)
      {
        v11 = *(a1 + 2);
        if (v11 >= 2)
        {
          qsort(*a1, v11, 0x10uLL, llvm::array_pod_sort_comparator<mlir::NamedAttribute>);
        }

        return 1;
      }
    }

    return 0;
  }

  v5 = mlir::NamedAttribute::operator<(*a1, v4 + 2);
  if ((v5 & 1) == 0)
  {
    v6 = *a1;
    v7 = **a1;
    *v6 = *(*a1 + 1);
    *(v6 + 1) = v7;
  }

  return v5 ^ 1u;
}

void mlir::DictionaryAttr::findDuplicate(uint64_t **a1@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 2);
    if (v5 >= 2)
    {
      v10 = *a1;
      if (v5 == 2)
      {
        if ((mlir::NamedAttribute::operator<(*a1, v10 + 2) & 1) == 0)
        {
          v11 = *a1;
          v12 = **a1;
          *v11 = *(*a1 + 1);
          *(v11 + 1) = v12;
        }
      }

      else
      {
        v17 = 16 * v5 - 16;
        while (v17)
        {
          v18 = v10 + 2;
          v19 = mlir::NamedAttribute::operator<(v10 + 2, v10);
          v17 -= 16;
          v10 = v18;
          if (v19)
          {
            v20 = *(a1 + 2);
            if (v20 >= 2)
            {
              qsort(*a1, v20, 0x10uLL, llvm::array_pod_sort_comparator<mlir::NamedAttribute>);
            }

            break;
          }
        }
      }
    }
  }

  v6 = *(a1 + 2);
  if (v6 <= 1)
  {
    goto LABEL_4;
  }

  v7 = *a1;
  if (v6 != 2)
  {
    v13 = 16 * v6 + 16;
    while (v13 != 32)
    {
      v14 = v7 + 2;
      v15 = *v7;
      v21 = *(v7 + 1);
      v22 = v15;
      Name = mlir::NamedAttribute::getName(&v22);
      v13 -= 16;
      v7 += 2;
      if (Name == mlir::NamedAttribute::getName(&v21))
      {
        if (!v13)
        {
          goto LABEL_4;
        }

        v9 = *(v14 - 1);
        goto LABEL_17;
      }
    }

    goto LABEL_4;
  }

  v8 = mlir::NamedAttribute::getName(v7);
  if (v8 != mlir::NamedAttribute::getName((v7 + 2)))
  {
LABEL_4:
    *a3 = 0;
    a3[16] = 0;
    return;
  }

  v9 = *v7;
LABEL_17:
  *a3 = v9;
  a3[16] = 1;
}

uint64_t mlir::DictionaryAttr::get(mlir::DictionaryAttr *this, uint64_t *a2, uint64_t a3)
{
  v22[16] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v20 = v22;
    v21 = 0x800000000;
    v6 = dictionaryAttrSort<false>(a2, a3, &v20);
    if (v6)
    {
      v7 = v20;
    }

    else
    {
      v7 = a2;
    }

    if (v6)
    {
      v8 = v21;
    }

    else
    {
      v8 = a3;
    }

    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(this);
    v15[0] = &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id;
    v15[1] = this;
    v19[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DictionaryAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DictionaryAttrEJRNS_8ArrayRefINS1_14NamedAttributeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_;
    v19[1] = v15;
    v18[0] = v7;
    v18[1] = v8;
    v10 = llvm::hashing::detail::hash_combine_range_impl<mlir::NamedAttribute const*>(v7, &v7[4 * v8]);
    v11 = HIDWORD(v10) ^ 0xFF51AFD7ED558CCDLL;
    v12 = 0x9DDFEA08EB382D69 * ((8 * v10 + 8) ^ v11);
    v16[0] = v18;
    v16[1] = v19;
    v17 = v18;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) >> 32) >> 15) ^ (-348639895 * (v11 ^ (v12 >> 47) ^ v12))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DictionaryAttrStorage * mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute> &>(llvm::function_ref<void ()(mlir::detail::DictionaryAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::NamedAttribute> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v17, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DictionaryAttrStorage * mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute> &>(llvm::function_ref<void ()(mlir::detail::DictionaryAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::NamedAttribute> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v16);
    if (v20 != v22)
    {
      v14 = result;
      free(v20);
      return v14;
    }
  }

  else
  {

    return mlir::DictionaryAttr::getEmpty(this, a2);
  }

  return result;
}

uint64_t mlir::DictionaryAttr::getWithSorted(mlir::MLIRContext *a1, mlir::MLIRContext *a2, uint64_t a3)
{
  if (a3)
  {
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
    v12[0] = &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id;
    v12[1] = a1;
    v16[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DictionaryAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DictionaryAttrEJRNS_8ArrayRefINS1_14NamedAttributeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_;
    v16[1] = v12;
    v15[0] = a2;
    v15[1] = a3;
    v8 = llvm::hashing::detail::hash_combine_range_impl<mlir::NamedAttribute const*>(a2, a2 + 4 * a3);
    v9 = HIDWORD(v8) ^ 0xFF51AFD7ED558CCDLL;
    v10 = 0x9DDFEA08EB382D69 * ((8 * v8 + 8) ^ v9);
    v13[0] = v15;
    v13[1] = v16;
    v14 = v15;
    return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 32) >> 15) ^ (-348639895 * (v9 ^ (v10 >> 47) ^ v10))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DictionaryAttrStorage * mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute> &>(llvm::function_ref<void ()(mlir::detail::DictionaryAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::NamedAttribute> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DictionaryAttrStorage * mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute> &>(llvm::function_ref<void ()(mlir::detail::DictionaryAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::NamedAttribute> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
  }

  else
  {

    return mlir::DictionaryAttr::getEmpty(a1, a2);
  }
}

uint64_t mlir::DictionaryAttr::get(uint64_t a1, const void *a2, size_t a3)
{
  v3 = (16 * *(*a1 + 16)) >> 4;
  if (v3 < 1)
  {
    return 0;
  }

  v6 = *(*a1 + 8);
  while (1)
  {
    v7 = v3 >> 1;
    v8 = &v6[2 * (v3 >> 1)];
    Name = mlir::NamedAttribute::getName(v8);
    v10 = *(Name + 24);
    if (a3 >= v10)
    {
      v11 = *(Name + 24);
    }

    else
    {
      v11 = a3;
    }

    if (v11)
    {
      v12 = memcmp(*(Name + 16), a2, v11);
      if (v12)
      {
        if ((v12 & 0x80000000) == 0)
        {
          goto LABEL_4;
        }

        goto LABEL_3;
      }
    }

    if (v10 == a3)
    {
      return *(v8 + 1);
    }

    if (v10 >= a3)
    {
      goto LABEL_4;
    }

LABEL_3:
    v6 = (v8 + 16);
    v7 = v3 + ~v7;
LABEL_4:
    v3 = v7;
    if (v7 <= 0)
    {
      return 0;
    }
  }
}

uint64_t mlir::DictionaryAttr::get(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v5 = (16 * v3) >> 4;
  if (v5 >= 17)
  {
    v6 = *(a2 + 16);
    v7 = *(a2 + 24);
    while (1)
    {
      v8 = v5 >> 1;
      i = &v4[2 * (v5 >> 1)];
      Name = mlir::NamedAttribute::getName(i);
      v11 = *(Name + 24);
      v12 = v7 >= v11 ? *(Name + 24) : v7;
      if (v12)
      {
        v13 = memcmp(*(Name + 16), v6, v12);
        if (v13)
        {
          break;
        }
      }

      if (v11 == v7)
      {
        return *(i + 1);
      }

      if (v11 < v7)
      {
        goto LABEL_3;
      }

LABEL_4:
      v5 = v8;
      if (v8 <= 0)
      {
        return 0;
      }
    }

    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_3:
    v4 = (i + 16);
    v8 = v5 + ~v8;
    goto LABEL_4;
  }

  if (!v3)
  {
    return 0;
  }

  v14 = 16 * v3;
  for (i = *(*a1 + 8); mlir::NamedAttribute::getName(i) != a2; i = (i + 16))
  {
    v14 -= 16;
    if (!v14)
    {
      return 0;
    }
  }

  return *(i + 1);
}

uint64_t mlir::DictionaryAttr::getNamed@<X0>(uint64_t result@<X0>, const void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = (16 * *(*result + 16)) >> 4;
  if (v5 >= 1)
  {
    v8 = *(*result + 8);
    while (1)
    {
      v9 = v5 >> 1;
      v10 = &v8[16 * (v5 >> 1)];
      result = mlir::NamedAttribute::getName(v10);
      v11 = *(result + 24);
      v12 = a3 >= v11 ? *(result + 24) : a3;
      if (v12)
      {
        result = memcmp(*(result + 16), a2, v12);
        if (result)
        {
          break;
        }
      }

      if (v11 == a3)
      {
        *a4 = *v10;
        v13 = 1;
        goto LABEL_17;
      }

      if (v11 < a3)
      {
        goto LABEL_3;
      }

LABEL_4:
      v5 = v9;
      if (v9 <= 0)
      {
        goto LABEL_15;
      }
    }

    if ((result & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_3:
    v8 = v10 + 16;
    v9 = v5 + ~v9;
    goto LABEL_4;
  }

LABEL_15:
  v13 = 0;
  *a4 = 0;
LABEL_17:
  *(a4 + 16) = v13;
  return result;
}

uint64_t mlir::DictionaryAttr::getNamed@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(*result + 8);
  v5 = *(*result + 16);
  v7 = (16 * v5) >> 4;
  if (v7 >= 17)
  {
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    while (1)
    {
      v10 = v7 >> 1;
      v11 = &v6[16 * (v7 >> 1)];
      result = mlir::NamedAttribute::getName(v11);
      v12 = *(result + 24);
      v13 = v9 >= v12 ? *(result + 24) : v9;
      if (v13)
      {
        result = memcmp(*(result + 16), v8, v13);
        if (result)
        {
          break;
        }
      }

      if (v12 == v9)
      {
        goto LABEL_20;
      }

      if (v12 < v9)
      {
        goto LABEL_3;
      }

LABEL_4:
      v7 = v10;
      if (v10 <= 0)
      {
        goto LABEL_19;
      }
    }

    if ((result & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_3:
    v6 = v11 + 16;
    v10 = v7 + ~v10;
    goto LABEL_4;
  }

  if (v5)
  {
    v14 = 16 * v5;
    v11 = *(*result + 8);
    while (1)
    {
      result = mlir::NamedAttribute::getName(v11);
      if (result == a2)
      {
        break;
      }

      v11 = (v11 + 16);
      v14 -= 16;
      if (!v14)
      {
        goto LABEL_19;
      }
    }

LABEL_20:
    *a3 = *v11;
    v15 = 1;
  }

  else
  {
LABEL_19:
    v15 = 0;
    *a3 = 0;
  }

  *(a3 + 16) = v15;
  return result;
}

uint64_t mlir::DictionaryAttr::contains(uint64_t a1, const void *a2, size_t a3)
{
  v3 = (16 * *(*a1 + 16)) >> 4;
  if (v3 < 1)
  {
    return 0;
  }

  v6 = *(*a1 + 8);
  while (1)
  {
    v7 = v3 >> 1;
    Name = mlir::NamedAttribute::getName((v6 + 16 * (v3 >> 1)));
    v9 = *(Name + 24);
    if (a3 >= v9)
    {
      v10 = *(Name + 24);
    }

    else
    {
      v10 = a3;
    }

    if (v10)
    {
      v11 = memcmp(*(Name + 16), a2, v10);
      if (v11)
      {
        if ((v11 & 0x80000000) == 0)
        {
          goto LABEL_4;
        }

        goto LABEL_3;
      }
    }

    if (v9 == a3)
    {
      return 1;
    }

    if (v9 >= a3)
    {
      goto LABEL_4;
    }

LABEL_3:
    v6 += 16 * (v3 >> 1) + 16;
    v7 = v3 + ~v7;
LABEL_4:
    v3 = v7;
    if (v7 <= 0)
    {
      return 0;
    }
  }
}

uint64_t mlir::DictionaryAttr::contains(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v5 = (16 * v3) >> 4;
  if (v5 >= 17)
  {
    v6 = *(a2 + 16);
    v7 = *(a2 + 24);
    while (1)
    {
      v8 = v5 >> 1;
      Name = mlir::NamedAttribute::getName((v4 + 16 * (v5 >> 1)));
      v10 = *(Name + 24);
      v11 = v7 >= v10 ? *(Name + 24) : v7;
      if (v11)
      {
        v12 = memcmp(*(Name + 16), v6, v11);
        if (v12)
        {
          break;
        }
      }

      if (v10 == v7)
      {
        return 1;
      }

      if (v10 < v7)
      {
        goto LABEL_3;
      }

LABEL_4:
      v5 = v8;
      if (v8 <= 0)
      {
        return 0;
      }
    }

    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_3:
    v4 = (v4 + 16 * (v5 >> 1) + 16);
    v8 = v5 + ~v8;
    goto LABEL_4;
  }

  if (!v3)
  {
    return 0;
  }

  v13 = 16 * v3 - 16;
  do
  {
    v14 = mlir::NamedAttribute::getName(v4) == a2;
    result = v14;
    if (v14)
    {
      break;
    }

    v16 = v13;
    v13 -= 16;
    v4 = (v4 + 16);
  }

  while (v16);
  return result;
}

uint64_t mlir::DictionaryAttr::getEmptyUnchecked(mlir::DictionaryAttr *this, mlir::MLIRContext *a2)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(this);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id;
  v8[1] = this;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DictionaryAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DictionaryAttrEJNS_8ArrayRefINS1_14NamedAttributeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_;
  v12[1] = v8;
  v11[0] = 0;
  v11[1] = 0;
  v4 = llvm::hashing::detail::hash_combine_range_impl<mlir::NamedAttribute const*>(0, 0);
  v5 = HIDWORD(v4) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * ((8 * v4 + 8) ^ v5);
  v9[0] = v11;
  v9[1] = v12;
  v10 = v11;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DictionaryAttrStorage * mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute>>(llvm::function_ref<void ()(mlir::detail::DictionaryAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::NamedAttribute> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DictionaryAttrStorage * mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute>>(llvm::function_ref<void ()(mlir::detail::DictionaryAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::NamedAttribute> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

void *mlir::StridedLayoutAttr::print(void *this, llvm::raw_ostream *a2)
{
  v3 = this;
  v4 = *(a2 + 4);
  if ((*(a2 + 3) - v4) > 8)
  {
    *(v4 + 8) = 91;
    *v4 = *"strided<[";
    *(a2 + 4) += 9;
    v5 = *this;
    v6 = *(*this + 24);
    if (!v6)
    {
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  this = llvm::raw_ostream::write(a2, "strided<[", 9uLL);
  v5 = *v3;
  v6 = *(*v3 + 24);
  if (v6)
  {
LABEL_5:
    v7 = *(v5 + 16);
    if (*v7 == 0x8000000000000000)
    {
      v8 = *(a2 + 4);
      if (*(a2 + 3) == v8)
      {
        this = llvm::raw_ostream::write(a2, "?", 1uLL);
        if (v6 == 1)
        {
          goto LABEL_12;
        }
      }

      else
      {
        *v8 = 63;
        ++*(a2 + 4);
        if (v6 == 1)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      this = llvm::raw_ostream::operator<<(a2, *v7);
      if (v6 == 1)
      {
        goto LABEL_12;
      }
    }

    v13 = v7 + 1;
    for (i = 8 * v6 - 8; i; i -= 8)
    {
      v15 = *(a2 + 4);
      if (*(a2 + 3) - v15 > 1uLL)
      {
        *v15 = 8236;
        *(a2 + 4) += 2;
        v16 = *v13;
        if (*v13 == 0x8000000000000000)
        {
LABEL_27:
          v17 = *(a2 + 4);
          if (*(a2 + 3) == v17)
          {
            this = llvm::raw_ostream::write(a2, "?", 1uLL);
          }

          else
          {
            *v17 = 63;
            ++*(a2 + 4);
          }

          goto LABEL_22;
        }
      }

      else
      {
        this = llvm::raw_ostream::write(a2, ", ", 2uLL);
        v16 = *v13;
        if (*v13 == 0x8000000000000000)
        {
          goto LABEL_27;
        }
      }

      this = llvm::raw_ostream::operator<<(a2, v16);
LABEL_22:
      ++v13;
    }
  }

LABEL_12:
  v9 = *(a2 + 4);
  if (*(a2 + 3) == v9)
  {
    this = llvm::raw_ostream::write(a2, "]", 1uLL);
    if (!*(*v3 + 8))
    {
      goto LABEL_33;
    }
  }

  else
  {
    *v9 = 93;
    ++*(a2 + 4);
    if (!*(*v3 + 8))
    {
LABEL_33:
      v12 = *(a2 + 4);
      if (*(a2 + 3) != v12)
      {
        goto LABEL_34;
      }

      goto LABEL_36;
    }
  }

  v10 = *(a2 + 4);
  if ((*(a2 + 3) - v10) <= 9)
  {
    this = llvm::raw_ostream::write(a2, ", offset: ", 0xAuLL);
    v11 = *(*v3 + 8);
    if (v11 != 0x8000000000000000)
    {
      goto LABEL_18;
    }

LABEL_31:
    v18 = *(a2 + 4);
    if (*(a2 + 3) == v18)
    {
      this = llvm::raw_ostream::write(a2, "?", 1uLL);
      v12 = *(a2 + 4);
      if (*(a2 + 3) != v12)
      {
        goto LABEL_34;
      }

      goto LABEL_36;
    }

    *v18 = 63;
    ++*(a2 + 4);
    goto LABEL_33;
  }

  *(v10 + 8) = 8250;
  *v10 = *", offset: ";
  *(a2 + 4) += 10;
  v11 = *(*v3 + 8);
  if (v11 == 0x8000000000000000)
  {
    goto LABEL_31;
  }

LABEL_18:
  this = llvm::raw_ostream::operator<<(a2, v11);
  v12 = *(a2 + 4);
  if (*(a2 + 3) != v12)
  {
LABEL_34:
    *v12 = 62;
    ++*(a2 + 4);
    return this;
  }

LABEL_36:

  return llvm::raw_ostream::write(a2, ">", 1uLL);
}

BOOL mlir::StridedLayoutAttr::hasStaticLayout(mlir::StridedLayoutAttr *this)
{
  v1 = *this;
  if (*(*this + 8) == 0x8000000000000000)
  {
    return 0;
  }

  v3 = *(v1 + 24);
  if (!v3)
  {
    return 1;
  }

  v4 = *(v1 + 16);
  v5 = 8 * v3 - 8;
  do
  {
    v6 = *v4++;
    result = v6 != 0x8000000000000000;
    v7 = v6 == 0x8000000000000000 || v5 == 0;
    v5 -= 8;
  }

  while (!v7);
  return result;
}

uint64_t mlir::StridedLayoutAttr::getAffineMap(mlir::StridedLayoutAttr *this)
{
  v2 = *(*this + 16);
  v1 = *(*this + 24);
  v3 = *(*this + 8);
  Context = mlir::Attribute::getContext(this);

  return mlir::makeStridedLinearLayoutMap(v2, v1, v3, Context);
}

uint64_t mlir::makeStridedLinearLayoutMap(uint64_t a1, uint64_t a2, mlir *this, mlir::MLIRContext *a4)
{
  if (this == 0x8000000000000000)
  {
    AffineSymbolExpr = mlir::getAffineSymbolExpr(0, a4, 0x8000000000000000);
    v8 = 1;
    v18 = AffineSymbolExpr;
    if (!a2)
    {
      return mlir::AffineMap::get(a2, v8, AffineSymbolExpr);
    }
  }

  else
  {
    AffineSymbolExpr = mlir::getAffineConstantExpr(this, a4, this);
    v8 = 0;
    v18 = AffineSymbolExpr;
    if (!a2)
    {
      return mlir::AffineMap::get(a2, v8, AffineSymbolExpr);
    }
  }

  v9 = 0;
  v10 = 8 * a2;
  do
  {
    v14 = *(a1 + 8 * v9);
    AffineDimExpr = mlir::getAffineDimExpr(v9, a4, AffineSymbolExpr);
    if (v14 == 0x8000000000000000)
    {
      AffineConstantExpr = mlir::getAffineSymbolExpr(v8, a4, v15);
      v8 = (v8 + 1);
    }

    else
    {
      AffineConstantExpr = mlir::getAffineConstantExpr(v14, a4, v15);
    }

    v12 = mlir::AffineExpr::operator*(&AffineDimExpr, AffineConstantExpr);
    v13 = mlir::AffineExpr::operator+(&v18, v12);
    v18 = v13;
    v9 = (v9 + 1);
    v10 -= 8;
  }

  while (v10);
  AffineSymbolExpr = v13;
  return mlir::AffineMap::get(a2, v8, AffineSymbolExpr);
}

uint64_t mlir::StridedLayoutAttr::verifyLayout(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, uint64_t), uint64_t a5)
{
  v30 = *MEMORY[0x277D85DE8];
  if (a3 == *(*a1 + 24))
  {
    return 1;
  }

  a4(v19, a5);
  if (v19[0])
  {
    LODWORD(v17) = 3;
    *(&v17 + 1) = "expected the number of strides to match the rank";
    v18 = 48;
    if (v21 >= v22)
    {
      if (v20 > &v17 || v20 + 24 * v21 <= &v17)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v6 = v20 + 24 * v21;
    v7 = v17;
    *(v6 + 2) = v18;
    *v6 = v7;
    ++v21;
  }

  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
  if (v19[0])
  {
    mlir::InFlightDiagnostic::report(v19);
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v27;
      v10 = __p;
      if (v27 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v27 = v8;
      operator delete(v10);
    }

    v11 = v24;
    if (v24)
    {
      v12 = v25;
      v13 = v24;
      if (v25 != v24)
      {
        do
        {
          v15 = *--v12;
          v14 = v15;
          *v12 = 0;
          if (v15)
          {
            MEMORY[0x259C63150](v14, 0x1000C8077774924);
          }
        }

        while (v12 != v11);
        v13 = v24;
      }

      v25 = v11;
      operator delete(v13);
    }

    if (v20 != &v23)
    {
      free(v20);
    }
  }

  return v5;
}

uint64_t mlir::StringAttr::getEmptyStringAttrUnchecked(mlir::StringAttr *this, mlir::MLIRContext *a2)
{
  v3 = mlir::NoneType::get(this, a2);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(this);
  v7[0] = &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id;
  v7[1] = this;
  v11[0] = _ZN4llvm12function_refIFvPN4mlir6detail17StringAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_10StringAttrEJRA1_KcNS1_8NoneTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_;
  v11[1] = v7;
  v10[0] = "";
  v10[1] = 0;
  v10[2] = v3;
  v5 = 0xBF58476D1CE4E5B9 * ((v3 >> 4) ^ (v3 >> 9) | (llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue("", 0) << 32));
  v8[0] = v10;
  v8[1] = v11;
  v9 = v10;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id, (v5 >> 31) ^ v5, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::StringAttrStorage * mlir::StorageUniquer::get<mlir::detail::StringAttrStorage,char const(&)[1],mlir::NoneType>(llvm::function_ref<void ()(mlir::detail::StringAttrStorage *)>,mlir::TypeID,char const(&)[1],mlir::NoneType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::StringAttrStorage * mlir::StorageUniquer::get<mlir::detail::StringAttrStorage,char const(&)[1],mlir::NoneType>(llvm::function_ref<void ()(mlir::detail::StringAttrStorage *)>,mlir::TypeID,char const(&)[1],mlir::NoneType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v8);
}

uint64_t mlir::StringAttr::get(mlir::StringAttr *this, size_t *a2, const llvm::Twine *a3)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  if (v4 <= 1)
  {

    return mlir::StringAttr::get(this, a2);
  }

  v18 = v20;
  v19 = xmmword_25736B040;
  if (*(a2 + 33) != 1)
  {
    goto LABEL_11;
  }

  if (v4 - 5 < 2)
  {
    v6 = *a2;
    v7 = a2[1];
    goto LABEL_20;
  }

  if (v4 != 4)
  {
    if (v4 == 3)
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

      goto LABEL_20;
    }

LABEL_11:
    llvm::Twine::toVector(a2, &v18);
    v6 = v18;
    v7 = v19;
    goto LABEL_20;
  }

  v8 = *(*a2 + 23);
  if (v8 >= 0)
  {
    v6 = *a2;
  }

  else
  {
    v6 = **a2;
  }

  if (v8 >= 0)
  {
    v7 = *(*a2 + 23);
  }

  else
  {
    v7 = *(*a2 + 8);
  }

LABEL_20:
  v9 = mlir::NoneType::get(this, a2);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(this);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id;
  v13[1] = this;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir6detail17StringAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_10StringAttrEJNS_9StringRefENS1_8NoneTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v17[1] = v13;
  v16[0] = v6;
  v16[1] = v7;
  v16[2] = v9;
  v11 = 0xBF58476D1CE4E5B9 * ((v9 >> 4) ^ (v9 >> 9) | (llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(v6, v7) << 32));
  v14[0] = v16;
  v14[1] = v17;
  v15 = v16;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id, (v11 >> 31) ^ v11, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::StringAttrStorage * mlir::StorageUniquer::get<mlir::detail::StringAttrStorage,llvm::StringRef,mlir::NoneType>(llvm::function_ref<void ()(mlir::detail::StringAttrStorage *)>,mlir::TypeID,llvm::StringRef,mlir::NoneType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::StringAttrStorage * mlir::StorageUniquer::get<mlir::detail::StringAttrStorage,llvm::StringRef,mlir::NoneType>(llvm::function_ref<void ()(mlir::detail::StringAttrStorage *)>,mlir::TypeID,llvm::StringRef,mlir::NoneType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v14);
  if (v18 != v20)
  {
    v12 = result;
    free(v18);
    return v12;
  }

  return result;
}

uint64_t mlir::StringAttr::get(unsigned __int8 *a1, uint64_t a2)
{
  v22[4] = *MEMORY[0x277D85DE8];
  v14 = a2;
  v20 = v22;
  v21 = xmmword_25736B040;
  Context = mlir::Type::getContext(&v14);
  v4 = a1;
  if (a1[33] != 1)
  {
    goto LABEL_14;
  }

  v5 = a1[32];
  if (v5 > 4)
  {
    if (v5 - 5 < 2)
    {
      v7 = *a1;
      v8 = *(v4 + 1);
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v5 == 1)
  {
    v8 = 0;
    v7 = 0;
    goto LABEL_15;
  }

  if (v5 == 3)
  {
    v7 = *a1;
    if (*v4)
    {
      v8 = strlen(*v4);
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_15;
  }

  if (v5 != 4)
  {
LABEL_14:
    llvm::Twine::toVector(a1, &v20);
    v7 = v20;
    v8 = v21;
    goto LABEL_15;
  }

  v6 = *(*a1 + 23);
  if (v6 >= 0)
  {
    v7 = *a1;
  }

  else
  {
    v7 = **a1;
  }

  if (v6 >= 0)
  {
    v8 = *(*v4 + 23);
  }

  else
  {
    v8 = *(*v4 + 8);
  }

LABEL_15:
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v15[0] = &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id;
  v15[1] = Context;
  v19[0] = _ZN4llvm12function_refIFvPN4mlir6detail17StringAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_10StringAttrEJNS_9StringRefERNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_;
  v19[1] = v15;
  v18[0] = v7;
  v18[1] = v8;
  v10 = v14;
  v18[2] = v14;
  v11 = 0xBF58476D1CE4E5B9 * ((v10 >> 4) ^ (v10 >> 9) | (llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(v7, v8) << 32));
  v16[0] = v18;
  v16[1] = v19;
  v17 = v18;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id, (v11 >> 31) ^ v11, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::StringAttrStorage * mlir::StorageUniquer::get<mlir::detail::StringAttrStorage,llvm::StringRef,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::StringAttrStorage *)>,mlir::TypeID,llvm::StringRef,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v17, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::StringAttrStorage * mlir::StorageUniquer::get<mlir::detail::StringAttrStorage,llvm::StringRef,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::StringAttrStorage *)>,mlir::TypeID,llvm::StringRef,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v16);
  if (v20 != v22)
  {
    v13 = result;
    free(v20);
    return v13;
  }

  return result;
}

double mlir::FloatAttr::getValueAsDouble(mlir::FloatAttr *this)
{
  v13[3] = *MEMORY[0x277D85DE8];
  v1 = (*this + 24);
  v2 = *v1;
  v3 = llvm::APFloatBase::PPCDoubleDouble(this);
  if (v3 != v2)
  {
    v4 = llvm::detail::IEEEFloat::IEEEFloat(v13, v1);
    v5 = v13[0];
    v6 = llvm::APFloatBase::IEEEdouble(v4);
    if (v5 == v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = llvm::detail::DoubleAPFloat::DoubleAPFloat(v13, v1);
  v10 = v13[0];
  v6 = llvm::APFloatBase::IEEEdouble(v9);
  if (v10 != v6)
  {
LABEL_3:
    v11 = 0;
    llvm::APFloat::convert(v12, v6, 1, &v11);
  }

LABEL_4:
  v7 = llvm::APFloat::convertToDouble(v12);
  if (v3 == v13[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v13);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v13);
  }

  return v7;
}

double mlir::FloatAttr::getValueAsDouble(llvm::APFloatBase *a1)
{
  v2 = *(a1 + 1);
  v3 = llvm::APFloatBase::IEEEdouble(a1);
  if (v2 != v3)
  {
    v5 = 0;
    llvm::APFloat::convert(a1, v3, 1, &v5);
  }

  return llvm::APFloat::convertToDouble(a1);
}

uint64_t mlir::SymbolRefAttr::get(mlir::StringAttr *a1, size_t a2, const llvm::Twine *a3, _DWORD *a4, uint64_t a5)
{
  v15 = 261;
  v14[0] = a2;
  v14[1] = a3;
  v16 = mlir::StringAttr::get(a1, v14, a3);
  Context = mlir::Attribute::getContext(&v16);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v17[0] = &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id;
  v17[1] = Context;
  v21[0] = _ZN4llvm12function_refIFvPN4mlir6detail20SymbolRefAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_13SymbolRefAttrEJRNS1_10StringAttrERNS_8ArrayRefINS1_17FlatSymbolRefAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v21[1] = v17;
  v20[0] = v16;
  v20[1] = a4;
  v20[2] = a5;
  v9 = (v16 >> 4) ^ (v16 >> 9);
  v10 = llvm::hashing::detail::hash_combine_range_impl<mlir::StringAttr const*>(a4, &a4[2 * a5]);
  v11 = __ROR8__(v10 + 16, 16);
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ 0xFF51AFD7ED558CCDLL ^ v9)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ 0xFF51AFD7ED558CCDLL ^ v9)));
  v18[0] = v20;
  v18[1] = v21;
  v19 = v20;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id, (-348639895 * ((v12 >> 47) ^ v12)) ^ v10, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v19, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v18);
}

uint64_t mlir::SymbolRefAttr::get(mlir::StringAttr *a1, size_t a2, const llvm::Twine *a3)
{
  v11 = 261;
  v10[0] = a2;
  v10[1] = a3;
  v12 = mlir::StringAttr::get(a1, v10, a3);
  Context = mlir::Attribute::getContext(&v12);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id;
  v13[1] = Context;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir6detail20SymbolRefAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_13SymbolRefAttrEJRNS1_10StringAttrERNS_8ArrayRefINS1_17FlatSymbolRefAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v17[1] = v13;
  v5 = (v12 >> 4) ^ (v12 >> 9);
  v16[1] = 0;
  v16[2] = 0;
  v16[0] = v12;
  v6 = llvm::hashing::detail::hash_combine_range_impl<mlir::StringAttr const*>(0, 0);
  v7 = __ROR8__(v6 + 16, 16);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ 0xFF51AFD7ED558CCDLL ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ 0xFF51AFD7ED558CCDLL ^ v5)));
  v14[0] = v16;
  v14[1] = v17;
  v15 = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id, (-348639895 * ((v8 >> 47) ^ v8)) ^ v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v14);
}

uint64_t mlir::SymbolRefAttr::get(uint64_t a1)
{
  v8 = a1;
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir6detail20SymbolRefAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_13SymbolRefAttrEJRNS1_10StringAttrERNS_8ArrayRefINS1_17FlatSymbolRefAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v13[1] = v9;
  v3 = (v8 >> 4) ^ (v8 >> 9);
  v12[1] = 0;
  v12[2] = 0;
  v12[0] = v8;
  v4 = llvm::hashing::detail::hash_combine_range_impl<mlir::StringAttr const*>(0, 0);
  v5 = __ROR8__(v4 + 16, 16);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ 0xFF51AFD7ED558CCDLL ^ v3)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ 0xFF51AFD7ED558CCDLL ^ v3)));
  v10[0] = v12;
  v10[1] = v13;
  v11 = v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id, (-348639895 * ((v6 >> 47) ^ v6)) ^ v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t mlir::SymbolRefAttr::get(mlir::SymbolRefAttr *this, mlir::Operation *a2)
{
  v6 = mlir::Operation::getAttrOfType<mlir::StringAttr>(this, "sym_name", 8uLL);
  Context = mlir::Attribute::getContext(&v6);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v7[0] = &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id;
  v7[1] = Context;
  v11[0] = _ZN4llvm12function_refIFvPN4mlir6detail20SymbolRefAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_13SymbolRefAttrEJRNS1_10StringAttrERNS_8ArrayRefINS1_17FlatSymbolRefAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v11[1] = v7;
  v10[1] = 0;
  v10[2] = 0;
  v10[0] = v6;
  v4 = 0x9DDFEA08EB382D69 * ((v6 >> 4) ^ (v6 >> 9) ^ 0x33C3CA6728B94E08);
  v8[0] = v10;
  v8[1] = v11;
  v9 = v10;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47) ^ 0xCC9265B0C5ECC2C5)) >> 32) >> 15) ^ (-348639895 * (v4 ^ (v4 >> 47) ^ 0xC5ECC2C5)))) ^ 0xC2C5CC82, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v8);
}

uint64_t mlir::Operation::getAttrOfType<mlir::StringAttr>(uint64_t a1, const void *a2, unint64_t a3)
{
  if (*(a1 + 47))
  {
    result = mlir::Operation::getInherentAttr(a1, a2, a3);
    if (v7)
    {
      goto LABEL_21;
    }
  }

  v8 = *(a1 + 56);
  v9 = (16 * *(v8 + 16)) >> 4;
  if (v9 < 1)
  {
    return 0;
  }

  v10 = *(v8 + 8);
  while (1)
  {
    v11 = v9 >> 1;
    v12 = &v10[2 * (v9 >> 1)];
    Name = mlir::NamedAttribute::getName(v12);
    v14 = *(Name + 24);
    if (a3 >= v14)
    {
      v15 = *(Name + 24);
    }

    else
    {
      v15 = a3;
    }

    if (v15)
    {
      v16 = memcmp(*(Name + 16), a2, v15);
      if (v16)
      {
        if ((v16 & 0x80000000) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    if (v14 == a3)
    {
      break;
    }

    if (v14 >= a3)
    {
      goto LABEL_6;
    }

LABEL_5:
    v10 = (v12 + 16);
    v11 = v9 + ~v11;
LABEL_6:
    v9 = v11;
    if (v11 <= 0)
    {
      return 0;
    }
  }

  result = *(v12 + 1);
LABEL_21:
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::SymbolRefAttr::getLeafReference(mlir::SymbolRefAttr *this)
{
  v1 = *this;
  v2 = *(*this + 24);
  if (v2)
  {
    v1 = *(*(v1 + 16) + 8 * v2 - 8);
  }

  return *(v1 + 8);
}

uint64_t mlir::IntegerAttr::getInt(mlir::IntegerAttr *this)
{
  v1 = (*this + 16);
  v2 = *(*this + 24);
  v5 = v2;
  if (v2 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v4, v1);
  }

  if (v2)
  {
    return (*v1 << -v2) >> -v2;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::IntegerAttr::getSInt(mlir::IntegerAttr *this)
{
  v1 = (*this + 16);
  v2 = *(*this + 24);
  v5 = v2;
  if (v2 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v4, v1);
  }

  if (v2)
  {
    return (*v1 << -v2) >> -v2;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::IntegerAttr::getUInt(mlir::IntegerAttr *this)
{
  v1 = *this;
  v4 = *(*this + 24);
  if (v4 > 0x40)
  {
    llvm::APInt::initSlowCase(&v3, (v1 + 16));
  }

  return *(v1 + 16);
}