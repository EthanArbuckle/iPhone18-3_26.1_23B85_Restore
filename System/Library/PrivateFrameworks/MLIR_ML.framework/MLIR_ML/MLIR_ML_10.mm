uint64_t mlir::OpInterface<mlir::PromotableOpInterface,mlir::detail::PromotableOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
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
      mlir::OpInterface<mlir::PromotableOpInterface,mlir::detail::PromotableOpInterfaceInterfaceTraits>::getInterfaceFor();
      ReferencedDialect = v24;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::PromotableOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    p_opt_class_meths = &OBJC_PROTOCOL___MLViewerNodePropertySPI.opt_class_meths;
    v5 = mlir::detail::TypeIDResolver<mlir::PromotableOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::OpInterface<mlir::PromotableOpInterface,mlir::detail::PromotableOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v21;
    a1 = v22;
    p_opt_class_meths = &OBJC_PROTOCOL___MLViewerNodePropertySPI.opt_class_meths;
    v5 = mlir::detail::TypeIDResolver<mlir::PromotableOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::OpInterface<mlir::PromotableOpInterface,mlir::detail::PromotableOpInterfaceInterfaceTraits>::getInterfaceFor();
    p_opt_class_meths = (&OBJC_PROTOCOL___MLViewerNodePropertySPI + 48);
    v18 = v23;
  }

  v19 = p_opt_class_meths[50];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

const char *llvm::getTypeName<mlir::PromotableOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::PromotableOpInterface]";
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

uint64_t mlir::OpInterface<mlir::PromotableMemOpInterface,mlir::detail::PromotableMemOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
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
      mlir::OpInterface<mlir::PromotableMemOpInterface,mlir::detail::PromotableMemOpInterfaceInterfaceTraits>::getInterfaceFor();
      ReferencedDialect = v24;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::PromotableMemOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    p_opt_class_meths = &OBJC_PROTOCOL___MLViewerNodePropertySPI.opt_class_meths;
    v5 = mlir::detail::TypeIDResolver<mlir::PromotableMemOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::OpInterface<mlir::PromotableMemOpInterface,mlir::detail::PromotableMemOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v21;
    a1 = v22;
    p_opt_class_meths = &OBJC_PROTOCOL___MLViewerNodePropertySPI.opt_class_meths;
    v5 = mlir::detail::TypeIDResolver<mlir::PromotableMemOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::OpInterface<mlir::PromotableMemOpInterface,mlir::detail::PromotableMemOpInterfaceInterfaceTraits>::getInterfaceFor();
    p_opt_class_meths = (&OBJC_PROTOCOL___MLViewerNodePropertySPI + 48);
    v18 = v23;
  }

  v19 = p_opt_class_meths[52];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

const char *llvm::getTypeName<mlir::PromotableMemOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::PromotableMemOpInterface]";
  v6 = 80;
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

void llvm::IDFCalculatorBase<mlir::Block,false>::calculate()
{
  v2[65] = *MEMORY[0x277D85DE8];
  v0 = v2;
  v1 = 0x2000000000;
  llvm::DominatorTreeBase<mlir::Block,false>::updateDFSNumbers();
}

const void **llvm::IDFCalculatorBase<mlir::Block,false>::calculate(llvm::SmallVectorImpl<mlir::Block*> &)::{lambda(mlir::Block*)#1}::operator()(const void **result, uint64_t a2)
{
  v2 = result;
  v3 = *result;
  v4 = **result;
  v5 = *(v4 + 104);
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = *(v4 + 88);
  v7 = (v5 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v8 = *(v6 + 16 * v7);
  if (v8 != a2)
  {
    v12 = 1;
    while (v8 != -4096)
    {
      v13 = v7 + v12++;
      v7 = v13 & (v5 - 1);
      v8 = *(v6 + 16 * v7);
      if (v8 == a2)
      {
        goto LABEL_3;
      }
    }

LABEL_11:
    v10 = 0;
    v11 = MEMORY[0x10];
    if (MEMORY[0x10] > *result[1])
    {
      return result;
    }

    goto LABEL_12;
  }

LABEL_3:
  if (v7 == v5)
  {
    goto LABEL_11;
  }

  v9 = *(v6 + 16 * v7 + 8);
  if (*(v4 + 32) <= v9)
  {
    goto LABEL_11;
  }

  v10 = *(*(v4 + 24) + 8 * v9);
  v11 = *(v10 + 16);
  if (v11 > *result[1])
  {
    return result;
  }

LABEL_12:
  result = result[2];
  v14 = *result;
  if (result[1] != *result)
  {
    goto LABEL_13;
  }

  v17 = *(result + 5);
  if (v17)
  {
    v18 = 8 * v17;
    v19 = *result;
    while (*v19 != v10)
    {
      ++v19;
      v18 -= 8;
      if (!v18)
      {
        goto LABEL_20;
      }
    }

    return result;
  }

LABEL_20:
  if (v17 < *(result + 4))
  {
    *(result + 5) = v17 + 1;
    v14[v17] = v10;
    v16 = *v10;
    v55 = *v10;
    if (*(v3 + 9) != 1)
    {
      goto LABEL_36;
    }
  }

  else
  {
LABEL_13:
    result = llvm::SmallPtrSetImplBase::insert_imp_big(result, v10);
    if ((v15 & 1) == 0)
    {
      return result;
    }

    v16 = *v10;
    v55 = *v10;
    if (*(v3 + 9) != 1)
    {
      goto LABEL_36;
    }
  }

  v20 = v3[2];
  result = *v20;
  v21 = *(v20 + 8);
  if (v21 == *v20)
  {
    v24 = *(v20 + 20);
    if (v24)
    {
      v25 = 8 * v24;
      while (*result != v16)
      {
        ++result;
        v25 -= 8;
        if (!v25)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
LABEL_31:
      result = &v21[v24];
    }

    v22 = *(v20 + 8);
  }

  else
  {
    result = llvm::SmallPtrSetImplBase::doFind(v3[2], v16);
    v21 = *v20;
    v22 = *(v20 + 8);
    if (!result)
    {
      v23 = 16;
      if (v22 == v21)
      {
        v23 = 20;
      }

      result = &v22[*(v20 + v23)];
    }
  }

  v26 = v22 == v21;
  v27 = 16;
  if (v26)
  {
    v27 = 20;
  }

  if (result == &v22[*(v20 + v27)])
  {
    return result;
  }

LABEL_36:
  v28 = v2[3];
  v29 = *(v28 + 8);
  if (v29 >= *(v28 + 12))
  {
    llvm::SmallVectorTemplateBase<mlir::Block *,true>::growAndEmplaceBack<mlir::Block *&>(v28, &v55);
    v16 = v55;
    v30 = v3[3];
    result = *v30;
    v31 = *(v30 + 8);
    if (v31 != *v30)
    {
LABEL_38:
      result = llvm::SmallPtrSetImplBase::doFind(v30, v16);
      v31 = *v30;
      v32 = *(v30 + 8);
      if (!result)
      {
        v33 = 16;
        if (v32 == v31)
        {
          v33 = 20;
        }

        result = &v32[*(v30 + v33)];
      }

      goto LABEL_49;
    }
  }

  else
  {
    *(*v28 + 8 * v29) = v16;
    *(v28 + 8) = v29 + 1;
    v30 = v3[3];
    result = *v30;
    v31 = *(v30 + 8);
    if (v31 != *v30)
    {
      goto LABEL_38;
    }
  }

  v34 = *(v30 + 20);
  if (v34)
  {
    v35 = 8 * v34;
    while (*result != v16)
    {
      ++result;
      v35 -= 8;
      if (!v35)
      {
        goto LABEL_47;
      }
    }
  }

  else
  {
LABEL_47:
    result = &v31[v34];
  }

  v32 = v31;
LABEL_49:
  v26 = v32 == v31;
  v36 = 16;
  if (v26)
  {
    v36 = 20;
  }

  if (result == &v32[*(v30 + v36)])
  {
    v37 = v2[4];
    v38 = v11 | (*(v10 + 72) << 32);
    v39 = v37[2];
    if (v39 >= v37[3])
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v40 = (*v37 + 16 * v39);
    *v40 = v10;
    v40[1] = v38;
    v41 = (v37[2] + 1);
    v37[2] = v41;
    if (v41 >= 2)
    {
      v42 = *v37;
      v43 = *v37 + 16 * v41;
      v44 = v41 - 2;
      v45 = (v41 - 2) >> 1;
      v46 = *v37 + 16 * v45;
      v47 = *(v46 + 8);
      v48 = *(v43 - 8);
      if (v47 >= v48)
      {
        if (v48 < v47)
        {
          return result;
        }

        v50 = *(v46 + 12);
        v49 = *(v43 - 4);
        if (v50 >= v49)
        {
          return result;
        }
      }

      else
      {
        v49 = *(v43 - 4);
        v50 = *(v46 + 12);
      }

      v51 = *(v43 - 16);
      result = *v46;
      *(v43 - 16) = *v46;
      *(v43 - 8) = v47;
      *(v43 - 4) = v50;
      if (v44 >= 2)
      {
        while (1)
        {
          v53 = v45 - 1;
          v45 = (v45 - 1) >> 1;
          v52 = v42 + 16 * v45;
          v54 = *(v52 + 8);
          if (v54 >= v48 && (v48 < v54 || *(v52 + 12) >= v49))
          {
            break;
          }

          *v46 = *v52;
          *(v46 + 8) = v54;
          *(v46 + 12) = *(v52 + 12);
          v46 = v42 + 16 * v45;
          if (v53 <= 1)
          {
            goto LABEL_58;
          }
        }
      }

      v52 = v46;
LABEL_58:
      *v52 = v51;
      *(v52 + 8) = v48;
      *(v52 + 12) = v49;
    }
  }

  return result;
}

_DWORD *std::__pop_heap[abi:nn200100]<std::_ClassicAlgPolicy,llvm::less_second,std::pair<llvm::DomTreeNodeBase<mlir::Block> *,std::pair<unsigned int,unsigned int>> *>(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = 0;
    v5 = *result;
    v6 = result;
    v8 = result[2];
    v7 = result[3];
    do
    {
      v9 = v6;
      v10 = &v6[4 * v4];
      v6 = v10 + 4;
      v11 = 2 * v4;
      v4 = (2 * v4) | 1;
      v12 = v11 + 2;
      if (v12 < a4)
      {
        v13 = v10[6];
        v14 = v10[10];
        if (v13 < v14 || v14 >= v13 && v10[7] < v10[11])
        {
          v6 = v10 + 8;
          v4 = v12;
        }
      }

      *v9 = *v6;
      v9[2] = v6[2];
      v9[3] = v6[3];
    }

    while (v4 <= ((a4 - 2) >> 1));
    if (v6 == (a2 - 16))
    {
      *v6 = v5;
      v6[2] = v8;
      v6[3] = v7;
      return result;
    }

    *v6 = *(a2 - 16);
    v6[2] = *(a2 - 8);
    v6[3] = *(a2 - 4);
    *(a2 - 16) = v5;
    *(a2 - 8) = v8;
    *(a2 - 4) = v7;
    v15 = (v6 - result + 16) >> 4;
    v16 = v15 - 2;
    if (v15 < 2)
    {
      return result;
    }

    v17 = v16 >> 1;
    v18 = &result[4 * (v16 >> 1)];
    v19 = v18[2];
    v20 = v6[2];
    if (v19 >= v20)
    {
      if (v20 < v19)
      {
        return result;
      }

      v21 = v6[3];
      if (v18[3] >= v21)
      {
        return result;
      }
    }

    else
    {
      v21 = v6[3];
    }

    v22 = *v6;
    *v6 = *v18;
    v6[2] = v19;
    v6[3] = v18[3];
    if (v16 >= 2)
    {
      while (1)
      {
        v24 = v17 - 1;
        v17 = (v17 - 1) >> 1;
        v23 = &result[4 * v17];
        v25 = v23[2];
        if (v25 >= v20 && (v20 < v25 || v23[3] >= v21))
        {
          break;
        }

        *v18 = *v23;
        v18[2] = v25;
        v18[3] = v23[3];
        v18 = &result[4 * v17];
        if (v24 <= 1)
        {
          goto LABEL_16;
        }
      }
    }

    v23 = v18;
LABEL_16:
    *v23 = v22;
    v23[2] = v20;
    v23[3] = v21;
  }

  return result;
}

uint64_t llvm::SmallVectorTemplateBase<mlir::Block *,true>::growAndEmplaceBack<mlir::Block *&>(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (v2 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a1 + 8 * v2) = *a2;
  v3 = *(a1 + 8) + 1;
  *(a1 + 8) = v3;
  return *a1 + 8 * v3 - 8;
}

uint64_t llvm::SmallVectorImpl<std::pair<mlir::Operation *,llvm::SmallPtrSet<mlir::OpOperand *,4u>>>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = a2 + 2;
    v5 = *a2;
    if (*a2 != a2 + 2)
    {
      v6 = *a1;
      v7 = *(a1 + 8);
      if (v7)
      {
        v8 = &v6[9 * v7 - 8];
        v9 = -72 * v7;
        do
        {
          v10 = v8[1];
          if (v10 != *v8)
          {
            free(v10);
          }

          v8 -= 9;
          v9 += 72;
        }

        while (v9);
        v6 = *a1;
      }

      if (v6 != (a1 + 16))
      {
        free(v6);
      }

      *a1 = *a2;
      v11 = a2 + 1;
      *(a1 + 8) = a2[1];
      *a2 = v4;
      *(a2 + 3) = 0;
LABEL_12:
      *v11 = 0;
      return a1;
    }

    v11 = a2 + 1;
    v13 = *(a2 + 2);
    v14 = *(a1 + 8);
    if (v14 >= v13)
    {
      v18 = *a1;
      if (v13)
      {
        v19 = 72 * v13;
        do
        {
          *v18 = *v5;
          if (v5 != v18)
          {
            llvm::SmallPtrSetImplBase::MoveFrom((v18 + 1), 4, (v5 + 8));
          }

          v5 += 72;
          v18 += 9;
          v19 -= 72;
        }

        while (v19);
        v20 = *a1;
        LODWORD(v14) = *(a1 + 8);
      }

      else
      {
        v20 = *a1;
      }

      for (i = &v20[9 * v14]; i != v18; i -= 9)
      {
        v33 = *(i - 7);
        if (v33 != *(i - 8))
        {
          free(v33);
        }
      }

      *(a1 + 8) = v13;
      v34 = *(a2 + 2);
      if (v34)
      {
        v35 = (*a2 + 72 * v34 - 64);
        v36 = -72 * v34;
        do
        {
          v37 = v35[1];
          if (v37 != *v35)
          {
            free(v37);
          }

          v35 -= 9;
          v36 += 72;
        }

        while (v36);
      }

      goto LABEL_12;
    }

    if (*(a1 + 12) < v13)
    {
      if (v14)
      {
        v15 = (*a1 + 72 * v14 - 64);
        v16 = -72 * v14;
        do
        {
          v17 = v15[1];
          if (v17 != *v15)
          {
            free(v17);
          }

          v15 -= 9;
          v16 += 72;
        }

        while (v16);
      }

      *(a1 + 8) = 0;
      llvm::SmallVectorTemplateBase<std::pair<mlir::Operation *,llvm::SmallPtrSet<mlir::OpOperand *,4u>>,false>::grow();
    }

    if (v14)
    {
      v21 = *a1;
      v22 = 72 * v14;
      do
      {
        *v21 = *v5;
        if (v5 != v21)
        {
          llvm::SmallPtrSetImplBase::MoveFrom((v21 + 1), 4, (v5 + 8));
        }

        v5 += 72;
        v21 += 9;
        v22 -= 72;
      }

      while (v22);
      v23 = *a2;
      v24 = *(a2 + 2);
      if (v14 == v24)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v14 = 0;
      v23 = *a2;
      v24 = *(a2 + 2);
      if (!*(a2 + 2))
      {
        goto LABEL_37;
      }
    }

    v25 = *a1;
    v26 = 72 * v14;
    v27 = 72 * v24;
    do
    {
      v25[v26 / 8] = *(v23 + v26);
      llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v25[v26 / 8 + 1], &v25[v26 / 8 + 5], 4, (v23 + v26 + 8));
      v25 += 9;
      v27 -= 72;
      v23 += 72;
    }

    while (v26 != v27);
    v23 = *a2;
LABEL_37:
    *(a1 + 8) = v13;
    v28 = *v11;
    if (v28)
    {
      v29 = (v23 + 72 * v28 - 64);
      v30 = -72 * v28;
      do
      {
        v31 = v29[1];
        if (v31 != *v29)
        {
          free(v31);
        }

        v29 -= 9;
        v30 += 72;
      }

      while (v30);
    }

    goto LABEL_12;
  }

  return a1;
}

uint64_t anonymous namespace::MemorySlotPromoter::computeReachingDefInBlock(uint64_t a1, uint64_t a2, uint64_t Stored)
{
  v29[6] = *MEMORY[0x277D85DE8];
  v27 = v29;
  v28 = 0x600000000;
  v4 = a2 + 32;
  v5 = *(a2 + 40);
  if (v5 != a2 + 32)
  {
    do
    {
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v5);
      if (v28 >= HIDWORD(v28))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v27 + v28) = ValuePtr;
      v8 = v28 + 1;
      LODWORD(v28) = v28 + 1;
      v5 = *(v5 + 8);
    }

    while (v5 != v4);
    v9 = v27;
    if (v8)
    {
      v10 = (v27 + 8 * v8);
      do
      {
        v11 = *v9;
        if (mlir::OpInterface<mlir::PromotableMemOpInterface,mlir::detail::PromotableMemOpInterfaceInterfaceTraits>::getInterfaceFor(*v9))
        {
          if (v11)
          {
            InterfaceFor = mlir::OpInterface<mlir::PromotableMemOpInterface,mlir::detail::PromotableMemOpInterfaceInterfaceTraits>::getInterfaceFor(v11);
            *&v26 = v11;
            *(&v26 + 1) = InterfaceFor;
            v13 = *(a1 + 224);
            if (v13)
            {
              v14 = *(a1 + 208);
              v15 = (v13 - 1) & ((v11 >> 4) ^ (v11 >> 9));
              v16 = *(v14 + 16 * v15);
              if (v16 == v11)
              {
LABEL_16:
                if (v15 != v13)
                {
                  v24 = v26;
                  v25 = Stored;
                  llvm::DenseMapBase<llvm::DenseMap<mlir::PromotableMemOpInterface,mlir::Value,llvm::DenseMapInfo<mlir::PromotableMemOpInterface,void>,llvm::detail::DenseMapPair<mlir::PromotableMemOpInterface,mlir::Value>>,mlir::PromotableMemOpInterface,mlir::Value,llvm::DenseMapInfo<mlir::PromotableMemOpInterface,void>,llvm::detail::DenseMapPair<mlir::PromotableMemOpInterface,mlir::Value>>::try_emplace<mlir::Value>(a1 + 48, &v24, &v25, v23);
                }
              }

              else
              {
                v20 = 1;
                while (v16 != -4096)
                {
                  v21 = v15 + v20++;
                  v15 = v21 & (v13 - 1);
                  v16 = *(v14 + 16 * v15);
                  if (v16 == v11)
                  {
                    goto LABEL_16;
                  }
                }
              }
            }

            if (mlir::PromotableMemOpInterface::storesTo(&v26, a1))
            {
              v17 = *(a1 + 32);
              v18 = *(v26 + 16);
              v19 = *(llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v26) + 8);
              *(v17 + 16) = v18;
              *(v17 + 24) = v19;
              Stored = mlir::PromotableMemOpInterface::getStored(&v26, a1, *(a1 + 32), Stored, *(a1 + 104));
              *llvm::DenseMapBase<llvm::DenseMap<mlir::PromotableMemOpInterface,mlir::Value,llvm::DenseMapInfo<mlir::PromotableMemOpInterface,void>,llvm::detail::DenseMapPair<mlir::PromotableMemOpInterface,mlir::Value>>,mlir::PromotableMemOpInterface,mlir::Value,llvm::DenseMapInfo<mlir::PromotableMemOpInterface,void>,llvm::detail::DenseMapPair<mlir::PromotableMemOpInterface,mlir::Value>>::operator[](a1 + 72, &v26) = Stored;
            }
          }

          else
          {
            v26 = 0uLL;
          }
        }

        else
        {
          v26 = 0uLL;
        }

        ++v9;
      }

      while (v9 != v10);
      v9 = v27;
    }

    if (v9 != v29)
    {
      free(v9);
    }
  }

  return Stored;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::PromotableMemOpInterface,mlir::Value,llvm::DenseMapInfo<mlir::PromotableMemOpInterface,void>,llvm::detail::DenseMapPair<mlir::PromotableMemOpInterface,mlir::Value>>,mlir::PromotableMemOpInterface,mlir::Value,llvm::DenseMapInfo<mlir::PromotableMemOpInterface,void>,llvm::detail::DenseMapPair<mlir::PromotableMemOpInterface,mlir::Value>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = (*a1 + 24 * v4);
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 2;
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
      v5 = (*a1 + 24 * (v12 & v3));
      v6 = *v5;
      if (*a2 == *v5)
      {
        return v5 + 2;
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
    llvm::DenseMap<mlir::PromotableMemOpInterface,mlir::Value,llvm::DenseMapInfo<mlir::PromotableMemOpInterface,void>,llvm::detail::DenseMapPair<mlir::PromotableMemOpInterface,mlir::Value>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>,mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>::LookupBucketFor<mlir::Operation *>(v14, v13, &v15);
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
  v5[2] = 0;
  return v5 + 2;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::PromotableMemOpInterface,mlir::Value,llvm::DenseMapInfo<mlir::PromotableMemOpInterface,void>,llvm::detail::DenseMapPair<mlir::PromotableMemOpInterface,mlir::Value>>,mlir::PromotableMemOpInterface,mlir::Value,llvm::DenseMapInfo<mlir::PromotableMemOpInterface,void>,llvm::detail::DenseMapPair<mlir::PromotableMemOpInterface,mlir::Value>>::try_emplace<mlir::Value>@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
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
  v9 = (*result + 24 * v8);
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
      v9 = (v6 + 24 * (v16 & v7));
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
        v9[2] = *a3;
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
    llvm::DenseMap<mlir::PromotableMemOpInterface,mlir::Value,llvm::DenseMapInfo<mlir::PromotableMemOpInterface,void>,llvm::detail::DenseMapPair<mlir::PromotableMemOpInterface,mlir::Value>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>,mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>::LookupBucketFor<mlir::Operation *>(v17, a2, &v20);
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
  *(a4 + 8) = v6 + 24 * v5;
  *(a4 + 16) = v11;
  return result;
}

_OWORD *llvm::DenseMap<mlir::PromotableMemOpInterface,mlir::Value,llvm::DenseMapInfo<mlir::PromotableMemOpInterface,void>,llvm::detail::DenseMapPair<mlir::PromotableMemOpInterface,mlir::Value>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = 24 * v10 - 24;
    if (v11 >= 0x18)
    {
      v16 = v11 / 0x18 + 1;
      v12 = (result + 24 * (v16 & 0x1FFFFFFFFFFFFFFELL));
      v17 = result;
      v18 = v16 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *v17 = xmmword_25736B1E0;
        *(v17 + 24) = xmmword_25736B1E0;
        v17 += 3;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_16:
        if (v3)
        {
          v20 = v4;
          do
          {
            v26 = *v20;
            if ((*v20 | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              v27 = *(a1 + 16) - 1;
              v28 = v27 & ((v26 >> 4) ^ (v26 >> 9));
              v25 = (*a1 + 24 * v28);
              v29 = *v25;
              if (v26 != *v25)
              {
                v30 = 0;
                v31 = 1;
                while (v29 != -4096)
                {
                  if (v30)
                  {
                    v32 = 0;
                  }

                  else
                  {
                    v32 = v29 == -8192;
                  }

                  if (v32)
                  {
                    v30 = v25;
                  }

                  v33 = v28 + v31++;
                  v28 = v33 & v27;
                  v25 = (*a1 + 24 * (v33 & v27));
                  v29 = *v25;
                  if (v26 == *v25)
                  {
                    goto LABEL_26;
                  }
                }

                if (v30)
                {
                  v25 = v30;
                }
              }

LABEL_26:
              *v25 = *v20;
              v25[2] = *(v20 + 2);
              ++*(a1 + 8);
            }

            v20 = (v20 + 24);
          }

          while (v20 != (v4 + 24 * v3));
        }

        llvm::deallocate_buffer(v4, (24 * v3));
      }
    }

    else
    {
      v12 = result;
    }

    v19 = (result + 24 * v10);
    do
    {
      *v12 = xmmword_25736B1E0;
      v12 = (v12 + 24);
    }

    while (v12 != v19);
    goto LABEL_16;
  }

  *(a1 + 8) = 0;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 24 * v13 - 24;
    if (v14 < 0x18)
    {
      v15 = result;
LABEL_21:
      v24 = (result + 24 * v13);
      do
      {
        *v15 = xmmword_25736B1E0;
        v15 = (v15 + 24);
      }

      while (v15 != v24);
      return result;
    }

    v21 = v14 / 0x18 + 1;
    v15 = (result + 24 * (v21 & 0x1FFFFFFFFFFFFFFELL));
    v22 = result;
    v23 = v21 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v22 = xmmword_25736B1E0;
      *(v22 + 24) = xmmword_25736B1E0;
      v22 += 3;
      v23 -= 2;
    }

    while (v23);
    if (v21 != (v21 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_21;
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>>>,mlir::Region *,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = a2;
  *(result + 8) = 0;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = *result;
    v6 = (v4 - 1) & 0x7FFFFFFFFFFFFFFLL;
    if (v6)
    {
      v7 = v6 + 1;
      v8 = (v6 + 1) & 0xFFFFFFFFFFFFFFELL;
      v9 = &v5[4 * v8];
      v10 = v5 + 4;
      v11 = v8;
      do
      {
        *(v10 - 4) = -4096;
        *v10 = -4096;
        v10 += 8;
        v11 -= 2;
      }

      while (v11);
      if (v7 == v8)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v9 = *result;
    }

    v12 = &v5[4 * v4];
    do
    {
      *v9 = -4096;
      v9 += 4;
    }

    while (v9 != v12);
  }

LABEL_10:
  if (a2 != a3)
  {
    do
    {
      v16 = *v3;
      if ((*v3 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v17 = *(result + 16) - 1;
        v18 = v17 & ((v16 >> 4) ^ (v16 >> 9));
        v13 = *result + 32 * v18;
        v19 = *v13;
        if (v16 != *v13)
        {
          v20 = 0;
          v21 = 1;
          while (v19 != -4096)
          {
            if (v20)
            {
              v22 = 0;
            }

            else
            {
              v22 = v19 == -8192;
            }

            if (v22)
            {
              v20 = v13;
            }

            v23 = v18 + v21++;
            v18 = v23 & v17;
            v13 = *result + 32 * v18;
            v19 = *v13;
            if (v16 == *v13)
            {
              goto LABEL_14;
            }
          }

          if (v20)
          {
            v13 = v20;
          }
        }

LABEL_14:
        *(v13 + 8) = 0;
        *(v13 + 16) = 0;
        *v13 = v16;
        *(v13 + 24) = 0;
        *(v13 + 8) = v3[1];
        v3[1] = 0;
        *(v13 + 16) = *(v3 + 4);
        *(v3 + 4) = 0;
        v14 = *(v13 + 20);
        *(v13 + 20) = *(v3 + 5);
        *(v3 + 5) = v14;
        v15 = *(v13 + 24);
        *(v13 + 24) = *(v3 + 6);
        *(v3 + 6) = v15;
        ++*(result + 8);
        llvm::deallocate_buffer(0, (16 * v15));
      }

      v3 += 4;
    }

    while (v3 != a3);
  }

  return result;
}

mlir::Operation *std::__introsort<std::_ClassicAlgPolicy,dominanceSort(llvm::SmallVector<mlir::Operation *,6u> &,mlir::Region &,llvm::DenseMap<mlir::Region*,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>,llvm::DenseMapInfo<mlir::Region*,void>,llvm::detail::DenseMapPair<mlir::Region*,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>>> &)::$_0 &,mlir::Operation **,false>(mlir::Operation *result, mlir::Operation **a2, uint64_t **a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v459 = a2 - 2;
  v460 = a2 - 1;
  v462 = a2;
  v458 = a2 - 3;
  i = v8;
  while (1)
  {
    v8 = i;
    v10 = v462;
    v11 = v462 - v8;
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:

          return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,dominanceSort(llvm::SmallVector<mlir::Operation *,6u> &,mlir::Region &,llvm::DenseMap<mlir::Region*,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>,llvm::DenseMapInfo<mlir::Region*,void>,llvm::detail::DenseMapPair<mlir::Region*,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>>> &)::$_0 &,mlir::Operation **,0>(v8, v8 + 1, v460, a3);
        case 4:

          return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,dominanceSort(llvm::SmallVector<mlir::Operation *,6u> &,mlir::Region &,llvm::DenseMap<mlir::Region*,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>,llvm::DenseMapInfo<mlir::Region*,void>,llvm::detail::DenseMapPair<mlir::Region*,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>>> &)::$_0 &,mlir::Operation **,0>(v8, v8 + 1, v8 + 2, v460, a3);
        case 5:

          return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,dominanceSort(llvm::SmallVector<mlir::Operation *,6u> &,mlir::Region &,llvm::DenseMap<mlir::Region*,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>,llvm::DenseMapInfo<mlir::Region*,void>,llvm::detail::DenseMapPair<mlir::Region*,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>>> &)::$_0 &,mlir::Operation **,0>(v8, v8 + 1, v8 + 2, v8 + 3, v460, a3);
      }
    }

    else
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        result = *(v462 - 1);
        v224 = *v8;
        v225 = **a3;
        v226 = *(*a3 + 4);
        if (v226)
        {
          v227 = *(result + 2);
          v228 = v226 - 1;
          v229 = ((v227 >> 4) ^ (v227 >> 9)) & (v226 - 1);
          v230 = *(v225 + 16 * v229);
          if (v230 == v227)
          {
            v231 = *(v225 + 16 * v229 + 8);
            goto LABEL_575;
          }

          v448 = 1;
          while (v230 != -4096)
          {
            v449 = v229 + v448++;
            v229 = v449 & v228;
            v230 = *(v225 + 16 * v229);
            if (v230 == v227)
            {
              goto LABEL_573;
            }
          }
        }

        v229 = *(*a3 + 4);
LABEL_573:
        v231 = *(v225 + 16 * v229 + 8);
        if (!v226)
        {
          goto LABEL_577;
        }

        v228 = v226 - 1;
LABEL_575:
        v450 = *(v224 + 2);
        LODWORD(v451) = ((v450 >> 4) ^ (v450 >> 9)) & v228;
        v452 = *(v225 + 16 * v451);
        if (v452 != v450)
        {
          v455 = 1;
          while (v452 != -4096)
          {
            v456 = v451 + v455++;
            v451 = v456 & v228;
            v452 = *(v225 + 16 * v451);
            if (v452 == v450)
            {
              v226 = v451;
              break;
            }
          }

          v10 = v462;
          v457 = *(v225 + 16 * v226 + 8);
          v454 = v231 >= v457;
          if (v231 == v457)
          {
            goto LABEL_578;
          }

          goto LABEL_585;
        }

        v226 = ((v450 >> 4) ^ (v450 >> 9)) & v228;
LABEL_577:
        v453 = *(v225 + 16 * v226 + 8);
        v454 = v231 >= v453;
        if (v231 == v453)
        {
LABEL_578:
          result = mlir::Operation::isBeforeInBlock(result, v224);
          if (!result)
          {
            return result;
          }

          v224 = *v8;
          result = *(v10 - 1);
LABEL_586:
          *v8 = result;
          *(v10 - 1) = v224;
          return result;
        }

LABEL_585:
        if (v454)
        {
          return result;
        }

        goto LABEL_586;
      }
    }

    if (v11 <= 23)
    {
      break;
    }

    if (!a4)
    {
      if (v8 == v462)
      {
        return result;
      }

      v273 = (v11 - 2) >> 1;
      v461 = v273;
      while (2)
      {
        v275 = v273;
        if (v461 < v273)
        {
          goto LABEL_358;
        }

        v276 = (2 * v273) | 1;
        v277 = &v8[v276];
        if (2 * v273 + 2 >= v11)
        {
          goto LABEL_378;
        }

        v278 = *v277;
        v279 = v277[1];
        v280 = **a3;
        v281 = *(*a3 + 4);
        if (v281)
        {
          v282 = *(v278 + 2);
          v283 = v281 - 1;
          v284 = ((v282 >> 4) ^ (v282 >> 9)) & (v281 - 1);
          v285 = *(v280 + 16 * v284);
          if (v285 == v282)
          {
            v286 = *(v280 + 16 * v284 + 8);
LABEL_371:
            v289 = *(v279 + 2);
            v290 = ((v289 >> 4) ^ (v289 >> 9)) & v283;
            v291 = *(v280 + 16 * v290);
            if (v291 == v289)
            {
LABEL_372:
              v281 = v290;
            }

            else
            {
              v343 = 1;
              while (v291 != -4096)
              {
                v344 = v290 + v343++;
                v290 = v344 & v283;
                v291 = *(v280 + 16 * v290);
                if (v291 == v289)
                {
                  goto LABEL_372;
                }
              }
            }

            goto LABEL_373;
          }

          v287 = 1;
          while (v285 != -4096)
          {
            v288 = v284 + v287++;
            v284 = v288 & v283;
            v285 = *(v280 + 16 * v284);
            if (v285 == v282)
            {
              goto LABEL_369;
            }
          }
        }

        v284 = *(*a3 + 4);
LABEL_369:
        v286 = *(v280 + 16 * v284 + 8);
        if (v281)
        {
          v283 = v281 - 1;
          goto LABEL_371;
        }

LABEL_373:
        v292 = *(v280 + 16 * v281 + 8);
        if (v286 == v292)
        {
          if (!mlir::Operation::isBeforeInBlock(v278, v279))
          {
LABEL_378:
            result = *v277;
            v293 = v8[v275];
            v294 = **a3;
            v295 = *(*a3 + 4);
            if (v295)
            {
              v296 = *(result + 2);
              v297 = v295 - 1;
              v298 = ((v296 >> 4) ^ (v296 >> 9)) & (v295 - 1);
              v299 = *(v294 + 16 * v298);
              if (v299 == v296)
              {
                v300 = *(v294 + 16 * v298 + 8);
LABEL_388:
                v303 = *(v293 + 2);
                v304 = ((v303 >> 4) ^ (v303 >> 9)) & v297;
                v305 = *(v294 + 16 * v304);
                if (v305 == v303)
                {
LABEL_389:
                  v295 = v304;
                }

                else
                {
                  v341 = 1;
                  while (v305 != -4096)
                  {
                    v342 = v304 + v341++;
                    v304 = v342 & v297;
                    v305 = *(v294 + 16 * v304);
                    if (v305 == v303)
                    {
                      goto LABEL_389;
                    }
                  }
                }

                goto LABEL_390;
              }

              v301 = 1;
              while (v299 != -4096)
              {
                v302 = v298 + v301++;
                v298 = v302 & v297;
                v299 = *(v294 + 16 * v298);
                if (v299 == v296)
                {
                  goto LABEL_386;
                }
              }
            }

            v298 = *(*a3 + 4);
LABEL_386:
            v300 = *(v294 + 16 * v298 + 8);
            if (v295)
            {
              v297 = v295 - 1;
              goto LABEL_388;
            }

LABEL_390:
            v306 = *(v294 + 16 * v295 + 8);
            if (v300 == v306)
            {
              result = mlir::Operation::isBeforeInBlock(result, v8[v275]);
              if ((result & 1) == 0)
              {
                v293 = v8[v275];
                result = *v277;
                goto LABEL_394;
              }

LABEL_358:
              v273 = v275 - 1;
              if (v275)
              {
                continue;
              }

              v345 = v462;
              while (2)
              {
                v347 = v8;
                v348 = v345;
                v349 = 0;
                v463 = *v347;
                v350 = v347;
LABEL_454:
                v351 = v347;
                v352 = &v347[v349];
                v347 = v352 + 1;
                v353 = 2 * v349;
                v349 = (2 * v349) | 1;
                v354 = v353 + 2;
                if (v353 + 2 < v11)
                {
                  v357 = v352[2];
                  v356 = v352 + 2;
                  v355 = v357;
                  result = *(v356 - 1);
                  v358 = **a3;
                  v359 = *(*a3 + 4);
                  if (v359)
                  {
                    v360 = *(result + 2);
                    v361 = v359 - 1;
                    v362 = ((v360 >> 4) ^ (v360 >> 9)) & (v359 - 1);
                    v363 = *(v358 + 16 * v362);
                    if (v363 == v360)
                    {
                      v364 = *(v358 + 16 * v362 + 8);
LABEL_465:
                      v367 = *(v355 + 2);
                      v368 = ((v367 >> 4) ^ (v367 >> 9)) & v361;
                      v369 = *(v358 + 16 * v368);
                      if (v369 == v367)
                      {
LABEL_466:
                        v359 = v368;
                      }

                      else
                      {
                        v371 = 1;
                        while (v369 != -4096)
                        {
                          v372 = v368 + v371++;
                          v368 = v372 & v361;
                          v369 = *(v358 + 16 * v368);
                          if (v369 == v367)
                          {
                            goto LABEL_466;
                          }
                        }
                      }

                      goto LABEL_467;
                    }

                    v365 = 1;
                    while (v363 != -4096)
                    {
                      v366 = v362 + v365++;
                      v362 = v366 & v361;
                      v363 = *(v358 + 16 * v362);
                      if (v363 == v360)
                      {
                        goto LABEL_463;
                      }
                    }
                  }

                  v362 = *(*a3 + 4);
LABEL_463:
                  v364 = *(v358 + 16 * v362 + 8);
                  if (v359)
                  {
                    v361 = v359 - 1;
                    goto LABEL_465;
                  }

LABEL_467:
                  v370 = *(v358 + 16 * v359 + 8);
                  if (v364 == v370)
                  {
                    result = mlir::Operation::isBeforeInBlock(result, v355);
                    if ((result & 1) == 0)
                    {
                      goto LABEL_453;
                    }
                  }

                  else if (v364 >= v370)
                  {
                    goto LABEL_453;
                  }

                  v347 = v356;
                  v349 = v354;
                }

LABEL_453:
                *v351 = *v347;
                if (v349 > ((v11 - 2) >> 1))
                {
                  v373 = v348 - 1;
                  if (v347 == v373)
                  {
                    v345 = v373;
                    *v347 = v463;
                    v8 = v350;
                    goto LABEL_450;
                  }

                  *v347 = *v373;
                  v345 = v373;
                  *v373 = v463;
                  v8 = v350;
                  v374 = (v347 - v350 + 8) >> 3;
                  v375 = v374 - 2;
                  if (v374 >= 2)
                  {
                    v376 = v375 >> 1;
                    v377 = &v350[v375 >> 1];
                    result = *v377;
                    v378 = *v347;
                    v379 = **a3;
                    v380 = *(*a3 + 4);
                    if (v380)
                    {
                      v381 = *(result + 2);
                      v382 = v380 - 1;
                      v383 = ((v381 >> 4) ^ (v381 >> 9)) & (v380 - 1);
                      v384 = *(v379 + 16 * v383);
                      if (v384 == v381)
                      {
                        v385 = *(v379 + 16 * v383 + 8);
LABEL_488:
                        v388 = *(v378 + 2);
                        v389 = ((v388 >> 4) ^ (v388 >> 9)) & v382;
                        v390 = *(v379 + 16 * v389);
                        if (v390 == v388)
                        {
LABEL_489:
                          v380 = v389;
                        }

                        else
                        {
                          v409 = 1;
                          while (v390 != -4096)
                          {
                            v410 = v389 + v409++;
                            v389 = v410 & v382;
                            v390 = *(v379 + 16 * v389);
                            if (v390 == v388)
                            {
                              goto LABEL_489;
                            }
                          }
                        }

                        goto LABEL_490;
                      }

                      v386 = 1;
                      while (v384 != -4096)
                      {
                        v387 = v383 + v386++;
                        v383 = v387 & v382;
                        v384 = *(v379 + 16 * v383);
                        if (v384 == v381)
                        {
                          goto LABEL_486;
                        }
                      }
                    }

                    v383 = *(*a3 + 4);
LABEL_486:
                    v385 = *(v379 + 16 * v383 + 8);
                    if (v380)
                    {
                      v382 = v380 - 1;
                      goto LABEL_488;
                    }

LABEL_490:
                    v391 = *(v379 + 16 * v380 + 8);
                    if (v385 == v391)
                    {
                      result = mlir::Operation::isBeforeInBlock(result, *v347);
                      if (result)
                      {
                        v378 = *v347;
                        result = *v377;
                        goto LABEL_494;
                      }

                      goto LABEL_450;
                    }

                    if (v385 >= v391)
                    {
                      goto LABEL_450;
                    }

LABEL_494:
                    *v347 = result;
                    if (v375 < 2)
                    {
LABEL_495:
                      v392 = v377;
LABEL_496:
                      *v392 = v378;
                      goto LABEL_450;
                    }

                    while (2)
                    {
                      v393 = v376 - 1;
                      v376 = (v376 - 1) >> 1;
                      v392 = &v8[v376];
                      result = *v392;
                      v394 = **a3;
                      v395 = *(*a3 + 4);
                      if (v395)
                      {
                        v396 = *(result + 2);
                        v397 = v395 - 1;
                        v398 = ((v396 >> 4) ^ (v396 >> 9)) & (v395 - 1);
                        v399 = *(v394 + 16 * v398);
                        if (v399 == v396)
                        {
                          v400 = *(v394 + 16 * v398 + 8);
LABEL_509:
                          v403 = *(v378 + 2);
                          v404 = ((v403 >> 4) ^ (v403 >> 9)) & v397;
                          v405 = *(v394 + 16 * v404);
                          if (v405 == v403)
                          {
LABEL_510:
                            v395 = v404;
                          }

                          else
                          {
                            v407 = 1;
                            while (v405 != -4096)
                            {
                              v408 = v404 + v407++;
                              v404 = v408 & v397;
                              v405 = *(v394 + 16 * v404);
                              if (v405 == v403)
                              {
                                goto LABEL_510;
                              }
                            }
                          }

                          goto LABEL_511;
                        }

                        v401 = 1;
                        while (v399 != -4096)
                        {
                          v402 = v398 + v401++;
                          v398 = v402 & v397;
                          v399 = *(v394 + 16 * v398);
                          if (v399 == v396)
                          {
                            goto LABEL_507;
                          }
                        }
                      }

                      v398 = *(*a3 + 4);
LABEL_507:
                      v400 = *(v394 + 16 * v398 + 8);
                      if (v395)
                      {
                        v397 = v395 - 1;
                        goto LABEL_509;
                      }

LABEL_511:
                      v406 = *(v394 + 16 * v395 + 8);
                      if (v400 == v406)
                      {
                        result = mlir::Operation::isBeforeInBlock(result, v378);
                        if (!result)
                        {
                          goto LABEL_495;
                        }

                        result = *v392;
                        *v377 = *v392;
                        v377 = &v8[v376];
                        if (v393 <= 1)
                        {
                          goto LABEL_496;
                        }
                      }

                      else
                      {
                        if (v400 >= v406)
                        {
                          goto LABEL_495;
                        }

                        *v377 = result;
                        v377 = &v8[v376];
                        if (v393 <= 1)
                        {
                          goto LABEL_496;
                        }
                      }

                      continue;
                    }
                  }

LABEL_450:
                  if (v11-- <= 2)
                  {
                    return result;
                  }

                  continue;
                }

                goto LABEL_454;
              }
            }

            if (v300 < v306)
            {
              goto LABEL_358;
            }

LABEL_394:
            v8[v275] = result;
            if (v461 < v276)
            {
LABEL_356:
              v274 = v277;
LABEL_357:
              *v274 = v293;
              goto LABEL_358;
            }

            while (2)
            {
              v307 = 2 * v276;
              v276 = (2 * v276) | 1;
              v274 = &v8[v276];
              v308 = v307 + 2;
              if (v307 + 2 < v11)
              {
                v309 = *v274;
                v310 = v274[1];
                v311 = **a3;
                v312 = *(*a3 + 4);
                if (v312)
                {
                  v313 = *(v309 + 2);
                  v314 = v312 - 1;
                  v315 = ((v313 >> 4) ^ (v313 >> 9)) & (v312 - 1);
                  v316 = *(v311 + 16 * v315);
                  if (v316 == v313)
                  {
                    v317 = *(v311 + 16 * v315 + 8);
LABEL_409:
                    v320 = *(v310 + 2);
                    v321 = ((v320 >> 4) ^ (v320 >> 9)) & v314;
                    v322 = *(v311 + 16 * v321);
                    if (v322 == v320)
                    {
LABEL_410:
                      v312 = v321;
                    }

                    else
                    {
                      v339 = 1;
                      while (v322 != -4096)
                      {
                        v340 = v321 + v339++;
                        v321 = v340 & v314;
                        v322 = *(v311 + 16 * v321);
                        if (v322 == v320)
                        {
                          goto LABEL_410;
                        }
                      }
                    }

                    goto LABEL_411;
                  }

                  v318 = 1;
                  while (v316 != -4096)
                  {
                    v319 = v315 + v318++;
                    v315 = v319 & v314;
                    v316 = *(v311 + 16 * v315);
                    if (v316 == v313)
                    {
                      goto LABEL_407;
                    }
                  }
                }

                v315 = *(*a3 + 4);
LABEL_407:
                v317 = *(v311 + 16 * v315 + 8);
                if (v312)
                {
                  v314 = v312 - 1;
                  goto LABEL_409;
                }

LABEL_411:
                v323 = *(v311 + 16 * v312 + 8);
                if (v317 == v323)
                {
                  if (!mlir::Operation::isBeforeInBlock(v309, v310))
                  {
                    goto LABEL_416;
                  }
                }

                else if (v317 >= v323)
                {
                  goto LABEL_416;
                }

                ++v274;
                v276 = v308;
              }

LABEL_416:
              result = *v274;
              v324 = **a3;
              v325 = *(*a3 + 4);
              if (v325)
              {
                v326 = *(result + 2);
                v327 = v325 - 1;
                v328 = ((v326 >> 4) ^ (v326 >> 9)) & (v325 - 1);
                v329 = *(v324 + 16 * v328);
                if (v329 == v326)
                {
                  v330 = *(v324 + 16 * v328 + 8);
LABEL_426:
                  v333 = *(v293 + 2);
                  v334 = ((v333 >> 4) ^ (v333 >> 9)) & v327;
                  v335 = *(v324 + 16 * v334);
                  if (v335 == v333)
                  {
LABEL_427:
                    v325 = v334;
                  }

                  else
                  {
                    v337 = 1;
                    while (v335 != -4096)
                    {
                      v338 = v334 + v337++;
                      v334 = v338 & v327;
                      v335 = *(v324 + 16 * v334);
                      if (v335 == v333)
                      {
                        goto LABEL_427;
                      }
                    }
                  }

                  goto LABEL_428;
                }

                v331 = 1;
                while (v329 != -4096)
                {
                  v332 = v328 + v331++;
                  v328 = v332 & v327;
                  v329 = *(v324 + 16 * v328);
                  if (v329 == v326)
                  {
                    goto LABEL_424;
                  }
                }
              }

              v328 = *(*a3 + 4);
LABEL_424:
              v330 = *(v324 + 16 * v328 + 8);
              if (v325)
              {
                v327 = v325 - 1;
                goto LABEL_426;
              }

LABEL_428:
              v336 = *(v324 + 16 * v325 + 8);
              if (v330 == v336)
              {
                result = mlir::Operation::isBeforeInBlock(result, v293);
                if (result)
                {
                  goto LABEL_356;
                }

                result = *v274;
                *v277 = *v274;
                v277 = v274;
                if (v461 < v276)
                {
                  goto LABEL_357;
                }
              }

              else
              {
                if (v330 < v336)
                {
                  goto LABEL_356;
                }

                *v277 = result;
                v277 = v274;
                if (v461 < v276)
                {
                  goto LABEL_357;
                }
              }

              continue;
            }
          }
        }

        else if (v286 >= v292)
        {
          goto LABEL_378;
        }

        break;
      }

      ++v277;
      v276 = 2 * v275 + 2;
      goto LABEL_378;
    }

    if (v11 < 0x81)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,dominanceSort(llvm::SmallVector<mlir::Operation *,6u> &,mlir::Region &,llvm::DenseMap<mlir::Region*,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>,llvm::DenseMapInfo<mlir::Region*,void>,llvm::detail::DenseMapPair<mlir::Region*,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>>> &)::$_0 &,mlir::Operation **,0>(&v8[v11 >> 1], v8, v460, a3);
      --a4;
      v14 = *v8;
      if (a5)
      {
        goto LABEL_31;
      }
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,dominanceSort(llvm::SmallVector<mlir::Operation *,6u> &,mlir::Region &,llvm::DenseMap<mlir::Region*,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>,llvm::DenseMapInfo<mlir::Region*,void>,llvm::detail::DenseMapPair<mlir::Region*,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>>> &)::$_0 &,mlir::Operation **,0>(v8, &v8[v11 >> 1], v460, a3);
      v12 = v11 >> 1;
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,dominanceSort(llvm::SmallVector<mlir::Operation *,6u> &,mlir::Region &,llvm::DenseMap<mlir::Region*,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>,llvm::DenseMapInfo<mlir::Region*,void>,llvm::detail::DenseMapPair<mlir::Region*,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>>> &)::$_0 &,mlir::Operation **,0>(v8 + 1, &v8[v12 - 1], v459, a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,dominanceSort(llvm::SmallVector<mlir::Operation *,6u> &,mlir::Region &,llvm::DenseMap<mlir::Region*,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>,llvm::DenseMapInfo<mlir::Region*,void>,llvm::detail::DenseMapPair<mlir::Region*,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>>> &)::$_0 &,mlir::Operation **,0>(v8 + 2, &v8[v12 + 1], v458, a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,dominanceSort(llvm::SmallVector<mlir::Operation *,6u> &,mlir::Region &,llvm::DenseMap<mlir::Region*,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>,llvm::DenseMapInfo<mlir::Region*,void>,llvm::detail::DenseMapPair<mlir::Region*,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>>> &)::$_0 &,mlir::Operation **,0>(&v8[v12 - 1], &v8[v12], &v8[v12 + 1], a3);
      v13 = *v8;
      *v8 = v8[v12];
      v8[v12] = v13;
      --a4;
      v14 = *v8;
      if (a5)
      {
        goto LABEL_31;
      }
    }

    result = *(v8 - 1);
    v15 = **a3;
    v16 = *(*a3 + 4);
    if (v16)
    {
      v17 = *(result + 2);
      v18 = v16 - 1;
      v19 = ((v17 >> 4) ^ (v17 >> 9)) & (v16 - 1);
      v20 = *(v15 + 16 * v19);
      if (v20 == v17)
      {
        v21 = *(v15 + 16 * v19 + 8);
        goto LABEL_26;
      }

      v22 = 1;
      while (v20 != -4096)
      {
        v23 = v19 + v22++;
        v19 = v23 & v18;
        v20 = *(v15 + 16 * v19);
        if (v20 == v17)
        {
          goto LABEL_24;
        }
      }
    }

    v19 = *(*a3 + 4);
LABEL_24:
    v21 = *(v15 + 16 * v19 + 8);
    if (!v16)
    {
      goto LABEL_155;
    }

    v18 = v16 - 1;
LABEL_26:
    v24 = *(v14 + 2);
    v25 = ((v24 >> 4) ^ (v24 >> 9)) & v18;
    v26 = *(v15 + 16 * v25);
    if (v26 != v24)
    {
      v127 = 1;
      while (v26 != -4096)
      {
        v128 = v25 + v127++;
        v25 = v128 & v18;
        v26 = *(v15 + 16 * v25);
        if (v26 == v24)
        {
          goto LABEL_27;
        }
      }

LABEL_155:
      v25 = *(*a3 + 4);
    }

LABEL_27:
    v27 = *(v15 + 16 * v25 + 8);
    if (v21 == v27)
    {
      result = mlir::Operation::isBeforeInBlock(result, v14);
      v14 = *v8;
      if ((result & 1) == 0)
      {
        v15 = **a3;
        v16 = *(*a3 + 4);
        goto LABEL_148;
      }

LABEL_31:
      v28 = v8;
      do
      {
        while (1)
        {
          v29 = v28;
          v31 = v28[1];
          ++v28;
          v30 = v31;
          v32 = **a3;
          v33 = *(*a3 + 4);
          if (v33)
          {
            v34 = *(v30 + 2);
            v35 = v33 - 1;
            v36 = ((v34 >> 4) ^ (v34 >> 9)) & (v33 - 1);
            v37 = *(v32 + 16 * v36);
            if (v37 == v34)
            {
              v38 = *(v32 + 16 * v36 + 8);
              goto LABEL_43;
            }

            v39 = 1;
            while (v37 != -4096)
            {
              v40 = v36 + v39++;
              v36 = v40 & v35;
              v37 = *(v32 + 16 * v36);
              if (v37 == v34)
              {
                goto LABEL_41;
              }
            }
          }

          v36 = *(*a3 + 4);
LABEL_41:
          v38 = *(v32 + 16 * v36 + 8);
          if (v33)
          {
            v35 = v33 - 1;
LABEL_43:
            v41 = *(v14 + 2);
            v42 = ((v41 >> 4) ^ (v41 >> 9)) & v35;
            v43 = *(v32 + 16 * v42);
            if (v43 == v41)
            {
LABEL_44:
              v33 = v42;
            }

            else
            {
              v45 = 1;
              while (v43 != -4096)
              {
                v46 = v42 + v45++;
                v42 = v46 & v35;
                v43 = *(v32 + 16 * v42);
                if (v43 == v41)
                {
                  goto LABEL_44;
                }
              }
            }
          }

          v44 = *(v32 + 16 * v33 + 8);
          if (v38 == v44)
          {
            break;
          }

          if (v38 >= v44)
          {
            goto LABEL_52;
          }
        }
      }

      while (mlir::Operation::isBeforeInBlock(v30, v14));
LABEL_52:
      v47 = v462;
      if (v29 != v8)
      {
        while (1)
        {
          v67 = *--v47;
          v66 = v67;
          v68 = **a3;
          v69 = *(*a3 + 4);
          if (v69)
          {
            v70 = *(v66 + 2);
            v71 = v69 - 1;
            v72 = ((v70 >> 4) ^ (v70 >> 9)) & (v69 - 1);
            v73 = *(v68 + 16 * v72);
            if (v73 == v70)
            {
              v74 = *(v68 + 16 * v72 + 8);
              goto LABEL_89;
            }

            v75 = 1;
            while (v73 != -4096)
            {
              v76 = v72 + v75++;
              v72 = v76 & v71;
              v73 = *(v68 + 16 * v72);
              if (v73 == v70)
              {
                goto LABEL_87;
              }
            }
          }

          v72 = *(*a3 + 4);
LABEL_87:
          v74 = *(v68 + 16 * v72 + 8);
          if (!v69)
          {
            goto LABEL_91;
          }

          v71 = v69 - 1;
LABEL_89:
          v77 = *(v14 + 2);
          v78 = ((v77 >> 4) ^ (v77 >> 9)) & v71;
          v79 = *(v68 + 16 * v78);
          if (v79 == v77)
          {
LABEL_90:
            v69 = v78;
          }

          else
          {
            v81 = 1;
            while (v79 != -4096)
            {
              v82 = v78 + v81++;
              v78 = v82 & v71;
              v79 = *(v68 + 16 * v78);
              if (v79 == v77)
              {
                goto LABEL_90;
              }
            }
          }

LABEL_91:
          v80 = *(v68 + 16 * v69 + 8);
          if (v74 == v80)
          {
            if (mlir::Operation::isBeforeInBlock(v66, v14))
            {
              goto LABEL_98;
            }
          }

          else if (v74 < v80)
          {
            goto LABEL_98;
          }
        }
      }

      v47 = v462;
      if (v28 < v462)
      {
        v47 = v462;
        while (1)
        {
          v49 = *--v47;
          v48 = v49;
          v50 = **a3;
          v51 = *(*a3 + 4);
          if (v51)
          {
            v52 = *(v48 + 2);
            v53 = v51 - 1;
            v54 = ((v52 >> 4) ^ (v52 >> 9)) & (v51 - 1);
            v55 = *(v50 + 16 * v54);
            if (v55 == v52)
            {
              v56 = *(v50 + 16 * v54 + 8);
              goto LABEL_65;
            }

            v57 = 1;
            while (v55 != -4096)
            {
              v58 = v54 + v57++;
              v54 = v58 & v53;
              v55 = *(v50 + 16 * v54);
              if (v55 == v52)
              {
                goto LABEL_63;
              }
            }
          }

          v54 = *(*a3 + 4);
LABEL_63:
          v56 = *(v50 + 16 * v54 + 8);
          if (!v51)
          {
            goto LABEL_67;
          }

          v53 = v51 - 1;
LABEL_65:
          v59 = *(v14 + 2);
          v60 = ((v59 >> 4) ^ (v59 >> 9)) & v53;
          v61 = *(v50 + 16 * v60);
          if (v61 == v59)
          {
LABEL_66:
            v51 = v60;
          }

          else
          {
            v64 = 1;
            while (v61 != -4096)
            {
              v65 = v60 + v64++;
              v60 = v65 & v53;
              v61 = *(v50 + 16 * v60);
              if (v61 == v59)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_67:
          v62 = *(v50 + 16 * v51 + 8);
          if (v56 == v62)
          {
            v63 = mlir::Operation::isBeforeInBlock(v48, v14);
            if (v28 >= v47 || v63)
            {
              break;
            }
          }

          else if (v28 >= v47 || v56 < v62)
          {
            break;
          }
        }
      }

LABEL_98:
      if (v28 < v47)
      {
        v83 = v28;
        v84 = v47;
        do
        {
          v85 = *v83;
          *v83 = *v84;
          *v84 = v85;
          do
          {
            while (1)
            {
              v29 = v83;
              v87 = v83[1];
              ++v83;
              v86 = v87;
              v88 = **a3;
              v89 = *(*a3 + 4);
              if (v89)
              {
                v90 = *(v86 + 2);
                v91 = v89 - 1;
                v92 = ((v90 >> 4) ^ (v90 >> 9)) & (v89 - 1);
                v93 = *(v88 + 16 * v92);
                if (v93 == v90)
                {
                  v94 = *(v88 + 16 * v92 + 8);
                  goto LABEL_113;
                }

                v95 = 1;
                while (v93 != -4096)
                {
                  v96 = v92 + v95++;
                  v92 = v96 & v91;
                  v93 = *(v88 + 16 * v92);
                  if (v93 == v90)
                  {
                    goto LABEL_111;
                  }
                }
              }

              v92 = *(*a3 + 4);
LABEL_111:
              v94 = *(v88 + 16 * v92 + 8);
              if (v89)
              {
                v91 = v89 - 1;
LABEL_113:
                v97 = *(v14 + 2);
                v98 = ((v97 >> 4) ^ (v97 >> 9)) & v91;
                v99 = *(v88 + 16 * v98);
                if (v99 == v97)
                {
LABEL_114:
                  v89 = v98;
                }

                else
                {
                  v101 = 1;
                  while (v99 != -4096)
                  {
                    v102 = v98 + v101++;
                    v98 = v102 & v91;
                    v99 = *(v88 + 16 * v98);
                    if (v99 == v97)
                    {
                      goto LABEL_114;
                    }
                  }
                }
              }

              v100 = *(v88 + 16 * v89 + 8);
              if (v94 == v100)
              {
                break;
              }

              if (v94 >= v100)
              {
                goto LABEL_123;
              }
            }
          }

          while (mlir::Operation::isBeforeInBlock(v86, v14));
          do
          {
            while (1)
            {
LABEL_123:
              v104 = *--v84;
              v103 = v104;
              v105 = **a3;
              v106 = *(*a3 + 4);
              if (v106)
              {
                v107 = *(v103 + 2);
                v108 = v106 - 1;
                v109 = ((v107 >> 4) ^ (v107 >> 9)) & (v106 - 1);
                v110 = *(v105 + 16 * v109);
                if (v110 == v107)
                {
                  v111 = *(v105 + 16 * v109 + 8);
                  goto LABEL_133;
                }

                v112 = 1;
                while (v110 != -4096)
                {
                  v113 = v109 + v112++;
                  v109 = v113 & v108;
                  v110 = *(v105 + 16 * v109);
                  if (v110 == v107)
                  {
                    goto LABEL_131;
                  }
                }
              }

              v109 = *(*a3 + 4);
LABEL_131:
              v111 = *(v105 + 16 * v109 + 8);
              if (v106)
              {
                v108 = v106 - 1;
LABEL_133:
                v114 = *(v14 + 2);
                v115 = ((v114 >> 4) ^ (v114 >> 9)) & v108;
                v116 = *(v105 + 16 * v115);
                if (v116 == v114)
                {
LABEL_134:
                  v106 = v115;
                }

                else
                {
                  v118 = 1;
                  while (v116 != -4096)
                  {
                    v119 = v115 + v118++;
                    v115 = v119 & v108;
                    v116 = *(v105 + 16 * v115);
                    if (v116 == v114)
                    {
                      goto LABEL_134;
                    }
                  }
                }
              }

              v117 = *(v105 + 16 * v106 + 8);
              if (v111 == v117)
              {
                break;
              }

              if (v111 < v117)
              {
                goto LABEL_100;
              }
            }
          }

          while (!mlir::Operation::isBeforeInBlock(v103, v14));
LABEL_100:
          ;
        }

        while (v83 < v84);
      }

      if (v29 != v8)
      {
        *v8 = *v29;
      }

      *v29 = v14;
      if (v28 < v47)
      {
LABEL_147:
        result = std::__introsort<std::_ClassicAlgPolicy,dominanceSort(llvm::SmallVector<mlir::Operation *,6u> &,mlir::Region &,llvm::DenseMap<mlir::Region*,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>,llvm::DenseMapInfo<mlir::Region*,void>,llvm::detail::DenseMapPair<mlir::Region*,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>>> &)::$_0 &,mlir::Operation **,false>(v8, v29, a3, a4, a5 & 1);
        a5 = 0;
        i = v29 + 1;
      }

      else
      {
        v120 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,dominanceSort(llvm::SmallVector<mlir::Operation *,6u> &,mlir::Region &,llvm::DenseMap<mlir::Region*,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>,llvm::DenseMapInfo<mlir::Region*,void>,llvm::detail::DenseMapPair<mlir::Region*,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>>> &)::$_0 &,mlir::Operation **>(v8, v29, a3);
        i = v29 + 1;
        result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,dominanceSort(llvm::SmallVector<mlir::Operation *,6u> &,mlir::Region &,llvm::DenseMap<mlir::Region*,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>,llvm::DenseMapInfo<mlir::Region*,void>,llvm::detail::DenseMapPair<mlir::Region*,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>>> &)::$_0 &,mlir::Operation **>(v29 + 1, v462, a3);
        if (result)
        {
          a2 = v29;
          if (v120)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v120)
        {
          goto LABEL_147;
        }
      }
    }

    else
    {
      if (v21 < v27)
      {
        goto LABEL_31;
      }

LABEL_148:
      v121 = *v460;
      if (v16)
      {
        v122 = *(v14 + 2);
        v123 = v16 - 1;
        v124 = ((v122 >> 4) ^ (v122 >> 9)) & (v16 - 1);
        v125 = *(v15 + 16 * v124);
        if (v125 == v122)
        {
          v126 = *(v15 + 16 * v124 + 8);
          goto LABEL_163;
        }

        v129 = 1;
        while (v125 != -4096)
        {
          v130 = v124 + v129++;
          v124 = v130 & v123;
          v125 = *(v15 + 16 * v124);
          if (v125 == v122)
          {
            goto LABEL_161;
          }
        }
      }

      v124 = v16;
LABEL_161:
      v126 = *(v15 + 16 * v124 + 8);
      if (!v16)
      {
        goto LABEL_282;
      }

      v123 = v16 - 1;
LABEL_163:
      v131 = *(v121 + 2);
      v132 = ((v131 >> 4) ^ (v131 >> 9)) & v123;
      v133 = *(v15 + 16 * v132);
      if (v133 == v131)
      {
        goto LABEL_164;
      }

      v222 = 1;
      while (v133 != -4096)
      {
        v223 = v132 + v222++;
        v132 = v223 & v123;
        v133 = *(v15 + 16 * v132);
        if (v133 == v131)
        {
          goto LABEL_164;
        }
      }

LABEL_282:
      v132 = v16;
LABEL_164:
      v134 = *(v15 + 16 * v132 + 8);
      if (v126 == v134)
      {
        result = mlir::Operation::isBeforeInBlock(v14, v121);
        if ((result & 1) == 0)
        {
          goto LABEL_166;
        }

        goto LABEL_190;
      }

      if (v126 >= v134)
      {
LABEL_166:
        for (i = v8 + 1; ; ++i)
        {
          if (i >= v462)
          {
            goto LABEL_211;
          }

          v135 = *i;
          v136 = **a3;
          v137 = *(*a3 + 4);
          if (v137)
          {
            v138 = *(v14 + 2);
            v139 = v137 - 1;
            v140 = ((v138 >> 4) ^ (v138 >> 9)) & (v137 - 1);
            v141 = *(v136 + 16 * v140);
            if (v141 == v138)
            {
              v142 = *(v136 + 16 * v140 + 8);
              goto LABEL_180;
            }

            v143 = 1;
            while (v141 != -4096)
            {
              v144 = v140 + v143++;
              v140 = v144 & v139;
              v141 = *(v136 + 16 * v140);
              if (v141 == v138)
              {
                goto LABEL_178;
              }
            }
          }

          v140 = *(*a3 + 4);
LABEL_178:
          v142 = *(v136 + 16 * v140 + 8);
          if (v137)
          {
            v139 = v137 - 1;
LABEL_180:
            v145 = *(v135 + 2);
            v146 = ((v145 >> 4) ^ (v145 >> 9)) & v139;
            v147 = *(v136 + 16 * v146);
            if (v147 == v145)
            {
LABEL_181:
              v137 = v146;
            }

            else
            {
              v149 = 1;
              while (v147 != -4096)
              {
                v150 = v146 + v149++;
                v146 = v150 & v139;
                v147 = *(v136 + 16 * v146);
                if (v147 == v145)
                {
                  goto LABEL_181;
                }
              }
            }
          }

          v148 = *(v136 + 16 * v137 + 8);
          if (v142 == v148)
          {
            result = mlir::Operation::isBeforeInBlock(v14, v135);
            if (result)
            {
              goto LABEL_211;
            }
          }

          else if (v142 < v148)
          {
            goto LABEL_211;
          }
        }
      }

LABEL_190:
      i = v8;
      do
      {
        while (1)
        {
          v152 = i[1];
          ++i;
          v151 = v152;
          v153 = **a3;
          v154 = *(*a3 + 4);
          if (v154)
          {
            v155 = *(v14 + 2);
            v156 = v154 - 1;
            v157 = ((v155 >> 4) ^ (v155 >> 9)) & (v154 - 1);
            v158 = *(v153 + 16 * v157);
            if (v158 == v155)
            {
              v159 = *(v153 + 16 * v157 + 8);
              goto LABEL_202;
            }

            v160 = 1;
            while (v158 != -4096)
            {
              v161 = v157 + v160++;
              v157 = v161 & v156;
              v158 = *(v153 + 16 * v157);
              if (v158 == v155)
              {
                goto LABEL_200;
              }
            }
          }

          v157 = *(*a3 + 4);
LABEL_200:
          v159 = *(v153 + 16 * v157 + 8);
          if (v154)
          {
            v156 = v154 - 1;
LABEL_202:
            v162 = *(v151 + 2);
            v163 = ((v162 >> 4) ^ (v162 >> 9)) & v156;
            v164 = *(v153 + 16 * v163);
            if (v164 == v162)
            {
LABEL_203:
              v154 = v163;
            }

            else
            {
              v166 = 1;
              while (v164 != -4096)
              {
                v167 = v163 + v166++;
                v163 = v167 & v156;
                v164 = *(v153 + 16 * v163);
                if (v164 == v162)
                {
                  goto LABEL_203;
                }
              }
            }
          }

          v165 = *(v153 + 16 * v154 + 8);
          if (v159 == v165)
          {
            break;
          }

          if (v159 < v165)
          {
            goto LABEL_211;
          }
        }

        result = mlir::Operation::isBeforeInBlock(v14, v151);
      }

      while ((result & 1) == 0);
LABEL_211:
      v168 = v462;
      if (i < v462)
      {
        v168 = v462;
        while (1)
        {
          v170 = *--v168;
          v169 = v170;
          v171 = **a3;
          v172 = *(*a3 + 4);
          if (v172)
          {
            v173 = *(v14 + 2);
            v174 = v172 - 1;
            v175 = ((v173 >> 4) ^ (v173 >> 9)) & (v172 - 1);
            v176 = *(v171 + 16 * v175);
            if (v176 == v173)
            {
              v177 = *(v171 + 16 * v175 + 8);
              goto LABEL_224;
            }

            v178 = 1;
            while (v176 != -4096)
            {
              v179 = v175 + v178++;
              v175 = v179 & v174;
              v176 = *(v171 + 16 * v175);
              if (v176 == v173)
              {
                goto LABEL_222;
              }
            }
          }

          v175 = *(*a3 + 4);
LABEL_222:
          v177 = *(v171 + 16 * v175 + 8);
          if (!v172)
          {
            goto LABEL_226;
          }

          v174 = v172 - 1;
LABEL_224:
          v180 = *(v169 + 2);
          v181 = ((v180 >> 4) ^ (v180 >> 9)) & v174;
          v182 = *(v171 + 16 * v181);
          if (v182 == v180)
          {
LABEL_225:
            v172 = v181;
          }

          else
          {
            v184 = 1;
            while (v182 != -4096)
            {
              v185 = v181 + v184++;
              v181 = v185 & v174;
              v182 = *(v171 + 16 * v181);
              if (v182 == v180)
              {
                goto LABEL_225;
              }
            }
          }

LABEL_226:
          v183 = *(v171 + 16 * v172 + 8);
          if (v177 == v183)
          {
            result = mlir::Operation::isBeforeInBlock(v14, v169);
            if ((result & 1) == 0)
            {
              break;
            }
          }

          else if (v177 >= v183)
          {
            break;
          }
        }
      }

LABEL_233:
      if (i < v168)
      {
        v186 = *i;
        *i = *v168;
        *v168 = v186;
        while (1)
        {
          v188 = i[1];
          ++i;
          v187 = v188;
          v189 = **a3;
          v190 = *(*a3 + 4);
          if (v190)
          {
            v191 = *(v14 + 2);
            v192 = v190 - 1;
            v193 = ((v191 >> 4) ^ (v191 >> 9)) & (v190 - 1);
            v194 = *(v189 + 16 * v193);
            if (v194 == v191)
            {
              v195 = *(v189 + 16 * v193 + 8);
              goto LABEL_246;
            }

            v196 = 1;
            while (v194 != -4096)
            {
              v197 = v193 + v196++;
              v193 = v197 & v192;
              v194 = *(v189 + 16 * v193);
              if (v194 == v191)
              {
                goto LABEL_244;
              }
            }
          }

          v193 = *(*a3 + 4);
LABEL_244:
          v195 = *(v189 + 16 * v193 + 8);
          if (!v190)
          {
            goto LABEL_248;
          }

          v192 = v190 - 1;
LABEL_246:
          v198 = *(v187 + 2);
          v199 = ((v198 >> 4) ^ (v198 >> 9)) & v192;
          v200 = *(v189 + 16 * v199);
          if (v200 == v198)
          {
LABEL_247:
            v190 = v199;
          }

          else
          {
            v202 = 1;
            while (v200 != -4096)
            {
              v203 = v199 + v202++;
              v199 = v203 & v192;
              v200 = *(v189 + 16 * v199);
              if (v200 == v198)
              {
                goto LABEL_247;
              }
            }
          }

LABEL_248:
          v201 = *(v189 + 16 * v190 + 8);
          if (v195 == v201)
          {
            result = mlir::Operation::isBeforeInBlock(v14, v187);
            if (result)
            {
              while (1)
              {
LABEL_256:
                v205 = *--v168;
                v204 = v205;
                v206 = **a3;
                v207 = *(*a3 + 4);
                if (v207)
                {
                  v208 = *(v14 + 2);
                  v209 = v207 - 1;
                  v210 = ((v208 >> 4) ^ (v208 >> 9)) & (v207 - 1);
                  v211 = *(v206 + 16 * v210);
                  if (v211 == v208)
                  {
                    v212 = *(v206 + 16 * v210 + 8);
                    goto LABEL_266;
                  }

                  v213 = 1;
                  while (v211 != -4096)
                  {
                    v214 = v210 + v213++;
                    v210 = v214 & v209;
                    v211 = *(v206 + 16 * v210);
                    if (v211 == v208)
                    {
                      goto LABEL_264;
                    }
                  }
                }

                v210 = *(*a3 + 4);
LABEL_264:
                v212 = *(v206 + 16 * v210 + 8);
                if (!v207)
                {
                  goto LABEL_268;
                }

                v209 = v207 - 1;
LABEL_266:
                v215 = *(v204 + 2);
                v216 = ((v215 >> 4) ^ (v215 >> 9)) & v209;
                v217 = *(v206 + 16 * v216);
                if (v217 == v215)
                {
LABEL_267:
                  v207 = v216;
                }

                else
                {
                  v219 = 1;
                  while (v217 != -4096)
                  {
                    v220 = v216 + v219++;
                    v216 = v220 & v209;
                    v217 = *(v206 + 16 * v216);
                    if (v217 == v215)
                    {
                      goto LABEL_267;
                    }
                  }
                }

LABEL_268:
                v218 = *(v206 + 16 * v207 + 8);
                if (v212 == v218)
                {
                  result = mlir::Operation::isBeforeInBlock(v14, v204);
                  if ((result & 1) == 0)
                  {
                    goto LABEL_233;
                  }
                }

                else if (v212 >= v218)
                {
                  goto LABEL_233;
                }
              }
            }
          }

          else if (v195 < v201)
          {
            goto LABEL_256;
          }
        }
      }

      v221 = i - 1;
      if (i - 1 != v8)
      {
        *v8 = *v221;
      }

      a5 = 0;
      *v221 = v14;
    }
  }

  v232 = v8 + 1;
  v234 = v8 == v462 || v232 == v462;
  if (a5)
  {
    if (v234)
    {
      return result;
    }

    v235 = v8;
    while (2)
    {
      v237 = v235;
      v235 = v232;
      v238 = *v237;
      v239 = v237[1];
      v240 = **a3;
      v241 = *(*a3 + 4);
      if (v241)
      {
        v242 = *(v239 + 2);
        v243 = v241 - 1;
        v244 = ((v242 >> 4) ^ (v242 >> 9)) & (v241 - 1);
        v245 = *(v240 + 16 * v244);
        if (v245 == v242)
        {
          v246 = *(v240 + 16 * v244 + 8);
LABEL_319:
          v249 = *(v238 + 2);
          v250 = ((v249 >> 4) ^ (v249 >> 9)) & v243;
          v251 = *(v240 + 16 * v250);
          if (v251 == v249)
          {
LABEL_320:
            v241 = v250;
          }

          else
          {
            v271 = 1;
            while (v251 != -4096)
            {
              v272 = v250 + v271++;
              v250 = v272 & v243;
              v251 = *(v240 + 16 * v250);
              if (v251 == v249)
              {
                goto LABEL_320;
              }
            }
          }

          goto LABEL_321;
        }

        v247 = 1;
        while (v245 != -4096)
        {
          v248 = v244 + v247++;
          v244 = v248 & v243;
          v245 = *(v240 + 16 * v244);
          if (v245 == v242)
          {
            goto LABEL_317;
          }
        }
      }

      v244 = *(*a3 + 4);
LABEL_317:
      v246 = *(v240 + 16 * v244 + 8);
      if (v241)
      {
        v243 = v241 - 1;
        goto LABEL_319;
      }

LABEL_321:
      v252 = *(v240 + 16 * v241 + 8);
      if (v246 == v252)
      {
        result = mlir::Operation::isBeforeInBlock(v237[1], v238);
        if (!result)
        {
          goto LABEL_308;
        }

        v239 = *v235;
        v238 = *v237;
      }

      else if (v246 >= v252)
      {
        goto LABEL_308;
      }

      v237[1] = v238;
      v236 = v8;
      if (v237 == v8)
      {
        goto LABEL_307;
      }

      v253 = v237;
LABEL_329:
      v255 = *--v253;
      v254 = v255;
      v256 = **a3;
      v257 = *(*a3 + 4);
      if (v257)
      {
        v258 = *(v239 + 2);
        v259 = v257 - 1;
        v260 = ((v258 >> 4) ^ (v258 >> 9)) & (v257 - 1);
        v261 = *(v256 + 16 * v260);
        if (v261 == v258)
        {
          v262 = *(v256 + 16 * v260 + 8);
LABEL_339:
          v265 = *(v254 + 2);
          v266 = ((v265 >> 4) ^ (v265 >> 9)) & v259;
          v267 = *(v256 + 16 * v266);
          if (v267 == v265)
          {
LABEL_340:
            v257 = v266;
          }

          else
          {
            v269 = 1;
            while (v267 != -4096)
            {
              v270 = v266 + v269++;
              v266 = v270 & v259;
              v267 = *(v256 + 16 * v266);
              if (v267 == v265)
              {
                goto LABEL_340;
              }
            }
          }

          goto LABEL_341;
        }

        v263 = 1;
        while (v261 != -4096)
        {
          v264 = v260 + v263++;
          v260 = v264 & v259;
          v261 = *(v256 + 16 * v260);
          if (v261 == v258)
          {
            goto LABEL_337;
          }
        }
      }

      v260 = *(*a3 + 4);
LABEL_337:
      v262 = *(v256 + 16 * v260 + 8);
      if (v257)
      {
        v259 = v257 - 1;
        goto LABEL_339;
      }

LABEL_341:
      v268 = *(v256 + 16 * v257 + 8);
      if (v262 == v268)
      {
        result = mlir::Operation::isBeforeInBlock(v239, v254);
        if (!result)
        {
LABEL_306:
          v236 = v237;
          goto LABEL_307;
        }

        *v237 = *v253;
        v237 = v253;
        if (v253 == v8)
        {
LABEL_349:
          v236 = v8;
LABEL_307:
          *v236 = v239;
LABEL_308:
          v232 = v235 + 1;
          if (v235 + 1 == v462)
          {
            return result;
          }

          continue;
        }
      }

      else
      {
        if (v262 >= v268)
        {
          goto LABEL_306;
        }

        *v237 = v254;
        v237 = v253;
        if (v253 == v8)
        {
          goto LABEL_349;
        }
      }

      goto LABEL_329;
    }
  }

  if (!v234)
  {
    do
    {
      v411 = v8;
      v8 = v232;
      v412 = *v411;
      v413 = v411[1];
      v414 = **a3;
      v415 = *(*a3 + 4);
      if (v415)
      {
        v416 = *(v413 + 2);
        v417 = v415 - 1;
        v418 = ((v416 >> 4) ^ (v416 >> 9)) & (v415 - 1);
        v419 = *(v414 + 16 * v418);
        if (v419 == v416)
        {
          v420 = *(v414 + 16 * v418 + 8);
          goto LABEL_537;
        }

        v421 = 1;
        while (v419 != -4096)
        {
          v422 = v418 + v421++;
          v418 = v422 & v417;
          v419 = *(v414 + 16 * v418);
          if (v419 == v416)
          {
            goto LABEL_535;
          }
        }
      }

      v418 = *(*a3 + 4);
LABEL_535:
      v420 = *(v414 + 16 * v418 + 8);
      if (v415)
      {
        v417 = v415 - 1;
LABEL_537:
        v423 = *(v412 + 2);
        v424 = ((v423 >> 4) ^ (v423 >> 9)) & v417;
        v425 = *(v414 + 16 * v424);
        if (v425 == v423)
        {
LABEL_538:
          v415 = v424;
        }

        else
        {
          v446 = 1;
          while (v425 != -4096)
          {
            v447 = v424 + v446++;
            v424 = v447 & v417;
            v425 = *(v414 + 16 * v424);
            if (v425 == v423)
            {
              goto LABEL_538;
            }
          }
        }
      }

      v426 = *(v414 + 16 * v415 + 8);
      if (v420 == v426)
      {
        result = mlir::Operation::isBeforeInBlock(v411[1], v412);
        if (result)
        {
          v413 = *v8;
LABEL_543:
          v427 = v8;
          while (2)
          {
            v428 = v427;
            v427 = v411;
            *v428 = *v411;
            v430 = *--v411;
            v429 = v430;
            v431 = **a3;
            v432 = *(*a3 + 4);
            if (v432)
            {
              v433 = *(v413 + 2);
              v434 = v432 - 1;
              v435 = ((v433 >> 4) ^ (v433 >> 9)) & (v432 - 1);
              v436 = *(v431 + 16 * v435);
              if (v436 == v433)
              {
                v437 = *(v431 + 16 * v435 + 8);
LABEL_555:
                v440 = *(v429 + 2);
                v441 = ((v440 >> 4) ^ (v440 >> 9)) & v434;
                v442 = *(v431 + 16 * v441);
                if (v442 == v440)
                {
LABEL_556:
                  v432 = v441;
                }

                else
                {
                  v444 = 1;
                  while (v442 != -4096)
                  {
                    v445 = v441 + v444++;
                    v441 = v445 & v434;
                    v442 = *(v431 + 16 * v441);
                    if (v442 == v440)
                    {
                      goto LABEL_556;
                    }
                  }
                }

                goto LABEL_557;
              }

              v438 = 1;
              while (v436 != -4096)
              {
                v439 = v435 + v438++;
                v435 = v439 & v434;
                v436 = *(v431 + 16 * v435);
                if (v436 == v433)
                {
                  goto LABEL_553;
                }
              }
            }

            v435 = *(*a3 + 4);
LABEL_553:
            v437 = *(v431 + 16 * v435 + 8);
            if (v432)
            {
              v434 = v432 - 1;
              goto LABEL_555;
            }

LABEL_557:
            v443 = *(v431 + 16 * v432 + 8);
            if (v437 == v443)
            {
              result = mlir::Operation::isBeforeInBlock(v413, v429);
              if ((result & 1) == 0)
              {
LABEL_525:
                *v427 = v413;
                break;
              }
            }

            else if (v437 >= v443)
            {
              goto LABEL_525;
            }

            continue;
          }
        }
      }

      else if (v420 < v426)
      {
        goto LABEL_543;
      }

      v232 = v8 + 1;
    }

    while (v8 + 1 != v462);
  }

  return result;
}

mlir::Operation *std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,dominanceSort(llvm::SmallVector<mlir::Operation *,6u> &,mlir::Region &,llvm::DenseMap<mlir::Region*,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>,llvm::DenseMapInfo<mlir::Region*,void>,llvm::detail::DenseMapPair<mlir::Region*,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>>> &)::$_0 &,mlir::Operation **,0>(mlir::Operation **a1, mlir::Operation **a2, mlir::Operation **a3, uint64_t **a4)
{
  v8 = *a2;
  v9 = *a1;
  v10 = **a4;
  v11 = *(*a4 + 4);
  if (v11)
  {
    v12 = *(v8 + 2);
    v13 = v11 - 1;
    v14 = ((v12 >> 4) ^ (v12 >> 9)) & (v11 - 1);
    v15 = *(v10 + 16 * v14);
    if (v15 == v12)
    {
      v16 = *(v10 + 16 * v14 + 8);
      goto LABEL_11;
    }

    v17 = 1;
    while (v15 != -4096)
    {
      v18 = v14 + v17++;
      v14 = v18 & v13;
      v15 = *(v10 + 16 * v14);
      if (v15 == v12)
      {
        goto LABEL_9;
      }
    }
  }

  v14 = *(*a4 + 4);
LABEL_9:
  v16 = *(v10 + 16 * v14 + 8);
  if (!v11)
  {
    goto LABEL_25;
  }

  v13 = v11 - 1;
LABEL_11:
  v19 = *(v9 + 2);
  v20 = ((v19 >> 4) ^ (v19 >> 9)) & v13;
  v21 = *(v10 + 16 * v20);
  if (v21 == v19)
  {
    goto LABEL_12;
  }

  v35 = 1;
  while (v21 != -4096)
  {
    v36 = v20 + v35++;
    v20 = v36 & v13;
    v21 = *(v10 + 16 * v20);
    if (v21 == v19)
    {
      goto LABEL_12;
    }
  }

LABEL_25:
  v20 = *(*a4 + 4);
LABEL_12:
  v22 = *(v10 + 16 * v20 + 8);
  if (v16 == v22)
  {
    v23 = mlir::Operation::isBeforeInBlock(v8, v9);
    v8 = *a2;
    v10 = **a4;
    v11 = *(*a4 + 4);
    if (!v23)
    {
      goto LABEL_14;
    }
  }

  else if (v16 >= v22)
  {
LABEL_14:
    result = *a3;
    if (v11)
    {
      v25 = *(result + 2);
      v26 = v11 - 1;
      v27 = ((v25 >> 4) ^ (v25 >> 9)) & (v11 - 1);
      v28 = *(v10 + 16 * v27);
      if (v28 == v25)
      {
        v29 = *(v10 + 16 * v27 + 8);
        goto LABEL_33;
      }

      v37 = 1;
      while (v28 != -4096)
      {
        v38 = v27 + v37++;
        v27 = v38 & v26;
        v28 = *(v10 + 16 * v27);
        if (v28 == v25)
        {
          goto LABEL_31;
        }
      }
    }

    v27 = v11;
LABEL_31:
    v29 = *(v10 + 16 * v27 + 8);
    if (!v11)
    {
      goto LABEL_45;
    }

    v26 = v11 - 1;
LABEL_33:
    v39 = *(v8 + 2);
    v40 = ((v39 >> 4) ^ (v39 >> 9)) & v26;
    v41 = *(v10 + 16 * v40);
    if (v41 == v39)
    {
      goto LABEL_34;
    }

    v49 = 1;
    while (v41 != -4096)
    {
      v50 = v40 + v49++;
      v40 = v50 & v26;
      v41 = *(v10 + 16 * v40);
      if (v41 == v39)
      {
        goto LABEL_34;
      }
    }

LABEL_45:
    v40 = v11;
LABEL_34:
    v42 = *(v10 + 16 * v40 + 8);
    if (v29 == v42)
    {
      result = mlir::Operation::isBeforeInBlock(result, v8);
      if (!result)
      {
        return result;
      }

      v8 = *a2;
      result = *a3;
      v10 = **a4;
      v11 = *(*a4 + 4);
    }

    else if (v29 >= v42)
    {
      return result;
    }

    *a2 = result;
    *a3 = v8;
    result = *a2;
    v43 = *a1;
    if (v11)
    {
      v44 = *(result + 2);
      v45 = v11 - 1;
      v46 = ((v44 >> 4) ^ (v44 >> 9)) & (v11 - 1);
      v47 = *(v10 + 16 * v46);
      if (v47 == v44)
      {
        v48 = *(v10 + 16 * v46 + 8);
        goto LABEL_76;
      }

      v66 = 1;
      while (v47 != -4096)
      {
        v67 = v46 + v66++;
        v46 = v67 & v45;
        v47 = *(v10 + 16 * v46);
        if (v47 == v44)
        {
          goto LABEL_74;
        }
      }
    }

    v46 = v11;
LABEL_74:
    v48 = *(v10 + 16 * v46 + 8);
    if (!v11)
    {
      goto LABEL_86;
    }

    v45 = v11 - 1;
LABEL_76:
    v68 = *(v43 + 2);
    v69 = ((v68 >> 4) ^ (v68 >> 9)) & v45;
    v70 = *(v10 + 16 * v69);
    if (v70 == v68)
    {
      goto LABEL_77;
    }

    v73 = 1;
    while (v70 != -4096)
    {
      v74 = v69 + v73++;
      v69 = v74 & v45;
      v70 = *(v10 + 16 * v69);
      if (v70 == v68)
      {
        goto LABEL_77;
      }
    }

LABEL_86:
    v69 = v11;
LABEL_77:
    v71 = *(v10 + 16 * v69 + 8);
    if (v48 == v71)
    {
      result = mlir::Operation::isBeforeInBlock(result, v43);
      if (result)
      {
        v72 = *a1;
        result = *a2;
        *a1 = *a2;
        *a2 = v72;
      }
    }

    else if (v48 < v71)
    {
      *a1 = result;
      *a2 = v43;
    }

    return result;
  }

  result = *a3;
  if (v11)
  {
    v30 = *(result + 2);
    v31 = v11 - 1;
    v32 = ((v30 >> 4) ^ (v30 >> 9)) & (v11 - 1);
    v33 = *(v10 + 16 * v32);
    if (v33 == v30)
    {
      v34 = *(v10 + 16 * v32 + 8);
      goto LABEL_53;
    }

    v51 = 1;
    while (v33 != -4096)
    {
      v52 = v32 + v51++;
      v32 = v52 & v31;
      v33 = *(v10 + 16 * v32);
      if (v33 == v30)
      {
        goto LABEL_51;
      }
    }
  }

  v32 = v11;
LABEL_51:
  v34 = *(v10 + 16 * v32 + 8);
  if (!v11)
  {
    goto LABEL_68;
  }

  v31 = v11 - 1;
LABEL_53:
  v53 = *(v8 + 2);
  v54 = ((v53 >> 4) ^ (v53 >> 9)) & v31;
  v55 = *(v10 + 16 * v54);
  if (v55 == v53)
  {
    goto LABEL_54;
  }

  v64 = 1;
  while (v55 != -4096)
  {
    v65 = v54 + v64++;
    v54 = v65 & v31;
    v55 = *(v10 + 16 * v54);
    if (v55 == v53)
    {
      goto LABEL_54;
    }
  }

LABEL_68:
  v54 = v11;
LABEL_54:
  v56 = *(v10 + 16 * v54 + 8);
  if (v34 == v56)
  {
    if (mlir::Operation::isBeforeInBlock(result, v8))
    {
      result = *a3;
LABEL_58:
      v57 = *a1;
      *a1 = result;
      *a3 = v57;
      return result;
    }

    v8 = *a2;
    v10 = **a4;
    v11 = *(*a4 + 4);
  }

  else if (v34 < v56)
  {
    goto LABEL_58;
  }

  v58 = *a1;
  *a1 = v8;
  *a2 = v58;
  result = *a3;
  if (v11)
  {
    v59 = *(result + 2);
    v60 = v11 - 1;
    v61 = ((v59 >> 4) ^ (v59 >> 9)) & (v11 - 1);
    v62 = *(v10 + 16 * v61);
    if (v62 == v59)
    {
      v63 = *(v10 + 16 * v61 + 8);
      goto LABEL_94;
    }

    v75 = 1;
    while (v62 != -4096)
    {
      v76 = v61 + v75++;
      v61 = v76 & v60;
      v62 = *(v10 + 16 * v61);
      if (v62 == v59)
      {
        goto LABEL_92;
      }
    }
  }

  v61 = v11;
LABEL_92:
  v63 = *(v10 + 16 * v61 + 8);
  if (!v11)
  {
    goto LABEL_104;
  }

  v60 = v11 - 1;
LABEL_94:
  v77 = *(v58 + 2);
  v78 = ((v77 >> 4) ^ (v77 >> 9)) & v60;
  v79 = *(v10 + 16 * v78);
  if (v79 == v77)
  {
    goto LABEL_95;
  }

  v82 = 1;
  while (v79 != -4096)
  {
    v83 = v78 + v82++;
    v78 = v83 & v60;
    v79 = *(v10 + 16 * v78);
    if (v79 == v77)
    {
      goto LABEL_95;
    }
  }

LABEL_104:
  v78 = v11;
LABEL_95:
  v80 = *(v10 + 16 * v78 + 8);
  if (v63 == v80)
  {
    result = mlir::Operation::isBeforeInBlock(result, v58);
    if (result)
    {
      v81 = *a2;
      result = *a3;
      *a2 = *a3;
      *a3 = v81;
    }
  }

  else if (v63 < v80)
  {
    *a2 = result;
    *a3 = v58;
  }

  return result;
}

mlir::Operation *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,dominanceSort(llvm::SmallVector<mlir::Operation *,6u> &,mlir::Region &,llvm::DenseMap<mlir::Region*,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>,llvm::DenseMapInfo<mlir::Region*,void>,llvm::detail::DenseMapPair<mlir::Region*,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>>> &)::$_0 &,mlir::Operation **,0>(mlir::Operation **a1, mlir::Operation **a2, mlir::Operation **a3, mlir::Operation **a4, uint64_t **a5)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,dominanceSort(llvm::SmallVector<mlir::Operation *,6u> &,mlir::Region &,llvm::DenseMap<mlir::Region*,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>,llvm::DenseMapInfo<mlir::Region*,void>,llvm::detail::DenseMapPair<mlir::Region*,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>>> &)::$_0 &,mlir::Operation **,0>(a1, a2, a3, a5);
  result = *a4;
  v11 = *a3;
  v12 = **a5;
  v13 = *(*a5 + 4);
  if (v13)
  {
    v14 = *(result + 2);
    v15 = v13 - 1;
    v16 = ((v14 >> 4) ^ (v14 >> 9)) & (v13 - 1);
    v17 = *(v12 + 16 * v16);
    if (v17 == v14)
    {
      v18 = *(v12 + 16 * v16 + 8);
      goto LABEL_11;
    }

    v19 = 1;
    while (v17 != -4096)
    {
      v20 = v16 + v19++;
      v16 = v20 & v15;
      v17 = *(v12 + 16 * v16);
      if (v17 == v14)
      {
        goto LABEL_9;
      }
    }
  }

  v16 = *(*a5 + 4);
LABEL_9:
  v18 = *(v12 + 16 * v16 + 8);
  if (!v13)
  {
    goto LABEL_23;
  }

  v15 = v13 - 1;
LABEL_11:
  v21 = *(v11 + 2);
  v22 = ((v21 >> 4) ^ (v21 >> 9)) & v15;
  v23 = *(v12 + 16 * v22);
  if (v23 == v21)
  {
    goto LABEL_12;
  }

  v31 = 1;
  while (v23 != -4096)
  {
    v32 = v22 + v31++;
    v22 = v32 & v15;
    v23 = *(v12 + 16 * v22);
    if (v23 == v21)
    {
      goto LABEL_12;
    }
  }

LABEL_23:
  v22 = *(*a5 + 4);
LABEL_12:
  v24 = *(v12 + 16 * v22 + 8);
  if (v18 == v24)
  {
    result = mlir::Operation::isBeforeInBlock(result, v11);
    if (!result)
    {
      return result;
    }

    v11 = *a3;
    result = *a4;
    v12 = **a5;
    v13 = *(*a5 + 4);
  }

  else if (v18 >= v24)
  {
    return result;
  }

  *a3 = result;
  *a4 = v11;
  result = *a3;
  v25 = *a2;
  if (v13)
  {
    v26 = *(result + 2);
    v27 = v13 - 1;
    v28 = ((v26 >> 4) ^ (v26 >> 9)) & (v13 - 1);
    v29 = *(v12 + 16 * v28);
    if (v29 == v26)
    {
      v30 = *(v12 + 16 * v28 + 8);
      goto LABEL_31;
    }

    v33 = 1;
    while (v29 != -4096)
    {
      v34 = v28 + v33++;
      v28 = v34 & v27;
      v29 = *(v12 + 16 * v28);
      if (v29 == v26)
      {
        goto LABEL_29;
      }
    }
  }

  v28 = v13;
LABEL_29:
  v30 = *(v12 + 16 * v28 + 8);
  if (!v13)
  {
    goto LABEL_43;
  }

  v27 = v13 - 1;
LABEL_31:
  v35 = *(v25 + 2);
  v36 = ((v35 >> 4) ^ (v35 >> 9)) & v27;
  v37 = *(v12 + 16 * v36);
  if (v37 == v35)
  {
    goto LABEL_32;
  }

  v45 = 1;
  while (v37 != -4096)
  {
    v46 = v36 + v45++;
    v36 = v46 & v27;
    v37 = *(v12 + 16 * v36);
    if (v37 == v35)
    {
      goto LABEL_32;
    }
  }

LABEL_43:
  v36 = v13;
LABEL_32:
  v38 = *(v12 + 16 * v36 + 8);
  if (v30 == v38)
  {
    result = mlir::Operation::isBeforeInBlock(result, v25);
    if (!result)
    {
      return result;
    }

    v25 = *a2;
    result = *a3;
    v12 = **a5;
    v13 = *(*a5 + 4);
  }

  else if (v30 >= v38)
  {
    return result;
  }

  *a2 = result;
  *a3 = v25;
  result = *a2;
  v39 = *a1;
  if (v13)
  {
    v40 = *(result + 2);
    v41 = v13 - 1;
    v42 = ((v40 >> 4) ^ (v40 >> 9)) & (v13 - 1);
    v43 = *(v12 + 16 * v42);
    if (v43 == v40)
    {
      v44 = *(v12 + 16 * v42 + 8);
      goto LABEL_51;
    }

    v47 = 1;
    while (v43 != -4096)
    {
      v48 = v42 + v47++;
      v42 = v48 & v41;
      v43 = *(v12 + 16 * v42);
      if (v43 == v40)
      {
        goto LABEL_49;
      }
    }
  }

  v42 = v13;
LABEL_49:
  v44 = *(v12 + 16 * v42 + 8);
  if (!v13)
  {
    goto LABEL_62;
  }

  v41 = v13 - 1;
LABEL_51:
  v49 = *(v39 + 2);
  v50 = ((v49 >> 4) ^ (v49 >> 9)) & v41;
  v51 = *(v12 + 16 * v50);
  if (v51 == v49)
  {
    goto LABEL_52;
  }

  v53 = 1;
  while (v51 != -4096)
  {
    v54 = v50 + v53++;
    v50 = v54 & v41;
    v51 = *(v12 + 16 * v50);
    if (v51 == v49)
    {
      goto LABEL_52;
    }
  }

LABEL_62:
  v50 = v13;
LABEL_52:
  v52 = *(v12 + 16 * v50 + 8);
  if (v44 == v52)
  {
    result = mlir::Operation::isBeforeInBlock(result, v39);
    if (!result)
    {
      return result;
    }

    v39 = *a1;
    result = *a2;
  }

  else if (v44 >= v52)
  {
    return result;
  }

  *a1 = result;
  *a2 = v39;
  return result;
}

mlir::Operation *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,dominanceSort(llvm::SmallVector<mlir::Operation *,6u> &,mlir::Region &,llvm::DenseMap<mlir::Region*,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>,llvm::DenseMapInfo<mlir::Region*,void>,llvm::detail::DenseMapPair<mlir::Region*,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>>> &)::$_0 &,mlir::Operation **,0>(mlir::Operation **a1, mlir::Operation **a2, mlir::Operation **a3, mlir::Operation **a4, mlir::Operation **a5, uint64_t **a6)
{
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,dominanceSort(llvm::SmallVector<mlir::Operation *,6u> &,mlir::Region &,llvm::DenseMap<mlir::Region*,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>,llvm::DenseMapInfo<mlir::Region*,void>,llvm::detail::DenseMapPair<mlir::Region*,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>>> &)::$_0 &,mlir::Operation **,0>(a1, a2, a3, a4, a6);
  result = *a5;
  v13 = *a4;
  v14 = **a6;
  v15 = *(*a6 + 4);
  if (v15)
  {
    v16 = *(result + 2);
    v17 = v15 - 1;
    v18 = ((v16 >> 4) ^ (v16 >> 9)) & (v15 - 1);
    v19 = *(v14 + 16 * v18);
    if (v19 == v16)
    {
      v20 = *(v14 + 16 * v18 + 8);
      goto LABEL_11;
    }

    v21 = 1;
    while (v19 != -4096)
    {
      v22 = v18 + v21++;
      v18 = v22 & v17;
      v19 = *(v14 + 16 * v18);
      if (v19 == v16)
      {
        goto LABEL_9;
      }
    }
  }

  v18 = *(*a6 + 4);
LABEL_9:
  v20 = *(v14 + 16 * v18 + 8);
  if (!v15)
  {
    goto LABEL_23;
  }

  v17 = v15 - 1;
LABEL_11:
  v23 = *(v13 + 2);
  v24 = ((v23 >> 4) ^ (v23 >> 9)) & v17;
  v25 = *(v14 + 16 * v24);
  if (v25 == v23)
  {
    goto LABEL_12;
  }

  v33 = 1;
  while (v25 != -4096)
  {
    v34 = v24 + v33++;
    v24 = v34 & v17;
    v25 = *(v14 + 16 * v24);
    if (v25 == v23)
    {
      goto LABEL_12;
    }
  }

LABEL_23:
  v24 = *(*a6 + 4);
LABEL_12:
  v26 = *(v14 + 16 * v24 + 8);
  if (v20 == v26)
  {
    result = mlir::Operation::isBeforeInBlock(result, v13);
    if (!result)
    {
      return result;
    }

    v13 = *a4;
    result = *a5;
    v14 = **a6;
    v15 = *(*a6 + 4);
  }

  else if (v20 >= v26)
  {
    return result;
  }

  *a4 = result;
  *a5 = v13;
  result = *a4;
  v27 = *a3;
  if (v15)
  {
    v28 = *(result + 2);
    v29 = v15 - 1;
    v30 = ((v28 >> 4) ^ (v28 >> 9)) & (v15 - 1);
    v31 = *(v14 + 16 * v30);
    if (v31 == v28)
    {
      v32 = *(v14 + 16 * v30 + 8);
      goto LABEL_31;
    }

    v35 = 1;
    while (v31 != -4096)
    {
      v36 = v30 + v35++;
      v30 = v36 & v29;
      v31 = *(v14 + 16 * v30);
      if (v31 == v28)
      {
        goto LABEL_29;
      }
    }
  }

  v30 = v15;
LABEL_29:
  v32 = *(v14 + 16 * v30 + 8);
  if (!v15)
  {
    goto LABEL_43;
  }

  v29 = v15 - 1;
LABEL_31:
  v37 = *(v27 + 2);
  v38 = ((v37 >> 4) ^ (v37 >> 9)) & v29;
  v39 = *(v14 + 16 * v38);
  if (v39 == v37)
  {
    goto LABEL_32;
  }

  v47 = 1;
  while (v39 != -4096)
  {
    v48 = v38 + v47++;
    v38 = v48 & v29;
    v39 = *(v14 + 16 * v38);
    if (v39 == v37)
    {
      goto LABEL_32;
    }
  }

LABEL_43:
  v38 = v15;
LABEL_32:
  v40 = *(v14 + 16 * v38 + 8);
  if (v32 == v40)
  {
    result = mlir::Operation::isBeforeInBlock(result, v27);
    if (!result)
    {
      return result;
    }

    v27 = *a3;
    result = *a4;
    v14 = **a6;
    v15 = *(*a6 + 4);
  }

  else if (v32 >= v40)
  {
    return result;
  }

  *a3 = result;
  *a4 = v27;
  result = *a3;
  v41 = *a2;
  if (v15)
  {
    v42 = *(result + 2);
    v43 = v15 - 1;
    v44 = ((v42 >> 4) ^ (v42 >> 9)) & (v15 - 1);
    v45 = *(v14 + 16 * v44);
    if (v45 == v42)
    {
      v46 = *(v14 + 16 * v44 + 8);
      goto LABEL_51;
    }

    v49 = 1;
    while (v45 != -4096)
    {
      v50 = v44 + v49++;
      v44 = v50 & v43;
      v45 = *(v14 + 16 * v44);
      if (v45 == v42)
      {
        goto LABEL_49;
      }
    }
  }

  v44 = v15;
LABEL_49:
  v46 = *(v14 + 16 * v44 + 8);
  if (!v15)
  {
    goto LABEL_63;
  }

  v43 = v15 - 1;
LABEL_51:
  v51 = *(v41 + 2);
  v52 = ((v51 >> 4) ^ (v51 >> 9)) & v43;
  v53 = *(v14 + 16 * v52);
  if (v53 == v51)
  {
    goto LABEL_52;
  }

  v61 = 1;
  while (v53 != -4096)
  {
    v62 = v52 + v61++;
    v52 = v62 & v43;
    v53 = *(v14 + 16 * v52);
    if (v53 == v51)
    {
      goto LABEL_52;
    }
  }

LABEL_63:
  v52 = v15;
LABEL_52:
  v54 = *(v14 + 16 * v52 + 8);
  if (v46 == v54)
  {
    result = mlir::Operation::isBeforeInBlock(result, v41);
    if (!result)
    {
      return result;
    }

    v41 = *a2;
    result = *a3;
    v14 = **a6;
    v15 = *(*a6 + 4);
  }

  else if (v46 >= v54)
  {
    return result;
  }

  *a2 = result;
  *a3 = v41;
  result = *a2;
  v55 = *a1;
  if (v15)
  {
    v56 = *(result + 2);
    v57 = v15 - 1;
    v58 = ((v56 >> 4) ^ (v56 >> 9)) & (v15 - 1);
    v59 = *(v14 + 16 * v58);
    if (v59 == v56)
    {
      v60 = *(v14 + 16 * v58 + 8);
      goto LABEL_71;
    }

    v63 = 1;
    while (v59 != -4096)
    {
      v64 = v58 + v63++;
      v58 = v64 & v57;
      v59 = *(v14 + 16 * v58);
      if (v59 == v56)
      {
        goto LABEL_69;
      }
    }
  }

  v58 = v15;
LABEL_69:
  v60 = *(v14 + 16 * v58 + 8);
  if (!v15)
  {
    goto LABEL_82;
  }

  v57 = v15 - 1;
LABEL_71:
  v65 = *(v55 + 2);
  v66 = ((v65 >> 4) ^ (v65 >> 9)) & v57;
  v67 = *(v14 + 16 * v66);
  if (v67 == v65)
  {
    goto LABEL_72;
  }

  v69 = 1;
  while (v67 != -4096)
  {
    v70 = v66 + v69++;
    v66 = v70 & v57;
    v67 = *(v14 + 16 * v66);
    if (v67 == v65)
    {
      goto LABEL_72;
    }
  }

LABEL_82:
  v66 = v15;
LABEL_72:
  v68 = *(v14 + 16 * v66 + 8);
  if (v60 == v68)
  {
    result = mlir::Operation::isBeforeInBlock(result, v55);
    if (!result)
    {
      return result;
    }

    v55 = *a1;
    result = *a2;
  }

  else if (v60 >= v68)
  {
    return result;
  }

  *a1 = result;
  *a2 = v55;
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,dominanceSort(llvm::SmallVector<mlir::Operation *,6u> &,mlir::Region &,llvm::DenseMap<mlir::Region*,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>,llvm::DenseMapInfo<mlir::Region*,void>,llvm::detail::DenseMapPair<mlir::Region*,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>>> &)::$_0 &,mlir::Operation **>(mlir::Operation **a1, mlir::Operation **a2, uint64_t **a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,dominanceSort(llvm::SmallVector<mlir::Operation *,6u> &,mlir::Region &,llvm::DenseMap<mlir::Region*,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>,llvm::DenseMapInfo<mlir::Region*,void>,llvm::detail::DenseMapPair<mlir::Region*,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>>> &)::$_0 &,mlir::Operation **,0>(a1, a1 + 1, a2 - 1, a3);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,dominanceSort(llvm::SmallVector<mlir::Operation *,6u> &,mlir::Region &,llvm::DenseMap<mlir::Region*,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>,llvm::DenseMapInfo<mlir::Region*,void>,llvm::detail::DenseMapPair<mlir::Region*,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>>> &)::$_0 &,mlir::Operation **,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,dominanceSort(llvm::SmallVector<mlir::Operation *,6u> &,mlir::Region &,llvm::DenseMap<mlir::Region*,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>,llvm::DenseMapInfo<mlir::Region*,void>,llvm::detail::DenseMapPair<mlir::Region*,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>>> &)::$_0 &,mlir::Operation **,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = *(a2 - 1);
      v8 = *a1;
      v9 = **a3;
      v10 = *(*a3 + 4);
      if (v10)
      {
        v11 = *(v7 + 2);
        v12 = v10 - 1;
        v13 = ((v11 >> 4) ^ (v11 >> 9)) & (v10 - 1);
        v14 = *(v9 + 16 * v13);
        if (v14 == v11)
        {
          v15 = *(v9 + 16 * v13 + 8);
          goto LABEL_69;
        }

        v55 = 1;
        while (v14 != -4096)
        {
          v56 = v13 + v55++;
          v13 = v56 & v12;
          v14 = *(v9 + 16 * v13);
          if (v14 == v11)
          {
            goto LABEL_67;
          }
        }
      }

      v13 = *(*a3 + 4);
LABEL_67:
      v15 = *(v9 + 16 * v13 + 8);
      if (!v10)
      {
LABEL_71:
        v60 = *(v9 + 16 * v10 + 8);
        if (v15 == v60)
        {
          if (mlir::Operation::isBeforeInBlock(v7, v8))
          {
            v8 = *a1;
            v7 = *(a2 - 1);
LABEL_75:
            *a1 = v7;
            *(a2 - 1) = v8;
          }
        }

        else if (v15 < v60)
        {
          goto LABEL_75;
        }

        return 1;
      }

      v12 = v10 - 1;
LABEL_69:
      v57 = *(v8 + 2);
      v58 = ((v57 >> 4) ^ (v57 >> 9)) & v12;
      v59 = *(v9 + 16 * v58);
      if (v59 == v57)
      {
LABEL_70:
        v10 = v58;
      }

      else
      {
        v61 = 1;
        while (v59 != -4096)
        {
          v62 = v58 + v61++;
          v58 = v62 & v12;
          v59 = *(v9 + 16 * v58);
          if (v59 == v57)
          {
            goto LABEL_70;
          }
        }
      }

      goto LABEL_71;
    }
  }

  v16 = a1 + 2;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,dominanceSort(llvm::SmallVector<mlir::Operation *,6u> &,mlir::Region &,llvm::DenseMap<mlir::Region*,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>,llvm::DenseMapInfo<mlir::Region*,void>,llvm::detail::DenseMapPair<mlir::Region*,llvm::DenseMap<mlir::Block *,unsigned long,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned long>>>> &)::$_0 &,mlir::Operation **,0>(a1, a1 + 1, a1 + 2, a3);
  v17 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v18 = 0;
  while (2)
  {
    v19 = *v17;
    v20 = *v16;
    v21 = **a3;
    v22 = *(*a3 + 4);
    if (v22)
    {
      v23 = *(v19 + 2);
      v24 = v22 - 1;
      v25 = ((v23 >> 4) ^ (v23 >> 9)) & (v22 - 1);
      v26 = *(v21 + 16 * v25);
      if (v26 == v23)
      {
        v27 = *(v21 + 16 * v25 + 8);
        goto LABEL_27;
      }

      v28 = 1;
      while (v26 != -4096)
      {
        v29 = v25 + v28++;
        v25 = v29 & v24;
        v26 = *(v21 + 16 * v25);
        if (v26 == v23)
        {
          goto LABEL_25;
        }
      }
    }

    v25 = *(*a3 + 4);
LABEL_25:
    v27 = *(v21 + 16 * v25 + 8);
    if (!v22)
    {
      goto LABEL_29;
    }

    v24 = v22 - 1;
LABEL_27:
    v30 = *(v20 + 2);
    v31 = ((v30 >> 4) ^ (v30 >> 9)) & v24;
    v32 = *(v21 + 16 * v31);
    if (v32 == v30)
    {
LABEL_28:
      v22 = v31;
    }

    else
    {
      v52 = 1;
      while (v32 != -4096)
      {
        v53 = v31 + v52++;
        v31 = v53 & v24;
        v32 = *(v21 + 16 * v31);
        if (v32 == v30)
        {
          goto LABEL_28;
        }
      }
    }

LABEL_29:
    v33 = *(v21 + 16 * v22 + 8);
    if (v27 == v33)
    {
      if (!mlir::Operation::isBeforeInBlock(*v17, v20))
      {
        goto LABEL_16;
      }

      v19 = *v17;
      v20 = *v16;
    }

    else if (v27 >= v33)
    {
      goto LABEL_16;
    }

    *v17 = v20;
    v34 = v16;
    do
    {
      while (1)
      {
        v36 = *--v34;
        v35 = v36;
        v37 = **a3;
        v38 = *(*a3 + 4);
        if (v38)
        {
          v39 = *(v19 + 2);
          v40 = v38 - 1;
          v41 = ((v39 >> 4) ^ (v39 >> 9)) & (v38 - 1);
          v42 = *(v37 + 16 * v41);
          if (v42 == v39)
          {
            v43 = *(v37 + 16 * v41 + 8);
            goto LABEL_46;
          }

          v44 = 1;
          while (v42 != -4096)
          {
            v45 = v41 + v44++;
            v41 = v45 & v40;
            v42 = *(v37 + 16 * v41);
            if (v42 == v39)
            {
              goto LABEL_44;
            }
          }
        }

        v41 = *(*a3 + 4);
LABEL_44:
        v43 = *(v37 + 16 * v41 + 8);
        if (v38)
        {
          v40 = v38 - 1;
LABEL_46:
          v46 = *(v35 + 2);
          v47 = ((v46 >> 4) ^ (v46 >> 9)) & v40;
          v48 = *(v37 + 16 * v47);
          if (v48 == v46)
          {
LABEL_47:
            v38 = v47;
          }

          else
          {
            v50 = 1;
            while (v48 != -4096)
            {
              v51 = v47 + v50++;
              v47 = v51 & v40;
              v48 = *(v37 + 16 * v47);
              if (v48 == v46)
              {
                goto LABEL_47;
              }
            }
          }
        }

        v49 = *(v37 + 16 * v38 + 8);
        if (v43 == v49)
        {
          break;
        }

        if (v43 >= v49)
        {
          goto LABEL_15;
        }

        *v16 = v35;
        v16 = v34;
        if (v34 == a1)
        {
          goto LABEL_14;
        }
      }

      if (!mlir::Operation::isBeforeInBlock(v19, v35))
      {
        goto LABEL_15;
      }

      *v16 = *v34;
      v16 = v34;
    }

    while (v34 != a1);
LABEL_14:
    v16 = a1;
LABEL_15:
    *v16 = v19;
    if (++v18 != 8)
    {
LABEL_16:
      v16 = v17++;
      if (v17 == a2)
      {
        return 1;
      }

      continue;
    }

    return v17 + 1 == a2;
  }
}

void anonymous namespace::Mem2Reg::~Mem2Reg(_anonymous_namespace_::Mem2Reg *this)
{
  *this = &unk_28685D770;
  *(this + 43) = &unk_28689F938;
  v2 = this + 504;
  v3 = *(this + 66);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *(this + 43) = &unk_28689F010;
    v4 = *(this + 55);
    if (v4 != *(this + 54))
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *(this + 43) = &unk_28689F010;
    v4 = *(this + 55);
    if (v4 != *(this + 54))
    {
      goto LABEL_5;
    }
  }

  v5 = *(this + 51);
  if (v5 != this + 424)
  {
    free(v5);
  }

  mlir::Pass::~Pass(this);
}

{
  *this = &unk_28685D770;
  *(this + 43) = &unk_28689F938;
  v2 = this + 504;
  v3 = *(this + 66);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *(this + 43) = &unk_28689F010;
    v4 = *(this + 55);
    if (v4 != *(this + 54))
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *(this + 43) = &unk_28689F010;
    v4 = *(this + 55);
    if (v4 != *(this + 54))
    {
      goto LABEL_5;
    }
  }

  v5 = *(this + 51);
  if (v5 != this + 424)
  {
    free(v5);
  }

  mlir::Pass::~Pass(this);

  JUMPOUT(0x259C63180);
}

const void **anonymous namespace::Mem2Reg::runOnOperation(_anonymous_namespace_::Mem2Reg *this)
{
  v36[6] = *MEMORY[0x277D85DE8];
  v3 = *(this + 5);
  v2 = *(this + 6);
  v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
  __src = v2;
  v5 = v2[9];
  v6 = v5 & 0xFFFFFFFFFFFFFFF8;
  if ((v5 & 4) == 0 && v6)
  {
    do
    {
      v7 = *(v6 + 72);
      v6 = v7 & 0xFFFFFFFFFFFFFFF8;
    }

    while ((v7 & 4) == 0 && v6);
  }

  v8 = mlir::detail::AnalysisMap::getAnalysisImpl<mlir::DataLayoutAnalysis,mlir::Operation *>((v2 + 3), v6);
  v30 = mlir::DataLayoutAnalysis::getAtOrAbove(v8, v4);
  v9 = *(this + 6);
  __src = v9;
  v10 = v9[9];
  v11 = v10 & 0xFFFFFFFFFFFFFFF8;
  if ((v10 & 4) == 0 && v11)
  {
    do
    {
      v12 = *(v11 + 72);
      v11 = v12 & 0xFFFFFFFFFFFFFFF8;
    }

    while ((v12 & 4) == 0 && v11);
  }

  v29 = mlir::detail::AnalysisMap::getAnalysisImpl<mlir::DominanceInfo,mlir::Operation *>((v9 + 3), v11);
  v13 = v4[11];
  if ((v13 & 0x7FFFFF) != 0)
  {
    v14 = (((&v4[4 * ((v13 >> 23) & 1) + 16] + ((v13 >> 21) & 0x7F8)) & 0xFFFFFFFFFFFFFFF8) + 32 * v4[10]);
    v15 = &v14[3 * (v13 & 0x7FFFFF)];
    do
    {
      if (*v14 != v14)
      {
        v16 = v14[1];
        if (v16)
        {
          v17 = (v16 - 8);
        }

        else
        {
          v17 = 0;
        }

        v18 = *(v17 + 5);
        Parent = mlir::Block::getParent(v17);
        v32[0] = mlir::Region::getContext(Parent);
        v32[1] = 0;
        v32[2] = v17;
        v32[3] = v18;
        __src = v36;
        v35 = 0x300000000;
        p_src = &__src;
        v20 = v14[1];
        if (v20 == v14)
        {
          v21 = 0;
          v22 = v36;
        }

        else
        {
          do
          {
            v23 = v20 - 1;
            if (!v20)
            {
              v23 = 0;
            }

            v24 = v23[5];
            v25 = v23 + 4;
            if (v24 != v23 + 4)
            {
              do
              {
                v26 = v24[1];
                ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v24);
                p_p_src = &p_src;
                mlir::detail::walk<mlir::ForwardIterator>(ValuePtr, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZN12_GLOBAL__N_17Mem2Reg14runOnOperationEvEUlNS1_31PromotableAllocationOpInterfaceEE_SD_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESN_E4typeES3_OT1_EUlS3_E_EEvlS3_, &p_p_src, 1);
                v24 = v26;
              }

              while (v26 != v25);
            }

            v20 = v20[1];
          }

          while (v20 != v14);
          v22 = __src;
          v21 = v35;
        }

        mlir::tryToPromoteMemorySlots(v22, v21, v32, v30, v29, this + 552, this + 553);
      }

      v14 += 3;
    }

    while (v14 != v15);
  }

  return mlir::detail::PreservedAnalyses::preserveAll(this + 7);
}

uint64_t mlir::detail::AnalysisMap::getAnalysisImpl<mlir::DataLayoutAnalysis,mlir::Operation *>(uint64_t a1, std::recursive_mutex **a2)
{
  {
    v4 = mlir::detail::TypeIDResolver<mlir::DataLayoutAnalysis,void>::resolveTypeID(void)::id;
    v5 = *(a1 + 8);
    v6 = *(a1 + 24);
    if (!v6)
    {
      goto LABEL_5;
    }
  }

  else
  {
    mlir::detail::AnalysisMap::getAnalysisImpl<mlir::DataLayoutAnalysis,mlir::Operation *>();
    v4 = mlir::detail::TypeIDResolver<mlir::DataLayoutAnalysis,void>::resolveTypeID(void)::id;
    v5 = *(a1 + 8);
    v6 = *(a1 + 24);
    if (!v6)
    {
      goto LABEL_5;
    }
  }

  v7 = ((v4 >> 4) ^ (v4 >> 9)) & (v6 - 1);
  v8 = *(v5 + 16 * v7);
  if (v4 != v8)
  {
    v23 = 1;
    while (v8 != -4096)
    {
      v24 = v7 + v23++;
      v7 = v24 & (v6 - 1);
      v8 = *(v5 + 16 * v7);
      if (v4 == v8)
      {
        goto LABEL_4;
      }
    }

LABEL_5:
    if (a2)
    {
      v25 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DataLayoutAnalysis]";
      v26 = 74;
      v9 = llvm::StringRef::find(&v25, "DesiredTypeName = ", 0x12uLL, 0);
      if (v26 >= v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = v26;
      }

      v11 = &v25[v10];
      v12 = v26 - v10;
      if (v26 - v10 >= 0x12)
      {
        v13 = 18;
      }

      else
      {
        v13 = v26 - v10;
      }

      v14 = &v11[v13];
      v15 = v12 - v13;
      if (v15 >= v15 - 1)
      {
        v16 = v15 - 1;
      }

      else
      {
        v16 = v15;
      }

      if (v16 >= 6)
      {
        if (*v14 == 1919511661 && *(v14 + 4) == 14906)
        {
          v14 += 6;
          v16 -= 6;
        }

        else if (v16 >= 0x17 && *v14 == 0x6F6D796E6F6E6128 && *(v14 + 8) == 0x73656D616E207375 && *(v14 + 15) == 0x3A3A296563617073)
        {
          v14 += 23;
          v16 -= 23;
        }
      }

      mlir::PassInstrumentor::runBeforeAnalysis(a2, v14, v16, v4, *a1);
    }

    operator new();
  }

LABEL_4:
  if (v7 == v6)
  {
    goto LABEL_5;
  }

  v21 = *(v5 + 16 * v7 + 8);
  if (*(a1 + 40) == v21)
  {
    goto LABEL_5;
  }

  return *(*(a1 + 32) + 16 * v21 + 8) + 8;
}

const char *llvm::getTypeName<mlir::DataLayoutAnalysis>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DataLayoutAnalysis]";
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

void mlir::detail::AnalysisModel<mlir::DataLayoutAnalysis>::~AnalysisModel(uint64_t a1)
{
  *a1 = &unk_28685D7E0;
  std::unique_ptr<mlir::DataLayout>::reset[abi:nn200100]((a1 + 32), 0);
  v2 = *(a1 + 24);
  v3 = *(a1 + 8);
  if (v2)
  {
    v4 = (v3 + 8);
    v5 = 16 * v2;
    do
    {
      if ((*(v4 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        std::unique_ptr<mlir::DataLayout>::reset[abi:nn200100](v4, 0);
      }

      v4 += 2;
      v5 -= 16;
    }

    while (v5);
    v3 = *(a1 + 8);
    v6 = (16 * *(a1 + 24));
  }

  else
  {
    v6 = 0;
  }

  llvm::deallocate_buffer(v3, v6);
}

{
  *a1 = &unk_28685D7E0;
  std::unique_ptr<mlir::DataLayout>::reset[abi:nn200100]((a1 + 32), 0);
  v2 = *(a1 + 24);
  v3 = *(a1 + 8);
  if (v2)
  {
    v4 = (v3 + 8);
    v5 = 16 * v2;
    do
    {
      if ((*(v4 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        std::unique_ptr<mlir::DataLayout>::reset[abi:nn200100](v4, 0);
      }

      v4 += 2;
      v5 -= 16;
    }

    while (v5);
    v3 = *(a1 + 8);
    v6 = (16 * *(a1 + 24));
  }

  else
  {
    v6 = 0;
  }

  llvm::deallocate_buffer(v3, v6);
}

void sub_25647ED8C()
{

  JUMPOUT(0x259C63180);
}

BOOL mlir::detail::AnalysisModel<mlir::DataLayoutAnalysis>::invalidate(int a1, const void ***this)
{
  v3 = mlir::detail::PreservedAnalyses::isPreserved<mlir::DataLayoutAnalysis>(this);
  if (!v3)
  {
    mlir::detail::PreservedAnalyses::unpreserve<mlir::DataLayoutAnalysis>(this);
  }

  return !v3;
}

uint64_t *std::unique_ptr<mlir::DataLayout>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    llvm::deallocate_buffer(*(v2 + 136), (24 * *(v2 + 152)));
  }

  return result;
}

void mlir::detail::PreservedAnalyses::unpreserve<mlir::DataLayoutAnalysis>(const void ***this)
{
  {
    v2 = mlir::detail::TypeIDResolver<mlir::DataLayoutAnalysis,void>::resolveTypeID(void)::id;
    v3 = *this;
    if (this[1] != *this)
    {
      goto LABEL_3;
    }
  }

  else
  {
    mlir::detail::AnalysisMap::getAnalysisImpl<mlir::DataLayoutAnalysis,mlir::Operation *>();
    v2 = mlir::detail::TypeIDResolver<mlir::DataLayoutAnalysis,void>::resolveTypeID(void)::id;
    v3 = *this;
    if (this[1] != *this)
    {
LABEL_3:
      v4 = llvm::SmallPtrSetImplBase::doFind(this, v2);
      if (v4)
      {
        *v4 = -2;
        ++*(this + 6);
      }

      return;
    }
  }

  v5 = *(this + 5);
  if (v5)
  {
    v6 = 8 * v5;
    for (i = v3; *i != v2; ++i)
    {
      v6 -= 8;
      if (!v6)
      {
        return;
      }
    }

    v8 = v5 - 1;
    *(this + 5) = v8;
    *i = v3[v8];
  }
}

BOOL mlir::detail::PreservedAnalyses::isPreserved<mlir::DataLayoutAnalysis>(const void ***this)
{
  {
    v2 = mlir::detail::TypeIDResolver<mlir::DataLayoutAnalysis,void>::resolveTypeID(void)::id;
    v3 = *this;
    v4 = this[1];
    if (v4 != *this)
    {
      goto LABEL_3;
    }
  }

  else
  {
    mlir::detail::AnalysisMap::getAnalysisImpl<mlir::DataLayoutAnalysis,mlir::Operation *>();
    v2 = mlir::detail::TypeIDResolver<mlir::DataLayoutAnalysis,void>::resolveTypeID(void)::id;
    v3 = *this;
    v4 = this[1];
    if (v4 != *this)
    {
LABEL_3:
      v3 = llvm::SmallPtrSetImplBase::doFind(this, v2);
      v4 = *this;
      v5 = this[1];
      if (!v3)
      {
        v6 = 16;
        if (v5 == v4)
        {
          v6 = 20;
        }

        v3 = &v5[*(this + v6)];
      }

      goto LABEL_14;
    }
  }

  v7 = *(this + 5);
  if (v7)
  {
    v8 = 8 * v7;
    while (*v3 != v2)
    {
      ++v3;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v3 = &v4[v7];
  }

  v5 = v4;
LABEL_14:
  v9 = v5 == v4;
  v10 = 16;
  if (v9)
  {
    v10 = 20;
  }

  return v3 != &v5[*(this + v10)];
}

uint64_t _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZN12_GLOBAL__N_17Mem2Reg14runOnOperationEvEUlNS1_31PromotableAllocationOpInterfaceEE_SD_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESN_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t **a1, uint64_t a2)
{
  result = mlir::OpInterface<mlir::PromotableAllocationOpInterface,mlir::detail::PromotableAllocationOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  if (result)
  {
    if (a2)
    {
      result = mlir::OpInterface<mlir::PromotableAllocationOpInterface,mlir::detail::PromotableAllocationOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
      v5 = **a1;
      *&v7 = a2;
      *(&v7 + 1) = result;
      v6 = *(v5 + 8);
      if (v6 >= *(v5 + 12))
      {
        return llvm::SmallVectorTemplateBase<mlir::PromotableAllocationOpInterface,true>::growAndEmplaceBack<mlir::PromotableAllocationOpInterface&>(v5, &v7);
      }

      else
      {
        *(*v5 + 16 * v6) = v7;
        ++*(v5 + 8);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::OpInterface<mlir::PromotableAllocationOpInterface,mlir::detail::PromotableAllocationOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
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
      mlir::OpInterface<mlir::PromotableAllocationOpInterface,mlir::detail::PromotableAllocationOpInterfaceInterfaceTraits>::getInterfaceFor();
      ReferencedDialect = v24;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::PromotableAllocationOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    p_opt_class_meths = &OBJC_PROTOCOL___MLViewerNodePropertySPI.opt_class_meths;
    v5 = mlir::detail::TypeIDResolver<mlir::PromotableAllocationOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::OpInterface<mlir::PromotableAllocationOpInterface,mlir::detail::PromotableAllocationOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v21;
    a1 = v22;
    p_opt_class_meths = &OBJC_PROTOCOL___MLViewerNodePropertySPI.opt_class_meths;
    v5 = mlir::detail::TypeIDResolver<mlir::PromotableAllocationOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::OpInterface<mlir::PromotableAllocationOpInterface,mlir::detail::PromotableAllocationOpInterfaceInterfaceTraits>::getInterfaceFor();
    p_opt_class_meths = (&OBJC_PROTOCOL___MLViewerNodePropertySPI + 48);
    v18 = v23;
  }

  v19 = p_opt_class_meths[56];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

const char *llvm::getTypeName<mlir::PromotableAllocationOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::PromotableAllocationOpInterface]";
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

uint64_t llvm::SmallVectorTemplateBase<mlir::PromotableAllocationOpInterface,true>::growAndEmplaceBack<mlir::PromotableAllocationOpInterface&>(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 8);
  if (v2 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a1 + 16 * v2) = *a2;
  v3 = *(a1 + 8) + 1;
  *(a1 + 8) = v3;
  return *a1 + 16 * v3 - 16;
}

void mlir::createPrintOpStatsPass(mlir *this, llvm::raw_ostream *a2)
{
  operator new();
}

{
  operator new();
}

void anonymous namespace::PrintOpStatsPass::~PrintOpStatsPass(_anonymous_namespace_::PrintOpStatsPass *this)
{
  *this = &unk_28685D820;
  if (*(this + 141))
  {
    v2 = *(this + 140);
    if (v2)
    {
      v3 = 0;
      do
      {
        v4 = *(*(this + 69) + v3);
        if (v4 != -8 && v4 != 0)
        {
          llvm::deallocate_buffer(v4, (*v4 + 17));
        }

        v3 += 8;
      }

      while (8 * v2 != v3);
    }
  }

  free(*(this + 69));
  *this = &unk_28685D8C0;
  *(this + 43) = &unk_28689F938;
  v6 = *(this + 66);
  if (v6 == (this + 504))
  {
    (*(*v6 + 32))(v6);
    *(this + 43) = &unk_28689F010;
    v7 = *(this + 55);
    if (v7 != *(this + 54))
    {
LABEL_14:
      free(v7);
    }
  }

  else
  {
    if (v6)
    {
      (*(*v6 + 40))(v6);
    }

    *(this + 43) = &unk_28689F010;
    v7 = *(this + 55);
    if (v7 != *(this + 54))
    {
      goto LABEL_14;
    }
  }

  v8 = *(this + 51);
  if (v8 != this + 424)
  {
    free(v8);
  }

  mlir::Pass::~Pass(this);
}

{

  JUMPOUT(0x259C63180);
}

const void **anonymous namespace::PrintOpStatsPass::runOnOperation(_anonymous_namespace_::PrintOpStatsPass *this)
{
  v117[128] = *MEMORY[0x277D85DE8];
  v2 = (this + 552);
  if (*(this + 141))
  {
    v3 = *(this + 140);
    if (v3)
    {
      v4 = 0;
      do
      {
        v5 = *(*v2 + v4);
        if (v5 != -8 && v5 != 0)
        {
          llvm::deallocate_buffer(v5, (*v5 + 17));
        }

        *(*v2 + v4) = 0;
        v4 += 8;
      }

      while (8 * v3 != v4);
    }

    *(this + 564) = 0;
  }

  v7 = *(this + 5);
  __base = this;
  if (*(this + 472) == 1)
  {
    v8 = *(this + 69);
    v9 = *(this + 140);
    if (v9)
    {
      v10 = *(this + 69);
      if (*v8)
      {
        v11 = *v8 == -8;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        do
        {
          v13 = v10[1];
          ++v10;
          v12 = v13;
          if (v13)
          {
            v14 = v12 == -8;
          }

          else
          {
            v14 = 1;
          }
        }

        while (v14);
      }
    }

    else
    {
      v10 = *(this + 69);
    }

    v33 = &v8[v9];
    __base = v117;
    v116 = 0x4000000000;
    if (v10 != v33)
    {
      v34 = 0;
      v35 = v10;
      do
      {
        v36 = v34;
        do
        {
          v38 = v35[1];
          ++v35;
          v37 = v38;
          if (v38)
          {
            v39 = v37 == -8;
          }

          else
          {
            v39 = 1;
          }
        }

        while (v39);
        ++v34;
      }

      while (v35 != v33);
      if (v36 >= 0x40)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v76 = v117;
      v77 = *v10;
      do
      {
        v78 = *v77;
        *v76 = v77 + 2;
        v76[1] = v78;
        do
        {
          v79 = v10[1];
          ++v10;
          v77 = v79;
          if (v79)
          {
            v80 = v77 + 1 == 0;
          }

          else
          {
            v80 = 1;
          }
        }

        while (v80);
        v76 += 2;
      }

      while (v10 != v33);
      v81 = (v116 + v34);
      LODWORD(v116) = v81;
      if (v81 >= 2)
      {
        qsort(__base, v81, 0x10uLL, llvm::array_pod_sort_comparator<llvm::StringRef>);
      }
    }

    v82 = *(this + 72);
    v83 = v82[4];
    if (v82[3] - v83 > 1uLL)
    {
      *v83 = 2683;
      v82[4] += 2;
      v84 = v116;
      if (!v116)
      {
        goto LABEL_144;
      }
    }

    else
    {
      llvm::raw_ostream::write(v82, "{\n", 2uLL);
      v84 = v116;
      if (!v116)
      {
LABEL_144:
        v107 = *(this + 72);
        v108 = v107[4];
        if (v107[3] - v108 > 1uLL)
        {
          *v108 = 2685;
          v107[4] += 2;
          v109 = __base;
          if (__base == v117)
          {
            return mlir::detail::PreservedAnalyses::preserveAll(this + 7);
          }
        }

        else
        {
          llvm::raw_ostream::write(v107, "}\n", 2uLL);
          v109 = __base;
          if (__base == v117)
          {
            return mlir::detail::PreservedAnalyses::preserveAll(this + 7);
          }
        }

        goto LABEL_152;
      }
    }

    v85 = 0;
    v86 = 16 * v84;
    v87 = 16 * (v84 - 1);
    while (1)
    {
      v89 = __base;
      v90 = *(this + 72);
      v91 = *(v90 + 4);
      if ((*(v90 + 3) - v91) > 2)
      {
        *(v91 + 2) = 34;
        *v91 = 8224;
        v99 = *(v90 + 3);
        v92 = (*(v90 + 4) + 3);
        *(v90 + 4) = v92;
        v93 = &v89[v85];
        v94 = *&v89[v85];
        v95 = *&v89[v85 + 8];
        if (v95 > v99 - v92)
        {
LABEL_136:
          v90 = llvm::raw_ostream::write(v90, v94, v95);
          v92 = *(v90 + 4);
          if (*(v90 + 3) - v92 <= 3uLL)
          {
            goto LABEL_134;
          }

          goto LABEL_137;
        }
      }

      else
      {
        v90 = llvm::raw_ostream::write(v90, "  ", 3uLL);
        v92 = *(v90 + 4);
        v93 = &v89[v85];
        v94 = *&v89[v85];
        v95 = *&v89[v85 + 8];
        if (v95 > *(v90 + 3) - v92)
        {
          goto LABEL_136;
        }
      }

      if (v95)
      {
        v96 = v90;
        v97 = v95;
        memcpy(v92, v94, v95);
        v90 = v96;
        v92 = &v97[*(v96 + 4)];
        *(v96 + 4) = v92;
      }

      if (*(v90 + 3) - v92 <= 3uLL)
      {
LABEL_134:
        v98 = llvm::raw_ostream::write(v90, " : ", 4uLL);
        goto LABEL_138;
      }

LABEL_137:
      *v92 = 540680226;
      v98 = v90;
      *(v90 + 4) += 4;
LABEL_138:
      v100 = *&v89[v85];
      v101 = *(v93 + 1);
      v102 = llvm::StringMapImpl::hash(v100, v101, v95);
      v103 = llvm::StringMap<long long,llvm::MallocAllocator>::try_emplace_with_hash<>(v2, v100, v101, v102);
      llvm::raw_ostream::operator<<(v98, *(*v103 + 8));
      v104 = *(this + 72);
      v106 = v104[3];
      v105 = v104[4];
      if (v87 == v85)
      {
        if (v106 == v105)
        {
          llvm::raw_ostream::write(v104, "\n", 1uLL);
          goto LABEL_128;
        }

        *v105 = 10;
        v88 = v104[4] + 1;
      }

      else
      {
        if ((v106 - v105) <= 1)
        {
          llvm::raw_ostream::write(v104, ",\n", 2uLL);
          goto LABEL_128;
        }

        *v105 = 2604;
        v88 = v104[4] + 2;
      }

      v104[4] = v88;
LABEL_128:
      v85 += 16;
      if (v86 == v85)
      {
        goto LABEL_144;
      }
    }
  }

  v15 = *(this + 72);
  v16 = v15[4];
  if (v15[3] - v16 > 0x17uLL)
  {
    qmemcpy(v16, "Operations encountered:\n", 24);
    v15[4] += 24;
    v17 = *(this + 72);
    v18 = v17[4];
    if (v17[3] - v18 > 0x17uLL)
    {
LABEL_25:
      qmemcpy(v18, "-----------------------\n", 24);
      v17[4] += 24;
      v19 = *(this + 69);
      v20 = *(this + 140);
      if (v20)
      {
        goto LABEL_26;
      }

LABEL_38:
      v21 = v19;
      goto LABEL_39;
    }
  }

  else
  {
    llvm::raw_ostream::write(v15, "Operations encountered:\n", 0x18uLL);
    v17 = *(this + 72);
    v18 = v17[4];
    if (v17[3] - v18 > 0x17uLL)
    {
      goto LABEL_25;
    }
  }

  llvm::raw_ostream::write(v17, "-----------------------\n", 0x18uLL);
  v19 = *(this + 69);
  v20 = *(this + 140);
  if (!v20)
  {
    goto LABEL_38;
  }

LABEL_26:
  v21 = v19;
  if (*v19)
  {
    v22 = *v19 == -8;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    do
    {
      v24 = v21[1];
      ++v21;
      v23 = v24;
      if (v24)
      {
        v25 = v23 == -8;
      }

      else
      {
        v25 = 1;
      }
    }

    while (v25);
  }

LABEL_39:
  v26 = &v19[v20];
  __base = v117;
  v116 = 0x4000000000;
  if (v21 != v26)
  {
    v27 = 0;
    v28 = v21;
    do
    {
      v29 = v27;
      do
      {
        v31 = v28[1];
        ++v28;
        v30 = v31;
        if (v31)
        {
          v32 = v30 == -8;
        }

        else
        {
          v32 = 1;
        }
      }

      while (v32);
      ++v27;
    }

    while (v28 != v26);
    if (v29 >= 0x40)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v40 = v117;
    v41 = *v21;
    do
    {
      v42 = *v41;
      *v40 = v41 + 2;
      v40[1] = v42;
      do
      {
        v43 = v21[1];
        ++v21;
        v41 = v43;
        if (v43)
        {
          v44 = v41 + 1 == 0;
        }

        else
        {
          v44 = 1;
        }
      }

      while (v44);
      v40 += 2;
    }

    while (v21 != v26);
    v45 = (v116 + v27);
    LODWORD(v116) = v45;
    v46 = __base;
    if (v45 >= 2)
    {
      qsort(__base, v45, 0x10uLL, llvm::array_pod_sort_comparator<llvm::StringRef>);
      v46 = __base;
      LODWORD(v45) = v116;
    }

    if (v45)
    {
      v47 = 0;
      v48 = 0;
      v49 = 16 * v45;
      do
      {
        v50 = *v46;
        v46 += 16;
        v111 = v50;
        v114 = 46;
        v51 = llvm::StringRef::find(&v111, &v114, 1uLL, 0);
        v52 = *(&v111 + 1);
        if (v51 >= *(&v111 + 1))
        {
          v53 = *(&v111 + 1);
        }

        else
        {
          v53 = v51;
        }

        if (*(&v111 + 1) <= v51 + 1)
        {
          v54 = 0;
        }

        else
        {
          v54 = v53;
        }

        if (*(&v111 + 1) > v51 + 1)
        {
          v53 = *(&v111 + 1) - (v51 + 1);
        }

        if (v51 == -1)
        {
          v55 = 0;
        }

        else
        {
          v55 = v54;
        }

        if (v51 != -1)
        {
          v52 = v53;
        }

        if (v48 <= v55)
        {
          v48 = v55;
        }

        if (v47 <= v52)
        {
          v47 = v52;
        }

        v49 -= 16;
      }

      while (v49);
      v46 = __base;
      if (v116)
      {
        v56 = __base + 16 * v116;
        while (1)
        {
          v111 = *v46;
          v114 = 46;
          v57 = llvm::StringRef::find(&v111, &v114, 1uLL, 0);
          if (v57 == -1)
          {
            v60 = *(&v111 + 1);
            v58 = v111;
          }

          else
          {
            v58 = v111;
            if (v57 >= *(&v111 + 1))
            {
              v59 = *(&v111 + 1);
            }

            else
            {
              v59 = v57;
            }

            v60 = *(&v111 + 1) - (v57 + 1);
            if (*(&v111 + 1) <= v57 + 1)
            {
              v60 = v59;
            }

            else
            {
              v61 = v111 + v57 + 1;
              if (v57)
              {
                v62 = *(this + 72);
                *(&v111 + 1) = v59;
                v112 = v48 + 2;
                v113 = 2;
                v63 = llvm::raw_ostream::operator<<(v62, &v111);
                v64 = *(v63 + 4);
                if (v64 >= *(v63 + 3))
                {
                  llvm::raw_ostream::write(v63, 46);
                }

                else
                {
                  *(v63 + 4) = v64 + 1;
                  *v64 = 46;
                }

                v58 = v61;
                goto LABEL_104;
              }

              v58 = v111 + 1;
            }
          }

          llvm::raw_ostream::indent(*(this + 72), v48 + 3);
LABEL_104:
          v65 = *(this + 72);
          *&v111 = v58;
          *(&v111 + 1) = v60;
          v112 = v47;
          v113 = 1;
          v66 = llvm::raw_ostream::operator<<(v65, &v111);
          v68 = *(v66 + 4);
          if ((*(v66 + 3) - v68) > 2)
          {
            *(v68 + 2) = 32;
            *v68 = 11296;
            v69 = v66;
            *(v66 + 4) += 3;
          }

          else
          {
            v69 = llvm::raw_ostream::write(v66, " , ", 3uLL);
          }

          v70 = *v46;
          v71 = *(v46 + 1);
          v72 = llvm::StringMapImpl::hash(*v46, v71, v67);
          v73 = llvm::StringMap<long long,llvm::MallocAllocator>::try_emplace_with_hash<>(v2, v70, v71, v72);
          v74 = llvm::raw_ostream::operator<<(v69, *(*v73 + 8));
          v75 = *(v74 + 4);
          if (v75 < *(v74 + 3))
          {
            *(v74 + 4) = v75 + 1;
            *v75 = 10;
            v46 += 16;
            if (v46 == v56)
            {
              goto LABEL_149;
            }
          }

          else
          {
            llvm::raw_ostream::write(v74, 10);
            v46 += 16;
            if (v46 == v56)
            {
LABEL_149:
              v46 = __base;
              break;
            }
          }
        }
      }
    }

    if (v46 != v117)
    {
      v109 = v46;
LABEL_152:
      free(v109);
    }
  }

  return mlir::detail::PreservedAnalyses::preserveAll(this + 7);
}

uint64_t *llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<anonymous namespace::PrintOpStatsPass::runOnOperation(void)::$_0>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v9 = *(*(a2 + 48) + 8);
  Value = mlir::StringAttr::getValue(&v9);
  v5 = v4;
  v7 = llvm::StringMapImpl::hash(Value, v4, v6);
  result = llvm::StringMap<long long,llvm::MallocAllocator>::try_emplace_with_hash<>((v2 + 552), Value, v5, v7);
  ++*(*result + 8);
  return result;
}

uint64_t *llvm::StringMap<long long,llvm::MallocAllocator>::try_emplace_with_hash<>(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4)
{
  v7 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v8 = (*a1 + 8 * v7);
  v9 = *v8;
  if (*v8 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer(a3 + 17, 8uLL);
    v11 = buffer + 2;
    if (a3)
    {
LABEL_4:
      memcpy(v11, a2, a3);
    }
  }

  else
  {
    if (v9)
    {
      while (!v9 || v9 == -8)
      {
        v16 = v8[1];
        ++v8;
        v9 = v16;
      }

      return v8;
    }

    buffer = llvm::allocate_buffer(a3 + 17, 8uLL);
    v11 = buffer + 2;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v11 + a3) = 0;
  *buffer = a3;
  buffer[1] = 0;
  *v8 = buffer;
  ++*(a1 + 3);
  v8 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v7));
  if (*v8)
  {
    v12 = *v8 == -8;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    do
    {
      v14 = v8[1];
      ++v8;
      v13 = v14;
      if (v14)
      {
        v15 = v13 == -8;
      }

      else
      {
        v15 = 1;
      }
    }

    while (v15);
  }

  return v8;
}

uint64_t llvm::array_pod_sort_comparator<llvm::StringRef>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v3 >= v2)
  {
    v4 = *(a1 + 8);
  }

  else
  {
    v4 = *(a2 + 8);
  }

  if (!v4)
  {
    if (v2 >= v3)
    {
      return v3 < v2;
    }

    return 0xFFFFFFFFLL;
  }

  v5 = *a2;
  v6 = *a1;
  v7 = memcmp(*a1, *a2, v4);
  if (!v7)
  {
    if (v2 >= v3)
    {
      goto LABEL_12;
    }

    return 0xFFFFFFFFLL;
  }

  if (v7 < 0)
  {
    return 0xFFFFFFFFLL;
  }

LABEL_12:
  v9 = memcmp(v5, v6, v4);
  if (!v9)
  {
    return v3 < v2;
  }

  return v9 < 0;
}

void mlir::anonymous namespace::PrintIRPass::~PrintIRPass(mlir::_anonymous_namespace_::PrintIRPass *this)
{
  *this = &unk_28685D9D0;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 344);

  mlir::Pass::~Pass(this);
}

{
  *this = &unk_28685D9D0;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 344);
  mlir::Pass::~Pass(this);

  JUMPOUT(0x259C63180);
}

void mlir::anonymous namespace::PrintIRPass::runOnOperation(mlir::_anonymous_namespace_::PrintIRPass *this)
{
  v2 = llvm::dbgs(this);
  v3 = *(v2 + 4);
  if ((*(v2 + 3) - v3) > 0x11)
  {
    *(v3 + 16) = 28781;
    *v3 = *"// -----// IR Dump";
    *(v2 + 4) += 18;
    v4 = *(this + 495);
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v2 = llvm::raw_ostream::write(v2, "// -----// IR Dump", 0x12uLL);
    v4 = *(this + 495);
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }
  }

  v4 = *(this + 60);
LABEL_6:
  if (v4)
  {
    v5 = llvm::dbgs(v2);
    v6 = v5[4];
    if (v5[3] == v6)
    {
      v5 = llvm::raw_ostream::write(v5, " ", 1uLL);
    }

    else
    {
      *v6 = 32;
      ++v5[4];
    }

    v7 = *(this + 495);
    if (v7 >= 0)
    {
      v8 = this + 472;
    }

    else
    {
      v8 = *(this + 59);
    }

    if (v7 >= 0)
    {
      v9 = *(this + 495);
    }

    else
    {
      v9 = *(this + 60);
    }

    v2 = llvm::raw_ostream::write(v5, v8, v9);
  }

  v10 = llvm::dbgs(v2);
  v11 = v10[4];
  if ((v10[3] - v11) > 0xB)
  {
    *(v11 + 8) = 170864416;
    *v11 = *" //----- //\n";
    v10[4] += 12;
  }

  else
  {
    llvm::raw_ostream::write(v10, " //----- //\n", 0xCuLL);
  }

  mlir::Operation::dump((*(this + 5) & 0xFFFFFFFFFFFFFFF8));
}

void anonymous namespace::RemoveDeadValues::~RemoveDeadValues(_anonymous_namespace_::RemoveDeadValues *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::RemoveDeadValues::runOnOperation(_anonymous_namespace_::RemoveDeadValues *this)
{
  v2 = *(this + 6);
  v9[0] = v2;
  v3 = *(v2 + 72);
  v4 = v3 & 0xFFFFFFFFFFFFFFF8;
  if ((v3 & 4) == 0 && v4)
  {
    do
    {
      v5 = *(v4 + 72);
      v4 = v5 & 0xFFFFFFFFFFFFFFF8;
    }

    while ((v5 & 4) == 0 && v4);
  }

  v6 = mlir::detail::AnalysisMap::getAnalysisImpl<mlir::dataflow::RunLivenessAnalysis,mlir::Operation *>(v2 + 24, v4);
  v7 = (*(this + 5) & 0xFFFFFFFFFFFFFFF8);
  v10 = v7;
  if (result)
  {
    v9[0] = &v10;
    v9[1] = v6;
  }

  return result;
}

uint64_t mlir::detail::AnalysisMap::getAnalysisImpl<mlir::dataflow::RunLivenessAnalysis,mlir::Operation *>(uint64_t a1, std::recursive_mutex **a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = (v5 - 1) & ((&mlir::dataflow::RunLivenessAnalysis::resolveTypeID(void)::id >> 4) ^ (&mlir::dataflow::RunLivenessAnalysis::resolveTypeID(void)::id >> 9));
  v7 = *(v4 + 16 * v6);
  if (v7 != &mlir::dataflow::RunLivenessAnalysis::resolveTypeID(void)::id)
  {
    v22 = 1;
    while (v7 != -4096)
    {
      v23 = v6 + v22++;
      v6 = v23 & (v5 - 1);
      v7 = *(v4 + 16 * v6);
      if (v7 == &mlir::dataflow::RunLivenessAnalysis::resolveTypeID(void)::id)
      {
        goto LABEL_3;
      }
    }

LABEL_4:
    if (a2)
    {
      v24 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::dataflow::RunLivenessAnalysis]";
      v25 = 85;
      v8 = llvm::StringRef::find(&v24, "DesiredTypeName = ", 0x12uLL, 0);
      if (v25 >= v8)
      {
        v9 = v8;
      }

      else
      {
        v9 = v25;
      }

      v10 = &v24[v9];
      v11 = v25 - v9;
      if (v25 - v9 >= 0x12)
      {
        v12 = 18;
      }

      else
      {
        v12 = v25 - v9;
      }

      v13 = &v10[v12];
      v14 = v11 - v12;
      if (v14 >= v14 - 1)
      {
        v15 = v14 - 1;
      }

      else
      {
        v15 = v14;
      }

      if (v15 >= 6)
      {
        if (*v13 == 1919511661 && *(v13 + 4) == 14906)
        {
          v13 += 6;
          v15 -= 6;
        }

        else if (v15 >= 0x17 && *v13 == 0x6F6D796E6F6E6128 && *(v13 + 8) == 0x73656D616E207375 && *(v13 + 15) == 0x3A3A296563617073)
        {
          v13 += 23;
          v15 -= 23;
        }
      }

      mlir::PassInstrumentor::runBeforeAnalysis(a2, v13, v15, &mlir::dataflow::RunLivenessAnalysis::resolveTypeID(void)::id, *a1);
    }

    operator new();
  }

LABEL_3:
  if (v6 == v5)
  {
    goto LABEL_4;
  }

  v20 = *(v4 + 16 * v6 + 8);
  if (*(a1 + 40) == v20)
  {
    goto LABEL_4;
  }

  return *(*(a1 + 32) + 16 * v20 + 8) + 8;
}

void mlir::detail::AnalysisModel<mlir::dataflow::RunLivenessAnalysis>::~AnalysisModel(void *a1)
{
  *a1 = &unk_28685DAE0;
  mlir::DataFlowSolver::~DataFlowSolver((a1 + 1));
}

{
  *a1 = &unk_28685DAE0;
  mlir::DataFlowSolver::~DataFlowSolver((a1 + 1));
}

void sub_256481348()
{

  JUMPOUT(0x259C63180);
}

BOOL mlir::detail::AnalysisModel<mlir::dataflow::RunLivenessAnalysis>::invalidate(int a1, void ***this)
{
  v3 = *this;
  v4 = this[1];
  if (v4 == *this)
  {
    v8 = *(this + 5);
    if (v8)
    {
      v9 = 8 * v8;
      v7 = *this;
      while (*v7 != &mlir::dataflow::RunLivenessAnalysis::resolveTypeID(void)::id)
      {
        ++v7;
        v9 -= 8;
        if (!v9)
        {
          goto LABEL_8;
        }
      }

      v6 = this[1];
    }

    else
    {
LABEL_8:
      v7 = &v4[v8];
      v6 = this[1];
    }
  }

  else
  {
    v5 = llvm::SmallPtrSetImplBase::doFind(this, &mlir::dataflow::RunLivenessAnalysis::resolveTypeID(void)::id);
    v3 = *this;
    v6 = this[1];
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v10 = 16;
      if (v6 == v3)
      {
        v10 = 20;
      }

      v7 = &v6[*(this + v10)];
    }

    v4 = *this;
  }

  v11 = v6 == v4;
  v12 = 16;
  if (v11)
  {
    v12 = 20;
  }

  v13 = &v6[*(this + v12)];
  if (v7 != v13)
  {
    return v7 == v13;
  }

  if (v6 != v3)
  {
    v15 = llvm::SmallPtrSetImplBase::doFind(this, &mlir::dataflow::RunLivenessAnalysis::resolveTypeID(void)::id);
    if (v15)
    {
      *v15 = -2;
      ++*(this + 6);
      return v7 == v13;
    }

    return v7 == v13;
  }

  v16 = *(this + 5);
  if (!v16)
  {
    return v7 == v13;
  }

  v17 = 8 * v16;
  for (i = v3; *i != &mlir::dataflow::RunLivenessAnalysis::resolveTypeID(void)::id; ++i)
  {
    v17 -= 8;
    if (!v17)
    {
      return v7 == v13;
    }
  }

  v19 = v16 - 1;
  *(this + 5) = v19;
  *i = v3[v19];
  return v7 == v13;
}

void mlir::DataFlowSolver::~DataFlowSolver(mlir::DataFlowSolver *this)
{
  v2 = *(this + 36);
  v3 = *(this + 16);
  if (v2)
  {
    v4 = v3 + 24 * v2;
    v5 = (v3 + 16);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = v5 - 2;
      if ((v7 != -4096 || v6 != -4096) && (v7 != -8192 || v6 != -8192))
      {
        v9 = *v5;
        *v5 = 0;
        if (v9)
        {
          (*(*v9 + 8))(v9);
        }
      }

      v5 += 3;
    }

    while (v8 + 3 != v4);
    v3 = *(this + 16);
    v10 = 24 * *(this + 36);
  }

  else
  {
    v10 = 0;
  }

  llvm::deallocate_buffer(v3, v10);
}

uint64_t std::deque<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>>::~deque[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 128;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 256;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<anonymous namespace::RemoveDeadValues::runOnOperation(void)::$_0>(uint64_t a1, mlir::Operation *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  if (mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(a2))
  {
    goto LABEL_2;
  }

  if (!mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(a2))
  {
    goto LABEL_27;
  }

  if (*(a2 + 47))
  {
    InherentAttr = mlir::Operation::getInherentAttr(a2, "sym_name", 8);
    if (v14)
    {
      if (!InherentAttr)
      {
        goto LABEL_27;
      }

LABEL_26:
      if (!mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a2))
      {
        goto LABEL_2;
      }

      goto LABEL_27;
    }
  }

  if (mlir::DictionaryAttr::contains(a2 + 56, "sym_name", 8uLL))
  {
    goto LABEL_26;
  }

LABEL_27:
  if (!mlir::OpInterface<mlir::SymbolUserOpInterface,mlir::detail::SymbolUserOpInterfaceInterfaceTraits>::getInterfaceFor(a2) || mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(a2))
  {
    return 1;
  }

LABEL_2:
  v17 = 257;
  mlir::Operation::emitError(v20, a2, v16);
  if (v20[0])
  {
    LODWORD(v18) = 3;
    *(&v18 + 1) = "cannot optimize an IR with non-function symbol ops, non-call symbol user ops or branch ops\n";
    v19 = 91;
    if (v22 >= v23)
    {
      if (v21 > &v18 || v21 + 24 * v22 <= &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v3 = v21 + 24 * v22;
    v4 = v18;
    *(v3 + 2) = v19;
    *v3 = v4;
    ++v22;
    if (v20[0])
    {
      mlir::InFlightDiagnostic::report(v20);
    }
  }

  if (v30 == 1)
  {
    if (v29 != &v30)
    {
      free(v29);
    }

    v5 = __p;
    if (__p)
    {
      v6 = v28;
      v7 = __p;
      if (v28 != __p)
      {
        do
        {
          v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
        }

        while (v6 != v5);
        v7 = __p;
      }

      v28 = v5;
      operator delete(v7);
    }

    v8 = v25;
    if (v25)
    {
      v9 = v26;
      v10 = v25;
      if (v26 != v25)
      {
        do
        {
          v12 = *--v9;
          v11 = v12;
          *v9 = 0;
          if (v12)
          {
            MEMORY[0x259C63150](v11, 0x1000C8077774924);
          }
        }

        while (v9 != v8);
        v10 = v25;
      }

      v26 = v8;
      operator delete(v10);
    }

    if (v21 != &v24)
    {
      free(v21);
    }
  }

  return 0;
}

uint64_t mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
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
      mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor();
      ReferencedDialect = v24;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    p_opt_class_meths = &OBJC_PROTOCOL___MLViewerNodePropertySPI.opt_class_meths;
    v5 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v21;
    a1 = v22;
    p_opt_class_meths = &OBJC_PROTOCOL___MLViewerNodePropertySPI.opt_class_meths;
    v5 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor();
    p_opt_class_meths = (&OBJC_PROTOCOL___MLViewerNodePropertySPI + 48);
    v18 = v23;
  }

  v19 = p_opt_class_meths[107];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

const char *llvm::getTypeName<mlir::SymbolOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::SymbolOpInterface]";
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

uint64_t mlir::OpInterface<mlir::SymbolUserOpInterface,mlir::detail::SymbolUserOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
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
      mlir::OpInterface<mlir::SymbolUserOpInterface,mlir::detail::SymbolUserOpInterfaceInterfaceTraits>::getInterfaceFor();
      ReferencedDialect = v24;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    p_opt_class_meths = &OBJC_PROTOCOL___MLViewerNodePropertySPI.opt_class_meths;
    v5 = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::OpInterface<mlir::SymbolUserOpInterface,mlir::detail::SymbolUserOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v21;
    a1 = v22;
    p_opt_class_meths = &OBJC_PROTOCOL___MLViewerNodePropertySPI.opt_class_meths;
    v5 = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::OpInterface<mlir::SymbolUserOpInterface,mlir::detail::SymbolUserOpInterfaceInterfaceTraits>::getInterfaceFor();
    p_opt_class_meths = (&OBJC_PROTOCOL___MLViewerNodePropertySPI + 48);
    v18 = v23;
  }

  v19 = p_opt_class_meths[171];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

const char *llvm::getTypeName<mlir::SymbolUserOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::SymbolUserOpInterface]";
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

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<anonymous namespace::RemoveDeadValues::runOnOperation(void)::$_1>(uint64_t a1, uint64_t a2)
{
  v156[4] = *MEMORY[0x277D85DE8];
  if (mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a2) && a2)
  {
    InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    v5 = *a1;
    v6 = *(a1 + 8);
    v7 = *v5;
    v137 = a2;
    v138 = InterfaceFor;
    if (mlir::FunctionOpInterface::isPublic(&v137) & 1) != 0 || (mlir::FunctionOpInterface::isDeclaration(&v137))
    {
      return;
    }

    v8 = (((v137 + 16 * ((*(v137 + 44) >> 23) & 1) + ((*(v137 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v137 + 40));
    if (*v8 == v8)
    {
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v9 = v8[1];
      if (v9)
      {
        v10 = v9 - 8;
      }

      else
      {
        v10 = 0;
      }

      v11 = *(v10 + 48);
      v12 = (*(v10 + 56) - v11) >> 3;
    }

    v153 = v155;
    v154 = 0x600000000;
    if (v12 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (!v12)
    {
      goto LABEL_40;
    }

    v23 = v155;
    v24 = (v12 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v24 >= 7 && &v155[-v11] >= 0x20)
    {
      v114 = v24 + 1;
      v115 = 8 * (v114 & 0x3FFFFFFFFFFFFFFCLL);
      v23 = &v155[v115];
      v25 = (v11 + v115);
      v116 = (v11 + 16);
      v117 = v156;
      v118 = v114 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v119 = *v116;
        *(v117 - 1) = *(v116 - 1);
        *v117 = v119;
        v116 += 2;
        v117 += 2;
        v118 -= 4;
      }

      while (v118);
      if (v114 == (v114 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_40;
      }
    }

    else
    {
      v25 = v11;
    }

    do
    {
      v26 = *v25++;
      *v23 = v26;
      v23 += 8;
    }

    while (v25 != (v11 + 8 * v12));
LABEL_40:
    LODWORD(v154) = v12;
    mlir::ValueRange::ValueRange(&__b, v155, v12);
    v27 = v149 + 8 * v150;
    if (v150)
    {
      v28 = (v150 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      v29 = v149;
      if (v28 <= 2)
      {
        goto LABEL_217;
      }

      v30 = v28 + 1;
      v29 = v149 + 8 * (v30 & 0x3FFFFFFFFFFFFFFCLL);
      v31 = (v149 + 16);
      v32 = v30 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v33 = vmvnq_s8(*v31);
        v31[-1] = vmvnq_s8(v31[-1]);
        *v31 = v33;
        v31 += 2;
        v32 -= 4;
      }

      while (v32);
      if (v30 != (v30 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_217:
        do
        {
          *v29 = ~*v29;
          v29 += 8;
        }

        while (v29 != v27);
      }
    }

    if ((v152 & 0x3F) != 0)
    {
      *(v27 - 1) &= ~(-1 << (v152 & 0x3F));
    }

    if (v154)
    {
      v34 = 0;
      v35 = v153;
      v36 = &v153[8 * v154];
      do
      {
        v37 = *v35;
        if (*v35 && ((*(v149 + (v34 >> 6)) >> v34) & 1) != 0)
        {
          while (1)
          {
            v38 = *v37;
            if (!*v37)
            {
              break;
            }

            v39 = v38[1];
            if (v39)
            {
              v40 = *v38;
              *v39 = *v38;
              if (v40)
              {
                *(v40 + 8) = v39;
              }
            }

            *v38 = 0;
            v38[1] = 0;
            v38[3] = 0;
          }
        }

        ++v34;
        v35 += 8;
      }

      while (v35 != v36);
    }

    v135 = v6;
    TypeWithoutArgs = mlir::FunctionOpInterface::getTypeWithoutArgs(&v137, &v149);
    mlir::function_interface_impl::eraseFunctionArguments(v137, v138, &v149, TypeWithoutArgs);
    mlir::FunctionOpInterface::getSymbolUses(&__b, &v137, v7);
    v42 = v146;
    v136 = __b;
    if (__b != v146)
    {
      for (i = __b; i != v42; i += 2)
      {
        v44 = *i;
        if ((*(*i + 46) & 0x80) != 0)
        {
          v45 = *(v44 + 68);
          v46 = (v45 + 63) >> 6;
          __b = v147;
          HIDWORD(v146) = 6;
          if ((v45 + 63) >= 0x1C0)
          {
            LODWORD(v146) = 0;
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          if ((v45 + 63) >= 0x40)
          {
            bzero(v147, 8 * v46);
          }
        }

        else
        {
          LODWORD(v46) = 0;
          v45 = 0;
          __b = v147;
          HIDWORD(v146) = 6;
        }

        LODWORD(v146) = v46;
        v148 = v45;
        v47 = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(v44);
        v143 = v44;
        v144 = v47;
        ArgOperands = mlir::CallOpInterface::getArgOperands(&v143);
        __dst = v141;
        v140 = 0x600000000;
        v50 = v49;
        if (v49)
        {
          v51 = 0;
          do
          {
            if (v51 >= HIDWORD(v140))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            *(__dst + v51) = ArgOperands;
            v51 = v140 + 1;
            LODWORD(v140) = v140 + 1;
            ArgOperands += 32;
            --v50;
          }

          while (v50);
        }

        if (v152)
        {
          if (v152 >= 0x41)
          {
            v52 = -1;
          }

          else
          {
            v52 = 0xFFFFFFFFFFFFFFFFLL >> -v152;
          }

          v53 = *v149 & v52;
          if (v53)
          {
            v54 = 0;
LABEL_79:
            v55 = __clz(__rbit64(v53)) | v54;
            if (v55 != 0xFFFFFFFF)
            {
              while (1)
              {
                OperandNumber = mlir::OpOperand::getOperandNumber(*(__dst + v55));
                *(__b + (OperandNumber >> 6)) |= 1 << OperandNumber;
                v63 = v55 + 1;
                if (v55 + 1 == v152)
                {
                  break;
                }

                v61 = v63 >> 6;
                v64 = (v152 - 1) >> 6;
                if (v61 > v64)
                {
                  break;
                }

                v66 = v63 & 0x3F;
                v65 = v66 == 0;
                v67 = 0xFFFFFFFFFFFFFFFFLL >> -v66;
                if (v65)
                {
                  v68 = -1;
                }

                else
                {
                  v68 = ~v67;
                }

                if (v61 == v64)
                {
                  v69 = 0xFFFFFFFFFFFFFFFFLL >> ~(v152 - 1);
                }

                else
                {
                  v69 = -1;
                }

                v70 = v69 & *(v149 + v61) & v68;
                if (!v70)
                {
                  v71 = v61 + 1;
                  if (v61 + 1 == v64 + 1)
                  {
                    goto LABEL_110;
                  }

                  v72 = v64 - v61;
                  v73 = -1;
                  while (1)
                  {
                    v74 = v73 ? -1 : v68;
                    v75 = --v72 ? -1 : 0xFFFFFFFFFFFFFFFFLL >> ~(v152 - 1);
                    v70 = v74 & v75 & *(v149 + v71);
                    if (v70)
                    {
                      break;
                    }

                    ++v71;
                    --v73;
                    if (!v72)
                    {
                      goto LABEL_110;
                    }
                  }

                  LODWORD(v61) = v71;
                }

                LODWORD(v55) = __clz(__rbit64(v70)) | (v61 << 6);
                if (v55 == -1)
                {
                  goto LABEL_110;
                }
              }
            }

            goto LABEL_110;
          }

          if (v152 >= 0x41)
          {
            v56 = (v152 - 1) >> 6;
            v57 = (v149 + 8);
            v54 = 64;
            do
            {
              v59 = *v57++;
              v58 = v59;
              v60 = v56 == 1 ? 0xFFFFFFFFFFFFFFFFLL >> -v152 : -1;
              v53 = v60 & v58;
              if (v53)
              {
                goto LABEL_79;
              }

              v54 += 64;
            }

            while (--v56);
          }
        }

LABEL_110:
        mlir::detail::OperandStorage::eraseOperands(v44 + 64, &__b);
        if (__dst != v141)
        {
          free(__dst);
        }

        if (__b != v147)
        {
          free(__b);
        }
      }
    }

    v76 = *(((v137 + 16 * ((*(v137 + 44) >> 23) & 1) + ((*(v137 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v137 + 40));
    if (v76)
    {
      v77 = (v76 - 8);
    }

    else
    {
      v77 = 0;
    }

    Terminator = mlir::Block::getTerminator(v77);
    if ((*(Terminator + 46) & 0x80) != 0)
    {
      v79 = *(Terminator + 68);
      v80 = (v79 + 63) >> 6;
      __b = v147;
      HIDWORD(v146) = 6;
      v81 = v136;
      if ((v79 + 63) >= 0x1C0)
      {
        LODWORD(v146) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v82 = v135;
      if ((v79 + 63) >= 0x40)
      {
        memset(v147, 255, 8 * v80);
      }

      LODWORD(v146) = (v79 + 63) >> 6;
      v148 = v79;
      if ((v79 & 0x3F) != 0)
      {
        v147[v80 - 1] &= ~(-1 << (v79 & 0x3F));
      }

      if (v136 != v42)
      {
        goto LABEL_126;
      }
    }

    else
    {
      v79 = 0;
      __b = v147;
      v146 = 0x600000000;
      v148 = 0;
      v82 = v135;
      v81 = v136;
      if (v136 != v42)
      {
LABEL_126:
        for (j = v81; j != v42; j += 2)
        {
          v84 = *(*j + 36);
          if (v84)
          {
            v85 = *j - 16;
          }

          else
          {
            v85 = 0;
          }

          mlir::ValueRange::ValueRange(&v143, v85, v84);
          v86 = __dst;
          v87 = v140;
          v88 = __dst + 8 * v140;
          if (v140)
          {
            v89 = (v140 - 1) & 0x1FFFFFFFFFFFFFFFLL;
            v90 = __dst;
            if (v89 <= 2)
            {
              goto LABEL_218;
            }

            v91 = v89 + 1;
            v90 = __dst + 8 * (v91 & 0x3FFFFFFFFFFFFFFCLL);
            v92 = (__dst + 16);
            v93 = v91 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v94 = vmvnq_s8(*v92);
              v92[-1] = vmvnq_s8(v92[-1]);
              *v92 = v94;
              v92 += 2;
              v93 -= 4;
            }

            while (v93);
            if (v91 != (v91 & 0x3FFFFFFFFFFFFFFCLL))
            {
LABEL_218:
              do
              {
                *v90 = ~*v90;
                v90 += 8;
              }

              while (v90 != v88);
            }
          }

          if ((v142 & 0x3F) != 0)
          {
            *(v88 - 1) &= ~(-1 << (v142 & 0x3F));
          }

          v95 = v146;
          if (v87 >= v146)
          {
            v96 = v146;
          }

          else
          {
            v96 = v87;
          }

          if (v96)
          {
            v97 = __b;
            if (v96 <= 3 || (__b < v86 + 8 * v96 ? (v98 = v86 >= (__b + 8 * v96)) : (v98 = 1), !v98))
            {
              v99 = 0;
LABEL_154:
              v104 = v96 - v99;
              v105 = v99;
              v106 = &v97[v105 * 8];
              v107 = &v86->i64[v105];
              do
              {
                v108 = *v107++;
                *v106 &= v108;
                v106 += 8;
                --v104;
              }

              while (v104);
              goto LABEL_156;
            }

            v99 = v96 & 0xFFFFFFFC;
            v100 = v86 + 1;
            v101 = (__b + 16);
            v102 = v99;
            do
            {
              v103 = vandq_s8(*v101, *v100);
              v101[-1] = vandq_s8(v101[-1], v100[-1]);
              *v101 = v103;
              v100 += 2;
              v101 += 2;
              v102 -= 4;
            }

            while (v102);
            if (v99 != v96)
            {
              goto LABEL_154;
            }
          }

LABEL_156:
          if (v95 > v87)
          {
            v109 = __b;
            v110 = v95 - v96;
            if (v95 - v96 < 8 || v95 - 1 < v96)
            {
              v111 = v96;
            }

            else
            {
              v111 = v96 + (v110 & 0xFFFFFFFC);
              v112 = v110 & 0xFFFFFFFC;
              do
              {
                v113 = &v109[v96];
                *v113 = 0uLL;
                v113[1] = 0uLL;
                LODWORD(v96) = v96 + 4;
                v112 -= 4;
              }

              while (v112);
              if (v110 == (v110 & 0xFFFFFFFC))
              {
                goto LABEL_165;
              }
            }

            do
            {
              v109[v111++] = 0;
            }

            while (v95 != v111);
          }

LABEL_165:
          if (v86 != v141)
          {
            free(v86);
          }
        }
      }
    }

    v127 = ((v137 + 16 * ((*(v137 + 44) >> 23) & 1) + ((*(v137 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v137 + 40);
    for (k = *(v127 + 8); ; k = *(k + 8))
    {
      if (k == v127)
      {
        TypeWithoutResults = mlir::FunctionOpInterface::getTypeWithoutResults(&v137, &__b);
        mlir::function_interface_impl::eraseFunctionResults(v137, v138, &__b, TypeWithoutResults);
        if (v81 != v42)
        {
          v132 = v81;
          do
          {
            v133 = *v132;
            __dst = v141;
            v140 = 0x600000000;
            v134 = v146;
            if (v146)
            {
              if (v146 >= 7uLL)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              memcpy(v141, __b, 8 * v146);
              LODWORD(v140) = v134;
            }

            v142 = v148;
            if (__dst != v141)
            {
              free(__dst);
            }

            v132 += 2;
          }

          while (v132 != v42);
        }

        if (__b != v147)
        {
          free(__b);
        }

        if (v81)
        {
          operator delete(v81);
        }

        if (v149 != &v151)
        {
          free(v149);
        }

        if (v153 != v155)
        {
          free(v153);
        }

        return;
      }

      if (k)
      {
        v129 = (k - 8);
      }

      else
      {
        v129 = 0;
      }

      v130 = mlir::Block::getTerminator(v129);
      if (v130)
      {
        if ((*(v130 + 46) & 0x80) != 0)
        {
          if (*(v130 + 68) == v79)
          {
            goto LABEL_186;
          }
        }

        else if (!v79)
        {
LABEL_186:
          mlir::detail::OperandStorage::eraseOperands(v130 + 64, &__b);
          continue;
        }
      }
    }
  }

  if (mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(a2) && a2)
  {
    v13 = mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    v14 = *(a1 + 8);
  }

  else
  {
    {
    }

    if (((*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0 && !mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(a2))
    {
      v16 = *(a1 + 8);
      if (mlir::isMemoryEffectFree(a2, v15))
      {
        v17 = *(a2 + 36);
        if (v17)
        {
          v18 = a2 - 16;
        }

        else
        {
          v18 = 0;
        }

        mlir::ValueRange::ValueRange(&__b, v18, v17);
        v19 = v146;
        v149 = __b;
        v150 = 0;
        if (v146)
        {
          v20 = 0;
          do
          {
            v21 = mlir::ValueRange::dereference_iterator(&v149, v20);
            if (v21)
            {
              Liveness = mlir::dataflow::RunLivenessAnalysis::getLiveness(v16, v21);
              if (!Liveness || (*(Liveness + 168) & 1) != 0)
              {
                return;
              }
            }

            v20 = v150 + 1;
            v150 = v20;
          }

          while (v20 != v19);
        }

        v120 = *(a2 + 36);
        if (v120)
        {
          v121 = a2 - 16;
        }

        else
        {
          v121 = 0;
        }

        if (v120)
        {
          for (m = 0; m != v120; ++m)
          {
            NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v121, m);
            while (1)
            {
              v124 = *NextResultAtOffset;
              if (!*NextResultAtOffset)
              {
                break;
              }

              v125 = v124[1];
              if (v125)
              {
                v126 = *v124;
                *v125 = *v124;
                if (v126)
                {
                  *(v126 + 8) = v125;
                }
              }

              *v124 = 0;
              v124[1] = 0;
              v124[3] = 0;
            }
          }
        }

        mlir::Operation::erase(a2);
      }
    }
  }
}

void anonymous namespace::cleanRegionBranchOp(mlir::Operation *a1, mlir::Operation *a2, uint64_t a3)
{
  v600[3] = *MEMORY[0x277D85DE8];
  v572[0] = a1;
  v572[1] = a2;
  v570 = v572;
  v571 = v572;
  v569[0] = &v571;
  v569[1] = &v570;
  if (!mlir::isMemoryEffectFree(a1, a2))
  {
    goto LABEL_11;
  }

  v4 = *(v572[0] + 9);
  if (v4)
  {
    v5 = v572[0] - 16;
  }

  else
  {
    v5 = 0;
  }

  mlir::ValueRange::ValueRange(&__dst, v5, v4);
  v6 = v582;
  __src = __dst;
  v590 = 0;
  if (v582)
  {
    v7 = 0;
    while (1)
    {
      v8 = mlir::ValueRange::dereference_iterator(&__src, v7);
      if (v8)
      {
        Liveness = mlir::dataflow::RunLivenessAnalysis::getLiveness(a3, v8);
        if (!Liveness || (*(Liveness + 168) & 1) != 0)
        {
          break;
        }
      }

      v7 = v590 + 1;
      v590 = v7;
      if (v7 == v6)
      {
        goto LABEL_55;
      }
    }

LABEL_11:
    __dst = v583;
    v582 = 0x600000000;
    v584 = 0;
    v566 = 0;
    v567 = 0;
    v568 = 0;
    v577 = &v579;
    v578 = 0x600000000;
    v580 = 0;
    v563 = 0;
    v564 = 0;
    v565 = 0;
    v10 = *(v572[0] + 9);
    if (v10)
    {
      v11 = v572[0] - 16;
    }

    else
    {
      v11 = 0;
    }

    mlir::ValueRange::ValueRange(&v594, v11, v10);
    v12 = __src;
    if (__src != v591)
    {
      if (__dst != v583)
      {
        free(__dst);
        v12 = __src;
      }

      __dst = v12;
      v582 = v590;
      __src = v591;
      v590 = 0;
      v584 = v592;
LABEL_19:
      v13 = v572[0];
      v14 = *(v572[0] + 11);
      if ((v14 & 0x7FFFFF) == 0)
      {
        goto LABEL_51;
      }

      v15 = (((v572[0] + 16 * ((v14 >> 23) & 1) + ((v14 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v572[0] + 10));
      v16 = &v15[3 * (v14 & 0x7FFFFF)];
      while (1)
      {
        v17 = v15[1];
        if (v17)
        {
          v18 = v17 - 8;
        }

        else
        {
          v18 = 0;
        }

        v20 = *(v18 + 48);
        v19 = *(v18 + 56);
        v594 = v596;
        v595 = 0x600000000;
        v21 = v19 - v20;
        if (((v19 - v20) >> 3) >= 7)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v19 != v20)
        {
          v22 = v596;
          v23 = v19 - v20 - 8;
          if (v23 < 0x18)
          {
            goto LABEL_904;
          }

          if ((v596 - v20) < 0x20)
          {
            goto LABEL_904;
          }

          v24 = (v23 >> 3) + 1;
          v25 = 8 * (v24 & 0x3FFFFFFFFFFFFFFCLL);
          v22 = &v596[v25];
          v26 = &v20[v25];
          v27 = (v20 + 16);
          v28 = &v597;
          v29 = v24 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v30 = *v27;
            *(v28 - 1) = *(v27 - 1);
            *v28 = v30;
            v27 += 2;
            v28 += 4;
            v29 -= 4;
          }

          while (v29);
          v20 = v26;
          if (v24 != (v24 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_904:
            do
            {
              v31 = *v20;
              v20 += 8;
              *v22 = v31;
              v22 += 8;
            }

            while (v20 != v19);
          }
        }

        LODWORD(v595) = v21 >> 3;
        mlir::ValueRange::ValueRange(&v585, v596, v595);
        v585 = v15;
        v32 = llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::BitVector,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::BitVector>>,mlir::Region *,llvm::BitVector,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::BitVector>>::operator[](&v566, &v585);
        v33 = v32;
        if (v32 == &__src)
        {
          goto LABEL_44;
        }

        v34 = v590;
        v35 = *(v32 + 8);
        if (v35 >= v590)
        {
          if (v590)
          {
            memmove(*v32, __src, 8 * v590);
          }

          goto LABEL_43;
        }

        if (*(v32 + 12) < v590)
        {
          *(v32 + 8) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (!v35)
        {
          break;
        }

        memmove(*v32, __src, 8 * v35);
        v36 = v590 - v35;
        if (v590 != v35)
        {
          goto LABEL_42;
        }

LABEL_43:
        *(v33 + 8) = v34;
LABEL_44:
        *(v33 + 64) = v592;
        if (__src != v591)
        {
          free(__src);
        }

        if (v594 != v596)
        {
          free(v594);
        }

        v15 += 3;
        if (v15 == v16)
        {
          v13 = v572[0];
          LODWORD(v14) = *(v572[0] + 11);
LABEL_51:
          if ((v14 & 0x800000) != 0)
          {
            v37 = *(v13 + 17);
            v38 = v580 & 0x3F;
            if ((v580 & 0x3F) != 0)
            {
              goto LABEL_53;
            }

LABEL_82:
            v39 = v578;
            v40 = v578;
            v580 = v37;
            v41 = (v37 + 63) >> 6;
            v42 = v578 > v41;
            if (v578 != v41)
            {
              goto LABEL_83;
            }
          }

          else
          {
            v37 = 0;
            v38 = v580 & 0x3F;
            if ((v580 & 0x3F) == 0)
            {
              goto LABEL_82;
            }

LABEL_53:
            v39 = v578;
            *(v577 + v578 - 1) |= -1 << v38;
            v40 = v39;
            v580 = v37;
            v41 = (v37 + 63) >> 6;
            v42 = v39 > v41;
            if (v39 != v41)
            {
LABEL_83:
              if (!v42)
              {
                if (HIDWORD(v578) < v41)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                if (v41 != v39)
                {
                  memset(v577 + 8 * v39, 255, 8 * (v41 - v39));
                }

                LODWORD(v41) = v41 - v39 + v40;
                LOBYTE(v37) = v580;
              }

              LODWORD(v578) = v41;
              v40 = v41;
            }
          }

          v54 = v37 & 0x3F;
          if (v54)
          {
            *(v577 + v40 - 1) &= ~(-1 << v54);
          }

          v55 = v571;
          if ((*(*v571 + 46) & 0x80) != 0)
          {
            v56 = *(*v571 + 17);
            __src = v591;
            HIDWORD(v590) = 6;
            if (v56 >= 7)
            {
              LODWORD(v590) = 0;
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            if (v56)
            {
              v57 = v571;
              bzero(v591, 8 * v56);
              v55 = v57;
            }
          }

          else
          {
            LODWORD(v56) = 0;
            __src = v591;
            HIDWORD(v590) = 6;
          }

          LODWORD(v590) = v56;
          v594 = v596;
          v595 = 0x200000000;
          mlir::RegionBranchOpInterface::getSuccessorRegions(v55, 0, &v594);
          if (__src != v591)
          {
            free(__src);
          }

          v58 = v594;
          if (v595)
          {
            v59 = &v594[24 * v595];
            do
            {
              EntrySuccessorOperands = mlir::RegionBranchOpInterface::getEntrySuccessorOperands(v570, *v58);
              __src = v591;
              v590 = 0x600000000;
              v62 = v61;
              if (v61)
              {
                LODWORD(v63) = 0;
                do
                {
                  if (v63 >= HIDWORD(v590))
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  *(__src + v63) = EntrySuccessorOperands;
                  v63 = (v590 + 1);
                  LODWORD(v590) = v590 + 1;
                  EntrySuccessorOperands += 32;
                  --v62;
                }

                while (v62);
                v64 = __src;
                if (v63)
                {
                  v65 = 8 * v63;
                  do
                  {
                    v66 = *v64++;
                    OperandNumber = mlir::OpOperand::getOperandNumber(v66);
                    *(v577 + (OperandNumber >> 6)) &= ~(1 << OperandNumber);
                    v65 -= 8;
                  }

                  while (v65);
                  v64 = __src;
                }

                if (v64 != v591)
                {
                  free(v64);
                }
              }

              v58 += 3;
            }

            while (v58 != v59);
            v58 = v594;
          }

          if (v58 != v596)
          {
            free(v58);
          }

          v68 = *(v572[0] + 11);
          if ((v68 & 0x7FFFFF) != 0)
          {
            v69 = ((v572[0] + 16 * ((v68 >> 23) & 1) + ((v68 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v572[0] + 10);
            v556 = v69 + 24 * (v68 & 0x7FFFFF);
            while (2)
            {
              v70 = *(v69 + 8);
              if (v70)
              {
                v71 = (v70 - 8);
              }

              else
              {
                v71 = 0;
              }

              Terminator = mlir::Block::getTerminator(v71);
              v573[0] = Terminator;
              if ((*(Terminator + 46) & 0x80) != 0)
              {
                v73 = *(Terminator + 68);
                v74 = (v73 + 63) >> 6;
                __src = v591;
                HIDWORD(v590) = 6;
                if ((v73 + 63) >= 0x1C0)
                {
                  LODWORD(v590) = 0;
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                if ((v73 + 63) >= 0x40)
                {
                  memset(v591, 255, 8 * v74);
                }

                LODWORD(v590) = (v73 + 63) >> 6;
                LODWORD(v592) = v73;
                if ((v73 & 0x3F) != 0)
                {
                  v591[v74 - 1] &= ~(-1 << (v73 & 0x3F));
                }
              }

              else
              {
                __src = v591;
                v590 = 0x600000000;
                LODWORD(v592) = 0;
              }

              v75 = llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::BitVector,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::BitVector>>,mlir::Region *,llvm::BitVector,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::BitVector>>::operator[](&v563, v573);
              v76 = v75;
              v77 = __src;
              if (v75 == &__src)
              {
                goto LABEL_144;
              }

              if (__src != v591)
              {
                v78 = *v75;
                if (*v76 != v76 + 16)
                {
                  free(v78);
                  v77 = __src;
                }

                *v76 = v77;
                *(v76 + 8) = v590;
                __src = v591;
                HIDWORD(v590) = 0;
LABEL_143:
                LODWORD(v590) = 0;
                v77 = __src;
LABEL_144:
                *(v76 + 64) = v592;
                if (v77 != v591)
                {
                  free(v77);
                }

                v82 = v571;
                if ((*(*v571 + 46) & 0x80) != 0)
                {
                  v83 = *(*v571 + 17);
                  __src = v591;
                  HIDWORD(v590) = 6;
                  if (v83 >= 7)
                  {
                    LODWORD(v590) = 0;
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  if (v83)
                  {
                    v84 = v571;
                    bzero(v591, 8 * v83);
                    v82 = v84;
                  }
                }

                else
                {
                  LODWORD(v83) = 0;
                  __src = v591;
                  HIDWORD(v590) = 6;
                }

                LODWORD(v590) = v83;
                v594 = v596;
                v595 = 0x200000000;
                mlir::RegionBranchOpInterface::getSuccessorRegions(v82, v69, &v594);
                if (__src != v591)
                {
                  free(__src);
                }

                v85 = v594;
                if (!v595)
                {
                  goto LABEL_224;
                }

                v559 = v69;
                v86 = &v594[24 * v595];
                do
                {
                  v87 = v573[0];
                  if (!v573[0])
                  {
                    v89 = mlir::RegionBranchOpInterface::getEntrySuccessorOperands(v570, *v85);
                    __src = v591;
                    v590 = 0x600000000;
                    v91 = v92;
                    if (!v92)
                    {
                      goto LABEL_155;
                    }

LABEL_162:
                    v93 = 0;
                    do
                    {
                      if (v93 >= HIDWORD(v590))
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      *(__src + v93) = v89;
                      v93 = v590 + 1;
                      LODWORD(v590) = v590 + 1;
                      v89 += 32;
                      --v91;
                    }

                    while (v91);
                    v94 = __src;
                    if (!v93)
                    {
LABEL_221:
                      if (v94 != v591)
                      {
                        free(v94);
                      }

                      goto LABEL_155;
                    }

                    v95 = __src + 8 * v93;
                    while (2)
                    {
                      v100 = *v94;
                      v101 = v563;
                      v102 = v565;
                      if (!v565)
                      {
LABEL_189:
                        v553 = *v94;
                        v108 = 2 * v565;
                        goto LABEL_191;
                      }

                      v96 = ((LODWORD(v573[0]) >> 4) ^ (LODWORD(v573[0]) >> 9)) & (v565 - 1);
                      v97 = v563 + 80 * v96;
                      v98 = *v97;
                      if (v573[0] == *v97)
                      {
LABEL_170:
                        v99 = mlir::OpOperand::getOperandNumber(v100);
                        *(*(v97 + 1) + 8 * (v99 >> 6)) &= ~(1 << v99);
                        if (++v94 == v95)
                        {
                          v94 = __src;
                          goto LABEL_221;
                        }

                        continue;
                      }

                      break;
                    }

                    v104 = 0;
                    v105 = 1;
                    while (v98 != -4096)
                    {
                      if (v104)
                      {
                        v106 = 0;
                      }

                      else
                      {
                        v106 = v98 == -8192;
                      }

                      if (v106)
                      {
                        v104 = v97;
                      }

                      v107 = v96 + v105++;
                      v96 = v107 & (v565 - 1);
                      v97 = v563 + 80 * v96;
                      v98 = *v97;
                      if (v573[0] == *v97)
                      {
                        goto LABEL_170;
                      }
                    }

                    if (v104)
                    {
                      v97 = v104;
                    }

                    if (4 * v564 + 4 >= 3 * v565)
                    {
                      goto LABEL_189;
                    }

                    if (v565 + ~v564 - HIDWORD(v564) <= v565 >> 3)
                    {
                      v553 = *v94;
                      v108 = v565;
LABEL_191:
                      v109 = (v108 - 1) | ((v108 - 1) >> 1);
                      v110 = v109 | (v109 >> 2) | ((v109 | (v109 >> 2)) >> 4);
                      v111 = ((v110 | (v110 >> 8)) >> 16) | v110 | (v110 >> 8);
                      if ((v111 + 1) > 0x40)
                      {
                        v112 = v111 + 1;
                      }

                      else
                      {
                        v112 = 64;
                      }

                      v565 = v112;
                      buffer = llvm::allocate_buffer(80 * v112, 8uLL);
                      v563 = buffer;
                      if (v101)
                      {
                        llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::BitVector,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::BitVector>>,mlir::Region *,llvm::BitVector,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::BitVector>>::moveFromOldBuckets(&v563, v101, &v101[10 * v102]);
                        llvm::deallocate_buffer(v101, (80 * v102));
                      }

                      v564 = 0;
                      v114 = v565;
                      if (v565)
                      {
                        v115 = buffer;
                        v116 = 80 * v565 - 80;
                        v117 = buffer;
                        v100 = v553;
                        if (v116 < 0x50)
                        {
                          goto LABEL_905;
                        }

                        v118 = v116 / 0x50 + 1;
                        v117 = (v115 + 80 * (v118 & 0x7FFFFFFFFFFFFFELL));
                        v119 = v115;
                        v120 = v118 & 0x7FFFFFFFFFFFFFELL;
                        do
                        {
                          *v119 = -4096;
                          *(v119 + 10) = -4096;
                          v119 = (v119 + 160);
                          v120 -= 2;
                        }

                        while (v120);
                        if (v118 != (v118 & 0x7FFFFFFFFFFFFFELL))
                        {
LABEL_905:
                          do
                          {
                            *v117 = -4096;
                            v117 = (v117 + 80);
                          }

                          while (v117 != (v115 + 80 * v114));
                        }

                        if (v114)
                        {
                          v121 = v114 - 1;
                          v122 = ((LODWORD(v573[0]) >> 4) ^ (LODWORD(v573[0]) >> 9)) & v121;
                          v97 = v115 + 80 * v122;
                          v123 = *v97;
                          if (v573[0] != *v97)
                          {
                            v124 = 0;
                            v125 = 1;
                            while (v123 != -4096)
                            {
                              if (v124)
                              {
                                v126 = 0;
                              }

                              else
                              {
                                v126 = v123 == -8192;
                              }

                              if (v126)
                              {
                                v124 = v97;
                              }

                              v127 = v122 + v125++;
                              v122 = v127 & v121;
                              v97 = v115 + 80 * v122;
                              v123 = *v97;
                              if (v573[0] == *v97)
                              {
                                goto LABEL_215;
                              }
                            }

                            if (v124)
                            {
                              v97 = v124;
                            }
                          }
                        }

                        else
                        {
                          v97 = 0;
                        }
                      }

                      else
                      {
                        v97 = 0;
                        v100 = v553;
                      }

LABEL_215:
                      LODWORD(v564) = v564 + 1;
                      if (*v97 != -4096)
                      {
LABEL_175:
                        --HIDWORD(v564);
                      }
                    }

                    else
                    {
                      LODWORD(v564) = v564 + 1;
                      if (*v97 != -4096)
                      {
                        goto LABEL_175;
                      }
                    }

                    v103 = v573[0];
                    *(v97 + 40) = 0u;
                    *(v97 + 56) = 0u;
                    *(v97 + 9) = 0;
                    *(v97 + 24) = 0u;
                    *v97 = v103;
                    *(v97 + 1) = v97 + 24;
                    *(v97 + 2) = 0x600000000;
                    goto LABEL_170;
                  }

                  InterfaceFor = mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor(v573[0]);
                  v598[0] = v87;
                  v598[1] = InterfaceFor;
                  mlir::RegionBranchTerminatorOpInterface::getMutableSuccessorOperands(v598, *v85);
                  v89 = mlir::MutableOperandRange::operator mlir::OperandRange(&v585);
                  LODWORD(v91) = v90;
                  if (v587[0] != &v588)
                  {
                    free(v587[0]);
                  }

                  __src = v591;
                  v590 = 0x600000000;
                  v91 = v91;
                  if (v91)
                  {
                    goto LABEL_162;
                  }

LABEL_155:
                  v85 += 3;
                }

                while (v85 != v86);
                v85 = v594;
                v69 = v559;
LABEL_224:
                if (v85 != v596)
                {
                  free(v85);
                }

                v69 += 24;
                if (v69 == v556)
                {
                  goto LABEL_232;
                }

                continue;
              }

              break;
            }

            v79 = v590;
            v80 = *(v75 + 8);
            if (v80 >= v590)
            {
              if (v590)
              {
                memmove(*v75, __src, 8 * v590);
              }
            }

            else
            {
              if (*(v75 + 12) < v590)
              {
                *(v75 + 8) = 0;
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              if (v80)
              {
                memmove(*v75, __src, 8 * v80);
                v81 = v590 - v80;
                if (v590 != v80)
                {
                  goto LABEL_141;
                }
              }

              else
              {
                v80 = 0;
                v81 = v590;
                if (v590)
                {
LABEL_141:
                  memcpy((*v76 + 8 * v80), __src + 8 * v80, 8 * v81);
                }
              }
            }

            *(v76 + 8) = v79;
            goto LABEL_143;
          }

LABEL_232:
          while (1)
          {
            v128 = *(v572[0] + 11);
            if ((v128 & 0x7FFFFF) != 0)
            {
              break;
            }

LABEL_288:
            v165 = v571;
            if ((*(*v571 + 46) & 0x80) != 0)
            {
              v166 = *(*v571 + 17);
              __src = v591;
              HIDWORD(v590) = 6;
              if (v166 >= 7)
              {
                LODWORD(v590) = 0;
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              if (v166)
              {
                v167 = v571;
                bzero(v591, 8 * v166);
                v165 = v167;
              }
            }

            else
            {
              LODWORD(v166) = 0;
              __src = v591;
              HIDWORD(v590) = 6;
            }

            LODWORD(v590) = v166;
            v594 = v596;
            v595 = 0x200000000;
            mlir::RegionBranchOpInterface::getSuccessorRegions(v165, 0, &v594);
            if (__src != v591)
            {
              free(__src);
            }

            v168 = v594;
            if (v595)
            {
              v562 = 0;
              v554 = &v594[24 * v595];
              while (1)
              {
                v169 = *v168;
                v170 = mlir::RegionBranchOpInterface::getEntrySuccessorOperands(v570, *v168);
                v585 = v587;
                v586 = 0x600000000;
                v172 = v171;
                v557 = v168;
                v173 = 0;
                if (v171)
                {
                  do
                  {
                    if (v173 >= HIDWORD(v586))
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    *(v585 + v173) = v170;
                    v173 = v586 + 1;
                    LODWORD(v586) = v586 + 1;
                    v170 += 32;
                    --v172;
                  }

                  while (v172);
                  v174 = v585;
                  v175 = v168[1];
                  v176 = v168[2];
                  __src = v591;
                  v590 = 0x600000000;
                  if (v173)
                  {
                    if (v585 == v587)
                    {
                      if (v173 >= 7)
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      memcpy(v591, v585, 8 * v173);
                      v174 = v585;
                      LODWORD(v590) = v173;
                    }

                    else
                    {
                      __src = v585;
                      v590 = __PAIR64__(HIDWORD(v586), v173);
                      v585 = v587;
                      HIDWORD(v586) = 0;
                      v174 = v587;
                    }

                    LODWORD(v586) = 0;
                  }

                  v592 = v175;
                  v593 = v176;
                  if (v174 != v587)
                  {
                    free(v174);
                    v173 = v590;
                    v175 = v592;
                    v176 = v593;
                  }
                }

                else
                {
                  v175 = v168[1];
                  v176 = v168[2];
                  __src = v591;
                  v590 = 0x600000000;
                  v592 = v175;
                  v593 = v176;
                }

                v177 = __src;
                v585 = __src;
                v586 = v175;
                v587[0] = 0;
                if (v173)
                {
                  if (v176)
                  {
                    break;
                  }
                }

LABEL_493:
                if (v177 != v591)
                {
                  free(v177);
                }

                v168 = v557 + 3;
                if (v557 + 3 == v554)
                {
                  v168 = v594;
                  if (v594 != v596)
                  {
                    goto LABEL_496;
                  }

                  goto LABEL_497;
                }
              }

              v178 = 0;
              v560 = (__src + 8 * v173);
              v179 = (v169 >> 4) ^ (v169 >> 9);
              while (2)
              {
                v180 = mlir::ValueRange::dereference_iterator(&v586, v178);
                v181 = mlir::OpOperand::getOperandNumber(*v177);
                v182 = v181;
                v183 = *(v577 + (v181 >> 6));
                if (v169)
                {
                  v184 = v566;
                  v185 = v568;
                  if (!v568)
                  {
                    goto LABEL_395;
                  }

                  v186 = v568 - 1;
                  v187 = (v568 - 1) & v179;
                  v188 = v566 + 80 * v187;
                  v189 = *v188;
                  if (v169 != *v188)
                  {
                    v190 = 0;
                    v191 = 1;
                    while (v189 != -4096)
                    {
                      if (v190)
                      {
                        v192 = 0;
                      }

                      else
                      {
                        v192 = v189 == -8192;
                      }

                      if (v192)
                      {
                        v190 = v188;
                      }

                      v193 = v187 + v191++;
                      v187 = v193 & v186;
                      v188 = v566 + 80 * (v193 & v186);
                      v189 = *v188;
                      if (v169 == *v188)
                      {
                        goto LABEL_336;
                      }
                    }

                    if (v190)
                    {
                      v188 = v190;
                    }

                    if (4 * v567 + 4 >= 3 * v568)
                    {
LABEL_395:
                      v236 = 2 * v568;
                      goto LABEL_415;
                    }

                    if (v568 + ~v567 - HIDWORD(v567) <= v568 >> 3)
                    {
                      v236 = v568;
LABEL_415:
                      v247 = (v236 - 1) | ((v236 - 1) >> 1);
                      v248 = v247 | (v247 >> 2) | ((v247 | (v247 >> 2)) >> 4);
                      v249 = ((v248 | (v248 >> 8)) >> 16) | v248 | (v248 >> 8);
                      if ((v249 + 1) > 0x40)
                      {
                        v250 = v249 + 1;
                      }

                      else
                      {
                        v250 = 64;
                      }

                      v568 = v250;
                      v251 = llvm::allocate_buffer(80 * v250, 8uLL);
                      v566 = v251;
                      if (v184)
                      {
                        v252 = 10 * v185;
                        llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::BitVector,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::BitVector>>,mlir::Region *,llvm::BitVector,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::BitVector>>::moveFromOldBuckets(&v566, v184, &v184[v252]);
                        llvm::deallocate_buffer(v184, (v252 * 8));
                      }

                      v567 = 0;
                      v278 = v568;
                      if (v568)
                      {
                        v279 = 80 * v568 - 80;
                        v280 = v251;
                        if (v279 < 0x50)
                        {
                          goto LABEL_906;
                        }

                        v281 = v279 / 0x50 + 1;
                        v280 = (v251 + 80 * (v281 & 0x7FFFFFFFFFFFFFELL));
                        v282 = v251;
                        v283 = v281 & 0x7FFFFFFFFFFFFFELL;
                        do
                        {
                          *v282 = -4096;
                          *(v282 + 10) = -4096;
                          v282 = (v282 + 160);
                          v283 -= 2;
                        }

                        while (v283);
                        if (v281 != (v281 & 0x7FFFFFFFFFFFFFELL))
                        {
LABEL_906:
                          do
                          {
                            *v280 = -4096;
                            v280 = (v280 + 80);
                          }

                          while (v280 != (v251 + 80 * v278));
                        }

                        if (v278)
                        {
                          v284 = v278 - 1;
                          v285 = (v278 - 1) & v179;
                          v188 = v251 + 80 * v285;
                          v286 = *v188;
                          if (v169 != *v188)
                          {
                            v287 = 0;
                            v288 = 1;
                            while (v286 != -4096)
                            {
                              if (v287)
                              {
                                v289 = 0;
                              }

                              else
                              {
                                v289 = v286 == -8192;
                              }

                              if (v289)
                              {
                                v287 = v188;
                              }

                              v290 = v285 + v288++;
                              v285 = v290 & v284;
                              v188 = v251 + 80 * (v290 & v284);
                              v286 = *v188;
                              if (v169 == *v188)
                              {
                                goto LABEL_481;
                              }
                            }

                            if (v287)
                            {
                              v188 = v287;
                            }
                          }
                        }

                        else
                        {
                          v188 = 0;
                        }
                      }

                      else
                      {
                        v188 = 0;
                      }

LABEL_481:
                      LODWORD(v567) = v567 + 1;
                      if (*v188 != -4096)
                      {
LABEL_334:
                        --HIDWORD(v567);
                      }
                    }

                    else
                    {
                      LODWORD(v567) = v567 + 1;
                      if (*v188 != -4096)
                      {
                        goto LABEL_334;
                      }
                    }

                    *(v188 + 40) = 0u;
                    *(v188 + 56) = 0u;
                    *(v188 + 9) = 0;
                    *(v188 + 24) = 0u;
                    *v188 = v169;
                    *(v188 + 1) = v188 + 24;
                    *(v188 + 2) = 0x600000000;
                  }

LABEL_336:
                  p_dst = (v188 + 8);
                  v194 = *(v180 + 24);
                  v196 = v194 >> 6;
                }

                else
                {
                  v194 = *(v180 + 8);
                  if (v180 && (*(v180 + 8) & 7) == 6)
                  {
                    LODWORD(v194) = *(v180 + 16) + 6;
                  }

                  else
                  {
                    LODWORD(v194) = v194 & 7;
                  }

                  v196 = v194 >> 6;
                  p_dst = &__dst;
                }

                v197 = (1 << v182) & v183;
                v198 = (*(*p_dst + v196) >> v194) & 1;
                if (v197)
                {
                  v199 = v198 == 0;
                }

                else
                {
                  v199 = 0;
                }

                v200 = v562;
                if (v199)
                {
                  v200 = 1;
                }

                v562 = v200;
                if (v169)
                {
                  v201 = v566;
                  v202 = v568;
                  if (!v568)
                  {
                    goto LABEL_399;
                  }

                  v203 = v568 - 1;
                  v204 = (v568 - 1) & v179;
                  v205 = v566 + 80 * v204;
                  v206 = *v205;
                  if (v169 != *v205)
                  {
                    v207 = 0;
                    v208 = 1;
                    while (v206 != -4096)
                    {
                      if (v207)
                      {
                        v209 = 0;
                      }

                      else
                      {
                        v209 = v206 == -8192;
                      }

                      if (v209)
                      {
                        v207 = v205;
                      }

                      v210 = v204 + v208++;
                      v204 = v210 & v203;
                      v205 = v566 + 80 * (v210 & v203);
                      v206 = *v205;
                      if (v169 == *v205)
                      {
                        goto LABEL_364;
                      }
                    }

                    if (v207)
                    {
                      v205 = v207;
                    }

                    if (4 * v567 + 4 >= 3 * v568)
                    {
LABEL_399:
                      v213 = 2 * v568;
LABEL_400:
                      v237 = (v213 - 1) | ((v213 - 1) >> 1);
                      v238 = v237 | (v237 >> 2) | ((v237 | (v237 >> 2)) >> 4);
                      v239 = ((v238 | (v238 >> 8)) >> 16) | v238 | (v238 >> 8);
                      if ((v239 + 1) > 0x40)
                      {
                        v240 = v239 + 1;
                      }

                      else
                      {
                        v240 = 64;
                      }

                      v568 = v240;
                      v241 = llvm::allocate_buffer(80 * v240, 8uLL);
                      v566 = v241;
                      if (v201)
                      {
                        llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::BitVector,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::BitVector>>,mlir::Region *,llvm::BitVector,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::BitVector>>::moveFromOldBuckets(&v566, v201, &v201[10 * v202]);
                        llvm::deallocate_buffer(v201, (80 * v202));
                      }

                      v567 = 0;
                      LODWORD(v202) = v568;
                      if (v568)
                      {
                        v253 = 80 * v568 - 80;
                        v254 = v241;
                        if (v253 < 0x50)
                        {
                          goto LABEL_907;
                        }

                        v255 = v253 / 0x50 + 1;
                        v254 = (v241 + 80 * (v255 & 0x7FFFFFFFFFFFFFELL));
                        v256 = v241;
                        v257 = v255 & 0x7FFFFFFFFFFFFFELL;
                        do
                        {
                          *v256 = -4096;
                          *(v256 + 10) = -4096;
                          v256 = (v256 + 160);
                          v257 -= 2;
                        }

                        while (v257);
                        if (v255 != (v255 & 0x7FFFFFFFFFFFFFELL))
                        {
LABEL_907:
                          do
                          {
                            *v254 = -4096;
                            v254 = (v254 + 80);
                          }

                          while (v254 != (v241 + 80 * v202));
                        }

                        if (v202)
                        {
                          v258 = v202 - 1;
                          v259 = (v202 - 1) & v179;
                          v205 = v241 + 80 * v259;
                          v260 = *v205;
                          if (v169 != *v205)
                          {
                            v261 = 0;
                            v262 = 1;
                            while (v260 != -4096)
                            {
                              if (v261)
                              {
                                v263 = 0;
                              }

                              else
                              {
                                v263 = v260 == -8192;
                              }

                              if (v263)
                              {
                                v261 = v205;
                              }

                              v264 = v259 + v262++;
                              v259 = v264 & v258;
                              v205 = v241 + 80 * (v264 & v258);
                              v260 = *v205;
                              if (v169 == *v205)
                              {
                                goto LABEL_475;
                              }
                            }

                            if (v261)
                            {
                              v205 = v261;
                            }
                          }
                        }

                        else
                        {
                          v205 = 0;
                        }
                      }

                      else
                      {
                        v205 = 0;
                      }

LABEL_475:
                      v201 = v241;
                      LODWORD(v567) = v567 + 1;
                      if (*v205 == -4096)
                      {
                        goto LABEL_363;
                      }

LABEL_362:
                      --HIDWORD(v567);
                      goto LABEL_363;
                    }

                    v213 = v568;
                    if (v568 + ~v567 - HIDWORD(v567) <= v568 >> 3)
                    {
                      goto LABEL_400;
                    }

                    LODWORD(v567) = v567 + 1;
                    if (*v205 != -4096)
                    {
                      goto LABEL_362;
                    }

LABEL_363:
                    *(v205 + 40) = 0u;
                    *(v205 + 56) = 0u;
                    *(v205 + 9) = 0;
                    *(v205 + 24) = 0u;
                    *v205 = v169;
                    *(v205 + 1) = v205 + 24;
                    *(v205 + 2) = 0x600000000;
                  }

LABEL_364:
                  v214 = *(v180 + 24);
                  v215 = v214 >> 6;
                  v216 = *(*(v205 + 1) + 8 * v215);
                  v217 = 1 << v214;
                  if (!v202)
                  {
                    goto LABEL_408;
                  }

                  v218 = v202 - 1;
                  v219 = (v202 - 1) & v179;
                  v220 = &v201[10 * v219];
                  v221 = *v220;
                  if (v169 == *v220)
                  {
LABEL_366:
                    v222 = v217;
                    v223 = v220[1];
                    if (v217 & v216 | v197)
                    {
                      goto LABEL_367;
                    }

LABEL_373:
                    v224 = *(v223 + 8 * v215) & ~v222;
                    goto LABEL_374;
                  }

                  v232 = 0;
                  v233 = 1;
                  while (v221 != -4096)
                  {
                    if (v232)
                    {
                      v234 = 0;
                    }

                    else
                    {
                      v234 = v221 == -8192;
                    }

                    if (v234)
                    {
                      v232 = v220;
                    }

                    v235 = v219 + v233++;
                    v219 = v235 & v218;
                    v220 = &v201[10 * (v235 & v218)];
                    v221 = *v220;
                    if (v169 == *v220)
                    {
                      goto LABEL_366;
                    }
                  }

                  if (v232)
                  {
                    v220 = v232;
                  }

                  if (4 * v567 + 4 >= (3 * v202))
                  {
LABEL_408:
                    v225 = 2 * v202;
LABEL_409:
                    v242 = (v225 - 1) | ((v225 - 1) >> 1);
                    v243 = v242 | (v242 >> 2) | ((v242 | (v242 >> 2)) >> 4);
                    v244 = ((v243 | (v243 >> 8)) >> 16) | v243 | (v243 >> 8);
                    if ((v244 + 1) > 0x40)
                    {
                      v245 = v244 + 1;
                    }

                    else
                    {
                      v245 = 64;
                    }

                    v568 = v245;
                    v246 = llvm::allocate_buffer(80 * v245, 8uLL);
                    v566 = v246;
                    if (v201)
                    {
                      llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::BitVector,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::BitVector>>,mlir::Region *,llvm::BitVector,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::BitVector>>::moveFromOldBuckets(&v566, v201, &v201[10 * v202]);
                      llvm::deallocate_buffer(v201, (80 * v202));
                    }

                    v567 = 0;
                    v265 = v568;
                    if (v568)
                    {
                      v266 = 80 * v568 - 80;
                      v267 = v246;
                      if (v266 < 0x50)
                      {
                        goto LABEL_908;
                      }

                      v268 = v266 / 0x50 + 1;
                      v267 = (v246 + 80 * (v268 & 0x7FFFFFFFFFFFFFELL));
                      v269 = v246;
                      v270 = v268 & 0x7FFFFFFFFFFFFFELL;
                      do
                      {
                        *v269 = -4096;
                        *(v269 + 10) = -4096;
                        v269 = (v269 + 160);
                        v270 -= 2;
                      }

                      while (v270);
                      if (v268 != (v268 & 0x7FFFFFFFFFFFFFELL))
                      {
LABEL_908:
                        do
                        {
                          *v267 = -4096;
                          v267 = (v267 + 80);
                        }

                        while (v267 != (v246 + 80 * v265));
                      }

                      if (v265)
                      {
                        v271 = v265 - 1;
                        v272 = (v265 - 1) & v179;
                        v220 = (v246 + 80 * v272);
                        v273 = *v220;
                        if (v169 != *v220)
                        {
                          v274 = 0;
                          v275 = 1;
                          while (v273 != -4096)
                          {
                            if (v274)
                            {
                              v276 = 0;
                            }

                            else
                            {
                              v276 = v273 == -8192;
                            }

                            if (v276)
                            {
                              v274 = v220;
                            }

                            v277 = v272 + v275++;
                            v272 = v277 & v271;
                            v220 = (v246 + 80 * (v277 & v271));
                            v273 = *v220;
                            if (v169 == *v220)
                            {
                              goto LABEL_478;
                            }
                          }

                          if (v274)
                          {
                            v220 = v274;
                          }
                        }
                      }

                      else
                      {
                        v220 = 0;
                      }
                    }

                    else
                    {
                      v220 = 0;
                    }

LABEL_478:
                    LODWORD(v567) = v567 + 1;
                    if (*v220 == -4096)
                    {
                      goto LABEL_372;
                    }

LABEL_371:
                    --HIDWORD(v567);
                    goto LABEL_372;
                  }

                  v225 = v202;
                  if (v202 + ~v567 - HIDWORD(v567) <= v202 >> 3)
                  {
                    goto LABEL_409;
                  }

                  LODWORD(v567) = v567 + 1;
                  if (*v220 != -4096)
                  {
                    goto LABEL_371;
                  }

LABEL_372:
                  *(v220 + 5) = 0u;
                  *(v220 + 7) = 0u;
                  v220[9] = 0;
                  *(v220 + 3) = 0u;
                  *v220 = v169;
                  v220[1] = (v220 + 3);
                  v220[2] = 0x600000000;
                  v226 = *(v180 + 24);
                  v215 = v226 >> 6;
                  v222 = 1 << v226;
                  v223 = v220[1];
                  if (!(v217 & v216 | v197))
                  {
                    goto LABEL_373;
                  }

LABEL_367:
                  v224 = *(v223 + 8 * v215) | v222;
LABEL_374:
                  *(v223 + 8 * v215) = v224;
                }

                else
                {
                  v211 = *(v180 + 8);
                  if ((v211 & 7) == 6)
                  {
                    v212 = *(v180 + 16) + 6;
                  }

                  else
                  {
                    v212 = v211 & 7;
                  }

                  v227 = v212;
                  v228 = (1 << v212) & *(__dst + (v212 >> 6));
                  v229 = v212 >> 6;
                  v230 = 1 << v227;
                  if (v228 | v197)
                  {
                    v231 = *(__dst + v229) | v230;
                  }

                  else
                  {
                    v231 = *(__dst + v229) & ~v230;
                  }

                  *(__dst + v229) = v231;
                }

                v177 = (v585 + 8);
                v178 = v587[0] + 1;
                v585 = v177;
                ++v587[0];
                if (v177 == v560 || v178 == v176)
                {
                  v177 = __src;
                  goto LABEL_493;
                }

                continue;
              }
            }

            v562 = 0;
            if (v594 != v596)
            {
LABEL_496:
              free(v168);
            }

LABEL_497:
            v291 = v572[0];
            v292 = *(v572[0] + 11);
            v293 = v292 & 0x7FFFFF;
            if ((v292 & 0x7FFFFF) != 0)
            {
              v294 = ((v572[0] + 16 * ((v292 >> 23) & 1) + ((v292 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v572[0] + 10);
              v551 = (v294 + 24 * v293);
              while (1)
              {
                v561 = v294;
                v295 = *(v294 + 8);
                v296 = v295 ? (v295 - 8) : 0;
                v297 = mlir::Block::getTerminator(v296);
                v298 = v571;
                if ((*(*v571 + 46) & 0x80) != 0)
                {
                  v299 = *(*v571 + 17);
                  __src = v591;
                  HIDWORD(v590) = 6;
                  if (v299 >= 7)
                  {
                    LODWORD(v590) = 0;
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  if (v299)
                  {
                    v300 = v571;
                    bzero(v591, 8 * v299);
                    v298 = v300;
                  }
                }

                else
                {
                  LODWORD(v299) = 0;
                  __src = v591;
                  HIDWORD(v590) = 6;
                }

                LODWORD(v590) = v299;
                v594 = v596;
                v595 = 0x200000000;
                mlir::RegionBranchOpInterface::getSuccessorRegions(v298, v561, &v594);
                if (__src != v591)
                {
                  free(__src);
                }

                v301 = v594;
                if (v595)
                {
                  break;
                }

LABEL_767:
                if (v301 != v596)
                {
                  free(v301);
                }

                v294 = (v561 + 3);
                if (v561 + 3 == v551)
                {
                  if (v562)
                  {
                    goto LABEL_232;
                  }

                  v291 = v572[0];
LABEL_776:
                  v459 = v577 + 8 * v578;
                  if (v578)
                  {
                    v460 = (v578 - 1) & 0x1FFFFFFFFFFFFFFFLL;
                    v461 = v577;
                    if (v460 <= 2)
                    {
                      goto LABEL_909;
                    }

                    v462 = v460 + 1;
                    v461 = v577 + 8 * (v462 & 0x3FFFFFFFFFFFFFFCLL);
                    v463 = (v577 + 16);
                    v464 = v462 & 0x3FFFFFFFFFFFFFFCLL;
                    do
                    {
                      v465 = vmvnq_s8(*v463);
                      v463[-1] = vmvnq_s8(v463[-1]);
                      *v463 = v465;
                      v463 += 2;
                      v464 -= 4;
                    }

                    while (v464);
                    if (v462 != (v462 & 0x3FFFFFFFFFFFFFFCLL))
                    {
LABEL_909:
                      do
                      {
                        *v461 = ~*v461;
                        v461 += 8;
                      }

                      while (v461 != v459);
                    }
                  }

                  if ((v580 & 0x3F) != 0)
                  {
                    *(v459 - 1) &= ~(-1 << (v580 & 0x3F));
                  }

                  mlir::detail::OperandStorage::eraseOperands(v291 + 64, &v577);
                  v466 = v572[0];
                  v467 = *(v572[0] + 11);
                  if ((v467 & 0x7FFFFF) == 0)
                  {
LABEL_878:
                    v538 = __dst;
                    v539 = v582;
                    v540 = __dst + 8 * v582;
                    if (v582)
                    {
                      v541 = (v582 - 1) & 0x1FFFFFFFFFFFFFFFLL;
                      v542 = __dst;
                      if (v541 <= 2)
                      {
                        goto LABEL_910;
                      }

                      v543 = v541 + 1;
                      v542 = __dst + 8 * (v543 & 0x3FFFFFFFFFFFFFFCLL);
                      v544 = (__dst + 16);
                      v545 = v543 & 0x3FFFFFFFFFFFFFFCLL;
                      do
                      {
                        v546 = vmvnq_s8(*v544);
                        v544[-1] = vmvnq_s8(v544[-1]);
                        *v544 = v546;
                        v544 += 2;
                        v545 -= 4;
                      }

                      while (v545);
                      if (v543 != (v543 & 0x3FFFFFFFFFFFFFFCLL))
                      {
LABEL_910:
                        do
                        {
                          *v542 = ~*v542;
                          v542 += 8;
                        }

                        while (v542 != v540);
                      }
                    }

                    v547 = v584;
                    if ((v584 & 0x3F) != 0)
                    {
                      *(v540 - 1) &= ~(-1 << (v584 & 0x3F));
                    }

                    v574 = v576;
                    v575 = 0x600000000;
                    if (v539)
                    {
                      if (v539 >= 7)
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      memcpy(v576, v538, 8 * v539);
                      LODWORD(v575) = v539;
                      v547 = v584;
                    }

                    v576[12] = v547;
                    if (v574 != v576)
                    {
                      free(v574);
                    }

                    if (v565)
                    {
                      v548 = v563 + 24;
                      v549 = 80 * v565;
                      while (1)
                      {
                        if ((*(v548 - 3) | 0x1000) != 0xFFFFFFFFFFFFF000)
                        {
                          v550 = *(v548 - 2);
                          if (v548 != v550)
                          {
                            free(v550);
                          }
                        }

                        v548 += 80;
                        v549 -= 80;
                        if (!v549)
                        {
                          llvm::deallocate_buffer(v563, (80 * v565));
                        }
                      }
                    }

                    llvm::deallocate_buffer(v563, 0);
                  }

                  v468 = (((v572[0] + 16 * ((v467 >> 23) & 1) + ((v467 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v572[0] + 10));
                  v469 = &v468[3 * (v467 & 0x7FFFFF)];
                  v470 = 0uLL;
                  while (1)
                  {
                    v471 = v468[1];
                    v472 = v471 - 8;
                    if (!v471)
                    {
                      v472 = 0;
                    }

                    v474 = *(v472 + 48);
                    v473 = *(v472 + 56);
                    if (v474 != v473)
                    {
                      break;
                    }

LABEL_852:
                    if (v471)
                    {
                      v511 = (v471 - 8);
                    }

                    else
                    {
                      v511 = 0;
                    }

                    __src = v468;
                    v512 = llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::BitVector,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::BitVector>>,mlir::Region *,llvm::BitVector,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::BitVector>>::operator[](&v566, &__src);
                    v513 = *v512;
                    v514 = v512[2];
                    v515 = *v512 + 8 * v514;
                    if (v514)
                    {
                      v516 = (v514 - 1) & 0x1FFFFFFFFFFFFFFFLL;
                      v517 = *v512;
                      if (v516 <= 2)
                      {
                        goto LABEL_911;
                      }

                      v518 = v516 + 1;
                      v517 = (v513 + 8 * (v518 & 0x3FFFFFFFFFFFFFFCLL));
                      v519 = v513 + 1;
                      v520 = v518 & 0x3FFFFFFFFFFFFFFCLL;
                      do
                      {
                        v521 = vmvnq_s8(*v519);
                        v519[-1] = vmvnq_s8(v519[-1]);
                        *v519 = v521;
                        v519 += 2;
                        v520 -= 4;
                      }

                      while (v520);
                      if (v518 != (v518 & 0x3FFFFFFFFFFFFFFCLL))
                      {
LABEL_911:
                        do
                        {
                          v517->i64[0] = ~v517->i64[0];
                          v517 = (v517 + 8);
                        }

                        while (v517 != v515);
                      }
                    }

                    if ((v512[16] & 0x3F) != 0)
                    {
                      *(v515 - 8) &= ~(-1 << (v512[16] & 0x3F));
                    }

                    mlir::Block::eraseArguments(v511, v512);
                    v468 += 3;
                    v470 = 0uLL;
                    if (v468 == v469)
                    {
                      v466 = v572[0];
                      v522 = *(v572[0] + 11);
                      if ((v522 & 0x7FFFFF) != 0)
                      {
                        v523 = ((v572[0] + 16 * ((v522 >> 23) & 1) + ((v522 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v572[0] + 10);
                        v524 = v523 + 24 * (v522 & 0x7FFFFF);
                        do
                        {
                          v525 = *(v523 + 8);
                          if (v525)
                          {
                            v526 = (v525 - 8);
                          }

                          else
                          {
                            v526 = 0;
                          }

                          v527 = mlir::Block::getTerminator(v526);
                          __src = v527;
                          v528 = llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::BitVector,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::BitVector>>,mlir::Region *,llvm::BitVector,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::BitVector>>::operator[](&v563, &__src);
                          v529 = *v528;
                          v530 = v528[2];
                          v531 = *v528 + 8 * v530;
                          if (v530)
                          {
                            v532 = (v530 - 1) & 0x1FFFFFFFFFFFFFFFLL;
                            v533 = *v528;
                            if (v532 <= 2)
                            {
                              goto LABEL_912;
                            }

                            v534 = v532 + 1;
                            v533 = (v529 + 8 * (v534 & 0x3FFFFFFFFFFFFFFCLL));
                            v535 = v529 + 1;
                            v536 = v534 & 0x3FFFFFFFFFFFFFFCLL;
                            do
                            {
                              v537 = vmvnq_s8(*v535);
                              v535[-1] = vmvnq_s8(v535[-1]);
                              *v535 = v537;
                              v535 += 2;
                              v536 -= 4;
                            }

                            while (v536);
                            if (v534 != (v534 & 0x3FFFFFFFFFFFFFFCLL))
                            {
LABEL_912:
                              do
                              {
                                v533->i64[0] = ~v533->i64[0];
                                v533 = (v533 + 8);
                              }

                              while (v533 != v531);
                            }
                          }

                          if ((v528[16] & 0x3F) != 0)
                          {
                            *(v531 - 8) &= ~(-1 << (v528[16] & 0x3F));
                          }

                          mlir::detail::OperandStorage::eraseOperands(v527 + 64, v528);
                          v523 += 24;
                        }

                        while (v523 != v524);
                        v466 = v572[0];
                      }

                      goto LABEL_878;
                    }
                  }

                  v475 = 0;
                  v476 = (v468 >> 4) ^ (v468 >> 9);
                  while (2)
                  {
                    v477 = v566;
                    v478 = v568;
                    if (!v568)
                    {
LABEL_819:
                      v491 = 2 * v568;
                      goto LABEL_821;
                    }

                    v479 = v568 - 1;
                    v480 = (v568 - 1) & v476;
                    v481 = v566 + 80 * v480;
                    v482 = *v481;
                    if (v468 != *v481)
                    {
                      v483 = 0;
                      v484 = 1;
                      while (v482 != -4096)
                      {
                        if (v483)
                        {
                          v485 = 0;
                        }

                        else
                        {
                          v485 = v482 == -8192;
                        }

                        if (v485)
                        {
                          v483 = v481;
                        }

                        v486 = v480 + v484++;
                        v480 = v486 & v479;
                        v481 = v566 + 80 * (v486 & v479);
                        v482 = *v481;
                        if (v468 == *v481)
                        {
                          goto LABEL_808;
                        }
                      }

                      if (v483)
                      {
                        v481 = v483;
                      }

                      if (4 * v567 + 4 >= 3 * v568)
                      {
                        goto LABEL_819;
                      }

                      if (v568 + ~v567 - HIDWORD(v567) > v568 >> 3)
                      {
                        LODWORD(v567) = v567 + 1;
                        if (*v481 != -4096)
                        {
                          goto LABEL_806;
                        }

                        goto LABEL_807;
                      }

                      v491 = v568;
LABEL_821:
                      v492 = (v491 - 1) | ((v491 - 1) >> 1);
                      v493 = v492 | (v492 >> 2) | ((v492 | (v492 >> 2)) >> 4);
                      v494 = ((v493 | (v493 >> 8)) >> 16) | v493 | (v493 >> 8);
                      if ((v494 + 1) > 0x40)
                      {
                        v495 = v494 + 1;
                      }

                      else
                      {
                        v495 = 64;
                      }

                      v568 = v495;
                      v496 = llvm::allocate_buffer(80 * v495, 8uLL);
                      v566 = v496;
                      if (v477)
                      {
                        v497 = 10 * v478;
                        llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::BitVector,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::BitVector>>,mlir::Region *,llvm::BitVector,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::BitVector>>::moveFromOldBuckets(&v566, v477, &v477[v497]);
                        llvm::deallocate_buffer(v477, (v497 * 8));
                      }

                      v567 = 0;
                      v498 = v568;
                      if (!v568)
                      {
                        v481 = 0;
                        goto LABEL_845;
                      }

                      v499 = 80 * v568 - 80;
                      v500 = v496;
                      v470 = 0uLL;
                      if (v499 < 0x50)
                      {
                        goto LABEL_913;
                      }

                      v501 = v499 / 0x50 + 1;
                      v500 = (v496 + 80 * (v501 & 0x7FFFFFFFFFFFFFELL));
                      v502 = v496;
                      v503 = v501 & 0x7FFFFFFFFFFFFFELL;
                      do
                      {
                        *v502 = -4096;
                        *(v502 + 10) = -4096;
                        v502 = (v502 + 160);
                        v503 -= 2;
                      }

                      while (v503);
                      if (v501 != (v501 & 0x7FFFFFFFFFFFFFELL))
                      {
LABEL_913:
                        do
                        {
                          *v500 = -4096;
                          v500 = (v500 + 80);
                        }

                        while (v500 != (v496 + 80 * v498));
                      }

                      if (v498)
                      {
                        v504 = v498 - 1;
                        v505 = (v498 - 1) & v476;
                        v481 = v496 + 80 * v505;
                        v506 = *v481;
                        if (v468 != *v481)
                        {
                          v507 = 0;
                          v508 = 1;
                          while (v506 != -4096)
                          {
                            if (v507)
                            {
                              v509 = 0;
                            }

                            else
                            {
                              v509 = v506 == -8192;
                            }

                            if (v509)
                            {
                              v507 = v481;
                            }

                            v510 = v505 + v508++;
                            v505 = v510 & v504;
                            v481 = v496 + 80 * (v510 & v504);
                            v506 = *v481;
                            v470 = 0uLL;
                            if (v468 == *v481)
                            {
                              goto LABEL_846;
                            }
                          }

                          if (v507)
                          {
                            v481 = v507;
                          }

LABEL_845:
                          v470 = 0uLL;
                        }
                      }

                      else
                      {
                        v481 = 0;
                      }

LABEL_846:
                      LODWORD(v567) = v567 + 1;
                      if (*v481 != -4096)
                      {
LABEL_806:
                        --HIDWORD(v567);
                      }

LABEL_807:
                      *(v481 + 40) = v470;
                      *(v481 + 56) = v470;
                      *(v481 + 9) = 0;
                      *(v481 + 24) = v470;
                      *v481 = v468;
                      *(v481 + 1) = v481 + 24;
                      *(v481 + 2) = 0x600000000;
                    }

LABEL_808:
                    if (((*(*(v481 + 1) + 8 * (v475 >> 6)) >> v475) & 1) == 0)
                    {
                      v487 = *v474;
                      if (*v474)
                      {
                        while (1)
                        {
                          v488 = *v487;
                          if (!*v487)
                          {
                            break;
                          }

                          v489 = v488[1];
                          if (v489)
                          {
                            v490 = *v488;
                            *v489 = *v488;
                            if (v490)
                            {
                              *(v490 + 8) = v489;
                            }
                          }

                          *v488 = 0;
                          v488[1] = 0;
                          v488[3] = 0;
                        }
                      }
                    }

                    ++v475;
                    if (++v474 == v473)
                    {
                      v471 = v468[1];
                      goto LABEL_852;
                    }

                    continue;
                  }
                }
              }

              v552 = &v594[24 * v595];
              v555 = v297;
              while (2)
              {
                v302 = *v301;
                if (v297)
                {
                  v303 = mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor(v297);
                  v573[0] = v297;
                  v573[1] = v303;
                  mlir::RegionBranchTerminatorOpInterface::getMutableSuccessorOperands(v573, *v301);
                  v304 = mlir::MutableOperandRange::operator mlir::OperandRange(v598);
                  v306 = v305;
                  if (v599 != v600)
                  {
                    free(v599);
                  }

                  v585 = v587;
                  v586 = 0x600000000;
                  v307 = v306;
                  v558 = v301;
                  v308 = 0;
                  if (!v307)
                  {
LABEL_519:
                    v310 = v301[1];
                    v311 = v301[2];
                    __src = v591;
                    v590 = 0x600000000;
                    v592 = v310;
                    v593 = v311;
                    goto LABEL_532;
                  }
                }

                else
                {
                  v304 = mlir::RegionBranchOpInterface::getEntrySuccessorOperands(v570, *v301);
                  v585 = v587;
                  v586 = 0x600000000;
                  v307 = v309;
                  v558 = v301;
                  v308 = 0;
                  if (!v309)
                  {
                    goto LABEL_519;
                  }
                }

                do
                {
                  if (v308 >= HIDWORD(v586))
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  *(v585 + v308) = v304;
                  v308 = v586 + 1;
                  LODWORD(v586) = v586 + 1;
                  v304 += 32;
                  --v307;
                }

                while (v307);
                v312 = v585;
                v310 = v301[1];
                v311 = v301[2];
                __src = v591;
                v590 = 0x600000000;
                if (v308)
                {
                  if (v585 == v587)
                  {
                    if (v308 >= 7)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    memcpy(v591, v585, 8 * v308);
                    v312 = v585;
                    LODWORD(v590) = v308;
                  }

                  else
                  {
                    __src = v585;
                    v590 = __PAIR64__(HIDWORD(v586), v308);
                    v585 = v587;
                    HIDWORD(v586) = 0;
                    v312 = v587;
                  }

                  LODWORD(v586) = 0;
                }

                v592 = v310;
                v593 = v311;
                if (v312 != v587)
                {
                  free(v312);
                  v308 = v590;
                  v310 = v592;
                  v311 = v593;
                }

LABEL_532:
                v313 = __src;
                v585 = __src;
                v586 = v310;
                v587[0] = 0;
                if (!v308 || !v311)
                {
LABEL_764:
                  v297 = v555;
                  if (v313 != v591)
                  {
                    free(v313);
                  }

                  v301 = v558 + 3;
                  if (v558 + 3 == v552)
                  {
                    v301 = v594;
                    goto LABEL_767;
                  }

                  continue;
                }

                break;
              }

              v314 = 0;
              v315 = (__src + 8 * v308);
              v316 = (v302 >> 4) ^ (v302 >> 9);
              while (2)
              {
                v317 = mlir::ValueRange::dereference_iterator(&v586, v314);
                if (*v561)
                {
                  v318 = (*v561 - 8);
                }

                else
                {
                  v318 = 0;
                }

                v319 = mlir::Block::getTerminator(v318);
                v320 = v319;
                v321 = v563;
                v322 = v565;
                if (!v565)
                {
LABEL_624:
                  v381 = 2 * v565;
                  goto LABEL_657;
                }

                v323 = ((v319 >> 4) ^ (v319 >> 9)) & (v565 - 1);
                v324 = v563 + 80 * v323;
                v325 = *v324;
                if (v319 != *v324)
                {
                  v326 = 0;
                  v327 = 1;
                  while (v325 != -4096)
                  {
                    if (v326)
                    {
                      v328 = 0;
                    }

                    else
                    {
                      v328 = v325 == -8192;
                    }

                    if (v328)
                    {
                      v326 = v324;
                    }

                    v329 = v323 + v327++;
                    v323 = v329 & (v565 - 1);
                    v324 = v563 + 80 * v323;
                    v325 = *v324;
                    if (v319 == *v324)
                    {
                      goto LABEL_554;
                    }
                  }

                  if (v326)
                  {
                    v324 = v326;
                  }

                  if (4 * v564 + 4 >= 3 * v565)
                  {
                    goto LABEL_624;
                  }

                  if (v565 + ~v564 - HIDWORD(v564) > v565 >> 3)
                  {
                    LODWORD(v564) = v564 + 1;
                    if (*v324 != -4096)
                    {
                      goto LABEL_552;
                    }

                    goto LABEL_553;
                  }

                  v381 = v565;
LABEL_657:
                  v397 = (v381 - 1) | ((v381 - 1) >> 1);
                  v398 = v397 | (v397 >> 2) | ((v397 | (v397 >> 2)) >> 4);
                  v399 = ((v398 | (v398 >> 8)) >> 16) | v398 | (v398 >> 8);
                  if ((v399 + 1) > 0x40)
                  {
                    v400 = v399 + 1;
                  }

                  else
                  {
                    v400 = 64;
                  }

                  v565 = v400;
                  v401 = llvm::allocate_buffer(80 * v400, 8uLL);
                  v563 = v401;
                  if (v321)
                  {
                    llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::BitVector,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::BitVector>>,mlir::Region *,llvm::BitVector,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::BitVector>>::moveFromOldBuckets(&v563, v321, &v321[10 * v322]);
                    llvm::deallocate_buffer(v321, (80 * v322));
                  }

                  v564 = 0;
                  v402 = v565;
                  if (!v565)
                  {
                    goto LABEL_679;
                  }

                  v403 = 80 * v565 - 80;
                  v404 = v401;
                  if (v403 < 0x50)
                  {
                    goto LABEL_914;
                  }

                  v405 = v403 / 0x50 + 1;
                  v404 = (v401 + 80 * (v405 & 0x7FFFFFFFFFFFFFELL));
                  v406 = v401;
                  v407 = v405 & 0x7FFFFFFFFFFFFFELL;
                  do
                  {
                    *v406 = -4096;
                    *(v406 + 10) = -4096;
                    v406 = (v406 + 160);
                    v407 -= 2;
                  }

                  while (v407);
                  if (v405 != (v405 & 0x7FFFFFFFFFFFFFELL))
                  {
LABEL_914:
                    do
                    {
                      *v404 = -4096;
                      v404 = (v404 + 80);
                    }

                    while (v404 != (v401 + 80 * v402));
                  }

                  if (v402)
                  {
                    v408 = v402 - 1;
                    v409 = v408 & ((v320 >> 4) ^ (v320 >> 9));
                    v324 = v401 + 80 * v409;
                    v410 = *v324;
                    if (v320 != *v324)
                    {
                      v411 = 0;
                      v412 = 1;
                      while (v410 != -4096)
                      {
                        if (v411)
                        {
                          v413 = 0;
                        }

                        else
                        {
                          v413 = v410 == -8192;
                        }

                        if (v413)
                        {
                          v411 = v324;
                        }

                        v414 = v409 + v412++;
                        v409 = v414 & v408;
                        v324 = v401 + 80 * v409;
                        v410 = *v324;
                        if (v320 == *v324)
                        {
                          goto LABEL_680;
                        }
                      }

                      if (v411)
                      {
                        v324 = v411;
                      }
                    }
                  }

                  else
                  {
LABEL_679:
                    v324 = 0;
                  }

LABEL_680:
                  LODWORD(v564) = v564 + 1;
                  if (*v324 != -4096)
                  {
LABEL_552:
                    --HIDWORD(v564);
                  }

LABEL_553:
                  *(v324 + 40) = 0u;
                  *(v324 + 56) = 0u;
                  *(v324 + 9) = 0;
                  *(v324 + 24) = 0u;
                  *v324 = v320;
                  *(v324 + 1) = v324 + 24;
                  *(v324 + 2) = 0x600000000;
                }

LABEL_554:
                v330 = mlir::OpOperand::getOperandNumber(*v313);
                v331 = v330;
                v332 = *(*(v324 + 1) + 8 * (v330 >> 6));
                if (v302)
                {
                  v333 = v566;
                  v334 = v568;
                  if (!v568)
                  {
                    goto LABEL_637;
                  }

                  v335 = v568 - 1;
                  v336 = (v568 - 1) & v316;
                  v337 = v566 + 80 * v336;
                  v338 = *v337;
                  if (v302 != *v337)
                  {
                    v339 = 0;
                    v340 = 1;
                    while (v338 != -4096)
                    {
                      if (v339)
                      {
                        v341 = 0;
                      }

                      else
                      {
                        v341 = v338 == -8192;
                      }

                      if (v341)
                      {
                        v339 = v337;
                      }

                      v342 = v336 + v340++;
                      v336 = v342 & v335;
                      v337 = v566 + 80 * (v342 & v335);
                      v338 = *v337;
                      if (v302 == *v337)
                      {
                        goto LABEL_574;
                      }
                    }

                    if (v339)
                    {
                      v337 = v339;
                    }

                    if (4 * v567 + 4 >= 3 * v568)
                    {
LABEL_637:
                      v386 = 2 * v568;
                      goto LABEL_683;
                    }

                    if (v568 + ~v567 - HIDWORD(v567) <= v568 >> 3)
                    {
                      v386 = v568;
LABEL_683:
                      v415 = (v386 - 1) | ((v386 - 1) >> 1);
                      v416 = v415 | (v415 >> 2) | ((v415 | (v415 >> 2)) >> 4);
                      v417 = ((v416 | (v416 >> 8)) >> 16) | v416 | (v416 >> 8);
                      if ((v417 + 1) > 0x40)
                      {
                        v418 = v417 + 1;
                      }

                      else
                      {
                        v418 = 64;
                      }

                      v568 = v418;
                      v419 = llvm::allocate_buffer(80 * v418, 8uLL);
                      v566 = v419;
                      if (v333)
                      {
                        v420 = 10 * v334;
                        llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::BitVector,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::BitVector>>,mlir::Region *,llvm::BitVector,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::BitVector>>::moveFromOldBuckets(&v566, v333, &v333[v420]);
                        llvm::deallocate_buffer(v333, (v420 * 8));
                      }

                      v567 = 0;
                      v446 = v568;
                      if (v568)
                      {
                        v447 = 80 * v568 - 80;
                        v448 = v419;
                        if (v447 < 0x50)
                        {
                          goto LABEL_915;
                        }

                        v449 = v447 / 0x50 + 1;
                        v448 = (v419 + 80 * (v449 & 0x7FFFFFFFFFFFFFELL));
                        v450 = v419;
                        v451 = v449 & 0x7FFFFFFFFFFFFFELL;
                        do
                        {
                          *v450 = -4096;
                          *(v450 + 10) = -4096;
                          v450 = (v450 + 160);
                          v451 -= 2;
                        }

                        while (v451);
                        if (v449 != (v449 & 0x7FFFFFFFFFFFFFELL))
                        {
LABEL_915:
                          do
                          {
                            *v448 = -4096;
                            v448 = (v448 + 80);
                          }

                          while (v448 != (v419 + 80 * v446));
                        }

                        if (v446)
                        {
                          v452 = v446 - 1;
                          v453 = (v446 - 1) & v316;
                          v337 = v419 + 80 * v453;
                          v454 = *v337;
                          if (v302 != *v337)
                          {
                            v455 = 0;
                            v456 = 1;
                            while (v454 != -4096)
                            {
                              if (v455)
                              {
                                v457 = 0;
                              }

                              else
                              {
                                v457 = v454 == -8192;
                              }

                              if (v457)
                              {
                                v455 = v337;
                              }

                              v458 = v453 + v456++;
                              v453 = v458 & v452;
                              v337 = v419 + 80 * (v458 & v452);
                              v454 = *v337;
                              if (v302 == *v337)
                              {
                                goto LABEL_749;
                              }
                            }

                            if (v455)
                            {
                              v337 = v455;
                            }
                          }
                        }

                        else
                        {
                          v337 = 0;
                        }
                      }

                      else
                      {
                        v337 = 0;
                      }

LABEL_749:
                      LODWORD(v567) = v567 + 1;
                      if (*v337 != -4096)
                      {
LABEL_572:
                        --HIDWORD(v567);
                      }
                    }

                    else
                    {
                      LODWORD(v567) = v567 + 1;
                      if (*v337 != -4096)
                      {
                        goto LABEL_572;
                      }
                    }

                    *(v337 + 40) = 0u;
                    *(v337 + 56) = 0u;
                    *(v337 + 9) = 0;
                    *(v337 + 24) = 0u;
                    *v337 = v302;
                    *(v337 + 1) = v337 + 24;
                    *(v337 + 2) = 0x600000000;
                  }

LABEL_574:
                  v344 = (v337 + 8);
                  v343 = *(v317 + 24);
                  v345 = v343 >> 6;
                }

                else
                {
                  v343 = *(v317 + 8);
                  if (v317 && (*(v317 + 8) & 7) == 6)
                  {
                    LODWORD(v343) = *(v317 + 16) + 6;
                  }

                  else
                  {
                    LODWORD(v343) = v343 & 7;
                  }

                  v345 = v343 >> 6;
                  v344 = &__dst;
                }

                v346 = (1 << v331) & v332;
                v347 = (*(*v344 + v345) >> v343) & 1;
                if (v346)
                {
                  v348 = v347 == 0;
                }

                else
                {
                  v348 = 0;
                }

                v349 = v562;
                if (v348)
                {
                  v349 = 1;
                }

                v562 = v349;
                if (v302)
                {
                  v350 = v566;
                  v351 = v568;
                  if (!v568)
                  {
                    goto LABEL_641;
                  }

                  v352 = v568 - 1;
                  v353 = (v568 - 1) & v316;
                  v354 = v566 + 80 * v353;
                  v355 = *v354;
                  if (v302 != *v354)
                  {
                    v356 = 0;
                    v357 = 1;
                    while (v355 != -4096)
                    {
                      if (v356)
                      {
                        v358 = 0;
                      }

                      else
                      {
                        v358 = v355 == -8192;
                      }

                      if (v358)
                      {
                        v356 = v354;
                      }

                      v359 = v353 + v357++;
                      v353 = v359 & v352;
                      v354 = v566 + 80 * (v359 & v352);
                      v355 = *v354;
                      if (v302 == *v354)
                      {
                        goto LABEL_602;
                      }
                    }

                    if (v356)
                    {
                      v354 = v356;
                    }

                    if (4 * v567 + 4 >= 3 * v568)
                    {
LABEL_641:
                      v362 = 2 * v568;
LABEL_642:
                      v387 = (v362 - 1) | ((v362 - 1) >> 1);
                      v388 = v387 | (v387 >> 2) | ((v387 | (v387 >> 2)) >> 4);
                      v389 = ((v388 | (v388 >> 8)) >> 16) | v388 | (v388 >> 8);
                      if ((v389 + 1) > 0x40)
                      {
                        v390 = v389 + 1;
                      }

                      else
                      {
                        v390 = 64;
                      }

                      v568 = v390;
                      v391 = llvm::allocate_buffer(80 * v390, 8uLL);
                      v566 = v391;
                      if (v350)
                      {
                        llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::BitVector,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::BitVector>>,mlir::Region *,llvm::BitVector,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::BitVector>>::moveFromOldBuckets(&v566, v350, &v350[10 * v351]);
                        llvm::deallocate_buffer(v350, (80 * v351));
                      }

                      v567 = 0;
                      LODWORD(v351) = v568;
                      if (v568)
                      {
                        v421 = 80 * v568 - 80;
                        v422 = v391;
                        if (v421 < 0x50)
                        {
                          goto LABEL_916;
                        }

                        v423 = v421 / 0x50 + 1;
                        v422 = (v391 + 80 * (v423 & 0x7FFFFFFFFFFFFFELL));
                        v424 = v391;
                        v425 = v423 & 0x7FFFFFFFFFFFFFELL;
                        do
                        {
                          *v424 = -4096;
                          *(v424 + 10) = -4096;
                          v424 = (v424 + 160);
                          v425 -= 2;
                        }

                        while (v425);
                        if (v423 != (v423 & 0x7FFFFFFFFFFFFFELL))
                        {
LABEL_916:
                          do
                          {
                            *v422 = -4096;
                            v422 = (v422 + 80);
                          }

                          while (v422 != (v391 + 80 * v351));
                        }

                        if (v351)
                        {
                          v426 = v351 - 1;
                          v427 = (v351 - 1) & v316;
                          v354 = v391 + 80 * v427;
                          v428 = *v354;
                          if (v302 != *v354)
                          {
                            v429 = 0;
                            v430 = 1;
                            while (v428 != -4096)
                            {
                              if (v429)
                              {
                                v431 = 0;
                              }

                              else
                              {
                                v431 = v428 == -8192;
                              }

                              if (v431)
                              {
                                v429 = v354;
                              }

                              v432 = v427 + v430++;
                              v427 = v432 & v426;
                              v354 = v391 + 80 * (v432 & v426);
                              v428 = *v354;
                              if (v302 == *v354)
                              {
                                goto LABEL_743;
                              }
                            }

                            if (v429)
                            {
                              v354 = v429;
                            }
                          }
                        }

                        else
                        {
                          v354 = 0;
                        }
                      }

                      else
                      {
                        v354 = 0;
                      }

LABEL_743:
                      v350 = v391;
                      LODWORD(v567) = v567 + 1;
                      if (*v354 == -4096)
                      {
                        goto LABEL_601;
                      }

LABEL_600:
                      --HIDWORD(v567);
                      goto LABEL_601;
                    }

                    v362 = v568;
                    if (v568 + ~v567 - HIDWORD(v567) <= v568 >> 3)
                    {
                      goto LABEL_642;
                    }

                    LODWORD(v567) = v567 + 1;
                    if (*v354 != -4096)
                    {
                      goto LABEL_600;
                    }

LABEL_601:
                    *(v354 + 40) = 0u;
                    *(v354 + 56) = 0u;
                    *(v354 + 9) = 0;
                    *(v354 + 24) = 0u;
                    *v354 = v302;
                    *(v354 + 1) = v354 + 24;
                    *(v354 + 2) = 0x600000000;
                  }

LABEL_602:
                  v363 = *(v317 + 24);
                  v364 = v363 >> 6;
                  v365 = *(*(v354 + 1) + 8 * v364);
                  v366 = 1 << v363;
                  if (!v351)
                  {
                    goto LABEL_650;
                  }

                  v367 = v351 - 1;
                  v368 = (v351 - 1) & v316;
                  v369 = &v350[10 * v368];
                  v370 = *v369;
                  if (v302 == *v369)
                  {
LABEL_604:
                    v371 = v366;
                    v372 = v369[1];
                    if (v366 & v365 | v346)
                    {
                      goto LABEL_605;
                    }

LABEL_611:
                    v373 = *(v372 + 8 * v364) & ~v371;
                    goto LABEL_612;
                  }

                  v382 = 0;
                  v383 = 1;
                  while (v370 != -4096)
                  {
                    if (v382)
                    {
                      v384 = 0;
                    }

                    else
                    {
                      v384 = v370 == -8192;
                    }

                    if (v384)
                    {
                      v382 = v369;
                    }

                    v385 = v368 + v383++;
                    v368 = v385 & v367;
                    v369 = &v350[10 * (v385 & v367)];
                    v370 = *v369;
                    if (v302 == *v369)
                    {
                      goto LABEL_604;
                    }
                  }

                  if (v382)
                  {
                    v369 = v382;
                  }

                  if (4 * v567 + 4 >= (3 * v351))
                  {
LABEL_650:
                    v374 = 2 * v351;
LABEL_651:
                    v392 = (v374 - 1) | ((v374 - 1) >> 1);
                    v393 = v392 | (v392 >> 2) | ((v392 | (v392 >> 2)) >> 4);
                    v394 = ((v393 | (v393 >> 8)) >> 16) | v393 | (v393 >> 8);
                    if ((v394 + 1) > 0x40)
                    {
                      v395 = v394 + 1;
                    }

                    else
                    {
                      v395 = 64;
                    }

                    v568 = v395;
                    v396 = llvm::allocate_buffer(80 * v395, 8uLL);
                    v566 = v396;
                    if (v350)
                    {
                      llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::BitVector,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::BitVector>>,mlir::Region *,llvm::BitVector,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::BitVector>>::moveFromOldBuckets(&v566, v350, &v350[10 * v351]);
                      llvm::deallocate_buffer(v350, (80 * v351));
                    }

                    v567 = 0;
                    v433 = v568;
                    if (v568)
                    {
                      v434 = 80 * v568 - 80;
                      v435 = v396;
                      if (v434 < 0x50)
                      {
                        goto LABEL_917;
                      }

                      v436 = v434 / 0x50 + 1;
                      v435 = (v396 + 80 * (v436 & 0x7FFFFFFFFFFFFFELL));
                      v437 = v396;
                      v438 = v436 & 0x7FFFFFFFFFFFFFELL;
                      do
                      {
                        *v437 = -4096;
                        *(v437 + 10) = -4096;
                        v437 = (v437 + 160);
                        v438 -= 2;
                      }

                      while (v438);
                      if (v436 != (v436 & 0x7FFFFFFFFFFFFFELL))
                      {
LABEL_917:
                        do
                        {
                          *v435 = -4096;
                          v435 = (v435 + 80);
                        }

                        while (v435 != (v396 + 80 * v433));
                      }

                      if (v433)
                      {
                        v439 = v433 - 1;
                        v440 = (v433 - 1) & v316;
                        v369 = (v396 + 80 * v440);
                        v441 = *v369;
                        if (v302 != *v369)
                        {
                          v442 = 0;
                          v443 = 1;
                          while (v441 != -4096)
                          {
                            if (v442)
                            {
                              v444 = 0;
                            }

                            else
                            {
                              v444 = v441 == -8192;
                            }

                            if (v444)
                            {
                              v442 = v369;
                            }

                            v445 = v440 + v443++;
                            v440 = v445 & v439;
                            v369 = (v396 + 80 * (v445 & v439));
                            v441 = *v369;
                            if (v302 == *v369)
                            {
                              goto LABEL_746;
                            }
                          }

                          if (v442)
                          {
                            v369 = v442;
                          }
                        }
                      }

                      else
                      {
                        v369 = 0;
                      }
                    }

                    else
                    {
                      v369 = 0;
                    }

LABEL_746:
                    LODWORD(v567) = v567 + 1;
                    if (*v369 == -4096)
                    {
                      goto LABEL_610;
                    }

LABEL_609:
                    --HIDWORD(v567);
                    goto LABEL_610;
                  }

                  v374 = v351;
                  if (v351 + ~v567 - HIDWORD(v567) <= v351 >> 3)
                  {
                    goto LABEL_651;
                  }

                  LODWORD(v567) = v567 + 1;
                  if (*v369 != -4096)
                  {
                    goto LABEL_609;
                  }

LABEL_610:
                  *(v369 + 5) = 0u;
                  *(v369 + 7) = 0u;
                  v369[9] = 0;
                  *(v369 + 3) = 0u;
                  *v369 = v302;
                  v369[1] = (v369 + 3);
                  v369[2] = 0x600000000;
                  v375 = *(v317 + 24);
                  v364 = v375 >> 6;
                  v371 = 1 << v375;
                  v372 = v369[1];
                  if (!(v366 & v365 | v346))
                  {
                    goto LABEL_611;
                  }

LABEL_605:
                  v373 = *(v372 + 8 * v364) | v371;
LABEL_612:
                  *(v372 + 8 * v364) = v373;
                }

                else
                {
                  v360 = *(v317 + 8);
                  if ((v360 & 7) == 6)
                  {
                    v361 = *(v317 + 16) + 6;
                  }

                  else
                  {
                    v361 = v360 & 7;
                  }

                  v376 = v361;
                  v377 = (1 << v361) & *(__dst + (v361 >> 6));
                  v378 = v361 >> 6;
                  v379 = 1 << v376;
                  if (v377 | v346)
                  {
                    v380 = *(__dst + v378) | v379;
                  }

                  else
                  {
                    v380 = *(__dst + v378) & ~v379;
                  }

                  *(__dst + v378) = v380;
                }

                v313 = (v585 + 8);
                v314 = v587[0] + 1;
                v585 = v313;
                ++v587[0];
                if (v313 == v315 || v314 == v311)
                {
                  v313 = __src;
                  goto LABEL_764;
                }

                continue;
              }
            }

            if ((v562 & 1) == 0)
            {
              goto LABEL_776;
            }
          }

          v129 = (((v572[0] + 16 * ((v128 >> 23) & 1) + ((v128 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v572[0] + 10));
          v130 = &v129[3 * (v128 & 0x7FFFFF)];
          while (2)
          {
            if (*v129)
            {
              v135 = (*v129 - 8);
            }

            else
            {
              v135 = 0;
            }

            v136 = mlir::Block::getTerminator(v135);
            v137 = v563;
            v138 = v565;
            if (!v565)
            {
LABEL_257:
              v143 = v136;
              v144 = 2 * v565;
              goto LABEL_259;
            }

            v131 = v565 - 1;
            v132 = ((v136 >> 4) ^ (v136 >> 9)) & (v565 - 1);
            v133 = v563 + 80 * v132;
            v134 = *v133;
            if (v136 == *v133)
            {
LABEL_235:
              v129 += 3;
              if (v129 == v130)
              {
                goto LABEL_288;
              }

              continue;
            }

            break;
          }

          v139 = 0;
          v140 = 1;
          while (v134 != -4096)
          {
            if (v139)
            {
              v141 = 0;
            }

            else
            {
              v141 = v134 == -8192;
            }

            if (v141)
            {
              v139 = v133;
            }

            v142 = v132 + v140++;
            v132 = v142 & v131;
            v133 = v563 + 80 * (v142 & v131);
            v134 = *v133;
            if (v136 == *v133)
            {
              goto LABEL_235;
            }
          }

          if (v139)
          {
            v133 = v139;
          }

          if (4 * v564 + 4 >= 3 * v565)
          {
            goto LABEL_257;
          }

          if (v565 + ~v564 - HIDWORD(v564) <= v565 >> 3)
          {
            v143 = v136;
            v144 = v565;
LABEL_259:
            v145 = (v144 - 1) | ((v144 - 1) >> 1);
            v146 = v145 | (v145 >> 2) | ((v145 | (v145 >> 2)) >> 4);
            v147 = ((v146 | (v146 >> 8)) >> 16) | v146 | (v146 >> 8);
            if ((v147 + 1) > 0x40)
            {
              v148 = v147 + 1;
            }

            else
            {
              v148 = 64;
            }

            v565 = v148;
            v149 = llvm::allocate_buffer(80 * v148, 8uLL);
            v563 = v149;
            if (v137)
            {
              v150 = 10 * v138;
              llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::BitVector,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::BitVector>>,mlir::Region *,llvm::BitVector,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::BitVector>>::moveFromOldBuckets(&v563, v137, &v137[v150]);
              llvm::deallocate_buffer(v137, (v150 * 8));
            }

            v564 = 0;
            v151 = v565;
            if (v565)
            {
              v152 = v149;
              v153 = 80 * v565 - 80;
              v154 = v149;
              v136 = v143;
              if (v153 < 0x50)
              {
                goto LABEL_918;
              }

              v155 = v153 / 0x50 + 1;
              v154 = (v152 + 80 * (v155 & 0x7FFFFFFFFFFFFFELL));
              v156 = v152;
              v157 = v155 & 0x7FFFFFFFFFFFFFELL;
              do
              {
                *v156 = -4096;
                *(v156 + 10) = -4096;
                v156 = (v156 + 160);
                v157 -= 2;
              }

              while (v157);
              if (v155 != (v155 & 0x7FFFFFFFFFFFFFELL))
              {
LABEL_918:
                do
                {
                  *v154 = -4096;
                  v154 = (v154 + 80);
                }

                while (v154 != (v152 + 80 * v151));
              }

              if (v151)
              {
                v158 = v151 - 1;
                v159 = (v151 - 1) & ((v143 >> 4) ^ (v143 >> 9));
                v133 = v152 + 80 * v159;
                v160 = *v133;
                if (v143 != *v133)
                {
                  v161 = 0;
                  v162 = 1;
                  while (v160 != -4096)
                  {
                    if (v161)
                    {
                      v163 = 0;
                    }

                    else
                    {
                      v163 = v160 == -8192;
                    }

                    if (v163)
                    {
                      v161 = v133;
                    }

                    v164 = v159 + v162++;
                    v159 = v164 & v158;
                    v133 = v152 + 80 * (v164 & v158);
                    v160 = *v133;
                    if (v143 == *v133)
                    {
                      goto LABEL_283;
                    }
                  }

                  if (v161)
                  {
                    v133 = v161;
                  }
                }
              }

              else
              {
                v133 = 0;
              }
            }

            else
            {
              v133 = 0;
              v136 = v143;
            }

LABEL_283:
            LODWORD(v564) = v564 + 1;
            if (*v133 != -4096)
            {
LABEL_243:
              --HIDWORD(v564);
            }
          }

          else
          {
            LODWORD(v564) = v564 + 1;
            if (*v133 != -4096)
            {
              goto LABEL_243;
            }
          }

          *(v133 + 40) = 0u;
          *(v133 + 56) = 0u;
          *(v133 + 9) = 0;
          *(v133 + 24) = 0u;
          *v133 = v136;
          *(v133 + 1) = v133 + 24;
          *(v133 + 2) = 0x600000000;
          goto LABEL_235;
        }
      }

      v35 = 0;
      v36 = v590;
      if (!v590)
      {
        goto LABEL_43;
      }

LABEL_42:
      memcpy((*v33 + 8 * v35), __src + 8 * v35, 8 * v36);
      goto LABEL_43;
    }

    v51 = v590;
    v52 = v582;
    if (v582 >= v590)
    {
      if (v590)
      {
        memmove(__dst, __src, 8 * v590);
      }

      goto LABEL_77;
    }

    if (HIDWORD(v582) < v590)
    {
      LODWORD(v582) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v582)
    {
      memmove(__dst, __src, 8 * v582);
      v53 = v590 - v52;
      if (v590 == v52)
      {
        goto LABEL_77;
      }
    }

    else
    {
      v52 = 0;
      v53 = v590;
      if (!v590)
      {
LABEL_77:
        LODWORD(v582) = v51;
        LODWORD(v590) = 0;
        v584 = v592;
        if (__src != v591)
        {
          free(__src);
        }

        goto LABEL_19;
      }
    }

    memcpy(__dst + 8 * v52, __src + 8 * v52, 8 * v53);
    goto LABEL_77;
  }

LABEL_55:
  v43 = v572[0];
  v44 = *(v572[0] + 9);
  if (v44)
  {
    v45 = v572[0] - 16;
  }

  else
  {
    v45 = 0;
  }

  if (v44)
  {
    for (i = 0; i != v44; ++i)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v45, i);
      while (1)
      {
        v48 = *NextResultAtOffset;
        if (!*NextResultAtOffset)
        {
          break;
        }

        v49 = v48[1];
        if (v49)
        {
          v50 = *v48;
          *v49 = *v48;
          if (v50)
          {
            *(v50 + 8) = v49;
          }
        }

        *v48 = 0;
        v48[1] = 0;
        v48[3] = 0;
      }
    }

    v43 = v572[0];
  }

  mlir::Operation::erase(v43);
}