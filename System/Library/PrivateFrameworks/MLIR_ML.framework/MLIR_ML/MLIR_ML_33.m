void mlir::ConversionPatternRewriter::replaceOp(mlir::ConversionPatternRewriter *this, mlir::Operation *a2, mlir::Operation *a3)
{
  v6[2] = *MEMORY[0x277D85DE8];
  if (*(a3 + 9))
  {
    v5 = a3 - 16;
  }

  else
  {
    v5 = 0;
  }

  mlir::ValueRange::ValueRange(v6, v5, *(a3 + 9));
  mlir::detail::ConversionPatternRewriterImpl::notifyOpReplaced(*(this + 5), a2, v6[0], v6[1]);
}

void mlir::ConversionPatternRewriter::eraseOp(mlir::ConversionPatternRewriter *this, mlir::Operation *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 9);
  v5[2] = v8;
  v7 = 1;
  if (v3 >= 2)
  {
    v6 = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v3 == 1)
  {
    v8[0] = 0;
  }

  v6 = v3;
  v4 = *(this + 5);
  mlir::ValueRange::ValueRange(v5, v8, v3);
  mlir::detail::ConversionPatternRewriterImpl::notifyOpReplaced(v4, a2, v5[0], v5[1]);
}

uint64_t mlir::ConversionPatternRewriter::getRemappedValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10[6] = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9[0] = v10;
  v9[1] = 0x600000000;
  v6 = 0;
  if (mlir::detail::ConversionPatternRewriterImpl::remapValues(*(a1 + 40), "value", 5, 0, 0, a6, &v8, 1uLL, v9))
  {
    v6 = *v9[0];
  }

  if (v9[0] != v10)
  {
    free(v9[0]);
  }

  return v6;
}

uint64_t mlir::ConversionPatternRewriter::getRemappedValues(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    return mlir::detail::ConversionPatternRewriterImpl::remapValues(*(a1 + 40), "value", 5, 0, 0, a6, a2, a3, a4);
  }

  else
  {
    return 1;
  }
}

void mlir::ConversionPatternRewriter::inlineBlockBefore(mlir::detail::ConversionPatternRewriterImpl **a1, mlir::Block *a2, mlir::Block *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v17[2] = *MEMORY[0x277D85DE8];
  if (*(*(a1[5] + 47) + 32))
  {
    v10 = *(a2 + 7);
    v16 = *(a2 + 6);
    v17[0] = a5;
    v17[1] = 0;
    if (v16 != v10 && a6 != 0)
    {
      mlir::ValueRange::dereference_iterator(v17, 0);
      mlir::ConversionPatternRewriter::replaceUsesOfBlockArgument();
    }

    v12 = a2 + 32;
    if (*(a2 + 4) != (a2 + 32))
    {
      do
      {
        ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(*(a2 + 5));
        mlir::RewriterBase::moveOpBefore(a1, ValuePtr, a3, a4);
      }

      while (*(a2 + 4) != v12);
    }

    v14 = *(a2 + 5);
    if (v14 != (a2 + 32))
    {
      v15 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v14);
      mlir::ConversionPatternRewriter::eraseOp(a1, v15);
    }

    mlir::detail::ConversionPatternRewriterImpl::notifyBlockIsBeingErased(a1[5], a2);
  }

  mlir::detail::ConversionPatternRewriterImpl::notifyBlockBeingInlined();
}

uint64_t mlir::ConversionPatternRewriter::cancelOpModification(mlir::ConversionPatternRewriter *this, Operation *a2)
{
  v3 = *(this + 5);
  v4 = *(v3 + 176);
  v5 = *(v3 + 184);
  if (v5)
  {
    v6 = 8 * v5;
    while (1)
    {
      v7 = *(v4 + v6 - 8);
      v8 = v7 && *(v7 + 8) == 7;
      if (v8 && *(v7 + 24) == a2)
      {
        break;
      }

      v6 -= 8;
      if (!v6)
      {
        goto LABEL_12;
      }
    }

    v4 += v6;
  }

  else
  {
    v4 += 8 * v5;
  }

LABEL_12:
  (*(**(v4 - 8) + 16))(*(v4 - 8));
  v9 = *(this + 5);
  v10 = *(v9 + 176);
  v11 = (((v4 - v10) << 29) - 0x100000000) >> 29;
  v12 = (v10 + v11 + 8);
  v13 = *(v9 + 184);
  if (v12 != (v10 + 8 * v13))
  {
    v14 = v11 - 8 * v13 + 8;
    do
    {
      v15 = *(v12 - 1);
      *(v12 - 1) = *v12;
      *v12 = 0;
      if (v15)
      {
        (*(*v15 + 8))(v15);
      }

      ++v12;
      v14 += 8;
    }

    while (v14);
    LODWORD(v13) = *(v9 + 184);
    v10 = *(v9 + 176);
  }

  v16 = v13 - 1;
  *(v9 + 184) = v16;
  result = *(v10 + 8 * v16);
  *(v10 + 8 * v16) = 0;
  if (result)
  {
    v18 = *(*result + 8);

    return v18();
  }

  return result;
}

BOOL mlir::OperationConverter::convert(mlir::ConversionTarget **this, mlir::ConversionPatternRewriter *a2, mlir::Operation *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v34 = a3;
  v6 = *(this + 56);
  if (v5)
  {
    if (v6 != 2)
    {
      return 1;
    }

    v7 = this[3];
    if (!v7)
    {
      return 1;
    }

    goto LABEL_53;
  }

  if (v6)
  {
    if (v6 == 1)
    {
      v33 = 257;
      mlir::Operation::emitError(&v37, a3, v32);
      if (v37)
      {
        LODWORD(v35) = 3;
        *(&v35 + 1) = "failed to legalize operation '";
        v36 = 30;
        if (v40 >= v41)
        {
          if (v39 > &v35 || v39 + 24 * v40 <= &v35)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v8 = v39 + 24 * v40;
        v9 = v35;
        *(v8 + 2) = v36;
        *v8 = v9;
        ++v40;
        if (v37)
        {
          mlir::Diagnostic::operator<<(v38, *(v34 + 6));
          if (v37)
          {
            LODWORD(v35) = 3;
            *(&v35 + 1) = "'";
            v36 = 1;
            if (v40 >= v41)
            {
              if (v39 > &v35 || v39 + 24 * v40 <= &v35)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v10 = v39 + 24 * v40;
            v11 = v35;
            *(v10 + 2) = v36;
            *v10 = v11;
            ++v40;
          }
        }
      }

      v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v37);
      if (v37)
      {
        mlir::InFlightDiagnostic::report(&v37);
      }

      if (v48 == 1)
      {
        if (v47 != &v48)
        {
          free(v47);
        }

        v13 = __p;
        if (__p)
        {
          v14 = v46;
          v15 = __p;
          if (v46 != __p)
          {
            do
            {
              v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
            }

            while (v14 != v13);
            v15 = __p;
          }

          v46 = v13;
          operator delete(v15);
        }

        v16 = v43;
        if (!v43)
        {
          goto LABEL_58;
        }

        v17 = v44;
        v18 = v43;
        if (v44 == v43)
        {
LABEL_57:
          v44 = v16;
          operator delete(v18);
LABEL_58:
          if (v39 != &v42)
          {
            free(v39);
          }

          return v12;
        }

        do
        {
          v20 = *--v17;
          v19 = v20;
          *v17 = 0;
          if (v20)
          {
            MEMORY[0x259C63150](v19, 0x1000C8077774924);
          }
        }

        while (v17 != v16);
LABEL_56:
        v18 = v43;
        goto LABEL_57;
      }

      return v12;
    }

    return 1;
  }

  if (!mlir::ConversionTarget::isIllegal(this[18], a3))
  {
    v7 = this[2];
    if (v7)
    {
LABEL_53:
      llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v7, &v34, &v37);
      return 1;
    }

    return 1;
  }

  v33 = 257;
  mlir::Operation::emitError(&v37, a3, v32);
  if (v37)
  {
    LODWORD(v35) = 3;
    *(&v35 + 1) = "failed to legalize operation '";
    v36 = 30;
    if (v40 >= v41)
    {
      if (v39 > &v35 || v39 + 24 * v40 <= &v35)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v21 = v39 + 24 * v40;
    v22 = v35;
    *(v21 + 2) = v36;
    *v21 = v22;
    ++v40;
    if (v37)
    {
      mlir::Diagnostic::operator<<(v38, *(v34 + 6));
      if (v37)
      {
        LODWORD(v35) = 3;
        *(&v35 + 1) = "' that was explicitly marked illegal";
        v36 = 36;
        if (v40 >= v41)
        {
          if (v39 > &v35 || v39 + 24 * v40 <= &v35)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v23 = v39 + 24 * v40;
        v24 = v35;
        *(v23 + 2) = v36;
        *v23 = v24;
        ++v40;
      }
    }
  }

  v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v37);
  if (v37)
  {
    mlir::InFlightDiagnostic::report(&v37);
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
    }

    v25 = __p;
    if (__p)
    {
      v26 = v46;
      v27 = __p;
      if (v46 != __p)
      {
        do
        {
          v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
        }

        while (v26 != v25);
        v27 = __p;
      }

      v46 = v25;
      operator delete(v27);
    }

    v16 = v43;
    if (!v43)
    {
      goto LABEL_58;
    }

    v28 = v44;
    v18 = v43;
    if (v44 == v43)
    {
      goto LABEL_57;
    }

    do
    {
      v30 = *--v28;
      v29 = v30;
      *v28 = 0;
      if (v30)
      {
        MEMORY[0x259C63150](v29, 0x1000C8077774924);
      }
    }

    while (v28 != v16);
    goto LABEL_56;
  }

  return v12;
}

uint64_t anonymous namespace::OperationLegalizer::legalize(mlir::ConversionTarget **this, mlir::Operation *a2, mlir::ConversionPatternRewriter *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v30 = a2;
  isLegal = mlir::ConversionTarget::isLegal(this[12], a2);
  if ((isLegal & 0x100) != 0)
  {
    if (isLegal)
    {
      v35 = &v30;
      v36 = a3;
    }

    return 1;
  }

  v7 = *(a3 + 5);
  v8 = *(v7 + 296);
  if (v8)
  {
    v9 = *(v7 + 280);
    v10 = v8 - 1;
    v11 = ((a2 >> 4) ^ (a2 >> 9)) & v10;
    v12 = *(v9 + 8 * v11);
    if (v12 == a2)
    {
      return 1;
    }

    v13 = 1;
    result = 1;
    while (v12 != -4096)
    {
      v15 = v11 + v13++;
      v11 = v15 & v10;
      v12 = *(v9 + 8 * v11);
      if (v12 == a2)
      {
        return result;
      }
    }
  }

  v16 = *(v7 + 256);
  if (v16)
  {
    v17 = *(v7 + 240);
    v18 = v16 - 1;
    v19 = v18 & ((a2 >> 4) ^ (a2 >> 9));
    v20 = *(v17 + 8 * v19);
    if (v20 == a2)
    {
      return 1;
    }

    v21 = 1;
    result = 1;
    while (v20 != -4096)
    {
      v22 = v19 + v21++;
      v19 = v22 & v18;
      v20 = *(v17 + 8 * v19);
      if (v20 == a2)
      {
        return result;
      }
    }
  }

  v35 = v37;
  v36 = 0x200000000;
  v23 = *(a2 + 2);
  NodePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(a2);
  *(a3 + 3) = v23;
  *(a3 + 4) = NodePtr;
  if ((mlir::OpBuilder::tryFold(a3 + 8, a2, &v35) & 1) == 0)
  {
    v26 = 0;
    v27 = v35;
    if (v35 == v37)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (v36)
  {
    mlir::ValueRange::ValueRange(&v38, v35, v36);
    mlir::detail::ConversionPatternRewriterImpl::notifyOpReplaced(*(a3 + 5), a2, v38, v39);
  }

  v27 = v35;
  if (v35 != v37)
  {
LABEL_22:
    free(v27);
  }

LABEL_23:
  if ((v26 & 1) == 0)
  {
    v34 = a2;
    v35 = this;
    v28 = *(a3 + 5);
    v38 = this;
    v39 = &v34;
    v40 = a3;
    v29 = v28[78];
    v32 = v28[46] | (v28[68] << 32);
    v33 = v29;
    v31[0] = this;
    v31[1] = v28;
    v31[2] = &v32;
    v36 = &v34;
    v37[0] = a3;
    v37[1] = &v32;
    v37[2] = v28;
  }

  return 1;
}

uint64_t mlir::OperationConverter::convertOperations(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[27] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = 0;
    v5 = *(a1 + 144);
    v9[0] = &v10;
    v9[1] = 0x600000000;
    v6 = 8 * a3;
    do
    {
      v7 = *(a2 + v4);
      v11[0] = v9;
      v11[1] = v5;
      mlir::detail::walk<mlir::ForwardDominanceIterator<false>>(v7, llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::OperationConverter::convertOperations(llvm::ArrayRef<mlir::Operation *>)::$_0>, v11, 0);
      v4 += 8;
    }

    while (v6 != v4);
    mlir::Attribute::getContext((*a2 + 24));
    operator new();
  }

  return 1;
}

void mlir::OperationConverter::finalize(mlir::OperationConverter *this, mlir::ConversionPatternRewriter *a2)
{
  v213[6] = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 5);
  v3 = *(v2 + 104);
  v201 = v2 + 104;
  v206 = 0;
  v207 = 0;
  v208 = 0;
  if (*(v2 + 112))
  {
    v4 = *(v2 + 120);
    if (v4)
    {
      v5 = 16 * v4;
      v6 = v3;
      while ((*v6 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v6 += 2;
        v5 -= 16;
        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      v6 = v3;
    }

    v197 = &v3[2 * v4];
LABEL_294:
    if (v6 != v197)
    {
      v198 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<mlir::Value,6u>>>,mlir::Value,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<mlir::Value,6u>>>::operator[](&v206, v6 + 1);
      v199 = *(v198 + 2);
      if (v199 >= *(v198 + 3))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*v198 + 8 * v199) = *v6;
      ++*(v198 + 2);
      while (1)
      {
        v6 += 2;
        if (v6 == v197)
        {
          break;
        }

        if ((*v6 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          goto LABEL_294;
        }
      }
    }
  }

LABEL_6:
  v202 = *(v2 + 184);
  if (!v202)
  {
LABEL_283:
    v192 = v206;
    if (v208)
    {
      v193 = v206 + 24;
      v194 = 72 * v208;
      do
      {
        if ((*(v193 - 3) | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v195 = *(v193 - 2);
          if (v193 != v195)
          {
            free(v195);
          }
        }

        v193 += 72;
        v194 -= 72;
      }

      while (v194);
      v192 = v206;
      v196 = 72 * v208;
    }

    else
    {
      v196 = 0;
    }

    llvm::deallocate_buffer(v192, v196);
  }

  v7 = 0;
  while (1)
  {
    mlir::ValueRange::ValueRange(&v211, 0, 0);
    v8 = *(*(v2 + 176) + 8 * v7);
    v9 = *(v8 + 8);
    v10 = v8 && v9 == 8;
    v203 = v7;
    if (v10)
    {
      break;
    }

    if (v8)
    {
      v11 = v9 == 4;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      mlir::ValueRange::ValueRange(v212, *(*(v8 + 32) + 48), (*(*(v8 + 32) + 56) - *(*(v8 + 32) + 48)) >> 3);
      v211 = *v212;
      v12 = v212[1];
      v209 = v212[0];
      v210 = 0;
      if (v212[1])
      {
        goto LABEL_25;
      }
    }

    else
    {
      mlir::ValueRange::ValueRange(v212, 0, 0);
      v211 = *v212;
      v12 = v212[1];
      v209 = v212[0];
      v210 = 0;
      if (v212[1])
      {
        goto LABEL_25;
      }
    }

LABEL_8:
    v7 = v203 + 1;
    if (v203 + 1 == v202)
    {
      goto LABEL_283;
    }
  }

  v13 = *(v8 + 24);
  v14 = *(v13 + 36);
  if (v14)
  {
    v15 = v13 - 16;
  }

  else
  {
    v15 = 0;
  }

  mlir::ValueRange::ValueRange(v212, v15, v14);
  v211 = *v212;
  v12 = v212[1];
  v209 = v212[0];
  v210 = 0;
  if (!v212[1])
  {
    goto LABEL_8;
  }

LABEL_25:
  v16 = 0;
LABEL_28:
  v17 = mlir::ValueRange::dereference_iterator(&v209, v16);
  v205 = v17;
  v18 = *(v17 + 8) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v2 + 120);
  if (v19)
  {
    v20 = *(v2 + 104);
    v21 = v19 - 1;
    if (v18)
    {
      v22 = 0;
      v23 = v17;
      while (1)
      {
        v24 = v23;
        if ((*(v23 + 8) & 0xFFFFFFFFFFFFFFF8) == v18)
        {
          v22 = v23;
        }

        v25 = 0x9DDFEA08EB382D69 * ((8 * v23 - 0xAE502812AA7333) ^ HIDWORD(v23));
        v26 = 0x9DDFEA08EB382D69 * (HIDWORD(v23) ^ (v25 >> 47) ^ v25);
        v27 = (-348639895 * ((v26 >> 47) ^ v26)) & v21;
        v28 = *(v20 + 16 * v27);
        if (v28 != v24)
        {
          break;
        }

LABEL_34:
        if (v27 != v19)
        {
          v23 = *(v20 + 16 * v27 + 8);
          if (v23)
          {
            continue;
          }
        }

        goto LABEL_55;
      }

      v29 = 1;
      while (v28 != -4096)
      {
        v30 = v27 + v29++;
        v27 = v30 & v21;
        v28 = *(v20 + 16 * v27);
        if (v28 == v24)
        {
          goto LABEL_34;
        }
      }

LABEL_55:
      if (!v22)
      {
        v22 = v24;
      }

      if (v17 == v22)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v31 = v17;
      while (1)
      {
        v22 = v31;
        v32 = HIDWORD(v31);
        v33 = 0x9DDFEA08EB382D69 * ((8 * v31 - 0xAE502812AA7333) ^ HIDWORD(v31));
        v34 = (-348639895 * ((((0x9DDFEA08EB382D69 * (v32 ^ (v33 >> 47) ^ v33)) >> 32) >> 15) ^ (-348639895 * (v32 ^ (v33 >> 47) ^ v33)))) & v21;
        v35 = *(v20 + 16 * v34);
        if (v35 != v22)
        {
          break;
        }

LABEL_47:
        if (v34 == v19)
        {
          v24 = v22;
          goto LABEL_55;
        }

        v31 = *(v20 + 16 * v34 + 8);
        v24 = v22;
        if (!v31)
        {
          goto LABEL_55;
        }
      }

      v36 = 1;
      while (v35 != -4096)
      {
        v37 = v34 + v36++;
        v34 = v37 & v21;
        v35 = *(v20 + 16 * v34);
        if (v35 == v22)
        {
          goto LABEL_47;
        }
      }

      if (!v22)
      {
        v22 = 0;
      }

      if (v17 == v22)
      {
        goto LABEL_58;
      }
    }
  }

  else
  {
    v22 = v17;
    if (!v17)
    {
      v22 = 0;
    }

    if (v17 == v22)
    {
LABEL_58:
      v212[0] = v213;
      HIDWORD(v212[1]) = 6;
      v38 = 1;
      v213[0] = v17;
      while (1)
      {
        v39 = v212[0];
        v40 = *(v212[0] + --v38);
        LODWORD(v212[1]) = v38;
        v41 = *v40;
        if (*v40)
        {
          v42 = *(v2 + 296);
          v43 = *(v2 + 240);
          v44 = *(v2 + 256);
          v45 = v44 - 1;
          if (v42)
          {
            v46 = *(v2 + 280);
            v47 = v42 - 1;
            while (1)
            {
              v48 = v41[2];
              v49 = (v48 >> 4) ^ (v48 >> 9);
              v50 = v49 & v47;
              v51 = *(v46 + 8 * (v49 & v47));
              if (v51 != v48)
              {
                v52 = 1;
                while (v51 != -4096)
                {
                  v53 = v50 + v52++;
                  v50 = v53 & v47;
                  v51 = *(v46 + 8 * v50);
                  if (v51 == v48)
                  {
                    goto LABEL_65;
                  }
                }

                if (!v44)
                {
                  goto LABEL_98;
                }

                v54 = v49 & v45;
                v55 = *(v43 + 8 * v54);
                if (v55 != v48)
                {
                  break;
                }
              }

LABEL_65:
              v41 = *v41;
              if (!v41)
              {
                goto LABEL_85;
              }
            }

            v56 = 1;
            while (v55 != -4096)
            {
              v57 = v54 + v56++;
              v54 = v57 & v45;
              v55 = *(v43 + 8 * v54);
              if (v55 == v48)
              {
                goto LABEL_65;
              }
            }

            goto LABEL_98;
          }

          if (v44)
          {
            while (1)
            {
              v48 = v41[2];
              v58 = ((v48 >> 4) ^ (v48 >> 9)) & v45;
              v59 = *(v43 + 8 * v58);
              if (v59 != v48)
              {
                break;
              }

LABEL_79:
              v41 = *v41;
              if (!v41)
              {
                goto LABEL_85;
              }
            }

            v60 = 1;
            while (v59 != -4096)
            {
              v61 = v58 + v60++;
              v58 = v61 & v45;
              v59 = *(v43 + 8 * v58);
              if (v59 == v48)
              {
                goto LABEL_79;
              }
            }

LABEL_98:
            if (v39 != v213)
            {
LABEL_99:
              free(v39);
            }
          }

          else
          {
            v48 = v41[2];
            if (v212[0] != v213)
            {
              goto LABEL_99;
            }
          }

          if (v48)
          {
            v70 = *(v2 + 120);
            if (v70)
            {
              v71 = *(v2 + 104);
              v72 = v70 - 1;
              v73 = v205;
              while (1)
              {
                v74 = v73;
                v75 = HIDWORD(v73);
                v76 = 0x9DDFEA08EB382D69 * ((8 * v74 - 0xAE502812AA7333) ^ v75);
                v77 = (-348639895 * ((((0x9DDFEA08EB382D69 * (v75 ^ (v76 >> 47) ^ v76)) >> 32) >> 15) ^ (-348639895 * (v75 ^ (v76 >> 47) ^ v76)))) & v72;
                v78 = *(v71 + 16 * v77);
                if (v78 != v74)
                {
                  break;
                }

LABEL_104:
                if (v77 != v70)
                {
                  v73 = *(v71 + 16 * v77 + 8);
                  if (v73)
                  {
                    continue;
                  }
                }

                goto LABEL_112;
              }

              v79 = 1;
              while (v78 != -4096)
              {
                v80 = v77 + v79++;
                v77 = v80 & v72;
                v78 = *(v71 + 16 * v77);
                if (v78 == v74)
                {
                  goto LABEL_104;
                }
              }
            }

            else
            {
              v74 = v205;
            }

LABEL_112:
            if (v74 == v205)
            {
              v81 = 0;
            }

            else
            {
              v81 = v74;
            }

            v204 = v81;
            v212[0] = v81;
            ParentBlock = mlir::Value::getParentBlock(v212);
            if (v212[0])
            {
              v83 = (*(v212[0] + 1) & 7) == 7;
            }

            else
            {
              v83 = 1;
            }

            if (v83)
            {
              v84 = (ParentBlock + 40);
            }

            else
            {
              v84 = (mlir::detail::OpResultImpl::getOwner(v212[0]) + 8);
            }

            v85 = *v84;
            Loc = mlir::Value::getLoc(&v205);
            v87 = mlir::detail::ConversionPatternRewriterImpl::buildUnresolvedMaterialization(v2, 2, ParentBlock, v85, Loc, &v204, 1, *(v205 + 8) & 0xFFFFFFFFFFFFFFF8);
            v88 = v205;
            v89 = *(v2 + 120);
            if (!v89)
            {
LABEL_197:
              v136 = v87;
              llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::grow(v201, 2 * v89);
              v137 = *(v2 + 120);
              if (!v137)
              {
                goto LABEL_217;
              }

              goto LABEL_198;
            }

            v90 = *(v2 + 104);
            v91 = 0x9DDFEA08EB382D69 * ((8 * v205 - 0xAE502812AA7333) ^ HIDWORD(v205));
            v92 = 0x9DDFEA08EB382D69 * (HIDWORD(v205) ^ (v91 >> 47) ^ v91);
            v93 = v89 - 1;
            v94 = (-348639895 * ((v92 >> 47) ^ v92)) & (v89 - 1);
            v95 = (v90 + 16 * v94);
            v96 = *v95;
            if (v205 != *v95)
            {
              v97 = 0;
              v98 = 1;
              while (v96 != -4096)
              {
                if (v97)
                {
                  v99 = 0;
                }

                else
                {
                  v99 = v96 == -8192;
                }

                if (v99)
                {
                  v97 = v95;
                }

                v100 = v94 + v98++;
                v94 = v100 & v93;
                v95 = (v90 + 16 * (v100 & v93));
                v96 = *v95;
                if (v205 == *v95)
                {
                  goto LABEL_137;
                }
              }

              if (v97)
              {
                v95 = v97;
              }

              v135 = *(v2 + 112);
              if (4 * v135 + 4 >= 3 * v89)
              {
                goto LABEL_197;
              }

              if (v89 + ~v135 - *(v2 + 116) > v89 >> 3)
              {
                *(v2 + 112) = v135 + 1;
                if (*v95 != -4096)
                {
                  goto LABEL_135;
                }

                goto LABEL_136;
              }

              v136 = v87;
              llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::grow(v201, v89);
              v137 = *(v2 + 120);
              if (!v137)
              {
LABEL_217:
                v95 = 0;
LABEL_218:
                v87 = v136;
                goto LABEL_219;
              }

LABEL_198:
              v138 = *(v2 + 104);
              v139 = 0x9DDFEA08EB382D69 * ((8 * v88 - 0xAE502812AA7333) ^ HIDWORD(v88));
              v140 = 0x9DDFEA08EB382D69 * (HIDWORD(v88) ^ (v139 >> 47) ^ v139);
              LODWORD(v139) = -348639895 * ((v140 >> 47) ^ v140);
              v141 = v137 - 1;
              v142 = (v137 - 1) & v139;
              v95 = (v138 + 16 * v142);
              v143 = *v95;
              if (v88 == *v95)
              {
                goto LABEL_218;
              }

              v144 = 0;
              v145 = 1;
              v87 = v136;
              while (v143 != -4096)
              {
                if (v144)
                {
                  v146 = 0;
                }

                else
                {
                  v146 = v143 == -8192;
                }

                if (v146)
                {
                  v144 = v95;
                }

                v147 = v142 + v145++;
                v142 = v147 & v141;
                v95 = (v138 + 16 * (v147 & v141));
                v143 = *v95;
                if (v88 == *v95)
                {
                  goto LABEL_219;
                }
              }

              if (v144)
              {
                v95 = v144;
              }

LABEL_219:
              ++*(v2 + 112);
              if (*v95 != -4096)
              {
LABEL_135:
                --*(v2 + 116);
              }

LABEL_136:
              *v95 = v88;
              v95[1] = 0;
            }

LABEL_137:
            v95[1] = v87;
            v101 = v206;
            v102 = v208;
            if (!v208)
            {
              v106 = 0;
              v112 = v207;
              if (4 * v207 + 4 >= 3 * v208)
              {
                goto LABEL_211;
              }

              goto LABEL_149;
            }

            v103 = 0x9DDFEA08EB382D69 * ((8 * v87 - 0xAE502812AA7333) ^ HIDWORD(v87));
            v104 = 0x9DDFEA08EB382D69 * (HIDWORD(v87) ^ (v103 >> 47) ^ v103);
            v105 = (v208 - 1) & (-348639895 * ((v104 >> 47) ^ v104));
            v106 = v206 + 72 * v105;
            v107 = *v106;
            if (*v106 != v87)
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
                  v108 = v106;
                }

                v111 = v105 + v109++;
                v105 = v111 & (v208 - 1);
                v106 = v206 + 72 * v105;
                v107 = *v106;
                if (*v106 == v87)
                {
                  goto LABEL_153;
                }
              }

              if (v108)
              {
                v106 = v108;
              }

              v112 = v207;
              if (4 * v207 + 4 >= 3 * v208)
              {
LABEL_211:
                v200 = v87;
                v148 = 2 * v208;
                goto LABEL_222;
              }

LABEL_149:
              if (v208 + ~v112 - HIDWORD(v207) <= v208 >> 3)
              {
                v200 = v87;
                v148 = v208;
LABEL_222:
                v150 = (v148 - 1) | ((v148 - 1) >> 1);
                v151 = v150 | (v150 >> 2) | ((v150 | (v150 >> 2)) >> 4);
                v152 = ((v151 | (v151 >> 8)) >> 16) | v151 | (v151 >> 8);
                if ((v152 + 1) > 0x40)
                {
                  v153 = v152 + 1;
                }

                else
                {
                  v153 = 64;
                }

                v208 = v153;
                buffer = llvm::allocate_buffer(72 * v153, 8uLL);
                v206 = buffer;
                if (v101)
                {
                  llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<mlir::Value,6u>>>,mlir::Value,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<mlir::Value,6u>>>::moveFromOldBuckets(&v206, v101, &v101[9 * v102]);
                  llvm::deallocate_buffer(v101, (72 * v102));
                }

                v207 = 0;
                v161 = v208;
                if (v208)
                {
                  v162 = buffer;
                  v163 = 72 * v208 - 72;
                  v164 = buffer;
                  v87 = v200;
                  if (v163 < 0x48)
                  {
                    goto LABEL_303;
                  }

                  v165 = v163 / 0x48 + 1;
                  v164 = (v162 + 72 * (v165 & 0x7FFFFFFFFFFFFFELL));
                  v166 = v162;
                  v167 = v165 & 0x7FFFFFFFFFFFFFELL;
                  do
                  {
                    *v166 = -4096;
                    *(v166 + 9) = -4096;
                    v166 = (v166 + 144);
                    v167 -= 2;
                  }

                  while (v167);
                  if (v165 != (v165 & 0x7FFFFFFFFFFFFFELL))
                  {
LABEL_303:
                    do
                    {
                      *v164 = -4096;
                      v164 = (v164 + 72);
                    }

                    while (v164 != (v162 + 72 * v161));
                  }

                  if (v161)
                  {
                    v168 = 0x9DDFEA08EB382D69 * ((8 * v200 - 0xAE502812AA7333) ^ HIDWORD(v200));
                    v169 = 0x9DDFEA08EB382D69 * (HIDWORD(v200) ^ (v168 >> 47) ^ v168);
                    v170 = v161 - 1;
                    v171 = v170 & (-348639895 * ((v169 >> 47) ^ v169));
                    v106 = v162 + 72 * v171;
                    v172 = *v106;
                    if (*v106 != v200)
                    {
                      v173 = 0;
                      v174 = 1;
                      while (v172 != -4096)
                      {
                        if (v173)
                        {
                          v175 = 0;
                        }

                        else
                        {
                          v175 = v172 == -8192;
                        }

                        if (v175)
                        {
                          v173 = v106;
                        }

                        v176 = v171 + v174++;
                        v171 = v176 & v170;
                        v106 = v162 + 72 * v171;
                        v172 = *v106;
                        if (*v106 == v200)
                        {
                          goto LABEL_272;
                        }
                      }

                      if (v173)
                      {
                        v106 = v173;
                      }
                    }
                  }

                  else
                  {
                    v106 = 0;
                  }
                }

                else
                {
                  v106 = 0;
                  v87 = v200;
                }

LABEL_272:
                LODWORD(v207) = v207 + 1;
                if (*v106 != -4096)
                {
LABEL_151:
                  --HIDWORD(v207);
                }
              }

              else
              {
                LODWORD(v207) = v112 + 1;
                if (*v106 != -4096)
                {
                  goto LABEL_151;
                }
              }

              *v106 = v87;
              *(v106 + 1) = v106 + 24;
              *(v106 + 2) = 0x600000000;
            }

LABEL_153:
            v113 = *(v106 + 4);
            if (v113 >= *(v106 + 5))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            *(*(v106 + 1) + 8 * v113) = v205;
            ++*(v106 + 4);
            v114 = v206;
            v115 = v208;
            if (!v208)
            {
              v120 = 0;
              v126 = v207;
              if (4 * v207 + 4 >= 3 * v208)
              {
                goto LABEL_215;
              }

              goto LABEL_166;
            }

            v116 = 0x9DDFEA08EB382D69 * ((8 * v204 - 0xAE502812AA7333) ^ (v204 >> 32));
            v117 = 0x9DDFEA08EB382D69 * ((v204 >> 32) ^ (v116 >> 47) ^ v116);
            v118 = v208 - 1;
            v119 = (-348639895 * ((v117 >> 47) ^ v117)) & (v208 - 1);
            v120 = (v206 + 72 * v119);
            v121 = *v120;
            if (v204 != *v120)
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
                  v122 = v120;
                }

                v125 = v119 + v123++;
                v119 = v125 & v118;
                v120 = (v206 + 72 * (v125 & v118));
                v121 = *v120;
                if (v204 == *v120)
                {
                  goto LABEL_170;
                }
              }

              if (v122)
              {
                v120 = v122;
              }

              v126 = v207;
              if (4 * v207 + 4 >= 3 * v208)
              {
LABEL_215:
                v149 = 2 * v208;
                goto LABEL_228;
              }

LABEL_166:
              if (v208 + ~v126 - HIDWORD(v207) <= v208 >> 3)
              {
                v149 = v208;
LABEL_228:
                v155 = (v149 - 1) | ((v149 - 1) >> 1);
                v156 = v155 | (v155 >> 2) | ((v155 | (v155 >> 2)) >> 4);
                v157 = ((v156 | (v156 >> 8)) >> 16) | v156 | (v156 >> 8);
                if ((v157 + 1) > 0x40)
                {
                  v158 = v157 + 1;
                }

                else
                {
                  v158 = 64;
                }

                v208 = v158;
                v159 = llvm::allocate_buffer(72 * v158, 8uLL);
                v206 = v159;
                if (v114)
                {
                  v160 = 9 * v115;
                  llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<mlir::Value,6u>>>,mlir::Value,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<mlir::Value,6u>>>::moveFromOldBuckets(&v206, v114, &v114[v160]);
                  llvm::deallocate_buffer(v114, (v160 * 8));
                }

                v207 = 0;
                v177 = v208;
                if (!v208)
                {
                  goto LABEL_267;
                }

                v178 = 72 * v208 - 72;
                v179 = v159;
                if (v178 < 0x48)
                {
                  goto LABEL_304;
                }

                v180 = v178 / 0x48 + 1;
                v179 = (v159 + 72 * (v180 & 0x7FFFFFFFFFFFFFELL));
                v181 = v159;
                v182 = v180 & 0x7FFFFFFFFFFFFFELL;
                do
                {
                  *v181 = -4096;
                  *(v181 + 9) = -4096;
                  v181 = (v181 + 144);
                  v182 -= 2;
                }

                while (v182);
                if (v180 != (v180 & 0x7FFFFFFFFFFFFFELL))
                {
LABEL_304:
                  do
                  {
                    *v179 = -4096;
                    v179 = (v179 + 72);
                  }

                  while (v179 != (v159 + 72 * v177));
                }

                if (v177)
                {
                  v183 = 0x9DDFEA08EB382D69 * ((8 * v204 - 0xAE502812AA7333) ^ (v204 >> 32));
                  v184 = 0x9DDFEA08EB382D69 * ((v204 >> 32) ^ (v183 >> 47) ^ v183);
                  LODWORD(v183) = -348639895 * ((v184 >> 47) ^ v184);
                  v185 = v177 - 1;
                  v186 = v183 & (v177 - 1);
                  v120 = (v159 + 72 * v186);
                  v187 = *v120;
                  if (v204 != *v120)
                  {
                    v188 = 0;
                    v189 = 1;
                    while (v187 != -4096)
                    {
                      if (v188)
                      {
                        v190 = 0;
                      }

                      else
                      {
                        v190 = v187 == -8192;
                      }

                      if (v190)
                      {
                        v188 = v120;
                      }

                      v191 = v186 + v189++;
                      v186 = v191 & v185;
                      v120 = (v159 + 72 * (v191 & v185));
                      v187 = *v120;
                      if (v204 == *v120)
                      {
                        goto LABEL_268;
                      }
                    }

                    if (v188)
                    {
                      v120 = v188;
                    }
                  }
                }

                else
                {
LABEL_267:
                  v120 = 0;
                }

LABEL_268:
                LODWORD(v207) = v207 + 1;
                if (*v120 != -4096)
                {
LABEL_168:
                  --HIDWORD(v207);
                }
              }

              else
              {
                LODWORD(v207) = v126 + 1;
                if (*v120 != -4096)
                {
                  goto LABEL_168;
                }
              }

              *v120 = v204;
              v120[1] = v120 + 3;
              v120[2] = 0x600000000;
            }

LABEL_170:
            v127 = v205;
            v128 = v120[1];
            v129 = *(v120 + 4);
            v130 = (v128 + 8 * v129);
            if (v129)
            {
              v131 = 8 * v129;
              v132 = v120[1];
              do
              {
                if (*v132 == v205)
                {
                  goto LABEL_176;
                }

                ++v132;
                v131 -= 8;
              }

              while (v131);
              v132 = v130;
            }

            else
            {
              v132 = v120[1];
LABEL_176:
              if (v132 != v130)
              {
                v133 = v132 + 1;
                if (v132 + 1 != v130)
                {
                  v134 = v130 - v132 - 8;
                  do
                  {
                    if (*v133 != v127)
                    {
                      *v132++ = *v133;
                    }

                    ++v133;
                    v134 -= 8;
                  }

                  while (v134);
                }
              }
            }

            *(v120 + 4) = (v132 - v128) >> 3;
          }

LABEL_27:
          v16 = v210 + 1;
          v210 = v16;
          if (v16 == v12)
          {
            goto LABEL_8;
          }

          goto LABEL_28;
        }

LABEL_85:
        if (!v208)
        {
          goto LABEL_91;
        }

        v62 = 0x9DDFEA08EB382D69 * ((8 * v40 - 0xAE502812AA7333) ^ HIDWORD(v40));
        v63 = 0x9DDFEA08EB382D69 * (HIDWORD(v40) ^ (v62 >> 47) ^ v62);
        v64 = (v208 - 1) & (-348639895 * ((v63 >> 47) ^ v63));
        v65 = (v206 + 72 * v64);
        v66 = *v65;
        if (v40 != *v65)
        {
          break;
        }

LABEL_92:
        if (v65 != (v206 + 72 * v208))
        {
          v69 = *(v65 + 4);
          if (v69 + v38 > HIDWORD(v212[1]))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          if (v69)
          {
            memcpy(v212[0] + 8 * v38, v65[1], 8 * v69);
            v38 = v212[1];
          }

          v38 += v69;
          LODWORD(v212[1]) = v38;
        }

        if (!v38)
        {
          v48 = 0;
          v39 = v212[0];
          goto LABEL_98;
        }
      }

      v67 = 1;
      while (v66 != -4096)
      {
        v68 = v64 + v67++;
        v64 = v68 & (v208 - 1);
        v65 = (v206 + 72 * v64);
        v66 = *v65;
        if (v40 == *v65)
        {
          goto LABEL_92;
        }
      }

LABEL_91:
      v65 = (v206 + 72 * v208);
      goto LABEL_92;
    }
  }

  if (v18)
  {
    if (v22 && (*(v22 + 8) & 0xFFFFFFFFFFFFFFF8) == v18)
    {
      goto LABEL_27;
    }
  }

  else if (v22)
  {
    goto LABEL_27;
  }

  goto LABEL_58;
}

void mlir::reconcileUnrealizedCasts(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v68 = 0;
  v67 = 0u;
  v69 = v71;
  v70 = 0;
  if (!a2)
  {
    v64 = 0;
    v65 = 0;
    v66 = 0;
    goto LABEL_90;
  }

  v4 = a1;
  v5 = 8 * a2;
  v6 = a1;
  v7 = &a1[a2];
  do
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::UnrealizedConversionCastOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::UnrealizedConversionCastOp,void>,llvm::detail::DenseSetPair<mlir::UnrealizedConversionCastOp>>,mlir::UnrealizedConversionCastOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::UnrealizedConversionCastOp,void>,llvm::detail::DenseSetPair<mlir::UnrealizedConversionCastOp>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v67, v6, &v58);
    if (v60 == 1)
    {
      if (v70 >= HIDWORD(v70))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v69[v70] = *v6;
      LODWORD(v70) = v70 + 1;
    }

    ++v6;
    v5 -= 8;
  }

  while (v5);
  v8 = v70;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  for (i = &v67; v70; v8 = v70)
  {
    v9 = v69[v8 - 1];
    if (v68)
    {
      v10 = 0x9DDFEA08EB382D69 * ((8 * v9 - 0xAE502812AA7333) ^ HIDWORD(v9));
      v11 = 0x9DDFEA08EB382D69 * (HIDWORD(v9) ^ (v10 >> 47) ^ v10);
      v12 = (-348639895 * ((v11 >> 47) ^ v11)) & (v68 - 1);
      v13 = *(v67 + 8 * v12);
      if (v9 == v13)
      {
LABEL_16:
        *(v67 + 8 * v12) = -8192;
        *(&v67 + 1) = vadd_s32(*(&v67 + 8), 0x1FFFFFFFFLL);
        v8 = v70;
      }

      else
      {
        v46 = 1;
        while (v13 != -4096)
        {
          v47 = v12 + v46++;
          v12 = v47 & (v68 - 1);
          v13 = *(v67 + 8 * v12);
          if (v9 == v13)
          {
            goto LABEL_16;
          }
        }
      }
    }

    LODWORD(v70) = v8 - 1;
    v14 = *(v9 + 36);
    if (v14)
    {
      v15 = v9 - 16;
    }

    else
    {
      v15 = 0;
    }

    if (!v14)
    {
LABEL_10:
      mlir::reconcileUnrealizedCasts(llvm::ArrayRef<mlir::UnrealizedConversionCastOp>,llvm::SmallVectorImpl<mlir::UnrealizedConversionCastOp> *)::$_0::operator()(&i, v9);
      if (!a3)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v16 = 0;
    while (!*mlir::detail::OpResultImpl::getNextResultAtOffset(v15, v16))
    {
      if (v14 == ++v16)
      {
        goto LABEL_10;
      }
    }

    v62 = v9;
    if (v9)
    {
      while (1)
      {
        ODSOperandIndexAndLength = mlir::UnrealizedConversionCastOp::getODSOperandIndexAndLength(&v62, 0);
        if ((*(v62 + 46) & 0x80) != 0)
        {
          v18 = *(v62 + 72);
        }

        else
        {
          v18 = 0;
        }

        v57[0] = v18 + 32 * ODSOperandIndexAndLength;
        v57[1] = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength) - ODSOperandIndexAndLength;
        mlir::OperandRange::getTypes(v57, &v58);
        v19 = *(v9 + 36);
        if (v19)
        {
          v20 = v9 - 16;
        }

        else
        {
          v20 = 0;
        }

        v71[0] = v20;
        v71[1] = v19;
        mlir::ResultRange::getTypes(v71, &v54);
        v21 = v61 - v59;
        v22 = v55;
        if (v61 - v59 == v56 - v55)
        {
          if (v61 == v59)
          {
LABEL_47:
            mlir::reconcileUnrealizedCasts(llvm::ArrayRef<mlir::UnrealizedConversionCastOp>,llvm::SmallVectorImpl<mlir::UnrealizedConversionCastOp> *)::$_0::operator()(&i, v9);
            v32 = mlir::UnrealizedConversionCastOp::getODSOperandIndexAndLength(&v62, 0);
            if ((*(v62 + 46) & 0x80) != 0)
            {
              v33 = *(v62 + 72);
              v34 = *(v9 + 36);
              if (v34)
              {
                v35 = v9 - 16;
              }

              else
              {
                v35 = 0;
              }

              if (v34)
              {
LABEL_52:
                v36 = (HIDWORD(v32) + v32);
                if (v36 != v32)
                {
                  v37 = 0;
                  v38 = v33 + 32 * v32;
                  v39 = v36 - v32;
                  do
                  {
                    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v35, v37);
                    v41 = *NextResultAtOffset;
                    if (*NextResultAtOffset)
                    {
                      v42 = *(v38 + 32 * v37 + 24);
                      do
                      {
                        v43 = v41[1];
                        if (v43)
                        {
                          v44 = *v41;
                          *v43 = *v41;
                          if (v44)
                          {
                            *(v44 + 8) = v43;
                          }
                        }

                        v41[3] = v42;
                        v41[1] = v42;
                        v45 = *v42;
                        *v41 = *v42;
                        if (v45)
                        {
                          *(v45 + 8) = v41;
                        }

                        *v42 = v41;
                        v41 = *NextResultAtOffset;
                      }

                      while (*NextResultAtOffset);
                    }

                    ++v37;
                  }

                  while (v37 != v34 && v37 != v39);
                }
              }
            }

            else
            {
              v33 = 0;
              v34 = *(v9 + 36);
              if (v34)
              {
                v35 = v9 - 16;
              }

              else
              {
                v35 = 0;
              }

              if (v34)
              {
                goto LABEL_52;
              }
            }

            if (!a3)
            {
LABEL_12:
              mlir::Operation::erase(v9);
              break;
            }

LABEL_11:
            v54 = v9;
            llvm::DenseMapBase<llvm::DenseMap<void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>,void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v64, &v54, &v58);
            goto LABEL_12;
          }

          v23 = v54;
          v24 = v58 + 32 * v59 + 24;
          while (1)
          {
            v25 = *(*v24 + 8);
            if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v23, v22) + 8) ^ v25) > 7)
            {
              break;
            }

            ++v22;
            v24 += 32;
            if (!--v21)
            {
              goto LABEL_47;
            }
          }
        }

        v73[0] = v62;
        v26 = mlir::UnrealizedConversionCastOp::getODSOperandIndexAndLength(v73, 0);
        if (HIDWORD(v26) + v26 != v26)
        {
          v27 = mlir::UnrealizedConversionCastOp::getODSOperandIndexAndLength(v73, 0);
          v58 = *(*(v73[0] + 72) + 32 * v27 + 24);
          DefiningOp = mlir::Value::getDefiningOp(&v58);
          if (DefiningOp)
          {
            v29 = *(*(DefiningOp + 48) + 16);
            v30 = v29 == &mlir::detail::TypeIDResolver<mlir::UnrealizedConversionCastOp,void>::id;
            v31 = v29 == &mlir::detail::TypeIDResolver<mlir::UnrealizedConversionCastOp,void>::id ? DefiningOp : 0;
            v72 = v31;
            if (v30 && mlir::reconcileUnrealizedCasts(&v72, v73, &v62) > 1u)
            {
              continue;
            }
          }
        }

        break;
      }
    }
  }

  if (!a3)
  {
LABEL_90:
    llvm::deallocate_buffer(v64, (8 * v66));
  }

  while (1)
  {
    v49 = *v4;
    if (!v66)
    {
      goto LABEL_77;
    }

    v50 = (v66 - 1) & ((v49 >> 4) ^ (v49 >> 9));
    v51 = *(v64 + v50);
    if (v51 != v49)
    {
      break;
    }

LABEL_82:
    if (v50 == v66)
    {
      goto LABEL_77;
    }

LABEL_79:
    if (++v4 == v7)
    {
      goto LABEL_90;
    }
  }

  v52 = 1;
  while (v51 != -4096)
  {
    v53 = v50 + v52++;
    v50 = v53 & (v66 - 1);
    v51 = *(v64 + v50);
    if (v51 == v49)
    {
      goto LABEL_82;
    }
  }

LABEL_77:
  v48 = *(a3 + 8);
  if (v48 >= *(a3 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a3 + 8 * v48) = v49;
  ++*(a3 + 8);
  goto LABEL_79;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<mlir::Value,6u>>>,mlir::Value,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<mlir::Value,6u>>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    LODWORD(v3) = -348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)));
    v5 = v2 - 1;
    v6 = v3 & (v2 - 1);
    v7 = (*a1 + 72 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      return v7 + 1;
    }

    v11 = 0;
    v12 = 1;
    while (v8 != -4096)
    {
      if (v11)
      {
        v13 = 0;
      }

      else
      {
        v13 = v8 == -8192;
      }

      if (v13)
      {
        v11 = v7;
      }

      v14 = v6 + v12++;
      v6 = v14 & v5;
      v7 = (*a1 + 72 * (v14 & v5));
      v8 = *v7;
      if (*a2 == *v7)
      {
        return v7 + 1;
      }
    }

    if (v11)
    {
      v7 = v11;
    }
  }

  else
  {
    v7 = 0;
  }

  v17 = v7;
  v10 = *(a1 + 8);
  if (4 * v10 + 4 >= 3 * v2)
  {
    v15 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v10 - *(a1 + 12) <= v2 >> 3)
  {
    v15 = a2;
LABEL_24:
    v16 = a1;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<mlir::Value,6u>>>,mlir::Value,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<mlir::Value,6u>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<mlir::Value,6u>>>,mlir::Value,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<mlir::Value,6u>>>::LookupBucketFor<mlir::Value>(v16, v15, &v17);
    a1 = v16;
    a2 = v15;
    v7 = v17;
    ++*(v16 + 8);
    if (*v7 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v10 + 1;
  if (*v7 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v7 = *a2;
  v7[1] = v7 + 3;
  v7[2] = 0x600000000;
  return v7 + 1;
}

unsigned int *mlir::TypeConverter::SignatureConversion::addInputs(unsigned int *result, unsigned int a2, void *__src, uint64_t a4)
{
  v4 = result;
  v5 = *result + 32 * a2;
  v6 = *(v5 + 24);
  *v5 = result[38];
  *(v5 + 8) = a4;
  *(v5 + 16) = 0;
  if (v6)
  {
    v7 = 8 * a4;
    v8 = result[38];
    if (v8 + ((8 * a4) >> 3) <= result[39])
    {
      goto LABEL_3;
    }

LABEL_7:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(v5 + 24) = 1;
  v7 = 8 * a4;
  v8 = result[38];
  if (v8 + ((8 * a4) >> 3) > result[39])
  {
    goto LABEL_7;
  }

LABEL_3:
  if (a4)
  {
    result = memcpy((*(result + 18) + 8 * v8), __src, v7);
    LODWORD(v8) = v4[38];
  }

  v4[38] = v8 + (v7 >> 3);
  return result;
}

void *mlir::TypeConverter::SignatureConversion::remapInput(void *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = *this + 32 * a2;
  v5 = *(v4 + 24);
  *v4 = a3;
  *(v4 + 8) = a4;
  *(v4 + 16) = 0;
  if ((v5 & 1) == 0)
  {
    *(v4 + 24) = 1;
  }

  return this;
}

void *mlir::TypeConverter::SignatureConversion::addInputs(void *result, const void *a2, uint64_t a3)
{
  v3 = result;
  v4 = 8 * a3;
  v5 = *(result + 38);
  if (v5 + ((8 * a3) >> 3) > *(result + 39))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a3)
  {
    result = memcpy((result[18] + 8 * v5), a2, v4);
    LODWORD(v5) = *(v3 + 38);
  }

  *(v3 + 38) = v5 + (v4 >> 3);
  return result;
}

void *mlir::TypeConverter::SignatureConversion::remapInput(void *result, unsigned int a2, uint64_t a3)
{
  v3 = *result + 32 * a2;
  v4 = *(v3 + 24);
  *v3 = a2;
  *(v3 + 8) = 0;
  *(v3 + 16) = a3;
  if ((v4 & 1) == 0)
  {
    *(v3 + 24) = 1;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>,mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::try_emplace<decltype(nullptr)>@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
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
    llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::grow(result, v4);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>,mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::try_emplace<mlir::Type const&>@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
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
    llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::grow(result, v5);
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

uint64_t mlir::TypeConverter::convertTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (!a3)
  {
    return 1;
  }

  v8 = 0;
  while (1)
  {
    v9 = mlir::TypeRange::dereference_iterator(a2, v8);
    if (!mlir::TypeConverter::convertType(a1, v9, a4))
    {
      break;
    }

    if (a3 == ++v8)
    {
      return 1;
    }
  }

  return 0;
}

BOOL mlir::TypeConverter::isLegal(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v5 = v7;
  v6 = 0x100000000;
  v3 = 0;
  if (mlir::TypeConverter::convertType(a1, a2, &v5) && v6 == 1)
  {
    v3 = *v5;
  }

  if (v5 != v7)
  {
    free(v5);
  }

  return v3 == a2;
}

uint64_t mlir::TypeConverter::isLegal(mlir::TypeConverter *this, mlir::Region *a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 1);
  if (v2 == a2)
  {
    return 1;
  }

  while (1)
  {
    v5 = v2 ? (v2 - 8) : 0;
    ArgumentTypes = mlir::Block::getArgumentTypes(v5);
    if (ArgumentTypes != v7)
    {
      break;
    }

LABEL_3:
    v2 = *(v2 + 1);
    if (v2 == a2)
    {
      return 1;
    }
  }

  v8 = ArgumentTypes;
  v9 = v7;
  while (1)
  {
    v10 = (*(*v8 + 8) & 0xFFFFFFFFFFFFFFF8);
    v13 = v15;
    v14 = 0x100000000;
    v11 = 0;
    if (mlir::TypeConverter::convertType(this, v10, &v13) && v14 == 1)
    {
      v11 = *v13;
    }

    if (v13 != v15)
    {
      free(v13);
    }

    if (v11 != v10)
    {
      return 0;
    }

    v8 += 8;
    if (v8 == v9)
    {
      goto LABEL_3;
    }
  }
}

uint64_t mlir::TypeConverter::isSignatureLegal(uint64_t a1, uint64_t a2)
{
  v9 = a2;
  Inputs = mlir::FunctionType::getInputs(&v9);
  v5 = v4;
  Results = mlir::FunctionType::getResults(&v9);
  v14 = a1;
  v11[0] = Inputs;
  v11[1] = Results;
  v12 = Inputs + 8 * v5;
  v13 = Results + 8 * v7;
  v10[0] = v12;
  v10[1] = v13;
  v10[2] = v12;
  v10[3] = v13;
  return _ZNSt3__18__all_ofB8nn200100IN4llvm15concat_iteratorIKN4mlir4TypeEJPS5_S6_EEES7_NS_10__identityEZNKS3_13TypeConverter7isLegalINS1_6detail12concat_rangeIS5_JNS1_8ArrayRefIS4_EESE_EEEEENS_9enable_ifIXaantsr3std14is_convertibleIT_S4_EE5valuentsr3std14is_convertibleISH_PNS3_9OperationEEE5valueEbE4typeEOSH_EUlS4_E_EEbSH_T0_RT2_RT1_(v11, v10, &v14);
}

uint64_t mlir::TypeConverter::convertSignatureArg(uint64_t a1, unsigned int a2, void *a3, uint64_t a4)
{
  v16[1] = *MEMORY[0x277D85DE8];
  __src = v16;
  v15 = 0x100000000;
  if (!mlir::TypeConverter::convertType(a1, a3, &__src))
  {
    v11 = 0;
    v12 = __src;
    if (__src == v16)
    {
      return v11;
    }

LABEL_11:
    free(v12);
    return v11;
  }

  v6 = v15;
  if (v15)
  {
    v7 = __src;
    v8 = *a4 + 32 * a2;
    v9 = *(v8 + 24);
    *v8 = *(a4 + 152);
    *(v8 + 8) = v6;
    *(v8 + 16) = 0;
    if ((v9 & 1) == 0)
    {
      *(v8 + 24) = 1;
    }

    v10 = *(a4 + 152);
    if (v10 + v6 > *(a4 + 156))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy((*(a4 + 144) + 8 * v10), v7, 8 * v6);
    *(a4 + 152) += v6;
  }

  v11 = 1;
  v12 = __src;
  if (__src != v16)
  {
    goto LABEL_11;
  }

  return v11;
}

uint64_t mlir::TypeConverter::convertSignatureArgs(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5)
{
  v21[1] = *MEMORY[0x277D85DE8];
  result = 1;
  v7 = a3;
  if (a3)
  {
    v10 = 0;
    while (1)
    {
      v12 = mlir::TypeRange::dereference_iterator(a2, v10);
      __src = v21;
      v20 = 0x100000000;
      v13 = mlir::TypeConverter::convertType(a1, v12, &__src);
      if (v13)
      {
        v14 = v20;
        if (v20)
        {
          v15 = __src;
          v16 = *a4 + 32 * (a5 + v10);
          v17 = *(v16 + 24);
          *v16 = *(a4 + 152);
          *(v16 + 8) = v14;
          *(v16 + 16) = 0;
          if ((v17 & 1) == 0)
          {
            *(v16 + 24) = 1;
          }

          v18 = *(a4 + 152);
          if (v18 + v14 > *(a4 + 156))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          memcpy((*(a4 + 144) + 8 * v18), v15, 8 * v14);
          *(a4 + 152) += v14;
        }
      }

      if (__src != v21)
      {
        free(__src);
      }

      if (!v13)
      {
        break;
      }

      if (v7 == ++v10)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t mlir::TypeConverter::materializeConversion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v13 = a2 + 32 * a3;
  for (i = -32 * a3; i; i += 32)
  {
    v19 = a6;
    v20[0] = a7;
    v20[1] = a8;
    v18 = a5;
    v15 = *(v13 - 8);
    if (!v15)
    {
      std::__throw_bad_function_call[abi:nn200100]();
    }

    v13 -= 32;
    result = (*(*v15 + 48))(v15, a4, &v19, v20, &v18);
    if (v17)
    {
      return result;
    }
  }

  return 0;
}

unint64_t mlir::TypeConverter::convertTypeAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 392) + 32 * *(a1 + 400);
  for (i = -32 * *(a1 + 400); ; i += 32)
  {
    if (!i)
    {
      return 0;
    }

    v11 = a3;
    v12 = a2;
    v7 = *(v5 - 8);
    if (!v7)
    {
      break;
    }

    v8 = (*(*v7 + 48))(v7, &v12, &v11);
    if ((v8 & 6) == 4)
    {
      return 0;
    }

    v5 -= 32;
    if ((v8 & 6) == 2)
    {
      return v8 & 0xFFFFFFFFFFFFFFF8;
    }
  }

  v10 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::populateFunctionOpInterfaceTypeConversionPattern(v10);
}

void mlir::populateAnyFunctionOpInterfaceTypeConversionPattern()
{
  operator new();
}

{
  {
    v0 = llvm::getTypeName<mlir::FunctionOpInterface>();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    OUTLINED_FUNCTION_63_0(v2);
  }
}

_DWORD *mlir::ConversionTarget::setOpAction(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2;
  result = llvm::MapVector<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo,llvm::DenseMap<mlir::OperationName,unsigned int,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,unsigned int>>,llvm::SmallVector<std::pair<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo>,0u>>::operator[](a1 + 8, &v5);
  *result = a3;
  return result;
}

uint64_t llvm::MapVector<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo,llvm::DenseMap<mlir::OperationName,unsigned int,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,unsigned int>>,llvm::SmallVector<std::pair<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo>,0u>>::operator[](uint64_t a1, uint64_t *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v16 = *a2;
  v17[0] = 0;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::try_emplace<unsigned int>(a1, &v16, v17, &v14);
  v4 = v14;
  if (v15)
  {
    v5 = *(a1 + 24);
    memset(&v17[2], 0, 32);
    v17[2] = 2;
    v6 = *a2;
    v18 = 0;
    v19 = v6;
    v20 = 2;
    v21 = 0;
    v23 = 0;
    v7 = *(a1 + 32);
    if (v7 >= *(a1 + 36))
    {
      if (v5 > &v19 || v5 + 48 * v7 <= &v19)
      {
        llvm::SmallVectorTemplateBase<std::pair<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo>,false>::grow();
      }

      llvm::SmallVectorTemplateBase<std::pair<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo>,false>::grow();
    }

    v8 = v5 + 48 * *(a1 + 32);
    *v8 = v19;
    v9 = v20;
    *(v8 + 12) = v21;
    *(v8 + 8) = v9;
    if (v23)
    {
      if (v23 != v22)
      {
        *(v8 + 40) = v23;
        v23 = 0;
        ++*(a1 + 32);
        v10 = v23;
        if (v23 != v22)
        {
          goto LABEL_6;
        }

LABEL_13:
        (*(*v10 + 32))(v10);
        v11 = v18;
        if (v18 != &v17[4])
        {
LABEL_9:
          if (v11)
          {
            (*(*v11 + 40))(v11);
          }

          goto LABEL_15;
        }

LABEL_14:
        (*(*v11 + 32))(v11);
LABEL_15:
        v12 = *(a1 + 32) - 1;
        *(v4 + 8) = v12;
        return *(a1 + 24) + 48 * v12 + 8;
      }

      *(v8 + 40) = v8 + 16;
      (*(*v23 + 24))(v23);
      ++*(a1 + 32);
      v10 = v23;
      if (v23 == v22)
      {
        goto LABEL_13;
      }
    }

    else
    {
      *(v8 + 40) = 0;
      ++*(a1 + 32);
      v10 = v23;
      if (v23 == v22)
      {
        goto LABEL_13;
      }
    }

LABEL_6:
    if (v10)
    {
      (*(*v10 + 40))(v10);
    }

    v11 = v18;
    if (v18 != &v17[4])
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  v12 = *(v14 + 8);
  return *(a1 + 24) + 48 * v12 + 8;
}

uint64_t *mlir::ConversionTarget::setDialectAction(uint64_t *result, uint64_t a2, const unsigned __int8 *a3, int a4)
{
  if (a3)
  {
    v5 = a2;
    v6 = result;
    v7 = a2 + 16 * a3;
    do
    {
      v8 = *v5;
      v9 = *(v5 + 8);
      v5 += 16;
      v10 = llvm::StringMapImpl::hash(v8, v9, a3);
      result = llvm::StringMap<mlir::ConversionTarget::LegalizationAction,llvm::MallocAllocator>::try_emplace_with_hash<>((v6 + 9), v8, v9, v10);
      *(*result + 8) = a4;
    }

    while (v5 != v7);
  }

  return result;
}

uint64_t mlir::ConversionTarget::getOpAction(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  mlir::ConversionTarget::getOpInfo(a1, a2, &v6);
  if (v9 == 1)
  {
    v2 = v6;
    v3 = v6 >> 8;
    if (v8 == &v7)
    {
      (*(*v8 + 32))(v8);
    }

    else if (v8)
    {
      (*(*v8 + 40))();
    }

    v4 = 0x100000000;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    v2 = 0;
  }

  return v4 | v2 | (v3 << 8);
}

_BYTE *mlir::ConversionTarget::getOpInfo@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = *MEMORY[0x277D85DE8];
  v36 = a2;
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *(a1 + 8);
    v7 = (v5 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v8 = *(v6 + 16 * v7);
    if (v8 == a2)
    {
LABEL_3:
      if (v7 != v5)
      {
        v17 = *(v6 + 16 * v7 + 8);
        if (v17 != *(a1 + 40))
        {
          v18 = *(a1 + 32) + 48 * v17;
          v20 = *(v18 + 8);
          v19 = v18 + 8;
          v21 = *(v19 + 4);
          *a3 = v20;
          *(a3 + 4) = v21;
          result = *(v19 + 32);
          if (result)
          {
            if (result == (v19 + 8))
            {
              *(a3 + 32) = a3 + 8;
              result = (*(**(v19 + 32) + 24))(*(v19 + 32));
LABEL_28:
              *(a3 + 40) = 1;
              return result;
            }

            result = (*(*result + 16))(result);
LABEL_26:
            *(a3 + 32) = result;
            goto LABEL_28;
          }

LABEL_27:
          *(a3 + 32) = 0;
          goto LABEL_28;
        }
      }
    }

    else
    {
      v34 = 1;
      while (v8 != -4096)
      {
        v35 = v7 + v34++;
        v7 = v35 & (v5 - 1);
        v8 = *(v6 + 16 * v7);
        if (v8 == a2)
        {
          goto LABEL_3;
        }
      }
    }
  }

  DialectNamespace = mlir::OperationName::getDialectNamespace(&v36);
  v11 = v10;
  v13 = llvm::StringMapImpl::hash(DialectNamespace, v10, v12);
  Key = llvm::StringMapImpl::FindKey((a1 + 72), DialectNamespace, v11, v13);
  if (Key != -1)
  {
    v15 = Key;
    if (Key != *(a1 + 80))
    {
      v22 = *(a1 + 72);
      v43 = 0;
      v23 = mlir::OperationName::getDialectNamespace(&v36);
      v25 = v24;
      v27 = llvm::StringMapImpl::hash(v23, v24, v26);
      v28 = llvm::StringMapImpl::FindKey((a1 + 96), v23, v25, v27);
      if (v28 == -1 || v28 == *(a1 + 104))
      {
        v37 = *(*(v22 + 8 * v15) + 8);
        v38 = 0;
      }

      else
      {
        v30 = *(*(a1 + 96) + 8 * v28);
        v31 = *(v30 + 32);
        if (v31)
        {
          if (v31 == v30 + 8)
          {
            v40 = &v37;
            (*(*v31 + 24))(v31, &v37);
          }

          else
          {
            v40 = (*(*v31 + 16))(v31);
          }
        }

        else
        {
          v40 = 0;
        }

        std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::swap[abi:nn200100](&v37, v42);
        if (v40 == &v37)
        {
          (*(*v40 + 32))(v40);
        }

        else if (v40)
        {
          (*(*v40 + 40))();
        }

        v37 = *(*(v22 + 8 * v15) + 8);
        v38 = 0;
        if (v43)
        {
          if (v43 == v42)
          {
            v41 = v39;
            (*(*v43 + 24))();
            v32 = v41;
          }

          else
          {
            v32 = (*(*v43 + 16))();
            v41 = v32;
          }

          *a3 = v37;
          *(a3 + 4) = v38;
          if (v32)
          {
            if (v32 == v39)
            {
              *(a3 + 32) = a3 + 8;
              (*(*v32 + 24))(v32);
              v33 = v41;
              *(a3 + 40) = 1;
              if (v33 == v39)
              {
                (*(*v33 + 32))(v33);
              }

              else if (v33)
              {
                (*(*v33 + 40))(v33);
              }

              goto LABEL_20;
            }

            *(a3 + 32) = v32;
LABEL_19:
            *(a3 + 40) = 1;
LABEL_20:
            result = v43;
            if (v43 != v42)
            {
              goto LABEL_31;
            }

            v29 = *(*v43 + 32);
            return v29();
          }

LABEL_18:
          *(a3 + 32) = 0;
          goto LABEL_19;
        }
      }

      *a3 = v37;
      *(a3 + 4) = v38;
      goto LABEL_18;
    }
  }

  result = *(a1 + 144);
  if (!result)
  {
    *a3 = 0;
    *(a3 + 40) = 0;
    return result;
  }

  v37 = 1;
  v38 = 0;
  if (result == (a1 + 120))
  {
    v41 = v39;
    (*(*result + 24))(result, v39);
    result = v41;
    *a3 = v37;
    *(a3 + 4) = v38;
    if (!result)
    {
      goto LABEL_27;
    }
  }

  else
  {
    result = (*(*result + 16))(result);
    v41 = result;
    *a3 = v37;
    *(a3 + 4) = v38;
    if (!result)
    {
      goto LABEL_27;
    }
  }

  if (result != v39)
  {
    goto LABEL_26;
  }

  *(a3 + 32) = a3 + 8;
  (*(*result + 24))(result);
  result = v41;
  *(a3 + 40) = 1;
  if (result == v39)
  {
    v29 = *(*result + 32);
    return v29();
  }

LABEL_31:
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

uint64_t mlir::ConversionTarget::isLegal(mlir::ConversionTarget *this, mlir::Operation *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  mlir::ConversionTarget::getOpInfo(this, *(a2 + 6), &v22);
  if (v26 != 1)
  {
    goto LABEL_7;
  }

  v4 = v22;
  if (v22 != 1)
  {
    goto LABEL_6;
  }

  v21 = a2;
  if (!v25)
  {
    goto LABEL_30;
  }

  v5 = (*(*v25 + 48))(v25, &v21);
  if ((v5 & 0x100) != 0)
  {
    if (v5)
    {
      goto LABEL_10;
    }

LABEL_7:
    v6 = 0;
    v7 = 0;
    if (v26 != 1)
    {
      return v6 | (v7 << 8);
    }

    goto LABEL_25;
  }

  v4 = v22;
LABEL_6:
  if (v4)
  {
    goto LABEL_7;
  }

LABEL_10:
  if (v23 != 1)
  {
    v6 = 0;
    v7 = 1;
    if (v26 != 1)
    {
      return v6 | (v7 << 8);
    }

    goto LABEL_25;
  }

  v8 = *(this + 6);
  v9 = *(this + 16);
  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = *(a2 + 6);
  v11 = ((v10 >> 4) ^ (v10 >> 9)) & (v9 - 1);
  v12 = (v8 + 40 * v11);
  v13 = *v12;
  if (v10 != *v12)
  {
    v14 = 1;
    while (v13 != -4096)
    {
      v15 = v11 + v14++;
      v11 = v15 & (v9 - 1);
      v12 = (v8 + 40 * v11);
      v13 = *v12;
      if (v10 == *v12)
      {
        goto LABEL_20;
      }
    }

LABEL_19:
    v12 = (v8 + 40 * v9);
  }

LABEL_20:
  if (v12 == (v8 + 40 * v9))
  {
    v6 = 1;
    v7 = 1;
    if (v26 != 1)
    {
      return v6 | (v7 << 8);
    }

LABEL_25:
    if (v25 == &v24)
    {
      (*(*v25 + 32))(v25);
    }

    else if (v25)
    {
      (*(*v25 + 40))(v25);
    }

    return v6 | (v7 << 8);
  }

  v21 = a2;
  v16 = v12[4];
  if (v16)
  {
    v17 = (*(*v16 + 48))(v16, &v21);
    v6 = ((v17 & 0x100) == 0) | v17 & 1;
    v7 = 1;
    if (v26 != 1)
    {
      return v6 | (v7 << 8);
    }

    goto LABEL_25;
  }

LABEL_30:
  v19 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::ConversionTarget::isIllegal(v19, v20);
}

uint64_t mlir::ConversionTarget::isIllegal(mlir::ConversionTarget *this, mlir::Operation *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  mlir::ConversionTarget::getOpInfo(this, *(a2 + 6), &v10);
  if (v13 != 1)
  {
    goto LABEL_5;
  }

  if (v10 != 1)
  {
    v4 = v10 == 2;
    if (v13 != 1)
    {
      return v4 & 1;
    }

    goto LABEL_10;
  }

  v9 = a2;
  if (v12)
  {
    v3 = (*(*v12 + 48))(v12, &v9);
    if ((v3 & 0x100) != 0)
    {
      v4 = v3 ^ 1;
      if (v13 != 1)
      {
        return v4 & 1;
      }

LABEL_10:
      if (v12 == &v11)
      {
        (*(*v12 + 32))(v12);
      }

      else if (v12)
      {
        (*(*v12 + 40))(v12);
      }

      return v4 & 1;
    }

LABEL_5:
    v4 = 0;
    if (v13 != 1)
    {
      return v4 & 1;
    }

    goto LABEL_10;
  }

  v6 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::ConversionTarget::setLegalityCallback(v6, v7, v8);
}

uint64_t mlir::ConversionTarget::setLegalityCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 24);
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = *(a1 + 8);
  v5 = (v3 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v6 = *(v4 + 16 * v5);
  if (v6 != a2)
  {
    v16 = 1;
    while (v6 != -4096)
    {
      v17 = v5 + v16++;
      v5 = v17 & (v3 - 1);
      v6 = *(v4 + 16 * v5);
      if (v6 == a2)
      {
        goto LABEL_3;
      }
    }

    goto LABEL_4;
  }

LABEL_3:
  if (v5 == v3)
  {
LABEL_4:
    v7 = (a1 + 40);
    goto LABEL_6;
  }

  v7 = (v4 + 16 * v5 + 8);
LABEL_6:
  v8 = *(a1 + 32) + 48 * *v7;
  v9 = v8 + 16;
  v10 = *(v8 + 40);
  if (!v10)
  {
    v21 = 0;
    v11 = *(a3 + 24);
    if (v11)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  if (v10 == v9)
  {
    v21 = v20;
    v12 = a3;
    (*(*v10 + 24))(v10, v20);
    a3 = v12;
    v11 = *(v12 + 24);
    if (v11)
    {
      goto LABEL_11;
    }

LABEL_14:
    v19 = 0;
    goto LABEL_16;
  }

  v21 = *(v8 + 40);
  *(v8 + 40) = 0;
  v11 = *(a3 + 24);
  if (!v11)
  {
    goto LABEL_14;
  }

LABEL_11:
  if (v11 == a3)
  {
    v19 = v18;
    (*(*v11 + 24))(v11, v18);
  }

  else
  {
    v19 = (*(*v11 + 16))(v11);
  }

LABEL_16:
  composeLegalityCallbacks(v22, v20, v18);
  v13 = *(v9 + 24);
  *(v9 + 24) = 0;
  if (v13 != v9)
  {
    if (v13)
    {
      (*(*v13 + 40))(v13);
    }

    v14 = v23;
    if (v23)
    {
      goto LABEL_20;
    }

LABEL_23:
    *(v9 + 24) = 0;
    goto LABEL_24;
  }

  (*(*v13 + 32))(v13);
  v14 = v23;
  if (!v23)
  {
    goto LABEL_23;
  }

LABEL_20:
  if (v14 == v22)
  {
    *(v9 + 24) = v9;
    (*(*v14 + 24))(v14, v9);
    if (v23 == v22)
    {
      (*(*v23 + 32))(v23);
    }

    else if (v23)
    {
      (*(*v23 + 40))(v23);
    }
  }

  else
  {
    *(v9 + 24) = v14;
    v23 = 0;
  }

LABEL_24:
  if (v19 != v18)
  {
    if (v19)
    {
      (*(*v19 + 40))();
    }

    result = v21;
    if (v21 != v20)
    {
      goto LABEL_28;
    }

    return (*(*result + 32))(result);
  }

  (*(*v19 + 32))(v19);
  result = v21;
  if (v21 == v20)
  {
    return (*(*result + 32))(result);
  }

LABEL_28:
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

uint64_t composeLegalityCallbacks(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      v16 = v15;
      v9 = a3;
      (*(*v4 + 24))(v4, v15);
      a3 = v9;
      v5 = *(v9 + 24);
      if (v5)
      {
LABEL_4:
        if (v5 == a3)
        {
          v18 = v17;
          (*(*v5 + 24))(v5, v17);
          v6 = v16;
          if (v16)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v18 = v5;
          *(a3 + 24) = 0;
          v6 = v16;
          if (v16)
          {
LABEL_6:
            if (v6 != v15)
            {
              v12 = v6;
              v16 = 0;
              v7 = v18;
              if (v18)
              {
                goto LABEL_8;
              }

LABEL_16:
              v14 = 0;
              goto LABEL_22;
            }

            v12 = v11;
            (*(*v6 + 24))(v6, v11);
            v7 = v18;
            if (!v18)
            {
              goto LABEL_16;
            }

LABEL_8:
            if (v7 == v17)
            {
              v14 = v13;
              (*(*v7 + 24))(v7, v13);
            }

            else
            {
              v14 = v7;
              v18 = 0;
            }

LABEL_22:
            operator new();
          }
        }

LABEL_15:
        v12 = 0;
        v7 = v18;
        if (!v18)
        {
          goto LABEL_16;
        }

        goto LABEL_8;
      }
    }

    else
    {
      v16 = *(a2 + 24);
      *(a2 + 24) = 0;
      v5 = *(a3 + 24);
      if (v5)
      {
        goto LABEL_4;
      }
    }

    v18 = 0;
    v6 = v16;
    if (v16)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  result = *(a3 + 24);
  if (result)
  {
    if (result == a3)
    {
      *(a1 + 24) = a1;
      v10 = *(*result + 24);

      return v10();
    }

    else
    {
      *(a1 + 24) = result;
      *(a3 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return result;
}

uint64_t mlir::ConversionTarget::markOpRecursivelyLegal(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v35 = *MEMORY[0x277D85DE8];
  v28 = a2;
  v5 = *(result + 24);
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = *(result + 8);
  v7 = (v5 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v8 = *(v6 + 16 * v7);
  if (v8 != a2)
  {
    v24 = 1;
    while (v8 != -4096)
    {
      v25 = v7 + v24++;
      v7 = v25 & (v5 - 1);
      v8 = *(v6 + 16 * v7);
      if (v8 == a2)
      {
        goto LABEL_3;
      }
    }

    goto LABEL_4;
  }

LABEL_3:
  if (v7 == v5)
  {
LABEL_4:
    v9 = (result + 40);
    goto LABEL_6;
  }

  v9 = (v6 + 16 * v7 + 8);
LABEL_6:
  *(*(result + 32) + 48 * *v9 + 12) = 1;
  if (*(a3 + 24))
  {
    v10 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>>>,mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>>>::operator[](result + 48, &v28);
    v11 = v10[3];
    if (v11)
    {
      if (v11 != v10)
      {
        v32 = v10[3];
        v10[3] = 0;
        v12 = *(a3 + 24);
        if (!v12)
        {
          goto LABEL_20;
        }

LABEL_17:
        if (v12 == a3)
        {
          v30 = v29;
          (*(*v12 + 24))(v12, v29);
        }

        else
        {
          v30 = (*(*v12 + 16))(v12);
        }

LABEL_22:
        composeLegalityCallbacks(v33, v31, v29);
        v19 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>>>,mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>>>::operator[](&v4[6], &v28);
        v20 = v19[3];
        v19[3] = 0;
        if (v20 == v19)
        {
          (*(*v20 + 32))(v20);
          v21 = v34;
          if (v34)
          {
            goto LABEL_26;
          }
        }

        else
        {
          if (v20)
          {
            (*(*v20 + 40))(v20);
          }

          v21 = v34;
          if (v34)
          {
LABEL_26:
            if (v21 != v33)
            {
              v19[3] = v21;
              v34 = 0;
              v22 = v30;
              if (v30 == v29)
              {
                goto LABEL_41;
              }

              goto LABEL_34;
            }

            v19[3] = v19;
            (*(*v34 + 24))(v34, v19);
            v23 = v34;
            if (v34 == v33)
            {
LABEL_40:
              (*(*v23 + 32))(v23);
              v22 = v30;
              if (v30 == v29)
              {
                goto LABEL_41;
              }

              goto LABEL_34;
            }

LABEL_31:
            if (v23)
            {
              (*(*v23 + 40))(v23);
            }

            v22 = v30;
            if (v30 == v29)
            {
LABEL_41:
              (*(*v22 + 32))(v22);
              result = v32;
              if (v32 == v31)
              {
                return (*(*result + 32))(result);
              }

              goto LABEL_37;
            }

LABEL_34:
            if (v22)
            {
              (*(*v22 + 40))(v22);
            }

            result = v32;
            if (v32 == v31)
            {
              return (*(*result + 32))(result);
            }

LABEL_37:
            if (result)
            {
              return (*(*result + 40))(result);
            }

            return result;
          }
        }

        v19[3] = 0;
        v23 = v34;
        if (v34 == v33)
        {
          goto LABEL_40;
        }

        goto LABEL_31;
      }

      v32 = v31;
      (*(*v10[3] + 24))(v10[3], v31);
      v12 = *(a3 + 24);
      if (v12)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v32 = 0;
      v12 = *(a3 + 24);
      if (v12)
      {
        goto LABEL_17;
      }
    }

LABEL_20:
    v30 = 0;
    goto LABEL_22;
  }

  v13 = *(result + 64);
  if (v13)
  {
    v14 = *(result + 48);
    v15 = v13 - 1;
    v16 = v15 & ((a2 >> 4) ^ (a2 >> 9));
    v17 = (v14 + 40 * v16);
    v18 = *v17;
    if (*v17 == a2)
    {
LABEL_13:
      result = v17[4];
      if (result == v17 + 1)
      {
        result = (*(*result + 32))(result);
      }

      else if (result)
      {
        result = (*(*result + 40))(result);
      }

      *v17 = -8192;
      v4[7] = vadd_s32(v4[7], 0x1FFFFFFFFLL);
    }

    else
    {
      v26 = 1;
      while (v18 != -4096)
      {
        v27 = v16 + v26++;
        v16 = v27 & v15;
        v17 = (v14 + 40 * v16);
        v18 = *v17;
        if (*v17 == a2)
        {
          goto LABEL_13;
        }
      }
    }
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>>>,mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>>>::operator[](uint64_t a1, void *a2)
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
    llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>>>,mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>>>::grow(a1, v2);
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
  v5[4] = 0;
  return v5 + 1;
}

uint64_t mlir::ConversionTarget::setLegalityCallback(uint64_t result, uint64_t a2, const unsigned __int8 *a3, uint64_t a4)
{
  v28 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = a2;
    v6 = result;
    v7 = a2 + 16 * a3;
    do
    {
      v8 = *v5;
      v9 = *(v5 + 8);
      v10 = llvm::StringMapImpl::hash(*v5, v9, a3);
      v11 = llvm::StringMap<std::function<std::optional<BOOL> ()(mlir::Operation *)>,llvm::MallocAllocator>::try_emplace_with_hash<>((v6 + 96), v8, v9, v10);
      v12 = *v11;
      v13 = *(*v11 + 32);
      if (v13)
      {
        if (v13 == (v12 + 8))
        {
          v25 = v24;
          (*(*v13 + 24))(v13, v24);
          v14 = *(a4 + 24);
          if (!v14)
          {
LABEL_13:
            v23 = 0;
            goto LABEL_15;
          }
        }

        else
        {
          v25 = v13;
          *(v12 + 32) = 0;
          v14 = *(a4 + 24);
          if (!v14)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
        v25 = 0;
        v14 = *(a4 + 24);
        if (!v14)
        {
          goto LABEL_13;
        }
      }

      if (v14 == a4)
      {
        v23 = v22;
        (*(*v14 + 24))(v14, v22);
      }

      else
      {
        v23 = (*(*v14 + 16))(v14);
      }

LABEL_15:
      composeLegalityCallbacks(v26, v24, v22);
      v16 = llvm::StringMapImpl::hash(v8, v9, v15);
      v17 = llvm::StringMap<std::function<std::optional<BOOL> ()(mlir::Operation *)>,llvm::MallocAllocator>::try_emplace_with_hash<>((v6 + 96), v8, v9, v16);
      v18 = *v17;
      v19 = *v17 + 8;
      v20 = *(*v17 + 32);
      *(v18 + 32) = 0;
      if (v20 == v19)
      {
        (*(*v20 + 32))(v20);
        v21 = v27;
        if (!v27)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v20)
        {
          (*(*v20 + 40))(v20);
        }

        v21 = v27;
        if (!v27)
        {
LABEL_22:
          *(v18 + 32) = 0;
          goto LABEL_23;
        }
      }

      if (v21 == v26)
      {
        *(v18 + 32) = v19;
        (*(*v21 + 24))(v21, v19);
        if (v27 == v26)
        {
          (*(*v27 + 32))(v27);
        }

        else if (v27)
        {
          (*(*v27 + 40))();
        }
      }

      else
      {
        *(v18 + 32) = v21;
        v27 = 0;
      }

LABEL_23:
      if (v23 == v22)
      {
        (*(*v23 + 32))(v23);
        result = v25;
        if (v25 != v24)
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v23)
        {
          (*(*v23 + 40))();
        }

        result = v25;
        if (v25 != v24)
        {
LABEL_29:
          if (result)
          {
            result = (*(*result + 40))(result);
          }

          goto LABEL_4;
        }
      }

      result = (*(*result + 32))(result);
LABEL_4:
      v5 += 16;
    }

    while (v5 != v7);
  }

  return result;
}

uint64_t mlir::ConversionTarget::setLegalityCallback(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a1 + 120;
  v5 = *(a1 + 144);
  if (!v5)
  {
    v13 = 0;
    v6 = *(a2 + 24);
    if (v6)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if (v5 == v4)
  {
    v13 = v12;
    (*(*v5 + 24))(v5, v12);
    v6 = *(a2 + 24);
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_9:
    v11 = 0;
    goto LABEL_11;
  }

  v13 = (*(*v5 + 16))(v5);
  v6 = *(a2 + 24);
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (v6 == a2)
  {
    v11 = v10;
    (*(*v6 + 24))(v6, v10);
  }

  else
  {
    v11 = (*(*v6 + 16))(v6);
  }

LABEL_11:
  composeLegalityCallbacks(v14, v12, v10);
  v7 = *(a1 + 144);
  *(a1 + 144) = 0;
  if (v7 != v4)
  {
    if (v7)
    {
      (*(*v7 + 40))(v7);
    }

    v8 = v15;
    if (v15)
    {
      goto LABEL_15;
    }

LABEL_18:
    *(a1 + 144) = 0;
    goto LABEL_19;
  }

  (*(*v7 + 32))(v7);
  v8 = v15;
  if (!v15)
  {
    goto LABEL_18;
  }

LABEL_15:
  if (v8 == v14)
  {
    *(a1 + 144) = v4;
    (*(*v8 + 24))(v8, v4);
    if (v15 == v14)
    {
      (*(*v15 + 32))(v15);
    }

    else if (v15)
    {
      (*(*v15 + 40))();
    }
  }

  else
  {
    *(a1 + 144) = v8;
    v15 = 0;
  }

LABEL_19:
  if (v11 != v10)
  {
    if (v11)
    {
      (*(*v11 + 40))();
    }

    result = v13;
    if (v13 != v12)
    {
      goto LABEL_23;
    }

    return (*(*result + 32))(result);
  }

  (*(*v11 + 32))(v11);
  result = v13;
  if (v13 == v12)
  {
    return (*(*result + 32))(result);
  }

LABEL_23:
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

uint64_t mlir::registerConversionPDLFunctions(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = &unk_286866680;
  v4 = 0;
  v5 = &v3;
  mlir::PDLPatternModule::registerRewriteFunction(a1 + 32, "convertValue", 0xC, &v3);
  if (v5 == &v3)
  {
    (*(*v5 + 4))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 5))();
  }

  v3 = &unk_286866710;
  v4 = 0;
  v5 = &v3;
  mlir::PDLPatternModule::registerRewriteFunction(a1 + 32, "convertValues", 0xD, &v3);
  if (v5 == &v3)
  {
    (*(*v5 + 4))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 5))();
  }

  v3 = &unk_286866790;
  v4 = 0;
  v5 = &v3;
  mlir::PDLPatternModule::registerRewriteFunction(a1 + 32, "convertType", 0xB, &v3);
  if (v5 == &v3)
  {
    (*(*v5 + 4))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 5))();
  }

  v3 = &unk_286866810;
  v4 = 0;
  v5 = &v3;
  mlir::PDLPatternModule::registerRewriteFunction(a1 + 32, "convertTypes", 0xC, &v3);
  result = v5;
  if (v5 == &v3)
  {
    return (*(*v5 + 4))(v5);
  }

  if (v5)
  {
    return (*(*v5 + 5))();
  }

  return result;
}

void mlir::OperationConverter::OperationConverter(uint64_t a1, uint64_t a2, mlir::FrozenRewritePatternSet *a3, __int128 *a4)
{
  v131 = *MEMORY[0x277D85DE8];
  v5 = *a4;
  v6 = a4[2];
  *(a1 + 16) = a4[1];
  *(a1 + 32) = v6;
  *a1 = v5;
  *(a1 + 48) = a1 + 80;
  v7 = a1 + 48;
  *(a1 + 56) = a1 + 80;
  *(a1 + 64) = 8;
  *(a1 + 72) = 0;
  *(a1 + 144) = a2;
  mlir::PatternApplicator::PatternApplicator(a1 + 152, a3);
  v125 = 0x100000000;
  *(a1 + 216) = a1;
  v113[0] = 0;
  v113[1] = 0;
  v114 = 0;
  v124 = &v126;
  v122[0] = 0;
  v122[1] = 0;
  v123 = 0;
  v119 = 0;
  v120 = 0;
  v121 = 0;
  v116 = 0;
  *v115 = 0u;
  v117 = &v119;
  v118 = 0;
  v127 = &v124;
  v128[0] = v7;
  v128[1] = &v119;
  v128[2] = v122;
  v129 = v115;
  if (v125)
  {
    if (v118)
    {
      v8 = v117;
      v9 = 8 * v118;
      do
      {
        v10 = *v8;
        v11 = *(*v8 + 2);
        if (v11 == 1)
        {
          v12 = *v10;
        }

        else
        {
          LOBYTE(v11) = 0;
          v12 = 0;
        }

        v127 = v12;
        LOBYTE(v128[0]) = v11;
        v13 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>,mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>::operator[](v113, &v127);
        v14 = *(v13 + 2);
        if (v14 >= *(v13 + 3))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*v13 + 8 * v14) = v10;
        ++*(v13 + 2);
        ++v8;
        v9 -= 8;
      }

      while (v9);
    }

    goto LABEL_177;
  }

  v15 = v118;
  if (!v118)
  {
    goto LABEL_177;
  }

LABEL_14:
  v16 = *(v117 + v15 - 1);
  if (v116)
  {
    v17 = ((v16 >> 4) ^ (v16 >> 9)) & (v116 - 1);
    v18 = *(v115[0] + v17);
    if (v16 == v18)
    {
LABEL_16:
      *(v115[0] + v17) = -8192;
      v115[1] = vadd_s32(v115[1], 0x1FFFFFFFFLL);
    }

    else
    {
      v111 = 1;
      while (v18 != -4096)
      {
        v112 = v17 + v111++;
        v17 = v112 & (v116 - 1);
        v18 = *(v115[0] + v17);
        if (v16 == v18)
        {
          goto LABEL_16;
        }
      }
    }
  }

  LODWORD(v118) = v15 - 1;
  v19 = v16[8];
  if (v19)
  {
    v20 = *(v16 + 3);
    v21 = &v20[v19];
    do
    {
      v26 = *v20;
      mlir::ConversionTarget::getOpInfo(*(a1 + 144), *v20, &v127);
      v27 = v130;
      if (v130 == 1)
      {
        v28 = v127;
        v29 = v127 >> 8;
        if (v129 == v128)
        {
          (*(*v129 + 4))(v129);
          v22 = v114;
          if (!v114)
          {
            goto LABEL_29;
          }

          goto LABEL_20;
        }

        if (v129)
        {
          (*(*v129 + 5))(v129);
          v22 = v114;
          if (!v114)
          {
            goto LABEL_29;
          }

          goto LABEL_20;
        }
      }

      else
      {
        v29 = 0;
        v28 = 0;
      }

      v22 = v114;
      if (!v114)
      {
        goto LABEL_29;
      }

LABEL_20:
      v23 = v22 - 1;
      v24 = v23 & ((v26 >> 4) ^ (v26 >> 9));
      v25 = *(v113[0] + 4 * v24);
      if (v25 != v26)
      {
        v30 = 1;
        while (v25 != -4096)
        {
          v31 = v24 + v30++;
          v24 = v31 & v23;
          v25 = *(v113[0] + 4 * v24);
          if (v25 == v26)
          {
            goto LABEL_21;
          }
        }

LABEL_29:
        if (!v27 || (v28 | (v29 << 8)) == 2)
        {
          goto LABEL_13;
        }
      }

LABEL_21:
      ++v20;
    }

    while (v20 != v21);
  }

  v32 = v16[2];
  if (v32 == 1)
  {
    v33 = *v16;
  }

  else
  {
    LOBYTE(v32) = 0;
    v33 = 0;
  }

  v127 = v33;
  LOBYTE(v128[0]) = v32;
  v34 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>,mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>::operator[](v113, &v127);
  v35 = *(v34 + 2);
  if (v35 >= *(v34 + 3))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*v34 + 8 * v35) = v16;
  ++*(v34 + 2);
  v36 = v16[2];
  if (v36 == 1)
  {
    v37 = *v16;
  }

  else
  {
    LOBYTE(v36) = 0;
    v37 = 0;
  }

  v127 = v37;
  LOBYTE(v128[0]) = v36;
  v38 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>>>,mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>>>::operator[](&v119, &v127);
  v39 = v38;
  v40 = *v38;
  if (*(v38 + 8) == *v38)
  {
    v44 = *(v38 + 20);
    if (v44)
    {
      v45 = 8 * v44;
      v46 = *v38;
      while (*v46 != v16)
      {
        ++v46;
        v45 -= 8;
        if (!v45)
        {
          goto LABEL_51;
        }
      }

      v110 = v44 - 1;
      *(v38 + 20) = v110;
      *v46 = v40[v110];
      v42 = v16[2];
      if (v42 != 1)
      {
        goto LABEL_46;
      }

      goto LABEL_52;
    }
  }

  else
  {
    v41 = llvm::SmallPtrSetImplBase::doFind(v38, v16);
    if (v41)
    {
      *v41 = -2;
      ++*(v39 + 24);
      v42 = v16[2];
      if (v42 != 1)
      {
LABEL_46:
        LOBYTE(v42) = 0;
        v43 = 0;
LABEL_53:
        v127 = v43;
        LOBYTE(v128[0]) = v42;
        v47 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>>>,mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>>>::operator[](v122, &v127);
        v48 = v47[1];
        v49 = 16;
        if (v48 == *v47)
        {
          v49 = 20;
        }

        v50 = *(v47 + v49);
        if (v50)
        {
          v51 = 8 * v50;
          v52 = v47[1];
          while (*v52 >= 0xFFFFFFFFFFFFFFFELL)
          {
            ++v52;
            v51 -= 8;
            if (!v51)
            {
              goto LABEL_13;
            }
          }
        }

        else
        {
          v52 = v47[1];
        }

        v53 = (v48 + 8 * v50);
        if (v52 == v53)
        {
          goto LABEL_13;
        }

        v54 = *v52;
        while (1)
        {
          v55 = v119;
          v56 = v121;
          if (!v121)
          {
            v59 = 0;
            v65 = v120;
            if (4 * v120 + 4 >= 3 * v121)
            {
              goto LABEL_140;
            }

            goto LABEL_75;
          }

          v57 = v121 - 1;
          v58 = ((v54 >> 4) ^ (v54 >> 9)) & (v121 - 1);
          v59 = v119 + 56 * v58;
          v60 = *v59;
          if (v54 != *v59)
          {
            break;
          }

LABEL_79:
          v68 = *(v59 + 1);
          v67 = *(v59 + 2);
          v66 = v59 + 8;
          v63 = v67 == v68;
          v69 = 16;
          if (v63)
          {
            v69 = 20;
          }

          v70 = *&v66[v69];
          if (v70)
          {
            v71 = 8 * v70;
            v72 = v67;
            while (*v72 >= 0xFFFFFFFFFFFFFFFELL)
            {
              ++v72;
              v71 -= 8;
              if (!v71)
              {
                goto LABEL_133;
              }
            }
          }

          else
          {
            v72 = v67;
          }

          v73 = &v67[v70];
          if (v72 == v73)
          {
            goto LABEL_133;
          }

          v74 = *v72;
          do
          {
            v75 = v116;
            if (!v116)
            {
              goto LABEL_114;
            }

            v76 = ((v74 >> 4) ^ (v74 >> 9)) & (v116 - 1);
            v77 = (v115[0] + 8 * v76);
            v78 = *v77;
            if (v74 == *v77)
            {
              goto LABEL_106;
            }

            v79 = 0;
            v80 = 1;
            while (v78 != -4096)
            {
              if (v79)
              {
                v81 = 0;
              }

              else
              {
                v81 = v78 == -8192;
              }

              if (v81)
              {
                v79 = v77;
              }

              v82 = v76 + v80++;
              v76 = v82 & (v116 - 1);
              v77 = (v115[0] + 8 * v76);
              v78 = *v77;
              if (v74 == *v77)
              {
                goto LABEL_106;
              }
            }

            v83 = (v79 ? v79 : v77);
            if (4 * LODWORD(v115[1]) + 4 >= 3 * v116)
            {
LABEL_114:
              v75 = 2 * v116;
LABEL_115:
              llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::grow(v115, v75);
              if (v116)
              {
                v84 = v116 - 1;
                v85 = (v116 - 1) & ((v74 >> 4) ^ (v74 >> 9));
                v83 = v115[0] + 8 * v85;
                v86 = *v83;
                if (v74 != *v83)
                {
                  v87 = 0;
                  v88 = 1;
                  while (v86 != -4096)
                  {
                    if (v87)
                    {
                      v89 = 0;
                    }

                    else
                    {
                      v89 = v86 == -8192;
                    }

                    if (v89)
                    {
                      v87 = v83;
                    }

                    v90 = v85 + v88++;
                    v85 = v90 & v84;
                    v83 = v115[0] + 8 * (v90 & v84);
                    v86 = *v83;
                    if (v74 == *v83)
                    {
                      goto LABEL_128;
                    }
                  }

                  if (v87)
                  {
                    v83 = v87;
                  }
                }
              }

              else
              {
                v83 = 0;
              }

LABEL_128:
              ++LODWORD(v115[1]);
              if (*v83 == -4096)
              {
                goto LABEL_104;
              }

LABEL_103:
              --HIDWORD(v115[1]);
              goto LABEL_104;
            }

            if (v116 + ~LODWORD(v115[1]) - HIDWORD(v115[1]) <= v116 >> 3)
            {
              goto LABEL_115;
            }

            ++LODWORD(v115[1]);
            if (*v83 != -4096)
            {
              goto LABEL_103;
            }

LABEL_104:
            *v83 = v74;
            if (v118 >= HIDWORD(v118))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            *(v117 + v118) = v74;
            LODWORD(v118) = v118 + 1;
            do
            {
LABEL_106:
              if (++v72 == v73)
              {
                goto LABEL_133;
              }

              v74 = *v72;
            }

            while (*v72 >= 0xFFFFFFFFFFFFFFFELL);
          }

          while (v72 != v73);
          do
          {
LABEL_133:
            if (++v52 == v53)
            {
              goto LABEL_13;
            }

            v54 = *v52;
          }

          while (*v52 >= 0xFFFFFFFFFFFFFFFELL);
          if (v52 == v53)
          {
LABEL_13:
            v15 = v118;
            if (v118)
            {
              goto LABEL_14;
            }

LABEL_177:
            if (v117 != &v119)
            {
              free(v117);
            }

            llvm::deallocate_buffer(v115[0], (8 * v116));
          }
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
          v59 = v119 + 56 * (v64 & v57);
          v60 = *v59;
          if (v54 == *v59)
          {
            goto LABEL_79;
          }
        }

        if (v61)
        {
          v59 = v61;
        }

        v65 = v120;
        if (4 * v120 + 4 >= 3 * v121)
        {
LABEL_140:
          v91 = 2 * v121;
          goto LABEL_142;
        }

LABEL_75:
        if (v121 + ~v65 - HIDWORD(v120) <= v121 >> 3)
        {
          v91 = v121;
LABEL_142:
          v92 = (v91 - 1) | ((v91 - 1) >> 1);
          v93 = v92 | (v92 >> 2) | ((v92 | (v92 >> 2)) >> 4);
          v94 = ((v93 | (v93 >> 8)) >> 16) | v93 | (v93 >> 8);
          if ((v94 + 1) > 0x40)
          {
            v95 = v94 + 1;
          }

          else
          {
            v95 = 64;
          }

          v121 = v95;
          buffer = llvm::allocate_buffer(56 * v95, 8uLL);
          v119 = buffer;
          if (v55)
          {
            llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>>>,mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>>>::moveFromOldBuckets(&v119, v55, &v55[7 * v56]);
            llvm::deallocate_buffer(v55, (56 * v56));
          }

          v120 = 0;
          v97 = v121;
          if (!v121)
          {
            goto LABEL_164;
          }

          v98 = 56 * v121 - 56;
          v99 = buffer;
          if (v98 < 0x38)
          {
            goto LABEL_182;
          }

          v100 = v98 / 0x38 + 1;
          v99 = (buffer + 56 * (v100 & 0xFFFFFFFFFFFFFFELL));
          v101 = buffer;
          v102 = v100 & 0xFFFFFFFFFFFFFFELL;
          do
          {
            *v101 = -4096;
            *(v101 + 7) = -4096;
            v101 = (v101 + 112);
            v102 -= 2;
          }

          while (v102);
          if (v100 != (v100 & 0xFFFFFFFFFFFFFFELL))
          {
LABEL_182:
            do
            {
              *v99 = -4096;
              v99 = (v99 + 56);
            }

            while (v99 != (buffer + 56 * v97));
          }

          if (v97)
          {
            v103 = v97 - 1;
            v104 = (v97 - 1) & ((v54 >> 4) ^ (v54 >> 9));
            v59 = buffer + 56 * v104;
            v105 = *v59;
            if (v54 != *v59)
            {
              v106 = 0;
              v107 = 1;
              while (v105 != -4096)
              {
                if (v106)
                {
                  v108 = 0;
                }

                else
                {
                  v108 = v105 == -8192;
                }

                if (v108)
                {
                  v106 = v59;
                }

                v109 = v104 + v107++;
                v104 = v109 & v103;
                v59 = buffer + 56 * (v109 & v103);
                v105 = *v59;
                if (v54 == *v59)
                {
                  goto LABEL_165;
                }
              }

              if (v106)
              {
                v59 = v106;
              }
            }
          }

          else
          {
LABEL_164:
            v59 = 0;
          }

LABEL_165:
          LODWORD(v120) = v120 + 1;
          if (*v59 != -4096)
          {
            goto LABEL_77;
          }
        }

        else
        {
          LODWORD(v120) = v65 + 1;
          if (*v59 != -4096)
          {
LABEL_77:
            --HIDWORD(v120);
          }
        }

        *v59 = v54;
        *(v59 + 1) = v59 + 40;
        *(v59 + 2) = v59 + 40;
        *(v59 + 3) = 2;
        *(v59 + 8) = 0;
        goto LABEL_79;
      }

LABEL_52:
      v43 = *v16;
      goto LABEL_53;
    }
  }

LABEL_51:
  v42 = v16[2];
  if (v42 != 1)
  {
    goto LABEL_46;
  }

  goto LABEL_52;
}

void mlir::applyPartialConversion(uint64_t a1, uint64_t a2, mlir::FrozenRewritePatternSet *a3, __int128 *a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = a1;
  v4 = a4[1];
  v5[0] = *a4;
  v5[1] = v4;
  v5[2] = a4[2];
  mlir::OperationConverter::OperationConverter(v7, a2, a3, v5);
}

void sub_2565EF4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  mlir::OperationConverter::convertOperations(va1, va, 1);
  mlir::PatternApplicator::~PatternApplicator((v7 + 152));
}

void mlir::applyFullConversion(uint64_t a1, uint64_t a2, mlir::FrozenRewritePatternSet *a3, __int128 *a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = a1;
  v4 = a4[1];
  v5[0] = *a4;
  v5[1] = v4;
  v5[2] = a4[2];
  mlir::OperationConverter::OperationConverter(v7, a2, a3, v5);
}

void sub_2565EF61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  mlir::OperationConverter::convertOperations(va1, va, 1);
  mlir::PatternApplicator::~PatternApplicator((v7 + 152));
}

void mlir::applyAnalysisConversion(uint64_t a1, uint64_t a2, mlir::FrozenRewritePatternSet *a3, __int128 *a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = a1;
  v4 = a4[1];
  v5[0] = *a4;
  v5[1] = v4;
  v5[2] = a4[2];
  mlir::OperationConverter::OperationConverter(v7, a2, a3, v5);
}

void sub_2565EF778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  mlir::OperationConverter::convertOperations(va1, va, 1);
  mlir::PatternApplicator::~PatternApplicator((v7 + 152));
}

void mlir::detail::ConversionPatternRewriterImpl::~ConversionPatternRewriterImpl(llvm **this)
{
  mlir::detail::ConversionPatternRewriterImpl::~ConversionPatternRewriterImpl(this);
}

{
  *this = &unk_286865EA0;
  llvm::deallocate_buffer(this[44], (16 * *(this + 92)));
}

void sub_2565EF804()
{

  JUMPOUT(0x259C63180);
}

void mlir::ConversionPattern::~ConversionPattern(mlir::ConversionPattern *this)
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

uint64_t mlir::ConversionPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (((*(*a1 + 24))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 48))(a1, a2, a3, a4, a5);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::UnrealizedConversionCastOp,mlir::Type &,mlir::ValueRange &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[5] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::UnrealizedConversionCastOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::UnrealizedConversionCastOp,mlir::Type &,mlir::ValueRange &>(v16, v17, v15);
  }

  mlir::OperationState::OperationState(v16, a2, v9);
  mlir::TypeRange::TypeRange(v17, a3, 1uLL);
  mlir::UnrealizedConversionCastOp::build(a1, v16, v17[0], v17[1], *a4, *(a4 + 8), 0, 0);
  v11 = mlir::OpBuilder::create(a1, v16);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::UnrealizedConversionCastOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  return v12;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::UnrealizedConversionCastOp,anonymous namespace::UnresolvedMaterializationRewrite *,llvm::DenseMapInfo<mlir::UnrealizedConversionCastOp,void>,llvm::detail::DenseMapPair<mlir::UnrealizedConversionCastOp,anonymous namespace::UnresolvedMaterializationRewrite *>>,mlir::UnrealizedConversionCastOp,anonymous namespace::UnresolvedMaterializationRewrite *,llvm::DenseMapInfo<mlir::UnrealizedConversionCastOp,void>,llvm::detail::DenseMapPair<mlir::UnrealizedConversionCastOp,anonymous namespace::UnresolvedMaterializationRewrite *>>::LookupBucketFor<mlir::UnrealizedConversionCastOp>(uint64_t result, int a2, void *a3, void *a4)
{
  if (a2)
  {
    v4 = HIDWORD(*a3);
    v5 = 0x9DDFEA08EB382D69 * ((8 * *a3 - 0xAE502812AA7333) ^ v4);
    LODWORD(v4) = -348639895 * ((((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 32) >> 15) ^ (-348639895 * (v4 ^ (v5 >> 47) ^ v5)));
    v6 = a2 - 1;
    v7 = v4 & (a2 - 1);
    v8 = (result + 16 * v7);
    v9 = *v8;
    if (*a3 == *v8)
    {
LABEL_3:
      *a4 = v8;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v9 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v9 == -8192;
        }

        if (v12)
        {
          v10 = v8;
        }

        v13 = v7 + v11++;
        v7 = v13 & v6;
        v8 = (result + 16 * (v13 & v6));
        v9 = *v8;
        if (*a3 == *v8)
        {
          goto LABEL_3;
        }
      }

      if (v10)
      {
        v8 = v10;
      }

      *a4 = v8;
    }
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::UnrealizedConversionCastOp,anonymous namespace::UnresolvedMaterializationRewrite *,llvm::DenseMapInfo<mlir::UnrealizedConversionCastOp,void>,llvm::detail::DenseMapPair<mlir::UnrealizedConversionCastOp,anonymous namespace::UnresolvedMaterializationRewrite *>>,mlir::UnrealizedConversionCastOp,anonymous namespace::UnresolvedMaterializationRewrite *,llvm::DenseMapInfo<mlir::UnrealizedConversionCastOp,void>,llvm::detail::DenseMapPair<mlir::UnrealizedConversionCastOp,anonymous namespace::UnresolvedMaterializationRewrite *>>::grow(uint64_t a1, int a2)
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
          v24 = 0x9DDFEA08EB382D69 * ((8 * *v16 - 0xAE502812AA7333) ^ HIDWORD(*v16));
          v25 = 0x9DDFEA08EB382D69 * (HIDWORD(v23) ^ (v24 >> 47) ^ v24);
          LODWORD(v24) = -348639895 * ((v25 >> 47) ^ v25);
          v26 = *(a1 + 16) - 1;
          v27 = v26 & v24;
          v22 = (*a1 + 16 * v27);
          v28 = *v22;
          if (v23 != *v22)
          {
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
                v29 = v22;
              }

              v32 = v27 + v30++;
              v27 = v32 & v26;
              v22 = (*a1 + 16 * (v32 & v26));
              v28 = *v22;
              if (v23 == *v22)
              {
                goto LABEL_24;
              }
            }

            if (v29)
            {
              v22 = v29;
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

void mlir::detail::ConversionPatternRewriterImpl::SingleEraseRewriter::eraseOp(mlir::detail::ConversionPatternRewriterImpl::SingleEraseRewriter *this, mlir::Operation *a2)
{
  v4 = *(this + 18);
  if (v4)
  {
    v5 = *(this + 7);
    v6 = (v4 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v7 = *(v5 + 8 * v6);
    if (v7 == a2)
    {
LABEL_3:
      if (v6 != v4)
      {
        return;
      }
    }

    else
    {
      v15 = 1;
      while (v7 != -4096)
      {
        v16 = v6 + v15++;
        v6 = v16 & (v4 - 1);
        v7 = *(v5 + 8 * v6);
        if (v7 == a2)
        {
          goto LABEL_3;
        }
      }
    }
  }

  v8 = *(a2 + 9);
  if (v8)
  {
    v9 = a2 - 16;
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, i);
      while (1)
      {
        v12 = *NextResultAtOffset;
        if (!*NextResultAtOffset)
        {
          break;
        }

        v13 = v12[1];
        if (v13)
        {
          v14 = *v12;
          *v13 = *v12;
          if (v14)
          {
            *(v14 + 8) = v13;
          }
        }

        *v12 = 0;
        v12[1] = 0;
        v12[3] = 0;
      }
    }
  }

  mlir::RewriterBase::eraseOp(this, a2);
}

void mlir::detail::ConversionPatternRewriterImpl::SingleEraseRewriter::eraseBlock(mlir::detail::ConversionPatternRewriterImpl::SingleEraseRewriter *this, mlir::Block *a2)
{
  v3 = *(this + 18);
  if (v3)
  {
    v4 = *(this + 7);
    v5 = (v3 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v6 = *(v4 + 8 * v5);
    if (v6 == a2)
    {
LABEL_3:
      if (v5 != v3)
      {
        return;
      }
    }

    else
    {
      v8 = 1;
      while (v6 != -4096)
      {
        v9 = v5 + v8++;
        v5 = v9 & (v3 - 1);
        v6 = *(v4 + 8 * v5);
        if (v6 == a2)
        {
          goto LABEL_3;
        }
      }
    }
  }

  mlir::Block::dropAllDefinedValueUses(a2);

  mlir::RewriterBase::eraseBlock(this, a2);
}

void mlir::detail::ConversionPatternRewriterImpl::SingleEraseRewriter::~SingleEraseRewriter(mlir::detail::ConversionPatternRewriterImpl::SingleEraseRewriter *this)
{
  *this = &unk_286866088;
  *(this + 5) = &unk_2868660F8;
  llvm::deallocate_buffer(*(this + 7), (8 * *(this + 18)));
}

{
  *this = &unk_286866088;
  *(this + 5) = &unk_2868660F8;
  llvm::deallocate_buffer(*(this + 7), (8 * *(this + 18)));
}

void sub_2565F0184(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  mlir::RewriterBase::~RewriterBase(v12);
}

void sub_2565F0208(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  mlir::RewriterBase::~RewriterBase(v12);

  JUMPOUT(0x259C63180);
}

void non-virtual thunk tomlir::detail::ConversionPatternRewriterImpl::SingleEraseRewriter::~SingleEraseRewriter(mlir::detail::ConversionPatternRewriterImpl::SingleEraseRewriter *this)
{
  *(this - 5) = &unk_286866088;
  *this = &unk_2868660F8;
  llvm::deallocate_buffer(*(this + 2), (8 * *(this + 8)));
}

{
  *(this - 5) = &unk_286866088;
  *this = &unk_2868660F8;
  llvm::deallocate_buffer(*(this + 2), (8 * *(this + 8)));
}

void sub_2565F0308(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  mlir::RewriterBase::~RewriterBase(v12);
}

void sub_2565F038C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  mlir::RewriterBase::~RewriterBase(v12);

  JUMPOUT(0x259C63180);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>,void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
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
  v8 = (*result + 8 * v7);
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
      v8 = (v5 + 8 * (v15 & v6));
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
    llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::LookupBucketFor<mlir::Operation *>(v16, a2, &v18);
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
  *(a3 + 8) = v5 + 8 * v4;
  *(a3 + 16) = v10;
  return result;
}

uint64_t llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<anonymous namespace::OperationLegalizer::legalize(mlir::Operation *,mlir::ConversionPatternRewriter &)::$_0>(uint64_t result, uint64_t a2)
{
  v4 = a2;
  if (**result != a2)
  {
    v2 = *(*(result + 8) + 40);
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v2 + 240, &v4, v5);
    if (v5[16] == 1)
    {
      v3 = *(v2 + 272);
      if (v3 >= *(v2 + 276))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*(v2 + 264) + 8 * v3) = v4;
      ++*(v2 + 272);
    }
  }

  return result;
}

void mlir::detail::ConversionPatternRewriterImpl::resetState(int32x2_t *a1, unint64_t a2, __int32 a3)
{
  v5 = HIDWORD(a2);
  mlir::detail::ConversionPatternRewriterImpl::undoRewrites(a1, a2);
  v6 = a1[34].u32[0];
  if (v5 == v6)
  {
    v7 = a1[39].u32[0];
    if (v7 == a3)
    {
      return;
    }

    goto LABEL_25;
  }

  v8 = a1[32].i32[0];
  if (v8)
  {
    v9 = a1[30];
    v10 = v8 - 1;
    v11 = *&a1[33] - 8;
    do
    {
      v12 = *(v11 + 8 * v6);
      v13 = ((v12 >> 4) ^ (v12 >> 9)) & v10;
      v14 = *(*&v9 + 8 * v13);
      if (v12 == v14)
      {
LABEL_7:
        *(*&v9 + 8 * v13) = -8192;
        a1[31] = vadd_s32(a1[31], 0x1FFFFFFFFLL);
      }

      else
      {
        v15 = 1;
        while (v14 != -4096)
        {
          v16 = v13 + v15++;
          v13 = v16 & v10;
          v14 = *(*&v9 + 8 * v13);
          if (v12 == v14)
          {
            goto LABEL_7;
          }
        }
      }

      v6 = (v6 - 1);
    }

    while (v5 != v6);
  }

  else
  {
    v17 = v6 - v5;
    if ((v6 - v5) < 2)
    {
      goto LABEL_38;
    }

    v18 = (v6 - 1);
    v19 = v18 >= v18 - v5;
    v20 = (v18 - v5) >> 32;
    if (!v19 || v20 != 0)
    {
      goto LABEL_38;
    }

    LODWORD(v6) = v6 - (v17 & 0xFFFFFFFE);
    v22 = v17 & 0xFFFFFFFE;
    do
    {
      v22 -= 2;
    }

    while (v22);
    if (v17 != (v17 & 0xFFFFFFFE))
    {
LABEL_38:
      do
      {
        v6 = (v6 - 1);
      }

      while (v5 != v6);
    }
  }

  a1[34].i32[0] = v6;
  v7 = a1[39].u32[0];
  if (v7 != a3)
  {
LABEL_25:
    v23 = a1[37].i32[0];
    if (v23)
    {
      v24 = a1[35];
      v25 = v23 - 1;
      v26 = *&a1[38] - 8;
      do
      {
        v27 = *(v26 + 8 * v7);
        v28 = ((v27 >> 4) ^ (v27 >> 9)) & v25;
        v29 = *(*&v24 + 8 * v28);
        if (v27 == v29)
        {
LABEL_28:
          *(*&v24 + 8 * v28) = -8192;
          a1[36] = vadd_s32(a1[36], 0x1FFFFFFFFLL);
        }

        else
        {
          v30 = 1;
          while (v29 != -4096)
          {
            v31 = v28 + v30++;
            v28 = v31 & v25;
            v29 = *(*&v24 + 8 * v28);
            if (v27 == v29)
            {
              goto LABEL_28;
            }
          }
        }

        --v7;
      }

      while (v7 != a3);
    }

    a1[39].i32[0] = a3;
  }
}

uint64_t llvm::function_ref<BOOL ()(mlir::Pattern const&)>::callback_fn<anonymous namespace::OperationLegalizer::legalizeWithPattern(mlir::Operation *,mlir::ConversionPatternRewriter &)::$_0>(uint64_t a1, char *a2)
{
  v3 = *a1;
  if ((a2[16] & 4) == 0)
  {
    v4 = *v3;
    if (*(v3 + 1) != *v3)
    {
      goto LABEL_3;
    }

    v9 = *(v3 + 5);
    if (v9)
    {
      v10 = 8 * v9;
      v11 = *v3;
      while (*v11 != a2)
      {
        ++v11;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      return 0;
    }

LABEL_9:
    if (v9 < *(v3 + 4))
    {
      *(v3 + 5) = v9 + 1;
      v4[v9] = a2;
    }

    else
    {
LABEL_3:
      v5 = a2;
      llvm::SmallPtrSetImplBase::insert_imp_big(*a1, a2);
      v7 = v6;
      a2 = v5;
      if ((v7 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v12 = *(*(v3 + 21) + 32);
  if (v12)
  {
    (*(*v12 + 72))(v12, a2, **(a1 + 8));
  }

  return 1;
}

void llvm::function_ref<void ()(mlir::Pattern const&)>::callback_fn<anonymous namespace::OperationLegalizer::legalizeWithPattern(mlir::Operation *,mlir::ConversionPatternRewriter &)::$_1>(uint64_t *a1, const void *a2)
{
  v4 = *a1;
  v5 = *(*(*a1 + 168) + 32);
  if (v5)
  {
    (*(*v5 + 80))(v5, a2, 0);
  }

  mlir::detail::ConversionPatternRewriterImpl::resetState(a1[1], *a1[2], *(a1[2] + 8));
  v6 = *v4;
  if (*(v4 + 8) == *v4)
  {
    v8 = *(v4 + 20);
    if (v8)
    {
      v9 = 8 * v8;
      for (i = *v4; *i != a2; ++i)
      {
        v9 -= 8;
        if (!v9)
        {
          return;
        }
      }

      v11 = v8 - 1;
      *(v4 + 20) = v11;
      *i = v6[v11];
    }
  }

  else
  {
    v7 = llvm::SmallPtrSetImplBase::doFind(v4, a2);
    if (v7)
    {
      *v7 = -2;
      ++*(v4 + 24);
    }
  }
}

uint64_t llvm::function_ref<llvm::LogicalResult ()(mlir::Pattern const&)>::callback_fn<anonymous namespace::OperationLegalizer::legalizeWithPattern(mlir::Operation *,mlir::ConversionPatternRewriter &)::$_2>(_anonymous_namespace_::OperationLegalizer **a1, void *a2)
{
  v2 = a2;
  v74 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(v6 + 5);
  v8 = *(v7 + 184);
  v63 = *a1[1];
  v64 = v68;
  v65 = v68;
  v66 = 16;
  v67 = 0;
  v9 = *v5;
  if (v9 == v8)
  {
    goto LABEL_2;
  }

  v61 = v5;
  v62 = v6;
  while (1)
  {
    v11 = *(*(v7 + 176) + 8 * v9);
    v12 = *(v11 + 8);
    if (v11)
    {
      v13 = v12 > 5;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      goto LABEL_5;
    }

    v13 = v12 > 5;
    v14 = (1 << v12) & 0x32;
    if (!v13 && v14 != 0)
    {
      goto LABEL_5;
    }

    v16 = *(v11 + 24);
    ParentOp = mlir::Block::getParentOp(v16);
    v18 = !ParentOp || ParentOp == v63;
    if (v18 || ((*(v16 + 7) - *(v16 + 6)) & 0x7FFFFFFF8) == 0)
    {
      goto LABEL_5;
    }

    v19 = ParentOp;
    Parent = mlir::Block::getParent(v16);
    v21 = *(v7 + 368);
    if (v21)
    {
      v22 = *(v7 + 352);
      v23 = v21 - 1;
      v24 = ((Parent >> 4) ^ (Parent >> 9)) & (v21 - 1);
      v25 = *(v22 + 16 * v24);
      if (v25 != Parent)
      {
        v27 = 1;
        while (v25 != -4096)
        {
          v28 = v24 + v27++;
          v24 = v28 & v23;
          v25 = *(v22 + 16 * v24);
          if (v25 == Parent)
          {
            goto LABEL_22;
          }
        }

        goto LABEL_33;
      }

LABEL_22:
      v26 = *(v22 + 16 * v24 + 8);
      if (v26)
      {
        break;
      }
    }

LABEL_33:
    v29 = HIDWORD(v66);
    if (HIDWORD(v66) == v67)
    {
      v30 = *v61;
      v31 = *(v7 + 184);
      while (1)
      {
        if (v30 == v31)
        {
          goto LABEL_51;
        }

        v32 = *(*(v7 + 176) + 8 * v30);
        if (v32 && *(v32 + 8) == 9)
        {
          break;
        }

LABEL_37:
        ++v30;
      }

      v34 = *(v32 + 24);
      if (v65 != v64)
      {
        goto LABEL_35;
      }

      if (v29)
      {
        v35 = 8 * v29;
        v36 = v64;
        while (*v36 != v34)
        {
          ++v36;
          v35 -= 8;
          if (!v35)
          {
            goto LABEL_49;
          }
        }

        goto LABEL_36;
      }

LABEL_49:
      if (v29 < v66)
      {
        HIDWORD(v66) = v29 + 1;
        v64[v29] = v34;
      }

      else
      {
LABEL_35:
        llvm::SmallPtrSetImplBase::insert_imp_big(&v64, v34);
      }

LABEL_36:
      v29 = HIDWORD(v66);
      goto LABEL_37;
    }

LABEL_51:
    v6 = v62;
    if (v65 == v64)
    {
      if (v29)
      {
        v38 = 8 * v29;
        v39 = v64;
        while (*v39 != v19)
        {
          ++v39;
          v38 -= 8;
          if (!v38)
          {
            goto LABEL_59;
          }
        }

        goto LABEL_5;
      }

LABEL_59:
      if (v29 < v66)
      {
        HIDWORD(v66) = v29 + 1;
        v64[v29] = v19;
        {
          goto LABEL_61;
        }

        goto LABEL_5;
      }
    }

    llvm::SmallPtrSetImplBase::insert_imp_big(&v64, v19);
    {
LABEL_61:
      v40 = 1;
      v41 = v65;
      if (v65 == v64)
      {
        goto LABEL_65;
      }

LABEL_64:
      free(v41);
      goto LABEL_65;
    }

LABEL_5:
    if (v8 == ++v9)
    {
      v40 = 0;
      v41 = v65;
      if (v65 == v64)
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    }
  }

  mlir::TypeConverter::convertBlockSignature(v26, v16, v69);
  if (v73 == 1)
  {
    mlir::detail::ConversionPatternRewriterImpl::applySignatureConversion(v7, v62, v16, v26, v69);
    if (v73)
    {
      if (v71 != &v72)
      {
        free(v71);
      }

      v6 = v62;
      if (v69[0] != &v70)
      {
        free(v69[0]);
      }
    }

    else
    {
      v6 = v62;
    }

    goto LABEL_5;
  }

  v40 = 1;
  v6 = v62;
  v41 = v65;
  if (v65 != v64)
  {
    goto LABEL_64;
  }

LABEL_65:
  v2 = a2;
  if ((v40 & 1) == 0)
  {
    v49 = *v61;
    if (v8 == v49)
    {
LABEL_2:
      v10 = 1;
      goto LABEL_67;
    }

    v50 = v8 - v49;
    v51 = 8 * v49;
    while (1)
    {
      v52 = *(*(v7 + 176) + v51);
      v53 = v52 && *(v52 + 8) == 7;
      {
        break;
      }

      v51 += 8;
      if (!--v50)
      {
        v55 = *v61;
        if (v8 == v55)
        {
          goto LABEL_2;
        }

        v56 = v8 - v55;
        v57 = 8 * v55;
        while (1)
        {
          v58 = *(*(v7 + 176) + v57);
          v59 = v58 && *(v58 + 8) == 9;
          {
            goto LABEL_66;
          }

          v57 += 8;
          v10 = 1;
          if (!--v56)
          {
            goto LABEL_67;
          }
        }
      }
    }
  }

LABEL_66:
  v10 = 0;
LABEL_67:
  v42 = *v4;
  if (*(v4 + 1) != *v4)
  {
    v43 = llvm::SmallPtrSetImplBase::doFind(v4, v2);
    if (v43)
    {
      *v43 = -2;
      ++*(v4 + 6);
      if (v10)
      {
        goto LABEL_77;
      }

LABEL_76:
      mlir::detail::ConversionPatternRewriterImpl::resetState(a1[4], *a1[3], *(a1[3] + 2));
      goto LABEL_77;
    }

LABEL_75:
    if (v10)
    {
      goto LABEL_77;
    }

    goto LABEL_76;
  }

  v44 = *(v4 + 5);
  if (!v44)
  {
    goto LABEL_75;
  }

  v45 = 8 * v44;
  v46 = *v4;
  while (*v46 != v2)
  {
    ++v46;
    v45 -= 8;
    if (!v45)
    {
      goto LABEL_75;
    }
  }

  v54 = v44 - 1;
  *(v4 + 5) = v54;
  *v46 = v42[v54];
  if ((v10 & 1) == 0)
  {
    goto LABEL_76;
  }

LABEL_77:
  v47 = *(*(v4 + 21) + 32);
  if (v47)
  {
    (*(*v47 + 80))(v47, v2, v10);
  }

  return v10;
}

__n128 llvm::interleave<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator>,mlir::Diagnostic& mlir::Diagnostic::appendRange<mlir::ValueTypeRange<mlir::OperandRange>>(mlir::ValueTypeRange<mlir::OperandRange> const&,char const*)::{lambda(mlir::ValueTypeRange<mlir::OperandRange> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<mlir::ValueTypeRange<mlir::OperandRange>>(mlir::ValueTypeRange<mlir::OperandRange> const&,char const*)::{lambda(void)#1},void>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char **a7)
{
  if (a2 != a4)
  {
    v32 = v7;
    v33 = v8;
    v14 = a1 + 32 * a2;
    mlir::DiagnosticArgument::DiagnosticArgument(&v30, *(*(v14 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v15 = *(a5 + 16);
    v16 = *(a5 + 24);
    if (v16 >= *(a5 + 28))
    {
      if (v15 > &v30 || v15 + 24 * v16 <= &v30)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v17 = (v15 + 24 * *(a5 + 24));
    result = v30;
    v17[1].n128_u64[0] = v31;
    *v17 = result;
    ++*(a5 + 24);
    if (a2 + 1 != a4)
    {
      v19 = ~a2 + a4;
      v20 = v14 + 56;
      do
      {
        v21 = *a7;
        if (*a7)
        {
          v22 = strlen(*a7);
          v30.n128_u32[0] = 3;
          v30.n128_u64[1] = v21;
          v31 = v22;
          v23 = *(a6 + 24);
          v24 = *(a6 + 16);
          if (v23 >= *(a6 + 28))
          {
            goto LABEL_13;
          }
        }

        else
        {
          v30.n128_u32[0] = 3;
          v30.n128_u64[1] = 0;
          v31 = 0;
          v23 = *(a6 + 24);
          v24 = *(a6 + 16);
          if (v23 >= *(a6 + 28))
          {
LABEL_13:
            if (v24 <= &v30 && v24 + 24 * v23 > &v30)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }
        }

        v25 = (v24 + 24 * *(a6 + 24));
        v26 = v30;
        v25[1].n128_u64[0] = v31;
        *v25 = v26;
        ++*(a6 + 24);
        mlir::DiagnosticArgument::DiagnosticArgument(&v30, *(*v20 + 8) & 0xFFFFFFFFFFFFFFF8);
        v27 = *(a5 + 24);
        v28 = *(a5 + 16);
        if (v27 >= *(a5 + 28))
        {
          if (v28 > &v30 || v28 + 24 * v27 <= &v30)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v29 = (v28 + 24 * *(a5 + 24));
        result = v30;
        v29[1].n128_u64[0] = v31;
        *v29 = result;
        ++*(a5 + 24);
        v20 += 32;
        --v19;
      }

      while (v19);
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::UnrealizedConversionCastOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::UnrealizedConversionCastOp,void>,llvm::detail::DenseSetPair<mlir::UnrealizedConversionCastOp>>,mlir::UnrealizedConversionCastOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::UnrealizedConversionCastOp,void>,llvm::detail::DenseSetPair<mlir::UnrealizedConversionCastOp>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 16);
  if (!v4)
  {
    v10 = 0;
    goto LABEL_5;
  }

  v5 = *result;
  v6 = HIDWORD(*a2);
  v7 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v6);
  LODWORD(v6) = -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7)));
  v8 = v4 - 1;
  v9 = v6 & (v4 - 1);
  v10 = (*result + 8 * v9);
  v11 = *v10;
  if (*a2 != *v10)
  {
    v14 = 0;
    v15 = 1;
    while (v11 != -4096)
    {
      if (v14)
      {
        v16 = 0;
      }

      else
      {
        v16 = v11 == -8192;
      }

      if (v16)
      {
        v14 = v10;
      }

      v17 = v9 + v15++;
      v9 = v17 & v8;
      v10 = (v5 + 8 * (v17 & v8));
      v11 = *v10;
      if (*a2 == *v10)
      {
        goto LABEL_3;
      }
    }

    if (v14)
    {
      v10 = v14;
    }

LABEL_5:
    v20 = v10;
    v13 = *(result + 8);
    if (4 * v13 + 4 >= 3 * v4)
    {
      v4 *= 2;
    }

    else if (v4 + ~v13 - *(result + 12) > v4 >> 3)
    {
      *(result + 8) = v13 + 1;
      if (*v10 == -4096)
      {
LABEL_9:
        *v10 = *a2;
        v5 = *result;
        v4 = *(result + 16);
        v12 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v18 = result;
    v19 = a3;
    llvm::DenseMap<mlir::UnrealizedConversionCastOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::UnrealizedConversionCastOp,void>,llvm::detail::DenseSetPair<mlir::UnrealizedConversionCastOp>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::LookupBucketFor<mlir::Value>(v18, a2, &v20);
    result = v18;
    a3 = v19;
    v10 = v20;
    ++*(v18 + 8);
    if (*v10 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v12 = 0;
LABEL_10:
  *a3 = v10;
  *(a3 + 8) = v5 + 8 * v4;
  *(a3 + 16) = v12;
  return result;
}

int64x2_t *llvm::DenseMap<mlir::UnrealizedConversionCastOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::UnrealizedConversionCastOp,void>,llvm::detail::DenseSetPair<mlir::UnrealizedConversionCastOp>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(8 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = (v11 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v12 < 3)
      {
        goto LABEL_10;
      }

      v13 = v12 + 1;
      v10 = &result->i8[8 * (v13 & 0x3FFFFFFFFFFFFFFCLL)];
      v14 = result + 1;
      v15 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      v16 = v13 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v14[-1] = v15;
        *v14 = v15;
        v14 += 2;
        v16 -= 4;
      }

      while (v16);
      if (v13 != (v13 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_10:
        v17 = &result->i8[8 * v11];
        do
        {
          *v10 = -4096;
          v10 += 8;
        }

        while (v10 != v17);
      }
    }

    if (v3)
    {
      v18 = v4;
      do
      {
        v27 = *v18;
        if ((*v18 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v28 = 0x9DDFEA08EB382D69 * ((8 * *v18 - 0xAE502812AA7333) ^ HIDWORD(*v18));
          v29 = 0x9DDFEA08EB382D69 * (HIDWORD(v27) ^ (v28 >> 47) ^ v28);
          LODWORD(v28) = -348639895 * ((v29 >> 47) ^ v29);
          v30 = *(a1 + 16) - 1;
          v31 = v30 & v28;
          v26 = (*a1 + 8 * v31);
          v32 = *v26;
          if (v27 != *v26)
          {
            v33 = 0;
            v34 = 1;
            while (v32 != -4096)
            {
              if (v33)
              {
                v35 = 0;
              }

              else
              {
                v35 = v32 == -8192;
              }

              if (v35)
              {
                v33 = v26;
              }

              v36 = v31 + v34++;
              v31 = v36 & v30;
              v26 = (*a1 + 8 * (v36 & v30));
              v32 = *v26;
              if (v27 == *v26)
              {
                goto LABEL_24;
              }
            }

            if (v33)
            {
              v26 = v33;
            }
          }

LABEL_24:
          *v26 = v27;
          ++*(a1 + 8);
        }

        v18 = (v18 + 8);
      }

      while (v18 != (v4 + 8 * v3));
    }

    llvm::deallocate_buffer(v4, (8 * v3));
  }

  *(a1 + 8) = 0;
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = (v19 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v20 < 3)
    {
      goto LABEL_19;
    }

    v21 = v20 + 1;
    v10 = &result->i8[8 * (v21 & 0x3FFFFFFFFFFFFFFCLL)];
    v22 = result + 1;
    v23 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
    v24 = v21 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v22[-1] = v23;
      *v22 = v23;
      v22 += 2;
      v24 -= 4;
    }

    while (v24);
    if (v21 != (v21 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_19:
      v25 = &result->i8[8 * v19];
      do
      {
        *v10 = -4096;
        v10 += 8;
      }

      while (v10 != v25);
    }
  }

  return result;
}

void *std::__function::__func<composeLegalityCallbacks(std::function<std::optional<BOOL> ()(mlir::Operation *)>,std::function<std::optional<BOOL> ()(mlir::Operation *)>)::$_0,std::allocator<composeLegalityCallbacks(std::function<std::optional<BOOL> ()(mlir::Operation *)>,std::function<std::optional<BOOL> ()(mlir::Operation *)>)::$_0>,std::optional<BOOL> ()(mlir::Operation *)>::~__func(void *a1)
{
  *a1 = &unk_2868661A0;
  v2 = a1 + 1;
  v3 = a1 + 5;
  v4 = a1[8];
  if (v4 != v3)
  {
    if (v4)
    {
      (*(*v4 + 40))(v4);
    }

    v5 = a1[4];
    if (v5 != v2)
    {
      goto LABEL_5;
    }

LABEL_9:
    (*(*v5 + 32))(v5);
    return a1;
  }

  (*(*v4 + 32))(v4);
  v5 = a1[4];
  if (v5 == v2)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return a1;
}

void std::__function::__func<composeLegalityCallbacks(std::function<std::optional<BOOL> ()(mlir::Operation *)>,std::function<std::optional<BOOL> ()(mlir::Operation *)>)::$_0,std::allocator<composeLegalityCallbacks(std::function<std::optional<BOOL> ()(mlir::Operation *)>,std::function<std::optional<BOOL> ()(mlir::Operation *)>)::$_0>,std::optional<BOOL> ()(mlir::Operation *)>::~__func(void *a1)
{
  *a1 = &unk_2868661A0;
  v2 = a1 + 1;
  v3 = a1 + 5;
  v4 = a1[8];
  if (v4 == v3)
  {
    (*(*v4 + 32))(v4);
    v5 = a1[4];
    if (v5 != v2)
    {
LABEL_5:
      if (v5)
      {
        (*(*v5 + 40))(v5);
      }

LABEL_9:

      JUMPOUT(0x259C63180);
    }
  }

  else
  {
    if (v4)
    {
      (*(*v4 + 40))(v4);
    }

    v5 = a1[4];
    if (v5 != v2)
    {
      goto LABEL_5;
    }
  }

  (*(*v5 + 32))(v5);
  goto LABEL_9;
}

uint64_t std::__function::__func<composeLegalityCallbacks(std::function<std::optional<BOOL> ()(mlir::Operation *)>,std::function<std::optional<BOOL> ()(mlir::Operation *)>)::$_0,std::allocator<composeLegalityCallbacks(std::function<std::optional<BOOL> ()(mlir::Operation *)>,std::function<std::optional<BOOL> ()(mlir::Operation *)>)::$_0>,std::optional<BOOL> ()(mlir::Operation *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2868661A0;
  v4 = a2 + 1;
  v5 = *(a1 + 32);
  if (!v5)
  {
    a2[4] = 0;
    result = *(a1 + 64);
    if (result)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if (v5 == a1 + 8)
  {
    a2[4] = v4;
    (*(**(a1 + 32) + 24))(*(a1 + 32));
    result = *(a1 + 64);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_9:
    a2[8] = 0;
    return result;
  }

  a2[4] = (*(*v5 + 16))(v5, v4);
  result = *(a1 + 64);
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (result == a1 + 40)
  {
    a2[8] = a2 + 5;
    v7 = *(**(a1 + 64) + 24);

    return v7();
  }

  else
  {
    result = (*(*result + 16))(result);
    a2[8] = result;
  }

  return result;
}

uint64_t std::__function::__func<composeLegalityCallbacks(std::function<std::optional<BOOL> ()(mlir::Operation *)>,std::function<std::optional<BOOL> ()(mlir::Operation *)>)::$_0,std::allocator<composeLegalityCallbacks(std::function<std::optional<BOOL> ()(mlir::Operation *)>,std::function<std::optional<BOOL> ()(mlir::Operation *)>)::$_0>,std::optional<BOOL> ()(mlir::Operation *)>::destroy(uint64_t a1)
{
  v2 = a1 + 8;
  v3 = a1 + 40;
  v4 = *(a1 + 64);
  if (v4 != v3)
  {
    if (v4)
    {
      (*(*v4 + 40))(v4);
    }

    result = *(a1 + 32);
    if (result != v2)
    {
      goto LABEL_5;
    }

LABEL_10:
    v6 = *(*result + 32);

    return v6();
  }

  (*(*v4 + 32))(v4);
  result = *(a1 + 32);
  if (result == v2)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (!result)
  {
    return result;
  }

  v6 = *(*result + 40);

  return v6();
}

void std::__function::__func<composeLegalityCallbacks(std::function<std::optional<BOOL> ()(mlir::Operation *)>,std::function<std::optional<BOOL> ()(mlir::Operation *)>)::$_0,std::allocator<composeLegalityCallbacks(std::function<std::optional<BOOL> ()(mlir::Operation *)>,std::function<std::optional<BOOL> ()(mlir::Operation *)>)::$_0>,std::optional<BOOL> ()(mlir::Operation *)>::destroy_deallocate(char *__p)
{
  v2 = __p + 8;
  v3 = __p + 40;
  v4 = *(__p + 8);
  if (v4 == v3)
  {
    (*(*v4 + 32))(v4);
    v5 = *(__p + 4);
    if (v5 != v2)
    {
LABEL_5:
      if (v5)
      {
        (*(*v5 + 40))(v5);
      }

      v6 = __p;

      goto LABEL_9;
    }
  }

  else
  {
    if (v4)
    {
      (*(*v4 + 40))(v4);
    }

    v5 = *(__p + 4);
    if (v5 != v2)
    {
      goto LABEL_5;
    }
  }

  (*(*v5 + 32))(v5);
  v6 = __p;

LABEL_9:
  operator delete(v6);
}

uint64_t std::__function::__func<composeLegalityCallbacks(std::function<std::optional<BOOL> ()(mlir::Operation *)>,std::function<std::optional<BOOL> ()(mlir::Operation *)>)::$_0,std::allocator<composeLegalityCallbacks(std::function<std::optional<BOOL> ()(mlir::Operation *)>,std::function<std::optional<BOOL> ()(mlir::Operation *)>)::$_0>,std::optional<BOOL> ()(mlir::Operation *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v10 = *a2;
  v4 = *(a1 + 64);
  if (v4)
  {
    v5 = (*(*v4 + 48))(v4, &v10);
    if ((v5 & 0x100) != 0)
    {
      return v5 | 0x100u;
    }

    v10 = v3;
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = (*(*v6 + 48))(v6, &v10);
      return v7 | (HIBYTE(v7) << 8);
    }
  }

  v9 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__func<composeLegalityCallbacks(std::function<std::optional<BOOL> ()(mlir::Operation *)>,std::function<std::optional<BOOL> ()(mlir::Operation *)>)::$_0,std::allocator<composeLegalityCallbacks(std::function<std::optional<BOOL> ()(mlir::Operation *)>,std::function<std::optional<BOOL> ()(mlir::Operation *)>)::$_0>,std::optional<BOOL> ()(mlir::Operation *)>::target(v9);
}

uint64_t std::__function::__func<composeLegalityCallbacks(std::function<std::optional<BOOL> ()(mlir::Operation *)>,std::function<std::optional<BOOL> ()(mlir::Operation *)>)::$_0,std::allocator<composeLegalityCallbacks(std::function<std::optional<BOOL> ()(mlir::Operation *)>,std::function<std::optional<BOOL> ()(mlir::Operation *)>)::$_0>,std::optional<BOOL> ()(mlir::Operation *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZL24composeLegalityCallbacksNSt3__18functionIFNS_8optionalIbEEPN4mlir9OperationEEEES7_E3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZL24composeLegalityCallbacksNSt3__18functionIFNS_8optionalIbEEPN4mlir9OperationEEEES7_E3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZL24composeLegalityCallbacksNSt3__18functionIFNS_8optionalIbEEPN4mlir9OperationEEEES7_E3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZL24composeLegalityCallbacksNSt3__18functionIFNS_8optionalIbEEPN4mlir9OperationEEEES7_E3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>,mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>::operator[](uint64_t a1, void *a2)
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
    llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>,mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>::grow(a1, v2);
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
  v4[1] = v4 + 3;
  v4[2] = 0x100000000;
  return v4 + 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>>>,mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = *a1 + 56 * v4;
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 8;
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
      v5 = *a1 + 56 * (v12 & v3);
      v6 = *v5;
      if (*a2 == *v5)
      {
        return v5 + 8;
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
    llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>>>,mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>>>,mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>>>::LookupBucketFor<mlir::OperationName>(v14, v13, &v15);
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
  *(v5 + 8) = v5 + 40;
  *(v5 + 16) = v5 + 40;
  *(v5 + 24) = 2;
  *(v5 + 32) = 0;
  return v5 + 8;
}

uint64_t *llvm::function_ref<void ()(mlir::Pattern const&)>::callback_fn<anonymous namespace::OperationLegalizer::buildLegalizationGraph(llvm::SmallVector<mlir::Pattern const*,1u> &,llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>> &)::$_0>(uint64_t *result, uint64_t a2)
{
  v3 = result;
  v32 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) == 1)
  {
    v4 = result[1];
    v5 = *a2;
    v26 = *a2;
    v27 = 1;
    mlir::ConversionTarget::getOpInfo(*(v4 + 96), v5, &v28);
    if (v31)
    {
      v6 = v28;
      result = v30;
      if (v30 == v29)
      {
        result = (*(*v30 + 32))(v30);
        if (!v6)
        {
          return result;
        }
      }

      else
      {
        if (v30)
        {
          result = (*(*v30 + 40))();
        }

        if (!v6)
        {
          return result;
        }
      }
    }

    v9 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>>>,mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>>>::operator[](v3[2], &v26);
    v10 = *v9;
    if (*(v9 + 8) != *v9)
    {
      goto LABEL_12;
    }

    v22 = *(v9 + 20);
    if (v22)
    {
      v23 = 8 * v22;
      v24 = *v9;
      while (*v24 != a2)
      {
        ++v24;
        v23 -= 8;
        if (!v23)
        {
          goto LABEL_32;
        }
      }

      goto LABEL_13;
    }

LABEL_32:
    if (v22 < *(v9 + 16))
    {
      *(v9 + 20) = v22 + 1;
      v10[v22] = a2;
    }

    else
    {
LABEL_12:
      llvm::SmallPtrSetImplBase::insert_imp_big(v9, a2);
    }

LABEL_13:
    v11 = *(a2 + 32);
    if (!v11)
    {
LABEL_24:
      v20 = v3[4];
      v25 = a2;
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v20, &v25, &v28);
      if (v29[8] == 1)
      {
        v21 = *(v20 + 32);
        if (v21 >= *(v20 + 36))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*(v20 + 24) + 8 * v21) = v25;
        ++*(v20 + 32);
      }

      return result;
    }

    v12 = *(a2 + 24);
    v13 = &v12[v11];
    while (1)
    {
      v28 = *v12;
      v14 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>>>,mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>>>::operator[](v3[3], &v28);
      v15 = v26;
      v16 = *v14;
      if (*(v14 + 8) != *v14)
      {
        goto LABEL_15;
      }

      v17 = *(v14 + 20);
      if (v17)
      {
        v18 = 8 * v17;
        v19 = *v14;
        while (*v19 != v26)
        {
          ++v19;
          v18 -= 8;
          if (!v18)
          {
            goto LABEL_22;
          }
        }

        goto LABEL_16;
      }

LABEL_22:
      if (v17 < *(v14 + 16))
      {
        *(v14 + 20) = v17 + 1;
        v16[v17] = v15;
      }

      else
      {
LABEL_15:
        llvm::SmallPtrSetImplBase::insert_imp_big(v14, v26);
      }

LABEL_16:
      if (++v12 == v13)
      {
        goto LABEL_24;
      }
    }
  }

  v7 = *result;
  v8 = *(*result + 8);
  if (v8 >= *(*result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*v7 + 8 * v8) = a2;
  ++*(v7 + 8);
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>>>,mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>>>::LookupBucketFor<mlir::OperationName>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 56 * v6);
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
        v7 = (v4 + 56 * (v13 & v5));
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>>>,mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(56 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = 7 * v3;
    llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>>>,mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>>>::moveFromOldBuckets(a1, v4, &v4[v10]);

    llvm::deallocate_buffer(v4, (v10 * 8));
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 56 * v11 - 56;
    if (v12 < 0x38)
    {
      v13 = result;
LABEL_14:
      v17 = &result[7 * v11];
      do
      {
        *v13 = -4096;
        v13 += 7;
      }

      while (v13 != v17);
      return result;
    }

    v14 = v12 / 0x38 + 1;
    v13 = &result[7 * (v14 & 0xFFFFFFFFFFFFFFELL)];
    v15 = result;
    v16 = v14 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v15 = -4096;
      v15[7] = -4096;
      v15 += 14;
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

void llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>>>,mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 56 * v6 - 56;
    if (v8 < 0x38)
    {
      v9 = *a1;
LABEL_7:
      v13 = &v7[7 * v6];
      do
      {
        *v9 = -4096;
        v9 += 7;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x38 + 1;
    v9 = &v7[7 * (v10 & 0xFFFFFFFFFFFFFFELL)];
    v11 = *a1;
    v12 = v10 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v11 = -4096;
      v11[7] = -4096;
      v11 += 14;
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
        v16 = v15 & ((LODWORD(v14) >> 4) ^ (LODWORD(v14) >> 9));
        v17 = (*a1 + 56 * v16);
        v18 = *v17;
        if (*&v14 != *v17)
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
            v17 = (*a1 + 56 * (v23 & v15));
            v18 = *v17;
            if (*&v14 == *v17)
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
        llvm::SmallPtrSetImplBase::SmallPtrSetImplBase((v17 + 1), v17 + 5, 2, v4 + 1);
        ++*(a1 + 8);
        v19 = *(v4 + 2);
        if (v19 != *(v4 + 1))
        {
          free(v19);
        }
      }

      v4 += 7;
    }

    while (v4 != a3);
  }
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>,mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>::grow(uint64_t a1, int a2)
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
  *a1 = result;
  if (v4)
  {
    v10 = (32 * v3);
    llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>,mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>::moveFromOldBuckets(a1, v4, &v10[v4]);

    llvm::deallocate_buffer(v4, v10);
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (v11 - 1) & 0x7FFFFFFFFFFFFFFLL;
    if (v12)
    {
      v13 = v12 + 1;
      v14 = (v12 + 1) & 0xFFFFFFFFFFFFFFELL;
      v15 = &result[4 * v14];
      v16 = result + 4;
      v17 = v14;
      do
      {
        *(v16 - 4) = -4096;
        *v16 = -4096;
        v16 += 8;
        v17 -= 2;
      }

      while (v17);
      if (v13 == v14)
      {
        return result;
      }
    }

    else
    {
      v15 = result;
    }

    v18 = &result[4 * v11];
    do
    {
      *v15 = -4096;
      v15 += 4;
    }

    while (v15 != v18);
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>,mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = (v6 - 1) & 0x7FFFFFFFFFFFFFFLL;
    if (v8)
    {
      v9 = v8 + 1;
      v10 = (v8 + 1) & 0xFFFFFFFFFFFFFFELL;
      v11 = &v7[4 * v10];
      v12 = v7 + 4;
      v13 = v10;
      do
      {
        *(v12 - 4) = -4096;
        *v12 = -4096;
        v12 += 8;
        v13 -= 2;
      }

      while (v13);
      if (v9 == v10)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v11 = *a1;
    }

    v14 = &v7[4 * v6];
    do
    {
      *v11 = -4096;
      v11 += 4;
    }

    while (v11 != v14);
  }

LABEL_10:
  if (a2 != a3)
  {
    do
    {
      v15 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v16 = *(a1 + 16) - 1;
        v17 = v16 & ((v15 >> 4) ^ (v15 >> 9));
        v18 = (*a1 + 32 * v17);
        v19 = *v18;
        if (v15 != *v18)
        {
          v21 = 0;
          v22 = 1;
          while (v19 != -4096)
          {
            if (v21)
            {
              v23 = 0;
            }

            else
            {
              v23 = v19 == -8192;
            }

            if (v23)
            {
              v21 = v18;
            }

            v24 = v17 + v22++;
            v17 = v24 & v16;
            v18 = (*a1 + 32 * v17);
            v19 = *v18;
            if (v15 == *v18)
            {
              goto LABEL_15;
            }
          }

          if (v21)
          {
            v18 = v21;
          }
        }

LABEL_15:
        *v18 = v15;
        v18[1] = v18 + 3;
        v18[2] = 0x100000000;
        if (*(v4 + 4))
        {
          llvm::SmallVectorImpl<unsigned long>::operator=((v18 + 1), v4 + 1);
        }

        ++*(a1 + 8);
        v20 = v4[1];
        if (v20 != v4 + 3)
        {
          free(v20);
        }
      }

      v4 += 4;
    }

    while (v4 != a3);
  }
}

uint64_t anonymous namespace::OperationLegalizer::computeOpLegalizationDepth(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v3 = *(a2 + 16);
  v4 = a1 >> 4;
  if (v3)
  {
    v5 = *a2;
    v6 = (v3 - 1) & (v4 ^ (a1 >> 9));
    v7 = *(*a2 + 16 * v6);
    if (v7 == a1)
    {
LABEL_3:
      if (v6 != v3)
      {
        return *(v5 + 16 * v6 + 8);
      }
    }

    else
    {
      v19 = 1;
      while (v7 != -4096)
      {
        v20 = v6 + v19++;
        v6 = v20 & (v3 - 1);
        v7 = *(v5 + 16 * v6);
        if (v7 == a1)
        {
          goto LABEL_3;
        }
      }
    }
  }

  v8 = *(a3 + 16);
  if (v8)
  {
    v9 = *a3;
    v10 = (v8 - 1) & (v4 ^ (a1 >> 9));
    v11 = *(*a3 + 32 * v10);
    if (v11 == a1)
    {
LABEL_6:
      if (v10 != v8)
      {
        v12 = v9 + 32 * v10;
        if (*(v12 + 16))
        {
          v24 = -1;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::try_emplace<unsigned int>(a2, &v25, &v24, v23);
          v17 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::operator[](a2, &v25);
          result = v16;
          *v17 = v16;
          return result;
        }
      }
    }

    else
    {
      v21 = 1;
      while (v11 != -4096)
      {
        v22 = v10 + v21++;
        v10 = v22 & (v8 - 1);
        v11 = *(v9 + 32 * v10);
        if (v11 == a1)
        {
          goto LABEL_6;
        }
      }
    }
  }

  return 0;
}

uint64_t anonymous namespace::OperationLegalizer::applyCostModelToPatterns(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v36[8] = *MEMORY[0x277D85DE8];
  v34 = v36;
  a4.n128_u64[0] = 0x400000000;
  v35 = 0x400000000;
  v7 = *(a1 + 8);
  if (v7 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v7)
  {
    v8 = *a1;
    v9 = *a1 + 8 * v7;
    LODWORD(v10) = -1;
    do
    {
      v11 = *v8;
      v33 = v11;
      v12 = 1;
      v32 = 1;
      v13 = *(v11 + 32);
      if (v13)
      {
        v14 = *(v11 + 24);
        v15 = 8 * v13;
        do
        {
          v16 = *v14++;
          if (v32 <= v17 + 1)
          {
            v12 = v17 + 1;
          }

          else
          {
            v12 = v32;
          }

          v32 = v12;
          v15 -= 8;
        }

        while (v15);
      }

      v18 = v35;
      if (v35 >= HIDWORD(v35))
      {
        llvm::SmallVectorTemplateBase<std::pair<mlir::Region *,unsigned int>,true>::growAndEmplaceBack<mlir::Region *,unsigned int &>(&v34, &v33, &v32);
      }

      else
      {
        v19 = v34 + 16 * v35;
        *v19 = v33;
        *(v19 + 2) = v12;
        LODWORD(v35) = v18 + 1;
      }

      if (v32 >= v10)
      {
        v10 = v10;
      }

      else
      {
        v10 = v32;
      }

      ++v8;
    }

    while (v8 != v9);
  }

  else
  {
    v10 = 0xFFFFFFFFLL;
  }

  v20 = v35;
  v21 = v34;
  if (v35 != 1)
  {
    if (v35)
    {
      v22 = MEMORY[0x277D826F0];
      v23 = v35;
      while (1)
      {
        v24 = operator new(16 * v23, v22);
        if (v24)
        {
          break;
        }

        v25 = v23 >> 1;
        v26 = v23 > 1;
        v23 >>= 1;
        if (!v26)
        {
          goto LABEL_27;
        }
      }

      v28 = v24;
      operator delete(v28);
      *(a1 + 8) = 0;
      v21 = v34;
      v27 = v35;
      if (v35)
      {
LABEL_30:
        v29 = 0;
        v30 = 16 * v27;
        do
        {
          if (v29 >= *(a1 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(*a1 + 8 * v29) = *v21;
          v29 = *(a1 + 8) + 1;
          *(a1 + 8) = v29;
          v21 += 16;
          v30 -= 16;
        }

        while (v30);
        v21 = v34;
      }
    }

    else
    {
      v25 = 0;
LABEL_27:
      *(a1 + 8) = 0;
      v21 = v34;
      v27 = v35;
      if (v35)
      {
        goto LABEL_30;
      }
    }
  }

  if (v21 != v36)
  {
    free(v21);
  }

  return v10;
}

void std::__stable_sort<std::_ClassicAlgPolicy,anonymous namespace::OperationLegalizer::applyCostModelToPatterns(llvm::SmallVector<mlir::Pattern const*,1u> &,llvm::DenseMap<mlir::OperationName,unsigned int,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,unsigned int>> &,llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>> &)::$_0 &,std::pair<mlir::Pattern const*,unsigned int> *>(char *a1, char *a2, unint64_t a3, uint64_t *a4, uint64_t a5, __n128 a6)
{
  if (a3 < 2)
  {
    return;
  }

  if (a3 == 2)
  {
    v6 = *(a2 - 2);
    v7 = *(a2 - 2);
    v8 = *a1;
    v9 = *(a1 + 2);
    if (v7 == v9)
    {
      if (*(v8 + 12) >= *(v6 + 12))
      {
        return;
      }
    }

    else if (v7 >= v9)
    {
      return;
    }

    *a1 = v6;
    *(a2 - 2) = v8;
    *(a1 + 2) = v7;
    *(a2 - 2) = v9;
    return;
  }

  if (a3 <= 0)
  {
    if (a1 == a2)
    {
      return;
    }

    v17 = a1 + 16;
    if (a1 + 16 == a2)
    {
      return;
    }

    v18 = 0;
    v19 = a1;
    while (1)
    {
      v21 = v19;
      v19 = v17;
      v22 = *(v21 + 2);
      v23 = *(v21 + 6);
      v24 = *(v21 + 2);
      if (v23 != v24)
      {
        break;
      }

      if (*(*v21 + 12) >= *(v22 + 12))
      {
        goto LABEL_19;
      }

      *(v21 + 2) = *v21;
      *(v19 + 2) = v24;
      v20 = a1;
      if (v21 != a1)
      {
        goto LABEL_26;
      }

LABEL_18:
      *v20 = v22;
      *(v20 + 2) = v23;
LABEL_19:
      v17 = v19 + 16;
      v18 += 16;
      if (v19 + 16 == a2)
      {
        return;
      }
    }

    if (v23 >= v24)
    {
      goto LABEL_19;
    }

    *(v21 + 2) = *v21;
    *(v19 + 2) = v24;
    v20 = a1;
    if (v21 == a1)
    {
      goto LABEL_18;
    }

LABEL_26:
    v25 = v18;
    while (1)
    {
      while (1)
      {
        v28 = &a1[v25];
        v29 = *&a1[v25 - 8];
        if (v23 == v29)
        {
          break;
        }

        if (v23 >= v29)
        {
          v20 = &a1[v25];
          goto LABEL_18;
        }

        v21 -= 16;
        v30 = &a1[v25];
        *v30 = *(v28 - 2);
        *(v30 + 2) = v29;
        v25 -= 16;
        if (!v25)
        {
LABEL_32:
          v20 = a1;
          goto LABEL_18;
        }
      }

      v26 = *(v28 - 2);
      if (*(v26 + 12) >= *(v22 + 12))
      {
        break;
      }

      v21 -= 16;
      v27 = &a1[v25];
      *v27 = v26;
      *(v27 + 2) = v29;
      v25 -= 16;
      if (!v25)
      {
        goto LABEL_32;
      }
    }

    v20 = v21;
    goto LABEL_18;
  }

  v11 = a3 >> 1;
  v12 = &a1[16 * (a3 >> 1)];
  v13 = a3 - (a3 >> 1);
  v14 = a1;
  if (a3 <= a5)
  {
    v32 = a4;
    v34 = &v32[2 * v11];
    v35 = &v32[2 * a3];
    v36 = v34;
    while (v36 != v35)
    {
      v37 = *v36;
      v38 = *(v36 + 8);
      v39 = *v32;
      v40 = *(v32 + 2);
      v41 = v38 >= v40;
      if (v38 == v40)
      {
        v41 = *(v39 + 12) >= *(v37 + 12);
      }

      if (v41)
      {
        *v14 = v39;
        *(v14 + 2) = v40;
        v32 += 2;
        v14 += 16;
        if (v32 == v34)
        {
LABEL_42:
          if (v36 != v35)
          {
            v42 = 0;
            do
            {
              v43 = v36 + v42;
              v44 = &v14[v42];
              *v44 = *(v36 + v42);
              *(v44 + 2) = *(v36 + v42 + 8);
              v42 += 16;
            }

            while ((v43 + 16) != v35);
          }

          return;
        }
      }

      else
      {
        *v14 = v37;
        *(v14 + 2) = v38;
        v36 += 16;
        v14 += 16;
        if (v32 == v34)
        {
          goto LABEL_42;
        }
      }
    }

    if (v32 != v34)
    {
      v45 = 0;
      do
      {
        v46 = &v14[v45 * 8];
        v47 = &v32[v45];
        *v46 = v32[v45];
        *(v46 + 2) = v32[v45 + 1];
        v45 += 2;
      }

      while (v47 + 2 != v34);
    }
  }

  else
  {
  }
}

double std::__stable_sort_move<std::_ClassicAlgPolicy,anonymous namespace::OperationLegalizer::applyCostModelToPatterns(llvm::SmallVector<mlir::Pattern const*,1u> &,llvm::DenseMap<mlir::OperationName,unsigned int,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,unsigned int>> &,llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>> &)::$_0 &,std::pair<mlir::Pattern const*,unsigned int> *>(_DWORD *a1, _DWORD *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  switch(a3)
  {
    case 0:
      return a5.n128_f64[0];
    case 2:
      v5 = a2 - 4;
      v6 = *(a2 - 2);
      v7 = a1[2];
      if (v6 == v7)
      {
        if (*(*a1 + 12) >= *(*v5 + 12))
        {
LABEL_7:
          *a4 = *a1;
          a5 = *v5;
LABEL_29:
          *(a4 + 16) = a5;
          return a5.n128_f64[0];
        }
      }

      else if (v6 >= v7)
      {
        goto LABEL_7;
      }

      *a4 = *v5;
      a5 = *a1;
      goto LABEL_29;
    case 1:
      a5 = *a1;
      *a4 = *a1;
      return a5.n128_f64[0];
  }

  if (a3 > 8)
  {
    v21 = a3 >> 1;
    v22 = 16 * (a3 >> 1);
    v23 = &a1[v22 / 4];
    v24 = a1;
    v27 = a4;
    v28 = v23;
    while (v28 != a2)
    {
      v30 = v28[2];
      v31 = v24[2];
      v32 = v30 >= v31;
      if (v30 == v31)
      {
        v32 = *(*v24 + 12) >= *(*v28 + 12);
      }

      if (v32)
      {
        v33 = *v24;
        v24 += 4;
        a5.n128_u64[0] = v33;
        *v27++ = v33;
        if (v24 == v23)
        {
LABEL_43:
          while (v28 != a2)
          {
            v35 = *v28;
            v28 += 4;
            a5.n128_u64[0] = v35;
            *v27++ = v35;
          }

          return a5.n128_f64[0];
        }
      }

      else
      {
        v29 = *v28;
        v28 += 4;
        a5.n128_u64[0] = v29;
        *v27++ = v29;
        if (v24 == v23)
        {
          goto LABEL_43;
        }
      }
    }

    while (v24 != v23)
    {
      v34 = *v24;
      v24 += 4;
      a5.n128_u64[0] = v34;
      *v27++ = v34;
    }
  }

  else if (a1 != a2)
  {
    a5 = *a1;
    *a4 = *a1;
    v8 = a1 + 4;
    if (a1 + 4 != a2)
    {
      v9 = 0;
      v10 = a4;
      while (1)
      {
        v12 = v8;
        v13 = v10 + 4;
        v14 = a1[6];
        v15 = v10[2];
        if (v14 != v15)
        {
          break;
        }

        if (*(*v10 + 12) < *(*v12 + 12))
        {
LABEL_19:
          a5 = *v10;
          *v13 = *v10;
          v11 = a4;
          if (v10 == a4)
          {
            goto LABEL_13;
          }

          v16 = v9;
          while (1)
          {
            v18 = a1[6];
            v19 = *(a4 + v16 - 16);
            v20 = *(a4 + v16 - 8);
            if (v18 != v20)
            {
              break;
            }

            if (*(v19 + 12) >= *(*v12 + 12))
            {
              v11 = v10;
              goto LABEL_13;
            }

LABEL_22:
            v10 -= 4;
            v17 = a4 + v16;
            *v17 = v19;
            *(v17 + 8) = v20;
            v16 -= 16;
            if (!v16)
            {
              v11 = a4;
              goto LABEL_13;
            }
          }

          if (v18 < v20)
          {
            goto LABEL_22;
          }

          v11 = (a4 + v16);
LABEL_13:
          *v11 = *v12;
          v11[2] = a1[6];
          v8 = v12 + 4;
          v9 += 16;
          v10 = v13;
          a1 = v12;
          if (v12 + 4 == a2)
          {
            return a5.n128_f64[0];
          }
        }

        else
        {
LABEL_16:
          a5 = *v12;
          *v13 = *v12;
          v8 = v12 + 4;
          v9 += 16;
          v10 += 4;
          a1 = v12;
          if (v12 + 4 == a2)
          {
            return a5.n128_f64[0];
          }
        }
      }

      if (v14 >= v15)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }
  }

  return a5.n128_f64[0];
}

char *std::__inplace_merge<std::_ClassicAlgPolicy,anonymous namespace::OperationLegalizer::applyCostModelToPatterns(llvm::SmallVector<mlir::Pattern const*,1u> &,llvm::DenseMap<mlir::OperationName,unsigned int,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,unsigned int>> &,llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>> &)::$_0 &,std::pair<mlir::Pattern const*,unsigned int> *>(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  if (!a5)
  {
    return result;
  }

LABEL_2:
  if (a5 > a7 && a4 > a7)
  {
    if (!a4)
    {
      return result;
    }

    v9 = 0;
    v10 = *a2;
    v11 = *(a2 + 2);
    v12 = -a4;
    while (1)
    {
      v13 = *&result[v9];
      v14 = *&result[v9 + 8];
      if (v11 == v14)
      {
        if (*(v13 + 12) < *(v10 + 12))
        {
          v14 = *(a2 + 2);
LABEL_11:
          v15 = -v12;
          v16 = &result[v9];
          if (-v12 >= a5)
          {
            if (v12 != -1)
            {
              v26 = v15 / 2;
              v22 = &result[16 * (v15 / 2) + v9];
              v18 = 0;
              if (a3 != a2)
              {
                v27 = *(v22 + 2);
                v28 = (a3 - a2) >> 4;
                do
                {
                  v29 = v28 >> 1;
                  v30 = v18 + 16 * (v28 >> 1);
                  v31 = *&a2[v30 + 8];
                  v32 = v31 >= v27;
                  if (v31 == v27)
                  {
                    v32 = *(*v22 + 12) >= *(*&a2[v30] + 12);
                  }

                  if (!v32)
                  {
                    v18 = v30 + 16;
                    v29 = v28 + ~v29;
                  }

                  v28 = v29;
                }

                while (v29);
              }

              v17 = v18 >> 4;
              v33 = &a2[v18];
              v34 = &a2[v18];
              if (v22 != a2)
              {
                goto LABEL_34;
              }

              goto LABEL_51;
            }

            v67 = &result[v9];
            *v67 = v10;
            *a2 = v13;
            *(v67 + 2) = v11;
            *(a2 + 2) = v14;
            return result;
          }

          v17 = a5 / 2;
          v18 = 16 * (a5 / 2);
          if (v16 == a2)
          {
            v22 = &result[v9];
            v26 = 0;
            v33 = &a2[v18];
            v34 = &a2[v18];
            goto LABEL_51;
          }

          v19 = *&a2[v18 + 8];
          v20 = &result[v9];
          v21 = (a2 - result - v9) >> 4;
          v22 = v16;
          while (2)
          {
            v23 = v21 >> 1;
            v24 = &v22[16 * (v21 >> 1)];
            v25 = *(v24 + 2);
            if (v25 != v19)
            {
              if (v25 > v19)
              {
                goto LABEL_15;
              }

LABEL_14:
              v22 = v24 + 16;
              v23 = v21 + ~v23;
              goto LABEL_15;
            }

            if (*(*v24 + 12) >= *(*&a2[v18] + 12))
            {
              goto LABEL_14;
            }

LABEL_15:
            v21 = v23;
            if (v23)
            {
              continue;
            }

            break;
          }

          v26 = (v22 - v20) >> 4;
          v33 = &a2[v18];
          v34 = &a2[v18];
          if (v22 == a2)
          {
            goto LABEL_51;
          }

LABEL_34:
          v34 = v22;
          if (v18)
          {
            v35 = *v22;
            *v22 = v10;
            *a2 = v35;
            v36 = *(v22 + 2);
            *(v22 + 2) = v11;
            *(a2 + 2) = v36;
            v34 = v22 + 16;
            if (v18 != 16)
            {
              v37 = a2 + 16;
              do
              {
                if (v34 == a2)
                {
                  a2 = v37;
                }

                v38 = *v34;
                *v34 = *v37;
                *v37 = v38;
                LODWORD(v38) = *(v34 + 2);
                *(v34 + 2) = *(v37 + 2);
                *(v37 + 2) = v38;
                v34 += 16;
                v37 += 16;
              }

              while (v37 != v33);
            }

            if (v34 != a2)
            {
              v39 = v34;
              v40 = a2;
              while (1)
              {
                v41 = *v39;
                *v39 = *a2;
                *a2 = v41;
                LODWORD(v41) = *(v39 + 2);
                *(v39 + 2) = *(a2 + 2);
                *(a2 + 2) = v41;
                v39 += 16;
                a2 += 16;
                v42 = v39 == v40;
                if (a2 == v33)
                {
                  if (v39 == v40)
                  {
                    goto LABEL_51;
                  }

                  a2 = v40 + 16;
                  while (1)
                  {
                    v43 = *v39;
                    *v39 = *v40;
                    *v40 = v43;
                    LODWORD(v43) = *(v39 + 2);
                    *(v39 + 2) = *(v40 + 2);
                    *(v40 + 2) = v43;
                    v39 += 16;
                    v42 = v39 == v40;
                    if (a2 != v33)
                    {
                      break;
                    }

                    if (v39 == v40)
                    {
                      goto LABEL_51;
                    }
                  }
                }

                if (v42)
                {
                  v40 = a2;
                }
              }
            }

            v34 = a2;
          }

LABEL_51:
          v44 = a5 - v17;
          if (v26 + v17 >= a5 - (v26 + v17) - v12)
          {
            a4 = v26;
            a3 = v34;
            a5 = v17;
            result = v16;
            a2 = v22;
            if (v17)
            {
              goto LABEL_2;
            }

            return result;
          }

          v45 = v16;
          v46 = v22;
          v47 = a3;
          v48 = -v12 - v26;
          a4 = v48;
          a3 = v47;
          a5 = v44;
          result = v34;
          a2 = v33;
          if (!v44)
          {
            return result;
          }

          goto LABEL_2;
        }
      }

      else if (v11 < v14)
      {
        goto LABEL_11;
      }

      v9 += 16;
      v32 = __CFADD__(v12++, 1);
      if (v32)
      {
        return result;
      }
    }
  }

  if (a4 <= a5)
  {
    if (result == a2)
    {
      return result;
    }

    v58 = a6;
    v59 = result;
    do
    {
      v60 = *v59++;
      *v58 = v60;
      v58 += 2;
    }

    while (v59 != a2);
    v61 = v58 - 2;
    while (a2 != a3)
    {
      v62 = *a2;
      v63 = *(a2 + 2);
      v64 = *a6;
      v65 = *(a6 + 2);
      v66 = v63 >= v65;
      if (v63 == v65)
      {
        v66 = *(v64 + 12) >= *(v62 + 12);
      }

      if (v66)
      {
        *result = v64;
        *(result + 2) = v65;
        a6 += 2;
        result += 16;
        if (v58 == a6)
        {
          return result;
        }
      }

      else
      {
        *result = v62;
        *(result + 2) = v63;
        a2 += 16;
        result += 16;
        if (v58 == a6)
        {
          return result;
        }
      }
    }

    v68 = 0;
    do
    {
      v69 = &result[v68 * 8];
      v70 = &a6[v68];
      *v69 = a6[v68];
      *(v69 + 2) = a6[v68 + 1];
      v68 += 2;
    }

    while (v61 != v70);
  }

  else
  {
    if (a2 == a3)
    {
      return result;
    }

    v49 = 0;
    do
    {
      *&a6[v49] = *&a2[v49 * 8];
      v49 += 2;
    }

    while (&a2[v49 * 8] != a3);
    v50 = (a3 - 8);
    v51 = &a6[v49];
    while (a2 != result)
    {
      v52 = a2 - 16;
      v53 = *(a2 - 2);
      v54 = *(a2 - 2);
      v55 = *(v51 - 2);
      v56 = v55 >= v54;
      if (v55 == v54)
      {
        v56 = *(v53 + 12) >= *(*(v51 - 2) + 12);
      }

      if (v56)
      {
        v53 = *(v51 - 2);
        v54 = *(v51 - 2);
        v52 = a2;
        v51 -= 2;
      }

      *(v50 - 1) = v53;
      *v50 = v54;
      v50 -= 4;
      a2 = v52;
      if (v51 == a6)
      {
        return result;
      }
    }

    while (v51 != a6)
    {
      v57 = *(v51 - 2);
      v51 -= 2;
      *(v50 - 1) = v57;
      *v50 = *(v51 + 2);
      v50 -= 4;
    }
  }

  return result;
}

uint64_t llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>::callback_fn<anonymous namespace::OperationLegalizer::computeLegalizationGraphBenefit(llvm::SmallVector<mlir::Pattern const*,1u> &,llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>> &)::$_0>(uint64_t *a1, uint64_t *a2)
{
  if (*(a2 + 2) == 1)
  {
    v11 = *a2;
    v12 = 1;
    v3 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>,mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>::operator[](*a1, &v11);
    v4 = *v3;
    v5 = *(v3 + 2);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = a1[1];
    v4 = *v8;
    v5 = *(v8 + 8);
    if (v5)
    {
LABEL_3:
      v6 = 8 * v5;
      for (i = v4; *i != a2; i += 8)
      {
        v6 -= 8;
        if (!v6)
        {
          return 0xFFFFLL;
        }
      }

      goto LABEL_9;
    }
  }

  i = v4;
LABEL_9:
  v9 = &v4[8 * v5];
  if (i == v9)
  {
    return 0xFFFFLL;
  }

  mlir::PatternBenefit::PatternBenefit(&v11, (v9 - i) >> 3);
  return v11;
}

void sub_2565F3B7C()
{
  *(v0 + 24) = &unk_286866088;
  *(v0 + 64) = &unk_2868660F8;
  llvm::deallocate_buffer(*(v0 + 80), (8 * *(v0 + 96)));
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<mlir::Value,6u>>>,mlir::Value,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<mlir::Value,6u>>>::LookupBucketFor<mlir::Value>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = HIDWORD(*a2);
    v6 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v5);
    LODWORD(v6) = -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6)));
    v7 = v3 - 1;
    v8 = v6 & (v3 - 1);
    v9 = (*a1 + 72 * v8);
    v10 = *v9;
    if (*a2 == *v9)
    {
      result = 1;
      *a3 = v9;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      result = 1;
      while (v10 != -4096)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v10 == -8192;
        }

        if (v14)
        {
          v12 = v9;
        }

        v15 = v8 + v13++;
        v8 = v15 & v7;
        v9 = (v4 + 72 * (v15 & v7));
        v10 = *v9;
        if (*a2 == *v9)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v12)
      {
        v9 = v12;
      }

      *a3 = v9;
    }
  }

  else
  {
    v9 = 0;
    result = 0;
LABEL_5:
    *a3 = v9;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<mlir::Value,6u>>>,mlir::Value,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<mlir::Value,6u>>>::grow(uint64_t a1, int a2)
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
    v10 = 9 * v3;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<mlir::Value,6u>>>,mlir::Value,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<mlir::Value,6u>>>::moveFromOldBuckets(a1, v4, &v4[v10]);

    llvm::deallocate_buffer(v4, (v10 * 8));
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
      v17 = &result[9 * v11];
      do
      {
        *v13 = -4096;
        v13 += 9;
      }

      while (v13 != v17);
      return result;
    }

    v14 = v12 / 0x48 + 1;
    v13 = &result[9 * (v14 & 0x7FFFFFFFFFFFFFELL)];
    v15 = result;
    v16 = v14 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v15 = -4096;
      v15[9] = -4096;
      v15 += 18;
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

void llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<mlir::Value,6u>>>,mlir::Value,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<mlir::Value,6u>>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
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
      v13 = &v7[9 * v6];
      do
      {
        *v9 = -4096;
        v9 += 9;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x48 + 1;
    v9 = &v7[9 * (v10 & 0x7FFFFFFFFFFFFFELL)];
    v11 = *a1;
    v12 = v10 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v11 = -4096;
      v11[9] = -4096;
      v11 += 18;
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
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v15 = 0x9DDFEA08EB382D69 * ((8 * *v4 - 0xAE502812AA7333) ^ HIDWORD(*v4));
        v16 = 0x9DDFEA08EB382D69 * (HIDWORD(v14) ^ (v15 >> 47) ^ v15);
        LODWORD(v15) = -348639895 * ((v16 >> 47) ^ v16);
        v17 = *(a1 + 16) - 1;
        v18 = v17 & v15;
        v19 = (*a1 + 72 * v18);
        v20 = *v19;
        if (v14 != *v19)
        {
          v22 = 0;
          v23 = 1;
          while (v20 != -4096)
          {
            if (v22)
            {
              v24 = 0;
            }

            else
            {
              v24 = v20 == -8192;
            }

            if (v24)
            {
              v22 = v19;
            }

            v25 = v18 + v23++;
            v18 = v25 & v17;
            v19 = (*a1 + 72 * (v25 & v17));
            v20 = *v19;
            if (v14 == *v19)
            {
              goto LABEL_14;
            }
          }

          if (v22)
          {
            v19 = v22;
          }
        }

LABEL_14:
        *v19 = v14;
        v19[1] = (v19 + 3);
        v19[2] = 0x600000000;
        if (*(v4 + 4))
        {
          llvm::SmallVectorImpl<long long>::operator=((v19 + 1), v4 + 1);
        }

        ++*(a1 + 8);
        v21 = v4[1];
        if (v21 != v4 + 3)
        {
          free(v21);
        }
      }

      v4 += 9;
    }

    while (v4 != a3);
  }
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::detail::ConversionPatternRewriterImpl::remapValues(llvm::StringRef,std::optional<mlir::Location>,mlir::PatternRewriter &,mlir::ValueRange,llvm::SmallVectorImpl<mlir::Value> &)::$_0>(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  LODWORD(v28) = 3;
  *(&v28 + 1) = "unable to convert type for ";
  v29 = 27;
  v4 = *(a2 + 24);
  if (v4 >= *(a2 + 28))
  {
    if (v3 > &v28 || v3 + 24 * v4 <= &v28)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = v3 + 24 * *(a2 + 24);
  v6 = v28;
  *(v5 + 16) = v29;
  *v5 = v6;
  ++*(a2 + 24);
  v30 = 261;
  v7 = a1[1];
  *&v28 = *a1;
  *(&v28 + 1) = v7;
  v8 = mlir::Diagnostic::operator<<(a2, &v28);
  v9 = *(v8 + 16);
  v31.n128_u32[0] = 3;
  v31.n128_u64[1] = " #";
  v32 = 2;
  v10 = *(v8 + 24);
  if (v10 >= *(v8 + 28))
  {
    if (v9 > &v31 || v9 + 24 * v10 <= &v31)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v11 = (v9 + 24 * *(v8 + 24));
  v12 = v31;
  v11[1].n128_u64[0] = v32;
  *v11 = v12;
  v13 = *(v8 + 28);
  v14 = *(v8 + 24) + 1;
  *(v8 + 24) = v14;
  v15 = a1[2];
  v31.n128_u32[0] = 5;
  v31.n128_u64[1] = v15;
  v16 = *(v8 + 16);
  if (v14 >= v13)
  {
    if (v16 > &v31 || v16 + 24 * v14 <= &v31)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v17 = (v16 + 24 * *(v8 + 24));
  v18 = v31;
  v17[1].n128_u64[0] = v32;
  *v17 = v18;
  v19 = *(v8 + 28);
  v20 = *(v8 + 24) + 1;
  *(v8 + 24) = v20;
  v31.n128_u32[0] = 3;
  v31.n128_u64[1] = ", type was ";
  v32 = 11;
  v21 = *(v8 + 16);
  if (v20 >= v19)
  {
    if (v21 > &v31 || v21 + 24 * v20 <= &v31)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v22 = (v21 + 24 * *(v8 + 24));
  v23 = v31;
  v22[1].n128_u64[0] = v32;
  *v22 = v23;
  ++*(v8 + 24);
  mlir::DiagnosticArgument::DiagnosticArgument(&v31, a1[4]);
  v24 = *(v8 + 24);
  v25 = *(v8 + 16);
  if (v24 >= *(v8 + 28))
  {
    if (v25 > &v31 || v25 + 24 * v24 <= &v31)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v26 = (v25 + 24 * *(v8 + 24));
  result = v31;
  v26[1].n128_u64[0] = v32;
  *v26 = result;
  ++*(v8 + 24);
  return result;
}

void *anonymous namespace::InlineBlockRewrite::rollback(void *this)
{
  if (this[5])
  {
    v2 = this[3];
    v1 = this[4];
    v3 = *(v1 + 40);
    v4 = this;
    NodePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(this[5]);
    this = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v4[6]);
    v6 = this[1];
    if (NodePtr != v6 && v3 != v6)
    {
      this = llvm::ilist_traits<mlir::Operation>::transferNodesFromList(v1 + 32, v2 + 32, NodePtr, v6);
      v8 = *v6;
      v9 = *NodePtr;
      *(v9 + 8) = v6;
      *v6 = v9;
      v10 = *v3;
      *(v8 + 8) = v3;
      *NodePtr = v10;
      *(v10 + 8) = NodePtr;
      *v3 = v8;
    }
  }

  return this;
}

uint64_t anonymous namespace::ReplaceBlockArgRewrite::rollback(uint64_t this)
{
  v1 = *(this + 16);
  v2 = v1[15].i32[0];
  if (v2)
  {
    v3 = *(this + 32);
    v4 = v1[13];
    v5 = 0x9DDFEA08EB382D69 * ((8 * v3 - 0xAE502812AA7333) ^ HIDWORD(v3));
    v6 = 0x9DDFEA08EB382D69 * (HIDWORD(v3) ^ (v5 >> 47) ^ v5);
    LODWORD(v5) = -348639895 * ((v6 >> 47) ^ v6);
    v7 = v2 - 1;
    v8 = v5 & (v2 - 1);
    v9 = *(*&v4 + 16 * v8);
    if (v9 == v3)
    {
LABEL_3:
      *(*&v4 + 16 * v8) = -8192;
      v1[14] = vadd_s32(v1[14], 0x1FFFFFFFFLL);
    }

    else
    {
      v10 = 1;
      while (v9 != -4096)
      {
        v11 = v8 + v10++;
        v8 = v11 & v7;
        v9 = *(*&v4 + 16 * v8);
        if (v9 == v3)
        {
          goto LABEL_3;
        }
      }
    }
  }

  return this;
}

uint64_t *anonymous namespace::ReplaceBlockArgRewrite::commit(_anonymous_namespace_::ReplaceBlockArgRewrite *this, mlir::RewriterBase *a2)
{
  v4 = *(this + 4);
  v5 = v4[1] & 0xFFFFFFFFFFFFFFF8;
  if (result == v4)
  {
    return result;
  }

  v7 = result;
  if (v5)
  {
    if ((result[1] & 0xFFFFFFFFFFFFFFF8) != v5 || result == 0)
    {
      return result;
    }
  }

  else if (!result)
  {
    return result;
  }

  if ((~*(result + 2) & 7) != 0)
  {
    Owner = mlir::detail::OpResultImpl::getOwner(result);
    v18 = *(Owner + 16);
    v19 = Owner;
    v16 = *(this + 4);
    v17[0] = &v18;
    v17[1] = &v19;
  }

  else
  {
    v9 = *v4;
    if (*v4)
    {
      do
      {
        v10 = *v9;
        v11 = v9[2];
        (*(*a2 + 40))(a2, v11);
        v12 = v9[1];
        if (v12)
        {
          v13 = *v9;
          *v12 = *v9;
          if (v13)
          {
            *(v13 + 8) = v12;
          }
        }

        v9[3] = v7;
        v14 = *v7;
        *v9 = *v7;
        v9[1] = v7;
        if (v14)
        {
          *(v14 + 8) = v9;
        }

        *v7 = v9;
        result = (*(*a2 + 48))(a2, v11);
        v9 = v10;
      }

      while (v10);
    }
  }

  return result;
}

uint64_t **anonymous namespace::BlockTypeConversionRewrite::rollback(uint64_t **this, mlir::Block *a2)
{
  v2 = this[3];
  v3 = *v2;
  if (*v2)
  {
    v4 = this;
    do
    {
      v5 = v4[4];
      v6 = v3[1];
      if (v6)
      {
        v7 = *v3;
        *v6 = *v3;
        if (v7)
        {
          *(v7 + 8) = v6;
        }
      }

      v3[3] = v5;
      this = mlir::BlockOperand::getUseList(v5, a2);
      v8 = *this;
      *v3 = *this;
      v3[1] = this;
      if (v8)
      {
        v8[1] = v3;
      }

      *this = v3;
      v3 = *v2;
    }

    while (*v2);
  }

  return this;
}