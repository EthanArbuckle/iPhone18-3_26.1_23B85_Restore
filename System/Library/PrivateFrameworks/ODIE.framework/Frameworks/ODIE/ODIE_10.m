uint64_t mlir::detail::walk<mlir::ForwardIterator>(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, int a4)
{
  v6 = a2;
  v7 = result;
  if (!a4)
  {
    result = a2(a3, result);
    v6 = a2;
  }

  v8 = *(v7 + 44);
  if ((v8 & 0x7FFFFF) != 0)
  {
    v9 = v7 + 16 * ((v8 >> 23) & 1) + ((v8 >> 21) & 0x7F8) + 32 * *(v7 + 40) + 64;
    v10 = v9 + 24 * (v8 & 0x7FFFFF);
    do
    {
      for (i = *(v9 + 8); i != v9; i = *(i + 8))
      {
        v12 = i - 8;
        if (!i)
        {
          v12 = 0;
        }

        result = *(v12 + 40);
        v13 = v12 + 32;
        if (result != v12 + 32)
        {
          do
          {
            v14 = *(result + 8);
            mlir::detail::walk<mlir::ForwardIterator>();
            v6 = a2;
            result = v14;
          }

          while (v14 != v13);
        }
      }

      v9 += 24;
    }

    while (v9 != v10);
  }

  if (a4 == 1)
  {

    return v6(a3, v7);
  }

  return result;
}

uint64_t std::__function::__value_func<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>,std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = std::__function::__value_func<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>::__value_func[abi:nn200100](a4, v7);
      v7 += 32;
      a4 = v8 + 32;
    }

    while (v7 != a3);
    do
    {
      std::__function::__value_func<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>::~__value_func[abi:nn200100](v6);
      v6 += 32;
    }

    while (v6 != a3);
  }
}

uint64_t std::__split_buffer<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    std::__function::__value_func<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>::~__value_func[abi:nn200100](i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__function::__value_func<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::function<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::function<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>>,std::function<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = std::__function::__value_func<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>::__value_func[abi:nn200100](a4, v7);
      v7 += 32;
      a4 = v8 + 32;
    }

    while (v7 != a3);
    do
    {
      std::__function::__value_func<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>::~__value_func[abi:nn200100](v6);
      v6 += 32;
    }

    while (v6 != a3);
  }
}

uint64_t std::__split_buffer<std::function<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    std::__function::__value_func<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>::~__value_func[abi:nn200100](i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  if (a2)
  {
    return (*(*a2 + 48))(a2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return llvm::function_ref<void ()(mlir::Attribute)>::callback_fn<mlir::Attribute replaceSubElements<mlir::Attribute,mlir::AttrTypeReplacer>(mlir::Attribute,mlir::AttrTypeReplacer &)::{lambda(mlir::Attribute)#1}>(v4);
}

void updateSubElementImpl<mlir::Attribute,mlir::AttrTypeReplacer>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 1) == 1)
  {
    if (a1)
    {
      v7 = mlir::AttrTypeReplacer::cachedReplaceImpl<mlir::Attribute>(a2, a1);
      if (v7)
      {
        v8 = v7;
        llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(a3, v7);
        if (v8 != a1)
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

      llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(a3, 0);
    }
  }
}

void llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(uint64_t a1, uint64_t a2)
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

void updateSubElementImpl<mlir::Type,mlir::AttrTypeReplacer>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 1) == 1)
  {
    if (a1)
    {
      v7 = mlir::AttrTypeReplacer::cachedReplaceImpl<mlir::Type>(a2, a1);
      if (v7)
      {
        v8 = v7;
        llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a3, v7);
        if (v8 != a1)
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

      llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a3, 0);
    }
  }
}

uint64_t std::function<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  if (a2)
  {
    return (*(*a2 + 48))(a2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return llvm::function_ref<void ()(mlir::Attribute)>::callback_fn<mlir::Type replaceSubElements<mlir::Type,mlir::AttrTypeReplacer>(mlir::Type,mlir::AttrTypeReplacer &)::{lambda(mlir::Attribute)#1}>(v4);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::try_emplace<void const*&>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::LookupBucketFor<void const*>(a1, a2, &v12);
  v9 = v12;
  if (result)
  {
    v10 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::InsertIntoBucketImpl<void const*>(a1, a2, v12);
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

void *llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::operator[](uint64_t *a1, void *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::LookupBucketFor<void const*>(a1, a2, &v7);
  inserted = v7;
  if ((v4 & 1) == 0)
  {
    inserted = llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::InsertIntoBucketImpl<void const*>(a1, a2, v7);
    *inserted = *a2;
    inserted[1] = 0;
  }

  return inserted + 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::LookupBucketFor<void const*>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
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
        v7 = (v4 + 16 * (v13 & v5));
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
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::InsertIntoBucketImpl<void const*>(uint64_t a1, void *a2, void *a3)
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

  llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::LookupBucketFor<void const*>(a1, a2, &v8);
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

char *llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::grow(uint64_t a1, int a2)
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
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v28 = 0;
          llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::LookupBucketFor<void const*>(a1, v19, &v28);
          *v28 = *v19;
          v28[1] = v19[1];
          ++*(a1 + 8);
        }

        v19 += 2;
        v18 -= 16;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = 0;
    v22 = v20 + 0xFFFFFFFFFFFFFFFLL;
    v23 = v22 & 0xFFFFFFFFFFFFFFFLL;
    v24 = (v22 & 0xFFFFFFFFFFFFFFFLL) - (v22 & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = result + 16;
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v21), xmmword_25D0A0500)));
      if (v27.i8[0])
      {
        *(v26 - 2) = -4096;
      }

      if (v27.i8[4])
      {
        *v26 = -4096;
      }

      v21 += 2;
      v26 += 4;
    }

    while (v24 != v21);
  }

  return result;
}

uint64_t *std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (v19 && (v19[3] & 1) == 0)
      {
LABEL_58:
        v18 = v7;
      }

      else
      {
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_71;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_58;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_67;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (v24 && (v24[3] & 1) == 0)
  {
LABEL_67:
    v25 = v7;
    goto LABEL_68;
  }

  *(v25 + 24) = 1;
  *(v7 + 24) = 0;
  v33 = *v25;
  v7[1] = *v25;
  if (v33)
  {
    *(v33 + 16) = v7;
  }

  v34 = v7[2];
  v25[2] = v34;
  v34[*v34 != v7] = v25;
  *v25 = v7;
  v7[2] = v25;
  v24 = v7;
LABEL_68:
  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_71:
  *(v29 + 16) = v30;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>,void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>::LookupBucketFor<void *>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 8 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
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
        v7 = (v4 + 8 * (v13 & v5));
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
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>,void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>::InsertIntoBucketImpl<void *>(uint64_t a1, void *a2, void *a3)
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

  llvm::DenseMap<void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>,void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>::LookupBucketFor<void *>(a1, a2, &v8);
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

char *llvm::DenseMap<void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((8 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>,void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>::moveFromOldBuckets(a1, v4, &v4[v3]);

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = v10 + 0x1FFFFFFFFFFFFFFFLL;
    v13 = v12 & 0x1FFFFFFFFFFFFFFFLL;
    v14 = (v12 & 0x1FFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
    v15 = vdupq_n_s64(v13);
    v16 = result + 8;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
      if (v17.i8[0])
      {
        *(v16 - 1) = -4096;
      }

      if (v17.i8[4])
      {
        *v16 = -4096;
      }

      v11 += 2;
      v16 += 2;
    }

    while (v14 != v11);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>,void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>::moveFromOldBuckets(uint64_t result, void *a2, void *a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0x1FFFFFFFFFFFFFFFLL;
    v9 = v8 & 0x1FFFFFFFFFFFFFFFLL;
    v10 = (v8 & 0x1FFFFFFFFFFFFFFFLL) - (v8 & 1) + 2;
    v11 = vdupq_n_s64(v9);
    v12 = (*result + 8);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_25D0A0500)));
      if (v13.i8[0])
      {
        *(v12 - 1) = -4096;
      }

      if (v13.i8[4])
      {
        *v12 = -4096;
      }

      v7 += 2;
      v12 += 2;
    }

    while (v10 != v7);
  }

  while (a2 != a3)
  {
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v14 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>,void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>::LookupBucketFor<void *>(v5, a2, &v14);
      *v14 = *a2;
      ++*(v5 + 8);
    }

    ++a2;
  }

  return result;
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
        MEMORY[0x25F891040](*v2, 0x1020C401BF16FDDLL);
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
      *(v4 + 2) = 0;
      v5 = *v4;
      v6 = *(v4 + 1);
      *v6 = *v4;
      *(v5 + 8) = v6;
      *v4 = 0;
      *(v4 + 1) = 0;
      mlir::Operation::destroy(v4);
      v4 = v6;
    }

    while (v6 != (this + 4));
  }
}

mlir::Operation *mlir::Block::clear(mlir::Block *this)
{
  v1 = (this + 32);
  for (i = *(this + 5); i != v1; i = *(i + 8))
  {
    mlir::Operation::dropAllReferences(i);
  }

  while (1)
  {
    result = *v1;
    if (*v1 == v1)
    {
      break;
    }

    *(result + 2) = 0;
    v4 = *result;
    v3 = *(result + 1);
    *v3 = *result;
    *(v4 + 8) = v3;
    *result = 0;
    *(result + 1) = 0;
    mlir::Operation::destroy(result);
  }

  return result;
}

uint64_t **mlir::Block::dropAllDefinedValueUses(mlir::Block *this)
{
  v2 = *(this + 6);
  v3 = *(this + 7);
  while (v2 != v3)
  {
    v4 = *v2++;
    mlir::IRObjectWithUseList<mlir::OpOperand>::dropAllUses(v4);
  }

  for (i = *(this + 5); i != (this + 32); i = *(i + 8))
  {
    mlir::Operation::dropAllDefinedValueUses(i);
  }

  return mlir::IRObjectWithUseList<mlir::BlockOperand>::dropAllUses(this);
}

uint64_t **mlir::IRObjectWithUseList<mlir::BlockOperand>::dropAllUses(uint64_t **result)
{
  while (1)
  {
    v1 = *result;
    if (!*result)
    {
      break;
    }

    v2 = v1[1];
    if (v2)
    {
      v3 = *v1;
      *v2 = *v1;
      if (v3)
      {
        *(v3 + 8) = v1[1];
      }
    }

    *v1 = 0;
    v1[1] = 0;
    v1[3] = 0;
  }

  return result;
}

uint64_t mlir::Block::addArguments(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = *(a1 + 56) - *(a1 + 48);
  std::vector<mlir::BlockArgument>::reserve((a1 + 48), a3 + (v10 >> 3));
  if (a3 && a5)
  {
    mlir::TypeRange::dereference_iterator(a2, 0);
    v11 = *a4;
    mlir::Block::addArgument(a1);
  }

  v12 = *(a1 + 56);
  return *(a1 + 48) + v10;
}

void *std::vector<mlir::BlockArgument>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::BlockArgument>>(result, a2);
    }

    std::vector<mlir::BlockArgument>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

char *std::vector<mlir::BlockArgument>::insert(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<mlir::BlockArgument>::__throw_length_error[abi:nn200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::BlockArgument>>(a1, v14);
    }

    v16 = (8 * v15);
    if (!v15)
    {
      if (v12 < 1)
      {
        if (v10 == v4)
        {
          v19 = 1;
        }

        else
        {
          v19 = v12 >> 2;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::BlockArgument>>(a1, v19);
      }

      v16 = (v16 - (((v12 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
    }

    *v16 = *a3;
    memcpy(v16 + 1, v4, a1[1] - v4);
    v20 = *a1;
    v21 = v16 + a1[1] - v4 + 8;
    a1[1] = v4;
    v22 = v4 - v20;
    v23 = v16 - (v4 - v20);
    memcpy(v23, v20, v22);
    v24 = *a1;
    *a1 = v23;
    a1[1] = v21;
    a1[2] = 0;
    if (v24)
    {
      operator delete(v24);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v17 = v9 <= a3 || v4 > a3;
    v18 = 8;
    if (v17)
    {
      v18 = 0;
    }

    *v4 = *&a3[v18];
  }

  return v4;
}

void *mlir::Block::eraseArgument(mlir::Block *this, unsigned int a2)
{
  v2 = a2;
  v4 = a2;
  v5 = *(this + 6);
  result = *(v5 + 8 * a2);
  if (result)
  {
    result = MEMORY[0x25F891040](result, 0x1020C401BF16FDDLL);
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
    result = MEMORY[0x25F891040]();
    v10 = *(v5 + 56);
    if (v10 != v6 + 1)
    {
      do
      {
        result = a2(a3, *v8);
        if (result)
        {
          result = *v8;
          if (*v8)
          {
            result = MEMORY[0x25F891040](result, 0x1020C401BF16FDDLL);
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
      v10 = *(v5 + 56);
    }

    if (v6 != v10)
    {
      *(v5 + 56) = v6;
    }
  }

  return result;
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
      v5 = v2[10];
      this[1] = v5;
      if (v5)
      {
        *this = &v2[4 * ((v2[11] >> 23) & 1) + 16] + ((v2[11] >> 21) & 0x7F8);
      }
    }
  }

  return this;
}

const void **llvm::SmallPtrSetImpl<mlir::Block *>::insert@<X0>(llvm::SmallPtrSetImplBase *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  result = llvm::SmallPtrSetImplBase::insert_imp(a1, a2);
  v7 = 8;
  if (*(a1 + 20))
  {
    v7 = 12;
  }

  v8 = *a1 + 8 * *(a1 + v7);
  if (v8 != result)
  {
    while (*result >= 0xFFFFFFFFFFFFFFFELL)
    {
      if (++result == v8)
      {
        result = v8;
        break;
      }
    }
  }

  *a3 = result;
  *(a3 + 8) = v8;
  *(a3 + 16) = v6;
  return result;
}

void llvm::SmallVectorImpl<mlir::Block *>::append<llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,void>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a5 - a3;
  v10 = *(a1 + 8);
  v11 = a5 - a3 + v10;
  if (v11 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v11, 8);
    v10 = *(a1 + 8);
  }

  v12 = a5 - a3;
  if (a5 != a3)
  {
    v13 = (*a1 + 8 * v10);
    v14 = (a2 + 32 * a3 + 24);
    do
    {
      v15 = *v14;
      v14 += 4;
      *v13++ = v15;
      --v12;
    }

    while (v12);
  }

  *(a1 + 8) = v10 + v9;
}

uint64_t llvm::iplist_impl<llvm::simple_ilist<mlir::Block>,llvm::ilist_traits<mlir::Block>>::transfer(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 != a5)
  {
    if (result != a3 && a4 != a5)
    {
      v5 = a4;
      do
      {
        v6 = v5 - 1;
        if (!v5)
        {
          v6 = 0;
        }

        v6[3] = v6[3] & 7 | result;
        v5 = v5[1];
      }

      while (v5 != a5);
    }

    if (a4 != a5)
    {
      v7 = *a5;
      v8 = *a4;
      *(v8 + 8) = a5;
      *a5 = v8;
      v9 = *a2;
      *(v7 + 8) = a2;
      *a4 = v9;
      *(v9 + 8) = a4;
      *a2 = v7;
    }
  }

  return result;
}

uint64_t llvm::iplist_impl<llvm::simple_ilist<mlir::Block>,llvm::ilist_traits<mlir::Block>>::erase(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (a2)
  {
    v3 = (a2 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3[2];
  v3[3] &= 7uLL;
  v5 = v3[1];
  *v4 = v5;
  *(v5 + 8) = v4;
  v3[1] = 0;
  v3[2] = 0;
  mlir::Block::~Block((a2 - 8));
  MEMORY[0x25F891040]();
  return v2;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::BlockArgument>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t mlir::OperationName::mightHaveTrait<mlir::OpTrait::IsTerminator>(uint64_t a1)
{
  mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID();
  if (*(*a1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    return 1;
  }

  v2 = *(**a1 + 32);

  return v2();
}

BOOL llvm::SmallPtrSetImplBase::contains_imp(llvm::SmallPtrSetImplBase *this, const void *a2)
{
  if (*(this + 20) != 1)
  {
    return llvm::SmallPtrSetImplBase::doFind(this, a2) != 0;
  }

  v2 = *(this + 3);
  if (!v2)
  {
    return 0;
  }

  v3 = *this;
  v4 = 8 * v2 - 8;
  do
  {
    v5 = *v3++;
    result = v5 == a2;
    v7 = v5 == a2 || v4 == 0;
    v4 -= 8;
  }

  while (!v7);
  return result;
}

uint64_t *mlir::Builder::getF16Type(mlir::Builder *this)
{
  v1 = *(**this + 424);
  if (v1)
  {
    v2 = *v1;
    v3 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v2 + 8, v3);
  }

  return v1;
}

uint64_t *mlir::Builder::getF32Type(mlir::Builder *this)
{
  v1 = *(**this + 440);
  if (v1)
  {
    v2 = *v1;
    v3 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v2 + 8, v3);
  }

  return v1;
}

uint64_t *mlir::Builder::getF64Type(mlir::Builder *this)
{
  v1 = *(**this + 448);
  if (v1)
  {
    v2 = *v1;
    v3 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v2 + 8, v3);
  }

  return v1;
}

uint64_t mlir::Builder::getNoneType(mlir::Builder *this)
{
  v3 = **this;
  result = *(v3 + 528);
  if (!result)
  {
    v6[1] = v1;
    v6[2] = v2;
    v5 = *(v3 + 384);
    v6[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    return *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v5 + 232), v6);
  }

  return result;
}

uint64_t mlir::Builder::getIndexAttr(mlir::Builder *this, uint64_t a2)
{
  v2 = *(**this + 472);
  v6 = 64;
  v5 = a2;
  v3 = mlir::IntegerAttr::get(v2, &v5);
  if (v6 >= 0x41 && v5)
  {
    MEMORY[0x25F891010](v5, 0x1000C8000313F17);
  }

  return v3;
}

uint64_t mlir::Builder::getI64IntegerAttr(mlir::Builder *this, uint64_t a2)
{
  v3 = mlir::IntegerType::get(*this, 64, 0);
  v7 = 64;
  v6 = a2;
  v4 = mlir::IntegerAttr::get(v3, &v6);
  if (v7 >= 0x41 && v6)
  {
    MEMORY[0x25F891010](v6, 0x1000C8000313F17);
  }

  return v4;
}

uint64_t mlir::Builder::getI32VectorAttr(void **a1, unsigned __int8 *a2, uint64_t a3)
{
  v12 = a3;
  v5 = mlir::IntegerType::get(*a1, 32, 0);
  v6 = mlir::VectorType::get(&v12, 1uLL, v5, 0, 0);
  v7 = v6;
  if (v6)
  {
    v8 = *v6;
    v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v10 = mlir::detail::InterfaceMap::lookup(v8 + 8, v9);
  }

  else
  {
    v10 = 0;
  }

  return mlir::DenseIntOrFPElementsAttr::getRaw(v7, v10, a2, 4 * a3);
}

uint64_t mlir::Builder::getI32TensorAttr(void **a1, unsigned __int8 *a2, uint64_t a3)
{
  v9 = a3;
  v5 = mlir::IntegerType::get(*a1, 32, 0);
  *&v12 = &v9;
  *(&v12 + 1) = 1;
  v10 = 0;
  v11 = v5;
  *&v12 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v5 + 32), &v12, &v11, &v10);
  v6 = mlir::TensorType::operator mlir::ShapedType(&v12);
  return mlir::DenseIntOrFPElementsAttr::getRaw(v6, v7, a2, 4 * a3);
}

uint64_t mlir::Builder::getI32IntegerAttr(mlir::Builder *this, unsigned int a2)
{
  v3 = mlir::IntegerType::get(*this, 32, 0);
  v7 = 32;
  v6 = a2;
  v4 = mlir::IntegerAttr::get(v3, &v6);
  if (v7 >= 0x41 && v6)
  {
    MEMORY[0x25F891010](v6, 0x1000C8000313F17);
  }

  return v4;
}

uint64_t mlir::Builder::getUI32IntegerAttr(mlir::Builder *this, unsigned int a2)
{
  v3 = mlir::IntegerType::get(*this, 32, 2);
  v7 = 32;
  v6 = a2;
  v4 = mlir::IntegerAttr::get(v3, &v6);
  if (v7 >= 0x41 && v6)
  {
    MEMORY[0x25F891010](v6, 0x1000C8000313F17);
  }

  return v4;
}

uint64_t mlir::Builder::getI16IntegerAttr(mlir::Builder *this, int a2)
{
  v3 = mlir::IntegerType::get(*this, 16, 0);
  v7 = 16;
  v6 = a2;
  v4 = mlir::IntegerAttr::get(v3, &v6);
  if (v7 >= 0x41 && v6)
  {
    MEMORY[0x25F891010](v6, 0x1000C8000313F17);
  }

  return v4;
}

uint64_t mlir::Builder::getIntegerAttr(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v12 = a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    v11 = 64;
    v10 = a3;
  }

  else
  {
    IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v12);
    if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      v6 = *(a2 + 8) >> 30;
    }

    v11 = IntOrFloatBitWidth;
    if (IntOrFloatBitWidth > 0x40)
    {
      llvm::APInt::initSlowCase(&v10);
    }

    v7 = 0xFFFFFFFFFFFFFFFFLL >> -IntOrFloatBitWidth;
    if (!IntOrFloatBitWidth)
    {
      v7 = 0;
    }

    v10 = v7 & a3;
  }

  v8 = mlir::IntegerAttr::get(a2, &v10);
  if (v11 >= 0x41 && v10)
  {
    MEMORY[0x25F891010](v10, 0x1000C8000313F17);
  }

  return v8;
}

uint64_t mlir::Builder::getI64ArrayAttr(mlir::Builder *a1, uint64_t *a2, unint64_t a3)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v16 = v18;
  v17 = 0x800000000;
  if (a3 < 9)
  {
    if (!a3)
    {
      v11 = 0;
      v12 = v18;
      goto LABEL_8;
    }

    v6 = 0;
    v7 = v18;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v16, v18, a3, 8);
    v6 = v17;
    v7 = v16;
  }

  v8 = 8 * a3;
  v9 = &v7[v6];
  do
  {
    v10 = *a2++;
    *v9++ = mlir::Builder::getI64IntegerAttr(a1, v10);
    v8 -= 8;
  }

  while (v8);
  v11 = v17;
  v12 = v16;
LABEL_8:
  LODWORD(v17) = v11 + a3;
  v13 = mlir::ArrayAttr::get(*a1, v12, (v11 + a3));
  if (v16 != v18)
  {
    free(v16);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t mlir::Builder::getStrArrayAttr(mlir::StringAttr **a1, uint64_t *a2, unint64_t a3)
{
  v21[8] = *MEMORY[0x277D85DE8];
  v19 = v21;
  v20 = 0x800000000;
  if (a3 < 9)
  {
    if (!a3)
    {
      v12 = 0;
      v13 = v21;
      goto LABEL_8;
    }

    v6 = 0;
    v7 = v21;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v19, v21, a3, 8);
    v6 = v20;
    v7 = v19;
  }

  v8 = &a2[2 * a3];
  v9 = &v7[v6];
  do
  {
    v10 = *a2;
    v11 = a2[1];
    a2 += 2;
    v18 = 261;
    v17[0] = v10;
    v17[1] = v11;
    *v9++ = mlir::StringAttr::get(*a1, v17, a3);
  }

  while (a2 != v8);
  v12 = v20;
  v13 = v19;
LABEL_8:
  LODWORD(v20) = v12 + a3;
  v14 = mlir::ArrayAttr::get(*a1, v13, (v12 + a3));
  if (v19 != v21)
  {
    free(v19);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t mlir::Builder::getTypeArrayAttr(uint64_t **a1, uint64_t a2, unint64_t a3)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v16 = v18;
  v17 = 0x800000000;
  if (a3 < 9)
  {
    if (!a3)
    {
      v11 = 0;
      v12 = v18;
      goto LABEL_8;
    }

    v6 = 0;
    v7 = v18;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v16, v18, a3, 8);
    v6 = v17;
    v7 = v16;
  }

  v8 = 0;
  v9 = &v7[v6];
  do
  {
    v10 = mlir::TypeRange::dereference_iterator(a2, v8);
    v9[v8++] = mlir::TypeAttr::get(v10);
  }

  while (a3 != v8);
  v11 = v17;
  v12 = v16;
LABEL_8:
  LODWORD(v17) = v11 + a3;
  v13 = mlir::ArrayAttr::get(*a1, v12, (v11 + a3));
  if (v16 != v18)
  {
    free(v16);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t *mlir::Builder::getZeroAttr(mlir::Builder *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  if (mlir::detail::InterfaceMap::lookup(v4 + 8, v5))
  {
    IndexAttr = mlir::FloatAttr::get(a2, 0.0);
    goto LABEL_3;
  }

  v10 = *a2;
  v11 = *(*a2 + 136);
  if (v11 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    IndexAttr = mlir::Builder::getIndexAttr(a1, 0);
LABEL_3:
    v7 = IndexAttr;
    if (IndexAttr)
    {
      v8 = *IndexAttr;
      v9 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
      mlir::detail::InterfaceMap::lookup(v8 + 8, v9);
    }

    return v7;
  }

  if (a2 && v11 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    LODWORD(v25) = *(a2 + 8) & 0x3FFFFFFF;
    if (v25 >= 0x41)
    {
      operator new[]();
    }

    ZeroAttr = 0;
    v19 = mlir::IntegerAttr::get(a2, &ZeroAttr);
    v7 = v19;
    if (v19)
    {
      v20 = *v19;
      v21 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
      mlir::detail::InterfaceMap::lookup(v20 + 8, v21);
    }

    if (v25 >= 0x41 && ZeroAttr)
    {
      MEMORY[0x25F891010](ZeroAttr, 0x1000C8000313F17);
    }
  }

  else
  {
    v12 = v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id;
    if (v12 && (v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(), v14 = mlir::detail::InterfaceMap::lookup(v10 + 8, v13), v15 = (*(v14 + 8))(v14, a2), ZeroAttr = mlir::Builder::getZeroAttr(a1, v15), v25 = v16, ZeroAttr))
    {
      v23 = mlir::DenseElementsAttr::get(a2, v14, &ZeroAttr, 1uLL);
      v7 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v23);
      if (v7)
      {
        v18 = *(v17 + 24);
      }
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

uint64_t *mlir::Builder::getOneAttr(mlir::Builder *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  if (mlir::detail::InterfaceMap::lookup(v4 + 8, v5))
  {
    IndexAttr = mlir::FloatAttr::get(a2, 1.0);
    goto LABEL_3;
  }

  v10 = *a2;
  v11 = *(*a2 + 136);
  if (v11 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    IndexAttr = mlir::Builder::getIndexAttr(a1, 1);
LABEL_3:
    v7 = IndexAttr;
    if (IndexAttr)
    {
      v8 = *IndexAttr;
      v9 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
      mlir::detail::InterfaceMap::lookup(v8 + 8, v9);
    }

    return v7;
  }

  if (a2 && v11 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    LODWORD(v25) = *(a2 + 8) & 0x3FFFFFFF;
    if (v25 >= 0x41)
    {
      operator new[]();
    }

    OneAttr = 1;
    v19 = mlir::IntegerAttr::get(a2, &OneAttr);
    v7 = v19;
    if (v19)
    {
      v20 = *v19;
      v21 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
      mlir::detail::InterfaceMap::lookup(v20 + 8, v21);
    }

    if (v25 >= 0x41 && OneAttr)
    {
      MEMORY[0x25F891010](OneAttr, 0x1000C8000313F17);
    }
  }

  else
  {
    v12 = v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id;
    if (v12 && (v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(), v14 = mlir::detail::InterfaceMap::lookup(v10 + 8, v13), v15 = (*(v14 + 8))(v14, a2), OneAttr = mlir::Builder::getOneAttr(a1, v15), v25 = v16, OneAttr))
    {
      v23 = mlir::DenseElementsAttr::get(a2, v14, &OneAttr, 1uLL);
      v7 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v23);
      if (v7)
      {
        v18 = *(v17 + 24);
      }
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

uint64_t mlir::Builder::getConstantAffineMap(mlir::Builder *this, mlir *a2, mlir::MLIRContext *a3)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::getAffineConstantExpr(a2, *this, a3);
  result = mlir::AffineMap::getImpl(0, 0, v5, 1, *v5[0]);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::Builder::getSymbolIdentityMap(mlir::Builder *this)
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = getAffineDimOrSymbol(7u, 0, *this);
  result = mlir::AffineMap::getImpl(0, 1, v3, 1, *v3[0]);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

mlir::Operation *mlir::OpBuilder::insert(mlir::OpBuilder *this, mlir::Operation *a2)
{
  v3 = *(this + 2);
  if (v3)
  {
    v4 = *(this + 3);
    *(a2 + 2) = v3;
    *(a2 + 8) = -1;
    v5 = *v4;
    *a2 = *v4;
    *(a2 + 1) = v4;
    *(v5 + 8) = a2;
    *v4 = a2;
    v6 = *(this + 1);
    if (v6)
    {
      (*(*v6 + 16))(v6, a2, 0, 0);
    }
  }

  return a2;
}

uint64_t mlir::OpBuilder::tryFold(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v50[4] = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 36);
  v7 = a2 - 16;
  if (v6)
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  if (*(a3 + 12) < v6)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v6, 8);
  }

  v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID();
  if ((*(**(a2 + 48) + 32))(*(a2 + 48), v9))
  {
    v10 = 0;
    *(v3 + 8) = 0;
    goto LABEL_43;
  }

  v48 = v50;
  v49 = 0x400000000;
  if ((mlir::Operation::fold(a2, &v48) & 1) == 0)
  {
    v10 = 0;
    *(v3 + 8) = 0;
    goto LABEL_41;
  }

  if (!v49)
  {
    v10 = 1;
    goto LABEL_41;
  }

  v44[0] = *a1;
  memset(&v44[1], 0, 24);
  v45 = &v47;
  v46 = 0x100000000;
  v11 = *(a2 + 48);
  v43 = a2;
  v42 = a1;
  if (*(v11 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v12 = (*(v11 + 8) + 32);
  }

  else
  {
    v12 = (v11 + 24);
  }

  v13 = 0;
  v14 = *v12;
  v15 = v48;
  v16 = 8 * v49;
  v17 = v7;
  do
  {
    v18 = v8;
    if (v13)
    {
      v19 = v7;
      v20 = v13;
      if (!v6)
      {
        goto LABEL_21;
      }

      v21 = *(v8 + 8) & 7;
      v19 = v7;
      v20 = v13;
      if (v21 == 6)
      {
        goto LABEL_21;
      }

      v22 = (5 - v21);
      v18 = v17;
      v20 = v13 - v22;
      if (v13 > v22)
      {
        v19 = v7 - 16 * v22;
LABEL_21:
        v18 = v19 - 24 * v20;
      }
    }

    v23 = *(v18 + 8);
    v24 = v15[v13];
    v25 = v24 & 0xFFFFFFFFFFFFFFF8;
    if ((v24 & 4) == 0 || !v25)
    {
      if (!v14)
      {
        goto LABEL_37;
      }

      v26 = v3;
      v27 = v6;
      v28 = v8;
      v29 = v15;
      v30 = (*(*v14 + 24))(v14, v44, v25, v23 & 0xFFFFFFFFFFFFFFF8, *(v43 + 24));
      if (!v30)
      {
        v3 = v26;
        if (v46)
        {
          v35 = v45;
          v36 = 8 * v46;
          do
          {
            v37 = *v35;
            if (*(*v35 + 16))
            {
              *(v37 + 2) = 0;
              v39 = *v37;
              v38 = *(v37 + 1);
              *v38 = *v37;
              *(v39 + 8) = v38;
              *v37 = 0;
              *(v37 + 1) = 0;
            }

            mlir::Operation::destroy(v37);
            v35 += 8;
            v36 -= 8;
          }

          while (v36);
        }

LABEL_37:
        v10 = 0;
        *(v3 + 8) = 0;
        goto LABEL_39;
      }

      v31 = v30;
      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(&v45, v30);
      v25 = v31 - 16;
      v15 = v29;
      v8 = v28;
      v6 = v27;
      v3 = v26;
    }

    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v3, v25);
    ++v13;
    v17 -= 16;
    v16 -= 8;
  }

  while (v16);
  if (v46)
  {
    v32 = v45;
    v33 = 8 * v46;
    do
    {
      v34 = *v32++;
      mlir::OpBuilder::insert(v42, v34);
      v33 -= 8;
    }

    while (v33);
    v10 = 1;
  }

  else
  {
    v10 = 1;
  }

LABEL_39:
  if (v45 != &v47)
  {
    free(v45);
  }

LABEL_41:
  if (v48 != v50)
  {
    free(v48);
  }

LABEL_43:
  v40 = *MEMORY[0x277D85DE8];
  return v10;
}

unsigned int *mlir::OpBuilder::clone(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v4 = mlir::Operation::clone(a2, a3, 3);
  mlir::OpBuilder::insert(a1, v4);
  v5 = *(a1 + 1);
  if (v5)
  {
    notifyBlockInsertions(v4, v5);
    v15 = a1;
    v6 = v4[11];
    if ((v6 & 0x7FFFFF) != 0)
    {
      v7 = ((&v4[4 * ((v6 >> 23) & 1) + 17] + ((v6 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v4[10];
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

          v11 = *(v10 + 40);
          v12 = v10 + 32;
          if (v11 != v10 + 32)
          {
            do
            {
              v13 = *(v11 + 8);
              mlir::detail::walk<mlir::ForwardIterator>(v11, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::OpBuilder::clone(mlir::Operation&,mlir::IRMapping &)::$_0>, &v15, 0);
              v11 = v13;
            }

            while (v13 != v12);
          }
        }

        v7 += 24;
      }

      while (v7 != v8);
    }
  }

  return v4;
}

uint64_t notifyBlockInsertions(uint64_t result, uint64_t a2)
{
  v2 = *(result + 44);
  if ((v2 & 0x7FFFFF) != 0)
  {
    v4 = ((result + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(result + 40);
    v5 = v4 + 24 * (v2 & 0x7FFFFF);
    do
    {
      for (i = *(v4 + 8); i != v4; i = *(i + 8))
      {
        if (i)
        {
          v7 = i - 8;
        }

        else
        {
          v7 = 0;
        }

        result = (*(*a2 + 24))(a2, v7, 0, 0);
      }

      v4 += 24;
    }

    while (v4 != v5);
  }

  return result;
}

unsigned int *mlir::OpBuilder::clone(mlir::OpBuilder *this, mlir::Operation *a2)
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
  v2 = mlir::OpBuilder::clone(this, a2, v4);
  MEMORY[0x25F891030](v9, 8);
  MEMORY[0x25F891030](v6, 8);
  MEMORY[0x25F891030](v4[0], 8);
  return v2;
}

void mlir::OpBuilder::cloneRegionBefore(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  mlir::Region::cloneInto(a2, a3, a4, a5);
  if (*(a1 + 8))
  {
    v9 = a2[1];
    if (v9)
    {
      v10 = v9 - 8;
    }

    else
    {
      v10 = 0;
    }

    v18 = v10;
    v11 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>,mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>::doFind<mlir::Block const*>((a5 + 24), &v18);
    v12 = 0;
    if (v11 && v11 != *(a5 + 24) + 16 * *(a5 + 40))
    {
      v12 = *(v11 + 8);
    }

    for (i = v12 + 8; i != a4; i = *(i + 8))
    {
      if (i)
      {
        v14 = i - 8;
      }

      else
      {
        v14 = 0;
      }

      (*(**(a1 + 8) + 24))(*(a1 + 8), v14, 0, 0);
      v18 = a1;
      v15 = *(v14 + 40);
      v16 = v14 + 32;
      if (v15 != v16)
      {
        do
        {
          v17 = *(v15 + 8);
          mlir::detail::walk<mlir::ForwardIterator>(v15, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::OpBuilder::cloneRegionBefore(mlir::Region &,mlir::Region &,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Block,false,false,void,false,void>,false,false>,mlir::IRMapping &)::$_0>, &v18, 0);
          v15 = v17;
        }

        while (v17 != v16);
      }
    }
  }
}

uint64_t mlir::OpBuilder::cloneRegionBefore(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5[0] = 0;
  v5[1] = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  mlir::OpBuilder::cloneRegionBefore(a1, a2, a3, a4, v5);
  MEMORY[0x25F891030](v10, 8);
  MEMORY[0x25F891030](v7, 8);
  return MEMORY[0x25F891030](v5[0], 8);
}

llvm::APFloat *llvm::APFloat::APFloat(llvm::APFloat *this, double a2)
{
  v7 = 64;
  v6 = *&a2;
  llvm::detail::IEEEFloat::initFromDoubleAPInt(&v4, &v6);
  *this = &llvm::semBogus;
  llvm::detail::IEEEFloat::operator=(this, &v4);
  if ((*(v4 + 8) - 64) <= 0xFFFFFF7F && v5)
  {
    MEMORY[0x25F891010](v5, 0x1000C8000313F17);
  }

  return this;
}

llvm::APFloat *llvm::APFloat::APFloat(llvm::APFloat *this, float a2)
{
  v7 = 32;
  v6 = LODWORD(a2);
  llvm::detail::IEEEFloat::initFromFloatAPInt(&v4, &v6);
  *this = &llvm::semBogus;
  llvm::detail::IEEEFloat::operator=(this, &v4);
  if ((*(v4 + 8) - 64) <= 0xFFFFFF7F && v5)
  {
    MEMORY[0x25F891010](v5, 0x1000C8000313F17);
  }

  return this;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>,mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>::doFind<mlir::Block const*>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *a1;
    v4 = v2 - 1;
    v5 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v6 = *(*a1 + 16 * (((*a2 >> 4) ^ (*a2 >> 9)) & v4));
    if (*a2 == v6)
    {
      return v3 + 16 * v5;
    }

    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      v6 = *(v3 + 16 * v5);
      if (*a2 == v6)
      {
        return v3 + 16 * v5;
      }
    }
  }

  return 0;
}

uint64_t llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::OpBuilder::clone(mlir::Operation&,mlir::IRMapping &)::$_0>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(**(*a1 + 8) + 16))(*(*a1 + 8), a2, 0, 0);
  v4 = *(v3 + 8);

  return notifyBlockInsertions(a2, v4);
}

uint64_t llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::OpBuilder::cloneRegionBefore(mlir::Region &,mlir::Region &,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Block,false,false,void,false,void>,false,false>,mlir::IRMapping &)::$_0>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(**(*a1 + 8) + 16))(*(*a1 + 8), a2, 0, 0);
  v4 = *(v3 + 8);

  return notifyBlockInsertions(a2, v4);
}

uint64_t mlir::ElementsAttr::isValidIndex(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  (*(a2 + 24))(a2, a1);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = a4 == 1;
  }

  if (v9 && !*a3)
  {
    return 1;
  }

  if (v8 == a4)
  {
    v10 = (*(a2 + 24))(a2, a1);
    if (a4 << 32)
    {
      v11 = 0;
      v12 = a4;
      while (1)
      {
        v13 = *(a3 + (v11 >> 29));
        if (v13 < 0 || v13 >= *(v10 + 8 * (v11 >> 32)))
        {
          break;
        }

        v11 += 0x100000000;
        if (!--v12)
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

uint64_t mlir::ElementsAttr::getFlattenedIndex(uint64_t *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = *a1;
    v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v6 = mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
  }

  else
  {
    v6 = 0;
  }

  (*(v6 + 24))(v6, a1);
  v8 = v7;
  v9 = (*(v6 + 24))(v6, a1);
  v10 = 0;
  if (v8 - 1 >= 0)
  {
    v11 = 8 * (v8 - 1);
    v12 = 1;
    do
    {
      v10 += *(a2 + v11) * v12;
      v12 *= *(v9 + v11);
      v11 -= 8;
    }

    while (v11 != -8);
  }

  return v10;
}

BOOL mlir::detail::verifyAffineMapAsLayout(_DWORD *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a3 == *a1)
  {
    v5 = 1;
  }

  else
  {
    a4(&v19, a5);
    if (v19)
    {
      mlir::Diagnostic::operator<<<53ul>(v20, "memref layout mismatch between rank and affine map: ");
      if (v19)
      {
        v17 = 5;
        v18 = a3;
        v8 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v21, &v17, 1);
        v9 = v21 + 24 * v22;
        v10 = *v8;
        *(v9 + 16) = *(v8 + 16);
        *v9 = v10;
        ++v22;
        if (v19)
        {
          mlir::Diagnostic::operator<<<5ul>(v20, " != ");
          if (v19)
          {
            v11 = *a1;
            v17 = 5;
            v18 = v11;
            v12 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v21, &v17, 1);
            v13 = v21 + 24 * v22;
            v14 = *v12;
            *(v13 + 16) = *(v12 + 16);
            *v13 = v14;
            ++v22;
          }
        }
      }
    }

    v5 = (v23 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t mlir::Diagnostic::operator<<<53ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::AffineMapAttr::get(unint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *v1;
  v9[0] = &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id;
  v9[1] = v1;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir6detail20AffineMapAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_13AffineMapAttrEJRNS1_9AffineMapEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v13[1] = v9;
  v12 = a1;
  v3 = 0x9DDFEA08EB382D69 * ((8 * a1 - 0xAE502812AA7333) ^ HIDWORD(a1));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a1) ^ (v3 >> 47) ^ v3);
  v5 = v4 ^ (v4 >> 47);
  v6 = ((0x9DDFEA08EB382D69 * v5) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ (((0x759C16B48 * v5) & 0x7FFFFFFF8) + 8));
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v2 + 560), &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::AffineMapAttrStorage * mlir::StorageUniquer::get<mlir::detail::AffineMapAttrStorage,mlir::AffineMap &>(llvm::function_ref<void ()(mlir::detail::AffineMapAttrStorage *)>,mlir::TypeID,mlir::AffineMap &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::AffineMapAttrStorage * mlir::StorageUniquer::get<mlir::detail::AffineMapAttrStorage,mlir::AffineMap &>(llvm::function_ref<void ()(mlir::detail::AffineMapAttrStorage *)>,mlir::TypeID,mlir::AffineMap &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t mlir::ArrayAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id;
  v7[1] = a1;
  v10[0] = _ZN4llvm12function_refIFvPN4mlir6detail16ArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9ArrayAttrEJNS_8ArrayRefINS1_9AttributeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_;
  v10[1] = v7;
  v9[0] = a2;
  v9[1] = a3;
  memset(v12, 0, sizeof(v12));
  memset(v11, 0, sizeof(v11));
  v13 = 0;
  v14 = 0xFF51AFD7ED558CCDLL;
  v4 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<mlir::Attribute>>(v11, 0, v11, v12, v9);
  v8 = v9;
  *&v11[0] = v9;
  *(&v11[0] + 1) = v10;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v3 + 560), &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::ArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::ArrayAttrStorage,llvm::ArrayRef<mlir::Attribute>>(llvm::function_ref<void ()(mlir::detail::ArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v8, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::ArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::ArrayAttrStorage,llvm::ArrayRef<mlir::Attribute>>(llvm::function_ref<void ()(mlir::detail::ArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::DenseArrayAttr::get(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v16[9] = *MEMORY[0x277D85DE8];
  v4 = *(**a1 + 32);
  v5 = *v4;
  v9[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  v9[1] = v4;
  v14[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeERjRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v14[1] = v9;
  v11 = a1;
  v12 = a2;
  v13[0] = a3;
  v13[1] = a4;
  memset(v16, 0, 56);
  memset(__dst, 0, sizeof(__dst));
  v16[7] = 0xFF51AFD7ED558CCDLL;
  v6 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type,long long,llvm::ArrayRef<char>>(__dst, __dst, v16, a1, &v12, v13);
  v10 = &v11;
  *&__dst[0] = &v11;
  *(&__dst[0] + 1) = v14;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v5 + 560), &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::DenseStringElementsAttr::get(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v51 = *MEMORY[0x277D85DE8];
  v7 = *(**a1 + 32);
  v8 = *v7;
  v40[0] = &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
  v40[1] = v7;
  v42[0] = _ZN4llvm12function_refIFvPN4mlir6detail30DenseStringElementsAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_23DenseStringElementsAttrEJRNS1_10ShapedTypeERNS_8ArrayRefINS_9StringRefEEEbEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v42[1] = v40;
  if (a4)
  {
    v10 = llvm::hashing::detail::hash_combine_range_impl<char const>(*a3, *a3 + *(a3 + 8), a3, a4);
    v13 = a4 - 1;
    if (a4 == 1)
    {
      *&v43 = a1;
      *(&v43 + 1) = a2;
      *&v44 = a3;
      *(&v44 + 1) = 1;
      *&v45 = v10;
      BYTE8(v45) = 1;
    }

    else
    {
      v38 = v10;
      v39 = a2;
      v14 = *a3;
      v15 = *(a3 + 8);
      v16 = 16 * a4 - 16;
      v17 = a3 + 16;
      while (v15 == *(v17 + 8) && (!v15 || !memcmp(v14, *v17, v15)))
      {
        v16 -= 16;
        v17 += 16;
        if (!--v13)
        {
          *&v43 = a1;
          *(&v43 + 1) = v39;
          *&v44 = a3;
          *(&v44 + 1) = 1;
          *&v45 = v38;
          BYTE8(v45) = 1;
          goto LABEL_27;
        }
      }

      if (v13)
      {
        v18 = 0;
        v19 = a3 + 16 * a4;
        while (1)
        {
          v20 = llvm::hashing::detail::hash_combine_range_impl<char const>(*v17, *v17 + *(v17 + 8), v11, v12);
          if (v18 > 0x38)
          {
            break;
          }

          v21 = v18 + 8;
          *(__src + v18) = v20;
          v17 += 16;
          v18 += 8;
          v16 -= 16;
          if (!v16)
          {
            goto LABEL_17;
          }
        }

        v37 = v8;
        v43 = xmmword_25D0A0610;
        v44 = xmmword_25D0A0620;
        v45 = xmmword_25D0A0630;
        v46 = 0xF7ACCA5326449396;
        llvm::hashing::detail::hash_state::mix(&v43, __src, v11, v12);
        v25 = 64;
        if (v16)
        {
          do
          {
            v26 = 0;
            while (1)
            {
              v27 = llvm::hashing::detail::hash_combine_range_impl<char const>(*v17, *v17 + *(v17 + 8), v23, v24);
              if (v26 > 0x38)
              {
                break;
              }

              v28 = v26 + 8;
              *(__src + v26) = v27;
              v17 += 16;
              v26 += 8;
              if (v17 == v19)
              {
                v29 = __src + v28;
                v17 = a3 + 16 * a4;
                goto LABEL_24;
              }
            }

            v29 = __src + v26;
            v28 = 64;
LABEL_24:
            std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,char *,char *>(__src, v29, v48);
            llvm::hashing::detail::hash_state::mix(&v43, __src, v30, v31);
            v25 += v28;
          }

          while (v17 != v19);
        }

        v22 = llvm::hashing::detail::hash_state::finalize(&v43, v25);
        v8 = v37;
      }

      else
      {
        v21 = 0;
LABEL_17:
        v22 = llvm::hashing::detail::hash_short(__src, v21, 0xFF51AFD7ED558CCDLL);
      }

      v32 = __ROR8__(v22 + 16, 16);
      v33 = 0x9DDFEA08EB382D69 * (v32 ^ ((0x9DDFEA08EB382D69 * (v38 ^ v32 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v38 ^ v32 ^ 0xFF51AFD7ED558CCDLL)));
      *&v43 = a1;
      *(&v43 + 1) = v39;
      *&v44 = a3;
      *(&v44 + 1) = a4;
      *&v45 = (0x9DDFEA08EB382D69 * (v33 ^ (v33 >> 47))) ^ v22;
      BYTE8(v45) = 0;
    }
  }

  else
  {
    *&v43 = a1;
    *(&v43 + 1) = a2;
    *&v45 = 0;
    v44 = a3;
    BYTE8(v45) = 0;
  }

LABEL_27:
  memset(v48, 0, sizeof(v48));
  memset(__src, 0, sizeof(__src));
  v49 = 0;
  v50 = 0xFF51AFD7ED558CCDLL;
  v34 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::ShapedType,llvm::hash_code>(__src, __src, v48, a1, &v45);
  v41 = &v43;
  *&__src[0] = &v43;
  *(&__src[0] + 1) = v42;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v8 + 560), &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id, v34, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseStringElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseStringElementsAttrStorage,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL>(llvm::function_ref<void ()(mlir::detail::DenseStringElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v41, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseStringElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseStringElementsAttrStorage,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL>(llvm::function_ref<void ()(mlir::detail::DenseStringElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __src);
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::FloatAttr::get(uint64_t a1, const llvm::APFloat::Storage *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(**a1 + 32);
  v3 = *v2;
  v8[0] = &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
  v8[1] = v2;
  v10[0] = _ZN4llvm12function_refIFvPN4mlir6detail16FloatAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9FloatAttrEJRNS1_4TypeERKNS_7APFloatEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_;
  v10[1] = v8;
  v11 = a1;
  llvm::APFloat::Storage::Storage(v12, a2);
  memset(v14, 0, sizeof(v14));
  memset(__dst, 0, sizeof(__dst));
  v15 = 0;
  v16 = 0xFF51AFD7ED558CCDLL;
  v4 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type,llvm::APFloat>(__dst, __dst, v14, v11, v12);
  v9 = &v11;
  *&__dst[0] = &v11;
  *(&__dst[0] + 1) = v10;
  v5 = mlir::detail::StorageUniquerImpl::getOrCreate(*(v3 + 560), &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat const&>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat const&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat const&>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat const&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
  llvm::APFloat::Storage::~Storage(v12);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t mlir::FloatAttr::get(uint64_t *a1, double a2)
{
  v3 = a1;
  v38 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    v5 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
    if (mlir::detail::InterfaceMap::lookup(v4 + 8, v5))
    {
      llvm::APFloat::APFloat(&v25, a2);
      v6 = *v3;
      v7 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
      v8 = mlir::detail::InterfaceMap::lookup(v6 + 8, v7);
      v9 = (*v8)(v8, v3);
      llvm::APFloat::convert(&v25, v9, 1, &v19);
      v10 = *(**v3 + 32);
      v11 = *v10;
      v20 = &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
      v21 = v10;
      v23 = _ZN4llvm12function_refIFvPN4mlir6detail16FloatAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9FloatAttrEJRNS1_4TypeERNS_7APFloatEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_;
      v24 = &v20;
      v27 = v3;
      llvm::APFloat::Storage::Storage(v28, &v25);
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      __dst = 0u;
      v30 = 0u;
      v36 = 0;
      v37 = 0xFF51AFD7ED558CCDLL;
      v12 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type,llvm::APFloat>(&__dst, &__dst, &v33, v27, v28);
      v22 = &v27;
      *&__dst = &v27;
      *(&__dst + 1) = &v23;
      v13 = mlir::detail::StorageUniquerImpl::getOrCreate(*(v11 + 560), &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id, v12, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat &>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v22, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat &>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &__dst);
      goto LABEL_9;
    }

    v4 = *v3;
  }

  v14 = *(*v4 + 32);
  llvm::APFloat::APFloat(&v25, a2);
  v15 = *v14;
  v20 = &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
  v21 = v14;
  v23 = _ZN4llvm12function_refIFvPN4mlir6detail16FloatAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9FloatAttrEJRNS1_4TypeENS_7APFloatEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_;
  v24 = &v20;
  v27 = v3;
  if (v25 == &llvm::semPPCDoubleDouble)
  {
    v28[0] = &llvm::semPPCDoubleDouble;
    v28[1] = v26;
    v25 = &llvm::semBogus;
    v26 = 0;
  }

  else
  {
    v28[0] = &llvm::semBogus;
    llvm::detail::IEEEFloat::operator=(v28, &v25);
    LODWORD(v3) = v27;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  __dst = 0u;
  v30 = 0u;
  v36 = 0;
  v37 = 0xFF51AFD7ED558CCDLL;
  v16 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type,llvm::APFloat>(&__dst, &__dst, &v33, v3, v28);
  v22 = &v27;
  *&__dst = &v27;
  *(&__dst + 1) = &v23;
  v13 = mlir::detail::StorageUniquerImpl::getOrCreate(*(v15 + 560), &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id, v16, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v22, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &__dst);
LABEL_9:
  llvm::APFloat::Storage::~Storage(v28);
  llvm::APFloat::Storage::~Storage(&v25);
  v17 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t mlir::IntegerAttr::get(_DWORD *a1, llvm::APInt *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v3 = *(*v2 + 32);
LABEL_6:
    v6 = *v3;
    v13[0] = &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
    v13[1] = v3;
    v18[0] = _ZN4llvm12function_refIFvPN4mlir6detail18IntegerAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_11IntegerAttrEJRNS1_4TypeERKNS_5APIntEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_;
    v18[1] = v13;
    v15 = a1;
    v17 = *(a2 + 2);
    if (v17 > 0x40)
    {
      operator new[]();
    }

    v16 = *a2;
    memset(v20, 0, sizeof(v20));
    memset(__dst, 0, sizeof(__dst));
    v21 = 0;
    v22 = 0xFF51AFD7ED558CCDLL;
    v7 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type,llvm::APInt>(__dst, __dst, v20, a1, &v16);
    v14 = &v15;
    *&__dst[0] = &v15;
    *(&__dst[0] + 1) = v18;
    v8 = mlir::detail::StorageUniquerImpl::getOrCreate(*(v6 + 560), &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id, v7, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt const&>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APInt const&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt const&>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APInt const&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
    if (v17 >= 0x41 && v16)
    {
      MEMORY[0x25F891010](v16, 0x1000C8000313F17);
    }

    goto LABEL_19;
  }

  v3 = *(*v2 + 32);
  if (a1[2] != 1)
  {
    goto LABEL_6;
  }

  v4 = *(a2 + 2);
  if (v4 > 0x40)
  {
    v5 = llvm::APInt::countLeadingZerosSlowCase(a2) == v4;
  }

  else
  {
    v5 = *a2 == 0;
  }

  v9 = v5;
  v5 = v9 == 0;
  v10 = 600;
  if (!v5)
  {
    v10 = 592;
  }

  v8 = *(*v3 + v10);
LABEL_19:
  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t mlir::IntegerAttr::get(_DWORD *a1, unint64_t a2)
{
  v2 = *a1;
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    v12 = 64;
    v11 = a2;
    v5 = *(*v2 + 32);
    v6 = *v5;
    v13 = &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
    v14 = v5;
    return mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt &>((v6 + 560), _ZN4llvm12function_refIFvPN4mlir6detail18IntegerAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_11IntegerAttrEJRNS1_4TypeERNS_5APIntEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_, &v13, a1, &v11);
  }

  else
  {
    v3 = a1[2];
    v12 = v3 & 0x3FFFFFFF;
    if ((v3 & 0x3FFFFFFFu) > 0x40)
    {
      llvm::APInt::initSlowCase(&v11);
    }

    v4 = 0xFFFFFFFFFFFFFFFFLL >> -v3;
    if ((v3 & 0x3FFFFFFF) == 0)
    {
      v4 = 0;
    }

    v11 = v4 & a2;
    v8 = *(*v2 + 32);
    v9 = *v8;
    v13 = &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
    v14 = v8;
    v7 = mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt &>((v9 + 560), _ZN4llvm12function_refIFvPN4mlir6detail18IntegerAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_11IntegerAttrEJRNS1_4TypeERNS_5APIntEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_, &v13, a1, &v11);
    if (v12 >= 0x41 && v11)
    {
      MEMORY[0x25F891010](v11, 0x1000C8000313F17);
    }
  }

  return v7;
}

uint64_t *mlir::IntegerAttr::getValue@<X0>(uint64_t *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *this;
  v4 = *(*this + 24);
  *(a2 + 8) = v4;
  if (v4 > 0x40)
  {
    operator new[]();
  }

  *a2 = *(v3 + 16);
  return this;
}

uint64_t mlir::IntegerSetAttr::get(unint64_t a1)
{
  v1 = ***(a1 + 8);
  v2 = *v1;
  v9[0] = &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id;
  v9[1] = v1;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir6detail21IntegerSetAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14IntegerSetAttrEJRNS1_10IntegerSetEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v13[1] = v9;
  v12 = a1;
  v3 = 0x9DDFEA08EB382D69 * ((8 * a1 - 0xAE502812AA7333) ^ HIDWORD(a1));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a1) ^ (v3 >> 47) ^ v3);
  v5 = v4 ^ (v4 >> 47);
  v6 = ((0x9DDFEA08EB382D69 * v5) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ (((0x759C16B48 * v5) & 0x7FFFFFFF8) + 8));
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v2 + 560), &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerSetAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerSetAttrStorage,mlir::IntegerSet &>(llvm::function_ref<void ()(mlir::detail::IntegerSetAttrStorage *)>,mlir::TypeID,mlir::IntegerSet &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerSetAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerSetAttrStorage,mlir::IntegerSet &>(llvm::function_ref<void ()(mlir::detail::IntegerSetAttrStorage *)>,mlir::TypeID,mlir::IntegerSet &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

void mlir::detail::StorageUserBase<mlir::OpaqueAttr,mlir::Attribute,mlir::detail::OpaqueAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getChecked<mlir::StringAttr,llvm::StringRef,mlir::Type>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = a6;
  v11 = a7;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  mlir::Dialect::isValidNamespace();
}

uint64_t mlir::SparseElementsAttr::get(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = *(**a1 + 32);
  v5 = *v4;
  v9[0] = &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id;
  v9[1] = v4;
  v14[0] = _ZN4llvm12function_refIFvPN4mlir6detail25SparseElementsAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_18SparseElementsAttrEJRNS1_10ShapedTypeENS1_20DenseIntElementsAttrERNS1_17DenseElementsAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_;
  v14[1] = v9;
  v11[0] = a1;
  v11[1] = a2;
  v12 = a3;
  v13 = a4;
  memset(v16, 0, sizeof(v16));
  memset(__dst, 0, sizeof(__dst));
  v17 = 0;
  v18 = 0xFF51AFD7ED558CCDLL;
  v6 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr>(__dst, __dst, v16, a1, &v12, &v13);
  v10 = v11;
  *&__dst[0] = v11;
  *(&__dst[0] + 1) = v14;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v5 + 560), &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id, v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::SparseElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::SparseElementsAttrStorage,mlir::ShapedType &,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr &>(llvm::function_ref<void ()(mlir::detail::SparseElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::SparseElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::SparseElementsAttrStorage,mlir::ShapedType &,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr &>(llvm::function_ref<void ()(mlir::detail::SparseElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::StorageUserBase<mlir::SparseElementsAttr,mlir::Attribute,mlir::detail::SparseElementsAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>::getChecked<mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr>(void (*a1)(void *__return_ptr, void), void *a2, void *a3, void **a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v61 = *MEMORY[0x277D85DE8];
  v47 = a1;
  v48 = a2;
  v45 = a4;
  v46 = a5;
  v14 = *(a7 + 16);
  v42 = *(a7 + 8);
  v43 = v14;
  v44 = a6;
  (*(v14 + 24))();
  if (v15 == 1)
  {
    v41 = *(v8 + 8);
    v37 = &v47;
    v38 = &v45;
    v39 = &v41;
    v40 = &v42;
    (*(a5 + 24))(a5, a4);
    v17 = v16;
    (*(*(&v41 + 1) + 24))(*(&v41 + 1), v41);
    if (v18 == 2)
    {
      if (*((*(*(&v41 + 1) + 24))(*(&v41 + 1), v41) + 8) != v17)
      {
LABEL_16:
        mlir::SparseElementsAttr::verify(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>,mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr)::$_0::operator()(&__dst, &v37);
        goto LABEL_17;
      }
    }

    else if (v18 != 1 || v17 != 1)
    {
      goto LABEL_16;
    }

    v19 = *(*(*(&v41 + 1) + 24))(*(&v41 + 1), v41);
    if (v19 == *(*(v43 + 24))(v43, v42))
    {
      v35 = a3;
      v36[0] = &v47;
      v36[1] = &v45;
      mlir::DenseElementsAttr::tryGetValues<unsigned long long,void>(&v44, &__dst);
      v20 = __dst;
      v21 = BYTE8(__dst);
      v22 = v54;
      if (*(v44 + 24))
      {
        if (BYTE8(__dst))
        {
          v23 = 0;
        }

        else
        {
          v23 = v54;
        }

        v49 = &v51;
        v50 = 0x600000000;
        llvm::SmallVectorImpl<unsigned long long>::assign(&v49, v17, *(__dst + 8 * v23));
        if (mlir::ElementsAttr::isValidIndex(v45, v46, v49, v50))
        {
          v24 = 1;
        }

        else
        {
          mlir::SparseElementsAttr::verify(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>,mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr)::$_1::operator()(&__dst, v36, 0, v49, v50);
          v24 = v60 ^ 1;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&__dst);
        }

        a3 = v35;
        if (v49 != &v51)
        {
          free(v49);
        }

        if ((v24 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v34 = v8;
        if (v19)
        {
          v27 = 0;
          while (1)
          {
            v28 = (v21 & 1) != 0 ? 0 : v22;
            v29 = (v20 + 8 * v28);
            if (!mlir::ElementsAttr::isValidIndex(v45, v46, v29, v17))
            {
              break;
            }

            ++v27;
            v22 += v17;
            if (v19 == v27)
            {
              goto LABEL_26;
            }
          }

          mlir::SparseElementsAttr::verify(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>,mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr)::$_1::operator()(&__dst, v36, v27, v29, v17);
          v30 = v60;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&__dst);
          v8 = v34;
          a3 = v35;
          if (v30)
          {
            goto LABEL_18;
          }
        }

        else
        {
LABEL_26:
          v8 = v34;
          a3 = v35;
        }
      }

LABEL_33:
      v31 = *a3;
      v47 = &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id;
      v48 = a3;
      v37 = _ZN4llvm12function_refIFvPN4mlir6detail25SparseElementsAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_18SparseElementsAttrEJRNS1_10ShapedTypeERNS1_20DenseIntElementsAttrERNS1_17DenseElementsAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
      v38 = &v47;
      v49 = a4;
      v50 = a5;
      v51 = v8;
      v52[0] = a7;
      v56 = 0u;
      memset(v57, 0, sizeof(v57));
      v54 = 0u;
      v55 = 0u;
      __dst = 0u;
      v58 = 0;
      v59 = 0xFF51AFD7ED558CCDLL;
      v32 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr>(&__dst, &__dst, v57, a4, &v51, v52);
      v45 = &v49;
      *&__dst = &v49;
      *(&__dst + 1) = &v37;
      result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v31 + 560), &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id, v32, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::SparseElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::SparseElementsAttrStorage,mlir::ShapedType &,mlir::DenseIntElementsAttr &,mlir::DenseElementsAttr &>(llvm::function_ref<void ()(mlir::detail::SparseElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DenseIntElementsAttr &,mlir::DenseElementsAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v45, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::SparseElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::SparseElementsAttrStorage,mlir::ShapedType &,mlir::DenseIntElementsAttr &,mlir::DenseElementsAttr &>(llvm::function_ref<void ()(mlir::detail::SparseElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DenseIntElementsAttr &,mlir::DenseElementsAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &__dst);
      goto LABEL_34;
    }

    goto LABEL_16;
  }

  a1(&__dst, a2);
  if (__dst)
  {
    mlir::Diagnostic::operator<<<46ul>(&__dst + 8, "expected 1-d tensor for sparse element values");
  }

LABEL_17:
  v25 = v60;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&__dst);
  if ((v25 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_18:
  result = 0;
LABEL_34:
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::StridedLayoutAttr::get(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v8[0] = &mlir::detail::TypeIDResolver<mlir::StridedLayoutAttr,void>::id;
  v8[1] = a1;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir6detail24StridedLayoutAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_17StridedLayoutAttrEJxNS_8ArrayRefIxEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v12[1] = v8;
  v10 = a2;
  v11[0] = a3;
  v11[1] = a4;
  memset(v14, 0, sizeof(v14));
  v15 = 0xFF51AFD7ED558CCDLL;
  v13 = a2;
  v5 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<long long>>(&v13, 0, v14, &v14[3] + 1, v11);
  v9 = &v10;
  v13 = &v10;
  *&v14[0] = v12;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v4 + 560), &mlir::detail::TypeIDResolver<mlir::StridedLayoutAttr,void>::id, v5, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::StridedLayoutAttrStorage * mlir::StorageUniquer::get<mlir::detail::StridedLayoutAttrStorage,long long,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::detail::StridedLayoutAttrStorage *)>,mlir::TypeID,long long,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::StridedLayoutAttrStorage * mlir::StorageUniquer::get<mlir::detail::StridedLayoutAttrStorage,long long,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::detail::StridedLayoutAttrStorage *)>,mlir::TypeID,long long,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v13);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::SymbolRefAttr::get(uint64_t a1, unsigned int *a2, uint64_t a3, unint64_t *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = *(**a1 + 32);
  v6 = *v5;
  v23[0] = &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id;
  v23[1] = v5;
  v25[0] = _ZN4llvm12function_refIFvPN4mlir6detail20SymbolRefAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_13SymbolRefAttrEJRNS1_10StringAttrERNS_8ArrayRefINS1_17FlatSymbolRefAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v25[1] = v23;
  v24[0] = a1;
  v24[1] = a2;
  v24[2] = a3;
  memset(&v28[1], 0, 112);
  v28[15] = 0xFF51AFD7ED558CCDLL;
  v28[0] = (a1 >> 4) ^ (a1 >> 9);
  if (a3)
  {
    v7 = a2;
    v8 = 0;
    v9 = &a2[2 * a3];
    while (v8 <= 0x38)
    {
      v10 = v8 + 8;
      v11 = *v7;
      v7 += 2;
      *&__src[v8] = (v11 >> 4) ^ (v11 >> 9);
      v8 = v10;
      if (8 * a3 == v10)
      {
        goto LABEL_7;
      }
    }

    v26[0] = xmmword_25D0A0610;
    v26[1] = xmmword_25D0A0620;
    v26[2] = xmmword_25D0A0630;
    v27 = 0xF7ACCA5326449396;
    llvm::hashing::detail::hash_state::mix(v26, __src, 0xFF51AFD7ED558CCDLL, a4);
    if (v8 == 8 * a3)
    {
      v13 = 64;
    }

    else
    {
      v13 = 64;
      do
      {
        v14 = 0;
        do
        {
          v15 = *v7;
          v7 += 2;
          v16 = v14 + 8;
          *&__src[v14] = (v15 >> 4) ^ (v15 >> 9);
          if (v7 == v9)
          {
            break;
          }

          v17 = v14 >= 0x31;
          v14 += 8;
        }

        while (!v17);
        std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,char *,char *>(__src, &__src[v16], &v30);
        llvm::hashing::detail::hash_state::mix(v26, __src, v18, v19);
        v13 += v16;
      }

      while (v7 != v9);
    }

    v12 = llvm::hashing::detail::hash_state::finalize(v26, v13);
  }

  else
  {
    v10 = 0;
LABEL_7:
    v12 = llvm::hashing::detail::hash_short(__src, v10, 0xFF51AFD7ED558CCDLL);
  }

  v28[1] = v12;
  v20 = llvm::hashing::detail::hash_combine_recursive_helper::combine(v28, 0, &v28[2], &v28[8]);
  *__src = v24;
  v28[0] = v24;
  v28[1] = v25;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v6 + 560), &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id, v20, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, __src, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v28);
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::TypeAttr::get(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = *(**a1 + 32);
  v2 = *v1;
  v6[0] = &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id;
  v6[1] = v1;
  v9[0] = _ZN4llvm12function_refIFvPN4mlir6detail15TypeAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_8TypeAttrEJRNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v9[1] = v6;
  v8 = a1;
  memset(v11, 0, sizeof(v11));
  memset(v10, 0, sizeof(v10));
  v12 = 0;
  v13 = 0xFF51AFD7ED558CCDLL;
  v3 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type>(v10, 0, v10, v11, &v8);
  v7 = &v8;
  *&v10[0] = &v8;
  *(&v10[0] + 1) = v9;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v2 + 560), &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id, v3, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::TypeAttrStorage * mlir::StorageUniquer::get<mlir::detail::TypeAttrStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::TypeAttrStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v7, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::TypeAttrStorage * mlir::StorageUniquer::get<mlir::detail::TypeAttrStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::TypeAttrStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t dictionaryAttrSort<false>(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a2 != 2)
  {
    if (a2 != 1)
    {
      if (!a2)
      {
        result = 0;
        *(a3 + 8) = 0;
        goto LABEL_17;
      }

      v9 = 16 * a2;
      *(a3 + 8) = 0;
      llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(a3, a1, &a1[a2]);
      v10 = a1 + 1;
      v11 = v9 - 16;
      while (v11)
      {
        *&v16 = *v10;
        v12 = mlir::StringAttr::compare(&v16, *(v10 - 2));
        v10 += 2;
        v11 -= 16;
        if (v12 < 0)
        {
          v13 = *(a3 + 8);
          if (v13 >= 2)
          {
            qsort(*a3, v13, 0x10uLL, llvm::array_pod_sort_comparator<mlir::NamedAttribute>);
          }

          goto LABEL_13;
        }
      }

LABEL_16:
      result = 0;
      goto LABEL_17;
    }

    v16 = *a1;
    *(a3 + 8) = 0;
    v6 = &v17;
LABEL_15:
    llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(a3, &v16, v6);
    goto LABEL_16;
  }

  v8 = a1 + 1;
  v7 = *(a1 + 2);
  *&v16 = *a1;
  if ((mlir::StringAttr::compare(&v16, v7) & 0x80000000) != 0)
  {
    v14 = *v8;
    v16 = *a1;
    v17 = v14;
    *(a3 + 8) = 0;
    v6 = v18;
    goto LABEL_15;
  }

  v16 = *v8;
  v17 = *a1;
  *(a3 + 8) = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(a3, &v16, v18);
LABEL_13:
  result = 1;
LABEL_17:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t dictionaryAttrSort<true>(uint64_t *a1, unint64_t a2, void **a3)
{
  if (a2 < 2)
  {
    return 0;
  }

  if (a2 != 2)
  {
    v7 = a1 + 2;
    for (i = 16 * a2 - 16; i; i -= 16)
    {
      v11 = *v7;
      v9 = mlir::StringAttr::compare(&v11, *(v7 - 2));
      v7 += 2;
      if (v9 < 0)
      {
        v10 = *(a3 + 2);
        if (v10 >= 2)
        {
          qsort(*a3, v10, 0x10uLL, llvm::array_pod_sort_comparator<mlir::NamedAttribute>);
        }

        return 1;
      }
    }

    return 0;
  }

  v11 = *a1;
  if ((mlir::StringAttr::compare(&v11, a1[2]) & 0x80000000) != 0)
  {
    return 0;
  }

  v5 = *a3;
  v6 = **a3;
  *v5 = *(*a3 + 1);
  v5[1] = v6;
  return 1;
}

uint64_t mlir::DictionaryAttr::findDuplicate@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = result;
  if ((a2 & 1) == 0)
  {
    result = dictionaryAttrSort<true>(*result, *(result + 8), result);
  }

  v5 = *(v3 + 8);
  if (v5 > 1)
  {
    v6 = *v3;
    if (v5 == 2)
    {
      if (*v6 == v6[2])
      {
LABEL_12:
        *a3 = *v6;
        *(a3 + 16) = 1;
        return result;
      }
    }

    else
    {
      v7 = 16 * v5 + 16;
      while (v7 != 32)
      {
        v8 = v6 + 2;
        v9 = *v6;
        v10 = v6[2];
        v7 -= 16;
        v6 += 2;
        if (v9 == v10)
        {
          if (!v7)
          {
            break;
          }

          v6 = v8 - 2;
          goto LABEL_12;
        }
      }
    }
  }

  *a3 = 0;
  *(a3 + 16) = 0;
  return result;
}

uint64_t mlir::DictionaryAttr::get(uint64_t *a1, __int128 *a2, uint64_t a3)
{
  v16[16] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v14 = v16;
    v15 = 0x800000000;
    v6 = dictionaryAttrSort<false>(a2, a3, &v14);
    if (v6)
    {
      v7 = v15;
    }

    else
    {
      v7 = a3;
    }

    if (v6)
    {
      v8 = v14;
    }

    else
    {
      v8 = a2;
    }

    v9 = *a1;
    v13[0] = &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id;
    v13[1] = a1;
    v10 = mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute> &>((v9 + 560), _ZN4llvm12function_refIFvPN4mlir6detail21DictionaryAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DictionaryAttrEJRNS_8ArrayRefINS1_14NamedAttributeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_, v13, v8, v7);
    if (v14 != v16)
    {
      free(v14);
    }
  }

  else
  {
    v10 = *(*a1 + 624);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t mlir::DictionaryAttr::getWithSorted(uint64_t *a1, unint64_t *a2, uint64_t a3)
{
  if (!a3)
  {
    return *(*a1 + 624);
  }

  v3 = *a1;
  v5[0] = &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id;
  v5[1] = a1;
  return mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute> &>((v3 + 560), _ZN4llvm12function_refIFvPN4mlir6detail21DictionaryAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DictionaryAttrEJRNS_8ArrayRefINS1_14NamedAttributeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_, v5, a2, a3);
}

uint64_t mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = a1;
  v5 = (a2 - a1) >> 4;
  if (v5 >= 1)
  {
    do
    {
      v8 = v4 + 16 * (v5 >> 1);
      v11 = *(*v8 + 16);
      v9 = llvm::StringRef::compare(&v11, a3, a4);
      if (v9 < 0)
      {
        v4 = v8 + 16;
        v5 += ~(v5 >> 1);
      }

      else
      {
        v5 = v5 >> 1;
        if (!v9)
        {
          return v8;
        }
      }
    }

    while (v5 > 0);
  }

  return v4;
}

uint64_t mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (a2 - result >= 257)
  {
    return mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(result, a2, *(a3 + 16), *(a3 + 24));
  }

  if (result == a2)
  {
    return a2;
  }

  while (*v3 != a3)
  {
    v3 += 2;
    result += 16;
    if (v3 == a2)
    {
      return a2;
    }
  }

  return result;
}

uint64_t mlir::DictionaryAttr::getEmptyUnchecked(mlir::DictionaryAttr *this, mlir::MLIRContext *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v6[0] = &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id;
  v6[1] = this;
  v9[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DictionaryAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DictionaryAttrEJNS_8ArrayRefINS1_14NamedAttributeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_;
  v9[1] = v6;
  v8[0] = 0;
  v8[1] = 0;
  memset(v11, 0, sizeof(v11));
  memset(v10, 0, sizeof(v10));
  v12 = 0;
  v13 = 0xFF51AFD7ED558CCDLL;
  v3 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<mlir::NamedAttribute>>(v10, v10, v11, 0, 0);
  v7 = v8;
  *&v10[0] = v8;
  *(&v10[0] + 1) = v9;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v2 + 560), &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id, v3, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DictionaryAttrStorage * mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute>>(llvm::function_ref<void ()(mlir::detail::DictionaryAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::NamedAttribute> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v7, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DictionaryAttrStorage * mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute>>(llvm::function_ref<void ()(mlir::detail::DictionaryAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::NamedAttribute> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *mlir::StridedLayoutAttr::print(llvm::raw_ostream *this, llvm::raw_ostream *a2)
{
  v3 = this;
  v4 = *(a2 + 4);
  if ((*(a2 + 3) - v4) > 8)
  {
    *(v4 + 8) = 91;
    *v4 = *"strided<[";
    *(a2 + 4) += 9;
  }

  else
  {
    this = llvm::raw_ostream::write(a2, "strided<[", 9uLL);
  }

  v5 = *(*v3 + 24);
  if (v5)
  {
    v6 = *(*v3 + 16);
    if (*v6 == 0x8000000000000000)
    {
      v7 = *(a2 + 4);
      if (*(a2 + 3) == v7)
      {
        this = llvm::raw_ostream::write(a2, "?", 1uLL);
      }

      else
      {
        *v7 = 63;
        ++*(a2 + 4);
      }
    }

    else
    {
      this = llvm::write_integer(a2, *v6, 0, 0);
    }

    if (v5 != 1)
    {
      v8 = v6 + 1;
      v9 = 8 * v5 - 8;
      do
      {
        v10 = *(a2 + 4);
        if (*(a2 + 3) - v10 > 1uLL)
        {
          *v10 = 8236;
          *(a2 + 4) += 2;
        }

        else
        {
          this = llvm::raw_ostream::write(a2, ", ", 2uLL);
        }

        if (*v8 == 0x8000000000000000)
        {
          v11 = *(a2 + 4);
          if (*(a2 + 3) == v11)
          {
            this = llvm::raw_ostream::write(a2, "?", 1uLL);
          }

          else
          {
            *v11 = 63;
            ++*(a2 + 4);
          }
        }

        else
        {
          this = llvm::write_integer(a2, *v8, 0, 0);
        }

        ++v8;
        v9 -= 8;
      }

      while (v9);
    }
  }

  v12 = *(a2 + 4);
  if (*(a2 + 3) == v12)
  {
    this = llvm::raw_ostream::write(a2, "]", 1uLL);
  }

  else
  {
    *v12 = 93;
    ++*(a2 + 4);
  }

  if (*(*v3 + 8))
  {
    v13 = *(a2 + 4);
    if ((*(a2 + 3) - v13) > 9)
    {
      *(v13 + 8) = 8250;
      *v13 = *", offset: ";
      *(a2 + 4) += 10;
    }

    else
    {
      this = llvm::raw_ostream::write(a2, ", offset: ", 0xAuLL);
    }

    v14 = *(*v3 + 8);
    if (v14 == 0x8000000000000000)
    {
      v15 = *(a2 + 4);
      if (*(a2 + 3) == v15)
      {
        this = llvm::raw_ostream::write(a2, "?", 1uLL);
      }

      else
      {
        *v15 = 63;
        ++*(a2 + 4);
      }
    }

    else
    {
      this = llvm::write_integer(a2, v14, 0, 0);
    }
  }

  v16 = *(a2 + 4);
  if (*(a2 + 3) == v16)
  {

    return llvm::raw_ostream::write(a2, ">", 1uLL);
  }

  else
  {
    *v16 = 62;
    ++*(a2 + 4);
  }

  return this;
}

uint64_t mlir::makeStridedLinearLayoutMap(uint64_t a1, uint64_t a2, mlir *this, void *a4)
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (this == 0x8000000000000000)
  {
    AffineDimOrSymbol = getAffineDimOrSymbol(7u, 0, a4);
    v8 = 1;
  }

  else
  {
    AffineDimOrSymbol = mlir::getAffineConstantExpr(this, a4, this);
    v8 = 0;
  }

  v19 = AffineDimOrSymbol;
  if (a2)
  {
    v9 = 0;
    v10 = 8 * a2;
    do
    {
      v11 = *(a1 + 8 * v9);
      v20[0] = getAffineDimOrSymbol(6u, v9, a4);
      if (v11 == 0x8000000000000000)
      {
        AffineConstantExpr = getAffineDimOrSymbol(7u, v8, a4);
        v8 = (v8 + 1);
      }

      else
      {
        AffineConstantExpr = mlir::getAffineConstantExpr(v11, a4, v12);
      }

      v15 = mlir::AffineExpr::operator*(v20, AffineConstantExpr, v14);
      AffineDimOrSymbol = mlir::AffineExpr::operator+(&v19, v15, v16);
      v19 = AffineDimOrSymbol;
      ++v9;
      v10 -= 8;
    }

    while (v10);
  }

  v20[0] = AffineDimOrSymbol;
  result = mlir::AffineMap::getImpl(a2, v8, v20, 1, *AffineDimOrSymbol);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::StringAttr::getEmptyStringAttrUnchecked(mlir::StringAttr *this, mlir::MLIRContext *a2)
{
  v3 = *this;
  v4 = *(*this + 528);
  if (!v4)
  {
    v5 = *(v3 + 384);
    v12[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v4 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v5 + 232), v12);
    v3 = *this;
  }

  v9[0] = &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id;
  v9[1] = this;
  v6 = *(v3 + 560);
  v13[0] = _ZN4llvm12function_refIFvPN4mlir6detail17StringAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_10StringAttrEJRA1_KcNS1_8NoneTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_;
  v13[1] = v9;
  v12[0] = &byte_25D0A27DF;
  v12[1] = 0;
  v12[2] = v4;
  v7 = 0xBF58476D1CE4E5B9 * ((v4 >> 4) ^ (v4 >> 9));
  v10[0] = v12;
  v10[1] = v13;
  v11 = v12;
  return mlir::detail::StorageUniquerImpl::getOrCreate(v6, &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id, ((v7 + 0xCA913F200000000) >> 31) ^ v7, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::StringAttrStorage * mlir::StorageUniquer::get<mlir::detail::StringAttrStorage,char const(&)[1],mlir::NoneType>(llvm::function_ref<void ()(mlir::detail::StringAttrStorage *)>,mlir::TypeID,char const(&)[1],mlir::NoneType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::StringAttrStorage * mlir::StorageUniquer::get<mlir::detail::StringAttrStorage,char const(&)[1],mlir::NoneType>(llvm::function_ref<void ()(mlir::detail::StringAttrStorage *)>,mlir::TypeID,char const(&)[1],mlir::NoneType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t mlir::StringAttr::get(mlir::StringAttr *this, mlir::MLIRContext *a2, const llvm::Twine *a3)
{
  v23[4] = *MEMORY[0x277D85DE8];
  if (*(a2 + 32) > 1u)
  {
    v21 = v23;
    v22 = xmmword_25D0A05C0;
    v7 = llvm::Twine::toStringRef(a2, &v21);
    v9 = v8;
    v10 = *this;
    v11 = *(*this + 528);
    if (!v11)
    {
      v12 = *(v10 + 384);
      v19[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
      v11 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v12 + 232), v19);
      v10 = *this;
    }

    v16[0] = &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id;
    v16[1] = this;
    v20[0] = _ZN4llvm12function_refIFvPN4mlir6detail17StringAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_10StringAttrEJNS_9StringRefENS1_8NoneTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
    v20[1] = v16;
    v19[0] = v7;
    v19[1] = v9;
    v19[2] = v11;
    v13 = 0xBF58476D1CE4E5B9 * ((v11 >> 4) ^ (v11 >> 9) | (llvm::hashing::detail::hash_combine_range_impl<char const>(v7, v7 + v9, v5, v6) << 32));
    v17[0] = v19;
    v17[1] = v20;
    v18 = v19;
    v4 = mlir::detail::StorageUniquerImpl::getOrCreate(*(v10 + 560), &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id, (v13 >> 31) ^ v13, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::StringAttrStorage * mlir::StorageUniquer::get<mlir::detail::StringAttrStorage,llvm::StringRef,mlir::NoneType>(llvm::function_ref<void ()(mlir::detail::StringAttrStorage *)>,mlir::TypeID,llvm::StringRef,mlir::NoneType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v18, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::StringAttrStorage * mlir::StorageUniquer::get<mlir::detail::StringAttrStorage,llvm::StringRef,mlir::NoneType>(llvm::function_ref<void ()(mlir::detail::StringAttrStorage *)>,mlir::TypeID,llvm::StringRef,mlir::NoneType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v17);
    if (v21 != v23)
    {
      free(v21);
    }
  }

  else
  {
    v4 = *(*this + 632);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t llvm::Twine::toStringRef(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 33) == 1)
  {
    v3 = *(a1 + 32);
    if ((v3 - 3) < 4 || v3 == 1)
    {
      return llvm::Twine::getSingleStringRef(a1);
    }
  }

  llvm::Twine::toVector(a1, a2);
  result = *a2;
  v6 = a2[1];
  return result;
}

uint64_t mlir::StringAttr::get(uint64_t a1, uint64_t a2)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = xmmword_25D0A05C0;
  v3 = *(**a2 + 32);
  v4 = llvm::Twine::toStringRef(a1, &v18);
  v5 = *v3;
  v13[0] = &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id;
  v13[1] = v3;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir6detail17StringAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_10StringAttrEJNS_9StringRefERNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_;
  v17[1] = v13;
  v16[0] = v4;
  v16[1] = v6;
  v16[2] = a2;
  v9 = 0xBF58476D1CE4E5B9 * ((a2 >> 4) ^ (a2 >> 9) | (llvm::hashing::detail::hash_combine_range_impl<char const>(v4, v4 + v6, v7, v8) << 32));
  v14[0] = v16;
  v14[1] = v17;
  v15 = v16;
  v10 = mlir::detail::StorageUniquerImpl::getOrCreate(*(v5 + 560), &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id, (v9 >> 31) ^ v9, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::StringAttrStorage * mlir::StorageUniquer::get<mlir::detail::StringAttrStorage,llvm::StringRef,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::StringAttrStorage *)>,mlir::TypeID,llvm::StringRef,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::StringAttrStorage * mlir::StorageUniquer::get<mlir::detail::StringAttrStorage,llvm::StringRef,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::StringAttrStorage *)>,mlir::TypeID,llvm::StringRef,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v14);
  if (v18 != v20)
  {
    free(v18);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

double mlir::FloatAttr::getValueAsDouble(mlir::FloatAttr *this)
{
  v4[3] = *MEMORY[0x277D85DE8];
  llvm::APFloat::Storage::Storage(v4, (*this + 16));
  ValueAsDouble = mlir::FloatAttr::getValueAsDouble(v4);
  llvm::APFloat::Storage::~Storage(v4);
  v2 = *MEMORY[0x277D85DE8];
  return ValueAsDouble;
}

double mlir::FloatAttr::getValueAsDouble(llvm::APFloat *a1)
{
  if (*a1 != &llvm::semIEEEdouble)
  {
    llvm::APFloat::convert(a1, &llvm::semIEEEdouble, 1, &v3);
  }

  return llvm::APFloat::convertToDouble(a1);
}

uint64_t mlir::SymbolRefAttr::get(mlir::SymbolRefAttr *this, mlir::Operation *a2)
{
  Attr = mlir::Operation::getAttr(this, "sym_name", 8uLL);
  if (Attr && *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    Attr = 0;
  }

  return mlir::SymbolRefAttr::get(Attr, 0, 0, v3);
}

uint64_t mlir::IntegerAttr::getInt(mlir::IntegerAttr *this)
{
  v1 = *(*this + 24);
  if (v1 > 0x40)
  {
    operator new[]();
  }

  if (v1)
  {
    return (*(*this + 16) << -v1) >> -v1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::IntegerAttr::getSInt(mlir::IntegerAttr *this)
{
  v1 = *(*this + 24);
  if (v1 > 0x40)
  {
    operator new[]();
  }

  if (v1)
  {
    return (*(*this + 16) << -v1) >> -v1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::IntegerAttr::getUInt(mlir::IntegerAttr *this)
{
  if (*(*this + 24) > 0x40u)
  {
    operator new[]();
  }

  return *(*this + 16);
}

uint64_t mlir::IntegerAttr::getBoolAttrUnchecked(uint64_t a1, unsigned int a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(**a1 + 32);
  v3 = *v2;
  v8[0] = &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
  v8[1] = v2;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir6detail18IntegerAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_11IntegerAttrEJRNS1_11IntegerTypeENS_5APIntEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_;
  v13[1] = v8;
  v12 = 1;
  v10 = a1;
  v11 = a2;
  memset(v15, 0, sizeof(v15));
  memset(__dst, 0, sizeof(__dst));
  v16 = 0;
  v17 = 0xFF51AFD7ED558CCDLL;
  v4 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type,llvm::APInt>(__dst, __dst, v15, a1, &v11);
  v9 = &v10;
  *&__dst[0] = &v10;
  *(&__dst[0] + 1) = v13;
  v5 = mlir::detail::StorageUniquerImpl::getOrCreate(*(v3 + 560), &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::IntegerType &,llvm::APInt>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::IntegerType &,llvm::APInt &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::IntegerType &,llvm::APInt>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::IntegerType &,llvm::APInt &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
  if (v12 >= 0x41 && v11)
  {
    MEMORY[0x25F891010](v11, 0x1000C8000313F17);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t mlir::DenseElementsAttr::AttributeElementIterator::operator*(void *a1)
{
  v55 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 8);
  v4 = (*(*(*a1 + 16) + 8))();
  v5 = v4;
  v6 = *(*v4 + 136);
  if (v4)
  {
    v7 = v6 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id;
  }

  else
  {
    v7 = 0;
  }

  if (v7 || v6 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    v21 = a1[1];
    v22 = *(v2 + 24);
    __src = *(v2 + 32);
    v49 = v22;
    v50 = v21;
    v23 = *(v2 + 8);
    v24 = (*(*(v2 + 16) + 8))();
    DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(v24);
    mlir::DenseElementsAttr::IntElementIterator::operator*(&__src, v53);
    v19 = mlir::IntegerAttr::get(v5, v53);
    if (DWORD2(v53[0]) < 0x41 || !*&v53[0])
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v8 = llvm::DefaultDoCastIfPossible<mlir::FloatType,mlir::Type,llvm::CastInfo<mlir::FloatType,mlir::Type,void>>::doCastIfPossible(v4);
  if (v8)
  {
    v10 = v8;
    v11 = v9;
    v12 = a1[1];
    v13 = *(v2 + 32);
    v14 = *(v2 + 24);
    v15 = *(v2 + 8);
    v16 = (*(*(v2 + 16) + 8))();
    v17 = mlir::detail::getDenseElementBitWidth(v16);
    v18 = (*v11)(v11, v10);
    __src = v13;
    v49 = v14;
    v50 = v12;
    DenseElementBitWidth = v17;
    v52 = v18;
    llvm::mapped_iterator_base<mlir::DenseElementsAttr::FloatElementIterator,mlir::DenseElementsAttr::IntElementIterator,llvm::APFloat>::operator*(&__src, v53);
    v19 = mlir::FloatAttr::get(v5, v53);
    p_src = v53;
LABEL_8:
    llvm::APFloat::Storage::~Storage(p_src);
    goto LABEL_16;
  }

  if (*(*v5 + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v25 = *(v2 + 32);
    if ((*(v2 + 24) & 1) == 0)
    {
      v25 += 16 * a1[1];
    }

    LOWORD(v52) = 261;
    v27 = *v25;
    v26 = *(v25 + 8);
    __src = v27;
    v49 = v26;
    v19 = mlir::StringAttr::get(&__src, v5);
    goto LABEL_16;
  }

  v30 = *(v5 + 8);
  v31 = a1[1];
  v32 = *(v2 + 24);
  *&v45 = *(v2 + 32);
  *(&v45 + 1) = v32;
  *&v46 = v31;
  v33 = *(v2 + 8);
  v34 = (*(*(v2 + 16) + 8))();
  *(&v46 + 1) = mlir::detail::getDenseElementBitWidth(*(v34 + 8));
  v35 = *v30;
  if (*(*v30 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v36 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
    v37 = mlir::detail::InterfaceMap::lookup(v35 + 8, v36);
    v38 = (*v37)(v37, v30);
    v53[0] = v45;
    v53[1] = v46;
    v54 = v38;
    llvm::mapped_iterator_base<mlir::DenseElementsAttr::ComplexFloatElementIterator,mlir::DenseElementsAttr::ComplexIntElementIterator,std::complex<llvm::APFloat>>::operator*(v53, &__src);
    llvm::APFloat::Storage::Storage(v47, &__src);
    v39 = mlir::FloatAttr::get(v30, v47);
    llvm::APFloat::Storage::~Storage(v47);
    llvm::APFloat::Storage::Storage(v47, &DenseElementBitWidth);
    v40 = mlir::FloatAttr::get(v30, v47);
    llvm::APFloat::Storage::~Storage(v47);
    v41 = *(**v5 + 32);
    v47[0] = v39;
    v47[1] = v40;
    v19 = mlir::ArrayAttr::get(v41, v47, 2);
    llvm::APFloat::Storage::~Storage(&DenseElementBitWidth);
    p_src = &__src;
    goto LABEL_8;
  }

  mlir::DenseElementsAttr::ComplexIntElementIterator::operator*(&v45, &__src);
  DWORD2(v53[0]) = v49;
  if (v49 > 0x40)
  {
    operator new[]();
  }

  *&v53[0] = __src;
  v42 = mlir::IntegerAttr::get(v30, v53);
  DWORD2(v53[0]) = DenseElementBitWidth;
  if (DenseElementBitWidth > 0x40)
  {
    operator new[]();
  }

  *&v53[0] = v50;
  v43 = mlir::IntegerAttr::get(v30, v53);
  v44 = *(**v5 + 32);
  *&v53[0] = v42;
  *(&v53[0] + 1) = v43;
  v19 = mlir::ArrayAttr::get(v44, v53, 2);
  if (DenseElementBitWidth >= 0x41 && v50)
  {
    MEMORY[0x25F891010](v50, 0x1000C8000313F17);
  }

  if (v49 >= 0x41 && __src)
  {
LABEL_11:
    MEMORY[0x25F891010]();
  }

LABEL_16:
  v28 = *MEMORY[0x277D85DE8];
  return v19;
}

unsigned __int8 *mlir::DenseElementsAttr::IntElementIterator::operator*@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 16);
  }

  v5 = *(a1 + 24);
  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = (v5 - (v5 != 0) + 8 * (v5 != 0)) & 0xFFFFFFFFFFFFFFF8;
  }

  return readBits(v3, v6 * v4, v5, a2);
}

uint64_t mlir::DenseElementsAttr::ComplexIntElementIterator::operator*@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = (v4 - (v4 != 0) + 8 * (v4 != 0)) & 0xFFFFFFFFFFFFFFF8;
  }

  if (*(a1 + 8))
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a1 + 16);
  }

  v7 = v5 * v6;
  readBits(*a1, 2 * v5 * v6, v4, &v11);
  readBits(*a1, v5 + 2 * v7, *(a1 + 24), &v9);
  result = std::complex<llvm::APInt>::complex[abi:nn200100](a2, &v11, &v9);
  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {
      result = MEMORY[0x25F891010](v9, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      return MEMORY[0x25F891010](v11, 0x1000C8000313F17);
    }
  }

  return result;
}

unint64_t mlir::detail::getDenseElementBitWidth(uint64_t *a1)
{
  v4 = a1;
  v1 = *(*a1 + 136);
  if (v1 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(a1[1]);
    return (2 * (DenseElementBitWidth - (DenseElementBitWidth != 0) + 8 * (DenseElementBitWidth != 0))) & 0xFFFFFFFFFFFFFFF0;
  }

  else if (v1 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 64;
  }

  else
  {
    return mlir::Type::getIntOrFloatBitWidth(&v4);
  }
}

unsigned __int8 *readBits@<X0>(unsigned __int8 *result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  if (a3 == 1)
  {
    v5 = (result[a2 >> 3] >> (a2 & 7)) & 1;
    a4[2] = 1;
    *a4 = v5;
  }

  else
  {
    a4[2] = a3;
    if (a3 >= 0x41)
    {
      operator new[]();
    }

    v6 = a3 - (a3 != 0);
    *a4 = 0;
    if (a3)
    {
      v7 = (v6 >> 3) + 1;
    }

    else
    {
      v7 = v6 >> 3;
    }

    if (v7)
    {
      v8 = &result[a2 >> 3];

      return memcpy(a4, v8, v7);
    }
  }

  return result;
}

uint64_t mlir::InFlightDiagnostic::operator<<<long long &>(uint64_t a1, uint64_t *a2)
{
  if (*a1)
  {
    v3 = *a2;
    v8 = 2;
    v9 = v3;
    v4 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 24, &v8, 1);
    v5 = *(a1 + 24) + 24 * *(a1 + 32);
    v6 = *v4;
    *(v5 + 16) = *(v4 + 16);
    *v5 = v6;
    ++*(a1 + 32);
  }

  return a1;
}

uint64_t mlir::detail::DenseArrayAttrImpl<BOOL>::get(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = mlir::IntegerType::get(a1, 1, 0);
  *&v9 = a2;
  *(&v9 + 1) = a3;
  v7 = *a1;
  v10[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  v10[1] = a1;
  return mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>((v7 + 560), _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeEmRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_, v10, v6, a3, &v9);
}

uint64_t mlir::detail::DenseArrayAttrImpl<signed char>::get(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = mlir::IntegerType::get(a1, 8, 0);
  *&v9 = a2;
  *(&v9 + 1) = a3;
  v7 = *a1;
  v10[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  v10[1] = a1;
  return mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>((v7 + 560), _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeEmRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_, v10, v6, a3, &v9);
}

uint64_t mlir::detail::DenseArrayAttrImpl<int>::get(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = mlir::IntegerType::get(a1, 32, 0);
  *&v9 = a2;
  *(&v9 + 1) = 4 * a3;
  v7 = *a1;
  v10[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  v10[1] = a1;
  return mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>((v7 + 560), _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeEmRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_, v10, v6, a3, &v9);
}

llvm::raw_ostream *mlir::detail::DenseArrayAttrImpl<int>::print(llvm::raw_ostream *a1, llvm::raw_ostream *this)
{
  v4 = *(this + 4);
  if (*(this + 3) == v4)
  {
    llvm::raw_ostream::write(this, "[", 1uLL);
  }

  else
  {
    *v4 = 91;
    ++*(this + 4);
  }

  result = mlir::detail::DenseArrayAttrImpl<int>::printWithoutBraces(a1, this);
  v6 = *(this + 4);
  if (*(this + 3) == v6)
  {

    return llvm::raw_ostream::write(this, "]", 1uLL);
  }

  else
  {
    *v6 = 93;
    ++*(this + 4);
  }

  return result;
}

llvm::raw_ostream *mlir::detail::DenseArrayAttrImpl<int>::printWithoutBraces(llvm::raw_ostream *result, llvm::raw_ostream *a2)
{
  v2 = *(*result + 32);
  if (v2 >= 4)
  {
    v4 = *(*result + 24);
    v5 = v2 & 0xFFFFFFFFFFFFFFFCLL;
    result = llvm::write_integer(a2, *v4, 0, 0);
    v6 = v5 - 4;
    if (v6)
    {
      v7 = v4 + 1;
      do
      {
        v8 = *(a2 + 4);
        if (*(a2 + 3) - v8 > 1uLL)
        {
          *v8 = 8236;
          *(a2 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(a2, ", ", 2uLL);
        }

        v9 = *v7++;
        result = llvm::write_integer(a2, v9, 0, 0);
        v6 -= 4;
      }

      while (v6);
    }
  }

  return result;
}

uint64_t mlir::detail::DenseArrayAttrImpl<int>::parse(uint64_t a1)
{
  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 336))(a1))
  {
    v2 = *(*(*a1 + 32))(a1);

    return mlir::detail::DenseArrayAttrImpl<int>::get(v2, 0, 0);
  }

  else
  {
    v4 = mlir::detail::DenseArrayAttrImpl<int>::parseWithoutBraces(a1);
    if ((*(*a1 + 328))(a1))
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t mlir::detail::DenseArrayAttrImpl<int>::parseWithoutBraces(uint64_t a1)
{
  v6[6] = *MEMORY[0x277D85DE8];
  v2 = 0;
  if ((*(*a1 + 392))())
  {
    v3 = (*(*a1 + 32))(a1);
    v2 = mlir::detail::DenseArrayAttrImpl<int>::get(*v3, v6, 0);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::detail::DenseArrayAttrImpl<long long>::get(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = mlir::IntegerType::get(a1, 64, 0);
  *&v9 = a2;
  *(&v9 + 1) = 8 * a3;
  v7 = *a1;
  v10[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  v10[1] = a1;
  return mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>((v7 + 560), _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeEmRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_, v10, v6, a3, &v9);
}

llvm::raw_ostream *mlir::detail::DenseArrayAttrImpl<long long>::print(llvm::raw_ostream *a1, llvm::raw_ostream *this)
{
  v4 = *(this + 4);
  if (*(this + 3) == v4)
  {
    llvm::raw_ostream::write(this, "[", 1uLL);
  }

  else
  {
    *v4 = 91;
    ++*(this + 4);
  }

  result = mlir::detail::DenseArrayAttrImpl<long long>::printWithoutBraces(a1, this);
  v6 = *(this + 4);
  if (*(this + 3) == v6)
  {

    return llvm::raw_ostream::write(this, "]", 1uLL);
  }

  else
  {
    *v6 = 93;
    ++*(this + 4);
  }

  return result;
}

llvm::raw_ostream *mlir::detail::DenseArrayAttrImpl<long long>::printWithoutBraces(llvm::raw_ostream *result, llvm::raw_ostream *a2)
{
  v2 = *(*result + 32);
  if (v2 >= 8)
  {
    v4 = *(*result + 24);
    v5 = v2 & 0xFFFFFFFFFFFFFFF8;
    result = llvm::write_integer(a2, *v4, 0, 0);
    v6 = v5 - 8;
    if (v6)
    {
      v7 = v4 + 1;
      do
      {
        v8 = *(a2 + 4);
        if (*(a2 + 3) - v8 > 1uLL)
        {
          *v8 = 8236;
          *(a2 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(a2, ", ", 2uLL);
        }

        v9 = *v7++;
        result = llvm::write_integer(a2, v9, 0, 0);
        v6 -= 8;
      }

      while (v6);
    }
  }

  return result;
}

uint64_t mlir::detail::DenseArrayAttrImpl<long long>::parse(uint64_t a1)
{
  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 336))(a1))
  {
    v2 = *(*(*a1 + 32))(a1);

    return mlir::detail::DenseArrayAttrImpl<long long>::get(v2, 0, 0);
  }

  else
  {
    v4 = mlir::detail::DenseArrayAttrImpl<long long>::parseWithoutBraces(a1);
    if ((*(*a1 + 328))(a1))
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t mlir::detail::DenseArrayAttrImpl<long long>::parseWithoutBraces(uint64_t a1)
{
  v6[6] = *MEMORY[0x277D85DE8];
  v2 = 0;
  if ((*(*a1 + 392))())
  {
    v3 = (*(*a1 + 32))(a1);
    v2 = mlir::detail::DenseArrayAttrImpl<long long>::get(*v3, v6, 0);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::DenseElementsAttr::get(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v71 = *MEMORY[0x277D85DE8];
  v8 = (*(a2 + 8))(a2, a1);
  v9 = v8;
  v59 = v8;
  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v12 = *(**(v8 + 8) + 136);
    if (v12 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v12 != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
    {
      v60 = &v61 + 8;
      *&v61 = 0x100000000;
      if (a4 < 2)
      {
        if (!a4)
        {
          v53 = 0;
          v52 = (&v61 + 8);
          goto LABEL_98;
        }
      }

      else
      {
        llvm::SmallVectorTemplateBase<std::complex<llvm::APFloat>,false>::grow(&v60, a4);
      }

      v43 = 8 * a4;
      do
      {
        v44 = *(*a3 + 8);
        v45 = v44[1];
        llvm::APFloat::Storage::Storage(&v65, (*v44 + 16));
        llvm::APFloat::Storage::Storage(&v63, (v45 + 16));
        v46 = &v67;
        llvm::APFloat::Storage::Storage(&v67, &v65);
        llvm::APFloat::Storage::Storage(v70, &v63);
        v47 = v60;
        if (v61 >= DWORD1(v61))
        {
          if (v60 <= &v67 && v60 + 48 * v61 > &v67)
          {
            v51 = &v67 - v60;
            llvm::SmallVectorTemplateBase<std::complex<llvm::APFloat>,false>::grow(&v60, v61 + 1);
            v47 = v60;
            v46 = (v60 + v51);
          }

          else
          {
            llvm::SmallVectorTemplateBase<std::complex<llvm::APFloat>,false>::grow(&v60, v61 + 1);
            v47 = v60;
          }
        }

        v48 = &v47[48 * v61];
        if (*v46 == &llvm::semPPCDoubleDouble)
        {
          *v48 = &llvm::semPPCDoubleDouble;
          v49 = v46[1];
          v46[1] = 0;
          *(v48 + 1) = v49;
          *v46 = &llvm::semBogus;
        }

        else
        {
          *v48 = &llvm::semBogus;
          v48 = llvm::detail::IEEEFloat::operator=(v48, v46);
        }

        if (v46[3] == &llvm::semPPCDoubleDouble)
        {
          *(v48 + 3) = &llvm::semPPCDoubleDouble;
          v50 = v46[4];
          v46[4] = 0;
          *(v48 + 4) = v50;
          v46[3] = &llvm::semBogus;
        }

        else
        {
          *(v48 + 3) = &llvm::semBogus;
          llvm::detail::IEEEFloat::operator=((v48 + 24), (v46 + 3));
        }

        LODWORD(v61) = v61 + 1;
        llvm::APFloat::Storage::~Storage(v70);
        llvm::APFloat::Storage::~Storage(&v67);
        llvm::APFloat::Storage::~Storage(&v63);
        llvm::APFloat::Storage::~Storage(&v65);
        ++a3;
        v43 -= 8;
      }

      while (v43);
      v52 = v60;
      v53 = v61;
LABEL_98:
      Raw = mlir::DenseElementsAttr::get(a1, a2, v52, v53);
      llvm::SmallVectorTemplateBase<std::complex<llvm::APFloat>,false>::destroy_range(v60, (v60 + 48 * v61));
      v30 = v60;
      if (v60 == &v61 + 8)
      {
        goto LABEL_82;
      }

      goto LABEL_81;
    }

    v14 = &v61 + 8;
    v60 = &v61 + 8;
    *&v61 = 0x100000000;
    if (a4 < 2)
    {
      if (!a4)
      {
        v40 = 0;
        v39 = &v61 + 1;
LABEL_79:
        Raw = mlir::DenseElementsAttr::get(a1, a2, v39, v40);
        llvm::SmallVectorTemplateBase<std::complex<llvm::APInt>,false>::destroy_range(v60, v60 + 4 * v61);
        goto LABEL_80;
      }
    }

    else
    {
      llvm::SmallVectorTemplateBase<std::complex<llvm::APInt>,false>::grow(&v60, a4);
    }

    v31 = 8 * a4;
    do
    {
      v32 = *(*a3 + 8);
      v34 = *v32;
      v33 = v32[1];
      v66 = *(*v32 + 24);
      if (v66 > 0x40)
      {
        operator new[]();
      }

      v65 = *(v34 + 16);
      v64 = *(v33 + 24);
      if (v64 > 0x40)
      {
        operator new[]();
      }

      v63 = *(v33 + 16);
      v35 = &v67;
      std::complex<llvm::APInt>::complex[abi:nn200100](&v67, &v65, &v63);
      v36 = v60;
      if (v61 >= DWORD1(v61))
      {
        if (v60 <= &v67 && v60 + 32 * v61 > &v67)
        {
          v38 = &v67 - v60;
          llvm::SmallVectorTemplateBase<std::complex<llvm::APInt>,false>::grow(&v60, v61 + 1);
          v36 = v60;
          v35 = v60 + v38;
        }

        else
        {
          llvm::SmallVectorTemplateBase<std::complex<llvm::APInt>,false>::grow(&v60, v61 + 1);
          v36 = v60;
        }
      }

      v37 = &v36[32 * v61];
      *(v37 + 2) = *(v35 + 2);
      *v37 = *v35;
      *(v35 + 2) = 0;
      *(v37 + 6) = *(v35 + 6);
      *(v37 + 2) = *(v35 + 2);
      *(v35 + 6) = 0;
      LODWORD(v61) = v61 + 1;
      if (v70[0] >= 0x41u && v69)
      {
        MEMORY[0x25F891010](v69, 0x1000C8000313F17);
      }

      if (v68 >= 0x41 && v67)
      {
        MEMORY[0x25F891010](v67, 0x1000C8000313F17);
      }

      if (v64 >= 0x41 && v63)
      {
        MEMORY[0x25F891010](v63, 0x1000C8000313F17);
      }

      if (v66 >= 0x41 && v65)
      {
        MEMORY[0x25F891010](v65, 0x1000C8000313F17);
      }

      ++a3;
      v31 -= 8;
    }

    while (v31);
    v39 = v60;
    v40 = v61;
    goto LABEL_79;
  }

  if (!mlir::Type::isIntOrFloat(&v59) && *(*v9 + 136) != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    v60 = &v61 + 8;
    *&v61 = 0x800000000;
    if (a4 < 9)
    {
      if (!a4)
      {
        v29 = 0;
        v28 = &v61 + 8;
        goto LABEL_50;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, &v61 + 8, a4, 16);
    }

    v26 = 8 * a4;
    do
    {
      v27 = *a3++;
      llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v60, *(v27 + 16), *(v27 + 24));
      v26 -= 8;
    }

    while (v26);
    v28 = v60;
    v29 = v61;
LABEL_50:
    Raw = mlir::DenseStringElementsAttr::get(a1, a2, v28, v29);
    v30 = v60;
    if (v60 == &v61 + 8)
    {
      goto LABEL_82;
    }

    goto LABEL_81;
  }

  DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(v9);
  v56 = a2;
  if (DenseElementBitWidth == 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = (DenseElementBitWidth - (DenseElementBitWidth != 0) + 8 * (DenseElementBitWidth != 0)) & 0xFFFFFFFFFFFFFFF8;
  }

  v15 = v11 * a4 - (v11 * a4 != 0);
  if (v11 * a4)
  {
    v16 = (v15 >> 3) + 1;
  }

  else
  {
    v16 = v15 >> 3;
  }

  v14 = v62;
  v60 = v62;
  v61 = xmmword_25D0A0590;
  llvm::SmallVectorImpl<char>::resizeImpl<false>(&v60, v16);
  v55 = a4;
  v17 = a4;
  if (a4)
  {
    v54 = v9;
    v18 = 0;
    do
    {
      if (*(**a3 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
      {
        v19 = llvm::APFloat::Storage::Storage(&v67, (*a3 + 16));
        llvm::APFloat::bitcastToAPInt(v19, &v65);
        v20 = v65;
        v21 = v66;
        v66 = 0;
        llvm::APFloat::Storage::~Storage(&v67);
      }

      else
      {
        if (*(*a3 + 24) > 0x40u)
        {
          operator new[]();
        }

        v20 = *(*a3 + 16);
        v21 = *(*a3 + 24);
      }

      v58 = v21;
      v22 = v21 < 0x41;
      if (v21 > 0x40)
      {
        operator new[]();
      }

      __src = v20;
      writeBits(v60, v18, &__src);
      v18 += v11;
      ++a3;
      --v17;
    }

    while (v17);
    v14 = v62;
    v9 = v54;
  }

  else
  {
    v20 = 0;
    v22 = 1;
  }

  if (v55 == 1 && *(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && (*(v9 + 8) & 0x3FFFFFFF) == 1)
  {
    if (*v60)
    {
      v23 = -1;
    }

    else
    {
      v23 = 0;
    }

    *v60 = v23;
  }

  Raw = mlir::DenseIntOrFPElementsAttr::getRaw(a1, v56, v60, v61);
  if (v20)
  {
    v25 = v22;
  }

  else
  {
    v25 = 1;
  }

  if ((v25 & 1) == 0)
  {
    MEMORY[0x25F891010](v20, 0x1000C8000313F17);
  }

LABEL_80:
  v30 = v60;
  if (v60 != v14)
  {
LABEL_81:
    free(v30);
  }

LABEL_82:
  v41 = *MEMORY[0x277D85DE8];
  return Raw;
}

uint64_t mlir::DenseElementsAttr::get(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = (*(a2 + 8))(a2, a1);
  DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(v8);
  if (DenseElementBitWidth == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = ((DenseElementBitWidth - (DenseElementBitWidth != 0) + 8 * (DenseElementBitWidth != 0)) >> 1) & 0x7FFFFFFFFFFFFFFCLL;
  }

  return mlir::DenseIntOrFPElementsAttr::getRaw(a1, a2, v10, a3, 2 * a4);
}

{
  v8 = (*(a2 + 8))(a2, a1);
  DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(v8);
  if (DenseElementBitWidth == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = (DenseElementBitWidth - (DenseElementBitWidth != 0) + 8 * (DenseElementBitWidth != 0)) & 0xFFFFFFFFFFFFFFF8;
  }

  return mlir::DenseIntOrFPElementsAttr::getRaw(a1, a2, v10, a3, a4);
}

uint64_t mlir::DenseElementsAttr::get(uint64_t a1, uint64_t a2, llvm::APFloat *a3, uint64_t a4)
{
  v8 = (*(a2 + 8))(a2, a1);
  DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(v8);
  if (DenseElementBitWidth == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = ((DenseElementBitWidth - (DenseElementBitWidth != 0) + 8 * (DenseElementBitWidth != 0)) >> 1) & 0x7FFFFFFFFFFFFFFCLL;
  }

  return mlir::DenseIntOrFPElementsAttr::getRaw(a1, a2, v10, a3, 2 * a4);
}

{
  v8 = (*(a2 + 8))(a2, a1);
  DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(v8);
  if (DenseElementBitWidth == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = (DenseElementBitWidth - (DenseElementBitWidth != 0) + 8 * (DenseElementBitWidth != 0)) & 0xFFFFFFFFFFFFFFF8;
  }

  return mlir::DenseIntOrFPElementsAttr::getRaw(a1, a2, v10, a3, a4);
}

_BYTE *writeBits(_BYTE *result, unint64_t a2, unsigned int *__src)
{
  v3 = __src[2];
  if (v3 == 1)
  {
    v4 = 1 << (a2 & 7);
    if (*__src == 1)
    {
      v5 = result[a2 >> 3] | v4;
    }

    else
    {
      v5 = result[a2 >> 3] & ~v4;
    }

    result[a2 >> 3] = v5;
  }

  else
  {
    if (v3 >= 0x41)
    {
      __src = *__src;
    }

    v6 = v3 == 0;
    v7 = (v3 - (v3 != 0)) >> 3;
    if (!v6)
    {
      ++v7;
    }

    if (v7)
    {
      return memmove(&result[a2 >> 3], __src, v7);
    }
  }

  return result;
}

uint64_t mlir::DenseIntOrFPElementsAttr::getRaw(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v62 = *MEMORY[0x277D85DE8];
  v50 = 0;
  mlir::DenseElementsAttr::isValidRawBuffer(a1, a2, a3, a4, &v50);
  v8 = *(**a1 + 32);
  v9 = *v8;
  v51[0] = &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id;
  v51[1] = v8;
  v10 = v50;
  v59[0] = _ZN4llvm12function_refIFvPN4mlir6detail31DenseIntOrFPElementsAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_24DenseIntOrFPElementsAttrEJRNS1_10ShapedTypeERNS_8ArrayRefIcEERbEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v59[1] = v51;
  if (!v4)
  {
    v53 = a1;
    v54 = a2;
    v56 = 0;
    v57 = 0;
    v55 = v5;
LABEL_6:
    v58 = 0;
    goto LABEL_30;
  }

  v11 = (*(a2 + 8))(a2, a1);
  if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    if (!v10)
    {
      (*(a2 + 24))(a2, a1);
LABEL_19:
      v29 = (*(a2 + 8))(a2, a1);
      DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(v29);
      if (DenseElementBitWidth)
      {
        v33 = ((DenseElementBitWidth - (DenseElementBitWidth != 0)) >> 3) + 1;
      }

      else
      {
        v33 = 0;
      }

      if (v4 >= v33)
      {
        v34 = v33;
      }

      else
      {
        v34 = v4;
      }

      v35 = llvm::hashing::detail::hash_combine_range_impl<char const>(v5, v5 + v34, v31, v32);
      if (v33 == v4)
      {
LABEL_29:
        v53 = a1;
        v54 = a2;
        v55 = v5;
        v56 = v34;
        v57 = v35;
        v58 = 1;
        goto LABEL_30;
      }

      v36 = v33;
      while (!memcmp(v5, v5 + v36, v33))
      {
        v36 += v33;
        if (v36 == v4)
        {
          goto LABEL_29;
        }
      }

      memset(&__dst[8], 0, 112);
      v61 = 0xFF51AFD7ED558CCDLL;
      *__dst = v35;
      v40 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<char>>(__dst, 0, &__dst[8], &__dst[64], (v5 + v36), v4 - v36);
      v53 = a1;
      v54 = a2;
      v55 = v5;
      v56 = v4;
      v57 = v40;
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  v14 = v11[2] & 0x3FFFFFFF;
  if (!v10)
  {
    v21 = (*(a2 + 24))(a2, a1);
    if (v14 != 1)
    {
      goto LABEL_19;
    }

    if (v22)
    {
      v25 = 8 * v22;
      v26 = 1;
      do
      {
        v27 = *v21++;
        v26 *= v27;
        v25 -= 8;
      }

      while (v25);
      v28 = v26 & 7;
    }

    else
    {
      v28 = 1;
    }

    v41 = &mlir::detail::DenseIntOrFPElementsAttrStorage::kSplatFalse;
    v42 = *v5;
    if (v42)
    {
      v41 = &mlir::detail::DenseIntOrFPElementsAttrStorage::kSplatTrue;
    }

    if (v4 == 1)
    {
      if (*v41 == v42)
      {
LABEL_53:
        v48 = HIDWORD(v42);
        v49 = 0x9DDFEA08EB382D69 * ((8 * v42 - 0xAE502812AA7333) ^ HIDWORD(v42));
        v44 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v48 ^ (v49 >> 47) ^ v49)) ^ ((0x9DDFEA08EB382D69 * (v48 ^ (v49 >> 47) ^ v49)) >> 47));
        v4 = 1;
        v5 = v41;
        v20 = 1;
        goto LABEL_54;
      }

      v43 = v5 + 1;
      if (v28 && (v42 & 1) != 0)
      {
        if (0xFFu >> (8 - v28) == v42)
        {
          v4 = 1;
          v44 = 0xE58356463FB8AC99;
          v20 = 1;
          v5 = &mlir::detail::DenseIntOrFPElementsAttrStorage::kSplatTrue;
LABEL_54:
          v53 = a1;
          v54 = a2;
          v55 = v5;
          v56 = v4;
          v57 = v44;
          goto LABEL_13;
        }

LABEL_44:
        v44 = llvm::hashing::detail::hash_combine_range_impl<char const>(v5, v43, v23, v24);
        v20 = 0;
        goto LABEL_54;
      }
    }

    else
    {
      v43 = v5 + v4;
      if (v28 && (v42 & 1) != 0)
      {
        v45 = (v43 - 1);
        if (0xFFu >> (8 - v28) != *(v43 - 1))
        {
          goto LABEL_44;
        }

LABEL_46:
        if (v42)
        {
          v46 = -1;
        }

        else
        {
          v46 = 0;
        }

        v47 = v5;
        while (*v47 == v46)
        {
          v47 = (v47 + 1);
          if (v47 == v45)
          {
            v42 = *v41;
            goto LABEL_53;
          }
        }

        goto LABEL_44;
      }
    }

    v45 = v43;
    goto LABEL_46;
  }

  if (v14 != 1)
  {
LABEL_12:
    v19 = llvm::hashing::detail::hash_combine_range_impl<char const>(v5, v5 + v4, v12, v13);
    v53 = a1;
    v54 = a2;
    v55 = v5;
    v56 = v4;
    v57 = v19;
    v20 = 1;
LABEL_13:
    v58 = v20;
    goto LABEL_30;
  }

  v15 = &mlir::detail::DenseIntOrFPElementsAttrStorage::kSplatTrue;
  if (!*v5)
  {
    v15 = &mlir::detail::DenseIntOrFPElementsAttrStorage::kSplatFalse;
  }

  v16 = *v15;
  v17 = HIDWORD(v16);
  v18 = 0x9DDFEA08EB382D69 * ((8 * v16 - 0xAE502812AA7333) ^ HIDWORD(v16));
  v53 = a1;
  v54 = a2;
  v55 = v15;
  v56 = 1;
  v57 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v17 ^ (v18 >> 47) ^ v18)) ^ ((0x9DDFEA08EB382D69 * (v17 ^ (v18 >> 47) ^ v18)) >> 47));
  v58 = 1;
LABEL_30:
  memset(__dst, 0, sizeof(__dst));
  v61 = 0xFF51AFD7ED558CCDLL;
  v37 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::ShapedType,llvm::hash_code>(__dst, __dst, &__dst[64], a1, &v57);
  v52 = &v53;
  *__dst = &v53;
  *&__dst[8] = v59;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v9 + 560), &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id, v37, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseIntOrFPElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseIntOrFPElementsAttrStorage,mlir::ShapedType &,llvm::ArrayRef<char> &,BOOL &>(llvm::function_ref<void ()(mlir::detail::DenseIntOrFPElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,llvm::ArrayRef<char> &,BOOL &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v52, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseIntOrFPElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseIntOrFPElementsAttrStorage,mlir::ShapedType &,llvm::ArrayRef<char> &,BOOL &>(llvm::function_ref<void ()(mlir::detail::DenseIntOrFPElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,llvm::ArrayRef<char> &,BOOL &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
  v39 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::DenseElementsAttr::get(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  if (a4)
  {
    v7 = ((a4 - (a4 != 0)) >> 3) + 1;
  }

  else
  {
    v7 = 0;
  }

  memset(&v19, 0, sizeof(v19));
  if (v7)
  {
    operator new();
  }

  end = 0;
  begin = 0;
  if (a4)
  {
    v10 = *a3;
    if (!a4)
    {
      goto LABEL_14;
    }

    v11 = 0;
    v12 = 1;
    do
    {
      v13 = a3[v11];
      v14 = 1 << (v11 & 7);
      v15 = (v11 >> 3);
      if (v13 == 1)
      {
        v16 = *v15 | v14;
      }

      else
      {
        v16 = *v15 & ~v14;
      }

      *v15 = v16;
      v12 &= v13 == v10;
      ++v11;
    }

    while (a4 != v11);
    if (v12)
    {
LABEL_14:
      std::vector<char>::__append(&v19, 1uLL);
      *v19.__begin_ = -*a3;
      begin = v19.__begin_;
      end = v19.__end_;
    }
  }

  Raw = mlir::DenseIntOrFPElementsAttr::getRaw(a1, a2, begin, end - begin);
  if (v19.__begin_)
  {
    v19.__end_ = v19.__begin_;
    operator delete(v19.__begin_);
  }

  return Raw;
}

uint64_t mlir::DenseIntOrFPElementsAttr::getRaw(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = a5 * a3 - (a5 * a3 != 0);
  memset(&v19, 0, sizeof(v19));
  if (a5 * a3)
  {
    v11 = (v10 >> 3) + 1;
  }

  else
  {
    v11 = v10 >> 3;
  }

  if (v11)
  {
    std::vector<char>::__append(&v19, v11);
  }

  if (a5)
  {
    v18 = a1;
    v12 = 0;
    v13 = 16 * a5;
    v14 = a4;
    do
    {
      v21 = *(v14 + 2);
      if (v21 > 0x40)
      {
        operator new[]();
      }

      __src = *v14;
      writeBits(v19.__begin_, v12, &__src);
      v14 += 2;
      v12 += a3;
      v13 -= 16;
    }

    while (v13);
    a1 = v18;
    if (a5 == 1 && *(a4 + 2) == 1)
    {
      if (*v19.__begin_)
      {
        v15 = -1;
      }

      else
      {
        v15 = 0;
      }

      *v19.__begin_ = v15;
    }
  }

  Raw = mlir::DenseIntOrFPElementsAttr::getRaw(a1, a2, v19.__begin_, v19.__end_ - v19.__begin_);
  if (v19.__begin_)
  {
    v19.__end_ = v19.__begin_;
    operator delete(v19.__begin_);
  }

  return Raw;
}

uint64_t mlir::DenseIntOrFPElementsAttr::getRaw(uint64_t a1, uint64_t a2, uint64_t a3, llvm::APFloat *this, uint64_t a5)
{
  v9 = 3 * a5;
  v10 = 0xAAAAAAAAAAAAAAABLL * ((24 * a5) >> 3) * a3;
  v11 = v10 - (v10 != 0);
  memset(&v22, 0, sizeof(v22));
  v12 = (this + 24 * a5);
  if (v10)
  {
    v13 = (v11 >> 3) + 1;
  }

  else
  {
    v13 = v11 >> 3;
  }

  if (v13)
  {
    std::vector<char>::__append(&v22, v13);
  }

  v14 = 8 * v9;
  if (this != v12)
  {
    v15 = 0;
    v16 = v14;
    v17 = this;
    do
    {
      begin = v22.__begin_;
      llvm::APFloat::bitcastToAPInt(v17, &__src);
      writeBits(begin, v15, &__src);
      if (v26 >= 0x41 && __src)
      {
        MEMORY[0x25F891010](__src, 0x1000C8000313F17);
      }

      v17 = (v17 + 24);
      v15 += a3;
      v16 -= 24;
    }

    while (v16);
  }

  if (v14 == 24)
  {
    llvm::APFloat::bitcastToAPInt(this, &v23);
    if (v24 < 0x41)
    {
      if (v24 == 1)
      {
        if (*v22.__begin_)
        {
          v19 = -1;
        }

        else
        {
          v19 = 0;
        }

        *v22.__begin_ = v19;
      }
    }

    else if (v23)
    {
      MEMORY[0x25F891010](v23, 0x1000C8000313F17);
    }
  }

  Raw = mlir::DenseIntOrFPElementsAttr::getRaw(a1, a2, v22.__begin_, v22.__end_ - v22.__begin_);
  if (v22.__begin_)
  {
    v22.__end_ = v22.__begin_;
    operator delete(v22.__begin_);
  }

  return Raw;
}

BOOL mlir::DenseElementsAttr::isValidRawBuffer(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, BOOL *a5)
{
  v10 = (*(a2 + 8))(a2, a1);
  DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(v10);
  if (DenseElementBitWidth == 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = (DenseElementBitWidth - (DenseElementBitWidth != 0) + 8 * (DenseElementBitWidth != 0)) & 0xFFFFFFFFFFFFFFF8;
  }

  v13 = (*(a2 + 24))(a2, a1);
  if (v14)
  {
    v15 = 8 * v14;
    v16 = 1;
    do
    {
      v17 = *v13++;
      v16 *= v17;
      v15 -= 8;
    }

    while (v15);
  }

  else
  {
    v16 = 1;
  }

  v18 = 8 * a4;
  *a5 = v16 == 1;
  if (v12 != 1)
  {
    if (v18 != v12)
    {
      v19 = v16 * v12;
      return v18 == v19;
    }

LABEL_14:
    result = 1;
    *a5 = 1;
    return result;
  }

  if (a4 == 1 && *a3 - 1 >= 0xFE)
  {
    goto LABEL_14;
  }

  v19 = (v16 - (v16 != 0) + 8 * (v16 != 0)) & 0xFFFFFFFFFFFFFFF8;
  return v18 == v19;
}

uint64_t isValidIntOrFloat(uint64_t a1, uint64_t a2, char a3, unsigned int a4)
{
  if (mlir::detail::getDenseElementBitWidth(a1) != 8 * a2)
  {
    return 0;
  }

  v7 = *a1;
  if (a3)
  {
    v8 = *(v7 + 136);
    if (v8 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
    {
      return 1;
    }

    if (v8 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      return 0;
    }

    v11 = *(a1 + 8) >> 30;
    if (v11)
    {
      return (v11 != 1) ^ a4;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v10 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
    return mlir::detail::InterfaceMap::lookup(v7 + 8, v10) != 0;
  }
}

unint64_t mlir::DenseElementsAttr::tryGetComplexIntValues@<X0>(mlir::DenseElementsAttr *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*this + 8);
  result = (*(*(*this + 16) + 8))();
  if (*(**(result + 8) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v7 = *(*this + 8);
    v8 = *(*this + 16);
    v9 = *(*this + 32);
    v10 = *(*this + 24);
    v11 = (*(v8 + 8))(v8, v7);
    DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(*(v11 + 8));
    v13 = *this;
    v14 = *(*this + 8);
    v15 = (*(*(*this + 16) + 24))();
    if (v16)
    {
      v17 = 8 * v16;
      v18 = 1;
      do
      {
        v19 = *v15++;
        v18 *= v19;
        v17 -= 8;
      }

      while (v17);
    }

    else
    {
      v18 = 1;
    }

    v20 = *(v13 + 32);
    v21 = *(v13 + 24);
    v22 = *(v13 + 8);
    v23 = (*(*(v13 + 16) + 8))();
    result = mlir::detail::getDenseElementBitWidth(*(v23 + 8));
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = 0;
    *(a2 + 24) = DenseElementBitWidth;
    *(a2 + 32) = v20;
    *(a2 + 40) = v21;
    *(a2 + 48) = v18;
    *(a2 + 56) = result;
    v6 = 1;
    *(a2 + 64) = v7;
    *(a2 + 72) = v8;
  }

  else
  {
    v6 = 0;
    *a2 = 0;
  }

  *(a2 + 80) = v6;
  return result;
}

uint64_t mlir::DenseElementsAttr::tryGetFloatValues@<X0>(mlir::DenseElementsAttr *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*this + 8);
  v5 = (*(*(*this + 16) + 8))();
  result = llvm::DefaultDoCastIfPossible<mlir::FloatType,mlir::Type const,llvm::CastInfo<mlir::FloatType,mlir::Type const,void>>::doCastIfPossible(v5);
  v8 = result;
  if (result)
  {
    v9 = (*v7)(v7, result);
    v10 = *(*this + 8);
    v11 = *(*this + 16);
    v12 = *(*this + 32);
    v13 = *(*this + 24);
    v14 = (*(v11 + 8))(v11, v10);
    DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(v14);
    result = mlir::DenseElementsAttr::raw_int_end(this, (a2 + 40));
    *a2 = v12;
    *(a2 + 8) = v13;
    *(a2 + 16) = 0;
    *(a2 + 24) = DenseElementBitWidth;
    *(a2 + 32) = v9;
    *(a2 + 72) = v9;
    *(a2 + 80) = v10;
    v8 = 1;
    *(a2 + 88) = v11;
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 96) = v8;
  return result;
}

unint64_t mlir::DenseElementsAttr::raw_int_end@<X0>(mlir::DenseElementsAttr *this@<X0>, void *a2@<X8>)
{
  v3 = *this;
  v4 = *(*this + 8);
  v5 = (*(*(*this + 16) + 24))();
  if (v6)
  {
    v7 = 8 * v6;
    v8 = 1;
    do
    {
      v9 = *v5++;
      v8 *= v9;
      v7 -= 8;
    }

    while (v7);
  }

  else
  {
    v8 = 1;
  }

  v10 = *(v3 + 24);
  *a2 = *(v3 + 32);
  a2[1] = v10;
  a2[2] = v8;
  v11 = *(v3 + 8);
  v12 = (*(*(v3 + 16) + 8))();
  result = mlir::detail::getDenseElementBitWidth(v12);
  a2[3] = result;
  return result;
}

uint64_t **mlir::DenseElementsAttr::tryGetComplexFloatValues@<X0>(mlir::DenseElementsAttr *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*this + 8);
  result = (*(*(*this + 16) + 8))();
  if ((*result)[17] != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v6 = 0;
LABEL_3:
    *a2 = 0;
    goto LABEL_11;
  }

  result = llvm::DefaultDoCastIfPossible<mlir::FloatType,mlir::Type const,llvm::CastInfo<mlir::FloatType,mlir::Type const,void>>::doCastIfPossible(result[1]);
  v6 = result;
  if (!result)
  {
    goto LABEL_3;
  }

  v8 = (*v7)(v7, result);
  v9 = *(*this + 8);
  v10 = *(*this + 16);
  v11 = *(*this + 32);
  v12 = *(*this + 24);
  v13 = (*(v10 + 8))(v10, v9);
  DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(*(v13 + 8));
  v15 = *this;
  v16 = *(v15 + 8);
  v17 = (*(*(v15 + 16) + 24))();
  if (v18)
  {
    v19 = 8 * v18;
    v20 = 1;
    do
    {
      v21 = *v17++;
      v20 *= v21;
      v19 -= 8;
    }

    while (v19);
  }

  else
  {
    v20 = 1;
  }

  v22 = *(v15 + 24);
  *(a2 + 40) = *(v15 + 32);
  *(a2 + 48) = v22;
  *(a2 + 56) = v20;
  v23 = *(v15 + 8);
  v24 = (*(*(v15 + 16) + 8))();
  result = mlir::detail::getDenseElementBitWidth(*(v24 + 8));
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = 0;
  *(a2 + 24) = DenseElementBitWidth;
  *(a2 + 32) = v8;
  *(a2 + 64) = result;
  *(a2 + 72) = v8;
  v6 = 1;
  *(a2 + 80) = v9;
  *(a2 + 88) = v10;
LABEL_11:
  *(a2 + 96) = v6;
  return result;
}

uint64_t mlir::DenseElementsAttr::bitcast(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  if ((*(v5 + 8))(v5, v4) == a2)
  {
    return *a1;
  }

  v7 = *v5;
  v10[0] = 0;
  v10[16] = 0;
  v8 = v7(v5, v4, v10, a2);
  return mlir::DenseIntOrFPElementsAttr::getRaw(v8, v9, *(*a1 + 32), *(*a1 + 40));
}

BOOL mlir::DenseFPElementsAttr::classof(void *a1)
{
  result = 0;
  v3 = *(*a1 + 136);
  v5 = v3 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
  if (a1)
  {
    if (v5)
    {
      v6 = a1[1];
      v7 = *(*(a1[2] + 8))();
      v8 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
      return mlir::detail::InterfaceMap::lookup(v7 + 8, v8) != 0;
    }
  }

  return result;
}

BOOL mlir::DenseIntElementsAttr::classof(void *a1)
{
  result = 0;
  v3 = *(*a1 + 136);
  v5 = v3 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
  if (a1 && v5)
  {
    v6 = a1[1];
    v7 = *(*(*(a1[2] + 8))() + 136);
    return v7 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id;
  }

  return result;
}

uint64_t mlir::DenseResourceElementsAttr::get(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(**a1 + 32);
  v4 = *v3;
  v9[0] = &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id;
  v9[1] = v3;
  v14[0] = _ZN4llvm12function_refIFvPN4mlir6detail32DenseResourceElementsAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_25DenseResourceElementsAttrEJRNS1_10ShapedTypeERNS1_25DialectResourceBlobHandleINS1_14BuiltinDialectEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v14[1] = v9;
  v11[0] = a1;
  v11[1] = a2;
  v12 = *a3;
  v13 = *(a3 + 2);
  memset(v18, 0, sizeof(v18));
  memset(v17, 0, sizeof(v17));
  v19 = 0;
  v20 = 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * ((8 * v12 - 0xAE502812AA7333) ^ DWORD1(v12));
  v15 = ((a1 >> 4) ^ (a1 >> 9));
  v16 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (DWORD1(v12) ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (DWORD1(v12) ^ (v5 >> 47) ^ v5)) >> 47));
  v6 = llvm::hashing::detail::hash_combine_recursive_helper::combine(&v15, 0, v17, v18);
  v10 = v11;
  v15 = v11;
  v16 = v14;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v4 + 560), &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id, v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseResourceElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseResourceElementsAttrStorage,mlir::ShapedType &,mlir::DialectResourceBlobHandle<mlir::BuiltinDialect> &>(llvm::function_ref<void ()(mlir::detail::DenseResourceElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DialectResourceBlobHandle<mlir::BuiltinDialect> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseResourceElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseResourceElementsAttrStorage,mlir::ShapedType &,mlir::DialectResourceBlobHandle<mlir::BuiltinDialect> &>(llvm::function_ref<void ()(mlir::detail::DenseResourceElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DialectResourceBlobHandle<mlir::BuiltinDialect> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v15);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::DenseResourceElementsAttr::get(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x277D85DE8];
  ManagerInterface = mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>::getManagerInterface(*(**a1 + 32));
  v15 = *a5;
  v16 = *(a5 + 16);
  llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::UniqueFunctionBase(v17, (a5 + 24));
  v17[32] = *(a5 + 56);
  v18 = 1;
  mlir::ResourceBlobManagerDialectInterfaceBase<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>::insert(ManagerInterface, a3, a4, &v15, &v14);
  v11 = mlir::DenseResourceElementsAttr::get(a1, a2, &v14);
  if (v18 == 1)
  {
    mlir::AsmResourceBlob::~AsmResourceBlob(&v15);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>::getManagerInterface(void *a1)
{
  v3 = a1;
  Dialect = mlir::MLIRContext::getOrLoadDialect(a1, "builtin", 7uLL, &mlir::detail::TypeIDResolver<mlir::BuiltinDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::BuiltinDialect * mlir::MLIRContext::getOrLoadDialect<mlir::BuiltinDialect>(void)::{lambda(void)#1}>, &v3);
  v3 = mlir::detail::TypeIDResolver<mlir::ResourceBlobManagerDialectInterface,void>::resolveTypeID();
  return *(llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>,mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>::doFind<mlir::TypeID>(Dialect + 6, &v3) + 8);
}

void mlir::ResourceBlobManagerDialectInterfaceBase<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>::insert(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, __int128 *a4@<X3>, void *a5@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 24);
  v9 = *(a1 + 8);
  LOBYTE(v12) = 0;
  v15 = 0;
  if (*(a4 + 64) == 1)
  {
    v12 = *a4;
    v13 = *(a4 + 2);
    llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::UniqueFunctionBase(v14, (a4 + 24));
    v14[32] = *(a4 + 56);
    v15 = 1;
  }

  mlir::DialectResourceBlobManager::insert<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>(v8, v9, a2, a3, &v12, a5);
  if (v15 == 1)
  {
    mlir::AsmResourceBlob::~AsmResourceBlob(&v12);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getElementType(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  v4 = mlir::detail::InterfaceMap::lookup(v2 + 8, v3);
  v6 = (*(v4 + 16))(v4, v1);
  v7 = *(v5 + 8);

  return v7(v5, v6);
}

llvm::detail::IEEEFloat *mlir::SparseElementsAttr::getZeroAPFloat(mlir::SparseElementsAttr *this, uint64_t *a2)
{
  ElementType = mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getElementType(a2);
  v4 = *ElementType;
  v5 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  v6 = mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
  v7 = (*v6)(v6, ElementType);

  return llvm::APFloat::Storage::Storage<>(this, v7);
}

uint64_t mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getElementType(uint64_t *a1)
{
  v2 = *a1;
  v3 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  v4 = mlir::detail::InterfaceMap::lookup(v2 + 8, v3);
  v6 = (*(v4 + 16))(v4, a1);
  v7 = *(v5 + 8);

  return v7(v5, v6);
}

uint64_t mlir::SparseElementsAttr::getZeroAPInt(mlir::SparseElementsAttr *this, uint64_t *a2)
{
  result = mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getElementType(a2);
  v4 = *(result + 8) & 0x3FFFFFFF;
  *(this + 2) = v4;
  if (v4 >= 0x41)
  {
    operator new[]();
  }

  *this = 0;
  return result;
}

void mlir::SparseElementsAttr::getFlattenedSparseIndices(mlir::SparseElementsAttr *this, uint64_t **a2)
{
  v21[8] = *MEMORY[0x277D85DE8];
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v18 = (*a2)[3];
  mlir::DenseElementsAttr::tryGetValues<unsigned long long,void>(&v18, &v19);
  v4 = v19;
  v5 = v20;
  v6 = v21[0];
  if (*(v18 + 24) == 1)
  {
    v7 = (*a2)[1];
    (*((*a2)[2] + 24))();
    if (v5)
    {
      v9 = 0;
    }

    else
    {
      v9 = v6;
    }

    v19 = v21;
    v20 = 0x800000000;
    llvm::SmallVectorImpl<unsigned long long>::assign(&v19, v8, v4[v9]);
    FlattenedIndex = mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getFlattenedIndex(*a2, v19);
    std::vector<long>::push_back[abi:nn200100](this, &FlattenedIndex);
    if (v19 != v21)
    {
      free(v19);
    }
  }

  else
  {
    v10 = *(v18 + 8);
    v11 = *(*(*(v18 + 16) + 24))();
    v12 = (*a2)[1];
    (*((*a2)[2] + 24))();
    if (v11)
    {
      v14 = v13;
      do
      {
        if (v5)
        {
          v15 = 0;
        }

        else
        {
          v15 = v6;
        }

        v19 = mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getFlattenedIndex(*a2, &v4[v15]);
        std::vector<long>::push_back[abi:nn200100](this, &v19);
        v6 += v14;
        --v11;
      }

      while (v11);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void std::vector<long>::push_back[abi:nn200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<long>::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getFlattenedIndex(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  v6 = mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
  v7 = (*(v6 + 16))(v6, a1);

  return mlir::ElementsAttr::getFlattenedIndex(v7, a2);
}

void mlir::SparseElementsAttr::verify(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>,mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr)::$_0::operator()(uint64_t a1, void *a2)
{
  v24[25] = *MEMORY[0x277D85DE8];
  (**a2)(&v23, *(*a2 + 8));
  if (v23)
  {
    mlir::Diagnostic::operator<<<18ul>(v24, "expected shape ([");
  }

  v4 = a2[1];
  v5 = *v4;
  v22[0] = (*(v4[1] + 24))();
  v22[1] = v6;
  v7 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<long long>>(&v23, v22);
  v8 = v7;
  if (*v7)
  {
    mlir::Diagnostic::operator<<<41ul>((v7 + 1), "]); inferred shape of indices literal ([");
  }

  v9 = a2[2];
  v10 = *v9;
  v21[0] = (*(v9[1] + 24))();
  v21[1] = v11;
  v12 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<long long>>(v8, v21);
  v13 = v12;
  if (*v12)
  {
    mlir::Diagnostic::operator<<<40ul>((v12 + 1), "]); inferred shape of values literal ([");
  }

  v14 = a2[3];
  v15 = *v14;
  v20[0] = (*(v14[1] + 24))();
  v20[1] = v16;
  v17 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<long long>>(v13, v20);
  v18 = v17;
  if (*v17)
  {
    mlir::Diagnostic::operator<<<3ul>((v17 + 1), "])");
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, v18);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v23);
  v19 = *MEMORY[0x277D85DE8];
}

void mlir::SparseElementsAttr::verify(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>,mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr)::$_1::operator()(uint64_t a1, void **a2, unsigned int a3, uint64_t *a4, uint64_t a5)
{
  v35 = *MEMORY[0x277D85DE8];
  (**a2)(&v31, (*a2)[1]);
  if (v31)
  {
    mlir::Diagnostic::operator<<<15ul>(v32, "sparse index #");
    if (v31)
    {
      LODWORD(v28) = 5;
      v29 = a3;
      v10 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v33, &v28, 1);
      v11 = v33 + 24 * v34;
      v12 = *v10;
      *(v11 + 16) = *(v10 + 16);
      *v11 = v12;
      ++v34;
      if (v31)
      {
        mlir::Diagnostic::operator<<<55ul>(v32, " is not contained within the value shape, with index=[");
        if (v31)
        {
          if (a5)
          {
            v13 = *a4;
            LODWORD(v28) = 5;
            v29 = v13;
            v14 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v33, &v28, 1);
            v15 = v33 + 24 * v34;
            v16 = *v14;
            *(v15 + 16) = *(v14 + 16);
            *v15 = v16;
            ++v34;
            if (a5 != 1)
            {
              v17 = a4 + 1;
              v18 = 8 * a5 - 8;
              do
              {
                v28 = ", ";
                v30 = 259;
                mlir::Diagnostic::operator<<(v32, &v28);
                v19 = *v17++;
                LODWORD(v28) = 5;
                v29 = v19;
                v20 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v33, &v28, 1);
                v21 = v33 + 24 * v34;
                v22 = *v20;
                *(v21 + 16) = *(v20 + 16);
                *v21 = v22;
                ++v34;
                v18 -= 8;
              }

              while (v18);
            }
          }

          if (v31)
          {
            mlir::Diagnostic::operator<<<13ul>(v32, "], and type=");
            if (v31)
            {
              v23 = *a2[1];
              LODWORD(v28) = 4;
              v29 = v23;
              v24 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v33, &v28, 1);
              v25 = v33 + 24 * v34;
              v26 = *v24;
              *(v25 + 16) = *(v24 + 16);
              *v25 = v26;
              ++v34;
            }
          }
        }
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v31);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v31);
  v27 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::Twine::getSingleStringRef(uint64_t **this)
{
  v1 = *(this + 32);
  if (v1 > 4)
  {
    v2 = *this;
    v4 = this[1];
  }

  else if (v1 == 1)
  {
    return 0;
  }

  else if (v1 == 3)
  {
    v2 = *this;
    if (*this)
    {
      v3 = strlen(*this);
    }
  }

  else
  {
    v5 = *(*this + 23);
    if (v5 >= 0)
    {
      v2 = *this;
    }

    else
    {
      v2 = **this;
    }

    if (v5 >= 0)
    {
      v6 = *(*this + 23);
    }

    else
    {
      v6 = (*this)[1];
    }
  }

  return v2;
}

uint64_t *llvm::DefaultDoCastIfPossible<mlir::FloatType,mlir::Type,llvm::CastInfo<mlir::FloatType,mlir::Type,void>>::doCastIfPossible(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v2 + 8, v3))
  {
    return 0;
  }

  if (v1)
  {
    v4 = *v1;
    v5 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
  }

  return v1;
}

uint64_t std::complex<llvm::APInt>::complex[abi:nn200100](uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  *(result + 8) = v3;
  if (v3 > 0x40)
  {
    operator new[]();
  }

  *result = *a2;
  v4 = *(a3 + 8);
  *(result + 24) = v4;
  if (v4 > 0x40)
  {
    operator new[]();
  }

  *(result + 16) = *a3;
  return result;
}

uint64_t *llvm::DefaultDoCastIfPossible<mlir::FloatType,mlir::Type const,llvm::CastInfo<mlir::FloatType,mlir::Type const,void>>::doCastIfPossible(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v2 + 8, v3))
  {
    return 0;
  }

  if (v1)
  {
    v4 = *v1;
    v5 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
  }

  return v1;
}

llvm::detail::IEEEFloat *llvm::APFloat::Storage::Storage<>(llvm::detail::IEEEFloat *a1, void *a2)
{
  if (a2 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(a1, &llvm::semPPCDoubleDouble);
  }

  return llvm::detail::IEEEFloat::IEEEFloat(a1, a2);
}

uint64_t mlir::DenseElementsAttr::tryGetValues<unsigned long long,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 8);
  v5 = (*(*(*a1 + 16) + 8))();
  result = isValidIntOrFloat(v5, 8, 1, 0);
  if (result)
  {
    v7 = *a1;
    v8 = *(*a1 + 32);
    v9 = *(*a1 + 24);
    v10 = *(*a1 + 8);
    v11 = *(v7 + 16);
    result = (*(v11 + 24))(v11, v10);
    if (v12)
    {
      v13 = 8 * v12;
      v14 = 1;
      do
      {
        v15 = *result;
        result += 8;
        v14 *= v15;
        v13 -= 8;
      }

      while (v13);
    }

    else
    {
      v14 = 1;
    }

    *a2 = v8;
    *(a2 + 8) = v9;
    *(a2 + 16) = 0;
    *(a2 + 24) = v8;
    *(a2 + 32) = v9;
    *(a2 + 40) = v14;
    v16 = 1;
    *(a2 + 48) = v10;
    *(a2 + 56) = v11;
  }

  else
  {
    v16 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v16;
  return result;
}

uint64_t mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<long long>>(uint64_t a1, uint64_t **a2)
{
  if (*a1)
  {
    v3 = a2[1];
    if (v3)
    {
      v4 = *a2;
      v5 = **a2;
      LODWORD(v17) = 2;
      v18 = v5;
      v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 24, &v17, 1);
      v7 = *(a1 + 24) + 24 * *(a1 + 32);
      v8 = *v6;
      *(v7 + 16) = *(v6 + 16);
      *v7 = v8;
      ++*(a1 + 32);
      if (v3 != 1)
      {
        v9 = 8 * v3;
        v10 = v4 + 1;
        v11 = v9 - 8;
        do
        {
          v17 = ", ";
          v19 = 259;
          mlir::Diagnostic::operator<<(a1 + 8, &v17);
          v12 = *v10++;
          LODWORD(v17) = 2;
          v18 = v12;
          v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 24, &v17, 1);
          v14 = *(a1 + 24) + 24 * *(a1 + 32);
          v15 = *v13;
          *(v14 + 16) = *(v13 + 16);
          *v14 = v15;
          ++*(a1 + 32);
          v11 -= 8;
        }

        while (v11);
      }
    }
  }

  return a1;
}

uint64_t mlir::Diagnostic::operator<<<41ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<<15ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<<55ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<<mlir::ShapedType &>(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v8 = 4;
  v9 = v3;
  v4 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v8, 1);
  v5 = *(a1 + 16) + 24 * *(a1 + 24);
  v6 = *v4;
  *(v5 + 16) = *(v4 + 16);
  *v5 = v6;
  ++*(a1 + 24);
  return a1;
}

void *llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(uint64_t a1, uint64_t *a2, void *__dst, unint64_t a4, uint64_t a5)
{
  __src = a5;
  if ((__dst + 1) <= a4)
  {
    *__dst = a5;
    return __dst + 1;
  }

  else
  {
    v8 = a4 - __dst;
    memcpy(__dst, &__src, a4 - __dst);
    if (*a2)
    {
      llvm::hashing::detail::hash_state::mix((a1 + 64), a1, v9, v10);
      v11 = *a2 + 64;
    }

    else
    {
      llvm::hashing::detail::hash_state::create(a1, *(a1 + 120), v9, v10, v14);
      v12 = v14[1];
      *(a1 + 64) = v14[0];
      *(a1 + 80) = v12;
      *(a1 + 96) = v14[2];
      *(a1 + 112) = v15;
      v11 = 64;
    }

    *a2 = v11;
    if (a1 + 8 - v8 <= a4)
    {
      memcpy(a1, &__src + v8, 8 - v8);
      a1 += 8 - v8;
    }
  }

  return a1;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine(llvm::hashing::detail::hash_combine_recursive_helper *this, uint64_t a2, char *a3, char *a4)
{
  if (a2)
  {
    std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,char *,char *>(this, a3, a4);
    llvm::hashing::detail::hash_state::mix((this + 64), this, v7, v8);

    return llvm::hashing::detail::hash_state::finalize((this + 64), &a3[a2 - this]);
  }

  else
  {
    v10 = a3 - this;
    v11 = *(this + 15);

    return llvm::hashing::detail::hash_short(this, v10, v11);
  }
}

void *llvm::hashing::detail::hash_state::create@<X0>(llvm::hashing::detail::hash_state *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, llvm::hashing::detail::hash_state *a5@<X8>)
{
  *a5 = 0;
  *(a5 + 1) = a2;
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (a2 ^ 0xB492B66FBE98F273)) ^ ((0x9DDFEA08EB382D69 * (a2 ^ 0xB492B66FBE98F273)) >> 47) ^ 0xB492B66FBE98F273);
  *(a5 + 2) = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  *(a5 + 3) = __ROR8__(a2 ^ 0xB492B66FBE98F273, 49);
  v6 = a2 ^ (a2 >> 47);
  *(a5 + 4) = 0xB492B66FBE98F273 * a2;
  *(a5 + 5) = v6;
  *(a5 + 6) = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (a2 ^ (((0x9DDFEA08EB382D69 * (v6 ^ (0xB492B66FBE98F273 * a2))) ^ a2) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (0xB492B66FBE98F273 * a2))))) ^ ((0x9DDFEA08EB382D69 * (a2 ^ (((0x9DDFEA08EB382D69 * (v6 ^ (0xB492B66FBE98F273 * a2))) ^ a2) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (0xB492B66FBE98F273 * a2))))) >> 47));
  return llvm::hashing::detail::hash_state::mix(a5, this, a3, a4);
}

void *llvm::hashing::detail::hash_state::mix(llvm::hashing::detail::hash_state *this, llvm::hashing::detail::hash_state *a2, uint64_t a3, unint64_t *a4)
{
  v6 = *(this + 1);
  v7 = *(this + 3);
  v8 = 0xB492B66FBE98F273 * __ROR8__(v6 + *this + v7 + *(a2 + 1), 37);
  v9 = *(this + 4);
  *this = v8;
  v10 = __ROR8__(v9 + v6 + *(a2 + 6), 42);
  v11 = (this + 48);
  v12 = *(this + 6) ^ v8;
  *this = v12;
  *(this + 1) = 0xB492B66FBE98F273 * v10;
  v13 = 0xB492B66FBE98F273 * v10 + v7 + *(a2 + 5);
  v15 = this + 40;
  v14 = *(this + 5);
  v16 = __ROR8__(v14 + *(this + 2), 33);
  *(this + 1) = v13;
  *(this + 2) = 0xB492B66FBE98F273 * v16;
  *(this + 3) = 0xB492B66FBE98F273 * v9;
  *(this + 4) = v14 + v12;
  llvm::hashing::detail::hash_state::mix_32_bytes(a2, this + 24, this + 4, a4);
  v17 = *(this + 1);
  *v15 = *v11 + *(this + 2);
  *v11 = *(a2 + 2) + v17;
  result = llvm::hashing::detail::hash_state::mix_32_bytes(a2 + 4, v15, v11, v18);
  v20 = *(this + 2);
  *(this + 2) = *this;
  *this = v20;
  return result;
}

void *llvm::hashing::detail::hash_state::mix_32_bytes(void *this, char *a2, unint64_t *a3, unint64_t *a4)
{
  v4 = *a2 + *this;
  *a2 = v4;
  v5 = this[3];
  *a3 = __ROR8__(v5 + *a3 + v4, 21);
  v6 = *a2;
  v7 = this[1] + *a2 + this[2];
  *a2 = v7;
  *a3 += v6 + __ROR8__(v7, 44);
  *a2 += v5;
  return this;
}

unint64_t llvm::hashing::detail::hash_short(llvm::hashing::detail *this, unint64_t a2, unint64_t a3)
{
  if (a2 - 4 <= 4)
  {
    v3 = *(this + a2 - 4) ^ a3;
    v4 = 0x9DDFEA08EB382D69 * (v3 ^ (a2 + 8 * *this));
    v5 = v3 ^ (v4 >> 47) ^ v4;
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v5) ^ ((0x9DDFEA08EB382D69 * v5) >> 47));
  }

  if (a2 - 9 <= 7)
  {
    v7 = *(this + a2 - 8);
    v8 = __ROR8__(v7 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (*this ^ a3 ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (*this ^ a3 ^ v8)))) ^ ((0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (*this ^ a3 ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (*this ^ a3 ^ v8)))) >> 47))) ^ v7;
  }

  if (a2 - 17 <= 0xF)
  {
    v9 = *(this + 1);
    v10 = 0x9AE16A3B2F90404FLL * *(this + a2 - 8);
    v11 = __ROR8__(0xB492B66FBE98F273 * *this - v9, 43) - 0x3C5A37A36834CED9 * *(this + a2 - 16) + __ROR8__(v10 ^ a3, 30);
    v12 = a3 + a2 + __ROR8__(v9 ^ 0xC949D7C7509E6557, 20) - 0x4B6D499041670D8DLL * *this - v10;
    v5 = v12 ^ ((0x9DDFEA08EB382D69 * (v11 ^ v12)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ v12));
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v5) ^ ((0x9DDFEA08EB382D69 * v5) >> 47));
  }

  if (a2 >= 0x21)
  {
    v13 = this + a2;
    v14 = *(this + a2 - 16);
    v15 = *(this + a2 - 8);
    v16 = *this - 0x3C5A37A36834CED9 * (v14 + a2);
    v18 = *(this + 2);
    v17 = *(this + 3);
    v19 = __ROR8__(v16 + v17, 52);
    v20 = v16 + *(this + 1);
    v21 = __ROR8__(v20, 7);
    v22 = v20 + v18;
    v23 = v21 + __ROR8__(*this - 0x3C5A37A36834CED9 * (v14 + a2), 37) + v19;
    v24 = *(this + a2 - 32) + v18;
    v25 = __ROR8__(v24 + v15, 52);
    v26 = v23 + __ROR8__(v22, 31);
    v27 = __ROR8__(v24, 37);
    v28 = *(v13 - 3) + v24;
    v29 = __ROR8__(v28, 7);
    v30 = v28 + v14;
    v31 = __ROR8__(v30, 31);
    v32 = ((0xC3A5C85C97CB3127 * ((0xC3A5C85C97CB3127 * (v30 + v15 + v26) - 0x651E95C4D06FBFB1 * (v22 + v17 + v27 + v25 + v29 + v31)) ^ ((0xC3A5C85C97CB3127 * (v30 + v15 + v26) - 0x651E95C4D06FBFB1 * (v22 + v17 + v27 + v25 + v29 + v31)) >> 47))) ^ a3) + v26;
    return 0x9AE16A3B2F90404FLL * (v32 ^ (v32 >> 47));
  }

  if (a2)
  {
    v32 = (0x9AE16A3B2F90404FLL * (*this | (*(this + (a2 >> 1)) << 8))) ^ (0xC949D7C7509E6557 * (a2 + 4 * *(this + a2 - 1))) ^ a3;
    return 0x9AE16A3B2F90404FLL * (v32 ^ (v32 >> 47));
  }

  return a3 ^ 0x9AE16A3B2F90404FLL;
}

unint64_t llvm::hashing::detail::hash_state::finalize(llvm::hashing::detail::hash_state *this, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * (*(this + 5) ^ ((0x9DDFEA08EB382D69 * (*(this + 5) ^ *(this + 3))) >> 47) ^ (0x9DDFEA08EB382D69 * (*(this + 5) ^ *(this + 3))));
  v3 = 0x9DDFEA08EB382D69 * (*(this + 6) ^ ((0x9DDFEA08EB382D69 * (*(this + 6) ^ *(this + 4))) >> 47) ^ (0x9DDFEA08EB382D69 * (*(this + 6) ^ *(this + 4))));
  v4 = *this - 0x4B6D499041670D8DLL * (a2 ^ (a2 >> 47)) - 0x622015F714C7D297 * (v3 ^ (v3 >> 47));
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (*(this + 2) - 0x4B6D499041670D8DLL * (*(this + 1) ^ (*(this + 1) >> 47)) - 0x622015F714C7D297 * (v2 ^ (v2 >> 47))));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

char *std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,char *,char *>(char *__src, char *a2, char *a3)
{
  v4 = a3;
  if (__src != a2)
  {
    if (a2 == a3)
    {
      return __src;
    }

    else if (__src + 1 == a2)
    {
      v6 = *__src;
      v7 = a3 - a2;
      memmove(__src, __src + 1, a3 - a2);
      v4 = &__src[v7];
      *v4 = v6;
    }

    else if (a2 + 1 == a3)
    {
      v8 = *(a3 - 1);
      v4 = __src + 1;
      v9 = a3 - 1 - __src;
      if (a3 - 1 != __src)
      {
        memmove(__src + 1, __src, v9);
      }

      *__src = v8;
    }

    else
    {
      return std::__rotate_gcd[abi:nn200100]<std::_ClassicAlgPolicy,char *>(__src, a2, a3);
    }
  }

  return v4;
}

_BYTE *std::__rotate_gcd[abi:nn200100]<std::_ClassicAlgPolicy,char *>(_BYTE *a1, _BYTE *a2, _BYTE *a3)
{
  v3 = a2 - a1;
  if (a2 - a1 == a3 - a2)
  {
    if (a1 != a2 && a2 != a3)
    {
      v4 = a2 + 1;
      v5 = a1 + 1;
      do
      {
        v6 = *(v5 - 1);
        *(v5 - 1) = *(v4 - 1);
        *(v4 - 1) = v6;
        if (v5 == a2)
        {
          break;
        }

        ++v5;
      }

      while (v4++ != a3);
    }
  }

  else
  {
    v8 = a3 - a2;
    v9 = a2 - a1;
    do
    {
      v10 = v9;
      v9 = v8;
      v8 = v10 % v8;
    }

    while (v8);
    v11 = &a1[v9];
    do
    {
      v13 = *--v11;
      v12 = v13;
      v14 = &v11[v3];
      v15 = v11;
      do
      {
        v16 = v15;
        v15 = v14;
        *v16 = *v14;
        v17 = a3 - v14;
        v18 = __OFSUB__(v3, v17);
        v20 = v3 - v17;
        v19 = (v20 < 0) ^ v18;
        v14 = &a1[v20];
        if (v19)
        {
          v14 = &v15[v3];
        }
      }

      while (v14 != v11);
      *v15 = v12;
    }

    while (v11 != a1);
    return &a1[a3 - a2];
  }

  return a2;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::AffineMapAttrStorage * mlir::StorageUniquer::get<mlir::detail::AffineMapAttrStorage,mlir::AffineMap &>(llvm::function_ref<void ()(mlir::detail::AffineMapAttrStorage *)>,mlir::TypeID,mlir::AffineMap &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 16, 3);
  *v4 = 0;
  v4[1] = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(v5[1], v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail20AffineMapAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_13AffineMapAttrEJRNS1_9AffineMapEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<mlir::Attribute>>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, unint64_t *a4, uint64_t a5)
{
  v11 = a2;
  v8 = llvm::hashing::detail::hash_combine_range_impl<mlir::Attribute const*>(*a5, (*a5 + 8 * *(a5 + 8)), a3, a4);
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v11, a3, a4, v8);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v11, v9, a4);
}

unint64_t llvm::hashing::detail::hash_combine_range_impl<mlir::Attribute const*>(unsigned int *a1, unsigned int *a2, uint64_t a3, unint64_t *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a1 == a2)
  {
    v7 = 0;
LABEL_7:
    result = llvm::hashing::detail::hash_short(__src, v7, 0xFF51AFD7ED558CCDLL);
  }

  else
  {
    v5 = a1;
    v6 = 0;
    while (v6 <= 0x38)
    {
      v7 = v6 + 8;
      v8 = *v5;
      v5 += 2;
      *&__src[v6] = (v8 >> 4) ^ (v8 >> 9);
      v6 += 8;
      if (v5 == a2)
      {
        goto LABEL_7;
      }
    }

    v18[0] = xmmword_25D0A0610;
    v18[1] = xmmword_25D0A0620;
    v18[2] = xmmword_25D0A0630;
    v19 = 0xF7ACCA5326449396;
    llvm::hashing::detail::hash_state::mix(v18, __src, a3, a4);
    v10 = 64;
    while (v5 != a2)
    {
      v11 = 0;
      do
      {
        v12 = *v5;
        v5 += 2;
        v13 = v11 + 8;
        *&__src[v11] = (v12 >> 4) ^ (v12 >> 9);
        if (v5 == a2)
        {
          break;
        }

        v14 = v11 >= 0x31;
        v11 += 8;
      }

      while (!v14);
      std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,char *,char *>(__src, &__src[v13], &v21);
      llvm::hashing::detail::hash_state::mix(v18, __src, v15, v16);
      v10 += v13;
    }

    result = llvm::hashing::detail::hash_state::finalize(v18, v10);
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::ArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::ArrayAttrStorage,llvm::ArrayRef<mlir::Attribute>>(llvm::function_ref<void ()(mlir::detail::ArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t ***a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 != (*a1)[1])
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = *(a2 + 8);
  v4 = **a1;
  v5 = 8 * v2 - 8;
  do
  {
    v7 = *v4++;
    v6 = v7;
    v8 = *v3++;
    result = v8 == v6;
    v10 = v8 != v6 || v5 == 0;
    v5 -= 8;
  }

  while (!v10);
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::ArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::ArrayAttrStorage,llvm::ArrayRef<mlir::Attribute>>(llvm::function_ref<void ()(mlir::detail::ArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v4 = mlir::StorageUniquer::StorageAllocator::copyInto<mlir::Attribute>(a2, **a1, *(*a1 + 8));
  v6 = v5;
  v7 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 24, 3);
  *v7 = 0;
  v7[1] = v4;
  v7[2] = v6;
  v8 = *(a1 + 8);
  if (*v8)
  {
    (*v8)(*(v8 + 8), v7);
  }

  return v7;
}

unint64_t mlir::StorageUniquer::StorageAllocator::copyInto<mlir::Attribute>(unint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v4 = 8 * a3;
  result = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 8 * a3, 3);
  v6 = result;
  do
  {
    v7 = *a2++;
    *v6++ = v7;
    v4 -= 8;
  }

  while (v4);
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail16ArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9ArrayAttrEJNS_8ArrayRefINS1_9AttributeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type,long long,llvm::ArrayRef<char>>(llvm::hashing::detail::hash_combine_recursive_helper *a1, void *__dst, unint64_t *a3, unsigned int a4, uint64_t *a5, uint64_t a6)
{
  v13 = 0;
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v13, __dst, a3, (a4 >> 4) ^ (a4 >> 9));
  *v14 = v13;
  v11 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<long long>(a1, v14, v10, a3, *a5);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<char>>(a1, *v14, v11, a3, *a6, *(a6 + 8));
}

void *llvm::hashing::detail::hash_combine_recursive_helper::combine_data<long long>(uint64_t a1, uint64_t *a2, void *__dst, unint64_t a4, uint64_t a5)
{
  __src = a5;
  if ((__dst + 1) <= a4)
  {
    *__dst = a5;
    return __dst + 1;
  }

  else
  {
    v8 = a4 - __dst;
    memcpy(__dst, &__src, a4 - __dst);
    if (*a2)
    {
      llvm::hashing::detail::hash_state::mix((a1 + 64), a1, v9, v10);
      v11 = *a2 + 64;
    }

    else
    {
      llvm::hashing::detail::hash_state::create(a1, *(a1 + 120), v9, v10, v14);
      v12 = v14[1];
      *(a1 + 64) = v14[0];
      *(a1 + 80) = v12;
      *(a1 + 96) = v14[2];
      *(a1 + 112) = v15;
      v11 = 64;
    }

    *a2 = v11;
    if (a1 + 8 - v8 <= a4)
    {
      memcpy(a1, &__src + v8, 8 - v8);
      a1 += 8 - v8;
    }
  }

  return a1;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<char>>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, unint64_t *a4, llvm::hashing::detail::hash_state *a5, uint64_t a6)
{
  v12 = a2;
  v9 = llvm::hashing::detail::hash_combine_range_impl<char const>(a5, a5 + a6, a3, a4);
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v12, a3, a4, v9);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v12, v10, a4);
}

unint64_t llvm::hashing::detail::hash_combine_range_impl<char const>(llvm::hashing::detail::hash_state *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v5 = a2 - a1;
  if ((a2 - a1) > 0x40)
  {
    v13[0] = xmmword_25D0A0610;
    v13[1] = xmmword_25D0A0620;
    v13[2] = xmmword_25D0A0630;
    v14 = 0xF7ACCA5326449396;
    llvm::hashing::detail::hash_state::mix(v13, a1, a3, a4);
    v11 = (v5 & 0xFFFFFFFFFFFFFFC0) - 64;
    if ((v5 & 0xFFFFFFFFFFFFFFC0) != 0x40)
    {
      v12 = (a1 + 64);
      do
      {
        llvm::hashing::detail::hash_state::mix(v13, v12, v9, v10);
        v12 = (v12 + 64);
        v11 -= 64;
      }

      while (v11);
    }

    if ((v5 & 0x3F) != 0)
    {
      llvm::hashing::detail::hash_state::mix(v13, (a2 - 64), v9, v10);
    }

    return llvm::hashing::detail::hash_state::finalize(v13, v5);
  }

  else
  {
    v6 = a2 - a1;

    return llvm::hashing::detail::hash_short(a1, v6, 0xFF51AFD7ED558CCDLL);
  }
}

BOOL mlir::detail::DenseArrayAttrStorage::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *a2 && *(a1 + 16) == *(a2 + 8) && (v2 = *(a1 + 32), v2 == *(a2 + 24)))
  {
    return memcmp(*(a1 + 24), *(a2 + 16), v2) == 0;
  }

  else
  {
    return 0;
  }
}

void *mlir::detail::DenseArrayAttrStorage::construct(unint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v5 = a2[3];
  if (v5)
  {
    v7 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, a2[3], 3);
    for (i = 0; i != v5; ++i)
    {
      *(v7 + i) = *(v6 + i);
    }

    v6 = v7;
  }

  result = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 40, 3);
  *result = 0;
  result[1] = v3;
  result[2] = v4;
  result[3] = v6;
  result[4] = v5;
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::detail::DenseArrayAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeERjRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::ShapedType,llvm::hash_code>(llvm::hashing::detail::hash_combine_recursive_helper *a1, void *__dst, char *a3, unsigned int a4, uint64_t *a5)
{
  v11 = 0;
  v8 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v11, __dst, a3, (a4 >> 4) ^ (a4 >> 9));
  v12 = v11;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v12, v8, a3, *a5);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v12, v9, a3);
}

uint64_t llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseStringElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseStringElementsAttrStorage,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL>(llvm::function_ref<void ()(mlir::detail::DenseStringElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, void *a2)
{
  v2 = *a1;
  if (**a1 == a2[1])
  {
    v3 = v2[3];
    if (v3 == a2[5])
    {
      if (!v3)
      {
        return 1;
      }

      v4 = a2[4];
      v5 = v2[2];
      v6 = v5 + 16 * v3;
      while (1)
      {
        v7 = *(v5 + 8);
        if (v7 != *(v4 + 8) || v7 && memcmp(*v5, *v4, v7))
        {
          break;
        }

        v5 += 16;
        v4 += 16;
        if (v5 == v6)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseStringElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseStringElementsAttrStorage,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL>(llvm::function_ref<void ()(mlir::detail::DenseStringElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = (*a1)[3];
  v7 = *(*a1 + 40);
  if (v6)
  {
    if ((*a1)[5])
    {
      LODWORD(v6) = 1;
    }

    v8 = v6;
    v9 = 16 * v6;
    if (v6 <= 0)
    {
      v14 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 16 * v6, 3);
    }

    else
    {
      v23 = (*a1)[1];
      v10 = (*a1)[2];
      v11 = (v10 + 8);
      v6 = v6;
      v12 = 16 * v6;
      do
      {
        v13 = *v11;
        v11 += 2;
        v12 += v13;
        --v6;
      }

      while (v6);
      v14 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, v12, 3);
      v15 = (v14 + v9);
      v16 = (v14 + 8);
      v17 = (v10 + 8);
      v18 = v8;
      do
      {
        memcpy(v15, *(v17 - 1), *v17);
        v19 = *v17;
        v17 += 2;
        *(v16 - 1) = v15;
        *v16 = v19;
        v15 += v19;
        v16 += 2;
        --v18;
      }

      while (v18);
      v5 = v23;
    }

    v20 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 48, 3);
    *v20 = 0;
    *(v20 + 8) = v4;
    *(v20 + 16) = v5;
    *(v20 + 24) = v7;
    *(v20 + 32) = v14;
    *(v20 + 40) = v8;
  }

  else
  {
    v20 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 48, 3);
    *v20 = 0;
    *(v20 + 8) = v4;
    *(v20 + 16) = v5;
    *(v20 + 24) = v7;
    *(v20 + 32) = 0;
    *(v20 + 40) = 0;
  }

  v21 = a1[1];
  if (*v21)
  {
    (*v21)(v21[1], v20);
  }

  return v20;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail30DenseStringElementsAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_23DenseStringElementsAttrEJRNS1_10ShapedTypeERNS_8ArrayRefINS_9StringRefEEEbEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type,llvm::APFloat>(llvm::hashing::detail::hash_combine_recursive_helper *a1, void *__dst, char *a3, unsigned int a4, llvm::detail *a5)
{
  v15 = 0;
  v8 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v15, __dst, a3, (a4 >> 4) ^ (a4 >> 9));
  v16 = v15;
  v12 = llvm::hash_value(a5, v9, v10, v11);
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v16, v8, a3, v12);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v16, v13, a3);
}

uint64_t llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat const&>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat const&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == **a1)
  {
    return llvm::APFloat::bitwiseIsEqual((a2 + 16), (*a1 + 8));
  }

  else
  {
    return 0;
  }
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat const&>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat const&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::detail::FloatAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void *mlir::detail::FloatAttrStorage::construct(unint64_t *a1, uint64_t *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (a2[1] == &llvm::semPPCDoubleDouble)
  {
    v4 = a2[2];
    v13 = &llvm::semPPCDoubleDouble;
    v14 = v4;
    a2[1] = &llvm::semBogus;
    a2[2] = 0;
  }

  else
  {
    v13 = &llvm::semBogus;
    llvm::detail::IEEEFloat::operator=(&v13, (a2 + 1));
  }

  v5 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 40, 3);
  v6 = v5;
  if (v13 == &llvm::semPPCDoubleDouble)
  {
    v12 = v14;
    v13 = &llvm::semBogus;
    v14 = 0;
    *v5 = 0;
    v5[1] = v3;
    goto LABEL_8;
  }

  v11 = &llvm::semBogus;
  llvm::detail::IEEEFloat::operator=(&v11, &v13);
  v7 = v11;
  *v6 = 0;
  v6[1] = v3;
  if (v7 == &llvm::semPPCDoubleDouble)
  {
LABEL_8:
    v8 = v12;
    v6[2] = &llvm::semPPCDoubleDouble;
    v6[3] = v8;
    v11 = &llvm::semBogus;
    v12 = 0;
    goto LABEL_9;
  }

  v6[2] = &llvm::semBogus;
  llvm::detail::IEEEFloat::operator=((v6 + 2), &v11);
LABEL_9:
  llvm::APFloat::Storage::~Storage(&v11);
  llvm::APFloat::Storage::~Storage(&v13);
  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail16FloatAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9FloatAttrEJRNS1_4TypeERKNS_7APFloatEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat &>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == **a1)
  {
    return llvm::APFloat::bitwiseIsEqual((a2 + 16), (*a1 + 8));
  }

  else
  {
    return 0;
  }
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat &>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::detail::FloatAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail16FloatAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9FloatAttrEJRNS1_4TypeERNS_7APFloatEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == **a1)
  {
    return llvm::APFloat::bitwiseIsEqual((a2 + 16), (*a1 + 8));
  }

  else
  {
    return 0;
  }
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::detail::FloatAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail16FloatAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9FloatAttrEJRNS1_4TypeENS_7APFloatEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type,llvm::APInt>(llvm::hashing::detail::hash_combine_recursive_helper *a1, void *__dst, unint64_t *a3, unsigned int a4, llvm::hashing::detail::hash_state **a5)
{
  *v10 = 0;
  v8 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, v10, __dst, a3, (a4 >> 4) ^ (a4 >> 9));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::APInt>(a1, *v10, v8, a3, a5);
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::APInt>(llvm::hashing::detail::hash_combine_recursive_helper *a1, const llvm::APInt *a2, void *a3, unint64_t *a4, llvm::hashing::detail::hash_state **this)
{
  v11 = a2;
  v8 = llvm::hash_value(this, a2, a3, a4);
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v11, a3, a4, v8);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v11, v9, a4);
}

BOOL mlir::detail::IntegerAttrStorage::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 24);
  if (v3 > 0x40)
  {
    return memcmp(*(a1 + 16), *(a2 + 8), ((v3 + 63) >> 3) & 0x3FFFFFF8) == 0;
  }

  else
  {
    return *(a1 + 16) == *(a2 + 8);
  }
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt const&>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APInt const&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = *(*a1 + 4);
  v4 = **a1;
  v5 = (*a1)[1];
  *(*a1 + 4) = 0;
  v6 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 32, 3);
  *v6 = 0;
  *(v6 + 8) = v4;
  *(v6 + 24) = v3;
  *(v6 + 16) = v5;
  v7 = a1[1];
  if (*v7)
  {
    (*v7)(v7[1], v6);
  }

  return v6;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail18IntegerAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_11IntegerAttrEJRNS1_4TypeERKNS_5APIntEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt &>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x277D85DE8];
  v14[0] = a2;
  v14[1] = a3;
  v11 = a4;
  v13 = *(a5 + 8);
  if (v13 > 0x40)
  {
    operator new[]();
  }

  v12 = *a5;
  memset(v16, 0, sizeof(v16));
  memset(__dst, 0, sizeof(__dst));
  v17 = 0;
  v18 = 0xFF51AFD7ED558CCDLL;
  v6 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type,llvm::APInt>(__dst, __dst, v16, a4, &v12);
  v10 = &v11;
  *&__dst[0] = &v11;
  *(&__dst[0] + 1) = v14;
  v7 = mlir::detail::StorageUniquerImpl::getOrCreate(*a1, &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id, v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt &>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APInt &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt &>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APInt &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
  if (v13 >= 0x41 && v12)
  {
    MEMORY[0x25F891010](v12, 0x1000C8000313F17);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt &>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APInt &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = *(*a1 + 4);
  v4 = **a1;
  v5 = (*a1)[1];
  *(*a1 + 4) = 0;
  v6 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 32, 3);
  *v6 = 0;
  *(v6 + 8) = v4;
  *(v6 + 24) = v3;
  *(v6 + 16) = v5;
  v7 = a1[1];
  if (*v7)
  {
    (*v7)(v7[1], v6);
  }

  return v6;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail18IntegerAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_11IntegerAttrEJRNS1_4TypeERNS_5APIntEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerSetAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerSetAttrStorage,mlir::IntegerSet &>(llvm::function_ref<void ()(mlir::detail::IntegerSetAttrStorage *)>,mlir::TypeID,mlir::IntegerSet &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 16, 3);
  *v4 = 0;
  v4[1] = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(v5[1], v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail21IntegerSetAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14IntegerSetAttrEJRNS1_10IntegerSetEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t mlir::StorageUniquer::get<mlir::detail::OpaqueAttrStorage,mlir::StringAttr &,llvm::StringRef &,mlir::Type &>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4, __int128 *a5, uint64_t a6)
{
  v20 = *MEMORY[0x277D85DE8];
  v15[0] = a2;
  v15[1] = a3;
  v12 = a4;
  v13 = *a5;
  v14 = a6;
  memset(v18, 0, sizeof(v18));
  v19 = 0xFF51AFD7ED558CCDLL;
  v16 = 0;
  v17 = ((a4 >> 4) ^ (a4 >> 9));
  v7 = llvm::hashing::detail::hash_combine_range_impl<char const>(v13, v13 + *(&v13 + 1), a3, a4);
  v8 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v17, &v16, v18, &v18[3] + 8, v7);
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type>(&v17, v16, v8, &v18[3] + 8, &v14);
  v16 = &v12;
  v17 = &v12;
  *&v18[0] = v15;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*a1, &mlir::detail::TypeIDResolver<mlir::OpaqueAttr,void>::id, v9, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::OpaqueAttrStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueAttrStorage,mlir::StringAttr &,llvm::StringRef &,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::OpaqueAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::StringRef &,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::OpaqueAttrStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueAttrStorage,mlir::StringAttr &,llvm::StringRef &,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::OpaqueAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::StringRef &,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v17);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, _DWORD *a5)
{
  v9 = a2;
  v7 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v9, a3, a4, (*a5 >> 4) ^ (*a5 >> 9));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v9, v7, a4);
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::OpaqueAttrStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueAttrStorage,mlir::StringAttr &,llvm::StringRef &,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::OpaqueAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::StringRef &,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) == **a1 && (v4 = *(a2 + 24), v4 == v2[2]) && (!v4 || !memcmp(*(a2 + 16), v2[1], v4)))
  {
    return *(a2 + 32) == v2[3];
  }

  else
  {
    return 0;
  }
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::OpaqueAttrStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueAttrStorage,mlir::StringAttr &,llvm::StringRef &,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::OpaqueAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::StringRef &,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v4 = **a1;
  v5 = (*a1)[3];
  v6 = mlir::StorageUniquer::StorageAllocator::copyInto(a2, (*a1)[1], (*a1)[2]);
  v8 = v7;
  v9 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 40, 3);
  *v9 = 0;
  v9[1] = v4;
  v9[2] = v6;
  v9[3] = v8;
  v9[4] = v5;
  v10 = a1[1];
  if (*v10)
  {
    (*v10)(v10[1], v9);
  }

  return v9;
}

unint64_t mlir::StorageUniquer::StorageAllocator::copyInto(unint64_t *a1, char *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  result = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, a3 + 1, 0);
  v6 = a3;
  v7 = result;
  do
  {
    v8 = *a2++;
    *v7++ = v8;
    --v6;
  }

  while (v6);
  *(result + a3) = 0;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail17OpaqueAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_10OpaqueAttrEJRNS1_10StringAttrERNS_9StringRefERNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr>(llvm::hashing::detail::hash_combine_recursive_helper *a1, void *__dst, char *a3, unsigned int a4, unsigned int *a5, unsigned int *a6)
{
  v16 = 0;
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v16, __dst, a3, (a4 >> 4) ^ (a4 >> 9));
  v11 = *a5;
  v17 = v16;
  v12 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v17, v10, a3, (v11 >> 4) ^ (v11 >> 9));
  v13 = *a6;
  v18 = v17;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v18, v12, a3, (v13 >> 4) ^ (v13 >> 9));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v18, v14, a3);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::SparseElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::SparseElementsAttrStorage,mlir::ShapedType &,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr &>(llvm::function_ref<void ()(mlir::detail::SparseElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = (*a1)[1];
  v8 = *(*a1 + 1);
  v5 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 40, 3);
  *v5 = 0;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  *(v5 + 24) = v8;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(v6[1], v5);
  }

  return v5;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail25SparseElementsAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_18SparseElementsAttrEJRNS1_10ShapedTypeENS1_20DenseIntElementsAttrERNS1_17DenseElementsAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::SparseElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::SparseElementsAttrStorage,mlir::ShapedType &,mlir::DenseIntElementsAttr &,mlir::DenseElementsAttr &>(llvm::function_ref<void ()(mlir::detail::SparseElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DenseIntElementsAttr &,mlir::DenseElementsAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = (*a1)[1];
  v8 = *(*a1 + 1);
  v5 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 40, 3);
  *v5 = 0;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  *(v5 + 24) = v8;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(v6[1], v5);
  }

  return v5;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail25SparseElementsAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_18SparseElementsAttrEJRNS1_10ShapedTypeERNS1_20DenseIntElementsAttrERNS1_17DenseElementsAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<long long>>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, unint64_t *a4, uint64_t a5)
{
  v11 = a2;
  v8 = llvm::hashing::detail::hash_combine_range_impl<long long const>(*a5, *a5 + 8 * *(a5 + 8), a3, a4);
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v11, a3, a4, v8);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v11, v9, a4);
}

unint64_t llvm::hashing::detail::hash_combine_range_impl<long long const>(llvm::hashing::detail::hash_state *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v5 = a2 - a1;
  if ((a2 - a1) > 0x40)
  {
    v13[0] = xmmword_25D0A0610;
    v13[1] = xmmword_25D0A0620;
    v13[2] = xmmword_25D0A0630;
    v14 = 0xF7ACCA5326449396;
    llvm::hashing::detail::hash_state::mix(v13, a1, a3, a4);
    v11 = (v5 & 0xFFFFFFFFFFFFFFC0) - 64;
    if ((v5 & 0xFFFFFFFFFFFFFFC0) != 0x40)
    {
      v12 = (a1 + 64);
      do
      {
        llvm::hashing::detail::hash_state::mix(v13, v12, v9, v10);
        v12 = (v12 + 64);
        v11 -= 64;
      }

      while (v11);
    }

    if ((v5 & 0x3F) != 0)
    {
      llvm::hashing::detail::hash_state::mix(v13, (a2 - 64), v9, v10);
    }

    return llvm::hashing::detail::hash_state::finalize(v13, v5);
  }

  else
  {
    v6 = a2 - a1;

    return llvm::hashing::detail::hash_short(a1, v6, 0xFF51AFD7ED558CCDLL);
  }
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::StridedLayoutAttrStorage * mlir::StorageUniquer::get<mlir::detail::StridedLayoutAttrStorage,long long,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::detail::StridedLayoutAttrStorage *)>,mlir::TypeID,long long,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) == **a1 && (v3 = *(a2 + 24), v3 == v2[2]))
  {
    return memcmp(*(a2 + 16), v2[1], 8 * v3) == 0;
  }

  else
  {
    return 0;
  }
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::StridedLayoutAttrStorage * mlir::StorageUniquer::get<mlir::detail::StridedLayoutAttrStorage,long long,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::detail::StridedLayoutAttrStorage *)>,mlir::TypeID,long long,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v4 = **a1;
  v5 = mlir::StorageUniquer::StorageAllocator::copyInto<long long>(a2, (*a1)[1], (*a1)[2]);
  v7 = v6;
  v8 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 32, 3);
  *v8 = 0;
  v8[1] = v4;
  v8[2] = v5;
  v8[3] = v7;
  v9 = a1[1];
  if (*v9)
  {
    (*v9)(v9[1], v8);
  }

  return v8;
}

unint64_t mlir::StorageUniquer::StorageAllocator::copyInto<long long>(unint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v4 = 8 * a3;
  result = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 8 * a3, 3);
  v6 = result;
  do
  {
    v7 = *a2++;
    *v6++ = v7;
    v4 -= 8;
  }

  while (v4);
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail24StridedLayoutAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_17StridedLayoutAttrEJxNS_8ArrayRefIxEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, void *a2)
{
  v2 = *a1;
  if (a2[1] != **a1)
  {
    return 0;
  }

  v3 = a2[3];
  if (v3 != v2[2])
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  v4 = a2[2];
  v5 = v2[1];
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v4 = **a1;
  v5 = (*a1)[2];
  if (v5)
  {
    v6 = (*a1)[1];
    v7 = 8 * v5;
    v8 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 8 * v5, 3);
    v9 = v8;
    do
    {
      v10 = *v6++;
      *v9++ = v10;
      v7 -= 8;
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v11 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 32, 3);
  *v11 = 0;
  v11[1] = v4;
  v11[2] = v8;
  v11[3] = v5;
  v12 = a1[1];
  if (*v12)
  {
    (*v12)(v12[1], v11);
  }

  return v11;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail20SymbolRefAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_13SymbolRefAttrEJRNS1_10StringAttrERNS_8ArrayRefINS1_17FlatSymbolRefAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::TypeAttrStorage * mlir::StorageUniquer::get<mlir::detail::TypeAttrStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::TypeAttrStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 16, 3);
  *v4 = 0;
  v4[1] = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(v5[1], v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail15TypeAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_8TypeAttrEJRNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

void mlir::Dialect::addAttribute<mlir::AffineMapAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::AffineMapAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::ArrayAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::ArrayAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::DenseArrayAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::DenseArrayAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::DenseIntOrFPElementsAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::DenseIntOrFPElementsAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::DenseStringElementsAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::DenseStringElementsAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::DenseResourceElementsAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::DenseResourceElementsAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::DictionaryAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::DictionaryAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::FloatAttr>(uint64_t a1)
{
  v12[6] = *MEMORY[0x277D85DE8];
  v11[0] = v12;
  v11[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::TypedAttrInterfaceTraits::Model<mlir::FloatAttr>::getType;
  v3 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v11, v3, v2);
  *&v9 = mlir::detail::StorageUserBase<mlir::FloatAttr,mlir::Attribute,mlir::detail::FloatAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v10 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractAttribute::AbstractAttribute(&v6, a1, v11, &v9, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9FloatAttrES2_NSB_16FloatAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v5, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9FloatAttrES2_NSA_16FloatAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v4, &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id, "builtin.float", 13);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v9);
  mlir::detail::InterfaceMap::~InterfaceMap(v11);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id, &v6);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v8);
  mlir::detail::InterfaceMap::~InterfaceMap(&v7);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::IntegerAttr>(uint64_t a1)
{
  v12[6] = *MEMORY[0x277D85DE8];
  v11[0] = v12;
  v11[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::TypedAttrInterfaceTraits::Model<mlir::IntegerAttr>::getType;
  v3 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v11, v3, v2);
  *&v9 = mlir::detail::StorageUserBase<mlir::IntegerAttr,mlir::Attribute,mlir::detail::IntegerAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v10 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractAttribute::AbstractAttribute(&v6, a1, v11, &v9, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11IntegerAttrES2_NSB_18IntegerAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v5, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11IntegerAttrES2_NSA_18IntegerAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v4, &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id, "builtin.integer", 15);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v9);
  mlir::detail::InterfaceMap::~InterfaceMap(v11);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id, &v6);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v8);
  mlir::detail::InterfaceMap::~InterfaceMap(&v7);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::IntegerSetAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::IntegerSetAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::OpaqueAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::OpaqueAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::OpaqueAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::OpaqueAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::SparseElementsAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::SparseElementsAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::StridedLayoutAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::StridedLayoutAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::StridedLayoutAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::StridedLayoutAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::StringAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::StringAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::SymbolRefAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::SymbolRefAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::TypeAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::TypeAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id);
}

uint64_t mlir::Dialect::addAttribute<mlir::UnitAttr>(uint64_t a1)
{
  v6[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::UnitAttr>(a1, &v4);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id, &v4);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v6);
  mlir::detail::InterfaceMap::~InterfaceMap(&v5);
  result = mlir::detail::AttributeUniquer::registerAttribute<mlir::UnitAttr>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::AbstractAttribute::get<mlir::AffineMapAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v12[6] = *MEMORY[0x277D85DE8];
  v11[0] = v12;
  v11[1] = 0x300000000;
  v4 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v4 = mlir::detail::MemRefLayoutAttrInterfaceInterfaceTraits::Model<mlir::AffineMapAttr>::getAffineMap;
  v4[1] = mlir::detail::MemRefLayoutAttrInterfaceInterfaceTraits::Model<mlir::AffineMapAttr>::isIdentity;
  v4[2] = mlir::detail::MemRefLayoutAttrInterfaceInterfaceTraits::Model<mlir::AffineMapAttr>::verifyLayout;
  v5 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v11, v5, v4);
  *&v9 = mlir::detail::StorageUserBase<mlir::AffineMapAttr,mlir::Attribute,mlir::detail::AffineMapAttrStorage,mlir::detail::AttributeUniquer,mlir::MemRefLayoutAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v10 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v11, &v9, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_13AffineMapAttrES2_NSB_20AffineMapAttrStorageENSB_16AttributeUniquerEJNS1_25MemRefLayoutAttrInterface5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v8, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_13AffineMapAttrES2_NSA_20AffineMapAttrStorageENSA_16AttributeUniquerEJNS1_25MemRefLayoutAttrInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v7, &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id, "builtin.affine_map", 18);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v9);
  mlir::detail::InterfaceMap::~InterfaceMap(v11);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::MemRefLayoutAttrInterface>();
      mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 1872);
}

uint64_t llvm::getTypeName<mlir::MemRefLayoutAttrInterface>()
{
  {
    llvm::getTypeName<mlir::MemRefLayoutAttrInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::MemRefLayoutAttrInterface>();
    *algn_27FC17768 = v1;
  }

  return llvm::getTypeName<mlir::MemRefLayoutAttrInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::MemRefLayoutAttrInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::MemRefLayoutAttrInterface]";
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

BOOL mlir::detail::StorageUserBase<mlir::AffineMapAttr,mlir::Attribute,mlir::detail::AffineMapAttrStorage,mlir::detail::AttributeUniquer,mlir::MemRefLayoutAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemRefLayoutAttrInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  do
  {
    v4 = v3;
    v3 = 1;
  }

  while ((v4 & 1) == 0 && v2 != a1);
  return (v4 & 1) == 0;
}

uint64_t mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemRefLayoutAttrInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::MemRefLayoutAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemRefLayoutAttrInterface::Trait>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemRefLayoutAttrInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 1592);
}

uint64_t llvm::getTypeName<mlir::MemRefLayoutAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemRefLayoutAttrInterface::Trait>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::MemRefLayoutAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemRefLayoutAttrInterface::Trait>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::MemRefLayoutAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemRefLayoutAttrInterface::Trait>(void)::Empty>>();
    unk_27FC17650 = v1;
  }

  return llvm::getTypeName<mlir::MemRefLayoutAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemRefLayoutAttrInterface::Trait>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::MemRefLayoutAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemRefLayoutAttrInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::MemRefLayoutAttrInterface::Trait<Empty>]";
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

void *mlir::AbstractAttribute::AbstractAttribute(void *a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *a1 = a2;
  a1[1] = a1 + 3;
  v17 = (a1 + 1);
  a1[2] = 0x300000000;
  if (*(a3 + 8))
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(v17, a3);
  }

  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::UniqueFunctionBase((a1 + 9), a4);
  a1[13] = a5;
  a1[14] = a6;
  a1[15] = a7;
  a1[16] = a8;
  a1[17] = a9;
  a1[18] = a10;
  a1[19] = a11;
  return a1;
}

uint64_t llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a2 == a2 + 16)
    {
      v5 = *(a2 + 8);
      v6 = *(a1 + 8);
      if (v6 >= v5)
      {
        if (v5)
        {
          v8 = *a1;
          v9 = &v4[2 * v5];
          do
          {
            *v8 = *v4;
            v8[1] = v4[1];
            v4 += 2;
            v8 += 2;
          }

          while (v4 != v9);
        }
      }

      else
      {
        if (*(a1 + 12) >= v5)
        {
          if (v6)
          {
            v10 = &v4[2 * v6];
            v11 = *a1;
            do
            {
              *v11 = *v4;
              v11[1] = v4[1];
              v4 += 2;
              v11 += 2;
            }

            while (v4 != v10);
          }

          else
          {
            v6 = 0;
          }

          v7 = v5;
        }

        else
        {
          *(a1 + 8) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5, 16);
          v6 = 0;
          v7 = *(a2 + 8);
        }

        v12 = v7 - v6;
        if (v12)
        {
          memcpy((*a1 + 16 * v6), (*a2 + 16 * v6), 16 * v12);
        }
      }

      *(a1 + 8) = v5;
      *(a2 + 8) = 0;
    }

    else
    {
      llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::assignRemote(a1, a2);
    }
  }

  return a1;
}

double llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::assignRemote(uint64_t a1, uint64_t a2)
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

uint64_t llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::UniqueFunctionBase(uint64_t a1, __int128 *a2)
{
  *(a1 + 24) = 0;
  v3 = *(a2 + 3);
  *(a1 + 24) = v3;
  if (v3 >= 8)
  {
    if ((v3 & 2) != 0 && (v3 & 4) != 0)
    {
      (*((v3 & 0xFFFFFFFFFFFFFFF8) + 8))(a1, a2);
      (*((*(a1 + 24) & 0xFFFFFFFFFFFFFFF8) + 16))(a2);
    }

    else
    {
      v5 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v5;
    }

    *(a2 + 3) = 0;
  }

  return a1;
}

void *llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(void *a1)
{
  v1 = a1;
  v2 = a1[3];
  if (v2 >= 8)
  {
    if ((v2 & 4) != 0)
    {
      if ((v2 & 2) == 0)
      {
        a1 = *a1;
      }

      (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16))(a1);
    }

    if ((v2 & 2) == 0)
    {
      MEMORY[0x25F891030](*v1, v1[2]);
    }
  }

  return v1;
}

void mlir::detail::InterfaceMap::~InterfaceMap(void **this)
{
  v2 = *this;
  v3 = *(this + 2);
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
    v2 = *this;
  }

  if (v2 != this + 2)
  {
    free(v2);
  }
}

void mlir::AbstractAttribute::get<mlir::ArrayAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::ArrayAttr,mlir::Attribute,mlir::detail::ArrayAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9ArrayAttrES2_NSB_16ArrayAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9ArrayAttrES2_NSA_16ArrayAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id, "builtin.array", 13);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9ArrayAttrES2_NSB_16ArrayAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v7 = *(a2 + 8);
    v8 = 8 * v4;
    do
    {
      if (*v7)
      {
        result = a3(a4);
      }

      ++v7;
      v8 -= 8;
    }

    while (v8);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9ArrayAttrES2_NSA_16ArrayAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, unsigned int *a2, uint64_t a3, unint64_t a4)
{
  if (a4 >= a2[4])
  {
    v5 = a2[4];
  }

  else
  {
    v5 = a4;
  }

  return mlir::ArrayAttr::get(*(**a2 + 32), a3, v5);
}

void mlir::AbstractAttribute::get<mlir::DenseArrayAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v12[6] = *MEMORY[0x277D85DE8];
  v11[0] = v12;
  v11[1] = 0x300000000;
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::BlobAttrInterfaceTraits::Model<mlir::DenseArrayAttr>::getData;
  v5 = mlir::detail::TypeIDResolver<mlir::BlobAttr,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v11, v5, v4);
  *&v9 = mlir::detail::StorageUserBase<mlir::DenseArrayAttr,mlir::Attribute,mlir::detail::DenseArrayAttrStorage,mlir::detail::AttributeUniquer,mlir::BlobAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v10 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v11, &v9, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14DenseArrayAttrES2_NSB_21DenseArrayAttrStorageENSB_16AttributeUniquerEJNS1_8BlobAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v8, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14DenseArrayAttrES2_NSA_21DenseArrayAttrStorageENSA_16AttributeUniquerEJNS1_8BlobAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v7, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, "builtin.dense_array", 19);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v9);
  mlir::detail::InterfaceMap::~InterfaceMap(v11);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::detail::BlobAttrInterfaceTraits::Model<mlir::DenseArrayAttr>::getData(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 24);
  v3 = *(a2 + 32);
  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::BlobAttr,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1D3A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D3A0))
  {
    v1 = llvm::getTypeName<mlir::BlobAttr>();
    _MergedGlobals_4 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1D3A0);
  }

  return _MergedGlobals_4;
}

uint64_t llvm::getTypeName<mlir::BlobAttr>()
{
  if ((atomic_load_explicit(&qword_27FC1D3B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D3B8))
  {
    qword_27FC1D3A8 = llvm::detail::getTypeNameImpl<mlir::BlobAttr>();
    unk_27FC1D3B0 = v1;
    __cxa_guard_release(&qword_27FC1D3B8);
  }

  return qword_27FC1D3A8;
}

const char *llvm::detail::getTypeNameImpl<mlir::BlobAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::BlobAttr]";
  v6 = 76;
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

BOOL mlir::detail::StorageUserBase<mlir::DenseArrayAttr,mlir::Attribute,mlir::detail::DenseArrayAttrStorage,mlir::detail::AttributeUniquer,mlir::BlobAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::BlobAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::BlobAttr::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  do
  {
    v4 = v3;
    v3 = 1;
  }

  while ((v4 & 1) == 0 && v2 != a1);
  return (v4 & 1) == 0;
}

uint64_t mlir::detail::TypeIDResolver<mlir::BlobAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::BlobAttr::Trait>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1D3C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D3C8))
  {
    v1 = llvm::getTypeName<mlir::BlobAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::BlobAttr::Trait>(void)::Empty>>();
    qword_27FC1D3C0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1D3C8);
  }

  return qword_27FC1D3C0;
}

uint64_t llvm::getTypeName<mlir::BlobAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::BlobAttr::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC1D3E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D3E0))
  {
    qword_27FC1D3D0 = llvm::detail::getTypeNameImpl<mlir::BlobAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::BlobAttr::Trait>(void)::Empty>>();
    *algn_27FC1D3D8 = v1;
    __cxa_guard_release(&qword_27FC1D3E0);
  }

  return qword_27FC1D3D0;
}

const char *llvm::detail::getTypeNameImpl<mlir::BlobAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::BlobAttr::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::BlobAttr::Trait<Empty>]";
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

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14DenseArrayAttrES2_NSB_21DenseArrayAttrStorageENSB_16AttributeUniquerEJNS1_8BlobAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  if (*(a2 + 8))
  {
    return a5(a6);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14DenseArrayAttrES2_NSA_21DenseArrayAttrStorageENSA_16AttributeUniquerEJNS1_8BlobAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  v27[5] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 24);
  v18 = *(a2 + 8);
  v19 = v5;
  if (v18)
  {
    v6 = *a5;
  }

  else
  {
    v6 = 0;
  }

  v8 = *(&v19 + 1);
  v7 = v19;
  v24 = &v26;
  v9 = xmmword_25D0A0550;
  v25 = xmmword_25D0A0550;
  if (*(&v19 + 1))
  {
    do
    {
      v10 = *v7;
      if (v25 >= *(&v25 + 1))
      {
        llvm::SmallVectorTemplateBase<char,true>::push_back(&v24, v10);
        v9 = xmmword_25D0A0550;
      }

      else
      {
        *(v24 + v25) = v10;
        *&v25 = v25 + 1;
      }

      ++v7;
      --v8;
    }

    while (v8);
    v20 = &v22;
    *v21 = v9;
    if (v25)
    {
      llvm::SmallVectorImpl<char>::operator=(&v20, &v24);
      v9 = xmmword_25D0A0550;
    }
  }

  else
  {
    v20 = &v22;
    *v21 = xmmword_25D0A0550;
  }

  if (v24 != &v26)
  {
    free(v24);
    v9 = xmmword_25D0A0550;
  }

  v24 = v6;
  *&v25 = &v18 + 8;
  *(&v25 + 1) = v27;
  v26 = v9;
  if (v21[0])
  {
    llvm::SmallVectorImpl<char>::operator=(&v25 + 8, &v20);
    v9 = xmmword_25D0A0550;
  }

  if (v20 != &v22)
  {
    free(v20);
    v9 = xmmword_25D0A0550;
  }

  v11 = v24;
  v12 = v25;
  v20 = v24;
  v21[0] = v25;
  v21[1] = v23;
  v22 = v9;
  if (v26)
  {
    llvm::SmallVectorImpl<char>::operator=(&v21[1], &v25 + 8);
    v11 = v20;
    v12 = v21[0];
    v13 = v21[1];
    v14 = v22;
  }

  else
  {
    v14 = 0;
    v13 = v23;
  }

  v15 = mlir::DenseArrayAttr::get(v11, *v12, v13, v14);
  if (v21[1] != v23)
  {
    free(v21[1]);
  }

  if (*(&v25 + 1) != v27)
  {
    free(*(&v25 + 1));
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t llvm::SmallVectorImpl<char>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        memmove(*a1, *a2, v4);
      }
    }

    else
    {
      if (*(a1 + 16) >= v4)
      {
        if (v5)
        {
          memmove(*a1, *a2, *(a1 + 8));
        }
      }

      else
      {
        *(a1 + 8) = 0;
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, (a1 + 24), v4, 1);
        v5 = 0;
      }

      v6 = *(a2 + 8);
      if (v6 != v5)
      {
        memcpy((*a1 + v5), (*a2 + v5), v6 - v5);
      }
    }

    *(a1 + 8) = v4;
  }

  return a1;
}

void mlir::AbstractAttribute::get<mlir::DenseIntOrFPElementsAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v24[6] = *MEMORY[0x277D85DE8];
  v22 = v24;
  v23 = 0x300000000;
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::TypedAttrInterfaceTraits::Model<mlir::DenseIntOrFPElementsAttr>::getType;
  v5 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(&v22, v5, v4);
  v6 = malloc_type_malloc(0x20uLL, 0xE0040DD5D8FE3uLL);
  *v6 = mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseIntOrFPElementsAttr>::getValuesImpl;
  v6[1] = mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseIntOrFPElementsAttr>::isSplat;
  v6[2] = mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseIntOrFPElementsAttr>::getShapedType;
  v6[3] = 0;
  v7 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
  v8 = v23;
  if (v23)
  {
    v9 = v22;
    v10 = v23;
    do
    {
      v11 = v10 >> 1;
      v12 = &v9[16 * (v10 >> 1)];
      v14 = *v12;
      v13 = (v12 + 2);
      v10 += ~(v10 >> 1);
      if (v14 < v7)
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

  else
  {
    v8 = 0;
    v9 = v22;
  }

  if (v9 != &v22[16 * v8] && *v9 == v7)
  {
    v15 = *(v9 + 1);
  }

  else
  {
    v15 = 0;
  }

  v6[3] = v15;
  v16 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(&v22, v16, v6);
  *&v20 = mlir::detail::StorageUserBase<mlir::DenseIntOrFPElementsAttr,mlir::DenseElementsAttr,mlir::detail::DenseIntOrFPElementsAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v21 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, &v22, &v20, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_24DenseIntOrFPElementsAttrENS1_17DenseElementsAttrENSB_31DenseIntOrFPElementsAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v19, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_24DenseIntOrFPElementsAttrENS1_17DenseElementsAttrENSA_31DenseIntOrFPElementsAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v18, &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id, "builtin.dense_int_or_fp_elements", 32);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v20);
  mlir::detail::InterfaceMap::~InterfaceMap(&v22);
  v17 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseIntOrFPElementsAttr>::getValuesImpl@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v122 = *MEMORY[0x277D85DE8];
  v113 = a1;
  if (mlir::detail::TypeIDResolver<unsigned char,void>::resolveTypeID() == a2)
  {
    v6 = *(a1 + 8);
    result = (*(*(a1 + 16) + 24))();
    if (!v8)
    {
      goto LABEL_6;
    }

    v9 = 8 * v8;
    v10 = 1;
    do
    {
      v11 = *result;
      result += 8;
      v10 *= v11;
      v9 -= 8;
    }

    while (v9);
    if (v10)
    {
LABEL_6:
      result = mlir::DenseElementsAttr::tryGetValues<unsigned char,void>(v117, &v113);
      goto LABEL_7;
    }

LABEL_148:
    v15 = 1;
    v114 = 1;
    v115 = 0;
    goto LABEL_149;
  }

  if (mlir::detail::TypeIDResolver<unsigned short,void>::resolveTypeID() == a2)
  {
LABEL_14:
    result = mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::buildValueResult<unsigned short>(&v114, &v113);
    goto LABEL_150;
  }

  if (mlir::detail::TypeIDResolver<unsigned int,void>::resolveTypeID() == a2)
  {
LABEL_16:
    result = mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::buildValueResult<unsigned int>(&v114, &v113);
    goto LABEL_150;
  }

  if (mlir::detail::TypeIDResolver<unsigned long long,void>::resolveTypeID() == a2)
  {
    v16 = *(a1 + 8);
    result = (*(*(a1 + 16) + 24))();
    if (v17)
    {
      v18 = 8 * v17;
      v19 = 1;
      do
      {
        v20 = *result;
        result += 8;
        v19 *= v20;
        v18 -= 8;
      }

      while (v18);
      if (!v19)
      {
        goto LABEL_148;
      }
    }

    result = mlir::DenseElementsAttr::tryGetValues<unsigned long long,void>(&v113, v117);
    goto LABEL_23;
  }

  if (mlir::detail::TypeIDResolver<signed char,void>::resolveTypeID() != a2)
  {
    if (mlir::detail::TypeIDResolver<short,void>::resolveTypeID() == a2)
    {
LABEL_35:
      result = mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::buildValueResult<short>(&v114, &v113);
      goto LABEL_150;
    }

    if (mlir::detail::TypeIDResolver<int,void>::resolveTypeID() == a2)
    {
LABEL_37:
      result = mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::buildValueResult<int>(&v114, &v113);
      goto LABEL_150;
    }

    if (mlir::detail::TypeIDResolver<long long,void>::resolveTypeID() == a2)
    {
      v27 = *(a1 + 8);
      result = (*(*(a1 + 16) + 24))();
      if (v28)
      {
        v29 = 8 * v28;
        v30 = 1;
        do
        {
          v31 = *result;
          result += 8;
          v30 *= v31;
          v29 -= 8;
        }

        while (v29);
        if (!v30)
        {
          goto LABEL_148;
        }
      }

      result = mlir::DenseElementsAttr::tryGetValues<long long,void>(&v113, v117);
      goto LABEL_23;
    }

    if (mlir::detail::TypeIDResolver<short,void>::resolveTypeID() == a2)
    {
      goto LABEL_35;
    }

    if (mlir::detail::TypeIDResolver<unsigned short,void>::resolveTypeID() == a2)
    {
      goto LABEL_14;
    }

    if (mlir::detail::TypeIDResolver<int,void>::resolveTypeID() == a2)
    {
      goto LABEL_37;
    }

    if (mlir::detail::TypeIDResolver<unsigned int,void>::resolveTypeID() == a2)
    {
      goto LABEL_16;
    }

    if (mlir::detail::TypeIDResolver<long,void>::resolveTypeID() == a2)
    {
      v32 = *(a1 + 8);
      result = (*(*(a1 + 16) + 24))();
      if (v33)
      {
        v34 = 8 * v33;
        v35 = 1;
        do
        {
          v36 = *result;
          result += 8;
          v35 *= v36;
          v34 -= 8;
        }

        while (v34);
        if (!v35)
        {
          goto LABEL_148;
        }
      }

      result = mlir::DenseElementsAttr::tryGetValues<long,void>(v117, &v113);
      goto LABEL_23;
    }

    if (mlir::detail::TypeIDResolver<unsigned long,void>::resolveTypeID() == a2)
    {
      v37 = *(a1 + 8);
      result = (*(*(a1 + 16) + 24))();
      if (v38)
      {
        v39 = 8 * v38;
        v40 = 1;
        do
        {
          v41 = *result;
          result += 8;
          v40 *= v41;
          v39 -= 8;
        }

        while (v39);
        if (!v40)
        {
          goto LABEL_148;
        }
      }

      result = mlir::DenseElementsAttr::tryGetValues<unsigned long,void>(v117, &v113);
      goto LABEL_23;
    }

    if (mlir::detail::TypeIDResolver<std::complex<unsigned char>,void>::resolveTypeID() == a2)
    {
      v42 = *(a1 + 8);
      result = (*(*(a1 + 16) + 24))();
      if (v43)
      {
        v44 = 8 * v43;
        v45 = 1;
        do
        {
          v46 = *result;
          result += 8;
          v45 *= v46;
          v44 -= 8;
        }

        while (v44);
        if (!v45)
        {
          goto LABEL_148;
        }
      }

      result = mlir::DenseElementsAttr::tryGetValues<std::complex<unsigned char>,unsigned char,void>(v117, &v113);
      goto LABEL_66;
    }

    if (mlir::detail::TypeIDResolver<std::complex<unsigned short>,void>::resolveTypeID() == a2)
    {
      v48 = *(a1 + 8);
      result = (*(*(a1 + 16) + 24))();
      if (v49)
      {
        v50 = 8 * v49;
        v51 = 1;
        do
        {
          v52 = *result;
          result += 8;
          v51 *= v52;
          v50 -= 8;
        }

        while (v50);
        if (!v51)
        {
          goto LABEL_148;
        }
      }

      result = mlir::DenseElementsAttr::tryGetValues<std::complex<unsigned short>,unsigned short,void>(v117, &v113);
      goto LABEL_77;
    }

    if (mlir::detail::TypeIDResolver<std::complex<unsigned int>,void>::resolveTypeID() == a2)
    {
      v54 = *(a1 + 8);
      result = (*(*(a1 + 16) + 24))();
      if (v55)
      {
        v56 = 8 * v55;
        v57 = 1;
        do
        {
          v58 = *result;
          result += 8;
          v57 *= v58;
          v56 -= 8;
        }

        while (v56);
        if (!v57)
        {
          goto LABEL_148;
        }
      }

      result = mlir::DenseElementsAttr::tryGetValues<std::complex<unsigned int>,unsigned int,void>(v117, &v113);
      goto LABEL_23;
    }

    if (mlir::detail::TypeIDResolver<std::complex<unsigned long long>,void>::resolveTypeID() == a2)
    {
      v59 = *(a1 + 8);
      result = (*(*(a1 + 16) + 24))();
      if (v60)
      {
        v61 = 8 * v60;
        v62 = 1;
        do
        {
          v63 = *result;
          result += 8;
          v62 *= v63;
          v61 -= 8;
        }

        while (v61);
        if (!v62)
        {
          goto LABEL_148;
        }
      }

      result = mlir::DenseElementsAttr::tryGetValues<std::complex<unsigned long long>,unsigned long long,void>(v117, &v113);
      goto LABEL_94;
    }

    if (mlir::detail::TypeIDResolver<std::complex<signed char>,void>::resolveTypeID() == a2)
    {
      v65 = *(a1 + 8);
      result = (*(*(a1 + 16) + 24))();
      if (v66)
      {
        v67 = 8 * v66;
        v68 = 1;
        do
        {
          v69 = *result;
          result += 8;
          v68 *= v69;
          v67 -= 8;
        }

        while (v67);
        if (!v68)
        {
          goto LABEL_148;
        }
      }

      result = mlir::DenseElementsAttr::tryGetValues<std::complex<signed char>,signed char,void>(v117, &v113);
LABEL_66:
      if (v118)
      {
        v12 = *(v113 + 24);
        if (v117[8])
        {
          v47 = 0;
        }

        else
        {
          v47 = *&v117[16];
        }

        v14 = *v117 + 2 * v47;
        goto LABEL_12;
      }

      goto LABEL_147;
    }

    if (mlir::detail::TypeIDResolver<std::complex<short>,void>::resolveTypeID() == a2)
    {
      v70 = *(a1 + 8);
      result = (*(*(a1 + 16) + 24))();
      if (v71)
      {
        v72 = 8 * v71;
        v73 = 1;
        do
        {
          v74 = *result;
          result += 8;
          v73 *= v74;
          v72 -= 8;
        }

        while (v72);
        if (!v73)
        {
          goto LABEL_148;
        }
      }

      result = mlir::DenseElementsAttr::tryGetValues<std::complex<short>,short,void>(v117, &v113);
      goto LABEL_77;
    }

    if (mlir::detail::TypeIDResolver<std::complex<int>,void>::resolveTypeID() == a2)
    {
      v75 = *(a1 + 8);
      result = (*(*(a1 + 16) + 24))();
      if (v76)
      {
        v77 = 8 * v76;
        v78 = 1;
        do
        {
          v79 = *result;
          result += 8;
          v78 *= v79;
          v77 -= 8;
        }

        while (v77);
        if (!v78)
        {
          goto LABEL_148;
        }
      }

      result = mlir::DenseElementsAttr::tryGetValues<std::complex<int>,int,void>(v117, &v113);
    }

    else
    {
      if (mlir::detail::TypeIDResolver<std::complex<long long>,void>::resolveTypeID() == a2)
      {
        v80 = *(a1 + 8);
        result = (*(*(a1 + 16) + 24))();
        if (v81)
        {
          v82 = 8 * v81;
          v83 = 1;
          do
          {
            v84 = *result;
            result += 8;
            v83 *= v84;
            v82 -= 8;
          }

          while (v82);
          if (!v83)
          {
            goto LABEL_148;
          }
        }

        result = mlir::DenseElementsAttr::tryGetValues<std::complex<long long>,long long,void>(v117, &v113);
LABEL_94:
        if (v118)
        {
          v12 = *(v113 + 24);
          if (v117[8])
          {
            v64 = 0;
          }

          else
          {
            v64 = *&v117[16];
          }

          v14 = *v117 + 16 * v64;
          goto LABEL_12;
        }

        goto LABEL_147;
      }

      if (mlir::detail::TypeIDResolver<float,void>::resolveTypeID() == a2)
      {
        v85 = *(a1 + 8);
        result = (*(*(a1 + 16) + 24))();
        if (v86)
        {
          v87 = 8 * v86;
          v88 = 1;
          do
          {
            v89 = *result;
            result += 8;
            v88 *= v89;
            v87 -= 8;
          }

          while (v87);
          if (!v88)
          {
            goto LABEL_148;
          }
        }

        result = mlir::DenseElementsAttr::tryGetValues<float,void>(&v113, v117);
LABEL_77:
        if (v118)
        {
          v12 = *(v113 + 24);
          if (v117[8])
          {
            v53 = 0;
          }

          else
          {
            v53 = *&v117[16];
          }

          v14 = *v117 + 4 * v53;
          goto LABEL_12;
        }

        goto LABEL_147;
      }

      if (mlir::detail::TypeIDResolver<double,void>::resolveTypeID() == a2)
      {
        v90 = *(a1 + 8);
        result = (*(*(a1 + 16) + 24))();
        if (v91)
        {
          v92 = 8 * v91;
          v93 = 1;
          do
          {
            v94 = *result;
            result += 8;
            v93 *= v94;
            v92 -= 8;
          }

          while (v92);
          if (!v93)
          {
            goto LABEL_148;
          }
        }

        result = mlir::DenseElementsAttr::tryGetValues<double,void>(v117, &v113);
      }

      else
      {
        if (mlir::detail::TypeIDResolver<std::complex<float>,void>::resolveTypeID() != a2)
        {
          result = mlir::detail::TypeIDResolver<std::complex<double>,void>::resolveTypeID();
          if (result != a2)
          {
            goto LABEL_147;
          }

          v100 = *(a1 + 8);
          result = (*(*(a1 + 16) + 24))();
          if (v101)
          {
            v102 = 8 * v101;
            v103 = 1;
            do
            {
              v104 = *result;
              result += 8;
              v103 *= v104;
              v102 -= 8;
            }

            while (v102);
            if (!v103)
            {
              goto LABEL_148;
            }
          }

          result = mlir::DenseElementsAttr::tryGetValues<std::complex<double>,double,void>(v117, &v113);
          goto LABEL_94;
        }

        v95 = *(a1 + 8);
        result = (*(*(a1 + 16) + 24))();
        if (v96)
        {
          v97 = 8 * v96;
          v98 = 1;
          do
          {
            v99 = *result;
            result += 8;
            v98 *= v99;
            v97 -= 8;
          }

          while (v97);
          if (!v98)
          {
            goto LABEL_148;
          }
        }

        result = mlir::DenseElementsAttr::tryGetValues<std::complex<float>,float,void>(v117, &v113);
      }
    }

LABEL_23:
    if (v118)
    {
      v12 = *(v113 + 24);
      if (v117[8])
      {
        v21 = 0;
      }

      else
      {
        v21 = *&v117[16];
      }

      v14 = *v117 + 8 * v21;
      goto LABEL_12;
    }

LABEL_147:
    v15 = 0;
    LOBYTE(v114) = 0;
    goto LABEL_149;
  }

  v22 = *(a1 + 8);
  result = (*(*(a1 + 16) + 24))();
  if (v23)
  {
    v24 = 8 * v23;
    v25 = 1;
    do
    {
      v26 = *result;
      result += 8;
      v25 *= v26;
      v24 -= 8;
    }

    while (v24);
    if (!v25)
    {
      goto LABEL_148;
    }
  }

  result = mlir::DenseElementsAttr::tryGetValues<signed char,void>(&v113, v117);
LABEL_7:
  if ((v118 & 1) == 0)
  {
    goto LABEL_147;
  }

  v12 = *(v113 + 24);
  if (v117[8])
  {
    v13 = 0;
  }

  else
  {
    v13 = *&v117[16];
  }

  v14 = *v117 + v13;
LABEL_12:
  v15 = 1;
  LOBYTE(v114) = 1;
  HIBYTE(v114) = v12;
  v115 = v14;
LABEL_149:
  v116 = v15;
LABEL_150:
  if (v116 == 1)
  {
    *a3 = v114;
    *(a3 + 8) = v115;
    *(a3 + 16) = 1;
  }

  else
  {
    if (mlir::detail::TypeIDResolver<mlir::Attribute,void>::resolveTypeID() == a2)
    {
      v105 = *(v113 + 8);
      (*(*(v113 + 16) + 24))();
      v106 = *(v113 + 24);
      operator new();
    }

    if (mlir::detail::TypeIDResolver<llvm::APInt,void>::resolveTypeID() == a2)
    {
      result = mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v113, v117);
      if (v119)
      {
        *v121 = *&v117[1];
        *&v121[15] = *&v117[16];
        v107 = *(v113 + 24);
        operator new();
      }
    }

    else if (mlir::detail::TypeIDResolver<BOOL,void>::resolveTypeID() == a2)
    {
      result = mlir::DenseElementsAttr::tryGetValues<BOOL,void>(&v113, v117);
      if (v118)
      {
        *v121 = *&v117[1];
        *&v121[15] = *&v117[16];
        v108 = *(v113 + 24);
        operator new();
      }
    }

    else if (mlir::detail::TypeIDResolver<std::complex<llvm::APInt>,void>::resolveTypeID() == a2)
    {
      result = mlir::DenseElementsAttr::tryGetComplexIntValues(&v113, v117);
      if (v119)
      {
        *v121 = *&v117[1];
        *&v121[15] = *&v117[16];
        v109 = *(v113 + 24);
        operator new();
      }
    }

    else if (mlir::detail::TypeIDResolver<llvm::APFloat,void>::resolveTypeID() == a2)
    {
      result = mlir::DenseElementsAttr::tryGetFloatValues(&v113, v117);
      if (v120)
      {
        *v121 = *&v117[1];
        *&v121[16] = *&v117[17];
        *&v121[31] = *&v117[32];
        v110 = *(v113 + 24);
        operator new();
      }
    }

    else
    {
      result = mlir::detail::TypeIDResolver<std::complex<llvm::APFloat>,void>::resolveTypeID();
      if (result == a2)
      {
        result = mlir::DenseElementsAttr::tryGetComplexFloatValues(&v113, v117);
        if (v120)
        {
          *v121 = *&v117[1];
          *&v121[16] = *&v117[17];
          *&v121[31] = *&v117[32];
          v111 = *(v113 + 24);
          operator new();
        }
      }
    }

    *a3 = 0;
    *(a3 + 16) = 0;
    if ((v116 & 1) != 0 && (v114 & 1) == 0)
    {
      result = v115;
      v115 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }
  }

  v112 = *MEMORY[0x277D85DE8];
  return result;
}