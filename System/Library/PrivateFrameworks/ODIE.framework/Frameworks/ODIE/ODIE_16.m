uint64_t mlir::RewriterBase::eraseBlock(mlir::RewriterBase *this, mlir::Block *a2)
{
  v5 = a2 + 32;
  v4 = *(a2 + 4);
  if (v4 != v5)
  {
    do
    {
      v6 = *v4;
      (*(*this + 16))(this);
      v4 = v6;
    }

    while (v6 != v5);
  }

  v7 = *(this + 2);
  if (v7 && v7[2] == 1)
  {
    (*(*v7 + 32))(v7, a2);
  }

  v8 = *(a2 + 3);
  if (a2)
  {
    v9 = a2 + 8;
  }

  else
  {
    v9 = 0;
  }

  return llvm::iplist_impl<llvm::simple_ilist<mlir::Block>,llvm::ilist_traits<mlir::Block>>::erase(v8 & 0xFFFFFFFFFFFFFFF8, v9);
}

_DWORD *mlir::RewriterBase::finalizeOpModification(mlir::RewriterBase *this, mlir::Operation *a2)
{
  result = *(this + 2);
  if (result)
  {
    if (result[2] == 1)
    {
      return (*(*result + 40))(result, a2);
    }
  }

  return result;
}

uint64_t mlir::RewriterBase::replaceUsesWithIf(uint64_t result, uint64_t **a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t *), uint64_t a5, char *a6)
{
  v7 = *a2;
  if (!*a2)
  {
    v12 = 1;
    if (!a6)
    {
      return result;
    }

    goto LABEL_12;
  }

  v11 = result;
  v12 = 1;
  do
  {
    v13 = *v7;
    result = a4(a5, v7);
    v14 = result;
    if (result)
    {
      v15 = v7[2];
      (*(*v11 + 40))(v11, v15);
      v16 = v7[1];
      if (v16)
      {
        v17 = *v7;
        *v16 = *v7;
        if (v17)
        {
          v17[1] = v7[1];
        }
      }

      v7[3] = a3;
      v18 = *a3;
      *v7 = *a3;
      v7[1] = a3;
      if (v18)
      {
        *(v18 + 8) = v7;
      }

      *a3 = v7;
      result = (*(*v11 + 48))(v11, v15);
    }

    v12 &= v14;
    v7 = v13;
  }

  while (v13);
  if (a6)
  {
LABEL_12:
    *a6 = v12;
  }

  return result;
}

uint64_t mlir::RewriterBase::replaceUsesWithIf(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t *), uint64_t a7, char *a8)
{
  v23 = *MEMORY[0x277D85DE8];
  v19 = a2;
  v20 = 0;
  v21 = a4;
  v22 = 0;
  if (!a3)
  {
    v14 = 1;
    if (!a8)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v12 = result;
  v13 = 0;
  v14 = 1;
  do
  {
    v15 = mlir::ValueRange::dereference_iterator(&v19, v13);
    v16 = mlir::ValueRange::dereference_iterator(&v21, v13);
    v18 = 0;
    result = mlir::RewriterBase::replaceUsesWithIf(v12, v15, v16, a6, a7, &v18);
    v14 &= v18;
    v20 = ++v13;
    v22 = v13;
  }

  while (a3 != v13);
  if (a8)
  {
LABEL_5:
    *a8 = v14;
  }

LABEL_6:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RewriterBase::inlineBlockBefore(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v21 = a5;
  v22 = 0;
  v12 = v10 == v11 || a6 == 0;
  if (!v12)
  {
    v14 = v10 + 8;
    v15 = 1;
    do
    {
      v16 = mlir::ValueRange::dereference_iterator(&v21, v15 - 1);
      mlir::RewriterBase::replaceAllUsesWith(a1, *(v14 - 8), v16);
      v22 = v15;
      if (v14 == v11)
      {
        break;
      }

      v14 += 8;
      v12 = a6 == v15++;
    }

    while (!v12);
  }

  v17 = *(a2 + 32);
  if (a1[2])
  {
    if (v17 != a2 + 32)
    {
      do
      {
        mlir::RewriterBase::moveOpBefore(a1, *(a2 + 40), a3, a4);
      }

      while (*(a2 + 32) != a2 + 32);
    }
  }

  else if (v17 != a2 + 32)
  {
    llvm::iplist_impl<llvm::simple_ilist<mlir::Operation>,llvm::ilist_traits<mlir::Operation>>::transfer(a3 + 32, a4, a2 + 32, *(a2 + 40), (a2 + 32));
  }

  v18 = *(*a1 + 24);
  v19 = *MEMORY[0x277D85DE8];

  return v18(a1, a2);
}

uint64_t mlir::RewriterBase::moveOpBefore(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v5 = a2[1];
  if (a2 != a4 && v5 != a4)
  {
    llvm::iplist_impl<llvm::simple_ilist<mlir::Operation>,llvm::ilist_traits<mlir::Operation>>::transfer(a3 + 32, a4, a2[2] + 32, a2, v5);
  }

  result = *(a1 + 16);
  if (result)
  {
    v7 = *(*result + 16);

    return v7();
  }

  return result;
}

void mlir::RewriterBase::splitBlock(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v4 = *(a1 + 24);
    v2 = *(a2 + 16);
    v3 = *(a2 + 24);
    mlir::OpBuilder::createBlock();
  }

  mlir::Block::splitBlock();
}

uint64_t mlir::RewriterBase::inlineRegionBefore(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v7 = *a2;
  if (*(result + 16))
  {
    if (*a2 != a2)
    {
      v8 = result;
      do
      {
        v9 = a2[1];
        if (v9)
        {
          v10 = (v9 - 8);
        }

        else
        {
          v10 = 0;
        }

        result = mlir::RewriterBase::moveBlockBefore(v8, v10, a3, a4);
      }

      while (*a2 != a2);
    }
  }

  else if (*a2 != a2)
  {
    v11 = a2[1];

    return llvm::iplist_impl<llvm::simple_ilist<mlir::Block>,llvm::ilist_traits<mlir::Block>>::transfer(a3, a4, a2, v11, a2);
  }

  return result;
}

uint64_t mlir::RewriterBase::moveBlockBefore(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v5 = a2[2];
  if (a2 + 1 != a4 && v5 != a4)
  {
    llvm::iplist_impl<llvm::simple_ilist<mlir::Block>,llvm::ilist_traits<mlir::Block>>::transfer(a3, a4, a2[3] & 0xFFFFFFFFFFFFFFF8, a2 + 1, v5);
  }

  result = *(a1 + 16);
  if (result)
  {
    v8 = *(*result + 24);

    return v8();
  }

  return result;
}

void llvm::SmallVectorTemplateBase<mlir::OperationName,true>::push_back(uint64_t a1, uint64_t a2)
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

__n128 std::__function::__func<mlir::RewriterBase::eraseOp(mlir::Operation *)::$_0,std::allocator<mlir::RewriterBase::eraseOp(mlir::Operation *)::$_0>,void ()(mlir::Operation *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E78DB8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<mlir::RewriterBase::eraseOp(mlir::Operation *)::$_0,std::allocator<mlir::RewriterBase::eraseOp(mlir::Operation *)::$_0>,void ()(mlir::Operation *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v59[40] = *MEMORY[0x277D85DE8];
  v24 = *a2;
  v3 = *(*a2 + 44);
  if ((v3 & 0x7FFFFF) != 0)
  {
    v4 = ((v24 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v24 + 40);
    v5 = *(a1 + 16);
    v6 = (v4 + 24 * (v3 & 0x7FFFFF));
    v7 = v59;
    v25 = v4;
    do
    {
      v27 = v6;
      v8 = *(v6 - 3);
      v6 -= 3;
      if (v8 != v6)
      {
        v26 = v6;
        do
        {
          v42 = v44;
          v43 = 0x600000000;
          v28[0] = &v31;
          v28[1] = 4;
          v29 = 0;
          v30 = 1;
          llvm::SmallPtrSetImpl<mlir::Block *>::insert(v28, 0, &v34);
          v9 = *(v27 - 2);
          if (v9)
          {
            v10 = (v9 - 8);
          }

          else
          {
            v10 = 0;
          }

          v33 = v10;
          v56 = v28;
          v57 = v7;
          v58 = 0x800000000;
          llvm::SmallPtrSetImpl<mlir::Block *>::insert(v28, v10, v53);
          if (v54 == 1)
          {
            mlir::SuccessorRange::SuccessorRange(v53, v10);
            v32 = v53[0];
            mlir::SuccessorRange::SuccessorRange(v53, v10);
            llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::emplace_back<mlir::Block *&,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>(&v57, &v33, &v32, v53);
            llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,4u>,true,llvm::GraphTraits<mlir::Block *>>::traverseChild(&v56);
          }

          v49 = v56;
          v50 = v52;
          v51 = 0x800000000;
          if (v58)
          {
            llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v50, &v57);
          }

          if (v57 != v7)
          {
            free(v57);
          }

          v45 = v28;
          v46 = v48;
          v47 = 0x800000000;
          v56 = v49;
          v57 = v7;
          v58 = 0x800000000;
          if (v51)
          {
            llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v57, &v50);
            v53[0] = v45;
            v53[1] = v55;
            v54 = 0x800000000;
            if (v47)
            {
              llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v53[1], &v46);
            }
          }

          else
          {
            v53[0] = v28;
            v53[1] = v55;
            v54 = 0x800000000;
          }

          v34 = v56;
          v35 = v37;
          v36 = 0x800000000;
          if (v58)
          {
            llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v35, &v57);
          }

          v38 = v53[0];
          v39 = v41;
          v40 = 0x800000000;
          if (v54)
          {
            llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v39, &v53[1]);
          }

          if (v53[1] != v55)
          {
            free(v53[1]);
          }

          if (v57 != v7)
          {
            free(v57);
          }

          if (v46 != v48)
          {
            free(v46);
          }

          if (v50 != v52)
          {
            free(v50);
          }

          v56 = v34;
          v57 = v7;
          v58 = 0x800000000;
          if (v36)
          {
            llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v57, &v35);
          }

          v53[0] = v38;
          v53[1] = v55;
          v54 = 0x800000000;
          if (v40)
          {
            llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v53[1], &v39);
          }

          while ((llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator==(&v57, &v53[1]) & 1) == 0)
          {
            v11 = *(v57 + 5 * v58 - 5);
            v12 = *(v11 + 32);
            if (v12 != (v11 + 32))
            {
              do
              {
                v13 = *v12;
                std::function<void ()(mlir::Operation *)>::operator()(*(a1 + 8), v12);
                v12 = v13;
              }

              while (v13 != (v11 + 32));
            }

            llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(&v42, v11);
            LODWORD(v58) = v58 - 1;
            if (v58)
            {
              llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,4u>,true,llvm::GraphTraits<mlir::Block *>>::traverseChild(&v56);
            }
          }

          if (v53[1] != v55)
          {
            free(v53[1]);
          }

          if (v57 != v7)
          {
            free(v57);
          }

          if (v39 != v41)
          {
            free(v39);
          }

          v14 = v7;
          if (v35 != v37)
          {
            free(v35);
          }

          if (v43)
          {
            v15 = v42;
            v16 = (v42 + 8 * v43);
            do
            {
              v17 = *v15;
              v18 = (*v15)[6];
              v19 = (*v15)[7];
              while (v18 != v19)
              {
                v20 = *v18++;
                mlir::IRObjectWithUseList<mlir::OpOperand>::dropAllUses(v20);
              }

              mlir::IRObjectWithUseList<mlir::BlockOperand>::dropAllUses(v17);
              (*(*v5 + 24))(v5, v17);
              ++v15;
            }

            while (v15 != v16);
          }

          if ((v30 & 1) == 0)
          {
            free(v28[0]);
          }

          v7 = v14;
          if (v42 != v44)
          {
            free(v42);
          }

          v6 = v26;
        }

        while (*v26 != v26);
      }
    }

    while (v6 != v25);
  }

  (*(****(a1 + 24) + 64))(***(a1 + 24), v24);
  mlir::Operation::dropAllUses(v24);
  if (*(v24 + 16))
  {
    *(v24 + 16) = 0;
    v22 = *v24;
    v21 = *(v24 + 8);
    *v21 = *v24;
    v22[1] = v21;
    *v24 = 0;
    *(v24 + 8) = 0;
  }

  mlir::Operation::destroy(v24);
  v23 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a2 != a2 + 16)
    {
      llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::assignRemote(a1, a2);
      return a1;
    }

    v5 = *(a2 + 8);
    v6 = *(a1 + 8);
    if (v6 >= v5)
    {
      if (v5)
      {
        v7 = *a1;
        v8 = v4 + 40 * v5;
        do
        {
          *v7 = *v4;
          *(v7 + 8) = *(v4 + 8);
          *(v7 + 24) = *(v4 + 24);
          v4 += 40;
          v7 += 40;
        }

        while (v4 != v8);
      }

      goto LABEL_18;
    }

    if (*(a1 + 12) >= v5)
    {
      if (v6)
      {
        v9 = v4 + 40 * v6;
        v10 = *a1;
        do
        {
          *v10 = *v4;
          *(v10 + 8) = *(v4 + 8);
          *(v10 + 24) = *(v4 + 24);
          v4 += 40;
          v10 += 40;
        }

        while (v4 != v9);
LABEL_16:
        v11 = *(a2 + 8) - v6;
        if (v11)
        {
          memcpy((*a1 + 40 * v6), (*a2 + 40 * v6), 40 * v11);
        }

LABEL_18:
        *(a1 + 8) = v5;
        *(a2 + 8) = 0;
        return a1;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5, 40);
    }

    v6 = 0;
    goto LABEL_16;
  }

  return a1;
}

double llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::assignRemote(uint64_t a1, uint64_t a2)
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

uint64_t llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::emplace_back<mlir::Block *&,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>(uint64_t a1, uint64_t *a2, __int128 *a3, __int128 *a4)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    return llvm::SmallVectorTemplateBase<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>,true>::growAndEmplaceBack<mlir::Block *&,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>(a1, a2, a3, a4);
  }

  v5 = *a1 + 40 * v4;
  *v5 = *a2;
  *(v5 + 8) = *a3;
  *(v5 + 24) = *a4;
  LODWORD(v5) = *(a1 + 8) + 1;
  *(a1 + 8) = v5;
  return *a1 + 40 * v5 - 40;
}

uint64_t llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,4u>,true,llvm::GraphTraits<mlir::Block *>>::traverseChild(uint64_t result)
{
  v1 = result + 8;
  v2 = *(result + 8) + 40 * *(result + 16);
  v3 = *(v2 - 24);
  if (v3 != *(v2 - 8))
  {
    v4 = result;
    do
    {
      v5 = *(v2 - 32);
      *(v2 - 24) = v3 + 1;
      v7 = *(v5 + 32 * v3 + 24);
      result = llvm::SmallPtrSetImpl<mlir::Block *>::insert(*v4, v7, &v8);
      if (v9 == 1)
      {
        mlir::SuccessorRange::SuccessorRange(&v8, v7);
        v6 = v8;
        mlir::SuccessorRange::SuccessorRange(&v8, v7);
        result = llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::emplace_back<mlir::Block *&,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>(v1, &v7, &v6, &v8);
      }

      v2 = *(v4 + 8) + 40 * *(v4 + 16);
      v3 = *(v2 - 24);
    }

    while (v3 != *(v2 - 8));
  }

  return result;
}

uint64_t llvm::SmallVectorTemplateBase<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>,true>::growAndEmplaceBack<mlir::Block *&,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>(uint64_t a1, uint64_t *a2, __int128 *a3, __int128 *a4)
{
  v11 = *a2;
  v5 = *a4;
  v12 = *a3;
  v13 = v5;
  v6 = llvm::SmallVectorTemplateCommon<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>,true>>(a1, &v11, 1);
  v7 = *a1 + 40 * *(a1 + 8);
  v8 = *(v6 + 32);
  v9 = *(v6 + 16);
  *v7 = *v6;
  *(v7 + 16) = v9;
  *(v7 + 32) = v8;
  LODWORD(v7) = *(a1 + 8) + 1;
  *(a1 + 8) = v7;
  return *a1 + 40 * v7 - 40;
}

unint64_t llvm::SmallVectorTemplateCommon<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>,true>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = *(a1 + 8);
  v5 = v4 + a3;
  if (v5 > *(a1 + 12))
  {
    v7 = *a1 + 40 * v4;
    if (*a1 <= a2 && v7 > a2)
    {
      v9 = a2 - *a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5, 40);
      return *a1 + v9;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5, 40);
    }
  }

  return v3;
}

uint64_t llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 2);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        v6 = *a2;
        v7 = *a2 + 40 * v4;
        v8 = *a1;
        do
        {
          *v8 = *v6;
          *(v8 + 8) = *(v6 + 8);
          *(v8 + 24) = *(v6 + 24);
          v6 += 40;
          v8 += 40;
        }

        while (v6 != v7);
      }

      goto LABEL_16;
    }

    if (*(a1 + 12) >= v4)
    {
      if (v5)
      {
        v9 = *a2;
        v10 = *a2 + 40 * v5;
        v11 = *a1;
        do
        {
          *v11 = *v9;
          *(v11 + 8) = *(v9 + 8);
          *(v11 + 24) = *(v9 + 24);
          v9 += 40;
          v11 += 40;
        }

        while (v9 != v10);
LABEL_14:
        v12 = *(a2 + 2) - v5;
        if (v12)
        {
          memcpy((*a1 + 40 * v5), (*a2 + 40 * v5), 40 * v12);
        }

LABEL_16:
        *(a1 + 8) = v4;
        return a1;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4, 40);
    }

    v5 = 0;
    goto LABEL_14;
  }

  return a1;
}

uint64_t llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 == *(a2 + 8))
  {
    if (!v2)
    {
      return 1;
    }

    v3 = *a1;
    v4 = *a1 + 40 * v2;
    for (i = *a2; ; i += 5)
    {
      v6 = *v3 == *i && v3[2] == i[2];
      if (!v6 || v3[4] != i[4])
      {
        break;
      }

      v3 += 5;
      if (v3 == v4)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t std::__function::__value_func<void ()(mlir::Operation *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void mlir::Region::~Region(mlir::Region *this)
{
  v2 = *(this + 1);
  v3 = this;
  if (v2 != this)
  {
    do
    {
      v4 = (v2 - 8);
      if (!v2)
      {
        v4 = 0;
      }

      v5 = v4 + 4;
      for (i = v4[5]; i != v5; i = *(i + 8))
      {
        mlir::Operation::dropAllReferences(i);
      }

      v2 = *(v2 + 1);
    }

    while (v2 != this);
    v3 = *(this + 1);
  }

  llvm::iplist_impl<llvm::simple_ilist<mlir::Block>,llvm::ilist_traits<mlir::Block>>::erase(this, v3, this);
}

uint64_t mlir::Region::dropAllReferences(uint64_t this)
{
  v1 = *(this + 8);
  if (v1 != this)
  {
    v2 = this;
    do
    {
      v3 = v1 - 8;
      if (!v1)
      {
        v3 = 0;
      }

      v4 = (v3 + 32);
      for (i = *(v3 + 40); i != v4; i = *(i + 1))
      {
        this = mlir::Operation::dropAllReferences(i);
      }

      v1 = *(v1 + 8);
    }

    while (v1 != v2);
  }

  return this;
}

void mlir::Region::cloneInto(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55[6] = *MEMORY[0x277D85DE8];
  if (*a1 != a1)
  {
    v6 = a1;
    v7 = a1[1];
    if (v7 != a1)
    {
      operator new();
    }

    v8 = v7 - 1;
    if (!v7)
    {
      v8 = 0;
    }

    v53 = v8;
    v9 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>,mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>::doFind<mlir::Block const*>((a4 + 24), &v53);
    v10 = 0;
    if (v9 && v9 != *(a4 + 24) + 16 * *(a4 + 40))
    {
      v10 = *(v9 + 8);
    }

    if (v10)
    {
      v11 = v10 + 8;
    }

    else
    {
      v11 = 0;
    }

    v12 = v6[1];
    if (v12 != v6 && v11 != a3)
    {
      v13 = v11;
      v14 = v11;
      do
      {
        v15 = v12 - 1;
        v16 = v12;
        if (!v12)
        {
          v15 = 0;
        }

        v17 = v15 + 4;
        v18 = v15[5];
        if (v18 != v15 + 4)
        {
          if (v14)
          {
            v19 = v14 - 8;
          }

          else
          {
            v19 = 0;
          }

          do
          {
            v20 = mlir::Operation::clone(v18, a4, 0);
            *(v20 + 16) = v19;
            *(v20 + 32) = -1;
            v21 = *(v19 + 32);
            *v20 = v21;
            *(v20 + 8) = v19 + 32;
            *(v21 + 8) = v20;
            *(v19 + 32) = v20;
            v18 = v18[1];
          }

          while (v18 != v17);
        }

        v14 = *(v14 + 8);
        v12 = v16[1];
      }

      while (v12 != a1 && v14 != a3);
      v6 = a1;
      v12 = a1[1];
      v11 = v13;
    }

    v53 = v55;
    *v54 = 0x600000000;
    if (v12 != v6 && v11 != a3)
    {
      v48 = a3;
      do
      {
        v24 = v12 - 1;
        v49 = v12;
        v50 = v11;
        if (!v12)
        {
          v24 = 0;
        }

        v25 = v11 - 8;
        if (!v11)
        {
          v25 = 0;
        }

        v26 = v24 + 4;
        v27 = v25 + 32;
        v28 = *(v25 + 40);
        for (i = v24[5]; i != v26 && v28 != v27; i = *(i + 8))
        {
          if ((*(i + 46) & 0x80) != 0)
          {
            v31 = *(i + 68);
          }

          else
          {
            v31 = 0;
          }

          llvm::SmallVectorImpl<mlir::Value>::resizeImpl<false>(&v53, v31);
          if ((*(i + 46) & 0x80) != 0)
          {
            v32 = *(i + 68);
            if (v32)
            {
              v33 = v53;
              v34 = (*(i + 72) + 24);
              do
              {
                v35 = *v34;
                v52 = *v34;
                v36 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::doFind<mlir::Value>(a4, &v52);
                if (v36 && v36 != *a4 + 16 * *(a4 + 16))
                {
                  v35 = *(v36 + 8);
                }

                *v33++ = v35;
                v34 += 4;
                --v32;
              }

              while (v32);
            }
          }

          if ((*(v28 + 46) & 0x80) != 0)
          {
            mlir::detail::OperandStorage::setOperands((v28 + 64), v28, v53 & 0xFFFFFFFFFFFFFFF9, v54[0]);
          }

          v37 = *(i + 44);
          v38 = v37 & 0x7FFFFF;
          if ((v37 & 0x7FFFFF) != 0)
          {
            v39 = i + 16 * ((v37 >> 23) & 1) + ((v37 >> 21) & 0x7F8) + 32 * *(i + 40) + 64;
          }

          else
          {
            v39 = 0;
            v38 = 0;
          }

          v40 = *(v28 + 44);
          if ((v40 & 0x7FFFFF) != 0 && v38)
          {
            v41 = v28 + 16 * ((v40 >> 23) & 1) + ((v40 >> 21) & 0x7F8) + 32 * *(v28 + 40) + 64;
            v42 = 24 * v38 - 24;
            v43 = 24 * (v40 & 0x7FFFFF) - 24;
            v44 = v41;
            do
            {
              mlir::Region::cloneInto(v39, v44, v41, a4);
              if (!v42)
              {
                break;
              }

              v39 += 24;
              v44 += 24;
              v42 -= 24;
              v45 = v43;
              v43 -= 24;
              v41 += 24;
            }

            while (v45);
          }

          v28 = *(v28 + 8);
        }

        v11 = *(v50 + 8);
        v12 = v49[1];
      }

      while (v12 != a1 && v11 != v48);
      if (v53 != v55)
      {
        free(v53);
      }
    }
  }

  v47 = *MEMORY[0x277D85DE8];
}

uint64_t *mlir::Region::OpIterator::skipOverBlocksWithNoOps(uint64_t *this)
{
  v2 = *this;
  for (i = this[1]; i != v2; this[1] = i)
  {
    v3 = i - 8;
    if (!i)
    {
      v3 = 0;
    }

    if (*(v3 + 32) != v3 + 32)
    {
      break;
    }

    i = *(i + 8);
  }

  if (i == v2)
  {
    v5 = 0;
  }

  else
  {
    if (i)
    {
      v4 = i - 8;
    }

    else
    {
      v4 = 0;
    }

    v5 = *(v4 + 40);
  }

  this[2] = v5;
  return this;
}

mlir::Region::OpIterator *mlir::Region::OpIterator::operator++(mlir::Region::OpIterator *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = v2 - 8;
  if (!v2)
  {
    v4 = 0;
  }

  v5 = v4 + 32;
  if (v3 == v5 || (v6 = *(v3 + 8), *(this + 2) = v6, v6 == v5))
  {
    *(this + 1) = *(v2 + 8);
    mlir::Region::OpIterator::skipOverBlocksWithNoOps(this);
  }

  return this;
}

uint64_t llvm::iplist_impl<llvm::simple_ilist<mlir::Block>,llvm::ilist_traits<mlir::Block>>::erase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    do
    {
      v4 = *(a2 + 8);
      if (a2)
      {
        v5 = (a2 - 8);
      }

      else
      {
        v5 = 0;
      }

      v6 = v5[2];
      v5[3] &= 7uLL;
      v7 = v5[1];
      *v6 = v7;
      *(v7 + 8) = v6;
      v5[1] = 0;
      v5[2] = 0;
      mlir::Block::~Block((a2 - 8));
      MEMORY[0x25F891040]();
      a2 = v4;
    }

    while (v4 != a3);
  }

  return a3;
}

void llvm::SmallVectorImpl<mlir::Value>::resizeImpl<false>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != a2)
  {
    if (v2 <= a2)
    {
      if (*(a1 + 12) < a2)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), a2, 8);
        v2 = *(a1 + 8);
      }

      if (a2 != v2)
      {
        bzero((*a1 + 8 * v2), 8 * (a2 - v2));
      }
    }

    *(a1 + 8) = a2;
  }
}

mlir::SymbolTable *mlir::SymbolTable::SymbolTable(mlir::SymbolTable *this, mlir::Operation *a2, const llvm::Twine *a3)
{
  *this = a2;
  *(this + 1) = 0;
  v5 = this + 8;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 8) = 0;
  v6 = *(***(a2 + 3) + 32);
  v18 = 261;
  v17[0] = "sym_name";
  v17[1] = 8;
  v7 = mlir::StringAttr::get(v6, v17, a3);
  v8 = *(((a2 + 16 * ((*(a2 + 11) >> 23) & 1) + ((*(a2 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10) + 8);
  if (v8)
  {
    v9 = v8 - 8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 + 32;
  v11 = *(v9 + 40);
  if (v11 != v9 + 32)
  {
    v12 = v7;
    do
    {
      Attr = mlir::Operation::getAttr(v11, v12);
      if (Attr && *(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        v15 = Attr;
        v16 = v11;
        llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Operation *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Operation *>>,mlir::Attribute,mlir::Operation *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Operation *>>::try_emplace<mlir::Operation *>(v17, v5, &v15, &v16);
      }

      v11 = *(v11 + 8);
    }

    while (v11 != v10);
  }

  return this;
}

uint64_t mlir::SymbolTable::lookup(uint64_t *a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = a1 + 1;
  v4 = *(***(*a1 + 24) + 32);
  v7 = 261;
  v6[0] = a2;
  v6[1] = a3;
  v8 = mlir::StringAttr::get(v4, v6, a3);
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Operation *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Operation *>>,mlir::Attribute,mlir::Operation *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Operation *>>::doFind<mlir::Attribute>(v3, &v8);
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

int32x2_t mlir::SymbolTable::remove(mlir::SymbolTable *this, mlir::Operation *a2)
{
  Attr = mlir::Operation::getAttr(a2, "sym_name", 8uLL);
  if (Attr)
  {
    if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v5 = Attr;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v8 = v5;
  v6 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Operation *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Operation *>>,mlir::Attribute,mlir::Operation *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Operation *>>::doFind<mlir::Attribute>(this + 1, &v8);
  if (v6 && v6 != *(this + 1) + 16 * *(this + 6) && *(v6 + 8) == a2)
  {
    *v6 = -8192;
    result = vadd_s32(*(this + 16), 0x1FFFFFFFFLL);
    *(this + 2) = result;
  }

  return result;
}

std::string::size_type mlir::SymbolTable::insert(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v39[16] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 16);
  if (!v5 || (v6 = *(v5 + 24) & 0xFFFFFFFFFFFFFFF8) == 0 || !*(v6 + 16))
  {
    v7 = *(((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40) + 8);
    if (v7)
    {
      v8 = v7 - 8;
    }

    else
    {
      v8 = 0;
    }

    v9 = (v8 + 32);
    v10 = (v8 + 32);
    if (!a3 || (v10 = a3, v9 == a3))
    {
      v11 = *v9;
      if (*v9 != v9)
      {
        v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID();
        if ((*(*v11[6] + 32))(v11[6], v12))
        {
          v10 = *v9;
        }
      }
    }

    *(a2 + 16) = v8;
    *(a2 + 32) = -1;
    v13 = *v10;
    *a2 = *v10;
    *(a2 + 8) = v10;
    *(v13 + 8) = a2;
    *v10 = a2;
  }

  Attr = mlir::Operation::getAttr(a2, "sym_name", 8uLL);
  if (Attr)
  {
    if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v15 = Attr;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v32 = v15;
  v36.__r_.__value_.__r.__words[0] = v15;
  v36.__r_.__value_.__l.__size_ = a2;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Operation *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Operation *>>,mlir::Attribute,mlir::Operation *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Operation *>>::try_emplace<mlir::Operation *>(v38, a1 + 8, &v36, &v36.__r_.__value_.__l.__size_);
  if ((v38[16] & 1) == 0)
  {
    v16 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Operation *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Operation *>>,mlir::Attribute,mlir::Operation *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Operation *>>::doFind<mlir::Attribute>((a1 + 8), &v32);
    if (v16)
    {
      v17 = *(v16 + 8);
    }

    else
    {
      v17 = 0;
    }

    if (v17 == a2)
    {
      v15 = v32;
    }

    else
    {
      v18 = *(***(a2 + 24) + 32);
      v19 = *(v32 + 16);
      v20 = *(v32 + 24);
      *v38 = v39;
      *&v38[8] = xmmword_25D0A05A0;
      llvm::SmallVectorImpl<char>::append<char const*,void>(v38, v19, &v19[v20]);
      v21 = *&v38[8];
      do
      {
        llvm::SmallVectorImpl<char>::resizeImpl<false>(v38, v21);
        llvm::SmallVectorTemplateBase<char,true>::push_back(v38, 95);
        v22 = *(a1 + 32);
        *(a1 + 32) = v22 + 1;
        std::to_string(&v36, v22);
        size = SHIBYTE(v36.__r_.__value_.__r.__words[2]);
        if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v24 = &v36;
        }

        else
        {
          v24 = v36.__r_.__value_.__r.__words[0];
        }

        if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v36.__r_.__value_.__l.__size_;
        }

        llvm::SmallVectorImpl<char>::append<char const*,void>(v38, v24, v24 + size);
        if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v36.__r_.__value_.__l.__data_);
        }

        v37 = 261;
        *&v36.__r_.__value_.__l.__data_ = *v38;
        v33 = mlir::StringAttr::get(v18, &v36, v25);
        v34 = a2;
        llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Operation *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Operation *>>,mlir::Attribute,mlir::Operation *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Operation *>>::try_emplace<mlir::Operation *>(v35, a1 + 8, &v33, &v34);
      }

      while (v35[16] != 1);
      v27 = *(***(a2 + 24) + 32);
      v37 = 261;
      *&v36.__r_.__value_.__l.__data_ = *v38;
      v28 = mlir::StringAttr::get(v27, &v36, v26);
      mlir::Operation::setAttr(a2, "sym_name", 8, v28);
      v29 = mlir::Operation::getAttr(a2, "sym_name", 8uLL);
      if (v29)
      {
        if (*(*v29 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          v15 = v29;
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }

      if (*v38 != v39)
      {
        free(*v38);
      }
    }
  }

  v30 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t mlir::SymbolTable::rename(uint64_t *a1, mlir::Operation *a2, uint64_t a3)
{
  mlir::Operation::getAttr(a2, "sym_name", 8uLL);
  if (!mlir::SymbolTable::replaceAllSymbolUses(a2, a3, *a1, v6))
  {
    return 0;
  }

  mlir::SymbolTable::remove(a1, a2);
  mlir::Operation::setAttr(a2, "sym_name", 8, a3);
  mlir::SymbolTable::insert(a1, a2, 0);
  return 1;
}

uint64_t mlir::SymbolTable::replaceAllSymbolUses(mlir::Operation *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v13 = mlir::SymbolRefAttr::get(a2, 0, 0, a4);
  collectSymbolScopes(&v17, a1, a3);
  if (v18)
  {
    v6 = *v17;
    v7 = *(*v17 + 24);
    if (*(**v17 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id || v7 != 0)
    {
      v9 = *(v6 + 16);
      v14[0] = v15;
      v14[1] = 0x200000000;
      llvm::SmallVectorImpl<mlir::FlatSymbolRefAttr>::append<mlir::FlatSymbolRefAttr const*,void>(v14, v9, &v9[8 * v7]);
      *(v14[0] + LODWORD(v14[1]) - 1) = v13;
      mlir::SymbolRefAttr::get(*(v6 + 8), v14[0], LODWORD(v14[1]), v10);
      if (v14[0] != v15)
      {
        free(v14[0]);
      }
    }

    v16 = 0;
    *v14 = 0u;
    memset(v15, 0, sizeof(v15));
    operator new();
  }

  if (v17 != v19)
  {
    free(v17);
  }

  v11 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t mlir::SymbolTable::rename(uint64_t *a1, mlir::Operation *a2, const llvm::Twine *a3, uint64_t a4)
{
  v6 = *(***(*a1 + 24) + 32);
  v10 = 261;
  v9[0] = a3;
  v9[1] = a4;
  v7 = mlir::StringAttr::get(v6, v9, a3);
  return mlir::SymbolTable::rename(a1, a2, v7);
}

uint64_t mlir::SymbolTable::getSymbolVisibility(mlir::SymbolTable *this, mlir::Operation *a2)
{
  result = mlir::Operation::getAttr(this, "sym_visibility", 0xEuLL);
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      return 0;
    }

    v3 = *(result + 16);
    v4 = *(result + 24);
    if (v4 != 6)
    {
      if (v4 == 7)
      {
        v5 = *v3;
        v6 = *(v3 + 3);
        if (v5 == 1986622064 && v6 == 1702125942)
        {
          return 1;
        }
      }

      return 0;
    }

    v8 = *v3;
    v9 = *(v3 + 2);
    v11 = v8 == 1953719662 && v9 == 25701;
    return (2 * v11);
  }

  return result;
}

void mlir::SymbolTable::setSymbolVisibility(uint64_t a1, int a2, const llvm::Twine *a3)
{
  v4 = *(***(a1 + 24) + 32);
  if (a2)
  {
    v5 = "nested";
    if (a2 == 1)
    {
      v5 = "private";
    }

    v6 = 6;
    v11 = 261;
    if (a2 == 1)
    {
      v6 = 7;
    }

    v9 = v5;
    v10 = v6;
    v7 = mlir::StringAttr::get(v4, &v9, a3);
    mlir::Operation::setAttr(a1, "sym_visibility", 0xE, v7);
  }

  else
  {
    v11 = 261;
    v9 = "sym_visibility";
    v10 = 14;
    v8 = mlir::StringAttr::get(v4, &v9, a3);
    mlir::Operation::removeAttr(a1, v8);
  }
}

uint64_t mlir::Operation::removeAttr(uint64_t a1, uint64_t a2)
{
  v10[9] = *MEMORY[0x277D85DE8];
  if (*(a1 + 47) && (v4 = (*(**(a1 + 48) + 80))(*(a1 + 48), a1, *(a2 + 16), *(a2 + 24)), (v5 & 1) != 0))
  {
    v6 = v4;
    (*(**(a1 + 48) + 88))(*(a1 + 48), a1, a2, 0);
  }

  else
  {
    mlir::NamedAttrList::NamedAttrList(v9, *(a1 + 56));
    v6 = mlir::NamedAttrList::erase(v9, a2);
    if (v6)
    {
      *(a1 + 56) = mlir::NamedAttrList::getDictionary(v9, *(***(a1 + 24) + 32));
    }

    if (v9[0] != v10)
    {
      free(v9[0]);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

mlir::SymbolTable *mlir::SymbolTable::getNearestSymbolTable(mlir::SymbolTable *this, mlir::Operation *a2)
{
  v2 = this;
  if ((*(this + 11) & 0x7FFFFF) == 1)
  {
    v3 = *(this + 6);
    v4 = (*(v3 + 16) == &mlir::detail::TypeIDResolver<void,void>::id ? *(v3 + 8) + 32 : v3 + 24);
    if (!*v4)
    {
      return 0;
    }
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID();
  if (((*(**(v2 + 6) + 32))(*(v2 + 6), v5) & 1) == 0)
  {
    while (1)
    {
      v6 = *(v2 + 2);
      if (!v6)
      {
        break;
      }

      v7 = *(v6 + 24) & 0xFFFFFFFFFFFFFFF8;
      if (!v7)
      {
        break;
      }

      v2 = *(v7 + 16);
      if (!v2)
      {
        return v2;
      }

      if ((*(v2 + 11) & 0x7FFFFF) == 1)
      {
        v8 = *(v2 + 6);
        v9 = (*(v8 + 16) == &mlir::detail::TypeIDResolver<void,void>::id ? *(v8 + 8) + 32 : v8 + 24);
        if (!*v9)
        {
          break;
        }
      }

      v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID();
      if ((*(**(v2 + 6) + 32))(*(v2 + 6), v10))
      {
        return v2;
      }
    }

    return 0;
  }

  return v2;
}

uint64_t mlir::SymbolTable::walkSymbolTables(uint64_t a1, int a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID();
  result = (*(**(a1 + 48) + 32))(*(a1 + 48), v7);
  v10 = result;
  if (result)
  {
    v11 = llvm::DefaultDoCastIfPossible<mlir::SymbolOpInterface,mlir::Operation *,llvm::CastInfo<mlir::SymbolOpInterface,mlir::Operation *,void>>::doCastIfPossible(a1, v9);
    if (v11)
    {
      result = (*(v12 + 32))(v12, v11);
    }

    else
    {
      result = 1;
    }

    v14 = a3;
    v13 = result | a2;
  }

  else
  {
    v13 = 1;
    v14 = a3;
  }

  v15 = *(a1 + 44);
  if ((v15 & 0x7FFFFF) != 0)
  {
    v16 = ((a1 + 16 * ((v15 >> 23) & 1) + ((v15 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
    v17 = v16 + 24 * (v15 & 0x7FFFFF);
    do
    {
      for (i = *(v16 + 8); i != v16; i = *(i + 8))
      {
        v19 = i - 8;
        if (!i)
        {
          v19 = 0;
        }

        v20 = v19 + 32;
        for (j = *(v19 + 40); j != v20; j = *(j + 8))
        {
          result = mlir::SymbolTable::walkSymbolTables(j, v13, v14, a4);
          v14 = a3;
        }
      }

      v16 += 24;
    }

    while (v16 != v17);
  }

  if (v10)
  {

    return v14(a4, a1, v13);
  }

  return result;
}

uint64_t mlir::SymbolTable::lookupSymbolIn(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = (((a1 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40));
  if (*v3 == v3)
  {
    return 0;
  }

  v5 = *(***(a1 + 24) + 32);
  v16 = 261;
  v15[0] = "sym_name";
  v15[1] = 8;
  v6 = mlir::StringAttr::get(v5, v15, a3);
  v7 = v3[1];
  v8 = v7 ? v7 - 8 : 0;
  v9 = v8 + 32;
  v10 = *(v8 + 40);
  if (v10 == v8 + 32)
  {
    return 0;
  }

  v11 = v6;
  while (1)
  {
    Attr = mlir::Operation::getAttr(v10, v11);
    if (Attr)
    {
      v13 = *(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id ? Attr : 0;
    }

    else
    {
      v13 = 0;
    }

    if (v13 == a2)
    {
      break;
    }

    v10 = *(v10 + 8);
    if (v10 == v9)
    {
      return 0;
    }
  }

  return v10;
}

{
  v4 = *(***(a1 + 24) + 32);
  v9 = 261;
  v8[0] = a2;
  v8[1] = a3;
  v5 = mlir::StringAttr::get(v4, v8, a3);
  return mlir::SymbolTable::lookupSymbolIn(a1, v5, v6);
}

uint64_t mlir::SymbolTable::lookupSymbolIn(uint64_t a1, void *a2)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v6 = v8;
  v7 = 0x400000000;
  if (lookupSymbolInImpl(a1, a2, &v6, llvm::function_ref<mlir::Operation * ()(mlir::Operation *,mlir::StringAttr)>::callback_fn<mlir::SymbolTable::lookupSymbolIn(mlir::Operation *,mlir::SymbolRefAttr,llvm::SmallVectorImpl<mlir::Operation *> &)::$_0>, &v5))
  {
    v2 = *(v6 + v7 - 1);
  }

  else
  {
    v2 = 0;
  }

  if (v6 != v8)
  {
    free(v6);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t lookupSymbolInImpl(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void), uint64_t a5)
{
  v8 = a2;
  result = a4(a5, a1, a2[1]);
  if (result)
  {
    v10 = result;
    llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a3, result);
    v11 = v8[3];
    if (v11)
    {
      v12 = v8[2];
      v13 = mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID();
      result = (*(**(v10 + 48) + 32))(*(v10 + 48), v13);
      if (result)
      {
        if (v12 + 8 * v11 - 8 == v12)
        {
LABEL_9:
          v16 = v8[3];
          if (v16)
          {
            v8 = *(v8[2] + 8 * v16 - 8);
          }

          v17 = a4(a5, v10, v8[1]);
          llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a3, v17);
          return *(*a3 + 8 * *(a3 + 8) - 8) != 0;
        }

        else
        {
          v14 = 8 * v11 - 8;
          while (1)
          {
            result = a4(a5, v10, *(*v12 + 8));
            if (!result)
            {
              break;
            }

            v10 = result;
            v15 = mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID();
            result = (*(**(v10 + 48) + 32))(*(v10 + 48), v15);
            if (!result)
            {
              break;
            }

            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a3, v10);
            v12 += 8;
            v14 -= 8;
            if (!v14)
            {
              goto LABEL_9;
            }
          }
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

mlir::SymbolTable *mlir::SymbolTable::lookupNearestSymbolFrom(mlir::SymbolTable *a1, mlir::Operation *a2)
{
  result = mlir::SymbolTable::getNearestSymbolTable(a1, a2);
  if (result)
  {

    return mlir::SymbolTable::lookupSymbolIn(result, a2);
  }

  return result;
}

uint64_t mlir::detail::verifySymbolTable(mlir::detail *this, mlir::Operation *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = *(this + 11);
  if ((v2 & 0x7FFFFF) != 1)
  {
    v34 = 257;
    mlir::Operation::emitOpError(this, v33, &v35);
    if (v35)
    {
      mlir::Diagnostic::operator<<<61ul>(&v36, "Operations with a 'SymbolTable' must have exactly one region");
    }

    goto LABEL_8;
  }

  v3 = ((this + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10);
  v4 = *(v3 + 8);
  if (v4 == v3 || *(v4 + 8) != v3)
  {
    v34 = 257;
    mlir::Operation::emitOpError(this, v33, &v35);
    if (v35)
    {
      mlir::Diagnostic::operator<<<60ul>(&v36, "Operations with a 'SymbolTable' must have exactly one block");
    }

LABEL_8:
    v5 = (v38 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v35);
    goto LABEL_9;
  }

  v25 = this + 64;
  v8 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v27 = v3;
  do
  {
    v9 = v4 - 8;
    if (!v4)
    {
      v9 = 0;
    }

    v10 = v9 + 32;
    for (i = *(v9 + 40); i != v10; i = *(i + 8))
    {
      Attr = mlir::Operation::getAttr(i, "sym_name", 8uLL);
      if (!Attr)
      {
        continue;
      }

      v13 = Attr;
      if (*(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        continue;
      }

      v14 = *(i + 24);
      v33[0] = 0;
      v15 = v32;
      v16 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Location,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Location>>,mlir::Attribute,mlir::Location,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Location>>::LookupBucketFor<mlir::Attribute>(v8, v32, Attr, v33);
      v17 = v33[0];
      if (v16)
      {
        v29 = 257;
        mlir::Operation::emitError(&v35, i, v28);
        if (v35)
        {
          v22 = *(v13 + 16);
          v23 = *(v13 + 24);
          mlir::Diagnostic::operator<<<31ul>(&v36, "redefinition of symbol named '");
          v34 = 261;
          v33[0] = v22;
          v33[1] = v23;
          mlir::Diagnostic::operator<<(&v36, v33);
          mlir::Diagnostic::operator<<<2ul>(&v36, "'");
        }

        mlir::Diagnostic::attachNote(&v36, v17[1], 1);
      }

      v35 = v33[0];
      v18 = v31;
      if (4 * v31 + 4 >= 3 * v15)
      {
        v15 *= 2;
LABEL_25:
        llvm::DenseMap<mlir::Attribute,mlir::Location,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Location>>::grow(&v30, v15);
        v8 = v30;
        llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Location,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Location>>,mlir::Attribute,mlir::Location,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Location>>::LookupBucketFor<mlir::Attribute>(v30, v32, v13, &v35);
        v18 = v31;
        v17 = v35;
        goto LABEL_20;
      }

      if (v15 + ~v31 - HIDWORD(v31) <= v15 >> 3)
      {
        goto LABEL_25;
      }

LABEL_20:
      LODWORD(v31) = v18 + 1;
      if (*v17 != -4096)
      {
        --HIDWORD(v31);
      }

      *v17 = v13;
      v17[1] = v14;
    }

    v4 = *(v4 + 8);
  }

  while (v4 != v27);
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v33[0] = &v35;
  v19 = *(this + 11);
  v20 = v19 & 0x7FFFFF;
  if ((v19 & 0x7FFFFF) != 0)
  {
    v21 = (&v25[16 * ((v19 >> 23) & 1) + 7 + ((v19 >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10);
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  v24 = walkSymbolTable(v21, v20, llvm::function_ref<std::optional<mlir::WalkResult> ()(mlir::Operation *)>::callback_fn<mlir::detail::verifySymbolTable(mlir::Operation *)::$_0>, v33);
  v5 = BYTE4(v24) & (v24 != 0);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::destroyAll(&v35);
  MEMORY[0x25F891030](v35, 8);
  MEMORY[0x25F891030](v30, 8);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t walkSymbolTable(unint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v31 = v33;
  v32 = 0x100000000;
  if (a2 < 2)
  {
    v8 = 0;
    if (!a2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v31, v33, a2, 8);
    v8 = v32;
  }

  v9 = 0;
  v10 = vdupq_n_s64((24 * a2 - 24) / 0x18);
  v11 = v31 + 8 * v8 + 8;
  do
  {
    v12 = vaddq_s64(vdupq_n_s64(a1), xmmword_25D0A0660);
    v13 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v9), xmmword_25D0A0500)));
    if (v13.i8[0])
    {
      *(v11 - 1) = v12.i64[0];
    }

    if (v13.i8[4])
    {
      *v11 = v12.i64[1];
    }

    v9 += 2;
    a1 += 48;
    v11 += 2;
  }

  while ((((24 * a2 - 24) / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v9);
LABEL_10:
  v14 = v8 + a2;
  LODWORD(v32) = v14;
  if (v14)
  {
    v15 = 1;
    while (1)
    {
      v16 = *(v31 + --v14);
      LODWORD(v32) = v14;
      if (*v16 != v16)
      {
        for (i = v16[1]; i != v16; i = i[1])
        {
          v18 = i - 1;
          if (!i)
          {
            v18 = 0;
          }

          if (v18[4] != v18 + 4)
          {
            break;
          }
        }

        if (i != v16)
        {
          v19 = i - 1;
          if (!i)
          {
            v19 = 0;
          }

          v20 = v19[5];
          v29[0] = v16;
          v29[1] = i;
          v30 = v20;
          if (v20)
          {
            break;
          }
        }
      }

LABEL_30:
      if (!v14)
      {
        v26 = 0x100000000;
        goto LABEL_34;
      }
    }

    while (1)
    {
      v21 = a3(a4, v20);
      if ((v21 & 0x1FFFFFFFFLL) != 0x100000001)
      {
        break;
      }

      v22 = mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID();
      if (((*(**(v20 + 48) + 32))(*(v20 + 48), v22) & 1) == 0)
      {
        v23 = *(v20 + 44);
        if ((v23 & 0x7FFFFF) != 0)
        {
          v24 = v20 + 16 * ((v23 >> 23) & 1) + ((v23 >> 21) & 0x7F8) + 32 * *(v20 + 40) + 64;
          v25 = 24 * (v23 & 0x7FFFFF);
          do
          {
            llvm::SmallVectorTemplateBase<mlir::Region *,true>::push_back(&v31, v24);
            v24 += 24;
            v25 -= 24;
          }

          while (v25);
        }
      }

      mlir::Region::OpIterator::operator++(v29);
      v20 = v30;
      if (!v30)
      {
        v14 = v32;
        goto LABEL_30;
      }
    }

    v26 = v21 & 0xFF00000000;
    v15 = v21;
  }

  else
  {
    v26 = 0x100000000;
    v15 = 1;
  }

LABEL_34:
  if (v31 != v33)
  {
    free(v31);
  }

  v27 = *MEMORY[0x277D85DE8];
  return v26 | v15;
}

uint64_t mlir::detail::verifySymbol(mlir::detail *this, mlir::Operation *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  Attr = mlir::Operation::getAttr(this, "sym_name", 8uLL);
  if (!Attr || *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v16 = 257;
    mlir::Operation::emitOpError(this, v15, &v20);
    if (v20)
    {
      mlir::Diagnostic::operator<<<28ul>(v21, "requires string attribute '");
      if (v20)
      {
        v19 = 261;
        v17 = "sym_name";
        v18 = 8;
        mlir::Diagnostic::operator<<(v21, &v17);
        if (v20)
        {
          mlir::Diagnostic::operator<<<2ul>(v21, "'");
        }
      }
    }

    v4 = v22 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
    goto LABEL_8;
  }

  v7 = mlir::Operation::getAttr(this, "sym_visibility", 0xEuLL);
  v14 = v7;
  if (!v7)
  {
LABEL_22:
    v4 = 1;
    goto LABEL_8;
  }

  v8 = v7;
  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v9 = v7[2];
    v10 = v7[3];
    v11 = &constinit_12 + 1;
    v12 = 48;
    while (*v11 != v10 || v10 && memcmp(*(v11 - 1), v9, v10))
    {
      v11 += 2;
      v12 -= 16;
      if (!v12)
      {
        v19 = 257;
        mlir::Operation::emitOpError(this, &v17, &v20);
        if (v20)
        {
          mlir::Diagnostic::operator<<<75ul>(v21, "visibility expected to be one of [public, private, nested], but got ");
          if (v20)
          {
            mlir::Diagnostic::operator<<(v21, v8);
          }
        }

        goto LABEL_26;
      }
    }

    goto LABEL_22;
  }

  v16 = 257;
  mlir::Operation::emitOpError(this, v15, &v20);
  if (v20)
  {
    mlir::Diagnostic::operator<<<32ul>(v21, "requires visibility attribute '");
    if (v20)
    {
      v19 = 261;
      v17 = "sym_visibility";
      v18 = 14;
      mlir::Diagnostic::operator<<(v21, &v17);
      if (v20)
      {
        mlir::Diagnostic::operator<<<37ul>(v21, "' to be a string attribute, but got ");
        if (v20)
        {
          mlir::Diagnostic::operator<<<mlir::Attribute &>(v21, &v14);
        }
      }
    }
  }

LABEL_26:
  v13 = v22;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
  v4 = v13 ^ 1;
LABEL_8:
  v5 = *MEMORY[0x277D85DE8];
  return v4 & 1;
}

double mlir::SymbolTable::getSymbolUses@<D0>(mlir::SymbolTable *this@<X0>, uint64_t a2@<X8>)
{
  __p[0] = 0;
  __p[1] = 0;
  v8 = 0;
  v6 = __p;
  if ((walkSymbolUses(this, llvm::function_ref<mlir::WalkResult ()(mlir::SymbolTable::SymbolUse)>::callback_fn<std::optional<mlir::SymbolTable::UseRange> getSymbolUsesImpl<mlir::Operation *>(mlir::Operation *)::{lambda(mlir::SymbolTable::SymbolUse)#1}>, &v6) & 0x100000000) != 0)
  {
    result = *__p;
    *a2 = *__p;
    *(a2 + 16) = v8;
    *(a2 + 24) = 1;
  }

  else
  {
    *a2 = 0;
    v5 = __p[0];
    *(a2 + 24) = 0;
    if (v5)
    {
      __p[1] = v5;
      operator delete(v5);
    }
  }

  return result;
}

void mlir::SymbolTable::getSymbolUses(mlir::SymbolTable *this@<X0>, mlir::Operation *a2@<X1>, uint64_t a3@<X8>)
{
  v19[4] = *MEMORY[0x277D85DE8];
  __p[0] = 0;
  __p[1] = 0;
  v13 = 0;
  collectSymbolScopes(&v17, this, a2);
  v5 = v17;
  if (v18)
  {
    v6 = (v17 + 8);
    v7 = 16 * v18;
    while (1)
    {
      v14[0] = v5;
      v14[1] = __p;
      v8 = *v6;
      v6 += 2;
      v9 = v8 & 0xFFFFFFFFFFFFFFF8;
      if ((v8 & 4) != 0 && v9)
      {
        v16[1] = v14;
        v15 = v16;
        if ((walkSymbolTable(v9, 1uLL, llvm::function_ref<std::optional<mlir::WalkResult> ()(mlir::Operation *)>::callback_fn<walkSymbolUses(llvm::MutableArrayRef<mlir::Region>,llvm::function_ref<mlir::WalkResult ()(mlir::SymbolTable::SymbolUse)>)::$_0>, &v15) & 0x100000000) == 0)
        {
          goto LABEL_13;
        }
      }

      {
LABEL_13:
        *a3 = 0;
        *(a3 + 24) = 0;
        if (v17 != v19)
        {
          free(v17);
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        goto LABEL_17;
      }

      v5 += 16;
      v7 -= 16;
      if (!v7)
      {
        v5 = v17;
        break;
      }
    }
  }

  if (v5 != v19)
  {
    free(v5);
  }

  v10 = v13;
  *a3 = *__p;
  *(a3 + 16) = v10;
  *(a3 + 24) = 1;
LABEL_17:
  v11 = *MEMORY[0x277D85DE8];
}

BOOL mlir::SymbolTable::symbolKnownUseEmpty(mlir::SymbolTable *this, mlir::Operation *a2, mlir::Operation *a3)
{
  v17[4] = *MEMORY[0x277D85DE8];
  collectSymbolScopes(&v15, this, a2);
  v3 = v15;
  if (v16)
  {
    v4 = v15 + 16 * v16;
    do
    {
      v12 = v3;
      v5 = *(v3 + 1);
      v6 = v5 & 0xFFFFFFFFFFFFFFF8;
      if ((v5 & 4) != 0 && v6)
      {
        v14[0] = llvm::function_ref<mlir::WalkResult ()(mlir::SymbolTable::SymbolUse)>::callback_fn<BOOL symbolKnownUseEmptyImpl<mlir::Operation *,mlir::Operation>(mlir::Operation *,mlir::Operation *)::{lambda(mlir::SymbolTable::SymbolUse)#1}>;
        v14[1] = &v12;
        v13 = v14;
        v7 = walkSymbolTable(v6, 1uLL, llvm::function_ref<std::optional<mlir::WalkResult> ()(mlir::Operation *)>::callback_fn<walkSymbolUses(llvm::MutableArrayRef<mlir::Region>,llvm::function_ref<mlir::WalkResult ()(mlir::SymbolTable::SymbolUse)>)::$_0>, &v13);
      }

      else
      {
        v7 = walkSymbolUses(v6, llvm::function_ref<mlir::WalkResult ()(mlir::SymbolTable::SymbolUse)>::callback_fn<BOOL symbolKnownUseEmptyImpl<mlir::Operation *,mlir::Operation>(mlir::Operation *,mlir::Operation *)::{lambda(mlir::SymbolTable::SymbolUse)#1}>, &v12);
      }

      v8 = (v7 & 0x1FFFFFFFFLL) == 0x100000001;
      v3 += 16;
    }

    while ((v7 & 0x1FFFFFFFFLL) == 0x100000001 && v3 != v4);
    v3 = v15;
  }

  else
  {
    v8 = 1;
  }

  if (v3 != v17)
  {
    free(v3);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t mlir::SymbolTableCollection::lookupSymbolIn(mlir::SymbolTableCollection *a1, mlir::Operation *a2, uint64_t a3)
{
  SymbolTable = mlir::SymbolTableCollection::getSymbolTable(a1, a2);
  v6 = a3;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Operation *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Operation *>>,mlir::Attribute,mlir::Operation *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Operation *>>::doFind<mlir::Attribute>((SymbolTable + 8), &v6);
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t mlir::SymbolTableCollection::getSymbolTable(mlir::SymbolTableCollection *this, mlir::Operation *a2)
{
  v6 = a2;
  v3 = 0;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::try_emplace<decltype(nullptr)>(this, &v6, &v4);
  if (v5 == 1)
  {
    operator new();
  }

  return *(v4 + 8);
}

uint64_t mlir::SymbolTableCollection::lookupSymbolIn(uint64_t a1, uint64_t a2, void *a3)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v6 = a1;
  v7 = v9;
  v8 = 0x400000000;
  if (lookupSymbolInImpl(a2, a3, &v7, llvm::function_ref<mlir::Operation * ()(mlir::Operation *,mlir::StringAttr)>::callback_fn<mlir::SymbolTableCollection::lookupSymbolIn(mlir::Operation *,mlir::SymbolRefAttr,llvm::SmallVectorImpl<mlir::Operation *> &)::$_0>, &v6))
  {
    v3 = *(v7 + v8 - 1);
  }

  else
  {
    v3 = 0;
  }

  if (v7 != v9)
  {
    free(v7);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::try_emplace<decltype(nullptr)>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::LookupBucketFor<mlir::Operation *>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::InsertIntoBucketImpl<mlir::Operation *>(a1, a2, v10);
    v7 = result;
    *result = *a2;
    *(result + 8) = 0;
    v8 = 1;
  }

  v9 = *a1 + 16 * *(a1 + 16);
  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = v8;
  return result;
}

mlir::SymbolUserMap *mlir::SymbolUserMap::SymbolUserMap(mlir::SymbolUserMap *this, mlir::SymbolTableCollection *a2, mlir::Operation *a3)
{
  v8[6] = *MEMORY[0x277D85DE8];
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = a2;
  *(this + 6) = 0;
  v6[2] = this;
  v7[0] = v8;
  v7[1] = 0x600000000;
  v6[0] = v7;
  v6[1] = a2;
  mlir::SymbolTable::walkSymbolTables(a3, 0, llvm::function_ref<void ()(mlir::Operation *,BOOL)>::callback_fn<mlir::SymbolUserMap::SymbolUserMap(mlir::SymbolTableCollection &,mlir::Operation *)::$_0>, v6);
  if (v7[0] != v8)
  {
    free(v7[0]);
  }

  v4 = *MEMORY[0x277D85DE8];
  return this;
}

uint64_t mlir::impl::parseOptionalVisibilityKeyword(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = 0uLL;
  v13[0] = constinit_12;
  v13[1] = *&off_2799BD088;
  v14 = xmmword_2799BD098;
  if ((*(*a1 + 424))(a1, &v12, v13, 3))
  {
    v4 = (*(*a1 + 32))(a1);
    LOWORD(v14) = 261;
    v13[0] = v12;
    v6 = mlir::StringAttr::get(*v4, v13, v5);
    (*(*a1 + 32))(a1);
    v7 = *(**v6 + 32);
    LOWORD(v14) = 261;
    *&v13[0] = "sym_visibility";
    *(&v13[0] + 1) = 14;
    v9 = mlir::StringAttr::get(v7, v13, v8);
    mlir::NamedAttrList::push_back(a2, v9, v6);
    result = 1;
  }

  else
  {
    result = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::Operation::getAttr(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 47) || (result = (*(**(a1 + 48) + 80))(*(a1 + 48), a1, *(a2 + 16), *(a2 + 24)), (v5 & 1) == 0))
  {
    v6 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a1 + 56) + 8), *(*(a1 + 56) + 8) + 16 * *(*(a1 + 56) + 16), a2);
    if (v7)
    {
      return *(v6 + 8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t llvm::DefaultDoCastIfPossible<mlir::SymbolOpInterface,mlir::Operation *,llvm::CastInfo<mlir::SymbolOpInterface,mlir::Operation *,void>>::doCastIfPossible(mlir::SymbolOpInterface *a1, mlir::Operation *a2)
{
  v2 = a1;
  if (!mlir::SymbolOpInterface::classof(a1, a2))
  {
    return 0;
  }

  if (v2)
  {
    mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(v2);
  }

  return v2;
}

double llvm::SmallVectorImpl<mlir::Operation *>::assignRemote(uint64_t a1, uint64_t a2)
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Operation *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Operation *>>,mlir::Attribute,mlir::Operation *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Operation *>>::try_emplace<mlir::Operation *>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v14 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Operation *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Operation *>>,mlir::Attribute,mlir::Operation *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Operation *>>::LookupBucketFor<mlir::Attribute>(*a2, *(a2 + 16), *a3, &v14);
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
    llvm::DenseMap<mlir::Attribute,mlir::Operation *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Operation *>>::grow(a2, v10);
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Operation *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Operation *>>,mlir::Attribute,mlir::Operation *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Operation *>>::LookupBucketFor<mlir::Attribute>(*a2, *(a2 + 16), *a3, &v15);
    v12 = *(a2 + 8);
    v9 = v15;
  }

  *(a2 + 8) = v12 + 1;
  if (*v9 != -4096)
  {
    --*(a2 + 12);
  }

  *v9 = *a3;
  v9[1] = *a4;
  v10 = *(a2 + 16);
  v11 = 1;
LABEL_8:
  v13 = *a2 + 16 * v10;
  *a1 = v9;
  *(a1 + 8) = v13;
  *(a1 + 16) = v11;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Operation *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Operation *>>,mlir::Attribute,mlir::Operation *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Operation *>>::LookupBucketFor<mlir::Attribute>(uint64_t a1, int a2, uint64_t a3, void *a4)
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

char *llvm::DenseMap<mlir::Attribute,mlir::Operation *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Operation *>>::grow(uint64_t a1, int a2)
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
          llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Operation *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Operation *>>,mlir::Attribute,mlir::Operation *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Operation *>>::LookupBucketFor<mlir::Attribute>(*a1, *(a1 + 16), v20, &v30);
          v21 = v30;
          *v30 = *v19;
          v21[1] = v19[1];
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Operation *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Operation *>>,mlir::Attribute,mlir::Operation *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Operation *>>::doFind<mlir::Attribute>(uint64_t *a1, void *a2)
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Location,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Location>>,mlir::Attribute,mlir::Location,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Location>>::LookupBucketFor<mlir::Attribute>(uint64_t a1, int a2, uint64_t a3, void *a4)
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

char *llvm::DenseMap<mlir::Attribute,mlir::Location,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Location>>::grow(uint64_t a1, int a2)
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
          llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Location,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Location>>,mlir::Attribute,mlir::Location,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Location>>::LookupBucketFor<mlir::Attribute>(*a1, *(a1 + 16), v20, &v30);
          v21 = v30;
          *v30 = *v19;
          v21[1] = v19[1];
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

uint64_t llvm::function_ref<std::optional<mlir::WalkResult> ()(mlir::Operation *)>::callback_fn<mlir::detail::verifySymbolTable(mlir::Operation *)::$_0>(void *a1, uint64_t a2)
{
  if (!mlir::OpInterface<mlir::SymbolUserOpInterface,mlir::detail::SymbolUserOpInterfaceInterfaceTraits>::getInterfaceFor(a2) || !a2)
  {
    return 0x100000001;
  }

  InterfaceFor = mlir::OpInterface<mlir::SymbolUserOpInterface,mlir::detail::SymbolUserOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  return (*InterfaceFor)(InterfaceFor, a2, *a1) & 1 | 0x100000000;
}

uint64_t mlir::Diagnostic::operator<<<75ul>(uint64_t a1, char *__s)
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

uint64_t walkSymbolUses(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 44) & 0x7FFFFF) == 1 && ((v6 = *(a1 + 48), *(v6 + 16) == &mlir::detail::TypeIDResolver<void,void>::id) ? (v7 = (*(v6 + 8) + 32)) : (v7 = (v6 + 24)), (v8 = *v7) == 0))
  {
    v10 = 0;
    v11 = 0;
  }

  else if (walkSymbolRefs(a1, a2, a3))
  {
    v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID();
    if ((*(**(a1 + 48) + 32))(*(a1 + 48), v9))
    {
      v8 = 0;
      v10 = 0x100000000;
      v11 = 1;
    }

    else
    {
      v12 = *(a1 + 44);
      v13 = v12 & 0x7FFFFF;
      if ((v12 & 0x7FFFFF) != 0)
      {
        v14 = ((a1 + 16 * ((v12 >> 23) & 1) + ((v12 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
      }

      else
      {
        v14 = 0;
        v13 = 0;
      }

      v18[0] = a2;
      v18[1] = a3;
      v17 = v18;
      v15 = walkSymbolTable(v14, v13, llvm::function_ref<std::optional<mlir::WalkResult> ()(mlir::Operation *)>::callback_fn<walkSymbolUses(llvm::MutableArrayRef<mlir::Region>,llvm::function_ref<mlir::WalkResult ()(mlir::SymbolTable::SymbolUse)>)::$_0>, &v17);
      v8 = v15 & 0xFFFFFF00;
      v11 = v15;
      v10 = v15 & 0xFF00000000;
    }
  }

  else
  {
    v11 = 0;
    v8 = 0;
    v10 = 0x100000000;
  }

  return v11 | v8 | v10;
}

uint64_t walkSymbolRefs(mlir::Operation *a1, uint64_t a2, uint64_t a3)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v8[0] = a2;
  v8[1] = a3;
  v7 = a1;
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v11 = 0;
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  v12[0] = &unk_286E78E00;
  v12[1] = v8;
  v12[2] = &v7;
  v12[3] = v12;
  mlir::AttrTypeWalker::addWalk(v9, v12);
  std::__function::__value_func<mlir::WalkResult ()(mlir::Attribute)>::~__value_func[abi:nn200100](v12);
  v4 = mlir::AttrTypeWalker::walkImpl<mlir::Attribute,std::vector<std::function<mlir::WalkResult ()(mlir::Attribute)>>>(v9, AttrDictionary, v9, 0);
  MEMORY[0x25F891030](v10, 8);
  v12[0] = &v9[1] + 1;
  std::vector<std::function<mlir::WalkResult ()(mlir::Type)>>::__destroy_vector::operator()[abi:nn200100](v12);
  v12[0] = v9;
  std::vector<std::function<mlir::WalkResult ()(mlir::Attribute)>>::__destroy_vector::operator()[abi:nn200100](v12);
  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

__n128 _ZNKSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIZL14walkSymbolRefsPNS2_9OperationEN4llvm12function_refIFNS2_10WalkResultENS2_11SymbolTable9SymbolUseEEEEE3__0NS2_13SymbolRefAttrENS2_9AttributeES9_EENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSG_E_NS_9allocatorISP_EEFS9_SG_EE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E78E00;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIZL14walkSymbolRefsPNS2_9OperationEN4llvm12function_refIFNS2_10WalkResultENS2_11SymbolTable9SymbolUseEEEEE3__0NS2_13SymbolRefAttrENS2_9AttributeES9_EENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSG_E_NS_9allocatorISP_EEFS9_SG_EEclEOSG_(uint64_t a1, uint64_t a2)
{
  if (*(**a2 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    return 2 * ((**(a1 + 8))(*(*(a1 + 8) + 8), **(a1 + 16)) != 0);
  }

  else
  {
    return 1;
  }
}

uint64_t llvm::function_ref<std::optional<mlir::WalkResult> ()(mlir::Operation *)>::callback_fn<walkSymbolUses(llvm::MutableArrayRef<mlir::Region>,llvm::function_ref<mlir::WalkResult ()(mlir::SymbolTable::SymbolUse)>)::$_0>(uint64_t **a1, uint64_t a2)
{
  if ((*(a2 + 44) & 0x7FFFFF) == 1 && ((v2 = *(a2 + 48), *(v2 + 16) == &mlir::detail::TypeIDResolver<void,void>::id) ? (v3 = (*(v2 + 8) + 32)) : (v3 = (v2 + 24)), !*v3))
  {
    return 0;
  }

  else
  {
    return walkSymbolRefs(a2, **a1, (*a1)[1]) | 0x100000000;
  }
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::SymbolTable::SymbolUse)>::callback_fn<std::optional<mlir::SymbolTable::UseRange> getSymbolUsesImpl<mlir::Operation *>(mlir::Operation *)::{lambda(mlir::SymbolTable::SymbolUse)#1}>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *&v4 = a2;
  *(&v4 + 1) = a3;
  std::vector<mlir::SymbolTable::SymbolUse>::push_back[abi:nn200100](*a1, &v4);
  return 1;
}

void std::vector<mlir::SymbolTable::SymbolUse>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      std::vector<mlir::SymbolTable::SymbolUse>::__throw_length_error[abi:nn200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = (16 * v8);
    *v12 = *a2;
    v5 = 16 * v8 + 16;
    v13 = &v12[-(v7 >> 4)];
    memcpy(v13, v6, v7);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

BOOL isReferencePrefixOf(void *a1, void *a2)
{
  if (a2 == a1)
  {
    return 1;
  }

  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id && !a2[3])
  {
    return 0;
  }

  if (a2[1] != a1[1])
  {
    return 0;
  }

  v3 = a1[3];
  if (v3 >= a2[3])
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  v4 = a2[2];
  v5 = a1[2];
  v6 = 8 * v3 - 8;
  do
  {
    v8 = *v4++;
    v7 = v8;
    v9 = *v5++;
    result = v9 == v7;
    v10 = v9 != v7 || v6 == 0;
    v6 -= 8;
  }

  while (!v10);
  return result;
}

void collectSymbolScopes(mlir::Operation *a1, mlir::Operation *a2, uint64_t a3)
{
  v75[1] = *MEMORY[0x277D85DE8];
  Attr = mlir::Operation::getAttr(a2, "sym_name", 8uLL);
  if (Attr)
  {
    if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v8 = Attr;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v63[0] = &v66;
  v63[1] = 4;
  v64 = 0;
  v65 = 1;
  v67[0] = v68;
  v67[1] = 0x400000000;
  v9 = a3;
  while (v9 != a2)
  {
    llvm::SmallPtrSetImpl<mlir::Operation *>::insert(v63, v9, &__src);
    if (v71 == 1)
    {
      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v67, v9);
    }

    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = *(v10 + 24) & 0xFFFFFFFFFFFFFFF8;
      if (v11)
      {
        v9 = *(v11 + 16);
        if (v9)
        {
          continue;
        }
      }
    }

    v12 = *(a2 + 2);
    if (v12 && (v13 = *(v12 + 24) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v14 = *(v13 + 16);
    }

    else
    {
      v14 = 0;
    }

    while (!llvm::SmallPtrSetImplBase::contains_imp(v63, v14))
    {
      v16 = v14[2];
      if (!v16 || (v17 = *(v16 + 24) & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        v14 = 0;
        break;
      }

      v14 = *(v17 + 16);
      if (!v14)
      {
        break;
      }
    }

    v60 = v62;
    v61 = 0x200000000;
    v18 = *(***(a2 + 3) + 32);
    v19 = mlir::SymbolRefAttr::get(v8, 0, 0, v15);
    llvm::SmallVectorTemplateBase<mlir::SymbolRefAttr,true>::push_back(&v60, v19);
    v21 = *(a2 + 2);
    if (v21 && (*(v21 + 24) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v22 = *((*(v21 + 24) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v22 = 0;
    }

    if (v22 == v14)
    {
      if (v14 != a3)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v73 = v75;
      v75[0] = v19;
      v74 = 0x100000001;
      v72 = 261;
      __src = "sym_name";
      v70 = 8;
      v23 = mlir::StringAttr::get(v18, &__src, v20);
      v24 = mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID();
      if ((*(**(v22 + 48) + 32))(*(v22 + 48), v24))
      {
        while (1)
        {
          v25 = mlir::Operation::getAttr(v22, v23);
          if (!v25 || (v27 = v25, *(*v25 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id))
          {
LABEL_52:
            v44 = 0;
            goto LABEL_61;
          }

          v28 = mlir::SymbolRefAttr::get(v25, v73, v74, v26);
          llvm::SmallVectorTemplateBase<mlir::SymbolRefAttr,true>::push_back(&v60, v28);
          v30 = *(v22 + 16);
          if (v30 && (v31 = *(v30 + 24) & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v22 = *(v31 + 16);
          }

          else
          {
            v22 = 0;
          }

          if (v22 == v14)
          {
            break;
          }

          v32 = v73;
          v33 = mlir::SymbolRefAttr::get(v27, 0, 0, v29);
          v34 = v73;
          v35 = v74;
          if (&v73[2 * v74] == v32)
          {
            llvm::SmallVectorTemplateBase<mlir::FlatSymbolRefAttr,true>::push_back(&v73, v33);
          }

          else
          {
            if (v74 >= HIDWORD(v74))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v75, v74 + 1, 8);
              v36 = v73;
              v35 = v74;
            }

            else
            {
              v36 = v73;
            }

            v37 = (v36 + v32 - v34);
            *&v36[2 * v35] = *&v36[2 * v35 - 2];
            v38 = v74;
            v39 = &v73[2 * v74 - 2];
            if (v39 != v37)
            {
              memmove(v37 + 1, v37, v39 - v37);
              v38 = v74;
            }

            LODWORD(v74) = v38 + 1;
            *v37 = v33;
          }

          v40 = mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID();
          if (((*(**(v22 + 48) + 32))(*(v22 + 48), v40) & 1) == 0)
          {
            goto LABEL_52;
          }
        }

        v44 = 1;
      }

      else
      {
        v44 = 0;
      }

LABEL_61:
      if (v73 != v75)
      {
        free(v73);
      }

      if (v14 != a3)
      {
        if (v44)
        {
LABEL_65:
          __src = *&v60[8 * v61 - 8];
          v70 = a3 & 0xFFFFFFFFFFFFFFFBLL;
          *a1 = a1 + 16;
          *(a1 + 1) = 0x200000000;
        }

        else
        {
          *a1 = a1 + 16;
          *(a1 + 1) = 0x200000000;
        }

LABEL_82:
        if (v60 != v62)
        {
          free(v60);
        }

        goto LABEL_84;
      }

      v21 = *(a2 + 2);
    }

    *a1 = a1 + 16;
    *(a1 + 1) = 0x200000000;
    if (v21 && (v48 = *(v21 + 24) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v49 = *(v48 + 16);
    }

    else
    {
      v49 = 0;
    }

    if (v61)
    {
      v50 = 0;
      v51 = 0;
      v52 = 8 * v61;
      do
      {
        v53 = *&v60[v50];
        v54 = *(v49 + 40);
        v55 = *(v49 + 44);
        if (v51 >= *(a1 + 3))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v51 + 1, 16);
          v51 = *(a1 + 2);
        }

        v56 = (*a1 + 16 * v51);
        *v56 = v53;
        v56[1] = (((v49 + 16 * ((v55 >> 23) & 1) + ((v55 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * v54) | 4;
        v51 = *(a1 + 2) + 1;
        *(a1 + 2) = v51;
        v57 = *(v49 + 16);
        if (v57 && (v58 = *(v57 + 24) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v49 = *(v58 + 16);
        }

        else
        {
          v49 = 0;
        }

        v50 += 8;
      }

      while (v52 != v50);
    }

    goto LABEL_82;
  }

  v41 = *(a3 + 16);
  if (v41 && (v42 = *(v41 + 24) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v43 = *(v42 + 16);
  }

  else
  {
    v43 = 0;
  }

  NearestSymbolTable = mlir::SymbolTable::getNearestSymbolTable(v43, v7);
  v47 = *(a2 + 2);
  if (v47)
  {
    v47 = *(v47 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (v47)
    {
      v47 = *(v47 + 16);
    }
  }

  if (NearestSymbolTable == v47)
  {
    __src = mlir::SymbolRefAttr::get(v8, 0, 0, v46);
    v70 = a3 & 0xFFFFFFFFFFFFFFFBLL;
    *a1 = a1 + 16;
    *(a1 + 1) = 0x200000000;
  }

  else
  {
    *a1 = a1 + 16;
    *(a1 + 1) = 0x200000000;
  }

LABEL_84:
  if (v67[0] != v68)
  {
    free(v67[0]);
  }

  if ((v65 & 1) == 0)
  {
    free(v63[0]);
  }

  v59 = *MEMORY[0x277D85DE8];
}

void llvm::SmallVectorImpl<anonymous namespace::SymbolScope>::append(uint64_t a1, void *__src, uint64_t a3)
{
  v6 = 16 * a3;
  v7 = *(a1 + 8);
  v8 = v7 + ((16 * a3) >> 4);
  if (v8 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 16);
    LODWORD(v7) = *(a1 + 8);
  }

  if (a3)
  {
    memcpy((*a1 + 16 * v7), __src, v6);
    LODWORD(v7) = *(a1 + 8);
  }

  *(a1 + 8) = v7 + (v6 >> 4);
}

void llvm::SmallVectorTemplateBase<mlir::SymbolRefAttr,true>::push_back(uint64_t a1, uint64_t a2)
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

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::SymbolTable::SymbolUse)>::callback_fn<std::optional<mlir::WalkResult> anonymous namespace::SymbolScope::walk<std::optional<mlir::SymbolTable::UseRange> getSymbolUsesImpl<mlir::Operation *,mlir::Operation>(mlir::Operation *,mlir::Operation *)::{lambda(mlir::SymbolTable::SymbolUse)#1},(void *)0>(mlir::Operation *)::{lambda(mlir::SymbolTable::SymbolUse)#1}>(uint64_t a1, uint64_t a2, void *a3)
{
  *&v5 = a2;
  *(&v5 + 1) = a3;
  if (isReferencePrefixOf(**a1, a3))
  {
    std::vector<mlir::SymbolTable::SymbolUse>::push_back[abi:nn200100](*(a1 + 8), &v5);
  }

  return 1;
}

void llvm::SmallVectorImpl<mlir::FlatSymbolRefAttr>::append<mlir::FlatSymbolRefAttr const*,void>(uint64_t a1, _BYTE *__src, _BYTE *a3)
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

__n128 _ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZL24replaceAllSymbolUsesImplIPNS2_9OperationES9_EN4llvm13LogicalResultET_NS2_10StringAttrEPT0_EUlNS2_13SymbolRefAttrEE_SH_NS2_9AttributeENS_4pairISJ_NS2_10WalkResultEEEEENS_9enable_ifIXoontsr3stdE9is_same_vISF_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINSK_ISO_SL_EEEEEEvE4typeEOSD_EUlSJ_E_NS_9allocatorISW_EEFNSQ_ISM_EESJ_EE7__cloneEPNS0_6__baseIS10_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E78E48;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZL24replaceAllSymbolUsesImplIPNS2_9OperationES9_EN4llvm13LogicalResultET_NS2_10StringAttrEPT0_EUlNS2_13SymbolRefAttrEE_SH_NS2_9AttributeENS_4pairISJ_NS2_10WalkResultEEEEENS_9enable_ifIXoontsr3stdE9is_same_vISF_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINSK_ISO_SL_EEEEEEvE4typeEOSD_EUlSJ_E_NS_9allocatorISW_EEFNSQ_ISM_EESJ_EEclEOSJ_(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X8>)
{
  v17[4] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (*(**a2 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v7 = *(a1 + 8);
    v8 = *v7;
    if (*v7 == v4)
    {
      v4 = **(a1 + 16);
    }

    else if (isReferencePrefixOf(*v7, *a2))
    {
      v10 = v8[3];
      v11 = v4[2];
      v12 = v4[3];
      if (v10)
      {
        v15 = v17;
        v16 = 0x400000000;
        llvm::SmallVectorImpl<mlir::FlatSymbolRefAttr>::append<mlir::FlatSymbolRefAttr const*,void>(&v15, v11, &v11[2 * v12]);
        *(v15 + v10 - 1) = **(a1 + 32);
        v4 = mlir::SymbolRefAttr::get(v4[1], v15, v16, v13);
        if (v15 != v17)
        {
          free(v15);
        }
      }

      else
      {
        v4 = mlir::SymbolRefAttr::get(**(a1 + 24), v11, v12, v9);
      }
    }

    *a3 = v4;
    *(a3 + 8) = 2;
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a3 = 0;
  }

  *(a3 + 16) = v5;
  v14 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::LookupBucketFor<mlir::Operation *>(uint64_t *a1, void *a2, void *a3)
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::InsertIntoBucketImpl<mlir::Operation *>(uint64_t a1, void *a2, void *a3)
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

  llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::LookupBucketFor<mlir::Operation *>(a1, a2, &v8);
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

char *llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::grow(uint64_t a1, int a2)
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
      v18 = (v4 + 8);
      v19 = 16 * v3;
      do
      {
        if ((*(v18 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::LookupBucketFor<mlir::Operation *>(a1, v18 - 1, &v30);
          *v30 = *(v18 - 1);
          v20 = v30;
          v21 = *v18;
          *v18 = 0;
          v20[1] = v21;
          ++*(a1 + 8);
          std::unique_ptr<mlir::SymbolTable>::reset[abi:nn200100](v18, 0);
        }

        v18 += 2;
        v19 -= 16;
      }

      while (v19);
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

uint64_t *std::unique_ptr<mlir::SymbolTable>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    MEMORY[0x25F891030](*(v2 + 8), 8);

    JUMPOUT(0x25F891040);
  }

  return result;
}

uint64_t *llvm::function_ref<void ()(mlir::Operation *,BOOL)>::callback_fn<mlir::SymbolUserMap::SymbolUserMap(mlir::SymbolTableCollection &,mlir::Operation *)::$_0>(uint64_t *result, uint64_t a2)
{
  v2 = (((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
  if (*v2 != v2)
  {
    v4 = result;
    for (i = v2[1]; i != v2; i = i[1])
    {
      v6 = i - 1;
      if (!i)
      {
        v6 = 0;
      }

      if (v6[4] != v6 + 4)
      {
        break;
      }
    }

    if (i != v2)
    {
      v7 = result[2];
      v8 = i - 1;
      if (!i)
      {
        v8 = 0;
      }

      result = v8[5];
      v23[0] = ((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
      v23[1] = i;
      for (j = result; j; result = j)
      {
        mlir::SymbolTable::getSymbolUses(result, &v20);
        v9 = v20;
        v10 = v21;
        for (k = v20; k != v10; k += 2)
        {
          v12 = *v4;
          *(v12 + 8) = 0;
          v13 = k[1];
          v25 = v4[1];
          lookupSymbolInImpl(a2, v13, v12, llvm::function_ref<mlir::Operation * ()(mlir::Operation *,mlir::StringAttr)>::callback_fn<mlir::SymbolTableCollection::lookupSymbolIn(mlir::Operation *,mlir::SymbolRefAttr,llvm::SmallVectorImpl<mlir::Operation *> &)::$_0>, &v25);
          v14 = *(*v4 + 8);
          if (v14)
          {
            v15 = **v4;
            v16 = 8 * v14;
            do
            {
              v17 = *v15++;
              v25 = v17;
              v18 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>>>,mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>>>::operator[]((v7 + 8), &v25);
              v19 = *k;
              llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>::insert(v18, &v19);
              v16 -= 8;
            }

            while (v16);
          }
        }

        if (v9)
        {
          if (v22)
          {
            operator delete(v9);
          }
        }

        mlir::Region::OpIterator::operator++(v23);
      }
    }
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>>>,mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>>>::operator[](uint64_t *a1, uint64_t *a2)
{
  v8 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>>>,mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>>>::LookupBucketFor<mlir::Operation *>(a1, a2, &v8);
  v5 = v8;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>>>,mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>>>::InsertIntoBucketImpl<mlir::Operation *>(a1, a2, v8);
    v6 = *a2;
    v5[2] = 0;
    v5[3] = 0;
    *v5 = v6;
    v5[1] = 0;
    v5[4] = v5 + 6;
    v5[5] = 0;
  }

  return v5 + 1;
}

uint64_t llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>::insert(uint64_t a1, uint64_t *a2)
{
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1, a2, &v6);
  v4 = v7;
  if (v7 == 1)
  {
    llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a1 + 24, *a2);
  }

  return v4;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>>>,mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>>>::LookupBucketFor<mlir::Operation *>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 48 * v6);
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
        v7 = (v4 + 48 * (v13 & v5));
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>>>,mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>>>::InsertIntoBucketImpl<mlir::Operation *>(uint64_t a1, void *a2, void *a3)
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

  llvm::DenseMap<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>>>,mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>>>::LookupBucketFor<mlir::Operation *>(a1, a2, &v8);
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

void *llvm::DenseMap<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((48 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>>>,mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>>>::moveFromOldBuckets(a1, v4, v4 + 48 * v3);

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = 48 * v10 - 48;
    v13 = vdupq_n_s64(v12 / 0x30);
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
      if (v14.i8[0])
      {
        *result = -4096;
      }

      if (v14.i8[4])
      {
        result[6] = -4096;
      }

      v11 += 2;
      result += 12;
    }

    while (((v12 / 0x30 + 2) & 0xFFFFFFFFFFFFFFELL) != v11);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>>>,mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>>>::moveFromOldBuckets(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = *result;
    v9 = 48 * v6 - 48;
    v10 = vdupq_n_s64(v9 / 0x30);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v7), xmmword_25D0A0500)));
      if (v11.i8[0])
      {
        *v8 = -4096;
      }

      if (v11.i8[4])
      {
        v8[6] = -4096;
      }

      v7 += 2;
      v8 += 12;
    }

    while (((v9 / 0x30 + 2) & 0xFFFFFFFFFFFFFFELL) != v7);
  }

  while (a2 != a3)
  {
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v16 = 0;
      llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>>>,mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>>>::LookupBucketFor<mlir::Operation *>(v5, a2, &v16);
      *v16 = *a2;
      v12 = v16;
      *(v16 + 24) = 0;
      *(v12 + 8) = 0;
      *(v12 + 16) = 0;
      *(v12 + 8) = *(a2 + 8);
      *(a2 + 8) = 0;
      *(v12 + 16) = *(a2 + 16);
      *(v12 + 32) = v12 + 48;
      *(a2 + 16) = 0;
      v13 = *(v12 + 20);
      *(v12 + 20) = *(a2 + 20);
      *(a2 + 20) = v13;
      v14 = *(v12 + 24);
      *(v12 + 24) = *(a2 + 24);
      *(a2 + 24) = v14;
      *(v12 + 40) = 0;
      if (*(a2 + 40))
      {
        llvm::SmallVectorImpl<mlir::Operation *>::operator=(v12 + 32, a2 + 32);
      }

      ++*(v5 + 8);
      v15 = *(a2 + 32);
      if ((a2 + 48) != v15)
      {
        free(v15);
      }

      result = MEMORY[0x25F891030](*(a2 + 8), 8);
    }

    a2 += 48;
  }

  return result;
}

uint64_t llvm::SmallVectorImpl<mlir::Operation *>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      llvm::SmallVectorImpl<mlir::Operation *>::assignRemote(a1, a2);
      return a1;
    }

    v6 = *(a2 + 8);
    v7 = *(a1 + 8);
    if (v7 >= v6)
    {
      if (v6)
      {
        memmove(*a1, v4, 8 * v6);
      }

      goto LABEL_14;
    }

    if (*(a1 + 12) >= v6)
    {
      if (v7)
      {
        memmove(*a1, v4, 8 * v7);
        goto LABEL_12;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6, 8);
    }

    v7 = 0;
LABEL_12:
    v8 = *(a2 + 8) - v7;
    if (v8)
    {
      memcpy((*a1 + 8 * v7), (*a2 + 8 * v7), 8 * v8);
    }

LABEL_14:
    *(a1 + 8) = v6;
    *(a2 + 8) = 0;
  }

  return a1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::LookupBucketFor<mlir::Operation *>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::InsertIntoBucketImpl<mlir::Operation *>(a1, a2, v10);
    v7 = result;
    *result = *a2;
    v8 = 1;
  }

  v9 = *a1 + 8 * *(a1 + 16);
  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = v8;
  return result;
}

{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::LookupBucketFor<mlir::Operation *>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::InsertIntoBucketImpl<mlir::Operation *>(a1, a2, v10);
    v7 = result;
    *result = *a2;
    v8 = 1;
  }

  v9 = *a1 + 8 * *(a1 + 16);
  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = v8;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::LookupBucketFor<mlir::Operation *>(uint64_t *a1, void *a2, void *a3)
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::InsertIntoBucketImpl<mlir::Operation *>(uint64_t a1, void *a2, void *a3)
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

  llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::LookupBucketFor<mlir::Operation *>(a1, a2, &v8);
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

char *llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::moveFromOldBuckets(a1, v4, &v4[v3]);

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

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::moveFromOldBuckets(uint64_t result, void *a2, void *a3)
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
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::LookupBucketFor<mlir::Operation *>(v5, a2, &v14);
      *v14 = *a2;
      ++*(v5 + 8);
    }

    ++a2;
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>>>,mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>>>::doFind<mlir::Operation const*>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  v4 = v2 - 1;
  v5 = ((*a2 >> 4) ^ (*a2 >> 9)) & v4;
  result = (*a1 + 48 * v5);
  v7 = *result;
  if (*a2 != *result)
  {
    v8 = 1;
    while (v7 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      result = (v3 + 48 * v5);
      v7 = *result;
      if (*a2 == *result)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

BOOL mlir::Type::isSignlessIntOrFloat(uint64_t **this)
{
  v1 = **this;
  if (*(v1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && !(*(*this + 2) >> 30))
  {
    return 1;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  return mlir::detail::InterfaceMap::lookup(v1 + 8, v3) != 0;
}

BOOL mlir::Type::isIntOrFloat(uint64_t **this)
{
  v1 = **this;
  if (*(v1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return 1;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  return mlir::detail::InterfaceMap::lookup(v1 + 8, v2) != 0;
}

uint64_t mlir::Type::getIntOrFloatBitWidth(uint64_t **this)
{
  v1 = *this;
  v2 = **this;
  if (*(v2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return v1[1] & 0x3FFFFFFF;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  v4 = mlir::detail::InterfaceMap::lookup(v2 + 8, v3);
  return *((*v4)(v4, v1) + 12);
}

unint64_t mlir::TypeRange::dereference_iterator(uint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFFF8;
  v3 = a1 & 6;
  if ((a1 & 6) == 0 && v2)
  {
    v2 = *(v2 + 8 * a2);
    return *(v2 + 8) & 0xFFFFFFFFFFFFFFF8;
  }

  if (v3 == 4 && v2)
  {
    v2 = *(v2 + 32 * a2 + 24);
    return *(v2 + 8) & 0xFFFFFFFFFFFFFFF8;
  }

  if (v3 == 6 && v2)
  {
    if (a2)
    {
      v5 = *(v2 + 8) & 7;
      if (v5 != 6)
      {
        v6 = (5 - v5);
        if (a2 <= v6)
        {
          v2 -= 16 * a2;
          return *(v2 + 8) & 0xFFFFFFFFFFFFFFF8;
        }

        v2 -= 16 * v6;
        a2 -= v6;
      }

      v2 -= 24 * a2;
    }

    return *(v2 + 8) & 0xFFFFFFFFFFFFFFF8;
  }

  if (v3 != 2)
  {
    v2 = 0;
  }

  return *(v2 + 8 * a2);
}

uint64_t *mlir::getElementTypeOrSelf(uint64_t a1)
{
  v1 = (*(a1 + 8) & 0xFFFFFFFFFFFFFFF8);
  result = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v1);
  v4 = result;
  if (result)
  {
    result = (*(v3 + 8))(v3, result);
  }

  if (!v4)
  {
    return v1;
  }

  return result;
}

BOOL mlir::verifyCompatibleShape(uint64_t *a1, uint64_t *a2)
{
  v3 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a1);
  v5 = v4;
  v6 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a2);
  v8 = v6;
  if (v3)
  {
    if (v6)
    {
      v9 = v7;
      if (!(*(v5 + 16))(v5, v3) || !(*(v9 + 16))(v9, v8))
      {
        return 1;
      }

      v10 = (*(v5 + 24))(v5, v3);
      v12 = v11;
      v13 = (*(v9 + 24))(v9, v8);
      if (v12 == v14)
      {
        if (v12)
        {
          for (i = 8 * v12 - 8; ; i -= 8)
          {
            v16 = i;
            if (*v10 != 0x8000000000000000 && *v13 != 0x8000000000000000 && *v10 != *v13)
            {
              break;
            }

            ++v10;
            ++v13;
            v18 = 1;
            if (!v16)
            {
              return v18;
            }
          }

          return 0;
        }

        return 1;
      }
    }

    return 0;
  }

  return v6 == 0;
}

uint64_t mlir::verifyCompatibleShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v7 = 0;
  while (1)
  {
    v8 = mlir::TypeRange::dereference_iterator(a1, v7);
    v9 = mlir::TypeRange::dereference_iterator(a3, v7);
    if (!mlir::verifyCompatibleShape(v8, v9))
    {
      break;
    }

    if (a2 == ++v7)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t mlir::verifyCompatibleShapes(uint64_t a1, unint64_t a2)
{
  v95[16] = *MEMORY[0x277D85DE8];
  v93 = v95;
  v94 = 0x800000000;
  if (a2 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v95, a2, 16);
    v4 = v94;
    v5 = v93;
    goto LABEL_5;
  }

  if (a2)
  {
    v4 = 0;
    v5 = v95;
LABEL_5:
    v6 = 0;
    v7 = &v5[2 * v4];
    do
    {
      v8 = mlir::TypeRange::dereference_iterator(a1, v6);
      *v7 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v8);
      v7[1] = v9;
      v7 += 2;
      ++v6;
    }

    while (a2 != v6);
    v10 = v94;
    v11 = v93;
    goto LABEL_8;
  }

  v10 = 0;
  v11 = v95;
LABEL_8:
  v12 = (v10 + a2);
  LODWORD(v94) = v12;
  if (!v12)
  {
LABEL_12:
    v16 = 1;
    goto LABEL_110;
  }

  v13 = 0;
  v14 = v12;
  v15 = 16 * v12;
  while (!*&v11[v13])
  {
    v13 += 16;
    if (v15 == v13)
    {
      goto LABEL_12;
    }
  }

  v17 = 0;
  do
  {
    if (!*&v11[v17])
    {
      goto LABEL_40;
    }

    v17 += 16;
  }

  while (v15 != v17);
  if (a2)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    while (1)
    {
      v21 = mlir::TypeRange::dereference_iterator(a1, v20);
      if (*(*v21 + 136) != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || ((v22 = *(v21 + 40), v23 = (*(v21 + 32) + v22), v24 = 1, (v25 = memchr(*(v21 + 32), 1, v22)) != 0) ? (v26 = v25 == v23) : (v26 = 1), v26))
      {
        v19 = 1;
        v24 = v18;
      }

      if (v24 & 1) != 0 && (v19)
      {
        break;
      }

      ++v20;
      v18 = v24;
      if (a2 == v20)
      {
        v11 = v93;
        LODWORD(v12) = v94;
        v14 = v94;
        goto LABEL_29;
      }
    }

LABEL_40:
    v16 = 0;
    goto LABEL_110;
  }

LABEL_29:
  v27 = v11;
  v28 = v11;
  if (v14)
  {
    v29 = 16 * v14;
    v28 = v11;
    do
    {
      v30 = *v28;
      if ((*(*(v28 + 1) + 16))())
      {
        break;
      }

      v28 += 16;
      v29 -= 16;
    }

    while (v29);
    v27 = v93;
    LODWORD(v12) = v94;
  }

  v31 = &v11[16 * v14];
  v32 = &v27[16 * v12];
  v90 = v92;
  v91 = 0x800000000;
  if (v28 == v32)
  {
    v36 = 0;
    v33 = 0;
    v37 = 8;
  }

  else
  {
    v33 = 0;
    v34 = v28;
    do
    {
      do
      {
        v34 += 16;
        if (v34 == v31)
        {
          break;
        }

        v35 = *v34;
      }

      while (((*(*(v34 + 1) + 16))() & 1) == 0);
      ++v33;
    }

    while (v34 != v32);
    v36 = v91;
    v37 = HIDWORD(v91);
  }

  v38 = v33 + v36;
  if (v38 <= v37)
  {
    v39 = v36;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v92, v38, 16);
    v39 = v91;
    v36 = v91;
  }

  if (v28 != v32)
  {
    v40 = v90 + 16 * v39;
    do
    {
      *v40 = *v28;
      do
      {
        v28 += 16;
        if (v28 == v31)
        {
          break;
        }

        v41 = *v28;
      }

      while (((*(*(v28 + 1) + 16))() & 1) == 0);
      ++v40;
    }

    while (v28 != v32);
    v36 = v91;
  }

  LODWORD(v91) = v36 + v33;
  if (!(v36 + v33))
  {
    goto LABEL_106;
  }

  v42 = *v90;
  (*(*(v90 + 1) + 24))();
  v44 = v43;
  if (v91)
  {
    v45 = v90;
    v46 = v90 + 16 * v91;
    do
    {
      v47 = *v45;
      (*(*(v45 + 1) + 24))();
      if (v44 != v48)
      {
        goto LABEL_107;
      }

      v45 += 16;
    }

    while (v45 != v46);
  }

  if (v44 < 1)
  {
LABEL_106:
    v16 = 1;
    goto LABEL_108;
  }

  LODWORD(v49) = 0;
  while (1)
  {
    v50 = v90;
    v51 = v90 + 16 * v91;
    if (v91)
    {
      v52 = 16 * v91;
      while (1)
      {
        v53 = *v50;
        (*(*(v50 + 1) + 24))();
        if (v54 >= v49)
        {
          break;
        }

        v50 += 16;
        v52 -= 16;
        if (!v52)
        {
          v50 = v51;
          break;
        }
      }

      v55 = v50;
      v50 = v90;
      v56 = v91;
    }

    else
    {
      v56 = 0;
      v55 = v90;
    }

    v57 = &v50[16 * v56];
    v87 = v89;
    v88 = 0x800000000;
    if (v55 == v57)
    {
      v62 = 0;
      v58 = 0;
      v63 = 8;
    }

    else
    {
      v58 = 0;
      v59 = v55;
      do
      {
        do
        {
          v59 += 16;
          if (v59 == v51)
          {
            break;
          }

          v60 = *v59;
          (*(*(v59 + 1) + 24))();
        }

        while (v61 < v49);
        ++v58;
      }

      while (v59 != v57);
      v62 = v88;
      v63 = HIDWORD(v88);
    }

    v64 = v58 + v62;
    if (v64 > v63)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v89, v64, 8);
      v62 = v88;
    }

    v65 = v87;
    if (v55 != v57)
    {
      v66 = v87 + 8 * v62;
      do
      {
        v67 = *v55;
        *v66 = *((*(*(v55 + 1) + 24))() + 8 * v49);
        do
        {
          v55 += 16;
          if (v55 == v51)
          {
            break;
          }

          v68 = *v55;
          (*(*(v55 + 1) + 24))();
        }

        while (v69 < v49);
        ++v66;
      }

      while (v55 != v57);
      v62 = v88;
      v65 = v87;
    }

    v70 = v62 + v58;
    LODWORD(v88) = v62 + v58;
    if (v62 + v58)
    {
      v71 = *v65;
      v72 = 8 * v70;
      v73 = v72;
      v74 = v65;
      do
      {
        v76 = *v74++;
        v75 = v76;
        if (v76 != 0x8000000000000000)
        {
          v71 = v75;
        }

        v73 -= 8;
      }

      while (v73);
      v77 = v72 - 8;
      v78 = v65;
      do
      {
        v80 = *v78++;
        v79 = v80;
        v82 = v80 == 0x8000000000000000 || v71 == v79;
        v83 = !v82 || v77 == 0;
        v77 -= 8;
      }

      while (!v83);
      v84 = !v82;
    }

    else
    {
      v84 = 0;
    }

    if (v65 != v89)
    {
      free(v65);
    }

    if (v84)
    {
      break;
    }

    v49 = (v49 + 1);
    if (v44 <= v49)
    {
      goto LABEL_106;
    }
  }

LABEL_107:
  v16 = 0;
LABEL_108:
  if (v90 != v92)
  {
    free(v90);
  }

LABEL_110:
  if (v93 != v95)
  {
    free(v93);
  }

  v85 = *MEMORY[0x277D85DE8];
  return v16;
}

unint64_t mlir::insertTypesInto(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {
    v9 = 0;
    if (a6)
    {
      v12 = 0;
      v13 = a6 - 1;
      v14 = 4 * a4 - 4;
      do
      {
        v15 = v9;
        v16 = mlir::TypeRange::dereference_iterator(a5, v12);
        v9 = *(a3 + 4 * v12);
        llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a7, a1, v15, a1, v9);
        llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a7, v16);
        if (!v14)
        {
          break;
        }

        v14 -= 4;
      }

      while (v13 != v12++);
    }

    llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a7, a1, v9, a1, a2);
    v18 = *(a7 + 8);
    return *a7 & 0xFFFFFFFFFFFFFFF9 | 2;
  }

  return a1;
}

unint64_t mlir::filterTypesOut(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + 8);
  if (v5)
  {
    v8 = *a3;
    v9 = 8 * v5;
    while (!*v8)
    {
      ++v8;
      v9 -= 8;
      if (!v9)
      {
        return a1;
      }
    }

    v10 = a2;
    if (a2)
    {
      v11 = 0;
      do
      {
        if (((*(*a3 + 8 * (v11 >> 6)) >> v11) & 1) == 0)
        {
          v14 = mlir::TypeRange::dereference_iterator(a1, v11);
          llvm::SmallVectorImpl<mlir::Type>::emplace_back<mlir::Type>(a4, &v14);
        }

        ++v11;
      }

      while (v10 != v11);
    }

    v12 = *(a4 + 8);
    return *a4 & 0xFFFFFFFFFFFFFFF9 | 2;
  }

  return a1;
}

unint64_t mlir::Value::getParentRegion(mlir::Value *this)
{
  if ((~*(*this + 8) & 7) != 0)
  {
    v1 = *this;
  }

  else
  {
    v1 = 0;
  }

  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = *(v1 + 8) & 7;
  if (v2 == 6)
  {
    v3 = v1 + 24 * *(v1 + 16) + 120;
    if (!v3)
    {
LABEL_7:
      v4 = *(*this + 16);
      return *(v4 + 24) & 0xFFFFFFFFFFFFFFF8;
    }
  }

  else
  {
    v3 = v1 + 16 * v2 + 16;
  }

  v4 = *(v3 + 16);
  if (v4)
  {
    return *(v4 + 24) & 0xFFFFFFFFFFFFFFF8;
  }

  return 0;
}

uint64_t ***mlir::Value::replaceAllUsesExcept(uint64_t ***result, uint64_t *a2, uint64_t a3)
{
  v3 = **result;
  if (v3)
  {
    do
    {
      v4 = *v3;
      if (v3[2] != a3)
      {
        v5 = v3[1];
        if (v5)
        {
          *v5 = v4;
          if (v4)
          {
            v4[1] = v3[1];
          }
        }

        v3[3] = a2;
        v6 = *a2;
        *v3 = *a2;
        v3[1] = a2;
        if (v6)
        {
          *(v6 + 8) = v3;
        }

        *a2 = v3;
      }

      v3 = v4;
    }

    while (v4);
  }

  return result;
}

uint64_t ***mlir::Value::replaceUsesWithIf(uint64_t ***result, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t *), uint64_t a4)
{
  v4 = **result;
  if (v4)
  {
    do
    {
      v8 = *v4;
      result = a3(a4, v4);
      if (result)
      {
        v9 = v4[1];
        if (v9)
        {
          v10 = *v4;
          *v9 = *v4;
          if (v10)
          {
            v10[1] = v4[1];
          }
        }

        v4[3] = a2;
        v11 = *a2;
        *v4 = *a2;
        v4[1] = a2;
        if (v11)
        {
          *(v11 + 8) = v4;
        }

        *a2 = v4;
      }

      v4 = v8;
    }

    while (v8);
  }

  return result;
}

void mlir::IRObjectWithUseList<mlir::OpOperand>::shuffleUseList(void *a1, unsigned int *a2, unint64_t a3)
{
  v3 = a3;
  v16[6] = *MEMORY[0x277D85DE8];
  v14 = v16;
  v15 = 0x600000000;
  llvm::SmallVectorImpl<mlir::detail::IROperandBase *>::resizeImpl<false>(&v14, a3);
  if (v3)
  {
    v6 = a1;
    do
    {
      v6 = *v6;
      v7 = *a2++;
      *(v14 + v7) = v6;
      --v3;
    }

    while (v3);
  }

  v8 = v14;
  v9 = *v14;
  *a1 = *v14;
  *v9 = 0;
  v9[1] = a1;
  if (v15 != 1)
  {
    v10 = v8 + 1;
    v11 = 8 * v15 - 8;
    do
    {
      v12 = *v10;
      *v9 = *v10;
      if (v12)
      {
        v12[1] = v9;
        v9 = *v10;
      }

      else
      {
        v9 = 0;
      }

      ++v10;
      v11 -= 8;
    }

    while (v11);
  }

  *v9 = 0;
  if (v8 != v16)
  {
    free(v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::detail::OpResultImpl::getNextResultAtOffset(uint64_t this, uint64_t a2)
{
  if (a2)
  {
    if (this)
    {
      v2 = *(this + 8) & 7;
      if (v2 != 6)
      {
        v3 = (5 - v2);
        if (a2 <= v3)
        {
          this -= 16 * a2;
          return this;
        }

        this -= 16 * v3;
        a2 -= v3;
      }
    }

    this -= 24 * a2;
  }

  return this;
}

void llvm::SmallVectorImpl<mlir::detail::IROperandBase *>::resizeImpl<false>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != a2)
  {
    if (v2 <= a2)
    {
      if (*(a1 + 12) < a2)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), a2, 8);
        v2 = *(a1 + 8);
      }

      if (a2 != v2)
      {
        bzero((*a1 + 8 * v2), 8 * (a2 - v2));
      }
    }

    *(a1 + 8) = a2;
  }
}

void mlir::TypeRangeRange::TypeRangeRange<mlir::OperandRangeRange>(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = *a4;
  v5 = a4[1];
  operator new();
}

uint64_t llvm::iterator_range<llvm::mapped_iterator<llvm::detail::SafeIntIterator<unsigned int,false>,std::function<mlir::TypeRange ()(unsigned int)>,mlir::TypeRange>>::iterator_range(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  v5 = a1 + 8;
  *(a1 + 40) = 0;
  if (*(a2 + 40) == 1)
  {
    std::__function::__value_func<mlir::TypeRange ()>::__value_func[abi:nn200100](v5, a2 + 8);
    *(a1 + 40) = 1;
  }

  v6 = *a3;
  *(a1 + 56) = 0;
  *(a1 + 48) = v6;
  *(a1 + 88) = 0;
  if (*(a3 + 40) == 1)
  {
    std::__function::__value_func<mlir::TypeRange ()>::__value_func[abi:nn200100](a1 + 56, (a3 + 1));
    *(a1 + 88) = 1;
  }

  return a1;
}

__n128 std::__function::__func<std::function<mlir::TypeRange ()(unsigned int)> mlir::TypeRangeRange::getRangeFn<mlir::OperandRangeRange>(mlir::OperandRangeRange const&)::{lambda(unsigned int)#1},std::allocator<std::function<mlir::TypeRange ()(unsigned int)> mlir::TypeRangeRange::getRangeFn<mlir::OperandRangeRange>(mlir::OperandRangeRange const&)::{lambda(unsigned int)#1}>,mlir::TypeRange ()(unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E78E90;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

unint64_t std::__function::__func<std::function<mlir::TypeRange ()(unsigned int)> mlir::TypeRangeRange::getRangeFn<mlir::OperandRangeRange>(mlir::OperandRangeRange const&)::{lambda(unsigned int)#1},std::allocator<std::function<mlir::TypeRange ()(unsigned int)> mlir::TypeRangeRange::getRangeFn<mlir::OperandRangeRange>(mlir::OperandRangeRange const&)::{lambda(unsigned int)#1}>,mlir::TypeRange ()(unsigned int)>::operator()(void *a1, unsigned int *a2)
{
  v2 = a1[3] + *a2;
  if (v2)
  {
    LODWORD(v3) = 0;
    v4 = 4 * v2;
    v5 = *(a1[2] + 24);
    do
    {
      v6 = *v5++;
      v3 = (v6 + v3);
      v4 -= 4;
    }

    while (v4);
  }

  else
  {
    v3 = 0;
  }

  v7 = *(*(a1[2] + 24) + 4 * v2);
  return (a1[1] + 32 * v3) & 0xFFFFFFFFFFFFFFF9 | 4;
}

uint64_t std::__function::__value_func<mlir::TypeRange ()(unsigned int)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

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

uint64_t std::__function::__value_func<mlir::TypeRange ()(unsigned int)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t anonymous namespace::OperationVerifier::verifyOpAndDominance(_anonymous_namespace_::OperationVerifier *this, mlir::Operation *a2)
{
  v129 = *MEMORY[0x277D85DE8];
  v117 = v119;
  v119[0] = a2;
  v3 = 1;
  v118 = 0x600000001;
  while (1)
  {
    while (1)
    {
      v4 = v117 + 8 * v3;
      v5 = *(v4 - 1);
      *(v4 - 1) = v5 | 2;
      v6 = (v5 >> 2) & 1;
      v7 = v5 & 0xFFFFFFFFFFFFFFF8;
      if ((v5 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        LOBYTE(v6) = 1;
      }

      if ((v5 & 2) == 0)
      {
        break;
      }

      if ((v6 & 1) == 0)
      {
        v120 = v122;
        v121 = 0x600000000;
        if (*this == 1 && (v30 = *(v7 + 44), (v30 & 0x7FFFFF) != 0))
        {
          v31 = ((v7 + 16 * ((v30 >> 23) & 1) + ((v30 >> 21) & 0x7F8) + 64) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v7 + 40);
          v32 = v31 + 24 * (v30 & 0x7FFFFF);
          do
          {
            for (i = *(v31 + 8); i != v31; i = *(i + 8))
            {
              v34 = i - 8;
              if (!i)
              {
                v34 = 0;
              }

              v35 = v34 + 32;
              for (j = *(v34 + 40); j != v35; j = *(j + 8))
              {
                if ((*(j + 44) & 0x7FFFFF) != 0)
                {
                  v37 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID();
                  if ((*(**(j + 48) + 32))(*(j + 48), v37))
                  {
                    llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(&v120, j);
                  }
                }
              }
            }

            v31 += 24;
          }

          while (v31 != v32);
          v38 = v120;
          v39 = v121;
        }

        else
        {
          v39 = 0;
          v38 = v122;
        }

        v40 = *(***(v7 + 24) + 32);
        v112 = this;
        v115[0] = v38;
        v114 = v39;
        if (v39)
        {
          if (v39 != 1 && (*(*v40 + 41) & 1) != 0)
          {
            operator new();
          }

          v48 = &v38[v39];
          {
            v38 = (v115[0] + 8);
            v115[0] = v38;
            if (v38 == v48)
            {
              goto LABEL_70;
            }
          }

          v41 = 0;
LABEL_108:
          if (v120 != v122)
          {
            free(v120);
          }

          if ((v41 & 1) == 0)
          {
            goto LABEL_144;
          }

          goto LABEL_111;
        }

LABEL_70:
        v49 = *(v7 + 48);
        if (*(v49 + 16) != &mlir::detail::TypeIDResolver<void,void>::id)
        {
          v41 = (*(*v49 + 72))(v49, v7);
          goto LABEL_108;
        }

        v50 = *(*(v49 + 8) + 32);
        if (v50)
        {
          if ((*(v50 + 40) & 1) == 0)
          {
            v108 = "unregistered operation '";
            v111 = 259;
            mlir::Operation::emitError(&v124, v7, &v108);
            if (v124)
            {
              mlir::Diagnostic::operator<<(v125, *(v7 + 48));
              if (v124)
              {
                mlir::Diagnostic::operator<<<22ul>(v125, "' found in dialect ('");
                if (v124)
                {
                  v51 = *(v50 + 8);
                  v52 = *(v50 + 16);
                  v116 = 261;
                  v115[0] = v51;
                  v115[1] = v52;
                  mlir::Diagnostic::operator<<(v125, v115);
                  if (v124)
                  {
                    mlir::Diagnostic::operator<<<42ul>(v125, "') that does not allow unknown operations");
                  }
                }
              }
            }

LABEL_107:
            v41 = v128 ^ 1;
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v124);
            goto LABEL_108;
          }
        }

        else if ((*(**(***(v7 + 24) + 32) + 40) & 1) == 0)
        {
          v116 = 257;
          mlir::Operation::emitOpError(v7, v115, &v124);
          if (v124)
          {
            LODWORD(v108) = 3;
            v109 = "created with unregistered dialect. If this is intended, please call allowUnregisteredDialects() on the MLIRContext, or use -allow-unregistered-dialect with the MLIR opt tool used";
            v110 = 178;
            v61 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v126, &v108, 1);
            v62 = v126 + 24 * v127;
            v63 = *v61;
            *(v62 + 16) = *(v61 + 16);
            *v62 = v63;
            ++v127;
          }

          goto LABEL_107;
        }

        v41 = 1;
        goto LABEL_108;
      }

      mlir::SuccessorRange::SuccessorRange(&v124, (v5 & 0xFFFFFFFFFFFFFFF8));
      v9 = v125[0];
      v10 = *(v7 + 24);
      if (v125[0])
      {
        v11 = v124 + 24;
        while ((v10 ^ *(*v11 + 24)) < 8)
        {
          v11 += 32;
          if (!--v9)
          {
            goto LABEL_15;
          }
        }

        v46 = *(v7 + 32);
        v120 = "branching to block of a different region";
        v123 = 259;
        mlir::Operation::emitOpError(v46, &v120, &v124);
      }

      else
      {
LABEL_15:
        if (mayBeValidWithoutTerminator(v10))
        {
          goto LABEL_111;
        }

        v12 = *(v7 + 32);
        if (mlir::OperationName::mightHaveTrait<mlir::OpTrait::IsTerminator>(v12 + 48))
        {
          goto LABEL_111;
        }

        v13 = *(v7 + 32);
        v115[0] = "block with no terminator, has ";
        v116 = 259;
        mlir::Operation::emitError(&v124, v13, v115);
        if (v124)
        {
          mlir::OpPrintingFlags::OpPrintingFlags(&v120);
          mlir::Diagnostic::appendOp(v125, v12, &v120);
        }
      }

      v47 = v128;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v124);
      if (v47)
      {
        goto LABEL_144;
      }

LABEL_111:
      v3 = v118 - 1;
      LODWORD(v118) = v3;
      if (!v3)
      {
        goto LABEL_143;
      }
    }

    if (v6)
    {
      for (k = *(v7 + 48); k != *(v7 + 56); k += 8)
      {
        if (*(*k + 16) != v7)
        {
          v44 = *(*k + 32);
          v45 = "block argument not owned by block";
LABEL_81:
          v120 = v45;
          v123 = 259;
          emitDiag(v44, 2, &v120, &v124);
          goto LABEL_84;
        }
      }

      v42 = *(v7 + 32);
      if (v42 == v7 + 32)
      {
        if (mayBeValidWithoutTerminator(*(v7 + 24)))
        {
          goto LABEL_120;
        }

        v44 = *(*((*(v7 + 24) & 0xFFFFFFFFFFFFFFF8) + 16) + 24);
        v45 = "empty block: expect at least a terminator";
        goto LABEL_81;
      }

      for (m = *(v7 + 40); m != v7 + 32; m = *(m + 8))
      {
        if (m != v42 && *(m + 40))
        {
          v120 = "operation with block successors must terminate its parent block";
          v123 = 259;
          goto LABEL_83;
        }
      }

      goto LABEL_120;
    }

    if ((*(v7 + 46) & 0x80) != 0)
    {
      v14 = *(v7 + 68);
      if (v14)
      {
        break;
      }
    }

LABEL_24:
    DiscardableAttrDictionary = mlir::Operation::getDiscardableAttrDictionary((v5 & 0xFFFFFFFFFFFFFFF8));
    v17 = *(DiscardableAttrDictionary + 16);
    if (v17)
    {
      v18 = (*(DiscardableAttrDictionary + 8) + 8);
      v19 = 16 * v17;
      do
      {
        v20 = *(*(v18 - 1) + 32);
        if (v20)
        {
          v21 = *v18;
          if (((*(*v20 + 96))(v20, v5 & 0xFFFFFFFFFFFFFFF8) & 1) == 0)
          {
            goto LABEL_144;
          }
        }

        v18 += 2;
        v19 -= 16;
      }

      while (v19);
    }

    v22 = *(v7 + 48);
    if (v22[2] != &mlir::detail::TypeIDResolver<void,void>::id && ((*(*v22 + 8))(v22, v5 & 0xFFFFFFFFFFFFFFF8) & 1) == 0)
    {
      goto LABEL_144;
    }

    v23 = *(v7 + 44);
    v24 = *&v23 & 0x7FFFFFLL;
    if ((v23 & 0x7FFFFF) == 0)
    {
      goto LABEL_120;
    }

    v25 = llvm::DefaultDoCastIfPossible<mlir::RegionKindInterface,mlir::Operation *,llvm::CastInfo<mlir::RegionKindInterface,mlir::Operation *,void>>::doCastIfPossible(v5 & 0xFFFFFFFFFFFFFFF8);
    v27 = v26;
    v120 = v122;
    v121 = 0x600000000;
    v28 = *(v7 + 44);
    if ((v28 & 0x7FFFFF) != 0)
    {
      v29 = (v7 + 16 * ((v28 >> 23) & 1) + ((v28 >> 21) & 0x7F8) + 32 * *(v7 + 40) + 64);
    }

    else
    {
      v29 = 0;
    }

    v54 = 0;
    LODWORD(v108) = 0;
    while (1)
    {
      if (!v25)
      {
        v56 = *v29;
        goto LABEL_98;
      }

      v55 = (*v27)(v54);
      v56 = *v29;
      if (*(*(v7 + 48) + 16) != &mlir::detail::TypeIDResolver<void,void>::id && v55 == 1)
      {
        if (v29 == v56)
        {
          goto LABEL_100;
        }

        if (v29 != *(v29[1] + 8))
        {
          break;
        }
      }

LABEL_98:
      if (v29 != v56 && *(v29[1] - 8))
      {
        v59 = *(v7 + 24);
        v115[0] = "entry block of region may not have predecessors";
        v116 = 259;
        emitDiag(v59, 2, v115, &v124);
        v60 = v128;
        goto LABEL_116;
      }

LABEL_100:
      LODWORD(v108) = ++v54;
      v29 += 3;
      if (v24 == v54)
      {
        v58 = 1;
        goto LABEL_117;
      }
    }

    v115[0] = "expects graph region #";
    v116 = 259;
    mlir::Operation::emitOpError((v5 & 0xFFFFFFFFFFFFFFF8), v115, &v124);
    v64 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v124, &v108);
    v65 = v64;
    if (*v64)
    {
      mlir::Diagnostic::operator<<<23ul>((v64 + 1), " to have 0 or 1 blocks");
    }

    v60 = *(v65 + 200);
LABEL_116:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v124);
    v58 = v60 ^ 1;
LABEL_117:
    if (v120 != v122)
    {
      free(v120);
    }

    if ((v58 & 1) == 0)
    {
      goto LABEL_144;
    }

LABEL_120:
    if ((v5 & 4) != 0 && v7)
    {
      v68 = *(v7 + 32);
      v67 = v7 + 32;
      for (n = v68; n != v67; n = *n)
      {
        if ((*(n + 44) & 0x7FFFFF) != 0)
        {
          v69 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID();
          if ((*(**(n + 48) + 32))(*(n + 48), v69))
          {
            continue;
          }
        }

        if (v118 >= HIDWORD(v118))
        {
          llvm::SmallVectorTemplateBase<llvm::PointerIntPair<llvm::PointerUnion<mlir::Operation *,mlir::Block *>,1u,BOOL,llvm::PointerLikeTypeTraits<llvm::PointerUnion<mlir::Operation *,mlir::Block *>>,llvm::PointerIntPairInfo<llvm::PointerUnion<mlir::Operation *,mlir::Block *>,1u,llvm::PointerLikeTypeTraits<llvm::PointerUnion<mlir::Operation *,mlir::Block *>>>>,true>::push_back(&v117, n & 0xFFFFFFFFFFFFFFFBLL);
        }

        else
        {
          *(v117 + v118) = n & 0xFFFFFFFFFFFFFFFBLL;
          LODWORD(v118) = v118 + 1;
        }
      }
    }

    else if (*this == 1)
    {
      v70 = *(v7 + 44);
      if ((v70 & 0x7FFFFF) != 0)
      {
        v71 = ((v7 + 16 * ((v70 >> 23) & 1) + ((v70 >> 21) & 0x7F8) + 64) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v7 + 40);
        v72 = (v71 + 24 * (v70 & 0x7FFFFF));
        do
        {
          v74 = *(v72 - 3);
          v72 -= 3;
          for (ii = v74; ii != v72; ii = *ii)
          {
            v75 = (ii - 1);
            if (!ii)
            {
              v75 = 0;
            }

            if (v118 >= HIDWORD(v118))
            {
              llvm::SmallVectorTemplateBase<llvm::PointerIntPair<llvm::PointerUnion<mlir::Operation *,mlir::Block *>,1u,BOOL,llvm::PointerLikeTypeTraits<llvm::PointerUnion<mlir::Operation *,mlir::Block *>>,llvm::PointerIntPairInfo<llvm::PointerUnion<mlir::Operation *,mlir::Block *>,1u,llvm::PointerLikeTypeTraits<llvm::PointerUnion<mlir::Operation *,mlir::Block *>>>>,true>::push_back(&v117, v75 | 4);
            }

            else
            {
              *(v117 + v118) = v75 | 4;
              LODWORD(v118) = v118 + 1;
            }
          }
        }

        while (v72 != v71);
      }
    }

    v3 = v118;
    if (!v118)
    {
LABEL_143:
      v76 = 1;
      goto LABEL_145;
    }
  }

  v15 = (*(v7 + 72) + 24);
  while (*v15)
  {
    v15 += 4;
    if (!--v14)
    {
      goto LABEL_24;
    }
  }

  v120 = "null operand found";
  v123 = 259;
  m = v5 & 0xFFFFFFFFFFFFFFF8;
LABEL_83:
  mlir::Operation::emitError(&v124, m, &v120);
LABEL_84:
  v53 = v128;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v124);
  if ((v53 & 1) == 0)
  {
    goto LABEL_120;
  }

LABEL_144:
  v76 = 0;
LABEL_145:
  if (v117 != v119)
  {
    free(v117);
  }

  if (v76)
  {
    if ((*(a2 + 11) & 0x7FFFFF) != 0)
    {
      v108 = 0;
      v109 = 0;
      LODWORD(v110) = 0;
      v117 = v119;
      HIDWORD(v118) = 8;
      v119[0] = a2;
      v77 = 1;
      do
      {
        v78 = *(v117 + --v77);
        LODWORD(v118) = v77;
        v79 = *(v78 + 44);
        if ((v79 & 0x7FFFFF) != 0)
        {
          v80 = this;
          v81 = ((v78 + 16 * ((v79 >> 23) & 1) + ((v79 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v78 + 40);
          v82 = v81 + 24 * (v79 & 0x7FFFFF);
          do
          {
            for (jj = *(v81 + 8); jj != v81; jj = *(jj + 8))
            {
              if (jj)
              {
                v84 = jj - 8;
              }

              else
              {
                v84 = 0;
              }

              isReachableFromEntry = mlir::detail::DominanceInfoBase<false>::isReachableFromEntry(&v108, v84);
              v86 = v84 + 32;
              v87 = *(v84 + 40);
              if (v87 != v86)
              {
                v88 = isReachableFromEntry;
                while (1)
                {
                  if (v88 && (*(v87 + 46) & 0x80) != 0)
                  {
                    v89 = *(v87 + 68);
                    if (v89)
                    {
                      break;
                    }
                  }

LABEL_165:
                  if (*v80 == 1 && (*(v87 + 44) & 0x7FFFFF) != 0)
                  {
                    v92 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID();
                    if (((*(**(v87 + 48) + 32))(*(v87 + 48), v92) & 1) == 0)
                    {
                      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(&v117, v87);
                    }
                  }

                  v87 = *(v87 + 8);
                  if (v87 == v86)
                  {
                    goto LABEL_170;
                  }
                }

                v90 = 0;
                v91 = (*(v87 + 72) + 24);
                while ((mlir::DominanceInfo::properlyDominates(&v108, *v91, v87) & 1) != 0)
                {
                  ++v90;
                  v91 += 4;
                  if (v89 == v90)
                  {
                    goto LABEL_165;
                  }
                }

                LODWORD(v113) = v90;
                v115[0] = "operand #";
                v116 = 259;
                mlir::Operation::emitError(&v120, v87, v115);
                v93 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v120, &v113);
                v94 = v93;
                if (*v93)
                {
                  mlir::Diagnostic::operator<<<28ul>((v93 + 1), " does not dominate this use");
                }

                mlir::InFlightDiagnostic::InFlightDiagnostic(&v124, v94);
                mlir::InFlightDiagnostic::~InFlightDiagnostic(&v120);
                v95 = *(*(v87 + 72) + 32 * v113 + 24);
                if ((~*(v95 + 8) & 7) != 0)
                {
                  v96 = *(*(v87 + 72) + 32 * v113 + 24);
                }

                else
                {
                  v96 = 0;
                }

                if (v96)
                {
                  v97 = *(v96 + 8) & 7;
                  if (v97 == 6)
                  {
                    v98 = v96 + 24 * *(v96 + 16);
                    v99 = v98 + 120;
                    if (v98 == -120)
                    {
                      goto LABEL_183;
                    }
                  }

                  else
                  {
                    v99 = v96 + 16 * v97 + 16;
                  }

                  mlir::Diagnostic::attachNote(v125, *(v99 + 24), 1);
                }

LABEL_183:
                v100 = *(**(***(v87 + 24) + 32) + 616);
                v101 = *(*(v95 + 16) + 24) & 0xFFFFFFFFFFFFFFF8;
                if (v101)
                {
                  v102 = *(v87 + 16);
                  v103 = *(v101 + 16);
                  if (v103)
                  {
                    v100 = *(v103 + 24);
                  }

                  v104 = *(v102 + 24);
                  mlir::Diagnostic::attachNote(v125, v100, 1);
                }

                mlir::Diagnostic::attachNote(v125, v100, 1);
              }

LABEL_170:
              ;
            }

            v81 += 24;
          }

          while (v81 != v82);
          v77 = v118;
          this = v80;
        }
      }

      while (v77);
      if (v117 != v119)
      {
        free(v117);
      }

      mlir::detail::DominanceInfoBase<false>::~DominanceInfoBase(&v108);
    }

    result = 1;
  }

  else
  {
    result = 0;
  }

  v106 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::ThreadPoolInterface::asyncImpl<void>(uint64_t a1@<X1>, std::future<void> *a2@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  std::async[abi:nn200100]<std::function<void ()(void)>>(2, a1, &v4);
  state = v4.__state_;
  a2->__state_ = v4.__state_;
  v4.__state_ = 0;
  std::future<void>::~future(&v4);
  if (state)
  {
    atomic_fetch_add_explicit(&state->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  operator new();
}

uint64_t std::async[abi:nn200100]<std::function<void ()(void)>>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  if (result)
  {
    std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v4, a2);
    if (v5)
    {
      if (v5 == v4)
      {
        v7 = v6;
        (*(*v5 + 24))();
      }

      else
      {
        v7 = v5;
        v5 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    std::__make_async_assoc_state[abi:nn200100]<void,std::__async_func<std::function<void ()(void)>>>();
  }

  if ((result & 2) != 0)
  {
    std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v4, a2);
    if (v5)
    {
      if (v5 == v4)
      {
        v7 = v6;
        (*(*v5 + 24))();
      }

      else
      {
        v7 = v5;
        v5 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    std::__make_deferred_assoc_state[abi:nn200100]<void,std::__async_func<std::function<void ()(void)>>>();
  }

  *a3 = 0;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void std::__async_assoc_state<void,std::__async_func<std::function<void ()(void)>>>::~__async_assoc_state(uint64_t a1)
{
  *a1 = &unk_286E78ED8;
  v2 = (a1 + 24);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](a1 + 144);
  *a1 = MEMORY[0x277D82880] + 16;
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex(v2);
  std::exception_ptr::~exception_ptr((a1 + 16));

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = &unk_286E78ED8;
  v2 = (a1 + 24);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](a1 + 144);
  *a1 = MEMORY[0x277D82880] + 16;
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex(v2);
  std::exception_ptr::~exception_ptr((a1 + 16));
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x25F891040);
}

void std::__async_assoc_state<void,std::__async_func<std::function<void ()(void)>>>::__on_zero_shared(std::__assoc_sub_state *a1)
{
  std::__assoc_sub_state::wait(a1);

  std::__assoc_sub_state::__on_zero_shared(a1);
}

void std::__async_assoc_state<void,std::__async_func<std::function<void ()(void)>>>::__execute(std::__assoc_sub_state *a1)
{
  sig = a1[1].__mut_.__m_.__sig;
  if (sig)
  {
    (*(*sig + 48))(sig);

    std::__assoc_sub_state::set_value(a1);
  }

  else
  {
    v3 = std::__throw_bad_function_call[abi:nn200100]();
    std::__thread_proxy[abi:nn200100]<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<void,std::__async_func<std::function<void ()(void)>>>::*)(void),std::__async_assoc_state<void,std::__async_func<std::function<void ()(void)>>>*>>(v3);
  }
}

uint64_t std::__thread_proxy[abi:nn200100]<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<void,std::__async_func<std::function<void ()(void)>>>::*)(void),std::__async_assoc_state<void,std::__async_func<std::function<void ()(void)>>>*>>(uint64_t *a1)
{
  v8 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = a1[2];
  v5 = a1[1];
  v6 = (a1[3] + (v4 >> 1));
  if (v4)
  {
    v5 = *(*v6 + v5);
  }

  v5(v6);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<void,std::__async_func<std::function<void ()(void)>>>::*)(void),std::__async_assoc_state<void,std::__async_func<std::function<void ()(void)>>>*>>::~unique_ptr[abi:nn200100](&v8);
  return 0;
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<void,std::__async_func<std::function<void ()(void)>>>::*)(void),std::__async_assoc_state<void,std::__async_func<std::function<void ()(void)>>>*>>::~unique_ptr[abi:nn200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:nn200100](v2);
    MEMORY[0x25F891040](v3, 0xA0C40F20CD8FBLL);
  }

  return a1;
}

uint64_t *std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x25F890CB0]();
    MEMORY[0x25F891040](v3, 0x20C4093837F09);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void std::__deferred_assoc_state<void,std::__async_func<std::function<void ()(void)>>>::~__deferred_assoc_state(uint64_t a1)
{
  *a1 = &unk_286E78F08;
  v2 = (a1 + 24);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](a1 + 144);
  *a1 = MEMORY[0x277D82880] + 16;
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex(v2);
  std::exception_ptr::~exception_ptr((a1 + 16));

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = &unk_286E78F08;
  v2 = (a1 + 24);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](a1 + 144);
  *a1 = MEMORY[0x277D82880] + 16;
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex(v2);
  std::exception_ptr::~exception_ptr((a1 + 16));
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x25F891040);
}

void std::__deferred_assoc_state<void,std::__async_func<std::function<void ()(void)>>>::__execute(std::__assoc_sub_state *a1)
{
  sig = a1[1].__mut_.__m_.__sig;
  if (sig)
  {
    (*(*sig + 48))(sig);

    std::__assoc_sub_state::set_value(a1);
  }

  else
  {
    v3 = std::__throw_bad_function_call[abi:nn200100]();
    std::__function::__func<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1},std::allocator<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1}>,void ()(void)>::~__func(v3);
  }
}

std::shared_future<void> *std::__function::__func<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1},std::allocator<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1}>,void ()(void)>::~__func(std::shared_future<void> *a1)
{
  a1->__state_ = &unk_286E78F38;
  std::shared_future<void>::~shared_future(a1 + 1);
  return a1;
}

void std::__function::__func<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1},std::allocator<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1}>,void ()(void)>::~__func(std::shared_future<void> *a1)
{
  a1->__state_ = &unk_286E78F38;
  std::shared_future<void>::~shared_future(a1 + 1);

  JUMPOUT(0x25F891040);
}

uint64_t std::__function::__func<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1},std::allocator<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286E78F38;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1},std::allocator<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(std::shared_future<void> *a1)
{
  std::shared_future<void>::~shared_future(a1 + 1);

  operator delete(a1);
}

__n128 std::__function::__func<llvm::LogicalResult mlir::failableParallelForEach<mlir::Operation **,anonymous namespace::OperationVerifier::verifyOnExit(mlir::Operation&)::$_0>(mlir::MLIRContext *,mlir::Operation **,mlir::Operation **,anonymous namespace::OperationVerifier::verifyOnExit(mlir::Operation&)::$_0 &&)::{lambda(void)#1},std::allocator<anonymous namespace::OperationVerifier::verifyOnExit(mlir::Operation&)::$_0 &&>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E78F80;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<llvm::LogicalResult mlir::failableParallelForEach<mlir::Operation **,anonymous namespace::OperationVerifier::verifyOnExit(mlir::Operation&)::$_0>(mlir::MLIRContext *,mlir::Operation **,mlir::Operation **,anonymous namespace::OperationVerifier::verifyOnExit(mlir::Operation&)::$_0 &&)::{lambda(void)#1},std::allocator<anonymous namespace::OperationVerifier::verifyOnExit(mlir::Operation&)::$_0 &&>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = atomic_load(*(a1 + 8));
  if ((v1 & 1) == 0)
  {
    do
    {
      add = atomic_fetch_add(*(a1 + 16), 1u);
      if (add >= **(a1 + 24))
      {
        break;
      }

      mlir::detail::ParallelDiagnosticHandlerImpl::setOrderIDForThread(**(a1 + 32), add);
      {
        atomic_store(1u, *(a1 + 8));
      }

      mlir::detail::ParallelDiagnosticHandlerImpl::eraseOrderIDForThread(**(a1 + 32));
      v4 = atomic_load(*(a1 + 8));
    }

    while ((v4 & 1) == 0);
  }
}

uint64_t mayBeValidWithoutTerminator(unint64_t a1)
{
  v1 = a1 & 0xFFFFFFFFFFFFFFF8;
  if ((a1 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    return 1;
  }

  v2 = *(v1 + 8);
  if (v2 == v1 || *(v2 + 8) != v1)
  {
    return 0;
  }

  v4 = *(v1 + 16);
  if (!v4)
  {
    return 1;
  }

  mlir::detail::TypeIDResolver<mlir::OpTrait::NoTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoTerminator>(void)::Empty>,void>::resolveTypeID();
  v5 = *(v4 + 48);
  if (v5[2] == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    return 1;
  }

  v6 = *(*v5 + 4);

  return v6();
}

uint64_t mlir::Operation::getDiscardableAttrDictionary(mlir::Operation *this)
{
  v16[6] = *MEMORY[0x277D85DE8];
  if (*(this + 47))
  {
    v2 = *(this + 7);
  }

  else
  {
    v1 = *(***(this + 3) + 32);
    mlir::Operation::getDiscardableAttrs(this, v5);
    v12[0] = v5[0];
    v12[1] = v5[1];
    v13 = v6;
    v10[0] = v7;
    v10[1] = v8;
    v11 = v9;
    v14 = v16;
    v15 = 0x300000000;
    llvm::SmallVectorImpl<mlir::NamedAttribute>::append<llvm::filter_iterator_impl<mlir::NamedAttribute const*,mlir::Operation::getDiscardableAttrs(void)::{lambda(mlir::NamedAttribute)#1},std::bidirectional_iterator_tag>,void>(&v14, v12, v10);
    v2 = mlir::DictionaryAttr::get(v1, v14, v15);
    if (v14 != v16)
    {
      free(v14);
    }
  }

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void llvm::SmallVectorTemplateBase<llvm::PointerIntPair<llvm::PointerUnion<mlir::Operation *,mlir::Block *>,1u,BOOL,llvm::PointerLikeTypeTraits<llvm::PointerUnion<mlir::Operation *,mlir::Block *>>,llvm::PointerIntPairInfo<llvm::PointerUnion<mlir::Operation *,mlir::Block *>,1u,llvm::PointerLikeTypeTraits<llvm::PointerUnion<mlir::Operation *,mlir::Block *>>>>,true>::push_back(uint64_t a1, uint64_t a2)
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

uint64_t mlir::detail::walk(uint64_t a1, void (*a2)(uint64_t, uint64_t, int *), uint64_t a3)
{
  v6 = *(a1 + 44);
  v14 = v6 & 0x7FFFFF;
  v15 = 0;
  if ((v6 & 0x7FFFFF) != 0)
  {
    v7 = ((a1 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
    v8 = v7 + 24 * (v6 & 0x7FFFFF);
    do
    {
      a2(a3, a1, &v14);
      ++v15;
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
          mlir::detail::walk(j, a2, a3);
        }
      }

      v7 += 24;
    }

    while (v7 != v8);
  }

  return (a2)(a3, a1, &v14);
}

uint64_t std::__function::__value_func<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::PDLPatternConfigSet>,false>::moveElementsForGrow(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  if (v2)
  {
    v3 = *result;
    v4 = 8 * v2;
    v5 = 8 * v2;
    v6 = *result;
    do
    {
      v7 = *v6;
      *v6 = 0;
      v6 += 8;
      *a2++ = v7;
      v5 -= 8;
    }

    while (v5);
    v8 = v3 - 8;
    do
    {
      result = *&v8[v4];
      *&v8[v4] = 0;
      if (result)
      {
        v9 = llvm::SmallVector<std::unique_ptr<mlir::PDLPatternConfig>,6u>::~SmallVector(result);
        result = MEMORY[0x25F891040](v9, 0x1080C407559D7D1);
      }

      v4 -= 8;
    }

    while (v4);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,mlir::PDLPatternConfigSet *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::PDLPatternConfigSet *>>,mlir::Operation *,mlir::PDLPatternConfigSet *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::PDLPatternConfigSet *>>::LookupBucketFor<mlir::Operation *>(uint64_t *a1, void *a2, void *a3)
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,mlir::PDLPatternConfigSet *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::PDLPatternConfigSet *>>,mlir::Operation *,mlir::PDLPatternConfigSet *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::PDLPatternConfigSet *>>::InsertIntoBucketImpl<mlir::Operation *>(uint64_t a1, void *a2, void *a3)
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

  llvm::DenseMap<mlir::Operation *,mlir::PDLPatternConfigSet *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::PDLPatternConfigSet *>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,mlir::PDLPatternConfigSet *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::PDLPatternConfigSet *>>,mlir::Operation *,mlir::PDLPatternConfigSet *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::PDLPatternConfigSet *>>::LookupBucketFor<mlir::Operation *>(a1, a2, &v8);
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

char *llvm::DenseMap<mlir::Operation *,mlir::PDLPatternConfigSet *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::PDLPatternConfigSet *>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,mlir::PDLPatternConfigSet *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::PDLPatternConfigSet *>>,mlir::Operation *,mlir::PDLPatternConfigSet *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::PDLPatternConfigSet *>>::moveFromOldBuckets(a1, v4, &v4[2 * v3]);

    JUMPOUT(0x25F891030);
  }

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

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,mlir::PDLPatternConfigSet *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::PDLPatternConfigSet *>>,mlir::Operation *,mlir::PDLPatternConfigSet *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::PDLPatternConfigSet *>>::moveFromOldBuckets(uint64_t result, void *a2, void *a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0xFFFFFFFFFFFFFFFLL;
    v9 = v8 & 0xFFFFFFFFFFFFFFFLL;
    v10 = (v8 & 0xFFFFFFFFFFFFFFFLL) - (v8 & 1) + 2;
    v11 = vdupq_n_s64(v9);
    v12 = (*result + 16);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_25D0A0500)));
      if (v13.i8[0])
      {
        *(v12 - 2) = -4096;
      }

      if (v13.i8[4])
      {
        *v12 = -4096;
      }

      v7 += 2;
      v12 += 4;
    }

    while (v10 != v7);
  }

  while (a2 != a3)
  {
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v14 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,mlir::PDLPatternConfigSet *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::PDLPatternConfigSet *>>,mlir::Operation *,mlir::PDLPatternConfigSet *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::PDLPatternConfigSet *>>::LookupBucketFor<mlir::Operation *>(v5, a2, &v14);
      *v14 = *a2;
      v14[1] = a2[1];
      ++*(v5 + 8);
    }

    a2 += 2;
  }

  return result;
}

uint64_t llvm_blake3_hasher_update(uint64_t result, int *__src, unint64_t a3)
{
  v168 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    goto LABEL_79;
  }

  v3 = a3;
  v4 = __src;
  v5 = result;
  v6 = *(result + 137);
  v7 = *(result + 136);
  if (!(v7 + (v6 << 6)))
  {
    goto LABEL_27;
  }

  if (1024 - (v7 + (v6 << 6)) >= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = 1024 - (v7 + (v6 << 6));
  }

  if (!*(result + 136))
  {
    v16 = v8;
    v15 = __src;
LABEL_13:
    if (v16 < 0x41)
    {
      v13 = 0;
    }

    else
    {
      do
      {
        llvm_blake3_compress_in_place_portable((v5 + 32), v15, 64, *(v5 + 64), *(v5 + 138) | (v6 == 0));
        LOBYTE(v6) = *(v5 + 137) + 1;
        *(v5 + 137) = v6;
        v15 += 16;
        v16 -= 64;
      }

      while (v16 > 0x40);
      v13 = *(v5 + 136);
    }

    goto LABEL_18;
  }

  if (64 - v7 >= v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = 64 - v7;
  }

  v12 = (result + 72);
  memcpy((result + 72 + v7), __src, v11);
  v13 = *(v5 + 136) + v11;
  *(v5 + 136) = v13;
  v14 = __src;
  v15 = (__src + v11);
  v16 = v8 - v11;
  if (v8 != v11)
  {
    llvm_blake3_compress_in_place_portable((v5 + 32), (v5 + 72), 64, *(v5 + 64), *(v5 + 138) | (*(v5 + 137) == 0));
    LOBYTE(v6) = *(v5 + 137) + 1;
    *(v5 + 137) = v6;
    *(v5 + 136) = 0;
    *v12 = 0u;
    *(v5 + 88) = 0u;
    *(v5 + 104) = 0u;
    *(v5 + 120) = 0u;
    v4 = v14;
    v3 = a3;
    goto LABEL_13;
  }

  v4 = v14;
  v3 = a3;
LABEL_18:
  if (64 - v13 >= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = 64 - v13;
  }

  v18 = (v5 + 72);
  result = memcpy((v5 + 72 + v13), v15, v17);
  v19 = *(v5 + 136) + v17;
  *(v5 + 136) = v19;
  v3 -= v8;
  if (!v3)
  {
    goto LABEL_79;
  }

  v20 = *(v5 + 48);
  *v154 = *(v5 + 32);
  *&v154[16] = v20;
  v21 = *(v5 + 88);
  v156 = *v18;
  v157 = v21;
  v22 = *(v5 + 120);
  v158 = *(v5 + 104);
  v4 = (v4 + v8);
  v23 = *(v5 + 138) | (*(v5 + 137) == 0) | 2;
  v24 = *(v5 + 64);
  v159 = v22;
  v160 = v19;
  v155 = v24;
  BYTE1(v160) = v23;
  v25 = *(v5 + 48);
  v161 = *v154;
  v162 = v25;
  result = llvm_blake3_compress_in_place_portable(&v161, &v156, v19, v24, v23);
  v26 = v161;
  v27 = DWORD1(v161);
  v28 = DWORD2(v161);
  v29 = HIDWORD(v161);
  v30 = v162;
  v31 = DWORD1(v162);
  v32 = DWORD2(v162);
  v33 = HIDWORD(v162);
  v34 = vcnt_s8(*(v5 + 64));
  v34.i16[0] = vaddlv_u8(v34);
  v35 = v34.i32[0];
  v36 = *(v5 + 144);
  if (v34.i32[0] < v36)
  {
    v144 = HIDWORD(v161);
    v37 = v162;
    v145 = v3;
    v38 = *(v5 + 144);
    do
    {
      v39 = *(v5 + 16);
      v40 = v5 + 145 + 32 * v38;
      v161 = *v5;
      v162 = v39;
      v41 = *(v40 - 48);
      *&v163[8] = *(v40 - 64);
      *&v163[24] = v41;
      v42 = *(v40 - 16);
      v164 = *(v40 - 32);
      v43 = *(v5 + 138);
      v165 = v42;
      v166 = 64;
      *v163 = 0;
      *(&v166 + 1) = v43 | 4;
      v44 = *(v5 + 16);
      *v149 = *v5;
      *&v149[16] = v44;
      result = llvm_blake3_compress_in_place_portable(v149, &v163[8], 64, 0, v43 | 4u);
      v45 = *&v149[4];
      *(v40 - 64) = *v149;
      *(v40 - 60) = v45;
      *(v40 - 56) = *&v149[8];
      v46 = *&v149[28];
      *(v40 - 40) = *&v149[24];
      *(v40 - 36) = v46;
      LOBYTE(v36) = *(v5 + 144) - 1;
      *(v5 + 144) = v36;
      v38 = v36;
    }

    while (v35 < v36);
    v3 = v145;
    v33 = HIDWORD(v37);
    v32 = DWORD2(v37);
    v31 = DWORD1(v37);
    v29 = v144;
    v30 = v37;
  }

  v47 = v5 + 32 * v36;
  *(v47 + 145) = v26;
  *(v47 + 149) = v27;
  *(v47 + 153) = v28;
  *(v47 + 157) = v29;
  *(v47 + 161) = v30;
  *(v47 + 165) = v31;
  *(v47 + 169) = v32;
  *(v47 + 173) = v33;
  *(v5 + 144) = v36 + 1;
  ++*(v5 + 64);
  *v18 = 0u;
  *(v5 + 88) = 0u;
  *(v5 + 104) = 0u;
  *(v5 + 120) = 0u;
  v48 = *(v5 + 16);
  *(v5 + 32) = *v5;
  *(v5 + 48) = v48;
  *(v5 + 136) = 0;
LABEL_27:
  if (v3 >= 0x401)
  {
    v49 = v5 + 145;
    v50 = *(v5 + 64);
    v148 = vdupq_n_s64(2uLL);
    do
    {
      v51 = 1 << (__clz(v3 | 1) ^ 0x3Fu);
      do
      {
        v52 = v51;
        v53 = v51 - 1;
        v51 >>= 1;
      }

      while ((v53 & (v50 << 10)) != 0);
      v146 = v3;
      v147 = v4;
      if (v52 > 0x400)
      {
        v83 = *(v5 + 138);
        result = blake3_compress_subtree_wide(v4, v52, v5, v50, v83, &v161);
        if ((result - 3) <= 1)
        {
          v84 = result;
          do
          {
            memset(v167, 0, sizeof(v167));
            v85 = (v84 - 2) >> 1;
            v86 = vdupq_n_s64(v85);
            v87 = (v85 & 0x7FFFFFFFFFFFFFFELL) + 2;
            v88 = v167 + 1;
            v89 = xmmword_25D0A0500;
            do
            {
              v90 = vmovn_s64(vcgeq_u64(v86, v89));
              v91 = vshlq_n_s64(v89, 6uLL);
              if (v90.i8[0])
              {
                *(v88 - 1) = &v161 + v91.i64[0];
              }

              if (v90.i8[4])
              {
                *v88 = &v161 + v91.i64[1];
              }

              v89 = vaddq_s64(v89, v148);
              v88 += 2;
              v87 -= 2;
            }

            while (v87);
            v92 = v85 + 1;
            llvm_blake3_hash_many_neon(v167, v85 + 1, 1, v5, 0, 0, v83 | 4, 0, 0, v154);
            v93 = ((v84 - 2) & 0xFFFFFFFFFFFFFFFELL) + 2 >= v84;
            v84 = v85 + 1;
            if (!v93)
            {
              v94 = &v161 + 4 * v92;
              v95 = *v94;
              v96 = v94[1];
              v97 = &v154[32 * v92];
              *v97 = v95;
              v97[1] = v96;
              v84 = v85 + 2;
            }

            result = __memcpy_chk();
          }

          while (v84 - 3 < 2);
        }

        *v149 = v161;
        *&v149[16] = v162;
        *v150 = *v163;
        *&v150[16] = *&v163[16];
        v98 = vcnt_s8(*(v5 + 64));
        v98.i16[0] = vaddlv_u8(v98);
        v99 = v98.i32[0];
        v100 = *(v5 + 144);
        v82 = v147;
        if (v98.i32[0] < v100)
        {
          v101 = *(v5 + 144);
          do
          {
            v102 = *(v5 + 16);
            v103 = v49 + 32 * v101;
            v161 = *v5;
            v162 = v102;
            v104 = *(v103 - 48);
            *&v163[8] = *(v103 - 64);
            *&v163[24] = v104;
            v105 = *(v103 - 16);
            v164 = *(v103 - 32);
            v106 = *(v5 + 138);
            v165 = v105;
            v166 = 64;
            *v163 = 0;
            *(&v166 + 1) = v106 | 4;
            v107 = *(v5 + 16);
            *v154 = *v5;
            *&v154[16] = v107;
            result = llvm_blake3_compress_in_place_portable(v154, &v163[8], 64, 0, v106 | 4u);
            v108 = *&v154[4];
            *(v103 - 64) = *v154;
            *(v103 - 60) = v108;
            *(v103 - 56) = *&v154[8];
            v109 = *&v154[28];
            *(v103 - 40) = *&v154[24];
            *(v103 - 36) = v109;
            LOBYTE(v100) = *(v5 + 144) - 1;
            *(v5 + 144) = v100;
            v101 = v100;
          }

          while (v99 < v100);
        }

        v110 = (v49 + 32 * v100);
        v111 = *&v149[16];
        *v110 = *v149;
        v110[1] = v111;
        v112 = v100 + 1;
        *(v5 + 144) = v112;
        v113 = vcnt_s8((*(v5 + 64) + (v52 >> 11)));
        v113.i16[0] = vaddlv_u8(v113);
        v114 = v113.i32[0];
        if (v113.i32[0] < v112)
        {
          v115 = v112;
          do
          {
            v116 = *(v5 + 16);
            v117 = v49 + 32 * v115;
            v161 = *v5;
            v162 = v116;
            v118 = *(v117 - 48);
            *&v163[8] = *(v117 - 64);
            *&v163[24] = v118;
            v119 = *(v117 - 16);
            v164 = *(v117 - 32);
            v120 = *(v5 + 138);
            v165 = v119;
            v166 = 64;
            *v163 = 0;
            *(&v166 + 1) = v120 | 4;
            v121 = *(v5 + 16);
            *v154 = *v5;
            *&v154[16] = v121;
            result = llvm_blake3_compress_in_place_portable(v154, &v163[8], 64, 0, v120 | 4u);
            v122 = *&v154[4];
            *(v117 - 64) = *v154;
            *(v117 - 60) = v122;
            *(v117 - 56) = *&v154[8];
            v123 = *&v154[28];
            *(v117 - 40) = *&v154[24];
            *(v117 - 36) = v123;
            v112 = *(v5 + 144) - 1;
            *(v5 + 144) = v112;
            v115 = v112;
          }

          while (v114 < v112);
        }

        v124 = (v49 + 32 * v112);
        v125 = *&v150[16];
        *v124 = *v150;
        v124[1] = v125;
        *(v5 + 144) = v112 + 1;
      }

      else
      {
        v54 = 0;
        v55 = *(v5 + 138);
        v56 = *(v5 + 16);
        *v154 = *v5;
        *&v154[16] = v56;
        v156 = 0u;
        v157 = 0u;
        v158 = 0u;
        v159 = 0u;
        v160 = 0;
        BYTE2(v160) = v55;
        v155 = v50;
        i = v52;
        v58 = v4;
        if (v52 >= 0x41)
        {
          v59 = 0;
          v58 = v4;
          for (i = v52; i > 0x40; i -= 64)
          {
            llvm_blake3_compress_in_place_portable(v154, v58, 64, v155, BYTE2(v160) | (v59 == 0));
            v59 = ++BYTE1(v160);
            v58 += 16;
          }

          v54 = v160;
        }

        if (64 - v54 >= i)
        {
          v60 = i;
        }

        else
        {
          v60 = 64 - v54;
        }

        memcpy(&v156 + v54, v58, v60);
        *v149 = *v154;
        *&v149[16] = *&v154[16];
        *&v150[8] = v156;
        *&v150[24] = v157;
        v151 = v158;
        v152 = v159;
        LOBYTE(v160) = v160 + v60;
        v153 = v160;
        *v150 = v155;
        *(&v153 + 1) = (BYTE2(v160) | (BYTE1(v160) == 0)) | 2;
        v161 = *v154;
        v162 = *&v154[16];
        result = llvm_blake3_compress_in_place_portable(&v161, &v150[8], v160, v155, *(&v153 + 1));
        v61 = v161;
        v62 = DWORD1(v161);
        v63 = DWORD2(v161);
        v64 = HIDWORD(v161);
        v65 = v162;
        v66 = DWORD1(v162);
        v67 = DWORD2(v162);
        v68 = HIDWORD(v162);
        v69 = vcnt_s8(v155);
        v69.i16[0] = vaddlv_u8(v69);
        v70 = v69.i32[0];
        v71 = *(v5 + 144);
        if (v69.i32[0] < v71)
        {
          v142 = *(&v161 + 1);
          v143 = v162;
          v72 = *(v5 + 144);
          do
          {
            v73 = *(v5 + 16);
            v74 = v49 + 32 * v72;
            v161 = *v5;
            v162 = v73;
            v75 = *(v74 - 48);
            *&v163[8] = *(v74 - 64);
            *&v163[24] = v75;
            v76 = *(v74 - 16);
            v164 = *(v74 - 32);
            v77 = *(v5 + 138);
            v165 = v76;
            v166 = 64;
            *v163 = 0;
            *(&v166 + 1) = v77 | 4;
            v78 = *(v5 + 16);
            v167[0] = *v5;
            v167[1] = v78;
            result = llvm_blake3_compress_in_place_portable(v167, &v163[8], 64, 0, v77 | 4u);
            v79 = DWORD1(v167[0]);
            *(v74 - 64) = v167[0];
            *(v74 - 60) = v79;
            *(v74 - 56) = *(v167 + 8);
            v80 = HIDWORD(v167[1]);
            *(v74 - 40) = DWORD2(v167[1]);
            *(v74 - 36) = v80;
            LOBYTE(v71) = *(v5 + 144) - 1;
            *(v5 + 144) = v71;
            v72 = v71;
          }

          while (v70 < v71);
          v67 = DWORD2(v143);
          v68 = HIDWORD(v143);
          v65 = v143;
          v66 = DWORD1(v143);
          v63 = v142;
          v64 = HIDWORD(v142);
        }

        v81 = (v49 + 32 * v71);
        *v81 = v61;
        v81[1] = v62;
        v81[2] = v63;
        v81[3] = v64;
        v81[4] = v65;
        v81[5] = v66;
        v81[6] = v67;
        v81[7] = v68;
        *(v5 + 144) = v71 + 1;
        v82 = v147;
      }

      v50 = *(v5 + 64) + (v52 >> 10);
      *(v5 + 64) = v50;
      v4 = (v82 + v52);
      v3 = v146 - v52;
    }

    while (v146 - v52 > 0x400);
  }

  if (v3)
  {
    v126 = *(v5 + 136);
    if (*(v5 + 136))
    {
      if (64 - v126 >= v3)
      {
        v127 = v3;
      }

      else
      {
        v127 = 64 - v126;
      }

      memcpy((v5 + 72 + v126), v4, v127);
      v128 = *(v5 + 136) + v127;
      *(v5 + 136) = v128;
      v4 = (v4 + v127);
      v3 -= v127;
      if (!v3)
      {
        goto LABEL_75;
      }

      llvm_blake3_compress_in_place_portable((v5 + 32), (v5 + 72), 64, *(v5 + 64), *(v5 + 138) | (*(v5 + 137) == 0));
      ++*(v5 + 137);
      *(v5 + 136) = 0;
      *(v5 + 72) = 0u;
      *(v5 + 88) = 0u;
      *(v5 + 104) = 0u;
      *(v5 + 120) = 0u;
    }

    if (v3 < 0x41)
    {
      v128 = 0;
    }

    else
    {
      v129 = *(v5 + 137);
      do
      {
        llvm_blake3_compress_in_place_portable((v5 + 32), v4, 64, *(v5 + 64), *(v5 + 138) | (v129 == 0));
        v129 = *(v5 + 137) + 1;
        *(v5 + 137) = v129;
        v4 += 16;
        v3 -= 64;
      }

      while (v3 > 0x40);
      v128 = *(v5 + 136);
    }

LABEL_75:
    if (64 - v128 < v3)
    {
      v3 = 64 - v128;
    }

    result = memcpy((v5 + v128 + 72), v4, v3);
    *(v5 + 136) += v3;
    v130 = vcnt_s8(*(v5 + 64));
    v130.i16[0] = vaddlv_u8(v130);
    v131 = v130.i32[0];
    v132 = *(v5 + 144);
    if (v130.i32[0] < v132)
    {
      do
      {
        v133 = *(v5 + 16);
        v134 = v5 + 145 + 32 * v132;
        v161 = *v5;
        v162 = v133;
        v135 = *(v134 - 48);
        *&v163[8] = *(v134 - 64);
        *&v163[24] = v135;
        v136 = *(v134 - 16);
        v164 = *(v134 - 32);
        v137 = *(v5 + 138);
        v165 = v136;
        v166 = 64;
        *v163 = 0;
        *(&v166 + 1) = v137 | 4;
        v138 = *(v5 + 16);
        *v154 = *v5;
        *&v154[16] = v138;
        result = llvm_blake3_compress_in_place_portable(v154, &v163[8], 64, 0, v137 | 4u);
        v139 = *&v154[4];
        *(v134 - 64) = *v154;
        *(v134 - 60) = v139;
        *(v134 - 56) = *&v154[8];
        v140 = *&v154[28];
        *(v134 - 40) = *&v154[24];
        *(v134 - 36) = v140;
        LOBYTE(v140) = *(v5 + 144) - 1;
        *(v5 + 144) = v140;
        v132 = v140;
      }

      while (v131 < v140);
    }
  }

LABEL_79:
  v141 = *MEMORY[0x277D85DE8];
  return result;
}

unsigned __int8 *llvm_blake3_hasher_finalize_seek(unsigned __int8 *result, unint64_t a2, char *a3, unint64_t a4)
{
  v35 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    goto LABEL_20;
  }

  v4 = a4;
  v7 = result;
  v8 = result[144];
  if (result[144])
  {
    v32 = 0u;
    memset(v33, 0, sizeof(v33));
    v31 = 0u;
    v9 = result[137];
    v10 = result[136];
    if (v10 | (v9 << 6))
    {
      v11 = *(result + 8);
      v12 = result[138] | (v9 == 0) | 2;
      *(&v33[4] + 10) = 0;
      HIWORD(v33[4]) = 0;
      v13 = *(result + 3);
      v31 = *(result + 2);
      v32 = v13;
      *(v33 + 8) = *(result + 72);
      *(&v33[1] + 8) = *(result + 88);
      *(&v33[2] + 8) = *(result + 104);
      *(&v33[3] + 8) = *(result + 120);
      *&v33[0] = v11;
      BYTE8(v33[4]) = v10;
      BYTE9(v33[4]) = v12;
    }

    else
    {
      v12 = result[138] | 4;
      *(&v33[4] + 10) = 0;
      HIWORD(v33[4]) = 0;
      v21 = *(result + 1);
      v31 = *result;
      v32 = v21;
      LOBYTE(v10) = 64;
      BYTE8(v33[4]) = 64;
      BYTE9(v33[4]) = v12;
      v8 -= 2;
      v22 = &result[32 * v8];
      *(v33 + 8) = *(v22 + 145);
      *(&v33[1] + 8) = *(v22 + 161);
      *(&v33[2] + 8) = *(v22 + 177);
      *(&v33[3] + 8) = *(v22 + 193);
      if (!v8)
      {
        goto LABEL_15;
      }

      v11 = 0;
    }

    v23 = 32 * v8 + 113;
    do
    {
      --v8;
      v29 = *&v7[v23];
      v30 = *&v7[v23 + 16];
      *v34 = v31;
      *&v34[16] = v32;
      llvm_blake3_compress_in_place_portable(v34, v33 + 2, v10, v11, v12);
      v11 = 0;
      DWORD2(v33[2]) = *v34;
      WORD6(v33[2]) = *&v34[4];
      *(&v33[2] + 14) = *&v34[6];
      *(&v33[3] + 6) = *&v34[14];
      *(&v33[3] + 10) = *&v34[18];
      HIWORD(v33[3]) = *&v34[22];
      *(&v33[4] + 1) = *&v34[25];
      v24 = *(v7 + 1);
      v31 = *v7;
      v32 = v24;
      *(v33 + 8) = v29;
      LOBYTE(v33[4]) = v34[24];
      BYTE3(v33[4]) = v34[27];
      DWORD1(v33[4]) = *&v34[28];
      v12 = v7[138] | 4;
      *(&v33[4] + 10) = 0;
      HIWORD(v33[4]) = 0;
      *&v33[0] = 0;
      *(&v33[1] + 8) = v30;
      LOBYTE(v10) = 64;
      BYTE8(v33[4]) = 64;
      v23 -= 32;
      BYTE9(v33[4]) = v12;
    }

    while (v8);
LABEL_15:
    v25 = a2 >> 6;
    v26 = a2 & 0x3F;
    do
    {
      llvm_blake3_compress_xof_portable(&v31, v33 + 2, BYTE8(v33[4]), v25, BYTE9(v33[4]) | 8, v34);
      if (v4 >= 64 - v26)
      {
        v27 = 64 - v26;
      }

      else
      {
        v27 = v4;
      }

      result = memcpy(a3, &v34[v26], v27);
      v26 = 0;
      a3 += v27;
      ++v25;
      v4 -= v27;
    }

    while (v4);
    goto LABEL_20;
  }

  v14 = result[138] | (result[137] == 0) | 2;
  v15 = result[136];
  v16 = *(result + 8);
  *(&v33[4] + 1) = 0;
  v17 = *(result + 3);
  v31 = *(result + 2);
  v32 = v17;
  *(v33 + 8) = *(result + 72);
  *(&v33[1] + 8) = *(result + 88);
  *(&v33[2] + 8) = *(result + 104);
  *(&v33[3] + 8) = *(result + 120);
  BYTE8(v33[4]) = v15;
  v18 = a2 >> 6;
  *&v33[0] = v16;
  v19 = a2 & 0x3F;
  BYTE9(v33[4]) = v14;
  do
  {
    llvm_blake3_compress_xof_portable(&v31, v33 + 2, BYTE8(v33[4]), v18, BYTE9(v33[4]) | 8, v34);
    if (v4 >= 64 - v19)
    {
      v20 = 64 - v19;
    }

    else
    {
      v20 = v4;
    }

    result = memcpy(a3, &v34[v19], v20);
    v19 = 0;
    a3 += v20;
    ++v18;
    v4 -= v20;
  }

  while (v4);
LABEL_20:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t blake3_compress_subtree_wide(uint64_t a1, unint64_t a2, const float *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v60 = *MEMORY[0x277D85DE8];
  if (a2 <= 0x1000)
  {
    memset(v58, 0, sizeof(v58));
    v20 = 0;
    if (a2 < 0x400)
    {
      v19 = 0;
      v24 = a2;
    }

    else
    {
      v21 = (a2 - 1024) >> 10;
      v22 = v21 + 1;
      v23 = v58;
      do
      {
        *v23++ = a1 + v20;
        v20 += 1024;
        --v22;
      }

      while (v22);
      v19 = v21 + 1;
      v24 = a2 - v20;
    }

    llvm_blake3_hash_many_neon(v58, v19, 16, a3, a4, 1u, a5, 1, 2, a6);
    if (v20 < a2)
    {
      v31 = *a3;
      v32 = *(a3 + 1);
      v51 = 0;
      v46 = v31;
      v47 = v32;
      BYTE2(v51) = a5;
      memset(&v48[8], 0, 32);
      v49 = 0u;
      v50 = 0u;
      v33 = (a1 + v20);
      *v48 = v19 + a4;
      if (v24 < 0x41)
      {
        v35 = 0;
      }

      else
      {
        v34 = 0;
        do
        {
          llvm_blake3_compress_in_place_portable(&v46, v33, 64, *v48, BYTE2(v51) | (v34 == 0));
          v34 = ++BYTE1(v51);
          v33 += 16;
          v24 -= 64;
        }

        while (v24 > 0x40);
        v35 = v51;
      }

      if (64 - v35 >= v24)
      {
        v40 = v24;
      }

      else
      {
        v40 = 64 - v35;
      }

      memcpy(&v48[v35 + 8], v33, v40);
      v53 = v46;
      v54 = v47;
      v56[0] = *&v48[8];
      v56[1] = *&v48[24];
      v56[2] = v49;
      v56[3] = v50;
      LOBYTE(v51) = v51 + v40;
      v57 = v51;
      v55 = *v48;
      *(&v57 + 1) = (BYTE2(v51) | (BYTE1(v51) == 0)) | 2;
      v41 = a6 + 32 * v19;
      *v59 = v46;
      *&v59[16] = v47;
      llvm_blake3_compress_in_place_portable(v59, v56, v51, *v48, *(&v57 + 1));
      v42 = *&v59[4];
      *v41 = *v59;
      *(v41 + 4) = v42;
      *(v41 + 8) = *&v59[8];
      v43 = *&v59[28];
      *(v41 + 24) = *&v59[24];
      *(v41 + 28) = v43;
      goto LABEL_26;
    }
  }

  else
  {
    v12 = 1024 << (__clz(((a2 - 1) >> 10) | 1) ^ 0x3Fu);
    v13 = a2 - v12;
    v14 = a4 + (v12 >> 10);
    v15 = blake3_compress_subtree_wide(a1, v12, a3, a4, a5, &v46);
    v16 = blake3_compress_subtree_wide(a1 + v12, v13, a3, v14, a5, &v52);
    if (v15 == 1)
    {
      v17 = v47;
      *a6 = v46;
      *(a6 + 16) = v17;
      v18 = *&v48[16];
      *(a6 + 32) = *v48;
      *(a6 + 48) = v18;
      v19 = 2;
      goto LABEL_27;
    }

    v25 = v16 + v15;
    v53 = 0u;
    v54 = 0u;
    if ((v16 + v15) < 2)
    {
      v19 = 0;
      v28 = 0;
    }

    else
    {
      v26 = (v16 + v15 - 2) >> 1;
      v27 = v26 + 1;
      v28 = 2 * v26 + 2;
      v29 = &v53;
      v30 = &v46;
      do
      {
        *v29 = v30;
        v29 = (v29 + 8);
        v30 += 4;
        --v27;
      }

      while (v27);
      v19 = v26 + 1;
    }

    llvm_blake3_hash_many_neon(&v53, v19, 1, a3, 0, 0, a5 | 4, 0, 0, a6);
    if (v28 < v25)
    {
      v36 = &v46 + 4 * v19;
      v37 = *v36;
      v38 = v36[1];
      v39 = (a6 + 32 * v19);
      *v39 = v37;
      v39[1] = v38;
LABEL_26:
      ++v19;
    }
  }

LABEL_27:
  v44 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t llvm_blake3_compress_in_place_portable(int *a1, int *a2, int a3, uint64_t a4, int a5)
{
  v504 = *a2;
  v501 = a2[1];
  v5 = a1[4];
  v6 = a1[5];
  v7 = *a1 + *a2 + v5;
  HIDWORD(v8) = v7 ^ a4;
  LODWORD(v8) = v7 ^ a4;
  v9 = (v8 >> 16) + 1779033703;
  v10 = v9 ^ v5;
  HIDWORD(v8) = v9 ^ v5;
  LODWORD(v8) = v9 ^ v5;
  v11 = v7 + v501 + (v8 >> 12);
  LODWORD(v8) = v11 ^ __ROR4__(v7 ^ a4, 16);
  v12 = v8;
  HIDWORD(v8) = v8;
  v13 = v8 >> 8;
  v499 = a2[2];
  v507 = a2[3];
  v14 = a1[1] + v499 + v6;
  HIDWORD(v8) = v14 ^ HIDWORD(a4);
  LODWORD(v8) = v14 ^ HIDWORD(a4);
  v15 = (v8 >> 16) - 1150833019;
  v16 = v15 ^ v6;
  HIDWORD(v8) = v16;
  LODWORD(v8) = v16;
  v17 = v14 + v507 + (v8 >> 12);
  LODWORD(v8) = v17 ^ __ROR4__(v14 ^ HIDWORD(a4), 16);
  v18 = v8;
  HIDWORD(v8) = v8;
  v19 = (v8 >> 8) + v15;
  LODWORD(v8) = v19 ^ __ROR4__(v16, 12);
  v20 = v8;
  HIDWORD(v8) = v8;
  v21 = v8 >> 7;
  v508 = a2[4];
  v496 = a2[5];
  v23 = a1[6];
  v22 = a1[7];
  v24 = a1[2] + v508 + v23;
  v25 = v24 ^ a3;
  HIDWORD(v8) = v25;
  LODWORD(v8) = v25;
  v26 = (v8 >> 16) + 1013904242;
  v27 = v26 ^ v23;
  HIDWORD(v8) = v27;
  LODWORD(v8) = v27;
  v28 = v24 + v496 + (v8 >> 12);
  LODWORD(v8) = v28 ^ __ROR4__(v25, 16);
  v29 = v8;
  HIDWORD(v8) = v8;
  v30 = (v8 >> 8) + v26;
  LODWORD(v8) = v30 ^ __ROR4__(v27, 12);
  v31 = v8;
  HIDWORD(v8) = v8;
  v32 = v8 >> 7;
  v503 = a2[7];
  v505 = a2[6];
  v33 = a1[3] + v505 + v22;
  HIDWORD(v8) = v33 ^ a5;
  LODWORD(v8) = v33 ^ a5;
  v34 = (v8 >> 16) - 1521486534;
  v35 = v34 ^ v22;
  HIDWORD(v8) = v34 ^ v22;
  LODWORD(v8) = v34 ^ v22;
  v36 = v33 + v503 + (v8 >> 12);
  v37 = v13 + v9;
  LODWORD(v8) = v36 ^ __ROR4__(v33 ^ a5, 16);
  HIDWORD(v8) = v8;
  v38 = v8 >> 8;
  v497 = a2[8];
  v498 = a2[9];
  v39 = v11 + v497 + v21;
  LODWORD(v8) = v39 ^ __ROR4__(v8, 8);
  v40 = v8;
  HIDWORD(v8) = v8;
  v41 = v38 + v34;
  v42 = (v8 >> 16) + v30;
  LODWORD(v8) = v42 ^ __ROR4__(v20, 7);
  v43 = v8;
  HIDWORD(v8) = v8;
  v44 = v39 + v498 + (v8 >> 12);
  LODWORD(v8) = v44 ^ __ROR4__(v40, 16);
  v45 = v8;
  HIDWORD(v8) = v8;
  v46 = (v8 >> 8) + v42;
  v47 = a2[10];
  v48 = v17 + v47 + v32;
  LODWORD(v8) = v48 ^ __ROR4__(v12, 8);
  v49 = v8;
  HIDWORD(v8) = v8;
  v50 = v8 >> 16;
  v51 = v41 ^ __ROR4__(v35, 12);
  LODWORD(v8) = (v50 + v41) ^ __ROR4__(v31, 7);
  v52 = v8;
  HIDWORD(v8) = v8;
  v492 = a2[11];
  v53 = v48 + v492 + (v8 >> 12);
  LODWORD(v8) = v53 ^ __ROR4__(v49, 16);
  v54 = v8;
  HIDWORD(v8) = v8;
  v55 = (v8 >> 8) + v50 + v41;
  v57 = a2[12];
  v56 = a2[13];
  HIDWORD(v8) = v51;
  LODWORD(v8) = v51;
  v58 = v28 + v57 + (v8 >> 7);
  v59 = v37 ^ __ROR4__(v10, 12);
  LODWORD(v8) = v58 ^ __ROR4__(v18, 8);
  v60 = v8;
  HIDWORD(v8) = v8;
  v61 = (v8 >> 16) + v37;
  LODWORD(v8) = v61 ^ __ROR4__(v51, 7);
  v62 = v8;
  HIDWORD(v8) = v8;
  v63 = v58 + v56 + (v8 >> 12);
  v500 = a2[14];
  HIDWORD(v8) = v59;
  LODWORD(v8) = v59;
  v64 = v36 + v500 + (v8 >> 7);
  LODWORD(v8) = v64 ^ __ROR4__(v29, 8);
  v65 = v8;
  HIDWORD(v8) = v8;
  v66 = (v8 >> 16) + v19;
  v494 = a2[15];
  LODWORD(v8) = v66 ^ __ROR4__(v59, 7);
  v67 = v8;
  HIDWORD(v8) = v8;
  v68 = v64 + v494 + (v8 >> 12);
  LODWORD(v8) = __ROR4__(v60, 16);
  v69 = v63 ^ v8;
  v71 = __PAIR64__(v63 ^ v8, __ROR4__(v65, 16));
  v70 = v68 ^ v71;
  LODWORD(v71) = v69;
  v72 = v71 >> 8;
  HIDWORD(v71) = v70;
  LODWORD(v71) = v70;
  v73 = v72 + v61;
  v74 = (v71 >> 8) + v66;
  LODWORD(v71) = v74 ^ __ROR4__(v67, 12);
  v75 = v71;
  HIDWORD(v71) = v71;
  v76 = v44 + v499 + (v71 >> 7);
  v77 = v73 ^ __ROR4__(v62, 12);
  LODWORD(v71) = v76 ^ __ROR4__(v54, 8);
  v78 = v71;
  HIDWORD(v71) = v71;
  v79 = (v71 >> 16) + v73;
  LODWORD(v71) = v79 ^ __ROR4__(v75, 7);
  v80 = v71;
  HIDWORD(v71) = v71;
  v81 = v76 + v505 + (v71 >> 12);
  LODWORD(v71) = v81 ^ __ROR4__(v78, 16);
  v82 = v71;
  HIDWORD(v71) = v71;
  v83 = (v71 >> 8) + v79;
  LODWORD(v71) = v46 ^ __ROR4__(v43, 12);
  v84 = v71;
  HIDWORD(v71) = v71;
  v85 = v53 + v507 + (v71 >> 7);
  LODWORD(v71) = v85 ^ __ROR4__(v69, 8);
  v86 = v71;
  HIDWORD(v71) = v71;
  v87 = (v71 >> 16) + v74;
  LODWORD(v71) = v87 ^ __ROR4__(v84, 7);
  v88 = v71;
  HIDWORD(v71) = v71;
  v89 = v85 + v47 + (v71 >> 12);
  LODWORD(v71) = v89 ^ __ROR4__(v86, 16);
  v90 = v71;
  HIDWORD(v71) = v71;
  v91 = (v71 >> 8) + v87;
  LODWORD(v71) = v55 ^ __ROR4__(v52, 12);
  v92 = v71;
  HIDWORD(v71) = v71;
  v93 = v63 + v503 + (v71 >> 7);
  LODWORD(v71) = v93 ^ __ROR4__(v70, 8);
  v94 = v71;
  HIDWORD(v71) = v71;
  v95 = (v71 >> 16) + v46;
  LODWORD(v71) = v95 ^ __ROR4__(v92, 7);
  v96 = v71;
  HIDWORD(v71) = v71;
  v97 = v93 + *a2 + (v71 >> 12);
  HIDWORD(v71) = v77;
  LODWORD(v71) = v77;
  v98 = v68 + v508 + (v71 >> 7);
  LODWORD(v71) = v98 ^ __ROR4__(v45, 8);
  v99 = v71;
  HIDWORD(v71) = v71;
  v100 = (v71 >> 16) + v55;
  v506 = v56;
  LODWORD(v71) = v100 ^ __ROR4__(v77, 7);
  v101 = v71;
  HIDWORD(v71) = v71;
  v102 = v98 + v56 + (v71 >> 12);
  LODWORD(v71) = __ROR4__(v94, 16);
  v103 = v97 ^ v71;
  v105 = __PAIR64__(v97 ^ v71, __ROR4__(v99, 16));
  v104 = v102 ^ v105;
  LODWORD(v105) = v103;
  v106 = v105 >> 8;
  HIDWORD(v105) = v104;
  LODWORD(v105) = v104;
  v107 = v106 + v95;
  v108 = (v105 >> 8) + v100;
  LODWORD(v105) = v91 ^ __ROR4__(v88, 12);
  v109 = v105;
  HIDWORD(v105) = v105;
  v110 = v81 + v501 + (v105 >> 7);
  v111 = v107 ^ __ROR4__(v96, 12);
  LODWORD(v105) = v110 ^ __ROR4__(v104, 8);
  v112 = v105;
  HIDWORD(v105) = v105;
  v113 = (v105 >> 16) + v107;
  LODWORD(v105) = v113 ^ __ROR4__(v109, 7);
  v114 = v105;
  HIDWORD(v105) = v105;
  v115 = v110 + v492 + (v105 >> 12);
  LODWORD(v105) = v115 ^ __ROR4__(v112, 16);
  v116 = v105;
  HIDWORD(v105) = v105;
  v117 = (v105 >> 8) + v113;
  v502 = v57;
  HIDWORD(v105) = v111;
  LODWORD(v105) = v111;
  v118 = v89 + v57 + (v105 >> 7);
  v119 = v108 ^ __ROR4__(v101, 12);
  LODWORD(v105) = v118 ^ __ROR4__(v82, 8);
  v120 = v105;
  HIDWORD(v105) = v105;
  v121 = (v105 >> 16) + v108;
  LODWORD(v105) = v121 ^ __ROR4__(v111, 7);
  v122 = v105;
  HIDWORD(v105) = v105;
  v123 = v118 + v496 + (v105 >> 12);
  LODWORD(v105) = v123 ^ __ROR4__(v120, 16);
  v124 = v105;
  HIDWORD(v105) = v105;
  v125 = (v105 >> 8) + v121;
  HIDWORD(v105) = v119;
  LODWORD(v105) = v119;
  v126 = v97 + v498 + (v105 >> 7);
  v127 = v83 ^ __ROR4__(v80, 12);
  LODWORD(v105) = v126 ^ __ROR4__(v90, 8);
  v128 = v105;
  HIDWORD(v105) = v105;
  v129 = (v105 >> 16) + v83;
  LODWORD(v105) = v129 ^ __ROR4__(v119, 7);
  v130 = v105;
  HIDWORD(v105) = v105;
  v131 = v126 + v500 + (v105 >> 12);
  HIDWORD(v105) = v127;
  LODWORD(v105) = v127;
  v132 = v102 + v494 + (v105 >> 7);
  LODWORD(v105) = v132 ^ __ROR4__(v103, 8);
  v133 = v105;
  HIDWORD(v105) = v105;
  v134 = (v105 >> 16) + v91;
  LODWORD(v105) = v134 ^ __ROR4__(v127, 7);
  v135 = v105;
  HIDWORD(v105) = v105;
  v136 = v132 + v497 + (v105 >> 12);
  LODWORD(v105) = __ROR4__(v128, 16);
  v137 = v131 ^ v105;
  v139 = __PAIR64__(v131 ^ v105, __ROR4__(v133, 16));
  v138 = v136 ^ v139;
  LODWORD(v139) = v137;
  v140 = v139 >> 8;
  HIDWORD(v139) = v138;
  LODWORD(v139) = v138;
  v141 = v140 + v129;
  v142 = (v139 >> 8) + v134;
  LODWORD(v139) = v142 ^ __ROR4__(v135, 12);
  v143 = v139;
  HIDWORD(v139) = v139;
  v144 = v115 + v507 + (v139 >> 7);
  v145 = v141 ^ __ROR4__(v130, 12);
  LODWORD(v139) = v144 ^ __ROR4__(v124, 8);
  v146 = v139;
  HIDWORD(v139) = v139;
  v147 = (v139 >> 16) + v141;
  LODWORD(v139) = v147 ^ __ROR4__(v143, 7);
  v148 = v139;
  HIDWORD(v139) = v139;
  v149 = v144 + v508 + (v139 >> 12);
  LODWORD(v139) = v149 ^ __ROR4__(v146, 16);
  v150 = v139;
  HIDWORD(v139) = v139;
  v151 = (v139 >> 8) + v147;
  LODWORD(v139) = v117 ^ __ROR4__(v114, 12);
  v152 = v139;
  HIDWORD(v139) = v139;
  v495 = a2[10];
  v153 = v123 + v495 + (v139 >> 7);
  LODWORD(v139) = v153 ^ __ROR4__(v137, 8);
  v154 = v139;
  HIDWORD(v139) = v139;
  v155 = (v139 >> 16) + v142;
  LODWORD(v139) = v155 ^ __ROR4__(v152, 7);
  v156 = v139;
  HIDWORD(v139) = v139;
  v157 = v153 + v57 + (v139 >> 12);
  LODWORD(v139) = v157 ^ __ROR4__(v154, 16);
  v158 = v139;
  HIDWORD(v139) = v139;
  v159 = (v139 >> 8) + v155;
  LODWORD(v139) = v125 ^ __ROR4__(v122, 12);
  v160 = v139;
  HIDWORD(v139) = v139;
  v161 = v131 + v56 + (v139 >> 7);
  LODWORD(v139) = v161 ^ __ROR4__(v138, 8);
  v162 = v139;
  HIDWORD(v139) = v139;
  v163 = (v139 >> 16) + v117;
  LODWORD(v139) = v163 ^ __ROR4__(v160, 7);
  v164 = v139;
  HIDWORD(v139) = v139;
  v165 = v161 + v499 + (v139 >> 12);
  HIDWORD(v139) = v145;
  LODWORD(v139) = v145;
  v166 = v136 + v503 + (v139 >> 7);
  LODWORD(v139) = v166 ^ __ROR4__(v116, 8);
  v167 = v139;
  HIDWORD(v139) = v139;
  v168 = (v139 >> 16) + v125;
  LODWORD(v139) = v168 ^ __ROR4__(v145, 7);
  v169 = v139;
  HIDWORD(v139) = v139;
  v170 = v166 + v500 + (v139 >> 12);
  LODWORD(v139) = __ROR4__(v162, 16);
  v171 = v165 ^ v139;
  v173 = __PAIR64__(v165 ^ v139, __ROR4__(v167, 16));
  v172 = v170 ^ v173;
  LODWORD(v173) = v171;
  v174 = v173 >> 8;
  HIDWORD(v173) = v172;
  LODWORD(v173) = v172;
  v175 = v174 + v163;
  v176 = (v173 >> 8) + v168;
  LODWORD(v173) = v159 ^ __ROR4__(v156, 12);
  v177 = v173;
  HIDWORD(v173) = v173;
  v178 = v149 + v505 + (v173 >> 7);
  v179 = v175 ^ __ROR4__(v164, 12);
  LODWORD(v173) = v178 ^ __ROR4__(v172, 8);
  v180 = v173;
  HIDWORD(v173) = v173;
  v181 = (v173 >> 16) + v175;
  LODWORD(v173) = v181 ^ __ROR4__(v177, 7);
  v182 = v173;
  HIDWORD(v173) = v173;
  v183 = v178 + v496 + (v173 >> 12);
  LODWORD(v173) = v183 ^ __ROR4__(v180, 16);
  v184 = v173;
  HIDWORD(v173) = v173;
  v185 = (v173 >> 8) + v181;
  HIDWORD(v173) = v179;
  LODWORD(v173) = v179;
  v186 = v157 + v498 + (v173 >> 7);
  v187 = v176 ^ __ROR4__(v169, 12);
  LODWORD(v173) = v186 ^ __ROR4__(v150, 8);
  v188 = v173;
  HIDWORD(v173) = v173;
  v189 = (v173 >> 16) + v176;
  LODWORD(v173) = v189 ^ __ROR4__(v179, 7);
  v190 = v173;
  HIDWORD(v173) = v173;
  v191 = v186 + *a2 + (v173 >> 12);
  LODWORD(v173) = v191 ^ __ROR4__(v188, 16);
  v192 = v173;
  HIDWORD(v173) = v173;
  v193 = (v173 >> 8) + v189;
  HIDWORD(v173) = v187;
  LODWORD(v173) = v187;
  v194 = v165 + v492 + (v173 >> 7);
  v195 = v151 ^ __ROR4__(v148, 12);
  LODWORD(v173) = v194 ^ __ROR4__(v158, 8);
  v196 = v173;
  HIDWORD(v173) = v173;
  v197 = (v173 >> 16) + v151;
  LODWORD(v173) = v197 ^ __ROR4__(v187, 7);
  v198 = v173;
  HIDWORD(v173) = v173;
  v199 = v194 + v494 + (v173 >> 12);
  HIDWORD(v173) = v195;
  LODWORD(v173) = v195;
  v200 = v170 + v497 + (v173 >> 7);
  LODWORD(v173) = v200 ^ __ROR4__(v171, 8);
  v201 = v173;
  HIDWORD(v173) = v173;
  v202 = (v173 >> 16) + v159;
  LODWORD(v173) = v202 ^ __ROR4__(v195, 7);
  v203 = v173;
  HIDWORD(v173) = v173;
  v204 = v200 + v501 + (v173 >> 12);
  LODWORD(v173) = __ROR4__(v196, 16);
  v205 = v199 ^ v173;
  v207 = __PAIR64__(v199 ^ v173, __ROR4__(v201, 16));
  v206 = v204 ^ v207;
  LODWORD(v207) = v205;
  v208 = v207 >> 8;
  HIDWORD(v207) = v206;
  LODWORD(v207) = v206;
  v209 = v208 + v197;
  v210 = (v207 >> 8) + v202;
  LODWORD(v207) = v210 ^ __ROR4__(v203, 12);
  v211 = v207;
  HIDWORD(v207) = v207;
  v212 = v183 + v495 + (v207 >> 7);
  v213 = v209 ^ __ROR4__(v198, 12);
  LODWORD(v207) = v212 ^ __ROR4__(v192, 8);
  v214 = v207;
  HIDWORD(v207) = v207;
  v215 = (v207 >> 16) + v209;
  LODWORD(v207) = v215 ^ __ROR4__(v211, 7);
  v216 = v207;
  HIDWORD(v207) = v207;
  v217 = v212 + v503 + (v207 >> 12);
  LODWORD(v207) = v217 ^ __ROR4__(v214, 16);
  v218 = v207;
  HIDWORD(v207) = v207;
  v219 = (v207 >> 8) + v215;
  LODWORD(v207) = v185 ^ __ROR4__(v182, 12);
  v220 = v207;
  HIDWORD(v207) = v207;
  v221 = v191 + v57 + (v207 >> 7);
  LODWORD(v207) = v221 ^ __ROR4__(v205, 8);
  v222 = v207;
  HIDWORD(v207) = v207;
  v223 = (v207 >> 16) + v210;
  LODWORD(v207) = v223 ^ __ROR4__(v220, 7);
  v224 = v207;
  HIDWORD(v207) = v207;
  v225 = v221 + v498 + (v207 >> 12);
  LODWORD(v207) = v225 ^ __ROR4__(v222, 16);
  v226 = v207;
  HIDWORD(v207) = v207;
  v227 = (v207 >> 8) + v223;
  LODWORD(v207) = v193 ^ __ROR4__(v190, 12);
  v228 = v207;
  HIDWORD(v207) = v207;
  v229 = v199 + v500 + (v207 >> 7);
  LODWORD(v207) = v229 ^ __ROR4__(v206, 8);
  v230 = v207;
  HIDWORD(v207) = v207;
  v231 = (v207 >> 16) + v185;
  LODWORD(v207) = v231 ^ __ROR4__(v228, 7);
  v232 = v207;
  HIDWORD(v207) = v207;
  v233 = v229 + v507 + (v207 >> 12);
  HIDWORD(v207) = v213;
  LODWORD(v207) = v213;
  v234 = v204 + v56 + (v207 >> 7);
  LODWORD(v207) = v234 ^ __ROR4__(v184, 8);
  v235 = v207;
  HIDWORD(v207) = v207;
  v236 = (v207 >> 16) + v193;
  LODWORD(v207) = v236 ^ __ROR4__(v213, 7);
  v237 = v207;
  HIDWORD(v207) = v207;
  v238 = v234 + v494 + (v207 >> 12);
  LODWORD(v207) = __ROR4__(v230, 16);
  v239 = v233 ^ v207;
  v241 = __PAIR64__(v233 ^ v207, __ROR4__(v235, 16));
  v240 = v238 ^ v241;
  LODWORD(v241) = v239;
  v242 = v241 >> 8;
  HIDWORD(v241) = v240;
  LODWORD(v241) = v240;
  v243 = v242 + v231;
  v244 = (v241 >> 8) + v236;
  LODWORD(v241) = v227 ^ __ROR4__(v224, 12);
  v245 = v241;
  HIDWORD(v241) = v241;
  v246 = v217 + v508 + (v241 >> 7);
  v247 = v243 ^ __ROR4__(v232, 12);
  LODWORD(v241) = v246 ^ __ROR4__(v240, 8);
  v248 = v241;
  HIDWORD(v241) = v241;
  v249 = (v241 >> 16) + v243;
  LODWORD(v241) = v249 ^ __ROR4__(v245, 7);
  v250 = v241;
  HIDWORD(v241) = v241;
  v251 = v246 + *a2 + (v241 >> 12);
  LODWORD(v241) = v251 ^ __ROR4__(v248, 16);
  v252 = v241;
  HIDWORD(v241) = v241;
  v253 = (v241 >> 8) + v249;
  HIDWORD(v241) = v247;
  LODWORD(v241) = v247;
  v254 = v225 + v492 + (v241 >> 7);
  v255 = v244 ^ __ROR4__(v237, 12);
  LODWORD(v241) = v254 ^ __ROR4__(v218, 8);
  v256 = v241;
  HIDWORD(v241) = v241;
  v257 = (v241 >> 16) + v244;
  LODWORD(v241) = v257 ^ __ROR4__(v247, 7);
  v258 = v241;
  HIDWORD(v241) = v241;
  v259 = v254 + v499 + (v241 >> 12);
  LODWORD(v241) = v259 ^ __ROR4__(v256, 16);
  v260 = v241;
  HIDWORD(v241) = v241;
  v261 = (v241 >> 8) + v257;
  HIDWORD(v241) = v255;
  LODWORD(v241) = v255;
  v262 = v233 + v496 + (v241 >> 7);
  v263 = v219 ^ __ROR4__(v216, 12);
  LODWORD(v241) = v262 ^ __ROR4__(v226, 8);
  v264 = v241;
  HIDWORD(v241) = v241;
  v265 = (v241 >> 16) + v219;
  LODWORD(v241) = v265 ^ __ROR4__(v255, 7);
  v266 = v241;
  HIDWORD(v241) = v241;
  v267 = v262 + v497 + (v241 >> 12);
  HIDWORD(v241) = v263;
  LODWORD(v241) = v263;
  v268 = v238 + v501 + (v241 >> 7);
  LODWORD(v241) = v268 ^ __ROR4__(v239, 8);
  v269 = v241;
  HIDWORD(v241) = v241;
  v270 = (v241 >> 16) + v227;
  LODWORD(v241) = v270 ^ __ROR4__(v263, 7);
  v271 = v241;
  HIDWORD(v241) = v241;
  v272 = v268 + v505 + (v241 >> 12);
  LODWORD(v241) = __ROR4__(v264, 16);
  v273 = v267 ^ v241;
  v275 = __PAIR64__(v267 ^ v241, __ROR4__(v269, 16));
  v274 = v272 ^ v275;
  LODWORD(v275) = v273;
  v276 = v275 >> 8;
  HIDWORD(v275) = v274;
  LODWORD(v275) = v274;
  v277 = v276 + v265;
  v278 = (v275 >> 8) + v270;
  LODWORD(v275) = v278 ^ __ROR4__(v271, 12);
  v279 = v275;
  HIDWORD(v275) = v275;
  v280 = v251 + v57 + (v275 >> 7);
  v281 = v277 ^ __ROR4__(v266, 12);
  LODWORD(v275) = v280 ^ __ROR4__(v260, 8);
  v282 = v275;
  HIDWORD(v275) = v275;
  v283 = (v275 >> 16) + v277;
  LODWORD(v275) = v283 ^ __ROR4__(v279, 7);
  v284 = v275;
  HIDWORD(v275) = v275;
  v285 = v280 + v56 + (v275 >> 12);
  LODWORD(v275) = v285 ^ __ROR4__(v282, 16);
  v286 = v275;
  HIDWORD(v275) = v275;
  v287 = (v275 >> 8) + v283;
  LODWORD(v275) = v253 ^ __ROR4__(v250, 12);
  v288 = v275;
  HIDWORD(v275) = v275;
  v289 = v259 + v498 + (v275 >> 7);
  LODWORD(v275) = v289 ^ __ROR4__(v273, 8);
  v290 = v275;
  HIDWORD(v275) = v275;
  v291 = (v275 >> 16) + v278;
  LODWORD(v275) = v291 ^ __ROR4__(v288, 7);
  v292 = v275;
  HIDWORD(v275) = v275;
  v293 = v289 + v492 + (v275 >> 12);
  LODWORD(v275) = v293 ^ __ROR4__(v290, 16);
  v294 = v275;
  HIDWORD(v275) = v275;
  v295 = (v275 >> 8) + v291;
  LODWORD(v275) = v261 ^ __ROR4__(v258, 12);
  v296 = v275;
  HIDWORD(v275) = v275;
  v297 = v267 + v494 + (v275 >> 7);
  LODWORD(v275) = v297 ^ __ROR4__(v274, 8);
  v298 = v275;
  HIDWORD(v275) = v275;
  v299 = (v275 >> 16) + v253;
  LODWORD(v275) = v299 ^ __ROR4__(v296, 7);
  v300 = v275;
  HIDWORD(v275) = v275;
  v301 = v297 + v495 + (v275 >> 12);
  HIDWORD(v275) = v281;
  LODWORD(v275) = v281;
  v302 = v272 + v500 + (v275 >> 7);
  LODWORD(v275) = v302 ^ __ROR4__(v252, 8);
  v303 = v275;
  HIDWORD(v275) = v275;
  v304 = (v275 >> 16) + v261;
  LODWORD(v275) = v304 ^ __ROR4__(v281, 7);
  v305 = v275;
  HIDWORD(v275) = v275;
  v306 = v302 + v497 + (v275 >> 12);
  LODWORD(v275) = __ROR4__(v298, 16);
  v307 = v301 ^ v275;
  v309 = __PAIR64__(v301 ^ v275, __ROR4__(v303, 16));
  v308 = v306 ^ v309;
  LODWORD(v309) = v307;
  v310 = v309 >> 8;
  HIDWORD(v309) = v308;
  LODWORD(v309) = v308;
  v311 = v310 + v299;
  v312 = (v309 >> 8) + v304;
  LODWORD(v309) = v295 ^ __ROR4__(v292, 12);
  v313 = v309;
  HIDWORD(v309) = v309;
  v314 = v285 + v503 + (v309 >> 7);
  v315 = v311 ^ __ROR4__(v300, 12);
  LODWORD(v309) = v314 ^ __ROR4__(v308, 8);
  v316 = v309;
  HIDWORD(v309) = v309;
  v317 = (v309 >> 16) + v311;
  LODWORD(v309) = v317 ^ __ROR4__(v313, 7);
  v318 = v309;
  HIDWORD(v309) = v309;
  v319 = v314 + v499 + (v309 >> 12);
  LODWORD(v309) = v319 ^ __ROR4__(v316, 16);
  v320 = v309;
  HIDWORD(v309) = v309;
  v321 = (v309 >> 8) + v317;
  HIDWORD(v309) = v315;
  LODWORD(v309) = v315;
  v322 = v293 + v496 + (v309 >> 7);
  v323 = v312 ^ __ROR4__(v305, 12);
  LODWORD(v309) = v322 ^ __ROR4__(v286, 8);
  v324 = v309;
  HIDWORD(v309) = v309;
  v325 = (v309 >> 16) + v312;
  LODWORD(v309) = v325 ^ __ROR4__(v315, 7);
  v326 = v309;
  HIDWORD(v309) = v309;
  v327 = v322 + v507 + (v309 >> 12);
  LODWORD(v309) = v327 ^ __ROR4__(v324, 16);
  v328 = v309;
  HIDWORD(v309) = v309;
  v329 = (v309 >> 8) + v325;
  HIDWORD(v309) = v323;
  LODWORD(v309) = v323;
  v330 = v301 + *a2 + (v309 >> 7);
  v331 = v287 ^ __ROR4__(v284, 12);
  LODWORD(v309) = v330 ^ __ROR4__(v294, 8);
  v332 = v309;
  HIDWORD(v309) = v309;
  v333 = (v309 >> 16) + v287;
  LODWORD(v309) = v333 ^ __ROR4__(v323, 7);
  v334 = v309;
  HIDWORD(v309) = v309;
  v335 = v330 + v501 + (v309 >> 12);
  HIDWORD(v309) = v331;
  LODWORD(v309) = v331;
  v336 = v306 + v505 + (v309 >> 7);
  LODWORD(v309) = v336 ^ __ROR4__(v307, 8);
  v337 = v309;
  HIDWORD(v309) = v309;
  v338 = (v309 >> 16) + v295;
  LODWORD(v309) = v338 ^ __ROR4__(v331, 7);
  v339 = v309;
  HIDWORD(v309) = v309;
  v340 = v336 + v508 + (v309 >> 12);
  LODWORD(v309) = __ROR4__(v332, 16);
  v341 = v335 ^ v309;
  v343 = __PAIR64__(v335 ^ v309, __ROR4__(v337, 16));
  v342 = v340 ^ v343;
  LODWORD(v343) = v341;
  v344 = v343 >> 8;
  HIDWORD(v343) = v342;
  LODWORD(v343) = v342;
  v345 = v344 + v333;
  v346 = (v343 >> 8) + v338;
  LODWORD(v343) = v346 ^ __ROR4__(v339, 12);
  v347 = v343;
  HIDWORD(v343) = v343;
  v348 = v319 + v498 + (v343 >> 7);
  v349 = v345 ^ __ROR4__(v334, 12);
  LODWORD(v343) = v348 ^ __ROR4__(v328, 8);
  v350 = v343;
  HIDWORD(v343) = v343;
  v351 = (v343 >> 16) + v345;
  LODWORD(v343) = v351 ^ __ROR4__(v347, 7);
  v352 = v343;
  HIDWORD(v343) = v343;
  v353 = v348 + v500 + (v343 >> 12);
  LODWORD(v343) = v353 ^ __ROR4__(v350, 16);
  v354 = v343;
  HIDWORD(v343) = v343;
  v355 = (v343 >> 8) + v351;
  LODWORD(v343) = v321 ^ __ROR4__(v318, 12);
  v356 = v343;
  HIDWORD(v343) = v343;
  v357 = v327 + v492 + (v343 >> 7);
  LODWORD(v343) = v357 ^ __ROR4__(v341, 8);
  v358 = v343;
  HIDWORD(v343) = v343;
  v359 = (v343 >> 16) + v346;
  LODWORD(v343) = v359 ^ __ROR4__(v356, 7);
  v360 = v343;
  HIDWORD(v343) = v343;
  v361 = v357 + v496 + (v343 >> 12);
  LODWORD(v343) = v361 ^ __ROR4__(v358, 16);
  v362 = v343;
  HIDWORD(v343) = v343;
  v363 = (v343 >> 8) + v359;
  LODWORD(v343) = v329 ^ __ROR4__(v326, 12);
  v364 = v343;
  HIDWORD(v343) = v343;
  v365 = v335 + v497 + (v343 >> 7);
  LODWORD(v343) = v365 ^ __ROR4__(v342, 8);
  v366 = v343;
  HIDWORD(v343) = v343;
  v367 = (v343 >> 16) + v321;
  LODWORD(v343) = v367 ^ __ROR4__(v364, 7);
  v368 = v343;
  HIDWORD(v343) = v343;
  v369 = v365 + v57 + (v343 >> 12);
  HIDWORD(v343) = v349;
  LODWORD(v343) = v349;
  v370 = v340 + v494 + (v343 >> 7);
  LODWORD(v343) = v370 ^ __ROR4__(v320, 8);
  v371 = v343;
  HIDWORD(v343) = v343;
  v372 = (v343 >> 16) + v329;
  LODWORD(v343) = v372 ^ __ROR4__(v349, 7);
  v373 = v343;
  HIDWORD(v343) = v343;
  v374 = v370 + v501 + (v343 >> 12);
  LODWORD(v343) = __ROR4__(v366, 16);
  v375 = v369 ^ v343;
  v377 = __PAIR64__(v369 ^ v343, __ROR4__(v371, 16));
  v376 = v374 ^ v377;
  LODWORD(v377) = v375;
  v378 = v377 >> 8;
  HIDWORD(v377) = v376;
  LODWORD(v377) = v376;
  v379 = v378 + v367;
  v380 = (v377 >> 8) + v372;
  LODWORD(v377) = v363 ^ __ROR4__(v360, 12);
  v381 = v377;
  HIDWORD(v377) = v377;
  v382 = v353 + v56 + (v377 >> 7);
  v383 = v379 ^ __ROR4__(v368, 12);
  LODWORD(v377) = v382 ^ __ROR4__(v376, 8);
  v384 = v377;
  HIDWORD(v377) = v377;
  v385 = (v377 >> 16) + v379;
  LODWORD(v377) = v385 ^ __ROR4__(v381, 7);
  v386 = v377;
  HIDWORD(v377) = v377;
  v387 = v382 + v507 + (v377 >> 12);
  LODWORD(v377) = v387 ^ __ROR4__(v384, 16);
  v388 = v377;
  HIDWORD(v377) = v377;
  v389 = (v377 >> 8) + v385;
  HIDWORD(v377) = v383;
  LODWORD(v377) = v383;
  v390 = v361 + *a2 + (v377 >> 7);
  v391 = v380 ^ __ROR4__(v373, 12);
  LODWORD(v377) = v390 ^ __ROR4__(v354, 8);
  v392 = v377;
  HIDWORD(v377) = v377;
  v393 = (v377 >> 16) + v380;
  LODWORD(v377) = v393 ^ __ROR4__(v383, 7);
  v394 = v377;
  HIDWORD(v377) = v377;
  v395 = v390 + v495 + (v377 >> 12);
  LODWORD(v377) = v395 ^ __ROR4__(v392, 16);
  v396 = v377;
  HIDWORD(v377) = v377;
  v397 = (v377 >> 8) + v393;
  HIDWORD(v377) = v391;
  LODWORD(v377) = v391;
  v398 = v369 + v499 + (v377 >> 7);
  v399 = v355 ^ __ROR4__(v352, 12);
  LODWORD(v377) = v398 ^ __ROR4__(v362, 8);
  v400 = v377;
  HIDWORD(v377) = v377;
  v401 = (v377 >> 16) + v355;
  LODWORD(v377) = v401 ^ __ROR4__(v391, 7);
  v402 = v377;
  HIDWORD(v377) = v377;
  v403 = v398 + v505 + (v377 >> 12);
  HIDWORD(v377) = v399;
  LODWORD(v377) = v399;
  v404 = v374 + v508 + (v377 >> 7);
  LODWORD(v377) = v404 ^ __ROR4__(v375, 8);
  v405 = v377;
  HIDWORD(v377) = v377;
  v406 = (v377 >> 16) + v363;
  LODWORD(v377) = v406 ^ __ROR4__(v399, 7);
  v407 = v377;
  HIDWORD(v377) = v377;
  v408 = v404 + v503 + (v377 >> 12);
  LODWORD(v377) = __ROR4__(v400, 16);
  v409 = v403 ^ v377;
  v411 = __PAIR64__(v403 ^ v377, __ROR4__(v405, 16));
  v410 = v408 ^ v411;
  LODWORD(v411) = v409;
  v412 = v411 >> 8;
  HIDWORD(v411) = v410;
  LODWORD(v411) = v410;
  v413 = v412 + v401;
  v414 = (v411 >> 8) + v406;
  LODWORD(v411) = v414 ^ __ROR4__(v407, 12);
  v415 = v411;
  HIDWORD(v411) = v411;
  v416 = v387 + v492 + (v411 >> 7);
  v417 = v413 ^ __ROR4__(v402, 12);
  LODWORD(v411) = v416 ^ __ROR4__(v396, 8);
  v418 = v411;
  HIDWORD(v411) = v411;
  v419 = (v411 >> 16) + v413;
  LODWORD(v411) = v419 ^ __ROR4__(v415, 7);
  v420 = v411;
  HIDWORD(v411) = v411;
  v421 = v416 + v494 + (v411 >> 12);
  LODWORD(v411) = v421 ^ __ROR4__(v418, 16);
  v422 = v411;
  HIDWORD(v411) = v411;
  v423 = (v411 >> 8) + v419;
  LODWORD(v411) = v389 ^ __ROR4__(v386, 12);
  v424 = v411;
  HIDWORD(v411) = v411;
  v425 = v395 + v496 + (v411 >> 7);
  LODWORD(v411) = v425 ^ __ROR4__(v409, 8);
  v426 = v411;
  HIDWORD(v411) = v411;
  v427 = (v411 >> 16) + v414;
  v428 = v397 ^ __ROR4__(v394, 12);
  LODWORD(v411) = v427 ^ __ROR4__(v424, 7);
  v429 = v411;
  HIDWORD(v411) = v411;
  v430 = v425 + v504 + (v411 >> 12);
  LODWORD(v411) = v430 ^ __ROR4__(v426, 16);
  v431 = v411;
  HIDWORD(v411) = v411;
  v432 = (v411 >> 8) + v427;
  HIDWORD(v411) = v428;
  LODWORD(v411) = v428;
  v433 = v403 + v501 + (v411 >> 7);
  LODWORD(v411) = v433 ^ __ROR4__(v410, 8);
  v434 = v411;
  HIDWORD(v411) = v411;
  v435 = (v411 >> 16) + v389;
  LODWORD(v411) = v435 ^ __ROR4__(v428, 7);
  v436 = v411;
  HIDWORD(v411) = v411;
  v437 = v433 + v498 + (v411 >> 12);
  HIDWORD(v411) = v417;
  LODWORD(v411) = v417;
  v438 = v408 + v497 + (v411 >> 7);
  LODWORD(v411) = v438 ^ __ROR4__(v388, 8);
  v439 = v411;
  HIDWORD(v411) = v411;
  v441 = (v411 >> 16) + v397;
  LODWORD(v411) = v437 ^ __ROR4__(v434, 16);
  v440 = v411;
  HIDWORD(v411) = v411;
  v442 = v411 >> 8;
  LODWORD(v411) = v441 ^ __ROR4__(v417, 7);
  v443 = v411;
  HIDWORD(v411) = v411;
  v444 = v438 + v505 + (v411 >> 12);
  LODWORD(v411) = v444 ^ __ROR4__(v439, 16);
  v445 = v411;
  HIDWORD(v411) = v411;
  v446 = v442 + v435;
  v447 = (v411 >> 8) + v441;
  LODWORD(v411) = v432 ^ __ROR4__(v429, 12);
  v448 = v411;
  HIDWORD(v411) = v411;
  v449 = v446 ^ __ROR4__(v436, 12);
  v450 = v421 + v500 + (v411 >> 7);
  LODWORD(v411) = v450 ^ __ROR4__(v445, 8);
  v451 = v411;
  HIDWORD(v411) = v411;
  v452 = (v411 >> 16) + v446;
  LODWORD(v411) = v452 ^ __ROR4__(v448, 7);
  v453 = v411;
  HIDWORD(v411) = v411;
  v454 = v450 + v495 + (v411 >> 12);
  LODWORD(v411) = v454 ^ __ROR4__(v451, 16);
  v455 = v411;
  HIDWORD(v411) = v411;
  v456 = (v411 >> 8) + v452;
  HIDWORD(v411) = v449;
  LODWORD(v411) = v449;
  v457 = v447 ^ __ROR4__(v443, 12);
  v458 = v430 + v499 + (v411 >> 7);
  LODWORD(v411) = v458 ^ __ROR4__(v422, 8);
  v459 = v411;
  HIDWORD(v411) = v411;
  v460 = (v411 >> 16) + v447;
  LODWORD(v411) = v460 ^ __ROR4__(v449, 7);
  v461 = v411;
  HIDWORD(v411) = v411;
  v462 = v458 + v502 + (v411 >> 12);
  LODWORD(v411) = v462 ^ __ROR4__(v459, 16);
  v463 = v411;
  HIDWORD(v411) = v411;
  v464 = (v411 >> 8) + v460;
  HIDWORD(v411) = v457;
  LODWORD(v411) = v457;
  v465 = v423 ^ __ROR4__(v420, 12);
  v466 = v437 + v507 + (v411 >> 7);
  LODWORD(v411) = v466 ^ __ROR4__(v431, 8);
  v467 = v411;
  HIDWORD(v411) = v411;
  v468 = (v411 >> 16) + v423;
  LODWORD(v411) = v468 ^ __ROR4__(v457, 7);
  v469 = v411;
  HIDWORD(v411) = v411;
  v470 = v466 + v508 + (v411 >> 12);
  HIDWORD(v411) = v465;
  LODWORD(v411) = v465;
  v471 = v444 + v503 + (v411 >> 7);
  LODWORD(v411) = v471 ^ __ROR4__(v440, 8);
  v472 = v411;
  HIDWORD(v411) = v411;
  v474 = (v411 >> 16) + v432;
  LODWORD(v411) = v470 ^ __ROR4__(v467, 16);
  v473 = v411;
  HIDWORD(v411) = v411;
  v475 = v411 >> 8;
  result = v506;
  LODWORD(v411) = v474 ^ __ROR4__(v465, 7);
  v476 = v411;
  HIDWORD(v411) = v411;
  v478 = v471 + v506 + (v411 >> 12);
  LODWORD(v411) = v478 ^ __ROR4__(v472, 16);
  v479 = v411;
  HIDWORD(v411) = v411;
  v480 = v475 + v468;
  v481 = (v411 >> 8) + v474;
  v482 = v480 ^ __ROR4__(v469, 12);
  *a1 = v480 ^ v454;
  a1[1] = v481 ^ v462;
  LODWORD(v411) = __ROR4__(v453, 12);
  v483 = v456 ^ v411;
  v485 = __PAIR64__(v456 ^ v411, __ROR4__(v461, 12));
  v484 = v464 ^ v485;
  a1[2] = v456 ^ v470;
  a1[3] = v464 ^ v478;
  LODWORD(v485) = v483;
  v486 = v485 >> 7;
  HIDWORD(v485) = v481 ^ __ROR4__(v476, 12);
  LODWORD(v485) = HIDWORD(v485);
  v487 = (v485 >> 7) ^ __ROR4__(v463, 8);
  v488 = __PAIR64__(v484, __ROR4__(v473, 8));
  a1[4] = v487;
  a1[5] = v486 ^ v488;
  LODWORD(v488) = v484;
  v489 = v488 >> 7;
  v491 = __PAIR64__(v482, __ROR4__(v479, 8));
  v490 = v489 ^ v491;
  LODWORD(v491) = v482;
  a1[6] = v490;
  a1[7] = (v491 >> 7) ^ __ROR4__(v455, 8);
  return result;
}

uint64_t llvm_blake3_compress_xof_portable(_DWORD *a1, int *a2, int a3, unint64_t a4, int a5, uint64_t a6)
{
  v468 = *a2;
  v470 = a2[1];
  v6 = a1[4];
  v7 = a1[5];
  v8 = *a1 + *a2 + v6;
  HIDWORD(v9) = v8 ^ a4;
  LODWORD(v9) = v8 ^ a4;
  v10 = (v9 >> 16) + 1779033703;
  v11 = v10 ^ v6;
  HIDWORD(v9) = v10 ^ v6;
  LODWORD(v9) = v10 ^ v6;
  v12 = v8 + v470 + (v9 >> 12);
  LODWORD(v9) = v12 ^ __ROR4__(v8 ^ a4, 16);
  v13 = v9;
  HIDWORD(v9) = v9;
  v14 = v9 >> 8;
  v15 = HIDWORD(a4);
  v16 = a2[2];
  v472 = a2[3];
  v17 = a1[1] + v16 + v7;
  LODWORD(v15) = v17 ^ v15;
  HIDWORD(v9) = v15;
  LODWORD(v9) = v15;
  v18 = (v9 >> 16) - 1150833019;
  v19 = v18 ^ v7;
  HIDWORD(v9) = v19;
  LODWORD(v9) = v19;
  v20 = v17 + v472 + (v9 >> 12);
  LODWORD(v9) = v20 ^ __ROR4__(v15, 16);
  v21 = v9;
  HIDWORD(v9) = v9;
  v22 = (v9 >> 8) + v18;
  LODWORD(v9) = v22 ^ __ROR4__(v19, 12);
  v23 = v9;
  HIDWORD(v9) = v9;
  v24 = v9 >> 7;
  v473 = a2[4];
  v471 = a2[5];
  v25 = a1[6];
  v26 = a1[7];
  LODWORD(v15) = a1[2] + v473 + v25;
  v27 = v15 ^ a3;
  HIDWORD(v9) = v27;
  LODWORD(v9) = v27;
  v28 = (v9 >> 16) + 1013904242;
  v29 = v28 ^ v25;
  HIDWORD(v9) = v29;
  LODWORD(v9) = v29;
  v30 = v15 + v471 + (v9 >> 12);
  LODWORD(v9) = v30 ^ __ROR4__(v27, 16);
  v31 = v9;
  HIDWORD(v9) = v9;
  v32 = (v9 >> 8) + v28;
  v33 = v32 ^ __ROR4__(v29, 12);
  v474 = a2[7];
  v467 = a2[6];
  v34 = a1[3] + v467 + v26;
  HIDWORD(v9) = v34 ^ a5;
  LODWORD(v9) = v34 ^ a5;
  v35 = (v9 >> 16) - 1521486534;
  v36 = v35 ^ v26;
  HIDWORD(v9) = v35 ^ v26;
  LODWORD(v9) = v35 ^ v26;
  v37 = v34 + v474 + (v9 >> 12);
  v463 = a2[8];
  v464 = a2[9];
  v38 = v12 + v463 + v24;
  LODWORD(v9) = v37 ^ __ROR4__(v34 ^ a5, 16);
  HIDWORD(v9) = v9;
  v39 = v9 >> 8;
  v41 = v14 + v10;
  LODWORD(v9) = v38 ^ __ROR4__(v9, 8);
  v40 = v9;
  HIDWORD(v9) = v9;
  v42 = (v9 >> 16) + v32;
  LODWORD(v9) = __ROR4__(v23, 7);
  v44 = v39 + v35;
  LODWORD(v9) = v42 ^ v9;
  v43 = v9;
  HIDWORD(v9) = v9;
  v45 = v38 + v464 + (v9 >> 12);
  LODWORD(v9) = v45 ^ __ROR4__(v40, 16);
  v46 = v9;
  HIDWORD(v9) = v9;
  v47 = (v9 >> 8) + v42;
  v460 = a2[11];
  v461 = a2[10];
  HIDWORD(v9) = v33;
  LODWORD(v9) = v33;
  v48 = v20 + v461 + (v9 >> 7);
  LODWORD(v9) = v48 ^ __ROR4__(v13, 8);
  v49 = v9;
  HIDWORD(v9) = v9;
  LODWORD(v15) = v44 ^ __ROR4__(v36, 12);
  v50 = (v9 >> 16) + v44;
  LODWORD(v9) = v50 ^ __ROR4__(v33, 7);
  v51 = v9;
  HIDWORD(v9) = v9;
  v52 = v48 + v460 + (v9 >> 12);
  LODWORD(v9) = v52 ^ __ROR4__(v49, 16);
  v53 = v9;
  HIDWORD(v9) = v9;
  v54 = (v9 >> 8) + v50;
  v55 = a2[12];
  v56 = a2[13];
  HIDWORD(v9) = v15;
  LODWORD(v9) = v15;
  v57 = v30 + v55 + (v9 >> 7);
  v58 = v41 ^ __ROR4__(v11, 12);
  LODWORD(v9) = v57 ^ __ROR4__(v21, 8);
  v59 = v9;
  HIDWORD(v9) = v9;
  v60 = (v9 >> 16) + v41;
  LODWORD(v9) = v60 ^ __ROR4__(v15, 7);
  v61 = v9;
  HIDWORD(v9) = v9;
  v62 = v57 + v56 + (v9 >> 12);
  v465 = a2[14];
  HIDWORD(v9) = v58;
  LODWORD(v9) = v58;
  v63 = v37 + v465 + (v9 >> 7);
  LODWORD(v9) = v63 ^ __ROR4__(v31, 8);
  v64 = v9;
  HIDWORD(v9) = v9;
  v65 = (v9 >> 16) + v22;
  v459 = a2[15];
  LODWORD(v9) = v65 ^ __ROR4__(v58, 7);
  v66 = v9;
  HIDWORD(v9) = v9;
  v67 = v63 + v459 + (v9 >> 12);
  LODWORD(v9) = __ROR4__(v59, 16);
  v68 = v62 ^ v9;
  v70 = __PAIR64__(v62 ^ v9, __ROR4__(v64, 16));
  v69 = v67 ^ v70;
  LODWORD(v70) = v68;
  v71 = v70 >> 8;
  HIDWORD(v70) = v69;
  LODWORD(v70) = v69;
  v72 = v71 + v60;
  v73 = (v70 >> 8) + v65;
  v462 = v16;
  LODWORD(v70) = v73 ^ __ROR4__(v66, 12);
  LODWORD(v15) = v70;
  HIDWORD(v70) = v70;
  v74 = v45 + v16 + (v70 >> 7);
  v75 = v72 ^ __ROR4__(v61, 12);
  LODWORD(v70) = v74 ^ __ROR4__(v53, 8);
  v76 = v70;
  HIDWORD(v70) = v70;
  v77 = (v70 >> 16) + v72;
  LODWORD(v70) = v77 ^ __ROR4__(v15, 7);
  v78 = v70;
  HIDWORD(v70) = v70;
  LODWORD(v15) = v74 + v467 + (v70 >> 12);
  LODWORD(v70) = v15 ^ __ROR4__(v76, 16);
  v79 = v70;
  HIDWORD(v70) = v70;
  v80 = (v70 >> 8) + v77;
  LODWORD(v70) = v47 ^ __ROR4__(v43, 12);
  v81 = v70;
  HIDWORD(v70) = v70;
  v82 = v52 + v472 + (v70 >> 7);
  LODWORD(v70) = v82 ^ __ROR4__(v68, 8);
  v83 = v70;
  HIDWORD(v70) = v70;
  v84 = (v70 >> 16) + v73;
  LODWORD(v70) = v84 ^ __ROR4__(v81, 7);
  v85 = v70;
  HIDWORD(v70) = v70;
  v86 = v82 + v461 + (v70 >> 12);
  LODWORD(v70) = v86 ^ __ROR4__(v83, 16);
  v87 = v70;
  HIDWORD(v70) = v70;
  v88 = (v70 >> 8) + v84;
  LODWORD(v70) = v54 ^ __ROR4__(v51, 12);
  v89 = v70;
  HIDWORD(v70) = v70;
  v90 = v62 + v474 + (v70 >> 7);
  LODWORD(v70) = v90 ^ __ROR4__(v69, 8);
  v91 = v70;
  HIDWORD(v70) = v70;
  v92 = (v70 >> 16) + v47;
  LODWORD(v70) = v92 ^ __ROR4__(v89, 7);
  v93 = v70;
  HIDWORD(v70) = v70;
  v94 = v90 + *a2 + (v70 >> 12);
  HIDWORD(v70) = v75;
  LODWORD(v70) = v75;
  v95 = v67 + v473 + (v70 >> 7);
  LODWORD(v70) = v95 ^ __ROR4__(v46, 8);
  v96 = v70;
  HIDWORD(v70) = v70;
  v97 = (v70 >> 16) + v54;
  v469 = v56;
  LODWORD(v70) = v97 ^ __ROR4__(v75, 7);
  v98 = v70;
  HIDWORD(v70) = v70;
  v99 = v95 + v56 + (v70 >> 12);
  LODWORD(v70) = __ROR4__(v91, 16);
  v100 = v94 ^ v70;
  v102 = __PAIR64__(v94 ^ v70, __ROR4__(v96, 16));
  v101 = v99 ^ v102;
  LODWORD(v102) = v100;
  v103 = v102 >> 8;
  HIDWORD(v102) = v101;
  LODWORD(v102) = v101;
  v104 = v103 + v92;
  v105 = (v102 >> 8) + v97;
  LODWORD(v102) = v88 ^ __ROR4__(v85, 12);
  v106 = v102;
  HIDWORD(v102) = v102;
  LODWORD(v15) = v15 + v470 + (v102 >> 7);
  v107 = v104 ^ __ROR4__(v93, 12);
  LODWORD(v102) = v15 ^ __ROR4__(v101, 8);
  v108 = v102;
  HIDWORD(v102) = v102;
  v109 = (v102 >> 16) + v104;
  LODWORD(v102) = v109 ^ __ROR4__(v106, 7);
  v110 = v102;
  HIDWORD(v102) = v102;
  v111 = v15 + v460 + (v102 >> 12);
  LODWORD(v102) = v111 ^ __ROR4__(v108, 16);
  v112 = v102;
  HIDWORD(v102) = v102;
  v113 = (v102 >> 8) + v109;
  v466 = v55;
  HIDWORD(v102) = v107;
  LODWORD(v102) = v107;
  LODWORD(v15) = v86 + v55 + (v102 >> 7);
  v114 = v105 ^ __ROR4__(v98, 12);
  LODWORD(v102) = v15 ^ __ROR4__(v79, 8);
  v115 = v102;
  HIDWORD(v102) = v102;
  v116 = (v102 >> 16) + v105;
  LODWORD(v102) = v116 ^ __ROR4__(v107, 7);
  v117 = v102;
  HIDWORD(v102) = v102;
  v118 = v15 + v471 + (v102 >> 12);
  LODWORD(v102) = v118 ^ __ROR4__(v115, 16);
  v119 = v102;
  HIDWORD(v102) = v102;
  v120 = (v102 >> 8) + v116;
  HIDWORD(v102) = v114;
  LODWORD(v102) = v114;
  LODWORD(v15) = v94 + v464 + (v102 >> 7);
  v121 = v80 ^ __ROR4__(v78, 12);
  LODWORD(v102) = v15 ^ __ROR4__(v87, 8);
  v122 = v102;
  HIDWORD(v102) = v102;
  v123 = (v102 >> 16) + v80;
  LODWORD(v102) = v123 ^ __ROR4__(v114, 7);
  v124 = v102;
  HIDWORD(v102) = v102;
  v125 = v15 + v465 + (v102 >> 12);
  HIDWORD(v102) = v121;
  LODWORD(v102) = v121;
  LODWORD(v15) = v99 + v459 + (v102 >> 7);
  LODWORD(v102) = v15 ^ __ROR4__(v100, 8);
  v126 = v102;
  HIDWORD(v102) = v102;
  v127 = (v102 >> 16) + v88;
  LODWORD(v102) = v127 ^ __ROR4__(v121, 7);
  v128 = v102;
  HIDWORD(v102) = v102;
  v129 = v15 + v463 + (v102 >> 12);
  LODWORD(v102) = __ROR4__(v122, 16);
  v130 = v125 ^ v102;
  v132 = __PAIR64__(v125 ^ v102, __ROR4__(v126, 16));
  v131 = v129 ^ v132;
  LODWORD(v132) = v130;
  v133 = v132 >> 8;
  HIDWORD(v132) = v131;
  LODWORD(v132) = v131;
  v134 = v133 + v123;
  v135 = (v132 >> 8) + v127;
  LODWORD(v132) = v135 ^ __ROR4__(v128, 12);
  v136 = v132;
  HIDWORD(v132) = v132;
  v137 = v111 + v472 + (v132 >> 7);
  v138 = v134 ^ __ROR4__(v124, 12);
  LODWORD(v132) = v137 ^ __ROR4__(v119, 8);
  v139 = v132;
  HIDWORD(v132) = v132;
  LODWORD(v15) = (v132 >> 16) + v134;
  LODWORD(v132) = v15 ^ __ROR4__(v136, 7);
  v140 = v132;
  HIDWORD(v132) = v132;
  v141 = v137 + v473 + (v132 >> 12);
  LODWORD(v132) = v141 ^ __ROR4__(v139, 16);
  v142 = v132;
  HIDWORD(v132) = v132;
  v143 = (v132 >> 8) + v15;
  LODWORD(v132) = v113 ^ __ROR4__(v110, 12);
  LODWORD(v15) = v132;
  HIDWORD(v132) = v132;
  v144 = v118 + v461 + (v132 >> 7);
  LODWORD(v132) = v144 ^ __ROR4__(v130, 8);
  v145 = v132;
  HIDWORD(v132) = v132;
  v146 = (v132 >> 16) + v135;
  LODWORD(v132) = v146 ^ __ROR4__(v15, 7);
  v147 = v132;
  HIDWORD(v132) = v132;
  v148 = v144 + v55 + (v132 >> 12);
  LODWORD(v132) = v148 ^ __ROR4__(v145, 16);
  v149 = v132;
  HIDWORD(v132) = v132;
  v150 = (v132 >> 8) + v146;
  LODWORD(v132) = v120 ^ __ROR4__(v117, 12);
  LODWORD(v15) = v132;
  HIDWORD(v132) = v132;
  v151 = v125 + v56 + (v132 >> 7);
  LODWORD(v132) = v151 ^ __ROR4__(v131, 8);
  v152 = v132;
  HIDWORD(v132) = v132;
  v153 = (v132 >> 16) + v113;
  LODWORD(v132) = v153 ^ __ROR4__(v15, 7);
  v154 = v132;
  HIDWORD(v132) = v132;
  v155 = v151 + v16 + (v132 >> 12);
  HIDWORD(v132) = v138;
  LODWORD(v132) = v138;
  LODWORD(v15) = v129 + v474 + (v132 >> 7);
  LODWORD(v132) = v15 ^ __ROR4__(v112, 8);
  v156 = v132;
  HIDWORD(v132) = v132;
  v157 = (v132 >> 16) + v120;
  LODWORD(v132) = v157 ^ __ROR4__(v138, 7);
  v158 = v132;
  HIDWORD(v132) = v132;
  v159 = v15 + v465 + (v132 >> 12);
  LODWORD(v132) = __ROR4__(v152, 16);
  LODWORD(v15) = v155 ^ v132;
  v161 = __PAIR64__(v155 ^ v132, __ROR4__(v156, 16));
  v160 = v159 ^ v161;
  LODWORD(v161) = v15;
  v162 = v161 >> 8;
  HIDWORD(v161) = v160;
  LODWORD(v161) = v160;
  v163 = v162 + v153;
  v164 = (v161 >> 8) + v157;
  LODWORD(v161) = v150 ^ __ROR4__(v147, 12);
  v165 = v161;
  HIDWORD(v161) = v161;
  v166 = v141 + v467 + (v161 >> 7);
  v167 = v163 ^ __ROR4__(v154, 12);
  LODWORD(v161) = v166 ^ __ROR4__(v160, 8);
  v168 = v161;
  HIDWORD(v161) = v161;
  v169 = (v161 >> 16) + v163;
  LODWORD(v161) = v169 ^ __ROR4__(v165, 7);
  v170 = v161;
  HIDWORD(v161) = v161;
  v171 = v166 + v471 + (v161 >> 12);
  LODWORD(v161) = v171 ^ __ROR4__(v168, 16);
  v172 = v161;
  HIDWORD(v161) = v161;
  v173 = (v161 >> 8) + v169;
  HIDWORD(v161) = v167;
  LODWORD(v161) = v167;
  v174 = v148 + v464 + (v161 >> 7);
  v175 = v164 ^ __ROR4__(v158, 12);
  LODWORD(v161) = v174 ^ __ROR4__(v142, 8);
  v176 = v161;
  HIDWORD(v161) = v161;
  v177 = (v161 >> 16) + v164;
  LODWORD(v161) = v177 ^ __ROR4__(v167, 7);
  v178 = v161;
  HIDWORD(v161) = v161;
  v179 = v174 + *a2 + (v161 >> 12);
  LODWORD(v161) = v179 ^ __ROR4__(v176, 16);
  v180 = v161;
  HIDWORD(v161) = v161;
  v181 = (v161 >> 8) + v177;
  HIDWORD(v161) = v175;
  LODWORD(v161) = v175;
  v182 = v155 + v460 + (v161 >> 7);
  v183 = v143 ^ __ROR4__(v140, 12);
  LODWORD(v161) = v182 ^ __ROR4__(v149, 8);
  v184 = v161;
  HIDWORD(v161) = v161;
  v185 = (v161 >> 16) + v143;
  LODWORD(v161) = v185 ^ __ROR4__(v175, 7);
  v186 = v161;
  HIDWORD(v161) = v161;
  v187 = v182 + v459 + (v161 >> 12);
  HIDWORD(v161) = v183;
  LODWORD(v161) = v183;
  v188 = v159 + v463 + (v161 >> 7);
  LODWORD(v161) = v188 ^ __ROR4__(v15, 8);
  v189 = v161;
  HIDWORD(v161) = v161;
  v190 = (v161 >> 16) + v150;
  LODWORD(v161) = v190 ^ __ROR4__(v183, 7);
  v191 = v161;
  HIDWORD(v161) = v161;
  LODWORD(v15) = v188 + v470 + (v161 >> 12);
  LODWORD(v161) = __ROR4__(v184, 16);
  v192 = v187 ^ v161;
  v194 = __PAIR64__(v187 ^ v161, __ROR4__(v189, 16));
  v193 = v15 ^ v194;
  LODWORD(v194) = v192;
  v195 = v194 >> 8;
  HIDWORD(v194) = v193;
  LODWORD(v194) = v193;
  v196 = v195 + v185;
  v197 = (v194 >> 8) + v190;
  LODWORD(v194) = v197 ^ __ROR4__(v191, 12);
  v198 = v194;
  HIDWORD(v194) = v194;
  v199 = v171 + v461 + (v194 >> 7);
  v200 = v196 ^ __ROR4__(v186, 12);
  LODWORD(v194) = v199 ^ __ROR4__(v180, 8);
  v201 = v194;
  HIDWORD(v194) = v194;
  v202 = (v194 >> 16) + v196;
  LODWORD(v194) = v202 ^ __ROR4__(v198, 7);
  v203 = v194;
  HIDWORD(v194) = v194;
  v204 = v199 + v474 + (v194 >> 12);
  LODWORD(v194) = v204 ^ __ROR4__(v201, 16);
  v205 = v194;
  HIDWORD(v194) = v194;
  v206 = (v194 >> 8) + v202;
  LODWORD(v194) = v173 ^ __ROR4__(v170, 12);
  v207 = v194;
  HIDWORD(v194) = v194;
  v208 = v179 + v55 + (v194 >> 7);
  LODWORD(v194) = v208 ^ __ROR4__(v192, 8);
  v209 = v194;
  HIDWORD(v194) = v194;
  v210 = (v194 >> 16) + v197;
  LODWORD(v194) = v210 ^ __ROR4__(v207, 7);
  v211 = v194;
  HIDWORD(v194) = v194;
  v212 = v208 + v464 + (v194 >> 12);
  LODWORD(v194) = v212 ^ __ROR4__(v209, 16);
  v213 = v194;
  HIDWORD(v194) = v194;
  v214 = (v194 >> 8) + v210;
  LODWORD(v194) = v181 ^ __ROR4__(v178, 12);
  v215 = v194;
  HIDWORD(v194) = v194;
  v216 = v187 + v465 + (v194 >> 7);
  LODWORD(v194) = v216 ^ __ROR4__(v193, 8);
  v217 = v194;
  HIDWORD(v194) = v194;
  v218 = (v194 >> 16) + v173;
  LODWORD(v194) = v218 ^ __ROR4__(v215, 7);
  v219 = v194;
  HIDWORD(v194) = v194;
  v220 = v216 + v472 + (v194 >> 12);
  HIDWORD(v194) = v200;
  LODWORD(v194) = v200;
  LODWORD(v15) = v15 + v56 + (v194 >> 7);
  LODWORD(v194) = v15 ^ __ROR4__(v172, 8);
  v221 = v194;
  HIDWORD(v194) = v194;
  v222 = (v194 >> 16) + v181;
  LODWORD(v194) = v222 ^ __ROR4__(v200, 7);
  v223 = v194;
  HIDWORD(v194) = v194;
  v224 = v15 + v459 + (v194 >> 12);
  LODWORD(v194) = __ROR4__(v217, 16);
  v225 = v220 ^ v194;
  v226 = __PAIR64__(v220 ^ v194, __ROR4__(v221, 16));
  LODWORD(v15) = v224 ^ v226;
  LODWORD(v226) = v225;
  v227 = v226 >> 8;
  HIDWORD(v226) = v15;
  LODWORD(v226) = v15;
  v228 = v227 + v218;
  v229 = (v226 >> 8) + v222;
  LODWORD(v226) = v214 ^ __ROR4__(v211, 12);
  v230 = v226;
  HIDWORD(v226) = v226;
  v231 = v204 + v473 + (v226 >> 7);
  v232 = v228 ^ __ROR4__(v219, 12);
  LODWORD(v226) = v231 ^ __ROR4__(v15, 8);
  v233 = v226;
  HIDWORD(v226) = v226;
  v234 = (v226 >> 16) + v228;
  LODWORD(v226) = v234 ^ __ROR4__(v230, 7);
  v235 = v226;
  HIDWORD(v226) = v226;
  LODWORD(v15) = v231 + *a2 + (v226 >> 12);
  LODWORD(v226) = v15 ^ __ROR4__(v233, 16);
  v236 = v226;
  HIDWORD(v226) = v226;
  v237 = (v226 >> 8) + v234;
  HIDWORD(v226) = v232;
  LODWORD(v226) = v232;
  v238 = v212 + v460 + (v226 >> 7);
  v239 = v229 ^ __ROR4__(v223, 12);
  LODWORD(v226) = v238 ^ __ROR4__(v205, 8);
  v240 = v226;
  HIDWORD(v226) = v226;
  v241 = (v226 >> 16) + v229;
  LODWORD(v226) = v241 ^ __ROR4__(v232, 7);
  v242 = v226;
  HIDWORD(v226) = v226;
  v243 = v238 + v16 + (v226 >> 12);
  LODWORD(v226) = v243 ^ __ROR4__(v240, 16);
  v244 = v226;
  HIDWORD(v226) = v226;
  v245 = (v226 >> 8) + v241;
  HIDWORD(v226) = v239;
  LODWORD(v226) = v239;
  v246 = v220 + v471 + (v226 >> 7);
  v247 = v206 ^ __ROR4__(v203, 12);
  LODWORD(v226) = v246 ^ __ROR4__(v213, 8);
  v248 = v226;
  HIDWORD(v226) = v226;
  v249 = (v226 >> 16) + v206;
  LODWORD(v226) = v249 ^ __ROR4__(v239, 7);
  v250 = v226;
  HIDWORD(v226) = v226;
  v251 = v246 + v463 + (v226 >> 12);
  HIDWORD(v226) = v247;
  LODWORD(v226) = v247;
  v252 = v224 + v470 + (v226 >> 7);
  LODWORD(v226) = v252 ^ __ROR4__(v225, 8);
  v253 = v226;
  HIDWORD(v226) = v226;
  v254 = (v226 >> 16) + v214;
  LODWORD(v226) = v254 ^ __ROR4__(v247, 7);
  v255 = v226;
  HIDWORD(v226) = v226;
  v256 = v252 + v467 + (v226 >> 12);
  LODWORD(v226) = __ROR4__(v248, 16);
  v257 = v251 ^ v226;
  v259 = __PAIR64__(v251 ^ v226, __ROR4__(v253, 16));
  v258 = v256 ^ v259;
  LODWORD(v259) = v257;
  v260 = v259 >> 8;
  HIDWORD(v259) = v258;
  LODWORD(v259) = v258;
  v261 = v260 + v249;
  v262 = (v259 >> 8) + v254;
  LODWORD(v259) = v262 ^ __ROR4__(v255, 12);
  v263 = v259;
  HIDWORD(v259) = v259;
  LODWORD(v15) = v15 + v55 + (v259 >> 7);
  v264 = v261 ^ __ROR4__(v250, 12);
  LODWORD(v259) = v15 ^ __ROR4__(v244, 8);
  v265 = v259;
  HIDWORD(v259) = v259;
  v266 = (v259 >> 16) + v261;
  LODWORD(v259) = v266 ^ __ROR4__(v263, 7);
  v267 = v259;
  HIDWORD(v259) = v259;
  v268 = v15 + v56 + (v259 >> 12);
  LODWORD(v259) = v268 ^ __ROR4__(v265, 16);
  v269 = v259;
  HIDWORD(v259) = v259;
  v270 = (v259 >> 8) + v266;
  LODWORD(v259) = v237 ^ __ROR4__(v235, 12);
  LODWORD(v15) = v259;
  HIDWORD(v259) = v259;
  v271 = v243 + v464 + (v259 >> 7);
  LODWORD(v259) = v271 ^ __ROR4__(v257, 8);
  v272 = v259;
  HIDWORD(v259) = v259;
  v273 = (v259 >> 16) + v262;
  LODWORD(v259) = v273 ^ __ROR4__(v15, 7);
  v274 = v259;
  HIDWORD(v259) = v259;
  v275 = v271 + v460 + (v259 >> 12);
  LODWORD(v259) = v275 ^ __ROR4__(v272, 16);
  v276 = v259;
  HIDWORD(v259) = v259;
  v277 = (v259 >> 8) + v273;
  LODWORD(v259) = v245 ^ __ROR4__(v242, 12);
  LODWORD(v15) = v259;
  HIDWORD(v259) = v259;
  v278 = v251 + v459 + (v259 >> 7);
  LODWORD(v259) = v278 ^ __ROR4__(v258, 8);
  v279 = v259;
  HIDWORD(v259) = v259;
  v280 = (v259 >> 16) + v237;
  LODWORD(v259) = v280 ^ __ROR4__(v15, 7);
  v281 = v259;
  HIDWORD(v259) = v259;
  v282 = v278 + v461 + (v259 >> 12);
  HIDWORD(v259) = v264;
  LODWORD(v259) = v264;
  LODWORD(v15) = v256 + v465 + (v259 >> 7);
  LODWORD(v259) = v15 ^ __ROR4__(v236, 8);
  v283 = v259;
  HIDWORD(v259) = v259;
  v284 = (v259 >> 16) + v245;
  LODWORD(v259) = v284 ^ __ROR4__(v264, 7);
  v285 = v259;
  HIDWORD(v259) = v259;
  v286 = v15 + v463 + (v259 >> 12);
  LODWORD(v259) = __ROR4__(v279, 16);
  LODWORD(v15) = v282 ^ v259;
  v288 = __PAIR64__(v282 ^ v259, __ROR4__(v283, 16));
  v287 = v286 ^ v288;
  LODWORD(v288) = v15;
  v289 = v288 >> 8;
  HIDWORD(v288) = v287;
  LODWORD(v288) = v287;
  v290 = v289 + v280;
  v291 = (v288 >> 8) + v284;
  LODWORD(v288) = v277 ^ __ROR4__(v274, 12);
  v292 = v288;
  HIDWORD(v288) = v288;
  v293 = v268 + v474 + (v288 >> 7);
  v294 = v290 ^ __ROR4__(v281, 12);
  LODWORD(v288) = v293 ^ __ROR4__(v287, 8);
  v295 = v288;
  HIDWORD(v288) = v288;
  v296 = (v288 >> 16) + v290;
  LODWORD(v288) = v296 ^ __ROR4__(v292, 7);
  v297 = v288;
  HIDWORD(v288) = v288;
  v298 = v293 + v16 + (v288 >> 12);
  LODWORD(v288) = v298 ^ __ROR4__(v295, 16);
  v299 = v288;
  HIDWORD(v288) = v288;
  v300 = (v288 >> 8) + v296;
  HIDWORD(v288) = v294;
  LODWORD(v288) = v294;
  v301 = v275 + v471 + (v288 >> 7);
  v302 = v291 ^ __ROR4__(v285, 12);
  LODWORD(v288) = v301 ^ __ROR4__(v269, 8);
  v303 = v288;
  HIDWORD(v288) = v288;
  v304 = (v288 >> 16) + v291;
  LODWORD(v288) = v304 ^ __ROR4__(v294, 7);
  v305 = v288;
  HIDWORD(v288) = v288;
  v306 = v301 + v472 + (v288 >> 12);
  LODWORD(v288) = v306 ^ __ROR4__(v303, 16);
  v307 = v288;
  HIDWORD(v288) = v288;
  v308 = (v288 >> 8) + v304;
  HIDWORD(v288) = v302;
  LODWORD(v288) = v302;
  v309 = v282 + *a2 + (v288 >> 7);
  v310 = v270 ^ __ROR4__(v267, 12);
  LODWORD(v288) = v309 ^ __ROR4__(v276, 8);
  v311 = v288;
  HIDWORD(v288) = v288;
  v312 = (v288 >> 16) + v270;
  LODWORD(v288) = v312 ^ __ROR4__(v302, 7);
  v313 = v288;
  HIDWORD(v288) = v288;
  v314 = v309 + v470 + (v288 >> 12);
  HIDWORD(v288) = v310;
  LODWORD(v288) = v310;
  v315 = v286 + v467 + (v288 >> 7);
  LODWORD(v288) = v315 ^ __ROR4__(v15, 8);
  v316 = v288;
  HIDWORD(v288) = v288;
  v317 = (v288 >> 16) + v277;
  LODWORD(v288) = v317 ^ __ROR4__(v310, 7);
  v318 = v288;
  HIDWORD(v288) = v288;
  LODWORD(v15) = v315 + v473 + (v288 >> 12);
  LODWORD(v288) = __ROR4__(v311, 16);
  v319 = v314 ^ v288;
  v321 = __PAIR64__(v314 ^ v288, __ROR4__(v316, 16));
  v320 = v15 ^ v321;
  LODWORD(v321) = v319;
  v322 = v321 >> 8;
  HIDWORD(v321) = v320;
  LODWORD(v321) = v320;
  v323 = v322 + v312;
  v324 = (v321 >> 8) + v317;
  LODWORD(v321) = v324 ^ __ROR4__(v318, 12);
  v325 = v321;
  HIDWORD(v321) = v321;
  v326 = v298 + v464 + (v321 >> 7);
  v327 = v323 ^ __ROR4__(v313, 12);
  LODWORD(v321) = v326 ^ __ROR4__(v307, 8);
  v328 = v321;
  HIDWORD(v321) = v321;
  v329 = (v321 >> 16) + v323;
  LODWORD(v321) = v329 ^ __ROR4__(v325, 7);
  v330 = v321;
  HIDWORD(v321) = v321;
  v331 = v326 + v465 + (v321 >> 12);
  LODWORD(v321) = v331 ^ __ROR4__(v328, 16);
  v332 = v321;
  HIDWORD(v321) = v321;
  v333 = (v321 >> 8) + v329;
  LODWORD(v321) = v300 ^ __ROR4__(v297, 12);
  v334 = v321;
  HIDWORD(v321) = v321;
  v335 = v306 + v460 + (v321 >> 7);
  LODWORD(v321) = v335 ^ __ROR4__(v319, 8);
  v336 = v321;
  HIDWORD(v321) = v321;
  v337 = (v321 >> 16) + v324;
  LODWORD(v321) = v337 ^ __ROR4__(v334, 7);
  v338 = v321;
  HIDWORD(v321) = v321;
  v339 = v335 + v471 + (v321 >> 12);
  LODWORD(v321) = v339 ^ __ROR4__(v336, 16);
  v340 = v321;
  HIDWORD(v321) = v321;
  v341 = (v321 >> 8) + v337;
  LODWORD(v321) = v308 ^ __ROR4__(v305, 12);
  v342 = v321;
  HIDWORD(v321) = v321;
  v343 = v314 + v463 + (v321 >> 7);
  LODWORD(v321) = v343 ^ __ROR4__(v320, 8);
  v344 = v321;
  HIDWORD(v321) = v321;
  v345 = (v321 >> 16) + v300;
  LODWORD(v321) = v345 ^ __ROR4__(v342, 7);
  v346 = v321;
  HIDWORD(v321) = v321;
  v347 = v343 + v55 + (v321 >> 12);
  HIDWORD(v321) = v327;
  LODWORD(v321) = v327;
  LODWORD(v15) = v15 + v459 + (v321 >> 7);
  LODWORD(v321) = v15 ^ __ROR4__(v299, 8);
  v348 = v321;
  HIDWORD(v321) = v321;
  v349 = (v321 >> 16) + v308;
  LODWORD(v321) = v349 ^ __ROR4__(v327, 7);
  v350 = v321;
  HIDWORD(v321) = v321;
  v351 = v15 + v470 + (v321 >> 12);
  LODWORD(v321) = __ROR4__(v344, 16);
  LODWORD(v15) = v347 ^ v321;
  v353 = __PAIR64__(v347 ^ v321, __ROR4__(v348, 16));
  v352 = v351 ^ v353;
  LODWORD(v353) = v15;
  v354 = v353 >> 8;
  HIDWORD(v353) = v352;
  LODWORD(v353) = v352;
  v355 = v354 + v345;
  v356 = (v353 >> 8) + v349;
  LODWORD(v353) = v341 ^ __ROR4__(v338, 12);
  v357 = v353;
  HIDWORD(v353) = v353;
  v358 = v331 + v56 + (v353 >> 7);
  v359 = v355 ^ __ROR4__(v346, 12);
  LODWORD(v353) = v358 ^ __ROR4__(v352, 8);
  v360 = v353;
  HIDWORD(v353) = v353;
  v361 = (v353 >> 16) + v355;
  LODWORD(v353) = v361 ^ __ROR4__(v357, 7);
  v362 = v353;
  HIDWORD(v353) = v353;
  v363 = v358 + v472 + (v353 >> 12);
  LODWORD(v353) = v363 ^ __ROR4__(v360, 16);
  v364 = v353;
  HIDWORD(v353) = v353;
  v365 = (v353 >> 8) + v361;
  HIDWORD(v353) = v359;
  LODWORD(v353) = v359;
  v366 = v339 + *a2 + (v353 >> 7);
  v367 = v356 ^ __ROR4__(v350, 12);
  LODWORD(v353) = v366 ^ __ROR4__(v332, 8);
  v368 = v353;
  HIDWORD(v353) = v353;
  v369 = (v353 >> 16) + v356;
  LODWORD(v353) = v369 ^ __ROR4__(v359, 7);
  v370 = v353;
  HIDWORD(v353) = v353;
  v371 = v366 + v461 + (v353 >> 12);
  LODWORD(v353) = v371 ^ __ROR4__(v368, 16);
  v372 = v353;
  HIDWORD(v353) = v353;
  v373 = (v353 >> 8) + v369;
  HIDWORD(v353) = v367;
  LODWORD(v353) = v367;
  v374 = v347 + v16 + (v353 >> 7);
  v375 = v333 ^ __ROR4__(v330, 12);
  LODWORD(v353) = v374 ^ __ROR4__(v340, 8);
  v376 = v353;
  HIDWORD(v353) = v353;
  v377 = (v353 >> 16) + v333;
  LODWORD(v353) = v377 ^ __ROR4__(v367, 7);
  v378 = v353;
  HIDWORD(v353) = v353;
  v379 = v374 + v467 + (v353 >> 12);
  HIDWORD(v353) = v375;
  LODWORD(v353) = v375;
  v380 = v351 + v473 + (v353 >> 7);
  LODWORD(v353) = v380 ^ __ROR4__(v15, 8);
  v381 = v353;
  HIDWORD(v353) = v353;
  v382 = (v353 >> 16) + v341;
  LODWORD(v353) = v382 ^ __ROR4__(v375, 7);
  v383 = v353;
  HIDWORD(v353) = v353;
  LODWORD(v15) = v380 + v474 + (v353 >> 12);
  LODWORD(v353) = __ROR4__(v376, 16);
  v384 = v379 ^ v353;
  v386 = __PAIR64__(v379 ^ v353, __ROR4__(v381, 16));
  v385 = v15 ^ v386;
  LODWORD(v386) = v384;
  v387 = v386 >> 8;
  HIDWORD(v386) = v385;
  LODWORD(v386) = v385;
  v388 = v387 + v377;
  v389 = (v386 >> 8) + v382;
  LODWORD(v386) = v389 ^ __ROR4__(v383, 12);
  v390 = v386;
  HIDWORD(v386) = v386;
  v391 = v363 + v460 + (v386 >> 7);
  v392 = v388 ^ __ROR4__(v378, 12);
  LODWORD(v386) = v391 ^ __ROR4__(v372, 8);
  v393 = v386;
  HIDWORD(v386) = v386;
  v394 = (v386 >> 16) + v388;
  LODWORD(v386) = v394 ^ __ROR4__(v390, 7);
  v395 = v386;
  HIDWORD(v386) = v386;
  v396 = v391 + v459 + (v386 >> 12);
  LODWORD(v386) = v396 ^ __ROR4__(v393, 16);
  v397 = v386;
  HIDWORD(v386) = v386;
  v398 = (v386 >> 8) + v394;
  LODWORD(v386) = v365 ^ __ROR4__(v362, 12);
  v399 = v386;
  HIDWORD(v386) = v386;
  v400 = v371 + v471 + (v386 >> 7);
  LODWORD(v386) = v400 ^ __ROR4__(v384, 8);
  v401 = v386;
  HIDWORD(v386) = v386;
  v402 = (v386 >> 16) + v389;
  v403 = v373 ^ __ROR4__(v370, 12);
  LODWORD(v386) = v402 ^ __ROR4__(v399, 7);
  v404 = v386;
  HIDWORD(v386) = v386;
  v405 = v400 + v468 + (v386 >> 12);
  LODWORD(v386) = v405 ^ __ROR4__(v401, 16);
  v406 = v386;
  HIDWORD(v386) = v386;
  v407 = (v386 >> 8) + v402;
  HIDWORD(v386) = v403;
  LODWORD(v386) = v403;
  v408 = v379 + v470 + (v386 >> 7);
  LODWORD(v386) = v408 ^ __ROR4__(v385, 8);
  v409 = v386;
  HIDWORD(v386) = v386;
  v410 = (v386 >> 16) + v365;
  LODWORD(v386) = v410 ^ __ROR4__(v403, 7);
  v411 = v386;
  HIDWORD(v386) = v386;
  v412 = v408 + v464 + (v386 >> 12);
  HIDWORD(v386) = v392;
  LODWORD(v386) = v392;
  LODWORD(v15) = v15 + v463 + (v386 >> 7);
  LODWORD(v386) = v15 ^ __ROR4__(v364, 8);
  v413 = v386;
  HIDWORD(v386) = v386;
  v414 = v386 >> 16;
  LODWORD(v386) = __ROR4__(v409, 16);
  v416 = v414 + v373;
  LODWORD(v386) = v412 ^ v386;
  v415 = v386;
  HIDWORD(v386) = v386;
  v417 = v386 >> 8;
  LODWORD(v386) = v416 ^ __ROR4__(v392, 7);
  v418 = v386;
  HIDWORD(v386) = v386;
  LODWORD(v15) = v15 + v467 + (v386 >> 12);
  LODWORD(v386) = v15 ^ __ROR4__(v413, 16);
  v419 = v386;
  HIDWORD(v386) = v386;
  v420 = v417 + v410;
  v421 = (v386 >> 8) + v416;
  LODWORD(v386) = v407 ^ __ROR4__(v404, 12);
  v422 = v386;
  HIDWORD(v386) = v386;
  v423 = v420 ^ __ROR4__(v411, 12);
  v424 = v396 + v465 + (v386 >> 7);
  LODWORD(v386) = v424 ^ __ROR4__(v419, 8);
  v425 = v386;
  HIDWORD(v386) = v386;
  v426 = (v386 >> 16) + v420;
  LODWORD(v386) = v426 ^ __ROR4__(v422, 7);
  v427 = v386;
  HIDWORD(v386) = v386;
  v428 = v424 + v461 + (v386 >> 12);
  LODWORD(v386) = v428 ^ __ROR4__(v425, 16);
  v429 = v386;
  HIDWORD(v386) = v386;
  v430 = (v386 >> 8) + v426;
  HIDWORD(v386) = v423;
  LODWORD(v386) = v423;
  v431 = v421 ^ __ROR4__(v418, 12);
  v432 = v405 + v462 + (v386 >> 7);
  LODWORD(v386) = v432 ^ __ROR4__(v397, 8);
  v433 = v386;
  HIDWORD(v386) = v386;
  v434 = (v386 >> 16) + v421;
  LODWORD(v386) = v434 ^ __ROR4__(v423, 7);
  v435 = v386;
  HIDWORD(v386) = v386;
  v436 = v432 + v466 + (v386 >> 12);
  LODWORD(v386) = v436 ^ __ROR4__(v433, 16);
  v437 = v386;
  HIDWORD(v386) = v386;
  v438 = (v386 >> 8) + v434;
  HIDWORD(v386) = v431;
  LODWORD(v386) = v431;
  v439 = v398 ^ __ROR4__(v395, 12);
  v440 = v412 + v472 + (v386 >> 7);
  LODWORD(v386) = v440 ^ __ROR4__(v406, 8);
  v441 = v386;
  HIDWORD(v386) = v386;
  v442 = (v386 >> 16) + v398;
  LODWORD(v386) = v442 ^ __ROR4__(v431, 7);
  v443 = v386;
  HIDWORD(v386) = v386;
  v444 = v440 + v473 + (v386 >> 12);
  HIDWORD(v386) = v439;
  LODWORD(v386) = v439;
  v445 = v15 + v474 + (v386 >> 7);
  LODWORD(v386) = v445 ^ __ROR4__(v415, 8);
  v446 = v386;
  HIDWORD(v386) = v386;
  v447 = v386 >> 16;
  LODWORD(v386) = __ROR4__(v441, 16);
  v448 = v447 + v407;
  LODWORD(v386) = v444 ^ v386;
  LODWORD(v15) = v386;
  HIDWORD(v386) = v386;
  v449 = v386 >> 8;
  result = v469;
  LODWORD(v386) = v448 ^ __ROR4__(v439, 7);
  v450 = v386;
  HIDWORD(v386) = v386;
  v452 = v445 + v469 + (v386 >> 12);
  LODWORD(v386) = v452 ^ __ROR4__(v446, 16);
  v453 = v386;
  HIDWORD(v386) = v386;
  v454 = v449 + v442;
  v455 = (v386 >> 8) + v448;
  *a6 = (v449 + v442) ^ v428;
  *(a6 + 5) = (v455 ^ v436) >> 8;
  *(a6 + 6) = (v455 ^ v436) >> 16;
  *(a6 + 4) = v455 ^ v436;
  *(a6 + 7) = (v455 ^ v436) >> 24;
  *(a6 + 9) = (v430 ^ v444) >> 8;
  *(a6 + 10) = (v430 ^ v444) >> 16;
  *(a6 + 8) = v430 ^ v444;
  *(a6 + 11) = (v430 ^ v444) >> 24;
  *(a6 + 13) = (v438 ^ v452) >> 8;
  *(a6 + 14) = (v438 ^ v452) >> 16;
  LODWORD(v386) = v455 ^ __ROR4__(v450, 12);
  HIDWORD(v386) = v386;
  v456 = v386 >> 7;
  *(a6 + 12) = v438 ^ v452;
  *(a6 + 15) = (v438 ^ v452) >> 24;
  LODWORD(v386) = __ROR4__(v437, 8);
  v457 = v456 ^ v386;
  *(a6 + 17) = (v456 ^ v386) >> 8;
  *(a6 + 18) = (v456 ^ v386) >> 16;
  LODWORD(v386) = v430 ^ __ROR4__(v427, 12);
  HIDWORD(v386) = v386;
  *(a6 + 16) = v457;
  *(a6 + 19) = HIBYTE(v457);
  *(a6 + 20) = (v386 >> 7) ^ __ROR4__(v15, 8);
  LODWORD(v386) = v438 ^ __ROR4__(v435, 12);
  HIDWORD(v386) = v386;
  *(a6 + 24) = (v386 >> 7) ^ __ROR4__(v453, 8);
  LODWORD(v386) = v454 ^ __ROR4__(v443, 12);
  HIDWORD(v386) = v386;
  *(a6 + 28) = (v386 >> 7) ^ __ROR4__(v429, 8);
  *(a6 + 32) = v454 ^ *a1;
  *(a6 + 36) = v455 ^ a1[1];
  *(a6 + 40) = v430 ^ a1[2];
  *(a6 + 44) = v438 ^ a1[3];
  *(a6 + 48) = a1[4] ^ __ROR4__(v437, 8);
  *(a6 + 52) = a1[5] ^ __ROR4__(v15, 8);
  *(a6 + 56) = a1[6] ^ __ROR4__(v453, 8);
  *(a6 + 60) = a1[7] ^ __ROR4__(v429, 8);
  return result;
}