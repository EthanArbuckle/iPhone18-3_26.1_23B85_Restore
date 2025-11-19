void llvm::make_range<llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19[40] = *MEMORY[0x277D85DE8];
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v14, &v16, 8, a1);
  v17 = v19;
  v18 = 0x800000000;
  if (*(a1 + 104))
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v17, (a1 + 96));
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v8, &v10, 8, a2);
  v11 = v13;
  v12 = 0x800000000;
  if (*(a2 + 104))
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v11, (a2 + 96));
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(a3, (a3 + 32), 8, &v14);
  *(v6 + 96) = a3 + 112;
  v7 = v6 + 96;
  *(v7 + 8) = 0x800000000;
  if (v18)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(v7, &v17);
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(a3 + 432, (a3 + 464), 8, &v8);
  *(a3 + 528) = a3 + 544;
  *(a3 + 536) = 0x800000000;
  if (v12)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=((a3 + 528), &v11);
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
}

void **llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(void **result, void **a2)
{
  if (result != a2)
  {
    v3 = a2 + 2;
    v2 = *a2;
    if (*a2 != a2 + 2)
    {
      if (*result != result + 2)
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
      result[1] = a2[1];
      *a2 = v3;
      *(a2 + 3) = 0;
      goto LABEL_19;
    }

    v6 = a2 + 1;
    v7 = *(a2 + 2);
    v8 = *(result + 2);
    if (v8 >= v7)
    {
      if (v7)
      {
        v9 = *result;
        v10 = &v2[40 * v7];
        do
        {
          *v9 = *v2;
          *(v9 + 8) = *(v2 + 8);
          *(v9 + 24) = *(v2 + 24);
          v2 += 40;
          v9 += 40;
        }

        while (v2 != v10);
      }

      *(result + 2) = v7;
      goto LABEL_19;
    }

    if (*(result + 3) < v7)
    {
      *(result + 2) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v8)
    {
      v11 = &v2[40 * v8];
      v12 = result;
      v13 = *result;
      do
      {
        *v13 = *v2;
        *(v13 + 8) = *(v2 + 8);
        *(v13 + 24) = *(v2 + 24);
        v2 += 40;
        v13 += 40;
      }

      while (v2 != v11);
      v14 = *v6 - v8;
      if (!v14)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v12 = result;
      v8 = 0;
      v14 = *v6;
      if (!*v6)
      {
        goto LABEL_18;
      }
    }

    memcpy(*v12 + 40 * v8, *a2 + 40 * v8, 40 * v14);
LABEL_18:
    result = v12;
    *(v12 + 2) = v7;
LABEL_19:
    *v6 = 0;
  }

  return result;
}

uint64_t llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>::po_iterator(uint64_t a1, mlir::Block *a2)
{
  v9 = a2;
  *(a1 + 32) = a2;
  *a1 = a1 + 32;
  *(a1 + 8) = a1 + 32;
  *(a1 + 24) = 0;
  *(a1 + 96) = a1 + 112;
  v4 = a1 + 96;
  *(a1 + 104) = 0x800000000;
  *(a1 + 16) = 0x100000008;
  mlir::SuccessorRange::SuccessorRange(&v10, a2);
  v8 = v10;
  mlir::SuccessorRange::SuccessorRange(&v10, a2);
  v5 = *(a1 + 104);
  if (v5 >= *(a1 + 108))
  {
    llvm::SmallVectorTemplateBase<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>,true>::growAndEmplaceBack<mlir::Block *&,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>(v4, &v9, &v8, &v10);
  }

  else
  {
    v6 = *(a1 + 96) + 40 * v5;
    *v6 = a2;
    *(v6 + 8) = v8;
    *(v6 + 24) = v10;
    ++*(a1 + 104);
  }

  llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>::traverseChild(a1);
  return a1;
}

uint64_t llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>::traverseChild(uint64_t this)
{
  v1 = this + 96;
  v2 = *(this + 96) + 40 * *(this + 104);
  v3 = *(v2 - 24);
  if (v3 != *(v2 - 8))
  {
    v4 = this;
    while (1)
    {
      v7 = *(v2 - 32);
      *(v2 - 24) = v3 + 1;
      v8 = *(v7 + 32 * v3 + 24);
      v15 = v8;
      v9 = *v4;
      if (*(v4 + 8) == *v4)
      {
        v11 = *(v4 + 20);
        if (v11)
        {
          v12 = 8 * v11;
          v13 = *v4;
          while (*v13 != v8)
          {
            ++v13;
            v12 -= 8;
            if (!v12)
            {
              goto LABEL_15;
            }
          }

          goto LABEL_7;
        }

LABEL_15:
        if (v11 < *(v4 + 16))
        {
          break;
        }
      }

      this = llvm::SmallPtrSetImplBase::insert_imp_big(v4, v8);
      if (v10)
      {
        goto LABEL_5;
      }

LABEL_7:
      v2 = *(v4 + 96) + 40 * *(v4 + 104);
      v3 = *(v2 - 24);
      if (v3 == *(v2 - 8))
      {
        return this;
      }
    }

    *(v4 + 20) = v11 + 1;
    v9[v11] = v8;
LABEL_5:
    mlir::SuccessorRange::SuccessorRange(&v16, v15);
    v14 = v16;
    this = mlir::SuccessorRange::SuccessorRange(&v16, v15);
    v5 = *(v4 + 104);
    if (v5 >= *(v4 + 108))
    {
      this = llvm::SmallVectorTemplateBase<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>,true>::growAndEmplaceBack<mlir::Block *&,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>(v1, &v15, &v14, &v16);
    }

    else
    {
      v6 = *(v4 + 96) + 40 * v5;
      *v6 = v15;
      *(v6 + 8) = v14;
      *(v6 + 24) = v16;
      ++*(v4 + 104);
    }

    goto LABEL_7;
  }

  return this;
}

uint64_t llvm::SmallVectorTemplateBase<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>,true>::growAndEmplaceBack<mlir::Block *&,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>(uint64_t a1, void *a2, _OWORD *a3, __int128 *a4)
{
  *v11 = *a2;
  v4 = *a4;
  *&v11[8] = *a3;
  *&v11[24] = v4;
  v5 = *(a1 + 8);
  v6 = *a1;
  if (v5 >= *(a1 + 12))
  {
    if (v6 > v11 || v6 + 40 * v5 <= v11)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7 = v6 + 40 * *(a1 + 8);
  v8 = *v11;
  v9 = *&v11[16];
  *(v7 + 32) = *&v11[32];
  *v7 = v8;
  *(v7 + 16) = v9;
  LODWORD(v7) = *(a1 + 8) + 1;
  *(a1 + 8) = v7;
  return *a1 + 40 * v7 - 40;
}

BOOL llvm::function_ref<BOOL ()(mlir::BlockArgument)>::callback_fn<deleteDeadness(mlir::RewriterBase &,llvm::MutableArrayRef<mlir::Region>,anonymous namespace::LiveMap &)::$_0>(uint64_t a1, unint64_t a2)
{
  v2 = *(*a1 + 24);
  if (!v2)
  {
    return 1;
  }

  v3 = *(*a1 + 8);
  v4 = 0x9DDFEA08EB382D69 * ((8 * a2 - 0xAE502812AA7333) ^ HIDWORD(a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v4 >> 47) ^ v4);
  v6 = v2 - 1;
  v7 = v6 & (-348639895 * ((v5 >> 47) ^ v5));
  v8 = *(v3 + 8 * v7);
  if (v8 == a2)
  {
    return 0;
  }

  v10 = 1;
  do
  {
    result = v8 == -4096;
    if (v8 == -4096)
    {
      break;
    }

    result = 0;
    v11 = v7 + v10++;
    v7 = v11 & v6;
    v8 = *(v3 + 8 * v7);
  }

  while (v8 != a2);
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>,mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>::LookupBucketFor<mlir::SuccessorRange>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *(a1 + 4);
  if (!v4)
  {
    v14 = 0;
    result = 0;
LABEL_19:
    *a3 = v14;
    return result;
  }

  v5 = *a1;
  v7 = llvm::hashing::detail::hash_combine_range_impl<llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>(*a2, 0, *a2, a2[1]);
  v8 = v4 - 1;
  v9 = (v4 - 1) & v7;
  v10 = *a2;
  v11 = a2[1];
  if (!v11)
  {
    if (v10 != -8192)
    {
      v12 = 0;
      v32 = 1;
      v14 = (v5 + 40 * v9);
      v33 = *v14;
      if (*v14 == -8192)
      {
        goto LABEL_49;
      }

      while (v33 != -4096)
      {
        if (!v14[1])
        {
          goto LABEL_28;
        }

        do
        {
LABEL_49:
          if (v12)
          {
            v34 = 0;
          }

          else
          {
            v34 = v33 == -8192;
          }

          if (v34)
          {
            v12 = v14;
          }

          v35 = v9 + v32++;
          v9 = v35 & v8;
          v14 = (v5 + 40 * v9);
          v33 = *v14;
        }

        while (*v14 == -8192);
      }

      goto LABEL_27;
    }

    v22 = 1;
    v14 = (v5 + 40 * v9);
    v23 = *v14;
    if (*v14 != -8192)
    {
      while (v23 != -4096)
      {
        if (v14[1])
        {
          v24 = v9 + v22++;
          v9 = v24 & v8;
          v14 = (v5 + 40 * v9);
          v23 = *v14;
          if (*v14 != -8192)
          {
            continue;
          }
        }

        goto LABEL_28;
      }

      v12 = 0;
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  if (v10 != -8192)
  {
    v12 = 0;
    v25 = 1;
    v14 = (v5 + 40 * v9);
    v26 = *v14;
    if (*v14 == -8192)
    {
      goto LABEL_39;
    }

    while (v26 != -4096)
    {
      if (v11 == v14[1])
      {
        v27 = (v26 + 24);
        v28 = (v10 + 24);
        v29 = a2[1];
        while (*v28 == *v27)
        {
          v27 += 4;
          v28 += 4;
          result = 1;
          if (!--v29)
          {
            goto LABEL_19;
          }
        }
      }

      do
      {
LABEL_39:
        if (v12)
        {
          v30 = 0;
        }

        else
        {
          v30 = v26 == -8192;
        }

        if (v30)
        {
          v12 = v14;
        }

        v31 = v9 + v25++;
        v9 = v31 & v8;
        v14 = (v5 + 40 * v9);
        v26 = *v14;
      }

      while (*v14 == -8192);
    }

    goto LABEL_27;
  }

  v12 = 0;
  v13 = 1;
  v14 = (v5 + 40 * v9);
  v15 = *v14;
  if (*v14 == -8192)
  {
LABEL_28:
    result = 1;
    *a3 = v14;
    return result;
  }

  while (v15 != -4096)
  {
    if (v11 == v14[1])
    {
      v16 = (v15 + 24);
      v17 = -8168;
      v18 = a2[1];
      while (*v17 == *v16)
      {
        v16 += 4;
        v17 += 32;
        if (!--v18)
        {
          goto LABEL_28;
        }
      }
    }

    if (v12)
    {
      v19 = 0;
    }

    else
    {
      v19 = v15 == -8192;
    }

    if (v19)
    {
      v12 = v14;
    }

    v20 = v9 + v13++;
    v9 = v20 & v8;
    v14 = (v5 + 40 * v9);
    v15 = *v14;
    if (*v14 == -8192)
    {
      goto LABEL_28;
    }
  }

LABEL_27:
  if (v10 == -4096)
  {
    goto LABEL_28;
  }

  result = 0;
  if (v12)
  {
    v14 = v12;
  }

  *a3 = v14;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_range_impl<llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v67 = *MEMORY[0x277D85DE8];
  if (a2 == a4)
  {
    v5 = 0;
  }

  else
  {
    *&v63 = *(a1 + 32 * a2 + 24);
    if (a2 + 1 == a4)
    {
      v5 = 8;
      v4 = a2 + 1;
    }

    else
    {
      *(&v63 + 1) = *(a1 + 32 * (a2 + 1) + 24);
      if (a2 + 2 == a4)
      {
        v5 = 16;
        v4 = a2 + 2;
      }

      else
      {
        *&v64 = *(a1 + 32 * (a2 + 2) + 24);
        if (a2 + 3 == a4)
        {
          v5 = 24;
          v4 = a2 + 3;
        }

        else
        {
          *(&v64 + 1) = *(a1 + 32 * (a2 + 3) + 24);
          if (a2 + 4 == a4)
          {
            v5 = 32;
            v4 = a2 + 4;
          }

          else
          {
            *&v65 = *(a1 + 32 * (a2 + 4) + 24);
            if (a2 + 5 == a4)
            {
              v5 = 40;
              v4 = a2 + 5;
            }

            else
            {
              *(&v65 + 1) = *(a1 + 32 * (a2 + 5) + 24);
              if (a2 + 6 == a4)
              {
                v5 = 48;
                v4 = a2 + 6;
              }

              else
              {
                *&v66 = *(a1 + 32 * (a2 + 6) + 24);
                if (a2 + 7 == a4)
                {
                  v5 = 56;
                  v4 = a2 + 7;
                }

                else
                {
                  *(&v66 + 1) = *(a1 + 32 * (a2 + 7) + 24);
                  v4 = a2 + 8;
                  v5 = 64;
                }
              }
            }
          }
        }
      }
    }
  }

  if (v4 == a4)
  {
    return llvm::hashing::detail::hash_short(&v63, v5, 0xFF51AFD7ED558CCDLL);
  }

  v7 = (0xB492B66FBE98F273 * __ROR8__(*(&v63 + 1) - 0x73D22641534B4D52, 37)) ^ 0xF7ACCA5326449396;
  v8 = *(&v65 + 1) - 0x4B6D499041670D8DLL * __ROR8__(v66 - 0x414BFF9ED66A691CLL, 42) - 0x7323D61940A0DA1FLL;
  v9 = __ROR8__(v63 + 0x298DF016A9F64655 + *(&v63 + 1) + v64, 44) + v63 + 0x298DF016A9F64655 + __ROR8__(v7 + v63 + 0x298DF016A9F64655 + *(&v64 + 1) - 0xAE502812AB8D92, 21);
  v10 = v63 + 0x298DF016A9F64655 + *(&v63 + 1) + v64 + *(&v64 + 1);
  v11 = __ROR8__(*(&v65 + 1) + v66 + v65 + 0x4BF62CB950C3753ALL, 44) + v65 + 0x4BF62CB950C3753ALL + __ROR8__(v8 + v64 + v65 + 0x4BF62CB950C3753ALL + *(&v66 + 1), 21);
  v12 = *(&v65 + 1) + v66 + v65 + 0x4BF62CB950C3753ALL + *(&v66 + 1);
  v13 = 0x544962662A7EE1A4;
  v14 = 64;
  do
  {
    v21 = v4;
    *&v63 = *(a1 + 32 * v4++ + 24);
    v22 = v4 == a4;
    if (v4 == a4)
    {
      v23 = &v63;
      v24 = 56;
      v25 = &v63 + 8;
      v26 = 8;
    }

    else
    {
      *(&v63 + 1) = *(a1 + 32 * v4 + 24);
      v4 = v21 + 2;
      v22 = v21 + 2 == a4;
      if (v21 + 2 == a4)
      {
        v24 = 48;
        v23 = (&v63 + 8);
        v25 = &v64;
        v26 = 16;
      }

      else
      {
        *&v64 = *(a1 + 32 * v4 + 24);
        v4 = v21 + 3;
        v22 = v21 + 3 == a4;
        if (v21 + 3 == a4)
        {
          v24 = 40;
          v23 = &v64;
          v25 = &v64 + 8;
          v26 = 24;
        }

        else
        {
          *(&v64 + 1) = *(a1 + 32 * v4 + 24);
          v4 = v21 + 4;
          v22 = v21 + 4 == a4;
          if (v21 + 4 == a4)
          {
            v24 = 32;
            v23 = (&v64 + 8);
            v25 = &v65;
            v26 = 32;
          }

          else
          {
            *&v65 = *(a1 + 32 * v4 + 24);
            v4 = v21 + 5;
            v22 = v21 + 5 == a4;
            if (v21 + 5 == a4)
            {
              v24 = 24;
              v23 = &v65;
              v25 = &v65 + 8;
              v26 = 40;
            }

            else
            {
              *(&v65 + 1) = *(a1 + 32 * v4 + 24);
              v4 = v21 + 6;
              v22 = v21 + 6 == a4;
              if (v21 + 6 == a4)
              {
                v24 = 16;
                v23 = (&v65 + 8);
                v25 = &v66;
                v26 = 48;
              }

              else
              {
                *&v66 = *(a1 + 32 * v4 + 24);
                v4 = v21 + 7;
                v22 = v21 + 7 == a4;
                if (v21 + 7 != a4)
                {
                  *(&v66 + 1) = *(a1 + 32 * v4 + 24);
                  v4 = v21 + 8;
                  v22 = v21 + 8 == a4;
                  v26 = 64;
                  goto LABEL_21;
                }

                v24 = 8;
                v23 = &v66;
                v25 = &v66 + 8;
                v26 = 56;
              }
            }
          }
        }
      }
    }

    v27 = v26;
    if (v26 == v24)
    {
      v28 = a4 + ~v21;
      if (v28 >= 7)
      {
        v28 = 7;
      }

      if (55 - 8 * v28 >= ((8 * (v28 & 0xFFFFFFFFFFFFFFFLL)) | 7))
      {
        v29 = (8 * (v28 & 0xFFFFFFFFFFFFFFFLL)) | 7;
      }

      else
      {
        v29 = 55 - 8 * v28;
      }

      v30 = &v63;
      v31 = &v63 >= (v23 + v29 + 9) || v25 >= &v63 + v29 + 1;
      v32 = v26;
      if (!v31)
      {
        goto LABEL_72;
      }

      if (v29 < 0x1F)
      {
        v33 = 0;
LABEL_68:
        v52 = &v25[v33];
        v53 = (&v63 + v33);
        v54 = ~v29 + v33;
        do
        {
          v55 = *v53;
          *v53++ = *v52;
          *v52 = v55;
          v52 += 8;
          v54 += 8;
        }

        while (v54);
        goto LABEL_21;
      }

      v45 = v29 + 1;
      v33 = (v29 + 1) & 0x60;
      v46 = v63;
      v47 = v64;
      v48 = *(v25 + 1);
      v63 = *(&v63 + v26);
      v64 = v48;
      *(&v63 + v26) = v46;
      *(v25 + 1) = v47;
      if (v33 != 32)
      {
        v49 = v65;
        v50 = v66;
        v51 = *(v25 + 3);
        v65 = *(v25 + 2);
        v66 = v51;
        *(v25 + 2) = v49;
        *(v25 + 3) = v50;
      }

      if (v45 != v33)
      {
        if ((v45 & 0x18) != 0)
        {
          goto LABEL_68;
        }

        v30 = &v63 + v33;
        v32 = v26 + v33;
LABEL_72:
        v56 = v30 + 1;
        do
        {
          v57 = *(v56 - 1);
          *(v56 - 1) = *(&v63 + v32);
          *(&v63 + v32) = v57;
          if (v56 == v25)
          {
            break;
          }

          ++v56;
        }

        while (v32++ != 63);
      }
    }

    else
    {
      do
      {
        v34 = v27;
        v27 = v24;
        v24 = v34 % v24;
      }

      while (v24);
      v35 = (&v63 + v27);
      do
      {
        v37 = *(v35 - 1);
        v35 = (v35 - 1);
        v36 = v37;
        v38 = (v35 + v26);
        v39 = v35;
        do
        {
          v40 = v39;
          v39 = v38;
          *v40 = *v38;
          v41 = (&v67 - v38);
          v42 = __OFSUB__(v26, v41);
          v44 = v26 - v41;
          v43 = (v44 < 0) ^ v42;
          v38 = (&v63 + v44);
          if (v43)
          {
            v38 = (v39 + v26);
          }
        }

        while (v38 != v35);
        *v39 = v36;
      }

      while (v35 != &v63);
    }

LABEL_21:
    v15 = v8 + v10 + v13 + *(&v63 + 1);
    v8 = *(&v65 + 1) + v10 - 0x4B6D499041670D8DLL * __ROR8__(v8 + v9 + v66, 42);
    v16 = v63 - 0x4B6D499041670D8DLL * v9;
    v17 = 0xB492B66FBE98F273 * __ROR8__(v15, 37);
    v18 = __ROR8__(v7 + v12, 33);
    v19 = v17 ^ v11;
    v9 = __ROR8__(v16 + *(&v63 + 1) + v64, 44) + v16 + __ROR8__(v19 + v12 + v16 + *(&v64 + 1), 21);
    v13 = 0xB492B66FBE98F273 * v18;
    v20 = 0xB492B66FBE98F273 * v18 + v11 + v65;
    v10 = v16 + *(&v63 + 1) + v64 + *(&v64 + 1);
    v11 = __ROR8__(v8 + v64 + v20 + *(&v66 + 1), 21) + v20 + __ROR8__(*(&v65 + 1) + v66 + v20, 44);
    v12 = *(&v65 + 1) + v66 + v20 + *(&v66 + 1);
    v14 += v26;
    v7 = v19;
  }

  while (!v22);
  v59 = 0x9DDFEA08EB382D69 * (v12 ^ ((0x9DDFEA08EB382D69 * (v10 ^ v12)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ v12)));
  v60 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v9 ^ v11)) >> 47) ^ (0x9DDFEA08EB382D69 * (v9 ^ v11)));
  v61 = 0x9DDFEA08EB382D69 * (v60 ^ (v60 >> 47)) - 0x4B6D499041670D8DLL * ((v14 ^ (v14 >> 47)) + v18);
  v62 = 0x9DDFEA08EB382D69 * (v61 ^ (v19 - 0x4B6D499041670D8DLL * (v8 ^ (v8 >> 47)) - 0x622015F714C7D297 * (v59 ^ (v59 >> 47))));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v61 ^ (v62 >> 47) ^ v62)) ^ ((0x9DDFEA08EB382D69 * (v61 ^ (v62 >> 47) ^ v62)) >> 47));
}

_OWORD *llvm::DenseMap<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>::grow(uint64_t a1, int a2)
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
    v10 = 40 * v3;
    llvm::DenseMapBase<llvm::DenseMap<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>,mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>::moveFromOldBuckets(a1, v4, v4 + v10);

    llvm::deallocate_buffer(v4, v10);
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
      v17 = (result + 40 * v11);
      do
      {
        *v13 = xmmword_25736B1E0;
        v13 = (v13 + 40);
      }

      while (v13 != v17);
      return result;
    }

    v14 = v12 / 0x28 + 1;
    v13 = (result + 40 * (v14 & 0xFFFFFFFFFFFFFFELL));
    v15 = result;
    v16 = v14 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v15 = xmmword_25736B1E0;
      *(v15 + 40) = xmmword_25736B1E0;
      v15 += 5;
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

void llvm::DenseMapBase<llvm::DenseMap<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>,mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>::moveFromOldBuckets(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v13 = (v7 + 40 * v6);
      do
      {
        *v9 = xmmword_25736B1E0;
        v9 = (v9 + 40);
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x28 + 1;
    v9 = (v7 + 40 * (v10 & 0xFFFFFFFFFFFFFFELL));
    v11 = *a1;
    v12 = v10 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v11 = xmmword_25736B1E0;
      *(v11 + 40) = xmmword_25736B1E0;
      v11 += 5;
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
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v17 = 0;
        llvm::DenseMapBase<llvm::DenseMap<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>,mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>::LookupBucketFor<mlir::SuccessorRange>(a1, v4, &v17);
        v14 = v17;
        *v17 = *v4;
        *(v14 + 3) = 0x100000000;
        *(v14 + 2) = v14 + 2;
        v15 = (v14 + 1);
        if (*(v4 + 24))
        {
          llvm::SmallVectorImpl<unsigned long>::operator=(v15, (v4 + 16));
        }

        ++*(a1 + 8);
        v16 = *(v4 + 16);
        if ((v4 + 32) != v16)
        {
          free(v16);
        }
      }

      v4 += 40;
    }

    while (v4 != a3);
  }
}

void llvm::SmallVectorImpl<llvm::SmallVector<mlir::Value,8u>>::assign(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  if (*(a1 + 3) < a2)
  {

    llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,8u>,false>::growAndAssign();
  }

  v6 = *(a1 + 2);
  if (v6 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = *(a1 + 2);
  }

  if (v7)
  {
    v8 = *a1;
    while (1)
    {
      if (v8 == a3)
      {
        goto LABEL_11;
      }

      v9 = *(a3 + 8);
      v10 = *(v8 + 8);
      if (v10 >= v9)
      {
        if (v9)
        {
          memmove(*v8, *a3, 8 * v9);
        }

        goto LABEL_10;
      }

      if (*(v8 + 12) < v9)
      {
        *(v8 + 8) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v10)
      {
        memmove(*v8, *a3, 8 * v10);
        v11 = *(a3 + 8) - v10;
        if (v11)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v10 = 0;
        v11 = *(a3 + 8);
        if (*(a3 + 8))
        {
LABEL_22:
          memcpy((*v8 + 8 * v10), (*a3 + 8 * v10), 8 * v11);
        }
      }

LABEL_10:
      *(v8 + 8) = v9;
LABEL_11:
      v8 += 80;
      if (!--v7)
      {
        v6 = *(a1 + 2);
        break;
      }
    }
  }

  v12 = v6 - a2;
  if (v6 >= a2)
  {
    if (v6 > a2)
    {
      v16 = 80 * v6;
      v17 = (v16 + *a1 - 80);
      v18 = 80 * a2 - v16;
      do
      {
        if (v17 + 2 != *v17)
        {
          free(*v17);
        }

        v17 -= 10;
        v18 += 80;
      }

      while (v18);
    }
  }

  else
  {
    v13 = (*a1 + 80 * v6);
    do
    {
      *v13 = v13 + 2;
      v13[1] = 0x800000000;
      if (v13 != a3)
      {
        v15 = *(a3 + 8);
        if (*(a3 + 8))
        {
          if (v15 >= 9)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          memcpy(v13 + 2, *a3, 8 * *(a3 + 8));
          *(v13 + 2) = v15;
        }
      }

      v13 += 10;
    }

    while (!__CFADD__(v12++, 1));
  }

  *(a1 + 2) = a2;
}

_DWORD *llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(8 * v8, 4uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0x1FFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0x1FFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[2 * (v12 & 0x3FFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0x3FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -1;
        *v13 = -1;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x3FFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &result[2 * v11];
        do
        {
          *v10 = -1;
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
        if (*v17 <= 0xFFFFFFFD)
        {
          v25 = *(a1 + 16) - 1;
          v26 = v25 & (37 * v24);
          v23 = &result[2 * v26];
          v27 = *v23;
          if (v24 != *v23)
          {
            v28 = 0;
            v29 = 1;
            while (v27 != -1)
            {
              if (v28)
              {
                v30 = 0;
              }

              else
              {
                v30 = v27 == -2;
              }

              if (v30)
              {
                v28 = v23;
              }

              v31 = v26 + v29++;
              v26 = v31 & v25;
              v23 = &result[2 * (v31 & v25)];
              v27 = *v23;
              if (v24 == *v23)
              {
                goto LABEL_24;
              }
            }

            if (v28)
            {
              v23 = v28;
            }
          }

LABEL_24:
          *v23 = v24;
          v23[1] = *(v17 + 1);
          *(a1 + 8) = ++v16;
        }

        v17 = (v17 + 8);
      }

      while (v17 != (v4 + 8 * v3));
    }

    llvm::deallocate_buffer(v4, (8 * v3));
  }

  *(a1 + 8) = 0;
  v18 = *(a1 + 16);
  if (v18)
  {
    if (((v18 - 1) & 0x1FFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_19;
    }

    v19 = ((v18 - 1) & 0x1FFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v19 & 0x3FFFFFFFFFFFFFFELL)];
    v20 = result + 2;
    v21 = v19 & 0x3FFFFFFFFFFFFFFELL;
    do
    {
      *(v20 - 2) = -1;
      *v20 = -1;
      v20 += 4;
      v21 -= 2;
    }

    while (v21);
    if (v19 != (v19 & 0x3FFFFFFFFFFFFFFELL))
    {
LABEL_19:
      v22 = &result[2 * v18];
      do
      {
        *v10 = -1;
        v10 += 2;
      }

      while (v10 != v22);
    }
  }

  return result;
}

char **llvm::SmallVectorImpl<llvm::SmallVector<mlir::Value,8u>>::operator=(char **a1, char **a2)
{
  if (a1 != a2)
  {
    v4 = a2 + 2;
    v5 = *a2;
    if (*a2 != (a2 + 2))
    {
      v6 = *a1;
      v7 = *(a1 + 2);
      if (v7)
      {
        v8 = &v6[80 * v7 - 80];
        v9 = -80 * v7;
        do
        {
          if (v8 + 2 != *v8)
          {
            free(*v8);
          }

          v8 -= 10;
          v9 += 80;
        }

        while (v9);
        v6 = *a1;
      }

      if (v6 != (a1 + 2))
      {
        free(v6);
      }

      *a1 = *a2;
      v10 = a2 + 1;
      a1[1] = a2[1];
      *a2 = v4;
      *(a2 + 3) = 0;
LABEL_12:
      *v10 = 0;
      return a1;
    }

    v10 = a2 + 1;
    v12 = *(a2 + 2);
    v13 = *(a1 + 2);
    if (v13 >= v12)
    {
      v16 = *a1;
      if (v12)
      {
        v17 = 80 * v12;
        do
        {
          llvm::SmallVectorImpl<long long>::operator=(v16, v5);
          v5 += 10;
          v16 += 80;
          v17 -= 80;
        }

        while (v17);
        v18 = *a1;
        LODWORD(v13) = *(a1 + 2);
      }

      else
      {
        v18 = *a1;
      }

      v30 = v18 + 80 * v13;
      while (v30 != v16)
      {
        v32 = *(v30 - 80);
        v30 -= 80;
        v31 = v32;
        if ((v30 + 16) != v32)
        {
          free(v31);
        }
      }

      *(a1 + 2) = v12;
      v33 = *(a2 + 2);
      if (v33)
      {
        v34 = &(*a2)[80 * v33 - 80];
        v35 = -80 * v33;
        do
        {
          if (v34 + 2 != *v34)
          {
            free(*v34);
          }

          v34 -= 10;
          v35 += 80;
        }

        while (v35);
      }

      goto LABEL_12;
    }

    if (*(a1 + 3) < v12)
    {
      if (v13)
      {
        v14 = &(*a1)[80 * v13 - 80];
        v15 = -80 * v13;
        do
        {
          if (v14 + 2 != *v14)
          {
            free(*v14);
          }

          v14 -= 10;
          v15 += 80;
        }

        while (v15);
      }

      *(a1 + 2) = 0;
      llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,8u>,false>::grow();
    }

    if (v13)
    {
      v19 = *a1;
      v20 = 80 * v13;
      do
      {
        llvm::SmallVectorImpl<long long>::operator=(v19, v5);
        v5 += 10;
        v19 += 80;
        v20 -= 80;
      }

      while (v20);
      v21 = *a2;
      v22 = *(a2 + 2);
      if (v13 != v22)
      {
LABEL_31:
        v23 = *a1;
        v24 = 80 * v13;
        v25 = 80 * v22;
        do
        {
          v26 = (v23 + v24);
          *v26 = v23 + v24 + 16;
          v26[1] = 0x800000000;
          if (LODWORD(v21[v24 / 8 + 1]))
          {
            llvm::SmallVectorImpl<long long>::operator=(v26, &v21[v24 / 8]);
          }

          v23 += 80;
          v25 -= 80;
          v21 += 10;
        }

        while (v24 != v25);
        v21 = *a2;
      }
    }

    else
    {
      v13 = 0;
      v21 = *a2;
      v22 = *(a2 + 2);
      if (*(a2 + 2))
      {
        goto LABEL_31;
      }
    }

    *(a1 + 2) = v12;
    v27 = *v10;
    if (v27)
    {
      v28 = &v21[10 * v27 - 10];
      v29 = -80 * v27;
      do
      {
        if (v28 + 2 != *v28)
        {
          free(*v28);
        }

        v28 -= 10;
        v29 += 80;
      }

      while (v29);
    }

    goto LABEL_12;
  }

  return a1;
}

uint64_t llvm::function_ref<void ()(mlir::OpOperand *)>::callback_fn<mlir::getUsedValuesDefinedAbove(mlir::Region &,mlir::Region &,llvm::SetVector<mlir::Value,llvm::SmallVector<mlir::Value,0u>,llvm::DenseSet<mlir::Value,llvm::DenseMapInfo<mlir::Value,void>>,0u> &)::$_0>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v5 = *(a2 + 24);
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::try_emplace<llvm::detail::DenseSetEmpty&>(v2, &v5, v6);
  if (v6[16] == 1)
  {
    v4 = *(v2 + 32);
    if (v4 >= *(v2 + 36))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*(v2 + 24) + 8 * v4) = v5;
    ++*(v2 + 32);
  }

  return result;
}

void *std::deque<mlir::Value>::__append_with_size[abi:nn200100]<mlir::Value const*>(void *result, uint64_t *a2, unint64_t a3)
{
  v5 = result;
  v6 = result[1];
  v7 = result[2];
  if (v7 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((v7 - v6) << 6) - 1;
  }

  v9 = result[5];
  v10 = v9 + result[4];
  v11 = v8 - v10;
  if (a3 > v11)
  {
    result = std::deque<mlir::Value>::__add_back_capacity(result, a3 - v11);
    v9 = v5[5];
    v6 = v5[1];
    v7 = v5[2];
    v10 = v5[4] + v9;
  }

  v12 = (v6 + 8 * (v10 >> 9));
  if (v7 == v6)
  {
    v13 = 0;
    v14 = 0;
    if (a3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v13 = *v12 + 8 * (v10 & 0x1FF);
    v14 = v13;
    if (a3)
    {
LABEL_8:
      v15 = a3 + ((v14 - *v12) >> 3);
      if (v15 >= 1)
      {
        v16 = &v12[v15 >> 9];
        v14 = *v16 + 8 * (v15 & 0x1FF);
        if (v13 != v14)
        {
          goto LABEL_15;
        }

        return result;
      }

      v17 = 511 - v15;
      v16 = &v12[-(v17 >> 9)];
      v14 = *v16 + 8 * (~v17 & 0x1FF);
      if (v13 == v14)
      {
        return result;
      }

      while (1)
      {
LABEL_15:
        v18 = v14;
        if (v12 != v16)
        {
          v18 = *v12 + 4096;
        }

        if (v13 == v18)
        {
          v18 = v13;
        }

        else
        {
          v19 = v18 - v13 - 8;
          if (v19 < 0x18)
          {
            v23 = v13;
          }

          else if ((v13 - a2) < 0x20)
          {
            v23 = v13;
          }

          else
          {
            v20 = (v19 >> 3) + 1;
            v21 = v20 & 0x3FFFFFFFFFFFFFFCLL;
            v22 = &a2[v21];
            v23 = (v13 + v21 * 8);
            result = (v13 + 16);
            v24 = (a2 + 2);
            v25 = v20 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v26 = *v24;
              *(result - 1) = *(v24 - 1);
              *result = v26;
              result += 4;
              v24 += 2;
              v25 -= 4;
            }

            while (v25);
            a2 = v22;
            if (v20 == (v20 & 0x3FFFFFFFFFFFFFFCLL))
            {
              goto LABEL_28;
            }
          }

          do
          {
            v27 = *a2++;
            *v23++ = v27;
          }

          while (v23 != v18);
        }

LABEL_28:
        v9 += (v18 - v13) >> 3;
        if (v12 != v16)
        {
          v28 = v12[1];
          ++v12;
          v13 = v28;
          if (v28 != v14)
          {
            continue;
          }
        }

        v5[5] = v9;
        return result;
      }
    }
  }

  v16 = v12;
  if (v13 != v14)
  {
    goto LABEL_15;
  }

  return result;
}

void *std::deque<mlir::Value>::__add_back_capacity(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0x1FF) != 0)
  {
    v5 = (v4 >> 9) + 1;
  }

  else
  {
    v5 = v4 >> 9;
  }

  v6 = result[4];
  if (v5 >= v6 >> 9)
  {
    v7 = v6 >> 9;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 9)
  {
    for (result[4] = v6 - (v7 << 9); v7; --v7)
    {
      v12 = v2[1];
      v14 = *v12;
      v2[1] = v12 + 1;
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    v10 = v3 >> 3;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      if (v9 >> 2 <= v8 + v10)
      {
        v11 = v8 + v10;
      }

      else
      {
        v11 = v9 >> 2;
      }

      if (v11)
      {
        if (!(v11 >> 61))
        {
          operator new();
        }

        std::string::__throw_length_error[abi:nn200100]();
      }

      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= v7 << 9; v7; --v7)
    {
      v13 = v2[1];
      v14 = *v13;
      v2[1] = v13 + 1;
    }
  }

  return result;
}

const void **std::__split_buffer<mlir::Value *>::emplace_front<mlir::Value *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      v9 = (v7 - v4) >> 2;
      if (v7 == v4)
      {
        v9 = 1;
      }

      if (!(v9 >> 61))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v5 - 8;
  return result;
}

void *std::deque<mlir::Value>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
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

uint64_t mlir::detail::defaultGetDestinationOperand(mlir::detail *this, mlir::Operation *a2)
{
  v2 = this;
  v9[3] = *MEMORY[0x277D85DE8];
  InterfaceFor = mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(this);
  if (InterfaceFor)
  {
    if (v2)
    {
      InterfaceFor = mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(v2);
    }

    else
    {
      InterfaceFor = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  v6[0] = v2;
  v6[1] = InterfaceFor;
  mlir::DestinationStyleOpInterface::getDpsInitsMutable(v7, v6);
  result = mlir::MutableOperandRange::operator[](v7, 0);
  if (v8 != v9)
  {
    v5 = result;
    free(v8);
    return v5;
  }

  return result;
}

uint64_t mlir::detail::defaultGetUpdatedDestination(mlir::detail *this, mlir::Operation *a2)
{
  v16[3] = *MEMORY[0x277D85DE8];
  InterfaceFor = mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(this);
  if (InterfaceFor)
  {
    if (this)
    {
      InterfaceFor = mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(this);
    }

    else
    {
      InterfaceFor = 0;
    }

    v4 = this;
  }

  else
  {
    v4 = 0;
  }

  v13[0] = v4;
  v13[1] = InterfaceFor;
  v5 = mlir::OpInterface<mlir::SubsetInsertionOpInterface,mlir::detail::SubsetInsertionOpInterfaceInterfaceTraits>::getInterfaceFor(this);
  v6 = (*(v5 + 8))(v5, this);
  mlir::DestinationStyleOpInterface::getDpsInitsMutable(v14, v13);
  v7 = mlir::MutableOperandRange::operator mlir::OperandRange(v14);
  v9 = v8;
  if (v15 != v16)
  {
    free(v15);
  }

  v14[0] = v7;
  v14[1] = v9;
  OperandNumber = mlir::OpOperand::getOperandNumber(v6);
  v11 = OperandNumber - mlir::OperandRange::getBeginOperandIndex(v14);
  if (v11 <= 5)
  {
    return v13[0] - 16 * (v11 + 1);
  }

  else
  {
    return v13[0] - 24 * (v11 - 5) - 96;
  }
}

uint64_t mlir::detail::defaultIsEquivalentSubset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a2;
  result = mlir::Value::getDefiningOp(&v12);
  if (result)
  {
    v8 = result;
    result = mlir::OpInterface<mlir::SubsetExtractionOpInterface,mlir::detail::SubsetExtractionOpInterfaceInterfaceTraits>::getInterfaceFor(result);
    if (result)
    {
      mlir::OpInterface<mlir::SubsetExtractionOpInterface,mlir::detail::SubsetExtractionOpInterfaceInterfaceTraits>::getInterfaceFor(v8);
      if (a1)
      {
        InterfaceFor = mlir::OpInterface<mlir::SubsetOpInterface,mlir::detail::SubsetOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
        DefiningOp = mlir::Value::getDefiningOp(&v12);
        if (!DefiningOp)
        {
          goto LABEL_10;
        }
      }

      else
      {
        InterfaceFor = 0;
        DefiningOp = mlir::Value::getDefiningOp(&v12);
        if (!DefiningOp)
        {
          goto LABEL_10;
        }
      }

      if (mlir::OpInterface<mlir::SubsetOpInterface,mlir::detail::SubsetOpInterfaceInterfaceTraits>::getInterfaceFor(DefiningOp))
      {
        v11 = mlir::OpInterface<mlir::SubsetOpInterface,mlir::detail::SubsetOpInterfaceInterfaceTraits>::getInterfaceFor(DefiningOp);
        return (*InterfaceFor)(InterfaceFor, a1, DefiningOp, v11, a3, a4);
      }

      DefiningOp = 0;
LABEL_10:
      v11 = 0;
      return (*InterfaceFor)(InterfaceFor, a1, DefiningOp, v11, a3, a4);
    }
  }

  return result;
}

uint64_t mlir::detail::defaultOperatesOnEquivalentSubset(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int (*a4)(uint64_t, uint64_t, void), uint64_t a5)
{
  v47 = *MEMORY[0x277D85DE8];
  InterfaceFor = mlir::OpInterface<mlir::SubsetOpInterface,mlir::detail::SubsetOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  (*(InterfaceFor + 16))(v41);
  (*(a3 + 16))(v34, a3, a2);
  if (v40 != 1)
  {
    goto LABEL_23;
  }

  if (mlir::OpInterface<mlir::SubsetInsertionOpInterface,mlir::detail::SubsetInsertionOpInterfaceInterfaceTraits>::getInterfaceFor(a1) && (v11 = mlir::OpInterface<mlir::SubsetInsertionOpInterface,mlir::detail::SubsetInsertionOpInterfaceInterfaceTraits>::getInterfaceFor(a1), a1))
  {
    v12 = *((*(v11 + 8))() + 24);
    if (!mlir::OpInterface<mlir::SubsetInsertionOpInterface,mlir::detail::SubsetInsertionOpInterfaceInterfaceTraits>::getInterfaceFor(a2))
    {
      goto LABEL_22;
    }
  }

  else
  {
    v18 = mlir::OpInterface<mlir::SubsetExtractionOpInterface,mlir::detail::SubsetExtractionOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
    v12 = *((*v18)(v18, a1) + 24);
    if (!mlir::OpInterface<mlir::SubsetInsertionOpInterface,mlir::detail::SubsetInsertionOpInterfaceInterfaceTraits>::getInterfaceFor(a2))
    {
      goto LABEL_22;
    }
  }

  if (a2)
  {
    v13 = mlir::OpInterface<mlir::SubsetInsertionOpInterface,mlir::detail::SubsetInsertionOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    v14 = (*(v13 + 8))();
    if (a4(a5, v12, *(v14 + 24)))
    {
      goto LABEL_7;
    }

LABEL_23:
    v17 = 0;
    if (v40 != 1)
    {
      goto LABEL_30;
    }

    goto LABEL_24;
  }

LABEL_22:
  v19 = mlir::OpInterface<mlir::SubsetExtractionOpInterface,mlir::detail::SubsetExtractionOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  v20 = (*v19)(v19, a2);
  if (!a4(a5, v12, *(v20 + 24)))
  {
    goto LABEL_23;
  }

LABEL_7:
  Context = mlir::Attribute::getContext((a1 + 24));
  mlir::HyperrectangularSlice::HyperrectangularSlice(v28, v41);
  mlir::HyperrectangularSlice::HyperrectangularSlice(v22, v34);
  v16 = mlir::ValueBoundsConstraintSet::areEquivalentSlices(Context, v28, v22);
  if (v26 != &v27)
  {
    free(v26);
  }

  if (v24 != &v25)
  {
    free(v24);
  }

  if (v22[0] != &v23)
  {
    free(v22[0]);
  }

  if (v32 != &v33)
  {
    free(v32);
  }

  if (v30 != &v31)
  {
    free(v30);
  }

  if (v28[0] != &v29)
  {
    free(v28[0]);
  }

  v17 = *&v16 & ((v16 & 0x100) >> 8);
  if (v40 == 1)
  {
LABEL_24:
    if (v38 != &v39)
    {
      free(v38);
    }

    if (v36 != &v37)
    {
      free(v36);
    }

    if (v34[0] != &v35)
    {
      free(v34[0]);
    }
  }

LABEL_30:
  if (v46[48] == 1)
  {
    if (v45 != v46)
    {
      free(v45);
    }

    if (v43 != &v44)
    {
      free(v43);
    }

    if (v41[0] != &v42)
    {
      free(v41[0]);
    }
  }

  return v17;
}

uint64_t mlir::detail::defaultOperatesOnDisjointSubset(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int (*a4)(uint64_t, uint64_t, void), uint64_t a5)
{
  v47 = *MEMORY[0x277D85DE8];
  InterfaceFor = mlir::OpInterface<mlir::SubsetOpInterface,mlir::detail::SubsetOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  (*(InterfaceFor + 16))(v41);
  (*(a3 + 16))(v34, a3, a2);
  if (v40 != 1)
  {
    goto LABEL_23;
  }

  if (mlir::OpInterface<mlir::SubsetInsertionOpInterface,mlir::detail::SubsetInsertionOpInterfaceInterfaceTraits>::getInterfaceFor(a1) && (v11 = mlir::OpInterface<mlir::SubsetInsertionOpInterface,mlir::detail::SubsetInsertionOpInterfaceInterfaceTraits>::getInterfaceFor(a1), a1))
  {
    v12 = *((*(v11 + 8))() + 24);
    if (!mlir::OpInterface<mlir::SubsetInsertionOpInterface,mlir::detail::SubsetInsertionOpInterfaceInterfaceTraits>::getInterfaceFor(a2))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v15 = mlir::OpInterface<mlir::SubsetExtractionOpInterface,mlir::detail::SubsetExtractionOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
    v12 = *((*v15)(v15, a1) + 24);
    if (!mlir::OpInterface<mlir::SubsetInsertionOpInterface,mlir::detail::SubsetInsertionOpInterfaceInterfaceTraits>::getInterfaceFor(a2))
    {
      goto LABEL_9;
    }
  }

  if (!a2)
  {
LABEL_9:
    v16 = mlir::OpInterface<mlir::SubsetExtractionOpInterface,mlir::detail::SubsetExtractionOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    v17 = (*v16)(v16, a2);
    if (!a4(a5, v12, *(v17 + 24)))
    {
      goto LABEL_23;
    }

    goto LABEL_10;
  }

  v13 = mlir::OpInterface<mlir::SubsetInsertionOpInterface,mlir::detail::SubsetInsertionOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  v14 = (*(v13 + 8))();
  if (!a4(a5, v12, *(v14 + 24)))
  {
    goto LABEL_23;
  }

LABEL_10:
  Context = mlir::Attribute::getContext((a1 + 24));
  mlir::HyperrectangularSlice::HyperrectangularSlice(v28, v41);
  mlir::HyperrectangularSlice::HyperrectangularSlice(v22, v34);
  v19 = mlir::ValueBoundsConstraintSet::areOverlappingSlices(Context, v28, v22);
  if (v26 != &v27)
  {
    free(v26);
  }

  if (v24 != &v25)
  {
    free(v24);
  }

  if (v22[0] != &v23)
  {
    free(v22[0]);
  }

  if (v32 != &v33)
  {
    free(v32);
  }

  if (v30 != &v31)
  {
    free(v30);
  }

  if (v28[0] != &v29)
  {
    free(v28[0]);
  }

  if ((v19 & 0x100) != 0)
  {
    v20 = v19 ^ 1;
    if (v40 != 1)
    {
      goto LABEL_30;
    }

    goto LABEL_24;
  }

LABEL_23:
  v20 = 0;
  if (v40 != 1)
  {
    goto LABEL_30;
  }

LABEL_24:
  if (v38 != &v39)
  {
    free(v38);
  }

  if (v36 != &v37)
  {
    free(v36);
  }

  if (v34[0] != &v35)
  {
    free(v34[0]);
  }

LABEL_30:
  if (v46[48] == 1)
  {
    if (v45 != v46)
    {
      free(v45);
    }

    if (v43 != &v44)
    {
      free(v43);
    }

    if (v41[0] != &v42)
    {
      free(v41[0]);
    }
  }

  return v20 & 1;
}

uint64_t mlir::detail::getTensorContainer(mlir::detail *this, mlir::Operation *a2)
{
  if (mlir::OpInterface<mlir::SubsetInsertionOpInterface,mlir::detail::SubsetInsertionOpInterfaceInterfaceTraits>::getInterfaceFor(this))
  {
    v3 = this ? mlir::OpInterface<mlir::SubsetInsertionOpInterface,mlir::detail::SubsetInsertionOpInterfaceInterfaceTraits>::getInterfaceFor(this) : 0;
    if (this)
    {
      return *((*(v3 + 8))() + 24);
    }
  }

  InterfaceFor = mlir::OpInterface<mlir::SubsetExtractionOpInterface,mlir::detail::SubsetExtractionOpInterfaceInterfaceTraits>::getInterfaceFor(this);
  return *((*InterfaceFor)(InterfaceFor, this) + 24);
}

uint64_t mlir::detail::verifySubsetOpInterface(mlir::Operation *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = mlir::OpInterface<mlir::SubsetExtractionOpInterface,mlir::detail::SubsetExtractionOpInterfaceInterfaceTraits>::getInterfaceFor(a1) != 0;
  if ((v2 ^ (mlir::OpInterface<mlir::SubsetInsertionOpInterface,mlir::detail::SubsetInsertionOpInterfaceInterfaceTraits>::getInterfaceFor(a1) != 0)))
  {
    return 1;
  }

  v13 = "SubsetOpInterface ops must implement either SubsetExtractionOpInterface or SubsetInsertionOpInterface";
  v14 = 259;
  mlir::Operation::emitOpError(v15, a1, &v13);
  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v4 = __p;
    if (__p)
    {
      v5 = v21;
      v6 = __p;
      if (v21 != __p)
      {
        do
        {
          v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
        }

        while (v5 != v4);
        v6 = __p;
      }

      v21 = v4;
      operator delete(v6);
    }

    v7 = v18;
    if (v18)
    {
      v8 = v19;
      v9 = v18;
      if (v19 != v18)
      {
        do
        {
          v11 = *--v8;
          v10 = v11;
          *v8 = 0;
          if (v11)
          {
            MEMORY[0x259C63150](v10, 0x1000C8077774924);
          }
        }

        while (v8 != v7);
        v9 = v18;
      }

      v19 = v7;
      operator delete(v9);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return v3;
}

uint64_t mlir::detail::verifySubsetExtractionOpInterface(mlir::Operation *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(a1 + 9) == 1)
  {
    return 1;
  }

  v11 = "SubsetExtractionOpInterface ops must have one result";
  v12 = 259;
  mlir::Operation::emitOpError(v13, a1, &v11);
  v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v13);
  if (v13[0])
  {
    mlir::InFlightDiagnostic::report(v13);
  }

  if (v21 == 1)
  {
    if (v20 != &v21)
    {
      free(v20);
    }

    v2 = __p;
    if (__p)
    {
      v3 = v19;
      v4 = __p;
      if (v19 != __p)
      {
        do
        {
          v3 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v3 - 1);
        }

        while (v3 != v2);
        v4 = __p;
      }

      v19 = v2;
      operator delete(v4);
    }

    v5 = v16;
    if (v16)
    {
      v6 = v17;
      v7 = v16;
      if (v17 != v16)
      {
        do
        {
          v9 = *--v6;
          v8 = v9;
          *v6 = 0;
          if (v9)
          {
            MEMORY[0x259C63150](v8, 0x1000C8077774924);
          }
        }

        while (v6 != v5);
        v7 = v16;
      }

      v17 = v5;
      operator delete(v7);
    }

    if (v14 != &v15)
    {
      free(v14);
    }
  }

  return v1;
}

void *mlir::HyperrectangularSlice::HyperrectangularSlice(void *a1, uint64_t a2)
{
  *a1 = a1 + 2;
  a1[1] = 0x600000000;
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      if (v4 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(a1 + 2, *a2, 8 * *(a2 + 8));
      *(a1 + 2) = v4;
    }
  }

  a1[8] = a1 + 10;
  a1[9] = 0x600000000;
  if (a1 != a2)
  {
    v5 = *(a2 + 72);
    if (v5)
    {
      if (v5 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(a1 + 10, *(a2 + 64), 8 * *(a2 + 72));
      *(a1 + 18) = v5;
    }
  }

  a1[16] = a1 + 18;
  a1[17] = 0x600000000;
  if (a1 != a2)
  {
    v6 = *(a2 + 136);
    if (v6)
    {
      if (v6 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(a1 + 18, *(a2 + 128), 8 * *(a2 + 136));
      *(a1 + 34) = v6;
    }
  }

  return a1;
}

void mlir::FrozenRewritePatternSet::FrozenRewritePatternSet(mlir::FrozenRewritePatternSet *this)
{
  operator new();
}

{
  operator new();
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::vector<mlir::RewritePattern *>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::vector<mlir::RewritePattern *>>>,mlir::OperationName,std::vector<mlir::RewritePattern *>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::vector<mlir::RewritePattern *>>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v4 = (*a1 + 32 * v3);
    v5 = *v4;
    if (*a2 == *v4)
    {
      return v4 + 1;
    }

    v8 = 0;
    v9 = 1;
    while (v5 != -4096)
    {
      if (v8)
      {
        v10 = 0;
      }

      else
      {
        v10 = v5 == -8192;
      }

      if (v10)
      {
        v8 = v4;
      }

      v11 = v3 + v9++;
      v3 = v11 & (v2 - 1);
      v4 = (*a1 + 32 * v3);
      v5 = *v4;
      if (*a2 == *v4)
      {
        return v4 + 1;
      }
    }

    if (v8)
    {
      v4 = v8;
    }
  }

  else
  {
    v4 = 0;
  }

  v14 = v4;
  v7 = *(a1 + 8);
  if (4 * v7 + 4 >= 3 * v2)
  {
    v12 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v7 - *(a1 + 12) <= v2 >> 3)
  {
    v12 = a2;
LABEL_24:
    v13 = a1;
    llvm::DenseMap<mlir::OperationName,std::vector<mlir::RewritePattern *>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::vector<mlir::RewritePattern *>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>,mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>::LookupBucketFor<mlir::AsmDialectResourceHandle>(v13, v12, &v14);
    a1 = v13;
    a2 = v12;
    v4 = v14;
    ++*(v13 + 8);
    if (*v4 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v7 + 1;
  if (*v4 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v4 = *a2;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = 0;
  return v4 + 1;
}

void std::vector<std::unique_ptr<mlir::RewritePattern>>::push_back[abi:nn200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    v6 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v4 - *a1;
  v9 = v8 >> 3;
  v10 = (v8 >> 3) + 1;
  if (v10 >> 61)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v11 = v3 - v7;
  if (v11 >> 2 > v10)
  {
    v10 = v11 >> 2;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    v12 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (!(v12 >> 61))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v13 = *a2;
  *a2 = 0;
  *(8 * v9) = v13;
  v6 = 8 * v9 + 8;
  memcpy(0, v7, v8);
  *a1 = 0;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

void mlir::FrozenRewritePatternSet::FrozenRewritePatternSet(mlir::RewritePatternSet &&,llvm::ArrayRef<std::basic_string<char,llvm::ArrayRef::char_traits<char>,llvm::ArrayRef::allocator<char>>>,std::basic_string<char,llvm::ArrayRef::char_traits<char>,llvm::ArrayRef::allocator<char>>)::$_0::operator()(void ***a1, uint64_t *a2, unsigned int (*a3)(uint64_t), uint64_t a4)
{
  v7 = a1[1];
  v8 = **a1;
  v9 = (*a1)[1];
  if (v8 == v9)
  {
    mlir::MLIRContext::getRegisteredOperations((*(*a2 + 24) & 0xFFFFFFFFFFFFFFF8));
    if (v11)
    {
      if ((v11 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v14 = *a1;
    v15 = **a1;
    v12 = *a1;
    if (v15)
    {
      v14[1] = v15;
      operator delete(v15);
      *v14 = 0;
      v14[1] = 0;
      v14[2] = 0;
      v12 = *a1;
    }

    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0;
    v8 = *v12;
    v9 = v12[1];
  }

  while (v8 != v9)
  {
    v17 = *v8;
    if (a3(a4))
    {
      v13 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::vector<mlir::RewritePattern *>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::vector<mlir::RewritePattern *>>>,mlir::OperationName,std::vector<mlir::RewritePattern *>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::vector<mlir::RewritePattern *>>>::operator[](*v7, &v17);
      v16 = *a2;
      std::vector<mlir::Operation *>::push_back[abi:nn200100](v13, &v16);
    }

    ++v8;
  }

  std::vector<std::unique_ptr<mlir::RewritePattern>>::push_back[abi:nn200100](*v7 + 24, a2);
}

void mlir::FrozenRewritePatternSet::~FrozenRewritePatternSet(mlir::FrozenRewritePatternSet *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

{
  v1 = *(this + 1);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::doFind<llvm::StringRef>(uint64_t *a1, uint64_t a2)
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
      result = v3 + 16 * (HashValue & v6);
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
          result = v3 + 16 * (v15 & v6);
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
      result = v3 + 16 * (HashValue & v6);
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
          result = v3 + 16 * (v27 & v6);
          v22 = *result;
        }

        while (*result == -2);
      }
    }

LABEL_29:
    if (v7 != -1)
    {
      return 0;
    }

    return result;
  }

  v16 = 1;
  if (v7 == -2)
  {
    v17 = HashValue & v6;
    result = v3 + 16 * (HashValue & v6);
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
        result = v3 + 16 * (v19 & v6);
        v18 = *result;
        if (*result != -2)
        {
          continue;
        }
      }

      return result;
    }

    goto LABEL_29;
  }

  while (1)
  {
    v28 = HashValue & v6;
    result = v3 + 16 * (HashValue & v6);
    if (*result != -2)
    {
      if (*result == -1)
      {
        goto LABEL_29;
      }

      if (!*(result + 8))
      {
        return result;
      }
    }

    HashValue = v16 + v28;
    ++v16;
  }
}

double mlir::Region::getOps<mlir::pdl::PatternOp>@<D0>(mlir::Region *a1@<X0>, uint64_t a2@<X8>)
{
  mlir::Region::OpIterator::OpIterator(&v18, a1, 1);
  mlir::Region::OpIterator::OpIterator(&v14, a1, 0);
  *&v12[8] = v18;
  v4 = v15;
  *v12 = v15;
  v11 = v14;
  *&v12[24] = v19;
  for (i = mlir::detail::op_filter_iterator<mlir::pdl::PatternOp,mlir::Region::OpIterator>::filter; *v12 != *&v12[24]; v4 = *v12)
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
  i = mlir::detail::op_filter_iterator<mlir::pdl::PatternOp,mlir::Region::OpIterator>::filter;
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
  *(a2 + 56) = mlir::detail::op_iterator<mlir::pdl::PatternOp,mlir::Region::OpIterator>::unwrap;
  *(a2 + 112) = v8;
  *(a2 + 120) = mlir::detail::op_iterator<mlir::pdl::PatternOp,mlir::Region::OpIterator>::unwrap;
  return result;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<convertPDLToPDLInterp(mlir::ModuleOp,llvm::DenseMap<mlir::Operation *,mlir::PDLPatternConfigSet *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::PDLPatternConfigSet *>> &)::$_0>(int a1, mlir *this)
{
  if (mlir::isOpTriviallyDead(this, this))
  {

    mlir::Operation::erase(this);
  }
}

llvm::StringMapImpl *llvm::StringMap<std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>,llvm::MallocAllocator>::StringMap(llvm::StringMapImpl *this, uint64_t *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0x2800000000;
  if (*(a2 + 3))
  {
    llvm::StringMapImpl::init(this, *(a2 + 2));
    v4 = *this;
    v5 = *(this + 2);
    v6 = *a2;
    *(this + 12) = *(a2 + 12);
    if (v5)
    {
      v7 = 0;
      v18 = v4 + 8 * v5 + 8;
      v8 = v6 + 8 * v5 + 8;
      do
      {
        while (1)
        {
          v9 = *(*a2 + 8 * v7);
          if (v9 && v9 + 1 != 0)
          {
            break;
          }

          *(v4 + 8 * v7++) = v9;
          if (v5 == v7)
          {
            return this;
          }
        }

        v11 = *v9;
        buffer = llvm::allocate_buffer(*v9 + 41, 8uLL);
        v13 = buffer;
        v14 = (buffer + 5);
        if (v11)
        {
          memcpy(buffer + 5, v9 + 5, v11);
        }

        v14[v11] = 0;
        *v13 = v11;
        v15 = v13 + 1;
        v16 = v9[4];
        if (v16)
        {
          if (v16 == v9 + 1)
          {
            v13[4] = v15;
            (*(*v16 + 24))(v16);
          }

          else
          {
            v13[4] = (*(*v16 + 16))(v16, v15);
          }
        }

        else
        {
          v13[4] = 0;
        }

        v4 = *this;
        *(*this + 8 * v7) = v13;
        *(v18 + 4 * v7) = *(v8 + 4 * v7);
        ++v7;
      }

      while (v5 != v7);
    }
  }

  return this;
}

void std::__shared_ptr_emplace<mlir::FrozenRewritePatternSet::Impl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286867038;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C63180);
}

void mlir::FrozenRewritePatternSet::Impl::~Impl(mlir::FrozenRewritePatternSet::Impl *this)
{
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    mlir::detail::PDLByteCode::~PDLByteCode(v2);
    MEMORY[0x259C63180]();
  }

  v3 = *(this + 6);
  if (v3)
  {
    v4 = *(this + 7);
    v5 = *(this + 6);
    if (v4 != v3)
    {
      do
      {
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v3);
      v5 = *(this + 6);
    }

    *(this + 7) = v3;
    operator delete(v5);
  }

  v8 = *(this + 3);
  if (v8)
  {
    v9 = *(this + 4);
    v10 = *(this + 3);
    if (v9 != v8)
    {
      do
      {
        v12 = *--v9;
        v11 = v12;
        *v9 = 0;
        if (v12)
        {
          (*(*v11 + 8))(v11);
        }
      }

      while (v9 != v8);
      v10 = *(this + 3);
    }

    *(this + 4) = v8;
    operator delete(v10);
  }

  v13 = *(this + 4);
  v14 = *this;
  if (v13)
  {
    v15 = (v14 + 16);
    v16 = 32 * v13;
    do
    {
      if ((*(v15 - 2) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v17 = *(v15 - 1);
        if (v17)
        {
          *v15 = v17;
          operator delete(v17);
        }
      }

      v15 += 4;
      v16 -= 32;
    }

    while (v16);
    v14 = *this;
    v18 = (32 * *(this + 4));
  }

  else
  {
    v18 = 0;
  }

  llvm::deallocate_buffer(v14, v18);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v12);
  v7 = v12;
  if (!result)
  {
    v13 = v12;
    v9 = *(a1 + 8);
    v10 = *(a1 + 16);
    if (4 * v9 + 4 >= 3 * v10)
    {
      v10 *= 2;
    }

    else if (v10 + ~v9 - *(a1 + 12) > v10 >> 3)
    {
      *(a1 + 8) = v9 + 1;
      if (*v7 == -1)
      {
LABEL_7:
        *v7 = *a2;
        v8 = 1;
        goto LABEL_8;
      }

LABEL_6:
      --*(a1 + 12);
      goto LABEL_7;
    }

    llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::grow(a1, v10);
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v13);
    v7 = v13;
    ++*(a1 + 8);
    if (*v7 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v8 = 0;
LABEL_8:
  v11 = *a1 + 16 * *(a1 + 16);
  *a3 = v7;
  *(a3 + 8) = v11;
  *(a3 + 16) = v8;
  return result;
}

void *llvm::DenseMap<mlir::OperationName,std::vector<mlir::RewritePattern *>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::vector<mlir::RewritePattern *>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(32 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
      v10 = &result[4 * (v12 & 0xFFFFFFFFFFFFFFELL)];
      v13 = result + 4;
      v14 = v12 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 4) = -4096;
        *v13 = -4096;
        v13 += 8;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &result[4 * v11];
        do
        {
          *v10 = -4096;
          v10 += 4;
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
          v22 = (*a1 + 32 * v25);
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
              v22 = (*a1 + 32 * v25);
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
          v22[1] = 0;
          v22[2] = 0;
          v22[3] = 0;
          *(v22 + 1) = *(v16 + 8);
          v22[3] = *(v16 + 3);
          *(v16 + 1) = 0;
          *(v16 + 2) = 0;
          *(v16 + 3) = 0;
          ++*(a1 + 8);
        }

        v16 = (v16 + 32);
      }

      while (v16 != (v4 + 32 * v3));
    }

    llvm::deallocate_buffer(v4, (32 * v3));
  }

  *(a1 + 8) = 0;
  v17 = *(a1 + 16);
  if (v17)
  {
    if (((v17 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_19;
    }

    v18 = ((v17 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
    v10 = &result[4 * (v18 & 0xFFFFFFFFFFFFFFELL)];
    v19 = result + 4;
    v20 = v18 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *(v19 - 4) = -4096;
      *v19 = -4096;
      v19 += 8;
      v20 -= 2;
    }

    while (v20);
    if (v18 != (v18 & 0xFFFFFFFFFFFFFFELL))
    {
LABEL_19:
      v21 = &result[4 * v17];
      do
      {
        *v10 = -4096;
        v10 += 4;
      }

      while (v10 != v21);
    }
  }

  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::RegisteredOperationName)>::callback_fn<mlir::FrozenRewritePatternSet::FrozenRewritePatternSet(mlir::RewritePatternSet &&,llvm::ArrayRef<std::basic_string<char,llvm::ArrayRef::char_traits<char>,llvm::ArrayRef::allocator<char>>>,std::basic_string<char,llvm::ArrayRef::char_traits<char>,llvm::ArrayRef::allocator<char>>)::$_3>(unint64_t **a1, uint64_t a2)
{
  v2 = **a1;
  v3 = *(a2 + 40);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  do
  {
    v6 = v5 >> 1;
    v7 = &v4[2 * (v5 >> 1)];
    v9 = *v7;
    v8 = v7 + 2;
    v5 += ~(v5 >> 1);
    if (v9 < v2)
    {
      v4 = v8;
    }

    else
    {
      v5 = v6;
    }
  }

  while (v5);
  if (v4 == (*(a2 + 32) + 16 * v3))
  {
    return 0;
  }

  if (*v4 == v2)
  {
    return v4[1] != 0;
  }

  return 0;
}

void mlir::detail::PDLByteCode::~PDLByteCode(mlir::detail::PDLByteCode *this)
{
  v2 = *(this + 470);
  if (v2)
  {
    v3 = *(this + 471);
    v4 = *(this + 470);
    if (v3 != v2)
    {
      v5 = v3 - 32;
      do
      {
        v6 = *(v3 - 8);
        v3 -= 32;
        if (v3 == v6)
        {
          (*(*v6 + 32))(v6);
        }

        else if (v6)
        {
          (*(*v6 + 40))(v6);
        }

        v5 -= 32;
      }

      while (v3 != v2);
      v4 = *(this + 470);
    }

    *(this + 471) = v2;
    operator delete(v4);
  }

  v7 = *(this + 467);
  if (v7)
  {
    v8 = *(this + 468);
    v9 = *(this + 467);
    if (v8 != v7)
    {
      v10 = v8 - 32;
      do
      {
        v11 = *(v8 - 8);
        v8 -= 32;
        if (v8 == v11)
        {
          (*(*v11 + 32))(v11);
        }

        else if (v11)
        {
          (*(*v11 + 40))(v11);
        }

        v10 -= 32;
      }

      while (v8 != v7);
      v9 = *(this + 467);
    }

    *(this + 468) = v7;
    operator delete(v9);
  }

  v12 = *(this + 49);
  v13 = *(this + 100);
  if (v13)
  {
    v14 = &v12[104 * v13 - 80];
    v15 = -104 * v13;
    do
    {
      v16 = *(v14 + 48);
      if ((v14 + 64) != v16)
      {
        free(v16);
      }

      if (v14 + 16 != *v14)
      {
        free(*v14);
      }

      v14 -= 104;
      v15 += 104;
    }

    while (v15);
    v12 = *(this + 49);
  }

  if (v12 != this + 408)
  {
    free(v12);
  }

  v17 = *(this + 30);
  if (v17 != this + 264)
  {
    free(v17);
  }

  v18 = *(this + 11);
  if (v18 != this + 112)
  {
    free(v18);
  }

  v19 = *(this + 8);
  if (v19)
  {
    *(this + 9) = v19;
    operator delete(v19);
  }

  v20 = *this;
  v21 = *(this + 2);
  if (v21)
  {
    v22 = &v20[8 * v21];
    do
    {
      v24 = *(v22 - 1);
      v22 -= 8;
      v23 = v24;
      *v22 = 0;
      if (v24)
      {
        v25 = *v23;
        v26 = *(v23 + 2);
        if (v26)
        {
          v27 = 8 * v26;
          v28 = v25 - 8;
          do
          {
            v29 = *&v28[v27];
            *&v28[v27] = 0;
            if (v29)
            {
              (*(*v29 + 8))(v29);
            }

            v27 -= 8;
          }

          while (v27);
          v25 = *v23;
        }

        if (v25 != (v23 + 2))
        {
          free(v25);
        }

        MEMORY[0x259C63180](v23, 0x1080C407559D7D1);
      }
    }

    while (v22 != v20);
    v20 = *this;
  }

  if (v20 != this + 16)
  {
    free(v20);
  }
}

uint64_t mlir::PatternApplicator::PatternApplicator(uint64_t this, const mlir::FrozenRewritePatternSet *a2)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = a2;
  *(this + 24) = 0;
  *(this + 32) = this + 48;
  *(this + 40) = 0x100000000;
  *(this + 56) = 0;
  if (*(*a2 + 72))
  {
    operator new();
  }

  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = a2;
  *(this + 24) = 0;
  *(this + 32) = this + 48;
  *(this + 40) = 0x100000000;
  *(this + 56) = 0;
  if (*(*a2 + 72))
  {
    operator new();
  }

  return this;
}

void mlir::PatternApplicator::~PatternApplicator(mlir::PatternApplicator *this)
{
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    mlir::detail::PDLByteCodeMutableState::~PDLByteCodeMutableState(v2);
    MEMORY[0x259C63180]();
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  v4 = *(this + 6);
  v5 = *(this + 1);
  if (v4)
  {
    v6 = v5 + 24;
    v7 = 40 * v4;
    do
    {
      if ((*(v6 - 3) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v8 = *(v6 - 2);
        if (v6 != v8)
        {
          free(v8);
        }
      }

      v6 += 40;
      v7 -= 40;
    }

    while (v7);
    v5 = *(this + 1);
    v9 = 40 * *(this + 6);
  }

  else
  {
    v9 = 0;
  }

  llvm::deallocate_buffer(v5, v9);
}

void mlir::PatternApplicator::applyCostModel(uint64_t **a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v73 = *MEMORY[0x277D85DE8];
  v66[0] = a2;
  v66[1] = a3;
  v4 = *(**a1 + 72);
  if (v4)
  {
    v5 = *(v4 + 400);
    if (v5)
    {
      v8 = 0;
      v9 = *(v4 + 392);
      v10 = 104 * v5;
      do
      {
        v11 = a1[7];
        v12 = a2(a3, v9);
        mlir::detail::PDLByteCodeMutableState::updatePatternBenefit(v11, v8++, v12);
        v9 += 104;
        v10 -= 104;
      }

      while (v10);
    }
  }

  v13 = *(a1 + 4);
  if (!v13 && !*(a1 + 5))
  {
LABEL_10:
    v15 = **a1;
    if (!*(v15 + 8))
    {
      goto LABEL_89;
    }

    goto LABEL_21;
  }

  v14 = *(a1 + 6);
  if (v14 > 4 * v13 && v14 >= 0x41)
  {
    llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>::shrink_and_clear((a1 + 1));
    goto LABEL_10;
  }

  if (v14)
  {
    v16 = (a1[1] + 3);
    for (i = 40 * v14; i; i -= 40)
    {
      v18 = *(v16 - 24);
      if (v18 != -8192)
      {
        if (v18 == -4096)
        {
          goto LABEL_15;
        }

        v19 = *(v16 - 16);
        if (v16 != v19)
        {
          free(v19);
        }
      }

      *(v16 - 24) = -4096;
LABEL_15:
      v16 += 40;
    }
  }

  a1[2] = 0;
  v15 = **a1;
  if (!*(v15 + 8))
  {
    goto LABEL_89;
  }

LABEL_21:
  v20 = *(v15 + 16);
  if (v20)
  {
    v21 = 32 * v20;
    v22 = *v15;
    while ((*v22 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v22 += 4;
      v21 -= 32;
      if (!v21)
      {
        goto LABEL_89;
      }
    }
  }

  else
  {
    v22 = *v15;
  }

  v23 = *v15 + 32 * v20;
  if (v22 == v23)
  {
    goto LABEL_89;
  }

  while (2)
  {
    v25 = v22[1];
    v24 = v22[2];
    while (v25 != v24)
    {
      v30 = *v25;
      if (*(*v25 + 20) == -1)
      {
        goto LABEL_34;
      }

      v31 = a1[1];
      v32 = *(a1 + 6);
      if (!v32)
      {
        goto LABEL_56;
      }

      v26 = ((*v22 >> 4) ^ (*v22 >> 9)) & (v32 - 1);
      v27 = &v31[5 * v26];
      v28 = *v27;
      if (*v22 != *v27)
      {
        v33 = 0;
        v34 = 1;
        while (v28 != -4096)
        {
          if (v33)
          {
            v35 = 0;
          }

          else
          {
            v35 = v28 == -8192;
          }

          if (v35)
          {
            v33 = v27;
          }

          v36 = v26 + v34++;
          v26 = v36 & (v32 - 1);
          v27 = &v31[5 * v26];
          v28 = *v27;
          if (*v22 == *v27)
          {
            goto LABEL_32;
          }
        }

        if (v33)
        {
          v27 = v33;
        }

        v37 = *(a1 + 4);
        if (4 * v37 + 4 >= (3 * v32))
        {
LABEL_56:
          v38 = 2 * v32;
          goto LABEL_58;
        }

        if (v32 + ~v37 - *(a1 + 5) <= v32 >> 3)
        {
          v38 = *(a1 + 6);
LABEL_58:
          v39 = (v38 - 1) | ((v38 - 1) >> 1);
          v40 = v39 | (v39 >> 2) | ((v39 | (v39 >> 2)) >> 4);
          v41 = ((v40 | (v40 >> 8)) >> 16) | v40 | (v40 >> 8);
          if ((v41 + 1) > 0x40)
          {
            v42 = v41 + 1;
          }

          else
          {
            v42 = 64;
          }

          *(a1 + 6) = v42;
          buffer = llvm::allocate_buffer(40 * v42, 8uLL);
          a1[1] = buffer;
          if (v31)
          {
            llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>,mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::moveFromOldBuckets((a1 + 1), v31, &v31[5 * v32]);
            llvm::deallocate_buffer(v31, (40 * v32));
          }

          a1[2] = 0;
          v44 = *(a1 + 6);
          if (v44)
          {
            v45 = 40 * v44 - 40;
            v46 = buffer;
            if (v45 < 0x28)
            {
              goto LABEL_113;
            }

            v47 = v45 / 0x28 + 1;
            v46 = &buffer[5 * (v47 & 0xFFFFFFFFFFFFFFELL)];
            v48 = buffer;
            v49 = v47 & 0xFFFFFFFFFFFFFFELL;
            do
            {
              *v48 = -4096;
              v48[5] = -4096;
              v48 += 10;
              v49 -= 2;
            }

            while (v49);
            if (v47 != (v47 & 0xFFFFFFFFFFFFFFELL))
            {
LABEL_113:
              do
              {
                *v46 = -4096;
                v46 += 5;
              }

              while (v46 != &buffer[5 * v44]);
            }

            v50 = v44 - 1;
            v51 = ((*v22 >> 4) ^ (*v22 >> 9)) & v50;
            v27 = &buffer[5 * v51];
            v52 = *v27;
            if (*v22 != *v27)
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
                  v53 = v27;
                }

                v56 = v51 + v54++;
                v51 = v56 & v50;
                v27 = &buffer[5 * v51];
                v52 = *v27;
                if (*v22 == *v27)
                {
                  goto LABEL_80;
                }
              }

              if (v53)
              {
                v27 = v53;
              }
            }
          }

          else
          {
            v27 = 0;
          }

LABEL_80:
          ++*(a1 + 4);
          if (*v27 != -4096)
          {
LABEL_41:
            --*(a1 + 5);
          }
        }

        else
        {
          *(a1 + 4) = v37 + 1;
          if (*v27 != -4096)
          {
            goto LABEL_41;
          }
        }

        *v27 = *v22;
        v27[1] = (v27 + 3);
        v27[2] = 0x200000000;
      }

LABEL_32:
      v29 = *(v27 + 4);
      if (v29 >= *(v27 + 5))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v27[1] + 8 * v29) = v30;
      ++*(v27 + 4);
LABEL_34:
      ++v25;
    }

    do
    {
      v22 += 4;
    }

    while (v22 != v23 && (*v22 | 0x1000) == 0xFFFFFFFFFFFFF000);
    if (v22 != v23)
    {
      continue;
    }

    break;
  }

  v15 = **a1;
LABEL_89:
  *(a1 + 10) = 0;
  v57 = *(v15 + 48);
  v58 = *(v15 + 56);
  if (v57 != v58)
  {
    v59 = 0;
    do
    {
      if (*(*v57 + 20) != -1)
      {
        if (v59 >= *(a1 + 11))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        a1[4][v59] = *v57;
        v59 = *(a1 + 10) + 1;
        *(a1 + 10) = v59;
      }

      v57 += 8;
    }

    while (v57 != v58);
  }

  v67 = 1;
  v68 = -4096;
  v70 = -4096;
  v71 = -4096;
  v72 = -4096;
  v65 = &v67;
  v64[0] = v66;
  v64[1] = &v67;
  v64[2] = &v65;
  if (*(a1 + 4))
  {
    v60 = *(a1 + 6);
    if (v60)
    {
      v61 = 40 * v60;
      v62 = a1[1];
      while ((*v62 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v62 += 5;
        v61 -= 40;
        if (!v61)
        {
          goto LABEL_101;
        }
      }
    }

    else
    {
      v62 = a1[1];
    }

    v63 = &a1[1][5 * v60];
    while (v62 != v63)
    {
      mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_1::operator()(v64, (v62 + 1));
      do
      {
        v62 += 5;
      }

      while (v62 != v63 && (*v62 | 0x1000) == 0xFFFFFFFFFFFFF000);
    }
  }

LABEL_101:
  mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_1::operator()(v64, (a1 + 4));
  if ((v67 & 1) == 0)
  {
    llvm::deallocate_buffer(v68, (16 * v69));
  }
}

void mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_1::operator()(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    if ((**a1)(*(*a1 + 8), **a2 + 8) == 0xFFFF)
    {
      *(a2 + 8) = 0;
    }

    return;
  }

  v4 = *(a1 + 8);
  v5 = *v4;
  if (*v4 > 1u || *(v4 + 4))
  {
    if (v5)
    {
      v23 = v4 + 8;
      v24 = (v4 + 72);
      v25 = 48;
    }

    else
    {
      v6 = *(v4 + 16);
      if (v6 > 2 * v5 && v6 >= 0x41)
      {
        llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::shrink_and_clear(v4);
        goto LABEL_10;
      }

      if (!v6)
      {
LABEL_31:
        *v4 = v6;
        *(v4 + 4) = 0;
        v7 = *a2;
        v8 = *(a2 + 8);
        if (v8)
        {
          goto LABEL_11;
        }

LABEL_32:
        v15 = 0;
        v21 = 0;
        v35[0] = **(a1 + 16);
        v14 = v7;
LABEL_33:
        std::__stable_sort<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(v14, v7, v35, v15, 0, v21);
        i = *(a2 + 8);
        if (!i)
        {
          return;
        }

        goto LABEL_34;
      }

      v23 = *(v4 + 8);
      v24 = (v23 + 16 * v6);
      v25 = v24 - v23 - 16;
      if (v25 <= 0xF)
      {
        v26 = *(v4 + 8);
        do
        {
LABEL_29:
          *v26 = -4096;
          v26 += 2;
        }

        while (v26 != v24);
LABEL_30:
        LODWORD(v6) = *v4 & 1;
        goto LABEL_31;
      }
    }

    v27 = (v25 >> 4) + 1;
    v26 = (v23 + 16 * (v27 & 0x1FFFFFFFFFFFFFFELL));
    v28 = (v23 + 16);
    v29 = v27 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v28 - 2) = -4096;
      *v28 = -4096;
      v28 += 4;
      v29 -= 2;
    }

    while (v29);
    if (v27 == (v27 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_10:
  v7 = *a2;
  v8 = *(a2 + 8);
  if (!v8)
  {
    goto LABEL_32;
  }

LABEL_11:
  v9 = 8 * v8;
  do
  {
    v10 = *v7;
    v7 += 8;
    v11 = v10 + 8;
    if (v10)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v37 = v12;
    v13 = *(a1 + 8);
    v36 = (**a1)(*(*a1 + 8));
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::try_emplace<mlir::PatternBenefit>(v13, &v37, &v36, v35);
    v9 -= 8;
  }

  while (v9);
  v14 = *a2;
  v15 = *(a2 + 8);
  v7 = (*a2 + 8 * v15);
  v35[0] = **(a1 + 16);
  if (v15 < 0x81)
  {
    v21 = 0;
    goto LABEL_33;
  }

  v16 = v14;
  v17 = MEMORY[0x277D826F0];
  v18 = v15;
  v19 = v15;
  while (1)
  {
    v20 = operator new(8 * v19, v17);
    if (v20)
    {
      break;
    }

    v21 = v19 >> 1;
    v22 = v19 > 1;
    v19 >>= 1;
    if (!v22)
    {
      v15 = v18;
      v14 = v16;
      goto LABEL_33;
    }
  }

  v34 = v20;
  std::__stable_sort<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(v16, v7, v35, v18, v20, v19);
  operator delete(v34);
  for (i = *(a2 + 8); i; *(a2 + 8) = i)
  {
LABEL_34:
    v31 = *(a1 + 8);
    v32 = *(*a2 + 8 * i - 8);
    if (v32)
    {
      v33 = v32 + 8;
    }

    else
    {
      v33 = 0;
    }

    v35[0] = v33;
    if (*llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](v31, v35) != -1)
    {
      break;
    }

    i = *(a2 + 8) - 1;
  }
}

uint64_t **mlir::PatternApplicator::walkAllPatterns(uint64_t **result, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v5 = result;
  v6 = **result;
  if (*(v6 + 8))
  {
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = 32 * v7;
      v9 = *v6;
      while ((*v9 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v9 += 4;
        v8 -= 32;
        if (!v8)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      v9 = *v6;
    }

    v10 = *v6 + 32 * v7;
    if (v9 != v10)
    {
      do
      {
        v11 = v9[1];
        for (i = v9[2]; v11 != i; result = a2(a3, v13 + 8))
        {
          v13 = *v11++;
        }

        do
        {
          v9 += 4;
        }

        while (v9 != v10 && (*v9 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v9 != v10);
      v6 = **v5;
    }
  }

LABEL_17:
  v14 = *(v6 + 48);
  v15 = *(v6 + 56);
  if (v14 != v15)
  {
    do
    {
      v16 = *v14++;
      result = a2(a3, v16 + 8);
    }

    while (v14 != v15);
    v6 = **v5;
  }

  v17 = *(v6 + 72);
  if (v17)
  {
    v18 = *(v17 + 400);
    if (v18)
    {
      v19 = *(v17 + 392);
      v20 = 104 * v18;
      do
      {
        result = a2(a3, v19);
        v19 += 104;
        v20 -= 104;
      }

      while (v20);
    }
  }

  return result;
}

uint64_t mlir::PatternApplicator::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v59[60] = *MEMORY[0x277D85DE8];
  v54[0] = a6;
  v54[1] = a7;
  v53[0] = a9;
  v53[1] = a10;
  v52 = a2;
  v57 = v59;
  v58 = 0x400000000;
  v14 = *(**a1 + 72);
  v51 = v14;
  if (v14)
  {
    mlir::detail::PDLByteCode::match(v14, a2, a3, &v57, *(a1 + 56));
    a2 = v52;
  }

  v15 = *(a1 + 8);
  v16 = *(a1 + 24);
  if (!v16)
  {
LABEL_9:
    v19 = (v15 + 40 * v16);
    goto LABEL_10;
  }

  v17 = *(a2 + 48);
  v18 = ((v17 >> 4) ^ (v17 >> 9)) & (v16 - 1);
  v19 = (v15 + 40 * v18);
  v20 = *v19;
  if (v17 != *v19)
  {
    v21 = 1;
    while (v20 != -4096)
    {
      v22 = v18 + v21++;
      v18 = v22 & (v16 - 1);
      v19 = (v15 + 40 * v18);
      v20 = *v19;
      if (v17 == *v19)
      {
        goto LABEL_10;
      }
    }

    goto LABEL_9;
  }

LABEL_10:
  if (v19 == (v15 + 40 * v16))
  {
    v24 = 0;
    v23 = 0;
  }

  else
  {
    v23 = v19[1];
    v24 = *(v19 + 4);
  }

  v25 = 0;
  v50 = 0;
  v26 = *(a1 + 40);
  v49 = 0;
  v27 = v58;
  v55 = 0;
  while (1)
  {
    if (v25 >= v24)
    {
      v30 = v50;
      if (v50 < v26)
      {
        v31 = *(a1 + 32);
LABEL_26:
        v32 = *(v31 + 8 * v30);
        goto LABEL_27;
      }

      v34 = v49;
      if (v49 >= v27)
      {
        goto LABEL_46;
      }

      v35 = v57;
LABEL_38:
      v47 = &v35[120 * v34];
      v29 = *(v47 + 13);
      v48 = v29;
      v33 = &v49;
      goto LABEL_39;
    }

    v28 = *(v23 + 8 * v25);
    if (v28)
    {
      v29 = v28 + 8;
    }

    else
    {
      v29 = 0;
    }

    v48 = v29;
    v30 = v50;
    if (v50 >= v26)
    {
      v33 = &v50 + 1;
      v47 = 0;
      v34 = v49;
      if (v49 >= v27)
      {
        goto LABEL_39;
      }

LABEL_33:
      v35 = v57;
      if (v29 && *(v29 + 12) >= *(v57 + 60 * v34 + 56))
      {
        goto LABEL_40;
      }

      goto LABEL_38;
    }

    v31 = *(a1 + 32);
    if (!v28)
    {
      goto LABEL_26;
    }

    v32 = *(v31 + 8 * v50);
    if (*(v29 + 12) >= *(v32 + 20))
    {
      v33 = &v50 + 1;
      v29 = v28 + 8;
      v47 = 0;
      v34 = v49;
      if (v49 < v27)
      {
        goto LABEL_33;
      }

      goto LABEL_39;
    }

LABEL_27:
    if (v32)
    {
      v29 = v32 + 8;
    }

    else
    {
      v29 = 0;
    }

    v47 = 0;
    v48 = v29;
    v33 = &v50;
    v34 = v49;
    if (v49 < v27)
    {
      goto LABEL_33;
    }

LABEL_39:
    if (!v29)
    {
      goto LABEL_46;
    }

LABEL_40:
    ++*v33;
    if (a4 && !a4(a5))
    {
      goto LABEL_14;
    }

    v46 = 0;
    Context = mlir::Attribute::getContext((v52 + 24));
    v45[0] = a3;
    v45[1] = &v52;
    v45[2] = &v47;
    v45[3] = &v55;
    v45[4] = &v51;
    v45[5] = a1;
    v45[6] = &v48;
    v45[7] = v53;
    v45[8] = &v46;
    v45[9] = v54;
    v56 = v52 & 0xFFFFFFFFFFFFFFF9;
    v37 = v48;
    if (mlir::MLIRContext::hasActionHandler(Context))
    {
      break;
    }

    llvm::function_ref<void ()(void)>::callback_fn<mlir::PatternApplicator::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &,llvm::function_ref<BOOL ()(mlir::Pattern const&)>,llvm::function_ref<void ()(mlir::Pattern const&)>,llvm::function_ref<llvm::LogicalResult ()(mlir::Pattern const&)>)::$_0>(v45);
    if (v46)
    {
      goto LABEL_46;
    }

LABEL_14:
    v25 = HIDWORD(v50);
  }

  mlir::MLIRContext::executeActionInternal<mlir::ApplyPatternAction,mlir::Pattern const&>(Context, llvm::function_ref<void ()(void)>::callback_fn<mlir::PatternApplicator::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &,llvm::function_ref<BOOL ()(mlir::Pattern const&)>,llvm::function_ref<void ()(mlir::Pattern const&)>,llvm::function_ref<llvm::LogicalResult ()(mlir::Pattern const&)>)::$_0>, v45, &v56, 1, v37);
  if ((v46 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_46:
  v38 = *(a1 + 56);
  if (v38)
  {
    mlir::detail::PDLByteCodeMutableState::cleanupAfterMatchAndRewrite(v38);
  }

  v39 = v57;
  if (v58)
  {
    v40 = v57 + 120 * v58 - 48;
    v41 = -120 * v58;
    do
    {
      v42 = *(v40 + 2);
      if (v40 + 32 != v42)
      {
        free(v42);
      }

      if (v40 + 16 != *v40)
      {
        free(*v40);
      }

      v43 = *(v40 - 8);
      if (v40 - 48 != v43)
      {
        free(v43);
      }

      v40 -= 120;
      v41 += 120;
    }

    while (v41);
    v39 = v57;
  }

  if (v39 != v59)
  {
    free(v39);
  }

  return v55;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::try_emplace<mlir::PatternBenefit>@<X0>(uint64_t result@<X0>, void *a2@<X1>, _WORD *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = result + 8;
  v4 = *result;
  v6 = *result & 1;
  if (v6)
  {
    v7 = 4;
    v8 = result + 8;
  }

  else
  {
    v7 = *(result + 16);
    if (!v7)
    {
      v11 = 0;
      v14 = 0;
      v24 = 0;
      goto LABEL_11;
    }

    v8 = *(result + 8);
  }

  v9 = v7 - 1;
  v10 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v7 - 1);
  v11 = v8 + 16 * v10;
  v12 = *v11;
  if (*a2 == *v11)
  {
LABEL_6:
    if (v6)
    {
      v13 = 4;
    }

    else
    {
      v5 = *(result + 8);
      v13 = *(result + 16);
    }

    *a4 = v11;
    *(a4 + 8) = v5 + 16 * v13;
    *(a4 + 16) = 0;
    return result;
  }

  v16 = 0;
  v17 = 1;
  while (v12 != -4096)
  {
    if (v16)
    {
      v18 = 0;
    }

    else
    {
      v18 = v12 == -8192;
    }

    if (v18)
    {
      v16 = v11;
    }

    v19 = v10 + v17++;
    v10 = v19 & v9;
    v11 = v8 + 16 * (v19 & v9);
    v12 = *v11;
    if (*a2 == *v11)
    {
      goto LABEL_6;
    }
  }

  if (v16)
  {
    v11 = v16;
  }

  v24 = v11;
  if (v6)
  {
    v14 = 4;
  }

  else
  {
    v14 = *(result + 16);
  }

LABEL_11:
  if (4 * (v4 >> 1) + 4 >= 3 * v14)
  {
    v14 *= 2;
    goto LABEL_34;
  }

  if (v14 + ~(v4 >> 1) - *(result + 4) <= v14 >> 3)
  {
LABEL_34:
    v22 = a2;
    v23 = result;
    v20 = a3;
    v21 = a4;
    llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::grow(result, v14);
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Block *,unsigned int,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::LookupBucketFor<mlir::Block *>(v23, v22, &v24);
    a2 = v22;
    result = v23;
    a3 = v20;
    a4 = v21;
    v4 = *v23;
    v11 = v24;
    v6 = *v23 & 1;
  }

  *result = (v4 & 0xFFFFFFFE | v6) + 2;
  if (*v11 != -4096)
  {
    --*(result + 4);
  }

  *v11 = *a2;
  *(v11 + 8) = *a3;
  if (*result)
  {
    v15 = 4;
  }

  else
  {
    v5 = *(result + 8);
    v15 = *(result + 16);
  }

  *a4 = v11;
  *(a4 + 8) = v5 + 16 * v15;
  *(a4 + 16) = 1;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](uint64_t a1, void *a2)
{
  v2 = a1 + 8;
  v3 = *a1;
  v4 = *a1 & 1;
  if (v4)
  {
    v5 = 4;
  }

  else
  {
    v5 = *(a1 + 16);
    if (!v5)
    {
      v8 = 0;
      v11 = 0;
      v18 = 0;
      goto LABEL_8;
    }

    v2 = *(a1 + 8);
  }

  v6 = v5 - 1;
  v7 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v5 - 1);
  v8 = v2 + 16 * v7;
  v9 = *v8;
  if (*a2 == *v8)
  {
    return v8 + 8;
  }

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
    v8 = v2 + 16 * (v15 & v6);
    v9 = *v8;
    if (*a2 == *v8)
    {
      return v8 + 8;
    }
  }

  if (v12)
  {
    v8 = v12;
  }

  v18 = v8;
  if (v4)
  {
    v11 = 4;
  }

  else
  {
    v11 = *(a1 + 16);
  }

LABEL_8:
  if (4 * (v3 >> 1) + 4 >= 3 * v11)
  {
    v11 *= 2;
    goto LABEL_28;
  }

  if (v11 + ~(v3 >> 1) - *(a1 + 4) <= v11 >> 3)
  {
LABEL_28:
    v16 = a2;
    v17 = a1;
    llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::grow(a1, v11);
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Block *,unsigned int,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::LookupBucketFor<mlir::Block *>(v17, v16, &v18);
    a2 = v16;
    a1 = v17;
    v3 = *v17;
    v8 = v18;
    v4 = *v17 & 1;
  }

  *a1 = (v3 & 0xFFFFFFFE | v4) + 2;
  if (*v8 != -4096)
  {
    --*(a1 + 4);
  }

  *v8 = *a2;
  *(v8 + 8) = -1;
  return v8 + 8;
}

unsigned int *llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::shrink_and_clear(unsigned int *result)
{
  v1 = *result;
  v2 = __clz((*result >> 1) - 1);
  if (v2 - 28 >= 3)
  {
    v3 = 1 << (33 - v2);
  }

  else
  {
    v3 = 64;
  }

  if (v1 >= 2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if ((v1 & 1) != 0 && v4 < 5)
  {
    *result &= 1u;
    result[1] = 0;
    v5 = result + 2;
    v6 = result + 18;
    v7 = 48;
    goto LABEL_15;
  }

  if (v1)
  {
    if (v4 <= 4)
    {
      *result = 1;
    }

    else
    {
      *result &= ~1u;
      v13 = result;
      buffer = llvm::allocate_buffer(16 * v4, 8uLL);
      result = v13;
      *(v13 + 1) = buffer;
      *(v13 + 2) = v4;
      v15 = *v13;
      *v13 = *v13 & 1;
      if ((v15 & 1) == 0)
      {
        v16 = &buffer[2 * v4];
        v17 = 16 * v4 - 16;
        if (v17 < 0x10)
        {
          v19 = buffer;
          goto LABEL_31;
        }

LABEL_24:
        v18 = (v17 >> 4) + 1;
        v19 = &buffer[2 * (v18 & 0x1FFFFFFFFFFFFFFELL)];
        v20 = buffer + 2;
        v21 = v18 & 0x1FFFFFFFFFFFFFFELL;
        do
        {
          *(v20 - 2) = -4096;
          *v20 = -4096;
          v20 += 4;
          v21 -= 2;
        }

        while (v21);
        if (v18 == (v18 & 0x1FFFFFFFFFFFFFFELL))
        {
          return result;
        }

        do
        {
LABEL_31:
          *v19 = -4096;
          v19 += 2;
        }

        while (v19 != v16);
        return result;
      }
    }

    buffer = result + 2;
    v16 = result + 18;
    v17 = 48;
    goto LABEL_24;
  }

  v9 = result[4];
  if (v4 != v9)
  {
    llvm::deallocate_buffer(*(result + 1), (16 * v9));
  }

  *result = 0;
  if (!v4)
  {
    return result;
  }

  v5 = *(result + 1);
  v6 = &v5[4 * v4];
  v7 = 16 * v4 - 16;
  if (v7 < 0x10)
  {
    v8 = *(result + 1);
    do
    {
LABEL_18:
      *v8 = -4096;
      v8 += 4;
    }

    while (v8 != v6);
    return result;
  }

LABEL_15:
  v10 = (v7 >> 4) + 1;
  v8 = &v5[4 * (v10 & 0x1FFFFFFFFFFFFFFELL)];
  v11 = v5 + 4;
  v12 = v10 & 0x1FFFFFFFFFFFFFFELL;
  do
  {
    *(v11 - 2) = -4096;
    *v11 = -4096;
    v11 += 4;
    v12 -= 2;
  }

  while (v12);
  if (v10 != (v10 & 0x1FFFFFFFFFFFFFFELL))
  {
    goto LABEL_18;
  }

  return result;
}

int *llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::grow(uint64_t a1, unsigned int a2)
{
  v21[6] = *MEMORY[0x277D85DE8];
  if (a2 >= 5)
  {
    v2 = (a2 - 1) | ((a2 - 1) >> 1);
    v3 = v2 | (v2 >> 2) | ((v2 | (v2 >> 2)) >> 4);
    v4 = ((v3 | (v3 >> 8)) >> 16) | v3 | (v3 >> 8);
    if ((v4 + 1) > 0x40)
    {
      a2 = v4 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*a1 & 1) == 0)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    if (a2 > 4)
    {
      v15 = a2;
      v16 = a1;
      buffer = llvm::allocate_buffer(16 * a2, 8uLL);
      a1 = v16;
      *(v16 + 8) = buffer;
      *(v16 + 16) = v15;
    }

    else
    {
      *a1 |= 1u;
    }

    v18 = (16 * v6);
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::moveFromOldBuckets(a1, v5, &v18[v5]);

    llvm::deallocate_buffer(v5, v18);
  }

  v7 = &v19;
  if ((*(a1 + 8) | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
    v8 = *(a1 + 24);
    if ((v8 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v19 = *(a1 + 8);
    v20 = *(a1 + 16);
    v7 = v21;
    v8 = *(a1 + 24);
    if ((v8 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
LABEL_10:
      v9 = *(a1 + 40);
      if ((v9 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        goto LABEL_11;
      }

      goto LABEL_21;
    }
  }

  *v7 = v8;
  *(v7 + 4) = *(a1 + 32);
  v7 += 2;
  v9 = *(a1 + 40);
  if ((v9 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_11:
    v10 = *(a1 + 56);
    if ((v10 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_12;
    }

LABEL_22:
    *v7 = v10;
    *(v7 + 4) = *(a1 + 64);
    v7 += 2;
    if (a2 < 5)
    {
      return llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::moveFromOldBuckets(a1, &v19, v7);
    }

    goto LABEL_13;
  }

LABEL_21:
  *v7 = v9;
  *(v7 + 4) = *(a1 + 48);
  v7 += 2;
  v10 = *(a1 + 56);
  if ((v10 | 0x1000) != 0xFFFFFFFFFFFFF000)
  {
    goto LABEL_22;
  }

LABEL_12:
  if (a2 >= 5)
  {
LABEL_13:
    *a1 &= ~1u;
    v11 = a2;
    v12 = a1;
    v13 = llvm::allocate_buffer(16 * a2, 8uLL);
    a1 = v12;
    *(v12 + 8) = v13;
    *(v12 + 16) = v11;
  }

  return llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::moveFromOldBuckets(a1, &v19, v7);
}

int *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::moveFromOldBuckets(int *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *result;
  *result &= 1u;
  result[1] = 0;
  if (v3)
  {
    v6 = result + 18;
    v5 = result + 2;
    v7 = 48;
  }

  else
  {
    v4 = result[4];
    if (!v4)
    {
      goto LABEL_11;
    }

    v5 = *(result + 1);
    v6 = &v5[4 * v4];
    v7 = v6 - v5 - 16;
    if (v7 < 0x10)
    {
      v9 = *(result + 1);
      do
      {
LABEL_10:
        *v9 = -4096;
        v9 += 4;
      }

      while (v9 != v6);
      goto LABEL_11;
    }
  }

  v8 = (v7 >> 4) + 1;
  v9 = &v5[4 * (v8 & 0x1FFFFFFFFFFFFFFELL)];
  v10 = v5 + 4;
  v11 = v8 & 0x1FFFFFFFFFFFFFFELL;
  do
  {
    *(v10 - 2) = -4096;
    *v10 = -4096;
    v10 += 4;
    v11 -= 2;
  }

  while (v11);
  if (v8 != (v8 & 0x1FFFFFFFFFFFFFFELL))
  {
    goto LABEL_10;
  }

LABEL_11:
  while (a2 != a3)
  {
    v17 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      if (*result)
      {
        v13 = 3;
        v12 = result + 2;
      }

      else
      {
        v12 = *(result + 1);
        v13 = result[4] - 1;
      }

      v14 = v13 & ((v17 >> 4) ^ (v17 >> 9));
      v15 = &v12[4 * v14];
      v16 = *v15;
      if (v17 != *v15)
      {
        v18 = 0;
        v19 = 1;
        while (v16 != -4096)
        {
          if (v18)
          {
            v20 = 0;
          }

          else
          {
            v20 = v16 == -8192;
          }

          if (v20)
          {
            v18 = v15;
          }

          v21 = v14 + v19++;
          v14 = v21 & v13;
          v15 = &v12[4 * (v21 & v13)];
          v16 = *v15;
          if (v17 == *v15)
          {
            goto LABEL_15;
          }
        }

        if (v18)
        {
          v15 = v18;
        }
      }

LABEL_15:
      *v15 = v17;
      *(v15 + 4) = *(a2 + 4);
      *result += 2;
    }

    a2 += 2;
  }

  return result;
}

double std::__stable_sort<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(char *a1, char *a2, uint64_t *a3, unint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (a4 < 2)
  {
    return *&v13;
  }

  v7 = a2;
  v8 = a1;
  if (a4 == 2)
  {
    v9 = *(a2 - 1);
    if (v9)
    {
      v10 = v9 + 8;
    }

    else
    {
      v10 = 0;
    }

    if (*a1)
    {
      v11 = *a1 + 8;
    }

    else
    {
      v11 = 0;
    }

    v116 = v11;
    v117 = v10;
    v12 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v117);
    if (*llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v116) < *v12)
    {
      v14 = *v8;
      *v8 = *(v7 - 1);
      *(v7 - 1) = v14;
    }

    return *&v13;
  }

  if (a4 <= 128)
  {
    if (a1 == a2)
    {
      return *&v13;
    }

    v15 = a1 + 8;
    if (a1 + 8 == a2)
    {
      return *&v13;
    }

    v16 = a1;
LABEL_19:
    v17 = v15;
    v19 = *v16;
    v18 = *(v16 + 1);
    if (v18)
    {
      v20 = v18 + 8;
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v21 = v19 + 8;
    }

    else
    {
      v21 = 0;
    }

    v116 = v21;
    v117 = v20;
    v22 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v117);
    if (*llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v116) >= *v22)
    {
      goto LABEL_18;
    }

    v23 = *v17;
    if (*v17)
    {
      v24 = *v17 + 8;
    }

    else
    {
      v24 = 0;
    }

    v25 = (v24 >> 4) ^ (v24 >> 9);
    v115 = v17;
    while (1)
    {
      *v17 = *v16;
      if (v16 == v8)
      {
        v17 = v8;
LABEL_17:
        *v17 = v23;
        v7 = a2;
        v17 = v115;
LABEL_18:
        v15 = v17 + 8;
        v16 = v17;
        if (v17 + 8 != v7)
        {
          goto LABEL_19;
        }

        return *&v13;
      }

      v17 = v16;
      v32 = *(v16 - 1);
      v16 -= 8;
      v33 = v32 + 8;
      if (v32)
      {
        v34 = v33;
      }

      else
      {
        v34 = 0;
      }

      v35 = *a3;
      v37 = *a3 + 8;
      v36 = **a3;
      v38 = v36 & 1;
      if (v36)
      {
        v39 = 4;
        v40 = *a3 + 8;
      }

      else
      {
        v39 = *(v35 + 16);
        if (!v39)
        {
          v43 = 0;
          v47 = 0;
          goto LABEL_46;
        }

        v40 = *(v35 + 8);
      }

      v41 = v39 - 1;
      v42 = v41 & v25;
      v43 = v40 + 16 * (v41 & v25);
      v44 = *v43;
      if (v24 == *v43)
      {
        goto LABEL_42;
      }

      v53 = 0;
      v54 = 1;
      while (v44 != -4096)
      {
        if (v53)
        {
          v55 = 0;
        }

        else
        {
          v55 = v44 == -8192;
        }

        if (v55)
        {
          v53 = v43;
        }

        v56 = v42 + v54++;
        v42 = v56 & v41;
        v43 = v40 + 16 * v42;
        v44 = *v43;
        if (v24 == *v43)
        {
          goto LABEL_42;
        }
      }

      if (v53)
      {
        v43 = v53;
      }

      if (v36)
      {
        v47 = 4;
      }

      else
      {
        v47 = *(v35 + 16);
      }

LABEL_46:
      if (4 * (v36 >> 1) + 4 >= 3 * v47)
      {
        v47 *= 2;
      }

      else if (v47 + ~(v36 >> 1) - *(v35 + 4) > v47 >> 3)
      {
        goto LABEL_48;
      }

      v112 = v23;
      llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::grow(v35, v47);
      v36 = *v35;
      if (*v35)
      {
        v57 = 4;
      }

      else
      {
        v57 = *(v35 + 16);
        if (!v57)
        {
          v38 = 0;
          v43 = 0;
LABEL_116:
          v23 = v112;
          goto LABEL_48;
        }

        v37 = *(v35 + 8);
      }

      v23 = v112;
      v38 = *v35 & 1;
      v59 = v57 - 1;
      v60 = v59 & v25;
      v43 = v37 + 16 * (v59 & v25);
      v61 = *v43;
      if (v24 != *v43)
      {
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
            v62 = v43;
          }

          v65 = v60 + v63++;
          v60 = v65 & v59;
          v43 = v37 + 16 * v60;
          v61 = *v43;
          if (v24 == *v43)
          {
            goto LABEL_116;
          }
        }

        if (v62)
        {
          v43 = v62;
        }

        goto LABEL_116;
      }

LABEL_48:
      *v35 = (v36 & 0xFFFFFFFE | v38) + 2;
      if (*v43 != -4096)
      {
        --*(v35 + 4);
      }

      *v43 = v24;
      *(v43 + 8) = -1;
      v35 = *a3;
      v36 = **a3;
LABEL_42:
      v45 = v36 & 1;
      v46 = v35 + 8;
      if (v36)
      {
        v26 = 4;
        v27 = v35 + 8;
      }

      else
      {
        v26 = *(v35 + 16);
        if (!v26)
        {
          v30 = 0;
          v48 = 0;
          goto LABEL_52;
        }

        v27 = *(v35 + 8);
      }

      v28 = v26 - 1;
      v29 = (v26 - 1) & ((v34 >> 4) ^ (v34 >> 9));
      v30 = v27 + 16 * v29;
      v31 = *v30;
      if (v34 != *v30)
      {
        v49 = 0;
        v50 = 1;
        while (v31 != -4096)
        {
          if (v49)
          {
            v51 = 0;
          }

          else
          {
            v51 = v31 == -8192;
          }

          if (v51)
          {
            v49 = v30;
          }

          v52 = v29 + v50++;
          v29 = v52 & v28;
          v30 = v27 + 16 * (v52 & v28);
          v31 = *v30;
          if (v34 == *v30)
          {
            goto LABEL_32;
          }
        }

        if (v49)
        {
          v30 = v49;
        }

        if (v36)
        {
          v48 = 4;
        }

        else
        {
          v48 = *(v35 + 16);
        }

LABEL_52:
        if (4 * (v36 >> 1) + 4 >= 3 * v48)
        {
          v48 *= 2;
        }

        else if (v48 + ~(v36 >> 1) - *(v35 + 4) > v48 >> 3)
        {
LABEL_54:
          *v35 = (v36 & 0xFFFFFFFE | v45) + 2;
          if (*v30 != -4096)
          {
            --*(v35 + 4);
          }

          *v30 = v34;
          *(v30 + 8) = -1;
          goto LABEL_32;
        }

        v113 = v23;
        llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::grow(v35, v48);
        v36 = *v35;
        if (*v35)
        {
          v58 = 4;
LABEL_105:
          v23 = v113;
          v45 = *v35 & 1;
          v66 = v58 - 1;
          v67 = (v58 - 1) & ((v34 >> 4) ^ (v34 >> 9));
          v30 = v46 + 16 * v67;
          v68 = *v30;
          if (v34 == *v30)
          {
            goto LABEL_54;
          }

          v69 = 0;
          v70 = 1;
          while (v68 != -4096)
          {
            if (v69)
            {
              v71 = 0;
            }

            else
            {
              v71 = v68 == -8192;
            }

            if (v71)
            {
              v69 = v30;
            }

            v72 = v67 + v70++;
            v67 = v72 & v66;
            v30 = v46 + 16 * (v72 & v66);
            v68 = *v30;
            if (v34 == *v30)
            {
              goto LABEL_118;
            }
          }

          if (v69)
          {
            v30 = v69;
          }
        }

        else
        {
          v58 = *(v35 + 16);
          if (v58)
          {
            v46 = *(v35 + 8);
            goto LABEL_105;
          }

          v45 = 0;
          v30 = 0;
        }

LABEL_118:
        v23 = v113;
        goto LABEL_54;
      }

LABEL_32:
      if (*(v30 + 8) >= *(v43 + 8))
      {
        goto LABEL_17;
      }
    }
  }

  v73 = a5;
  v74 = a4 >> 1;
  v75 = &a1[8 * (a4 >> 1)];
  v76 = a4 - (a4 >> 1);
  if (a4 <= a6)
  {
    std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(a1, v75, a3, a4 >> 1, a5);
    v79 = &v73[8 * v74];
    std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(v75, v7, a3, v76, v79);
    v80 = &v73[8 * a4];
    v81 = v8;
    v82 = v79;
    do
    {
      if (v82 == v80)
      {
        if (v73 == v79)
        {
          return *&v13;
        }

        v102 = v79 - v73 - 8;
        if (v102 >= 0x38)
        {
          if ((v81 - v73) >= 0x20)
          {
            v104 = v8 + 16;
            v105 = (v102 >> 3) + 1;
            v106 = 8 * (v105 & 0x3FFFFFFFFFFFFFFCLL);
            v8 += v106;
            v103 = &v73[v106];
            v107 = (v73 + 16);
            v108 = v105 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v13 = *(v107 - 1);
              v109 = *v107;
              *(v104 - 1) = v13;
              *v104 = v109;
              v107 += 2;
              v104 += 2;
              v108 -= 4;
            }

            while (v108);
            if (v105 == (v105 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return *&v13;
            }
          }

          else
          {
            v103 = v73;
          }
        }

        else
        {
          v103 = v73;
        }

        do
        {
          v110 = *v103;
          v103 += 8;
          *v8 = v110;
          v8 += 8;
        }

        while (v103 != v79);
        return *&v13;
      }

      v83 = v82;
      v84 = *v82;
      if (v84)
      {
        v85 = v84 + 8;
      }

      else
      {
        v85 = 0;
      }

      if (*v73)
      {
        v86 = *v73 + 8;
      }

      else
      {
        v86 = 0;
      }

      v116 = v86;
      v117 = v85;
      v87 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v117);
      v88 = *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v116) >= *v87;
      v89 = !v88;
      if (v88)
      {
        v90 = v73;
      }

      else
      {
        v90 = v83;
      }

      v73 += 8 * v88;
      v91 = v89;
      v82 = &v83[v91];
      *v8 = *v90;
      v8 += 8;
      v81 += 8;
    }

    while (v73 != v79);
    if (v82 != v80)
    {
      v92 = v80 - v83 - v91 * 8 - 8;
      if (v92 <= 0x57)
      {
        goto LABEL_164;
      }

      if ((v81 - v83 - v91 * 8) < 0x20)
      {
        goto LABEL_164;
      }

      v93 = 0;
      v94 = (v92 >> 3) + 1;
      v95 = 8 * (v94 & 0x3FFFFFFFFFFFFFFCLL);
      v96 = &v8[v95];
      v82 = (v82 + v95);
      v97 = &v83[v91 + 2];
      v98 = v94 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v99 = &v8[v93];
        v13 = *(v97 - 1);
        v100 = *v97;
        *v99 = v13;
        *(v99 + 1) = v100;
        v97 += 4;
        v93 += 32;
        v98 -= 4;
      }

      while (v98);
      v8 = v96;
      if (v94 != (v94 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_164:
        do
        {
          v101 = *v82++;
          *v8 = v101;
          v8 += 8;
        }

        while (v82 != v80);
      }
    }
  }

  else
  {
    std::__stable_sort<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(a1, v75, a3, a4 >> 1, a5, a6);
    std::__stable_sort<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(v75, v7, a3, v76, v73, a6);

    *&v13 = std::__inplace_merge<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(v8, v75, v7, a3, v74, v76, v73, a6).n128_u64[0];
  }

  return *&v13;
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(uint64_t result, char *a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  if (!a4)
  {
    return result;
  }

  v5 = a5;
  v6 = result;
  if (a4 == 1)
  {
LABEL_16:
    *v5 = *v6;
    return result;
  }

  v8 = a2;
  if (a4 == 2)
  {
    v10 = a2 - 8;
    v9 = *(a2 - 1);
    if (v9)
    {
      v11 = v9 + 8;
    }

    else
    {
      v11 = 0;
    }

    if (*result)
    {
      v12 = *result + 8;
    }

    else
    {
      v12 = 0;
    }

    v116 = v12;
    v117 = v11;
    v13 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v117);
    result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v116);
    v14 = *result;
    v15 = *v13;
    v16 = v14 >= v15;
    if (v14 >= v15)
    {
      v17 = v6;
    }

    else
    {
      v17 = v10;
    }

    *v5++ = *v17;
    if (v16)
    {
      v6 = v10;
    }

    goto LABEL_16;
  }

  if (a4 <= 8)
  {
    if (result == a2)
    {
      return result;
    }

    v18 = (result + 8);
    *a5 = *result;
    if ((result + 8) == a2)
    {
      return result;
    }

    v19 = a5;
LABEL_25:
    v22 = v19;
    v24 = *v19++;
    v23 = v24;
    if (*v18)
    {
      v25 = *v18 + 8;
    }

    else
    {
      v25 = 0;
    }

    if (v23)
    {
      v26 = v23 + 8;
    }

    else
    {
      v26 = 0;
    }

    v116 = v26;
    v117 = v25;
    v27 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v117);
    result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v116);
    v20 = v19;
    if (*result >= *v27)
    {
      goto LABEL_24;
    }

    v22[1] = *v22;
    v20 = v5;
    if (v22 == v5)
    {
      goto LABEL_24;
    }

    v115 = v19;
    v28 = v22;
    while (1)
    {
      if (*v18)
      {
        v29 = *v18 + 8;
      }

      else
      {
        v29 = 0;
      }

      v30 = *--v28;
      v31 = v30 + 8;
      if (v30)
      {
        v32 = v31;
      }

      else
      {
        v32 = 0;
      }

      v33 = *a3;
      v35 = *a3 + 8;
      v34 = **a3;
      v36 = v34 & 1;
      if (v34)
      {
        v37 = 4;
        v38 = *a3 + 8;
      }

      else
      {
        v37 = *(v33 + 16);
        if (!v37)
        {
          v41 = 0;
          v51 = 0;
          goto LABEL_54;
        }

        v38 = *(v33 + 8);
      }

      v39 = v37 - 1;
      v40 = v39 & ((v29 >> 4) ^ (v29 >> 9));
      v41 = v38 + 16 * v40;
      v42 = *v41;
      if (v29 == *v41)
      {
        goto LABEL_45;
      }

      v53 = 0;
      v54 = 1;
      while (v42 != -4096)
      {
        if (v53)
        {
          v55 = 0;
        }

        else
        {
          v55 = v42 == -8192;
        }

        if (v55)
        {
          v53 = v41;
        }

        v56 = v40 + v54++;
        v40 = v56 & v39;
        v41 = v38 + 16 * v40;
        v42 = *v41;
        if (v29 == *v41)
        {
          goto LABEL_45;
        }
      }

      if (v53)
      {
        v41 = v53;
      }

      if (v34)
      {
        v51 = 4;
      }

      else
      {
        v51 = *(v33 + 16);
      }

LABEL_54:
      if (4 * (v34 >> 1) + 4 >= 3 * v51)
      {
        v51 *= 2;
      }

      else if (v51 + ~(v34 >> 1) - *(v33 + 4) > v51 >> 3)
      {
        goto LABEL_56;
      }

      result = llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::grow(*a3, v51);
      v34 = *v33;
      if (*v33)
      {
        v61 = 4;
LABEL_102:
        v36 = *v33 & 1;
        v63 = v61 - 1;
        v64 = v63 & ((v29 >> 4) ^ (v29 >> 9));
        v41 = v35 + 16 * v64;
        v65 = *v41;
        if (v29 != *v41)
        {
          v66 = 0;
          v67 = 1;
          while (v65 != -4096)
          {
            if (v66)
            {
              v68 = 0;
            }

            else
            {
              v68 = v65 == -8192;
            }

            if (v68)
            {
              v66 = v41;
            }

            v69 = v64 + v67++;
            v64 = v69 & v63;
            v41 = v35 + 16 * v64;
            v65 = *v41;
            if (v29 == *v41)
            {
              goto LABEL_56;
            }
          }

          if (v66)
          {
            v41 = v66;
          }
        }

        goto LABEL_56;
      }

      v61 = *(v33 + 16);
      if (v61)
      {
        v35 = *(v33 + 8);
        goto LABEL_102;
      }

      v36 = 0;
      v41 = 0;
LABEL_56:
      *v33 = (v34 & 0xFFFFFFFE | v36) + 2;
      if (*v41 != -4096)
      {
        --*(v33 + 4);
      }

      *v41 = v29;
      *(v41 + 8) = -1;
      v33 = *a3;
      v34 = **a3;
LABEL_45:
      v43 = v34 & 1;
      v44 = v33 + 8;
      if (v34)
      {
        v45 = 4;
        v46 = v33 + 8;
      }

      else
      {
        v45 = *(v33 + 16);
        if (!v45)
        {
          v49 = 0;
          v52 = 0;
          goto LABEL_60;
        }

        v46 = *(v33 + 8);
      }

      v47 = v45 - 1;
      v48 = (v45 - 1) & ((v32 >> 4) ^ (v32 >> 9));
      v49 = v46 + 16 * v48;
      v50 = *v49;
      if (v32 != *v49)
      {
        v57 = 0;
        v58 = 1;
        while (v50 != -4096)
        {
          result = -8192;
          if (v57)
          {
            v59 = 0;
          }

          else
          {
            v59 = v50 == -8192;
          }

          if (v59)
          {
            v57 = v49;
          }

          v60 = v48 + v58++;
          v48 = v60 & v47;
          v49 = v46 + 16 * (v60 & v47);
          v50 = *v49;
          if (v32 == *v49)
          {
            goto LABEL_50;
          }
        }

        if (v57)
        {
          v49 = v57;
        }

        if (v34)
        {
          v52 = 4;
        }

        else
        {
          v52 = *(v33 + 16);
        }

LABEL_60:
        if (4 * (v34 >> 1) + 4 >= 3 * v52)
        {
          v52 *= 2;
        }

        else if (v52 + ~(v34 >> 1) - *(v33 + 4) > v52 >> 3)
        {
LABEL_62:
          *v33 = (v34 & 0xFFFFFFFE | v43) + 2;
          if (*v49 != -4096)
          {
            --*(v33 + 4);
          }

          *v49 = v32;
          *(v49 + 8) = -1;
          goto LABEL_50;
        }

        result = llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::grow(v33, v52);
        v34 = *v33;
        if (*v33)
        {
          v62 = 4;
        }

        else
        {
          v62 = *(v33 + 16);
          if (!v62)
          {
            v43 = 0;
            v49 = 0;
            goto LABEL_62;
          }

          v44 = *(v33 + 8);
        }

        v43 = *v33 & 1;
        v70 = v62 - 1;
        v71 = (v62 - 1) & ((v32 >> 4) ^ (v32 >> 9));
        v49 = v44 + 16 * v71;
        v72 = *v49;
        if (v32 != *v49)
        {
          v73 = 0;
          v74 = 1;
          while (v72 != -4096)
          {
            if (v73)
            {
              v75 = 0;
            }

            else
            {
              v75 = v72 == -8192;
            }

            if (v75)
            {
              v73 = v49;
            }

            v76 = v71 + v74++;
            v71 = v76 & v70;
            v49 = v44 + 16 * (v76 & v70);
            v72 = *v49;
            if (v32 == *v49)
            {
              goto LABEL_62;
            }
          }

          if (v73)
          {
            v49 = v73;
          }
        }

        goto LABEL_62;
      }

LABEL_50:
      if (*(v49 + 8) >= *(v41 + 8))
      {
        v20 = v22;
        goto LABEL_23;
      }

      *v22 = *(v22 - 1);
      v22 = v28;
      if (v28 == v5)
      {
        v20 = v5;
LABEL_23:
        v8 = a2;
        v19 = v115;
LABEL_24:
        v21 = *v18;
        v18 += 8;
        *v20 = v21;
        if (v18 != v8)
        {
          goto LABEL_25;
        }

        return result;
      }
    }
  }

  v77 = a4 >> 1;
  v78 = 8 * (a4 >> 1);
  v79 = (result + v78);
  std::__stable_sort<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(result, result + v78, a3, v77, a5, v77);
  result = std::__stable_sort<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(&v6[v78], v8, a3, a4 - v77, &v5[v78 / 8], a4 - v77);
  v81 = v5;
  v82 = v6;
  v83 = v79;
  do
  {
    if (v83 == v8)
    {
      if (v82 == v79)
      {
        return result;
      }

      v105 = &v6[8 * v77] - v82 - 8;
      if (v105 >= 0x38)
      {
        if ((v81 - v82) >= 0x20)
        {
          v107 = v5 + 2;
          v108 = (v105 >> 3) + 1;
          v109 = v108 & 0x3FFFFFFFFFFFFFFCLL;
          v5 = (v5 + v109 * 8);
          v106 = &v82[v109];
          v110 = (v82 + 2);
          v111 = v108 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v112 = *v110;
            *(v107 - 1) = *(v110 - 1);
            *v107 = v112;
            v110 += 2;
            v107 += 2;
            v111 -= 4;
          }

          while (v111);
          if (v108 == (v108 & 0x3FFFFFFFFFFFFFFCLL))
          {
            return result;
          }
        }

        else
        {
          v106 = v82;
        }
      }

      else
      {
        v106 = v82;
      }

      do
      {
        v113 = *v106++;
        *v5++ = v113;
      }

      while (v106 != v79);
      return result;
    }

    v84 = v83;
    v85 = *v83;
    if (v85)
    {
      v86 = v85 + 8;
    }

    else
    {
      v86 = 0;
    }

    if (*v82)
    {
      v87 = *v82 + 8;
    }

    else
    {
      v87 = 0;
    }

    v116 = v87;
    v117 = v86;
    v88 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v117);
    result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v116);
    v89 = *result;
    v90 = *v88;
    v16 = v89 >= v90;
    v91 = v89 >= v90;
    v92 = v89 < v90;
    if (v16)
    {
      v93 = v82;
    }

    else
    {
      v93 = v84;
    }

    v94 = v92;
    v83 = &v84[v94];
    v82 += v91;
    *v5++ = *v93;
    v81 += 8;
  }

  while (v82 != v79);
  if (v83 != v8)
  {
    v95 = v8 - v84 - v94 * 8 - 8;
    if (v95 < 0x58)
    {
      goto LABEL_164;
    }

    if ((v81 - &v84[v94]) < 0x20)
    {
      goto LABEL_164;
    }

    v96 = 0;
    v97 = (v95 >> 3) + 1;
    v98 = v97 & 0x3FFFFFFFFFFFFFFCLL;
    v99 = &v5[v98];
    v83 = (v83 + v98 * 8);
    v100 = &v84[v94 + 2];
    v101 = v97 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v102 = &v5[v96];
      v103 = *v100;
      *v102 = *(v100 - 1);
      *(v102 + 1) = v103;
      v100 += 2;
      v96 += 4;
      v101 -= 4;
    }

    while (v101);
    v5 = v99;
    if (v97 != (v97 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_164:
      do
      {
        v104 = *v83++;
        *v5++ = v104;
      }

      while (v83 != v8);
    }
  }

  return result;
}

__n128 std::__inplace_merge<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(char *a1, char *a2, char *a3, uint64_t *a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v136 = a6;
  if (!a6)
  {
    return result;
  }

  while (v136 > a8 && a5 > a8)
  {
    if (!a5)
    {
      return result;
    }

    v14 = 0;
    v15 = 0;
    while (1)
    {
      v16 = *a2 ? *a2 + 8 : 0;
      v17 = *&a1[8 * v15];
      v18 = v17 ? v17 + 8 : 0;
      v138 = v18;
      v139 = v16;
      v19 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a4, &v139);
      if (*llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a4, &v138) < *v19)
      {
        break;
      }

      ++v15;
      v14 -= 8;
      if (a5 == v15)
      {
        return result;
      }
    }

    v21 = a5;
    v22 = a5 - v15;
    v23 = &a1[-v14];
    v24 = v136;
    v135 = a3;
    if (a5 - v15 >= v136)
    {
      if (a5 - 1 == v15)
      {
        v118 = *&a1[8 * v15];
        *&a1[8 * v15] = *a2;
        *a2 = v118;
        return result;
      }

      v35 = v22 / 2;
      v37 = &a1[8 * (v22 / 2)];
      if (a3 == a2)
      {
        v25 = a2;
      }

      else
      {
        v128 = v22 / 2;
        __dsta = v23;
        v132 = a8;
        v133 = a7;
        v38 = *a4;
        v39 = (a3 - a2) >> 3;
        v25 = a2;
        do
        {
          v40 = &v25[8 * (v39 >> 1)];
          v42 = *v40;
          v41 = v40 + 8;
          v43 = *&v37[8 * v15];
          v44 = v42 + 8;
          if (v42)
          {
            v45 = v44;
          }

          else
          {
            v45 = 0;
          }

          if (v43)
          {
            v46 = v43 + 8;
          }

          else
          {
            v46 = 0;
          }

          v138 = v46;
          v139 = v45;
          v47 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](v38, &v139);
          v48 = *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](v38, &v138);
          v49 = *v47;
          if (v48 >= v49)
          {
            v39 >>= 1;
          }

          else
          {
            v39 += ~(v39 >> 1);
          }

          if (v48 < v49)
          {
            v25 = v41;
          }
        }

        while (v39);
        a7 = v133;
        v23 = __dsta;
        a8 = v132;
        v21 = a5;
        v24 = v136;
        v35 = v128;
      }

      v27 = &v37[-v14];
      v134 = (v25 - a2) >> 3;
      v36 = v25;
      if (v27 != a2)
      {
LABEL_49:
        v36 = v27;
        if (a2 != v25)
        {
          v50 = v27 + 8;
          if (v27 + 8 == a2)
          {
            v57 = v23;
            v58 = *v27;
            v59 = v25 - a2;
            v60 = v35;
            memmove(v27, v50, v59);
            v35 = v60;
            v24 = v136;
            v21 = a5;
            v36 = &v27[v59];
            *&v27[v59] = v58;
            v23 = v57;
          }

          else
          {
            v51 = a2 + 8;
            if (a2 + 8 == v25)
            {
              v61 = v23;
              v62 = a8;
              v63 = *(v25 - 1);
              v36 = v27 + 8;
              if (v25 - 8 != v27)
              {
                v64 = v35;
                memmove(v27 + 8, v27, v25 - 8 - v27);
                v35 = v64;
                v24 = v136;
                v21 = a5;
              }

              *v27 = v63;
              a8 = v62;
              v23 = v61;
            }

            else
            {
              v52 = a2 - v27;
              v53 = (a2 - v27) >> 3;
              v54 = (v25 - a2) >> 3;
              if (v53 == v54)
              {
                do
                {
                  v55 = *(v50 - 1);
                  *(v50 - 1) = *(v51 - 1);
                  *(v51 - 1) = v55;
                  if (v50 == a2)
                  {
                    break;
                  }

                  v50 += 8;
                  v56 = v51 == v25;
                  v51 += 8;
                }

                while (!v56);
                v36 = a2;
              }

              else
              {
                v65 = (a2 - v27) >> 3;
                do
                {
                  v66 = v65;
                  v65 = v54;
                  v54 = v66 % v54;
                }

                while (v54);
                v67 = &v27[8 * v65];
                do
                {
                  v69 = *(v67 - 1);
                  v67 -= 8;
                  v68 = v69;
                  v70 = &v67[v52];
                  v71 = v67;
                  do
                  {
                    v72 = v71;
                    v71 = v70;
                    *v72 = *v70;
                    v73 = (v25 - v70) >> 3;
                    v74 = __OFSUB__(v53, v73);
                    v76 = v53 - v73;
                    v75 = (v76 < 0) ^ v74;
                    v70 = &v27[8 * v76];
                    if (v75)
                    {
                      v70 = v71 + v52;
                    }
                  }

                  while (v70 != v67);
                  *v71 = v68;
                }

                while (v67 != v27);
                v36 = &v27[v25 - a2];
              }
            }
          }
        }
      }
    }

    else
    {
      v134 = v136 / 2;
      v25 = &a2[8 * (v136 / 2)];
      if (v23 == a2)
      {
        v27 = &a1[-v14];
        v35 = 0;
        v36 = &a2[8 * (v136 / 2)];
      }

      else
      {
        v131 = a8;
        v26 = (a2 - a1 + v14) >> 3;
        __dst = &a1[-v14];
        v27 = &a1[-v14];
        do
        {
          v28 = &v27[8 * (v26 >> 1)];
          v31 = *v28;
          v30 = v28 + 8;
          v29 = v31;
          if (*v25)
          {
            v32 = *v25 + 8;
          }

          else
          {
            v32 = 0;
          }

          if (v29)
          {
            v33 = v29 + 8;
          }

          else
          {
            v33 = 0;
          }

          v138 = v33;
          v139 = v32;
          v34 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a4, &v139);
          if (*llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a4, &v138) < *v34)
          {
            v26 >>= 1;
          }

          else
          {
            v27 = v30;
            v26 += ~(v26 >> 1);
          }
        }

        while (v26);
        a8 = v131;
        v21 = a5;
        v24 = v136;
        v23 = __dst;
        v35 = (v27 - __dst) >> 3;
        v36 = &a2[8 * (v136 / 2)];
        if (v27 != a2)
        {
          goto LABEL_49;
        }
      }
    }

    v77 = v21 - v35 - v15;
    v78 = v24 - v134;
    if (v35 + v134 >= v24 + v21 - (v35 + v134) - v15)
    {
      v79 = v35;
      std::__inplace_merge<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(v36, v25, v135, a4, v77, v24 - v134, a7, a8);
      v80 = v27;
      v136 = v134;
      a5 = v79;
      a1 = v23;
      a2 = v80;
      a3 = v36;
      if (!v134)
      {
        return result;
      }
    }

    else
    {
      std::__inplace_merge<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(v23, v27, v36, a4, v35, v134, a7, a8);
      a5 = v77;
      v136 = v78;
      a1 = v36;
      a2 = v25;
      a3 = v135;
      if (!v78)
      {
        return result;
      }
    }
  }

  if (a5 <= v136)
  {
    if (a1 != a2)
    {
      v102 = a2 - a1 - 8;
      v103 = a7;
      v104 = a1;
      if (v102 < 0x18)
      {
        goto LABEL_139;
      }

      v103 = a7;
      v104 = a1;
      if ((a7 - a1) <= 0x1F)
      {
        goto LABEL_139;
      }

      v105 = (v102 >> 3) + 1;
      v106 = 8 * (v105 & 0x3FFFFFFFFFFFFFFCLL);
      v103 = &a7[v106];
      v104 = &a1[v106];
      v107 = (a1 + 16);
      v108 = a7 + 16;
      v109 = v105 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v110 = *v107;
        *(v108 - 1) = *(v107 - 1);
        *v108 = v110;
        v107 += 2;
        v108 += 2;
        v109 -= 4;
      }

      while (v109);
      if (v105 != (v105 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_139:
        do
        {
          v111 = *v104;
          v104 += 8;
          *v103 = v111;
          v103 += 8;
        }

        while (v104 != a2);
      }

      while (a2 != a3)
      {
        if (*a2)
        {
          v112 = *a2 + 8;
        }

        else
        {
          v112 = 0;
        }

        if (*a7)
        {
          v113 = *a7 + 8;
        }

        else
        {
          v113 = 0;
        }

        v138 = v113;
        v139 = v112;
        v114 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a4, &v139);
        v115 = *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a4, &v138) >= *v114;
        v116 = !v115;
        if (v115)
        {
          v117 = a7;
        }

        else
        {
          v117 = a2;
        }

        a7 += 8 * v115;
        a2 += 8 * v116;
        *a1 = *v117;
        a1 += 8;
        if (a7 == v103)
        {
          return result;
        }
      }

      memmove(a1, a7, v103 - a7);
    }
  }

  else if (a2 != a3)
  {
    v81 = a3 - a2 - 8;
    v82 = a7;
    v83 = a2;
    if (v81 < 0x18)
    {
      goto LABEL_140;
    }

    v82 = a7;
    v83 = a2;
    if ((a7 - a2) <= 0x1F)
    {
      goto LABEL_140;
    }

    v84 = (v81 >> 3) + 1;
    v85 = 8 * (v84 & 0x3FFFFFFFFFFFFFFCLL);
    v82 = &a7[v85];
    v83 = &a2[v85];
    v86 = (a2 + 16);
    v87 = (a7 + 16);
    v88 = v84 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      result = v86[-1];
      v89 = *v86;
      v87[-1] = result;
      *v87 = v89;
      v86 += 2;
      v87 += 2;
      v88 -= 4;
    }

    while (v88);
    if (v84 != (v84 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_140:
      do
      {
        v90 = *v83;
        v83 += 8;
        *v82 = v90;
        v82 += 8;
      }

      while (v83 != a3);
    }

    v91 = a3;
    while (a2 != a1)
    {
      v92 = a2;
      v93 = *(a2 - 1);
      v94 = *(v82 - 1);
      if (v94)
      {
        v95 = v94 + 8;
      }

      else
      {
        v95 = 0;
      }

      if (v93)
      {
        v96 = v93 + 8;
      }

      else
      {
        v96 = 0;
      }

      v138 = v96;
      v139 = v95;
      v97 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a4, &v139);
      v98 = *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a4, &v138);
      v99 = *v97;
      v100 = v98 >= v99;
      if (v98 >= v99)
      {
        v101 = v82;
      }

      else
      {
        v101 = a2;
      }

      if (!v100)
      {
        v92 = a2 - 8;
      }

      a2 = v92;
      if (v100)
      {
        v82 -= 8;
      }

      *(a3 - 1) = *(v101 - 1);
      a3 -= 8;
      v91 -= 8;
      if (v82 == a7)
      {
        return result;
      }
    }

    if (v82 != a7)
    {
      v119 = v82 - a7 - 8;
      if (v119 < 0x48 || (v82 - v91) < 0x20)
      {
        v120 = v82;
        goto LABEL_128;
      }

      v123 = (a3 - 16);
      v124 = (v119 >> 3) + 1;
      v125 = 8 * (v124 & 0x3FFFFFFFFFFFFFFCLL);
      v120 = &v82[-v125];
      a3 -= v125;
      v126 = (v82 - 16);
      v127 = v124 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        result = *v126;
        v123[-1] = v126[-1];
        *v123 = result;
        v123 -= 2;
        v126 -= 2;
        v127 -= 4;
      }

      while (v127);
      if (v124 != (v124 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_128:
        v121 = a3 - 8;
        do
        {
          v122 = *(v120 - 1);
          v120 -= 8;
          *v121 = v122;
          v121 -= 8;
        }

        while (v120 != a7);
      }
    }
  }

  return result;
}

void mlir::detail::PDLByteCodeMutableState::~PDLByteCodeMutableState(mlir::detail::PDLByteCodeMutableState *this)
{
  v2 = *(this + 21);
  if (v2)
  {
    *(this + 22) = v2;
    operator delete(v2);
  }

  v3 = *(this + 18);
  if (v3)
  {
    *(this + 19) = v3;
    operator delete(v3);
  }

  v4 = *(this + 15);
  if (v4)
  {
    v5 = *(this + 16);
    v6 = *(this + 15);
    if (v5 != v4)
    {
      do
      {
        v8 = *(v5 - 16);
        v5 -= 16;
        v7 = v8;
        if (v8)
        {
          MEMORY[0x259C63150](v7, 0x20C8093837F09);
        }
      }

      while (v5 != v4);
      v6 = *(this + 15);
    }

    *(this + 16) = v4;
    operator delete(v6);
  }

  v9 = *(this + 12);
  if (v9)
  {
    *(this + 13) = v9;
    operator delete(v9);
  }

  v10 = *(this + 9);
  if (v10)
  {
    v11 = *(this + 10);
    v12 = *(this + 9);
    if (v11 != v10)
    {
      do
      {
        v14 = *(v11 - 16);
        v11 -= 16;
        v13 = v14;
        if (v14)
        {
          MEMORY[0x259C63150](v13, 0x20C8093837F09);
        }
      }

      while (v11 != v10);
      v12 = *(this + 9);
    }

    *(this + 10) = v10;
    operator delete(v12);
  }

  v15 = *(this + 6);
  if (v15)
  {
    *(this + 7) = v15;
    operator delete(v15);
  }

  v16 = *(this + 3);
  if (v16)
  {
    v17 = *(this + 4);
    v18 = *(this + 3);
    if (v17 != v16)
    {
      do
      {
        v20 = *(v17 - 16);
        v17 -= 16;
        v19 = v20;
        if (v20)
        {
          MEMORY[0x259C63150](v19, 0x20C8093837F09);
        }
      }

      while (v17 != v16);
      v18 = *(this + 3);
    }

    *(this + 4) = v16;
    operator delete(v18);
  }

  v21 = *this;
  if (*this)
  {
    *(this + 1) = v21;
    operator delete(v21);
  }
}

uint64_t mlir::MLIRContext::executeActionInternal<mlir::ApplyPatternAction,mlir::Pattern const&>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  {
    v16 = a3;
    v17 = a1;
    v14 = a6;
    v15 = a2;
    v12 = a4;
    v13 = a5;
    a4 = v12;
    a5 = v13;
    a6 = v14;
    a2 = v15;
    v9 = v8;
    a3 = v16;
    a1 = v17;
    if (v9)
    {
      v10 = llvm::getTypeName<mlir::ApplyPatternAction>();
      mlir::detail::TypeIDResolver<mlir::ApplyPatternAction,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v10, v11);
      a4 = v12;
      a5 = v13;
      a6 = v14;
      a2 = v15;
      a3 = v16;
      a1 = v17;
    }
  }

  v18[1] = v6[37];
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[0] = &unk_286867088;
  return mlir::MLIRContext::executeActionInternal(a1, a2, a3, v18);
}

llvm::raw_ostream *mlir::ApplyPatternAction::print(mlir::ApplyPatternAction *this, llvm::raw_ostream *a2)
{
  result = a2;
  v4 = *(a2 + 4);
  if (*(a2 + 3) == v4)
  {
    v6 = *(result + 4);
    if (*(result + 3) - v6 <= 0xCuLL)
    {
LABEL_3:
      result = llvm::raw_ostream::write(result, "apply-pattern", 0xDuLL);
      v7 = *(result + 4);
      if ((*(result + 3) - v7) > 9)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    *v4 = 96;
    v5 = *(a2 + 3);
    v6 = (*(a2 + 4) + 1);
    *(a2 + 4) = v6;
    if ((v5 - v6) <= 0xC)
    {
      goto LABEL_3;
    }
  }

  qmemcpy(v6, "apply-pattern", 13);
  v14 = *(result + 3);
  v7 = *(result + 4) + 13;
  *(result + 4) = v7;
  if ((v14 - v7) > 9)
  {
LABEL_4:
    *(v7 + 8) = 8250;
    *v7 = *" pattern: ";
    v8 = (*(result + 4) + 10);
    *(result + 4) = v8;
    v9 = *(this + 4);
    v10 = *(v9 + 56);
    v11 = *(v9 + 64);
    if (v11 <= *(result + 3) - v8)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  result = llvm::raw_ostream::write(result, " pattern: ", 0xAuLL);
  v15 = *(this + 4);
  v10 = *(v15 + 56);
  v11 = *(v15 + 64);
  v8 = *(result + 4);
  if (v11 <= *(result + 3) - v8)
  {
LABEL_5:
    if (v11)
    {
      v12 = result;
      v13 = v11;
      result = memcpy(v8, v10, v11);
      *(v12 + 4) += v13;
    }

    return result;
  }

LABEL_11:

  return llvm::raw_ostream::write(result, v10, v11);
}

const char *llvm::getTypeName<mlir::ApplyPatternAction>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ApplyPatternAction]";
  v6 = 74;
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

uint64_t llvm::function_ref<void ()(void)>::callback_fn<mlir::PatternApplicator::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &,llvm::function_ref<BOOL ()(mlir::Pattern const&)>,llvm::function_ref<void ()(mlir::Pattern const&)>,llvm::function_ref<llvm::LogicalResult ()(mlir::Pattern const&)>)::$_0>(uint64_t *a1)
{
  v2 = a1[5];
  v4 = *a1;
  v3 = a1[1];
  v5 = *(*v3 + 16);
  NodePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(*v3);
  *(v4 + 24) = v5;
  *(v4 + 32) = NodePtr;
  v7 = *a1[2];
  if (v7)
  {
    result = mlir::detail::PDLByteCode::rewrite(*a1[4], *a1, v7, *(v2 + 56));
    *a1[3] = result;
    if ((result & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_8:
    v11 = a1[7];
    if (*v11)
    {
      result = (*v11)(*(v11 + 8), *a1[6]);
      v12 = a1[3];
      if ((result & 1) == 0)
      {
        *v12 = 0;
        goto LABEL_13;
      }

      if ((*v12 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    *a1[8] = 1;
    return result;
  }

  v9 = *a1[6];
  if (v9)
  {
    v10 = v9 - 8;
  }

  else
  {
    v10 = 0;
  }

  result = (*(*v10 + 32))(v10, *a1[1], *a1);
  *a1[3] = result;
  if (result)
  {
    goto LABEL_8;
  }

LABEL_13:
  v13 = a1[9];
  v14 = *v13;
  if (*v13)
  {
    v15 = *a1[6];
    v16 = *(v13 + 8);

    return v14(v16, v15);
  }

  return result;
}

void mlir::detail::PDLByteCodePattern::create(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v31[16] = *MEMORY[0x277D85DE8];
  v24 = a1;
  Benefit = mlir::pdl_interp::RecordMatchOp::getBenefit(&v24);
  mlir::PatternBenefit::PatternBenefit(&v23, Benefit);
  Context = mlir::Attribute::getContext((v24 + 24));
  __dst = v31;
  v30 = 0x800000000;
  v22 = *(v24 + 16 * ((*(v24 + 44) >> 23) & 1) + 72);
  if (v22)
  {
    Value = mlir::ArrayAttr::getValue(&v22);
    v10 = mlir::ArrayAttr::getValue(&v22);
    v12 = (v10 + 8 * v11);
    __src = v28;
    v27 = 0x800000000;
    v13 = v12 - Value;
    if (((v12 - Value) >> 3) >= 9)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v15 = v28;
    if (v12 == Value)
    {
      v14 = (v13 >> 3);
      LODWORD(v27) = v13 >> 3;
      goto LABEL_19;
    }

    v17 = v28;
    do
    {
      v18 = *Value;
      Value += 8;
      v25 = v18;
      *v17 = mlir::StringAttr::getValue(&v25);
      v17[1] = v19;
      v17 += 2;
    }

    while (Value != v12);
    v15 = __src;
    v14 = v27 + (v13 >> 3);
    LODWORD(v27) = v27 + (v13 >> 3);
    if (__src == v28)
    {
LABEL_19:
      v20 = v30;
      if (v30 >= v14)
      {
        if (v14)
        {
          memmove(__dst, v15, 16 * v14);
        }

        goto LABEL_27;
      }

      if (HIDWORD(v30) < v14)
      {
        LODWORD(v30) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v30)
      {
        memmove(__dst, v15, 16 * v30);
        v21 = v27 - v20;
        if (v27 == v20)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v20 = 0;
        v21 = v27;
        if (!v27)
        {
LABEL_27:
          LODWORD(v30) = v14;
          LODWORD(v27) = 0;
          if (__src != v28)
          {
            free(__src);
          }

          goto LABEL_9;
        }
      }

      memcpy(__dst + 16 * v20, __src + 16 * v20, 16 * v21);
      goto LABEL_27;
    }

    if (__dst != v31)
    {
      free(__dst);
      v15 = __src;
      LODWORD(v14) = v27;
    }

    __dst = v15;
    v30 = __PAIR64__(HIDWORD(v27), v14);
    __src = v28;
    v27 = 0;
  }

LABEL_9:
  mlir::pdl_interp::RecordMatchOp::getRootKind(&v24, &__src);
  if (v28[0] == 1)
  {
    mlir::Pattern::Pattern(a4, __src, v27, v23, Context, __dst, v30);
    *(a4 + 88) = a3;
    *(a4 + 96) = a2;
    v16 = __dst;
    if (__dst == v31)
    {
      return;
    }
  }

  else
  {
    mlir::Pattern::Pattern(a4, v23, Context, __dst, v30);
    *(a4 + 88) = a3;
    *(a4 + 96) = a2;
    v16 = __dst;
    if (__dst == v31)
    {
      return;
    }
  }

  free(v16);
}

void *mlir::detail::PDLByteCodeMutableState::cleanupAfterMatchAndRewrite(void *this)
{
  v1 = this;
  v2 = this[9];
  for (i = this[10]; i != v2; i -= 16)
  {
    v4 = *(i - 16);
    this = v4;
    if (v4)
    {
      this = MEMORY[0x259C63150](this, 0x20C8093837F09);
    }
  }

  v1[10] = v2;
  v5 = v1[15];
  for (j = v1[16]; j != v5; j -= 16)
  {
    v7 = *(j - 16);
    this = v7;
    if (v7)
    {
      this = MEMORY[0x259C63150](this, 0x20C8093837F09);
    }
  }

  v1[16] = v5;
  return this;
}

void mlir::detail::PDLByteCode::PDLByteCode(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v215 = *MEMORY[0x277D85DE8];
  *a1 = a1 + 16;
  *(a1 + 8) = 0x600000000;
  if (*(a3 + 8))
  {
    llvm::SmallVectorImpl<std::unique_ptr<mlir::PDLPatternConfigSet>>::operator=(a1, a3);
  }

  *(a1 + 64) = 0u;
  v8 = a1 + 64;
  *(v8 + 16) = 0;
  *(v8 + 24) = v8 + 48;
  *(v8 + 32) = xmmword_257370CF0;
  *(v8 + 176) = v8 + 200;
  *(v8 + 184) = xmmword_257370CF0;
  *(v8 + 328) = v8 + 344;
  *(v8 + 336) = 0x2000000000;
  *(v8 + 3672) = 0u;
  *(v8 + 3688) = 0u;
  *(v8 + 3704) = 0u;
  *(v8 + 3714) = 0u;
  v164[0] = 0;
  v164[1] = 0;
  v165 = 0;
  v166 = 0;
  v167 = 0;
  v168 = 0;
  v169[0] = 0;
  v169[1] = 0;
  v169[2] = 0x1000000000;
  v170[0] = 0;
  v170[1] = 0;
  v170[2] = 0x1000000000;
  v170[3] = 0;
  v170[4] = 0;
  v170[6] = 0;
  v170[7] = 0;
  v170[5] = 0x1000000000;
  v171 = 0;
  v172 = 0;
  v176 = 0;
  Context = mlir::Attribute::getContext((a2 + 6));
  v174 = 0;
  v175 = 0;
  v177 = v8;
  v178 = v8 + 24;
  v179 = v8 + 176;
  v180 = v8 + 328;
  v181 = (v8 + 3720);
  v182 = v8 + 3722;
  v183 = (v8 + 3724);
  v184 = (v8 + 3726);
  v185 = v8 + 3728;
  v186 = a4;
  v10 = *a5;
  v11 = *(a5 + 8);
  if (v11)
  {
    v12 = *a5;
    v13 = a2;
    if (*v10)
    {
      v14 = *v10 + 1 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      do
      {
        v16 = v12[1];
        ++v12;
        v15 = v16;
        if (v16)
        {
          v17 = v15 + 1 == 0;
        }

        else
        {
          v17 = 1;
        }
      }

      while (v17);
    }

    v18 = &v10[v11];
    if (v12 == v18)
    {
LABEL_23:
      v26 = *a6;
      v27 = *(a6 + 8);
      if (v27)
      {
        v28 = *a6;
        if (*v26)
        {
          v29 = *v26 + 1 == 0;
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
              v32 = v30 + 1 == 0;
            }

            else
            {
              v32 = 1;
            }
          }

          while (v32);
        }

        v33 = &v26[v27];
        if (v28 == v33)
        {
LABEL_43:
          v41 = mlir::Attribute::getContext((v13 + 6));
          LOWORD(v207) = 261;
          *&v205 = "matcher";
          *(&v205 + 1) = 7;
          v43 = mlir::StringAttr::get(v41, &v205, v42);
          v44 = mlir::SymbolTable::lookupSymbolIn(v13, v43);
          if (v44)
          {
            if (*(*(v44 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::FuncOp,void>::id)
            {
              v45 = v44;
            }

            else
            {
              v45 = 0;
            }

            v158 = v45;
          }

          else
          {
            v158 = 0;
          }

          v46 = mlir::Attribute::getContext((v13 + 6));
          LOWORD(v207) = 261;
          *&v205 = "rewriters";
          *(&v205 + 1) = 9;
          v48 = mlir::StringAttr::get(v46, &v205, v47);
          v49 = mlir::SymbolTable::lookupSymbolIn(v13, v48);
          if (v49)
          {
            if (*(*(v49 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
            {
              v50 = v49;
            }

            else
            {
              v50 = 0;
            }
          }

          else
          {
            v50 = 0;
          }

          mlir::Region::getOps<mlir::pdl_interp::FuncOp>((((v50 + 64 + 16 * ((*(v50 + 44) >> 23) & 1) + ((*(v50 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v50 + 40)), &v205);
          v195 = v205;
          *v196 = v206;
          v197 = v207;
          v198 = v208;
          v51 = v209;
          v52 = v206;
          if (v206 == v209)
          {
LABEL_194:
            v193[1] = 0;
            v193[0] = 0;
            v194 = 0;
            v191[1] = 0;
            v191[0] = 0;
            v192 = 0;
            v190 = 0;
            v204 = 0;
            buffer = llvm::allocate_buffer(0x20uLL, 8uLL);
            *v203 = xmmword_257370D00;
            *buffer = v193;
            buffer[1] = &v190;
            buffer[2] = &v202;
            buffer[3] = v191;
            v202 = buffer;
            v199 = v201;
            v200 = 0;
            v201[0] = 0;
            v201[1] = 1;
            v154 = v158[10];
            v155 = &v158[4 * ((v158[11] >> 23) & 1) + 16] + ((v158[11] >> 21) & 0x7F8);
            v195 = 0uLL;
            v196[0] = 0;
            v196[1] = &v197 + 8;
            *&v197 = 0x400000000;
            v188[2] = 0;
            v188[1] = 0;
            v189 = 0;
            v156 = *(((v155 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * v154 + 8);
            if (v156)
            {
              v157 = v156 - 8;
            }

            else
            {
              v157 = 0;
            }

            v188[0] = **(v157 + 48);
            *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v164, v188) = 0;
            mlir::Liveness::Liveness(&v187, v158);
          }

          v161 = v209;
LABEL_57:
          ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v52);
          v54 = (*(&v198 + 1))(ValuePtr);
          LOWORD(v202) = 0;
          v187 = 0;
          LOWORD(v193[0]) = 0;
          v211 = v164;
          v212 = &v202;
          v213 = &v187;
          v214 = v193;
          v55 = v54 + 64;
          v56 = *(v54 + 44);
          v57 = (v56 >> 23) & 1;
          v58 = (v56 >> 21) & 0x7F8;
          v59 = 32 * *(v54 + 40);
          v60 = (((v54 + 64 + 16 * v57 + v58 + 7) & 0xFFFFFFFFFFFFFFF8) + v59);
          if (*v60 == v60)
          {
            goto LABEL_176;
          }

          v61 = v60[1];
          v62 = v61 ? v61 - 8 : 0;
          v63 = *(v62 + 48);
          v64 = *(v62 + 56);
          if (v64 == v63)
          {
            goto LABEL_176;
          }

          v65 = v54;
          v163 = v54 + 64;
          while (1)
          {
            v74 = *v63;
            v75 = v211;
            v76 = (*v212)++;
            v77 = *(v75 + 16);
            if (!v77)
            {
              break;
            }

            v78 = 0x9DDFEA08EB382D69 * ((8 * v74 - 0xAE502812AA7333) ^ HIDWORD(v74));
            v79 = 0x9DDFEA08EB382D69 * (HIDWORD(v74) ^ (v78 >> 47) ^ v78);
            v80 = (-348639895 * ((v79 >> 47) ^ v79)) & (v77 - 1);
            v81 = (*v75 + 16 * v80);
            v82 = *v81;
            if (v74 == *v81)
            {
              goto LABEL_82;
            }

            v83 = 0;
            v84 = 1;
            while (v82 != -4096)
            {
              if (v83)
              {
                v85 = 0;
              }

              else
              {
                v85 = v82 == -8192;
              }

              if (v85)
              {
                v83 = v81;
              }

              v86 = v80 + v84++;
              v80 = v86 & (v77 - 1);
              v81 = (*v75 + 16 * v80);
              v82 = *v81;
              if (v74 == *v81)
              {
                goto LABEL_82;
              }
            }

            v100 = (v83 ? v83 : v81);
            v101 = *(v75 + 8);
            if (4 * v101 + 4 >= 3 * v77)
            {
              break;
            }

            if (v77 + ~v101 - *(v75 + 12) <= v77 >> 3)
            {
              goto LABEL_111;
            }

            *(v75 + 8) = v101 + 1;
            if (*v100 != -4096)
            {
              goto LABEL_80;
            }

LABEL_81:
            *v100 = v74;
            *(v100 + 8) = v76;
LABEL_82:
            v87 = (*(v74 + 8) & 0xFFFFFFFFFFFFFFF8);
            if (*(*v87 + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
            {
              v87 = 0;
            }

            v210 = v87;
            if (!v87)
            {
              goto LABEL_65;
            }

            v88 = *(*mlir::pdl::RangeType::getElementType(&v210) + 136);
            if (v88 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
            {
              v66 = *(v75 + 24);
              v67 = (*v213)++;
              v68 = *(v75 + 40);
              if (!v68)
              {
                goto LABEL_138;
              }

              v69 = 0x9DDFEA08EB382D69 * ((8 * v74 - 0xAE502812AA7333) ^ HIDWORD(v74));
              v70 = 0x9DDFEA08EB382D69 * (HIDWORD(v74) ^ (v69 >> 47) ^ v69);
              v71 = (v68 - 1) & (-348639895 * ((v70 >> 47) ^ v70));
              v72 = (v66 + 16 * v71);
              v73 = *v72;
              if (v74 != *v72)
              {
                v112 = 0;
                v113 = 1;
                while (v73 != -4096)
                {
                  if (v112)
                  {
                    v114 = 0;
                  }

                  else
                  {
                    v114 = v73 == -8192;
                  }

                  if (v114)
                  {
                    v112 = v72;
                  }

                  v115 = v71 + v113++;
                  v71 = v115 & (v68 - 1);
                  v72 = (v66 + 16 * v71);
                  v73 = *v72;
                  if (v74 == *v72)
                  {
                    goto LABEL_65;
                  }
                }

                if (v112)
                {
                  v116 = v112;
                }

                else
                {
                  v116 = v72;
                }

                v117 = *(v75 + 32);
                if (4 * v117 + 4 < 3 * v68)
                {
                  if (v68 + ~v117 - *(v75 + 36) > v68 >> 3)
                  {
                    goto LABEL_103;
                  }
                }

                else
                {
LABEL_138:
                  v68 *= 2;
                }

                llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::grow(v75 + 24, v68);
                v118 = *(v75 + 40);
                if (!v118)
                {
                  goto LABEL_166;
                }

                v119 = *(v75 + 24);
                v120 = 0x9DDFEA08EB382D69 * ((8 * v74 - 0xAE502812AA7333) ^ HIDWORD(v74));
                v121 = 0x9DDFEA08EB382D69 * (HIDWORD(v74) ^ (v120 >> 47) ^ v120);
                LODWORD(v120) = -348639895 * ((v121 >> 47) ^ v121);
                v122 = v118 - 1;
                v123 = (v118 - 1) & v120;
                v116 = (v119 + 16 * v123);
                v124 = *v116;
                if (v74 != *v116)
                {
                  v125 = 0;
                  v126 = 1;
                  while (v124 != -4096)
                  {
                    if (v125)
                    {
                      v127 = 0;
                    }

                    else
                    {
                      v127 = v124 == -8192;
                    }

                    if (v127)
                    {
                      v125 = v116;
                    }

                    v128 = v123 + v126++;
                    v123 = v128 & v122;
                    v116 = (v119 + 16 * (v128 & v122));
                    v124 = *v116;
                    if (v74 == *v116)
                    {
                      goto LABEL_167;
                    }
                  }

LABEL_172:
                  if (v125)
                  {
                    v116 = v125;
                  }
                }

LABEL_167:
                ++*(v75 + 32);
                if (*v116 != -4096)
                {
LABEL_104:
                  --*(v75 + 36);
                }

LABEL_105:
                *v116 = v74;
                *(v116 + 4) = v67;
              }
            }

            else if (v88 == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
            {
              v89 = *(v75 + 24);
              v67 = (*v214)++;
              v90 = *(v75 + 40);
              if (!v90)
              {
                goto LABEL_154;
              }

              v91 = 0x9DDFEA08EB382D69 * ((8 * v74 - 0xAE502812AA7333) ^ HIDWORD(v74));
              v92 = 0x9DDFEA08EB382D69 * (HIDWORD(v74) ^ (v91 >> 47) ^ v91);
              v93 = (v90 - 1) & (-348639895 * ((v92 >> 47) ^ v92));
              v94 = (v89 + 16 * v93);
              v95 = *v94;
              if (v74 != *v94)
              {
                v96 = 0;
                v97 = 1;
                while (v95 != -4096)
                {
                  if (v96)
                  {
                    v98 = 0;
                  }

                  else
                  {
                    v98 = v95 == -8192;
                  }

                  if (v98)
                  {
                    v96 = v94;
                  }

                  v99 = v93 + v97++;
                  v93 = v99 & (v90 - 1);
                  v94 = (v89 + 16 * v93);
                  v95 = *v94;
                  if (v74 == *v94)
                  {
                    goto LABEL_65;
                  }
                }

                if (v96)
                {
                  v116 = v96;
                }

                else
                {
                  v116 = v94;
                }

                v117 = *(v75 + 32);
                if (4 * v117 + 4 >= 3 * v90)
                {
LABEL_154:
                  v90 *= 2;
LABEL_155:
                  llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::grow(v75 + 24, v90);
                  v129 = *(v75 + 40);
                  if (v129)
                  {
                    v130 = *(v75 + 24);
                    v131 = 0x9DDFEA08EB382D69 * ((8 * v74 - 0xAE502812AA7333) ^ HIDWORD(v74));
                    v132 = 0x9DDFEA08EB382D69 * (HIDWORD(v74) ^ (v131 >> 47) ^ v131);
                    LODWORD(v131) = -348639895 * ((v132 >> 47) ^ v132);
                    v133 = v129 - 1;
                    v134 = (v129 - 1) & v131;
                    v116 = (v130 + 16 * v134);
                    v135 = *v116;
                    if (v74 != *v116)
                    {
                      v125 = 0;
                      v136 = 1;
                      while (v135 != -4096)
                      {
                        if (v125)
                        {
                          v137 = 0;
                        }

                        else
                        {
                          v137 = v135 == -8192;
                        }

                        if (v137)
                        {
                          v125 = v116;
                        }

                        v138 = v134 + v136++;
                        v134 = v138 & v133;
                        v116 = (v130 + 16 * (v138 & v133));
                        v135 = *v116;
                        if (v74 == *v116)
                        {
                          goto LABEL_167;
                        }
                      }

                      goto LABEL_172;
                    }

                    goto LABEL_167;
                  }

LABEL_166:
                  v116 = 0;
                  goto LABEL_167;
                }

                if (v90 + ~v117 - *(v75 + 36) <= v90 >> 3)
                {
                  goto LABEL_155;
                }

LABEL_103:
                *(v75 + 32) = v117 + 1;
                if (*v116 != -4096)
                {
                  goto LABEL_104;
                }

                goto LABEL_105;
              }
            }

LABEL_65:
            if (++v63 == v64)
            {
              v139 = *(v65 + 44);
              v57 = (v139 >> 23) & 1;
              v58 = (v139 >> 21) & 0x7F8;
              v59 = 32 * *(v65 + 40);
              v51 = v161;
              v55 = v163;
LABEL_176:
              v140 = ((v55 + 16 * v57 + v58 + 7) & 0xFFFFFFFFFFFFFFF8) + v59;
              v210 = &v211;
              for (i = *(v140 + 8); i != v140; i = *(i + 8))
              {
                v142 = i - 8;
                if (!i)
                {
                  v142 = 0;
                }

                v143 = *(v142 + 40);
                v144 = v142 + 32;
                if (v143 != v142 + 32)
                {
                  do
                  {
                    v145 = *(v143 + 8);
                    v146 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v143);
                    v143 = v145;
                  }

                  while (v145 != v144);
                }
              }

              if (v202 <= *v181)
              {
                v147 = v187;
                v148 = v183;
                if (v187 <= *v183)
                {
                  goto LABEL_186;
                }
              }

              else
              {
                *v181 = v202;
                v147 = v187;
                v148 = v183;
                if (v187 <= *v183)
                {
LABEL_186:
                  v149 = v193[0];
                  v150 = v184;
                  if (LOWORD(v193[0]) <= *v184)
                  {
                    goto LABEL_188;
                  }

                  goto LABEL_187;
                }
              }

              *v148 = v147;
              v149 = v193[0];
              v150 = v184;
              if (LOWORD(v193[0]) > *v184)
              {
LABEL_187:
                *v150 = v149;
                goto LABEL_188;
              }

              do
              {
LABEL_188:
                mlir::Region::OpIterator::operator++(&v195);
                v52 = v196[0];
                if (v196[0] == *(&v197 + 1))
                {
                  goto LABEL_56;
                }

                v151 = v198;
                v152 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v196[0]);
              }

              while (!v151(v152));
              v52 = v196[0];
LABEL_56:
              if (v52 == v51)
              {
                goto LABEL_194;
              }

              goto LABEL_57;
            }
          }

          v77 *= 2;
LABEL_111:
          llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::grow(v75, v77);
          v102 = *(v75 + 16);
          if (v102)
          {
            v103 = 0x9DDFEA08EB382D69 * ((8 * v74 - 0xAE502812AA7333) ^ HIDWORD(v74));
            v104 = 0x9DDFEA08EB382D69 * (HIDWORD(v74) ^ (v103 >> 47) ^ v103);
            LODWORD(v103) = -348639895 * ((v104 >> 47) ^ v104);
            v105 = v102 - 1;
            v106 = (v102 - 1) & v103;
            v100 = *v75 + 16 * v106;
            v107 = *v100;
            if (v74 != *v100)
            {
              v108 = 0;
              v109 = 1;
              while (v107 != -4096)
              {
                if (v108)
                {
                  v110 = 0;
                }

                else
                {
                  v110 = v107 == -8192;
                }

                if (v110)
                {
                  v108 = v100;
                }

                v111 = v106 + v109++;
                v106 = v111 & v105;
                v100 = *v75 + 16 * (v111 & v105);
                v107 = *v100;
                if (v74 == *v100)
                {
                  goto LABEL_123;
                }
              }

              if (v108)
              {
                v100 = v108;
              }
            }
          }

          else
          {
            v100 = 0;
          }

LABEL_123:
          ++*(v75 + 8);
          if (*v100 == -4096)
          {
            goto LABEL_81;
          }

LABEL_80:
          --*(v75 + 12);
          goto LABEL_81;
        }
      }

      else
      {
        v28 = *a6;
        v33 = &v26[v27];
        if (v26 == v33)
        {
          goto LABEL_43;
        }
      }

      v34 = 0;
      v35 = *v28;
      do
      {
        v37 = *v35;
        v36 = (v35 + 5);
        *&v205 = v34;
        v38 = llvm::StringMapImpl::hash(v36, v37, v9);
        llvm::StringMap<unsigned short,llvm::MallocAllocator>::try_emplace_with_hash<unsigned long>(v169, v36, v37, v38, &v205);
        do
        {
          v39 = v28[1];
          ++v28;
          v35 = v39;
          if (v39)
          {
            v40 = v35 + 1 == 0;
          }

          else
          {
            v40 = 1;
          }
        }

        while (v40);
        ++v34;
      }

      while (v28 != v33);
      goto LABEL_43;
    }
  }

  else
  {
    v12 = *a5;
    v13 = a2;
    v18 = &v10[v11];
    if (v10 == v18)
    {
      goto LABEL_23;
    }
  }

  v19 = 0;
  v20 = *v12;
  do
  {
    v22 = *v20;
    v21 = (v20 + 5);
    *&v205 = v19;
    v23 = llvm::StringMapImpl::hash(v21, v22, v9);
    llvm::StringMap<unsigned short,llvm::MallocAllocator>::try_emplace_with_hash<unsigned long>(v170, v21, v22, v23, &v205);
    do
    {
      v24 = v12[1];
      ++v12;
      v20 = v24;
      if (v24)
      {
        v25 = v20 + 1 == 0;
      }

      else
      {
        v25 = 1;
      }
    }

    while (v25);
    ++v19;
  }

  while (v12 != v18);
  goto LABEL_23;
}

void mlir::detail::PDLByteCode::initializeMutableState(mlir::detail::PDLByteCode *this, std::vector<unsigned int> *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = *(this + 1892);
  *&__x = 0;
  v5 = (a2->__end_ - a2->__begin_) >> 3;
  if (v4 <= v5)
  {
    if (v4 < v5)
    {
      a2->__end_ = &a2->__begin_[2 * v4];
    }
  }

  else
  {
    std::vector<void const*>::__append(a2, v4 - v5, &__x);
  }

  begin = a2[1].__begin_;
  end = a2[1].__end_;
  v8 = *(this + 1893);
  v9 = (end - begin) >> 4;
  if (v8 <= v9)
  {
    if (v8 < v9)
    {
      v10 = &begin[4 * v8];
      while (end != v10)
      {
        v12 = *(end - 2);
        end -= 4;
        v11 = v12;
        if (v12)
        {
          MEMORY[0x259C63150](v11, 0x20C8093837F09);
        }
      }

      a2[1].__end_ = v10;
    }
  }

  else
  {
    std::vector<llvm::OwningArrayRef<mlir::Operation *>>::__append(&a2[1], v8 - v9);
  }

  v13 = *(this + 1894);
  mlir::TypeRange::TypeRange(&__x, 0, 0);
  v14 = a2[2].__begin_;
  v15 = (a2[2].__end_ - v14) >> 4;
  if (v13 <= v15)
  {
    if (v13 < v15)
    {
      a2[2].__end_ = &v14[4 * v13];
    }
  }

  else
  {
    std::vector<mlir::TypeRange>::__append(&a2[2], v13 - v15, &__x);
  }

  v16 = *(this + 1895);
  mlir::ValueRange::ValueRange(&__x, 0, 0);
  v17 = a2[4].__begin_;
  v18 = (a2[4].__end_ - v17) >> 4;
  if (v16 <= v18)
  {
    if (v16 < v18)
    {
      a2[4].__end_ = &v17[4 * v16];
    }
  }

  else
  {
    std::vector<mlir::TypeRange>::__append(&a2[4], v16 - v18, &__x);
  }

  v19 = a2[6].__begin_;
  v20 = a2[6].__end_;
  v21 = *(this + 1896);
  LODWORD(__x) = 0;
  v22 = v20 - v19;
  if (v21 <= v22)
  {
    if (v21 < v22)
    {
      a2[6].__end_ = &v19[v21];
    }
  }

  else
  {
    std::vector<unsigned int>::__append(a2 + 6, v21 - v22, &__x);
  }

  v23 = a2 + 7;
  if (*(this + 100) > ((a2[7].__end_cap_.__value_ - a2[7].__begin_) >> 1))
  {
    operator new();
  }

  v24 = *(this + 100);
  if (v24)
  {
    v25 = *(this + 49);
    v26 = 104 * v24;
    v27 = (v25 + 12);
    do
    {
      v28 = *v27;
      v27 += 52;
      LOWORD(__x) = v28;
      std::vector<mlir::PatternBenefit>::push_back[abi:nn200100](v23, &__x);
      v26 -= 104;
    }

    while (v26);
  }
}

void std::vector<mlir::PatternBenefit>::push_back[abi:nn200100](uint64_t a1, _WORD *a2)
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
  v8 = v7 >> 1;
  if (v7 >> 1 <= -2)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v9 = v3 - v6;
  if (v9 <= v8 + 1)
  {
    v10 = v8 + 1;
  }

  else
  {
    v10 = v9;
  }

  if (v9 >= 0x7FFFFFFFFFFFFFFELL)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v10;
  }

  if (v11)
  {
    if ((v11 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  *(2 * v8) = *a2;
  v5 = 2 * v8 + 2;
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

void mlir::detail::PDLByteCode::match(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42[30] = *MEMORY[0x277D85DE8];
  **a5 = a2;
  v6 = *a5;
  v7 = (*(a5 + 8) - *a5) >> 3;
  v8 = *(a5 + 24);
  v9 = (*(a5 + 32) - v8) >> 4;
  v10 = *(a5 + 48);
  v11 = (*(a5 + 56) - v10) >> 4;
  v12 = a5 + 72;
  v13 = *(a5 + 96);
  v14 = (*(a5 + 104) - v13) >> 4;
  v15 = a5 + 120;
  v16 = *(a5 + 144);
  v17 = (*(a5 + 152) - v16) >> 2;
  v18 = *(a1 + 64);
  v19 = (*(a1 + 72) - v18) >> 3;
  v20 = *(a1 + 88);
  v21 = *(a1 + 96);
  v22 = *(a5 + 168);
  v23 = (*(a5 + 176) - v22) >> 1;
  v24 = *(a1 + 392);
  v25 = *(a1 + 400);
  v26 = *(a1 + 3736);
  v27 = (*(a1 + 3744) - v26) >> 5;
  v28 = *(a1 + 3760);
  v29 = (*(a1 + 3768) - v28) >> 5;
  v39 = v20;
  v40 = v42;
  v41 = 0x600000000;
  v42[6] = v6;
  v42[7] = v7;
  v42[8] = v8;
  v42[9] = v9;
  v42[10] = v10;
  v42[11] = v11;
  v42[12] = v12;
  v42[13] = v13;
  v42[14] = v14;
  v42[15] = v15;
  v42[16] = v16;
  v42[17] = v17;
  v42[18] = v18;
  v42[19] = v19;
  v42[20] = v20;
  v42[21] = v21;
  v42[22] = v22;
  v42[23] = v23;
  v42[24] = v24;
  v42[25] = v25;
  v42[26] = v26;
  v42[27] = v27;
  v42[28] = v28;
  v42[29] = v29;
  v30 = *a4;
  v31 = *(a4 + 8);
  if (v31)
  {
    v32 = MEMORY[0x277D826F0];
    v33 = v31;
    while (1)
    {
      v34 = operator new(120 * v33, v32);
      if (v34)
      {
        break;
      }

      v35 = v33 >> 1;
      v36 = v33 > 1;
      v33 >>= 1;
      if (!v36)
      {
        goto LABEL_7;
      }
    }

    v38 = v34;
    std::__stable_sort<std::_ClassicAlgPolicy,mlir::detail::PDLByteCode::match(mlir::Operation *,mlir::PatternRewriter &,llvm::SmallVectorImpl<mlir::detail::PDLByteCode::MatchResult> &,mlir::detail::PDLByteCodeMutableState &)::$_0 &,mlir::detail::PDLByteCode::MatchResult*>(v30, (v30 + 120 * v31), v31, v34, v33);
    operator delete(v38);
    v37 = v40;
    if (v40 == v42)
    {
      return;
    }

LABEL_8:
    free(v37);
    return;
  }

  v35 = 0;
LABEL_7:
  std::__stable_sort<std::_ClassicAlgPolicy,mlir::detail::PDLByteCode::match(mlir::Operation *,mlir::PatternRewriter &,llvm::SmallVectorImpl<mlir::detail::PDLByteCode::MatchResult> &,mlir::detail::PDLByteCodeMutableState &)::$_0 &,mlir::detail::PDLByteCode::MatchResult*>(v30, (v30 + 120 * v31), v31, 0, v35);
  v37 = v40;
  if (v40 != v42)
  {
    goto LABEL_8;
  }
}

uint64_t anonymous namespace::ByteCodeExecutor::execute(unsigned __int16 **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v364 = *MEMORY[0x277D85DE8];
  while (1)
  {
    v8 = *a1;
    v10 = *a1 + 1;
    v9 = **a1;
    *a1 = v10;
    result = 1;
    switch(v9)
    {
      case 0:
        *a1 = v8 + 2;
        v116 = v8[1];
        v360[0] = v361;
        v360[1] = 0x1000000000;
        v117 = *a1;
        v118 = **a1;
        *a1 += 2;
        v119 = v117[1];
        v120 = a1[29];
        __src[0] = &v344;
        __src[1] = 0x300000000;
        v346 = v348;
        v347 = 0x300000000;
        v350 = v352;
        v351 = 0x300000000;
        v353 = v355;
        v354 = 0x300000000;
        v357 = v359;
        v358 = 0x300000000;
        if (v119 >= 4)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v362 = v360[0];
        v363 = LODWORD(v360[1]);
        v304 = *&v120[16 * v116 + 12];
        if (!v304)
        {
          goto LABEL_415;
        }

        LOBYTE(v4) = (*(*v304 + 48))(v304, a2, __src, &v362);
        LOBYTE(v362) = v4;
        v305 = *a1;
        *a1 += 2 * (v118 == (v4 & 1));
        *a1 = &a1[23][*&v305[2 * (v118 == (v4 & 1))]];
        mlir::PDLResultList::~PDLResultList(__src);
        v54 = v360[0];
        if (v360[0] != v361)
        {
          goto LABEL_372;
        }

        continue;
      case 1:
        *a1 = v8 + 2;
        v133 = v8[1];
        v134 = a1[31];
        v360[0] = v361;
        v360[1] = 0x1000000000;
        v135 = *(*a1)++;
        __src[0] = &v344;
        __src[1] = 0x300000000;
        v346 = v348;
        v347 = 0x300000000;
        v350 = v352;
        v351 = 0x300000000;
        v353 = v355;
        v354 = 0x300000000;
        v357 = v359;
        v358 = 0x300000000;
        if (v135 >= 4)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v362 = v360[0];
        v363 = LODWORD(v360[1]);
        v306 = *&v134[16 * v133 + 12];
        if (!v306)
        {
LABEL_415:
          std::__throw_bad_function_call[abi:nn200100]();
        }

        LOBYTE(v4) = (*(*v306 + 48))(v306, a2, __src, &v362);
        LOBYTE(v362) = v4;
        mlir::PDLResultList::~PDLResultList(__src);
        if (v360[0] != v361)
        {
          free(v360[0]);
        }

        if (v4)
        {
          continue;
        }

        return 0;
      case 2:
        v87 = v8[2];
        v85 = v8 + 2;
        v86 = v87;
        *a1 = v85;
        v88 = *(v85 - 1);
        v89 = a1[10];
        v90 = 21;
        if (v89 <= v88)
        {
          v91 = 21;
        }

        else
        {
          v91 = 9;
        }

        if (v89 <= v88)
        {
          v92 = a1[10];
        }

        else
        {
          v92 = 0;
        }

        v93 = *&a1[v91][4 * (v88 - v92)];
        v94 = v85 + 1;
        *a1 = v85 + 1;
        if (v89 > v86)
        {
          v90 = 9;
          v89 = 0;
        }

        v95 = v93 != *&a1[v90][4 * (v86 - v89)];
        *a1 = &v94[2 * v95];
        v7 = *&v94[2 * v95];
        goto LABEL_4;
      case 3:
        v98 = v8[3];
        v96 = v8 + 3;
        v97 = v98;
        v99 = *(v96 - 2);
        *a1 = v96;
        v100 = *(v96 - 1);
        v101 = a1[10];
        v102 = 21;
        if (v101 <= v100)
        {
          v103 = 21;
        }

        else
        {
          v103 = 9;
        }

        if (v101 <= v100)
        {
          v104 = a1[10];
        }

        else
        {
          v104 = 0;
        }

        v105 = *&a1[v103][4 * (v100 - v104)];
        v6 = v96 + 1;
        *a1 = v96 + 1;
        if (v101 > v97)
        {
          v102 = 9;
          v101 = 0;
        }

        v106 = *&a1[v102][4 * (v97 - v101)];
        if (v99 != 3)
        {
          v4 = v105[1];
          if (v4 != v106[1])
          {
            goto LABEL_386;
          }

          v298 = *v106;
          __src[0] = *v105;
          __src[1] = 0;
          v360[0] = v298;
          v360[1] = 0;
          if (!v4)
          {
            v301 = 0;
            goto LABEL_278;
          }

          v299 = 0;
          do
          {
            v300 = mlir::ValueRange::dereference_iterator(__src, v299);
            if (v300 != mlir::ValueRange::dereference_iterator(v360, v360[1]))
            {
              goto LABEL_386;
            }

            v299 = __src[1] + 1;
            __src[1] = v299;
            v301 = ++v360[1];
            v302 = v299 == v4 || v301 == v4;
          }

          while (!v302);
          if (v299 == v4)
          {
LABEL_278:
            v303 = 2 * (v301 != v4);
          }

          else
          {
LABEL_386:
            v303 = 2;
          }

          v6 = &(*a1)[v303];
          *a1 = v6;
          goto LABEL_3;
        }

        v107 = v105[1];
        if (v107 != v106[1])
        {
          v6 = v96 + 3;
          *a1 = v96 + 3;
          goto LABEL_3;
        }

        if (!v107)
        {
          *a1 = v6;
          goto LABEL_3;
        }

        v108 = 0;
        v4 = *v105;
        v109 = *v106;
        while (1)
        {
          v110 = mlir::TypeRange::dereference_iterator(v4, v108);
          if (v110 != mlir::TypeRange::dereference_iterator(v109, v108))
          {
            break;
          }

          if (v107 == ++v108)
          {
            v111 = 0;
            goto LABEL_389;
          }
        }

        v111 = 2;
LABEL_389:
        v6 = &(*a1)[v111];
        *a1 = v6;
LABEL_3:
        v7 = *v6;
LABEL_4:
        *a1 = &a1[23][v7];
        break;
      case 4:
        goto LABEL_251;
      case 5:
        *a1 = v8 + 2;
        v128 = *&a1[9][4 * v8[1]];
        v129 = *(v8 + 1);
        *a1 = v8 + 5;
        v130 = *(v128 + 44);
        if (v8[4])
        {
          if ((v130 & 0x800000) != 0)
          {
            v131 = *(v128 + 68);
          }

          else
          {
            v131 = 0;
          }

          v132 = v131 < v129;
        }

        else
        {
          if ((v130 & 0x800000) != 0)
          {
            v309 = *(v128 + 68);
          }

          else
          {
            v309 = 0;
          }

          v132 = v309 != v129;
        }

        v310 = &v8[2 * v132 + 5];
        *a1 = v310;
        v7 = *v310;
        goto LABEL_4;
      case 6:
        v138 = v8[2];
        v136 = v8 + 2;
        v137 = v138;
        *a1 = v136;
        v139 = a1[10];
        v140 = *&a1[9][4 * *(v136 - 1)];
        v141 = v136 + 1;
        *a1 = v136 + 1;
        v142 = 21;
        if (v139 > v138)
        {
          v142 = 9;
          v139 = 0;
        }

        v143 = *(v140 + 48) != *&a1[v142][4 * (v137 - v139)];
        *a1 = &v141[2 * v143];
        v7 = *&v141[2 * v143];
        goto LABEL_4;
      case 7:
        *a1 = v8 + 2;
        v121 = *(v8 + 1);
        v122 = *(*&a1[9][4 * v8[1]] + 36);
        v302 = v122 == v121;
        v123 = v122 < v121;
        v124 = !v302;
        v125 = 4 * v124;
        v126 = 4 * v123;
        if (!v8[4])
        {
          v126 = v125;
        }

        v127 = (v8 + v126 + 10);
        *a1 = v127;
        v7 = *v127;
        goto LABEL_4;
      case 8:
        v160 = v8[2];
        v158 = v8 + 2;
        v159 = v160;
        *a1 = v158;
        v161 = a1[10];
        v162 = *&a1[9][4 * *(v158 - 1)];
        *a1 = v158 + 1;
        v163 = 21;
        if (v161 <= v160)
        {
          v164 = v161;
        }

        else
        {
          v163 = 9;
          v164 = 0;
        }

        v360[0] = *&a1[v163][4 * (v159 - v164)];
        Value = mlir::ArrayAttr::getValue(v360);
        v166 = mlir::ArrayAttr::getValue(v360);
        v168 = (v166 + 8 * v167);
        v169 = v162[1];
        if (v169 != v168 - Value)
        {
          goto LABEL_382;
        }

        v4 = 0;
        if (!v169)
        {
          goto LABEL_380;
        }

        v170 = *v162;
        while (Value != v168)
        {
          v171 = mlir::TypeRange::dereference_iterator(v170, v4);
          __src[0] = *Value;
          if (v171 != mlir::TypeAttr::getValue(__src))
          {
            goto LABEL_382;
          }

          ++v4;
          ++Value;
          if (v169 == v4)
          {
            goto LABEL_381;
          }
        }

        Value = v168;
LABEL_380:
        if (v4 == v169)
        {
LABEL_381:
          v335 = 2 * (Value != v168);
          goto LABEL_383;
        }

LABEL_382:
        v335 = 2;
LABEL_383:
        v336 = &(*a1)[v335];
        *a1 = v336;
        v7 = *v336;
        goto LABEL_4;
      case 9:
        *a1 = v8 + 2;
        ++*&a1[19][2 * v8[1]];
        v62 = *(a1 + 4);
        *a1 = *&a1[1][4 * v62 - 4];
        *(a1 + 4) = v62 - 1;
        continue;
      case 10:
        v55 = v8[1];
        v56 = v8[2];
        *a1 = v8 + 4;
        v57 = v8[3];
        v58 = a1[10];
        v59 = 21;
        if (v58 > v57)
        {
          v59 = 9;
          v58 = 0;
        }

        v362 = *&a1[v59][4 * (v57 - v58)];
        v4 = mlir::ArrayAttr::getValue(&v362);
        v60 = mlir::ArrayAttr::getValue(&v362);
        if (v60 + 8 * v61 != v4)
        {
          operator new[]();
        }

        mlir::TypeRange::TypeRange(__src, 0, 0);
        *&a1[13][8 * v56] = *__src;
        *&a1[9][4 * v55] = &a1[13][8 * v56];
        continue;
      case 11:
        v184 = v8[1];
        *a1 = v8 + 3;
        v185 = v8[2];
        v186 = a1[10];
        v187 = 21;
        if (v186 > v185)
        {
          v187 = 9;
          v186 = 0;
        }

        mlir::OperationState::OperationState(__src, a4, *&a1[v187][4 * (v185 - v186)]);
        v188 = *a1 + 1;
        v189 = **a1;
        *a1 = v188;
        v4 = __src;
        if (v189)
        {
          do
          {
            v192 = *a1;
            v193 = (*a1)[1];
            ++*a1;
            v196 = *v192;
            v194 = v192 + 2;
            v195 = v196;
            v197 = a1[10];
            v198 = v197 > v196;
            if (v197 <= v196)
            {
              v199 = 21;
            }

            else
            {
              v199 = 9;
            }

            if (v198)
            {
              v200 = 0;
            }

            else
            {
              v200 = a1[10];
            }

            v201 = *&a1[v199][4 * (v195 - v200)];
            *a1 = v194;
            if (v197 <= v193)
            {
              v202 = 21;
            }

            else
            {
              v202 = 9;
            }

            if (v197 <= v193)
            {
              v203 = v197;
            }

            else
            {
              v203 = 0;
            }

            v204 = *&a1[v202][4 * (v193 - v203)];
            if (v204)
            {
              mlir::NamedAttribute::NamedAttribute(v360, v201, v204);
              mlir::NamedAttrList::push_back(v349, v360[0], v360[1]);
            }

            --v189;
          }

          while (v189);
          v190 = *(*a1)++;
          if (!v190)
          {
            goto LABEL_247;
          }
        }

        else
        {
          v191 = *v188;
          v190 = v191;
          *a1 = v188 + 1;
          if (!v191)
          {
            goto LABEL_247;
          }
        }

        if (v190 == 0xFFFF)
        {
          v278 = __src[1];
          {
            v279 = v278[4];
            v280 = *(v278 + 10);
            if (v280)
            {
              do
              {
LABEL_242:
                v281 = v280 >> 1;
                v282 = &v279[2 * (v280 >> 1)];
                v284 = *v282;
                v283 = v282 + 2;
                v280 += ~(v280 >> 1);
                if (v284 < mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id)
                {
                  v279 = v283;
                }

                else
                {
                  v280 = v281;
                }
              }

              while (v280);
            }
          }

          else
          {
            mlir::OpInterface<mlir::InferTypeOpInterface,mlir::detail::InferTypeOpInterfaceInterfaceTraits>::getInterfaceFor();
            v279 = v278[4];
            v280 = *(v278 + 10);
            if (v280)
            {
              goto LABEL_242;
            }
          }

          v285 = *v279[1];
          Context = mlir::Attribute::getContext(__src);
          v4 = __src[0];
          mlir::ValueRange::ValueRange(v360, v344, v345);
          v287 = mlir::Attribute::getContext(__src);
          Dictionary = mlir::NamedAttrList::getDictionary(v349, v287);
          v289 = v357;
          mlir::RegionRange::RegionRange(&v362, v355[2], v356);
          if ((v285(Context, v4, 1, v360[0], v360[1], Dictionary, v289) & 1) == 0)
          {
            goto LABEL_248;
          }

          goto LABEL_247;
        }

        v311 = 0;
        do
        {
          while (1)
          {
            v312 = *a1;
            v313 = **a1;
            *a1 += 2;
            v314 = v312[1];
            if (v313 != 2)
            {
              break;
            }

            v315 = a1[10];
            v316 = 21;
            if (v315 > v314)
            {
              v316 = 9;
              v315 = 0;
            }

            if (v347 >= HIDWORD(v347))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            *&v346[8 * v347] = *&a1[v316][4 * (v314 - v315)];
            LODWORD(v347) = v347 + 1;
            if (++v311 == v190)
            {
              goto LABEL_247;
            }
          }

          v317 = *&a1[9][4 * v314];
          v318 = *v317;
          v319 = v317[1];
          v320 = v347;
          if (v319 + v347 > HIDWORD(v347))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          if (v319)
          {
            v4 = 0;
            v321 = &v346[8 * v347];
            do
            {
              *&v321[8 * v4] = mlir::TypeRange::dereference_iterator(v318, v4);
              ++v4;
            }

            while (v319 != v4);
            v320 = v347;
          }

          LODWORD(v347) = v320 + v319;
          ++v311;
        }

        while (v311 != v190);
LABEL_247:
        *&a1[9][4 * v184] = mlir::OpBuilder::create((a2 + 8), __src);
LABEL_248:
        mlir::OperationState::~OperationState(__src);
        continue;
      case 12:
        v144 = v8[1];
        v145 = v8[2];
        __src[0] = &v344;
        __src[1] = 0x600000000;
        *a1 = v8 + 4;
        v146 = v8[3];
        if (!v8[3])
        {
          goto LABEL_249;
        }

        v147 = 0;
        v148 = 0;
        do
        {
          while (1)
          {
            v149 = *a1;
            v150 = **a1;
            *a1 += 2;
            v151 = v149[1];
            if (v150 != 2)
            {
              break;
            }

            v152 = a1[10];
            v153 = 21;
            if (v152 > v151)
            {
              v153 = 9;
              v152 = 0;
            }

            if (v147 >= HIDWORD(__src[1]))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            *(__src[0] + v147) = *&a1[v153][4 * (v151 - v152)];
            v147 = ++LODWORD(__src[1]);
            if (++v148 == v146)
            {
              goto LABEL_236;
            }
          }

          v154 = *&a1[9][4 * v151];
          v155 = *v154;
          v156 = v154[1];
          if (v156 + v147 > HIDWORD(__src[1]))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          if (v156)
          {
            v4 = 0;
            v157 = __src[0] + 8 * v147;
            do
            {
              *&v157[8 * v4] = mlir::TypeRange::dereference_iterator(v155, v4);
              ++v4;
            }

            while (v156 != v4);
            v147 = __src[1];
          }

          v147 += v156;
          LODWORD(__src[1]) = v147;
          ++v148;
        }

        while (v148 != v146);
LABEL_236:
        if (v147)
        {
          operator new[]();
        }

LABEL_249:
        mlir::TypeRange::TypeRange(v360, 0, 0);
        *&a1[13][8 * v145] = *v360;
        *&a1[9][4 * v144] = &a1[13][8 * v145];
        v54 = __src[0];
        if (__src[0] != &v344)
        {
LABEL_372:
          free(v54);
        }

        continue;
      case 13:
        v52 = v8[1];
        *a1 = v8 + 3;
        v53 = v8[2];
        __src[0] = &v344;
        __src[1] = 0x600000000;
        if (LODWORD(__src[1]))
        {
          operator new[]();
        }

        mlir::ValueRange::ValueRange(v360, 0, 0);
        *&a1[16][8 * v53] = *v360;
        *&a1[9][4 * v52] = &a1[16][8 * v53];
        v54 = __src[0];
        if (__src[0] != &v344)
        {
          goto LABEL_372;
        }

        continue;
      case 14:
        *a1 = v8 + 2;
        (*(*a2 + 16))(a2, *&a1[9][4 * v8[1]]);
        continue;
      case 15:
        *a1 = v8 + 2;
        v205 = v8[1];
        v206 = a1[10];
        v207 = 21;
        if (v206 > v205)
        {
          v207 = 9;
          v206 = 0;
        }

        v208 = *&a1[v207][4 * (v205 - v206)];
        v209 = *(v8 + 1);
        *a1 = v8 + 5;
        v210 = v8[4];
        if (v208)
        {
          if (v208[1] <= v209)
          {
            v211 = 0;
          }

          else
          {
            v211 = *(*v208 + 8 * v209);
          }

          *&a1[9][4 * v210] = v211;
        }

        else
        {
          *&a1[9][4 * v210] = 0;
        }

        continue;
      case 16:
        *a1 = v8 + 2;
        v212 = a1[9];
        v213 = *&v212[4 * v8[1]];
        v214 = *(v8 + 1);
        *a1 = v8 + 5;
        v215 = v8[4];
        if (v213)
        {
          if (v213[1] <= v214)
          {
            *&v212[4 * v215] = 0;
          }

          else
          {
            *&a1[9][4 * v215] = mlir::TypeRange::dereference_iterator(*v213, v214);
          }
        }

        else
        {
          *&v212[4 * v215] = 0;
        }

        continue;
      case 17:
        *a1 = v8 + 2;
        v112 = a1[9];
        v113 = *&v112[4 * v8[1]];
        v114 = *(v8 + 1);
        *a1 = v8 + 5;
        v115 = v8[4];
        if (!v113)
        {
          goto LABEL_98;
        }

        if (v113[1] <= v114)
        {
          *&v112[4 * v115] = 0;
        }

        else
        {
          v113 = mlir::ValueRange::dereference_iterator(v113, v114);
          v112 = a1[9];
LABEL_98:
          *&v112[4 * v115] = v113;
        }

        continue;
      case 18:
        return result;
      case 19:
        v36 = v8[1];
        v37 = v8[2];
        v10 = v8 + 5;
        *a1 = v8 + 5;
        v38 = v8[4];
        v39 = a1[19];
        v40 = &a1[11][8 * v36];
        v41 = *&v39[2 * v38];
        if (*(v40 + 1) > v41)
        {
          *&a1[9][4 * v37] = *(*v40 + 8 * v41);
          v42 = *(a1 + 4);
          if (v42 >= *(a1 + 5))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *&a1[1][4 * v42] = v8;
          ++*(a1 + 4);
          *a1 += 2;
          continue;
        }

        *&v39[2 * v38] = 0;
LABEL_251:
        v7 = *v10;
        goto LABEL_4;
      case 20:
        v174 = v8[3];
        v172 = v8 + 3;
        v173 = v174;
        v4 = *(v172 - 2);
        *a1 = v172;
        v175 = a1[10];
        v176 = *&a1[9][4 * *(v172 - 1)];
        *a1 = v172 + 1;
        v177 = 21;
        if (v175 <= v174)
        {
          v178 = v175;
        }

        else
        {
          v177 = 9;
          v178 = 0;
        }

        v179 = *&a1[v177][4 * (v173 - v178)];
        __src[0] = v179;
        if (!*(v176 + 47))
        {
          goto LABEL_148;
        }

        v180 = mlir::StringAttr::getValue(__src);
        InherentAttr = mlir::Operation::getInherentAttr(v176, v180, v181);
        if ((v183 & 1) == 0)
        {
          v179 = __src[0];
LABEL_148:
          InherentAttr = mlir::DictionaryAttr::get(v176 + 56, v179);
        }

        *&a1[9][4 * v4] = InherentAttr;
        continue;
      case 21:
        v70 = v8[1];
        *a1 = v8 + 3;
        v71 = v8[2];
        v72 = a1[10];
        v73 = 21;
        if (v72 > v71)
        {
          v73 = 9;
          v72 = 0;
        }

        Type = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*&a1[v73][4 * (v71 - v72)]);
        __src[0] = Type;
        __src[1] = v75;
        if (Type)
        {
          Type = mlir::TypedAttr::getType(__src);
        }

        goto LABEL_366;
      case 22:
        v70 = v8[1];
        if (v8[2] == 4)
        {
          *a1 = v8 + 4;
          __src[0] = *&a1[9][4 * v8[3]];
          if (__src[0])
          {
            goto LABEL_290;
          }
        }

        else
        {
          *a1 = v8 + 4;
          Type = *&a1[9][4 * v8[3]];
          if (!Type)
          {
            goto LABEL_366;
          }

          if (Type[1])
          {
            __src[0] = mlir::ValueRange::dereference_iterator(Type, 0);
LABEL_290:
            Type = mlir::Value::getDefiningOp(__src);
            goto LABEL_366;
          }
        }

        Type = 0;
LABEL_366:
        *&a1[9][4 * v70] = Type;
        continue;
      case 23:
      case 24:
      case 25:
      case 26:
        v14 = v8[2];
        v12 = v8 + 2;
        v13 = v14;
        *a1 = v12;
        v15 = a1[9];
        v16 = *&v15[4 * *(v12 - 1)];
        *a1 = v12 + 1;
        if ((*(v16 + 46) & 0x80) != 0)
        {
          v17 = (v9 - 23);
          if (*(v16 + 68) <= v17)
          {
            *&v15[4 * v13] = 0;
          }

          else
          {
            *&v15[4 * v13] = *(*(v16 + 72) + 32 * v17 + 24);
          }
        }

        else
        {
          *&v15[4 * v13] = 0;
        }

        continue;
      case 27:
        continue;
      case 28:
        v243 = v8[4];
        v241 = v8 + 4;
        v242 = v243;
        v244 = *(v241 - 3);
        *a1 = v241;
        v245 = *&a1[9][4 * *(v241 - 1)];
        *a1 = v241 + 1;
        if ((*(v245 + 46) & 0x80) != 0)
        {
          v246 = *(v245 + 72);
          v4 = *(v245 + 68);
          v247 = a1[16];
          if (v244 == -1)
          {
            goto LABEL_374;
          }
        }

        else
        {
          v246 = 0;
          v4 = 0;
          v247 = a1[16];
          if (v244 == -1)
          {
            goto LABEL_374;
          }
        }

        {
        }

        if ((*(**(v245 + 48) + 32))(*(v245 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID(void)::id))
        {
          if (!*(v245 + 47) || (v248 = mlir::Operation::getInherentAttr(v245, "operandSegmentSizes", 19), (v249 & 1) == 0))
          {
            v248 = mlir::DictionaryAttr::get(v245 + 56, "operandSegmentSizes", 0x13uLL);
          }

          if (v248)
          {
            mlir::detail::DenseArrayAttrImpl<int>::classof();
          }

LABEL_345:
          v325 = 0;
          goto LABEL_399;
        }

        v324 = v4 >= v244;
        v4 -= v244;
        if (!v324)
        {
          goto LABEL_345;
        }

        v246 += 32 * v244;
LABEL_374:
        if (v242 == 0xFFFF)
        {
          if (v4 == 1)
          {
            v325 = *(v246 + 24);
          }

          else
          {
            v325 = 0;
          }
        }

        else
        {
          mlir::ValueRange::ValueRange(__src, v246, v4);
          v325 = &v247[8 * v242];
          *v325 = *__src;
        }

LABEL_399:
        v338 = *(*a1)++;
        *&a1[9][4 * v338] = v325;
        continue;
      case 29:
      case 30:
      case 31:
      case 32:
        v18 = v9 - 29;
        v21 = v8[2];
        v19 = v8 + 2;
        v20 = v21;
        *a1 = v19;
        v22 = a1[9];
        v23 = *&v22[4 * *(v19 - 1)];
        *a1 = v19 + 1;
        v24 = v23 - 16 * (v9 - 28);
        if (*(v23 + 36) <= v18)
        {
          v24 = 0;
        }

        *&v22[4 * v20] = v24;
        continue;
      case 33:
        v252 = v8[4];
        v250 = v8 + 4;
        v251 = v252;
        v253 = *(v250 - 3);
        *a1 = v250;
        v254 = a1[9];
        v255 = *&v254[4 * *(v250 - 1)];
        *a1 = v250 + 1;
        if (*(v255 + 36) <= v253)
        {
          *&v254[4 * v251] = 0;
        }

        else if (v253 > 5)
        {
          *&v254[4 * v251] = v255 - 24 * (v253 - 5) - 96;
        }

        else
        {
          *&v254[4 * v251] = v255 - 16 * v253 - 16;
        }

        continue;
      case 34:
        v78 = v8[4];
        v76 = v8 + 4;
        v77 = v78;
        v79 = *(v76 - 3);
        *a1 = v76;
        v80 = *&a1[9][4 * *(v76 - 1)];
        *a1 = v76 + 1;
        v4 = *(v80 + 36);
        v81 = a1[16];
        if (v4)
        {
          NextResultAtOffset = v80 - 16;
        }

        else
        {
          NextResultAtOffset = 0;
        }

        if (v79 == -1)
        {
          goto LABEL_338;
        }

        {
        }

        if ((*(**(v80 + 48) + 32))(*(v80 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedResultSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedResultSegments>(void)::Empty>,void>::resolveTypeID(void)::id))
        {
          if (!*(v80 + 47) || (v83 = mlir::Operation::getInherentAttr(v80, "resultSegmentSizes", 18), (v84 & 1) == 0))
          {
            v83 = mlir::DictionaryAttr::get(v80 + 56, "resultSegmentSizes", 0x12uLL);
          }

          if (v83)
          {
            mlir::detail::DenseArrayAttrImpl<int>::classof();
          }
        }

        else if (v4 >= v79)
        {
          if (v79)
          {
            NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v79);
          }

          v4 -= v79;
LABEL_338:
          if (v77 != 0xFFFF)
          {
            mlir::ValueRange::ValueRange(__src, NextResultAtOffset, v4);
            v323 = &v81[8 * v77];
            *v323 = *__src;
            goto LABEL_395;
          }

          if (v4 == 1)
          {
            v323 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, 0);
            goto LABEL_395;
          }
        }

        v323 = 0;
LABEL_395:
        v337 = *(*a1)++;
        *&a1[9][4 * v337] = v323;
        continue;
      case 35:
        v63 = v8[1];
        *a1 = v8 + 3;
        v4 = &a1[11][8 * v8[2]];
        *&a1[9][4 * v63] = v4;
        if (*v4)
        {
          MEMORY[0x259C63150](*v4, 0x20C8093837F09);
        }

        *v4 = 0;
        *(v4 + 8) = 0;
        v64 = *a1;
        v65 = **a1;
        *a1 += 2;
        v66 = *&a1[9][4 * v64[1]];
        if (v65 == 4)
        {
          if (v66)
          {
            v67 = *v66;
            if (*v66)
            {
              v68 = 0;
              v69 = -1;
              do
              {
                v67 = *v67;
                ++v69;
                v68 += 8;
              }

              while (v67);
              operator new[]();
            }

            operator new[]();
          }
        }

        else if (v66)
        {
          __src[0] = &v344;
          __src[1] = 0x600000000;
          v360[0] = *v66;
          v360[1] = 0;
          v290 = *(v66 + 8);
          if (v290)
          {
            for (i = 0; i != v290; v360[1] = i)
            {
              v292 = mlir::ValueRange::dereference_iterator(v360, i);
              v293 = *v292;
              if (*v292)
              {
                v294 = 0;
                v295 = *v292;
                do
                {
                  ++v294;
                  v295 = *v295;
                }

                while (v295);
                v296 = __src[1];
                if (v294 + LODWORD(__src[1]) > HIDWORD(__src[1]))
                {
LABEL_261:
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }
              }

              else
              {
                LODWORD(v294) = 0;
                v296 = __src[1];
                if (LODWORD(__src[1]) > HIDWORD(__src[1]))
                {
                  goto LABEL_261;
                }
              }

              if (v293)
              {
                v297 = __src[0] + 8 * v296;
                do
                {
                  *v297++ = v293[2];
                  v293 = *v293;
                }

                while (v293);
              }

              LODWORD(__src[1]) = v296 + v294;
              i = v360[1] + 1;
            }
          }

          operator new[]();
        }

        continue;
      case 36:
        v222 = v8[1];
        *a1 = v8 + 3;
        v223 = a1[9];
        v224 = *&v223[4 * v8[2]];
        if (v224)
        {
          v224 = *(v224 + 8) & 0xFFFFFFFFFFFFFFF8;
        }

        *&v223[4 * v222] = v224;
        continue;
      case 37:
        v216 = v8[1];
        v4 = v8[2];
        *a1 = v8 + 4;
        v217 = a1[9];
        v218 = *&v217[4 * v8[3]];
        if (v218)
        {
          mlir::ValueRange::getType(v218, __src);
          v219 = __src[0];
          v220 = __src[1];
          v221 = v345;
          v360[0] = __src[0];
          v360[1] = __src[1];
          if (__src[1])
          {
            v219 = mlir::ValueRange::offset_base(v360, __src[1]);
            v220 = v360[1];
          }

          mlir::TypeRange::TypeRange(v360, v219, v221 - v220);
          *&a1[13][8 * v4] = *v360;
          *&a1[9][4 * v216] = &a1[13][8 * v4];
        }

        else
        {
          *&v217[4 * v216] = 0;
        }

        continue;
      case 38:
        v236 = v8 + 2;
        *a1 = v8 + 2;
        v237 = v8[1];
        v238 = a1[10];
        v239 = 21;
        if (v238 > v237)
        {
          v239 = 9;
          v238 = 0;
        }

        v240 = *&a1[v239][4 * (v237 - v238)] == 0;
        *a1 = &v236[2 * v240];
        v7 = *&v236[2 * v240];
        goto LABEL_4;
      case 39:
        LOWORD(v362) = a1[25][v8[1]];
        LODWORD(v4) = v362;
        *a1 = v8 + 2;
        if (v4 != 0xFFFF)
        {
          *a1 = v8 + 5;
          v256 = v8[4];
          __src[0] = &v344;
          __src[1] = 0x400000000;
          if (v256 >= 5)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          if (v256)
          {
            LODWORD(v326) = 0;
            do
            {
              v339 = *(*a1)++;
              if (v326 >= HIDWORD(__src[1]))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              *(__src[0] + v326) = *(*&a1[9][4 * v339] + 24);
              v326 = ++LODWORD(__src[1]);
              --v256;
            }

            while (v256);
            v334 = __src[0];
          }

          else
          {
            v326 = 0;
            v334 = &v344;
          }

          mlir::Builder::getFusedLoc((a2 + 8), v334, v326, 0);
        }

        *a1 = &a1[23][*(v8 + 1)];
        continue;
      case 40:
        *a1 = v8 + 2;
        __src[0] = &v344;
        __src[1] = 0x1000000000;
        mlir::ValueRange::ValueRange(v360, __src[0], LODWORD(__src[1]));
        (**a2)();
        v54 = __src[0];
        if (__src[0] != &v344)
        {
          goto LABEL_372;
        }

        continue;
      case 41:
        *a1 = v8 + 2;
        v25 = v8[1];
        v26 = a1[10];
        v27 = 21;
        if (v26 <= v25)
        {
          v28 = 21;
        }

        else
        {
          v28 = 9;
        }

        if (v26 <= v25)
        {
          v29 = a1[10];
        }

        else
        {
          v29 = 0;
        }

        v4 = *&a1[v28][4 * (v25 - v29)];
        *a1 = v8 + 3;
        v30 = v8[2];
        if (v26 > v30)
        {
          v27 = 9;
          v26 = 0;
        }

        __src[0] = *&a1[v27][4 * (v30 - v26)];
        v31 = mlir::ArrayAttr::getValue(__src);
        v32 = mlir::ArrayAttr::getValue(__src);
        v34 = v32 + 8 * v33;
        if (v34 == v31)
        {
          goto LABEL_2;
        }

        v35 = -v31;
        while (*v31 != v4)
        {
          v31 += 8;
          v35 -= 8;
          if (v31 == v34)
          {
            goto LABEL_2;
          }
        }

        v308 = *a1 + ((-v35 - mlir::ArrayAttr::getValue(__src)) >> 1);
        goto LABEL_368;
      case 42:
        *a1 = v8 + 2;
        v273 = a1[10];
        v274 = *&a1[9][4 * v8[1]];
        *a1 = v8 + 3;
        v275 = v8[2];
        v276 = 21;
        if (v273 > v275)
        {
          v276 = 9;
          v273 = 0;
        }

        __src[0] = *&a1[v276][4 * (v275 - v273)];
        isValidIntOrFloat = mlir::DenseElementsAttr::isValidIntOrFloat(__src, 4, 1, 0);
        if (isValidIntOrFloat)
        {
          RawData = mlir::DenseElementsAttr::getRawData(__src);
          LOBYTE(v4) = mlir::DenseElementsAttr::isSplat(__src);
          mlir::DenseElementsAttr::getType(__src);
          isValidIntOrFloat = mlir::DenseElementsAttr::getNumElements(__src);
        }

        else
        {
          RawData = 0;
        }

        if ((*(v274 + 46) & 0x80) != 0)
        {
          v263 = *(v274 + 68);
          if (!isValidIntOrFloat)
          {
            goto LABEL_2;
          }
        }

        else
        {
          v263 = 0;
          if (!isValidIntOrFloat)
          {
            goto LABEL_2;
          }
        }

        if (v4)
        {
          goto LABEL_301;
        }

        v307 = 0;
        do
        {
          if (RawData[v307 / 2] == v263)
          {
            goto LABEL_303;
          }

          v307 += 2;
          --isValidIntOrFloat;
        }

        while (isValidIntOrFloat);
        goto LABEL_2;
      case 43:
        v43 = v8[2];
        *a1 = v8 + 2;
        v44 = *(*&a1[9][4 * v8[1]] + 48);
        v45 = v8 + 3;
        *a1 = v8 + 3;
        if (!v43)
        {
          goto LABEL_37;
        }

        v46 = 0;
        v47 = a1[10];
        v48 = 5;
        do
        {
          *a1 = &v8[v46 + 4];
          v49 = v8[v46 + 3];
          v50 = 21;
          if (v47 <= v49)
          {
            v51 = v47;
          }

          else
          {
            v50 = 9;
            v51 = 0;
          }

          if (*&a1[v50][4 * (v49 - v51)] == v44)
          {
            v322 = &v8[v43 + v48];
            *a1 = v322;
            v7 = *v322;
            goto LABEL_4;
          }

          ++v46;
          v48 += 2;
        }

        while (v43 != v46);
        v45 = &v8[v46 + 3];
LABEL_37:
        v7 = *v45;
        goto LABEL_4;
      case 44:
        *a1 = v8 + 2;
        v257 = a1[10];
        v258 = *&a1[9][4 * v8[1]];
        *a1 = v8 + 3;
        v259 = v8[2];
        v260 = 21;
        if (v257 > v259)
        {
          v260 = 9;
          v257 = 0;
        }

        __src[0] = *&a1[v260][4 * (v259 - v257)];
        NumElements = mlir::DenseElementsAttr::isValidIntOrFloat(__src, 4, 1, 0);
        if (NumElements)
        {
          RawData = mlir::DenseElementsAttr::getRawData(__src);
          LOBYTE(v4) = mlir::DenseElementsAttr::isSplat(__src);
          mlir::DenseElementsAttr::getType(__src);
          NumElements = mlir::DenseElementsAttr::getNumElements(__src);
          if (!NumElements)
          {
            goto LABEL_2;
          }

          v263 = *(v258 + 36);
          if ((v4 & 1) == 0)
          {
LABEL_293:
            v307 = 0;
            while (RawData[v307 / 2] != v263)
            {
              v307 += 2;
              if (!--NumElements)
              {
                goto LABEL_2;
              }
            }

            goto LABEL_303;
          }
        }

        else
        {
          RawData = 0;
          v263 = *(v258 + 36);
          if ((v4 & 1) == 0)
          {
            goto LABEL_293;
          }
        }

LABEL_301:
        if (*RawData != v263)
        {
          goto LABEL_2;
        }

        v307 = 0;
LABEL_303:
        v308 = &(*a1)[v307];
LABEL_368:
        v6 = (v308 + 4);
        *a1 = v6;
        goto LABEL_3;
      case 45:
        *a1 = v8 + 2;
        v225 = v8[1];
        v226 = a1[10];
        v227 = 21;
        if (v226 <= v225)
        {
          v228 = 21;
        }

        else
        {
          v228 = 9;
        }

        if (v226 <= v225)
        {
          v229 = a1[10];
        }

        else
        {
          v229 = 0;
        }

        v4 = *&a1[v228][4 * (v225 - v229)];
        *a1 = v8 + 3;
        v230 = v8[2];
        if (v226 > v230)
        {
          v227 = 9;
          v226 = 0;
        }

        __src[0] = *&a1[v227][4 * (v230 - v226)];
        v231 = mlir::ArrayAttr::getValue(__src);
        v232 = mlir::ArrayAttr::getValue(__src);
        v234 = (v232 + 8 * v233);
        if (v231 == v234)
        {
          goto LABEL_2;
        }

        v235 = 0;
        while (1)
        {
          __src[0] = *v231;
          if (v4 == mlir::TypeAttr::getValue(__src))
          {
            break;
          }

          ++v231;
          v235 += 8;
          if (v231 == v234)
          {
LABEL_2:
            v6 = *a1;
            goto LABEL_3;
          }
        }

        v308 = *a1 + (v235 >> 1);
        goto LABEL_368;
      case 46:
        *a1 = v8 + 2;
        v264 = a1[10];
        v265 = *&a1[9][4 * v8[1]];
        *a1 = v8 + 3;
        v266 = v8[2];
        v267 = 21;
        if (v264 > v266)
        {
          v267 = 9;
          v264 = 0;
        }

        __src[0] = *&a1[v267][4 * (v266 - v264)];
        v268 = mlir::ArrayAttr::getValue(__src);
        v269 = mlir::ArrayAttr::getValue(__src);
        if (!v265)
        {
          v272 = *a1;
          goto LABEL_314;
        }

        v271 = (v269 + 8 * v270);
        v340 = v268;
        if (v268 == v271)
        {
LABEL_231:
          v272 = *a1;
          goto LABEL_314;
        }

        while (2)
        {
          v360[0] = *v268;
          v4 = mlir::ArrayAttr::getValue(v360);
          v327 = mlir::ArrayAttr::getValue(v360);
          v329 = v327 + 8 * v328;
          v330 = v265[1];
          if (v330 != (v329 - v4) >> 3)
          {
            goto LABEL_350;
          }

          v331 = 0;
          if (v330)
          {
            v332 = *v265;
            while (v4 != v329)
            {
              v333 = mlir::TypeRange::dereference_iterator(v332, v331);
              __src[0] = *v4;
              if (v333 != mlir::TypeAttr::getValue(__src))
              {
                goto LABEL_350;
              }

              ++v331;
              v4 += 8;
              if (v330 == v331)
              {
                goto LABEL_349;
              }
            }

            v4 = v329;
          }

          if (v331 != v330)
          {
            goto LABEL_350;
          }

LABEL_349:
          if (v4 != v329)
          {
LABEL_350:
            if (++v268 == v271)
            {
              goto LABEL_231;
            }

            continue;
          }

          break;
        }

        v272 = (*a1 + ((v268 - v340) >> 1) + 4);
        *a1 = v272;
LABEL_314:
        *a1 = &a1[23][*v272];
        continue;
      default:
        continue;
    }
  }
}