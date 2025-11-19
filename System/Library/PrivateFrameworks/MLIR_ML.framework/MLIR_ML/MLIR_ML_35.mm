uint64_t llvm::SetVector<mlir::CallGraphNode *,llvm::SmallVector<mlir::CallGraphNode *,1u>,llvm::DenseSet<mlir::CallGraphNode *,llvm::DenseMapInfo<mlir::CallGraphNode *,void>>,1u>::insert(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 8))
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1, a2, v15);
    if (v15[16] == 1)
    {
      v4 = *a2;
      v5 = *(a1 + 32);
      if (v5 >= *(a1 + 36))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*(a1 + 24) + 8 * v5) = v4;
      ++*(a1 + 32);
      return 1;
    }

    return 0;
  }

  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = v7;
  if (v8)
  {
    v10 = *a2;
    v11 = 8 * v8;
    v9 = *(a1 + 24);
    while (*v9 != v10)
    {
      ++v9;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_13;
      }
    }
  }

  if (v9 != &v7[v8])
  {
    return 0;
  }

  v10 = *a2;
LABEL_13:
  if (v8 >= *(a1 + 36))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7[v8] = v10;
  v12 = *(a1 + 32) + 1;
  *(a1 + 32) = v12;
  if (v12 >= 2)
  {
    v13 = *(a1 + 24);
    v14 = 8 * v12;
    do
    {
      llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1, v13++, v15);
      v14 -= 8;
    }

    while (v14);
  }

  return 1;
}

void anonymous namespace::CGUseList::eraseNode(_anonymous_namespace_::CGUseList *this, mlir::CallGraphNode *a2)
{
  v2 = *(a2 + 14);
  if (v2)
  {
    v3 = *(a2 + 6);
    v4 = 8 * v2;
    do
    {
      if ((*v3 & 6) == 4)
      {
      }

      ++v3;
      v4 -= 8;
    }

    while (v4);
  }

  v5 = *(this + 3);
  v6 = *(this + 10);
  if (v6)
  {
    v7 = (v6 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v8 = v5 + 56 * v7;
    v9 = *v8;
    if (*v8 == a2)
    {
      goto LABEL_13;
    }

    v10 = 1;
    while (v9 != -4096)
    {
      v11 = v7 + v10++;
      v7 = v11 & (v6 - 1);
      v8 = v5 + 56 * v7;
      v9 = *v8;
      if (*v8 == a2)
      {
        goto LABEL_13;
      }
    }
  }

  v8 = v5 + 56 * v6;
LABEL_13:
  llvm::deallocate_buffer(*(v8 + 32), (16 * *(v8 + 48)));
}

uint64_t *llvm::function_ref<void ()(mlir::CallGraphNode *,mlir::Operation *)>::callback_fn<anonymous namespace::CGUseList::dropCallUses(mlir::CallGraphNode *,mlir::Operation *,mlir::CallGraph &)::$_0>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  result = a1[1];
  v4 = *v3;
  v5 = *(v3 + 4);
  v10 = a2;
  if (v5)
  {
    v6 = (v5 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v7 = *(v4 + 16 * v6);
    if (v7 == a2)
    {
LABEL_3:
      if (v6 != v5)
      {
        --*(v4 + 16 * v6 + 8);
        result = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::operator[](result, &v10);
        --*result;
      }
    }

    else
    {
      v8 = 1;
      while (v7 != -4096)
      {
        v9 = v6 + v8++;
        v6 = v9 & (v5 - 1);
        v7 = *(v4 + 16 * v6);
        if (v7 == a2)
        {
          goto LABEL_3;
        }
      }
    }
  }

  return result;
}

uint64_t mlir::InlinerInterface::isLegalToInline(mlir::InlinerInterface *this, mlir::Operation *a2, mlir::Operation *a3)
{
  result = mlir::detail::DialectInterfaceCollectionBase::getInterfaceFor(this, a2);
  if (result)
  {
    v4 = *(*result + 16);

    return v4();
  }

  return result;
}

uint64_t mlir::InlinerInterface::isLegalToInline(mlir::detail::DialectInterfaceCollectionBase *a1, uint64_t a2)
{
  result = mlir::detail::DialectInterfaceCollectionBase::getInterfaceFor(a1, *(a2 + 16));
  if (result)
  {
    v3 = *(*result + 24);

    return v3();
  }

  return result;
}

uint64_t mlir::InlinerInterface::isLegalToInline(mlir::detail::DialectInterfaceCollectionBase *a1, Operation *a2)
{
  result = mlir::detail::DialectInterfaceCollectionBase::getInterfaceFor(a1, a2);
  if (result)
  {
    v3 = *(*result + 32);

    return v3();
  }

  return result;
}

uint64_t mlir::InlinerInterface::shouldAnalyzeRecursively(mlir::InlinerInterface *this, mlir::Operation *a2)
{
  InterfaceFor = mlir::detail::DialectInterfaceCollectionBase::getInterfaceFor(this, a2);
  if (!InterfaceFor)
  {
    return 1;
  }

  v3 = *(*InterfaceFor + 40);

  return v3();
}

uint64_t mlir::InlinerInterface::handleTerminator(mlir::InlinerInterface *this, mlir::Operation *a2, mlir::Block *a3)
{
  v3 = *(*mlir::detail::DialectInterfaceCollectionBase::getInterfaceFor(this, a2) + 48);

  return v3();
}

uint64_t mlir::InlinerInterface::handleTerminator(mlir::detail::DialectInterfaceCollectionBase *a1, Operation *a2)
{
  v2 = *(*mlir::detail::DialectInterfaceCollectionBase::getInterfaceFor(a1, a2) + 56);

  return v2();
}

uint64_t mlir::InlinerInterface::handleArgument(mlir::detail::DialectInterfaceCollectionBase *a1, int a2, int a3, Operation *a4)
{
  v4 = *(*mlir::detail::DialectInterfaceCollectionBase::getInterfaceFor(a1, a4) + 72);

  return v4();
}

uint64_t mlir::InlinerInterface::handleResult(mlir::detail::DialectInterfaceCollectionBase *a1, int a2, int a3, Operation *a4)
{
  v4 = *(*mlir::detail::DialectInterfaceCollectionBase::getInterfaceFor(a1, a4) + 80);

  return v4();
}

uint64_t mlir::InlinerInterface::processInlinedCallBlocks(mlir::detail::DialectInterfaceCollectionBase *a1, Operation *a2)
{
  v2 = *(*mlir::detail::DialectInterfaceCollectionBase::getInterfaceFor(a1, a2) + 88);

  return v2();
}

uint64_t inlineRegionImpl(mlir::InlinerInterface *a1, void *a2, mlir::Block *this, mlir::DictionaryAttr *a4, mlir::IRMapping *a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, uint64_t a15)
{
  v39[7] = *MEMORY[0x277D85DE8];
  if (*a2 == a2)
  {
    return 0;
  }

  v19 = a2[1];
  v20 = v19 - 8;
  if (!v19)
  {
    v20 = 0;
  }

  v21 = *(v20 + 48);
  v22 = *(v20 + 56);
  if (v22 != v21)
  {
    v23 = *(a5 + 4);
    if (v23)
    {
      v24 = *a5;
      v25 = v23 - 1;
      while (1)
      {
        v26 = HIDWORD(*v21);
        v27 = 0x9DDFEA08EB382D69 * ((8 * *v21 - 0xAE502812AA7333) ^ v26);
        v28 = (-348639895 * ((((0x9DDFEA08EB382D69 * (v26 ^ (v27 >> 47) ^ v27)) >> 32) >> 15) ^ (-348639895 * (v26 ^ (v27 >> 47) ^ v27)))) & v25;
        v29 = *(v24 + 16 * v28);
        if (v29 != *v21)
        {
          break;
        }

LABEL_8:
        if (++v21 == v22)
        {
          goto LABEL_15;
        }
      }

      v30 = 1;
      while (v29 != -4096)
      {
        v31 = v28 + v30++;
        v28 = v31 & v25;
        v29 = *(v24 + 16 * (v31 & v25));
        if (v29 == *v21)
        {
          goto LABEL_8;
        }
      }
    }

    return 0;
  }

LABEL_15:
  Parent = mlir::Block::getParent(this);
  result = (*(*a1 + 32))(a1, Parent, a2, a13, a5);
  if (result)
  {
    result = isLegalToInline(a1, a2, Parent, a13, a5);
    if (result)
    {
      v35 = mlir::Block::getParent(this);
      v39[0] = mlir::Region::getContext(v35);
      v39[1] = 0;
      v39[2] = this;
      v39[3] = a4;
      v36 = a2[2];
      if (mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(v36))
      {
        if (v36)
        {
          InterfaceFor = mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(v36);
          goto LABEL_22;
        }
      }

      else
      {
        v36 = 0;
      }

      InterfaceFor = 0;
LABEL_22:
      if (a14)
      {
        v37 = v36 == 0;
      }

      else
      {
        v37 = 1;
      }

      if (!v37)
      {
        handleArgumentImpl(a1, v39, a14, a15, v36, InterfaceFor, a5);
      }

      mlir::Block::splitBlock();
    }
  }

  return result;
}

uint64_t mlir::inlineRegion(mlir::InlinerInterface *a1, void *a2, mlir::Block *a3, mlir::DictionaryAttr *a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v41 = *MEMORY[0x277D85DE8];
  v39[0] = a5;
  v39[1] = a6;
  v38.n128_u64[0] = a7;
  v38.n128_u64[1] = a8;
  if (*a2 != a2)
  {
    v12 = a2[1];
    v13 = v12 ? v12 - 8 : 0;
    if (a6 == ((*(v13 + 56) - *(v13 + 48)) >> 3))
    {
      v18 = a7;
      v27 = a8;
      v28[0] = 0;
      v28[1] = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      if (a6)
      {
        v19 = 0;
        while (1)
        {
          v20 = *(*(v13 + 48) + 8 * v19);
          if ((*(v20 + 8) ^ *(mlir::ValueRange::dereference_iterator(v39, v19) + 8)) > 7)
          {
            break;
          }

          v21 = mlir::ValueRange::dereference_iterator(v39, v19);
          v36.n128_u64[0] = v20;
          *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v28, &v36) = v21;
          if (a6 == ++v19)
          {
            goto LABEL_10;
          }
        }
      }

      else
      {
LABEL_10:
        mlir::ValueRange::getTypes(&v38, &v36);
        v23 = v36.n128_u64[1];
        v22 = v36.n128_u64[0];
        v24 = v37;
        v40 = v36;
        if (v36.n128_u64[1])
        {
          v22 = mlir::ValueRange::offset_base(&v40, v36.n128_i64[1]);
          v23 = v40.n128_u64[1];
        }

        mlir::TypeRange::TypeRange(v40.n128_u64, v22, v24 - v23);
        inlineRegionImpl(a1, a2, a3, a4, v28, v18, v27, v25, v40.n128_i64[0], v40.n128_i64[1], a9, a10, a11, 0, 0);
      }

      llvm::deallocate_buffer(v33, (16 * v35));
    }
  }

  return 0;
}

uint64_t mlir::inlineCall(mlir::InlinerInterface *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, unsigned int a7)
{
  v108[8] = *MEMORY[0x277D85DE8];
  v95 = a2;
  v96 = a3;
  v94[0] = a4;
  v94[1] = a5;
  if (*a6 == a6)
  {
    return 0;
  }

  v9 = a6[1];
  if (v9)
  {
    v10 = v9 - 8;
  }

  else
  {
    v10 = 0;
  }

  ResultTypes = mlir::CallableOpInterface::getResultTypes(v94);
  v13 = v12;
  ArgOperands = mlir::CallOpInterface::getArgOperands(&v95);
  v106 = v108;
  v107 = 0x800000000;
  if (v14 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v14)
  {
    v16 = v108;
    v17 = v14;
    v18 = (ArgOperands + 24);
    do
    {
      v19 = *v18;
      v18 += 4;
      *v16++ = v19;
      --v17;
    }

    while (v17);
    v20 = v107;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20 + v14;
  LODWORD(v107) = v21;
  v22 = *(v95 + 36);
  if (v22)
  {
    v23 = v95 - 16;
  }

  else
  {
    v23 = 0;
  }

  v103 = v105;
  v104 = 0x800000000;
  if (v22 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v22)
  {
    for (i = 0; i != v22; ++i)
    {
      v105[i] = mlir::detail::OpResultImpl::getNextResultAtOffset(v23, i);
    }

    v25 = v104;
    v21 = v107;
  }

  else
  {
    v25 = 0;
  }

  v26 = (v25 + v22);
  LODWORD(v104) = v26;
  if (v21 == ((*(v10 + 56) - *(v10 + 48)) >> 3) && v13 == v26)
  {
    v100 = &v102;
    v101 = 0x400000000;
    v80 = v13;
    if (v13 + v21 >= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v28 = v95;
    v91[0] = mlir::Attribute::getContext((v95 + 24));
    v91[1] = 0;
    v92 = *(v28 + 16);
    NodePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v28);
    v29 = *(v95 + 48);
    if (*(v29 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v83[0] = *(v29 + 8);
      ReferencedDialect = mlir::StringAttr::getReferencedDialect(v83);
      v31 = *(a1 + 6);
      v81 = a7;
      if (!v31)
      {
LABEL_39:
        v39 = 0;
        goto LABEL_43;
      }
    }

    else
    {
      ReferencedDialect = *(v29 + 24);
      v31 = *(a1 + 6);
      v81 = a7;
      if (!v31)
      {
        goto LABEL_39;
      }
    }

    v32 = *(a1 + 1);
    v33 = 0x9DDFEA08EB382D69 * ((8 * ReferencedDialect - 0xAE502812AA7333) ^ HIDWORD(ReferencedDialect));
    v34 = 0x9DDFEA08EB382D69 * (HIDWORD(ReferencedDialect) ^ (v33 >> 47) ^ v33);
    v35 = 1;
    v36 = (-348639895 * ((v34 >> 47) ^ v34)) & (v31 - 1);
    v37 = *(v32 + 8 * v36);
    if (v37 == -8192)
    {
      goto LABEL_37;
    }

    while (1)
    {
      if (v37 == -4096)
      {
        goto LABEL_39;
      }

      if (*(v37 + 8) == ReferencedDialect)
      {
        break;
      }

      do
      {
LABEL_37:
        v38 = v36 + v35++;
        v36 = v38 & (v31 - 1);
        v37 = *(v32 + 8 * v36);
      }

      while (v37 == -8192);
    }

    if (v36 == v31)
    {
      v39 = 0;
    }

    else
    {
      v39 = v37;
    }

LABEL_43:
    v83[0] = 0;
    v83[1] = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v88 = 0;
    v89 = 0;
    v90 = 0;
    if (v107)
    {
      v40 = 0;
      v41 = 8 * v107;
      do
      {
        v43 = *(*(v10 + 48) + v40);
        v42 = *&v106[v40];
        if ((*(v42 + 8) & 0xFFFFFFFFFFFFFFF8) != (v43[1] & 0xFFFFFFFFFFFFFFF8))
        {
          if (!v39 || (v44 = (*(*v39 + 64))(v39, v91, *&v106[v40])) == 0)
          {
            if (v101)
            {
              v57 = v100;
              v58 = (v100 + 8 * v101);
              do
              {
                v59 = *v57;
                v60 = *(*v57 - 2);
                if (v60)
                {
                  v61 = *(*(v59 + 9) + 24);
                  do
                  {
                    v62 = v60[1];
                    if (v62)
                    {
                      v63 = *v60;
                      *v62 = *v60;
                      if (v63)
                      {
                        *(v63 + 8) = v62;
                      }
                    }

                    v60[3] = v61;
                    v60[1] = v61;
                    v64 = *v61;
                    *v60 = *v61;
                    if (v64)
                    {
                      *(v64 + 8) = v60;
                    }

                    *v61 = v60;
                    v60 = *(v59 - 2);
                  }

                  while (v60);
                }

                mlir::Operation::erase(v59);
                ++v57;
              }

              while (v57 != v58);
            }

            goto LABEL_98;
          }

          if (v101 >= HIDWORD(v101))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(v100 + v101) = v44;
          LODWORD(v101) = v101 + 1;
          v42 = v44 - 16;
        }

        v98 = v43;
        *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v83, &v98) = v42;
        v40 += 8;
      }

      while (v41 != v40);
    }

    v45 = *(v95 + 16);
    v46 = *(llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v95) + 8);
    v92 = v45;
    NodePtr = v46;
    v47 = v104;
    if (v104)
    {
      if (v39)
      {
        v48 = 0;
        while (1)
        {
          v50 = *(v103 + v48);
          if (*(ResultTypes + 8 * v48) != (v50[1] & 0xFFFFFFFFFFFFFFF8))
          {
            v51 = (*(*v39 + 64))(v39, v91, *(v103 + v48));
            if (!v51)
            {
              goto LABEL_87;
            }

            if (v101 >= HIDWORD(v101))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            *(v100 + v101) = v51;
            LODWORD(v101) = v101 + 1;
            v52 = (v51 - 16);
            v98 = (v51 - 16);
            while (1)
            {
              v53 = *v50;
              if (!*v50)
              {
                break;
              }

              v54 = v53[1];
              if (v54)
              {
                v55 = *v53;
                *v54 = *v53;
                if (v55)
                {
                  *(v55 + 8) = v54;
                }
              }

              v53[3] = v52;
              v53[1] = v52;
              v56 = *v52;
              *v53 = *v52;
              if (v56)
              {
                *(v56 + 8) = v53;
              }

              *v52 = v53;
            }

            DefiningOp = mlir::Value::getDefiningOp(&v98);
            mlir::Operation::replaceUsesOfWith(DefiningOp, v98, v50);
          }

          if (++v48 == v47)
          {
            goto LABEL_83;
          }
        }
      }

      v65 = v103;
      v66 = ResultTypes;
      while (1)
      {
        v67 = *v65++;
        if (*v66 != (*(v67 + 8) & 0xFFFFFFFFFFFFFFF8))
        {
          break;
        }

        ++v66;
        LODWORD(v47) = v47 - 1;
        if (!v47)
        {
          goto LABEL_83;
        }
      }

LABEL_87:
      v98 = 0;
      if (v101)
      {
        v71 = v100;
        v72 = (v100 + 8 * v101);
        do
        {
          v73 = *v71;
          v74 = *(*v71 - 2);
          if (v74)
          {
            v75 = *(*(v73 + 9) + 24);
            do
            {
              v76 = v74[1];
              if (v76)
              {
                v77 = *v74;
                *v76 = *v74;
                if (v77)
                {
                  *(v77 + 8) = v76;
                }
              }

              v74[3] = v75;
              v74[1] = v75;
              v78 = *v75;
              *v74 = *v75;
              if (v78)
              {
                *(v78 + 8) = v74;
              }

              *v75 = v74;
              v74 = *(v73 - 2);
            }

            while (v74);
          }

          mlir::Operation::erase(v73);
          ++v71;
        }

        while (v71 != v72);
      }
    }

    else
    {
LABEL_83:
      if (((*(*a1 + 24))(a1, v95, v94[0], v81) & 1) == 0 || (v69 = *(v95 + 8), v68 = *(v95 + 16), mlir::ValueRange::ValueRange(&v98, v103, v104), mlir::TypeRange::TypeRange(v97, ResultTypes, v80), (inlineRegionImpl(a1, a6, v68, v69, v83, v98, v99, v70, v97[0], v97[1], *(v95 + 24), 1, v81, v95, v96) & 1) == 0))
      {
        mlir::inlineCall(mlir::InlinerInterface &,mlir::CallOpInterface,mlir::CallableOpInterface,mlir::Region *,BOOL)::$_0::operator()(v100, v101);
      }
    }

LABEL_98:
    llvm::deallocate_buffer(v88, (16 * v90));
  }

  if (v103 != v105)
  {
    free(v103);
  }

  if (v106 != v108)
  {
    free(v106);
  }

  return 0;
}

uint64_t mlir::inlineCall(mlir::InlinerInterface &,mlir::CallOpInterface,mlir::CallableOpInterface,mlir::Region *,BOOL)::$_0::operator()(mlir::Operation **a1, int a2)
{
  if (a2)
  {
    v2 = a1;
    v3 = &a1[a2];
    do
    {
      v4 = *v2;
      v5 = *(*v2 - 2);
      if (v5)
      {
        v6 = *(*(v4 + 9) + 24);
        do
        {
          v7 = v5[1];
          if (v7)
          {
            v8 = *v5;
            *v7 = *v5;
            if (v8)
            {
              *(v8 + 8) = v7;
            }
          }

          v5[3] = v6;
          v9 = *v6;
          *v5 = *v6;
          v5[1] = v6;
          if (v9)
          {
            *(v9 + 8) = v5;
          }

          *v6 = v5;
          v5 = *(v4 - 2);
        }

        while (v5);
      }

      mlir::Operation::erase(v4);
      ++v2;
    }

    while (v2 != v3);
  }

  return 0;
}

void sub_256604594()
{

  JUMPOUT(0x259C63180);
}

uint64_t isLegalToInline(mlir::InlinerInterface *a1, uint64_t a2, mlir::Region *a3, _BOOL8 a4, mlir::IRMapping *a5)
{
  v5 = *(a2 + 8);
  if (v5 != a2)
  {
    while (2)
    {
      v11 = v5 - 8;
      if (!v5)
      {
        v11 = 0;
      }

      v12 = v11 + 32;
      for (i = *(v11 + 40); i != v12; i = *(i + 8))
      {
        ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(i);
        result = (*(*a1 + 40))(a1, ValuePtr, a3, a4, a5);
        if (!result)
        {
          return result;
        }

        if ((*(*a1 + 48))(a1, ValuePtr))
        {
          v16 = *(ValuePtr + 44);
          if ((v16 & 0x7FFFFF) != 0)
          {
            v17 = (ValuePtr + 16 * ((v16 >> 23) & 1) + ((v16 >> 21) & 0x7F8) + 32 * *(ValuePtr + 40) + 64);
            v18 = 24 * (v16 & 0x7FFFFF);
            while ((isLegalToInline(a1, v17, a3, a4, a5) & 1) != 0)
            {
              v17 = (v17 + 24);
              v18 -= 24;
              if (!v18)
              {
                goto LABEL_5;
              }
            }

            return 0;
          }
        }

LABEL_5:
        ;
      }

      v5 = *(v5 + 8);
      if (v5 != a2)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

void handleArgumentImpl(uint64_t a1, mlir::DictionaryAttr **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v52[6] = *MEMORY[0x277D85DE8];
  v48[0] = a5;
  v48[1] = a6;
  CallableRegion = mlir::CallableOpInterface::getCallableRegion(v48);
  if (*CallableRegion == CallableRegion)
  {
    LODWORD(v14) = 0;
  }

  else
  {
    v12 = CallableRegion[1];
    if (v12)
    {
      v13 = v12 - 8;
    }

    else
    {
      v13 = 0;
    }

    v14 = (*(v13 + 56) - *(v13 + 48)) >> 3;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(a2, 0, 0);
  v50 = v52;
  v51 = 0x600000000;
  if (v14 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v14)
  {
    v16 = vdupq_n_s64(v14 - 1);
    v17 = v14 + 1;
    v18 = vmovn_s64(vcgeq_u64(v16, xmmword_2573686A0));
    if (v18.i8[0])
    {
      v52[0] = DictionaryAttr;
      v19 = v17 & 0xE;
      if ((v18.i8[4] & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v19 = v17 & 0xE;
      if ((v18.i8[4] & 1) == 0)
      {
LABEL_12:
        if (v19 == 2)
        {
          goto LABEL_26;
        }

        goto LABEL_16;
      }
    }

    v52[1] = DictionaryAttr;
    if (v19 == 2)
    {
      goto LABEL_26;
    }

LABEL_16:
    v20 = vmovn_s64(vcgtq_u64(v16, xmmword_2573686B0));
    if (v20.i8[0])
    {
      v52[2] = DictionaryAttr;
      if ((v20.i8[4] & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else if ((v20.i8[4] & 1) == 0)
    {
LABEL_18:
      if (v19 == 4)
      {
        goto LABEL_26;
      }

LABEL_22:
      v21 = vmovn_s64(vcgtq_u64(v16, xmmword_2573686C0));
      if (v21.i8[0])
      {
        v52[4] = DictionaryAttr;
      }

      if (v21.i8[4])
      {
        v52[5] = DictionaryAttr;
      }

      goto LABEL_26;
    }

    v52[3] = DictionaryAttr;
    if (v19 == 4)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

LABEL_26:
  LODWORD(v51) = v14;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v48);
  if (ArgAttrsAttr)
  {
    Value = mlir::ArrayAttr::getValue(&ArgAttrsAttr);
    v23 = mlir::ArrayAttr::getValue(&ArgAttrsAttr);
    v25 = (v23 + 8 * v24);
    if (Value != v25)
    {
      v26 = 0;
      do
      {
        v27 = *Value++;
        *(v50 + v26) = v27;
        v26 += 8;
      }

      while (Value != v25);
    }
  }

  v28 = mlir::CallableOpInterface::getCallableRegion(v48);
  if (*v28 == v28)
  {
    v33 = v50;
    goto LABEL_52;
  }

  v29 = v28[1];
  if (v29)
  {
    v30 = v29 - 8;
  }

  else
  {
    v30 = 0;
  }

  v31 = *(v30 + 48);
  v32 = *(v30 + 56);
  v33 = v50;
  if (v32 == v31 || v51 == 0)
  {
LABEL_52:
    if (v33 != v52)
    {
      goto LABEL_53;
    }

    return;
  }

  v35 = v50 + 8 * v51;
  do
  {
    v36 = *(a7 + 16);
    if (v36)
    {
      v37 = *a7;
      v38 = HIDWORD(*v31);
      v39 = 0x9DDFEA08EB382D69 * ((8 * *v31 - 0xAE502812AA7333) ^ v38);
      v40 = (-348639895 * ((((0x9DDFEA08EB382D69 * (v38 ^ (v39 >> 47) ^ v39)) >> 32) >> 15) ^ (-348639895 * (v38 ^ (v39 >> 47) ^ v39)))) & (v36 - 1);
      v41 = *(*a7 + 16 * v40);
      if (v41 == *v31)
      {
LABEL_41:
        if (v40 != v36)
        {
          v42 = *(v37 + 16 * v40 + 8);
          goto LABEL_44;
        }
      }

      else
      {
        v46 = 1;
        while (v41 != -4096)
        {
          v47 = v40 + v46++;
          v40 = v47 & (v36 - 1);
          v41 = *(v37 + 16 * v40);
          if (v41 == *v31)
          {
            goto LABEL_41;
          }
        }
      }
    }

    v42 = 0;
LABEL_44:
    v43 = *v33;
    v33 += 8;
    v44 = (*(*a1 + 72))(a1, a2, a3, v48[0], v42, v43);
    v45 = *v31++;
    ArgAttrsAttr = v45;
    *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a7, &ArgAttrsAttr) = v44;
  }

  while (v31 != v32 && v33 != v35);
  v33 = v50;
  if (v50 == v52)
  {
    return;
  }

LABEL_53:
  free(v33);
}

void remapInlinedLocations(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  v4[1] = 0;
  v5 = 0;
  v3[0] = v4;
  v3[1] = &v6;
  v6 = a3;
  v7[0] = &unk_286866DD0;
  v7[1] = v3;
  v7[3] = v7;
  mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::addReplacement();
}

void handleResultImpl(uint64_t a1, mlir::DictionaryAttr **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v62[6] = *MEMORY[0x277D85DE8];
  v55[0] = a5;
  v55[1] = a6;
  DictionaryAttr = mlir::Builder::getDictionaryAttr(a2, 0, 0);
  v60 = v62;
  v61 = 0x600000000;
  if (a8 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    v14 = vdupq_n_s64(a8 - 1);
    v15 = a8 + 1;
    v16 = vmovn_s64(vcgeq_u64(v14, xmmword_2573686A0));
    if (v16.i8[0])
    {
      v62[0] = DictionaryAttr;
      v17 = v15 & 0xE;
      if ((v16.i8[4] & 1) == 0)
      {
LABEL_6:
        if (v17 == 2)
        {
          goto LABEL_20;
        }

        goto LABEL_10;
      }
    }

    else
    {
      v17 = v15 & 0xE;
      if ((v16.i8[4] & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v62[1] = DictionaryAttr;
    if (v17 == 2)
    {
      goto LABEL_20;
    }

LABEL_10:
    v18 = vmovn_s64(vcgtq_u64(v14, xmmword_2573686B0));
    if (v18.i8[0])
    {
      v62[2] = DictionaryAttr;
      if ((v18.i8[4] & 1) == 0)
      {
LABEL_12:
        if (v17 == 4)
        {
          goto LABEL_20;
        }

LABEL_16:
        v19 = vmovn_s64(vcgtq_u64(v14, xmmword_2573686C0));
        if (v19.i8[0])
        {
          v62[4] = DictionaryAttr;
        }

        if (v19.i8[4])
        {
          v62[5] = DictionaryAttr;
        }

        goto LABEL_20;
      }
    }

    else if ((v18.i8[4] & 1) == 0)
    {
      goto LABEL_12;
    }

    v62[3] = DictionaryAttr;
    if (v17 == 4)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

LABEL_20:
  LODWORD(v61) = a8;
  v58[0] = mlir::CallableOpInterface::getResAttrsAttr(v55);
  if (v58[0])
  {
    Value = mlir::ArrayAttr::getValue(v58);
    v21 = mlir::ArrayAttr::getValue(v58);
    v23 = (v21 + 8 * v22);
    if (Value != v23)
    {
      v24 = 0;
      do
      {
        v25 = *Value++;
        *(v60 + v24) = v25;
        v24 += 8;
      }

      while (Value != v23);
    }
  }

  v58[1] = 0x600000000;
  v56[0] = a7;
  v56[1] = 0;
  v57 = v60;
  v58[0] = &v59;
  if (a8 && v61)
  {
    v26 = mlir::ValueRange::dereference_iterator(v56, 0);
    v27 = v57;
    v54[0] = v26;
    v54[1] = v57;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v28 = *v26;
    if (!*v26)
    {
      v48 = v26;
LABEL_69:
      v49 = (*(*a1 + 80))(a1, a2, a3, v55[0], v48, *v27);
      v50 = &v51;
      mlir::Value::replaceUsesWithIf(v54, v49, llvm::function_ref<BOOL ()(mlir::OpOperand &)>::callback_fn<handleResultImpl(mlir::InlinerInterface &,mlir::OpBuilder &,mlir::CallOpInterface,mlir::CallableOpInterface,mlir::ValueRange)::$_0>, &v50);
      llvm::deallocate_buffer(v51, (8 * v53));
    }

    v29 = 0;
    v30 = 0;
    v31 = 0;
    while (1)
    {
      v35 = v28[2];
      if (!v30)
      {
        goto LABEL_49;
      }

      v32 = ((v35 >> 4) ^ (v35 >> 9)) & (v30 - 1);
      v33 = v31 + 8 * v32;
      v34 = *v33;
      if (v35 != *v33)
      {
        break;
      }

LABEL_29:
      v28 = *v28;
      if (!v28)
      {
        v48 = v54[0];
        goto LABEL_69;
      }
    }

    v36 = 0;
    v37 = 1;
    while (v34 != -4096)
    {
      if (v36)
      {
        v38 = 0;
      }

      else
      {
        v38 = v34 == -8192;
      }

      if (v38)
      {
        v36 = v33;
      }

      v39 = v32 + v37++;
      v32 = v39 & (v30 - 1);
      v33 = v31 + 8 * v32;
      v34 = *v33;
      if (v35 == *v33)
      {
        goto LABEL_29;
      }
    }

    if (v36)
    {
      v40 = v36;
    }

    else
    {
      v40 = v33;
    }

    if (4 * v29 + 4 < 3 * v30)
    {
      if (v30 + ~v29 - HIDWORD(v52) > v30 >> 3)
      {
        LODWORD(v52) = ++v29;
        if (*v40 == -4096)
        {
LABEL_35:
          *v40 = v35;
          goto LABEL_29;
        }

LABEL_34:
        --HIDWORD(v52);
        goto LABEL_35;
      }
    }

    else
    {
LABEL_49:
      v30 *= 2;
    }

    llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::grow(&v51, v30);
    v31 = v51;
    v30 = v53;
    if (v53)
    {
      v41 = v53 - 1;
      v42 = (v53 - 1) & ((v35 >> 4) ^ (v35 >> 9));
      v40 = v51 + 8 * v42;
      v43 = *v40;
      if (v35 != *v40)
      {
        v44 = 0;
        v45 = 1;
        while (v43 != -4096)
        {
          if (v44)
          {
            v46 = 0;
          }

          else
          {
            v46 = v43 == -8192;
          }

          if (v46)
          {
            v44 = v40;
          }

          v47 = v42 + v45++;
          v42 = v47 & v41;
          v40 = v51 + 8 * (v47 & v41);
          v43 = *v40;
          if (v35 == *v40)
          {
            goto LABEL_62;
          }
        }

        if (v44)
        {
          v40 = v44;
        }
      }
    }

    else
    {
      v40 = 0;
    }

LABEL_62:
    v29 = v52 + 1;
    LODWORD(v52) = v52 + 1;
    if (*v40 == -4096)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (v60 != v62)
  {
    free(v60);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZL21remapInlinedLocationsN4llvm14iterator_rangeINS8_14ilist_iteratorINS8_12ilist_detail12node_optionsINS2_5BlockELb0ELb0EvLb0EvEELb0ELb0EEEEENS2_8LocationEE3__0NS2_12LocationAttrENS2_9AttributeENS_4pairISJ_NS2_10WalkResultEEEEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINSL_ISQ_SM_EEEEEEvE4typeEOT_EUlSK_E_NS_9allocatorISZ_EEFNSS_INSL_ISK_SM_EEEESK_EE7__cloneEPNS0_6__baseIS14_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286866DD0;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZL21remapInlinedLocationsN4llvm14iterator_rangeINS8_14ilist_iteratorINS8_12ilist_detail12node_optionsINS2_5BlockELb0ELb0EvLb0EvEELb0ELb0EEEEENS2_8LocationEE3__0NS2_12LocationAttrENS2_9AttributeENS_4pairISJ_NS2_10WalkResultEEEEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINSL_ISQ_SM_EEEEEEvE4typeEOT_EUlSK_E_NS_9allocatorISZ_EEFNSS_INSL_ISK_SM_EEEESK_EEclEOSK_@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  result = mlir::LocationAttr::classof(*a2);
  if (result)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    *a3 = 0;
    *(a3 + 16) = 0;
  }

  else
  {
    v8 = *(a1 + 8);
    v11 = v5;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Location,mlir::LocationAttr,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseMapPair<mlir::Location,mlir::LocationAttr>>,mlir::Location,mlir::LocationAttr,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseMapPair<mlir::Location,mlir::LocationAttr>>::try_emplace<>(*v8, &v11, &v9);
    if (v10)
    {
      result = mlir::CallSiteLoc::get(v11, **(v8 + 8));
      *(v9 + 8) = result;
    }

    else
    {
      result = *(v9 + 8);
    }

    *a3 = result;
    *(a3 + 8) = 2;
    *(a3 + 16) = 1;
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZL21remapInlinedLocationsN4llvm14iterator_rangeINS8_14ilist_iteratorINS8_12ilist_detail12node_optionsINS2_5BlockELb0ELb0EvLb0EvEELb0ELb0EEEEENS2_8LocationEE3__0NS2_12LocationAttrENS2_9AttributeENS_4pairISJ_NS2_10WalkResultEEEEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINSL_ISQ_SM_EEEEEEvE4typeEOT_EUlSK_E_NS_9allocatorISZ_EEFNSS_INSL_ISK_SM_EEEESK_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZL21remapInlinedLocationsN4llvm14iterator_rangeINS5_14ilist_iteratorINS5_12ilist_detail12node_optionsINS_5BlockELb0ELb0EvLb0EvEELb0ELb0EEEEENS_8LocationEE3$_0NS_12LocationAttrENS_9AttributeENSt3__14pairISG_NS_10WalkResultEEEEENSI_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NSI_8optionalINSJ_ISO_SK_EEEEEEvE4typeEOT_EUlSH_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZL21remapInlinedLocationsN4llvm14iterator_rangeINS5_14ilist_iteratorINS5_12ilist_detail12node_optionsINS_5BlockELb0ELb0EvLb0EvEELb0ELb0EEEEENS_8LocationEE3$_0NS_12LocationAttrENS_9AttributeENSt3__14pairISG_NS_10WalkResultEEEEENSI_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NSI_8optionalINSJ_ISO_SK_EEEEEEvE4typeEOT_EUlSH_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZL21remapInlinedLocationsN4llvm14iterator_rangeINS5_14ilist_iteratorINS5_12ilist_detail12node_optionsINS_5BlockELb0ELb0EvLb0EvEELb0ELb0EEEEENS_8LocationEE3$_0NS_12LocationAttrENS_9AttributeENSt3__14pairISG_NS_10WalkResultEEEEENSI_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NSI_8optionalINSJ_ISO_SK_EEEEEEvE4typeEOT_EUlSH_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZL21remapInlinedLocationsN4llvm14iterator_rangeINS5_14ilist_iteratorINS5_12ilist_detail12node_optionsINS_5BlockELb0ELb0EvLb0EvEELb0ELb0EEEEENS_8LocationEE3$_0NS_12LocationAttrENS_9AttributeENSt3__14pairISG_NS_10WalkResultEEEEENSI_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NSI_8optionalINSJ_ISO_SK_EEEEEEvE4typeEOT_EUlSH_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Location,mlir::LocationAttr,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseMapPair<mlir::Location,mlir::LocationAttr>>,mlir::Location,mlir::LocationAttr,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseMapPair<mlir::Location,mlir::LocationAttr>>::try_emplace<>@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
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
  v8 = (*result + 16 * v7);
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
      v8 = (v5 + 16 * (v15 & v6));
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
        v8[1] = 0;
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
    llvm::DenseMap<mlir::Region *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,std::pair<unsigned int,unsigned int>>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::LookupBucketFor<mlir::Dialect const*>(v16, a2, &v18);
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
  *(a3 + 8) = v5 + 16 * v4;
  *(a3 + 16) = v10;
  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::OpOperand &)>::callback_fn<handleResultImpl(mlir::InlinerInterface &,mlir::OpBuilder &,mlir::CallOpInterface,mlir::CallableOpInterface,mlir::ValueRange)::$_0>(uint64_t **a1, uint64_t a2)
{
  v2 = *(*a1 + 4);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a2 + 16);
  v4 = **a1;
  v5 = v2 - 1;
  v6 = ((v3 >> 4) ^ (v3 >> 9)) & v5;
  v7 = *(v4 + 8 * v6);
  if (v7 == v3)
  {
    return 1;
  }

  v9 = 1;
  do
  {
    result = v7 != -4096;
    if (v7 == -4096)
    {
      break;
    }

    v10 = v6 + v9++;
    v6 = v10 & v5;
    v7 = *(v4 + 8 * v6);
    result = 1;
  }

  while (v7 != v3);
  return result;
}

uint64_t mlir::moveLoopInvariantCode(mlir::Region **a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int (*a5)(uint64_t, uint64_t), uint64_t a6, void (*a7)(uint64_t, uint64_t, mlir::Block *), uint64_t a8)
{
  v53[0] = a3;
  v53[1] = a4;
  if (a2)
  {
    v10 = a1;
    v11 = 0;
    v40 = &a1[a2];
    while (1)
    {
      v12 = *v10;
      v52 = v12;
      v50 = 0u;
      v51 = 0u;
      *__p = 0u;
      mlir::Region::OpIterator::OpIterator(&v55, v12, 0);
      mlir::Region::OpIterator::OpIterator(&v44 + 1, v12, 1);
      *&v44 = v56;
      v13 = v56;
      v43 = v55;
      v14 = v46[0].n128_u64[0];
      while (v13 != v14)
      {
        ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v13);
        v16 = __p[1];
        if (v50 == __p[1])
        {
          v17 = 0;
        }

        else
        {
          v17 = ((v50 - __p[1]) << 6) - 1;
        }

        v18 = *(&v51 + 1);
        v19 = *(&v51 + 1) + v51;
        if (v17 == *(&v51 + 1) + v51)
        {
          std::deque<mlir::Operation *>::__add_back_capacity(__p);
          v18 = *(&v51 + 1);
          v16 = __p[1];
          v19 = v51 + *(&v51 + 1);
        }

        *(*&v16[(v19 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v19 & 0x1FF)) = ValuePtr;
        *(&v51 + 1) = v18 + 1;
        mlir::Region::OpIterator::operator++(&v55);
        v13 = v56;
      }

      v48[0] = v53;
      v48[1] = &v52;
      while (*(&v51 + 1))
      {
        v20 = *(*(__p[1] + ((v51 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v51 & 0x1FF));
        *&v51 = v51 + 1;
        --*(&v51 + 1);
        if (v51 >= 0x400)
        {
          operator delete(*__p[1]);
          __p[1] = __p[1] + 8;
          *&v51 = v51 - 512;
        }

        Parent = *(v20 + 16);
        if (Parent)
        {
          Parent = mlir::Block::getParent(Parent);
        }

        if (Parent == v52 && a5(a6, v20))
        {
          v58.n128_u64[0] = llvm::function_ref<BOOL ()(mlir::Value)>::callback_fn<mlir::moveLoopInvariantCode(llvm::ArrayRef<mlir::Region *>,llvm::function_ref<BOOL ()(mlir::Value,mlir::Region *)>,llvm::function_ref<BOOL ()(mlir::Operation *,mlir::Region *)>,llvm::function_ref<void ()(mlir::Operation *,mlir::Region *)>)::$_0>;
          v58.n128_u64[1] = v48;
          v54 = &v58;
          *&v43 = llvm::function_ref<BOOL ()(mlir::OpOperand &)>::callback_fn<canBeHoisted(mlir::Operation *,llvm::function_ref<BOOL ()(mlir::Value)>)::$_0>;
          *(&v43 + 1) = &v54;
          v59 = v20;
          {
            mlir::moveLoopInvariantCode();
          }

          if (!(*(**(v20 + 48) + 32))(*(v20 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id))
          {
            *&v55 = &v59;
            *(&v55 + 1) = &v43;
            if (mlir::detail::walk<mlir::ForwardIterator>(v59, llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<canBeHoisted(mlir::Operation *,llvm::function_ref<BOOL ()(mlir::OpOperand &)>)::$_0>, &v55, 1))
            {
              a7(a8, v20, v52);
              v22 = *(v20 + 36);
              if (v22)
              {
                v23 = v20 - 16;
              }

              else
              {
                v23 = 0;
              }

              v58.n128_u64[0] = v23;
              v58.n128_u64[1] = v22;
              mlir::ResultRange::use_begin(&v58, &v55);
              v24 = *(v20 + 36);
              if (v24)
              {
                v25 = v20 - 16;
              }

              else
              {
                v25 = 0;
              }

              v58.n128_u64[0] = v25;
              v58.n128_u64[1] = v24;
              mlir::ResultRange::use_end(&v58, v46);
              v45 = v57;
              v26 = v57;
              v43 = v55;
              v44 = v56;
              v27 = v47;
              while (v26 != v27)
              {
                v28 = *(v26 + 16);
                v29 = *(v28 + 16);
                if (v29)
                {
                  v29 = mlir::Block::getParent(v29);
                }

                if (v29 == v52)
                {
                  v30 = __p[1];
                  if (v50 == __p[1])
                  {
                    v31 = 0;
                  }

                  else
                  {
                    v31 = ((v50 - __p[1]) << 6) - 1;
                  }

                  v32 = *(&v51 + 1);
                  v33 = *(&v51 + 1) + v51;
                  if (v31 == *(&v51 + 1) + v51)
                  {
                    std::deque<mlir::Operation *>::__add_back_capacity(__p);
                    v32 = *(&v51 + 1);
                    v30 = __p[1];
                    v33 = v51 + *(&v51 + 1);
                  }

                  *(*&v30[(v33 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v33 & 0x1FF)) = v28;
                  *(&v51 + 1) = v32 + 1;
                }

                mlir::ResultRange::UseIterator::operator++(&v55);
                v26 = v57;
              }

              ++v11;
            }
          }
        }
      }

      v34 = __p[1];
      v35 = v50;
      *(&v51 + 1) = 0;
      v36 = (v50 - __p[1]) >> 3;
      if (v36 >= 3)
      {
        do
        {
          operator delete(*v34);
          v35 = v50;
          v34 = (__p[1] + 8);
          __p[1] = v34;
          v36 = (v50 - v34) >> 3;
        }

        while (v36 > 2);
      }

      if (v36 == 1)
      {
        v37 = 256;
      }

      else
      {
        if (v36 != 2)
        {
          goto LABEL_50;
        }

        v37 = 512;
      }

      *&v51 = v37;
LABEL_50:
      if (v34 != v35)
      {
        do
        {
          v38 = *v34++;
          operator delete(v38);
        }

        while (v34 != v35);
        if (v50 != __p[1])
        {
          *&v50 = v50 + ((__p[1] - v50 + 7) & 0xFFFFFFFFFFFFFFF8);
        }
      }

      if (__p[0])
      {
        operator delete(__p[0]);
      }

      if (++v10 == v40)
      {
        return v11;
      }
    }
  }

  return 0;
}

uint64_t mlir::moveLoopInvariantCode(uint64_t a1, uint64_t a2)
{
  v10[6] = *MEMORY[0x277D85DE8];
  v7[0] = a1;
  v7[1] = a2;
  mlir::LoopLikeOpInterface::getLoopRegions(&v8, v7);
  v6 = v7;
  v4 = v7;
  result = mlir::moveLoopInvariantCode(v8, v9, llvm::function_ref<BOOL ()(mlir::Value,mlir::Region *)>::callback_fn<mlir::moveLoopInvariantCode(mlir::LoopLikeOpInterface)::$_0>, &v6, llvm::function_ref<BOOL ()(mlir::Operation *,mlir::Region *)>::callback_fn<mlir::moveLoopInvariantCode(mlir::LoopLikeOpInterface)::$_1>, &v5, llvm::function_ref<void ()(mlir::Operation *,mlir::Region *)>::callback_fn<mlir::moveLoopInvariantCode(mlir::LoopLikeOpInterface)::$_2>, &v4);
  if (v8 != v10)
  {
    v3 = result;
    free(v8);
    return v3;
  }

  return result;
}

mlir::Operation *mlir::hoistLoopInvariantSubsets(mlir::RewriterBase *a1, mlir::Operation *a2, mlir::Operation *a3)
{
  v102 = *MEMORY[0x277D85DE8];
  v75 = a2;
  v76 = a3;
  mlir::LoopLikeOpInterface::getRegionIterArgs(&v75);
  if (v4 >= 1)
  {
    for (i = 0; i < v6; ++i)
    {
      v7 = v75;
      v8 = v76;
      v9 = *(mlir::LoopLikeOpInterface::getRegionIterArgs(&v75) + 8 * i);
      v83[0] = v7;
      v83[1] = v8;
      RegionIterArgs = mlir::LoopLikeOpInterface::getRegionIterArgs(v83);
      v12 = RegionIterArgs;
      if (v11)
      {
        v13 = 8 * v11;
        while (*v12 != v9)
        {
          v12 += 8;
          v13 -= 8;
          if (!v13)
          {
            v12 = (RegionIterArgs + 8 * v11);
            break;
          }
        }
      }

      v14 = mlir::LoopLikeOpInterface::getRegionIterArgs(v83);
      v90 = v92;
      v91 = 0x300000000;
      v93 = v95;
      v94 = 0x300000000;
      v96 = v98;
      v97 = 0x300000000;
      {
        v19 = v83[0];
        v14 = v83[1];
        v20 = v96;
        if (v96 == v98)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

      *&v99 = v90;
      *(&v99 + 1) = v93;
      *&v100 = v90 + 16 * v91;
      *(&v100 + 1) = v93 + 16 * v94;
      v101 = &v90;
      v84 = (v90 + 16 * v91);
      v85 = v93 + 16 * v94;
      v86 = v84;
      v87 = v85;
      v88 = &v90;
      v81[0] = v99;
      v81[1] = v100;
      v82 = v101;
      v15 = v84;
      v16 = v99;
      if (v99 == v84 || (v17 = v85, v18 = *(&v81[0] + 1), *(&v81[0] + 1) == v85))
      {
LABEL_91:
        v19 = v83[0];
        v14 = v83[1];
        v20 = v96;
        if (v96 == v98)
        {
          goto LABEL_15;
        }

LABEL_14:
        free(v20);
        goto LABEL_15;
      }

      v69 = v12 - v14;
      v70 = i;
      while (1)
      {
        *v80 = *v16;
        *v79 = *v18;
        v22 = v80[0];
        if (v80[0])
        {
          *&v77 = v83;
          *(&v77 + 1) = v80;
          *&v99 = llvm::function_ref<BOOL ()(mlir::OpOperand &)>::callback_fn<hoistSubsetAtIterArg(mlir::RewriterBase &,mlir::LoopLikeOpInterface,mlir::BlockArgument)::$_1>;
          *(&v99 + 1) = &v77;
          v89 = v80[0];
          {
            mlir::moveLoopInvariantCode();
          }

          if ((*(**(v22 + 6) + 32))(*(v22 + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id) || (v84 = &v89, v85 = &v99, !mlir::detail::walk<mlir::ForwardIterator>(v89, llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<canBeHoisted(mlir::Operation *,llvm::function_ref<BOOL ()(mlir::OpOperand &)>)::$_0>, &v84, 1)))
          {
            v80[0] = 0;
            v80[1] = 0;
          }
        }

        v23 = v79[0];
        if (!v79[0])
        {
          goto LABEL_21;
        }

        *&v77 = v83;
        *(&v77 + 1) = v79;
        *&v99 = llvm::function_ref<BOOL ()(mlir::OpOperand &)>::callback_fn<hoistSubsetAtIterArg(mlir::RewriterBase &,mlir::LoopLikeOpInterface,mlir::BlockArgument)::$_2>;
        *(&v99 + 1) = &v77;
        v89 = v79[0];
        {
          mlir::moveLoopInvariantCode();
        }

        if ((*(**(v23 + 6) + 32))(*(v23 + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id))
        {
          goto LABEL_21;
        }

        v84 = &v89;
        v85 = &v99;
        if (!mlir::detail::walk<mlir::ForwardIterator>(v89, llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<canBeHoisted(mlir::Operation *,llvm::function_ref<BOOL ()(mlir::OpOperand &)>)::$_0>, &v84, 1) || !v80[0] || !v79[0])
        {
          goto LABEL_21;
        }

        *&v99 = &unk_286866E50;
        *(&v99 + 1) = v79;
        *(&v100 + 1) = &v99;
        v84 = (v80[0] - 16);
        mlir::LoopLikeOpInterface::replaceWithAdditionalYields(v83, a1, &v84, 1, 1, &v99);
        v24 = v78;
        if ((v78 & 1) == 0)
        {
          v14 = v83[1];
          v68 = v83[0];
          v32 = *(&v100 + 1);
          if (*(&v100 + 1) == &v99)
          {
            goto LABEL_19;
          }

          goto LABEL_89;
        }

        *v83 = v77;
        v25 = *(mlir::LoopLikeOpInterface::getRegionIterArgs(v83) + v69);
        mlir::LoopLikeOpInterface::getLoopResults(&v84, v83);
        v73 = v14;
        v72 = v24;
        if (v86 != 1)
        {
LABEL_46:
          NextResultAtOffset = 0;
          goto LABEL_51;
        }

        v26 = mlir::LoopLikeOpInterface::getRegionIterArgs(v83);
        v28 = 8 * v27;
        if (v27)
        {
          v29 = 8 * v27;
          v30 = v26;
          while (*v30 != v25)
          {
            ++v30;
            v29 -= 8;
            if (!v29)
            {
              v30 = (v26 + v28);
              break;
            }
          }

          v31 = v30 - v26;
          if (v31 == v28)
          {
            goto LABEL_46;
          }
        }

        else
        {
          v31 = 0;
          if (!v28)
          {
            goto LABEL_46;
          }
        }

        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v84, v31 >> 3);
LABEL_51:
        mlir::LoopLikeOpInterface::getLoopResults(&v84, v83);
        v71 = mlir::detail::OpResultImpl::getNextResultAtOffset(v84, (v85 - 1));
        mlir::RewriterBase::moveOpBefore(a1, v80[0], v83[0]);
        mlir::RewriterBase::moveOpAfter(a1, v79[0], v83[0]);
        UpdatedDestination = mlir::SubsetInsertionOpInterface::getUpdatedDestination(v79);
        DestinationOperand = mlir::SubsetInsertionOpInterface::getDestinationOperand(v79);
        v35 = *UpdatedDestination;
        if (*UpdatedDestination)
        {
          v36 = *(DestinationOperand + 24);
          do
          {
            v37 = *v35;
            v38 = v35[2];
            (*(*a1 + 40))(a1, v38);
            v39 = v35[1];
            if (v39)
            {
              v40 = *v35;
              *v39 = *v35;
              if (v40)
              {
                v40[1] = v39;
              }
            }

            v35[3] = v36;
            v35[1] = v36;
            v41 = *v36;
            *v35 = *v36;
            if (v41)
            {
              *(v41 + 8) = v35;
            }

            *v36 = v35;
            (*(*a1 + 48))(a1, v38);
            v35 = v37;
          }

          while (v37);
        }

        SourceOperand = mlir::SubsetExtractionOpInterface::getSourceOperand(v80);
        v43 = mlir::LoopLikeOpInterface::getRegionIterArgs(v83);
        if (v44)
        {
          v45 = 8 * v44;
          v46 = v43;
          while (*v46 != v25)
          {
            ++v46;
            v45 -= 8;
            if (!v45)
            {
              v46 = (v43 + 8 * v44);
              break;
            }
          }
        }

        else
        {
          v46 = v43;
        }

        v47 = *(mlir::LoopLikeOpInterface::getInitsMutable(v83) + 4 * (v46 - v43) + 24);
        v48 = SourceOperand[1];
        if (v48)
        {
          v49 = *SourceOperand;
          *v48 = *SourceOperand;
          if (v49)
          {
            *(v49 + 8) = v48;
          }
        }

        SourceOperand[3] = v47;
        SourceOperand[1] = v47;
        v50 = *v47;
        *SourceOperand = *v47;
        i = v70;
        if (v50)
        {
          *(v50 + 8) = SourceOperand;
        }

        *v47 = SourceOperand;
        v51 = mlir::SubsetInsertionOpInterface::getUpdatedDestination(v79);
        v52 = *NextResultAtOffset;
        if (*NextResultAtOffset)
        {
          v53 = v51;
          do
          {
            v54 = *v52;
            v55 = v52[2];
            (*(*a1 + 40))(a1, v55);
            v56 = v52[1];
            if (v56)
            {
              v57 = *v52;
              *v56 = *v52;
              if (v57)
              {
                v57[1] = v56;
              }
            }

            v52[3] = v53;
            v52[1] = v53;
            v58 = *v53;
            *v52 = *v53;
            if (v58)
            {
              *(v58 + 8) = v52;
            }

            *v53 = v52;
            (*(*a1 + 48))(a1, v55);
            v52 = v54;
          }

          while (v54);
        }

        v59 = mlir::SubsetInsertionOpInterface::getSourceOperand(v79);
        v60 = v59[1];
        if (v60)
        {
          v61 = *v59;
          *v60 = *v59;
          if (v61)
          {
            *(v61 + 8) = v60;
          }
        }

        v59[3] = v71;
        v59[1] = v71;
        v62 = *v71;
        *v59 = *v71;
        v14 = v73;
        v24 = v72;
        if (v62)
        {
          *(v62 + 8) = v59;
        }

        *v71 = v59;
        v63 = mlir::SubsetInsertionOpInterface::getDestinationOperand(v79);
        v64 = v63[1];
        if (v64)
        {
          v65 = *v63;
          *v64 = *v63;
          if (v65)
          {
            *(v65 + 8) = v64;
          }
        }

        v63[3] = NextResultAtOffset;
        v63[1] = NextResultAtOffset;
        v66 = *NextResultAtOffset;
        *v63 = *NextResultAtOffset;
        if (v66)
        {
          v66[1] = v63;
        }

        *NextResultAtOffset = v63;
        v32 = *(&v100 + 1);
        if (*(&v100 + 1) == &v99)
        {
LABEL_19:
          (*(*v32 + 32))(v32);
          goto LABEL_20;
        }

LABEL_89:
        if (v32)
        {
          (*(*v32 + 40))(v32);
        }

LABEL_20:
        if (!v24)
        {
          break;
        }

LABEL_21:
        *&v81[0] = v16 + 1;
        *(&v81[0] + 1) = v18 + 1;
        v18 = *(&v81[0] + 1);
        v16 = *&v81[0];
        if (*&v81[0] == v15 || *(&v81[0] + 1) == v17)
        {
          goto LABEL_91;
        }
      }

      v19 = v68;
      v20 = v96;
      if (v96 != v98)
      {
        goto LABEL_14;
      }

LABEL_15:
      if (v93 != v95)
      {
        free(v93);
      }

      if (v90 != v92)
      {
        free(v90);
      }

      v75 = v19;
      v76 = v14;
      mlir::LoopLikeOpInterface::getRegionIterArgs(&v75);
    }
  }

  return v75;
}

BOOL anonymous namespace::MatchingSubsets::populateSubsetOpsAtIterArg(uint64_t *a1, uint64_t a2, uint64_t a3, char **a4)
{
  NextResultAtOffset = a4;
  v63[0] = a2;
  v63[1] = a3;
  while (1)
  {
    v6 = *NextResultAtOffset;
    if (!*NextResultAtOffset)
    {
      return 0;
    }

    if (!*v6)
    {
      break;
    }

LABEL_8:
    NextResultAtOffset = 0;
    do
    {
      v8 = *(v6 + 2);
      if (mlir::OpInterface<mlir::LoopLikeOpInterface,mlir::detail::LoopLikeOpInterfaceInterfaceTraits>::getInterfaceFor(v8))
      {
        if (v8)
        {
          InterfaceFor = mlir::OpInterface<mlir::LoopLikeOpInterface,mlir::detail::LoopLikeOpInterfaceInterfaceTraits>::getInterfaceFor(v8);
          v61 = v8;
          v62 = InterfaceFor;
          InitsMutable = mlir::LoopLikeOpInterface::getInitsMutable(&v61);
          v12 = 0;
          do
          {
            v13 = v12 - 32;
            if (-32 * v11 == v12)
            {
              break;
            }

            v12 -= 32;
            v14 = InitsMutable == v6;
            InitsMutable += 32;
          }

          while (!v14);
          {
            mlir::LoopLikeOpInterface::getLoopResults(&v64, &v61);
            if (v66 == 1)
            {
              v15 = mlir::LoopLikeOpInterface::getInitsMutable(&v61);
              v17 = 0;
              do
              {
                v18 = v17 - 32;
                if (-32 * v16 == v17)
                {
                  break;
                }

                v17 -= 32;
                v14 = v15 == v6;
                v15 += 32;
              }

              while (!v14);
              if (v18 == 32 * ~v16)
              {
                NextResultAtOffset = 0;
              }

              else
              {
                NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v64, (-32 - v18) >> 5);
              }

              goto LABEL_9;
            }

            NextResultAtOffset = 0;
            v28 = 5;
LABEL_74:
            if (v28 == 5)
            {
              goto LABEL_9;
            }

            goto LABEL_75;
          }

LABEL_70:
          v28 = 1;
          goto LABEL_75;
        }

        v61 = 0;
        v62 = 0;
      }

      else
      {
        v61 = 0;
        v62 = 0;
      }

      v19 = *(v6 + 2);
      if (!mlir::OpInterface<mlir::SubsetOpInterface,mlir::detail::SubsetOpInterfaceInterfaceTraits>::getInterfaceFor(v19) || !v19)
      {
        return 0;
      }

      v20 = mlir::OpInterface<mlir::SubsetOpInterface,mlir::detail::SubsetOpInterfaceInterfaceTraits>::getInterfaceFor(v19);
      v21 = *(a1 + 34);
      if (v21 >= *(a1 + 35))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = (a1[16] + 16 * v21);
      *v22 = v19;
      v22[1] = v20;
      ++*(a1 + 34);
      if (mlir::OpInterface<mlir::SubsetExtractionOpInterface,mlir::detail::SubsetExtractionOpInterfaceInterfaceTraits>::getInterfaceFor(v19))
      {
        v23 = mlir::OpInterface<mlir::SubsetExtractionOpInterface,mlir::detail::SubsetExtractionOpInterfaceInterfaceTraits>::getInterfaceFor(v19);
        v29 = *(a1 + 18);
        if (v29)
        {
          v30 = 0;
          v31 = a1[8];
          v32 = 16 * v29;
          while (1)
          {
            v33 = *(v31 + v30);
            if (v33)
            {
              v34 = mlir::OpInterface<mlir::SubsetOpInterface,mlir::detail::SubsetOpInterfaceInterfaceTraits>::getInterfaceFor(*(v31 + v30));
              v64 = v33;
              v65 = v34;
              {
                break;
              }
            }

            v30 += 16;
            if (v32 == v30)
            {
              goto LABEL_50;
            }
          }

          v35 = (*a1 + v30);
          *v35 = v19;
          v35[1] = v23;
          if (!mlir::OpInterface<mlir::SubsetInsertionOpInterface,mlir::detail::SubsetInsertionOpInterfaceInterfaceTraits>::getInterfaceFor(v19))
          {
LABEL_38:
            v25 = *(v6 + 2);
            v26 = mlir::OpInterface<mlir::SubsetInsertionOpInterface,mlir::detail::SubsetInsertionOpInterfaceInterfaceTraits>::getInterfaceFor(v25);
            if (!v26)
            {
              goto LABEL_64;
            }

            goto LABEL_39;
          }
        }

        else
        {
LABEL_50:
          v36 = *(a1 + 2);
          if (v36 >= *(a1 + 3))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v37 = (*a1 + 16 * v36);
          *v37 = v19;
          v37[1] = v23;
          ++*(a1 + 2);
          v38 = *(a1 + 18);
          if (v38 >= *(a1 + 19))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v39 = (a1[8] + 16 * v38);
          *v39 = 0;
          v39[1] = 0;
          ++*(a1 + 18);
          if (!mlir::OpInterface<mlir::SubsetInsertionOpInterface,mlir::detail::SubsetInsertionOpInterfaceInterfaceTraits>::getInterfaceFor(v19))
          {
            goto LABEL_38;
          }
        }
      }

      else if (!mlir::OpInterface<mlir::SubsetInsertionOpInterface,mlir::detail::SubsetInsertionOpInterfaceInterfaceTraits>::getInterfaceFor(v19))
      {
        goto LABEL_38;
      }

      v24 = mlir::OpInterface<mlir::SubsetInsertionOpInterface,mlir::detail::SubsetInsertionOpInterfaceInterfaceTraits>::getInterfaceFor(v19);
      v40 = *(a1 + 2);
      if (v40)
      {
        v41 = 0;
        v42 = *a1;
        v43 = 16 * v40;
        while (1)
        {
          v44 = *(v42 + v41);
          if (v44)
          {
            v45 = mlir::OpInterface<mlir::SubsetOpInterface,mlir::detail::SubsetOpInterfaceInterfaceTraits>::getInterfaceFor(*(v42 + v41));
            v64 = v44;
            v65 = v45;
            {
              break;
            }
          }

          v41 += 16;
          if (v43 == v41)
          {
            v47 = *(a1 + 2);
            if (v47 < *(a1 + 3))
            {
              goto LABEL_62;
            }

LABEL_72:
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }
        }

        v46 = (a1[8] + v41);
        *v46 = v19;
        v46[1] = v24;
        v25 = *(v6 + 2);
        v26 = mlir::OpInterface<mlir::SubsetInsertionOpInterface,mlir::detail::SubsetInsertionOpInterfaceInterfaceTraits>::getInterfaceFor(v25);
        if (!v26)
        {
LABEL_64:
          v64 = 0;
          v65 = v26;
LABEL_41:
          v28 = 0;
          goto LABEL_75;
        }
      }

      else
      {
        v47 = 0;
        if (!*(a1 + 3))
        {
          goto LABEL_72;
        }

LABEL_62:
        v48 = (*a1 + 16 * v47);
        *v48 = 0;
        v48[1] = 0;
        ++*(a1 + 2);
        v49 = *(a1 + 18);
        if (v49 >= *(a1 + 19))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v50 = (a1[8] + 16 * v49);
        *v50 = v19;
        v50[1] = v24;
        ++*(a1 + 18);
        v25 = *(v6 + 2);
        v26 = mlir::OpInterface<mlir::SubsetInsertionOpInterface,mlir::detail::SubsetInsertionOpInterfaceInterfaceTraits>::getInterfaceFor(v25);
        if (!v26)
        {
          goto LABEL_64;
        }
      }

LABEL_39:
      if (!v25)
      {
        v64 = 0;
        v65 = 0;
        goto LABEL_41;
      }

      v27 = mlir::OpInterface<mlir::SubsetInsertionOpInterface,mlir::detail::SubsetInsertionOpInterfaceInterfaceTraits>::getInterfaceFor(v25);
      v64 = v25;
      v65 = v27;
      if (!mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(*(v6 + 2)))
      {
        goto LABEL_70;
      }

      DestinationOperand = mlir::SubsetInsertionOpInterface::getDestinationOperand(&v64);
      v28 = 1;
      if (v6 != DestinationOperand || NextResultAtOffset)
      {
        goto LABEL_74;
      }

      NextResultAtOffset = mlir::SubsetInsertionOpInterface::getUpdatedDestination(&v64);
      v28 = 0;
LABEL_75:
      if (v28)
      {
        return 0;
      }

LABEL_9:
      v6 = *v6;
    }

    while (v6);
    if (!NextResultAtOffset)
    {
      return 0;
    }
  }

  v7 = *(v6 + 2);
  {
    mlir::moveLoopInvariantCode();
  }

  if (((*(**(v7 + 48) + 32))(*(v7 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
  {
    v6 = *NextResultAtOffset;
    if (!*NextResultAtOffset)
    {
      return 0;
    }

    goto LABEL_8;
  }

  RegionIterArgs = mlir::LoopLikeOpInterface::getRegionIterArgs(v63);
  v55 = 8 * v54;
  if (v54)
  {
    v56 = 8 * v54;
    v57 = RegionIterArgs;
    while (*v57 != a4)
    {
      ++v57;
      v56 -= 8;
      if (!v56)
      {
        v57 = (RegionIterArgs + v55);
        break;
      }
    }
  }

  else
  {
    v57 = RegionIterArgs;
  }

  v58 = v57 - RegionIterArgs;
  if ((v57 - RegionIterArgs) == v55)
  {
    v59 = 0;
  }

  else
  {
    mlir::LoopLikeOpInterface::getYieldedValuesMutable(&v64, v63);
    if (v66)
    {
      v59 = v64 + 4 * v58;
    }

    else
    {
      v59 = 0;
    }
  }

  return v59 == v6;
}

uint64_t mlir::OpInterface<mlir::SubsetOpInterface,mlir::detail::SubsetOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
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
      mlir::OpInterface<mlir::SubsetOpInterface,mlir::detail::SubsetOpInterfaceInterfaceTraits>::getInterfaceFor();
      ReferencedDialect = v24;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::SubsetOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v5 = mlir::detail::TypeIDResolver<mlir::SubsetOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::OpInterface<mlir::SubsetOpInterface,mlir::detail::SubsetOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v21;
    a1 = v22;
    v5 = mlir::detail::TypeIDResolver<mlir::SubsetOpInterface,void>::resolveTypeID(void)::id;
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
    v12 = v11 + 2;
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
    mlir::OpInterface<mlir::SubsetOpInterface,mlir::detail::SubsetOpInterfaceInterfaceTraits>::getInterfaceFor();
    v18 = v23;
  }

  v19 = v4[29];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

const char *llvm::getTypeName<mlir::SubsetOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::SubsetOpInterface]";
  v6 = 73;
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

uint64_t mlir::OpInterface<mlir::SubsetExtractionOpInterface,mlir::detail::SubsetExtractionOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
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
      mlir::OpInterface<mlir::SubsetExtractionOpInterface,mlir::detail::SubsetExtractionOpInterfaceInterfaceTraits>::getInterfaceFor();
      ReferencedDialect = v24;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::SubsetExtractionOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v5 = mlir::detail::TypeIDResolver<mlir::SubsetExtractionOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::OpInterface<mlir::SubsetExtractionOpInterface,mlir::detail::SubsetExtractionOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v21;
    a1 = v22;
    v5 = mlir::detail::TypeIDResolver<mlir::SubsetExtractionOpInterface,void>::resolveTypeID(void)::id;
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
    v12 = v11 + 2;
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
    mlir::OpInterface<mlir::SubsetExtractionOpInterface,mlir::detail::SubsetExtractionOpInterfaceInterfaceTraits>::getInterfaceFor();
    v18 = v23;
  }

  v19 = v4[31];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

const char *llvm::getTypeName<mlir::SubsetExtractionOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::SubsetExtractionOpInterface]";
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

uint64_t mlir::OpInterface<mlir::SubsetInsertionOpInterface,mlir::detail::SubsetInsertionOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
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
      mlir::OpInterface<mlir::SubsetInsertionOpInterface,mlir::detail::SubsetInsertionOpInterfaceInterfaceTraits>::getInterfaceFor();
      ReferencedDialect = v24;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::SubsetInsertionOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v5 = mlir::detail::TypeIDResolver<mlir::SubsetInsertionOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::OpInterface<mlir::SubsetInsertionOpInterface,mlir::detail::SubsetInsertionOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v21;
    a1 = v22;
    v5 = mlir::detail::TypeIDResolver<mlir::SubsetInsertionOpInterface,void>::resolveTypeID(void)::id;
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
    v12 = v11 + 2;
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
    mlir::OpInterface<mlir::SubsetInsertionOpInterface,mlir::detail::SubsetInsertionOpInterfaceInterfaceTraits>::getInterfaceFor();
    v18 = v23;
  }

  v19 = v4[33];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

const char *llvm::getTypeName<mlir::SubsetInsertionOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::SubsetInsertionOpInterface]";
  v6 = 82;
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

uint64_t mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
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
      mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor();
      ReferencedDialect = v24;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::DestinationStyleOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v5 = mlir::detail::TypeIDResolver<mlir::DestinationStyleOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v21;
    a1 = v22;
    v5 = mlir::detail::TypeIDResolver<mlir::DestinationStyleOpInterface,void>::resolveTypeID(void)::id;
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
    v12 = v11 + 2;
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
    mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor();
    v18 = v23;
  }

  v19 = v4[35];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

const char *llvm::getTypeName<mlir::DestinationStyleOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DestinationStyleOpInterface]";
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

uint64_t llvm::filter_iterator_base<llvm::detail::zip_shortest<mlir::SubsetExtractionOpInterface *,mlir::SubsetInsertionOpInterface *>,anonymous namespace::MatchingSubsets::getHoistableSubsetOps(void)::{lambda(llvm::detail::zip_shortest<mlir::SubsetExtractionOpInterface *,mlir::SubsetInsertionOpInterface *>)#1},std::bidirectional_iterator_tag>::findNextValid(uint64_t result)
{
  v1 = *result;
  if (*result != *(result + 16))
  {
    v2 = result;
    v3 = *(result + 8);
    while (1)
    {
      if (v3 == v2[3])
      {
        return result;
      }

      v4 = v2[4];
      v5 = *v1;
      if (!*v1 || !*v3)
      {
        goto LABEL_8;
      }

      v6 = *(v5 - 8);
      result = mlir::SubsetInsertionOpInterface::getSourceOperand(v3);
      if ((*(*(result + 24) + 8) ^ v6) <= 7)
      {
        break;
      }

LABEL_35:
      v1 = (*v2 + 16);
      v3 = (v2[1] + 16);
      *v2 = v1;
      v2[1] = v3;
      if (v1 == v2[2])
      {
        return result;
      }
    }

    v5 = *v1;
LABEL_8:
    v7 = *(v4 + 136);
    if (!v7)
    {
      return result;
    }

    v8 = *v3;
    v9 = *(v3 + 1);
    v10 = *(v4 + 128);
    if (v5)
    {
      v11 = v1[1];
      v12 = 16 * v7;
      if (v8)
      {
        while (1)
        {
          v17 = *v10;
          if (v5 != v17 && v8 != v17)
          {
            if (!result)
            {
              break;
            }

            if ((result & 1) == 0)
            {
              break;
            }
          }

          ++v10;
          v12 -= 16;
          if (!v12)
          {
            return result;
          }
        }
      }

      else
      {
        while (1)
        {
          v17 = *v10;
          if (v17 && v5 != v17)
          {
            if (!result)
            {
              break;
            }
          }

          ++v10;
          v12 -= 16;
          if (!v12)
          {
            return result;
          }
        }
      }
    }

    else
    {
      if (!v8)
      {
        return result;
      }

      v15 = 16 * v7;
      while (1)
      {
        v17 = *v10;
        if (v17 && v8 != v17)
        {
          if (!result)
          {
            break;
          }
        }

        ++v10;
        v15 -= 16;
        if (!v15)
        {
          return result;
        }
      }
    }

    goto LABEL_35;
  }

  return result;
}

uint64_t std::__function::__func<hoistSubsetAtIterArg(mlir::RewriterBase &,mlir::LoopLikeOpInterface,mlir::BlockArgument)::$_0,std::allocator<hoistSubsetAtIterArg(mlir::RewriterBase &,mlir::LoopLikeOpInterface,mlir::BlockArgument)::$_0>,llvm::SmallVector<mlir::Value,6u> ()(mlir::OpBuilder &,mlir::Location,llvm::ArrayRef<mlir::BlockArgument>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286866E50;
  a2[1] = v2;
  return result;
}

double std::__function::__func<hoistSubsetAtIterArg(mlir::RewriterBase &,mlir::LoopLikeOpInterface,mlir::BlockArgument)::$_0,std::allocator<hoistSubsetAtIterArg(mlir::RewriterBase &,mlir::LoopLikeOpInterface,mlir::BlockArgument)::$_0>,llvm::SmallVector<mlir::Value,6u> ()(mlir::OpBuilder &,mlir::Location,llvm::ArrayRef<mlir::BlockArgument>)>::operator()@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[2] = *(mlir::SubsetInsertionOpInterface::getSourceOperand(*(a1 + 8)) + 24);
  *a2 = a2 + 2;
  *&result = 0x600000001;
  a2[1] = 0x600000001;
  return result;
}

uint64_t std::__function::__func<hoistSubsetAtIterArg(mlir::RewriterBase &,mlir::LoopLikeOpInterface,mlir::BlockArgument)::$_0,std::allocator<hoistSubsetAtIterArg(mlir::RewriterBase &,mlir::LoopLikeOpInterface,mlir::BlockArgument)::$_0>,llvm::SmallVector<mlir::Value,6u> ()(mlir::OpBuilder &,mlir::Location,llvm::ArrayRef<mlir::BlockArgument>)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZL20hoistSubsetAtIterArgRN4mlir12RewriterBaseENS_19LoopLikeOpInterfaceENS_13BlockArgumentEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZL20hoistSubsetAtIterArgRN4mlir12RewriterBaseENS_19LoopLikeOpInterfaceENS_13BlockArgumentEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZL20hoistSubsetAtIterArgRN4mlir12RewriterBaseENS_19LoopLikeOpInterfaceENS_13BlockArgumentEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZL20hoistSubsetAtIterArgRN4mlir12RewriterBaseENS_19LoopLikeOpInterfaceENS_13BlockArgumentEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t llvm::function_ref<BOOL ()(mlir::Operation *,mlir::Region *)>::callback_fn<mlir::moveLoopInvariantCode(mlir::LoopLikeOpInterface)::$_1>(int a1, mlir *this)
{
  result = mlir::isMemoryEffectFree(this, this);
  if (result)
  {

    return mlir::isSpeculatable(this, v4);
  }

  return result;
}

void mlir::OneToNTypeConverter::materializeTargetConversion(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 544);
  if (!v5)
  {
LABEL_6:
    *a4 = 0;
    *(a4 + 64) = 0;
    return;
  }

  v8 = 32 * v5;
  v9 = *(a1 + 536) - 8;
  while (1)
  {
    v17 = a2;
    v18 = a3;
    v10 = *(v9 + v8);
    if (!v10)
    {
      std::__throw_bad_function_call[abi:nn200100]();
    }

    (*(*v10 + 48))(&__src);
    if (v16 == 1)
    {
      break;
    }

    v8 -= 32;
    if (!v8)
    {
      goto LABEL_6;
    }
  }

  *a4 = a4 + 16;
  *(a4 + 8) = 0x600000000;
  if (&__src == a4 || (v11 = v14) == 0)
  {
    *(a4 + 64) = 1;
LABEL_14:
    if (__src != &v15)
    {
      free(__src);
    }

    return;
  }

  if (v14 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  memcpy((a4 + 16), __src, 8 * v14);
  *(a4 + 8) = v11;
  v12 = v16;
  *(a4 + 64) = 1;
  if (v12)
  {
    goto LABEL_14;
  }
}

unint64_t mlir::OneToNTypeMapping::getConvertedTypes(mlir::OneToNTypeMapping *this, unsigned int a2)
{
  v7[2] = *MEMORY[0x277D85DE8];
  mlir::TypeRange::TypeRange(&v6, *(this + 18), *(this + 38));
  v4 = *this + 32 * a2;
  if (*(v4 + 24))
  {
    result = v6;
    if (*v4)
    {
      return mlir::TypeRange::offset_base(v6, *v4);
    }
  }

  else
  {
    mlir::TypeRange::TypeRange(v7, 0, 0);
    return v7[0];
  }

  return result;
}

unint64_t mlir::OneToNTypeMapping::getConvertedValues(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = a2;
  v7[1] = a3;
  v4 = *a1 + 32 * a4;
  if (*(v4 + 24))
  {
    v5 = a2;
    if (*v4)
    {
      return mlir::ValueRange::offset_base(v7, *v4);
    }
  }

  else
  {
    mlir::ValueRange::ValueRange(v8, 0, 0);
    return v8[0];
  }

  return v5;
}

void *mlir::OneToNTypeMapping::convertLocation(void *result, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v14 = a2;
  v4 = *result + 32 * a3;
  if (*(v4 + 24))
  {
    v6 = *(v4 + 8);
    result = mlir::Value::getLoc(&v14);
    v7 = *(a4 + 8);
    if (v6 + v7 > *(a4 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v6)
    {
      v8 = *a4 + 8 * v7;
      v9 = v8;
      v10 = v6;
      if (v6 < 4)
      {
        goto LABEL_15;
      }

      v9 = (v8 + 8 * (v6 & 0xFFFFFFFFFFFFFFFCLL));
      v10 = v6 & 3;
      v11 = vdupq_n_s64(result);
      v12 = (v8 + 16);
      v13 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v12[-1] = v11;
        *v12 = v11;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v6 != (v6 & 0xFFFFFFFFFFFFFFFCLL))
      {
LABEL_15:
        do
        {
          *v9++ = result;
          --v10;
        }

        while (v10);
      }

      LODWORD(v7) = *(a4 + 8);
    }

    *(a4 + 8) = v7 + v6;
  }

  return result;
}

unint64_t mlir::OneToNTypeMapping::convertLocations(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v20 = a2;
  v21 = 0;
  if (a3)
  {
    v6 = result;
    v7 = 0;
    for (i = 0; i != a3; v21 = i)
    {
      result = mlir::ValueRange::dereference_iterator(&v20, i);
      v18 = result;
      v10 = *v6 + 32 * v7;
      if (*(v10 + 24))
      {
        v11 = *(v10 + 8);
        result = mlir::Value::getLoc(&v18);
        v9 = *(a4 + 8);
        if (v11 + v9 > *(a4 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v11)
        {
          v12 = *a4 + 8 * v9;
          v13 = v12;
          v14 = v11;
          if (v11 < 4)
          {
            goto LABEL_18;
          }

          v13 = (v12 + 8 * (v11 & 0xFFFFFFFFFFFFFFFCLL));
          v14 = v11 & 3;
          v15 = vdupq_n_s64(result);
          v16 = (v12 + 16);
          v17 = v11 & 0xFFFFFFFFFFFFFFFCLL;
          do
          {
            v16[-1] = v15;
            *v16 = v15;
            v16 += 2;
            v17 -= 4;
          }

          while (v17);
          if (v11 != (v11 & 0xFFFFFFFFFFFFFFFCLL))
          {
LABEL_18:
            do
            {
              *v13++ = result;
              --v14;
            }

            while (v14);
          }

          LODWORD(v9) = *(a4 + 8);
        }

        *(a4 + 8) = v9 + v11;
      }

      v7 = v19 + 1;
      i = v21 + 1;
      ++v19;
    }
  }

  return result;
}

uint64_t mlir::OneToNTypeMapping::hasNonIdentityConversion(mlir::OneToNTypeMapping *this)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v1 = *(this + 50);
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  v4 = *(this + 24);
  v5 = 32 * v1;
  while (1)
  {
    mlir::TypeRange::TypeRange(&v11, *(this + 18), *(this + 38));
    v6 = *this + v3;
    if (*(v6 + 24))
    {
      v7 = *(v6 + 8);
      v8 = v11;
      if (*v6)
      {
        v8 = mlir::TypeRange::offset_base(v11, *v6);
      }
    }

    else
    {
      mlir::TypeRange::TypeRange(v12, 0, 0);
      v8 = v12[0];
      v7 = v12[1];
    }

    if (v7 != 1)
    {
      break;
    }

    v9 = *v4;
    if (mlir::TypeRange::dereference_iterator(v8, 0) != v9)
    {
      break;
    }

    ++v4;
    v3 += 32;
    if (v5 == v3)
    {
      return 0;
    }
  }

  return 1;
}

void mlir::OneToNPatternRewriter::replaceOp(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = (a1 + 24);
  v27 = *(a1 + 24);
  v9 = *(a2 + 16);
  v10 = *(llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(a2) + 8);
  *v8 = v9;
  v8[1] = v10;
  v29 = v31;
  v30 = 0x600000000;
  mlir::TypeRange::TypeRange(&v35, *(a5 + 192), *(a5 + 200));
  v11 = v35;
  v12 = v36;
  if (v36 > 6)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v32 = a3;
  v33 = 0;
  if (v36)
  {
    v13 = 0;
    while (1)
    {
      v28 = mlir::TypeRange::dereference_iterator(v11, v13);
      mlir::TypeRange::TypeRange(v34, *(a5 + 144), *(a5 + 152));
      v14 = *a5 + 32 * v13;
      if (*(v14 + 24))
      {
        v15 = *(v14 + 8);
        v16 = v34[0];
        if (*v14)
        {
          v16 = mlir::TypeRange::offset_base(v34[0], *v14);
        }

        if (v15 != 1)
        {
LABEL_13:
          mlir::TypeRange::TypeRange(v34, &v28, 1uLL);
          v20 = v32;
          v21 = v33;
          v35 = v32;
          v36 = v33;
          if (v33)
          {
            v20 = mlir::ValueRange::offset_base(&v35, v33);
            v22 = v36;
          }

          else
          {
            v22 = 0;
          }

          v35 = buildUnrealizedCast(v8 - 2, v34[0], v34[1], v20, v21 + v15 - v22, 1);
          v36 = v23;
          v19 = &v35;
          v18 = 0;
          goto LABEL_17;
        }
      }

      else
      {
        mlir::TypeRange::TypeRange(&v35, 0, 0);
        v16 = v35;
        v15 = v36;
        if (v36 != 1)
        {
          goto LABEL_13;
        }
      }

      v17 = v28;
      if (mlir::TypeRange::dereference_iterator(v16, 0) != v17)
      {
        goto LABEL_13;
      }

      v18 = v33;
      v19 = &v32;
LABEL_17:
      v24 = mlir::ValueRange::dereference_iterator(v19, v18);
      if (v30 >= HIDWORD(v30))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v29 + v30) = v24;
      v25 = v30 + 1;
      LODWORD(v30) = v30 + 1;
      v33 += v15;
      if (v12 == ++v13)
      {
        goto LABEL_22;
      }
    }
  }

  v25 = v30;
LABEL_22:
  mlir::ValueRange::ValueRange(&v35, v29, v25);
  (**a1)(a1, a2, v35, v36);
  if (v29 != v31)
  {
    free(v29);
  }

  if (v27)
  {
    *v8 = v27;
  }

  else
  {
    *v8 = 0;
    v8[1] = 0;
  }
}

void mlir::OneToNPatternRewriter::applySignatureConversion(mlir::OneToNPatternRewriter *this, mlir::Block *a2, mlir::OneToNTypeMapping *a3)
{
  v8[10] = *MEMORY[0x277D85DE8];
  v5 = this + 8;
  v7[0] = v8;
  v7[1] = 0x600000000;
  mlir::ValueRange::ValueRange(v6, *(a2 + 6), (*(a2 + 7) - *(a2 + 6)) >> 3);
  mlir::OneToNTypeMapping::convertLocations(a3, v6[0], v6[1], v7);
  mlir::TypeRange::TypeRange(v6, *(a3 + 18), *(a3 + 38));
  mlir::OpBuilder::createBlock(v5, a2);
}

unint64_t buildUnrealizedCast(mlir::UnknownLoc **a1, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v27[2] = *MEMORY[0x277D85DE8];
  v26[0] = a2;
  v26[1] = a3;
  v25[0] = a4;
  v25[1] = a5;
  if (a3)
  {
    UnknownLoc = mlir::Builder::getUnknownLoc(a1, a2);
    if (a5)
    {
      v22 = mlir::ValueRange::dereference_iterator(v25, 0);
      UnknownLoc = mlir::Value::getLoc(&v22);
    }

    v10 = mlir::OpBuilder::create<mlir::UnrealizedConversionCastOp,mlir::TypeRange &,mlir::ValueRange &>(a1, UnknownLoc, v26, v25);
    v11 = *a1;
    CastKindName = getCastKindName(a6);
    v24 = 261;
    v22 = CastKindName;
    v23 = v13;
    v15 = mlir::StringAttr::get(v11, &v22, v14);
    Context = mlir::Attribute::getContext((v10 + 24));
    v24 = 261;
    v22 = "__one-to-n-type-conversion_cast-kind__";
    v23 = 38;
    v18 = mlir::StringAttr::get(Context, &v22, v17);
    mlir::Operation::setAttr(v10, v18, v15);
    v19 = *(v10 + 36);
    if (v19)
    {
      v20 = v10 - 16;
    }

    else
    {
      v20 = 0;
    }

    mlir::ValueRange::ValueRange(v27, v20, v19);
  }

  else
  {
    mlir::ValueRange::ValueRange(v27, 0, 0);
  }

  return v27[0];
}

uint64_t mlir::OneToNConversionPattern::matchAndRewrite(mlir::OneToNConversionPattern *this, mlir::Operation *a2, mlir::UnknownLoc **a3)
{
  v72 = *MEMORY[0x277D85DE8];
  v6 = *(this + 12);
  v7 = *(a2 + 9);
  v8 = a2 - 16;
  if (!v7)
  {
    v8 = 0;
  }

  v62 = v8;
  v63 = v7;
  mlir::ResultRange::getTypes(&v62, &v40);
  NextResultAtOffset = v40;
  v10 = v41;
  v11 = v42;
  if (v41)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v40, v41);
  }

  mlir::ValueRange::ValueRange(&v62, NextResultAtOffset, v11 - v10);
  mlir::TypeRange::TypeRange(&v54, v62, v63);
  mlir::OneToNTypeMapping::OneToNTypeMapping(&v62, v54, v55);
  v12 = v40;
  v13 = v41;
  v14 = v42;
  if (v41)
  {
    v12 = mlir::detail::OpResultImpl::getNextResultAtOffset(v40, v41);
  }

  mlir::ValueRange::ValueRange(&v54, v12, v14 - v13);
  mlir::TypeRange::TypeRange(&v51, v54, v55);
  v15 = 0;
  if (mlir::TypeConverter::convertSignatureArgs(v6, v51, v52, &v62, 0))
  {
    if ((*(a2 + 46) & 0x80) != 0)
    {
      v16 = *(a2 + 9);
      v17 = *(a2 + 17);
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    v54 = v16;
    v55 = v17;
    mlir::OperandRange::getTypes(&v54, &v37);
    mlir::ValueRange::ValueRange(&v54, v37 + 32 * v38, v39 - v38);
    mlir::TypeRange::TypeRange(&v51, v54, v55);
    mlir::OneToNTypeMapping::OneToNTypeMapping(&v54, v51, v52);
    mlir::ValueRange::ValueRange(&v51, v37 + 32 * v38, v39 - v38);
    mlir::TypeRange::TypeRange(&v45, v51, v52);
    v15 = 0;
    if (mlir::TypeConverter::convertSignatureArgs(v6, v45, v46, &v54, 0))
    {
      if ((*(a2 + 46) & 0x80) != 0)
      {
        v18 = *(a2 + 9);
        v19 = *(a2 + 17);
      }

      else
      {
        v18 = 0;
        v19 = 0;
      }

      mlir::ValueRange::ValueRange(&v49, v18, v19);
      v20 = v50;
      v51 = v53;
      v52 = 0x600000000;
      if (v58 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v45 = 0;
      v46 = v49;
      if (v50)
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v24 = mlir::ValueRange::dereference_iterator(&v46, v22);
          v43 = v21;
          v44 = v24;
          mlir::TypeRange::TypeRange(&v69, v57, v58);
          v25 = v54 + 32 * v21;
          if (v25[24])
          {
            v26 = *(v25 + 1);
            v27 = v69;
            if (*v25)
            {
              v27 = mlir::TypeRange::offset_base(v69, *v25);
            }

            if (v26 != 1)
            {
              goto LABEL_28;
            }
          }

          else
          {
            mlir::TypeRange::TypeRange(&v70, 0, 0);
            v27 = v70;
            v26 = v71;
            if (v71 != 1)
            {
              goto LABEL_28;
            }
          }

          v28 = *(v44 + 8) & 0xFFFFFFFFFFFFFFF8;
          if (mlir::TypeRange::dereference_iterator(v27, 0) == v28)
          {
            if (v52 >= HIDWORD(v52))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            *(v51 + v52) = v44;
            v23 = v52 + 1;
            goto LABEL_18;
          }

LABEL_28:
          v30 = buildUnrealizedCast(a3 + 1, v27, v26, &v44, 1, 2);
          v31 = v29;
          v32 = v52;
          if (v29 + v52 > HIDWORD(v52))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v70 = v30;
          v71 = 0;
          if (v29)
          {
            v33 = 0;
            v34 = (v51 + 8 * v52);
            do
            {
              *v34++ = mlir::ValueRange::dereference_iterator(&v70, v33);
              v33 = v71 + 1;
              v71 = v33;
            }

            while (v33 != v31);
            v32 = v52;
          }

          v23 = v32 + v31;
LABEL_18:
          LODWORD(v52) = v23;
          v21 = v45 + 1;
          v22 = *(&v46 + 1) + 1;
          ++v45;
          *(&v46 + 1) = v22;
        }

        while (v22 != v20);
      }

      v46 = *(a3 + 1);
      v45 = &unk_286866F58;
      if (a3[3])
      {
        v35 = a3[4];
        v47 = a3[3];
        v48 = v35;
      }

      else
      {
        v47 = 0;
        v48 = 0;
      }

      mlir::ValueRange::ValueRange(&v70, v51, v52);
      v15 = (*(*this + 48))(this, a2, &v45, &v54, &v62, v70, v71) & 1;
      mlir::RewriterBase::~RewriterBase(&v45);
      if (v51 != v53)
      {
        free(v51);
      }
    }

    if (v60 != &v61)
    {
      free(v60);
    }

    if (v57 != &v59)
    {
      free(v57);
    }

    if (v54 != &v56)
    {
      free(v54);
    }
  }

  if (v67 != &v68)
  {
    free(v67);
  }

  if (v65 != &v66)
  {
    free(v65);
  }

  if (v62 != &v64)
  {
    free(v62);
  }

  return v15;
}

uint64_t mlir::applyPartialOneToNConversion(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v100 = *MEMORY[0x277D85DE8];
  v5 = a1[11];
  if ((v5 & 0x7FFFFF) != 0)
  {
    v6 = (((&a1[4 * ((v5 >> 23) & 1) + 17] + ((v5 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a1[10]);
    LOBYTE(__src) = 0;
    p_src = 0x200000000;
    v90 = xmmword_257369590;
    v92 = 0;
    v93[0] = 0;
    v91 = 0;
    mlir::applyPatternsAndFoldGreedily(v6, a3, &p_src);
  }

  v86 = v88;
  v87 = 0x600000000;
  *&__src = &v86;
  p_src = &__src;
  v7 = 1;
  mlir::detail::walk<mlir::ForwardIterator>(a1, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_28applyPartialOneToNConversionES3_RNS1_19OneToNTypeConverterERKNS1_23FrozenRewritePatternSetEE3__0NS1_26UnrealizedConversionCastOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESP_E4typeES3_OT1_EUlS3_E_EEvlS3_, &p_src, 1);
  v72[0] = mlir::Attribute::getContext((a1 + 6));
  v72[1] = 0;
  v73 = 0;
  v74 = 0;
  v71 = &unk_28685B570;
  if (v87)
  {
    v8 = v86;
    v9 = (v86 + 8 * v87);
    while (1)
    {
      v10 = *v8;
      v11 = *(*v8 + 36);
      v12 = *v8 - 16;
      if (!v11)
      {
        v12 = 0;
      }

      *&__src = v12;
      *(&__src + 1) = v11;
      mlir::ResultRange::getTypes(&__src, &p_src);
      NextResultAtOffset = p_src;
      v14 = v90;
      v15 = v91;
      if (v90)
      {
        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(p_src, v90);
      }

      mlir::ValueRange::ValueRange(&__src, NextResultAtOffset, v15 - v14);
      mlir::TypeRange::TypeRange(v85, __src, *(&__src + 1));
      if ((*(v10 + 46) & 0x80) != 0)
      {
        mlir::ValueRange::ValueRange(v84, *(v10 + 72), *(v10 + 68));
        if (*(v10 + 47))
        {
          goto LABEL_11;
        }
      }

      else
      {
        mlir::ValueRange::ValueRange(v84, 0, 0);
        if (*(v10 + 47))
        {
LABEL_11:
          InherentAttr = mlir::Operation::getInherentAttr(v10, "__one-to-n-type-conversion_cast-kind__", 38);
          if (v17)
          {
            goto LABEL_13;
          }
        }
      }

      InherentAttr = mlir::DictionaryAttr::get(v10 + 56, "__one-to-n-type-conversion_cast-kind__", 0x26uLL);
LABEL_13:
      if (InherentAttr)
      {
        if (*(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          v18 = InherentAttr;
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }

      p_src = v18;
      Value = mlir::StringAttr::getValue(&p_src);
      v21 = v20;
      v22 = *(v10 + 16);
      NodePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v10);
      v73 = v22;
      v74 = NodePtr;
      __dst = v83;
      v82 = 0x600000000;
      CastKindName = getCastKindName(2);
      if (v21 != v25 || v21 && memcmp(Value, CastKindName, v21))
      {
        v26 = getCastKindName(1);
        if (v21 == v27 && (!v21 || !memcmp(Value, v26, v21)))
        {
          v28 = *(v10 + 24);
          v29 = mlir::TypeRange::dereference_iterator(v85[0], 0);
          if ((*(v10 + 46) & 0x80) != 0)
          {
            v41 = *(v10 + 72);
            v42 = *(v10 + 68);
          }

          else
          {
            v41 = 0;
            v42 = 0;
          }

          mlir::ValueRange::ValueRange(&p_src, v41, v42);
          v32 = p_src;
          v33 = v90;
          v34 = *(a2 + 232);
          v35 = *(a2 + 240);
        }

        else
        {
          v28 = *(v10 + 24);
          v29 = mlir::TypeRange::dereference_iterator(v85[0], 0);
          if ((*(v10 + 46) & 0x80) != 0)
          {
            v30 = *(v10 + 72);
            v31 = *(v10 + 68);
          }

          else
          {
            v30 = 0;
            v31 = 0;
          }

          mlir::ValueRange::ValueRange(&p_src, v30, v31);
          v32 = p_src;
          v33 = v90;
          v34 = *(a2 + 152);
          v35 = *(a2 + 160);
        }

        v43 = mlir::TypeConverter::materializeConversion(a2, v34, v35, v72, v28, v29, v32, v33);
        if (v43)
        {
          LODWORD(v82) = 0;
          if (!HIDWORD(v82))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *__dst = v43;
          v56 = v82 + 1;
          LODWORD(v82) = v82 + 1;
LABEL_96:
          mlir::ValueRange::ValueRange(&p_src, __dst, v56);
          mlir::RewriterBase::replaceOp(&v71, v10, p_src, v90);
          v68 = 1;
          v69 = __dst;
          if (__dst == v83)
          {
            goto LABEL_98;
          }

LABEL_97:
          free(v69);
          goto LABEL_98;
        }

        mlir::emitError(*(v10 + 24), &p_src);
        if (p_src)
        {
          LODWORD(__src) = 3;
          *(&__src + 1) = "failed to create ";
          v78 = 17;
          if (v92 >= HIDWORD(v92))
          {
            if (v91 > &__src || v91 + 24 * v92 <= &__src)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v44 = v91 + 24 * v92;
          v45 = __src;
          *(v44 + 2) = v78;
          *v44 = v45;
          LODWORD(v92) = v92 + 1;
          if (p_src)
          {
            v79 = 261;
            *&__src = Value;
            *(&__src + 1) = v21;
            mlir::Diagnostic::operator<<(&v90, &__src);
            if (p_src)
            {
              LODWORD(__src) = 3;
              *(&__src + 1) = " materialization";
              v78 = 16;
              if (v92 >= HIDWORD(v92))
              {
                if (v91 > &__src || v91 + 24 * v92 <= &__src)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v46 = v91 + 24 * v92;
              v47 = __src;
              *(v46 + 2) = v78;
              *v46 = v47;
              LODWORD(v92) = v92 + 1;
              if (p_src)
              {
                mlir::InFlightDiagnostic::report(&p_src);
              }
            }
          }
        }

        if (v99 == 1)
        {
          if (v98 != &v99)
          {
            free(v98);
          }

          v48 = __p;
          if (__p)
          {
            v49 = v97;
            v50 = __p;
            if (v97 != __p)
            {
              do
              {
                v49 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v49 - 1);
              }

              while (v49 != v48);
              v50 = __p;
            }

            v97 = v48;
            operator delete(v50);
          }

          v51 = v94;
          if (v94)
          {
            v52 = v95;
            v53 = v94;
            if (v95 != v94)
            {
              do
              {
                v55 = *--v52;
                v54 = v55;
                *v52 = 0;
                if (v55)
                {
                  MEMORY[0x259C63150](v54, 0x1000C8077774924);
                }
              }

              while (v52 != v51);
              v53 = v94;
            }

            v95 = v51;
            operator delete(v53);
          }

          if (v91 != v93)
          {
            free(v91);
          }
        }

        goto LABEL_101;
      }

      v36 = v85[0];
      v37 = v85[1];
      mlir::ValueRange::dereference_iterator(v84, 0);
      mlir::OneToNTypeConverter::materializeTargetConversion(a2, v36, v37, &__src);
      v38 = v80;
      if (v80)
      {
        v39 = DWORD2(__src);
        v40 = v82;
        if (v82 >= DWORD2(__src))
        {
          if (DWORD2(__src))
          {
            memmove(__dst, __src, 8 * DWORD2(__src));
          }
        }

        else
        {
          if (HIDWORD(v82) < DWORD2(__src))
          {
            LODWORD(v82) = 0;
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          if (v82)
          {
            memmove(__dst, __src, 8 * v82);
            v67 = DWORD2(__src) - v40;
            if (DWORD2(__src) != v40)
            {
              goto LABEL_85;
            }
          }

          else
          {
            v40 = 0;
            v67 = DWORD2(__src);
            if (DWORD2(__src))
            {
LABEL_85:
              memcpy(__dst + 8 * v40, (__src + 8 * v40), 8 * v67);
            }
          }
        }

        LODWORD(v82) = v39;
        goto LABEL_91;
      }

      mlir::emitError(*(v10 + 24), &p_src);
      if (p_src)
      {
        LODWORD(v75) = 3;
        *(&v75 + 1) = "failed to create target materialization";
        v76 = 39;
        if (v92 >= HIDWORD(v92))
        {
          if (v91 > &v75 || v91 + 24 * v92 <= &v75)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v57 = v91 + 24 * v92;
        v58 = v75;
        *(v57 + 2) = v76;
        *v57 = v58;
        LODWORD(v92) = v92 + 1;
        if (p_src)
        {
          mlir::InFlightDiagnostic::report(&p_src);
        }
      }

      if (v99 == 1)
      {
        if (v98 != &v99)
        {
          free(v98);
        }

        v59 = __p;
        if (__p)
        {
          v60 = v97;
          v61 = __p;
          if (v97 != __p)
          {
            do
            {
              v60 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v60 - 1);
            }

            while (v60 != v59);
            v61 = __p;
          }

          v97 = v59;
          operator delete(v61);
        }

        v62 = v94;
        if (v94)
        {
          v63 = v95;
          v64 = v94;
          if (v95 != v94)
          {
            do
            {
              v66 = *--v63;
              v65 = v66;
              *v63 = 0;
              if (v66)
              {
                MEMORY[0x259C63150](v65, 0x1000C8077774924);
              }
            }

            while (v63 != v62);
            v64 = v94;
          }

          v95 = v62;
          operator delete(v64);
        }

        if (v91 != v93)
        {
          free(v91);
        }
      }

LABEL_91:
      if (v80 == 1 && __src != &v78)
      {
        free(__src);
      }

      if (v38)
      {
        v56 = v82;
        goto LABEL_96;
      }

LABEL_101:
      v68 = 0;
      v69 = __dst;
      if (__dst != v83)
      {
        goto LABEL_97;
      }

LABEL_98:
      if ((v68 & 1) == 0)
      {
        v7 = 0;
        break;
      }

      if (++v8 == v9)
      {
        v7 = 1;
        break;
      }
    }
  }

  mlir::RewriterBase::~RewriterBase(&v71);
  if (v86 != v88)
  {
    free(v86);
  }

  return v7;
}

uint64_t getCastKindName(int a1)
{
  if (atomic_load_explicit(&_MergedGlobals_0, memory_order_acquire))
  {
    v1 = *(&xmmword_27F874128 + 1);
    if (!*(&xmmword_27F874128 + 1))
    {
      goto LABEL_24;
    }
  }

  else
  {
    v10 = a1;
    getCastKindName();
    a1 = v10;
    v1 = *(&xmmword_27F874128 + 1);
    if (!*(&xmmword_27F874128 + 1))
    {
      goto LABEL_24;
    }
  }

  v2 = vcnt_s8(v1);
  v2.i16[0] = vaddlv_u8(v2);
  if (v2.u32[0] > 1uLL)
  {
    v3 = a1;
    if (v1 <= a1)
    {
      v3 = a1 % v1;
    }
  }

  else
  {
    v3 = (v1 - 1) & a1;
  }

  v4 = *(xmmword_27F874128 + 8 * v3);
  if (!v4 || (v5 = *v4) == 0)
  {
LABEL_24:
    abort();
  }

  if (v2.u32[0] < 2uLL)
  {
    v6 = v1 - 1;
    while (1)
    {
      v7 = v5[1];
      if (v7 == a1)
      {
        if (*(v5 + 4) == a1)
        {
          return v5[3];
        }
      }

      else if ((v7 & v6) != v3)
      {
        goto LABEL_24;
      }

      v5 = *v5;
      if (!v5)
      {
        goto LABEL_24;
      }
    }
  }

  while (1)
  {
    v9 = v5[1];
    if (v9 == a1)
    {
      break;
    }

    if (v9 >= v1)
    {
      v9 %= v1;
    }

    if (v9 != v3)
    {
      goto LABEL_24;
    }

LABEL_17:
    v5 = *v5;
    if (!v5)
    {
      goto LABEL_24;
    }
  }

  if (*(v5 + 4) != a1)
  {
    goto LABEL_17;
  }

  return v5[3];
}

uint64_t mlir::OpBuilder::create<mlir::UnrealizedConversionCastOp,mlir::TypeRange &,mlir::ValueRange &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::UnrealizedConversionCastOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::UnrealizedConversionCastOp,mlir::Type &,mlir::ValueRange &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::UnrealizedConversionCastOp::build(a1, v17, *a3, a3[1], *a4, *(a4 + 8), 0, 0);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::UnrealizedConversionCastOp,void>::id)
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

void *mlir::OneToNTypeMapping::OneToNTypeMapping(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = a1 + 2;
  *a1 = a1 + 2;
  a1[1] = 0x400000000;
  if (a3)
  {
    if (a3 >= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v7 = a1 + 2;
    if (32 * a3 == 32)
    {
      goto LABEL_20;
    }

    v8 = ((32 * a3 - 32) >> 5) + 1;
    v7 = &v6[4 * (v8 & 0xFFFFFFFFFFFFFFELL)];
    v9 = a1 + 6;
    v10 = v8 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *(v9 - 32) = 0;
      *v9 = 0;
      *(v9 - 8) = 0;
      v9[24] = 0;
      v9 += 64;
      v10 -= 2;
    }

    while (v10);
    if (v8 != (v8 & 0xFFFFFFFFFFFFFFELL))
    {
LABEL_20:
      do
      {
        *v7 = 0;
        v7[24] = 0;
        v7 += 32;
      }

      while (v7 != &v6[4 * a3]);
    }

    *(a1 + 2) = a3;
  }

  a1[24] = a1 + 26;
  a1[18] = a1 + 20;
  a1[19] = 0x400000000;
  a1[25] = 0x600000000;
  if (a3 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a3)
  {
    v11 = 0;
    v12 = a1 + 26;
    do
    {
      v12[v11] = mlir::TypeRange::dereference_iterator(a2, v11);
      ++v11;
    }

    while (a3 != v11);
    v13 = *(a1 + 50);
  }

  else
  {
    v13 = 0;
  }

  *(a1 + 50) = v13 + a3;
  return a1;
}

void mlir::OneToNPatternRewriter::~OneToNPatternRewriter(mlir::OneToNPatternRewriter *this)
{
  mlir::RewriterBase::~RewriterBase(this);

  JUMPOUT(0x259C63180);
}

void std::unordered_map<anonymous namespace::CastKind,llvm::StringRef>::unordered_map(uint64_t a1, uint64_t a2)
{
  xmmword_27F874128 = 0u;
  *&qword_27F874138 = 0u;
  dword_27F874148 = 1065353216;
  if (a2)
  {
    operator new();
  }
}

uint64_t std::unordered_map<anonymous namespace::CastKind,llvm::StringRef>::~unordered_map[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t **_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_28applyPartialOneToNConversionES3_RNS1_19OneToNTypeConverterERKNS1_23FrozenRewritePatternSetEE3__0NS1_26UnrealizedConversionCastOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESP_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t **result, uint64_t a2)
{
  if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::UnrealizedConversionCastOp,void>::id)
  {
    v2 = a2;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    v3 = *result;
    if (*(v2 + 47) && (result = mlir::Operation::getInherentAttr(v2, "__one-to-n-type-conversion_cast-kind__", 38), (v4 & 1) != 0))
    {
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = mlir::DictionaryAttr::contains(v2 + 56, "__one-to-n-type-conversion_cast-kind__", 0x26uLL);
      if (!result)
      {
        return result;
      }
    }

    v5 = *v3;
    v6 = *(v5 + 8);
    if (v6 >= *(v5 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*v5 + 8 * v6) = v2;
    ++*(v5 + 8);
  }

  return result;
}

void mlir::anonymous namespace::FunctionOpInterfaceSignatureConversion::~FunctionOpInterfaceSignatureConversion(mlir::_anonymous_namespace_::FunctionOpInterfaceSignatureConversion *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

uint64_t mlir::anonymous namespace::FunctionOpInterfaceSignatureConversion::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::OneToNPatternRewriter *a3)
{
  v60 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  }

  else
  {
    InterfaceFor = 0;
  }

  v38 = a2;
  v39 = InterfaceFor;
  v7 = *(a1 + 96);
  ArgumentTypes = mlir::FunctionOpInterface::getArgumentTypes(&v38);
  mlir::TypeRange::TypeRange(&v40, ArgumentTypes, v9);
  mlir::OneToNTypeMapping::OneToNTypeMapping(v49, v40, v41);
  v10 = mlir::FunctionOpInterface::getArgumentTypes(&v38);
  mlir::TypeRange::TypeRange(&v40, v10, v11);
  v12 = 0;
  if ((mlir::TypeConverter::convertSignatureArgs(v7, v40, v41, v49, 0) & 1) == 0)
  {
    goto LABEL_30;
  }

  ResultTypes = mlir::FunctionOpInterface::getResultTypes(&v38);
  mlir::TypeRange::TypeRange(&v58, ResultTypes, v14);
  mlir::OneToNTypeMapping::OneToNTypeMapping(&v40, v58, v59);
  v15 = mlir::FunctionOpInterface::getResultTypes(&v38);
  mlir::TypeRange::TypeRange(&v58, v15, v16);
  if (mlir::TypeConverter::convertSignatureArgs(v7, v58, v59, &v40, 0))
  {
    if (v55)
    {
      v17 = 0;
      v18 = v54;
      v19 = 32 * v55;
      while (1)
      {
        mlir::TypeRange::TypeRange(v57, v51, v52);
        v20 = (v49[0] + v17);
        if (*(v49[0] + v17 + 24))
        {
          v21 = v20[1];
          v22 = v57[0];
          if (*v20)
          {
            v22 = mlir::TypeRange::offset_base(v57[0], *v20);
          }
        }

        else
        {
          mlir::TypeRange::TypeRange(&v58, 0, 0);
          v22 = v58;
          v21 = v59;
        }

        if (v21 != 1)
        {
          break;
        }

        v23 = *v18;
        if (mlir::TypeRange::dereference_iterator(v22, 0) != v23)
        {
          break;
        }

        ++v18;
        v17 += 32;
        if (v19 == v17)
        {
          goto LABEL_15;
        }
      }

LABEL_37:
      v33 = *(a3 + 1);
      mlir::TypeRange::TypeRange(&v58, v51, v52);
      mlir::TypeRange::TypeRange(v57, v43, v44);
      v34 = mlir::FunctionType::get(v33, v58, v59, v57[0], v57[1]);
      (*(*a3 + 40))(a3, a2);
      mlir::function_interface_impl::setFunctionType(v38, v39, v34);
      (*(*a3 + 48))(a3, a2);
      v35 = (((v38 + 16 * ((*(v38 + 44) >> 23) & 1) + ((*(v38 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v38 + 40));
      if (*v35 != v35)
      {
        v36 = v35[1];
        if (v36)
        {
          v37 = (v36 - 8);
        }

        else
        {
          v37 = 0;
        }

        mlir::OneToNPatternRewriter::applySignatureConversion(a3, v37, v49);
      }

      v12 = 1;
      v31 = v46;
      if (v46 == v48)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

LABEL_15:
    if (v47)
    {
      v24 = 0;
      v25 = v46;
      v26 = 32 * v47;
      do
      {
        mlir::TypeRange::TypeRange(v57, v43, v44);
        v27 = (v40 + v24);
        if (*(v40 + v24 + 24))
        {
          v28 = v27[1];
          v29 = v57[0];
          if (*v27)
          {
            v29 = mlir::TypeRange::offset_base(v57[0], *v27);
          }
        }

        else
        {
          mlir::TypeRange::TypeRange(&v58, 0, 0);
          v29 = v58;
          v28 = v59;
        }

        if (v28 != 1)
        {
          goto LABEL_37;
        }

        v30 = *v25;
        if (mlir::TypeRange::dereference_iterator(v29, 0) != v30)
        {
          goto LABEL_37;
        }

        ++v25;
        v24 += 32;
      }

      while (v26 != v24);
    }
  }

  v12 = 0;
  v31 = v46;
  if (v46 != v48)
  {
LABEL_25:
    free(v31);
  }

LABEL_26:
  if (v43 != &v45)
  {
    free(v43);
  }

  if (v40 != &v42)
  {
    free(v40);
  }

LABEL_30:
  if (v54 != &v56)
  {
    free(v54);
  }

  if (v51 != &v53)
  {
    free(v51);
  }

  if (v49[0] != &v50)
  {
    free(v49[0]);
  }

  return v12;
}

mlir::Region *mlir::replaceAllUsesInRegionWith(mlir::Region *result, uint64_t *a2, mlir::Region *a3)
{
  v3 = *result;
  if (*result)
  {
    do
    {
      v6 = *v3;
      v7 = *(v3[2] + 16);
      if (v7)
      {
        result = mlir::Block::getParent(v7);
        if (result == a3 || (result = mlir::Region::isProperAncestor(a3, result), result))
        {
LABEL_10:
          v8 = v3[1];
          if (v8)
          {
            v9 = *v3;
            *v8 = *v3;
            if (v9)
            {
              v9[1] = v8;
            }
          }

          v3[3] = a2;
          v10 = *a2;
          *v3 = *a2;
          v3[1] = a2;
          if (v10)
          {
            *(v10 + 8) = v3;
          }

          *a2 = v3;
        }
      }

      else
      {
        result = mlir::Region::isProperAncestor(a3, 0);
        if (result)
        {
          goto LABEL_10;
        }
      }

      v3 = v6;
    }

    while (v6);
  }

  return result;
}

void mlir::visitUsedValuesDefinedAbove(uint64_t a1, mlir::Region *this, uint64_t a3, uint64_t a4)
{
  v19 = v23;
  v20 = v23;
  v21 = 4;
  v22 = 0;
  ParentRegion = mlir::Region::getParentRegion(this);
  if (ParentRegion)
  {
    v8 = ParentRegion;
    do
    {
      if (v20 != v19)
      {
        goto LABEL_3;
      }

      v9 = HIDWORD(v21);
      if (HIDWORD(v21))
      {
        v10 = 8 * HIDWORD(v21);
        v11 = v19;
        while (*v11 != v8)
        {
          ++v11;
          v10 -= 8;
          if (!v10)
          {
            goto LABEL_10;
          }
        }

        goto LABEL_4;
      }

LABEL_10:
      if (HIDWORD(v21) < v21)
      {
        ++HIDWORD(v21);
        v19[v9] = v8;
      }

      else
      {
LABEL_3:
        llvm::SmallPtrSetImplBase::insert_imp_big(&v19, v8);
      }

LABEL_4:
      v8 = mlir::Region::getParentRegion(v8);
    }

    while (v8);
  }

  v18[0] = a3;
  v18[1] = a4;
  v18[2] = &v19;
  for (i = *(a1 + 8); i != a1; i = *(i + 8))
  {
    v13 = i - 8;
    if (!i)
    {
      v13 = 0;
    }

    v14 = *(v13 + 40);
    v15 = v13 + 32;
    if (v14 != v13 + 32)
    {
      do
      {
        v16 = *(v14 + 8);
        ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v14);
        mlir::detail::walk<mlir::ForwardIterator>(ValuePtr, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::visitUsedValuesDefinedAbove(mlir::Region &,mlir::Region &,llvm::function_ref<void ()(mlir::OpOperand *)>)::$_0>, v18, 1);
        v14 = v16;
      }

      while (v16 != v15);
    }
  }

  if (v20 != v19)
  {
    free(v20);
  }
}

void mlir::visitUsedValuesDefinedAbove(mlir::Region *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = 24 * a2;
    do
    {
      mlir::visitUsedValuesDefinedAbove(a1, a1, a3, a4);
      a1 = (a1 + 24);
      v7 -= 24;
    }

    while (v7);
  }
}

void mlir::getUsedValuesDefinedAbove(mlir::Region *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = 24 * a2;
    do
    {
      v6 = a3;
      mlir::visitUsedValuesDefinedAbove(a1, a1, llvm::function_ref<void ()(mlir::OpOperand *)>::callback_fn<mlir::getUsedValuesDefinedAbove(mlir::Region &,mlir::Region &,llvm::SetVector<mlir::Value,llvm::SmallVector<mlir::Value,0u>,llvm::DenseSet<mlir::Value,llvm::DenseMapInfo<mlir::Value,void>>,0u> &)::$_0>, &v6);
      a1 = (a1 + 24);
      v5 -= 24;
    }

    while (v5);
  }
}

void mlir::makeRegionIsolatedFromAbove(int a1, mlir::Region *a2, uint64_t (*a3)(void, void), uint64_t a4)
{
  v83[8] = *MEMORY[0x277D85DE8];
  v69 = 0;
  *v68 = 0u;
  v70 = &v72;
  v71 = 0;
  v73[0] = v68;
  mlir::visitUsedValuesDefinedAbove(a2, a2, llvm::function_ref<void ()(mlir::OpOperand *)>::callback_fn<mlir::getUsedValuesDefinedAbove(mlir::Region &,mlir::Region &,llvm::SetVector<mlir::Value,llvm::SmallVector<mlir::Value,0u>,llvm::DenseSet<mlir::Value,llvm::DenseMapInfo<mlir::Value,void>>,0u> &)::$_0>, v73);
  *__p = 0u;
  v66 = 0u;
  v67 = 0u;
  std::deque<mlir::Value>::__append_with_size[abi:nn200100]<mlir::Value const*>(__p, v70, v71);
  v63[0] = 0;
  v63[1] = 0;
  v64 = 0;
  v61[0] = 0;
  v61[1] = 0;
  v62 = 0;
  v58 = 0;
  *v57 = 0u;
  v59 = v61;
  v60 = 0;
  v8 = v83;
  v81 = v83;
  v82 = 0x600000000;
  v9 = *(&v67 + 1);
  if (!*(&v67 + 1))
  {
    v37 = 0;
LABEL_47:
    mlir::computeTopologicalSorting(v8, v37, 0, v7);
    v38 = *(a2 + 1);
    if (v38)
    {
      v39 = (v38 - 8);
    }

    else
    {
      v39 = 0;
    }

    ArgumentTypes = mlir::Block::getArgumentTypes(v39);
    v42 = ArgumentTypes;
    v78 = &v80;
    v79 = 0x600000000;
    if (((v41 - ArgumentTypes) >> 3) >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v43 = 0;
    if (v41 != ArgumentTypes)
    {
      v44 = v78;
      do
      {
        v45 = *v42++;
        *v44++ = *(v45 + 8) & 0xFFFFFFFFFFFFFFF8;
      }

      while (v42 != v41);
      v43 = v79;
    }

    LODWORD(v79) = v43 + ((v41 - ArgumentTypes) >> 3);
    v46 = *(v39 + 6);
    v47 = *(v39 + 7);
    v75 = &v77;
    v76 = 0x600000000;
    v48 = v47 - v46;
    if (((v47 - v46) >> 3) >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v49 = 0;
    if (v46 != v47)
    {
      v50 = v75;
      do
      {
        v51 = *v46;
        v46 += 8;
        *v50++ = *(v51 + 32);
      }

      while (v46 != v47);
      v49 = v76;
    }

    LODWORD(v76) = v49 + (v48 >> 3);
    if (v60)
    {
      v52 = v59;
      v53 = 8 * v60;
      do
      {
        v73[0] = *v52;
        if (v79 >= HIDWORD(v79))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(v78 + 8 * v79) = *(v73[0] + 1) & 0xFFFFFFFFFFFFFFF8;
        LODWORD(v79) = v79 + 1;
        Loc = mlir::Value::getLoc(v73);
        if (v76 >= HIDWORD(v76))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(v75 + v76) = Loc;
        LODWORD(v76) = v76 + 1;
        ++v52;
        v53 -= 8;
      }

      while (v53);
    }

    mlir::TypeRange::TypeRange(v73, v78, v79);
    mlir::OpBuilder::createBlock();
  }

  while (1)
  {
    v78 = *(*(__p[1] + ((v67 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v67 & 0x1FF));
    *&v67 = v67 + 1;
    *(&v67 + 1) = v9 - 1;
    if (v67 >= 0x400)
    {
      operator delete(*__p[1]);
      __p[1] = __p[1] + 8;
      *&v67 = v67 - 512;
    }

    if (v64)
    {
      v10 = 0x9DDFEA08EB382D69 * ((8 * v78 - 0xAE502812AA7333) ^ HIDWORD(v78));
      v11 = 0x9DDFEA08EB382D69 * (HIDWORD(v78) ^ (v10 >> 47) ^ v10);
      v12 = (-348639895 * ((v11 >> 47) ^ v11)) & (v64 - 1);
      v13 = *(v63[0] + v12);
      if (v78 == v13)
      {
        goto LABEL_5;
      }

      v14 = 1;
      while (v13 != -4096)
      {
        v15 = v12 + v14++;
        v12 = v15 & (v64 - 1);
        v13 = *(v63[0] + v12);
        if (v78 == v13)
        {
          goto LABEL_5;
        }
      }
    }

    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::try_emplace<llvm::detail::DenseSetEmpty&>(v63, &v78, v73);
    DefiningOp = mlir::Value::getDefiningOp(&v78);
    v75 = DefiningOp;
    if (DefiningOp)
    {
      if (!v62)
      {
        goto LABEL_19;
      }

      v17 = (v62 - 1) & ((DefiningOp >> 4) ^ (DefiningOp >> 9));
      v18 = *(v61[0] + v17);
      if (v18 != DefiningOp)
      {
        break;
      }
    }

LABEL_36:
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::try_emplace<llvm::detail::DenseSetEmpty&>(v57, &v78, v73);
    if (v74 == 1)
    {
      if (v60 >= HIDWORD(v60))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v59 + v60) = v78;
      v36 = &v60;
LABEL_42:
      ++*v36;
    }

LABEL_5:
    v9 = *(&v67 + 1);
    if (!*(&v67 + 1))
    {
      v8 = v81;
      v37 = v82;
      goto LABEL_47;
    }
  }

  v19 = 1;
  while (v18 != -4096)
  {
    v20 = v17 + v19++;
    v17 = v20 & (v62 - 1);
    v18 = *(v61[0] + v17);
    if (v18 == DefiningOp)
    {
      goto LABEL_36;
    }
  }

LABEL_19:
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v61, &v75, v73);
  if (a3(a4, v75))
  {
    v21 = v75;
    if ((*(v75 + 46) & 0x80) == 0 || (v22 = *(v75 + 17), !v22))
    {
LABEL_40:
      if (v82 >= HIDWORD(v82))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v81[v82] = v21;
      v36 = &v82;
      goto LABEL_42;
    }

    v55 = a3;
    v56 = a4;
    v23 = 0;
    v24 = *(v75 + 9);
    while (2)
    {
      v29 = *(v24 + 32 * v23 + 24);
      if (v64)
      {
        v25 = 0x9DDFEA08EB382D69 * ((8 * *(v24 + 32 * v23 + 24) - 0xAE502812AA7333) ^ HIDWORD(*(v24 + 32 * v23 + 24)));
        v26 = 0x9DDFEA08EB382D69 * (HIDWORD(v29) ^ (v25 >> 47) ^ v25);
        v27 = (-348639895 * ((v26 >> 47) ^ v26)) & (v64 - 1);
        v28 = *(v63[0] + v27);
        if (v29 != v28)
        {
          v34 = 1;
          while (v28 != -4096)
          {
            v35 = v27 + v34++;
            v27 = v35 & (v64 - 1);
            v28 = *(v63[0] + v27);
            if (v29 == v28)
            {
              goto LABEL_24;
            }
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_26:
        v30 = __p[1];
        if (v66 == __p[1])
        {
          v31 = 0;
        }

        else
        {
          v31 = ((v66 - __p[1]) << 6) - 1;
        }

        v32 = *(&v67 + 1);
        v33 = *(&v67 + 1) + v67;
        if (v31 == *(&v67 + 1) + v67)
        {
          std::deque<mlir::Value>::__add_back_capacity(__p);
          v32 = *(&v67 + 1);
          v30 = __p[1];
          v33 = v67 + *(&v67 + 1);
        }

        *(*&v30[(v33 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v33 & 0x1FF)) = v29;
        *(&v67 + 1) = v32 + 1;
      }

LABEL_24:
      if (++v23 == v22)
      {
        v21 = v75;
        a3 = v55;
        a4 = v56;
        goto LABEL_40;
      }

      continue;
    }
  }

  goto LABEL_36;
}

uint64_t mlir::eraseUnreachableBlocks(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v51[3] = *MEMORY[0x277D85DE8];
  v44 = v48;
  v45 = v48;
  v46 = 16;
  v47 = 0;
  v49 = v51;
  v50 = 0x100000000;
  if (a3 >= 2)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = 0;
  if (a3)
  {
    v6 = 24 * a3;
    do
    {
      if (v5 >= HIDWORD(v50))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v49[v5] = a2;
      v5 = v50 + 1;
      LODWORD(v50) = v50 + 1;
      a2 += 24;
      v6 -= 24;
    }

    while (v6);
    v7 = 0;
    while (v5)
    {
      v8 = v49[--v5];
      LODWORD(v50) = v5;
      if (*v8 == v8)
      {
        continue;
      }

      v9 = v8[1];
      if (*(v9 + 8) == v8)
      {
        v10 = v9 + 24;
        for (i = *(v9 + 32); i != v10; i = *(i + 8))
        {
          ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(i);
          v13 = *(ValuePtr + 44);
          v14 = v13 & 0x7FFFFF;
          if ((v13 & 0x7FFFFF) != 0)
          {
            v15 = ValuePtr + 16 * ((v13 >> 23) & 1) + ((v13 >> 21) & 0x7F8) + 32 * *(ValuePtr + 40) + 64;
            v16 = v50;
            v17 = 24 * v14;
            do
            {
              if (v16 >= HIDWORD(v50))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v49[v16] = v15;
              v16 = v50 + 1;
              LODWORD(v50) = v50 + 1;
              v15 += 24;
              v17 -= 24;
            }

            while (v17);
          }
        }

        goto LABEL_11;
      }

      if (v45 != v44)
      {
        if (v46 >= 0x21 && 4 * (HIDWORD(v46) - v47) < v46)
        {
          llvm::SmallPtrSetImplBase::shrink_and_clear(&v44);
          goto LABEL_30;
        }

        memset(v45, 255, 8 * v46);
      }

      HIDWORD(v46) = 0;
      v47 = 0;
LABEL_30:
      v18 = v8[1];
      if (v18)
      {
        v19 = (v18 - 8);
      }

      else
      {
        v19 = 0;
      }

      if (v45 == v44)
      {
        v21 = HIDWORD(v46);
        if (HIDWORD(v46))
        {
          v22 = 8 * HIDWORD(v46);
          v23 = v44;
          while (*v23 != v19)
          {
            ++v23;
            v22 -= 8;
            if (!v22)
            {
              goto LABEL_40;
            }
          }

          goto LABEL_43;
        }

LABEL_40:
        if (HIDWORD(v46) < v46)
        {
          ++HIDWORD(v46);
          v44[v21] = v19;
LABEL_42:
          operator new();
        }
      }

      llvm::SmallPtrSetImplBase::insert_imp_big(&v44, v19);
      if (v20)
      {
        goto LABEL_42;
      }

LABEL_43:
      v24 = v8[1];
      if (v24 != v8)
      {
        while (1)
        {
          v25 = v24[1];
          v26 = v44;
          v27 = v45;
          if (v45 != v44)
          {
            break;
          }

          v30 = HIDWORD(v46);
          if (!HIDWORD(v46))
          {
LABEL_58:
            v28 = &v45[HIDWORD(v46)];
            v29 = v45;
LABEL_59:
            if (v29 == v27)
            {
              v34 = v30;
            }

            else
            {
              v34 = v46;
            }

            if (v28 != &v29[v34])
            {
              goto LABEL_63;
            }

            goto LABEL_45;
          }

          v33 = 8 * HIDWORD(v46);
          while (*v26 != v24 - 1)
          {
            v26 += 8;
            v33 -= 8;
            if (!v33)
            {
              goto LABEL_58;
            }
          }

          if (v26 != &v45[HIDWORD(v46)])
          {
LABEL_63:
            v35 = v24 + 3;
            for (j = v24[4]; j != v35; j = j[1])
            {
              v37 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(j);
              v38 = *(v37 + 44);
              v39 = v38 & 0x7FFFFF;
              if ((v38 & 0x7FFFFF) != 0)
              {
                v40 = v37 + 16 * ((v38 >> 23) & 1) + ((v38 >> 21) & 0x7F8) + 32 * *(v37 + 40) + 64;
                v41 = v50;
                v42 = 24 * v39;
                do
                {
                  if (v41 >= HIDWORD(v50))
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v49[v41] = v40;
                  v41 = v50 + 1;
                  LODWORD(v50) = v50 + 1;
                  v40 += 24;
                  v42 -= 24;
                }

                while (v42);
              }
            }

            goto LABEL_46;
          }

LABEL_45:
          mlir::Block::dropAllDefinedValueUses(v24 - 1);
          (*(*a1 + 24))(a1, v24 - 1);
          v7 = 1;
LABEL_46:
          v24 = v25;
          if (v25 == v8)
          {
            goto LABEL_11;
          }
        }

        v28 = llvm::SmallPtrSetImplBase::doFind(&v44, v24 - 1);
        v27 = v44;
        v29 = v45;
        v30 = HIDWORD(v46);
        if (!v28)
        {
          v31 = v46;
          if (v45 == v44)
          {
            v31 = HIDWORD(v46);
            v32 = HIDWORD(v46);
          }

          else
          {
            v32 = v46;
          }

          if (&v45[v31] != &v45[v32])
          {
            goto LABEL_63;
          }

          goto LABEL_45;
        }

        goto LABEL_59;
      }

LABEL_11:
      v5 = v50;
    }
  }

  else
  {
    v7 = 0;
  }

  if (v49 != v51)
  {
    free(v49);
  }

  if (v45 != v44)
  {
    free(v45);
  }

  return v7 & 1;
}

void mlir::runRegionDCE(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  if (a3)
  {
    do
    {
      v8[0] = 0;
      v6 = 24 * a3;
      v7 = a2;
      do
      {
        propagateLiveness(v7, v8);
        v7 += 3;
        v6 -= 24;
      }

      while (v6);
    }

    while ((v8[0] & 1) != 0);
  }

  else
  {
    v8[0] = 0;
  }

  deleteDeadness(a1, a2, a3, v8);
  llvm::deallocate_buffer(v12, (8 * v14));
}

void propagateLiveness(void *a1, uint64_t a2)
{
  v178[3] = *MEMORY[0x277D85DE8];
  if (*a1 == a1)
  {
    return;
  }

  v3 = a1[1];
  if (v3)
  {
    v4 = (v3 - 8);
  }

  else
  {
    v4 = 0;
  }

  v159 = v4;
  llvm::post_order<mlir::Block *>(&v159, &v165);
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v159, &v161, &v165);
  v162 = v164;
  v163 = 0x800000000;
  v5 = v168;
  if (v168)
  {
    if (v168 >= 9)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(v164, __src, 40 * v168);
    LODWORD(v163) = v5;
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v153, &v155, &v170);
  v156 = v158;
  v157 = 0x800000000;
  v6 = v173;
  if (v173)
  {
    if (v173 >= 9uLL)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(v158, v172, 40 * v173);
    LODWORD(v157) = v6;
  }

  p_opt_class_meths = (&OBJC_PROTOCOL___MLViewerNodePropertySPI + 48);
  while (1)
  {
    if (v163 != v6)
    {
      goto LABEL_26;
    }

    if (!v6)
    {
      break;
    }

    v8 = v156;
    v9 = v162;
    while (1)
    {
      v10 = *v9 == *v8 && v9[2] == v8[2];
      if (!v10 || v9[4] != v8[4])
      {
        break;
      }

      v9 += 5;
      v8 += 5;
      if (v9 == (v162 + 40 * v6))
      {
        goto LABEL_247;
      }
    }

LABEL_26:
    v11 = (*(v162 + 5 * v163 - 5) + 32);
    v12 = *v11;
    v147 = *(v162 + 5 * v163 - 5);
    v148 = v11;
    if (*v11 != v11)
    {
      while (1)
      {
        ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v12);
        v14 = ValuePtr;
        v15 = *(ValuePtr + 44);
        if ((v15 & 0x7FFFFF) != 0)
        {
          v16 = ValuePtr + 16 * ((v15 >> 23) & 1) + ((v15 >> 21) & 0x7F8) + 32 * *(ValuePtr + 40) + 64;
          v17 = 24 * (v15 & 0x7FFFFF);
          do
          {
            propagateLiveness(v16, a2);
            v16 += 24;
            v17 -= 24;
          }

          while (v17);
        }

        {
        }

        v18 = (*(**(v14 + 48) + 32))(*(v14 + 48), p_opt_class_meths[231]);
        v19 = *(a2 + 32);
        v20 = *(a2 + 48);
        if (v18)
        {
          break;
        }

        if (!v20)
        {
          goto LABEL_47;
        }

        v25 = (v20 - 1) & ((v14 >> 4) ^ (v14 >> 9));
        v26 = *(v19 + 8 * v25);
        if (v26 != v14)
        {
          v27 = 1;
          while (v26 != -4096)
          {
            v28 = v25 + v27++;
            v25 = v28 & (v20 - 1);
            v26 = *(v19 + 8 * v25);
            if (v26 == v14)
            {
              goto LABEL_31;
            }
          }

LABEL_47:
          if (mlir::wouldOpBeTriviallyDead(v14, v20))
          {
            v29 = *(v14 + 36);
            if (v29)
            {
              v30 = v14 - 16;
            }

            else
            {
              v30 = 0;
            }

            if (v29)
            {
              for (i = 0; i != v29; ++i)
              {
                NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v30, i);
                processValue(NextResultAtOffset, a2);
              }
            }

            goto LABEL_31;
          }

          v90 = *(a2 + 48);
          if (!v90)
          {
            goto LABEL_205;
          }

          v91 = *(a2 + 32);
          v92 = (v90 - 1) & ((v14 >> 4) ^ (v14 >> 9));
          v93 = (v91 + 8 * v92);
          v94 = *v93;
          if (v14 == *v93)
          {
            v95 = 0;
LABEL_163:
            *a2 |= v95;
            goto LABEL_31;
          }

          v111 = 0;
          v112 = 1;
          while (v94 != -4096)
          {
            v95 = 0;
            if (v111)
            {
              v113 = 0;
            }

            else
            {
              v113 = v94 == -8192;
            }

            if (v113)
            {
              v111 = v93;
            }

            v114 = v92 + v112++;
            v92 = v114 & (v90 - 1);
            v93 = (v91 + 8 * v92);
            v94 = *v93;
            if (v14 == *v93)
            {
              goto LABEL_163;
            }
          }

          v115 = v111 ? v111 : v93;
          v116 = *(a2 + 40);
          if (4 * v116 + 4 < 3 * v90)
          {
            if (v90 + ~v116 - *(a2 + 44) <= v90 >> 3)
            {
              goto LABEL_206;
            }

            *(a2 + 40) = v116 + 1;
            if (*v115 == -4096)
            {
LABEL_162:
              *v115 = v14;
              v95 = 1;
              goto LABEL_163;
            }
          }

          else
          {
LABEL_205:
            v90 *= 2;
LABEL_206:
            llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::grow(a2 + 32, v90);
            v117 = *(a2 + 48);
            if (v117)
            {
              v118 = *(a2 + 32);
              v119 = v117 - 1;
              v120 = (v117 - 1) & ((v14 >> 4) ^ (v14 >> 9));
              v115 = (v118 + 8 * v120);
              v121 = *v115;
              if (v14 != *v115)
              {
                v122 = 0;
                v123 = 1;
                while (v121 != -4096)
                {
                  if (v122)
                  {
                    v124 = 0;
                  }

                  else
                  {
                    v124 = v121 == -8192;
                  }

                  if (v124)
                  {
                    v122 = v115;
                  }

                  v125 = v120 + v123++;
                  v120 = v125 & v119;
                  v115 = (v118 + 8 * (v125 & v119));
                  v121 = *v115;
                  p_opt_class_meths = (&OBJC_PROTOCOL___MLViewerNodePropertySPI + 48);
                  v11 = v148;
                  if (v14 == *v115)
                  {
                    goto LABEL_218;
                  }
                }

                if (v122)
                {
                  v115 = v122;
                }

                p_opt_class_meths = (&OBJC_PROTOCOL___MLViewerNodePropertySPI + 48);
                v11 = v148;
              }
            }

            else
            {
              v115 = 0;
            }

LABEL_218:
            ++*(a2 + 40);
            if (*v115 == -4096)
            {
              goto LABEL_162;
            }
          }

          --*(a2 + 44);
          goto LABEL_162;
        }

LABEL_31:
        v12 = *v12;
        if (v12 == v11)
        {
          goto LABEL_27;
        }
      }

      if (!v20)
      {
        goto LABEL_177;
      }

      v21 = (v20 - 1) & ((v14 >> 4) ^ (v14 >> 9));
      v22 = (v19 + 8 * v21);
      v23 = *v22;
      if (v14 == *v22)
      {
        v24 = 0;
        goto LABEL_60;
      }

      v96 = 0;
      v97 = 1;
      while (v23 != -4096)
      {
        v24 = 0;
        if (v96)
        {
          v98 = 0;
        }

        else
        {
          v98 = v23 == -8192;
        }

        if (v98)
        {
          v96 = v22;
        }

        v99 = v21 + v97++;
        v21 = v99 & (v20 - 1);
        v22 = (v19 + 8 * v21);
        v23 = *v22;
        if (v14 == *v22)
        {
          goto LABEL_60;
        }
      }

      v100 = v96 ? v96 : v22;
      v101 = *(a2 + 40);
      if (4 * v101 + 4 >= (3 * v20))
      {
LABEL_177:
        LODWORD(v20) = 2 * v20;
LABEL_178:
        llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::grow(a2 + 32, v20);
        v102 = *(a2 + 48);
        if (v102)
        {
          v103 = *(a2 + 32);
          v104 = v102 - 1;
          v105 = (v102 - 1) & ((v14 >> 4) ^ (v14 >> 9));
          v100 = (v103 + 8 * v105);
          v106 = *v100;
          if (v14 != *v100)
          {
            v107 = 0;
            v108 = 1;
            while (v106 != -4096)
            {
              if (v107)
              {
                v109 = 0;
              }

              else
              {
                v109 = v106 == -8192;
              }

              if (v109)
              {
                v107 = v100;
              }

              v110 = v105 + v108++;
              v105 = v110 & v104;
              v100 = (v103 + 8 * (v110 & v104));
              v106 = *v100;
              if (v14 == *v100)
              {
                goto LABEL_190;
              }
            }

            if (v107)
            {
              v100 = v107;
            }
          }
        }

        else
        {
          v100 = 0;
        }

LABEL_190:
        ++*(a2 + 40);
        if (*v100 == -4096)
        {
          goto LABEL_59;
        }

LABEL_58:
        --*(a2 + 44);
        goto LABEL_59;
      }

      if (v20 + ~v101 - *(a2 + 44) <= v20 >> 3)
      {
        goto LABEL_178;
      }

      *(a2 + 40) = v101 + 1;
      if (*v100 != -4096)
      {
        goto LABEL_58;
      }

LABEL_59:
      *v100 = v14;
      v24 = 1;
LABEL_60:
      *a2 |= v24;
      v149 = v12;
      if (mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(v14))
      {
        InterfaceFor = mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(v14);
        v151 = v14;
        v152 = InterfaceFor;
        if (v14)
        {
          v150 = *(v14 + 40);
          if (v150)
          {
            v34 = 0;
            while (1)
            {
              mlir::BranchOpInterface::getSuccessorOperands(&v151, v34);
              v35 = v175;
              if (v175)
              {
                break;
              }

LABEL_107:
              if (v177 != v178)
              {
                free(v177);
              }

              if (++v34 == v150)
              {
                goto LABEL_30;
              }
            }

            v36 = 0;
            v37 = *(a2 + 8);
            v38 = *(a2 + 24);
            while (1)
            {
LABEL_68:
              v39 = *(*(v14 + 64 + 16 * ((*(v14 + 44) >> 23) & 1) + ((*(v14 + 44) >> 21) & 0x7F8) + 32 * v34 + 24) + 48);
              v40 = *(v39 + 8 * v36);
              if (!v38)
              {
                goto LABEL_89;
              }

              v41 = 0x9DDFEA08EB382D69 * ((8 * *(v39 + 8 * v36) - 0xAE502812AA7333) ^ HIDWORD(*(v39 + 8 * v36)));
              v42 = 0x9DDFEA08EB382D69 * (HIDWORD(v40) ^ (v41 >> 47) ^ v41);
              v43 = (-348639895 * ((v42 >> 47) ^ v42)) & (v38 - 1);
              v44 = (v37 + 8 * v43);
              v45 = *v44;
              if (v40 != *v44)
              {
                break;
              }

LABEL_70:
              *a2 = *a2;
              if (++v36 == v35)
              {
                goto LABEL_107;
              }
            }

            v46 = 0;
            v47 = 1;
            while (v45 != -4096)
            {
              if (v46)
              {
                v48 = 0;
              }

              else
              {
                v48 = v45 == -8192;
              }

              if (v48)
              {
                v46 = v44;
              }

              v49 = v43 + v47++;
              v43 = v49 & (v38 - 1);
              v44 = (v37 + 8 * v43);
              v45 = *v44;
              if (v40 == *v44)
              {
                goto LABEL_70;
              }
            }

            if (v46)
            {
              v50 = v46;
            }

            else
            {
              v50 = v44;
            }

            v51 = *(a2 + 16);
            if (4 * v51 + 4 < 3 * v38)
            {
              if (v38 + ~v51 - *(a2 + 20) <= v38 >> 3)
              {
                goto LABEL_90;
              }

              *(a2 + 16) = v51 + 1;
              if (*v50 == -4096)
              {
LABEL_67:
                *v50 = v40;
                *a2 |= 1u;
                if (++v36 == v35)
                {
                  goto LABEL_107;
                }

                goto LABEL_68;
              }
            }

            else
            {
LABEL_89:
              v38 *= 2;
LABEL_90:
              llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::grow(a2 + 8, v38);
              v37 = *(a2 + 8);
              v38 = *(a2 + 24);
              if (v38)
              {
                v52 = 0x9DDFEA08EB382D69 * ((8 * v40 - 0xAE502812AA7333) ^ HIDWORD(v40));
                v53 = 0x9DDFEA08EB382D69 * (HIDWORD(v40) ^ (v52 >> 47) ^ v52);
                v54 = v38 - 1;
                v55 = (v38 - 1) & (-348639895 * ((v53 >> 47) ^ v53));
                v50 = (v37 + 8 * v55);
                v56 = *v50;
                if (v40 != *v50)
                {
                  v57 = 0;
                  v58 = 1;
                  while (v56 != -4096)
                  {
                    if (v57)
                    {
                      v59 = 0;
                    }

                    else
                    {
                      v59 = v56 == -8192;
                    }

                    if (v59)
                    {
                      v57 = v50;
                    }

                    v60 = v55 + v58++;
                    v55 = v60 & v54;
                    v50 = (v37 + 8 * (v60 & v54));
                    v56 = *v50;
                    if (v40 == *v50)
                    {
                      goto LABEL_102;
                    }
                  }

                  if (v57)
                  {
                    v50 = v57;
                  }
                }
              }

              else
              {
                v50 = 0;
              }

LABEL_102:
              ++*(a2 + 16);
              if (*v50 == -4096)
              {
                goto LABEL_67;
              }
            }

            --*(a2 + 20);
            goto LABEL_67;
          }

          goto LABEL_30;
        }
      }

      else
      {
        v151 = 0;
        v152 = 0;
      }

      mlir::SuccessorRange::SuccessorRange(&v175, v14);
      v61 = v176;
      if (v176)
      {
        v62 = 0;
        v63 = v175;
        while (1)
        {
          v64 = *(v63 + 32 * v62 + 24);
          v65 = *(v64 + 48);
          v66 = *(v64 + 56);
          if (v65 != v66)
          {
            break;
          }

LABEL_112:
          if (++v62 == v61)
          {
            goto LABEL_30;
          }
        }

        v67 = *(a2 + 8);
        v68 = *(a2 + 24);
        while (1)
        {
LABEL_116:
          v69 = *v65;
          if (!v68)
          {
            goto LABEL_137;
          }

          v70 = 0x9DDFEA08EB382D69 * ((8 * *v65 - 0xAE502812AA7333) ^ HIDWORD(*v65));
          v71 = 0x9DDFEA08EB382D69 * (HIDWORD(v69) ^ (v70 >> 47) ^ v70);
          v72 = (-348639895 * ((v71 >> 47) ^ v71)) & (v68 - 1);
          v73 = (v67 + 8 * v72);
          v74 = *v73;
          if (v69 != *v73)
          {
            break;
          }

LABEL_118:
          *a2 = *a2;
          if (++v65 == v66)
          {
            goto LABEL_112;
          }
        }

        v75 = 0;
        v76 = 1;
        while (v74 != -4096)
        {
          if (v75)
          {
            v77 = 0;
          }

          else
          {
            v77 = v74 == -8192;
          }

          if (v77)
          {
            v75 = v73;
          }

          v78 = v72 + v76++;
          v72 = v78 & (v68 - 1);
          v73 = (v67 + 8 * v72);
          v74 = *v73;
          if (v69 == *v73)
          {
            goto LABEL_118;
          }
        }

        if (v75)
        {
          v79 = v75;
        }

        else
        {
          v79 = v73;
        }

        v80 = *(a2 + 16);
        if (4 * v80 + 4 < 3 * v68)
        {
          if (v68 + ~v80 - *(a2 + 20) <= v68 >> 3)
          {
            goto LABEL_138;
          }

          *(a2 + 16) = v80 + 1;
          if (*v79 == -4096)
          {
LABEL_115:
            *v79 = v69;
            *a2 |= 1u;
            if (++v65 == v66)
            {
              goto LABEL_112;
            }

            goto LABEL_116;
          }
        }

        else
        {
LABEL_137:
          v68 *= 2;
LABEL_138:
          llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::grow(a2 + 8, v68);
          v67 = *(a2 + 8);
          v68 = *(a2 + 24);
          if (v68)
          {
            v81 = 0x9DDFEA08EB382D69 * ((8 * v69 - 0xAE502812AA7333) ^ HIDWORD(v69));
            v82 = 0x9DDFEA08EB382D69 * (HIDWORD(v69) ^ (v81 >> 47) ^ v81);
            v83 = v68 - 1;
            v84 = (v68 - 1) & (-348639895 * ((v82 >> 47) ^ v82));
            v79 = (v67 + 8 * v84);
            v85 = *v79;
            if (v69 != *v79)
            {
              v86 = 0;
              v87 = 1;
              while (v85 != -4096)
              {
                if (v86)
                {
                  v88 = 0;
                }

                else
                {
                  v88 = v85 == -8192;
                }

                if (v88)
                {
                  v86 = v79;
                }

                v89 = v84 + v87++;
                v84 = v89 & v83;
                v79 = (v67 + 8 * (v89 & v83));
                v85 = *v79;
                if (v69 == *v79)
                {
                  goto LABEL_150;
                }
              }

              if (v86)
              {
                v79 = v86;
              }
            }
          }

          else
          {
            v79 = 0;
          }

LABEL_150:
          ++*(a2 + 16);
          if (*v79 == -4096)
          {
            goto LABEL_115;
          }
        }

        --*(a2 + 20);
        goto LABEL_115;
      }

LABEL_30:
      p_opt_class_meths = &OBJC_PROTOCOL___MLViewerNodePropertySPI.opt_class_meths;
      v11 = v148;
      v12 = v149;
      goto LABEL_31;
    }

LABEL_27:
    if (!mlir::Block::isEntryBlock(v147))
    {
      v126 = *(v147 + 6);
      v127 = *(v147 + 7);
      while (v126 != v127)
      {
        v128 = *v126;
        if (*v126)
        {
          v129 = (*(*v126 + 1) & 7) == 7;
        }

        else
        {
          v129 = 1;
        }

        if (v129)
        {
          v130 = *(a2 + 24);
          if (!v130)
          {
            goto LABEL_227;
          }

          v131 = *(a2 + 8);
          v132 = 0x9DDFEA08EB382D69 * ((8 * *v126 - 0xAE502812AA7333) ^ (*v126 >> 32));
          v133 = 0x9DDFEA08EB382D69 * (HIDWORD(v128) ^ (v132 >> 47) ^ v132);
          v134 = v130 - 1;
          v135 = v134 & (-348639895 * ((v133 >> 47) ^ v133));
          v136 = *(v131 + 8 * v135);
          if (v136 != v128)
          {
            v137 = 1;
            while (v136 != -4096)
            {
              v138 = v135 + v137++;
              v135 = v138 & v134;
              v136 = *(v131 + 8 * v135);
              if (v136 == v128)
              {
                goto LABEL_228;
              }
            }

            goto LABEL_227;
          }
        }

        else
        {
          Owner = mlir::detail::OpResultImpl::getOwner(*v126);
          v140 = *(a2 + 48);
          if (!v140)
          {
            goto LABEL_227;
          }

          v141 = *(a2 + 32);
          v142 = v140 - 1;
          v143 = ((Owner >> 4) ^ (Owner >> 9)) & v142;
          v144 = *(v141 + 8 * v143);
          if (v144 != Owner)
          {
            v145 = 1;
            while (v144 != -4096)
            {
              v146 = v143 + v145++;
              v143 = v146 & v142;
              v144 = *(v141 + 8 * v143);
              if (v144 == Owner)
              {
                goto LABEL_228;
              }
            }

LABEL_227:
            processValue(v128, a2);
          }
        }

LABEL_228:
        ++v126;
      }
    }

    LODWORD(v163) = v163 - 1;
    if (v163)
    {
      llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>::traverseChild(&v159);
    }

    v6 = v157;
  }

LABEL_247:
  if (v156 != v158)
  {
    free(v156);
  }

  if (v154 != v153)
  {
    free(v154);
  }

  if (v162 != v164)
  {
    free(v162);
  }

  if (v160 != v159)
  {
    free(v160);
  }

  if (v172 != &v174)
  {
    free(v172);
  }

  if (v171 != v170)
  {
    free(v171);
  }

  if (__src != &v169)
  {
    free(__src);
  }

  if (v166 != v165)
  {
    free(v166);
  }
}

uint64_t deleteDeadness(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v111[3] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = a2;
    v6 = a1;
    v7 = 0;
    v73 = &a2[3 * a3];
    while (*v5 == v5)
    {
LABEL_3:
      v5 += 3;
      if (v5 == v73)
      {
        return v7 & 1;
      }
    }

    v8 = v5[1];
    v74 = v5;
    v76 = v8 != v5 && v8[1] == v5;
    if (v8)
    {
      v9 = (v8 - 1);
    }

    else
    {
      v9 = 0;
    }

    v88 = v9;
    llvm::post_order<mlir::Block *>(&v88, &v96);
    llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v88, &v92, &v96);
    __dst = v95;
    v94 = 0x800000000;
    v10 = v99;
    if (v99)
    {
      if (v99 >= 9uLL)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(v95, __src, 40 * v99);
      LODWORD(v94) = v10;
    }

    llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v82, &v84, &v101);
    v85 = v87;
    v86 = 0x800000000;
    v11 = v104;
    if (v104)
    {
      if (v104 >= 9)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(v87, v103, 40 * v104);
      LODWORD(v86) = v11;
    }

    v12 = v94;
    while (1)
    {
      if (v12 == v11)
      {
        if (!v11)
        {
LABEL_100:
          if (v85 != v87)
          {
            free(v85);
          }

          v5 = v74;
          if (v83 != v82)
          {
            free(v83);
          }

          if (__dst != v95)
          {
            free(__dst);
          }

          if (v89 != v88)
          {
            free(v89);
          }

          if (v103 != &v105)
          {
            free(v103);
          }

          if (v102 != v101)
          {
            free(v102);
          }

          if (__src != &v100)
          {
            free(__src);
          }

          if (v97 != v96)
          {
            free(v97);
          }

          for (i = *(v74[1] + 8); i != v74; i = i[1])
          {
            if (i)
            {
              v71 = (i - 1);
            }

            else
            {
              v71 = 0;
            }

            v96 = a4;
          }

          goto LABEL_3;
        }

        v13 = v85;
        v14 = __dst;
        while (1)
        {
          v15 = *v14 == *v13 && v14[2] == v13[2];
          if (!v15 || v14[4] != v13[4])
          {
            break;
          }

          v14 += 5;
          v13 += 5;
          if (v14 == (__dst + 40 * v11))
          {
            goto LABEL_100;
          }
        }
      }

      v16 = *(__dst + 5 * v12 - 5);
      if (!v76)
      {
        Terminator = mlir::Block::getTerminator(v16);
        v75 = v7;
        v78 = Terminator;
        if (mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(Terminator))
        {
          if (Terminator)
          {
            InterfaceFor = mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(Terminator);
            v80 = Terminator;
            v81 = InterfaceFor;
            v19 = *(Terminator + 40);
            if (v19)
            {
              v20 = 0;
              v77 = Terminator + 64;
              while (1)
              {
                mlir::BranchOpInterface::getSuccessorOperands(&v80, (v19 + ~v20));
                v21 = (HIDWORD(v108) + v106);
                if (HIDWORD(v108) + v106)
                {
                  break;
                }

LABEL_51:
                if (v109 != v111)
                {
                  free(v109);
                }

                if (++v20 == v19)
                {
                  goto LABEL_53;
                }
              }

              v22 = 0;
              v23 = *(((v77 + 16 * ((*(v78 + 44) >> 23) & 1) + ((*(v78 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * (v19 + ~v20) + 24);
              while (1)
              {
                v24 = v21 + ~v22;
                v25 = *(a4 + 24);
                if (v25)
                {
                  v26 = *(*(v23 + 48) + 8 * v24);
                  v27 = *(a4 + 8);
                  v28 = 0x9DDFEA08EB382D69 * ((8 * v26 - 0xAE502812AA7333) ^ HIDWORD(v26));
                  v29 = 0x9DDFEA08EB382D69 * (HIDWORD(v26) ^ (v28 >> 47) ^ v28);
                  v30 = v25 - 1;
                  v31 = (-348639895 * ((v29 >> 47) ^ v29)) & v30;
                  v32 = *(v27 + 8 * v31);
                  if (v32 == v26)
                  {
                    goto LABEL_44;
                  }

                  v33 = 1;
                  while (v32 != -4096)
                  {
                    v34 = v31 + v33++;
                    v31 = v34 & v30;
                    v32 = *(v27 + 8 * v31);
                    if (v32 == v26)
                    {
                      goto LABEL_44;
                    }
                  }
                }

                mlir::MutableOperandRange::erase(&v107, v24 - v106, 1u);
LABEL_44:
                if (++v22 == v21)
                {
                  goto LABEL_51;
                }
              }
            }
          }

          else
          {
            v80 = 0;
            v81 = 0;
          }
        }

        else
        {
          v80 = 0;
          v81 = 0;
        }

LABEL_53:
        v6 = a1;
        v7 = v75;
      }

      v37 = *(v16 + 4);
      v36 = (v16 + 32);
      v35 = v37;
      if (v37 != v36)
      {
        do
        {
          while (1)
          {
            v40 = *v35;
            ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v35);
            v42 = ValuePtr;
            v43 = *(a4 + 48);
            if (v43)
            {
              break;
            }

LABEL_70:
            v52 = ValuePtr[9];
            if (v52)
            {
              v53 = (ValuePtr - 4);
            }

            else
            {
              v53 = 0;
            }

            if (v52)
            {
              for (j = 0; j != v52; ++j)
              {
                NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v53, j);
                while (1)
                {
                  v56 = *NextResultAtOffset;
                  if (!*NextResultAtOffset)
                  {
                    break;
                  }

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

                  *v56 = 0;
                  v56[1] = 0;
                  v56[3] = 0;
                }
              }
            }

            v6 = a1;
            (*(*a1 + 16))(a1, v42);
            v7 = 1;
            v35 = v40;
            if (v40 == v36)
            {
              goto LABEL_55;
            }
          }

          v44 = *(a4 + 32);
          v45 = v43 - 1;
          v46 = ((ValuePtr >> 4) ^ (ValuePtr >> 9)) & v45;
          v47 = *(v44 + 8 * v46);
          if (v47 != ValuePtr)
          {
            v50 = 1;
            while (v47 != -4096)
            {
              v51 = v46 + v50++;
              v46 = v51 & v45;
              v47 = *(v44 + 8 * v46);
              if (v47 == ValuePtr)
              {
                goto LABEL_61;
              }
            }

            goto LABEL_70;
          }

LABEL_61:
          v48 = ValuePtr[11];
          if ((v48 & 0x7FFFFF) != 0)
          {
            v49 = &ValuePtr[8 * ValuePtr[10] + 16 + 4 * ((v48 >> 23) & 1)] + ((v48 >> 21) & 0x7F8);
          }

          else
          {
            v49 = 0;
          }

          v7 |= deleteDeadness(v6, v49);
          v35 = v40;
        }

        while (v40 != v36);
      }

LABEL_55:
      v12 = v94 - 1;
      LODWORD(v94) = v94 - 1;
      if (v94)
      {
        v38 = __dst + 40 * v12;
        v39 = *(v38 - 3);
        if (v39 != *(v38 - 1))
        {
          while (1)
          {
            v59 = *(v38 - 4);
            *(v38 - 3) = v39 + 1;
            v60 = *(v59 + 32 * v39 + 24);
            if (v89 != v88)
            {
              goto LABEL_84;
            }

            v62 = v91;
            if (v91)
            {
              v63 = 8 * v91;
              v64 = v88;
              while (*v64 != v60)
              {
                v64 = (v64 + 8);
                v63 -= 8;
                if (!v63)
                {
                  goto LABEL_90;
                }
              }

              goto LABEL_94;
            }

LABEL_90:
            if (v91 < v90)
            {
              ++v91;
              *(v88 + v62) = v60;
LABEL_92:
              v65 = mlir::SuccessorRange::SuccessorRange(&v106, v60);
              v66 = v106;
              mlir::SuccessorRange::SuccessorRange(v65, v60);
              v68 = v106;
              v67 = v107;
              if (v94 >= HIDWORD(v94))
              {
                v106 = v60;
                v107 = v66;
                v108 = 0;
                v109 = v68;
                v110 = v67;
                if (__dst <= &v106 && __dst + 40 * v94 > &v106)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v69 = (__dst + 40 * v94);
              *v69 = v60;
              v69[1] = v66;
              v69[2] = 0;
              v69[3] = v68;
              v69[4] = v67;
              v12 = v94 + 1;
              LODWORD(v94) = v94 + 1;
LABEL_94:
              v38 = __dst + 40 * v12;
              v39 = *(v38 - 3);
              if (v39 == *(v38 - 1))
              {
                break;
              }
            }

            else
            {
LABEL_84:
              llvm::SmallPtrSetImplBase::insert_imp_big(&v88, v60);
              if (v61)
              {
                goto LABEL_92;
              }

              v12 = v94;
              v38 = __dst + 40 * v94;
              v39 = *(v38 - 3);
              if (v39 == *(v38 - 1))
              {
                break;
              }
            }
          }
        }
      }

      v11 = v86;
    }
  }

  LOBYTE(v7) = 0;
  return v7 & 1;
}

void mlir::simplifyRegions(uint64_t a1, void *a2, unint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  mlir::eraseUnreachableBlocks(a1, a2, a3);
  v8[1] = 0;
  v8[2] = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (a3)
  {
    do
    {
      LOBYTE(v8[0]) = 0;
      v6 = 24 * a3;
      v7 = a2;
      do
      {
        propagateLiveness(v7, v8);
        v7 += 3;
        v6 -= 24;
      }

      while (v6);
    }

    while ((v8[0] & 1) != 0);
  }

  else
  {
    LOBYTE(v8[0]) = 0;
  }

  deleteDeadness(a1, a2, a3, v8);
  llvm::deallocate_buffer(v10, (8 * v12));
}

void mergeIdenticalBlocks(uint64_t a1, char *a2, uint64_t a3)
{
  v302 = *MEMORY[0x277D85DE8];
  v285 = 0;
  *v284 = 0u;
  v286 = &v288;
  v287 = 0x100000000;
  if (a3)
  {
    v4 = 24 * a3;
    do
    {
      v300[0] = a2;
      llvm::SetVector<mlir::CallGraphNode *,llvm::SmallVector<mlir::CallGraphNode *,1u>,llvm::DenseSet<mlir::CallGraphNode *,llvm::DenseMapInfo<mlir::CallGraphNode *,void>>,1u>::insert(v284, v300);
      a2 += 24;
      v4 -= 24;
    }

    while (v4);
    v5 = v287;
    if (v287)
    {
      v279 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      while (1)
      {
        v6 = *(v286 + v5 - 1);
        if (v285)
        {
          v7 = ((v6 >> 4) ^ (v6 >> 9)) & (v285 - 1);
          v8 = *(v284[0] + v7);
          if (v6 == v8)
          {
LABEL_9:
            *(v284[0] + v7) = -8192;
            v284[1] = vadd_s32(v284[1], 0x1FFFFFFFFLL);
          }

          else
          {
            v270 = 1;
            while (v8 != -4096)
            {
              v271 = v7 + v270++;
              v7 = v271 & (v285 - 1);
              v8 = *(v284[0] + v7);
              if (v6 == v8)
              {
                goto LABEL_9;
              }
            }
          }
        }

        LODWORD(v287) = v5 - 1;
        v280 = v6;
        if (*v6 != v6)
        {
          v9 = v6[1];
          if (v9 == v6 || v9[1] != v6)
          {
            v283 = 0;
            v281 = 0;
            v282 = 0;
            v10 = v9[1];
            if (v10 == v6)
            {
              llvm::deallocate_buffer(0, 0);
            }

            while (1)
            {
              if (v10)
              {
                v14 = (v10 - 1);
              }

              else
              {
                v14 = 0;
              }

              mlir::SuccessorRange::SuccessorRange(v300, v14);
              NextResultAtOffset = 0;
              v15 = llvm::DenseMapBase<llvm::DenseMap<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>,mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>::LookupBucketFor<mlir::SuccessorRange>(&v281, v300, &NextResultAtOffset);
              v16 = NextResultAtOffset;
              if (v15)
              {
                v11 = *(NextResultAtOffset + 6);
                v13 = NextResultAtOffset + 24;
                v12 = NextResultAtOffset + 16;
                if (v11 >= *(NextResultAtOffset + 7))
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                goto LABEL_16;
              }

              *&v294 = NextResultAtOffset;
              v17 = v283;
              if (4 * v282 + 4 >= 3 * v283)
              {
                break;
              }

              if (v283 + ~v282 - HIDWORD(v282) <= v283 >> 3)
              {
                goto LABEL_28;
              }

              LODWORD(v282) = v282 + 1;
              if (*NextResultAtOffset != -4096)
              {
                goto LABEL_26;
              }

LABEL_15:
              v11 = 0;
              *v16 = *v300;
              *(v16 + 2) = v16 + 32;
              v12 = v16 + 16;
              *(v16 + 3) = 0x100000000;
              v13 = v16 + 24;
LABEL_16:
              *(*v12 + 8 * v11) = v14;
              ++*v13;
              v10 = v10[1];
              if (v10 == v6)
              {
                v18 = v281;
                v19 = v283;
                if (!v282)
                {
                  goto LABEL_273;
                }

                v20 = v281;
                if (v283)
                {
                  v21 = 40 * v283;
                  v20 = v281;
                  while ((*v20 | 0x1000) == 0xFFFFFFFFFFFFF000)
                  {
                    v20 = (v20 + 40);
                    v21 -= 40;
                    if (!v21)
                    {
                      goto LABEL_273;
                    }
                  }
                }

                v22 = (v281 + 40 * v283);
                if (v20 == v22)
                {
LABEL_273:
                  if (!v283)
                  {
                    goto LABEL_450;
                  }

                  goto LABEL_274;
                }

                while (1)
                {
                  v23 = *(v20 + 6);
                  if (v23 != 1)
                  {
                    v24 = *(v20 + 2);
                    v289 = &v291;
                    v290 = 0x100000000;
                    if (v23)
                    {
                      break;
                    }
                  }

                  do
                  {
                    v20 = (v20 + 40);
                    if (v20 == v22)
                    {
                      goto LABEL_449;
                    }
                  }

                  while ((*v20 | 0x1000) == 0xFFFFFFFFFFFFF000);
                  if (v20 == v22)
                  {
LABEL_449:
                    v19 = v283;
                    v18 = v281;
                    if (!v283)
                    {
LABEL_450:
                      llvm::deallocate_buffer(v18, 0);
                    }

LABEL_274:
                    v163 = v18 + 32;
                    v164 = 40 * v19;
                    while (1)
                    {
                      if ((*(v163 - 4) | 0x1000) != 0xFFFFFFFFFFFFF000)
                      {
                        v165 = *(v163 - 2);
                        if (v163 != v165)
                        {
                          free(v165);
                        }
                      }

                      v163 += 40;
                      v164 -= 40;
                      if (!v164)
                      {
                        llvm::deallocate_buffer(v281, (40 * v283));
                      }
                    }
                  }
                }

                v294 = *v24;
                v29 = v294;
                v295 = 0;
                v296 = 0;
                v297 = 0;
                v30 = v294 + 32;
                v31 = *(v294 + 40);
                if (v31 == v294 + 32)
                {
                  goto LABEL_88;
                }

                v32 = (*(v294 + 56) - *(v294 + 48)) >> 3;
                while (2)
                {
                  ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v31);
                  v39 = *(ValuePtr + 36);
                  if (v39)
                  {
                    if (!v297)
                    {
                      goto LABEL_68;
                    }

                    v33 = (v297 - 1) & ((ValuePtr >> 4) ^ (ValuePtr >> 9));
                    v34 = v295 + 16 * v33;
                    v35 = *v34;
                    if (ValuePtr == *v34)
                    {
LABEL_46:
                      LODWORD(v32) = v39 + v32;
                      goto LABEL_47;
                    }

                    v40 = 0;
                    v41 = 1;
                    while (v35 != -4096)
                    {
                      if (v40)
                      {
                        v42 = 0;
                      }

                      else
                      {
                        v42 = v35 == -8192;
                      }

                      if (v42)
                      {
                        v40 = v34;
                      }

                      v43 = v33 + v41++;
                      v33 = v43 & (v297 - 1);
                      v34 = v295 + 16 * v33;
                      v35 = *v34;
                      if (ValuePtr == *v34)
                      {
                        goto LABEL_46;
                      }
                    }

                    if (v40)
                    {
                      v44 = v40;
                    }

                    else
                    {
                      v44 = v34;
                    }

                    if (4 * v296 + 4 < 3 * v297)
                    {
                      if (v297 + ~v296 - HIDWORD(v296) > v297 >> 3)
                      {
                        LODWORD(v296) = v296 + 1;
                        if (*v44 == -4096)
                        {
                          goto LABEL_54;
                        }

                        goto LABEL_53;
                      }

                      v45 = ValuePtr;
                      llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::grow(&v295, v297);
                      v46 = v297;
                      if (v297)
                      {
                        goto LABEL_69;
                      }
                    }

                    else
                    {
LABEL_68:
                      v45 = ValuePtr;
                      llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::grow(&v295, 2 * v297);
                      v46 = v297;
                      if (v297)
                      {
LABEL_69:
                        ValuePtr = v45;
                        v47 = v46 - 1;
                        v48 = (v46 - 1) & ((v45 >> 4) ^ (v45 >> 9));
                        v44 = v295 + 16 * v48;
                        v49 = *v44;
                        if (v45 != *v44)
                        {
                          v50 = 0;
                          v51 = 1;
                          while (v49 != -4096)
                          {
                            if (v50)
                            {
                              v52 = 0;
                            }

                            else
                            {
                              v52 = v49 == -8192;
                            }

                            if (v52)
                            {
                              v50 = v44;
                            }

                            v53 = v48 + v51++;
                            v48 = v53 & v47;
                            v44 = v295 + 16 * (v53 & v47);
                            v49 = *v44;
                            if (v45 == *v44)
                            {
                              goto LABEL_81;
                            }
                          }

                          if (v50)
                          {
                            v44 = v50;
                          }
                        }

LABEL_81:
                        LODWORD(v296) = v296 + 1;
                        if (*v44 == -4096)
                        {
LABEL_54:
                          *v44 = ValuePtr;
                          *(v44 + 2) = v32;
                          goto LABEL_46;
                        }

LABEL_53:
                        --HIDWORD(v296);
                        goto LABEL_54;
                      }
                    }

                    v44 = 0;
                    ValuePtr = v45;
                    goto LABEL_81;
                  }

LABEL_47:
                  v36 = mlir::OperationEquivalence::computeHash(ValuePtr, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::ignoreHashValue, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::ignoreHashValue, 1);
                  v37 = __ROR8__(v36 + 16, 16);
                  *(&v294 + 1) = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v37 ^ ((0x9DDFEA08EB382D69 * (*(&v294 + 1) ^ 0xFF51AFD7ED558CCDLL ^ v37)) >> 47) ^ (0x9DDFEA08EB382D69 * (*(&v294 + 1) ^ 0xFF51AFD7ED558CCDLL ^ v37)))) ^ ((0x9DDFEA08EB382D69 * (v37 ^ ((0x9DDFEA08EB382D69 * (*(&v294 + 1) ^ 0xFF51AFD7ED558CCDLL ^ v37)) >> 47) ^ (0x9DDFEA08EB382D69 * (*(&v294 + 1) ^ 0xFF51AFD7ED558CCDLL ^ v37)))) >> 47))) ^ v36;
                  v31 = *(v31 + 8);
                  if (v31 != v30)
                  {
                    continue;
                  }

                  break;
                }

                v31 = *(v29 + 5);
LABEL_88:
                while (v31 != v30)
                {
                  v54 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v31);
                  v55 = *(v54 + 44);
                  v56 = v55 & 0x7FFFFF;
                  if ((v55 & 0x7FFFFF) != 0)
                  {
                    v57 = (v54 + 16 * ((v55 >> 23) & 1) + ((v55 >> 21) & 0x7F8) + 32 * *(v54 + 40) + 64);
                    v58 = 24 * v56;
                    while (v57 == *v57)
                    {
                      v57 += 3;
                      v58 -= 24;
                      if (!v58)
                      {
                        goto LABEL_87;
                      }
                    }

                    goto LABEL_42;
                  }

LABEL_87:
                  v31 = *(v31 + 8);
                }

                v60 = *(v29 + 6);
                for (i = *(v29 + 7); v60 != i; v60 = (v60 + 8))
                {
                  if (mlir::Value::isUsedOutsideOfBlock(v60, v29))
                  {
                    goto LABEL_42;
                  }
                }

                if (!v290)
                {
                  v25 = 0;
                  if (HIDWORD(v290))
                  {
                    goto LABEL_41;
                  }

                  goto LABEL_268;
                }

                v61 = v289;
                v62 = v289 + 112 * v290;
                v276 = v62;
LABEL_101:
                if (*(v61 + 1) != *(&v294 + 1))
                {
                  goto LABEL_100;
                }

                v63 = *v61;
                v64 = v294;
                ArgumentTypes = mlir::Block::getArgumentTypes(*v61);
                v67 = v66;
                v68 = mlir::Block::getArgumentTypes(v64);
                if (v67 - ArgumentTypes != v69 - v68)
                {
                  goto LABEL_100;
                }

                for (; ArgumentTypes != v67; v68 += 8)
                {
                  if ((*(*v68 + 8) ^ *(*ArgumentTypes + 8)) > 7)
                  {
                    goto LABEL_100;
                  }

                  ArgumentTypes += 8;
                }

                v300[0] = &v301;
                v300[1] = 0x800000000;
                v70 = *(v63 + 5);
                v71 = *(v294 + 40);
                v72 = v294 + 32;
                if (v70 != (v63 + 32))
                {
                  v277 = 0;
                  v274 = v294 + 32;
                  do
                  {
                    if (v71 == v72)
                    {
                      goto LABEL_184;
                    }

                    v73 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v70);
                    v74 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v71);
                    if (!mlir::OperationEquivalence::isEquivalentTo(v73, v74, llvm::function_ref<llvm::LogicalResult ()(mlir::Value,mlir::Value)>::callback_fn<llvm::LogicalResult ()(mlir::Value,mlir::Value)>, mlir::OperationEquivalence::ignoreValueEquivalence, 0, v75, 1u, v76, 0, v273))
                    {
                      goto LABEL_184;
                    }

                    v77 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v70);
                    if ((*(v77 + 46) & 0x80) != 0)
                    {
                      v278 = *(v77 + 72);
                      v78 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v71);
                      v275 = v71;
                      if ((*(v78 + 46) & 0x80) != 0)
                      {
                        goto LABEL_112;
                      }
                    }

                    else
                    {
                      v278 = 0;
                      v78 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v71);
                      v275 = v71;
                      if ((*(v78 + 46) & 0x80) != 0)
                      {
LABEL_112:
                        v79 = *(v78 + 72);
                        v80 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v70);
                        if ((*(v80 + 46) & 0x80) == 0)
                        {
                          goto LABEL_168;
                        }

                        goto LABEL_113;
                      }
                    }

                    v79 = 0;
                    v80 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v70);
                    if ((*(v80 + 46) & 0x80) == 0)
                    {
                      goto LABEL_168;
                    }

LABEL_113:
                    v81 = *(v80 + 68);
                    if (v81)
                    {
                      v82 = 0;
                      while (1)
                      {
                        v83 = 32 * v82;
                        v84 = *(v278 + v83 + 24);
                        v299 = v84;
                        v85 = *(v79 + v83 + 24);
                        v298 = v85;
                        if (v84 == v85)
                        {
                          goto LABEL_116;
                        }

                        if ((v85[1] ^ v84[1]) > 7)
                        {
                          goto LABEL_184;
                        }

                        ParentBlock = mlir::Value::getParentBlock(&v299);
                        if ((ParentBlock == v63) == (mlir::Value::getParentBlock(&v298) != v64))
                        {
                          goto LABEL_184;
                        }

                        if (ParentBlock == v63)
                        {
                          break;
                        }

                        NextResultAtOffset = v299;
                        DefiningOp = mlir::Value::getDefiningOp(&NextResultAtOffset);
                        v88 = mlir::Value::getParentBlock(&NextResultAtOffset);
                        if (DefiningOp == mlir::Block::getTerminator(v88))
                        {
                          v95 = *v63;
                          v96 = mlir::Value::getParentBlock(&NextResultAtOffset);
                          if (v95)
                          {
                            v97 = v96;
                            while (mlir::PredecessorIterator::unwrap(v95) != v97)
                            {
                              v95 = *v95;
                              if (!v95)
                              {
                                goto LABEL_122;
                              }
                            }

LABEL_184:
                            v123 = 0;
LABEL_185:
                            if (v300[0] != &v301)
                            {
                              free(v300[0]);
                            }

                            v62 = v276;
                            if ((v123 & 1) == 0)
                            {
LABEL_100:
                              v61 += 112;
                              if (v61 != v62)
                              {
                                goto LABEL_101;
                              }

                              v25 = v290;
                              if (v290 < HIDWORD(v290))
                              {
LABEL_41:
                                v26 = v289 + 112 * v25;
                                *v26 = v294;
                                *(v26 + 8) = 0;
                                *(v26 + 2) = 0;
                                *(v26 + 3) = 0;
                                *(v26 + 2) = v295;
                                v295 = 0;
                                *(v26 + 6) = v296;
                                LODWORD(v296) = 0;
                                v27 = *(v26 + 7);
                                *(v26 + 7) = HIDWORD(v296);
                                HIDWORD(v296) = v27;
                                v28 = *(v26 + 8);
                                *(v26 + 8) = v297;
                                v297 = v28;
                                *(v26 + 12) = 0;
                                v26 += 96;
                                *(v26 - 7) = 0;
                                *(v26 - 6) = 0;
                                *(v26 - 10) = 0;
                                *(v26 - 4) = v26 - 16;
                                *(v26 - 3) = 0x100000000;
                                *(v26 + 1) = 0;
                                *(v26 - 1) = v26;
                                LODWORD(v290) = v290 + 1;
                                goto LABEL_42;
                              }

LABEL_268:
                              v300[0] = 0;
                              llvm::SmallVectorBase<unsigned int>::mallocForGrow();
                            }

LABEL_42:
                            llvm::deallocate_buffer(v295, (16 * v297));
                          }
                        }

LABEL_122:
                        NextResultAtOffset = v298;
                        v89 = mlir::Value::getDefiningOp(&NextResultAtOffset);
                        v90 = mlir::Value::getParentBlock(&NextResultAtOffset);
                        if (v89 == mlir::Block::getTerminator(v90))
                        {
                          v98 = *v64;
                          v99 = mlir::Value::getParentBlock(&NextResultAtOffset);
                          if (v98)
                          {
                            v100 = v99;
                            while (mlir::PredecessorIterator::unwrap(v98) != v100)
                            {
                              v98 = *v98;
                              if (!v98)
                              {
                                goto LABEL_123;
                              }
                            }

                            goto LABEL_184;
                          }
                        }

LABEL_123:
                        v91 = v300[1];
                        if (LODWORD(v300[1]) >= HIDWORD(v300[1]))
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod();
                        }

                        v92 = v300[0] + 8 * LODWORD(v300[1]);
                        *v92 = v277;
                        v92[1] = v82;
                        LODWORD(v300[1]) = v91 + 1;
LABEL_116:
                        if (++v82 == v81)
                        {
                          goto LABEL_168;
                        }
                      }

                      if (v299 && (*(v299 + 1) & 7) == 7)
                      {
                        v93 = *(v299 + 6);
                        v94 = v298;
                        if (!v298)
                        {
                          goto LABEL_154;
                        }

LABEL_151:
                        if ((*(v94 + 1) & 7) == 7)
                        {
                          if (v93 != v94[6])
                          {
                            goto LABEL_184;
                          }

                          goto LABEL_116;
                        }

                        goto LABEL_154;
                      }

                      NextResultAtOffset = v299;
                      v101 = mlir::Value::getDefiningOp(&NextResultAtOffset);
                      v102 = *(v61 + 2);
                      v103 = *(v61 + 8);
                      if (v103)
                      {
                        v104 = ((v101 >> 4) ^ (v101 >> 9)) & (v103 - 1);
                        v105 = *(v102 + 16 * v104);
                        if (v105 != v101)
                        {
                          v106 = 1;
                          while (v105 != -4096)
                          {
                            v107 = v104 + v106++;
                            v104 = v107 & (v103 - 1);
                            v105 = *(v102 + 16 * v104);
                            if (v105 == v101)
                            {
                              goto LABEL_146;
                            }
                          }

                          goto LABEL_145;
                        }
                      }

                      else
                      {
LABEL_145:
                        v104 = *(v61 + 8);
                      }

LABEL_146:
                      v108 = *(v102 + 16 * v104 + 8);
                      if (!NextResultAtOffset || (*(NextResultAtOffset + 1) & 7) != 6)
                      {
                        v93 = (*(NextResultAtOffset + 1) & 7) + v108;
                        v94 = v298;
                        if (!v298)
                        {
                          goto LABEL_154;
                        }

                        goto LABEL_151;
                      }

                      v93 = *(NextResultAtOffset + 4) + 6 + v108;
                      v94 = v298;
                      if (v298)
                      {
                        goto LABEL_151;
                      }

LABEL_154:
                      NextResultAtOffset = v94;
                      v109 = mlir::Value::getDefiningOp(&NextResultAtOffset);
                      if (v297)
                      {
                        v110 = ((v109 >> 4) ^ (v109 >> 9)) & (v297 - 1);
                        v111 = *(v295 + 2 * v110);
                        if (v111 != v109)
                        {
                          v112 = 1;
                          while (v111 != -4096)
                          {
                            v113 = v110 + v112++;
                            v110 = v113 & (v297 - 1);
                            v111 = *(v295 + 2 * v110);
                            if (v111 == v109)
                            {
                              goto LABEL_161;
                            }
                          }

                          goto LABEL_160;
                        }
                      }

                      else
                      {
LABEL_160:
                        v110 = v297;
                      }

LABEL_161:
                      v114 = *(v295 + 4 * v110 + 2);
                      if (NextResultAtOffset && (*(NextResultAtOffset + 1) & 7) == 6)
                      {
                        if (v93 != *(NextResultAtOffset + 4) + 6 + v114)
                        {
                          goto LABEL_184;
                        }
                      }

                      else if (v93 != (*(NextResultAtOffset + 1) & 7) + v114)
                      {
                        goto LABEL_184;
                      }

                      goto LABEL_116;
                    }

LABEL_168:
                    v115 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v275);
                    v116 = *(v115 + 36);
                    if (v116)
                    {
                      v117 = v115 - 16;
                    }

                    else
                    {
                      v117 = 0;
                    }

                    if (v116)
                    {
                      v118 = 0;
                      do
                      {
                        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v117, v118);
                        if (mlir::Value::isUsedOutsideOfBlock(&NextResultAtOffset, v64))
                        {
                          goto LABEL_184;
                        }
                      }

                      while (v116 != ++v118);
                    }

                    v119 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v70);
                    v120 = *(v119 + 36);
                    if (v120)
                    {
                      v121 = v119 - 16;
                    }

                    else
                    {
                      v121 = 0;
                    }

                    if (v120)
                    {
                      v122 = 0;
                      do
                      {
                        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v121, v122);
                        if (mlir::Value::isUsedOutsideOfBlock(&NextResultAtOffset, v63))
                        {
                          goto LABEL_184;
                        }
                      }

                      while (v120 != ++v122);
                    }

                    v70 = v70[1];
                    v71 = *(v275 + 8);
                    ++v277;
                    v72 = v274;
                  }

                  while (v70 != (v63 + 32));
                }

                if (v71 != v72)
                {
                  goto LABEL_184;
                }

                if (LODWORD(v300[1]))
                {
                  v124 = v300[0];
                  while (1)
                  {
                    v125 = *(v61 + 12);
                    v126 = v61 + 96;
                    if (*(v61 + 11) != v61 + 96)
                    {
                      v127 = *(v61 + 12);
                      v128 = v61 + 96;
                      if (v125)
                      {
                        do
                        {
                          v126 = v127;
                          v127 = *(v127 + 1);
                        }

                        while (v127);
                      }

                      else
                      {
                        do
                        {
                          v126 = *(v128 + 2);
                          v42 = *v126 == v128;
                          v128 = v126;
                        }

                        while (v42);
                      }

                      v129 = *(v126 + 7);
                      v130 = *v124;
                      if (v129 >= *v124 && (v130 < v129 || *(v126 + 8) >= v124[1]))
                      {
                        break;
                      }
                    }

                    if (v125)
                    {
                      v131 = v126 + 8;
                    }

                    else
                    {
                      v131 = v61 + 96;
                    }

                    if (!*v131)
                    {
                      goto LABEL_211;
                    }

LABEL_189:
                    v124 += 2;
                    if (v124 == (v300[0] + 8 * LODWORD(v300[1])))
                    {
                      goto LABEL_212;
                    }
                  }

                  if (!v125)
                  {
LABEL_211:
                    operator new();
                  }

                  v132 = v124[1];
                  while (2)
                  {
                    while (1)
                    {
                      v133 = v125;
                      v134 = *(v125 + 7);
                      if (v130 < v134)
                      {
                        break;
                      }

                      if (v134 >= v130)
                      {
                        v135 = *(v133 + 8);
                        if (v132 < v135)
                        {
                          break;
                        }

                        if (v135 >= v132)
                        {
                          goto LABEL_189;
                        }
                      }

                      v125 = v133[1];
                      if (!v125)
                      {
                        goto LABEL_211;
                      }
                    }

                    v125 = *v133;
                    if (!*v133)
                    {
                      goto LABEL_211;
                    }

                    continue;
                  }
                }

LABEL_212:
                if (*(v61 + 12))
                {
                  llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v61 + 40), &v294, &NextResultAtOffset);
                  if (v293 == 1)
                  {
                    v136 = *(v61 + 18);
                    if (v136 >= *(v61 + 19))
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    *(*(v61 + 8) + 8 * v136) = v294;
                    ++*(v61 + 18);
                  }

                  goto LABEL_263;
                }

                v137 = *(v61 + 8);
                v138 = *(v61 + 18);
                v139 = v137;
                if (v138)
                {
                  v140 = v294;
                  v141 = 8 * v138;
                  v139 = *(v61 + 8);
                  do
                  {
                    if (*v139 == v294)
                    {
                      goto LABEL_262;
                    }

                    ++v139;
                    v141 -= 8;
                  }

                  while (v141);
                  if (v138 < *(v61 + 19))
                  {
LABEL_221:
                    v137[v138] = v140;
                    v142 = *(v61 + 18) + 1;
                    *(v61 + 18) = v142;
                    if (v142 >= 2)
                    {
                      v143 = *(v61 + 8);
                      v144 = &v143[v142];
                      v145 = *(v61 + 5);
                      v146 = *(v61 + 14);
                      while (1)
                      {
                        if (!v146)
                        {
                          goto LABEL_244;
                        }

                        v147 = ((*v143 >> 4) ^ (*v143 >> 9)) & (v146 - 1);
                        v148 = (v145 + 8 * v147);
                        v149 = *v148;
                        if (*v143 != *v148)
                        {
                          break;
                        }

LABEL_224:
                        ++v143;
                        v123 = 1;
                        if (v143 == v144)
                        {
                          goto LABEL_185;
                        }
                      }

                      v150 = 0;
                      v151 = 1;
                      while (v149 != -4096)
                      {
                        if (v150)
                        {
                          v152 = 0;
                        }

                        else
                        {
                          v152 = v149 == -8192;
                        }

                        if (v152)
                        {
                          v150 = v148;
                        }

                        v153 = v147 + v151++;
                        v147 = v153 & (v146 - 1);
                        v148 = (v145 + 8 * v147);
                        v149 = *v148;
                        if (*v143 == *v148)
                        {
                          goto LABEL_224;
                        }
                      }

                      if (v150)
                      {
                        v154 = v150;
                      }

                      else
                      {
                        v154 = v148;
                      }

                      v155 = *(v61 + 12);
                      if (4 * v155 + 4 < 3 * v146)
                      {
                        if (v146 + ~v155 - *(v61 + 13) <= v146 >> 3)
                        {
                          goto LABEL_245;
                        }

                        *(v61 + 12) = v155 + 1;
                        if (*v154 == -4096)
                        {
LABEL_230:
                          *v154 = *v143;
                          goto LABEL_224;
                        }
                      }

                      else
                      {
LABEL_244:
                        v146 *= 2;
LABEL_245:
                        llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::grow((v61 + 40), v146);
                        v145 = *(v61 + 5);
                        v146 = *(v61 + 14);
                        if (v146)
                        {
                          v156 = v146 - 1;
                          v157 = ((*v143 >> 4) ^ (*v143 >> 9)) & (v146 - 1);
                          v154 = (v145 + 8 * v157);
                          v158 = *v154;
                          if (*v143 != *v154)
                          {
                            v159 = 0;
                            v160 = 1;
                            while (v158 != -4096)
                            {
                              if (v159)
                              {
                                v161 = 0;
                              }

                              else
                              {
                                v161 = v158 == -8192;
                              }

                              if (v161)
                              {
                                v159 = v154;
                              }

                              v162 = v157 + v160++;
                              v157 = v162 & v156;
                              v154 = (v145 + 8 * (v162 & v156));
                              v158 = *v154;
                              if (*v143 == *v154)
                              {
                                goto LABEL_257;
                              }
                            }

                            if (v159)
                            {
                              v154 = v159;
                            }
                          }
                        }

                        else
                        {
                          v154 = 0;
                        }

LABEL_257:
                        ++*(v61 + 12);
                        if (*v154 == -4096)
                        {
                          goto LABEL_230;
                        }
                      }

                      --*(v61 + 13);
                      goto LABEL_230;
                    }

LABEL_263:
                    v123 = 1;
                    goto LABEL_185;
                  }
                }

                else
                {
LABEL_262:
                  if (v139 != &v137[v138])
                  {
                    goto LABEL_263;
                  }

                  v140 = v294;
                  if (v138 < *(v61 + 19))
                  {
                    goto LABEL_221;
                  }
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }
            }

            v17 = 2 * v283;
LABEL_28:
            llvm::DenseMap<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>::grow(&v281, v17);
            llvm::DenseMapBase<llvm::DenseMap<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>,mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>::LookupBucketFor<mlir::SuccessorRange>(&v281, v300, &v294);
            v16 = v294;
            LODWORD(v282) = v282 + 1;
            if (*v294 == -4096)
            {
              goto LABEL_15;
            }

LABEL_26:
            --HIDWORD(v282);
            goto LABEL_15;
          }
        }

        v166 = v6[1];
        if (v166 != v6)
        {
          break;
        }

LABEL_6:
        v5 = v287;
        if (!v287)
        {
          goto LABEL_455;
        }
      }

      while (1)
      {
        v167 = v166 - 1;
        if (!v166)
        {
          v167 = 0;
        }

        v168 = v167 + 4;
        for (j = v167[5]; j != v168; j = j[1])
        {
          v170 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(j);
          v171 = *(v170 + 44);
          if ((v171 & 0x7FFFFF) != 0)
          {
            v172 = v170 + 16 * ((v171 >> 23) & 1) + ((v171 >> 21) & 0x7F8) + 32 * *(v170 + 40) + 64;
            v173 = v172 + 24 * (v171 & 0x7FFFFF);
            while (LODWORD(v284[1]))
            {
              v177 = v284[0];
              v178 = v285;
              if (!v285)
              {
                v179 = 0;
                if (4 * LODWORD(v284[1]) + 4 < 3 * v285)
                {
                  goto LABEL_295;
                }

                goto LABEL_395;
              }

              v174 = (v285 - 1) & ((v172 >> 4) ^ (v172 >> 9));
              v175 = (v284[0] + 8 * v174);
              v176 = *v175;
              if (v172 != *v175)
              {
                v231 = 0;
                v232 = 1;
                while (v176 != -4096)
                {
                  if (v231)
                  {
                    v233 = 0;
                  }

                  else
                  {
                    v233 = v176 == -8192;
                  }

                  if (v233)
                  {
                    v231 = v175;
                  }

                  v234 = v174 + v232++;
                  v174 = v234 & (v285 - 1);
                  v175 = (v284[0] + 8 * v174);
                  v176 = *v175;
                  if (v172 == *v175)
                  {
                    goto LABEL_291;
                  }
                }

                if (v231)
                {
                  v179 = v231;
                }

                else
                {
                  v179 = v175;
                }

                if (4 * LODWORD(v284[1]) + 4 < 3 * v285)
                {
LABEL_295:
                  v180 = v285;
                  if (v285 + ~LODWORD(v284[1]) - HIDWORD(v284[1]) > v285 >> 3)
                  {
                    ++LODWORD(v284[1]);
                    if (*v179 == -4096)
                    {
LABEL_298:
                      *v179 = v172;
                      if (v287 >= HIDWORD(v287))
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      *(v286 + v287) = v172;
                      LODWORD(v287) = v287 + 1;
                      goto LABEL_291;
                    }

LABEL_297:
                    --HIDWORD(v284[1]);
                    goto LABEL_298;
                  }

LABEL_396:
                  v235 = (v180 - 1) | ((v180 - 1) >> 1);
                  v236 = v235 | (v235 >> 2) | ((v235 | (v235 >> 2)) >> 4);
                  v237 = ((v236 | (v236 >> 8)) >> 16) | v236 | (v236 >> 8);
                  if ((v237 + 1) > 0x40)
                  {
                    v238 = v237 + 1;
                  }

                  else
                  {
                    v238 = 64;
                  }

                  v285 = v238;
                  buffer = llvm::allocate_buffer(8 * v238, 8uLL);
                  v284[0] = buffer;
                  if (v177)
                  {
                    v284[1] = 0;
                    v240 = v285;
                    if (v285)
                    {
                      v241 = (v285 - 1) & 0x1FFFFFFFFFFFFFFFLL;
                      v242 = buffer;
                      if (v241 < 3)
                      {
                        goto LABEL_462;
                      }

                      v243 = v241 + 1;
                      v242 = (buffer + 8 * (v243 & 0x3FFFFFFFFFFFFFFCLL));
                      v244 = (buffer + 16);
                      v245 = v243 & 0x3FFFFFFFFFFFFFFCLL;
                      do
                      {
                        v244[-1] = v279;
                        *v244 = v279;
                        v244 += 2;
                        v245 -= 4;
                      }

                      while (v245);
                      if (v243 != (v243 & 0x3FFFFFFFFFFFFFFCLL))
                      {
LABEL_462:
                        do
                        {
                          *v242 = -4096;
                          v242 = (v242 + 8);
                        }

                        while (v242 != (buffer + 8 * v240));
                      }
                    }

                    if (v178)
                    {
                      v246 = 0;
                      v247 = v240 - 1;
                      v248 = v177;
                      do
                      {
                        v263 = *v248;
                        if ((*v248 | 0x1000) != 0xFFFFFFFFFFFFF000)
                        {
                          v264 = ((v263 >> 4) ^ (v263 >> 9)) & v247;
                          v262 = (buffer + 8 * v264);
                          v265 = *v262;
                          if (v263 != *v262)
                          {
                            v266 = 0;
                            v267 = 1;
                            while (v265 != -4096)
                            {
                              if (v266)
                              {
                                v268 = 0;
                              }

                              else
                              {
                                v268 = v265 == -8192;
                              }

                              if (v268)
                              {
                                v266 = v262;
                              }

                              v269 = v264 + v267++;
                              v264 = v269 & v247;
                              v262 = (buffer + 8 * (v269 & v247));
                              v265 = *v262;
                              if (v263 == *v262)
                              {
                                goto LABEL_429;
                              }
                            }

                            if (v266)
                            {
                              v262 = v266;
                            }
                          }

LABEL_429:
                          *v262 = v263;
                          LODWORD(v284[1]) = ++v246;
                        }

                        v248 = (v248 + 8);
                      }

                      while (v248 != (v177 + 8 * v178));
                    }

                    llvm::deallocate_buffer(v177, (8 * v178));
                  }

                  v284[1] = 0;
                  v249 = v285;
                  if (!v285)
                  {
                    goto LABEL_443;
                  }

                  v250 = (v285 - 1) & 0x1FFFFFFFFFFFFFFFLL;
                  v251 = buffer;
                  if (v250 < 3)
                  {
                    goto LABEL_463;
                  }

                  v252 = v250 + 1;
                  v251 = (buffer + 8 * (v252 & 0x3FFFFFFFFFFFFFFCLL));
                  v253 = (buffer + 16);
                  v254 = v252 & 0x3FFFFFFFFFFFFFFCLL;
                  do
                  {
                    v253[-1] = v279;
                    *v253 = v279;
                    v253 += 2;
                    v254 -= 4;
                  }

                  while (v254);
                  if (v252 != (v252 & 0x3FFFFFFFFFFFFFFCLL))
                  {
LABEL_463:
                    do
                    {
                      *v251 = -4096;
                      v251 = (v251 + 8);
                    }

                    while (v251 != (buffer + 8 * v249));
                  }

                  if (v249)
                  {
                    v255 = v249 - 1;
                    v256 = v255 & ((v172 >> 4) ^ (v172 >> 9));
                    v179 = (buffer + 8 * v256);
                    v257 = *v179;
                    if (v172 != *v179)
                    {
                      v258 = 0;
                      v259 = 1;
                      while (v257 != -4096)
                      {
                        if (v258)
                        {
                          v260 = 0;
                        }

                        else
                        {
                          v260 = v257 == -8192;
                        }

                        if (v260)
                        {
                          v258 = v179;
                        }

                        v261 = v256 + v259++;
                        v256 = v261 & v255;
                        v179 = (buffer + 8 * (v261 & v255));
                        v257 = *v179;
                        if (v172 == *v179)
                        {
                          goto LABEL_444;
                        }
                      }

                      if (v258)
                      {
                        v179 = v258;
                      }
                    }
                  }

                  else
                  {
LABEL_443:
                    v179 = 0;
                  }

LABEL_444:
                  ++LODWORD(v284[1]);
                  if (*v179 == -4096)
                  {
                    goto LABEL_298;
                  }

                  goto LABEL_297;
                }

LABEL_395:
                v180 = 2 * v285;
                goto LABEL_396;
              }

LABEL_291:
              v172 += 24;
              if (v172 == v173)
              {
                goto LABEL_286;
              }
            }

            v181 = v286;
            if (v287)
            {
              v182 = 8 * v287;
              v181 = v286;
              while (*v181 != v172)
              {
                ++v181;
                v182 -= 8;
                if (!v182)
                {
                  goto LABEL_306;
                }
              }
            }

            if (v181 != (v286 + 8 * v287))
            {
              goto LABEL_291;
            }

LABEL_306:
            if (v287 >= HIDWORD(v287))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            *(v286 + v287) = v172;
            v183 = v287 + 1;
            LODWORD(v287) = v183;
            if (v183 < 2)
            {
              goto LABEL_291;
            }

            v184 = v286;
            v185 = v286 + 8 * v183;
            v186 = v284[0];
            v187 = v285;
            while (2)
            {
              if (!v187)
              {
LABEL_330:
                v191 = 2 * v187;
                goto LABEL_331;
              }

              v188 = ((*v184 >> 4) ^ (*v184 >> 9)) & (v187 - 1);
              v189 = (v186 + 8 * v188);
              v190 = *v189;
              if (*v184 == *v189)
              {
LABEL_310:
                if (++v184 == v185)
                {
                  goto LABEL_291;
                }

                continue;
              }

              break;
            }

            v192 = 0;
            v193 = 1;
            while (v190 != -4096)
            {
              if (v192)
              {
                v194 = 0;
              }

              else
              {
                v194 = v190 == -8192;
              }

              if (v194)
              {
                v192 = v189;
              }

              v195 = v188 + v193++;
              v188 = v195 & (v187 - 1);
              v189 = (v186 + 8 * v188);
              v190 = *v189;
              if (*v184 == *v189)
              {
                goto LABEL_310;
              }
            }

            if (v192)
            {
              v196 = v192;
            }

            else
            {
              v196 = v189;
            }

            if (4 * LODWORD(v284[1]) + 4 >= 3 * v187)
            {
              goto LABEL_330;
            }

            v191 = v187;
            if (v187 + ~LODWORD(v284[1]) - HIDWORD(v284[1]) <= v187 >> 3)
            {
LABEL_331:
              v197 = (v191 - 1) | ((v191 - 1) >> 1);
              v198 = v197 | (v197 >> 2) | ((v197 | (v197 >> 2)) >> 4);
              v199 = ((v198 | (v198 >> 8)) >> 16) | v198 | (v198 >> 8);
              if ((v199 + 1) > 0x40)
              {
                v200 = v199 + 1;
              }

              else
              {
                v200 = 64;
              }

              v285 = v200;
              v201 = llvm::allocate_buffer(8 * v200, 8uLL);
              v284[0] = v201;
              if (v186)
              {
                v284[1] = 0;
                v202 = v285;
                if (v285)
                {
                  v203 = (v285 - 1) & 0x1FFFFFFFFFFFFFFFLL;
                  v204 = v201;
                  if (v203 < 3)
                  {
                    goto LABEL_464;
                  }

                  v205 = v203 + 1;
                  v204 = (v201 + 8 * (v205 & 0x3FFFFFFFFFFFFFFCLL));
                  v206 = (v201 + 16);
                  v207 = v205 & 0x3FFFFFFFFFFFFFFCLL;
                  do
                  {
                    v206[-1] = v279;
                    *v206 = v279;
                    v206 += 2;
                    v207 -= 4;
                  }

                  while (v207);
                  if (v205 != (v205 & 0x3FFFFFFFFFFFFFFCLL))
                  {
LABEL_464:
                    do
                    {
                      *v204 = -4096;
                      v204 = (v204 + 8);
                    }

                    while (v204 != (v201 + 8 * v202));
                  }
                }

                if (v187)
                {
                  v208 = 0;
                  v209 = v202 - 1;
                  v210 = v186;
                  do
                  {
                    v224 = *v210;
                    if ((*v210 | 0x1000) != 0xFFFFFFFFFFFFF000)
                    {
                      v225 = ((v224 >> 4) ^ (v224 >> 9)) & v209;
                      v223 = (v201 + 8 * v225);
                      v226 = *v223;
                      if (v224 != *v223)
                      {
                        v227 = 0;
                        v228 = 1;
                        while (v226 != -4096)
                        {
                          if (v227)
                          {
                            v229 = 0;
                          }

                          else
                          {
                            v229 = v226 == -8192;
                          }

                          if (v229)
                          {
                            v227 = v223;
                          }

                          v230 = v225 + v228++;
                          v225 = v230 & v209;
                          v223 = (v201 + 8 * (v230 & v209));
                          v226 = *v223;
                          if (v224 == *v223)
                          {
                            goto LABEL_362;
                          }
                        }

                        if (v227)
                        {
                          v223 = v227;
                        }
                      }

LABEL_362:
                      *v223 = v224;
                      LODWORD(v284[1]) = ++v208;
                    }

                    v210 = (v210 + 8);
                  }

                  while (v210 != (v186 + 8 * v187));
                }

                llvm::deallocate_buffer(v186, (8 * v187));
              }

              v284[1] = 0;
              v187 = v285;
              if (!v285)
              {
                goto LABEL_376;
              }

              v211 = (v285 - 1) & 0x1FFFFFFFFFFFFFFFLL;
              v212 = v201;
              if (v211 < 3)
              {
                goto LABEL_465;
              }

              v213 = v211 + 1;
              v212 = (v201 + 8 * (v213 & 0x3FFFFFFFFFFFFFFCLL));
              v214 = (v201 + 16);
              v215 = v213 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v214[-1] = v279;
                *v214 = v279;
                v214 += 2;
                v215 -= 4;
              }

              while (v215);
              if (v213 != (v213 & 0x3FFFFFFFFFFFFFFCLL))
              {
LABEL_465:
                do
                {
                  *v212 = -4096;
                  v212 = (v212 + 8);
                }

                while (v212 != (v201 + 8 * v187));
              }

              if (v187)
              {
                v216 = v187 - 1;
                v217 = ((*v184 >> 4) ^ (*v184 >> 9)) & (v187 - 1);
                v196 = (v201 + 8 * v217);
                v218 = *v196;
                if (*v184 != *v196)
                {
                  v219 = 0;
                  v220 = 1;
                  while (v218 != -4096)
                  {
                    if (v219)
                    {
                      v221 = 0;
                    }

                    else
                    {
                      v221 = v218 == -8192;
                    }

                    if (v221)
                    {
                      v219 = v196;
                    }

                    v222 = v217 + v220++;
                    v217 = v222 & v216;
                    v196 = (v201 + 8 * (v222 & v216));
                    v218 = *v196;
                    if (*v184 == *v196)
                    {
                      goto LABEL_377;
                    }
                  }

                  if (v219)
                  {
                    v196 = v219;
                  }
                }
              }

              else
              {
LABEL_376:
                v196 = 0;
              }

LABEL_377:
              v186 = v201;
              ++LODWORD(v284[1]);
              if (*v196 != -4096)
              {
LABEL_315:
                --HIDWORD(v284[1]);
              }
            }

            else
            {
              ++LODWORD(v284[1]);
              if (*v196 != -4096)
              {
                goto LABEL_315;
              }
            }

            *v196 = *v184;
            goto LABEL_310;
          }

LABEL_286:
          ;
        }

        v166 = v166[1];
        if (v166 == v280)
        {
          goto LABEL_6;
        }
      }
    }

    v272 = v286;
    if (v286 == &v288)
    {
LABEL_457:
      llvm::deallocate_buffer(v284[0], (8 * v285));
    }
  }

  else
  {
LABEL_455:
    v272 = v286;
    if (v286 == &v288)
    {
      goto LABEL_457;
    }
  }

  free(v272);
  goto LABEL_457;
}

void llvm::post_order<mlir::Block *>(mlir::Block **a1@<X0>, uint64_t a2@<X8>)
{
  v13[40] = *MEMORY[0x277D85DE8];
  llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>::po_iterator(&v10, *a1);
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v7[0] = 0;
  memset(v6, 0, sizeof(v6));
  v3 = v6 + 8;
  v4 = v6 + 8;
  v5 = 8;
  v7[1] = v8 + 8;
  DWORD1(v8[0]) = 8;
  llvm::make_range<llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>>(&v10, &v3, a2);
  if (v7[1] != v8 + 8)
  {
    free(v7[1]);
  }

  if (v4 != v3)
  {
    free(v4);
  }

  if (v12 != v13)
  {
    free(v12);
  }

  if (v11 != v10)
  {
    free(v11);
  }
}

unint64_t processValue(unint64_t result, uint64_t a2)
{
  v2 = *result;
  if (!*result)
  {
    return result;
  }

  v4 = result;
  while (1)
  {
    v5 = *(v2 + 2);
    OperandNumber = mlir::OpOperand::getOperandNumber(v2);
    {
    }

    result = (*(**(v5 + 48) + 32))(*(v5 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id);
    if (!result)
    {
      break;
    }

    result = mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(v5);
    if (!result)
    {
      v26 = 0;
      v27 = 0;
      break;
    }

    result = mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(v5);
    v26 = v5;
    v27 = result;
    if (!v5)
    {
      break;
    }

    result = mlir::BranchOpInterface::getSuccessorBlockArgument(&v26, OperandNumber);
    if ((v7 & 1) == 0)
    {
      break;
    }

    v8 = *(a2 + 24);
    if (v8)
    {
      v9 = *(a2 + 8);
      v10 = 0x9DDFEA08EB382D69 * ((8 * result - 0xAE502812AA7333) ^ HIDWORD(result));
      v11 = 0x9DDFEA08EB382D69 * (HIDWORD(result) ^ (v10 >> 47) ^ v10);
      v12 = v8 - 1;
      v13 = v12 & (-348639895 * ((v11 >> 47) ^ v11));
      v14 = *(v9 + 8 * v13);
      if (v14 != result)
      {
        v23 = 1;
        while (v14 != -4096)
        {
          v24 = v13 + v23++;
          v13 = v24 & v12;
          v14 = *(v9 + 8 * v13);
          if (v14 == result)
          {
            goto LABEL_13;
          }
        }

        goto LABEL_23;
      }

      break;
    }

LABEL_23:
    v2 = *v2;
    if (!v2)
    {
      return result;
    }
  }

LABEL_13:
  v15 = *(a2 + 48);
  if (!v15)
  {
    goto LABEL_23;
  }

  v16 = *(v2 + 2);
  v17 = *(a2 + 32);
  v18 = v15 - 1;
  v19 = ((v16 >> 4) ^ (v16 >> 9)) & v18;
  v20 = *(v17 + 8 * v19);
  if (v20 != v16)
  {
    v21 = 1;
    while (v20 != -4096)
    {
      v22 = v19 + v21++;
      v19 = v22 & v18;
      v20 = *(v17 + 8 * v19);
      if (v20 == v16)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_23;
  }

LABEL_25:
  if (!v4 || (*(v4 + 1) & 7) == 7)
  {
    Owner = v4;
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::try_emplace<llvm::detail::DenseSetEmpty&>(a2 + 8, &Owner, &v26);
  }

  else
  {
    Owner = mlir::detail::OpResultImpl::getOwner(v4);
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a2 + 32, &Owner, &v26);
  }

  *a2 |= v28;
  return result;
}